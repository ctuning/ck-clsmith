// ---fake_divergence -g 13,63,5 -l 13,7,1
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


// Seed: 116

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   uint32_t  f0;
};

union U1 {
   int32_t  f0;
   int8_t  f1;
   volatile int8_t * f2;
};

union U2 {
   int8_t * f0;
   int32_t  f1;
   int8_t * f2;
   uint32_t  f3;
   int16_t  f4;
};

struct S3 {
    volatile int8_t g_3;
    volatile int8_t * volatile g_2;
    uint8_t g_5;
    int8_t g_22;
    int8_t *g_21;
    int32_t g_24;
    int32_t *g_36;
    volatile VECTOR(uint16_t, 4) g_45;
    volatile VECTOR(uint16_t, 8) g_47;
    volatile VECTOR(uint16_t, 16) g_49;
    volatile VECTOR(int16_t, 2) g_51;
    int32_t g_56;
    int32_t * volatile g_55;
    int32_t *g_93;
    int32_t ** volatile g_92;
    volatile union U1 g_98;
    volatile int32_t g_104;
    uint16_t g_105;
    union U1 g_110;
    int32_t ** volatile g_111;
    volatile uint32_t g_120;
    int32_t g_136;
    volatile int32_t g_154;
    int32_t g_159;
    volatile int32_t g_160;
    int16_t g_161[8][1];
    volatile int64_t g_162;
    int32_t g_163;
    volatile uint32_t g_164;
    volatile uint64_t g_200;
    int32_t ** volatile g_206;
    uint32_t g_211;
    uint64_t g_224[5];
    union U2 g_228;
    volatile uint32_t g_234[3];
    VECTOR(uint32_t, 4) g_241;
    uint8_t *g_249;
    int64_t g_262;
    VECTOR(uint16_t, 4) g_263;
    VECTOR(int64_t, 16) g_264;
    volatile VECTOR(uint32_t, 4) g_280;
    volatile VECTOR(uint64_t, 4) g_282;
    int32_t ** volatile g_304;
    int32_t ** volatile g_305;
    int32_t **g_308[6][7][6];
    int32_t *** volatile g_307;
    int16_t *g_310[3];
    int16_t ** volatile g_309;
    volatile uint32_t g_323;
    volatile uint32_t *g_338;
    volatile uint32_t **g_337;
    volatile uint32_t ** volatile * volatile g_336;
    union U2 **g_359;
    union U2 *** volatile g_358;
    volatile VECTOR(uint8_t, 8) g_360;
    VECTOR(uint8_t, 16) g_362;
    union U1 g_394[9];
    union U1 *g_393[8][6];
    union U1 ** volatile g_392;
    int32_t * volatile g_401;
    VECTOR(int16_t, 8) g_423;
    int16_t g_428;
    int32_t ** volatile g_429[1][4];
    int32_t ** volatile g_430;
    union U0 g_431;
    int32_t g_465;
    volatile VECTOR(uint16_t, 2) g_500;
    volatile VECTOR(uint16_t, 2) g_509;
    VECTOR(int16_t, 4) g_536;
    union U0 *g_591;
    union U0 ** volatile g_590;
    uint32_t g_597;
    VECTOR(uint64_t, 4) g_614;
    union U2 * volatile g_616;
    union U2 * volatile *g_615;
    volatile VECTOR(int32_t, 2) g_626;
    VECTOR(int32_t, 8) g_627;
    VECTOR(int8_t, 4) g_632;
    VECTOR(uint8_t, 2) g_676;
    VECTOR(uint8_t, 4) g_677;
    union U0 ** volatile g_731;
    int32_t *g_733;
    uint16_t *g_745[3];
    uint16_t *g_746[2][9];
    VECTOR(int32_t, 8) g_751;
    VECTOR(int8_t, 16) g_775;
    VECTOR(uint32_t, 16) g_779;
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
int32_t  func_1(struct S3 * p_795);
int32_t  func_6(union U0  p_7, uint16_t  p_8, uint32_t  p_9, struct S3 * p_795);
union U0  func_10(int8_t * p_11, struct S3 * p_795);
int8_t * func_12(int32_t * p_13, int8_t * p_14, struct S3 * p_795);
int32_t * func_15(int8_t * p_16, int32_t  p_17, uint64_t  p_18, int32_t * p_19, int16_t  p_20, struct S3 * p_795);
int32_t * func_26(union U2  p_27, int32_t  p_28, int64_t  p_29, int16_t  p_30, struct S3 * p_795);
union U2  func_31(int32_t * p_32, int32_t * p_33, int32_t  p_34, union U0  p_35, struct S3 * p_795);
int32_t * func_37(int32_t * p_38, uint32_t  p_39, uint16_t  p_40, int8_t * p_41, int8_t * p_42, struct S3 * p_795);
int16_t  func_52(int32_t * p_53, struct S3 * p_795);
int32_t * func_59(int16_t  p_60, int32_t * p_61, int8_t * p_62, uint8_t  p_63, int32_t * p_64, struct S3 * p_795);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_795->g_2 p_795->g_21 p_795->g_36 p_795->g_3 p_795->g_45 p_795->g_47 p_795->g_49 p_795->g_51 p_795->g_55 p_795->g_5 p_795->g_22 p_795->g_92 p_795->g_98 p_795->g_105 p_795->g_93 p_795->g_110 p_795->g_111 p_795->g_120 p_795->g_56 p_795->g_164 p_795->g_136 p_795->g_234 p_795->g_241 p_795->g_263 p_795->g_264 p_795->g_110.f0 p_795->g_224 p_795->g_161 p_795->g_211 p_795->g_280 p_795->g_282 p_795->g_249 p_795->g_305 p_795->g_307 p_795->g_309 p_795->g_323 p_795->g_336 p_795->g_206 p_795->g_358 p_795->g_360 p_795->g_362 p_795->g_154 p_795->g_359 p_795->g_392 p_795->g_310 p_795->g_401 p_795->g_228 p_795->g_423 p_795->g_428 p_795->g_430 p_795->g_431 p_795->g_262 p_795->g_500 p_795->g_509 p_795->g_536 p_795->g_160 p_795->g_159 p_795->g_465 p_795->g_590 p_795->g_163 p_795->g_597 p_795->g_614 p_795->g_200 p_795->g_632 p_795->g_676 p_795->g_677 p_795->g_733 p_795->g_775 p_795->g_779 p_795->g_591 p_795->g_627 p_795->g_751
 * writes: p_795->g_5 p_795->g_24 p_795->g_56 p_795->g_22 p_795->g_93 p_795->g_105 p_795->g_120 p_795->g_136 p_795->g_164 p_795->g_234 p_795->g_249 p_795->g_262 p_795->g_211 p_795->g_224 p_795->g_308 p_795->g_323 p_795->g_359 p_795->g_110.f0 p_795->g_393 p_795->g_161 p_795->g_264 p_795->g_428 p_795->g_159 p_795->g_465 p_795->g_591 p_795->g_163 p_795->g_597 p_795->g_362 p_795->g_751
 */
int32_t  func_1(struct S3 * p_795)
{ /* block id: 4 */
    int32_t *l_4 = (void*)0;
    int32_t *l_23 = &p_795->g_24;
    int32_t l_25 = 0x3D7F1912L;
    VECTOR(uint16_t, 4) l_46 = (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0x4A3AL), 0x4A3AL);
    VECTOR(uint16_t, 8) l_48 = (VECTOR(uint16_t, 8))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 1UL), 1UL), 1UL, 65535UL, 1UL);
    VECTOR(int16_t, 4) l_50 = (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x2F72L), 0x2F72L);
    int8_t *l_57 = &p_795->g_22;
    int32_t *l_792 = (void*)0;
    int32_t *l_793[4][9][2] = {{{(void*)0,&l_25},{(void*)0,&l_25},{(void*)0,&l_25},{(void*)0,&l_25},{(void*)0,&l_25},{(void*)0,&l_25},{(void*)0,&l_25},{(void*)0,&l_25},{(void*)0,&l_25}},{{(void*)0,&l_25},{(void*)0,&l_25},{(void*)0,&l_25},{(void*)0,&l_25},{(void*)0,&l_25},{(void*)0,&l_25},{(void*)0,&l_25},{(void*)0,&l_25},{(void*)0,&l_25}},{{(void*)0,&l_25},{(void*)0,&l_25},{(void*)0,&l_25},{(void*)0,&l_25},{(void*)0,&l_25},{(void*)0,&l_25},{(void*)0,&l_25},{(void*)0,&l_25},{(void*)0,&l_25}},{{(void*)0,&l_25},{(void*)0,&l_25},{(void*)0,&l_25},{(void*)0,&l_25},{(void*)0,&l_25},{(void*)0,&l_25},{(void*)0,&l_25},{(void*)0,&l_25},{(void*)0,&l_25}}};
    uint64_t l_794 = 0xF45D99436360DA24L;
    int i, j, k;
    p_795->g_5 = (p_795->g_2 != (void*)0);
    p_795->g_751.s5 &= func_6(func_10(func_12(func_15(p_795->g_21, ((*l_23) = (-8L)), l_25, (l_4 = func_26(func_31(p_795->g_36, func_37(p_795->g_36, (!(((safe_lshift_func_uint16_t_u_u(((VECTOR(uint16_t, 8))(0x7D6CL, (p_795->g_3 , ((VECTOR(uint16_t, 2))(p_795->g_45.xy)).even), FAKE_DIVERGE(p_795->group_2_offset, get_group_id(2), 10), ((VECTOR(uint16_t, 4))(mad_sat(((VECTOR(uint16_t, 2))(add_sat(((VECTOR(uint16_t, 16))(hadd(((VECTOR(uint16_t, 4))(mad_sat(((VECTOR(uint16_t, 2))(hadd(((VECTOR(uint16_t, 4))(abs_diff(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(l_46.zywy)).xxyxyxxwxyzwywyy)).s0e)).yyxx, ((VECTOR(uint16_t, 2))(0UL, 1UL)).xyyy))).odd, ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(p_795->g_47.s4106)).wxwzyxzwwyyyxxxx)).sb3))).yyyy, ((VECTOR(uint16_t, 4))(rotate(((VECTOR(uint16_t, 16))(mul_hi(((VECTOR(uint16_t, 4))(sub_sat(((VECTOR(uint16_t, 8))(l_48.s07156237)).hi, ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(p_795->g_49.s7903)).xyyywwzz)).even))).xwxzzywzwwzwzwzy, ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 2))(0x68D2L, 0xC173L)))).yyxyyxxxxxxxxxxx))).s2455, ((VECTOR(uint16_t, 4))(abs_diff(((VECTOR(int16_t, 4))(rhadd(((VECTOR(int16_t, 8))(l_50.yyxxwwxy)).even, ((VECTOR(int16_t, 2))(min(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 16))(mul_hi(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 2),((VECTOR(int16_t, 16))(p_795->g_51.yxyxxyxyxxxyxxyy)).s3b, ((VECTOR(int16_t, 16))(rhadd(((VECTOR(int16_t, 16))((-4L), func_52(p_795->g_36, p_795), 0x4A89L, (-1L), 0x6429L, (-6L), ((VECTOR(int16_t, 4))(7L)), ((VECTOR(int16_t, 4))(0x73E6L)), 0x4D86L, 0x11BFL)), ((VECTOR(int16_t, 16))(6L))))).sf0, ((VECTOR(int16_t, 2))((-1L)))))), 0x4BABL, ((VECTOR(int16_t, 8))(0x7A52L)), p_795->g_5, 0x09EDL, (-1L), 0x19B5L, (-1L))), ((VECTOR(int16_t, 16))(1L))))))).s63, (int16_t)p_795->g_51.x))).yyxy))), ((VECTOR(int16_t, 4))(0L)))))))), ((VECTOR(uint16_t, 4))(65526UL))))).zzxzzxzzzxzxyyxx, ((VECTOR(uint16_t, 16))(65535UL))))).scc, ((VECTOR(uint16_t, 2))(0x853DL))))).yxxx, ((VECTOR(uint16_t, 4))(0x5F07L)), ((VECTOR(uint16_t, 4))(0xF97EL))))), 65535UL)).s5, FAKE_DIVERGE(p_795->local_2_offset, get_local_id(2), 10))) | p_795->g_22) ^ l_50.z)), l_46.w, l_57, &p_795->g_22, p_795), p_795->g_241.z, p_795->g_431, p_795), l_25, p_795->g_677.y, l_46.y, p_795)), l_48.s1, p_795), p_795->g_21, p_795), p_795), l_50.w, p_795->g_627.s0, p_795);
    return l_794;
}


/* ------------------------------------------ */
/* 
 * reads : p_795->g_733 p_795->g_56
 * writes: p_795->g_56
 */
int32_t  func_6(union U0  p_7, uint16_t  p_8, uint32_t  p_9, struct S3 * p_795)
{ /* block id: 312 */
    int32_t *l_785[3][9][2] = {{{&p_795->g_56,&p_795->g_56},{&p_795->g_56,&p_795->g_56},{&p_795->g_56,&p_795->g_56},{&p_795->g_56,&p_795->g_56},{&p_795->g_56,&p_795->g_56},{&p_795->g_56,&p_795->g_56},{&p_795->g_56,&p_795->g_56},{&p_795->g_56,&p_795->g_56},{&p_795->g_56,&p_795->g_56}},{{&p_795->g_56,&p_795->g_56},{&p_795->g_56,&p_795->g_56},{&p_795->g_56,&p_795->g_56},{&p_795->g_56,&p_795->g_56},{&p_795->g_56,&p_795->g_56},{&p_795->g_56,&p_795->g_56},{&p_795->g_56,&p_795->g_56},{&p_795->g_56,&p_795->g_56},{&p_795->g_56,&p_795->g_56}},{{&p_795->g_56,&p_795->g_56},{&p_795->g_56,&p_795->g_56},{&p_795->g_56,&p_795->g_56},{&p_795->g_56,&p_795->g_56},{&p_795->g_56,&p_795->g_56},{&p_795->g_56,&p_795->g_56},{&p_795->g_56,&p_795->g_56},{&p_795->g_56,&p_795->g_56},{&p_795->g_56,&p_795->g_56}}};
    int16_t l_786 = 0L;
    uint32_t l_787 = 1UL;
    VECTOR(int32_t, 2) l_790 = (VECTOR(int32_t, 2))(0x5A549E39L, 0L);
    int8_t l_791[5][9][4] = {{{0x75L,0x75L,0L,0x7EL},{0x75L,0x75L,0L,0x7EL},{0x75L,0x75L,0L,0x7EL},{0x75L,0x75L,0L,0x7EL},{0x75L,0x75L,0L,0x7EL},{0x75L,0x75L,0L,0x7EL},{0x75L,0x75L,0L,0x7EL},{0x75L,0x75L,0L,0x7EL},{0x75L,0x75L,0L,0x7EL}},{{0x75L,0x75L,0L,0x7EL},{0x75L,0x75L,0L,0x7EL},{0x75L,0x75L,0L,0x7EL},{0x75L,0x75L,0L,0x7EL},{0x75L,0x75L,0L,0x7EL},{0x75L,0x75L,0L,0x7EL},{0x75L,0x75L,0L,0x7EL},{0x75L,0x75L,0L,0x7EL},{0x75L,0x75L,0L,0x7EL}},{{0x75L,0x75L,0L,0x7EL},{0x75L,0x75L,0L,0x7EL},{0x75L,0x75L,0L,0x7EL},{0x75L,0x75L,0L,0x7EL},{0x75L,0x75L,0L,0x7EL},{0x75L,0x75L,0L,0x7EL},{0x75L,0x75L,0L,0x7EL},{0x75L,0x75L,0L,0x7EL},{0x75L,0x75L,0L,0x7EL}},{{0x75L,0x75L,0L,0x7EL},{0x75L,0x75L,0L,0x7EL},{0x75L,0x75L,0L,0x7EL},{0x75L,0x75L,0L,0x7EL},{0x75L,0x75L,0L,0x7EL},{0x75L,0x75L,0L,0x7EL},{0x75L,0x75L,0L,0x7EL},{0x75L,0x75L,0L,0x7EL},{0x75L,0x75L,0L,0x7EL}},{{0x75L,0x75L,0L,0x7EL},{0x75L,0x75L,0L,0x7EL},{0x75L,0x75L,0L,0x7EL},{0x75L,0x75L,0L,0x7EL},{0x75L,0x75L,0L,0x7EL},{0x75L,0x75L,0L,0x7EL},{0x75L,0x75L,0L,0x7EL},{0x75L,0x75L,0L,0x7EL},{0x75L,0x75L,0L,0x7EL}}};
    int i, j, k;
    l_787++;
    (*p_795->g_733) |= ((VECTOR(int32_t, 4))(l_790.yyyx)).z;
    return l_791[0][8][1];
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
union U0  func_10(int8_t * p_11, struct S3 * p_795)
{ /* block id: 310 */
    union U0 l_784 = {1UL};
    return l_784;
}


/* ------------------------------------------ */
/* 
 * reads : p_795->g_163 p_795->g_632 p_795->g_56 p_795->g_733 p_795->g_2 p_795->g_3 p_795->g_249 p_795->g_5 p_795->g_775 p_795->g_779 p_795->g_590 p_795->g_591 p_795->g_597 p_795->g_21
 * writes: p_795->g_163 p_795->g_56 p_795->g_5 p_795->g_597 p_795->g_22
 */
int8_t * func_12(int32_t * p_13, int8_t * p_14, struct S3 * p_795)
{ /* block id: 288 */
    union U1 *l_739 = &p_795->g_394[0];
    VECTOR(int32_t, 4) l_742 = (VECTOR(int32_t, 4))(0x61A0ECA6L, (VECTOR(int32_t, 2))(0x61A0ECA6L, (-1L)), (-1L));
    uint16_t *l_743[2][6] = {{(void*)0,&p_795->g_105,(void*)0,(void*)0,&p_795->g_105,(void*)0},{(void*)0,&p_795->g_105,(void*)0,(void*)0,&p_795->g_105,(void*)0}};
    int32_t l_757 = 0x5533BA64L;
    int32_t l_758 = 0L;
    union U0 **l_772 = &p_795->g_591;
    VECTOR(int8_t, 8) l_776 = (VECTOR(int8_t, 8))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0L), 0L), 0L, 0L, 0L);
    VECTOR(int32_t, 4) l_780 = (VECTOR(int32_t, 4))(0x23DE5477L, (VECTOR(int32_t, 2))(0x23DE5477L, (-1L)), (-1L));
    uint32_t *l_781 = (void*)0;
    uint32_t *l_782 = &p_795->g_597;
    int8_t l_783 = 0x68L;
    int i, j;
    for (p_795->g_163 = (-15); (p_795->g_163 < 7); ++p_795->g_163)
    { /* block id: 291 */
        union U0 l_738 = {4294967295UL};
        uint16_t **l_744[5][6] = {{(void*)0,&l_743[1][0],&l_743[1][0],&l_743[0][1],&l_743[1][5],(void*)0},{(void*)0,&l_743[1][0],&l_743[1][0],&l_743[0][1],&l_743[1][5],(void*)0},{(void*)0,&l_743[1][0],&l_743[1][0],&l_743[0][1],&l_743[1][5],(void*)0},{(void*)0,&l_743[1][0],&l_743[1][0],&l_743[0][1],&l_743[1][5],(void*)0},{(void*)0,&l_743[1][0],&l_743[1][0],&l_743[0][1],&l_743[1][5],(void*)0}};
        uint32_t *l_747[1][10];
        int32_t l_748[1][4][8] = {{{(-6L),0x0A85053EL,0L,0L,0L,0x0A85053EL,(-6L),0x2C502729L},{(-6L),0x0A85053EL,0L,0L,0L,0x0A85053EL,(-6L),0x2C502729L},{(-6L),0x0A85053EL,0L,0L,0L,0x0A85053EL,(-6L),0x2C502729L},{(-6L),0x0A85053EL,0L,0L,0L,0x0A85053EL,(-6L),0x2C502729L}}};
        int64_t *l_754[1];
        uint8_t l_755 = 0x18L;
        int32_t *l_756[9][4][1];
        int i, j, k;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 10; j++)
                l_747[i][j] = &l_738.f0;
        }
        for (i = 0; i < 1; i++)
            l_754[i] = &p_795->g_262;
        for (i = 0; i < 9; i++)
        {
            for (j = 0; j < 4; j++)
            {
                for (k = 0; k < 1; k++)
                    l_756[i][j][k] = (void*)0;
            }
        }
        l_758 |= (safe_mod_func_int32_t_s_s((l_738 , (((void*)0 != l_739) , (l_757 &= ((VECTOR(int32_t, 8))((safe_add_func_uint32_t_u_u(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 16))(abs_diff(((VECTOR(uint32_t, 4))(add_sat(((VECTOR(uint32_t, 2))(abs_diff(((VECTOR(int32_t, 16))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 16))(l_742.wwxyxwyxxzzzwwww)), ((VECTOR(int32_t, 4))((((((p_795->g_745[2] = l_743[1][0]) != (p_795->g_746[1][7] = &p_795->g_105)) != l_742.y) , (p_795->g_431.f0++)) , ((*p_13) = ((VECTOR(int32_t, 4))(p_795->g_751.s0003)).z)), ((safe_sub_func_uint8_t_u_u((p_795->g_49.s4 ^ (l_755 = (l_748[0][3][7] , (((p_13 == (void*)0) || p_795->g_211) < 252UL)))), 248UL)) == 0x1BL), 0x1F238434L, 5L)).ywwzzxyxyxxyyyxy))).s47, ((VECTOR(int32_t, 2))(1L))))).yyxx, ((VECTOR(uint32_t, 4))(4294967295UL))))).xyyyxyxyxxzywwxw, ((VECTOR(uint32_t, 16))(0UL))))).s50)).yyyxxxyxyyyyxxxx)).sd, 0UL)), ((VECTOR(int32_t, 2))(0x50C93D9CL)), 1L, (-4L), 0x509E337CL, 0L, 4L)).s3))), p_795->g_632.w));
        (*p_13) &= (safe_unary_minus_func_int8_t_s((+(-1L))));
        l_757 ^= ((*p_795->g_733) = (-1L));
    }
    l_783 &= (l_757 ^= (safe_mul_func_uint16_t_u_u((safe_mul_func_int8_t_s_s(((VECTOR(int8_t, 16))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 16),((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 16))((safe_div_func_int8_t_s_s((*p_795->g_2), (*p_795->g_249))), (((*p_795->g_249) = l_758) || (safe_add_func_int8_t_s_s((safe_lshift_func_uint8_t_u_u((safe_lshift_func_uint8_t_u_u((l_772 == (((safe_mod_func_int8_t_s_s(((*p_795->g_21) = ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 2))(rhadd(((VECTOR(int8_t, 2))(p_795->g_775.s1b)), ((VECTOR(int8_t, 2))(l_776.s62))))))).yxyxyxyy)).s2, (safe_sub_func_int32_t_s_s(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))((-1L), 0x5BE13DBDL)).xyyyyxyyyyyxyxyx)).s36)).even, ((VECTOR(uint32_t, 16))(0x3B0D70FEL, ((VECTOR(uint32_t, 4))(p_795->g_779.sb48e)), (0x37EB54A6L != ((*p_795->g_733) = ((VECTOR(int32_t, 2))(l_780.zy)).lo)), l_742.y, 0x511356C2L, ((*l_782) &= ((7L ^ ((VECTOR(uint32_t, 8))(((*p_795->g_590) == &p_795->g_431), ((VECTOR(uint32_t, 2))(0xBEF2BA95L)), GROUP_DIVERGE(1, 1), ((VECTOR(uint32_t, 4))(0xED9139A9L)))).s7) <= l_776.s4)), ((VECTOR(uint32_t, 2))(0x643FF598L)), ((VECTOR(uint32_t, 2))(4294967295UL)), 4294967295UL, 0xA911CE64L, 7UL)).s0)), ((VECTOR(int8_t, 4))(0L)), 0x76L, 1L, 0x56L, 0x73L, ((VECTOR(int8_t, 4))((-1L))), 1L, 0x1CL)).s7), (*p_795->g_249))) , (-1L)) , (void*)0)), 7)), (*p_795->g_249))), 0UL))), (-4L), 0x07L, 0x2EL, ((VECTOR(int8_t, 2))(0x64L)), ((VECTOR(int8_t, 4))(0x19L)), ((VECTOR(int8_t, 4))(0x2CL)), 1L)).sa3)).xyxxxxyxxyxyyxyx)), ((VECTOR(int8_t, 16))(1L)), ((VECTOR(int8_t, 16))((-8L)))))).sf, l_776.s3)), l_758)));
    return p_14;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t * func_15(int8_t * p_16, int32_t  p_17, uint64_t  p_18, int32_t * p_19, int16_t  p_20, struct S3 * p_795)
{ /* block id: 286 */
    return p_19;
}


/* ------------------------------------------ */
/* 
 * reads : p_795->g_56 p_795->g_733
 * writes: p_795->g_56 p_795->g_591
 */
int32_t * func_26(union U2  p_27, int32_t  p_28, int64_t  p_29, int16_t  p_30, struct S3 * p_795)
{ /* block id: 281 */
    int8_t l_728 = (-3L);
    int32_t *l_729 = &p_795->g_56;
    union U0 *l_730 = &p_795->g_431;
    union U0 **l_732 = &p_795->g_591;
    (*l_729) |= l_728;
    (*l_732) = l_730;
    return p_795->g_733;
}


/* ------------------------------------------ */
/* 
 * reads : p_795->g_92 p_795->g_93 p_795->g_262 p_795->g_249 p_795->g_5 p_795->g_500 p_795->g_154 p_795->g_509 p_795->g_280 p_795->g_428 p_795->g_536 p_795->g_21 p_795->g_22 p_795->g_160 p_795->g_105 p_795->g_159 p_795->g_309 p_795->g_310 p_795->g_161 p_795->g_224 p_795->g_55 p_795->g_430 p_795->g_465 p_795->g_590 p_795->g_56 p_795->g_163 p_795->g_597 p_795->g_206 p_795->g_45 p_795->g_241 p_795->g_614 p_795->g_423 p_795->g_200 p_795->g_263 p_795->g_632 p_795->g_305 p_795->g_676 p_795->g_677 p_795->g_111
 * writes: p_795->g_93 p_795->g_262 p_795->g_264 p_795->g_5 p_795->g_428 p_795->g_159 p_795->g_224 p_795->g_56 p_795->g_465 p_795->g_591 p_795->g_163 p_795->g_597 p_795->g_22 p_795->g_362
 */
union U2  func_31(int32_t * p_32, int32_t * p_33, int32_t  p_34, union U0  p_35, struct S3 * p_795)
{ /* block id: 149 */
    int8_t l_438 = 0x1CL;
    VECTOR(uint64_t, 8) l_441 = (VECTOR(uint64_t, 8))(0x94AD671444BBD445L, (VECTOR(uint64_t, 4))(0x94AD671444BBD445L, (VECTOR(uint64_t, 2))(0x94AD671444BBD445L, 18446744073709551606UL), 18446744073709551606UL), 18446744073709551606UL, 0x94AD671444BBD445L, 18446744073709551606UL);
    uint8_t **l_443[5][7][6] = {{{&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249},{&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249},{&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249},{&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249},{&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249},{&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249},{&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249}},{{&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249},{&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249},{&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249},{&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249},{&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249},{&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249},{&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249}},{{&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249},{&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249},{&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249},{&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249},{&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249},{&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249},{&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249}},{{&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249},{&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249},{&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249},{&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249},{&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249},{&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249},{&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249}},{{&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249},{&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249},{&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249},{&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249},{&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249},{&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249},{&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249,&p_795->g_249}}};
    uint8_t ***l_442 = &l_443[2][4][3];
    uint8_t **l_444 = &p_795->g_249;
    int32_t l_445 = 1L;
    uint16_t *l_450[5] = {&p_795->g_105,&p_795->g_105,&p_795->g_105,&p_795->g_105,&p_795->g_105};
    int32_t l_451[10][5][5] = {{{0x3F1592AEL,0x6CE39943L,(-9L),(-7L),(-9L)},{0x3F1592AEL,0x6CE39943L,(-9L),(-7L),(-9L)},{0x3F1592AEL,0x6CE39943L,(-9L),(-7L),(-9L)},{0x3F1592AEL,0x6CE39943L,(-9L),(-7L),(-9L)},{0x3F1592AEL,0x6CE39943L,(-9L),(-7L),(-9L)}},{{0x3F1592AEL,0x6CE39943L,(-9L),(-7L),(-9L)},{0x3F1592AEL,0x6CE39943L,(-9L),(-7L),(-9L)},{0x3F1592AEL,0x6CE39943L,(-9L),(-7L),(-9L)},{0x3F1592AEL,0x6CE39943L,(-9L),(-7L),(-9L)},{0x3F1592AEL,0x6CE39943L,(-9L),(-7L),(-9L)}},{{0x3F1592AEL,0x6CE39943L,(-9L),(-7L),(-9L)},{0x3F1592AEL,0x6CE39943L,(-9L),(-7L),(-9L)},{0x3F1592AEL,0x6CE39943L,(-9L),(-7L),(-9L)},{0x3F1592AEL,0x6CE39943L,(-9L),(-7L),(-9L)},{0x3F1592AEL,0x6CE39943L,(-9L),(-7L),(-9L)}},{{0x3F1592AEL,0x6CE39943L,(-9L),(-7L),(-9L)},{0x3F1592AEL,0x6CE39943L,(-9L),(-7L),(-9L)},{0x3F1592AEL,0x6CE39943L,(-9L),(-7L),(-9L)},{0x3F1592AEL,0x6CE39943L,(-9L),(-7L),(-9L)},{0x3F1592AEL,0x6CE39943L,(-9L),(-7L),(-9L)}},{{0x3F1592AEL,0x6CE39943L,(-9L),(-7L),(-9L)},{0x3F1592AEL,0x6CE39943L,(-9L),(-7L),(-9L)},{0x3F1592AEL,0x6CE39943L,(-9L),(-7L),(-9L)},{0x3F1592AEL,0x6CE39943L,(-9L),(-7L),(-9L)},{0x3F1592AEL,0x6CE39943L,(-9L),(-7L),(-9L)}},{{0x3F1592AEL,0x6CE39943L,(-9L),(-7L),(-9L)},{0x3F1592AEL,0x6CE39943L,(-9L),(-7L),(-9L)},{0x3F1592AEL,0x6CE39943L,(-9L),(-7L),(-9L)},{0x3F1592AEL,0x6CE39943L,(-9L),(-7L),(-9L)},{0x3F1592AEL,0x6CE39943L,(-9L),(-7L),(-9L)}},{{0x3F1592AEL,0x6CE39943L,(-9L),(-7L),(-9L)},{0x3F1592AEL,0x6CE39943L,(-9L),(-7L),(-9L)},{0x3F1592AEL,0x6CE39943L,(-9L),(-7L),(-9L)},{0x3F1592AEL,0x6CE39943L,(-9L),(-7L),(-9L)},{0x3F1592AEL,0x6CE39943L,(-9L),(-7L),(-9L)}},{{0x3F1592AEL,0x6CE39943L,(-9L),(-7L),(-9L)},{0x3F1592AEL,0x6CE39943L,(-9L),(-7L),(-9L)},{0x3F1592AEL,0x6CE39943L,(-9L),(-7L),(-9L)},{0x3F1592AEL,0x6CE39943L,(-9L),(-7L),(-9L)},{0x3F1592AEL,0x6CE39943L,(-9L),(-7L),(-9L)}},{{0x3F1592AEL,0x6CE39943L,(-9L),(-7L),(-9L)},{0x3F1592AEL,0x6CE39943L,(-9L),(-7L),(-9L)},{0x3F1592AEL,0x6CE39943L,(-9L),(-7L),(-9L)},{0x3F1592AEL,0x6CE39943L,(-9L),(-7L),(-9L)},{0x3F1592AEL,0x6CE39943L,(-9L),(-7L),(-9L)}},{{0x3F1592AEL,0x6CE39943L,(-9L),(-7L),(-9L)},{0x3F1592AEL,0x6CE39943L,(-9L),(-7L),(-9L)},{0x3F1592AEL,0x6CE39943L,(-9L),(-7L),(-9L)},{0x3F1592AEL,0x6CE39943L,(-9L),(-7L),(-9L)},{0x3F1592AEL,0x6CE39943L,(-9L),(-7L),(-9L)}}};
    VECTOR(uint16_t, 8) l_456 = (VECTOR(uint16_t, 8))(0x8403L, (VECTOR(uint16_t, 4))(0x8403L, (VECTOR(uint16_t, 2))(0x8403L, 0xFED7L), 0xFED7L), 0xFED7L, 0x8403L, 0xFED7L);
    VECTOR(uint8_t, 16) l_459 = (VECTOR(uint8_t, 16))(250UL, (VECTOR(uint8_t, 4))(250UL, (VECTOR(uint8_t, 2))(250UL, 0x67L), 0x67L), 0x67L, 250UL, 0x67L, (VECTOR(uint8_t, 2))(250UL, 0x67L), (VECTOR(uint8_t, 2))(250UL, 0x67L), 250UL, 0x67L, 250UL, 0x67L);
    VECTOR(int8_t, 8) l_462 = (VECTOR(int8_t, 8))(0x6AL, (VECTOR(int8_t, 4))(0x6AL, (VECTOR(int8_t, 2))(0x6AL, (-1L)), (-1L)), (-1L), 0x6AL, (-1L));
    uint32_t l_463 = 4294967291UL;
    uint16_t l_464[3];
    VECTOR(uint8_t, 8) l_466 = (VECTOR(uint8_t, 8))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 255UL), 255UL), 255UL, 1UL, 255UL);
    uint32_t *l_474 = &l_463;
    uint32_t **l_473 = &l_474;
    VECTOR(uint64_t, 16) l_498 = (VECTOR(uint64_t, 16))(0xDE71AADD1EC8BA8FL, (VECTOR(uint64_t, 4))(0xDE71AADD1EC8BA8FL, (VECTOR(uint64_t, 2))(0xDE71AADD1EC8BA8FL, 0UL), 0UL), 0UL, 0xDE71AADD1EC8BA8FL, 0UL, (VECTOR(uint64_t, 2))(0xDE71AADD1EC8BA8FL, 0UL), (VECTOR(uint64_t, 2))(0xDE71AADD1EC8BA8FL, 0UL), 0xDE71AADD1EC8BA8FL, 0UL, 0xDE71AADD1EC8BA8FL, 0UL);
    VECTOR(uint16_t, 2) l_499 = (VECTOR(uint16_t, 2))(0xDA76L, 65529UL);
    VECTOR(uint32_t, 16) l_510 = (VECTOR(uint32_t, 16))(0xB8DD2E7DL, (VECTOR(uint32_t, 4))(0xB8DD2E7DL, (VECTOR(uint32_t, 2))(0xB8DD2E7DL, 0xD94AFDDBL), 0xD94AFDDBL), 0xD94AFDDBL, 0xB8DD2E7DL, 0xD94AFDDBL, (VECTOR(uint32_t, 2))(0xB8DD2E7DL, 0xD94AFDDBL), (VECTOR(uint32_t, 2))(0xB8DD2E7DL, 0xD94AFDDBL), 0xB8DD2E7DL, 0xD94AFDDBL, 0xB8DD2E7DL, 0xD94AFDDBL);
    uint64_t *l_511 = &p_795->g_224[1];
    uint32_t l_583 = 4294967295UL;
    union U2 l_592 = {0};
    VECTOR(uint32_t, 4) l_605 = (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 1UL), 1UL);
    int16_t l_692 = 0x0B91L;
    uint32_t l_703 = 0x3EB7EB74L;
    uint32_t l_706 = 0xC79CC001L;
    uint8_t l_722[9][5] = {{1UL,1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL,1UL}};
    VECTOR(int32_t, 8) l_725 = (VECTOR(int32_t, 8))(0x7318D9A4L, (VECTOR(int32_t, 4))(0x7318D9A4L, (VECTOR(int32_t, 2))(0x7318D9A4L, (-1L)), (-1L)), (-1L), 0x7318D9A4L, (-1L));
    int32_t *l_726 = &l_451[6][2][4];
    union U2 l_727 = {0};
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_464[i] = 65535UL;
    (*p_795->g_92) = &l_445;
    (*p_795->g_93) &= (l_463 <= ((VECTOR(uint8_t, 4))(l_466.s7373)).x);
    for (p_795->g_262 = 0; (p_795->g_262 == (-1)); p_795->g_262 = safe_sub_func_uint8_t_u_u(p_795->g_262, 1))
    { /* block id: 161 */
        VECTOR(uint8_t, 16) l_469 = (VECTOR(uint8_t, 16))(6UL, (VECTOR(uint8_t, 4))(6UL, (VECTOR(uint8_t, 2))(6UL, 0UL), 0UL), 0UL, 6UL, 0UL, (VECTOR(uint8_t, 2))(6UL, 0UL), (VECTOR(uint8_t, 2))(6UL, 0UL), 6UL, 0UL, 6UL, 0UL);
        VECTOR(uint8_t, 16) l_470 = (VECTOR(uint8_t, 16))(0xABL, (VECTOR(uint8_t, 4))(0xABL, (VECTOR(uint8_t, 2))(0xABL, 0xC8L), 0xC8L), 0xC8L, 0xABL, 0xC8L, (VECTOR(uint8_t, 2))(0xABL, 0xC8L), (VECTOR(uint8_t, 2))(0xABL, 0xC8L), 0xABL, 0xC8L, 0xABL, 0xC8L);
        int64_t *l_475[2];
        int32_t l_480 = (-1L);
        int16_t l_481 = (-7L);
        VECTOR(int32_t, 4) l_488 = (VECTOR(int32_t, 4))(0x355B98DEL, (VECTOR(int32_t, 2))(0x355B98DEL, 0x75DAED67L), 0x75DAED67L);
        uint32_t ***l_489 = (void*)0;
        int i;
        for (i = 0; i < 2; i++)
            l_475[i] = (void*)0;
        l_488.x = ((p_795->g_264.s2 = (((VECTOR(uint8_t, 4))(hadd(((VECTOR(uint8_t, 2))(l_469.s51)).yyxy, ((VECTOR(uint8_t, 8))(l_470.sab6586a4)).lo))).x | (safe_add_func_uint64_t_u_u((l_473 != (void*)0), 0x2647F9DD7FCD8D59L)))) || (safe_sub_func_int64_t_s_s((l_445 = l_469.sf), (safe_rshift_func_uint8_t_u_s(((*p_795->g_249)--), (safe_lshift_func_uint16_t_u_u((l_469.s9 < (safe_add_func_uint32_t_u_u(l_441.s6, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(sub_sat(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(mad_sat(((VECTOR(int32_t, 16))(hadd(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(rotate(((VECTOR(int32_t, 4))(sub_sat(((VECTOR(int32_t, 8))(l_488.xywxxzwx)).odd, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))((-8L), 0x343D1D9FL)), (l_489 != &p_795->g_337), ((VECTOR(int32_t, 4))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 16))(max(((VECTOR(int32_t, 16))(upsample(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(clz(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 2),((VECTOR(int16_t, 4))((safe_add_func_int32_t_s_s(((safe_add_func_int64_t_s_s((safe_lshift_func_int16_t_s_u(0x584CL, p_34)), l_451[7][4][0])) == p_35.f0), l_470.sf)), ((VECTOR(int16_t, 2))(0x7C0CL)), 0x48F8L)).even, ((VECTOR(int16_t, 2))(0x7912L)), ((VECTOR(int16_t, 2))(5L))))), 0x1EFDL, 0x1E3FL))))).yyxxzwwz)).s3277331510556061, ((VECTOR(uint16_t, 16))(65535UL))))), (int32_t)0x439918F3L))).sb4ae, ((VECTOR(int32_t, 4))(0x1D8B4270L))))), ((VECTOR(int32_t, 8))(0x460A6B67L)), 0x313B15E5L)).s79a4))).wyywwwyx, ((VECTOR(int32_t, 8))(0x18694593L))))).hi)).yzwzxxzyxyzyywzy, ((VECTOR(int32_t, 16))(0x2FB7F62CL))))).sfc, ((VECTOR(int32_t, 2))(0x79883309L)), ((VECTOR(int32_t, 2))(0x0073008CL))))), 0x4E16E0D9L, 1L)))), ((VECTOR(int32_t, 4))(5L))))).wzzzwyzwyzyzxyww)).s1))), 5)))))));
    }
    if ((safe_div_func_int8_t_s_s(((void*)0 != &l_474), ((((VECTOR(uint64_t, 16))(l_498.s9d1c079f269c366e)).s2 | (((((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(hadd(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(abs(((VECTOR(uint16_t, 16))(max(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 2))(l_499.yy)))).yxyyxxyxxxyyyyxy, ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 2))(p_795->g_500.xy)))).xxxxxxyxyxxyyxxy))).lo))).s6156037563503617)).s1c, ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 8))(add_sat(((VECTOR(uint16_t, 16))((l_445 = p_795->g_154), 65535UL, 0x62BBL, (safe_div_func_int32_t_s_s((p_35.f0 , (safe_mul_func_int16_t_s_s(((l_499.y != (safe_add_func_uint32_t_u_u(0xBBD29702L, (safe_sub_func_uint8_t_u_u(FAKE_DIVERGE(p_795->local_2_offset, get_local_id(2), 10), (FAKE_DIVERGE(p_795->group_2_offset, get_group_id(2), 10) > ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(p_795->g_509.xxxy)), 0xCA32L, ((((VECTOR(uint32_t, 8))(l_510.seb8708ca)).s1 >= (p_795->g_280.z , ((-1L) <= (-10L)))) != (-1L)), 0UL, 0xF9DBL)).s6)))))) || 0x07L), l_441.s6))), 0xACBC8474L)), 0xCE96L, ((VECTOR(uint16_t, 2))(0xF085L)), ((VECTOR(uint16_t, 8))(6UL)), 0UL)).odd, ((VECTOR(uint16_t, 8))(65534UL))))).even)).lo))).xxyy)).y < p_35.f0) , (void*)0) != l_511)) || l_498.s0))))
    { /* block id: 168 */
        uint64_t l_512[9][3][9] = {{{0x56D2AF94C7072A90L,0xCB03A806F540F50FL,18446744073709551612UL,0xCC65643065BB1BA4L,0xB954D2BBC7FEB738L,0xB954D2BBC7FEB738L,0xCC65643065BB1BA4L,18446744073709551612UL,0xCB03A806F540F50FL},{0x56D2AF94C7072A90L,0xCB03A806F540F50FL,18446744073709551612UL,0xCC65643065BB1BA4L,0xB954D2BBC7FEB738L,0xB954D2BBC7FEB738L,0xCC65643065BB1BA4L,18446744073709551612UL,0xCB03A806F540F50FL},{0x56D2AF94C7072A90L,0xCB03A806F540F50FL,18446744073709551612UL,0xCC65643065BB1BA4L,0xB954D2BBC7FEB738L,0xB954D2BBC7FEB738L,0xCC65643065BB1BA4L,18446744073709551612UL,0xCB03A806F540F50FL}},{{0x56D2AF94C7072A90L,0xCB03A806F540F50FL,18446744073709551612UL,0xCC65643065BB1BA4L,0xB954D2BBC7FEB738L,0xB954D2BBC7FEB738L,0xCC65643065BB1BA4L,18446744073709551612UL,0xCB03A806F540F50FL},{0x56D2AF94C7072A90L,0xCB03A806F540F50FL,18446744073709551612UL,0xCC65643065BB1BA4L,0xB954D2BBC7FEB738L,0xB954D2BBC7FEB738L,0xCC65643065BB1BA4L,18446744073709551612UL,0xCB03A806F540F50FL},{0x56D2AF94C7072A90L,0xCB03A806F540F50FL,18446744073709551612UL,0xCC65643065BB1BA4L,0xB954D2BBC7FEB738L,0xB954D2BBC7FEB738L,0xCC65643065BB1BA4L,18446744073709551612UL,0xCB03A806F540F50FL}},{{0x56D2AF94C7072A90L,0xCB03A806F540F50FL,18446744073709551612UL,0xCC65643065BB1BA4L,0xB954D2BBC7FEB738L,0xB954D2BBC7FEB738L,0xCC65643065BB1BA4L,18446744073709551612UL,0xCB03A806F540F50FL},{0x56D2AF94C7072A90L,0xCB03A806F540F50FL,18446744073709551612UL,0xCC65643065BB1BA4L,0xB954D2BBC7FEB738L,0xB954D2BBC7FEB738L,0xCC65643065BB1BA4L,18446744073709551612UL,0xCB03A806F540F50FL},{0x56D2AF94C7072A90L,0xCB03A806F540F50FL,18446744073709551612UL,0xCC65643065BB1BA4L,0xB954D2BBC7FEB738L,0xB954D2BBC7FEB738L,0xCC65643065BB1BA4L,18446744073709551612UL,0xCB03A806F540F50FL}},{{0x56D2AF94C7072A90L,0xCB03A806F540F50FL,18446744073709551612UL,0xCC65643065BB1BA4L,0xB954D2BBC7FEB738L,0xB954D2BBC7FEB738L,0xCC65643065BB1BA4L,18446744073709551612UL,0xCB03A806F540F50FL},{0x56D2AF94C7072A90L,0xCB03A806F540F50FL,18446744073709551612UL,0xCC65643065BB1BA4L,0xB954D2BBC7FEB738L,0xB954D2BBC7FEB738L,0xCC65643065BB1BA4L,18446744073709551612UL,0xCB03A806F540F50FL},{0x56D2AF94C7072A90L,0xCB03A806F540F50FL,18446744073709551612UL,0xCC65643065BB1BA4L,0xB954D2BBC7FEB738L,0xB954D2BBC7FEB738L,0xCC65643065BB1BA4L,18446744073709551612UL,0xCB03A806F540F50FL}},{{0x56D2AF94C7072A90L,0xCB03A806F540F50FL,18446744073709551612UL,0xCC65643065BB1BA4L,0xB954D2BBC7FEB738L,0xB954D2BBC7FEB738L,0xCC65643065BB1BA4L,18446744073709551612UL,0xCB03A806F540F50FL},{0x56D2AF94C7072A90L,0xCB03A806F540F50FL,18446744073709551612UL,0xCC65643065BB1BA4L,0xB954D2BBC7FEB738L,0xB954D2BBC7FEB738L,0xCC65643065BB1BA4L,18446744073709551612UL,0xCB03A806F540F50FL},{0x56D2AF94C7072A90L,0xCB03A806F540F50FL,18446744073709551612UL,0xCC65643065BB1BA4L,0xB954D2BBC7FEB738L,0xB954D2BBC7FEB738L,0xCC65643065BB1BA4L,18446744073709551612UL,0xCB03A806F540F50FL}},{{0x56D2AF94C7072A90L,0xCB03A806F540F50FL,18446744073709551612UL,0xCC65643065BB1BA4L,0xB954D2BBC7FEB738L,0xB954D2BBC7FEB738L,0xCC65643065BB1BA4L,18446744073709551612UL,0xCB03A806F540F50FL},{0x56D2AF94C7072A90L,0xCB03A806F540F50FL,18446744073709551612UL,0xCC65643065BB1BA4L,0xB954D2BBC7FEB738L,0xB954D2BBC7FEB738L,0xCC65643065BB1BA4L,18446744073709551612UL,0xCB03A806F540F50FL},{0x56D2AF94C7072A90L,0xCB03A806F540F50FL,18446744073709551612UL,0xCC65643065BB1BA4L,0xB954D2BBC7FEB738L,0xB954D2BBC7FEB738L,0xCC65643065BB1BA4L,18446744073709551612UL,0xCB03A806F540F50FL}},{{0x56D2AF94C7072A90L,0xCB03A806F540F50FL,18446744073709551612UL,0xCC65643065BB1BA4L,0xB954D2BBC7FEB738L,0xB954D2BBC7FEB738L,0xCC65643065BB1BA4L,18446744073709551612UL,0xCB03A806F540F50FL},{0x56D2AF94C7072A90L,0xCB03A806F540F50FL,18446744073709551612UL,0xCC65643065BB1BA4L,0xB954D2BBC7FEB738L,0xB954D2BBC7FEB738L,0xCC65643065BB1BA4L,18446744073709551612UL,0xCB03A806F540F50FL},{0x56D2AF94C7072A90L,0xCB03A806F540F50FL,18446744073709551612UL,0xCC65643065BB1BA4L,0xB954D2BBC7FEB738L,0xB954D2BBC7FEB738L,0xCC65643065BB1BA4L,18446744073709551612UL,0xCB03A806F540F50FL}},{{0x56D2AF94C7072A90L,0xCB03A806F540F50FL,18446744073709551612UL,0xCC65643065BB1BA4L,0xB954D2BBC7FEB738L,0xB954D2BBC7FEB738L,0xCC65643065BB1BA4L,18446744073709551612UL,0xCB03A806F540F50FL},{0x56D2AF94C7072A90L,0xCB03A806F540F50FL,18446744073709551612UL,0xCC65643065BB1BA4L,0xB954D2BBC7FEB738L,0xB954D2BBC7FEB738L,0xCC65643065BB1BA4L,18446744073709551612UL,0xCB03A806F540F50FL},{0x56D2AF94C7072A90L,0xCB03A806F540F50FL,18446744073709551612UL,0xCC65643065BB1BA4L,0xB954D2BBC7FEB738L,0xB954D2BBC7FEB738L,0xCC65643065BB1BA4L,18446744073709551612UL,0xCB03A806F540F50FL}},{{0x56D2AF94C7072A90L,0xCB03A806F540F50FL,18446744073709551612UL,0xCC65643065BB1BA4L,0xB954D2BBC7FEB738L,0xB954D2BBC7FEB738L,0xCC65643065BB1BA4L,18446744073709551612UL,0xCB03A806F540F50FL},{0x56D2AF94C7072A90L,0xCB03A806F540F50FL,18446744073709551612UL,0xCC65643065BB1BA4L,0xB954D2BBC7FEB738L,0xB954D2BBC7FEB738L,0xCC65643065BB1BA4L,18446744073709551612UL,0xCB03A806F540F50FL},{0x56D2AF94C7072A90L,0xCB03A806F540F50FL,18446744073709551612UL,0xCC65643065BB1BA4L,0xB954D2BBC7FEB738L,0xB954D2BBC7FEB738L,0xCC65643065BB1BA4L,18446744073709551612UL,0xCB03A806F540F50FL}}};
        int32_t l_521 = 1L;
        int32_t l_522 = 3L;
        int32_t l_523 = (-7L);
        int32_t l_524 = 4L;
        int32_t l_525 = 0x2AD310AFL;
        int32_t l_526 = 4L;
        uint64_t l_566[7] = {0UL,0UL,0UL,0UL,0UL,0UL,0UL};
        int32_t l_579[3];
        union U2 l_586 = {0};
        union U2 *l_613[3][3] = {{&l_586,&p_795->g_228,&l_586},{&l_586,&p_795->g_228,&l_586},{&l_586,&p_795->g_228,&l_586}};
        union U2 **l_612 = &l_613[1][0];
        VECTOR(uint16_t, 8) l_654 = (VECTOR(uint16_t, 8))(0xE7ADL, (VECTOR(uint16_t, 4))(0xE7ADL, (VECTOR(uint16_t, 2))(0xE7ADL, 0x76DCL), 0x76DCL), 0x76DCL, 0xE7ADL, 0x76DCL);
        int i, j, k;
        for (i = 0; i < 3; i++)
            l_579[i] = 0x24CF7A62L;
        if (l_512[5][0][3])
        { /* block id: 169 */
            int32_t *l_513 = &p_795->g_56;
            int32_t *l_514 = (void*)0;
            int32_t l_515 = 2L;
            int32_t *l_516 = &l_445;
            int32_t *l_517 = &p_795->g_56;
            int32_t *l_518 = (void*)0;
            int32_t *l_519 = &l_451[2][4][1];
            int32_t *l_520[8][5] = {{&p_795->g_56,(void*)0,&p_795->g_56,&p_795->g_56,(void*)0},{&p_795->g_56,(void*)0,&p_795->g_56,&p_795->g_56,(void*)0},{&p_795->g_56,(void*)0,&p_795->g_56,&p_795->g_56,(void*)0},{&p_795->g_56,(void*)0,&p_795->g_56,&p_795->g_56,(void*)0},{&p_795->g_56,(void*)0,&p_795->g_56,&p_795->g_56,(void*)0},{&p_795->g_56,(void*)0,&p_795->g_56,&p_795->g_56,(void*)0},{&p_795->g_56,(void*)0,&p_795->g_56,&p_795->g_56,(void*)0},{&p_795->g_56,(void*)0,&p_795->g_56,&p_795->g_56,(void*)0}};
            uint8_t l_527 = 0xC6L;
            VECTOR(int16_t, 4) l_537 = (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x4005L), 0x4005L);
            union U0 l_541 = {0xEB78E20DL};
            union U1 l_554 = {0L};
            int64_t l_565 = (-2L);
            int i, j;
            l_527--;
            for (p_795->g_428 = 21; (p_795->g_428 >= 7); p_795->g_428 = safe_sub_func_uint16_t_u_u(p_795->g_428, 8))
            { /* block id: 173 */
                uint8_t l_538 = 0x0AL;
                int32_t *l_559 = &l_451[7][4][0];
                int32_t l_561 = (-8L);
                union U2 l_573 = {0};
                int32_t l_574 = 1L;
                int32_t l_575 = 0x3E8AB034L;
                int32_t l_576 = 0x412CE1D6L;
                int32_t l_577 = 0x152F27E8L;
                int32_t l_578[10][6][4] = {{{(-10L),(-10L),0x6521400EL,0x11AB3A7CL},{(-10L),(-10L),0x6521400EL,0x11AB3A7CL},{(-10L),(-10L),0x6521400EL,0x11AB3A7CL},{(-10L),(-10L),0x6521400EL,0x11AB3A7CL},{(-10L),(-10L),0x6521400EL,0x11AB3A7CL},{(-10L),(-10L),0x6521400EL,0x11AB3A7CL}},{{(-10L),(-10L),0x6521400EL,0x11AB3A7CL},{(-10L),(-10L),0x6521400EL,0x11AB3A7CL},{(-10L),(-10L),0x6521400EL,0x11AB3A7CL},{(-10L),(-10L),0x6521400EL,0x11AB3A7CL},{(-10L),(-10L),0x6521400EL,0x11AB3A7CL},{(-10L),(-10L),0x6521400EL,0x11AB3A7CL}},{{(-10L),(-10L),0x6521400EL,0x11AB3A7CL},{(-10L),(-10L),0x6521400EL,0x11AB3A7CL},{(-10L),(-10L),0x6521400EL,0x11AB3A7CL},{(-10L),(-10L),0x6521400EL,0x11AB3A7CL},{(-10L),(-10L),0x6521400EL,0x11AB3A7CL},{(-10L),(-10L),0x6521400EL,0x11AB3A7CL}},{{(-10L),(-10L),0x6521400EL,0x11AB3A7CL},{(-10L),(-10L),0x6521400EL,0x11AB3A7CL},{(-10L),(-10L),0x6521400EL,0x11AB3A7CL},{(-10L),(-10L),0x6521400EL,0x11AB3A7CL},{(-10L),(-10L),0x6521400EL,0x11AB3A7CL},{(-10L),(-10L),0x6521400EL,0x11AB3A7CL}},{{(-10L),(-10L),0x6521400EL,0x11AB3A7CL},{(-10L),(-10L),0x6521400EL,0x11AB3A7CL},{(-10L),(-10L),0x6521400EL,0x11AB3A7CL},{(-10L),(-10L),0x6521400EL,0x11AB3A7CL},{(-10L),(-10L),0x6521400EL,0x11AB3A7CL},{(-10L),(-10L),0x6521400EL,0x11AB3A7CL}},{{(-10L),(-10L),0x6521400EL,0x11AB3A7CL},{(-10L),(-10L),0x6521400EL,0x11AB3A7CL},{(-10L),(-10L),0x6521400EL,0x11AB3A7CL},{(-10L),(-10L),0x6521400EL,0x11AB3A7CL},{(-10L),(-10L),0x6521400EL,0x11AB3A7CL},{(-10L),(-10L),0x6521400EL,0x11AB3A7CL}},{{(-10L),(-10L),0x6521400EL,0x11AB3A7CL},{(-10L),(-10L),0x6521400EL,0x11AB3A7CL},{(-10L),(-10L),0x6521400EL,0x11AB3A7CL},{(-10L),(-10L),0x6521400EL,0x11AB3A7CL},{(-10L),(-10L),0x6521400EL,0x11AB3A7CL},{(-10L),(-10L),0x6521400EL,0x11AB3A7CL}},{{(-10L),(-10L),0x6521400EL,0x11AB3A7CL},{(-10L),(-10L),0x6521400EL,0x11AB3A7CL},{(-10L),(-10L),0x6521400EL,0x11AB3A7CL},{(-10L),(-10L),0x6521400EL,0x11AB3A7CL},{(-10L),(-10L),0x6521400EL,0x11AB3A7CL},{(-10L),(-10L),0x6521400EL,0x11AB3A7CL}},{{(-10L),(-10L),0x6521400EL,0x11AB3A7CL},{(-10L),(-10L),0x6521400EL,0x11AB3A7CL},{(-10L),(-10L),0x6521400EL,0x11AB3A7CL},{(-10L),(-10L),0x6521400EL,0x11AB3A7CL},{(-10L),(-10L),0x6521400EL,0x11AB3A7CL},{(-10L),(-10L),0x6521400EL,0x11AB3A7CL}},{{(-10L),(-10L),0x6521400EL,0x11AB3A7CL},{(-10L),(-10L),0x6521400EL,0x11AB3A7CL},{(-10L),(-10L),0x6521400EL,0x11AB3A7CL},{(-10L),(-10L),0x6521400EL,0x11AB3A7CL},{(-10L),(-10L),0x6521400EL,0x11AB3A7CL},{(-10L),(-10L),0x6521400EL,0x11AB3A7CL}}};
                uint64_t l_580[10][10] = {{18446744073709551615UL,0xB6BA77CEAFDBAA0EL,18446744073709551607UL,0UL,18446744073709551607UL,0xB6BA77CEAFDBAA0EL,18446744073709551615UL,18446744073709551606UL,0xCF7C155F2C2DA52FL,0x3D386DB7953E4268L},{18446744073709551615UL,0xB6BA77CEAFDBAA0EL,18446744073709551607UL,0UL,18446744073709551607UL,0xB6BA77CEAFDBAA0EL,18446744073709551615UL,18446744073709551606UL,0xCF7C155F2C2DA52FL,0x3D386DB7953E4268L},{18446744073709551615UL,0xB6BA77CEAFDBAA0EL,18446744073709551607UL,0UL,18446744073709551607UL,0xB6BA77CEAFDBAA0EL,18446744073709551615UL,18446744073709551606UL,0xCF7C155F2C2DA52FL,0x3D386DB7953E4268L},{18446744073709551615UL,0xB6BA77CEAFDBAA0EL,18446744073709551607UL,0UL,18446744073709551607UL,0xB6BA77CEAFDBAA0EL,18446744073709551615UL,18446744073709551606UL,0xCF7C155F2C2DA52FL,0x3D386DB7953E4268L},{18446744073709551615UL,0xB6BA77CEAFDBAA0EL,18446744073709551607UL,0UL,18446744073709551607UL,0xB6BA77CEAFDBAA0EL,18446744073709551615UL,18446744073709551606UL,0xCF7C155F2C2DA52FL,0x3D386DB7953E4268L},{18446744073709551615UL,0xB6BA77CEAFDBAA0EL,18446744073709551607UL,0UL,18446744073709551607UL,0xB6BA77CEAFDBAA0EL,18446744073709551615UL,18446744073709551606UL,0xCF7C155F2C2DA52FL,0x3D386DB7953E4268L},{18446744073709551615UL,0xB6BA77CEAFDBAA0EL,18446744073709551607UL,0UL,18446744073709551607UL,0xB6BA77CEAFDBAA0EL,18446744073709551615UL,18446744073709551606UL,0xCF7C155F2C2DA52FL,0x3D386DB7953E4268L},{18446744073709551615UL,0xB6BA77CEAFDBAA0EL,18446744073709551607UL,0UL,18446744073709551607UL,0xB6BA77CEAFDBAA0EL,18446744073709551615UL,18446744073709551606UL,0xCF7C155F2C2DA52FL,0x3D386DB7953E4268L},{18446744073709551615UL,0xB6BA77CEAFDBAA0EL,18446744073709551607UL,0UL,18446744073709551607UL,0xB6BA77CEAFDBAA0EL,18446744073709551615UL,18446744073709551606UL,0xCF7C155F2C2DA52FL,0x3D386DB7953E4268L},{18446744073709551615UL,0xB6BA77CEAFDBAA0EL,18446744073709551607UL,0UL,18446744073709551607UL,0xB6BA77CEAFDBAA0EL,18446744073709551615UL,18446744073709551606UL,0xCF7C155F2C2DA52FL,0x3D386DB7953E4268L}};
                int i, j, k;
                if ((((safe_mul_func_int16_t_s_s((0x63CEL & ((VECTOR(int16_t, 2))(clz(((VECTOR(int16_t, 16))(p_35.f0, ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(1L, 1L, (-10L), 0x3390L)).xzxxxwzxzxywwyyy)).sa6)).yxyyyxxy)), (~l_524), 0x7D7AL, (l_526 = ((safe_rshift_func_int8_t_s_s(((VECTOR(int8_t, 2))(0x6BL, (-7L))).hi, (((((VECTOR(int16_t, 2))(min(((VECTOR(int16_t, 16))(p_795->g_536.xzwwywyxzyxxzxwx)).s03, ((VECTOR(int16_t, 16))(l_537.yxxzyxyxwyxyzywx)).s47))).even | (3UL < (*p_795->g_21))) || (p_795->g_160 , (l_441.s2 && (((((void*)0 != l_474) | p_35.f0) <= 0UL) > l_538)))) != 1UL))) < p_35.f0)), (*l_519), 1L, 0x0795L, 0x08FBL)).s01))).odd), p_795->g_105)) & l_456.s1) <= GROUP_DIVERGE(1, 1)))
                { /* block id: 175 */
                    for (p_795->g_159 = (-18); (p_795->g_159 == (-19)); p_795->g_159--)
                    { /* block id: 178 */
                        int32_t **l_542[5][3] = {{&p_795->g_93,&l_514,&l_514},{&p_795->g_93,&l_514,&l_514},{&p_795->g_93,&l_514,&l_514},{&p_795->g_93,&l_514,&l_514},{&p_795->g_93,&l_514,&l_514}};
                        int i, j;
                        p_33 = (l_541 , (void*)0);
                    }
                }
                else
                { /* block id: 181 */
                    int32_t *l_545 = &l_526;
                    int16_t l_562 = 1L;
                    int32_t l_563 = 0x373829D1L;
                    union U2 l_572 = {0};
                    for (p_795->g_262 = (-27); (p_795->g_262 <= (-16)); p_795->g_262 = safe_add_func_uint16_t_u_u(p_795->g_262, 8))
                    { /* block id: 184 */
                        uint32_t l_555 = 0xB9CF0FECL;
                        int32_t l_556 = 0L;
                        int32_t **l_560 = &l_520[1][4];
                        int32_t l_564 = 0x44773CFBL;
                        union U2 l_569 = {0};
                        (*l_560) = func_59((**p_795->g_309), l_545, &p_795->g_22, ((safe_add_func_uint32_t_u_u((*l_545), (*p_795->g_93))) < (safe_sub_func_uint64_t_u_u((safe_sub_func_uint8_t_u_u((safe_mod_func_int64_t_s_s((((l_554 , (l_556 = ((*l_511) |= (l_555 = GROUP_DIVERGE(2, 1))))) ^ 2L) | ((VECTOR(int16_t, 8))((safe_mul_func_int16_t_s_s(0L, (*l_545))), 0x1369L, 0L, 0x43A1L, (-1L), ((VECTOR(int16_t, 2))(0x5BA5L)), 0x5768L)).s7), GROUP_DIVERGE(2, 1))), (-7L))), GROUP_DIVERGE(2, 1)))), l_559, p_795);
                        l_566[1]++;
                        (**p_795->g_430) = 0x0F0894A7L;
                        return l_569;
                    }
                    for (p_34 = 0; (p_34 > 20); p_34++)
                    { /* block id: 195 */
                        return l_572;
                    }
                    return l_573;
                }
                l_580[9][5]--;
            }
            (*l_516) = (-1L);
            --l_583;
        }
        else
        { /* block id: 204 */
            return l_586;
        }
        for (p_795->g_465 = 0; (p_795->g_465 > 25); p_795->g_465 = safe_add_func_int64_t_s_s(p_795->g_465, 1))
        { /* block id: 209 */
            union U0 *l_589[1][3][4];
            int i, j, k;
            for (i = 0; i < 1; i++)
            {
                for (j = 0; j < 3; j++)
                {
                    for (k = 0; k < 4; k++)
                        l_589[i][j][k] = &p_795->g_431;
                }
            }
            (*p_795->g_590) = l_589[0][0][0];
            return l_592;
        }
        (*p_795->g_93) = (*p_795->g_55);
        for (p_795->g_163 = 19; (p_795->g_163 >= (-7)); --p_795->g_163)
        { /* block id: 216 */
            int32_t *l_595 = &l_451[0][3][3];
            int32_t *l_596[3][1];
            int32_t ***l_621 = &p_795->g_308[2][1][1];
            VECTOR(int16_t, 8) l_641 = (VECTOR(int16_t, 8))(2L, (VECTOR(int16_t, 4))(2L, (VECTOR(int16_t, 2))(2L, 0x7DAEL), 0x7DAEL), 0x7DAEL, 2L, 0x7DAEL);
            uint8_t ***l_652[2][5] = {{&l_443[2][4][3],&l_443[2][4][3],&l_443[1][4][3],&l_443[2][4][3],&l_443[2][4][3]},{&l_443[2][4][3],&l_443[2][4][3],&l_443[1][4][3],&l_443[2][4][3],&l_443[2][4][3]}};
            union U2 l_669 = {0};
            int i, j;
            for (i = 0; i < 3; i++)
            {
                for (j = 0; j < 1; j++)
                    l_596[i][j] = &l_521;
            }
            p_795->g_597--;
            for (p_34 = 0; (p_34 != (-9)); p_34--)
            { /* block id: 220 */
                int8_t l_622[6] = {0x2BL,1L,0x2BL,0x2BL,1L,0x2BL};
                int32_t l_623 = 1L;
                VECTOR(int16_t, 2) l_643 = (VECTOR(int16_t, 2))(0x4EC2L, 1L);
                VECTOR(int16_t, 16) l_644 = (VECTOR(int16_t, 16))(0x1F46L, (VECTOR(int16_t, 4))(0x1F46L, (VECTOR(int16_t, 2))(0x1F46L, 0x0B05L), 0x0B05L), 0x0B05L, 0x1F46L, 0x0B05L, (VECTOR(int16_t, 2))(0x1F46L, 0x0B05L), (VECTOR(int16_t, 2))(0x1F46L, 0x0B05L), 0x1F46L, 0x0B05L, 0x1F46L, 0x0B05L);
                union U2 **l_647[1];
                int32_t *l_671[10] = {&l_451[4][0][4],&l_523,&l_451[4][0][4],&l_451[4][0][4],&l_523,&l_451[4][0][4],&l_451[4][0][4],&l_523,&l_451[4][0][4],&l_451[4][0][4]};
                int i;
                for (i = 0; i < 1; i++)
                    l_647[i] = &l_613[2][0];
                for (l_524 = 0; (l_524 >= (-8)); l_524 = safe_sub_func_int16_t_s_s(l_524, 9))
                { /* block id: 223 */
                    int32_t **l_604 = &l_596[2][0];
                    VECTOR(int8_t, 16) l_661 = (VECTOR(int8_t, 16))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x15L), 0x15L), 0x15L, (-1L), 0x15L, (VECTOR(int8_t, 2))((-1L), 0x15L), (VECTOR(int8_t, 2))((-1L), 0x15L), (-1L), 0x15L, (-1L), 0x15L);
                    int i;
                    if (((*l_595) &= ((l_604 == &p_33) ^ ((VECTOR(uint32_t, 16))(0x60A2B42CL, 0xB29ECF59L, ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(l_605.wx)).yyyyyxxy)), ((l_623 |= (safe_lshift_func_int8_t_s_u((safe_add_func_int8_t_s_s((safe_add_func_int8_t_s_s((*p_795->g_2), (l_612 == (((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 16))(p_795->g_614.zxzxyzzwzwzwzxzw)).lo)).s6 , p_795->g_615)))), ((((safe_div_func_uint8_t_u_u((*p_795->g_249), l_462.s0)) & (safe_sub_func_int8_t_s_s((FAKE_DIVERGE(p_795->local_2_offset, get_local_id(2), 10) , (((void*)0 == l_621) | p_35.f0)), l_622[5]))) || (**l_604)) , l_579[2]))), 4))) , (**l_604)), ((VECTOR(uint32_t, 4))(0UL)), 0xB6D412E9L)).sc)))
                    { /* block id: 226 */
                        VECTOR(int16_t, 16) l_642 = (VECTOR(int16_t, 16))(0x2768L, (VECTOR(int16_t, 4))(0x2768L, (VECTOR(int16_t, 2))(0x2768L, 0x69BEL), 0x69BEL), 0x69BEL, 0x2768L, 0x69BEL, (VECTOR(int16_t, 2))(0x2768L, 0x69BEL), (VECTOR(int16_t, 2))(0x2768L, 0x69BEL), 0x2768L, 0x69BEL, 0x2768L, 0x69BEL);
                        int16_t *l_648 = &p_795->g_428;
                        uint64_t *l_649 = &l_512[7][0][1];
                        int32_t l_653 = 0x0C7A05EAL;
                        int i;
                        if ((**p_795->g_206))
                            break;
                        (*p_795->g_93) = ((safe_div_func_int8_t_s_s(((((**l_604) = (((VECTOR(int32_t, 16))((**p_795->g_430), ((VECTOR(int32_t, 4))(p_795->g_626.xxyy)), ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(p_795->g_627.s2736)).zwwwywyy)), ((VECTOR(int32_t, 2))(0x395059E8L, 4L)), 6L)).s9 <= p_34)) , 8L) && (safe_mod_func_uint16_t_u_u(p_795->g_45.z, (((safe_rshift_func_uint8_t_u_s(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(mul_hi(((VECTOR(uint8_t, 16))(abs_diff(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 2))(hadd(((VECTOR(int8_t, 8))(p_795->g_632.wxywyyxw)).s16, ((VECTOR(int8_t, 2))((-1L), 0L))))))).xxxy)).yxwywyxyxwzzwzxx, ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(hadd(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(0x35L, (-8L))).xyxxyyyx)).hi, ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))((-7L), 0x2FL)).xyyxyxyxyyyyxxyx)).sa38e))).yyxwxwzywwyzwyyw))))).s99, ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(0x0AL, 0UL)).xxyyyyyx)).s05))), 0x5EL, 0x77L)), 0UL, 6UL, 0x51L, 0x39L)).s00)), 0xEFL, 0UL)).y, 1)) == (safe_add_func_uint64_t_u_u((((*l_649) = ((*l_511) &= ((safe_add_func_int32_t_s_s((safe_rshift_func_uint8_t_u_s(((p_795->g_536.x , (l_451[7][4][0] = p_795->g_241.x)) && (safe_mul_func_int16_t_s_s(((*l_648) ^= ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 2),((VECTOR(int16_t, 16))(min(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(l_641.s55)).xxxx)).xyzywyzzyywzxwyz, ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))(l_642.s2fd0a80b)).s74)).xyxx)), (-10L), ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(l_643.xxxy)).zxxxxwww)).s25)), 0x0E50L)).s4506667344614042))).sbb, ((VECTOR(int16_t, 2))(l_644.sc2)), ((VECTOR(int16_t, 8))(rotate(((VECTOR(int16_t, 4))(rotate(((VECTOR(int16_t, 2))(rotate(((VECTOR(int16_t, 2))(0L, 0x006BL)), ((VECTOR(int16_t, 4))(rhadd(((VECTOR(int16_t, 4))((p_795->g_536.w | (safe_lshift_func_uint8_t_u_s(((p_795->g_615 != l_647[0]) || 0x2852L), 4))), 0x5DCCL, 8L, 0x6B26L)), ((VECTOR(int16_t, 4))((-6L)))))).even))).xyyx, ((VECTOR(int16_t, 4))(0x7B4CL))))).xyzzwzwx, ((VECTOR(int16_t, 8))(0x4285L))))).s16))), 0x463BL, (-9L), 0x12B6L, ((VECTOR(int16_t, 4))(0L)), (-7L), ((VECTOR(int16_t, 4))((-7L))), (-1L), 0x6579L)).s6), l_643.x))), (**l_604))), 7L)) > p_34))) && p_795->g_614.x), p_795->g_423.s0))) , (**l_604))))), 0x71L)) & 0x108A74E7DC10DD0CL);
                        l_653 = (safe_sub_func_uint64_t_u_u(((void*)0 != l_652[0][2]), p_35.f0));
                    }
                    else
                    { /* block id: 235 */
                        uint32_t l_664[5][10][2] = {{{0x910436CFL,4UL},{0x910436CFL,4UL},{0x910436CFL,4UL},{0x910436CFL,4UL},{0x910436CFL,4UL},{0x910436CFL,4UL},{0x910436CFL,4UL},{0x910436CFL,4UL},{0x910436CFL,4UL},{0x910436CFL,4UL}},{{0x910436CFL,4UL},{0x910436CFL,4UL},{0x910436CFL,4UL},{0x910436CFL,4UL},{0x910436CFL,4UL},{0x910436CFL,4UL},{0x910436CFL,4UL},{0x910436CFL,4UL},{0x910436CFL,4UL},{0x910436CFL,4UL}},{{0x910436CFL,4UL},{0x910436CFL,4UL},{0x910436CFL,4UL},{0x910436CFL,4UL},{0x910436CFL,4UL},{0x910436CFL,4UL},{0x910436CFL,4UL},{0x910436CFL,4UL},{0x910436CFL,4UL},{0x910436CFL,4UL}},{{0x910436CFL,4UL},{0x910436CFL,4UL},{0x910436CFL,4UL},{0x910436CFL,4UL},{0x910436CFL,4UL},{0x910436CFL,4UL},{0x910436CFL,4UL},{0x910436CFL,4UL},{0x910436CFL,4UL},{0x910436CFL,4UL}},{{0x910436CFL,4UL},{0x910436CFL,4UL},{0x910436CFL,4UL},{0x910436CFL,4UL},{0x910436CFL,4UL},{0x910436CFL,4UL},{0x910436CFL,4UL},{0x910436CFL,4UL},{0x910436CFL,4UL},{0x910436CFL,4UL}}};
                        int i, j, k;
                        (*l_595) = (p_34 < ((*l_511) = (((((((VECTOR(uint16_t, 8))(l_654.s14224554)).s2 , (((safe_rshift_func_int16_t_s_s(0x4502L, (~((~l_524) || ((**l_604) > (((65529UL | (p_35 , (l_579[0] = (safe_sub_func_uint16_t_u_u((safe_div_func_int64_t_s_s(p_795->g_200, 0x55800BD7F486A448L)), (((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(l_661.sab)), 0x42L, (safe_mul_func_uint8_t_u_u(0xFBL, 0L)), p_35.f0, (*p_795->g_21), 0x2CL, ((VECTOR(int8_t, 2))(0x62L)), ((VECTOR(int8_t, 2))(0x61L)), 0x08L, 0x08L, (-10L), 1L, 0L)).sed)).xyxyyyyx)).s7 , p_35.f0)))))) > 0x544D8BF19EBFEB57L) == (-6L))))))) , p_795->g_263.y) > p_795->g_632.y)) , l_664[0][3][0]) && (-1L)) != p_35.f0) == 0x2E5E8521D35F13D9L)));
                    }
                    return l_592;
                }
                if (l_623)
                    continue;
                if ((**p_795->g_305))
                    break;
                for (l_522 = (-2); (l_522 >= (-14)); l_522--)
                { /* block id: 246 */
                    int32_t **l_670[9][10][1] = {{{&l_595},{&l_595},{&l_595},{&l_595},{&l_595},{&l_595},{&l_595},{&l_595},{&l_595},{&l_595}},{{&l_595},{&l_595},{&l_595},{&l_595},{&l_595},{&l_595},{&l_595},{&l_595},{&l_595},{&l_595}},{{&l_595},{&l_595},{&l_595},{&l_595},{&l_595},{&l_595},{&l_595},{&l_595},{&l_595},{&l_595}},{{&l_595},{&l_595},{&l_595},{&l_595},{&l_595},{&l_595},{&l_595},{&l_595},{&l_595},{&l_595}},{{&l_595},{&l_595},{&l_595},{&l_595},{&l_595},{&l_595},{&l_595},{&l_595},{&l_595},{&l_595}},{{&l_595},{&l_595},{&l_595},{&l_595},{&l_595},{&l_595},{&l_595},{&l_595},{&l_595},{&l_595}},{{&l_595},{&l_595},{&l_595},{&l_595},{&l_595},{&l_595},{&l_595},{&l_595},{&l_595},{&l_595}},{{&l_595},{&l_595},{&l_595},{&l_595},{&l_595},{&l_595},{&l_595},{&l_595},{&l_595},{&l_595}},{{&l_595},{&l_595},{&l_595},{&l_595},{&l_595},{&l_595},{&l_595},{&l_595},{&l_595},{&l_595}}};
                    int i, j, k;
                    for (p_795->g_465 = 0; (p_795->g_465 <= 0); p_795->g_465 = safe_add_func_uint64_t_u_u(p_795->g_465, 3))
                    { /* block id: 249 */
                        return l_669;
                    }
                    (*l_595) ^= 0x17BF33D5L;
                    l_671[1] = &p_34;
                    if (l_451[7][4][0])
                        continue;
                }
            }
            for (l_438 = 29; (l_438 > (-19)); l_438--)
            { /* block id: 259 */
                uint8_t **l_686 = &p_795->g_249;
                int32_t l_691 = (-10L);
                l_691 = (safe_div_func_int8_t_s_s(((*p_795->g_21) = (((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(add_sat(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(0x8FL, 0x48L)), 0UL, 255UL)).yxxywwzyxwzxyxyz)))).s05, ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 8))(p_795->g_676.xyxyyxyy)), p_34, ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 16))(p_795->g_677.xzywxzxwzwxxxyzy)).sae7f)), 0x5DL, 0x21L, 4UL)).saf))), 251UL, 0xA7L, 1UL, 0x75L, 0x88L, 0x4AL)).s5 & p_35.f0)), (safe_add_func_uint8_t_u_u((*p_795->g_249), (safe_rshift_func_int16_t_s_s((safe_div_func_int64_t_s_s((~((safe_add_func_int32_t_s_s((&p_795->g_249 != l_686), ((p_795->g_362.s9 = (l_445 = (safe_mul_func_int8_t_s_s(l_512[3][2][1], (((safe_mod_func_int32_t_s_s((**p_795->g_111), ((*l_595) = ((VECTOR(int32_t, 2))(clz(((VECTOR(int32_t, 4))(0x06F90116L, (-1L), 0x6622210AL, 1L)).even))).hi))) && (p_32 != p_32)) || 0x29565E50A69BFF10L))))) < p_34))) | l_691)), 0x0756ECCF8C259F51L)), l_692))))));
                return l_669;
            }
        }
    }
    else
    { /* block id: 268 */
        int32_t *l_693 = &l_451[9][4][2];
        int32_t *l_694 = (void*)0;
        int32_t *l_695 = &p_795->g_56;
        int32_t *l_696 = &p_795->g_56;
        int32_t l_697[1][3];
        int32_t *l_698 = &l_445;
        int32_t *l_699 = (void*)0;
        int32_t *l_700 = &l_697[0][1];
        int32_t *l_701[10][6][3] = {{{&l_697[0][0],(void*)0,&l_451[6][2][1]},{&l_697[0][0],(void*)0,&l_451[6][2][1]},{&l_697[0][0],(void*)0,&l_451[6][2][1]},{&l_697[0][0],(void*)0,&l_451[6][2][1]},{&l_697[0][0],(void*)0,&l_451[6][2][1]},{&l_697[0][0],(void*)0,&l_451[6][2][1]}},{{&l_697[0][0],(void*)0,&l_451[6][2][1]},{&l_697[0][0],(void*)0,&l_451[6][2][1]},{&l_697[0][0],(void*)0,&l_451[6][2][1]},{&l_697[0][0],(void*)0,&l_451[6][2][1]},{&l_697[0][0],(void*)0,&l_451[6][2][1]},{&l_697[0][0],(void*)0,&l_451[6][2][1]}},{{&l_697[0][0],(void*)0,&l_451[6][2][1]},{&l_697[0][0],(void*)0,&l_451[6][2][1]},{&l_697[0][0],(void*)0,&l_451[6][2][1]},{&l_697[0][0],(void*)0,&l_451[6][2][1]},{&l_697[0][0],(void*)0,&l_451[6][2][1]},{&l_697[0][0],(void*)0,&l_451[6][2][1]}},{{&l_697[0][0],(void*)0,&l_451[6][2][1]},{&l_697[0][0],(void*)0,&l_451[6][2][1]},{&l_697[0][0],(void*)0,&l_451[6][2][1]},{&l_697[0][0],(void*)0,&l_451[6][2][1]},{&l_697[0][0],(void*)0,&l_451[6][2][1]},{&l_697[0][0],(void*)0,&l_451[6][2][1]}},{{&l_697[0][0],(void*)0,&l_451[6][2][1]},{&l_697[0][0],(void*)0,&l_451[6][2][1]},{&l_697[0][0],(void*)0,&l_451[6][2][1]},{&l_697[0][0],(void*)0,&l_451[6][2][1]},{&l_697[0][0],(void*)0,&l_451[6][2][1]},{&l_697[0][0],(void*)0,&l_451[6][2][1]}},{{&l_697[0][0],(void*)0,&l_451[6][2][1]},{&l_697[0][0],(void*)0,&l_451[6][2][1]},{&l_697[0][0],(void*)0,&l_451[6][2][1]},{&l_697[0][0],(void*)0,&l_451[6][2][1]},{&l_697[0][0],(void*)0,&l_451[6][2][1]},{&l_697[0][0],(void*)0,&l_451[6][2][1]}},{{&l_697[0][0],(void*)0,&l_451[6][2][1]},{&l_697[0][0],(void*)0,&l_451[6][2][1]},{&l_697[0][0],(void*)0,&l_451[6][2][1]},{&l_697[0][0],(void*)0,&l_451[6][2][1]},{&l_697[0][0],(void*)0,&l_451[6][2][1]},{&l_697[0][0],(void*)0,&l_451[6][2][1]}},{{&l_697[0][0],(void*)0,&l_451[6][2][1]},{&l_697[0][0],(void*)0,&l_451[6][2][1]},{&l_697[0][0],(void*)0,&l_451[6][2][1]},{&l_697[0][0],(void*)0,&l_451[6][2][1]},{&l_697[0][0],(void*)0,&l_451[6][2][1]},{&l_697[0][0],(void*)0,&l_451[6][2][1]}},{{&l_697[0][0],(void*)0,&l_451[6][2][1]},{&l_697[0][0],(void*)0,&l_451[6][2][1]},{&l_697[0][0],(void*)0,&l_451[6][2][1]},{&l_697[0][0],(void*)0,&l_451[6][2][1]},{&l_697[0][0],(void*)0,&l_451[6][2][1]},{&l_697[0][0],(void*)0,&l_451[6][2][1]}},{{&l_697[0][0],(void*)0,&l_451[6][2][1]},{&l_697[0][0],(void*)0,&l_451[6][2][1]},{&l_697[0][0],(void*)0,&l_451[6][2][1]},{&l_697[0][0],(void*)0,&l_451[6][2][1]},{&l_697[0][0],(void*)0,&l_451[6][2][1]},{&l_697[0][0],(void*)0,&l_451[6][2][1]}}};
        int16_t l_702 = (-5L);
        int i, j, k;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 3; j++)
                l_697[i][j] = 0L;
        }
        ++l_703;
        --l_706;
        for (p_795->g_597 = (-27); (p_795->g_597 >= 16); p_795->g_597++)
        { /* block id: 273 */
            int32_t l_711 = 0x37F0F85DL;
            int32_t l_712 = 1L;
            int32_t l_713 = (-1L);
            int32_t l_714 = 0L;
            int32_t l_715 = (-1L);
            int32_t l_716 = 0L;
            int16_t l_717 = 0x79D8L;
            VECTOR(int32_t, 4) l_718 = (VECTOR(int32_t, 4))(0x320D609FL, (VECTOR(int32_t, 2))(0x320D609FL, 0x1E324C2CL), 0x1E324C2CL);
            VECTOR(uint32_t, 16) l_719 = (VECTOR(uint32_t, 16))(0xB4720A81L, (VECTOR(uint32_t, 4))(0xB4720A81L, (VECTOR(uint32_t, 2))(0xB4720A81L, 0x7AE80537L), 0x7AE80537L), 0x7AE80537L, 0xB4720A81L, 0x7AE80537L, (VECTOR(uint32_t, 2))(0xB4720A81L, 0x7AE80537L), (VECTOR(uint32_t, 2))(0xB4720A81L, 0x7AE80537L), 0xB4720A81L, 0x7AE80537L, 0xB4720A81L, 0x7AE80537L);
            int i;
            l_719.sa++;
            --l_722[5][2];
            (*l_700) |= ((VECTOR(int32_t, 16))(l_725.s4261535532464200)).sa;
        }
        l_726 = (*p_795->g_305);
    }
    return l_727;
}


/* ------------------------------------------ */
/* 
 * reads : p_795->g_45 p_795->g_22 p_795->g_55 p_795->g_92 p_795->g_98 p_795->g_5 p_795->g_105 p_795->g_93 p_795->g_110 p_795->g_111 p_795->g_120 p_795->g_56 p_795->g_47 p_795->g_164 p_795->g_136 p_795->g_234 p_795->g_241 p_795->g_21 p_795->g_263 p_795->g_264 p_795->g_110.f0 p_795->g_224 p_795->g_161 p_795->g_211 p_795->g_280 p_795->g_282 p_795->g_249 p_795->g_305 p_795->g_307 p_795->g_309 p_795->g_323 p_795->g_336 p_795->g_206 p_795->g_358 p_795->g_360 p_795->g_362 p_795->g_154 p_795->g_359 p_795->g_392 p_795->g_310 p_795->g_401 p_795->g_228 p_795->g_423 p_795->g_428 p_795->g_430
 * writes: p_795->g_22 p_795->g_56 p_795->g_93 p_795->g_105 p_795->g_120 p_795->g_136 p_795->g_164 p_795->g_234 p_795->g_5 p_795->g_249 p_795->g_262 p_795->g_211 p_795->g_224 p_795->g_308 p_795->g_323 p_795->g_359 p_795->g_110.f0 p_795->g_393 p_795->g_161
 */
int32_t * func_37(int32_t * p_38, uint32_t  p_39, uint16_t  p_40, int8_t * p_41, int8_t * p_42, struct S3 * p_795)
{ /* block id: 10 */
    int8_t l_58 = 0x1EL;
    int8_t l_65 = 0x33L;
    int32_t *l_71 = &p_795->g_56;
    int32_t l_101[6] = {0x293E9D6AL,(-1L),0x293E9D6AL,0x293E9D6AL,(-1L),0x293E9D6AL};
    union U2 *l_227 = &p_795->g_228;
    int16_t *l_246[10][1] = {{&p_795->g_161[0][0]},{&p_795->g_161[0][0]},{&p_795->g_161[0][0]},{&p_795->g_161[0][0]},{&p_795->g_161[0][0]},{&p_795->g_161[0][0]},{&p_795->g_161[0][0]},{&p_795->g_161[0][0]},{&p_795->g_161[0][0]},{&p_795->g_161[0][0]}};
    union U1 l_255 = {-5L};
    VECTOR(uint64_t, 16) l_278 = (VECTOR(uint64_t, 16))(0x4CB03ED47F7B9D44L, (VECTOR(uint64_t, 4))(0x4CB03ED47F7B9D44L, (VECTOR(uint64_t, 2))(0x4CB03ED47F7B9D44L, 18446744073709551612UL), 18446744073709551612UL), 18446744073709551612UL, 0x4CB03ED47F7B9D44L, 18446744073709551612UL, (VECTOR(uint64_t, 2))(0x4CB03ED47F7B9D44L, 18446744073709551612UL), (VECTOR(uint64_t, 2))(0x4CB03ED47F7B9D44L, 18446744073709551612UL), 0x4CB03ED47F7B9D44L, 18446744073709551612UL, 0x4CB03ED47F7B9D44L, 18446744073709551612UL);
    union U0 l_343 = {4294967295UL};
    VECTOR(int64_t, 8) l_347 = (VECTOR(int64_t, 8))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 1L), 1L), 1L, (-1L), 1L);
    int16_t **l_348 = &p_795->g_310[1];
    int32_t *l_353 = &l_101[0];
    VECTOR(int32_t, 2) l_357 = (VECTOR(int32_t, 2))(0x1D5573BAL, 0x7F68F9FBL);
    VECTOR(int64_t, 16) l_378 = (VECTOR(int64_t, 16))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 0x5CB66975232A7D65L), 0x5CB66975232A7D65L), 0x5CB66975232A7D65L, 1L, 0x5CB66975232A7D65L, (VECTOR(int64_t, 2))(1L, 0x5CB66975232A7D65L), (VECTOR(int64_t, 2))(1L, 0x5CB66975232A7D65L), 1L, 0x5CB66975232A7D65L, 1L, 0x5CB66975232A7D65L);
    uint16_t l_408 = 0UL;
    int64_t l_414 = 0x0B1D8BA16A382712L;
    int8_t l_415 = 0x09L;
    int8_t l_424 = 0x02L;
    int i, j;
    if (l_58)
    { /* block id: 11 */
        int32_t *l_66 = &p_795->g_56;
        int32_t **l_94 = &l_66;
        int32_t **l_95 = &l_71;
        (*p_795->g_92) = func_59(l_65, l_66, p_41, (255UL < ((*p_41) |= (safe_sub_func_int16_t_s_s((safe_sub_func_int64_t_s_s(0x3AB22BEB855BD1B8L, (((&l_58 != p_42) != p_40) ^ p_795->g_45.w))), 0x0404L)))), l_71, p_795);
        (*l_95) = ((*l_94) = (void*)0);
        (*l_95) = l_71;
    }
    else
    { /* block id: 23 */
        int8_t l_102[8][5] = {{0x45L,0x14L,0x14L,0x45L,0x21L},{0x45L,0x14L,0x14L,0x45L,0x21L},{0x45L,0x14L,0x14L,0x45L,0x21L},{0x45L,0x14L,0x14L,0x45L,0x21L},{0x45L,0x14L,0x14L,0x45L,0x21L},{0x45L,0x14L,0x14L,0x45L,0x21L},{0x45L,0x14L,0x14L,0x45L,0x21L},{0x45L,0x14L,0x14L,0x45L,0x21L}};
        int32_t l_103 = 0L;
        int32_t *l_109 = &p_795->g_56;
        int32_t l_113 = 0L;
        int32_t l_114 = 0x4023D1C5L;
        int32_t l_115 = (-9L);
        int32_t l_116 = (-6L);
        int32_t l_117 = 1L;
        int32_t l_118 = (-5L);
        int32_t l_119 = 0L;
        int16_t *l_177 = &p_795->g_161[2][0];
        int i, j;
        if ((safe_rshift_func_int16_t_s_u((p_795->g_98 , p_795->g_5), 1)))
        { /* block id: 24 */
            int32_t *l_99 = &p_795->g_56;
            int32_t *l_100[6][2][2] = {{{&p_795->g_56,&p_795->g_56},{&p_795->g_56,&p_795->g_56}},{{&p_795->g_56,&p_795->g_56},{&p_795->g_56,&p_795->g_56}},{{&p_795->g_56,&p_795->g_56},{&p_795->g_56,&p_795->g_56}},{{&p_795->g_56,&p_795->g_56},{&p_795->g_56,&p_795->g_56}},{{&p_795->g_56,&p_795->g_56},{&p_795->g_56,&p_795->g_56}},{{&p_795->g_56,&p_795->g_56},{&p_795->g_56,&p_795->g_56}}};
            int i, j, k;
            p_795->g_105++;
        }
        else
        { /* block id: 26 */
            int8_t *l_108[3];
            int32_t *l_112[6][10][4] = {{{&l_101[0],&l_101[0],&l_101[2],&l_103},{&l_101[0],&l_101[0],&l_101[2],&l_103},{&l_101[0],&l_101[0],&l_101[2],&l_103},{&l_101[0],&l_101[0],&l_101[2],&l_103},{&l_101[0],&l_101[0],&l_101[2],&l_103},{&l_101[0],&l_101[0],&l_101[2],&l_103},{&l_101[0],&l_101[0],&l_101[2],&l_103},{&l_101[0],&l_101[0],&l_101[2],&l_103},{&l_101[0],&l_101[0],&l_101[2],&l_103},{&l_101[0],&l_101[0],&l_101[2],&l_103}},{{&l_101[0],&l_101[0],&l_101[2],&l_103},{&l_101[0],&l_101[0],&l_101[2],&l_103},{&l_101[0],&l_101[0],&l_101[2],&l_103},{&l_101[0],&l_101[0],&l_101[2],&l_103},{&l_101[0],&l_101[0],&l_101[2],&l_103},{&l_101[0],&l_101[0],&l_101[2],&l_103},{&l_101[0],&l_101[0],&l_101[2],&l_103},{&l_101[0],&l_101[0],&l_101[2],&l_103},{&l_101[0],&l_101[0],&l_101[2],&l_103},{&l_101[0],&l_101[0],&l_101[2],&l_103}},{{&l_101[0],&l_101[0],&l_101[2],&l_103},{&l_101[0],&l_101[0],&l_101[2],&l_103},{&l_101[0],&l_101[0],&l_101[2],&l_103},{&l_101[0],&l_101[0],&l_101[2],&l_103},{&l_101[0],&l_101[0],&l_101[2],&l_103},{&l_101[0],&l_101[0],&l_101[2],&l_103},{&l_101[0],&l_101[0],&l_101[2],&l_103},{&l_101[0],&l_101[0],&l_101[2],&l_103},{&l_101[0],&l_101[0],&l_101[2],&l_103},{&l_101[0],&l_101[0],&l_101[2],&l_103}},{{&l_101[0],&l_101[0],&l_101[2],&l_103},{&l_101[0],&l_101[0],&l_101[2],&l_103},{&l_101[0],&l_101[0],&l_101[2],&l_103},{&l_101[0],&l_101[0],&l_101[2],&l_103},{&l_101[0],&l_101[0],&l_101[2],&l_103},{&l_101[0],&l_101[0],&l_101[2],&l_103},{&l_101[0],&l_101[0],&l_101[2],&l_103},{&l_101[0],&l_101[0],&l_101[2],&l_103},{&l_101[0],&l_101[0],&l_101[2],&l_103},{&l_101[0],&l_101[0],&l_101[2],&l_103}},{{&l_101[0],&l_101[0],&l_101[2],&l_103},{&l_101[0],&l_101[0],&l_101[2],&l_103},{&l_101[0],&l_101[0],&l_101[2],&l_103},{&l_101[0],&l_101[0],&l_101[2],&l_103},{&l_101[0],&l_101[0],&l_101[2],&l_103},{&l_101[0],&l_101[0],&l_101[2],&l_103},{&l_101[0],&l_101[0],&l_101[2],&l_103},{&l_101[0],&l_101[0],&l_101[2],&l_103},{&l_101[0],&l_101[0],&l_101[2],&l_103},{&l_101[0],&l_101[0],&l_101[2],&l_103}},{{&l_101[0],&l_101[0],&l_101[2],&l_103},{&l_101[0],&l_101[0],&l_101[2],&l_103},{&l_101[0],&l_101[0],&l_101[2],&l_103},{&l_101[0],&l_101[0],&l_101[2],&l_103},{&l_101[0],&l_101[0],&l_101[2],&l_103},{&l_101[0],&l_101[0],&l_101[2],&l_103},{&l_101[0],&l_101[0],&l_101[2],&l_103},{&l_101[0],&l_101[0],&l_101[2],&l_103},{&l_101[0],&l_101[0],&l_101[2],&l_103},{&l_101[0],&l_101[0],&l_101[2],&l_103}}};
            VECTOR(int16_t, 8) l_133 = (VECTOR(int16_t, 8))((-7L), (VECTOR(int16_t, 4))((-7L), (VECTOR(int16_t, 2))((-7L), (-1L)), (-1L)), (-1L), (-7L), (-1L));
            int32_t *l_134 = (void*)0;
            int32_t *l_135 = &p_795->g_136;
            int16_t *l_137 = (void*)0;
            int16_t *l_138 = (void*)0;
            int16_t *l_139 = (void*)0;
            int16_t *l_140 = (void*)0;
            int16_t *l_141 = (void*)0;
            int16_t *l_142 = (void*)0;
            int16_t *l_143 = (void*)0;
            int16_t *l_144[5][1];
            int i, j, k;
            for (i = 0; i < 3; i++)
                l_108[i] = (void*)0;
            for (i = 0; i < 5; i++)
            {
                for (j = 0; j < 1; j++)
                    l_144[i][j] = (void*)0;
            }
            (*p_795->g_111) = func_59((&l_103 == (void*)0), func_59(p_40, (*p_795->g_92), l_108[1], p_40, l_109, p_795), (p_795->g_110 , &l_102[2][3]), p_39, p_38, p_795);
            --p_795->g_120;
            l_101[2] ^= (((safe_mul_func_uint8_t_u_u(((safe_lshift_func_int16_t_s_s(((safe_rshift_func_int8_t_s_u(((*p_42) == (*l_71)), 1)) < ((*p_42) | 1UL)), ((((*l_109) > p_40) > (safe_lshift_func_uint16_t_u_s(0UL, p_795->g_105))) != (((safe_mul_func_int16_t_s_s(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(l_133.s5206)).z, (l_119 = (((VECTOR(int32_t, 4))(((*l_135) = ((p_41 != (void*)0) >= 0x294E6100BB5F2842L)), 6L, (-1L), 0x74962EC1L)).x , 0x7180L)), ((VECTOR(int16_t, 4))(0x4104L)), (-9L), (-4L), ((VECTOR(int16_t, 8))(0x4980L)))).lo)).s4, p_795->g_56)) && p_40) ^ GROUP_DIVERGE(1, 1))))) > p_795->g_47.s4), 0x66L)) > (*p_41)) & 3L);
        }
        for (l_58 = 0; (l_58 <= (-11)); --l_58)
        { /* block id: 35 */
            int64_t l_173[1];
            int32_t l_198 = (-4L);
            int32_t l_199 = 0x0C781C0EL;
            VECTOR(int64_t, 2) l_209 = (VECTOR(int64_t, 2))((-1L), 0x4840841C12841510L);
            int i;
            for (i = 0; i < 1; i++)
                l_173[i] = 0x111EF9817D95232DL;
            for (l_114 = (-10); (l_114 <= (-18)); l_114 = safe_sub_func_int8_t_s_s(l_114, 7))
            { /* block id: 38 */
                uint32_t l_176 = 0xA70F6C1FL;
                int16_t *l_180 = (void*)0;
                int32_t l_181 = 0x36B91A3FL;
                int32_t l_183 = 0x029CE55DL;
                int32_t l_196 = 0L;
                int32_t l_197 = 0x37D9CE7FL;
                for (l_119 = 0; (l_119 != (-17)); --l_119)
                { /* block id: 41 */
                    uint16_t l_151 = 65532UL;
                    int32_t *l_155 = &l_103;
                    int32_t *l_156 = &p_795->g_56;
                    int32_t *l_157 = &l_101[3];
                    int32_t *l_158[5];
                    int i;
                    for (i = 0; i < 5; i++)
                        l_158[i] = &l_117;
                    --l_151;
                    if (p_40)
                        continue;
                    --p_795->g_164;
                }
                for (p_795->g_22 = 0; (p_795->g_22 <= (-29)); p_795->g_22 = safe_sub_func_int64_t_s_s(p_795->g_22, 3))
                { /* block id: 48 */
                    int32_t *l_174 = &l_116;
                    int32_t *l_182 = (void*)0;
                    int32_t *l_184 = &l_113;
                    int32_t *l_185 = &l_101[2];
                    int32_t *l_186 = &l_181;
                    int32_t *l_187 = &p_795->g_56;
                    int32_t *l_188 = (void*)0;
                    int32_t *l_189 = &l_118;
                    int32_t *l_190 = &l_116;
                    int32_t *l_191 = (void*)0;
                    int32_t *l_192 = &l_117;
                    int32_t *l_193 = (void*)0;
                    int32_t *l_194 = &l_115;
                    int32_t *l_195[3];
                    int i;
                    for (i = 0; i < 3; i++)
                        l_195[i] = &l_181;
                    (1 + 1);
                }
            }
        }
    }
    for (p_795->g_136 = 3; (p_795->g_136 == (-29)); p_795->g_136 = safe_sub_func_uint16_t_u_u(p_795->g_136, 3))
    { /* block id: 77 */
        union U2 *l_229[3][8] = {{&p_795->g_228,&p_795->g_228,(void*)0,&p_795->g_228,&p_795->g_228,&p_795->g_228,&p_795->g_228,(void*)0},{&p_795->g_228,&p_795->g_228,(void*)0,&p_795->g_228,&p_795->g_228,&p_795->g_228,&p_795->g_228,(void*)0},{&p_795->g_228,&p_795->g_228,(void*)0,&p_795->g_228,&p_795->g_228,&p_795->g_228,&p_795->g_228,(void*)0}};
        int32_t *l_230 = &p_795->g_56;
        int32_t *l_231 = &l_101[3];
        int32_t *l_232 = &p_795->g_56;
        int32_t *l_233[8] = {&l_101[4],&l_101[4],&l_101[4],&l_101[4],&l_101[4],&l_101[4],&l_101[4],&l_101[4]};
        uint8_t *l_244 = &p_795->g_5;
        int16_t *l_245 = &p_795->g_161[1][0];
        int16_t **l_247 = &l_246[0][0];
        uint8_t **l_248[1];
        uint32_t l_250 = 8UL;
        uint64_t l_251 = 6UL;
        uint32_t l_252 = 1UL;
        int i, j;
        for (i = 0; i < 1; i++)
            l_248[i] = &l_244;
        l_229[0][1] = l_227;
        ++p_795->g_234[2];
        l_251 = (safe_sub_func_int64_t_s_s((&l_58 == ((safe_rshift_func_uint8_t_u_s((((VECTOR(uint32_t, 4))(rhadd(((VECTOR(uint32_t, 16))(p_795->g_241.wyxwzyzxwyxyzywz)).sf8a9, ((VECTOR(uint32_t, 16))((safe_sub_func_int32_t_s_s(((*l_232) = (*l_230)), (p_38 == p_38))), 0UL, (p_795->g_120 && (((l_245 = (((*l_244) &= p_39) , l_245)) == ((*l_247) = l_246[0][0])) && (((((p_795->g_249 = &p_795->g_5) == &p_795->g_5) < GROUP_DIVERGE(0, 1)) , 4294967293UL) && p_39))), ((VECTOR(uint32_t, 4))(7UL)), 0UL, ((VECTOR(uint32_t, 2))(9UL)), ((VECTOR(uint32_t, 4))(8UL)), 0x8F840392L, 4294967295UL)).s8d6d))).x >= p_40), (*p_795->g_21))) , &p_795->g_22)), l_250));
        l_252 |= ((*p_795->g_93) = p_39);
    }
    if ((*p_795->g_93))
    { /* block id: 89 */
        int32_t l_258 = 8L;
        int64_t *l_261 = &p_795->g_262;
        VECTOR(int64_t, 16) l_265 = (VECTOR(int64_t, 16))(6L, (VECTOR(int64_t, 4))(6L, (VECTOR(int64_t, 2))(6L, 2L), 2L), 2L, 6L, 2L, (VECTOR(int64_t, 2))(6L, 2L), (VECTOR(int64_t, 2))(6L, 2L), 6L, 2L, 6L, 2L);
        int32_t l_272[6][5] = {{(-1L),(-1L),0x7EAB3DE2L,(-3L),0L},{(-1L),(-1L),0x7EAB3DE2L,(-3L),0L},{(-1L),(-1L),0x7EAB3DE2L,(-3L),0L},{(-1L),(-1L),0x7EAB3DE2L,(-3L),0L},{(-1L),(-1L),0x7EAB3DE2L,(-3L),0L},{(-1L),(-1L),0x7EAB3DE2L,(-3L),0L}};
        VECTOR(uint64_t, 2) l_281 = (VECTOR(uint64_t, 2))(18446744073709551615UL, 0x946B5267486EB961L);
        VECTOR(uint8_t, 16) l_346 = (VECTOR(uint8_t, 16))(0xDBL, (VECTOR(uint8_t, 4))(0xDBL, (VECTOR(uint8_t, 2))(0xDBL, 0UL), 0UL), 0UL, 0xDBL, 0UL, (VECTOR(uint8_t, 2))(0xDBL, 0UL), (VECTOR(uint8_t, 2))(0xDBL, 0UL), 0xDBL, 0UL, 0xDBL, 0UL);
        VECTOR(int32_t, 8) l_349 = (VECTOR(int32_t, 8))(0x0E49BA46L, (VECTOR(int32_t, 4))(0x0E49BA46L, (VECTOR(int32_t, 2))(0x0E49BA46L, 1L), 1L), 1L, 0x0E49BA46L, 1L);
        int32_t *l_355 = (void*)0;
        VECTOR(uint8_t, 2) l_361 = (VECTOR(uint8_t, 2))(0xFBL, 0xF2L);
        VECTOR(uint8_t, 2) l_363 = (VECTOR(uint8_t, 2))(0x6AL, 0xA7L);
        VECTOR(int32_t, 8) l_377 = (VECTOR(int32_t, 8))(0x2D5CFDD4L, (VECTOR(int32_t, 4))(0x2D5CFDD4L, (VECTOR(int32_t, 2))(0x2D5CFDD4L, (-1L)), (-1L)), (-1L), 0x2D5CFDD4L, (-1L));
        uint16_t *l_400 = (void*)0;
        uint16_t **l_399 = &l_400;
        int32_t *l_402 = &p_795->g_56;
        int32_t *l_403 = (void*)0;
        int32_t *l_404 = &l_272[0][4];
        int32_t *l_405 = (void*)0;
        int32_t *l_406 = &l_101[2];
        int32_t *l_407[1][4][4] = {{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}}};
        int i, j, k;
        if ((((safe_rshift_func_uint16_t_u_u(p_795->g_120, 9)) < (!(p_795->g_22 <= (p_39 >= ((VECTOR(uint32_t, 8))(mad_sat(((VECTOR(uint32_t, 4))((((((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))(0x616ECF5ED426F942L, 0x4968B5351F7D0607L)).yxxyxyyy)).s7 && (l_255 , (safe_div_func_uint32_t_u_u(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(rotate(((VECTOR(uint32_t, 4))(l_258, (safe_mod_func_int64_t_s_s(((*l_261) = p_39), (((VECTOR(int64_t, 4))(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 8))(rhadd(((VECTOR(int64_t, 4))(max(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))(min(((VECTOR(int64_t, 4))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 4),((VECTOR(int64_t, 16))(((((VECTOR(int32_t, 2))((-1L), 0x70323A82L)).hi , ((VECTOR(uint16_t, 4))(p_795->g_263.xxzz)).w) ^ l_258), ((VECTOR(int64_t, 2))(p_795->g_264.sa0)), (-10L), 0x4F4323D4C4BB440DL, ((VECTOR(int64_t, 4))(l_265.s51c7)), (p_795->g_110.f0 || 0x476EF8A6834DD0C7L), 0x0D87D5FD9AC3D867L, 0x24F0F99F4568527EL, p_795->g_241.z, p_795->g_224[2], 1L, 0L)).sed38, ((VECTOR(int64_t, 4))(1L)), ((VECTOR(int64_t, 4))((-1L)))))).odd, (int64_t)0x142405EA537F39B1L))), 0L, p_40, p_40, ((VECTOR(int64_t, 2))(0x27EB5314A3952FBAL)), 0L)).even)), ((VECTOR(int64_t, 4))(0x48AC1276B3610BE1L))))).xxyzyywx, ((VECTOR(int64_t, 8))((-9L)))))).s4612442263111253)))))).sff3a)).w | FAKE_DIVERGE(p_795->global_0_offset, get_global_id(0), 10)))), 0xAAB5558DL, 0x0F45F9F5L)).even, ((VECTOR(uint32_t, 2))(1UL))))), 4294967295UL, 4294967295UL)).y, p_795->g_161[2][0])))) , 250UL) , 0x69A2AF9DL), 3UL, 4294967287UL, 4294967295UL)).wyxyzzyw, ((VECTOR(uint32_t, 8))(0x2146068DL)), ((VECTOR(uint32_t, 8))(0x8584AD03L))))).s7)))) & 0x2C1702F4191A83F4L))
        { /* block id: 91 */
            int64_t l_269 = 0L;
            uint32_t *l_274 = (void*)0;
            uint32_t **l_273[6][2] = {{&l_274,&l_274},{&l_274,&l_274},{&l_274,&l_274},{&l_274,&l_274},{&l_274,&l_274},{&l_274,&l_274}};
            int32_t l_300 = 0x588E89CEL;
            int32_t l_303 = 0x0EFDDAB4L;
            int32_t *l_326[2];
            int32_t l_327 = 0L;
            uint32_t l_328 = 0x3AD7C64DL;
            VECTOR(int32_t, 4) l_333 = (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x7B5A121EL), 0x7B5A121EL);
            int i, j;
            for (i = 0; i < 2; i++)
                l_326[i] = &l_101[0];
            for (p_795->g_211 = 0; (p_795->g_211 < 51); p_795->g_211 = safe_add_func_int32_t_s_s(p_795->g_211, 6))
            { /* block id: 94 */
                uint8_t l_268[6] = {0x05L,0x05L,0x05L,0x05L,0x05L,0x05L};
                VECTOR(uint32_t, 2) l_279 = (VECTOR(uint32_t, 2))(0xE6FC1642L, 4294967288UL);
                int32_t **l_306 = &p_795->g_93;
                int32_t l_320 = 0x78B39116L;
                int32_t l_322 = 0x5D7587FCL;
                int i;
                (*p_795->g_93) = (l_268[5] , l_269);
                for (l_58 = (-2); (l_58 >= (-14)); l_58 = safe_sub_func_uint8_t_u_u(l_58, 8))
                { /* block id: 98 */
                    uint32_t ***l_275 = &l_273[4][0];
                    uint64_t *l_283 = &p_795->g_224[4];
                    int32_t l_301 = 0x429CBB98L;
                    uint16_t *l_302[6][1] = {{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}};
                    int32_t l_319 = 1L;
                    int i, j;
                    l_272[0][4] ^= (((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(0x20A7L, 65535UL)).yyyy)).w , (p_40 && (p_39 != (*p_795->g_55))));
                    (*l_275) = l_273[4][0];
                    (*p_795->g_93) = (safe_mul_func_int8_t_s_s((((p_795->g_234[2] | p_40) >= l_265.s5) && (((*l_283) = ((VECTOR(uint64_t, 4))(mad_hi(((VECTOR(uint64_t, 4))(hadd(((VECTOR(uint64_t, 2))(0x1AA5502123F75200L, 0x31EDF93BD74A38D7L)).xxyx, ((VECTOR(uint64_t, 2))(abs(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 8))(add_sat(((VECTOR(uint64_t, 16))(l_278.s9b00b315bcc31c59)).odd, ((VECTOR(uint64_t, 4))(upsample(((VECTOR(uint32_t, 8))(4294967294UL, ((VECTOR(uint32_t, 2))(l_279.xx)), ((VECTOR(uint32_t, 2))(0x355FB1D9L, 0x5290A3C8L)), p_39, 0xAB6EC9F7L, 0x92D6E2ABL)).hi, ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(p_795->g_280.zwxw)).zxxzyxxy)).even))).yzwxwzxw))).s70))))).yyxy))), ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))(l_281.xxxyxxyy)).s1260221624365252)).s3faf, ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 16))(0xFE7F203773B88732L, ((VECTOR(uint64_t, 2))(0x2B119D4D78289562L, 1UL)), ((VECTOR(uint64_t, 8))(p_795->g_282.xwwyyzww)), 0x1178EC09F5A178EDL, ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(0x069F1B75C7D3D4D4L, 18446744073709551614UL)).xxyyyxyxxxxxyyyx)).sdd14)))).sf1a5))))).z) , 5UL)), ((VECTOR(uint8_t, 8))(((*p_795->g_249) ^= (safe_add_func_uint8_t_u_u((((safe_add_func_uint16_t_u_u((+(l_303 = ((((p_40 >= ((safe_mul_func_uint8_t_u_u(((p_40 && p_39) , (safe_mul_func_uint16_t_u_u((~((safe_rshift_func_int8_t_s_s((safe_add_func_uint32_t_u_u((l_300 &= (safe_rshift_func_uint16_t_u_u(((safe_sub_func_int8_t_s_s(0x24L, (*p_795->g_21))) , 65527UL), l_279.x))), l_269)), l_301)) != FAKE_DIVERGE(p_795->local_0_offset, get_local_id(0), 10))), p_795->g_241.z))), (*p_795->g_21))) < 8UL)) && l_265.s1) >= p_795->g_110.f0) , p_40))), p_795->g_264.s9)) | 1L) != 0L), GROUP_DIVERGE(0, 1)))), 0x95L, 0x69L, ((VECTOR(uint8_t, 4))(0UL)), 251UL)).s5));
                    if ((*p_795->g_55))
                    { /* block id: 106 */
                        (*p_795->g_305) = (*p_795->g_92);
                        if ((**p_795->g_305))
                            break;
                    }
                    else
                    { /* block id: 109 */
                        int32_t *l_311 = &l_303;
                        int32_t *l_312 = &l_272[0][4];
                        int32_t *l_313 = &p_795->g_56;
                        int32_t *l_314 = &l_101[2];
                        int32_t *l_315 = &l_101[4];
                        int32_t *l_316 = &l_303;
                        int32_t *l_317 = &p_795->g_56;
                        int32_t *l_318[6][8] = {{&l_303,&l_300,&l_300,&l_303,&l_301,&l_272[5][0],&l_272[5][0],&l_301},{&l_303,&l_300,&l_300,&l_303,&l_301,&l_272[5][0],&l_272[5][0],&l_301},{&l_303,&l_300,&l_300,&l_303,&l_301,&l_272[5][0],&l_272[5][0],&l_301},{&l_303,&l_300,&l_300,&l_303,&l_301,&l_272[5][0],&l_272[5][0],&l_301},{&l_303,&l_300,&l_300,&l_303,&l_301,&l_272[5][0],&l_272[5][0],&l_301},{&l_303,&l_300,&l_300,&l_303,&l_301,&l_272[5][0],&l_272[5][0],&l_301}};
                        int8_t l_321 = (-1L);
                        int i, j;
                        (*p_795->g_307) = l_306;
                        (**l_306) = ((p_40 , p_795->g_309) != &l_246[0][0]);
                        (*p_795->g_93) = 1L;
                        --p_795->g_323;
                    }
                }
            }
            ++l_328;
            (*p_795->g_93) |= (safe_sub_func_int32_t_s_s(((VECTOR(int32_t, 8))(l_333.yyyyxywx)).s5, (safe_sub_func_uint16_t_u_u((p_795->g_336 != &p_795->g_337), (safe_add_func_uint64_t_u_u((((safe_rshift_func_int8_t_s_s(((l_343 , (void*)0) != (l_348 = ((((safe_mul_func_uint8_t_u_u((1L <= (l_265.s8 && 0x3261D0B0DE6DA102L)), ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(mad_hi(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 8))(l_346.s25f3e0d0)).hi)), ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 8))((p_40 <= ((VECTOR(int64_t, 8))(l_347.s27631425)).s4), (p_795->g_241.x >= p_39), ((VECTOR(uint8_t, 2))(0x21L)), 0x72L, ((VECTOR(uint8_t, 2))(248UL)), 0x11L)))).hi, ((VECTOR(uint8_t, 4))(255UL))))), ((VECTOR(uint8_t, 2))(0x1AL)), 0x64L, 0x5EL)).s5)) , (*p_795->g_21)) != 0x71L) , &p_795->g_310[1]))), 3)) , p_795->g_224[1]) , 18446744073709551613UL), 0x49D35091913B5FB9L))))));
            if (((*p_795->g_55) &= ((VECTOR(int32_t, 4))(mul_hi(((VECTOR(int32_t, 2))(1L, 4L)).yyyx, ((VECTOR(int32_t, 8))(l_349.s71202010)).hi))).y))
            { /* block id: 121 */
                int32_t **l_350 = (void*)0;
                int32_t **l_351[2][1][7] = {{{&p_795->g_93,&l_326[0],&p_795->g_93,&p_795->g_93,&l_326[0],&p_795->g_93,&p_795->g_93}},{{&p_795->g_93,&l_326[0],&p_795->g_93,&p_795->g_93,&l_326[0],&p_795->g_93,&p_795->g_93}}};
                int i, j, k;
                (*p_795->g_92) = (*p_795->g_305);
                return p_38;
            }
            else
            { /* block id: 124 */
                int16_t l_352 = (-1L);
                int32_t **l_354 = (void*)0;
                (*p_795->g_93) = 0L;
                (*p_795->g_93) &= l_352;
                l_355 = ((*p_795->g_206) = l_353);
            }
        }
        else
        { /* block id: 130 */
            int32_t *l_356[8][4] = {{&p_795->g_56,&l_101[2],&l_272[3][3],&l_101[5]},{&p_795->g_56,&l_101[2],&l_272[3][3],&l_101[5]},{&p_795->g_56,&l_101[2],&l_272[3][3],&l_101[5]},{&p_795->g_56,&l_101[2],&l_272[3][3],&l_101[5]},{&p_795->g_56,&l_101[2],&l_272[3][3],&l_101[5]},{&p_795->g_56,&l_101[2],&l_272[3][3],&l_101[5]},{&p_795->g_56,&l_101[2],&l_272[3][3],&l_101[5]},{&p_795->g_56,&l_101[2],&l_272[3][3],&l_101[5]}};
            VECTOR(int8_t, 16) l_370 = (VECTOR(int8_t, 16))(0x05L, (VECTOR(int8_t, 4))(0x05L, (VECTOR(int8_t, 2))(0x05L, 0x66L), 0x66L), 0x66L, 0x05L, 0x66L, (VECTOR(int8_t, 2))(0x05L, 0x66L), (VECTOR(int8_t, 2))(0x05L, 0x66L), 0x05L, 0x66L, 0x05L, 0x66L);
            int32_t **l_383 = &p_795->g_93;
            int32_t ***l_384 = (void*)0;
            int32_t ***l_385 = &p_795->g_308[2][1][1];
            int32_t *l_390 = &p_795->g_110.f0;
            union U1 *l_391[4] = {&p_795->g_110,&p_795->g_110,&p_795->g_110,&p_795->g_110};
            int i, j;
            l_356[4][1] = &l_272[1][2];
            (*p_795->g_358) = (((VECTOR(int32_t, 16))(l_357.yxyyxyxxyxyxyxxy)).sc , &l_227);
            (*p_795->g_392) = ((((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(mad_hi(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(p_795->g_360.s2035)).yxzywxxx)), 255UL, (p_39 == 0L), 0x5CL, ((VECTOR(uint8_t, 2))(l_361.yx)), ((VECTOR(uint8_t, 2))(0x61L, 0x92L)), 255UL)).s2d, ((VECTOR(uint8_t, 4))(mad_sat(((VECTOR(uint8_t, 4))(min(((VECTOR(uint8_t, 2))(1UL, 255UL)).yxxy, ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 16))(rhadd(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(253UL, 0x55L)), ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(p_795->g_362.sd0)), 0x81L, 0x53L)), 0x0AL, 3UL)).s6242006611116475, ((VECTOR(uint8_t, 16))(rotate(((VECTOR(uint8_t, 16))(l_363.yyxxyyxyyyyxxyxy)), ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 16))(abs_diff(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 8))(safe_clamp_func(VECTOR(uint8_t, 8),uint8_t,((VECTOR(uint8_t, 4))((safe_mul_func_uint8_t_u_u((--(*p_795->g_249)), (((((*l_390) ^= (safe_mod_func_int8_t_s_s(((VECTOR(int8_t, 16))(l_370.s78d4e72f83b0de0d)).sc, ((safe_mod_func_uint64_t_u_u(((VECTOR(uint64_t, 16))(0x4B5F1D5E67ACE2E2L, 18446744073709551615UL, (safe_sub_func_int16_t_s_s((safe_rshift_func_int8_t_s_s((((VECTOR(int32_t, 4))(l_377.s3265)).y < (*l_353)), 2)), 65528UL)), ((VECTOR(uint64_t, 8))(abs(((VECTOR(int64_t, 16))(p_795->g_362.s7, 0L, ((VECTOR(int64_t, 8))(l_378.s1736c84c)), (safe_mul_func_uint8_t_u_u((safe_add_func_int8_t_s_s((l_255 , (l_383 != ((*l_385) = &l_71))), (safe_mod_func_int64_t_s_s((safe_div_func_uint64_t_u_u(p_795->g_161[7][0], 0xA3EE318F79F95C6FL)), l_346.s3)))), p_795->g_154)), (-6L), 0x45EBCFD35802B384L, ((VECTOR(int64_t, 2))(0x0473BA1AB9866176L)), 0x1622E40DB038CFD1L)).even))), ((VECTOR(uint64_t, 2))(1UL)), ((VECTOR(uint64_t, 2))(1UL)), 18446744073709551612UL)).sb, p_39)) & p_795->g_362.s6)))) , (void*)0) != (*p_795->g_359)) | (**l_383)))), 0x07L, 252UL, 0xF8L)).zywzwwyy, (uint8_t)1UL, (uint8_t)FAKE_DIVERGE(p_795->group_0_offset, get_group_id(0), 10)))).s2056542733353734)), ((VECTOR(uint8_t, 16))(0xF0L))))).sdf)).xyxxxyxxxxxxxxxx)))))))).odd)))).s42)).yxyx))), ((VECTOR(uint8_t, 4))(255UL)), ((VECTOR(uint8_t, 4))(255UL))))).even, ((VECTOR(uint8_t, 2))(247UL))))), 1UL, 0x4EL)).y ^ p_40) , l_391[2]);
        }
        (*p_795->g_401) &= (safe_mod_func_int8_t_s_s(0x4DL, (4294967291UL | (p_38 == (((~((p_40 , (void*)0) == (void*)0)) , (((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(0x8BL, 0xA3L)).yxxxyxxyyxyxxxxy)).s9 > (((**l_348) |= (safe_lshift_func_uint8_t_u_u((((*l_399) = &p_40) == l_246[0][0]), 4))) && (((*l_353) ^ 0x3FC4L) & 0x43F0ED7406FBEF80L)))) , (void*)0)))));
        l_408++;
    }
    else
    { /* block id: 142 */
        int16_t l_411 = 0x791FL;
        int32_t *l_412 = &p_795->g_56;
        int32_t *l_413[9][2];
        VECTOR(uint32_t, 8) l_416 = (VECTOR(uint32_t, 8))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 9UL), 9UL), 9UL, 1UL, 9UL);
        uint32_t l_425 = 0x3AE3DACBL;
        int i, j;
        for (i = 0; i < 9; i++)
        {
            for (j = 0; j < 2; j++)
                l_413[i][j] = (void*)0;
        }
        l_416.s3--;
        (*l_412) = (((safe_rshift_func_int8_t_s_s(6L, ((*l_227) , (((safe_rshift_func_int8_t_s_u((*p_42), 4)) , 0x20L) & GROUP_DIVERGE(0, 1))))) < ((VECTOR(int16_t, 16))(p_795->g_423.s4556603243353722)).s7) , (+l_424));
        l_425--;
    }
    (*p_795->g_430) = func_59((**p_795->g_309), (p_795->g_428 , p_38), p_41, p_40, p_38, p_795);
    return (*p_795->g_430);
}


/* ------------------------------------------ */
/* 
 * reads : p_795->g_55 p_795->g_51
 * writes: p_795->g_56
 */
int16_t  func_52(int32_t * p_53, struct S3 * p_795)
{ /* block id: 7 */
    uint8_t l_54 = 0UL;
    (*p_795->g_55) = (l_54 > l_54);
    return p_795->g_51.x;
}


/* ------------------------------------------ */
/* 
 * reads : p_795->g_55
 * writes: p_795->g_56
 */
int32_t * func_59(int16_t  p_60, int32_t * p_61, int8_t * p_62, uint8_t  p_63, int32_t * p_64, struct S3 * p_795)
{ /* block id: 13 */
    uint16_t l_72 = 0xE475L;
    int8_t l_79[10] = {0x54L,0x38L,1L,0x38L,0x54L,0x54L,0x38L,1L,0x38L,0x54L};
    int32_t l_80 = 0x0CE775B4L;
    int32_t *l_81 = &l_80;
    int32_t l_82 = 0x2CC20013L;
    int32_t *l_83 = &l_80;
    int32_t l_84 = 0x5739219EL;
    int32_t *l_85 = (void*)0;
    int32_t *l_86 = &l_84;
    int32_t *l_87[3];
    int64_t l_88 = (-1L);
    uint8_t l_89[2];
    int i;
    for (i = 0; i < 3; i++)
        l_87[i] = &l_80;
    for (i = 0; i < 2; i++)
        l_89[i] = 0x49L;
    ++l_72;
    (*p_795->g_55) = (safe_lshift_func_uint16_t_u_s(l_72, 8));
    l_79[6] = (safe_rshift_func_int8_t_s_s(0x66L, 6));
    --l_89[1];
    return p_61;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S3 c_796;
    struct S3* p_795 = &c_796;
    struct S3 c_797 = {
        0x10L, // p_795->g_3
        &p_795->g_3, // p_795->g_2
        6UL, // p_795->g_5
        0L, // p_795->g_22
        &p_795->g_22, // p_795->g_21
        0x23DFAD5BL, // p_795->g_24
        (void*)0, // p_795->g_36
        (VECTOR(uint16_t, 4))(0xCA8CL, (VECTOR(uint16_t, 2))(0xCA8CL, 65528UL), 65528UL), // p_795->g_45
        (VECTOR(uint16_t, 8))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0UL), 0UL), 0UL, 0UL, 0UL), // p_795->g_47
        (VECTOR(uint16_t, 16))(65533UL, (VECTOR(uint16_t, 4))(65533UL, (VECTOR(uint16_t, 2))(65533UL, 1UL), 1UL), 1UL, 65533UL, 1UL, (VECTOR(uint16_t, 2))(65533UL, 1UL), (VECTOR(uint16_t, 2))(65533UL, 1UL), 65533UL, 1UL, 65533UL, 1UL), // p_795->g_49
        (VECTOR(int16_t, 2))(0x01F9L, 1L), // p_795->g_51
        0x12F3A682L, // p_795->g_56
        &p_795->g_56, // p_795->g_55
        &p_795->g_56, // p_795->g_93
        &p_795->g_93, // p_795->g_92
        {0x5CB2EA73L}, // p_795->g_98
        0x6D785604L, // p_795->g_104
        0UL, // p_795->g_105
        {0x2358A988L}, // p_795->g_110
        &p_795->g_93, // p_795->g_111
        0xA4CC697DL, // p_795->g_120
        0L, // p_795->g_136
        1L, // p_795->g_154
        0x6914191BL, // p_795->g_159
        0x635C7AEBL, // p_795->g_160
        {{0x29DBL},{0x29DBL},{0x29DBL},{0x29DBL},{0x29DBL},{0x29DBL},{0x29DBL},{0x29DBL}}, // p_795->g_161
        (-8L), // p_795->g_162
        5L, // p_795->g_163
        1UL, // p_795->g_164
        0x32F4EEEBA4ED1C8CL, // p_795->g_200
        &p_795->g_93, // p_795->g_206
        4294967292UL, // p_795->g_211
        {0UL,0UL,0UL,0UL,0UL}, // p_795->g_224
        {0}, // p_795->g_228
        {0xF7204BD9L,0xF7204BD9L,0xF7204BD9L}, // p_795->g_234
        (VECTOR(uint32_t, 4))(4294967293UL, (VECTOR(uint32_t, 2))(4294967293UL, 4294967295UL), 4294967295UL), // p_795->g_241
        &p_795->g_5, // p_795->g_249
        6L, // p_795->g_262
        (VECTOR(uint16_t, 4))(0xEFFDL, (VECTOR(uint16_t, 2))(0xEFFDL, 65528UL), 65528UL), // p_795->g_263
        (VECTOR(int64_t, 16))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 0x26FDFF55233B5517L), 0x26FDFF55233B5517L), 0x26FDFF55233B5517L, 1L, 0x26FDFF55233B5517L, (VECTOR(int64_t, 2))(1L, 0x26FDFF55233B5517L), (VECTOR(int64_t, 2))(1L, 0x26FDFF55233B5517L), 1L, 0x26FDFF55233B5517L, 1L, 0x26FDFF55233B5517L), // p_795->g_264
        (VECTOR(uint32_t, 4))(3UL, (VECTOR(uint32_t, 2))(3UL, 0xCECB74F9L), 0xCECB74F9L), // p_795->g_280
        (VECTOR(uint64_t, 4))(0xE0355910F30D5CE5L, (VECTOR(uint64_t, 2))(0xE0355910F30D5CE5L, 0x73A403BB16350558L), 0x73A403BB16350558L), // p_795->g_282
        (void*)0, // p_795->g_304
        &p_795->g_93, // p_795->g_305
        {{{&p_795->g_93,&p_795->g_93,(void*)0,(void*)0,&p_795->g_93,&p_795->g_93},{&p_795->g_93,&p_795->g_93,(void*)0,(void*)0,&p_795->g_93,&p_795->g_93},{&p_795->g_93,&p_795->g_93,(void*)0,(void*)0,&p_795->g_93,&p_795->g_93},{&p_795->g_93,&p_795->g_93,(void*)0,(void*)0,&p_795->g_93,&p_795->g_93},{&p_795->g_93,&p_795->g_93,(void*)0,(void*)0,&p_795->g_93,&p_795->g_93},{&p_795->g_93,&p_795->g_93,(void*)0,(void*)0,&p_795->g_93,&p_795->g_93},{&p_795->g_93,&p_795->g_93,(void*)0,(void*)0,&p_795->g_93,&p_795->g_93}},{{&p_795->g_93,&p_795->g_93,(void*)0,(void*)0,&p_795->g_93,&p_795->g_93},{&p_795->g_93,&p_795->g_93,(void*)0,(void*)0,&p_795->g_93,&p_795->g_93},{&p_795->g_93,&p_795->g_93,(void*)0,(void*)0,&p_795->g_93,&p_795->g_93},{&p_795->g_93,&p_795->g_93,(void*)0,(void*)0,&p_795->g_93,&p_795->g_93},{&p_795->g_93,&p_795->g_93,(void*)0,(void*)0,&p_795->g_93,&p_795->g_93},{&p_795->g_93,&p_795->g_93,(void*)0,(void*)0,&p_795->g_93,&p_795->g_93},{&p_795->g_93,&p_795->g_93,(void*)0,(void*)0,&p_795->g_93,&p_795->g_93}},{{&p_795->g_93,&p_795->g_93,(void*)0,(void*)0,&p_795->g_93,&p_795->g_93},{&p_795->g_93,&p_795->g_93,(void*)0,(void*)0,&p_795->g_93,&p_795->g_93},{&p_795->g_93,&p_795->g_93,(void*)0,(void*)0,&p_795->g_93,&p_795->g_93},{&p_795->g_93,&p_795->g_93,(void*)0,(void*)0,&p_795->g_93,&p_795->g_93},{&p_795->g_93,&p_795->g_93,(void*)0,(void*)0,&p_795->g_93,&p_795->g_93},{&p_795->g_93,&p_795->g_93,(void*)0,(void*)0,&p_795->g_93,&p_795->g_93},{&p_795->g_93,&p_795->g_93,(void*)0,(void*)0,&p_795->g_93,&p_795->g_93}},{{&p_795->g_93,&p_795->g_93,(void*)0,(void*)0,&p_795->g_93,&p_795->g_93},{&p_795->g_93,&p_795->g_93,(void*)0,(void*)0,&p_795->g_93,&p_795->g_93},{&p_795->g_93,&p_795->g_93,(void*)0,(void*)0,&p_795->g_93,&p_795->g_93},{&p_795->g_93,&p_795->g_93,(void*)0,(void*)0,&p_795->g_93,&p_795->g_93},{&p_795->g_93,&p_795->g_93,(void*)0,(void*)0,&p_795->g_93,&p_795->g_93},{&p_795->g_93,&p_795->g_93,(void*)0,(void*)0,&p_795->g_93,&p_795->g_93},{&p_795->g_93,&p_795->g_93,(void*)0,(void*)0,&p_795->g_93,&p_795->g_93}},{{&p_795->g_93,&p_795->g_93,(void*)0,(void*)0,&p_795->g_93,&p_795->g_93},{&p_795->g_93,&p_795->g_93,(void*)0,(void*)0,&p_795->g_93,&p_795->g_93},{&p_795->g_93,&p_795->g_93,(void*)0,(void*)0,&p_795->g_93,&p_795->g_93},{&p_795->g_93,&p_795->g_93,(void*)0,(void*)0,&p_795->g_93,&p_795->g_93},{&p_795->g_93,&p_795->g_93,(void*)0,(void*)0,&p_795->g_93,&p_795->g_93},{&p_795->g_93,&p_795->g_93,(void*)0,(void*)0,&p_795->g_93,&p_795->g_93},{&p_795->g_93,&p_795->g_93,(void*)0,(void*)0,&p_795->g_93,&p_795->g_93}},{{&p_795->g_93,&p_795->g_93,(void*)0,(void*)0,&p_795->g_93,&p_795->g_93},{&p_795->g_93,&p_795->g_93,(void*)0,(void*)0,&p_795->g_93,&p_795->g_93},{&p_795->g_93,&p_795->g_93,(void*)0,(void*)0,&p_795->g_93,&p_795->g_93},{&p_795->g_93,&p_795->g_93,(void*)0,(void*)0,&p_795->g_93,&p_795->g_93},{&p_795->g_93,&p_795->g_93,(void*)0,(void*)0,&p_795->g_93,&p_795->g_93},{&p_795->g_93,&p_795->g_93,(void*)0,(void*)0,&p_795->g_93,&p_795->g_93},{&p_795->g_93,&p_795->g_93,(void*)0,(void*)0,&p_795->g_93,&p_795->g_93}}}, // p_795->g_308
        &p_795->g_308[2][1][1], // p_795->g_307
        {&p_795->g_161[4][0],&p_795->g_161[4][0],&p_795->g_161[4][0]}, // p_795->g_310
        &p_795->g_310[2], // p_795->g_309
        0UL, // p_795->g_323
        &p_795->g_323, // p_795->g_338
        &p_795->g_338, // p_795->g_337
        &p_795->g_337, // p_795->g_336
        (void*)0, // p_795->g_359
        &p_795->g_359, // p_795->g_358
        (VECTOR(uint8_t, 8))(2UL, (VECTOR(uint8_t, 4))(2UL, (VECTOR(uint8_t, 2))(2UL, 246UL), 246UL), 246UL, 2UL, 246UL), // p_795->g_360
        (VECTOR(uint8_t, 16))(0x7CL, (VECTOR(uint8_t, 4))(0x7CL, (VECTOR(uint8_t, 2))(0x7CL, 1UL), 1UL), 1UL, 0x7CL, 1UL, (VECTOR(uint8_t, 2))(0x7CL, 1UL), (VECTOR(uint8_t, 2))(0x7CL, 1UL), 0x7CL, 1UL, 0x7CL, 1UL), // p_795->g_362
        {{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L}}, // p_795->g_394
        {{&p_795->g_394[0],&p_795->g_394[0],&p_795->g_394[0],&p_795->g_394[0],&p_795->g_394[0],&p_795->g_394[0]},{&p_795->g_394[0],&p_795->g_394[0],&p_795->g_394[0],&p_795->g_394[0],&p_795->g_394[0],&p_795->g_394[0]},{&p_795->g_394[0],&p_795->g_394[0],&p_795->g_394[0],&p_795->g_394[0],&p_795->g_394[0],&p_795->g_394[0]},{&p_795->g_394[0],&p_795->g_394[0],&p_795->g_394[0],&p_795->g_394[0],&p_795->g_394[0],&p_795->g_394[0]},{&p_795->g_394[0],&p_795->g_394[0],&p_795->g_394[0],&p_795->g_394[0],&p_795->g_394[0],&p_795->g_394[0]},{&p_795->g_394[0],&p_795->g_394[0],&p_795->g_394[0],&p_795->g_394[0],&p_795->g_394[0],&p_795->g_394[0]},{&p_795->g_394[0],&p_795->g_394[0],&p_795->g_394[0],&p_795->g_394[0],&p_795->g_394[0],&p_795->g_394[0]},{&p_795->g_394[0],&p_795->g_394[0],&p_795->g_394[0],&p_795->g_394[0],&p_795->g_394[0],&p_795->g_394[0]}}, // p_795->g_393
        &p_795->g_393[1][1], // p_795->g_392
        &p_795->g_56, // p_795->g_401
        (VECTOR(int16_t, 8))(0x6FE9L, (VECTOR(int16_t, 4))(0x6FE9L, (VECTOR(int16_t, 2))(0x6FE9L, (-1L)), (-1L)), (-1L), 0x6FE9L, (-1L)), // p_795->g_423
        9L, // p_795->g_428
        {{&p_795->g_93,&p_795->g_93,&p_795->g_93,&p_795->g_93}}, // p_795->g_429
        &p_795->g_93, // p_795->g_430
        {0UL}, // p_795->g_431
        (-1L), // p_795->g_465
        (VECTOR(uint16_t, 2))(65535UL, 9UL), // p_795->g_500
        (VECTOR(uint16_t, 2))(65535UL, 0xF419L), // p_795->g_509
        (VECTOR(int16_t, 4))((-5L), (VECTOR(int16_t, 2))((-5L), (-1L)), (-1L)), // p_795->g_536
        &p_795->g_431, // p_795->g_591
        &p_795->g_591, // p_795->g_590
        4294967295UL, // p_795->g_597
        (VECTOR(uint64_t, 4))(0x5884B1D5239D6D07L, (VECTOR(uint64_t, 2))(0x5884B1D5239D6D07L, 0UL), 0UL), // p_795->g_614
        (void*)0, // p_795->g_616
        &p_795->g_616, // p_795->g_615
        (VECTOR(int32_t, 2))(0x1DEA7533L, 0x62958B64L), // p_795->g_626
        (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x68DD6251L), 0x68DD6251L), 0x68DD6251L, 1L, 0x68DD6251L), // p_795->g_627
        (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 3L), 3L), // p_795->g_632
        (VECTOR(uint8_t, 2))(1UL, 0UL), // p_795->g_676
        (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 255UL), 255UL), // p_795->g_677
        (void*)0, // p_795->g_731
        &p_795->g_56, // p_795->g_733
        {&p_795->g_105,&p_795->g_105,&p_795->g_105}, // p_795->g_745
        {{&p_795->g_105,&p_795->g_105,&p_795->g_105,&p_795->g_105,&p_795->g_105,&p_795->g_105,&p_795->g_105,&p_795->g_105,&p_795->g_105},{&p_795->g_105,&p_795->g_105,&p_795->g_105,&p_795->g_105,&p_795->g_105,&p_795->g_105,&p_795->g_105,&p_795->g_105,&p_795->g_105}}, // p_795->g_746
        (VECTOR(int32_t, 8))(0x040868EBL, (VECTOR(int32_t, 4))(0x040868EBL, (VECTOR(int32_t, 2))(0x040868EBL, 0x2B62ED19L), 0x2B62ED19L), 0x2B62ED19L, 0x040868EBL, 0x2B62ED19L), // p_795->g_751
        (VECTOR(int8_t, 16))(0x07L, (VECTOR(int8_t, 4))(0x07L, (VECTOR(int8_t, 2))(0x07L, 0x5EL), 0x5EL), 0x5EL, 0x07L, 0x5EL, (VECTOR(int8_t, 2))(0x07L, 0x5EL), (VECTOR(int8_t, 2))(0x07L, 0x5EL), 0x07L, 0x5EL, 0x07L, 0x5EL), // p_795->g_775
        (VECTOR(uint32_t, 16))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 0xCBB2DE62L), 0xCBB2DE62L), 0xCBB2DE62L, 4294967295UL, 0xCBB2DE62L, (VECTOR(uint32_t, 2))(4294967295UL, 0xCBB2DE62L), (VECTOR(uint32_t, 2))(4294967295UL, 0xCBB2DE62L), 4294967295UL, 0xCBB2DE62L, 4294967295UL, 0xCBB2DE62L), // p_795->g_779
        sequence_input[get_global_id(0)], // p_795->global_0_offset
        sequence_input[get_global_id(1)], // p_795->global_1_offset
        sequence_input[get_global_id(2)], // p_795->global_2_offset
        sequence_input[get_local_id(0)], // p_795->local_0_offset
        sequence_input[get_local_id(1)], // p_795->local_1_offset
        sequence_input[get_local_id(2)], // p_795->local_2_offset
        sequence_input[get_group_id(0)], // p_795->group_0_offset
        sequence_input[get_group_id(1)], // p_795->group_1_offset
        sequence_input[get_group_id(2)], // p_795->group_2_offset
    };
    c_796 = c_797;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_795);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_795->g_3, "p_795->g_3", print_hash_value);
    transparent_crc(p_795->g_5, "p_795->g_5", print_hash_value);
    transparent_crc(p_795->g_22, "p_795->g_22", print_hash_value);
    transparent_crc(p_795->g_24, "p_795->g_24", print_hash_value);
    transparent_crc(p_795->g_45.x, "p_795->g_45.x", print_hash_value);
    transparent_crc(p_795->g_45.y, "p_795->g_45.y", print_hash_value);
    transparent_crc(p_795->g_45.z, "p_795->g_45.z", print_hash_value);
    transparent_crc(p_795->g_45.w, "p_795->g_45.w", print_hash_value);
    transparent_crc(p_795->g_47.s0, "p_795->g_47.s0", print_hash_value);
    transparent_crc(p_795->g_47.s1, "p_795->g_47.s1", print_hash_value);
    transparent_crc(p_795->g_47.s2, "p_795->g_47.s2", print_hash_value);
    transparent_crc(p_795->g_47.s3, "p_795->g_47.s3", print_hash_value);
    transparent_crc(p_795->g_47.s4, "p_795->g_47.s4", print_hash_value);
    transparent_crc(p_795->g_47.s5, "p_795->g_47.s5", print_hash_value);
    transparent_crc(p_795->g_47.s6, "p_795->g_47.s6", print_hash_value);
    transparent_crc(p_795->g_47.s7, "p_795->g_47.s7", print_hash_value);
    transparent_crc(p_795->g_49.s0, "p_795->g_49.s0", print_hash_value);
    transparent_crc(p_795->g_49.s1, "p_795->g_49.s1", print_hash_value);
    transparent_crc(p_795->g_49.s2, "p_795->g_49.s2", print_hash_value);
    transparent_crc(p_795->g_49.s3, "p_795->g_49.s3", print_hash_value);
    transparent_crc(p_795->g_49.s4, "p_795->g_49.s4", print_hash_value);
    transparent_crc(p_795->g_49.s5, "p_795->g_49.s5", print_hash_value);
    transparent_crc(p_795->g_49.s6, "p_795->g_49.s6", print_hash_value);
    transparent_crc(p_795->g_49.s7, "p_795->g_49.s7", print_hash_value);
    transparent_crc(p_795->g_49.s8, "p_795->g_49.s8", print_hash_value);
    transparent_crc(p_795->g_49.s9, "p_795->g_49.s9", print_hash_value);
    transparent_crc(p_795->g_49.sa, "p_795->g_49.sa", print_hash_value);
    transparent_crc(p_795->g_49.sb, "p_795->g_49.sb", print_hash_value);
    transparent_crc(p_795->g_49.sc, "p_795->g_49.sc", print_hash_value);
    transparent_crc(p_795->g_49.sd, "p_795->g_49.sd", print_hash_value);
    transparent_crc(p_795->g_49.se, "p_795->g_49.se", print_hash_value);
    transparent_crc(p_795->g_49.sf, "p_795->g_49.sf", print_hash_value);
    transparent_crc(p_795->g_51.x, "p_795->g_51.x", print_hash_value);
    transparent_crc(p_795->g_51.y, "p_795->g_51.y", print_hash_value);
    transparent_crc(p_795->g_56, "p_795->g_56", print_hash_value);
    transparent_crc(p_795->g_98.f0, "p_795->g_98.f0", print_hash_value);
    transparent_crc(p_795->g_104, "p_795->g_104", print_hash_value);
    transparent_crc(p_795->g_105, "p_795->g_105", print_hash_value);
    transparent_crc(p_795->g_110.f0, "p_795->g_110.f0", print_hash_value);
    transparent_crc(p_795->g_120, "p_795->g_120", print_hash_value);
    transparent_crc(p_795->g_136, "p_795->g_136", print_hash_value);
    transparent_crc(p_795->g_154, "p_795->g_154", print_hash_value);
    transparent_crc(p_795->g_159, "p_795->g_159", print_hash_value);
    transparent_crc(p_795->g_160, "p_795->g_160", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 1; j++)
        {
            transparent_crc(p_795->g_161[i][j], "p_795->g_161[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_795->g_162, "p_795->g_162", print_hash_value);
    transparent_crc(p_795->g_163, "p_795->g_163", print_hash_value);
    transparent_crc(p_795->g_164, "p_795->g_164", print_hash_value);
    transparent_crc(p_795->g_200, "p_795->g_200", print_hash_value);
    transparent_crc(p_795->g_211, "p_795->g_211", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_795->g_224[i], "p_795->g_224[i]", print_hash_value);

    }
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_795->g_234[i], "p_795->g_234[i]", print_hash_value);

    }
    transparent_crc(p_795->g_241.x, "p_795->g_241.x", print_hash_value);
    transparent_crc(p_795->g_241.y, "p_795->g_241.y", print_hash_value);
    transparent_crc(p_795->g_241.z, "p_795->g_241.z", print_hash_value);
    transparent_crc(p_795->g_241.w, "p_795->g_241.w", print_hash_value);
    transparent_crc(p_795->g_262, "p_795->g_262", print_hash_value);
    transparent_crc(p_795->g_263.x, "p_795->g_263.x", print_hash_value);
    transparent_crc(p_795->g_263.y, "p_795->g_263.y", print_hash_value);
    transparent_crc(p_795->g_263.z, "p_795->g_263.z", print_hash_value);
    transparent_crc(p_795->g_263.w, "p_795->g_263.w", print_hash_value);
    transparent_crc(p_795->g_264.s0, "p_795->g_264.s0", print_hash_value);
    transparent_crc(p_795->g_264.s1, "p_795->g_264.s1", print_hash_value);
    transparent_crc(p_795->g_264.s2, "p_795->g_264.s2", print_hash_value);
    transparent_crc(p_795->g_264.s3, "p_795->g_264.s3", print_hash_value);
    transparent_crc(p_795->g_264.s4, "p_795->g_264.s4", print_hash_value);
    transparent_crc(p_795->g_264.s5, "p_795->g_264.s5", print_hash_value);
    transparent_crc(p_795->g_264.s6, "p_795->g_264.s6", print_hash_value);
    transparent_crc(p_795->g_264.s7, "p_795->g_264.s7", print_hash_value);
    transparent_crc(p_795->g_264.s8, "p_795->g_264.s8", print_hash_value);
    transparent_crc(p_795->g_264.s9, "p_795->g_264.s9", print_hash_value);
    transparent_crc(p_795->g_264.sa, "p_795->g_264.sa", print_hash_value);
    transparent_crc(p_795->g_264.sb, "p_795->g_264.sb", print_hash_value);
    transparent_crc(p_795->g_264.sc, "p_795->g_264.sc", print_hash_value);
    transparent_crc(p_795->g_264.sd, "p_795->g_264.sd", print_hash_value);
    transparent_crc(p_795->g_264.se, "p_795->g_264.se", print_hash_value);
    transparent_crc(p_795->g_264.sf, "p_795->g_264.sf", print_hash_value);
    transparent_crc(p_795->g_280.x, "p_795->g_280.x", print_hash_value);
    transparent_crc(p_795->g_280.y, "p_795->g_280.y", print_hash_value);
    transparent_crc(p_795->g_280.z, "p_795->g_280.z", print_hash_value);
    transparent_crc(p_795->g_280.w, "p_795->g_280.w", print_hash_value);
    transparent_crc(p_795->g_282.x, "p_795->g_282.x", print_hash_value);
    transparent_crc(p_795->g_282.y, "p_795->g_282.y", print_hash_value);
    transparent_crc(p_795->g_282.z, "p_795->g_282.z", print_hash_value);
    transparent_crc(p_795->g_282.w, "p_795->g_282.w", print_hash_value);
    transparent_crc(p_795->g_323, "p_795->g_323", print_hash_value);
    transparent_crc(p_795->g_360.s0, "p_795->g_360.s0", print_hash_value);
    transparent_crc(p_795->g_360.s1, "p_795->g_360.s1", print_hash_value);
    transparent_crc(p_795->g_360.s2, "p_795->g_360.s2", print_hash_value);
    transparent_crc(p_795->g_360.s3, "p_795->g_360.s3", print_hash_value);
    transparent_crc(p_795->g_360.s4, "p_795->g_360.s4", print_hash_value);
    transparent_crc(p_795->g_360.s5, "p_795->g_360.s5", print_hash_value);
    transparent_crc(p_795->g_360.s6, "p_795->g_360.s6", print_hash_value);
    transparent_crc(p_795->g_360.s7, "p_795->g_360.s7", print_hash_value);
    transparent_crc(p_795->g_362.s0, "p_795->g_362.s0", print_hash_value);
    transparent_crc(p_795->g_362.s1, "p_795->g_362.s1", print_hash_value);
    transparent_crc(p_795->g_362.s2, "p_795->g_362.s2", print_hash_value);
    transparent_crc(p_795->g_362.s3, "p_795->g_362.s3", print_hash_value);
    transparent_crc(p_795->g_362.s4, "p_795->g_362.s4", print_hash_value);
    transparent_crc(p_795->g_362.s5, "p_795->g_362.s5", print_hash_value);
    transparent_crc(p_795->g_362.s6, "p_795->g_362.s6", print_hash_value);
    transparent_crc(p_795->g_362.s7, "p_795->g_362.s7", print_hash_value);
    transparent_crc(p_795->g_362.s8, "p_795->g_362.s8", print_hash_value);
    transparent_crc(p_795->g_362.s9, "p_795->g_362.s9", print_hash_value);
    transparent_crc(p_795->g_362.sa, "p_795->g_362.sa", print_hash_value);
    transparent_crc(p_795->g_362.sb, "p_795->g_362.sb", print_hash_value);
    transparent_crc(p_795->g_362.sc, "p_795->g_362.sc", print_hash_value);
    transparent_crc(p_795->g_362.sd, "p_795->g_362.sd", print_hash_value);
    transparent_crc(p_795->g_362.se, "p_795->g_362.se", print_hash_value);
    transparent_crc(p_795->g_362.sf, "p_795->g_362.sf", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_795->g_394[i].f0, "p_795->g_394[i].f0", print_hash_value);

    }
    transparent_crc(p_795->g_423.s0, "p_795->g_423.s0", print_hash_value);
    transparent_crc(p_795->g_423.s1, "p_795->g_423.s1", print_hash_value);
    transparent_crc(p_795->g_423.s2, "p_795->g_423.s2", print_hash_value);
    transparent_crc(p_795->g_423.s3, "p_795->g_423.s3", print_hash_value);
    transparent_crc(p_795->g_423.s4, "p_795->g_423.s4", print_hash_value);
    transparent_crc(p_795->g_423.s5, "p_795->g_423.s5", print_hash_value);
    transparent_crc(p_795->g_423.s6, "p_795->g_423.s6", print_hash_value);
    transparent_crc(p_795->g_423.s7, "p_795->g_423.s7", print_hash_value);
    transparent_crc(p_795->g_428, "p_795->g_428", print_hash_value);
    transparent_crc(p_795->g_431.f0, "p_795->g_431.f0", print_hash_value);
    transparent_crc(p_795->g_465, "p_795->g_465", print_hash_value);
    transparent_crc(p_795->g_500.x, "p_795->g_500.x", print_hash_value);
    transparent_crc(p_795->g_500.y, "p_795->g_500.y", print_hash_value);
    transparent_crc(p_795->g_509.x, "p_795->g_509.x", print_hash_value);
    transparent_crc(p_795->g_509.y, "p_795->g_509.y", print_hash_value);
    transparent_crc(p_795->g_536.x, "p_795->g_536.x", print_hash_value);
    transparent_crc(p_795->g_536.y, "p_795->g_536.y", print_hash_value);
    transparent_crc(p_795->g_536.z, "p_795->g_536.z", print_hash_value);
    transparent_crc(p_795->g_536.w, "p_795->g_536.w", print_hash_value);
    transparent_crc(p_795->g_597, "p_795->g_597", print_hash_value);
    transparent_crc(p_795->g_614.x, "p_795->g_614.x", print_hash_value);
    transparent_crc(p_795->g_614.y, "p_795->g_614.y", print_hash_value);
    transparent_crc(p_795->g_614.z, "p_795->g_614.z", print_hash_value);
    transparent_crc(p_795->g_614.w, "p_795->g_614.w", print_hash_value);
    transparent_crc(p_795->g_626.x, "p_795->g_626.x", print_hash_value);
    transparent_crc(p_795->g_626.y, "p_795->g_626.y", print_hash_value);
    transparent_crc(p_795->g_627.s0, "p_795->g_627.s0", print_hash_value);
    transparent_crc(p_795->g_627.s1, "p_795->g_627.s1", print_hash_value);
    transparent_crc(p_795->g_627.s2, "p_795->g_627.s2", print_hash_value);
    transparent_crc(p_795->g_627.s3, "p_795->g_627.s3", print_hash_value);
    transparent_crc(p_795->g_627.s4, "p_795->g_627.s4", print_hash_value);
    transparent_crc(p_795->g_627.s5, "p_795->g_627.s5", print_hash_value);
    transparent_crc(p_795->g_627.s6, "p_795->g_627.s6", print_hash_value);
    transparent_crc(p_795->g_627.s7, "p_795->g_627.s7", print_hash_value);
    transparent_crc(p_795->g_632.x, "p_795->g_632.x", print_hash_value);
    transparent_crc(p_795->g_632.y, "p_795->g_632.y", print_hash_value);
    transparent_crc(p_795->g_632.z, "p_795->g_632.z", print_hash_value);
    transparent_crc(p_795->g_632.w, "p_795->g_632.w", print_hash_value);
    transparent_crc(p_795->g_676.x, "p_795->g_676.x", print_hash_value);
    transparent_crc(p_795->g_676.y, "p_795->g_676.y", print_hash_value);
    transparent_crc(p_795->g_677.x, "p_795->g_677.x", print_hash_value);
    transparent_crc(p_795->g_677.y, "p_795->g_677.y", print_hash_value);
    transparent_crc(p_795->g_677.z, "p_795->g_677.z", print_hash_value);
    transparent_crc(p_795->g_677.w, "p_795->g_677.w", print_hash_value);
    transparent_crc(p_795->g_751.s0, "p_795->g_751.s0", print_hash_value);
    transparent_crc(p_795->g_751.s1, "p_795->g_751.s1", print_hash_value);
    transparent_crc(p_795->g_751.s2, "p_795->g_751.s2", print_hash_value);
    transparent_crc(p_795->g_751.s3, "p_795->g_751.s3", print_hash_value);
    transparent_crc(p_795->g_751.s4, "p_795->g_751.s4", print_hash_value);
    transparent_crc(p_795->g_751.s5, "p_795->g_751.s5", print_hash_value);
    transparent_crc(p_795->g_751.s6, "p_795->g_751.s6", print_hash_value);
    transparent_crc(p_795->g_751.s7, "p_795->g_751.s7", print_hash_value);
    transparent_crc(p_795->g_775.s0, "p_795->g_775.s0", print_hash_value);
    transparent_crc(p_795->g_775.s1, "p_795->g_775.s1", print_hash_value);
    transparent_crc(p_795->g_775.s2, "p_795->g_775.s2", print_hash_value);
    transparent_crc(p_795->g_775.s3, "p_795->g_775.s3", print_hash_value);
    transparent_crc(p_795->g_775.s4, "p_795->g_775.s4", print_hash_value);
    transparent_crc(p_795->g_775.s5, "p_795->g_775.s5", print_hash_value);
    transparent_crc(p_795->g_775.s6, "p_795->g_775.s6", print_hash_value);
    transparent_crc(p_795->g_775.s7, "p_795->g_775.s7", print_hash_value);
    transparent_crc(p_795->g_775.s8, "p_795->g_775.s8", print_hash_value);
    transparent_crc(p_795->g_775.s9, "p_795->g_775.s9", print_hash_value);
    transparent_crc(p_795->g_775.sa, "p_795->g_775.sa", print_hash_value);
    transparent_crc(p_795->g_775.sb, "p_795->g_775.sb", print_hash_value);
    transparent_crc(p_795->g_775.sc, "p_795->g_775.sc", print_hash_value);
    transparent_crc(p_795->g_775.sd, "p_795->g_775.sd", print_hash_value);
    transparent_crc(p_795->g_775.se, "p_795->g_775.se", print_hash_value);
    transparent_crc(p_795->g_775.sf, "p_795->g_775.sf", print_hash_value);
    transparent_crc(p_795->g_779.s0, "p_795->g_779.s0", print_hash_value);
    transparent_crc(p_795->g_779.s1, "p_795->g_779.s1", print_hash_value);
    transparent_crc(p_795->g_779.s2, "p_795->g_779.s2", print_hash_value);
    transparent_crc(p_795->g_779.s3, "p_795->g_779.s3", print_hash_value);
    transparent_crc(p_795->g_779.s4, "p_795->g_779.s4", print_hash_value);
    transparent_crc(p_795->g_779.s5, "p_795->g_779.s5", print_hash_value);
    transparent_crc(p_795->g_779.s6, "p_795->g_779.s6", print_hash_value);
    transparent_crc(p_795->g_779.s7, "p_795->g_779.s7", print_hash_value);
    transparent_crc(p_795->g_779.s8, "p_795->g_779.s8", print_hash_value);
    transparent_crc(p_795->g_779.s9, "p_795->g_779.s9", print_hash_value);
    transparent_crc(p_795->g_779.sa, "p_795->g_779.sa", print_hash_value);
    transparent_crc(p_795->g_779.sb, "p_795->g_779.sb", print_hash_value);
    transparent_crc(p_795->g_779.sc, "p_795->g_779.sc", print_hash_value);
    transparent_crc(p_795->g_779.sd, "p_795->g_779.sd", print_hash_value);
    transparent_crc(p_795->g_779.se, "p_795->g_779.se", print_hash_value);
    transparent_crc(p_795->g_779.sf, "p_795->g_779.sf", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
