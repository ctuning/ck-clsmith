// ---fake_divergence -g 7,1,31 -l 7,1,31
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


// Seed: 94

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   uint64_t  f0;
   uint16_t  f1;
   int32_t  f2;
   uint32_t  f3;
   uint32_t  f4;
   int64_t  f5;
   volatile int32_t  f6;
};

struct S1 {
   volatile uint64_t  f0;
   uint8_t  f1;
   volatile uint64_t  f2;
   int32_t  f3;
   volatile int32_t  f4;
   int64_t  f5;
   volatile int32_t  f6;
   uint16_t  f7;
};

union U2 {
   struct S0  f0;
};

union U3 {
   int8_t * f0;
   int8_t * f1;
   uint32_t  f2;
};

struct S4 {
    VECTOR(int32_t, 16) g_2;
    int8_t g_15;
    int8_t *g_14;
    int32_t g_82;
    int8_t g_86;
    int8_t *g_85;
    int32_t *g_88;
    volatile VECTOR(int8_t, 2) g_92;
    uint8_t g_104;
    volatile struct S1 g_129;
    int64_t g_130;
    int16_t g_134;
    int8_t g_135[3];
    int8_t g_136;
    int64_t g_138;
    uint32_t g_140;
    int32_t g_141;
    uint32_t g_142;
    VECTOR(uint32_t, 16) g_144;
    uint32_t g_151;
    struct S0 g_157;
    volatile VECTOR(uint8_t, 8) g_164;
    VECTOR(int64_t, 2) g_165;
    uint8_t g_180;
    VECTOR(int64_t, 4) g_184;
    volatile uint32_t g_202;
    volatile uint32_t g_226[6];
    union U2 g_235;
    VECTOR(int64_t, 2) g_264;
    VECTOR(int64_t, 2) g_265;
    VECTOR(int32_t, 2) g_276;
    volatile struct S1 g_293;
    union U3 g_299;
    uint8_t g_307;
    volatile union U2 g_308;
    volatile uint16_t *g_311;
    struct S1 g_331;
    struct S1 * volatile g_332;
    volatile int8_t g_335;
    uint8_t g_336;
    struct S1 g_339;
    uint32_t g_341;
    volatile struct S0 g_359;
    volatile struct S0 g_360;
    union U3 *g_362[7][4][9];
    int32_t ** volatile g_390;
    int16_t g_401;
    volatile int8_t g_402[3];
    volatile int32_t g_404;
    volatile int32_t g_405;
    volatile int8_t g_408[6];
    uint64_t g_409;
    VECTOR(int64_t, 2) g_418;
    VECTOR(uint64_t, 8) g_419;
    volatile VECTOR(uint64_t, 16) g_435;
    VECTOR(uint64_t, 8) g_436;
    volatile struct S0 g_441;
    int32_t ** volatile g_457;
    int64_t *g_462;
    int64_t *g_464;
    int32_t g_480[10][4][6];
    volatile uint32_t g_481;
    volatile struct S0 * volatile g_484;
    volatile struct S0 g_485;
    volatile struct S0 * volatile g_486;
    volatile struct S0 g_487;
    volatile int32_t g_495;
    uint64_t g_496;
    volatile struct S1 g_506;
    volatile VECTOR(uint64_t, 4) g_511;
    union U2 g_559;
    VECTOR(int64_t, 4) g_570;
    VECTOR(uint64_t, 2) g_590;
    VECTOR(uint64_t, 2) g_601;
    volatile VECTOR(uint64_t, 2) g_602;
    VECTOR(uint16_t, 4) g_606;
    VECTOR(uint8_t, 8) g_650;
    VECTOR(int8_t, 4) g_679;
    VECTOR(uint64_t, 2) g_693;
    volatile VECTOR(int16_t, 4) g_696;
    volatile VECTOR(int16_t, 4) g_699;
    VECTOR(int16_t, 4) g_700;
    volatile VECTOR(int16_t, 8) g_702;
    VECTOR(uint64_t, 2) g_723;
    uint32_t g_745;
    int32_t * volatile g_750;
    int32_t *g_751;
    volatile uint64_t g_759;
    int32_t ** volatile g_768;
    int16_t g_776;
    volatile VECTOR(int32_t, 16) g_813;
    uint8_t *g_829;
    volatile struct S1 g_861;
    struct S1 g_864;
    int16_t *g_888;
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
uint64_t  func_1(struct S4 * p_893);
VECTOR(int32_t, 4)  func_3(union U3  p_4, struct S4 * p_893);
int32_t  func_6(int8_t * p_7, uint64_t  p_8, int8_t  p_9, int8_t  p_10, struct S4 * p_893);
int8_t * func_11(int8_t * p_12, int32_t  p_13, struct S4 * p_893);
uint16_t  func_46(int8_t  p_47, int32_t * p_48, struct S4 * p_893);
int32_t * func_49(int64_t  p_50, struct S4 * p_893);
int32_t * func_51(int8_t  p_52, int32_t  p_53, int16_t  p_54, uint64_t  p_55, uint16_t  p_56, struct S4 * p_893);
union U2  func_57(uint64_t  p_58, uint8_t  p_59, int32_t * p_60, int32_t * p_61, int32_t * p_62, struct S4 * p_893);
uint64_t  func_63(uint16_t  p_64, int32_t  p_65, struct S4 * p_893);
int32_t  func_66(int8_t * p_67, uint64_t  p_68, struct S4 * p_893);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_893->g_2 p_893->g_14 p_893->g_15 p_893->g_82 p_893->g_341 p_893->g_157.f0 p_893->g_88 p_893->g_130 p_893->g_308.f0.f1 p_893->g_331.f5 p_893->g_184 p_893->g_265 p_893->g_359 p_893->g_85 p_893->g_129.f5 p_893->g_157.f3 p_893->g_104 p_893->g_390 p_893->g_409 p_893->g_496 p_893->g_339.f7 p_893->g_506 p_893->g_235.f0.f4 p_893->g_157.f5 p_893->g_307 p_893->g_745 p_893->g_750 p_893->g_331.f3 p_893->g_401 p_893->g_751 p_893->g_759 p_893->g_308 p_893->g_559.f0.f3 p_893->g_768 p_893->g_776 p_893->g_702 p_893->g_339.f3 p_893->g_276 p_893->g_700 p_893->g_165 p_893->g_134 p_893->g_331.f7 p_893->g_136 p_893->g_157.f2 p_893->g_861 p_893->g_864 p_893->g_464 p_893->g_235.f0.f5 p_893->g_480
 * writes: p_893->g_82 p_893->g_85 p_893->g_88 p_893->g_341 p_893->g_130 p_893->g_360 p_893->g_362 p_893->g_134 p_893->g_104 p_893->g_409 p_893->g_331.f5 p_893->g_496 p_893->g_339.f7 p_893->g_129 p_893->g_235.f0.f4 p_893->g_157.f5 p_893->g_307 p_893->g_745 p_893->g_331.f3 p_893->g_759 p_893->g_339.f3 p_893->g_401 p_893->g_331.f1 p_893->g_135 p_893->g_776 p_893->g_751 p_893->g_331.f7 p_893->g_136 p_893->g_157.f2 p_893->g_15 p_893->g_888
 */
uint64_t  func_1(struct S4 * p_893)
{ /* block id: 4 */
    union U3 l_5 = {0};
    int32_t l_890 = 0x30D81C10L;
    int32_t *l_891 = &p_893->g_82;
    VECTOR(uint16_t, 2) l_892 = (VECTOR(uint16_t, 2))(6UL, 4UL);
    int i;
    (*l_891) = (l_890 = ((VECTOR(int32_t, 16))(mul_hi(((VECTOR(int32_t, 2))(0x3C61C71BL, 0x5CD66A07L)).yxyyyxyxyxxyyxxy, ((VECTOR(int32_t, 2))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 8))(p_893->g_2.sb7ab61b5)).s03, ((VECTOR(int32_t, 4))(func_3(l_5, p_893))).odd))).yyxyyyxyxyyyyyyx))).s7);
    return l_892.y;
}


/* ------------------------------------------ */
/* 
 * reads : p_893->g_14 p_893->g_2 p_893->g_15 p_893->g_82 p_893->g_341 p_893->g_157.f0 p_893->g_88 p_893->g_130 p_893->g_308.f0.f1 p_893->g_331.f5 p_893->g_184 p_893->g_265 p_893->g_359 p_893->g_85 p_893->g_129.f5 p_893->g_157.f3 p_893->g_104 p_893->g_390 p_893->g_409 p_893->g_496 p_893->g_339.f7 p_893->g_506 p_893->g_235.f0.f4 p_893->g_157.f5 p_893->g_307 p_893->g_745 p_893->g_750 p_893->g_331.f3 p_893->g_401 p_893->g_751 p_893->g_759 p_893->g_308 p_893->g_559.f0.f3 p_893->g_768 p_893->g_776 p_893->g_702 p_893->g_339.f3 p_893->g_276 p_893->g_700 p_893->g_165 p_893->g_134 p_893->g_331.f7 p_893->g_136 p_893->g_157.f2 p_893->g_861 p_893->g_864 p_893->g_464 p_893->g_235.f0.f5 p_893->g_480
 * writes: p_893->g_82 p_893->g_85 p_893->g_88 p_893->g_341 p_893->g_130 p_893->g_360 p_893->g_362 p_893->g_134 p_893->g_104 p_893->g_409 p_893->g_331.f5 p_893->g_496 p_893->g_339.f7 p_893->g_129 p_893->g_235.f0.f4 p_893->g_157.f5 p_893->g_307 p_893->g_745 p_893->g_331.f3 p_893->g_759 p_893->g_339.f3 p_893->g_401 p_893->g_331.f1 p_893->g_135 p_893->g_776 p_893->g_751 p_893->g_331.f7 p_893->g_136 p_893->g_157.f2 p_893->g_15 p_893->g_888
 */
VECTOR(int32_t, 4)  func_3(union U3  p_4, struct S4 * p_893)
{ /* block id: 5 */
    uint64_t l_16[4][2][1] = {{{18446744073709551612UL},{18446744073709551612UL}},{{18446744073709551612UL},{18446744073709551612UL}},{{18446744073709551612UL},{18446744073709551612UL}},{{18446744073709551612UL},{18446744073709551612UL}}};
    int32_t l_42 = 0x548C05A1L;
    uint16_t *l_803 = (void*)0;
    uint16_t *l_804 = (void*)0;
    uint16_t *l_805 = &p_893->g_331.f7;
    int32_t l_806 = 0x24B05F73L;
    int32_t l_807[8];
    int8_t *l_808[5][8][3] = {{{(void*)0,&p_893->g_136,(void*)0},{(void*)0,&p_893->g_136,(void*)0},{(void*)0,&p_893->g_136,(void*)0},{(void*)0,&p_893->g_136,(void*)0},{(void*)0,&p_893->g_136,(void*)0},{(void*)0,&p_893->g_136,(void*)0},{(void*)0,&p_893->g_136,(void*)0},{(void*)0,&p_893->g_136,(void*)0}},{{(void*)0,&p_893->g_136,(void*)0},{(void*)0,&p_893->g_136,(void*)0},{(void*)0,&p_893->g_136,(void*)0},{(void*)0,&p_893->g_136,(void*)0},{(void*)0,&p_893->g_136,(void*)0},{(void*)0,&p_893->g_136,(void*)0},{(void*)0,&p_893->g_136,(void*)0},{(void*)0,&p_893->g_136,(void*)0}},{{(void*)0,&p_893->g_136,(void*)0},{(void*)0,&p_893->g_136,(void*)0},{(void*)0,&p_893->g_136,(void*)0},{(void*)0,&p_893->g_136,(void*)0},{(void*)0,&p_893->g_136,(void*)0},{(void*)0,&p_893->g_136,(void*)0},{(void*)0,&p_893->g_136,(void*)0},{(void*)0,&p_893->g_136,(void*)0}},{{(void*)0,&p_893->g_136,(void*)0},{(void*)0,&p_893->g_136,(void*)0},{(void*)0,&p_893->g_136,(void*)0},{(void*)0,&p_893->g_136,(void*)0},{(void*)0,&p_893->g_136,(void*)0},{(void*)0,&p_893->g_136,(void*)0},{(void*)0,&p_893->g_136,(void*)0},{(void*)0,&p_893->g_136,(void*)0}},{{(void*)0,&p_893->g_136,(void*)0},{(void*)0,&p_893->g_136,(void*)0},{(void*)0,&p_893->g_136,(void*)0},{(void*)0,&p_893->g_136,(void*)0},{(void*)0,&p_893->g_136,(void*)0},{(void*)0,&p_893->g_136,(void*)0},{(void*)0,&p_893->g_136,(void*)0},{(void*)0,&p_893->g_136,(void*)0}}};
    uint64_t l_826 = 18446744073709551611UL;
    int32_t *l_839 = (void*)0;
    int32_t *l_840 = &l_42;
    int32_t *l_841 = &l_42;
    int32_t *l_842 = &l_806;
    int32_t *l_843 = &l_806;
    int32_t *l_844 = &l_807[3];
    int32_t *l_845 = (void*)0;
    int32_t *l_846 = &l_42;
    int32_t *l_847 = &p_893->g_339.f3;
    int32_t *l_848 = (void*)0;
    int32_t *l_849 = &l_806;
    int32_t *l_850 = &l_806;
    int32_t *l_851[1][3];
    int8_t l_852 = 0L;
    int64_t l_853[1];
    uint64_t l_854 = 18446744073709551609UL;
    VECTOR(int16_t, 8) l_871 = (VECTOR(int16_t, 8))(6L, (VECTOR(int16_t, 4))(6L, (VECTOR(int16_t, 2))(6L, (-1L)), (-1L)), (-1L), 6L, (-1L));
    uint8_t *l_882 = (void*)0;
    uint8_t *l_883[2][10];
    int16_t l_884 = 1L;
    int16_t **l_885 = (void*)0;
    int16_t *l_887[2];
    int16_t **l_886[7] = {&l_887[1],&l_887[1],&l_887[1],&l_887[1],&l_887[1],&l_887[1],&l_887[1]};
    VECTOR(int32_t, 4) l_889 = (VECTOR(int32_t, 4))(0x26FFF30FL, (VECTOR(int32_t, 2))(0x26FFF30FL, 0x40B1FC1CL), 0x40B1FC1CL);
    int i, j, k;
    for (i = 0; i < 8; i++)
        l_807[i] = 0x5D74D91FL;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 3; j++)
            l_851[i][j] = &l_42;
    }
    for (i = 0; i < 1; i++)
        l_853[i] = 0x763FB4F44B3444E4L;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 10; j++)
            l_883[i][j] = &p_893->g_307;
    }
    for (i = 0; i < 2; i++)
        l_887[i] = (void*)0;
    if (func_6(func_11(p_893->g_14, l_16[0][0][0], p_893), p_893->g_2.s4, (l_42 = (*p_893->g_14)), (p_893->g_136 ^= (l_807[3] &= (((p_893->g_2.sb | (l_806 = (((VECTOR(int32_t, 2))((-3L), 1L)).even <= (safe_unary_minus_func_uint64_t_u((safe_rshift_func_int8_t_s_u((0xF3L >= (((*l_805) |= func_46(l_16[0][0][0], func_49(l_16[0][0][0], p_893), p_893)) ^ 0x2452L)), GROUP_DIVERGE(0, 1)))))))) || (-1L)) > 0x4779692B94DCAC4DL))), p_893))
    { /* block id: 279 */
        int32_t *l_810[8][8][4] = {{{(void*)0,&p_893->g_82,&p_893->g_331.f3,&p_893->g_82},{(void*)0,&p_893->g_82,&p_893->g_331.f3,&p_893->g_82},{(void*)0,&p_893->g_82,&p_893->g_331.f3,&p_893->g_82},{(void*)0,&p_893->g_82,&p_893->g_331.f3,&p_893->g_82},{(void*)0,&p_893->g_82,&p_893->g_331.f3,&p_893->g_82},{(void*)0,&p_893->g_82,&p_893->g_331.f3,&p_893->g_82},{(void*)0,&p_893->g_82,&p_893->g_331.f3,&p_893->g_82},{(void*)0,&p_893->g_82,&p_893->g_331.f3,&p_893->g_82}},{{(void*)0,&p_893->g_82,&p_893->g_331.f3,&p_893->g_82},{(void*)0,&p_893->g_82,&p_893->g_331.f3,&p_893->g_82},{(void*)0,&p_893->g_82,&p_893->g_331.f3,&p_893->g_82},{(void*)0,&p_893->g_82,&p_893->g_331.f3,&p_893->g_82},{(void*)0,&p_893->g_82,&p_893->g_331.f3,&p_893->g_82},{(void*)0,&p_893->g_82,&p_893->g_331.f3,&p_893->g_82},{(void*)0,&p_893->g_82,&p_893->g_331.f3,&p_893->g_82},{(void*)0,&p_893->g_82,&p_893->g_331.f3,&p_893->g_82}},{{(void*)0,&p_893->g_82,&p_893->g_331.f3,&p_893->g_82},{(void*)0,&p_893->g_82,&p_893->g_331.f3,&p_893->g_82},{(void*)0,&p_893->g_82,&p_893->g_331.f3,&p_893->g_82},{(void*)0,&p_893->g_82,&p_893->g_331.f3,&p_893->g_82},{(void*)0,&p_893->g_82,&p_893->g_331.f3,&p_893->g_82},{(void*)0,&p_893->g_82,&p_893->g_331.f3,&p_893->g_82},{(void*)0,&p_893->g_82,&p_893->g_331.f3,&p_893->g_82},{(void*)0,&p_893->g_82,&p_893->g_331.f3,&p_893->g_82}},{{(void*)0,&p_893->g_82,&p_893->g_331.f3,&p_893->g_82},{(void*)0,&p_893->g_82,&p_893->g_331.f3,&p_893->g_82},{(void*)0,&p_893->g_82,&p_893->g_331.f3,&p_893->g_82},{(void*)0,&p_893->g_82,&p_893->g_331.f3,&p_893->g_82},{(void*)0,&p_893->g_82,&p_893->g_331.f3,&p_893->g_82},{(void*)0,&p_893->g_82,&p_893->g_331.f3,&p_893->g_82},{(void*)0,&p_893->g_82,&p_893->g_331.f3,&p_893->g_82},{(void*)0,&p_893->g_82,&p_893->g_331.f3,&p_893->g_82}},{{(void*)0,&p_893->g_82,&p_893->g_331.f3,&p_893->g_82},{(void*)0,&p_893->g_82,&p_893->g_331.f3,&p_893->g_82},{(void*)0,&p_893->g_82,&p_893->g_331.f3,&p_893->g_82},{(void*)0,&p_893->g_82,&p_893->g_331.f3,&p_893->g_82},{(void*)0,&p_893->g_82,&p_893->g_331.f3,&p_893->g_82},{(void*)0,&p_893->g_82,&p_893->g_331.f3,&p_893->g_82},{(void*)0,&p_893->g_82,&p_893->g_331.f3,&p_893->g_82},{(void*)0,&p_893->g_82,&p_893->g_331.f3,&p_893->g_82}},{{(void*)0,&p_893->g_82,&p_893->g_331.f3,&p_893->g_82},{(void*)0,&p_893->g_82,&p_893->g_331.f3,&p_893->g_82},{(void*)0,&p_893->g_82,&p_893->g_331.f3,&p_893->g_82},{(void*)0,&p_893->g_82,&p_893->g_331.f3,&p_893->g_82},{(void*)0,&p_893->g_82,&p_893->g_331.f3,&p_893->g_82},{(void*)0,&p_893->g_82,&p_893->g_331.f3,&p_893->g_82},{(void*)0,&p_893->g_82,&p_893->g_331.f3,&p_893->g_82},{(void*)0,&p_893->g_82,&p_893->g_331.f3,&p_893->g_82}},{{(void*)0,&p_893->g_82,&p_893->g_331.f3,&p_893->g_82},{(void*)0,&p_893->g_82,&p_893->g_331.f3,&p_893->g_82},{(void*)0,&p_893->g_82,&p_893->g_331.f3,&p_893->g_82},{(void*)0,&p_893->g_82,&p_893->g_331.f3,&p_893->g_82},{(void*)0,&p_893->g_82,&p_893->g_331.f3,&p_893->g_82},{(void*)0,&p_893->g_82,&p_893->g_331.f3,&p_893->g_82},{(void*)0,&p_893->g_82,&p_893->g_331.f3,&p_893->g_82},{(void*)0,&p_893->g_82,&p_893->g_331.f3,&p_893->g_82}},{{(void*)0,&p_893->g_82,&p_893->g_331.f3,&p_893->g_82},{(void*)0,&p_893->g_82,&p_893->g_331.f3,&p_893->g_82},{(void*)0,&p_893->g_82,&p_893->g_331.f3,&p_893->g_82},{(void*)0,&p_893->g_82,&p_893->g_331.f3,&p_893->g_82},{(void*)0,&p_893->g_82,&p_893->g_331.f3,&p_893->g_82},{(void*)0,&p_893->g_82,&p_893->g_331.f3,&p_893->g_82},{(void*)0,&p_893->g_82,&p_893->g_331.f3,&p_893->g_82},{(void*)0,&p_893->g_82,&p_893->g_331.f3,&p_893->g_82}}};
        int8_t *l_827 = &p_893->g_135[0];
        uint32_t *l_832 = &p_893->g_157.f4;
        uint32_t l_833 = 4294967295UL;
        int i, j, k;
        l_806 = l_42;
        for (p_893->g_157.f2 = 0; (p_893->g_157.f2 == 7); ++p_893->g_157.f2)
        { /* block id: 283 */
            VECTOR(int32_t, 8) l_814 = (VECTOR(int32_t, 8))(3L, (VECTOR(int32_t, 4))(3L, (VECTOR(int32_t, 2))(3L, (-8L)), (-8L)), (-8L), 3L, (-8L));
            uint8_t **l_828[1];
            uint32_t *l_831 = &p_893->g_559.f0.f4;
            uint32_t **l_830[8] = {(void*)0,&l_831,(void*)0,(void*)0,&l_831,(void*)0,(void*)0,&l_831};
            union U2 *l_835[4][9] = {{&p_893->g_559,&p_893->g_559,&p_893->g_235,&p_893->g_559,&p_893->g_235,&p_893->g_559,&p_893->g_559,(void*)0,(void*)0},{&p_893->g_559,&p_893->g_559,&p_893->g_235,&p_893->g_559,&p_893->g_235,&p_893->g_559,&p_893->g_559,(void*)0,(void*)0},{&p_893->g_559,&p_893->g_559,&p_893->g_235,&p_893->g_559,&p_893->g_235,&p_893->g_559,&p_893->g_559,(void*)0,(void*)0},{&p_893->g_559,&p_893->g_559,&p_893->g_235,&p_893->g_559,&p_893->g_235,&p_893->g_559,&p_893->g_559,(void*)0,(void*)0}};
            union U2 **l_834 = &l_835[1][0];
            int i, j;
            for (i = 0; i < 1; i++)
                l_828[i] = (void*)0;
            l_814.s4 = ((VECTOR(int32_t, 2))((((VECTOR(int32_t, 4))(p_893->g_813.s9278)).even & ((VECTOR(int32_t, 8))((-9L), ((VECTOR(int32_t, 2))(l_814.s67)), (-1L), (((VECTOR(int32_t, 16))((((VECTOR(int32_t, 16))((((VECTOR(int32_t, 2))((((VECTOR(int32_t, 4))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 16))(0x39DE3A72L, 0x01D10080L, (l_807[3] = ((safe_mul_func_uint32_t_u_u(l_807[3], (((safe_unary_minus_func_int32_t_s((+(safe_mod_func_int8_t_s_s((l_42 , (safe_add_func_uint32_t_u_u((safe_mod_func_int32_t_s_s(((l_832 = func_51((*p_893->g_85), l_826, l_814.s2, (p_893->g_180 , ((p_893->g_829 = func_11(func_11(l_827, l_16[0][0][0], p_893), p_893->g_136, p_893)) != &p_893->g_180)), l_814.s6, p_893)) != l_810[0][0][2]), l_814.s3)), 7L))), l_833))))) , p_893->g_559.f0.f4) <= l_814.s3))) >= 1UL)), ((VECTOR(int32_t, 8))(0L)), ((VECTOR(int32_t, 4))(0x38174B94L)), 1L)).sbc6b, ((VECTOR(int32_t, 4))(0x698243D8L)), ((VECTOR(int32_t, 4))(0x3BB377B1L))))).odd && ((VECTOR(int32_t, 2))(0x4058BA0CL))))).yxxyxyyxxxyyyyyx <= ((VECTOR(int32_t, 16))((-5L)))))) | ((VECTOR(int32_t, 16))(5L))))).s6 || 0L), 1L, 0x047C81CDL, 0x670EB00FL)).s56))).hi;
            (*l_834) = (void*)0;
        }
    }
    else
    { /* block id: 290 */
        uint32_t l_836 = 0xDBD66692L;
        ++l_836;
    }
    ++l_854;
    (*l_843) = (((*l_844) = ((safe_div_func_int64_t_s_s(((5L < (safe_lshift_func_int16_t_s_s(((p_893->g_888 = (p_893->g_861 , ((safe_mul_func_int8_t_s_s((-1L), (l_884 |= (0x79DD8A9BL > ((p_893->g_864 , (safe_lshift_func_uint16_t_u_s((safe_sub_func_uint8_t_u_u((((*p_893->g_464) = (*l_840)) == ((safe_lshift_func_int16_t_s_s(((VECTOR(int16_t, 16))(safe_clamp_func(VECTOR(int16_t, 16),int16_t,((VECTOR(int16_t, 16))(l_871.s6330560325343614)), (int16_t)(safe_mod_func_uint8_t_u_u((((*p_893->g_14) = (safe_mod_func_uint64_t_u_u((safe_sub_func_int8_t_s_s((*p_893->g_85), (*p_893->g_85))), (safe_rshift_func_int16_t_s_u((safe_div_func_uint64_t_u_u((0x3C18D9A37BC73152L & 0x2522DEE202EDE149L), (*l_849))), (*l_841)))))) != 0x38L), 7UL)), (int16_t)0x61D7L))).s0, 8)) ^ (*l_849))), (-6L))), 15))) ^ (*l_850)))))) , &p_893->g_401))) != (void*)0), p_893->g_235.f0.f5))) && 0x7948B39FL), p_893->g_480[0][0][0])) != (*l_841))) | (*l_841));
    return l_889.wwxy;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t  func_6(int8_t * p_7, uint64_t  p_8, int8_t  p_9, int8_t  p_10, struct S4 * p_893)
{ /* block id: 277 */
    uint64_t l_809[3][8][3] = {{{0x5D3C20B51EA731E3L,0x83C42A7D0FB14F17L,0xD9D35C3E6A052EA9L},{0x5D3C20B51EA731E3L,0x83C42A7D0FB14F17L,0xD9D35C3E6A052EA9L},{0x5D3C20B51EA731E3L,0x83C42A7D0FB14F17L,0xD9D35C3E6A052EA9L},{0x5D3C20B51EA731E3L,0x83C42A7D0FB14F17L,0xD9D35C3E6A052EA9L},{0x5D3C20B51EA731E3L,0x83C42A7D0FB14F17L,0xD9D35C3E6A052EA9L},{0x5D3C20B51EA731E3L,0x83C42A7D0FB14F17L,0xD9D35C3E6A052EA9L},{0x5D3C20B51EA731E3L,0x83C42A7D0FB14F17L,0xD9D35C3E6A052EA9L},{0x5D3C20B51EA731E3L,0x83C42A7D0FB14F17L,0xD9D35C3E6A052EA9L}},{{0x5D3C20B51EA731E3L,0x83C42A7D0FB14F17L,0xD9D35C3E6A052EA9L},{0x5D3C20B51EA731E3L,0x83C42A7D0FB14F17L,0xD9D35C3E6A052EA9L},{0x5D3C20B51EA731E3L,0x83C42A7D0FB14F17L,0xD9D35C3E6A052EA9L},{0x5D3C20B51EA731E3L,0x83C42A7D0FB14F17L,0xD9D35C3E6A052EA9L},{0x5D3C20B51EA731E3L,0x83C42A7D0FB14F17L,0xD9D35C3E6A052EA9L},{0x5D3C20B51EA731E3L,0x83C42A7D0FB14F17L,0xD9D35C3E6A052EA9L},{0x5D3C20B51EA731E3L,0x83C42A7D0FB14F17L,0xD9D35C3E6A052EA9L},{0x5D3C20B51EA731E3L,0x83C42A7D0FB14F17L,0xD9D35C3E6A052EA9L}},{{0x5D3C20B51EA731E3L,0x83C42A7D0FB14F17L,0xD9D35C3E6A052EA9L},{0x5D3C20B51EA731E3L,0x83C42A7D0FB14F17L,0xD9D35C3E6A052EA9L},{0x5D3C20B51EA731E3L,0x83C42A7D0FB14F17L,0xD9D35C3E6A052EA9L},{0x5D3C20B51EA731E3L,0x83C42A7D0FB14F17L,0xD9D35C3E6A052EA9L},{0x5D3C20B51EA731E3L,0x83C42A7D0FB14F17L,0xD9D35C3E6A052EA9L},{0x5D3C20B51EA731E3L,0x83C42A7D0FB14F17L,0xD9D35C3E6A052EA9L},{0x5D3C20B51EA731E3L,0x83C42A7D0FB14F17L,0xD9D35C3E6A052EA9L},{0x5D3C20B51EA731E3L,0x83C42A7D0FB14F17L,0xD9D35C3E6A052EA9L}}};
    int i, j, k;
    return l_809[1][4][1];
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int8_t * func_11(int8_t * p_12, int32_t  p_13, struct S4 * p_893)
{ /* block id: 6 */
    int32_t l_17 = 0L;
    int32_t l_24 = 0x427E5571L;
    int32_t l_25 = 0L;
    int32_t l_26 = 0x6C7BFB9EL;
    int32_t l_27 = 0x23AE4374L;
    int32_t l_28 = 9L;
    int32_t l_29 = (-1L);
    int32_t l_30 = 0L;
    int32_t l_31[1];
    uint32_t l_32 = 0x6A653BE2L;
    int i;
    for (i = 0; i < 1; i++)
        l_31[i] = 0x7E9A86F2L;
    if (l_17)
    { /* block id: 7 */
        int32_t *l_18 = (void*)0;
        int32_t *l_19 = (void*)0;
        int32_t *l_20 = (void*)0;
        int32_t *l_21 = (void*)0;
        int32_t *l_22 = (void*)0;
        int32_t *l_23[3][8][1] = {{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}}};
        int i, j, k;
        ++l_32;
    }
    else
    { /* block id: 9 */
        int32_t *l_35 = &l_27;
        int32_t *l_36 = &l_29;
        int32_t *l_37 = &l_31[0];
        int32_t *l_38[5];
        uint64_t l_39 = 0x334A22360892C684L;
        int i;
        for (i = 0; i < 5; i++)
            l_38[i] = (void*)0;
        l_39--;
        return p_12;
    }
    return &p_893->g_15;
}


/* ------------------------------------------ */
/* 
 * reads : p_893->g_331.f3 p_893->g_776 p_893->g_702 p_893->g_401 p_893->g_85 p_893->g_15 p_893->g_339.f7 p_893->g_339.f3 p_893->g_276 p_893->g_496 p_893->g_700 p_893->g_750 p_893->g_165 p_893->g_134 p_893->g_82 p_893->g_768 p_893->g_88
 * writes: p_893->g_331.f3 p_893->g_401 p_893->g_331.f1 p_893->g_135 p_893->g_776 p_893->g_82 p_893->g_751
 */
uint16_t  func_46(int8_t  p_47, int32_t * p_48, struct S4 * p_893)
{ /* block id: 260 */
    VECTOR(uint32_t, 8) l_777 = (VECTOR(uint32_t, 8))(4294967292UL, (VECTOR(uint32_t, 4))(4294967292UL, (VECTOR(uint32_t, 2))(4294967292UL, 1UL), 1UL), 1UL, 4294967292UL, 1UL);
    int8_t l_793 = (-7L);
    int32_t l_797 = (-2L);
    int32_t l_798 = 8L;
    int32_t l_799[4][2][8] = {{{(-7L),(-1L),(-1L),0x7E7DB8E5L,0x214709D1L,(-7L),0x7E7DB8E5L,4L},{(-7L),(-1L),(-1L),0x7E7DB8E5L,0x214709D1L,(-7L),0x7E7DB8E5L,4L}},{{(-7L),(-1L),(-1L),0x7E7DB8E5L,0x214709D1L,(-7L),0x7E7DB8E5L,4L},{(-7L),(-1L),(-1L),0x7E7DB8E5L,0x214709D1L,(-7L),0x7E7DB8E5L,4L}},{{(-7L),(-1L),(-1L),0x7E7DB8E5L,0x214709D1L,(-7L),0x7E7DB8E5L,4L},{(-7L),(-1L),(-1L),0x7E7DB8E5L,0x214709D1L,(-7L),0x7E7DB8E5L,4L}},{{(-7L),(-1L),(-1L),0x7E7DB8E5L,0x214709D1L,(-7L),0x7E7DB8E5L,4L},{(-7L),(-1L),(-1L),0x7E7DB8E5L,0x214709D1L,(-7L),0x7E7DB8E5L,4L}}};
    uint64_t l_800 = 18446744073709551615UL;
    int i, j, k;
    for (p_893->g_331.f3 = 0; (p_893->g_331.f3 <= (-4)); p_893->g_331.f3 = safe_sub_func_uint32_t_u_u(p_893->g_331.f3, 1))
    { /* block id: 263 */
        union U3 l_771 = {0};
        int16_t *l_782 = (void*)0;
        int16_t *l_783 = (void*)0;
        int16_t *l_784 = &p_893->g_401;
        uint8_t *l_788 = &p_893->g_331.f1;
        int32_t *l_789[8] = {&p_893->g_331.f3,&p_893->g_331.f3,&p_893->g_331.f3,&p_893->g_331.f3,&p_893->g_331.f3,&p_893->g_331.f3,&p_893->g_331.f3,&p_893->g_331.f3};
        int32_t l_792 = 1L;
        int8_t *l_794 = &p_893->g_135[0];
        int16_t *l_795 = &p_893->g_776;
        int32_t **l_796 = &p_893->g_751;
        int i;
        p_893->g_82 |= (((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(9L, 0L)), ((VECTOR(int16_t, 2))((-1L), (-7L))), (l_771 , ((*l_795) = (((safe_mul_func_int16_t_s_s((((*l_794) = (((safe_mul_func_uint16_t_u_u(p_893->g_776, (l_777.s2 , (safe_mul_func_uint8_t_u_u(FAKE_DIVERGE(p_893->local_0_offset, get_local_id(0), 10), (p_893->g_702.s2 != ((safe_rshift_func_int16_t_s_s(((*l_784) ^= (-8L)), ((((((safe_unary_minus_func_int16_t_s(((((safe_add_func_uint8_t_u_u((p_47 , (((((*l_788) = 1UL) & (l_789[1] == (((((((((VECTOR(uint32_t, 16))(hadd(((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 2))(rhadd(((VECTOR(uint32_t, 16))((+((VECTOR(uint32_t, 4))((((l_777.s4 < (*p_893->g_85)) > p_893->g_339.f7) <= (*p_48)), ((VECTOR(uint32_t, 2))(0x402F7F97L)), 4294967286UL)).yxywwwxzyzxwxwxy))).s13, ((VECTOR(uint32_t, 2))(0xF86BE480L))))) + ((VECTOR(uint32_t, 2))(0xF3FA949AL))))).xyyyxxyxyxxyxyyy, ((VECTOR(uint32_t, 16))(0x376CB59BL))))).s6 != (*p_48)) | p_893->g_276.x) ^ (*p_48)) || l_792) && 0UL) , p_893->g_339.f7) , (void*)0))) ^ 8UL) , p_47)), 0x1DL)) >= p_893->g_496) , p_893->g_700.x) != l_793))) | p_47) < 0x59L) >= 0x1E45C723L) > p_47) < 0x3BA344F867224511L))) < 0x7EL))))))) && (*p_893->g_750)) > p_893->g_165.y)) ^ p_47), p_47)) , (-1L)) == p_893->g_134))), 0x5914L, 0x24D5L, 0x7CF2L)).s2 , 0x73641304L);
        (*l_796) = (*p_893->g_768);
        --l_800;
    }
    return l_798;
}


/* ------------------------------------------ */
/* 
 * reads : p_893->g_15 p_893->g_2 p_893->g_14 p_893->g_82 p_893->g_341 p_893->g_157.f0 p_893->g_88 p_893->g_130 p_893->g_308.f0.f1 p_893->g_331.f5 p_893->g_184 p_893->g_265 p_893->g_359 p_893->g_85 p_893->g_129.f5 p_893->g_157.f3 p_893->g_104 p_893->g_390 p_893->g_409 p_893->g_496 p_893->g_339.f7 p_893->g_506 p_893->g_235.f0.f4 p_893->g_157.f5 p_893->g_307 p_893->g_745 p_893->g_750 p_893->g_331.f3 p_893->g_401 p_893->g_751 p_893->g_759 p_893->g_308 p_893->g_559.f0.f3 p_893->g_768
 * writes: p_893->g_82 p_893->g_85 p_893->g_88 p_893->g_341 p_893->g_130 p_893->g_360 p_893->g_362 p_893->g_134 p_893->g_104 p_893->g_409 p_893->g_331.f5 p_893->g_496 p_893->g_339.f7 p_893->g_129 p_893->g_235.f0.f4 p_893->g_157.f5 p_893->g_307 p_893->g_745 p_893->g_331.f3 p_893->g_759 p_893->g_339.f3
 */
int32_t * func_49(int64_t  p_50, struct S4 * p_893)
{ /* block id: 15 */
    VECTOR(int32_t, 16) l_71 = (VECTOR(int32_t, 16))((-8L), (VECTOR(int32_t, 4))((-8L), (VECTOR(int32_t, 2))((-8L), 0L), 0L), 0L, (-8L), 0L, (VECTOR(int32_t, 2))((-8L), 0L), (VECTOR(int32_t, 2))((-8L), 0L), (-8L), 0L, (-8L), 0L);
    VECTOR(int32_t, 16) l_72 = (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, (-9L)), (-9L)), (-9L), 1L, (-9L), (VECTOR(int32_t, 2))(1L, (-9L)), (VECTOR(int32_t, 2))(1L, (-9L)), 1L, (-9L), 1L, (-9L));
    int8_t *l_73 = &p_893->g_15;
    int8_t **l_74 = &l_73;
    VECTOR(int32_t, 4) l_75 = (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x7C2BB03FL), 0x7C2BB03FL);
    VECTOR(int8_t, 16) l_78 = (VECTOR(int8_t, 16))(0x19L, (VECTOR(int8_t, 4))(0x19L, (VECTOR(int8_t, 2))(0x19L, (-9L)), (-9L)), (-9L), 0x19L, (-9L), (VECTOR(int8_t, 2))(0x19L, (-9L)), (VECTOR(int8_t, 2))(0x19L, (-9L)), 0x19L, (-9L), 0x19L, (-9L));
    int8_t *l_79 = (void*)0;
    int8_t **l_80 = &l_79;
    int32_t l_345[8];
    int32_t *l_752 = &p_893->g_339.f3;
    uint64_t l_766 = 0xDB54472D4DE997C2L;
    int i;
    for (i = 0; i < 8; i++)
        l_345[i] = (-1L);
    (*p_893->g_768) = func_51((((~(func_57((func_63((func_66(func_11(func_11(((safe_add_func_int32_t_s_s(((VECTOR(int32_t, 16))(l_71.sdbc3b14546eed63d)).s9, (((VECTOR(int32_t, 4))((((VECTOR(int32_t, 2))(3L, 0L)).yxxx && ((VECTOR(int32_t, 4))((((VECTOR(int32_t, 16))(add_sat(((VECTOR(int32_t, 2))(0L, (-1L))).xxxxyxxyyxyxyyxx, ((VECTOR(int32_t, 16))(l_72.s341db1ea26daf190))))).s1878 || ((VECTOR(int32_t, 2))(0x378F7CF6L, 5L)).yxyy)))))).x <= ((void*)0 != &p_893->g_15)))) , ((*l_74) = l_73)), ((((VECTOR(int32_t, 16))((((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))((((VECTOR(int32_t, 16))(p_893->g_15, ((VECTOR(int32_t, 4))(l_75.ywyz)).y, 5L, 2L, ((VECTOR(int32_t, 4))((!((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(rotate(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))((((VECTOR(int32_t, 16))(((safe_sub_func_int64_t_s_s((l_71.s6 != p_893->g_2.s2), p_50)) != (((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(max(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(l_78.s43)), (-1L), ((&p_893->g_15 != ((*l_80) = l_79)) & p_893->g_2.s0), ((VECTOR(int8_t, 4))(1L)))).s10, ((VECTOR(int8_t, 2))((-2L)))))), (*p_893->g_14), (*p_893->g_14), 0x7EL, l_71.sf, 1L, 0x38L)), l_71.s9, l_71.s3, (-3L), ((VECTOR(int8_t, 4))(1L)), 0x34L)).se < (*p_893->g_14))), ((VECTOR(int32_t, 2))(0L)), ((VECTOR(int32_t, 2))(3L)), ((VECTOR(int32_t, 2))(0x2E8A67A0L)), p_893->g_15, p_50, 0x24E49BDCL, 8L, 0x17E21AE2L, 0L, 0x239E7607L, (-1L), 0x770B1168L)).se6 <= ((VECTOR(int32_t, 2))(0L))))), 0L, ((VECTOR(int32_t, 4))(0x11D3B62AL)), 0x42956FC2L)).odd, ((VECTOR(int32_t, 4))((-1L)))))), p_50, ((VECTOR(int32_t, 2))(0x317F37F7L)), 0x72AF3367L)).even))), l_71.sd, p_893->g_2.sd, ((VECTOR(int32_t, 2))((-3L))), ((VECTOR(int32_t, 4))(0x468045C7L)))).s30 && ((VECTOR(int32_t, 2))(0x7A74CFD5L))))), 1L, 0L)).wzyxyxwxzxzwwyxz && ((VECTOR(int32_t, 16))(0x09E53F83L))))).sb & 0L) > l_78.sf), p_893), l_75.y, p_893), l_71.s7, p_893) == l_345[7]), p_50, p_893) <= l_345[7]), p_50, p_893->g_751, l_752, l_752, p_893) , 0UL)) & (-1L)) | p_893->g_559.f0.f3), p_893->g_184.x, p_893->g_2.sb, l_345[7], l_766, p_893);
    return l_752;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t * func_51(int8_t  p_52, int32_t  p_53, int16_t  p_54, uint64_t  p_55, uint16_t  p_56, struct S4 * p_893)
{ /* block id: 256 */
    int32_t *l_767 = (void*)0;
    return l_767;
}


/* ------------------------------------------ */
/* 
 * reads : p_893->g_759 p_893->g_308
 * writes: p_893->g_759 p_893->g_339.f3
 */
union U2  func_57(uint64_t  p_58, uint8_t  p_59, int32_t * p_60, int32_t * p_61, int32_t * p_62, struct S4 * p_893)
{ /* block id: 251 */
    int32_t *l_753 = &p_893->g_331.f3;
    int32_t *l_754 = &p_893->g_82;
    int32_t *l_755 = &p_893->g_339.f3;
    int32_t *l_756 = &p_893->g_82;
    int32_t *l_757[10][10][2] = {{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}}};
    int64_t l_758[9][3] = {{(-4L),(-4L),(-7L)},{(-4L),(-4L),(-7L)},{(-4L),(-4L),(-7L)},{(-4L),(-4L),(-7L)},{(-4L),(-4L),(-7L)},{(-4L),(-4L),(-7L)},{(-4L),(-4L),(-7L)},{(-4L),(-4L),(-7L)},{(-4L),(-4L),(-7L)}};
    uint32_t l_762 = 4294967295UL;
    union U2 *l_765 = &p_893->g_235;
    int i, j, k;
    --p_893->g_759;
    l_762++;
    (*p_61) = ((l_765 != l_765) && ((VECTOR(int8_t, 2))(0x2AL, (-1L))).hi);
    return p_893->g_308;
}


/* ------------------------------------------ */
/* 
 * reads : p_893->g_157.f0 p_893->g_359 p_893->g_85 p_893->g_15 p_893->g_88 p_893->g_129.f5 p_893->g_157.f3 p_893->g_390 p_893->g_409 p_893->g_496 p_893->g_506 p_893->g_235.f0.f4 p_893->g_157.f5 p_893->g_82 p_893->g_307 p_893->g_745 p_893->g_130 p_893->g_750 p_893->g_331.f3 p_893->g_401 p_893->g_308.f0.f1 p_893->g_331.f5 p_893->g_184 p_893->g_265 p_893->g_104 p_893->g_339.f7
 * writes: p_893->g_360 p_893->g_362 p_893->g_130 p_893->g_134 p_893->g_104 p_893->g_82 p_893->g_88 p_893->g_409 p_893->g_331.f5 p_893->g_496 p_893->g_339.f7 p_893->g_129 p_893->g_235.f0.f4 p_893->g_157.f5 p_893->g_307 p_893->g_745 p_893->g_331.f3
 */
uint64_t  func_63(uint16_t  p_64, int32_t  p_65, struct S4 * p_893)
{ /* block id: 121 */
    uint32_t *l_351 = &p_893->g_140;
    VECTOR(int8_t, 16) l_357 = (VECTOR(int8_t, 16))((-8L), (VECTOR(int8_t, 4))((-8L), (VECTOR(int8_t, 2))((-8L), 0L), 0L), 0L, (-8L), 0L, (VECTOR(int8_t, 2))((-8L), 0L), (VECTOR(int8_t, 2))((-8L), 0L), (-8L), 0L, (-8L), 0L);
    union U3 *l_361[5][6] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
    int32_t l_368 = 0x70509F4EL;
    int32_t l_386[1][2][9];
    uint8_t *l_458 = &p_893->g_104;
    VECTOR(int8_t, 8) l_533 = (VECTOR(int8_t, 8))(0x22L, (VECTOR(int8_t, 4))(0x22L, (VECTOR(int8_t, 2))(0x22L, 0x6BL), 0x6BL), 0x6BL, 0x22L, 0x6BL);
    VECTOR(uint64_t, 8) l_589 = (VECTOR(uint64_t, 8))(0xD311FD6E08EEC55DL, (VECTOR(uint64_t, 4))(0xD311FD6E08EEC55DL, (VECTOR(uint64_t, 2))(0xD311FD6E08EEC55DL, 0xA9F5215F8D4D24B0L), 0xA9F5215F8D4D24B0L), 0xA9F5215F8D4D24B0L, 0xD311FD6E08EEC55DL, 0xA9F5215F8D4D24B0L);
    VECTOR(uint64_t, 2) l_595 = (VECTOR(uint64_t, 2))(8UL, 18446744073709551615UL);
    VECTOR(uint64_t, 8) l_600 = (VECTOR(uint64_t, 8))(0xE33BB7D1C2D2632FL, (VECTOR(uint64_t, 4))(0xE33BB7D1C2D2632FL, (VECTOR(uint64_t, 2))(0xE33BB7D1C2D2632FL, 2UL), 2UL), 2UL, 0xE33BB7D1C2D2632FL, 2UL);
    VECTOR(uint32_t, 16) l_631 = (VECTOR(uint32_t, 16))(0x1BC5A23EL, (VECTOR(uint32_t, 4))(0x1BC5A23EL, (VECTOR(uint32_t, 2))(0x1BC5A23EL, 4294967292UL), 4294967292UL), 4294967292UL, 0x1BC5A23EL, 4294967292UL, (VECTOR(uint32_t, 2))(0x1BC5A23EL, 4294967292UL), (VECTOR(uint32_t, 2))(0x1BC5A23EL, 4294967292UL), 0x1BC5A23EL, 4294967292UL, 0x1BC5A23EL, 4294967292UL);
    VECTOR(uint32_t, 8) l_645 = (VECTOR(uint32_t, 8))(9UL, (VECTOR(uint32_t, 4))(9UL, (VECTOR(uint32_t, 2))(9UL, 4294967295UL), 4294967295UL), 4294967295UL, 9UL, 4294967295UL);
    VECTOR(uint32_t, 4) l_646 = (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 0UL), 0UL);
    int32_t l_719[7][5][6] = {{{0L,1L,0x6714123BL,0x2E9510F6L,(-8L),1L},{0L,1L,0x6714123BL,0x2E9510F6L,(-8L),1L},{0L,1L,0x6714123BL,0x2E9510F6L,(-8L),1L},{0L,1L,0x6714123BL,0x2E9510F6L,(-8L),1L},{0L,1L,0x6714123BL,0x2E9510F6L,(-8L),1L}},{{0L,1L,0x6714123BL,0x2E9510F6L,(-8L),1L},{0L,1L,0x6714123BL,0x2E9510F6L,(-8L),1L},{0L,1L,0x6714123BL,0x2E9510F6L,(-8L),1L},{0L,1L,0x6714123BL,0x2E9510F6L,(-8L),1L},{0L,1L,0x6714123BL,0x2E9510F6L,(-8L),1L}},{{0L,1L,0x6714123BL,0x2E9510F6L,(-8L),1L},{0L,1L,0x6714123BL,0x2E9510F6L,(-8L),1L},{0L,1L,0x6714123BL,0x2E9510F6L,(-8L),1L},{0L,1L,0x6714123BL,0x2E9510F6L,(-8L),1L},{0L,1L,0x6714123BL,0x2E9510F6L,(-8L),1L}},{{0L,1L,0x6714123BL,0x2E9510F6L,(-8L),1L},{0L,1L,0x6714123BL,0x2E9510F6L,(-8L),1L},{0L,1L,0x6714123BL,0x2E9510F6L,(-8L),1L},{0L,1L,0x6714123BL,0x2E9510F6L,(-8L),1L},{0L,1L,0x6714123BL,0x2E9510F6L,(-8L),1L}},{{0L,1L,0x6714123BL,0x2E9510F6L,(-8L),1L},{0L,1L,0x6714123BL,0x2E9510F6L,(-8L),1L},{0L,1L,0x6714123BL,0x2E9510F6L,(-8L),1L},{0L,1L,0x6714123BL,0x2E9510F6L,(-8L),1L},{0L,1L,0x6714123BL,0x2E9510F6L,(-8L),1L}},{{0L,1L,0x6714123BL,0x2E9510F6L,(-8L),1L},{0L,1L,0x6714123BL,0x2E9510F6L,(-8L),1L},{0L,1L,0x6714123BL,0x2E9510F6L,(-8L),1L},{0L,1L,0x6714123BL,0x2E9510F6L,(-8L),1L},{0L,1L,0x6714123BL,0x2E9510F6L,(-8L),1L}},{{0L,1L,0x6714123BL,0x2E9510F6L,(-8L),1L},{0L,1L,0x6714123BL,0x2E9510F6L,(-8L),1L},{0L,1L,0x6714123BL,0x2E9510F6L,(-8L),1L},{0L,1L,0x6714123BL,0x2E9510F6L,(-8L),1L},{0L,1L,0x6714123BL,0x2E9510F6L,(-8L),1L}}};
    int i, j, k;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 9; k++)
                l_386[i][j][k] = 0x138211D9L;
        }
    }
    if ((p_893->g_157.f0 < (safe_lshift_func_int16_t_s_s(0x369EL, 9))))
    { /* block id: 122 */
        uint32_t *l_350 = &p_893->g_157.f4;
        int64_t *l_356 = &p_893->g_130;
        int32_t l_358 = 0x6DD7211DL;
        int16_t *l_367 = (void*)0;
        int8_t l_375[3];
        uint32_t l_382 = 0x23F724A3L;
        int32_t l_383 = 0x54C11313L;
        int16_t *l_384 = &p_893->g_134;
        uint8_t *l_385 = &p_893->g_104;
        int32_t l_397 = 0x40E08F3CL;
        int32_t l_399[2][5] = {{(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L)}};
        VECTOR(uint64_t, 4) l_420 = (VECTOR(uint64_t, 4))(0x11EE539BF445D051L, (VECTOR(uint64_t, 2))(0x11EE539BF445D051L, 0xADF27569AED1C048L), 0xADF27569AED1C048L);
        VECTOR(int32_t, 8) l_473 = (VECTOR(int32_t, 8))(0x1732B45CL, (VECTOR(int32_t, 4))(0x1732B45CL, (VECTOR(int32_t, 2))(0x1732B45CL, 0x5D2C7250L), 0x5D2C7250L), 0x5D2C7250L, 0x1732B45CL, 0x5D2C7250L);
        int64_t l_489[5][4] = {{4L,0x09CA9A2E35B328D8L,0L,0x09CA9A2E35B328D8L},{4L,0x09CA9A2E35B328D8L,0L,0x09CA9A2E35B328D8L},{4L,0x09CA9A2E35B328D8L,0L,0x09CA9A2E35B328D8L},{4L,0x09CA9A2E35B328D8L,0L,0x09CA9A2E35B328D8L},{4L,0x09CA9A2E35B328D8L,0L,0x09CA9A2E35B328D8L}};
        int i, j;
        for (i = 0; i < 3; i++)
            l_375[i] = (-1L);
lbl_412:
        p_893->g_360 = ((((VECTOR(uint64_t, 8))(0x602C19BAF9F215C9L, ((((*p_893->g_88) = ((FAKE_DIVERGE(p_893->group_1_offset, get_group_id(1), 10) , l_350) != l_351)) >= ((((safe_add_func_uint64_t_u_u((safe_rshift_func_int16_t_s_s((((l_351 != ((((*l_356) ^= p_64) <= (((p_65 , l_350) == l_350) >= ((VECTOR(int8_t, 8))(min(((VECTOR(int8_t, 8))(clz(((VECTOR(int8_t, 4))(l_357.sdf79)).xyyzxwwx))), (int8_t)(p_893->g_308.f0.f1 ^ ((((p_893->g_331.f5 , l_357.s4) >= l_358) & 2L) , l_357.s0))))).s6)) , (void*)0)) ^ 0x456880B5BB094067L) >= p_893->g_184.z), 14)), p_64)) ^ p_64) > p_893->g_265.x) , FAKE_DIVERGE(p_893->global_2_offset, get_global_id(2), 10))) == 0L), ((VECTOR(uint64_t, 2))(18446744073709551615UL)), ((VECTOR(uint64_t, 4))(0xAA23FD643438F63FL)))).s4 != p_64) , p_893->g_359);
        p_893->g_362[4][0][5] = l_361[4][5];
        if ((safe_mul_func_int8_t_s_s(((safe_lshift_func_int16_t_s_u((l_368 = ((*p_893->g_85) > (l_358 , l_357.sc))), 7)) < (safe_div_func_int8_t_s_s((l_386[0][0][0] ^= (((safe_sub_func_int64_t_s_s(((0xB97714C2L >= ((p_64 ^ (safe_rshift_func_uint8_t_u_u(((*l_385) = (l_375[2] || (((*l_384) = (safe_div_func_int64_t_s_s(((l_383 = (safe_mod_func_int16_t_s_s(((safe_sub_func_int64_t_s_s(((*l_356) = (((void*)0 == p_893->g_88) >= ((l_382 , p_893->g_129.f5) | GROUP_DIVERGE(2, 1)))), l_357.sc)) , p_65), 0x0D75L))) | l_357.s5), p_893->g_157.f3))) & 0x4C96L))), p_64))) , l_357.s7)) , l_375[2]), l_382)) & GROUP_DIVERGE(0, 1)) , l_357.s3)), p_65))), 1L)))
        { /* block id: 133 */
            VECTOR(int16_t, 4) l_417 = (VECTOR(int16_t, 4))(2L, (VECTOR(int16_t, 2))(2L, (-2L)), (-2L));
            int32_t *l_456 = (void*)0;
            uint8_t *l_459 = &p_893->g_331.f1;
            int32_t l_474[9][10] = {{0x2D842056L,0x7FB8FE60L,0L,1L,(-4L),1L,0L,0x7FB8FE60L,0x2D842056L,0L},{0x2D842056L,0x7FB8FE60L,0L,1L,(-4L),1L,0L,0x7FB8FE60L,0x2D842056L,0L},{0x2D842056L,0x7FB8FE60L,0L,1L,(-4L),1L,0L,0x7FB8FE60L,0x2D842056L,0L},{0x2D842056L,0x7FB8FE60L,0L,1L,(-4L),1L,0L,0x7FB8FE60L,0x2D842056L,0L},{0x2D842056L,0x7FB8FE60L,0L,1L,(-4L),1L,0L,0x7FB8FE60L,0x2D842056L,0L},{0x2D842056L,0x7FB8FE60L,0L,1L,(-4L),1L,0L,0x7FB8FE60L,0x2D842056L,0L},{0x2D842056L,0x7FB8FE60L,0L,1L,(-4L),1L,0L,0x7FB8FE60L,0x2D842056L,0L},{0x2D842056L,0x7FB8FE60L,0L,1L,(-4L),1L,0L,0x7FB8FE60L,0x2D842056L,0L},{0x2D842056L,0x7FB8FE60L,0L,1L,(-4L),1L,0L,0x7FB8FE60L,0x2D842056L,0L}};
            int i, j;
            if (p_65)
            { /* block id: 134 */
                int16_t l_395 = (-1L);
                int32_t l_396 = 1L;
                int32_t l_398[9][1][7] = {{{1L,0x0DB2BDD8L,1L,1L,0x0DB2BDD8L,1L,1L}},{{1L,0x0DB2BDD8L,1L,1L,0x0DB2BDD8L,1L,1L}},{{1L,0x0DB2BDD8L,1L,1L,0x0DB2BDD8L,1L,1L}},{{1L,0x0DB2BDD8L,1L,1L,0x0DB2BDD8L,1L,1L}},{{1L,0x0DB2BDD8L,1L,1L,0x0DB2BDD8L,1L,1L}},{{1L,0x0DB2BDD8L,1L,1L,0x0DB2BDD8L,1L,1L}},{{1L,0x0DB2BDD8L,1L,1L,0x0DB2BDD8L,1L,1L}},{{1L,0x0DB2BDD8L,1L,1L,0x0DB2BDD8L,1L,1L}},{{1L,0x0DB2BDD8L,1L,1L,0x0DB2BDD8L,1L,1L}}};
                int i, j, k;
                for (p_893->g_104 = 0; (p_893->g_104 <= 11); p_893->g_104 = safe_add_func_uint8_t_u_u(p_893->g_104, 7))
                { /* block id: 137 */
                    int32_t *l_389 = &l_368;
                    int32_t l_394 = (-2L);
                    int32_t l_406 = 0x71211DD3L;
                    int32_t l_407 = 1L;
                    (*p_893->g_88) = p_65;
                    if (((*l_389) = ((*p_893->g_88) = l_382)))
                    { /* block id: 141 */
                        (*p_893->g_390) = &l_383;
                    }
                    else
                    { /* block id: 143 */
                        int32_t *l_391 = &l_368;
                        int32_t l_392 = 0L;
                        int32_t *l_393[10] = {&p_893->g_339.f3,&p_893->g_339.f3,&p_893->g_339.f3,&p_893->g_339.f3,&p_893->g_339.f3,&p_893->g_339.f3,&p_893->g_339.f3,&p_893->g_339.f3,&p_893->g_339.f3,&p_893->g_339.f3};
                        int32_t l_400 = 0x7B6FF31CL;
                        int64_t l_403 = 0x13647E2D973F3C82L;
                        int i;
                        p_893->g_409++;
                        if (l_382)
                            goto lbl_412;
                    }
                }
            }
            else
            { /* block id: 148 */
                VECTOR(uint64_t, 16) l_421 = (VECTOR(uint64_t, 16))(0xF61F6BC8BAFE1D65L, (VECTOR(uint64_t, 4))(0xF61F6BC8BAFE1D65L, (VECTOR(uint64_t, 2))(0xF61F6BC8BAFE1D65L, 0xD4BAC867D783B105L), 0xD4BAC867D783B105L), 0xD4BAC867D783B105L, 0xF61F6BC8BAFE1D65L, 0xD4BAC867D783B105L, (VECTOR(uint64_t, 2))(0xF61F6BC8BAFE1D65L, 0xD4BAC867D783B105L), (VECTOR(uint64_t, 2))(0xF61F6BC8BAFE1D65L, 0xD4BAC867D783B105L), 0xF61F6BC8BAFE1D65L, 0xD4BAC867D783B105L, 0xF61F6BC8BAFE1D65L, 0xD4BAC867D783B105L);
                int32_t l_454 = 1L;
                int64_t l_465 = 1L;
                int32_t l_472 = 0x6647B0AAL;
                int32_t l_476 = 0x66216343L;
                int32_t l_477 = 2L;
                int32_t l_478 = 1L;
                int32_t l_479[2];
                int32_t *l_488[3];
                uint16_t l_490[5] = {0x9FA6L,0x9FA6L,0x9FA6L,0x9FA6L,0x9FA6L};
                int i;
                for (i = 0; i < 2; i++)
                    l_479[i] = 0L;
                for (i = 0; i < 3; i++)
                    l_488[i] = (void*)0;
                for (p_893->g_331.f5 = 0; (p_893->g_331.f5 <= (-18)); --p_893->g_331.f5)
                { /* block id: 151 */
                    uint64_t *l_424 = &p_893->g_235.f0.f0;
                    int32_t l_455[4][9] = {{5L,5L,(-9L),0x4BE77BC8L,8L,(-7L),0x3D5B639AL,0L,0x3D5B639AL},{5L,5L,(-9L),0x4BE77BC8L,8L,(-7L),0x3D5B639AL,0L,0x3D5B639AL},{5L,5L,(-9L),0x4BE77BC8L,8L,(-7L),0x3D5B639AL,0L,0x3D5B639AL},{5L,5L,(-9L),0x4BE77BC8L,8L,(-7L),0x3D5B639AL,0L,0x3D5B639AL}};
                    int64_t *l_463[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
                    int i, j;
                    (1 + 1);
                }
                l_490[1]--;
            }
        }
        else
        { /* block id: 174 */
            int32_t *l_493 = &l_399[1][4];
            int32_t *l_494[10][1] = {{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}};
            int i, j;
            l_493 = (void*)0;
            p_893->g_496--;
        }
    }
    else
    { /* block id: 178 */
        VECTOR(uint64_t, 8) l_512 = (VECTOR(uint64_t, 8))(0UL, (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 0x92EC3BC107C5ACC3L), 0x92EC3BC107C5ACC3L), 0x92EC3BC107C5ACC3L, 0UL, 0x92EC3BC107C5ACC3L);
        union U3 l_544 = {0};
        int32_t l_548 = 0L;
        VECTOR(int32_t, 2) l_551 = (VECTOR(int32_t, 2))((-1L), 0x56616F8CL);
        VECTOR(int64_t, 8) l_573 = (VECTOR(int64_t, 8))((-5L), (VECTOR(int64_t, 4))((-5L), (VECTOR(int64_t, 2))((-5L), 1L), 1L), 1L, (-5L), 1L);
        VECTOR(int64_t, 4) l_575 = (VECTOR(int64_t, 4))(0x5EC1EDF8B9FCA898L, (VECTOR(int64_t, 2))(0x5EC1EDF8B9FCA898L, 2L), 2L);
        VECTOR(uint64_t, 2) l_592 = (VECTOR(uint64_t, 2))(0UL, 0x0FADE25220C40B4FL);
        VECTOR(int8_t, 4) l_609 = (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0x0EL), 0x0EL);
        VECTOR(uint32_t, 4) l_621 = (VECTOR(uint32_t, 4))(0x5889583EL, (VECTOR(uint32_t, 2))(0x5889583EL, 4294967289UL), 4294967289UL);
        VECTOR(uint32_t, 4) l_626 = (VECTOR(uint32_t, 4))(6UL, (VECTOR(uint32_t, 2))(6UL, 0x14785DDEL), 0x14785DDEL);
        int16_t l_638 = 0x40E9L;
        int64_t *l_672 = &p_893->g_138;
        VECTOR(int8_t, 2) l_678 = (VECTOR(int8_t, 2))(0x48L, 2L);
        VECTOR(int8_t, 2) l_680 = (VECTOR(int8_t, 2))(6L, 0x74L);
        int8_t *l_709 = (void*)0;
        union U2 *l_713 = &p_893->g_235;
        uint32_t l_735 = 0x0D529759L;
        int32_t *l_739 = (void*)0;
        int32_t *l_740 = &l_719[5][2][5];
        int32_t *l_741 = (void*)0;
        int32_t *l_742 = &l_719[5][0][1];
        int32_t *l_743 = &l_386[0][0][0];
        int32_t *l_744[7][3] = {{&l_368,&p_893->g_331.f3,&l_719[5][2][5]},{&l_368,&p_893->g_331.f3,&l_719[5][2][5]},{&l_368,&p_893->g_331.f3,&l_719[5][2][5]},{&l_368,&p_893->g_331.f3,&l_719[5][2][5]},{&l_368,&p_893->g_331.f3,&l_719[5][2][5]},{&l_368,&p_893->g_331.f3,&l_719[5][2][5]},{&l_368,&p_893->g_331.f3,&l_719[5][2][5]}};
        int i, j;
        if ((+l_386[0][1][7]))
        { /* block id: 179 */
            uint32_t l_503 = 4294967294UL;
            uint8_t *l_540[1][8][2] = {{{&p_893->g_331.f1,&p_893->g_307},{&p_893->g_331.f1,&p_893->g_307},{&p_893->g_331.f1,&p_893->g_307},{&p_893->g_331.f1,&p_893->g_307},{&p_893->g_331.f1,&p_893->g_307},{&p_893->g_331.f1,&p_893->g_307},{&p_893->g_331.f1,&p_893->g_307},{&p_893->g_331.f1,&p_893->g_307}}};
            int32_t l_541 = (-1L);
            uint32_t *l_545[9][3][6] = {{{&p_893->g_157.f4,&p_893->g_235.f0.f4,&p_893->g_235.f0.f3,&p_893->g_157.f4,&p_893->g_140,&p_893->g_235.f0.f4},{&p_893->g_157.f4,&p_893->g_235.f0.f4,&p_893->g_235.f0.f3,&p_893->g_157.f4,&p_893->g_140,&p_893->g_235.f0.f4},{&p_893->g_157.f4,&p_893->g_235.f0.f4,&p_893->g_235.f0.f3,&p_893->g_157.f4,&p_893->g_140,&p_893->g_235.f0.f4}},{{&p_893->g_157.f4,&p_893->g_235.f0.f4,&p_893->g_235.f0.f3,&p_893->g_157.f4,&p_893->g_140,&p_893->g_235.f0.f4},{&p_893->g_157.f4,&p_893->g_235.f0.f4,&p_893->g_235.f0.f3,&p_893->g_157.f4,&p_893->g_140,&p_893->g_235.f0.f4},{&p_893->g_157.f4,&p_893->g_235.f0.f4,&p_893->g_235.f0.f3,&p_893->g_157.f4,&p_893->g_140,&p_893->g_235.f0.f4}},{{&p_893->g_157.f4,&p_893->g_235.f0.f4,&p_893->g_235.f0.f3,&p_893->g_157.f4,&p_893->g_140,&p_893->g_235.f0.f4},{&p_893->g_157.f4,&p_893->g_235.f0.f4,&p_893->g_235.f0.f3,&p_893->g_157.f4,&p_893->g_140,&p_893->g_235.f0.f4},{&p_893->g_157.f4,&p_893->g_235.f0.f4,&p_893->g_235.f0.f3,&p_893->g_157.f4,&p_893->g_140,&p_893->g_235.f0.f4}},{{&p_893->g_157.f4,&p_893->g_235.f0.f4,&p_893->g_235.f0.f3,&p_893->g_157.f4,&p_893->g_140,&p_893->g_235.f0.f4},{&p_893->g_157.f4,&p_893->g_235.f0.f4,&p_893->g_235.f0.f3,&p_893->g_157.f4,&p_893->g_140,&p_893->g_235.f0.f4},{&p_893->g_157.f4,&p_893->g_235.f0.f4,&p_893->g_235.f0.f3,&p_893->g_157.f4,&p_893->g_140,&p_893->g_235.f0.f4}},{{&p_893->g_157.f4,&p_893->g_235.f0.f4,&p_893->g_235.f0.f3,&p_893->g_157.f4,&p_893->g_140,&p_893->g_235.f0.f4},{&p_893->g_157.f4,&p_893->g_235.f0.f4,&p_893->g_235.f0.f3,&p_893->g_157.f4,&p_893->g_140,&p_893->g_235.f0.f4},{&p_893->g_157.f4,&p_893->g_235.f0.f4,&p_893->g_235.f0.f3,&p_893->g_157.f4,&p_893->g_140,&p_893->g_235.f0.f4}},{{&p_893->g_157.f4,&p_893->g_235.f0.f4,&p_893->g_235.f0.f3,&p_893->g_157.f4,&p_893->g_140,&p_893->g_235.f0.f4},{&p_893->g_157.f4,&p_893->g_235.f0.f4,&p_893->g_235.f0.f3,&p_893->g_157.f4,&p_893->g_140,&p_893->g_235.f0.f4},{&p_893->g_157.f4,&p_893->g_235.f0.f4,&p_893->g_235.f0.f3,&p_893->g_157.f4,&p_893->g_140,&p_893->g_235.f0.f4}},{{&p_893->g_157.f4,&p_893->g_235.f0.f4,&p_893->g_235.f0.f3,&p_893->g_157.f4,&p_893->g_140,&p_893->g_235.f0.f4},{&p_893->g_157.f4,&p_893->g_235.f0.f4,&p_893->g_235.f0.f3,&p_893->g_157.f4,&p_893->g_140,&p_893->g_235.f0.f4},{&p_893->g_157.f4,&p_893->g_235.f0.f4,&p_893->g_235.f0.f3,&p_893->g_157.f4,&p_893->g_140,&p_893->g_235.f0.f4}},{{&p_893->g_157.f4,&p_893->g_235.f0.f4,&p_893->g_235.f0.f3,&p_893->g_157.f4,&p_893->g_140,&p_893->g_235.f0.f4},{&p_893->g_157.f4,&p_893->g_235.f0.f4,&p_893->g_235.f0.f3,&p_893->g_157.f4,&p_893->g_140,&p_893->g_235.f0.f4},{&p_893->g_157.f4,&p_893->g_235.f0.f4,&p_893->g_235.f0.f3,&p_893->g_157.f4,&p_893->g_140,&p_893->g_235.f0.f4}},{{&p_893->g_157.f4,&p_893->g_235.f0.f4,&p_893->g_235.f0.f3,&p_893->g_157.f4,&p_893->g_140,&p_893->g_235.f0.f4},{&p_893->g_157.f4,&p_893->g_235.f0.f4,&p_893->g_235.f0.f3,&p_893->g_157.f4,&p_893->g_140,&p_893->g_235.f0.f4},{&p_893->g_157.f4,&p_893->g_235.f0.f4,&p_893->g_235.f0.f3,&p_893->g_157.f4,&p_893->g_140,&p_893->g_235.f0.f4}}};
            uint32_t *l_546 = &p_893->g_140;
            int8_t l_547 = 0x7AL;
            int64_t *l_549[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            int32_t *l_550[3];
            VECTOR(uint16_t, 16) l_552 = (VECTOR(uint16_t, 16))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0x22BAL), 0x22BAL), 0x22BAL, 1UL, 0x22BAL, (VECTOR(uint16_t, 2))(1UL, 0x22BAL), (VECTOR(uint16_t, 2))(1UL, 0x22BAL), 1UL, 0x22BAL, 1UL, 0x22BAL);
            int i, j, k;
            for (i = 0; i < 3; i++)
                l_550[i] = &l_548;
lbl_508:
            for (p_893->g_339.f7 = (-19); (p_893->g_339.f7 == 14); ++p_893->g_339.f7)
            { /* block id: 182 */
                int32_t **l_501 = &p_893->g_88;
                int32_t *l_502[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                volatile struct S1 *l_507 = &p_893->g_129;
                int i;
                (*l_501) = &p_65;
                l_503++;
                (*l_507) = (p_65 , p_893->g_506);
                if (p_893->g_157.f0)
                    goto lbl_508;
            }
            for (p_893->g_235.f0.f4 = (-12); (p_893->g_235.f0.f4 < 58); ++p_893->g_235.f0.f4)
            { /* block id: 190 */
                if (p_893->g_157.f3)
                    goto lbl_508;
            }
            l_386[0][0][3] = (((VECTOR(int8_t, 8))(min(((VECTOR(int8_t, 16))(((((VECTOR(uint64_t, 8))(p_893->g_511.ywyxwxwy)).s7 == (p_893->g_264.x |= ((((((VECTOR(uint64_t, 4))(l_512.s5512)).w | ((p_893->g_276.y <= 0x0117L) || (((safe_sub_func_uint16_t_u_u(((VECTOR(uint16_t, 8))(upsample(((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 2))(6UL, 255UL)).yyxyxyyxxyxyyxxy + ((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 16))(0xD6L, ((VECTOR(uint8_t, 8))(0UL, 0x87L, (l_548 |= (safe_add_func_int8_t_s_s((((((safe_div_func_int32_t_s_s((safe_lshift_func_uint16_t_u_u(GROUP_DIVERGE(0, 1), 5)), (p_893->g_419.s6 || (safe_add_func_uint8_t_u_u(p_65, (safe_sub_func_uint32_t_u_u(((void*)0 == &p_893->g_138), (((safe_mod_func_uint16_t_u_u(((FAKE_DIVERGE(p_893->local_1_offset, get_local_id(1), 10) && 0L) | (((l_545[4][2][3] = ((((safe_rshift_func_int8_t_s_s(l_503, ((((VECTOR(int8_t, 16))(l_533.s3752224571245340)).s9 | (((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 16))((safe_lshift_func_uint8_t_u_s((l_541 = ((*l_458)--)), 3)), (((safe_div_func_int64_t_s_s(l_533.s4, (*p_893->g_464))) , l_544) , 0x755CF8635489AA6CL), 0x3A3A3CD1AD4FF8ADL, ((VECTOR(uint64_t, 8))(4UL)), 1UL, 0UL, 0x43653B8815307A8BL, 18446744073709551607UL, 1UL)).sf2c4 + ((VECTOR(uint64_t, 4))(18446744073709551614UL))))).w , 6UL)) && FAKE_DIVERGE(p_893->group_0_offset, get_group_id(0), 10)))) , l_503) < (*p_893->g_464)) , &p_893->g_140)) != l_546) , p_65)), 1L)) > (-1L)) || l_547)))))))) < l_386[0][0][0]) <= p_65) , (void*)0) != (void*)0), GROUP_DIVERGE(2, 1)))), ((VECTOR(uint8_t, 2))(0x25L)), FAKE_DIVERGE(p_893->group_2_offset, get_group_id(2), 10), 0xC7L, 0x8EL)), ((VECTOR(uint8_t, 4))(1UL)), p_64, 0x03L, 0xD2L)) + ((VECTOR(uint8_t, 16))(255UL)))))))).even, ((VECTOR(uint8_t, 8))(248UL))))).s4, 8L)) , FAKE_DIVERGE(p_893->group_1_offset, get_group_id(1), 10)) && p_893->g_134))) >= 0x90L) > p_64) , l_503))) && (-1L)), ((VECTOR(int8_t, 4))((-8L))), 0L, (-5L), 0x7BL, ((VECTOR(int8_t, 2))((-1L))), 0x06L, l_548, (-1L), ((VECTOR(int8_t, 2))(6L)), 0L)).odd, ((VECTOR(int8_t, 8))((-6L)))))).s0 >= GROUP_DIVERGE(1, 1));
            --l_552.s8;
        }
        else
        { /* block id: 200 */
            VECTOR(int64_t, 4) l_571 = (VECTOR(int64_t, 4))((-3L), (VECTOR(int64_t, 2))((-3L), 0x50EBA67F79BDE172L), 0x50EBA67F79BDE172L);
            VECTOR(uint32_t, 8) l_624 = (VECTOR(uint32_t, 8))(0x588F11D9L, (VECTOR(uint32_t, 4))(0x588F11D9L, (VECTOR(uint32_t, 2))(0x588F11D9L, 0x8AF8299AL), 0x8AF8299AL), 0x8AF8299AL, 0x588F11D9L, 0x8AF8299AL);
            VECTOR(uint32_t, 2) l_625 = (VECTOR(uint32_t, 2))(0x5B670E58L, 0xF9D77A20L);
            VECTOR(uint32_t, 8) l_627 = (VECTOR(uint32_t, 8))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 0x09502576L), 0x09502576L), 0x09502576L, 1UL, 0x09502576L);
            int32_t l_677 = 0x38AAB231L;
            struct S1 * volatile *l_738[9];
            int i;
            for (i = 0; i < 9; i++)
                l_738[i] = &p_893->g_332;
            for (p_893->g_157.f5 = 25; (p_893->g_157.f5 > 8); p_893->g_157.f5--)
            { /* block id: 203 */
                uint32_t l_576[8] = {0xDE7AF8FAL,2UL,0xDE7AF8FAL,0xDE7AF8FAL,2UL,0xDE7AF8FAL,0xDE7AF8FAL,2UL};
                VECTOR(uint64_t, 8) l_591 = (VECTOR(uint64_t, 8))(18446744073709551606UL, (VECTOR(uint64_t, 4))(18446744073709551606UL, (VECTOR(uint64_t, 2))(18446744073709551606UL, 0x3D46D0B02A446CDAL), 0x3D46D0B02A446CDAL), 0x3D46D0B02A446CDAL, 18446744073709551606UL, 0x3D46D0B02A446CDAL);
                VECTOR(uint64_t, 2) l_603 = (VECTOR(uint64_t, 2))(0x7C1D2903BE392B6EL, 18446744073709551615UL);
                VECTOR(uint32_t, 2) l_618 = (VECTOR(uint32_t, 2))(0x8DD532C5L, 0xE66FCF18L);
                VECTOR(int8_t, 16) l_664 = (VECTOR(int8_t, 16))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x27L), 0x27L), 0x27L, (-1L), 0x27L, (VECTOR(int8_t, 2))((-1L), 0x27L), (VECTOR(int8_t, 2))((-1L), 0x27L), (-1L), 0x27L, (-1L), 0x27L);
                union U3 l_665 = {0};
                int32_t l_681 = 0x269A717EL;
                VECTOR(int16_t, 8) l_698 = (VECTOR(int16_t, 8))(0x28B3L, (VECTOR(int16_t, 4))(0x28B3L, (VECTOR(int16_t, 2))(0x28B3L, 0x7DEFL), 0x7DEFL), 0x7DEFL, 0x28B3L, 0x7DEFL);
                VECTOR(int16_t, 16) l_701 = (VECTOR(int16_t, 16))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x02A0L), 0x02A0L), 0x02A0L, 1L, 0x02A0L, (VECTOR(int16_t, 2))(1L, 0x02A0L), (VECTOR(int16_t, 2))(1L, 0x02A0L), 1L, 0x02A0L, 1L, 0x02A0L);
                union U2 *l_711 = &p_893->g_235;
                VECTOR(uint64_t, 2) l_722 = (VECTOR(uint64_t, 2))(18446744073709551615UL, 1UL);
                int64_t l_729 = (-4L);
                int32_t *l_730 = (void*)0;
                int32_t *l_731 = &l_386[0][0][0];
                int32_t *l_732 = &l_681;
                int32_t *l_733 = &l_681;
                int32_t *l_734[8][7] = {{&p_893->g_339.f3,&p_893->g_339.f3,&p_893->g_339.f3,&p_893->g_339.f3,&p_893->g_339.f3,&p_893->g_339.f3,&p_893->g_339.f3},{&p_893->g_339.f3,&p_893->g_339.f3,&p_893->g_339.f3,&p_893->g_339.f3,&p_893->g_339.f3,&p_893->g_339.f3,&p_893->g_339.f3},{&p_893->g_339.f3,&p_893->g_339.f3,&p_893->g_339.f3,&p_893->g_339.f3,&p_893->g_339.f3,&p_893->g_339.f3,&p_893->g_339.f3},{&p_893->g_339.f3,&p_893->g_339.f3,&p_893->g_339.f3,&p_893->g_339.f3,&p_893->g_339.f3,&p_893->g_339.f3,&p_893->g_339.f3},{&p_893->g_339.f3,&p_893->g_339.f3,&p_893->g_339.f3,&p_893->g_339.f3,&p_893->g_339.f3,&p_893->g_339.f3,&p_893->g_339.f3},{&p_893->g_339.f3,&p_893->g_339.f3,&p_893->g_339.f3,&p_893->g_339.f3,&p_893->g_339.f3,&p_893->g_339.f3,&p_893->g_339.f3},{&p_893->g_339.f3,&p_893->g_339.f3,&p_893->g_339.f3,&p_893->g_339.f3,&p_893->g_339.f3,&p_893->g_339.f3,&p_893->g_339.f3},{&p_893->g_339.f3,&p_893->g_339.f3,&p_893->g_339.f3,&p_893->g_339.f3,&p_893->g_339.f3,&p_893->g_339.f3,&p_893->g_339.f3}};
                int i, j;
                (*p_893->g_88) |= 0x486D3BCFL;
                for (p_893->g_307 = 0; (p_893->g_307 != 5); p_893->g_307 = safe_add_func_int32_t_s_s(p_893->g_307, 3))
                { /* block id: 207 */
                    VECTOR(int64_t, 2) l_572 = (VECTOR(int64_t, 2))(0x2C2714D28FCD5B30L, 0x1FDED9146E2B8AAFL);
                    VECTOR(int64_t, 2) l_574 = (VECTOR(int64_t, 2))(0x67EF57992EA4AA6BL, 0x02407CB11ABD7EDBL);
                    uint32_t *l_577[10][9][2] = {{{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3}},{{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3}},{{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3}},{{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3}},{{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3}},{{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3}},{{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3}},{{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3}},{{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3}},{{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3},{&p_893->g_157.f4,&p_893->g_559.f0.f3}}};
                    VECTOR(uint64_t, 2) l_598 = (VECTOR(uint64_t, 2))(0x09F06075ABFA7072L, 0x418E1406FDEC1C64L);
                    VECTOR(uint64_t, 8) l_599 = (VECTOR(uint64_t, 8))(0xD32E695422C9AB32L, (VECTOR(uint64_t, 4))(0xD32E695422C9AB32L, (VECTOR(uint64_t, 2))(0xD32E695422C9AB32L, 1UL), 1UL), 1UL, 0xD32E695422C9AB32L, 1UL);
                    VECTOR(uint32_t, 16) l_630 = (VECTOR(uint32_t, 16))(5UL, (VECTOR(uint32_t, 4))(5UL, (VECTOR(uint32_t, 2))(5UL, 6UL), 6UL), 6UL, 5UL, 6UL, (VECTOR(uint32_t, 2))(5UL, 6UL), (VECTOR(uint32_t, 2))(5UL, 6UL), 5UL, 6UL, 5UL, 6UL);
                    VECTOR(int16_t, 16) l_697 = (VECTOR(int16_t, 16))(0x70B2L, (VECTOR(int16_t, 4))(0x70B2L, (VECTOR(int16_t, 2))(0x70B2L, (-5L)), (-5L)), (-5L), 0x70B2L, (-5L), (VECTOR(int16_t, 2))(0x70B2L, (-5L)), (VECTOR(int16_t, 2))(0x70B2L, (-5L)), 0x70B2L, (-5L), 0x70B2L, (-5L));
                    union U3 l_714 = {0};
                    int i, j, k;
                    (1 + 1);
                }
                l_735++;
                l_738[5] = &p_893->g_332;
            }
        }
        p_893->g_745++;
    }
    for (p_893->g_130 = 1; (p_893->g_130 <= (-27)); p_893->g_130 = safe_sub_func_uint8_t_u_u(p_893->g_130, 3))
    { /* block id: 246 */
        return p_64;
    }
    (*p_893->g_750) |= (FAKE_DIVERGE(p_893->group_0_offset, get_group_id(0), 10) < (p_65 < l_719[2][4][3]));
    return p_893->g_401;
}


/* ------------------------------------------ */
/* 
 * reads : p_893->g_82 p_893->g_341
 * writes: p_893->g_82 p_893->g_85 p_893->g_88 p_893->g_341
 */
int32_t  func_66(int8_t * p_67, uint64_t  p_68, struct S4 * p_893)
{ /* block id: 18 */
    int32_t *l_81[4] = {&p_893->g_82,&p_893->g_82,&p_893->g_82,&p_893->g_82};
    int8_t *l_84 = &p_893->g_15;
    int8_t **l_83[1];
    uint32_t l_143 = 2UL;
    int8_t l_160[6][2][3] = {{{(-9L),(-4L),0x78L},{(-9L),(-4L),0x78L}},{{(-9L),(-4L),0x78L},{(-9L),(-4L),0x78L}},{{(-9L),(-4L),0x78L},{(-9L),(-4L),0x78L}},{{(-9L),(-4L),0x78L},{(-9L),(-4L),0x78L}},{{(-9L),(-4L),0x78L},{(-9L),(-4L),0x78L}},{{(-9L),(-4L),0x78L},{(-9L),(-4L),0x78L}}};
    uint32_t l_187 = 0xA55A67DAL;
    uint32_t l_196 = 0xE2536E0CL;
    VECTOR(uint16_t, 16) l_274 = (VECTOR(uint16_t, 16))(0x50A4L, (VECTOR(uint16_t, 4))(0x50A4L, (VECTOR(uint16_t, 2))(0x50A4L, 0x771FL), 0x771FL), 0x771FL, 0x50A4L, 0x771FL, (VECTOR(uint16_t, 2))(0x50A4L, 0x771FL), (VECTOR(uint16_t, 2))(0x50A4L, 0x771FL), 0x50A4L, 0x771FL, 0x50A4L, 0x771FL);
    uint16_t l_310 = 0x5BB8L;
    uint32_t l_322 = 1UL;
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_83[i] = &l_84;
    p_893->g_82 &= p_68;
    if (((p_893->g_85 = p_67) != &p_893->g_15))
    { /* block id: 21 */
        int32_t **l_87[9] = {&l_81[3],&l_81[3],&l_81[3],&l_81[3],&l_81[3],&l_81[3],&l_81[3],&l_81[3],&l_81[3]};
        VECTOR(int64_t, 16) l_181 = (VECTOR(int64_t, 16))(0x20001E74730E419FL, (VECTOR(int64_t, 4))(0x20001E74730E419FL, (VECTOR(int64_t, 2))(0x20001E74730E419FL, 0x770EE47B89B5DBF1L), 0x770EE47B89B5DBF1L), 0x770EE47B89B5DBF1L, 0x20001E74730E419FL, 0x770EE47B89B5DBF1L, (VECTOR(int64_t, 2))(0x20001E74730E419FL, 0x770EE47B89B5DBF1L), (VECTOR(int64_t, 2))(0x20001E74730E419FL, 0x770EE47B89B5DBF1L), 0x20001E74730E419FL, 0x770EE47B89B5DBF1L, 0x20001E74730E419FL, 0x770EE47B89B5DBF1L);
        VECTOR(int16_t, 8) l_268 = (VECTOR(int16_t, 8))(0x0BA9L, (VECTOR(int16_t, 4))(0x0BA9L, (VECTOR(int16_t, 2))(0x0BA9L, 0x1BADL), 0x1BADL), 0x1BADL, 0x0BA9L, 0x1BADL);
        VECTOR(uint16_t, 2) l_275 = (VECTOR(uint16_t, 2))(0x46FBL, 65530UL);
        union U3 l_282 = {0};
        uint16_t *l_325[7][6][2] = {{{&p_893->g_157.f1,&p_893->g_157.f1},{&p_893->g_157.f1,&p_893->g_157.f1},{&p_893->g_157.f1,&p_893->g_157.f1},{&p_893->g_157.f1,&p_893->g_157.f1},{&p_893->g_157.f1,&p_893->g_157.f1},{&p_893->g_157.f1,&p_893->g_157.f1}},{{&p_893->g_157.f1,&p_893->g_157.f1},{&p_893->g_157.f1,&p_893->g_157.f1},{&p_893->g_157.f1,&p_893->g_157.f1},{&p_893->g_157.f1,&p_893->g_157.f1},{&p_893->g_157.f1,&p_893->g_157.f1},{&p_893->g_157.f1,&p_893->g_157.f1}},{{&p_893->g_157.f1,&p_893->g_157.f1},{&p_893->g_157.f1,&p_893->g_157.f1},{&p_893->g_157.f1,&p_893->g_157.f1},{&p_893->g_157.f1,&p_893->g_157.f1},{&p_893->g_157.f1,&p_893->g_157.f1},{&p_893->g_157.f1,&p_893->g_157.f1}},{{&p_893->g_157.f1,&p_893->g_157.f1},{&p_893->g_157.f1,&p_893->g_157.f1},{&p_893->g_157.f1,&p_893->g_157.f1},{&p_893->g_157.f1,&p_893->g_157.f1},{&p_893->g_157.f1,&p_893->g_157.f1},{&p_893->g_157.f1,&p_893->g_157.f1}},{{&p_893->g_157.f1,&p_893->g_157.f1},{&p_893->g_157.f1,&p_893->g_157.f1},{&p_893->g_157.f1,&p_893->g_157.f1},{&p_893->g_157.f1,&p_893->g_157.f1},{&p_893->g_157.f1,&p_893->g_157.f1},{&p_893->g_157.f1,&p_893->g_157.f1}},{{&p_893->g_157.f1,&p_893->g_157.f1},{&p_893->g_157.f1,&p_893->g_157.f1},{&p_893->g_157.f1,&p_893->g_157.f1},{&p_893->g_157.f1,&p_893->g_157.f1},{&p_893->g_157.f1,&p_893->g_157.f1},{&p_893->g_157.f1,&p_893->g_157.f1}},{{&p_893->g_157.f1,&p_893->g_157.f1},{&p_893->g_157.f1,&p_893->g_157.f1},{&p_893->g_157.f1,&p_893->g_157.f1},{&p_893->g_157.f1,&p_893->g_157.f1},{&p_893->g_157.f1,&p_893->g_157.f1},{&p_893->g_157.f1,&p_893->g_157.f1}}};
        int32_t l_340 = 0x153DF7DDL;
        int i, j, k;
        p_893->g_88 = l_81[0];
        for (p_893->g_82 = 28; (p_893->g_82 == 25); p_893->g_82 = safe_sub_func_uint16_t_u_u(p_893->g_82, 3))
        { /* block id: 25 */
            VECTOR(int8_t, 2) l_91 = (VECTOR(int8_t, 2))(0x31L, 0x0DL);
            int8_t **l_93 = &p_893->g_85;
            VECTOR(int16_t, 16) l_94 = (VECTOR(int16_t, 16))(9L, (VECTOR(int16_t, 4))(9L, (VECTOR(int16_t, 2))(9L, 0x483AL), 0x483AL), 0x483AL, 9L, 0x483AL, (VECTOR(int16_t, 2))(9L, 0x483AL), (VECTOR(int16_t, 2))(9L, 0x483AL), 9L, 0x483AL, 9L, 0x483AL);
            int32_t l_148 = 0x18E86E8CL;
            int32_t l_150[10] = {0x27DB7F8AL,0x27DB7F8AL,0x27DB7F8AL,0x27DB7F8AL,0x27DB7F8AL,0x27DB7F8AL,0x27DB7F8AL,0x27DB7F8AL,0x27DB7F8AL,0x27DB7F8AL};
            VECTOR(int64_t, 16) l_182 = (VECTOR(int64_t, 16))(0x577463834FB5A8C5L, (VECTOR(int64_t, 4))(0x577463834FB5A8C5L, (VECTOR(int64_t, 2))(0x577463834FB5A8C5L, 1L), 1L), 1L, 0x577463834FB5A8C5L, 1L, (VECTOR(int64_t, 2))(0x577463834FB5A8C5L, 1L), (VECTOR(int64_t, 2))(0x577463834FB5A8C5L, 1L), 0x577463834FB5A8C5L, 1L, 0x577463834FB5A8C5L, 1L);
            VECTOR(int32_t, 8) l_222 = (VECTOR(int32_t, 8))(0x45CBE1CAL, (VECTOR(int32_t, 4))(0x45CBE1CAL, (VECTOR(int32_t, 2))(0x45CBE1CAL, 0x2501B55AL), 0x2501B55AL), 0x2501B55AL, 0x45CBE1CAL, 0x2501B55AL);
            int32_t l_244[8] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
            VECTOR(int32_t, 2) l_266 = (VECTOR(int32_t, 2))((-10L), 3L);
            VECTOR(int16_t, 2) l_297 = (VECTOR(int16_t, 2))(0L, 0x04ABL);
            VECTOR(uint8_t, 16) l_321 = (VECTOR(uint8_t, 16))(0x40L, (VECTOR(uint8_t, 4))(0x40L, (VECTOR(uint8_t, 2))(0x40L, 2UL), 2UL), 2UL, 0x40L, 2UL, (VECTOR(uint8_t, 2))(0x40L, 2UL), (VECTOR(uint8_t, 2))(0x40L, 2UL), 0x40L, 2UL, 0x40L, 2UL);
            int i;
            (1 + 1);
        }
        p_893->g_341++;
    }
    else
    { /* block id: 117 */
        union U3 *l_344 = &p_893->g_299;
        l_344 = &p_893->g_299;
    }
    return p_68;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S4 c_894;
    struct S4* p_893 = &c_894;
    struct S4 c_895 = {
        (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), (-3L)), (-3L)), (-3L), (-1L), (-3L), (VECTOR(int32_t, 2))((-1L), (-3L)), (VECTOR(int32_t, 2))((-1L), (-3L)), (-1L), (-3L), (-1L), (-3L)), // p_893->g_2
        0L, // p_893->g_15
        &p_893->g_15, // p_893->g_14
        0x6FC7E2C9L, // p_893->g_82
        1L, // p_893->g_86
        &p_893->g_86, // p_893->g_85
        &p_893->g_82, // p_893->g_88
        (VECTOR(int8_t, 2))(0x55L, 9L), // p_893->g_92
        0xC5L, // p_893->g_104
        {5UL,0xAEL,0xE7210429D880B63DL,0x4E207E3EL,0x01DFD58DL,-3L,0x2EDC84E9L,0xFBD5L}, // p_893->g_129
        (-8L), // p_893->g_130
        (-1L), // p_893->g_134
        {0x43L,0x43L,0x43L}, // p_893->g_135
        0x5EL, // p_893->g_136
        0x32C21BFEE4DCC298L, // p_893->g_138
        4294967293UL, // p_893->g_140
        0x6ADC05C0L, // p_893->g_141
        0xAF243430L, // p_893->g_142
        (VECTOR(uint32_t, 16))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 4294967293UL), 4294967293UL), 4294967293UL, 4294967295UL, 4294967293UL, (VECTOR(uint32_t, 2))(4294967295UL, 4294967293UL), (VECTOR(uint32_t, 2))(4294967295UL, 4294967293UL), 4294967295UL, 4294967293UL, 4294967295UL, 4294967293UL), // p_893->g_144
        0x0884B382L, // p_893->g_151
        {0x551872582D2ECE79L,65533UL,5L,4294967286UL,4294967292UL,-6L,-5L}, // p_893->g_157
        (VECTOR(uint8_t, 8))(0xF0L, (VECTOR(uint8_t, 4))(0xF0L, (VECTOR(uint8_t, 2))(0xF0L, 0x2FL), 0x2FL), 0x2FL, 0xF0L, 0x2FL), // p_893->g_164
        (VECTOR(int64_t, 2))(0L, 1L), // p_893->g_165
        0xC4L, // p_893->g_180
        (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 0x49E0B9C208A202F8L), 0x49E0B9C208A202F8L), // p_893->g_184
        0xD16861ABL, // p_893->g_202
        {0x2D91D261L,0x2D91D261L,0x2D91D261L,0x2D91D261L,0x2D91D261L,0x2D91D261L}, // p_893->g_226
        {{18446744073709551613UL,65535UL,8L,0xD6AE4ED8L,0x5958A52BL,0x5A70BD1D7D04A55CL,0x742C0025L}}, // p_893->g_235
        (VECTOR(int64_t, 2))(0L, 0L), // p_893->g_264
        (VECTOR(int64_t, 2))(0x532A01F83A858D1DL, 0x75157D9F7E151388L), // p_893->g_265
        (VECTOR(int32_t, 2))(0x76880B50L, 0x31E79A15L), // p_893->g_276
        {0x856644768A7D5698L,0x16L,0xEC9CB53279B8D36BL,0L,0x5A3F81BAL,0L,2L,0x6439L}, // p_893->g_293
        {0}, // p_893->g_299
        0xD4L, // p_893->g_307
        {{18446744073709551607UL,0x4F3BL,0L,6UL,5UL,0x3E769D06E20DDF82L,0x519B0400L}}, // p_893->g_308
        &p_893->g_129.f7, // p_893->g_311
        {0x4388ADB94A2503CBL,0x91L,18446744073709551611UL,-7L,-1L,1L,0x37C43D73L,65534UL}, // p_893->g_331
        &p_893->g_331, // p_893->g_332
        5L, // p_893->g_335
        0UL, // p_893->g_336
        {18446744073709551615UL,0x64L,1UL,1L,-1L,1L,0x126C140CL,65528UL}, // p_893->g_339
        0xE6E3A790L, // p_893->g_341
        {0UL,6UL,1L,0UL,0xC5A099A4L,0x48DF726125C4F4C3L,0x1BBABF51L}, // p_893->g_359
        {18446744073709551615UL,1UL,0x500A7F3BL,4294967295UL,0x6ABB6672L,-5L,-7L}, // p_893->g_360
        {{{(void*)0,(void*)0,&p_893->g_299,&p_893->g_299,&p_893->g_299,&p_893->g_299,(void*)0,&p_893->g_299,&p_893->g_299},{(void*)0,(void*)0,&p_893->g_299,&p_893->g_299,&p_893->g_299,&p_893->g_299,(void*)0,&p_893->g_299,&p_893->g_299},{(void*)0,(void*)0,&p_893->g_299,&p_893->g_299,&p_893->g_299,&p_893->g_299,(void*)0,&p_893->g_299,&p_893->g_299},{(void*)0,(void*)0,&p_893->g_299,&p_893->g_299,&p_893->g_299,&p_893->g_299,(void*)0,&p_893->g_299,&p_893->g_299}},{{(void*)0,(void*)0,&p_893->g_299,&p_893->g_299,&p_893->g_299,&p_893->g_299,(void*)0,&p_893->g_299,&p_893->g_299},{(void*)0,(void*)0,&p_893->g_299,&p_893->g_299,&p_893->g_299,&p_893->g_299,(void*)0,&p_893->g_299,&p_893->g_299},{(void*)0,(void*)0,&p_893->g_299,&p_893->g_299,&p_893->g_299,&p_893->g_299,(void*)0,&p_893->g_299,&p_893->g_299},{(void*)0,(void*)0,&p_893->g_299,&p_893->g_299,&p_893->g_299,&p_893->g_299,(void*)0,&p_893->g_299,&p_893->g_299}},{{(void*)0,(void*)0,&p_893->g_299,&p_893->g_299,&p_893->g_299,&p_893->g_299,(void*)0,&p_893->g_299,&p_893->g_299},{(void*)0,(void*)0,&p_893->g_299,&p_893->g_299,&p_893->g_299,&p_893->g_299,(void*)0,&p_893->g_299,&p_893->g_299},{(void*)0,(void*)0,&p_893->g_299,&p_893->g_299,&p_893->g_299,&p_893->g_299,(void*)0,&p_893->g_299,&p_893->g_299},{(void*)0,(void*)0,&p_893->g_299,&p_893->g_299,&p_893->g_299,&p_893->g_299,(void*)0,&p_893->g_299,&p_893->g_299}},{{(void*)0,(void*)0,&p_893->g_299,&p_893->g_299,&p_893->g_299,&p_893->g_299,(void*)0,&p_893->g_299,&p_893->g_299},{(void*)0,(void*)0,&p_893->g_299,&p_893->g_299,&p_893->g_299,&p_893->g_299,(void*)0,&p_893->g_299,&p_893->g_299},{(void*)0,(void*)0,&p_893->g_299,&p_893->g_299,&p_893->g_299,&p_893->g_299,(void*)0,&p_893->g_299,&p_893->g_299},{(void*)0,(void*)0,&p_893->g_299,&p_893->g_299,&p_893->g_299,&p_893->g_299,(void*)0,&p_893->g_299,&p_893->g_299}},{{(void*)0,(void*)0,&p_893->g_299,&p_893->g_299,&p_893->g_299,&p_893->g_299,(void*)0,&p_893->g_299,&p_893->g_299},{(void*)0,(void*)0,&p_893->g_299,&p_893->g_299,&p_893->g_299,&p_893->g_299,(void*)0,&p_893->g_299,&p_893->g_299},{(void*)0,(void*)0,&p_893->g_299,&p_893->g_299,&p_893->g_299,&p_893->g_299,(void*)0,&p_893->g_299,&p_893->g_299},{(void*)0,(void*)0,&p_893->g_299,&p_893->g_299,&p_893->g_299,&p_893->g_299,(void*)0,&p_893->g_299,&p_893->g_299}},{{(void*)0,(void*)0,&p_893->g_299,&p_893->g_299,&p_893->g_299,&p_893->g_299,(void*)0,&p_893->g_299,&p_893->g_299},{(void*)0,(void*)0,&p_893->g_299,&p_893->g_299,&p_893->g_299,&p_893->g_299,(void*)0,&p_893->g_299,&p_893->g_299},{(void*)0,(void*)0,&p_893->g_299,&p_893->g_299,&p_893->g_299,&p_893->g_299,(void*)0,&p_893->g_299,&p_893->g_299},{(void*)0,(void*)0,&p_893->g_299,&p_893->g_299,&p_893->g_299,&p_893->g_299,(void*)0,&p_893->g_299,&p_893->g_299}},{{(void*)0,(void*)0,&p_893->g_299,&p_893->g_299,&p_893->g_299,&p_893->g_299,(void*)0,&p_893->g_299,&p_893->g_299},{(void*)0,(void*)0,&p_893->g_299,&p_893->g_299,&p_893->g_299,&p_893->g_299,(void*)0,&p_893->g_299,&p_893->g_299},{(void*)0,(void*)0,&p_893->g_299,&p_893->g_299,&p_893->g_299,&p_893->g_299,(void*)0,&p_893->g_299,&p_893->g_299},{(void*)0,(void*)0,&p_893->g_299,&p_893->g_299,&p_893->g_299,&p_893->g_299,(void*)0,&p_893->g_299,&p_893->g_299}}}, // p_893->g_362
        &p_893->g_88, // p_893->g_390
        6L, // p_893->g_401
        {0x47L,0x47L,0x47L}, // p_893->g_402
        1L, // p_893->g_404
        0x070D7651L, // p_893->g_405
        {(-8L),2L,(-8L),(-8L),2L,(-8L)}, // p_893->g_408
        0x2A95BB7B62FB341EL, // p_893->g_409
        (VECTOR(int64_t, 2))(0x6B6E56F1C64A7065L, 4L), // p_893->g_418
        (VECTOR(uint64_t, 8))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 2UL), 2UL), 2UL, 1UL, 2UL), // p_893->g_419
        (VECTOR(uint64_t, 16))(0UL, (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 0xC507451FBBCC1DDFL), 0xC507451FBBCC1DDFL), 0xC507451FBBCC1DDFL, 0UL, 0xC507451FBBCC1DDFL, (VECTOR(uint64_t, 2))(0UL, 0xC507451FBBCC1DDFL), (VECTOR(uint64_t, 2))(0UL, 0xC507451FBBCC1DDFL), 0UL, 0xC507451FBBCC1DDFL, 0UL, 0xC507451FBBCC1DDFL), // p_893->g_435
        (VECTOR(uint64_t, 8))(18446744073709551615UL, (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0UL), 0UL), 0UL, 18446744073709551615UL, 0UL), // p_893->g_436
        {18446744073709551615UL,0xA67EL,-1L,0x76F8F0F7L,4294967295UL,0x4570B76F5E99D1D0L,0x2265EFBBL}, // p_893->g_441
        &p_893->g_88, // p_893->g_457
        (void*)0, // p_893->g_462
        &p_893->g_130, // p_893->g_464
        {{{(-1L),0x4D0D8141L,0L,0x4884CF80L,0x6A4A4194L,(-1L)},{(-1L),0x4D0D8141L,0L,0x4884CF80L,0x6A4A4194L,(-1L)},{(-1L),0x4D0D8141L,0L,0x4884CF80L,0x6A4A4194L,(-1L)},{(-1L),0x4D0D8141L,0L,0x4884CF80L,0x6A4A4194L,(-1L)}},{{(-1L),0x4D0D8141L,0L,0x4884CF80L,0x6A4A4194L,(-1L)},{(-1L),0x4D0D8141L,0L,0x4884CF80L,0x6A4A4194L,(-1L)},{(-1L),0x4D0D8141L,0L,0x4884CF80L,0x6A4A4194L,(-1L)},{(-1L),0x4D0D8141L,0L,0x4884CF80L,0x6A4A4194L,(-1L)}},{{(-1L),0x4D0D8141L,0L,0x4884CF80L,0x6A4A4194L,(-1L)},{(-1L),0x4D0D8141L,0L,0x4884CF80L,0x6A4A4194L,(-1L)},{(-1L),0x4D0D8141L,0L,0x4884CF80L,0x6A4A4194L,(-1L)},{(-1L),0x4D0D8141L,0L,0x4884CF80L,0x6A4A4194L,(-1L)}},{{(-1L),0x4D0D8141L,0L,0x4884CF80L,0x6A4A4194L,(-1L)},{(-1L),0x4D0D8141L,0L,0x4884CF80L,0x6A4A4194L,(-1L)},{(-1L),0x4D0D8141L,0L,0x4884CF80L,0x6A4A4194L,(-1L)},{(-1L),0x4D0D8141L,0L,0x4884CF80L,0x6A4A4194L,(-1L)}},{{(-1L),0x4D0D8141L,0L,0x4884CF80L,0x6A4A4194L,(-1L)},{(-1L),0x4D0D8141L,0L,0x4884CF80L,0x6A4A4194L,(-1L)},{(-1L),0x4D0D8141L,0L,0x4884CF80L,0x6A4A4194L,(-1L)},{(-1L),0x4D0D8141L,0L,0x4884CF80L,0x6A4A4194L,(-1L)}},{{(-1L),0x4D0D8141L,0L,0x4884CF80L,0x6A4A4194L,(-1L)},{(-1L),0x4D0D8141L,0L,0x4884CF80L,0x6A4A4194L,(-1L)},{(-1L),0x4D0D8141L,0L,0x4884CF80L,0x6A4A4194L,(-1L)},{(-1L),0x4D0D8141L,0L,0x4884CF80L,0x6A4A4194L,(-1L)}},{{(-1L),0x4D0D8141L,0L,0x4884CF80L,0x6A4A4194L,(-1L)},{(-1L),0x4D0D8141L,0L,0x4884CF80L,0x6A4A4194L,(-1L)},{(-1L),0x4D0D8141L,0L,0x4884CF80L,0x6A4A4194L,(-1L)},{(-1L),0x4D0D8141L,0L,0x4884CF80L,0x6A4A4194L,(-1L)}},{{(-1L),0x4D0D8141L,0L,0x4884CF80L,0x6A4A4194L,(-1L)},{(-1L),0x4D0D8141L,0L,0x4884CF80L,0x6A4A4194L,(-1L)},{(-1L),0x4D0D8141L,0L,0x4884CF80L,0x6A4A4194L,(-1L)},{(-1L),0x4D0D8141L,0L,0x4884CF80L,0x6A4A4194L,(-1L)}},{{(-1L),0x4D0D8141L,0L,0x4884CF80L,0x6A4A4194L,(-1L)},{(-1L),0x4D0D8141L,0L,0x4884CF80L,0x6A4A4194L,(-1L)},{(-1L),0x4D0D8141L,0L,0x4884CF80L,0x6A4A4194L,(-1L)},{(-1L),0x4D0D8141L,0L,0x4884CF80L,0x6A4A4194L,(-1L)}},{{(-1L),0x4D0D8141L,0L,0x4884CF80L,0x6A4A4194L,(-1L)},{(-1L),0x4D0D8141L,0L,0x4884CF80L,0x6A4A4194L,(-1L)},{(-1L),0x4D0D8141L,0L,0x4884CF80L,0x6A4A4194L,(-1L)},{(-1L),0x4D0D8141L,0L,0x4884CF80L,0x6A4A4194L,(-1L)}}}, // p_893->g_480
        0x60E00F13L, // p_893->g_481
        &p_893->g_360, // p_893->g_484
        {0UL,6UL,-1L,4294967295UL,3UL,0x6E636EA08C903C17L,0x6ACFD56AL}, // p_893->g_485
        (void*)0, // p_893->g_486
        {0x6DAA479AA4BBDD26L,0xF424L,2L,1UL,0xA82F64E6L,-1L,0L}, // p_893->g_487
        1L, // p_893->g_495
        4UL, // p_893->g_496
        {0x9C44DB59E5522D4CL,0xA2L,0xE9C6DE60681342A8L,0L,0x2BEF3EC1L,0x7F75394A811050E0L,9L,65530UL}, // p_893->g_506
        (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 0xB285C861F465B906L), 0xB285C861F465B906L), // p_893->g_511
        {{0xFE516616F402976CL,0UL,0x067B39BEL,0x2C0A6E55L,0xB9CB7144L,-3L,0x2D735342L}}, // p_893->g_559
        (VECTOR(int64_t, 4))((-9L), (VECTOR(int64_t, 2))((-9L), 1L), 1L), // p_893->g_570
        (VECTOR(uint64_t, 2))(0x44FC2AC85CCD4DD5L, 0UL), // p_893->g_590
        (VECTOR(uint64_t, 2))(0x41FD2BCB5683BD2EL, 0xCD717BACDFD4BEC8L), // p_893->g_601
        (VECTOR(uint64_t, 2))(0xB93A00ADFB1E774EL, 0x0266D48687A6C865L), // p_893->g_602
        (VECTOR(uint16_t, 4))(65526UL, (VECTOR(uint16_t, 2))(65526UL, 6UL), 6UL), // p_893->g_606
        (VECTOR(uint8_t, 8))(0x8FL, (VECTOR(uint8_t, 4))(0x8FL, (VECTOR(uint8_t, 2))(0x8FL, 3UL), 3UL), 3UL, 0x8FL, 3UL), // p_893->g_650
        (VECTOR(int8_t, 4))(0x1EL, (VECTOR(int8_t, 2))(0x1EL, (-6L)), (-6L)), // p_893->g_679
        (VECTOR(uint64_t, 2))(18446744073709551615UL, 1UL), // p_893->g_693
        (VECTOR(int16_t, 4))((-3L), (VECTOR(int16_t, 2))((-3L), 0x3860L), 0x3860L), // p_893->g_696
        (VECTOR(int16_t, 4))(0x561DL, (VECTOR(int16_t, 2))(0x561DL, 8L), 8L), // p_893->g_699
        (VECTOR(int16_t, 4))(6L, (VECTOR(int16_t, 2))(6L, 1L), 1L), // p_893->g_700
        (VECTOR(int16_t, 8))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, (-1L)), (-1L)), (-1L), 0L, (-1L)), // p_893->g_702
        (VECTOR(uint64_t, 2))(18446744073709551615UL, 18446744073709551615UL), // p_893->g_723
        0x84489485L, // p_893->g_745
        &p_893->g_331.f3, // p_893->g_750
        (void*)0, // p_893->g_751
        7UL, // p_893->g_759
        &p_893->g_88, // p_893->g_768
        0x7DE8L, // p_893->g_776
        (VECTOR(int32_t, 16))(0x5531C80EL, (VECTOR(int32_t, 4))(0x5531C80EL, (VECTOR(int32_t, 2))(0x5531C80EL, 0x120EE03FL), 0x120EE03FL), 0x120EE03FL, 0x5531C80EL, 0x120EE03FL, (VECTOR(int32_t, 2))(0x5531C80EL, 0x120EE03FL), (VECTOR(int32_t, 2))(0x5531C80EL, 0x120EE03FL), 0x5531C80EL, 0x120EE03FL, 0x5531C80EL, 0x120EE03FL), // p_893->g_813
        &p_893->g_331.f1, // p_893->g_829
        {0x4AAAC59696251938L,253UL,0x124963E13493BEC4L,0L,0x4872F8A7L,0x7BEF7963C23E6375L,0x29ADD534L,9UL}, // p_893->g_861
        {0x64C6F20FF3C4086FL,0xD0L,1UL,0L,-1L,0x54376D090C9FB126L,-7L,1UL}, // p_893->g_864
        &p_893->g_134, // p_893->g_888
        sequence_input[get_global_id(0)], // p_893->global_0_offset
        sequence_input[get_global_id(1)], // p_893->global_1_offset
        sequence_input[get_global_id(2)], // p_893->global_2_offset
        sequence_input[get_local_id(0)], // p_893->local_0_offset
        sequence_input[get_local_id(1)], // p_893->local_1_offset
        sequence_input[get_local_id(2)], // p_893->local_2_offset
        sequence_input[get_group_id(0)], // p_893->group_0_offset
        sequence_input[get_group_id(1)], // p_893->group_1_offset
        sequence_input[get_group_id(2)], // p_893->group_2_offset
    };
    c_894 = c_895;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_893);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_893->g_2.s0, "p_893->g_2.s0", print_hash_value);
    transparent_crc(p_893->g_2.s1, "p_893->g_2.s1", print_hash_value);
    transparent_crc(p_893->g_2.s2, "p_893->g_2.s2", print_hash_value);
    transparent_crc(p_893->g_2.s3, "p_893->g_2.s3", print_hash_value);
    transparent_crc(p_893->g_2.s4, "p_893->g_2.s4", print_hash_value);
    transparent_crc(p_893->g_2.s5, "p_893->g_2.s5", print_hash_value);
    transparent_crc(p_893->g_2.s6, "p_893->g_2.s6", print_hash_value);
    transparent_crc(p_893->g_2.s7, "p_893->g_2.s7", print_hash_value);
    transparent_crc(p_893->g_2.s8, "p_893->g_2.s8", print_hash_value);
    transparent_crc(p_893->g_2.s9, "p_893->g_2.s9", print_hash_value);
    transparent_crc(p_893->g_2.sa, "p_893->g_2.sa", print_hash_value);
    transparent_crc(p_893->g_2.sb, "p_893->g_2.sb", print_hash_value);
    transparent_crc(p_893->g_2.sc, "p_893->g_2.sc", print_hash_value);
    transparent_crc(p_893->g_2.sd, "p_893->g_2.sd", print_hash_value);
    transparent_crc(p_893->g_2.se, "p_893->g_2.se", print_hash_value);
    transparent_crc(p_893->g_2.sf, "p_893->g_2.sf", print_hash_value);
    transparent_crc(p_893->g_15, "p_893->g_15", print_hash_value);
    transparent_crc(p_893->g_82, "p_893->g_82", print_hash_value);
    transparent_crc(p_893->g_86, "p_893->g_86", print_hash_value);
    transparent_crc(p_893->g_92.x, "p_893->g_92.x", print_hash_value);
    transparent_crc(p_893->g_92.y, "p_893->g_92.y", print_hash_value);
    transparent_crc(p_893->g_104, "p_893->g_104", print_hash_value);
    transparent_crc(p_893->g_129.f0, "p_893->g_129.f0", print_hash_value);
    transparent_crc(p_893->g_129.f1, "p_893->g_129.f1", print_hash_value);
    transparent_crc(p_893->g_129.f2, "p_893->g_129.f2", print_hash_value);
    transparent_crc(p_893->g_129.f3, "p_893->g_129.f3", print_hash_value);
    transparent_crc(p_893->g_129.f4, "p_893->g_129.f4", print_hash_value);
    transparent_crc(p_893->g_129.f5, "p_893->g_129.f5", print_hash_value);
    transparent_crc(p_893->g_129.f6, "p_893->g_129.f6", print_hash_value);
    transparent_crc(p_893->g_129.f7, "p_893->g_129.f7", print_hash_value);
    transparent_crc(p_893->g_130, "p_893->g_130", print_hash_value);
    transparent_crc(p_893->g_134, "p_893->g_134", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_893->g_135[i], "p_893->g_135[i]", print_hash_value);

    }
    transparent_crc(p_893->g_136, "p_893->g_136", print_hash_value);
    transparent_crc(p_893->g_138, "p_893->g_138", print_hash_value);
    transparent_crc(p_893->g_140, "p_893->g_140", print_hash_value);
    transparent_crc(p_893->g_141, "p_893->g_141", print_hash_value);
    transparent_crc(p_893->g_142, "p_893->g_142", print_hash_value);
    transparent_crc(p_893->g_144.s0, "p_893->g_144.s0", print_hash_value);
    transparent_crc(p_893->g_144.s1, "p_893->g_144.s1", print_hash_value);
    transparent_crc(p_893->g_144.s2, "p_893->g_144.s2", print_hash_value);
    transparent_crc(p_893->g_144.s3, "p_893->g_144.s3", print_hash_value);
    transparent_crc(p_893->g_144.s4, "p_893->g_144.s4", print_hash_value);
    transparent_crc(p_893->g_144.s5, "p_893->g_144.s5", print_hash_value);
    transparent_crc(p_893->g_144.s6, "p_893->g_144.s6", print_hash_value);
    transparent_crc(p_893->g_144.s7, "p_893->g_144.s7", print_hash_value);
    transparent_crc(p_893->g_144.s8, "p_893->g_144.s8", print_hash_value);
    transparent_crc(p_893->g_144.s9, "p_893->g_144.s9", print_hash_value);
    transparent_crc(p_893->g_144.sa, "p_893->g_144.sa", print_hash_value);
    transparent_crc(p_893->g_144.sb, "p_893->g_144.sb", print_hash_value);
    transparent_crc(p_893->g_144.sc, "p_893->g_144.sc", print_hash_value);
    transparent_crc(p_893->g_144.sd, "p_893->g_144.sd", print_hash_value);
    transparent_crc(p_893->g_144.se, "p_893->g_144.se", print_hash_value);
    transparent_crc(p_893->g_144.sf, "p_893->g_144.sf", print_hash_value);
    transparent_crc(p_893->g_151, "p_893->g_151", print_hash_value);
    transparent_crc(p_893->g_157.f0, "p_893->g_157.f0", print_hash_value);
    transparent_crc(p_893->g_157.f1, "p_893->g_157.f1", print_hash_value);
    transparent_crc(p_893->g_157.f2, "p_893->g_157.f2", print_hash_value);
    transparent_crc(p_893->g_157.f3, "p_893->g_157.f3", print_hash_value);
    transparent_crc(p_893->g_157.f4, "p_893->g_157.f4", print_hash_value);
    transparent_crc(p_893->g_157.f5, "p_893->g_157.f5", print_hash_value);
    transparent_crc(p_893->g_157.f6, "p_893->g_157.f6", print_hash_value);
    transparent_crc(p_893->g_164.s0, "p_893->g_164.s0", print_hash_value);
    transparent_crc(p_893->g_164.s1, "p_893->g_164.s1", print_hash_value);
    transparent_crc(p_893->g_164.s2, "p_893->g_164.s2", print_hash_value);
    transparent_crc(p_893->g_164.s3, "p_893->g_164.s3", print_hash_value);
    transparent_crc(p_893->g_164.s4, "p_893->g_164.s4", print_hash_value);
    transparent_crc(p_893->g_164.s5, "p_893->g_164.s5", print_hash_value);
    transparent_crc(p_893->g_164.s6, "p_893->g_164.s6", print_hash_value);
    transparent_crc(p_893->g_164.s7, "p_893->g_164.s7", print_hash_value);
    transparent_crc(p_893->g_165.x, "p_893->g_165.x", print_hash_value);
    transparent_crc(p_893->g_165.y, "p_893->g_165.y", print_hash_value);
    transparent_crc(p_893->g_180, "p_893->g_180", print_hash_value);
    transparent_crc(p_893->g_184.x, "p_893->g_184.x", print_hash_value);
    transparent_crc(p_893->g_184.y, "p_893->g_184.y", print_hash_value);
    transparent_crc(p_893->g_184.z, "p_893->g_184.z", print_hash_value);
    transparent_crc(p_893->g_184.w, "p_893->g_184.w", print_hash_value);
    transparent_crc(p_893->g_202, "p_893->g_202", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_893->g_226[i], "p_893->g_226[i]", print_hash_value);

    }
    transparent_crc(p_893->g_235.f0.f0, "p_893->g_235.f0.f0", print_hash_value);
    transparent_crc(p_893->g_235.f0.f1, "p_893->g_235.f0.f1", print_hash_value);
    transparent_crc(p_893->g_235.f0.f2, "p_893->g_235.f0.f2", print_hash_value);
    transparent_crc(p_893->g_235.f0.f3, "p_893->g_235.f0.f3", print_hash_value);
    transparent_crc(p_893->g_235.f0.f4, "p_893->g_235.f0.f4", print_hash_value);
    transparent_crc(p_893->g_235.f0.f5, "p_893->g_235.f0.f5", print_hash_value);
    transparent_crc(p_893->g_235.f0.f6, "p_893->g_235.f0.f6", print_hash_value);
    transparent_crc(p_893->g_264.x, "p_893->g_264.x", print_hash_value);
    transparent_crc(p_893->g_264.y, "p_893->g_264.y", print_hash_value);
    transparent_crc(p_893->g_265.x, "p_893->g_265.x", print_hash_value);
    transparent_crc(p_893->g_265.y, "p_893->g_265.y", print_hash_value);
    transparent_crc(p_893->g_276.x, "p_893->g_276.x", print_hash_value);
    transparent_crc(p_893->g_276.y, "p_893->g_276.y", print_hash_value);
    transparent_crc(p_893->g_293.f0, "p_893->g_293.f0", print_hash_value);
    transparent_crc(p_893->g_293.f1, "p_893->g_293.f1", print_hash_value);
    transparent_crc(p_893->g_293.f2, "p_893->g_293.f2", print_hash_value);
    transparent_crc(p_893->g_293.f3, "p_893->g_293.f3", print_hash_value);
    transparent_crc(p_893->g_293.f4, "p_893->g_293.f4", print_hash_value);
    transparent_crc(p_893->g_293.f5, "p_893->g_293.f5", print_hash_value);
    transparent_crc(p_893->g_293.f6, "p_893->g_293.f6", print_hash_value);
    transparent_crc(p_893->g_293.f7, "p_893->g_293.f7", print_hash_value);
    transparent_crc(p_893->g_307, "p_893->g_307", print_hash_value);
    transparent_crc(p_893->g_308.f0.f0, "p_893->g_308.f0.f0", print_hash_value);
    transparent_crc(p_893->g_308.f0.f1, "p_893->g_308.f0.f1", print_hash_value);
    transparent_crc(p_893->g_308.f0.f2, "p_893->g_308.f0.f2", print_hash_value);
    transparent_crc(p_893->g_308.f0.f3, "p_893->g_308.f0.f3", print_hash_value);
    transparent_crc(p_893->g_308.f0.f4, "p_893->g_308.f0.f4", print_hash_value);
    transparent_crc(p_893->g_308.f0.f5, "p_893->g_308.f0.f5", print_hash_value);
    transparent_crc(p_893->g_308.f0.f6, "p_893->g_308.f0.f6", print_hash_value);
    transparent_crc(p_893->g_331.f0, "p_893->g_331.f0", print_hash_value);
    transparent_crc(p_893->g_331.f1, "p_893->g_331.f1", print_hash_value);
    transparent_crc(p_893->g_331.f2, "p_893->g_331.f2", print_hash_value);
    transparent_crc(p_893->g_331.f3, "p_893->g_331.f3", print_hash_value);
    transparent_crc(p_893->g_331.f4, "p_893->g_331.f4", print_hash_value);
    transparent_crc(p_893->g_331.f5, "p_893->g_331.f5", print_hash_value);
    transparent_crc(p_893->g_331.f6, "p_893->g_331.f6", print_hash_value);
    transparent_crc(p_893->g_331.f7, "p_893->g_331.f7", print_hash_value);
    transparent_crc(p_893->g_335, "p_893->g_335", print_hash_value);
    transparent_crc(p_893->g_336, "p_893->g_336", print_hash_value);
    transparent_crc(p_893->g_339.f0, "p_893->g_339.f0", print_hash_value);
    transparent_crc(p_893->g_339.f1, "p_893->g_339.f1", print_hash_value);
    transparent_crc(p_893->g_339.f2, "p_893->g_339.f2", print_hash_value);
    transparent_crc(p_893->g_339.f3, "p_893->g_339.f3", print_hash_value);
    transparent_crc(p_893->g_339.f4, "p_893->g_339.f4", print_hash_value);
    transparent_crc(p_893->g_339.f5, "p_893->g_339.f5", print_hash_value);
    transparent_crc(p_893->g_339.f6, "p_893->g_339.f6", print_hash_value);
    transparent_crc(p_893->g_339.f7, "p_893->g_339.f7", print_hash_value);
    transparent_crc(p_893->g_341, "p_893->g_341", print_hash_value);
    transparent_crc(p_893->g_359.f0, "p_893->g_359.f0", print_hash_value);
    transparent_crc(p_893->g_359.f1, "p_893->g_359.f1", print_hash_value);
    transparent_crc(p_893->g_359.f2, "p_893->g_359.f2", print_hash_value);
    transparent_crc(p_893->g_359.f3, "p_893->g_359.f3", print_hash_value);
    transparent_crc(p_893->g_359.f4, "p_893->g_359.f4", print_hash_value);
    transparent_crc(p_893->g_359.f5, "p_893->g_359.f5", print_hash_value);
    transparent_crc(p_893->g_359.f6, "p_893->g_359.f6", print_hash_value);
    transparent_crc(p_893->g_360.f0, "p_893->g_360.f0", print_hash_value);
    transparent_crc(p_893->g_360.f1, "p_893->g_360.f1", print_hash_value);
    transparent_crc(p_893->g_360.f2, "p_893->g_360.f2", print_hash_value);
    transparent_crc(p_893->g_360.f3, "p_893->g_360.f3", print_hash_value);
    transparent_crc(p_893->g_360.f4, "p_893->g_360.f4", print_hash_value);
    transparent_crc(p_893->g_360.f5, "p_893->g_360.f5", print_hash_value);
    transparent_crc(p_893->g_360.f6, "p_893->g_360.f6", print_hash_value);
    transparent_crc(p_893->g_401, "p_893->g_401", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_893->g_402[i], "p_893->g_402[i]", print_hash_value);

    }
    transparent_crc(p_893->g_404, "p_893->g_404", print_hash_value);
    transparent_crc(p_893->g_405, "p_893->g_405", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_893->g_408[i], "p_893->g_408[i]", print_hash_value);

    }
    transparent_crc(p_893->g_409, "p_893->g_409", print_hash_value);
    transparent_crc(p_893->g_418.x, "p_893->g_418.x", print_hash_value);
    transparent_crc(p_893->g_418.y, "p_893->g_418.y", print_hash_value);
    transparent_crc(p_893->g_419.s0, "p_893->g_419.s0", print_hash_value);
    transparent_crc(p_893->g_419.s1, "p_893->g_419.s1", print_hash_value);
    transparent_crc(p_893->g_419.s2, "p_893->g_419.s2", print_hash_value);
    transparent_crc(p_893->g_419.s3, "p_893->g_419.s3", print_hash_value);
    transparent_crc(p_893->g_419.s4, "p_893->g_419.s4", print_hash_value);
    transparent_crc(p_893->g_419.s5, "p_893->g_419.s5", print_hash_value);
    transparent_crc(p_893->g_419.s6, "p_893->g_419.s6", print_hash_value);
    transparent_crc(p_893->g_419.s7, "p_893->g_419.s7", print_hash_value);
    transparent_crc(p_893->g_435.s0, "p_893->g_435.s0", print_hash_value);
    transparent_crc(p_893->g_435.s1, "p_893->g_435.s1", print_hash_value);
    transparent_crc(p_893->g_435.s2, "p_893->g_435.s2", print_hash_value);
    transparent_crc(p_893->g_435.s3, "p_893->g_435.s3", print_hash_value);
    transparent_crc(p_893->g_435.s4, "p_893->g_435.s4", print_hash_value);
    transparent_crc(p_893->g_435.s5, "p_893->g_435.s5", print_hash_value);
    transparent_crc(p_893->g_435.s6, "p_893->g_435.s6", print_hash_value);
    transparent_crc(p_893->g_435.s7, "p_893->g_435.s7", print_hash_value);
    transparent_crc(p_893->g_435.s8, "p_893->g_435.s8", print_hash_value);
    transparent_crc(p_893->g_435.s9, "p_893->g_435.s9", print_hash_value);
    transparent_crc(p_893->g_435.sa, "p_893->g_435.sa", print_hash_value);
    transparent_crc(p_893->g_435.sb, "p_893->g_435.sb", print_hash_value);
    transparent_crc(p_893->g_435.sc, "p_893->g_435.sc", print_hash_value);
    transparent_crc(p_893->g_435.sd, "p_893->g_435.sd", print_hash_value);
    transparent_crc(p_893->g_435.se, "p_893->g_435.se", print_hash_value);
    transparent_crc(p_893->g_435.sf, "p_893->g_435.sf", print_hash_value);
    transparent_crc(p_893->g_436.s0, "p_893->g_436.s0", print_hash_value);
    transparent_crc(p_893->g_436.s1, "p_893->g_436.s1", print_hash_value);
    transparent_crc(p_893->g_436.s2, "p_893->g_436.s2", print_hash_value);
    transparent_crc(p_893->g_436.s3, "p_893->g_436.s3", print_hash_value);
    transparent_crc(p_893->g_436.s4, "p_893->g_436.s4", print_hash_value);
    transparent_crc(p_893->g_436.s5, "p_893->g_436.s5", print_hash_value);
    transparent_crc(p_893->g_436.s6, "p_893->g_436.s6", print_hash_value);
    transparent_crc(p_893->g_436.s7, "p_893->g_436.s7", print_hash_value);
    transparent_crc(p_893->g_441.f0, "p_893->g_441.f0", print_hash_value);
    transparent_crc(p_893->g_441.f1, "p_893->g_441.f1", print_hash_value);
    transparent_crc(p_893->g_441.f2, "p_893->g_441.f2", print_hash_value);
    transparent_crc(p_893->g_441.f3, "p_893->g_441.f3", print_hash_value);
    transparent_crc(p_893->g_441.f4, "p_893->g_441.f4", print_hash_value);
    transparent_crc(p_893->g_441.f5, "p_893->g_441.f5", print_hash_value);
    transparent_crc(p_893->g_441.f6, "p_893->g_441.f6", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 6; k++)
            {
                transparent_crc(p_893->g_480[i][j][k], "p_893->g_480[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_893->g_481, "p_893->g_481", print_hash_value);
    transparent_crc(p_893->g_485.f0, "p_893->g_485.f0", print_hash_value);
    transparent_crc(p_893->g_485.f1, "p_893->g_485.f1", print_hash_value);
    transparent_crc(p_893->g_485.f2, "p_893->g_485.f2", print_hash_value);
    transparent_crc(p_893->g_485.f3, "p_893->g_485.f3", print_hash_value);
    transparent_crc(p_893->g_485.f4, "p_893->g_485.f4", print_hash_value);
    transparent_crc(p_893->g_485.f5, "p_893->g_485.f5", print_hash_value);
    transparent_crc(p_893->g_485.f6, "p_893->g_485.f6", print_hash_value);
    transparent_crc(p_893->g_487.f0, "p_893->g_487.f0", print_hash_value);
    transparent_crc(p_893->g_487.f1, "p_893->g_487.f1", print_hash_value);
    transparent_crc(p_893->g_487.f2, "p_893->g_487.f2", print_hash_value);
    transparent_crc(p_893->g_487.f3, "p_893->g_487.f3", print_hash_value);
    transparent_crc(p_893->g_487.f4, "p_893->g_487.f4", print_hash_value);
    transparent_crc(p_893->g_487.f5, "p_893->g_487.f5", print_hash_value);
    transparent_crc(p_893->g_487.f6, "p_893->g_487.f6", print_hash_value);
    transparent_crc(p_893->g_495, "p_893->g_495", print_hash_value);
    transparent_crc(p_893->g_496, "p_893->g_496", print_hash_value);
    transparent_crc(p_893->g_506.f0, "p_893->g_506.f0", print_hash_value);
    transparent_crc(p_893->g_506.f1, "p_893->g_506.f1", print_hash_value);
    transparent_crc(p_893->g_506.f2, "p_893->g_506.f2", print_hash_value);
    transparent_crc(p_893->g_506.f3, "p_893->g_506.f3", print_hash_value);
    transparent_crc(p_893->g_506.f4, "p_893->g_506.f4", print_hash_value);
    transparent_crc(p_893->g_506.f5, "p_893->g_506.f5", print_hash_value);
    transparent_crc(p_893->g_506.f6, "p_893->g_506.f6", print_hash_value);
    transparent_crc(p_893->g_506.f7, "p_893->g_506.f7", print_hash_value);
    transparent_crc(p_893->g_511.x, "p_893->g_511.x", print_hash_value);
    transparent_crc(p_893->g_511.y, "p_893->g_511.y", print_hash_value);
    transparent_crc(p_893->g_511.z, "p_893->g_511.z", print_hash_value);
    transparent_crc(p_893->g_511.w, "p_893->g_511.w", print_hash_value);
    transparent_crc(p_893->g_559.f0.f0, "p_893->g_559.f0.f0", print_hash_value);
    transparent_crc(p_893->g_559.f0.f1, "p_893->g_559.f0.f1", print_hash_value);
    transparent_crc(p_893->g_559.f0.f2, "p_893->g_559.f0.f2", print_hash_value);
    transparent_crc(p_893->g_559.f0.f3, "p_893->g_559.f0.f3", print_hash_value);
    transparent_crc(p_893->g_559.f0.f4, "p_893->g_559.f0.f4", print_hash_value);
    transparent_crc(p_893->g_559.f0.f5, "p_893->g_559.f0.f5", print_hash_value);
    transparent_crc(p_893->g_559.f0.f6, "p_893->g_559.f0.f6", print_hash_value);
    transparent_crc(p_893->g_570.x, "p_893->g_570.x", print_hash_value);
    transparent_crc(p_893->g_570.y, "p_893->g_570.y", print_hash_value);
    transparent_crc(p_893->g_570.z, "p_893->g_570.z", print_hash_value);
    transparent_crc(p_893->g_570.w, "p_893->g_570.w", print_hash_value);
    transparent_crc(p_893->g_590.x, "p_893->g_590.x", print_hash_value);
    transparent_crc(p_893->g_590.y, "p_893->g_590.y", print_hash_value);
    transparent_crc(p_893->g_601.x, "p_893->g_601.x", print_hash_value);
    transparent_crc(p_893->g_601.y, "p_893->g_601.y", print_hash_value);
    transparent_crc(p_893->g_602.x, "p_893->g_602.x", print_hash_value);
    transparent_crc(p_893->g_602.y, "p_893->g_602.y", print_hash_value);
    transparent_crc(p_893->g_606.x, "p_893->g_606.x", print_hash_value);
    transparent_crc(p_893->g_606.y, "p_893->g_606.y", print_hash_value);
    transparent_crc(p_893->g_606.z, "p_893->g_606.z", print_hash_value);
    transparent_crc(p_893->g_606.w, "p_893->g_606.w", print_hash_value);
    transparent_crc(p_893->g_650.s0, "p_893->g_650.s0", print_hash_value);
    transparent_crc(p_893->g_650.s1, "p_893->g_650.s1", print_hash_value);
    transparent_crc(p_893->g_650.s2, "p_893->g_650.s2", print_hash_value);
    transparent_crc(p_893->g_650.s3, "p_893->g_650.s3", print_hash_value);
    transparent_crc(p_893->g_650.s4, "p_893->g_650.s4", print_hash_value);
    transparent_crc(p_893->g_650.s5, "p_893->g_650.s5", print_hash_value);
    transparent_crc(p_893->g_650.s6, "p_893->g_650.s6", print_hash_value);
    transparent_crc(p_893->g_650.s7, "p_893->g_650.s7", print_hash_value);
    transparent_crc(p_893->g_679.x, "p_893->g_679.x", print_hash_value);
    transparent_crc(p_893->g_679.y, "p_893->g_679.y", print_hash_value);
    transparent_crc(p_893->g_679.z, "p_893->g_679.z", print_hash_value);
    transparent_crc(p_893->g_679.w, "p_893->g_679.w", print_hash_value);
    transparent_crc(p_893->g_693.x, "p_893->g_693.x", print_hash_value);
    transparent_crc(p_893->g_693.y, "p_893->g_693.y", print_hash_value);
    transparent_crc(p_893->g_696.x, "p_893->g_696.x", print_hash_value);
    transparent_crc(p_893->g_696.y, "p_893->g_696.y", print_hash_value);
    transparent_crc(p_893->g_696.z, "p_893->g_696.z", print_hash_value);
    transparent_crc(p_893->g_696.w, "p_893->g_696.w", print_hash_value);
    transparent_crc(p_893->g_699.x, "p_893->g_699.x", print_hash_value);
    transparent_crc(p_893->g_699.y, "p_893->g_699.y", print_hash_value);
    transparent_crc(p_893->g_699.z, "p_893->g_699.z", print_hash_value);
    transparent_crc(p_893->g_699.w, "p_893->g_699.w", print_hash_value);
    transparent_crc(p_893->g_700.x, "p_893->g_700.x", print_hash_value);
    transparent_crc(p_893->g_700.y, "p_893->g_700.y", print_hash_value);
    transparent_crc(p_893->g_700.z, "p_893->g_700.z", print_hash_value);
    transparent_crc(p_893->g_700.w, "p_893->g_700.w", print_hash_value);
    transparent_crc(p_893->g_702.s0, "p_893->g_702.s0", print_hash_value);
    transparent_crc(p_893->g_702.s1, "p_893->g_702.s1", print_hash_value);
    transparent_crc(p_893->g_702.s2, "p_893->g_702.s2", print_hash_value);
    transparent_crc(p_893->g_702.s3, "p_893->g_702.s3", print_hash_value);
    transparent_crc(p_893->g_702.s4, "p_893->g_702.s4", print_hash_value);
    transparent_crc(p_893->g_702.s5, "p_893->g_702.s5", print_hash_value);
    transparent_crc(p_893->g_702.s6, "p_893->g_702.s6", print_hash_value);
    transparent_crc(p_893->g_702.s7, "p_893->g_702.s7", print_hash_value);
    transparent_crc(p_893->g_723.x, "p_893->g_723.x", print_hash_value);
    transparent_crc(p_893->g_723.y, "p_893->g_723.y", print_hash_value);
    transparent_crc(p_893->g_745, "p_893->g_745", print_hash_value);
    transparent_crc(p_893->g_759, "p_893->g_759", print_hash_value);
    transparent_crc(p_893->g_776, "p_893->g_776", print_hash_value);
    transparent_crc(p_893->g_813.s0, "p_893->g_813.s0", print_hash_value);
    transparent_crc(p_893->g_813.s1, "p_893->g_813.s1", print_hash_value);
    transparent_crc(p_893->g_813.s2, "p_893->g_813.s2", print_hash_value);
    transparent_crc(p_893->g_813.s3, "p_893->g_813.s3", print_hash_value);
    transparent_crc(p_893->g_813.s4, "p_893->g_813.s4", print_hash_value);
    transparent_crc(p_893->g_813.s5, "p_893->g_813.s5", print_hash_value);
    transparent_crc(p_893->g_813.s6, "p_893->g_813.s6", print_hash_value);
    transparent_crc(p_893->g_813.s7, "p_893->g_813.s7", print_hash_value);
    transparent_crc(p_893->g_813.s8, "p_893->g_813.s8", print_hash_value);
    transparent_crc(p_893->g_813.s9, "p_893->g_813.s9", print_hash_value);
    transparent_crc(p_893->g_813.sa, "p_893->g_813.sa", print_hash_value);
    transparent_crc(p_893->g_813.sb, "p_893->g_813.sb", print_hash_value);
    transparent_crc(p_893->g_813.sc, "p_893->g_813.sc", print_hash_value);
    transparent_crc(p_893->g_813.sd, "p_893->g_813.sd", print_hash_value);
    transparent_crc(p_893->g_813.se, "p_893->g_813.se", print_hash_value);
    transparent_crc(p_893->g_813.sf, "p_893->g_813.sf", print_hash_value);
    transparent_crc(p_893->g_861.f0, "p_893->g_861.f0", print_hash_value);
    transparent_crc(p_893->g_861.f1, "p_893->g_861.f1", print_hash_value);
    transparent_crc(p_893->g_861.f2, "p_893->g_861.f2", print_hash_value);
    transparent_crc(p_893->g_861.f3, "p_893->g_861.f3", print_hash_value);
    transparent_crc(p_893->g_861.f4, "p_893->g_861.f4", print_hash_value);
    transparent_crc(p_893->g_861.f5, "p_893->g_861.f5", print_hash_value);
    transparent_crc(p_893->g_861.f6, "p_893->g_861.f6", print_hash_value);
    transparent_crc(p_893->g_861.f7, "p_893->g_861.f7", print_hash_value);
    transparent_crc(p_893->g_864.f0, "p_893->g_864.f0", print_hash_value);
    transparent_crc(p_893->g_864.f1, "p_893->g_864.f1", print_hash_value);
    transparent_crc(p_893->g_864.f2, "p_893->g_864.f2", print_hash_value);
    transparent_crc(p_893->g_864.f3, "p_893->g_864.f3", print_hash_value);
    transparent_crc(p_893->g_864.f4, "p_893->g_864.f4", print_hash_value);
    transparent_crc(p_893->g_864.f5, "p_893->g_864.f5", print_hash_value);
    transparent_crc(p_893->g_864.f6, "p_893->g_864.f6", print_hash_value);
    transparent_crc(p_893->g_864.f7, "p_893->g_864.f7", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
