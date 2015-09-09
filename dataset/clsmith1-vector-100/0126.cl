// ---fake_divergence -g 14,32,4 -l 1,32,4
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


// Seed: 126

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   int32_t  f0;
   int8_t  f1;
   int16_t  f2;
   int16_t  f3;
   uint32_t  f4;
   int16_t  f5;
   uint64_t  f6;
   int16_t  f7;
   int32_t  f8;
};

struct S1 {
    int32_t g_2;
    volatile VECTOR(int16_t, 8) g_6;
    volatile VECTOR(int16_t, 4) g_7;
    VECTOR(int16_t, 8) g_9;
    volatile VECTOR(int16_t, 4) g_10;
    volatile VECTOR(int8_t, 8) g_17;
    int8_t g_47;
    int8_t *g_46;
    int8_t **g_76;
    int8_t ***g_75[3];
    VECTOR(uint64_t, 4) g_100;
    int32_t g_112;
    int32_t *g_111;
    volatile int16_t g_113[3];
    uint16_t g_119;
    volatile struct S0 g_133;
    uint8_t g_143;
    int8_t g_173;
    volatile uint32_t g_180;
    VECTOR(int32_t, 8) g_182;
    volatile VECTOR(int8_t, 4) g_199;
    int64_t g_216;
    int64_t g_247;
    VECTOR(int32_t, 4) g_264;
    int32_t ** volatile g_268;
    VECTOR(int16_t, 2) g_274;
    int32_t * volatile g_290;
    int32_t * volatile g_291;
    struct S0 g_294[7];
    struct S0 * volatile g_293[9][1];
    struct S0 * volatile g_295;
    volatile int32_t g_303[1][6];
    volatile int32_t *g_302;
    volatile int32_t **g_301;
    uint16_t g_305;
    volatile VECTOR(int32_t, 16) g_328;
    VECTOR(int32_t, 2) g_329;
    uint64_t * volatile g_368;
    uint64_t * volatile *g_367;
    uint16_t g_400;
    int64_t g_402;
    struct S0 * volatile g_404;
    VECTOR(int8_t, 2) g_424;
    volatile VECTOR(uint64_t, 16) g_454;
    uint64_t *g_491;
    struct S0 * volatile g_546;
    struct S0 * volatile g_547[2];
    struct S0 * volatile g_549[10];
    uint64_t g_566;
    volatile VECTOR(int32_t, 8) g_572;
    VECTOR(int32_t, 8) g_573;
    uint16_t g_597;
    volatile VECTOR(int32_t, 2) g_612;
    int32_t ** volatile g_614;
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
int64_t  func_1(struct S1 * p_618);
int8_t  func_21(int8_t * p_22, struct S1 * p_618);
int8_t * func_23(int16_t  p_24, struct S0  p_25, int64_t  p_26, uint32_t  p_27, uint64_t  p_28, struct S1 * p_618);
int16_t  func_29(int8_t * p_30, int8_t * p_31, int8_t * p_32, int32_t  p_33, int32_t  p_34, struct S1 * p_618);
int8_t * func_35(uint64_t  p_36, uint32_t  p_37, int8_t * p_38, struct S1 * p_618);
int16_t  func_52(uint8_t  p_53, struct S1 * p_618);
uint8_t  func_56(int64_t  p_57, struct S1 * p_618);
int32_t * func_60(int64_t  p_61, int16_t  p_62, int8_t ** p_63, int8_t ** p_64, uint64_t  p_65, struct S1 * p_618);
int16_t  func_67(uint64_t  p_68, int32_t * p_69, int8_t ** p_70, int32_t  p_71, int64_t  p_72, struct S1 * p_618);
int8_t *** func_77(int32_t * p_78, int64_t  p_79, uint32_t  p_80, int32_t  p_81, struct S1 * p_618);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_618->g_2 p_618->g_6 p_618->g_7 p_618->g_9 p_618->g_10 p_618->g_17 p_618->g_46 p_618->g_47 p_618->g_113 p_618->g_112 p_618->g_119 p_618->g_247 p_618->g_143 p_618->g_216 p_618->g_182 p_618->g_100 p_618->g_111 p_618->g_264 p_618->g_268 p_618->g_291 p_618->g_295 p_618->g_301 p_618->g_328 p_618->g_329 p_618->g_294.f2 p_618->g_367 p_618->g_274 p_618->g_173 p_618->g_133.f1 p_618->g_400 p_618->g_294.f8 p_618->g_402 p_618->g_294.f4 p_618->g_404 p_618->g_424 p_618->g_294 p_618->g_302 p_618->g_199 p_618->g_133.f0 p_618->g_573 p_618->g_133.f6
 * writes: p_618->g_2 p_618->g_9 p_618->g_47 p_618->g_76 p_618->g_111 p_618->g_143 p_618->g_119 p_618->g_112 p_618->g_294 p_618->g_274 p_618->g_305 p_618->g_247 p_618->g_402 p_618->g_264 p_618->g_268 p_618->g_329 p_618->g_303 p_618->g_566 p_618->g_182 p_618->g_400 p_618->g_597
 */
int64_t  func_1(struct S1 * p_618)
{ /* block id: 4 */
    int8_t l_5[8][10][3] = {{{7L,0x20L,(-2L)},{7L,0x20L,(-2L)},{7L,0x20L,(-2L)},{7L,0x20L,(-2L)},{7L,0x20L,(-2L)},{7L,0x20L,(-2L)},{7L,0x20L,(-2L)},{7L,0x20L,(-2L)},{7L,0x20L,(-2L)},{7L,0x20L,(-2L)}},{{7L,0x20L,(-2L)},{7L,0x20L,(-2L)},{7L,0x20L,(-2L)},{7L,0x20L,(-2L)},{7L,0x20L,(-2L)},{7L,0x20L,(-2L)},{7L,0x20L,(-2L)},{7L,0x20L,(-2L)},{7L,0x20L,(-2L)},{7L,0x20L,(-2L)}},{{7L,0x20L,(-2L)},{7L,0x20L,(-2L)},{7L,0x20L,(-2L)},{7L,0x20L,(-2L)},{7L,0x20L,(-2L)},{7L,0x20L,(-2L)},{7L,0x20L,(-2L)},{7L,0x20L,(-2L)},{7L,0x20L,(-2L)},{7L,0x20L,(-2L)}},{{7L,0x20L,(-2L)},{7L,0x20L,(-2L)},{7L,0x20L,(-2L)},{7L,0x20L,(-2L)},{7L,0x20L,(-2L)},{7L,0x20L,(-2L)},{7L,0x20L,(-2L)},{7L,0x20L,(-2L)},{7L,0x20L,(-2L)},{7L,0x20L,(-2L)}},{{7L,0x20L,(-2L)},{7L,0x20L,(-2L)},{7L,0x20L,(-2L)},{7L,0x20L,(-2L)},{7L,0x20L,(-2L)},{7L,0x20L,(-2L)},{7L,0x20L,(-2L)},{7L,0x20L,(-2L)},{7L,0x20L,(-2L)},{7L,0x20L,(-2L)}},{{7L,0x20L,(-2L)},{7L,0x20L,(-2L)},{7L,0x20L,(-2L)},{7L,0x20L,(-2L)},{7L,0x20L,(-2L)},{7L,0x20L,(-2L)},{7L,0x20L,(-2L)},{7L,0x20L,(-2L)},{7L,0x20L,(-2L)},{7L,0x20L,(-2L)}},{{7L,0x20L,(-2L)},{7L,0x20L,(-2L)},{7L,0x20L,(-2L)},{7L,0x20L,(-2L)},{7L,0x20L,(-2L)},{7L,0x20L,(-2L)},{7L,0x20L,(-2L)},{7L,0x20L,(-2L)},{7L,0x20L,(-2L)},{7L,0x20L,(-2L)}},{{7L,0x20L,(-2L)},{7L,0x20L,(-2L)},{7L,0x20L,(-2L)},{7L,0x20L,(-2L)},{7L,0x20L,(-2L)},{7L,0x20L,(-2L)},{7L,0x20L,(-2L)},{7L,0x20L,(-2L)},{7L,0x20L,(-2L)},{7L,0x20L,(-2L)}}};
    VECTOR(int16_t, 16) l_8 = (VECTOR(int16_t, 16))(0x138BL, (VECTOR(int16_t, 4))(0x138BL, (VECTOR(int16_t, 2))(0x138BL, (-8L)), (-8L)), (-8L), 0x138BL, (-8L), (VECTOR(int16_t, 2))(0x138BL, (-8L)), (VECTOR(int16_t, 2))(0x138BL, (-8L)), 0x138BL, (-8L), 0x138BL, (-8L));
    int8_t *l_18 = &l_5[1][3][1];
    int32_t l_19 = 1L;
    VECTOR(int8_t, 4) l_20 = (VECTOR(int8_t, 4))((-3L), (VECTOR(int8_t, 2))((-3L), (-6L)), (-6L));
    int8_t **l_44 = (void*)0;
    int8_t **l_45 = &l_18;
    struct S0 l_433 = {-10L,6L,0L,0x3C30L,0xBB4B2494L,0x243AL,18446744073709551615UL,-8L,0x331E6881L};
    int32_t l_615 = 0x7FAE1F4EL;
    int16_t *l_616 = &p_618->g_294[2].f7;
    int16_t *l_617 = (void*)0;
    int i, j, k;
    for (p_618->g_2 = (-18); (p_618->g_2 <= 24); p_618->g_2++)
    { /* block id: 7 */
        return l_5[3][7][0];
    }
    (**p_618->g_301) = ((VECTOR(int32_t, 16))(upsample(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 8))(safe_clamp_func(VECTOR(int16_t, 8),VECTOR(int16_t, 8),((VECTOR(int16_t, 16))(min(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(5L, ((VECTOR(int16_t, 2))(add_sat(((VECTOR(int16_t, 16))(rhadd(((VECTOR(int16_t, 16))(mad_sat(((VECTOR(int16_t, 4))(hadd(((VECTOR(int16_t, 8))(p_618->g_6.s03245571)).hi, ((VECTOR(int16_t, 8))(p_618->g_7.wxyxwxwz)).lo))).yxwyxwzxyzyzxzzz, ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(l_8.sdd)).xyxyyxyxyxxxxxyy)), ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(hadd(((VECTOR(int16_t, 8))(mul_hi(((VECTOR(int16_t, 2))(safe_clamp_func(VECTOR(int16_t, 2),int16_t,((VECTOR(int16_t, 8))(min(((VECTOR(int16_t, 4))(p_618->g_9.s7613)).xxzzzyyy, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 8))(mul_hi(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(0x3314L, 1L)))))).yyxxyyxx, ((VECTOR(int16_t, 8))(p_618->g_10.wxxxxxyx))))))).s25)).xyxx)).zxxwwxyx))).s13, (int16_t)(p_618->g_9.s5 ^= p_618->g_10.w), (int16_t)((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(l_8.s0, (p_618->g_294[2].f3 = ((*l_616) = (safe_add_func_int8_t_s_s(l_8.s3, (safe_lshift_func_int8_t_s_s(((VECTOR(int8_t, 16))((-1L), ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(safe_clamp_func(VECTOR(int8_t, 8),int8_t,((VECTOR(int8_t, 2))(2L, 0x1BL)).xxyyyxyy, (int8_t)(safe_mod_func_uint32_t_u_u(FAKE_DIVERGE(p_618->local_0_offset, get_local_id(0), 10), 7UL)), (int8_t)p_618->g_7.z))).s40)))), ((VECTOR(int8_t, 8))(0x4BL, ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 8),((VECTOR(int8_t, 2))(safe_clamp_func(VECTOR(int8_t, 2),int8_t,((VECTOR(int8_t, 2))(p_618->g_17.s31)), (int8_t)(-1L), (int8_t)(l_19 ^= ((*l_18) &= ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(0x00L, 0L)).yxxyyyyyyxyxyxxy)).sb))))).xxyyxxyx, ((VECTOR(int8_t, 4))(l_20.yzwz)).zxxwwxzy, ((VECTOR(int8_t, 8))(0x0AL, 4L, (l_615 ^= func_21(func_23(func_29(((*l_45) = func_35(p_618->g_7.y, (l_5[6][2][0] != (safe_add_func_int8_t_s_s((safe_lshift_func_uint8_t_u_s(p_618->g_2, 3)), 250UL))), &l_5[3][7][0], p_618)), p_618->g_46, &p_618->g_47, p_618->g_9.s4, l_19, p_618), l_433, l_433.f5, l_433.f0, l_5[3][7][0], p_618), p_618)), 1L, 0x56L, 0x3AL, 8L, 0x65L))))).s30)), ((VECTOR(int8_t, 2))(0x08L)), 8L, (-1L), 6L)), ((VECTOR(int8_t, 4))(0x15L)), 0x03L)).sa, 7)))))), 0x763CL, 0x06B4L)), l_20.z, p_618->g_133.f0, p_618->g_9.s5, p_618->g_573.s7, ((VECTOR(int16_t, 2))(0x2D31L)), (-9L), ((VECTOR(int16_t, 4))(5L)), 0x07F9L)).s5))).xyyxxxxx, ((VECTOR(int16_t, 8))((-3L)))))).s47, ((VECTOR(int16_t, 2))(1L))))), 0x2B99L, 1L)))).zxwyyzzyyyxzzxwy)).s0f)).xyxyyyyxxyyyxyyy))), ((VECTOR(int16_t, 16))(0x64DBL))))).sca, ((VECTOR(int16_t, 2))(3L))))), 0x2CFFL, p_618->g_294[2].f2, 0x379AL, 0x5C28L, 0x447DL, ((VECTOR(int16_t, 2))(5L)), p_618->g_294[2].f5, ((VECTOR(int16_t, 4))(1L)), 0x5FBCL)).s76)).yxxxyxxyxxxyxxxx, (int16_t)p_618->g_133.f6))).odd, ((VECTOR(int16_t, 8))(0x0A46L)), ((VECTOR(int16_t, 8))(0x6636L))))))).s4121351673231653, ((VECTOR(uint16_t, 16))(0xF2FFL))))).sc;
    return p_618->g_173;
}


/* ------------------------------------------ */
/* 
 * reads : p_618->g_268 p_618->g_111 p_618->g_143 p_618->g_47
 * writes: p_618->g_111
 */
int8_t  func_21(int8_t * p_22, struct S1 * p_618)
{ /* block id: 254 */
    (*p_618->g_268) = (*p_618->g_268);
    return (*p_22);
}


/* ------------------------------------------ */
/* 
 * reads : p_618->g_2 p_618->g_182 p_618->g_17 p_618->g_111 p_618->g_6 p_618->g_301 p_618->g_302 p_618->g_294.f2 p_618->g_173 p_618->g_112 p_618->g_291 p_618->g_119 p_618->g_274 p_618->g_199
 * writes: p_618->g_2 p_618->g_112 p_618->g_303 p_618->g_143 p_618->g_47 p_618->g_119 p_618->g_566 p_618->g_182 p_618->g_329 p_618->g_400 p_618->g_597 p_618->g_402
 */
int8_t * func_23(int16_t  p_24, struct S0  p_25, int64_t  p_26, uint32_t  p_27, uint64_t  p_28, struct S1 * p_618)
{ /* block id: 162 */
    int32_t *l_434[6][5] = {{&p_618->g_112,&p_618->g_112,&p_618->g_112,&p_618->g_112,&p_618->g_112},{&p_618->g_112,&p_618->g_112,&p_618->g_112,&p_618->g_112,&p_618->g_112},{&p_618->g_112,&p_618->g_112,&p_618->g_112,&p_618->g_112,&p_618->g_112},{&p_618->g_112,&p_618->g_112,&p_618->g_112,&p_618->g_112,&p_618->g_112},{&p_618->g_112,&p_618->g_112,&p_618->g_112,&p_618->g_112,&p_618->g_112},{&p_618->g_112,&p_618->g_112,&p_618->g_112,&p_618->g_112,&p_618->g_112}};
    int32_t l_435 = 7L;
    uint32_t l_436 = 0xBDAF81BBL;
    int32_t l_480 = 0x10B049D2L;
    VECTOR(int16_t, 4) l_509 = (VECTOR(int16_t, 4))(0x66F9L, (VECTOR(int16_t, 2))(0x66F9L, (-9L)), (-9L));
    VECTOR(int16_t, 4) l_540 = (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x507BL), 0x507BL);
    VECTOR(int16_t, 2) l_541 = (VECTOR(int16_t, 2))((-9L), 0x05A6L);
    uint32_t l_544[1];
    int8_t ***l_600[2][3];
    int8_t *l_613 = &p_618->g_47;
    int i, j;
    for (i = 0; i < 1; i++)
        l_544[i] = 0xBFD648E7L;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 3; j++)
            l_600[i][j] = &p_618->g_76;
    }
    ++l_436;
    for (p_618->g_2 = (-23); (p_618->g_2 == (-12)); p_618->g_2++)
    { /* block id: 166 */
        uint64_t l_445 = 0x374B2AAA23B1C424L;
        int32_t l_455[8];
        int8_t l_478 = 1L;
        VECTOR(uint64_t, 16) l_513 = (VECTOR(uint64_t, 16))(0x7B0AA1D685D0DFF8L, (VECTOR(uint64_t, 4))(0x7B0AA1D685D0DFF8L, (VECTOR(uint64_t, 2))(0x7B0AA1D685D0DFF8L, 0xBBA6B4117F34B9E1L), 0xBBA6B4117F34B9E1L), 0xBBA6B4117F34B9E1L, 0x7B0AA1D685D0DFF8L, 0xBBA6B4117F34B9E1L, (VECTOR(uint64_t, 2))(0x7B0AA1D685D0DFF8L, 0xBBA6B4117F34B9E1L), (VECTOR(uint64_t, 2))(0x7B0AA1D685D0DFF8L, 0xBBA6B4117F34B9E1L), 0x7B0AA1D685D0DFF8L, 0xBBA6B4117F34B9E1L, 0x7B0AA1D685D0DFF8L, 0xBBA6B4117F34B9E1L);
        VECTOR(int16_t, 16) l_538 = (VECTOR(int16_t, 16))(0x1F51L, (VECTOR(int16_t, 4))(0x1F51L, (VECTOR(int16_t, 2))(0x1F51L, 0x4053L), 0x4053L), 0x4053L, 0x1F51L, 0x4053L, (VECTOR(int16_t, 2))(0x1F51L, 0x4053L), (VECTOR(int16_t, 2))(0x1F51L, 0x4053L), 0x1F51L, 0x4053L, 0x1F51L, 0x4053L);
        int i;
        for (i = 0; i < 8; i++)
            l_455[i] = 0x3E3737C0L;
        for (p_25.f6 = 0; (p_25.f6 < 54); p_25.f6++)
        { /* block id: 169 */
            int16_t l_443 = 1L;
            int32_t l_444 = 1L;
            uint64_t *l_452 = (void*)0;
            uint64_t *l_453 = &l_445;
            VECTOR(int16_t, 2) l_460 = (VECTOR(int16_t, 2))(0x5693L, 3L);
            VECTOR(uint16_t, 8) l_461 = (VECTOR(uint16_t, 8))(0xDEB6L, (VECTOR(uint16_t, 4))(0xDEB6L, (VECTOR(uint16_t, 2))(0xDEB6L, 0x10F9L), 0x10F9L), 0x10F9L, 0xDEB6L, 0x10F9L);
            uint32_t *l_462 = (void*)0;
            uint32_t *l_463 = &l_436;
            uint8_t *l_479 = &p_618->g_143;
            VECTOR(uint16_t, 16) l_510 = (VECTOR(uint16_t, 16))(3UL, (VECTOR(uint16_t, 4))(3UL, (VECTOR(uint16_t, 2))(3UL, 0x32B3L), 0x32B3L), 0x32B3L, 3UL, 0x32B3L, (VECTOR(uint16_t, 2))(3UL, 0x32B3L), (VECTOR(uint16_t, 2))(3UL, 0x32B3L), 3UL, 0x32B3L, 3UL, 0x32B3L);
            uint16_t *l_511 = &p_618->g_119;
            int32_t l_545 = 0x46243B20L;
            VECTOR(uint16_t, 2) l_577 = (VECTOR(uint16_t, 2))(0xD18BL, 65535UL);
            VECTOR(int32_t, 16) l_594 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x641E4779L), 0x641E4779L), 0x641E4779L, (-1L), 0x641E4779L, (VECTOR(int32_t, 2))((-1L), 0x641E4779L), (VECTOR(int32_t, 2))((-1L), 0x641E4779L), (-1L), 0x641E4779L, (-1L), 0x641E4779L);
            int i;
            l_445++;
            (**p_618->g_301) = ((p_25.f4 <= ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(0xDFL, 254UL)).yyyyyxyx)).s2) > ((((safe_add_func_uint64_t_u_u(0xE767A8315F2D6F6BL, ((safe_sub_func_int64_t_s_s(p_618->g_182.s2, ((*l_453) = p_25.f3))) <= GROUP_DIVERGE(2, 1)))) & (((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(p_618->g_454.s05)), 0x51F69D4EB2C08F22L, 18446744073709551610UL)).lo)).lo || (!p_26))) , (((p_618->g_17.s3 , (l_455[5] &= 0x6F5E99D1D09A265EL)) && ((safe_sub_func_uint64_t_u_u(p_25.f8, (safe_mod_func_int8_t_s_s((((*p_618->g_111) = ((VECTOR(int32_t, 8))(upsample(((VECTOR(int16_t, 2))(l_460.xx)).xyxxxxxy, ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 16))(abs(((VECTOR(uint16_t, 4))(l_461.s3273)).zxzwwwyxwwzyyyyw))).lo))))).s4) && ((*l_463) = (l_455[5] && (-8L)))), p_26)))) == p_618->g_6.s5)) < p_25.f2)) ^ FAKE_DIVERGE(p_618->local_2_offset, get_local_id(2), 10)));
            if ((safe_div_func_uint8_t_u_u(((p_618->g_294[2].f2 , (l_461.s5 <= 0xC1F1L)) != ((safe_rshift_func_uint16_t_u_s(l_455[1], 13)) & (((safe_add_func_int64_t_s_s(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 8))(p_618->g_303[0][3], 0x5D59AC9F51C60971L, p_618->g_113[0], 1L, 1L, 0x0C73A3042DBF5367L, 0x04AA6C096DE22CF6L, (-4L))).s60)).even, (safe_div_func_int64_t_s_s((safe_sub_func_int32_t_s_s(0x164F1AB4L, (safe_rshift_func_uint8_t_u_s(((*l_479) = (8UL & (l_478 &= (GROUP_DIVERGE(1, 1) < (~p_618->g_173))))), l_461.s2)))), p_618->g_112)))) | l_480) < p_27))), l_455[3])))
            { /* block id: 178 */
                uint16_t l_504 = 0xAE1FL;
                VECTOR(int64_t, 2) l_512 = (VECTOR(int64_t, 2))(1L, 5L);
                int8_t **l_517[7][6][2] = {{{&p_618->g_46,&p_618->g_46},{&p_618->g_46,&p_618->g_46},{&p_618->g_46,&p_618->g_46},{&p_618->g_46,&p_618->g_46},{&p_618->g_46,&p_618->g_46},{&p_618->g_46,&p_618->g_46}},{{&p_618->g_46,&p_618->g_46},{&p_618->g_46,&p_618->g_46},{&p_618->g_46,&p_618->g_46},{&p_618->g_46,&p_618->g_46},{&p_618->g_46,&p_618->g_46},{&p_618->g_46,&p_618->g_46}},{{&p_618->g_46,&p_618->g_46},{&p_618->g_46,&p_618->g_46},{&p_618->g_46,&p_618->g_46},{&p_618->g_46,&p_618->g_46},{&p_618->g_46,&p_618->g_46},{&p_618->g_46,&p_618->g_46}},{{&p_618->g_46,&p_618->g_46},{&p_618->g_46,&p_618->g_46},{&p_618->g_46,&p_618->g_46},{&p_618->g_46,&p_618->g_46},{&p_618->g_46,&p_618->g_46},{&p_618->g_46,&p_618->g_46}},{{&p_618->g_46,&p_618->g_46},{&p_618->g_46,&p_618->g_46},{&p_618->g_46,&p_618->g_46},{&p_618->g_46,&p_618->g_46},{&p_618->g_46,&p_618->g_46},{&p_618->g_46,&p_618->g_46}},{{&p_618->g_46,&p_618->g_46},{&p_618->g_46,&p_618->g_46},{&p_618->g_46,&p_618->g_46},{&p_618->g_46,&p_618->g_46},{&p_618->g_46,&p_618->g_46},{&p_618->g_46,&p_618->g_46}},{{&p_618->g_46,&p_618->g_46},{&p_618->g_46,&p_618->g_46},{&p_618->g_46,&p_618->g_46},{&p_618->g_46,&p_618->g_46},{&p_618->g_46,&p_618->g_46},{&p_618->g_46,&p_618->g_46}}};
                VECTOR(int16_t, 2) l_539 = (VECTOR(int16_t, 2))(0x46C9L, 0x375DL);
                int64_t *l_559[8][3] = {{&p_618->g_247,&p_618->g_216,&p_618->g_216},{&p_618->g_247,&p_618->g_216,&p_618->g_216},{&p_618->g_247,&p_618->g_216,&p_618->g_216},{&p_618->g_247,&p_618->g_216,&p_618->g_216},{&p_618->g_247,&p_618->g_216,&p_618->g_216},{&p_618->g_247,&p_618->g_216,&p_618->g_216},{&p_618->g_247,&p_618->g_216,&p_618->g_216},{&p_618->g_247,&p_618->g_216,&p_618->g_216}};
                int32_t l_560 = 3L;
                uint64_t *l_565 = &p_618->g_566;
                uint64_t **l_571 = &l_452;
                int32_t l_596 = 7L;
                struct S0 l_603 = {0x561AEE1FL,-9L,0x487FL,0x0C37L,1UL,0x5222L,0xEBB75A2245F9AC53L,-1L,0x73E0D3CBL};
                int i, j, k;
                for (p_618->g_47 = 0; (p_618->g_47 <= (-4)); p_618->g_47 = safe_sub_func_int64_t_s_s(p_618->g_47, 6))
                { /* block id: 181 */
                    uint16_t *l_507 = &p_618->g_119;
                    uint16_t **l_508 = &l_507;
                    int32_t l_514[4][3] = {{(-1L),3L,(-1L)},{(-1L),3L,(-1L)},{(-1L),3L,(-1L)},{(-1L),3L,(-1L)}};
                    uint64_t **l_531[3];
                    int i, j;
                    for (i = 0; i < 3; i++)
                        l_531[i] = &l_452;
                    (1 + 1);
                }
                if ((p_618->g_329.y = (2L | (safe_div_func_int8_t_s_s(((((safe_mul_func_uint64_t_u_u((l_512.x <= (safe_sub_func_uint8_t_u_u(((safe_rshift_func_int8_t_s_u((+(((*p_618->g_111) = (*p_618->g_291)) | (FAKE_DIVERGE(p_618->group_2_offset, get_group_id(2), 10) | (p_25 , (l_560 = p_26))))), 5)) == (!(safe_sub_func_int16_t_s_s((FAKE_DIVERGE(p_618->local_2_offset, get_local_id(2), 10) ^ p_27), ((*l_511) &= 65531UL))))), l_510.s8))), (p_28 = ((safe_add_func_int32_t_s_s((((p_618->g_182.s0 = ((((*l_565) = (p_25.f5 != p_25.f1)) , p_25.f6) & (-10L))) , &p_618->g_302) != (void*)0), p_618->g_274.x)) <= 1UL)))) & l_539.y) < 0xF439L) & p_25.f8), p_25.f4)))))
                { /* block id: 210 */
                    int32_t *l_570 = &l_480;
                    VECTOR(uint16_t, 2) l_580 = (VECTOR(uint16_t, 2))(1UL, 0x0B2FL);
                    uint32_t *l_591 = (void*)0;
                    int32_t l_595 = (-8L);
                    int i;
                    for (p_26 = 0; (p_26 >= (-22)); p_26--)
                    { /* block id: 213 */
                        int32_t **l_569 = &l_434[5][0];
                        (*l_569) = &l_455[1];
                        l_570 = &l_455[5];
                        (**p_618->g_301) = (&p_618->g_491 != l_571);
                    }
                    l_560 = (l_596 = ((VECTOR(int32_t, 2))(safe_clamp_func(VECTOR(int32_t, 2),int32_t,((VECTOR(int32_t, 16))(((*p_618->g_111) = 1L), ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(p_618->g_572.s35)).xyxxxyyxyxyyyxyy)).s9, ((VECTOR(int32_t, 4))(p_618->g_573.s5364)), ((((((safe_unary_minus_func_uint8_t_u(((safe_mod_func_uint32_t_u_u((p_618->g_597 &= (((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 2))(l_577.yy)))), 65535UL, 0xF463L)).zzyxwxwwzxyzxwzx)).lo)).s3 != (((safe_mod_func_uint64_t_u_u(((VECTOR(uint64_t, 2))(0xD4318F9053F3AB21L, 0xCE872D86C31F5A0EL)).hi, 0xA702747A509E54D2L)) & ((VECTOR(uint16_t, 2))(abs(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(0x222EL, 0x1A16L)), ((VECTOR(uint16_t, 4))(l_580.yyxx)), 0x1577L, 65533UL)).s62))).lo) || ((safe_sub_func_uint16_t_u_u((safe_div_func_int64_t_s_s((((((*p_618->g_111) = (safe_lshift_func_uint8_t_u_s(FAKE_DIVERGE(p_618->local_1_offset, get_local_id(1), 10), 3))) != ((l_595 = (safe_rshift_func_uint8_t_u_u((safe_add_func_int8_t_s_s(((GROUP_DIVERGE(0, 1) | ((*l_479) = ((void*)0 != l_591))) , (safe_mul_func_uint8_t_u_u(((((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(l_594.s186f70e4)).s25)).even >= ((0x9CL < (((*l_570) = (((+(1L > (((((((~((&p_24 != &p_618->g_113[1]) > (p_25.f4 ^ 0x189235CAEE1A8402L))) <= 18446744073709551615UL) && p_618->g_6.s3) <= FAKE_DIVERGE(p_618->group_0_offset, get_group_id(0), 10)) || FAKE_DIVERGE(p_618->local_1_offset, get_local_id(1), 10)) , l_512.y) & 0x2939C44DB59E5522L))) == p_618->g_424.x) < p_618->g_424.x)) >= 0x1FFF75394A811050L)) <= p_25.f0)) && l_539.x), p_25.f3))), l_538.s6)), 0))) == l_444)) , GROUP_DIVERGE(1, 1)) , (-8L)), p_28)), l_596)) < p_25.f1)))), 0x5B90653DL)) && l_539.y))) , (void*)0) == (void*)0) , &p_618->g_305) != &l_504) >= p_618->g_182.s4), 0x51A7DBA2L, 0x2E8C8728L)), 1L, (*l_570), (-2L), 0x0E536E70L, 2L, 0x77620ABFL, 0x3AB49F04L)).s1e, (int32_t)0x7C31A2FCL, (int32_t)4L))).hi);
                }
                else
                { /* block id: 226 */
                    int8_t ***l_598 = &l_517[5][0][1];
                    int8_t ****l_599[10];
                    int32_t l_601 = 0x3A082E95L;
                    struct S0 *l_602[4] = {&p_618->g_294[2],&p_618->g_294[2],&p_618->g_294[2],&p_618->g_294[2]};
                    int i;
                    for (i = 0; i < 10; i++)
                        l_599[i] = &p_618->g_75[1];
                    (*p_618->g_111) |= ((l_600[1][1] = l_598) != &p_618->g_76);
                    if (l_601)
                        continue;
                    l_603 = p_25;
                }
            }
            else
            { /* block id: 232 */
                (*p_618->g_111) = (safe_rshift_func_int8_t_s_s((0x3CL > p_618->g_199.x), 2));
                for (p_618->g_400 = 0; (p_618->g_400 >= 25); p_618->g_400 = safe_add_func_int32_t_s_s(p_618->g_400, 5))
                { /* block id: 236 */
                    return l_479;
                }
            }
        }
        for (p_618->g_597 = 0; (p_618->g_597 >= 26); p_618->g_597 = safe_add_func_uint16_t_u_u(p_618->g_597, 9))
        { /* block id: 243 */
            for (p_618->g_402 = 19; (p_618->g_402 <= 25); p_618->g_402 = safe_add_func_int64_t_s_s(p_618->g_402, 4))
            { /* block id: 246 */
                (*p_618->g_302) = ((VECTOR(int32_t, 8))(p_618->g_612.yxyxxyyx)).s4;
                if ((*p_618->g_291))
                    break;
                if (p_25.f7)
                    break;
            }
        }
    }
    return l_613;
}


/* ------------------------------------------ */
/* 
 * reads : p_618->g_9 p_618->g_10 p_618->g_47 p_618->g_113 p_618->g_112 p_618->g_119 p_618->g_247 p_618->g_143 p_618->g_216 p_618->g_182 p_618->g_100 p_618->g_46 p_618->g_111 p_618->g_264 p_618->g_268 p_618->g_291 p_618->g_295 p_618->g_301 p_618->g_328 p_618->g_329 p_618->g_294.f2 p_618->g_7 p_618->g_367 p_618->g_2 p_618->g_274 p_618->g_173 p_618->g_133.f1 p_618->g_400 p_618->g_294.f8 p_618->g_402 p_618->g_294.f4 p_618->g_404 p_618->g_424 p_618->g_294
 * writes: p_618->g_47 p_618->g_76 p_618->g_111 p_618->g_143 p_618->g_119 p_618->g_112 p_618->g_2 p_618->g_294 p_618->g_274 p_618->g_305 p_618->g_247 p_618->g_402 p_618->g_264 p_618->g_268 p_618->g_329
 */
int16_t  func_29(int8_t * p_30, int8_t * p_31, int8_t * p_32, int32_t  p_33, int32_t  p_34, struct S1 * p_618)
{ /* block id: 16 */
    int8_t *l_48[4];
    int32_t *l_307 = &p_618->g_2;
    int32_t l_309 = 0x7E73476CL;
    int32_t l_312 = 0x2200067AL;
    int32_t l_319 = (-1L);
    int32_t l_320 = 0L;
    uint32_t l_321[8] = {0x0CF6C258L,0x0CF6C258L,0x0CF6C258L,0x0CF6C258L,0x0CF6C258L,0x0CF6C258L,0x0CF6C258L,0x0CF6C258L};
    VECTOR(int32_t, 16) l_326 = (VECTOR(int32_t, 16))(2L, (VECTOR(int32_t, 4))(2L, (VECTOR(int32_t, 2))(2L, 5L), 5L), 5L, 2L, 5L, (VECTOR(int32_t, 2))(2L, 5L), (VECTOR(int32_t, 2))(2L, 5L), 2L, 5L, 2L, 5L);
    VECTOR(uint32_t, 16) l_366 = (VECTOR(uint32_t, 16))(0xD3C0F29BL, (VECTOR(uint32_t, 4))(0xD3C0F29BL, (VECTOR(uint32_t, 2))(0xD3C0F29BL, 4294967291UL), 4294967291UL), 4294967291UL, 0xD3C0F29BL, 4294967291UL, (VECTOR(uint32_t, 2))(0xD3C0F29BL, 4294967291UL), (VECTOR(uint32_t, 2))(0xD3C0F29BL, 4294967291UL), 0xD3C0F29BL, 4294967291UL, 0xD3C0F29BL, 4294967291UL);
    uint8_t l_413 = 0x07L;
    VECTOR(int8_t, 4) l_419 = (VECTOR(int8_t, 4))(0x41L, (VECTOR(int8_t, 2))(0x41L, (-9L)), (-9L));
    VECTOR(int8_t, 4) l_420 = (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x36L), 0x36L);
    VECTOR(int8_t, 4) l_421 = (VECTOR(int8_t, 4))(0x04L, (VECTOR(int8_t, 2))(0x04L, (-1L)), (-1L));
    VECTOR(int8_t, 2) l_422 = (VECTOR(int8_t, 2))((-1L), 0x66L);
    VECTOR(int8_t, 16) l_423 = (VECTOR(int8_t, 16))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, (-9L)), (-9L)), (-9L), 0L, (-9L), (VECTOR(int8_t, 2))(0L, (-9L)), (VECTOR(int8_t, 2))(0L, (-9L)), 0L, (-9L), 0L, (-9L));
    uint8_t l_429 = 1UL;
    struct S0 l_431 = {0x16DE90F9L,1L,-6L,0x0F40L,0UL,0x74D9L,0xDFC188994A784064L,0x3C94L,-9L};
    struct S0 *l_432 = &p_618->g_294[2];
    int i;
    for (i = 0; i < 4; i++)
        l_48[i] = &p_618->g_47;
    if ((p_30 == l_48[3]))
    { /* block id: 17 */
        int8_t **l_49 = &l_48[3];
        int8_t **l_51[4][1];
        int8_t ***l_50 = &l_51[2][0];
        uint8_t *l_259 = &p_618->g_143;
        int16_t *l_304[1][8][3] = {{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}}};
        int32_t *l_308 = &p_618->g_2;
        int32_t l_316 = 6L;
        VECTOR(int32_t, 8) l_327 = (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 1L), 1L), 1L, (-1L), 1L);
        VECTOR(uint8_t, 4) l_332 = (VECTOR(uint8_t, 4))(0x60L, (VECTOR(uint8_t, 2))(0x60L, 0UL), 0UL);
        uint64_t *l_335 = &p_618->g_294[2].f6;
        int64_t l_340 = 0x79538BAE10A693D1L;
        VECTOR(uint32_t, 16) l_394 = (VECTOR(uint32_t, 16))(7UL, (VECTOR(uint32_t, 4))(7UL, (VECTOR(uint32_t, 2))(7UL, 3UL), 3UL), 3UL, 7UL, 3UL, (VECTOR(uint32_t, 2))(7UL, 3UL), (VECTOR(uint32_t, 2))(7UL, 3UL), 7UL, 3UL, 7UL, 3UL);
        int i, j, k;
        for (i = 0; i < 4; i++)
        {
            for (j = 0; j < 1; j++)
                l_51[i][j] = &l_48[0];
        }
        if (((l_49 == ((*l_50) = &p_618->g_46)) , (p_618->g_9.s0 >= (func_52((safe_lshift_func_uint8_t_u_u(((*l_259) = func_56(p_618->g_10.w, p_618)), 2)), p_618) == (p_618->g_305 = (safe_rshift_func_int16_t_s_u(((0xF58DL ^ (safe_mod_func_int16_t_s_s((p_618->g_274.x = ((p_618->g_301 != &p_618->g_302) && p_33)), p_33))) <= p_33), 14)))))))
        { /* block id: 122 */
            int32_t *l_306 = (void*)0;
            int32_t l_346 = 0x41A8DC9BL;
            int32_t l_347 = 0x58BBFF7EL;
            int32_t l_356 = 0L;
            int32_t l_357 = 0x4C3A9362L;
            int32_t l_358 = 0x681A0659L;
            int8_t **l_373[4];
            struct S0 l_403 = {0x2BA8C76FL,1L,0x1DFEL,0x39B1L,0x962E6C23L,0x00E4L,18446744073709551606UL,0x2A87L,3L};
            int i;
            for (i = 0; i < 4; i++)
                l_373[i] = (void*)0;
            if ((l_306 != (l_308 = l_307)))
            { /* block id: 124 */
                int32_t *l_310 = &l_309;
                int32_t *l_311 = &p_618->g_2;
                int32_t *l_313 = (void*)0;
                int32_t *l_314 = &l_312;
                int32_t *l_315 = &l_312;
                int32_t *l_317 = &p_618->g_2;
                int32_t *l_318[7][10] = {{&l_312,&l_312,&l_312,(void*)0,&l_312,&l_312,&l_312,&l_316,&p_618->g_2,&p_618->g_2},{&l_312,&l_312,&l_312,(void*)0,&l_312,&l_312,&l_312,&l_316,&p_618->g_2,&p_618->g_2},{&l_312,&l_312,&l_312,(void*)0,&l_312,&l_312,&l_312,&l_316,&p_618->g_2,&p_618->g_2},{&l_312,&l_312,&l_312,(void*)0,&l_312,&l_312,&l_312,&l_316,&p_618->g_2,&p_618->g_2},{&l_312,&l_312,&l_312,(void*)0,&l_312,&l_312,&l_312,&l_316,&p_618->g_2,&p_618->g_2},{&l_312,&l_312,&l_312,(void*)0,&l_312,&l_312,&l_312,&l_316,&p_618->g_2,&p_618->g_2},{&l_312,&l_312,&l_312,(void*)0,&l_312,&l_312,&l_312,&l_316,&p_618->g_2,&p_618->g_2}};
                VECTOR(int32_t, 4) l_330 = (VECTOR(int32_t, 4))(0x330DD2ACL, (VECTOR(int32_t, 2))(0x330DD2ACL, (-8L)), (-8L));
                int8_t **l_399 = &l_48[3];
                int64_t *l_401 = &p_618->g_402;
                int i, j;
                ++l_321[4];
                for (p_618->g_247 = 0; (p_618->g_247 != (-26)); p_618->g_247--)
                { /* block id: 128 */
                    int8_t l_331 = 0L;
                    uint64_t *l_336[10][5][3] = {{{(void*)0,(void*)0,&p_618->g_294[2].f6},{(void*)0,(void*)0,&p_618->g_294[2].f6},{(void*)0,(void*)0,&p_618->g_294[2].f6},{(void*)0,(void*)0,&p_618->g_294[2].f6},{(void*)0,(void*)0,&p_618->g_294[2].f6}},{{(void*)0,(void*)0,&p_618->g_294[2].f6},{(void*)0,(void*)0,&p_618->g_294[2].f6},{(void*)0,(void*)0,&p_618->g_294[2].f6},{(void*)0,(void*)0,&p_618->g_294[2].f6},{(void*)0,(void*)0,&p_618->g_294[2].f6}},{{(void*)0,(void*)0,&p_618->g_294[2].f6},{(void*)0,(void*)0,&p_618->g_294[2].f6},{(void*)0,(void*)0,&p_618->g_294[2].f6},{(void*)0,(void*)0,&p_618->g_294[2].f6},{(void*)0,(void*)0,&p_618->g_294[2].f6}},{{(void*)0,(void*)0,&p_618->g_294[2].f6},{(void*)0,(void*)0,&p_618->g_294[2].f6},{(void*)0,(void*)0,&p_618->g_294[2].f6},{(void*)0,(void*)0,&p_618->g_294[2].f6},{(void*)0,(void*)0,&p_618->g_294[2].f6}},{{(void*)0,(void*)0,&p_618->g_294[2].f6},{(void*)0,(void*)0,&p_618->g_294[2].f6},{(void*)0,(void*)0,&p_618->g_294[2].f6},{(void*)0,(void*)0,&p_618->g_294[2].f6},{(void*)0,(void*)0,&p_618->g_294[2].f6}},{{(void*)0,(void*)0,&p_618->g_294[2].f6},{(void*)0,(void*)0,&p_618->g_294[2].f6},{(void*)0,(void*)0,&p_618->g_294[2].f6},{(void*)0,(void*)0,&p_618->g_294[2].f6},{(void*)0,(void*)0,&p_618->g_294[2].f6}},{{(void*)0,(void*)0,&p_618->g_294[2].f6},{(void*)0,(void*)0,&p_618->g_294[2].f6},{(void*)0,(void*)0,&p_618->g_294[2].f6},{(void*)0,(void*)0,&p_618->g_294[2].f6},{(void*)0,(void*)0,&p_618->g_294[2].f6}},{{(void*)0,(void*)0,&p_618->g_294[2].f6},{(void*)0,(void*)0,&p_618->g_294[2].f6},{(void*)0,(void*)0,&p_618->g_294[2].f6},{(void*)0,(void*)0,&p_618->g_294[2].f6},{(void*)0,(void*)0,&p_618->g_294[2].f6}},{{(void*)0,(void*)0,&p_618->g_294[2].f6},{(void*)0,(void*)0,&p_618->g_294[2].f6},{(void*)0,(void*)0,&p_618->g_294[2].f6},{(void*)0,(void*)0,&p_618->g_294[2].f6},{(void*)0,(void*)0,&p_618->g_294[2].f6}},{{(void*)0,(void*)0,&p_618->g_294[2].f6},{(void*)0,(void*)0,&p_618->g_294[2].f6},{(void*)0,(void*)0,&p_618->g_294[2].f6},{(void*)0,(void*)0,&p_618->g_294[2].f6},{(void*)0,(void*)0,&p_618->g_294[2].f6}}};
                    uint64_t **l_337 = (void*)0;
                    uint64_t **l_338 = &l_336[4][4][1];
                    uint32_t *l_339[10][9][2] = {{{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]}},{{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]}},{{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]}},{{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]}},{{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]}},{{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]}},{{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]}},{{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]}},{{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]}},{{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]},{&l_321[4],&l_321[1]}}};
                    int32_t l_344 = 0L;
                    int32_t l_345 = 0x0DAF854EL;
                    int32_t l_348 = (-3L);
                    int32_t l_349 = 1L;
                    int32_t l_353 = 0x2309E457L;
                    int32_t l_354 = 0x14B7E856L;
                    int32_t l_355[7][9] = {{0x6E0478C9L,0x44D6BB53L,0x30400582L,0x44D6BB53L,0x6E0478C9L,0x6E0478C9L,0x44D6BB53L,0x30400582L,0x44D6BB53L},{0x6E0478C9L,0x44D6BB53L,0x30400582L,0x44D6BB53L,0x6E0478C9L,0x6E0478C9L,0x44D6BB53L,0x30400582L,0x44D6BB53L},{0x6E0478C9L,0x44D6BB53L,0x30400582L,0x44D6BB53L,0x6E0478C9L,0x6E0478C9L,0x44D6BB53L,0x30400582L,0x44D6BB53L},{0x6E0478C9L,0x44D6BB53L,0x30400582L,0x44D6BB53L,0x6E0478C9L,0x6E0478C9L,0x44D6BB53L,0x30400582L,0x44D6BB53L},{0x6E0478C9L,0x44D6BB53L,0x30400582L,0x44D6BB53L,0x6E0478C9L,0x6E0478C9L,0x44D6BB53L,0x30400582L,0x44D6BB53L},{0x6E0478C9L,0x44D6BB53L,0x30400582L,0x44D6BB53L,0x6E0478C9L,0x6E0478C9L,0x44D6BB53L,0x30400582L,0x44D6BB53L},{0x6E0478C9L,0x44D6BB53L,0x30400582L,0x44D6BB53L,0x6E0478C9L,0x6E0478C9L,0x44D6BB53L,0x30400582L,0x44D6BB53L}};
                    uint16_t l_359[3];
                    int8_t **l_372 = &p_618->g_46;
                    int i, j, k;
                    for (i = 0; i < 3; i++)
                        l_359[i] = 5UL;
                    (*l_314) |= p_34;
                    if (((VECTOR(int32_t, 2))(mad_sat(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(l_326.sc8af)))).lo)).xyyyxxxx)).s24, ((VECTOR(int32_t, 16))(add_sat(((VECTOR(int32_t, 2))(l_327.s57)).xxxyxyyxxyyyxyxx, ((VECTOR(int32_t, 16))(add_sat(((VECTOR(int32_t, 4))(p_618->g_328.s58fc)).xzywwxzzxwwwyywz, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(clz(((VECTOR(int32_t, 4))(mul_hi(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(p_618->g_329.xxxx)).wzwzywyyywxzyzyy)).s1b2c, ((VECTOR(int32_t, 16))(l_330.wyxwwywyxxyxwxzz)).s9224))).zyzzzzxx))))).s20)), (-1L), 1L, 0x366FF656L, ((VECTOR(int32_t, 2))(rhadd(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(rotate(((VECTOR(int32_t, 16))(0L, (-9L), 7L, 0x5BA0EBD3L, 0x24460034L, l_331, (((GROUP_DIVERGE(0, 1) , (((((*p_32) != ((VECTOR(uint8_t, 4))(l_332.yxwz)).x) , (safe_mul_func_uint8_t_u_u(p_618->g_264.y, (+((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(0xCFL, 0UL)), 0x9FL, 0x15L, ((l_335 == ((*l_338) = l_336[4][4][1])) > (((p_618->g_264.z != l_331) < p_33) || p_33)), 252UL, 255UL, 254UL)).s00)).odd)))) && 1L) != p_618->g_294[2].f2)) , l_339[2][3][1]) == l_339[5][0][1]), l_340, (-9L), (-8L), ((VECTOR(int32_t, 4))(0x58C7EBE5L)), 0x05A7452DL, 0x06BAD744L)).sf6eb, ((VECTOR(int32_t, 4))(0x473C4E1CL))))).wwzxzwxwwxzwzzxx)).s35, ((VECTOR(int32_t, 2))(7L))))), 2L)).s5704122301351110)))))))).s00, ((VECTOR(int32_t, 2))(0x65D6FAA0L))))).even)
                    { /* block id: 131 */
                        int8_t l_343 = 0x3CL;
                        int32_t l_350 = 5L;
                        int32_t l_351 = 0x116AEC9CL;
                        int32_t l_352[3];
                        uint16_t *l_371 = &l_359[2];
                        int32_t *l_374[6] = {&l_348,&l_312,&l_348,&l_348,&l_312,&l_348};
                        int i;
                        for (i = 0; i < 3; i++)
                            l_352[i] = 0x3F81BAC9L;
                        (*l_308) = (safe_add_func_int32_t_s_s((~0x342D217FL), p_34));
                        --l_359[2];
                        l_374[4] = func_60(p_34, (safe_add_func_int8_t_s_s((*p_32), (((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(clz(((VECTOR(int16_t, 4))(min(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))((-1L), (-1L), 0x593CL, 1L)), (safe_mul_func_uint16_t_u_u(p_618->g_7.z, ((((((VECTOR(uint32_t, 4))(l_366.se458)).w && ((FAKE_DIVERGE(p_618->global_0_offset, get_global_id(0), 10) , p_618->g_367) != (void*)0)) == (p_34 , (*l_308))) != (safe_sub_func_int32_t_s_s(((void*)0 != l_371), p_618->g_274.y))) == p_618->g_173))), 0x1A01L, (-1L), 0x294BL)).hi, ((VECTOR(int16_t, 4))(8L)))))))).xzwxwwxy)).s5 == 0x5F4CL))), l_372, l_373[2], p_33, p_618);
                        if (p_34)
                            break;
                    }
                    else
                    { /* block id: 136 */
                        int16_t l_375 = (-6L);
                        uint8_t l_376[3][4][8] = {{{250UL,0xF8L,255UL,0x8AL,1UL,0xF6L,0xBDL,3UL},{250UL,0xF8L,255UL,0x8AL,1UL,0xF6L,0xBDL,3UL},{250UL,0xF8L,255UL,0x8AL,1UL,0xF6L,0xBDL,3UL},{250UL,0xF8L,255UL,0x8AL,1UL,0xF6L,0xBDL,3UL}},{{250UL,0xF8L,255UL,0x8AL,1UL,0xF6L,0xBDL,3UL},{250UL,0xF8L,255UL,0x8AL,1UL,0xF6L,0xBDL,3UL},{250UL,0xF8L,255UL,0x8AL,1UL,0xF6L,0xBDL,3UL},{250UL,0xF8L,255UL,0x8AL,1UL,0xF6L,0xBDL,3UL}},{{250UL,0xF8L,255UL,0x8AL,1UL,0xF6L,0xBDL,3UL},{250UL,0xF8L,255UL,0x8AL,1UL,0xF6L,0xBDL,3UL},{250UL,0xF8L,255UL,0x8AL,1UL,0xF6L,0xBDL,3UL},{250UL,0xF8L,255UL,0x8AL,1UL,0xF6L,0xBDL,3UL}}};
                        int i, j, k;
                        l_376[1][3][0]--;
                        (*l_314) |= (*l_308);
                        (*l_314) ^= 1L;
                    }
                    (*p_618->g_111) = (safe_mul_func_uint16_t_u_u(p_33, (safe_unary_minus_func_uint8_t_u(0x58L))));
                }
                p_618->g_264.x ^= (safe_sub_func_int64_t_s_s(((((**l_49) = ((!p_33) <= ((((FAKE_DIVERGE(p_618->group_2_offset, get_group_id(2), 10) && (safe_sub_func_uint16_t_u_u((((safe_mul_func_uint8_t_u_u((safe_add_func_uint32_t_u_u((((safe_sub_func_uint16_t_u_u(((((((*l_401) |= (safe_mod_func_int8_t_s_s((-7L), (((((VECTOR(uint32_t, 8))(abs(((VECTOR(uint32_t, 2))(l_394.s7e)).xyxxyxyx))).s4 , ((*l_49) == (p_30 = func_35(p_34, ((p_34 >= (((*l_307) ^ ((safe_mul_func_uint16_t_u_u((GROUP_DIVERGE(2, 1) | (((*l_308) , func_60(p_618->g_133.f1, ((*p_618->g_111) >= p_33), l_399, (*l_50), p_618->g_400, p_618)) != &l_357)), p_618->g_294[2].f8)) > (*l_308))) > (-10L))) > (*l_310)), p_30, p_618)))) && p_618->g_400) , (*p_31))))) , p_34) < (*l_314)) , (*l_307)) >= p_618->g_294[2].f4), 0x168AL)) , (void*)0) == (void*)0), 2L)), p_618->g_9.s7)) == (*l_317)) != (*p_32)), (*l_308)))) || 0x7436F2B06FA1E50EL) , p_618->g_100.z) ^ p_618->g_329.x))) , &p_32) != &p_31), (*l_308)));
            }
            else
            { /* block id: 147 */
                (*p_618->g_404) = l_403;
            }
        }
        else
        { /* block id: 150 */
            int32_t *l_405 = &l_319;
            int32_t *l_406 = (void*)0;
            int32_t *l_407 = &p_618->g_112;
            int32_t *l_408 = &p_618->g_112;
            int32_t *l_409 = &l_320;
            int32_t *l_410 = &l_316;
            int32_t *l_411 = (void*)0;
            int32_t *l_412[5][9][3] = {{{&l_316,&p_618->g_2,&l_309},{&l_316,&p_618->g_2,&l_309},{&l_316,&p_618->g_2,&l_309},{&l_316,&p_618->g_2,&l_309},{&l_316,&p_618->g_2,&l_309},{&l_316,&p_618->g_2,&l_309},{&l_316,&p_618->g_2,&l_309},{&l_316,&p_618->g_2,&l_309},{&l_316,&p_618->g_2,&l_309}},{{&l_316,&p_618->g_2,&l_309},{&l_316,&p_618->g_2,&l_309},{&l_316,&p_618->g_2,&l_309},{&l_316,&p_618->g_2,&l_309},{&l_316,&p_618->g_2,&l_309},{&l_316,&p_618->g_2,&l_309},{&l_316,&p_618->g_2,&l_309},{&l_316,&p_618->g_2,&l_309},{&l_316,&p_618->g_2,&l_309}},{{&l_316,&p_618->g_2,&l_309},{&l_316,&p_618->g_2,&l_309},{&l_316,&p_618->g_2,&l_309},{&l_316,&p_618->g_2,&l_309},{&l_316,&p_618->g_2,&l_309},{&l_316,&p_618->g_2,&l_309},{&l_316,&p_618->g_2,&l_309},{&l_316,&p_618->g_2,&l_309},{&l_316,&p_618->g_2,&l_309}},{{&l_316,&p_618->g_2,&l_309},{&l_316,&p_618->g_2,&l_309},{&l_316,&p_618->g_2,&l_309},{&l_316,&p_618->g_2,&l_309},{&l_316,&p_618->g_2,&l_309},{&l_316,&p_618->g_2,&l_309},{&l_316,&p_618->g_2,&l_309},{&l_316,&p_618->g_2,&l_309},{&l_316,&p_618->g_2,&l_309}},{{&l_316,&p_618->g_2,&l_309},{&l_316,&p_618->g_2,&l_309},{&l_316,&p_618->g_2,&l_309},{&l_316,&p_618->g_2,&l_309},{&l_316,&p_618->g_2,&l_309},{&l_316,&p_618->g_2,&l_309},{&l_316,&p_618->g_2,&l_309},{&l_316,&p_618->g_2,&l_309},{&l_316,&p_618->g_2,&l_309}}};
            int i, j, k;
            --l_413;
        }
        return (*l_307);
    }
    else
    { /* block id: 154 */
        int32_t **l_416 = &p_618->g_111;
        int32_t *l_430[2][3][4] = {{{&l_319,&l_320,&p_618->g_2,(void*)0},{&l_319,&l_320,&p_618->g_2,(void*)0},{&l_319,&l_320,&p_618->g_2,(void*)0}},{{&l_319,&l_320,&p_618->g_2,(void*)0},{&l_319,&l_320,&p_618->g_2,(void*)0},{&l_319,&l_320,&p_618->g_2,(void*)0}}};
        int i, j, k;
        p_618->g_268 = l_416;
        p_618->g_329.y &= ((**l_416) , ((p_33 & (safe_div_func_int8_t_s_s(((void*)0 != &l_413), ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(hadd(((VECTOR(int8_t, 2))(rotate(((VECTOR(int8_t, 2))(1L, (-4L))), ((VECTOR(int8_t, 8))((-3L), ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(l_419.wx)), ((VECTOR(int8_t, 8))(add_sat(((VECTOR(int8_t, 2))(min(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 16))(rhadd(((VECTOR(int8_t, 8))(l_420.wzwwywwx)).s2416351745276031, ((VECTOR(int8_t, 8))(l_421.xzzxyxww)).s7516563751735313))).s78)), ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 16))(mul_hi(((VECTOR(int8_t, 2))(l_422.xy)).xxyyyyxxxxyyxxxy, ((VECTOR(int8_t, 16))(l_423.sa6f429334bfc4913))))))).s34))).xxxxxxxy, ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(p_618->g_424.yxyx)).yxwxyxyw))))), ((safe_mod_func_int8_t_s_s((safe_add_func_int8_t_s_s(0x5CL, (**l_416))), ((p_618->g_113[0] | (*p_618->g_111)) , ((*p_32) , (*l_307))))) || p_618->g_9.s4), 0L, ((VECTOR(int8_t, 4))(0x15L)))).se2)), l_429, 0x43L, ((VECTOR(int8_t, 2))(0x31L)), (-1L))).s53))).yxxyyxyyxxyyyyxx, ((VECTOR(int8_t, 16))(1L))))).s7d3a)).even)).yyyxyxxyxyxyxxxy)).sf))) , (*p_618->g_291)));
        (*l_416) = (*p_618->g_268);
    }
    (*l_432) = l_431;
    (*l_432) = (*l_432);
    return p_34;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int8_t * func_35(uint64_t  p_36, uint32_t  p_37, int8_t * p_38, struct S1 * p_618)
{ /* block id: 13 */
    int8_t *l_43 = (void*)0;
    return l_43;
}


/* ------------------------------------------ */
/* 
 * reads : p_618->g_47 p_618->g_119 p_618->g_111 p_618->g_112 p_618->g_264 p_618->g_143 p_618->g_268 p_618->g_9 p_618->g_100 p_618->g_182 p_618->g_291 p_618->g_295
 * writes: p_618->g_47 p_618->g_119 p_618->g_112 p_618->g_143 p_618->g_111 p_618->g_2 p_618->g_294
 */
int16_t  func_52(uint8_t  p_53, struct S1 * p_618)
{ /* block id: 94 */
    int32_t *l_267 = &p_618->g_112;
    VECTOR(int32_t, 8) l_272 = (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x00BEA74FL), 0x00BEA74FL), 0x00BEA74FL, 1L, 0x00BEA74FL);
    int i;
lbl_296:
    for (p_618->g_47 = 0; (p_618->g_47 != (-8)); p_618->g_47 = safe_sub_func_uint64_t_u_u(p_618->g_47, 1))
    { /* block id: 97 */
        int8_t **l_269 = &p_618->g_46;
        for (p_618->g_119 = 0; (p_618->g_119 == 21); p_618->g_119 = safe_add_func_int8_t_s_s(p_618->g_119, 1))
        { /* block id: 100 */
            int32_t l_287 = 0x23A682E6L;
            if ((*p_618->g_111))
                break;
            if ((+((*p_618->g_111) |= ((VECTOR(int32_t, 4))(p_618->g_264.xzzw)).w)))
            { /* block id: 103 */
                for (p_618->g_143 = 0; (p_618->g_143 != 50); p_618->g_143 = safe_add_func_uint64_t_u_u(p_618->g_143, 7))
                { /* block id: 106 */
                    (*p_618->g_268) = l_267;
                }
            }
            else
            { /* block id: 109 */
                int16_t *l_273 = (void*)0;
                int16_t *l_275 = (void*)0;
                int16_t *l_276 = (void*)0;
                int16_t *l_277 = (void*)0;
                int16_t *l_278[2][9];
                int32_t l_279 = 0L;
                int32_t l_286 = 0x387D9AF8L;
                int8_t *l_288[6][1] = {{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}};
                int32_t l_289 = 0x5D15559FL;
                struct S0 l_292 = {0L,0x35L,3L,-8L,0xBC8CE93FL,0x5844L,0x827CEEB1FE54FC9AL,0x3484L,1L};
                int i, j;
                for (i = 0; i < 2; i++)
                {
                    for (j = 0; j < 9; j++)
                        l_278[i][j] = (void*)0;
                }
                (*p_618->g_291) = (((l_269 == (void*)0) >= ((safe_mul_func_int16_t_s_s((l_279 = (((*p_618->g_111) = ((VECTOR(int32_t, 16))(l_272.s2667040117777730)).s8) | (-4L))), (~0UL))) >= p_618->g_9.s2)) | ((safe_mul_func_uint8_t_u_u(p_618->g_100.z, (safe_sub_func_int8_t_s_s((safe_rshift_func_uint8_t_u_s(0xB6L, (l_286 & (+GROUP_DIVERGE(0, 1))))), ((l_289 = (l_287 & p_618->g_182.s1)) == l_287))))) && p_53));
                (*p_618->g_295) = l_292;
            }
        }
        if (p_618->g_47)
            goto lbl_296;
    }
    return p_618->g_100.w;
}


/* ------------------------------------------ */
/* 
 * reads : p_618->g_47 p_618->g_113 p_618->g_112 p_618->g_119 p_618->g_9 p_618->g_247 p_618->g_143 p_618->g_216 p_618->g_182 p_618->g_100 p_618->g_46
 * writes: p_618->g_47 p_618->g_76 p_618->g_111
 */
uint8_t  func_56(int64_t  p_57, struct S1 * p_618)
{ /* block id: 19 */
    uint32_t l_66 = 0xA03F7513L;
    int32_t *l_82 = &p_618->g_2;
    int8_t *l_97 = &p_618->g_47;
    uint8_t l_98[2];
    int32_t l_220 = 0L;
    int32_t *l_221 = (void*)0;
    int32_t *l_222 = &p_618->g_2;
    int32_t *l_223 = (void*)0;
    int32_t *l_224 = &p_618->g_2;
    int32_t *l_225 = &p_618->g_112;
    int32_t *l_226 = (void*)0;
    int32_t *l_227[3];
    int8_t l_228 = 0x0DL;
    uint16_t l_229 = 0x4C4CL;
    VECTOR(int64_t, 4) l_238 = (VECTOR(int64_t, 4))(0x054EACAEC42DD104L, (VECTOR(int64_t, 2))(0x054EACAEC42DD104L, 0x2F20001E74730E41L), 0x2F20001E74730E41L);
    struct S0 l_241 = {0x333AFFB2L,1L,-1L,-1L,1UL,0x4EC0L,0x11F6D28FF04680B1L,0L,8L};
    int8_t ***l_244 = &p_618->g_76;
    uint32_t *l_245 = (void*)0;
    uint32_t *l_246 = &l_66;
    int64_t l_248[8] = {(-1L),0L,(-1L),(-1L),0L,(-1L),(-1L),0L};
    int64_t l_249 = 0x1A2B02E225A0D352L;
    int16_t *l_250 = &l_241.f7;
    int8_t **l_251 = &p_618->g_46;
    int32_t **l_252 = &l_222;
    int i;
    for (i = 0; i < 2; i++)
        l_98[i] = 250UL;
    for (i = 0; i < 3; i++)
        l_227[i] = (void*)0;
    for (p_618->g_47 = 0; (p_618->g_47 >= (-19)); p_618->g_47--)
    { /* block id: 22 */
        uint32_t l_95 = 1UL;
        VECTOR(uint32_t, 2) l_96 = (VECTOR(uint32_t, 2))(0xFB3F51EDL, 4294967286UL);
        uint64_t *l_99 = (void*)0;
        uint64_t *l_101 = (void*)0;
        uint64_t *l_102 = (void*)0;
        uint64_t *l_103 = (void*)0;
        int32_t l_104[9];
        int8_t ***l_110 = &p_618->g_76;
        int8_t **l_217 = &l_97;
        int32_t **l_219 = &l_82;
        int i;
        for (i = 0; i < 9; i++)
            l_104[i] = 1L;
        (1 + 1);
    }
    l_229++;
    (*l_252) = func_60(p_618->g_113[0], (safe_lshift_func_int16_t_s_u(((*l_250) = ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 16))((safe_add_func_uint8_t_u_u(((l_248[5] |= (safe_add_func_uint16_t_u_u((((((VECTOR(int64_t, 4))(l_238.ywww)).w , ((((safe_lshift_func_int8_t_s_u(((p_618->g_112 && (((*l_225) , l_241) , (((*l_225) < (-1L)) & (safe_rshift_func_int16_t_s_s(p_618->g_119, ((((*l_246) ^= (((*l_244) = &l_97) != &l_97)) | p_57) , p_618->g_9.s2)))))) , p_618->g_247), p_618->g_143)) == p_57) && p_618->g_216) < 255UL)) && 253UL) > p_618->g_182.s6), 7L))) && p_57), 0xE5L)), ((VECTOR(int16_t, 8))(0L)), 0x1370L, p_57, p_618->g_216, 8L, l_249, 0x72F2L, 5L)))).sa), GROUP_DIVERGE(1, 1))), l_251, &l_97, p_618->g_119, p_618);
    if ((0xC94FL ^ ((safe_mod_func_int8_t_s_s(0x06L, (safe_sub_func_int16_t_s_s((((void*)0 != l_250) > (-1L)), (safe_sub_func_int64_t_s_s((((p_618->g_113[1] < FAKE_DIVERGE(p_618->global_0_offset, get_global_id(0), 10)) , (1L != p_618->g_100.x)) > ((*p_618->g_46) |= p_57)), p_618->g_100.y)))))) , p_57)))
    { /* block id: 87 */
        return p_57;
    }
    else
    { /* block id: 89 */
        (*l_252) = (void*)0;
    }
    return (*l_225);
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes: p_618->g_111
 */
int32_t * func_60(int64_t  p_61, int16_t  p_62, int8_t ** p_63, int8_t ** p_64, uint64_t  p_65, struct S1 * p_618)
{ /* block id: 74 */
    int32_t *l_218 = (void*)0;
    p_618->g_111 = &p_618->g_112;
    return l_218;
}


/* ------------------------------------------ */
/* 
 * reads : p_618->g_113 p_618->g_119 p_618->g_133 p_618->g_100 p_618->g_112 p_618->g_47 p_618->g_111 p_618->g_2 p_618->g_76 p_618->g_46 p_618->g_7 p_618->g_10 p_618->g_180 p_618->g_182 p_618->g_199 p_618->g_216 p_618->g_143
 * writes: p_618->g_119 p_618->g_112 p_618->g_143 p_618->g_111 p_618->g_2 p_618->g_173 p_618->g_216 p_618->g_182
 */
int16_t  func_67(uint64_t  p_68, int32_t * p_69, int8_t ** p_70, int32_t  p_71, int64_t  p_72, struct S1 * p_618)
{ /* block id: 35 */
    int32_t l_118 = 1L;
    uint32_t l_140[2][6] = {{8UL,1UL,8UL,8UL,1UL,8UL},{8UL,1UL,8UL,8UL,1UL,8UL}};
    int8_t *l_141 = (void*)0;
    uint8_t *l_142[1][5][1];
    uint32_t l_144 = 0x6D68B9C3L;
    int32_t l_145 = 0x54DB97AAL;
    int64_t l_146 = 8L;
    int32_t *l_178 = &p_618->g_2;
    VECTOR(int32_t, 4) l_181 = (VECTOR(int32_t, 4))(9L, (VECTOR(int32_t, 2))(9L, 0x65897DADL), 0x65897DADL);
    int32_t l_192 = (-7L);
    VECTOR(int32_t, 16) l_195 = (VECTOR(int32_t, 16))(0x44BF40DEL, (VECTOR(int32_t, 4))(0x44BF40DEL, (VECTOR(int32_t, 2))(0x44BF40DEL, (-7L)), (-7L)), (-7L), 0x44BF40DEL, (-7L), (VECTOR(int32_t, 2))(0x44BF40DEL, (-7L)), (VECTOR(int32_t, 2))(0x44BF40DEL, (-7L)), 0x44BF40DEL, (-7L), 0x44BF40DEL, (-7L));
    int16_t l_204 = 0x6336L;
    int i, j, k;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 5; j++)
        {
            for (k = 0; k < 1; k++)
                l_142[i][j][k] = &p_618->g_143;
        }
    }
    if ((p_618->g_113[0] || ((p_618->g_119 |= (safe_lshift_func_uint16_t_u_s(((safe_lshift_func_int8_t_s_s(l_118, ((void*)0 != &p_618->g_111))) != (p_72 && l_118)), 5))) >= ((l_146 = (l_145 = ((((safe_lshift_func_uint8_t_u_u(((safe_mod_func_int16_t_s_s((safe_sub_func_int8_t_s_s((safe_unary_minus_func_int16_t_s(((((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))(0xC09A20D7L, 1UL, 4294967290UL, 4294967295UL)).wywyxzyzzywzzxyy)).sc , (((safe_mul_func_uint8_t_u_u((p_618->g_143 = ((safe_lshift_func_int8_t_s_s(l_118, ((safe_mod_func_uint16_t_u_u(((p_618->g_133 , func_35((safe_mul_func_uint8_t_u_u((((*p_69) = (safe_rshift_func_int8_t_s_s((safe_mod_func_uint16_t_u_u(l_140[0][0], (-4L))), 4))) ^ l_140[0][0]), l_118)), p_68, l_141, p_618)) == (*p_70)), p_72)) && p_71))) & 0UL)), l_140[0][0])) ^ p_618->g_100.w) != 0xBDB128D6L)) || (*p_69)))), (**p_70))), 0x5258L)) , 1UL), l_140[0][0])) < l_144) && p_618->g_133.f7) , l_140[0][0]))) >= (**p_70)))))
    { /* block id: 41 */
        uint32_t l_155 = 0UL;
        VECTOR(uint8_t, 4) l_158 = (VECTOR(uint8_t, 4))(0xDBL, (VECTOR(uint8_t, 2))(0xDBL, 0xA2L), 0xA2L);
        int i;
        for (l_144 = 13; (l_144 > 45); l_144++)
        { /* block id: 44 */
            int32_t *l_149 = &p_618->g_2;
            int32_t l_150 = 0x590C2879L;
            int32_t *l_151 = &p_618->g_2;
            int32_t *l_152 = &p_618->g_2;
            int32_t *l_153 = &p_618->g_2;
            int32_t *l_154[10] = {&p_618->g_112,&l_150,(void*)0,&l_150,&p_618->g_112,&p_618->g_112,&l_150,(void*)0,&l_150,&p_618->g_112};
            int i;
            p_618->g_111 = l_149;
            l_155--;
            if (((*p_618->g_111) &= l_140[0][0]))
            { /* block id: 48 */
                uint16_t *l_171 = &p_618->g_119;
                int64_t l_172 = 0L;
                int64_t *l_176 = &l_146;
                (*p_618->g_111) ^= (((VECTOR(uint16_t, 2))(upsample(((VECTOR(uint8_t, 2))(add_sat(((VECTOR(uint8_t, 2))(0x09L, 0x73L)), ((VECTOR(uint8_t, 8))(0UL, 255UL, ((VECTOR(uint8_t, 2))(mul_hi(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 16))(l_158.zyzwyyxyxwxxwxxw)))).s78, ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(sub_sat(((VECTOR(uint8_t, 2))(255UL, 0x84L)), ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 16))(mul_hi(((VECTOR(uint8_t, 4))((safe_div_func_uint64_t_u_u(18446744073709551606UL, 18446744073709551615UL)), 0x89L, 252UL, 0x38L)).wxzyyxwyyxzxywww, ((VECTOR(uint8_t, 4))(abs(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(mul_hi(((VECTOR(uint8_t, 4))(abs_diff(((VECTOR(int8_t, 4))(add_sat(((VECTOR(int8_t, 8))(0x7CL, ((VECTOR(int8_t, 4))(hadd(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 16))((((p_618->g_173 = (0x1E36F404L ^ (safe_sub_func_uint64_t_u_u((((*l_171) = (l_158.y >= ((safe_add_func_uint16_t_u_u((((p_72 && ((((safe_div_func_uint32_t_u_u((safe_add_func_int8_t_s_s(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(0x00L, 1L)).yyxxyxyy)).even)).y, (((VECTOR(uint32_t, 8))(4294967292UL, (((~l_145) & p_72) > p_618->g_100.w), 0x95997860L, ((safe_div_func_uint8_t_u_u(p_68, p_72)) | 4UL), ((VECTOR(uint32_t, 2))(9UL)), 0xE5843DDAL, 0x6C54E2A7L)).s2 , (**p_70)))), 0x5C695E73L)) >= (**p_618->g_76)) <= p_618->g_7.z) != 1UL)) == p_618->g_119) < 0xC2D7L), p_72)) != 0x2317L))) , l_172), 0xB31F79D74A7D6E7BL)))) || p_72) == p_71), (-1L), 0x69L, ((VECTOR(int8_t, 8))(0x34L)), 5L, 0x7EL, 0L, (-1L), 1L)))).sd55d, ((VECTOR(int8_t, 4))(0x3EL))))), ((VECTOR(int8_t, 2))(0x26L)), (-1L))).lo, ((VECTOR(int8_t, 4))((-6L)))))), ((VECTOR(int8_t, 4))(0x66L))))), ((VECTOR(uint8_t, 4))(0xC7L))))), ((VECTOR(uint8_t, 2))(255UL)), 255UL, 0xA7L)))).even))).xyzyzxzxxxzzyywz))))))).sae))).yyxyxyyyyxxyyxxx)).sc1))), ((VECTOR(uint8_t, 2))(5UL)), 1UL, 0xC9L)).s67))), ((VECTOR(uint8_t, 2))(0x46L))))).odd != 65534UL);
                (*p_618->g_111) |= (safe_div_func_int64_t_s_s(((*l_176) = ((void*)0 == l_171)), p_618->g_100.y));
            }
            else
            { /* block id: 54 */
                (*l_149) |= (-1L);
            }
            (*l_149) |= l_158.w;
        }
        return p_618->g_10.y;
    }
    else
    { /* block id: 60 */
        int32_t **l_177[9][5] = {{&p_618->g_111,&p_618->g_111,&p_618->g_111,&p_618->g_111,&p_618->g_111},{&p_618->g_111,&p_618->g_111,&p_618->g_111,&p_618->g_111,&p_618->g_111},{&p_618->g_111,&p_618->g_111,&p_618->g_111,&p_618->g_111,&p_618->g_111},{&p_618->g_111,&p_618->g_111,&p_618->g_111,&p_618->g_111,&p_618->g_111},{&p_618->g_111,&p_618->g_111,&p_618->g_111,&p_618->g_111,&p_618->g_111},{&p_618->g_111,&p_618->g_111,&p_618->g_111,&p_618->g_111,&p_618->g_111},{&p_618->g_111,&p_618->g_111,&p_618->g_111,&p_618->g_111,&p_618->g_111},{&p_618->g_111,&p_618->g_111,&p_618->g_111,&p_618->g_111,&p_618->g_111},{&p_618->g_111,&p_618->g_111,&p_618->g_111,&p_618->g_111,&p_618->g_111}};
        VECTOR(int32_t, 8) l_179 = (VECTOR(int32_t, 8))(0x6575066FL, (VECTOR(int32_t, 4))(0x6575066FL, (VECTOR(int32_t, 2))(0x6575066FL, 0x4E43E4D8L), 0x4E43E4D8L), 0x4E43E4D8L, 0x6575066FL, 0x4E43E4D8L);
        VECTOR(int32_t, 8) l_183 = (VECTOR(int32_t, 8))(8L, (VECTOR(int32_t, 4))(8L, (VECTOR(int32_t, 2))(8L, 0x5C91CA63L), 0x5C91CA63L), 0x5C91CA63L, 8L, 0x5C91CA63L);
        VECTOR(int8_t, 2) l_200 = (VECTOR(int8_t, 2))(0x75L, 0x08L);
        VECTOR(int64_t, 4) l_203 = (VECTOR(int64_t, 4))(0x78E21E83D15DD58FL, (VECTOR(int64_t, 2))(0x78E21E83D15DD58FL, 0x1D2557C3E86A65F4L), 0x1D2557C3E86A65F4L);
        int i, j;
        l_178 = (void*)0;
        l_204 = ((VECTOR(int32_t, 16))(sub_sat(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(max(((VECTOR(int32_t, 8))(l_179.s04457272)).s43, (int32_t)(((*p_69) ^= (~p_618->g_180)) ^ ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(l_181.wwxxxywyxxwyzyyw)).even)))), 0x7CF7A0FFL, 0x047C2955L, 0x736D5234L, ((VECTOR(int32_t, 4))(p_618->g_182.s4573)), 0x140514D0L)).sc5)).yyxx)).y)))).yxyxxyyxyxyyyxxy)), ((VECTOR(int32_t, 16))(min(((VECTOR(int32_t, 16))(l_183.s4513224403453734)), (int32_t)(safe_add_func_int16_t_s_s((safe_div_func_int32_t_s_s(((safe_mul_func_int8_t_s_s(((p_68 < (+((safe_mod_func_uint8_t_u_u((l_192 && ((safe_div_func_uint32_t_u_u(0x41A536D6L, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))((!(*p_618->g_111)), ((VECTOR(int32_t, 2))(l_195.sdc)), 0x08E0E80EL)))))).zwyywzyxzwyzyxzz)).sa)) < ((VECTOR(int8_t, 16))(mad_sat(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(1L, 0L, 0x4EL, 0x7EL, 0x16L, (safe_lshift_func_uint16_t_u_s((safe_unary_minus_func_uint64_t_u((0x72L <= FAKE_DIVERGE(p_618->local_1_offset, get_local_id(1), 10)))), 10)), 0x67L, ((VECTOR(int8_t, 2))(hadd(((VECTOR(int8_t, 4))(p_618->g_199.zxwz)).lo, ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))((-5L), 0x48L)).yxxxyxxx)).s61))), ((VECTOR(int8_t, 4))(l_200.xxxy)), (((safe_add_func_uint8_t_u_u(0xCDL, (((VECTOR(int64_t, 16))(((VECTOR(int64_t, 2))(l_203.xy)).yxyxyxxxxyxxyyxx)).sd , 0UL))) >= p_618->g_133.f0) < (*p_618->g_111)), 0x34L, (-5L))).sc24b)).xzywyyyxxxyyyxxz, ((VECTOR(int8_t, 16))(0L)), ((VECTOR(int8_t, 16))(0x0BL))))).se)), FAKE_DIVERGE(p_618->global_0_offset, get_global_id(0), 10))) != p_68))) && (**p_70)), 0xB0L)) != 0xDA18C3DD0E6EDD9AL), (*p_69))), p_71)))))))).sf;
    }
    for (p_68 = 0; (p_68 <= 56); ++p_68)
    { /* block id: 67 */
        VECTOR(int16_t, 16) l_211 = (VECTOR(int16_t, 16))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x4FD6L), 0x4FD6L), 0x4FD6L, 0L, 0x4FD6L, (VECTOR(int16_t, 2))(0L, 0x4FD6L), (VECTOR(int16_t, 2))(0L, 0x4FD6L), 0L, 0x4FD6L, 0L, 0x4FD6L);
        int16_t *l_212 = (void*)0;
        int16_t *l_213 = &l_204;
        int16_t *l_214 = (void*)0;
        int16_t *l_215 = (void*)0;
        int i;
        p_618->g_182.s5 |= (((((p_618->g_100.x | ((VECTOR(int64_t, 4))(0x2B7E20503888E424L, 6L, 0x33FCD0C9890C0586L, (-1L))).z) , (safe_lshift_func_int8_t_s_u(0x7EL, 4))) & ((p_72 < (safe_sub_func_uint16_t_u_u(6UL, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(safe_clamp_func(VECTOR(int16_t, 8),VECTOR(int16_t, 8),((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(safe_clamp_func(VECTOR(int16_t, 4),int16_t,((VECTOR(int16_t, 8))(l_211.s8cec9082)).lo, (int16_t)(p_618->g_216 &= (((*p_69) ^ 0x405C0CC7L) || ((((*l_213) = 1L) != ((*p_70) != (*p_70))) > 0UL))), (int16_t)p_618->g_133.f5))), (-9L), ((VECTOR(int16_t, 4))(0x52B8L)), (-1L), ((VECTOR(int16_t, 2))(1L)), 0x42B7L, p_618->g_216, 0L, 1L)).hi, ((VECTOR(int16_t, 8))(0x4F7FL)), ((VECTOR(int16_t, 8))(0x55A4L))))).even)).zyzxyxxw)).s15)), 3L, 0x26D3L)).x))) > (**p_70))) < 0xE888B2F5L) <= 0xEBD901D5472B14F8L);
        if ((*p_69))
            break;
    }
    return p_618->g_143;
}


/* ------------------------------------------ */
/* 
 * reads : p_618->g_2
 * writes: p_618->g_2
 */
int8_t *** func_77(int32_t * p_78, int64_t  p_79, uint32_t  p_80, int32_t  p_81, struct S1 * p_618)
{ /* block id: 24 */
    int32_t *l_108 = &p_618->g_2;
    int32_t **l_107 = &l_108;
    for (p_79 = 0; (p_79 > (-13)); p_79--)
    { /* block id: 27 */
        return &p_618->g_76;
    }
    (*p_78) = (((*l_107) = (void*)0) == p_78);
    (*p_78) = (safe_unary_minus_func_int32_t_s((*p_78)));
    return &p_618->g_76;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j;
    struct S1 c_619;
    struct S1* p_618 = &c_619;
    struct S1 c_620 = {
        1L, // p_618->g_2
        (VECTOR(int16_t, 8))(0x267FL, (VECTOR(int16_t, 4))(0x267FL, (VECTOR(int16_t, 2))(0x267FL, 0x191AL), 0x191AL), 0x191AL, 0x267FL, 0x191AL), // p_618->g_6
        (VECTOR(int16_t, 4))(0x504EL, (VECTOR(int16_t, 2))(0x504EL, 8L), 8L), // p_618->g_7
        (VECTOR(int16_t, 8))(0x5385L, (VECTOR(int16_t, 4))(0x5385L, (VECTOR(int16_t, 2))(0x5385L, 0x3CD4L), 0x3CD4L), 0x3CD4L, 0x5385L, 0x3CD4L), // p_618->g_9
        (VECTOR(int16_t, 4))(0x7228L, (VECTOR(int16_t, 2))(0x7228L, 0L), 0L), // p_618->g_10
        (VECTOR(int8_t, 8))(0x40L, (VECTOR(int8_t, 4))(0x40L, (VECTOR(int8_t, 2))(0x40L, 0x17L), 0x17L), 0x17L, 0x40L, 0x17L), // p_618->g_17
        0x1DL, // p_618->g_47
        &p_618->g_47, // p_618->g_46
        &p_618->g_46, // p_618->g_76
        {&p_618->g_76,&p_618->g_76,&p_618->g_76}, // p_618->g_75
        (VECTOR(uint64_t, 4))(0x31553368A3BAB648L, (VECTOR(uint64_t, 2))(0x31553368A3BAB648L, 18446744073709551613UL), 18446744073709551613UL), // p_618->g_100
        0x51DBC6B2L, // p_618->g_112
        &p_618->g_112, // p_618->g_111
        {2L,2L,2L}, // p_618->g_113
        0xC8A0L, // p_618->g_119
        {-1L,-9L,0x29A0L,-1L,4294967295UL,0x7599L,0xFC229ECF7F40F1A7L,-2L,0L}, // p_618->g_133
        0x27L, // p_618->g_143
        (-7L), // p_618->g_173
        0x46EDB045L, // p_618->g_180
        (VECTOR(int32_t, 8))(0x66D5E1E2L, (VECTOR(int32_t, 4))(0x66D5E1E2L, (VECTOR(int32_t, 2))(0x66D5E1E2L, 1L), 1L), 1L, 0x66D5E1E2L, 1L), // p_618->g_182
        (VECTOR(int8_t, 4))(0x63L, (VECTOR(int8_t, 2))(0x63L, 0x4EL), 0x4EL), // p_618->g_199
        1L, // p_618->g_216
        3L, // p_618->g_247
        (VECTOR(int32_t, 4))((-3L), (VECTOR(int32_t, 2))((-3L), (-6L)), (-6L)), // p_618->g_264
        &p_618->g_111, // p_618->g_268
        (VECTOR(int16_t, 2))(0L, 0L), // p_618->g_274
        (void*)0, // p_618->g_290
        &p_618->g_2, // p_618->g_291
        {{0x741DF27FL,0x45L,0x3E1CL,-1L,0x501B55A8L,0L,0x7D67424AEB1D1E02L,0L,1L},{0x741DF27FL,0x45L,0x3E1CL,-1L,0x501B55A8L,0L,0x7D67424AEB1D1E02L,0L,1L},{0x741DF27FL,0x45L,0x3E1CL,-1L,0x501B55A8L,0L,0x7D67424AEB1D1E02L,0L,1L},{0x741DF27FL,0x45L,0x3E1CL,-1L,0x501B55A8L,0L,0x7D67424AEB1D1E02L,0L,1L},{0x741DF27FL,0x45L,0x3E1CL,-1L,0x501B55A8L,0L,0x7D67424AEB1D1E02L,0L,1L},{0x741DF27FL,0x45L,0x3E1CL,-1L,0x501B55A8L,0L,0x7D67424AEB1D1E02L,0L,1L},{0x741DF27FL,0x45L,0x3E1CL,-1L,0x501B55A8L,0L,0x7D67424AEB1D1E02L,0L,1L}}, // p_618->g_294
        {{&p_618->g_294[2]},{&p_618->g_294[2]},{&p_618->g_294[2]},{&p_618->g_294[2]},{&p_618->g_294[2]},{&p_618->g_294[2]},{&p_618->g_294[2]},{&p_618->g_294[2]},{&p_618->g_294[2]}}, // p_618->g_293
        &p_618->g_294[2], // p_618->g_295
        {{1L,1L,1L,1L,1L,1L}}, // p_618->g_303
        &p_618->g_303[0][5], // p_618->g_302
        &p_618->g_302, // p_618->g_301
        1UL, // p_618->g_305
        (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x1FFA29DBL), 0x1FFA29DBL), 0x1FFA29DBL, 0L, 0x1FFA29DBL, (VECTOR(int32_t, 2))(0L, 0x1FFA29DBL), (VECTOR(int32_t, 2))(0L, 0x1FFA29DBL), 0L, 0x1FFA29DBL, 0L, 0x1FFA29DBL), // p_618->g_328
        (VECTOR(int32_t, 2))(0x2015469CL, 0L), // p_618->g_329
        (void*)0, // p_618->g_368
        &p_618->g_368, // p_618->g_367
        65531UL, // p_618->g_400
        8L, // p_618->g_402
        &p_618->g_294[2], // p_618->g_404
        (VECTOR(int8_t, 2))((-1L), (-5L)), // p_618->g_424
        (VECTOR(uint64_t, 16))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 0xB0B3BAEADB6F11A6L), 0xB0B3BAEADB6F11A6L), 0xB0B3BAEADB6F11A6L, 1UL, 0xB0B3BAEADB6F11A6L, (VECTOR(uint64_t, 2))(1UL, 0xB0B3BAEADB6F11A6L), (VECTOR(uint64_t, 2))(1UL, 0xB0B3BAEADB6F11A6L), 1UL, 0xB0B3BAEADB6F11A6L, 1UL, 0xB0B3BAEADB6F11A6L), // p_618->g_454
        (void*)0, // p_618->g_491
        (void*)0, // p_618->g_546
        {&p_618->g_294[1],&p_618->g_294[1]}, // p_618->g_547
        {&p_618->g_294[6],&p_618->g_294[6],&p_618->g_294[6],&p_618->g_294[6],&p_618->g_294[6],&p_618->g_294[6],&p_618->g_294[6],&p_618->g_294[6],&p_618->g_294[6],&p_618->g_294[6]}, // p_618->g_549
        0x4D7E49B52A1BE9BBL, // p_618->g_566
        (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x308210D8L), 0x308210D8L), 0x308210D8L, (-1L), 0x308210D8L), // p_618->g_572
        (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x364DB99BL), 0x364DB99BL), 0x364DB99BL, 0L, 0x364DB99BL), // p_618->g_573
        6UL, // p_618->g_597
        (VECTOR(int32_t, 2))(9L, 7L), // p_618->g_612
        (void*)0, // p_618->g_614
        sequence_input[get_global_id(0)], // p_618->global_0_offset
        sequence_input[get_global_id(1)], // p_618->global_1_offset
        sequence_input[get_global_id(2)], // p_618->global_2_offset
        sequence_input[get_local_id(0)], // p_618->local_0_offset
        sequence_input[get_local_id(1)], // p_618->local_1_offset
        sequence_input[get_local_id(2)], // p_618->local_2_offset
        sequence_input[get_group_id(0)], // p_618->group_0_offset
        sequence_input[get_group_id(1)], // p_618->group_1_offset
        sequence_input[get_group_id(2)], // p_618->group_2_offset
    };
    c_619 = c_620;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_618);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_618->g_2, "p_618->g_2", print_hash_value);
    transparent_crc(p_618->g_6.s0, "p_618->g_6.s0", print_hash_value);
    transparent_crc(p_618->g_6.s1, "p_618->g_6.s1", print_hash_value);
    transparent_crc(p_618->g_6.s2, "p_618->g_6.s2", print_hash_value);
    transparent_crc(p_618->g_6.s3, "p_618->g_6.s3", print_hash_value);
    transparent_crc(p_618->g_6.s4, "p_618->g_6.s4", print_hash_value);
    transparent_crc(p_618->g_6.s5, "p_618->g_6.s5", print_hash_value);
    transparent_crc(p_618->g_6.s6, "p_618->g_6.s6", print_hash_value);
    transparent_crc(p_618->g_6.s7, "p_618->g_6.s7", print_hash_value);
    transparent_crc(p_618->g_7.x, "p_618->g_7.x", print_hash_value);
    transparent_crc(p_618->g_7.y, "p_618->g_7.y", print_hash_value);
    transparent_crc(p_618->g_7.z, "p_618->g_7.z", print_hash_value);
    transparent_crc(p_618->g_7.w, "p_618->g_7.w", print_hash_value);
    transparent_crc(p_618->g_9.s0, "p_618->g_9.s0", print_hash_value);
    transparent_crc(p_618->g_9.s1, "p_618->g_9.s1", print_hash_value);
    transparent_crc(p_618->g_9.s2, "p_618->g_9.s2", print_hash_value);
    transparent_crc(p_618->g_9.s3, "p_618->g_9.s3", print_hash_value);
    transparent_crc(p_618->g_9.s4, "p_618->g_9.s4", print_hash_value);
    transparent_crc(p_618->g_9.s5, "p_618->g_9.s5", print_hash_value);
    transparent_crc(p_618->g_9.s6, "p_618->g_9.s6", print_hash_value);
    transparent_crc(p_618->g_9.s7, "p_618->g_9.s7", print_hash_value);
    transparent_crc(p_618->g_10.x, "p_618->g_10.x", print_hash_value);
    transparent_crc(p_618->g_10.y, "p_618->g_10.y", print_hash_value);
    transparent_crc(p_618->g_10.z, "p_618->g_10.z", print_hash_value);
    transparent_crc(p_618->g_10.w, "p_618->g_10.w", print_hash_value);
    transparent_crc(p_618->g_17.s0, "p_618->g_17.s0", print_hash_value);
    transparent_crc(p_618->g_17.s1, "p_618->g_17.s1", print_hash_value);
    transparent_crc(p_618->g_17.s2, "p_618->g_17.s2", print_hash_value);
    transparent_crc(p_618->g_17.s3, "p_618->g_17.s3", print_hash_value);
    transparent_crc(p_618->g_17.s4, "p_618->g_17.s4", print_hash_value);
    transparent_crc(p_618->g_17.s5, "p_618->g_17.s5", print_hash_value);
    transparent_crc(p_618->g_17.s6, "p_618->g_17.s6", print_hash_value);
    transparent_crc(p_618->g_17.s7, "p_618->g_17.s7", print_hash_value);
    transparent_crc(p_618->g_47, "p_618->g_47", print_hash_value);
    transparent_crc(p_618->g_100.x, "p_618->g_100.x", print_hash_value);
    transparent_crc(p_618->g_100.y, "p_618->g_100.y", print_hash_value);
    transparent_crc(p_618->g_100.z, "p_618->g_100.z", print_hash_value);
    transparent_crc(p_618->g_100.w, "p_618->g_100.w", print_hash_value);
    transparent_crc(p_618->g_112, "p_618->g_112", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_618->g_113[i], "p_618->g_113[i]", print_hash_value);

    }
    transparent_crc(p_618->g_119, "p_618->g_119", print_hash_value);
    transparent_crc(p_618->g_133.f0, "p_618->g_133.f0", print_hash_value);
    transparent_crc(p_618->g_133.f1, "p_618->g_133.f1", print_hash_value);
    transparent_crc(p_618->g_133.f2, "p_618->g_133.f2", print_hash_value);
    transparent_crc(p_618->g_133.f3, "p_618->g_133.f3", print_hash_value);
    transparent_crc(p_618->g_133.f4, "p_618->g_133.f4", print_hash_value);
    transparent_crc(p_618->g_133.f5, "p_618->g_133.f5", print_hash_value);
    transparent_crc(p_618->g_133.f6, "p_618->g_133.f6", print_hash_value);
    transparent_crc(p_618->g_133.f7, "p_618->g_133.f7", print_hash_value);
    transparent_crc(p_618->g_133.f8, "p_618->g_133.f8", print_hash_value);
    transparent_crc(p_618->g_143, "p_618->g_143", print_hash_value);
    transparent_crc(p_618->g_173, "p_618->g_173", print_hash_value);
    transparent_crc(p_618->g_180, "p_618->g_180", print_hash_value);
    transparent_crc(p_618->g_182.s0, "p_618->g_182.s0", print_hash_value);
    transparent_crc(p_618->g_182.s1, "p_618->g_182.s1", print_hash_value);
    transparent_crc(p_618->g_182.s2, "p_618->g_182.s2", print_hash_value);
    transparent_crc(p_618->g_182.s3, "p_618->g_182.s3", print_hash_value);
    transparent_crc(p_618->g_182.s4, "p_618->g_182.s4", print_hash_value);
    transparent_crc(p_618->g_182.s5, "p_618->g_182.s5", print_hash_value);
    transparent_crc(p_618->g_182.s6, "p_618->g_182.s6", print_hash_value);
    transparent_crc(p_618->g_182.s7, "p_618->g_182.s7", print_hash_value);
    transparent_crc(p_618->g_199.x, "p_618->g_199.x", print_hash_value);
    transparent_crc(p_618->g_199.y, "p_618->g_199.y", print_hash_value);
    transparent_crc(p_618->g_199.z, "p_618->g_199.z", print_hash_value);
    transparent_crc(p_618->g_199.w, "p_618->g_199.w", print_hash_value);
    transparent_crc(p_618->g_216, "p_618->g_216", print_hash_value);
    transparent_crc(p_618->g_247, "p_618->g_247", print_hash_value);
    transparent_crc(p_618->g_264.x, "p_618->g_264.x", print_hash_value);
    transparent_crc(p_618->g_264.y, "p_618->g_264.y", print_hash_value);
    transparent_crc(p_618->g_264.z, "p_618->g_264.z", print_hash_value);
    transparent_crc(p_618->g_264.w, "p_618->g_264.w", print_hash_value);
    transparent_crc(p_618->g_274.x, "p_618->g_274.x", print_hash_value);
    transparent_crc(p_618->g_274.y, "p_618->g_274.y", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_618->g_294[i].f0, "p_618->g_294[i].f0", print_hash_value);
        transparent_crc(p_618->g_294[i].f1, "p_618->g_294[i].f1", print_hash_value);
        transparent_crc(p_618->g_294[i].f2, "p_618->g_294[i].f2", print_hash_value);
        transparent_crc(p_618->g_294[i].f3, "p_618->g_294[i].f3", print_hash_value);
        transparent_crc(p_618->g_294[i].f4, "p_618->g_294[i].f4", print_hash_value);
        transparent_crc(p_618->g_294[i].f5, "p_618->g_294[i].f5", print_hash_value);
        transparent_crc(p_618->g_294[i].f6, "p_618->g_294[i].f6", print_hash_value);
        transparent_crc(p_618->g_294[i].f7, "p_618->g_294[i].f7", print_hash_value);
        transparent_crc(p_618->g_294[i].f8, "p_618->g_294[i].f8", print_hash_value);

    }
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 6; j++)
        {
            transparent_crc(p_618->g_303[i][j], "p_618->g_303[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_618->g_305, "p_618->g_305", print_hash_value);
    transparent_crc(p_618->g_328.s0, "p_618->g_328.s0", print_hash_value);
    transparent_crc(p_618->g_328.s1, "p_618->g_328.s1", print_hash_value);
    transparent_crc(p_618->g_328.s2, "p_618->g_328.s2", print_hash_value);
    transparent_crc(p_618->g_328.s3, "p_618->g_328.s3", print_hash_value);
    transparent_crc(p_618->g_328.s4, "p_618->g_328.s4", print_hash_value);
    transparent_crc(p_618->g_328.s5, "p_618->g_328.s5", print_hash_value);
    transparent_crc(p_618->g_328.s6, "p_618->g_328.s6", print_hash_value);
    transparent_crc(p_618->g_328.s7, "p_618->g_328.s7", print_hash_value);
    transparent_crc(p_618->g_328.s8, "p_618->g_328.s8", print_hash_value);
    transparent_crc(p_618->g_328.s9, "p_618->g_328.s9", print_hash_value);
    transparent_crc(p_618->g_328.sa, "p_618->g_328.sa", print_hash_value);
    transparent_crc(p_618->g_328.sb, "p_618->g_328.sb", print_hash_value);
    transparent_crc(p_618->g_328.sc, "p_618->g_328.sc", print_hash_value);
    transparent_crc(p_618->g_328.sd, "p_618->g_328.sd", print_hash_value);
    transparent_crc(p_618->g_328.se, "p_618->g_328.se", print_hash_value);
    transparent_crc(p_618->g_328.sf, "p_618->g_328.sf", print_hash_value);
    transparent_crc(p_618->g_329.x, "p_618->g_329.x", print_hash_value);
    transparent_crc(p_618->g_329.y, "p_618->g_329.y", print_hash_value);
    transparent_crc(p_618->g_400, "p_618->g_400", print_hash_value);
    transparent_crc(p_618->g_402, "p_618->g_402", print_hash_value);
    transparent_crc(p_618->g_424.x, "p_618->g_424.x", print_hash_value);
    transparent_crc(p_618->g_424.y, "p_618->g_424.y", print_hash_value);
    transparent_crc(p_618->g_454.s0, "p_618->g_454.s0", print_hash_value);
    transparent_crc(p_618->g_454.s1, "p_618->g_454.s1", print_hash_value);
    transparent_crc(p_618->g_454.s2, "p_618->g_454.s2", print_hash_value);
    transparent_crc(p_618->g_454.s3, "p_618->g_454.s3", print_hash_value);
    transparent_crc(p_618->g_454.s4, "p_618->g_454.s4", print_hash_value);
    transparent_crc(p_618->g_454.s5, "p_618->g_454.s5", print_hash_value);
    transparent_crc(p_618->g_454.s6, "p_618->g_454.s6", print_hash_value);
    transparent_crc(p_618->g_454.s7, "p_618->g_454.s7", print_hash_value);
    transparent_crc(p_618->g_454.s8, "p_618->g_454.s8", print_hash_value);
    transparent_crc(p_618->g_454.s9, "p_618->g_454.s9", print_hash_value);
    transparent_crc(p_618->g_454.sa, "p_618->g_454.sa", print_hash_value);
    transparent_crc(p_618->g_454.sb, "p_618->g_454.sb", print_hash_value);
    transparent_crc(p_618->g_454.sc, "p_618->g_454.sc", print_hash_value);
    transparent_crc(p_618->g_454.sd, "p_618->g_454.sd", print_hash_value);
    transparent_crc(p_618->g_454.se, "p_618->g_454.se", print_hash_value);
    transparent_crc(p_618->g_454.sf, "p_618->g_454.sf", print_hash_value);
    transparent_crc(p_618->g_566, "p_618->g_566", print_hash_value);
    transparent_crc(p_618->g_572.s0, "p_618->g_572.s0", print_hash_value);
    transparent_crc(p_618->g_572.s1, "p_618->g_572.s1", print_hash_value);
    transparent_crc(p_618->g_572.s2, "p_618->g_572.s2", print_hash_value);
    transparent_crc(p_618->g_572.s3, "p_618->g_572.s3", print_hash_value);
    transparent_crc(p_618->g_572.s4, "p_618->g_572.s4", print_hash_value);
    transparent_crc(p_618->g_572.s5, "p_618->g_572.s5", print_hash_value);
    transparent_crc(p_618->g_572.s6, "p_618->g_572.s6", print_hash_value);
    transparent_crc(p_618->g_572.s7, "p_618->g_572.s7", print_hash_value);
    transparent_crc(p_618->g_573.s0, "p_618->g_573.s0", print_hash_value);
    transparent_crc(p_618->g_573.s1, "p_618->g_573.s1", print_hash_value);
    transparent_crc(p_618->g_573.s2, "p_618->g_573.s2", print_hash_value);
    transparent_crc(p_618->g_573.s3, "p_618->g_573.s3", print_hash_value);
    transparent_crc(p_618->g_573.s4, "p_618->g_573.s4", print_hash_value);
    transparent_crc(p_618->g_573.s5, "p_618->g_573.s5", print_hash_value);
    transparent_crc(p_618->g_573.s6, "p_618->g_573.s6", print_hash_value);
    transparent_crc(p_618->g_573.s7, "p_618->g_573.s7", print_hash_value);
    transparent_crc(p_618->g_597, "p_618->g_597", print_hash_value);
    transparent_crc(p_618->g_612.x, "p_618->g_612.x", print_hash_value);
    transparent_crc(p_618->g_612.y, "p_618->g_612.y", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
