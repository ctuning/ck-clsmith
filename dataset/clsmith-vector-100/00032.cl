// ---fake_divergence -g 4531,1,2 -l 23,1,1
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


// Seed: 32

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   volatile int64_t  f0;
   uint32_t  f1;
   int64_t  f2;
   int32_t  f3;
   volatile uint64_t  f4;
   uint8_t  f5;
};

struct S1 {
   uint64_t  f0;
};

struct S2 {
    int32_t g_8;
    int32_t g_11;
    volatile int32_t ** volatile g_25;
    int32_t *g_42;
    int32_t **g_41;
    int16_t g_67;
    uint8_t g_68;
    struct S1 g_74;
    struct S1 * volatile g_73;
    uint32_t g_78;
    int32_t g_82;
    uint16_t g_93;
    int8_t g_112;
    int32_t g_115;
    volatile VECTOR(int32_t, 16) g_118;
    volatile VECTOR(int32_t, 8) g_119;
    int32_t ** volatile g_123;
    int16_t g_149;
    int8_t g_151;
    int32_t * volatile g_153;
    struct S0 g_156;
    struct S0 g_176;
    int16_t *g_188;
    int16_t **g_187[6][5][6];
    int16_t *** volatile g_186;
    int32_t ** volatile g_259[2][4];
    int32_t * volatile g_267;
    int32_t * volatile g_290;
    volatile struct S0 g_291;
    int32_t g_299;
    VECTOR(int16_t, 16) g_320;
    volatile VECTOR(int8_t, 16) g_336;
    VECTOR(int8_t, 8) g_343;
    volatile VECTOR(int8_t, 2) g_344;
    VECTOR(int64_t, 2) g_345;
    VECTOR(int64_t, 16) g_347;
    struct S0 g_373;
    struct S0 *g_372;
    struct S0 g_377;
    VECTOR(int8_t, 2) g_378;
    VECTOR(uint32_t, 16) g_381;
    volatile int64_t * volatile g_449;
    struct S0 g_458;
    int8_t *g_469;
    struct S0 **g_481;
    VECTOR(int16_t, 8) g_499;
    volatile VECTOR(uint16_t, 8) g_502;
    volatile VECTOR(uint16_t, 4) g_503;
    VECTOR(uint16_t, 8) g_515;
    VECTOR(uint16_t, 4) g_521;
    VECTOR(uint16_t, 4) g_522;
    VECTOR(uint16_t, 16) g_530;
    volatile VECTOR(uint16_t, 2) g_531;
    VECTOR(uint16_t, 8) g_532;
    VECTOR(uint8_t, 2) g_544;
    VECTOR(uint8_t, 4) g_547;
    int32_t *g_582[5];
    int32_t **g_581[9];
    VECTOR(int16_t, 2) g_605;
    volatile VECTOR(int16_t, 8) g_606;
    VECTOR(int16_t, 8) g_608;
    struct S1 *g_619;
    struct S1 ** volatile g_618;
    uint64_t *g_633;
    volatile VECTOR(int32_t, 2) g_638;
    volatile VECTOR(int32_t, 16) g_639;
    VECTOR(int32_t, 8) g_643;
    volatile VECTOR(int32_t, 16) g_644;
    VECTOR(int32_t, 8) g_646;
    volatile VECTOR(int32_t, 4) g_648;
    VECTOR(int64_t, 16) g_703;
    VECTOR(int64_t, 2) g_712;
    volatile struct S0 g_761;
    VECTOR(int64_t, 2) g_762;
    uint64_t g_769;
    volatile VECTOR(int64_t, 4) g_772;
    VECTOR(uint32_t, 16) g_790;
    volatile VECTOR(int8_t, 16) g_811;
    VECTOR(uint8_t, 8) g_823;
    volatile uint32_t g_926;
    volatile VECTOR(uint32_t, 8) g_963;
    VECTOR(uint32_t, 8) g_964;
    VECTOR(uint32_t, 4) g_972;
    volatile VECTOR(int8_t, 2) g_1008;
    volatile VECTOR(int32_t, 8) g_1034;
    volatile VECTOR(int32_t, 4) g_1035;
    int16_t * volatile ** volatile g_1044;
    int16_t * volatile ** volatile *g_1043;
    volatile VECTOR(int32_t, 4) g_1049;
    uint64_t global_0_offset;
    uint64_t global_1_offset;
    uint64_t global_2_offset;
    uint64_t local_0_offset;
    uint64_t local_1_offset;
    uint64_t local_2_offset;
    uint64_t group_0_offset;
    uint64_t group_1_offset;
    uint64_t group_2_offset;
};


/* --- FORWARD DECLARATIONS --- */
uint16_t  func_1(struct S2 * p_1051);
uint8_t  func_4(int32_t  p_5, int64_t  p_6, uint64_t  p_7, struct S2 * p_1051);
uint8_t  func_13(int32_t * p_14, int32_t  p_15, int32_t ** p_16, uint8_t  p_17, int32_t ** p_18, struct S2 * p_1051);
int32_t * func_19(struct S1  p_20, int32_t * p_21, int32_t ** p_22, uint16_t  p_23, struct S2 * p_1051);
int32_t * func_26(uint32_t  p_27, int8_t  p_28, struct S2 * p_1051);
VECTOR(int32_t, 8)  func_35(int32_t ** p_36, uint8_t  p_37, int64_t  p_38, uint8_t  p_39, int8_t  p_40, struct S2 * p_1051);
int32_t ** func_45(int32_t  p_46, uint32_t  p_47, int32_t * p_48, int32_t  p_49, struct S2 * p_1051);
VECTOR(uint32_t, 2)  func_50(int32_t  p_51, uint32_t  p_52, int16_t  p_53, struct S2 * p_1051);
int16_t  func_54(int64_t  p_55, struct S2 * p_1051);
uint32_t  func_56(int64_t  p_57, int32_t  p_58, int32_t  p_59, int32_t ** p_60, int32_t ** p_61, struct S2 * p_1051);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1051->g_8 p_1051->g_11 p_1051->g_25 p_1051->g_41 p_1051->g_68 p_1051->g_73 p_1051->g_82 p_1051->g_42 p_1051->g_74.f0 p_1051->g_112 p_1051->g_67 p_1051->g_78 p_1051->g_118 p_1051->g_119 p_1051->g_123 p_1051->g_93 p_1051->g_156.f5 p_1051->g_176.f3 p_1051->g_153 p_1051->g_176.f2 p_1051->g_156.f1 p_1051->g_156.f3 p_1051->g_267 p_1051->g_176.f1 p_1051->g_290 p_1051->g_291 p_1051->g_188 p_1051->g_149 p_1051->g_176.f5 p_1051->g_151 p_1051->g_299 p_1051->g_156.f0 p_1051->g_115 p_1051->g_320 p_1051->g_336 p_1051->g_156.f4 p_1051->g_343 p_1051->g_344 p_1051->g_345 p_1051->g_347 p_1051->g_372 p_1051->g_378 p_1051->g_381 p_1051->g_377.f2 p_1051->g_186 p_1051->g_187 p_1051->g_449 p_1051->g_458 p_1051->g_469 p_1051->g_499 p_1051->g_502 p_1051->g_503 p_1051->g_377.f5 p_1051->g_515 p_1051->g_521 p_1051->g_522 p_1051->g_530 p_1051->g_531 p_1051->g_373.f3 p_1051->g_532 p_1051->g_544 p_1051->g_547 p_1051->g_581 p_1051->g_373.f2 p_1051->g_582 p_1051->g_373.f5 p_1051->g_619 p_1051->g_790 p_1051->g_633 p_1051->g_811 p_1051->g_608 p_1051->g_823 p_1051->g_769 p_1051->g_481 p_1051->g_618 p_1051->g_74 p_1051->g_377.f1 p_1051->g_712 p_1051->g_646 p_1051->g_926 p_1051->g_373.f1 p_1051->g_1008 p_1051->g_377.f3 p_1051->g_1034 p_1051->g_1035 p_1051->g_1043 p_1051->g_1049
 * writes: p_1051->g_41 p_1051->g_42 p_1051->g_68 p_1051->g_78 p_1051->g_82 p_1051->g_74.f0 p_1051->g_112 p_1051->g_115 p_1051->g_8 p_1051->g_93 p_1051->g_156.f1 p_1051->g_176.f1 p_1051->g_156 p_1051->g_149 p_1051->g_299 p_1051->g_176.f5 p_1051->g_372 p_1051->g_377.f1 p_1051->g_176.f2 p_1051->g_377.f2 p_1051->g_469 p_1051->g_481 p_1051->g_377.f5 p_1051->g_67 p_1051->g_151 p_1051->g_343 p_1051->g_373.f2 p_1051->g_373.f5 p_1051->g_74 p_1051->g_582 p_1051->g_522 p_1051->g_823 p_1051->g_769 p_1051->g_926 p_1051->g_373.f1
 */
uint16_t  func_1(struct S2 * p_1051)
{ /* block id: 4 */
    uint32_t l_9 = 0xBDA7FE64L;
    int64_t *l_832 = (void*)0;
    int64_t *l_833[5];
    int32_t l_834 = 1L;
    uint32_t l_835 = 0x0144AA91L;
    int16_t *l_838 = (void*)0;
    int32_t l_839 = 6L;
    struct S0 *l_847 = &p_1051->g_377;
    int32_t l_908 = 0x5FFF34A4L;
    int32_t l_909 = 0x0AFAAC6EL;
    int32_t l_914 = 0x0266DF3AL;
    int32_t l_915 = (-4L);
    int32_t l_916 = 0x65E02412L;
    int32_t l_917 = 0x02D2F5FEL;
    int32_t l_918 = 0x34AC85D9L;
    int32_t l_919 = (-6L);
    int32_t l_920 = 0x1F5A79A1L;
    int32_t l_921 = (-6L);
    int32_t l_922 = 0x7BB1D6E7L;
    int32_t l_923 = 8L;
    int32_t l_924 = 8L;
    int32_t l_925 = 4L;
    uint32_t l_929 = 4294967290UL;
    VECTOR(int16_t, 16) l_943 = (VECTOR(int16_t, 16))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x113CL), 0x113CL), 0x113CL, 1L, 0x113CL, (VECTOR(int16_t, 2))(1L, 0x113CL), (VECTOR(int16_t, 2))(1L, 0x113CL), 1L, 0x113CL, 1L, 0x113CL);
    uint16_t l_968 = 0x5060L;
    struct S1 l_991 = {0UL};
    int16_t l_997 = 0x3918L;
    VECTOR(int8_t, 2) l_1007 = (VECTOR(int8_t, 2))(0x75L, (-9L));
    uint64_t *l_1015[5][8] = {{(void*)0,(void*)0,&p_1051->g_769,&p_1051->g_769,&p_1051->g_769,&p_1051->g_769,&p_1051->g_769,&p_1051->g_769},{(void*)0,(void*)0,&p_1051->g_769,&p_1051->g_769,&p_1051->g_769,&p_1051->g_769,&p_1051->g_769,&p_1051->g_769},{(void*)0,(void*)0,&p_1051->g_769,&p_1051->g_769,&p_1051->g_769,&p_1051->g_769,&p_1051->g_769,&p_1051->g_769},{(void*)0,(void*)0,&p_1051->g_769,&p_1051->g_769,&p_1051->g_769,&p_1051->g_769,&p_1051->g_769,&p_1051->g_769},{(void*)0,(void*)0,&p_1051->g_769,&p_1051->g_769,&p_1051->g_769,&p_1051->g_769,&p_1051->g_769,&p_1051->g_769}};
    int32_t *l_1050 = &l_909;
    int i, j;
    for (i = 0; i < 5; i++)
        l_833[i] = (void*)0;
    if ((safe_mul_func_uint8_t_u_u(func_4(p_1051->g_8, p_1051->g_8, l_9, p_1051), (safe_sub_func_uint16_t_u_u((p_1051->g_381.s7 || (l_839 = ((safe_add_func_int64_t_s_s((l_834 = p_1051->g_381.s2), l_835)) | ((safe_mul_func_uint16_t_u_u((((0xFBL < (l_835 <= 0x60AAL)) , l_9) || 0x35CFF39CL), FAKE_DIVERGE(p_1051->group_0_offset, get_group_id(0), 10))) | l_835)))), 1L)))))
    { /* block id: 288 */
        int32_t *l_840 = &p_1051->g_82;
        (*l_840) = (*p_1051->g_267);
    }
    else
    { /* block id: 290 */
        int16_t l_856[4][7][1] = {{{2L},{2L},{2L},{2L},{2L},{2L},{2L}},{{2L},{2L},{2L},{2L},{2L},{2L},{2L}},{{2L},{2L},{2L},{2L},{2L},{2L},{2L}},{{2L},{2L},{2L},{2L},{2L},{2L},{2L}}};
        int32_t **l_860 = &p_1051->g_582[2];
        VECTOR(int16_t, 8) l_891 = (VECTOR(int16_t, 8))(0x3EE6L, (VECTOR(int16_t, 4))(0x3EE6L, (VECTOR(int16_t, 2))(0x3EE6L, (-7L)), (-7L)), (-7L), 0x3EE6L, (-7L));
        int32_t l_896 = (-10L);
        int32_t *l_902 = (void*)0;
        int32_t *l_903 = (void*)0;
        int32_t *l_904 = (void*)0;
        int32_t *l_905 = &p_1051->g_115;
        int32_t *l_906 = &l_839;
        int32_t *l_907[10] = {&p_1051->g_82,&p_1051->g_82,&p_1051->g_82,&p_1051->g_82,&p_1051->g_82,&p_1051->g_82,&p_1051->g_82,&p_1051->g_82,&p_1051->g_82,&p_1051->g_82};
        uint64_t l_910 = 0x65052D0824BCC1DBL;
        int i, j, k;
        for (p_1051->g_769 = 0; (p_1051->g_769 == 39); ++p_1051->g_769)
        { /* block id: 293 */
            int8_t *l_843 = (void*)0;
            int8_t *l_844 = &p_1051->g_112;
            (*p_1051->g_41) = &l_834;
        }
        for (p_1051->g_176.f1 = 0; (p_1051->g_176.f1 >= 17); p_1051->g_176.f1++)
        { /* block id: 299 */
            uint16_t l_848[10][8][3] = {{{65535UL,0x5327L,1UL},{65535UL,0x5327L,1UL},{65535UL,0x5327L,1UL},{65535UL,0x5327L,1UL},{65535UL,0x5327L,1UL},{65535UL,0x5327L,1UL},{65535UL,0x5327L,1UL},{65535UL,0x5327L,1UL}},{{65535UL,0x5327L,1UL},{65535UL,0x5327L,1UL},{65535UL,0x5327L,1UL},{65535UL,0x5327L,1UL},{65535UL,0x5327L,1UL},{65535UL,0x5327L,1UL},{65535UL,0x5327L,1UL},{65535UL,0x5327L,1UL}},{{65535UL,0x5327L,1UL},{65535UL,0x5327L,1UL},{65535UL,0x5327L,1UL},{65535UL,0x5327L,1UL},{65535UL,0x5327L,1UL},{65535UL,0x5327L,1UL},{65535UL,0x5327L,1UL},{65535UL,0x5327L,1UL}},{{65535UL,0x5327L,1UL},{65535UL,0x5327L,1UL},{65535UL,0x5327L,1UL},{65535UL,0x5327L,1UL},{65535UL,0x5327L,1UL},{65535UL,0x5327L,1UL},{65535UL,0x5327L,1UL},{65535UL,0x5327L,1UL}},{{65535UL,0x5327L,1UL},{65535UL,0x5327L,1UL},{65535UL,0x5327L,1UL},{65535UL,0x5327L,1UL},{65535UL,0x5327L,1UL},{65535UL,0x5327L,1UL},{65535UL,0x5327L,1UL},{65535UL,0x5327L,1UL}},{{65535UL,0x5327L,1UL},{65535UL,0x5327L,1UL},{65535UL,0x5327L,1UL},{65535UL,0x5327L,1UL},{65535UL,0x5327L,1UL},{65535UL,0x5327L,1UL},{65535UL,0x5327L,1UL},{65535UL,0x5327L,1UL}},{{65535UL,0x5327L,1UL},{65535UL,0x5327L,1UL},{65535UL,0x5327L,1UL},{65535UL,0x5327L,1UL},{65535UL,0x5327L,1UL},{65535UL,0x5327L,1UL},{65535UL,0x5327L,1UL},{65535UL,0x5327L,1UL}},{{65535UL,0x5327L,1UL},{65535UL,0x5327L,1UL},{65535UL,0x5327L,1UL},{65535UL,0x5327L,1UL},{65535UL,0x5327L,1UL},{65535UL,0x5327L,1UL},{65535UL,0x5327L,1UL},{65535UL,0x5327L,1UL}},{{65535UL,0x5327L,1UL},{65535UL,0x5327L,1UL},{65535UL,0x5327L,1UL},{65535UL,0x5327L,1UL},{65535UL,0x5327L,1UL},{65535UL,0x5327L,1UL},{65535UL,0x5327L,1UL},{65535UL,0x5327L,1UL}},{{65535UL,0x5327L,1UL},{65535UL,0x5327L,1UL},{65535UL,0x5327L,1UL},{65535UL,0x5327L,1UL},{65535UL,0x5327L,1UL},{65535UL,0x5327L,1UL},{65535UL,0x5327L,1UL},{65535UL,0x5327L,1UL}}};
            int32_t *l_859 = &l_834;
            uint32_t l_901 = 0UL;
            int i, j, k;
            (*p_1051->g_481) = l_847;
            if (l_848[0][5][1])
            { /* block id: 301 */
                for (l_835 = 26; (l_835 > 57); ++l_835)
                { /* block id: 304 */
                    if (l_9)
                        break;
                    return l_848[0][5][1];
                }
                (*p_1051->g_41) = (FAKE_DIVERGE(p_1051->group_1_offset, get_group_id(1), 10) , &l_834);
            }
            else
            { /* block id: 309 */
                int32_t *l_851 = &p_1051->g_115;
                int32_t l_852 = 0x5576077FL;
                struct S1 l_853 = {5UL};
                VECTOR(uint8_t, 8) l_871 = (VECTOR(uint8_t, 8))(251UL, (VECTOR(uint8_t, 4))(251UL, (VECTOR(uint8_t, 2))(251UL, 0UL), 0UL), 0UL, 251UL, 0UL);
                VECTOR(uint8_t, 4) l_884 = (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 251UL), 251UL);
                uint32_t l_897 = 1UL;
                int8_t l_899[10] = {(-1L),0x51L,(-1L),(-1L),0x51L,(-1L),(-1L),0x51L,(-1L),(-1L)};
                int i;
                l_852 |= ((*l_851) = (-1L));
                (*l_860) = func_19(l_853, func_19((**p_1051->g_618), (((safe_mod_func_int16_t_s_s(l_856[1][2][0], (safe_lshift_func_uint16_t_u_u(((l_9 , l_856[1][2][0]) & 6L), 1)))) > l_848[5][2][1]) , l_859), l_860, p_1051->g_377.f1, p_1051), &p_1051->g_582[4], p_1051->g_176.f5, p_1051);
                for (p_1051->g_176.f5 = 0; (p_1051->g_176.f5 <= 35); ++p_1051->g_176.f5)
                { /* block id: 315 */
                    uint8_t *l_873 = &p_1051->g_377.f5;
                    uint8_t **l_872 = &l_873;
                    int32_t l_892 = 0x2F36591AL;
                    uint32_t *l_893 = (void*)0;
                    uint32_t *l_894 = &p_1051->g_377.f1;
                    uint8_t *l_895 = &p_1051->g_377.f5;
                    uint16_t *l_898 = &l_848[0][5][1];
                    int32_t l_900 = 0x0899455CL;
                    l_900 = (l_899[0] |= ((VECTOR(int32_t, 2))(sub_sat(((VECTOR(int32_t, 16))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 2))((!((VECTOR(int32_t, 2))(upsample(((VECTOR(int16_t, 4))(8L, ((0x04L | (0x341CL != ((!(((safe_div_func_uint8_t_u_u(FAKE_DIVERGE(p_1051->group_1_offset, get_group_id(1), 10), (*l_859))) < (safe_mul_func_uint8_t_u_u((safe_mul_func_uint16_t_u_u((((*l_898) = (+(safe_div_func_uint64_t_u_u((((((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(add_sat(((VECTOR(uint8_t, 16))(l_871.s1576504154226203)).s50, ((VECTOR(uint8_t, 2))(rotate(((VECTOR(uint8_t, 4))((((*l_872) = (void*)0) != ((l_896 |= (safe_rshift_func_int8_t_s_u((((*l_895) = (safe_add_func_int64_t_s_s((8L != (safe_mod_func_uint64_t_u_u((safe_mul_func_int8_t_s_s((safe_div_func_uint32_t_u_u(((*l_894) = ((l_884.y || ((((safe_mod_func_int32_t_s_s((safe_mul_func_int8_t_s_s((safe_rshift_func_uint16_t_u_s((((VECTOR(int16_t, 8))(l_891.s63450713)).s6 || l_839), l_892)), (((~((*l_859) , 0x1910ED85L)) >= (*l_859)) | FAKE_DIVERGE(p_1051->global_0_offset, get_global_id(0), 10)))), p_1051->g_156.f3)) && p_1051->g_547.y) || 0x26E3L) && (*p_1051->g_188))) && (*p_1051->g_153))), p_1051->g_522.w)), p_1051->g_347.s7)), p_1051->g_712.y))), 0x25ED55FA8ACDCB44L))) | 250UL), 7))) , &p_1051->g_68)), ((VECTOR(uint8_t, 2))(5UL)), 0xE1L)).lo, ((VECTOR(uint8_t, 2))(253UL)))))))), 0xECL, 0xF2L)).y && (*l_859)) < l_897) > (*p_1051->g_188)), GROUP_DIVERGE(0, 1))))) == p_1051->g_378.y), 0x7981L)), l_892))) & p_1051->g_646.s4)) , (*l_859)))) & (*l_851)), 0x6BB5L, (-6L))).odd, ((VECTOR(uint16_t, 2))(0xCE19L)))))))).yxxyyxxyyxxyyxxx, ((VECTOR(int32_t, 16))(0x3720FFFDL)), ((VECTOR(int32_t, 16))(0x3CEB5D30L))))).s3a, ((VECTOR(int32_t, 2))(3L))))).odd);
                    if (l_9)
                        continue;
                }
                (*p_1051->g_290) = l_901;
            }
        }
        ++l_910;
    }
    if ((l_834 = l_839))
    { /* block id: 331 */
        int32_t *l_913[9][7][2] = {{{&l_909,&p_1051->g_11},{&l_909,&p_1051->g_11},{&l_909,&p_1051->g_11},{&l_909,&p_1051->g_11},{&l_909,&p_1051->g_11},{&l_909,&p_1051->g_11},{&l_909,&p_1051->g_11}},{{&l_909,&p_1051->g_11},{&l_909,&p_1051->g_11},{&l_909,&p_1051->g_11},{&l_909,&p_1051->g_11},{&l_909,&p_1051->g_11},{&l_909,&p_1051->g_11},{&l_909,&p_1051->g_11}},{{&l_909,&p_1051->g_11},{&l_909,&p_1051->g_11},{&l_909,&p_1051->g_11},{&l_909,&p_1051->g_11},{&l_909,&p_1051->g_11},{&l_909,&p_1051->g_11},{&l_909,&p_1051->g_11}},{{&l_909,&p_1051->g_11},{&l_909,&p_1051->g_11},{&l_909,&p_1051->g_11},{&l_909,&p_1051->g_11},{&l_909,&p_1051->g_11},{&l_909,&p_1051->g_11},{&l_909,&p_1051->g_11}},{{&l_909,&p_1051->g_11},{&l_909,&p_1051->g_11},{&l_909,&p_1051->g_11},{&l_909,&p_1051->g_11},{&l_909,&p_1051->g_11},{&l_909,&p_1051->g_11},{&l_909,&p_1051->g_11}},{{&l_909,&p_1051->g_11},{&l_909,&p_1051->g_11},{&l_909,&p_1051->g_11},{&l_909,&p_1051->g_11},{&l_909,&p_1051->g_11},{&l_909,&p_1051->g_11},{&l_909,&p_1051->g_11}},{{&l_909,&p_1051->g_11},{&l_909,&p_1051->g_11},{&l_909,&p_1051->g_11},{&l_909,&p_1051->g_11},{&l_909,&p_1051->g_11},{&l_909,&p_1051->g_11},{&l_909,&p_1051->g_11}},{{&l_909,&p_1051->g_11},{&l_909,&p_1051->g_11},{&l_909,&p_1051->g_11},{&l_909,&p_1051->g_11},{&l_909,&p_1051->g_11},{&l_909,&p_1051->g_11},{&l_909,&p_1051->g_11}},{{&l_909,&p_1051->g_11},{&l_909,&p_1051->g_11},{&l_909,&p_1051->g_11},{&l_909,&p_1051->g_11},{&l_909,&p_1051->g_11},{&l_909,&p_1051->g_11},{&l_909,&p_1051->g_11}}};
        int i, j, k;
        --p_1051->g_926;
        l_929++;
    }
    else
    { /* block id: 334 */
        int64_t l_932[9][10][1] = {{{0x32ED461282016641L},{0x32ED461282016641L},{0x32ED461282016641L},{0x32ED461282016641L},{0x32ED461282016641L},{0x32ED461282016641L},{0x32ED461282016641L},{0x32ED461282016641L},{0x32ED461282016641L},{0x32ED461282016641L}},{{0x32ED461282016641L},{0x32ED461282016641L},{0x32ED461282016641L},{0x32ED461282016641L},{0x32ED461282016641L},{0x32ED461282016641L},{0x32ED461282016641L},{0x32ED461282016641L},{0x32ED461282016641L},{0x32ED461282016641L}},{{0x32ED461282016641L},{0x32ED461282016641L},{0x32ED461282016641L},{0x32ED461282016641L},{0x32ED461282016641L},{0x32ED461282016641L},{0x32ED461282016641L},{0x32ED461282016641L},{0x32ED461282016641L},{0x32ED461282016641L}},{{0x32ED461282016641L},{0x32ED461282016641L},{0x32ED461282016641L},{0x32ED461282016641L},{0x32ED461282016641L},{0x32ED461282016641L},{0x32ED461282016641L},{0x32ED461282016641L},{0x32ED461282016641L},{0x32ED461282016641L}},{{0x32ED461282016641L},{0x32ED461282016641L},{0x32ED461282016641L},{0x32ED461282016641L},{0x32ED461282016641L},{0x32ED461282016641L},{0x32ED461282016641L},{0x32ED461282016641L},{0x32ED461282016641L},{0x32ED461282016641L}},{{0x32ED461282016641L},{0x32ED461282016641L},{0x32ED461282016641L},{0x32ED461282016641L},{0x32ED461282016641L},{0x32ED461282016641L},{0x32ED461282016641L},{0x32ED461282016641L},{0x32ED461282016641L},{0x32ED461282016641L}},{{0x32ED461282016641L},{0x32ED461282016641L},{0x32ED461282016641L},{0x32ED461282016641L},{0x32ED461282016641L},{0x32ED461282016641L},{0x32ED461282016641L},{0x32ED461282016641L},{0x32ED461282016641L},{0x32ED461282016641L}},{{0x32ED461282016641L},{0x32ED461282016641L},{0x32ED461282016641L},{0x32ED461282016641L},{0x32ED461282016641L},{0x32ED461282016641L},{0x32ED461282016641L},{0x32ED461282016641L},{0x32ED461282016641L},{0x32ED461282016641L}},{{0x32ED461282016641L},{0x32ED461282016641L},{0x32ED461282016641L},{0x32ED461282016641L},{0x32ED461282016641L},{0x32ED461282016641L},{0x32ED461282016641L},{0x32ED461282016641L},{0x32ED461282016641L},{0x32ED461282016641L}}};
        int32_t l_977 = 0x6482F376L;
        int32_t l_984 = 0x31A9DA46L;
        int32_t l_985[6][6][2] = {{{0x655B7EF4L,0x655B7EF4L},{0x655B7EF4L,0x655B7EF4L},{0x655B7EF4L,0x655B7EF4L},{0x655B7EF4L,0x655B7EF4L},{0x655B7EF4L,0x655B7EF4L},{0x655B7EF4L,0x655B7EF4L}},{{0x655B7EF4L,0x655B7EF4L},{0x655B7EF4L,0x655B7EF4L},{0x655B7EF4L,0x655B7EF4L},{0x655B7EF4L,0x655B7EF4L},{0x655B7EF4L,0x655B7EF4L},{0x655B7EF4L,0x655B7EF4L}},{{0x655B7EF4L,0x655B7EF4L},{0x655B7EF4L,0x655B7EF4L},{0x655B7EF4L,0x655B7EF4L},{0x655B7EF4L,0x655B7EF4L},{0x655B7EF4L,0x655B7EF4L},{0x655B7EF4L,0x655B7EF4L}},{{0x655B7EF4L,0x655B7EF4L},{0x655B7EF4L,0x655B7EF4L},{0x655B7EF4L,0x655B7EF4L},{0x655B7EF4L,0x655B7EF4L},{0x655B7EF4L,0x655B7EF4L},{0x655B7EF4L,0x655B7EF4L}},{{0x655B7EF4L,0x655B7EF4L},{0x655B7EF4L,0x655B7EF4L},{0x655B7EF4L,0x655B7EF4L},{0x655B7EF4L,0x655B7EF4L},{0x655B7EF4L,0x655B7EF4L},{0x655B7EF4L,0x655B7EF4L}},{{0x655B7EF4L,0x655B7EF4L},{0x655B7EF4L,0x655B7EF4L},{0x655B7EF4L,0x655B7EF4L},{0x655B7EF4L,0x655B7EF4L},{0x655B7EF4L,0x655B7EF4L},{0x655B7EF4L,0x655B7EF4L}}};
        int64_t l_986 = 0x63829E9315AF21EBL;
        int16_t *l_992 = (void*)0;
        int16_t *l_993 = (void*)0;
        int16_t *l_994 = (void*)0;
        int16_t *l_995 = (void*)0;
        int16_t *l_996[4][8][8] = {{{(void*)0,&p_1051->g_67,(void*)0,(void*)0,(void*)0,&p_1051->g_67,&p_1051->g_67,(void*)0},{(void*)0,&p_1051->g_67,(void*)0,(void*)0,(void*)0,&p_1051->g_67,&p_1051->g_67,(void*)0},{(void*)0,&p_1051->g_67,(void*)0,(void*)0,(void*)0,&p_1051->g_67,&p_1051->g_67,(void*)0},{(void*)0,&p_1051->g_67,(void*)0,(void*)0,(void*)0,&p_1051->g_67,&p_1051->g_67,(void*)0},{(void*)0,&p_1051->g_67,(void*)0,(void*)0,(void*)0,&p_1051->g_67,&p_1051->g_67,(void*)0},{(void*)0,&p_1051->g_67,(void*)0,(void*)0,(void*)0,&p_1051->g_67,&p_1051->g_67,(void*)0},{(void*)0,&p_1051->g_67,(void*)0,(void*)0,(void*)0,&p_1051->g_67,&p_1051->g_67,(void*)0},{(void*)0,&p_1051->g_67,(void*)0,(void*)0,(void*)0,&p_1051->g_67,&p_1051->g_67,(void*)0}},{{(void*)0,&p_1051->g_67,(void*)0,(void*)0,(void*)0,&p_1051->g_67,&p_1051->g_67,(void*)0},{(void*)0,&p_1051->g_67,(void*)0,(void*)0,(void*)0,&p_1051->g_67,&p_1051->g_67,(void*)0},{(void*)0,&p_1051->g_67,(void*)0,(void*)0,(void*)0,&p_1051->g_67,&p_1051->g_67,(void*)0},{(void*)0,&p_1051->g_67,(void*)0,(void*)0,(void*)0,&p_1051->g_67,&p_1051->g_67,(void*)0},{(void*)0,&p_1051->g_67,(void*)0,(void*)0,(void*)0,&p_1051->g_67,&p_1051->g_67,(void*)0},{(void*)0,&p_1051->g_67,(void*)0,(void*)0,(void*)0,&p_1051->g_67,&p_1051->g_67,(void*)0},{(void*)0,&p_1051->g_67,(void*)0,(void*)0,(void*)0,&p_1051->g_67,&p_1051->g_67,(void*)0},{(void*)0,&p_1051->g_67,(void*)0,(void*)0,(void*)0,&p_1051->g_67,&p_1051->g_67,(void*)0}},{{(void*)0,&p_1051->g_67,(void*)0,(void*)0,(void*)0,&p_1051->g_67,&p_1051->g_67,(void*)0},{(void*)0,&p_1051->g_67,(void*)0,(void*)0,(void*)0,&p_1051->g_67,&p_1051->g_67,(void*)0},{(void*)0,&p_1051->g_67,(void*)0,(void*)0,(void*)0,&p_1051->g_67,&p_1051->g_67,(void*)0},{(void*)0,&p_1051->g_67,(void*)0,(void*)0,(void*)0,&p_1051->g_67,&p_1051->g_67,(void*)0},{(void*)0,&p_1051->g_67,(void*)0,(void*)0,(void*)0,&p_1051->g_67,&p_1051->g_67,(void*)0},{(void*)0,&p_1051->g_67,(void*)0,(void*)0,(void*)0,&p_1051->g_67,&p_1051->g_67,(void*)0},{(void*)0,&p_1051->g_67,(void*)0,(void*)0,(void*)0,&p_1051->g_67,&p_1051->g_67,(void*)0},{(void*)0,&p_1051->g_67,(void*)0,(void*)0,(void*)0,&p_1051->g_67,&p_1051->g_67,(void*)0}},{{(void*)0,&p_1051->g_67,(void*)0,(void*)0,(void*)0,&p_1051->g_67,&p_1051->g_67,(void*)0},{(void*)0,&p_1051->g_67,(void*)0,(void*)0,(void*)0,&p_1051->g_67,&p_1051->g_67,(void*)0},{(void*)0,&p_1051->g_67,(void*)0,(void*)0,(void*)0,&p_1051->g_67,&p_1051->g_67,(void*)0},{(void*)0,&p_1051->g_67,(void*)0,(void*)0,(void*)0,&p_1051->g_67,&p_1051->g_67,(void*)0},{(void*)0,&p_1051->g_67,(void*)0,(void*)0,(void*)0,&p_1051->g_67,&p_1051->g_67,(void*)0},{(void*)0,&p_1051->g_67,(void*)0,(void*)0,(void*)0,&p_1051->g_67,&p_1051->g_67,(void*)0},{(void*)0,&p_1051->g_67,(void*)0,(void*)0,(void*)0,&p_1051->g_67,&p_1051->g_67,(void*)0},{(void*)0,&p_1051->g_67,(void*)0,(void*)0,(void*)0,&p_1051->g_67,&p_1051->g_67,(void*)0}}};
        VECTOR(int64_t, 2) l_998 = (VECTOR(int64_t, 2))(1L, 7L);
        VECTOR(int64_t, 4) l_999 = (VECTOR(int64_t, 4))(0x2CB2EE06341536B1L, (VECTOR(int64_t, 2))(0x2CB2EE06341536B1L, 5L), 5L);
        VECTOR(int8_t, 2) l_1004 = (VECTOR(int8_t, 2))(0x7AL, 2L);
        uint64_t *l_1016 = &p_1051->g_769;
        int32_t *l_1017 = (void*)0;
        int32_t *l_1018[6];
        uint64_t l_1019 = 0x7D7171C72085AD1EL;
        uint8_t l_1021[6][5] = {{0xB4L,254UL,254UL,0xB4L,0xB4L},{0xB4L,254UL,254UL,0xB4L,0xB4L},{0xB4L,254UL,254UL,0xB4L,0xB4L},{0xB4L,254UL,254UL,0xB4L,0xB4L},{0xB4L,254UL,254UL,0xB4L,0xB4L},{0xB4L,254UL,254UL,0xB4L,0xB4L}};
        int i, j, k;
        for (i = 0; i < 6; i++)
            l_1018[i] = &l_834;
lbl_990:
        if ((((l_932[4][2][0] == (l_909 || (p_1051->g_458.f2 , p_1051->g_115))) || (--p_1051->g_373.f1)) <= 1UL))
        { /* block id: 336 */
            uint32_t l_948 = 4294967286UL;
            int16_t **l_949 = &p_1051->g_188;
            int8_t *l_950 = &p_1051->g_151;
            int8_t **l_951 = (void*)0;
            int8_t **l_952 = &l_950;
            int8_t **l_953 = (void*)0;
            int8_t **l_954 = &p_1051->g_469;
            VECTOR(uint32_t, 16) l_965 = (VECTOR(uint32_t, 16))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 4294967295UL), 4294967295UL), 4294967295UL, 0UL, 4294967295UL, (VECTOR(uint32_t, 2))(0UL, 4294967295UL), (VECTOR(uint32_t, 2))(0UL, 4294967295UL), 0UL, 4294967295UL, 0UL, 4294967295UL);
            int32_t *l_971 = &l_923;
            int32_t *l_978 = (void*)0;
            int32_t *l_979[8][3][4] = {{{(void*)0,&l_834,(void*)0,&l_915},{(void*)0,&l_834,(void*)0,&l_915},{(void*)0,&l_834,(void*)0,&l_915}},{{(void*)0,&l_834,(void*)0,&l_915},{(void*)0,&l_834,(void*)0,&l_915},{(void*)0,&l_834,(void*)0,&l_915}},{{(void*)0,&l_834,(void*)0,&l_915},{(void*)0,&l_834,(void*)0,&l_915},{(void*)0,&l_834,(void*)0,&l_915}},{{(void*)0,&l_834,(void*)0,&l_915},{(void*)0,&l_834,(void*)0,&l_915},{(void*)0,&l_834,(void*)0,&l_915}},{{(void*)0,&l_834,(void*)0,&l_915},{(void*)0,&l_834,(void*)0,&l_915},{(void*)0,&l_834,(void*)0,&l_915}},{{(void*)0,&l_834,(void*)0,&l_915},{(void*)0,&l_834,(void*)0,&l_915},{(void*)0,&l_834,(void*)0,&l_915}},{{(void*)0,&l_834,(void*)0,&l_915},{(void*)0,&l_834,(void*)0,&l_915},{(void*)0,&l_834,(void*)0,&l_915}},{{(void*)0,&l_834,(void*)0,&l_915},{(void*)0,&l_834,(void*)0,&l_915},{(void*)0,&l_834,(void*)0,&l_915}}};
            int i, j, k;
            l_922 ^= (safe_mul_func_int8_t_s_s((safe_mod_func_int16_t_s_s((l_977 = ((safe_add_func_int32_t_s_s((!(((VECTOR(int32_t, 8))(0x043082B8L, ((VECTOR(int32_t, 4))(min(((VECTOR(int32_t, 4))((((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(max(((VECTOR(int32_t, 16))(0x2C901A61L, 0x40C92079L, 1L, (safe_lshift_func_int16_t_s_u(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(mul_hi(((VECTOR(int16_t, 2))((((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(l_943.s33)), (safe_mod_func_uint16_t_u_u(((safe_rshift_func_int16_t_s_s(l_948, 9)) || (l_948 || ((((l_949 == ((((*l_954) = ((*l_952) = l_950)) == (((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 4))(mad_hi(((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 4))(p_1051->g_963.s0560)) << ((VECTOR(uint32_t, 4))(32))))) + ((VECTOR(uint32_t, 4))(p_1051->g_964.s4775))))), ((VECTOR(uint32_t, 4))(l_965.s2ba2)), ((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 2))(safe_mad24_func_uint32_t_u_u_u(VECTOR(uint32_t, 2),((VECTOR(uint32_t, 4))(0x1D7A3C60L, l_968, 0UL, 4294967295UL)).even, ((VECTOR(uint32_t, 16))(mad_hi(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 8))(7UL, ((VECTOR(uint32_t, 4))(0UL, ((void*)0 == l_971), 0x7BD6CF10L, 0xCC91F8C0L)), 0x293165A0L, 0x93E71C90L, 0UL)) >> ((VECTOR(uint32_t, 2))(p_1051->g_972.xx)).xyyxyxyy))), ((safe_div_func_int64_t_s_s((safe_mul_func_uint8_t_u_u((0x5BL | FAKE_DIVERGE(p_1051->group_2_offset, get_group_id(2), 10)), (*l_971))), (*p_1051->g_449))) ^ 18446744073709551611UL), ((VECTOR(uint32_t, 2))(4294967295UL)), 0UL, ((VECTOR(uint32_t, 2))(4294967295UL)), 0x23D2B3D7L, 0x9979DBA6L)), ((VECTOR(uint32_t, 16))(1UL)), ((VECTOR(uint32_t, 16))(0UL))))).sea, ((VECTOR(uint32_t, 2))(4294967295UL))))) + ((VECTOR(uint32_t, 2))(0xB32076B4L))))).xxxx))) - ((VECTOR(uint32_t, 4))(1UL))))).zyyxwxyx + ((VECTOR(uint32_t, 8))(0x21EFE1BBL))))).s0 , &p_1051->g_151)) , (*p_1051->g_186))) != p_1051->g_790.sf) ^ 7L) , l_918))), 9UL)), 0x26B1L, ((VECTOR(int16_t, 2))(0x03C7L)), 0x6417L, 0x6AC4L)).s61 && ((VECTOR(int16_t, 2))(0x4090L))))), ((VECTOR(int16_t, 2))(0x2A5EL))))), 3L, 0x0823L, ((VECTOR(int16_t, 2))(0x1530L)), ((VECTOR(int16_t, 8))(0x2CABL)), 0x4466L, 0x2E3AL)).s5, 1)), 0x4A268183L, ((VECTOR(int32_t, 4))(0L)), 1L, ((VECTOR(int32_t, 4))(0x128A2AAEL)), 0x27D26304L, (-1L))).s31, ((VECTOR(int32_t, 2))(1L))))), 0x2CC0871AL, (-6L))) < ((VECTOR(int32_t, 4))((-4L)))))), (int32_t)p_1051->g_377.f4))), (-1L), 3L, (-1L))).s6 , 1L)), 0x54E9F317L)) ^ 0UL)), l_968)), 0L));
            if (p_1051->g_458.f3)
                goto lbl_990;
        }
        else
        { /* block id: 341 */
            int32_t *l_980 = &l_909;
            int32_t *l_981 = &l_920;
            int32_t *l_982 = &l_918;
            int32_t *l_983[7] = {&p_1051->g_11,&p_1051->g_11,&p_1051->g_11,&p_1051->g_11,&p_1051->g_11,&p_1051->g_11,&p_1051->g_11};
            uint32_t l_987 = 0UL;
            int i;
            (*p_1051->g_41) = (void*)0;
            ++l_987;
        }
        if (p_1051->g_458.f2)
            goto lbl_1020;
lbl_1020:
        l_1019 |= ((l_991 , (l_997 ^= ((*p_1051->g_188) = (l_986 | p_1051->g_176.f2)))) & (((VECTOR(int64_t, 8))((((VECTOR(int64_t, 2))(l_998.xy)).yxyxxyyy && ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))(l_999.zy)), ((safe_rshift_func_uint8_t_u_u(((safe_mod_func_int64_t_s_s((((VECTOR(int8_t, 16))((((VECTOR(int8_t, 8))(l_1004.xxxyxxxy)).s5005025176063732 == ((VECTOR(int8_t, 16))(mul_hi(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))((((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))((((VECTOR(int8_t, 8))((((VECTOR(int8_t, 16))(0x10L, (safe_div_func_int64_t_s_s(((VECTOR(int64_t, 2))(0x3B501C44B94CA3BBL, (-9L))).lo, l_943.sd)), 6L, ((VECTOR(int8_t, 2))(l_1007.yy)), ((VECTOR(int8_t, 4))(rhadd(((VECTOR(int8_t, 16))(p_1051->g_1008.yyxxxyxyyxxyxyyx)).sfc9e, ((VECTOR(int8_t, 16))((!((VECTOR(int8_t, 4))((((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(1L, 8L)), ((VECTOR(int8_t, 4))(0x3FL, ((VECTOR(int8_t, 2))((((VECTOR(int8_t, 8))(sub_sat(((VECTOR(int8_t, 16))((((VECTOR(int8_t, 8))(0x75L, (((safe_add_func_uint32_t_u_u(FAKE_DIVERGE(p_1051->group_2_offset, get_group_id(2), 10), (((safe_lshift_func_int16_t_s_u(l_924, 15)) , (l_922 , ((l_1015[2][6] = l_833[2]) == l_1016))) , l_1004.x))) <= 0UL) < l_998.y), 0x1CL, 0x51L, 0x25L, ((VECTOR(int8_t, 2))((-1L))), 0L)).s0503723122203772 && ((VECTOR(int8_t, 16))((-1L)))))).odd, ((VECTOR(int8_t, 8))((-1L)))))).s17 && ((VECTOR(int8_t, 2))((-9L)))))).lo, 1L, 0x41L)), 0x49L, 0x4EL)).odd != ((VECTOR(int8_t, 4))(6L))))).zwyxwwyzwzxxzwzx))).sc8bc))), 0x6CL, 0x3CL, 0x37L, l_908, p_1051->g_112, 0x50L, 0x76L)).lo && ((VECTOR(int8_t, 8))(0x00L))))).s60 == ((VECTOR(int8_t, 2))((-1L)))))), ((VECTOR(int8_t, 4))(0x33L)), 0L, (-9L))).s64 && ((VECTOR(int8_t, 2))(0x6DL))))), ((VECTOR(int8_t, 4))(1L)), 0x1CL, 0x58L, 0x17L, ((VECTOR(int8_t, 2))((-8L))), l_839, ((VECTOR(int8_t, 2))(1L)), 0x7BL, 0x7FL)), ((VECTOR(int8_t, 16))(1L)))))))).s9 < l_986), l_1007.x)) == p_1051->g_544.y), l_1007.x)) >= GROUP_DIVERGE(2, 1)), ((VECTOR(int64_t, 2))((-1L))), 0L, (-6L), 0x2B884E7108DDCA64L))))).s7 ^ p_1051->g_378.x));
        l_919 = (l_923 = (l_1021[3][0] > (((VECTOR(uint64_t, 8))(0UL, 0xCC5DB71C29C66F7DL, 1UL, 1UL, 0x71256056379080AAL, (safe_mod_func_int64_t_s_s(((safe_div_func_uint16_t_u_u(GROUP_DIVERGE(1, 1), l_991.f0)) && (safe_mod_func_uint32_t_u_u((safe_div_func_uint16_t_u_u((safe_rshift_func_uint16_t_u_u(p_1051->g_377.f3, l_943.s2)), (safe_rshift_func_uint8_t_u_s(((l_920 ^ ((VECTOR(uint32_t, 2))(abs_diff(((VECTOR(int32_t, 16))(p_1051->g_1034.s1720453223403172)).seb, ((VECTOR(int32_t, 8))(p_1051->g_1035.zyxwzxxz)).s56))).odd) , (safe_unary_minus_func_uint64_t_u((--(*p_1051->g_633))))), 0)))), (safe_mul_func_int16_t_s_s(((FAKE_DIVERGE(p_1051->group_0_offset, get_group_id(0), 10) , (((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 16))((p_1051->g_1043 != (void*)0), (safe_mul_func_uint8_t_u_u((safe_sub_func_uint32_t_u_u((+p_1051->g_515.s4), 0L)), 0x18L)), p_1051->g_790.sb, 0x01ADL, ((VECTOR(uint16_t, 8))(0x73DBL)), FAKE_DIVERGE(p_1051->global_2_offset, get_global_id(2), 10), 0x1403L, 65535UL, 0x9E3DL)).sf075 + ((VECTOR(uint16_t, 4))(1UL))))).z > l_908)) || p_1051->g_458.f2), (*p_1051->g_188)))))), 0x78C83F4C479EB345L)), 0x5574311CA1B13B6EL, 0xA177C380D664CAC0L)).s4 , l_916)));
    }
    (*l_1050) ^= ((VECTOR(int32_t, 16))(p_1051->g_1049.ywxwxxyxxyzyyzyx)).s9;
    return p_1051->g_336.sd;
}


/* ------------------------------------------ */
/* 
 * reads : p_1051->g_11 p_1051->g_25 p_1051->g_41 p_1051->g_8 p_1051->g_68 p_1051->g_73 p_1051->g_82 p_1051->g_42 p_1051->g_74.f0 p_1051->g_112 p_1051->g_67 p_1051->g_78 p_1051->g_118 p_1051->g_119 p_1051->g_123 p_1051->g_93 p_1051->g_156.f5 p_1051->g_176.f3 p_1051->g_153 p_1051->g_176.f2 p_1051->g_156.f1 p_1051->g_156.f3 p_1051->g_267 p_1051->g_176.f1 p_1051->g_290 p_1051->g_291 p_1051->g_188 p_1051->g_149 p_1051->g_176.f5 p_1051->g_151 p_1051->g_299 p_1051->g_156.f0 p_1051->g_115 p_1051->g_320 p_1051->g_336 p_1051->g_156.f4 p_1051->g_343 p_1051->g_344 p_1051->g_345 p_1051->g_347 p_1051->g_372 p_1051->g_378 p_1051->g_381 p_1051->g_377.f2 p_1051->g_186 p_1051->g_187 p_1051->g_449 p_1051->g_458 p_1051->g_469 p_1051->g_499 p_1051->g_502 p_1051->g_503 p_1051->g_377.f5 p_1051->g_515 p_1051->g_521 p_1051->g_522 p_1051->g_530 p_1051->g_531 p_1051->g_373.f3 p_1051->g_532 p_1051->g_544 p_1051->g_547 p_1051->g_581 p_1051->g_373.f2 p_1051->g_582 p_1051->g_373.f5 p_1051->g_619 p_1051->g_790 p_1051->g_633 p_1051->g_811 p_1051->g_608 p_1051->g_823
 * writes: p_1051->g_41 p_1051->g_42 p_1051->g_68 p_1051->g_78 p_1051->g_82 p_1051->g_74.f0 p_1051->g_112 p_1051->g_115 p_1051->g_8 p_1051->g_93 p_1051->g_156.f1 p_1051->g_176.f1 p_1051->g_156 p_1051->g_149 p_1051->g_299 p_1051->g_176.f5 p_1051->g_372 p_1051->g_377.f1 p_1051->g_176.f2 p_1051->g_377.f2 p_1051->g_469 p_1051->g_481 p_1051->g_377.f5 p_1051->g_67 p_1051->g_151 p_1051->g_343 p_1051->g_373.f2 p_1051->g_373.f5 p_1051->g_74 p_1051->g_582 p_1051->g_522 p_1051->g_823
 */
uint8_t  func_4(int32_t  p_5, int64_t  p_6, uint64_t  p_7, struct S2 * p_1051)
{ /* block id: 5 */
    int32_t *l_10[4][4];
    int32_t **l_12 = &l_10[2][3];
    struct S1 l_24 = {0x894FF5452FA814B1L};
    VECTOR(int32_t, 16) l_33 = (VECTOR(int32_t, 16))((-4L), (VECTOR(int32_t, 4))((-4L), (VECTOR(int32_t, 2))((-4L), 0x37F4A1D2L), 0x37F4A1D2L), 0x37F4A1D2L, (-4L), 0x37F4A1D2L, (VECTOR(int32_t, 2))((-4L), 0x37F4A1D2L), (VECTOR(int32_t, 2))((-4L), 0x37F4A1D2L), (-4L), 0x37F4A1D2L, (-4L), 0x37F4A1D2L);
    VECTOR(int32_t, 2) l_34 = (VECTOR(int32_t, 2))(0x34D71B36L, 0x3846F263L);
    int32_t ***l_43 = (void*)0;
    int32_t ***l_44 = &p_1051->g_41;
    uint32_t *l_77 = &p_1051->g_78;
    uint16_t l_79 = 65535UL;
    int16_t l_117 = 0L;
    int32_t **l_295[1];
    int32_t ***l_294 = &l_295[0];
    int32_t *l_297 = (void*)0;
    int32_t *l_298 = &p_1051->g_299;
    int64_t *l_300 = &p_1051->g_156.f2;
    int8_t l_583[9][2][1] = {{{(-1L)},{(-1L)}},{{(-1L)},{(-1L)}},{{(-1L)},{(-1L)}},{{(-1L)},{(-1L)}},{{(-1L)},{(-1L)}},{{(-1L)},{(-1L)}},{{(-1L)},{(-1L)}},{{(-1L)},{(-1L)}},{{(-1L)},{(-1L)}}};
    uint8_t *l_822 = (void*)0;
    uint8_t *l_824 = (void*)0;
    uint8_t *l_825[9] = {(void*)0,&p_1051->g_458.f5,(void*)0,(void*)0,&p_1051->g_458.f5,(void*)0,(void*)0,&p_1051->g_458.f5,(void*)0};
    int32_t l_826 = 0x1D726F99L;
    int16_t l_827 = 1L;
    int i, j, k;
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 4; j++)
            l_10[i][j] = &p_1051->g_11;
    }
    for (i = 0; i < 1; i++)
        l_295[i] = &p_1051->g_42;
    (*l_12) = l_10[2][3];
    (*p_1051->g_153) = (FAKE_DIVERGE(p_1051->group_1_offset, get_group_id(1), 10) , ((p_1051->g_11 & (((p_1051->g_823.s4 |= func_13(func_19(l_24, (((void*)0 == p_1051->g_25) , func_26((**l_12), ((safe_mod_func_int16_t_s_s((safe_mod_func_int64_t_s_s(((*l_300) = ((((*l_298) |= ((VECTOR(int32_t, 4))((((VECTOR(int32_t, 8))((((VECTOR(int32_t, 2))(l_33.sda)).yyxxyxxy && ((VECTOR(int32_t, 4))(hadd(((VECTOR(int32_t, 8))(l_34.yyyyyxyy)).odd, ((VECTOR(int32_t, 16))(add_sat(((VECTOR(int32_t, 2))(mad_sat(((VECTOR(int32_t, 2))(mul_hi(((VECTOR(int32_t, 2))((((VECTOR(int32_t, 8))(func_35(((*l_44) = p_1051->g_41), ((((*p_1051->g_188) |= (((*l_294) = func_45((((VECTOR(uint64_t, 2))(upsample(((VECTOR(uint32_t, 2))(func_50(((func_54((((((((*l_77) = ((VECTOR(uint32_t, 16))(0x89A45823L, 0x545435D7L, 4294967287UL, 0x2CC684CAL, 4294967295UL, ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(0x5DD215CDL, 4294967291UL)), 0x20EAADAFL, func_56((((~((safe_lshift_func_uint16_t_u_s(((safe_rshift_func_uint8_t_u_s(((void*)0 != (*l_12)), p_1051->g_8)) , 0x7FF9L), 13)) , p_1051->g_8)) == p_1051->g_8) && GROUP_DIVERGE(1, 1)), p_5, p_1051->g_11, &p_1051->g_42, &p_1051->g_42, p_1051), p_6, 0x2139E6D5L, 0x93330862L, 4294967294UL)), 0x68E5B495L, 4294967295UL, 0xD542D3F7L)).sc) && FAKE_DIVERGE(p_1051->group_0_offset, get_group_id(0), 10)) <= p_1051->g_8) , p_5) ^ l_79) & 0xB8AEL), p_1051) || p_1051->g_78) , 0x36043366L), l_117, p_5, p_1051))), ((VECTOR(uint32_t, 2))(0x104AFCE3L))))).even , p_6), p_6, &p_1051->g_11, p_6, p_1051)) != (void*)0)) & 65535UL) ^ p_1051->g_176.f5), p_1051->g_67, p_5, p_1051->g_151, p_1051))).s33 ^ ((VECTOR(int32_t, 2))((-4L)))))), ((VECTOR(int32_t, 2))(1L))))), ((VECTOR(int32_t, 2))((-3L))), ((VECTOR(int32_t, 2))(0x625ECAEDL))))).xyxyyxxxxyxyxxxy, ((VECTOR(int32_t, 16))(0x0A15924BL))))).s5834))).xywyyxxy))).hi != ((VECTOR(int32_t, 4))(9L))))).w) , p_1051->g_112) | 252UL)), 0xA8EFB1D9A2A01E9AL)), 0x3B0EL)) & p_7), p_1051)), p_1051->g_581[0], l_583[8][0][0], p_1051), (**l_12), &p_1051->g_582[2], p_7, &p_1051->g_582[2], p_1051)) , 0x2352ADF0L) & l_826)) != 0L));
    return l_827;
}


/* ------------------------------------------ */
/* 
 * reads : p_1051->g_373.f5 p_1051->g_449 p_1051->g_291.f0 p_1051->g_619 p_1051->g_790 p_1051->g_633 p_1051->g_74.f0 p_1051->g_458.f2 p_1051->g_522 p_1051->g_811 p_1051->g_608 p_1051->g_82 p_1051->g_11
 * writes: p_1051->g_373.f5 p_1051->g_74 p_1051->g_582 p_1051->g_522 p_1051->g_156.f5 p_1051->g_82
 */
uint8_t  func_13(int32_t * p_14, int32_t  p_15, int32_t ** p_16, uint8_t  p_17, int32_t ** p_18, struct S2 * p_1051)
{ /* block id: 267 */
    VECTOR(int64_t, 16) l_765 = (VECTOR(int64_t, 16))(0L, (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 9L), 9L), 9L, 0L, 9L, (VECTOR(int64_t, 2))(0L, 9L), (VECTOR(int64_t, 2))(0L, 9L), 0L, 9L, 0L, 9L);
    VECTOR(int64_t, 4) l_766 = (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 0x73CBBAB10E246FABL), 0x73CBBAB10E246FABL);
    VECTOR(int64_t, 8) l_773 = (VECTOR(int64_t, 8))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 0x3B571E9F0B7E4C8FL), 0x3B571E9F0B7E4C8FL), 0x3B571E9F0B7E4C8FL, 1L, 0x3B571E9F0B7E4C8FL);
    VECTOR(uint64_t, 8) l_802 = (VECTOR(uint64_t, 8))(0x357D53F3F45D8291L, (VECTOR(uint64_t, 4))(0x357D53F3F45D8291L, (VECTOR(uint64_t, 2))(0x357D53F3F45D8291L, 0x566DAB489425AE12L), 0x566DAB489425AE12L), 0x566DAB489425AE12L, 0x357D53F3F45D8291L, 0x566DAB489425AE12L);
    int16_t ***l_806 = &p_1051->g_187[4][3][5];
    uint8_t *l_810 = &p_1051->g_156.f5;
    int8_t l_820 = (-1L);
    int32_t *l_821 = &p_1051->g_82;
    int i;
    for (p_1051->g_373.f5 = 0; (p_1051->g_373.f5 != 25); p_1051->g_373.f5 = safe_add_func_int32_t_s_s(p_1051->g_373.f5, 3))
    { /* block id: 270 */
        VECTOR(int64_t, 8) l_763 = (VECTOR(int64_t, 8))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, (-5L)), (-5L)), (-5L), 1L, (-5L));
        VECTOR(int64_t, 8) l_764 = (VECTOR(int64_t, 8))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, (-9L)), (-9L)), (-9L), 1L, (-9L));
        VECTOR(int64_t, 4) l_767 = (VECTOR(int64_t, 4))(0x7E6BACC0E3A53BD9L, (VECTOR(int64_t, 2))(0x7E6BACC0E3A53BD9L, 0L), 0L);
        uint64_t *l_768 = &p_1051->g_769;
        uint8_t *l_774[9];
        struct S1 l_775 = {0x5D98A35129B6EC3CL};
        uint32_t l_778 = 7UL;
        int32_t *l_779[7][3][5] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
        VECTOR(uint16_t, 16) l_797 = (VECTOR(uint16_t, 16))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 65533UL), 65533UL), 65533UL, 0UL, 65533UL, (VECTOR(uint16_t, 2))(0UL, 65533UL), (VECTOR(uint16_t, 2))(0UL, 65533UL), 0UL, 65533UL, 0UL, 65533UL);
        uint8_t l_807[1];
        int i, j, k;
        for (i = 0; i < 9; i++)
            l_774[i] = (void*)0;
        for (i = 0; i < 1; i++)
            l_807[i] = 0UL;
        (*p_1051->g_619) = (((safe_sub_func_uint8_t_u_u(((VECTOR(uint8_t, 2))(0UL, 251UL)).lo, (safe_sub_func_uint32_t_u_u(((VECTOR(uint32_t, 4))((0x3636A2BFL && 1L), (p_1051->g_761 , ((p_1051->g_176.f5 = (((p_1051->g_377.f5 , ((VECTOR(int64_t, 16))((-1L), ((VECTOR(int64_t, 4))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 4),((VECTOR(int64_t, 16))(p_1051->g_762.xyyyxxxyyyyyyxxy)).s13cc, ((VECTOR(int64_t, 8))(hadd(((VECTOR(int64_t, 4))(l_763.s3561)).wxwyxyyz, ((VECTOR(int64_t, 16))(l_764.s6406164500754470)).hi))).odd, ((VECTOR(int64_t, 8))((((VECTOR(int64_t, 8))(rhadd(((VECTOR(int64_t, 2))(l_765.sf7)).xyxxyyyy, ((VECTOR(int64_t, 16))(safe_clamp_func(VECTOR(int64_t, 16),int64_t,((VECTOR(int64_t, 4))(mul_hi(((VECTOR(int64_t, 16))((((VECTOR(int64_t, 8))(rhadd(((VECTOR(int64_t, 16))(l_766.zyxzwxwwzxyyywyx)).lo, ((VECTOR(int64_t, 16))(mad_sat(((VECTOR(int64_t, 2))((((VECTOR(int64_t, 2))((((VECTOR(int64_t, 4))(l_767.zxzy)).hi && ((VECTOR(int64_t, 8))((((*l_768)++) , (*p_1051->g_449)), p_17, ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))((((VECTOR(int64_t, 8))(hadd(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 8))(p_1051->g_772.yzwyywwy)), ((VECTOR(int64_t, 4))(rhadd(((VECTOR(int64_t, 16))(min(((VECTOR(int64_t, 2))((((VECTOR(int64_t, 2))((((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(l_773.s53)), 0x7DD34B2DCFB7B7DAL, (-1L))).odd > ((VECTOR(int64_t, 2))(min(((VECTOR(int64_t, 8))((((VECTOR(int64_t, 4))((p_17 , 0x346756367C90AA8AL), 0x782D30483A1BB631L, 0x66F72B1700D5A118L, (-1L))).xwyyxyzx > ((VECTOR(int64_t, 16))(sub_sat(((VECTOR(int64_t, 16))((*p_1051->g_449), 0L, (*p_1051->g_449), (*p_1051->g_449), l_765.s7, ((VECTOR(int64_t, 2))((-3L))), ((VECTOR(int64_t, 8))((-1L))), 0L)), ((VECTOR(int64_t, 16))(1L))))).even))).s66, (int64_t)(*p_1051->g_449))))))) && ((VECTOR(int64_t, 2))(0x07679B60132CD359L))))).xyxyyyxyyyyyxxxy, ((VECTOR(int64_t, 16))((-1L)))))).s71d4, ((VECTOR(int64_t, 4))(1L))))), ((VECTOR(int64_t, 2))(1L)), 6L, 0x7791D1302CB25C78L)).even, ((VECTOR(int64_t, 8))(0x60679B276A1BB4B1L))))).s75 | ((VECTOR(int64_t, 2))(1L))))), 3L, 1L)), 0x5560CD0805DD4323L, 0x1BFC663B57492600L)).s50))) && ((VECTOR(int64_t, 2))((-1L)))))).xyxxxxxyxxxxxxxx, ((VECTOR(int64_t, 16))((-10L))), ((VECTOR(int64_t, 16))(0L))))).odd))).s5624125502511766 <= ((VECTOR(int64_t, 16))(0x550E8C33C199CDB7L))))).s474e, ((VECTOR(int64_t, 4))((-4L)))))).wwzywxzzzwzywyyy, (int64_t)l_767.x, (int64_t)l_764.s3))).odd))) && ((VECTOR(int64_t, 8))((-1L)))))).odd))), (-1L), 0x4CD9EDDB88C275BCL, ((VECTOR(int64_t, 4))(0x102F7763C247EC47L)), ((VECTOR(int64_t, 2))(1L)), 0x7E93C14E4D80E542L, 0x40477E05F55B2F88L, 0x427C14336507F5BFL)).s1) == 18446744073709551609UL) & l_773.s4)) == p_1051->g_544.x)), 0UL, 0x5DBA17F2L)).w, 0x7BED214CL)))) && (*p_1051->g_449)) , l_775);
        (*p_18) = l_779[5][2][3];
        l_807[0] |= ((safe_add_func_uint64_t_u_u(((safe_sub_func_int32_t_s_s((safe_div_func_int16_t_s_s(0L, (p_1051->g_522.y &= (l_773.s1 , (0xF06FL <= (safe_lshift_func_uint16_t_u_s((0x8AL | (~p_17)), (((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 2))(mad_hi(((VECTOR(uint32_t, 16))(abs(((VECTOR(int32_t, 2))(1L, 0x39DD4B19L)).xxxyyxyxxxxxxyyy))).s17, ((VECTOR(uint32_t, 4))(p_1051->g_790.s849f)).hi, ((VECTOR(uint32_t, 4))(upsample(((VECTOR(uint16_t, 4))(0x4289L, ((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 2))(1UL, 0x6C14L)).yyyx + ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(l_797.sb6)), ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(mul_hi(((VECTOR(uint16_t, 16))(abs(((VECTOR(int16_t, 2))((((VECTOR(int16_t, 16))(0x1024L, ((VECTOR(int16_t, 4))((((VECTOR(int16_t, 8))(0x7979L, (safe_add_func_uint16_t_u_u((((((((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 4))(l_802.s5427)) * ((VECTOR(uint64_t, 16))((safe_div_func_uint64_t_u_u(((l_775 , 4294967290UL) < (safe_unary_minus_func_uint8_t_u(GROUP_DIVERGE(1, 1)))), ((*p_1051->g_633) &= (l_806 == &p_1051->g_187[0][0][4])))), FAKE_DIVERGE(p_1051->global_2_offset, get_global_id(2), 10), 1UL, 0x9E230C8FB03276BBL, FAKE_DIVERGE(p_1051->local_2_offset, get_local_id(2), 10), 18446744073709551607UL, 0xB81D4CA9CF6ECA5CL, ((VECTOR(uint64_t, 8))(0x9B5FAC1BAF307A7AL)), 18446744073709551615UL)).s9058))).w || p_15) , (*p_1051->g_633)) >= 3UL) , &p_1051->g_78) == (void*)0), p_1051->g_458.f2)), p_15, ((VECTOR(int16_t, 4))((-3L))), 0x7FBBL)).even && ((VECTOR(int16_t, 4))((-1L)))))), 7L, ((VECTOR(int16_t, 4))(0x3857L)), 0L, p_15, p_17, ((VECTOR(int16_t, 2))((-1L))), 0x08ADL)).sb0 <= ((VECTOR(int16_t, 2))(0x1C2BL))))).yxyyyxyxyxxxyyyx))).s8f4b, ((VECTOR(uint16_t, 4))(65530UL))))), ((VECTOR(uint16_t, 4))(4UL)))), 0x445EL, ((VECTOR(uint16_t, 4))(0x3E9BL)), 2UL)).sb4 + ((VECTOR(uint16_t, 2))(0x0CEDL))))), ((VECTOR(uint16_t, 4))(0UL)), 0xBE34L, 1UL)).even))).hi + ((VECTOR(uint16_t, 2))(0x21AEL))))), 0x4544L)), ((VECTOR(uint16_t, 4))(65534UL))))).lo))).xxxx + ((VECTOR(uint32_t, 4))(1UL))))).z >= p_15)))))))), 0xFF7A0795L)) , 0UL), (*p_1051->g_449))) < p_17);
    }
    (*l_821) &= ((safe_sub_func_uint64_t_u_u((l_766.x , (p_15 , 0x140DD81FEF982152L)), (p_17 == ((((*l_810) = 0xFFL) != ((VECTOR(int8_t, 2))(sub_sat(((VECTOR(int8_t, 2))(sub_sat(((VECTOR(int8_t, 4))(p_1051->g_811.s5cf7)).even, ((VECTOR(int8_t, 4))(max(((VECTOR(int8_t, 16))((((safe_mul_func_uint8_t_u_u(GROUP_DIVERGE(0, 1), ((safe_sub_func_uint64_t_u_u(((safe_add_func_uint8_t_u_u(0x0EL, 0x35L)) ^ (p_15 == p_17)), l_820)) <= 1L))) == p_17) <= 0x29L), ((VECTOR(int8_t, 4))((-1L))), (-10L), ((VECTOR(int8_t, 4))(1L)), p_17, l_773.s7, p_15, 0x64L, 0L, 0x4CL)).s94bb, (int8_t)l_820))).odd))), ((VECTOR(int8_t, 2))(0x3EL))))).hi) , p_15)))) != p_1051->g_608.s3);
    (*l_821) |= (*p_14);
    return (*l_821);
}


/* ------------------------------------------ */
/* 
 * reads : p_1051->g_373.f2 p_1051->g_582
 * writes: p_1051->g_373.f2
 */
int32_t * func_19(struct S1  p_20, int32_t * p_21, int32_t ** p_22, uint16_t  p_23, struct S2 * p_1051)
{ /* block id: 211 */
    int64_t l_584 = 1L;
    int32_t *l_585 = &p_1051->g_115;
    int32_t l_586 = 0x4DCEE93DL;
    int32_t *l_587 = &p_1051->g_115;
    int32_t *l_588 = (void*)0;
    int32_t *l_589 = &p_1051->g_82;
    int32_t *l_590[3];
    int32_t l_591 = 0x377DE0AAL;
    uint8_t l_592[6] = {3UL,3UL,3UL,3UL,3UL,3UL};
    struct S0 *l_600 = &p_1051->g_377;
    VECTOR(int16_t, 16) l_603 = (VECTOR(int16_t, 16))(0x3D02L, (VECTOR(int16_t, 4))(0x3D02L, (VECTOR(int16_t, 2))(0x3D02L, 0x3F24L), 0x3F24L), 0x3F24L, 0x3D02L, 0x3F24L, (VECTOR(int16_t, 2))(0x3D02L, 0x3F24L), (VECTOR(int16_t, 2))(0x3D02L, 0x3F24L), 0x3D02L, 0x3F24L, 0x3D02L, 0x3F24L);
    VECTOR(int16_t, 16) l_604 = (VECTOR(int16_t, 16))((-9L), (VECTOR(int16_t, 4))((-9L), (VECTOR(int16_t, 2))((-9L), 1L), 1L), 1L, (-9L), 1L, (VECTOR(int16_t, 2))((-9L), 1L), (VECTOR(int16_t, 2))((-9L), 1L), (-9L), 1L, (-9L), 1L);
    VECTOR(int32_t, 16) l_641 = (VECTOR(int32_t, 16))(0x274803C1L, (VECTOR(int32_t, 4))(0x274803C1L, (VECTOR(int32_t, 2))(0x274803C1L, 5L), 5L), 5L, 0x274803C1L, 5L, (VECTOR(int32_t, 2))(0x274803C1L, 5L), (VECTOR(int32_t, 2))(0x274803C1L, 5L), 0x274803C1L, 5L, 0x274803C1L, 5L);
    VECTOR(int32_t, 8) l_645 = (VECTOR(int32_t, 8))((-4L), (VECTOR(int32_t, 4))((-4L), (VECTOR(int32_t, 2))((-4L), 0x7C4FF85BL), 0x7C4FF85BL), 0x7C4FF85BL, (-4L), 0x7C4FF85BL);
    VECTOR(int32_t, 16) l_647 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 9L), 9L), 9L, (-1L), 9L, (VECTOR(int32_t, 2))((-1L), 9L), (VECTOR(int32_t, 2))((-1L), 9L), (-1L), 9L, (-1L), 9L);
    VECTOR(int8_t, 8) l_660 = (VECTOR(int8_t, 8))(0x7CL, (VECTOR(int8_t, 4))(0x7CL, (VECTOR(int8_t, 2))(0x7CL, 0x37L), 0x37L), 0x37L, 0x7CL, 0x37L);
    int64_t l_661 = 0x11E7C4D9C0755111L;
    int16_t *l_685 = (void*)0;
    VECTOR(int32_t, 16) l_710 = (VECTOR(int32_t, 16))(0x534456AFL, (VECTOR(int32_t, 4))(0x534456AFL, (VECTOR(int32_t, 2))(0x534456AFL, 1L), 1L), 1L, 0x534456AFL, 1L, (VECTOR(int32_t, 2))(0x534456AFL, 1L), (VECTOR(int32_t, 2))(0x534456AFL, 1L), 0x534456AFL, 1L, 0x534456AFL, 1L);
    VECTOR(uint32_t, 4) l_733 = (VECTOR(uint32_t, 4))(0x60D73692L, (VECTOR(uint32_t, 2))(0x60D73692L, 5UL), 5UL);
    uint8_t l_747[2][10][2] = {{{0xE6L,0xE6L},{0xE6L,0xE6L},{0xE6L,0xE6L},{0xE6L,0xE6L},{0xE6L,0xE6L},{0xE6L,0xE6L},{0xE6L,0xE6L},{0xE6L,0xE6L},{0xE6L,0xE6L},{0xE6L,0xE6L}},{{0xE6L,0xE6L},{0xE6L,0xE6L},{0xE6L,0xE6L},{0xE6L,0xE6L},{0xE6L,0xE6L},{0xE6L,0xE6L},{0xE6L,0xE6L},{0xE6L,0xE6L},{0xE6L,0xE6L},{0xE6L,0xE6L}}};
    uint16_t l_753 = 0xA32CL;
    int32_t *l_754 = &p_1051->g_11;
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_590[i] = &l_586;
    l_592[2]++;
    for (p_1051->g_373.f2 = 0; (p_1051->g_373.f2 == 15); p_1051->g_373.f2 = safe_add_func_int64_t_s_s(p_1051->g_373.f2, 1))
    { /* block id: 215 */
        uint32_t l_597 = 4294967286UL;
        struct S0 *l_602 = &p_1051->g_458;
        struct S0 **l_601 = &l_602;
        VECTOR(int16_t, 4) l_607 = (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x470CL), 0x470CL);
        VECTOR(int16_t, 2) l_609 = (VECTOR(int16_t, 2))(0x5229L, 0x5713L);
        int8_t l_610 = 0x01L;
        uint32_t l_611 = 7UL;
        int32_t *l_614[10][10] = {{&l_586,&p_1051->g_11,&p_1051->g_11,&p_1051->g_11,&p_1051->g_11,&l_586,&p_1051->g_82,&p_1051->g_11,&l_586,&p_1051->g_11},{&l_586,&p_1051->g_11,&p_1051->g_11,&p_1051->g_11,&p_1051->g_11,&l_586,&p_1051->g_82,&p_1051->g_11,&l_586,&p_1051->g_11},{&l_586,&p_1051->g_11,&p_1051->g_11,&p_1051->g_11,&p_1051->g_11,&l_586,&p_1051->g_82,&p_1051->g_11,&l_586,&p_1051->g_11},{&l_586,&p_1051->g_11,&p_1051->g_11,&p_1051->g_11,&p_1051->g_11,&l_586,&p_1051->g_82,&p_1051->g_11,&l_586,&p_1051->g_11},{&l_586,&p_1051->g_11,&p_1051->g_11,&p_1051->g_11,&p_1051->g_11,&l_586,&p_1051->g_82,&p_1051->g_11,&l_586,&p_1051->g_11},{&l_586,&p_1051->g_11,&p_1051->g_11,&p_1051->g_11,&p_1051->g_11,&l_586,&p_1051->g_82,&p_1051->g_11,&l_586,&p_1051->g_11},{&l_586,&p_1051->g_11,&p_1051->g_11,&p_1051->g_11,&p_1051->g_11,&l_586,&p_1051->g_82,&p_1051->g_11,&l_586,&p_1051->g_11},{&l_586,&p_1051->g_11,&p_1051->g_11,&p_1051->g_11,&p_1051->g_11,&l_586,&p_1051->g_82,&p_1051->g_11,&l_586,&p_1051->g_11},{&l_586,&p_1051->g_11,&p_1051->g_11,&p_1051->g_11,&p_1051->g_11,&l_586,&p_1051->g_82,&p_1051->g_11,&l_586,&p_1051->g_11},{&l_586,&p_1051->g_11,&p_1051->g_11,&p_1051->g_11,&p_1051->g_11,&l_586,&p_1051->g_82,&p_1051->g_11,&l_586,&p_1051->g_11}};
        struct S1 l_621 = {0x24AE1FCBEA4AB54DL};
        uint64_t **l_677 = &p_1051->g_633;
        VECTOR(uint16_t, 2) l_679 = (VECTOR(uint16_t, 2))(0xB4E9L, 4UL);
        int16_t *l_687 = (void*)0;
        int16_t *l_688 = &p_1051->g_67;
        VECTOR(uint32_t, 4) l_702 = (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 0x2B9F7652L), 0x2B9F7652L);
        VECTOR(uint32_t, 16) l_711 = (VECTOR(uint32_t, 16))(0x9E71B0ADL, (VECTOR(uint32_t, 4))(0x9E71B0ADL, (VECTOR(uint32_t, 2))(0x9E71B0ADL, 0xE51798A3L), 0xE51798A3L), 0xE51798A3L, 0x9E71B0ADL, 0xE51798A3L, (VECTOR(uint32_t, 2))(0x9E71B0ADL, 0xE51798A3L), (VECTOR(uint32_t, 2))(0x9E71B0ADL, 0xE51798A3L), 0x9E71B0ADL, 0xE51798A3L, 0x9E71B0ADL, 0xE51798A3L);
        int64_t l_729 = 0L;
        VECTOR(uint32_t, 2) l_732 = (VECTOR(uint32_t, 2))(0x9B56DB16L, 0UL);
        int i, j;
        (1 + 1);
    }
    return (*p_22);
}


/* ------------------------------------------ */
/* 
 * reads : p_1051->g_156.f0 p_1051->g_151 p_1051->g_67 p_1051->g_74.f0 p_1051->g_11 p_1051->g_176.f5 p_1051->g_267 p_1051->g_115 p_1051->g_320 p_1051->g_336 p_1051->g_156.f4 p_1051->g_343 p_1051->g_344 p_1051->g_345 p_1051->g_347 p_1051->g_188 p_1051->g_149 p_1051->g_68 p_1051->g_123 p_1051->g_42 p_1051->g_41 p_1051->g_291.f5 p_1051->g_372 p_1051->g_378 p_1051->g_381 p_1051->g_176.f2 p_1051->g_377.f2 p_1051->g_186 p_1051->g_187 p_1051->g_449 p_1051->g_176.f1 p_1051->g_458 p_1051->g_469 p_1051->g_93 p_1051->g_499 p_1051->g_502 p_1051->g_503 p_1051->g_377.f5 p_1051->g_515 p_1051->g_521 p_1051->g_522 p_1051->g_530 p_1051->g_531 p_1051->g_373.f3 p_1051->g_532 p_1051->g_544 p_1051->g_547 p_1051->g_290 p_1051->g_291.f0 p_1051->g_112 p_1051->g_153 p_1051->g_82
 * writes: p_1051->g_78 p_1051->g_156.f2 p_1051->g_82 p_1051->g_176.f5 p_1051->g_68 p_1051->g_74.f0 p_1051->g_42 p_1051->g_372 p_1051->g_377.f1 p_1051->g_176.f2 p_1051->g_377.f2 p_1051->g_41 p_1051->g_176.f1 p_1051->g_8 p_1051->g_93 p_1051->g_469 p_1051->g_481 p_1051->g_377.f5 p_1051->g_149 p_1051->g_67 p_1051->g_151 p_1051->g_115 p_1051->g_343 p_1051->g_112
 */
int32_t * func_26(uint32_t  p_27, int8_t  p_28, struct S2 * p_1051)
{ /* block id: 127 */
    uint32_t *l_301 = &p_1051->g_78;
    VECTOR(int16_t, 8) l_311 = (VECTOR(int16_t, 8))(0x04BEL, (VECTOR(int16_t, 4))(0x04BEL, (VECTOR(int16_t, 2))(0x04BEL, (-1L)), (-1L)), (-1L), 0x04BEL, (-1L));
    VECTOR(int16_t, 8) l_312 = (VECTOR(int16_t, 8))((-6L), (VECTOR(int16_t, 4))((-6L), (VECTOR(int16_t, 2))((-6L), 1L), 1L), 1L, (-6L), 1L);
    int64_t *l_315 = &p_1051->g_156.f2;
    VECTOR(uint8_t, 2) l_327 = (VECTOR(uint8_t, 2))(247UL, 0UL);
    VECTOR(int8_t, 16) l_337 = (VECTOR(int8_t, 16))(3L, (VECTOR(int8_t, 4))(3L, (VECTOR(int8_t, 2))(3L, 0x06L), 0x06L), 0x06L, 3L, 0x06L, (VECTOR(int8_t, 2))(3L, 0x06L), (VECTOR(int8_t, 2))(3L, 0x06L), 3L, 0x06L, 3L, 0x06L);
    int32_t l_365 = (-9L);
    struct S0 *l_376 = &p_1051->g_377;
    uint16_t *l_397 = (void*)0;
    int32_t l_410 = (-1L);
    int32_t l_411 = 0x1D86D975L;
    int32_t l_413 = 0x63EDC709L;
    VECTOR(int32_t, 2) l_420 = (VECTOR(int32_t, 2))(1L, 0x2DE208DBL);
    int32_t l_421 = 1L;
    struct S1 l_442[10][1] = {{{18446744073709551615UL}},{{18446744073709551615UL}},{{18446744073709551615UL}},{{18446744073709551615UL}},{{18446744073709551615UL}},{{18446744073709551615UL}},{{18446744073709551615UL}},{{18446744073709551615UL}},{{18446744073709551615UL}},{{18446744073709551615UL}}};
    int16_t ***l_444 = &p_1051->g_187[0][0][5];
    int32_t ***l_486 = &p_1051->g_41;
    uint32_t l_491 = 0x7B9BA1CDL;
    VECTOR(int16_t, 8) l_494 = (VECTOR(int16_t, 8))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), (-1L)), (-1L)), (-1L), (-1L), (-1L));
    VECTOR(uint16_t, 8) l_497 = (VECTOR(uint16_t, 8))(0x71BFL, (VECTOR(uint16_t, 4))(0x71BFL, (VECTOR(uint16_t, 2))(0x71BFL, 0xBC57L), 0xBC57L), 0xBC57L, 0x71BFL, 0xBC57L);
    VECTOR(uint16_t, 2) l_504 = (VECTOR(uint16_t, 2))(0xA240L, 0xF708L);
    VECTOR(uint16_t, 4) l_505 = (VECTOR(uint16_t, 4))(0x6D45L, (VECTOR(uint16_t, 2))(0x6D45L, 6UL), 6UL);
    VECTOR(int16_t, 4) l_560 = (VECTOR(int16_t, 4))(0x73DDL, (VECTOR(int16_t, 2))(0x73DDL, 0x2776L), 0x2776L);
    int8_t l_574[4][3] = {{0x6FL,0x6FL,0x6FL},{0x6FL,0x6FL,0x6FL},{0x6FL,0x6FL,0x6FL},{0x6FL,0x6FL,0x6FL}};
    int32_t l_577 = 0x395BC634L;
    int32_t *l_579 = (void*)0;
    int32_t *l_580[3];
    int i, j;
    for (i = 0; i < 3; i++)
        l_580[i] = &p_1051->g_115;
    if (((VECTOR(int32_t, 4))(max(((VECTOR(int32_t, 8))(sub_sat(((VECTOR(int32_t, 16))((((*l_301) = GROUP_DIVERGE(1, 1)) | (safe_add_func_int64_t_s_s((18446744073709551615UL >= ((safe_unary_minus_func_int32_t_s((((VECTOR(uint8_t, 2))(min(((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 8))((safe_div_func_int32_t_s_s((safe_div_func_uint64_t_u_u(((VECTOR(uint64_t, 4))((((((VECTOR(int16_t, 2))(max(((VECTOR(int16_t, 2))(max(((VECTOR(int16_t, 16))(hadd(((VECTOR(int16_t, 16))((((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(l_311.s0514)), 1L, 0x3AF4L, (-7L), 0x6E58L)).s0476536420212012 && ((VECTOR(int16_t, 16))((((VECTOR(int16_t, 4))(l_312.s7570)).zzyxwxzwwwwyzywx && ((VECTOR(int16_t, 8))(sub_sat(((VECTOR(int16_t, 16))(p_28, ((0x619C6F29274E30E5L >= ((*l_315) = (safe_lshift_func_int8_t_s_u(0x48L, l_311.s0)))) & (((p_1051->g_156.f0 <= (l_311.s1 , (safe_mod_func_uint64_t_u_u(((VECTOR(uint64_t, 4))(upsample(((VECTOR(uint32_t, 4))(1UL, ((safe_mod_func_uint16_t_u_u(p_28, (-6L))) , p_27), 0x48E914F0L, 0UL)), ((VECTOR(uint32_t, 4))(0UL))))).y, p_28)))) != 65535UL) , 65535UL)), l_312.s3, (-7L), 0L, ((VECTOR(int16_t, 8))(0x7EEAL)), p_27, 0L, 1L)).even, ((VECTOR(int16_t, 8))((-7L)))))).s1411727072112036)))))), ((VECTOR(int16_t, 16))(4L))))).s17, (int16_t)p_28))), ((VECTOR(int16_t, 2))(0x5709L))))).hi >= (-1L)) || p_1051->g_151) != p_1051->g_151), ((VECTOR(uint64_t, 2))(0x6B44387E8C344374L)), 18446744073709551606UL)).x, p_1051->g_67)), p_28)), p_1051->g_74.f0, p_1051->g_11, ((VECTOR(uint8_t, 2))(0x0CL)), l_312.s1, 0xD5L, 250UL)) + ((VECTOR(uint8_t, 8))(252UL))))).s03, ((VECTOR(uint8_t, 2))(0x0CL))))).odd || p_28))) != 18446744073709551610UL)), p_1051->g_176.f5))), ((VECTOR(int32_t, 4))((-3L))), 1L, p_28, p_27, (*p_1051->g_267), ((VECTOR(int32_t, 4))(0x597471B3L)), (-1L), 8L, 0x057ABA26L)).even, ((VECTOR(int32_t, 8))(0x543E3075L))))).hi, ((VECTOR(int32_t, 4))((-4L)))))).z)
    { /* block id: 130 */
        VECTOR(uint16_t, 4) l_321 = (VECTOR(uint16_t, 4))(0x4607L, (VECTOR(uint16_t, 2))(0x4607L, 0x681DL), 0x681DL);
        VECTOR(uint8_t, 16) l_330 = (VECTOR(uint8_t, 16))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 1UL), 1UL), 1UL, 255UL, 1UL, (VECTOR(uint8_t, 2))(255UL, 1UL), (VECTOR(uint8_t, 2))(255UL, 1UL), 255UL, 1UL, 255UL, 1UL);
        VECTOR(int8_t, 8) l_335 = (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x13L), 0x13L), 0x13L, 1L, 0x13L);
        VECTOR(int8_t, 8) l_338 = (VECTOR(int8_t, 8))(0x15L, (VECTOR(int8_t, 4))(0x15L, (VECTOR(int8_t, 2))(0x15L, 0x64L), 0x64L), 0x64L, 0x15L, 0x64L);
        VECTOR(int8_t, 4) l_339 = (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0L), 0L);
        VECTOR(int8_t, 8) l_340 = (VECTOR(int8_t, 8))(0x07L, (VECTOR(int8_t, 4))(0x07L, (VECTOR(int8_t, 2))(0x07L, (-1L)), (-1L)), (-1L), 0x07L, (-1L));
        VECTOR(int64_t, 4) l_346 = (VECTOR(int64_t, 4))(0x70B8B5409C428806L, (VECTOR(int64_t, 2))(0x70B8B5409C428806L, 0x18470653C73B861FL), 0x18470653C73B861FL);
        uint32_t l_361 = 5UL;
        int32_t *l_362 = &p_1051->g_82;
        uint8_t *l_363 = &p_1051->g_68;
        uint64_t *l_364 = &p_1051->g_74.f0;
        int i;
        l_365 ^= ((((VECTOR(int16_t, 16))(clz(((VECTOR(int16_t, 16))(p_1051->g_320.sd179c09eb90cb7c8))))).sb >= ((VECTOR(uint16_t, 8))(l_321.yzzzzxzw)).s1) & (safe_rshift_func_uint16_t_u_u((safe_rshift_func_uint16_t_u_u((((*l_364) = (safe_unary_minus_func_int32_t_s(((((*l_363) &= (p_1051->g_176.f5 = ((VECTOR(uint8_t, 16))(min(((VECTOR(uint8_t, 4))(rotate(((VECTOR(uint8_t, 2))(l_327.yx)).yxxy, ((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(rhadd(((VECTOR(uint8_t, 8))(l_330.sdf48d24f)).odd, ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))((-((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 8))(mad_sat(((VECTOR(uint8_t, 8))(mad_hi(((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(abs_diff(((VECTOR(int8_t, 16))((((VECTOR(int8_t, 4))(clz(((VECTOR(int8_t, 2))(sub_sat(((VECTOR(int8_t, 8))(l_335.s67642432)).s74, ((VECTOR(int8_t, 8))(safe_clamp_func(VECTOR(int8_t, 8),VECTOR(int8_t, 8),((VECTOR(int8_t, 8))(p_1051->g_336.s78a595cd)), ((VECTOR(int8_t, 8))(l_337.sb1f90554)), ((VECTOR(int8_t, 2))((((VECTOR(int8_t, 4))(add_sat(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))((((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))((((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(l_338.s2455)), 0x14L, ((VECTOR(int8_t, 2))((((VECTOR(int8_t, 2))(l_339.wy)) > ((VECTOR(int8_t, 8))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 8),((VECTOR(int8_t, 8))(l_340.s65602177)), ((VECTOR(int8_t, 8))((safe_sub_func_int8_t_s_s(p_1051->g_156.f4, ((&p_28 != &p_28) | p_1051->g_151))), ((VECTOR(int8_t, 4))((((VECTOR(int8_t, 2))(safe_clamp_func(VECTOR(int8_t, 2),VECTOR(int8_t, 2),((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(rhadd(((VECTOR(int8_t, 8))(rotate(((VECTOR(int8_t, 2))(p_1051->g_343.s60)).xxyyxyyx, ((VECTOR(int8_t, 2))(p_1051->g_344.yx)).yxyyxyxy))).s35, ((VECTOR(int8_t, 2))(rhadd(((VECTOR(int8_t, 16))((((VECTOR(int8_t, 2))((!((VECTOR(int8_t, 4))((l_301 == (((VECTOR(int64_t, 16))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 16),((VECTOR(int64_t, 16))((((VECTOR(int64_t, 4))(rhadd(((VECTOR(int64_t, 8))(mad_sat(((VECTOR(int64_t, 8))((((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))(max(((VECTOR(int64_t, 2))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 2),((VECTOR(int64_t, 8))(max(((VECTOR(int64_t, 16))(safe_clamp_func(VECTOR(int64_t, 16),int64_t,((VECTOR(int64_t, 16))(max(((VECTOR(int64_t, 4))(p_1051->g_345.yyyx)).xywxywywxxyzwyyz, ((VECTOR(int64_t, 16))(hadd(((VECTOR(int64_t, 4))(l_346.zwzy)).zxwyyyxzyywxzwxz, ((VECTOR(int64_t, 16))(p_1051->g_347.s35144d632458de11)))))))), (int64_t)p_1051->g_345.y, (int64_t)(safe_unary_minus_func_int8_t_s((0xFEL & ((safe_mul_func_uint8_t_u_u((safe_mul_func_uint8_t_u_u(((safe_mod_func_uint8_t_u_u(((*p_1051->g_267) , ((VECTOR(uint8_t, 2))(0UL, 1UL)).hi), (safe_sub_func_int32_t_s_s(((*l_362) = (safe_mul_func_uint8_t_u_u((safe_add_func_uint16_t_u_u(l_361, (*p_1051->g_188))), 0x3CL))), p_28)))) | p_27), FAKE_DIVERGE(p_1051->local_1_offset, get_local_id(1), 10))), 0x05L)) < 1UL))))))).odd, (int64_t)0x1B7AE38FBDD4F9F1L))).s04, ((VECTOR(int64_t, 2))((-1L))), ((VECTOR(int64_t, 2))(5L))))), (int64_t)0L))), 0x67248CF34C46E58AL, ((VECTOR(int64_t, 2))(0x7D33763558134D8CL)), ((VECTOR(int64_t, 2))(1L)), 0L)) == ((VECTOR(int64_t, 8))((-1L)))))), ((VECTOR(int64_t, 8))(0L)), ((VECTOR(int64_t, 8))(1L))))).even, ((VECTOR(int64_t, 4))(0x4417655FDF3245BCL))))).zzzyywyzzzyxwwwy & ((VECTOR(int64_t, 16))((-1L)))))), ((VECTOR(int64_t, 16))((-1L))), ((VECTOR(int64_t, 16))(1L))))).s1 , &p_1051->g_8)), (-1L), 0x2EL, 1L)).hi))).xyxyyxxxyyxxxyxx >= ((VECTOR(int8_t, 16))(0x42L))))).s6b, ((VECTOR(int8_t, 2))(0x69L)))))))), (-3L), (-1L))).even, ((VECTOR(int8_t, 2))(0x23L)), ((VECTOR(int8_t, 2))((-4L)))))).xxxy == ((VECTOR(int8_t, 4))(0x11L))))), ((VECTOR(int8_t, 2))((-4L))), 0x2FL)), ((VECTOR(int8_t, 8))(0x3FL))))).s14))), (-4L))).s27 > ((VECTOR(int8_t, 2))(0x27L))))), (-1L), 0x73L)) ^ ((VECTOR(int8_t, 4))(0x1AL))))), 0x6CL, 0x74L, (-1L), ((VECTOR(int8_t, 2))(0x6DL)), 6L, (-8L), (-1L), ((VECTOR(int8_t, 4))(0L)))).s40ba, ((VECTOR(int8_t, 4))(7L))))).odd && ((VECTOR(int8_t, 2))(0x5AL))))).yyyyxxyx))).s32))).xyyy))).ywyyyzxyzwyzyzxx != ((VECTOR(int8_t, 16))(0x26L))))).sceca, ((VECTOR(int8_t, 4))(1L))))), ((VECTOR(uint8_t, 2))(0x0FL)), 0x28L, 251UL)).s1200733776724350 >> ((VECTOR(uint8_t, 16))(0x6DL))))).even, ((VECTOR(uint8_t, 8))(0UL)), ((VECTOR(uint8_t, 8))(0xBFL))))), ((VECTOR(uint8_t, 8))(255UL)), ((VECTOR(uint8_t, 8))(0UL))))) + ((VECTOR(uint8_t, 8))(1UL))))).s32))), 3UL, 0xFAL))))), 255UL, 8UL, ((VECTOR(uint8_t, 8))(0xE7L)), 255UL, 0UL)).hi + ((VECTOR(uint8_t, 8))(5UL))))).s7000637231505406 | ((VECTOR(uint8_t, 16))(0xE6L))))).se3df))).ywyxzxyzywwwywwx, (uint8_t)l_311.s2))).sb)) || p_28) > p_1051->g_67)))) || GROUP_DIVERGE(0, 1)), 2)), 0)));
        return (*p_1051->g_123);
    }
    else
    { /* block id: 137 */
        int32_t l_366 = 0x26A061BAL;
        VECTOR(uint32_t, 8) l_371 = (VECTOR(uint32_t, 8))(0xCAF5971CL, (VECTOR(uint32_t, 4))(0xCAF5971CL, (VECTOR(uint32_t, 2))(0xCAF5971CL, 0xCB978715L), 0xCB978715L), 0xCB978715L, 0xCAF5971CL, 0xCB978715L);
        struct S0 **l_374 = (void*)0;
        struct S0 **l_375 = &p_1051->g_372;
        VECTOR(int8_t, 16) l_379 = (VECTOR(int8_t, 16))(0x2FL, (VECTOR(int8_t, 4))(0x2FL, (VECTOR(int8_t, 2))(0x2FL, (-7L)), (-7L)), (-7L), 0x2FL, (-7L), (VECTOR(int8_t, 2))(0x2FL, (-7L)), (VECTOR(int8_t, 2))(0x2FL, (-7L)), 0x2FL, (-7L), 0x2FL, (-7L));
        VECTOR(int8_t, 8) l_380 = (VECTOR(int8_t, 8))(0x1AL, (VECTOR(int8_t, 4))(0x1AL, (VECTOR(int8_t, 2))(0x1AL, 4L), 4L), 4L, 0x1AL, 4L);
        VECTOR(uint32_t, 2) l_394 = (VECTOR(uint32_t, 2))(0x98C594E8L, 4294967290UL);
        int32_t l_408 = (-4L);
        int32_t l_417 = (-4L);
        VECTOR(int32_t, 8) l_418 = (VECTOR(int32_t, 8))(0x5216344AL, (VECTOR(int32_t, 4))(0x5216344AL, (VECTOR(int32_t, 2))(0x5216344AL, 0x43A70C3FL), 0x43A70C3FL), 0x43A70C3FL, 0x5216344AL, 0x43A70C3FL);
        uint8_t l_423 = 1UL;
        int8_t *l_430[1];
        int16_t ***l_443 = &p_1051->g_187[3][4][4];
        int16_t l_488 = 0x14CEL;
        VECTOR(int16_t, 16) l_498 = (VECTOR(int16_t, 16))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x7EFFL), 0x7EFFL), 0x7EFFL, 0L, 0x7EFFL, (VECTOR(int16_t, 2))(0L, 0x7EFFL), (VECTOR(int16_t, 2))(0L, 0x7EFFL), 0L, 0x7EFFL, 0L, 0x7EFFL);
        VECTOR(uint16_t, 4) l_533 = (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0xAA0FL), 0xAA0FL);
        VECTOR(uint8_t, 8) l_543 = (VECTOR(uint8_t, 8))(0xBBL, (VECTOR(uint8_t, 4))(0xBBL, (VECTOR(uint8_t, 2))(0xBBL, 0x80L), 0x80L), 0x80L, 0xBBL, 0x80L);
        int32_t l_561 = 0x4F80D155L;
        uint16_t l_563[4][6][8] = {{{2UL,65534UL,65534UL,2UL,0x81D5L,65529UL,0xFFDAL,0xB7A6L},{2UL,65534UL,65534UL,2UL,0x81D5L,65529UL,0xFFDAL,0xB7A6L},{2UL,65534UL,65534UL,2UL,0x81D5L,65529UL,0xFFDAL,0xB7A6L},{2UL,65534UL,65534UL,2UL,0x81D5L,65529UL,0xFFDAL,0xB7A6L},{2UL,65534UL,65534UL,2UL,0x81D5L,65529UL,0xFFDAL,0xB7A6L},{2UL,65534UL,65534UL,2UL,0x81D5L,65529UL,0xFFDAL,0xB7A6L}},{{2UL,65534UL,65534UL,2UL,0x81D5L,65529UL,0xFFDAL,0xB7A6L},{2UL,65534UL,65534UL,2UL,0x81D5L,65529UL,0xFFDAL,0xB7A6L},{2UL,65534UL,65534UL,2UL,0x81D5L,65529UL,0xFFDAL,0xB7A6L},{2UL,65534UL,65534UL,2UL,0x81D5L,65529UL,0xFFDAL,0xB7A6L},{2UL,65534UL,65534UL,2UL,0x81D5L,65529UL,0xFFDAL,0xB7A6L},{2UL,65534UL,65534UL,2UL,0x81D5L,65529UL,0xFFDAL,0xB7A6L}},{{2UL,65534UL,65534UL,2UL,0x81D5L,65529UL,0xFFDAL,0xB7A6L},{2UL,65534UL,65534UL,2UL,0x81D5L,65529UL,0xFFDAL,0xB7A6L},{2UL,65534UL,65534UL,2UL,0x81D5L,65529UL,0xFFDAL,0xB7A6L},{2UL,65534UL,65534UL,2UL,0x81D5L,65529UL,0xFFDAL,0xB7A6L},{2UL,65534UL,65534UL,2UL,0x81D5L,65529UL,0xFFDAL,0xB7A6L},{2UL,65534UL,65534UL,2UL,0x81D5L,65529UL,0xFFDAL,0xB7A6L}},{{2UL,65534UL,65534UL,2UL,0x81D5L,65529UL,0xFFDAL,0xB7A6L},{2UL,65534UL,65534UL,2UL,0x81D5L,65529UL,0xFFDAL,0xB7A6L},{2UL,65534UL,65534UL,2UL,0x81D5L,65529UL,0xFFDAL,0xB7A6L},{2UL,65534UL,65534UL,2UL,0x81D5L,65529UL,0xFFDAL,0xB7A6L},{2UL,65534UL,65534UL,2UL,0x81D5L,65529UL,0xFFDAL,0xB7A6L},{2UL,65534UL,65534UL,2UL,0x81D5L,65529UL,0xFFDAL,0xB7A6L}}};
        int i, j, k;
        for (i = 0; i < 1; i++)
            l_430[i] = &p_1051->g_112;
        (*p_1051->g_41) = (*p_1051->g_123);
        l_366 = l_311.s7;
        if ((safe_mod_func_int32_t_s_s((l_366 & ((p_1051->g_291.f5 , ((*l_301) = p_28)) == ((VECTOR(uint32_t, 16))(hadd(((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 8))(9UL, p_27, 0xCEC45238L, ((VECTOR(uint32_t, 4))(l_371.s6773)), 4UL)).s02 >> ((VECTOR(uint32_t, 8))((p_1051->g_377.f1 = ((((+0UL) , ((*l_375) = p_1051->g_372)) == l_376) <= ((VECTOR(int8_t, 8))(hadd(((VECTOR(int8_t, 4))(p_1051->g_378.xyxy)).xxwyzwzy, ((VECTOR(int8_t, 2))((((VECTOR(int8_t, 2))(l_379.s0a)) <= ((VECTOR(int8_t, 2))(l_380.s21))))).yxyxyyxy))).s6)), 0xA97F44B5L, 0x7516BC8EL, 2UL, 0xB99855E0L, ((VECTOR(uint32_t, 2))(p_1051->g_381.sa6)), 4294967289UL)).s22))).xxyyyyxyyxyyxxyx, ((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 8))(safe_mul24_func_uint32_t_u_u(VECTOR(uint32_t, 8),((VECTOR(uint32_t, 16))(rhadd(((VECTOR(uint32_t, 16))((((VECTOR(uint32_t, 8))(min(((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 4))(l_394.yxyx)).lo << ((VECTOR(uint32_t, 2))(32))))) + ((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 8))((~((VECTOR(uint32_t, 16))(0xE3CA38FCL, ((VECTOR(uint32_t, 2))(1UL, 7UL)), (+(p_27 , (l_397 == &p_1051->g_93))), GROUP_DIVERGE(1, 1), l_380.s4, ((VECTOR(uint32_t, 4))(0x2B35768BL)), p_28, ((VECTOR(uint32_t, 2))(0x158B6CB3L)), ((VECTOR(uint32_t, 2))(0xDEDAFEBBL)), 0x7032A804L)).lo))) - ((VECTOR(uint32_t, 8))(4294967294UL))))).s54))), p_28, p_1051->g_68, 0xB9269ACAL, ((VECTOR(uint32_t, 2))(0x9841DA2FL)), ((VECTOR(uint32_t, 2))(1UL)), 0x87CE9BD0L, ((VECTOR(uint32_t, 2))(0x489054EBL)), 0UL, 8UL, 0x470620ECL, 0x9FDF41CCL)).odd + ((VECTOR(uint32_t, 8))(4294967287UL))))), ((VECTOR(uint32_t, 8))(0x3EB6BF70L))))).s1631635722104627 >> ((VECTOR(uint32_t, 16))(32))))), ((VECTOR(uint32_t, 16))(0xD8F9BD76L))))).hi, ((VECTOR(uint32_t, 8))(0x855961EBL))))).s26 + ((VECTOR(uint32_t, 2))(0xE07B1410L))))).xyxxxyyx << ((VECTOR(uint32_t, 8))(4294967286UL))))).s0077222410056235))).s7)), p_1051->g_11)))
        { /* block id: 143 */
            int32_t l_404 = (-3L);
            int32_t l_412 = 0x54FB5CBBL;
            int32_t l_414 = 0x7B588F8BL;
            int32_t l_415 = 0x093C4DBFL;
            int32_t l_419 = 0x75CA1866L;
            int32_t **l_435 = (void*)0;
            int64_t *l_450 = &p_1051->g_156.f2;
            for (p_1051->g_176.f2 = 10; (p_1051->g_176.f2 <= (-24)); p_1051->g_176.f2 = safe_sub_func_int64_t_s_s(p_1051->g_176.f2, 9))
            { /* block id: 146 */
                int8_t l_409 = 0x14L;
                int32_t l_416 = 0x247F2B78L;
                int32_t l_422 = 0x11604B60L;
                for (l_365 = (-8); (l_365 <= 10); l_365++)
                { /* block id: 149 */
                    int32_t *l_402 = &p_1051->g_82;
                    int32_t *l_403 = &p_1051->g_115;
                    int32_t *l_405 = &l_404;
                    int32_t *l_406 = &l_404;
                    int32_t *l_407[7][4][9] = {{{&p_1051->g_11,&l_365,&p_1051->g_115,&p_1051->g_82,&p_1051->g_115,&l_365,&p_1051->g_11,&p_1051->g_11,&p_1051->g_11},{&p_1051->g_11,&l_365,&p_1051->g_115,&p_1051->g_82,&p_1051->g_115,&l_365,&p_1051->g_11,&p_1051->g_11,&p_1051->g_11},{&p_1051->g_11,&l_365,&p_1051->g_115,&p_1051->g_82,&p_1051->g_115,&l_365,&p_1051->g_11,&p_1051->g_11,&p_1051->g_11},{&p_1051->g_11,&l_365,&p_1051->g_115,&p_1051->g_82,&p_1051->g_115,&l_365,&p_1051->g_11,&p_1051->g_11,&p_1051->g_11}},{{&p_1051->g_11,&l_365,&p_1051->g_115,&p_1051->g_82,&p_1051->g_115,&l_365,&p_1051->g_11,&p_1051->g_11,&p_1051->g_11},{&p_1051->g_11,&l_365,&p_1051->g_115,&p_1051->g_82,&p_1051->g_115,&l_365,&p_1051->g_11,&p_1051->g_11,&p_1051->g_11},{&p_1051->g_11,&l_365,&p_1051->g_115,&p_1051->g_82,&p_1051->g_115,&l_365,&p_1051->g_11,&p_1051->g_11,&p_1051->g_11},{&p_1051->g_11,&l_365,&p_1051->g_115,&p_1051->g_82,&p_1051->g_115,&l_365,&p_1051->g_11,&p_1051->g_11,&p_1051->g_11}},{{&p_1051->g_11,&l_365,&p_1051->g_115,&p_1051->g_82,&p_1051->g_115,&l_365,&p_1051->g_11,&p_1051->g_11,&p_1051->g_11},{&p_1051->g_11,&l_365,&p_1051->g_115,&p_1051->g_82,&p_1051->g_115,&l_365,&p_1051->g_11,&p_1051->g_11,&p_1051->g_11},{&p_1051->g_11,&l_365,&p_1051->g_115,&p_1051->g_82,&p_1051->g_115,&l_365,&p_1051->g_11,&p_1051->g_11,&p_1051->g_11},{&p_1051->g_11,&l_365,&p_1051->g_115,&p_1051->g_82,&p_1051->g_115,&l_365,&p_1051->g_11,&p_1051->g_11,&p_1051->g_11}},{{&p_1051->g_11,&l_365,&p_1051->g_115,&p_1051->g_82,&p_1051->g_115,&l_365,&p_1051->g_11,&p_1051->g_11,&p_1051->g_11},{&p_1051->g_11,&l_365,&p_1051->g_115,&p_1051->g_82,&p_1051->g_115,&l_365,&p_1051->g_11,&p_1051->g_11,&p_1051->g_11},{&p_1051->g_11,&l_365,&p_1051->g_115,&p_1051->g_82,&p_1051->g_115,&l_365,&p_1051->g_11,&p_1051->g_11,&p_1051->g_11},{&p_1051->g_11,&l_365,&p_1051->g_115,&p_1051->g_82,&p_1051->g_115,&l_365,&p_1051->g_11,&p_1051->g_11,&p_1051->g_11}},{{&p_1051->g_11,&l_365,&p_1051->g_115,&p_1051->g_82,&p_1051->g_115,&l_365,&p_1051->g_11,&p_1051->g_11,&p_1051->g_11},{&p_1051->g_11,&l_365,&p_1051->g_115,&p_1051->g_82,&p_1051->g_115,&l_365,&p_1051->g_11,&p_1051->g_11,&p_1051->g_11},{&p_1051->g_11,&l_365,&p_1051->g_115,&p_1051->g_82,&p_1051->g_115,&l_365,&p_1051->g_11,&p_1051->g_11,&p_1051->g_11},{&p_1051->g_11,&l_365,&p_1051->g_115,&p_1051->g_82,&p_1051->g_115,&l_365,&p_1051->g_11,&p_1051->g_11,&p_1051->g_11}},{{&p_1051->g_11,&l_365,&p_1051->g_115,&p_1051->g_82,&p_1051->g_115,&l_365,&p_1051->g_11,&p_1051->g_11,&p_1051->g_11},{&p_1051->g_11,&l_365,&p_1051->g_115,&p_1051->g_82,&p_1051->g_115,&l_365,&p_1051->g_11,&p_1051->g_11,&p_1051->g_11},{&p_1051->g_11,&l_365,&p_1051->g_115,&p_1051->g_82,&p_1051->g_115,&l_365,&p_1051->g_11,&p_1051->g_11,&p_1051->g_11},{&p_1051->g_11,&l_365,&p_1051->g_115,&p_1051->g_82,&p_1051->g_115,&l_365,&p_1051->g_11,&p_1051->g_11,&p_1051->g_11}},{{&p_1051->g_11,&l_365,&p_1051->g_115,&p_1051->g_82,&p_1051->g_115,&l_365,&p_1051->g_11,&p_1051->g_11,&p_1051->g_11},{&p_1051->g_11,&l_365,&p_1051->g_115,&p_1051->g_82,&p_1051->g_115,&l_365,&p_1051->g_11,&p_1051->g_11,&p_1051->g_11},{&p_1051->g_11,&l_365,&p_1051->g_115,&p_1051->g_82,&p_1051->g_115,&l_365,&p_1051->g_11,&p_1051->g_11,&p_1051->g_11},{&p_1051->g_11,&l_365,&p_1051->g_115,&p_1051->g_82,&p_1051->g_115,&l_365,&p_1051->g_11,&p_1051->g_11,&p_1051->g_11}}};
                    int i, j, k;
                    l_423--;
                    (*p_1051->g_41) = &l_408;
                }
            }
            for (p_1051->g_377.f2 = (-15); (p_1051->g_377.f2 == 13); p_1051->g_377.f2 = safe_add_func_uint8_t_u_u(p_1051->g_377.f2, 1))
            { /* block id: 156 */
                int8_t *l_431 = (void*)0;
                int8_t **l_432 = &l_431;
                int32_t *l_436 = (void*)0;
                int32_t ***l_441 = &p_1051->g_41;
                int32_t *l_445 = &l_415;
                struct S1 l_448[7] = {{6UL},{6UL},{6UL},{6UL},{6UL},{6UL},{6UL}};
                int i;
                (*l_445) ^= ((safe_sub_func_uint8_t_u_u((0L >= (((FAKE_DIVERGE(p_1051->global_2_offset, get_global_id(2), 10) ^ ((l_430[0] == ((*l_432) = l_431)) > p_1051->g_381.s0)) <= ((safe_sub_func_int32_t_s_s((((((((VECTOR(int32_t, 8))((((VECTOR(int32_t, 8))((((VECTOR(int32_t, 4))((l_435 != ((*l_441) = func_45(p_28, p_28, l_436, ((safe_add_func_int32_t_s_s((safe_rshift_func_uint16_t_u_s((((void*)0 == (*p_1051->g_186)) , p_27), (*p_1051->g_188))), l_337.s4)) , (-1L)), p_1051))), ((VECTOR(int32_t, 2))(0x7944EB7BL)), 5L)).yxyxyxwx == ((VECTOR(int32_t, 8))(0x5A013A05L))))) && ((VECTOR(int32_t, 8))(1L))))).s2 < 6L) ^ l_418.s1) , l_442[4][0]) , l_443) == l_444), 0x7B8D68D9L)) , p_1051->g_378.y)) , 1UL)), p_1051->g_151)) >= p_27);
                l_410 &= (safe_add_func_int32_t_s_s(l_411, (((l_448[1] , p_28) , p_1051->g_449) != l_450)));
            }
        }
        else
        { /* block id: 162 */
            int32_t *l_455 = (void*)0;
            VECTOR(int32_t, 16) l_490 = (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 1L), 1L), 1L, 0L, 1L, (VECTOR(int32_t, 2))(0L, 1L), (VECTOR(int32_t, 2))(0L, 1L), 0L, 1L, 0L, 1L);
            VECTOR(uint16_t, 8) l_520 = (VECTOR(uint16_t, 8))(6UL, (VECTOR(uint16_t, 4))(6UL, (VECTOR(uint16_t, 2))(6UL, 0x779EL), 0x779EL), 0x779EL, 6UL, 0x779EL);
            VECTOR(uint16_t, 2) l_527 = (VECTOR(uint16_t, 2))(0x05A0L, 65531UL);
            uint16_t *l_559[3][8][1] = {{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}}};
            int i, j, k;
            p_1051->g_372 = &p_1051->g_373;
            for (p_1051->g_176.f1 = 0; (p_1051->g_176.f1 > 43); p_1051->g_176.f1 = safe_add_func_uint64_t_u_u(p_1051->g_176.f1, 1))
            { /* block id: 166 */
                uint64_t l_461 = 0UL;
                uint32_t l_510 = 0x7A13F41DL;
                VECTOR(uint8_t, 2) l_542 = (VECTOR(uint8_t, 2))(1UL, 0UL);
                uint16_t *l_558 = (void*)0;
                int32_t l_562 = 1L;
                int i;
                for (p_1051->g_8 = (-25); (p_1051->g_8 < 15); ++p_1051->g_8)
                { /* block id: 169 */
                    int8_t *l_466 = &p_1051->g_151;
                    int32_t l_470[6];
                    uint8_t *l_511[10] = {(void*)0,&l_423,&p_1051->g_156.f5,&l_423,(void*)0,(void*)0,&l_423,&p_1051->g_156.f5,&l_423,(void*)0};
                    int16_t *l_514 = &p_1051->g_67;
                    int32_t *l_556 = (void*)0;
                    int32_t *l_557 = &l_366;
                    int i;
                    for (i = 0; i < 6; i++)
                        l_470[i] = 0x113511FAL;
                    (*p_1051->g_41) = l_455;
                    for (p_1051->g_93 = 0; (p_1051->g_93 <= 20); p_1051->g_93++)
                    { /* block id: 173 */
                        int8_t **l_467 = (void*)0;
                        int8_t **l_468[8];
                        int32_t *l_471 = (void*)0;
                        struct S0 ***l_480[9][3] = {{&l_375,(void*)0,(void*)0},{&l_375,(void*)0,(void*)0},{&l_375,(void*)0,(void*)0},{&l_375,(void*)0,(void*)0},{&l_375,(void*)0,(void*)0},{&l_375,(void*)0,(void*)0},{&l_375,(void*)0,(void*)0},{&l_375,(void*)0,(void*)0},{&l_375,(void*)0,(void*)0}};
                        int32_t *l_487 = &l_365;
                        int32_t *l_489[3][8] = {{&l_421,&l_421,(void*)0,&l_470[5],(void*)0,&l_421,&l_421,&l_410},{&l_421,&l_421,(void*)0,&l_470[5],(void*)0,&l_421,&l_421,&l_410},{&l_421,&l_421,(void*)0,&l_470[5],(void*)0,&l_421,&l_421,&l_410}};
                        int i, j;
                        for (i = 0; i < 8; i++)
                            l_468[i] = &l_430[0];
                        l_470[0] = (p_1051->g_458 , (safe_lshift_func_int16_t_s_u((l_461 && ((safe_sub_func_int32_t_s_s(((safe_mul_func_uint16_t_u_u(65534UL, (0x10L != p_27))) == ((&p_28 != (p_1051->g_469 = l_466)) | 1UL)), l_470[0])) , (*p_1051->g_469))), FAKE_DIVERGE(p_1051->global_1_offset, get_global_id(1), 10))));
                        l_470[3] ^= (*p_1051->g_267);
                        l_490.sa = ((safe_div_func_uint16_t_u_u((safe_lshift_func_uint8_t_u_s((((safe_lshift_func_uint16_t_u_s((((((*l_301) = GROUP_DIVERGE(0, 1)) > ((*l_487) = ((safe_sub_func_uint8_t_u_u((((&l_376 != (p_1051->g_481 = &p_1051->g_372)) | (l_379.s7 < (((0xD895L && p_1051->g_156.f4) < 0UL) & 0xEAA888EDC37A5547L))) , p_27), ((VECTOR(int8_t, 8))(mad_sat(((VECTOR(int8_t, 4))(2L, (safe_rshift_func_uint8_t_u_u(((safe_mul_func_int16_t_s_s(((void*)0 != l_486), p_1051->g_458.f2)) & l_461), 1)), 1L, 1L)).zwzyxzyy, ((VECTOR(int8_t, 8))(0x73L)), ((VECTOR(int8_t, 8))(9L))))).s3)) >= p_28))) ^ p_27) < 0x670520B6069987C9L), p_28)) & l_488) >= p_1051->g_93), 7)), p_27)) || p_1051->g_151);
                        l_491++;
                    }
                    l_365 |= ((VECTOR(int32_t, 4))((((VECTOR(int32_t, 16))(clz(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(upsample(((VECTOR(int16_t, 4))(l_494.s1444)).even, ((VECTOR(uint16_t, 2))(min(((VECTOR(uint16_t, 8))(hadd(((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 8))(rotate(((VECTOR(uint16_t, 4))(l_497.s2221)).ywzzwxyz, ((VECTOR(uint16_t, 8))(abs(((VECTOR(uint16_t, 16))(abs(((VECTOR(int16_t, 2))((((VECTOR(int16_t, 8))(0x26F3L, 0x43C2L, 0L, ((VECTOR(int16_t, 4))(l_498.s9a64)), 0x4FF6L)).s60 <= ((VECTOR(int16_t, 2))(p_1051->g_499.s70))))).xyxyyxxxyxyxxyxx))).hi)))))) + ((VECTOR(uint16_t, 16))(mad_hi(((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 8))(abs(((VECTOR(uint16_t, 8))(rotate(((VECTOR(uint16_t, 2))(p_1051->g_502.s75)).xyxxxxyx, ((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 2))(p_1051->g_503.xw)).xxxy ^ ((VECTOR(uint16_t, 2))(l_504.xy)).xyxx))).xzxyyxwy)))))).hi + ((VECTOR(uint16_t, 2))(l_505.wx)).xyyy))).zxxxzxzwwxywxwxz, ((VECTOR(uint16_t, 16))(safe_clamp_func(VECTOR(uint16_t, 16),VECTOR(uint16_t, 16),((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 8))(rhadd(((VECTOR(uint16_t, 4))((((*l_514) &= ((*p_1051->g_188) = (l_510 >= (--p_1051->g_377.f5)))) && p_27), (+p_1051->g_378.x), 0xFEA3L, 65532UL)).xxyyzzyz, ((VECTOR(uint16_t, 8))(rhadd(((VECTOR(uint16_t, 16))(p_1051->g_515.s4214451732624760)).lo, ((VECTOR(uint16_t, 2))(mad_hi(((VECTOR(uint16_t, 2))(0x3ECBL, 5UL)), ((VECTOR(uint16_t, 4))(0xA0D4L, ((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 16))(min(((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 2))(l_520.s00)) + ((VECTOR(uint16_t, 4))(max(((VECTOR(uint16_t, 2))(p_1051->g_521.zz)).xyxx, ((VECTOR(uint16_t, 2))(p_1051->g_522.yw)).yxyy))).odd))), 0UL, 65535UL, p_1051->g_378.y, ((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 8))(hadd(((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 4))(l_527.yyxy)).wyyxxwwxyxzxzxzz + ((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 4))(p_1051->g_530.sa78f)).wyxxwzzw - ((VECTOR(uint16_t, 4))(p_1051->g_531.xxxx)).xxzywyyx))).s2002564636634540))).even, ((VECTOR(uint16_t, 4))((p_1051->g_373.f3 || FAKE_DIVERGE(p_1051->global_2_offset, get_global_id(2), 10)), 1UL, 0xDE62L, 0x3FDDL)).wxwyzwyy))).s15 * ((VECTOR(uint16_t, 8))(p_1051->g_532.s74710061)).s16))), 0xC7B5L)).lo * ((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(l_533.zw)), 0x4140L, 0x578BL)).ywwxxzxy & ((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 16))(min(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(upsample(((VECTOR(uint8_t, 8))(min(((VECTOR(uint8_t, 2))(6UL, 5UL)).xxyxxyyy, ((VECTOR(uint8_t, 4))(add_sat(((VECTOR(uint8_t, 2))(4UL, 0UL)).yxyx, ((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 2))(0xA4L, 0xEAL)).yyyx + ((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 16))(l_542.yyyxxyxyyyxyyyyx)).s309d + ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 2))(clz(((VECTOR(uint8_t, 8))(rhadd(((VECTOR(uint8_t, 2))((+((VECTOR(uint8_t, 16))(mul_hi(((VECTOR(uint8_t, 8))(l_543.s41407000)).s0115761235444603, ((VECTOR(uint8_t, 4))(p_1051->g_544.xyyy)).xxyxwyzwzzzxxwyx))).sa5))).xyxyyxxy, ((VECTOR(uint8_t, 8))(add_sat(((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 8))(p_1051->g_547.yxwzxwxx)).odd - ((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 2))(abs_diff(((VECTOR(int8_t, 8))((((VECTOR(int8_t, 16))((((VECTOR(int8_t, 2))((((VECTOR(int8_t, 8))(((safe_sub_func_uint8_t_u_u(1UL, (safe_add_func_uint64_t_u_u(((p_28 && (l_408 <= ((*l_466) |= ((((*l_557) &= (safe_add_func_uint16_t_u_u(l_542.x, GROUP_DIVERGE(2, 1)))) , l_558) != l_559[2][4][0])))) == p_1051->g_547.w), 0x5E07FFA91CF5CE68L)))) < p_28), ((VECTOR(int8_t, 2))(0L)), p_27, p_28, l_470[2], (-6L), 0x7BL)).s64 && ((VECTOR(int8_t, 2))(0x08L))))).yyyxyxxxyxyxyyyy && ((VECTOR(int8_t, 16))((-2L)))))).odd < ((VECTOR(int8_t, 8))((-8L)))))).s50, ((VECTOR(int8_t, 2))(0x37L))))).xxyx + ((VECTOR(uint8_t, 4))(0xD5L)))))))).xxwyzyxy, ((VECTOR(uint8_t, 8))(0x31L)))))))).s76))) & ((VECTOR(uint8_t, 2))(5UL))))), 253UL, ((VECTOR(uint8_t, 2))(0x4DL)), ((VECTOR(uint8_t, 2))(0UL)), 249UL)).hi))).yywxwzyxyzyzywww + ((VECTOR(uint8_t, 16))(0x50L))))).s8bdd)))))).yzxxxwzy))), ((VECTOR(uint8_t, 8))(0xD4L))))), p_28, 0x45CCL, 0x8A6AL, ((VECTOR(uint16_t, 4))(0x972AL)), 0UL)), ((VECTOR(uint16_t, 16))(0xFF22L))))).hi + ((VECTOR(uint16_t, 8))(0xB58EL)))))))).odd))).wxxxxyzyxyyxwxxx, ((VECTOR(uint16_t, 16))(0x92F8L))))).s8a & ((VECTOR(uint16_t, 2))(0x64D9L))))), 0x24B4L)).odd, ((VECTOR(uint16_t, 2))(0xBAD3L))))).xxxxxyxx)))))) + ((VECTOR(uint16_t, 8))(3UL))))).s60 + ((VECTOR(uint16_t, 2))(65529UL))))), 0xC7BFL, 65534UL)).ywxzxxxyxzxxywxw, ((VECTOR(uint16_t, 16))(1UL)), ((VECTOR(uint16_t, 16))(0xD7FCL))))), ((VECTOR(uint16_t, 16))(65535UL))))).hi))), ((VECTOR(uint16_t, 8))(65535UL))))).s15, ((VECTOR(uint16_t, 2))(4UL)))))))), 0x2EDE97DFL, 0x6416DFC5L)).w, (*p_1051->g_290), (-2L), 0x010D599FL)).wwzwwxzxwzwyyywx))).s91a9 && ((VECTOR(int32_t, 4))(0x7FED99A8L))))).x;
                    l_561 |= (1L && ((VECTOR(int16_t, 2))(l_560.xw)).odd);
                }
                (*p_1051->g_290) &= (l_562 = l_520.s1);
                if (l_563[1][3][5])
                    break;
                if (p_28)
                    continue;
            }
            l_421 = p_27;
            l_417 = (safe_rshift_func_int8_t_s_s(p_1051->g_532.s6, (p_1051->g_343.s1 = (p_28 = (p_1051->g_345.y >= (safe_add_func_int64_t_s_s((*p_1051->g_449), (safe_div_func_uint16_t_u_u(((((VECTOR(int8_t, 2))((-1L), 0x7BL)).odd < ((l_379.sc | (safe_rshift_func_int8_t_s_s(p_1051->g_458.f2, ((p_1051->g_469 = (void*)0) != &p_1051->g_112)))) , (safe_rshift_func_int16_t_s_s((((l_574[3][0] | (((*l_375) != (void*)0) , 7L)) & p_28) || p_27), p_28)))) >= l_423), l_490.s7)))))))));
        }
        for (p_1051->g_112 = (-22); (p_1051->g_112 <= 0); ++p_1051->g_112)
        { /* block id: 204 */
            int32_t *l_578[9][5][5] = {{{&p_1051->g_11,&l_413,&p_1051->g_11,&l_411,(void*)0},{&p_1051->g_11,&l_413,&p_1051->g_11,&l_411,(void*)0},{&p_1051->g_11,&l_413,&p_1051->g_11,&l_411,(void*)0},{&p_1051->g_11,&l_413,&p_1051->g_11,&l_411,(void*)0},{&p_1051->g_11,&l_413,&p_1051->g_11,&l_411,(void*)0}},{{&p_1051->g_11,&l_413,&p_1051->g_11,&l_411,(void*)0},{&p_1051->g_11,&l_413,&p_1051->g_11,&l_411,(void*)0},{&p_1051->g_11,&l_413,&p_1051->g_11,&l_411,(void*)0},{&p_1051->g_11,&l_413,&p_1051->g_11,&l_411,(void*)0},{&p_1051->g_11,&l_413,&p_1051->g_11,&l_411,(void*)0}},{{&p_1051->g_11,&l_413,&p_1051->g_11,&l_411,(void*)0},{&p_1051->g_11,&l_413,&p_1051->g_11,&l_411,(void*)0},{&p_1051->g_11,&l_413,&p_1051->g_11,&l_411,(void*)0},{&p_1051->g_11,&l_413,&p_1051->g_11,&l_411,(void*)0},{&p_1051->g_11,&l_413,&p_1051->g_11,&l_411,(void*)0}},{{&p_1051->g_11,&l_413,&p_1051->g_11,&l_411,(void*)0},{&p_1051->g_11,&l_413,&p_1051->g_11,&l_411,(void*)0},{&p_1051->g_11,&l_413,&p_1051->g_11,&l_411,(void*)0},{&p_1051->g_11,&l_413,&p_1051->g_11,&l_411,(void*)0},{&p_1051->g_11,&l_413,&p_1051->g_11,&l_411,(void*)0}},{{&p_1051->g_11,&l_413,&p_1051->g_11,&l_411,(void*)0},{&p_1051->g_11,&l_413,&p_1051->g_11,&l_411,(void*)0},{&p_1051->g_11,&l_413,&p_1051->g_11,&l_411,(void*)0},{&p_1051->g_11,&l_413,&p_1051->g_11,&l_411,(void*)0},{&p_1051->g_11,&l_413,&p_1051->g_11,&l_411,(void*)0}},{{&p_1051->g_11,&l_413,&p_1051->g_11,&l_411,(void*)0},{&p_1051->g_11,&l_413,&p_1051->g_11,&l_411,(void*)0},{&p_1051->g_11,&l_413,&p_1051->g_11,&l_411,(void*)0},{&p_1051->g_11,&l_413,&p_1051->g_11,&l_411,(void*)0},{&p_1051->g_11,&l_413,&p_1051->g_11,&l_411,(void*)0}},{{&p_1051->g_11,&l_413,&p_1051->g_11,&l_411,(void*)0},{&p_1051->g_11,&l_413,&p_1051->g_11,&l_411,(void*)0},{&p_1051->g_11,&l_413,&p_1051->g_11,&l_411,(void*)0},{&p_1051->g_11,&l_413,&p_1051->g_11,&l_411,(void*)0},{&p_1051->g_11,&l_413,&p_1051->g_11,&l_411,(void*)0}},{{&p_1051->g_11,&l_413,&p_1051->g_11,&l_411,(void*)0},{&p_1051->g_11,&l_413,&p_1051->g_11,&l_411,(void*)0},{&p_1051->g_11,&l_413,&p_1051->g_11,&l_411,(void*)0},{&p_1051->g_11,&l_413,&p_1051->g_11,&l_411,(void*)0},{&p_1051->g_11,&l_413,&p_1051->g_11,&l_411,(void*)0}},{{&p_1051->g_11,&l_413,&p_1051->g_11,&l_411,(void*)0},{&p_1051->g_11,&l_413,&p_1051->g_11,&l_411,(void*)0},{&p_1051->g_11,&l_413,&p_1051->g_11,&l_411,(void*)0},{&p_1051->g_11,&l_413,&p_1051->g_11,&l_411,(void*)0},{&p_1051->g_11,&l_413,&p_1051->g_11,&l_411,(void*)0}}};
            int i, j, k;
            (*p_1051->g_153) ^= (0x12F3771AL || (l_577 = p_27));
            return l_579;
        }
    }
    return l_580[2];
}


/* ------------------------------------------ */
/* 
 * reads : p_1051->g_41
 * writes: p_1051->g_42
 */
VECTOR(int32_t, 8)  func_35(int32_t ** p_36, uint8_t  p_37, int64_t  p_38, uint8_t  p_39, int8_t  p_40, struct S2 * p_1051)
{ /* block id: 122 */
    VECTOR(int32_t, 8) l_296 = (VECTOR(int32_t, 8))((-4L), (VECTOR(int32_t, 4))((-4L), (VECTOR(int32_t, 2))((-4L), 6L), 6L), 6L, (-4L), 6L);
    int i;
    (*p_1051->g_41) = (void*)0;
    return l_296.s54144404;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t ** func_45(int32_t  p_46, uint32_t  p_47, int32_t * p_48, int32_t  p_49, struct S2 * p_1051)
{ /* block id: 118 */
    int32_t **l_293 = &p_1051->g_42;
    return l_293;
}


/* ------------------------------------------ */
/* 
 * reads : p_1051->g_118 p_1051->g_119 p_1051->g_8 p_1051->g_11 p_1051->g_123 p_1051->g_93 p_1051->g_156.f5 p_1051->g_176.f3 p_1051->g_67 p_1051->g_153 p_1051->g_82 p_1051->g_42 p_1051->g_176.f2 p_1051->g_156.f1 p_1051->g_156.f3 p_1051->g_267 p_1051->g_176.f1 p_1051->g_290 p_1051->g_291
 * writes: p_1051->g_8 p_1051->g_42 p_1051->g_93 p_1051->g_156.f1 p_1051->g_68 p_1051->g_115 p_1051->g_176.f1 p_1051->g_156
 */
VECTOR(uint32_t, 2)  func_50(int32_t  p_51, uint32_t  p_52, int16_t  p_53, struct S2 * p_1051)
{ /* block id: 33 */
    VECTOR(uint16_t, 2) l_133 = (VECTOR(uint16_t, 2))(65535UL, 7UL);
    uint16_t *l_198 = (void*)0;
    VECTOR(uint64_t, 16) l_219 = (VECTOR(uint64_t, 16))(0xE41467E5DD029318L, (VECTOR(uint64_t, 4))(0xE41467E5DD029318L, (VECTOR(uint64_t, 2))(0xE41467E5DD029318L, 2UL), 2UL), 2UL, 0xE41467E5DD029318L, 2UL, (VECTOR(uint64_t, 2))(0xE41467E5DD029318L, 2UL), (VECTOR(uint64_t, 2))(0xE41467E5DD029318L, 2UL), 0xE41467E5DD029318L, 2UL, 0xE41467E5DD029318L, 2UL);
    int32_t l_225 = (-1L);
    int64_t l_233 = 0x5E5F06EB511B20A9L;
    int32_t l_250 = (-5L);
    int32_t l_251 = 0x1B445DA4L;
    int32_t l_252 = 0x099B40CFL;
    int32_t l_253 = (-1L);
    int32_t l_254 = 1L;
    int32_t l_255 = 0x09D0D329L;
    int32_t *l_260 = &l_252;
    VECTOR(uint32_t, 8) l_274 = (VECTOR(uint32_t, 8))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 6UL), 6UL), 6UL, 1UL, 6UL);
    int16_t ***l_275 = (void*)0;
    int16_t ****l_276 = &l_275;
    int16_t ****l_277 = (void*)0;
    int16_t ***l_278[4][3][10] = {{{(void*)0,&p_1051->g_187[2][2][4],&p_1051->g_187[4][3][5],(void*)0,&p_1051->g_187[0][3][5],&p_1051->g_187[4][3][5],(void*)0,&p_1051->g_187[4][3][5],&p_1051->g_187[3][1][5],&p_1051->g_187[4][3][5]},{(void*)0,&p_1051->g_187[2][2][4],&p_1051->g_187[4][3][5],(void*)0,&p_1051->g_187[0][3][5],&p_1051->g_187[4][3][5],(void*)0,&p_1051->g_187[4][3][5],&p_1051->g_187[3][1][5],&p_1051->g_187[4][3][5]},{(void*)0,&p_1051->g_187[2][2][4],&p_1051->g_187[4][3][5],(void*)0,&p_1051->g_187[0][3][5],&p_1051->g_187[4][3][5],(void*)0,&p_1051->g_187[4][3][5],&p_1051->g_187[3][1][5],&p_1051->g_187[4][3][5]}},{{(void*)0,&p_1051->g_187[2][2][4],&p_1051->g_187[4][3][5],(void*)0,&p_1051->g_187[0][3][5],&p_1051->g_187[4][3][5],(void*)0,&p_1051->g_187[4][3][5],&p_1051->g_187[3][1][5],&p_1051->g_187[4][3][5]},{(void*)0,&p_1051->g_187[2][2][4],&p_1051->g_187[4][3][5],(void*)0,&p_1051->g_187[0][3][5],&p_1051->g_187[4][3][5],(void*)0,&p_1051->g_187[4][3][5],&p_1051->g_187[3][1][5],&p_1051->g_187[4][3][5]},{(void*)0,&p_1051->g_187[2][2][4],&p_1051->g_187[4][3][5],(void*)0,&p_1051->g_187[0][3][5],&p_1051->g_187[4][3][5],(void*)0,&p_1051->g_187[4][3][5],&p_1051->g_187[3][1][5],&p_1051->g_187[4][3][5]}},{{(void*)0,&p_1051->g_187[2][2][4],&p_1051->g_187[4][3][5],(void*)0,&p_1051->g_187[0][3][5],&p_1051->g_187[4][3][5],(void*)0,&p_1051->g_187[4][3][5],&p_1051->g_187[3][1][5],&p_1051->g_187[4][3][5]},{(void*)0,&p_1051->g_187[2][2][4],&p_1051->g_187[4][3][5],(void*)0,&p_1051->g_187[0][3][5],&p_1051->g_187[4][3][5],(void*)0,&p_1051->g_187[4][3][5],&p_1051->g_187[3][1][5],&p_1051->g_187[4][3][5]},{(void*)0,&p_1051->g_187[2][2][4],&p_1051->g_187[4][3][5],(void*)0,&p_1051->g_187[0][3][5],&p_1051->g_187[4][3][5],(void*)0,&p_1051->g_187[4][3][5],&p_1051->g_187[3][1][5],&p_1051->g_187[4][3][5]}},{{(void*)0,&p_1051->g_187[2][2][4],&p_1051->g_187[4][3][5],(void*)0,&p_1051->g_187[0][3][5],&p_1051->g_187[4][3][5],(void*)0,&p_1051->g_187[4][3][5],&p_1051->g_187[3][1][5],&p_1051->g_187[4][3][5]},{(void*)0,&p_1051->g_187[2][2][4],&p_1051->g_187[4][3][5],(void*)0,&p_1051->g_187[0][3][5],&p_1051->g_187[4][3][5],(void*)0,&p_1051->g_187[4][3][5],&p_1051->g_187[3][1][5],&p_1051->g_187[4][3][5]},{(void*)0,&p_1051->g_187[2][2][4],&p_1051->g_187[4][3][5],(void*)0,&p_1051->g_187[0][3][5],&p_1051->g_187[4][3][5],(void*)0,&p_1051->g_187[4][3][5],&p_1051->g_187[3][1][5],&p_1051->g_187[4][3][5]}}};
    VECTOR(uint32_t, 8) l_292 = (VECTOR(uint32_t, 8))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 1UL), 1UL), 1UL, 4294967295UL, 1UL);
    int i, j, k;
    if (((VECTOR(int32_t, 2))((((VECTOR(int32_t, 16))(p_1051->g_118.s7e664dd2f3d6cdb7)).s4e && ((VECTOR(int32_t, 16))(p_1051->g_119.s3673243312257067)).se7))).even)
    { /* block id: 34 */
        int32_t l_122 = (-9L);
        VECTOR(uint8_t, 16) l_130 = (VECTOR(uint8_t, 16))(0x14L, (VECTOR(uint8_t, 4))(0x14L, (VECTOR(uint8_t, 2))(0x14L, 0xBEL), 0xBEL), 0xBEL, 0x14L, 0xBEL, (VECTOR(uint8_t, 2))(0x14L, 0xBEL), (VECTOR(uint8_t, 2))(0x14L, 0xBEL), 0x14L, 0xBEL, 0x14L, 0xBEL);
        struct S1 *l_160 = (void*)0;
        uint8_t l_183 = 1UL;
        struct S0 *l_195 = &p_1051->g_176;
        struct S0 **l_194 = &l_195;
        struct S0 *l_197 = (void*)0;
        struct S0 **l_196 = &l_197;
        int16_t *l_199 = &p_1051->g_149;
        VECTOR(uint32_t, 8) l_217 = (VECTOR(uint32_t, 8))(0x939D09D1L, (VECTOR(uint32_t, 4))(0x939D09D1L, (VECTOR(uint32_t, 2))(0x939D09D1L, 0UL), 0UL), 0UL, 0x939D09D1L, 0UL);
        int64_t l_224 = 6L;
        int32_t l_229 = 0x04143BCCL;
        int32_t l_249[4] = {(-9L),(-9L),(-9L),(-9L)};
        uint32_t l_256[3];
        int i;
        for (i = 0; i < 3; i++)
            l_256[i] = 4294967291UL;
        for (p_1051->g_8 = 27; (p_1051->g_8 < (-27)); --p_1051->g_8)
        { /* block id: 37 */
            int16_t l_152[3];
            int32_t l_181 = (-1L);
            int16_t *l_185 = &l_152[1];
            int16_t **l_184 = &l_185;
            VECTOR(uint32_t, 4) l_189 = (VECTOR(uint32_t, 4))(0xDD1DBFA4L, (VECTOR(uint32_t, 2))(0xDD1DBFA4L, 4294967291UL), 4294967291UL);
            int i;
            for (i = 0; i < 3; i++)
                l_152[i] = 1L;
            l_122 |= (FAKE_DIVERGE(p_1051->global_2_offset, get_global_id(2), 10) != p_1051->g_11);
            (*p_1051->g_123) = &l_122;
            for (p_1051->g_93 = 0; (p_1051->g_93 <= 39); p_1051->g_93++)
            { /* block id: 42 */
                struct S0 *l_155 = &p_1051->g_156;
                struct S0 **l_157 = &l_155;
                (1 + 1);
            }
            return l_189.zw;
        }
        if ((((((((0x47L != l_130.s8) & ((((l_133.y && ((((p_1051->g_156.f5 > p_1051->g_8) , ((p_1051->g_176.f3 , (((safe_rshift_func_uint8_t_u_s((safe_mul_func_uint8_t_u_u(((((*l_196) = ((*l_194) = &p_1051->g_176)) != ((!l_133.x) , &p_1051->g_156)) != p_1051->g_8), p_1051->g_67)), l_133.y)) , &p_1051->g_93) == l_198)) , l_198)) == l_199) < FAKE_DIVERGE(p_1051->group_1_offset, get_group_id(1), 10))) <= 0x17463E53L) | l_122) != l_133.y)) | p_53) | (*p_1051->g_153)) && 0x6EL) >= 0x57AA1D18L) , (-3L)))
        { /* block id: 71 */
            uint16_t l_202[10][5] = {{1UL,0x133EL,0x133EL,1UL,0xEAEDL},{1UL,0x133EL,0x133EL,1UL,0xEAEDL},{1UL,0x133EL,0x133EL,1UL,0xEAEDL},{1UL,0x133EL,0x133EL,1UL,0xEAEDL},{1UL,0x133EL,0x133EL,1UL,0xEAEDL},{1UL,0x133EL,0x133EL,1UL,0xEAEDL},{1UL,0x133EL,0x133EL,1UL,0xEAEDL},{1UL,0x133EL,0x133EL,1UL,0xEAEDL},{1UL,0x133EL,0x133EL,1UL,0xEAEDL},{1UL,0x133EL,0x133EL,1UL,0xEAEDL}};
            int32_t **l_210 = &p_1051->g_42;
            int32_t ***l_209 = &l_210;
            VECTOR(uint32_t, 2) l_218 = (VECTOR(uint32_t, 2))(0x2B8B9856L, 1UL);
            int32_t l_230 = (-1L);
            int32_t l_231 = 0x4FCC2DBCL;
            int32_t l_232[1];
            uint32_t l_234[3][2][9] = {{{4294967286UL,0xD860E4E3L,0xF1C5D373L,0x3D53B091L,0xF1C5D373L,0xD860E4E3L,4294967286UL,4294967291UL,0x8A6C8DEDL},{4294967286UL,0xD860E4E3L,0xF1C5D373L,0x3D53B091L,0xF1C5D373L,0xD860E4E3L,4294967286UL,4294967291UL,0x8A6C8DEDL}},{{4294967286UL,0xD860E4E3L,0xF1C5D373L,0x3D53B091L,0xF1C5D373L,0xD860E4E3L,4294967286UL,4294967291UL,0x8A6C8DEDL},{4294967286UL,0xD860E4E3L,0xF1C5D373L,0x3D53B091L,0xF1C5D373L,0xD860E4E3L,4294967286UL,4294967291UL,0x8A6C8DEDL}},{{4294967286UL,0xD860E4E3L,0xF1C5D373L,0x3D53B091L,0xF1C5D373L,0xD860E4E3L,4294967286UL,4294967291UL,0x8A6C8DEDL},{4294967286UL,0xD860E4E3L,0xF1C5D373L,0x3D53B091L,0xF1C5D373L,0xD860E4E3L,4294967286UL,4294967291UL,0x8A6C8DEDL}}};
            struct S1 l_238 = {0xF25DA6E1C3217EF7L};
            struct S1 *l_239 = &l_238;
            int32_t *l_240 = &l_231;
            int32_t *l_241 = (void*)0;
            int32_t *l_242 = &l_122;
            int32_t *l_243 = &l_231;
            int32_t *l_244 = (void*)0;
            int32_t *l_245 = &p_1051->g_82;
            int32_t *l_246 = &l_122;
            int32_t *l_247 = &l_225;
            int32_t *l_248[1][8][5] = {{{(void*)0,(void*)0,&p_1051->g_115,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1051->g_115,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1051->g_115,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1051->g_115,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1051->g_115,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1051->g_115,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1051->g_115,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1051->g_115,(void*)0,(void*)0}}};
            int i, j, k;
            for (i = 0; i < 1; i++)
                l_232[i] = 0x5A230B5BL;
            l_225 |= (safe_add_func_int8_t_s_s(l_202[3][4], (safe_lshift_func_int8_t_s_u((l_133.x , (((safe_mod_func_int16_t_s_s((safe_lshift_func_int16_t_s_u(((void*)0 != l_209), (((safe_lshift_func_int8_t_s_u(0L, ((**p_1051->g_123) , 0xD0L))) ^ (((VECTOR(uint32_t, 16))((((VECTOR(uint32_t, 2))(0x741E85B1L, 0x714A00EAL)).xxxyxxxyyxxyxyyx + ((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 8))(l_217.s17724576)) >> ((VECTOR(uint32_t, 2))(l_218.xx)).yyyyxyxx))).s7712101513575466))).s1 , 6UL)) & (l_122 ^= (((VECTOR(uint64_t, 16))(add_sat(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(min(((VECTOR(uint64_t, 4))(mul_hi(((VECTOR(uint64_t, 2))(mul_hi(((VECTOR(uint64_t, 4))(max(((VECTOR(uint64_t, 16))(l_219.s19d5596d2b076ebf)).s33b0, (uint64_t)(safe_lshift_func_int8_t_s_s(((VECTOR(int8_t, 4))(0x19L, 0x2DL, 2L, 0x7CL)).w, (safe_rshift_func_int16_t_s_u((***l_209), p_1051->g_176.f2))))))).odd, ((VECTOR(uint64_t, 2))(0x9042488E89D45B81L))))).xyxy, ((VECTOR(uint64_t, 4))(0x90C5504132805034L))))).odd, (uint64_t)FAKE_DIVERGE(p_1051->local_2_offset, get_local_id(2), 10)))), 18446744073709551615UL, 9UL)).yywwzzywxwyxyxyz, ((VECTOR(uint64_t, 16))(0xBCE9E38342FEDE26L))))).s1 != p_51))))), 0xD592L)) && l_224) >= 1UL)), 6))));
            for (p_1051->g_93 = 2; (p_1051->g_93 < 45); ++p_1051->g_93)
            { /* block id: 76 */
                int32_t *l_228[8] = {&l_225,&l_122,&l_225,&l_225,&l_122,&l_225,&l_225,&l_122};
                VECTOR(uint32_t, 4) l_237 = (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 4294967292UL), 4294967292UL);
                int i;
                l_234[1][0][1]--;
                return l_237.zw;
            }
            (*l_239) = l_238;
            --l_256[0];
        }
        else
        { /* block id: 82 */
            uint32_t l_266 = 8UL;
            struct S1 *l_268 = &p_1051->g_74;
            l_260 = (*p_1051->g_123);
            for (p_1051->g_156.f1 = 0; (p_1051->g_156.f1 <= 39); ++p_1051->g_156.f1)
            { /* block id: 86 */
                uint8_t *l_265 = &p_1051->g_68;
                struct S1 **l_269 = &l_160;
                struct S1 **l_270 = &l_268;
                (*p_1051->g_267) = (((safe_mod_func_uint8_t_u_u(((*l_265) = p_1051->g_156.f3), 0x8EL)) != 255UL) , l_266);
                (*l_270) = ((*l_269) = l_268);
            }
        }
    }
    else
    { /* block id: 93 */
        (*l_260) = 4L;
        for (p_1051->g_176.f1 = 0; (p_1051->g_176.f1 != 48); p_1051->g_176.f1++)
        { /* block id: 97 */
            uint32_t l_273 = 1UL;
            (*l_260) = p_51;
            if (l_273)
                continue;
        }
        return l_274.s76;
    }
    if ((+((GROUP_DIVERGE(1, 1) , ((*l_276) = l_275)) != (l_278[2][2][8] = (void*)0))))
    { /* block id: 105 */
        int32_t *l_288 = &p_1051->g_11;
        for (l_251 = 0; (l_251 > (-25)); l_251 = safe_sub_func_uint16_t_u_u(l_251, 9))
        { /* block id: 108 */
            uint64_t l_283 = 18446744073709551615UL;
            int8_t l_284 = (-1L);
            VECTOR(int32_t, 8) l_285 = (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), (-2L)), (-2L)), (-2L), (-1L), (-2L));
            int32_t l_286 = 1L;
            int32_t l_287 = 0x078F4729L;
            int32_t *l_289 = &l_225;
            int i;
            (*l_289) |= (safe_add_func_int64_t_s_s(l_283, ((l_287 &= (l_286 ^= ((l_284 , ((VECTOR(int32_t, 8))(l_285.s02362457)).s6) , (*l_260)))) >= (l_288 != l_289))));
        }
    }
    else
    { /* block id: 113 */
        (*p_1051->g_290) = (*l_260);
        p_1051->g_156 = p_1051->g_291;
    }
    return l_292.s26;
}


/* ------------------------------------------ */
/* 
 * reads : p_1051->g_82 p_1051->g_42 p_1051->g_11 p_1051->g_74.f0 p_1051->g_112 p_1051->g_67 p_1051->g_68
 * writes: p_1051->g_82 p_1051->g_74.f0 p_1051->g_112 p_1051->g_115
 */
int16_t  func_54(int64_t  p_55, struct S2 * p_1051)
{ /* block id: 19 */
    int32_t *l_80 = (void*)0;
    int32_t *l_81 = &p_1051->g_82;
    VECTOR(uint32_t, 2) l_97 = (VECTOR(uint32_t, 2))(0x4B85C557L, 4294967295UL);
    VECTOR(int16_t, 16) l_102 = (VECTOR(int16_t, 16))(7L, (VECTOR(int16_t, 4))(7L, (VECTOR(int16_t, 2))(7L, 0L), 0L), 0L, 7L, 0L, (VECTOR(int16_t, 2))(7L, 0L), (VECTOR(int16_t, 2))(7L, 0L), 7L, 0L, 7L, 0L);
    int i;
    (*l_81) ^= 0x6A45D312L;
    (*l_81) = (*p_1051->g_42);
    for (p_1051->g_74.f0 = 0; (p_1051->g_74.f0 > 20); p_1051->g_74.f0 = safe_add_func_uint8_t_u_u(p_1051->g_74.f0, 1))
    { /* block id: 24 */
        struct S1 l_85 = {18446744073709551611UL};
        uint16_t *l_92[10] = {&p_1051->g_93,&p_1051->g_93,&p_1051->g_93,&p_1051->g_93,&p_1051->g_93,&p_1051->g_93,&p_1051->g_93,&p_1051->g_93,&p_1051->g_93,&p_1051->g_93};
        int32_t l_94 = 0x71C75621L;
        int8_t *l_111[4][8] = {{&p_1051->g_112,&p_1051->g_112,&p_1051->g_112,&p_1051->g_112,&p_1051->g_112,&p_1051->g_112,&p_1051->g_112,&p_1051->g_112},{&p_1051->g_112,&p_1051->g_112,&p_1051->g_112,&p_1051->g_112,&p_1051->g_112,&p_1051->g_112,&p_1051->g_112,&p_1051->g_112},{&p_1051->g_112,&p_1051->g_112,&p_1051->g_112,&p_1051->g_112,&p_1051->g_112,&p_1051->g_112,&p_1051->g_112,&p_1051->g_112},{&p_1051->g_112,&p_1051->g_112,&p_1051->g_112,&p_1051->g_112,&p_1051->g_112,&p_1051->g_112,&p_1051->g_112,&p_1051->g_112}};
        int32_t **l_113 = &p_1051->g_42;
        int32_t *l_114 = &p_1051->g_115;
        int32_t l_116 = 0x05DBDBD1L;
        int i, j;
        l_85 = l_85;
        l_116 = (safe_sub_func_int32_t_s_s(0x4AF44556L, ((*l_114) = ((VECTOR(int32_t, 4))((safe_mul_func_int16_t_s_s(((((((l_94 ^= p_55) != ((((*l_81) = ((((VECTOR(uint32_t, 2))(rhadd(((VECTOR(uint32_t, 16))(0x85EFCBABL, 4294967294UL, 4294967295UL, 4294967288UL, 9UL, ((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 2))(0xEDB7DE59L, 0x29F9B9B7L)).xyxy + ((VECTOR(uint32_t, 2))(4UL, 0xC96F0977L)).yxyy))), 0xB33E7469L, ((VECTOR(uint32_t, 2))(sub_sat(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(l_97.yy)), (safe_div_func_int64_t_s_s((safe_div_func_int16_t_s_s(((VECTOR(int16_t, 4))(l_102.s4bba)).x, (p_1051->g_82 | (safe_lshift_func_uint8_t_u_u(p_55, (&p_1051->g_74 == &l_85)))))), (safe_div_func_int32_t_s_s((((p_1051->g_112 &= ((p_55 >= ((safe_rshift_func_uint16_t_u_u((l_85.f0 ^ l_85.f0), 9)) == 254UL)) || p_55)) , (void*)0) == l_113), p_55)))), p_55, 0UL, 0xAE3508C9L, 0x5F53E4EBL, 0xA122FC4CL)).s62, ((VECTOR(uint32_t, 2))(4294967295UL))))), (*l_81), ((VECTOR(uint32_t, 2))(4294967295UL)), 4294967295UL)).saa, ((VECTOR(uint32_t, 2))(4294967295UL))))).even <= p_55) ^ (**l_113))) <= GROUP_DIVERGE(2, 1)) >= p_55)) & p_1051->g_67) | 0UL) < 0UL) < p_55), p_1051->g_68)), ((VECTOR(int32_t, 2))(0x731B4BD6L)), 0x620FE39EL)).w)));
    }
    return p_55;
}


/* ------------------------------------------ */
/* 
 * reads : p_1051->g_68 p_1051->g_73
 * writes: p_1051->g_42 p_1051->g_68
 */
uint32_t  func_56(int64_t  p_57, int32_t  p_58, int32_t  p_59, int32_t ** p_60, int32_t ** p_61, struct S2 * p_1051)
{ /* block id: 8 */
    int32_t *l_66[1][7][2] = {{{&p_1051->g_11,&p_1051->g_11},{&p_1051->g_11,&p_1051->g_11},{&p_1051->g_11,&p_1051->g_11},{&p_1051->g_11,&p_1051->g_11},{&p_1051->g_11,&p_1051->g_11},{&p_1051->g_11,&p_1051->g_11},{&p_1051->g_11,&p_1051->g_11}}};
    int32_t l_76 = 1L;
    int i, j, k;
    (*p_61) = l_66[0][0][1];
    ++p_1051->g_68;
    for (p_58 = (-15); (p_58 == (-17)); --p_58)
    { /* block id: 13 */
        struct S1 * volatile l_75[5][3][4] = {{{&p_1051->g_74,&p_1051->g_74,(void*)0,&p_1051->g_74},{&p_1051->g_74,&p_1051->g_74,(void*)0,&p_1051->g_74},{&p_1051->g_74,&p_1051->g_74,(void*)0,&p_1051->g_74}},{{&p_1051->g_74,&p_1051->g_74,(void*)0,&p_1051->g_74},{&p_1051->g_74,&p_1051->g_74,(void*)0,&p_1051->g_74},{&p_1051->g_74,&p_1051->g_74,(void*)0,&p_1051->g_74}},{{&p_1051->g_74,&p_1051->g_74,(void*)0,&p_1051->g_74},{&p_1051->g_74,&p_1051->g_74,(void*)0,&p_1051->g_74},{&p_1051->g_74,&p_1051->g_74,(void*)0,&p_1051->g_74}},{{&p_1051->g_74,&p_1051->g_74,(void*)0,&p_1051->g_74},{&p_1051->g_74,&p_1051->g_74,(void*)0,&p_1051->g_74},{&p_1051->g_74,&p_1051->g_74,(void*)0,&p_1051->g_74}},{{&p_1051->g_74,&p_1051->g_74,(void*)0,&p_1051->g_74},{&p_1051->g_74,&p_1051->g_74,(void*)0,&p_1051->g_74},{&p_1051->g_74,&p_1051->g_74,(void*)0,&p_1051->g_74}}};
        int i, j, k;
        l_75[3][0][3] = p_1051->g_73;
        return p_58;
    }
    return l_76;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S2 c_1052;
    struct S2* p_1051 = &c_1052;
    struct S2 c_1053 = {
        0x45559507L, // p_1051->g_8
        (-1L), // p_1051->g_11
        (void*)0, // p_1051->g_25
        &p_1051->g_11, // p_1051->g_42
        &p_1051->g_42, // p_1051->g_41
        0x4348L, // p_1051->g_67
        0x84L, // p_1051->g_68
        {1UL}, // p_1051->g_74
        &p_1051->g_74, // p_1051->g_73
        0xB030F3E7L, // p_1051->g_78
        0x206E71D5L, // p_1051->g_82
        0xF777L, // p_1051->g_93
        0x6FL, // p_1051->g_112
        1L, // p_1051->g_115
        (VECTOR(int32_t, 16))((-2L), (VECTOR(int32_t, 4))((-2L), (VECTOR(int32_t, 2))((-2L), 0x1B981B60L), 0x1B981B60L), 0x1B981B60L, (-2L), 0x1B981B60L, (VECTOR(int32_t, 2))((-2L), 0x1B981B60L), (VECTOR(int32_t, 2))((-2L), 0x1B981B60L), (-2L), 0x1B981B60L, (-2L), 0x1B981B60L), // p_1051->g_118
        (VECTOR(int32_t, 8))((-6L), (VECTOR(int32_t, 4))((-6L), (VECTOR(int32_t, 2))((-6L), (-5L)), (-5L)), (-5L), (-6L), (-5L)), // p_1051->g_119
        &p_1051->g_42, // p_1051->g_123
        9L, // p_1051->g_149
        (-1L), // p_1051->g_151
        &p_1051->g_82, // p_1051->g_153
        {0x2A71EAA7743CD8D7L,0xE106ED31L,0x0CC641CF9FCAAD6EL,0x5D9E1A7EL,18446744073709551614UL,255UL}, // p_1051->g_156
        {0x3C767B023839C749L,4294967295UL,0x418A6757B94B598FL,1L,1UL,0xA6L}, // p_1051->g_176
        &p_1051->g_149, // p_1051->g_188
        {{{(void*)0,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188},{(void*)0,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188},{(void*)0,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188},{(void*)0,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188},{(void*)0,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188}},{{(void*)0,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188},{(void*)0,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188},{(void*)0,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188},{(void*)0,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188},{(void*)0,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188}},{{(void*)0,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188},{(void*)0,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188},{(void*)0,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188},{(void*)0,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188},{(void*)0,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188}},{{(void*)0,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188},{(void*)0,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188},{(void*)0,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188},{(void*)0,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188},{(void*)0,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188}},{{(void*)0,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188},{(void*)0,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188},{(void*)0,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188},{(void*)0,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188},{(void*)0,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188}},{{(void*)0,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188},{(void*)0,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188},{(void*)0,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188},{(void*)0,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188},{(void*)0,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188,&p_1051->g_188}}}, // p_1051->g_187
        &p_1051->g_187[4][3][5], // p_1051->g_186
        {{&p_1051->g_42,&p_1051->g_42,&p_1051->g_42,&p_1051->g_42},{&p_1051->g_42,&p_1051->g_42,&p_1051->g_42,&p_1051->g_42}}, // p_1051->g_259
        &p_1051->g_115, // p_1051->g_267
        &p_1051->g_115, // p_1051->g_290
        {0L,4294967295UL,1L,1L,0xAE78DEA3D898C33FL,9UL}, // p_1051->g_291
        0x5ED22530L, // p_1051->g_299
        (VECTOR(int16_t, 16))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), (-1L)), (-1L)), (-1L), (-1L), (-1L), (VECTOR(int16_t, 2))((-1L), (-1L)), (VECTOR(int16_t, 2))((-1L), (-1L)), (-1L), (-1L), (-1L), (-1L)), // p_1051->g_320
        (VECTOR(int8_t, 16))(0x53L, (VECTOR(int8_t, 4))(0x53L, (VECTOR(int8_t, 2))(0x53L, 0x06L), 0x06L), 0x06L, 0x53L, 0x06L, (VECTOR(int8_t, 2))(0x53L, 0x06L), (VECTOR(int8_t, 2))(0x53L, 0x06L), 0x53L, 0x06L, 0x53L, 0x06L), // p_1051->g_336
        (VECTOR(int8_t, 8))(0x34L, (VECTOR(int8_t, 4))(0x34L, (VECTOR(int8_t, 2))(0x34L, 1L), 1L), 1L, 0x34L, 1L), // p_1051->g_343
        (VECTOR(int8_t, 2))(0x4CL, 0x4FL), // p_1051->g_344
        (VECTOR(int64_t, 2))(6L, (-2L)), // p_1051->g_345
        (VECTOR(int64_t, 16))(6L, (VECTOR(int64_t, 4))(6L, (VECTOR(int64_t, 2))(6L, 0L), 0L), 0L, 6L, 0L, (VECTOR(int64_t, 2))(6L, 0L), (VECTOR(int64_t, 2))(6L, 0L), 6L, 0L, 6L, 0L), // p_1051->g_347
        {-3L,0xF2C12D07L,3L,-1L,0x11309857359EE004L,246UL}, // p_1051->g_373
        &p_1051->g_373, // p_1051->g_372
        {0x72824C9520C32995L,4294967294UL,0L,0x17D1D2AAL,1UL,0x9DL}, // p_1051->g_377
        (VECTOR(int8_t, 2))(2L, 0x55L), // p_1051->g_378
        (VECTOR(uint32_t, 16))(4294967287UL, (VECTOR(uint32_t, 4))(4294967287UL, (VECTOR(uint32_t, 2))(4294967287UL, 4294967295UL), 4294967295UL), 4294967295UL, 4294967287UL, 4294967295UL, (VECTOR(uint32_t, 2))(4294967287UL, 4294967295UL), (VECTOR(uint32_t, 2))(4294967287UL, 4294967295UL), 4294967287UL, 4294967295UL, 4294967287UL, 4294967295UL), // p_1051->g_381
        &p_1051->g_291.f0, // p_1051->g_449
        {0x01728E7C021B58F3L,4294967290UL,0x737115AAF9614F80L,0x2628A4CDL,0UL,246UL}, // p_1051->g_458
        (void*)0, // p_1051->g_469
        &p_1051->g_372, // p_1051->g_481
        (VECTOR(int16_t, 8))(0x3A11L, (VECTOR(int16_t, 4))(0x3A11L, (VECTOR(int16_t, 2))(0x3A11L, 0x3286L), 0x3286L), 0x3286L, 0x3A11L, 0x3286L), // p_1051->g_499
        (VECTOR(uint16_t, 8))(8UL, (VECTOR(uint16_t, 4))(8UL, (VECTOR(uint16_t, 2))(8UL, 0x5936L), 0x5936L), 0x5936L, 8UL, 0x5936L), // p_1051->g_502
        (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 1UL), 1UL), // p_1051->g_503
        (VECTOR(uint16_t, 8))(0x32FFL, (VECTOR(uint16_t, 4))(0x32FFL, (VECTOR(uint16_t, 2))(0x32FFL, 0x1111L), 0x1111L), 0x1111L, 0x32FFL, 0x1111L), // p_1051->g_515
        (VECTOR(uint16_t, 4))(0x09F8L, (VECTOR(uint16_t, 2))(0x09F8L, 0x8BDCL), 0x8BDCL), // p_1051->g_521
        (VECTOR(uint16_t, 4))(65528UL, (VECTOR(uint16_t, 2))(65528UL, 3UL), 3UL), // p_1051->g_522
        (VECTOR(uint16_t, 16))(0x9C08L, (VECTOR(uint16_t, 4))(0x9C08L, (VECTOR(uint16_t, 2))(0x9C08L, 0xAE75L), 0xAE75L), 0xAE75L, 0x9C08L, 0xAE75L, (VECTOR(uint16_t, 2))(0x9C08L, 0xAE75L), (VECTOR(uint16_t, 2))(0x9C08L, 0xAE75L), 0x9C08L, 0xAE75L, 0x9C08L, 0xAE75L), // p_1051->g_530
        (VECTOR(uint16_t, 2))(0x9486L, 0xA0E4L), // p_1051->g_531
        (VECTOR(uint16_t, 8))(0x7D40L, (VECTOR(uint16_t, 4))(0x7D40L, (VECTOR(uint16_t, 2))(0x7D40L, 0x4565L), 0x4565L), 0x4565L, 0x7D40L, 0x4565L), // p_1051->g_532
        (VECTOR(uint8_t, 2))(1UL, 253UL), // p_1051->g_544
        (VECTOR(uint8_t, 4))(6UL, (VECTOR(uint8_t, 2))(6UL, 0x95L), 0x95L), // p_1051->g_547
        {&p_1051->g_11,&p_1051->g_11,&p_1051->g_11,&p_1051->g_11,&p_1051->g_11}, // p_1051->g_582
        {&p_1051->g_582[2],&p_1051->g_582[2],&p_1051->g_582[2],&p_1051->g_582[2],&p_1051->g_582[2],&p_1051->g_582[2],&p_1051->g_582[2],&p_1051->g_582[2],&p_1051->g_582[2]}, // p_1051->g_581
        (VECTOR(int16_t, 2))(0x5C98L, 1L), // p_1051->g_605
        (VECTOR(int16_t, 8))(0x1355L, (VECTOR(int16_t, 4))(0x1355L, (VECTOR(int16_t, 2))(0x1355L, (-1L)), (-1L)), (-1L), 0x1355L, (-1L)), // p_1051->g_606
        (VECTOR(int16_t, 8))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 8L), 8L), 8L, 1L, 8L), // p_1051->g_608
        &p_1051->g_74, // p_1051->g_619
        &p_1051->g_619, // p_1051->g_618
        &p_1051->g_74.f0, // p_1051->g_633
        (VECTOR(int32_t, 2))((-6L), 0x7EA86431L), // p_1051->g_638
        (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x6F5D744FL), 0x6F5D744FL), 0x6F5D744FL, 1L, 0x6F5D744FL, (VECTOR(int32_t, 2))(1L, 0x6F5D744FL), (VECTOR(int32_t, 2))(1L, 0x6F5D744FL), 1L, 0x6F5D744FL, 1L, 0x6F5D744FL), // p_1051->g_639
        (VECTOR(int32_t, 8))(0x35A41B07L, (VECTOR(int32_t, 4))(0x35A41B07L, (VECTOR(int32_t, 2))(0x35A41B07L, 0x7310C817L), 0x7310C817L), 0x7310C817L, 0x35A41B07L, 0x7310C817L), // p_1051->g_643
        (VECTOR(int32_t, 16))(0x2D688060L, (VECTOR(int32_t, 4))(0x2D688060L, (VECTOR(int32_t, 2))(0x2D688060L, 1L), 1L), 1L, 0x2D688060L, 1L, (VECTOR(int32_t, 2))(0x2D688060L, 1L), (VECTOR(int32_t, 2))(0x2D688060L, 1L), 0x2D688060L, 1L, 0x2D688060L, 1L), // p_1051->g_644
        (VECTOR(int32_t, 8))(0x4A238830L, (VECTOR(int32_t, 4))(0x4A238830L, (VECTOR(int32_t, 2))(0x4A238830L, 0x602CB409L), 0x602CB409L), 0x602CB409L, 0x4A238830L, 0x602CB409L), // p_1051->g_646
        (VECTOR(int32_t, 4))(0x49DDAD25L, (VECTOR(int32_t, 2))(0x49DDAD25L, 0L), 0L), // p_1051->g_648
        (VECTOR(int64_t, 16))(0L, (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 0x399F2C20E37C4A47L), 0x399F2C20E37C4A47L), 0x399F2C20E37C4A47L, 0L, 0x399F2C20E37C4A47L, (VECTOR(int64_t, 2))(0L, 0x399F2C20E37C4A47L), (VECTOR(int64_t, 2))(0L, 0x399F2C20E37C4A47L), 0L, 0x399F2C20E37C4A47L, 0L, 0x399F2C20E37C4A47L), // p_1051->g_703
        (VECTOR(int64_t, 2))(0x2B3A23328F8410CBL, 0L), // p_1051->g_712
        {-1L,0xFDD31DD6L,0L,0x22966E77L,0x1D5A2E331CF10DD5L,0UL}, // p_1051->g_761
        (VECTOR(int64_t, 2))((-9L), 0x4FD41FD058B6DA79L), // p_1051->g_762
        18446744073709551610UL, // p_1051->g_769
        (VECTOR(int64_t, 4))(0x02FD25B6C764D736L, (VECTOR(int64_t, 2))(0x02FD25B6C764D736L, 0x78F4B5D476ED0CBFL), 0x78F4B5D476ED0CBFL), // p_1051->g_772
        (VECTOR(uint32_t, 16))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 0UL), 0UL), 0UL, 1UL, 0UL, (VECTOR(uint32_t, 2))(1UL, 0UL), (VECTOR(uint32_t, 2))(1UL, 0UL), 1UL, 0UL, 1UL, 0UL), // p_1051->g_790
        (VECTOR(int8_t, 16))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, (-1L)), (-1L)), (-1L), 0L, (-1L), (VECTOR(int8_t, 2))(0L, (-1L)), (VECTOR(int8_t, 2))(0L, (-1L)), 0L, (-1L), 0L, (-1L)), // p_1051->g_811
        (VECTOR(uint8_t, 8))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 7UL), 7UL), 7UL, 0UL, 7UL), // p_1051->g_823
        0UL, // p_1051->g_926
        (VECTOR(uint32_t, 8))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 0xE5C2DB23L), 0xE5C2DB23L), 0xE5C2DB23L, 0UL, 0xE5C2DB23L), // p_1051->g_963
        (VECTOR(uint32_t, 8))(0xEB8F51CBL, (VECTOR(uint32_t, 4))(0xEB8F51CBL, (VECTOR(uint32_t, 2))(0xEB8F51CBL, 0UL), 0UL), 0UL, 0xEB8F51CBL, 0UL), // p_1051->g_964
        (VECTOR(uint32_t, 4))(0x9D944C3EL, (VECTOR(uint32_t, 2))(0x9D944C3EL, 5UL), 5UL), // p_1051->g_972
        (VECTOR(int8_t, 2))(7L, 1L), // p_1051->g_1008
        (VECTOR(int32_t, 8))(0x429EB08AL, (VECTOR(int32_t, 4))(0x429EB08AL, (VECTOR(int32_t, 2))(0x429EB08AL, 0x49E0718AL), 0x49E0718AL), 0x49E0718AL, 0x429EB08AL, 0x49E0718AL), // p_1051->g_1034
        (VECTOR(int32_t, 4))(0x65ED133EL, (VECTOR(int32_t, 2))(0x65ED133EL, 0x3CF0CFE9L), 0x3CF0CFE9L), // p_1051->g_1035
        (void*)0, // p_1051->g_1044
        &p_1051->g_1044, // p_1051->g_1043
        (VECTOR(int32_t, 4))(0x61EC6006L, (VECTOR(int32_t, 2))(0x61EC6006L, 0x688D7212L), 0x688D7212L), // p_1051->g_1049
        sequence_input[get_global_id(0)], // p_1051->global_0_offset
        sequence_input[get_global_id(1)], // p_1051->global_1_offset
        sequence_input[get_global_id(2)], // p_1051->global_2_offset
        sequence_input[get_local_id(0)], // p_1051->local_0_offset
        sequence_input[get_local_id(1)], // p_1051->local_1_offset
        sequence_input[get_local_id(2)], // p_1051->local_2_offset
        sequence_input[get_group_id(0)], // p_1051->group_0_offset
        sequence_input[get_group_id(1)], // p_1051->group_1_offset
        sequence_input[get_group_id(2)], // p_1051->group_2_offset
    };
    c_1052 = c_1053;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1051);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1051->g_8, "p_1051->g_8", print_hash_value);
    transparent_crc(p_1051->g_11, "p_1051->g_11", print_hash_value);
    transparent_crc(p_1051->g_67, "p_1051->g_67", print_hash_value);
    transparent_crc(p_1051->g_68, "p_1051->g_68", print_hash_value);
    transparent_crc(p_1051->g_74.f0, "p_1051->g_74.f0", print_hash_value);
    transparent_crc(p_1051->g_78, "p_1051->g_78", print_hash_value);
    transparent_crc(p_1051->g_82, "p_1051->g_82", print_hash_value);
    transparent_crc(p_1051->g_93, "p_1051->g_93", print_hash_value);
    transparent_crc(p_1051->g_112, "p_1051->g_112", print_hash_value);
    transparent_crc(p_1051->g_115, "p_1051->g_115", print_hash_value);
    transparent_crc(p_1051->g_118.s0, "p_1051->g_118.s0", print_hash_value);
    transparent_crc(p_1051->g_118.s1, "p_1051->g_118.s1", print_hash_value);
    transparent_crc(p_1051->g_118.s2, "p_1051->g_118.s2", print_hash_value);
    transparent_crc(p_1051->g_118.s3, "p_1051->g_118.s3", print_hash_value);
    transparent_crc(p_1051->g_118.s4, "p_1051->g_118.s4", print_hash_value);
    transparent_crc(p_1051->g_118.s5, "p_1051->g_118.s5", print_hash_value);
    transparent_crc(p_1051->g_118.s6, "p_1051->g_118.s6", print_hash_value);
    transparent_crc(p_1051->g_118.s7, "p_1051->g_118.s7", print_hash_value);
    transparent_crc(p_1051->g_118.s8, "p_1051->g_118.s8", print_hash_value);
    transparent_crc(p_1051->g_118.s9, "p_1051->g_118.s9", print_hash_value);
    transparent_crc(p_1051->g_118.sa, "p_1051->g_118.sa", print_hash_value);
    transparent_crc(p_1051->g_118.sb, "p_1051->g_118.sb", print_hash_value);
    transparent_crc(p_1051->g_118.sc, "p_1051->g_118.sc", print_hash_value);
    transparent_crc(p_1051->g_118.sd, "p_1051->g_118.sd", print_hash_value);
    transparent_crc(p_1051->g_118.se, "p_1051->g_118.se", print_hash_value);
    transparent_crc(p_1051->g_118.sf, "p_1051->g_118.sf", print_hash_value);
    transparent_crc(p_1051->g_119.s0, "p_1051->g_119.s0", print_hash_value);
    transparent_crc(p_1051->g_119.s1, "p_1051->g_119.s1", print_hash_value);
    transparent_crc(p_1051->g_119.s2, "p_1051->g_119.s2", print_hash_value);
    transparent_crc(p_1051->g_119.s3, "p_1051->g_119.s3", print_hash_value);
    transparent_crc(p_1051->g_119.s4, "p_1051->g_119.s4", print_hash_value);
    transparent_crc(p_1051->g_119.s5, "p_1051->g_119.s5", print_hash_value);
    transparent_crc(p_1051->g_119.s6, "p_1051->g_119.s6", print_hash_value);
    transparent_crc(p_1051->g_119.s7, "p_1051->g_119.s7", print_hash_value);
    transparent_crc(p_1051->g_149, "p_1051->g_149", print_hash_value);
    transparent_crc(p_1051->g_151, "p_1051->g_151", print_hash_value);
    transparent_crc(p_1051->g_156.f0, "p_1051->g_156.f0", print_hash_value);
    transparent_crc(p_1051->g_156.f1, "p_1051->g_156.f1", print_hash_value);
    transparent_crc(p_1051->g_156.f2, "p_1051->g_156.f2", print_hash_value);
    transparent_crc(p_1051->g_156.f3, "p_1051->g_156.f3", print_hash_value);
    transparent_crc(p_1051->g_156.f4, "p_1051->g_156.f4", print_hash_value);
    transparent_crc(p_1051->g_156.f5, "p_1051->g_156.f5", print_hash_value);
    transparent_crc(p_1051->g_176.f0, "p_1051->g_176.f0", print_hash_value);
    transparent_crc(p_1051->g_176.f1, "p_1051->g_176.f1", print_hash_value);
    transparent_crc(p_1051->g_176.f2, "p_1051->g_176.f2", print_hash_value);
    transparent_crc(p_1051->g_176.f3, "p_1051->g_176.f3", print_hash_value);
    transparent_crc(p_1051->g_176.f4, "p_1051->g_176.f4", print_hash_value);
    transparent_crc(p_1051->g_176.f5, "p_1051->g_176.f5", print_hash_value);
    transparent_crc(p_1051->g_291.f0, "p_1051->g_291.f0", print_hash_value);
    transparent_crc(p_1051->g_291.f1, "p_1051->g_291.f1", print_hash_value);
    transparent_crc(p_1051->g_291.f2, "p_1051->g_291.f2", print_hash_value);
    transparent_crc(p_1051->g_291.f3, "p_1051->g_291.f3", print_hash_value);
    transparent_crc(p_1051->g_291.f4, "p_1051->g_291.f4", print_hash_value);
    transparent_crc(p_1051->g_291.f5, "p_1051->g_291.f5", print_hash_value);
    transparent_crc(p_1051->g_299, "p_1051->g_299", print_hash_value);
    transparent_crc(p_1051->g_320.s0, "p_1051->g_320.s0", print_hash_value);
    transparent_crc(p_1051->g_320.s1, "p_1051->g_320.s1", print_hash_value);
    transparent_crc(p_1051->g_320.s2, "p_1051->g_320.s2", print_hash_value);
    transparent_crc(p_1051->g_320.s3, "p_1051->g_320.s3", print_hash_value);
    transparent_crc(p_1051->g_320.s4, "p_1051->g_320.s4", print_hash_value);
    transparent_crc(p_1051->g_320.s5, "p_1051->g_320.s5", print_hash_value);
    transparent_crc(p_1051->g_320.s6, "p_1051->g_320.s6", print_hash_value);
    transparent_crc(p_1051->g_320.s7, "p_1051->g_320.s7", print_hash_value);
    transparent_crc(p_1051->g_320.s8, "p_1051->g_320.s8", print_hash_value);
    transparent_crc(p_1051->g_320.s9, "p_1051->g_320.s9", print_hash_value);
    transparent_crc(p_1051->g_320.sa, "p_1051->g_320.sa", print_hash_value);
    transparent_crc(p_1051->g_320.sb, "p_1051->g_320.sb", print_hash_value);
    transparent_crc(p_1051->g_320.sc, "p_1051->g_320.sc", print_hash_value);
    transparent_crc(p_1051->g_320.sd, "p_1051->g_320.sd", print_hash_value);
    transparent_crc(p_1051->g_320.se, "p_1051->g_320.se", print_hash_value);
    transparent_crc(p_1051->g_320.sf, "p_1051->g_320.sf", print_hash_value);
    transparent_crc(p_1051->g_336.s0, "p_1051->g_336.s0", print_hash_value);
    transparent_crc(p_1051->g_336.s1, "p_1051->g_336.s1", print_hash_value);
    transparent_crc(p_1051->g_336.s2, "p_1051->g_336.s2", print_hash_value);
    transparent_crc(p_1051->g_336.s3, "p_1051->g_336.s3", print_hash_value);
    transparent_crc(p_1051->g_336.s4, "p_1051->g_336.s4", print_hash_value);
    transparent_crc(p_1051->g_336.s5, "p_1051->g_336.s5", print_hash_value);
    transparent_crc(p_1051->g_336.s6, "p_1051->g_336.s6", print_hash_value);
    transparent_crc(p_1051->g_336.s7, "p_1051->g_336.s7", print_hash_value);
    transparent_crc(p_1051->g_336.s8, "p_1051->g_336.s8", print_hash_value);
    transparent_crc(p_1051->g_336.s9, "p_1051->g_336.s9", print_hash_value);
    transparent_crc(p_1051->g_336.sa, "p_1051->g_336.sa", print_hash_value);
    transparent_crc(p_1051->g_336.sb, "p_1051->g_336.sb", print_hash_value);
    transparent_crc(p_1051->g_336.sc, "p_1051->g_336.sc", print_hash_value);
    transparent_crc(p_1051->g_336.sd, "p_1051->g_336.sd", print_hash_value);
    transparent_crc(p_1051->g_336.se, "p_1051->g_336.se", print_hash_value);
    transparent_crc(p_1051->g_336.sf, "p_1051->g_336.sf", print_hash_value);
    transparent_crc(p_1051->g_343.s0, "p_1051->g_343.s0", print_hash_value);
    transparent_crc(p_1051->g_343.s1, "p_1051->g_343.s1", print_hash_value);
    transparent_crc(p_1051->g_343.s2, "p_1051->g_343.s2", print_hash_value);
    transparent_crc(p_1051->g_343.s3, "p_1051->g_343.s3", print_hash_value);
    transparent_crc(p_1051->g_343.s4, "p_1051->g_343.s4", print_hash_value);
    transparent_crc(p_1051->g_343.s5, "p_1051->g_343.s5", print_hash_value);
    transparent_crc(p_1051->g_343.s6, "p_1051->g_343.s6", print_hash_value);
    transparent_crc(p_1051->g_343.s7, "p_1051->g_343.s7", print_hash_value);
    transparent_crc(p_1051->g_344.x, "p_1051->g_344.x", print_hash_value);
    transparent_crc(p_1051->g_344.y, "p_1051->g_344.y", print_hash_value);
    transparent_crc(p_1051->g_345.x, "p_1051->g_345.x", print_hash_value);
    transparent_crc(p_1051->g_345.y, "p_1051->g_345.y", print_hash_value);
    transparent_crc(p_1051->g_347.s0, "p_1051->g_347.s0", print_hash_value);
    transparent_crc(p_1051->g_347.s1, "p_1051->g_347.s1", print_hash_value);
    transparent_crc(p_1051->g_347.s2, "p_1051->g_347.s2", print_hash_value);
    transparent_crc(p_1051->g_347.s3, "p_1051->g_347.s3", print_hash_value);
    transparent_crc(p_1051->g_347.s4, "p_1051->g_347.s4", print_hash_value);
    transparent_crc(p_1051->g_347.s5, "p_1051->g_347.s5", print_hash_value);
    transparent_crc(p_1051->g_347.s6, "p_1051->g_347.s6", print_hash_value);
    transparent_crc(p_1051->g_347.s7, "p_1051->g_347.s7", print_hash_value);
    transparent_crc(p_1051->g_347.s8, "p_1051->g_347.s8", print_hash_value);
    transparent_crc(p_1051->g_347.s9, "p_1051->g_347.s9", print_hash_value);
    transparent_crc(p_1051->g_347.sa, "p_1051->g_347.sa", print_hash_value);
    transparent_crc(p_1051->g_347.sb, "p_1051->g_347.sb", print_hash_value);
    transparent_crc(p_1051->g_347.sc, "p_1051->g_347.sc", print_hash_value);
    transparent_crc(p_1051->g_347.sd, "p_1051->g_347.sd", print_hash_value);
    transparent_crc(p_1051->g_347.se, "p_1051->g_347.se", print_hash_value);
    transparent_crc(p_1051->g_347.sf, "p_1051->g_347.sf", print_hash_value);
    transparent_crc(p_1051->g_373.f0, "p_1051->g_373.f0", print_hash_value);
    transparent_crc(p_1051->g_373.f1, "p_1051->g_373.f1", print_hash_value);
    transparent_crc(p_1051->g_373.f2, "p_1051->g_373.f2", print_hash_value);
    transparent_crc(p_1051->g_373.f3, "p_1051->g_373.f3", print_hash_value);
    transparent_crc(p_1051->g_373.f4, "p_1051->g_373.f4", print_hash_value);
    transparent_crc(p_1051->g_373.f5, "p_1051->g_373.f5", print_hash_value);
    transparent_crc(p_1051->g_377.f0, "p_1051->g_377.f0", print_hash_value);
    transparent_crc(p_1051->g_377.f1, "p_1051->g_377.f1", print_hash_value);
    transparent_crc(p_1051->g_377.f2, "p_1051->g_377.f2", print_hash_value);
    transparent_crc(p_1051->g_377.f3, "p_1051->g_377.f3", print_hash_value);
    transparent_crc(p_1051->g_377.f4, "p_1051->g_377.f4", print_hash_value);
    transparent_crc(p_1051->g_377.f5, "p_1051->g_377.f5", print_hash_value);
    transparent_crc(p_1051->g_378.x, "p_1051->g_378.x", print_hash_value);
    transparent_crc(p_1051->g_378.y, "p_1051->g_378.y", print_hash_value);
    transparent_crc(p_1051->g_381.s0, "p_1051->g_381.s0", print_hash_value);
    transparent_crc(p_1051->g_381.s1, "p_1051->g_381.s1", print_hash_value);
    transparent_crc(p_1051->g_381.s2, "p_1051->g_381.s2", print_hash_value);
    transparent_crc(p_1051->g_381.s3, "p_1051->g_381.s3", print_hash_value);
    transparent_crc(p_1051->g_381.s4, "p_1051->g_381.s4", print_hash_value);
    transparent_crc(p_1051->g_381.s5, "p_1051->g_381.s5", print_hash_value);
    transparent_crc(p_1051->g_381.s6, "p_1051->g_381.s6", print_hash_value);
    transparent_crc(p_1051->g_381.s7, "p_1051->g_381.s7", print_hash_value);
    transparent_crc(p_1051->g_381.s8, "p_1051->g_381.s8", print_hash_value);
    transparent_crc(p_1051->g_381.s9, "p_1051->g_381.s9", print_hash_value);
    transparent_crc(p_1051->g_381.sa, "p_1051->g_381.sa", print_hash_value);
    transparent_crc(p_1051->g_381.sb, "p_1051->g_381.sb", print_hash_value);
    transparent_crc(p_1051->g_381.sc, "p_1051->g_381.sc", print_hash_value);
    transparent_crc(p_1051->g_381.sd, "p_1051->g_381.sd", print_hash_value);
    transparent_crc(p_1051->g_381.se, "p_1051->g_381.se", print_hash_value);
    transparent_crc(p_1051->g_381.sf, "p_1051->g_381.sf", print_hash_value);
    transparent_crc(p_1051->g_458.f0, "p_1051->g_458.f0", print_hash_value);
    transparent_crc(p_1051->g_458.f1, "p_1051->g_458.f1", print_hash_value);
    transparent_crc(p_1051->g_458.f2, "p_1051->g_458.f2", print_hash_value);
    transparent_crc(p_1051->g_458.f3, "p_1051->g_458.f3", print_hash_value);
    transparent_crc(p_1051->g_458.f4, "p_1051->g_458.f4", print_hash_value);
    transparent_crc(p_1051->g_458.f5, "p_1051->g_458.f5", print_hash_value);
    transparent_crc(p_1051->g_499.s0, "p_1051->g_499.s0", print_hash_value);
    transparent_crc(p_1051->g_499.s1, "p_1051->g_499.s1", print_hash_value);
    transparent_crc(p_1051->g_499.s2, "p_1051->g_499.s2", print_hash_value);
    transparent_crc(p_1051->g_499.s3, "p_1051->g_499.s3", print_hash_value);
    transparent_crc(p_1051->g_499.s4, "p_1051->g_499.s4", print_hash_value);
    transparent_crc(p_1051->g_499.s5, "p_1051->g_499.s5", print_hash_value);
    transparent_crc(p_1051->g_499.s6, "p_1051->g_499.s6", print_hash_value);
    transparent_crc(p_1051->g_499.s7, "p_1051->g_499.s7", print_hash_value);
    transparent_crc(p_1051->g_502.s0, "p_1051->g_502.s0", print_hash_value);
    transparent_crc(p_1051->g_502.s1, "p_1051->g_502.s1", print_hash_value);
    transparent_crc(p_1051->g_502.s2, "p_1051->g_502.s2", print_hash_value);
    transparent_crc(p_1051->g_502.s3, "p_1051->g_502.s3", print_hash_value);
    transparent_crc(p_1051->g_502.s4, "p_1051->g_502.s4", print_hash_value);
    transparent_crc(p_1051->g_502.s5, "p_1051->g_502.s5", print_hash_value);
    transparent_crc(p_1051->g_502.s6, "p_1051->g_502.s6", print_hash_value);
    transparent_crc(p_1051->g_502.s7, "p_1051->g_502.s7", print_hash_value);
    transparent_crc(p_1051->g_503.x, "p_1051->g_503.x", print_hash_value);
    transparent_crc(p_1051->g_503.y, "p_1051->g_503.y", print_hash_value);
    transparent_crc(p_1051->g_503.z, "p_1051->g_503.z", print_hash_value);
    transparent_crc(p_1051->g_503.w, "p_1051->g_503.w", print_hash_value);
    transparent_crc(p_1051->g_515.s0, "p_1051->g_515.s0", print_hash_value);
    transparent_crc(p_1051->g_515.s1, "p_1051->g_515.s1", print_hash_value);
    transparent_crc(p_1051->g_515.s2, "p_1051->g_515.s2", print_hash_value);
    transparent_crc(p_1051->g_515.s3, "p_1051->g_515.s3", print_hash_value);
    transparent_crc(p_1051->g_515.s4, "p_1051->g_515.s4", print_hash_value);
    transparent_crc(p_1051->g_515.s5, "p_1051->g_515.s5", print_hash_value);
    transparent_crc(p_1051->g_515.s6, "p_1051->g_515.s6", print_hash_value);
    transparent_crc(p_1051->g_515.s7, "p_1051->g_515.s7", print_hash_value);
    transparent_crc(p_1051->g_521.x, "p_1051->g_521.x", print_hash_value);
    transparent_crc(p_1051->g_521.y, "p_1051->g_521.y", print_hash_value);
    transparent_crc(p_1051->g_521.z, "p_1051->g_521.z", print_hash_value);
    transparent_crc(p_1051->g_521.w, "p_1051->g_521.w", print_hash_value);
    transparent_crc(p_1051->g_522.x, "p_1051->g_522.x", print_hash_value);
    transparent_crc(p_1051->g_522.y, "p_1051->g_522.y", print_hash_value);
    transparent_crc(p_1051->g_522.z, "p_1051->g_522.z", print_hash_value);
    transparent_crc(p_1051->g_522.w, "p_1051->g_522.w", print_hash_value);
    transparent_crc(p_1051->g_530.s0, "p_1051->g_530.s0", print_hash_value);
    transparent_crc(p_1051->g_530.s1, "p_1051->g_530.s1", print_hash_value);
    transparent_crc(p_1051->g_530.s2, "p_1051->g_530.s2", print_hash_value);
    transparent_crc(p_1051->g_530.s3, "p_1051->g_530.s3", print_hash_value);
    transparent_crc(p_1051->g_530.s4, "p_1051->g_530.s4", print_hash_value);
    transparent_crc(p_1051->g_530.s5, "p_1051->g_530.s5", print_hash_value);
    transparent_crc(p_1051->g_530.s6, "p_1051->g_530.s6", print_hash_value);
    transparent_crc(p_1051->g_530.s7, "p_1051->g_530.s7", print_hash_value);
    transparent_crc(p_1051->g_530.s8, "p_1051->g_530.s8", print_hash_value);
    transparent_crc(p_1051->g_530.s9, "p_1051->g_530.s9", print_hash_value);
    transparent_crc(p_1051->g_530.sa, "p_1051->g_530.sa", print_hash_value);
    transparent_crc(p_1051->g_530.sb, "p_1051->g_530.sb", print_hash_value);
    transparent_crc(p_1051->g_530.sc, "p_1051->g_530.sc", print_hash_value);
    transparent_crc(p_1051->g_530.sd, "p_1051->g_530.sd", print_hash_value);
    transparent_crc(p_1051->g_530.se, "p_1051->g_530.se", print_hash_value);
    transparent_crc(p_1051->g_530.sf, "p_1051->g_530.sf", print_hash_value);
    transparent_crc(p_1051->g_531.x, "p_1051->g_531.x", print_hash_value);
    transparent_crc(p_1051->g_531.y, "p_1051->g_531.y", print_hash_value);
    transparent_crc(p_1051->g_532.s0, "p_1051->g_532.s0", print_hash_value);
    transparent_crc(p_1051->g_532.s1, "p_1051->g_532.s1", print_hash_value);
    transparent_crc(p_1051->g_532.s2, "p_1051->g_532.s2", print_hash_value);
    transparent_crc(p_1051->g_532.s3, "p_1051->g_532.s3", print_hash_value);
    transparent_crc(p_1051->g_532.s4, "p_1051->g_532.s4", print_hash_value);
    transparent_crc(p_1051->g_532.s5, "p_1051->g_532.s5", print_hash_value);
    transparent_crc(p_1051->g_532.s6, "p_1051->g_532.s6", print_hash_value);
    transparent_crc(p_1051->g_532.s7, "p_1051->g_532.s7", print_hash_value);
    transparent_crc(p_1051->g_544.x, "p_1051->g_544.x", print_hash_value);
    transparent_crc(p_1051->g_544.y, "p_1051->g_544.y", print_hash_value);
    transparent_crc(p_1051->g_547.x, "p_1051->g_547.x", print_hash_value);
    transparent_crc(p_1051->g_547.y, "p_1051->g_547.y", print_hash_value);
    transparent_crc(p_1051->g_547.z, "p_1051->g_547.z", print_hash_value);
    transparent_crc(p_1051->g_547.w, "p_1051->g_547.w", print_hash_value);
    transparent_crc(p_1051->g_605.x, "p_1051->g_605.x", print_hash_value);
    transparent_crc(p_1051->g_605.y, "p_1051->g_605.y", print_hash_value);
    transparent_crc(p_1051->g_606.s0, "p_1051->g_606.s0", print_hash_value);
    transparent_crc(p_1051->g_606.s1, "p_1051->g_606.s1", print_hash_value);
    transparent_crc(p_1051->g_606.s2, "p_1051->g_606.s2", print_hash_value);
    transparent_crc(p_1051->g_606.s3, "p_1051->g_606.s3", print_hash_value);
    transparent_crc(p_1051->g_606.s4, "p_1051->g_606.s4", print_hash_value);
    transparent_crc(p_1051->g_606.s5, "p_1051->g_606.s5", print_hash_value);
    transparent_crc(p_1051->g_606.s6, "p_1051->g_606.s6", print_hash_value);
    transparent_crc(p_1051->g_606.s7, "p_1051->g_606.s7", print_hash_value);
    transparent_crc(p_1051->g_608.s0, "p_1051->g_608.s0", print_hash_value);
    transparent_crc(p_1051->g_608.s1, "p_1051->g_608.s1", print_hash_value);
    transparent_crc(p_1051->g_608.s2, "p_1051->g_608.s2", print_hash_value);
    transparent_crc(p_1051->g_608.s3, "p_1051->g_608.s3", print_hash_value);
    transparent_crc(p_1051->g_608.s4, "p_1051->g_608.s4", print_hash_value);
    transparent_crc(p_1051->g_608.s5, "p_1051->g_608.s5", print_hash_value);
    transparent_crc(p_1051->g_608.s6, "p_1051->g_608.s6", print_hash_value);
    transparent_crc(p_1051->g_608.s7, "p_1051->g_608.s7", print_hash_value);
    transparent_crc(p_1051->g_638.x, "p_1051->g_638.x", print_hash_value);
    transparent_crc(p_1051->g_638.y, "p_1051->g_638.y", print_hash_value);
    transparent_crc(p_1051->g_639.s0, "p_1051->g_639.s0", print_hash_value);
    transparent_crc(p_1051->g_639.s1, "p_1051->g_639.s1", print_hash_value);
    transparent_crc(p_1051->g_639.s2, "p_1051->g_639.s2", print_hash_value);
    transparent_crc(p_1051->g_639.s3, "p_1051->g_639.s3", print_hash_value);
    transparent_crc(p_1051->g_639.s4, "p_1051->g_639.s4", print_hash_value);
    transparent_crc(p_1051->g_639.s5, "p_1051->g_639.s5", print_hash_value);
    transparent_crc(p_1051->g_639.s6, "p_1051->g_639.s6", print_hash_value);
    transparent_crc(p_1051->g_639.s7, "p_1051->g_639.s7", print_hash_value);
    transparent_crc(p_1051->g_639.s8, "p_1051->g_639.s8", print_hash_value);
    transparent_crc(p_1051->g_639.s9, "p_1051->g_639.s9", print_hash_value);
    transparent_crc(p_1051->g_639.sa, "p_1051->g_639.sa", print_hash_value);
    transparent_crc(p_1051->g_639.sb, "p_1051->g_639.sb", print_hash_value);
    transparent_crc(p_1051->g_639.sc, "p_1051->g_639.sc", print_hash_value);
    transparent_crc(p_1051->g_639.sd, "p_1051->g_639.sd", print_hash_value);
    transparent_crc(p_1051->g_639.se, "p_1051->g_639.se", print_hash_value);
    transparent_crc(p_1051->g_639.sf, "p_1051->g_639.sf", print_hash_value);
    transparent_crc(p_1051->g_643.s0, "p_1051->g_643.s0", print_hash_value);
    transparent_crc(p_1051->g_643.s1, "p_1051->g_643.s1", print_hash_value);
    transparent_crc(p_1051->g_643.s2, "p_1051->g_643.s2", print_hash_value);
    transparent_crc(p_1051->g_643.s3, "p_1051->g_643.s3", print_hash_value);
    transparent_crc(p_1051->g_643.s4, "p_1051->g_643.s4", print_hash_value);
    transparent_crc(p_1051->g_643.s5, "p_1051->g_643.s5", print_hash_value);
    transparent_crc(p_1051->g_643.s6, "p_1051->g_643.s6", print_hash_value);
    transparent_crc(p_1051->g_643.s7, "p_1051->g_643.s7", print_hash_value);
    transparent_crc(p_1051->g_644.s0, "p_1051->g_644.s0", print_hash_value);
    transparent_crc(p_1051->g_644.s1, "p_1051->g_644.s1", print_hash_value);
    transparent_crc(p_1051->g_644.s2, "p_1051->g_644.s2", print_hash_value);
    transparent_crc(p_1051->g_644.s3, "p_1051->g_644.s3", print_hash_value);
    transparent_crc(p_1051->g_644.s4, "p_1051->g_644.s4", print_hash_value);
    transparent_crc(p_1051->g_644.s5, "p_1051->g_644.s5", print_hash_value);
    transparent_crc(p_1051->g_644.s6, "p_1051->g_644.s6", print_hash_value);
    transparent_crc(p_1051->g_644.s7, "p_1051->g_644.s7", print_hash_value);
    transparent_crc(p_1051->g_644.s8, "p_1051->g_644.s8", print_hash_value);
    transparent_crc(p_1051->g_644.s9, "p_1051->g_644.s9", print_hash_value);
    transparent_crc(p_1051->g_644.sa, "p_1051->g_644.sa", print_hash_value);
    transparent_crc(p_1051->g_644.sb, "p_1051->g_644.sb", print_hash_value);
    transparent_crc(p_1051->g_644.sc, "p_1051->g_644.sc", print_hash_value);
    transparent_crc(p_1051->g_644.sd, "p_1051->g_644.sd", print_hash_value);
    transparent_crc(p_1051->g_644.se, "p_1051->g_644.se", print_hash_value);
    transparent_crc(p_1051->g_644.sf, "p_1051->g_644.sf", print_hash_value);
    transparent_crc(p_1051->g_646.s0, "p_1051->g_646.s0", print_hash_value);
    transparent_crc(p_1051->g_646.s1, "p_1051->g_646.s1", print_hash_value);
    transparent_crc(p_1051->g_646.s2, "p_1051->g_646.s2", print_hash_value);
    transparent_crc(p_1051->g_646.s3, "p_1051->g_646.s3", print_hash_value);
    transparent_crc(p_1051->g_646.s4, "p_1051->g_646.s4", print_hash_value);
    transparent_crc(p_1051->g_646.s5, "p_1051->g_646.s5", print_hash_value);
    transparent_crc(p_1051->g_646.s6, "p_1051->g_646.s6", print_hash_value);
    transparent_crc(p_1051->g_646.s7, "p_1051->g_646.s7", print_hash_value);
    transparent_crc(p_1051->g_648.x, "p_1051->g_648.x", print_hash_value);
    transparent_crc(p_1051->g_648.y, "p_1051->g_648.y", print_hash_value);
    transparent_crc(p_1051->g_648.z, "p_1051->g_648.z", print_hash_value);
    transparent_crc(p_1051->g_648.w, "p_1051->g_648.w", print_hash_value);
    transparent_crc(p_1051->g_703.s0, "p_1051->g_703.s0", print_hash_value);
    transparent_crc(p_1051->g_703.s1, "p_1051->g_703.s1", print_hash_value);
    transparent_crc(p_1051->g_703.s2, "p_1051->g_703.s2", print_hash_value);
    transparent_crc(p_1051->g_703.s3, "p_1051->g_703.s3", print_hash_value);
    transparent_crc(p_1051->g_703.s4, "p_1051->g_703.s4", print_hash_value);
    transparent_crc(p_1051->g_703.s5, "p_1051->g_703.s5", print_hash_value);
    transparent_crc(p_1051->g_703.s6, "p_1051->g_703.s6", print_hash_value);
    transparent_crc(p_1051->g_703.s7, "p_1051->g_703.s7", print_hash_value);
    transparent_crc(p_1051->g_703.s8, "p_1051->g_703.s8", print_hash_value);
    transparent_crc(p_1051->g_703.s9, "p_1051->g_703.s9", print_hash_value);
    transparent_crc(p_1051->g_703.sa, "p_1051->g_703.sa", print_hash_value);
    transparent_crc(p_1051->g_703.sb, "p_1051->g_703.sb", print_hash_value);
    transparent_crc(p_1051->g_703.sc, "p_1051->g_703.sc", print_hash_value);
    transparent_crc(p_1051->g_703.sd, "p_1051->g_703.sd", print_hash_value);
    transparent_crc(p_1051->g_703.se, "p_1051->g_703.se", print_hash_value);
    transparent_crc(p_1051->g_703.sf, "p_1051->g_703.sf", print_hash_value);
    transparent_crc(p_1051->g_712.x, "p_1051->g_712.x", print_hash_value);
    transparent_crc(p_1051->g_712.y, "p_1051->g_712.y", print_hash_value);
    transparent_crc(p_1051->g_761.f0, "p_1051->g_761.f0", print_hash_value);
    transparent_crc(p_1051->g_761.f1, "p_1051->g_761.f1", print_hash_value);
    transparent_crc(p_1051->g_761.f2, "p_1051->g_761.f2", print_hash_value);
    transparent_crc(p_1051->g_761.f3, "p_1051->g_761.f3", print_hash_value);
    transparent_crc(p_1051->g_761.f4, "p_1051->g_761.f4", print_hash_value);
    transparent_crc(p_1051->g_761.f5, "p_1051->g_761.f5", print_hash_value);
    transparent_crc(p_1051->g_762.x, "p_1051->g_762.x", print_hash_value);
    transparent_crc(p_1051->g_762.y, "p_1051->g_762.y", print_hash_value);
    transparent_crc(p_1051->g_769, "p_1051->g_769", print_hash_value);
    transparent_crc(p_1051->g_772.x, "p_1051->g_772.x", print_hash_value);
    transparent_crc(p_1051->g_772.y, "p_1051->g_772.y", print_hash_value);
    transparent_crc(p_1051->g_772.z, "p_1051->g_772.z", print_hash_value);
    transparent_crc(p_1051->g_772.w, "p_1051->g_772.w", print_hash_value);
    transparent_crc(p_1051->g_790.s0, "p_1051->g_790.s0", print_hash_value);
    transparent_crc(p_1051->g_790.s1, "p_1051->g_790.s1", print_hash_value);
    transparent_crc(p_1051->g_790.s2, "p_1051->g_790.s2", print_hash_value);
    transparent_crc(p_1051->g_790.s3, "p_1051->g_790.s3", print_hash_value);
    transparent_crc(p_1051->g_790.s4, "p_1051->g_790.s4", print_hash_value);
    transparent_crc(p_1051->g_790.s5, "p_1051->g_790.s5", print_hash_value);
    transparent_crc(p_1051->g_790.s6, "p_1051->g_790.s6", print_hash_value);
    transparent_crc(p_1051->g_790.s7, "p_1051->g_790.s7", print_hash_value);
    transparent_crc(p_1051->g_790.s8, "p_1051->g_790.s8", print_hash_value);
    transparent_crc(p_1051->g_790.s9, "p_1051->g_790.s9", print_hash_value);
    transparent_crc(p_1051->g_790.sa, "p_1051->g_790.sa", print_hash_value);
    transparent_crc(p_1051->g_790.sb, "p_1051->g_790.sb", print_hash_value);
    transparent_crc(p_1051->g_790.sc, "p_1051->g_790.sc", print_hash_value);
    transparent_crc(p_1051->g_790.sd, "p_1051->g_790.sd", print_hash_value);
    transparent_crc(p_1051->g_790.se, "p_1051->g_790.se", print_hash_value);
    transparent_crc(p_1051->g_790.sf, "p_1051->g_790.sf", print_hash_value);
    transparent_crc(p_1051->g_811.s0, "p_1051->g_811.s0", print_hash_value);
    transparent_crc(p_1051->g_811.s1, "p_1051->g_811.s1", print_hash_value);
    transparent_crc(p_1051->g_811.s2, "p_1051->g_811.s2", print_hash_value);
    transparent_crc(p_1051->g_811.s3, "p_1051->g_811.s3", print_hash_value);
    transparent_crc(p_1051->g_811.s4, "p_1051->g_811.s4", print_hash_value);
    transparent_crc(p_1051->g_811.s5, "p_1051->g_811.s5", print_hash_value);
    transparent_crc(p_1051->g_811.s6, "p_1051->g_811.s6", print_hash_value);
    transparent_crc(p_1051->g_811.s7, "p_1051->g_811.s7", print_hash_value);
    transparent_crc(p_1051->g_811.s8, "p_1051->g_811.s8", print_hash_value);
    transparent_crc(p_1051->g_811.s9, "p_1051->g_811.s9", print_hash_value);
    transparent_crc(p_1051->g_811.sa, "p_1051->g_811.sa", print_hash_value);
    transparent_crc(p_1051->g_811.sb, "p_1051->g_811.sb", print_hash_value);
    transparent_crc(p_1051->g_811.sc, "p_1051->g_811.sc", print_hash_value);
    transparent_crc(p_1051->g_811.sd, "p_1051->g_811.sd", print_hash_value);
    transparent_crc(p_1051->g_811.se, "p_1051->g_811.se", print_hash_value);
    transparent_crc(p_1051->g_811.sf, "p_1051->g_811.sf", print_hash_value);
    transparent_crc(p_1051->g_823.s0, "p_1051->g_823.s0", print_hash_value);
    transparent_crc(p_1051->g_823.s1, "p_1051->g_823.s1", print_hash_value);
    transparent_crc(p_1051->g_823.s2, "p_1051->g_823.s2", print_hash_value);
    transparent_crc(p_1051->g_823.s3, "p_1051->g_823.s3", print_hash_value);
    transparent_crc(p_1051->g_823.s4, "p_1051->g_823.s4", print_hash_value);
    transparent_crc(p_1051->g_823.s5, "p_1051->g_823.s5", print_hash_value);
    transparent_crc(p_1051->g_823.s6, "p_1051->g_823.s6", print_hash_value);
    transparent_crc(p_1051->g_823.s7, "p_1051->g_823.s7", print_hash_value);
    transparent_crc(p_1051->g_926, "p_1051->g_926", print_hash_value);
    transparent_crc(p_1051->g_963.s0, "p_1051->g_963.s0", print_hash_value);
    transparent_crc(p_1051->g_963.s1, "p_1051->g_963.s1", print_hash_value);
    transparent_crc(p_1051->g_963.s2, "p_1051->g_963.s2", print_hash_value);
    transparent_crc(p_1051->g_963.s3, "p_1051->g_963.s3", print_hash_value);
    transparent_crc(p_1051->g_963.s4, "p_1051->g_963.s4", print_hash_value);
    transparent_crc(p_1051->g_963.s5, "p_1051->g_963.s5", print_hash_value);
    transparent_crc(p_1051->g_963.s6, "p_1051->g_963.s6", print_hash_value);
    transparent_crc(p_1051->g_963.s7, "p_1051->g_963.s7", print_hash_value);
    transparent_crc(p_1051->g_964.s0, "p_1051->g_964.s0", print_hash_value);
    transparent_crc(p_1051->g_964.s1, "p_1051->g_964.s1", print_hash_value);
    transparent_crc(p_1051->g_964.s2, "p_1051->g_964.s2", print_hash_value);
    transparent_crc(p_1051->g_964.s3, "p_1051->g_964.s3", print_hash_value);
    transparent_crc(p_1051->g_964.s4, "p_1051->g_964.s4", print_hash_value);
    transparent_crc(p_1051->g_964.s5, "p_1051->g_964.s5", print_hash_value);
    transparent_crc(p_1051->g_964.s6, "p_1051->g_964.s6", print_hash_value);
    transparent_crc(p_1051->g_964.s7, "p_1051->g_964.s7", print_hash_value);
    transparent_crc(p_1051->g_972.x, "p_1051->g_972.x", print_hash_value);
    transparent_crc(p_1051->g_972.y, "p_1051->g_972.y", print_hash_value);
    transparent_crc(p_1051->g_972.z, "p_1051->g_972.z", print_hash_value);
    transparent_crc(p_1051->g_972.w, "p_1051->g_972.w", print_hash_value);
    transparent_crc(p_1051->g_1008.x, "p_1051->g_1008.x", print_hash_value);
    transparent_crc(p_1051->g_1008.y, "p_1051->g_1008.y", print_hash_value);
    transparent_crc(p_1051->g_1034.s0, "p_1051->g_1034.s0", print_hash_value);
    transparent_crc(p_1051->g_1034.s1, "p_1051->g_1034.s1", print_hash_value);
    transparent_crc(p_1051->g_1034.s2, "p_1051->g_1034.s2", print_hash_value);
    transparent_crc(p_1051->g_1034.s3, "p_1051->g_1034.s3", print_hash_value);
    transparent_crc(p_1051->g_1034.s4, "p_1051->g_1034.s4", print_hash_value);
    transparent_crc(p_1051->g_1034.s5, "p_1051->g_1034.s5", print_hash_value);
    transparent_crc(p_1051->g_1034.s6, "p_1051->g_1034.s6", print_hash_value);
    transparent_crc(p_1051->g_1034.s7, "p_1051->g_1034.s7", print_hash_value);
    transparent_crc(p_1051->g_1035.x, "p_1051->g_1035.x", print_hash_value);
    transparent_crc(p_1051->g_1035.y, "p_1051->g_1035.y", print_hash_value);
    transparent_crc(p_1051->g_1035.z, "p_1051->g_1035.z", print_hash_value);
    transparent_crc(p_1051->g_1035.w, "p_1051->g_1035.w", print_hash_value);
    transparent_crc(p_1051->g_1049.x, "p_1051->g_1049.x", print_hash_value);
    transparent_crc(p_1051->g_1049.y, "p_1051->g_1049.y", print_hash_value);
    transparent_crc(p_1051->g_1049.z, "p_1051->g_1049.z", print_hash_value);
    transparent_crc(p_1051->g_1049.w, "p_1051->g_1049.w", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
