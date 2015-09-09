// --atomics 50 ---atomic_reductions ---fake_divergence ---inter_thread_comm -g 52,6,16 -l 1,6,2
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

__constant uint32_t permutations[10][12] = {
{9,10,3,8,0,1,5,7,6,2,11,4}, // permutation 0
{10,6,4,1,7,3,9,0,8,11,5,2}, // permutation 1
{11,0,2,10,4,6,3,1,5,8,7,9}, // permutation 2
{4,2,9,8,1,3,11,10,6,5,7,0}, // permutation 3
{1,2,8,0,10,7,11,6,3,9,5,4}, // permutation 4
{7,8,3,10,9,11,6,1,4,5,2,0}, // permutation 5
{9,6,4,3,0,2,8,7,5,1,10,11}, // permutation 6
{1,10,3,7,5,0,8,4,11,9,6,2}, // permutation 7
{2,0,3,7,8,11,4,6,9,5,10,1}, // permutation 8
{9,0,7,8,2,3,4,10,6,1,5,11} // permutation 9
};

// Seed: 34

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   uint16_t  f0;
   uint64_t  f1;
   uint16_t  f2;
   volatile int8_t  f3;
   volatile int16_t  f4;
   uint32_t  f5;
   int64_t  f6;
   volatile uint32_t  f7;
};

union U1 {
   int16_t  f0;
   volatile int16_t  f1;
};

union U2 {
   int16_t  f0;
   volatile int8_t * volatile  f1;
   int64_t  f2;
};

union U3 {
   int32_t  f0;
};

struct S4 {
    int32_t g_2;
    int8_t g_16;
    volatile VECTOR(uint32_t, 8) g_22;
    volatile VECTOR(uint32_t, 16) g_23;
    VECTOR(uint32_t, 16) g_25;
    volatile VECTOR(uint32_t, 8) g_28;
    volatile VECTOR(uint32_t, 16) g_33;
    uint8_t g_37;
    volatile VECTOR(int64_t, 4) g_48;
    volatile VECTOR(int64_t, 4) g_51;
    VECTOR(int8_t, 4) g_62;
    volatile int8_t **g_65;
    int32_t g_93;
    uint64_t g_94[5];
    int32_t *g_106;
    int32_t **g_105;
    int32_t **g_107;
    uint32_t g_116[9][3];
    VECTOR(uint64_t, 8) g_120;
    int64_t g_122;
    VECTOR(uint16_t, 2) g_146;
    VECTOR(int64_t, 4) g_147;
    VECTOR(uint8_t, 16) g_154;
    VECTOR(uint8_t, 4) g_155;
    union U2 g_157;
    union U2 g_158;
    volatile union U2 g_160;
    volatile union U2 *g_159;
    uint32_t g_167;
    int16_t g_216;
    uint32_t g_230;
    int8_t g_234;
    struct S0 g_237;
    struct S0 * volatile g_238[6];
    struct S0 g_239;
    int8_t *g_248;
    int8_t **g_247;
    uint32_t g_262;
    int8_t *** volatile g_266;
    volatile VECTOR(uint32_t, 2) g_268;
    volatile VECTOR(uint32_t, 2) g_269;
    struct S0 g_276;
    volatile struct S0 g_278;
    volatile struct S0 *g_277;
    VECTOR(int16_t, 2) g_294;
    volatile union U2 g_303;
    VECTOR(uint16_t, 4) g_330;
    VECTOR(int8_t, 2) g_364;
    union U1 g_365;
    volatile uint16_t * volatile g_395[3][10][4];
    union U1 g_409;
    volatile int32_t g_430;
    volatile uint32_t g_431;
    volatile int64_t g_446;
    uint16_t g_447;
    volatile int64_t **g_458;
    int32_t ** volatile g_477;
    volatile int16_t g_480;
    uint8_t g_483;
    int32_t ** volatile g_487;
    int32_t ** volatile g_488;
    int32_t ** volatile g_489;
    int32_t ** volatile g_490;
    volatile int64_t g_515;
    volatile uint32_t g_516;
    int32_t *** volatile g_520;
    volatile union U1 g_523[3];
    VECTOR(uint16_t, 16) g_529;
    struct S0 g_536;
    union U3 g_544[9];
    volatile uint16_t **g_551;
    int32_t g_570;
    uint32_t g_571;
    union U1 ** volatile g_579;
    union U1 *g_581;
    union U1 ** volatile g_580[1][10];
    union U2 g_584;
    VECTOR(int16_t, 8) g_613;
    int32_t * volatile g_649;
    union U1 g_652;
    union U1 g_653;
    union U1 g_654;
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
    uint32_t tid;
    __local volatile uint32_t *l_atomic_input;
    __local volatile uint32_t *l_special_values;
    __global volatile uint32_t *g_atomic_input;
    __global volatile uint32_t *g_special_values;
    __local volatile uint32_t *l_atomic_reduction;
    __global volatile uint32_t *g_atomic_reduction;
    __local int64_t *l_comm_values;
    __global int64_t *g_comm_values;
};


/* --- FORWARD DECLARATIONS --- */
union U1  func_1(struct S4 * p_655);
int32_t  func_6(int8_t * p_7, uint32_t  p_8, struct S4 * p_655);
int8_t * func_9(uint32_t  p_10, struct S4 * p_655);
uint8_t  func_11(int8_t * p_12, int8_t * p_13, int32_t  p_14, struct S4 * p_655);
int8_t * func_17(int32_t  p_18, int8_t  p_19, struct S4 * p_655);
uint32_t  func_34(int32_t  p_35, struct S4 * p_655);
int8_t ** func_38(uint8_t  p_39, int32_t  p_40, int64_t  p_41, uint32_t  p_42, uint8_t  p_43, struct S4 * p_655);
uint32_t  func_54(uint64_t  p_55, int8_t * p_56, int32_t  p_57, int8_t * p_58, int8_t ** p_59, struct S4 * p_655);
uint16_t  func_71(int32_t  p_72, int64_t  p_73, uint64_t  p_74, int64_t  p_75, int64_t  p_76, struct S4 * p_655);
int8_t * func_82(int8_t * p_83, int8_t ** p_84, uint32_t  p_85, struct S4 * p_655);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_655->g_2 p_655->g_276.f1 p_655->g_613 p_655->g_62 p_655->g_536.f5 p_655->g_154 p_655->g_106 p_655->g_248 p_655->g_234 p_655->g_529 p_655->g_239.f5 p_655->g_105 p_655->g_520 p_655->g_237.f1 p_655->g_447 p_655->g_649 p_655->g_93 p_655->g_239.f1 p_655->g_652 p_655->g_653 p_655->g_654
 * writes: p_655->g_2 p_655->g_276.f1 p_655->g_216 p_655->g_37 p_655->g_239.f5 p_655->g_536.f5 p_655->g_94 p_655->g_93 p_655->g_239.f1
 */
union U1  func_1(struct S4 * p_655)
{ /* block id: 4 */
    VECTOR(uint32_t, 2) l_26 = (VECTOR(uint32_t, 2))(0xA550E8F7L, 0x8FB6F85AL);
    VECTOR(uint32_t, 2) l_29 = (VECTOR(uint32_t, 2))(0xAD14CA72L, 0x566E66B6L);
    int32_t l_279 = 0L;
    uint64_t *l_594 = &p_655->g_276.f1;
    VECTOR(int64_t, 8) l_609 = (VECTOR(int64_t, 8))(0x39FCCD86100BAA80L, (VECTOR(int64_t, 4))(0x39FCCD86100BAA80L, (VECTOR(int64_t, 2))(0x39FCCD86100BAA80L, 2L), 2L), 2L, 0x39FCCD86100BAA80L, 2L);
    uint16_t **l_610 = (void*)0;
    int16_t *l_614 = &p_655->g_216;
    uint8_t *l_617 = &p_655->g_37;
    VECTOR(int64_t, 16) l_628 = (VECTOR(int64_t, 16))(0x69B71E8BBE87A6C7L, (VECTOR(int64_t, 4))(0x69B71E8BBE87A6C7L, (VECTOR(int64_t, 2))(0x69B71E8BBE87A6C7L, 0x28B570551EAFBC1CL), 0x28B570551EAFBC1CL), 0x28B570551EAFBC1CL, 0x69B71E8BBE87A6C7L, 0x28B570551EAFBC1CL, (VECTOR(int64_t, 2))(0x69B71E8BBE87A6C7L, 0x28B570551EAFBC1CL), (VECTOR(int64_t, 2))(0x69B71E8BBE87A6C7L, 0x28B570551EAFBC1CL), 0x69B71E8BBE87A6C7L, 0x28B570551EAFBC1CL, 0x69B71E8BBE87A6C7L, 0x28B570551EAFBC1CL);
    VECTOR(uint16_t, 8) l_637 = (VECTOR(uint16_t, 8))(9UL, (VECTOR(uint16_t, 4))(9UL, (VECTOR(uint16_t, 2))(9UL, 65529UL), 65529UL), 65529UL, 9UL, 65529UL);
    uint16_t l_648[8][9] = {{0x7669L,1UL,65535UL,65535UL,0UL,0x7669L,65535UL,0xA796L,65535UL},{0x7669L,1UL,65535UL,65535UL,0UL,0x7669L,65535UL,0xA796L,65535UL},{0x7669L,1UL,65535UL,65535UL,0UL,0x7669L,65535UL,0xA796L,65535UL},{0x7669L,1UL,65535UL,65535UL,0UL,0x7669L,65535UL,0xA796L,65535UL},{0x7669L,1UL,65535UL,65535UL,0UL,0x7669L,65535UL,0xA796L,65535UL},{0x7669L,1UL,65535UL,65535UL,0UL,0x7669L,65535UL,0xA796L,65535UL},{0x7669L,1UL,65535UL,65535UL,0UL,0x7669L,65535UL,0xA796L,65535UL},{0x7669L,1UL,65535UL,65535UL,0UL,0x7669L,65535UL,0xA796L,65535UL}};
    int i, j;
    for (p_655->g_2 = 7; (p_655->g_2 < (-24)); p_655->g_2 = safe_sub_func_int64_t_s_s(p_655->g_2, 8))
    { /* block id: 7 */
        uint16_t l_5 = 0x369BL;
        int8_t *l_15[4][2];
        VECTOR(uint32_t, 16) l_24 = (VECTOR(uint32_t, 16))(0x03B15A8DL, (VECTOR(uint32_t, 4))(0x03B15A8DL, (VECTOR(uint32_t, 2))(0x03B15A8DL, 1UL), 1UL), 1UL, 0x03B15A8DL, 1UL, (VECTOR(uint32_t, 2))(0x03B15A8DL, 1UL), (VECTOR(uint32_t, 2))(0x03B15A8DL, 1UL), 0x03B15A8DL, 1UL, 0x03B15A8DL, 1UL);
        VECTOR(uint32_t, 16) l_27 = (VECTOR(uint32_t, 16))(4294967286UL, (VECTOR(uint32_t, 4))(4294967286UL, (VECTOR(uint32_t, 2))(4294967286UL, 4294967293UL), 4294967293UL), 4294967293UL, 4294967286UL, 4294967293UL, (VECTOR(uint32_t, 2))(4294967286UL, 4294967293UL), (VECTOR(uint32_t, 2))(4294967286UL, 4294967293UL), 4294967286UL, 4294967293UL, 4294967286UL, 4294967293UL);
        VECTOR(uint32_t, 8) l_30 = (VECTOR(uint32_t, 8))(4294967293UL, (VECTOR(uint32_t, 4))(4294967293UL, (VECTOR(uint32_t, 2))(4294967293UL, 0x17092FF8L), 0x17092FF8L), 0x17092FF8L, 4294967293UL, 0x17092FF8L);
        VECTOR(uint32_t, 4) l_31 = (VECTOR(uint32_t, 4))(4294967287UL, (VECTOR(uint32_t, 2))(4294967287UL, 4294967295UL), 4294967295UL);
        VECTOR(uint32_t, 4) l_32 = (VECTOR(uint32_t, 4))(0x73B020B2L, (VECTOR(uint32_t, 2))(0x73B020B2L, 0x47E5F8F0L), 0x47E5F8F0L);
        VECTOR(uint32_t, 2) l_267 = (VECTOR(uint32_t, 2))(4294967292UL, 0x41EEDB1DL);
        struct S0 *l_275 = &p_655->g_276;
        uint32_t *l_280 = &p_655->g_276.f5;
        int32_t *l_587[8][2][8] = {{{&p_655->g_544[1].f0,&p_655->g_544[1].f0,&p_655->g_544[1].f0,&p_655->g_2,(void*)0,&p_655->g_2,&p_655->g_544[1].f0,&p_655->g_544[1].f0},{&p_655->g_544[1].f0,&p_655->g_544[1].f0,&p_655->g_544[1].f0,&p_655->g_2,(void*)0,&p_655->g_2,&p_655->g_544[1].f0,&p_655->g_544[1].f0}},{{&p_655->g_544[1].f0,&p_655->g_544[1].f0,&p_655->g_544[1].f0,&p_655->g_2,(void*)0,&p_655->g_2,&p_655->g_544[1].f0,&p_655->g_544[1].f0},{&p_655->g_544[1].f0,&p_655->g_544[1].f0,&p_655->g_544[1].f0,&p_655->g_2,(void*)0,&p_655->g_2,&p_655->g_544[1].f0,&p_655->g_544[1].f0}},{{&p_655->g_544[1].f0,&p_655->g_544[1].f0,&p_655->g_544[1].f0,&p_655->g_2,(void*)0,&p_655->g_2,&p_655->g_544[1].f0,&p_655->g_544[1].f0},{&p_655->g_544[1].f0,&p_655->g_544[1].f0,&p_655->g_544[1].f0,&p_655->g_2,(void*)0,&p_655->g_2,&p_655->g_544[1].f0,&p_655->g_544[1].f0}},{{&p_655->g_544[1].f0,&p_655->g_544[1].f0,&p_655->g_544[1].f0,&p_655->g_2,(void*)0,&p_655->g_2,&p_655->g_544[1].f0,&p_655->g_544[1].f0},{&p_655->g_544[1].f0,&p_655->g_544[1].f0,&p_655->g_544[1].f0,&p_655->g_2,(void*)0,&p_655->g_2,&p_655->g_544[1].f0,&p_655->g_544[1].f0}},{{&p_655->g_544[1].f0,&p_655->g_544[1].f0,&p_655->g_544[1].f0,&p_655->g_2,(void*)0,&p_655->g_2,&p_655->g_544[1].f0,&p_655->g_544[1].f0},{&p_655->g_544[1].f0,&p_655->g_544[1].f0,&p_655->g_544[1].f0,&p_655->g_2,(void*)0,&p_655->g_2,&p_655->g_544[1].f0,&p_655->g_544[1].f0}},{{&p_655->g_544[1].f0,&p_655->g_544[1].f0,&p_655->g_544[1].f0,&p_655->g_2,(void*)0,&p_655->g_2,&p_655->g_544[1].f0,&p_655->g_544[1].f0},{&p_655->g_544[1].f0,&p_655->g_544[1].f0,&p_655->g_544[1].f0,&p_655->g_2,(void*)0,&p_655->g_2,&p_655->g_544[1].f0,&p_655->g_544[1].f0}},{{&p_655->g_544[1].f0,&p_655->g_544[1].f0,&p_655->g_544[1].f0,&p_655->g_2,(void*)0,&p_655->g_2,&p_655->g_544[1].f0,&p_655->g_544[1].f0},{&p_655->g_544[1].f0,&p_655->g_544[1].f0,&p_655->g_544[1].f0,&p_655->g_2,(void*)0,&p_655->g_2,&p_655->g_544[1].f0,&p_655->g_544[1].f0}},{{&p_655->g_544[1].f0,&p_655->g_544[1].f0,&p_655->g_544[1].f0,&p_655->g_2,(void*)0,&p_655->g_2,&p_655->g_544[1].f0,&p_655->g_544[1].f0},{&p_655->g_544[1].f0,&p_655->g_544[1].f0,&p_655->g_544[1].f0,&p_655->g_2,(void*)0,&p_655->g_2,&p_655->g_544[1].f0,&p_655->g_544[1].f0}}};
        int i, j, k;
        for (i = 0; i < 4; i++)
        {
            for (j = 0; j < 2; j++)
                l_15[i][j] = &p_655->g_16;
        }
        if (l_5)
            break;
    }
    if ((safe_lshift_func_uint8_t_u_s((((safe_sub_func_uint32_t_u_u(l_26.x, (((+(safe_mod_func_uint64_t_u_u(((*l_594)--), (safe_add_func_uint8_t_u_u((safe_mod_func_int64_t_s_s(l_279, ((safe_div_func_uint32_t_u_u((safe_div_func_uint8_t_u_u((safe_add_func_uint16_t_u_u((0xC0L ^ (0x04L & (safe_mul_func_uint16_t_u_u((l_26.y != (!((VECTOR(int64_t, 4))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(l_609.s17)), 0x726C2F8884AF09A1L, 0x65047A5188A24170L)))).y)), l_609.s2)))), (((l_610 == (void*)0) > (safe_mul_func_int16_t_s_s(((*l_614) = ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(p_655->g_613.s14252313)).odd)).yyywzyww)).s5), (safe_rshift_func_uint8_t_u_u(((*l_617) = (p_655->g_62.w , l_609.s1)), p_655->g_536.f5))))) == 0L))), l_26.x)), 0x33F0C484L)) & 0x0FD3L))), (-1L)))))) & p_655->g_154.s8) <= l_26.y))) <= l_279) | 0x5E4A2F1890C6F0F1L), 0)))
    { /* block id: 349 */
        uint32_t *l_629 = &p_655->g_239.f5;
        struct S0 *l_631 = &p_655->g_276;
        struct S0 **l_630 = &l_631;
        struct S0 ***l_632 = (void*)0;
        struct S0 ***l_633 = (void*)0;
        struct S0 **l_635 = &l_631;
        struct S0 ***l_634 = &l_635;
        (**p_655->g_105) = (safe_lshift_func_int8_t_s_s(((((*p_655->g_106) != ((*l_629) &= (safe_mul_func_int8_t_s_s((*p_655->g_248), (safe_rshift_func_int16_t_s_u((safe_lshift_func_uint16_t_u_s((~(safe_rshift_func_int16_t_s_u((!p_655->g_529.s3), (l_29.x ^ ((VECTOR(int64_t, 4))(l_628.s51a8)).w)))), 2)), 10)))))) , l_630) != ((*l_634) = (void*)0)), 4));
    }
    else
    { /* block id: 353 */
        uint16_t l_636 = 8UL;
        uint32_t *l_644 = &p_655->g_536.f5;
        uint16_t l_645[5];
        int i;
        for (i = 0; i < 5; i++)
            l_645[i] = 0x4ABFL;
        l_636 |= (***p_655->g_520);
        (*p_655->g_649) ^= (((VECTOR(uint16_t, 16))(l_637.s0461665436270517)).s0 != (l_636 ^ (((VECTOR(uint32_t, 2))(4294967291UL, 0xC0500B04L)).odd == ((**p_655->g_105) = (safe_lshift_func_uint16_t_u_u((l_636 & ((void*)0 == &p_655->g_278)), ((((void*)0 == l_644) < (((p_655->g_94[4] = ((l_645[2] , (safe_sub_func_uint8_t_u_u(p_655->g_237.f1, (((*l_644) = (l_609.s0 <= p_655->g_447)) > l_648[6][2])))) >= (*p_655->g_248))) , 1L) & 0x5ECEL)) & l_609.s2)))))));
        for (p_655->g_239.f1 = 0; (p_655->g_239.f1 == 35); ++p_655->g_239.f1)
        { /* block id: 361 */
            return p_655->g_652;
        }
        return p_655->g_653;
    }
    return p_655->g_654;
}


/* ------------------------------------------ */
/* 
 * reads : p_655->g_584
 * writes: p_655->g_106
 */
int32_t  func_6(int8_t * p_7, uint32_t  p_8, struct S4 * p_655)
{ /* block id: 341 */
    int32_t *l_585 = (void*)0;
    int32_t **l_586 = &p_655->g_106;
    (*l_586) = (p_655->g_584 , l_585);
    return p_8;
}


/* ------------------------------------------ */
/* 
 * reads : p_655->g_276.f2 p_655->g_458 p_655->g_477 p_655->g_106 p_655->g_483 p_655->g_488 p_655->g_490
 * writes: p_655->g_276.f2 p_655->g_216 p_655->g_409.f0 p_655->g_458 p_655->g_167 p_655->g_106 p_655->g_237.f0 p_655->g_483
 */
int8_t * func_9(uint32_t  p_10, struct S4 * p_655)
{ /* block id: 244 */
    uint32_t l_451 = 0x1E63FED3L;
    int32_t l_473 = 0L;
    int32_t l_510 = 0x049DB2DBL;
    int32_t l_511 = 0L;
    int32_t l_512 = 0x6EE257C0L;
    union U3 l_546 = {0x10D65D96L};
    uint32_t l_549 = 1UL;
    int32_t *l_560 = (void*)0;
    int8_t *l_583 = &p_655->g_234;
    l_451 ^= ((0x875B53FB048864D2L > 18446744073709551610UL) || ((void*)0 == &p_655->g_238[4]));
    for (p_655->g_276.f2 = 0; (p_655->g_276.f2 >= 30); p_655->g_276.f2 = safe_add_func_uint16_t_u_u(p_655->g_276.f2, 9))
    { /* block id: 248 */
        uint64_t l_474 = 18446744073709551613UL;
        int32_t l_482[7];
        int64_t *l_494 = (void*)0;
        int64_t **l_493 = &l_494;
        int64_t ***l_492 = &l_493;
        VECTOR(int8_t, 8) l_495 = (VECTOR(int8_t, 8))(0x59L, (VECTOR(int8_t, 4))(0x59L, (VECTOR(int8_t, 2))(0x59L, 0L), 0L), 0L, 0x59L, 0L);
        uint8_t *l_500 = (void*)0;
        uint16_t *l_503 = &p_655->g_239.f0;
        uint16_t *l_504 = (void*)0;
        int8_t *l_505[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int32_t l_514 = 0x01948BFCL;
        int32_t **l_519 = (void*)0;
        VECTOR(uint16_t, 4) l_530 = (VECTOR(uint16_t, 4))(0xE385L, (VECTOR(uint16_t, 2))(0xE385L, 0x31AEL), 0x31AEL);
        uint64_t l_531 = 18446744073709551613UL;
        int32_t *l_556[4] = {&l_482[6],&l_482[6],&l_482[6],&l_482[6]};
        int i;
        for (i = 0; i < 7; i++)
            l_482[i] = 1L;
        for (p_655->g_216 = 0; (p_655->g_216 < (-30)); --p_655->g_216)
        { /* block id: 251 */
            VECTOR(int32_t, 4) l_481 = (VECTOR(int32_t, 4))(0x526F1D96L, (VECTOR(int32_t, 2))(0x526F1D96L, 0x51179D6EL), 0x51179D6EL);
            int32_t *l_486 = &l_482[6];
            int i;
            for (p_655->g_409.f0 = 21; (p_655->g_409.f0 <= 11); p_655->g_409.f0 = safe_sub_func_int64_t_s_s(p_655->g_409.f0, 5))
            { /* block id: 254 */
                volatile int64_t ***l_459 = &p_655->g_458;
                int32_t l_462 = 0x000DC1BAL;
                int32_t l_467 = (-1L);
                VECTOR(int32_t, 16) l_491 = (VECTOR(int32_t, 16))(0x36240CD9L, (VECTOR(int32_t, 4))(0x36240CD9L, (VECTOR(int32_t, 2))(0x36240CD9L, 0x1DE86189L), 0x1DE86189L), 0x1DE86189L, 0x36240CD9L, 0x1DE86189L, (VECTOR(int32_t, 2))(0x36240CD9L, 0x1DE86189L), (VECTOR(int32_t, 2))(0x36240CD9L, 0x1DE86189L), 0x36240CD9L, 0x1DE86189L, 0x36240CD9L, 0x1DE86189L);
                int i;
                (*l_459) = p_655->g_458;
                for (p_655->g_167 = 0; (p_655->g_167 <= 15); p_655->g_167 = safe_add_func_int16_t_s_s(p_655->g_167, 4))
                { /* block id: 258 */
                    int32_t *l_463 = &l_462;
                    int32_t *l_464 = &l_462;
                    int32_t *l_465 = (void*)0;
                    int32_t *l_466 = &l_462;
                    int32_t *l_468 = &l_462;
                    int32_t l_469 = 0x28989D7EL;
                    int32_t *l_470 = &l_467;
                    int32_t *l_471[3];
                    int32_t l_472[4][4][9] = {{{(-3L),0x283BE53AL,0x3ADD51F3L,0x2BD4F19AL,0x7DDB6633L,0L,1L,0x3566885BL,0x2D109EB5L},{(-3L),0x283BE53AL,0x3ADD51F3L,0x2BD4F19AL,0x7DDB6633L,0L,1L,0x3566885BL,0x2D109EB5L},{(-3L),0x283BE53AL,0x3ADD51F3L,0x2BD4F19AL,0x7DDB6633L,0L,1L,0x3566885BL,0x2D109EB5L},{(-3L),0x283BE53AL,0x3ADD51F3L,0x2BD4F19AL,0x7DDB6633L,0L,1L,0x3566885BL,0x2D109EB5L}},{{(-3L),0x283BE53AL,0x3ADD51F3L,0x2BD4F19AL,0x7DDB6633L,0L,1L,0x3566885BL,0x2D109EB5L},{(-3L),0x283BE53AL,0x3ADD51F3L,0x2BD4F19AL,0x7DDB6633L,0L,1L,0x3566885BL,0x2D109EB5L},{(-3L),0x283BE53AL,0x3ADD51F3L,0x2BD4F19AL,0x7DDB6633L,0L,1L,0x3566885BL,0x2D109EB5L},{(-3L),0x283BE53AL,0x3ADD51F3L,0x2BD4F19AL,0x7DDB6633L,0L,1L,0x3566885BL,0x2D109EB5L}},{{(-3L),0x283BE53AL,0x3ADD51F3L,0x2BD4F19AL,0x7DDB6633L,0L,1L,0x3566885BL,0x2D109EB5L},{(-3L),0x283BE53AL,0x3ADD51F3L,0x2BD4F19AL,0x7DDB6633L,0L,1L,0x3566885BL,0x2D109EB5L},{(-3L),0x283BE53AL,0x3ADD51F3L,0x2BD4F19AL,0x7DDB6633L,0L,1L,0x3566885BL,0x2D109EB5L},{(-3L),0x283BE53AL,0x3ADD51F3L,0x2BD4F19AL,0x7DDB6633L,0L,1L,0x3566885BL,0x2D109EB5L}},{{(-3L),0x283BE53AL,0x3ADD51F3L,0x2BD4F19AL,0x7DDB6633L,0L,1L,0x3566885BL,0x2D109EB5L},{(-3L),0x283BE53AL,0x3ADD51F3L,0x2BD4F19AL,0x7DDB6633L,0L,1L,0x3566885BL,0x2D109EB5L},{(-3L),0x283BE53AL,0x3ADD51F3L,0x2BD4F19AL,0x7DDB6633L,0L,1L,0x3566885BL,0x2D109EB5L},{(-3L),0x283BE53AL,0x3ADD51F3L,0x2BD4F19AL,0x7DDB6633L,0L,1L,0x3566885BL,0x2D109EB5L}}};
                    int i, j, k;
                    for (i = 0; i < 3; i++)
                        l_471[i] = &l_469;
                    --l_474;
                    (*p_655->g_477) = &l_473;
                    for (p_655->g_237.f0 = (-19); (p_655->g_237.f0 != 35); ++p_655->g_237.f0)
                    { /* block id: 263 */
                        (*p_655->g_106) |= ((VECTOR(int32_t, 2))(1L, 0x7444C5DFL)).odd;
                        p_655->g_483++;
                        (*p_655->g_488) = l_486;
                        (*p_655->g_490) = (*p_655->g_488);
                    }
                    (*l_486) |= ((VECTOR(int32_t, 4))(l_491.s21dc)).z;
                }
            }
        }
    }
    return l_583;
}


/* ------------------------------------------ */
/* 
 * reads : p_655->g_62
 * writes:
 */
uint8_t  func_11(int8_t * p_12, int8_t * p_13, int32_t  p_14, struct S4 * p_655)
{ /* block id: 242 */
    return p_655->g_62.w;
}


/* ------------------------------------------ */
/* 
 * reads : p_655->g_239.f0 p_655->g_239.f1 p_655->g_16 p_655->g_294 p_655->g_303 p_655->g_266 p_655->g_247 p_655->g_248 p_655->g_234 p_655->g_62 p_655->g_93 p_655->g_94 p_655->g_158.f0 p_655->g_237.f4 p_655->g_51 p_655->g_276 p_655->g_330 p_655->g_122 p_655->g_120 p_655->g_25 p_655->g_106 p_655->g_2 p_655->g_364 p_655->g_365 p_655->g_237.f2 p_655->g_239.f7 p_655->g_239.f2 p_655->g_395 p_655->g_216 p_655->g_409 p_655->g_431 p_655->g_447
 * writes: p_655->g_239.f0 p_655->g_239.f1 p_655->g_16 p_655->g_94 p_655->g_239.f2 p_655->g_93 p_655->g_37 p_655->g_158.f0 p_655->g_106 p_655->g_154 p_655->g_122 p_655->g_216 p_655->g_431 p_655->g_447
 */
int8_t * func_17(int32_t  p_18, int8_t  p_19, struct S4 * p_655)
{ /* block id: 158 */
    uint32_t l_317 = 0x16CEA2C7L;
    uint32_t l_318 = 3UL;
    VECTOR(uint16_t, 2) l_332 = (VECTOR(uint16_t, 2))(1UL, 0xD508L);
    VECTOR(int64_t, 4) l_370 = (VECTOR(int64_t, 4))(5L, (VECTOR(int64_t, 2))(5L, 0x082E34D3533CD40BL), 0x082E34D3533CD40BL);
    int32_t l_378 = 0x7D0670CAL;
    int16_t l_386[10] = {(-1L),0x0270L,0x65B7L,0x0270L,(-1L),(-1L),0x0270L,0x65B7L,0x0270L,(-1L)};
    int32_t l_390 = (-8L);
    VECTOR(uint32_t, 4) l_392 = (VECTOR(uint32_t, 4))(0xFA61D416L, (VECTOR(uint32_t, 2))(0xFA61D416L, 0x17A2AB3DL), 0x17A2AB3DL);
    int32_t l_417 = 0x64D085F9L;
    int32_t *l_442 = &p_655->g_93;
    int32_t *l_443 = &p_655->g_93;
    int32_t *l_444 = &l_390;
    int32_t *l_445[6] = {&p_655->g_93,&p_655->g_93,&p_655->g_93,&p_655->g_93,&p_655->g_93,&p_655->g_93};
    int8_t *l_450 = (void*)0;
    int i;
    for (p_655->g_239.f0 = (-24); (p_655->g_239.f0 == 43); p_655->g_239.f0++)
    { /* block id: 161 */
        uint32_t l_286 = 0x9A151ED1L;
        VECTOR(uint16_t, 16) l_293 = (VECTOR(uint16_t, 16))(0x5898L, (VECTOR(uint16_t, 4))(0x5898L, (VECTOR(uint16_t, 2))(0x5898L, 9UL), 9UL), 9UL, 0x5898L, 9UL, (VECTOR(uint16_t, 2))(0x5898L, 9UL), (VECTOR(uint16_t, 2))(0x5898L, 9UL), 0x5898L, 9UL, 0x5898L, 9UL);
        VECTOR(int32_t, 2) l_297 = (VECTOR(int32_t, 2))(0x0E52DD0CL, 2L);
        uint32_t *l_315 = &p_655->g_116[3][0];
        int32_t l_375 = 8L;
        VECTOR(int32_t, 16) l_377 = (VECTOR(int32_t, 16))(0x4223FD99L, (VECTOR(int32_t, 4))(0x4223FD99L, (VECTOR(int32_t, 2))(0x4223FD99L, 5L), 5L), 5L, 0x4223FD99L, 5L, (VECTOR(int32_t, 2))(0x4223FD99L, 5L), (VECTOR(int32_t, 2))(0x4223FD99L, 5L), 0x4223FD99L, 5L, 0x4223FD99L, 5L);
        int16_t l_391 = (-1L);
        uint16_t *l_393 = (void*)0;
        int64_t l_418 = (-5L);
        int i;
        for (p_655->g_239.f1 = 22; (p_655->g_239.f1 == 55); p_655->g_239.f1++)
        { /* block id: 164 */
            int32_t *l_285 = &p_655->g_93;
            VECTOR(int16_t, 2) l_325 = (VECTOR(int16_t, 2))(1L, 1L);
            int32_t *l_343 = &p_655->g_93;
            VECTOR(int8_t, 16) l_363 = (VECTOR(int8_t, 16))(0x37L, (VECTOR(int8_t, 4))(0x37L, (VECTOR(int8_t, 2))(0x37L, 0x18L), 0x18L), 0x18L, 0x37L, 0x18L, (VECTOR(int8_t, 2))(0x37L, 0x18L), (VECTOR(int8_t, 2))(0x37L, 0x18L), 0x37L, 0x18L, 0x37L, 0x18L);
            uint64_t l_404 = 0xD0021A5965D1A055L;
            uint16_t l_416 = 0xE1E8L;
            int32_t l_428 = 0x791C398CL;
            int32_t l_429 = 0x6AB1A174L;
            int8_t *l_434 = (void*)0;
            int i;
            ++l_286;
            for (p_655->g_16 = (-30); (p_655->g_16 != (-27)); ++p_655->g_16)
            { /* block id: 168 */
                VECTOR(int32_t, 4) l_298 = (VECTOR(int32_t, 4))(0x774A5578L, (VECTOR(int32_t, 2))(0x774A5578L, 1L), 1L);
                uint64_t *l_306 = &p_655->g_94[0];
                uint16_t *l_316 = &p_655->g_239.f2;
                uint8_t *l_319 = &p_655->g_37;
                struct S0 *l_323 = &p_655->g_276;
                int64_t *l_373 = (void*)0;
                int64_t *l_374[5][5][1] = {{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}}};
                int32_t l_376 = 4L;
                int64_t l_381 = 0x2466EF3F224DAA72L;
                VECTOR(uint32_t, 4) l_412 = (VECTOR(uint32_t, 4))(0x7C4BEDB2L, (VECTOR(uint32_t, 2))(0x7C4BEDB2L, 4294967295UL), 4294967295UL);
                int i, j, k;
                if ((safe_add_func_uint32_t_u_u(((((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 4))(add_sat(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 2))(rotate(((VECTOR(uint16_t, 16))(65535UL, 0xE997L, ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 16))(abs_diff(((VECTOR(uint16_t, 16))(clz(((VECTOR(uint16_t, 16))(l_293.sc93981001d6ca62e))))), ((VECTOR(uint16_t, 8))(sub_sat(((VECTOR(uint16_t, 8))(abs(((VECTOR(int16_t, 8))(p_655->g_294.yxxyxyxx))))), ((VECTOR(uint16_t, 4))(upsample(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(min(((VECTOR(uint8_t, 2))(mul_hi(((VECTOR(uint8_t, 2))(255UL, 0UL)), ((VECTOR(uint8_t, 16))((safe_mod_func_int32_t_s_s(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(rotate(((VECTOR(int32_t, 16))(l_297.yxxyyxyxxyxxyxyy)).s94, ((VECTOR(int32_t, 4))(mul_hi(((VECTOR(int32_t, 8))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(l_298.zx)).xxxyyyyx)).s24)).yxxxyyyx, ((VECTOR(int32_t, 8))(((((safe_rshift_func_int8_t_s_u((safe_lshift_func_uint8_t_u_s(((*l_319) = (p_655->g_303 , ((!((((l_297.y = (***p_655->g_266)) != (safe_mod_func_uint64_t_u_u((0x35FFL & (p_655->g_62.w || (*l_285))), ((*l_306)--)))) , (((*l_285) = (safe_sub_func_uint32_t_u_u(FAKE_DIVERGE(p_655->global_0_offset, get_global_id(0), 10), (((safe_lshift_func_uint16_t_u_s(((*l_316) = (0xDFC4L == (safe_lshift_func_int8_t_s_u(((void*)0 != l_315), p_18)))), p_18)) < l_297.y) || 0x74FEF343DA4B0D07L)))) != l_293.sd)) & l_317)) >= l_318))), 7)), p_655->g_158.f0)) || 0x3F9EL) != p_19) && l_298.z), (-10L), l_298.z, (-10L), 0x071B536BL, (-10L), (-1L), (-10L))), ((VECTOR(int32_t, 8))(0x6CCDB6E9L))))).even, ((VECTOR(int32_t, 4))((-1L)))))).lo))))).lo, l_317)), 0UL, ((VECTOR(uint8_t, 4))(0x18L)), 0x8AL, ((VECTOR(uint8_t, 4))(0xE9L)), l_298.x, p_655->g_237.f4, ((VECTOR(uint8_t, 2))(9UL)), 0x7AL)).s43))).yyxyyyyx, (uint8_t)p_19))).s17)), 249UL, 0xCBL)), ((VECTOR(uint8_t, 4))(0xF0L))))).wyxwxzyx))).s1672117542643234))))).s32)), 1UL, 65535UL)).zzzyxwxw)), 65528UL, p_655->g_237.f4, p_655->g_51.z, ((VECTOR(uint16_t, 2))(0xC2A2L)), 0x49CDL)).s80, ((VECTOR(uint16_t, 2))(0x8BCAL))))))).yxxy, ((VECTOR(uint16_t, 4))(8UL))))))).z <= l_298.z) != GROUP_DIVERGE(0, 1)), 0x850DD78EL)))
                { /* block id: 174 */
                    uint8_t l_322 = 0UL;
                    VECTOR(uint16_t, 4) l_331 = (VECTOR(uint16_t, 4))(0x6C00L, (VECTOR(uint16_t, 2))(0x6C00L, 0UL), 0UL);
                    int16_t *l_337 = &p_655->g_158.f0;
                    int32_t **l_344 = &l_343;
                    int i;
                    for (l_286 = (-6); (l_286 == 38); l_286 = safe_add_func_int8_t_s_s(l_286, 5))
                    { /* block id: 177 */
                        struct S0 **l_324 = &l_323;
                        l_322 ^= 0x22F4FB3AL;
                        (*l_324) = l_323;
                    }
                    (*l_285) = ((VECTOR(int32_t, 16))(0L, ((VECTOR(int32_t, 4))(upsample(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(sub_sat(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(l_325.xxxy)), 0x2369L, (((safe_add_func_int16_t_s_s(((*l_323) , ((*p_655->g_266) == (void*)0)), (safe_add_func_uint32_t_u_u(((((VECTOR(uint16_t, 2))(mad_hi(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 16))(abs(((VECTOR(uint16_t, 4))(rotate(((VECTOR(uint16_t, 2))(sub_sat(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(p_655->g_330.yx)).xyyyyxyxxxyyyxxx)).se5)), ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 2))(9UL, 0x8581L)))), 0xB09EL, 0xF1BBL)).odd))).xyyx, ((VECTOR(uint16_t, 2))(l_331.wy)).yyyy))).zxwxwwwyxzyxwxyx))).s2dd2)).lo, ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(clz(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(rhadd(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(0x3A5EL, 65526UL)), 0x430CL, 65532UL)).even, ((VECTOR(uint16_t, 8))(l_332.yyxyxyyy)).s01))).yyyy)).even))).xxxyyxxxyyyyyyxx)).s1f, ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(0xFD7CL, 1UL)).xxxxyxyxxxyxxyyx)).s6fa6)).even))).lo <= l_331.z) >= ((*l_337) = (((VECTOR(int64_t, 2))(0L, 0L)).hi | (p_655->g_122 <= ((p_655->g_120.s0 >= 0xF836L) != (safe_mod_func_uint8_t_u_u(p_655->g_25.s4, (safe_sub_func_int32_t_s_s((p_18 = l_286), (-1L)))))))))), l_298.y)))) && 0x0FC7L) < p_19), 1L, 0x416DL)).odd, ((VECTOR(int16_t, 4))(1L))))).ywxywzzzyzwxyyxw)).s28e4, ((VECTOR(uint16_t, 4))(0x5F02L))))), ((VECTOR(int32_t, 4))(0x62DD2E46L)), l_298.x, 4L, 0x49A9F41EL, (*p_655->g_106), p_19, 0x1B96A1A2L, 1L)).s0;
                    if ((atomic_inc(&p_655->l_atomic_input[18]) == 8))
                    { /* block id: 185 */
                        uint8_t l_338[1];
                        uint32_t l_339 = 1UL;
                        VECTOR(int32_t, 8) l_340 = (VECTOR(int32_t, 8))(0x22A22983L, (VECTOR(int32_t, 4))(0x22A22983L, (VECTOR(int32_t, 2))(0x22A22983L, (-9L)), (-9L)), (-9L), 0x22A22983L, (-9L));
                        int64_t l_341[5][1][9] = {{{0L,4L,0x29FD41D7B592718CL,0x27982AADF2E0D389L,4L,0x27982AADF2E0D389L,0x29FD41D7B592718CL,4L,0L}},{{0L,4L,0x29FD41D7B592718CL,0x27982AADF2E0D389L,4L,0x27982AADF2E0D389L,0x29FD41D7B592718CL,4L,0L}},{{0L,4L,0x29FD41D7B592718CL,0x27982AADF2E0D389L,4L,0x27982AADF2E0D389L,0x29FD41D7B592718CL,4L,0L}},{{0L,4L,0x29FD41D7B592718CL,0x27982AADF2E0D389L,4L,0x27982AADF2E0D389L,0x29FD41D7B592718CL,4L,0L}},{{0L,4L,0x29FD41D7B592718CL,0x27982AADF2E0D389L,4L,0x27982AADF2E0D389L,0x29FD41D7B592718CL,4L,0L}}};
                        uint32_t l_342 = 0xCC4F86EDL;
                        int i, j, k;
                        for (i = 0; i < 1; i++)
                            l_338[i] = 0xA7L;
                        l_342 ^= ((l_338[0] , 0x7E8F65CE011796C2L) , (l_339 , (l_341[3][0][8] ^= ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(l_340.s5772)).wzxywxwywyyyzxyz)).sa)));
                        unsigned int result = 0;
                        int l_338_i0;
                        for (l_338_i0 = 0; l_338_i0 < 1; l_338_i0++) {
                            result += l_338[l_338_i0];
                        }
                        result += l_339;
                        result += l_340.s7;
                        result += l_340.s6;
                        result += l_340.s5;
                        result += l_340.s4;
                        result += l_340.s3;
                        result += l_340.s2;
                        result += l_340.s1;
                        result += l_340.s0;
                        int l_341_i0, l_341_i1, l_341_i2;
                        for (l_341_i0 = 0; l_341_i0 < 5; l_341_i0++) {
                            for (l_341_i1 = 0; l_341_i1 < 1; l_341_i1++) {
                                for (l_341_i2 = 0; l_341_i2 < 9; l_341_i2++) {
                                    result += l_341[l_341_i0][l_341_i1][l_341_i2];
                                }
                            }
                        }
                        result += l_342;
                        atomic_add(&p_655->l_special_values[18], result);
                    }
                    else
                    { /* block id: 188 */
                        (1 + 1);
                    }
                    (*l_344) = l_343;
                }
                else
                { /* block id: 192 */
                    p_655->g_106 = &p_655->g_93;
                    return (**p_655->g_266);
                }
                l_377.se |= ((safe_div_func_int32_t_s_s(((safe_mod_func_int8_t_s_s((p_19 = (*p_655->g_248)), ((((safe_div_func_int8_t_s_s((safe_add_func_int32_t_s_s(((safe_add_func_uint8_t_u_u(((*l_319) = (p_655->g_154.s8 = ((safe_sub_func_int64_t_s_s(((safe_mod_func_int64_t_s_s((((((*l_343) = (safe_rshift_func_int8_t_s_s((safe_lshift_func_int8_t_s_u((((!(4UL & 0x7EE8DCCDL)) != l_297.x) | (((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(l_363.s8c2a)), ((VECTOR(int8_t, 8))(p_655->g_364.yxxyyxyx)).s1, 0x68L, 0L, (-7L))).s3 < (((p_655->g_365 , l_298.x) || (~0UL)) >= (l_376 ^= (safe_mul_func_uint8_t_u_u(((l_375 = (safe_sub_func_int64_t_s_s(((VECTOR(int64_t, 2))(l_370.yx)).even, (((safe_mod_func_uint16_t_u_u((((void*)0 == &p_655->g_122) < l_318), p_655->g_237.f2)) , p_655->g_239.f1) | l_298.y)))) , 1UL), l_318)))))), GROUP_DIVERGE(0, 1))), (**p_655->g_247)))) == p_655->g_276.f2) < p_655->g_122) <= 0x7FL), 0x2E191613223A13F9L)) == 0x4079AB9DL), l_332.y)) , p_655->g_239.f7))), 3L)) | l_298.w), l_298.y)), l_298.z)) >= p_18) && 1UL) & l_298.y))) == 0x36L), 0x2338E81CL)) > 0x28L);
                l_378 &= (l_297.y = l_318);
                if ((*p_655->g_106))
                { /* block id: 205 */
                    uint32_t l_388 = 0xC6EF0D57L;
                    uint32_t l_419 = 0x747E69F2L;
                    for (p_655->g_122 = 0; (p_655->g_122 > (-1)); p_655->g_122--)
                    { /* block id: 208 */
                        int16_t *l_387[10][5] = {{&l_386[0],&l_386[0],&p_655->g_216,&p_655->g_158.f0,&l_386[8]},{&l_386[0],&l_386[0],&p_655->g_216,&p_655->g_158.f0,&l_386[8]},{&l_386[0],&l_386[0],&p_655->g_216,&p_655->g_158.f0,&l_386[8]},{&l_386[0],&l_386[0],&p_655->g_216,&p_655->g_158.f0,&l_386[8]},{&l_386[0],&l_386[0],&p_655->g_216,&p_655->g_158.f0,&l_386[8]},{&l_386[0],&l_386[0],&p_655->g_216,&p_655->g_158.f0,&l_386[8]},{&l_386[0],&l_386[0],&p_655->g_216,&p_655->g_158.f0,&l_386[8]},{&l_386[0],&l_386[0],&p_655->g_216,&p_655->g_158.f0,&l_386[8]},{&l_386[0],&l_386[0],&p_655->g_216,&p_655->g_158.f0,&l_386[8]},{&l_386[0],&l_386[0],&p_655->g_216,&p_655->g_158.f0,&l_386[8]}};
                        uint32_t *l_389[9][9] = {{(void*)0,(void*)0,(void*)0,&p_655->g_237.f5,&p_655->g_237.f5,&p_655->g_237.f5,&p_655->g_239.f5,&p_655->g_262,&p_655->g_239.f5},{(void*)0,(void*)0,(void*)0,&p_655->g_237.f5,&p_655->g_237.f5,&p_655->g_237.f5,&p_655->g_239.f5,&p_655->g_262,&p_655->g_239.f5},{(void*)0,(void*)0,(void*)0,&p_655->g_237.f5,&p_655->g_237.f5,&p_655->g_237.f5,&p_655->g_239.f5,&p_655->g_262,&p_655->g_239.f5},{(void*)0,(void*)0,(void*)0,&p_655->g_237.f5,&p_655->g_237.f5,&p_655->g_237.f5,&p_655->g_239.f5,&p_655->g_262,&p_655->g_239.f5},{(void*)0,(void*)0,(void*)0,&p_655->g_237.f5,&p_655->g_237.f5,&p_655->g_237.f5,&p_655->g_239.f5,&p_655->g_262,&p_655->g_239.f5},{(void*)0,(void*)0,(void*)0,&p_655->g_237.f5,&p_655->g_237.f5,&p_655->g_237.f5,&p_655->g_239.f5,&p_655->g_262,&p_655->g_239.f5},{(void*)0,(void*)0,(void*)0,&p_655->g_237.f5,&p_655->g_237.f5,&p_655->g_237.f5,&p_655->g_239.f5,&p_655->g_262,&p_655->g_239.f5},{(void*)0,(void*)0,(void*)0,&p_655->g_237.f5,&p_655->g_237.f5,&p_655->g_237.f5,&p_655->g_239.f5,&p_655->g_262,&p_655->g_239.f5},{(void*)0,(void*)0,(void*)0,&p_655->g_237.f5,&p_655->g_237.f5,&p_655->g_237.f5,&p_655->g_239.f5,&p_655->g_262,&p_655->g_239.f5}};
                        uint16_t **l_394 = &l_393;
                        int i, j;
                        (*l_343) = ((l_390 ^= (l_378 = (l_381 | (safe_rshift_func_uint16_t_u_s((p_655->g_2 | ((*l_316)++)), (l_388 = (l_386[6] ^ (*l_285)))))))) , (((l_391 <= (((((((VECTOR(uint32_t, 4))(l_392.wyyz)).x , ((*l_394) = l_393)) != p_655->g_395[2][7][2]) , (safe_rshift_func_uint16_t_u_s(l_298.z, ((safe_sub_func_uint16_t_u_u((safe_add_func_uint16_t_u_u((((safe_mul_func_uint16_t_u_u((+((p_18 != p_18) | p_655->g_276.f3)), p_655->g_2)) != l_404) && p_655->g_120.s3), l_332.x)), 65535UL)) , 5L)))) && l_388) , 1L)) , l_388) == p_655->g_276.f1));
                    }
                    for (p_655->g_216 = 8; (p_655->g_216 >= (-19)); p_655->g_216--)
                    { /* block id: 218 */
                        struct S0 **l_415 = &l_323;
                        l_376 &= (9L && ((((l_298.z ^ 0x2528L) & (((*l_343) |= ((safe_lshift_func_int8_t_s_s((p_18 && (p_655->g_409 , ((((!(safe_mod_func_uint32_t_u_u(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))(safe_clamp_func(VECTOR(uint32_t, 2),VECTOR(uint32_t, 2),((VECTOR(uint32_t, 2))(l_412.yz)), ((VECTOR(uint32_t, 4))((((safe_lshift_func_int8_t_s_s((&l_404 == (void*)0), l_381)) || ((l_415 != (void*)0) , l_388)) , GROUP_DIVERGE(2, 1)), ((VECTOR(uint32_t, 2))(4294967295UL)), 0xBD966DF1L)).even, ((VECTOR(uint32_t, 2))(4UL))))).yxyxxyyxxyyyxxyy)).s2, (*p_655->g_106)))) , l_416) || 0x0E7D9123E0B622A9L) >= l_293.s1))), 4)) ^ l_417)) > 0x608300BCL)) < 0x7892L) && p_18));
                        l_419++;
                    }
                }
                else
                { /* block id: 223 */
                    int32_t *l_422 = &l_378;
                    int32_t *l_423 = &l_378;
                    int32_t *l_424 = &p_655->g_93;
                    int32_t *l_425 = (void*)0;
                    int32_t *l_426 = &l_376;
                    int32_t *l_427[6][7] = {{&l_378,(void*)0,(void*)0,(void*)0,&l_378,&l_378,(void*)0},{&l_378,(void*)0,(void*)0,(void*)0,&l_378,&l_378,(void*)0},{&l_378,(void*)0,(void*)0,(void*)0,&l_378,&l_378,(void*)0},{&l_378,(void*)0,(void*)0,(void*)0,&l_378,&l_378,(void*)0},{&l_378,(void*)0,(void*)0,(void*)0,&l_378,&l_378,(void*)0},{&l_378,(void*)0,(void*)0,(void*)0,&l_378,&l_378,(void*)0}};
                    int i, j;
                    p_655->g_431--;
                }
            }
            return l_434;
        }
        if ((atomic_inc(&p_655->g_atomic_input[50 * get_linear_group_id() + 32]) == 3))
        { /* block id: 230 */
            int32_t l_436 = 0x51639882L;
            int32_t *l_435 = &l_436;
            int8_t l_437 = 0x29L;
            uint32_t l_438 = 0x88E2104BL;
            int32_t l_439 = 0x47176433L;
            int32_t l_440 = 0x600F694DL;
            uint16_t l_441 = 0x2055L;
            l_435 = (void*)0;
            l_437 = ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(0L, 0x693693F2L)).xxyxyxyyxyxyyxxx)).s5;
            l_439 &= l_438;
            l_441 &= l_440;
            unsigned int result = 0;
            result += l_436;
            result += l_437;
            result += l_438;
            result += l_439;
            result += l_440;
            result += l_441;
            atomic_add(&p_655->g_special_values[50 * get_linear_group_id() + 32], result);
        }
        else
        { /* block id: 235 */
            (1 + 1);
        }
        return (*p_655->g_247);
    }
    --p_655->g_447;
    return l_450;
}


/* ------------------------------------------ */
/* 
 * reads : p_655->g_37 p_655->l_comm_values p_655->g_16 p_655->g_48 p_655->g_51 p_655->g_62 p_655->g_65 p_655->g_25 p_655->g_2 p_655->g_94 p_655->g_116 p_655->g_147 p_655->g_234 p_655->g_237 p_655->g_247 p_655->g_230 p_655->g_262 p_655->g_266
 * writes: p_655->g_37 p_655->g_94 p_655->g_105 p_655->g_107 p_655->g_234 p_655->g_239 p_655->g_230 p_655->g_262 p_655->g_247
 */
uint32_t  func_34(int32_t  p_35, struct S4 * p_655)
{ /* block id: 9 */
    VECTOR(int32_t, 4) l_36 = (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 6L), 6L);
    VECTOR(int64_t, 8) l_49 = (VECTOR(int64_t, 8))(0x15C78859B3460EE4L, (VECTOR(int64_t, 4))(0x15C78859B3460EE4L, (VECTOR(int64_t, 2))(0x15C78859B3460EE4L, (-1L)), (-1L)), (-1L), 0x15C78859B3460EE4L, (-1L));
    VECTOR(int64_t, 16) l_50 = (VECTOR(int64_t, 16))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 9L), 9L), 9L, 1L, 9L, (VECTOR(int64_t, 2))(1L, 9L), (VECTOR(int64_t, 2))(1L, 9L), 1L, 9L, 1L, 9L);
    VECTOR(int8_t, 2) l_63 = (VECTOR(int8_t, 2))(0x70L, 0x34L);
    VECTOR(int16_t, 4) l_64 = (VECTOR(int16_t, 4))(0x7CA5L, (VECTOR(int16_t, 2))(0x7CA5L, 9L), 9L);
    int8_t **l_66 = (void*)0;
    int16_t l_67 = 0x11C7L;
    int8_t *l_233[10][1] = {{&p_655->g_16},{&p_655->g_16},{&p_655->g_16},{&p_655->g_16},{&p_655->g_16},{&p_655->g_16},{&p_655->g_16},{&p_655->g_16},{&p_655->g_16},{&p_655->g_16}};
    int i, j;
    p_655->g_37 |= ((VECTOR(int32_t, 16))(l_36.yxwwywyxyyywzwzw)).s0;
    (*p_655->g_266) = func_38(p_655->l_comm_values[(safe_mod_func_uint32_t_u_u(p_655->tid, 12))], p_35, (safe_sub_func_int64_t_s_s((safe_add_func_uint64_t_u_u(p_655->g_16, ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))(max(((VECTOR(int64_t, 2))(hadd(((VECTOR(int64_t, 4))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 4),((VECTOR(int64_t, 16))(p_655->g_48.wxxwwzzywwwwxzxz)).sb7f0, ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 16))(l_49.s6226116546375426)).sbe)).xyxx, ((VECTOR(int64_t, 8))(l_50.seb03c758)).hi))).even, ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(p_655->g_51.zx)).yyyy)).even))), ((VECTOR(int64_t, 2))(0x5081FB7192EEDB0EL, (-1L)))))).yxxyyxyx)).s1)), ((p_35 != ((safe_add_func_int8_t_s_s((l_36.z = (p_655->g_234 |= (1UL <= ((func_54(((((safe_mod_func_int8_t_s_s(l_49.s7, ((VECTOR(int8_t, 8))(mul_hi(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(p_655->g_62.xz)).yyyx)).hi)))).xxyyxxxy, ((VECTOR(int8_t, 16))(l_63.xyyyyyyyxyyyyyxx)).hi))).s2)) || ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 16))(l_64.ywwxzzzzwzyxxyzz)).even)).s7) < (l_67 = ((((p_655->g_65 == l_66) || p_655->g_25.s7) > l_49.s1) , 0x5AED0E34L))) , l_50.sa), &p_655->g_16, p_35, &p_655->g_16, l_66, p_655) , 0UL) & p_655->g_147.y)))), 1L)) || (-3L))) != 0UL))), p_35, l_64.y, p_655);
    return p_655->g_116[4][2];
}


/* ------------------------------------------ */
/* 
 * reads : p_655->g_237 p_655->g_247 p_655->g_230 p_655->g_262
 * writes: p_655->g_239 p_655->g_230 p_655->g_262
 */
int8_t ** func_38(uint8_t  p_39, int32_t  p_40, int64_t  p_41, uint32_t  p_42, uint8_t  p_43, struct S4 * p_655)
{ /* block id: 135 */
    int8_t *l_246 = &p_655->g_16;
    int8_t **l_245 = &l_246;
    int32_t l_260 = 7L;
    int8_t **l_265 = &l_246;
    for (p_42 = 0; (p_42 > 43); ++p_42)
    { /* block id: 138 */
        uint32_t l_242 = 0xC7F448DEL;
        int32_t l_253[2];
        int i;
        for (i = 0; i < 2; i++)
            l_253[i] = 0x2266237AL;
        p_655->g_239 = p_655->g_237;
        l_242 = (safe_lshift_func_uint16_t_u_u(65535UL, 14));
        for (p_39 = 5; (p_39 == 39); p_39 = safe_add_func_int8_t_s_s(p_39, 6))
        { /* block id: 143 */
            return p_655->g_247;
        }
        for (p_655->g_230 = 0; (p_655->g_230 < 15); p_655->g_230 = safe_add_func_uint32_t_u_u(p_655->g_230, 6))
        { /* block id: 148 */
            int32_t *l_251 = &p_655->g_93;
            int32_t *l_252 = &p_655->g_93;
            int32_t *l_254 = &l_253[1];
            int32_t *l_255 = &p_655->g_93;
            int32_t *l_256 = &l_253[1];
            int32_t *l_257 = &l_253[1];
            int32_t *l_258 = &l_253[1];
            int32_t *l_259 = &l_253[1];
            int32_t *l_261 = &l_253[0];
            ++p_655->g_262;
        }
    }
    return &p_655->g_248;
}


/* ------------------------------------------ */
/* 
 * reads : p_655->g_25 p_655->g_2 p_655->g_94 p_655->l_comm_values p_655->g_116
 * writes: p_655->g_94 p_655->g_105 p_655->g_107
 */
uint32_t  func_54(uint64_t  p_55, int8_t * p_56, int32_t  p_57, int8_t * p_58, int8_t ** p_59, struct S4 * p_655)
{ /* block id: 12 */
    uint16_t l_70 = 0x5725L;
    int16_t l_77 = 1L;
    int8_t *l_91 = (void*)0;
    int8_t **l_90 = &l_91;
    int8_t *l_97 = &p_655->g_16;
    uint8_t l_98 = 0UL;
    int32_t *l_101[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int8_t l_102 = 0x4BL;
    int32_t **l_104 = &l_101[3];
    int32_t ***l_103[9][9] = {{&l_104,&l_104,&l_104,&l_104,&l_104,&l_104,&l_104,&l_104,&l_104},{&l_104,&l_104,&l_104,&l_104,&l_104,&l_104,&l_104,&l_104,&l_104},{&l_104,&l_104,&l_104,&l_104,&l_104,&l_104,&l_104,&l_104,&l_104},{&l_104,&l_104,&l_104,&l_104,&l_104,&l_104,&l_104,&l_104,&l_104},{&l_104,&l_104,&l_104,&l_104,&l_104,&l_104,&l_104,&l_104,&l_104},{&l_104,&l_104,&l_104,&l_104,&l_104,&l_104,&l_104,&l_104,&l_104},{&l_104,&l_104,&l_104,&l_104,&l_104,&l_104,&l_104,&l_104,&l_104},{&l_104,&l_104,&l_104,&l_104,&l_104,&l_104,&l_104,&l_104,&l_104},{&l_104,&l_104,&l_104,&l_104,&l_104,&l_104,&l_104,&l_104,&l_104}};
    VECTOR(uint8_t, 2) l_152 = (VECTOR(uint8_t, 2))(0xDEL, 7UL);
    union U2 *l_156[1][10] = {{&p_655->g_157,&p_655->g_158,&p_655->g_157,&p_655->g_157,&p_655->g_158,&p_655->g_157,&p_655->g_157,&p_655->g_158,&p_655->g_157,&p_655->g_157}};
    int64_t *l_209 = &p_655->g_122;
    int16_t l_215 = (-1L);
    int i, j;
    l_102 ^= (safe_rshift_func_uint8_t_u_s(l_70, (func_71(l_70, p_655->g_25.sd, p_55, p_655->g_2, (((l_70 && (l_77 < (((safe_div_func_uint64_t_u_u((safe_rshift_func_uint8_t_u_s((((*l_90) = func_82((((l_70 , (safe_div_func_uint32_t_u_u((safe_mod_func_uint32_t_u_u(4294967291UL, 0x2562E968L)), l_77))) != 1L) , (void*)0), l_90, p_57, p_655)) != l_97), p_655->l_comm_values[(safe_mod_func_uint32_t_u_u(p_655->tid, 12))])), l_98)) < l_98) & 0x03L))) , l_70) && 0x41F71C78AB42EC25L), p_655) == p_55)));
    p_655->g_107 = (p_655->g_105 = &l_101[7]);
    for (l_70 = 0; (l_70 > 44); l_70 = safe_add_func_int64_t_s_s(l_70, 1))
    { /* block id: 26 */
        int32_t **l_110 = &p_655->g_106;
        uint32_t *l_115 = &p_655->g_116[3][0];
        VECTOR(int64_t, 8) l_119 = (VECTOR(int64_t, 8))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 0x04D7DB42F0577C06L), 0x04D7DB42F0577C06L), 0x04D7DB42F0577C06L, 1L, 0x04D7DB42F0577C06L);
        int64_t *l_121[3][1];
        int32_t l_123 = 0x670E5037L;
        VECTOR(uint16_t, 8) l_145 = (VECTOR(uint16_t, 8))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 0UL), 0UL), 0UL, 65535UL, 0UL);
        VECTOR(uint8_t, 2) l_153 = (VECTOR(uint8_t, 2))(0xB7L, 1UL);
        int64_t l_175 = 1L;
        int32_t l_208 = (-1L);
        int32_t **l_212 = &p_655->g_106;
        int32_t l_229[9] = {(-1L),(-9L),(-1L),(-1L),(-9L),(-1L),(-1L),(-9L),(-1L)};
        int i, j;
        for (i = 0; i < 3; i++)
        {
            for (j = 0; j < 1; j++)
                l_121[i][j] = &p_655->g_122;
        }
        (1 + 1);
    }
    return p_655->g_116[3][0];
}


/* ------------------------------------------ */
/* 
 * reads : p_655->g_94
 * writes:
 */
uint16_t  func_71(int32_t  p_72, int64_t  p_73, uint64_t  p_74, int64_t  p_75, int64_t  p_76, struct S4 * p_655)
{ /* block id: 17 */
    int32_t *l_100 = &p_655->g_2;
    int32_t **l_99 = &l_100;
    atomic_add(&p_655->l_atomic_reduction[0], p_73 + get_linear_global_id());
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (get_linear_local_id() == 0)
        p_655->v_collective += p_655->l_atomic_reduction[0];
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    (*l_99) = &p_655->g_93;
    return p_655->g_94[0];
}


/* ------------------------------------------ */
/* 
 * reads : p_655->g_94
 * writes: p_655->g_94
 */
int8_t * func_82(int8_t * p_83, int8_t ** p_84, uint32_t  p_85, struct S4 * p_655)
{ /* block id: 13 */
    int32_t *l_92[8] = {&p_655->g_93,&p_655->g_93,&p_655->g_93,&p_655->g_93,&p_655->g_93,&p_655->g_93,&p_655->g_93,&p_655->g_93};
    int i;
    p_655->g_94[0]++;
    return (*p_84);
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global volatile int *g_atomic_reduction, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[50];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 50; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[50];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 50; i++)
            l_special_values[i] = 0;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    __local int64_t l_comm_values[12];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 12; i++)
            l_comm_values[i] = 1;
    struct S4 c_656;
    struct S4* p_655 = &c_656;
    struct S4 c_657 = {
        0x66D058A8L, // p_655->g_2
        0x15L, // p_655->g_16
        (VECTOR(uint32_t, 8))(4294967287UL, (VECTOR(uint32_t, 4))(4294967287UL, (VECTOR(uint32_t, 2))(4294967287UL, 4294967290UL), 4294967290UL), 4294967290UL, 4294967287UL, 4294967290UL), // p_655->g_22
        (VECTOR(uint32_t, 16))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 4294967291UL), 4294967291UL), 4294967291UL, 1UL, 4294967291UL, (VECTOR(uint32_t, 2))(1UL, 4294967291UL), (VECTOR(uint32_t, 2))(1UL, 4294967291UL), 1UL, 4294967291UL, 1UL, 4294967291UL), // p_655->g_23
        (VECTOR(uint32_t, 16))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 0x68FAB8D2L), 0x68FAB8D2L), 0x68FAB8D2L, 4294967295UL, 0x68FAB8D2L, (VECTOR(uint32_t, 2))(4294967295UL, 0x68FAB8D2L), (VECTOR(uint32_t, 2))(4294967295UL, 0x68FAB8D2L), 4294967295UL, 0x68FAB8D2L, 4294967295UL, 0x68FAB8D2L), // p_655->g_25
        (VECTOR(uint32_t, 8))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 4294967295UL), 4294967295UL), 4294967295UL, 4294967295UL, 4294967295UL), // p_655->g_28
        (VECTOR(uint32_t, 16))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 0x65B818E9L), 0x65B818E9L), 0x65B818E9L, 4294967295UL, 0x65B818E9L, (VECTOR(uint32_t, 2))(4294967295UL, 0x65B818E9L), (VECTOR(uint32_t, 2))(4294967295UL, 0x65B818E9L), 4294967295UL, 0x65B818E9L, 4294967295UL, 0x65B818E9L), // p_655->g_33
        0xDEL, // p_655->g_37
        (VECTOR(int64_t, 4))(0x4DE87198B9DB5DF1L, (VECTOR(int64_t, 2))(0x4DE87198B9DB5DF1L, (-1L)), (-1L)), // p_655->g_48
        (VECTOR(int64_t, 4))((-2L), (VECTOR(int64_t, 2))((-2L), 0x63FF50EDC67586E0L), 0x63FF50EDC67586E0L), // p_655->g_51
        (VECTOR(int8_t, 4))(0x1BL, (VECTOR(int8_t, 2))(0x1BL, 0x59L), 0x59L), // p_655->g_62
        (void*)0, // p_655->g_65
        9L, // p_655->g_93
        {1UL,1UL,1UL,1UL,1UL}, // p_655->g_94
        &p_655->g_2, // p_655->g_106
        &p_655->g_106, // p_655->g_105
        &p_655->g_106, // p_655->g_107
        {{0xBF9FC003L,9UL,4294967292UL},{0xBF9FC003L,9UL,4294967292UL},{0xBF9FC003L,9UL,4294967292UL},{0xBF9FC003L,9UL,4294967292UL},{0xBF9FC003L,9UL,4294967292UL},{0xBF9FC003L,9UL,4294967292UL},{0xBF9FC003L,9UL,4294967292UL},{0xBF9FC003L,9UL,4294967292UL},{0xBF9FC003L,9UL,4294967292UL}}, // p_655->g_116
        (VECTOR(uint64_t, 8))(8UL, (VECTOR(uint64_t, 4))(8UL, (VECTOR(uint64_t, 2))(8UL, 18446744073709551608UL), 18446744073709551608UL), 18446744073709551608UL, 8UL, 18446744073709551608UL), // p_655->g_120
        0x5DAB041782160F6BL, // p_655->g_122
        (VECTOR(uint16_t, 2))(65530UL, 2UL), // p_655->g_146
        (VECTOR(int64_t, 4))((-4L), (VECTOR(int64_t, 2))((-4L), 0x026FCD83BFDD0443L), 0x026FCD83BFDD0443L), // p_655->g_147
        (VECTOR(uint8_t, 16))(0xA1L, (VECTOR(uint8_t, 4))(0xA1L, (VECTOR(uint8_t, 2))(0xA1L, 0x84L), 0x84L), 0x84L, 0xA1L, 0x84L, (VECTOR(uint8_t, 2))(0xA1L, 0x84L), (VECTOR(uint8_t, 2))(0xA1L, 0x84L), 0xA1L, 0x84L, 0xA1L, 0x84L), // p_655->g_154
        (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 5UL), 5UL), // p_655->g_155
        {-6L}, // p_655->g_157
        {-1L}, // p_655->g_158
        {-7L}, // p_655->g_160
        &p_655->g_160, // p_655->g_159
        8UL, // p_655->g_167
        0x6435L, // p_655->g_216
        0xAF6D6110L, // p_655->g_230
        0x1EL, // p_655->g_234
        {65526UL,0x7C60415487D05AA6L,65533UL,0x68L,0x014AL,4UL,0x671E70E9D857B65FL,1UL}, // p_655->g_237
        {&p_655->g_237,&p_655->g_237,&p_655->g_237,&p_655->g_237,&p_655->g_237,&p_655->g_237}, // p_655->g_238
        {0x8C95L,1UL,0x7972L,0x59L,5L,0x77A0422CL,-3L,0x450B9633L}, // p_655->g_239
        &p_655->g_234, // p_655->g_248
        &p_655->g_248, // p_655->g_247
        0UL, // p_655->g_262
        &p_655->g_247, // p_655->g_266
        (VECTOR(uint32_t, 2))(2UL, 0x7C97B53EL), // p_655->g_268
        (VECTOR(uint32_t, 2))(0x428AFD14L, 0xFF90D86DL), // p_655->g_269
        {0xDDFBL,0UL,0xF577L,1L,0x047BL,1UL,4L,0x47A6F84FL}, // p_655->g_276
        {0x61A8L,0x0D0B17583D3E0E9DL,65535UL,1L,0x4063L,1UL,0x401637A76346030FL,0xA7959F43L}, // p_655->g_278
        &p_655->g_278, // p_655->g_277
        (VECTOR(int16_t, 2))((-10L), 0x35B5L), // p_655->g_294
        {0x51EAL}, // p_655->g_303
        (VECTOR(uint16_t, 4))(0x63E0L, (VECTOR(uint16_t, 2))(0x63E0L, 65535UL), 65535UL), // p_655->g_330
        (VECTOR(int8_t, 2))(0x77L, 0x3FL), // p_655->g_364
        {1L}, // p_655->g_365
        {{{&p_655->g_278.f0,&p_655->g_278.f2,&p_655->g_278.f0,&p_655->g_278.f0},{&p_655->g_278.f0,&p_655->g_278.f2,&p_655->g_278.f0,&p_655->g_278.f0},{&p_655->g_278.f0,&p_655->g_278.f2,&p_655->g_278.f0,&p_655->g_278.f0},{&p_655->g_278.f0,&p_655->g_278.f2,&p_655->g_278.f0,&p_655->g_278.f0},{&p_655->g_278.f0,&p_655->g_278.f2,&p_655->g_278.f0,&p_655->g_278.f0},{&p_655->g_278.f0,&p_655->g_278.f2,&p_655->g_278.f0,&p_655->g_278.f0},{&p_655->g_278.f0,&p_655->g_278.f2,&p_655->g_278.f0,&p_655->g_278.f0},{&p_655->g_278.f0,&p_655->g_278.f2,&p_655->g_278.f0,&p_655->g_278.f0},{&p_655->g_278.f0,&p_655->g_278.f2,&p_655->g_278.f0,&p_655->g_278.f0},{&p_655->g_278.f0,&p_655->g_278.f2,&p_655->g_278.f0,&p_655->g_278.f0}},{{&p_655->g_278.f0,&p_655->g_278.f2,&p_655->g_278.f0,&p_655->g_278.f0},{&p_655->g_278.f0,&p_655->g_278.f2,&p_655->g_278.f0,&p_655->g_278.f0},{&p_655->g_278.f0,&p_655->g_278.f2,&p_655->g_278.f0,&p_655->g_278.f0},{&p_655->g_278.f0,&p_655->g_278.f2,&p_655->g_278.f0,&p_655->g_278.f0},{&p_655->g_278.f0,&p_655->g_278.f2,&p_655->g_278.f0,&p_655->g_278.f0},{&p_655->g_278.f0,&p_655->g_278.f2,&p_655->g_278.f0,&p_655->g_278.f0},{&p_655->g_278.f0,&p_655->g_278.f2,&p_655->g_278.f0,&p_655->g_278.f0},{&p_655->g_278.f0,&p_655->g_278.f2,&p_655->g_278.f0,&p_655->g_278.f0},{&p_655->g_278.f0,&p_655->g_278.f2,&p_655->g_278.f0,&p_655->g_278.f0},{&p_655->g_278.f0,&p_655->g_278.f2,&p_655->g_278.f0,&p_655->g_278.f0}},{{&p_655->g_278.f0,&p_655->g_278.f2,&p_655->g_278.f0,&p_655->g_278.f0},{&p_655->g_278.f0,&p_655->g_278.f2,&p_655->g_278.f0,&p_655->g_278.f0},{&p_655->g_278.f0,&p_655->g_278.f2,&p_655->g_278.f0,&p_655->g_278.f0},{&p_655->g_278.f0,&p_655->g_278.f2,&p_655->g_278.f0,&p_655->g_278.f0},{&p_655->g_278.f0,&p_655->g_278.f2,&p_655->g_278.f0,&p_655->g_278.f0},{&p_655->g_278.f0,&p_655->g_278.f2,&p_655->g_278.f0,&p_655->g_278.f0},{&p_655->g_278.f0,&p_655->g_278.f2,&p_655->g_278.f0,&p_655->g_278.f0},{&p_655->g_278.f0,&p_655->g_278.f2,&p_655->g_278.f0,&p_655->g_278.f0},{&p_655->g_278.f0,&p_655->g_278.f2,&p_655->g_278.f0,&p_655->g_278.f0},{&p_655->g_278.f0,&p_655->g_278.f2,&p_655->g_278.f0,&p_655->g_278.f0}}}, // p_655->g_395
        {0x6FF4L}, // p_655->g_409
        (-1L), // p_655->g_430
        4294967291UL, // p_655->g_431
        (-1L), // p_655->g_446
        0xCD89L, // p_655->g_447
        (void*)0, // p_655->g_458
        &p_655->g_106, // p_655->g_477
        0x44FFL, // p_655->g_480
        246UL, // p_655->g_483
        (void*)0, // p_655->g_487
        &p_655->g_106, // p_655->g_488
        (void*)0, // p_655->g_489
        &p_655->g_106, // p_655->g_490
        0x0A836DAC33276626L, // p_655->g_515
        0xE55358F5L, // p_655->g_516
        &p_655->g_105, // p_655->g_520
        {{-7L},{-7L},{-7L}}, // p_655->g_523
        (VECTOR(uint16_t, 16))(0x9145L, (VECTOR(uint16_t, 4))(0x9145L, (VECTOR(uint16_t, 2))(0x9145L, 65531UL), 65531UL), 65531UL, 0x9145L, 65531UL, (VECTOR(uint16_t, 2))(0x9145L, 65531UL), (VECTOR(uint16_t, 2))(0x9145L, 65531UL), 0x9145L, 65531UL, 0x9145L, 65531UL), // p_655->g_529
        {0x4F94L,1UL,0x4073L,0x2EL,0x13E5L,0xE6083339L,-1L,1UL}, // p_655->g_536
        {{0x1B2E7E21L},{0x0E8F2B11L},{0x1B2E7E21L},{0x1B2E7E21L},{0x0E8F2B11L},{0x1B2E7E21L},{0x1B2E7E21L},{0x0E8F2B11L},{0x1B2E7E21L}}, // p_655->g_544
        (void*)0, // p_655->g_551
        0L, // p_655->g_570
        0x30873EEFL, // p_655->g_571
        (void*)0, // p_655->g_579
        &p_655->g_365, // p_655->g_581
        {{&p_655->g_581,&p_655->g_581,&p_655->g_581,&p_655->g_581,&p_655->g_581,&p_655->g_581,&p_655->g_581,&p_655->g_581,&p_655->g_581,&p_655->g_581}}, // p_655->g_580
        {0x5360L}, // p_655->g_584
        (VECTOR(int16_t, 8))(0x4FD4L, (VECTOR(int16_t, 4))(0x4FD4L, (VECTOR(int16_t, 2))(0x4FD4L, 0x3DF2L), 0x3DF2L), 0x3DF2L, 0x4FD4L, 0x3DF2L), // p_655->g_613
        &p_655->g_93, // p_655->g_649
        {0x424FL}, // p_655->g_652
        {0L}, // p_655->g_653
        {1L}, // p_655->g_654
        0, // p_655->v_collective
        sequence_input[get_global_id(0)], // p_655->global_0_offset
        sequence_input[get_global_id(1)], // p_655->global_1_offset
        sequence_input[get_global_id(2)], // p_655->global_2_offset
        sequence_input[get_local_id(0)], // p_655->local_0_offset
        sequence_input[get_local_id(1)], // p_655->local_1_offset
        sequence_input[get_local_id(2)], // p_655->local_2_offset
        sequence_input[get_group_id(0)], // p_655->group_0_offset
        sequence_input[get_group_id(1)], // p_655->group_1_offset
        sequence_input[get_group_id(2)], // p_655->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 12)), permutations[0][get_linear_local_id()])), // p_655->tid
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_656 = c_657;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_655);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_655->g_2, "p_655->g_2", print_hash_value);
    transparent_crc(p_655->g_16, "p_655->g_16", print_hash_value);
    transparent_crc(p_655->g_22.s0, "p_655->g_22.s0", print_hash_value);
    transparent_crc(p_655->g_22.s1, "p_655->g_22.s1", print_hash_value);
    transparent_crc(p_655->g_22.s2, "p_655->g_22.s2", print_hash_value);
    transparent_crc(p_655->g_22.s3, "p_655->g_22.s3", print_hash_value);
    transparent_crc(p_655->g_22.s4, "p_655->g_22.s4", print_hash_value);
    transparent_crc(p_655->g_22.s5, "p_655->g_22.s5", print_hash_value);
    transparent_crc(p_655->g_22.s6, "p_655->g_22.s6", print_hash_value);
    transparent_crc(p_655->g_22.s7, "p_655->g_22.s7", print_hash_value);
    transparent_crc(p_655->g_23.s0, "p_655->g_23.s0", print_hash_value);
    transparent_crc(p_655->g_23.s1, "p_655->g_23.s1", print_hash_value);
    transparent_crc(p_655->g_23.s2, "p_655->g_23.s2", print_hash_value);
    transparent_crc(p_655->g_23.s3, "p_655->g_23.s3", print_hash_value);
    transparent_crc(p_655->g_23.s4, "p_655->g_23.s4", print_hash_value);
    transparent_crc(p_655->g_23.s5, "p_655->g_23.s5", print_hash_value);
    transparent_crc(p_655->g_23.s6, "p_655->g_23.s6", print_hash_value);
    transparent_crc(p_655->g_23.s7, "p_655->g_23.s7", print_hash_value);
    transparent_crc(p_655->g_23.s8, "p_655->g_23.s8", print_hash_value);
    transparent_crc(p_655->g_23.s9, "p_655->g_23.s9", print_hash_value);
    transparent_crc(p_655->g_23.sa, "p_655->g_23.sa", print_hash_value);
    transparent_crc(p_655->g_23.sb, "p_655->g_23.sb", print_hash_value);
    transparent_crc(p_655->g_23.sc, "p_655->g_23.sc", print_hash_value);
    transparent_crc(p_655->g_23.sd, "p_655->g_23.sd", print_hash_value);
    transparent_crc(p_655->g_23.se, "p_655->g_23.se", print_hash_value);
    transparent_crc(p_655->g_23.sf, "p_655->g_23.sf", print_hash_value);
    transparent_crc(p_655->g_25.s0, "p_655->g_25.s0", print_hash_value);
    transparent_crc(p_655->g_25.s1, "p_655->g_25.s1", print_hash_value);
    transparent_crc(p_655->g_25.s2, "p_655->g_25.s2", print_hash_value);
    transparent_crc(p_655->g_25.s3, "p_655->g_25.s3", print_hash_value);
    transparent_crc(p_655->g_25.s4, "p_655->g_25.s4", print_hash_value);
    transparent_crc(p_655->g_25.s5, "p_655->g_25.s5", print_hash_value);
    transparent_crc(p_655->g_25.s6, "p_655->g_25.s6", print_hash_value);
    transparent_crc(p_655->g_25.s7, "p_655->g_25.s7", print_hash_value);
    transparent_crc(p_655->g_25.s8, "p_655->g_25.s8", print_hash_value);
    transparent_crc(p_655->g_25.s9, "p_655->g_25.s9", print_hash_value);
    transparent_crc(p_655->g_25.sa, "p_655->g_25.sa", print_hash_value);
    transparent_crc(p_655->g_25.sb, "p_655->g_25.sb", print_hash_value);
    transparent_crc(p_655->g_25.sc, "p_655->g_25.sc", print_hash_value);
    transparent_crc(p_655->g_25.sd, "p_655->g_25.sd", print_hash_value);
    transparent_crc(p_655->g_25.se, "p_655->g_25.se", print_hash_value);
    transparent_crc(p_655->g_25.sf, "p_655->g_25.sf", print_hash_value);
    transparent_crc(p_655->g_28.s0, "p_655->g_28.s0", print_hash_value);
    transparent_crc(p_655->g_28.s1, "p_655->g_28.s1", print_hash_value);
    transparent_crc(p_655->g_28.s2, "p_655->g_28.s2", print_hash_value);
    transparent_crc(p_655->g_28.s3, "p_655->g_28.s3", print_hash_value);
    transparent_crc(p_655->g_28.s4, "p_655->g_28.s4", print_hash_value);
    transparent_crc(p_655->g_28.s5, "p_655->g_28.s5", print_hash_value);
    transparent_crc(p_655->g_28.s6, "p_655->g_28.s6", print_hash_value);
    transparent_crc(p_655->g_28.s7, "p_655->g_28.s7", print_hash_value);
    transparent_crc(p_655->g_33.s0, "p_655->g_33.s0", print_hash_value);
    transparent_crc(p_655->g_33.s1, "p_655->g_33.s1", print_hash_value);
    transparent_crc(p_655->g_33.s2, "p_655->g_33.s2", print_hash_value);
    transparent_crc(p_655->g_33.s3, "p_655->g_33.s3", print_hash_value);
    transparent_crc(p_655->g_33.s4, "p_655->g_33.s4", print_hash_value);
    transparent_crc(p_655->g_33.s5, "p_655->g_33.s5", print_hash_value);
    transparent_crc(p_655->g_33.s6, "p_655->g_33.s6", print_hash_value);
    transparent_crc(p_655->g_33.s7, "p_655->g_33.s7", print_hash_value);
    transparent_crc(p_655->g_33.s8, "p_655->g_33.s8", print_hash_value);
    transparent_crc(p_655->g_33.s9, "p_655->g_33.s9", print_hash_value);
    transparent_crc(p_655->g_33.sa, "p_655->g_33.sa", print_hash_value);
    transparent_crc(p_655->g_33.sb, "p_655->g_33.sb", print_hash_value);
    transparent_crc(p_655->g_33.sc, "p_655->g_33.sc", print_hash_value);
    transparent_crc(p_655->g_33.sd, "p_655->g_33.sd", print_hash_value);
    transparent_crc(p_655->g_33.se, "p_655->g_33.se", print_hash_value);
    transparent_crc(p_655->g_33.sf, "p_655->g_33.sf", print_hash_value);
    transparent_crc(p_655->g_37, "p_655->g_37", print_hash_value);
    transparent_crc(p_655->g_48.x, "p_655->g_48.x", print_hash_value);
    transparent_crc(p_655->g_48.y, "p_655->g_48.y", print_hash_value);
    transparent_crc(p_655->g_48.z, "p_655->g_48.z", print_hash_value);
    transparent_crc(p_655->g_48.w, "p_655->g_48.w", print_hash_value);
    transparent_crc(p_655->g_51.x, "p_655->g_51.x", print_hash_value);
    transparent_crc(p_655->g_51.y, "p_655->g_51.y", print_hash_value);
    transparent_crc(p_655->g_51.z, "p_655->g_51.z", print_hash_value);
    transparent_crc(p_655->g_51.w, "p_655->g_51.w", print_hash_value);
    transparent_crc(p_655->g_62.x, "p_655->g_62.x", print_hash_value);
    transparent_crc(p_655->g_62.y, "p_655->g_62.y", print_hash_value);
    transparent_crc(p_655->g_62.z, "p_655->g_62.z", print_hash_value);
    transparent_crc(p_655->g_62.w, "p_655->g_62.w", print_hash_value);
    transparent_crc(p_655->g_93, "p_655->g_93", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_655->g_94[i], "p_655->g_94[i]", print_hash_value);

    }
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 3; j++)
        {
            transparent_crc(p_655->g_116[i][j], "p_655->g_116[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_655->g_120.s0, "p_655->g_120.s0", print_hash_value);
    transparent_crc(p_655->g_120.s1, "p_655->g_120.s1", print_hash_value);
    transparent_crc(p_655->g_120.s2, "p_655->g_120.s2", print_hash_value);
    transparent_crc(p_655->g_120.s3, "p_655->g_120.s3", print_hash_value);
    transparent_crc(p_655->g_120.s4, "p_655->g_120.s4", print_hash_value);
    transparent_crc(p_655->g_120.s5, "p_655->g_120.s5", print_hash_value);
    transparent_crc(p_655->g_120.s6, "p_655->g_120.s6", print_hash_value);
    transparent_crc(p_655->g_120.s7, "p_655->g_120.s7", print_hash_value);
    transparent_crc(p_655->g_122, "p_655->g_122", print_hash_value);
    transparent_crc(p_655->g_146.x, "p_655->g_146.x", print_hash_value);
    transparent_crc(p_655->g_146.y, "p_655->g_146.y", print_hash_value);
    transparent_crc(p_655->g_147.x, "p_655->g_147.x", print_hash_value);
    transparent_crc(p_655->g_147.y, "p_655->g_147.y", print_hash_value);
    transparent_crc(p_655->g_147.z, "p_655->g_147.z", print_hash_value);
    transparent_crc(p_655->g_147.w, "p_655->g_147.w", print_hash_value);
    transparent_crc(p_655->g_154.s0, "p_655->g_154.s0", print_hash_value);
    transparent_crc(p_655->g_154.s1, "p_655->g_154.s1", print_hash_value);
    transparent_crc(p_655->g_154.s2, "p_655->g_154.s2", print_hash_value);
    transparent_crc(p_655->g_154.s3, "p_655->g_154.s3", print_hash_value);
    transparent_crc(p_655->g_154.s4, "p_655->g_154.s4", print_hash_value);
    transparent_crc(p_655->g_154.s5, "p_655->g_154.s5", print_hash_value);
    transparent_crc(p_655->g_154.s6, "p_655->g_154.s6", print_hash_value);
    transparent_crc(p_655->g_154.s7, "p_655->g_154.s7", print_hash_value);
    transparent_crc(p_655->g_154.s8, "p_655->g_154.s8", print_hash_value);
    transparent_crc(p_655->g_154.s9, "p_655->g_154.s9", print_hash_value);
    transparent_crc(p_655->g_154.sa, "p_655->g_154.sa", print_hash_value);
    transparent_crc(p_655->g_154.sb, "p_655->g_154.sb", print_hash_value);
    transparent_crc(p_655->g_154.sc, "p_655->g_154.sc", print_hash_value);
    transparent_crc(p_655->g_154.sd, "p_655->g_154.sd", print_hash_value);
    transparent_crc(p_655->g_154.se, "p_655->g_154.se", print_hash_value);
    transparent_crc(p_655->g_154.sf, "p_655->g_154.sf", print_hash_value);
    transparent_crc(p_655->g_155.x, "p_655->g_155.x", print_hash_value);
    transparent_crc(p_655->g_155.y, "p_655->g_155.y", print_hash_value);
    transparent_crc(p_655->g_155.z, "p_655->g_155.z", print_hash_value);
    transparent_crc(p_655->g_155.w, "p_655->g_155.w", print_hash_value);
    transparent_crc(p_655->g_157.f0, "p_655->g_157.f0", print_hash_value);
    transparent_crc(p_655->g_158.f0, "p_655->g_158.f0", print_hash_value);
    transparent_crc(p_655->g_160.f0, "p_655->g_160.f0", print_hash_value);
    transparent_crc(p_655->g_167, "p_655->g_167", print_hash_value);
    transparent_crc(p_655->g_216, "p_655->g_216", print_hash_value);
    transparent_crc(p_655->g_230, "p_655->g_230", print_hash_value);
    transparent_crc(p_655->g_234, "p_655->g_234", print_hash_value);
    transparent_crc(p_655->g_237.f0, "p_655->g_237.f0", print_hash_value);
    transparent_crc(p_655->g_237.f1, "p_655->g_237.f1", print_hash_value);
    transparent_crc(p_655->g_237.f2, "p_655->g_237.f2", print_hash_value);
    transparent_crc(p_655->g_237.f3, "p_655->g_237.f3", print_hash_value);
    transparent_crc(p_655->g_237.f4, "p_655->g_237.f4", print_hash_value);
    transparent_crc(p_655->g_237.f5, "p_655->g_237.f5", print_hash_value);
    transparent_crc(p_655->g_237.f6, "p_655->g_237.f6", print_hash_value);
    transparent_crc(p_655->g_237.f7, "p_655->g_237.f7", print_hash_value);
    transparent_crc(p_655->g_239.f0, "p_655->g_239.f0", print_hash_value);
    transparent_crc(p_655->g_239.f1, "p_655->g_239.f1", print_hash_value);
    transparent_crc(p_655->g_239.f2, "p_655->g_239.f2", print_hash_value);
    transparent_crc(p_655->g_239.f3, "p_655->g_239.f3", print_hash_value);
    transparent_crc(p_655->g_239.f4, "p_655->g_239.f4", print_hash_value);
    transparent_crc(p_655->g_239.f5, "p_655->g_239.f5", print_hash_value);
    transparent_crc(p_655->g_239.f6, "p_655->g_239.f6", print_hash_value);
    transparent_crc(p_655->g_239.f7, "p_655->g_239.f7", print_hash_value);
    transparent_crc(p_655->g_262, "p_655->g_262", print_hash_value);
    transparent_crc(p_655->g_268.x, "p_655->g_268.x", print_hash_value);
    transparent_crc(p_655->g_268.y, "p_655->g_268.y", print_hash_value);
    transparent_crc(p_655->g_269.x, "p_655->g_269.x", print_hash_value);
    transparent_crc(p_655->g_269.y, "p_655->g_269.y", print_hash_value);
    transparent_crc(p_655->g_276.f0, "p_655->g_276.f0", print_hash_value);
    transparent_crc(p_655->g_276.f1, "p_655->g_276.f1", print_hash_value);
    transparent_crc(p_655->g_276.f2, "p_655->g_276.f2", print_hash_value);
    transparent_crc(p_655->g_276.f3, "p_655->g_276.f3", print_hash_value);
    transparent_crc(p_655->g_276.f4, "p_655->g_276.f4", print_hash_value);
    transparent_crc(p_655->g_276.f5, "p_655->g_276.f5", print_hash_value);
    transparent_crc(p_655->g_276.f6, "p_655->g_276.f6", print_hash_value);
    transparent_crc(p_655->g_276.f7, "p_655->g_276.f7", print_hash_value);
    transparent_crc(p_655->g_278.f0, "p_655->g_278.f0", print_hash_value);
    transparent_crc(p_655->g_278.f1, "p_655->g_278.f1", print_hash_value);
    transparent_crc(p_655->g_278.f2, "p_655->g_278.f2", print_hash_value);
    transparent_crc(p_655->g_278.f3, "p_655->g_278.f3", print_hash_value);
    transparent_crc(p_655->g_278.f4, "p_655->g_278.f4", print_hash_value);
    transparent_crc(p_655->g_278.f5, "p_655->g_278.f5", print_hash_value);
    transparent_crc(p_655->g_278.f6, "p_655->g_278.f6", print_hash_value);
    transparent_crc(p_655->g_278.f7, "p_655->g_278.f7", print_hash_value);
    transparent_crc(p_655->g_294.x, "p_655->g_294.x", print_hash_value);
    transparent_crc(p_655->g_294.y, "p_655->g_294.y", print_hash_value);
    transparent_crc(p_655->g_303.f0, "p_655->g_303.f0", print_hash_value);
    transparent_crc(p_655->g_330.x, "p_655->g_330.x", print_hash_value);
    transparent_crc(p_655->g_330.y, "p_655->g_330.y", print_hash_value);
    transparent_crc(p_655->g_330.z, "p_655->g_330.z", print_hash_value);
    transparent_crc(p_655->g_330.w, "p_655->g_330.w", print_hash_value);
    transparent_crc(p_655->g_364.x, "p_655->g_364.x", print_hash_value);
    transparent_crc(p_655->g_364.y, "p_655->g_364.y", print_hash_value);
    transparent_crc(p_655->g_365.f0, "p_655->g_365.f0", print_hash_value);
    transparent_crc(p_655->g_409.f0, "p_655->g_409.f0", print_hash_value);
    transparent_crc(p_655->g_430, "p_655->g_430", print_hash_value);
    transparent_crc(p_655->g_431, "p_655->g_431", print_hash_value);
    transparent_crc(p_655->g_446, "p_655->g_446", print_hash_value);
    transparent_crc(p_655->g_447, "p_655->g_447", print_hash_value);
    transparent_crc(p_655->g_480, "p_655->g_480", print_hash_value);
    transparent_crc(p_655->g_483, "p_655->g_483", print_hash_value);
    transparent_crc(p_655->g_515, "p_655->g_515", print_hash_value);
    transparent_crc(p_655->g_516, "p_655->g_516", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_655->g_523[i].f0, "p_655->g_523[i].f0", print_hash_value);

    }
    transparent_crc(p_655->g_529.s0, "p_655->g_529.s0", print_hash_value);
    transparent_crc(p_655->g_529.s1, "p_655->g_529.s1", print_hash_value);
    transparent_crc(p_655->g_529.s2, "p_655->g_529.s2", print_hash_value);
    transparent_crc(p_655->g_529.s3, "p_655->g_529.s3", print_hash_value);
    transparent_crc(p_655->g_529.s4, "p_655->g_529.s4", print_hash_value);
    transparent_crc(p_655->g_529.s5, "p_655->g_529.s5", print_hash_value);
    transparent_crc(p_655->g_529.s6, "p_655->g_529.s6", print_hash_value);
    transparent_crc(p_655->g_529.s7, "p_655->g_529.s7", print_hash_value);
    transparent_crc(p_655->g_529.s8, "p_655->g_529.s8", print_hash_value);
    transparent_crc(p_655->g_529.s9, "p_655->g_529.s9", print_hash_value);
    transparent_crc(p_655->g_529.sa, "p_655->g_529.sa", print_hash_value);
    transparent_crc(p_655->g_529.sb, "p_655->g_529.sb", print_hash_value);
    transparent_crc(p_655->g_529.sc, "p_655->g_529.sc", print_hash_value);
    transparent_crc(p_655->g_529.sd, "p_655->g_529.sd", print_hash_value);
    transparent_crc(p_655->g_529.se, "p_655->g_529.se", print_hash_value);
    transparent_crc(p_655->g_529.sf, "p_655->g_529.sf", print_hash_value);
    transparent_crc(p_655->g_536.f0, "p_655->g_536.f0", print_hash_value);
    transparent_crc(p_655->g_536.f1, "p_655->g_536.f1", print_hash_value);
    transparent_crc(p_655->g_536.f2, "p_655->g_536.f2", print_hash_value);
    transparent_crc(p_655->g_536.f3, "p_655->g_536.f3", print_hash_value);
    transparent_crc(p_655->g_536.f4, "p_655->g_536.f4", print_hash_value);
    transparent_crc(p_655->g_536.f5, "p_655->g_536.f5", print_hash_value);
    transparent_crc(p_655->g_536.f6, "p_655->g_536.f6", print_hash_value);
    transparent_crc(p_655->g_536.f7, "p_655->g_536.f7", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_655->g_544[i].f0, "p_655->g_544[i].f0", print_hash_value);

    }
    transparent_crc(p_655->g_570, "p_655->g_570", print_hash_value);
    transparent_crc(p_655->g_571, "p_655->g_571", print_hash_value);
    transparent_crc(p_655->g_584.f0, "p_655->g_584.f0", print_hash_value);
    transparent_crc(p_655->g_613.s0, "p_655->g_613.s0", print_hash_value);
    transparent_crc(p_655->g_613.s1, "p_655->g_613.s1", print_hash_value);
    transparent_crc(p_655->g_613.s2, "p_655->g_613.s2", print_hash_value);
    transparent_crc(p_655->g_613.s3, "p_655->g_613.s3", print_hash_value);
    transparent_crc(p_655->g_613.s4, "p_655->g_613.s4", print_hash_value);
    transparent_crc(p_655->g_613.s5, "p_655->g_613.s5", print_hash_value);
    transparent_crc(p_655->g_613.s6, "p_655->g_613.s6", print_hash_value);
    transparent_crc(p_655->g_613.s7, "p_655->g_613.s7", print_hash_value);
    transparent_crc(p_655->g_652.f0, "p_655->g_652.f0", print_hash_value);
    transparent_crc(p_655->g_653.f0, "p_655->g_653.f0", print_hash_value);
    transparent_crc(p_655->g_654.f0, "p_655->g_654.f0", print_hash_value);
    transparent_crc(p_655->v_collective, "p_655->v_collective", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 50; i++)
            transparent_crc(p_655->g_special_values[i + 50 * get_linear_group_id()], "p_655->g_special_values[i + 50 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 50; i++)
            transparent_crc(p_655->l_special_values[i], "p_655->l_special_values[i]", print_hash_value);
    transparent_crc(p_655->l_comm_values[get_linear_local_id()], "p_655->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_655->g_comm_values[get_linear_group_id() * 12 + get_linear_local_id()], "p_655->g_comm_values[get_linear_group_id() * 12 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
