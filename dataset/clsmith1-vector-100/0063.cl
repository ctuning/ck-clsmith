// ---fake_divergence -g 40,13,8 -l 1,1,2
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


// Seed: 63

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   volatile int32_t  f0;
};

struct S1 {
    volatile int32_t g_2;
    int64_t g_8;
    uint32_t g_12;
    uint32_t g_48;
    uint32_t *g_47;
    int16_t g_59;
    int32_t g_61;
    uint32_t g_64;
    int32_t g_73[1][1][3];
    VECTOR(int64_t, 16) g_83;
    int64_t g_85;
    uint16_t g_87;
    uint16_t g_96[6];
    int16_t g_98;
    int32_t *g_107[9][5];
    int32_t **g_106;
    volatile int16_t g_171[6];
    volatile int16_t *g_170;
    volatile int16_t * volatile *g_169;
    uint64_t g_178;
    struct S0 *g_181;
    VECTOR(int64_t, 16) g_187;
    VECTOR(int16_t, 4) g_203;
    VECTOR(uint16_t, 8) g_204;
    VECTOR(uint32_t, 16) g_207;
    int32_t g_209;
    int8_t g_215;
    VECTOR(int32_t, 16) g_243;
    uint32_t g_273;
    VECTOR(uint64_t, 4) g_274;
    VECTOR(int8_t, 16) g_278;
    VECTOR(uint8_t, 16) g_295;
    int16_t g_314;
    int32_t g_316;
    uint8_t g_326[7][9];
    uint16_t g_329;
    VECTOR(uint32_t, 2) g_336;
    VECTOR(uint32_t, 16) g_337;
    int32_t *g_340;
    VECTOR(int32_t, 2) g_368;
    VECTOR(int16_t, 2) g_433;
    VECTOR(int16_t, 4) g_437;
    struct S0 g_472[1];
    struct S0 g_474[5][10][5];
    struct S0 g_475;
    struct S0 g_476;
    struct S0 g_477;
    struct S0 g_478[6];
    struct S0 g_479;
    struct S0 g_480[7];
    struct S0 g_481;
    struct S0 g_482;
    struct S0 g_483;
    uint64_t g_488;
    int32_t *g_493;
    VECTOR(int32_t, 4) g_494;
    VECTOR(int64_t, 4) g_503;
    VECTOR(uint64_t, 2) g_520;
    uint64_t g_526;
    VECTOR(int16_t, 8) g_581;
    VECTOR(int16_t, 4) g_582;
    VECTOR(int16_t, 8) g_583;
    VECTOR(int16_t, 8) g_586;
    int32_t g_599;
    VECTOR(uint16_t, 4) g_631;
    VECTOR(int16_t, 8) g_654;
    uint32_t *g_669[10];
    uint32_t **g_668[5][7];
    volatile uint16_t g_673;
    volatile uint16_t * volatile g_672;
    volatile uint16_t * volatile *g_671;
    VECTOR(int32_t, 4) g_674;
    VECTOR(int64_t, 16) g_707;
    VECTOR(uint32_t, 8) g_726;
    VECTOR(uint32_t, 8) g_727;
    uint16_t *g_739[4];
    VECTOR(int64_t, 16) g_779;
    VECTOR(uint32_t, 2) g_815;
    uint8_t g_827[4];
    int32_t g_830[1][2][7];
    VECTOR(int32_t, 16) g_846;
    VECTOR(int32_t, 16) g_847;
    VECTOR(uint32_t, 4) g_863;
    VECTOR(uint32_t, 2) g_864;
    VECTOR(uint16_t, 2) g_865;
    VECTOR(int64_t, 4) g_890;
    VECTOR(uint8_t, 2) g_912;
    VECTOR(uint64_t, 16) g_917;
    VECTOR(int8_t, 4) g_934;
    VECTOR(uint64_t, 4) g_955;
    VECTOR(int64_t, 16) g_982;
    int8_t g_993;
    VECTOR(uint16_t, 16) g_999;
    VECTOR(int8_t, 8) g_1019;
    VECTOR(int16_t, 4) g_1038;
    int32_t g_1075;
    int8_t g_1099;
    VECTOR(uint16_t, 2) g_1107;
    struct S0 **g_1150;
    int32_t * volatile *g_1155;
    int32_t * volatile * volatile *g_1154;
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
int64_t  func_1(struct S1 * p_1157);
uint8_t  func_3(uint32_t  p_4, int64_t  p_5, uint64_t  p_6, uint64_t  p_7, struct S1 * p_1157);
uint32_t  func_20(int8_t  p_21, uint32_t * p_22, int16_t  p_23, uint8_t  p_24, struct S1 * p_1157);
uint16_t  func_27(uint32_t * p_28, uint8_t  p_29, uint32_t * p_30, struct S1 * p_1157);
uint32_t * func_31(uint32_t * p_32, uint32_t  p_33, uint16_t  p_34, struct S1 * p_1157);
uint32_t * func_35(uint32_t  p_36, int32_t  p_37, uint32_t * p_38, int32_t  p_39, uint32_t * p_40, struct S1 * p_1157);
uint32_t  func_41(uint32_t * p_42, int16_t  p_43, uint32_t * p_44, uint8_t  p_45, uint64_t  p_46, struct S1 * p_1157);
int32_t * func_67(int16_t * p_68, struct S1 * p_1157);
uint64_t  func_80(uint32_t  p_81, int32_t  p_82, struct S1 * p_1157);
int32_t  func_88(int64_t  p_89, int32_t ** p_90, uint32_t  p_91, uint32_t * p_92, uint32_t  p_93, struct S1 * p_1157);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1157->g_2 p_1157->g_8 p_1157->g_12 p_1157->g_47 p_1157->g_48 p_1157->g_59 p_1157->g_64 p_1157->g_73 p_1157->g_61 p_1157->g_243 p_1157->g_96 p_1157->g_107 p_1157->g_274 p_1157->g_278 p_1157->g_106 p_1157->g_295 p_1157->g_187 p_1157->g_314 p_1157->g_329 p_1157->g_336 p_1157->g_337 p_1157->g_207 p_1157->g_368 p_1157->g_204 p_1157->g_203 p_1157->g_326 p_1157->g_181 p_1157->g_316 p_1157->g_83 p_1157->g_273 p_1157->g_631 p_1157->g_526 p_1157->g_520 p_1157->g_433 p_1157->g_654 p_1157->g_668 p_1157->g_586 p_1157->g_494 p_1157->g_671 p_1157->g_674 p_1157->g_503 p_1157->g_582 p_1157->g_779 p_1157->g_215 p_1157->g_815 p_1157->g_98 p_1157->g_827 p_1157->g_830 p_1157->g_669 p_1157->g_178 p_1157->g_846 p_1157->g_847 p_1157->g_863 p_1157->g_864 p_1157->g_865 p_1157->g_581 p_1157->g_890 p_1157->g_912 p_1157->g_917 p_1157->g_87 p_1157->g_934 p_1157->g_955 p_1157->g_599 p_1157->g_982 p_1157->g_993 p_1157->g_999 p_1157->g_1019 p_1157->g_1107 p_1157->g_1154 p_1157->g_726 p_1157->g_707
 * writes: p_1157->g_12 p_1157->g_59 p_1157->g_64 p_1157->g_61 p_1157->g_73 p_1157->g_48 p_1157->g_273 p_1157->g_107 p_1157->g_326 p_1157->g_329 p_1157->g_340 p_1157->g_314 p_1157->g_215 p_1157->g_178 p_1157->g_203 p_1157->g_488 p_1157->g_87 p_1157->g_493 p_1157->g_278 p_1157->g_739 p_1157->g_98 p_1157->g_336 p_1157->g_1150
 */
int64_t  func_1(struct S1 * p_1157)
{ /* block id: 4 */
    uint32_t *l_11 = &p_1157->g_12;
    VECTOR(int32_t, 16) l_15 = (VECTOR(int32_t, 16))(0x278C007CL, (VECTOR(int32_t, 4))(0x278C007CL, (VECTOR(int32_t, 2))(0x278C007CL, 0x602189F4L), 0x602189F4L), 0x602189F4L, 0x278C007CL, 0x602189F4L, (VECTOR(int32_t, 2))(0x278C007CL, 0x602189F4L), (VECTOR(int32_t, 2))(0x278C007CL, 0x602189F4L), 0x278C007CL, 0x602189F4L, 0x278C007CL, 0x602189F4L);
    VECTOR(uint32_t, 8) l_16 = (VECTOR(uint32_t, 8))(0xF4E26C12L, (VECTOR(uint32_t, 4))(0xF4E26C12L, (VECTOR(uint32_t, 2))(0xF4E26C12L, 1UL), 1UL), 1UL, 0xF4E26C12L, 1UL);
    uint16_t l_17[8] = {0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL};
    uint64_t l_55 = 18446744073709551609UL;
    int32_t l_56 = 1L;
    int16_t *l_57 = (void*)0;
    int16_t *l_58 = &p_1157->g_59;
    uint32_t *l_272 = &p_1157->g_273;
    int i;
    l_56 = (p_1157->g_2 < ((func_3(p_1157->g_8, ((safe_sub_func_uint32_t_u_u(((*l_11)--), ((p_1157->g_8 , (p_1157->g_8 & (((VECTOR(int32_t, 4))(l_15.s2c60)).z , (((VECTOR(uint32_t, 2))(l_16.s17)).even , l_17[4])))) && (safe_mod_func_int32_t_s_s((((VECTOR(uint32_t, 8))(add_sat(((VECTOR(uint32_t, 8))(safe_mad24_func_uint32_t_u_u_u(VECTOR(uint32_t, 8),((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(hadd(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 8))(func_20((safe_sub_func_uint16_t_u_u(func_27(func_31(func_35(((*l_272) = func_41(p_1157->g_47, (safe_lshift_func_int8_t_s_u((safe_lshift_func_int16_t_s_u(((p_1157->g_48 , l_17[4]) <= ((((*l_58) |= ((((safe_lshift_func_int16_t_s_s(l_55, p_1157->g_48)) != p_1157->g_8) == l_56) , p_1157->g_8)) ^ l_15.sf) , l_16.s1)), l_15.sd)), 1)), l_11, l_17[4], p_1157->g_48, p_1157)), l_55, p_1157->g_107[7][3], l_15.s5, p_1157->g_47, p_1157), l_55, l_16.s2, p_1157), p_1157->g_830[0][0][5], p_1157->g_669[1], p_1157), 0x6CEAL)), l_11, l_15.s3, l_15.s5, p_1157), 4294967295UL, 4294967289UL, l_16.s5, (*p_1157->g_47), ((VECTOR(uint32_t, 2))(0xC35779BFL)), 4294967295UL)).s54)), ((VECTOR(uint32_t, 2))(0UL))))).yxxx)).yxxxwyyx, ((VECTOR(uint32_t, 8))(4294967292UL)), ((VECTOR(uint32_t, 8))(0x45DD15A4L))))), ((VECTOR(uint32_t, 8))(4UL))))).s0 , l_17[2]), p_1157->g_726.s3))))) , 0x36E096ED8A424FC8L), p_1157->g_707.s9, l_17[2], p_1157) >= l_15.s7) | p_1157->g_274.y));
    return p_1157->g_8;
}


/* ------------------------------------------ */
/* 
 * reads : p_1157->g_106
 * writes: p_1157->g_107
 */
uint8_t  func_3(uint32_t  p_4, int64_t  p_5, uint64_t  p_6, uint64_t  p_7, struct S1 * p_1157)
{ /* block id: 423 */
    int16_t l_1156 = 8L;
    (*p_1157->g_106) = (void*)0;
    return l_1156;
}


/* ------------------------------------------ */
/* 
 * reads : p_1157->g_1154 p_1157->g_336 p_1157->g_599
 * writes: p_1157->g_1150
 */
uint32_t  func_20(int8_t  p_21, uint32_t * p_22, int16_t  p_23, uint8_t  p_24, struct S1 * p_1157)
{ /* block id: 416 */
    int32_t **l_1120 = &p_1157->g_340;
    int32_t ***l_1119 = &l_1120;
    int32_t l_1121 = 0x146063B7L;
    int32_t l_1122 = (-1L);
    int32_t l_1123[2][3] = {{(-1L),0x7E170228L,(-1L)},{(-1L),0x7E170228L,(-1L)}};
    int32_t *l_1124 = &p_1157->g_599;
    int32_t *l_1125 = &l_1122;
    int32_t *l_1126 = &l_1122;
    int32_t *l_1127 = (void*)0;
    int32_t *l_1128 = (void*)0;
    int32_t *l_1129 = &l_1123[0][2];
    int32_t *l_1130 = &l_1123[0][2];
    int32_t *l_1131 = &l_1123[0][2];
    int32_t *l_1132 = (void*)0;
    int32_t *l_1133 = (void*)0;
    int32_t *l_1134 = &p_1157->g_599;
    int32_t *l_1135[4][5] = {{&l_1121,&l_1121,(void*)0,&l_1121,&l_1121},{&l_1121,&l_1121,(void*)0,&l_1121,&l_1121},{&l_1121,&l_1121,(void*)0,&l_1121,&l_1121},{&l_1121,&l_1121,(void*)0,&l_1121,&l_1121}};
    uint32_t l_1136 = 4294967294UL;
    struct S0 **l_1147[9] = {&p_1157->g_181,&p_1157->g_181,&p_1157->g_181,&p_1157->g_181,&p_1157->g_181,&p_1157->g_181,&p_1157->g_181,&p_1157->g_181,&p_1157->g_181};
    struct S0 **l_1149[7] = {&p_1157->g_181,&p_1157->g_181,&p_1157->g_181,&p_1157->g_181,&p_1157->g_181,&p_1157->g_181,&p_1157->g_181};
    struct S0 ***l_1148[2];
    int64_t *l_1151 = (void*)0;
    int i, j;
    for (i = 0; i < 2; i++)
        l_1148[i] = &l_1149[6];
    (*l_1119) = &p_1157->g_340;
    --l_1136;
    (*l_1130) = (safe_lshift_func_int16_t_s_s((safe_add_func_uint64_t_u_u((((p_24 < (&p_1157->g_98 == &p_1157->g_98)) < (safe_mul_func_int8_t_s_s(((safe_mul_func_uint16_t_u_u((l_1147[0] == (p_1157->g_1150 = l_1147[0])), (l_1151 != (void*)0))) & (((safe_sub_func_uint16_t_u_u(((void*)0 != p_1157->g_1154), p_21)) || p_21) ^ p_23)), p_23))) & 1L), p_1157->g_336.x)), p_23));
    (*l_1131) = (*l_1129);
    return (*l_1124);
}


/* ------------------------------------------ */
/* 
 * reads : p_1157->g_178 p_1157->g_106 p_1157->g_846 p_1157->g_847 p_1157->g_863 p_1157->g_864 p_1157->g_865 p_1157->g_64 p_1157->g_47 p_1157->g_581 p_1157->g_314 p_1157->g_48 p_1157->g_890 p_1157->g_631 p_1157->g_83 p_1157->g_329 p_1157->g_187 p_1157->g_59 p_1157->g_207 p_1157->g_73 p_1157->g_61 p_1157->g_203 p_1157->g_326 p_1157->g_181 p_1157->g_278 p_1157->g_368 p_1157->g_337 p_1157->g_274 p_1157->g_316 p_1157->g_671 p_1157->g_503 p_1157->g_204 p_1157->g_582 p_1157->g_8 p_1157->g_520 p_1157->g_779 p_1157->g_215 p_1157->g_96 p_1157->g_98 p_1157->g_912 p_1157->g_917 p_1157->g_87 p_1157->g_934 p_1157->g_955 p_1157->g_599 p_1157->g_982 p_1157->g_993 p_1157->g_999 p_1157->g_815 p_1157->g_1107 p_1157->g_336 p_1157->g_1019
 * writes: p_1157->g_48 p_1157->g_64 p_1157->g_107 p_1157->g_98 p_1157->g_314 p_1157->g_61 p_1157->g_326 p_1157->g_329 p_1157->g_340 p_1157->g_215 p_1157->g_178 p_1157->g_203 p_1157->g_59 p_1157->g_488 p_1157->g_87 p_1157->g_493 p_1157->g_278 p_1157->g_739 p_1157->g_273 p_1157->g_336
 */
uint16_t  func_27(uint32_t * p_28, uint8_t  p_29, uint32_t * p_30, struct S1 * p_1157)
{ /* block id: 313 */
    VECTOR(int8_t, 4) l_836 = (VECTOR(int8_t, 4))(0x2EL, (VECTOR(int8_t, 2))(0x2EL, (-1L)), (-1L));
    int32_t l_837 = (-8L);
    uint16_t *l_844[9][8];
    int32_t *l_845 = &p_1157->g_61;
    VECTOR(uint32_t, 8) l_858 = (VECTOR(uint32_t, 8))(4294967291UL, (VECTOR(uint32_t, 4))(4294967291UL, (VECTOR(uint32_t, 2))(4294967291UL, 0xDC006C2AL), 0xDC006C2AL), 0xDC006C2AL, 4294967291UL, 0xDC006C2AL);
    VECTOR(uint16_t, 8) l_866 = (VECTOR(uint16_t, 8))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0UL), 0UL), 0UL, 1UL, 0UL);
    VECTOR(int16_t, 4) l_867 = (VECTOR(int16_t, 4))((-10L), (VECTOR(int16_t, 2))((-10L), 0x2023L), 0x2023L);
    int32_t l_876 = 0x2E42396AL;
    int16_t l_877 = 4L;
    int16_t *l_878 = &p_1157->g_98;
    int64_t *l_879 = &p_1157->g_85;
    VECTOR(int16_t, 2) l_940 = (VECTOR(int16_t, 2))(0x7EFDL, 1L);
    uint32_t l_958 = 0x6C58E230L;
    uint64_t l_1022[6][5] = {{0UL,0UL,0UL,0UL,0UL},{0UL,0UL,0UL,0UL,0UL},{0UL,0UL,0UL,0UL,0UL},{0UL,0UL,0UL,0UL,0UL},{0UL,0UL,0UL,0UL,0UL},{0UL,0UL,0UL,0UL,0UL}};
    int16_t *l_1033 = (void*)0;
    VECTOR(int16_t, 16) l_1034 = (VECTOR(int16_t, 16))((-10L), (VECTOR(int16_t, 4))((-10L), (VECTOR(int16_t, 2))((-10L), 7L), 7L), 7L, (-10L), 7L, (VECTOR(int16_t, 2))((-10L), 7L), (VECTOR(int16_t, 2))((-10L), 7L), (-10L), 7L, (-10L), 7L);
    int64_t *l_1045 = (void*)0;
    int64_t **l_1044 = &l_1045;
    int64_t ***l_1043[9][3] = {{&l_1044,&l_1044,(void*)0},{&l_1044,&l_1044,(void*)0},{&l_1044,&l_1044,(void*)0},{&l_1044,&l_1044,(void*)0},{&l_1044,&l_1044,(void*)0},{&l_1044,&l_1044,(void*)0},{&l_1044,&l_1044,(void*)0},{&l_1044,&l_1044,(void*)0},{&l_1044,&l_1044,(void*)0}};
    int32_t l_1076[4][7][8] = {{{0L,0x69E4D13CL,0L,0x5A4AE3ABL,(-1L),(-1L),0x7C001162L,0x682D5F01L},{0L,0x69E4D13CL,0L,0x5A4AE3ABL,(-1L),(-1L),0x7C001162L,0x682D5F01L},{0L,0x69E4D13CL,0L,0x5A4AE3ABL,(-1L),(-1L),0x7C001162L,0x682D5F01L},{0L,0x69E4D13CL,0L,0x5A4AE3ABL,(-1L),(-1L),0x7C001162L,0x682D5F01L},{0L,0x69E4D13CL,0L,0x5A4AE3ABL,(-1L),(-1L),0x7C001162L,0x682D5F01L},{0L,0x69E4D13CL,0L,0x5A4AE3ABL,(-1L),(-1L),0x7C001162L,0x682D5F01L},{0L,0x69E4D13CL,0L,0x5A4AE3ABL,(-1L),(-1L),0x7C001162L,0x682D5F01L}},{{0L,0x69E4D13CL,0L,0x5A4AE3ABL,(-1L),(-1L),0x7C001162L,0x682D5F01L},{0L,0x69E4D13CL,0L,0x5A4AE3ABL,(-1L),(-1L),0x7C001162L,0x682D5F01L},{0L,0x69E4D13CL,0L,0x5A4AE3ABL,(-1L),(-1L),0x7C001162L,0x682D5F01L},{0L,0x69E4D13CL,0L,0x5A4AE3ABL,(-1L),(-1L),0x7C001162L,0x682D5F01L},{0L,0x69E4D13CL,0L,0x5A4AE3ABL,(-1L),(-1L),0x7C001162L,0x682D5F01L},{0L,0x69E4D13CL,0L,0x5A4AE3ABL,(-1L),(-1L),0x7C001162L,0x682D5F01L},{0L,0x69E4D13CL,0L,0x5A4AE3ABL,(-1L),(-1L),0x7C001162L,0x682D5F01L}},{{0L,0x69E4D13CL,0L,0x5A4AE3ABL,(-1L),(-1L),0x7C001162L,0x682D5F01L},{0L,0x69E4D13CL,0L,0x5A4AE3ABL,(-1L),(-1L),0x7C001162L,0x682D5F01L},{0L,0x69E4D13CL,0L,0x5A4AE3ABL,(-1L),(-1L),0x7C001162L,0x682D5F01L},{0L,0x69E4D13CL,0L,0x5A4AE3ABL,(-1L),(-1L),0x7C001162L,0x682D5F01L},{0L,0x69E4D13CL,0L,0x5A4AE3ABL,(-1L),(-1L),0x7C001162L,0x682D5F01L},{0L,0x69E4D13CL,0L,0x5A4AE3ABL,(-1L),(-1L),0x7C001162L,0x682D5F01L},{0L,0x69E4D13CL,0L,0x5A4AE3ABL,(-1L),(-1L),0x7C001162L,0x682D5F01L}},{{0L,0x69E4D13CL,0L,0x5A4AE3ABL,(-1L),(-1L),0x7C001162L,0x682D5F01L},{0L,0x69E4D13CL,0L,0x5A4AE3ABL,(-1L),(-1L),0x7C001162L,0x682D5F01L},{0L,0x69E4D13CL,0L,0x5A4AE3ABL,(-1L),(-1L),0x7C001162L,0x682D5F01L},{0L,0x69E4D13CL,0L,0x5A4AE3ABL,(-1L),(-1L),0x7C001162L,0x682D5F01L},{0L,0x69E4D13CL,0L,0x5A4AE3ABL,(-1L),(-1L),0x7C001162L,0x682D5F01L},{0L,0x69E4D13CL,0L,0x5A4AE3ABL,(-1L),(-1L),0x7C001162L,0x682D5F01L},{0L,0x69E4D13CL,0L,0x5A4AE3ABL,(-1L),(-1L),0x7C001162L,0x682D5F01L}}};
    VECTOR(uint8_t, 2) l_1111 = (VECTOR(uint8_t, 2))(0x7DL, 0xC9L);
    VECTOR(uint16_t, 2) l_1113 = (VECTOR(uint16_t, 2))(65535UL, 65532UL);
    int i, j, k;
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 8; j++)
            l_844[i][j] = (void*)0;
    }
    l_845 = func_35((l_837 = ((safe_unary_minus_func_uint32_t_u(0xEF906704L)) != ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 4))((safe_rshift_func_int8_t_s_u((safe_add_func_uint8_t_u_u(((VECTOR(uint8_t, 4))(abs(((VECTOR(int8_t, 4))(l_836.xxzx))))).x, l_836.z)), ((VECTOR(uint8_t, 4))(1UL, 254UL, 1UL, 0xEDL)).z)), l_836.y, 0x23DEB01CL, 9UL)))).x)), p_1157->g_178, p_28, ((((safe_sub_func_uint64_t_u_u(l_836.z, (+(9L == (safe_mod_func_int16_t_s_s(9L, (((safe_mul_func_int16_t_s_s(((l_844[1][3] != &p_1157->g_96[2]) ^ 9L), p_29)) , l_836.w) , 1L))))))) || l_836.z) & l_836.w) ^ 0x36L), p_28, p_1157);
    if (((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(min(((VECTOR(int32_t, 4))(rotate(((VECTOR(int32_t, 2))(mul_hi(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(p_1157->g_846.s10)), 0L, 0x1ED5C74CL)).even, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(hadd(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(mad_sat(((VECTOR(int32_t, 2))(safe_clamp_func(VECTOR(int32_t, 2),int32_t,((VECTOR(int32_t, 16))(p_1157->g_847.s1ecaa71bf11705a0)).s9d, (int32_t)((safe_mul_func_int16_t_s_s(((((safe_rshift_func_uint16_t_u_u((safe_div_func_int64_t_s_s((safe_sub_func_int8_t_s_s(((safe_mod_func_uint32_t_u_u(l_858.s2, (safe_add_func_int64_t_s_s((safe_lshift_func_uint8_t_u_s((FAKE_DIVERGE(p_1157->local_2_offset, get_local_id(2), 10) && ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(upsample(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 8))((GROUP_DIVERGE(1, 1) || ((void*)0 == l_845)), ((VECTOR(uint32_t, 4))(mul_hi(((VECTOR(uint32_t, 16))(p_1157->g_863.zzxzwxwwxywxywzz)).sfeac, ((VECTOR(uint32_t, 4))(p_1157->g_864.xyxx))))), p_29, 0x27A7A8C2L, 1UL)))).s16, ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(hadd(((VECTOR(uint32_t, 4))(upsample(((VECTOR(uint16_t, 8))(rotate(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(max(((VECTOR(uint16_t, 8))(p_1157->g_865.yyxyxxyx)).s50, ((VECTOR(uint16_t, 2))(0x3CBEL, 0x8FFAL))))), 0x5EF8L, 0xA731L)).xxxxwyyw, ((VECTOR(uint16_t, 16))(l_866.s6071141003705544)).hi))).odd, ((VECTOR(uint16_t, 4))(rotate(((VECTOR(uint16_t, 2))(65529UL, 0xCA72L)).yxxx, ((VECTOR(uint16_t, 2))(safe_clamp_func(VECTOR(uint16_t, 2),uint16_t,((VECTOR(uint16_t, 16))(abs(((VECTOR(int16_t, 2))(max(((VECTOR(int16_t, 2))(l_867.zz)), (int16_t)(GROUP_DIVERGE(2, 1) , ((*l_845) <= ((safe_rshift_func_int8_t_s_s((((*l_878) = (((((((*p_1157->g_47) = ((*l_845) <= 255UL)) ^ ((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))((((*l_845) <= (safe_rshift_func_int8_t_s_s((safe_add_func_int64_t_s_s((safe_rshift_func_int16_t_s_s((*l_845), 0)), (*l_845))), 6))) , (*l_845)), ((VECTOR(uint32_t, 2))(4294967287UL)), 0xFA4D98D7L, 0x82BFC2EEL, ((VECTOR(uint32_t, 2))(5UL)), 4294967295UL)), p_29, ((VECTOR(uint32_t, 4))(0x3B2B9B75L)), ((VECTOR(uint32_t, 2))(0x57B956DBL)), 4294967295UL)).s6) != l_876) == l_877) , (*l_845)) | 1L)) , 0x08L), p_1157->g_581.s4)) < (*l_845))))))).yyyxyxyyyyxyyyyx))).sd7, (uint16_t)(*l_845), (uint16_t)0x2169L))).xxxy)))))), ((VECTOR(uint32_t, 4))(4294967291UL))))).wzwxywyw)).s44))), 0UL, 1UL)).w), 2)), GROUP_DIVERGE(1, 1))))) || 0xFBL), p_1157->g_865.y)), 8UL)), (*l_845))) < p_29) <= p_29) , 4L), 0x7D47L)) , (*l_845)), (int32_t)(*l_845)))).yyxxyyxy, ((VECTOR(int32_t, 8))(0x0E07BD90L)), ((VECTOR(int32_t, 8))(0x4F959A0AL))))).hi)).wxyzzxyyywzyzwwy, ((VECTOR(int32_t, 16))((-4L)))))))).s86))).xxxx, ((VECTOR(int32_t, 4))((-1L)))))).hi, ((VECTOR(int32_t, 2))((-4L)))))).yxxyyyxyyxyxyyyx)).s64)).odd)
    { /* block id: 318 */
        int32_t *l_883 = (void*)0;
        VECTOR(int16_t, 2) l_918 = (VECTOR(int16_t, 2))((-1L), 0x584DL);
        int64_t ***l_928 = (void*)0;
        uint16_t l_933 = 0x020BL;
        int32_t l_973[2];
        uint32_t l_975 = 0xC3F0F843L;
        VECTOR(int32_t, 4) l_990 = (VECTOR(int32_t, 4))(0x6D0D24B7L, (VECTOR(int32_t, 2))(0x6D0D24B7L, 4L), 4L);
        VECTOR(int8_t, 4) l_1000 = (VECTOR(int8_t, 4))(0x14L, (VECTOR(int8_t, 2))(0x14L, 1L), 1L);
        VECTOR(int16_t, 4) l_1037 = (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x641FL), 0x641FL);
        uint16_t l_1078 = 0xF983L;
        int8_t *l_1110 = &p_1157->g_215;
        VECTOR(uint8_t, 8) l_1112 = (VECTOR(uint8_t, 8))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 0xE1L), 0xE1L), 0xE1L, 255UL, 0xE1L);
        int16_t *l_1118 = (void*)0;
        int i;
        for (i = 0; i < 2; i++)
            l_973[i] = 1L;
        if ((l_879 != (void*)0))
        { /* block id: 319 */
            int16_t l_882[7][6][1] = {{{0x2E4FL},{0x2E4FL},{0x2E4FL},{0x2E4FL},{0x2E4FL},{0x2E4FL}},{{0x2E4FL},{0x2E4FL},{0x2E4FL},{0x2E4FL},{0x2E4FL},{0x2E4FL}},{{0x2E4FL},{0x2E4FL},{0x2E4FL},{0x2E4FL},{0x2E4FL},{0x2E4FL}},{{0x2E4FL},{0x2E4FL},{0x2E4FL},{0x2E4FL},{0x2E4FL},{0x2E4FL}},{{0x2E4FL},{0x2E4FL},{0x2E4FL},{0x2E4FL},{0x2E4FL},{0x2E4FL}},{{0x2E4FL},{0x2E4FL},{0x2E4FL},{0x2E4FL},{0x2E4FL},{0x2E4FL}},{{0x2E4FL},{0x2E4FL},{0x2E4FL},{0x2E4FL},{0x2E4FL},{0x2E4FL}}};
            int i, j, k;
            for (p_1157->g_314 = 0; (p_1157->g_314 != 27); p_1157->g_314 = safe_add_func_uint16_t_u_u(p_1157->g_314, 3))
            { /* block id: 322 */
                l_882[4][4][0] = ((*l_845) = ((*p_28) | (*l_845)));
            }
        }
        else
        { /* block id: 326 */
            int64_t l_894 = 0x11ED2038FF1C0C1EL;
            int32_t l_903[10][7][3] = {{{0x13F1A089L,8L,0L},{0x13F1A089L,8L,0L},{0x13F1A089L,8L,0L},{0x13F1A089L,8L,0L},{0x13F1A089L,8L,0L},{0x13F1A089L,8L,0L},{0x13F1A089L,8L,0L}},{{0x13F1A089L,8L,0L},{0x13F1A089L,8L,0L},{0x13F1A089L,8L,0L},{0x13F1A089L,8L,0L},{0x13F1A089L,8L,0L},{0x13F1A089L,8L,0L},{0x13F1A089L,8L,0L}},{{0x13F1A089L,8L,0L},{0x13F1A089L,8L,0L},{0x13F1A089L,8L,0L},{0x13F1A089L,8L,0L},{0x13F1A089L,8L,0L},{0x13F1A089L,8L,0L},{0x13F1A089L,8L,0L}},{{0x13F1A089L,8L,0L},{0x13F1A089L,8L,0L},{0x13F1A089L,8L,0L},{0x13F1A089L,8L,0L},{0x13F1A089L,8L,0L},{0x13F1A089L,8L,0L},{0x13F1A089L,8L,0L}},{{0x13F1A089L,8L,0L},{0x13F1A089L,8L,0L},{0x13F1A089L,8L,0L},{0x13F1A089L,8L,0L},{0x13F1A089L,8L,0L},{0x13F1A089L,8L,0L},{0x13F1A089L,8L,0L}},{{0x13F1A089L,8L,0L},{0x13F1A089L,8L,0L},{0x13F1A089L,8L,0L},{0x13F1A089L,8L,0L},{0x13F1A089L,8L,0L},{0x13F1A089L,8L,0L},{0x13F1A089L,8L,0L}},{{0x13F1A089L,8L,0L},{0x13F1A089L,8L,0L},{0x13F1A089L,8L,0L},{0x13F1A089L,8L,0L},{0x13F1A089L,8L,0L},{0x13F1A089L,8L,0L},{0x13F1A089L,8L,0L}},{{0x13F1A089L,8L,0L},{0x13F1A089L,8L,0L},{0x13F1A089L,8L,0L},{0x13F1A089L,8L,0L},{0x13F1A089L,8L,0L},{0x13F1A089L,8L,0L},{0x13F1A089L,8L,0L}},{{0x13F1A089L,8L,0L},{0x13F1A089L,8L,0L},{0x13F1A089L,8L,0L},{0x13F1A089L,8L,0L},{0x13F1A089L,8L,0L},{0x13F1A089L,8L,0L},{0x13F1A089L,8L,0L}},{{0x13F1A089L,8L,0L},{0x13F1A089L,8L,0L},{0x13F1A089L,8L,0L},{0x13F1A089L,8L,0L},{0x13F1A089L,8L,0L},{0x13F1A089L,8L,0L},{0x13F1A089L,8L,0L}}};
            VECTOR(uint16_t, 16) l_909 = (VECTOR(uint16_t, 16))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 0UL), 0UL), 0UL, 65535UL, 0UL, (VECTOR(uint16_t, 2))(65535UL, 0UL), (VECTOR(uint16_t, 2))(65535UL, 0UL), 65535UL, 0UL, 65535UL, 0UL);
            int32_t l_959 = 6L;
            int8_t l_1003 = 9L;
            uint32_t l_1004 = 0xBB44033EL;
            struct S0 **l_1032 = &p_1157->g_181;
            VECTOR(int16_t, 2) l_1039 = (VECTOR(int16_t, 2))(0x5A85L, 0x4374L);
            uint32_t l_1086 = 4294967295UL;
            int i, j, k;
            (*p_1157->g_106) = l_883;
            if ((+((*l_845) ^= ((~p_29) || FAKE_DIVERGE(p_1157->global_0_offset, get_global_id(0), 10)))))
            { /* block id: 329 */
                int64_t *l_891 = &p_1157->g_8;
                int64_t *l_893 = &p_1157->g_8;
                int64_t **l_892 = &l_893;
                uint64_t *l_904[2][6][9] = {{{(void*)0,(void*)0,&p_1157->g_526,(void*)0,(void*)0,(void*)0,&p_1157->g_526,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1157->g_526,(void*)0,(void*)0,(void*)0,&p_1157->g_526,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1157->g_526,(void*)0,(void*)0,(void*)0,&p_1157->g_526,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1157->g_526,(void*)0,(void*)0,(void*)0,&p_1157->g_526,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1157->g_526,(void*)0,(void*)0,(void*)0,&p_1157->g_526,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1157->g_526,(void*)0,(void*)0,(void*)0,&p_1157->g_526,(void*)0,(void*)0}},{{(void*)0,(void*)0,&p_1157->g_526,(void*)0,(void*)0,(void*)0,&p_1157->g_526,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1157->g_526,(void*)0,(void*)0,(void*)0,&p_1157->g_526,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1157->g_526,(void*)0,(void*)0,(void*)0,&p_1157->g_526,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1157->g_526,(void*)0,(void*)0,(void*)0,&p_1157->g_526,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1157->g_526,(void*)0,(void*)0,(void*)0,&p_1157->g_526,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1157->g_526,(void*)0,(void*)0,(void*)0,&p_1157->g_526,(void*)0,(void*)0}}};
                int32_t *l_905 = (void*)0;
                int32_t *l_906 = (void*)0;
                int32_t *l_907 = &l_837;
                int16_t l_908 = 0x1EB4L;
                uint64_t *l_921 = &p_1157->g_488;
                VECTOR(int8_t, 16) l_923 = (VECTOR(int8_t, 16))(7L, (VECTOR(int8_t, 4))(7L, (VECTOR(int8_t, 2))(7L, 0x50L), 0x50L), 0x50L, 7L, 0x50L, (VECTOR(int8_t, 2))(7L, 0x50L), (VECTOR(int8_t, 2))(7L, 0x50L), 7L, 0x50L, 7L, 0x50L);
                int16_t l_967[5] = {9L,9L,9L,9L,9L};
                int32_t l_974 = 0x0530A6D6L;
                uint8_t l_994 = 0UL;
                int i, j, k;
                if ((((*l_907) |= ((FAKE_DIVERGE(p_1157->group_1_offset, get_group_id(1), 10) != (safe_add_func_uint8_t_u_u((safe_rshift_func_int8_t_s_s((((safe_add_func_uint64_t_u_u(p_29, ((VECTOR(int64_t, 2))(p_1157->g_890.yw)).even)) , l_891) != ((*l_892) = &p_1157->g_8)), 6)), l_894))) , ((((*l_845) = (l_894 && (p_29 == (((3UL || ((safe_rshift_func_int8_t_s_u((safe_add_func_int32_t_s_s(p_29, (safe_div_func_uint64_t_u_u((0x6C05L != 0x6F90L), l_894)))), 0)) > p_1157->g_631.x)) < l_903[6][5][2]) >= p_29)))) , p_29) && p_1157->g_83.s2))) , (*l_845)))
                { /* block id: 333 */
                    int16_t l_913 = (-2L);
                    VECTOR(uint64_t, 4) l_916 = (VECTOR(uint64_t, 4))(8UL, (VECTOR(uint64_t, 2))(8UL, 0UL), 0UL);
                    uint64_t *l_922 = &p_1157->g_488;
                    int i;
                    (*l_907) &= (*l_845);
                    (*p_1157->g_106) = func_31(p_28, l_908, l_909.s4, p_1157);
                    (*l_907) &= p_29;
                    l_903[6][5][2] = ((safe_lshift_func_uint8_t_u_u(((VECTOR(uint8_t, 16))(p_1157->g_912.yxyyyxyxxxxxxxxy)).se, ((l_913 <= (safe_sub_func_int8_t_s_s((((((VECTOR(uint64_t, 8))(add_sat(((VECTOR(uint64_t, 2))(l_916.xy)).yxxyxxyy, ((VECTOR(uint64_t, 2))(p_1157->g_917.s78)).xyxxyyxx))).s7 , l_913) != (p_29 | ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 4))(l_918.yyyx)).odd)).lo)) , p_1157->g_73[0][0][0]), (p_1157->g_865.y && ((!0x631E4820L) & ((((safe_lshift_func_int8_t_s_s(((l_921 = &p_1157->g_488) != l_922), ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(sub_sat(((VECTOR(int8_t, 2))(mad_sat(((VECTOR(int8_t, 16))(l_923.sca01274411f00028)).s1e, ((VECTOR(int8_t, 16))(((18446744073709551606UL & GROUP_DIVERGE(2, 1)) == 4294967295UL), 7L, l_913, p_1157->g_846.s7, 0x64L, p_1157->g_368.y, 9L, 0x51L, 1L, 1L, 0x43L, 1L, ((VECTOR(int8_t, 2))((-8L))), 8L, 0x1CL)).sc7, ((VECTOR(int8_t, 2))(0x52L))))).yyyy, ((VECTOR(int8_t, 4))(0x35L))))).odd)), 0x14L, 0x05L)), 1L, 0L, 0x36L, 0x1CL, 0x1DL, ((VECTOR(int8_t, 4))(7L)), 0L, 0L, (-7L))).sd)) && p_1157->g_631.w) , (void*)0) == &p_1157->g_739[2])))))) != p_29))) != l_903[5][2][0]);
                }
                else
                { /* block id: 339 */
                    int32_t l_937 = 1L;
                    int32_t l_961[10] = {0x064B3FD4L,(-8L),0x064B3FD4L,0x064B3FD4L,(-8L),0x064B3FD4L,0x064B3FD4L,(-8L),0x064B3FD4L,0x064B3FD4L};
                    int8_t l_962[1][7][7] = {{{0L,1L,0x55L,0x0BL,0x55L,1L,0L},{0L,1L,0x55L,0x0BL,0x55L,1L,0L},{0L,1L,0x55L,0x0BL,0x55L,1L,0L},{0L,1L,0x55L,0x0BL,0x55L,1L,0L},{0L,1L,0x55L,0x0BL,0x55L,1L,0L},{0L,1L,0x55L,0x0BL,0x55L,1L,0L},{0L,1L,0x55L,0x0BL,0x55L,1L,0L}}};
                    int32_t *l_968 = &l_959;
                    int32_t *l_969 = (void*)0;
                    int32_t *l_970 = (void*)0;
                    int32_t *l_971 = &l_903[6][5][2];
                    int32_t *l_972[7] = {&l_937,&l_937,&l_937,&l_937,&l_937,&l_937,&l_937};
                    uint32_t *l_985 = &l_975;
                    int i, j, k;
                    for (p_1157->g_87 = 9; (p_1157->g_87 <= 19); ++p_1157->g_87)
                    { /* block id: 342 */
                        uint32_t l_960 = 4294967295UL;
                        int16_t *l_963 = &l_877;
                        l_876 |= ((+p_29) != (safe_sub_func_uint8_t_u_u(((l_928 != ((((safe_div_func_uint16_t_u_u(0UL, (0x7601F476L && (safe_rshift_func_uint8_t_u_u(((((((l_933 < ((VECTOR(int8_t, 2))(p_1157->g_934.wz)).lo) , (safe_lshift_func_uint8_t_u_u(((l_937 = p_29) ^ ((*l_878) = ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(0L, (-6L))), (safe_sub_func_int16_t_s_s(((VECTOR(int16_t, 8))(l_940.xxxyyyxx)).s3, GROUP_DIVERGE(1, 1))), ((VECTOR(int16_t, 4))((((safe_div_func_int64_t_s_s((safe_add_func_int16_t_s_s((safe_div_func_uint32_t_u_u(((safe_rshift_func_int16_t_s_u((-4L), (l_903[6][5][2] = GROUP_DIVERGE(1, 1)))) > (((safe_div_func_uint16_t_u_u((&p_1157->g_98 != ((safe_div_func_uint64_t_u_u((safe_div_func_uint64_t_u_u((((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 2))(1UL, 0xD9A6L)))).hi , ((*l_907) |= ((VECTOR(uint64_t, 16))(p_1157->g_955.zwyyyxxywzzyzwzy)).s9)), (((safe_div_func_uint32_t_u_u(((GROUP_DIVERGE(2, 1) ^ ((GROUP_DIVERGE(2, 1) , (l_959 = l_958)) , (*l_845))) < l_960), (*p_1157->g_47))) != 4294967289UL) | 0x66B4DE1CL))), p_29)) , (void*)0)), 0x2BE1L)) , 0L) , (*l_845))), p_29)), p_29)), 18446744073709551615UL)) , l_960) , p_29), (-1L), 0x7BE7L, 0x230AL)), 0x3A1DL)).s2)), 5))) || 0xF0L) >= FAKE_DIVERGE(p_1157->local_0_offset, get_local_id(0), 10)) >= l_961[7]) & 0x5FBF105DL), 5))))) & (-9L)) ^ p_1157->g_207.s0) , (void*)0)) != l_962[0][6][6]), 0x2CL)));
                        (*p_1157->g_106) = func_35(p_29, p_29, (p_29 , func_67(l_963, p_1157)), (((((safe_div_func_uint64_t_u_u(p_29, p_29)) , (safe_unary_minus_func_uint16_t_u((l_937 , (((l_967[0] , p_1157->g_599) == (-5L)) , l_960))))) >= GROUP_DIVERGE(0, 1)) , l_937) < 0x1E64E76DL), p_28, p_1157);
                    }
                    --l_975;
                    (*l_968) = (((*l_845) != (safe_sub_func_uint64_t_u_u((safe_div_func_uint32_t_u_u(((p_29 != l_909.sd) ^ (p_1157->g_890.y >= (((VECTOR(int64_t, 8))(p_1157->g_982.sc96d7656)).s3 , (((safe_mul_func_int16_t_s_s((l_903[6][5][2] = ((((*l_985) ^= (p_1157->g_336.x = 4294967295UL)) , (l_878 != (p_29 , (void*)0))) > (safe_lshift_func_int16_t_s_u(((((((((safe_sub_func_uint64_t_u_u((((VECTOR(int32_t, 8))(l_990.wxxzxwzx)).s6 < (safe_add_func_uint64_t_u_u(0UL, p_1157->g_863.x))), 18446744073709551615UL)) == 1UL) == l_903[6][5][2]) <= 0x327EL) >= p_1157->g_993) , (void*)0) != (void*)0) > (*p_28)), l_994)))), 0x325FL)) < (*l_907)) , p_29)))), (-4L))), 1UL))) ^ 0UL);
                }
                for (p_1157->g_215 = 1; (p_1157->g_215 >= 25); p_1157->g_215 = safe_add_func_uint64_t_u_u(p_1157->g_215, 1))
                { /* block id: 359 */
                    (*p_1157->g_106) = p_28;
                    return p_29;
                }
                (*l_845) = (((+(p_29 >= ((safe_mod_func_int8_t_s_s(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))((0x0CBBL || ((VECTOR(uint16_t, 16))(p_1157->g_999.s0dfa17536d2dde62)).sa), p_1157->g_329, (-1L), 0x13L)), ((VECTOR(int8_t, 2))(l_1000.wx)), 0x6CL, 0L)).s4, ((VECTOR(int8_t, 16))(clz(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(p_29, p_29, 0x4EL, 0x57L)), ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(0x16L, (-1L))), 0x55L, 0x26L)), (-5L), ((((void*)0 == &p_1157->g_85) == (*p_1157->g_47)) || (safe_mul_func_uint16_t_u_u(l_1003, (*l_907)))), 1L, 3L, l_1004, 0x3EL, (-1L), 2L)).se823)).xwyyxwxzzzxxyyzy))).se)) <= (*p_1157->g_47)))) == 0x5BL) != p_1157->g_48);
            }
            else
            { /* block id: 364 */
                uint32_t *l_1005[1][9];
                int32_t l_1006 = 0x468B70DCL;
                int32_t l_1058 = (-1L);
                int8_t l_1070 = (-1L);
                int32_t l_1072 = 0x488A540BL;
                VECTOR(int32_t, 16) l_1074 = (VECTOR(int32_t, 16))(0x218AB0A9L, (VECTOR(int32_t, 4))(0x218AB0A9L, (VECTOR(int32_t, 2))(0x218AB0A9L, (-6L)), (-6L)), (-6L), 0x218AB0A9L, (-6L), (VECTOR(int32_t, 2))(0x218AB0A9L, (-6L)), (VECTOR(int32_t, 2))(0x218AB0A9L, (-6L)), 0x218AB0A9L, (-6L), 0x218AB0A9L, (-6L));
                uint32_t l_1102 = 4294967288UL;
                int i, j;
                for (i = 0; i < 1; i++)
                {
                    for (j = 0; j < 9; j++)
                        l_1005[i][j] = &l_958;
                }
lbl_1059:
                l_883 = func_31(l_1005[0][0], l_1006, (((safe_div_func_uint64_t_u_u(p_1157->g_316, (-1L))) , (safe_lshift_func_int8_t_s_s(((~(((*l_845) = (safe_div_func_uint8_t_u_u(((safe_div_func_int8_t_s_s(((&p_1157->g_993 != &l_1003) < ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(0x5CL, 0x37L)).xxxxyxxy)).s3), (safe_mod_func_uint32_t_u_u(((((safe_rshift_func_uint8_t_u_s(249UL, ((VECTOR(int8_t, 2))(p_1157->g_1019.s27)).lo)) == (l_1006 | ((((((((((safe_lshift_func_int8_t_s_s(p_29, p_29)) | l_1022[5][3]) , &p_1157->g_827[3]) != (void*)0) , p_28) != l_1005[0][0]) <= 1L) ^ l_1006) & p_1157->g_326[4][3]) <= p_1157->g_582.w))) , (void*)0) != (void*)0), FAKE_DIVERGE(p_1157->global_1_offset, get_global_id(1), 10))))) <= p_29), (*l_845)))) && 0L)) ^ GROUP_DIVERGE(1, 1)), 2))) == p_1157->g_204.s0), p_1157);
                for (p_1157->g_87 = 9; (p_1157->g_87 < 20); p_1157->g_87++)
                { /* block id: 369 */
                    int64_t *l_1042 = (void*)0;
                    int64_t **l_1041 = &l_1042;
                    int64_t ***l_1040[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                    int16_t *l_1048 = (void*)0;
                    int16_t *l_1049 = (void*)0;
                    int16_t *l_1050 = (void*)0;
                    int16_t *l_1051 = (void*)0;
                    int16_t *l_1052 = (void*)0;
                    int16_t *l_1053 = (void*)0;
                    int32_t l_1054 = (-4L);
                    int32_t l_1067 = (-2L);
                    int32_t l_1068 = 0x4FC76C9BL;
                    int32_t l_1069 = 0x3ABB8F4CL;
                    int32_t l_1071 = 0L;
                    int32_t l_1073[10] = {(-5L),1L,(-5L),(-5L),1L,(-5L),(-5L),1L,(-5L),(-5L)};
                    int32_t l_1077 = 0x41FB3B68L;
                    int i;
                    (*p_1157->g_106) = ((safe_lshift_func_int16_t_s_s(((*l_883) != (p_1157->g_368.y <= l_903[0][3][0])), (safe_add_func_uint32_t_u_u((l_959 = ((VECTOR(uint32_t, 2))(4294967286UL, 1UL)).odd), (l_1006 = ((*l_845) & (safe_rshift_func_uint16_t_u_s((safe_unary_minus_func_uint8_t_u(((void*)0 == l_1032))), 5)))))))) , func_67(((246UL || 0x42L) , (p_1157->g_815.x , l_1033)), p_1157));
                    if ((p_29 <= (((p_29 , (((((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(rotate(((VECTOR(uint16_t, 8))(abs(((VECTOR(int16_t, 8))(mul_hi(((VECTOR(int16_t, 4))(sub_sat(((VECTOR(int16_t, 16))((((VECTOR(int16_t, 4))(((VECTOR(int16_t, 4))(l_1034.s96ca)))).w , (1L || (safe_mul_func_int16_t_s_s(p_29, p_1157->g_863.w)))), ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(l_1037.xwxyxxwywyzywyzy)).sea)), ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 4))((-7L), l_909.s0, 0x3DC1L, 0x2C0FL)))), ((VECTOR(int16_t, 4))(rotate(((VECTOR(int16_t, 16))(sub_sat(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 16))(p_1157->g_1038.xyyxywxzxxyzxzzw)))), ((VECTOR(int16_t, 2))(0x5CFAL, 0L)).xyyxxyyxxyxxyxyy))).sfb51, ((VECTOR(int16_t, 4))(l_1039.yxxy))))).w, 0x4E99L, 6L, (l_959 = ((*l_878) = ((l_928 == (l_1043[7][2] = l_1040[6])) >= (safe_sub_func_uint32_t_u_u((l_1006 && 0xE997L), 0x7B3C60A7L))))), p_1157->g_274.w, 1L, ((VECTOR(int16_t, 2))(0x6A9AL)), 0x69AAL)).s9a35, ((VECTOR(int16_t, 4))(0x7D16L))))).ywwxwyxx, ((VECTOR(int16_t, 8))(0x6B81L)))))))), ((VECTOR(uint16_t, 8))(0x19D9L))))), ((VECTOR(uint16_t, 8))(0UL)))).se || l_1054) & p_29) < l_1054)) , p_29) ^ (-6L))))
                    { /* block id: 376 */
                        int32_t *l_1055 = (void*)0;
                        int32_t *l_1056 = (void*)0;
                        int32_t *l_1057[4];
                        int i;
                        for (i = 0; i < 4; i++)
                            l_1057[i] = &l_876;
                        l_1058 = (l_1006 = ((*l_845) = (*l_845)));
                    }
                    else
                    { /* block id: 380 */
                        int32_t *l_1060 = &p_1157->g_61;
                        int32_t *l_1061 = &l_903[6][5][1];
                        int32_t l_1062 = (-1L);
                        int32_t *l_1063 = (void*)0;
                        int32_t *l_1064 = &l_903[2][6][2];
                        int32_t *l_1065 = (void*)0;
                        int32_t *l_1066[10][8] = {{&l_1058,(void*)0,&l_1058,&l_1058,(void*)0,&l_1058,&l_1058,(void*)0},{&l_1058,(void*)0,&l_1058,&l_1058,(void*)0,&l_1058,&l_1058,(void*)0},{&l_1058,(void*)0,&l_1058,&l_1058,(void*)0,&l_1058,&l_1058,(void*)0},{&l_1058,(void*)0,&l_1058,&l_1058,(void*)0,&l_1058,&l_1058,(void*)0},{&l_1058,(void*)0,&l_1058,&l_1058,(void*)0,&l_1058,&l_1058,(void*)0},{&l_1058,(void*)0,&l_1058,&l_1058,(void*)0,&l_1058,&l_1058,(void*)0},{&l_1058,(void*)0,&l_1058,&l_1058,(void*)0,&l_1058,&l_1058,(void*)0},{&l_1058,(void*)0,&l_1058,&l_1058,(void*)0,&l_1058,&l_1058,(void*)0},{&l_1058,(void*)0,&l_1058,&l_1058,(void*)0,&l_1058,&l_1058,(void*)0},{&l_1058,(void*)0,&l_1058,&l_1058,(void*)0,&l_1058,&l_1058,(void*)0}};
                        int i, j;
                        if (p_1157->g_87)
                            goto lbl_1059;
                        l_1078--;
                    }
                }
                for (l_1078 = 18; (l_1078 >= 45); l_1078 = safe_add_func_uint8_t_u_u(l_1078, 9))
                { /* block id: 387 */
                    uint32_t l_1085 = 0UL;
                    int32_t l_1093 = 0x126564D9L;
                    int32_t l_1094 = (-1L);
                    uint16_t l_1095 = 65529UL;
                    int32_t l_1098[3][7][8] = {{{0x3295C00CL,0x5C048312L,0L,0x00631337L,1L,0x10B860BFL,0x70442CA6L,(-1L)},{0x3295C00CL,0x5C048312L,0L,0x00631337L,1L,0x10B860BFL,0x70442CA6L,(-1L)},{0x3295C00CL,0x5C048312L,0L,0x00631337L,1L,0x10B860BFL,0x70442CA6L,(-1L)},{0x3295C00CL,0x5C048312L,0L,0x00631337L,1L,0x10B860BFL,0x70442CA6L,(-1L)},{0x3295C00CL,0x5C048312L,0L,0x00631337L,1L,0x10B860BFL,0x70442CA6L,(-1L)},{0x3295C00CL,0x5C048312L,0L,0x00631337L,1L,0x10B860BFL,0x70442CA6L,(-1L)},{0x3295C00CL,0x5C048312L,0L,0x00631337L,1L,0x10B860BFL,0x70442CA6L,(-1L)}},{{0x3295C00CL,0x5C048312L,0L,0x00631337L,1L,0x10B860BFL,0x70442CA6L,(-1L)},{0x3295C00CL,0x5C048312L,0L,0x00631337L,1L,0x10B860BFL,0x70442CA6L,(-1L)},{0x3295C00CL,0x5C048312L,0L,0x00631337L,1L,0x10B860BFL,0x70442CA6L,(-1L)},{0x3295C00CL,0x5C048312L,0L,0x00631337L,1L,0x10B860BFL,0x70442CA6L,(-1L)},{0x3295C00CL,0x5C048312L,0L,0x00631337L,1L,0x10B860BFL,0x70442CA6L,(-1L)},{0x3295C00CL,0x5C048312L,0L,0x00631337L,1L,0x10B860BFL,0x70442CA6L,(-1L)},{0x3295C00CL,0x5C048312L,0L,0x00631337L,1L,0x10B860BFL,0x70442CA6L,(-1L)}},{{0x3295C00CL,0x5C048312L,0L,0x00631337L,1L,0x10B860BFL,0x70442CA6L,(-1L)},{0x3295C00CL,0x5C048312L,0L,0x00631337L,1L,0x10B860BFL,0x70442CA6L,(-1L)},{0x3295C00CL,0x5C048312L,0L,0x00631337L,1L,0x10B860BFL,0x70442CA6L,(-1L)},{0x3295C00CL,0x5C048312L,0L,0x00631337L,1L,0x10B860BFL,0x70442CA6L,(-1L)},{0x3295C00CL,0x5C048312L,0L,0x00631337L,1L,0x10B860BFL,0x70442CA6L,(-1L)},{0x3295C00CL,0x5C048312L,0L,0x00631337L,1L,0x10B860BFL,0x70442CA6L,(-1L)},{0x3295C00CL,0x5C048312L,0L,0x00631337L,1L,0x10B860BFL,0x70442CA6L,(-1L)}}};
                    int i, j, k;
                    for (p_1157->g_314 = (-27); (p_1157->g_314 >= (-8)); ++p_1157->g_314)
                    { /* block id: 390 */
                        (*l_845) |= p_29;
                        if (l_1085)
                            break;
                        if (p_29)
                            continue;
                        if ((*l_883))
                            continue;
                    }
                    (*l_845) |= l_1086;
                    for (l_959 = 0; (l_959 == (-30)); --l_959)
                    { /* block id: 399 */
                        int32_t *l_1089 = (void*)0;
                        int32_t *l_1090 = &p_1157->g_61;
                        int32_t *l_1091 = (void*)0;
                        int32_t *l_1092[9][6][4] = {{{&l_1076[0][4][3],&l_876,&l_973[1],&l_837},{&l_1076[0][4][3],&l_876,&l_973[1],&l_837},{&l_1076[0][4][3],&l_876,&l_973[1],&l_837},{&l_1076[0][4][3],&l_876,&l_973[1],&l_837},{&l_1076[0][4][3],&l_876,&l_973[1],&l_837},{&l_1076[0][4][3],&l_876,&l_973[1],&l_837}},{{&l_1076[0][4][3],&l_876,&l_973[1],&l_837},{&l_1076[0][4][3],&l_876,&l_973[1],&l_837},{&l_1076[0][4][3],&l_876,&l_973[1],&l_837},{&l_1076[0][4][3],&l_876,&l_973[1],&l_837},{&l_1076[0][4][3],&l_876,&l_973[1],&l_837},{&l_1076[0][4][3],&l_876,&l_973[1],&l_837}},{{&l_1076[0][4][3],&l_876,&l_973[1],&l_837},{&l_1076[0][4][3],&l_876,&l_973[1],&l_837},{&l_1076[0][4][3],&l_876,&l_973[1],&l_837},{&l_1076[0][4][3],&l_876,&l_973[1],&l_837},{&l_1076[0][4][3],&l_876,&l_973[1],&l_837},{&l_1076[0][4][3],&l_876,&l_973[1],&l_837}},{{&l_1076[0][4][3],&l_876,&l_973[1],&l_837},{&l_1076[0][4][3],&l_876,&l_973[1],&l_837},{&l_1076[0][4][3],&l_876,&l_973[1],&l_837},{&l_1076[0][4][3],&l_876,&l_973[1],&l_837},{&l_1076[0][4][3],&l_876,&l_973[1],&l_837},{&l_1076[0][4][3],&l_876,&l_973[1],&l_837}},{{&l_1076[0][4][3],&l_876,&l_973[1],&l_837},{&l_1076[0][4][3],&l_876,&l_973[1],&l_837},{&l_1076[0][4][3],&l_876,&l_973[1],&l_837},{&l_1076[0][4][3],&l_876,&l_973[1],&l_837},{&l_1076[0][4][3],&l_876,&l_973[1],&l_837},{&l_1076[0][4][3],&l_876,&l_973[1],&l_837}},{{&l_1076[0][4][3],&l_876,&l_973[1],&l_837},{&l_1076[0][4][3],&l_876,&l_973[1],&l_837},{&l_1076[0][4][3],&l_876,&l_973[1],&l_837},{&l_1076[0][4][3],&l_876,&l_973[1],&l_837},{&l_1076[0][4][3],&l_876,&l_973[1],&l_837},{&l_1076[0][4][3],&l_876,&l_973[1],&l_837}},{{&l_1076[0][4][3],&l_876,&l_973[1],&l_837},{&l_1076[0][4][3],&l_876,&l_973[1],&l_837},{&l_1076[0][4][3],&l_876,&l_973[1],&l_837},{&l_1076[0][4][3],&l_876,&l_973[1],&l_837},{&l_1076[0][4][3],&l_876,&l_973[1],&l_837},{&l_1076[0][4][3],&l_876,&l_973[1],&l_837}},{{&l_1076[0][4][3],&l_876,&l_973[1],&l_837},{&l_1076[0][4][3],&l_876,&l_973[1],&l_837},{&l_1076[0][4][3],&l_876,&l_973[1],&l_837},{&l_1076[0][4][3],&l_876,&l_973[1],&l_837},{&l_1076[0][4][3],&l_876,&l_973[1],&l_837},{&l_1076[0][4][3],&l_876,&l_973[1],&l_837}},{{&l_1076[0][4][3],&l_876,&l_973[1],&l_837},{&l_1076[0][4][3],&l_876,&l_973[1],&l_837},{&l_1076[0][4][3],&l_876,&l_973[1],&l_837},{&l_1076[0][4][3],&l_876,&l_973[1],&l_837},{&l_1076[0][4][3],&l_876,&l_973[1],&l_837},{&l_1076[0][4][3],&l_876,&l_973[1],&l_837}}};
                        int32_t l_1100 = 0x1E523F29L;
                        int32_t l_1101 = 0x4CA1D912L;
                        int i, j, k;
                        l_1095--;
                        --l_1102;
                    }
                }
            }
        }
        l_973[1] &= ((safe_lshift_func_uint16_t_u_s(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(p_1157->g_1107.xx)), 0x9A00L, ((VECTOR(uint16_t, 2))(mul_hi(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 8))((*l_845), ((l_837 &= ((*l_1110) = (safe_sub_func_int32_t_s_s((-1L), ((*l_845) &= p_29))))) >= ((VECTOR(uint8_t, 16))(GROUP_DIVERGE(0, 1), (&p_1157->g_669[1] != (void*)0), ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 16))(l_1111.yyyxyyyyyyxyxyxx)).s49)), 246UL, 0x32L, ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 8))(248UL, 1UL, ((VECTOR(uint8_t, 4))(l_1112.s5153)), 254UL, 0UL)))), 247UL, 0xEDL)).s5), ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(l_1113.xy)), 65530UL, 0x674FL)), 0xA771L, 1UL)).s76)).yyxy)).lo)).xyyxyxyxyxyyyyxx)).s65, ((VECTOR(uint16_t, 2))(0x2234L, 65527UL))))), (p_29 | (safe_add_func_uint8_t_u_u(((p_29 <= (safe_lshift_func_uint8_t_u_s(p_29, 7))) | 0UL), p_1157->g_336.y))), 0x2EFAL, 0x849AL, ((VECTOR(uint16_t, 2))(6UL)), ((VECTOR(uint16_t, 4))(0x1D4EL)), 0x9A11L, 0xF0CEL)).s0, 0)) , p_29);
        (*p_1157->g_106) = func_67(l_1118, p_1157);
        (*p_1157->g_106) = (void*)0;
    }
    else
    { /* block id: 412 */
        (*l_845) = (+p_29);
    }
    return p_29;
}


/* ------------------------------------------ */
/* 
 * reads : p_1157->g_295 p_1157->g_47 p_1157->g_48 p_1157->g_187 p_1157->g_314 p_1157->g_274 p_1157->g_329 p_1157->g_336 p_1157->g_337 p_1157->g_59 p_1157->g_207 p_1157->g_73 p_1157->g_368 p_1157->g_204 p_1157->g_61 p_1157->g_203 p_1157->g_326 p_1157->g_181 p_1157->g_278 p_1157->g_106 p_1157->g_316 p_1157->g_83 p_1157->g_64 p_1157->g_273 p_1157->g_631 p_1157->g_526 p_1157->g_520 p_1157->g_433 p_1157->g_654 p_1157->g_668 p_1157->g_586 p_1157->g_494 p_1157->g_671 p_1157->g_674 p_1157->g_503 p_1157->g_582 p_1157->g_8 p_1157->g_779 p_1157->g_215 p_1157->g_815 p_1157->g_96 p_1157->g_98 p_1157->g_827
 * writes: p_1157->g_48 p_1157->g_61 p_1157->g_326 p_1157->g_329 p_1157->g_340 p_1157->g_314 p_1157->g_215 p_1157->g_178 p_1157->g_203 p_1157->g_59 p_1157->g_107 p_1157->g_488 p_1157->g_87 p_1157->g_493 p_1157->g_64 p_1157->g_278 p_1157->g_739 p_1157->g_273
 */
uint32_t * func_31(uint32_t * p_32, uint32_t  p_33, uint16_t  p_34, struct S1 * p_1157)
{ /* block id: 123 */
    VECTOR(uint8_t, 16) l_296 = (VECTOR(uint8_t, 16))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0UL), 0UL), 0UL, 0UL, 0UL, (VECTOR(uint8_t, 2))(0UL, 0UL), (VECTOR(uint8_t, 2))(0UL, 0UL), 0UL, 0UL, 0UL, 0UL);
    VECTOR(uint8_t, 4) l_297 = (VECTOR(uint8_t, 4))(0xB0L, (VECTOR(uint8_t, 2))(0xB0L, 0x10L), 0x10L);
    VECTOR(uint8_t, 8) l_298 = (VECTOR(uint8_t, 8))(0x11L, (VECTOR(uint8_t, 4))(0x11L, (VECTOR(uint8_t, 2))(0x11L, 250UL), 250UL), 250UL, 0x11L, 250UL);
    uint32_t l_299 = 0x6D5E4C8CL;
    int32_t *l_315[8] = {&p_1157->g_316,(void*)0,&p_1157->g_316,&p_1157->g_316,(void*)0,&p_1157->g_316,&p_1157->g_316,(void*)0};
    int32_t l_317 = 0x2DB17B8AL;
    VECTOR(uint32_t, 2) l_318 = (VECTOR(uint32_t, 2))(0xB679DFF1L, 4294967295UL);
    int32_t *l_319 = &p_1157->g_61;
    int32_t *l_320 = (void*)0;
    int32_t *l_321 = (void*)0;
    int32_t *l_322 = (void*)0;
    int32_t *l_323 = (void*)0;
    int32_t *l_324 = (void*)0;
    int32_t *l_325[2];
    int32_t l_369 = 0x740F1733L;
    uint32_t *l_378 = (void*)0;
    uint64_t l_395 = 0x2F5D1299B50DF954L;
    VECTOR(int16_t, 8) l_434 = (VECTOR(int16_t, 8))(0x7077L, (VECTOR(int16_t, 4))(0x7077L, (VECTOR(int16_t, 2))(0x7077L, 0x3CF5L), 0x3CF5L), 0x3CF5L, 0x7077L, 0x3CF5L);
    VECTOR(uint64_t, 8) l_470 = (VECTOR(uint64_t, 8))(0x16501458D5D35A41L, (VECTOR(uint64_t, 4))(0x16501458D5D35A41L, (VECTOR(uint64_t, 2))(0x16501458D5D35A41L, 1UL), 1UL), 1UL, 0x16501458D5D35A41L, 1UL);
    struct S0 *l_473[7][8][4] = {{{&p_1157->g_478[4],&p_1157->g_476,&p_1157->g_482,&p_1157->g_476},{&p_1157->g_478[4],&p_1157->g_476,&p_1157->g_482,&p_1157->g_476},{&p_1157->g_478[4],&p_1157->g_476,&p_1157->g_482,&p_1157->g_476},{&p_1157->g_478[4],&p_1157->g_476,&p_1157->g_482,&p_1157->g_476},{&p_1157->g_478[4],&p_1157->g_476,&p_1157->g_482,&p_1157->g_476},{&p_1157->g_478[4],&p_1157->g_476,&p_1157->g_482,&p_1157->g_476},{&p_1157->g_478[4],&p_1157->g_476,&p_1157->g_482,&p_1157->g_476},{&p_1157->g_478[4],&p_1157->g_476,&p_1157->g_482,&p_1157->g_476}},{{&p_1157->g_478[4],&p_1157->g_476,&p_1157->g_482,&p_1157->g_476},{&p_1157->g_478[4],&p_1157->g_476,&p_1157->g_482,&p_1157->g_476},{&p_1157->g_478[4],&p_1157->g_476,&p_1157->g_482,&p_1157->g_476},{&p_1157->g_478[4],&p_1157->g_476,&p_1157->g_482,&p_1157->g_476},{&p_1157->g_478[4],&p_1157->g_476,&p_1157->g_482,&p_1157->g_476},{&p_1157->g_478[4],&p_1157->g_476,&p_1157->g_482,&p_1157->g_476},{&p_1157->g_478[4],&p_1157->g_476,&p_1157->g_482,&p_1157->g_476},{&p_1157->g_478[4],&p_1157->g_476,&p_1157->g_482,&p_1157->g_476}},{{&p_1157->g_478[4],&p_1157->g_476,&p_1157->g_482,&p_1157->g_476},{&p_1157->g_478[4],&p_1157->g_476,&p_1157->g_482,&p_1157->g_476},{&p_1157->g_478[4],&p_1157->g_476,&p_1157->g_482,&p_1157->g_476},{&p_1157->g_478[4],&p_1157->g_476,&p_1157->g_482,&p_1157->g_476},{&p_1157->g_478[4],&p_1157->g_476,&p_1157->g_482,&p_1157->g_476},{&p_1157->g_478[4],&p_1157->g_476,&p_1157->g_482,&p_1157->g_476},{&p_1157->g_478[4],&p_1157->g_476,&p_1157->g_482,&p_1157->g_476},{&p_1157->g_478[4],&p_1157->g_476,&p_1157->g_482,&p_1157->g_476}},{{&p_1157->g_478[4],&p_1157->g_476,&p_1157->g_482,&p_1157->g_476},{&p_1157->g_478[4],&p_1157->g_476,&p_1157->g_482,&p_1157->g_476},{&p_1157->g_478[4],&p_1157->g_476,&p_1157->g_482,&p_1157->g_476},{&p_1157->g_478[4],&p_1157->g_476,&p_1157->g_482,&p_1157->g_476},{&p_1157->g_478[4],&p_1157->g_476,&p_1157->g_482,&p_1157->g_476},{&p_1157->g_478[4],&p_1157->g_476,&p_1157->g_482,&p_1157->g_476},{&p_1157->g_478[4],&p_1157->g_476,&p_1157->g_482,&p_1157->g_476},{&p_1157->g_478[4],&p_1157->g_476,&p_1157->g_482,&p_1157->g_476}},{{&p_1157->g_478[4],&p_1157->g_476,&p_1157->g_482,&p_1157->g_476},{&p_1157->g_478[4],&p_1157->g_476,&p_1157->g_482,&p_1157->g_476},{&p_1157->g_478[4],&p_1157->g_476,&p_1157->g_482,&p_1157->g_476},{&p_1157->g_478[4],&p_1157->g_476,&p_1157->g_482,&p_1157->g_476},{&p_1157->g_478[4],&p_1157->g_476,&p_1157->g_482,&p_1157->g_476},{&p_1157->g_478[4],&p_1157->g_476,&p_1157->g_482,&p_1157->g_476},{&p_1157->g_478[4],&p_1157->g_476,&p_1157->g_482,&p_1157->g_476},{&p_1157->g_478[4],&p_1157->g_476,&p_1157->g_482,&p_1157->g_476}},{{&p_1157->g_478[4],&p_1157->g_476,&p_1157->g_482,&p_1157->g_476},{&p_1157->g_478[4],&p_1157->g_476,&p_1157->g_482,&p_1157->g_476},{&p_1157->g_478[4],&p_1157->g_476,&p_1157->g_482,&p_1157->g_476},{&p_1157->g_478[4],&p_1157->g_476,&p_1157->g_482,&p_1157->g_476},{&p_1157->g_478[4],&p_1157->g_476,&p_1157->g_482,&p_1157->g_476},{&p_1157->g_478[4],&p_1157->g_476,&p_1157->g_482,&p_1157->g_476},{&p_1157->g_478[4],&p_1157->g_476,&p_1157->g_482,&p_1157->g_476},{&p_1157->g_478[4],&p_1157->g_476,&p_1157->g_482,&p_1157->g_476}},{{&p_1157->g_478[4],&p_1157->g_476,&p_1157->g_482,&p_1157->g_476},{&p_1157->g_478[4],&p_1157->g_476,&p_1157->g_482,&p_1157->g_476},{&p_1157->g_478[4],&p_1157->g_476,&p_1157->g_482,&p_1157->g_476},{&p_1157->g_478[4],&p_1157->g_476,&p_1157->g_482,&p_1157->g_476},{&p_1157->g_478[4],&p_1157->g_476,&p_1157->g_482,&p_1157->g_476},{&p_1157->g_478[4],&p_1157->g_476,&p_1157->g_482,&p_1157->g_476},{&p_1157->g_478[4],&p_1157->g_476,&p_1157->g_482,&p_1157->g_476},{&p_1157->g_478[4],&p_1157->g_476,&p_1157->g_482,&p_1157->g_476}}};
    VECTOR(uint64_t, 4) l_513 = (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 0xED228B0A7379D2CAL), 0xED228B0A7379D2CAL);
    VECTOR(uint64_t, 16) l_514 = (VECTOR(uint64_t, 16))(18446744073709551615UL, (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0xAAD473B58D73A60DL), 0xAAD473B58D73A60DL), 0xAAD473B58D73A60DL, 18446744073709551615UL, 0xAAD473B58D73A60DL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0xAAD473B58D73A60DL), (VECTOR(uint64_t, 2))(18446744073709551615UL, 0xAAD473B58D73A60DL), 18446744073709551615UL, 0xAAD473B58D73A60DL, 18446744073709551615UL, 0xAAD473B58D73A60DL);
    VECTOR(int16_t, 16) l_554 = (VECTOR(int16_t, 16))(0x6C59L, (VECTOR(int16_t, 4))(0x6C59L, (VECTOR(int16_t, 2))(0x6C59L, (-1L)), (-1L)), (-1L), 0x6C59L, (-1L), (VECTOR(int16_t, 2))(0x6C59L, (-1L)), (VECTOR(int16_t, 2))(0x6C59L, (-1L)), 0x6C59L, (-1L), 0x6C59L, (-1L));
    VECTOR(int16_t, 16) l_580 = (VECTOR(int16_t, 16))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x39C1L), 0x39C1L), 0x39C1L, 0L, 0x39C1L, (VECTOR(int16_t, 2))(0L, 0x39C1L), (VECTOR(int16_t, 2))(0L, 0x39C1L), 0L, 0x39C1L, 0L, 0x39C1L);
    VECTOR(int16_t, 2) l_584 = (VECTOR(int16_t, 2))(0x79FFL, 0x2289L);
    VECTOR(int32_t, 8) l_587 = (VECTOR(int32_t, 8))(6L, (VECTOR(int32_t, 4))(6L, (VECTOR(int32_t, 2))(6L, (-6L)), (-6L)), (-6L), 6L, (-6L));
    int64_t l_605 = 0L;
    VECTOR(uint64_t, 8) l_635 = (VECTOR(uint64_t, 8))(0UL, (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 18446744073709551608UL), 18446744073709551608UL), 18446744073709551608UL, 0UL, 18446744073709551608UL);
    VECTOR(uint64_t, 8) l_636 = (VECTOR(uint64_t, 8))(0UL, (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 0UL), 0UL), 0UL, 0UL, 0UL);
    uint16_t l_641 = 65535UL;
    int64_t l_642 = 1L;
    VECTOR(int8_t, 16) l_662 = (VECTOR(int8_t, 16))(0x3AL, (VECTOR(int8_t, 4))(0x3AL, (VECTOR(int8_t, 2))(0x3AL, 3L), 3L), 3L, 0x3AL, 3L, (VECTOR(int8_t, 2))(0x3AL, 3L), (VECTOR(int8_t, 2))(0x3AL, 3L), 0x3AL, 3L, 0x3AL, 3L);
    VECTOR(uint32_t, 16) l_716 = (VECTOR(uint32_t, 16))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 2UL), 2UL), 2UL, 1UL, 2UL, (VECTOR(uint32_t, 2))(1UL, 2UL), (VECTOR(uint32_t, 2))(1UL, 2UL), 1UL, 2UL, 1UL, 2UL);
    VECTOR(uint32_t, 16) l_728 = (VECTOR(uint32_t, 16))(0xEEF30504L, (VECTOR(uint32_t, 4))(0xEEF30504L, (VECTOR(uint32_t, 2))(0xEEF30504L, 0x2BA1F1BBL), 0x2BA1F1BBL), 0x2BA1F1BBL, 0xEEF30504L, 0x2BA1F1BBL, (VECTOR(uint32_t, 2))(0xEEF30504L, 0x2BA1F1BBL), (VECTOR(uint32_t, 2))(0xEEF30504L, 0x2BA1F1BBL), 0xEEF30504L, 0x2BA1F1BBL, 0xEEF30504L, 0x2BA1F1BBL);
    uint32_t l_747 = 4294967295UL;
    VECTOR(int16_t, 16) l_801 = (VECTOR(int16_t, 16))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 9L), 9L), 9L, 1L, 9L, (VECTOR(int16_t, 2))(1L, 9L), (VECTOR(int16_t, 2))(1L, 9L), 1L, 9L, 1L, 9L);
    int64_t l_805 = 0x3B212AF5CC06DF5AL;
    VECTOR(uint16_t, 16) l_825 = (VECTOR(uint16_t, 16))(0x6F15L, (VECTOR(uint16_t, 4))(0x6F15L, (VECTOR(uint16_t, 2))(0x6F15L, 0x18D6L), 0x18D6L), 0x18D6L, 0x6F15L, 0x18D6L, (VECTOR(uint16_t, 2))(0x6F15L, 0x18D6L), (VECTOR(uint16_t, 2))(0x6F15L, 0x18D6L), 0x6F15L, 0x18D6L, 0x6F15L, 0x18D6L);
    VECTOR(int8_t, 2) l_826 = (VECTOR(int8_t, 2))(0x0FL, 0L);
    int16_t l_828 = (-1L);
    uint16_t l_829 = 0x3146L;
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_325[i] = (void*)0;
    if ((p_1157->g_326[3][3] = ((*l_319) = (safe_mul_func_uint8_t_u_u(((VECTOR(uint8_t, 8))(mad_sat(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(p_1157->g_295.s9c0324f8)).s76)).yyxx)).yzxwywxx, ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 8))(1UL, 0UL, ((VECTOR(uint8_t, 2))(l_296.s76)), ((VECTOR(uint8_t, 2))(rotate(((VECTOR(uint8_t, 16))(l_297.wyyzxzxyzxyywxww)).sd6, ((VECTOR(uint8_t, 2))(l_298.s45))))), 0x2DL, 248UL)), ((l_299 |= (*p_1157->g_47)) || (((((((++(*p_1157->g_47)) > ((safe_add_func_int16_t_s_s((p_34 == p_33), (p_34 ^ (!0x69L)))) != (safe_div_func_int64_t_s_s((safe_sub_func_int32_t_s_s(((l_317 = ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(rotate(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(((((safe_lshift_func_uint8_t_u_u(l_296.s5, 4)) , (safe_add_func_int64_t_s_s(((p_32 != (void*)0) & (l_296.s4 <= p_1157->g_187.s4)), p_33))) || l_298.s5) || l_296.sb), p_1157->g_314, 0x333C61FAL, l_297.w, l_296.s0, ((VECTOR(int32_t, 2))(0x4FEF732CL)), 0x77C3AF9FL)).s3061763433546374)), ((VECTOR(int32_t, 16))(0x457DCCA1L))))).hi)).s1) , 0x64F88298L), l_318.x)), p_1157->g_274.w)))) | l_297.w) ^ GROUP_DIVERGE(2, 1)) < FAKE_DIVERGE(p_1157->local_1_offset, get_local_id(1), 10)) | l_298.s0) ^ l_297.z)), 2UL, ((VECTOR(uint8_t, 2))(255UL)), 250UL, 1UL, 0xBBL, 255UL)).hi, ((VECTOR(uint8_t, 8))(0xBEL))))).s7, p_34)))))
    { /* block id: 129 */
        int64_t l_327 = 0x18FDE571D56DF457L;
        int32_t l_328 = 6L;
        VECTOR(uint64_t, 2) l_338 = (VECTOR(uint64_t, 2))(0xC011439A032401F7L, 1UL);
        VECTOR(uint64_t, 8) l_339 = (VECTOR(uint64_t, 8))(0xB41FD80DFD273820L, (VECTOR(uint64_t, 4))(0xB41FD80DFD273820L, (VECTOR(uint64_t, 2))(0xB41FD80DFD273820L, 18446744073709551608UL), 18446744073709551608UL), 18446744073709551608UL, 0xB41FD80DFD273820L, 18446744073709551608UL);
        int16_t *l_348 = &p_1157->g_314;
        int16_t **l_347 = &l_348;
        struct S0 **l_357 = &p_1157->g_181;
        struct S0 **l_358 = &p_1157->g_181;
        int8_t *l_359 = &p_1157->g_215;
        uint8_t *l_360 = (void*)0;
        uint8_t *l_361[4][7] = {{&p_1157->g_326[3][3],&p_1157->g_326[3][3],&p_1157->g_326[6][3],&p_1157->g_326[3][3],(void*)0,&p_1157->g_326[3][3],&p_1157->g_326[6][3]},{&p_1157->g_326[3][3],&p_1157->g_326[3][3],&p_1157->g_326[6][3],&p_1157->g_326[3][3],(void*)0,&p_1157->g_326[3][3],&p_1157->g_326[6][3]},{&p_1157->g_326[3][3],&p_1157->g_326[3][3],&p_1157->g_326[6][3],&p_1157->g_326[3][3],(void*)0,&p_1157->g_326[3][3],&p_1157->g_326[6][3]},{&p_1157->g_326[3][3],&p_1157->g_326[3][3],&p_1157->g_326[6][3],&p_1157->g_326[3][3],(void*)0,&p_1157->g_326[3][3],&p_1157->g_326[6][3]}};
        uint64_t l_362 = 0xF13B8C2D8342A640L;
        int64_t *l_363 = (void*)0;
        int64_t *l_364 = &l_327;
        int32_t l_365[5] = {0x4DB8664FL,0x4DB8664FL,0x4DB8664FL,0x4DB8664FL,0x4DB8664FL};
        int i, j;
        p_1157->g_329++;
        l_365[3] &= ((p_1157->g_187.sa , FAKE_DIVERGE(p_1157->group_0_offset, get_group_id(0), 10)) ^ ((FAKE_DIVERGE(p_1157->local_2_offset, get_local_id(2), 10) < (safe_sub_func_int16_t_s_s(((**l_347) = (safe_rshift_func_uint8_t_u_s(((p_1157->g_340 = (((VECTOR(uint64_t, 2))(hadd(((VECTOR(uint64_t, 8))(upsample(((VECTOR(uint32_t, 8))(p_1157->g_336.xxxxxyxx)), ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 8))(p_1157->g_337.s83b718c6))))))).s75, ((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 16))(add_sat(((VECTOR(uint64_t, 16))(l_338.yyyxyxxxxyyyxxyx)), ((VECTOR(uint64_t, 4))(min(((VECTOR(uint64_t, 2))(18446744073709551612UL, 18446744073709551615UL)).xyxx, ((VECTOR(uint64_t, 4))(l_339.s2100))))).yxxyyzwwyzxwxwwx))).s9b))))).hi , l_325[0])) == &p_1157->g_316), (!((safe_mul_func_uint8_t_u_u((((safe_div_func_int64_t_s_s(((*l_364) = (safe_rshift_func_int8_t_s_u((((p_34 , l_347) == &l_348) && ((p_1157->g_326[4][3] = ((safe_div_func_int32_t_s_s((safe_div_func_uint64_t_u_u((safe_mod_func_uint8_t_u_u((((safe_rshift_func_uint8_t_u_u(p_1157->g_59, 4)) , (((((*l_319) = (((l_358 = l_357) != l_357) != l_338.y)) ^ l_327) && 0xA6BDFB8BL) , l_359)) != &p_1157->g_215), l_338.y)), GROUP_DIVERGE(0, 1))), 0x49B3A9B2L)) > FAKE_DIVERGE(p_1157->group_1_offset, get_group_id(1), 10))) >= l_362)), 3))), p_1157->g_207.sf)) && l_328) && 1UL), p_1157->g_73[0][0][0])) , p_1157->g_59))))), 8UL))) != (*p_1157->g_47)));
        (*l_319) = (FAKE_DIVERGE(p_1157->global_2_offset, get_global_id(2), 10) | (safe_div_func_int8_t_s_s(((-1L) && ((*l_359) = 0x09L)), (l_369 |= (l_339.s3 || ((VECTOR(uint8_t, 16))(l_362, ((VECTOR(uint8_t, 2))(255UL, 3UL)), (((*l_348) = (((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(0x2F4C7EACL, p_33, ((VECTOR(int32_t, 8))(p_1157->g_368.yxyyxyxy)), ((VECTOR(int32_t, 4))(1L, (p_33 , (-5L)), 0x18B0B387L, 1L)), (-1L), 0x6C447134L)).even)).s6 > 0x136DC8B9L)) != GROUP_DIVERGE(2, 1)), p_33, 0x54L, p_1157->g_204.s3, ((VECTOR(uint8_t, 2))(0x6AL)), ((VECTOR(uint8_t, 4))(1UL)), p_1157->g_337.s4, 0x0EL, 0x7FL)).s6)))));
    }
    else
    { /* block id: 142 */
        uint16_t l_379 = 0xB35EL;
        int32_t l_384 = 0x663700F0L;
        uint8_t *l_422[5];
        VECTOR(uint16_t, 16) l_458 = (VECTOR(uint16_t, 16))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 0x5FF3L), 0x5FF3L), 0x5FF3L, 65535UL, 0x5FF3L, (VECTOR(uint16_t, 2))(65535UL, 0x5FF3L), (VECTOR(uint16_t, 2))(65535UL, 0x5FF3L), 65535UL, 0x5FF3L, 65535UL, 0x5FF3L);
        int64_t *l_460 = &p_1157->g_8;
        struct S0 *l_471 = &p_1157->g_472[0];
        VECTOR(uint64_t, 2) l_512 = (VECTOR(uint64_t, 2))(1UL, 18446744073709551615UL);
        VECTOR(uint64_t, 16) l_516 = (VECTOR(uint64_t, 16))(6UL, (VECTOR(uint64_t, 4))(6UL, (VECTOR(uint64_t, 2))(6UL, 8UL), 8UL), 8UL, 6UL, 8UL, (VECTOR(uint64_t, 2))(6UL, 8UL), (VECTOR(uint64_t, 2))(6UL, 8UL), 6UL, 8UL, 6UL, 8UL);
        int32_t l_527 = (-9L);
        int32_t l_528 = 0L;
        int32_t l_531[4][4][2] = {{{0x4D466CFEL,0x4D466CFEL},{0x4D466CFEL,0x4D466CFEL},{0x4D466CFEL,0x4D466CFEL},{0x4D466CFEL,0x4D466CFEL}},{{0x4D466CFEL,0x4D466CFEL},{0x4D466CFEL,0x4D466CFEL},{0x4D466CFEL,0x4D466CFEL},{0x4D466CFEL,0x4D466CFEL}},{{0x4D466CFEL,0x4D466CFEL},{0x4D466CFEL,0x4D466CFEL},{0x4D466CFEL,0x4D466CFEL},{0x4D466CFEL,0x4D466CFEL}},{{0x4D466CFEL,0x4D466CFEL},{0x4D466CFEL,0x4D466CFEL},{0x4D466CFEL,0x4D466CFEL},{0x4D466CFEL,0x4D466CFEL}}};
        VECTOR(int16_t, 4) l_553 = (VECTOR(int16_t, 4))(0x6759L, (VECTOR(int16_t, 2))(0x6759L, 0x166DL), 0x166DL);
        uint64_t l_606 = 3UL;
        int i, j, k;
        for (i = 0; i < 5; i++)
            l_422[i] = &p_1157->g_326[1][6];
        for (p_33 = (-12); (p_33 <= 24); p_33 = safe_add_func_uint8_t_u_u(p_33, 1))
        { /* block id: 145 */
            int16_t *l_374[4][7] = {{(void*)0,&p_1157->g_98,(void*)0,(void*)0,&p_1157->g_98,(void*)0,(void*)0},{(void*)0,&p_1157->g_98,(void*)0,(void*)0,&p_1157->g_98,(void*)0,(void*)0},{(void*)0,&p_1157->g_98,(void*)0,(void*)0,&p_1157->g_98,(void*)0,(void*)0},{(void*)0,&p_1157->g_98,(void*)0,(void*)0,&p_1157->g_98,(void*)0,(void*)0}};
            uint32_t **l_375 = (void*)0;
            uint32_t *l_377[1][9] = {{&p_1157->g_273,&p_1157->g_273,&p_1157->g_273,&p_1157->g_273,&p_1157->g_273,&p_1157->g_273,&p_1157->g_273,&p_1157->g_273,&p_1157->g_273}};
            uint32_t **l_376[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
            int32_t **l_380 = (void*)0;
            int32_t l_388[6][4][9] = {{{0x4814BCF8L,0x4814BCF8L,0L,0x195B50B0L,0x793277A3L,0x6B80FF10L,1L,0x6A41128FL,1L},{0x4814BCF8L,0x4814BCF8L,0L,0x195B50B0L,0x793277A3L,0x6B80FF10L,1L,0x6A41128FL,1L},{0x4814BCF8L,0x4814BCF8L,0L,0x195B50B0L,0x793277A3L,0x6B80FF10L,1L,0x6A41128FL,1L},{0x4814BCF8L,0x4814BCF8L,0L,0x195B50B0L,0x793277A3L,0x6B80FF10L,1L,0x6A41128FL,1L}},{{0x4814BCF8L,0x4814BCF8L,0L,0x195B50B0L,0x793277A3L,0x6B80FF10L,1L,0x6A41128FL,1L},{0x4814BCF8L,0x4814BCF8L,0L,0x195B50B0L,0x793277A3L,0x6B80FF10L,1L,0x6A41128FL,1L},{0x4814BCF8L,0x4814BCF8L,0L,0x195B50B0L,0x793277A3L,0x6B80FF10L,1L,0x6A41128FL,1L},{0x4814BCF8L,0x4814BCF8L,0L,0x195B50B0L,0x793277A3L,0x6B80FF10L,1L,0x6A41128FL,1L}},{{0x4814BCF8L,0x4814BCF8L,0L,0x195B50B0L,0x793277A3L,0x6B80FF10L,1L,0x6A41128FL,1L},{0x4814BCF8L,0x4814BCF8L,0L,0x195B50B0L,0x793277A3L,0x6B80FF10L,1L,0x6A41128FL,1L},{0x4814BCF8L,0x4814BCF8L,0L,0x195B50B0L,0x793277A3L,0x6B80FF10L,1L,0x6A41128FL,1L},{0x4814BCF8L,0x4814BCF8L,0L,0x195B50B0L,0x793277A3L,0x6B80FF10L,1L,0x6A41128FL,1L}},{{0x4814BCF8L,0x4814BCF8L,0L,0x195B50B0L,0x793277A3L,0x6B80FF10L,1L,0x6A41128FL,1L},{0x4814BCF8L,0x4814BCF8L,0L,0x195B50B0L,0x793277A3L,0x6B80FF10L,1L,0x6A41128FL,1L},{0x4814BCF8L,0x4814BCF8L,0L,0x195B50B0L,0x793277A3L,0x6B80FF10L,1L,0x6A41128FL,1L},{0x4814BCF8L,0x4814BCF8L,0L,0x195B50B0L,0x793277A3L,0x6B80FF10L,1L,0x6A41128FL,1L}},{{0x4814BCF8L,0x4814BCF8L,0L,0x195B50B0L,0x793277A3L,0x6B80FF10L,1L,0x6A41128FL,1L},{0x4814BCF8L,0x4814BCF8L,0L,0x195B50B0L,0x793277A3L,0x6B80FF10L,1L,0x6A41128FL,1L},{0x4814BCF8L,0x4814BCF8L,0L,0x195B50B0L,0x793277A3L,0x6B80FF10L,1L,0x6A41128FL,1L},{0x4814BCF8L,0x4814BCF8L,0L,0x195B50B0L,0x793277A3L,0x6B80FF10L,1L,0x6A41128FL,1L}},{{0x4814BCF8L,0x4814BCF8L,0L,0x195B50B0L,0x793277A3L,0x6B80FF10L,1L,0x6A41128FL,1L},{0x4814BCF8L,0x4814BCF8L,0L,0x195B50B0L,0x793277A3L,0x6B80FF10L,1L,0x6A41128FL,1L},{0x4814BCF8L,0x4814BCF8L,0L,0x195B50B0L,0x793277A3L,0x6B80FF10L,1L,0x6A41128FL,1L},{0x4814BCF8L,0x4814BCF8L,0L,0x195B50B0L,0x793277A3L,0x6B80FF10L,1L,0x6A41128FL,1L}}};
            uint8_t l_404[8] = {255UL,255UL,255UL,255UL,255UL,255UL,255UL,255UL};
            uint32_t l_414 = 4294967295UL;
            int64_t *l_419 = (void*)0;
            VECTOR(int16_t, 8) l_435 = (VECTOR(int16_t, 8))(0x3528L, (VECTOR(int16_t, 4))(0x3528L, (VECTOR(int16_t, 2))(0x3528L, (-1L)), (-1L)), (-1L), 0x3528L, (-1L));
            VECTOR(int16_t, 16) l_436 = (VECTOR(int16_t, 16))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 1L), 1L), 1L, 0L, 1L, (VECTOR(int16_t, 2))(0L, 1L), (VECTOR(int16_t, 2))(0L, 1L), 0L, 1L, 0L, 1L);
            uint32_t **l_438 = (void*)0;
            uint32_t **l_439 = &p_1157->g_47;
            VECTOR(int16_t, 2) l_440 = (VECTOR(int16_t, 2))(0x5254L, 0L);
            VECTOR(int16_t, 4) l_441 = (VECTOR(int16_t, 4))(3L, (VECTOR(int16_t, 2))(3L, 0x6450L), 0x6450L);
            int64_t **l_459 = &l_419;
            uint64_t *l_484 = &l_395;
            uint16_t *l_486 = &l_379;
            uint16_t **l_485 = &l_486;
            uint64_t *l_487[9] = {&p_1157->g_488,&p_1157->g_488,&p_1157->g_488,&p_1157->g_488,&p_1157->g_488,&p_1157->g_488,&p_1157->g_488,&p_1157->g_488,&p_1157->g_488};
            VECTOR(uint64_t, 8) l_511 = (VECTOR(uint64_t, 8))(0x545DB00537ED95C9L, (VECTOR(uint64_t, 4))(0x545DB00537ED95C9L, (VECTOR(uint64_t, 2))(0x545DB00537ED95C9L, 0x107A6CC452D5A87FL), 0x107A6CC452D5A87FL), 0x107A6CC452D5A87FL, 0x545DB00537ED95C9L, 0x107A6CC452D5A87FL);
            VECTOR(uint64_t, 2) l_521 = (VECTOR(uint64_t, 2))(18446744073709551606UL, 18446744073709551608UL);
            VECTOR(int16_t, 2) l_555 = (VECTOR(int16_t, 2))(9L, (-8L));
            VECTOR(int16_t, 8) l_585 = (VECTOR(int16_t, 8))((-3L), (VECTOR(int16_t, 4))((-3L), (VECTOR(int16_t, 2))((-3L), 8L), 8L), 8L, (-3L), 8L);
            int8_t l_603 = 0x6EL;
            int i, j, k;
            if ((safe_add_func_uint16_t_u_u(((((p_32 != (l_378 = func_67(l_374[2][1], p_1157))) < l_379) , l_380) == (void*)0), FAKE_DIVERGE(p_1157->global_1_offset, get_global_id(1), 10))))
            { /* block id: 147 */
                int32_t *l_381 = &l_317;
                l_381 = (void*)0;
            }
            else
            { /* block id: 149 */
                int64_t l_385 = (-9L);
                int32_t l_386 = 0x0A6F5BAAL;
                int16_t l_390 = 0x4291L;
                int32_t l_392 = (-3L);
                int32_t l_393 = 0x17A282B3L;
                VECTOR(int32_t, 2) l_394 = (VECTOR(int32_t, 2))(0x26F34E8AL, 0x42FC4F19L);
                VECTOR(uint32_t, 2) l_426 = (VECTOR(uint32_t, 2))(4294967289UL, 0x02719AFEL);
                int i;
                for (p_1157->g_178 = 22; (p_1157->g_178 < 30); p_1157->g_178 = safe_add_func_int16_t_s_s(p_1157->g_178, 5))
                { /* block id: 152 */
                    int16_t l_387 = 1L;
                    int32_t l_389 = 0x04840CD4L;
                    int32_t l_391[8][3][6] = {{{0x21462E12L,0L,0x5F4D5157L,0x63C835C8L,(-10L),(-3L)},{0x21462E12L,0L,0x5F4D5157L,0x63C835C8L,(-10L),(-3L)},{0x21462E12L,0L,0x5F4D5157L,0x63C835C8L,(-10L),(-3L)}},{{0x21462E12L,0L,0x5F4D5157L,0x63C835C8L,(-10L),(-3L)},{0x21462E12L,0L,0x5F4D5157L,0x63C835C8L,(-10L),(-3L)},{0x21462E12L,0L,0x5F4D5157L,0x63C835C8L,(-10L),(-3L)}},{{0x21462E12L,0L,0x5F4D5157L,0x63C835C8L,(-10L),(-3L)},{0x21462E12L,0L,0x5F4D5157L,0x63C835C8L,(-10L),(-3L)},{0x21462E12L,0L,0x5F4D5157L,0x63C835C8L,(-10L),(-3L)}},{{0x21462E12L,0L,0x5F4D5157L,0x63C835C8L,(-10L),(-3L)},{0x21462E12L,0L,0x5F4D5157L,0x63C835C8L,(-10L),(-3L)},{0x21462E12L,0L,0x5F4D5157L,0x63C835C8L,(-10L),(-3L)}},{{0x21462E12L,0L,0x5F4D5157L,0x63C835C8L,(-10L),(-3L)},{0x21462E12L,0L,0x5F4D5157L,0x63C835C8L,(-10L),(-3L)},{0x21462E12L,0L,0x5F4D5157L,0x63C835C8L,(-10L),(-3L)}},{{0x21462E12L,0L,0x5F4D5157L,0x63C835C8L,(-10L),(-3L)},{0x21462E12L,0L,0x5F4D5157L,0x63C835C8L,(-10L),(-3L)},{0x21462E12L,0L,0x5F4D5157L,0x63C835C8L,(-10L),(-3L)}},{{0x21462E12L,0L,0x5F4D5157L,0x63C835C8L,(-10L),(-3L)},{0x21462E12L,0L,0x5F4D5157L,0x63C835C8L,(-10L),(-3L)},{0x21462E12L,0L,0x5F4D5157L,0x63C835C8L,(-10L),(-3L)}},{{0x21462E12L,0L,0x5F4D5157L,0x63C835C8L,(-10L),(-3L)},{0x21462E12L,0L,0x5F4D5157L,0x63C835C8L,(-10L),(-3L)},{0x21462E12L,0L,0x5F4D5157L,0x63C835C8L,(-10L),(-3L)}}};
                    int i, j, k;
                    --l_395;
                    return &p_1157->g_64;
                }
                if (p_33)
                    continue;
                for (l_385 = (-19); (l_385 > 20); l_385++)
                { /* block id: 159 */
                    return &p_1157->g_48;
                }
                for (p_1157->g_329 = 13; (p_1157->g_329 != 54); p_1157->g_329 = safe_add_func_int16_t_s_s(p_1157->g_329, 2))
                { /* block id: 164 */
                    int32_t l_407 = 0x1C070A90L;
                    int32_t l_408 = 0x45D7CD69L;
                    int64_t *l_421 = (void*)0;
                    uint8_t *l_423[4];
                    int i;
                    for (i = 0; i < 4; i++)
                        l_423[i] = (void*)0;
                    for (l_390 = (-26); (l_390 > 22); l_390 = safe_add_func_int8_t_s_s(l_390, 6))
                    { /* block id: 167 */
                        uint32_t l_409 = 0x91FFC9CEL;
                        int64_t **l_420[1][5][2];
                        int i, j, k;
                        for (i = 0; i < 1; i++)
                        {
                            for (j = 0; j < 5; j++)
                            {
                                for (k = 0; k < 2; k++)
                                    l_420[i][j][k] = (void*)0;
                            }
                        }
                        (*l_319) ^= 0x516B7F8CL;
                        --l_404[6];
                        l_409--;
                        l_394.x = (safe_lshift_func_int16_t_s_s((p_1157->g_203.x &= p_34), (((1L | GROUP_DIVERGE(0, 1)) & l_414) <= (safe_mod_func_int16_t_s_s((safe_add_func_uint32_t_u_u((((l_421 = l_419) == &p_1157->g_8) | (GROUP_DIVERGE(0, 1) | p_1157->g_326[3][3])), ((((l_422[3] != l_423[1]) == (((VECTOR(uint32_t, 4))(add_sat(((VECTOR(uint32_t, 8))(min(((VECTOR(uint32_t, 2))(0xDED971FCL, 5UL)).xyyyxyxx, (uint32_t)(--(*p_32))))).hi, ((VECTOR(uint32_t, 2))(l_426.yx)).xyxx))).y , (((((safe_rshift_func_uint8_t_u_u(((safe_lshift_func_uint16_t_u_s((&l_390 == &p_1157->g_59), 1)) > l_379), 7)) , p_1157->g_181) == p_1157->g_181) | p_1157->g_278.s7) & p_1157->g_368.x))) , 4UL) || p_33))), (-5L))))));
                    }
                    return &p_1157->g_48;
                }
            }
            (*p_1157->g_106) = (((safe_sub_func_int16_t_s_s((l_384 ^= p_34), ((p_1157->g_203.y = ((VECTOR(int16_t, 2))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 2),((VECTOR(int16_t, 4))(mad_sat(((VECTOR(int16_t, 8))(p_1157->g_433.xxxxyxxy)).odd, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(l_434.s71)), ((VECTOR(int16_t, 2))(0x0BECL, (-1L))), ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(clz(((VECTOR(int16_t, 2))(0x2257L, 0x1683L)).yxxy))), ((VECTOR(int16_t, 4))(l_435.s2243)))).s17)).xyyyxxxx)), ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(l_436.s1f)))), 0x7705L, 0x3D6FL)).sd80a)), ((VECTOR(int16_t, 8))(0x18D8L, ((VECTOR(int16_t, 2))(p_1157->g_437.zy)), (((*l_439) = &p_1157->g_48) != &p_1157->g_64), (-8L), (-9L), 0x40ADL, (-1L))).even))).even, ((VECTOR(int16_t, 4))(7L, ((VECTOR(int16_t, 2))(l_440.yy)), 7L)).hi, ((VECTOR(int16_t, 2))(l_441.yz))))).lo) == (p_1157->g_59 ^= (FAKE_DIVERGE(p_1157->global_0_offset, get_global_id(0), 10) <= (0L >= ((safe_add_func_uint8_t_u_u((safe_add_func_int64_t_s_s((((safe_mul_func_int8_t_s_s((safe_div_func_int16_t_s_s(0x155BL, p_1157->g_207.s8)), (p_33 ^ (safe_rshift_func_uint16_t_u_u((safe_mul_func_uint8_t_u_u(0xACL, (safe_mul_func_uint16_t_u_u((*l_319), p_34)))), p_1157->g_337.s8))))) || 0x505DF28146809B2CL) ^ p_33), p_1157->g_274.y)), p_34)) , p_33))))))) , 0x5CD0281A9443F3A4L) , &p_1157->g_61);
            (*p_1157->g_106) = &l_317;
            if ((safe_mod_func_int8_t_s_s(((((VECTOR(uint16_t, 16))(min(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 8))(l_458.s01055b25)))).s3144137372443276, (uint16_t)(((*l_459) = l_419) != l_460)))).s2 != (safe_lshift_func_uint16_t_u_s((safe_mod_func_int8_t_s_s((p_34 == ((p_1157->g_488 = (safe_add_func_int16_t_s_s(((safe_mul_func_uint8_t_u_u(((!(safe_unary_minus_func_int64_t_s(0x09AA1FCB58647B4BL))) == ((VECTOR(uint64_t, 16))(l_470.s1560026112313373)).s4), l_384)) < (!(((*l_484) = (l_471 != l_473[2][6][1])) < ((((*l_485) = &p_34) != &p_34) , l_458.sb)))), 0x2DF4L))) , 0x84E17A97L)), p_34)), p_1157->g_316))) , p_1157->g_83.s7), (-6L))))
            { /* block id: 189 */
                VECTOR(uint64_t, 8) l_515 = (VECTOR(uint64_t, 8))(0UL, (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 0UL), 0UL), 0UL, 0UL, 0UL);
                int16_t l_529 = 0x05BFL;
                int32_t l_530 = 0x3C075D23L;
                int32_t l_532 = 0x5E90D799L;
                uint32_t l_533 = 0x555FF056L;
                int i;
                for (p_1157->g_314 = (-19); (p_1157->g_314 >= (-14)); p_1157->g_314++)
                { /* block id: 192 */
                    VECTOR(int64_t, 2) l_504 = (VECTOR(int64_t, 2))(0x7198643AC52178CFL, 0x78DE4649B7CA2461L);
                    int i;
                    for (p_1157->g_87 = 0; (p_1157->g_87 == 5); ++p_1157->g_87)
                    { /* block id: 195 */
                        return &p_1157->g_64;
                    }
                    p_1157->g_493 = ((*p_1157->g_106) = &l_317);
                    (*l_319) = ((VECTOR(int32_t, 4))(sub_sat(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(min(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(p_1157->g_494.xw)), 0L, (safe_sub_func_int32_t_s_s((safe_mod_func_int8_t_s_s((safe_rshift_func_uint16_t_u_s((l_384 = ((p_1157->g_85 && (safe_rshift_func_int8_t_s_u(0x4DL, 6))) ^ ((((-2L) > ((VECTOR(int64_t, 4))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 4),((VECTOR(int64_t, 16))(safe_clamp_func(VECTOR(int64_t, 16),VECTOR(int64_t, 16),((VECTOR(int64_t, 16))(p_1157->g_503.wxxzyyzzyywzyyzy)), ((VECTOR(int64_t, 2))(l_504.yx)).yxyyyyyxxyyyxyxy, ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(sub_sat(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))((((((VECTOR(int16_t, 2))(0x4B7FL, 0x2750L)).hi , 0x46E344F2L) <= l_458.se) == (safe_div_func_int8_t_s_s((p_1157->g_215 = (~((safe_lshift_func_uint8_t_u_s(p_1157->g_73[0][0][2], (safe_div_func_uint64_t_u_u(FAKE_DIVERGE(p_1157->local_2_offset, get_local_id(2), 10), ((VECTOR(uint64_t, 2))(mul_hi(((VECTOR(uint64_t, 16))(mad_sat(((VECTOR(uint64_t, 16))(min(((VECTOR(uint64_t, 2))(0UL, 0xF84B322A7C715764L)).yyyyxyxxyyyxyxyy, ((VECTOR(uint64_t, 2))(0UL, 0x09C5C36CDD41BF98L)).xyyxyxxxxyyxxxyy))), ((VECTOR(uint64_t, 8))(l_511.s70414016)).s3202276313773550, ((VECTOR(uint64_t, 4))(hadd(((VECTOR(uint64_t, 4))(l_512.yyyx)), ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))(mad_hi(((VECTOR(uint64_t, 4))(l_513.wxxw)).yzwxxzxx, ((VECTOR(uint64_t, 16))(l_514.se32fac9165706507)).hi, ((VECTOR(uint64_t, 4))(l_515.s0132)).wzyxxzyw))).s3110704620772305)).odd)).hi))).wywxyzyxyzxxwzyz))).s57, ((VECTOR(uint64_t, 16))(l_516.s76762436358bc7a6)).sfe))).even)))) , (safe_lshift_func_uint8_t_u_s(((VECTOR(uint8_t, 8))(safe_clamp_func(VECTOR(uint8_t, 8),VECTOR(uint8_t, 8),((VECTOR(uint8_t, 2))(abs_diff(((VECTOR(uint8_t, 16))(((safe_unary_minus_func_int8_t_s((((VECTOR(uint64_t, 2))(mul_hi(((VECTOR(uint64_t, 2))(p_1157->g_520.yx)), ((VECTOR(uint64_t, 4))(0xEB49F9D1D4AC0E39L, ((VECTOR(uint64_t, 2))(l_521.yy)), 0x67233D03FA8DEF46L)).hi))).lo , (safe_lshift_func_uint16_t_u_s(p_1157->g_187.s0, 7))))) & ((safe_add_func_int64_t_s_s((p_1157->g_98 , (((p_34 , 0x6D509A4B8EA12B00L) || p_1157->g_209) < p_33)), p_34)) && p_1157->g_209)), 0xD7L, p_1157->g_96[2], ((VECTOR(uint8_t, 4))(0x45L)), 1UL, p_1157->g_203.w, 254UL, ((VECTOR(uint8_t, 4))(0xD7L)), 0xD6L, 0x18L)).s66, ((VECTOR(uint8_t, 2))(0UL))))).yxxxyxyx, ((VECTOR(uint8_t, 8))(255UL)), ((VECTOR(uint8_t, 8))(0x6FL))))).s0, 1))))), 0x5EL))), ((VECTOR(int64_t, 2))((-1L))), 0x6E9811E0303D0C3FL)).wwyywyywwxzywwzy)).s33, ((VECTOR(int64_t, 2))((-7L)))))), 0x150DB4FE6EAE69AAL, 0x606B92AD24F58085L)))).xyyzxxwx)).s2205625353277707))).s0451, ((VECTOR(int64_t, 4))((-6L))), ((VECTOR(int64_t, 4))((-10L)))))).w) > p_1157->g_520.x) , p_1157->g_59))), p_34)), p_1157->g_98)), p_1157->g_526)), ((VECTOR(int32_t, 4))(0x3465FF93L)))).even, ((VECTOR(int32_t, 4))((-1L)))))).hi)).xxxxxxxyyyxxxxxy)).s9bfc, ((VECTOR(int32_t, 4))(0x22CAC16CL))))).z;
                }
                l_533++;
            }
            else
            { /* block id: 205 */
                uint16_t l_538 = 0xD292L;
                int32_t l_539 = 0L;
                VECTOR(int64_t, 16) l_544 = (VECTOR(int64_t, 16))(0x320DFD779D4389A4L, (VECTOR(int64_t, 4))(0x320DFD779D4389A4L, (VECTOR(int64_t, 2))(0x320DFD779D4389A4L, 0x77F968A21E740168L), 0x77F968A21E740168L), 0x77F968A21E740168L, 0x320DFD779D4389A4L, 0x77F968A21E740168L, (VECTOR(int64_t, 2))(0x320DFD779D4389A4L, 0x77F968A21E740168L), (VECTOR(int64_t, 2))(0x320DFD779D4389A4L, 0x77F968A21E740168L), 0x320DFD779D4389A4L, 0x77F968A21E740168L, 0x320DFD779D4389A4L, 0x77F968A21E740168L);
                int16_t **l_575 = &l_374[2][1];
                int8_t *l_598[2][5][4] = {{{(void*)0,(void*)0,&p_1157->g_215,(void*)0},{(void*)0,(void*)0,&p_1157->g_215,(void*)0},{(void*)0,(void*)0,&p_1157->g_215,(void*)0},{(void*)0,(void*)0,&p_1157->g_215,(void*)0},{(void*)0,(void*)0,&p_1157->g_215,(void*)0}},{{(void*)0,(void*)0,&p_1157->g_215,(void*)0},{(void*)0,(void*)0,&p_1157->g_215,(void*)0},{(void*)0,(void*)0,&p_1157->g_215,(void*)0},{(void*)0,(void*)0,&p_1157->g_215,(void*)0},{(void*)0,(void*)0,&p_1157->g_215,(void*)0}}};
                int32_t l_600 = 0L;
                VECTOR(int32_t, 2) l_601 = (VECTOR(int32_t, 2))(7L, 0x0142D2E9L);
                int32_t l_602 = 0x551CF600L;
                int32_t l_604[7];
                int i, j, k;
                for (i = 0; i < 7; i++)
                    l_604[i] = 0x287883E5L;
                for (l_384 = 0; (l_384 == (-8)); l_384 = safe_sub_func_uint64_t_u_u(l_384, 2))
                { /* block id: 208 */
                    int8_t *l_558 = (void*)0;
                    int8_t *l_559 = (void*)0;
                    int8_t *l_560 = (void*)0;
                    int8_t *l_561 = (void*)0;
                    int64_t ***l_562 = &l_459;
                    int64_t **l_566 = &l_419;
                    int64_t ***l_565 = &l_566;
                    int64_t ***l_567 = (void*)0;
                    int64_t **l_569 = &l_460;
                    int64_t ***l_568 = &l_569;
                    VECTOR(uint16_t, 2) l_572 = (VECTOR(uint16_t, 2))(1UL, 5UL);
                    int i;
                    if (l_538)
                    { /* block id: 209 */
                        l_528 = (!p_33);
                    }
                    else
                    { /* block id: 211 */
                        l_539 &= ((VECTOR(int32_t, 4))(0x1BD4E14EL, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(clz(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))((-1L), 0L)), 0x24BC97C1L, 1L)).odd))))))), 4L)).z;
                    }
                    if (p_34)
                        continue;
                    (*p_1157->g_106) = p_32;
                    (*l_319) = (safe_rshift_func_uint8_t_u_u((safe_mod_func_int64_t_s_s(p_1157->g_203.w, ((VECTOR(int64_t, 8))(safe_clamp_func(VECTOR(int64_t, 8),int64_t,((VECTOR(int64_t, 16))(rotate(((VECTOR(int64_t, 2))(5L, 9L)).yyyxyyxxxyxyxyyy, ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 4))(l_544.s2cf3)))).wywxyzxzyywxyxwz))).even, (int64_t)(l_544.s8 || ((FAKE_DIVERGE(p_1157->global_2_offset, get_global_id(2), 10) & (safe_rshift_func_int8_t_s_u(p_34, 1))) != (((safe_mul_func_int8_t_s_s((safe_add_func_int64_t_s_s(p_1157->g_64, ((((((VECTOR(int16_t, 8))(add_sat(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(add_sat(((VECTOR(int16_t, 2))(max(((VECTOR(int16_t, 4))(l_553.zzxy)).lo, ((VECTOR(int16_t, 2))(0x3335L, 4L))))), ((VECTOR(int16_t, 2))(l_554.sfd))))), 1L, ((VECTOR(int16_t, 2))((-7L), (-1L))), (((VECTOR(int16_t, 2))(l_555.yx)).even <= ((safe_add_func_int8_t_s_s((l_527 ^= p_33), ((VECTOR(uint8_t, 4))(0x45L, 7UL, 0xBFL, 6UL)).w)) , (1UL >= (((((*l_562) = (void*)0) != ((*l_568) = ((*l_565) = (((**l_439)++) , (void*)0)))) | (((safe_sub_func_int64_t_s_s((((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 2))(l_572.xx)))).yyyxxyyyxyyyxxyx)).s1 > p_1157->g_326[3][0]), p_1157->g_336.y)) < p_1157->g_329) >= 255UL)) > p_33)))), 1L, 0L)), ((VECTOR(int16_t, 8))(1L))))).s6 > p_33) ^ 0x7159FEB1E5E5D7BFL) | 0x229CD5BA2CBA8FE1L) , p_1157->g_295.s5))), p_1157->g_209)) != 0xC704L) && 0x68A7A0388E9DDF81L))), (int64_t)0x7D37B838991B0F2BL))).s7)), 7));
                }
                l_539 &= (safe_mod_func_uint16_t_u_u(((&p_1157->g_59 != ((*l_575) = (void*)0)) >= (safe_sub_func_int16_t_s_s(((-2L) < (safe_sub_func_int16_t_s_s(((VECTOR(int16_t, 16))(rotate(((VECTOR(int16_t, 8))(mul_hi(((VECTOR(int16_t, 2))(add_sat(((VECTOR(int16_t, 4))(l_580.s113a)).hi, ((VECTOR(int16_t, 4))(p_1157->g_581.s5776)).odd))).xyxyxxyy, ((VECTOR(int16_t, 4))(clz(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 8),((VECTOR(int16_t, 2))(((VECTOR(int16_t, 4))(p_1157->g_582.wxyz)).hi)).xxxxyyxy, ((VECTOR(int16_t, 8))(mad_sat(((VECTOR(int16_t, 8))(clz(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(p_1157->g_583.s3253356540750555)).s94)).xyyyyxyx))), ((VECTOR(int16_t, 2))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 2),((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(l_584.yx)).xyyy)).xyzxywwz)).s30, ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(l_585.s51161545)).s7216625253670366)).sa0)), ((VECTOR(int16_t, 2))(min(((VECTOR(int16_t, 4))(p_1157->g_586.s6737)).even, ((VECTOR(int16_t, 8))(max(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(p_1157->g_316, (((((VECTOR(int32_t, 16))(l_587.s6347631342760250)).s8 ^ 0x41F25F94L) == (safe_rshift_func_uint16_t_u_u(((**l_485) = (((l_528 = (safe_add_func_uint32_t_u_u((*p_1157->g_47), (((void*)0 != l_473[5][4][0]) || (safe_mul_func_uint8_t_u_u(((safe_div_func_int16_t_s_s((((safe_mod_func_uint8_t_u_u(((l_544.s5 & 0x4ABE37C863A7C633L) ^ 0UL), 4L)) >= l_511.s0) > l_384), p_1157->g_85)) ^ p_1157->g_96[2]), p_1157->g_314)))))) , 0x0B20EFA0F8E9DC1FL) || p_1157->g_336.x)), p_1157->g_83.s3))) > 0xF3L), ((VECTOR(int16_t, 4))(9L)), 7L, (-1L))).s6116010004762160)).even, (int16_t)p_1157->g_73[0][0][2]))).s52)))))).xxyyxyxx, ((VECTOR(int16_t, 8))(0x386FL))))), ((VECTOR(int16_t, 8))(2L))))).odd))))).wwzzwyxx))).s3333512065467211, ((VECTOR(int16_t, 16))(4L))))).s2, 5L))), p_33))), 6UL));
                l_606--;
            }
        }
        for (p_1157->g_64 = (-22); (p_1157->g_64 < 4); p_1157->g_64++)
        { /* block id: 232 */
            (*p_1157->g_106) = (void*)0;
        }
    }
    if (p_34)
    { /* block id: 236 */
        uint32_t l_622 = 0x20E99AFFL;
        VECTOR(uint16_t, 16) l_632 = (VECTOR(uint16_t, 16))(0xB7EFL, (VECTOR(uint16_t, 4))(0xB7EFL, (VECTOR(uint16_t, 2))(0xB7EFL, 0x7A9EL), 0x7A9EL), 0x7A9EL, 0xB7EFL, 0x7A9EL, (VECTOR(uint16_t, 2))(0xB7EFL, 0x7A9EL), (VECTOR(uint16_t, 2))(0xB7EFL, 0x7A9EL), 0xB7EFL, 0x7A9EL, 0xB7EFL, 0x7A9EL);
        uint64_t *l_637[5];
        int32_t l_638 = 0L;
        uint64_t l_639 = 18446744073709551615UL;
        uint16_t l_640[1];
        int32_t *l_643 = &p_1157->g_316;
        int16_t *l_644[8] = {&p_1157->g_314,(void*)0,&p_1157->g_314,&p_1157->g_314,(void*)0,&p_1157->g_314,&p_1157->g_314,(void*)0};
        VECTOR(int32_t, 8) l_645 = (VECTOR(int32_t, 8))(9L, (VECTOR(int32_t, 4))(9L, (VECTOR(int32_t, 2))(9L, 0L), 0L), 0L, 9L, 0L);
        int32_t l_646 = 0x7C5E23BAL;
        VECTOR(int16_t, 8) l_653 = (VECTOR(int16_t, 8))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x1537L), 0x1537L), 0x1537L, (-1L), 0x1537L);
        uint16_t *l_659 = &p_1157->g_329;
        VECTOR(int8_t, 8) l_663 = (VECTOR(int8_t, 8))(0x47L, (VECTOR(int8_t, 4))(0x47L, (VECTOR(int8_t, 2))(0x47L, (-9L)), (-9L)), (-9L), 0x47L, (-9L));
        uint32_t **l_670 = &l_378;
        int8_t l_678 = 0x46L;
        uint8_t l_721 = 0x73L;
        int i;
        for (i = 0; i < 5; i++)
            l_637[i] = &p_1157->g_526;
        for (i = 0; i < 1; i++)
            l_640[i] = 65531UL;
        (*p_1157->g_106) = (((((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(0x1CE3E618L, 0x440339A9L, 0x50BCB462L, (!(l_646 ^= (safe_sub_func_int16_t_s_s((l_645.s0 |= (safe_unary_minus_func_uint8_t_u(((safe_mul_func_uint16_t_u_u((p_1157->g_273 != (((safe_mul_func_int16_t_s_s((((safe_add_func_int16_t_s_s(((safe_add_func_uint32_t_u_u(l_622, (*p_1157->g_47))) , (0x8DCD0C50L || (safe_div_func_int16_t_s_s(((safe_mul_func_int8_t_s_s((((safe_mod_func_uint16_t_u_u((((0x0F14989774FF12C2L >= (((((safe_rshift_func_uint16_t_u_u((p_1157->g_329 != ((((p_1157->g_368.x && ((l_622 , ((((VECTOR(uint16_t, 8))(abs(((VECTOR(uint16_t, 8))(1UL, ((VECTOR(uint16_t, 4))(mad_sat(((VECTOR(uint16_t, 4))(p_1157->g_631.yzzx)), ((VECTOR(uint16_t, 2))(abs(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 8))(safe_clamp_func(VECTOR(uint16_t, 8),uint16_t,((VECTOR(uint16_t, 2))(rotate(((VECTOR(uint16_t, 4))(l_632.sc5b3)).odd, ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(0xF2E6L, 0xCC6FL)).yxyyxxyxxyyxxyxx)).s49))).xyyyxxxy, (uint16_t)(safe_rshift_func_uint16_t_u_s((((VECTOR(uint64_t, 8))(hadd(((VECTOR(uint64_t, 2))(l_635.s76)).xyyxyxxx, ((VECTOR(uint64_t, 8))(safe_clamp_func(VECTOR(uint64_t, 8),VECTOR(uint64_t, 8),((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 8))(max(((VECTOR(uint64_t, 8))(l_636.s25663344)), (uint64_t)(l_638 = (+((((*l_319) = p_34) & l_632.sb) , 0x22AF6BB176827158L)))))).s07)).xyxyxyyx, ((VECTOR(uint64_t, 8))(0x2FC2B8FBEFC4C293L)), ((VECTOR(uint64_t, 8))(18446744073709551613UL)))))))).s0 != p_1157->g_295.s6), p_33)), (uint16_t)p_1157->g_64))).s46))))))).xyxx, ((VECTOR(uint16_t, 4))(4UL))))).x, 4UL, 0xB827L, 65533UL, 0x7F1FL, 0UL, 0x79B4L))))).s5 != 9UL) , 0UL)) , p_33)) >= 9L) , 0UL) , p_34)), l_632.s0)) , p_1157->g_526) , p_34) > p_33) && l_639)) <= p_1157->g_520.x) ^ p_33), l_640[0])) >= p_33) && l_641), p_33)) & FAKE_DIVERGE(p_1157->local_2_offset, get_local_id(2), 10)), l_642)))), p_1157->g_631.w)) , p_1157->g_520.x) || p_1157->g_433.y), p_1157->g_329)) , l_643) != &p_1157->g_316)), p_1157->g_316)) < 1UL)))), p_1157->g_73[0][0][2])))), ((VECTOR(int32_t, 8))((-3L))), ((VECTOR(int32_t, 4))(0L)))).s73)))))).even | (-1L)) & p_33) , (void*)0);
        l_645.s1 &= ((*l_319) = (safe_mod_func_uint16_t_u_u((GROUP_DIVERGE(1, 1) & p_33), p_34)));
        if ((&p_1157->g_47 == (((safe_add_func_int64_t_s_s((((safe_rshift_func_int16_t_s_u(((VECTOR(int16_t, 16))(min(((VECTOR(int16_t, 2))(l_653.s54)).xxyyyxxyyxyyyyxy, ((VECTOR(int16_t, 8))(p_1157->g_654.s00724164)).s1137775672570464))).s5, (safe_rshift_func_int8_t_s_s(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))((safe_lshift_func_uint16_t_u_u((--(*l_659)), 3)), ((VECTOR(int8_t, 4))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 4),((VECTOR(int8_t, 8))(rotate(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 2))(l_662.s18)))).xxxxyxyy, ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(safe_clamp_func(VECTOR(int8_t, 4),int8_t,((VECTOR(int8_t, 8))(l_663.s21740277)).odd, (int8_t)(((safe_rshift_func_int8_t_s_s((safe_lshift_func_uint16_t_u_s((l_645.s3 , p_1157->g_278.s3), (((p_1157->g_668[2][6] == (((void*)0 != &p_34) , l_670)) , (0x83870627L || ((*l_319) |= ((p_1157->g_586.s7 && p_34) , l_663.s0)))) | 0x246CL))), 4)) , l_646) , 0x57L), (int8_t)(-3L)))).zywyzzzwxyxywxzx)).sd7)).xxyyxyxx))).hi, ((VECTOR(int8_t, 4))((-5L))), ((VECTOR(int8_t, 4))(6L))))), ((VECTOR(int8_t, 2))(5L)), (-7L))).s26)), ((VECTOR(int8_t, 2))(0L)), 1L, p_1157->g_494.x, 3L, 1L)).s2, 0)))) , p_34) && GROUP_DIVERGE(2, 1)), p_1157->g_631.w)) <= 0x22AFL) , (void*)0)))
        { /* block id: 246 */
            return &p_1157->g_48;
        }
        else
        { /* block id: 248 */
            int64_t l_675[5][5] = {{(-9L),7L,(-9L),(-9L),7L},{(-9L),7L,(-9L),(-9L),7L},{(-9L),7L,(-9L),(-9L),7L},{(-9L),7L,(-9L),(-9L),7L},{(-9L),7L,(-9L),(-9L),7L}};
            int32_t l_696 = 6L;
            VECTOR(uint16_t, 8) l_712 = (VECTOR(uint16_t, 8))(3UL, (VECTOR(uint16_t, 4))(3UL, (VECTOR(uint16_t, 2))(3UL, 4UL), 4UL), 4UL, 3UL, 4UL);
            uint32_t **l_736 = (void*)0;
            uint32_t l_741 = 0x1277A2BFL;
            int i, j;
            if ((p_1157->g_671 == &l_659))
            { /* block id: 249 */
                int16_t l_679 = 0x07DAL;
                uint32_t l_698 = 0UL;
                int32_t l_708 = 1L;
                int32_t l_709 = 0x165AA05EL;
                uint32_t **l_735[3];
                int i;
                for (i = 0; i < 3; i++)
                    l_735[i] = &p_1157->g_669[0];
                l_675[4][4] = ((VECTOR(int32_t, 16))(p_1157->g_674.wxxzzzwxzxwyxxyx)).s3;
                l_645.s6 = p_34;
                for (l_369 = 0; (l_369 >= (-3)); --l_369)
                { /* block id: 254 */
                    int32_t l_694 = 0x55B38103L;
                    uint32_t **l_722 = (void*)0;
                    l_678 = (-9L);
                    if (l_679)
                        continue;
                    if (p_34)
                    { /* block id: 257 */
                        int8_t *l_695[6][4] = {{&p_1157->g_215,&p_1157->g_215,&p_1157->g_215,&p_1157->g_215},{&p_1157->g_215,&p_1157->g_215,&p_1157->g_215,&p_1157->g_215},{&p_1157->g_215,&p_1157->g_215,&p_1157->g_215,&p_1157->g_215},{&p_1157->g_215,&p_1157->g_215,&p_1157->g_215,&p_1157->g_215},{&p_1157->g_215,&p_1157->g_215,&p_1157->g_215,&p_1157->g_215},{&p_1157->g_215,&p_1157->g_215,&p_1157->g_215,&p_1157->g_215}};
                        uint8_t *l_699 = (void*)0;
                        uint8_t *l_700 = (void*)0;
                        int32_t l_701 = 0x00F85D0EL;
                        uint8_t *l_702 = (void*)0;
                        uint8_t *l_703 = (void*)0;
                        uint8_t *l_704 = &p_1157->g_326[3][3];
                        int i, j;
                        l_696 = (safe_add_func_int16_t_s_s(((VECTOR(int16_t, 4))(p_34, ((VECTOR(int16_t, 2))(0x3626L, 0x744BL)), 0L)).z, ((+(safe_lshift_func_int8_t_s_s(((void*)0 != &p_1157->g_488), p_1157->g_203.w))) != (safe_sub_func_int16_t_s_s((p_34 != (((((p_1157->g_278.s0 = (safe_rshift_func_uint16_t_u_s((65527UL == (safe_div_func_uint32_t_u_u(((safe_add_func_int16_t_s_s(((65535UL || (!(l_675[3][2] && 0x7E50E77488B4F52CL))) & 3L), p_34)) & (*p_32)), p_34))), l_694))) <= FAKE_DIVERGE(p_1157->group_0_offset, get_group_id(0), 10)) , p_1157->g_48) <= p_1157->g_503.z) < p_1157->g_204.s0)), 0UL)))));
                        l_709 &= (safe_unary_minus_func_int16_t_s((l_708 &= ((l_698 && (++(*l_704))) == ((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 8))(p_1157->g_707.sf2432021)).hi)).zxzxyyyxzwyzxywx)).s5))));
                        return &p_1157->g_48;
                    }
                    else
                    { /* block id: 264 */
                        VECTOR(uint32_t, 16) l_715 = (VECTOR(uint32_t, 16))(4UL, (VECTOR(uint32_t, 4))(4UL, (VECTOR(uint32_t, 2))(4UL, 5UL), 5UL), 5UL, 4UL, 5UL, (VECTOR(uint32_t, 2))(4UL, 5UL), (VECTOR(uint32_t, 2))(4UL, 5UL), 4UL, 5UL, 4UL, 5UL);
                        uint8_t *l_723 = &p_1157->g_326[2][3];
                        int i;
                        (*l_319) = (safe_div_func_uint16_t_u_u(((VECTOR(uint16_t, 16))(l_712.s0016327331215244)).s7, (safe_add_func_uint8_t_u_u(((*l_723) = (((VECTOR(uint32_t, 2))(hadd(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))(l_715.sbe7de3b3)), ((VECTOR(uint32_t, 2))(l_716.sc2)), ((VECTOR(uint32_t, 2))(mad_sat(((VECTOR(uint32_t, 16))(0UL, (((p_34 < ((((*p_1157->g_47) = (safe_sub_func_int16_t_s_s(((safe_mod_func_int32_t_s_s((l_696 &= ((65535UL && (p_1157->g_433.x = p_34)) != (((+0x0578FA36646BEC74L) | (l_721 == ((l_722 == (void*)0) || ((p_34 && 0xD8C3L) >= l_709)))) & p_33))), 5L)) == 0xA1L), p_1157->g_583.s5))) == l_712.s3) <= FAKE_DIVERGE(p_1157->global_2_offset, get_global_id(2), 10))) <= GROUP_DIVERGE(0, 1)) != p_1157->g_488), ((VECTOR(uint32_t, 2))(0x907BC87AL)), ((VECTOR(uint32_t, 4))(1UL)), 0x66E08B61L, ((VECTOR(uint32_t, 2))(1UL)), l_715.s0, ((VECTOR(uint32_t, 2))(0x521A7C0FL)), 0x5C5794C3L, 1UL)).s04, ((VECTOR(uint32_t, 2))(0xCCDF3E6CL)), ((VECTOR(uint32_t, 2))(4294967295UL))))), 0x521D10A1L, ((VECTOR(uint32_t, 2))(0UL)), 4294967291UL)).even)).s67, ((VECTOR(uint32_t, 2))(0xD7FE1E0FL))))).lo || p_34)), p_1157->g_582.x))));
                    }
                    for (l_641 = 11; (l_641 <= 42); ++l_641)
                    { /* block id: 273 */
                        uint64_t l_729 = 3UL;
                        int64_t *l_730 = &l_675[4][4];
                        int8_t *l_740 = &l_678;
                        (*l_319) = (((*l_730) &= (((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 8))(0xB1586D78L, ((VECTOR(uint32_t, 4))(p_1157->g_726.s5405)), ((VECTOR(uint32_t, 2))(4294967293UL, 0xF30DB157L)), 1UL)).odd)), ((*p_32) , (*p_32)), ((VECTOR(uint32_t, 8))(p_1157->g_727.s57436104)), ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))(l_728.sd879)).wyxxyzyyzzzyzzzw)).s65)), 0UL)).sb > l_729)) & (safe_sub_func_int8_t_s_s(((*l_740) = ((l_694 &= (((GROUP_DIVERGE(1, 1) <= (l_735[2] == l_736)) , (+((p_34 <= (l_729 & (((safe_add_func_uint32_t_u_u((*p_32), ((VECTOR(int32_t, 2))(8L, 0x195CDDF6L)).odd)) & ((((p_1157->g_739[2] = &p_34) == (void*)0) & p_34) >= p_1157->g_83.s3)) <= p_1157->g_503.x))) | p_1157->g_8))) , p_1157->g_582.x)) , 1L)), p_1157->g_520.y)));
                        if (l_741)
                            continue;
                    }
                }
            }
            else
            { /* block id: 282 */
                return &p_1157->g_64;
            }
        }
    }
    else
    { /* block id: 286 */
        int32_t *l_744[3];
        uint8_t *l_759 = (void*)0;
        VECTOR(int64_t, 2) l_778 = (VECTOR(int64_t, 2))(0x142A54F921A7F9E0L, 1L);
        int64_t l_803 = (-1L);
        uint8_t l_808 = 0x08L;
        int i;
        for (i = 0; i < 3; i++)
            l_744[i] = (void*)0;
        for (p_1157->g_273 = 0; (p_1157->g_273 == 46); p_1157->g_273 = safe_add_func_uint8_t_u_u(p_1157->g_273, 3))
        { /* block id: 289 */
            uint32_t l_765 = 0x11A24CCAL;
            VECTOR(int64_t, 16) l_780 = (VECTOR(int64_t, 16))(0L, (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 0L), 0L), 0L, 0L, 0L, (VECTOR(int64_t, 2))(0L, 0L), (VECTOR(int64_t, 2))(0L, 0L), 0L, 0L, 0L, 0L);
            int64_t *l_781 = (void*)0;
            int64_t *l_782 = &l_642;
            int16_t *l_784[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            int16_t **l_783 = &l_784[5];
            int16_t **l_785 = (void*)0;
            int16_t **l_786 = (void*)0;
            int16_t *l_788[3];
            int16_t **l_787 = &l_788[2];
            int16_t *l_790[3];
            int16_t **l_789 = &l_790[2];
            int16_t *l_802[3][9] = {{&p_1157->g_98,(void*)0,&p_1157->g_98,&p_1157->g_98,(void*)0,&p_1157->g_98,&p_1157->g_98,(void*)0,&p_1157->g_98},{&p_1157->g_98,(void*)0,&p_1157->g_98,&p_1157->g_98,(void*)0,&p_1157->g_98,&p_1157->g_98,(void*)0,&p_1157->g_98},{&p_1157->g_98,(void*)0,&p_1157->g_98,&p_1157->g_98,(void*)0,&p_1157->g_98,&p_1157->g_98,(void*)0,&p_1157->g_98}};
            int32_t l_804 = (-4L);
            int8_t *l_806 = (void*)0;
            int8_t *l_807[4];
            int i, j;
            for (i = 0; i < 3; i++)
                l_788[i] = (void*)0;
            for (i = 0; i < 3; i++)
                l_790[i] = (void*)0;
            for (i = 0; i < 4; i++)
                l_807[i] = &p_1157->g_215;
            (*p_1157->g_106) = l_744[0];
            for (p_34 = (-6); (p_34 < 52); p_34++)
            { /* block id: 293 */
                uint64_t l_756 = 0xFAF71500135576B7L;
                int32_t **l_760 = &l_324;
                int32_t l_761 = 0x03254184L;
                int32_t l_762 = (-3L);
                int32_t l_763 = 0x7ED7A1A9L;
                int32_t l_764 = 0x50634D89L;
                (*l_760) = ((*p_1157->g_106) = func_35(l_747, p_34, &p_1157->g_64, (safe_mul_func_int8_t_s_s(((((safe_lshift_func_uint8_t_u_u(((safe_add_func_uint64_t_u_u((safe_add_func_uint32_t_u_u(l_756, (~4294967294UL))), p_34)) < ((((safe_div_func_int64_t_s_s(6L, p_33)) > p_33) , (void*)0) == l_759)), 1)) > 4L) , &l_642) == (void*)0), p_1157->g_326[3][3])), &p_1157->g_48, p_1157));
                l_765++;
            }
            (*l_319) ^= (safe_rshift_func_int8_t_s_u(((p_1157->g_215 ^= ((safe_sub_func_uint16_t_u_u(((++p_1157->g_326[0][7]) || (0x6F5CL && (((0x56L | (safe_rshift_func_uint8_t_u_u((((*l_782) = ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 16))(mad_sat(((VECTOR(int64_t, 2))(l_778.xx)).xyxxyyyxyxxyxyxx, ((VECTOR(int64_t, 16))(p_1157->g_779.s2a66b70e3b018abd)), ((VECTOR(int64_t, 16))(l_780.s2d4f0a7aed637493))))).s1767)).w) >= (((((*l_783) = (void*)0) == ((*l_789) = ((*l_787) = (void*)0))) >= l_765) < (0x6AA6L ^ (((safe_rshift_func_int8_t_s_u(((safe_mul_func_int16_t_s_s((safe_add_func_int64_t_s_s((safe_rshift_func_int16_t_s_s((((safe_div_func_int16_t_s_s((l_803 ^= ((VECTOR(int16_t, 2))(l_801.sf0)).odd), (l_804 = ((((p_33 & ((&l_605 != (void*)0) < p_34)) , p_33) || (*p_1157->g_47)) & p_34)))) , p_34) & p_34), p_1157->g_779.sb)), p_33)), 0x2A27L)) | 0x6C7BL), l_805)) && p_34) , p_33)))), 6))) & p_1157->g_582.w) == 0x5EL))), p_33)) || 8L)) <= 0x0FL), p_34));
        }
        ++l_808;
        return p_32;
    }
    l_829 &= (safe_add_func_uint16_t_u_u(1UL, (safe_lshift_func_uint16_t_u_s((((1L ^ ((((*p_32) , (p_34 < (((VECTOR(uint32_t, 4))(p_1157->g_815.xxyx)).y || (safe_unary_minus_func_int16_t_s((safe_lshift_func_int16_t_s_s(p_1157->g_96[0], ((safe_rshift_func_int8_t_s_u((safe_lshift_func_int16_t_s_s((&p_1157->g_316 != ((safe_div_func_uint32_t_u_u((((VECTOR(uint16_t, 4))(l_825.s7945)).z , (((p_1157->g_98 >= p_34) == ((((((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(l_826.xy)).xyyx)).x >= ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 16))((-3L), p_1157->g_827[0], p_1157->g_98, ((VECTOR(int8_t, 4))(0L)), 0x17L, p_33, ((VECTOR(int8_t, 2))(0x70L)), (-3L), p_33, 0x0BL, 0x38L, 0x79L)))).s2) == l_828) && (*l_319)) | (*l_319))) <= 0x56F85125L)), GROUP_DIVERGE(2, 1))) , (void*)0)), p_33)), 5)) >= 0L)))))))) == p_34) | p_1157->g_278.sd)) >= 0x7CL) >= p_33), p_34))));
    return p_32;
}


/* ------------------------------------------ */
/* 
 * reads : p_1157->g_274 p_1157->g_278 p_1157->g_64 p_1157->g_106
 * writes: p_1157->g_48 p_1157->g_64 p_1157->g_107
 */
uint32_t * func_35(uint32_t  p_36, int32_t  p_37, uint32_t * p_38, int32_t  p_39, uint32_t * p_40, struct S1 * p_1157)
{ /* block id: 109 */
    uint16_t l_277 = 9UL;
    struct S0 **l_279 = &p_1157->g_181;
    uint32_t l_282[3];
    int32_t *l_283 = &p_1157->g_61;
    int32_t l_284 = 8L;
    int32_t *l_285 = &l_284;
    int32_t *l_286[2][8] = {{(void*)0,&p_1157->g_61,(void*)0,(void*)0,&p_1157->g_61,(void*)0,(void*)0,&p_1157->g_61},{(void*)0,&p_1157->g_61,(void*)0,(void*)0,&p_1157->g_61,(void*)0,(void*)0,&p_1157->g_61}};
    uint64_t l_287 = 0xD643D75CAA035322L;
    int i, j;
    for (i = 0; i < 3; i++)
        l_282[i] = 0UL;
    p_39 = (((VECTOR(uint64_t, 8))((65526UL > p_36), ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 16))(p_1157->g_274.wxzxzyyxyxyyzyzx)).s7277)), 5UL, 18446744073709551607UL, 2UL)).s5 < (safe_mul_func_int8_t_s_s((((((*p_40) = ((-8L) >= (+p_39))) , (l_277 , &p_1157->g_107[3][4])) == (FAKE_DIVERGE(p_1157->local_0_offset, get_local_id(0), 10) , &p_1157->g_107[8][0])) && ((((+((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(p_1157->g_278.sc3)).yyxy)).x) || (-4L)) , (void*)0) != l_279)), 0L)));
    l_282[2] = (safe_lshift_func_uint8_t_u_s(GROUP_DIVERGE(2, 1), 7));
    --l_287;
    for (p_1157->g_64 = 6; (p_1157->g_64 >= 29); p_1157->g_64 = safe_add_func_int64_t_s_s(p_1157->g_64, 6))
    { /* block id: 116 */
        int32_t **l_292 = &l_286[0][0];
        (*l_292) = ((*p_1157->g_106) = &p_39);
        (*l_285) |= 0x0D03B18CL;
        if (p_39)
            continue;
    }
    return &p_1157->g_64;
}


/* ------------------------------------------ */
/* 
 * reads : p_1157->g_64 p_1157->g_73 p_1157->g_61 p_1157->g_48 p_1157->g_59 p_1157->g_243 p_1157->g_96
 * writes: p_1157->g_64 p_1157->g_61 p_1157->g_73 p_1157->g_48 p_1157->g_59
 */
uint32_t  func_41(uint32_t * p_42, int16_t  p_43, uint32_t * p_44, uint8_t  p_45, uint64_t  p_46, struct S1 * p_1157)
{ /* block id: 7 */
    int32_t *l_60 = &p_1157->g_61;
    int32_t *l_62 = &p_1157->g_61;
    int32_t *l_63[10] = {&p_1157->g_61,&p_1157->g_61,&p_1157->g_61,&p_1157->g_61,&p_1157->g_61,&p_1157->g_61,&p_1157->g_61,&p_1157->g_61,&p_1157->g_61,&p_1157->g_61};
    int16_t *l_69 = &p_1157->g_59;
    int32_t **l_70 = &l_62;
    VECTOR(int16_t, 8) l_195 = (VECTOR(int16_t, 8))(7L, (VECTOR(int16_t, 4))(7L, (VECTOR(int16_t, 2))(7L, (-4L)), (-4L)), (-4L), 7L, (-4L));
    VECTOR(int8_t, 16) l_226 = (VECTOR(int8_t, 16))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x68L), 0x68L), 0x68L, 1L, 0x68L, (VECTOR(int8_t, 2))(1L, 0x68L), (VECTOR(int8_t, 2))(1L, 0x68L), 1L, 0x68L, 1L, 0x68L);
    int64_t *l_242 = &p_1157->g_85;
    VECTOR(uint64_t, 4) l_250 = (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 0x65CB2B3D6560D9BFL), 0x65CB2B3D6560D9BFL);
    VECTOR(uint16_t, 4) l_254 = (VECTOR(uint16_t, 4))(65529UL, (VECTOR(uint16_t, 2))(65529UL, 65528UL), 65528UL);
    int i;
    l_60 = p_44;
    p_1157->g_64--;
    (*l_70) = func_67(l_69, p_1157);
    for (p_1157->g_64 = 8; (p_1157->g_64 >= 39); p_1157->g_64++)
    { /* block id: 15 */
        int32_t *l_74[1];
        uint16_t *l_97 = &p_1157->g_96[2];
        VECTOR(int64_t, 8) l_202 = (VECTOR(int64_t, 8))(0x2EF6CC775CB11263L, (VECTOR(int64_t, 4))(0x2EF6CC775CB11263L, (VECTOR(int64_t, 2))(0x2EF6CC775CB11263L, 0x290B0F1111A74DA8L), 0x290B0F1111A74DA8L), 0x290B0F1111A74DA8L, 0x2EF6CC775CB11263L, 0x290B0F1111A74DA8L);
        uint16_t l_227 = 0xF6C5L;
        uint64_t l_246[9];
        int i;
        for (i = 0; i < 1; i++)
            l_74[i] = &p_1157->g_61;
        for (i = 0; i < 9; i++)
            l_246[i] = 0x5F4EB63B4B6C5446L;
        p_1157->g_73[0][0][2] &= ((**l_70) = p_46);
        if ((*l_62))
            break;
        (*l_70) = l_74[0];
        for (p_1157->g_48 = 0; (p_1157->g_48 == 32); p_1157->g_48 = safe_add_func_int32_t_s_s(p_1157->g_48, 2))
        { /* block id: 22 */
            VECTOR(uint64_t, 4) l_79 = (VECTOR(uint64_t, 4))(0x8C41CEE38976CC22L, (VECTOR(uint64_t, 2))(0x8C41CEE38976CC22L, 0x3F84E0F8CCAA7A75L), 0x3F84E0F8CCAA7A75L);
            uint16_t *l_95 = &p_1157->g_96[2];
            int16_t l_180 = (-1L);
            int32_t l_219 = 0x423E1309L;
            int32_t l_224 = (-7L);
            int32_t l_225[7] = {1L,3L,1L,1L,3L,1L,1L};
            VECTOR(int64_t, 8) l_247 = (VECTOR(int64_t, 8))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), (-1L)), (-1L)), (-1L), (-1L), (-1L));
            VECTOR(uint16_t, 4) l_255 = (VECTOR(uint16_t, 4))(0x7272L, (VECTOR(uint16_t, 2))(0x7272L, 0UL), 0UL);
            int32_t **l_260 = &l_74[0];
            int i;
            for (p_1157->g_59 = 0; (p_1157->g_59 != 18); p_1157->g_59++)
            { /* block id: 25 */
                int64_t *l_84 = &p_1157->g_85;
                uint16_t *l_86 = &p_1157->g_87;
                int32_t **l_94 = &l_63[7];
                VECTOR(int16_t, 4) l_194 = (VECTOR(int16_t, 4))(0x72BFL, (VECTOR(int16_t, 2))(0x72BFL, 1L), 1L);
                int32_t l_217 = (-6L);
                int32_t l_218[5] = {0x0E9A344EL,0x0E9A344EL,0x0E9A344EL,0x0E9A344EL,0x0E9A344EL};
                int32_t l_264 = 8L;
                int i;
                (1 + 1);
            }
            return p_1157->g_243.s3;
        }
    }
    return p_1157->g_96[3];
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t * func_67(int16_t * p_68, struct S1 * p_1157)
{ /* block id: 10 */
    return &p_1157->g_61;
}


/* ------------------------------------------ */
/* 
 * reads : p_1157->g_106 p_1157->g_96 p_1157->g_83 p_1157->g_59 p_1157->g_61 p_1157->g_48 p_1157->g_73 p_1157->g_85 p_1157->g_87 p_1157->g_169 p_1157->g_64
 * writes: p_1157->g_107 p_1157->g_61 p_1157->g_96 p_1157->g_98 p_1157->g_178 p_1157->g_83
 */
uint64_t  func_80(uint32_t  p_81, int32_t  p_82, struct S1 * p_1157)
{ /* block id: 31 */
    int8_t l_103 = 0x47L;
    int16_t *l_110 = &p_1157->g_59;
    int32_t *l_111 = &p_1157->g_61;
    int32_t l_112 = 0x63186512L;
    int64_t *l_113 = (void*)0;
    int64_t *l_114 = (void*)0;
    int64_t *l_115 = (void*)0;
    int64_t *l_116 = (void*)0;
    int32_t l_129[9] = {0x6D1D53F2L,0x6D1D53F2L,0x6D1D53F2L,0x6D1D53F2L,0x6D1D53F2L,0x6D1D53F2L,0x6D1D53F2L,0x6D1D53F2L,0x6D1D53F2L};
    int32_t *l_130 = (void*)0;
    int32_t *l_131 = (void*)0;
    int32_t *l_132[10][10][2] = {{{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61}},{{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61}},{{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61}},{{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61}},{{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61}},{{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61}},{{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61}},{{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61}},{{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61}},{{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61}}};
    uint32_t l_133 = 0x975B775EL;
    int32_t l_144 = 0x1465BA71L;
    int16_t **l_145 = &l_110;
    int16_t *l_147 = (void*)0;
    int16_t **l_146 = &l_147;
    VECTOR(uint16_t, 16) l_154 = (VECTOR(uint16_t, 16))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 65535UL), 65535UL), 65535UL, 0UL, 65535UL, (VECTOR(uint16_t, 2))(0UL, 65535UL), (VECTOR(uint16_t, 2))(0UL, 65535UL), 0UL, 65535UL, 0UL, 65535UL);
    VECTOR(uint32_t, 8) l_155 = (VECTOR(uint32_t, 8))(4294967288UL, (VECTOR(uint32_t, 4))(4294967288UL, (VECTOR(uint32_t, 2))(4294967288UL, 0xE116460FL), 0xE116460FL), 0xE116460FL, 4294967288UL, 0xE116460FL);
    int32_t l_158 = 0x3A540634L;
    int16_t l_159 = 0x3FABL;
    VECTOR(int16_t, 16) l_168 = (VECTOR(int16_t, 16))((-8L), (VECTOR(int16_t, 4))((-8L), (VECTOR(int16_t, 2))((-8L), (-4L)), (-4L)), (-4L), (-8L), (-4L), (VECTOR(int16_t, 2))((-8L), (-4L)), (VECTOR(int16_t, 2))((-8L), (-4L)), (-8L), (-4L), (-8L), (-4L));
    int64_t *l_179 = (void*)0;
    int i, j, k;
    if ((safe_lshift_func_int16_t_s_u(((safe_mul_func_uint16_t_u_u(l_103, ((safe_rshift_func_uint16_t_u_s((p_1157->g_106 != (void*)0), 7)) && (p_1157->g_96[5] > 0xAF6298A09F245565L)))) & (((((VECTOR(int32_t, 2))(9L, 3L)).lo ^ 1L) > (((*l_111) = ((safe_lshift_func_int8_t_s_u(0x6FL, GROUP_DIVERGE(1, 1))) <= ((p_82 == (((*p_1157->g_106) = func_67(l_110, p_1157)) == l_111)) <= l_112))) >= p_1157->g_83.sc)) , 0x0BF6E679L)), p_1157->g_59)))
    { /* block id: 34 */
        uint32_t l_117 = 4294967293UL;
        return l_117;
    }
    else
    { /* block id: 36 */
        uint64_t l_127 = 18446744073709551608UL;
        for (p_82 = 28; (p_82 <= (-30)); --p_82)
        { /* block id: 39 */
            uint64_t l_122 = 0xDAFA074066B756FCL;
            int32_t *l_125 = &p_1157->g_61;
            uint16_t *l_128 = &p_1157->g_96[2];
            l_129[3] &= (l_122 > (((safe_mul_func_int16_t_s_s((*l_111), ((*l_128) = (((l_125 == (void*)0) & (((safe_unary_minus_func_uint8_t_u(p_1157->g_96[2])) ^ p_1157->g_59) ^ (p_1157->g_59 , p_82))) != (0x16A0L == l_127))))) & p_1157->g_48) == p_1157->g_83.s3));
        }
        l_129[3] |= (!(*l_111));
    }
    ++l_133;
    l_159 = ((*l_111) = (((safe_rshift_func_int16_t_s_s((p_81 > 0x7307L), 3)) >= ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(rotate(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(safe_clamp_func(VECTOR(int16_t, 16),int16_t,((VECTOR(int16_t, 2))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 2),((VECTOR(int16_t, 4))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 4),((VECTOR(int16_t, 16))((safe_mul_func_int16_t_s_s(p_82, (safe_mod_func_int8_t_s_s(((((((l_144 > (((*l_145) = &p_1157->g_98) == ((*l_146) = &p_1157->g_98))) , ((FAKE_DIVERGE(p_1157->group_0_offset, get_group_id(0), 10) , (safe_rshift_func_int8_t_s_u((safe_rshift_func_int8_t_s_s((safe_lshift_func_uint16_t_u_s(((VECTOR(uint16_t, 16))(abs(((VECTOR(uint16_t, 8))(l_154.sbf4ea760)).s6467215253253520))).s1, 11)), 2)), 4))) , ((VECTOR(uint32_t, 8))(0x9C70C568L, ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 4))(l_155.s5523)))), ((VECTOR(uint32_t, 2))(0x3CFF6BEFL, 4294967295UL)), 4294967295UL)).s4)) != (safe_add_func_uint8_t_u_u(p_1157->g_83.s3, p_1157->g_73[0][0][2]))) ^ p_81) , p_1157->g_73[0][0][0]) ^ p_1157->g_73[0][0][0]), p_1157->g_96[2])))), p_1157->g_85, 0L, 2L, 0x0BCAL, p_81, 0x5AFCL, ((VECTOR(int16_t, 4))(0x13B4L)), l_158, p_1157->g_73[0][0][2], 0L, 0x6427L, 0x29E1L)).s9798, ((VECTOR(int16_t, 4))(3L)), ((VECTOR(int16_t, 4))(0x4FFBL))))).lo, ((VECTOR(int16_t, 2))(0x073AL)), ((VECTOR(int16_t, 2))(0x4EB4L))))).xxyyyyxxxyyxxyxy, (int16_t)p_82, (int16_t)p_81))).sf8)), ((VECTOR(int16_t, 2))(0x637CL))))), 1L, (-1L))).y) && (-1L)));
    (*l_111) = (((*l_110) = (p_1157->g_96[2] == (-6L))) == (safe_add_func_int8_t_s_s(0x32L, ((((((safe_sub_func_uint16_t_u_u((safe_rshift_func_uint16_t_u_s(p_81, 12)), 0x2B64L)) | (p_1157->g_87 >= (p_1157->g_83.se = ((safe_div_func_uint8_t_u_u((((VECTOR(int16_t, 8))(l_168.s689637cc)).s3 > ((((void*)0 == p_1157->g_169) && (((safe_mul_func_int8_t_s_s((safe_add_func_uint64_t_u_u(((safe_mod_func_int16_t_s_s((p_1157->g_178 = ((p_82 , (void*)0) == (*l_146))), p_1157->g_96[5])) < p_1157->g_64), (*l_111))), p_1157->g_96[5])) < p_1157->g_96[2]) ^ 0UL)) , p_81)), 255UL)) ^ GROUP_DIVERGE(0, 1))))) ^ (*l_111)) >= 0x14L) >= p_81) , 0x2EL))));
    return p_81;
}


/* ------------------------------------------ */
/* 
 * reads : p_1157->g_61
 * writes:
 */
int32_t  func_88(int64_t  p_89, int32_t ** p_90, uint32_t  p_91, uint32_t * p_92, uint32_t  p_93, struct S1 * p_1157)
{ /* block id: 28 */
    return (**p_90);
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S1 c_1158;
    struct S1* p_1157 = &c_1158;
    struct S1 c_1159 = {
        0x7402E31DL, // p_1157->g_2
        2L, // p_1157->g_8
        0xF7E7308FL, // p_1157->g_12
        0x75DFCC9FL, // p_1157->g_48
        &p_1157->g_48, // p_1157->g_47
        0x760EL, // p_1157->g_59
        6L, // p_1157->g_61
        0x24DFB481L, // p_1157->g_64
        {{{0L,0L,0L}}}, // p_1157->g_73
        (VECTOR(int64_t, 16))(0x0883475F5401BC10L, (VECTOR(int64_t, 4))(0x0883475F5401BC10L, (VECTOR(int64_t, 2))(0x0883475F5401BC10L, 0x61499B6F36082240L), 0x61499B6F36082240L), 0x61499B6F36082240L, 0x0883475F5401BC10L, 0x61499B6F36082240L, (VECTOR(int64_t, 2))(0x0883475F5401BC10L, 0x61499B6F36082240L), (VECTOR(int64_t, 2))(0x0883475F5401BC10L, 0x61499B6F36082240L), 0x0883475F5401BC10L, 0x61499B6F36082240L, 0x0883475F5401BC10L, 0x61499B6F36082240L), // p_1157->g_83
        0x6156DD1A6511C0E0L, // p_1157->g_85
        0x63F9L, // p_1157->g_87
        {1UL,1UL,1UL,1UL,1UL,1UL}, // p_1157->g_96
        (-10L), // p_1157->g_98
        {{&p_1157->g_61,&p_1157->g_61,&p_1157->g_61,&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61,&p_1157->g_61,&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61,&p_1157->g_61,&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61,&p_1157->g_61,&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61,&p_1157->g_61,&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61,&p_1157->g_61,&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61,&p_1157->g_61,&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61,&p_1157->g_61,&p_1157->g_61,&p_1157->g_61},{&p_1157->g_61,&p_1157->g_61,&p_1157->g_61,&p_1157->g_61,&p_1157->g_61}}, // p_1157->g_107
        &p_1157->g_107[1][2], // p_1157->g_106
        {0x33B2L,0x33B2L,0x33B2L,0x33B2L,0x33B2L,0x33B2L}, // p_1157->g_171
        &p_1157->g_171[0], // p_1157->g_170
        &p_1157->g_170, // p_1157->g_169
        18446744073709551607UL, // p_1157->g_178
        (void*)0, // p_1157->g_181
        (VECTOR(int64_t, 16))(4L, (VECTOR(int64_t, 4))(4L, (VECTOR(int64_t, 2))(4L, (-1L)), (-1L)), (-1L), 4L, (-1L), (VECTOR(int64_t, 2))(4L, (-1L)), (VECTOR(int64_t, 2))(4L, (-1L)), 4L, (-1L), 4L, (-1L)), // p_1157->g_187
        (VECTOR(int16_t, 4))(3L, (VECTOR(int16_t, 2))(3L, (-10L)), (-10L)), // p_1157->g_203
        (VECTOR(uint16_t, 8))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 0x5807L), 0x5807L), 0x5807L, 65535UL, 0x5807L), // p_1157->g_204
        (VECTOR(uint32_t, 16))(5UL, (VECTOR(uint32_t, 4))(5UL, (VECTOR(uint32_t, 2))(5UL, 1UL), 1UL), 1UL, 5UL, 1UL, (VECTOR(uint32_t, 2))(5UL, 1UL), (VECTOR(uint32_t, 2))(5UL, 1UL), 5UL, 1UL, 5UL, 1UL), // p_1157->g_207
        0x50D09B6BL, // p_1157->g_209
        0x37L, // p_1157->g_215
        (VECTOR(int32_t, 16))(5L, (VECTOR(int32_t, 4))(5L, (VECTOR(int32_t, 2))(5L, 8L), 8L), 8L, 5L, 8L, (VECTOR(int32_t, 2))(5L, 8L), (VECTOR(int32_t, 2))(5L, 8L), 5L, 8L, 5L, 8L), // p_1157->g_243
        0x7327E58CL, // p_1157->g_273
        (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 18446744073709551606UL), 18446744073709551606UL), // p_1157->g_274
        (VECTOR(int8_t, 16))(0x2AL, (VECTOR(int8_t, 4))(0x2AL, (VECTOR(int8_t, 2))(0x2AL, 0x47L), 0x47L), 0x47L, 0x2AL, 0x47L, (VECTOR(int8_t, 2))(0x2AL, 0x47L), (VECTOR(int8_t, 2))(0x2AL, 0x47L), 0x2AL, 0x47L, 0x2AL, 0x47L), // p_1157->g_278
        (VECTOR(uint8_t, 16))(0x86L, (VECTOR(uint8_t, 4))(0x86L, (VECTOR(uint8_t, 2))(0x86L, 2UL), 2UL), 2UL, 0x86L, 2UL, (VECTOR(uint8_t, 2))(0x86L, 2UL), (VECTOR(uint8_t, 2))(0x86L, 2UL), 0x86L, 2UL, 0x86L, 2UL), // p_1157->g_295
        0x140AL, // p_1157->g_314
        0x2D907DC0L, // p_1157->g_316
        {{0xCDL,0x47L,0xCDL,0xCDL,0x47L,0xCDL,0xCDL,0x47L,0xCDL},{0xCDL,0x47L,0xCDL,0xCDL,0x47L,0xCDL,0xCDL,0x47L,0xCDL},{0xCDL,0x47L,0xCDL,0xCDL,0x47L,0xCDL,0xCDL,0x47L,0xCDL},{0xCDL,0x47L,0xCDL,0xCDL,0x47L,0xCDL,0xCDL,0x47L,0xCDL},{0xCDL,0x47L,0xCDL,0xCDL,0x47L,0xCDL,0xCDL,0x47L,0xCDL},{0xCDL,0x47L,0xCDL,0xCDL,0x47L,0xCDL,0xCDL,0x47L,0xCDL},{0xCDL,0x47L,0xCDL,0xCDL,0x47L,0xCDL,0xCDL,0x47L,0xCDL}}, // p_1157->g_326
        0xF459L, // p_1157->g_329
        (VECTOR(uint32_t, 2))(0x9EDED5A0L, 4294967291UL), // p_1157->g_336
        (VECTOR(uint32_t, 16))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 4294967293UL), 4294967293UL), 4294967293UL, 4294967295UL, 4294967293UL, (VECTOR(uint32_t, 2))(4294967295UL, 4294967293UL), (VECTOR(uint32_t, 2))(4294967295UL, 4294967293UL), 4294967295UL, 4294967293UL, 4294967295UL, 4294967293UL), // p_1157->g_337
        &p_1157->g_316, // p_1157->g_340
        (VECTOR(int32_t, 2))(5L, 0L), // p_1157->g_368
        (VECTOR(int16_t, 2))(1L, (-1L)), // p_1157->g_433
        (VECTOR(int16_t, 4))(0x4323L, (VECTOR(int16_t, 2))(0x4323L, 0x541CL), 0x541CL), // p_1157->g_437
        {{-1L}}, // p_1157->g_472
        {{{{0L},{1L},{-6L},{0x0C87BC31L},{0x0C87BC31L}},{{0L},{1L},{-6L},{0x0C87BC31L},{0x0C87BC31L}},{{0L},{1L},{-6L},{0x0C87BC31L},{0x0C87BC31L}},{{0L},{1L},{-6L},{0x0C87BC31L},{0x0C87BC31L}},{{0L},{1L},{-6L},{0x0C87BC31L},{0x0C87BC31L}},{{0L},{1L},{-6L},{0x0C87BC31L},{0x0C87BC31L}},{{0L},{1L},{-6L},{0x0C87BC31L},{0x0C87BC31L}},{{0L},{1L},{-6L},{0x0C87BC31L},{0x0C87BC31L}},{{0L},{1L},{-6L},{0x0C87BC31L},{0x0C87BC31L}},{{0L},{1L},{-6L},{0x0C87BC31L},{0x0C87BC31L}}},{{{0L},{1L},{-6L},{0x0C87BC31L},{0x0C87BC31L}},{{0L},{1L},{-6L},{0x0C87BC31L},{0x0C87BC31L}},{{0L},{1L},{-6L},{0x0C87BC31L},{0x0C87BC31L}},{{0L},{1L},{-6L},{0x0C87BC31L},{0x0C87BC31L}},{{0L},{1L},{-6L},{0x0C87BC31L},{0x0C87BC31L}},{{0L},{1L},{-6L},{0x0C87BC31L},{0x0C87BC31L}},{{0L},{1L},{-6L},{0x0C87BC31L},{0x0C87BC31L}},{{0L},{1L},{-6L},{0x0C87BC31L},{0x0C87BC31L}},{{0L},{1L},{-6L},{0x0C87BC31L},{0x0C87BC31L}},{{0L},{1L},{-6L},{0x0C87BC31L},{0x0C87BC31L}}},{{{0L},{1L},{-6L},{0x0C87BC31L},{0x0C87BC31L}},{{0L},{1L},{-6L},{0x0C87BC31L},{0x0C87BC31L}},{{0L},{1L},{-6L},{0x0C87BC31L},{0x0C87BC31L}},{{0L},{1L},{-6L},{0x0C87BC31L},{0x0C87BC31L}},{{0L},{1L},{-6L},{0x0C87BC31L},{0x0C87BC31L}},{{0L},{1L},{-6L},{0x0C87BC31L},{0x0C87BC31L}},{{0L},{1L},{-6L},{0x0C87BC31L},{0x0C87BC31L}},{{0L},{1L},{-6L},{0x0C87BC31L},{0x0C87BC31L}},{{0L},{1L},{-6L},{0x0C87BC31L},{0x0C87BC31L}},{{0L},{1L},{-6L},{0x0C87BC31L},{0x0C87BC31L}}},{{{0L},{1L},{-6L},{0x0C87BC31L},{0x0C87BC31L}},{{0L},{1L},{-6L},{0x0C87BC31L},{0x0C87BC31L}},{{0L},{1L},{-6L},{0x0C87BC31L},{0x0C87BC31L}},{{0L},{1L},{-6L},{0x0C87BC31L},{0x0C87BC31L}},{{0L},{1L},{-6L},{0x0C87BC31L},{0x0C87BC31L}},{{0L},{1L},{-6L},{0x0C87BC31L},{0x0C87BC31L}},{{0L},{1L},{-6L},{0x0C87BC31L},{0x0C87BC31L}},{{0L},{1L},{-6L},{0x0C87BC31L},{0x0C87BC31L}},{{0L},{1L},{-6L},{0x0C87BC31L},{0x0C87BC31L}},{{0L},{1L},{-6L},{0x0C87BC31L},{0x0C87BC31L}}},{{{0L},{1L},{-6L},{0x0C87BC31L},{0x0C87BC31L}},{{0L},{1L},{-6L},{0x0C87BC31L},{0x0C87BC31L}},{{0L},{1L},{-6L},{0x0C87BC31L},{0x0C87BC31L}},{{0L},{1L},{-6L},{0x0C87BC31L},{0x0C87BC31L}},{{0L},{1L},{-6L},{0x0C87BC31L},{0x0C87BC31L}},{{0L},{1L},{-6L},{0x0C87BC31L},{0x0C87BC31L}},{{0L},{1L},{-6L},{0x0C87BC31L},{0x0C87BC31L}},{{0L},{1L},{-6L},{0x0C87BC31L},{0x0C87BC31L}},{{0L},{1L},{-6L},{0x0C87BC31L},{0x0C87BC31L}},{{0L},{1L},{-6L},{0x0C87BC31L},{0x0C87BC31L}}}}, // p_1157->g_474
        {0x0BA70F3AL}, // p_1157->g_475
        {0L}, // p_1157->g_476
        {0x7C1EF2FAL}, // p_1157->g_477
        {{-7L},{-7L},{-7L},{-7L},{-7L},{-7L}}, // p_1157->g_478
        {0x16CCC780L}, // p_1157->g_479
        {{1L},{-1L},{1L},{1L},{-1L},{1L},{1L}}, // p_1157->g_480
        {0x55B31622L}, // p_1157->g_481
        {1L}, // p_1157->g_482
        {3L}, // p_1157->g_483
        0xF68C0D94EA64009CL, // p_1157->g_488
        (void*)0, // p_1157->g_493
        (VECTOR(int32_t, 4))((-10L), (VECTOR(int32_t, 2))((-10L), 9L), 9L), // p_1157->g_494
        (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), (-1L)), (-1L)), // p_1157->g_503
        (VECTOR(uint64_t, 2))(18446744073709551609UL, 0x25E313B12BC4252DL), // p_1157->g_520
        0x9E56CB552DA012ECL, // p_1157->g_526
        (VECTOR(int16_t, 8))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), (-5L)), (-5L)), (-5L), (-1L), (-5L)), // p_1157->g_581
        (VECTOR(int16_t, 4))((-9L), (VECTOR(int16_t, 2))((-9L), (-4L)), (-4L)), // p_1157->g_582
        (VECTOR(int16_t, 8))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 1L), 1L), 1L, (-1L), 1L), // p_1157->g_583
        (VECTOR(int16_t, 8))(6L, (VECTOR(int16_t, 4))(6L, (VECTOR(int16_t, 2))(6L, 0x0205L), 0x0205L), 0x0205L, 6L, 0x0205L), // p_1157->g_586
        (-1L), // p_1157->g_599
        (VECTOR(uint16_t, 4))(0x1B34L, (VECTOR(uint16_t, 2))(0x1B34L, 0x0755L), 0x0755L), // p_1157->g_631
        (VECTOR(int16_t, 8))(0x06A8L, (VECTOR(int16_t, 4))(0x06A8L, (VECTOR(int16_t, 2))(0x06A8L, 0x0A83L), 0x0A83L), 0x0A83L, 0x06A8L, 0x0A83L), // p_1157->g_654
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_1157->g_669
        {{(void*)0,&p_1157->g_669[6],&p_1157->g_669[1],&p_1157->g_669[8],&p_1157->g_669[1],&p_1157->g_669[6],(void*)0},{(void*)0,&p_1157->g_669[6],&p_1157->g_669[1],&p_1157->g_669[8],&p_1157->g_669[1],&p_1157->g_669[6],(void*)0},{(void*)0,&p_1157->g_669[6],&p_1157->g_669[1],&p_1157->g_669[8],&p_1157->g_669[1],&p_1157->g_669[6],(void*)0},{(void*)0,&p_1157->g_669[6],&p_1157->g_669[1],&p_1157->g_669[8],&p_1157->g_669[1],&p_1157->g_669[6],(void*)0},{(void*)0,&p_1157->g_669[6],&p_1157->g_669[1],&p_1157->g_669[8],&p_1157->g_669[1],&p_1157->g_669[6],(void*)0}}, // p_1157->g_668
        0x655EL, // p_1157->g_673
        &p_1157->g_673, // p_1157->g_672
        &p_1157->g_672, // p_1157->g_671
        (VECTOR(int32_t, 4))(5L, (VECTOR(int32_t, 2))(5L, (-1L)), (-1L)), // p_1157->g_674
        (VECTOR(int64_t, 16))(0x34B767C21B7BA36AL, (VECTOR(int64_t, 4))(0x34B767C21B7BA36AL, (VECTOR(int64_t, 2))(0x34B767C21B7BA36AL, 0x1FE7C8150F9C6328L), 0x1FE7C8150F9C6328L), 0x1FE7C8150F9C6328L, 0x34B767C21B7BA36AL, 0x1FE7C8150F9C6328L, (VECTOR(int64_t, 2))(0x34B767C21B7BA36AL, 0x1FE7C8150F9C6328L), (VECTOR(int64_t, 2))(0x34B767C21B7BA36AL, 0x1FE7C8150F9C6328L), 0x34B767C21B7BA36AL, 0x1FE7C8150F9C6328L, 0x34B767C21B7BA36AL, 0x1FE7C8150F9C6328L), // p_1157->g_707
        (VECTOR(uint32_t, 8))(0x349E8218L, (VECTOR(uint32_t, 4))(0x349E8218L, (VECTOR(uint32_t, 2))(0x349E8218L, 2UL), 2UL), 2UL, 0x349E8218L, 2UL), // p_1157->g_726
        (VECTOR(uint32_t, 8))(0x9BC46975L, (VECTOR(uint32_t, 4))(0x9BC46975L, (VECTOR(uint32_t, 2))(0x9BC46975L, 0xA34091B2L), 0xA34091B2L), 0xA34091B2L, 0x9BC46975L, 0xA34091B2L), // p_1157->g_727
        {(void*)0,(void*)0,(void*)0,(void*)0}, // p_1157->g_739
        (VECTOR(int64_t, 16))(0x3C67B12DCBA5EB2FL, (VECTOR(int64_t, 4))(0x3C67B12DCBA5EB2FL, (VECTOR(int64_t, 2))(0x3C67B12DCBA5EB2FL, 0x6C811B8C13A97CBBL), 0x6C811B8C13A97CBBL), 0x6C811B8C13A97CBBL, 0x3C67B12DCBA5EB2FL, 0x6C811B8C13A97CBBL, (VECTOR(int64_t, 2))(0x3C67B12DCBA5EB2FL, 0x6C811B8C13A97CBBL), (VECTOR(int64_t, 2))(0x3C67B12DCBA5EB2FL, 0x6C811B8C13A97CBBL), 0x3C67B12DCBA5EB2FL, 0x6C811B8C13A97CBBL, 0x3C67B12DCBA5EB2FL, 0x6C811B8C13A97CBBL), // p_1157->g_779
        (VECTOR(uint32_t, 2))(1UL, 0x3C66FCE4L), // p_1157->g_815
        {0x99L,0x99L,0x99L,0x99L}, // p_1157->g_827
        {{{0x639ACE05L,0x1ABAAFEFL,0x639ACE05L,0x639ACE05L,0x1ABAAFEFL,0x639ACE05L,0x639ACE05L},{0x639ACE05L,0x1ABAAFEFL,0x639ACE05L,0x639ACE05L,0x1ABAAFEFL,0x639ACE05L,0x639ACE05L}}}, // p_1157->g_830
        (VECTOR(int32_t, 16))(0x7819C58DL, (VECTOR(int32_t, 4))(0x7819C58DL, (VECTOR(int32_t, 2))(0x7819C58DL, (-10L)), (-10L)), (-10L), 0x7819C58DL, (-10L), (VECTOR(int32_t, 2))(0x7819C58DL, (-10L)), (VECTOR(int32_t, 2))(0x7819C58DL, (-10L)), 0x7819C58DL, (-10L), 0x7819C58DL, (-10L)), // p_1157->g_846
        (VECTOR(int32_t, 16))(0x67E27006L, (VECTOR(int32_t, 4))(0x67E27006L, (VECTOR(int32_t, 2))(0x67E27006L, 0x1FB25B6CL), 0x1FB25B6CL), 0x1FB25B6CL, 0x67E27006L, 0x1FB25B6CL, (VECTOR(int32_t, 2))(0x67E27006L, 0x1FB25B6CL), (VECTOR(int32_t, 2))(0x67E27006L, 0x1FB25B6CL), 0x67E27006L, 0x1FB25B6CL, 0x67E27006L, 0x1FB25B6CL), // p_1157->g_847
        (VECTOR(uint32_t, 4))(0xD03FD63CL, (VECTOR(uint32_t, 2))(0xD03FD63CL, 1UL), 1UL), // p_1157->g_863
        (VECTOR(uint32_t, 2))(7UL, 9UL), // p_1157->g_864
        (VECTOR(uint16_t, 2))(0xCE09L, 65535UL), // p_1157->g_865
        (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 0L), 0L), // p_1157->g_890
        (VECTOR(uint8_t, 2))(0xCCL, 5UL), // p_1157->g_912
        (VECTOR(uint64_t, 16))(0x360702560A12A230L, (VECTOR(uint64_t, 4))(0x360702560A12A230L, (VECTOR(uint64_t, 2))(0x360702560A12A230L, 0x754501A1489241E2L), 0x754501A1489241E2L), 0x754501A1489241E2L, 0x360702560A12A230L, 0x754501A1489241E2L, (VECTOR(uint64_t, 2))(0x360702560A12A230L, 0x754501A1489241E2L), (VECTOR(uint64_t, 2))(0x360702560A12A230L, 0x754501A1489241E2L), 0x360702560A12A230L, 0x754501A1489241E2L, 0x360702560A12A230L, 0x754501A1489241E2L), // p_1157->g_917
        (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0x0BL), 0x0BL), // p_1157->g_934
        (VECTOR(uint64_t, 4))(6UL, (VECTOR(uint64_t, 2))(6UL, 18446744073709551612UL), 18446744073709551612UL), // p_1157->g_955
        (VECTOR(int64_t, 16))(3L, (VECTOR(int64_t, 4))(3L, (VECTOR(int64_t, 2))(3L, 0x687F62F13D214110L), 0x687F62F13D214110L), 0x687F62F13D214110L, 3L, 0x687F62F13D214110L, (VECTOR(int64_t, 2))(3L, 0x687F62F13D214110L), (VECTOR(int64_t, 2))(3L, 0x687F62F13D214110L), 3L, 0x687F62F13D214110L, 3L, 0x687F62F13D214110L), // p_1157->g_982
        0x28L, // p_1157->g_993
        (VECTOR(uint16_t, 16))(6UL, (VECTOR(uint16_t, 4))(6UL, (VECTOR(uint16_t, 2))(6UL, 0UL), 0UL), 0UL, 6UL, 0UL, (VECTOR(uint16_t, 2))(6UL, 0UL), (VECTOR(uint16_t, 2))(6UL, 0UL), 6UL, 0UL, 6UL, 0UL), // p_1157->g_999
        (VECTOR(int8_t, 8))(0x5DL, (VECTOR(int8_t, 4))(0x5DL, (VECTOR(int8_t, 2))(0x5DL, 9L), 9L), 9L, 0x5DL, 9L), // p_1157->g_1019
        (VECTOR(int16_t, 4))(2L, (VECTOR(int16_t, 2))(2L, (-1L)), (-1L)), // p_1157->g_1038
        0L, // p_1157->g_1075
        0x70L, // p_1157->g_1099
        (VECTOR(uint16_t, 2))(0x5544L, 65535UL), // p_1157->g_1107
        &p_1157->g_181, // p_1157->g_1150
        &p_1157->g_340, // p_1157->g_1155
        &p_1157->g_1155, // p_1157->g_1154
        sequence_input[get_global_id(0)], // p_1157->global_0_offset
        sequence_input[get_global_id(1)], // p_1157->global_1_offset
        sequence_input[get_global_id(2)], // p_1157->global_2_offset
        sequence_input[get_local_id(0)], // p_1157->local_0_offset
        sequence_input[get_local_id(1)], // p_1157->local_1_offset
        sequence_input[get_local_id(2)], // p_1157->local_2_offset
        sequence_input[get_group_id(0)], // p_1157->group_0_offset
        sequence_input[get_group_id(1)], // p_1157->group_1_offset
        sequence_input[get_group_id(2)], // p_1157->group_2_offset
    };
    c_1158 = c_1159;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1157);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1157->g_2, "p_1157->g_2", print_hash_value);
    transparent_crc(p_1157->g_8, "p_1157->g_8", print_hash_value);
    transparent_crc(p_1157->g_12, "p_1157->g_12", print_hash_value);
    transparent_crc(p_1157->g_48, "p_1157->g_48", print_hash_value);
    transparent_crc(p_1157->g_59, "p_1157->g_59", print_hash_value);
    transparent_crc(p_1157->g_61, "p_1157->g_61", print_hash_value);
    transparent_crc(p_1157->g_64, "p_1157->g_64", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_1157->g_73[i][j][k], "p_1157->g_73[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1157->g_83.s0, "p_1157->g_83.s0", print_hash_value);
    transparent_crc(p_1157->g_83.s1, "p_1157->g_83.s1", print_hash_value);
    transparent_crc(p_1157->g_83.s2, "p_1157->g_83.s2", print_hash_value);
    transparent_crc(p_1157->g_83.s3, "p_1157->g_83.s3", print_hash_value);
    transparent_crc(p_1157->g_83.s4, "p_1157->g_83.s4", print_hash_value);
    transparent_crc(p_1157->g_83.s5, "p_1157->g_83.s5", print_hash_value);
    transparent_crc(p_1157->g_83.s6, "p_1157->g_83.s6", print_hash_value);
    transparent_crc(p_1157->g_83.s7, "p_1157->g_83.s7", print_hash_value);
    transparent_crc(p_1157->g_83.s8, "p_1157->g_83.s8", print_hash_value);
    transparent_crc(p_1157->g_83.s9, "p_1157->g_83.s9", print_hash_value);
    transparent_crc(p_1157->g_83.sa, "p_1157->g_83.sa", print_hash_value);
    transparent_crc(p_1157->g_83.sb, "p_1157->g_83.sb", print_hash_value);
    transparent_crc(p_1157->g_83.sc, "p_1157->g_83.sc", print_hash_value);
    transparent_crc(p_1157->g_83.sd, "p_1157->g_83.sd", print_hash_value);
    transparent_crc(p_1157->g_83.se, "p_1157->g_83.se", print_hash_value);
    transparent_crc(p_1157->g_83.sf, "p_1157->g_83.sf", print_hash_value);
    transparent_crc(p_1157->g_85, "p_1157->g_85", print_hash_value);
    transparent_crc(p_1157->g_87, "p_1157->g_87", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_1157->g_96[i], "p_1157->g_96[i]", print_hash_value);

    }
    transparent_crc(p_1157->g_98, "p_1157->g_98", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_1157->g_171[i], "p_1157->g_171[i]", print_hash_value);

    }
    transparent_crc(p_1157->g_178, "p_1157->g_178", print_hash_value);
    transparent_crc(p_1157->g_187.s0, "p_1157->g_187.s0", print_hash_value);
    transparent_crc(p_1157->g_187.s1, "p_1157->g_187.s1", print_hash_value);
    transparent_crc(p_1157->g_187.s2, "p_1157->g_187.s2", print_hash_value);
    transparent_crc(p_1157->g_187.s3, "p_1157->g_187.s3", print_hash_value);
    transparent_crc(p_1157->g_187.s4, "p_1157->g_187.s4", print_hash_value);
    transparent_crc(p_1157->g_187.s5, "p_1157->g_187.s5", print_hash_value);
    transparent_crc(p_1157->g_187.s6, "p_1157->g_187.s6", print_hash_value);
    transparent_crc(p_1157->g_187.s7, "p_1157->g_187.s7", print_hash_value);
    transparent_crc(p_1157->g_187.s8, "p_1157->g_187.s8", print_hash_value);
    transparent_crc(p_1157->g_187.s9, "p_1157->g_187.s9", print_hash_value);
    transparent_crc(p_1157->g_187.sa, "p_1157->g_187.sa", print_hash_value);
    transparent_crc(p_1157->g_187.sb, "p_1157->g_187.sb", print_hash_value);
    transparent_crc(p_1157->g_187.sc, "p_1157->g_187.sc", print_hash_value);
    transparent_crc(p_1157->g_187.sd, "p_1157->g_187.sd", print_hash_value);
    transparent_crc(p_1157->g_187.se, "p_1157->g_187.se", print_hash_value);
    transparent_crc(p_1157->g_187.sf, "p_1157->g_187.sf", print_hash_value);
    transparent_crc(p_1157->g_203.x, "p_1157->g_203.x", print_hash_value);
    transparent_crc(p_1157->g_203.y, "p_1157->g_203.y", print_hash_value);
    transparent_crc(p_1157->g_203.z, "p_1157->g_203.z", print_hash_value);
    transparent_crc(p_1157->g_203.w, "p_1157->g_203.w", print_hash_value);
    transparent_crc(p_1157->g_204.s0, "p_1157->g_204.s0", print_hash_value);
    transparent_crc(p_1157->g_204.s1, "p_1157->g_204.s1", print_hash_value);
    transparent_crc(p_1157->g_204.s2, "p_1157->g_204.s2", print_hash_value);
    transparent_crc(p_1157->g_204.s3, "p_1157->g_204.s3", print_hash_value);
    transparent_crc(p_1157->g_204.s4, "p_1157->g_204.s4", print_hash_value);
    transparent_crc(p_1157->g_204.s5, "p_1157->g_204.s5", print_hash_value);
    transparent_crc(p_1157->g_204.s6, "p_1157->g_204.s6", print_hash_value);
    transparent_crc(p_1157->g_204.s7, "p_1157->g_204.s7", print_hash_value);
    transparent_crc(p_1157->g_207.s0, "p_1157->g_207.s0", print_hash_value);
    transparent_crc(p_1157->g_207.s1, "p_1157->g_207.s1", print_hash_value);
    transparent_crc(p_1157->g_207.s2, "p_1157->g_207.s2", print_hash_value);
    transparent_crc(p_1157->g_207.s3, "p_1157->g_207.s3", print_hash_value);
    transparent_crc(p_1157->g_207.s4, "p_1157->g_207.s4", print_hash_value);
    transparent_crc(p_1157->g_207.s5, "p_1157->g_207.s5", print_hash_value);
    transparent_crc(p_1157->g_207.s6, "p_1157->g_207.s6", print_hash_value);
    transparent_crc(p_1157->g_207.s7, "p_1157->g_207.s7", print_hash_value);
    transparent_crc(p_1157->g_207.s8, "p_1157->g_207.s8", print_hash_value);
    transparent_crc(p_1157->g_207.s9, "p_1157->g_207.s9", print_hash_value);
    transparent_crc(p_1157->g_207.sa, "p_1157->g_207.sa", print_hash_value);
    transparent_crc(p_1157->g_207.sb, "p_1157->g_207.sb", print_hash_value);
    transparent_crc(p_1157->g_207.sc, "p_1157->g_207.sc", print_hash_value);
    transparent_crc(p_1157->g_207.sd, "p_1157->g_207.sd", print_hash_value);
    transparent_crc(p_1157->g_207.se, "p_1157->g_207.se", print_hash_value);
    transparent_crc(p_1157->g_207.sf, "p_1157->g_207.sf", print_hash_value);
    transparent_crc(p_1157->g_209, "p_1157->g_209", print_hash_value);
    transparent_crc(p_1157->g_215, "p_1157->g_215", print_hash_value);
    transparent_crc(p_1157->g_243.s0, "p_1157->g_243.s0", print_hash_value);
    transparent_crc(p_1157->g_243.s1, "p_1157->g_243.s1", print_hash_value);
    transparent_crc(p_1157->g_243.s2, "p_1157->g_243.s2", print_hash_value);
    transparent_crc(p_1157->g_243.s3, "p_1157->g_243.s3", print_hash_value);
    transparent_crc(p_1157->g_243.s4, "p_1157->g_243.s4", print_hash_value);
    transparent_crc(p_1157->g_243.s5, "p_1157->g_243.s5", print_hash_value);
    transparent_crc(p_1157->g_243.s6, "p_1157->g_243.s6", print_hash_value);
    transparent_crc(p_1157->g_243.s7, "p_1157->g_243.s7", print_hash_value);
    transparent_crc(p_1157->g_243.s8, "p_1157->g_243.s8", print_hash_value);
    transparent_crc(p_1157->g_243.s9, "p_1157->g_243.s9", print_hash_value);
    transparent_crc(p_1157->g_243.sa, "p_1157->g_243.sa", print_hash_value);
    transparent_crc(p_1157->g_243.sb, "p_1157->g_243.sb", print_hash_value);
    transparent_crc(p_1157->g_243.sc, "p_1157->g_243.sc", print_hash_value);
    transparent_crc(p_1157->g_243.sd, "p_1157->g_243.sd", print_hash_value);
    transparent_crc(p_1157->g_243.se, "p_1157->g_243.se", print_hash_value);
    transparent_crc(p_1157->g_243.sf, "p_1157->g_243.sf", print_hash_value);
    transparent_crc(p_1157->g_273, "p_1157->g_273", print_hash_value);
    transparent_crc(p_1157->g_274.x, "p_1157->g_274.x", print_hash_value);
    transparent_crc(p_1157->g_274.y, "p_1157->g_274.y", print_hash_value);
    transparent_crc(p_1157->g_274.z, "p_1157->g_274.z", print_hash_value);
    transparent_crc(p_1157->g_274.w, "p_1157->g_274.w", print_hash_value);
    transparent_crc(p_1157->g_278.s0, "p_1157->g_278.s0", print_hash_value);
    transparent_crc(p_1157->g_278.s1, "p_1157->g_278.s1", print_hash_value);
    transparent_crc(p_1157->g_278.s2, "p_1157->g_278.s2", print_hash_value);
    transparent_crc(p_1157->g_278.s3, "p_1157->g_278.s3", print_hash_value);
    transparent_crc(p_1157->g_278.s4, "p_1157->g_278.s4", print_hash_value);
    transparent_crc(p_1157->g_278.s5, "p_1157->g_278.s5", print_hash_value);
    transparent_crc(p_1157->g_278.s6, "p_1157->g_278.s6", print_hash_value);
    transparent_crc(p_1157->g_278.s7, "p_1157->g_278.s7", print_hash_value);
    transparent_crc(p_1157->g_278.s8, "p_1157->g_278.s8", print_hash_value);
    transparent_crc(p_1157->g_278.s9, "p_1157->g_278.s9", print_hash_value);
    transparent_crc(p_1157->g_278.sa, "p_1157->g_278.sa", print_hash_value);
    transparent_crc(p_1157->g_278.sb, "p_1157->g_278.sb", print_hash_value);
    transparent_crc(p_1157->g_278.sc, "p_1157->g_278.sc", print_hash_value);
    transparent_crc(p_1157->g_278.sd, "p_1157->g_278.sd", print_hash_value);
    transparent_crc(p_1157->g_278.se, "p_1157->g_278.se", print_hash_value);
    transparent_crc(p_1157->g_278.sf, "p_1157->g_278.sf", print_hash_value);
    transparent_crc(p_1157->g_295.s0, "p_1157->g_295.s0", print_hash_value);
    transparent_crc(p_1157->g_295.s1, "p_1157->g_295.s1", print_hash_value);
    transparent_crc(p_1157->g_295.s2, "p_1157->g_295.s2", print_hash_value);
    transparent_crc(p_1157->g_295.s3, "p_1157->g_295.s3", print_hash_value);
    transparent_crc(p_1157->g_295.s4, "p_1157->g_295.s4", print_hash_value);
    transparent_crc(p_1157->g_295.s5, "p_1157->g_295.s5", print_hash_value);
    transparent_crc(p_1157->g_295.s6, "p_1157->g_295.s6", print_hash_value);
    transparent_crc(p_1157->g_295.s7, "p_1157->g_295.s7", print_hash_value);
    transparent_crc(p_1157->g_295.s8, "p_1157->g_295.s8", print_hash_value);
    transparent_crc(p_1157->g_295.s9, "p_1157->g_295.s9", print_hash_value);
    transparent_crc(p_1157->g_295.sa, "p_1157->g_295.sa", print_hash_value);
    transparent_crc(p_1157->g_295.sb, "p_1157->g_295.sb", print_hash_value);
    transparent_crc(p_1157->g_295.sc, "p_1157->g_295.sc", print_hash_value);
    transparent_crc(p_1157->g_295.sd, "p_1157->g_295.sd", print_hash_value);
    transparent_crc(p_1157->g_295.se, "p_1157->g_295.se", print_hash_value);
    transparent_crc(p_1157->g_295.sf, "p_1157->g_295.sf", print_hash_value);
    transparent_crc(p_1157->g_314, "p_1157->g_314", print_hash_value);
    transparent_crc(p_1157->g_316, "p_1157->g_316", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_1157->g_326[i][j], "p_1157->g_326[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1157->g_329, "p_1157->g_329", print_hash_value);
    transparent_crc(p_1157->g_336.x, "p_1157->g_336.x", print_hash_value);
    transparent_crc(p_1157->g_336.y, "p_1157->g_336.y", print_hash_value);
    transparent_crc(p_1157->g_337.s0, "p_1157->g_337.s0", print_hash_value);
    transparent_crc(p_1157->g_337.s1, "p_1157->g_337.s1", print_hash_value);
    transparent_crc(p_1157->g_337.s2, "p_1157->g_337.s2", print_hash_value);
    transparent_crc(p_1157->g_337.s3, "p_1157->g_337.s3", print_hash_value);
    transparent_crc(p_1157->g_337.s4, "p_1157->g_337.s4", print_hash_value);
    transparent_crc(p_1157->g_337.s5, "p_1157->g_337.s5", print_hash_value);
    transparent_crc(p_1157->g_337.s6, "p_1157->g_337.s6", print_hash_value);
    transparent_crc(p_1157->g_337.s7, "p_1157->g_337.s7", print_hash_value);
    transparent_crc(p_1157->g_337.s8, "p_1157->g_337.s8", print_hash_value);
    transparent_crc(p_1157->g_337.s9, "p_1157->g_337.s9", print_hash_value);
    transparent_crc(p_1157->g_337.sa, "p_1157->g_337.sa", print_hash_value);
    transparent_crc(p_1157->g_337.sb, "p_1157->g_337.sb", print_hash_value);
    transparent_crc(p_1157->g_337.sc, "p_1157->g_337.sc", print_hash_value);
    transparent_crc(p_1157->g_337.sd, "p_1157->g_337.sd", print_hash_value);
    transparent_crc(p_1157->g_337.se, "p_1157->g_337.se", print_hash_value);
    transparent_crc(p_1157->g_337.sf, "p_1157->g_337.sf", print_hash_value);
    transparent_crc(p_1157->g_368.x, "p_1157->g_368.x", print_hash_value);
    transparent_crc(p_1157->g_368.y, "p_1157->g_368.y", print_hash_value);
    transparent_crc(p_1157->g_433.x, "p_1157->g_433.x", print_hash_value);
    transparent_crc(p_1157->g_433.y, "p_1157->g_433.y", print_hash_value);
    transparent_crc(p_1157->g_437.x, "p_1157->g_437.x", print_hash_value);
    transparent_crc(p_1157->g_437.y, "p_1157->g_437.y", print_hash_value);
    transparent_crc(p_1157->g_437.z, "p_1157->g_437.z", print_hash_value);
    transparent_crc(p_1157->g_437.w, "p_1157->g_437.w", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1157->g_472[i].f0, "p_1157->g_472[i].f0", print_hash_value);

    }
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 10; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_1157->g_474[i][j][k].f0, "p_1157->g_474[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_1157->g_475.f0, "p_1157->g_475.f0", print_hash_value);
    transparent_crc(p_1157->g_476.f0, "p_1157->g_476.f0", print_hash_value);
    transparent_crc(p_1157->g_477.f0, "p_1157->g_477.f0", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_1157->g_478[i].f0, "p_1157->g_478[i].f0", print_hash_value);

    }
    transparent_crc(p_1157->g_479.f0, "p_1157->g_479.f0", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1157->g_480[i].f0, "p_1157->g_480[i].f0", print_hash_value);

    }
    transparent_crc(p_1157->g_481.f0, "p_1157->g_481.f0", print_hash_value);
    transparent_crc(p_1157->g_482.f0, "p_1157->g_482.f0", print_hash_value);
    transparent_crc(p_1157->g_483.f0, "p_1157->g_483.f0", print_hash_value);
    transparent_crc(p_1157->g_488, "p_1157->g_488", print_hash_value);
    transparent_crc(p_1157->g_494.x, "p_1157->g_494.x", print_hash_value);
    transparent_crc(p_1157->g_494.y, "p_1157->g_494.y", print_hash_value);
    transparent_crc(p_1157->g_494.z, "p_1157->g_494.z", print_hash_value);
    transparent_crc(p_1157->g_494.w, "p_1157->g_494.w", print_hash_value);
    transparent_crc(p_1157->g_503.x, "p_1157->g_503.x", print_hash_value);
    transparent_crc(p_1157->g_503.y, "p_1157->g_503.y", print_hash_value);
    transparent_crc(p_1157->g_503.z, "p_1157->g_503.z", print_hash_value);
    transparent_crc(p_1157->g_503.w, "p_1157->g_503.w", print_hash_value);
    transparent_crc(p_1157->g_520.x, "p_1157->g_520.x", print_hash_value);
    transparent_crc(p_1157->g_520.y, "p_1157->g_520.y", print_hash_value);
    transparent_crc(p_1157->g_526, "p_1157->g_526", print_hash_value);
    transparent_crc(p_1157->g_581.s0, "p_1157->g_581.s0", print_hash_value);
    transparent_crc(p_1157->g_581.s1, "p_1157->g_581.s1", print_hash_value);
    transparent_crc(p_1157->g_581.s2, "p_1157->g_581.s2", print_hash_value);
    transparent_crc(p_1157->g_581.s3, "p_1157->g_581.s3", print_hash_value);
    transparent_crc(p_1157->g_581.s4, "p_1157->g_581.s4", print_hash_value);
    transparent_crc(p_1157->g_581.s5, "p_1157->g_581.s5", print_hash_value);
    transparent_crc(p_1157->g_581.s6, "p_1157->g_581.s6", print_hash_value);
    transparent_crc(p_1157->g_581.s7, "p_1157->g_581.s7", print_hash_value);
    transparent_crc(p_1157->g_582.x, "p_1157->g_582.x", print_hash_value);
    transparent_crc(p_1157->g_582.y, "p_1157->g_582.y", print_hash_value);
    transparent_crc(p_1157->g_582.z, "p_1157->g_582.z", print_hash_value);
    transparent_crc(p_1157->g_582.w, "p_1157->g_582.w", print_hash_value);
    transparent_crc(p_1157->g_583.s0, "p_1157->g_583.s0", print_hash_value);
    transparent_crc(p_1157->g_583.s1, "p_1157->g_583.s1", print_hash_value);
    transparent_crc(p_1157->g_583.s2, "p_1157->g_583.s2", print_hash_value);
    transparent_crc(p_1157->g_583.s3, "p_1157->g_583.s3", print_hash_value);
    transparent_crc(p_1157->g_583.s4, "p_1157->g_583.s4", print_hash_value);
    transparent_crc(p_1157->g_583.s5, "p_1157->g_583.s5", print_hash_value);
    transparent_crc(p_1157->g_583.s6, "p_1157->g_583.s6", print_hash_value);
    transparent_crc(p_1157->g_583.s7, "p_1157->g_583.s7", print_hash_value);
    transparent_crc(p_1157->g_586.s0, "p_1157->g_586.s0", print_hash_value);
    transparent_crc(p_1157->g_586.s1, "p_1157->g_586.s1", print_hash_value);
    transparent_crc(p_1157->g_586.s2, "p_1157->g_586.s2", print_hash_value);
    transparent_crc(p_1157->g_586.s3, "p_1157->g_586.s3", print_hash_value);
    transparent_crc(p_1157->g_586.s4, "p_1157->g_586.s4", print_hash_value);
    transparent_crc(p_1157->g_586.s5, "p_1157->g_586.s5", print_hash_value);
    transparent_crc(p_1157->g_586.s6, "p_1157->g_586.s6", print_hash_value);
    transparent_crc(p_1157->g_586.s7, "p_1157->g_586.s7", print_hash_value);
    transparent_crc(p_1157->g_599, "p_1157->g_599", print_hash_value);
    transparent_crc(p_1157->g_631.x, "p_1157->g_631.x", print_hash_value);
    transparent_crc(p_1157->g_631.y, "p_1157->g_631.y", print_hash_value);
    transparent_crc(p_1157->g_631.z, "p_1157->g_631.z", print_hash_value);
    transparent_crc(p_1157->g_631.w, "p_1157->g_631.w", print_hash_value);
    transparent_crc(p_1157->g_654.s0, "p_1157->g_654.s0", print_hash_value);
    transparent_crc(p_1157->g_654.s1, "p_1157->g_654.s1", print_hash_value);
    transparent_crc(p_1157->g_654.s2, "p_1157->g_654.s2", print_hash_value);
    transparent_crc(p_1157->g_654.s3, "p_1157->g_654.s3", print_hash_value);
    transparent_crc(p_1157->g_654.s4, "p_1157->g_654.s4", print_hash_value);
    transparent_crc(p_1157->g_654.s5, "p_1157->g_654.s5", print_hash_value);
    transparent_crc(p_1157->g_654.s6, "p_1157->g_654.s6", print_hash_value);
    transparent_crc(p_1157->g_654.s7, "p_1157->g_654.s7", print_hash_value);
    transparent_crc(p_1157->g_673, "p_1157->g_673", print_hash_value);
    transparent_crc(p_1157->g_674.x, "p_1157->g_674.x", print_hash_value);
    transparent_crc(p_1157->g_674.y, "p_1157->g_674.y", print_hash_value);
    transparent_crc(p_1157->g_674.z, "p_1157->g_674.z", print_hash_value);
    transparent_crc(p_1157->g_674.w, "p_1157->g_674.w", print_hash_value);
    transparent_crc(p_1157->g_707.s0, "p_1157->g_707.s0", print_hash_value);
    transparent_crc(p_1157->g_707.s1, "p_1157->g_707.s1", print_hash_value);
    transparent_crc(p_1157->g_707.s2, "p_1157->g_707.s2", print_hash_value);
    transparent_crc(p_1157->g_707.s3, "p_1157->g_707.s3", print_hash_value);
    transparent_crc(p_1157->g_707.s4, "p_1157->g_707.s4", print_hash_value);
    transparent_crc(p_1157->g_707.s5, "p_1157->g_707.s5", print_hash_value);
    transparent_crc(p_1157->g_707.s6, "p_1157->g_707.s6", print_hash_value);
    transparent_crc(p_1157->g_707.s7, "p_1157->g_707.s7", print_hash_value);
    transparent_crc(p_1157->g_707.s8, "p_1157->g_707.s8", print_hash_value);
    transparent_crc(p_1157->g_707.s9, "p_1157->g_707.s9", print_hash_value);
    transparent_crc(p_1157->g_707.sa, "p_1157->g_707.sa", print_hash_value);
    transparent_crc(p_1157->g_707.sb, "p_1157->g_707.sb", print_hash_value);
    transparent_crc(p_1157->g_707.sc, "p_1157->g_707.sc", print_hash_value);
    transparent_crc(p_1157->g_707.sd, "p_1157->g_707.sd", print_hash_value);
    transparent_crc(p_1157->g_707.se, "p_1157->g_707.se", print_hash_value);
    transparent_crc(p_1157->g_707.sf, "p_1157->g_707.sf", print_hash_value);
    transparent_crc(p_1157->g_726.s0, "p_1157->g_726.s0", print_hash_value);
    transparent_crc(p_1157->g_726.s1, "p_1157->g_726.s1", print_hash_value);
    transparent_crc(p_1157->g_726.s2, "p_1157->g_726.s2", print_hash_value);
    transparent_crc(p_1157->g_726.s3, "p_1157->g_726.s3", print_hash_value);
    transparent_crc(p_1157->g_726.s4, "p_1157->g_726.s4", print_hash_value);
    transparent_crc(p_1157->g_726.s5, "p_1157->g_726.s5", print_hash_value);
    transparent_crc(p_1157->g_726.s6, "p_1157->g_726.s6", print_hash_value);
    transparent_crc(p_1157->g_726.s7, "p_1157->g_726.s7", print_hash_value);
    transparent_crc(p_1157->g_727.s0, "p_1157->g_727.s0", print_hash_value);
    transparent_crc(p_1157->g_727.s1, "p_1157->g_727.s1", print_hash_value);
    transparent_crc(p_1157->g_727.s2, "p_1157->g_727.s2", print_hash_value);
    transparent_crc(p_1157->g_727.s3, "p_1157->g_727.s3", print_hash_value);
    transparent_crc(p_1157->g_727.s4, "p_1157->g_727.s4", print_hash_value);
    transparent_crc(p_1157->g_727.s5, "p_1157->g_727.s5", print_hash_value);
    transparent_crc(p_1157->g_727.s6, "p_1157->g_727.s6", print_hash_value);
    transparent_crc(p_1157->g_727.s7, "p_1157->g_727.s7", print_hash_value);
    transparent_crc(p_1157->g_779.s0, "p_1157->g_779.s0", print_hash_value);
    transparent_crc(p_1157->g_779.s1, "p_1157->g_779.s1", print_hash_value);
    transparent_crc(p_1157->g_779.s2, "p_1157->g_779.s2", print_hash_value);
    transparent_crc(p_1157->g_779.s3, "p_1157->g_779.s3", print_hash_value);
    transparent_crc(p_1157->g_779.s4, "p_1157->g_779.s4", print_hash_value);
    transparent_crc(p_1157->g_779.s5, "p_1157->g_779.s5", print_hash_value);
    transparent_crc(p_1157->g_779.s6, "p_1157->g_779.s6", print_hash_value);
    transparent_crc(p_1157->g_779.s7, "p_1157->g_779.s7", print_hash_value);
    transparent_crc(p_1157->g_779.s8, "p_1157->g_779.s8", print_hash_value);
    transparent_crc(p_1157->g_779.s9, "p_1157->g_779.s9", print_hash_value);
    transparent_crc(p_1157->g_779.sa, "p_1157->g_779.sa", print_hash_value);
    transparent_crc(p_1157->g_779.sb, "p_1157->g_779.sb", print_hash_value);
    transparent_crc(p_1157->g_779.sc, "p_1157->g_779.sc", print_hash_value);
    transparent_crc(p_1157->g_779.sd, "p_1157->g_779.sd", print_hash_value);
    transparent_crc(p_1157->g_779.se, "p_1157->g_779.se", print_hash_value);
    transparent_crc(p_1157->g_779.sf, "p_1157->g_779.sf", print_hash_value);
    transparent_crc(p_1157->g_815.x, "p_1157->g_815.x", print_hash_value);
    transparent_crc(p_1157->g_815.y, "p_1157->g_815.y", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1157->g_827[i], "p_1157->g_827[i]", print_hash_value);

    }
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 7; k++)
            {
                transparent_crc(p_1157->g_830[i][j][k], "p_1157->g_830[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1157->g_846.s0, "p_1157->g_846.s0", print_hash_value);
    transparent_crc(p_1157->g_846.s1, "p_1157->g_846.s1", print_hash_value);
    transparent_crc(p_1157->g_846.s2, "p_1157->g_846.s2", print_hash_value);
    transparent_crc(p_1157->g_846.s3, "p_1157->g_846.s3", print_hash_value);
    transparent_crc(p_1157->g_846.s4, "p_1157->g_846.s4", print_hash_value);
    transparent_crc(p_1157->g_846.s5, "p_1157->g_846.s5", print_hash_value);
    transparent_crc(p_1157->g_846.s6, "p_1157->g_846.s6", print_hash_value);
    transparent_crc(p_1157->g_846.s7, "p_1157->g_846.s7", print_hash_value);
    transparent_crc(p_1157->g_846.s8, "p_1157->g_846.s8", print_hash_value);
    transparent_crc(p_1157->g_846.s9, "p_1157->g_846.s9", print_hash_value);
    transparent_crc(p_1157->g_846.sa, "p_1157->g_846.sa", print_hash_value);
    transparent_crc(p_1157->g_846.sb, "p_1157->g_846.sb", print_hash_value);
    transparent_crc(p_1157->g_846.sc, "p_1157->g_846.sc", print_hash_value);
    transparent_crc(p_1157->g_846.sd, "p_1157->g_846.sd", print_hash_value);
    transparent_crc(p_1157->g_846.se, "p_1157->g_846.se", print_hash_value);
    transparent_crc(p_1157->g_846.sf, "p_1157->g_846.sf", print_hash_value);
    transparent_crc(p_1157->g_847.s0, "p_1157->g_847.s0", print_hash_value);
    transparent_crc(p_1157->g_847.s1, "p_1157->g_847.s1", print_hash_value);
    transparent_crc(p_1157->g_847.s2, "p_1157->g_847.s2", print_hash_value);
    transparent_crc(p_1157->g_847.s3, "p_1157->g_847.s3", print_hash_value);
    transparent_crc(p_1157->g_847.s4, "p_1157->g_847.s4", print_hash_value);
    transparent_crc(p_1157->g_847.s5, "p_1157->g_847.s5", print_hash_value);
    transparent_crc(p_1157->g_847.s6, "p_1157->g_847.s6", print_hash_value);
    transparent_crc(p_1157->g_847.s7, "p_1157->g_847.s7", print_hash_value);
    transparent_crc(p_1157->g_847.s8, "p_1157->g_847.s8", print_hash_value);
    transparent_crc(p_1157->g_847.s9, "p_1157->g_847.s9", print_hash_value);
    transparent_crc(p_1157->g_847.sa, "p_1157->g_847.sa", print_hash_value);
    transparent_crc(p_1157->g_847.sb, "p_1157->g_847.sb", print_hash_value);
    transparent_crc(p_1157->g_847.sc, "p_1157->g_847.sc", print_hash_value);
    transparent_crc(p_1157->g_847.sd, "p_1157->g_847.sd", print_hash_value);
    transparent_crc(p_1157->g_847.se, "p_1157->g_847.se", print_hash_value);
    transparent_crc(p_1157->g_847.sf, "p_1157->g_847.sf", print_hash_value);
    transparent_crc(p_1157->g_863.x, "p_1157->g_863.x", print_hash_value);
    transparent_crc(p_1157->g_863.y, "p_1157->g_863.y", print_hash_value);
    transparent_crc(p_1157->g_863.z, "p_1157->g_863.z", print_hash_value);
    transparent_crc(p_1157->g_863.w, "p_1157->g_863.w", print_hash_value);
    transparent_crc(p_1157->g_864.x, "p_1157->g_864.x", print_hash_value);
    transparent_crc(p_1157->g_864.y, "p_1157->g_864.y", print_hash_value);
    transparent_crc(p_1157->g_865.x, "p_1157->g_865.x", print_hash_value);
    transparent_crc(p_1157->g_865.y, "p_1157->g_865.y", print_hash_value);
    transparent_crc(p_1157->g_890.x, "p_1157->g_890.x", print_hash_value);
    transparent_crc(p_1157->g_890.y, "p_1157->g_890.y", print_hash_value);
    transparent_crc(p_1157->g_890.z, "p_1157->g_890.z", print_hash_value);
    transparent_crc(p_1157->g_890.w, "p_1157->g_890.w", print_hash_value);
    transparent_crc(p_1157->g_912.x, "p_1157->g_912.x", print_hash_value);
    transparent_crc(p_1157->g_912.y, "p_1157->g_912.y", print_hash_value);
    transparent_crc(p_1157->g_917.s0, "p_1157->g_917.s0", print_hash_value);
    transparent_crc(p_1157->g_917.s1, "p_1157->g_917.s1", print_hash_value);
    transparent_crc(p_1157->g_917.s2, "p_1157->g_917.s2", print_hash_value);
    transparent_crc(p_1157->g_917.s3, "p_1157->g_917.s3", print_hash_value);
    transparent_crc(p_1157->g_917.s4, "p_1157->g_917.s4", print_hash_value);
    transparent_crc(p_1157->g_917.s5, "p_1157->g_917.s5", print_hash_value);
    transparent_crc(p_1157->g_917.s6, "p_1157->g_917.s6", print_hash_value);
    transparent_crc(p_1157->g_917.s7, "p_1157->g_917.s7", print_hash_value);
    transparent_crc(p_1157->g_917.s8, "p_1157->g_917.s8", print_hash_value);
    transparent_crc(p_1157->g_917.s9, "p_1157->g_917.s9", print_hash_value);
    transparent_crc(p_1157->g_917.sa, "p_1157->g_917.sa", print_hash_value);
    transparent_crc(p_1157->g_917.sb, "p_1157->g_917.sb", print_hash_value);
    transparent_crc(p_1157->g_917.sc, "p_1157->g_917.sc", print_hash_value);
    transparent_crc(p_1157->g_917.sd, "p_1157->g_917.sd", print_hash_value);
    transparent_crc(p_1157->g_917.se, "p_1157->g_917.se", print_hash_value);
    transparent_crc(p_1157->g_917.sf, "p_1157->g_917.sf", print_hash_value);
    transparent_crc(p_1157->g_934.x, "p_1157->g_934.x", print_hash_value);
    transparent_crc(p_1157->g_934.y, "p_1157->g_934.y", print_hash_value);
    transparent_crc(p_1157->g_934.z, "p_1157->g_934.z", print_hash_value);
    transparent_crc(p_1157->g_934.w, "p_1157->g_934.w", print_hash_value);
    transparent_crc(p_1157->g_955.x, "p_1157->g_955.x", print_hash_value);
    transparent_crc(p_1157->g_955.y, "p_1157->g_955.y", print_hash_value);
    transparent_crc(p_1157->g_955.z, "p_1157->g_955.z", print_hash_value);
    transparent_crc(p_1157->g_955.w, "p_1157->g_955.w", print_hash_value);
    transparent_crc(p_1157->g_982.s0, "p_1157->g_982.s0", print_hash_value);
    transparent_crc(p_1157->g_982.s1, "p_1157->g_982.s1", print_hash_value);
    transparent_crc(p_1157->g_982.s2, "p_1157->g_982.s2", print_hash_value);
    transparent_crc(p_1157->g_982.s3, "p_1157->g_982.s3", print_hash_value);
    transparent_crc(p_1157->g_982.s4, "p_1157->g_982.s4", print_hash_value);
    transparent_crc(p_1157->g_982.s5, "p_1157->g_982.s5", print_hash_value);
    transparent_crc(p_1157->g_982.s6, "p_1157->g_982.s6", print_hash_value);
    transparent_crc(p_1157->g_982.s7, "p_1157->g_982.s7", print_hash_value);
    transparent_crc(p_1157->g_982.s8, "p_1157->g_982.s8", print_hash_value);
    transparent_crc(p_1157->g_982.s9, "p_1157->g_982.s9", print_hash_value);
    transparent_crc(p_1157->g_982.sa, "p_1157->g_982.sa", print_hash_value);
    transparent_crc(p_1157->g_982.sb, "p_1157->g_982.sb", print_hash_value);
    transparent_crc(p_1157->g_982.sc, "p_1157->g_982.sc", print_hash_value);
    transparent_crc(p_1157->g_982.sd, "p_1157->g_982.sd", print_hash_value);
    transparent_crc(p_1157->g_982.se, "p_1157->g_982.se", print_hash_value);
    transparent_crc(p_1157->g_982.sf, "p_1157->g_982.sf", print_hash_value);
    transparent_crc(p_1157->g_993, "p_1157->g_993", print_hash_value);
    transparent_crc(p_1157->g_999.s0, "p_1157->g_999.s0", print_hash_value);
    transparent_crc(p_1157->g_999.s1, "p_1157->g_999.s1", print_hash_value);
    transparent_crc(p_1157->g_999.s2, "p_1157->g_999.s2", print_hash_value);
    transparent_crc(p_1157->g_999.s3, "p_1157->g_999.s3", print_hash_value);
    transparent_crc(p_1157->g_999.s4, "p_1157->g_999.s4", print_hash_value);
    transparent_crc(p_1157->g_999.s5, "p_1157->g_999.s5", print_hash_value);
    transparent_crc(p_1157->g_999.s6, "p_1157->g_999.s6", print_hash_value);
    transparent_crc(p_1157->g_999.s7, "p_1157->g_999.s7", print_hash_value);
    transparent_crc(p_1157->g_999.s8, "p_1157->g_999.s8", print_hash_value);
    transparent_crc(p_1157->g_999.s9, "p_1157->g_999.s9", print_hash_value);
    transparent_crc(p_1157->g_999.sa, "p_1157->g_999.sa", print_hash_value);
    transparent_crc(p_1157->g_999.sb, "p_1157->g_999.sb", print_hash_value);
    transparent_crc(p_1157->g_999.sc, "p_1157->g_999.sc", print_hash_value);
    transparent_crc(p_1157->g_999.sd, "p_1157->g_999.sd", print_hash_value);
    transparent_crc(p_1157->g_999.se, "p_1157->g_999.se", print_hash_value);
    transparent_crc(p_1157->g_999.sf, "p_1157->g_999.sf", print_hash_value);
    transparent_crc(p_1157->g_1019.s0, "p_1157->g_1019.s0", print_hash_value);
    transparent_crc(p_1157->g_1019.s1, "p_1157->g_1019.s1", print_hash_value);
    transparent_crc(p_1157->g_1019.s2, "p_1157->g_1019.s2", print_hash_value);
    transparent_crc(p_1157->g_1019.s3, "p_1157->g_1019.s3", print_hash_value);
    transparent_crc(p_1157->g_1019.s4, "p_1157->g_1019.s4", print_hash_value);
    transparent_crc(p_1157->g_1019.s5, "p_1157->g_1019.s5", print_hash_value);
    transparent_crc(p_1157->g_1019.s6, "p_1157->g_1019.s6", print_hash_value);
    transparent_crc(p_1157->g_1019.s7, "p_1157->g_1019.s7", print_hash_value);
    transparent_crc(p_1157->g_1038.x, "p_1157->g_1038.x", print_hash_value);
    transparent_crc(p_1157->g_1038.y, "p_1157->g_1038.y", print_hash_value);
    transparent_crc(p_1157->g_1038.z, "p_1157->g_1038.z", print_hash_value);
    transparent_crc(p_1157->g_1038.w, "p_1157->g_1038.w", print_hash_value);
    transparent_crc(p_1157->g_1075, "p_1157->g_1075", print_hash_value);
    transparent_crc(p_1157->g_1099, "p_1157->g_1099", print_hash_value);
    transparent_crc(p_1157->g_1107.x, "p_1157->g_1107.x", print_hash_value);
    transparent_crc(p_1157->g_1107.y, "p_1157->g_1107.y", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
