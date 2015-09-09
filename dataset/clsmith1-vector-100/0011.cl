// ---fake_divergence -g 86,63,1 -l 2,7,1
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


// Seed: 11

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   volatile uint64_t  f0;
   uint8_t  f1;
   int32_t  f2;
};

struct S1 {
   uint64_t  f0;
   uint64_t  f1;
   volatile uint64_t  f2;
   uint32_t  f3;
   struct S0  f4;
};

struct S2 {
   uint64_t  f0;
   int16_t  f1;
   volatile uint64_t  f2;
};

union U3 {
   struct S0  f0;
};

struct S4 {
    volatile int32_t g_4;
    volatile VECTOR(int16_t, 2) g_25;
    int8_t g_29[10][6];
    int32_t g_56;
    int64_t g_57;
    uint16_t g_58;
    int8_t g_73[4][3][1];
    int8_t g_74;
    uint32_t g_75;
    struct S2 g_125;
    struct S2 g_126;
    struct S2 g_127[9][3][9];
    struct S2 g_128;
    struct S2 g_129;
    VECTOR(int16_t, 4) g_144;
    struct S2 g_150;
    struct S2 *g_149;
    int32_t g_163[8];
    struct S2 g_183;
    volatile uint32_t **g_188;
    VECTOR(int32_t, 4) g_246;
    int32_t g_251;
    int8_t g_259[3];
    uint8_t g_263;
    uint8_t *g_262;
    struct S0 g_295;
    struct S0 *g_294;
    VECTOR(uint32_t, 16) g_308;
    struct S0 g_317[8][9];
    struct S2 **g_363;
    struct S2 **g_364;
    union U3 g_407;
    volatile VECTOR(int32_t, 16) g_414;
    VECTOR(int32_t, 8) g_415;
    int32_t g_448[9];
    int32_t *g_467;
    int16_t *g_469;
    int16_t * volatile * volatile g_468[1][7];
    struct S0 g_479;
    VECTOR(uint32_t, 2) g_504;
    VECTOR(int16_t, 4) g_531;
    uint32_t g_549;
    VECTOR(int16_t, 4) g_558;
    uint64_t * volatile g_573;
    int32_t ** volatile g_577;
    volatile struct S0 g_609;
    uint8_t g_632[4];
    int32_t ** volatile g_641;
    volatile struct S0 g_646;
    int32_t g_663;
    volatile struct S2 g_664;
    volatile struct S2 g_665;
    volatile struct S1 g_674;
    int16_t **g_681;
    int16_t ***g_680[8][6];
    volatile int8_t g_686;
    int16_t g_691;
    VECTOR(int16_t, 2) g_718;
    VECTOR(int16_t, 2) g_765;
    uint16_t *g_796;
    uint16_t **g_795;
    uint16_t ***g_794[10][10];
    uint16_t ****g_793[2][8][1];
    int32_t ** volatile g_801;
    union U3 *g_804;
    union U3 ** volatile g_803;
    union U3 ** volatile g_808;
    uint32_t *g_818;
    volatile struct S2 g_825;
    volatile union U3 g_842;
    VECTOR(uint32_t, 8) g_891;
    int32_t g_904;
    int64_t g_905;
    int32_t ** volatile g_911[4][5];
    int32_t g_916;
    int64_t g_942;
    VECTOR(uint8_t, 16) g_956;
    VECTOR(uint16_t, 16) g_957;
    VECTOR(uint16_t, 2) g_958;
    VECTOR(uint32_t, 4) g_972;
    volatile VECTOR(int32_t, 2) g_980;
    int32_t ** volatile g_984;
    struct S0 **g_987;
    struct S0 *** volatile g_986[10];
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
int16_t  func_1(struct S4 * p_999);
int32_t  func_2(uint32_t  p_3, struct S4 * p_999);
int32_t * func_6(int32_t * p_7, uint64_t  p_8, int16_t  p_9, struct S4 * p_999);
int32_t * func_10(int64_t  p_11, struct S4 * p_999);
int32_t  func_12(int32_t * p_13, int32_t * p_14, uint8_t  p_15, int32_t * p_16, struct S4 * p_999);
int32_t * func_17(int32_t * p_18, struct S4 * p_999);
int16_t  func_32(int8_t * p_33, int32_t  p_34, int32_t * p_35, int8_t  p_36, struct S4 * p_999);
int8_t  func_43(int8_t * p_44, int32_t * p_45, int8_t * p_46, int16_t  p_47, struct S4 * p_999);
int8_t * func_48(int32_t * p_49, int8_t * p_50, int32_t  p_51, int32_t * p_52, struct S4 * p_999);
int32_t * func_53(uint64_t  p_54, struct S4 * p_999);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_999->g_4 p_999->g_25 p_999->g_58 p_999->g_56 p_999->g_75 p_999->g_73 p_999->g_57 p_999->g_74 p_999->g_144 p_999->g_149 p_999->g_127.f1 p_999->g_127.f0 p_999->g_125.f1 p_999->g_188 p_999->g_125.f0 p_999->g_150.f1 p_999->g_126.f1 p_999->g_129.f1 p_999->g_183.f0 p_999->g_251 p_999->g_259 p_999->g_163 p_999->g_126.f0 p_999->g_262 p_999->g_183.f1 p_999->g_263 p_999->g_308 p_999->g_407 p_999->g_246 p_999->g_183.f2 p_999->g_295.f2 p_999->g_414 p_999->g_415 p_999->g_468 p_999->g_407.f0.f2 p_999->g_479 p_999->g_467 p_999->g_504 p_999->g_295.f1 p_999->g_448 p_999->g_29 p_999->g_364 p_999->g_150 p_999->g_531 p_999->g_573 p_999->g_577 p_999->g_609 p_999->g_469 p_999->g_558 p_999->g_641 p_999->g_664 p_999->g_674 p_999->g_680 p_999->g_686 p_999->g_663 p_999->g_632 p_999->g_294 p_999->g_317 p_999->g_793 p_999->g_796 p_999->g_801 p_999->g_803 p_999->g_804 p_999->g_808 p_999->g_795 p_999->g_825 p_999->g_842 p_999->g_891 p_999->g_128.f0 p_999->g_818 p_999->g_904 p_999->g_905 p_999->g_916 p_999->g_942 p_999->g_956 p_999->g_957 p_999->g_958 p_999->g_972 p_999->g_980 p_999->g_984 p_999->g_681
 * writes: p_999->g_29 p_999->g_58 p_999->g_56 p_999->g_75 p_999->g_73 p_999->g_125.f1 p_999->g_126.f1 p_999->g_129.f0 p_999->g_150.f1 p_999->g_183.f0 p_999->g_129.f1 p_999->g_251 p_999->g_262 p_999->g_57 p_999->g_74 p_999->g_163 p_999->g_183.f1 p_999->g_294 p_999->g_363 p_999->g_364 p_999->g_295.f2 p_999->g_125.f0 p_999->g_259 p_999->g_448 p_999->g_128.f0 p_999->g_467 p_999->g_479.f1 p_999->g_317.f1 p_999->g_149 p_999->g_549 p_999->g_479.f2 p_999->g_127.f1 p_999->g_469 p_999->g_632 p_999->g_263 p_999->g_665 p_999->g_680 p_999->g_246 p_999->g_793 p_999->g_804 p_999->g_818 p_999->g_150.f0 p_999->g_904 p_999->g_905 p_999->g_663 p_999->g_916
 */
int16_t  func_1(struct S4 * p_999)
{ /* block id: 4 */
    int64_t l_5 = 0x2D0DA0BDBDF7CD95L;
    int32_t *l_915[3][10][7] = {{{(void*)0,&p_999->g_407.f0.f2,(void*)0,&p_999->g_407.f0.f2,&p_999->g_407.f0.f2,&p_999->g_407.f0.f2,(void*)0},{(void*)0,&p_999->g_407.f0.f2,(void*)0,&p_999->g_407.f0.f2,&p_999->g_407.f0.f2,&p_999->g_407.f0.f2,(void*)0},{(void*)0,&p_999->g_407.f0.f2,(void*)0,&p_999->g_407.f0.f2,&p_999->g_407.f0.f2,&p_999->g_407.f0.f2,(void*)0},{(void*)0,&p_999->g_407.f0.f2,(void*)0,&p_999->g_407.f0.f2,&p_999->g_407.f0.f2,&p_999->g_407.f0.f2,(void*)0},{(void*)0,&p_999->g_407.f0.f2,(void*)0,&p_999->g_407.f0.f2,&p_999->g_407.f0.f2,&p_999->g_407.f0.f2,(void*)0},{(void*)0,&p_999->g_407.f0.f2,(void*)0,&p_999->g_407.f0.f2,&p_999->g_407.f0.f2,&p_999->g_407.f0.f2,(void*)0},{(void*)0,&p_999->g_407.f0.f2,(void*)0,&p_999->g_407.f0.f2,&p_999->g_407.f0.f2,&p_999->g_407.f0.f2,(void*)0},{(void*)0,&p_999->g_407.f0.f2,(void*)0,&p_999->g_407.f0.f2,&p_999->g_407.f0.f2,&p_999->g_407.f0.f2,(void*)0},{(void*)0,&p_999->g_407.f0.f2,(void*)0,&p_999->g_407.f0.f2,&p_999->g_407.f0.f2,&p_999->g_407.f0.f2,(void*)0},{(void*)0,&p_999->g_407.f0.f2,(void*)0,&p_999->g_407.f0.f2,&p_999->g_407.f0.f2,&p_999->g_407.f0.f2,(void*)0}},{{(void*)0,&p_999->g_407.f0.f2,(void*)0,&p_999->g_407.f0.f2,&p_999->g_407.f0.f2,&p_999->g_407.f0.f2,(void*)0},{(void*)0,&p_999->g_407.f0.f2,(void*)0,&p_999->g_407.f0.f2,&p_999->g_407.f0.f2,&p_999->g_407.f0.f2,(void*)0},{(void*)0,&p_999->g_407.f0.f2,(void*)0,&p_999->g_407.f0.f2,&p_999->g_407.f0.f2,&p_999->g_407.f0.f2,(void*)0},{(void*)0,&p_999->g_407.f0.f2,(void*)0,&p_999->g_407.f0.f2,&p_999->g_407.f0.f2,&p_999->g_407.f0.f2,(void*)0},{(void*)0,&p_999->g_407.f0.f2,(void*)0,&p_999->g_407.f0.f2,&p_999->g_407.f0.f2,&p_999->g_407.f0.f2,(void*)0},{(void*)0,&p_999->g_407.f0.f2,(void*)0,&p_999->g_407.f0.f2,&p_999->g_407.f0.f2,&p_999->g_407.f0.f2,(void*)0},{(void*)0,&p_999->g_407.f0.f2,(void*)0,&p_999->g_407.f0.f2,&p_999->g_407.f0.f2,&p_999->g_407.f0.f2,(void*)0},{(void*)0,&p_999->g_407.f0.f2,(void*)0,&p_999->g_407.f0.f2,&p_999->g_407.f0.f2,&p_999->g_407.f0.f2,(void*)0},{(void*)0,&p_999->g_407.f0.f2,(void*)0,&p_999->g_407.f0.f2,&p_999->g_407.f0.f2,&p_999->g_407.f0.f2,(void*)0},{(void*)0,&p_999->g_407.f0.f2,(void*)0,&p_999->g_407.f0.f2,&p_999->g_407.f0.f2,&p_999->g_407.f0.f2,(void*)0}},{{(void*)0,&p_999->g_407.f0.f2,(void*)0,&p_999->g_407.f0.f2,&p_999->g_407.f0.f2,&p_999->g_407.f0.f2,(void*)0},{(void*)0,&p_999->g_407.f0.f2,(void*)0,&p_999->g_407.f0.f2,&p_999->g_407.f0.f2,&p_999->g_407.f0.f2,(void*)0},{(void*)0,&p_999->g_407.f0.f2,(void*)0,&p_999->g_407.f0.f2,&p_999->g_407.f0.f2,&p_999->g_407.f0.f2,(void*)0},{(void*)0,&p_999->g_407.f0.f2,(void*)0,&p_999->g_407.f0.f2,&p_999->g_407.f0.f2,&p_999->g_407.f0.f2,(void*)0},{(void*)0,&p_999->g_407.f0.f2,(void*)0,&p_999->g_407.f0.f2,&p_999->g_407.f0.f2,&p_999->g_407.f0.f2,(void*)0},{(void*)0,&p_999->g_407.f0.f2,(void*)0,&p_999->g_407.f0.f2,&p_999->g_407.f0.f2,&p_999->g_407.f0.f2,(void*)0},{(void*)0,&p_999->g_407.f0.f2,(void*)0,&p_999->g_407.f0.f2,&p_999->g_407.f0.f2,&p_999->g_407.f0.f2,(void*)0},{(void*)0,&p_999->g_407.f0.f2,(void*)0,&p_999->g_407.f0.f2,&p_999->g_407.f0.f2,&p_999->g_407.f0.f2,(void*)0},{(void*)0,&p_999->g_407.f0.f2,(void*)0,&p_999->g_407.f0.f2,&p_999->g_407.f0.f2,&p_999->g_407.f0.f2,(void*)0},{(void*)0,&p_999->g_407.f0.f2,(void*)0,&p_999->g_407.f0.f2,&p_999->g_407.f0.f2,&p_999->g_407.f0.f2,(void*)0}}};
    uint32_t l_941 = 0x40AF8594L;
    struct S0 **l_985 = &p_999->g_294;
    uint8_t *l_989 = &p_999->g_479.f1;
    int8_t l_992 = (-1L);
    uint64_t *l_993[3][4] = {{&p_999->g_125.f0,&p_999->g_125.f0,&p_999->g_125.f0,&p_999->g_125.f0},{&p_999->g_125.f0,&p_999->g_125.f0,&p_999->g_125.f0,&p_999->g_125.f0},{&p_999->g_125.f0,&p_999->g_125.f0,&p_999->g_125.f0,&p_999->g_125.f0}};
    uint32_t l_994 = 4294967290UL;
    uint32_t l_995 = 4294967287UL;
    uint64_t l_998 = 18446744073709551614UL;
    int i, j, k;
    p_999->g_916 |= func_2(((0x223FE5E8L < (p_999->g_4 , l_5)) && l_5), p_999);
    for (p_999->g_295.f2 = 0; (p_999->g_295.f2 <= 25); ++p_999->g_295.f2)
    { /* block id: 371 */
        int32_t *l_919[5][1];
        uint32_t l_928[4];
        int16_t l_939 = (-1L);
        uint8_t *l_940 = &p_999->g_317[4][7].f1;
        VECTOR(uint16_t, 8) l_953 = (VECTOR(uint16_t, 8))(0x94A7L, (VECTOR(uint16_t, 4))(0x94A7L, (VECTOR(uint16_t, 2))(0x94A7L, 0x93DEL), 0x93DEL), 0x93DEL, 0x94A7L, 0x93DEL);
        VECTOR(uint16_t, 2) l_954 = (VECTOR(uint16_t, 2))(0x1333L, 0x2EB0L);
        struct S0 **l_988 = &p_999->g_294;
        int i, j;
        for (i = 0; i < 5; i++)
        {
            for (j = 0; j < 1; j++)
                l_919[i][j] = &p_999->g_448[7];
        }
        for (i = 0; i < 4; i++)
            l_928[i] = 0xF5F3A8BEL;
        l_915[0][0][4] = func_6(l_919[3][0], (~(safe_div_func_int32_t_s_s((safe_rshift_func_int16_t_s_u(0x5D06L, 12)), ((*p_999->g_467) = (safe_mul_func_int16_t_s_s((((safe_sub_func_uint8_t_u_u(GROUP_DIVERGE(0, 1), ((VECTOR(uint8_t, 2))(0UL, 251UL)).lo)) && l_928[3]) > 0x6504C074L), ((VECTOR(int16_t, 2))(hadd(((VECTOR(int16_t, 16))((safe_lshift_func_int8_t_s_s((safe_sub_func_int16_t_s_s((safe_rshift_func_uint8_t_u_s(p_999->g_246.x, (safe_add_func_uint8_t_u_u((((**p_999->g_681) = (**p_999->g_681)) > (1L | (safe_rshift_func_uint8_t_u_s(((*l_940) = ((p_999->g_308.sb , (*p_999->g_796)) || l_939)), p_999->g_295.f2)))), p_999->g_183.f0)))), l_941)), p_999->g_73[3][2][0])), 0L, (-2L), (**p_999->g_681), ((VECTOR(int16_t, 8))(0x5036L)), (-9L), 0x1A26L, 0x0B60L, 0x2F20L)).sc0, ((VECTOR(int16_t, 2))(0x2507L))))).lo)))))), p_999->g_942, p_999);
        for (p_999->g_56 = 25; (p_999->g_56 == (-28)); --p_999->g_56)
        { /* block id: 378 */
            uint8_t *l_949 = &p_999->g_479.f1;
            struct S2 *l_950 = &p_999->g_127[6][1][0];
            VECTOR(uint8_t, 8) l_955 = (VECTOR(uint8_t, 8))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 0xA9L), 0xA9L), 0xA9L, 255UL, 0xA9L);
            uint32_t *l_973 = &p_999->g_75;
            int32_t l_981 = 1L;
            int8_t *l_982 = &p_999->g_74;
            int32_t l_983[7] = {1L,0x3BAC52EAL,1L,1L,0x3BAC52EAL,1L,1L};
            int i;
            (*p_999->g_467) = (safe_sub_func_int32_t_s_s((((safe_mul_func_uint16_t_u_u(((((*p_999->g_364) == (l_950 = ((l_949 == (void*)0) , (*p_999->g_364)))) , ((safe_rshift_func_uint8_t_u_u((((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(min(((VECTOR(uint16_t, 8))(mad_hi(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(l_953.s7077)), 1UL, 1UL, 0x545EL, 0xDD9AL)), ((VECTOR(uint16_t, 4))(l_954.yyxx)).xzywywxz, ((VECTOR(uint16_t, 8))(rotate(((VECTOR(uint16_t, 4))(upsample(((VECTOR(uint8_t, 4))(l_955.s0726)), ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 16))(p_999->g_956.s9b5348e0a65236cd)).s63e7)))).hi)).xxxx))).ywxyzwxx, ((VECTOR(uint16_t, 16))(p_999->g_957.s5b8fa3e72cf8c931)).odd)))))).odd, ((VECTOR(uint16_t, 4))(p_999->g_958.yyyy))))), 0x2665L, ((VECTOR(uint16_t, 4))(clz(((VECTOR(uint16_t, 8))(abs_diff(((VECTOR(int16_t, 4))(0x1B53L, 0x4C6DL, 0x2538L, 0x3A5EL)).xwywzwzy, ((VECTOR(int16_t, 4))((safe_mod_func_int8_t_s_s(((safe_unary_minus_func_int32_t_s((safe_div_func_int32_t_s_s(0x0C2C7791L, (safe_mod_func_uint32_t_u_u((safe_rshift_func_uint16_t_u_s(l_955.s2, 10)), (safe_rshift_func_int8_t_s_u(((*l_982) = (safe_lshift_func_int16_t_s_u((((((*l_973) = ((VECTOR(uint32_t, 8))(hadd(((VECTOR(uint32_t, 4))(p_999->g_972.wyzz)).zywwwzyy, ((VECTOR(uint32_t, 4))(8UL, 0xF47F32D9L, 4294967295UL, 4294967295UL)).yzzyyywx))).s6) , ((safe_rshift_func_uint16_t_u_s(((safe_lshift_func_uint16_t_u_s((((safe_mul_func_int16_t_s_s((((VECTOR(int32_t, 8))(p_999->g_980.yxxxxxyx)).s1 != p_999->g_183.f1), 0x3C46L)) >= (*p_999->g_469)) | p_999->g_144.y), 6)) || l_955.s6), l_955.s7)) || (*p_999->g_467))) <= 0x7409B1D57F32A490L) <= p_999->g_56), l_981))), p_999->g_73[1][0][0])))))))) > (*p_999->g_796)), 255UL)), 0x7185L, 0x4107L, 0x2681L)).zyyxwzyw))).lo))), 0x0BF6L, l_955.s2, 0x43AFL, ((VECTOR(uint16_t, 4))(0xB635L)))).s4 && (*p_999->g_796)), 7)) < 18446744073709551612UL)) & (*p_999->g_796)), (**p_999->g_795))) != 0x37FCL) & (*p_999->g_469)), l_983[6]));
        }
        (*p_999->g_984) = l_919[0][0];
        l_988 = l_985;
    }
    (*p_999->g_467) = (((void*)0 == l_989) != (l_994 = (((**p_999->g_681) = (safe_div_func_uint16_t_u_u((*p_999->g_796), (*p_999->g_796)))) && l_992)));
    --l_995;
    return l_998;
}


/* ------------------------------------------ */
/* 
 * reads : p_999->g_25 p_999->g_58 p_999->g_56 p_999->g_75 p_999->g_73 p_999->g_57 p_999->g_74 p_999->g_144 p_999->g_149 p_999->g_127.f1 p_999->g_127.f0 p_999->g_125.f1 p_999->g_188 p_999->g_125.f0 p_999->g_150.f1 p_999->g_126.f1 p_999->g_129.f1 p_999->g_183.f0 p_999->g_251 p_999->g_259 p_999->g_163 p_999->g_126.f0 p_999->g_262 p_999->g_183.f1 p_999->g_263 p_999->g_308 p_999->g_407 p_999->g_246 p_999->g_183.f2 p_999->g_295.f2 p_999->g_414 p_999->g_415 p_999->g_4 p_999->g_468 p_999->g_407.f0.f2 p_999->g_479 p_999->g_467 p_999->g_504 p_999->g_295.f1 p_999->g_448 p_999->g_29 p_999->g_364 p_999->g_150 p_999->g_531 p_999->g_573 p_999->g_577 p_999->g_609 p_999->g_469 p_999->g_558 p_999->g_641 p_999->g_664 p_999->g_674 p_999->g_680 p_999->g_686 p_999->g_663 p_999->g_632 p_999->g_294 p_999->g_317 p_999->g_793 p_999->g_796 p_999->g_801 p_999->g_803 p_999->g_804 p_999->g_808 p_999->g_795 p_999->g_825 p_999->g_842 p_999->g_891 p_999->g_128.f0 p_999->g_818 p_999->g_904 p_999->g_905
 * writes: p_999->g_29 p_999->g_58 p_999->g_56 p_999->g_75 p_999->g_73 p_999->g_125.f1 p_999->g_126.f1 p_999->g_129.f0 p_999->g_150.f1 p_999->g_183.f0 p_999->g_129.f1 p_999->g_251 p_999->g_262 p_999->g_57 p_999->g_74 p_999->g_163 p_999->g_183.f1 p_999->g_294 p_999->g_363 p_999->g_364 p_999->g_295.f2 p_999->g_125.f0 p_999->g_259 p_999->g_448 p_999->g_128.f0 p_999->g_467 p_999->g_479.f1 p_999->g_317.f1 p_999->g_149 p_999->g_549 p_999->g_479.f2 p_999->g_127.f1 p_999->g_469 p_999->g_632 p_999->g_263 p_999->g_665 p_999->g_680 p_999->g_246 p_999->g_793 p_999->g_804 p_999->g_818 p_999->g_150.f0 p_999->g_904 p_999->g_905 p_999->g_663
 */
int32_t  func_2(uint32_t  p_3, struct S4 * p_999)
{ /* block id: 5 */
    int32_t **l_912 = (void*)0;
    int32_t **l_913 = (void*)0;
    int32_t **l_914[10][10] = {{&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467},{&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467},{&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467},{&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467},{&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467},{&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467},{&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467},{&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467},{&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467},{&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467}};
    int i, j;
    (*p_999->g_801) = func_6(func_10(p_3, p_999), p_999->g_415.s0, p_3, p_999);
    return p_3;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t * func_6(int32_t * p_7, uint64_t  p_8, int16_t  p_9, struct S4 * p_999)
{ /* block id: 363 */
    uint8_t l_909 = 0xB7L;
    int32_t l_910 = 0x6CA07D05L;
    l_910 |= (l_909 <= p_9);
    return p_7;
}


/* ------------------------------------------ */
/* 
 * reads : p_999->g_25 p_999->g_58 p_999->g_56 p_999->g_75 p_999->g_73 p_999->g_57 p_999->g_74 p_999->g_144 p_999->g_149 p_999->g_127.f1 p_999->g_127.f0 p_999->g_125.f1 p_999->g_188 p_999->g_125.f0 p_999->g_150.f1 p_999->g_126.f1 p_999->g_129.f1 p_999->g_183.f0 p_999->g_251 p_999->g_259 p_999->g_163 p_999->g_126.f0 p_999->g_262 p_999->g_183.f1 p_999->g_263 p_999->g_308 p_999->g_407 p_999->g_246 p_999->g_183.f2 p_999->g_295.f2 p_999->g_414 p_999->g_415 p_999->g_4 p_999->g_468 p_999->g_407.f0.f2 p_999->g_479 p_999->g_467 p_999->g_504 p_999->g_295.f1 p_999->g_448 p_999->g_29 p_999->g_364 p_999->g_150 p_999->g_531 p_999->g_573 p_999->g_577 p_999->g_609 p_999->g_469 p_999->g_558 p_999->g_641 p_999->g_664 p_999->g_674 p_999->g_680 p_999->g_686 p_999->g_663 p_999->g_632 p_999->g_294 p_999->g_317 p_999->g_793 p_999->g_796 p_999->g_801 p_999->g_803 p_999->g_804 p_999->g_808 p_999->g_795 p_999->g_825 p_999->g_842 p_999->g_891 p_999->g_128.f0 p_999->g_818 p_999->g_904 p_999->g_905
 * writes: p_999->g_29 p_999->g_58 p_999->g_56 p_999->g_75 p_999->g_73 p_999->g_125.f1 p_999->g_126.f1 p_999->g_129.f0 p_999->g_150.f1 p_999->g_183.f0 p_999->g_129.f1 p_999->g_251 p_999->g_262 p_999->g_57 p_999->g_74 p_999->g_163 p_999->g_183.f1 p_999->g_294 p_999->g_363 p_999->g_364 p_999->g_295.f2 p_999->g_125.f0 p_999->g_259 p_999->g_448 p_999->g_128.f0 p_999->g_467 p_999->g_479.f1 p_999->g_317.f1 p_999->g_149 p_999->g_549 p_999->g_479.f2 p_999->g_127.f1 p_999->g_469 p_999->g_632 p_999->g_263 p_999->g_665 p_999->g_680 p_999->g_246 p_999->g_793 p_999->g_804 p_999->g_818 p_999->g_150.f0 p_999->g_904 p_999->g_905 p_999->g_663
 */
int32_t * func_10(int64_t  p_11, struct S4 * p_999)
{ /* block id: 6 */
    VECTOR(uint64_t, 16) l_19 = (VECTOR(uint64_t, 16))(18446744073709551615UL, (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 4UL), 4UL), 4UL, 18446744073709551615UL, 4UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 4UL), (VECTOR(uint64_t, 2))(18446744073709551615UL, 4UL), 18446744073709551615UL, 4UL, 18446744073709551615UL, 4UL);
    uint8_t l_20 = 255UL;
    VECTOR(int16_t, 4) l_23 = (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x0F4CL), 0x0F4CL);
    VECTOR(int16_t, 8) l_24 = (VECTOR(int16_t, 8))(0x33D2L, (VECTOR(int16_t, 4))(0x33D2L, (VECTOR(int16_t, 2))(0x33D2L, 0L), 0L), 0L, 0x33D2L, 0L);
    int8_t *l_28 = &p_999->g_29[0][4];
    int32_t *l_67[7];
    int32_t **l_402 = &l_67[1];
    int32_t *l_403 = &p_999->g_295.f2;
    int32_t *l_903[6] = {&p_999->g_317[4][7].f2,&p_999->g_317[4][7].f2,&p_999->g_317[4][7].f2,&p_999->g_317[4][7].f2,&p_999->g_317[4][7].f2,&p_999->g_317[4][7].f2};
    int32_t *l_906 = (void*)0;
    int32_t *l_907 = &p_999->g_663;
    uint16_t **l_908 = &p_999->g_796;
    int i;
    for (i = 0; i < 7; i++)
        l_67[i] = &p_999->g_56;
    p_999->g_905 |= (p_999->g_904 |= ((*l_403) = (~func_12(((*l_402) = func_17(((((((VECTOR(uint64_t, 4))(7UL, ((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 4))(abs(((VECTOR(uint64_t, 2))(l_19.s0c)).yyyy))).even)))).yyyxxyxxyyyxxyxy)).s94)), 18446744073709551607UL)).x <= 0UL) , (l_20 & (safe_lshift_func_int16_t_s_s(((VECTOR(int16_t, 16))(hadd(((VECTOR(int16_t, 2))(l_23.zw)).xxxxyxxxxxxxxxyy, ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(rhadd(((VECTOR(int16_t, 4))(l_24.s7347)).wyzzwwyx, ((VECTOR(int16_t, 4))(p_999->g_25.xyxx)).xwwwyxwz))).s7021663111725407))))).s0, 15)))) && (safe_add_func_int8_t_s_s(((*l_28) = p_999->g_25.x), (safe_mod_func_int32_t_s_s((((func_32(l_28, (safe_mod_func_uint32_t_u_u(((VECTOR(uint32_t, 16))(((safe_mod_func_int8_t_s_s(func_43(func_48(func_53(p_11, p_999), l_28, ((safe_lshift_func_uint8_t_u_s(l_19.s9, (safe_rshift_func_int16_t_s_s(8L, 7)))) ^ l_20), l_67[1], p_999), l_67[1], &p_999->g_74, p_11, p_999), p_11)) > 0L), 0xA263243DL, 0x7C168B3AL, FAKE_DIVERGE(p_999->global_0_offset, get_global_id(0), 10), 0x1CA57882L, p_999->g_75, 0x4612A8C3L, 0UL, 1UL, 0x2BEB9285L, 0x9615ECCFL, ((VECTOR(uint32_t, 2))(1UL)), ((VECTOR(uint32_t, 2))(0x1DE00DC0L)), 0x0EFD82B3L)).sc, p_999->g_57)), l_67[4], p_11, p_999) | p_999->g_127[6][1][8].f1) == p_11) & p_999->g_308.s7), (-9L)))))) , (void*)0), p_999)), l_403, p_999->g_144.w, l_403, p_999))));
    l_908 = (((*l_907) = p_999->g_73[1][0][0]) , l_908);
    (**l_402) = 8L;
    return &p_999->g_448[5];
}


/* ------------------------------------------ */
/* 
 * reads : p_999->g_407 p_999->g_246 p_999->g_75 p_999->g_183.f2 p_999->g_308 p_999->g_57 p_999->g_295.f2 p_999->g_414 p_999->g_415 p_999->g_125.f0 p_999->g_259 p_999->g_183.f1 p_999->g_150.f1 p_999->g_4 p_999->g_58 p_999->g_251 p_999->g_127.f1 p_999->g_468 p_999->g_407.f0.f2 p_999->g_163 p_999->g_479 p_999->g_129.f1 p_999->g_467 p_999->g_56 p_999->g_504 p_999->g_295.f1 p_999->g_448 p_999->g_29 p_999->g_364 p_999->g_149 p_999->g_150 p_999->g_531 p_999->g_573 p_999->g_577 p_999->g_609 p_999->g_469 p_999->g_558 p_999->g_641 p_999->g_664 p_999->g_674 p_999->g_680 p_999->g_686 p_999->g_663 p_999->g_125.f1 p_999->g_632 p_999->g_294 p_999->g_317 p_999->g_793 p_999->g_796 p_999->g_801 p_999->g_803 p_999->g_804 p_999->g_808 p_999->g_795 p_999->g_825 p_999->g_842 p_999->g_891 p_999->g_128.f0 p_999->g_818
 * writes: p_999->g_295.f2 p_999->g_125.f0 p_999->g_259 p_999->g_150.f1 p_999->g_58 p_999->g_448 p_999->g_128.f0 p_999->g_467 p_999->g_75 p_999->g_56 p_999->g_479.f1 p_999->g_163 p_999->g_251 p_999->g_317.f1 p_999->g_149 p_999->g_549 p_999->g_479.f2 p_999->g_57 p_999->g_127.f1 p_999->g_469 p_999->g_632 p_999->g_263 p_999->g_665 p_999->g_294 p_999->g_680 p_999->g_29 p_999->g_246 p_999->g_793 p_999->g_804 p_999->g_818 p_999->g_150.f0
 */
int32_t  func_12(int32_t * p_13, int32_t * p_14, uint8_t  p_15, int32_t * p_16, struct S4 * p_999)
{ /* block id: 138 */
    struct S0 **l_406 = &p_999->g_294;
    int32_t l_408 = (-1L);
    uint32_t *l_410 = &p_999->g_75;
    uint32_t **l_409 = &l_410;
    VECTOR(int32_t, 8) l_411 = (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, (-10L)), (-10L)), (-10L), 1L, (-10L));
    VECTOR(int32_t, 16) l_412 = (VECTOR(int32_t, 16))(0x5F1A789DL, (VECTOR(int32_t, 4))(0x5F1A789DL, (VECTOR(int32_t, 2))(0x5F1A789DL, (-1L)), (-1L)), (-1L), 0x5F1A789DL, (-1L), (VECTOR(int32_t, 2))(0x5F1A789DL, (-1L)), (VECTOR(int32_t, 2))(0x5F1A789DL, (-1L)), 0x5F1A789DL, (-1L), 0x5F1A789DL, (-1L));
    struct S2 *l_413 = (void*)0;
    uint16_t *l_480 = (void*)0;
    int32_t l_490[6][10][4] = {{{(-3L),0x52598ADEL,2L,0x5003B4F9L},{(-3L),0x52598ADEL,2L,0x5003B4F9L},{(-3L),0x52598ADEL,2L,0x5003B4F9L},{(-3L),0x52598ADEL,2L,0x5003B4F9L},{(-3L),0x52598ADEL,2L,0x5003B4F9L},{(-3L),0x52598ADEL,2L,0x5003B4F9L},{(-3L),0x52598ADEL,2L,0x5003B4F9L},{(-3L),0x52598ADEL,2L,0x5003B4F9L},{(-3L),0x52598ADEL,2L,0x5003B4F9L},{(-3L),0x52598ADEL,2L,0x5003B4F9L}},{{(-3L),0x52598ADEL,2L,0x5003B4F9L},{(-3L),0x52598ADEL,2L,0x5003B4F9L},{(-3L),0x52598ADEL,2L,0x5003B4F9L},{(-3L),0x52598ADEL,2L,0x5003B4F9L},{(-3L),0x52598ADEL,2L,0x5003B4F9L},{(-3L),0x52598ADEL,2L,0x5003B4F9L},{(-3L),0x52598ADEL,2L,0x5003B4F9L},{(-3L),0x52598ADEL,2L,0x5003B4F9L},{(-3L),0x52598ADEL,2L,0x5003B4F9L},{(-3L),0x52598ADEL,2L,0x5003B4F9L}},{{(-3L),0x52598ADEL,2L,0x5003B4F9L},{(-3L),0x52598ADEL,2L,0x5003B4F9L},{(-3L),0x52598ADEL,2L,0x5003B4F9L},{(-3L),0x52598ADEL,2L,0x5003B4F9L},{(-3L),0x52598ADEL,2L,0x5003B4F9L},{(-3L),0x52598ADEL,2L,0x5003B4F9L},{(-3L),0x52598ADEL,2L,0x5003B4F9L},{(-3L),0x52598ADEL,2L,0x5003B4F9L},{(-3L),0x52598ADEL,2L,0x5003B4F9L},{(-3L),0x52598ADEL,2L,0x5003B4F9L}},{{(-3L),0x52598ADEL,2L,0x5003B4F9L},{(-3L),0x52598ADEL,2L,0x5003B4F9L},{(-3L),0x52598ADEL,2L,0x5003B4F9L},{(-3L),0x52598ADEL,2L,0x5003B4F9L},{(-3L),0x52598ADEL,2L,0x5003B4F9L},{(-3L),0x52598ADEL,2L,0x5003B4F9L},{(-3L),0x52598ADEL,2L,0x5003B4F9L},{(-3L),0x52598ADEL,2L,0x5003B4F9L},{(-3L),0x52598ADEL,2L,0x5003B4F9L},{(-3L),0x52598ADEL,2L,0x5003B4F9L}},{{(-3L),0x52598ADEL,2L,0x5003B4F9L},{(-3L),0x52598ADEL,2L,0x5003B4F9L},{(-3L),0x52598ADEL,2L,0x5003B4F9L},{(-3L),0x52598ADEL,2L,0x5003B4F9L},{(-3L),0x52598ADEL,2L,0x5003B4F9L},{(-3L),0x52598ADEL,2L,0x5003B4F9L},{(-3L),0x52598ADEL,2L,0x5003B4F9L},{(-3L),0x52598ADEL,2L,0x5003B4F9L},{(-3L),0x52598ADEL,2L,0x5003B4F9L},{(-3L),0x52598ADEL,2L,0x5003B4F9L}},{{(-3L),0x52598ADEL,2L,0x5003B4F9L},{(-3L),0x52598ADEL,2L,0x5003B4F9L},{(-3L),0x52598ADEL,2L,0x5003B4F9L},{(-3L),0x52598ADEL,2L,0x5003B4F9L},{(-3L),0x52598ADEL,2L,0x5003B4F9L},{(-3L),0x52598ADEL,2L,0x5003B4F9L},{(-3L),0x52598ADEL,2L,0x5003B4F9L},{(-3L),0x52598ADEL,2L,0x5003B4F9L},{(-3L),0x52598ADEL,2L,0x5003B4F9L},{(-3L),0x52598ADEL,2L,0x5003B4F9L}}};
    VECTOR(uint8_t, 2) l_526 = (VECTOR(uint8_t, 2))(1UL, 254UL);
    struct S2 ***l_529 = &p_999->g_363;
    struct S2 **l_530 = &l_413;
    int32_t l_552 = 1L;
    int16_t l_687 = 0x5702L;
    int16_t **l_698[8][3] = {{(void*)0,&p_999->g_469,(void*)0},{(void*)0,&p_999->g_469,(void*)0},{(void*)0,&p_999->g_469,(void*)0},{(void*)0,&p_999->g_469,(void*)0},{(void*)0,&p_999->g_469,(void*)0},{(void*)0,&p_999->g_469,(void*)0},{(void*)0,&p_999->g_469,(void*)0},{(void*)0,&p_999->g_469,(void*)0}};
    uint16_t **l_711 = &l_480;
    uint16_t ***l_710 = &l_711;
    VECTOR(int64_t, 8) l_735 = (VECTOR(int64_t, 8))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, (-1L)), (-1L)), (-1L), 1L, (-1L));
    int32_t l_753 = 1L;
    VECTOR(int8_t, 4) l_760 = (VECTOR(int8_t, 4))(0x59L, (VECTOR(int8_t, 2))(0x59L, 0x52L), 0x52L);
    uint64_t l_772 = 0x1C809F9CE966F019L;
    int16_t l_782 = 0x277BL;
    uint32_t l_783 = 0x4855E34CL;
    int16_t l_792 = 3L;
    uint16_t ****l_798 = (void*)0;
    union U3 *l_802 = &p_999->g_407;
    int32_t *l_813 = &p_999->g_663;
    uint32_t l_850 = 4294967290UL;
    uint32_t l_872 = 5UL;
    uint8_t ***l_898 = (void*)0;
    int i, j, k;
    (*p_14) |= (((((((safe_mul_func_int8_t_s_s(((l_406 != (((p_999->g_407 , (-1L)) <= (((l_408 , (((((p_15 ^ l_408) | ((0UL | 0x61124D04L) != (((l_408 , (void*)0) != (void*)0) | 1L))) , (void*)0) != l_409) >= p_999->g_246.x)) | 0xD8L) != p_999->g_75)) , l_406)) , p_999->g_183.f2), p_999->g_246.w)) > (-1L)) == p_999->g_308.s4) , &p_999->g_73[2][0][0]) == (void*)0) ^ 0x2019ED67L) || p_999->g_57);
    if (((VECTOR(int32_t, 4))(rotate(((VECTOR(int32_t, 8))(l_411.s31257653)).hi, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(l_412.se7dc84d1)), (((+(-4L)) , l_413) != (void*)0), 0x3A35BFECL, 0L, 0x2565CF32L, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(p_999->g_414.sf4fcf177)).s73)).hi, ((VECTOR(int32_t, 2))(p_999->g_415.s64)), 0x4DA3F98AL)).s702b))).z)
    { /* block id: 140 */
        VECTOR(uint16_t, 16) l_441 = (VECTOR(uint16_t, 16))(0x7881L, (VECTOR(uint16_t, 4))(0x7881L, (VECTOR(uint16_t, 2))(0x7881L, 0x9441L), 0x9441L), 0x9441L, 0x7881L, 0x9441L, (VECTOR(uint16_t, 2))(0x7881L, 0x9441L), (VECTOR(uint16_t, 2))(0x7881L, 0x9441L), 0x7881L, 0x9441L, 0x7881L, 0x9441L);
        int32_t *l_443 = (void*)0;
        int32_t **l_442 = &l_443;
        uint32_t l_452 = 0x9FD82F0BL;
        VECTOR(int16_t, 2) l_465 = (VECTOR(int16_t, 2))((-7L), 1L);
        int16_t * volatile * volatile l_471 = &p_999->g_469;/* VOLATILE GLOBAL l_471 */
        int32_t l_483 = 5L;
        int32_t l_484 = 1L;
        int32_t l_485 = 0x7185D896L;
        int32_t l_486 = 0x38EECDF3L;
        int32_t l_487[3][1];
        int64_t l_489 = (-8L);
        uint8_t *l_511 = &p_999->g_479.f1;
        int i, j;
        for (i = 0; i < 3; i++)
        {
            for (j = 0; j < 1; j++)
                l_487[i][j] = 9L;
        }
        for (p_999->g_125.f0 = (-19); (p_999->g_125.f0 < 8); ++p_999->g_125.f0)
        { /* block id: 143 */
            int8_t *l_430 = &p_999->g_259[2];
            int16_t *l_433 = &p_999->g_150.f1;
            int32_t **l_444[7] = {&l_443,&l_443,&l_443,&l_443,&l_443,&l_443,&l_443};
            uint16_t *l_445 = &p_999->g_58;
            uint16_t *l_446 = (void*)0;
            uint16_t *l_447[9][9][1] = {{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}}};
            int32_t l_488 = (-1L);
            int32_t l_491 = 0x4570D40CL;
            int16_t l_492 = (-1L);
            uint8_t l_493 = 0x2FL;
            int i, j, k;
            if (((safe_mod_func_uint16_t_u_u((p_999->g_448[5] = ((*l_445) |= (safe_mul_func_int8_t_s_s((safe_div_func_uint64_t_u_u(p_999->g_57, (safe_rshift_func_int8_t_s_s((safe_lshift_func_int16_t_s_u(((*l_433) ^= (safe_mul_func_int8_t_s_s(0L, ((l_412.se > ((*l_430) |= (FAKE_DIVERGE(p_999->local_1_offset, get_local_id(1), 10) <= 0x2E7FA1F8L))) & (!(p_15 && (safe_mod_func_uint64_t_u_u(0x06706E8835EA9623L, p_999->g_183.f1)))))))), 11)), p_15)))), (safe_mod_func_int8_t_s_s((((safe_div_func_uint16_t_u_u((safe_unary_minus_func_int32_t_s((safe_mod_func_uint16_t_u_u((7L && 8UL), l_441.s7)))), 0xE4E0L)) , l_442) != l_444[5]), p_999->g_4)))))), GROUP_DIVERGE(2, 1))) < (-4L)))
            { /* block id: 148 */
                uint32_t l_449 = 4294967291UL;
                --l_449;
                return l_452;
            }
            else
            { /* block id: 151 */
                uint64_t l_464 = 18446744073709551607UL;
                uint64_t *l_466 = &p_999->g_128.f0;
                int16_t * volatile * volatile *l_470[6][10] = {{&p_999->g_468[0][6],&p_999->g_468[0][6],&p_999->g_468[0][6],&p_999->g_468[0][3],&p_999->g_468[0][6],&p_999->g_468[0][5],&p_999->g_468[0][5],&p_999->g_468[0][5],&p_999->g_468[0][5],&p_999->g_468[0][5]},{&p_999->g_468[0][6],&p_999->g_468[0][6],&p_999->g_468[0][6],&p_999->g_468[0][3],&p_999->g_468[0][6],&p_999->g_468[0][5],&p_999->g_468[0][5],&p_999->g_468[0][5],&p_999->g_468[0][5],&p_999->g_468[0][5]},{&p_999->g_468[0][6],&p_999->g_468[0][6],&p_999->g_468[0][6],&p_999->g_468[0][3],&p_999->g_468[0][6],&p_999->g_468[0][5],&p_999->g_468[0][5],&p_999->g_468[0][5],&p_999->g_468[0][5],&p_999->g_468[0][5]},{&p_999->g_468[0][6],&p_999->g_468[0][6],&p_999->g_468[0][6],&p_999->g_468[0][3],&p_999->g_468[0][6],&p_999->g_468[0][5],&p_999->g_468[0][5],&p_999->g_468[0][5],&p_999->g_468[0][5],&p_999->g_468[0][5]},{&p_999->g_468[0][6],&p_999->g_468[0][6],&p_999->g_468[0][6],&p_999->g_468[0][3],&p_999->g_468[0][6],&p_999->g_468[0][5],&p_999->g_468[0][5],&p_999->g_468[0][5],&p_999->g_468[0][5],&p_999->g_468[0][5]},{&p_999->g_468[0][6],&p_999->g_468[0][6],&p_999->g_468[0][6],&p_999->g_468[0][3],&p_999->g_468[0][6],&p_999->g_468[0][5],&p_999->g_468[0][5],&p_999->g_468[0][5],&p_999->g_468[0][5],&p_999->g_468[0][5]}};
                int i, j;
                p_999->g_467 = func_53(((safe_mod_func_int64_t_s_s(((((safe_sub_func_uint16_t_u_u((((*l_466) = (safe_unary_minus_func_int16_t_s(((safe_mul_func_int16_t_s_s((safe_add_func_uint8_t_u_u(GROUP_DIVERGE(0, 1), ((FAKE_DIVERGE(p_999->global_1_offset, get_global_id(1), 10) , (void*)0) == (void*)0))), (((safe_rshift_func_uint8_t_u_u((&p_999->g_29[8][0] != (void*)0), GROUP_DIVERGE(1, 1))) ^ l_464) > (l_408 , ((VECTOR(int16_t, 16))(l_465.yxyyyxxyyxyyyyxy)).se)))) < p_15)))) >= p_15), 65535UL)) & p_15) , p_999->g_251) & 0x36ABDD02L), p_15)) , p_999->g_127[6][1][8].f1), p_999);
                l_471 = p_999->g_468[0][3];
            }
            (*p_999->g_467) |= (safe_sub_func_int64_t_s_s((((VECTOR(int8_t, 8))(mul_hi(((VECTOR(int8_t, 8))((safe_rshift_func_uint16_t_u_u(p_15, (p_999->g_407.f0.f2 < (p_999->g_163[1] , (safe_unary_minus_func_uint32_t_u(((**l_409) = ((((safe_sub_func_int16_t_s_s(((p_999->g_479 , (void*)0) == l_480), 0xF842L)) , FAKE_DIVERGE(p_999->global_0_offset, get_global_id(0), 10)) & ((((-1L) & (safe_lshift_func_uint16_t_u_s((0L > 0xDDB16BD1L), p_15))) && p_15) || p_15)) , p_999->g_129.f1)))))))), 0L, 0x07L, 0L, p_15, (-1L), 0L, 0x48L)), ((VECTOR(int8_t, 8))(0x0CL))))).s2 == 250UL), p_999->g_129.f1));
            if ((*p_999->g_467))
                continue;
            ++l_493;
        }
        (*p_13) = (safe_sub_func_int64_t_s_s((safe_sub_func_uint32_t_u_u(((l_490[2][1][1] | (safe_lshift_func_uint16_t_u_u(p_15, 12))) || (0x279E2BB2B60EF07AL > p_999->g_75)), p_15)), (safe_sub_func_uint16_t_u_u((&p_999->g_149 == (((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 8))(abs_diff(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 2))(p_999->g_504.yy)))).yyyxyyyy, ((VECTOR(uint32_t, 8))(hadd(((VECTOR(uint32_t, 16))((safe_add_func_int16_t_s_s(((l_412.s7 ^= (safe_rshift_func_int8_t_s_s(p_999->g_295.f1, 4))) < ((((*l_511) |= 1UL) < GROUP_DIVERGE(1, 1)) >= p_999->g_448[1])), 0x45EAL)), l_412.sb, ((VECTOR(uint32_t, 2))(0x5184328EL)), 6UL, l_411.s0, 1UL, p_15, p_999->g_29[0][4], 1UL, 4294967294UL, 0x701F99D9L, ((VECTOR(uint32_t, 4))(0xDB3F33E0L)))).odd, ((VECTOR(uint32_t, 8))(0x606DCC45L)))))))).hi)).zwzwxxxy)).s3 , &l_413)), p_15))));
    }
    else
    { /* block id: 164 */
        int8_t l_514[10];
        uint16_t *l_515 = &p_999->g_58;
        int32_t *l_521[2][5][2] = {{{&p_999->g_479.f2,&p_999->g_448[5]},{&p_999->g_479.f2,&p_999->g_448[5]},{&p_999->g_479.f2,&p_999->g_448[5]},{&p_999->g_479.f2,&p_999->g_448[5]},{&p_999->g_479.f2,&p_999->g_448[5]}},{{&p_999->g_479.f2,&p_999->g_448[5]},{&p_999->g_479.f2,&p_999->g_448[5]},{&p_999->g_479.f2,&p_999->g_448[5]},{&p_999->g_479.f2,&p_999->g_448[5]},{&p_999->g_479.f2,&p_999->g_448[5]}}};
        int i, j, k;
        for (i = 0; i < 10; i++)
            l_514[i] = 5L;
        (*p_999->g_467) = (safe_lshift_func_uint16_t_u_u((++(*l_515)), 14));
        for (p_999->g_251 = 0; (p_999->g_251 == (-1)); p_999->g_251 = safe_sub_func_uint8_t_u_u(p_999->g_251, 3))
        { /* block id: 169 */
            int32_t **l_520 = &p_999->g_467;
            (*l_520) = p_13;
            (*l_520) = l_521[1][1][1];
            (*l_520) = l_521[0][4][1];
            if (p_999->g_246.z)
                break;
        }
    }
    (*p_13) ^= ((+(safe_div_func_uint64_t_u_u(((**p_999->g_364) , (safe_sub_func_int64_t_s_s((((VECTOR(uint8_t, 8))(l_526.yxxyyyxy)).s3 && 9L), l_490[2][1][1]))), (safe_mul_func_int8_t_s_s((0x9B99L >= ((((&l_413 == (l_530 = &l_413)) < ((((l_490[2][1][1] & ((VECTOR(int16_t, 8))((-1L), 0x73EAL, 0L, ((VECTOR(int16_t, 4))(p_999->g_531.yzyz)), 1L)).s5) | p_15) > ((((~(+l_411.s1)) ^ p_999->g_56) , l_490[2][1][1]) != 1L)) & 0UL)) , l_408) <= l_412.sa)), p_15))))) != (*p_14));
    if ((*p_13))
    { /* block id: 178 */
        uint8_t *l_536 = &p_999->g_317[4][7].f1;
        struct S2 *l_541 = (void*)0;
        int32_t l_542[8];
        struct S0 **l_547 = &p_999->g_294;
        int8_t *l_548[1];
        uint32_t **l_582 = &l_410;
        VECTOR(int8_t, 8) l_583 = (VECTOR(int8_t, 8))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x27L), 0x27L), 0x27L, (-1L), 0x27L);
        uint8_t l_584 = 0UL;
        int16_t *l_617[5][8] = {{(void*)0,(void*)0,(void*)0,&p_999->g_129.f1,&p_999->g_126.f1,&p_999->g_129.f1,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&p_999->g_129.f1,&p_999->g_126.f1,&p_999->g_129.f1,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&p_999->g_129.f1,&p_999->g_126.f1,&p_999->g_129.f1,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&p_999->g_129.f1,&p_999->g_126.f1,&p_999->g_129.f1,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&p_999->g_129.f1,&p_999->g_126.f1,&p_999->g_129.f1,(void*)0,(void*)0}};
        VECTOR(int32_t, 4) l_647 = (VECTOR(int32_t, 4))(0x0B8068BEL, (VECTOR(int32_t, 2))(0x0B8068BEL, 9L), 9L);
        uint32_t l_728 = 0xE905CD76L;
        VECTOR(int16_t, 16) l_766 = (VECTOR(int16_t, 16))(0x62D8L, (VECTOR(int16_t, 4))(0x62D8L, (VECTOR(int16_t, 2))(0x62D8L, 0x154CL), 0x154CL), 0x154CL, 0x62D8L, 0x154CL, (VECTOR(int16_t, 2))(0x62D8L, 0x154CL), (VECTOR(int16_t, 2))(0x62D8L, 0x154CL), 0x62D8L, 0x154CL, 0x62D8L, 0x154CL);
        int32_t *l_775 = &p_999->g_251;
        int32_t *l_776 = (void*)0;
        int32_t *l_777 = &p_999->g_448[3];
        int32_t *l_778 = &p_999->g_479.f2;
        int32_t *l_779 = &p_999->g_56;
        int32_t *l_780 = (void*)0;
        int32_t *l_781[7] = {&p_999->g_163[5],&p_999->g_163[5],&p_999->g_163[5],&p_999->g_163[5],&p_999->g_163[5],&p_999->g_163[5],&p_999->g_163[5]};
        uint16_t *****l_797 = &p_999->g_793[0][3][0];
        int i, j;
        for (i = 0; i < 8; i++)
            l_542[i] = 0L;
        for (i = 0; i < 1; i++)
            l_548[i] = &p_999->g_29[2][4];
        p_999->g_549 = ((safe_add_func_int16_t_s_s((safe_mul_func_uint8_t_u_u(((((*l_536) = 1UL) , ((safe_rshift_func_uint8_t_u_s((((*p_999->g_364) = (*l_530)) == ((safe_lshift_func_int16_t_s_u(0x48EDL, 4)) , l_541)), 0)) | l_411.s7)) && (l_542[1] && 0x6D69D674L)), (GROUP_DIVERGE(0, 1) < ((FAKE_DIVERGE(p_999->group_0_offset, get_group_id(0), 10) < FAKE_DIVERGE(p_999->global_2_offset, get_global_id(2), 10)) , (l_412.s8 ^= ((safe_lshift_func_uint16_t_u_s(l_542[1], 3)) & (((l_406 != l_547) && p_999->g_414.sc) < p_999->g_531.y))))))), l_542[1])) && l_411.s7);
        for (p_999->g_251 = 14; (p_999->g_251 >= 3); p_999->g_251 = safe_sub_func_uint16_t_u_u(p_999->g_251, 3))
        { /* block id: 185 */
            VECTOR(int16_t, 2) l_557 = (VECTOR(int16_t, 2))(0x3F01L, 0x6853L);
            struct S2 **l_566 = &l_413;
            uint16_t *l_572[1][10] = {{&p_999->g_58,&p_999->g_58,&p_999->g_58,&p_999->g_58,&p_999->g_58,&p_999->g_58,&p_999->g_58,&p_999->g_58,&p_999->g_58,&p_999->g_58}};
            int32_t l_590[7] = {1L,1L,1L,1L,1L,1L,1L};
            uint32_t l_610 = 0x4D87F309L;
            VECTOR(uint16_t, 8) l_675 = (VECTOR(uint16_t, 8))(0xC783L, (VECTOR(uint16_t, 4))(0xC783L, (VECTOR(uint16_t, 2))(0xC783L, 0xA951L), 0xA951L), 0xA951L, 0xC783L, 0xA951L);
            uint8_t **l_750 = (void*)0;
            int32_t *l_771[4][6][1] = {{{&l_490[2][8][3]},{&l_490[2][8][3]},{&l_490[2][8][3]},{&l_490[2][8][3]},{&l_490[2][8][3]},{&l_490[2][8][3]}},{{&l_490[2][8][3]},{&l_490[2][8][3]},{&l_490[2][8][3]},{&l_490[2][8][3]},{&l_490[2][8][3]},{&l_490[2][8][3]}},{{&l_490[2][8][3]},{&l_490[2][8][3]},{&l_490[2][8][3]},{&l_490[2][8][3]},{&l_490[2][8][3]},{&l_490[2][8][3]}},{{&l_490[2][8][3]},{&l_490[2][8][3]},{&l_490[2][8][3]},{&l_490[2][8][3]},{&l_490[2][8][3]},{&l_490[2][8][3]}}};
            int i, j, k;
            (*p_13) |= l_412.sd;
            (*p_16) = l_552;
            if ((*p_16))
            { /* block id: 188 */
                VECTOR(int16_t, 2) l_556 = (VECTOR(int16_t, 2))(1L, 0x5F79L);
                VECTOR(int16_t, 16) l_559 = (VECTOR(int16_t, 16))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 1L), 1L), 1L, (-1L), 1L, (VECTOR(int16_t, 2))((-1L), 1L), (VECTOR(int16_t, 2))((-1L), 1L), (-1L), 1L, (-1L), 1L);
                struct S2 **l_567 = &l_413;
                struct S2 ***l_568 = (void*)0;
                struct S2 ***l_569 = &l_530;
                int32_t l_591 = 0x444844F8L;
                int32_t l_592 = 1L;
                uint64_t l_593 = 0x17923848456E90AFL;
                int i;
                (*p_14) |= ((safe_mul_func_uint8_t_u_u((safe_unary_minus_func_int32_t_s(((((VECTOR(int16_t, 8))(safe_clamp_func(VECTOR(int16_t, 8),VECTOR(int16_t, 8),((VECTOR(int16_t, 2))(l_556.xx)).yxxyxxyy, ((VECTOR(int16_t, 2))(0x6374L, 0x49F8L)).xyxyxxyx, ((VECTOR(int16_t, 8))(rotate(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(safe_clamp_func(VECTOR(int16_t, 8),VECTOR(int16_t, 8),((VECTOR(int16_t, 4))(1L, 8L, 0x0CA5L, (-1L))).xwzxwyxz, ((VECTOR(int16_t, 2))((-1L), 0x72B3L)).yxxyxyxy, ((VECTOR(int16_t, 2))(rhadd(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 4))(l_557.xyxy)).even)).yyyxyyxyxxyxyyyy)).hi)).s37, ((VECTOR(int16_t, 8))(rhadd(((VECTOR(int16_t, 4))(clz(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))((-6L), 0x0837L)).yxyyxyxxxyyxyyyx)).even)).lo))).yxzwxwyz, ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 8))(p_999->g_558.xzxwyxwx))))))).s35))).yyyxxyyy))).s0507413230001133)).even, ((VECTOR(int16_t, 4))(l_559.sacb2)).zzxzwxxy)))))).s6 >= 65527UL) != (((p_15 != l_542[3]) & (safe_add_func_int64_t_s_s((safe_div_func_int32_t_s_s((((safe_rshift_func_uint16_t_u_u((l_566 != ((*l_569) = l_567)), p_15)) == (safe_lshift_func_uint8_t_u_s(((*l_536) = (((((void*)0 == l_572[0][4]) != ((*p_13) = (l_557.y || 1L))) && 0x51DEAE01L) ^ p_999->g_150.f0)), p_999->g_504.y))) , (*p_13)), 1UL)), l_490[2][1][1]))) > 0x5EL)))), 1L)) > l_557.x);
                if ((p_999->g_573 != (void*)0))
                { /* block id: 193 */
                    int32_t **l_574 = &p_999->g_467;
                    (*l_574) = &l_542[1];
                    return (*p_13);
                }
                else
                { /* block id: 196 */
                    for (p_15 = 0; (p_15 > 50); p_15 = safe_add_func_int32_t_s_s(p_15, 3))
                    { /* block id: 199 */
                        (*p_999->g_577) = &p_999->g_251;
                        if ((*p_14))
                            continue;
                    }
                }
                for (l_552 = 19; (l_552 <= (-4)); --l_552)
                { /* block id: 206 */
                    if ((*p_14))
                        break;
                    (*p_16) |= (safe_sub_func_int64_t_s_s(((((0x4BD2FC58L >= l_542[1]) < 0xB4DA4E2DL) , (l_582 != (void*)0)) <= l_490[3][7][2]), (((VECTOR(int8_t, 8))(l_583.s51044133)).s4 < GROUP_DIVERGE(0, 1))));
                }
                if (l_584)
                { /* block id: 210 */
                    uint64_t l_585 = 0xA500CD7735577B27L;
                    l_585--;
                    if (l_411.s6)
                        break;
                    if ((*p_14))
                        break;
                    if ((*p_16))
                        break;
                }
                else
                { /* block id: 215 */
                    int32_t *l_588 = &p_999->g_448[6];
                    int32_t *l_589[7] = {&p_999->g_448[8],&p_999->g_251,&p_999->g_448[8],&p_999->g_448[8],&p_999->g_251,&p_999->g_448[8],&p_999->g_448[8]};
                    VECTOR(int64_t, 16) l_602 = (VECTOR(int64_t, 16))(0x2F4B66E0D91B9A65L, (VECTOR(int64_t, 4))(0x2F4B66E0D91B9A65L, (VECTOR(int64_t, 2))(0x2F4B66E0D91B9A65L, 0x01BC1A61456F9204L), 0x01BC1A61456F9204L), 0x01BC1A61456F9204L, 0x2F4B66E0D91B9A65L, 0x01BC1A61456F9204L, (VECTOR(int64_t, 2))(0x2F4B66E0D91B9A65L, 0x01BC1A61456F9204L), (VECTOR(int64_t, 2))(0x2F4B66E0D91B9A65L, 0x01BC1A61456F9204L), 0x2F4B66E0D91B9A65L, 0x01BC1A61456F9204L, 0x2F4B66E0D91B9A65L, 0x01BC1A61456F9204L);
                    VECTOR(int64_t, 16) l_603 = (VECTOR(int64_t, 16))(0x4BFD91F2C2848B75L, (VECTOR(int64_t, 4))(0x4BFD91F2C2848B75L, (VECTOR(int64_t, 2))(0x4BFD91F2C2848B75L, 0x0DFC8F3348631329L), 0x0DFC8F3348631329L), 0x0DFC8F3348631329L, 0x4BFD91F2C2848B75L, 0x0DFC8F3348631329L, (VECTOR(int64_t, 2))(0x4BFD91F2C2848B75L, 0x0DFC8F3348631329L), (VECTOR(int64_t, 2))(0x4BFD91F2C2848B75L, 0x0DFC8F3348631329L), 0x4BFD91F2C2848B75L, 0x0DFC8F3348631329L, 0x4BFD91F2C2848B75L, 0x0DFC8F3348631329L);
                    VECTOR(int32_t, 4) l_618 = (VECTOR(int32_t, 4))(0x6DA5EDD3L, (VECTOR(int32_t, 2))(0x6DA5EDD3L, 4L), 4L);
                    int i;
                    l_593++;
                    for (p_999->g_479.f2 = 17; (p_999->g_479.f2 != (-28)); p_999->g_479.f2--)
                    { /* block id: 219 */
                        VECTOR(int64_t, 16) l_606 = (VECTOR(int64_t, 16))(0x5333E13D4276F4F1L, (VECTOR(int64_t, 4))(0x5333E13D4276F4F1L, (VECTOR(int64_t, 2))(0x5333E13D4276F4F1L, 0x4724B6B6C63AE762L), 0x4724B6B6C63AE762L), 0x4724B6B6C63AE762L, 0x5333E13D4276F4F1L, 0x4724B6B6C63AE762L, (VECTOR(int64_t, 2))(0x5333E13D4276F4F1L, 0x4724B6B6C63AE762L), (VECTOR(int64_t, 2))(0x5333E13D4276F4F1L, 0x4724B6B6C63AE762L), 0x5333E13D4276F4F1L, 0x4724B6B6C63AE762L, 0x5333E13D4276F4F1L, 0x4724B6B6C63AE762L);
                        int64_t *l_607 = (void*)0;
                        int64_t *l_608[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
                        int8_t l_611 = 0x25L;
                        int16_t **l_614 = (void*)0;
                        int16_t **l_615 = (void*)0;
                        int16_t **l_616 = &p_999->g_469;
                        int32_t l_629 = 0x16AD29C3L;
                        int i;
                        (*p_16) ^= (l_590[6] , (safe_sub_func_uint16_t_u_u((l_411.s3 = ((safe_add_func_uint64_t_u_u(p_15, (!(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 4))(9L, 0x5C84E44348CEAED2L, 0x12FD1C89DBC585D9L, 0x3E31D81CE0F820A4L)).even)).even , (l_591 = ((VECTOR(int64_t, 16))(0x4E60DBFC31EFD895L, ((VECTOR(int64_t, 4))(rotate(((VECTOR(int64_t, 4))(l_602.s2570)), ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(l_603.s5b78)), 0x724AD008EED286E1L, 0x478126402BD35B78L, 8L, 0x5692DE5D4B476BD7L)).even))))), ((VECTOR(int64_t, 4))(6L, 0x30F064211807D42BL, 0L, 0x5F74539646B3BD5EL)), 1L, 0x07EF7063B11B7264L, (safe_add_func_int32_t_s_s(((p_999->g_57 |= (l_590[6] = ((VECTOR(int64_t, 16))(l_606.s86a57e9bfb940a92)).s7)) < (((*p_999->g_469) = ((((0xBBL == (-1L)) && ((p_999->g_609 , l_566) == ((*l_569) = l_566))) | 4294967295UL) ^ p_999->g_56)) & l_610)), l_559.sb)), 0x62BA8CA99E80B20CL, l_542[2], 0x01A85BF1CB59F380L, (-1L))).s0))))) > p_999->g_558.w)), l_611)));
                        (*l_588) ^= (safe_mod_func_uint8_t_u_u((((((*l_616) = p_999->g_469) == l_617[2][5]) < (p_15 , ((VECTOR(int32_t, 4))(l_618.zywy)).y)) , ((65528UL && (safe_rshift_func_uint8_t_u_u(((safe_rshift_func_int16_t_s_s(((p_999->g_632[1] = (safe_add_func_int16_t_s_s(((VECTOR(int16_t, 4))((-7L), 0L, 1L, 0x3CD7L)).x, (safe_mul_func_int16_t_s_s(((safe_mod_func_int8_t_s_s((l_629 = p_999->g_295.f2), (l_584 || (-3L)))) || (((safe_mul_func_int16_t_s_s((*p_999->g_469), 0x7852L)) || p_15) && (*p_13))), (-9L)))))) != 0x696F7796D8958DBAL), 3)) & l_606.s3), 3))) > p_999->g_183.f1)), l_412.s8));
                    }
                    if (l_590[6])
                        continue;
                }
            }
            else
            { /* block id: 234 */
                VECTOR(int32_t, 16) l_633 = (VECTOR(int32_t, 16))(0x06ED2512L, (VECTOR(int32_t, 4))(0x06ED2512L, (VECTOR(int32_t, 2))(0x06ED2512L, 0x1F375763L), 0x1F375763L), 0x1F375763L, 0x06ED2512L, 0x1F375763L, (VECTOR(int32_t, 2))(0x06ED2512L, 0x1F375763L), (VECTOR(int32_t, 2))(0x06ED2512L, 0x1F375763L), 0x06ED2512L, 0x1F375763L, 0x06ED2512L, 0x1F375763L);
                uint16_t **l_634 = &l_480;
                uint16_t ***l_635 = &l_634;
                struct S0 *l_661[5][9][1] = {{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}}};
                int16_t **l_702 = &p_999->g_469;
                int32_t *l_703 = (void*)0;
                uint32_t l_724 = 0x3B382CACL;
                int32_t l_726 = (-4L);
                int32_t l_727 = 0L;
                VECTOR(int64_t, 16) l_745 = (VECTOR(int64_t, 16))(0x1C247D4AC144944AL, (VECTOR(int64_t, 4))(0x1C247D4AC144944AL, (VECTOR(int64_t, 2))(0x1C247D4AC144944AL, 1L), 1L), 1L, 0x1C247D4AC144944AL, 1L, (VECTOR(int64_t, 2))(0x1C247D4AC144944AL, 1L), (VECTOR(int64_t, 2))(0x1C247D4AC144944AL, 1L), 0x1C247D4AC144944AL, 1L, 0x1C247D4AC144944AL, 1L);
                uint8_t **l_752[8][2][5] = {{{&p_999->g_262,&p_999->g_262,&p_999->g_262,&l_536,&p_999->g_262},{&p_999->g_262,&p_999->g_262,&p_999->g_262,&l_536,&p_999->g_262}},{{&p_999->g_262,&p_999->g_262,&p_999->g_262,&l_536,&p_999->g_262},{&p_999->g_262,&p_999->g_262,&p_999->g_262,&l_536,&p_999->g_262}},{{&p_999->g_262,&p_999->g_262,&p_999->g_262,&l_536,&p_999->g_262},{&p_999->g_262,&p_999->g_262,&p_999->g_262,&l_536,&p_999->g_262}},{{&p_999->g_262,&p_999->g_262,&p_999->g_262,&l_536,&p_999->g_262},{&p_999->g_262,&p_999->g_262,&p_999->g_262,&l_536,&p_999->g_262}},{{&p_999->g_262,&p_999->g_262,&p_999->g_262,&l_536,&p_999->g_262},{&p_999->g_262,&p_999->g_262,&p_999->g_262,&l_536,&p_999->g_262}},{{&p_999->g_262,&p_999->g_262,&p_999->g_262,&l_536,&p_999->g_262},{&p_999->g_262,&p_999->g_262,&p_999->g_262,&l_536,&p_999->g_262}},{{&p_999->g_262,&p_999->g_262,&p_999->g_262,&l_536,&p_999->g_262},{&p_999->g_262,&p_999->g_262,&p_999->g_262,&l_536,&p_999->g_262}},{{&p_999->g_262,&p_999->g_262,&p_999->g_262,&l_536,&p_999->g_262},{&p_999->g_262,&p_999->g_262,&p_999->g_262,&l_536,&p_999->g_262}}};
                VECTOR(uint8_t, 2) l_759 = (VECTOR(uint8_t, 2))(1UL, 255UL);
                int i, j, k;
                (*p_13) ^= l_633.s0;
                (*l_635) = l_634;
                for (p_999->g_263 = 0; (p_999->g_263 >= 56); ++p_999->g_263)
                { /* block id: 239 */
                    int16_t ****l_682 = &p_999->g_680[6][0];
                    int32_t l_685 = (-1L);
                    struct S2 ***l_697 = &l_530;
                    int16_t **l_699 = (void*)0;
                    VECTOR(int16_t, 2) l_715 = (VECTOR(int16_t, 2))(0x3FBBL, (-8L));
                    int i;
                    if ((safe_rshift_func_uint16_t_u_s(0UL, 9)))
                    { /* block id: 240 */
                        int32_t *l_640 = &p_999->g_163[1];
                        struct S0 *l_660 = (void*)0;
                        int32_t *l_662 = &p_999->g_663;
                        (*p_999->g_641) = l_640;
                        (*p_13) = ((VECTOR(int32_t, 16))(rotate(((VECTOR(int32_t, 16))(1L, (((((((*l_662) = (safe_mul_func_int16_t_s_s(((safe_mul_func_uint16_t_u_u(((p_999->g_646 , (p_15 || (((VECTOR(int32_t, 8))(min(((VECTOR(int32_t, 2))(clz(((VECTOR(int32_t, 16))(l_647.wywzyywwyxxwyxyz)).s1e))).xxxyxxxy, ((VECTOR(int32_t, 8))(max(((VECTOR(int32_t, 16))((*p_16), 0x6B03AF50L, (l_584 && (safe_mul_func_int16_t_s_s((((safe_rshift_func_uint8_t_u_u((((p_15 || ((p_15 , (((p_999->g_259[2] = (safe_mul_func_int8_t_s_s(p_15, (safe_rshift_func_int8_t_s_s(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(clz(((VECTOR(int8_t, 2))(0x46L, (-2L))).xyxxxxxxxyxyyxxx))).s1052)).x, (safe_rshift_func_int8_t_s_s((0x5B3FL | (((VECTOR(int16_t, 2))(0x2EBDL, 1L)).hi & ((*p_999->g_469) = l_557.y))), p_999->g_74))))))) < p_999->g_56) , l_660)) == l_661[0][0][0])) || 0x5EL) >= l_583.s6), 2)) & l_557.y) ^ p_999->g_56), p_15))), l_610, 0x4EFEEE2DL, ((VECTOR(int32_t, 2))((-4L))), (-1L), (*p_16), 0x19913F06L, ((VECTOR(int32_t, 4))(1L)), 5L, 0x0E422897L)).hi, ((VECTOR(int32_t, 8))(0x29C244CAL)))))))).s3 >= 6UL))) || p_15), 0x5666L)) && p_15), l_583.s4))) , p_15) & p_15) < p_15) == 0xA1FAL) , 4L), ((VECTOR(int32_t, 8))(0x793E8D19L)), (-1L), (*p_13), 1L, (*l_640), (-7L), 0x66C6AE84L)), ((VECTOR(int32_t, 16))(0x312C5AE4L))))).s4;
                    }
                    else
                    { /* block id: 246 */
                        p_999->g_665 = p_999->g_664;
                        (*p_999->g_641) = (p_999->g_479.f1 , func_17(func_17(func_17(func_17(&l_408, p_999), p_999), p_999), p_999));
                    }
                    if ((safe_lshift_func_int16_t_s_s(((1L == (safe_add_func_uint32_t_u_u(((((void*)0 == &l_490[4][1][2]) >= (l_633.sb | (((((l_557.y != (safe_lshift_func_uint16_t_u_s(FAKE_DIVERGE(p_999->local_2_offset, get_local_id(2), 10), 15))) | ((safe_lshift_func_uint16_t_u_s((p_999->g_674 , ((VECTOR(uint16_t, 2))(l_675.s50)).odd), (safe_mod_func_uint16_t_u_u((safe_rshift_func_uint8_t_u_s((((((*l_682) = p_999->g_680[7][0]) != ((l_590[6] , (safe_mul_func_int8_t_s_s((l_685 = ((*l_582) == p_16)), 0x47L))) , &p_999->g_681)) < l_583.s3) != l_557.y), 0)), GROUP_DIVERGE(1, 1))))) , (-5L))) || p_999->g_686) < p_999->g_663) <= p_15))) & l_687), 3UL))) && 4294967295UL), (*p_999->g_469))))
                    { /* block id: 252 */
                        int32_t *l_688 = (void*)0;
                        int32_t *l_689 = &l_542[3];
                        int32_t *l_690[10][10][2] = {{{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0}},{{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0}},{{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0}},{{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0}},{{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0}},{{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0}},{{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0}},{{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0}},{{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0}},{{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0}}};
                        uint16_t l_692 = 65535UL;
                        int i, j, k;
                        --l_692;
                    }
                    else
                    { /* block id: 254 */
                        int16_t ***l_700 = (void*)0;
                        int16_t ***l_701 = &l_699;
                        int32_t **l_704 = (void*)0;
                        int32_t **l_705 = &p_999->g_467;
                        uint16_t ****l_712 = &l_710;
                        (*p_16) &= (**p_999->g_577);
                        (*l_705) = func_17((((p_15 != (p_15 && (p_999->g_29[0][4] &= (((VECTOR(int8_t, 4))(((VECTOR(int8_t, 4))(min(((VECTOR(int8_t, 2))(1L, 1L)).xxxy, (int8_t)(&l_530 == l_697)))))).y && (l_698[0][1] != (l_702 = ((*l_701) = l_699))))))) & ((VECTOR(int16_t, 2))(0x5928L, 0x61FAL)).odd) , (((VECTOR(uint32_t, 2))(4294967287UL, 0x3A6FF0D8L)).odd , l_703)), p_999);
                        (*p_999->g_467) &= ((*p_16) = (safe_add_func_uint8_t_u_u(((~(((((*l_712) = (((GROUP_DIVERGE(0, 1) > p_15) | l_526.x) , l_710)) == (void*)0) , ((void*)0 != &p_999->g_73[1][0][0])) | ((safe_rshift_func_uint16_t_u_s(FAKE_DIVERGE(p_999->local_0_offset, get_local_id(0), 10), ((VECTOR(int16_t, 4))(l_715.yyxy)).y)) != p_15))) , ((safe_sub_func_int16_t_s_s(((VECTOR(int16_t, 16))(clz(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 8))(max(((VECTOR(int16_t, 16))(p_999->g_718.yxxyyxyyxxxyyyxy)).odd, (int16_t)(safe_mod_func_int8_t_s_s(0x6CL, ((((VECTOR(int64_t, 2))(0x15D10335B5527089L, 0x5A88DBC79818F732L)).odd <= ((safe_rshift_func_int8_t_s_u((!((*p_999->g_294) , 1L)), p_15)) == p_999->g_73[1][0][0])) && l_542[1])))))))).s21)).yxxyyxxxyxxyxxxy))).sa, 65535UL)) || 0x52L)), p_15)));
                    }
                    if (l_584)
                        continue;
                    if (((p_15 , (safe_unary_minus_func_int64_t_s((((*p_13) = 0x2EAADA60L) , l_724)))) || ((*p_999->g_467) && 0x00BD426CL)))
                    { /* block id: 266 */
                        (*p_14) |= ((VECTOR(int32_t, 2))(1L, 0x2FAF9686L)).odd;
                        (*p_999->g_467) = (p_16 != l_703);
                    }
                    else
                    { /* block id: 269 */
                        int32_t *l_725[9];
                        VECTOR(int64_t, 16) l_744 = (VECTOR(int64_t, 16))(0x5F996DCC54B39DAFL, (VECTOR(int64_t, 4))(0x5F996DCC54B39DAFL, (VECTOR(int64_t, 2))(0x5F996DCC54B39DAFL, (-1L)), (-1L)), (-1L), 0x5F996DCC54B39DAFL, (-1L), (VECTOR(int64_t, 2))(0x5F996DCC54B39DAFL, (-1L)), (VECTOR(int64_t, 2))(0x5F996DCC54B39DAFL, (-1L)), 0x5F996DCC54B39DAFL, (-1L), 0x5F996DCC54B39DAFL, (-1L));
                        uint8_t ***l_751[9][6][4] = {{{&l_750,(void*)0,&l_750,&l_750},{&l_750,(void*)0,&l_750,&l_750},{&l_750,(void*)0,&l_750,&l_750},{&l_750,(void*)0,&l_750,&l_750},{&l_750,(void*)0,&l_750,&l_750},{&l_750,(void*)0,&l_750,&l_750}},{{&l_750,(void*)0,&l_750,&l_750},{&l_750,(void*)0,&l_750,&l_750},{&l_750,(void*)0,&l_750,&l_750},{&l_750,(void*)0,&l_750,&l_750},{&l_750,(void*)0,&l_750,&l_750},{&l_750,(void*)0,&l_750,&l_750}},{{&l_750,(void*)0,&l_750,&l_750},{&l_750,(void*)0,&l_750,&l_750},{&l_750,(void*)0,&l_750,&l_750},{&l_750,(void*)0,&l_750,&l_750},{&l_750,(void*)0,&l_750,&l_750},{&l_750,(void*)0,&l_750,&l_750}},{{&l_750,(void*)0,&l_750,&l_750},{&l_750,(void*)0,&l_750,&l_750},{&l_750,(void*)0,&l_750,&l_750},{&l_750,(void*)0,&l_750,&l_750},{&l_750,(void*)0,&l_750,&l_750},{&l_750,(void*)0,&l_750,&l_750}},{{&l_750,(void*)0,&l_750,&l_750},{&l_750,(void*)0,&l_750,&l_750},{&l_750,(void*)0,&l_750,&l_750},{&l_750,(void*)0,&l_750,&l_750},{&l_750,(void*)0,&l_750,&l_750},{&l_750,(void*)0,&l_750,&l_750}},{{&l_750,(void*)0,&l_750,&l_750},{&l_750,(void*)0,&l_750,&l_750},{&l_750,(void*)0,&l_750,&l_750},{&l_750,(void*)0,&l_750,&l_750},{&l_750,(void*)0,&l_750,&l_750},{&l_750,(void*)0,&l_750,&l_750}},{{&l_750,(void*)0,&l_750,&l_750},{&l_750,(void*)0,&l_750,&l_750},{&l_750,(void*)0,&l_750,&l_750},{&l_750,(void*)0,&l_750,&l_750},{&l_750,(void*)0,&l_750,&l_750},{&l_750,(void*)0,&l_750,&l_750}},{{&l_750,(void*)0,&l_750,&l_750},{&l_750,(void*)0,&l_750,&l_750},{&l_750,(void*)0,&l_750,&l_750},{&l_750,(void*)0,&l_750,&l_750},{&l_750,(void*)0,&l_750,&l_750},{&l_750,(void*)0,&l_750,&l_750}},{{&l_750,(void*)0,&l_750,&l_750},{&l_750,(void*)0,&l_750,&l_750},{&l_750,(void*)0,&l_750,&l_750},{&l_750,(void*)0,&l_750,&l_750},{&l_750,(void*)0,&l_750,&l_750},{&l_750,(void*)0,&l_750,&l_750}}};
                        int32_t **l_754 = &l_703;
                        int i, j, k;
                        for (i = 0; i < 9; i++)
                            l_725[i] = &l_590[6];
                        ++l_728;
                        (*l_754) = func_53((safe_mod_func_int32_t_s_s(((safe_sub_func_int8_t_s_s((((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))(l_735.s02)).yyxyyyxy)).s0 != 0x7545D35A581E3CAFL), 0L)) & (safe_add_func_uint16_t_u_u(((((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 16))(0UL, ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 8))(hadd(((VECTOR(uint32_t, 8))(safe_mad24_func_uint32_t_u_u_u(VECTOR(uint32_t, 8),((VECTOR(uint32_t, 16))(safe_mul24_func_uint32_t_u_u(VECTOR(uint32_t, 16),((VECTOR(uint32_t, 4))((((*p_999->g_573) ^ (((VECTOR(int64_t, 4))(((VECTOR(int64_t, 4))((safe_rshift_func_uint8_t_u_s((safe_add_func_uint8_t_u_u((p_15 |= (FAKE_DIVERGE(p_999->group_1_offset, get_group_id(1), 10) & ((((**p_999->g_681) , (((VECTOR(int64_t, 8))(max(((VECTOR(int64_t, 4))(l_744.sc877)).wyyyzxzy, ((VECTOR(int64_t, 16))(l_745.sa4a3b55505a3987f)).lo))).s2 || (safe_mul_func_uint8_t_u_u((l_490[4][5][3] == (safe_rshift_func_uint16_t_u_s(l_715.y, 4))), ((VECTOR(uint8_t, 2))(hadd(((VECTOR(uint8_t, 2))(1UL, 1UL)), ((VECTOR(uint8_t, 16))(((((((l_752[0][1][1] = l_750) != l_750) , 65529UL) > (-1L)) | (*p_999->g_467)) , 0x82L), 5UL, l_753, ((VECTOR(uint8_t, 8))(254UL)), ((VECTOR(uint8_t, 2))(251UL)), ((VECTOR(uint8_t, 2))(0x07L)), 0x2EL)).se5))).odd)))) ^ p_999->g_73[1][0][0]) | 4L))), p_999->g_448[5])), l_675.s1)), ((VECTOR(int64_t, 2))(1L)), (-3L))))).z < p_999->g_263)) & p_999->g_558.x), p_15, 0x304796B0L, 4294967286UL)).xywxzyyxxywywzyw, ((VECTOR(uint32_t, 16))(4294967295UL))))).hi, ((VECTOR(uint32_t, 8))(0xC308634BL)), ((VECTOR(uint32_t, 8))(0x2605F783L))))), ((VECTOR(uint32_t, 8))(0x434577D3L))))).lo)))), ((VECTOR(uint32_t, 4))(0x6C6B93C3L)), 0xDE5526D5L, 0x8EDFAF0CL, 0x02683C35L, l_715.y, ((VECTOR(uint32_t, 2))(4294967294UL)), 4294967289UL)).lo)))).s7 > p_999->g_125.f1) | 255UL), p_999->g_632[2]))), l_675.s6)), p_999);
                    }
                }
                p_999->g_246.w |= (((safe_sub_func_int32_t_s_s(l_590[6], p_15)) , (safe_lshift_func_uint8_t_u_s(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(l_759.xyxx)).lo)).hi, ((0x17035B2626660E3DL < p_15) && p_15)))) || ((VECTOR(int8_t, 4))(max(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 8))(l_760.zywzwzyy)))))).s3661317467124217)).s72)), (safe_sub_func_int64_t_s_s(p_999->g_407.f0.f0, (((VECTOR(int16_t, 8))(clz(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(hadd(((VECTOR(int16_t, 2))(rotate(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 4))(min(((VECTOR(int16_t, 16))((safe_add_func_int16_t_s_s(((VECTOR(int16_t, 2))(rhadd(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(p_999->g_765.xy)).yyyx)).hi, ((VECTOR(int16_t, 2))(l_766.sff))))).lo, ((((VECTOR(uint16_t, 8))((safe_div_func_uint32_t_u_u((0x3C60L & ((p_999->g_125.f0 <= (1UL == 0xF121EAF8L)) > 4294967295UL)), p_15)), p_15, 65533UL, 0x8F3FL, p_999->g_448[4], ((VECTOR(uint16_t, 2))(0xC7C6L)), 0x8A41L)).s5 , p_15) != (*p_16)))), (*p_999->g_469), p_15, 0L, ((VECTOR(int16_t, 2))(0L)), 0x336FL, ((VECTOR(int16_t, 8))(1L)), (-8L))).s0695, (int16_t)l_633.s9))))).even, ((VECTOR(int16_t, 2))(0L))))).xyyxxxxy, ((VECTOR(int16_t, 8))((-1L)))))).odd)).xxwxywwz))))).s4 == p_15))), p_15, 0x0AL, 0x32L, 0L, 0x53L)).even, ((VECTOR(int8_t, 4))((-5L)))))).y);
            }
            --l_772;
        }
        l_783++;
        if (((**l_406) , ((safe_rshift_func_int8_t_s_s((+((safe_sub_func_int64_t_s_s((safe_mod_func_int32_t_s_s((p_999->g_663 | ((p_999->g_674.f4.f2 != (*l_777)) > ((l_792 == (((l_411.s5 = (((((*l_797) = p_999->g_793[0][3][0]) != (l_798 = &p_999->g_794[2][8])) & (((!(safe_sub_func_int16_t_s_s((*l_779), 9L))) , l_772) ^ GROUP_DIVERGE(2, 1))) , 0UL)) == FAKE_DIVERGE(p_999->global_0_offset, get_global_id(0), 10)) , (*p_999->g_796))) , p_999->g_632[3]))), p_999->g_415.s6)), 18446744073709551615UL)) == 0x65L)), 2)) , l_490[1][3][2])))
        { /* block id: 284 */
            (*p_999->g_801) = (*p_999->g_641);
            (*p_999->g_803) = l_802;
        }
        else
        { /* block id: 287 */
            uint32_t l_815 = 1UL;
            for (l_753 = 10; (l_753 >= (-21)); --l_753)
            { /* block id: 290 */
                VECTOR(int32_t, 4) l_807 = (VECTOR(int32_t, 4))(5L, (VECTOR(int32_t, 2))(5L, 0x7DA1988CL), 0x7DA1988CL);
                int32_t *l_811 = &p_999->g_663;
                int i;
                if (((VECTOR(int32_t, 2))(l_807.xy)).even)
                { /* block id: 291 */
                    (*p_999->g_808) = (*p_999->g_803);
                    if ((*p_16))
                        break;
                    if ((*p_14))
                        break;
                }
                else
                { /* block id: 295 */
                    int32_t *l_814 = &p_999->g_663;
                    for (l_728 = 0; (l_728 < 15); l_728 = safe_add_func_uint64_t_u_u(l_728, 2))
                    { /* block id: 298 */
                        int32_t **l_812[8][4][7] = {{{&l_811,&l_811,&l_811,&l_811,(void*)0,&l_811,&l_811},{&l_811,&l_811,&l_811,&l_811,(void*)0,&l_811,&l_811},{&l_811,&l_811,&l_811,&l_811,(void*)0,&l_811,&l_811},{&l_811,&l_811,&l_811,&l_811,(void*)0,&l_811,&l_811}},{{&l_811,&l_811,&l_811,&l_811,(void*)0,&l_811,&l_811},{&l_811,&l_811,&l_811,&l_811,(void*)0,&l_811,&l_811},{&l_811,&l_811,&l_811,&l_811,(void*)0,&l_811,&l_811},{&l_811,&l_811,&l_811,&l_811,(void*)0,&l_811,&l_811}},{{&l_811,&l_811,&l_811,&l_811,(void*)0,&l_811,&l_811},{&l_811,&l_811,&l_811,&l_811,(void*)0,&l_811,&l_811},{&l_811,&l_811,&l_811,&l_811,(void*)0,&l_811,&l_811},{&l_811,&l_811,&l_811,&l_811,(void*)0,&l_811,&l_811}},{{&l_811,&l_811,&l_811,&l_811,(void*)0,&l_811,&l_811},{&l_811,&l_811,&l_811,&l_811,(void*)0,&l_811,&l_811},{&l_811,&l_811,&l_811,&l_811,(void*)0,&l_811,&l_811},{&l_811,&l_811,&l_811,&l_811,(void*)0,&l_811,&l_811}},{{&l_811,&l_811,&l_811,&l_811,(void*)0,&l_811,&l_811},{&l_811,&l_811,&l_811,&l_811,(void*)0,&l_811,&l_811},{&l_811,&l_811,&l_811,&l_811,(void*)0,&l_811,&l_811},{&l_811,&l_811,&l_811,&l_811,(void*)0,&l_811,&l_811}},{{&l_811,&l_811,&l_811,&l_811,(void*)0,&l_811,&l_811},{&l_811,&l_811,&l_811,&l_811,(void*)0,&l_811,&l_811},{&l_811,&l_811,&l_811,&l_811,(void*)0,&l_811,&l_811},{&l_811,&l_811,&l_811,&l_811,(void*)0,&l_811,&l_811}},{{&l_811,&l_811,&l_811,&l_811,(void*)0,&l_811,&l_811},{&l_811,&l_811,&l_811,&l_811,(void*)0,&l_811,&l_811},{&l_811,&l_811,&l_811,&l_811,(void*)0,&l_811,&l_811},{&l_811,&l_811,&l_811,&l_811,(void*)0,&l_811,&l_811}},{{&l_811,&l_811,&l_811,&l_811,(void*)0,&l_811,&l_811},{&l_811,&l_811,&l_811,&l_811,(void*)0,&l_811,&l_811},{&l_811,&l_811,&l_811,&l_811,(void*)0,&l_811,&l_811},{&l_811,&l_811,&l_811,&l_811,(void*)0,&l_811,&l_811}}};
                        int i, j, k;
                        (*p_16) ^= (((+((l_813 = l_811) != (l_814 = func_17((*p_999->g_641), p_999)))) , (void*)0) == l_617[2][5]);
                        l_815--;
                    }
                }
            }
        }
    }
    else
    { /* block id: 307 */
        uint8_t *l_819 = (void*)0;
        uint8_t *l_820 = &p_999->g_479.f1;
        int8_t *l_821 = &p_999->g_259[2];
        uint32_t *l_822 = &p_999->g_75;
        uint32_t *l_824 = &p_999->g_75;
        uint32_t **l_823 = &l_824;
        int32_t l_826[10][6][3] = {{{0x005DEE33L,0x005DEE33L,0x57FD8740L},{0x005DEE33L,0x005DEE33L,0x57FD8740L},{0x005DEE33L,0x005DEE33L,0x57FD8740L},{0x005DEE33L,0x005DEE33L,0x57FD8740L},{0x005DEE33L,0x005DEE33L,0x57FD8740L},{0x005DEE33L,0x005DEE33L,0x57FD8740L}},{{0x005DEE33L,0x005DEE33L,0x57FD8740L},{0x005DEE33L,0x005DEE33L,0x57FD8740L},{0x005DEE33L,0x005DEE33L,0x57FD8740L},{0x005DEE33L,0x005DEE33L,0x57FD8740L},{0x005DEE33L,0x005DEE33L,0x57FD8740L},{0x005DEE33L,0x005DEE33L,0x57FD8740L}},{{0x005DEE33L,0x005DEE33L,0x57FD8740L},{0x005DEE33L,0x005DEE33L,0x57FD8740L},{0x005DEE33L,0x005DEE33L,0x57FD8740L},{0x005DEE33L,0x005DEE33L,0x57FD8740L},{0x005DEE33L,0x005DEE33L,0x57FD8740L},{0x005DEE33L,0x005DEE33L,0x57FD8740L}},{{0x005DEE33L,0x005DEE33L,0x57FD8740L},{0x005DEE33L,0x005DEE33L,0x57FD8740L},{0x005DEE33L,0x005DEE33L,0x57FD8740L},{0x005DEE33L,0x005DEE33L,0x57FD8740L},{0x005DEE33L,0x005DEE33L,0x57FD8740L},{0x005DEE33L,0x005DEE33L,0x57FD8740L}},{{0x005DEE33L,0x005DEE33L,0x57FD8740L},{0x005DEE33L,0x005DEE33L,0x57FD8740L},{0x005DEE33L,0x005DEE33L,0x57FD8740L},{0x005DEE33L,0x005DEE33L,0x57FD8740L},{0x005DEE33L,0x005DEE33L,0x57FD8740L},{0x005DEE33L,0x005DEE33L,0x57FD8740L}},{{0x005DEE33L,0x005DEE33L,0x57FD8740L},{0x005DEE33L,0x005DEE33L,0x57FD8740L},{0x005DEE33L,0x005DEE33L,0x57FD8740L},{0x005DEE33L,0x005DEE33L,0x57FD8740L},{0x005DEE33L,0x005DEE33L,0x57FD8740L},{0x005DEE33L,0x005DEE33L,0x57FD8740L}},{{0x005DEE33L,0x005DEE33L,0x57FD8740L},{0x005DEE33L,0x005DEE33L,0x57FD8740L},{0x005DEE33L,0x005DEE33L,0x57FD8740L},{0x005DEE33L,0x005DEE33L,0x57FD8740L},{0x005DEE33L,0x005DEE33L,0x57FD8740L},{0x005DEE33L,0x005DEE33L,0x57FD8740L}},{{0x005DEE33L,0x005DEE33L,0x57FD8740L},{0x005DEE33L,0x005DEE33L,0x57FD8740L},{0x005DEE33L,0x005DEE33L,0x57FD8740L},{0x005DEE33L,0x005DEE33L,0x57FD8740L},{0x005DEE33L,0x005DEE33L,0x57FD8740L},{0x005DEE33L,0x005DEE33L,0x57FD8740L}},{{0x005DEE33L,0x005DEE33L,0x57FD8740L},{0x005DEE33L,0x005DEE33L,0x57FD8740L},{0x005DEE33L,0x005DEE33L,0x57FD8740L},{0x005DEE33L,0x005DEE33L,0x57FD8740L},{0x005DEE33L,0x005DEE33L,0x57FD8740L},{0x005DEE33L,0x005DEE33L,0x57FD8740L}},{{0x005DEE33L,0x005DEE33L,0x57FD8740L},{0x005DEE33L,0x005DEE33L,0x57FD8740L},{0x005DEE33L,0x005DEE33L,0x57FD8740L},{0x005DEE33L,0x005DEE33L,0x57FD8740L},{0x005DEE33L,0x005DEE33L,0x57FD8740L},{0x005DEE33L,0x005DEE33L,0x57FD8740L}}};
        int16_t ***l_827[2][7] = {{&p_999->g_681,&p_999->g_681,&p_999->g_681,&p_999->g_681,&p_999->g_681,&p_999->g_681,&p_999->g_681},{&p_999->g_681,&p_999->g_681,&p_999->g_681,&p_999->g_681,&p_999->g_681,&p_999->g_681,&p_999->g_681}};
        uint16_t *****l_852[10] = {&p_999->g_793[0][3][0],&p_999->g_793[0][3][0],&p_999->g_793[0][3][0],&p_999->g_793[0][3][0],&p_999->g_793[0][3][0],&p_999->g_793[0][3][0],&p_999->g_793[0][3][0],&p_999->g_793[0][3][0],&p_999->g_793[0][3][0],&p_999->g_793[0][3][0]};
        uint8_t l_869 = 248UL;
        uint8_t **l_897 = &l_820;
        uint8_t ***l_896 = &l_897;
        int32_t **l_902 = &p_999->g_467;
        int i, j, k;
        if ((((l_412.s5 &= ((((*l_409) = (void*)0) != (p_999->g_818 = &p_999->g_75)) && (((*l_820) |= p_999->g_674.f1) ^ ((*l_821) = l_490[2][1][1])))) < ((l_822 = (void*)0) == ((*l_823) = p_13))) , l_760.y))
        { /* block id: 315 */
            uint64_t *l_828 = &p_999->g_150.f0;
            int32_t *l_839[9][10][2] = {{{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0}},{{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0}},{{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0}},{{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0}},{{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0}},{{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0}},{{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0}},{{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0}},{{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0},{&p_999->g_317[4][7].f2,(void*)0}}};
            uint16_t ***l_843 = &l_711;
            int64_t *l_851[4][1][3] = {{{&p_999->g_57,&p_999->g_57,(void*)0}},{{&p_999->g_57,&p_999->g_57,(void*)0}},{{&p_999->g_57,&p_999->g_57,(void*)0}},{{&p_999->g_57,&p_999->g_57,(void*)0}}};
            int i, j, k;
            if ((((*p_999->g_795) != (void*)0) >= ((((0x6BL || (p_999->g_825 , l_826[5][4][1])) | (&l_698[1][1] == l_827[1][6])) != (++(*l_828))) && 0x1673L)))
            { /* block id: 317 */
                int32_t **l_833 = &p_999->g_467;
                for (p_999->g_75 = 16; (p_999->g_75 < 24); ++p_999->g_75)
                { /* block id: 320 */
                    (*p_14) |= l_490[0][0][0];
                }
                (*l_833) = p_16;
                (*p_13) = (~l_408);
                for (p_999->g_150.f0 = (-12); (p_999->g_150.f0 == 38); ++p_999->g_150.f0)
                { /* block id: 327 */
                    return (**l_833);
                }
            }
            else
            { /* block id: 330 */
                int32_t *l_836 = &p_999->g_251;
                (*l_836) ^= ((*p_13) |= ((*p_14) ^= (&l_772 == p_999->g_573)));
                for (p_999->g_479.f2 = 0; (p_999->g_479.f2 != (-15)); p_999->g_479.f2--)
                { /* block id: 336 */
                    return (*p_13);
                }
                l_839[6][7][1] = p_16;
            }
            (*p_16) ^= (safe_sub_func_uint16_t_u_u(((p_999->g_842 , (l_826[5][4][1] , l_843)) != ((safe_div_func_int16_t_s_s((((VECTOR(int64_t, 8))(1L, 0x042EE697A83E67B7L, ((VECTOR(int64_t, 2))(0x6BDBA0615DFBCFCFL, 0x728CF7E98245FB12L)), (&p_999->g_793[1][1][0] == (((l_411.s1 = (safe_sub_func_uint64_t_u_u((0x61621B35116BFED2L < (safe_mul_func_uint16_t_u_u(0x2B2EL, (((&p_999->g_794[2][8] == (void*)0) ^ 5UL) & l_850)))), p_15))) ^ p_15) , l_852[8])), ((VECTOR(int64_t, 2))((-1L))), 0x7D202404D6A29386L)).s0 ^ FAKE_DIVERGE(p_999->local_0_offset, get_local_id(0), 10)), (-1L))) , l_843)), 0x1B5EL));
        }
        else
        { /* block id: 343 */
            int32_t *l_853 = &p_999->g_295.f2;
            int32_t *l_854 = &p_999->g_163[5];
            int32_t *l_855 = (void*)0;
            int32_t *l_856 = &p_999->g_479.f2;
            int32_t *l_857 = &l_408;
            int32_t *l_858 = &l_490[2][1][1];
            int32_t l_859 = 0L;
            int32_t *l_860 = (void*)0;
            int32_t *l_861 = (void*)0;
            int32_t *l_862 = &p_999->g_407.f0.f2;
            int32_t *l_863 = &l_552;
            int32_t *l_864 = &l_408;
            int32_t *l_865 = &p_999->g_448[4];
            int32_t *l_866 = &p_999->g_407.f0.f2;
            int32_t *l_867 = (void*)0;
            int32_t *l_868[1][7][10] = {{{&p_999->g_317[4][7].f2,&p_999->g_317[4][7].f2,&p_999->g_479.f2,&p_999->g_317[4][7].f2,&p_999->g_317[4][7].f2,&p_999->g_317[4][7].f2,&p_999->g_317[4][7].f2,&p_999->g_479.f2,&p_999->g_317[4][7].f2,&p_999->g_317[4][7].f2},{&p_999->g_317[4][7].f2,&p_999->g_317[4][7].f2,&p_999->g_479.f2,&p_999->g_317[4][7].f2,&p_999->g_317[4][7].f2,&p_999->g_317[4][7].f2,&p_999->g_317[4][7].f2,&p_999->g_479.f2,&p_999->g_317[4][7].f2,&p_999->g_317[4][7].f2},{&p_999->g_317[4][7].f2,&p_999->g_317[4][7].f2,&p_999->g_479.f2,&p_999->g_317[4][7].f2,&p_999->g_317[4][7].f2,&p_999->g_317[4][7].f2,&p_999->g_317[4][7].f2,&p_999->g_479.f2,&p_999->g_317[4][7].f2,&p_999->g_317[4][7].f2},{&p_999->g_317[4][7].f2,&p_999->g_317[4][7].f2,&p_999->g_479.f2,&p_999->g_317[4][7].f2,&p_999->g_317[4][7].f2,&p_999->g_317[4][7].f2,&p_999->g_317[4][7].f2,&p_999->g_479.f2,&p_999->g_317[4][7].f2,&p_999->g_317[4][7].f2},{&p_999->g_317[4][7].f2,&p_999->g_317[4][7].f2,&p_999->g_479.f2,&p_999->g_317[4][7].f2,&p_999->g_317[4][7].f2,&p_999->g_317[4][7].f2,&p_999->g_317[4][7].f2,&p_999->g_479.f2,&p_999->g_317[4][7].f2,&p_999->g_317[4][7].f2},{&p_999->g_317[4][7].f2,&p_999->g_317[4][7].f2,&p_999->g_479.f2,&p_999->g_317[4][7].f2,&p_999->g_317[4][7].f2,&p_999->g_317[4][7].f2,&p_999->g_317[4][7].f2,&p_999->g_479.f2,&p_999->g_317[4][7].f2,&p_999->g_317[4][7].f2},{&p_999->g_317[4][7].f2,&p_999->g_317[4][7].f2,&p_999->g_479.f2,&p_999->g_317[4][7].f2,&p_999->g_317[4][7].f2,&p_999->g_317[4][7].f2,&p_999->g_317[4][7].f2,&p_999->g_479.f2,&p_999->g_317[4][7].f2,&p_999->g_317[4][7].f2}}};
            uint64_t *l_899[8] = {&p_999->g_129.f0,&l_772,&p_999->g_129.f0,&p_999->g_129.f0,&l_772,&p_999->g_129.f0,&p_999->g_129.f0,&l_772};
            int i, j, k;
            l_869--;
            l_872--;
            (*l_854) = (!((safe_div_func_int32_t_s_s((safe_div_func_int32_t_s_s((p_15 || ((*p_999->g_818) = ((safe_add_func_int8_t_s_s(((safe_rshift_func_uint16_t_u_s(((**p_999->g_795) = p_15), (safe_add_func_int16_t_s_s((safe_mod_func_int8_t_s_s(((safe_add_func_int32_t_s_s((safe_div_func_uint32_t_u_u(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 16))(p_999->g_891.s5261435163406335)))).hi)).s0033766750311435)).s1, ((safe_add_func_int64_t_s_s(((~0L) >= (safe_add_func_int8_t_s_s(((l_896 = (void*)0) != l_898), (((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 8))(1UL, 0x76L, 9UL, p_15, (0x16EF44D6L <= (((*p_999->g_573)--) == ((p_15 , ((+(p_15 != p_15)) | (*l_856))) == 0L))), ((VECTOR(uint8_t, 2))(0x57L)), 255UL)))).s3747262351660424)).se < p_15)))), p_15)) && 1UL))), 0L)) , l_826[5][4][1]), p_15)), p_15)))) ^ p_999->g_448[3]), 8UL)) , GROUP_DIVERGE(1, 1)))), (*l_863))), p_15)) | GROUP_DIVERGE(2, 1)));
            (*l_863) &= l_869;
        }
        (*l_902) = p_16;
    }
    return (*p_14);
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes: p_999->g_294
 */
int32_t * func_17(int32_t * p_18, struct S4 * p_999)
{ /* block id: 134 */
    struct S0 *l_399 = &p_999->g_317[4][7];
    struct S0 **l_400 = (void*)0;
    struct S0 **l_401[3][7] = {{(void*)0,(void*)0,&p_999->g_294,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&p_999->g_294,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&p_999->g_294,(void*)0,(void*)0,(void*)0,(void*)0}};
    int i, j;
    p_999->g_294 = l_399;
    return &p_999->g_163[7];
}


/* ------------------------------------------ */
/* 
 * reads : p_999->g_75 p_999->g_74 p_999->g_58 p_999->g_57 p_999->g_144 p_999->g_149 p_999->g_56 p_999->g_127.f1 p_999->g_127.f0 p_999->g_73 p_999->g_125.f1 p_999->g_188 p_999->g_125.f0 p_999->g_150.f1 p_999->g_126.f1 p_999->g_129.f1 p_999->g_183.f0 p_999->g_251 p_999->g_259 p_999->g_163 p_999->g_126.f0 p_999->g_262 p_999->g_183.f1 p_999->g_263 p_999->g_308
 * writes: p_999->g_56 p_999->g_73 p_999->g_75 p_999->g_58 p_999->g_125.f1 p_999->g_126.f1 p_999->g_129.f0 p_999->g_150.f1 p_999->g_183.f0 p_999->g_129.f1 p_999->g_251 p_999->g_262 p_999->g_57 p_999->g_74 p_999->g_163 p_999->g_183.f1 p_999->g_294 p_999->g_363 p_999->g_364
 */
int16_t  func_32(int8_t * p_33, int32_t  p_34, int32_t * p_35, int8_t  p_36, struct S4 * p_999)
{ /* block id: 21 */
    VECTOR(int32_t, 4) l_85 = (VECTOR(int32_t, 4))(0x3D9EB36BL, (VECTOR(int32_t, 2))(0x3D9EB36BL, 1L), 1L);
    VECTOR(uint8_t, 2) l_90 = (VECTOR(uint8_t, 2))(0x58L, 1UL);
    VECTOR(uint32_t, 8) l_91 = (VECTOR(uint32_t, 8))(0x0280C152L, (VECTOR(uint32_t, 4))(0x0280C152L, (VECTOR(uint32_t, 2))(0x0280C152L, 4294967286UL), 4294967286UL), 4294967286UL, 0x0280C152L, 4294967286UL);
    uint32_t *l_92[4];
    int8_t *l_93 = &p_999->g_73[0][0][0];
    VECTOR(uint64_t, 16) l_96 = (VECTOR(uint64_t, 16))(0x48C7375A68AA934BL, (VECTOR(uint64_t, 4))(0x48C7375A68AA934BL, (VECTOR(uint64_t, 2))(0x48C7375A68AA934BL, 18446744073709551611UL), 18446744073709551611UL), 18446744073709551611UL, 0x48C7375A68AA934BL, 18446744073709551611UL, (VECTOR(uint64_t, 2))(0x48C7375A68AA934BL, 18446744073709551611UL), (VECTOR(uint64_t, 2))(0x48C7375A68AA934BL, 18446744073709551611UL), 0x48C7375A68AA934BL, 18446744073709551611UL, 0x48C7375A68AA934BL, 18446744073709551611UL);
    VECTOR(uint64_t, 4) l_97 = (VECTOR(uint64_t, 4))(0xB320E232A7A6E092L, (VECTOR(uint64_t, 2))(0xB320E232A7A6E092L, 0xF04FC86A5B6CEA37L), 0xF04FC86A5B6CEA37L);
    VECTOR(uint64_t, 2) l_98 = (VECTOR(uint64_t, 2))(1UL, 0x05C4B4462018547EL);
    VECTOR(uint64_t, 16) l_99 = (VECTOR(uint64_t, 16))(0xBAE7F845CBE7429DL, (VECTOR(uint64_t, 4))(0xBAE7F845CBE7429DL, (VECTOR(uint64_t, 2))(0xBAE7F845CBE7429DL, 0x668BEEE5F8135449L), 0x668BEEE5F8135449L), 0x668BEEE5F8135449L, 0xBAE7F845CBE7429DL, 0x668BEEE5F8135449L, (VECTOR(uint64_t, 2))(0xBAE7F845CBE7429DL, 0x668BEEE5F8135449L), (VECTOR(uint64_t, 2))(0xBAE7F845CBE7429DL, 0x668BEEE5F8135449L), 0xBAE7F845CBE7429DL, 0x668BEEE5F8135449L, 0xBAE7F845CBE7429DL, 0x668BEEE5F8135449L);
    int8_t l_114[3][1][2] = {{{0x2CL,0x10L}},{{0x2CL,0x10L}},{{0x2CL,0x10L}}};
    int8_t *l_115 = &l_114[2][0][1];
    struct S2 *l_124[4][10] = {{&p_999->g_127[6][1][8],(void*)0,(void*)0,&p_999->g_127[6][1][8],&p_999->g_127[6][1][8],(void*)0,(void*)0,&p_999->g_127[6][1][8],&p_999->g_127[6][1][8],(void*)0},{&p_999->g_127[6][1][8],(void*)0,(void*)0,&p_999->g_127[6][1][8],&p_999->g_127[6][1][8],(void*)0,(void*)0,&p_999->g_127[6][1][8],&p_999->g_127[6][1][8],(void*)0},{&p_999->g_127[6][1][8],(void*)0,(void*)0,&p_999->g_127[6][1][8],&p_999->g_127[6][1][8],(void*)0,(void*)0,&p_999->g_127[6][1][8],&p_999->g_127[6][1][8],(void*)0},{&p_999->g_127[6][1][8],(void*)0,(void*)0,&p_999->g_127[6][1][8],&p_999->g_127[6][1][8],(void*)0,(void*)0,&p_999->g_127[6][1][8],&p_999->g_127[6][1][8],(void*)0}};
    uint64_t l_166 = 0x9771C00C6816663CL;
    uint32_t l_201 = 0x93167161L;
    int32_t l_346 = (-1L);
    int i, j, k;
    for (i = 0; i < 4; i++)
        l_92[i] = (void*)0;
    if ((safe_lshift_func_uint16_t_u_s((safe_sub_func_uint16_t_u_u((safe_lshift_func_int16_t_s_u((((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 4))(add_sat(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(l_85.xxxxyzzwyxzyzxzz)).se736)).yzwxzxxx)).s2104624230377776)).s953c)), 0x2AC9FE4BL, (safe_mod_func_uint32_t_u_u((safe_sub_func_int8_t_s_s(((*l_93) = (((((VECTOR(uint8_t, 2))(l_90.xx)).hi >= 2L) , (l_85.w = ((VECTOR(uint32_t, 4))(l_91.s4457)).y)) | ((*p_35) = l_90.x))), (safe_mod_func_int8_t_s_s(((*l_115) = ((((VECTOR(uint64_t, 16))(rotate(((VECTOR(uint64_t, 4))(l_96.s9cfb)).xzzxwwyyyxyywywy, ((VECTOR(uint64_t, 4))(rhadd(((VECTOR(uint64_t, 2))(0x86393687EAF66504L, 0xC135D3F9A7C9710AL)).yyxy, ((VECTOR(uint64_t, 16))(mul_hi(((VECTOR(uint64_t, 16))(l_97.xyxzyxwxzxxzxywz)), ((VECTOR(uint64_t, 16))(sub_sat(((VECTOR(uint64_t, 2))(l_98.xy)).yyyyyxyyxyxyyxxy, ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(l_99.s4e20)), 18446744073709551613UL, p_999->g_75, 8UL, 0xC0EDBB19D5435D57L)).s7104467542166324)))))).s78e5))).xywwzxzxzzywyzyz))).sb , (p_999->g_74 , (safe_rshift_func_uint16_t_u_u((p_34 ^ ((VECTOR(uint64_t, 16))(safe_clamp_func(VECTOR(uint64_t, 16),VECTOR(uint64_t, 16),((VECTOR(uint64_t, 8))((safe_mul_func_uint8_t_u_u((safe_div_func_uint64_t_u_u(((0xD0EF1DBDL & ((GROUP_DIVERGE(2, 1) == (safe_mul_func_int16_t_s_s(((VECTOR(int16_t, 8))(add_sat(((VECTOR(int16_t, 4))((-1L), 0x5FCDL, 0x219BL, 0L)).wzwwxwwy, ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 8))((safe_mul_func_uint16_t_u_u((((safe_lshift_func_uint16_t_u_u((l_90.y > l_91.s6), 14)) || p_999->g_58) , 0x1112L), 0x74F0L)), 0x31AEL, l_98.y, 0L, ((VECTOR(int16_t, 4))((-6L)))))))))).s5, p_36))) != l_98.y)) && p_36), l_114[2][0][1])), p_999->g_75)), ((VECTOR(uint64_t, 4))(2UL)), 0xB2AB38CAC1D9AC4AL, 0x3F48115F6FB73433L, 18446744073709551615UL)).s3252252154021413, ((VECTOR(uint64_t, 16))(18446744073709551608UL)), ((VECTOR(uint64_t, 16))(18446744073709551615UL))))).sc), 11)))) <= FAKE_DIVERGE(p_999->global_2_offset, get_global_id(2), 10))), p_999->g_75)))), l_98.y)), 0x10086F93L, 0x3A5FEA88L)).lo, ((VECTOR(int32_t, 4))(1L))))), ((VECTOR(int32_t, 4))(0L))))).even)), (-1L), 0L, (-9L), 0L, 1L, (-1L))).lo)).y == FAKE_DIVERGE(p_999->group_1_offset, get_group_id(1), 10)), 11)), p_999->g_57)), p_999->g_58)))
    { /* block id: 26 */
        uint16_t l_148 = 0x6FCEL;
        int32_t l_155 = (-1L);
        int32_t l_157 = (-1L);
        int32_t l_158 = 9L;
        int32_t l_162 = 0x57CD9FBBL;
        VECTOR(int32_t, 4) l_164 = (VECTOR(int32_t, 4))(0x684DE2F1L, (VECTOR(int32_t, 2))(0x684DE2F1L, (-9L)), (-9L));
        int32_t l_165 = (-1L);
        int32_t l_194 = 1L;
        int32_t l_195 = 0x45E4628AL;
        int32_t l_196 = 0x25602695L;
        int32_t l_197 = 0L;
        int32_t l_198 = 0x1D8AA19AL;
        VECTOR(int32_t, 4) l_199 = (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x7C0732C8L), 0x7C0732C8L);
        int32_t l_200[5][2][2] = {{{9L,9L},{9L,9L}},{{9L,9L},{9L,9L}},{{9L,9L},{9L,9L}},{{9L,9L},{9L,9L}},{{9L,9L},{9L,9L}}};
        VECTOR(uint32_t, 16) l_214 = (VECTOR(uint32_t, 16))(5UL, (VECTOR(uint32_t, 4))(5UL, (VECTOR(uint32_t, 2))(5UL, 0UL), 0UL), 0UL, 5UL, 0UL, (VECTOR(uint32_t, 2))(5UL, 0UL), (VECTOR(uint32_t, 2))(5UL, 0UL), 5UL, 0UL, 5UL, 0UL);
        uint16_t *l_219[6] = {&p_999->g_58,&p_999->g_58,&p_999->g_58,&p_999->g_58,&p_999->g_58,&p_999->g_58};
        int16_t *l_220 = &p_999->g_126.f1;
        int8_t l_221 = 0x72L;
        int32_t *l_222 = &l_197;
        int i, j, k;
        if ((safe_add_func_uint8_t_u_u(p_999->g_75, l_91.s7)))
        { /* block id: 27 */
            l_85.y = ((void*)0 != p_35);
        }
        else
        { /* block id: 29 */
            VECTOR(int16_t, 8) l_145 = (VECTOR(int16_t, 8))(0x5BBDL, (VECTOR(int16_t, 4))(0x5BBDL, (VECTOR(int16_t, 2))(0x5BBDL, 0x7351L), 0x7351L), 0x7351L, 0x5BBDL, 0x7351L);
            int32_t l_156 = (-1L);
            int32_t l_159[8] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
            int8_t l_169 = (-9L);
            struct S2 *l_182 = &p_999->g_183;
            int32_t *l_190 = &l_155;
            int32_t *l_191 = &p_999->g_163[4];
            int32_t *l_192 = &p_999->g_163[6];
            int32_t *l_193[4] = {&l_159[0],&l_159[0],&l_159[0],&l_159[0]};
            int i;
            for (p_999->g_75 = (-14); (p_999->g_75 >= 12); p_999->g_75++)
            { /* block id: 32 */
                int32_t *l_121 = &p_999->g_56;
                int32_t **l_120 = &l_121;
                VECTOR(int32_t, 4) l_173 = (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x369DB755L), 0x369DB755L);
                volatile uint32_t **l_189 = (void*)0;
                int i;
                (*l_120) = (void*)0;
                if (p_999->g_75)
                    continue;
                if ((safe_mod_func_int32_t_s_s((0xDEC9E907L != 0x92AB80D1L), 0xEC2AC01EL)))
                { /* block id: 35 */
                    struct S2 **l_130 = &l_124[1][0];
                    (*l_130) = l_124[0][5];
                }
                else
                { /* block id: 37 */
                    int8_t l_151 = (-1L);
                    int32_t l_152 = (-2L);
                    int32_t l_160 = 1L;
                    int32_t l_161 = 0x7B3824C0L;
                    int32_t l_175 = 0x4A0EE240L;
                    uint64_t l_176 = 0x5EFA3F52DB4BC06DL;
                    VECTOR(int8_t, 4) l_181 = (VECTOR(int8_t, 4))(0x41L, (VECTOR(int8_t, 2))(0x41L, (-6L)), (-6L));
                    int i;
                    if (((VECTOR(int32_t, 16))((-1L), 0x2086BB41L, (safe_div_func_int64_t_s_s((((VECTOR(int8_t, 16))(add_sat(((VECTOR(int8_t, 8))((safe_sub_func_int32_t_s_s(((((safe_mul_func_int16_t_s_s((safe_unary_minus_func_int16_t_s(p_36)), (&p_999->g_73[1][0][0] != &p_999->g_74))) <= l_90.x) != (safe_add_func_uint64_t_u_u(GROUP_DIVERGE(2, 1), ((VECTOR(uint64_t, 8))(0UL, GROUP_DIVERGE(1, 1), (((safe_lshift_func_uint16_t_u_s(((safe_rshift_func_int16_t_s_u(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(safe_clamp_func(VECTOR(int16_t, 4),int16_t,((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(min(((VECTOR(int16_t, 8))(sub_sat(((VECTOR(int16_t, 16))((-1L), ((VECTOR(int16_t, 16))((-1L), ((VECTOR(int16_t, 2))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 2),((VECTOR(int16_t, 2))(p_999->g_144.yz)), ((VECTOR(int16_t, 16))(l_145.s5715413665141016)).s79, ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 4))(min(((VECTOR(int16_t, 2))(add_sat(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(0x4A86L, (-10L))), 1L, 0x5FA7L, (safe_mul_func_int16_t_s_s((((+((((((l_148 , p_999->g_149) == l_124[0][5]) , ((VECTOR(int64_t, 16))(upsample(((VECTOR(int32_t, 8))(rhadd(((VECTOR(int32_t, 8))(0L, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(0x2771265BL, 0x367958DFL, ((VECTOR(int32_t, 4))(0x5419CB78L)), 9L, (-1L))).s01)), 2L, 0x3250D319L, 0x209D64CCL, 0x40B3A35DL, 3L)), ((VECTOR(int32_t, 8))(0x1E51E503L))))).s4676136175354622, ((VECTOR(uint32_t, 16))(0x2028FAF6L))))).s5) , &p_999->g_75) == &p_999->g_75) > p_999->g_56)) | p_999->g_127[6][1][8].f1) && p_999->g_127[6][1][8].f1), p_34)), 4L, ((VECTOR(int16_t, 2))(0L)), 0x5881L, ((VECTOR(int16_t, 2))(0L)), l_151, 1L, ((VECTOR(int16_t, 2))(0x6245L)), 0x1CD9L)).s95, ((VECTOR(int16_t, 2))(6L))))).yxyx, (int16_t)p_36))).even))))), 0L, 1L, ((VECTOR(int16_t, 8))(0x3B02L)), p_36, 0x7A2AL, (-1L))).s9, 0L, ((VECTOR(int16_t, 4))((-9L))), 4L, 0x1C69L, ((VECTOR(int16_t, 4))(0x5692L)), (-9L), 0x38DFL, 5L)).odd, ((VECTOR(int16_t, 8))((-3L)))))).s64, (int16_t)p_999->g_57))))).xxxx, (int16_t)0x1999L, (int16_t)p_999->g_127[6][1][8].f0))), ((VECTOR(int16_t, 4))(0x737EL)))).s6, p_36)) >= 65533UL), l_148)) != 0x48F600EEL) || l_145.s5), ((VECTOR(uint64_t, 4))(0UL)), 0x2E718DAA797CCE52L)).s0))) , p_999->g_56), p_999->g_144.z)), ((VECTOR(int8_t, 2))(1L)), 0L, ((VECTOR(int8_t, 4))(8L)))).s6031241407214235, ((VECTOR(int8_t, 16))(0x4DL))))).sf != p_34), 8L)), (*p_35), 0x3D442FCBL, (*p_35), ((VECTOR(int32_t, 4))(0x4F1B3D6EL)), 0x7E67F92BL, 6L, 1L, (-1L), 0x755523BFL, 0x4985C6CCL)).s3)
                    { /* block id: 38 */
                        int32_t *l_153 = &p_999->g_56;
                        int32_t *l_154[1][7] = {{&p_999->g_56,&p_999->g_56,&p_999->g_56,&p_999->g_56,&p_999->g_56,&p_999->g_56,&p_999->g_56}};
                        int i, j;
                        (*l_120) = func_53(p_999->g_73[1][0][0], p_999);
                        ++l_166;
                    }
                    else
                    { /* block id: 41 */
                        int32_t *l_170 = &l_160;
                        int32_t *l_171 = &l_155;
                        int32_t *l_172[6][7] = {{&l_159[4],&l_159[4],&l_159[4],&l_159[4],&l_159[4],&l_159[4],&l_159[4]},{&l_159[4],&l_159[4],&l_159[4],&l_159[4],&l_159[4],&l_159[4],&l_159[4]},{&l_159[4],&l_159[4],&l_159[4],&l_159[4],&l_159[4],&l_159[4],&l_159[4]},{&l_159[4],&l_159[4],&l_159[4],&l_159[4],&l_159[4],&l_159[4],&l_159[4]},{&l_159[4],&l_159[4],&l_159[4],&l_159[4],&l_159[4],&l_159[4],&l_159[4]},{&l_159[4],&l_159[4],&l_159[4],&l_159[4],&l_159[4],&l_159[4],&l_159[4]}};
                        int32_t l_174 = (-6L);
                        int i, j;
                        --l_176;
                    }
                    (*p_35) = (1UL > (safe_add_func_uint8_t_u_u((p_999->g_149 != (((*l_93) = ((VECTOR(int8_t, 16))(l_181.zzyxzzwxzwwxxzzz)).sf) , l_182)), (safe_rshift_func_int16_t_s_u(((void*)0 != &l_165), 10)))));
                    for (p_999->g_125.f1 = 0; (p_999->g_125.f1 < 0); p_999->g_125.f1 = safe_add_func_uint8_t_u_u(p_999->g_125.f1, 1))
                    { /* block id: 48 */
                        l_189 = p_999->g_188;
                    }
                }
            }
            ++l_201;
        }
        (*l_222) |= (safe_lshift_func_uint8_t_u_u(((((*p_35) = (safe_add_func_int64_t_s_s((safe_sub_func_int64_t_s_s((((0x0DEE21B6L <= p_999->g_125.f0) ^ (+((safe_mod_func_uint32_t_u_u((0x03AEL | ((((((safe_mul_func_int16_t_s_s(((65535UL || (p_999->g_150.f1 = (((VECTOR(uint32_t, 2))(l_214.s70)).odd ^ ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 8))(abs_diff(((VECTOR(uint32_t, 8))(0UL, 4294967295UL, ((!(p_999->g_129.f0 = (p_999->g_150.f1 , (safe_mul_func_int16_t_s_s(l_98.x, ((*l_220) = ((safe_mul_func_int16_t_s_s((~l_196), (l_85.y = (0x65L < 4L)))) > l_195))))))) == l_165), ((VECTOR(uint32_t, 4))(0x5A85423CL)), 0UL)), ((VECTOR(uint32_t, 8))(0xFB289EBEL))))).even)).x))) , p_999->g_126.f1), l_97.y)) | l_195) < p_999->g_57) , &p_999->g_149) != &p_999->g_149) ^ 0x7659C021L)), (*p_35))) ^ l_221))) , l_199.w), 0x5E11F597F79F529EL)), p_999->g_127[6][1][8].f0))) ^ p_999->g_129.f1) < 0x027CAFC2E89DF86AL), l_162));
    }
    else
    { /* block id: 61 */
        VECTOR(int64_t, 16) l_252 = (VECTOR(int64_t, 16))((-10L), (VECTOR(int64_t, 4))((-10L), (VECTOR(int64_t, 2))((-10L), 0x11BBE33D9CB26241L), 0x11BBE33D9CB26241L), 0x11BBE33D9CB26241L, (-10L), 0x11BBE33D9CB26241L, (VECTOR(int64_t, 2))((-10L), 0x11BBE33D9CB26241L), (VECTOR(int64_t, 2))((-10L), 0x11BBE33D9CB26241L), (-10L), 0x11BBE33D9CB26241L, (-10L), 0x11BBE33D9CB26241L);
        uint32_t l_265 = 0x95CEEF5BL;
        uint8_t l_276 = 4UL;
        struct S0 *l_293 = (void*)0;
        int16_t *l_302 = &p_999->g_125.f1;
        VECTOR(int16_t, 4) l_315 = (VECTOR(int16_t, 4))(0x2650L, (VECTOR(int16_t, 2))(0x2650L, 0x175EL), 0x175EL);
        int32_t l_324 = 0x3DCCE7D3L;
        int32_t l_326 = 1L;
        int32_t l_327 = 0L;
        int32_t l_333[1];
        int32_t *l_347 = &p_999->g_251;
        VECTOR(int16_t, 8) l_354 = (VECTOR(int16_t, 8))(0x0608L, (VECTOR(int16_t, 4))(0x0608L, (VECTOR(int16_t, 2))(0x0608L, 0L), 0L), 0L, 0x0608L, 0L);
        struct S2 **l_362 = &l_124[2][3];
        struct S2 ***l_361[4] = {&l_362,&l_362,&l_362,&l_362};
        int64_t *l_365 = (void*)0;
        int64_t *l_366 = &p_999->g_57;
        VECTOR(int8_t, 2) l_371 = (VECTOR(int8_t, 2))(7L, 0x3AL);
        VECTOR(uint64_t, 16) l_386 = (VECTOR(uint64_t, 16))(0UL, (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 5UL), 5UL), 5UL, 0UL, 5UL, (VECTOR(uint64_t, 2))(0UL, 5UL), (VECTOR(uint64_t, 2))(0UL, 5UL), 0UL, 5UL, 0UL, 5UL);
        int32_t **l_398[2];
        int i;
        for (i = 0; i < 1; i++)
            l_333[i] = 0x4B2C221EL;
        for (i = 0; i < 2; i++)
            l_398[i] = (void*)0;
        for (p_999->g_75 = 0; (p_999->g_75 > 13); ++p_999->g_75)
        { /* block id: 64 */
            VECTOR(uint8_t, 8) l_249 = (VECTOR(uint8_t, 8))(0xF1L, (VECTOR(uint8_t, 4))(0xF1L, (VECTOR(uint8_t, 2))(0xF1L, 255UL), 255UL), 255UL, 0xF1L, 255UL);
            int32_t l_298 = 0x7847D91AL;
            VECTOR(uint64_t, 16) l_299 = (VECTOR(uint64_t, 16))(0xB3C9D3238559D697L, (VECTOR(uint64_t, 4))(0xB3C9D3238559D697L, (VECTOR(uint64_t, 2))(0xB3C9D3238559D697L, 18446744073709551612UL), 18446744073709551612UL), 18446744073709551612UL, 0xB3C9D3238559D697L, 18446744073709551612UL, (VECTOR(uint64_t, 2))(0xB3C9D3238559D697L, 18446744073709551612UL), (VECTOR(uint64_t, 2))(0xB3C9D3238559D697L, 18446744073709551612UL), 0xB3C9D3238559D697L, 18446744073709551612UL, 0xB3C9D3238559D697L, 18446744073709551612UL);
            struct S0 *l_316 = &p_999->g_317[4][7];
            int32_t l_330 = 0x64D7A925L;
            int32_t l_335 = 0x256DCDBCL;
            int32_t l_336 = (-1L);
            int32_t l_337 = (-1L);
            int32_t l_338 = (-1L);
            int32_t l_340 = 0x22400E71L;
            int32_t l_341 = (-1L);
            int i;
            for (p_999->g_183.f0 = 23; (p_999->g_183.f0 > 5); p_999->g_183.f0 = safe_sub_func_uint8_t_u_u(p_999->g_183.f0, 1))
            { /* block id: 67 */
                VECTOR(int64_t, 4) l_227 = (VECTOR(int64_t, 4))((-7L), (VECTOR(int64_t, 2))((-7L), 1L), 1L);
                int i;
                (*p_35) &= (p_34 >= ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(rhadd(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(abs(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 8))(l_227.wwzzyxwz)).even))))).zzzzwyyx)).s76, ((VECTOR(uint64_t, 2))(7UL, 18446744073709551615UL))))), 18446744073709551608UL, 0xD2A47E4BA312F675L)).w);
            }
            for (p_36 = 0; (p_36 > 0); ++p_36)
            { /* block id: 72 */
                uint32_t *l_232[1][5][8] = {{{(void*)0,(void*)0,&p_999->g_75,(void*)0,(void*)0,(void*)0,(void*)0,&p_999->g_75},{(void*)0,(void*)0,&p_999->g_75,(void*)0,(void*)0,(void*)0,(void*)0,&p_999->g_75},{(void*)0,(void*)0,&p_999->g_75,(void*)0,(void*)0,(void*)0,(void*)0,&p_999->g_75},{(void*)0,(void*)0,&p_999->g_75,(void*)0,(void*)0,(void*)0,(void*)0,&p_999->g_75},{(void*)0,(void*)0,&p_999->g_75,(void*)0,(void*)0,(void*)0,(void*)0,&p_999->g_75}}};
                int16_t *l_233 = &p_999->g_129.f1;
                int32_t l_245 = 5L;
                uint8_t *l_250[6] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                VECTOR(int32_t, 2) l_274 = (VECTOR(int32_t, 2))((-1L), 0x404322BBL);
                int i, j, k;
                if (((+(safe_sub_func_uint16_t_u_u((l_232[0][0][7] == &p_999->g_75), ((*l_233) |= p_34)))) > (safe_mul_func_int16_t_s_s(((safe_mul_func_uint8_t_u_u((safe_sub_func_uint32_t_u_u(4294967293UL, (safe_unary_minus_func_uint16_t_u(p_999->g_127[6][1][8].f1)))), (safe_mul_func_uint8_t_u_u((safe_mod_func_int64_t_s_s((l_245 > ((((VECTOR(int32_t, 2))(p_999->g_246.zw)).hi >= (safe_mul_func_uint8_t_u_u((p_999->g_251 |= ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(l_249.s44665741)).s13)).odd), l_249.s6))) < p_36)), ((VECTOR(int64_t, 8))(l_252.s198bde82)).s7)), (safe_rshift_func_int8_t_s_s(((*l_115) = (safe_div_func_uint8_t_u_u((safe_sub_func_int8_t_s_s((((l_96.s7 , (void*)0) == &l_114[2][0][0]) , (-6L)), p_999->g_259[2])), p_999->g_163[7]))), p_999->g_57)))))) , p_999->g_126.f0), l_249.s2))))
                { /* block id: 76 */
                    uint8_t **l_264 = &p_999->g_262;
                    int64_t *l_268 = (void*)0;
                    int64_t *l_269 = (void*)0;
                    int64_t *l_270 = (void*)0;
                    int64_t *l_271 = &p_999->g_57;
                    int8_t *l_272 = (void*)0;
                    int8_t *l_273 = &p_999->g_74;
                    int32_t l_275 = 5L;
                    p_999->g_163[2] = ((safe_div_func_int8_t_s_s((((((((((p_33 == ((*l_264) = p_999->g_262)) == l_265) && ((((*l_273) = (l_245 = ((*l_93) = ((*l_115) = (safe_mod_func_int64_t_s_s(0x687A2438228A214FL, ((*l_271) = l_245))))))) , ((VECTOR(int32_t, 8))(l_274.yyxxyyxx)).s2) > (*p_35))) , func_53(l_275, p_999)) != (void*)0) | 0x60A5L) > l_275) & l_276) != p_999->g_129.f1), l_275)) < 1UL);
                    for (p_999->g_58 = (-20); (p_999->g_58 >= 22); ++p_999->g_58)
                    { /* block id: 86 */
                        int32_t *l_279 = (void*)0;
                        int32_t *l_280 = (void*)0;
                        int32_t *l_281 = &l_275;
                        int32_t *l_282 = (void*)0;
                        int32_t *l_283 = &l_245;
                        int32_t *l_284 = (void*)0;
                        int32_t *l_285 = (void*)0;
                        int32_t *l_286[9];
                        uint16_t l_287 = 0UL;
                        int i;
                        for (i = 0; i < 9; i++)
                            l_286[i] = &p_999->g_251;
                        (*p_35) ^= ((p_33 != ((*l_264) = &l_276)) | ((void*)0 == &p_999->g_263));
                        ++l_287;
                    }
                    if (l_96.s4)
                        break;
                    (*p_35) = (-1L);
                }
                else
                { /* block id: 93 */
                    uint32_t l_297 = 3UL;
                    int32_t l_325 = (-8L);
                    int32_t l_328 = (-6L);
                    int32_t l_329 = 0L;
                    int32_t l_331 = 0x1E2454B7L;
                    int32_t l_332 = 0L;
                    int32_t l_334 = 1L;
                    int32_t l_339 = 0L;
                    int32_t l_342 = 0x57A74477L;
                    uint16_t l_343 = 0x6716L;
                    for (p_999->g_183.f1 = (-15); (p_999->g_183.f1 <= 10); p_999->g_183.f1++)
                    { /* block id: 96 */
                        uint32_t l_292 = 0x74C066D7L;
                        struct S0 **l_296[10];
                        int i;
                        for (i = 0; i < 10; i++)
                            l_296[i] = &l_293;
                        if (l_292)
                            break;
                        l_293 = (p_999->g_294 = l_293);
                    }
                    (*p_35) ^= (4294967295UL | (((void*)0 == &p_999->g_259[2]) | ((((p_999->g_73[2][0][0] , p_999->g_183.f1) < (*p_999->g_262)) | ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(0x6F0A01C8L, ((VECTOR(int32_t, 2))(0x2D1D1570L, 0L)), 0x4B70D484L)))), 4L, (((l_298 = ((l_201 & ((l_297 | p_999->g_144.x) && 251UL)) <= 0x62L)) , l_249.s7) , 0x5C96EBB3L), l_274.y, ((VECTOR(int32_t, 4))(0x75F5F9B7L)), ((VECTOR(int32_t, 4))((-1L))), (-9L))).s84)).xyyyyxyxyyxyyxxy)).s2) && 0x7D10L)));
                    (*p_35) = (((((p_34 && (((VECTOR(uint64_t, 8))(l_299.s27896d68)).s2 , ((safe_add_func_uint32_t_u_u(((void*)0 == l_302), (safe_unary_minus_func_int32_t_s(((safe_sub_func_uint64_t_u_u((l_274.y != (+((safe_sub_func_uint32_t_u_u(((VECTOR(uint32_t, 4))(p_999->g_308.s6e33)).z, ((safe_mul_func_int16_t_s_s((safe_mul_func_uint16_t_u_u((GROUP_DIVERGE(1, 1) <= (safe_mod_func_int16_t_s_s((p_36 , (!((VECTOR(int16_t, 16))(l_315.ywwyzyxxwwyxxxyz)).s8)), p_999->g_308.s5))), (!p_999->g_183.f1))), p_999->g_126.f1)) , ((p_999->g_263 , l_232[0][4][4]) == (void*)0)))) && l_249.s0))), (-1L))) == p_34))))) , (-1L)))) >= p_34) , l_316) == l_316) < p_999->g_129.f1);
                    for (p_999->g_125.f1 = 0; (p_999->g_125.f1 != (-30)); p_999->g_125.f1 = safe_sub_func_int16_t_s_s(p_999->g_125.f1, 2))
                    { /* block id: 106 */
                        int32_t *l_320 = &p_999->g_56;
                        int32_t *l_321 = &p_999->g_295.f2;
                        int32_t *l_322 = (void*)0;
                        int32_t *l_323[6][9] = {{&p_999->g_56,&p_999->g_56,(void*)0,&p_999->g_295.f2,&l_245,&p_999->g_56,(void*)0,&p_999->g_163[1],(void*)0},{&p_999->g_56,&p_999->g_56,(void*)0,&p_999->g_295.f2,&l_245,&p_999->g_56,(void*)0,&p_999->g_163[1],(void*)0},{&p_999->g_56,&p_999->g_56,(void*)0,&p_999->g_295.f2,&l_245,&p_999->g_56,(void*)0,&p_999->g_163[1],(void*)0},{&p_999->g_56,&p_999->g_56,(void*)0,&p_999->g_295.f2,&l_245,&p_999->g_56,(void*)0,&p_999->g_163[1],(void*)0},{&p_999->g_56,&p_999->g_56,(void*)0,&p_999->g_295.f2,&l_245,&p_999->g_56,(void*)0,&p_999->g_163[1],(void*)0},{&p_999->g_56,&p_999->g_56,(void*)0,&p_999->g_295.f2,&l_245,&p_999->g_56,(void*)0,&p_999->g_163[1],(void*)0}};
                        int i, j;
                        --l_343;
                        if (p_999->g_163[1])
                            continue;
                    }
                }
                (*p_35) = (~l_274.x);
            }
            return p_999->g_57;
        }
        l_347 = func_53(l_346, p_999);
        if ((((safe_sub_func_uint16_t_u_u(FAKE_DIVERGE(p_999->global_2_offset, get_global_id(2), 10), (safe_mul_func_int16_t_s_s(p_34, 1L)))) == (((((*p_35) = (-9L)) , ((*l_347) ^ ((*l_366) = (safe_sub_func_int32_t_s_s((*p_35), ((((VECTOR(int16_t, 4))(l_354.s0564)).x >= (safe_mod_func_uint32_t_u_u((p_36 || (safe_sub_func_int64_t_s_s((safe_add_func_uint64_t_u_u(((p_999->g_363 = &l_124[0][5]) != (p_999->g_364 = &p_999->g_149)), (p_36 <= p_999->g_126.f1))), GROUP_DIVERGE(2, 1)))), (*l_347)))) == FAKE_DIVERGE(p_999->group_0_offset, get_group_id(0), 10))))))) , &l_327) != (void*)0)) || (*p_999->g_262)))
        { /* block id: 120 */
            return p_34;
        }
        else
        { /* block id: 122 */
            int64_t l_396[9][5][3] = {{{(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L)}},{{(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L)}},{{(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L)}},{{(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L)}},{{(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L)}},{{(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L)}},{{(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L)}},{{(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L)}},{{(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L)}}};
            int i, j, k;
            for (l_346 = 0; (l_346 == (-12)); l_346 = safe_sub_func_int8_t_s_s(l_346, 1))
            { /* block id: 125 */
                struct S2 ***l_393 = &p_999->g_364;
                uint64_t *l_394 = (void*)0;
                uint64_t *l_395 = &p_999->g_183.f0;
                int32_t l_397 = (-1L);
                (*p_35) ^= (safe_lshift_func_int8_t_s_u((p_36 , ((VECTOR(int8_t, 4))(l_371.yxxx)).z), ((safe_rshift_func_uint8_t_u_s(((p_999->g_188 == &l_92[0]) < ((safe_div_func_int8_t_s_s((safe_add_func_uint32_t_u_u((safe_lshift_func_uint8_t_u_s((((*l_395) = ((safe_sub_func_int32_t_s_s((safe_add_func_uint16_t_u_u(0x5B28L, ((((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 8))(upsample(((VECTOR(uint32_t, 2))(4294967295UL, 0xB8BBE3EDL)).yyyyxyxx, ((VECTOR(uint32_t, 2))(0xB06B6E76L, 0xDFDF1D60L)).yyyyyxxy))).odd)), 0x819832AA6CD671A2L, ((VECTOR(uint64_t, 2))(l_386.s11)), 18446744073709551611UL)).lo)))).z & (p_35 != (void*)0)) >= (safe_lshift_func_int16_t_s_u((p_36 , (safe_mod_func_uint16_t_u_u(((p_999->g_58++) >= ((l_393 != l_393) || 0xFEL)), 1L))), p_36))))), 0x7CC0BB5BL)) < (-9L))) < l_396[7][1][1]), l_397)), p_34)), (-7L))) ^ 0x20F4L)), 3)) | l_396[6][3][1])));
            }
        }
        p_35 = &p_999->g_163[1];
    }
    return p_999->g_57;
}


/* ------------------------------------------ */
/* 
 * reads : p_999->g_56 p_999->g_73
 * writes: p_999->g_56
 */
int8_t  func_43(int8_t * p_44, int32_t * p_45, int8_t * p_46, int16_t  p_47, struct S4 * p_999)
{ /* block id: 18 */
    int32_t l_78[1][4];
    int i, j;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 4; j++)
            l_78[i][j] = 0x48B43F62L;
    }
    (*p_45) &= l_78[0][1];
    return p_999->g_73[2][1][0];
}


/* ------------------------------------------ */
/* 
 * reads : p_999->g_56 p_999->g_75
 * writes: p_999->g_56 p_999->g_75
 */
int8_t * func_48(int32_t * p_49, int8_t * p_50, int32_t  p_51, int32_t * p_52, struct S4 * p_999)
{ /* block id: 12 */
    VECTOR(int32_t, 8) l_68 = (VECTOR(int32_t, 8))(0x4DFC4B74L, (VECTOR(int32_t, 4))(0x4DFC4B74L, (VECTOR(int32_t, 2))(0x4DFC4B74L, 0L), 0L), 0L, 0x4DFC4B74L, 0L);
    int32_t *l_70 = &p_999->g_56;
    int32_t **l_69 = &l_70;
    int32_t *l_71 = (void*)0;
    int32_t *l_72[7];
    int i;
    for (i = 0; i < 7; i++)
        l_72[i] = (void*)0;
    (*p_52) = ((VECTOR(int32_t, 2))(l_68.s43)).lo;
    (*l_69) = &p_51;
    (*p_52) |= 0x059E6156L;
    ++p_999->g_75;
    return p_50;
}


/* ------------------------------------------ */
/* 
 * reads : p_999->g_58
 * writes: p_999->g_58
 */
int32_t * func_53(uint64_t  p_54, struct S4 * p_999)
{ /* block id: 8 */
    int32_t *l_55[4];
    int32_t **l_61 = &l_55[2];
    int32_t *l_62 = &p_999->g_56;
    int i;
    for (i = 0; i < 4; i++)
        l_55[i] = &p_999->g_56;
    p_999->g_58--;
    (*l_61) = &p_999->g_56;
    return l_62;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S4 c_1000;
    struct S4* p_999 = &c_1000;
    struct S4 c_1001 = {
        (-2L), // p_999->g_4
        (VECTOR(int16_t, 2))(0x7958L, (-1L)), // p_999->g_25
        {{(-1L),7L,0L,0L,7L,0L},{(-1L),7L,0L,0L,7L,0L},{(-1L),7L,0L,0L,7L,0L},{(-1L),7L,0L,0L,7L,0L},{(-1L),7L,0L,0L,7L,0L},{(-1L),7L,0L,0L,7L,0L},{(-1L),7L,0L,0L,7L,0L},{(-1L),7L,0L,0L,7L,0L},{(-1L),7L,0L,0L,7L,0L},{(-1L),7L,0L,0L,7L,0L}}, // p_999->g_29
        0x1A030833L, // p_999->g_56
        0x6433C58D4CCF97A2L, // p_999->g_57
        1UL, // p_999->g_58
        {{{0x2CL},{0x2CL},{0x2CL}},{{0x2CL},{0x2CL},{0x2CL}},{{0x2CL},{0x2CL},{0x2CL}},{{0x2CL},{0x2CL},{0x2CL}}}, // p_999->g_73
        0x10L, // p_999->g_74
        1UL, // p_999->g_75
        {5UL,0x2023L,0xF7DB775658741FB0L}, // p_999->g_125
        {0x5A25E2A794E2E87BL,0L,0x653C33EB4EFABF27L}, // p_999->g_126
        {{{{9UL,0x084DL,1UL},{0UL,-10L,1UL},{0xB1E4C70D5BA451DFL,-1L,0UL},{0x2506B0F8228610EFL,0x4EB6L,18446744073709551607UL},{18446744073709551615UL,0x37ECL,0xDB3155C3D3C4AB01L},{18446744073709551607UL,0L,0x34F4FC1ADAE8A341L},{0x29CA2B82A31379ACL,0x5BEAL,5UL},{18446744073709551615UL,5L,18446744073709551615UL},{0UL,0x2703L,0x7B90CDC1F2F3EF56L}},{{9UL,0x084DL,1UL},{0UL,-10L,1UL},{0xB1E4C70D5BA451DFL,-1L,0UL},{0x2506B0F8228610EFL,0x4EB6L,18446744073709551607UL},{18446744073709551615UL,0x37ECL,0xDB3155C3D3C4AB01L},{18446744073709551607UL,0L,0x34F4FC1ADAE8A341L},{0x29CA2B82A31379ACL,0x5BEAL,5UL},{18446744073709551615UL,5L,18446744073709551615UL},{0UL,0x2703L,0x7B90CDC1F2F3EF56L}},{{9UL,0x084DL,1UL},{0UL,-10L,1UL},{0xB1E4C70D5BA451DFL,-1L,0UL},{0x2506B0F8228610EFL,0x4EB6L,18446744073709551607UL},{18446744073709551615UL,0x37ECL,0xDB3155C3D3C4AB01L},{18446744073709551607UL,0L,0x34F4FC1ADAE8A341L},{0x29CA2B82A31379ACL,0x5BEAL,5UL},{18446744073709551615UL,5L,18446744073709551615UL},{0UL,0x2703L,0x7B90CDC1F2F3EF56L}}},{{{9UL,0x084DL,1UL},{0UL,-10L,1UL},{0xB1E4C70D5BA451DFL,-1L,0UL},{0x2506B0F8228610EFL,0x4EB6L,18446744073709551607UL},{18446744073709551615UL,0x37ECL,0xDB3155C3D3C4AB01L},{18446744073709551607UL,0L,0x34F4FC1ADAE8A341L},{0x29CA2B82A31379ACL,0x5BEAL,5UL},{18446744073709551615UL,5L,18446744073709551615UL},{0UL,0x2703L,0x7B90CDC1F2F3EF56L}},{{9UL,0x084DL,1UL},{0UL,-10L,1UL},{0xB1E4C70D5BA451DFL,-1L,0UL},{0x2506B0F8228610EFL,0x4EB6L,18446744073709551607UL},{18446744073709551615UL,0x37ECL,0xDB3155C3D3C4AB01L},{18446744073709551607UL,0L,0x34F4FC1ADAE8A341L},{0x29CA2B82A31379ACL,0x5BEAL,5UL},{18446744073709551615UL,5L,18446744073709551615UL},{0UL,0x2703L,0x7B90CDC1F2F3EF56L}},{{9UL,0x084DL,1UL},{0UL,-10L,1UL},{0xB1E4C70D5BA451DFL,-1L,0UL},{0x2506B0F8228610EFL,0x4EB6L,18446744073709551607UL},{18446744073709551615UL,0x37ECL,0xDB3155C3D3C4AB01L},{18446744073709551607UL,0L,0x34F4FC1ADAE8A341L},{0x29CA2B82A31379ACL,0x5BEAL,5UL},{18446744073709551615UL,5L,18446744073709551615UL},{0UL,0x2703L,0x7B90CDC1F2F3EF56L}}},{{{9UL,0x084DL,1UL},{0UL,-10L,1UL},{0xB1E4C70D5BA451DFL,-1L,0UL},{0x2506B0F8228610EFL,0x4EB6L,18446744073709551607UL},{18446744073709551615UL,0x37ECL,0xDB3155C3D3C4AB01L},{18446744073709551607UL,0L,0x34F4FC1ADAE8A341L},{0x29CA2B82A31379ACL,0x5BEAL,5UL},{18446744073709551615UL,5L,18446744073709551615UL},{0UL,0x2703L,0x7B90CDC1F2F3EF56L}},{{9UL,0x084DL,1UL},{0UL,-10L,1UL},{0xB1E4C70D5BA451DFL,-1L,0UL},{0x2506B0F8228610EFL,0x4EB6L,18446744073709551607UL},{18446744073709551615UL,0x37ECL,0xDB3155C3D3C4AB01L},{18446744073709551607UL,0L,0x34F4FC1ADAE8A341L},{0x29CA2B82A31379ACL,0x5BEAL,5UL},{18446744073709551615UL,5L,18446744073709551615UL},{0UL,0x2703L,0x7B90CDC1F2F3EF56L}},{{9UL,0x084DL,1UL},{0UL,-10L,1UL},{0xB1E4C70D5BA451DFL,-1L,0UL},{0x2506B0F8228610EFL,0x4EB6L,18446744073709551607UL},{18446744073709551615UL,0x37ECL,0xDB3155C3D3C4AB01L},{18446744073709551607UL,0L,0x34F4FC1ADAE8A341L},{0x29CA2B82A31379ACL,0x5BEAL,5UL},{18446744073709551615UL,5L,18446744073709551615UL},{0UL,0x2703L,0x7B90CDC1F2F3EF56L}}},{{{9UL,0x084DL,1UL},{0UL,-10L,1UL},{0xB1E4C70D5BA451DFL,-1L,0UL},{0x2506B0F8228610EFL,0x4EB6L,18446744073709551607UL},{18446744073709551615UL,0x37ECL,0xDB3155C3D3C4AB01L},{18446744073709551607UL,0L,0x34F4FC1ADAE8A341L},{0x29CA2B82A31379ACL,0x5BEAL,5UL},{18446744073709551615UL,5L,18446744073709551615UL},{0UL,0x2703L,0x7B90CDC1F2F3EF56L}},{{9UL,0x084DL,1UL},{0UL,-10L,1UL},{0xB1E4C70D5BA451DFL,-1L,0UL},{0x2506B0F8228610EFL,0x4EB6L,18446744073709551607UL},{18446744073709551615UL,0x37ECL,0xDB3155C3D3C4AB01L},{18446744073709551607UL,0L,0x34F4FC1ADAE8A341L},{0x29CA2B82A31379ACL,0x5BEAL,5UL},{18446744073709551615UL,5L,18446744073709551615UL},{0UL,0x2703L,0x7B90CDC1F2F3EF56L}},{{9UL,0x084DL,1UL},{0UL,-10L,1UL},{0xB1E4C70D5BA451DFL,-1L,0UL},{0x2506B0F8228610EFL,0x4EB6L,18446744073709551607UL},{18446744073709551615UL,0x37ECL,0xDB3155C3D3C4AB01L},{18446744073709551607UL,0L,0x34F4FC1ADAE8A341L},{0x29CA2B82A31379ACL,0x5BEAL,5UL},{18446744073709551615UL,5L,18446744073709551615UL},{0UL,0x2703L,0x7B90CDC1F2F3EF56L}}},{{{9UL,0x084DL,1UL},{0UL,-10L,1UL},{0xB1E4C70D5BA451DFL,-1L,0UL},{0x2506B0F8228610EFL,0x4EB6L,18446744073709551607UL},{18446744073709551615UL,0x37ECL,0xDB3155C3D3C4AB01L},{18446744073709551607UL,0L,0x34F4FC1ADAE8A341L},{0x29CA2B82A31379ACL,0x5BEAL,5UL},{18446744073709551615UL,5L,18446744073709551615UL},{0UL,0x2703L,0x7B90CDC1F2F3EF56L}},{{9UL,0x084DL,1UL},{0UL,-10L,1UL},{0xB1E4C70D5BA451DFL,-1L,0UL},{0x2506B0F8228610EFL,0x4EB6L,18446744073709551607UL},{18446744073709551615UL,0x37ECL,0xDB3155C3D3C4AB01L},{18446744073709551607UL,0L,0x34F4FC1ADAE8A341L},{0x29CA2B82A31379ACL,0x5BEAL,5UL},{18446744073709551615UL,5L,18446744073709551615UL},{0UL,0x2703L,0x7B90CDC1F2F3EF56L}},{{9UL,0x084DL,1UL},{0UL,-10L,1UL},{0xB1E4C70D5BA451DFL,-1L,0UL},{0x2506B0F8228610EFL,0x4EB6L,18446744073709551607UL},{18446744073709551615UL,0x37ECL,0xDB3155C3D3C4AB01L},{18446744073709551607UL,0L,0x34F4FC1ADAE8A341L},{0x29CA2B82A31379ACL,0x5BEAL,5UL},{18446744073709551615UL,5L,18446744073709551615UL},{0UL,0x2703L,0x7B90CDC1F2F3EF56L}}},{{{9UL,0x084DL,1UL},{0UL,-10L,1UL},{0xB1E4C70D5BA451DFL,-1L,0UL},{0x2506B0F8228610EFL,0x4EB6L,18446744073709551607UL},{18446744073709551615UL,0x37ECL,0xDB3155C3D3C4AB01L},{18446744073709551607UL,0L,0x34F4FC1ADAE8A341L},{0x29CA2B82A31379ACL,0x5BEAL,5UL},{18446744073709551615UL,5L,18446744073709551615UL},{0UL,0x2703L,0x7B90CDC1F2F3EF56L}},{{9UL,0x084DL,1UL},{0UL,-10L,1UL},{0xB1E4C70D5BA451DFL,-1L,0UL},{0x2506B0F8228610EFL,0x4EB6L,18446744073709551607UL},{18446744073709551615UL,0x37ECL,0xDB3155C3D3C4AB01L},{18446744073709551607UL,0L,0x34F4FC1ADAE8A341L},{0x29CA2B82A31379ACL,0x5BEAL,5UL},{18446744073709551615UL,5L,18446744073709551615UL},{0UL,0x2703L,0x7B90CDC1F2F3EF56L}},{{9UL,0x084DL,1UL},{0UL,-10L,1UL},{0xB1E4C70D5BA451DFL,-1L,0UL},{0x2506B0F8228610EFL,0x4EB6L,18446744073709551607UL},{18446744073709551615UL,0x37ECL,0xDB3155C3D3C4AB01L},{18446744073709551607UL,0L,0x34F4FC1ADAE8A341L},{0x29CA2B82A31379ACL,0x5BEAL,5UL},{18446744073709551615UL,5L,18446744073709551615UL},{0UL,0x2703L,0x7B90CDC1F2F3EF56L}}},{{{9UL,0x084DL,1UL},{0UL,-10L,1UL},{0xB1E4C70D5BA451DFL,-1L,0UL},{0x2506B0F8228610EFL,0x4EB6L,18446744073709551607UL},{18446744073709551615UL,0x37ECL,0xDB3155C3D3C4AB01L},{18446744073709551607UL,0L,0x34F4FC1ADAE8A341L},{0x29CA2B82A31379ACL,0x5BEAL,5UL},{18446744073709551615UL,5L,18446744073709551615UL},{0UL,0x2703L,0x7B90CDC1F2F3EF56L}},{{9UL,0x084DL,1UL},{0UL,-10L,1UL},{0xB1E4C70D5BA451DFL,-1L,0UL},{0x2506B0F8228610EFL,0x4EB6L,18446744073709551607UL},{18446744073709551615UL,0x37ECL,0xDB3155C3D3C4AB01L},{18446744073709551607UL,0L,0x34F4FC1ADAE8A341L},{0x29CA2B82A31379ACL,0x5BEAL,5UL},{18446744073709551615UL,5L,18446744073709551615UL},{0UL,0x2703L,0x7B90CDC1F2F3EF56L}},{{9UL,0x084DL,1UL},{0UL,-10L,1UL},{0xB1E4C70D5BA451DFL,-1L,0UL},{0x2506B0F8228610EFL,0x4EB6L,18446744073709551607UL},{18446744073709551615UL,0x37ECL,0xDB3155C3D3C4AB01L},{18446744073709551607UL,0L,0x34F4FC1ADAE8A341L},{0x29CA2B82A31379ACL,0x5BEAL,5UL},{18446744073709551615UL,5L,18446744073709551615UL},{0UL,0x2703L,0x7B90CDC1F2F3EF56L}}},{{{9UL,0x084DL,1UL},{0UL,-10L,1UL},{0xB1E4C70D5BA451DFL,-1L,0UL},{0x2506B0F8228610EFL,0x4EB6L,18446744073709551607UL},{18446744073709551615UL,0x37ECL,0xDB3155C3D3C4AB01L},{18446744073709551607UL,0L,0x34F4FC1ADAE8A341L},{0x29CA2B82A31379ACL,0x5BEAL,5UL},{18446744073709551615UL,5L,18446744073709551615UL},{0UL,0x2703L,0x7B90CDC1F2F3EF56L}},{{9UL,0x084DL,1UL},{0UL,-10L,1UL},{0xB1E4C70D5BA451DFL,-1L,0UL},{0x2506B0F8228610EFL,0x4EB6L,18446744073709551607UL},{18446744073709551615UL,0x37ECL,0xDB3155C3D3C4AB01L},{18446744073709551607UL,0L,0x34F4FC1ADAE8A341L},{0x29CA2B82A31379ACL,0x5BEAL,5UL},{18446744073709551615UL,5L,18446744073709551615UL},{0UL,0x2703L,0x7B90CDC1F2F3EF56L}},{{9UL,0x084DL,1UL},{0UL,-10L,1UL},{0xB1E4C70D5BA451DFL,-1L,0UL},{0x2506B0F8228610EFL,0x4EB6L,18446744073709551607UL},{18446744073709551615UL,0x37ECL,0xDB3155C3D3C4AB01L},{18446744073709551607UL,0L,0x34F4FC1ADAE8A341L},{0x29CA2B82A31379ACL,0x5BEAL,5UL},{18446744073709551615UL,5L,18446744073709551615UL},{0UL,0x2703L,0x7B90CDC1F2F3EF56L}}},{{{9UL,0x084DL,1UL},{0UL,-10L,1UL},{0xB1E4C70D5BA451DFL,-1L,0UL},{0x2506B0F8228610EFL,0x4EB6L,18446744073709551607UL},{18446744073709551615UL,0x37ECL,0xDB3155C3D3C4AB01L},{18446744073709551607UL,0L,0x34F4FC1ADAE8A341L},{0x29CA2B82A31379ACL,0x5BEAL,5UL},{18446744073709551615UL,5L,18446744073709551615UL},{0UL,0x2703L,0x7B90CDC1F2F3EF56L}},{{9UL,0x084DL,1UL},{0UL,-10L,1UL},{0xB1E4C70D5BA451DFL,-1L,0UL},{0x2506B0F8228610EFL,0x4EB6L,18446744073709551607UL},{18446744073709551615UL,0x37ECL,0xDB3155C3D3C4AB01L},{18446744073709551607UL,0L,0x34F4FC1ADAE8A341L},{0x29CA2B82A31379ACL,0x5BEAL,5UL},{18446744073709551615UL,5L,18446744073709551615UL},{0UL,0x2703L,0x7B90CDC1F2F3EF56L}},{{9UL,0x084DL,1UL},{0UL,-10L,1UL},{0xB1E4C70D5BA451DFL,-1L,0UL},{0x2506B0F8228610EFL,0x4EB6L,18446744073709551607UL},{18446744073709551615UL,0x37ECL,0xDB3155C3D3C4AB01L},{18446744073709551607UL,0L,0x34F4FC1ADAE8A341L},{0x29CA2B82A31379ACL,0x5BEAL,5UL},{18446744073709551615UL,5L,18446744073709551615UL},{0UL,0x2703L,0x7B90CDC1F2F3EF56L}}}}, // p_999->g_127
        {18446744073709551615UL,0x50E1L,18446744073709551607UL}, // p_999->g_128
        {0UL,1L,4UL}, // p_999->g_129
        (VECTOR(int16_t, 4))(0x1EF0L, (VECTOR(int16_t, 2))(0x1EF0L, 0x7E92L), 0x7E92L), // p_999->g_144
        {0x0EF957686BE3EF9CL,-1L,0xB9B7089B1FE60BA3L}, // p_999->g_150
        &p_999->g_150, // p_999->g_149
        {0x3E1657D5L,0x0518CFB6L,0x3E1657D5L,0x3E1657D5L,0x0518CFB6L,0x3E1657D5L,0x3E1657D5L,0x0518CFB6L}, // p_999->g_163
        {0x8C9CE54CF52BC6B4L,-5L,0UL}, // p_999->g_183
        (void*)0, // p_999->g_188
        (VECTOR(int32_t, 4))((-8L), (VECTOR(int32_t, 2))((-8L), (-10L)), (-10L)), // p_999->g_246
        3L, // p_999->g_251
        {(-4L),(-4L),(-4L)}, // p_999->g_259
        0x64L, // p_999->g_263
        &p_999->g_263, // p_999->g_262
        {18446744073709551615UL,0xC9L,1L}, // p_999->g_295
        &p_999->g_295, // p_999->g_294
        (VECTOR(uint32_t, 16))(0x56236AC3L, (VECTOR(uint32_t, 4))(0x56236AC3L, (VECTOR(uint32_t, 2))(0x56236AC3L, 0x344C95DAL), 0x344C95DAL), 0x344C95DAL, 0x56236AC3L, 0x344C95DAL, (VECTOR(uint32_t, 2))(0x56236AC3L, 0x344C95DAL), (VECTOR(uint32_t, 2))(0x56236AC3L, 0x344C95DAL), 0x56236AC3L, 0x344C95DAL, 0x56236AC3L, 0x344C95DAL), // p_999->g_308
        {{{0UL,0UL,0x1B70858FL},{0x67C84FD29E675E34L,0x69L,0L},{8UL,252UL,0x6229DF0FL},{0x738C9D4DB42A1F67L,0x2FL,0L},{0x67C84FD29E675E34L,0x69L,0L},{0x738C9D4DB42A1F67L,0x2FL,0L},{8UL,252UL,0x6229DF0FL},{0x67C84FD29E675E34L,0x69L,0L},{0UL,0UL,0x1B70858FL}},{{0UL,0UL,0x1B70858FL},{0x67C84FD29E675E34L,0x69L,0L},{8UL,252UL,0x6229DF0FL},{0x738C9D4DB42A1F67L,0x2FL,0L},{0x67C84FD29E675E34L,0x69L,0L},{0x738C9D4DB42A1F67L,0x2FL,0L},{8UL,252UL,0x6229DF0FL},{0x67C84FD29E675E34L,0x69L,0L},{0UL,0UL,0x1B70858FL}},{{0UL,0UL,0x1B70858FL},{0x67C84FD29E675E34L,0x69L,0L},{8UL,252UL,0x6229DF0FL},{0x738C9D4DB42A1F67L,0x2FL,0L},{0x67C84FD29E675E34L,0x69L,0L},{0x738C9D4DB42A1F67L,0x2FL,0L},{8UL,252UL,0x6229DF0FL},{0x67C84FD29E675E34L,0x69L,0L},{0UL,0UL,0x1B70858FL}},{{0UL,0UL,0x1B70858FL},{0x67C84FD29E675E34L,0x69L,0L},{8UL,252UL,0x6229DF0FL},{0x738C9D4DB42A1F67L,0x2FL,0L},{0x67C84FD29E675E34L,0x69L,0L},{0x738C9D4DB42A1F67L,0x2FL,0L},{8UL,252UL,0x6229DF0FL},{0x67C84FD29E675E34L,0x69L,0L},{0UL,0UL,0x1B70858FL}},{{0UL,0UL,0x1B70858FL},{0x67C84FD29E675E34L,0x69L,0L},{8UL,252UL,0x6229DF0FL},{0x738C9D4DB42A1F67L,0x2FL,0L},{0x67C84FD29E675E34L,0x69L,0L},{0x738C9D4DB42A1F67L,0x2FL,0L},{8UL,252UL,0x6229DF0FL},{0x67C84FD29E675E34L,0x69L,0L},{0UL,0UL,0x1B70858FL}},{{0UL,0UL,0x1B70858FL},{0x67C84FD29E675E34L,0x69L,0L},{8UL,252UL,0x6229DF0FL},{0x738C9D4DB42A1F67L,0x2FL,0L},{0x67C84FD29E675E34L,0x69L,0L},{0x738C9D4DB42A1F67L,0x2FL,0L},{8UL,252UL,0x6229DF0FL},{0x67C84FD29E675E34L,0x69L,0L},{0UL,0UL,0x1B70858FL}},{{0UL,0UL,0x1B70858FL},{0x67C84FD29E675E34L,0x69L,0L},{8UL,252UL,0x6229DF0FL},{0x738C9D4DB42A1F67L,0x2FL,0L},{0x67C84FD29E675E34L,0x69L,0L},{0x738C9D4DB42A1F67L,0x2FL,0L},{8UL,252UL,0x6229DF0FL},{0x67C84FD29E675E34L,0x69L,0L},{0UL,0UL,0x1B70858FL}},{{0UL,0UL,0x1B70858FL},{0x67C84FD29E675E34L,0x69L,0L},{8UL,252UL,0x6229DF0FL},{0x738C9D4DB42A1F67L,0x2FL,0L},{0x67C84FD29E675E34L,0x69L,0L},{0x738C9D4DB42A1F67L,0x2FL,0L},{8UL,252UL,0x6229DF0FL},{0x67C84FD29E675E34L,0x69L,0L},{0UL,0UL,0x1B70858FL}}}, // p_999->g_317
        (void*)0, // p_999->g_363
        &p_999->g_149, // p_999->g_364
        {{0x8160232DD780AAABL,0xB4L,0x23908C8FL}}, // p_999->g_407
        (VECTOR(int32_t, 16))((-2L), (VECTOR(int32_t, 4))((-2L), (VECTOR(int32_t, 2))((-2L), 0L), 0L), 0L, (-2L), 0L, (VECTOR(int32_t, 2))((-2L), 0L), (VECTOR(int32_t, 2))((-2L), 0L), (-2L), 0L, (-2L), 0L), // p_999->g_414
        (VECTOR(int32_t, 8))(0x2944D843L, (VECTOR(int32_t, 4))(0x2944D843L, (VECTOR(int32_t, 2))(0x2944D843L, 0x330631D7L), 0x330631D7L), 0x330631D7L, 0x2944D843L, 0x330631D7L), // p_999->g_415
        {(-10L),(-10L),(-10L),(-10L),(-10L),(-10L),(-10L),(-10L),(-10L)}, // p_999->g_448
        &p_999->g_163[1], // p_999->g_467
        &p_999->g_127[6][1][8].f1, // p_999->g_469
        {{&p_999->g_469,&p_999->g_469,&p_999->g_469,&p_999->g_469,&p_999->g_469,&p_999->g_469,&p_999->g_469}}, // p_999->g_468
        {7UL,0x1DL,-1L}, // p_999->g_479
        (VECTOR(uint32_t, 2))(0x17D4FC8AL, 6UL), // p_999->g_504
        (VECTOR(int16_t, 4))(0x7B88L, (VECTOR(int16_t, 2))(0x7B88L, 0x1655L), 0x1655L), // p_999->g_531
        0UL, // p_999->g_549
        (VECTOR(int16_t, 4))(0x24A7L, (VECTOR(int16_t, 2))(0x24A7L, (-1L)), (-1L)), // p_999->g_558
        &p_999->g_128.f0, // p_999->g_573
        &p_999->g_467, // p_999->g_577
        {0UL,0x74L,0L}, // p_999->g_609
        {0x2BL,0x2BL,0x2BL,0x2BL}, // p_999->g_632
        &p_999->g_467, // p_999->g_641
        {18446744073709551613UL,6UL,5L}, // p_999->g_646
        0x601C4337L, // p_999->g_663
        {18446744073709551609UL,0x093DL,0x6E728B8CF7F2997FL}, // p_999->g_664
        {2UL,0x71BBL,7UL}, // p_999->g_665
        {0UL,1UL,0xC18DA9CC93628E58L,0UL,{18446744073709551615UL,255UL,1L}}, // p_999->g_674
        &p_999->g_469, // p_999->g_681
        {{(void*)0,&p_999->g_681,&p_999->g_681,(void*)0,&p_999->g_681,&p_999->g_681},{(void*)0,&p_999->g_681,&p_999->g_681,(void*)0,&p_999->g_681,&p_999->g_681},{(void*)0,&p_999->g_681,&p_999->g_681,(void*)0,&p_999->g_681,&p_999->g_681},{(void*)0,&p_999->g_681,&p_999->g_681,(void*)0,&p_999->g_681,&p_999->g_681},{(void*)0,&p_999->g_681,&p_999->g_681,(void*)0,&p_999->g_681,&p_999->g_681},{(void*)0,&p_999->g_681,&p_999->g_681,(void*)0,&p_999->g_681,&p_999->g_681},{(void*)0,&p_999->g_681,&p_999->g_681,(void*)0,&p_999->g_681,&p_999->g_681},{(void*)0,&p_999->g_681,&p_999->g_681,(void*)0,&p_999->g_681,&p_999->g_681}}, // p_999->g_680
        0L, // p_999->g_686
        0x6E17L, // p_999->g_691
        (VECTOR(int16_t, 2))((-2L), 0x7B1AL), // p_999->g_718
        (VECTOR(int16_t, 2))(7L, 0x3E34L), // p_999->g_765
        &p_999->g_58, // p_999->g_796
        &p_999->g_796, // p_999->g_795
        {{(void*)0,&p_999->g_795,&p_999->g_795,&p_999->g_795,&p_999->g_795,&p_999->g_795,&p_999->g_795,&p_999->g_795,&p_999->g_795,(void*)0},{(void*)0,&p_999->g_795,&p_999->g_795,&p_999->g_795,&p_999->g_795,&p_999->g_795,&p_999->g_795,&p_999->g_795,&p_999->g_795,(void*)0},{(void*)0,&p_999->g_795,&p_999->g_795,&p_999->g_795,&p_999->g_795,&p_999->g_795,&p_999->g_795,&p_999->g_795,&p_999->g_795,(void*)0},{(void*)0,&p_999->g_795,&p_999->g_795,&p_999->g_795,&p_999->g_795,&p_999->g_795,&p_999->g_795,&p_999->g_795,&p_999->g_795,(void*)0},{(void*)0,&p_999->g_795,&p_999->g_795,&p_999->g_795,&p_999->g_795,&p_999->g_795,&p_999->g_795,&p_999->g_795,&p_999->g_795,(void*)0},{(void*)0,&p_999->g_795,&p_999->g_795,&p_999->g_795,&p_999->g_795,&p_999->g_795,&p_999->g_795,&p_999->g_795,&p_999->g_795,(void*)0},{(void*)0,&p_999->g_795,&p_999->g_795,&p_999->g_795,&p_999->g_795,&p_999->g_795,&p_999->g_795,&p_999->g_795,&p_999->g_795,(void*)0},{(void*)0,&p_999->g_795,&p_999->g_795,&p_999->g_795,&p_999->g_795,&p_999->g_795,&p_999->g_795,&p_999->g_795,&p_999->g_795,(void*)0},{(void*)0,&p_999->g_795,&p_999->g_795,&p_999->g_795,&p_999->g_795,&p_999->g_795,&p_999->g_795,&p_999->g_795,&p_999->g_795,(void*)0},{(void*)0,&p_999->g_795,&p_999->g_795,&p_999->g_795,&p_999->g_795,&p_999->g_795,&p_999->g_795,&p_999->g_795,&p_999->g_795,(void*)0}}, // p_999->g_794
        {{{&p_999->g_794[3][5]},{&p_999->g_794[3][5]},{&p_999->g_794[3][5]},{&p_999->g_794[3][5]},{&p_999->g_794[3][5]},{&p_999->g_794[3][5]},{&p_999->g_794[3][5]},{&p_999->g_794[3][5]}},{{&p_999->g_794[3][5]},{&p_999->g_794[3][5]},{&p_999->g_794[3][5]},{&p_999->g_794[3][5]},{&p_999->g_794[3][5]},{&p_999->g_794[3][5]},{&p_999->g_794[3][5]},{&p_999->g_794[3][5]}}}, // p_999->g_793
        &p_999->g_467, // p_999->g_801
        &p_999->g_407, // p_999->g_804
        &p_999->g_804, // p_999->g_803
        &p_999->g_804, // p_999->g_808
        (void*)0, // p_999->g_818
        {0x15D5133F2A33F6BDL,-2L,0x48B4B3614078D5B8L}, // p_999->g_825
        {{0x28AE51DDE65A5F40L,254UL,-1L}}, // p_999->g_842
        (VECTOR(uint32_t, 8))(9UL, (VECTOR(uint32_t, 4))(9UL, (VECTOR(uint32_t, 2))(9UL, 0UL), 0UL), 0UL, 9UL, 0UL), // p_999->g_891
        0x2939BC3FL, // p_999->g_904
        (-4L), // p_999->g_905
        {{&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467},{&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467},{&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467},{&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467,&p_999->g_467}}, // p_999->g_911
        (-1L), // p_999->g_916
        (-1L), // p_999->g_942
        (VECTOR(uint8_t, 16))(0x81L, (VECTOR(uint8_t, 4))(0x81L, (VECTOR(uint8_t, 2))(0x81L, 0xFDL), 0xFDL), 0xFDL, 0x81L, 0xFDL, (VECTOR(uint8_t, 2))(0x81L, 0xFDL), (VECTOR(uint8_t, 2))(0x81L, 0xFDL), 0x81L, 0xFDL, 0x81L, 0xFDL), // p_999->g_956
        (VECTOR(uint16_t, 16))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 1UL), 1UL), 1UL, 65535UL, 1UL, (VECTOR(uint16_t, 2))(65535UL, 1UL), (VECTOR(uint16_t, 2))(65535UL, 1UL), 65535UL, 1UL, 65535UL, 1UL), // p_999->g_957
        (VECTOR(uint16_t, 2))(1UL, 0x8BD2L), // p_999->g_958
        (VECTOR(uint32_t, 4))(0x7E9850C8L, (VECTOR(uint32_t, 2))(0x7E9850C8L, 0x63F60359L), 0x63F60359L), // p_999->g_972
        (VECTOR(int32_t, 2))(0L, 0x73E55D78L), // p_999->g_980
        &p_999->g_467, // p_999->g_984
        &p_999->g_294, // p_999->g_987
        {&p_999->g_987,&p_999->g_987,&p_999->g_987,&p_999->g_987,&p_999->g_987,&p_999->g_987,&p_999->g_987,&p_999->g_987,&p_999->g_987,&p_999->g_987}, // p_999->g_986
        sequence_input[get_global_id(0)], // p_999->global_0_offset
        sequence_input[get_global_id(1)], // p_999->global_1_offset
        sequence_input[get_global_id(2)], // p_999->global_2_offset
        sequence_input[get_local_id(0)], // p_999->local_0_offset
        sequence_input[get_local_id(1)], // p_999->local_1_offset
        sequence_input[get_local_id(2)], // p_999->local_2_offset
        sequence_input[get_group_id(0)], // p_999->group_0_offset
        sequence_input[get_group_id(1)], // p_999->group_1_offset
        sequence_input[get_group_id(2)], // p_999->group_2_offset
    };
    c_1000 = c_1001;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_999);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_999->g_4, "p_999->g_4", print_hash_value);
    transparent_crc(p_999->g_25.x, "p_999->g_25.x", print_hash_value);
    transparent_crc(p_999->g_25.y, "p_999->g_25.y", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 6; j++)
        {
            transparent_crc(p_999->g_29[i][j], "p_999->g_29[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_999->g_56, "p_999->g_56", print_hash_value);
    transparent_crc(p_999->g_57, "p_999->g_57", print_hash_value);
    transparent_crc(p_999->g_58, "p_999->g_58", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 3; j++)
        {
            for (k = 0; k < 1; k++)
            {
                transparent_crc(p_999->g_73[i][j][k], "p_999->g_73[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_999->g_74, "p_999->g_74", print_hash_value);
    transparent_crc(p_999->g_75, "p_999->g_75", print_hash_value);
    transparent_crc(p_999->g_125.f0, "p_999->g_125.f0", print_hash_value);
    transparent_crc(p_999->g_125.f1, "p_999->g_125.f1", print_hash_value);
    transparent_crc(p_999->g_125.f2, "p_999->g_125.f2", print_hash_value);
    transparent_crc(p_999->g_126.f0, "p_999->g_126.f0", print_hash_value);
    transparent_crc(p_999->g_126.f1, "p_999->g_126.f1", print_hash_value);
    transparent_crc(p_999->g_126.f2, "p_999->g_126.f2", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 3; j++)
        {
            for (k = 0; k < 9; k++)
            {
                transparent_crc(p_999->g_127[i][j][k].f0, "p_999->g_127[i][j][k].f0", print_hash_value);
                transparent_crc(p_999->g_127[i][j][k].f1, "p_999->g_127[i][j][k].f1", print_hash_value);
                transparent_crc(p_999->g_127[i][j][k].f2, "p_999->g_127[i][j][k].f2", print_hash_value);

            }
        }
    }
    transparent_crc(p_999->g_128.f0, "p_999->g_128.f0", print_hash_value);
    transparent_crc(p_999->g_128.f1, "p_999->g_128.f1", print_hash_value);
    transparent_crc(p_999->g_128.f2, "p_999->g_128.f2", print_hash_value);
    transparent_crc(p_999->g_129.f0, "p_999->g_129.f0", print_hash_value);
    transparent_crc(p_999->g_129.f1, "p_999->g_129.f1", print_hash_value);
    transparent_crc(p_999->g_129.f2, "p_999->g_129.f2", print_hash_value);
    transparent_crc(p_999->g_144.x, "p_999->g_144.x", print_hash_value);
    transparent_crc(p_999->g_144.y, "p_999->g_144.y", print_hash_value);
    transparent_crc(p_999->g_144.z, "p_999->g_144.z", print_hash_value);
    transparent_crc(p_999->g_144.w, "p_999->g_144.w", print_hash_value);
    transparent_crc(p_999->g_150.f0, "p_999->g_150.f0", print_hash_value);
    transparent_crc(p_999->g_150.f1, "p_999->g_150.f1", print_hash_value);
    transparent_crc(p_999->g_150.f2, "p_999->g_150.f2", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_999->g_163[i], "p_999->g_163[i]", print_hash_value);

    }
    transparent_crc(p_999->g_183.f0, "p_999->g_183.f0", print_hash_value);
    transparent_crc(p_999->g_183.f1, "p_999->g_183.f1", print_hash_value);
    transparent_crc(p_999->g_183.f2, "p_999->g_183.f2", print_hash_value);
    transparent_crc(p_999->g_246.x, "p_999->g_246.x", print_hash_value);
    transparent_crc(p_999->g_246.y, "p_999->g_246.y", print_hash_value);
    transparent_crc(p_999->g_246.z, "p_999->g_246.z", print_hash_value);
    transparent_crc(p_999->g_246.w, "p_999->g_246.w", print_hash_value);
    transparent_crc(p_999->g_251, "p_999->g_251", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_999->g_259[i], "p_999->g_259[i]", print_hash_value);

    }
    transparent_crc(p_999->g_263, "p_999->g_263", print_hash_value);
    transparent_crc(p_999->g_295.f0, "p_999->g_295.f0", print_hash_value);
    transparent_crc(p_999->g_295.f1, "p_999->g_295.f1", print_hash_value);
    transparent_crc(p_999->g_295.f2, "p_999->g_295.f2", print_hash_value);
    transparent_crc(p_999->g_308.s0, "p_999->g_308.s0", print_hash_value);
    transparent_crc(p_999->g_308.s1, "p_999->g_308.s1", print_hash_value);
    transparent_crc(p_999->g_308.s2, "p_999->g_308.s2", print_hash_value);
    transparent_crc(p_999->g_308.s3, "p_999->g_308.s3", print_hash_value);
    transparent_crc(p_999->g_308.s4, "p_999->g_308.s4", print_hash_value);
    transparent_crc(p_999->g_308.s5, "p_999->g_308.s5", print_hash_value);
    transparent_crc(p_999->g_308.s6, "p_999->g_308.s6", print_hash_value);
    transparent_crc(p_999->g_308.s7, "p_999->g_308.s7", print_hash_value);
    transparent_crc(p_999->g_308.s8, "p_999->g_308.s8", print_hash_value);
    transparent_crc(p_999->g_308.s9, "p_999->g_308.s9", print_hash_value);
    transparent_crc(p_999->g_308.sa, "p_999->g_308.sa", print_hash_value);
    transparent_crc(p_999->g_308.sb, "p_999->g_308.sb", print_hash_value);
    transparent_crc(p_999->g_308.sc, "p_999->g_308.sc", print_hash_value);
    transparent_crc(p_999->g_308.sd, "p_999->g_308.sd", print_hash_value);
    transparent_crc(p_999->g_308.se, "p_999->g_308.se", print_hash_value);
    transparent_crc(p_999->g_308.sf, "p_999->g_308.sf", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_999->g_317[i][j].f0, "p_999->g_317[i][j].f0", print_hash_value);
            transparent_crc(p_999->g_317[i][j].f1, "p_999->g_317[i][j].f1", print_hash_value);
            transparent_crc(p_999->g_317[i][j].f2, "p_999->g_317[i][j].f2", print_hash_value);

        }
    }
    transparent_crc(p_999->g_407.f0.f0, "p_999->g_407.f0.f0", print_hash_value);
    transparent_crc(p_999->g_407.f0.f1, "p_999->g_407.f0.f1", print_hash_value);
    transparent_crc(p_999->g_407.f0.f2, "p_999->g_407.f0.f2", print_hash_value);
    transparent_crc(p_999->g_414.s0, "p_999->g_414.s0", print_hash_value);
    transparent_crc(p_999->g_414.s1, "p_999->g_414.s1", print_hash_value);
    transparent_crc(p_999->g_414.s2, "p_999->g_414.s2", print_hash_value);
    transparent_crc(p_999->g_414.s3, "p_999->g_414.s3", print_hash_value);
    transparent_crc(p_999->g_414.s4, "p_999->g_414.s4", print_hash_value);
    transparent_crc(p_999->g_414.s5, "p_999->g_414.s5", print_hash_value);
    transparent_crc(p_999->g_414.s6, "p_999->g_414.s6", print_hash_value);
    transparent_crc(p_999->g_414.s7, "p_999->g_414.s7", print_hash_value);
    transparent_crc(p_999->g_414.s8, "p_999->g_414.s8", print_hash_value);
    transparent_crc(p_999->g_414.s9, "p_999->g_414.s9", print_hash_value);
    transparent_crc(p_999->g_414.sa, "p_999->g_414.sa", print_hash_value);
    transparent_crc(p_999->g_414.sb, "p_999->g_414.sb", print_hash_value);
    transparent_crc(p_999->g_414.sc, "p_999->g_414.sc", print_hash_value);
    transparent_crc(p_999->g_414.sd, "p_999->g_414.sd", print_hash_value);
    transparent_crc(p_999->g_414.se, "p_999->g_414.se", print_hash_value);
    transparent_crc(p_999->g_414.sf, "p_999->g_414.sf", print_hash_value);
    transparent_crc(p_999->g_415.s0, "p_999->g_415.s0", print_hash_value);
    transparent_crc(p_999->g_415.s1, "p_999->g_415.s1", print_hash_value);
    transparent_crc(p_999->g_415.s2, "p_999->g_415.s2", print_hash_value);
    transparent_crc(p_999->g_415.s3, "p_999->g_415.s3", print_hash_value);
    transparent_crc(p_999->g_415.s4, "p_999->g_415.s4", print_hash_value);
    transparent_crc(p_999->g_415.s5, "p_999->g_415.s5", print_hash_value);
    transparent_crc(p_999->g_415.s6, "p_999->g_415.s6", print_hash_value);
    transparent_crc(p_999->g_415.s7, "p_999->g_415.s7", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_999->g_448[i], "p_999->g_448[i]", print_hash_value);

    }
    transparent_crc(p_999->g_479.f0, "p_999->g_479.f0", print_hash_value);
    transparent_crc(p_999->g_479.f1, "p_999->g_479.f1", print_hash_value);
    transparent_crc(p_999->g_479.f2, "p_999->g_479.f2", print_hash_value);
    transparent_crc(p_999->g_504.x, "p_999->g_504.x", print_hash_value);
    transparent_crc(p_999->g_504.y, "p_999->g_504.y", print_hash_value);
    transparent_crc(p_999->g_531.x, "p_999->g_531.x", print_hash_value);
    transparent_crc(p_999->g_531.y, "p_999->g_531.y", print_hash_value);
    transparent_crc(p_999->g_531.z, "p_999->g_531.z", print_hash_value);
    transparent_crc(p_999->g_531.w, "p_999->g_531.w", print_hash_value);
    transparent_crc(p_999->g_549, "p_999->g_549", print_hash_value);
    transparent_crc(p_999->g_558.x, "p_999->g_558.x", print_hash_value);
    transparent_crc(p_999->g_558.y, "p_999->g_558.y", print_hash_value);
    transparent_crc(p_999->g_558.z, "p_999->g_558.z", print_hash_value);
    transparent_crc(p_999->g_558.w, "p_999->g_558.w", print_hash_value);
    transparent_crc(p_999->g_609.f0, "p_999->g_609.f0", print_hash_value);
    transparent_crc(p_999->g_609.f1, "p_999->g_609.f1", print_hash_value);
    transparent_crc(p_999->g_609.f2, "p_999->g_609.f2", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_999->g_632[i], "p_999->g_632[i]", print_hash_value);

    }
    transparent_crc(p_999->g_646.f0, "p_999->g_646.f0", print_hash_value);
    transparent_crc(p_999->g_646.f1, "p_999->g_646.f1", print_hash_value);
    transparent_crc(p_999->g_646.f2, "p_999->g_646.f2", print_hash_value);
    transparent_crc(p_999->g_663, "p_999->g_663", print_hash_value);
    transparent_crc(p_999->g_664.f0, "p_999->g_664.f0", print_hash_value);
    transparent_crc(p_999->g_664.f1, "p_999->g_664.f1", print_hash_value);
    transparent_crc(p_999->g_664.f2, "p_999->g_664.f2", print_hash_value);
    transparent_crc(p_999->g_665.f0, "p_999->g_665.f0", print_hash_value);
    transparent_crc(p_999->g_665.f1, "p_999->g_665.f1", print_hash_value);
    transparent_crc(p_999->g_665.f2, "p_999->g_665.f2", print_hash_value);
    transparent_crc(p_999->g_674.f0, "p_999->g_674.f0", print_hash_value);
    transparent_crc(p_999->g_674.f1, "p_999->g_674.f1", print_hash_value);
    transparent_crc(p_999->g_674.f2, "p_999->g_674.f2", print_hash_value);
    transparent_crc(p_999->g_674.f3, "p_999->g_674.f3", print_hash_value);
    transparent_crc(p_999->g_674.f4.f0, "p_999->g_674.f4.f0", print_hash_value);
    transparent_crc(p_999->g_674.f4.f1, "p_999->g_674.f4.f1", print_hash_value);
    transparent_crc(p_999->g_674.f4.f2, "p_999->g_674.f4.f2", print_hash_value);
    transparent_crc(p_999->g_686, "p_999->g_686", print_hash_value);
    transparent_crc(p_999->g_691, "p_999->g_691", print_hash_value);
    transparent_crc(p_999->g_718.x, "p_999->g_718.x", print_hash_value);
    transparent_crc(p_999->g_718.y, "p_999->g_718.y", print_hash_value);
    transparent_crc(p_999->g_765.x, "p_999->g_765.x", print_hash_value);
    transparent_crc(p_999->g_765.y, "p_999->g_765.y", print_hash_value);
    transparent_crc(p_999->g_825.f0, "p_999->g_825.f0", print_hash_value);
    transparent_crc(p_999->g_825.f1, "p_999->g_825.f1", print_hash_value);
    transparent_crc(p_999->g_825.f2, "p_999->g_825.f2", print_hash_value);
    transparent_crc(p_999->g_842.f0.f0, "p_999->g_842.f0.f0", print_hash_value);
    transparent_crc(p_999->g_842.f0.f1, "p_999->g_842.f0.f1", print_hash_value);
    transparent_crc(p_999->g_842.f0.f2, "p_999->g_842.f0.f2", print_hash_value);
    transparent_crc(p_999->g_891.s0, "p_999->g_891.s0", print_hash_value);
    transparent_crc(p_999->g_891.s1, "p_999->g_891.s1", print_hash_value);
    transparent_crc(p_999->g_891.s2, "p_999->g_891.s2", print_hash_value);
    transparent_crc(p_999->g_891.s3, "p_999->g_891.s3", print_hash_value);
    transparent_crc(p_999->g_891.s4, "p_999->g_891.s4", print_hash_value);
    transparent_crc(p_999->g_891.s5, "p_999->g_891.s5", print_hash_value);
    transparent_crc(p_999->g_891.s6, "p_999->g_891.s6", print_hash_value);
    transparent_crc(p_999->g_891.s7, "p_999->g_891.s7", print_hash_value);
    transparent_crc(p_999->g_904, "p_999->g_904", print_hash_value);
    transparent_crc(p_999->g_905, "p_999->g_905", print_hash_value);
    transparent_crc(p_999->g_916, "p_999->g_916", print_hash_value);
    transparent_crc(p_999->g_942, "p_999->g_942", print_hash_value);
    transparent_crc(p_999->g_956.s0, "p_999->g_956.s0", print_hash_value);
    transparent_crc(p_999->g_956.s1, "p_999->g_956.s1", print_hash_value);
    transparent_crc(p_999->g_956.s2, "p_999->g_956.s2", print_hash_value);
    transparent_crc(p_999->g_956.s3, "p_999->g_956.s3", print_hash_value);
    transparent_crc(p_999->g_956.s4, "p_999->g_956.s4", print_hash_value);
    transparent_crc(p_999->g_956.s5, "p_999->g_956.s5", print_hash_value);
    transparent_crc(p_999->g_956.s6, "p_999->g_956.s6", print_hash_value);
    transparent_crc(p_999->g_956.s7, "p_999->g_956.s7", print_hash_value);
    transparent_crc(p_999->g_956.s8, "p_999->g_956.s8", print_hash_value);
    transparent_crc(p_999->g_956.s9, "p_999->g_956.s9", print_hash_value);
    transparent_crc(p_999->g_956.sa, "p_999->g_956.sa", print_hash_value);
    transparent_crc(p_999->g_956.sb, "p_999->g_956.sb", print_hash_value);
    transparent_crc(p_999->g_956.sc, "p_999->g_956.sc", print_hash_value);
    transparent_crc(p_999->g_956.sd, "p_999->g_956.sd", print_hash_value);
    transparent_crc(p_999->g_956.se, "p_999->g_956.se", print_hash_value);
    transparent_crc(p_999->g_956.sf, "p_999->g_956.sf", print_hash_value);
    transparent_crc(p_999->g_957.s0, "p_999->g_957.s0", print_hash_value);
    transparent_crc(p_999->g_957.s1, "p_999->g_957.s1", print_hash_value);
    transparent_crc(p_999->g_957.s2, "p_999->g_957.s2", print_hash_value);
    transparent_crc(p_999->g_957.s3, "p_999->g_957.s3", print_hash_value);
    transparent_crc(p_999->g_957.s4, "p_999->g_957.s4", print_hash_value);
    transparent_crc(p_999->g_957.s5, "p_999->g_957.s5", print_hash_value);
    transparent_crc(p_999->g_957.s6, "p_999->g_957.s6", print_hash_value);
    transparent_crc(p_999->g_957.s7, "p_999->g_957.s7", print_hash_value);
    transparent_crc(p_999->g_957.s8, "p_999->g_957.s8", print_hash_value);
    transparent_crc(p_999->g_957.s9, "p_999->g_957.s9", print_hash_value);
    transparent_crc(p_999->g_957.sa, "p_999->g_957.sa", print_hash_value);
    transparent_crc(p_999->g_957.sb, "p_999->g_957.sb", print_hash_value);
    transparent_crc(p_999->g_957.sc, "p_999->g_957.sc", print_hash_value);
    transparent_crc(p_999->g_957.sd, "p_999->g_957.sd", print_hash_value);
    transparent_crc(p_999->g_957.se, "p_999->g_957.se", print_hash_value);
    transparent_crc(p_999->g_957.sf, "p_999->g_957.sf", print_hash_value);
    transparent_crc(p_999->g_958.x, "p_999->g_958.x", print_hash_value);
    transparent_crc(p_999->g_958.y, "p_999->g_958.y", print_hash_value);
    transparent_crc(p_999->g_972.x, "p_999->g_972.x", print_hash_value);
    transparent_crc(p_999->g_972.y, "p_999->g_972.y", print_hash_value);
    transparent_crc(p_999->g_972.z, "p_999->g_972.z", print_hash_value);
    transparent_crc(p_999->g_972.w, "p_999->g_972.w", print_hash_value);
    transparent_crc(p_999->g_980.x, "p_999->g_980.x", print_hash_value);
    transparent_crc(p_999->g_980.y, "p_999->g_980.y", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
