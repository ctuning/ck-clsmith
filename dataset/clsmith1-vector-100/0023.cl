// ---fake_divergence -g 80,85,1 -l 1,5,1
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


// Seed: 23

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   int8_t * f0;
   uint32_t  f1;
   uint32_t  f2;
};

union U1 {
   int8_t * f0;
};

struct S2 {
    int8_t g_26;
    int32_t g_32;
    int8_t * volatile g_34;
    int8_t * volatile *g_33;
    VECTOR(int32_t, 4) g_48;
    int16_t g_73;
    int8_t *g_83;
    int8_t **g_82;
    union U0 g_85;
    union U1 g_86;
    int32_t * volatile g_90;
    int32_t g_107;
    int32_t * volatile g_117;
    int32_t g_127[7];
    int32_t ** volatile g_141;
    int32_t *g_144[8];
    int32_t ** volatile g_143;
    uint16_t g_200;
    volatile int32_t g_209;
    int8_t g_223;
    int8_t *g_222;
    volatile VECTOR(uint8_t, 4) g_232;
    int64_t g_237;
    int64_t *g_236[3];
    VECTOR(uint16_t, 2) g_256;
    int32_t g_283[8][10][2];
    volatile uint16_t g_291;
    VECTOR(int32_t, 2) g_298;
    uint8_t g_309;
    VECTOR(uint16_t, 2) g_314;
    volatile VECTOR(int16_t, 8) g_315;
    uint64_t g_319;
    union U0 *g_323;
    union U0 ** volatile g_322[2];
    volatile int32_t g_347[1][7];
    int64_t * volatile *g_350;
    int32_t * volatile g_360;
    int32_t * volatile g_362[10][9][2];
    volatile VECTOR(int32_t, 16) g_365;
    volatile VECTOR(uint32_t, 4) g_372;
    VECTOR(int32_t, 8) g_375;
    VECTOR(uint8_t, 4) g_379;
    int32_t g_381[7];
    uint64_t g_383;
    int32_t *g_420;
    int32_t ** volatile g_419;
    int32_t * volatile g_433;
    int32_t ** volatile g_466;
    VECTOR(int16_t, 16) g_541;
    uint64_t g_556[6][9];
    VECTOR(int8_t, 4) g_559;
    volatile VECTOR(int8_t, 8) g_560;
    volatile VECTOR(int8_t, 8) g_561;
    int32_t * volatile g_570[2][4][1];
    int32_t * volatile g_571;
    union U1 *g_573;
    union U1 ** volatile g_572;
    volatile VECTOR(int8_t, 16) g_601;
    volatile VECTOR(int64_t, 8) g_716;
    VECTOR(int64_t, 8) g_720;
    volatile VECTOR(int32_t, 8) g_791;
    volatile VECTOR(int16_t, 4) g_801;
    int32_t g_807;
    VECTOR(int8_t, 8) g_822;
    int32_t g_833;
    union U0 **g_866;
    VECTOR(uint32_t, 8) g_872;
    VECTOR(uint32_t, 16) g_873;
    VECTOR(int32_t, 4) g_903;
    int32_t ** volatile g_909;
    int32_t ** volatile g_926;
    VECTOR(uint32_t, 8) g_965;
    uint64_t *g_992;
    VECTOR(int32_t, 16) g_1021;
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
uint32_t  func_1(struct S2 * p_1042);
uint8_t  func_4(int8_t * p_5, uint32_t  p_6, uint64_t  p_7, int8_t * p_8, int64_t  p_9, struct S2 * p_1042);
int8_t  func_12(int8_t * p_13, uint16_t  p_14, uint32_t  p_15, int8_t * p_16, uint16_t  p_17, struct S2 * p_1042);
int8_t * func_18(uint8_t  p_19, uint32_t  p_20, int8_t  p_21, int64_t  p_22, int8_t * p_23, struct S2 * p_1042);
uint8_t  func_27(int8_t * p_28, struct S2 * p_1042);
uint16_t  func_36(int8_t  p_37, struct S2 * p_1042);
int32_t * func_38(int8_t * p_39, uint8_t  p_40, struct S2 * p_1042);
int8_t * func_49(int8_t ** p_50, uint16_t  p_51, struct S2 * p_1042);
int8_t ** func_52(int64_t  p_53, int8_t ** p_54, int16_t  p_55, int64_t  p_56, struct S2 * p_1042);
int8_t ** func_57(uint32_t  p_58, union U1  p_59, int32_t  p_60, uint32_t  p_61, uint64_t  p_62, struct S2 * p_1042);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1042->g_33 p_1042->g_32 p_1042->g_34 p_1042->g_26 p_1042->g_375 p_1042->g_82 p_1042->g_83 p_1042->g_381 p_1042->g_117 p_1042->g_107 p_1042->g_314 p_1042->g_256 p_1042->g_347 p_1042->g_222 p_1042->g_223 p_1042->g_466 p_1042->g_48 p_1042->g_85 p_1042->g_86 p_1042->g_143 p_1042->g_73 p_1042->g_144 p_1042->g_298 p_1042->g_283 p_1042->g_315 p_1042->g_209 p_1042->g_127 p_1042->g_319 p_1042->g_350 p_1042->g_365 p_1042->g_372 p_1042->g_379 p_1042->g_383 p_1042->g_419 p_1042->g_237 p_1042->g_309 p_1042->g_541 p_1042->g_559 p_1042->g_560 p_1042->g_561 p_1042->g_572 p_1042->g_420 p_1042->g_291 p_1042->g_573 p_1042->g_822 p_1042->g_833 p_1042->g_716 p_1042->g_791 p_1042->g_872 p_1042->g_873 p_1042->g_232 p_1042->g_801 p_1042->g_866 p_1042->g_323 p_1042->g_720 p_1042->g_903 p_1042->g_909 p_1042->g_926 p_1042->g_965 p_1042->g_556 p_1042->g_1021 p_1042->g_807
 * writes: p_1042->g_32 p_1042->g_33 p_1042->g_381 p_1042->g_237 p_1042->g_107 p_1042->g_223 p_1042->g_73 p_1042->g_144 p_1042->g_420 p_1042->g_82 p_1042->g_83 p_1042->g_309 p_1042->g_319 p_1042->g_323 p_1042->g_236 p_1042->g_383 p_1042->g_26 p_1042->g_556 p_1042->g_573 p_1042->g_314 p_1042->g_541 p_1042->g_866 p_1042->g_127 p_1042->g_85.f2 p_1042->g_992 p_1042->g_200 p_1042->g_807
 */
uint32_t  func_1(struct S2 * p_1042)
{ /* block id: 4 */
    int8_t *l_25 = &p_1042->g_26;
    int8_t **l_24 = &l_25;
    int8_t *l_29[5] = {&p_1042->g_26,&p_1042->g_26,&p_1042->g_26,&p_1042->g_26,&p_1042->g_26};
    VECTOR(uint32_t, 8) l_867 = (VECTOR(uint32_t, 8))(0x6BDFDEA3L, (VECTOR(uint32_t, 4))(0x6BDFDEA3L, (VECTOR(uint32_t, 2))(0x6BDFDEA3L, 4294967295UL), 4294967295UL), 4294967295UL, 0x6BDFDEA3L, 4294967295UL);
    uint8_t l_994 = 0x43L;
    int8_t l_995 = 0x4CL;
    int32_t *l_1028 = (void*)0;
    int32_t *l_1029 = &p_1042->g_807;
    int16_t *l_1037 = &p_1042->g_73;
    int16_t **l_1036 = &l_1037;
    int i;
    (*l_1029) |= (((safe_sub_func_uint8_t_u_u(func_4(((+(safe_mod_func_uint8_t_u_u((func_12(func_18((((*l_24) = (void*)0) == &p_1042->g_26), (247UL ^ func_27(l_29[0], p_1042)), ((func_36((*p_1042->g_34), p_1042) > (((-6L) | (((VECTOR(uint32_t, 8))(l_867.s53370313)).s4 , (-1L))) & l_867.s5)) != l_867.s2), l_867.s0, p_1042->g_222, p_1042), p_1042->g_559.w, l_867.s0, p_1042->g_222, p_1042->g_872.s2, p_1042) < l_867.s6), l_994))) , (void*)0), p_1042->g_298.x, l_995, &l_995, l_867.s2, p_1042), l_994)) > p_1042->g_379.x) != l_867.s7);
    (*l_1029) = (!((safe_rshift_func_int8_t_s_s((((safe_lshift_func_uint8_t_u_u((safe_lshift_func_int8_t_s_u((*l_1029), 2)), p_1042->g_223)) , (((*l_1036) = &p_1042->g_73) != &p_1042->g_73)) >= (safe_div_func_int8_t_s_s((safe_rshift_func_uint16_t_u_s(65531UL, 9)), p_1042->g_381[1]))), 2)) , (-9L)));
    return p_1042->g_48.w;
}


/* ------------------------------------------ */
/* 
 * reads : p_1042->g_572 p_1042->g_573 p_1042->g_309 p_1042->g_86 p_1042->g_1021 p_1042->g_965 p_1042->g_82 p_1042->g_83 p_1042->g_222 p_1042->g_223 p_1042->g_314 p_1042->g_26 p_1042->g_48
 * writes: p_1042->g_309 p_1042->g_200
 */
uint8_t  func_4(int8_t * p_5, uint32_t  p_6, uint64_t  p_7, int8_t * p_8, int64_t  p_9, struct S2 * p_1042)
{ /* block id: 384 */
    union U1 *l_1012 = &p_1042->g_86;
    uint8_t *l_1015 = &p_1042->g_309;
    int32_t l_1016 = 0x7A097A0FL;
    uint16_t *l_1022[1];
    int32_t *l_1023 = (void*)0;
    int32_t *l_1024[5];
    uint8_t l_1025 = 0UL;
    int16_t l_1026 = 0x2C3EL;
    int64_t l_1027 = 0L;
    int i;
    for (i = 0; i < 1; i++)
        l_1022[i] = (void*)0;
    for (i = 0; i < 5; i++)
        l_1024[i] = (void*)0;
    l_1025 ^= (safe_add_func_int8_t_s_s(((safe_mul_func_uint16_t_u_u(((safe_mul_func_int8_t_s_s((((safe_mul_func_uint8_t_u_u((safe_div_func_uint64_t_u_u((safe_mul_func_int8_t_s_s((safe_lshift_func_uint16_t_u_s((p_1042->g_200 = (((safe_sub_func_uint64_t_u_u((((((*p_1042->g_572) == l_1012) <= (p_6 , (((safe_mul_func_uint8_t_u_u(((*l_1015) ^= GROUP_DIVERGE(2, 1)), ((*l_1012) , 2UL))) == (l_1016 & ((l_1015 == ((safe_add_func_uint16_t_u_u((((*p_8) = (safe_div_func_int16_t_s_s((l_1016 == (((VECTOR(int32_t, 4))(p_1042->g_1021.sd024)).w & 8UL)), p_1042->g_965.s5))) & 248UL), l_1016)) , (*p_1042->g_82))) <= 0x0EL))) && l_1016))) == (-4L)) > l_1016), l_1016)) & 0x234B4EFD1E4246BAL) == GROUP_DIVERGE(2, 1))), 8)), (*p_1042->g_222))), p_1042->g_314.x)), (*p_1042->g_83))) | p_7) && p_1042->g_48.w), 0x77L)) || 0x097BC3A8L), l_1016)) & l_1016), 1L));
    l_1026 ^= 1L;
    return l_1027;
}


/* ------------------------------------------ */
/* 
 * reads : p_1042->g_866 p_1042->g_323 p_1042->g_801 p_1042->g_372 p_1042->g_559 p_1042->g_720 p_1042->g_223 p_1042->g_26 p_1042->g_903 p_1042->g_909 p_1042->g_32 p_1042->g_283 p_1042->g_420 p_1042->g_82 p_1042->g_83 p_1042->g_572 p_1042->g_573 p_1042->g_86 p_1042->g_375 p_1042->g_381 p_1042->g_117 p_1042->g_107 p_1042->g_314 p_1042->g_256 p_1042->g_347 p_1042->g_222 p_1042->g_926 p_1042->g_309 p_1042->g_965 p_1042->g_365 p_1042->g_833 p_1042->g_298 p_1042->g_419 p_1042->g_556
 * writes: p_1042->g_323 p_1042->g_73 p_1042->g_127 p_1042->g_420 p_1042->g_32 p_1042->g_26 p_1042->g_381 p_1042->g_237 p_1042->g_107 p_1042->g_223 p_1042->g_144 p_1042->g_573 p_1042->g_85.f2 p_1042->g_992
 */
int8_t  func_12(int8_t * p_13, uint16_t  p_14, uint32_t  p_15, int8_t * p_16, uint16_t  p_17, struct S2 * p_1042)
{ /* block id: 335 */
    int64_t l_891 = 0x27AE233D1B073709L;
    VECTOR(uint16_t, 8) l_892 = (VECTOR(uint16_t, 8))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0xA06AL), 0xA06AL), 0xA06AL, 0UL, 0xA06AL);
    union U0 l_897[9] = {{0},{0},{0},{0},{0},{0},{0},{0},{0}};
    int16_t *l_900 = &p_1042->g_73;
    int32_t *l_901 = &p_1042->g_127[3];
    union U1 l_902[2] = {{0},{0}};
    int32_t l_904 = 0x25D1AADEL;
    int32_t *l_907 = &p_1042->g_32;
    uint16_t l_951 = 7UL;
    VECTOR(uint32_t, 16) l_966 = (VECTOR(uint32_t, 16))(8UL, (VECTOR(uint32_t, 4))(8UL, (VECTOR(uint32_t, 2))(8UL, 0x4F74E733L), 0x4F74E733L), 0x4F74E733L, 8UL, 0x4F74E733L, (VECTOR(uint32_t, 2))(8UL, 0x4F74E733L), (VECTOR(uint32_t, 2))(8UL, 0x4F74E733L), 8UL, 0x4F74E733L, 8UL, 0x4F74E733L);
    VECTOR(int32_t, 4) l_981 = (VECTOR(int32_t, 4))(0x538E1A02L, (VECTOR(int32_t, 2))(0x538E1A02L, (-1L)), (-1L));
    int i;
    if ((safe_mod_func_int16_t_s_s((((*p_1042->g_866) = (*p_1042->g_866)) == ((((*l_901) = ((((p_1042->g_801.y && (((((~(safe_div_func_uint16_t_u_u(0x3FEAL, l_891))) <= ((((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 16))(l_892.s0123534330172155)).s13c9)).y && (((*l_900) = (safe_rshift_func_uint8_t_u_s(((safe_lshift_func_uint8_t_u_u(((l_897[2] , p_1042->g_372.x) <= p_17), (safe_sub_func_uint8_t_u_u(p_1042->g_559.x, (p_1042->g_720.s5 < (*p_16)))))) != p_14), 3))) || GROUP_DIVERGE(2, 1))) && (*p_13))) == 0x40L) <= 0L) < l_892.s3)) < 18446744073709551615UL) , 0x01CDL) & p_14)) , l_902[0]) , (void*)0)), l_891)))
    { /* block id: 339 */
        int32_t *l_905 = &l_904;
        int32_t **l_906[4] = {&p_1042->g_144[0],&p_1042->g_144[0],&p_1042->g_144[0],&p_1042->g_144[0]};
        int i;
        l_904 ^= ((VECTOR(int32_t, 16))(p_1042->g_903.yyxzwzzzxyzxwyzw)).sd;
        l_907 = l_905;
        return (*p_13);
    }
    else
    { /* block id: 343 */
        int32_t **l_908 = (void*)0;
        VECTOR(uint16_t, 2) l_912 = (VECTOR(uint16_t, 2))(65535UL, 1UL);
        uint8_t l_922[6][10][4] = {{{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL}},{{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL}},{{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL}},{{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL}},{{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL}},{{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL},{0xBAL,254UL,249UL,0UL}}};
        uint64_t l_931 = 0x2F23C5DB622DC477L;
        VECTOR(uint64_t, 4) l_939 = (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 18446744073709551615UL), 18446744073709551615UL);
        int32_t l_954 = 0x39E222A6L;
        VECTOR(int32_t, 4) l_980 = (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 7L), 7L);
        uint64_t *l_991 = &p_1042->g_556[4][7];
        int32_t *l_993 = (void*)0;
        int i, j, k;
        (*p_1042->g_909) = &l_904;
        if ((safe_sub_func_int64_t_s_s(9L, ((*l_907) || ((VECTOR(int16_t, 8))((((VECTOR(uint16_t, 4))(l_912.xyyx)).x , p_17), ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(0x520AL, (-5L))).xxyyyxyy)).hi)), ((VECTOR(int16_t, 2))(0x6DF3L, 0L)), 0x0F94L)).s1))))
        { /* block id: 345 */
            int8_t l_917 = 0x59L;
            VECTOR(int32_t, 8) l_925 = (VECTOR(int32_t, 8))(0x03B3F126L, (VECTOR(int32_t, 4))(0x03B3F126L, (VECTOR(int32_t, 2))(0x03B3F126L, 0x4EDE3AB9L), 0x4EDE3AB9L), 0x4EDE3AB9L, 0x03B3F126L, 0x4EDE3AB9L);
            int i;
            (*p_1042->g_420) = (safe_mod_func_int16_t_s_s((4UL & (4294967288UL <= ((*l_907) = (safe_lshift_func_uint8_t_u_u(l_917, 1))))), p_1042->g_283[5][7][1]));
            (*p_1042->g_926) = func_38((*p_1042->g_82), ((0x4DCA91EBL & (((**p_1042->g_572) , (safe_mod_func_uint64_t_u_u((((safe_rshift_func_uint8_t_u_u((l_922[3][9][3] || ((*p_13) = (safe_mod_func_int8_t_s_s((&p_1042->g_73 == l_900), l_917)))), 3)) == 252UL) | (((VECTOR(int32_t, 16))(l_925.s0137402577247640)).s6 , 0xC7L)), p_1042->g_375.s3))) >= 1UL)) || p_1042->g_903.w), p_1042);
        }
        else
        { /* block id: 350 */
            union U0 l_934 = {0};
            int32_t l_944 = 7L;
            uint32_t *l_947 = &p_1042->g_85.f2;
            uint32_t *l_948 = (void*)0;
            uint32_t *l_949 = &p_1042->g_85.f2;
            uint32_t *l_950 = (void*)0;
            int32_t ***l_958 = &l_908;
            int32_t ****l_957 = &l_958;
            uint32_t *l_967 = (void*)0;
            uint32_t *l_968 = &l_897[2].f2;
            uint32_t *l_969 = &l_897[2].f2;
            int32_t l_977 = 0x6A9B79C5L;
            int32_t *l_983 = &p_1042->g_807;
            uint16_t *l_984 = (void*)0;
            l_954 |= (safe_add_func_int32_t_s_s(((*l_907) = ((*p_1042->g_420) ^= (((*l_900) = p_1042->g_372.y) > (safe_rshift_func_int16_t_s_u(l_931, 14))))), ((!p_17) ^ ((safe_add_func_uint64_t_u_u((l_934 , p_14), (safe_sub_func_uint8_t_u_u(0xDFL, ((safe_div_func_uint16_t_u_u((((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(l_939.yw)).xxyxyxyy)).s6 == (safe_lshift_func_uint8_t_u_s((FAKE_DIVERGE(p_1042->global_1_offset, get_global_id(1), 10) == (safe_sub_func_uint8_t_u_u((l_944 ^ ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(mad_hi(((VECTOR(uint16_t, 2))(0x6763L, 65531UL)).yxxy, ((VECTOR(uint16_t, 16))(hadd(((VECTOR(uint16_t, 8))(mad_hi(((VECTOR(uint16_t, 8))(p_1042->g_309, 1UL, 0x61BAL, 0x17F6L, ((safe_div_func_int32_t_s_s((((l_951--) < 0x6A4608F7L) > p_15), GROUP_DIVERGE(2, 1))) & p_17), 0xDE51L, 0UL, 0x5A71L)), ((VECTOR(uint16_t, 8))(0x7270L)), ((VECTOR(uint16_t, 8))(0UL))))).s2701250253264450, ((VECTOR(uint16_t, 16))(0x8878L))))).sb6a5, ((VECTOR(uint16_t, 4))(0xE3AAL))))).zxzyzzwzyyxywzww)).s9), l_944))), 6))), l_912.x)) < p_15))))) , FAKE_DIVERGE(p_1042->local_0_offset, get_local_id(0), 10)))));
            if (((0L > ((((((&p_1042->g_419 == ((*l_957) = (void*)0)) && (0L && ((safe_lshift_func_uint8_t_u_s(0x23L, ((*p_1042->g_222) &= (((VECTOR(uint64_t, 2))(0xDCC2613C25C591C2L, 0UL)).even , (p_15 > (safe_mod_func_int32_t_s_s(((VECTOR(int32_t, 2))(rhadd(((VECTOR(int32_t, 2))(hadd(((VECTOR(int32_t, 4))((&p_14 != &p_1042->g_200), ((VECTOR(int32_t, 2))(mul_hi(((VECTOR(int32_t, 8))(safe_clamp_func(VECTOR(int32_t, 8),int32_t,((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(mad_sat(((VECTOR(int32_t, 4))(add_sat(((VECTOR(int32_t, 16))(upsample(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))((safe_div_func_uint32_t_u_u(((VECTOR(uint32_t, 16))(p_1042->g_965.s5310103455355412)).se, ((*l_907) |= ((VECTOR(uint32_t, 16))(l_966.s1de9ef2b9d2bdce7)).sf))), ((safe_lshift_func_int8_t_s_u((safe_unary_minus_func_int8_t_s((GROUP_DIVERGE(2, 1) <= p_1042->g_365.s1))), p_14)) == 0x5279L), 0x022FL, ((VECTOR(int16_t, 4))(0x047CL)), 6L)).s14)).yxxxxyxyyxxxxxyx, ((VECTOR(uint16_t, 16))(0x632EL))))).sd045, ((VECTOR(int32_t, 4))(1L))))), ((VECTOR(int32_t, 4))(0x58652B83L)), ((VECTOR(int32_t, 4))(4L))))))).yyyxzyzx)), (int32_t)(*l_907), (int32_t)(*l_907)))).s46, ((VECTOR(int32_t, 2))(0x12995029L))))), 0x46E351D3L)).odd, ((VECTOR(int32_t, 2))(0L))))), ((VECTOR(int32_t, 2))(4L))))).lo, 0x5FD177BBL))))))) > p_1042->g_833))) ^ p_1042->g_309) | p_1042->g_298.y) , (void*)0) != (void*)0)) , 0x30F19462L))
            { /* block id: 359 */
                union U1 **l_973 = &p_1042->g_573;
                int32_t **l_974 = &l_907;
                (*l_973) = (void*)0;
                (*l_974) = &l_904;
            }
            else
            { /* block id: 362 */
                (*l_907) = (**p_1042->g_419);
            }
            if (((safe_sub_func_int16_t_s_s(p_1042->g_556[1][4], l_977)) <= ((*l_947) = 4294967290UL)))
            { /* block id: 366 */
                (*l_907) &= (1L & 0xDDC85293L);
                for (p_17 = 1; (p_17 < 55); ++p_17)
                { /* block id: 370 */
                    int32_t **l_982[3];
                    int i;
                    for (i = 0; i < 3; i++)
                        l_982[i] = &p_1042->g_144[7];
                    (*l_907) = ((VECTOR(int32_t, 16))(mul_hi(((VECTOR(int32_t, 4))(l_980.zyyx)).ywyyxyxxxxyxywyz, ((VECTOR(int32_t, 2))(l_981.yy)).xyxxxxyyxxyxyyxy))).s8;
                    if ((*l_907))
                        continue;
                    l_983 = (void*)0;
                }
                (*l_907) = ((l_984 != &p_1042->g_291) >= p_17);
                l_993 = func_38((*p_1042->g_82), (((-1L) && (safe_mul_func_int16_t_s_s((0x221BL != p_1042->g_372.x), p_17))) < (p_1042->g_903.y & (safe_mul_func_uint8_t_u_u(((safe_lshift_func_int8_t_s_u((&p_1042->g_556[4][8] != (p_1042->g_992 = l_991)), 3)) , 0xD4L), (*p_16))))), p_1042);
            }
            else
            { /* block id: 378 */
                return (*p_16);
            }
        }
    }
    return (*p_16);
}


/* ------------------------------------------ */
/* 
 * reads : p_1042->g_107 p_1042->g_872 p_1042->g_873 p_1042->g_232 p_1042->g_801
 * writes: p_1042->g_107
 */
int8_t * func_18(uint8_t  p_19, uint32_t  p_20, int8_t  p_21, int64_t  p_22, int8_t * p_23, struct S2 * p_1042)
{ /* block id: 330 */
    int32_t l_882 = (-7L);
    int32_t l_883 = 3L;
    union U0 l_884 = {0};
    int32_t *l_885 = &p_1042->g_107;
    int8_t *l_886 = &p_1042->g_26;
    l_883 = (safe_mul_func_uint16_t_u_u((safe_rshift_func_int16_t_s_s(p_1042->g_107, 3)), ((((VECTOR(uint32_t, 16))(safe_mad24_func_uint32_t_u_u_u(VECTOR(uint32_t, 16),((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 8))(p_1042->g_872.s22562453)))).s4353313165014502, ((VECTOR(uint32_t, 4))(0x1705FBD6L, ((VECTOR(uint32_t, 2))(sub_sat(((VECTOR(uint32_t, 8))(4294967294UL, ((VECTOR(uint32_t, 4))(mul_hi(((VECTOR(uint32_t, 4))(p_1042->g_873.s36b1)), ((VECTOR(uint32_t, 16))((safe_mod_func_uint32_t_u_u((((VECTOR(uint32_t, 4))(p_21, 4294967286UL, 4294967294UL, 0xEF49CEFCL)).z , ((p_20 <= 0x6A8AD5FFA08F8340L) ^ ((safe_rshift_func_int16_t_s_u(0x7C67L, ((((safe_lshift_func_int16_t_s_u(0x0983L, p_1042->g_232.z)) , ((safe_mod_func_uint16_t_u_u(l_882, p_22)) , 0x37134C87DD147735L)) , 1L) < l_882))) != 0x41365C4FAE72FDA8L))), l_882)), 0x42584651L, p_1042->g_801.z, ((VECTOR(uint32_t, 8))(0xDE918F67L)), 0x4B6E40D2L, 0xB77C9C16L, ((VECTOR(uint32_t, 2))(0x9530305FL)), 0x008B10C7L)).s10f2))), ((VECTOR(uint32_t, 2))(0x7495C8B5L)), 0UL)).s25, ((VECTOR(uint32_t, 2))(6UL))))), 3UL)).zyxzzxxwxwzzxzzz, ((VECTOR(uint32_t, 16))(4294967287UL))))).s8 , 0x922C00F2B9EFE67DL) , l_882)));
    l_883 &= (l_884 , 0x3B5AE74FL);
    (*l_885) = (p_20 >= 0x76D749D2CAE17BB2L);
    return l_886;
}


/* ------------------------------------------ */
/* 
 * reads : p_1042->g_33 p_1042->g_32
 * writes: p_1042->g_32 p_1042->g_33
 */
uint8_t  func_27(int8_t * p_28, struct S2 * p_1042)
{ /* block id: 6 */
    int8_t l_30 = 0x1CL;
    int32_t *l_31 = &p_1042->g_32;
    int8_t * volatile **l_35 = &p_1042->g_33;
    (*l_31) = l_30;
    (*l_35) = p_1042->g_33;
    return (*l_31);
}


/* ------------------------------------------ */
/* 
 * reads : p_1042->g_375 p_1042->g_82 p_1042->g_83 p_1042->g_381 p_1042->g_117 p_1042->g_107 p_1042->g_314 p_1042->g_256 p_1042->g_347 p_1042->g_222 p_1042->g_223 p_1042->g_466 p_1042->g_309 p_1042->g_383 p_1042->g_26 p_1042->g_127 p_1042->g_541 p_1042->g_559 p_1042->g_560 p_1042->g_561 p_1042->g_315 p_1042->g_379 p_1042->g_283 p_1042->g_572 p_1042->g_419 p_1042->g_420 p_1042->g_291 p_1042->g_48 p_1042->g_34 p_1042->g_573 p_1042->g_86 p_1042->g_822 p_1042->g_833 p_1042->g_716 p_1042->g_791 p_1042->g_85 p_1042->g_143 p_1042->g_73 p_1042->g_144 p_1042->g_298 p_1042->g_209 p_1042->g_319 p_1042->g_350 p_1042->g_365 p_1042->g_372 p_1042->g_237
 * writes: p_1042->g_381 p_1042->g_237 p_1042->g_107 p_1042->g_223 p_1042->g_73 p_1042->g_144 p_1042->g_420 p_1042->g_383 p_1042->g_26 p_1042->g_556 p_1042->g_573 p_1042->g_309 p_1042->g_319 p_1042->g_314 p_1042->g_541 p_1042->g_866 p_1042->g_82 p_1042->g_83 p_1042->g_323 p_1042->g_236
 */
uint16_t  func_36(int8_t  p_37, struct S2 * p_1042)
{ /* block id: 10 */
    int8_t *l_41 = &p_1042->g_26;
    uint32_t l_42 = 0xE1BFEDAAL;
    int32_t **l_465 = &p_1042->g_144[0];
    int32_t *l_467 = &p_1042->g_107;
    union U0 l_470[8] = {{0},{0},{0},{0},{0},{0},{0},{0}};
    uint8_t l_477 = 252UL;
    uint64_t *l_480[4][2] = {{&p_1042->g_319,&p_1042->g_383},{&p_1042->g_319,&p_1042->g_383},{&p_1042->g_319,&p_1042->g_383},{&p_1042->g_319,&p_1042->g_383}};
    int32_t *l_483 = (void*)0;
    int32_t l_484 = 7L;
    int32_t l_486 = 0x66DB8714L;
    int32_t l_487 = 0L;
    uint8_t l_488[4][10][1] = {{{0x7DL},{0x7DL},{0x7DL},{0x7DL},{0x7DL},{0x7DL},{0x7DL},{0x7DL},{0x7DL},{0x7DL}},{{0x7DL},{0x7DL},{0x7DL},{0x7DL},{0x7DL},{0x7DL},{0x7DL},{0x7DL},{0x7DL},{0x7DL}},{{0x7DL},{0x7DL},{0x7DL},{0x7DL},{0x7DL},{0x7DL},{0x7DL},{0x7DL},{0x7DL},{0x7DL}},{{0x7DL},{0x7DL},{0x7DL},{0x7DL},{0x7DL},{0x7DL},{0x7DL},{0x7DL},{0x7DL},{0x7DL}}};
    VECTOR(int32_t, 16) l_505 = (VECTOR(int32_t, 16))(0x7D0F05DEL, (VECTOR(int32_t, 4))(0x7D0F05DEL, (VECTOR(int32_t, 2))(0x7D0F05DEL, 0x1DAADF07L), 0x1DAADF07L), 0x1DAADF07L, 0x7D0F05DEL, 0x1DAADF07L, (VECTOR(int32_t, 2))(0x7D0F05DEL, 0x1DAADF07L), (VECTOR(int32_t, 2))(0x7D0F05DEL, 0x1DAADF07L), 0x7D0F05DEL, 0x1DAADF07L, 0x7D0F05DEL, 0x1DAADF07L);
    VECTOR(uint64_t, 4) l_526 = (VECTOR(uint64_t, 4))(0x2B84763CBF6B3882L, (VECTOR(uint64_t, 2))(0x2B84763CBF6B3882L, 0x77470A64B0260B8DL), 0x77470A64B0260B8DL);
    VECTOR(int16_t, 2) l_542 = (VECTOR(int16_t, 2))((-8L), (-9L));
    VECTOR(int16_t, 4) l_546 = (VECTOR(int16_t, 4))(0x2B36L, (VECTOR(int16_t, 2))(0x2B36L, 1L), 1L);
    int16_t l_568 = 0x3FF6L;
    VECTOR(int8_t, 2) l_680 = (VECTOR(int8_t, 2))(1L, (-1L));
    int32_t **l_685[5];
    uint8_t l_687 = 0UL;
    uint32_t l_688 = 0x83CB3843L;
    VECTOR(int64_t, 2) l_721 = (VECTOR(int64_t, 2))(1L, 0L);
    int64_t l_726 = 0L;
    VECTOR(int32_t, 8) l_792 = (VECTOR(int32_t, 8))(0x19D3060AL, (VECTOR(int32_t, 4))(0x19D3060AL, (VECTOR(int32_t, 2))(0x19D3060AL, 0x3C88796CL), 0x3C88796CL), 0x3C88796CL, 0x19D3060AL, 0x3C88796CL);
    union U1 **l_806 = &p_1042->g_573;
    uint64_t l_810 = 1UL;
    int i, j, k;
    for (i = 0; i < 5; i++)
        l_685[i] = &l_483;
    (*p_1042->g_466) = ((*l_465) = func_38(l_41, l_42, p_1042));
lbl_529:
    (*l_465) = l_467;
    if ((l_484 = (safe_rshift_func_int16_t_s_s((l_470[1] , ((safe_div_func_int64_t_s_s((((p_37 < (safe_add_func_int64_t_s_s((~0x5D117469D4DF5E73L), ((((*l_467) = l_477) || ((safe_lshift_func_uint8_t_u_s(((p_1042->g_309 < (-6L)) >= p_37), 2)) , (((*p_1042->g_83) = ((p_1042->g_383 |= (!1UL)) , (safe_mul_func_int8_t_s_s((*p_1042->g_83), 0x0CL)))) > l_477))) ^ p_37)))) | p_37) | p_37), p_37)) < 0x7BE8L)), p_37))))
    { /* block id: 196 */
        int32_t *l_485[5];
        int i;
        for (i = 0; i < 5; i++)
            l_485[i] = &p_1042->g_381[1];
        ++l_488[1][2][0];
    }
    else
    { /* block id: 198 */
        VECTOR(int8_t, 4) l_500 = (VECTOR(int8_t, 4))(0x14L, (VECTOR(int8_t, 2))(0x14L, 0x5AL), 0x5AL);
        int16_t l_527 = (-5L);
        int32_t l_528 = 0x3FBB7A41L;
        VECTOR(int16_t, 8) l_544 = (VECTOR(int16_t, 8))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 1L), 1L), 1L, (-1L), 1L);
        uint64_t *l_600[2];
        VECTOR(int32_t, 2) l_626 = (VECTOR(int32_t, 2))(1L, (-8L));
        VECTOR(int64_t, 2) l_651 = (VECTOR(int64_t, 2))(0L, 0L);
        uint64_t **l_654 = (void*)0;
        uint64_t **l_655 = &l_600[1];
        uint32_t *l_656 = &l_470[1].f2;
        int32_t ***l_657 = &l_465;
        uint64_t *l_664 = &p_1042->g_319;
        uint8_t *l_665[3][10][7] = {{{(void*)0,(void*)0,(void*)0,&l_488[0][6][0],(void*)0,&l_488[1][6][0],(void*)0},{(void*)0,(void*)0,(void*)0,&l_488[0][6][0],(void*)0,&l_488[1][6][0],(void*)0},{(void*)0,(void*)0,(void*)0,&l_488[0][6][0],(void*)0,&l_488[1][6][0],(void*)0},{(void*)0,(void*)0,(void*)0,&l_488[0][6][0],(void*)0,&l_488[1][6][0],(void*)0},{(void*)0,(void*)0,(void*)0,&l_488[0][6][0],(void*)0,&l_488[1][6][0],(void*)0},{(void*)0,(void*)0,(void*)0,&l_488[0][6][0],(void*)0,&l_488[1][6][0],(void*)0},{(void*)0,(void*)0,(void*)0,&l_488[0][6][0],(void*)0,&l_488[1][6][0],(void*)0},{(void*)0,(void*)0,(void*)0,&l_488[0][6][0],(void*)0,&l_488[1][6][0],(void*)0},{(void*)0,(void*)0,(void*)0,&l_488[0][6][0],(void*)0,&l_488[1][6][0],(void*)0},{(void*)0,(void*)0,(void*)0,&l_488[0][6][0],(void*)0,&l_488[1][6][0],(void*)0}},{{(void*)0,(void*)0,(void*)0,&l_488[0][6][0],(void*)0,&l_488[1][6][0],(void*)0},{(void*)0,(void*)0,(void*)0,&l_488[0][6][0],(void*)0,&l_488[1][6][0],(void*)0},{(void*)0,(void*)0,(void*)0,&l_488[0][6][0],(void*)0,&l_488[1][6][0],(void*)0},{(void*)0,(void*)0,(void*)0,&l_488[0][6][0],(void*)0,&l_488[1][6][0],(void*)0},{(void*)0,(void*)0,(void*)0,&l_488[0][6][0],(void*)0,&l_488[1][6][0],(void*)0},{(void*)0,(void*)0,(void*)0,&l_488[0][6][0],(void*)0,&l_488[1][6][0],(void*)0},{(void*)0,(void*)0,(void*)0,&l_488[0][6][0],(void*)0,&l_488[1][6][0],(void*)0},{(void*)0,(void*)0,(void*)0,&l_488[0][6][0],(void*)0,&l_488[1][6][0],(void*)0},{(void*)0,(void*)0,(void*)0,&l_488[0][6][0],(void*)0,&l_488[1][6][0],(void*)0},{(void*)0,(void*)0,(void*)0,&l_488[0][6][0],(void*)0,&l_488[1][6][0],(void*)0}},{{(void*)0,(void*)0,(void*)0,&l_488[0][6][0],(void*)0,&l_488[1][6][0],(void*)0},{(void*)0,(void*)0,(void*)0,&l_488[0][6][0],(void*)0,&l_488[1][6][0],(void*)0},{(void*)0,(void*)0,(void*)0,&l_488[0][6][0],(void*)0,&l_488[1][6][0],(void*)0},{(void*)0,(void*)0,(void*)0,&l_488[0][6][0],(void*)0,&l_488[1][6][0],(void*)0},{(void*)0,(void*)0,(void*)0,&l_488[0][6][0],(void*)0,&l_488[1][6][0],(void*)0},{(void*)0,(void*)0,(void*)0,&l_488[0][6][0],(void*)0,&l_488[1][6][0],(void*)0},{(void*)0,(void*)0,(void*)0,&l_488[0][6][0],(void*)0,&l_488[1][6][0],(void*)0},{(void*)0,(void*)0,(void*)0,&l_488[0][6][0],(void*)0,&l_488[1][6][0],(void*)0},{(void*)0,(void*)0,(void*)0,&l_488[0][6][0],(void*)0,&l_488[1][6][0],(void*)0},{(void*)0,(void*)0,(void*)0,&l_488[0][6][0],(void*)0,&l_488[1][6][0],(void*)0}}};
        int32_t *l_666 = (void*)0;
        uint32_t l_676 = 0UL;
        VECTOR(int8_t, 8) l_777 = (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x28L), 0x28L), 0x28L, 1L, 0x28L);
        VECTOR(int8_t, 4) l_779 = (VECTOR(int8_t, 4))(6L, (VECTOR(int8_t, 2))(6L, 1L), 1L);
        VECTOR(int32_t, 4) l_819 = (VECTOR(int32_t, 4))(0x45962AF2L, (VECTOR(int32_t, 2))(0x45962AF2L, 0x4057D160L), 0x4057D160L);
        union U1 **l_829 = &p_1042->g_573;
        VECTOR(uint16_t, 4) l_842 = (VECTOR(uint16_t, 4))(6UL, (VECTOR(uint16_t, 2))(6UL, 0xD6F5L), 0xD6F5L);
        int32_t l_858 = 0x705AE015L;
        int i, j, k;
        for (i = 0; i < 2; i++)
            l_600[i] = &p_1042->g_556[1][4];
        for (p_1042->g_107 = 9; (p_1042->g_107 != (-14)); p_1042->g_107 = safe_sub_func_int32_t_s_s(p_1042->g_107, 9))
        { /* block id: 201 */
            VECTOR(uint16_t, 2) l_497 = (VECTOR(uint16_t, 2))(0x9410L, 65535UL);
            uint8_t *l_503 = &l_488[3][8][0];
            int32_t l_504 = 0x1EF9F708L;
            int32_t *l_537 = (void*)0;
            int32_t l_538 = 1L;
            VECTOR(int16_t, 8) l_543 = (VECTOR(int16_t, 8))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 1L), 1L), 1L, 1L, 1L);
            VECTOR(int16_t, 4) l_545 = (VECTOR(int16_t, 4))(0x795CL, (VECTOR(int16_t, 2))(0x795CL, (-1L)), (-1L));
            uint64_t *l_555 = &p_1042->g_556[1][4];
            int16_t *l_567[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
            int16_t **l_566 = &l_567[2];
            uint8_t l_569 = 255UL;
            int i;
            if ((safe_mod_func_int64_t_s_s((p_37 == (7UL && (safe_mul_func_uint16_t_u_u(p_1042->g_127[1], ((VECTOR(uint16_t, 4))(l_497.yyyy)).w)))), (l_504 = (safe_sub_func_int8_t_s_s(((VECTOR(int8_t, 16))(l_500.yxwwzzywzwzyzyyx)).s1, ((((((void*)0 == &p_1042->g_83) ^ GROUP_DIVERGE(0, 1)) & (-10L)) | (l_497.y <= (safe_lshift_func_uint8_t_u_s(((*l_503) ^= 255UL), (p_1042->g_223 <= p_37))))) , l_497.x)))))))
            { /* block id: 204 */
                uint16_t l_514 = 0UL;
                int32_t *l_515 = &p_1042->g_381[1];
                l_528 = ((VECTOR(int32_t, 8))(add_sat(((VECTOR(int32_t, 16))(l_505.sa3815870f8c7052b)).hi, ((VECTOR(int32_t, 8))(sub_sat(((VECTOR(int32_t, 4))((safe_mod_func_int16_t_s_s(((((safe_mul_func_uint8_t_u_u((safe_rshift_func_uint8_t_u_u(((safe_add_func_int32_t_s_s(l_514, ((*l_515) = 0x24C3BEF4L))) >= (safe_rshift_func_uint8_t_u_u(((!(((*l_467) == (!((GROUP_DIVERGE(0, 1) < (safe_rshift_func_uint8_t_u_u(p_1042->g_291, p_37))) & 0x3837L))) || p_1042->g_309)) , (safe_add_func_uint8_t_u_u(((*l_503) = (safe_sub_func_int8_t_s_s(((((safe_mod_func_int16_t_s_s(((l_504 &= (+(l_500.x <= (p_1042->g_383 ^= ((VECTOR(uint64_t, 8))(l_526.zwzwzyxz)).s7)))) ^ (l_527 , p_37)), p_1042->g_314.x)) || p_37) , p_1042->g_372.y) >= l_497.x), p_37))), 0x1FL))), FAKE_DIVERGE(p_1042->group_0_offset, get_group_id(0), 10)))), 6)), p_37)) & p_1042->g_237) , p_1042->g_381[6]) || p_37), 7L)), 0x726B40ADL, (-1L), (-1L))).wzzzzzxz, ((VECTOR(int32_t, 8))(0x3494BE3BL)))))))).s2;
                if (p_1042->g_223)
                    goto lbl_529;
            }
            else
            { /* block id: 211 */
                for (p_1042->g_383 = 0; (p_1042->g_383 < 38); p_1042->g_383 = safe_add_func_uint16_t_u_u(p_1042->g_383, 1))
                { /* block id: 214 */
                    int32_t *l_532 = &l_486;
                    (*l_465) = l_532;
                }
                if (p_37)
                    continue;
                if (p_37)
                    continue;
            }
            if (l_527)
                break;
            l_505.sb = (((((safe_add_func_int32_t_s_s(l_504, (safe_mod_func_int32_t_s_s((l_538 = p_37), (p_37 || (safe_lshift_func_uint8_t_u_s(((l_497.x <= ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(0x3D31L, 0x1E5CL)), 0x41BBL, ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 4))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 4),((VECTOR(int16_t, 2))(rhadd(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(safe_clamp_func(VECTOR(int16_t, 16),int16_t,((VECTOR(int16_t, 8))(hadd(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(p_1042->g_541.sd542)).xwzxyzyw)), ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 16),((VECTOR(int16_t, 4))(0x0573L, ((VECTOR(int16_t, 2))(hadd(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(l_542.xyxyxyyx)).lo)).hi, ((VECTOR(int16_t, 8))(max(((VECTOR(int16_t, 4))(l_543.s1340)).zyxxxzxy, ((VECTOR(int16_t, 8))(0x57C8L, 0x376EL, 0x42BBL, 0x2AF0L, ((VECTOR(int16_t, 4))((-1L), ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(clz(((VECTOR(int16_t, 16))(safe_clamp_func(VECTOR(int16_t, 16),VECTOR(int16_t, 16),((VECTOR(int16_t, 2))(l_544.s75)).xxyyyxxyyyyxxxyx, ((VECTOR(int16_t, 2))(1L, 0L)).yxyyyxxyyyyyxyyx, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 16))(0x6B40L, ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))(safe_clamp_func(VECTOR(int16_t, 8),VECTOR(int16_t, 8),((VECTOR(int16_t, 16))(l_545.yyzyzwyxwywzwwyx)).even, ((VECTOR(int16_t, 2))(0x2899L, 0L)).yxxyyxyx, ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(l_546.yywx)), ((safe_mul_func_uint8_t_u_u(((safe_add_func_int8_t_s_s(((**p_1042->g_82) = ((*p_1042->g_222) ^= (l_527 ^ ((safe_lshift_func_int8_t_s_u(((((*l_555) = (safe_lshift_func_uint16_t_u_s(p_1042->g_541.s3, 9))) , ((safe_lshift_func_int8_t_s_s(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 4),((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(rotate(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(hadd(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 4))(p_1042->g_559.yzwx)))).hi, ((VECTOR(int8_t, 8))(mul_hi(((VECTOR(int8_t, 16))(max(((VECTOR(int8_t, 16))(0x13L, ((VECTOR(int8_t, 2))(p_1042->g_560.s74)), 0x36L, ((VECTOR(int8_t, 2))(p_1042->g_561.s20)), ((VECTOR(int8_t, 8))(mul_hi(((VECTOR(int8_t, 4))((0x185B801AF428DBD3L | (safe_mod_func_uint8_t_u_u(p_1042->g_315.s3, ((safe_sub_func_uint8_t_u_u((l_566 == (void*)0), p_37)) | p_1042->g_379.w)))), (*l_467), 6L, (-8L))).wyzzyzxw, ((VECTOR(int8_t, 8))(0x4CL))))), (-1L), 0x08L)), (int8_t)p_37))).hi, ((VECTOR(int8_t, 8))(1L))))).s63))), (-3L), 0x1DL)).lo)), ((VECTOR(int8_t, 2))(0x42L))))), ((VECTOR(int8_t, 2))(0x14L)), (-8L), (*l_467), 7L, (-5L))).odd, ((VECTOR(int8_t, 4))(0x58L)), ((VECTOR(int8_t, 4))((-5L)))))).odd)).lo, p_37)) ^ l_500.z)) , (*p_1042->g_83)), p_37)) ^ l_500.x)))), p_37)) >= p_37), p_37)) | 3L), 7L, 1L, 0L))))).s07)), 4L, ((VECTOR(int16_t, 8))((-6L))), l_568, 0x370AL, 0x2320L, 0x1178L)).sb2e4)).xwwyxyzywyyxxyyz)))))).s32)), 0L))))))).s21))), 0x2484L)).wxwzwxywwzzwwyzw, ((VECTOR(int16_t, 16))(0x3BF8L)), ((VECTOR(int16_t, 16))(0x1417L))))).sbe)).yxxxyxxx))).s0226633454176024, (int16_t)l_569, (int16_t)p_1042->g_283[2][3][0]))).s44)).xyyyyyxx)).s3116712704723457)).s06, ((VECTOR(int16_t, 2))(9L))))).yxyy, ((VECTOR(int16_t, 4))(2L)), ((VECTOR(int16_t, 4))(4L))))).hi)), 0x2A95L, 0x7502L, (-1L))).s1) < p_1042->g_559.z), l_497.y))))))) == (-2L)) || p_37) , (-1L)) != p_37);
            (*p_1042->g_572) = &p_1042->g_86;
        }
        for (l_477 = (-27); (l_477 <= 58); l_477++)
        { /* block id: 230 */
            uint8_t *l_579 = &p_1042->g_309;
            uint8_t *l_580 = &l_488[1][2][0];
            union U0 *l_583[7][2] = {{&p_1042->g_85,&p_1042->g_85},{&p_1042->g_85,&p_1042->g_85},{&p_1042->g_85,&p_1042->g_85},{&p_1042->g_85,&p_1042->g_85},{&p_1042->g_85,&p_1042->g_85},{&p_1042->g_85,&p_1042->g_85},{&p_1042->g_85,&p_1042->g_85}};
            int16_t **l_614 = (void*)0;
            int32_t l_618 = 0x51575F0FL;
            int32_t l_624 = (-2L);
            int32_t l_625 = 0x4A3B9A4FL;
            int32_t l_629 = 0x0C654A05L;
            int32_t l_631 = 0L;
            int32_t l_632[3][3];
            int32_t l_643 = 0x01F00887L;
            uint16_t l_644 = 0xA08BL;
            int i, j;
            for (i = 0; i < 3; i++)
            {
                for (j = 0; j < 3; j++)
                    l_632[i][j] = (-1L);
            }
            if (p_37)
                break;
            if ((safe_unary_minus_func_int16_t_s((((*l_579) = 247UL) != (0L >= (((((*l_580) ^= 0x37L) , (l_528 ^= ((safe_lshift_func_int8_t_s_u(p_37, 1)) , (((void*)0 != &p_1042->g_82) , (((void*)0 == l_583[3][1]) , (((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 2))(0xFC33B5246EDA30CDL, 2UL)))).odd | (safe_mod_func_int8_t_s_s((safe_add_func_uint64_t_u_u((p_1042->g_319 = (p_1042->g_383 = (((*p_1042->g_222) = (**p_1042->g_82)) == p_37))), p_37)), p_37)))))))) ^ 0x6C21CF5648A8A315L) < p_1042->g_560.s2))))))
            { /* block id: 238 */
                int16_t *l_617 = (void*)0;
                int16_t **l_616 = &l_617;
                VECTOR(int64_t, 2) l_620 = (VECTOR(int64_t, 2))(1L, (-3L));
                int32_t l_627 = (-1L);
                int32_t l_628 = 0x4387572FL;
                int32_t l_630 = 0x45CB3DE3L;
                int32_t l_633[8][2] = {{1L,0x5ECA90ABL},{1L,0x5ECA90ABL},{1L,0x5ECA90ABL},{1L,0x5ECA90ABL},{1L,0x5ECA90ABL},{1L,0x5ECA90ABL},{1L,0x5ECA90ABL},{1L,0x5ECA90ABL}};
                uint32_t l_634 = 0xB64D79CEL;
                int i, j;
                for (p_1042->g_319 = 0; (p_1042->g_319 != 2); p_1042->g_319++)
                { /* block id: 241 */
                    int16_t ***l_615 = &l_614;
                    uint64_t l_619 = 3UL;
                    int32_t l_622 = 7L;
                    VECTOR(int32_t, 2) l_623 = (VECTOR(int32_t, 2))((-9L), 0x3B2FC4E3L);
                    int32_t *l_638 = &l_618;
                    int16_t l_642 = 0x3B5DL;
                    int i;
                    if ((safe_mod_func_uint64_t_u_u(((safe_sub_func_int64_t_s_s(((safe_rshift_func_uint8_t_u_u((+(safe_sub_func_int8_t_s_s((((safe_lshift_func_int16_t_s_u(((((void*)0 != l_600[0]) | ((0x4BL != ((VECTOR(int8_t, 16))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 16),((VECTOR(int8_t, 2))(9L, (-3L))).yyyyyxyxyyyyyxyy, ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(p_1042->g_601.sa5808949f96cc02f)).s1e64)), 0L, ((safe_rshift_func_uint16_t_u_u((0xDEL != (safe_mul_func_uint8_t_u_u(GROUP_DIVERGE(1, 1), (safe_mod_func_int8_t_s_s(8L, (safe_lshift_func_uint8_t_u_u(((0x830FA9B1L != p_37) && (((safe_div_func_uint8_t_u_u((safe_rshift_func_int8_t_s_u((((((*l_615) = l_614) == l_616) , l_618) | p_37), 6)), p_37)) | 2UL) > 18446744073709551613UL)), p_37))))))), p_37)) >= p_1042->g_559.w), p_37, ((VECTOR(int8_t, 2))(1L)), (-2L), p_37, ((VECTOR(int8_t, 4))((-1L))), 0L)).sdd)).yxyyyyyyxyxyyxxx, ((VECTOR(int8_t, 16))(0x4BL))))).s8) > p_1042->g_381[2])) , p_37), 13)) , (void*)0) != (void*)0), l_619))), p_1042->g_559.y)) >= p_37), 2UL)) > 0x55DDF315L), l_620.x)))
                    { /* block id: 243 */
                        int32_t *l_621[8];
                        int32_t **l_637 = &l_621[6];
                        int i;
                        for (i = 0; i < 8; i++)
                            l_621[i] = &p_1042->g_381[0];
                        l_634--;
                        (*l_637) = ((*l_465) = &l_528);
                        if ((*p_1042->g_117))
                            break;
                        if (l_619)
                            continue;
                    }
                    else
                    { /* block id: 249 */
                        int32_t *l_639 = (void*)0;
                        int32_t *l_640 = &l_624;
                        int32_t *l_641[4][9] = {{&p_1042->g_381[1],&p_1042->g_381[1],&l_627,(void*)0,(void*)0,(void*)0,&l_627,&p_1042->g_381[1],&p_1042->g_381[1]},{&p_1042->g_381[1],&p_1042->g_381[1],&l_627,(void*)0,(void*)0,(void*)0,&l_627,&p_1042->g_381[1],&p_1042->g_381[1]},{&p_1042->g_381[1],&p_1042->g_381[1],&l_627,(void*)0,(void*)0,(void*)0,&l_627,&p_1042->g_381[1],&p_1042->g_381[1]},{&p_1042->g_381[1],&p_1042->g_381[1],&l_627,(void*)0,(void*)0,(void*)0,&l_627,&p_1042->g_381[1],&p_1042->g_381[1]}};
                        int i, j;
                        l_638 = &l_622;
                        l_639 = (*p_1042->g_419);
                        --l_644;
                    }
                }
            }
            else
            { /* block id: 255 */
                if (p_37)
                    break;
                (*l_465) = func_38((*p_1042->g_82), p_1042->g_291, p_1042);
            }
        }
        l_626.y |= (safe_mod_func_uint32_t_u_u((safe_mul_func_uint8_t_u_u(((((VECTOR(int64_t, 2))(l_651.yx)).lo , (((*l_656) = (((safe_lshift_func_uint16_t_u_s(((VECTOR(uint16_t, 2))(0xAC28L, 0x268CL)).odd, 7)) && p_1042->g_48.w) ^ (((*l_655) = l_480[3][0]) == l_480[3][0]))) && (((*l_657) = &l_483) != &p_1042->g_433))) == (p_1042->g_48.z ^ ((safe_div_func_int32_t_s_s(((((safe_lshift_func_int16_t_s_u((safe_mod_func_uint8_t_u_u((((l_664 != l_480[1][1]) && p_37) >= 1L), p_1042->g_383)), p_1042->g_127[3])) , (*l_467)) , (void*)0) != l_665[0][9][1]), p_37)) ^ p_37))), p_1042->g_383)), p_37));
        for (p_1042->g_309 = 0; (p_1042->g_309 < 15); p_1042->g_309 = safe_add_func_int16_t_s_s(p_1042->g_309, 1))
        { /* block id: 266 */
            int32_t l_675 = (-1L);
            uint32_t *l_678 = (void*)0;
            uint32_t *l_679[2][2] = {{&l_42,&l_42},{&l_42,&l_42}};
            int32_t **l_686[5] = {&l_666,&l_666,&l_666,&l_666,&l_666};
            int32_t l_692[1];
            VECTOR(uint64_t, 16) l_711 = (VECTOR(uint64_t, 16))(0x3BADACBD60273BB8L, (VECTOR(uint64_t, 4))(0x3BADACBD60273BB8L, (VECTOR(uint64_t, 2))(0x3BADACBD60273BB8L, 1UL), 1UL), 1UL, 0x3BADACBD60273BB8L, 1UL, (VECTOR(uint64_t, 2))(0x3BADACBD60273BB8L, 1UL), (VECTOR(uint64_t, 2))(0x3BADACBD60273BB8L, 1UL), 0x3BADACBD60273BB8L, 1UL, 0x3BADACBD60273BB8L, 1UL);
            VECTOR(int16_t, 8) l_789 = (VECTOR(int16_t, 8))(0x1042L, (VECTOR(int16_t, 4))(0x1042L, (VECTOR(int16_t, 2))(0x1042L, 1L), 1L), 1L, 0x1042L, 1L);
            uint64_t l_809 = 0x044F50073DBCDC77L;
            uint16_t l_832 = 1UL;
            VECTOR(int64_t, 16) l_853 = (VECTOR(int64_t, 16))(0x25862B0DD3A385B1L, (VECTOR(int64_t, 4))(0x25862B0DD3A385B1L, (VECTOR(int64_t, 2))(0x25862B0DD3A385B1L, 0x0A1DCA18CB9E86EAL), 0x0A1DCA18CB9E86EAL), 0x0A1DCA18CB9E86EAL, 0x25862B0DD3A385B1L, 0x0A1DCA18CB9E86EAL, (VECTOR(int64_t, 2))(0x25862B0DD3A385B1L, 0x0A1DCA18CB9E86EAL), (VECTOR(int64_t, 2))(0x25862B0DD3A385B1L, 0x0A1DCA18CB9E86EAL), 0x25862B0DD3A385B1L, 0x0A1DCA18CB9E86EAL, 0x25862B0DD3A385B1L, 0x0A1DCA18CB9E86EAL);
            int i, j;
            for (i = 0; i < 1; i++)
                l_692[i] = 0L;
            (*l_467) &= p_37;
            if (((*l_467) = (((safe_mod_func_int32_t_s_s(((((VECTOR(int64_t, 16))(0x65588DCEDD801E24L, ((safe_add_func_int16_t_s_s((l_675 <= (l_676 >= (p_37 < l_675))), 0x3346L)) , 0x4A23C3A1CA330447L), 0x1E820C57CF916CC8L, (-7L), ((+(l_680.y |= (safe_unary_minus_func_int8_t_s(((**p_1042->g_82) = 0x2CL))))) ^ p_37), 0x45BDD747F628C981L, 0x2BB5230AD0722DAEL, ((safe_rshift_func_uint8_t_u_s(((VECTOR(uint8_t, 2))(255UL, 255UL)).even, ((((((safe_mul_func_uint8_t_u_u((0x76F449EDL < p_37), p_1042->g_365.sd)) == 1UL) , l_685[2]) == l_686[3]) , p_37) || p_1042->g_314.y))) <= 0xB582FE4BL), ((VECTOR(int64_t, 4))(0x6CED9286851D42B1L)), l_687, 0x7A2B939CF9E7C652L, 0x6C1A9D0CEBDD699AL, 0x3D53107FDCAC9F12L)).s1 && l_688) <= 0xD0L), 0x469A935FL)) == 0L) , p_37)))
            { /* block id: 271 */
                int32_t *l_689 = &l_528;
                int64_t *l_695[4] = {&p_1042->g_237,&p_1042->g_237,&p_1042->g_237,&p_1042->g_237};
                int i;
                (*l_465) = l_689;
                (*l_689) = (*l_689);
                (*l_467) &= (safe_lshift_func_int16_t_s_s(p_37, (l_692[0] >= ((*l_689) |= (safe_rshift_func_int16_t_s_u(p_1042->g_127[0], 0))))));
            }
            else
            { /* block id: 276 */
                VECTOR(int16_t, 4) l_710 = (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 7L), 7L);
                int32_t ***l_745 = (void*)0;
                int32_t l_750[2][6] = {{0x5AEEAAA6L,0x5AEEAAA6L,0x5AEEAAA6L,0x5AEEAAA6L,0x5AEEAAA6L,0x5AEEAAA6L},{0x5AEEAAA6L,0x5AEEAAA6L,0x5AEEAAA6L,0x5AEEAAA6L,0x5AEEAAA6L,0x5AEEAAA6L}};
                int64_t *l_753 = (void*)0;
                uint32_t *l_764 = &l_42;
                int32_t l_767 = 0x2B5DCE0EL;
                int32_t l_768 = 0L;
                int32_t l_769 = 1L;
                VECTOR(int32_t, 8) l_793 = (VECTOR(int32_t, 8))(0x4D902999L, (VECTOR(int32_t, 4))(0x4D902999L, (VECTOR(int32_t, 2))(0x4D902999L, 1L), 1L), 1L, 0x4D902999L, 1L);
                int i, j;
                for (l_42 = (-20); (l_42 != 39); l_42 = safe_add_func_int32_t_s_s(l_42, 4))
                { /* block id: 279 */
                    VECTOR(uint64_t, 8) l_712 = (VECTOR(uint64_t, 8))(0xE11857E200878792L, (VECTOR(uint64_t, 4))(0xE11857E200878792L, (VECTOR(uint64_t, 2))(0xE11857E200878792L, 0x19456E19BE3EC64FL), 0x19456E19BE3EC64FL), 0x19456E19BE3EC64FL, 0xE11857E200878792L, 0x19456E19BE3EC64FL);
                    VECTOR(uint64_t, 16) l_713 = (VECTOR(uint64_t, 16))(18446744073709551613UL, (VECTOR(uint64_t, 4))(18446744073709551613UL, (VECTOR(uint64_t, 2))(18446744073709551613UL, 5UL), 5UL), 5UL, 18446744073709551613UL, 5UL, (VECTOR(uint64_t, 2))(18446744073709551613UL, 5UL), (VECTOR(uint64_t, 2))(18446744073709551613UL, 5UL), 18446744073709551613UL, 5UL, 18446744073709551613UL, 5UL);
                    VECTOR(uint64_t, 4) l_719 = (VECTOR(uint64_t, 4))(0xD3DD45BDC5A8E8DFL, (VECTOR(uint64_t, 2))(0xD3DD45BDC5A8E8DFL, 18446744073709551615UL), 18446744073709551615UL);
                    int32_t *l_749[10][8][3] = {{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}}};
                    int8_t ***l_763 = &p_1042->g_82;
                    int8_t ****l_762 = &l_763;
                    VECTOR(int8_t, 16) l_778 = (VECTOR(int8_t, 16))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0L), 0L), 0L, 1L, 0L, (VECTOR(int8_t, 2))(1L, 0L), (VECTOR(int8_t, 2))(1L, 0L), 1L, 0L, 1L, 0L);
                    VECTOR(int8_t, 16) l_782 = (VECTOR(int8_t, 16))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, (-1L)), (-1L)), (-1L), 0L, (-1L), (VECTOR(int8_t, 2))(0L, (-1L)), (VECTOR(int8_t, 2))(0L, (-1L)), 0L, (-1L), 0L, (-1L));
                    uint64_t *l_800 = &p_1042->g_556[1][4];
                    int i, j, k;
                    for (p_1042->g_319 = 25; (p_1042->g_319 == 44); p_1042->g_319 = safe_add_func_int64_t_s_s(p_1042->g_319, 6))
                    { /* block id: 282 */
                        uint16_t l_703 = 65526UL;
                        VECTOR(int32_t, 2) l_741 = (VECTOR(int32_t, 2))(2L, (-1L));
                        uint64_t l_746 = 0xF09458DD289557CCL;
                        uint16_t *l_747 = (void*)0;
                        int32_t l_748 = 0x645C7B88L;
                        int i;
                        (*l_467) = 1L;
                        (*l_467) &= (safe_unary_minus_func_int16_t_s((safe_sub_func_int8_t_s_s(((*p_1042->g_222) = l_703), (0x1DC6313948F2127FL >= (((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 2))(1UL, 0x2EA8L)))).odd >= 6UL))))));
                        l_726 = (safe_mul_func_uint8_t_u_u((safe_div_func_int8_t_s_s((0x01F7C5E3L && (!(safe_add_func_int32_t_s_s(0x0D8A22ACL, ((((((l_710.y & (((VECTOR(uint64_t, 8))(rhadd(((VECTOR(uint64_t, 2))(l_711.sa2)).yxyyxxyx, ((VECTOR(uint64_t, 2))(mad_sat(((VECTOR(uint64_t, 2))(l_712.s36)), ((VECTOR(uint64_t, 4))(0xC1F442D839CFC37BL, 0x5C2A6FDFD42E5E7DL, 0x29341F8736F05A4EL, 18446744073709551610UL)).odd, ((VECTOR(uint64_t, 2))(l_713.s0b))))).yxyyyyyx))).s2 , (safe_add_func_int64_t_s_s(p_37, ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(p_1042->g_716.s43)), (-6L), (-1L))).lo)).even)))) ^ (safe_rshift_func_int16_t_s_s((((**p_1042->g_82) &= (p_1042->g_379.z == p_37)) && (((VECTOR(uint64_t, 8))(l_719.wyyzzzxy)).s5 && ((VECTOR(int64_t, 2))(max(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 2))(safe_clamp_func(VECTOR(int64_t, 2),int64_t,((VECTOR(int64_t, 4))(sub_sat(((VECTOR(int64_t, 4))(p_1042->g_720.s3065)), ((VECTOR(int64_t, 8))(mad_sat(((VECTOR(int64_t, 16))(min(((VECTOR(int64_t, 8))(hadd(((VECTOR(int64_t, 16))(l_721.xyyxxyxyxxxxyyyx)).hi, ((VECTOR(int64_t, 4))((safe_rshift_func_int8_t_s_s((safe_mul_func_int16_t_s_s(((0xAC84D4F1L & (((FAKE_DIVERGE(p_1042->global_2_offset, get_global_id(2), 10) && (p_1042->g_379.y = (*l_467))) && (p_1042->g_127[3] , p_37)) != 0L)) <= (-1L)), p_1042->g_720.s6)), 3)), 0x03FB35ACAE945406L, 0x6336E7B0A297A1E0L, 1L)).xwzzxzxz))).s3604466746745466, (int64_t)l_703))).even, ((VECTOR(int64_t, 8))(0L)), ((VECTOR(int64_t, 8))(0x1EFF8BC5D48C6FD0L))))).even))).even, (int64_t)l_703, (int64_t)p_37))).xyyxxxyyyxyyxxxx)).sa6, ((VECTOR(int64_t, 2))((-8L)))))).even)), l_712.s0))) != 1L) | 0x4CAAL) || 0x37L) , (*l_467)))))), 0x73L)), p_1042->g_256.x));
                        l_748 ^= (0x05018D3D48033F3AL < ((safe_rshift_func_int8_t_s_s((safe_rshift_func_int8_t_s_s((safe_rshift_func_uint16_t_u_u(((*p_1042->g_34) & (safe_rshift_func_uint8_t_u_u(((!p_37) < (safe_mul_func_int16_t_s_s(p_1042->g_541.sa, (p_1042->g_314.y = (p_37 > ((safe_rshift_func_uint8_t_u_u(((p_1042->g_127[3] && ((safe_sub_func_uint16_t_u_u(((p_37 >= (((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(l_741.xy)).yyxyxyyyyyyyxyyy)))))).hi)).s74)).even > (safe_sub_func_uint16_t_u_u((safe_unary_minus_func_uint8_t_u(249UL)), ((void*)0 == l_745))))) & p_37), p_37)) != l_746)) <= p_37), 2)) <= p_37)))))), 5))), p_1042->g_256.y)), l_703)), p_37)) , l_713.s8));
                    }
                    (*p_1042->g_419) = l_749[9][7][0];
                    l_626.y = ((p_37 >= (l_750[1][4] > (safe_mul_func_uint16_t_u_u(((((((p_37 | 2UL) , l_753) == (((!((p_1042->g_561.s6 >= GROUP_DIVERGE(1, 1)) < 4294967293UL)) == (((safe_lshift_func_uint16_t_u_u((safe_mod_func_int8_t_s_s((safe_mul_func_int8_t_s_s((safe_div_func_int32_t_s_s((-1L), ((VECTOR(int32_t, 8))((((*l_762) = &p_1042->g_82) == &p_1042->g_82), p_37, (-6L), ((VECTOR(int32_t, 2))((-1L))), 0x2081FF04L, 0x7C00A1AAL, 0x334136E0L)).s2)), 247UL)), 254UL)), 14)) , l_679[1][1]) == l_764)) , (void*)0)) , p_37) , p_37) ^ 0x25A6E1F6B5D4114CL), p_1042->g_223)))) , 1L);
                    for (p_1042->g_237 = (-1); (p_1042->g_237 > (-3)); p_1042->g_237--)
                    { /* block id: 297 */
                        uint16_t l_770 = 1UL;
                        union U0 *l_783 = &l_470[1];
                        int16_t *l_784[10] = {&p_1042->g_73,&p_1042->g_73,&p_1042->g_73,&p_1042->g_73,&p_1042->g_73,&p_1042->g_73,&p_1042->g_73,&p_1042->g_73,&p_1042->g_73,&p_1042->g_73};
                        VECTOR(int32_t, 16) l_790 = (VECTOR(int32_t, 16))(0x029AA9D3L, (VECTOR(int32_t, 4))(0x029AA9D3L, (VECTOR(int32_t, 2))(0x029AA9D3L, 9L), 9L), 9L, 0x029AA9D3L, 9L, (VECTOR(int32_t, 2))(0x029AA9D3L, 9L), (VECTOR(int32_t, 2))(0x029AA9D3L, 9L), 0x029AA9D3L, 9L, 0x029AA9D3L, 9L);
                        uint64_t *l_805 = &p_1042->g_556[1][4];
                        uint64_t **l_804 = &l_805;
                        int32_t l_808 = 0x7340A1D3L;
                        int i;
                        l_770++;
                        l_769 &= ((safe_add_func_int16_t_s_s((safe_rshift_func_int8_t_s_s(((VECTOR(int8_t, 16))(l_777.s3020330137271262)).s5, ((VECTOR(int8_t, 8))(mul_hi(((VECTOR(int8_t, 8))(l_778.s48eacccd)), ((VECTOR(int8_t, 2))(rotate(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 8))(clz(((VECTOR(int8_t, 16))(l_779.zwxyywyzzywyyyww)).hi))).even)).hi, ((VECTOR(int8_t, 4))(sub_sat(((VECTOR(int8_t, 4))((*l_467), (safe_sub_func_uint32_t_u_u(0x6D58ABA6L, p_37)), 1L, 0x48L)), ((VECTOR(int8_t, 8))(l_782.s999dc112)).even))).hi))).yxyxxyyx))).s5)), (p_1042->g_541.s3 = (p_37 && (~((void*)0 != l_783)))))) , l_770);
                        l_808 = (0x4C11L || (p_37 < ((VECTOR(int64_t, 16))(upsample(((VECTOR(int32_t, 8))(max(((VECTOR(int32_t, 4))(p_1042->g_365.s7, (safe_lshift_func_uint8_t_u_u((safe_rshift_func_int16_t_s_u(((VECTOR(int16_t, 16))(l_789.s4303166507524677)).s4, 12)), 5)), 3L, (-7L))).yxyyyzyy, (int32_t)((VECTOR(int32_t, 4))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 4))(l_790.sdb60)), ((VECTOR(int32_t, 8))(mul_hi(((VECTOR(int32_t, 2))(0x4289BC06L, 0x465AF06DL)).yyxyyxxx, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(p_1042->g_791.s7737712147217064)))).lo))).hi, ((VECTOR(int32_t, 8))(add_sat(((VECTOR(int32_t, 2))(rotate(((VECTOR(int32_t, 4))(hadd(((VECTOR(int32_t, 4))(max(((VECTOR(int32_t, 8))(add_sat(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(l_792.s6060)).hi)).yyxxxxyx, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 8))(l_793.s74713444)).s0351130741070541, ((VECTOR(int32_t, 2))(0x2BB6A907L, 0x58492819L)).yxyyyyxxxxxxxyyx, ((VECTOR(int32_t, 2))(5L, 1L)).xxxyxyyxxyxyxyxx))).s10)).xyyxxxxx))).hi, (int32_t)((((safe_add_func_uint16_t_u_u((&l_769 == ((((0UL >= (0xB79F848BL != ((safe_sub_func_uint8_t_u_u(((l_806 = (((safe_sub_func_int16_t_s_s((p_1042->g_541.s5 = (((*l_655) = l_800) == ((*l_804) = (((VECTOR(int16_t, 4))(clz(((VECTOR(int16_t, 16))(rotate(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(p_1042->g_801.zw)).yyxy)).zwwwwxwzxxyxyywz, ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(clz(((VECTOR(int16_t, 2))(1L, 0x7DD4L)).yyxx))), ((VECTOR(int16_t, 2))(1L, (-10L))), (safe_add_func_int16_t_s_s(p_1042->g_256.y, p_1042->g_559.x)), 0x474AL, 0x5968L, 0x4407L, ((VECTOR(int16_t, 4))(0x270BL)), 0L, 0x05AEL))))).s27b3))).y , l_480[1][1])))), p_37)) | p_1042->g_314.x) , &p_1042->g_573)) != (void*)0), p_1042->g_807)) , p_37))) != l_790.s0) == 0x2CE7AB5CL) , (*p_1042->g_419))), 0x32C8L)) , (void*)0) == (void*)0) , 0L)))), ((VECTOR(int32_t, 4))((-8L)))))).odd, ((VECTOR(int32_t, 2))(6L))))).yxxyxxxx, ((VECTOR(int32_t, 8))(0x615A9EADL))))).hi))).y))).s7265414067127450, ((VECTOR(uint32_t, 16))(0x0E38A30DL))))).sf));
                        l_808 = ((*l_467) = 0x18206919L);
                    }
                }
                if (p_37)
                    break;
                if (l_809)
                    break;
                (*l_465) = &l_767;
            }
            ++l_810;
            if (((safe_lshift_func_int16_t_s_u(p_37, (safe_lshift_func_uint8_t_u_u((safe_mul_func_uint8_t_u_u(((p_1042->g_347[0][0] , ((void*)0 != &p_1042->g_73)) == ((VECTOR(int32_t, 4))(l_819.xzxw)).x), ((((**l_806) , (((safe_div_func_uint8_t_u_u((((VECTOR(int8_t, 16))(p_1042->g_822.s3740317671044206)).s6 <= (safe_rshift_func_uint8_t_u_s(((((0x5A22L > (safe_mul_func_int8_t_s_s(((safe_rshift_func_uint8_t_u_s((l_829 == &p_1042->g_573), 6)) < (safe_add_func_uint8_t_u_u(p_37, p_37))), 0x14L))) , l_832) && 0UL) <= p_37), p_37))), p_1042->g_541.sc)) > 0x78L) , p_37)) || p_1042->g_833) <= (**p_1042->g_82)))), 0)))) < FAKE_DIVERGE(p_1042->global_0_offset, get_global_id(0), 10)))
            { /* block id: 315 */
                int64_t *l_849[6][1][10] = {{{&l_726,&p_1042->g_237,&l_726,&l_726,&p_1042->g_237,&l_726,&l_726,&p_1042->g_237,&l_726,&l_726}},{{&l_726,&p_1042->g_237,&l_726,&l_726,&p_1042->g_237,&l_726,&l_726,&p_1042->g_237,&l_726,&l_726}},{{&l_726,&p_1042->g_237,&l_726,&l_726,&p_1042->g_237,&l_726,&l_726,&p_1042->g_237,&l_726,&l_726}},{{&l_726,&p_1042->g_237,&l_726,&l_726,&p_1042->g_237,&l_726,&l_726,&p_1042->g_237,&l_726,&l_726}},{{&l_726,&p_1042->g_237,&l_726,&l_726,&p_1042->g_237,&l_726,&l_726,&p_1042->g_237,&l_726,&l_726}},{{&l_726,&p_1042->g_237,&l_726,&l_726,&p_1042->g_237,&l_726,&l_726,&p_1042->g_237,&l_726,&l_726}}};
                int32_t l_850 = 0L;
                int32_t l_856 = (-2L);
                int16_t *l_857 = (void*)0;
                int16_t *l_859 = (void*)0;
                int16_t *l_860 = (void*)0;
                int16_t *l_861[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                uint64_t l_862 = 18446744073709551615UL;
                uint64_t l_863 = 0xABBC2F18AD00BFCFL;
                uint16_t l_864 = 1UL;
                union U0 **l_865 = &p_1042->g_323;
                int i, j, k;
                (*l_467) = (safe_mul_func_uint8_t_u_u(((l_864 = ((l_863 |= (p_37 , (safe_sub_func_uint8_t_u_u(p_37, (~(safe_rshift_func_int8_t_s_s((safe_rshift_func_uint8_t_u_s(((((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(l_842.yyxyxyxz)).s5535601600573457)).odd)).s3 ^ 0xF9EDL) , (((l_856 = (safe_mul_func_int8_t_s_s((p_1042->g_379.x > (safe_rshift_func_int8_t_s_s((safe_add_func_int8_t_s_s((p_37 && ((l_850 = p_37) != (safe_lshift_func_int16_t_s_s((p_1042->g_541.sc = (((VECTOR(int64_t, 2))(l_853.s86)).lo , (((p_37 == (p_37 != ((safe_rshift_func_int16_t_s_s(p_37, p_1042->g_127[5])) >= l_856))) == l_856) != 4294967295UL))), l_858)))), p_1042->g_716.s3)), p_37))), p_37))) , 0L) != p_1042->g_283[4][3][0])), 4)), l_862))))))) || p_37)) | p_37), p_37));
                l_856 |= ((p_1042->g_866 = l_865) != (void*)0);
            }
            else
            { /* block id: 324 */
                return p_1042->g_791.s5;
            }
        }
    }
    return p_1042->g_561.s7;
}


/* ------------------------------------------ */
/* 
 * reads : p_1042->g_48 p_1042->g_82 p_1042->g_85 p_1042->g_86 p_1042->g_26 p_1042->g_117 p_1042->g_107 p_1042->g_143 p_1042->g_73 p_1042->g_144 p_1042->g_256 p_1042->g_83 p_1042->g_222 p_1042->g_223 p_1042->g_298 p_1042->g_283 p_1042->g_314 p_1042->g_315 p_1042->g_209 p_1042->g_127 p_1042->g_319 p_1042->g_347 p_1042->g_350 p_1042->g_365 p_1042->g_372 p_1042->g_375 p_1042->g_379 p_1042->g_383 p_1042->g_419 p_1042->g_381 p_1042->g_237
 * writes: p_1042->g_73 p_1042->g_82 p_1042->g_107 p_1042->g_144 p_1042->g_83 p_1042->g_309 p_1042->g_319 p_1042->g_323 p_1042->g_223 p_1042->g_236 p_1042->g_383 p_1042->g_420 p_1042->g_381 p_1042->g_237
 */
int32_t * func_38(int8_t * p_39, uint8_t  p_40, struct S2 * p_1042)
{ /* block id: 11 */
    VECTOR(int32_t, 2) l_43 = (VECTOR(int32_t, 2))(1L, 0x19B885B3L);
    VECTOR(int32_t, 8) l_44 = (VECTOR(int32_t, 8))(0x3D76DF3EL, (VECTOR(int32_t, 4))(0x3D76DF3EL, (VECTOR(int32_t, 2))(0x3D76DF3EL, 4L), 4L), 4L, 0x3D76DF3EL, 4L);
    VECTOR(int32_t, 2) l_45 = (VECTOR(int32_t, 2))(8L, 0L);
    VECTOR(int32_t, 4) l_46 = (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 1L), 1L);
    VECTOR(int32_t, 2) l_47 = (VECTOR(int32_t, 2))(0L, 0x788AFB1CL);
    int16_t *l_71 = (void*)0;
    int16_t *l_72 = &p_1042->g_73;
    int8_t ***l_84[9][7] = {{&p_1042->g_82,&p_1042->g_82,&p_1042->g_82,&p_1042->g_82,&p_1042->g_82,&p_1042->g_82,(void*)0},{&p_1042->g_82,&p_1042->g_82,&p_1042->g_82,&p_1042->g_82,&p_1042->g_82,&p_1042->g_82,(void*)0},{&p_1042->g_82,&p_1042->g_82,&p_1042->g_82,&p_1042->g_82,&p_1042->g_82,&p_1042->g_82,(void*)0},{&p_1042->g_82,&p_1042->g_82,&p_1042->g_82,&p_1042->g_82,&p_1042->g_82,&p_1042->g_82,(void*)0},{&p_1042->g_82,&p_1042->g_82,&p_1042->g_82,&p_1042->g_82,&p_1042->g_82,&p_1042->g_82,(void*)0},{&p_1042->g_82,&p_1042->g_82,&p_1042->g_82,&p_1042->g_82,&p_1042->g_82,&p_1042->g_82,(void*)0},{&p_1042->g_82,&p_1042->g_82,&p_1042->g_82,&p_1042->g_82,&p_1042->g_82,&p_1042->g_82,(void*)0},{&p_1042->g_82,&p_1042->g_82,&p_1042->g_82,&p_1042->g_82,&p_1042->g_82,&p_1042->g_82,(void*)0},{&p_1042->g_82,&p_1042->g_82,&p_1042->g_82,&p_1042->g_82,&p_1042->g_82,&p_1042->g_82,(void*)0}};
    int8_t **l_116 = &p_1042->g_83;
    VECTOR(uint16_t, 16) l_424 = (VECTOR(uint16_t, 16))(0xA3C4L, (VECTOR(uint16_t, 4))(0xA3C4L, (VECTOR(uint16_t, 2))(0xA3C4L, 0UL), 0UL), 0UL, 0xA3C4L, 0UL, (VECTOR(uint16_t, 2))(0xA3C4L, 0UL), (VECTOR(uint16_t, 2))(0xA3C4L, 0UL), 0xA3C4L, 0UL, 0xA3C4L, 0UL);
    int32_t *l_445 = &p_1042->g_283[3][0][1];
    uint8_t l_461 = 0x6FL;
    int32_t *l_464 = &p_1042->g_381[0];
    int i, j;
    if (((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 8))(hadd(((VECTOR(int32_t, 2))(safe_clamp_func(VECTOR(int32_t, 2),VECTOR(int32_t, 2),((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(l_43.yy)).xyyy)))).hi, ((VECTOR(int32_t, 2))(l_44.s65)), ((VECTOR(int32_t, 2))(mad_sat(((VECTOR(int32_t, 4))(l_45.yyyy)).even, ((VECTOR(int32_t, 2))(l_46.xw)), ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(sub_sat(((VECTOR(int32_t, 8))(l_47.xyxyyxyx)), ((VECTOR(int32_t, 8))(0x05FFFF32L, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(p_1042->g_48.yzyxxxzw)).s60)), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(0x3D439363L, (&p_1042->g_26 == ((*l_116) = func_49(func_52((((p_40 , func_57((safe_sub_func_uint16_t_u_u((safe_div_func_int64_t_s_s((((safe_sub_func_uint16_t_u_u(0x1CFEL, (0x3FL == (((*l_72) = p_40) && 0L)))) , (safe_rshift_func_int16_t_s_u((safe_mul_func_int8_t_s_s(((VECTOR(int8_t, 8))(0L, 0x5FL, (-10L), 0x47L, ((((p_40 & ((((safe_add_func_int32_t_s_s(0x2C43DA4AL, (!((p_1042->g_82 = p_1042->g_82) != &p_1042->g_34)))) , p_1042->g_85) , p_40) < l_45.y)) , l_46.y) , p_40) < 0xCD78L), ((VECTOR(int8_t, 2))(0x5AL)), 0x55L)).s7, l_46.x)), 0))) , l_47.x), 0x402D6FA87DC7FB05L)), l_47.x)), p_1042->g_86, p_1042->g_48.z, p_40, l_46.w, p_1042)) == (void*)0) || FAKE_DIVERGE(p_1042->local_0_offset, get_local_id(0), 10)), l_116, p_1042->g_26, l_47.y, p_1042), p_40, p_1042))), ((VECTOR(int32_t, 2))(0x26B582D7L)), 0x39B26353L, ((VECTOR(int32_t, 2))(0x67F1251DL)), 0x6E22A4C5L)).s42)), ((VECTOR(int32_t, 2))(1L)), 0x61CBA2E7L))))))).s27)))))).xyxyyyxx, ((VECTOR(int32_t, 8))(0x3786C2A3L))))).s3545221462404156, ((VECTOR(int32_t, 16))(1L)), ((VECTOR(int32_t, 16))(1L))))).odd)).s3)
    { /* block id: 159 */
        VECTOR(uint8_t, 16) l_421 = (VECTOR(uint8_t, 16))(246UL, (VECTOR(uint8_t, 4))(246UL, (VECTOR(uint8_t, 2))(246UL, 0UL), 0UL), 0UL, 246UL, 0UL, (VECTOR(uint8_t, 2))(246UL, 0UL), (VECTOR(uint8_t, 2))(246UL, 0UL), 246UL, 0UL, 246UL, 0UL);
        union U0 l_422 = {0};
        union U0 *l_423 = &l_422;
        uint16_t *l_425 = (void*)0;
        int32_t l_426 = (-8L);
        int32_t *l_431[5][4][10] = {{{&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0]},{&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0]},{&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0]},{&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0]}},{{&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0]},{&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0]},{&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0]},{&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0]}},{{&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0]},{&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0]},{&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0]},{&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0]}},{{&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0]},{&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0]},{&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0]},{&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0]}},{{&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0]},{&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0]},{&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0]},{&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0],&p_1042->g_127[0]}}};
        int32_t *l_432 = &l_426;
        int32_t *l_434 = &p_1042->g_381[5];
        int i, j, k;
        (*l_434) &= (((VECTOR(uint8_t, 8))(l_421.sa540aee2)).s1 != (((*l_423) = l_422) , ((p_1042->g_375.s3 < (l_426 ^= ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(l_424.s59)).yyyxyyyyyxxxxxxy)).sb)) , ((((void*)0 == &p_1042->g_309) != ((*p_1042->g_82) != (*p_1042->g_82))) , ((safe_lshift_func_int8_t_s_u((safe_rshift_func_uint8_t_u_s(l_47.x, ((((*l_432) = (((void*)0 == l_431[4][0][5]) < 0x10BF6E9B2B5DC6B9L)) | 0x138077C1L) , l_43.x))), 4)) != 0x56L)))));
        for (p_1042->g_237 = 0; (p_1042->g_237 != (-21)); --p_1042->g_237)
        { /* block id: 166 */
            uint16_t l_439 = 0x1239L;
            l_439 = (safe_lshift_func_int16_t_s_u(9L, 2));
            if (p_40)
                continue;
            (*l_434) ^= (*p_1042->g_117);
        }
    }
    else
    { /* block id: 171 */
        int32_t *l_440[6][8] = {{(void*)0,&p_1042->g_381[3],(void*)0,(void*)0,&p_1042->g_381[3],(void*)0,(void*)0,&p_1042->g_381[3]},{(void*)0,&p_1042->g_381[3],(void*)0,(void*)0,&p_1042->g_381[3],(void*)0,(void*)0,&p_1042->g_381[3]},{(void*)0,&p_1042->g_381[3],(void*)0,(void*)0,&p_1042->g_381[3],(void*)0,(void*)0,&p_1042->g_381[3]},{(void*)0,&p_1042->g_381[3],(void*)0,(void*)0,&p_1042->g_381[3],(void*)0,(void*)0,&p_1042->g_381[3]},{(void*)0,&p_1042->g_381[3],(void*)0,(void*)0,&p_1042->g_381[3],(void*)0,(void*)0,&p_1042->g_381[3]},{(void*)0,&p_1042->g_381[3],(void*)0,(void*)0,&p_1042->g_381[3],(void*)0,(void*)0,&p_1042->g_381[3]}};
        int16_t *l_450 = &p_1042->g_73;
        int i, j;
        if (((*p_1042->g_117) = (*p_1042->g_117)))
        { /* block id: 173 */
            int16_t **l_451 = &l_72;
            int32_t l_452 = 4L;
            l_452 = (safe_rshift_func_uint8_t_u_s((safe_sub_func_int16_t_s_s(((void*)0 == l_445), ((*l_450) = (safe_add_func_uint64_t_u_u(p_1042->g_314.x, ((safe_lshift_func_int8_t_s_s((l_440[0][1] != (void*)0), 5)) >= ((*p_1042->g_222) |= (+(((((p_40 , ((*l_451) = l_450)) == (l_71 = l_71)) >= (p_1042->g_256.y && p_1042->g_347[0][1])) , &p_1042->g_309) == (void*)0))))))))), 0));
        }
        else
        { /* block id: 179 */
            uint16_t l_453 = 7UL;
            uint16_t *l_458 = &l_453;
            int32_t l_462 = 1L;
            int32_t **l_463[7][6] = {{&p_1042->g_144[4],(void*)0,&p_1042->g_144[4],&p_1042->g_144[4],(void*)0,&p_1042->g_144[4]},{&p_1042->g_144[4],(void*)0,&p_1042->g_144[4],&p_1042->g_144[4],(void*)0,&p_1042->g_144[4]},{&p_1042->g_144[4],(void*)0,&p_1042->g_144[4],&p_1042->g_144[4],(void*)0,&p_1042->g_144[4]},{&p_1042->g_144[4],(void*)0,&p_1042->g_144[4],&p_1042->g_144[4],(void*)0,&p_1042->g_144[4]},{&p_1042->g_144[4],(void*)0,&p_1042->g_144[4],&p_1042->g_144[4],(void*)0,&p_1042->g_144[4]},{&p_1042->g_144[4],(void*)0,&p_1042->g_144[4],&p_1042->g_144[4],(void*)0,&p_1042->g_144[4]},{&p_1042->g_144[4],(void*)0,&p_1042->g_144[4],&p_1042->g_144[4],(void*)0,&p_1042->g_144[4]}};
            int i, j;
            ++l_453;
            l_462 = ((safe_rshift_func_int16_t_s_u((-1L), ((*l_458)++))) != l_461);
            l_464 = (l_440[1][1] = l_440[3][1]);
            l_440[3][6] = l_464;
        }
    }
    return l_464;
}


/* ------------------------------------------ */
/* 
 * reads : p_1042->g_223 p_1042->g_365 p_1042->g_372 p_1042->g_127 p_1042->g_298 p_1042->g_375 p_1042->g_379 p_1042->g_383 p_1042->g_26 p_1042->g_143 p_1042->g_144 p_1042->g_419 p_1042->g_82 p_1042->g_83
 * writes: p_1042->g_223 p_1042->g_107 p_1042->g_383 p_1042->g_144 p_1042->g_420
 */
int8_t * func_49(int8_t ** p_50, uint16_t  p_51, struct S2 * p_1042)
{ /* block id: 127 */
    uint32_t l_357 = 4294967291UL;
    int32_t *l_361 = (void*)0;
    int32_t *l_363 = &p_1042->g_107;
    VECTOR(int32_t, 8) l_364 = (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x39DEDD66L), 0x39DEDD66L), 0x39DEDD66L, (-1L), 0x39DEDD66L);
    VECTOR(int32_t, 8) l_376 = (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, (-6L)), (-6L)), (-6L), 1L, (-6L));
    uint64_t l_399 = 0UL;
    int i;
    for (p_1042->g_223 = 0; (p_1042->g_223 != 9); p_1042->g_223++)
    { /* block id: 130 */
        int32_t *l_355 = &p_1042->g_107;
        int32_t *l_356 = (void*)0;
        ++l_357;
    }
    (*l_363) = p_51;
    if (((*l_363) = ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(rotate(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(l_364.s1322060450346375)))), ((VECTOR(int32_t, 8))(p_1042->g_365.s8cb3b2ac)).s1455731656006266))).hi)))))))))).s3))
    { /* block id: 135 */
        int16_t l_366 = 0x412AL;
        VECTOR(int32_t, 16) l_371 = (VECTOR(int32_t, 16))(0x4B773F05L, (VECTOR(int32_t, 4))(0x4B773F05L, (VECTOR(int32_t, 2))(0x4B773F05L, 0x657EABF4L), 0x657EABF4L), 0x657EABF4L, 0x4B773F05L, 0x657EABF4L, (VECTOR(int32_t, 2))(0x4B773F05L, 0x657EABF4L), (VECTOR(int32_t, 2))(0x4B773F05L, 0x657EABF4L), 0x4B773F05L, 0x657EABF4L, 0x4B773F05L, 0x657EABF4L);
        uint16_t *l_373 = (void*)0;
        int32_t l_374 = 0x02819F14L;
        uint32_t *l_380[5] = {&p_1042->g_85.f2,&p_1042->g_85.f2,&p_1042->g_85.f2,&p_1042->g_85.f2,&p_1042->g_85.f2};
        int32_t l_382[2];
        union U1 l_386 = {0};
        uint64_t *l_387[3][4] = {{&p_1042->g_319,&p_1042->g_319,&p_1042->g_319,&p_1042->g_319},{&p_1042->g_319,&p_1042->g_319,&p_1042->g_319,&p_1042->g_319},{&p_1042->g_319,&p_1042->g_319,&p_1042->g_319,&p_1042->g_319}};
        int32_t l_388 = (-5L);
        int32_t *l_389[3];
        int32_t **l_390 = &p_1042->g_144[4];
        int i, j;
        for (i = 0; i < 2; i++)
            l_382[i] = 0x6A57E317L;
        for (i = 0; i < 3; i++)
            l_389[i] = (void*)0;
        l_364.s1 |= (((l_366 && ((safe_mod_func_int32_t_s_s(((*l_363) = p_51), (safe_add_func_int64_t_s_s(((VECTOR(int64_t, 2))(upsample(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(0x1DA4EE54L, ((VECTOR(int32_t, 2))(l_371.s7a)), 0x3C5A0E90L)).zwzzyxyxyxzxyzwy)).s1c, ((VECTOR(uint32_t, 16))(abs(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 8))(p_1042->g_372.zxyyyxzw)).s21)))).yxyxxxxyxxxyyxxy))).s0f))).even, (p_51 >= (65534UL != (l_374 = (9UL || p_1042->g_127[3])))))))) & GROUP_DIVERGE(2, 1))) >= (p_1042->g_298.y | (l_388 = ((VECTOR(int32_t, 16))(rotate(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(p_1042->g_375.s4706)).zzxxxwzw)).s2607725703013054, ((VECTOR(int32_t, 4))(max(((VECTOR(int32_t, 2))(l_376.s03)).yxyx, (int32_t)((safe_sub_func_uint8_t_u_u(((VECTOR(uint8_t, 2))(p_1042->g_379.yw)).lo, ((++p_1042->g_383) & p_1042->g_26))) <= (l_382[0] = (l_386 , 0x3C1CA436CCAD854DL)))))).ywwzyzwxxwzzxwyw))).sd))) == p_51);
        (*l_390) = (*p_1042->g_143);
    }
    else
    { /* block id: 143 */
        int32_t *l_391 = &p_1042->g_381[2];
        int32_t *l_392 = &p_1042->g_381[1];
        int32_t *l_393 = (void*)0;
        int32_t *l_394 = &p_1042->g_107;
        int32_t *l_395 = (void*)0;
        int32_t l_396 = 0x0C5BD8E4L;
        int32_t *l_397 = &p_1042->g_381[4];
        int32_t *l_398[5] = {&p_1042->g_381[1],&p_1042->g_381[1],&p_1042->g_381[1],&p_1042->g_381[1],&p_1042->g_381[1]};
        int i;
        l_399++;
        for (l_396 = (-18); (l_396 < 25); l_396++)
        { /* block id: 147 */
            uint8_t l_404 = 0x0CL;
            int32_t l_407 = 0x075023B1L;
            int32_t l_408 = 0x2DABC668L;
            int32_t l_409 = 1L;
            int32_t l_410[1];
            uint16_t l_411 = 0xB210L;
            int32_t **l_414 = (void*)0;
            int32_t **l_415 = (void*)0;
            int32_t **l_416 = (void*)0;
            int32_t **l_417 = &l_398[0];
            int32_t **l_418 = &l_392;
            int i;
            for (i = 0; i < 1; i++)
                l_410[i] = 1L;
            l_404++;
            ++l_411;
            (*p_1042->g_419) = ((*l_418) = (p_1042->g_223 , ((*p_1042->g_143) = ((*l_417) = &l_407))));
            return (*p_1042->g_82);
        }
    }
    return (*p_50);
}


/* ------------------------------------------ */
/* 
 * reads : p_1042->g_117 p_1042->g_107 p_1042->g_143 p_1042->g_73 p_1042->g_144 p_1042->g_256 p_1042->g_82 p_1042->g_83 p_1042->g_222 p_1042->g_223 p_1042->g_298 p_1042->g_283 p_1042->g_314 p_1042->g_315 p_1042->g_209 p_1042->g_127 p_1042->g_319 p_1042->g_48 p_1042->g_26 p_1042->g_347 p_1042->g_350
 * writes: p_1042->g_107 p_1042->g_144 p_1042->g_73 p_1042->g_83 p_1042->g_309 p_1042->g_319 p_1042->g_323 p_1042->g_223 p_1042->g_236
 */
int8_t ** func_52(int64_t  p_53, int8_t ** p_54, int16_t  p_55, int64_t  p_56, struct S2 * p_1042)
{ /* block id: 24 */
    VECTOR(int8_t, 8) l_123 = (VECTOR(int8_t, 8))(0x35L, (VECTOR(int8_t, 4))(0x35L, (VECTOR(int8_t, 2))(0x35L, 0x59L), 0x59L), 0x59L, 0x35L, 0x59L);
    int32_t l_124 = 0x5A549CE4L;
    int32_t l_125 = 0x12496885L;
    int32_t l_126 = 0x40FAF101L;
    int32_t l_128 = (-2L);
    int32_t l_129 = 0x126699BEL;
    int32_t l_130[9] = {1L,1L,1L,1L,1L,1L,1L,1L,1L};
    uint64_t l_134 = 0x14DB471E7E6F1747L;
    int16_t *l_198 = (void*)0;
    union U1 l_218 = {0};
    VECTOR(uint32_t, 8) l_249 = (VECTOR(uint32_t, 8))(0x41D9189DL, (VECTOR(uint32_t, 4))(0x41D9189DL, (VECTOR(uint32_t, 2))(0x41D9189DL, 0x09165486L), 0x09165486L), 0x09165486L, 0x41D9189DL, 0x09165486L);
    int32_t *l_268 = &l_130[5];
    uint32_t l_307 = 0UL;
    union U0 *l_321 = &p_1042->g_85;
    VECTOR(int8_t, 8) l_337 = (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 1L), 1L), 1L, 1L, 1L);
    int16_t l_338 = 0x4166L;
    int16_t l_339 = 0x03F7L;
    uint32_t *l_342 = (void*)0;
    uint32_t *l_343 = &p_1042->g_85.f2;
    uint32_t *l_344 = (void*)0;
    uint32_t *l_345 = (void*)0;
    uint32_t *l_346[7][2] = {{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}};
    uint8_t *l_348[3];
    int64_t **l_349[1];
    int32_t *l_351 = &l_126;
    int32_t *l_352 = &p_1042->g_107;
    int i, j;
    for (i = 0; i < 3; i++)
        l_348[i] = (void*)0;
    for (i = 0; i < 1; i++)
        l_349[i] = &p_1042->g_236[1];
    (*p_1042->g_117) |= (~0x3823A47DL);
    if (p_53)
    { /* block id: 26 */
        int32_t *l_118 = &p_1042->g_107;
        int32_t *l_119 = &p_1042->g_107;
        int32_t *l_120 = &p_1042->g_107;
        int32_t *l_121 = &p_1042->g_107;
        int32_t *l_122[4];
        int32_t l_131 = 1L;
        int32_t l_132 = 0x573FC3EFL;
        int64_t l_133 = 0L;
        int32_t l_137[9][3] = {{0x5FB154BAL,0x5FB154BAL,0x5FB154BAL},{0x5FB154BAL,0x5FB154BAL,0x5FB154BAL},{0x5FB154BAL,0x5FB154BAL,0x5FB154BAL},{0x5FB154BAL,0x5FB154BAL,0x5FB154BAL},{0x5FB154BAL,0x5FB154BAL,0x5FB154BAL},{0x5FB154BAL,0x5FB154BAL,0x5FB154BAL},{0x5FB154BAL,0x5FB154BAL,0x5FB154BAL},{0x5FB154BAL,0x5FB154BAL,0x5FB154BAL},{0x5FB154BAL,0x5FB154BAL,0x5FB154BAL}};
        uint8_t l_138 = 0xC2L;
        int i, j;
        for (i = 0; i < 4; i++)
            l_122[i] = &p_1042->g_107;
        l_134--;
        ++l_138;
    }
    else
    { /* block id: 29 */
        int32_t **l_142 = (void*)0;
        int32_t l_151 = 0L;
        int32_t l_152 = 9L;
        int32_t l_153 = 0x1DEC4DA8L;
        int32_t l_154 = 1L;
        int32_t l_155 = 0x2A0D6759L;
        int32_t l_156 = 0x721FC947L;
        int32_t l_157 = 0x59786D45L;
        int32_t l_158 = (-1L);
        int32_t l_159 = 2L;
        int32_t l_160 = (-1L);
        int32_t l_161 = 0L;
        int32_t l_162 = (-1L);
        int32_t l_163 = 6L;
        int32_t l_164 = (-5L);
        int32_t l_165 = 1L;
        int8_t l_166 = 0L;
        int32_t l_169 = 0x1569A964L;
        int32_t l_170[8][5][4] = {{{(-3L),0x4762700EL,1L,1L},{(-3L),0x4762700EL,1L,1L},{(-3L),0x4762700EL,1L,1L},{(-3L),0x4762700EL,1L,1L},{(-3L),0x4762700EL,1L,1L}},{{(-3L),0x4762700EL,1L,1L},{(-3L),0x4762700EL,1L,1L},{(-3L),0x4762700EL,1L,1L},{(-3L),0x4762700EL,1L,1L},{(-3L),0x4762700EL,1L,1L}},{{(-3L),0x4762700EL,1L,1L},{(-3L),0x4762700EL,1L,1L},{(-3L),0x4762700EL,1L,1L},{(-3L),0x4762700EL,1L,1L},{(-3L),0x4762700EL,1L,1L}},{{(-3L),0x4762700EL,1L,1L},{(-3L),0x4762700EL,1L,1L},{(-3L),0x4762700EL,1L,1L},{(-3L),0x4762700EL,1L,1L},{(-3L),0x4762700EL,1L,1L}},{{(-3L),0x4762700EL,1L,1L},{(-3L),0x4762700EL,1L,1L},{(-3L),0x4762700EL,1L,1L},{(-3L),0x4762700EL,1L,1L},{(-3L),0x4762700EL,1L,1L}},{{(-3L),0x4762700EL,1L,1L},{(-3L),0x4762700EL,1L,1L},{(-3L),0x4762700EL,1L,1L},{(-3L),0x4762700EL,1L,1L},{(-3L),0x4762700EL,1L,1L}},{{(-3L),0x4762700EL,1L,1L},{(-3L),0x4762700EL,1L,1L},{(-3L),0x4762700EL,1L,1L},{(-3L),0x4762700EL,1L,1L},{(-3L),0x4762700EL,1L,1L}},{{(-3L),0x4762700EL,1L,1L},{(-3L),0x4762700EL,1L,1L},{(-3L),0x4762700EL,1L,1L},{(-3L),0x4762700EL,1L,1L},{(-3L),0x4762700EL,1L,1L}}};
        uint64_t l_171 = 0x3AA5389241299B76L;
        int32_t *l_175 = &l_164;
        int32_t *l_176 = (void*)0;
        VECTOR(int32_t, 2) l_183 = (VECTOR(int32_t, 2))(0L, 7L);
        VECTOR(int32_t, 4) l_185 = (VECTOR(int32_t, 4))(0x2691D0D9L, (VECTOR(int32_t, 2))(0x2691D0D9L, 0x4C3AECEAL), 0x4C3AECEAL);
        VECTOR(uint32_t, 16) l_235 = (VECTOR(uint32_t, 16))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 4294967295UL), 4294967295UL), 4294967295UL, 1UL, 4294967295UL, (VECTOR(uint32_t, 2))(1UL, 4294967295UL), (VECTOR(uint32_t, 2))(1UL, 4294967295UL), 1UL, 4294967295UL, 1UL, 4294967295UL);
        int32_t l_287 = 3L;
        int16_t l_289 = 0x2503L;
        uint8_t *l_308[10] = {&p_1042->g_309,&p_1042->g_309,&p_1042->g_309,&p_1042->g_309,&p_1042->g_309,&p_1042->g_309,&p_1042->g_309,&p_1042->g_309,&p_1042->g_309,&p_1042->g_309};
        VECTOR(int16_t, 8) l_316 = (VECTOR(int16_t, 8))(0x3C42L, (VECTOR(int16_t, 4))(0x3C42L, (VECTOR(int16_t, 2))(0x3C42L, (-1L)), (-1L)), (-1L), 0x3C42L, (-1L));
        int32_t *l_320[7] = {(void*)0,&l_161,(void*)0,(void*)0,&l_161,(void*)0,(void*)0};
        union U0 **l_324 = &p_1042->g_323;
        int i, j, k;
        (*p_1042->g_143) = &p_1042->g_107;
        for (p_1042->g_73 = 0; (p_1042->g_73 < 22); p_1042->g_73++)
        { /* block id: 33 */
            int32_t *l_147 = (void*)0;
            int32_t *l_148 = (void*)0;
            int32_t *l_149 = &l_129;
            int32_t *l_150[10][8] = {{&l_124,&l_125,&l_130[8],&l_130[8],&l_125,&l_124,&p_1042->g_107,&l_126},{&l_124,&l_125,&l_130[8],&l_130[8],&l_125,&l_124,&p_1042->g_107,&l_126},{&l_124,&l_125,&l_130[8],&l_130[8],&l_125,&l_124,&p_1042->g_107,&l_126},{&l_124,&l_125,&l_130[8],&l_130[8],&l_125,&l_124,&p_1042->g_107,&l_126},{&l_124,&l_125,&l_130[8],&l_130[8],&l_125,&l_124,&p_1042->g_107,&l_126},{&l_124,&l_125,&l_130[8],&l_130[8],&l_125,&l_124,&p_1042->g_107,&l_126},{&l_124,&l_125,&l_130[8],&l_130[8],&l_125,&l_124,&p_1042->g_107,&l_126},{&l_124,&l_125,&l_130[8],&l_130[8],&l_125,&l_124,&p_1042->g_107,&l_126},{&l_124,&l_125,&l_130[8],&l_130[8],&l_125,&l_124,&p_1042->g_107,&l_126},{&l_124,&l_125,&l_130[8],&l_130[8],&l_125,&l_124,&p_1042->g_107,&l_126}};
            int16_t l_167 = 1L;
            int8_t l_168 = (-8L);
            int32_t **l_174[2];
            VECTOR(int32_t, 16) l_192 = (VECTOR(int32_t, 16))(8L, (VECTOR(int32_t, 4))(8L, (VECTOR(int32_t, 2))(8L, (-1L)), (-1L)), (-1L), 8L, (-1L), (VECTOR(int32_t, 2))(8L, (-1L)), (VECTOR(int32_t, 2))(8L, (-1L)), 8L, (-1L), 8L, (-1L));
            uint8_t l_227[4][3][4] = {{{1UL,0x13L,0UL,0x3BL},{1UL,0x13L,0UL,0x3BL},{1UL,0x13L,0UL,0x3BL}},{{1UL,0x13L,0UL,0x3BL},{1UL,0x13L,0UL,0x3BL},{1UL,0x13L,0UL,0x3BL}},{{1UL,0x13L,0UL,0x3BL},{1UL,0x13L,0UL,0x3BL},{1UL,0x13L,0UL,0x3BL}},{{1UL,0x13L,0UL,0x3BL},{1UL,0x13L,0UL,0x3BL},{1UL,0x13L,0UL,0x3BL}}};
            int64_t l_290 = 0L;
            int i, j, k;
            for (i = 0; i < 2; i++)
                l_174[i] = (void*)0;
            if ((*p_1042->g_117))
                break;
            l_171++;
            l_176 = (l_175 = (*p_1042->g_143));
            for (l_169 = 0; (l_169 > 12); l_169 = safe_add_func_uint16_t_u_u(l_169, 4))
            { /* block id: 40 */
                int64_t l_184 = 0x477997638451A280L;
                VECTOR(int64_t, 16) l_190 = (VECTOR(int64_t, 16))((-10L), (VECTOR(int64_t, 4))((-10L), (VECTOR(int64_t, 2))((-10L), 0x42B1C4F108851F16L), 0x42B1C4F108851F16L), 0x42B1C4F108851F16L, (-10L), 0x42B1C4F108851F16L, (VECTOR(int64_t, 2))((-10L), 0x42B1C4F108851F16L), (VECTOR(int64_t, 2))((-10L), 0x42B1C4F108851F16L), (-10L), 0x42B1C4F108851F16L, (-10L), 0x42B1C4F108851F16L);
                VECTOR(int64_t, 2) l_191 = (VECTOR(int64_t, 2))(0x153EA0C148EE5A64L, 1L);
                int32_t *l_193 = (void*)0;
                int32_t *l_194 = (void*)0;
                int32_t *l_195 = &p_1042->g_127[5];
                int64_t *l_196 = (void*)0;
                int64_t *l_197[9][8][3] = {{{&l_184,&l_184,&l_184},{&l_184,&l_184,&l_184},{&l_184,&l_184,&l_184},{&l_184,&l_184,&l_184},{&l_184,&l_184,&l_184},{&l_184,&l_184,&l_184},{&l_184,&l_184,&l_184},{&l_184,&l_184,&l_184}},{{&l_184,&l_184,&l_184},{&l_184,&l_184,&l_184},{&l_184,&l_184,&l_184},{&l_184,&l_184,&l_184},{&l_184,&l_184,&l_184},{&l_184,&l_184,&l_184},{&l_184,&l_184,&l_184},{&l_184,&l_184,&l_184}},{{&l_184,&l_184,&l_184},{&l_184,&l_184,&l_184},{&l_184,&l_184,&l_184},{&l_184,&l_184,&l_184},{&l_184,&l_184,&l_184},{&l_184,&l_184,&l_184},{&l_184,&l_184,&l_184},{&l_184,&l_184,&l_184}},{{&l_184,&l_184,&l_184},{&l_184,&l_184,&l_184},{&l_184,&l_184,&l_184},{&l_184,&l_184,&l_184},{&l_184,&l_184,&l_184},{&l_184,&l_184,&l_184},{&l_184,&l_184,&l_184},{&l_184,&l_184,&l_184}},{{&l_184,&l_184,&l_184},{&l_184,&l_184,&l_184},{&l_184,&l_184,&l_184},{&l_184,&l_184,&l_184},{&l_184,&l_184,&l_184},{&l_184,&l_184,&l_184},{&l_184,&l_184,&l_184},{&l_184,&l_184,&l_184}},{{&l_184,&l_184,&l_184},{&l_184,&l_184,&l_184},{&l_184,&l_184,&l_184},{&l_184,&l_184,&l_184},{&l_184,&l_184,&l_184},{&l_184,&l_184,&l_184},{&l_184,&l_184,&l_184},{&l_184,&l_184,&l_184}},{{&l_184,&l_184,&l_184},{&l_184,&l_184,&l_184},{&l_184,&l_184,&l_184},{&l_184,&l_184,&l_184},{&l_184,&l_184,&l_184},{&l_184,&l_184,&l_184},{&l_184,&l_184,&l_184},{&l_184,&l_184,&l_184}},{{&l_184,&l_184,&l_184},{&l_184,&l_184,&l_184},{&l_184,&l_184,&l_184},{&l_184,&l_184,&l_184},{&l_184,&l_184,&l_184},{&l_184,&l_184,&l_184},{&l_184,&l_184,&l_184},{&l_184,&l_184,&l_184}},{{&l_184,&l_184,&l_184},{&l_184,&l_184,&l_184},{&l_184,&l_184,&l_184},{&l_184,&l_184,&l_184},{&l_184,&l_184,&l_184},{&l_184,&l_184,&l_184},{&l_184,&l_184,&l_184},{&l_184,&l_184,&l_184}}};
                uint16_t *l_199 = &p_1042->g_200;
                int32_t l_278 = 1L;
                int16_t l_280 = (-1L);
                int32_t l_282 = 0L;
                int32_t l_285 = 0x102AA4E3L;
                int32_t l_286[8][3][6] = {{{0x76048FC9L,0x43A6CF5AL,0x43A6CF5AL,0x76048FC9L,0x76048FC9L,0x43A6CF5AL},{0x76048FC9L,0x43A6CF5AL,0x43A6CF5AL,0x76048FC9L,0x76048FC9L,0x43A6CF5AL},{0x76048FC9L,0x43A6CF5AL,0x43A6CF5AL,0x76048FC9L,0x76048FC9L,0x43A6CF5AL}},{{0x76048FC9L,0x43A6CF5AL,0x43A6CF5AL,0x76048FC9L,0x76048FC9L,0x43A6CF5AL},{0x76048FC9L,0x43A6CF5AL,0x43A6CF5AL,0x76048FC9L,0x76048FC9L,0x43A6CF5AL},{0x76048FC9L,0x43A6CF5AL,0x43A6CF5AL,0x76048FC9L,0x76048FC9L,0x43A6CF5AL}},{{0x76048FC9L,0x43A6CF5AL,0x43A6CF5AL,0x76048FC9L,0x76048FC9L,0x43A6CF5AL},{0x76048FC9L,0x43A6CF5AL,0x43A6CF5AL,0x76048FC9L,0x76048FC9L,0x43A6CF5AL},{0x76048FC9L,0x43A6CF5AL,0x43A6CF5AL,0x76048FC9L,0x76048FC9L,0x43A6CF5AL}},{{0x76048FC9L,0x43A6CF5AL,0x43A6CF5AL,0x76048FC9L,0x76048FC9L,0x43A6CF5AL},{0x76048FC9L,0x43A6CF5AL,0x43A6CF5AL,0x76048FC9L,0x76048FC9L,0x43A6CF5AL},{0x76048FC9L,0x43A6CF5AL,0x43A6CF5AL,0x76048FC9L,0x76048FC9L,0x43A6CF5AL}},{{0x76048FC9L,0x43A6CF5AL,0x43A6CF5AL,0x76048FC9L,0x76048FC9L,0x43A6CF5AL},{0x76048FC9L,0x43A6CF5AL,0x43A6CF5AL,0x76048FC9L,0x76048FC9L,0x43A6CF5AL},{0x76048FC9L,0x43A6CF5AL,0x43A6CF5AL,0x76048FC9L,0x76048FC9L,0x43A6CF5AL}},{{0x76048FC9L,0x43A6CF5AL,0x43A6CF5AL,0x76048FC9L,0x76048FC9L,0x43A6CF5AL},{0x76048FC9L,0x43A6CF5AL,0x43A6CF5AL,0x76048FC9L,0x76048FC9L,0x43A6CF5AL},{0x76048FC9L,0x43A6CF5AL,0x43A6CF5AL,0x76048FC9L,0x76048FC9L,0x43A6CF5AL}},{{0x76048FC9L,0x43A6CF5AL,0x43A6CF5AL,0x76048FC9L,0x76048FC9L,0x43A6CF5AL},{0x76048FC9L,0x43A6CF5AL,0x43A6CF5AL,0x76048FC9L,0x76048FC9L,0x43A6CF5AL},{0x76048FC9L,0x43A6CF5AL,0x43A6CF5AL,0x76048FC9L,0x76048FC9L,0x43A6CF5AL}},{{0x76048FC9L,0x43A6CF5AL,0x43A6CF5AL,0x76048FC9L,0x76048FC9L,0x43A6CF5AL},{0x76048FC9L,0x43A6CF5AL,0x43A6CF5AL,0x76048FC9L,0x76048FC9L,0x43A6CF5AL},{0x76048FC9L,0x43A6CF5AL,0x43A6CF5AL,0x76048FC9L,0x76048FC9L,0x43A6CF5AL}}};
                VECTOR(int64_t, 2) l_288 = (VECTOR(int64_t, 2))(0x529E8AC78EAE60F4L, 0x3AD9F3FFBFF17EEFL);
                int i, j, k;
                for (l_157 = (-1); (l_157 != (-19)); --l_157)
                { /* block id: 43 */
                    for (l_153 = 0; (l_153 > 8); ++l_153)
                    { /* block id: 46 */
                        return &p_1042->g_83;
                    }
                }
                (*l_149) ^= ((VECTOR(int32_t, 16))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(l_183.yy)), ((VECTOR(int32_t, 4))(0x35B19036L, (l_184 = 0x4AA7F815L), 0L, 1L)), 0x47BF902DL, 0x50DE7C19L)).s7531242651664722, ((VECTOR(int32_t, 8))(mul_hi(((VECTOR(int32_t, 2))(l_185.wx)).xyxyyxxy, ((VECTOR(int32_t, 4))(((*l_176) = (safe_lshift_func_uint16_t_u_u((safe_sub_func_uint16_t_u_u(((*l_199) = ((l_130[0] = ((VECTOR(int64_t, 8))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 8),((VECTOR(int64_t, 8))(l_190.s3692af2c)), ((VECTOR(int64_t, 4))(l_191.xyyy)).ywxxwwzx, ((VECTOR(int64_t, 2))(upsample(((VECTOR(int32_t, 8))(safe_clamp_func(VECTOR(int32_t, 8),int32_t,((VECTOR(int32_t, 16))(l_192.s3fabb2636098fc4d)).odd, (int32_t)((*l_195) = l_130[8]), (int32_t)(-1L)))).s22, ((VECTOR(uint32_t, 2))(5UL, 4294967295UL))))).xxyyxxyx))).s6) || ((((~((l_191.x , l_198) != &p_55)) >= (((**p_54) = (p_1042->g_86 , (-6L))) , p_1042->g_48.z)) < p_1042->g_48.z) , p_1042->g_48.w))), 0UL)), 1))), 0x3B16C7A9L, 1L, 2L)).zxwyyxzz))).s5714346270347044))).sa;
            }
        }
        l_125 = (l_129 &= ((*l_175) = ((safe_mod_func_int32_t_s_s(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(max(((VECTOR(int32_t, 16))((((safe_rshift_func_int8_t_s_u((*l_175), FAKE_DIVERGE(p_1042->global_1_offset, get_global_id(1), 10))) != p_1042->g_256.x) >= ((safe_mul_func_uint8_t_u_u(((p_56 ^= 0L) | ((((*p_54) = (*p_1042->g_82)) != ((p_55 = (~(((((*p_1042->g_222) < ((*l_268) = (safe_mul_func_int16_t_s_s((l_307 , p_1042->g_298.x), p_1042->g_283[7][9][0])))) > (safe_sub_func_int8_t_s_s((safe_mod_func_uint64_t_u_u(((p_1042->g_319 &= (((((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 4))(mad_hi(((VECTOR(uint16_t, 16))(p_1042->g_314.xyyyyxxyyxxxyyyx)).sc82f, ((VECTOR(uint16_t, 16))(abs(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(abs_diff(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(mul_hi(((VECTOR(int16_t, 4))(p_1042->g_315.s1373)), ((VECTOR(int16_t, 8))(l_316.s25017274)).hi))).zzzzwwxx)).odd)), ((((p_1042->g_309 = (safe_mod_func_uint64_t_u_u(0xFE6B6110D4600AA2L, l_307))) <= 0x21L) < p_53) , p_1042->g_209), 0L, 0x1007L, 0L)).s21, ((VECTOR(int16_t, 2))(0x4CB9L))))), ((VECTOR(uint16_t, 4))(0xD405L)), 0xC043L, 65533UL)).even)).xzxyxwxzwwxxwzxz))).sf132, ((VECTOR(uint16_t, 4))(1UL))))).odd)).even , p_1042->g_127[5]) == p_53) <= (*p_1042->g_222))) , p_53), p_53)), 0x34L))) != p_53) || 0x7A293B2FL))) , &p_1042->g_26)) , FAKE_DIVERGE(p_1042->global_1_offset, get_global_id(1), 10))), p_1042->g_48.x)) & p_53)), 0x0C826E05L, ((VECTOR(int32_t, 2))(0x28DB5A0EL)), (-4L), 1L, 9L, ((VECTOR(int32_t, 8))((-5L))), 0x51655C59L)).sad47, ((VECTOR(int32_t, 4))(5L))))).hi)).odd, p_53)) && p_56)));
        (*l_324) = l_321;
    }
    (*l_268) = ((*l_268) | (safe_mod_func_int32_t_s_s((l_218 , (safe_rshift_func_int8_t_s_u((safe_div_func_uint32_t_u_u((*l_268), (safe_rshift_func_uint8_t_u_u((p_53 ^ ((l_125 |= ((safe_sub_func_int8_t_s_s((**p_54), (-1L))) < p_55)) > (((((*p_1042->g_222) = ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 2))(l_337.s23)))).yxyx)).z) < ((l_338 != (*l_268)) > p_55)) , p_56) && l_339))), 4)))), 3))), p_1042->g_48.x)));
    (*l_352) = ((*l_351) = (((((((((*l_268) = ((l_125 ^= (*l_268)) || (p_56 == p_1042->g_347[0][2]))) ^ (6L < p_1042->g_319)) , &p_1042->g_237) == (p_1042->g_236[2] = &p_56)) >= ((void*)0 == p_1042->g_350)) ^ p_1042->g_48.z) == 0x6F3D9ADBL) && (*l_268)));
    return &p_1042->g_83;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int8_t ** func_57(uint32_t  p_58, union U1  p_59, int32_t  p_60, uint32_t  p_61, uint64_t  p_62, struct S2 * p_1042)
{ /* block id: 14 */
    uint64_t l_89 = 0xA6296EF6A07EB839L;
    int32_t *l_92 = (void*)0;
    int32_t *l_93 = (void*)0;
    int32_t *l_94 = (void*)0;
    int32_t *l_95 = (void*)0;
    int32_t *l_96 = (void*)0;
    int32_t l_97 = 0L;
    int32_t *l_98 = (void*)0;
    int32_t l_99[1][5] = {{0x6F461E62L,0x6F461E62L,0x6F461E62L,0x6F461E62L,0x6F461E62L}};
    int32_t *l_100 = &l_97;
    int32_t *l_101 = &l_97;
    int32_t *l_102 = &l_97;
    int32_t *l_103 = &l_99[0][0];
    int32_t *l_104 = &l_97;
    int32_t *l_105[6][7][6] = {{{&l_99[0][0],&l_99[0][0],(void*)0,&l_97,&l_97,&l_99[0][2]},{&l_99[0][0],&l_99[0][0],(void*)0,&l_97,&l_97,&l_99[0][2]},{&l_99[0][0],&l_99[0][0],(void*)0,&l_97,&l_97,&l_99[0][2]},{&l_99[0][0],&l_99[0][0],(void*)0,&l_97,&l_97,&l_99[0][2]},{&l_99[0][0],&l_99[0][0],(void*)0,&l_97,&l_97,&l_99[0][2]},{&l_99[0][0],&l_99[0][0],(void*)0,&l_97,&l_97,&l_99[0][2]},{&l_99[0][0],&l_99[0][0],(void*)0,&l_97,&l_97,&l_99[0][2]}},{{&l_99[0][0],&l_99[0][0],(void*)0,&l_97,&l_97,&l_99[0][2]},{&l_99[0][0],&l_99[0][0],(void*)0,&l_97,&l_97,&l_99[0][2]},{&l_99[0][0],&l_99[0][0],(void*)0,&l_97,&l_97,&l_99[0][2]},{&l_99[0][0],&l_99[0][0],(void*)0,&l_97,&l_97,&l_99[0][2]},{&l_99[0][0],&l_99[0][0],(void*)0,&l_97,&l_97,&l_99[0][2]},{&l_99[0][0],&l_99[0][0],(void*)0,&l_97,&l_97,&l_99[0][2]},{&l_99[0][0],&l_99[0][0],(void*)0,&l_97,&l_97,&l_99[0][2]}},{{&l_99[0][0],&l_99[0][0],(void*)0,&l_97,&l_97,&l_99[0][2]},{&l_99[0][0],&l_99[0][0],(void*)0,&l_97,&l_97,&l_99[0][2]},{&l_99[0][0],&l_99[0][0],(void*)0,&l_97,&l_97,&l_99[0][2]},{&l_99[0][0],&l_99[0][0],(void*)0,&l_97,&l_97,&l_99[0][2]},{&l_99[0][0],&l_99[0][0],(void*)0,&l_97,&l_97,&l_99[0][2]},{&l_99[0][0],&l_99[0][0],(void*)0,&l_97,&l_97,&l_99[0][2]},{&l_99[0][0],&l_99[0][0],(void*)0,&l_97,&l_97,&l_99[0][2]}},{{&l_99[0][0],&l_99[0][0],(void*)0,&l_97,&l_97,&l_99[0][2]},{&l_99[0][0],&l_99[0][0],(void*)0,&l_97,&l_97,&l_99[0][2]},{&l_99[0][0],&l_99[0][0],(void*)0,&l_97,&l_97,&l_99[0][2]},{&l_99[0][0],&l_99[0][0],(void*)0,&l_97,&l_97,&l_99[0][2]},{&l_99[0][0],&l_99[0][0],(void*)0,&l_97,&l_97,&l_99[0][2]},{&l_99[0][0],&l_99[0][0],(void*)0,&l_97,&l_97,&l_99[0][2]},{&l_99[0][0],&l_99[0][0],(void*)0,&l_97,&l_97,&l_99[0][2]}},{{&l_99[0][0],&l_99[0][0],(void*)0,&l_97,&l_97,&l_99[0][2]},{&l_99[0][0],&l_99[0][0],(void*)0,&l_97,&l_97,&l_99[0][2]},{&l_99[0][0],&l_99[0][0],(void*)0,&l_97,&l_97,&l_99[0][2]},{&l_99[0][0],&l_99[0][0],(void*)0,&l_97,&l_97,&l_99[0][2]},{&l_99[0][0],&l_99[0][0],(void*)0,&l_97,&l_97,&l_99[0][2]},{&l_99[0][0],&l_99[0][0],(void*)0,&l_97,&l_97,&l_99[0][2]},{&l_99[0][0],&l_99[0][0],(void*)0,&l_97,&l_97,&l_99[0][2]}},{{&l_99[0][0],&l_99[0][0],(void*)0,&l_97,&l_97,&l_99[0][2]},{&l_99[0][0],&l_99[0][0],(void*)0,&l_97,&l_97,&l_99[0][2]},{&l_99[0][0],&l_99[0][0],(void*)0,&l_97,&l_97,&l_99[0][2]},{&l_99[0][0],&l_99[0][0],(void*)0,&l_97,&l_97,&l_99[0][2]},{&l_99[0][0],&l_99[0][0],(void*)0,&l_97,&l_97,&l_99[0][2]},{&l_99[0][0],&l_99[0][0],(void*)0,&l_97,&l_97,&l_99[0][2]},{&l_99[0][0],&l_99[0][0],(void*)0,&l_97,&l_97,&l_99[0][2]}}};
    int64_t l_106 = (-1L);
    uint32_t l_108[2][7] = {{0UL,0UL,0UL,0UL,0UL,0UL,0UL},{0UL,0UL,0UL,0UL,0UL,0UL,0UL}};
    int16_t *l_111 = &p_1042->g_73;
    int16_t **l_112 = (void*)0;
    int16_t **l_113 = &l_111;
    VECTOR(uint32_t, 2) l_114 = (VECTOR(uint32_t, 2))(0xBB8E87DEL, 4294967295UL);
    int8_t **l_115 = (void*)0;
    int i, j, k;
    for (p_62 = 16; (p_62 > 48); ++p_62)
    { /* block id: 17 */
        int64_t l_91 = 0x4D0122BF4B2487F0L;
        l_91 = l_89;
    }
    l_108[0][3]--;
    (*l_102) = (((*l_113) = l_111) != (((VECTOR(uint32_t, 8))(l_114.yyxxyxxy)).s2 , (void*)0));
    return l_115;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S2 c_1043;
    struct S2* p_1042 = &c_1043;
    struct S2 c_1044 = {
        (-1L), // p_1042->g_26
        0x7D52A42BL, // p_1042->g_32
        &p_1042->g_26, // p_1042->g_34
        &p_1042->g_34, // p_1042->g_33
        (VECTOR(int32_t, 4))(0x4E6C1CC4L, (VECTOR(int32_t, 2))(0x4E6C1CC4L, 1L), 1L), // p_1042->g_48
        0x6E19L, // p_1042->g_73
        &p_1042->g_26, // p_1042->g_83
        &p_1042->g_83, // p_1042->g_82
        {0}, // p_1042->g_85
        {0}, // p_1042->g_86
        (void*)0, // p_1042->g_90
        0x7ED7C6F0L, // p_1042->g_107
        &p_1042->g_107, // p_1042->g_117
        {(-1L),0L,(-1L),(-1L),0L,(-1L),(-1L)}, // p_1042->g_127
        (void*)0, // p_1042->g_141
        {&p_1042->g_107,&p_1042->g_107,&p_1042->g_107,&p_1042->g_107,&p_1042->g_107,&p_1042->g_107,&p_1042->g_107,&p_1042->g_107}, // p_1042->g_144
        &p_1042->g_144[4], // p_1042->g_143
        0xE665L, // p_1042->g_200
        0x73803E2EL, // p_1042->g_209
        0x57L, // p_1042->g_223
        &p_1042->g_223, // p_1042->g_222
        (VECTOR(uint8_t, 4))(254UL, (VECTOR(uint8_t, 2))(254UL, 0UL), 0UL), // p_1042->g_232
        1L, // p_1042->g_237
        {&p_1042->g_237,&p_1042->g_237,&p_1042->g_237}, // p_1042->g_236
        (VECTOR(uint16_t, 2))(0x073EL, 0x75EBL), // p_1042->g_256
        {{{(-9L),0x6894112BL},{(-9L),0x6894112BL},{(-9L),0x6894112BL},{(-9L),0x6894112BL},{(-9L),0x6894112BL},{(-9L),0x6894112BL},{(-9L),0x6894112BL},{(-9L),0x6894112BL},{(-9L),0x6894112BL},{(-9L),0x6894112BL}},{{(-9L),0x6894112BL},{(-9L),0x6894112BL},{(-9L),0x6894112BL},{(-9L),0x6894112BL},{(-9L),0x6894112BL},{(-9L),0x6894112BL},{(-9L),0x6894112BL},{(-9L),0x6894112BL},{(-9L),0x6894112BL},{(-9L),0x6894112BL}},{{(-9L),0x6894112BL},{(-9L),0x6894112BL},{(-9L),0x6894112BL},{(-9L),0x6894112BL},{(-9L),0x6894112BL},{(-9L),0x6894112BL},{(-9L),0x6894112BL},{(-9L),0x6894112BL},{(-9L),0x6894112BL},{(-9L),0x6894112BL}},{{(-9L),0x6894112BL},{(-9L),0x6894112BL},{(-9L),0x6894112BL},{(-9L),0x6894112BL},{(-9L),0x6894112BL},{(-9L),0x6894112BL},{(-9L),0x6894112BL},{(-9L),0x6894112BL},{(-9L),0x6894112BL},{(-9L),0x6894112BL}},{{(-9L),0x6894112BL},{(-9L),0x6894112BL},{(-9L),0x6894112BL},{(-9L),0x6894112BL},{(-9L),0x6894112BL},{(-9L),0x6894112BL},{(-9L),0x6894112BL},{(-9L),0x6894112BL},{(-9L),0x6894112BL},{(-9L),0x6894112BL}},{{(-9L),0x6894112BL},{(-9L),0x6894112BL},{(-9L),0x6894112BL},{(-9L),0x6894112BL},{(-9L),0x6894112BL},{(-9L),0x6894112BL},{(-9L),0x6894112BL},{(-9L),0x6894112BL},{(-9L),0x6894112BL},{(-9L),0x6894112BL}},{{(-9L),0x6894112BL},{(-9L),0x6894112BL},{(-9L),0x6894112BL},{(-9L),0x6894112BL},{(-9L),0x6894112BL},{(-9L),0x6894112BL},{(-9L),0x6894112BL},{(-9L),0x6894112BL},{(-9L),0x6894112BL},{(-9L),0x6894112BL}},{{(-9L),0x6894112BL},{(-9L),0x6894112BL},{(-9L),0x6894112BL},{(-9L),0x6894112BL},{(-9L),0x6894112BL},{(-9L),0x6894112BL},{(-9L),0x6894112BL},{(-9L),0x6894112BL},{(-9L),0x6894112BL},{(-9L),0x6894112BL}}}, // p_1042->g_283
        0x1697L, // p_1042->g_291
        (VECTOR(int32_t, 2))(0x5DC90061L, 0L), // p_1042->g_298
        251UL, // p_1042->g_309
        (VECTOR(uint16_t, 2))(0x2E7FL, 0x6DB8L), // p_1042->g_314
        (VECTOR(int16_t, 8))(0x721AL, (VECTOR(int16_t, 4))(0x721AL, (VECTOR(int16_t, 2))(0x721AL, (-1L)), (-1L)), (-1L), 0x721AL, (-1L)), // p_1042->g_315
        0x3D7BCE973FD62DF2L, // p_1042->g_319
        (void*)0, // p_1042->g_323
        {&p_1042->g_323,&p_1042->g_323}, // p_1042->g_322
        {{0x5E51844DL,0x5E51844DL,0x5E51844DL,0x5E51844DL,0x5E51844DL,0x5E51844DL,0x5E51844DL}}, // p_1042->g_347
        (void*)0, // p_1042->g_350
        (void*)0, // p_1042->g_360
        {{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}}}, // p_1042->g_362
        (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x580CB692L), 0x580CB692L), 0x580CB692L, (-1L), 0x580CB692L, (VECTOR(int32_t, 2))((-1L), 0x580CB692L), (VECTOR(int32_t, 2))((-1L), 0x580CB692L), (-1L), 0x580CB692L, (-1L), 0x580CB692L), // p_1042->g_365
        (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 0x644DBB93L), 0x644DBB93L), // p_1042->g_372
        (VECTOR(int32_t, 8))(0x7963F143L, (VECTOR(int32_t, 4))(0x7963F143L, (VECTOR(int32_t, 2))(0x7963F143L, 0x3DF748E9L), 0x3DF748E9L), 0x3DF748E9L, 0x7963F143L, 0x3DF748E9L), // p_1042->g_375
        (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0x39L), 0x39L), // p_1042->g_379
        {1L,(-7L),1L,1L,(-7L),1L,1L}, // p_1042->g_381
        5UL, // p_1042->g_383
        &p_1042->g_381[1], // p_1042->g_420
        &p_1042->g_420, // p_1042->g_419
        (void*)0, // p_1042->g_433
        &p_1042->g_420, // p_1042->g_466
        (VECTOR(int16_t, 16))(0x54E4L, (VECTOR(int16_t, 4))(0x54E4L, (VECTOR(int16_t, 2))(0x54E4L, 9L), 9L), 9L, 0x54E4L, 9L, (VECTOR(int16_t, 2))(0x54E4L, 9L), (VECTOR(int16_t, 2))(0x54E4L, 9L), 0x54E4L, 9L, 0x54E4L, 9L), // p_1042->g_541
        {{0xEA4F30E3232E0F2FL,0UL,18446744073709551615UL,0xBC8A64B36F41DE3DL,1UL,0xBC8A64B36F41DE3DL,18446744073709551615UL,0UL,0xEA4F30E3232E0F2FL},{0xEA4F30E3232E0F2FL,0UL,18446744073709551615UL,0xBC8A64B36F41DE3DL,1UL,0xBC8A64B36F41DE3DL,18446744073709551615UL,0UL,0xEA4F30E3232E0F2FL},{0xEA4F30E3232E0F2FL,0UL,18446744073709551615UL,0xBC8A64B36F41DE3DL,1UL,0xBC8A64B36F41DE3DL,18446744073709551615UL,0UL,0xEA4F30E3232E0F2FL},{0xEA4F30E3232E0F2FL,0UL,18446744073709551615UL,0xBC8A64B36F41DE3DL,1UL,0xBC8A64B36F41DE3DL,18446744073709551615UL,0UL,0xEA4F30E3232E0F2FL},{0xEA4F30E3232E0F2FL,0UL,18446744073709551615UL,0xBC8A64B36F41DE3DL,1UL,0xBC8A64B36F41DE3DL,18446744073709551615UL,0UL,0xEA4F30E3232E0F2FL},{0xEA4F30E3232E0F2FL,0UL,18446744073709551615UL,0xBC8A64B36F41DE3DL,1UL,0xBC8A64B36F41DE3DL,18446744073709551615UL,0UL,0xEA4F30E3232E0F2FL}}, // p_1042->g_556
        (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x57L), 0x57L), // p_1042->g_559
        (VECTOR(int8_t, 8))((-6L), (VECTOR(int8_t, 4))((-6L), (VECTOR(int8_t, 2))((-6L), 0x5EL), 0x5EL), 0x5EL, (-6L), 0x5EL), // p_1042->g_560
        (VECTOR(int8_t, 8))(0x37L, (VECTOR(int8_t, 4))(0x37L, (VECTOR(int8_t, 2))(0x37L, (-2L)), (-2L)), (-2L), 0x37L, (-2L)), // p_1042->g_561
        {{{&p_1042->g_381[1]},{&p_1042->g_381[1]},{&p_1042->g_381[1]},{&p_1042->g_381[1]}},{{&p_1042->g_381[1]},{&p_1042->g_381[1]},{&p_1042->g_381[1]},{&p_1042->g_381[1]}}}, // p_1042->g_570
        (void*)0, // p_1042->g_571
        &p_1042->g_86, // p_1042->g_573
        &p_1042->g_573, // p_1042->g_572
        (VECTOR(int8_t, 16))((-8L), (VECTOR(int8_t, 4))((-8L), (VECTOR(int8_t, 2))((-8L), 1L), 1L), 1L, (-8L), 1L, (VECTOR(int8_t, 2))((-8L), 1L), (VECTOR(int8_t, 2))((-8L), 1L), (-8L), 1L, (-8L), 1L), // p_1042->g_601
        (VECTOR(int64_t, 8))(0x548B8076527D8EEAL, (VECTOR(int64_t, 4))(0x548B8076527D8EEAL, (VECTOR(int64_t, 2))(0x548B8076527D8EEAL, 0x7C1C0F2E76DBD779L), 0x7C1C0F2E76DBD779L), 0x7C1C0F2E76DBD779L, 0x548B8076527D8EEAL, 0x7C1C0F2E76DBD779L), // p_1042->g_716
        (VECTOR(int64_t, 8))(0x44F63B7195E03BEBL, (VECTOR(int64_t, 4))(0x44F63B7195E03BEBL, (VECTOR(int64_t, 2))(0x44F63B7195E03BEBL, 0x20CFBB9165956395L), 0x20CFBB9165956395L), 0x20CFBB9165956395L, 0x44F63B7195E03BEBL, 0x20CFBB9165956395L), // p_1042->g_720
        (VECTOR(int32_t, 8))(0x6B5E3378L, (VECTOR(int32_t, 4))(0x6B5E3378L, (VECTOR(int32_t, 2))(0x6B5E3378L, 0x02A5B990L), 0x02A5B990L), 0x02A5B990L, 0x6B5E3378L, 0x02A5B990L), // p_1042->g_791
        (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x13A6L), 0x13A6L), // p_1042->g_801
        0x21431AF1L, // p_1042->g_807
        (VECTOR(int8_t, 8))(0x20L, (VECTOR(int8_t, 4))(0x20L, (VECTOR(int8_t, 2))(0x20L, 0x2DL), 0x2DL), 0x2DL, 0x20L, 0x2DL), // p_1042->g_822
        0L, // p_1042->g_833
        &p_1042->g_323, // p_1042->g_866
        (VECTOR(uint32_t, 8))(0x42BC145DL, (VECTOR(uint32_t, 4))(0x42BC145DL, (VECTOR(uint32_t, 2))(0x42BC145DL, 0x40BD2B89L), 0x40BD2B89L), 0x40BD2B89L, 0x42BC145DL, 0x40BD2B89L), // p_1042->g_872
        (VECTOR(uint32_t, 16))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 0x039D0537L), 0x039D0537L), 0x039D0537L, 0UL, 0x039D0537L, (VECTOR(uint32_t, 2))(0UL, 0x039D0537L), (VECTOR(uint32_t, 2))(0UL, 0x039D0537L), 0UL, 0x039D0537L, 0UL, 0x039D0537L), // p_1042->g_873
        (VECTOR(int32_t, 4))(0x313ED51DL, (VECTOR(int32_t, 2))(0x313ED51DL, 0x7CF6D8F1L), 0x7CF6D8F1L), // p_1042->g_903
        &p_1042->g_420, // p_1042->g_909
        &p_1042->g_144[5], // p_1042->g_926
        (VECTOR(uint32_t, 8))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 0x4A61CFB9L), 0x4A61CFB9L), 0x4A61CFB9L, 0UL, 0x4A61CFB9L), // p_1042->g_965
        &p_1042->g_556[1][4], // p_1042->g_992
        (VECTOR(int32_t, 16))(0x1A713C73L, (VECTOR(int32_t, 4))(0x1A713C73L, (VECTOR(int32_t, 2))(0x1A713C73L, 0x4CD7A7F9L), 0x4CD7A7F9L), 0x4CD7A7F9L, 0x1A713C73L, 0x4CD7A7F9L, (VECTOR(int32_t, 2))(0x1A713C73L, 0x4CD7A7F9L), (VECTOR(int32_t, 2))(0x1A713C73L, 0x4CD7A7F9L), 0x1A713C73L, 0x4CD7A7F9L, 0x1A713C73L, 0x4CD7A7F9L), // p_1042->g_1021
        sequence_input[get_global_id(0)], // p_1042->global_0_offset
        sequence_input[get_global_id(1)], // p_1042->global_1_offset
        sequence_input[get_global_id(2)], // p_1042->global_2_offset
        sequence_input[get_local_id(0)], // p_1042->local_0_offset
        sequence_input[get_local_id(1)], // p_1042->local_1_offset
        sequence_input[get_local_id(2)], // p_1042->local_2_offset
        sequence_input[get_group_id(0)], // p_1042->group_0_offset
        sequence_input[get_group_id(1)], // p_1042->group_1_offset
        sequence_input[get_group_id(2)], // p_1042->group_2_offset
    };
    c_1043 = c_1044;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1042);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1042->g_26, "p_1042->g_26", print_hash_value);
    transparent_crc(p_1042->g_32, "p_1042->g_32", print_hash_value);
    transparent_crc(p_1042->g_48.x, "p_1042->g_48.x", print_hash_value);
    transparent_crc(p_1042->g_48.y, "p_1042->g_48.y", print_hash_value);
    transparent_crc(p_1042->g_48.z, "p_1042->g_48.z", print_hash_value);
    transparent_crc(p_1042->g_48.w, "p_1042->g_48.w", print_hash_value);
    transparent_crc(p_1042->g_73, "p_1042->g_73", print_hash_value);
    transparent_crc(p_1042->g_107, "p_1042->g_107", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1042->g_127[i], "p_1042->g_127[i]", print_hash_value);

    }
    transparent_crc(p_1042->g_200, "p_1042->g_200", print_hash_value);
    transparent_crc(p_1042->g_209, "p_1042->g_209", print_hash_value);
    transparent_crc(p_1042->g_223, "p_1042->g_223", print_hash_value);
    transparent_crc(p_1042->g_232.x, "p_1042->g_232.x", print_hash_value);
    transparent_crc(p_1042->g_232.y, "p_1042->g_232.y", print_hash_value);
    transparent_crc(p_1042->g_232.z, "p_1042->g_232.z", print_hash_value);
    transparent_crc(p_1042->g_232.w, "p_1042->g_232.w", print_hash_value);
    transparent_crc(p_1042->g_237, "p_1042->g_237", print_hash_value);
    transparent_crc(p_1042->g_256.x, "p_1042->g_256.x", print_hash_value);
    transparent_crc(p_1042->g_256.y, "p_1042->g_256.y", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 10; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_1042->g_283[i][j][k], "p_1042->g_283[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1042->g_291, "p_1042->g_291", print_hash_value);
    transparent_crc(p_1042->g_298.x, "p_1042->g_298.x", print_hash_value);
    transparent_crc(p_1042->g_298.y, "p_1042->g_298.y", print_hash_value);
    transparent_crc(p_1042->g_309, "p_1042->g_309", print_hash_value);
    transparent_crc(p_1042->g_314.x, "p_1042->g_314.x", print_hash_value);
    transparent_crc(p_1042->g_314.y, "p_1042->g_314.y", print_hash_value);
    transparent_crc(p_1042->g_315.s0, "p_1042->g_315.s0", print_hash_value);
    transparent_crc(p_1042->g_315.s1, "p_1042->g_315.s1", print_hash_value);
    transparent_crc(p_1042->g_315.s2, "p_1042->g_315.s2", print_hash_value);
    transparent_crc(p_1042->g_315.s3, "p_1042->g_315.s3", print_hash_value);
    transparent_crc(p_1042->g_315.s4, "p_1042->g_315.s4", print_hash_value);
    transparent_crc(p_1042->g_315.s5, "p_1042->g_315.s5", print_hash_value);
    transparent_crc(p_1042->g_315.s6, "p_1042->g_315.s6", print_hash_value);
    transparent_crc(p_1042->g_315.s7, "p_1042->g_315.s7", print_hash_value);
    transparent_crc(p_1042->g_319, "p_1042->g_319", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 7; j++)
        {
            transparent_crc(p_1042->g_347[i][j], "p_1042->g_347[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1042->g_365.s0, "p_1042->g_365.s0", print_hash_value);
    transparent_crc(p_1042->g_365.s1, "p_1042->g_365.s1", print_hash_value);
    transparent_crc(p_1042->g_365.s2, "p_1042->g_365.s2", print_hash_value);
    transparent_crc(p_1042->g_365.s3, "p_1042->g_365.s3", print_hash_value);
    transparent_crc(p_1042->g_365.s4, "p_1042->g_365.s4", print_hash_value);
    transparent_crc(p_1042->g_365.s5, "p_1042->g_365.s5", print_hash_value);
    transparent_crc(p_1042->g_365.s6, "p_1042->g_365.s6", print_hash_value);
    transparent_crc(p_1042->g_365.s7, "p_1042->g_365.s7", print_hash_value);
    transparent_crc(p_1042->g_365.s8, "p_1042->g_365.s8", print_hash_value);
    transparent_crc(p_1042->g_365.s9, "p_1042->g_365.s9", print_hash_value);
    transparent_crc(p_1042->g_365.sa, "p_1042->g_365.sa", print_hash_value);
    transparent_crc(p_1042->g_365.sb, "p_1042->g_365.sb", print_hash_value);
    transparent_crc(p_1042->g_365.sc, "p_1042->g_365.sc", print_hash_value);
    transparent_crc(p_1042->g_365.sd, "p_1042->g_365.sd", print_hash_value);
    transparent_crc(p_1042->g_365.se, "p_1042->g_365.se", print_hash_value);
    transparent_crc(p_1042->g_365.sf, "p_1042->g_365.sf", print_hash_value);
    transparent_crc(p_1042->g_372.x, "p_1042->g_372.x", print_hash_value);
    transparent_crc(p_1042->g_372.y, "p_1042->g_372.y", print_hash_value);
    transparent_crc(p_1042->g_372.z, "p_1042->g_372.z", print_hash_value);
    transparent_crc(p_1042->g_372.w, "p_1042->g_372.w", print_hash_value);
    transparent_crc(p_1042->g_375.s0, "p_1042->g_375.s0", print_hash_value);
    transparent_crc(p_1042->g_375.s1, "p_1042->g_375.s1", print_hash_value);
    transparent_crc(p_1042->g_375.s2, "p_1042->g_375.s2", print_hash_value);
    transparent_crc(p_1042->g_375.s3, "p_1042->g_375.s3", print_hash_value);
    transparent_crc(p_1042->g_375.s4, "p_1042->g_375.s4", print_hash_value);
    transparent_crc(p_1042->g_375.s5, "p_1042->g_375.s5", print_hash_value);
    transparent_crc(p_1042->g_375.s6, "p_1042->g_375.s6", print_hash_value);
    transparent_crc(p_1042->g_375.s7, "p_1042->g_375.s7", print_hash_value);
    transparent_crc(p_1042->g_379.x, "p_1042->g_379.x", print_hash_value);
    transparent_crc(p_1042->g_379.y, "p_1042->g_379.y", print_hash_value);
    transparent_crc(p_1042->g_379.z, "p_1042->g_379.z", print_hash_value);
    transparent_crc(p_1042->g_379.w, "p_1042->g_379.w", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1042->g_381[i], "p_1042->g_381[i]", print_hash_value);

    }
    transparent_crc(p_1042->g_383, "p_1042->g_383", print_hash_value);
    transparent_crc(p_1042->g_541.s0, "p_1042->g_541.s0", print_hash_value);
    transparent_crc(p_1042->g_541.s1, "p_1042->g_541.s1", print_hash_value);
    transparent_crc(p_1042->g_541.s2, "p_1042->g_541.s2", print_hash_value);
    transparent_crc(p_1042->g_541.s3, "p_1042->g_541.s3", print_hash_value);
    transparent_crc(p_1042->g_541.s4, "p_1042->g_541.s4", print_hash_value);
    transparent_crc(p_1042->g_541.s5, "p_1042->g_541.s5", print_hash_value);
    transparent_crc(p_1042->g_541.s6, "p_1042->g_541.s6", print_hash_value);
    transparent_crc(p_1042->g_541.s7, "p_1042->g_541.s7", print_hash_value);
    transparent_crc(p_1042->g_541.s8, "p_1042->g_541.s8", print_hash_value);
    transparent_crc(p_1042->g_541.s9, "p_1042->g_541.s9", print_hash_value);
    transparent_crc(p_1042->g_541.sa, "p_1042->g_541.sa", print_hash_value);
    transparent_crc(p_1042->g_541.sb, "p_1042->g_541.sb", print_hash_value);
    transparent_crc(p_1042->g_541.sc, "p_1042->g_541.sc", print_hash_value);
    transparent_crc(p_1042->g_541.sd, "p_1042->g_541.sd", print_hash_value);
    transparent_crc(p_1042->g_541.se, "p_1042->g_541.se", print_hash_value);
    transparent_crc(p_1042->g_541.sf, "p_1042->g_541.sf", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_1042->g_556[i][j], "p_1042->g_556[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1042->g_559.x, "p_1042->g_559.x", print_hash_value);
    transparent_crc(p_1042->g_559.y, "p_1042->g_559.y", print_hash_value);
    transparent_crc(p_1042->g_559.z, "p_1042->g_559.z", print_hash_value);
    transparent_crc(p_1042->g_559.w, "p_1042->g_559.w", print_hash_value);
    transparent_crc(p_1042->g_560.s0, "p_1042->g_560.s0", print_hash_value);
    transparent_crc(p_1042->g_560.s1, "p_1042->g_560.s1", print_hash_value);
    transparent_crc(p_1042->g_560.s2, "p_1042->g_560.s2", print_hash_value);
    transparent_crc(p_1042->g_560.s3, "p_1042->g_560.s3", print_hash_value);
    transparent_crc(p_1042->g_560.s4, "p_1042->g_560.s4", print_hash_value);
    transparent_crc(p_1042->g_560.s5, "p_1042->g_560.s5", print_hash_value);
    transparent_crc(p_1042->g_560.s6, "p_1042->g_560.s6", print_hash_value);
    transparent_crc(p_1042->g_560.s7, "p_1042->g_560.s7", print_hash_value);
    transparent_crc(p_1042->g_561.s0, "p_1042->g_561.s0", print_hash_value);
    transparent_crc(p_1042->g_561.s1, "p_1042->g_561.s1", print_hash_value);
    transparent_crc(p_1042->g_561.s2, "p_1042->g_561.s2", print_hash_value);
    transparent_crc(p_1042->g_561.s3, "p_1042->g_561.s3", print_hash_value);
    transparent_crc(p_1042->g_561.s4, "p_1042->g_561.s4", print_hash_value);
    transparent_crc(p_1042->g_561.s5, "p_1042->g_561.s5", print_hash_value);
    transparent_crc(p_1042->g_561.s6, "p_1042->g_561.s6", print_hash_value);
    transparent_crc(p_1042->g_561.s7, "p_1042->g_561.s7", print_hash_value);
    transparent_crc(p_1042->g_601.s0, "p_1042->g_601.s0", print_hash_value);
    transparent_crc(p_1042->g_601.s1, "p_1042->g_601.s1", print_hash_value);
    transparent_crc(p_1042->g_601.s2, "p_1042->g_601.s2", print_hash_value);
    transparent_crc(p_1042->g_601.s3, "p_1042->g_601.s3", print_hash_value);
    transparent_crc(p_1042->g_601.s4, "p_1042->g_601.s4", print_hash_value);
    transparent_crc(p_1042->g_601.s5, "p_1042->g_601.s5", print_hash_value);
    transparent_crc(p_1042->g_601.s6, "p_1042->g_601.s6", print_hash_value);
    transparent_crc(p_1042->g_601.s7, "p_1042->g_601.s7", print_hash_value);
    transparent_crc(p_1042->g_601.s8, "p_1042->g_601.s8", print_hash_value);
    transparent_crc(p_1042->g_601.s9, "p_1042->g_601.s9", print_hash_value);
    transparent_crc(p_1042->g_601.sa, "p_1042->g_601.sa", print_hash_value);
    transparent_crc(p_1042->g_601.sb, "p_1042->g_601.sb", print_hash_value);
    transparent_crc(p_1042->g_601.sc, "p_1042->g_601.sc", print_hash_value);
    transparent_crc(p_1042->g_601.sd, "p_1042->g_601.sd", print_hash_value);
    transparent_crc(p_1042->g_601.se, "p_1042->g_601.se", print_hash_value);
    transparent_crc(p_1042->g_601.sf, "p_1042->g_601.sf", print_hash_value);
    transparent_crc(p_1042->g_716.s0, "p_1042->g_716.s0", print_hash_value);
    transparent_crc(p_1042->g_716.s1, "p_1042->g_716.s1", print_hash_value);
    transparent_crc(p_1042->g_716.s2, "p_1042->g_716.s2", print_hash_value);
    transparent_crc(p_1042->g_716.s3, "p_1042->g_716.s3", print_hash_value);
    transparent_crc(p_1042->g_716.s4, "p_1042->g_716.s4", print_hash_value);
    transparent_crc(p_1042->g_716.s5, "p_1042->g_716.s5", print_hash_value);
    transparent_crc(p_1042->g_716.s6, "p_1042->g_716.s6", print_hash_value);
    transparent_crc(p_1042->g_716.s7, "p_1042->g_716.s7", print_hash_value);
    transparent_crc(p_1042->g_720.s0, "p_1042->g_720.s0", print_hash_value);
    transparent_crc(p_1042->g_720.s1, "p_1042->g_720.s1", print_hash_value);
    transparent_crc(p_1042->g_720.s2, "p_1042->g_720.s2", print_hash_value);
    transparent_crc(p_1042->g_720.s3, "p_1042->g_720.s3", print_hash_value);
    transparent_crc(p_1042->g_720.s4, "p_1042->g_720.s4", print_hash_value);
    transparent_crc(p_1042->g_720.s5, "p_1042->g_720.s5", print_hash_value);
    transparent_crc(p_1042->g_720.s6, "p_1042->g_720.s6", print_hash_value);
    transparent_crc(p_1042->g_720.s7, "p_1042->g_720.s7", print_hash_value);
    transparent_crc(p_1042->g_791.s0, "p_1042->g_791.s0", print_hash_value);
    transparent_crc(p_1042->g_791.s1, "p_1042->g_791.s1", print_hash_value);
    transparent_crc(p_1042->g_791.s2, "p_1042->g_791.s2", print_hash_value);
    transparent_crc(p_1042->g_791.s3, "p_1042->g_791.s3", print_hash_value);
    transparent_crc(p_1042->g_791.s4, "p_1042->g_791.s4", print_hash_value);
    transparent_crc(p_1042->g_791.s5, "p_1042->g_791.s5", print_hash_value);
    transparent_crc(p_1042->g_791.s6, "p_1042->g_791.s6", print_hash_value);
    transparent_crc(p_1042->g_791.s7, "p_1042->g_791.s7", print_hash_value);
    transparent_crc(p_1042->g_801.x, "p_1042->g_801.x", print_hash_value);
    transparent_crc(p_1042->g_801.y, "p_1042->g_801.y", print_hash_value);
    transparent_crc(p_1042->g_801.z, "p_1042->g_801.z", print_hash_value);
    transparent_crc(p_1042->g_801.w, "p_1042->g_801.w", print_hash_value);
    transparent_crc(p_1042->g_807, "p_1042->g_807", print_hash_value);
    transparent_crc(p_1042->g_822.s0, "p_1042->g_822.s0", print_hash_value);
    transparent_crc(p_1042->g_822.s1, "p_1042->g_822.s1", print_hash_value);
    transparent_crc(p_1042->g_822.s2, "p_1042->g_822.s2", print_hash_value);
    transparent_crc(p_1042->g_822.s3, "p_1042->g_822.s3", print_hash_value);
    transparent_crc(p_1042->g_822.s4, "p_1042->g_822.s4", print_hash_value);
    transparent_crc(p_1042->g_822.s5, "p_1042->g_822.s5", print_hash_value);
    transparent_crc(p_1042->g_822.s6, "p_1042->g_822.s6", print_hash_value);
    transparent_crc(p_1042->g_822.s7, "p_1042->g_822.s7", print_hash_value);
    transparent_crc(p_1042->g_833, "p_1042->g_833", print_hash_value);
    transparent_crc(p_1042->g_872.s0, "p_1042->g_872.s0", print_hash_value);
    transparent_crc(p_1042->g_872.s1, "p_1042->g_872.s1", print_hash_value);
    transparent_crc(p_1042->g_872.s2, "p_1042->g_872.s2", print_hash_value);
    transparent_crc(p_1042->g_872.s3, "p_1042->g_872.s3", print_hash_value);
    transparent_crc(p_1042->g_872.s4, "p_1042->g_872.s4", print_hash_value);
    transparent_crc(p_1042->g_872.s5, "p_1042->g_872.s5", print_hash_value);
    transparent_crc(p_1042->g_872.s6, "p_1042->g_872.s6", print_hash_value);
    transparent_crc(p_1042->g_872.s7, "p_1042->g_872.s7", print_hash_value);
    transparent_crc(p_1042->g_873.s0, "p_1042->g_873.s0", print_hash_value);
    transparent_crc(p_1042->g_873.s1, "p_1042->g_873.s1", print_hash_value);
    transparent_crc(p_1042->g_873.s2, "p_1042->g_873.s2", print_hash_value);
    transparent_crc(p_1042->g_873.s3, "p_1042->g_873.s3", print_hash_value);
    transparent_crc(p_1042->g_873.s4, "p_1042->g_873.s4", print_hash_value);
    transparent_crc(p_1042->g_873.s5, "p_1042->g_873.s5", print_hash_value);
    transparent_crc(p_1042->g_873.s6, "p_1042->g_873.s6", print_hash_value);
    transparent_crc(p_1042->g_873.s7, "p_1042->g_873.s7", print_hash_value);
    transparent_crc(p_1042->g_873.s8, "p_1042->g_873.s8", print_hash_value);
    transparent_crc(p_1042->g_873.s9, "p_1042->g_873.s9", print_hash_value);
    transparent_crc(p_1042->g_873.sa, "p_1042->g_873.sa", print_hash_value);
    transparent_crc(p_1042->g_873.sb, "p_1042->g_873.sb", print_hash_value);
    transparent_crc(p_1042->g_873.sc, "p_1042->g_873.sc", print_hash_value);
    transparent_crc(p_1042->g_873.sd, "p_1042->g_873.sd", print_hash_value);
    transparent_crc(p_1042->g_873.se, "p_1042->g_873.se", print_hash_value);
    transparent_crc(p_1042->g_873.sf, "p_1042->g_873.sf", print_hash_value);
    transparent_crc(p_1042->g_903.x, "p_1042->g_903.x", print_hash_value);
    transparent_crc(p_1042->g_903.y, "p_1042->g_903.y", print_hash_value);
    transparent_crc(p_1042->g_903.z, "p_1042->g_903.z", print_hash_value);
    transparent_crc(p_1042->g_903.w, "p_1042->g_903.w", print_hash_value);
    transparent_crc(p_1042->g_965.s0, "p_1042->g_965.s0", print_hash_value);
    transparent_crc(p_1042->g_965.s1, "p_1042->g_965.s1", print_hash_value);
    transparent_crc(p_1042->g_965.s2, "p_1042->g_965.s2", print_hash_value);
    transparent_crc(p_1042->g_965.s3, "p_1042->g_965.s3", print_hash_value);
    transparent_crc(p_1042->g_965.s4, "p_1042->g_965.s4", print_hash_value);
    transparent_crc(p_1042->g_965.s5, "p_1042->g_965.s5", print_hash_value);
    transparent_crc(p_1042->g_965.s6, "p_1042->g_965.s6", print_hash_value);
    transparent_crc(p_1042->g_965.s7, "p_1042->g_965.s7", print_hash_value);
    transparent_crc(p_1042->g_1021.s0, "p_1042->g_1021.s0", print_hash_value);
    transparent_crc(p_1042->g_1021.s1, "p_1042->g_1021.s1", print_hash_value);
    transparent_crc(p_1042->g_1021.s2, "p_1042->g_1021.s2", print_hash_value);
    transparent_crc(p_1042->g_1021.s3, "p_1042->g_1021.s3", print_hash_value);
    transparent_crc(p_1042->g_1021.s4, "p_1042->g_1021.s4", print_hash_value);
    transparent_crc(p_1042->g_1021.s5, "p_1042->g_1021.s5", print_hash_value);
    transparent_crc(p_1042->g_1021.s6, "p_1042->g_1021.s6", print_hash_value);
    transparent_crc(p_1042->g_1021.s7, "p_1042->g_1021.s7", print_hash_value);
    transparent_crc(p_1042->g_1021.s8, "p_1042->g_1021.s8", print_hash_value);
    transparent_crc(p_1042->g_1021.s9, "p_1042->g_1021.s9", print_hash_value);
    transparent_crc(p_1042->g_1021.sa, "p_1042->g_1021.sa", print_hash_value);
    transparent_crc(p_1042->g_1021.sb, "p_1042->g_1021.sb", print_hash_value);
    transparent_crc(p_1042->g_1021.sc, "p_1042->g_1021.sc", print_hash_value);
    transparent_crc(p_1042->g_1021.sd, "p_1042->g_1021.sd", print_hash_value);
    transparent_crc(p_1042->g_1021.se, "p_1042->g_1021.se", print_hash_value);
    transparent_crc(p_1042->g_1021.sf, "p_1042->g_1021.sf", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
