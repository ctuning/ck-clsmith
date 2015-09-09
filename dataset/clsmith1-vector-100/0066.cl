// ---fake_divergence -g 100,18,4 -l 5,6,1
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


// Seed: 66

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   int32_t  f0;
   int32_t  f1;
   volatile int64_t  f2;
   uint16_t  f3;
};

struct S1 {
    int16_t g_22;
    volatile VECTOR(uint16_t, 4) g_33;
    volatile VECTOR(uint8_t, 8) g_36;
    volatile VECTOR(uint64_t, 4) g_43;
    volatile int32_t g_46;
    int32_t g_47;
    volatile VECTOR(int16_t, 16) g_71;
    volatile struct S0 g_98;
    volatile struct S0 * volatile g_99;
    VECTOR(int32_t, 4) g_102;
    int32_t *g_101;
    int32_t ** volatile g_107;
    volatile struct S0 g_108;
    volatile struct S0 g_117;
    volatile VECTOR(uint16_t, 16) g_124;
    VECTOR(uint8_t, 4) g_132;
    volatile VECTOR(int16_t, 4) g_134;
    VECTOR(uint8_t, 2) g_135;
    int32_t ** volatile g_167[9];
    VECTOR(uint32_t, 8) g_175;
    volatile VECTOR(uint16_t, 16) g_183;
    VECTOR(int32_t, 4) g_191;
    int8_t g_196;
    VECTOR(uint64_t, 4) g_226;
    volatile struct S0 g_234[9];
    uint8_t *g_238;
    uint8_t *g_240;
    volatile int64_t * volatile g_278;
    struct S0 g_282;
    VECTOR(uint8_t, 2) g_293;
    int32_t * volatile g_320;
    VECTOR(uint64_t, 16) g_326;
    uint16_t g_367[7];
    int8_t g_368;
    volatile VECTOR(int32_t, 8) g_387;
    VECTOR(uint32_t, 2) g_404;
    int32_t * volatile g_405;
    VECTOR(int64_t, 8) g_411;
    int16_t g_413;
    VECTOR(int32_t, 4) g_416;
    struct S0 g_419;
    uint64_t *g_464;
    VECTOR(uint32_t, 2) g_478;
    volatile int64_t g_484;
    volatile int64_t *g_483;
    volatile int8_t g_501;
    volatile int8_t *g_500;
    volatile int8_t ** volatile g_499[8][10];
    volatile struct S0 g_505;
    volatile struct S0 g_506;
    volatile int16_t g_522;
    volatile int16_t * volatile g_521;
    volatile int16_t * volatile *g_520;
    struct S0 g_524;
    struct S0 g_525;
    volatile VECTOR(int8_t, 8) g_549;
    volatile struct S0 g_560;
    volatile struct S0 g_576;
    int32_t ** volatile g_578;
    VECTOR(int8_t, 2) g_599;
    struct S0 g_610;
    VECTOR(int8_t, 8) g_655;
    VECTOR(int8_t, 4) g_656;
    VECTOR(uint32_t, 2) g_657;
    VECTOR(uint32_t, 2) g_660;
    VECTOR(uint16_t, 16) g_661;
    VECTOR(uint32_t, 2) g_663;
    uint8_t **g_671;
    uint8_t *** volatile g_670[10];
    uint8_t *** volatile g_672;
    volatile uint32_t g_674;
    volatile VECTOR(int16_t, 8) g_711;
    uint8_t g_722;
    int32_t ** volatile g_725;
    int32_t g_746;
    volatile uint32_t g_763;
    int32_t * volatile g_767;
    int32_t ** volatile g_769;
    int32_t ** volatile g_770;
    volatile int64_t g_774;
    struct S0 g_780;
    struct S0 g_782;
    VECTOR(uint16_t, 2) g_805;
    VECTOR(int16_t, 4) g_818;
    volatile VECTOR(int16_t, 4) g_819;
    VECTOR(uint64_t, 16) g_820;
    VECTOR(uint8_t, 2) g_849;
    VECTOR(int16_t, 4) g_854;
    VECTOR(uint32_t, 8) g_861;
    struct S0 g_863;
    uint64_t *** volatile g_867;
    uint64_t **g_869;
    uint64_t *** volatile g_868;
    uint16_t g_876;
    int32_t * volatile g_882[2][10];
    int32_t * volatile g_883;
    VECTOR(int16_t, 4) g_898;
    VECTOR(int16_t, 4) g_900;
    VECTOR(int16_t, 16) g_901;
    VECTOR(int16_t, 2) g_902;
    VECTOR(int16_t, 16) g_905;
    VECTOR(int16_t, 16) g_906;
    VECTOR(int16_t, 8) g_907;
    uint64_t g_911[9][1];
    VECTOR(int16_t, 8) g_913;
    int64_t g_924[9];
    int16_t **g_927;
    volatile VECTOR(int32_t, 8) g_931;
    int32_t ** volatile g_941[8][5][6];
    int8_t *g_948[1];
    uint16_t *g_953;
    uint16_t **g_952[5][8][2];
    uint16_t *** volatile g_951;
    VECTOR(int64_t, 8) g_957;
    volatile VECTOR(uint16_t, 16) g_986;
    VECTOR(uint16_t, 8) g_988;
    VECTOR(uint16_t, 8) g_990;
    uint8_t g_1009;
    volatile VECTOR(int32_t, 4) g_1014;
    int32_t g_1026;
    uint64_t *g_1035;
    struct S0 * volatile g_1063;
    volatile VECTOR(int8_t, 8) g_1073;
    volatile VECTOR(int8_t, 16) g_1077;
    int32_t ** volatile g_1090;
    int32_t ** volatile g_1091;
    int32_t ** volatile g_1092;
    volatile struct S0 g_1105;
    VECTOR(uint64_t, 2) g_1108;
    volatile VECTOR(int32_t, 8) g_1110;
    VECTOR(int16_t, 16) g_1115;
    volatile VECTOR(int8_t, 8) g_1116;
    volatile VECTOR(uint32_t, 16) g_1119;
    struct S0 g_1125;
    struct S0 *g_1124[5];
    int64_t g_1142[7];
    struct S0 g_1145;
    struct S0 g_1147;
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
uint32_t  func_1(struct S1 * p_1177);
uint64_t  func_10(uint8_t  p_11, uint32_t  p_12, uint32_t  p_13, struct S1 * p_1177);
uint8_t  func_26(int32_t  p_27, struct S1 * p_1177);
struct S0  func_50(uint64_t  p_51, int8_t  p_52, uint32_t  p_53, uint32_t  p_54, struct S1 * p_1177);
uint64_t  func_55(int8_t  p_56, struct S1 * p_1177);
int16_t  func_59(int16_t * p_60, uint32_t  p_61, int8_t  p_62, struct S1 * p_1177);
int16_t * func_63(int32_t  p_64, int16_t * p_65, int16_t * p_66, struct S1 * p_1177);
uint64_t  func_78(int16_t * p_79, int16_t * p_80, int16_t * p_81, int16_t * p_82, struct S1 * p_1177);
int8_t  func_83(int8_t  p_84, struct S1 * p_1177);
int32_t  func_94(uint64_t  p_95, struct S1 * p_1177);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1177->g_22 p_1177->g_33 p_1177->g_36 p_1177->g_43 p_1177->g_282.f0 p_1177->g_117.f3 p_1177->g_102 p_1177->g_132 p_1177->g_320 p_1177->g_419 p_1177->g_107 p_1177->g_101 p_1177->g_191 p_1177->g_464 p_1177->g_117.f1 p_1177->g_483 p_1177->g_499 p_1177->g_505 p_1177->g_278 p_1177->g_98.f2 p_1177->g_520 p_1177->g_524 p_1177->g_293 p_1177->g_404 p_1177->g_99 p_1177->g_98 p_1177->g_521 p_1177->g_522 p_1177->g_175 p_1177->g_674 p_1177->g_655 p_1177->g_47 p_1177->g_661 p_1177->g_711 p_1177->g_525.f0 p_1177->g_722 p_1177->g_725 p_1177->g_196 p_1177->g_367 p_1177->g_411 p_1177->g_368 p_1177->g_763 p_1177->g_767 p_1177->g_770 p_1177->g_780 p_1177->g_226 p_1177->g_413 p_1177->g_506.f0 p_1177->g_656 p_1177->g_782.f3 p_1177->g_525.f3 p_1177->g_484 p_1177->g_849 p_1177->g_854 p_1177->g_861 p_1177->g_863 p_1177->g_868 p_1177->g_746 p_1177->g_876 p_1177->g_599 p_1177->g_883 p_1177->g_805 p_1177->g_818 p_1177->g_819 p_1177->g_820 p_1177->g_326 p_1177->g_610.f0 p_1177->g_898 p_1177->g_900 p_1177->g_901 p_1177->g_902 p_1177->g_905 p_1177->g_906 p_1177->g_907 p_1177->g_913 p_1177->g_911 p_1177->g_924 p_1177->g_525.f1 p_1177->g_927 p_1177->g_931 p_1177->g_951 p_1177->g_957 p_1177->g_500 p_1177->g_501 p_1177->g_986 p_1177->g_988 p_1177->g_990 p_1177->g_1009 p_1177->g_1014 p_1177->g_1026 p_1177->g_1063 p_1177->g_610.f3 p_1177->g_1073 p_1177->g_1077 p_1177->g_1092 p_1177->g_1105 p_1177->g_1108 p_1177->g_1110 p_1177->g_1115 p_1177->g_1116 p_1177->g_1119 p_1177->g_1124 p_1177->g_610.f1 p_1177->g_1035 p_1177->g_1142 p_1177->g_1145
 * writes: p_1177->g_47 p_1177->g_101 p_1177->g_282.f0 p_1177->g_282.f1 p_1177->g_419 p_1177->g_196 p_1177->g_367 p_1177->g_413 p_1177->g_368 p_1177->g_464 p_1177->g_478 p_1177->g_499 p_1177->g_506 p_1177->g_525 p_1177->g_576 p_1177->g_524.f3 p_1177->g_293 p_1177->g_671 p_1177->g_674 p_1177->g_655 p_1177->g_722 p_1177->g_763 p_1177->g_782 p_1177->g_411 p_1177->g_780.f0 p_1177->g_98 p_1177->g_524.f1 p_1177->g_869 p_1177->g_746 p_1177->g_876 p_1177->g_863.f0 p_1177->g_911 p_1177->g_924 p_1177->g_927 p_1177->g_326 p_1177->g_610 p_1177->g_948 p_1177->g_952 p_1177->g_132 p_1177->g_1035 p_1177->g_898 p_1177->g_861 p_1177->g_900 p_1177->g_524 p_1177->g_1147 p_1177->g_1145.f0
 */
uint32_t  func_1(struct S1 * p_1177)
{ /* block id: 4 */
    uint64_t l_14 = 1UL;
    VECTOR(int64_t, 4) l_954 = (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 0x3B0140261A0BC048L), 0x3B0140261A0BC048L);
    VECTOR(int64_t, 8) l_958 = (VECTOR(int64_t, 8))((-6L), (VECTOR(int64_t, 4))((-6L), (VECTOR(int64_t, 2))((-6L), 0x65E4E178EA63CEE6L), 0x65E4E178EA63CEE6L), 0x65E4E178EA63CEE6L, (-6L), 0x65E4E178EA63CEE6L);
    VECTOR(uint64_t, 16) l_967 = (VECTOR(uint64_t, 16))(0xC12ADF655B532619L, (VECTOR(uint64_t, 4))(0xC12ADF655B532619L, (VECTOR(uint64_t, 2))(0xC12ADF655B532619L, 0x9410E9373A0ED866L), 0x9410E9373A0ED866L), 0x9410E9373A0ED866L, 0xC12ADF655B532619L, 0x9410E9373A0ED866L, (VECTOR(uint64_t, 2))(0xC12ADF655B532619L, 0x9410E9373A0ED866L), (VECTOR(uint64_t, 2))(0xC12ADF655B532619L, 0x9410E9373A0ED866L), 0xC12ADF655B532619L, 0x9410E9373A0ED866L, 0xC12ADF655B532619L, 0x9410E9373A0ED866L);
    VECTOR(uint64_t, 8) l_968 = (VECTOR(uint64_t, 8))(0xD9F864870241269EL, (VECTOR(uint64_t, 4))(0xD9F864870241269EL, (VECTOR(uint64_t, 2))(0xD9F864870241269EL, 0UL), 0UL), 0UL, 0xD9F864870241269EL, 0UL);
    VECTOR(uint64_t, 2) l_969 = (VECTOR(uint64_t, 2))(0x915182786CE80B90L, 1UL);
    VECTOR(uint8_t, 2) l_972 = (VECTOR(uint8_t, 2))(255UL, 0UL);
    uint64_t *l_973 = &p_1177->g_911[4][0];
    uint64_t l_974 = 0x8EEE775D7A357E57L;
    int16_t *l_975 = (void*)0;
    int16_t *l_976[2][8][2] = {{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}}};
    int32_t l_977 = 0x40D5CF4BL;
    uint64_t *l_978 = (void*)0;
    uint64_t *l_979 = (void*)0;
    uint64_t *l_980 = (void*)0;
    uint64_t *l_981 = &l_14;
    int16_t l_982 = 0x471BL;
    int32_t *l_983 = (void*)0;
    int32_t *l_984[9][10] = {{&p_1177->g_780.f0,&p_1177->g_863.f0,&p_1177->g_863.f0,&p_1177->g_780.f0,&p_1177->g_419.f0,&p_1177->g_282.f0,&p_1177->g_282.f0,&p_1177->g_419.f0,&p_1177->g_780.f0,&p_1177->g_863.f0},{&p_1177->g_780.f0,&p_1177->g_863.f0,&p_1177->g_863.f0,&p_1177->g_780.f0,&p_1177->g_419.f0,&p_1177->g_282.f0,&p_1177->g_282.f0,&p_1177->g_419.f0,&p_1177->g_780.f0,&p_1177->g_863.f0},{&p_1177->g_780.f0,&p_1177->g_863.f0,&p_1177->g_863.f0,&p_1177->g_780.f0,&p_1177->g_419.f0,&p_1177->g_282.f0,&p_1177->g_282.f0,&p_1177->g_419.f0,&p_1177->g_780.f0,&p_1177->g_863.f0},{&p_1177->g_780.f0,&p_1177->g_863.f0,&p_1177->g_863.f0,&p_1177->g_780.f0,&p_1177->g_419.f0,&p_1177->g_282.f0,&p_1177->g_282.f0,&p_1177->g_419.f0,&p_1177->g_780.f0,&p_1177->g_863.f0},{&p_1177->g_780.f0,&p_1177->g_863.f0,&p_1177->g_863.f0,&p_1177->g_780.f0,&p_1177->g_419.f0,&p_1177->g_282.f0,&p_1177->g_282.f0,&p_1177->g_419.f0,&p_1177->g_780.f0,&p_1177->g_863.f0},{&p_1177->g_780.f0,&p_1177->g_863.f0,&p_1177->g_863.f0,&p_1177->g_780.f0,&p_1177->g_419.f0,&p_1177->g_282.f0,&p_1177->g_282.f0,&p_1177->g_419.f0,&p_1177->g_780.f0,&p_1177->g_863.f0},{&p_1177->g_780.f0,&p_1177->g_863.f0,&p_1177->g_863.f0,&p_1177->g_780.f0,&p_1177->g_419.f0,&p_1177->g_282.f0,&p_1177->g_282.f0,&p_1177->g_419.f0,&p_1177->g_780.f0,&p_1177->g_863.f0},{&p_1177->g_780.f0,&p_1177->g_863.f0,&p_1177->g_863.f0,&p_1177->g_780.f0,&p_1177->g_419.f0,&p_1177->g_282.f0,&p_1177->g_282.f0,&p_1177->g_419.f0,&p_1177->g_780.f0,&p_1177->g_863.f0},{&p_1177->g_780.f0,&p_1177->g_863.f0,&p_1177->g_863.f0,&p_1177->g_780.f0,&p_1177->g_419.f0,&p_1177->g_282.f0,&p_1177->g_282.f0,&p_1177->g_419.f0,&p_1177->g_780.f0,&p_1177->g_863.f0}};
    int64_t l_985 = 1L;
    VECTOR(uint16_t, 4) l_987 = (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 0x9149L), 0x9149L);
    int8_t l_1010 = 0L;
    uint32_t *l_1018 = (void*)0;
    uint32_t *l_1019 = (void*)0;
    VECTOR(uint32_t, 4) l_1027 = (VECTOR(uint32_t, 4))(0x59C751BDL, (VECTOR(uint32_t, 2))(0x59C751BDL, 1UL), 1UL);
    int8_t l_1126 = 0L;
    uint16_t **l_1134 = &p_1177->g_953;
    VECTOR(int32_t, 8) l_1137 = (VECTOR(int32_t, 8))(0x316A66ECL, (VECTOR(int32_t, 4))(0x316A66ECL, (VECTOR(int32_t, 2))(0x316A66ECL, (-2L)), (-2L)), (-2L), 0x316A66ECL, (-2L));
    uint8_t l_1143 = 0UL;
    int32_t l_1170 = 8L;
    int16_t l_1174 = 3L;
    int i, j, k;
    l_985 = (safe_mod_func_int32_t_s_s(((safe_rshift_func_uint8_t_u_u(((-1L) > (l_982 = ((*l_981) = (safe_mul_func_int8_t_s_s((((l_977 = ((safe_lshift_func_int16_t_s_s((func_10(l_14, l_14, l_14, p_1177) || (((*l_973) = (((((VECTOR(int64_t, 8))(l_954.xxxyzwzx)).s3 >= (((~(safe_sub_func_int16_t_s_s(((((((VECTOR(int64_t, 16))(min(((VECTOR(int64_t, 2))(rhadd(((VECTOR(int64_t, 2))(sub_sat(((VECTOR(int64_t, 16))((-10L), ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 4))(sub_sat(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 2))(0L, 0x62C5BF11B07FF790L)))).yxyyxyyx)).even, ((VECTOR(int64_t, 4))(p_1177->g_957.s7227))))).even)), ((VECTOR(int64_t, 8))(rotate(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 4))(hadd(((VECTOR(int64_t, 2))(l_958.s36)).xxxx, ((VECTOR(int64_t, 8))(safe_clamp_func(VECTOR(int64_t, 8),VECTOR(int64_t, 8),((VECTOR(int64_t, 8))(rhadd(((VECTOR(int64_t, 16))(1L, (safe_lshift_func_int16_t_s_s((l_14 != FAKE_DIVERGE(p_1177->global_1_offset, get_global_id(1), 10)), (safe_div_func_uint32_t_u_u((((safe_sub_func_int8_t_s_s(0x44L, (safe_div_func_uint64_t_u_u((((((VECTOR(uint64_t, 8))(mad_hi(((VECTOR(uint64_t, 16))(mad_hi(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 2))(l_967.sa0)))).xyxyyxxyyyyxyyxx, ((VECTOR(uint64_t, 4))(l_968.s3377)).yxxzzywyzwywzwyx, ((VECTOR(uint64_t, 16))(l_969.xyxyxxyxyxyxyxxx))))).hi, ((VECTOR(uint64_t, 4))(mad_hi(((VECTOR(uint64_t, 8))(0x3FAECB29D0E13631L, 0x7C5ECD8C3D08EE31L, 5UL, ((safe_mul_func_int8_t_s_s((*p_1177->g_500), ((VECTOR(uint8_t, 4))(l_972.yyxx)).y)) , ((*p_1177->g_521) == l_968.s7)), ((VECTOR(uint64_t, 2))(0x63B33AFA6644D225L)), 0x1BC2CF152B8772C8L, 18446744073709551615UL)).lo, ((VECTOR(uint64_t, 4))(18446744073709551615UL)), ((VECTOR(uint64_t, 4))(1UL))))).zyxywxzx, ((VECTOR(uint64_t, 8))(0UL))))).s0 ^ 0x55C11ED83C6588AEL) ^ l_968.s6) >= l_967.s9), l_968.s1)))) > l_972.y) < l_958.s1), l_968.s3)))), 8L, l_969.y, 1L, 0x76C290CE54C0BDD4L, 1L, 0x25C1D1AAB4B5DD52L, 1L, l_972.y, ((VECTOR(int64_t, 4))(0x56914361D84730BFL)), 1L, 0x3C3021C33ACC08A2L)).even, ((VECTOR(int64_t, 8))(0x06767788E4698C25L))))), ((VECTOR(int64_t, 8))((-6L))), ((VECTOR(int64_t, 8))(0x0B0D5953032CBB51L))))).hi))).odd)).xxxyxyxx, ((VECTOR(int64_t, 8))(1L))))), (-1L), 0x331B0C53B523C64CL, ((VECTOR(int64_t, 2))(0x3725104E6320DA76L)), 0x4719112C74EF4DC0L)).s9d, ((VECTOR(int64_t, 2))(0x306E5F2F5AFE05BFL))))), ((VECTOR(int64_t, 2))((-10L)))))).xxyxxyyyxyxxyyxy, (int64_t)(*p_1177->g_483)))).sf > 0x2548BED1BE608A3CL) & p_1177->g_818.w) < l_954.z) < 1L), p_1177->g_924[3]))) , (void*)0) != (void*)0)) >= 0x6CL) >= GROUP_DIVERGE(0, 1))) , l_972.y)), l_974)) , l_14)) != l_954.y) >= l_972.y), l_972.x))))), l_954.z)) ^ l_958.s0), p_1177->g_805.x));
    if ((*p_1177->g_883))
    { /* block id: 385 */
        return p_1177->g_36.s2;
    }
    else
    { /* block id: 387 */
        VECTOR(uint16_t, 16) l_989 = (VECTOR(uint16_t, 16))(0xB73AL, (VECTOR(uint16_t, 4))(0xB73AL, (VECTOR(uint16_t, 2))(0xB73AL, 0xE8EEL), 0xE8EEL), 0xE8EEL, 0xB73AL, 0xE8EEL, (VECTOR(uint16_t, 2))(0xB73AL, 0xE8EEL), (VECTOR(uint16_t, 2))(0xB73AL, 0xE8EEL), 0xB73AL, 0xE8EEL, 0xB73AL, 0xE8EEL);
        int32_t l_991[1][8][1] = {{{(-6L)},{(-6L)},{(-6L)},{(-6L)},{(-6L)},{(-6L)},{(-6L)},{(-6L)}}};
        uint16_t l_1002 = 0UL;
        uint8_t l_1011 = 2UL;
        uint32_t *l_1015 = (void*)0;
        int32_t l_1025 = 0x777CC3B1L;
        uint64_t *l_1033 = &p_1177->g_911[3][0];
        int16_t l_1042 = 0x4685L;
        VECTOR(int32_t, 4) l_1078 = (VECTOR(int32_t, 4))(0x0ECDE38BL, (VECTOR(int32_t, 2))(0x0ECDE38BL, 0L), 0L);
        int32_t l_1094 = 6L;
        int32_t l_1095 = 0x351DC76DL;
        int32_t l_1096 = 0x1F72A6F4L;
        int32_t l_1097[7] = {7L,0x7176359CL,7L,7L,0x7176359CL,7L,7L};
        int32_t l_1099 = 0x601C5B45L;
        VECTOR(int32_t, 8) l_1109 = (VECTOR(int32_t, 8))((-3L), (VECTOR(int32_t, 4))((-3L), (VECTOR(int32_t, 2))((-3L), 1L), 1L), 1L, (-3L), 1L);
        uint32_t l_1128 = 0xB3B2E6EAL;
        uint32_t l_1155 = 0x693B8D24L;
        int32_t **l_1175 = &l_983;
        int32_t **l_1176 = &p_1177->g_101;
        int i, j, k;
        if (((((VECTOR(uint16_t, 4))(mad_hi(((VECTOR(uint16_t, 16))(mad_hi(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 16))(p_1177->g_986.sba57dfe526c9d12d)).lo)).s0443704052173004, ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 8))(min(((VECTOR(uint16_t, 16))(l_987.wxwyzxyyxxxzyzyy)).odd, ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(p_1177->g_988.s24)).xyxxxyyy))))).odd)).ywxxzyxywwxzyxyy)).sd970)).odd)).xxyyyxyyyyxxxyyy, ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 2))(l_989.s23)))), 65535UL, 0xD0BEL)).wzyzxzyzyyzzyyyw))).s93a3, ((VECTOR(uint16_t, 16))(p_1177->g_990.s3471536014677412)).sd2b3, ((VECTOR(uint16_t, 16))(0x9ED0L, 9UL, ((l_991[0][2][0] , ((safe_mul_func_int16_t_s_s((safe_mul_func_int8_t_s_s(((((safe_rshift_func_int16_t_s_u((((safe_add_func_int16_t_s_s((((*p_1177->g_521) , l_989.sc) | ((l_989.s4 & ((((safe_sub_func_uint8_t_u_u((((((l_991[0][6][0] > (((p_1177->g_132.w |= ((l_1002 | (((*l_981) = (((safe_mod_func_uint64_t_u_u(((((safe_mul_func_int8_t_s_s(((safe_mul_func_int8_t_s_s((~l_989.sa), ((void*)0 == &p_1177->g_869))) | 8L), 0x70L)) && p_1177->g_368) <= l_989.se) | l_989.sb), l_991[0][4][0])) || l_1002) < 0x515EL)) <= p_1177->g_411.s1)) || 0x5CD25E35L)) <= p_1177->g_22) & l_1002)) <= l_991[0][2][0]) != FAKE_DIVERGE(p_1177->global_0_offset, get_global_id(0), 10)) ^ l_991[0][2][0]) && l_991[0][2][0]), p_1177->g_1009)) != l_991[0][2][0]) || 1L) || p_1177->g_818.w)) | l_989.s6)), l_989.s9)) || l_1010) != p_1177->g_780.f1), 0)) , l_1011) , FAKE_DIVERGE(p_1177->group_1_offset, get_group_id(1), 10)) != l_1002), 0UL)), (-1L))) , l_991[0][2][0])) ^ l_989.s7), ((VECTOR(uint16_t, 4))(65527UL)), ((VECTOR(uint16_t, 4))(0UL)), l_991[0][2][0], ((VECTOR(uint16_t, 4))(0UL)))).s1230))).x & p_1177->g_404.y) | p_1177->g_599.x))
        { /* block id: 390 */
            uint32_t **l_1016 = (void*)0;
            uint32_t **l_1017[1][7][9] = {{{(void*)0,&l_1015,&l_1015,&l_1015,(void*)0,(void*)0,&l_1015,&l_1015,&l_1015},{(void*)0,&l_1015,&l_1015,&l_1015,(void*)0,(void*)0,&l_1015,&l_1015,&l_1015},{(void*)0,&l_1015,&l_1015,&l_1015,(void*)0,(void*)0,&l_1015,&l_1015,&l_1015},{(void*)0,&l_1015,&l_1015,&l_1015,(void*)0,(void*)0,&l_1015,&l_1015,&l_1015},{(void*)0,&l_1015,&l_1015,&l_1015,(void*)0,(void*)0,&l_1015,&l_1015,&l_1015},{(void*)0,&l_1015,&l_1015,&l_1015,(void*)0,(void*)0,&l_1015,&l_1015,&l_1015},{(void*)0,&l_1015,&l_1015,&l_1015,(void*)0,(void*)0,&l_1015,&l_1015,&l_1015}}};
            int32_t l_1024 = (-1L);
            int32_t l_1093[6] = {0x19A5325AL,(-1L),0x19A5325AL,0x19A5325AL,(-1L),0x19A5325AL};
            int64_t l_1129 = 0L;
            int16_t l_1151 = 0x5A5DL;
            uint64_t ***l_1158 = &p_1177->g_869;
            int i, j, k;
            if (((((&p_1177->g_869 != (void*)0) >= (safe_sub_func_int32_t_s_s(((l_1025 = ((VECTOR(int32_t, 2))(hadd(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 8))(min(((VECTOR(int32_t, 4))((-4L), ((VECTOR(int32_t, 2))(max(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(min(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(p_1177->g_1014.xwyxzwyy)).s67)), 6L, 0x26C886EEL)), ((&p_1177->g_674 != (l_1019 = (l_1018 = l_1015))) || (**p_1177->g_520)), (safe_mod_func_int16_t_s_s((~(l_991[0][4][0] <= 18446744073709551613UL)), (safe_lshift_func_int16_t_s_u((l_989.s0 , 0x2C62L), FAKE_DIVERGE(p_1177->global_0_offset, get_global_id(0), 10))))), ((VECTOR(int32_t, 8))(0x16B695C5L)), 0x7E0C84B1L, 0x3AEE51F8L)).even, (int32_t)0x78B54322L))).s7153406712277211)).sac, (int32_t)l_1024))), 5L)).xxzwxxwx, ((VECTOR(int32_t, 8))(0L))))).hi, ((VECTOR(int32_t, 4))(3L))))).yyyzxxxyyxzxyxxw)).saf, ((VECTOR(int32_t, 2))(0x652CA267L))))).odd) < p_1177->g_990.s7), p_1177->g_1026))) && l_1027.w) | l_1024))
            { /* block id: 394 */
                uint64_t **l_1034[6][5][3] = {{{(void*)0,&l_1033,&l_973},{(void*)0,&l_1033,&l_973},{(void*)0,&l_1033,&l_973},{(void*)0,&l_1033,&l_973},{(void*)0,&l_1033,&l_973}},{{(void*)0,&l_1033,&l_973},{(void*)0,&l_1033,&l_973},{(void*)0,&l_1033,&l_973},{(void*)0,&l_1033,&l_973},{(void*)0,&l_1033,&l_973}},{{(void*)0,&l_1033,&l_973},{(void*)0,&l_1033,&l_973},{(void*)0,&l_1033,&l_973},{(void*)0,&l_1033,&l_973},{(void*)0,&l_1033,&l_973}},{{(void*)0,&l_1033,&l_973},{(void*)0,&l_1033,&l_973},{(void*)0,&l_1033,&l_973},{(void*)0,&l_1033,&l_973},{(void*)0,&l_1033,&l_973}},{{(void*)0,&l_1033,&l_973},{(void*)0,&l_1033,&l_973},{(void*)0,&l_1033,&l_973},{(void*)0,&l_1033,&l_973},{(void*)0,&l_1033,&l_973}},{{(void*)0,&l_1033,&l_973},{(void*)0,&l_1033,&l_973},{(void*)0,&l_1033,&l_973},{(void*)0,&l_1033,&l_973},{(void*)0,&l_1033,&l_973}}};
                int32_t l_1061 = (-2L);
                VECTOR(uint8_t, 2) l_1072 = (VECTOR(uint8_t, 2))(255UL, 0x1DL);
                uint16_t l_1076 = 0xB020L;
                int32_t *l_1088 = (void*)0;
                int i, j, k;
                for (p_1177->g_876 = 0; (p_1177->g_876 <= 1); p_1177->g_876 = safe_add_func_int64_t_s_s(p_1177->g_876, 4))
                { /* block id: 397 */
                    int32_t l_1030 = (-1L);
                    l_1024 = 0x3A06C67EL;
                    (*p_1177->g_883) = ((VECTOR(int32_t, 4))(0x49C8631CL, 1L, 1L, 0x40D42AF7L)).x;
                    l_1025 = l_1030;
                }
                if ((safe_sub_func_int64_t_s_s((p_1177->g_610.f0 | (((p_1177->g_1035 = l_1033) == &p_1177->g_911[1][0]) && 0x17A0E843L)), ((0x30L != (*p_1177->g_500)) , ((*l_981) = l_1024)))))
                { /* block id: 404 */
                    int32_t l_1040 = 0x58785CA7L;
                    int8_t l_1041 = 1L;
                    uint16_t *l_1062 = &p_1177->g_524.f3;
                    int32_t l_1066 = 1L;
                    struct S0 *l_1081 = &p_1177->g_610;
                    struct S0 **l_1080 = &l_1081;
                    (*p_1177->g_1063) = func_50(((GROUP_DIVERGE(1, 1) != (safe_sub_func_uint16_t_u_u((safe_mul_func_int16_t_s_s((p_1177->g_898.w ^= (l_1040 <= (l_1041 & FAKE_DIVERGE(p_1177->group_1_offset, get_group_id(1), 10)))), (GROUP_DIVERGE(0, 1) < l_1042))), ((VECTOR(uint16_t, 16))(65535UL, 1UL, (safe_add_func_uint16_t_u_u((safe_rshift_func_uint16_t_u_u((safe_div_func_int8_t_s_s((safe_add_func_uint64_t_u_u(0x1BB1EA3053D4DBB4L, (((*l_981) = ((--p_1177->g_861.s7) & ((((p_1177->g_900.x &= 0L) || (safe_sub_func_uint16_t_u_u((0x07L || (l_1025 = (((safe_add_func_uint32_t_u_u((safe_rshift_func_int16_t_s_u(l_1040, ((*l_1062) |= (safe_sub_func_int32_t_s_s((l_1011 || (*p_1177->g_500)), l_1061))))), 0x126AA3A3L)) > p_1177->g_282.f0) | 0xBBEAF2CF4F1F254BL))), l_1061))) >= FAKE_DIVERGE(p_1177->group_1_offset, get_group_id(1), 10)) || 0xAEECL))) || 0x98DDD26B6ED58ED9L))), l_1040)), GROUP_DIVERGE(1, 1))), (-10L))), ((VECTOR(uint16_t, 2))(0x26A0L)), ((VECTOR(uint16_t, 2))(0x6C1AL)), l_991[0][2][0], ((VECTOR(uint16_t, 4))(1UL)), 0x3DAAL, 0x133EL, 0x5720L, 0UL)).s2))) <= GROUP_DIVERGE(2, 1)), l_1041, l_991[0][2][0], p_1177->g_368, p_1177);
                    for (p_1177->g_610.f3 = 0; (p_1177->g_610.f3 < 49); p_1177->g_610.f3 = safe_add_func_uint32_t_u_u(p_1177->g_610.f3, 1))
                    { /* block id: 414 */
                        uint8_t l_1067 = 249UL;
                        int32_t l_1079 = 7L;
                        ++l_1067;
                        l_1079 &= ((safe_mod_func_uint16_t_u_u(1UL, GROUP_DIVERGE(0, 1))) , ((*p_1177->g_101) = (((VECTOR(uint8_t, 8))(GROUP_DIVERGE(0, 1), ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(hadd(((VECTOR(uint8_t, 2))(l_1072.xx)), ((VECTOR(uint8_t, 2))(abs(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 16))(p_1177->g_1073.s5142635064634132)).s02)), 0x68L, (safe_sub_func_uint64_t_u_u(l_1076, l_1066)), ((VECTOR(int8_t, 2))(p_1177->g_1077.s2a)), 0x4FL, 0x44L)))).s10)))))).yyyyxyxy)).lo)), (FAKE_DIVERGE(p_1177->global_0_offset, get_global_id(0), 10) <= (l_1078.y | 0x91C8L)), 2UL, 1UL)).s7 > l_1024)));
                        if (l_1072.x)
                            continue;
                    }
                    (*p_1177->g_101) = (-5L);
                    (*l_1080) = (void*)0;
                }
                else
                { /* block id: 422 */
                    int32_t **l_1082 = &l_984[0][7];
                    (*l_1082) = &l_1024;
                    for (p_1177->g_282.f0 = 0; (p_1177->g_282.f0 == 9); p_1177->g_282.f0++)
                    { /* block id: 426 */
                        int32_t l_1085 = 0L;
                        return l_1085;
                    }
                    for (l_1024 = 0; (l_1024 > (-20)); l_1024--)
                    { /* block id: 431 */
                        l_1088 = (*p_1177->g_770);
                        (*l_1082) = &l_977;
                        if (l_1024)
                            continue;
                        return p_1177->g_411.s2;
                    }
                }
                return l_991[0][2][0];
            }
            else
            { /* block id: 439 */
                int32_t **l_1089 = (void*)0;
                int32_t l_1098[1][1];
                uint8_t l_1100 = 1UL;
                uint8_t l_1127[2];
                uint16_t **l_1132 = &p_1177->g_953;
                int16_t **l_1141 = &l_976[0][4][1];
                int i, j;
                for (i = 0; i < 1; i++)
                {
                    for (j = 0; j < 1; j++)
                        l_1098[i][j] = (-10L);
                }
                for (i = 0; i < 2; i++)
                    l_1127[i] = 0xC7L;
                (*p_1177->g_767) |= l_1078.w;
                (*p_1177->g_1092) = &l_1025;
                --l_1100;
                if (((((safe_sub_func_uint32_t_u_u(((p_1177->g_1105 , ((safe_lshift_func_int16_t_s_u(((((l_1097[2] = ((VECTOR(uint64_t, 4))(p_1177->g_1108.xxxx)).x) >= ((((l_1093[5] = ((*p_1177->g_101) = ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 16))(l_1109.s5313043021360652)).s53, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(0x5F33C9F7L, (-10L), (l_1011 < l_989.s0), ((VECTOR(int32_t, 2))(p_1177->g_1110.s14)), (safe_rshift_func_int8_t_s_s((((safe_mul_func_int16_t_s_s(((VECTOR(int16_t, 16))(max(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(p_1177->g_1115.s1b2d1c76)).s2322113350346277)), (int16_t)((((!((VECTOR(int8_t, 2))(((VECTOR(int8_t, 16))(p_1177->g_1116.s4174404236655464)).sf3)).odd) || (((safe_mod_func_int8_t_s_s((((VECTOR(uint32_t, 8))(p_1177->g_1119.s925e3125)).s6 & (safe_lshift_func_int16_t_s_u((0UL == (((((p_1177->g_1124[0] == (void*)0) > (p_1177->g_927 != p_1177->g_927)) | ((void*)0 == &p_1177->g_1035)) | 0UL) == 0x22L)), l_1126))), 0xDEL)) ^ l_1127[1]) > l_1042)) & l_991[0][4][0]) ^ l_1128)))).s4, (-9L))) == l_991[0][7][0]) | 0x10L), l_1093[0])), ((VECTOR(int32_t, 4))(0x28265EEEL)), ((VECTOR(int32_t, 2))(1L)), 0x11C22AD2L, (*p_1177->g_767), 0x752EA7FAL, 0x48CB285DL)).odd)).s26))), 0x42AB55A2L, 0x7727F9FEL)).wwwwzxyxwyxzyzzz)).s7)) && 0x08941092L) ^ l_1127[1]) > l_1024)) <= p_1177->g_191.x) && 0x0B58D03102ED47AEL), l_1129)) == (-6L))) != l_1024), l_1129)) != FAKE_DIVERGE(p_1177->global_1_offset, get_global_id(1), 10)) < p_1177->g_610.f1) && 0UL))
                { /* block id: 446 */
                    int16_t l_1144 = (-1L);
                    struct S0 *l_1146[5][4][4] = {{{&p_1177->g_419,&p_1177->g_782,&p_1177->g_863,&p_1177->g_863},{&p_1177->g_419,&p_1177->g_782,&p_1177->g_863,&p_1177->g_863},{&p_1177->g_419,&p_1177->g_782,&p_1177->g_863,&p_1177->g_863},{&p_1177->g_419,&p_1177->g_782,&p_1177->g_863,&p_1177->g_863}},{{&p_1177->g_419,&p_1177->g_782,&p_1177->g_863,&p_1177->g_863},{&p_1177->g_419,&p_1177->g_782,&p_1177->g_863,&p_1177->g_863},{&p_1177->g_419,&p_1177->g_782,&p_1177->g_863,&p_1177->g_863},{&p_1177->g_419,&p_1177->g_782,&p_1177->g_863,&p_1177->g_863}},{{&p_1177->g_419,&p_1177->g_782,&p_1177->g_863,&p_1177->g_863},{&p_1177->g_419,&p_1177->g_782,&p_1177->g_863,&p_1177->g_863},{&p_1177->g_419,&p_1177->g_782,&p_1177->g_863,&p_1177->g_863},{&p_1177->g_419,&p_1177->g_782,&p_1177->g_863,&p_1177->g_863}},{{&p_1177->g_419,&p_1177->g_782,&p_1177->g_863,&p_1177->g_863},{&p_1177->g_419,&p_1177->g_782,&p_1177->g_863,&p_1177->g_863},{&p_1177->g_419,&p_1177->g_782,&p_1177->g_863,&p_1177->g_863},{&p_1177->g_419,&p_1177->g_782,&p_1177->g_863,&p_1177->g_863}},{{&p_1177->g_419,&p_1177->g_782,&p_1177->g_863,&p_1177->g_863},{&p_1177->g_419,&p_1177->g_782,&p_1177->g_863,&p_1177->g_863},{&p_1177->g_419,&p_1177->g_782,&p_1177->g_863,&p_1177->g_863},{&p_1177->g_419,&p_1177->g_782,&p_1177->g_863,&p_1177->g_863}}};
                    int32_t **l_1148 = &l_983;
                    int i, j, k;
                    for (l_974 = 0; (l_974 < 41); l_974++)
                    { /* block id: 449 */
                        uint16_t ***l_1133 = &l_1132;
                        (*p_1177->g_101) &= (((((((*l_1133) = l_1132) != l_1134) , (safe_add_func_int32_t_s_s(((VECTOR(int32_t, 8))(0x02669769L, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 2))(clz(((VECTOR(int32_t, 2))(l_1137.s76))))), ((VECTOR(int32_t, 8))((-3L), 0x7C70819FL, 0x2A41934FL, 0L, 5L, 0x0EF7C3C6L, 1L, 4L)).s41))).yyyy)))), 0L, (-8L), 0x6FB72C46L)).s0, (((*p_1177->g_1035) &= 1UL) , 4294967291UL)))) <= l_1097[2]) | ((((*p_1177->g_320) || ((safe_unary_minus_func_uint16_t_u((GROUP_DIVERGE(2, 1) >= ((0xDD7F2EC6L | (safe_lshift_func_int16_t_s_u((*p_1177->g_521), 1))) < (l_1141 == (void*)0))))) < p_1177->g_1142[6])) | l_1143) && l_1144)) | p_1177->g_610.f3);
                    }
                    p_1177->g_1147 = p_1177->g_1145;
                    (*l_1148) = &l_977;
                    for (p_1177->g_1145.f0 = (-15); (p_1177->g_1145.f0 > 14); p_1177->g_1145.f0 = safe_add_func_uint8_t_u_u(p_1177->g_1145.f0, 5))
                    { /* block id: 458 */
                        (*l_983) = 0L;
                    }
                }
                else
                { /* block id: 461 */
                    int64_t l_1152 = 0x64FE94EEB710C4EFL;
                    int32_t l_1153 = (-1L);
                    VECTOR(int32_t, 4) l_1154 = (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 1L), 1L);
                    int i;
                    l_1155--;
                    if ((l_1158 != l_1158))
                    { /* block id: 463 */
                        uint8_t l_1159 = 255UL;
                        l_1159 |= 0x7CA5211DL;
                        return l_1159;
                    }
                    else
                    { /* block id: 466 */
                        uint16_t l_1160 = 0x3831L;
                        l_1160--;
                        return p_1177->g_931.s7;
                    }
                }
            }
        }
        else
        { /* block id: 472 */
            VECTOR(uint16_t, 4) l_1163 = (VECTOR(uint16_t, 4))(65528UL, (VECTOR(uint16_t, 2))(65528UL, 65531UL), 65531UL);
            uint32_t l_1171 = 9UL;
            int i;
            l_1163.x--;
            (*p_1177->g_883) = (safe_lshift_func_uint8_t_u_u((l_1025 , l_1163.w), (safe_sub_func_int8_t_s_s(l_1170, 0x0AL))));
            l_1171--;
            return l_1174;
        }
        (*l_1176) = ((*l_1175) = &l_1170);
        (*l_983) = 1L;
        return p_1177->g_524.f0;
    }
}


/* ------------------------------------------ */
/* 
 * reads : p_1177->g_22 p_1177->g_33 p_1177->g_36 p_1177->g_43 p_1177->g_282.f0 p_1177->g_117.f3 p_1177->g_102 p_1177->g_132 p_1177->g_320 p_1177->g_419 p_1177->g_107 p_1177->g_101 p_1177->g_191 p_1177->g_464 p_1177->g_117.f1 p_1177->g_483 p_1177->g_499 p_1177->g_505 p_1177->g_278 p_1177->g_98.f2 p_1177->g_520 p_1177->g_524 p_1177->g_293 p_1177->g_404 p_1177->g_99 p_1177->g_98 p_1177->g_521 p_1177->g_522 p_1177->g_175 p_1177->g_674 p_1177->g_655 p_1177->g_47 p_1177->g_661 p_1177->g_711 p_1177->g_525.f0 p_1177->g_722 p_1177->g_725 p_1177->g_196 p_1177->g_367 p_1177->g_411 p_1177->g_368 p_1177->g_763 p_1177->g_767 p_1177->g_770 p_1177->g_780 p_1177->g_226 p_1177->g_413 p_1177->g_506.f0 p_1177->g_656 p_1177->g_782.f3 p_1177->g_525.f3 p_1177->g_484 p_1177->g_849 p_1177->g_854 p_1177->g_861 p_1177->g_863 p_1177->g_868 p_1177->g_746 p_1177->g_876 p_1177->g_599 p_1177->g_883 p_1177->g_805 p_1177->g_818 p_1177->g_819 p_1177->g_820 p_1177->g_326 p_1177->g_610.f0 p_1177->g_898 p_1177->g_900 p_1177->g_901 p_1177->g_902 p_1177->g_905 p_1177->g_906 p_1177->g_907 p_1177->g_913 p_1177->g_911 p_1177->g_924 p_1177->g_525.f1 p_1177->g_927 p_1177->g_931 p_1177->g_951
 * writes: p_1177->g_47 p_1177->g_101 p_1177->g_282.f0 p_1177->g_282.f1 p_1177->g_419 p_1177->g_196 p_1177->g_367 p_1177->g_413 p_1177->g_368 p_1177->g_464 p_1177->g_478 p_1177->g_499 p_1177->g_506 p_1177->g_525 p_1177->g_576 p_1177->g_524.f3 p_1177->g_293 p_1177->g_671 p_1177->g_674 p_1177->g_655 p_1177->g_722 p_1177->g_763 p_1177->g_782 p_1177->g_411 p_1177->g_780.f0 p_1177->g_98 p_1177->g_524.f1 p_1177->g_869 p_1177->g_746 p_1177->g_876 p_1177->g_863.f0 p_1177->g_911 p_1177->g_924 p_1177->g_927 p_1177->g_326 p_1177->g_610 p_1177->g_948 p_1177->g_952
 */
uint64_t  func_10(uint8_t  p_11, uint32_t  p_12, uint32_t  p_13, struct S1 * p_1177)
{ /* block id: 5 */
    VECTOR(uint8_t, 16) l_17 = (VECTOR(uint8_t, 16))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 0x63L), 0x63L), 0x63L, 1UL, 0x63L, (VECTOR(uint8_t, 2))(1UL, 0x63L), (VECTOR(uint8_t, 2))(1UL, 0x63L), 1UL, 0x63L, 1UL, 0x63L);
    VECTOR(uint8_t, 16) l_18 = (VECTOR(uint8_t, 16))(250UL, (VECTOR(uint8_t, 4))(250UL, (VECTOR(uint8_t, 2))(250UL, 0x21L), 0x21L), 0x21L, 250UL, 0x21L, (VECTOR(uint8_t, 2))(250UL, 0x21L), (VECTOR(uint8_t, 2))(250UL, 0x21L), 250UL, 0x21L, 250UL, 0x21L);
    int16_t *l_21[8][7] = {{(void*)0,&p_1177->g_22,(void*)0,&p_1177->g_22,(void*)0,(void*)0,&p_1177->g_22},{(void*)0,&p_1177->g_22,(void*)0,&p_1177->g_22,(void*)0,(void*)0,&p_1177->g_22},{(void*)0,&p_1177->g_22,(void*)0,&p_1177->g_22,(void*)0,(void*)0,&p_1177->g_22},{(void*)0,&p_1177->g_22,(void*)0,&p_1177->g_22,(void*)0,(void*)0,&p_1177->g_22},{(void*)0,&p_1177->g_22,(void*)0,&p_1177->g_22,(void*)0,(void*)0,&p_1177->g_22},{(void*)0,&p_1177->g_22,(void*)0,&p_1177->g_22,(void*)0,(void*)0,&p_1177->g_22},{(void*)0,&p_1177->g_22,(void*)0,&p_1177->g_22,(void*)0,(void*)0,&p_1177->g_22},{(void*)0,&p_1177->g_22,(void*)0,&p_1177->g_22,(void*)0,(void*)0,&p_1177->g_22}};
    int32_t l_23 = 0x550E8F7CL;
    VECTOR(int32_t, 4) l_28 = (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, (-1L)), (-1L));
    VECTOR(int32_t, 4) l_29 = (VECTOR(int32_t, 4))(0x1E8BFA08L, (VECTOR(int32_t, 2))(0x1E8BFA08L, 0x2AD14CA7L), 0x2AD14CA7L);
    VECTOR(int32_t, 4) l_30 = (VECTOR(int32_t, 4))(0x6F2B5D06L, (VECTOR(int32_t, 2))(0x6F2B5D06L, 0x21E52503L), 0x21E52503L);
    VECTOR(int32_t, 16) l_31 = (VECTOR(int32_t, 16))(0x615A0349L, (VECTOR(int32_t, 4))(0x615A0349L, (VECTOR(int32_t, 2))(0x615A0349L, 0L), 0L), 0L, 0x615A0349L, 0L, (VECTOR(int32_t, 2))(0x615A0349L, 0L), (VECTOR(int32_t, 2))(0x615A0349L, 0L), 0x615A0349L, 0L, 0x615A0349L, 0L);
    VECTOR(int16_t, 4) l_32 = (VECTOR(int16_t, 4))((-8L), (VECTOR(int16_t, 2))((-8L), 1L), 1L);
    VECTOR(uint16_t, 2) l_34 = (VECTOR(uint16_t, 2))(0UL, 65528UL);
    VECTOR(uint16_t, 4) l_35 = (VECTOR(uint16_t, 4))(0x3D00L, (VECTOR(uint16_t, 2))(0x3D00L, 0xE410L), 0xE410L);
    VECTOR(uint8_t, 4) l_37 = (VECTOR(uint8_t, 4))(0x2FL, (VECTOR(uint8_t, 2))(0x2FL, 252UL), 252UL);
    VECTOR(uint8_t, 8) l_38 = (VECTOR(uint8_t, 8))(0x45L, (VECTOR(uint8_t, 4))(0x45L, (VECTOR(uint8_t, 2))(0x45L, 0x9EL), 0x9EL), 0x9EL, 0x45L, 0x9EL);
    VECTOR(uint8_t, 2) l_39 = (VECTOR(uint8_t, 2))(0UL, 255UL);
    VECTOR(int32_t, 2) l_40 = (VECTOR(int32_t, 2))(0x4758019DL, (-6L));
    uint8_t *l_888[5][9][5] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
    int32_t *l_889 = &p_1177->g_525.f0;
    VECTOR(int16_t, 8) l_899 = (VECTOR(int16_t, 8))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0L), 0L), 0L, (-1L), 0L);
    VECTOR(int16_t, 8) l_903 = (VECTOR(int16_t, 8))(0x76B9L, (VECTOR(int16_t, 4))(0x76B9L, (VECTOR(int16_t, 2))(0x76B9L, 4L), 4L), 4L, 0x76B9L, 4L);
    VECTOR(int16_t, 16) l_904 = (VECTOR(int16_t, 16))(0x5DB8L, (VECTOR(int16_t, 4))(0x5DB8L, (VECTOR(int16_t, 2))(0x5DB8L, 0L), 0L), 0L, 0x5DB8L, 0L, (VECTOR(int16_t, 2))(0x5DB8L, 0L), (VECTOR(int16_t, 2))(0x5DB8L, 0L), 0x5DB8L, 0L, 0x5DB8L, 0L);
    uint64_t *l_910[9][4] = {{&p_1177->g_911[4][0],(void*)0,&p_1177->g_911[4][0],&p_1177->g_911[4][0]},{&p_1177->g_911[4][0],(void*)0,&p_1177->g_911[4][0],&p_1177->g_911[4][0]},{&p_1177->g_911[4][0],(void*)0,&p_1177->g_911[4][0],&p_1177->g_911[4][0]},{&p_1177->g_911[4][0],(void*)0,&p_1177->g_911[4][0],&p_1177->g_911[4][0]},{&p_1177->g_911[4][0],(void*)0,&p_1177->g_911[4][0],&p_1177->g_911[4][0]},{&p_1177->g_911[4][0],(void*)0,&p_1177->g_911[4][0],&p_1177->g_911[4][0]},{&p_1177->g_911[4][0],(void*)0,&p_1177->g_911[4][0],&p_1177->g_911[4][0]},{&p_1177->g_911[4][0],(void*)0,&p_1177->g_911[4][0],&p_1177->g_911[4][0]},{&p_1177->g_911[4][0],(void*)0,&p_1177->g_911[4][0],&p_1177->g_911[4][0]}};
    VECTOR(int32_t, 4) l_912 = (VECTOR(int32_t, 4))(0x4720BCBBL, (VECTOR(int32_t, 2))(0x4720BCBBL, 0x6F34AFE1L), 0x6F34AFE1L);
    VECTOR(uint16_t, 4) l_914 = (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 65532UL), 65532UL);
    int8_t *l_921 = (void*)0;
    int8_t *l_922 = &p_1177->g_196;
    int64_t *l_923[9][8] = {{&p_1177->g_924[3],&p_1177->g_924[3],&p_1177->g_924[3],&p_1177->g_924[3],&p_1177->g_924[3],&p_1177->g_924[3],&p_1177->g_924[3],&p_1177->g_924[3]},{&p_1177->g_924[3],&p_1177->g_924[3],&p_1177->g_924[3],&p_1177->g_924[3],&p_1177->g_924[3],&p_1177->g_924[3],&p_1177->g_924[3],&p_1177->g_924[3]},{&p_1177->g_924[3],&p_1177->g_924[3],&p_1177->g_924[3],&p_1177->g_924[3],&p_1177->g_924[3],&p_1177->g_924[3],&p_1177->g_924[3],&p_1177->g_924[3]},{&p_1177->g_924[3],&p_1177->g_924[3],&p_1177->g_924[3],&p_1177->g_924[3],&p_1177->g_924[3],&p_1177->g_924[3],&p_1177->g_924[3],&p_1177->g_924[3]},{&p_1177->g_924[3],&p_1177->g_924[3],&p_1177->g_924[3],&p_1177->g_924[3],&p_1177->g_924[3],&p_1177->g_924[3],&p_1177->g_924[3],&p_1177->g_924[3]},{&p_1177->g_924[3],&p_1177->g_924[3],&p_1177->g_924[3],&p_1177->g_924[3],&p_1177->g_924[3],&p_1177->g_924[3],&p_1177->g_924[3],&p_1177->g_924[3]},{&p_1177->g_924[3],&p_1177->g_924[3],&p_1177->g_924[3],&p_1177->g_924[3],&p_1177->g_924[3],&p_1177->g_924[3],&p_1177->g_924[3],&p_1177->g_924[3]},{&p_1177->g_924[3],&p_1177->g_924[3],&p_1177->g_924[3],&p_1177->g_924[3],&p_1177->g_924[3],&p_1177->g_924[3],&p_1177->g_924[3],&p_1177->g_924[3]},{&p_1177->g_924[3],&p_1177->g_924[3],&p_1177->g_924[3],&p_1177->g_924[3],&p_1177->g_924[3],&p_1177->g_924[3],&p_1177->g_924[3],&p_1177->g_924[3]}};
    uint16_t *l_950 = &p_1177->g_367[6];
    uint16_t **l_949 = &l_950;
    int i, j, k;
    (*l_889) = ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(0x315E314AL, 0x2964A90CL)), ((VECTOR(int32_t, 4))((safe_lshift_func_uint8_t_u_u(((VECTOR(uint8_t, 4))(max(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(l_17.s64d6)).xzzwwzxy)).even, ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(l_18.s462ccd20)).s44)), 255UL, 0x03L)).lo)).yyxxyyxxxxxyyyyx)).scc5c))).z, ((((safe_rshift_func_int16_t_s_s((l_23 = (p_12 != (l_17.s7 | l_18.sb))), 8)) >= 0x78L) == (p_1177->g_22 <= ((safe_add_func_uint8_t_u_u(p_12, (l_28.x = ((VECTOR(uint8_t, 16))(func_26((p_13 | ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(l_28.zy)), ((VECTOR(int32_t, 2))(l_29.zx)), ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(mul_hi(((VECTOR(int32_t, 16))(safe_clamp_func(VECTOR(int32_t, 16),VECTOR(int32_t, 16),((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(l_30.zw)).yxxyyxyx)).s7702244702353555, ((VECTOR(int32_t, 4))(3L, ((VECTOR(int32_t, 2))(l_31.s05)), 0x6D4033E2L)).wxwwyyxzyzzzzwyw, ((VECTOR(int32_t, 4))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 4))(upsample(((VECTOR(int16_t, 8))(l_32.zywxwxwy)).even, ((VECTOR(uint16_t, 2))(rotate(((VECTOR(uint16_t, 2))(p_1177->g_33.xz)), ((VECTOR(uint16_t, 4))(add_sat(((VECTOR(uint16_t, 2))(mad_sat(((VECTOR(uint16_t, 8))(mad_hi(((VECTOR(uint16_t, 8))(rotate(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 16))(l_34.yyyyxyxxxxyxxyxy)).s2d)).xxyyyyyy, ((VECTOR(uint16_t, 8))(hadd(((VECTOR(uint16_t, 8))(0x3184L, ((VECTOR(uint16_t, 4))(l_35.wwyw)), ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 4))(upsample(((VECTOR(uint8_t, 16))(p_1177->g_36.s4743572406601363)).s8055, ((VECTOR(uint8_t, 4))(mad_hi(((VECTOR(uint8_t, 4))(min(((VECTOR(uint8_t, 8))(rotate(((VECTOR(uint8_t, 4))(rhadd(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 8))(l_37.wxyxzxww)).lo)), ((VECTOR(uint8_t, 2))(rotate(((VECTOR(uint8_t, 2))(l_38.s57)), ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(254UL, 0UL, 0xDBL, 255UL)), 0x79L, ((VECTOR(uint8_t, 16))(l_39.yyyxxxyxxxxxyyyx)).s7, 0x59L, 0x46L)).s06))).xxxx))).xyzzzzyy, ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(safe_clamp_func(VECTOR(uint8_t, 2),uint8_t,((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 16))(mad_sat(((VECTOR(uint8_t, 4))((((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 8))(l_40.yyyxyxxy)).s7750654675066024, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(0x081FB719L, (-5L))), 3L, 0x530CD947L)), (p_12 , ((safe_rshift_func_uint16_t_u_s(((((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(p_1177->g_43.zxxx)).yywwwwwy)).s0 == 0UL) < 0x31L), p_12)) == p_1177->g_22)), 0x5007C8A8L, 0x54DBC71BL, 0x59469FD6L, ((VECTOR(int32_t, 4))(0x3D04657EL)), 4L, ((VECTOR(int32_t, 2))(0L)), (-1L))), ((VECTOR(int32_t, 16))(1L))))).s51ef)).y , 249UL), 253UL, 4UL, 255UL)).yyywwywwxzzzzwzy, ((VECTOR(uint8_t, 16))(255UL)), ((VECTOR(uint8_t, 16))(1UL))))).lo)).s06, (uint8_t)GROUP_DIVERGE(0, 1), (uint8_t)l_35.z))), 0x96L, ((VECTOR(uint8_t, 2))(1UL)), p_1177->g_22, 0x1AL, 8UL))))).odd, (uint8_t)GROUP_DIVERGE(2, 1)))), ((VECTOR(uint8_t, 4))(0xACL)), ((VECTOR(uint8_t, 4))(254UL)))))))).lo)), 0xB8C7L)), ((VECTOR(uint16_t, 8))(1UL)))))))), ((VECTOR(uint16_t, 8))(65535UL)), ((VECTOR(uint16_t, 8))(0x71B3L))))).s13, ((VECTOR(uint16_t, 2))(0xF365L)), ((VECTOR(uint16_t, 2))(1UL))))).xxyx, ((VECTOR(uint16_t, 4))(0x27B9L))))).lo))).yyyx))), ((VECTOR(int32_t, 4))(0x5C5EB77DL)), ((VECTOR(int32_t, 4))(0x586EA79FL))))).yyyzyyxzzyxzywxz))).sad, ((VECTOR(int32_t, 2))((-1L)))))), (-4L), 0x78C84420L)), 0x6D63D46BL, (-7L), (-1L), (-5L), 0x66EC8B7CL, 0x70C459F7L, (-1L), 0x38FA4CEBL)).se), p_1177), 0xF4L, ((VECTOR(uint8_t, 8))(4UL)), ((VECTOR(uint8_t, 2))(254UL)), 255UL, ((VECTOR(uint8_t, 2))(0x19L)), 1UL)).s5))) , p_1177->g_610.f0))) , 3UL))), 0x12406922L, 0x7489B3EBL, 1L)), l_28.y, ((VECTOR(int32_t, 4))(0x0A26B584L)), ((VECTOR(int32_t, 2))(0x24A593BFL)), 1L, 1L, 0x413F7A4BL)).s5;
    for (p_1177->g_863.f0 = 0; (p_1177->g_863.f0 < 26); p_1177->g_863.f0 = safe_add_func_uint32_t_u_u(p_1177->g_863.f0, 1))
    { /* block id: 349 */
        int64_t l_892[8] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
        int i;
        return l_892[7];
    }
    if ((p_1177->g_411.s4 , (safe_unary_minus_func_uint32_t_u((((((p_1177->g_924[2] &= ((safe_add_func_uint32_t_u_u(((*p_1177->g_278) ^ (safe_lshift_func_int16_t_s_u(((VECTOR(int16_t, 4))(mul_hi(((VECTOR(int16_t, 4))(0x1810L, 0x64FCL, 0x128DL, 0x4F4FL)), ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(sub_sat(((VECTOR(int16_t, 16))(p_1177->g_898.ywyzyywyyzzxwzxx)).s5da7, ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 4))(l_899.s5105)).odd)).xxyy))), 0x12E3L, ((VECTOR(int16_t, 2))(add_sat(((VECTOR(int16_t, 16))(rotate(((VECTOR(int16_t, 4))(p_1177->g_900.yyxz)).wyyzxzwyxzxywwxx, ((VECTOR(int16_t, 4))(min(((VECTOR(int16_t, 16))(p_1177->g_901.s94d632f3cd95e15b)).s7c2d, ((VECTOR(int16_t, 8))(p_1177->g_902.xxyxyxyx)).lo))).wwzwwxxywyxyyzyy))).scf, ((VECTOR(int16_t, 4))(add_sat(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 16))(l_903.s4120512522347716)).s4873)), ((VECTOR(int16_t, 4))(rotate(((VECTOR(int16_t, 8))(l_904.s9ab6f679)).even, ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(min(((VECTOR(int16_t, 4))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 4),((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(0x1EFBL, 0x250FL)))).yxyx, ((VECTOR(int16_t, 8))(1L, ((VECTOR(int16_t, 4))(p_1177->g_905.s2943)), ((VECTOR(int16_t, 2))(p_1177->g_906.s0c)), 0x038CL)).even, ((VECTOR(int16_t, 2))(p_1177->g_907.s21)).yxyy))).even, ((VECTOR(int16_t, 16))((0x7BB3CA2BL ^ ((0x2DDB99A599990CEAL < (*l_889)) ^ (((l_30.w = (p_1177->g_911[1][0] = ((VECTOR(uint64_t, 2))(0x93AB374F10BAD217L, 0x012B86C735D79487L)).lo)) , (((*l_922) = ((p_1177->g_411.s7 = ((VECTOR(int64_t, 8))(upsample(((VECTOR(int32_t, 2))(sub_sat(((VECTOR(int32_t, 2))(l_912.ww)), ((VECTOR(int32_t, 8))(upsample(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(p_1177->g_913.s2202475237654112)).sfa)).yxyyxyxx, ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 8))(l_914.xzyzxwxw)).even)), ((VECTOR(uint16_t, 4))(0UL, ((VECTOR(uint16_t, 2))(abs(((VECTOR(uint16_t, 2))(mul_hi(((VECTOR(uint16_t, 4))(abs_diff(((VECTOR(int16_t, 4))(0x46C7L, 0L, 1L, 0x798CL)), ((VECTOR(int16_t, 16))((((safe_add_func_uint32_t_u_u((*l_889), p_12)) | (*l_889)) , ((safe_div_func_uint64_t_u_u(((p_1177->g_911[1][0]--) , 9UL), (*l_889))) ^ 4294967295UL)), 0x4186L, ((VECTOR(int16_t, 4))(0x44CEL)), 0x044EL, p_12, p_13, ((VECTOR(int16_t, 4))(0x056CL)), p_1177->g_849.y, 0x4D41L, 0x4C5BL)).s564a))).odd, ((VECTOR(uint16_t, 2))(0UL)))))))), 65535UL))))))).s21))).yyyxyxyx, ((VECTOR(uint32_t, 8))(9UL))))).s4) || 1L)) || (*l_889))) != p_11))), 4L, (*l_889), 7L, ((VECTOR(int16_t, 8))(0x6A69L)), 4L, 1L, 0L, 0L)).s1f))))).xxxy)))))).even))), 0L)).odd))).w, 9))), (*l_889))) <= p_11)) , (*l_889)) & 0UL) != p_12) ^ 3UL)))))
    { /* block id: 358 */
        (*l_889) = (*l_889);
        return (*l_889);
    }
    else
    { /* block id: 361 */
        int16_t ***l_928[8];
        uint64_t *l_932[6] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int32_t l_933 = 0x35E317D4L;
        struct S0 *l_940 = &p_1177->g_610;
        int32_t **l_942 = &l_889;
        int8_t *l_945 = (void*)0;
        int8_t **l_946[10] = {&l_921,&l_921,&l_921,&l_921,&l_921,&l_921,&l_921,&l_921,&l_921,&l_921};
        uint32_t *l_947[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int i;
        for (i = 0; i < 8; i++)
            l_928[i] = &p_1177->g_927;
        for (p_1177->g_525.f1 = 0; (p_1177->g_525.f1 == (-1)); --p_1177->g_525.f1)
        { /* block id: 364 */
            (*l_889) = p_11;
        }
        (*l_940) = func_50(((p_1177->g_927 = p_1177->g_927) == &p_1177->g_521), (*l_889), (safe_add_func_uint8_t_u_u(((0x4071F31DL | ((VECTOR(int32_t, 8))(p_1177->g_931.s16066751)).s5) & (l_933 = p_13)), (safe_div_func_int32_t_s_s(((safe_mod_func_uint64_t_u_u((p_1177->g_326.sf = (safe_add_func_uint16_t_u_u(((p_1177->g_898.w , &p_1177->g_238) != (void*)0), ((65535UL != p_12) | 0x239EEB01L)))), p_12)) || p_11), (*l_889))))), p_13, p_1177);
        (*l_942) = &l_23;
        l_30.z = ((1UL ^ ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(abs_diff(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 8))((**l_942), (~(**l_942)), 0x13L, ((VECTOR(uint8_t, 2))(255UL, 0x83L)), 248UL, 1UL, 0xD3L)))).s63)).xyxx)), ((VECTOR(uint8_t, 4))(mad_sat(((VECTOR(uint8_t, 2))(min(((VECTOR(uint8_t, 8))(clz(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(min(((VECTOR(uint8_t, 2))(add_sat(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(clz(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(min(((VECTOR(uint8_t, 8))(0x60L, (safe_div_func_uint64_t_u_u((l_29.x &= (GROUP_DIVERGE(2, 1) && (**l_942))), (**l_942))), 0UL, 9UL, 0xF7L, ((l_922 = l_945) == ((((**l_942) &= 4UL) != 0x7C7CFD5AL) , (p_1177->g_948[0] = (void*)0))), 254UL, 9UL)).s14, ((VECTOR(uint8_t, 2))(0x99L))))).yyyx)).yyywyzzz))).s07)).yxxy)).odd, ((VECTOR(uint8_t, 2))(0x5DL))))), (uint8_t)0UL))), 1UL, 9UL)).yzxxzwzz))).s20, ((VECTOR(uint8_t, 2))(0UL))))).yyxx, ((VECTOR(uint8_t, 4))(252UL)), ((VECTOR(uint8_t, 4))(0xD9L)))))))).yzzwwwzw)).s0) >= p_13);
    }
    (*p_1177->g_951) = l_949;
    return p_13;
}


/* ------------------------------------------ */
/* 
 * reads : p_1177->g_282.f0 p_1177->g_117.f3 p_1177->g_102 p_1177->g_22 p_1177->g_132 p_1177->g_320 p_1177->g_419 p_1177->g_107 p_1177->g_101 p_1177->g_191 p_1177->g_464 p_1177->g_117.f1 p_1177->g_483 p_1177->g_499 p_1177->g_505 p_1177->g_278 p_1177->g_98.f2 p_1177->g_520 p_1177->g_524 p_1177->g_293 p_1177->g_404 p_1177->g_99 p_1177->g_98 p_1177->g_521 p_1177->g_522 p_1177->g_175 p_1177->g_33 p_1177->g_674 p_1177->g_655 p_1177->g_47 p_1177->g_661 p_1177->g_711 p_1177->g_525.f0 p_1177->g_722 p_1177->g_725 p_1177->g_196 p_1177->g_367 p_1177->g_411 p_1177->g_368 p_1177->g_763 p_1177->g_767 p_1177->g_770 p_1177->g_780 p_1177->g_226 p_1177->g_413 p_1177->g_506.f0 p_1177->g_656 p_1177->g_782.f3 p_1177->g_525.f3 p_1177->g_484 p_1177->g_849 p_1177->g_854 p_1177->g_861 p_1177->g_863 p_1177->g_868 p_1177->g_746 p_1177->g_876 p_1177->g_599 p_1177->g_883 p_1177->g_805 p_1177->g_818 p_1177->g_819 p_1177->g_820 p_1177->g_326
 * writes: p_1177->g_47 p_1177->g_101 p_1177->g_282.f0 p_1177->g_282.f1 p_1177->g_419 p_1177->g_196 p_1177->g_367 p_1177->g_413 p_1177->g_368 p_1177->g_464 p_1177->g_478 p_1177->g_499 p_1177->g_506 p_1177->g_525 p_1177->g_576 p_1177->g_524.f3 p_1177->g_293 p_1177->g_671 p_1177->g_674 p_1177->g_655 p_1177->g_722 p_1177->g_763 p_1177->g_782 p_1177->g_411 p_1177->g_780.f0 p_1177->g_98 p_1177->g_524.f1 p_1177->g_869 p_1177->g_746 p_1177->g_876
 */
uint8_t  func_26(int32_t  p_27, struct S1 * p_1177)
{ /* block id: 7 */
    VECTOR(int16_t, 16) l_70 = (VECTOR(int16_t, 16))(0x7D0BL, (VECTOR(int16_t, 4))(0x7D0BL, (VECTOR(int16_t, 2))(0x7D0BL, (-1L)), (-1L)), (-1L), 0x7D0BL, (-1L), (VECTOR(int16_t, 2))(0x7D0BL, (-1L)), (VECTOR(int16_t, 2))(0x7D0BL, (-1L)), 0x7D0BL, (-1L), 0x7D0BL, (-1L));
    int16_t *l_75[9][10] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
    uint32_t l_802[1];
    VECTOR(uint16_t, 8) l_803 = (VECTOR(uint16_t, 8))(0x5BF2L, (VECTOR(uint16_t, 4))(0x5BF2L, (VECTOR(uint16_t, 2))(0x5BF2L, 65535UL), 65535UL), 65535UL, 0x5BF2L, 65535UL);
    VECTOR(uint16_t, 8) l_804 = (VECTOR(uint16_t, 8))(0xF964L, (VECTOR(uint16_t, 4))(0xF964L, (VECTOR(uint16_t, 2))(0xF964L, 0xCB1EL), 0xCB1EL), 0xCB1EL, 0xF964L, 0xCB1EL);
    VECTOR(int16_t, 16) l_817 = (VECTOR(int16_t, 16))(0x7165L, (VECTOR(int16_t, 4))(0x7165L, (VECTOR(int16_t, 2))(0x7165L, 0x0D7EL), 0x0D7EL), 0x0D7EL, 0x7165L, 0x0D7EL, (VECTOR(int16_t, 2))(0x7165L, 0x0D7EL), (VECTOR(int16_t, 2))(0x7165L, 0x0D7EL), 0x7165L, 0x0D7EL, 0x7165L, 0x0D7EL);
    int32_t l_827 = 1L;
    int32_t l_828 = 0x3F4BCF74L;
    uint8_t l_830 = 0x3FL;
    uint16_t l_838 = 1UL;
    uint64_t **l_870 = (void*)0;
    int32_t ***l_880 = (void*)0;
    int32_t ****l_879[9][8][3] = {{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}}};
    int32_t *****l_881 = &l_879[4][5][2];
    uint16_t l_885[8];
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_802[i] = 6UL;
    for (i = 0; i < 8; i++)
        l_885[i] = 0xD56DL;
    for (p_27 = 0; (p_27 < (-3)); --p_27)
    { /* block id: 10 */
        int16_t *l_67 = &p_1177->g_22;
        int32_t l_377 = 5L;
        VECTOR(uint8_t, 16) l_791 = (VECTOR(uint8_t, 16))(2UL, (VECTOR(uint8_t, 4))(2UL, (VECTOR(uint8_t, 2))(2UL, 0x77L), 0x77L), 0x77L, 2UL, 0x77L, (VECTOR(uint8_t, 2))(2UL, 0x77L), (VECTOR(uint8_t, 2))(2UL, 0x77L), 2UL, 0x77L, 2UL, 0x77L);
        int32_t *l_810 = &p_1177->g_47;
        uint64_t *l_823 = (void*)0;
        uint64_t *l_824[2];
        int32_t l_825 = 0x5502D82AL;
        int64_t *l_826[8][9] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
        VECTOR(int32_t, 8) l_829 = (VECTOR(int32_t, 8))(0x54F839C5L, (VECTOR(int32_t, 4))(0x54F839C5L, (VECTOR(int32_t, 2))(0x54F839C5L, 1L), 1L), 1L, 0x54F839C5L, 1L);
        int16_t **l_847[6][1] = {{&l_75[2][6]},{&l_75[2][6]},{&l_75[2][6]},{&l_75[2][6]},{&l_75[2][6]},{&l_75[2][6]}};
        int16_t ***l_846 = &l_847[2][0];
        VECTOR(int16_t, 8) l_852 = (VECTOR(int16_t, 8))(0x60B4L, (VECTOR(int16_t, 4))(0x60B4L, (VECTOR(int16_t, 2))(0x60B4L, 0x6B39L), 0x6B39L), 0x6B39L, 0x60B4L, 0x6B39L);
        int32_t l_862 = (-1L);
        int32_t *l_875[4][7] = {{&p_1177->g_47,&l_827,&l_827,&p_1177->g_47,&p_1177->g_47,&l_827,&l_827},{&p_1177->g_47,&l_827,&l_827,&p_1177->g_47,&p_1177->g_47,&l_827,&l_827},{&p_1177->g_47,&l_827,&l_827,&p_1177->g_47,&p_1177->g_47,&l_827,&l_827},{&p_1177->g_47,&l_827,&l_827,&p_1177->g_47,&p_1177->g_47,&l_827,&l_827}};
        int i, j;
        for (i = 0; i < 2; i++)
            l_824[i] = (void*)0;
        for (p_1177->g_47 = 0; (p_1177->g_47 > (-1)); p_1177->g_47--)
        { /* block id: 13 */
            VECTOR(int16_t, 16) l_72 = (VECTOR(int16_t, 16))(0x1FCFL, (VECTOR(int16_t, 4))(0x1FCFL, (VECTOR(int16_t, 2))(0x1FCFL, 2L), 2L), 2L, 0x1FCFL, 2L, (VECTOR(int16_t, 2))(0x1FCFL, 2L), (VECTOR(int16_t, 2))(0x1FCFL, 2L), 0x1FCFL, 2L, 0x1FCFL, 2L);
            uint64_t l_85 = 0UL;
            struct S0 *l_781[10][2] = {{&p_1177->g_780,&p_1177->g_780},{&p_1177->g_780,&p_1177->g_780},{&p_1177->g_780,&p_1177->g_780},{&p_1177->g_780,&p_1177->g_780},{&p_1177->g_780,&p_1177->g_780},{&p_1177->g_780,&p_1177->g_780},{&p_1177->g_780,&p_1177->g_780},{&p_1177->g_780,&p_1177->g_780},{&p_1177->g_780,&p_1177->g_780},{&p_1177->g_780,&p_1177->g_780}};
            int i, j;
            p_1177->g_782 = func_50(func_55((safe_mod_func_int16_t_s_s(func_59(func_63(((void*)0 == l_67), ((((safe_mod_func_uint16_t_u_u((((VECTOR(int16_t, 2))(safe_clamp_func(VECTOR(int16_t, 2),int16_t,((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(mul_hi(((VECTOR(int16_t, 4))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 4),((VECTOR(int16_t, 16))(l_70.s103c6c282e8bc961)).s7cc2, ((VECTOR(int16_t, 8))(1L, ((VECTOR(int16_t, 2))(mul_hi(((VECTOR(int16_t, 16))(p_1177->g_71.sbe1d701d6bccd07c)).sa3, ((VECTOR(int16_t, 8))((-9L), ((VECTOR(int16_t, 4))(l_72.scbbb)), (l_377 = (safe_add_func_int64_t_s_s(((void*)0 == l_75[2][6]), ((safe_mul_func_int8_t_s_s((func_78(l_67, (func_83(l_85, p_1177) , (p_27 , l_75[2][6])), &p_1177->g_22, &p_1177->g_22, p_1177) || l_70.sa), p_1177->g_22)) , p_27)))), 0x7728L, 0x0550L)).s53))), ((VECTOR(int16_t, 4))(0x7D04L)), 0L)).hi, ((VECTOR(int16_t, 4))(0L))))).hi, ((VECTOR(int16_t, 2))((-10L)))))), (-1L), 0x75D2L)).lo, (int16_t)p_27, (int16_t)p_1177->g_183.s5))).odd == p_27), p_27)) < 0x281AL) & p_27) , l_67), &p_1177->g_22, p_1177), p_27, p_27, p_1177), GROUP_DIVERGE(2, 1))), p_1177), l_70.s5, l_70.s7, p_1177->g_191.z, p_1177);
        }
        if ((safe_mod_func_uint16_t_u_u((((FAKE_DIVERGE(p_1177->group_0_offset, get_group_id(0), 10) && (p_1177->g_413 &= (((safe_add_func_uint16_t_u_u(((+((~(l_828 = (((p_1177->g_411.s7 &= (safe_mod_func_uint16_t_u_u((p_27 , (((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(add_sat(((VECTOR(int16_t, 2))(sub_sat(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))((-1L), 0x2797L, (-1L), ((VECTOR(int16_t, 8))(mad_sat(((VECTOR(int16_t, 4))((safe_mod_func_int32_t_s_s((((VECTOR(uint8_t, 4))(l_791.s8bbd)).x | (l_377 > (safe_mod_func_uint8_t_u_u((((((((safe_mul_func_uint16_t_u_u((safe_lshift_func_uint8_t_u_s((safe_div_func_int8_t_s_s(((safe_add_func_int16_t_s_s(l_802[0], ((VECTOR(uint16_t, 2))(rhadd(((VECTOR(uint16_t, 2))(safe_clamp_func(VECTOR(uint16_t, 2),VECTOR(uint16_t, 2),((VECTOR(uint16_t, 2))(l_803.s63)), ((VECTOR(uint16_t, 8))(l_804.s33544474)).s54, ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 2))(mad_hi(((VECTOR(uint16_t, 8))(clz(((VECTOR(uint16_t, 2))(0xA652L, 0UL)).xyyxxxyx))).s25, ((VECTOR(uint16_t, 4))(add_sat(((VECTOR(uint16_t, 2))(mul_hi(((VECTOR(uint16_t, 8))(p_1177->g_805.xyxyyyyx)).s56, ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(0x1142L, 9UL)).xyxy)), 0x29B8L, 0xD500L, 2UL, 7UL)).s75))).xyxy, ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(0UL, 65535UL, 1UL, 3UL)), ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(0x3A65L, 0xD2CFL)).yxxxxyxy)).s1017520746650760)).sc31f)))).odd))).even, ((VECTOR(uint16_t, 16))(add_sat(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 8))(mad_sat(((VECTOR(uint16_t, 4))(0x9641L, (safe_sub_func_int32_t_s_s(((*l_810) ^= (safe_add_func_uint32_t_u_u(p_1177->g_293.y, p_27))), ((safe_div_func_int64_t_s_s((l_827 = ((l_825 = (safe_div_func_int32_t_s_s((safe_mul_func_uint8_t_u_u(((~(p_27 ^ ((VECTOR(int16_t, 2))(mad_sat(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(l_817.sd23be741a32cf795)).s5c)), ((VECTOR(int16_t, 8))(max(((VECTOR(int16_t, 16))(p_1177->g_818.zyzwxwwwzxzxzyzw)).odd, (int16_t)7L))).s43, ((VECTOR(int16_t, 8))(p_1177->g_819.xywzwzxz)).s67))).lo)) ^ ((VECTOR(uint64_t, 16))(p_1177->g_820.s55a4bdcc8f12ec98)).s6), 1L)), (safe_rshift_func_int16_t_s_s(p_27, p_1177->g_293.y))))) <= p_27)), 0x64902B01675AC2B8L)) > p_27))), 0UL, 0xF2D5L)).yzzxzwwy, ((VECTOR(uint16_t, 8))(65535UL)), ((VECTOR(uint16_t, 8))(65535UL))))))).s2133134137051745, ((VECTOR(uint16_t, 16))(0x01C6L))))).sde)))))))), ((VECTOR(uint16_t, 2))(0x51F6L))))).even)) && p_27), 5L)), 7)), p_1177->g_326.s4)) , 0L) >= p_27) == p_1177->g_524.f0) , (void*)0) == (void*)0) < p_1177->g_820.s3), p_27)))), 0xDFCA5733L)), (-8L), 0x0292L, (-3L))).zywxwyww, ((VECTOR(int16_t, 8))(0x5C14L)), ((VECTOR(int16_t, 8))(0L))))), 0L, 0x2FDFL, (-1L), 0x43C8L, 0x14FEL)).s80)), ((VECTOR(int16_t, 2))(0x3287L))))).xyyy, ((VECTOR(int16_t, 4))(0x5772L))))).yyyxzwyxywzzxwzx)).s4 == p_1177->g_226.z)), 0x384AL))) | 0x18B95545F192B094L) >= p_27))) , 0x2EB0AAF8L)) , p_1177->g_191.y), p_27)) , (**p_1177->g_520)) , (*l_810)))) && (-2L)) , p_1177->g_506.f0), p_1177->g_656.y)))
        { /* block id: 301 */
            if (p_27)
                break;
        }
        else
        { /* block id: 303 */
            int32_t *l_866 = &p_1177->g_282.f0;
            uint64_t **l_871 = &l_824[0];
            if (((VECTOR(int32_t, 4))(l_829.s0407)).x)
            { /* block id: 304 */
                return l_830;
            }
            else
            { /* block id: 306 */
                int32_t *l_831 = &p_1177->g_780.f0;
                int32_t **l_832[8][5][6] = {{{(void*)0,(void*)0,&p_1177->g_101,&l_831,&l_810,&l_810},{(void*)0,(void*)0,&p_1177->g_101,&l_831,&l_810,&l_810},{(void*)0,(void*)0,&p_1177->g_101,&l_831,&l_810,&l_810},{(void*)0,(void*)0,&p_1177->g_101,&l_831,&l_810,&l_810},{(void*)0,(void*)0,&p_1177->g_101,&l_831,&l_810,&l_810}},{{(void*)0,(void*)0,&p_1177->g_101,&l_831,&l_810,&l_810},{(void*)0,(void*)0,&p_1177->g_101,&l_831,&l_810,&l_810},{(void*)0,(void*)0,&p_1177->g_101,&l_831,&l_810,&l_810},{(void*)0,(void*)0,&p_1177->g_101,&l_831,&l_810,&l_810},{(void*)0,(void*)0,&p_1177->g_101,&l_831,&l_810,&l_810}},{{(void*)0,(void*)0,&p_1177->g_101,&l_831,&l_810,&l_810},{(void*)0,(void*)0,&p_1177->g_101,&l_831,&l_810,&l_810},{(void*)0,(void*)0,&p_1177->g_101,&l_831,&l_810,&l_810},{(void*)0,(void*)0,&p_1177->g_101,&l_831,&l_810,&l_810},{(void*)0,(void*)0,&p_1177->g_101,&l_831,&l_810,&l_810}},{{(void*)0,(void*)0,&p_1177->g_101,&l_831,&l_810,&l_810},{(void*)0,(void*)0,&p_1177->g_101,&l_831,&l_810,&l_810},{(void*)0,(void*)0,&p_1177->g_101,&l_831,&l_810,&l_810},{(void*)0,(void*)0,&p_1177->g_101,&l_831,&l_810,&l_810},{(void*)0,(void*)0,&p_1177->g_101,&l_831,&l_810,&l_810}},{{(void*)0,(void*)0,&p_1177->g_101,&l_831,&l_810,&l_810},{(void*)0,(void*)0,&p_1177->g_101,&l_831,&l_810,&l_810},{(void*)0,(void*)0,&p_1177->g_101,&l_831,&l_810,&l_810},{(void*)0,(void*)0,&p_1177->g_101,&l_831,&l_810,&l_810},{(void*)0,(void*)0,&p_1177->g_101,&l_831,&l_810,&l_810}},{{(void*)0,(void*)0,&p_1177->g_101,&l_831,&l_810,&l_810},{(void*)0,(void*)0,&p_1177->g_101,&l_831,&l_810,&l_810},{(void*)0,(void*)0,&p_1177->g_101,&l_831,&l_810,&l_810},{(void*)0,(void*)0,&p_1177->g_101,&l_831,&l_810,&l_810},{(void*)0,(void*)0,&p_1177->g_101,&l_831,&l_810,&l_810}},{{(void*)0,(void*)0,&p_1177->g_101,&l_831,&l_810,&l_810},{(void*)0,(void*)0,&p_1177->g_101,&l_831,&l_810,&l_810},{(void*)0,(void*)0,&p_1177->g_101,&l_831,&l_810,&l_810},{(void*)0,(void*)0,&p_1177->g_101,&l_831,&l_810,&l_810},{(void*)0,(void*)0,&p_1177->g_101,&l_831,&l_810,&l_810}},{{(void*)0,(void*)0,&p_1177->g_101,&l_831,&l_810,&l_810},{(void*)0,(void*)0,&p_1177->g_101,&l_831,&l_810,&l_810},{(void*)0,(void*)0,&p_1177->g_101,&l_831,&l_810,&l_810},{(void*)0,(void*)0,&p_1177->g_101,&l_831,&l_810,&l_810},{(void*)0,(void*)0,&p_1177->g_101,&l_831,&l_810,&l_810}}};
                int i, j, k;
                (*p_1177->g_107) = l_831;
            }
            if (p_27)
                continue;
            if ((*l_810))
            { /* block id: 310 */
                uint64_t l_835 = 0UL;
                int32_t l_843[1];
                uint8_t *l_851 = (void*)0;
                int i;
                for (i = 0; i < 1; i++)
                    l_843[i] = 1L;
                for (p_1177->g_782.f3 = 0; (p_1177->g_782.f3 < 59); ++p_1177->g_782.f3)
                { /* block id: 313 */
                    uint16_t *l_839 = &p_1177->g_525.f3;
                    int16_t ***l_848 = &l_847[2][0];
                    int32_t l_850 = 1L;
                    VECTOR(int16_t, 2) l_853 = (VECTOR(int16_t, 2))(0x1C25L, (-6L));
                    int i;
                    --l_835;
                    (*l_810) = ((*p_1177->g_101) = ((((((*l_839) ^= l_838) != 0L) != ((l_843[0] &= (safe_mod_func_uint64_t_u_u(0UL, (safe_unary_minus_func_int16_t_s(p_27))))) <= (((((((safe_sub_func_uint64_t_u_u(((*p_1177->g_483) != ((((l_846 == l_848) ^ ((VECTOR(uint8_t, 4))(p_1177->g_849.yxxx)).x) | (4294967293UL || ((p_27 & (*l_810)) <= p_27))) <= (*p_1177->g_101))), p_27)) , (-8L)) , l_850) ^ 8L) && l_850) || l_850) & p_1177->g_524.f1))) , l_851) == l_851));
                    (*p_1177->g_99) = (((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))((-5L), 0x2EA50C15L)), ((VECTOR(int32_t, 8))(upsample(((VECTOR(int16_t, 8))(mul_hi(((VECTOR(int16_t, 2))(l_852.s27)).xxxyxxxy, ((VECTOR(int16_t, 4))(max(((VECTOR(int16_t, 16))(hadd(((VECTOR(int16_t, 16))(0L, ((VECTOR(int16_t, 8))(sub_sat(((VECTOR(int16_t, 8))(safe_clamp_func(VECTOR(int16_t, 8),VECTOR(int16_t, 8),((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(l_853.yx)), 0x1879L, ((VECTOR(int16_t, 8))(p_1177->g_854.yywxzyyz)).s2, ((p_27 & ((p_27 == 0x5B88E7BCL) < (safe_mul_func_uint16_t_u_u(FAKE_DIVERGE(p_1177->group_2_offset, get_group_id(2), 10), p_27)))) & 1UL), (-1L), (safe_sub_func_int64_t_s_s(((0x34L | (l_843[0] = 0x33L)) & ((*p_1177->g_767) || GROUP_DIVERGE(2, 1))), (safe_mul_func_int16_t_s_s((p_1177->g_861.s6 & 0L), l_70.s2)))), ((VECTOR(int16_t, 4))(0x0726L)), l_862, ((VECTOR(int16_t, 2))(0x7AD9L)), (-1L), 0x365BL)).odd, ((VECTOR(int16_t, 8))(1L)), ((VECTOR(int16_t, 8))(7L))))), ((VECTOR(int16_t, 8))(0x0200L))))), ((VECTOR(int16_t, 2))(0x28EBL)), ((VECTOR(int16_t, 4))(1L)), 0x259DL)), ((VECTOR(int16_t, 16))(0x7A0BL))))).s3a99, (int16_t)(*p_1177->g_521)))).xwzzzxwz))), ((VECTOR(uint16_t, 8))(0x0052L))))), 7L, l_802[0], (-6L), p_1177->g_293.x, 0x48A5C902L, 0x2F9CCA9DL)).s2 , p_1177->g_863);
                }
                for (p_1177->g_524.f1 = (-28); (p_1177->g_524.f1 >= 21); p_1177->g_524.f1 = safe_add_func_uint16_t_u_u(p_1177->g_524.f1, 4))
                { /* block id: 324 */
                    l_866 = (*p_1177->g_725);
                    (*p_1177->g_868) = &p_1177->g_464;
                    if (p_1177->g_22)
                        goto lbl_884;
                    (*l_866) = p_27;
                }
            }
            else
            { /* block id: 329 */
                l_871 = l_870;
                for (p_1177->g_746 = 12; (p_1177->g_746 >= (-24)); --p_1177->g_746)
                { /* block id: 333 */
                    int8_t l_874 = (-4L);
                    if (l_874)
                        break;
                }
            }
        }
        ++p_1177->g_876;
    }
lbl_884:
    (*p_1177->g_883) = ((((*l_881) = l_879[4][5][2]) == &l_880) > ((p_27 == (l_803.s2 , p_1177->g_599.x)) >= (+p_27)));
    --l_885[3];
    return p_27;
}


/* ------------------------------------------ */
/* 
 * reads : p_1177->g_767 p_1177->g_419.f0 p_1177->g_770 p_1177->g_780
 * writes: p_1177->g_419.f0 p_1177->g_101
 */
struct S0  func_50(uint64_t  p_51, int8_t  p_52, uint32_t  p_53, uint32_t  p_54, struct S1 * p_1177)
{ /* block id: 288 */
    VECTOR(uint32_t, 4) l_766 = (VECTOR(uint32_t, 4))(0x00DE6104L, (VECTOR(uint32_t, 2))(0x00DE6104L, 0x884A6079L), 0x884A6079L);
    int32_t *l_768 = &p_1177->g_47;
    int32_t l_771 = 3L;
    int32_t l_772 = 0x5A1A27DCL;
    int32_t *l_773[10] = {&p_1177->g_610.f0,&p_1177->g_610.f0,&p_1177->g_610.f0,&p_1177->g_610.f0,&p_1177->g_610.f0,&p_1177->g_610.f0,&p_1177->g_610.f0,&p_1177->g_610.f0,&p_1177->g_610.f0,&p_1177->g_610.f0};
    int32_t l_775 = 0x2B2FAFB2L;
    int32_t l_776 = (-2L);
    uint16_t l_777 = 0x5304L;
    int i;
    (*p_1177->g_767) |= (((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))(l_766.yxxwzxwz)).s4651356162514112)).lo)).s0 > l_766.x);
    (*p_1177->g_770) = l_768;
    --l_777;
    return p_1177->g_780;
}


/* ------------------------------------------ */
/* 
 * reads : p_1177->g_411
 * writes:
 */
uint64_t  func_55(int8_t  p_56, struct S1 * p_1177)
{ /* block id: 286 */
    return p_1177->g_411.s5;
}


/* ------------------------------------------ */
/* 
 * reads : p_1177->g_117.f3 p_1177->g_102 p_1177->g_22 p_1177->g_132 p_1177->g_320 p_1177->g_282.f0 p_1177->g_419 p_1177->g_107 p_1177->g_101 p_1177->g_191 p_1177->g_464 p_1177->g_117.f1 p_1177->g_483 p_1177->g_499 p_1177->g_505 p_1177->g_278 p_1177->g_98.f2 p_1177->g_520 p_1177->g_524 p_1177->g_293 p_1177->g_404 p_1177->g_99 p_1177->g_98 p_1177->g_521 p_1177->g_522 p_1177->g_175 p_1177->g_33 p_1177->g_674 p_1177->g_655 p_1177->g_711 p_1177->g_47 p_1177->g_661 p_1177->g_525.f0 p_1177->g_722 p_1177->g_725 p_1177->g_196 p_1177->g_599 p_1177->g_367 p_1177->g_411 p_1177->g_368 p_1177->g_763 p_1177->g_282.f1 p_1177->g_387 p_1177->g_413 p_1177->g_234.f3 p_1177->g_416
 * writes: p_1177->g_282.f1 p_1177->g_282.f0 p_1177->g_419 p_1177->g_196 p_1177->g_367 p_1177->g_413 p_1177->g_368 p_1177->g_464 p_1177->g_478 p_1177->g_499 p_1177->g_101 p_1177->g_506 p_1177->g_525 p_1177->g_576 p_1177->g_524.f3 p_1177->g_293 p_1177->g_671 p_1177->g_674 p_1177->g_655 p_1177->g_722 p_1177->g_746 p_1177->g_763
 */
int16_t  func_59(int16_t * p_60, uint32_t  p_61, int8_t  p_62, struct S1 * p_1177)
{ /* block id: 133 */
    VECTOR(int32_t, 8) l_386 = (VECTOR(int32_t, 8))(0x4853D430L, (VECTOR(int32_t, 4))(0x4853D430L, (VECTOR(int32_t, 2))(0x4853D430L, 0x609E272CL), 0x609E272CL), 0x609E272CL, 0x4853D430L, 0x609E272CL);
    int32_t *l_423 = (void*)0;
    int32_t l_448 = 0x2F2B91C4L;
    int64_t *l_481 = (void*)0;
    VECTOR(uint32_t, 8) l_531 = (VECTOR(uint32_t, 8))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 0xE828050EL), 0xE828050EL), 0xE828050EL, 4294967295UL, 0xE828050EL);
    VECTOR(int8_t, 16) l_554 = (VECTOR(int8_t, 16))(0x3DL, (VECTOR(int8_t, 4))(0x3DL, (VECTOR(int8_t, 2))(0x3DL, 0x71L), 0x71L), 0x71L, 0x3DL, 0x71L, (VECTOR(int8_t, 2))(0x3DL, 0x71L), (VECTOR(int8_t, 2))(0x3DL, 0x71L), 0x3DL, 0x71L, 0x3DL, 0x71L);
    struct S0 *l_561 = (void*)0;
    VECTOR(int8_t, 16) l_589 = (VECTOR(int8_t, 16))(0x7EL, (VECTOR(int8_t, 4))(0x7EL, (VECTOR(int8_t, 2))(0x7EL, (-1L)), (-1L)), (-1L), 0x7EL, (-1L), (VECTOR(int8_t, 2))(0x7EL, (-1L)), (VECTOR(int8_t, 2))(0x7EL, (-1L)), 0x7EL, (-1L), 0x7EL, (-1L));
    VECTOR(int8_t, 2) l_590 = (VECTOR(int8_t, 2))(0x3CL, 1L);
    VECTOR(int8_t, 2) l_591 = (VECTOR(int8_t, 2))(8L, 0L);
    int32_t l_611 = 0x293A09B3L;
    uint64_t **l_617 = (void*)0;
    uint64_t **l_640 = &p_1177->g_464;
    VECTOR(uint16_t, 2) l_662 = (VECTOR(uint16_t, 2))(65535UL, 1UL);
    uint8_t l_667 = 0xDAL;
    VECTOR(int16_t, 2) l_748 = (VECTOR(int16_t, 2))(5L, 0L);
    int i;
lbl_541:
    for (p_1177->g_282.f1 = 0; (p_1177->g_282.f1 >= 4); p_1177->g_282.f1 = safe_add_func_int16_t_s_s(p_1177->g_282.f1, 1))
    { /* block id: 136 */
        VECTOR(int32_t, 2) l_390 = (VECTOR(int32_t, 2))(0x4496415CL, 0x1BB2572AL);
        uint16_t *l_391 = &p_1177->g_367[4];
        int32_t *l_392 = (void*)0;
        struct S0 *l_420 = &p_1177->g_419;
        int i;
        if (((VECTOR(int32_t, 8))(sub_sat(((VECTOR(int32_t, 4))(mul_hi(((VECTOR(int32_t, 16))(add_sat(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))((-5L), (-1L), 0x60BB0539L, (-1L))).xwzxwwzz)))).s4110437034213405, ((VECTOR(int32_t, 4))(mad_sat(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(0L, 0x56AF8D97L, 0x25FFD053L, p_61, ((VECTOR(int32_t, 4))(9L, (((safe_mul_func_int8_t_s_s(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(hadd(((VECTOR(int8_t, 2))(0x0AL, (-5L))).xxxx, ((VECTOR(int8_t, 2))((-7L), 0x57L)).yxyx))).even)), 0x49L, 9L)))).z, ((((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(mad_sat(((VECTOR(int32_t, 8))(sub_sat(((VECTOR(int32_t, 8))(l_386.s04722635)), ((VECTOR(int32_t, 4))(p_1177->g_387.s0753)).yyzyzzwz))), ((VECTOR(int32_t, 2))(0x494A053AL, 0x6264BC83L)).yxyxxxxx, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(0x5C061059L, 8L)), 1L, 0x28BFE230L)))).xwwzzwww))).s7403101534457452)).sb , (*p_60)) >= 0x09A8L))) , ((-1L) <= ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(0L, 0x1EL)), 0x71L, 0x66L)).w)) >= (safe_sub_func_uint16_t_u_u(((*l_391) = (l_386.s2 != ((VECTOR(int32_t, 8))(l_390.xyyxxxyy)).s2)), ((4294967295UL | (l_392 != &p_1177->g_47)) , 0L)))), 0x2C8E102FL, 7L)))))).lo, ((VECTOR(int32_t, 4))((-6L))), ((VECTOR(int32_t, 4))((-1L)))))).wywxxyzzxxwwzzwz))).s5f3d, ((VECTOR(int32_t, 4))(0x3254D9EEL))))).wwxzyxxy, ((VECTOR(int32_t, 8))(8L))))).s4)
        { /* block id: 138 */
            uint8_t l_403 = 5UL;
            l_390.x = (p_1177->g_117.f3 != (safe_add_func_int32_t_s_s((l_386.s3 & (safe_add_func_uint16_t_u_u(p_1177->g_102.w, ((*p_60) || (*p_60))))), (safe_sub_func_int32_t_s_s((safe_lshift_func_int16_t_s_s(p_1177->g_132.x, (safe_mod_func_uint32_t_u_u(l_403, ((VECTOR(uint32_t, 8))(p_1177->g_404.xxyyxxxx)).s0)))), ((VECTOR(uint32_t, 4))(l_403, 0UL, 4294967295UL, 0xCDD503DBL)).y)))));
            if ((*p_1177->g_320))
                break;
        }
        else
        { /* block id: 141 */
            VECTOR(int64_t, 16) l_410 = (VECTOR(int64_t, 16))(0x68E17B9FCCD86100L, (VECTOR(int64_t, 4))(0x68E17B9FCCD86100L, (VECTOR(int64_t, 2))(0x68E17B9FCCD86100L, 0x280210C1FDCF26C2L), 0x280210C1FDCF26C2L), 0x280210C1FDCF26C2L, 0x68E17B9FCCD86100L, 0x280210C1FDCF26C2L, (VECTOR(int64_t, 2))(0x68E17B9FCCD86100L, 0x280210C1FDCF26C2L), (VECTOR(int64_t, 2))(0x68E17B9FCCD86100L, 0x280210C1FDCF26C2L), 0x68E17B9FCCD86100L, 0x280210C1FDCF26C2L, 0x68E17B9FCCD86100L, 0x280210C1FDCF26C2L);
            int16_t *l_412 = &p_1177->g_413;
            int32_t *l_417 = &p_1177->g_282.f0;
            uint8_t **l_418 = &p_1177->g_240;
            int i;
            (*l_417) = ((VECTOR(int32_t, 8))(3L, 0x6CCCB5E0L, (safe_div_func_int16_t_s_s((*p_60), ((*l_412) |= (safe_add_func_int64_t_s_s((*p_1177->g_278), ((VECTOR(int64_t, 4))(hadd(((VECTOR(int64_t, 2))(l_410.sf8)).xxxx, ((VECTOR(int64_t, 16))(p_1177->g_411.s7251002241705156)).s9f27))).w))))), (p_1177->g_234[7].f3 ^ (safe_lshift_func_uint16_t_u_u(0xA4C9L, p_62))), ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(p_1177->g_416.wwxw)).hi)).xxyy)))).s5;
            l_418 = l_418;
        }
        (*l_420) = p_1177->g_419;
    }
lbl_584:
    for (p_1177->g_196 = 21; (p_1177->g_196 <= (-14)); --p_1177->g_196)
    { /* block id: 150 */
        int32_t **l_424 = &l_423;
        int16_t *l_430[7][5] = {{&p_1177->g_22,&p_1177->g_22,&p_1177->g_22,&p_1177->g_22,&p_1177->g_22},{&p_1177->g_22,&p_1177->g_22,&p_1177->g_22,&p_1177->g_22,&p_1177->g_22},{&p_1177->g_22,&p_1177->g_22,&p_1177->g_22,&p_1177->g_22,&p_1177->g_22},{&p_1177->g_22,&p_1177->g_22,&p_1177->g_22,&p_1177->g_22,&p_1177->g_22},{&p_1177->g_22,&p_1177->g_22,&p_1177->g_22,&p_1177->g_22,&p_1177->g_22},{&p_1177->g_22,&p_1177->g_22,&p_1177->g_22,&p_1177->g_22,&p_1177->g_22},{&p_1177->g_22,&p_1177->g_22,&p_1177->g_22,&p_1177->g_22,&p_1177->g_22}};
        int16_t **l_429 = &l_430[2][2];
        int16_t ***l_428 = &l_429;
        int i, j;
        (*l_424) = l_423;
        for (p_1177->g_419.f3 = 0; (p_1177->g_419.f3 >= 1); ++p_1177->g_419.f3)
        { /* block id: 154 */
            int32_t *l_427 = &p_1177->g_419.f0;
            if (p_61)
                break;
            (*l_427) |= p_62;
        }
        (*l_428) = &p_60;
    }
    for (p_1177->g_419.f3 = 0; (p_1177->g_419.f3 <= 58); p_1177->g_419.f3 = safe_add_func_uint32_t_u_u(p_1177->g_419.f3, 2))
    { /* block id: 162 */
        int32_t *l_433 = (void*)0;
        int32_t *l_434 = &p_1177->g_419.f0;
        int32_t l_435[9][1] = {{(-10L)},{(-10L)},{(-10L)},{(-10L)},{(-10L)},{(-10L)},{(-10L)},{(-10L)},{(-10L)}};
        int32_t *l_436 = (void*)0;
        int32_t *l_437 = (void*)0;
        int32_t *l_438[5] = {&l_435[0][0],&l_435[0][0],&l_435[0][0],&l_435[0][0],&l_435[0][0]};
        uint8_t l_439 = 246UL;
        VECTOR(int32_t, 2) l_449 = (VECTOR(int32_t, 2))(0x784B31CFL, 0x60B09C2FL);
        uint16_t *l_452 = &p_1177->g_367[1];
        uint64_t *l_466 = (void*)0;
        VECTOR(int16_t, 8) l_514 = (VECTOR(int16_t, 8))(0x1DEBL, (VECTOR(int16_t, 4))(0x1DEBL, (VECTOR(int16_t, 2))(0x1DEBL, 0x5470L), 0x5470L), 0x5470L, 0x1DEBL, 0x5470L);
        int8_t l_538[2];
        uint8_t l_574 = 0xAFL;
        int16_t ***l_650 = (void*)0;
        VECTOR(uint32_t, 2) l_659 = (VECTOR(uint32_t, 2))(0UL, 0x726A1B11L);
        int64_t l_705 = (-9L);
        int64_t l_706 = 0x0120618B32B0440AL;
        int32_t ***l_750 = (void*)0;
        int i, j;
        for (i = 0; i < 2; i++)
            l_538[i] = 0x4FL;
        l_439--;
        (*l_434) |= (safe_sub_func_int32_t_s_s(l_386.s0, ((((*p_1177->g_107) != &l_435[1][0]) , (safe_mod_func_uint32_t_u_u((safe_mul_func_int16_t_s_s(0x22C9L, 65528UL)), l_448))) < ((*l_452) = (((p_62 ^ ((VECTOR(int32_t, 2))(l_449.yx)).even) == ((0x5B2CDF69745E2367L < ((safe_lshift_func_int16_t_s_u(p_1177->g_191.z, 15)) != p_61)) != 9L)) , 0xD0FEL)))));
        for (p_1177->g_413 = 0; (p_1177->g_413 >= (-17)); p_1177->g_413--)
        { /* block id: 168 */
            int32_t l_485[3];
            int32_t l_486 = (-1L);
            uint64_t l_496 = 0xD50700946E9BF9DCL;
            int32_t l_523 = (-3L);
            VECTOR(int32_t, 4) l_592 = (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 1L), 1L);
            int16_t *l_593 = (void*)0;
            int16_t ***l_697 = (void*)0;
            int64_t *l_714 = (void*)0;
            VECTOR(uint8_t, 2) l_758 = (VECTOR(uint8_t, 2))(0x38L, 0xA4L);
            int32_t l_762 = 0x44159552L;
            int i;
            for (i = 0; i < 3; i++)
                l_485[i] = 0x646AADC1L;
            if (p_61)
            { /* block id: 169 */
                int16_t l_476 = 0L;
                int32_t l_488 = 2L;
                int32_t l_489 = 2L;
                int32_t l_492 = 0x547CC353L;
                int32_t l_519 = 0x7D21C2D1L;
                int32_t **l_526 = &l_423;
                for (p_1177->g_368 = (-16); (p_1177->g_368 >= 17); p_1177->g_368 = safe_add_func_int16_t_s_s(p_1177->g_368, 4))
                { /* block id: 172 */
                    int32_t **l_463 = &l_438[4];
                    VECTOR(int32_t, 8) l_487 = (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x41C4D0CDL), 0x41C4D0CDL), 0x41C4D0CDL, 1L, 0x41C4D0CDL);
                    int i;
                    for (p_1177->g_282.f1 = 0; (p_1177->g_282.f1 > 20); p_1177->g_282.f1++)
                    { /* block id: 175 */
                        int32_t **l_462 = &l_436;
                        int32_t ***l_461 = &l_462;
                        uint64_t **l_465 = &p_1177->g_464;
                        uint64_t *l_469 = (void*)0;
                        uint64_t *l_470 = (void*)0;
                        uint64_t *l_471 = (void*)0;
                        uint64_t *l_472 = (void*)0;
                        uint64_t *l_473 = (void*)0;
                        uint64_t *l_474 = (void*)0;
                        uint64_t *l_475[7][10] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
                        int8_t *l_477 = &p_1177->g_196;
                        int64_t **l_482 = &l_481;
                        int32_t l_490 = 0x1E955AA3L;
                        int32_t l_491 = (-6L);
                        int32_t l_493 = 0x6504034AL;
                        int32_t l_494 = (-10L);
                        int32_t l_495 = 0x24145603L;
                        volatile int8_t ** volatile *l_502 = (void*)0;
                        volatile int8_t ** volatile *l_503 = (void*)0;
                        volatile int8_t ** volatile *l_504 = &p_1177->g_499[0][3];
                        int i, j;
                        (*l_434) &= ((((safe_rshift_func_int8_t_s_s(((p_1177->g_478.x = ((((*l_477) = ((((*l_465) = ((((*l_461) = &p_1177->g_101) == l_463) , p_1177->g_464)) != l_466) || (l_476 = (safe_mod_func_uint16_t_u_u((+FAKE_DIVERGE(p_1177->local_1_offset, get_local_id(1), 10)), p_1177->g_117.f1))))) , l_463) == (void*)0)) , 0x27L), 3)) == ((safe_mul_func_int8_t_s_s(((((*l_482) = l_481) != p_1177->g_483) < (-1L)), l_485[1])) || p_61)) > 4L) == 0x733923D9L);
                        --l_496;
                        (*l_504) = p_1177->g_499[4][3];
                        (*l_462) = (*p_1177->g_107);
                    }
                    p_1177->g_506 = p_1177->g_505;
                    for (p_1177->g_282.f0 = 0; (p_1177->g_282.f0 <= (-18)); p_1177->g_282.f0 = safe_sub_func_uint32_t_u_u(p_1177->g_282.f0, 6))
                    { /* block id: 190 */
                        int64_t *l_509 = (void*)0;
                        (*l_434) = (((VECTOR(int8_t, 2))(9L, 0L)).lo , (l_523 = ((!(((void*)0 != l_509) , ((+(*p_1177->g_278)) == ((safe_sub_func_int8_t_s_s((p_1177->g_419.f0 > p_62), (((l_488 ^ ((VECTOR(int16_t, 8))((safe_add_func_uint16_t_u_u((((VECTOR(int8_t, 2))(1L, 0x29L)).odd | 253UL), ((VECTOR(int16_t, 8))(clz(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(0x38DFL, ((VECTOR(int16_t, 2))(l_514.s34)), 3L)).wywwzzyyyzzyywxx)).sf7)).xxxyxyyy))).s7)), ((safe_add_func_int8_t_s_s(p_62, (((l_486 = (safe_mul_func_int16_t_s_s(((((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 4))(p_62, 0UL, 0UL, 1UL)).odd)), 0x8A05L, 65535UL, 0UL, 65535UL, 0xAD4AL, p_61, ((VECTOR(uint16_t, 2))(0xACE1L)), p_61, ((VECTOR(uint16_t, 4))(65534UL)), 0x3DCDL)).sc == 0x1A4FL) != p_61), l_496))) || l_519) == p_61))) > p_62), (-1L), ((VECTOR(int16_t, 4))(0L)), (-1L))).s7) , (void*)0) != p_1177->g_520))) , GROUP_DIVERGE(1, 1))))) != 0x31L)));
                        (*p_1177->g_107) = (void*)0;
                    }
                    p_1177->g_525 = p_1177->g_524;
                }
                (*l_526) = (void*)0;
            }
            else
            { /* block id: 199 */
                int64_t *l_534[9][1][2] = {{{(void*)0,(void*)0}},{{(void*)0,(void*)0}},{{(void*)0,(void*)0}},{{(void*)0,(void*)0}},{{(void*)0,(void*)0}},{{(void*)0,(void*)0}},{{(void*)0,(void*)0}},{{(void*)0,(void*)0}},{{(void*)0,(void*)0}}};
                int32_t l_535[4];
                VECTOR(uint8_t, 2) l_557 = (VECTOR(uint8_t, 2))(0x76L, 0x4AL);
                uint64_t l_573 = 0x4B4B009800E81DC3L;
                int i, j, k;
                for (i = 0; i < 4; i++)
                    l_535[i] = 0x62464922L;
                if (((((*l_434) <= (safe_rshift_func_uint8_t_u_s(((safe_mod_func_int32_t_s_s((((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 16))(l_531.s3435730154530753)).even)).s41)).even || ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(0x45EC3F12L, ((safe_add_func_uint8_t_u_u(p_62, ((l_535[1] &= (*p_1177->g_278)) || (~(safe_mul_func_uint16_t_u_u(FAKE_DIVERGE(p_1177->local_1_offset, get_local_id(1), 10), (**p_1177->g_520))))))) <= 0xEE140665085EC5E8L), 0x78A70DBCL, 0L)).wxyzxxwwzwxwywxx)))).sc), p_61)) && (*l_434)), (p_1177->g_293.x <= 0x76L)))) || (*p_60)) || l_538[1]))
                { /* block id: 201 */
                    int8_t *l_540 = &p_1177->g_368;
                    int8_t **l_539 = &l_540;
                    int16_t *l_568 = (void*)0;
                    int16_t *l_569 = (void*)0;
                    int16_t *l_570 = (void*)0;
                    int16_t *l_571 = (void*)0;
                    int16_t *l_572 = (void*)0;
                    (*l_434) |= ((void*)0 != l_539);
                    if (l_496)
                        goto lbl_541;
                    if ((((safe_mod_func_int8_t_s_s((safe_lshift_func_int8_t_s_u((safe_add_func_int8_t_s_s((safe_unary_minus_func_int8_t_s(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))(add_sat(((VECTOR(int8_t, 4))(sub_sat(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 4))(sub_sat(((VECTOR(int8_t, 8))(1L, ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(p_1177->g_549.s72)), 0x29L, 0x38L)), (0L != (((((safe_add_func_uint8_t_u_u(((safe_rshift_func_int8_t_s_u(((VECTOR(int8_t, 4))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 4),((VECTOR(int8_t, 8))(l_554.s5f5e4d82)).odd, ((VECTOR(int8_t, 16))(p_61, 0x10L, ((VECTOR(int8_t, 8))(0L, (-1L), ((p_61 & 0xAA19L) > (l_535[1] = (safe_lshift_func_int16_t_s_s((((VECTOR(uint8_t, 4))(add_sat(((VECTOR(uint8_t, 2))(mul_hi(((VECTOR(uint8_t, 8))(mul_hi(((VECTOR(uint8_t, 2))(0xD8L, 0x37L)).xxxxxyyx, ((VECTOR(uint8_t, 16))(0x74L, ((VECTOR(uint8_t, 2))(l_557.yy)), ((VECTOR(uint8_t, 4))(5UL, ((safe_rshift_func_uint8_t_u_u((&p_1177->g_234[7] == (p_1177->g_560 , l_561)), 7)) > FAKE_DIVERGE(p_1177->local_0_offset, get_local_id(0), 10)), 0xCFL, 1UL)), ((VECTOR(uint8_t, 8))(rhadd(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(5UL, 4UL)), (!((safe_mod_func_uint8_t_u_u(GROUP_DIVERGE(1, 1), ((safe_mul_func_uint16_t_u_u(p_1177->g_326.s2, ((VECTOR(uint16_t, 4))((safe_lshift_func_int8_t_s_u((p_62 ^ 0x92L), FAKE_DIVERGE(p_1177->group_1_offset, get_group_id(1), 10))), ((VECTOR(uint16_t, 2))(0x5F10L)), 0xEFADL)).x)) ^ (**p_1177->g_520)))) && GROUP_DIVERGE(2, 1))), 0UL, 255UL, p_62, ((VECTOR(uint8_t, 8))(248UL)), 0xFAL, 0xF5L)).lo, ((VECTOR(uint8_t, 8))(0UL))))), 255UL)).lo))).s71, ((VECTOR(uint8_t, 2))(0UL))))).yxxy, ((VECTOR(uint8_t, 4))(0x96L))))).x || GROUP_DIVERGE(2, 1)), p_1177->g_416.z)))), p_61, l_573, ((VECTOR(int8_t, 2))(0L)), (-1L))), ((VECTOR(int8_t, 2))(0x47L)), 0x5DL, l_574, (-9L), 0x78L)).sc990, ((VECTOR(int8_t, 4))(0x5EL))))).z, p_61)) >= p_1177->g_196), (*l_434))) != p_1177->g_175.s0) | 0x1A9C1BA025394CD6L) >= p_1177->g_132.x) != 0UL)), (-7L), (-7L))).hi, ((VECTOR(int8_t, 4))(0L))))))), ((VECTOR(int8_t, 4))((-6L)))))).xxzxzwxzxxwzxywz, ((VECTOR(int8_t, 16))(6L))))).lo)).s0)), p_62)), p_61)), p_1177->g_404.y)) & 255UL) , (*p_1177->g_320)))
                    { /* block id: 205 */
                        if (p_61)
                            break;
                    }
                    else
                    { /* block id: 207 */
                        int32_t l_575 = 0x41C6AEDBL;
                        (*l_434) = l_575;
                        p_1177->g_576 = (*p_1177->g_99);
                        if (p_61)
                            break;
                    }
                }
                else
                { /* block id: 212 */
                    int32_t *l_577 = &l_435[1][0];
                    int32_t **l_579 = &l_434;
                    (*l_579) = l_577;
                    for (p_1177->g_524.f3 = 0; (p_1177->g_524.f3 > 9); p_1177->g_524.f3++)
                    { /* block id: 216 */
                        return (**p_1177->g_520);
                    }
                    for (l_448 = 0; (l_448 > 1); l_448 = safe_add_func_uint64_t_u_u(l_448, 9))
                    { /* block id: 221 */
                        if (p_62)
                            break;
                        return (**p_1177->g_520);
                    }
                    l_438[1] = &l_448;
                }
                (*p_1177->g_320) = 0x6019485FL;
                if (p_62)
                    goto lbl_584;
            }
            if (((safe_mul_func_uint8_t_u_u((((safe_lshift_func_int8_t_s_s(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 16))((*p_1177->g_500), ((VECTOR(int8_t, 2))(0x38L, (-1L))), 0x37L, 1L, 0x26L, 0x28L, ((VECTOR(int8_t, 4))(l_589.s198c)), ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(clz(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 16))(min(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(l_590.yxxyyxxxyyxyyxxx)).sa8e7)).zxzwyywxwzxxxyxz, ((VECTOR(int8_t, 16))(l_591.yxxxyyxxxyxxxxyy)))))))))).s46a3)), 0x33L)))).s5, 4)) | 0x1DF0L) >= p_61), (l_561 != (p_1177->g_419.f1 , l_561)))) ^ (4294967295UL || (((((VECTOR(int32_t, 8))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 16))(l_592.zwxwzyxwwwyxzzyy)).hi, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(0x3E2BF1D1L, (-3L))))), ((VECTOR(int32_t, 2))(0x1EE9FCADL, 0x47B04A55L)), 3L, 0x3AD73CD8L, 1L, 0x730B445BL))))).s5 | l_496) < (l_523 &= p_1177->g_175.s3)) & p_61))))
            { /* block id: 231 */
                VECTOR(uint8_t, 4) l_598 = (VECTOR(uint8_t, 4))(0x9AL, (VECTOR(uint8_t, 2))(0x9AL, 0x41L), 0x41L);
                int8_t *l_600 = &p_1177->g_196;
                uint8_t *l_601 = (void*)0;
                uint8_t *l_602 = (void*)0;
                uint8_t *l_603 = (void*)0;
                uint8_t *l_604 = (void*)0;
                uint8_t *l_605 = (void*)0;
                uint8_t *l_606 = (void*)0;
                uint8_t *l_607[6][8][4];
                int32_t l_612[10][9][2] = {{{7L,(-1L)},{7L,(-1L)},{7L,(-1L)},{7L,(-1L)},{7L,(-1L)},{7L,(-1L)},{7L,(-1L)},{7L,(-1L)},{7L,(-1L)}},{{7L,(-1L)},{7L,(-1L)},{7L,(-1L)},{7L,(-1L)},{7L,(-1L)},{7L,(-1L)},{7L,(-1L)},{7L,(-1L)},{7L,(-1L)}},{{7L,(-1L)},{7L,(-1L)},{7L,(-1L)},{7L,(-1L)},{7L,(-1L)},{7L,(-1L)},{7L,(-1L)},{7L,(-1L)},{7L,(-1L)}},{{7L,(-1L)},{7L,(-1L)},{7L,(-1L)},{7L,(-1L)},{7L,(-1L)},{7L,(-1L)},{7L,(-1L)},{7L,(-1L)},{7L,(-1L)}},{{7L,(-1L)},{7L,(-1L)},{7L,(-1L)},{7L,(-1L)},{7L,(-1L)},{7L,(-1L)},{7L,(-1L)},{7L,(-1L)},{7L,(-1L)}},{{7L,(-1L)},{7L,(-1L)},{7L,(-1L)},{7L,(-1L)},{7L,(-1L)},{7L,(-1L)},{7L,(-1L)},{7L,(-1L)},{7L,(-1L)}},{{7L,(-1L)},{7L,(-1L)},{7L,(-1L)},{7L,(-1L)},{7L,(-1L)},{7L,(-1L)},{7L,(-1L)},{7L,(-1L)},{7L,(-1L)}},{{7L,(-1L)},{7L,(-1L)},{7L,(-1L)},{7L,(-1L)},{7L,(-1L)},{7L,(-1L)},{7L,(-1L)},{7L,(-1L)},{7L,(-1L)}},{{7L,(-1L)},{7L,(-1L)},{7L,(-1L)},{7L,(-1L)},{7L,(-1L)},{7L,(-1L)},{7L,(-1L)},{7L,(-1L)},{7L,(-1L)}},{{7L,(-1L)},{7L,(-1L)},{7L,(-1L)},{7L,(-1L)},{7L,(-1L)},{7L,(-1L)},{7L,(-1L)},{7L,(-1L)},{7L,(-1L)}}};
                uint16_t l_632 = 65533UL;
                uint64_t **l_638 = &p_1177->g_464;
                VECTOR(uint32_t, 2) l_658 = (VECTOR(uint32_t, 2))(4294967292UL, 4294967292UL);
                int16_t *l_744 = (void*)0;
                int16_t *l_745[3][1];
                VECTOR(int16_t, 2) l_747 = (VECTOR(int16_t, 2))(0x26B9L, 0x31C0L);
                VECTOR(int16_t, 2) l_749 = (VECTOR(int16_t, 2))((-10L), 0x46F2L);
                int32_t ****l_751 = &l_750;
                int8_t *l_752 = (void*)0;
                int8_t *l_753 = (void*)0;
                int8_t *l_754 = (void*)0;
                int8_t *l_755 = (void*)0;
                int8_t *l_756[1];
                int32_t l_757 = (-1L);
                int i, j, k;
                for (i = 0; i < 6; i++)
                {
                    for (j = 0; j < 8; j++)
                    {
                        for (k = 0; k < 4; k++)
                            l_607[i][j][k] = (void*)0;
                    }
                }
                for (i = 0; i < 3; i++)
                {
                    for (j = 0; j < 1; j++)
                        l_745[i][j] = (void*)0;
                }
                for (i = 0; i < 1; i++)
                    l_756[i] = &l_538[1];
                if ((((p_1177->g_293.x = (safe_rshift_func_int8_t_s_s(((*l_600) = (((((VECTOR(uint8_t, 4))(l_598.xwzw)).y > ((VECTOR(int8_t, 16))(clz(((VECTOR(int8_t, 8))(p_1177->g_599.yxxxyyyx)).s1341130420372554))).sb) & 0L) == (p_62 >= 0x82208EF7L))), 7))) >= ((0xDA446E86L < ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(6L, 0x5E629C70L, 0x44AEE256L, 1L)).hi)), (p_62 , ((((safe_rshift_func_uint8_t_u_u((p_1177->g_610 , ((l_598.w | ((VECTOR(int64_t, 8))(clz(((VECTOR(int64_t, 16))(min(((VECTOR(int64_t, 16))(3L, l_523, p_61, 0x0EBE067C2191F8A5L, (*p_1177->g_483), 0x04DE69A8E1898194L, 0x72A6B75C00BF6C46L, 7L, 0x5E184BECCB507F1FL, (-5L), ((VECTOR(int64_t, 2))(0x55D1FBECFC8D49C4L)), l_611, (-1L), 0x39FCD6DF8255FC06L, 0x7131D4E7176506A3L)), (int64_t)(*p_1177->g_278)))).even))).s7) > 65534UL)), p_61)) >= l_612[5][1][0]) , &p_60) != p_1177->g_520)), l_523, (-1L), 0L, 0x6EA8BED8L, ((VECTOR(int32_t, 4))(0L)), 0L, ((VECTOR(int32_t, 2))(3L)), 1L, 0x0FF6D6CAL)).s3) , p_61)) == l_612[5][1][0]))
                { /* block id: 234 */
                    uint64_t **l_618 = &l_466;
                    int64_t *l_619[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                    int32_t l_633 = (-1L);
                    int32_t l_634[9][6][4] = {{{(-1L),0x25C738EDL,(-6L),5L},{(-1L),0x25C738EDL,(-6L),5L},{(-1L),0x25C738EDL,(-6L),5L},{(-1L),0x25C738EDL,(-6L),5L},{(-1L),0x25C738EDL,(-6L),5L},{(-1L),0x25C738EDL,(-6L),5L}},{{(-1L),0x25C738EDL,(-6L),5L},{(-1L),0x25C738EDL,(-6L),5L},{(-1L),0x25C738EDL,(-6L),5L},{(-1L),0x25C738EDL,(-6L),5L},{(-1L),0x25C738EDL,(-6L),5L},{(-1L),0x25C738EDL,(-6L),5L}},{{(-1L),0x25C738EDL,(-6L),5L},{(-1L),0x25C738EDL,(-6L),5L},{(-1L),0x25C738EDL,(-6L),5L},{(-1L),0x25C738EDL,(-6L),5L},{(-1L),0x25C738EDL,(-6L),5L},{(-1L),0x25C738EDL,(-6L),5L}},{{(-1L),0x25C738EDL,(-6L),5L},{(-1L),0x25C738EDL,(-6L),5L},{(-1L),0x25C738EDL,(-6L),5L},{(-1L),0x25C738EDL,(-6L),5L},{(-1L),0x25C738EDL,(-6L),5L},{(-1L),0x25C738EDL,(-6L),5L}},{{(-1L),0x25C738EDL,(-6L),5L},{(-1L),0x25C738EDL,(-6L),5L},{(-1L),0x25C738EDL,(-6L),5L},{(-1L),0x25C738EDL,(-6L),5L},{(-1L),0x25C738EDL,(-6L),5L},{(-1L),0x25C738EDL,(-6L),5L}},{{(-1L),0x25C738EDL,(-6L),5L},{(-1L),0x25C738EDL,(-6L),5L},{(-1L),0x25C738EDL,(-6L),5L},{(-1L),0x25C738EDL,(-6L),5L},{(-1L),0x25C738EDL,(-6L),5L},{(-1L),0x25C738EDL,(-6L),5L}},{{(-1L),0x25C738EDL,(-6L),5L},{(-1L),0x25C738EDL,(-6L),5L},{(-1L),0x25C738EDL,(-6L),5L},{(-1L),0x25C738EDL,(-6L),5L},{(-1L),0x25C738EDL,(-6L),5L},{(-1L),0x25C738EDL,(-6L),5L}},{{(-1L),0x25C738EDL,(-6L),5L},{(-1L),0x25C738EDL,(-6L),5L},{(-1L),0x25C738EDL,(-6L),5L},{(-1L),0x25C738EDL,(-6L),5L},{(-1L),0x25C738EDL,(-6L),5L},{(-1L),0x25C738EDL,(-6L),5L}},{{(-1L),0x25C738EDL,(-6L),5L},{(-1L),0x25C738EDL,(-6L),5L},{(-1L),0x25C738EDL,(-6L),5L},{(-1L),0x25C738EDL,(-6L),5L},{(-1L),0x25C738EDL,(-6L),5L},{(-1L),0x25C738EDL,(-6L),5L}}};
                    uint16_t l_644[1];
                    int i, j, k;
                    for (i = 0; i < 1; i++)
                        l_644[i] = 65530UL;
                    if ((((safe_mod_func_int64_t_s_s((l_592.w ^= ((0UL || 0L) > ((-5L) > ((*l_434) &= (l_617 != l_618))))), (((((safe_rshift_func_int8_t_s_s((safe_sub_func_uint8_t_u_u((safe_mul_func_int16_t_s_s(((safe_lshift_func_uint16_t_u_s(GROUP_DIVERGE(1, 1), (*p_60))) && ((safe_lshift_func_uint16_t_u_u((l_485[0] < (safe_mul_func_int16_t_s_s((*p_60), p_1177->g_33.x))), 5)) <= l_632)), (*p_60))), l_485[1])), p_61)) <= p_1177->g_22) >= l_485[2]) == l_632) && l_486))) != 248UL) | p_62))
                    { /* block id: 237 */
                        uint16_t l_635[2];
                        int i;
                        for (i = 0; i < 2; i++)
                            l_635[i] = 0x2CB4L;
                        --l_635[0];
                    }
                    else
                    { /* block id: 239 */
                        uint64_t ***l_639 = &l_617;
                        VECTOR(int32_t, 2) l_643 = (VECTOR(int32_t, 2))(4L, 1L);
                        int16_t **l_649 = &l_593;
                        int16_t ***l_648[4][5] = {{&l_649,&l_649,&l_649,&l_649,&l_649},{&l_649,&l_649,&l_649,&l_649,&l_649},{&l_649,&l_649,&l_649,&l_649,&l_649},{&l_649,&l_649,&l_649,&l_649,&l_649}};
                        int16_t ****l_647[7][9][4] = {{{&l_648[2][0],&l_648[2][0],&l_648[0][1],&l_648[2][0]},{&l_648[2][0],&l_648[2][0],&l_648[0][1],&l_648[2][0]},{&l_648[2][0],&l_648[2][0],&l_648[0][1],&l_648[2][0]},{&l_648[2][0],&l_648[2][0],&l_648[0][1],&l_648[2][0]},{&l_648[2][0],&l_648[2][0],&l_648[0][1],&l_648[2][0]},{&l_648[2][0],&l_648[2][0],&l_648[0][1],&l_648[2][0]},{&l_648[2][0],&l_648[2][0],&l_648[0][1],&l_648[2][0]},{&l_648[2][0],&l_648[2][0],&l_648[0][1],&l_648[2][0]},{&l_648[2][0],&l_648[2][0],&l_648[0][1],&l_648[2][0]}},{{&l_648[2][0],&l_648[2][0],&l_648[0][1],&l_648[2][0]},{&l_648[2][0],&l_648[2][0],&l_648[0][1],&l_648[2][0]},{&l_648[2][0],&l_648[2][0],&l_648[0][1],&l_648[2][0]},{&l_648[2][0],&l_648[2][0],&l_648[0][1],&l_648[2][0]},{&l_648[2][0],&l_648[2][0],&l_648[0][1],&l_648[2][0]},{&l_648[2][0],&l_648[2][0],&l_648[0][1],&l_648[2][0]},{&l_648[2][0],&l_648[2][0],&l_648[0][1],&l_648[2][0]},{&l_648[2][0],&l_648[2][0],&l_648[0][1],&l_648[2][0]},{&l_648[2][0],&l_648[2][0],&l_648[0][1],&l_648[2][0]}},{{&l_648[2][0],&l_648[2][0],&l_648[0][1],&l_648[2][0]},{&l_648[2][0],&l_648[2][0],&l_648[0][1],&l_648[2][0]},{&l_648[2][0],&l_648[2][0],&l_648[0][1],&l_648[2][0]},{&l_648[2][0],&l_648[2][0],&l_648[0][1],&l_648[2][0]},{&l_648[2][0],&l_648[2][0],&l_648[0][1],&l_648[2][0]},{&l_648[2][0],&l_648[2][0],&l_648[0][1],&l_648[2][0]},{&l_648[2][0],&l_648[2][0],&l_648[0][1],&l_648[2][0]},{&l_648[2][0],&l_648[2][0],&l_648[0][1],&l_648[2][0]},{&l_648[2][0],&l_648[2][0],&l_648[0][1],&l_648[2][0]}},{{&l_648[2][0],&l_648[2][0],&l_648[0][1],&l_648[2][0]},{&l_648[2][0],&l_648[2][0],&l_648[0][1],&l_648[2][0]},{&l_648[2][0],&l_648[2][0],&l_648[0][1],&l_648[2][0]},{&l_648[2][0],&l_648[2][0],&l_648[0][1],&l_648[2][0]},{&l_648[2][0],&l_648[2][0],&l_648[0][1],&l_648[2][0]},{&l_648[2][0],&l_648[2][0],&l_648[0][1],&l_648[2][0]},{&l_648[2][0],&l_648[2][0],&l_648[0][1],&l_648[2][0]},{&l_648[2][0],&l_648[2][0],&l_648[0][1],&l_648[2][0]},{&l_648[2][0],&l_648[2][0],&l_648[0][1],&l_648[2][0]}},{{&l_648[2][0],&l_648[2][0],&l_648[0][1],&l_648[2][0]},{&l_648[2][0],&l_648[2][0],&l_648[0][1],&l_648[2][0]},{&l_648[2][0],&l_648[2][0],&l_648[0][1],&l_648[2][0]},{&l_648[2][0],&l_648[2][0],&l_648[0][1],&l_648[2][0]},{&l_648[2][0],&l_648[2][0],&l_648[0][1],&l_648[2][0]},{&l_648[2][0],&l_648[2][0],&l_648[0][1],&l_648[2][0]},{&l_648[2][0],&l_648[2][0],&l_648[0][1],&l_648[2][0]},{&l_648[2][0],&l_648[2][0],&l_648[0][1],&l_648[2][0]},{&l_648[2][0],&l_648[2][0],&l_648[0][1],&l_648[2][0]}},{{&l_648[2][0],&l_648[2][0],&l_648[0][1],&l_648[2][0]},{&l_648[2][0],&l_648[2][0],&l_648[0][1],&l_648[2][0]},{&l_648[2][0],&l_648[2][0],&l_648[0][1],&l_648[2][0]},{&l_648[2][0],&l_648[2][0],&l_648[0][1],&l_648[2][0]},{&l_648[2][0],&l_648[2][0],&l_648[0][1],&l_648[2][0]},{&l_648[2][0],&l_648[2][0],&l_648[0][1],&l_648[2][0]},{&l_648[2][0],&l_648[2][0],&l_648[0][1],&l_648[2][0]},{&l_648[2][0],&l_648[2][0],&l_648[0][1],&l_648[2][0]},{&l_648[2][0],&l_648[2][0],&l_648[0][1],&l_648[2][0]}},{{&l_648[2][0],&l_648[2][0],&l_648[0][1],&l_648[2][0]},{&l_648[2][0],&l_648[2][0],&l_648[0][1],&l_648[2][0]},{&l_648[2][0],&l_648[2][0],&l_648[0][1],&l_648[2][0]},{&l_648[2][0],&l_648[2][0],&l_648[0][1],&l_648[2][0]},{&l_648[2][0],&l_648[2][0],&l_648[0][1],&l_648[2][0]},{&l_648[2][0],&l_648[2][0],&l_648[0][1],&l_648[2][0]},{&l_648[2][0],&l_648[2][0],&l_648[0][1],&l_648[2][0]},{&l_648[2][0],&l_648[2][0],&l_648[0][1],&l_648[2][0]},{&l_648[2][0],&l_648[2][0],&l_648[0][1],&l_648[2][0]}}};
                        int32_t l_666 = 0x3EA1F3B1L;
                        uint8_t ***l_673 = &p_1177->g_671;
                        int i, j, k;
                        (*l_434) = ((((((*l_639) = l_638) != l_640) | ((VECTOR(uint8_t, 2))(254UL, 254UL)).even) ^ (safe_sub_func_uint16_t_u_u((((--l_644[0]) <= p_61) && (l_666 ^= (((*p_1177->g_99) , ((l_650 = (void*)0) == &p_1177->g_520)) ^ (!((VECTOR(int32_t, 16))(rotate(((VECTOR(int32_t, 2))(max(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(0x1D6ABEADL, 8L, ((FAKE_DIVERGE(p_1177->group_0_offset, get_group_id(0), 10) != ((safe_lshift_func_int8_t_s_u(p_61, 1)) == (safe_add_func_uint64_t_u_u((((VECTOR(int8_t, 2))(min(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 8))(sub_sat(((VECTOR(int8_t, 4))(sub_sat(((VECTOR(int8_t, 2))(p_1177->g_655.s30)).xxyy, ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(max(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))((-6L), ((VECTOR(int8_t, 2))(p_1177->g_656.zy)), (((VECTOR(uint32_t, 8))(0xAE664DB1L, 1UL, 4UL, ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(p_1177->g_657.yy)).xxxy)), 1UL)).s0 & ((VECTOR(uint32_t, 16))(0xD156A694L, 4294967290UL, 0x4D3F8C20L, 0xFF51297CL, 4294967289UL, ((VECTOR(uint32_t, 8))(mad_sat(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(safe_mul24_func_uint32_t_u_u(VECTOR(uint32_t, 4),((VECTOR(uint32_t, 4))(l_658.yyyx)), ((VECTOR(uint32_t, 16))(l_659.xxyxxxyxxxyxyyyy)).s308f))).zxywwwxw)), ((VECTOR(uint32_t, 8))(add_sat(((VECTOR(uint32_t, 8))(mad_hi(((VECTOR(uint32_t, 8))(p_1177->g_660.yyxxxxxx)), ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(upsample(((VECTOR(uint16_t, 2))(p_1177->g_661.sef)).xxxy, ((VECTOR(uint16_t, 4))(l_662.yxxx))))).wxywyxwy)), ((VECTOR(uint32_t, 4))(1UL, 0x983A0565L, 0x29D7A5FDL, 0xDDC8B9A0L)).zzxwxyyz))), ((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))(add_sat(((VECTOR(uint32_t, 4))(max(((VECTOR(uint32_t, 8))(safe_clamp_func(VECTOR(uint32_t, 8),uint32_t,((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(p_1177->g_663.yy)), 0x77D3F15FL, l_643.x, ((VECTOR(uint32_t, 4))(rotate(((VECTOR(uint32_t, 2))(0x9DDF40C6L, 2UL)).xyxx, ((VECTOR(uint32_t, 2))(1UL, 0xE2C7AC0FL)).xxxx))))), (uint32_t)((((safe_rshift_func_uint16_t_u_s(0x6364L, (*p_60))) ^ 0x0BB2BCE2L) , 0x0EL) & 250UL), (uint32_t)p_62))).lo, (uint32_t)p_61))), ((VECTOR(uint32_t, 4))(0xD0AEB4F5L))))), ((VECTOR(uint32_t, 8))(4294967295UL)), 4UL, ((VECTOR(uint32_t, 2))(0x2BA01FD3L)), 0x7B0C1606L)).hi))), ((VECTOR(uint32_t, 8))(4294967286UL))))), p_1177->g_282.f3, 0x1A0821FEL, 0xFEC1938DL)).sd), p_62, ((VECTOR(int8_t, 2))(0x14L)), (-4L))), ((VECTOR(int8_t, 4))((-3L))), 9L, 0x48L, 0x2BL, 0x31L)).odd, ((VECTOR(int8_t, 8))((-6L)))))).s3314030620634247)).lo)).lo))).ywzzxzzw, ((VECTOR(int8_t, 8))(0x57L))))).lo)).even, (int8_t)p_1177->g_282.f3))).lo || 0UL), p_61)))) , 9L), l_658.x, 0L, ((VECTOR(int32_t, 2))(0x397A5EE2L)), l_612[5][1][0], l_643.x, ((VECTOR(int32_t, 4))(0x3F8AA69CL)), p_62, 0L, 4L)).s82)), (int32_t)p_62))).yyyxxxxxxxxyxyyy, ((VECTOR(int32_t, 16))(1L))))).s9)))), p_1177->g_293.y))) ^ GROUP_DIVERGE(1, 1));
                        l_667--;
                        (*l_673) = &p_1177->g_240;
                    }
                    p_1177->g_674++;
                    for (l_632 = 0; (l_632 > 6); ++l_632)
                    { /* block id: 251 */
                        int8_t l_691 = (-1L);
                        VECTOR(int8_t, 8) l_694 = (VECTOR(int8_t, 8))(0x1FL, (VECTOR(int8_t, 4))(0x1FL, (VECTOR(int8_t, 2))(0x1FL, 0x67L), 0x67L), 0x67L, 0x1FL, 0x67L);
                        int16_t ***l_695 = (void*)0;
                        int16_t ****l_696[9][9] = {{&l_695,&l_695,(void*)0,&l_650,&l_695,&l_650,(void*)0,&l_695,&l_695},{&l_695,&l_695,(void*)0,&l_650,&l_695,&l_650,(void*)0,&l_695,&l_695},{&l_695,&l_695,(void*)0,&l_650,&l_695,&l_650,(void*)0,&l_695,&l_695},{&l_695,&l_695,(void*)0,&l_650,&l_695,&l_650,(void*)0,&l_695,&l_695},{&l_695,&l_695,(void*)0,&l_650,&l_695,&l_650,(void*)0,&l_695,&l_695},{&l_695,&l_695,(void*)0,&l_650,&l_695,&l_650,(void*)0,&l_695,&l_695},{&l_695,&l_695,(void*)0,&l_650,&l_695,&l_650,(void*)0,&l_695,&l_695},{&l_695,&l_695,(void*)0,&l_650,&l_695,&l_650,(void*)0,&l_695,&l_695},{&l_695,&l_695,(void*)0,&l_650,&l_695,&l_650,(void*)0,&l_695,&l_695}};
                        int32_t l_698 = 0x7B2985B6L;
                        int i, j;
                        (*l_434) = ((((p_61 , (safe_mod_func_int8_t_s_s((safe_div_func_uint8_t_u_u((safe_div_func_int32_t_s_s((*p_1177->g_320), p_1177->g_655.s6)), (((((l_592.w = (-1L)) == l_485[1]) ^ (p_62 || (((4294967290UL && FAKE_DIVERGE(p_1177->group_1_offset, get_group_id(1), 10)) != ((safe_mod_func_uint16_t_u_u(((safe_div_func_int64_t_s_s((safe_div_func_uint8_t_u_u(l_691, (safe_add_func_int8_t_s_s(((VECTOR(int8_t, 4))(l_694.s5366)).x, (l_523 ^= ((l_697 = l_695) != l_650)))))), l_486)) & l_658.y), 0xB9BCL)) & p_1177->g_404.x)) && p_62))) == 0x0FL) & (-8L)))), l_698))) < p_61) , 0x25481E26L) != l_644[0]);
                        if (p_61)
                            break;
                        (*p_1177->g_320) = 8L;
                    }
                    for (l_633 = 0; (l_633 <= 11); l_633 = safe_add_func_int64_t_s_s(l_633, 5))
                    { /* block id: 261 */
                        uint64_t l_719 = 0xD33C164DF391C9A8L;
                        int32_t l_720 = 0L;
                        int32_t l_721 = 0x10F94CF8L;
                        (*l_434) = ((!((+((((l_634[3][0][1] = ((safe_lshift_func_uint8_t_u_s((((safe_add_func_uint16_t_u_u(65526UL, l_634[1][5][2])) || (l_706 = l_705)) | (p_1177->g_655.s5 = (safe_sub_func_uint32_t_u_u(((void*)0 == &p_62), (safe_rshift_func_int16_t_s_u(((VECTOR(int16_t, 2))(p_1177->g_711.s35)).even, (safe_div_func_int16_t_s_s((l_714 == p_1177->g_464), p_1177->g_47)))))))), 3)) , ((((safe_add_func_int32_t_s_s(((safe_add_func_uint64_t_u_u((!l_719), p_1177->g_661.se)) & p_1177->g_191.z), p_1177->g_711.s2)) , l_719) >= l_633) || p_62))) | l_598.x) ^ (-1L)) & p_61)) == p_1177->g_525.f0)) == p_1177->g_132.y);
                        p_1177->g_722--;
                    }
                }
                else
                { /* block id: 268 */
                    if (l_612[0][0][0])
                        break;
                    (*p_1177->g_725) = &l_611;
                    return (*p_60);
                }
                (*l_434) |= ((safe_add_func_uint64_t_u_u(((!((((p_1177->g_368 ^= (safe_mul_func_int16_t_s_s(((((*l_600) &= (safe_div_func_int16_t_s_s(((*p_1177->g_278) , (**p_1177->g_520)), 0x68FAL))) , ((p_1177->g_98.f3 | (safe_div_func_uint32_t_u_u((safe_div_func_int8_t_s_s((safe_sub_func_uint64_t_u_u((safe_div_func_int16_t_s_s(((safe_mul_func_uint8_t_u_u((((((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(0x6D1EL, (-3L))), (safe_mul_func_uint16_t_u_u(0x3B57L, (p_1177->g_746 = 0x6986L))), ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(mul_hi(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 8))(mul_hi(((VECTOR(int16_t, 4))(l_747.xxxy)).zyzyxwyy, ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 16))(0x554EL, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(l_748.yxxxxxyx)).odd)), ((VECTOR(int16_t, 2))(l_749.xy)), 0x21DCL, ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 16))(0x447FL, 0x34A5L, ((VECTOR(int16_t, 8))(upsample(((VECTOR(int8_t, 4))((p_1177->g_102.x > (((((*l_751) = l_750) == (((((((&p_62 == (void*)0) ^ GROUP_DIVERGE(0, 1)) , (-7L)) < p_1177->g_599.y) < 0x6647207224C30B42L) < p_61) , (void*)0)) <= l_485[1]) ^ p_62)), ((VECTOR(int8_t, 2))(0x35L)), 0x13L)).wxyzyzyz, ((VECTOR(uint8_t, 8))(248UL))))), ((VECTOR(int16_t, 4))(0x6E35L)), 0x0BFCL, 0L)).hi)).s2, ((VECTOR(int16_t, 2))(0x4F61L)), p_1177->g_367[1], 0x0C80L, ((VECTOR(int16_t, 2))(0x5B54L)), 1L)).sdef2)).xxxxwzywzyzzxyyz)).odd))))).s70, ((VECTOR(int16_t, 2))(2L))))), 0x5C80L, 2L)), 7L)).s1 < p_1177->g_367[1]) , p_62) < p_61), p_1177->g_293.x)) || p_1177->g_191.w), l_592.y)), p_1177->g_411.s5)), 0x81L)), p_62))) , &l_438[3])) != &l_438[3]), (-1L)))) >= l_485[1]) & p_61) || (*p_60))) ^ p_1177->g_722), l_662.y)) <= p_1177->g_22);
                if (p_62)
                    break;
                l_758.x++;
            }
            else
            { /* block id: 280 */
                int32_t l_761[6][10][2] = {{{0x5F21E82EL,9L},{0x5F21E82EL,9L},{0x5F21E82EL,9L},{0x5F21E82EL,9L},{0x5F21E82EL,9L},{0x5F21E82EL,9L},{0x5F21E82EL,9L},{0x5F21E82EL,9L},{0x5F21E82EL,9L},{0x5F21E82EL,9L}},{{0x5F21E82EL,9L},{0x5F21E82EL,9L},{0x5F21E82EL,9L},{0x5F21E82EL,9L},{0x5F21E82EL,9L},{0x5F21E82EL,9L},{0x5F21E82EL,9L},{0x5F21E82EL,9L},{0x5F21E82EL,9L},{0x5F21E82EL,9L}},{{0x5F21E82EL,9L},{0x5F21E82EL,9L},{0x5F21E82EL,9L},{0x5F21E82EL,9L},{0x5F21E82EL,9L},{0x5F21E82EL,9L},{0x5F21E82EL,9L},{0x5F21E82EL,9L},{0x5F21E82EL,9L},{0x5F21E82EL,9L}},{{0x5F21E82EL,9L},{0x5F21E82EL,9L},{0x5F21E82EL,9L},{0x5F21E82EL,9L},{0x5F21E82EL,9L},{0x5F21E82EL,9L},{0x5F21E82EL,9L},{0x5F21E82EL,9L},{0x5F21E82EL,9L},{0x5F21E82EL,9L}},{{0x5F21E82EL,9L},{0x5F21E82EL,9L},{0x5F21E82EL,9L},{0x5F21E82EL,9L},{0x5F21E82EL,9L},{0x5F21E82EL,9L},{0x5F21E82EL,9L},{0x5F21E82EL,9L},{0x5F21E82EL,9L},{0x5F21E82EL,9L}},{{0x5F21E82EL,9L},{0x5F21E82EL,9L},{0x5F21E82EL,9L},{0x5F21E82EL,9L},{0x5F21E82EL,9L},{0x5F21E82EL,9L},{0x5F21E82EL,9L},{0x5F21E82EL,9L},{0x5F21E82EL,9L},{0x5F21E82EL,9L}}};
                int i, j, k;
                ++p_1177->g_763;
            }
        }
    }
    return l_748.y;
}


/* ------------------------------------------ */
/* 
 * reads : p_1177->g_282.f0
 * writes: p_1177->g_101 p_1177->g_282.f0
 */
int16_t * func_63(int32_t  p_64, int16_t * p_65, int16_t * p_66, struct S1 * p_1177)
{ /* block id: 129 */
    int32_t *l_378 = (void*)0;
    int32_t **l_379 = &p_1177->g_101;
    int32_t *l_380 = &p_1177->g_282.f0;
    int16_t *l_381 = &p_1177->g_22;
    (*l_379) = l_378;
    (*l_380) ^= 0x6BA9E482L;
    return l_381;
}


/* ------------------------------------------ */
/* 
 * reads : p_1177->g_36 p_1177->g_293 p_1177->g_282.f3 p_1177->g_22 p_1177->g_132 p_1177->g_191 p_1177->g_368 p_1177->g_102 p_1177->g_196 p_1177->g_108.f0 p_1177->g_282.f0 p_1177->g_320 p_1177->g_101 p_1177->g_124
 * writes: p_1177->g_282.f3 p_1177->g_367 p_1177->g_102 p_1177->g_282.f0 p_1177->g_196 p_1177->g_101
 */
uint64_t  func_78(int16_t * p_79, int16_t * p_80, int16_t * p_81, int16_t * p_82, struct S1 * p_1177)
{ /* block id: 105 */
    uint8_t l_339[6];
    int i;
    for (i = 0; i < 6; i++)
        l_339[i] = 246UL;
    if (l_339[1])
    { /* block id: 106 */
        int64_t l_348[9][9][3] = {{{0L,0L,(-3L)},{0L,0L,(-3L)},{0L,0L,(-3L)},{0L,0L,(-3L)},{0L,0L,(-3L)},{0L,0L,(-3L)},{0L,0L,(-3L)},{0L,0L,(-3L)},{0L,0L,(-3L)}},{{0L,0L,(-3L)},{0L,0L,(-3L)},{0L,0L,(-3L)},{0L,0L,(-3L)},{0L,0L,(-3L)},{0L,0L,(-3L)},{0L,0L,(-3L)},{0L,0L,(-3L)},{0L,0L,(-3L)}},{{0L,0L,(-3L)},{0L,0L,(-3L)},{0L,0L,(-3L)},{0L,0L,(-3L)},{0L,0L,(-3L)},{0L,0L,(-3L)},{0L,0L,(-3L)},{0L,0L,(-3L)},{0L,0L,(-3L)}},{{0L,0L,(-3L)},{0L,0L,(-3L)},{0L,0L,(-3L)},{0L,0L,(-3L)},{0L,0L,(-3L)},{0L,0L,(-3L)},{0L,0L,(-3L)},{0L,0L,(-3L)},{0L,0L,(-3L)}},{{0L,0L,(-3L)},{0L,0L,(-3L)},{0L,0L,(-3L)},{0L,0L,(-3L)},{0L,0L,(-3L)},{0L,0L,(-3L)},{0L,0L,(-3L)},{0L,0L,(-3L)},{0L,0L,(-3L)}},{{0L,0L,(-3L)},{0L,0L,(-3L)},{0L,0L,(-3L)},{0L,0L,(-3L)},{0L,0L,(-3L)},{0L,0L,(-3L)},{0L,0L,(-3L)},{0L,0L,(-3L)},{0L,0L,(-3L)}},{{0L,0L,(-3L)},{0L,0L,(-3L)},{0L,0L,(-3L)},{0L,0L,(-3L)},{0L,0L,(-3L)},{0L,0L,(-3L)},{0L,0L,(-3L)},{0L,0L,(-3L)},{0L,0L,(-3L)}},{{0L,0L,(-3L)},{0L,0L,(-3L)},{0L,0L,(-3L)},{0L,0L,(-3L)},{0L,0L,(-3L)},{0L,0L,(-3L)},{0L,0L,(-3L)},{0L,0L,(-3L)},{0L,0L,(-3L)}},{{0L,0L,(-3L)},{0L,0L,(-3L)},{0L,0L,(-3L)},{0L,0L,(-3L)},{0L,0L,(-3L)},{0L,0L,(-3L)},{0L,0L,(-3L)},{0L,0L,(-3L)},{0L,0L,(-3L)}}};
        VECTOR(int32_t, 4) l_353 = (VECTOR(int32_t, 4))(0x1094AD3FL, (VECTOR(int32_t, 2))(0x1094AD3FL, (-2L)), (-2L));
        uint16_t *l_358 = &p_1177->g_282.f3;
        uint16_t *l_365 = (void*)0;
        uint16_t *l_366 = &p_1177->g_367[1];
        int32_t *l_369 = &p_1177->g_282.f0;
        int i, j, k;
        p_1177->g_102.w |= (safe_rshift_func_uint16_t_u_u((safe_lshift_func_uint16_t_u_s(((*l_366) = ((((safe_sub_func_int32_t_s_s((safe_add_func_int8_t_s_s(p_1177->g_36.s7, l_348[8][1][0])), (safe_sub_func_uint8_t_u_u((l_339[2] < ((safe_rshift_func_int16_t_s_s(((((((((((VECTOR(int32_t, 16))(l_353.yxyzyyyzzxyxzxxy)).s9 == (l_339[0] <= 0x23L)) || p_1177->g_293.y) == l_348[5][0][0]) <= (safe_rshift_func_uint8_t_u_u((safe_sub_func_uint16_t_u_u(((((65535UL || ((*l_358)--)) && ((safe_mod_func_int8_t_s_s(((VECTOR(int8_t, 2))(sub_sat(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 2))(1L, 0x21L)))))), ((VECTOR(int8_t, 8))((safe_mul_func_int16_t_s_s((*p_82), p_1177->g_132.z)), (-2L), 0x1DL, 0x22L, (-7L), (-1L), 0x10L, (-1L))).s10))).lo, l_348[6][7][2])) && p_1177->g_132.x)) == GROUP_DIVERGE(0, 1)) != 0xF8L), FAKE_DIVERGE(p_1177->group_1_offset, get_group_id(1), 10))), GROUP_DIVERGE(2, 1)))) , &l_339[1]) != (void*)0) < l_339[1]) == l_339[1]), l_339[1])) < l_353.z)), 0x18L)))) , l_339[1]) >= p_1177->g_191.z) & 246UL)), 0)), p_1177->g_368));
        (*l_369) = ((VECTOR(int32_t, 2))(0x1B3250D8L, 0x79546B73L)).even;
        for (p_1177->g_196 = (-2); (p_1177->g_196 > (-30)); p_1177->g_196--)
        { /* block id: 113 */
            (*p_1177->g_320) = (safe_rshift_func_uint16_t_u_s((p_1177->g_108.f0 , (*l_369)), p_1177->g_293.y));
            if (l_339[1])
                break;
        }
    }
    else
    { /* block id: 117 */
        int32_t **l_376 = &p_1177->g_101;
        for (p_1177->g_282.f3 = 28; (p_1177->g_282.f3 >= 30); p_1177->g_282.f3++)
        { /* block id: 120 */
            return l_339[1];
        }
        (*l_376) = (void*)0;
        (*l_376) = (*l_376);
        return l_339[1];
    }
    return p_1177->g_124.s5;
}


/* ------------------------------------------ */
/* 
 * reads : p_1177->g_71 p_1177->g_36 p_1177->g_98 p_1177->g_99 p_1177->g_102 p_1177->g_101 p_1177->g_47 p_1177->g_107 p_1177->g_108 p_1177->g_117 p_1177->g_43 p_1177->g_175 p_1177->g_183 p_1177->g_191 p_1177->g_135 p_1177->g_132 p_1177->g_226 p_1177->g_46 p_1177->g_238 p_1177->g_196 p_1177->g_278 p_1177->g_234.f2 p_1177->g_282 p_1177->g_134 p_1177->g_320 p_1177->g_326 p_1177->g_124 p_1177->g_293
 * writes: p_1177->g_98 p_1177->g_101 p_1177->g_102 p_1177->g_196 p_1177->g_132 p_1177->g_234 p_1177->g_238 p_1177->g_240 p_1177->g_135 p_1177->g_226 p_1177->g_282
 */
int8_t  func_83(int8_t  p_84, struct S1 * p_1177)
{ /* block id: 14 */
    int16_t *l_91[2][1];
    int32_t l_92 = 0x2D794290L;
    VECTOR(uint16_t, 2) l_125 = (VECTOR(uint16_t, 2))(65528UL, 0UL);
    int32_t l_129 = 0x15E2246EL;
    VECTOR(uint32_t, 8) l_133 = (VECTOR(uint32_t, 8))(0xB76BFB62L, (VECTOR(uint32_t, 4))(0xB76BFB62L, (VECTOR(uint32_t, 2))(0xB76BFB62L, 0xAF8B3716L), 0xAF8B3716L), 0xAF8B3716L, 0xB76BFB62L, 0xAF8B3716L);
    int32_t l_143 = (-1L);
    int32_t l_152 = (-5L);
    int32_t l_153[1][1][10] = {{{0L,0x3EC65207L,1L,0x3EC65207L,0L,0L,0x3EC65207L,1L,0x3EC65207L,0L}}};
    int32_t l_155 = 0x5CCC422BL;
    int8_t l_156 = 0x54L;
    int64_t l_158[10];
    VECTOR(uint32_t, 8) l_192 = (VECTOR(uint32_t, 8))(0x30031E6FL, (VECTOR(uint32_t, 4))(0x30031E6FL, (VECTOR(uint32_t, 2))(0x30031E6FL, 0x6B88B880L), 0x6B88B880L), 0x6B88B880L, 0x30031E6FL, 0x6B88B880L);
    VECTOR(uint32_t, 4) l_220 = (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 4294967295UL), 4294967295UL);
    VECTOR(uint32_t, 2) l_221 = (VECTOR(uint32_t, 2))(0x7EE8DCCDL, 4294967295UL);
    int32_t l_313 = 9L;
    uint8_t *l_331 = (void*)0;
    VECTOR(int32_t, 8) l_334 = (VECTOR(int32_t, 8))((-5L), (VECTOR(int32_t, 4))((-5L), (VECTOR(int32_t, 2))((-5L), (-1L)), (-1L)), (-1L), (-5L), (-1L));
    VECTOR(int16_t, 4) l_335 = (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), (-1L)), (-1L));
    uint16_t *l_336 = (void*)0;
    uint16_t *l_337 = &p_1177->g_282.f3;
    int32_t *l_338 = &l_153[0][0][3];
    int i, j, k;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 1; j++)
            l_91[i][j] = &p_1177->g_22;
    }
    for (i = 0; i < 10; i++)
        l_158[i] = 2L;
    for (p_84 = 5; (p_84 > (-25)); p_84 = safe_sub_func_uint32_t_u_u(p_84, 5))
    { /* block id: 17 */
        VECTOR(uint32_t, 16) l_88 = (VECTOR(uint32_t, 16))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 0xE0F90C5DL), 0xE0F90C5DL), 0xE0F90C5DL, 0UL, 0xE0F90C5DL, (VECTOR(uint32_t, 2))(0UL, 0xE0F90C5DL), (VECTOR(uint32_t, 2))(0UL, 0xE0F90C5DL), 0UL, 0xE0F90C5DL, 0UL, 0xE0F90C5DL);
        VECTOR(uint32_t, 8) l_89 = (VECTOR(uint32_t, 8))(0x01CC6271L, (VECTOR(uint32_t, 4))(0x01CC6271L, (VECTOR(uint32_t, 2))(0x01CC6271L, 0x857C4E4AL), 0x857C4E4AL), 0x857C4E4AL, 0x01CC6271L, 0x857C4E4AL);
        int32_t l_90 = (-7L);
        int32_t *l_93 = &l_92;
        int i;
        l_90 = (((VECTOR(uint32_t, 8))(l_88.sd00c07dd)).s0 >= ((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))(l_89.s43)).xyyyxyxxxxxyxxyy)).sc);
        (*l_93) = ((l_91[0][0] != &p_1177->g_22) > l_92);
        return p_1177->g_71.s2;
    }
    if (p_1177->g_36.s6)
    { /* block id: 22 */
        int32_t *l_103 = (void*)0;
        int32_t *l_104 = (void*)0;
        int32_t *l_105[7][5] = {{&p_1177->g_47,&p_1177->g_47,(void*)0,&l_92,&p_1177->g_47},{&p_1177->g_47,&p_1177->g_47,(void*)0,&l_92,&p_1177->g_47},{&p_1177->g_47,&p_1177->g_47,(void*)0,&l_92,&p_1177->g_47},{&p_1177->g_47,&p_1177->g_47,(void*)0,&l_92,&p_1177->g_47},{&p_1177->g_47,&p_1177->g_47,(void*)0,&l_92,&p_1177->g_47},{&p_1177->g_47,&p_1177->g_47,(void*)0,&l_92,&p_1177->g_47},{&p_1177->g_47,&p_1177->g_47,(void*)0,&l_92,&p_1177->g_47}};
        int32_t **l_106 = (void*)0;
        int i, j;
        l_92 |= func_94((safe_sub_func_uint8_t_u_u(0x68L, (p_84 || p_84))), p_1177);
        (*p_1177->g_107) = l_103;
        (*p_1177->g_99) = p_1177->g_108;
    }
    else
    { /* block id: 31 */
        VECTOR(int32_t, 8) l_118 = (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x56F2A087L), 0x56F2A087L), 0x56F2A087L, (-1L), 0x56F2A087L);
        int32_t l_145[6];
        int32_t l_154 = 0x405A429EL;
        int64_t l_159 = 0x316CF73F7FB9CFE8L;
        int8_t l_160 = 0x70L;
        int16_t l_161 = (-1L);
        VECTOR(int32_t, 8) l_188 = (VECTOR(int32_t, 8))((-3L), (VECTOR(int32_t, 4))((-3L), (VECTOR(int32_t, 2))((-3L), 0x0106C009L), 0x0106C009L), 0x0106C009L, (-3L), 0x0106C009L);
        VECTOR(int8_t, 4) l_193 = (VECTOR(int8_t, 4))(3L, (VECTOR(int8_t, 2))(3L, 0x4DL), 0x4DL);
        VECTOR(int64_t, 2) l_227 = (VECTOR(int64_t, 2))(0x12BDD7A7D4E1A648L, (-1L));
        uint32_t l_244 = 0x4C250CD5L;
        uint16_t l_247 = 0x9E90L;
        VECTOR(int32_t, 2) l_308 = (VECTOR(int32_t, 2))(0x6BB5D6E2L, (-6L));
        int32_t *l_310 = (void*)0;
        uint64_t l_316 = 18446744073709551615UL;
        int32_t *l_319 = (void*)0;
        int32_t *l_321 = &l_153[0][0][3];
        int i;
        for (i = 0; i < 6; i++)
            l_145[i] = 6L;
        for (l_92 = 4; (l_92 != (-30)); l_92--)
        { /* block id: 34 */
            uint16_t l_123 = 0xDAF1L;
            uint16_t *l_128[3];
            int32_t l_142 = 1L;
            int32_t l_144 = 0x73D4CEE2L;
            int32_t l_151[1];
            int32_t l_157 = (-4L);
            int32_t **l_180 = &p_1177->g_101;
            VECTOR(uint64_t, 4) l_194 = (VECTOR(uint64_t, 4))(0x5CCA39ADC272FBF6L, (VECTOR(uint64_t, 2))(0x5CCA39ADC272FBF6L, 5UL), 5UL);
            VECTOR(int64_t, 8) l_198 = (VECTOR(int64_t, 8))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 0x0994F28E4C5F02C2L), 0x0994F28E4C5F02C2L), 0x0994F28E4C5F02C2L, (-1L), 0x0994F28E4C5F02C2L);
            int32_t *l_205 = &l_92;
            VECTOR(uint8_t, 4) l_281 = (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 0x13L), 0x13L);
            VECTOR(int16_t, 16) l_290 = (VECTOR(int16_t, 16))(0x5673L, (VECTOR(int16_t, 4))(0x5673L, (VECTOR(int16_t, 2))(0x5673L, 1L), 1L), 1L, 0x5673L, 1L, (VECTOR(int16_t, 2))(0x5673L, 1L), (VECTOR(int16_t, 2))(0x5673L, 1L), 0x5673L, 1L, 0x5673L, 1L);
            int16_t *l_296 = &l_161;
            int8_t l_297[8][4] = {{0L,0L,0x06L,(-1L)},{0L,0L,0x06L,(-1L)},{0L,0L,0x06L,(-1L)},{0L,0L,0x06L,(-1L)},{0L,0L,0x06L,(-1L)},{0L,0L,0x06L,(-1L)},{0L,0L,0x06L,(-1L)},{0L,0L,0x06L,(-1L)}};
            uint32_t l_304 = 0UL;
            int32_t *l_311 = &l_143;
            int32_t *l_312 = &p_1177->g_282.f0;
            int32_t *l_314 = &p_1177->g_282.f0;
            int32_t *l_315[9] = {&l_151[0],&l_151[0],&l_151[0],&l_151[0],&l_151[0],&l_151[0],&l_151[0],&l_151[0],&l_151[0]};
            int i, j;
            for (i = 0; i < 3; i++)
                l_128[i] = (void*)0;
            for (i = 0; i < 1; i++)
                l_151[i] = 0x03F6EA20L;
            if (p_84)
                break;
            if (((safe_add_func_int64_t_s_s((safe_sub_func_uint16_t_u_u(((safe_div_func_int32_t_s_s((p_1177->g_117 , (l_144 ^= (l_143 = ((VECTOR(int32_t, 8))(sub_sat(((VECTOR(int32_t, 2))(9L, 1L)).xxxxxxxx, ((VECTOR(int32_t, 4))(safe_clamp_func(VECTOR(int32_t, 4),VECTOR(int32_t, 4),((VECTOR(int32_t, 8))(l_118.s67531441)).hi, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(rhadd(((VECTOR(int32_t, 2))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 16))(((safe_rshift_func_uint8_t_u_u(p_84, 1)) < (safe_div_func_int32_t_s_s(l_123, ((VECTOR(uint32_t, 8))(upsample(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(clz(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 4))(p_1177->g_124.sda2c)).lo)).yxxx)).even))), 65529UL, 65526UL)), 65535UL, ((VECTOR(uint16_t, 2))(mad_sat(((VECTOR(uint16_t, 16))(l_125.yxxxxxyxxyxyyxyx)).sf7, ((VECTOR(uint16_t, 16))(safe_clamp_func(VECTOR(uint16_t, 16),VECTOR(uint16_t, 16),((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))((((safe_mul_func_uint16_t_u_u((l_129 = 0x7E33L), (safe_mul_func_uint8_t_u_u(FAKE_DIVERGE(p_1177->global_1_offset, get_global_id(1), 10), ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(abs_diff(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 8))(add_sat(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(sub_sat(((VECTOR(uint8_t, 2))(9UL, 255UL)), ((VECTOR(uint8_t, 8))(FAKE_DIVERGE(p_1177->group_0_offset, get_group_id(0), 10), ((VECTOR(uint8_t, 4))(p_1177->g_132.zzyy)), ((VECTOR(uint8_t, 2))(9UL, 0xA7L)), 1UL)).s01))).xyyx)).zxwwwwwx, ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(0x05L, 0xA0L, 7UL, 0xACL)), (((VECTOR(uint32_t, 4))(l_133.s4552)).y , ((!((VECTOR(int16_t, 2))(p_1177->g_134.xw)).odd) || 0x67DBL)), ((VECTOR(uint8_t, 2))(abs(((VECTOR(uint8_t, 8))(hadd(((VECTOR(uint8_t, 8))(rotate(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 16))(0xC8L, (l_125.x < 0x50L), ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(255UL, 0x40L)).xxxxxyxx)), 0xD9L, ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 16))(clz(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(p_1177->g_135.xx)), 0x34L, (((safe_mul_func_int8_t_s_s((safe_add_func_int16_t_s_s((((safe_div_func_int16_t_s_s(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(rotate(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))((-1L), 0x1620L, ((VECTOR(int16_t, 2))(rhadd(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))((-3L), 0x128AL)), (-1L), (-7L))).zxxyyyzx)).s27, ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))(safe_clamp_func(VECTOR(int16_t, 8),int16_t,((VECTOR(int16_t, 4))(upsample(((VECTOR(int8_t, 16))(hadd(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(clz(((VECTOR(int8_t, 4))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 4),((VECTOR(int8_t, 8))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 8),((VECTOR(int8_t, 2))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(mad_sat(((VECTOR(int8_t, 2))((-1L), (-1L))).yyxy, ((VECTOR(int8_t, 2))(0x1FL, 0x3CL)).xxxy, ((VECTOR(int8_t, 4))((65526UL && l_118.s3), ((VECTOR(int8_t, 2))((-1L))), 0x28L))))), 0x11L, 0x25L, 4L, 0x58L)).s33)))).yyyxxxyy, ((VECTOR(int8_t, 8))(0x4BL)), ((VECTOR(int8_t, 8))(0x09L))))).lo, ((VECTOR(int8_t, 4))(0x71L)), ((VECTOR(int8_t, 4))(0x41L))))).xxzyzxyz))).s36)), 0x14L, 0x44L, p_1177->g_33.y, 0L, (-7L), 0L)).s1700155774671440, ((VECTOR(int8_t, 16))(0L))))).s4e82, ((VECTOR(uint8_t, 4))(0UL))))).zyyzyyxy, (int16_t)p_84, (int16_t)3L))).s03))))), p_1177->g_98.f1, (-1L), (-1L), 0x55F1L)).s03)), ((VECTOR(int16_t, 2))(0x023FL))))), p_84, p_1177->g_108.f2, 0x0A1FL, p_1177->g_132.y, 0L, 0x23B0L)).s33)).xxyxxyxyxxxxxxxx)).lo)).s7, p_1177->g_47)) < GROUP_DIVERGE(1, 1)) , p_84), 0x051FL)), 0x4EL)) == l_142) <= l_118.s7), p_84, ((VECTOR(uint8_t, 2))(5UL)), 248UL)).odd)).zxyxzyxywyyywxwy))).s3b)).xxyx)), 0xDAL)).sa, 0x3CL, 0x02L, ((VECTOR(uint8_t, 4))(5UL)), 1UL)), ((VECTOR(uint8_t, 8))(255UL))))), ((VECTOR(uint8_t, 8))(0xD3L))))).s60))), 0x51L))))).s6770724266745120)).s14)), 249UL, 0x27L)).even, ((VECTOR(uint8_t, 2))(0UL))))).yyyxyxyxxxyxyyxy)).se)))) == 0xFD6D6A5165AAC15AL) < 18446744073709551610UL), 65535UL, 65529UL, ((VECTOR(uint16_t, 2))(9UL)), 1UL, 6UL, 0xED15L)).s1300546226660075)).lo)).s6723467765106254, ((VECTOR(uint16_t, 16))(8UL)), ((VECTOR(uint16_t, 16))(0xE873L))))).s1f, ((VECTOR(uint16_t, 2))(0x072BL))))), 9UL)), ((VECTOR(uint16_t, 8))(0xD266L))))).s7))), l_133.s7, ((VECTOR(int32_t, 2))(0x111611CAL)), (-6L), 0L, 0x437F609DL, ((VECTOR(int32_t, 2))(1L)), 0L, 0L, ((VECTOR(int32_t, 4))(0x0B0C09B6L)), 0x1515BE2FL)).s3e, ((VECTOR(int32_t, 2))(0x2EFD56ABL))))), ((VECTOR(int32_t, 2))(1L))))).xxyyxyxy)).odd, ((VECTOR(int32_t, 4))((-4L)))))).wyyzyyzx))).s1))), FAKE_DIVERGE(p_1177->local_1_offset, get_local_id(1), 10))) , 0xF71DL), FAKE_DIVERGE(p_1177->global_2_offset, get_global_id(2), 10))), 0x866434410D69DBB5L)) && p_1177->g_43.z))
            { /* block id: 39 */
                int32_t *l_146 = (void*)0;
                int32_t *l_147 = (void*)0;
                int32_t *l_148 = (void*)0;
                int32_t *l_149 = (void*)0;
                int32_t *l_150[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                uint32_t l_162[5];
                VECTOR(uint8_t, 8) l_197 = (VECTOR(uint8_t, 8))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 0xD8L), 0xD8L), 0xD8L, 255UL, 0xD8L);
                uint8_t *l_237 = (void*)0;
                uint64_t *l_258 = (void*)0;
                uint64_t *l_259 = (void*)0;
                uint64_t *l_260 = (void*)0;
                int i;
                for (i = 0; i < 5; i++)
                    l_162[i] = 4294967295UL;
                l_142 = 0L;
                --l_162[3];
                for (l_143 = 0; (l_143 >= 11); l_143++)
                { /* block id: 44 */
                    int32_t **l_168[2];
                    VECTOR(int64_t, 16) l_189 = (VECTOR(int64_t, 16))((-6L), (VECTOR(int64_t, 4))((-6L), (VECTOR(int64_t, 2))((-6L), 0x484A64224211670AL), 0x484A64224211670AL), 0x484A64224211670AL, (-6L), 0x484A64224211670AL, (VECTOR(int64_t, 2))((-6L), 0x484A64224211670AL), (VECTOR(int64_t, 2))((-6L), 0x484A64224211670AL), (-6L), 0x484A64224211670AL, (-6L), 0x484A64224211670AL);
                    int64_t *l_190 = &l_158[0];
                    uint64_t *l_195 = (void*)0;
                    int16_t *l_201 = &l_161;
                    uint8_t *l_202 = (void*)0;
                    uint8_t *l_203 = (void*)0;
                    uint8_t *l_204[2];
                    int32_t l_230 = (-8L);
                    int i;
                    for (i = 0; i < 2; i++)
                        l_168[i] = (void*)0;
                    for (i = 0; i < 2; i++)
                        l_204[i] = (void*)0;
                    (*p_1177->g_107) = l_148;
                    if (((p_1177->g_132.w |= ((safe_sub_func_int32_t_s_s((safe_sub_func_uint16_t_u_u((safe_add_func_uint32_t_u_u((l_143 || l_154), ((VECTOR(uint32_t, 16))(0x1D881F47L, ((VECTOR(uint32_t, 2))(p_1177->g_175.s10)), (safe_add_func_int16_t_s_s(((VECTOR(int16_t, 4))(rotate(((VECTOR(int16_t, 8))((p_1177->g_117.f0 , (safe_div_func_int64_t_s_s((l_180 == ((safe_div_func_uint16_t_u_u(((VECTOR(uint16_t, 2))(p_1177->g_183.s04)).lo, (safe_lshift_func_int16_t_s_u((safe_add_func_uint16_t_u_u((((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(l_188.s4543173712074733)))).sd > (0x27L == ((((VECTOR(int64_t, 16))(sub_sat(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 8))(l_189.sd5089107)), ((*l_190) = 3L), ((VECTOR(int64_t, 4))(upsample(((VECTOR(int32_t, 8))(p_1177->g_191.xwxxzzxz)).even, ((VECTOR(uint32_t, 4))(l_192.s6515))))), (((((VECTOR(uint8_t, 8))(abs_diff(((VECTOR(int8_t, 4))(l_193.zwzw)).wzwwxyzx, ((VECTOR(int8_t, 2))(0x32L, 1L)).yxxyxyxx))).s2 , ((VECTOR(uint64_t, 8))(l_194.wywwyyxw)).s7) || (p_1177->g_196 = p_84)) <= ((VECTOR(uint8_t, 4))(l_197.s3520)).w), (-3L), 0x709773C78C16DE00L)), ((VECTOR(int64_t, 16))(((VECTOR(int64_t, 16))(l_198.s5625526466436370))))))).s6 , &p_1177->g_22) == ((((safe_mod_func_int64_t_s_s(0x6A1A296D00C06625L, p_1177->g_191.x)) <= FAKE_DIVERGE(p_1177->global_2_offset, get_global_id(2), 10)) >= p_1177->g_135.y) , l_201)))), FAKE_DIVERGE(p_1177->group_0_offset, get_group_id(0), 10))), p_84)))) , l_180)), GROUP_DIVERGE(0, 1)))), 0x6349L, 0x039FL, (-1L), 0x2A35L, ((VECTOR(int16_t, 2))((-1L))), 0L)).hi, ((VECTOR(int16_t, 4))(0L))))).x, 7L)), p_1177->g_108.f3, ((VECTOR(uint32_t, 4))(0x46D5D925L)), ((VECTOR(uint32_t, 2))(7UL)), 4294967295UL, ((VECTOR(uint32_t, 4))(4294967295UL)))).sd)), p_1177->g_175.s0)), p_84)) > 0x36L)) <= p_1177->g_47))
                    { /* block id: 49 */
                        uint16_t l_206 = 0xDF2EL;
                        (*l_180) = l_205;
                        (*l_180) = &l_154;
                        --l_206;
                    }
                    else
                    { /* block id: 53 */
                        int32_t l_213 = 0x5937DA5CL;
                        int8_t *l_231 = &l_160;
                        int32_t l_232[9][3][1] = {{{0x51235C6BL},{0x51235C6BL},{0x51235C6BL}},{{0x51235C6BL},{0x51235C6BL},{0x51235C6BL}},{{0x51235C6BL},{0x51235C6BL},{0x51235C6BL}},{{0x51235C6BL},{0x51235C6BL},{0x51235C6BL}},{{0x51235C6BL},{0x51235C6BL},{0x51235C6BL}},{{0x51235C6BL},{0x51235C6BL},{0x51235C6BL}},{{0x51235C6BL},{0x51235C6BL},{0x51235C6BL}},{{0x51235C6BL},{0x51235C6BL},{0x51235C6BL}},{{0x51235C6BL},{0x51235C6BL},{0x51235C6BL}}};
                        volatile struct S0 *l_233[1];
                        uint8_t **l_239[6][6][7] = {{{&l_203,&l_202,(void*)0,(void*)0,&l_204[0],&l_204[0],&l_237},{&l_203,&l_202,(void*)0,(void*)0,&l_204[0],&l_204[0],&l_237},{&l_203,&l_202,(void*)0,(void*)0,&l_204[0],&l_204[0],&l_237},{&l_203,&l_202,(void*)0,(void*)0,&l_204[0],&l_204[0],&l_237},{&l_203,&l_202,(void*)0,(void*)0,&l_204[0],&l_204[0],&l_237},{&l_203,&l_202,(void*)0,(void*)0,&l_204[0],&l_204[0],&l_237}},{{&l_203,&l_202,(void*)0,(void*)0,&l_204[0],&l_204[0],&l_237},{&l_203,&l_202,(void*)0,(void*)0,&l_204[0],&l_204[0],&l_237},{&l_203,&l_202,(void*)0,(void*)0,&l_204[0],&l_204[0],&l_237},{&l_203,&l_202,(void*)0,(void*)0,&l_204[0],&l_204[0],&l_237},{&l_203,&l_202,(void*)0,(void*)0,&l_204[0],&l_204[0],&l_237},{&l_203,&l_202,(void*)0,(void*)0,&l_204[0],&l_204[0],&l_237}},{{&l_203,&l_202,(void*)0,(void*)0,&l_204[0],&l_204[0],&l_237},{&l_203,&l_202,(void*)0,(void*)0,&l_204[0],&l_204[0],&l_237},{&l_203,&l_202,(void*)0,(void*)0,&l_204[0],&l_204[0],&l_237},{&l_203,&l_202,(void*)0,(void*)0,&l_204[0],&l_204[0],&l_237},{&l_203,&l_202,(void*)0,(void*)0,&l_204[0],&l_204[0],&l_237},{&l_203,&l_202,(void*)0,(void*)0,&l_204[0],&l_204[0],&l_237}},{{&l_203,&l_202,(void*)0,(void*)0,&l_204[0],&l_204[0],&l_237},{&l_203,&l_202,(void*)0,(void*)0,&l_204[0],&l_204[0],&l_237},{&l_203,&l_202,(void*)0,(void*)0,&l_204[0],&l_204[0],&l_237},{&l_203,&l_202,(void*)0,(void*)0,&l_204[0],&l_204[0],&l_237},{&l_203,&l_202,(void*)0,(void*)0,&l_204[0],&l_204[0],&l_237},{&l_203,&l_202,(void*)0,(void*)0,&l_204[0],&l_204[0],&l_237}},{{&l_203,&l_202,(void*)0,(void*)0,&l_204[0],&l_204[0],&l_237},{&l_203,&l_202,(void*)0,(void*)0,&l_204[0],&l_204[0],&l_237},{&l_203,&l_202,(void*)0,(void*)0,&l_204[0],&l_204[0],&l_237},{&l_203,&l_202,(void*)0,(void*)0,&l_204[0],&l_204[0],&l_237},{&l_203,&l_202,(void*)0,(void*)0,&l_204[0],&l_204[0],&l_237},{&l_203,&l_202,(void*)0,(void*)0,&l_204[0],&l_204[0],&l_237}},{{&l_203,&l_202,(void*)0,(void*)0,&l_204[0],&l_204[0],&l_237},{&l_203,&l_202,(void*)0,(void*)0,&l_204[0],&l_204[0],&l_237},{&l_203,&l_202,(void*)0,(void*)0,&l_204[0],&l_204[0],&l_237},{&l_203,&l_202,(void*)0,(void*)0,&l_204[0],&l_204[0],&l_237},{&l_203,&l_202,(void*)0,(void*)0,&l_204[0],&l_204[0],&l_237},{&l_203,&l_202,(void*)0,(void*)0,&l_204[0],&l_204[0],&l_237}}};
                        int i, j, k;
                        for (i = 0; i < 1; i++)
                            l_233[i] = &p_1177->g_108;
                        p_1177->g_234[7] = ((+((l_118.s3 = p_84) , ((safe_mul_func_int8_t_s_s((safe_mul_func_uint16_t_u_u(((((l_213 || (safe_rshift_func_uint16_t_u_u((FAKE_DIVERGE(p_1177->group_2_offset, get_group_id(2), 10) < (((-2L) & ((*l_231) = (((((l_230 = (l_152 = (l_213 = (~(safe_sub_func_uint32_t_u_u(0xDABD73BBL, (safe_sub_func_uint16_t_u_u(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 8))((+(((VECTOR(uint32_t, 16))(add_sat(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 8))(l_220.yywwzywy)))).s1546044706216416, ((VECTOR(uint32_t, 4))(rhadd(((VECTOR(uint32_t, 8))(l_221.yxxyxxxx)).hi, ((VECTOR(uint32_t, 2))(4294967295UL, 4294967295UL)).xxxy))).wwzyxxxzzzxxzwxw))).sc , (safe_add_func_int16_t_s_s(p_1177->g_108.f3, (p_84 , (safe_lshift_func_int8_t_s_s(0L, 2))))))), 0x5ACFL, ((((VECTOR(uint64_t, 16))(p_1177->g_226.wywxxxxzyzxwwwxz)).s3 >= (((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(0x34D3L, 0x3CD4L)).xyyx)).w , (~((VECTOR(int64_t, 4))(l_227.yxxx)).x))) == p_1177->g_98.f2), 0x0570L, (safe_add_func_uint8_t_u_u(p_1177->g_226.y, p_84)), ((VECTOR(uint16_t, 2))(0x5F53L)), 0xB794L)).odd)).xwyyxzzz)).s7, p_1177->g_175.s1)))))))) >= 0UL) , p_1177->g_46) , p_84) != p_84))) & (-9L))), 15))) ^ (*l_205)) & 0L) == l_232[6][0][0]), l_118.s4)), p_1177->g_132.w)) ^ p_1177->g_135.y))) , (*p_1177->g_99));
                        l_153[0][0][3] = ((safe_lshift_func_uint8_t_u_u((l_237 == (p_1177->g_240 = (p_1177->g_238 = p_1177->g_238))), (++p_1177->g_135.y))) > (safe_unary_minus_func_int8_t_s(0L)));
                        if (l_145[1])
                            continue;
                        --l_244;
                    }
                    l_247++;
                }
                l_151[0] = (safe_sub_func_int16_t_s_s(((safe_lshift_func_uint8_t_u_u(p_84, 6)) || ((((safe_div_func_int32_t_s_s((safe_div_func_int16_t_s_s(((--p_1177->g_226.w) != ((VECTOR(int64_t, 2))(0x713F6723C9576F69L, 0x0D5809F84DCBCD60L)).lo), p_1177->g_108.f3)), (l_192.s1 && 0x13C76CDBL))) >= (safe_div_func_int32_t_s_s((l_220.z && (safe_mul_func_int16_t_s_s((l_143 | ((&l_154 == &l_152) != p_1177->g_196)), p_84))), p_1177->g_196))) == p_84) & 0x6B82L)), 1UL));
            }
            else
            { /* block id: 71 */
                int64_t *l_279 = (void*)0;
                int32_t *l_280 = &l_142;
                int16_t *l_294 = &p_1177->g_22;
                int32_t *l_305[10];
                int i;
                for (i = 0; i < 10; i++)
                    l_305[i] = &l_143;
                for (l_244 = 0; (l_244 <= 54); l_244++)
                { /* block id: 74 */
                    int16_t **l_295[2];
                    uint64_t *l_298 = (void*)0;
                    uint64_t *l_299 = (void*)0;
                    uint64_t *l_300 = (void*)0;
                    uint64_t *l_301 = (void*)0;
                    uint64_t *l_302 = (void*)0;
                    int32_t *l_303[1];
                    int i;
                    for (i = 0; i < 2; i++)
                        l_295[i] = (void*)0;
                    for (i = 0; i < 1; i++)
                        l_303[i] = &l_154;
                    if (p_84)
                    { /* block id: 75 */
                        return p_1177->g_47;
                    }
                    else
                    { /* block id: 77 */
                        int8_t *l_269 = (void*)0;
                        int8_t *l_270[8][1][6] = {{{&l_160,(void*)0,&l_156,&l_156,&l_156,(void*)0}},{{&l_160,(void*)0,&l_156,&l_156,&l_156,(void*)0}},{{&l_160,(void*)0,&l_156,&l_156,&l_156,(void*)0}},{{&l_160,(void*)0,&l_156,&l_156,&l_156,(void*)0}},{{&l_160,(void*)0,&l_156,&l_156,&l_156,(void*)0}},{{&l_160,(void*)0,&l_156,&l_156,&l_156,(void*)0}},{{&l_160,(void*)0,&l_156,&l_156,&l_156,(void*)0}},{{&l_160,(void*)0,&l_156,&l_156,&l_156,(void*)0}}};
                        int32_t l_271[2][4] = {{0x23E66F1FL,(-1L),0x23E66F1FL,0x23E66F1FL},{0x23E66F1FL,(-1L),0x23E66F1FL,0x23E66F1FL}};
                        struct S0 *l_283 = &p_1177->g_282;
                        int i, j, k;
                        l_280 = (((((l_271[1][3] = p_84) && 4L) && p_84) || (safe_lshift_func_uint8_t_u_s((safe_mul_func_int16_t_s_s(((safe_sub_func_int64_t_s_s((((l_220.z <= p_84) <= ((((((&l_161 == l_128[1]) != (p_1177->g_36.s4 & p_1177->g_191.w)) , p_1177->g_278) != l_279) , p_1177->g_234[7].f2) && FAKE_DIVERGE(p_1177->group_1_offset, get_group_id(1), 10))) & p_1177->g_135.y), 18446744073709551611UL)) == 0x7052L), 0xD7ECL)), p_1177->g_135.y))) , (void*)0);
                        (*l_283) = (((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(l_281.yx)), 0xE3L, 255UL)))).lo)).lo , p_1177->g_282);
                        l_151[0] ^= l_156;
                    }
                    l_304 = ((p_1177->g_226.x = ((safe_mul_func_int16_t_s_s((-10L), ((((((*p_1177->g_99) , (safe_mul_func_uint16_t_u_u(l_133.s3, (safe_add_func_uint16_t_u_u(((void*)0 == &l_280), (((((VECTOR(int16_t, 2))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 16))(l_290.s840c8b587da3b960)).s6bb9)).hi)).lo & p_1177->g_134.y) > 9UL) > ((safe_mul_func_uint8_t_u_u(((VECTOR(uint8_t, 4))(hadd(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(mad_hi(((VECTOR(uint8_t, 4))(p_1177->g_293.yyyx)).odd, ((VECTOR(uint8_t, 4))((((((((l_296 = l_294) != (p_1177->g_102.z , &l_161)) && (*l_205)) , 1L) || 0x0EL) , p_1177->g_175.s1) || 0xE486L), 0xE4L, 0x3CL, 0x13L)).lo, ((VECTOR(uint8_t, 2))(0x20L))))).xxxxxxyx)).lo, ((VECTOR(uint8_t, 4))(6UL))))).z, l_192.s6)) > FAKE_DIVERGE(p_1177->group_1_offset, get_group_id(1), 10)))))))) <= l_297[2][2]) ^ l_133.s6) == p_1177->g_132.z) < p_84))) , p_84)) < p_84);
                }
                l_152 = (-1L);
                for (l_143 = 0; (l_143 == 8); l_143++)
                { /* block id: 90 */
                    int16_t l_309[4][6][5];
                    int i, j, k;
                    for (i = 0; i < 4; i++)
                    {
                        for (j = 0; j < 6; j++)
                        {
                            for (k = 0; k < 5; k++)
                                l_309[i][j][k] = 0x6588L;
                        }
                    }
                    l_309[0][2][3] |= ((VECTOR(int32_t, 16))(l_308.xyxyyyyyyxxyxxyy)).sb;
                }
                l_310 = (void*)0;
            }
            (*l_311) = 0x4FD3913EL;
            l_316--;
        }
        (*p_1177->g_320) ^= p_84;
        (*l_321) |= p_84;
        return p_1177->g_108.f1;
    }
    (*l_338) &= (safe_sub_func_int64_t_s_s((((*l_337) = (((safe_rshift_func_int8_t_s_s((((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(p_1177->g_326.sab)), 1UL, 0UL)).y || (safe_rshift_func_int8_t_s_u((safe_add_func_int32_t_s_s((0x78BA1343L < (((void*)0 == l_331) || ((((l_129 == (l_221.y , (safe_mul_func_int16_t_s_s(p_84, (((VECTOR(int32_t, 16))(l_334.s2402055717303563)).sd ^ p_1177->g_124.sf))))) | ((VECTOR(int16_t, 8))(l_335.yyyzyxzw)).s6) , p_1177->g_191.y) < ((0x0BE8L || l_129) < p_84)))), p_1177->g_47)), 6))), p_1177->g_293.x)) != p_1177->g_282.f1) <= 0x3F95L)) >= l_129), 0x57BC1B812F09130DL));
    return p_84;
}


/* ------------------------------------------ */
/* 
 * reads : p_1177->g_98 p_1177->g_99 p_1177->g_102 p_1177->g_101 p_1177->g_47
 * writes: p_1177->g_98 p_1177->g_101 p_1177->g_102
 */
int32_t  func_94(uint64_t  p_95, struct S1 * p_1177)
{ /* block id: 23 */
    int32_t *l_100 = &p_1177->g_47;
    (*p_1177->g_99) = p_1177->g_98;
    p_1177->g_101 = l_100;
    p_1177->g_102.y ^= p_95;
    return (*p_1177->g_101);
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S1 c_1178;
    struct S1* p_1177 = &c_1178;
    struct S1 c_1179 = {
        0x1210L, // p_1177->g_22
        (VECTOR(uint16_t, 4))(0x6396L, (VECTOR(uint16_t, 2))(0x6396L, 65535UL), 65535UL), // p_1177->g_33
        (VECTOR(uint8_t, 8))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 248UL), 248UL), 248UL, 0UL, 248UL), // p_1177->g_36
        (VECTOR(uint64_t, 4))(0x0E51693878D320CDL, (VECTOR(uint64_t, 2))(0x0E51693878D320CDL, 0xB18A503ECEF36AA1L), 0xB18A503ECEF36AA1L), // p_1177->g_43
        1L, // p_1177->g_46
        1L, // p_1177->g_47
        (VECTOR(int16_t, 16))(0x6E60L, (VECTOR(int16_t, 4))(0x6E60L, (VECTOR(int16_t, 2))(0x6E60L, 0L), 0L), 0L, 0x6E60L, 0L, (VECTOR(int16_t, 2))(0x6E60L, 0L), (VECTOR(int16_t, 2))(0x6E60L, 0L), 0x6E60L, 0L, 0x6E60L, 0L), // p_1177->g_71
        {-10L,-1L,0L,65535UL}, // p_1177->g_98
        &p_1177->g_98, // p_1177->g_99
        (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, (-1L)), (-1L)), // p_1177->g_102
        (void*)0, // p_1177->g_101
        &p_1177->g_101, // p_1177->g_107
        {0x3C58EBAAL,5L,0x510A89F6E7EE216EL,5UL}, // p_1177->g_108
        {0L,-1L,0x50DB93F61EF617C7L,4UL}, // p_1177->g_117
        (VECTOR(uint16_t, 16))(0x6429L, (VECTOR(uint16_t, 4))(0x6429L, (VECTOR(uint16_t, 2))(0x6429L, 0x52AEL), 0x52AEL), 0x52AEL, 0x6429L, 0x52AEL, (VECTOR(uint16_t, 2))(0x6429L, 0x52AEL), (VECTOR(uint16_t, 2))(0x6429L, 0x52AEL), 0x6429L, 0x52AEL, 0x6429L, 0x52AEL), // p_1177->g_124
        (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 0xBBL), 0xBBL), // p_1177->g_132
        (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x4C3DL), 0x4C3DL), // p_1177->g_134
        (VECTOR(uint8_t, 2))(252UL, 0x57L), // p_1177->g_135
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_1177->g_167
        (VECTOR(uint32_t, 8))(0x2AC2AD42L, (VECTOR(uint32_t, 4))(0x2AC2AD42L, (VECTOR(uint32_t, 2))(0x2AC2AD42L, 0xF0731654L), 0xF0731654L), 0xF0731654L, 0x2AC2AD42L, 0xF0731654L), // p_1177->g_175
        (VECTOR(uint16_t, 16))(0x16A0L, (VECTOR(uint16_t, 4))(0x16A0L, (VECTOR(uint16_t, 2))(0x16A0L, 8UL), 8UL), 8UL, 0x16A0L, 8UL, (VECTOR(uint16_t, 2))(0x16A0L, 8UL), (VECTOR(uint16_t, 2))(0x16A0L, 8UL), 0x16A0L, 8UL, 0x16A0L, 8UL), // p_1177->g_183
        (VECTOR(int32_t, 4))(0x35F8E1F5L, (VECTOR(int32_t, 2))(0x35F8E1F5L, 0x5CA05FD7L), 0x5CA05FD7L), // p_1177->g_191
        0L, // p_1177->g_196
        (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 0xCD3711B4DE27B88BL), 0xCD3711B4DE27B88BL), // p_1177->g_226
        {{-1L,9L,0L,1UL},{-1L,9L,0L,1UL},{-1L,9L,0L,1UL},{-1L,9L,0L,1UL},{-1L,9L,0L,1UL},{-1L,9L,0L,1UL},{-1L,9L,0L,1UL},{-1L,9L,0L,1UL},{-1L,9L,0L,1UL}}, // p_1177->g_234
        (void*)0, // p_1177->g_238
        (void*)0, // p_1177->g_240
        &p_1177->g_98.f2, // p_1177->g_278
        {0x27F3B15BL,0x1B016338L,-7L,1UL}, // p_1177->g_282
        (VECTOR(uint8_t, 2))(255UL, 0x5DL), // p_1177->g_293
        &p_1177->g_282.f0, // p_1177->g_320
        (VECTOR(uint64_t, 16))(18446744073709551607UL, (VECTOR(uint64_t, 4))(18446744073709551607UL, (VECTOR(uint64_t, 2))(18446744073709551607UL, 5UL), 5UL), 5UL, 18446744073709551607UL, 5UL, (VECTOR(uint64_t, 2))(18446744073709551607UL, 5UL), (VECTOR(uint64_t, 2))(18446744073709551607UL, 5UL), 18446744073709551607UL, 5UL, 18446744073709551607UL, 5UL), // p_1177->g_326
        {0x1BBCL,65534UL,0x1BBCL,0x1BBCL,65534UL,0x1BBCL,0x1BBCL}, // p_1177->g_367
        0x7BL, // p_1177->g_368
        (VECTOR(int32_t, 8))((-9L), (VECTOR(int32_t, 4))((-9L), (VECTOR(int32_t, 2))((-9L), 1L), 1L), 1L, (-9L), 1L), // p_1177->g_387
        (VECTOR(uint32_t, 2))(4294967294UL, 0UL), // p_1177->g_404
        (void*)0, // p_1177->g_405
        (VECTOR(int64_t, 8))(0L, (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, (-2L)), (-2L)), (-2L), 0L, (-2L)), // p_1177->g_411
        2L, // p_1177->g_413
        (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x64ACD3A2L), 0x64ACD3A2L), // p_1177->g_416
        {-1L,-10L,0x132111A08C305E5EL,0UL}, // p_1177->g_419
        (void*)0, // p_1177->g_464
        (VECTOR(uint32_t, 2))(1UL, 0x25E99467L), // p_1177->g_478
        0x2C9E947AB87EFCA3L, // p_1177->g_484
        &p_1177->g_484, // p_1177->g_483
        1L, // p_1177->g_501
        &p_1177->g_501, // p_1177->g_500
        {{(void*)0,&p_1177->g_500,&p_1177->g_500,&p_1177->g_500,(void*)0,(void*)0,&p_1177->g_500,&p_1177->g_500,&p_1177->g_500,(void*)0},{(void*)0,&p_1177->g_500,&p_1177->g_500,&p_1177->g_500,(void*)0,(void*)0,&p_1177->g_500,&p_1177->g_500,&p_1177->g_500,(void*)0},{(void*)0,&p_1177->g_500,&p_1177->g_500,&p_1177->g_500,(void*)0,(void*)0,&p_1177->g_500,&p_1177->g_500,&p_1177->g_500,(void*)0},{(void*)0,&p_1177->g_500,&p_1177->g_500,&p_1177->g_500,(void*)0,(void*)0,&p_1177->g_500,&p_1177->g_500,&p_1177->g_500,(void*)0},{(void*)0,&p_1177->g_500,&p_1177->g_500,&p_1177->g_500,(void*)0,(void*)0,&p_1177->g_500,&p_1177->g_500,&p_1177->g_500,(void*)0},{(void*)0,&p_1177->g_500,&p_1177->g_500,&p_1177->g_500,(void*)0,(void*)0,&p_1177->g_500,&p_1177->g_500,&p_1177->g_500,(void*)0},{(void*)0,&p_1177->g_500,&p_1177->g_500,&p_1177->g_500,(void*)0,(void*)0,&p_1177->g_500,&p_1177->g_500,&p_1177->g_500,(void*)0},{(void*)0,&p_1177->g_500,&p_1177->g_500,&p_1177->g_500,(void*)0,(void*)0,&p_1177->g_500,&p_1177->g_500,&p_1177->g_500,(void*)0}}, // p_1177->g_499
        {-2L,0L,1L,0x9CA8L}, // p_1177->g_505
        {-8L,0x29904AC5L,-7L,0UL}, // p_1177->g_506
        4L, // p_1177->g_522
        &p_1177->g_522, // p_1177->g_521
        &p_1177->g_521, // p_1177->g_520
        {0L,0x49BC33C6L,0L,0x475BL}, // p_1177->g_524
        {1L,0x45B3F731L,0x69B78873BE40ED32L,0xCFE9L}, // p_1177->g_525
        (VECTOR(int8_t, 8))(0x25L, (VECTOR(int8_t, 4))(0x25L, (VECTOR(int8_t, 2))(0x25L, 0x75L), 0x75L), 0x75L, 0x25L, 0x75L), // p_1177->g_549
        {0x3EAE7CD1L,1L,8L,0xEA67L}, // p_1177->g_560
        {0x6A9342A8L,2L,0x6EE7A8C3F23F2444L,0x62CFL}, // p_1177->g_576
        (void*)0, // p_1177->g_578
        (VECTOR(int8_t, 2))(0x57L, 1L), // p_1177->g_599
        {0x0EE64347L,0x10CEE4E2L,-1L,0UL}, // p_1177->g_610
        (VECTOR(int8_t, 8))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0L), 0L), 0L, 0L, 0L), // p_1177->g_655
        (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, (-4L)), (-4L)), // p_1177->g_656
        (VECTOR(uint32_t, 2))(0x77A0C146L, 1UL), // p_1177->g_657
        (VECTOR(uint32_t, 2))(4UL, 0x77D6A4B0L), // p_1177->g_660
        (VECTOR(uint16_t, 16))(0xAFD0L, (VECTOR(uint16_t, 4))(0xAFD0L, (VECTOR(uint16_t, 2))(0xAFD0L, 0xED96L), 0xED96L), 0xED96L, 0xAFD0L, 0xED96L, (VECTOR(uint16_t, 2))(0xAFD0L, 0xED96L), (VECTOR(uint16_t, 2))(0xAFD0L, 0xED96L), 0xAFD0L, 0xED96L, 0xAFD0L, 0xED96L), // p_1177->g_661
        (VECTOR(uint32_t, 2))(4294967289UL, 0x8006A8B9L), // p_1177->g_663
        &p_1177->g_240, // p_1177->g_671
        {&p_1177->g_671,&p_1177->g_671,&p_1177->g_671,&p_1177->g_671,&p_1177->g_671,&p_1177->g_671,&p_1177->g_671,&p_1177->g_671,&p_1177->g_671,&p_1177->g_671}, // p_1177->g_670
        (void*)0, // p_1177->g_672
        0x0BC784E0L, // p_1177->g_674
        (VECTOR(int16_t, 8))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, (-9L)), (-9L)), (-9L), 1L, (-9L)), // p_1177->g_711
        0x89L, // p_1177->g_722
        &p_1177->g_101, // p_1177->g_725
        0x205F9434L, // p_1177->g_746
        0x620F3BD6L, // p_1177->g_763
        &p_1177->g_419.f0, // p_1177->g_767
        (void*)0, // p_1177->g_769
        &p_1177->g_101, // p_1177->g_770
        0x5F23F5DF3C0F9E63L, // p_1177->g_774
        {0x7E44833FL,1L,0x4648E25029445D97L,2UL}, // p_1177->g_780
        {0x3C15BB96L,0L,0L,65528UL}, // p_1177->g_782
        (VECTOR(uint16_t, 2))(65528UL, 0UL), // p_1177->g_805
        (VECTOR(int16_t, 4))((-8L), (VECTOR(int16_t, 2))((-8L), 0x0B97L), 0x0B97L), // p_1177->g_818
        (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, (-7L)), (-7L)), // p_1177->g_819
        (VECTOR(uint64_t, 16))(18446744073709551613UL, (VECTOR(uint64_t, 4))(18446744073709551613UL, (VECTOR(uint64_t, 2))(18446744073709551613UL, 0x1CABED695333B812L), 0x1CABED695333B812L), 0x1CABED695333B812L, 18446744073709551613UL, 0x1CABED695333B812L, (VECTOR(uint64_t, 2))(18446744073709551613UL, 0x1CABED695333B812L), (VECTOR(uint64_t, 2))(18446744073709551613UL, 0x1CABED695333B812L), 18446744073709551613UL, 0x1CABED695333B812L, 18446744073709551613UL, 0x1CABED695333B812L), // p_1177->g_820
        (VECTOR(uint8_t, 2))(0x82L, 0xD0L), // p_1177->g_849
        (VECTOR(int16_t, 4))(0x6A22L, (VECTOR(int16_t, 2))(0x6A22L, 0x1B09L), 0x1B09L), // p_1177->g_854
        (VECTOR(uint32_t, 8))(3UL, (VECTOR(uint32_t, 4))(3UL, (VECTOR(uint32_t, 2))(3UL, 4UL), 4UL), 4UL, 3UL, 4UL), // p_1177->g_861
        {1L,1L,0L,0xD5E4L}, // p_1177->g_863
        (void*)0, // p_1177->g_867
        &p_1177->g_464, // p_1177->g_869
        &p_1177->g_869, // p_1177->g_868
        65535UL, // p_1177->g_876
        {{(void*)0,&p_1177->g_780.f0,(void*)0,&p_1177->g_780.f0,(void*)0,(void*)0,&p_1177->g_780.f0,(void*)0,&p_1177->g_780.f0,(void*)0},{(void*)0,&p_1177->g_780.f0,(void*)0,&p_1177->g_780.f0,(void*)0,(void*)0,&p_1177->g_780.f0,(void*)0,&p_1177->g_780.f0,(void*)0}}, // p_1177->g_882
        &p_1177->g_47, // p_1177->g_883
        (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 1L), 1L), // p_1177->g_898
        (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x3F1AL), 0x3F1AL), // p_1177->g_900
        (VECTOR(int16_t, 16))(3L, (VECTOR(int16_t, 4))(3L, (VECTOR(int16_t, 2))(3L, 0x2DDEL), 0x2DDEL), 0x2DDEL, 3L, 0x2DDEL, (VECTOR(int16_t, 2))(3L, 0x2DDEL), (VECTOR(int16_t, 2))(3L, 0x2DDEL), 3L, 0x2DDEL, 3L, 0x2DDEL), // p_1177->g_901
        (VECTOR(int16_t, 2))((-1L), 0x00C2L), // p_1177->g_902
        (VECTOR(int16_t, 16))(0x7CD7L, (VECTOR(int16_t, 4))(0x7CD7L, (VECTOR(int16_t, 2))(0x7CD7L, (-1L)), (-1L)), (-1L), 0x7CD7L, (-1L), (VECTOR(int16_t, 2))(0x7CD7L, (-1L)), (VECTOR(int16_t, 2))(0x7CD7L, (-1L)), 0x7CD7L, (-1L), 0x7CD7L, (-1L)), // p_1177->g_905
        (VECTOR(int16_t, 16))(6L, (VECTOR(int16_t, 4))(6L, (VECTOR(int16_t, 2))(6L, 0x08F0L), 0x08F0L), 0x08F0L, 6L, 0x08F0L, (VECTOR(int16_t, 2))(6L, 0x08F0L), (VECTOR(int16_t, 2))(6L, 0x08F0L), 6L, 0x08F0L, 6L, 0x08F0L), // p_1177->g_906
        (VECTOR(int16_t, 8))((-5L), (VECTOR(int16_t, 4))((-5L), (VECTOR(int16_t, 2))((-5L), 0x7B14L), 0x7B14L), 0x7B14L, (-5L), 0x7B14L), // p_1177->g_907
        {{0x5439F13A61C196A3L},{0x5439F13A61C196A3L},{0x5439F13A61C196A3L},{0x5439F13A61C196A3L},{0x5439F13A61C196A3L},{0x5439F13A61C196A3L},{0x5439F13A61C196A3L},{0x5439F13A61C196A3L},{0x5439F13A61C196A3L}}, // p_1177->g_911
        (VECTOR(int16_t, 8))(9L, (VECTOR(int16_t, 4))(9L, (VECTOR(int16_t, 2))(9L, 0x5025L), 0x5025L), 0x5025L, 9L, 0x5025L), // p_1177->g_913
        {9L,9L,9L,9L,9L,9L,9L,9L,9L}, // p_1177->g_924
        (void*)0, // p_1177->g_927
        (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 5L), 5L), 5L, 1L, 5L), // p_1177->g_931
        {{{&p_1177->g_101,(void*)0,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101},{&p_1177->g_101,(void*)0,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101},{&p_1177->g_101,(void*)0,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101},{&p_1177->g_101,(void*)0,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101},{&p_1177->g_101,(void*)0,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101}},{{&p_1177->g_101,(void*)0,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101},{&p_1177->g_101,(void*)0,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101},{&p_1177->g_101,(void*)0,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101},{&p_1177->g_101,(void*)0,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101},{&p_1177->g_101,(void*)0,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101}},{{&p_1177->g_101,(void*)0,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101},{&p_1177->g_101,(void*)0,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101},{&p_1177->g_101,(void*)0,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101},{&p_1177->g_101,(void*)0,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101},{&p_1177->g_101,(void*)0,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101}},{{&p_1177->g_101,(void*)0,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101},{&p_1177->g_101,(void*)0,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101},{&p_1177->g_101,(void*)0,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101},{&p_1177->g_101,(void*)0,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101},{&p_1177->g_101,(void*)0,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101}},{{&p_1177->g_101,(void*)0,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101},{&p_1177->g_101,(void*)0,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101},{&p_1177->g_101,(void*)0,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101},{&p_1177->g_101,(void*)0,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101},{&p_1177->g_101,(void*)0,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101}},{{&p_1177->g_101,(void*)0,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101},{&p_1177->g_101,(void*)0,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101},{&p_1177->g_101,(void*)0,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101},{&p_1177->g_101,(void*)0,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101},{&p_1177->g_101,(void*)0,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101}},{{&p_1177->g_101,(void*)0,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101},{&p_1177->g_101,(void*)0,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101},{&p_1177->g_101,(void*)0,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101},{&p_1177->g_101,(void*)0,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101},{&p_1177->g_101,(void*)0,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101}},{{&p_1177->g_101,(void*)0,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101},{&p_1177->g_101,(void*)0,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101},{&p_1177->g_101,(void*)0,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101},{&p_1177->g_101,(void*)0,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101},{&p_1177->g_101,(void*)0,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101,&p_1177->g_101}}}, // p_1177->g_941
        {&p_1177->g_368}, // p_1177->g_948
        (void*)0, // p_1177->g_953
        {{{&p_1177->g_953,(void*)0},{&p_1177->g_953,(void*)0},{&p_1177->g_953,(void*)0},{&p_1177->g_953,(void*)0},{&p_1177->g_953,(void*)0},{&p_1177->g_953,(void*)0},{&p_1177->g_953,(void*)0},{&p_1177->g_953,(void*)0}},{{&p_1177->g_953,(void*)0},{&p_1177->g_953,(void*)0},{&p_1177->g_953,(void*)0},{&p_1177->g_953,(void*)0},{&p_1177->g_953,(void*)0},{&p_1177->g_953,(void*)0},{&p_1177->g_953,(void*)0},{&p_1177->g_953,(void*)0}},{{&p_1177->g_953,(void*)0},{&p_1177->g_953,(void*)0},{&p_1177->g_953,(void*)0},{&p_1177->g_953,(void*)0},{&p_1177->g_953,(void*)0},{&p_1177->g_953,(void*)0},{&p_1177->g_953,(void*)0},{&p_1177->g_953,(void*)0}},{{&p_1177->g_953,(void*)0},{&p_1177->g_953,(void*)0},{&p_1177->g_953,(void*)0},{&p_1177->g_953,(void*)0},{&p_1177->g_953,(void*)0},{&p_1177->g_953,(void*)0},{&p_1177->g_953,(void*)0},{&p_1177->g_953,(void*)0}},{{&p_1177->g_953,(void*)0},{&p_1177->g_953,(void*)0},{&p_1177->g_953,(void*)0},{&p_1177->g_953,(void*)0},{&p_1177->g_953,(void*)0},{&p_1177->g_953,(void*)0},{&p_1177->g_953,(void*)0},{&p_1177->g_953,(void*)0}}}, // p_1177->g_952
        &p_1177->g_952[0][5][1], // p_1177->g_951
        (VECTOR(int64_t, 8))(0x1CEBB9FB7F804E35L, (VECTOR(int64_t, 4))(0x1CEBB9FB7F804E35L, (VECTOR(int64_t, 2))(0x1CEBB9FB7F804E35L, (-8L)), (-8L)), (-8L), 0x1CEBB9FB7F804E35L, (-8L)), // p_1177->g_957
        (VECTOR(uint16_t, 16))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 65535UL), 65535UL), 65535UL, 0UL, 65535UL, (VECTOR(uint16_t, 2))(0UL, 65535UL), (VECTOR(uint16_t, 2))(0UL, 65535UL), 0UL, 65535UL, 0UL, 65535UL), // p_1177->g_986
        (VECTOR(uint16_t, 8))(0xE14DL, (VECTOR(uint16_t, 4))(0xE14DL, (VECTOR(uint16_t, 2))(0xE14DL, 0xA86FL), 0xA86FL), 0xA86FL, 0xE14DL, 0xA86FL), // p_1177->g_988
        (VECTOR(uint16_t, 8))(65533UL, (VECTOR(uint16_t, 4))(65533UL, (VECTOR(uint16_t, 2))(65533UL, 0xDE32L), 0xDE32L), 0xDE32L, 65533UL, 0xDE32L), // p_1177->g_990
        0x87L, // p_1177->g_1009
        (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 7L), 7L), // p_1177->g_1014
        (-5L), // p_1177->g_1026
        &p_1177->g_911[6][0], // p_1177->g_1035
        &p_1177->g_524, // p_1177->g_1063
        (VECTOR(int8_t, 8))(7L, (VECTOR(int8_t, 4))(7L, (VECTOR(int8_t, 2))(7L, 0L), 0L), 0L, 7L, 0L), // p_1177->g_1073
        (VECTOR(int8_t, 16))(0x1AL, (VECTOR(int8_t, 4))(0x1AL, (VECTOR(int8_t, 2))(0x1AL, 0x40L), 0x40L), 0x40L, 0x1AL, 0x40L, (VECTOR(int8_t, 2))(0x1AL, 0x40L), (VECTOR(int8_t, 2))(0x1AL, 0x40L), 0x1AL, 0x40L, 0x1AL, 0x40L), // p_1177->g_1077
        (void*)0, // p_1177->g_1090
        (void*)0, // p_1177->g_1091
        &p_1177->g_101, // p_1177->g_1092
        {7L,0x21C27E5AL,-5L,65535UL}, // p_1177->g_1105
        (VECTOR(uint64_t, 2))(0x653F7ED9FA4C7E19L, 4UL), // p_1177->g_1108
        (VECTOR(int32_t, 8))(0x7669BE86L, (VECTOR(int32_t, 4))(0x7669BE86L, (VECTOR(int32_t, 2))(0x7669BE86L, 0x34EF063BL), 0x34EF063BL), 0x34EF063BL, 0x7669BE86L, 0x34EF063BL), // p_1177->g_1110
        (VECTOR(int16_t, 16))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 9L), 9L), 9L, 0L, 9L, (VECTOR(int16_t, 2))(0L, 9L), (VECTOR(int16_t, 2))(0L, 9L), 0L, 9L, 0L, 9L), // p_1177->g_1115
        (VECTOR(int8_t, 8))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, (-10L)), (-10L)), (-10L), 0L, (-10L)), // p_1177->g_1116
        (VECTOR(uint32_t, 16))(4294967293UL, (VECTOR(uint32_t, 4))(4294967293UL, (VECTOR(uint32_t, 2))(4294967293UL, 4294967286UL), 4294967286UL), 4294967286UL, 4294967293UL, 4294967286UL, (VECTOR(uint32_t, 2))(4294967293UL, 4294967286UL), (VECTOR(uint32_t, 2))(4294967293UL, 4294967286UL), 4294967293UL, 4294967286UL, 4294967293UL, 4294967286UL), // p_1177->g_1119
        {0x03307740L,0x31470860L,0x6BA7511C67ED7568L,6UL}, // p_1177->g_1125
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_1177->g_1124
        {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)}, // p_1177->g_1142
        {0x352B06EEL,5L,0x215801045B985AE2L,0xD957L}, // p_1177->g_1145
        {-1L,-1L,-4L,0x22CCL}, // p_1177->g_1147
        sequence_input[get_global_id(0)], // p_1177->global_0_offset
        sequence_input[get_global_id(1)], // p_1177->global_1_offset
        sequence_input[get_global_id(2)], // p_1177->global_2_offset
        sequence_input[get_local_id(0)], // p_1177->local_0_offset
        sequence_input[get_local_id(1)], // p_1177->local_1_offset
        sequence_input[get_local_id(2)], // p_1177->local_2_offset
        sequence_input[get_group_id(0)], // p_1177->group_0_offset
        sequence_input[get_group_id(1)], // p_1177->group_1_offset
        sequence_input[get_group_id(2)], // p_1177->group_2_offset
    };
    c_1178 = c_1179;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1177);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1177->g_22, "p_1177->g_22", print_hash_value);
    transparent_crc(p_1177->g_33.x, "p_1177->g_33.x", print_hash_value);
    transparent_crc(p_1177->g_33.y, "p_1177->g_33.y", print_hash_value);
    transparent_crc(p_1177->g_33.z, "p_1177->g_33.z", print_hash_value);
    transparent_crc(p_1177->g_33.w, "p_1177->g_33.w", print_hash_value);
    transparent_crc(p_1177->g_36.s0, "p_1177->g_36.s0", print_hash_value);
    transparent_crc(p_1177->g_36.s1, "p_1177->g_36.s1", print_hash_value);
    transparent_crc(p_1177->g_36.s2, "p_1177->g_36.s2", print_hash_value);
    transparent_crc(p_1177->g_36.s3, "p_1177->g_36.s3", print_hash_value);
    transparent_crc(p_1177->g_36.s4, "p_1177->g_36.s4", print_hash_value);
    transparent_crc(p_1177->g_36.s5, "p_1177->g_36.s5", print_hash_value);
    transparent_crc(p_1177->g_36.s6, "p_1177->g_36.s6", print_hash_value);
    transparent_crc(p_1177->g_36.s7, "p_1177->g_36.s7", print_hash_value);
    transparent_crc(p_1177->g_43.x, "p_1177->g_43.x", print_hash_value);
    transparent_crc(p_1177->g_43.y, "p_1177->g_43.y", print_hash_value);
    transparent_crc(p_1177->g_43.z, "p_1177->g_43.z", print_hash_value);
    transparent_crc(p_1177->g_43.w, "p_1177->g_43.w", print_hash_value);
    transparent_crc(p_1177->g_46, "p_1177->g_46", print_hash_value);
    transparent_crc(p_1177->g_47, "p_1177->g_47", print_hash_value);
    transparent_crc(p_1177->g_71.s0, "p_1177->g_71.s0", print_hash_value);
    transparent_crc(p_1177->g_71.s1, "p_1177->g_71.s1", print_hash_value);
    transparent_crc(p_1177->g_71.s2, "p_1177->g_71.s2", print_hash_value);
    transparent_crc(p_1177->g_71.s3, "p_1177->g_71.s3", print_hash_value);
    transparent_crc(p_1177->g_71.s4, "p_1177->g_71.s4", print_hash_value);
    transparent_crc(p_1177->g_71.s5, "p_1177->g_71.s5", print_hash_value);
    transparent_crc(p_1177->g_71.s6, "p_1177->g_71.s6", print_hash_value);
    transparent_crc(p_1177->g_71.s7, "p_1177->g_71.s7", print_hash_value);
    transparent_crc(p_1177->g_71.s8, "p_1177->g_71.s8", print_hash_value);
    transparent_crc(p_1177->g_71.s9, "p_1177->g_71.s9", print_hash_value);
    transparent_crc(p_1177->g_71.sa, "p_1177->g_71.sa", print_hash_value);
    transparent_crc(p_1177->g_71.sb, "p_1177->g_71.sb", print_hash_value);
    transparent_crc(p_1177->g_71.sc, "p_1177->g_71.sc", print_hash_value);
    transparent_crc(p_1177->g_71.sd, "p_1177->g_71.sd", print_hash_value);
    transparent_crc(p_1177->g_71.se, "p_1177->g_71.se", print_hash_value);
    transparent_crc(p_1177->g_71.sf, "p_1177->g_71.sf", print_hash_value);
    transparent_crc(p_1177->g_98.f0, "p_1177->g_98.f0", print_hash_value);
    transparent_crc(p_1177->g_98.f1, "p_1177->g_98.f1", print_hash_value);
    transparent_crc(p_1177->g_98.f2, "p_1177->g_98.f2", print_hash_value);
    transparent_crc(p_1177->g_98.f3, "p_1177->g_98.f3", print_hash_value);
    transparent_crc(p_1177->g_102.x, "p_1177->g_102.x", print_hash_value);
    transparent_crc(p_1177->g_102.y, "p_1177->g_102.y", print_hash_value);
    transparent_crc(p_1177->g_102.z, "p_1177->g_102.z", print_hash_value);
    transparent_crc(p_1177->g_102.w, "p_1177->g_102.w", print_hash_value);
    transparent_crc(p_1177->g_108.f0, "p_1177->g_108.f0", print_hash_value);
    transparent_crc(p_1177->g_108.f1, "p_1177->g_108.f1", print_hash_value);
    transparent_crc(p_1177->g_108.f2, "p_1177->g_108.f2", print_hash_value);
    transparent_crc(p_1177->g_108.f3, "p_1177->g_108.f3", print_hash_value);
    transparent_crc(p_1177->g_117.f0, "p_1177->g_117.f0", print_hash_value);
    transparent_crc(p_1177->g_117.f1, "p_1177->g_117.f1", print_hash_value);
    transparent_crc(p_1177->g_117.f2, "p_1177->g_117.f2", print_hash_value);
    transparent_crc(p_1177->g_117.f3, "p_1177->g_117.f3", print_hash_value);
    transparent_crc(p_1177->g_124.s0, "p_1177->g_124.s0", print_hash_value);
    transparent_crc(p_1177->g_124.s1, "p_1177->g_124.s1", print_hash_value);
    transparent_crc(p_1177->g_124.s2, "p_1177->g_124.s2", print_hash_value);
    transparent_crc(p_1177->g_124.s3, "p_1177->g_124.s3", print_hash_value);
    transparent_crc(p_1177->g_124.s4, "p_1177->g_124.s4", print_hash_value);
    transparent_crc(p_1177->g_124.s5, "p_1177->g_124.s5", print_hash_value);
    transparent_crc(p_1177->g_124.s6, "p_1177->g_124.s6", print_hash_value);
    transparent_crc(p_1177->g_124.s7, "p_1177->g_124.s7", print_hash_value);
    transparent_crc(p_1177->g_124.s8, "p_1177->g_124.s8", print_hash_value);
    transparent_crc(p_1177->g_124.s9, "p_1177->g_124.s9", print_hash_value);
    transparent_crc(p_1177->g_124.sa, "p_1177->g_124.sa", print_hash_value);
    transparent_crc(p_1177->g_124.sb, "p_1177->g_124.sb", print_hash_value);
    transparent_crc(p_1177->g_124.sc, "p_1177->g_124.sc", print_hash_value);
    transparent_crc(p_1177->g_124.sd, "p_1177->g_124.sd", print_hash_value);
    transparent_crc(p_1177->g_124.se, "p_1177->g_124.se", print_hash_value);
    transparent_crc(p_1177->g_124.sf, "p_1177->g_124.sf", print_hash_value);
    transparent_crc(p_1177->g_132.x, "p_1177->g_132.x", print_hash_value);
    transparent_crc(p_1177->g_132.y, "p_1177->g_132.y", print_hash_value);
    transparent_crc(p_1177->g_132.z, "p_1177->g_132.z", print_hash_value);
    transparent_crc(p_1177->g_132.w, "p_1177->g_132.w", print_hash_value);
    transparent_crc(p_1177->g_134.x, "p_1177->g_134.x", print_hash_value);
    transparent_crc(p_1177->g_134.y, "p_1177->g_134.y", print_hash_value);
    transparent_crc(p_1177->g_134.z, "p_1177->g_134.z", print_hash_value);
    transparent_crc(p_1177->g_134.w, "p_1177->g_134.w", print_hash_value);
    transparent_crc(p_1177->g_135.x, "p_1177->g_135.x", print_hash_value);
    transparent_crc(p_1177->g_135.y, "p_1177->g_135.y", print_hash_value);
    transparent_crc(p_1177->g_175.s0, "p_1177->g_175.s0", print_hash_value);
    transparent_crc(p_1177->g_175.s1, "p_1177->g_175.s1", print_hash_value);
    transparent_crc(p_1177->g_175.s2, "p_1177->g_175.s2", print_hash_value);
    transparent_crc(p_1177->g_175.s3, "p_1177->g_175.s3", print_hash_value);
    transparent_crc(p_1177->g_175.s4, "p_1177->g_175.s4", print_hash_value);
    transparent_crc(p_1177->g_175.s5, "p_1177->g_175.s5", print_hash_value);
    transparent_crc(p_1177->g_175.s6, "p_1177->g_175.s6", print_hash_value);
    transparent_crc(p_1177->g_175.s7, "p_1177->g_175.s7", print_hash_value);
    transparent_crc(p_1177->g_183.s0, "p_1177->g_183.s0", print_hash_value);
    transparent_crc(p_1177->g_183.s1, "p_1177->g_183.s1", print_hash_value);
    transparent_crc(p_1177->g_183.s2, "p_1177->g_183.s2", print_hash_value);
    transparent_crc(p_1177->g_183.s3, "p_1177->g_183.s3", print_hash_value);
    transparent_crc(p_1177->g_183.s4, "p_1177->g_183.s4", print_hash_value);
    transparent_crc(p_1177->g_183.s5, "p_1177->g_183.s5", print_hash_value);
    transparent_crc(p_1177->g_183.s6, "p_1177->g_183.s6", print_hash_value);
    transparent_crc(p_1177->g_183.s7, "p_1177->g_183.s7", print_hash_value);
    transparent_crc(p_1177->g_183.s8, "p_1177->g_183.s8", print_hash_value);
    transparent_crc(p_1177->g_183.s9, "p_1177->g_183.s9", print_hash_value);
    transparent_crc(p_1177->g_183.sa, "p_1177->g_183.sa", print_hash_value);
    transparent_crc(p_1177->g_183.sb, "p_1177->g_183.sb", print_hash_value);
    transparent_crc(p_1177->g_183.sc, "p_1177->g_183.sc", print_hash_value);
    transparent_crc(p_1177->g_183.sd, "p_1177->g_183.sd", print_hash_value);
    transparent_crc(p_1177->g_183.se, "p_1177->g_183.se", print_hash_value);
    transparent_crc(p_1177->g_183.sf, "p_1177->g_183.sf", print_hash_value);
    transparent_crc(p_1177->g_191.x, "p_1177->g_191.x", print_hash_value);
    transparent_crc(p_1177->g_191.y, "p_1177->g_191.y", print_hash_value);
    transparent_crc(p_1177->g_191.z, "p_1177->g_191.z", print_hash_value);
    transparent_crc(p_1177->g_191.w, "p_1177->g_191.w", print_hash_value);
    transparent_crc(p_1177->g_196, "p_1177->g_196", print_hash_value);
    transparent_crc(p_1177->g_226.x, "p_1177->g_226.x", print_hash_value);
    transparent_crc(p_1177->g_226.y, "p_1177->g_226.y", print_hash_value);
    transparent_crc(p_1177->g_226.z, "p_1177->g_226.z", print_hash_value);
    transparent_crc(p_1177->g_226.w, "p_1177->g_226.w", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1177->g_234[i].f0, "p_1177->g_234[i].f0", print_hash_value);
        transparent_crc(p_1177->g_234[i].f1, "p_1177->g_234[i].f1", print_hash_value);
        transparent_crc(p_1177->g_234[i].f2, "p_1177->g_234[i].f2", print_hash_value);
        transparent_crc(p_1177->g_234[i].f3, "p_1177->g_234[i].f3", print_hash_value);

    }
    transparent_crc(p_1177->g_282.f0, "p_1177->g_282.f0", print_hash_value);
    transparent_crc(p_1177->g_282.f1, "p_1177->g_282.f1", print_hash_value);
    transparent_crc(p_1177->g_282.f2, "p_1177->g_282.f2", print_hash_value);
    transparent_crc(p_1177->g_282.f3, "p_1177->g_282.f3", print_hash_value);
    transparent_crc(p_1177->g_293.x, "p_1177->g_293.x", print_hash_value);
    transparent_crc(p_1177->g_293.y, "p_1177->g_293.y", print_hash_value);
    transparent_crc(p_1177->g_326.s0, "p_1177->g_326.s0", print_hash_value);
    transparent_crc(p_1177->g_326.s1, "p_1177->g_326.s1", print_hash_value);
    transparent_crc(p_1177->g_326.s2, "p_1177->g_326.s2", print_hash_value);
    transparent_crc(p_1177->g_326.s3, "p_1177->g_326.s3", print_hash_value);
    transparent_crc(p_1177->g_326.s4, "p_1177->g_326.s4", print_hash_value);
    transparent_crc(p_1177->g_326.s5, "p_1177->g_326.s5", print_hash_value);
    transparent_crc(p_1177->g_326.s6, "p_1177->g_326.s6", print_hash_value);
    transparent_crc(p_1177->g_326.s7, "p_1177->g_326.s7", print_hash_value);
    transparent_crc(p_1177->g_326.s8, "p_1177->g_326.s8", print_hash_value);
    transparent_crc(p_1177->g_326.s9, "p_1177->g_326.s9", print_hash_value);
    transparent_crc(p_1177->g_326.sa, "p_1177->g_326.sa", print_hash_value);
    transparent_crc(p_1177->g_326.sb, "p_1177->g_326.sb", print_hash_value);
    transparent_crc(p_1177->g_326.sc, "p_1177->g_326.sc", print_hash_value);
    transparent_crc(p_1177->g_326.sd, "p_1177->g_326.sd", print_hash_value);
    transparent_crc(p_1177->g_326.se, "p_1177->g_326.se", print_hash_value);
    transparent_crc(p_1177->g_326.sf, "p_1177->g_326.sf", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1177->g_367[i], "p_1177->g_367[i]", print_hash_value);

    }
    transparent_crc(p_1177->g_368, "p_1177->g_368", print_hash_value);
    transparent_crc(p_1177->g_387.s0, "p_1177->g_387.s0", print_hash_value);
    transparent_crc(p_1177->g_387.s1, "p_1177->g_387.s1", print_hash_value);
    transparent_crc(p_1177->g_387.s2, "p_1177->g_387.s2", print_hash_value);
    transparent_crc(p_1177->g_387.s3, "p_1177->g_387.s3", print_hash_value);
    transparent_crc(p_1177->g_387.s4, "p_1177->g_387.s4", print_hash_value);
    transparent_crc(p_1177->g_387.s5, "p_1177->g_387.s5", print_hash_value);
    transparent_crc(p_1177->g_387.s6, "p_1177->g_387.s6", print_hash_value);
    transparent_crc(p_1177->g_387.s7, "p_1177->g_387.s7", print_hash_value);
    transparent_crc(p_1177->g_404.x, "p_1177->g_404.x", print_hash_value);
    transparent_crc(p_1177->g_404.y, "p_1177->g_404.y", print_hash_value);
    transparent_crc(p_1177->g_411.s0, "p_1177->g_411.s0", print_hash_value);
    transparent_crc(p_1177->g_411.s1, "p_1177->g_411.s1", print_hash_value);
    transparent_crc(p_1177->g_411.s2, "p_1177->g_411.s2", print_hash_value);
    transparent_crc(p_1177->g_411.s3, "p_1177->g_411.s3", print_hash_value);
    transparent_crc(p_1177->g_411.s4, "p_1177->g_411.s4", print_hash_value);
    transparent_crc(p_1177->g_411.s5, "p_1177->g_411.s5", print_hash_value);
    transparent_crc(p_1177->g_411.s6, "p_1177->g_411.s6", print_hash_value);
    transparent_crc(p_1177->g_411.s7, "p_1177->g_411.s7", print_hash_value);
    transparent_crc(p_1177->g_413, "p_1177->g_413", print_hash_value);
    transparent_crc(p_1177->g_416.x, "p_1177->g_416.x", print_hash_value);
    transparent_crc(p_1177->g_416.y, "p_1177->g_416.y", print_hash_value);
    transparent_crc(p_1177->g_416.z, "p_1177->g_416.z", print_hash_value);
    transparent_crc(p_1177->g_416.w, "p_1177->g_416.w", print_hash_value);
    transparent_crc(p_1177->g_419.f0, "p_1177->g_419.f0", print_hash_value);
    transparent_crc(p_1177->g_419.f1, "p_1177->g_419.f1", print_hash_value);
    transparent_crc(p_1177->g_419.f2, "p_1177->g_419.f2", print_hash_value);
    transparent_crc(p_1177->g_419.f3, "p_1177->g_419.f3", print_hash_value);
    transparent_crc(p_1177->g_478.x, "p_1177->g_478.x", print_hash_value);
    transparent_crc(p_1177->g_478.y, "p_1177->g_478.y", print_hash_value);
    transparent_crc(p_1177->g_484, "p_1177->g_484", print_hash_value);
    transparent_crc(p_1177->g_501, "p_1177->g_501", print_hash_value);
    transparent_crc(p_1177->g_505.f0, "p_1177->g_505.f0", print_hash_value);
    transparent_crc(p_1177->g_505.f1, "p_1177->g_505.f1", print_hash_value);
    transparent_crc(p_1177->g_505.f2, "p_1177->g_505.f2", print_hash_value);
    transparent_crc(p_1177->g_505.f3, "p_1177->g_505.f3", print_hash_value);
    transparent_crc(p_1177->g_506.f0, "p_1177->g_506.f0", print_hash_value);
    transparent_crc(p_1177->g_506.f1, "p_1177->g_506.f1", print_hash_value);
    transparent_crc(p_1177->g_506.f2, "p_1177->g_506.f2", print_hash_value);
    transparent_crc(p_1177->g_506.f3, "p_1177->g_506.f3", print_hash_value);
    transparent_crc(p_1177->g_522, "p_1177->g_522", print_hash_value);
    transparent_crc(p_1177->g_524.f0, "p_1177->g_524.f0", print_hash_value);
    transparent_crc(p_1177->g_524.f1, "p_1177->g_524.f1", print_hash_value);
    transparent_crc(p_1177->g_524.f2, "p_1177->g_524.f2", print_hash_value);
    transparent_crc(p_1177->g_524.f3, "p_1177->g_524.f3", print_hash_value);
    transparent_crc(p_1177->g_525.f0, "p_1177->g_525.f0", print_hash_value);
    transparent_crc(p_1177->g_525.f1, "p_1177->g_525.f1", print_hash_value);
    transparent_crc(p_1177->g_525.f2, "p_1177->g_525.f2", print_hash_value);
    transparent_crc(p_1177->g_525.f3, "p_1177->g_525.f3", print_hash_value);
    transparent_crc(p_1177->g_549.s0, "p_1177->g_549.s0", print_hash_value);
    transparent_crc(p_1177->g_549.s1, "p_1177->g_549.s1", print_hash_value);
    transparent_crc(p_1177->g_549.s2, "p_1177->g_549.s2", print_hash_value);
    transparent_crc(p_1177->g_549.s3, "p_1177->g_549.s3", print_hash_value);
    transparent_crc(p_1177->g_549.s4, "p_1177->g_549.s4", print_hash_value);
    transparent_crc(p_1177->g_549.s5, "p_1177->g_549.s5", print_hash_value);
    transparent_crc(p_1177->g_549.s6, "p_1177->g_549.s6", print_hash_value);
    transparent_crc(p_1177->g_549.s7, "p_1177->g_549.s7", print_hash_value);
    transparent_crc(p_1177->g_560.f0, "p_1177->g_560.f0", print_hash_value);
    transparent_crc(p_1177->g_560.f1, "p_1177->g_560.f1", print_hash_value);
    transparent_crc(p_1177->g_560.f2, "p_1177->g_560.f2", print_hash_value);
    transparent_crc(p_1177->g_560.f3, "p_1177->g_560.f3", print_hash_value);
    transparent_crc(p_1177->g_576.f0, "p_1177->g_576.f0", print_hash_value);
    transparent_crc(p_1177->g_576.f1, "p_1177->g_576.f1", print_hash_value);
    transparent_crc(p_1177->g_576.f2, "p_1177->g_576.f2", print_hash_value);
    transparent_crc(p_1177->g_576.f3, "p_1177->g_576.f3", print_hash_value);
    transparent_crc(p_1177->g_599.x, "p_1177->g_599.x", print_hash_value);
    transparent_crc(p_1177->g_599.y, "p_1177->g_599.y", print_hash_value);
    transparent_crc(p_1177->g_610.f0, "p_1177->g_610.f0", print_hash_value);
    transparent_crc(p_1177->g_610.f1, "p_1177->g_610.f1", print_hash_value);
    transparent_crc(p_1177->g_610.f2, "p_1177->g_610.f2", print_hash_value);
    transparent_crc(p_1177->g_610.f3, "p_1177->g_610.f3", print_hash_value);
    transparent_crc(p_1177->g_655.s0, "p_1177->g_655.s0", print_hash_value);
    transparent_crc(p_1177->g_655.s1, "p_1177->g_655.s1", print_hash_value);
    transparent_crc(p_1177->g_655.s2, "p_1177->g_655.s2", print_hash_value);
    transparent_crc(p_1177->g_655.s3, "p_1177->g_655.s3", print_hash_value);
    transparent_crc(p_1177->g_655.s4, "p_1177->g_655.s4", print_hash_value);
    transparent_crc(p_1177->g_655.s5, "p_1177->g_655.s5", print_hash_value);
    transparent_crc(p_1177->g_655.s6, "p_1177->g_655.s6", print_hash_value);
    transparent_crc(p_1177->g_655.s7, "p_1177->g_655.s7", print_hash_value);
    transparent_crc(p_1177->g_656.x, "p_1177->g_656.x", print_hash_value);
    transparent_crc(p_1177->g_656.y, "p_1177->g_656.y", print_hash_value);
    transparent_crc(p_1177->g_656.z, "p_1177->g_656.z", print_hash_value);
    transparent_crc(p_1177->g_656.w, "p_1177->g_656.w", print_hash_value);
    transparent_crc(p_1177->g_657.x, "p_1177->g_657.x", print_hash_value);
    transparent_crc(p_1177->g_657.y, "p_1177->g_657.y", print_hash_value);
    transparent_crc(p_1177->g_660.x, "p_1177->g_660.x", print_hash_value);
    transparent_crc(p_1177->g_660.y, "p_1177->g_660.y", print_hash_value);
    transparent_crc(p_1177->g_661.s0, "p_1177->g_661.s0", print_hash_value);
    transparent_crc(p_1177->g_661.s1, "p_1177->g_661.s1", print_hash_value);
    transparent_crc(p_1177->g_661.s2, "p_1177->g_661.s2", print_hash_value);
    transparent_crc(p_1177->g_661.s3, "p_1177->g_661.s3", print_hash_value);
    transparent_crc(p_1177->g_661.s4, "p_1177->g_661.s4", print_hash_value);
    transparent_crc(p_1177->g_661.s5, "p_1177->g_661.s5", print_hash_value);
    transparent_crc(p_1177->g_661.s6, "p_1177->g_661.s6", print_hash_value);
    transparent_crc(p_1177->g_661.s7, "p_1177->g_661.s7", print_hash_value);
    transparent_crc(p_1177->g_661.s8, "p_1177->g_661.s8", print_hash_value);
    transparent_crc(p_1177->g_661.s9, "p_1177->g_661.s9", print_hash_value);
    transparent_crc(p_1177->g_661.sa, "p_1177->g_661.sa", print_hash_value);
    transparent_crc(p_1177->g_661.sb, "p_1177->g_661.sb", print_hash_value);
    transparent_crc(p_1177->g_661.sc, "p_1177->g_661.sc", print_hash_value);
    transparent_crc(p_1177->g_661.sd, "p_1177->g_661.sd", print_hash_value);
    transparent_crc(p_1177->g_661.se, "p_1177->g_661.se", print_hash_value);
    transparent_crc(p_1177->g_661.sf, "p_1177->g_661.sf", print_hash_value);
    transparent_crc(p_1177->g_663.x, "p_1177->g_663.x", print_hash_value);
    transparent_crc(p_1177->g_663.y, "p_1177->g_663.y", print_hash_value);
    transparent_crc(p_1177->g_674, "p_1177->g_674", print_hash_value);
    transparent_crc(p_1177->g_711.s0, "p_1177->g_711.s0", print_hash_value);
    transparent_crc(p_1177->g_711.s1, "p_1177->g_711.s1", print_hash_value);
    transparent_crc(p_1177->g_711.s2, "p_1177->g_711.s2", print_hash_value);
    transparent_crc(p_1177->g_711.s3, "p_1177->g_711.s3", print_hash_value);
    transparent_crc(p_1177->g_711.s4, "p_1177->g_711.s4", print_hash_value);
    transparent_crc(p_1177->g_711.s5, "p_1177->g_711.s5", print_hash_value);
    transparent_crc(p_1177->g_711.s6, "p_1177->g_711.s6", print_hash_value);
    transparent_crc(p_1177->g_711.s7, "p_1177->g_711.s7", print_hash_value);
    transparent_crc(p_1177->g_722, "p_1177->g_722", print_hash_value);
    transparent_crc(p_1177->g_746, "p_1177->g_746", print_hash_value);
    transparent_crc(p_1177->g_763, "p_1177->g_763", print_hash_value);
    transparent_crc(p_1177->g_774, "p_1177->g_774", print_hash_value);
    transparent_crc(p_1177->g_780.f0, "p_1177->g_780.f0", print_hash_value);
    transparent_crc(p_1177->g_780.f1, "p_1177->g_780.f1", print_hash_value);
    transparent_crc(p_1177->g_780.f2, "p_1177->g_780.f2", print_hash_value);
    transparent_crc(p_1177->g_780.f3, "p_1177->g_780.f3", print_hash_value);
    transparent_crc(p_1177->g_782.f0, "p_1177->g_782.f0", print_hash_value);
    transparent_crc(p_1177->g_782.f1, "p_1177->g_782.f1", print_hash_value);
    transparent_crc(p_1177->g_782.f2, "p_1177->g_782.f2", print_hash_value);
    transparent_crc(p_1177->g_782.f3, "p_1177->g_782.f3", print_hash_value);
    transparent_crc(p_1177->g_805.x, "p_1177->g_805.x", print_hash_value);
    transparent_crc(p_1177->g_805.y, "p_1177->g_805.y", print_hash_value);
    transparent_crc(p_1177->g_818.x, "p_1177->g_818.x", print_hash_value);
    transparent_crc(p_1177->g_818.y, "p_1177->g_818.y", print_hash_value);
    transparent_crc(p_1177->g_818.z, "p_1177->g_818.z", print_hash_value);
    transparent_crc(p_1177->g_818.w, "p_1177->g_818.w", print_hash_value);
    transparent_crc(p_1177->g_819.x, "p_1177->g_819.x", print_hash_value);
    transparent_crc(p_1177->g_819.y, "p_1177->g_819.y", print_hash_value);
    transparent_crc(p_1177->g_819.z, "p_1177->g_819.z", print_hash_value);
    transparent_crc(p_1177->g_819.w, "p_1177->g_819.w", print_hash_value);
    transparent_crc(p_1177->g_820.s0, "p_1177->g_820.s0", print_hash_value);
    transparent_crc(p_1177->g_820.s1, "p_1177->g_820.s1", print_hash_value);
    transparent_crc(p_1177->g_820.s2, "p_1177->g_820.s2", print_hash_value);
    transparent_crc(p_1177->g_820.s3, "p_1177->g_820.s3", print_hash_value);
    transparent_crc(p_1177->g_820.s4, "p_1177->g_820.s4", print_hash_value);
    transparent_crc(p_1177->g_820.s5, "p_1177->g_820.s5", print_hash_value);
    transparent_crc(p_1177->g_820.s6, "p_1177->g_820.s6", print_hash_value);
    transparent_crc(p_1177->g_820.s7, "p_1177->g_820.s7", print_hash_value);
    transparent_crc(p_1177->g_820.s8, "p_1177->g_820.s8", print_hash_value);
    transparent_crc(p_1177->g_820.s9, "p_1177->g_820.s9", print_hash_value);
    transparent_crc(p_1177->g_820.sa, "p_1177->g_820.sa", print_hash_value);
    transparent_crc(p_1177->g_820.sb, "p_1177->g_820.sb", print_hash_value);
    transparent_crc(p_1177->g_820.sc, "p_1177->g_820.sc", print_hash_value);
    transparent_crc(p_1177->g_820.sd, "p_1177->g_820.sd", print_hash_value);
    transparent_crc(p_1177->g_820.se, "p_1177->g_820.se", print_hash_value);
    transparent_crc(p_1177->g_820.sf, "p_1177->g_820.sf", print_hash_value);
    transparent_crc(p_1177->g_849.x, "p_1177->g_849.x", print_hash_value);
    transparent_crc(p_1177->g_849.y, "p_1177->g_849.y", print_hash_value);
    transparent_crc(p_1177->g_854.x, "p_1177->g_854.x", print_hash_value);
    transparent_crc(p_1177->g_854.y, "p_1177->g_854.y", print_hash_value);
    transparent_crc(p_1177->g_854.z, "p_1177->g_854.z", print_hash_value);
    transparent_crc(p_1177->g_854.w, "p_1177->g_854.w", print_hash_value);
    transparent_crc(p_1177->g_861.s0, "p_1177->g_861.s0", print_hash_value);
    transparent_crc(p_1177->g_861.s1, "p_1177->g_861.s1", print_hash_value);
    transparent_crc(p_1177->g_861.s2, "p_1177->g_861.s2", print_hash_value);
    transparent_crc(p_1177->g_861.s3, "p_1177->g_861.s3", print_hash_value);
    transparent_crc(p_1177->g_861.s4, "p_1177->g_861.s4", print_hash_value);
    transparent_crc(p_1177->g_861.s5, "p_1177->g_861.s5", print_hash_value);
    transparent_crc(p_1177->g_861.s6, "p_1177->g_861.s6", print_hash_value);
    transparent_crc(p_1177->g_861.s7, "p_1177->g_861.s7", print_hash_value);
    transparent_crc(p_1177->g_863.f0, "p_1177->g_863.f0", print_hash_value);
    transparent_crc(p_1177->g_863.f1, "p_1177->g_863.f1", print_hash_value);
    transparent_crc(p_1177->g_863.f2, "p_1177->g_863.f2", print_hash_value);
    transparent_crc(p_1177->g_863.f3, "p_1177->g_863.f3", print_hash_value);
    transparent_crc(p_1177->g_876, "p_1177->g_876", print_hash_value);
    transparent_crc(p_1177->g_898.x, "p_1177->g_898.x", print_hash_value);
    transparent_crc(p_1177->g_898.y, "p_1177->g_898.y", print_hash_value);
    transparent_crc(p_1177->g_898.z, "p_1177->g_898.z", print_hash_value);
    transparent_crc(p_1177->g_898.w, "p_1177->g_898.w", print_hash_value);
    transparent_crc(p_1177->g_900.x, "p_1177->g_900.x", print_hash_value);
    transparent_crc(p_1177->g_900.y, "p_1177->g_900.y", print_hash_value);
    transparent_crc(p_1177->g_900.z, "p_1177->g_900.z", print_hash_value);
    transparent_crc(p_1177->g_900.w, "p_1177->g_900.w", print_hash_value);
    transparent_crc(p_1177->g_901.s0, "p_1177->g_901.s0", print_hash_value);
    transparent_crc(p_1177->g_901.s1, "p_1177->g_901.s1", print_hash_value);
    transparent_crc(p_1177->g_901.s2, "p_1177->g_901.s2", print_hash_value);
    transparent_crc(p_1177->g_901.s3, "p_1177->g_901.s3", print_hash_value);
    transparent_crc(p_1177->g_901.s4, "p_1177->g_901.s4", print_hash_value);
    transparent_crc(p_1177->g_901.s5, "p_1177->g_901.s5", print_hash_value);
    transparent_crc(p_1177->g_901.s6, "p_1177->g_901.s6", print_hash_value);
    transparent_crc(p_1177->g_901.s7, "p_1177->g_901.s7", print_hash_value);
    transparent_crc(p_1177->g_901.s8, "p_1177->g_901.s8", print_hash_value);
    transparent_crc(p_1177->g_901.s9, "p_1177->g_901.s9", print_hash_value);
    transparent_crc(p_1177->g_901.sa, "p_1177->g_901.sa", print_hash_value);
    transparent_crc(p_1177->g_901.sb, "p_1177->g_901.sb", print_hash_value);
    transparent_crc(p_1177->g_901.sc, "p_1177->g_901.sc", print_hash_value);
    transparent_crc(p_1177->g_901.sd, "p_1177->g_901.sd", print_hash_value);
    transparent_crc(p_1177->g_901.se, "p_1177->g_901.se", print_hash_value);
    transparent_crc(p_1177->g_901.sf, "p_1177->g_901.sf", print_hash_value);
    transparent_crc(p_1177->g_902.x, "p_1177->g_902.x", print_hash_value);
    transparent_crc(p_1177->g_902.y, "p_1177->g_902.y", print_hash_value);
    transparent_crc(p_1177->g_905.s0, "p_1177->g_905.s0", print_hash_value);
    transparent_crc(p_1177->g_905.s1, "p_1177->g_905.s1", print_hash_value);
    transparent_crc(p_1177->g_905.s2, "p_1177->g_905.s2", print_hash_value);
    transparent_crc(p_1177->g_905.s3, "p_1177->g_905.s3", print_hash_value);
    transparent_crc(p_1177->g_905.s4, "p_1177->g_905.s4", print_hash_value);
    transparent_crc(p_1177->g_905.s5, "p_1177->g_905.s5", print_hash_value);
    transparent_crc(p_1177->g_905.s6, "p_1177->g_905.s6", print_hash_value);
    transparent_crc(p_1177->g_905.s7, "p_1177->g_905.s7", print_hash_value);
    transparent_crc(p_1177->g_905.s8, "p_1177->g_905.s8", print_hash_value);
    transparent_crc(p_1177->g_905.s9, "p_1177->g_905.s9", print_hash_value);
    transparent_crc(p_1177->g_905.sa, "p_1177->g_905.sa", print_hash_value);
    transparent_crc(p_1177->g_905.sb, "p_1177->g_905.sb", print_hash_value);
    transparent_crc(p_1177->g_905.sc, "p_1177->g_905.sc", print_hash_value);
    transparent_crc(p_1177->g_905.sd, "p_1177->g_905.sd", print_hash_value);
    transparent_crc(p_1177->g_905.se, "p_1177->g_905.se", print_hash_value);
    transparent_crc(p_1177->g_905.sf, "p_1177->g_905.sf", print_hash_value);
    transparent_crc(p_1177->g_906.s0, "p_1177->g_906.s0", print_hash_value);
    transparent_crc(p_1177->g_906.s1, "p_1177->g_906.s1", print_hash_value);
    transparent_crc(p_1177->g_906.s2, "p_1177->g_906.s2", print_hash_value);
    transparent_crc(p_1177->g_906.s3, "p_1177->g_906.s3", print_hash_value);
    transparent_crc(p_1177->g_906.s4, "p_1177->g_906.s4", print_hash_value);
    transparent_crc(p_1177->g_906.s5, "p_1177->g_906.s5", print_hash_value);
    transparent_crc(p_1177->g_906.s6, "p_1177->g_906.s6", print_hash_value);
    transparent_crc(p_1177->g_906.s7, "p_1177->g_906.s7", print_hash_value);
    transparent_crc(p_1177->g_906.s8, "p_1177->g_906.s8", print_hash_value);
    transparent_crc(p_1177->g_906.s9, "p_1177->g_906.s9", print_hash_value);
    transparent_crc(p_1177->g_906.sa, "p_1177->g_906.sa", print_hash_value);
    transparent_crc(p_1177->g_906.sb, "p_1177->g_906.sb", print_hash_value);
    transparent_crc(p_1177->g_906.sc, "p_1177->g_906.sc", print_hash_value);
    transparent_crc(p_1177->g_906.sd, "p_1177->g_906.sd", print_hash_value);
    transparent_crc(p_1177->g_906.se, "p_1177->g_906.se", print_hash_value);
    transparent_crc(p_1177->g_906.sf, "p_1177->g_906.sf", print_hash_value);
    transparent_crc(p_1177->g_907.s0, "p_1177->g_907.s0", print_hash_value);
    transparent_crc(p_1177->g_907.s1, "p_1177->g_907.s1", print_hash_value);
    transparent_crc(p_1177->g_907.s2, "p_1177->g_907.s2", print_hash_value);
    transparent_crc(p_1177->g_907.s3, "p_1177->g_907.s3", print_hash_value);
    transparent_crc(p_1177->g_907.s4, "p_1177->g_907.s4", print_hash_value);
    transparent_crc(p_1177->g_907.s5, "p_1177->g_907.s5", print_hash_value);
    transparent_crc(p_1177->g_907.s6, "p_1177->g_907.s6", print_hash_value);
    transparent_crc(p_1177->g_907.s7, "p_1177->g_907.s7", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 1; j++)
        {
            transparent_crc(p_1177->g_911[i][j], "p_1177->g_911[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1177->g_913.s0, "p_1177->g_913.s0", print_hash_value);
    transparent_crc(p_1177->g_913.s1, "p_1177->g_913.s1", print_hash_value);
    transparent_crc(p_1177->g_913.s2, "p_1177->g_913.s2", print_hash_value);
    transparent_crc(p_1177->g_913.s3, "p_1177->g_913.s3", print_hash_value);
    transparent_crc(p_1177->g_913.s4, "p_1177->g_913.s4", print_hash_value);
    transparent_crc(p_1177->g_913.s5, "p_1177->g_913.s5", print_hash_value);
    transparent_crc(p_1177->g_913.s6, "p_1177->g_913.s6", print_hash_value);
    transparent_crc(p_1177->g_913.s7, "p_1177->g_913.s7", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1177->g_924[i], "p_1177->g_924[i]", print_hash_value);

    }
    transparent_crc(p_1177->g_931.s0, "p_1177->g_931.s0", print_hash_value);
    transparent_crc(p_1177->g_931.s1, "p_1177->g_931.s1", print_hash_value);
    transparent_crc(p_1177->g_931.s2, "p_1177->g_931.s2", print_hash_value);
    transparent_crc(p_1177->g_931.s3, "p_1177->g_931.s3", print_hash_value);
    transparent_crc(p_1177->g_931.s4, "p_1177->g_931.s4", print_hash_value);
    transparent_crc(p_1177->g_931.s5, "p_1177->g_931.s5", print_hash_value);
    transparent_crc(p_1177->g_931.s6, "p_1177->g_931.s6", print_hash_value);
    transparent_crc(p_1177->g_931.s7, "p_1177->g_931.s7", print_hash_value);
    transparent_crc(p_1177->g_957.s0, "p_1177->g_957.s0", print_hash_value);
    transparent_crc(p_1177->g_957.s1, "p_1177->g_957.s1", print_hash_value);
    transparent_crc(p_1177->g_957.s2, "p_1177->g_957.s2", print_hash_value);
    transparent_crc(p_1177->g_957.s3, "p_1177->g_957.s3", print_hash_value);
    transparent_crc(p_1177->g_957.s4, "p_1177->g_957.s4", print_hash_value);
    transparent_crc(p_1177->g_957.s5, "p_1177->g_957.s5", print_hash_value);
    transparent_crc(p_1177->g_957.s6, "p_1177->g_957.s6", print_hash_value);
    transparent_crc(p_1177->g_957.s7, "p_1177->g_957.s7", print_hash_value);
    transparent_crc(p_1177->g_986.s0, "p_1177->g_986.s0", print_hash_value);
    transparent_crc(p_1177->g_986.s1, "p_1177->g_986.s1", print_hash_value);
    transparent_crc(p_1177->g_986.s2, "p_1177->g_986.s2", print_hash_value);
    transparent_crc(p_1177->g_986.s3, "p_1177->g_986.s3", print_hash_value);
    transparent_crc(p_1177->g_986.s4, "p_1177->g_986.s4", print_hash_value);
    transparent_crc(p_1177->g_986.s5, "p_1177->g_986.s5", print_hash_value);
    transparent_crc(p_1177->g_986.s6, "p_1177->g_986.s6", print_hash_value);
    transparent_crc(p_1177->g_986.s7, "p_1177->g_986.s7", print_hash_value);
    transparent_crc(p_1177->g_986.s8, "p_1177->g_986.s8", print_hash_value);
    transparent_crc(p_1177->g_986.s9, "p_1177->g_986.s9", print_hash_value);
    transparent_crc(p_1177->g_986.sa, "p_1177->g_986.sa", print_hash_value);
    transparent_crc(p_1177->g_986.sb, "p_1177->g_986.sb", print_hash_value);
    transparent_crc(p_1177->g_986.sc, "p_1177->g_986.sc", print_hash_value);
    transparent_crc(p_1177->g_986.sd, "p_1177->g_986.sd", print_hash_value);
    transparent_crc(p_1177->g_986.se, "p_1177->g_986.se", print_hash_value);
    transparent_crc(p_1177->g_986.sf, "p_1177->g_986.sf", print_hash_value);
    transparent_crc(p_1177->g_988.s0, "p_1177->g_988.s0", print_hash_value);
    transparent_crc(p_1177->g_988.s1, "p_1177->g_988.s1", print_hash_value);
    transparent_crc(p_1177->g_988.s2, "p_1177->g_988.s2", print_hash_value);
    transparent_crc(p_1177->g_988.s3, "p_1177->g_988.s3", print_hash_value);
    transparent_crc(p_1177->g_988.s4, "p_1177->g_988.s4", print_hash_value);
    transparent_crc(p_1177->g_988.s5, "p_1177->g_988.s5", print_hash_value);
    transparent_crc(p_1177->g_988.s6, "p_1177->g_988.s6", print_hash_value);
    transparent_crc(p_1177->g_988.s7, "p_1177->g_988.s7", print_hash_value);
    transparent_crc(p_1177->g_990.s0, "p_1177->g_990.s0", print_hash_value);
    transparent_crc(p_1177->g_990.s1, "p_1177->g_990.s1", print_hash_value);
    transparent_crc(p_1177->g_990.s2, "p_1177->g_990.s2", print_hash_value);
    transparent_crc(p_1177->g_990.s3, "p_1177->g_990.s3", print_hash_value);
    transparent_crc(p_1177->g_990.s4, "p_1177->g_990.s4", print_hash_value);
    transparent_crc(p_1177->g_990.s5, "p_1177->g_990.s5", print_hash_value);
    transparent_crc(p_1177->g_990.s6, "p_1177->g_990.s6", print_hash_value);
    transparent_crc(p_1177->g_990.s7, "p_1177->g_990.s7", print_hash_value);
    transparent_crc(p_1177->g_1009, "p_1177->g_1009", print_hash_value);
    transparent_crc(p_1177->g_1014.x, "p_1177->g_1014.x", print_hash_value);
    transparent_crc(p_1177->g_1014.y, "p_1177->g_1014.y", print_hash_value);
    transparent_crc(p_1177->g_1014.z, "p_1177->g_1014.z", print_hash_value);
    transparent_crc(p_1177->g_1014.w, "p_1177->g_1014.w", print_hash_value);
    transparent_crc(p_1177->g_1026, "p_1177->g_1026", print_hash_value);
    transparent_crc(p_1177->g_1073.s0, "p_1177->g_1073.s0", print_hash_value);
    transparent_crc(p_1177->g_1073.s1, "p_1177->g_1073.s1", print_hash_value);
    transparent_crc(p_1177->g_1073.s2, "p_1177->g_1073.s2", print_hash_value);
    transparent_crc(p_1177->g_1073.s3, "p_1177->g_1073.s3", print_hash_value);
    transparent_crc(p_1177->g_1073.s4, "p_1177->g_1073.s4", print_hash_value);
    transparent_crc(p_1177->g_1073.s5, "p_1177->g_1073.s5", print_hash_value);
    transparent_crc(p_1177->g_1073.s6, "p_1177->g_1073.s6", print_hash_value);
    transparent_crc(p_1177->g_1073.s7, "p_1177->g_1073.s7", print_hash_value);
    transparent_crc(p_1177->g_1077.s0, "p_1177->g_1077.s0", print_hash_value);
    transparent_crc(p_1177->g_1077.s1, "p_1177->g_1077.s1", print_hash_value);
    transparent_crc(p_1177->g_1077.s2, "p_1177->g_1077.s2", print_hash_value);
    transparent_crc(p_1177->g_1077.s3, "p_1177->g_1077.s3", print_hash_value);
    transparent_crc(p_1177->g_1077.s4, "p_1177->g_1077.s4", print_hash_value);
    transparent_crc(p_1177->g_1077.s5, "p_1177->g_1077.s5", print_hash_value);
    transparent_crc(p_1177->g_1077.s6, "p_1177->g_1077.s6", print_hash_value);
    transparent_crc(p_1177->g_1077.s7, "p_1177->g_1077.s7", print_hash_value);
    transparent_crc(p_1177->g_1077.s8, "p_1177->g_1077.s8", print_hash_value);
    transparent_crc(p_1177->g_1077.s9, "p_1177->g_1077.s9", print_hash_value);
    transparent_crc(p_1177->g_1077.sa, "p_1177->g_1077.sa", print_hash_value);
    transparent_crc(p_1177->g_1077.sb, "p_1177->g_1077.sb", print_hash_value);
    transparent_crc(p_1177->g_1077.sc, "p_1177->g_1077.sc", print_hash_value);
    transparent_crc(p_1177->g_1077.sd, "p_1177->g_1077.sd", print_hash_value);
    transparent_crc(p_1177->g_1077.se, "p_1177->g_1077.se", print_hash_value);
    transparent_crc(p_1177->g_1077.sf, "p_1177->g_1077.sf", print_hash_value);
    transparent_crc(p_1177->g_1105.f0, "p_1177->g_1105.f0", print_hash_value);
    transparent_crc(p_1177->g_1105.f1, "p_1177->g_1105.f1", print_hash_value);
    transparent_crc(p_1177->g_1105.f2, "p_1177->g_1105.f2", print_hash_value);
    transparent_crc(p_1177->g_1105.f3, "p_1177->g_1105.f3", print_hash_value);
    transparent_crc(p_1177->g_1108.x, "p_1177->g_1108.x", print_hash_value);
    transparent_crc(p_1177->g_1108.y, "p_1177->g_1108.y", print_hash_value);
    transparent_crc(p_1177->g_1110.s0, "p_1177->g_1110.s0", print_hash_value);
    transparent_crc(p_1177->g_1110.s1, "p_1177->g_1110.s1", print_hash_value);
    transparent_crc(p_1177->g_1110.s2, "p_1177->g_1110.s2", print_hash_value);
    transparent_crc(p_1177->g_1110.s3, "p_1177->g_1110.s3", print_hash_value);
    transparent_crc(p_1177->g_1110.s4, "p_1177->g_1110.s4", print_hash_value);
    transparent_crc(p_1177->g_1110.s5, "p_1177->g_1110.s5", print_hash_value);
    transparent_crc(p_1177->g_1110.s6, "p_1177->g_1110.s6", print_hash_value);
    transparent_crc(p_1177->g_1110.s7, "p_1177->g_1110.s7", print_hash_value);
    transparent_crc(p_1177->g_1115.s0, "p_1177->g_1115.s0", print_hash_value);
    transparent_crc(p_1177->g_1115.s1, "p_1177->g_1115.s1", print_hash_value);
    transparent_crc(p_1177->g_1115.s2, "p_1177->g_1115.s2", print_hash_value);
    transparent_crc(p_1177->g_1115.s3, "p_1177->g_1115.s3", print_hash_value);
    transparent_crc(p_1177->g_1115.s4, "p_1177->g_1115.s4", print_hash_value);
    transparent_crc(p_1177->g_1115.s5, "p_1177->g_1115.s5", print_hash_value);
    transparent_crc(p_1177->g_1115.s6, "p_1177->g_1115.s6", print_hash_value);
    transparent_crc(p_1177->g_1115.s7, "p_1177->g_1115.s7", print_hash_value);
    transparent_crc(p_1177->g_1115.s8, "p_1177->g_1115.s8", print_hash_value);
    transparent_crc(p_1177->g_1115.s9, "p_1177->g_1115.s9", print_hash_value);
    transparent_crc(p_1177->g_1115.sa, "p_1177->g_1115.sa", print_hash_value);
    transparent_crc(p_1177->g_1115.sb, "p_1177->g_1115.sb", print_hash_value);
    transparent_crc(p_1177->g_1115.sc, "p_1177->g_1115.sc", print_hash_value);
    transparent_crc(p_1177->g_1115.sd, "p_1177->g_1115.sd", print_hash_value);
    transparent_crc(p_1177->g_1115.se, "p_1177->g_1115.se", print_hash_value);
    transparent_crc(p_1177->g_1115.sf, "p_1177->g_1115.sf", print_hash_value);
    transparent_crc(p_1177->g_1116.s0, "p_1177->g_1116.s0", print_hash_value);
    transparent_crc(p_1177->g_1116.s1, "p_1177->g_1116.s1", print_hash_value);
    transparent_crc(p_1177->g_1116.s2, "p_1177->g_1116.s2", print_hash_value);
    transparent_crc(p_1177->g_1116.s3, "p_1177->g_1116.s3", print_hash_value);
    transparent_crc(p_1177->g_1116.s4, "p_1177->g_1116.s4", print_hash_value);
    transparent_crc(p_1177->g_1116.s5, "p_1177->g_1116.s5", print_hash_value);
    transparent_crc(p_1177->g_1116.s6, "p_1177->g_1116.s6", print_hash_value);
    transparent_crc(p_1177->g_1116.s7, "p_1177->g_1116.s7", print_hash_value);
    transparent_crc(p_1177->g_1119.s0, "p_1177->g_1119.s0", print_hash_value);
    transparent_crc(p_1177->g_1119.s1, "p_1177->g_1119.s1", print_hash_value);
    transparent_crc(p_1177->g_1119.s2, "p_1177->g_1119.s2", print_hash_value);
    transparent_crc(p_1177->g_1119.s3, "p_1177->g_1119.s3", print_hash_value);
    transparent_crc(p_1177->g_1119.s4, "p_1177->g_1119.s4", print_hash_value);
    transparent_crc(p_1177->g_1119.s5, "p_1177->g_1119.s5", print_hash_value);
    transparent_crc(p_1177->g_1119.s6, "p_1177->g_1119.s6", print_hash_value);
    transparent_crc(p_1177->g_1119.s7, "p_1177->g_1119.s7", print_hash_value);
    transparent_crc(p_1177->g_1119.s8, "p_1177->g_1119.s8", print_hash_value);
    transparent_crc(p_1177->g_1119.s9, "p_1177->g_1119.s9", print_hash_value);
    transparent_crc(p_1177->g_1119.sa, "p_1177->g_1119.sa", print_hash_value);
    transparent_crc(p_1177->g_1119.sb, "p_1177->g_1119.sb", print_hash_value);
    transparent_crc(p_1177->g_1119.sc, "p_1177->g_1119.sc", print_hash_value);
    transparent_crc(p_1177->g_1119.sd, "p_1177->g_1119.sd", print_hash_value);
    transparent_crc(p_1177->g_1119.se, "p_1177->g_1119.se", print_hash_value);
    transparent_crc(p_1177->g_1119.sf, "p_1177->g_1119.sf", print_hash_value);
    transparent_crc(p_1177->g_1125.f0, "p_1177->g_1125.f0", print_hash_value);
    transparent_crc(p_1177->g_1125.f1, "p_1177->g_1125.f1", print_hash_value);
    transparent_crc(p_1177->g_1125.f2, "p_1177->g_1125.f2", print_hash_value);
    transparent_crc(p_1177->g_1125.f3, "p_1177->g_1125.f3", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1177->g_1142[i], "p_1177->g_1142[i]", print_hash_value);

    }
    transparent_crc(p_1177->g_1145.f0, "p_1177->g_1145.f0", print_hash_value);
    transparent_crc(p_1177->g_1145.f1, "p_1177->g_1145.f1", print_hash_value);
    transparent_crc(p_1177->g_1145.f2, "p_1177->g_1145.f2", print_hash_value);
    transparent_crc(p_1177->g_1145.f3, "p_1177->g_1145.f3", print_hash_value);
    transparent_crc(p_1177->g_1147.f0, "p_1177->g_1147.f0", print_hash_value);
    transparent_crc(p_1177->g_1147.f1, "p_1177->g_1147.f1", print_hash_value);
    transparent_crc(p_1177->g_1147.f2, "p_1177->g_1147.f2", print_hash_value);
    transparent_crc(p_1177->g_1147.f3, "p_1177->g_1147.f3", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
