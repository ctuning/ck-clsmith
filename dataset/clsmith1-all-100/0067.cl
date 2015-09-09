// --atomics 35 ---atomic_reductions ---fake_divergence ---inter_thread_comm -g 70,19,1 -l 2,1,1
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

__constant uint32_t permutations[10][2] = {
{1,0}, // permutation 0
{1,0}, // permutation 1
{1,0}, // permutation 2
{1,0}, // permutation 3
{1,0}, // permutation 4
{1,0}, // permutation 5
{1,0}, // permutation 6
{1,0}, // permutation 7
{1,0}, // permutation 8
{1,0} // permutation 9
};

// Seed: 67

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   int8_t  f0;
   int64_t  f1;
   int32_t  f2;
   uint32_t  f3;
   uint16_t  f4;
};

struct S1 {
   int32_t  f0;
   int32_t  f1;
   volatile int8_t  f2;
   uint32_t  f3;
   uint32_t  f4;
   int16_t  f5;
   uint32_t  f6;
   int32_t  f7;
   volatile int8_t  f8;
};

union U2 {
   int32_t  f0;
   uint8_t  f1;
   int8_t  f2;
   uint8_t  f3;
};

union U3 {
   struct S1  f0;
   int32_t  f1;
   struct S1  f2;
};

union U4 {
   uint16_t  f0;
   struct S1  f1;
   volatile int32_t  f2;
   int32_t  f3;
   int64_t  f4;
};

union U5 {
   volatile uint64_t  f0;
   volatile int8_t  f1;
   volatile struct S1  f2;
   struct S0  f3;
   struct S0  f4;
};

struct S6 {
    int32_t g_37;
    uint32_t g_39;
    union U3 g_41[2][3];
    int32_t g_43;
    union U5 g_172;
    struct S1 *g_174;
    struct S1 **g_173;
    int32_t *g_190[4][1][9];
    int32_t *g_194;
    int32_t **g_193;
    struct S0 g_198[7];
    union U4 g_216;
    volatile int32_t g_247;
    VECTOR(uint32_t, 4) g_258;
    int16_t g_264;
    int16_t *g_263;
    VECTOR(int16_t, 4) g_269;
    VECTOR(uint16_t, 8) g_272;
    struct S1 g_293;
    volatile uint16_t g_298;
    struct S0 * volatile g_329;
    volatile struct S1 g_330[4][7][6];
    volatile struct S1 g_331;
    union U5 g_335;
    volatile VECTOR(int8_t, 16) g_342;
    VECTOR(int8_t, 8) g_343;
    VECTOR(int8_t, 4) g_345;
    volatile VECTOR(int8_t, 4) g_373;
    volatile VECTOR(int16_t, 2) g_374;
    volatile int32_t g_391[6];
    volatile int32_t * volatile g_390;
    volatile int32_t g_393[2][3][3];
    volatile int32_t *g_392[1];
    volatile int32_t * volatile * volatile g_389[5][2];
    volatile int32_t * volatile * volatile *g_388;
    uint64_t g_396;
    int16_t g_399;
    int32_t * volatile g_400;
    VECTOR(int32_t, 2) g_432;
    VECTOR(uint8_t, 8) g_438;
    VECTOR(int32_t, 2) g_463;
    volatile union U2 g_468[6][2];
    volatile VECTOR(int32_t, 2) g_476;
    VECTOR(int16_t, 8) g_486;
    VECTOR(uint32_t, 8) g_512;
    int16_t **g_513;
    volatile int8_t g_529;
    volatile int8_t *g_528;
    volatile struct S1 g_537;
    union U5 g_545;
    struct S1 g_548;
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
int64_t  func_1(struct S6 * p_676);
union U3  func_6(int8_t  p_7, int32_t  p_8, uint64_t  p_9, int64_t  p_10, struct S6 * p_676);
int32_t  func_23(int64_t  p_24, uint32_t  p_25, uint32_t  p_26, uint16_t  p_27, struct S6 * p_676);
struct S0  func_159(uint16_t  p_160, struct S1 * p_161, uint32_t  p_162, struct S1 ** p_163, int64_t  p_164, struct S6 * p_676);
union U5  func_165(union U5 ** p_166, struct S1 ** p_167, int32_t  p_168, int32_t  p_169, struct S6 * p_676);
int32_t  func_175(struct S1 ** p_176, union U5 * p_177, int32_t  p_178, struct S6 * p_676);
union U5 * func_179(struct S1 ** p_180, uint64_t  p_181, uint16_t  p_182, int64_t  p_183, struct S6 * p_676);
struct S1 ** func_184(int32_t ** p_185, int32_t  p_186, struct S6 * p_676);
int32_t ** func_187(uint16_t  p_188, int32_t * p_189, struct S6 * p_676);
uint32_t  func_195(struct S0 * p_196, struct S6 * p_676);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_676->l_comm_values p_676->g_comm_values p_676->g_37 p_676->g_41 p_676->g_41.f0.f2 p_676->g_43 p_676->g_173 p_676->g_190 p_676->g_193 p_676->g_194 p_676->g_216 p_676->g_41.f0.f1 p_676->g_198.f0 p_676->g_172.f0 p_676->g_41.f0.f3 p_676->g_41.f0.f5 p_676->g_198 p_676->g_174 p_676->g_41.f0 p_676->g_39 p_676->g_247 p_676->g_258 p_676->g_269 p_676->g_272 p_676->g_293 p_676->g_298 p_676->g_216.f1.f4 p_676->g_329 p_676->g_330 p_676->g_172 p_676->g_335 p_676->g_345 p_676->g_331.f2 p_676->g_399 p_676->g_548.f4 p_676->g_528 p_676->g_529 p_676->g_548.f7 p_676->g_463 p_676->g_331.f0 p_676->g_396 p_676->g_373 p_676->g_393
 * writes: p_676->g_37 p_676->g_39 p_676->g_43 p_676->g_194 p_676->g_193 p_676->g_216.f1.f5 p_676->g_216.f1 p_676->g_190 p_676->g_198 p_676->g_263 p_676->g_298 p_676->g_172.f3.f2 p_676->g_293.f3 p_676->g_174 p_676->g_331 p_676->g_293.f1 p_676->g_41.f2.f5 p_676->g_293.f0 p_676->g_399 p_676->g_41.f1 p_676->g_463 p_676->g_41.f0.f5 p_676->g_396 p_676->g_548.f6 p_676->g_293.f6
 */
int64_t  func_1(struct S6 * p_676)
{ /* block id: 4 */
    VECTOR(int32_t, 2) l_21 = (VECTOR(int32_t, 2))(0x3B9A67B9L, 0L);
    VECTOR(int32_t, 4) l_22 = (VECTOR(int32_t, 4))(0x7D4763C6L, (VECTOR(int32_t, 2))(0x7D4763C6L, 0x2FD55BE9L), 0x2FD55BE9L);
    VECTOR(uint64_t, 16) l_32 = (VECTOR(uint64_t, 16))(0UL, (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 18446744073709551615UL), 18446744073709551615UL), 18446744073709551615UL, 0UL, 18446744073709551615UL, (VECTOR(uint64_t, 2))(0UL, 18446744073709551615UL), (VECTOR(uint64_t, 2))(0UL, 18446744073709551615UL), 0UL, 18446744073709551615UL, 0UL, 18446744073709551615UL);
    VECTOR(int64_t, 4) l_33 = (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 6L), 6L);
    int32_t *l_38[9];
    VECTOR(uint16_t, 4) l_40 = (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0x4DD9L), 0x4DD9L);
    int32_t *l_42 = &p_676->g_43;
    union U5 *l_171[9] = {&p_676->g_172,&p_676->g_172,&p_676->g_172,&p_676->g_172,&p_676->g_172,&p_676->g_172,&p_676->g_172,&p_676->g_172,&p_676->g_172};
    union U5 **l_170 = &l_171[6];
    struct S1 *l_547 = &p_676->g_548;
    int32_t ***l_675 = &p_676->g_193;
    int i;
    for (i = 0; i < 9; i++)
        l_38[i] = (void*)0;
    (*l_42) &= ((VECTOR(int32_t, 4))(add_sat(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))((safe_add_func_uint32_t_u_u(p_676->l_comm_values[(safe_mod_func_uint32_t_u_u(p_676->tid, 2))], p_676->l_comm_values[(safe_mod_func_uint32_t_u_u(p_676->tid, 2))])), 8L, 0x4694A61BL, p_676->l_comm_values[(safe_mod_func_uint32_t_u_u(p_676->tid, 2))], 0x34495231L, (safe_sub_func_uint64_t_u_u((func_6((safe_add_func_uint8_t_u_u((((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 16))(abs(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))((safe_add_func_int64_t_s_s((safe_mod_func_uint16_t_u_u((safe_lshift_func_uint8_t_u_u((((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(0x07AF9CA3L, 0x23E8F088L)), (-10L), p_676->g_comm_values[p_676->tid], ((VECTOR(int32_t, 8))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(1L, (safe_add_func_int64_t_s_s(((((((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(0x50169FF9L, ((VECTOR(int32_t, 8))(l_21.yyxyyyxx)), ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(l_22.xx)).yxxy)), (p_676->g_39 = func_23(p_676->l_comm_values[(safe_mod_func_uint32_t_u_u(p_676->tid, 2))], p_676->g_comm_values[p_676->tid], l_22.x, (safe_div_func_int16_t_s_s(p_676->g_comm_values[p_676->tid], (((safe_add_func_uint64_t_u_u(((VECTOR(uint64_t, 8))(l_32.sa1329794)).s1, ((VECTOR(int64_t, 2))(max(((VECTOR(int64_t, 16))(rhadd(((VECTOR(int64_t, 16))(0x7F43993911E745C5L, ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 2))(l_33.yz)))).yxxx)), (safe_add_func_uint64_t_u_u(18446744073709551615UL, l_33.x)), ((VECTOR(int64_t, 2))(0x01D4B4EA65D3384FL)), ((VECTOR(int64_t, 2))(0x24C99FFFBC9EE521L)), (-9L), 0x6C5F514FC6BF2A6BL, 0x715623A55A41183DL, ((VECTOR(int64_t, 2))(0L)), (-1L))), ((VECTOR(int64_t, 16))((-8L)))))).sd4, ((VECTOR(int64_t, 2))(6L))))).hi)) , p_676->l_comm_values[(safe_mod_func_uint32_t_u_u(p_676->tid, 2))]) || l_32.s0))), p_676)), 0x358EFE57L, 0x3E4212CFL)).lo)).s2 , l_32.s9) != l_40.x) > 0x1CL) != l_32.s1), 18446744073709551613UL)), l_22.z, 1L, ((VECTOR(int32_t, 4))(0x204A8F9BL)))))), ((VECTOR(int32_t, 8))(0x0954028EL))))), ((VECTOR(int32_t, 2))(0x19C819B5L)), 0x3045E4BBL, 0x415A2D12L)).s8 , 0x6BL), 0)), p_676->g_comm_values[p_676->tid])), p_676->l_comm_values[(safe_mod_func_uint32_t_u_u(p_676->tid, 2))])), 0x4949F72EL, 8L, 0x2B256384L)).xxwxxzwz)).s2040222561717623))).s5eb2)).y | l_40.x), (-1L))), l_33.w, l_33.w, p_676->g_comm_values[p_676->tid], p_676) , l_40.x), p_676->g_comm_values[p_676->tid])), 0x79A5DE3BL, (-3L))), p_676->g_41[0][2].f0.f2, p_676->g_41[0][2].f0.f2, p_676->g_37, (-10L), ((VECTOR(int32_t, 2))((-5L))), 1L, 6L)).s01da, ((VECTOR(int32_t, 4))(0x02E55E19L))))).y;
    if ((atomic_inc(&p_676->g_atomic_input[35 * get_linear_group_id() + 14]) == 8))
    { /* block id: 14 */
        uint64_t l_44 = 0x8D247F693945F7E1L;
        int32_t l_48 = (-1L);
        int32_t *l_47 = &l_48;
        int32_t *l_49 = &l_48;
        int64_t l_50 = 0x6648FB317E5C3E0EL;
        int32_t l_51[3];
        int8_t l_52 = 0x24L;
        int16_t l_53 = 4L;
        uint32_t l_54 = 0xC1609A65L;
        int i;
        for (i = 0; i < 3; i++)
            l_51[i] = 0x6415B52DL;
        l_44++;
        l_49 = l_47;
        l_51[2] |= l_50;
        if (((l_53 = ((VECTOR(int8_t, 2))(min(((VECTOR(int8_t, 2))(0x0FL, (-9L))), (int8_t)l_52))).odd) , l_54))
        { /* block id: 19 */
            uint16_t l_55 = 0x3F0FL;
            int8_t l_58 = 5L;
            VECTOR(uint32_t, 16) l_59 = (VECTOR(uint32_t, 16))(2UL, (VECTOR(uint32_t, 4))(2UL, (VECTOR(uint32_t, 2))(2UL, 0xBB3A51F8L), 0xBB3A51F8L), 0xBB3A51F8L, 2UL, 0xBB3A51F8L, (VECTOR(uint32_t, 2))(2UL, 0xBB3A51F8L), (VECTOR(uint32_t, 2))(2UL, 0xBB3A51F8L), 2UL, 0xBB3A51F8L, 2UL, 0xBB3A51F8L);
            int32_t l_61[8][4][6] = {{{0L,0x58942C1FL,0x6239CA81L,(-7L),0x58942C1FL,(-7L)},{0L,0x58942C1FL,0x6239CA81L,(-7L),0x58942C1FL,(-7L)},{0L,0x58942C1FL,0x6239CA81L,(-7L),0x58942C1FL,(-7L)},{0L,0x58942C1FL,0x6239CA81L,(-7L),0x58942C1FL,(-7L)}},{{0L,0x58942C1FL,0x6239CA81L,(-7L),0x58942C1FL,(-7L)},{0L,0x58942C1FL,0x6239CA81L,(-7L),0x58942C1FL,(-7L)},{0L,0x58942C1FL,0x6239CA81L,(-7L),0x58942C1FL,(-7L)},{0L,0x58942C1FL,0x6239CA81L,(-7L),0x58942C1FL,(-7L)}},{{0L,0x58942C1FL,0x6239CA81L,(-7L),0x58942C1FL,(-7L)},{0L,0x58942C1FL,0x6239CA81L,(-7L),0x58942C1FL,(-7L)},{0L,0x58942C1FL,0x6239CA81L,(-7L),0x58942C1FL,(-7L)},{0L,0x58942C1FL,0x6239CA81L,(-7L),0x58942C1FL,(-7L)}},{{0L,0x58942C1FL,0x6239CA81L,(-7L),0x58942C1FL,(-7L)},{0L,0x58942C1FL,0x6239CA81L,(-7L),0x58942C1FL,(-7L)},{0L,0x58942C1FL,0x6239CA81L,(-7L),0x58942C1FL,(-7L)},{0L,0x58942C1FL,0x6239CA81L,(-7L),0x58942C1FL,(-7L)}},{{0L,0x58942C1FL,0x6239CA81L,(-7L),0x58942C1FL,(-7L)},{0L,0x58942C1FL,0x6239CA81L,(-7L),0x58942C1FL,(-7L)},{0L,0x58942C1FL,0x6239CA81L,(-7L),0x58942C1FL,(-7L)},{0L,0x58942C1FL,0x6239CA81L,(-7L),0x58942C1FL,(-7L)}},{{0L,0x58942C1FL,0x6239CA81L,(-7L),0x58942C1FL,(-7L)},{0L,0x58942C1FL,0x6239CA81L,(-7L),0x58942C1FL,(-7L)},{0L,0x58942C1FL,0x6239CA81L,(-7L),0x58942C1FL,(-7L)},{0L,0x58942C1FL,0x6239CA81L,(-7L),0x58942C1FL,(-7L)}},{{0L,0x58942C1FL,0x6239CA81L,(-7L),0x58942C1FL,(-7L)},{0L,0x58942C1FL,0x6239CA81L,(-7L),0x58942C1FL,(-7L)},{0L,0x58942C1FL,0x6239CA81L,(-7L),0x58942C1FL,(-7L)},{0L,0x58942C1FL,0x6239CA81L,(-7L),0x58942C1FL,(-7L)}},{{0L,0x58942C1FL,0x6239CA81L,(-7L),0x58942C1FL,(-7L)},{0L,0x58942C1FL,0x6239CA81L,(-7L),0x58942C1FL,(-7L)},{0L,0x58942C1FL,0x6239CA81L,(-7L),0x58942C1FL,(-7L)},{0L,0x58942C1FL,0x6239CA81L,(-7L),0x58942C1FL,(-7L)}}};
            int32_t *l_60[5][1] = {{&l_61[1][2][3]},{&l_61[1][2][3]},{&l_61[1][2][3]},{&l_61[1][2][3]},{&l_61[1][2][3]}};
            uint32_t l_62 = 4294967295UL;
            int i, j, k;
            l_58 |= ((*l_47) = ((++l_55) , 0x27F279ECL));
            l_47 = ((((VECTOR(uint32_t, 2))(l_59.s95)).hi , FAKE_DIVERGE(p_676->local_1_offset, get_local_id(1), 10)) , l_60[3][0]);
            if (l_62)
            { /* block id: 24 */
                VECTOR(int32_t, 16) l_63 = (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, (-10L)), (-10L)), (-10L), 0L, (-10L), (VECTOR(int32_t, 2))(0L, (-10L)), (VECTOR(int32_t, 2))(0L, (-10L)), 0L, (-10L), 0L, (-10L));
                struct S1 l_88 = {0x7C490E50L,0x59F3165BL,0x27L,0x91AFA9DCL,0x15C88625L,1L,0xC3971865L,0x5CCE3023L,0L};/* VOLATILE GLOBAL l_88 */
                struct S1 l_89[4] = {{-8L,0x07333B9DL,7L,0x29AE18D8L,0x2A735042L,0x1F28L,0x33D0BF8AL,0x0A268B7FL,0x1DL},{-8L,0x07333B9DL,7L,0x29AE18D8L,0x2A735042L,0x1F28L,0x33D0BF8AL,0x0A268B7FL,0x1DL},{-8L,0x07333B9DL,7L,0x29AE18D8L,0x2A735042L,0x1F28L,0x33D0BF8AL,0x0A268B7FL,0x1DL},{-8L,0x07333B9DL,7L,0x29AE18D8L,0x2A735042L,0x1F28L,0x33D0BF8AL,0x0A268B7FL,0x1DL}};
                VECTOR(int32_t, 16) l_90 = (VECTOR(int32_t, 16))(0x67FB97F9L, (VECTOR(int32_t, 4))(0x67FB97F9L, (VECTOR(int32_t, 2))(0x67FB97F9L, 0x7D55B7D1L), 0x7D55B7D1L), 0x7D55B7D1L, 0x67FB97F9L, 0x7D55B7D1L, (VECTOR(int32_t, 2))(0x67FB97F9L, 0x7D55B7D1L), (VECTOR(int32_t, 2))(0x67FB97F9L, 0x7D55B7D1L), 0x67FB97F9L, 0x7D55B7D1L, 0x67FB97F9L, 0x7D55B7D1L);
                int32_t l_91 = 0x2437AC72L;
                int i;
                if (((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(l_63.s519a)).zwywywyxzwxzxxyx)).s6)
                { /* block id: 25 */
                    VECTOR(int32_t, 2) l_64 = (VECTOR(int32_t, 2))(0x1624665FL, 0x399958B7L);
                    int8_t l_72 = 0x3AL;
                    int i;
                    if (((*l_49) ^= ((VECTOR(int32_t, 8))(0x1CA9E208L, 6L, 0L, 0x126ED304L, ((VECTOR(int32_t, 4))(l_64.xxxx)))).s7))
                    { /* block id: 27 */
                        uint16_t l_65 = 65529UL;
                        uint64_t l_66 = 1UL;
                        int64_t l_67 = 0x563853DC631A1BBCL;
                        int32_t *l_69 = (void*)0;
                        int32_t **l_68 = &l_69;
                        l_67 ^= (l_65 , l_66);
                        l_68 = (void*)0;
                    }
                    else
                    { /* block id: 30 */
                        int16_t l_70 = 0x0FC2L;
                        int32_t l_71[5] = {0L,0L,0L,0L,0L};
                        int i;
                        (*l_49) |= (l_71[4] |= l_70);
                    }
                    if (l_72)
                    { /* block id: 34 */
                        int32_t l_74 = 0x290BB767L;
                        int32_t *l_73[8][8] = {{(void*)0,(void*)0,&l_74,&l_74,(void*)0,&l_74,&l_74,(void*)0},{(void*)0,(void*)0,&l_74,&l_74,(void*)0,&l_74,&l_74,(void*)0},{(void*)0,(void*)0,&l_74,&l_74,(void*)0,&l_74,&l_74,(void*)0},{(void*)0,(void*)0,&l_74,&l_74,(void*)0,&l_74,&l_74,(void*)0},{(void*)0,(void*)0,&l_74,&l_74,(void*)0,&l_74,&l_74,(void*)0},{(void*)0,(void*)0,&l_74,&l_74,(void*)0,&l_74,&l_74,(void*)0},{(void*)0,(void*)0,&l_74,&l_74,(void*)0,&l_74,&l_74,(void*)0},{(void*)0,(void*)0,&l_74,&l_74,(void*)0,&l_74,&l_74,(void*)0}};
                        int i, j;
                        l_73[0][7] = (void*)0;
                    }
                    else
                    { /* block id: 36 */
                        struct S1 l_76[9] = {{0x710050AEL,0x4FC7CCE1L,0x56L,0xEE88CA97L,0xD5910F19L,-1L,6UL,0x2B10ED2AL,0x60L},{0x710050AEL,0x4FC7CCE1L,0x56L,0xEE88CA97L,0xD5910F19L,-1L,6UL,0x2B10ED2AL,0x60L},{0x710050AEL,0x4FC7CCE1L,0x56L,0xEE88CA97L,0xD5910F19L,-1L,6UL,0x2B10ED2AL,0x60L},{0x710050AEL,0x4FC7CCE1L,0x56L,0xEE88CA97L,0xD5910F19L,-1L,6UL,0x2B10ED2AL,0x60L},{0x710050AEL,0x4FC7CCE1L,0x56L,0xEE88CA97L,0xD5910F19L,-1L,6UL,0x2B10ED2AL,0x60L},{0x710050AEL,0x4FC7CCE1L,0x56L,0xEE88CA97L,0xD5910F19L,-1L,6UL,0x2B10ED2AL,0x60L},{0x710050AEL,0x4FC7CCE1L,0x56L,0xEE88CA97L,0xD5910F19L,-1L,6UL,0x2B10ED2AL,0x60L},{0x710050AEL,0x4FC7CCE1L,0x56L,0xEE88CA97L,0xD5910F19L,-1L,6UL,0x2B10ED2AL,0x60L},{0x710050AEL,0x4FC7CCE1L,0x56L,0xEE88CA97L,0xD5910F19L,-1L,6UL,0x2B10ED2AL,0x60L}};
                        struct S1 *l_75[8] = {&l_76[4],&l_76[0],&l_76[4],&l_76[4],&l_76[0],&l_76[4],&l_76[4],&l_76[0]};
                        VECTOR(int8_t, 4) l_77 = (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x46L), 0x46L);
                        uint32_t l_78 = 0xC7D6A203L;
                        int16_t l_79 = 1L;
                        VECTOR(int8_t, 8) l_80 = (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0L), 0L), 0L, 1L, 0L);
                        int32_t l_81 = 0x3F176801L;
                        uint64_t l_82 = 2UL;
                        int64_t l_83 = 4L;
                        uint8_t l_84 = 0xB5L;
                        int i;
                        l_75[1] = (void*)0;
                        (*l_49) |= (((VECTOR(uint8_t, 16))(clz(((VECTOR(uint8_t, 8))(abs_diff(((VECTOR(int8_t, 16))(l_77.wwxzxyyyzwzxyzyy)).odd, ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(l_78, l_79, ((VECTOR(int8_t, 4))(l_80.s0110)), (-1L), l_81, ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(1L, 0L)), 1L, (-1L))), ((VECTOR(int8_t, 2))(0x5DL, 0x35L)), 0L, 0x77L)).sfb00)).zwzzwwxx))).s6051560067473045))).sd , l_82);
                        l_84++;
                    }
                }
                else
                { /* block id: 41 */
                    int8_t l_87 = 0x02L;
                    l_87 &= (-8L);
                }
                l_89[1] = l_88;
                l_91 &= ((VECTOR(int32_t, 16))(l_90.sa5100e805a516e1a)).se;
            }
            else
            { /* block id: 46 */
                union U4 l_92 = {1UL};/* VOLATILE GLOBAL l_92 */
                uint8_t l_93 = 0x03L;
                uint16_t l_114 = 1UL;
                int32_t l_115 = 0x0B0E1DEEL;
                uint32_t l_116 = 1UL;
                if ((l_92 , l_93))
                { /* block id: 47 */
                    union U3 l_94 = {{0x0E7CC0E3L,-8L,0x23L,4294967293UL,0xBAD65AA8L,0x435EL,4294967295UL,0x33C0195DL,5L}};/* VOLATILE GLOBAL l_94 */
                    int16_t l_95 = 0x6CE5L;
                    int32_t l_96 = 0L;
                    union U2 l_97[8] = {{0x50BBB056L},{0x50BBB056L},{0x50BBB056L},{0x50BBB056L},{0x50BBB056L},{0x50BBB056L},{0x50BBB056L},{0x50BBB056L}};
                    union U2 l_98[5] = {{-4L},{-4L},{-4L},{-4L},{-4L}};
                    union U2 l_99 = {0x527C6EF0L};
                    union U2 l_100[7] = {{3L},{0x1B348779L},{3L},{3L},{0x1B348779L},{3L},{3L}};
                    int32_t l_101[9];
                    union U5 l_103 = {3UL};/* VOLATILE GLOBAL l_103 */
                    union U5 *l_102 = &l_103;
                    union U5 *l_104[3];
                    int i;
                    for (i = 0; i < 9; i++)
                        l_101[i] = 0L;
                    for (i = 0; i < 3; i++)
                        l_104[i] = &l_103;
                    l_104[1] = (((((l_94 , (l_99 = (((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(l_95, (-7L), (-7L), l_96, 1L, 0x5FB725B5L, 0x07EA974BL, 0L)).s45)).hi , (l_98[4] = l_97[4])))) , (-1L)) , FAKE_DIVERGE(p_676->local_1_offset, get_local_id(1), 10)) , l_100[0]) , (FAKE_DIVERGE(p_676->global_0_offset, get_global_id(0), 10) , (l_101[6] , l_102)));
                }
                else
                { /* block id: 51 */
                    int32_t l_105 = 0x0F7CF346L;
                    for (l_105 = 26; (l_105 == (-4)); l_105--)
                    { /* block id: 54 */
                        int32_t l_108 = 0x6D0D7E74L;
                        struct S1 **l_109 = (void*)0;
                        struct S1 l_112 = {2L,-9L,0L,0xD3918D4DL,0x21E918CEL,0x4501L,9UL,1L,0x0BL};/* VOLATILE GLOBAL l_112 */
                        struct S1 *l_111 = &l_112;
                        struct S1 **l_110 = &l_111;
                        struct S1 **l_113 = (void*)0;
                        l_113 = (l_109 = (l_108 , (l_110 = l_109)));
                    }
                }
                l_114 &= (-1L);
                --l_116;
            }
        }
        else
        { /* block id: 63 */
            VECTOR(int32_t, 16) l_119 = (VECTOR(int32_t, 16))(0x2A76C0FFL, (VECTOR(int32_t, 4))(0x2A76C0FFL, (VECTOR(int32_t, 2))(0x2A76C0FFL, 0x0DBA4FD9L), 0x0DBA4FD9L), 0x0DBA4FD9L, 0x2A76C0FFL, 0x0DBA4FD9L, (VECTOR(int32_t, 2))(0x2A76C0FFL, 0x0DBA4FD9L), (VECTOR(int32_t, 2))(0x2A76C0FFL, 0x0DBA4FD9L), 0x2A76C0FFL, 0x0DBA4FD9L, 0x2A76C0FFL, 0x0DBA4FD9L);
            int8_t l_120 = 0x3AL;
            uint8_t l_121 = 1UL;
            VECTOR(uint16_t, 2) l_122 = (VECTOR(uint16_t, 2))(1UL, 0x1B9CL);
            struct S1 l_123 = {0L,-4L,-1L,1UL,0x6C4551C7L,6L,0x97FD118FL,0x78067CD4L,0x24L};/* VOLATILE GLOBAL l_123 */
            struct S0 *l_153 = (void*)0;
            struct S0 l_155[8][5] = {{{0x6CL,0x7736DF9666D4F1ABL,0x7B1E9707L,0xC291C5DBL,0UL},{-4L,0x3336261CEE45C02AL,1L,9UL,0xF02EL},{7L,0x21EA34858A108B1EL,0x0270F715L,1UL,1UL},{-4L,0x3336261CEE45C02AL,1L,9UL,0xF02EL},{0x6CL,0x7736DF9666D4F1ABL,0x7B1E9707L,0xC291C5DBL,0UL}},{{0x6CL,0x7736DF9666D4F1ABL,0x7B1E9707L,0xC291C5DBL,0UL},{-4L,0x3336261CEE45C02AL,1L,9UL,0xF02EL},{7L,0x21EA34858A108B1EL,0x0270F715L,1UL,1UL},{-4L,0x3336261CEE45C02AL,1L,9UL,0xF02EL},{0x6CL,0x7736DF9666D4F1ABL,0x7B1E9707L,0xC291C5DBL,0UL}},{{0x6CL,0x7736DF9666D4F1ABL,0x7B1E9707L,0xC291C5DBL,0UL},{-4L,0x3336261CEE45C02AL,1L,9UL,0xF02EL},{7L,0x21EA34858A108B1EL,0x0270F715L,1UL,1UL},{-4L,0x3336261CEE45C02AL,1L,9UL,0xF02EL},{0x6CL,0x7736DF9666D4F1ABL,0x7B1E9707L,0xC291C5DBL,0UL}},{{0x6CL,0x7736DF9666D4F1ABL,0x7B1E9707L,0xC291C5DBL,0UL},{-4L,0x3336261CEE45C02AL,1L,9UL,0xF02EL},{7L,0x21EA34858A108B1EL,0x0270F715L,1UL,1UL},{-4L,0x3336261CEE45C02AL,1L,9UL,0xF02EL},{0x6CL,0x7736DF9666D4F1ABL,0x7B1E9707L,0xC291C5DBL,0UL}},{{0x6CL,0x7736DF9666D4F1ABL,0x7B1E9707L,0xC291C5DBL,0UL},{-4L,0x3336261CEE45C02AL,1L,9UL,0xF02EL},{7L,0x21EA34858A108B1EL,0x0270F715L,1UL,1UL},{-4L,0x3336261CEE45C02AL,1L,9UL,0xF02EL},{0x6CL,0x7736DF9666D4F1ABL,0x7B1E9707L,0xC291C5DBL,0UL}},{{0x6CL,0x7736DF9666D4F1ABL,0x7B1E9707L,0xC291C5DBL,0UL},{-4L,0x3336261CEE45C02AL,1L,9UL,0xF02EL},{7L,0x21EA34858A108B1EL,0x0270F715L,1UL,1UL},{-4L,0x3336261CEE45C02AL,1L,9UL,0xF02EL},{0x6CL,0x7736DF9666D4F1ABL,0x7B1E9707L,0xC291C5DBL,0UL}},{{0x6CL,0x7736DF9666D4F1ABL,0x7B1E9707L,0xC291C5DBL,0UL},{-4L,0x3336261CEE45C02AL,1L,9UL,0xF02EL},{7L,0x21EA34858A108B1EL,0x0270F715L,1UL,1UL},{-4L,0x3336261CEE45C02AL,1L,9UL,0xF02EL},{0x6CL,0x7736DF9666D4F1ABL,0x7B1E9707L,0xC291C5DBL,0UL}},{{0x6CL,0x7736DF9666D4F1ABL,0x7B1E9707L,0xC291C5DBL,0UL},{-4L,0x3336261CEE45C02AL,1L,9UL,0xF02EL},{7L,0x21EA34858A108B1EL,0x0270F715L,1UL,1UL},{-4L,0x3336261CEE45C02AL,1L,9UL,0xF02EL},{0x6CL,0x7736DF9666D4F1ABL,0x7B1E9707L,0xC291C5DBL,0UL}}};
            struct S0 *l_154 = &l_155[7][2];
            struct S0 l_156 = {0x4DL,0x5DD8FAB9531DB4C0L,-10L,0x538A22CCL,0x1B7FL};
            struct S0 l_157[1] = {{-1L,0x3AD5F7D496A37886L,0x6FD07E57L,0xFAD95760L,0xC5B6L}};
            struct S0 l_158 = {0x22L,0x0C2C05A03AF1E85BL,0x3E760DDEL,1UL,0x8DC7L};
            int i, j;
            l_121 &= (l_120 |= ((VECTOR(int32_t, 4))(l_119.s95b2)).x);
            if (((((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 4))(l_122.xyyy)))).w , l_123) , (-3L)))
            { /* block id: 66 */
                int32_t *l_124 = (void*)0;
                l_49 = (void*)0;
                l_47 = l_124;
            }
            else
            { /* block id: 69 */
                int32_t *l_125 = (void*)0;
                union U5 l_126 = {1UL};/* VOLATILE GLOBAL l_126 */
                union U5 *l_128 = &l_126;
                union U5 **l_127 = &l_128;
                union U5 **l_129 = &l_128;
                l_49 = (l_125 = l_125);
                l_129 = (l_126 , (l_127 = (void*)0));
                for (l_126.f4.f4 = 0; (l_126.f4.f4 >= 54); l_126.f4.f4 = safe_add_func_uint16_t_u_u(l_126.f4.f4, 9))
                { /* block id: 76 */
                    int32_t l_132[10][2] = {{1L,(-1L)},{1L,(-1L)},{1L,(-1L)},{1L,(-1L)},{1L,(-1L)},{1L,(-1L)},{1L,(-1L)},{1L,(-1L)},{1L,(-1L)},{1L,(-1L)}};
                    struct S1 l_140 = {7L,-3L,-1L,4294967287UL,0xFD29CBA6L,-7L,0x3EDC589EL,5L,-1L};/* VOLATILE GLOBAL l_140 */
                    struct S1 l_141[5][3] = {{{0L,1L,0x6FL,0x309B0889L,0x2E3E0F82L,0x0F61L,0x67556C6AL,-3L,0L},{-10L,0x15139BD6L,0x01L,0xC89DEAB6L,4UL,0x5A84L,0x2CCAACA3L,0L,-1L},{5L,0x03AEA3D4L,0x66L,0x5388A1ECL,0xEF58C2C6L,0x66B9L,0x1A24DA4DL,0x33172247L,-1L}},{{0L,1L,0x6FL,0x309B0889L,0x2E3E0F82L,0x0F61L,0x67556C6AL,-3L,0L},{-10L,0x15139BD6L,0x01L,0xC89DEAB6L,4UL,0x5A84L,0x2CCAACA3L,0L,-1L},{5L,0x03AEA3D4L,0x66L,0x5388A1ECL,0xEF58C2C6L,0x66B9L,0x1A24DA4DL,0x33172247L,-1L}},{{0L,1L,0x6FL,0x309B0889L,0x2E3E0F82L,0x0F61L,0x67556C6AL,-3L,0L},{-10L,0x15139BD6L,0x01L,0xC89DEAB6L,4UL,0x5A84L,0x2CCAACA3L,0L,-1L},{5L,0x03AEA3D4L,0x66L,0x5388A1ECL,0xEF58C2C6L,0x66B9L,0x1A24DA4DL,0x33172247L,-1L}},{{0L,1L,0x6FL,0x309B0889L,0x2E3E0F82L,0x0F61L,0x67556C6AL,-3L,0L},{-10L,0x15139BD6L,0x01L,0xC89DEAB6L,4UL,0x5A84L,0x2CCAACA3L,0L,-1L},{5L,0x03AEA3D4L,0x66L,0x5388A1ECL,0xEF58C2C6L,0x66B9L,0x1A24DA4DL,0x33172247L,-1L}},{{0L,1L,0x6FL,0x309B0889L,0x2E3E0F82L,0x0F61L,0x67556C6AL,-3L,0L},{-10L,0x15139BD6L,0x01L,0xC89DEAB6L,4UL,0x5A84L,0x2CCAACA3L,0L,-1L},{5L,0x03AEA3D4L,0x66L,0x5388A1ECL,0xEF58C2C6L,0x66B9L,0x1A24DA4DL,0x33172247L,-1L}}};
                    int32_t l_142 = 1L;
                    union U5 l_143[7][4][2] = {{{{0x6E3EBE734CB3E640L},{3UL}},{{0x6E3EBE734CB3E640L},{3UL}},{{0x6E3EBE734CB3E640L},{3UL}},{{0x6E3EBE734CB3E640L},{3UL}}},{{{0x6E3EBE734CB3E640L},{3UL}},{{0x6E3EBE734CB3E640L},{3UL}},{{0x6E3EBE734CB3E640L},{3UL}},{{0x6E3EBE734CB3E640L},{3UL}}},{{{0x6E3EBE734CB3E640L},{3UL}},{{0x6E3EBE734CB3E640L},{3UL}},{{0x6E3EBE734CB3E640L},{3UL}},{{0x6E3EBE734CB3E640L},{3UL}}},{{{0x6E3EBE734CB3E640L},{3UL}},{{0x6E3EBE734CB3E640L},{3UL}},{{0x6E3EBE734CB3E640L},{3UL}},{{0x6E3EBE734CB3E640L},{3UL}}},{{{0x6E3EBE734CB3E640L},{3UL}},{{0x6E3EBE734CB3E640L},{3UL}},{{0x6E3EBE734CB3E640L},{3UL}},{{0x6E3EBE734CB3E640L},{3UL}}},{{{0x6E3EBE734CB3E640L},{3UL}},{{0x6E3EBE734CB3E640L},{3UL}},{{0x6E3EBE734CB3E640L},{3UL}},{{0x6E3EBE734CB3E640L},{3UL}}},{{{0x6E3EBE734CB3E640L},{3UL}},{{0x6E3EBE734CB3E640L},{3UL}},{{0x6E3EBE734CB3E640L},{3UL}},{{0x6E3EBE734CB3E640L},{3UL}}}};
                    uint32_t l_144 = 0x465385C1L;
                    uint32_t l_145[9];
                    int64_t l_146 = 1L;
                    struct S1 l_147 = {0x32E02091L,0x2D69AF1FL,1L,4294967295UL,4294967295UL,0x6BDDL,0xC616B5F8L,-6L,7L};/* VOLATILE GLOBAL l_147 */
                    int64_t l_148 = 0L;
                    struct S0 l_149[5][8] = {{{6L,0x0F86AAB91710C868L,0x2528BEABL,0x46CA4792L,65526UL},{-5L,-7L,0x37405046L,0x53EE0A41L,0x7763L},{0L,-1L,0x302C1F1BL,4294967289UL,65527UL},{0x3FL,0x2690F2597311C0FAL,-1L,0x9C4F052CL,0x063AL},{0x25L,3L,0L,0x78ADA1DBL,0x8194L},{6L,0x0F86AAB91710C868L,0x2528BEABL,0x46CA4792L,65526UL},{0x3FL,0x2690F2597311C0FAL,-1L,0x9C4F052CL,0x063AL},{0x0FL,0x0263FFD70F741C8FL,0x49DCB475L,0xEABB476BL,0xEB71L}},{{6L,0x0F86AAB91710C868L,0x2528BEABL,0x46CA4792L,65526UL},{-5L,-7L,0x37405046L,0x53EE0A41L,0x7763L},{0L,-1L,0x302C1F1BL,4294967289UL,65527UL},{0x3FL,0x2690F2597311C0FAL,-1L,0x9C4F052CL,0x063AL},{0x25L,3L,0L,0x78ADA1DBL,0x8194L},{6L,0x0F86AAB91710C868L,0x2528BEABL,0x46CA4792L,65526UL},{0x3FL,0x2690F2597311C0FAL,-1L,0x9C4F052CL,0x063AL},{0x0FL,0x0263FFD70F741C8FL,0x49DCB475L,0xEABB476BL,0xEB71L}},{{6L,0x0F86AAB91710C868L,0x2528BEABL,0x46CA4792L,65526UL},{-5L,-7L,0x37405046L,0x53EE0A41L,0x7763L},{0L,-1L,0x302C1F1BL,4294967289UL,65527UL},{0x3FL,0x2690F2597311C0FAL,-1L,0x9C4F052CL,0x063AL},{0x25L,3L,0L,0x78ADA1DBL,0x8194L},{6L,0x0F86AAB91710C868L,0x2528BEABL,0x46CA4792L,65526UL},{0x3FL,0x2690F2597311C0FAL,-1L,0x9C4F052CL,0x063AL},{0x0FL,0x0263FFD70F741C8FL,0x49DCB475L,0xEABB476BL,0xEB71L}},{{6L,0x0F86AAB91710C868L,0x2528BEABL,0x46CA4792L,65526UL},{-5L,-7L,0x37405046L,0x53EE0A41L,0x7763L},{0L,-1L,0x302C1F1BL,4294967289UL,65527UL},{0x3FL,0x2690F2597311C0FAL,-1L,0x9C4F052CL,0x063AL},{0x25L,3L,0L,0x78ADA1DBL,0x8194L},{6L,0x0F86AAB91710C868L,0x2528BEABL,0x46CA4792L,65526UL},{0x3FL,0x2690F2597311C0FAL,-1L,0x9C4F052CL,0x063AL},{0x0FL,0x0263FFD70F741C8FL,0x49DCB475L,0xEABB476BL,0xEB71L}},{{6L,0x0F86AAB91710C868L,0x2528BEABL,0x46CA4792L,65526UL},{-5L,-7L,0x37405046L,0x53EE0A41L,0x7763L},{0L,-1L,0x302C1F1BL,4294967289UL,65527UL},{0x3FL,0x2690F2597311C0FAL,-1L,0x9C4F052CL,0x063AL},{0x25L,3L,0L,0x78ADA1DBL,0x8194L},{6L,0x0F86AAB91710C868L,0x2528BEABL,0x46CA4792L,65526UL},{0x3FL,0x2690F2597311C0FAL,-1L,0x9C4F052CL,0x063AL},{0x0FL,0x0263FFD70F741C8FL,0x49DCB475L,0xEABB476BL,0xEB71L}}};
                    struct S0 l_150 = {0L,3L,0x6810A478L,0UL,9UL};
                    struct S0 l_151 = {0L,0x3D2A75425D473E17L,-1L,1UL,6UL};
                    struct S0 l_152 = {-10L,0x6259364BBA175D58L,-3L,0UL,65526UL};
                    int i, j, k;
                    for (i = 0; i < 9; i++)
                        l_145[i] = 0UL;
                    for (l_132[9][1] = (-8); (l_132[9][1] == (-2)); l_132[9][1] = safe_add_func_int64_t_s_s(l_132[9][1], 3))
                    { /* block id: 79 */
                        int32_t l_135 = 7L;
                        uint64_t l_136[6][8] = {{0x90286014B7CFDC75L,18446744073709551612UL,18446744073709551612UL,0x90286014B7CFDC75L,18446744073709551615UL,1UL,1UL,18446744073709551615UL},{0x90286014B7CFDC75L,18446744073709551612UL,18446744073709551612UL,0x90286014B7CFDC75L,18446744073709551615UL,1UL,1UL,18446744073709551615UL},{0x90286014B7CFDC75L,18446744073709551612UL,18446744073709551612UL,0x90286014B7CFDC75L,18446744073709551615UL,1UL,1UL,18446744073709551615UL},{0x90286014B7CFDC75L,18446744073709551612UL,18446744073709551612UL,0x90286014B7CFDC75L,18446744073709551615UL,1UL,1UL,18446744073709551615UL},{0x90286014B7CFDC75L,18446744073709551612UL,18446744073709551612UL,0x90286014B7CFDC75L,18446744073709551615UL,1UL,1UL,18446744073709551615UL},{0x90286014B7CFDC75L,18446744073709551612UL,18446744073709551612UL,0x90286014B7CFDC75L,18446744073709551615UL,1UL,1UL,18446744073709551615UL}};
                        struct S1 l_138[6][3][5] = {{{{0x4DC65A50L,0x08A30ADBL,0x6DL,0x3C0EF0C6L,1UL,1L,0x1265F8E8L,0x0DD8AA33L,0x40L},{-1L,-1L,0x57L,0xC42770DCL,0xAA2D29FBL,0x2182L,0xCCD7E025L,0L,1L},{-6L,0x2B75B0D0L,-1L,6UL,0x96ED306EL,0x1C27L,0xB4EE42DCL,0L,0x27L},{1L,0x1FC39425L,1L,0x9D26971DL,0x33402012L,1L,1UL,0x635642BDL,0x76L},{0L,0x535500DBL,-5L,4294967295UL,4294967289UL,-9L,0x0F46CB25L,-1L,0L}},{{0x4DC65A50L,0x08A30ADBL,0x6DL,0x3C0EF0C6L,1UL,1L,0x1265F8E8L,0x0DD8AA33L,0x40L},{-1L,-1L,0x57L,0xC42770DCL,0xAA2D29FBL,0x2182L,0xCCD7E025L,0L,1L},{-6L,0x2B75B0D0L,-1L,6UL,0x96ED306EL,0x1C27L,0xB4EE42DCL,0L,0x27L},{1L,0x1FC39425L,1L,0x9D26971DL,0x33402012L,1L,1UL,0x635642BDL,0x76L},{0L,0x535500DBL,-5L,4294967295UL,4294967289UL,-9L,0x0F46CB25L,-1L,0L}},{{0x4DC65A50L,0x08A30ADBL,0x6DL,0x3C0EF0C6L,1UL,1L,0x1265F8E8L,0x0DD8AA33L,0x40L},{-1L,-1L,0x57L,0xC42770DCL,0xAA2D29FBL,0x2182L,0xCCD7E025L,0L,1L},{-6L,0x2B75B0D0L,-1L,6UL,0x96ED306EL,0x1C27L,0xB4EE42DCL,0L,0x27L},{1L,0x1FC39425L,1L,0x9D26971DL,0x33402012L,1L,1UL,0x635642BDL,0x76L},{0L,0x535500DBL,-5L,4294967295UL,4294967289UL,-9L,0x0F46CB25L,-1L,0L}}},{{{0x4DC65A50L,0x08A30ADBL,0x6DL,0x3C0EF0C6L,1UL,1L,0x1265F8E8L,0x0DD8AA33L,0x40L},{-1L,-1L,0x57L,0xC42770DCL,0xAA2D29FBL,0x2182L,0xCCD7E025L,0L,1L},{-6L,0x2B75B0D0L,-1L,6UL,0x96ED306EL,0x1C27L,0xB4EE42DCL,0L,0x27L},{1L,0x1FC39425L,1L,0x9D26971DL,0x33402012L,1L,1UL,0x635642BDL,0x76L},{0L,0x535500DBL,-5L,4294967295UL,4294967289UL,-9L,0x0F46CB25L,-1L,0L}},{{0x4DC65A50L,0x08A30ADBL,0x6DL,0x3C0EF0C6L,1UL,1L,0x1265F8E8L,0x0DD8AA33L,0x40L},{-1L,-1L,0x57L,0xC42770DCL,0xAA2D29FBL,0x2182L,0xCCD7E025L,0L,1L},{-6L,0x2B75B0D0L,-1L,6UL,0x96ED306EL,0x1C27L,0xB4EE42DCL,0L,0x27L},{1L,0x1FC39425L,1L,0x9D26971DL,0x33402012L,1L,1UL,0x635642BDL,0x76L},{0L,0x535500DBL,-5L,4294967295UL,4294967289UL,-9L,0x0F46CB25L,-1L,0L}},{{0x4DC65A50L,0x08A30ADBL,0x6DL,0x3C0EF0C6L,1UL,1L,0x1265F8E8L,0x0DD8AA33L,0x40L},{-1L,-1L,0x57L,0xC42770DCL,0xAA2D29FBL,0x2182L,0xCCD7E025L,0L,1L},{-6L,0x2B75B0D0L,-1L,6UL,0x96ED306EL,0x1C27L,0xB4EE42DCL,0L,0x27L},{1L,0x1FC39425L,1L,0x9D26971DL,0x33402012L,1L,1UL,0x635642BDL,0x76L},{0L,0x535500DBL,-5L,4294967295UL,4294967289UL,-9L,0x0F46CB25L,-1L,0L}}},{{{0x4DC65A50L,0x08A30ADBL,0x6DL,0x3C0EF0C6L,1UL,1L,0x1265F8E8L,0x0DD8AA33L,0x40L},{-1L,-1L,0x57L,0xC42770DCL,0xAA2D29FBL,0x2182L,0xCCD7E025L,0L,1L},{-6L,0x2B75B0D0L,-1L,6UL,0x96ED306EL,0x1C27L,0xB4EE42DCL,0L,0x27L},{1L,0x1FC39425L,1L,0x9D26971DL,0x33402012L,1L,1UL,0x635642BDL,0x76L},{0L,0x535500DBL,-5L,4294967295UL,4294967289UL,-9L,0x0F46CB25L,-1L,0L}},{{0x4DC65A50L,0x08A30ADBL,0x6DL,0x3C0EF0C6L,1UL,1L,0x1265F8E8L,0x0DD8AA33L,0x40L},{-1L,-1L,0x57L,0xC42770DCL,0xAA2D29FBL,0x2182L,0xCCD7E025L,0L,1L},{-6L,0x2B75B0D0L,-1L,6UL,0x96ED306EL,0x1C27L,0xB4EE42DCL,0L,0x27L},{1L,0x1FC39425L,1L,0x9D26971DL,0x33402012L,1L,1UL,0x635642BDL,0x76L},{0L,0x535500DBL,-5L,4294967295UL,4294967289UL,-9L,0x0F46CB25L,-1L,0L}},{{0x4DC65A50L,0x08A30ADBL,0x6DL,0x3C0EF0C6L,1UL,1L,0x1265F8E8L,0x0DD8AA33L,0x40L},{-1L,-1L,0x57L,0xC42770DCL,0xAA2D29FBL,0x2182L,0xCCD7E025L,0L,1L},{-6L,0x2B75B0D0L,-1L,6UL,0x96ED306EL,0x1C27L,0xB4EE42DCL,0L,0x27L},{1L,0x1FC39425L,1L,0x9D26971DL,0x33402012L,1L,1UL,0x635642BDL,0x76L},{0L,0x535500DBL,-5L,4294967295UL,4294967289UL,-9L,0x0F46CB25L,-1L,0L}}},{{{0x4DC65A50L,0x08A30ADBL,0x6DL,0x3C0EF0C6L,1UL,1L,0x1265F8E8L,0x0DD8AA33L,0x40L},{-1L,-1L,0x57L,0xC42770DCL,0xAA2D29FBL,0x2182L,0xCCD7E025L,0L,1L},{-6L,0x2B75B0D0L,-1L,6UL,0x96ED306EL,0x1C27L,0xB4EE42DCL,0L,0x27L},{1L,0x1FC39425L,1L,0x9D26971DL,0x33402012L,1L,1UL,0x635642BDL,0x76L},{0L,0x535500DBL,-5L,4294967295UL,4294967289UL,-9L,0x0F46CB25L,-1L,0L}},{{0x4DC65A50L,0x08A30ADBL,0x6DL,0x3C0EF0C6L,1UL,1L,0x1265F8E8L,0x0DD8AA33L,0x40L},{-1L,-1L,0x57L,0xC42770DCL,0xAA2D29FBL,0x2182L,0xCCD7E025L,0L,1L},{-6L,0x2B75B0D0L,-1L,6UL,0x96ED306EL,0x1C27L,0xB4EE42DCL,0L,0x27L},{1L,0x1FC39425L,1L,0x9D26971DL,0x33402012L,1L,1UL,0x635642BDL,0x76L},{0L,0x535500DBL,-5L,4294967295UL,4294967289UL,-9L,0x0F46CB25L,-1L,0L}},{{0x4DC65A50L,0x08A30ADBL,0x6DL,0x3C0EF0C6L,1UL,1L,0x1265F8E8L,0x0DD8AA33L,0x40L},{-1L,-1L,0x57L,0xC42770DCL,0xAA2D29FBL,0x2182L,0xCCD7E025L,0L,1L},{-6L,0x2B75B0D0L,-1L,6UL,0x96ED306EL,0x1C27L,0xB4EE42DCL,0L,0x27L},{1L,0x1FC39425L,1L,0x9D26971DL,0x33402012L,1L,1UL,0x635642BDL,0x76L},{0L,0x535500DBL,-5L,4294967295UL,4294967289UL,-9L,0x0F46CB25L,-1L,0L}}},{{{0x4DC65A50L,0x08A30ADBL,0x6DL,0x3C0EF0C6L,1UL,1L,0x1265F8E8L,0x0DD8AA33L,0x40L},{-1L,-1L,0x57L,0xC42770DCL,0xAA2D29FBL,0x2182L,0xCCD7E025L,0L,1L},{-6L,0x2B75B0D0L,-1L,6UL,0x96ED306EL,0x1C27L,0xB4EE42DCL,0L,0x27L},{1L,0x1FC39425L,1L,0x9D26971DL,0x33402012L,1L,1UL,0x635642BDL,0x76L},{0L,0x535500DBL,-5L,4294967295UL,4294967289UL,-9L,0x0F46CB25L,-1L,0L}},{{0x4DC65A50L,0x08A30ADBL,0x6DL,0x3C0EF0C6L,1UL,1L,0x1265F8E8L,0x0DD8AA33L,0x40L},{-1L,-1L,0x57L,0xC42770DCL,0xAA2D29FBL,0x2182L,0xCCD7E025L,0L,1L},{-6L,0x2B75B0D0L,-1L,6UL,0x96ED306EL,0x1C27L,0xB4EE42DCL,0L,0x27L},{1L,0x1FC39425L,1L,0x9D26971DL,0x33402012L,1L,1UL,0x635642BDL,0x76L},{0L,0x535500DBL,-5L,4294967295UL,4294967289UL,-9L,0x0F46CB25L,-1L,0L}},{{0x4DC65A50L,0x08A30ADBL,0x6DL,0x3C0EF0C6L,1UL,1L,0x1265F8E8L,0x0DD8AA33L,0x40L},{-1L,-1L,0x57L,0xC42770DCL,0xAA2D29FBL,0x2182L,0xCCD7E025L,0L,1L},{-6L,0x2B75B0D0L,-1L,6UL,0x96ED306EL,0x1C27L,0xB4EE42DCL,0L,0x27L},{1L,0x1FC39425L,1L,0x9D26971DL,0x33402012L,1L,1UL,0x635642BDL,0x76L},{0L,0x535500DBL,-5L,4294967295UL,4294967289UL,-9L,0x0F46CB25L,-1L,0L}}},{{{0x4DC65A50L,0x08A30ADBL,0x6DL,0x3C0EF0C6L,1UL,1L,0x1265F8E8L,0x0DD8AA33L,0x40L},{-1L,-1L,0x57L,0xC42770DCL,0xAA2D29FBL,0x2182L,0xCCD7E025L,0L,1L},{-6L,0x2B75B0D0L,-1L,6UL,0x96ED306EL,0x1C27L,0xB4EE42DCL,0L,0x27L},{1L,0x1FC39425L,1L,0x9D26971DL,0x33402012L,1L,1UL,0x635642BDL,0x76L},{0L,0x535500DBL,-5L,4294967295UL,4294967289UL,-9L,0x0F46CB25L,-1L,0L}},{{0x4DC65A50L,0x08A30ADBL,0x6DL,0x3C0EF0C6L,1UL,1L,0x1265F8E8L,0x0DD8AA33L,0x40L},{-1L,-1L,0x57L,0xC42770DCL,0xAA2D29FBL,0x2182L,0xCCD7E025L,0L,1L},{-6L,0x2B75B0D0L,-1L,6UL,0x96ED306EL,0x1C27L,0xB4EE42DCL,0L,0x27L},{1L,0x1FC39425L,1L,0x9D26971DL,0x33402012L,1L,1UL,0x635642BDL,0x76L},{0L,0x535500DBL,-5L,4294967295UL,4294967289UL,-9L,0x0F46CB25L,-1L,0L}},{{0x4DC65A50L,0x08A30ADBL,0x6DL,0x3C0EF0C6L,1UL,1L,0x1265F8E8L,0x0DD8AA33L,0x40L},{-1L,-1L,0x57L,0xC42770DCL,0xAA2D29FBL,0x2182L,0xCCD7E025L,0L,1L},{-6L,0x2B75B0D0L,-1L,6UL,0x96ED306EL,0x1C27L,0xB4EE42DCL,0L,0x27L},{1L,0x1FC39425L,1L,0x9D26971DL,0x33402012L,1L,1UL,0x635642BDL,0x76L},{0L,0x535500DBL,-5L,4294967295UL,4294967289UL,-9L,0x0F46CB25L,-1L,0L}}}};
                        struct S1 *l_137 = &l_138[2][0][2];
                        struct S1 *l_139 = &l_138[2][0][2];
                        int i, j, k;
                        (*l_47) = (-2L);
                        l_136[0][0] |= ((*l_47) = l_135);
                        l_139 = l_137;
                    }
                    l_123 = (l_140 , l_141[1][2]);
                    l_152 = ((l_142 , l_143[6][1][0]) , (l_151 = ((((l_144 , l_145[0]) , l_146) , l_147) , (((l_120 = l_148) , (l_149[1][3] , 0x4F55L)) , l_150))));
                }
            }
            l_154 = l_153;
            l_158 = (l_156 , l_157[0]);
        }
        unsigned int result = 0;
        result += l_44;
        result += l_48;
        result += l_50;
        int l_51_i0;
        for (l_51_i0 = 0; l_51_i0 < 3; l_51_i0++) {
            result += l_51[l_51_i0];
        }
        result += l_52;
        result += l_53;
        result += l_54;
        atomic_add(&p_676->g_special_values[35 * get_linear_group_id() + 14], result);
    }
    else
    { /* block id: 94 */
        (1 + 1);
    }
    (*l_675) = (func_159((func_165(l_170, p_676->g_173, func_175(&p_676->g_174, func_179(func_184(func_187((*l_42), p_676->g_190[3][0][7], p_676), (*l_42), p_676), l_22.z, l_22.z, l_40.y, p_676), p_676->g_258.w, p_676), l_32.s7, p_676) , 0x9234L), l_547, p_676->g_548.f4, p_676->g_173, l_21.x, p_676) , (void*)0);
    (*l_42) = (*l_42);
    return p_676->g_330[1][2][3].f8;
}


/* ------------------------------------------ */
/* 
 * reads : p_676->g_comm_values p_676->g_37 p_676->g_41
 * writes: p_676->g_37
 */
union U3  func_6(int8_t  p_7, int32_t  p_8, uint64_t  p_9, int64_t  p_10, struct S6 * p_676)
{ /* block id: 9 */
    p_676->g_37 |= p_676->g_comm_values[p_676->tid];
    return p_676->g_41[0][2];
}


/* ------------------------------------------ */
/* 
 * reads : p_676->g_37
 * writes: p_676->g_37
 */
int32_t  func_23(int64_t  p_24, uint32_t  p_25, uint32_t  p_26, uint16_t  p_27, struct S6 * p_676)
{ /* block id: 5 */
    int32_t *l_36 = &p_676->g_37;
    (*l_36) |= 0x7906852DL;
    return (*l_36);
}


/* ------------------------------------------ */
/* 
 * reads : p_676->g_528 p_676->g_529 p_676->g_548.f7 p_676->g_43 p_676->g_463 p_676->g_331.f0 p_676->g_396 p_676->g_373 p_676->g_393 p_676->g_330.f2 p_676->g_293.f0 p_676->g_329 p_676->g_198
 * writes: p_676->g_463 p_676->g_41.f0.f5 p_676->g_396 p_676->g_548.f6 p_676->g_293.f6 p_676->g_43
 */
struct S0  func_159(uint16_t  p_160, struct S1 * p_161, uint32_t  p_162, struct S1 ** p_163, int64_t  p_164, struct S6 * p_676)
{ /* block id: 284 */
    uint32_t l_549 = 4294967295UL;
    struct S0 l_564 = {0x63L,1L,0L,9UL,65528UL};
    int64_t *l_566 = (void*)0;
    int32_t l_575 = (-1L);
    uint16_t *l_576 = &l_564.f4;
    uint64_t *l_577[10][6] = {{&p_676->g_396,&p_676->g_396,&p_676->g_396,(void*)0,&p_676->g_396,(void*)0},{&p_676->g_396,&p_676->g_396,&p_676->g_396,(void*)0,&p_676->g_396,(void*)0},{&p_676->g_396,&p_676->g_396,&p_676->g_396,(void*)0,&p_676->g_396,(void*)0},{&p_676->g_396,&p_676->g_396,&p_676->g_396,(void*)0,&p_676->g_396,(void*)0},{&p_676->g_396,&p_676->g_396,&p_676->g_396,(void*)0,&p_676->g_396,(void*)0},{&p_676->g_396,&p_676->g_396,&p_676->g_396,(void*)0,&p_676->g_396,(void*)0},{&p_676->g_396,&p_676->g_396,&p_676->g_396,(void*)0,&p_676->g_396,(void*)0},{&p_676->g_396,&p_676->g_396,&p_676->g_396,(void*)0,&p_676->g_396,(void*)0},{&p_676->g_396,&p_676->g_396,&p_676->g_396,(void*)0,&p_676->g_396,(void*)0},{&p_676->g_396,&p_676->g_396,&p_676->g_396,(void*)0,&p_676->g_396,(void*)0}};
    int32_t l_578 = 0x5F5447BEL;
    int32_t **l_625 = &p_676->g_190[3][0][7];
    int32_t ***l_624 = &l_625;
    VECTOR(uint8_t, 8) l_640 = (VECTOR(uint8_t, 8))(0x48L, (VECTOR(uint8_t, 4))(0x48L, (VECTOR(uint8_t, 2))(0x48L, 3UL), 3UL), 3UL, 0x48L, 3UL);
    int32_t l_647 = 0x1D241DAEL;
    VECTOR(uint32_t, 16) l_659 = (VECTOR(uint32_t, 16))(0x17E96D56L, (VECTOR(uint32_t, 4))(0x17E96D56L, (VECTOR(uint32_t, 2))(0x17E96D56L, 4294967288UL), 4294967288UL), 4294967288UL, 0x17E96D56L, 4294967288UL, (VECTOR(uint32_t, 2))(0x17E96D56L, 4294967288UL), (VECTOR(uint32_t, 2))(0x17E96D56L, 4294967288UL), 0x17E96D56L, 4294967288UL, 0x17E96D56L, 4294967288UL);
    VECTOR(int32_t, 4) l_662 = (VECTOR(int32_t, 4))(0x6E6AB2CBL, (VECTOR(int32_t, 2))(0x6E6AB2CBL, 0x0CBA56E6L), 0x0CBA56E6L);
    int32_t l_668 = 1L;
    int i, j;
    --l_549;
    p_676->g_463.x |= (safe_lshift_func_int16_t_s_s((safe_unary_minus_func_int8_t_s(((safe_mod_func_int32_t_s_s((-1L), ((safe_mul_func_int16_t_s_s(((l_578 &= (safe_unary_minus_func_int8_t_s((((safe_mul_func_int16_t_s_s((safe_add_func_int16_t_s_s(l_549, (l_549 == ((l_564 , ((safe_unary_minus_func_int8_t_s((l_566 == (void*)0))) && (safe_mod_func_uint32_t_u_u((safe_add_func_uint16_t_u_u((((((*l_576) = ((safe_mod_func_uint16_t_u_u(p_162, (((((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(mul_hi(((VECTOR(int8_t, 16))(((safe_mod_func_uint8_t_u_u(l_549, (((0L >= GROUP_DIVERGE(2, 1)) >= 0x7A525B3DL) , l_564.f3))) && FAKE_DIVERGE(p_676->group_2_offset, get_group_id(2), 10)), 0x64L, ((VECTOR(int8_t, 4))(0x47L)), 0x7CL, ((VECTOR(int8_t, 2))(0L)), ((VECTOR(int8_t, 4))((-6L))), 3L, 0x6FL, 0x04L)).s441a, ((VECTOR(int8_t, 4))(0x20L))))), l_564.f2, (*p_676->g_528), ((VECTOR(int8_t, 4))(0x13L)), ((VECTOR(int8_t, 4))(0L)), (-1L), 0x1DL)).s2b)), 1L, p_162, ((VECTOR(int8_t, 4))((-1L))), 0x4FL, ((VECTOR(int8_t, 4))(0x78L)), 0L, 0x18L, 1L)).s8 , p_160) < p_160) , l_575))) != 0xDB88L)) & p_160) , FAKE_DIVERGE(p_676->global_1_offset, get_global_id(1), 10)) != p_160), GROUP_DIVERGE(0, 1))), p_162)))) , 1UL)))), (-6L))) ^ p_160) >= l_549)))) || l_575), 0x2322L)) , p_676->g_548.f7))) >= p_676->g_43))), l_575));
    if ((atomic_inc(&p_676->l_atomic_input[1]) == 1))
    { /* block id: 290 */
        VECTOR(int32_t, 8) l_579 = (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, (-9L)), (-9L)), (-9L), 1L, (-9L));
        int64_t l_580 = 0x05FC4E7F05282DA0L;
        int8_t l_619 = 8L;
        int8_t *l_618 = &l_619;
        int8_t **l_617 = &l_618;
        int8_t **l_620 = &l_618;
        int8_t **l_621[6][4][10] = {{{&l_618,&l_618,&l_618,(void*)0,&l_618,&l_618,&l_618,&l_618,&l_618,&l_618},{&l_618,&l_618,&l_618,(void*)0,&l_618,&l_618,&l_618,&l_618,&l_618,&l_618},{&l_618,&l_618,&l_618,(void*)0,&l_618,&l_618,&l_618,&l_618,&l_618,&l_618},{&l_618,&l_618,&l_618,(void*)0,&l_618,&l_618,&l_618,&l_618,&l_618,&l_618}},{{&l_618,&l_618,&l_618,(void*)0,&l_618,&l_618,&l_618,&l_618,&l_618,&l_618},{&l_618,&l_618,&l_618,(void*)0,&l_618,&l_618,&l_618,&l_618,&l_618,&l_618},{&l_618,&l_618,&l_618,(void*)0,&l_618,&l_618,&l_618,&l_618,&l_618,&l_618},{&l_618,&l_618,&l_618,(void*)0,&l_618,&l_618,&l_618,&l_618,&l_618,&l_618}},{{&l_618,&l_618,&l_618,(void*)0,&l_618,&l_618,&l_618,&l_618,&l_618,&l_618},{&l_618,&l_618,&l_618,(void*)0,&l_618,&l_618,&l_618,&l_618,&l_618,&l_618},{&l_618,&l_618,&l_618,(void*)0,&l_618,&l_618,&l_618,&l_618,&l_618,&l_618},{&l_618,&l_618,&l_618,(void*)0,&l_618,&l_618,&l_618,&l_618,&l_618,&l_618}},{{&l_618,&l_618,&l_618,(void*)0,&l_618,&l_618,&l_618,&l_618,&l_618,&l_618},{&l_618,&l_618,&l_618,(void*)0,&l_618,&l_618,&l_618,&l_618,&l_618,&l_618},{&l_618,&l_618,&l_618,(void*)0,&l_618,&l_618,&l_618,&l_618,&l_618,&l_618},{&l_618,&l_618,&l_618,(void*)0,&l_618,&l_618,&l_618,&l_618,&l_618,&l_618}},{{&l_618,&l_618,&l_618,(void*)0,&l_618,&l_618,&l_618,&l_618,&l_618,&l_618},{&l_618,&l_618,&l_618,(void*)0,&l_618,&l_618,&l_618,&l_618,&l_618,&l_618},{&l_618,&l_618,&l_618,(void*)0,&l_618,&l_618,&l_618,&l_618,&l_618,&l_618},{&l_618,&l_618,&l_618,(void*)0,&l_618,&l_618,&l_618,&l_618,&l_618,&l_618}},{{&l_618,&l_618,&l_618,(void*)0,&l_618,&l_618,&l_618,&l_618,&l_618,&l_618},{&l_618,&l_618,&l_618,(void*)0,&l_618,&l_618,&l_618,&l_618,&l_618,&l_618},{&l_618,&l_618,&l_618,(void*)0,&l_618,&l_618,&l_618,&l_618,&l_618,&l_618},{&l_618,&l_618,&l_618,(void*)0,&l_618,&l_618,&l_618,&l_618,&l_618,&l_618}}};
        int i, j, k;
        l_580 |= ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(l_579.s04)).yxxy)))).w;
        for (l_579.s5 = 9; (l_579.s5 <= (-21)); l_579.s5--)
        { /* block id: 294 */
            struct S1 l_583 = {0x20EE453BL,0x658E0086L,-1L,0UL,0UL,-1L,4294967289UL,0x4CA734BCL,-10L};/* VOLATILE GLOBAL l_583 */
            struct S1 l_584[4] = {{0x7F33CCCDL,0x60072AB5L,0x56L,7UL,0UL,-2L,4294967286UL,8L,0x36L},{0x7F33CCCDL,0x60072AB5L,0x56L,7UL,0UL,-2L,4294967286UL,8L,0x36L},{0x7F33CCCDL,0x60072AB5L,0x56L,7UL,0UL,-2L,4294967286UL,8L,0x36L},{0x7F33CCCDL,0x60072AB5L,0x56L,7UL,0UL,-2L,4294967286UL,8L,0x36L}};
            uint32_t l_585 = 0x07D41D07L;
            int i;
            l_584[1] = l_583;
            if ((l_585 = 0x26F0341DL))
            { /* block id: 297 */
                int32_t l_587[7][3] = {{0x0B61518AL,(-1L),0x0B61518AL},{0x0B61518AL,(-1L),0x0B61518AL},{0x0B61518AL,(-1L),0x0B61518AL},{0x0B61518AL,(-1L),0x0B61518AL},{0x0B61518AL,(-1L),0x0B61518AL},{0x0B61518AL,(-1L),0x0B61518AL},{0x0B61518AL,(-1L),0x0B61518AL}};
                int32_t *l_586 = &l_587[3][0];
                int32_t *l_588[5] = {&l_587[5][2],&l_587[5][2],&l_587[5][2],&l_587[5][2],&l_587[5][2]};
                int i, j;
                l_588[0] = l_586;
                for (l_587[5][2] = (-4); (l_587[5][2] >= (-20)); l_587[5][2] = safe_sub_func_int32_t_s_s(l_587[5][2], 8))
                { /* block id: 301 */
                    int16_t l_591 = 0x6756L;
                    int32_t l_592 = 0x7A1CC3B7L;
                    uint32_t l_601 = 0xA6DF8379L;
                    uint16_t l_604 = 0UL;
                    l_592 |= (l_591 ^= 0x28C9E8C6L);
                    for (l_591 = 0; (l_591 != 13); l_591 = safe_add_func_uint16_t_u_u(l_591, 4))
                    { /* block id: 306 */
                        uint32_t l_595 = 0xA897BDA9L;
                        uint64_t l_598 = 0xA9AE22C86A236596L;
                        int32_t l_600 = 0x76C5DAEEL;
                        int32_t *l_599 = &l_600;
                        ++l_595;
                        l_598 &= 0L;
                        l_588[0] = l_599;
                    }
                    l_601++;
                    l_604--;
                }
            }
            else
            { /* block id: 314 */
                int32_t l_607 = 0x34F6D651L;
                int64_t l_608 = 5L;
                int16_t l_609 = 0x2D6DL;
                uint16_t l_610 = 0xCF41L;
                uint8_t l_613 = 0xD0L;
                uint32_t l_614 = 0x087B692CL;
                uint64_t l_615 = 0xA32183D6047DEC28L;
                int16_t l_616 = 0x6DA2L;
                l_614 ^= (l_607 , (l_613 = ((l_610++) , ((VECTOR(int32_t, 2))(1L, 0x30997720L)).even)));
                l_616 ^= l_615;
            }
        }
        l_621[3][1][7] = (l_620 = l_617);
        unsigned int result = 0;
        result += l_579.s7;
        result += l_579.s6;
        result += l_579.s5;
        result += l_579.s4;
        result += l_579.s3;
        result += l_579.s2;
        result += l_579.s1;
        result += l_579.s0;
        result += l_580;
        result += l_619;
        atomic_add(&p_676->l_special_values[1], result);
    }
    else
    { /* block id: 323 */
        (1 + 1);
    }
    if (((safe_rshift_func_int8_t_s_u(((void*)0 != l_624), 0)) && (*p_676->g_528)))
    { /* block id: 326 */
        int64_t l_630 = (-1L);
        uint32_t *l_635[10] = {&p_676->g_293.f6,(void*)0,(void*)0,(void*)0,&p_676->g_293.f6,&p_676->g_293.f6,(void*)0,(void*)0,(void*)0,&p_676->g_293.f6};
        int32_t l_641 = (-1L);
        int32_t *l_646[4][5] = {{&p_676->g_41[0][2].f1,&p_676->g_41[0][2].f1,&p_676->g_41[0][2].f1,&p_676->g_41[0][2].f1,&p_676->g_41[0][2].f1},{&p_676->g_41[0][2].f1,&p_676->g_41[0][2].f1,&p_676->g_41[0][2].f1,&p_676->g_41[0][2].f1,&p_676->g_41[0][2].f1},{&p_676->g_41[0][2].f1,&p_676->g_41[0][2].f1,&p_676->g_41[0][2].f1,&p_676->g_41[0][2].f1,&p_676->g_41[0][2].f1},{&p_676->g_41[0][2].f1,&p_676->g_41[0][2].f1,&p_676->g_41[0][2].f1,&p_676->g_41[0][2].f1,&p_676->g_41[0][2].f1}};
        int i, j;
        l_647 |= (safe_rshift_func_uint16_t_u_u((safe_mul_func_int16_t_s_s((p_162 & ((l_630 || (safe_mod_func_int64_t_s_s((safe_mod_func_uint32_t_u_u((l_578 = 1UL), (safe_sub_func_int16_t_s_s(l_564.f2, (l_641 = ((safe_add_func_uint8_t_u_u(((VECTOR(uint8_t, 16))(l_640.s5002644700556605)).s4, 0x26L)) <= 0x04L)))))), ((-1L) ^ ((safe_mod_func_uint8_t_u_u(((safe_div_func_int8_t_s_s(l_640.s4, p_162)) & p_676->g_331.f0), l_549)) != p_164))))) <= l_564.f2)), 0x521FL)), l_564.f2));
    }
    else
    { /* block id: 330 */
        int16_t *l_652 = &p_676->g_41[0][2].f0.f5;
        int32_t l_667 = 0x41BD10FDL;
        int32_t l_673 = 8L;
        uint32_t *l_674 = &p_676->g_548.f6;
        p_676->g_43 |= (((((safe_mod_func_uint8_t_u_u((((+(0x308CBEF7L & ((safe_sub_func_int16_t_s_s(((*l_652) = (-8L)), ((*l_576) = p_164))) > (safe_sub_func_uint8_t_u_u((safe_div_func_int64_t_s_s(0x3835CC8A411352F8L, (safe_rshift_func_int8_t_s_u(((p_676->g_293.f6 = ((VECTOR(uint32_t, 8))(sub_sat(((VECTOR(uint32_t, 16))(0x54C84AB9L, ((VECTOR(uint32_t, 8))(mul_hi(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 16))(safe_mul24_func_uint32_t_u_u(VECTOR(uint32_t, 16),((VECTOR(uint32_t, 2))(l_659.s6e)).yxxyyxyyxyxyyxyx, ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(safe_clamp_func(VECTOR(uint32_t, 4),uint32_t,((VECTOR(uint32_t, 16))(mul_hi(((VECTOR(uint32_t, 4))((((void*)0 == l_577[2][4]) < (((safe_mod_func_int32_t_s_s(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(l_662.xy)).yyyy)).y, ((safe_rshift_func_int16_t_s_u((((*l_674) = (safe_sub_func_uint64_t_u_u((--p_676->g_396), (safe_add_func_uint32_t_u_u((((p_162 <= (((VECTOR(int16_t, 16))((0x4EL && 255UL), 0x5F38L, ((VECTOR(int16_t, 2))(0x4D01L)), ((VECTOR(int16_t, 2))(0x26BDL)), ((VECTOR(int16_t, 2))(0x3DACL)), l_662.w, 0x17EAL, 0x5D22L, 0x0984L, ((VECTOR(int16_t, 4))(0x284AL)))).s4 >= p_676->g_373.z)) > GROUP_DIVERGE(2, 1)) != l_673), p_162))))) == l_659.s0), 0)) & p_160))) >= p_162) < p_162)), p_676->g_393[0][0][2], 4294967287UL, 0x1A332686L)).zyzywzwywwxywxxy, ((VECTOR(uint32_t, 16))(0x7D618473L))))).s4b16, (uint32_t)p_676->g_330[1][2][3].f2, (uint32_t)p_162))).xxxzyxxz)).s4020710570434167))))).lo, ((VECTOR(uint32_t, 8))(9UL))))), 3UL, 0UL, 0x711E3C45L, 0xB3FEC2A1L, 0x83C820E9L, 0xC620B51EL, 0x1CB1DF00L)).odd, ((VECTOR(uint32_t, 8))(0x66428DBEL))))).s2) == p_160), 5)))), 1L))))) >= p_164) , l_564.f2), 0x52L)) , p_164) <= p_676->g_293.f0) ^ 0xF111L) , 5L);
    }
    return (*p_676->g_329);
}


/* ------------------------------------------ */
/* 
 * reads : p_676->g_216.f1.f4 p_676->g_198.f1 p_676->g_329 p_676->g_330 p_676->g_193 p_676->g_194 p_676->g_172 p_676->g_335 p_676->g_43 p_676->g_345 p_676->g_331.f2 p_676->g_293.f3 p_676->g_399
 * writes: p_676->g_216.f1.f4 p_676->g_172.f3.f2 p_676->g_293.f3 p_676->g_174 p_676->g_198 p_676->g_331 p_676->g_293.f1 p_676->g_194 p_676->g_41.f2.f5 p_676->g_43 p_676->g_37 p_676->g_293.f0 p_676->g_399 p_676->g_41.f1
 */
union U5  func_165(union U5 ** p_166, struct S1 ** p_167, int32_t  p_168, int32_t  p_169, struct S6 * p_676)
{ /* block id: 151 */
    struct S1 *l_327 = &p_676->g_293;
    int32_t l_339 = 0x63F6F17BL;
    VECTOR(int8_t, 2) l_344 = (VECTOR(int8_t, 2))(0L, 0x1AL);
    VECTOR(int8_t, 4) l_346 = (VECTOR(int8_t, 4))(0x17L, (VECTOR(int8_t, 2))(0x17L, (-1L)), (-1L));
    int32_t l_358 = 1L;
    uint64_t l_416 = 0x06163C303698BE85L;
    VECTOR(uint8_t, 16) l_439 = (VECTOR(uint8_t, 16))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 254UL), 254UL), 254UL, 0UL, 254UL, (VECTOR(uint8_t, 2))(0UL, 254UL), (VECTOR(uint8_t, 2))(0UL, 254UL), 0UL, 254UL, 0UL, 254UL);
    VECTOR(int16_t, 2) l_443 = (VECTOR(int16_t, 2))(0x611CL, 0x3CAAL);
    int32_t l_451 = (-9L);
    int32_t l_455 = 0x27E307E1L;
    int32_t l_456 = 0x3AFBE0CAL;
    int32_t l_457 = 7L;
    int8_t *l_526[8];
    int16_t *l_533 = (void*)0;
    VECTOR(int16_t, 2) l_538 = (VECTOR(int16_t, 2))(0x0887L, 0L);
    VECTOR(uint8_t, 4) l_546 = (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0x5AL), 0x5AL);
    int i;
    for (i = 0; i < 8; i++)
        l_526[i] = &p_676->g_198[5].f0;
    for (p_676->g_216.f1.f4 = 0; (p_676->g_216.f1.f4 == 31); p_676->g_216.f1.f4++)
    { /* block id: 154 */
        struct S0 l_328 = {0x2DL,-7L,0L,4294967287UL,2UL};
        VECTOR(int8_t, 2) l_347 = (VECTOR(int8_t, 2))(0x44L, (-4L));
        VECTOR(int8_t, 4) l_348 = (VECTOR(int8_t, 4))(0x16L, (VECTOR(int8_t, 2))(0x16L, 4L), 4L);
        uint16_t *l_417 = &p_676->g_198[5].f4;
        struct S1 *l_427[1][5];
        int64_t *l_435 = (void*)0;
        VECTOR(uint8_t, 4) l_437 = (VECTOR(uint8_t, 4))(248UL, (VECTOR(uint8_t, 2))(248UL, 255UL), 255UL);
        int32_t l_452 = (-1L);
        int32_t l_453[8][5] = {{0L,0x6858B727L,(-1L),(-1L),0x6858B727L},{0L,0x6858B727L,(-1L),(-1L),0x6858B727L},{0L,0x6858B727L,(-1L),(-1L),0x6858B727L},{0L,0x6858B727L,(-1L),(-1L),0x6858B727L},{0L,0x6858B727L,(-1L),(-1L),0x6858B727L},{0L,0x6858B727L,(-1L),(-1L),0x6858B727L},{0L,0x6858B727L,(-1L),(-1L),0x6858B727L},{0L,0x6858B727L,(-1L),(-1L),0x6858B727L}};
        int16_t l_454 = (-8L);
        struct S1 **l_470 = &l_327;
        VECTOR(int8_t, 8) l_475 = (VECTOR(int8_t, 8))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0x7BL), 0x7BL), 0x7BL, 0L, 0x7BL);
        union U2 l_481 = {1L};
        int8_t *l_523 = &p_676->g_198[5].f0;
        int i, j;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 5; j++)
                l_427[i][j] = (void*)0;
        }
        for (p_676->g_172.f3.f2 = 0; (p_676->g_172.f3.f2 <= 0); ++p_676->g_172.f3.f2)
        { /* block id: 157 */
            int16_t *l_340 = (void*)0;
            int16_t *l_341 = &p_676->g_41[0][2].f2.f5;
            VECTOR(uint32_t, 4) l_351 = (VECTOR(uint32_t, 4))(0x100AF2B3L, (VECTOR(uint32_t, 2))(0x100AF2B3L, 4294967290UL), 4294967290UL);
            uint16_t *l_359[8][9] = {{&l_328.f4,&l_328.f4,(void*)0,(void*)0,&l_328.f4,&l_328.f4,&p_676->g_198[5].f4,&l_328.f4,&p_676->g_198[5].f4},{&l_328.f4,&l_328.f4,(void*)0,(void*)0,&l_328.f4,&l_328.f4,&p_676->g_198[5].f4,&l_328.f4,&p_676->g_198[5].f4},{&l_328.f4,&l_328.f4,(void*)0,(void*)0,&l_328.f4,&l_328.f4,&p_676->g_198[5].f4,&l_328.f4,&p_676->g_198[5].f4},{&l_328.f4,&l_328.f4,(void*)0,(void*)0,&l_328.f4,&l_328.f4,&p_676->g_198[5].f4,&l_328.f4,&p_676->g_198[5].f4},{&l_328.f4,&l_328.f4,(void*)0,(void*)0,&l_328.f4,&l_328.f4,&p_676->g_198[5].f4,&l_328.f4,&p_676->g_198[5].f4},{&l_328.f4,&l_328.f4,(void*)0,(void*)0,&l_328.f4,&l_328.f4,&p_676->g_198[5].f4,&l_328.f4,&p_676->g_198[5].f4},{&l_328.f4,&l_328.f4,(void*)0,(void*)0,&l_328.f4,&l_328.f4,&p_676->g_198[5].f4,&l_328.f4,&p_676->g_198[5].f4},{&l_328.f4,&l_328.f4,(void*)0,(void*)0,&l_328.f4,&l_328.f4,&p_676->g_198[5].f4,&l_328.f4,&p_676->g_198[5].f4}};
            int32_t l_360 = 0x638AB670L;
            int i, j;
            if (p_168)
            { /* block id: 158 */
                if ((atomic_inc(&p_676->g_atomic_input[35 * get_linear_group_id() + 7]) == 7))
                { /* block id: 160 */
                    int32_t l_305[3][4][5] = {{{9L,(-1L),0x6A6B6F49L,0x3A5B8778L,1L},{9L,(-1L),0x6A6B6F49L,0x3A5B8778L,1L},{9L,(-1L),0x6A6B6F49L,0x3A5B8778L,1L},{9L,(-1L),0x6A6B6F49L,0x3A5B8778L,1L}},{{9L,(-1L),0x6A6B6F49L,0x3A5B8778L,1L},{9L,(-1L),0x6A6B6F49L,0x3A5B8778L,1L},{9L,(-1L),0x6A6B6F49L,0x3A5B8778L,1L},{9L,(-1L),0x6A6B6F49L,0x3A5B8778L,1L}},{{9L,(-1L),0x6A6B6F49L,0x3A5B8778L,1L},{9L,(-1L),0x6A6B6F49L,0x3A5B8778L,1L},{9L,(-1L),0x6A6B6F49L,0x3A5B8778L,1L},{9L,(-1L),0x6A6B6F49L,0x3A5B8778L,1L}}};
                    VECTOR(uint16_t, 2) l_316 = (VECTOR(uint16_t, 2))(0UL, 1UL);
                    int32_t l_317 = 0x6C142693L;
                    int64_t l_318 = 0x28002F6CBBEE0CCAL;
                    struct S0 l_319 = {5L,0L,1L,0xDE039C98L,0x865BL};
                    struct S0 l_320 = {6L,1L,-5L,0xFE0D96BEL,65529UL};
                    struct S0 l_321[4][5] = {{{1L,0L,0x797E1950L,1UL,4UL},{-8L,0L,0x70C52643L,0UL,1UL},{0x14L,0x1D737CC2C4EA1641L,0x0010D40DL,0UL,0x6421L},{-8L,0L,0x70C52643L,0UL,1UL},{1L,0L,0x797E1950L,1UL,4UL}},{{1L,0L,0x797E1950L,1UL,4UL},{-8L,0L,0x70C52643L,0UL,1UL},{0x14L,0x1D737CC2C4EA1641L,0x0010D40DL,0UL,0x6421L},{-8L,0L,0x70C52643L,0UL,1UL},{1L,0L,0x797E1950L,1UL,4UL}},{{1L,0L,0x797E1950L,1UL,4UL},{-8L,0L,0x70C52643L,0UL,1UL},{0x14L,0x1D737CC2C4EA1641L,0x0010D40DL,0UL,0x6421L},{-8L,0L,0x70C52643L,0UL,1UL},{1L,0L,0x797E1950L,1UL,4UL}},{{1L,0L,0x797E1950L,1UL,4UL},{-8L,0L,0x70C52643L,0UL,1UL},{0x14L,0x1D737CC2C4EA1641L,0x0010D40DL,0UL,0x6421L},{-8L,0L,0x70C52643L,0UL,1UL},{1L,0L,0x797E1950L,1UL,4UL}}};
                    int i, j, k;
                    for (l_305[2][0][0] = 0; (l_305[2][0][0] < (-27)); l_305[2][0][0]--)
                    { /* block id: 163 */
                        int32_t l_309 = 0x38DECB16L;
                        int32_t *l_308 = &l_309;
                        int32_t *l_310 = &l_309;
                        union U2 l_311[2] = {{0x5129E86CL},{0x5129E86CL}};
                        uint32_t l_312 = 0xA1A838DFL;
                        int8_t l_313 = (-3L);
                        uint8_t l_314 = 0x70L;
                        uint32_t l_315 = 0UL;
                        int i;
                        l_310 = l_308;
                        l_313 = (l_311[0] , l_312);
                        l_315 ^= ((*l_308) = l_314);
                    }
                    l_321[3][1] = ((l_317 |= ((VECTOR(uint16_t, 8))(0xF377L, 5UL, ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 4))(l_316.yxxx)))), 8UL, 0xD420L)).s7) , ((l_318 = 0xCA9A2929L) , (l_320 = l_319)));
                    unsigned int result = 0;
                    int l_305_i0, l_305_i1, l_305_i2;
                    for (l_305_i0 = 0; l_305_i0 < 3; l_305_i0++) {
                        for (l_305_i1 = 0; l_305_i1 < 4; l_305_i1++) {
                            for (l_305_i2 = 0; l_305_i2 < 5; l_305_i2++) {
                                result += l_305[l_305_i0][l_305_i1][l_305_i2];
                            }
                        }
                    }
                    result += l_316.y;
                    result += l_316.x;
                    result += l_317;
                    result += l_318;
                    result += l_319.f0;
                    result += l_319.f1;
                    result += l_319.f2;
                    result += l_319.f3;
                    result += l_319.f4;
                    result += l_320.f0;
                    result += l_320.f1;
                    result += l_320.f2;
                    result += l_320.f3;
                    result += l_320.f4;
                    int l_321_i0, l_321_i1;
                    for (l_321_i0 = 0; l_321_i0 < 4; l_321_i0++) {
                        for (l_321_i1 = 0; l_321_i1 < 5; l_321_i1++) {
                            result += l_321[l_321_i0][l_321_i1].f0;
                            result += l_321[l_321_i0][l_321_i1].f1;
                            result += l_321[l_321_i0][l_321_i1].f2;
                            result += l_321[l_321_i0][l_321_i1].f3;
                            result += l_321[l_321_i0][l_321_i1].f4;
                        }
                    }
                    atomic_add(&p_676->g_special_values[35 * get_linear_group_id() + 7], result);
                }
                else
                { /* block id: 173 */
                    (1 + 1);
                }
                for (p_676->g_293.f3 = 0; (p_676->g_293.f3 <= 10); p_676->g_293.f3 = safe_add_func_int16_t_s_s(p_676->g_293.f3, 8))
                { /* block id: 178 */
                    struct S1 *l_324 = &p_676->g_293;
                    p_169 = (((void*)0 != l_324) != p_676->g_198[5].f1);
                    for (p_169 = 0; (p_169 == 9); ++p_169)
                    { /* block id: 182 */
                        (*p_167) = l_327;
                        (*p_676->g_329) = l_328;
                        p_676->g_331 = p_676->g_330[1][2][3];
                    }
                    for (p_676->g_293.f1 = (-30); (p_676->g_293.f1 <= 29); p_676->g_293.f1 = safe_add_func_uint64_t_u_u(p_676->g_293.f1, 2))
                    { /* block id: 189 */
                        (*p_676->g_193) = (*p_676->g_193);
                        return p_676->g_172;
                    }
                }
                if (p_169)
                    break;
            }
            else
            { /* block id: 195 */
                int32_t *l_334[5];
                int i;
                for (i = 0; i < 5; i++)
                    l_334[i] = (void*)0;
                (*p_676->g_193) = l_334[4];
                return p_676->g_335;
            }
            (**p_676->g_193) = (((l_358 = ((safe_unary_minus_func_uint8_t_u((safe_mod_func_uint8_t_u_u(((*p_676->g_194) & l_339), (((*l_341) = ((void*)0 != &p_676->g_264)) ^ (((VECTOR(int8_t, 8))(rhadd(((VECTOR(int8_t, 2))(p_676->g_342.sd9)).yxxyyxyx, ((VECTOR(int8_t, 16))(mad_sat(((VECTOR(int8_t, 2))(sub_sat(((VECTOR(int8_t, 2))(0x13L, 0L)), ((VECTOR(int8_t, 16))(rotate(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(p_676->g_343.s75)).xxxyyxxy)).s0775411645211776, ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(hadd(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))((-3L), 1L)).xxyxyxxxxxxxxyxy)).sdd, ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(hadd(((VECTOR(int8_t, 2))(1L, (-1L))).yxyyxxxy, ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 2))(1L, (-1L))))).xxyxyxxy))).s2712551326017251)).s64))).xyyxyxxx)).s2336534254623116))).s9b))).yyyyxyxxxxyyyxxy, ((VECTOR(int8_t, 2))(rhadd(((VECTOR(int8_t, 4))(l_344.xyxx)).odd, ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))(mad_sat(((VECTOR(int8_t, 4))(p_676->g_345.yzxz)).xwwxxwzzwzzwwxyy, ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(4L, 0x63L)), ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(rhadd(((VECTOR(int8_t, 2))(l_346.xy)), ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(0L, 5L)).yyyyxyyxxyyyxyxx)).sd3))), 0L, 0x68L)), 0x2CL, (-3L))))).s7753024513117610)), ((VECTOR(int8_t, 2))(min(((VECTOR(int8_t, 2))((-5L), 0x1BL)), ((VECTOR(int8_t, 4))(mad_sat(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(sub_sat(((VECTOR(int8_t, 8))(min(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(mul_hi(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 8))(l_328.f3, ((VECTOR(int8_t, 2))(0x19L, (-5L))), ((VECTOR(int8_t, 2))(l_347.yx)), 0x43L, 0x7EL, 0x6CL)).even)).lo, ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 8))(l_348.xzyzwwxx)).odd)).hi))), 9L, 1L)).yxxzxzzw, (int8_t)(+((safe_sub_func_uint32_t_u_u(((VECTOR(uint32_t, 2))(l_351.wx)).odd, (safe_mod_func_int32_t_s_s((safe_div_func_uint32_t_u_u(p_676->g_293.f5, ((safe_sub_func_int16_t_s_s((p_676->g_258.x != p_676->g_345.x), (l_360 |= (l_328.f4 || l_358)))) | l_328.f0))), 0x106B3F6CL)))) | p_168))))).lo, ((VECTOR(int8_t, 4))(0x73L))))).xxwzyzzyxyywxxzy)).s0e7b, ((VECTOR(int8_t, 4))(0x2EL)), ((VECTOR(int8_t, 4))(0x2BL))))).hi))).yxxxyyyxxxxxxyyy))).hi)).s62))).yyyxxxxyxxxyyyxx, ((VECTOR(int8_t, 16))(0x47L))))).hi))).s5 & p_676->g_345.z)))))) && p_676->g_331.f2)) == l_328.f2) == 0x7F7E5F49L);
            (*p_166) = (*p_166);
            for (p_676->g_37 = 0; (p_676->g_37 > (-17)); --p_676->g_37)
            { /* block id: 206 */
                uint8_t l_365 = 0x61L;
                VECTOR(int8_t, 16) l_394 = (VECTOR(int8_t, 16))((-4L), (VECTOR(int8_t, 4))((-4L), (VECTOR(int8_t, 2))((-4L), (-1L)), (-1L)), (-1L), (-4L), (-1L), (VECTOR(int8_t, 2))((-4L), (-1L)), (VECTOR(int8_t, 2))((-4L), (-1L)), (-4L), (-1L), (-4L), (-1L));
                int32_t l_398 = (-5L);
                int i;
                for (p_676->g_293.f0 = 0; (p_676->g_293.f0 == (-9)); p_676->g_293.f0--)
                { /* block id: 209 */
                    int32_t l_372 = 0x77FC269EL;
                    int32_t *l_387 = &p_676->g_198[5].f2;
                    uint64_t *l_395 = &p_676->g_396;
                    int8_t *l_397[10][2][8] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&l_328.f0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&l_328.f0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&l_328.f0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&l_328.f0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&l_328.f0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&l_328.f0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&l_328.f0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&l_328.f0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&l_328.f0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&l_328.f0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&l_328.f0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&l_328.f0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&l_328.f0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&l_328.f0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&l_328.f0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&l_328.f0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&l_328.f0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&l_328.f0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&l_328.f0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&l_328.f0,(void*)0,(void*)0}}};
                    int32_t *l_401[9];
                    int i, j, k;
                    for (i = 0; i < 9; i++)
                        l_401[i] = &l_339;
                    (*p_676->g_194) = l_365;
                    (*p_166) = (*p_166);
                    p_676->g_41[0][2].f1 = (p_676->g_399 ^= (safe_rshift_func_uint8_t_u_s(((safe_lshift_func_int8_t_s_s((((safe_add_func_int64_t_s_s(((l_398 = ((VECTOR(int8_t, 2))(add_sat(((VECTOR(int8_t, 2))((-7L), 0x58L)), ((VECTOR(int8_t, 16))(0L, ((VECTOR(int8_t, 8))((-2L), l_372, (-1L), ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 4))(clz(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 8),((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(p_676->g_373.wzzw)), ((0x781E08EB5B9A7A02L | ((*l_395) = (((VECTOR(int16_t, 8))(((VECTOR(int16_t, 8))(p_676->g_374.xxxyxyyy)))).s1 <= ((p_676->g_41[0][2].f0.f5 <= ((safe_add_func_uint16_t_u_u(l_344.y, ((((safe_mod_func_uint16_t_u_u(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(0xC909L, 0x9A11L, 1UL, 0x5308L)).zyxzxyyywwzwzyzy)).s5, (safe_lshift_func_int8_t_s_u((safe_div_func_uint8_t_u_u(((safe_mod_func_uint32_t_u_u(((p_676->g_41[0][2].f0.f6 >= ((safe_mul_func_uint16_t_u_u((((void*)0 == l_387) && ((**p_676->g_193) &= l_351.z)), (l_360 = (((void*)0 == p_676->g_388) && l_351.z)))) != l_328.f2)) & 0x5955L), (-8L))) >= l_346.x), p_676->g_293.f5)), 6)))) , p_168) & l_365) , 0x4A3FL))) | l_394.s0)) >= p_169)))) <= 65535UL), 0x75L, l_351.w, ((VECTOR(int8_t, 4))(0L)), ((VECTOR(int8_t, 4))(0x50L)), 0L)).hi, ((VECTOR(int8_t, 8))(5L)), ((VECTOR(int8_t, 8))(0x4CL))))).s10)).xxxy))))), 0x4CL)), (-8L), ((VECTOR(int8_t, 2))(1L)), p_168, ((VECTOR(int8_t, 2))(0x67L)), 2L)).s1e))).hi) != l_394.s1), GROUP_DIVERGE(1, 1))) | l_346.x) <= p_676->g_293.f3), 0)) && l_351.y), p_169)));
                }
            }
        }
        for (l_328.f1 = 0; (l_328.f1 > 20); l_328.f1 = safe_add_func_uint16_t_u_u(l_328.f1, 9))
        { /* block id: 223 */
            int16_t **l_418 = (void*)0;
            VECTOR(int16_t, 8) l_436 = (VECTOR(int16_t, 8))(0x6BF8L, (VECTOR(int16_t, 4))(0x6BF8L, (VECTOR(int16_t, 2))(0x6BF8L, 0x0CAFL), 0x0CAFL), 0x0CAFL, 0x6BF8L, 0x0CAFL);
            struct S1 **l_469[3];
            VECTOR(int16_t, 4) l_487 = (VECTOR(int16_t, 4))(5L, (VECTOR(int16_t, 2))(5L, (-1L)), (-1L));
            int16_t *l_488 = &l_454;
            int16_t *l_489[4];
            int32_t l_499 = 0x2F3C9B16L;
            int32_t l_500[3][4][5] = {{{0x0148E038L,1L,1L,0x0148E038L,0x0AAE6F07L},{0x0148E038L,1L,1L,0x0148E038L,0x0AAE6F07L},{0x0148E038L,1L,1L,0x0148E038L,0x0AAE6F07L},{0x0148E038L,1L,1L,0x0148E038L,0x0AAE6F07L}},{{0x0148E038L,1L,1L,0x0148E038L,0x0AAE6F07L},{0x0148E038L,1L,1L,0x0148E038L,0x0AAE6F07L},{0x0148E038L,1L,1L,0x0148E038L,0x0AAE6F07L},{0x0148E038L,1L,1L,0x0148E038L,0x0AAE6F07L}},{{0x0148E038L,1L,1L,0x0148E038L,0x0AAE6F07L},{0x0148E038L,1L,1L,0x0148E038L,0x0AAE6F07L},{0x0148E038L,1L,1L,0x0148E038L,0x0AAE6F07L},{0x0148E038L,1L,1L,0x0148E038L,0x0AAE6F07L}}};
            uint32_t l_501 = 0xFF071077L;
            int8_t *l_522 = (void*)0;
            int i, j, k;
            for (i = 0; i < 3; i++)
                l_469[i] = (void*)0;
            for (i = 0; i < 4; i++)
                l_489[i] = &p_676->g_264;
            (1 + 1);
        }
        if (l_455)
            continue;
    }
    return p_676->g_335;
}


/* ------------------------------------------ */
/* 
 * reads : p_676->g_298 p_676->g_193 p_676->g_194 p_676->g_43
 * writes: p_676->g_298 p_676->g_43
 */
int32_t  func_175(struct S1 ** p_176, union U5 * p_177, int32_t  p_178, struct S6 * p_676)
{ /* block id: 147 */
    int32_t *l_297[3][7][6] = {{{&p_676->g_43,&p_676->g_43,&p_676->g_43,&p_676->g_43,&p_676->g_37,&p_676->g_43},{&p_676->g_43,&p_676->g_43,&p_676->g_43,&p_676->g_43,&p_676->g_37,&p_676->g_43},{&p_676->g_43,&p_676->g_43,&p_676->g_43,&p_676->g_43,&p_676->g_37,&p_676->g_43},{&p_676->g_43,&p_676->g_43,&p_676->g_43,&p_676->g_43,&p_676->g_37,&p_676->g_43},{&p_676->g_43,&p_676->g_43,&p_676->g_43,&p_676->g_43,&p_676->g_37,&p_676->g_43},{&p_676->g_43,&p_676->g_43,&p_676->g_43,&p_676->g_43,&p_676->g_37,&p_676->g_43},{&p_676->g_43,&p_676->g_43,&p_676->g_43,&p_676->g_43,&p_676->g_37,&p_676->g_43}},{{&p_676->g_43,&p_676->g_43,&p_676->g_43,&p_676->g_43,&p_676->g_37,&p_676->g_43},{&p_676->g_43,&p_676->g_43,&p_676->g_43,&p_676->g_43,&p_676->g_37,&p_676->g_43},{&p_676->g_43,&p_676->g_43,&p_676->g_43,&p_676->g_43,&p_676->g_37,&p_676->g_43},{&p_676->g_43,&p_676->g_43,&p_676->g_43,&p_676->g_43,&p_676->g_37,&p_676->g_43},{&p_676->g_43,&p_676->g_43,&p_676->g_43,&p_676->g_43,&p_676->g_37,&p_676->g_43},{&p_676->g_43,&p_676->g_43,&p_676->g_43,&p_676->g_43,&p_676->g_37,&p_676->g_43},{&p_676->g_43,&p_676->g_43,&p_676->g_43,&p_676->g_43,&p_676->g_37,&p_676->g_43}},{{&p_676->g_43,&p_676->g_43,&p_676->g_43,&p_676->g_43,&p_676->g_37,&p_676->g_43},{&p_676->g_43,&p_676->g_43,&p_676->g_43,&p_676->g_43,&p_676->g_37,&p_676->g_43},{&p_676->g_43,&p_676->g_43,&p_676->g_43,&p_676->g_43,&p_676->g_37,&p_676->g_43},{&p_676->g_43,&p_676->g_43,&p_676->g_43,&p_676->g_43,&p_676->g_37,&p_676->g_43},{&p_676->g_43,&p_676->g_43,&p_676->g_43,&p_676->g_43,&p_676->g_37,&p_676->g_43},{&p_676->g_43,&p_676->g_43,&p_676->g_43,&p_676->g_43,&p_676->g_37,&p_676->g_43},{&p_676->g_43,&p_676->g_43,&p_676->g_43,&p_676->g_43,&p_676->g_37,&p_676->g_43}}};
    int i, j, k;
    --p_676->g_298;
    (**p_676->g_193) ^= 0x5037B548L;
    return p_178;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
union U5 * func_179(struct S1 ** p_180, uint64_t  p_181, uint16_t  p_182, int64_t  p_183, struct S6 * p_676)
{ /* block id: 145 */
    return &p_676->g_172;
}


/* ------------------------------------------ */
/* 
 * reads : p_676->g_193 p_676->g_194 p_676->g_43 p_676->g_41 p_676->g_216 p_676->g_41.f0.f1 p_676->g_198.f0 p_676->g_172.f0 p_676->g_41.f0.f3 p_676->g_41.f0.f5 p_676->g_198 p_676->g_173 p_676->g_174 p_676->g_41.f0 p_676->g_39 p_676->g_247 p_676->g_258 p_676->g_269 p_676->g_272 p_676->g_37 p_676->g_293
 * writes: p_676->g_43 p_676->g_194 p_676->g_193 p_676->g_216.f1.f5 p_676->g_216.f1 p_676->g_190 p_676->g_198 p_676->g_263 p_676->g_37
 */
struct S1 ** func_184(int32_t ** p_185, int32_t  p_186, struct S6 * p_676)
{ /* block id: 99 */
    struct S0 *l_197 = &p_676->g_198[5];
    VECTOR(uint32_t, 4) l_257 = (VECTOR(uint32_t, 4))(0x9BA3C1E8L, (VECTOR(uint32_t, 2))(0x9BA3C1E8L, 4294967295UL), 4294967295UL);
    VECTOR(uint32_t, 8) l_261 = (VECTOR(uint32_t, 8))(0x5BCA2D1BL, (VECTOR(uint32_t, 4))(0x5BCA2D1BL, (VECTOR(uint32_t, 2))(0x5BCA2D1BL, 1UL), 1UL), 1UL, 0x5BCA2D1BL, 1UL);
    int16_t *l_262[8] = {&p_676->g_41[0][2].f0.f5,&p_676->g_41[0][2].f0.f5,&p_676->g_41[0][2].f0.f5,&p_676->g_41[0][2].f0.f5,&p_676->g_41[0][2].f0.f5,&p_676->g_41[0][2].f0.f5,&p_676->g_41[0][2].f0.f5,&p_676->g_41[0][2].f0.f5};
    int16_t *l_266 = &p_676->g_41[0][2].f0.f5;
    int16_t **l_265 = &l_266;
    VECTOR(uint32_t, 8) l_267 = (VECTOR(uint32_t, 8))(0x1B255A05L, (VECTOR(uint32_t, 4))(0x1B255A05L, (VECTOR(uint32_t, 2))(0x1B255A05L, 4UL), 4UL), 4UL, 0x1B255A05L, 4UL);
    VECTOR(int16_t, 8) l_268 = (VECTOR(int16_t, 8))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 8L), 8L), 8L, (-1L), 8L);
    VECTOR(int16_t, 4) l_270 = (VECTOR(int16_t, 4))(0x5F43L, (VECTOR(int16_t, 2))(0x5F43L, (-1L)), (-1L));
    VECTOR(uint16_t, 8) l_271 = (VECTOR(uint16_t, 8))(65533UL, (VECTOR(uint16_t, 4))(65533UL, (VECTOR(uint16_t, 2))(65533UL, 0x3C02L), 0x3C02L), 0x3C02L, 65533UL, 0x3C02L);
    uint32_t l_277 = 0x1371214BL;
    int32_t *l_278 = (void*)0;
    int32_t *l_279 = &p_676->g_37;
    VECTOR(uint64_t, 2) l_282 = (VECTOR(uint64_t, 2))(0x0703CBBC0675A4FCL, 0x8C56288504A013A1L);
    int32_t **l_284[4] = {&p_676->g_190[3][0][1],&p_676->g_190[3][0][1],&p_676->g_190[3][0][1],&p_676->g_190[3][0][1]};
    int32_t ***l_283 = &l_284[2];
    VECTOR(uint64_t, 2) l_285 = (VECTOR(uint64_t, 2))(0x6F83344FD73F4859L, 0x70E6DB23DEB1884DL);
    VECTOR(uint64_t, 16) l_286 = (VECTOR(uint64_t, 16))(0x53D9778E59418DF8L, (VECTOR(uint64_t, 4))(0x53D9778E59418DF8L, (VECTOR(uint64_t, 2))(0x53D9778E59418DF8L, 18446744073709551606UL), 18446744073709551606UL), 18446744073709551606UL, 0x53D9778E59418DF8L, 18446744073709551606UL, (VECTOR(uint64_t, 2))(0x53D9778E59418DF8L, 18446744073709551606UL), (VECTOR(uint64_t, 2))(0x53D9778E59418DF8L, 18446744073709551606UL), 0x53D9778E59418DF8L, 18446744073709551606UL, 0x53D9778E59418DF8L, 18446744073709551606UL);
    struct S1 **l_294 = &p_676->g_174;
    uint64_t *l_295[2];
    int32_t l_296 = 0x5E468693L;
    int i;
    for (i = 0; i < 2; i++)
        l_295[i] = (void*)0;
    (*l_279) &= (((func_195(l_197, p_676) <= (safe_add_func_uint16_t_u_u((safe_rshift_func_int8_t_s_s(((safe_rshift_func_uint8_t_u_u((!(safe_rshift_func_uint8_t_u_s((((VECTOR(uint32_t, 2))(mul_hi(((VECTOR(uint32_t, 4))(0UL, ((VECTOR(uint32_t, 4))(l_257.xyww)).w, 0x3A8FCBE9L, 0x67DE6980L)).odd, ((VECTOR(uint32_t, 8))(mad_hi(((VECTOR(uint32_t, 8))(p_676->g_258.xxwzzwwy)), ((VECTOR(uint32_t, 16))((!FAKE_DIVERGE(p_676->group_2_offset, get_group_id(2), 10)), ((safe_mod_func_uint32_t_u_u(((VECTOR(uint32_t, 8))(safe_mul24_func_uint32_t_u_u(VECTOR(uint32_t, 8),((VECTOR(uint32_t, 8))(l_261.s16133271)), ((VECTOR(uint32_t, 16))(safe_mul24_func_uint32_t_u_u(VECTOR(uint32_t, 16),((VECTOR(uint32_t, 2))(safe_mul24_func_uint32_t_u_u(VECTOR(uint32_t, 2),((VECTOR(uint32_t, 4))((l_262[1] != ((*l_265) = (p_676->g_263 = l_262[1]))), 4294967295UL, 4294967287UL, 0x9D5CF495L)).even, ((VECTOR(uint32_t, 2))(safe_clamp_func(VECTOR(uint32_t, 2),VECTOR(uint32_t, 2),((VECTOR(uint32_t, 16))(l_267.s3365507213210422)).s53, ((VECTOR(uint32_t, 2))(abs(((VECTOR(int32_t, 16))(0x10907D4FL, ((VECTOR(int32_t, 2))(safe_clamp_func(VECTOR(int32_t, 2),int32_t,((VECTOR(int32_t, 4))(upsample(((VECTOR(int16_t, 4))(l_268.s3347)), ((VECTOR(uint16_t, 4))(rhadd(((VECTOR(uint16_t, 2))(sub_sat(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(abs_diff(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(rhadd(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(1L, 0x37A3L)), 1L, 0x6632L)).lo, ((VECTOR(int16_t, 8))(sub_sat(((VECTOR(int16_t, 2))(0x1125L, 1L)).xxyyyxyy, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(0x0903L, 0x0AC8L)).yyyy)).wywwzwxy))).s64))), 0x40DFL, 0x0B50L)).odd, ((VECTOR(int16_t, 2))(max(((VECTOR(int16_t, 2))(1L, 0x4162L)), ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 16))(0x0C32L, ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(p_676->g_269.wx)).xxxyxxxx)), ((VECTOR(int16_t, 4))(l_270.yzyz)), 0x7753L, 0x3FEDL, (-7L))).even)).s57)))))).yxyy)).wyzzxwzzyyyyzwyz)))).s03, ((VECTOR(uint16_t, 8))(l_271.s32431764)).s64))).xxxy, ((VECTOR(uint16_t, 16))(p_676->g_272.s5004234645043354)).s069d)))))).hi, (int32_t)(p_186 && ((0x5FF315E9L < (((safe_mul_func_int16_t_s_s((((((safe_lshift_func_uint8_t_u_s(l_268.s1, p_676->g_41[0][2].f0.f4)) || p_676->g_41[0][2].f0.f4) >= 8UL) <= p_676->g_41[0][2].f0.f6) , l_277), p_676->g_41[0][2].f0.f1)) ^ p_186) != 0x4BL)) , p_186)), (int32_t)l_270.y))).hi, 6L, p_676->g_39, ((VECTOR(int32_t, 2))(0x6D14633AL)), ((VECTOR(int32_t, 8))(0x24461D6DL)), 0x7AE839DAL, (-4L))).sff))), ((VECTOR(uint32_t, 2))(3UL)))))))).yyxyyyxyxyyyyxyy, ((VECTOR(uint32_t, 16))(0UL))))).even))).s6, 0x3838E9C9L)) >= 0x27C0370D91A189A1L), ((VECTOR(uint32_t, 4))(0x770C094BL)), ((VECTOR(uint32_t, 4))(4UL)), l_267.s0, ((VECTOR(uint32_t, 2))(1UL)), ((VECTOR(uint32_t, 2))(1UL)), 0xD9505210L)).lo, ((VECTOR(uint32_t, 8))(0x49912EF2L))))).s60))).hi , p_186), p_186))), GROUP_DIVERGE(2, 1))) , 0L), p_676->g_41[0][2].f0.f4)), p_676->g_39))) , &p_676->g_198[3]) == (void*)0);
    (**p_185) = (safe_mul_func_int8_t_s_s((GROUP_DIVERGE(2, 1) <= ((VECTOR(uint64_t, 2))(abs_diff(((VECTOR(uint64_t, 8))(l_282.yxxxxxxx)).s47, ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))(3UL, ((((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(0xA9C44CCC50D73C41L, 18446744073709551610UL)), 0xAF7012B9F9C04248L, 0x65F02344725F220EL)).y , &p_676->g_190[3][0][7]) == ((*l_283) = &p_676->g_190[3][0][7])), 0UL, ((VECTOR(uint64_t, 2))(l_285.xx)), ((VECTOR(uint64_t, 2))(0x897D91EDEE00B204L, 0x008AC90700306936L)), 0xAAE33EDC65C8E9C8L)), 0x49B4E7FA2CBFC6F4L, ((VECTOR(uint64_t, 4))(l_286.s1fd1)), ((safe_div_func_uint64_t_u_u((safe_rshift_func_int8_t_s_s(p_676->g_272.s7, p_676->g_198[5].f0)), (((((safe_sub_func_int8_t_s_s(((p_676->g_293 , &p_676->g_174) == l_294), 0xADL)) || (((*l_279) &= p_676->g_43) < 0x65E0C69FEFC40D2AL)) & 0L) < l_296) , p_676->g_41[0][2].f0.f5))) < p_186), 0UL, 0x366EB63C1EF73123L)).s19))).lo), (-1L)));
    (*p_676->g_193) = (*p_676->g_193);
    p_676->g_198[6] = (*l_197);
    return l_294;
}


/* ------------------------------------------ */
/* 
 * reads : p_676->g_193
 * writes:
 */
int32_t ** func_187(uint16_t  p_188, int32_t * p_189, struct S6 * p_676)
{ /* block id: 97 */
    int32_t *l_192 = &p_676->g_37;
    int32_t **l_191 = &l_192;
    return p_676->g_193;
}


/* ------------------------------------------ */
/* 
 * reads : p_676->g_193 p_676->g_194 p_676->g_43 p_676->g_41 p_676->g_216 p_676->g_41.f0.f1 p_676->g_198.f0 p_676->g_172.f0 p_676->g_41.f0.f3 p_676->g_41.f0.f5 p_676->g_198 p_676->g_173 p_676->g_174 p_676->g_41.f0 p_676->g_39 p_676->g_247
 * writes: p_676->g_43 p_676->g_194 p_676->g_193 p_676->g_216.f1.f5 p_676->g_216.f1 p_676->g_190 p_676->g_198
 */
uint32_t  func_195(struct S0 * p_196, struct S6 * p_676)
{ /* block id: 100 */
    int64_t l_199[2];
    struct S1 *l_202 = &p_676->g_41[0][2].f0;
    int32_t l_204 = 1L;
    int32_t **l_215 = &p_676->g_194;
    int32_t *l_244[2];
    int i;
    for (i = 0; i < 2; i++)
        l_199[i] = 5L;
    for (i = 0; i < 2; i++)
        l_244[i] = &p_676->g_41[0][2].f0.f7;
    if (((**p_676->g_193) = (((l_199[0] <= ((safe_rshift_func_int16_t_s_s(l_199[0], 12)) > (((void*)0 != &p_676->g_172) >= 255UL))) , (((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 2))(0xED72L, 1UL)))).odd , (~l_199[0]))) < ((((l_199[1] == (((!(**p_676->g_193)) == (((void*)0 == l_202) <= l_199[0])) <= l_199[0])) , p_676->g_41[0][0]) , l_199[0]) < l_199[1]))))
    { /* block id: 102 */
        int32_t *l_203 = &p_676->g_43;
        (*p_676->g_193) = l_203;
        (*p_676->g_193) = l_203;
    }
    else
    { /* block id: 105 */
        int32_t l_209 = (-1L);
        int32_t ***l_210 = &p_676->g_193;
        int32_t **l_212 = &p_676->g_194;
        int32_t ***l_211 = &l_212;
        int32_t **l_214 = &p_676->g_194;
        int32_t ***l_213[10] = {&l_214,&l_214,&l_214,&l_214,&l_214,&l_214,&l_214,&l_214,&l_214,&l_214};
        int64_t *l_217 = (void*)0;
        int16_t *l_218 = &p_676->g_216.f1.f5;
        uint8_t l_219 = 246UL;
        int32_t **l_243 = &p_676->g_190[3][0][7];
        union U2 l_248 = {0x3D40963FL};
        int i;
        (**p_676->g_193) = (l_204 &= (**p_676->g_193));
        if ((l_204 , ((&p_676->g_174 != &l_202) > (safe_mod_func_uint8_t_u_u(((((*l_218) = (((((l_204 = ((VECTOR(int64_t, 16))(((VECTOR(int64_t, 2))(max(((VECTOR(int64_t, 8))((-4L), 0x22DB1415F5C9099CL, ((((safe_add_func_uint32_t_u_u(l_209, (((l_215 = ((*l_211) = (l_199[0] , ((*l_210) = &p_676->g_194)))) == (p_676->g_216 , &p_676->g_194)) > p_676->g_41[0][2].f0.f1))) || p_676->g_198[5].f0) , (void*)0) != l_202), (-5L), (-6L), ((VECTOR(int64_t, 2))(2L)), 0x2382B66F5B800B5FL)).s51, ((VECTOR(int64_t, 2))((-8L)))))).xyxxyyxxyyyyyyyy)).s8) >= (**l_214)) , 0L) || p_676->g_172.f0) , (**l_215))) > l_219) ^ p_676->g_41[0][2].f0.f3), p_676->g_41[0][2].f0.f5)))))
        { /* block id: 113 */
            (**l_214) = ((p_676->g_198[2] , (void*)0) != &l_209);
        }
        else
        { /* block id: 115 */
            struct S1 *l_220 = &p_676->g_216.f1;
            int32_t l_221 = 1L;
            (*l_220) = (**p_676->g_173);
            (***l_210) &= l_221;
            if ((atomic_inc(&p_676->g_atomic_input[35 * get_linear_group_id() + 18]) == 7))
            { /* block id: 119 */
                uint32_t l_222 = 0x06879AC1L;
                uint8_t l_223[9];
                int32_t l_224 = 4L;
                int32_t l_225 = (-6L);
                int32_t l_226 = 0L;
                uint32_t l_227 = 0xDA144566L;
                int16_t l_230 = 0x38ECL;
                int32_t l_232[4][10] = {{8L,0x30DD7286L,0L,0x01691C3AL,0x30DD7286L,0x01691C3AL,0L,0x30DD7286L,8L,8L},{8L,0x30DD7286L,0L,0x01691C3AL,0x30DD7286L,0x01691C3AL,0L,0x30DD7286L,8L,8L},{8L,0x30DD7286L,0L,0x01691C3AL,0x30DD7286L,0x01691C3AL,0L,0x30DD7286L,8L,8L},{8L,0x30DD7286L,0L,0x01691C3AL,0x30DD7286L,0x01691C3AL,0L,0x30DD7286L,8L,8L}};
                int32_t *l_231 = &l_232[3][4];
                int32_t *l_233 = &l_232[1][3];
                int32_t *l_234 = &l_232[3][4];
                int i, j;
                for (i = 0; i < 9; i++)
                    l_223[i] = 0UL;
                l_223[3] = l_222;
                l_227--;
                l_230 = 1L;
                l_234 = (l_233 = (l_231 = (void*)0));
                unsigned int result = 0;
                result += l_222;
                int l_223_i0;
                for (l_223_i0 = 0; l_223_i0 < 9; l_223_i0++) {
                    result += l_223[l_223_i0];
                }
                result += l_224;
                result += l_225;
                result += l_226;
                result += l_227;
                result += l_230;
                int l_232_i0, l_232_i1;
                for (l_232_i0 = 0; l_232_i0 < 4; l_232_i0++) {
                    for (l_232_i1 = 0; l_232_i1 < 10; l_232_i1++) {
                        result += l_232[l_232_i0][l_232_i1];
                    }
                }
                atomic_add(&p_676->g_special_values[35 * get_linear_group_id() + 18], result);
            }
            else
            { /* block id: 126 */
                (1 + 1);
            }
        }
        (*p_676->g_193) = ((safe_mod_func_int64_t_s_s(((***l_211) = (safe_lshift_func_uint16_t_u_s(((safe_add_func_int16_t_s_s(p_676->g_39, ((safe_add_func_uint32_t_u_u((((*l_243) = (void*)0) == l_244[0]), ((***l_211) <= (**l_215)))) && ((VECTOR(uint32_t, 2))(0xC8695750L, 0x8474F3D4L)).hi))) , 0x4671L), 11))), (((*p_676->g_174) , ((VECTOR(int32_t, 4))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 4))(0x65867E60L, (safe_div_func_uint32_t_u_u(p_676->g_247, (l_248 , p_676->g_198[5].f3))), 0x17F9480FL, 0L)), ((VECTOR(int32_t, 4))(0L))))).w) , p_676->g_41[0][2].f0.f5))) , (*l_215));
        (*p_196) = (*p_196);
    }
    return (**l_215);
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global volatile int *g_atomic_reduction, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[35];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 35; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[35];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 35; i++)
            l_special_values[i] = 0;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    __local int64_t l_comm_values[2];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 2; i++)
            l_comm_values[i] = 1;
    struct S6 c_677;
    struct S6* p_676 = &c_677;
    struct S6 c_678 = {
        (-1L), // p_676->g_37
        0x4E412C21L, // p_676->g_39
        {{{{-1L,0x6B1080E2L,-1L,0x4DAAE8D1L,4294967290UL,-1L,4294967287UL,0L,0x52L}},{{-1L,0x6B1080E2L,-1L,0x4DAAE8D1L,4294967290UL,-1L,4294967287UL,0L,0x52L}},{{-1L,0x6B1080E2L,-1L,0x4DAAE8D1L,4294967290UL,-1L,4294967287UL,0L,0x52L}}},{{{-1L,0x6B1080E2L,-1L,0x4DAAE8D1L,4294967290UL,-1L,4294967287UL,0L,0x52L}},{{-1L,0x6B1080E2L,-1L,0x4DAAE8D1L,4294967290UL,-1L,4294967287UL,0L,0x52L}},{{-1L,0x6B1080E2L,-1L,0x4DAAE8D1L,4294967290UL,-1L,4294967287UL,0L,0x52L}}}}, // p_676->g_41
        (-1L), // p_676->g_43
        {0x4654339FA56026EDL}, // p_676->g_172
        &p_676->g_41[0][2].f0, // p_676->g_174
        &p_676->g_174, // p_676->g_173
        {{{&p_676->g_41[0][2].f0.f7,(void*)0,(void*)0,&p_676->g_41[0][2].f0.f7,&p_676->g_41[0][2].f0.f7,(void*)0,(void*)0,&p_676->g_41[0][2].f0.f7,&p_676->g_41[0][2].f0.f7}},{{&p_676->g_41[0][2].f0.f7,(void*)0,(void*)0,&p_676->g_41[0][2].f0.f7,&p_676->g_41[0][2].f0.f7,(void*)0,(void*)0,&p_676->g_41[0][2].f0.f7,&p_676->g_41[0][2].f0.f7}},{{&p_676->g_41[0][2].f0.f7,(void*)0,(void*)0,&p_676->g_41[0][2].f0.f7,&p_676->g_41[0][2].f0.f7,(void*)0,(void*)0,&p_676->g_41[0][2].f0.f7,&p_676->g_41[0][2].f0.f7}},{{&p_676->g_41[0][2].f0.f7,(void*)0,(void*)0,&p_676->g_41[0][2].f0.f7,&p_676->g_41[0][2].f0.f7,(void*)0,(void*)0,&p_676->g_41[0][2].f0.f7,&p_676->g_41[0][2].f0.f7}}}, // p_676->g_190
        &p_676->g_43, // p_676->g_194
        &p_676->g_194, // p_676->g_193
        {{0x76L,0x5E2A5830FCE08A27L,0x12E2E44CL,0x237FE1AFL,0x5816L},{-2L,-9L,0x493943B9L,1UL,0x90EAL},{0x76L,0x5E2A5830FCE08A27L,0x12E2E44CL,0x237FE1AFL,0x5816L},{0x76L,0x5E2A5830FCE08A27L,0x12E2E44CL,0x237FE1AFL,0x5816L},{-2L,-9L,0x493943B9L,1UL,0x90EAL},{0x76L,0x5E2A5830FCE08A27L,0x12E2E44CL,0x237FE1AFL,0x5816L},{0x76L,0x5E2A5830FCE08A27L,0x12E2E44CL,0x237FE1AFL,0x5816L}}, // p_676->g_198
        {0x9B42L}, // p_676->g_216
        0x492EFAC8L, // p_676->g_247
        (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 4294967286UL), 4294967286UL), // p_676->g_258
        (-3L), // p_676->g_264
        &p_676->g_264, // p_676->g_263
        (VECTOR(int16_t, 4))(0x1885L, (VECTOR(int16_t, 2))(0x1885L, 0x5C5BL), 0x5C5BL), // p_676->g_269
        (VECTOR(uint16_t, 8))(0x141FL, (VECTOR(uint16_t, 4))(0x141FL, (VECTOR(uint16_t, 2))(0x141FL, 1UL), 1UL), 1UL, 0x141FL, 1UL), // p_676->g_272
        {0L,0L,0x4EL,0UL,0xFA4DA501L,0x6608L,0UL,-1L,0x29L}, // p_676->g_293
        1UL, // p_676->g_298
        &p_676->g_198[6], // p_676->g_329
        {{{{1L,0L,0x26L,0xE456177FL,4294967295UL,0x7804L,1UL,-2L,1L},{-10L,0x033297B8L,0x47L,0UL,1UL,0x1F55L,0xF046F770L,-5L,-1L},{1L,0L,-8L,0x5C80094DL,0x3A9E6C9EL,0x30F7L,0x747A9D90L,0x6D7012FEL,0x05L},{0x383FC3BAL,1L,0x25L,7UL,0x45DCFF64L,9L,8UL,0x08793AEFL,0L},{0L,9L,-8L,0x9FAE5A9EL,0xDA89BD6AL,0x114EL,0x862DDE09L,1L,0x13L},{0x383FC3BAL,1L,0x25L,7UL,0x45DCFF64L,9L,8UL,0x08793AEFL,0L}},{{1L,0L,0x26L,0xE456177FL,4294967295UL,0x7804L,1UL,-2L,1L},{-10L,0x033297B8L,0x47L,0UL,1UL,0x1F55L,0xF046F770L,-5L,-1L},{1L,0L,-8L,0x5C80094DL,0x3A9E6C9EL,0x30F7L,0x747A9D90L,0x6D7012FEL,0x05L},{0x383FC3BAL,1L,0x25L,7UL,0x45DCFF64L,9L,8UL,0x08793AEFL,0L},{0L,9L,-8L,0x9FAE5A9EL,0xDA89BD6AL,0x114EL,0x862DDE09L,1L,0x13L},{0x383FC3BAL,1L,0x25L,7UL,0x45DCFF64L,9L,8UL,0x08793AEFL,0L}},{{1L,0L,0x26L,0xE456177FL,4294967295UL,0x7804L,1UL,-2L,1L},{-10L,0x033297B8L,0x47L,0UL,1UL,0x1F55L,0xF046F770L,-5L,-1L},{1L,0L,-8L,0x5C80094DL,0x3A9E6C9EL,0x30F7L,0x747A9D90L,0x6D7012FEL,0x05L},{0x383FC3BAL,1L,0x25L,7UL,0x45DCFF64L,9L,8UL,0x08793AEFL,0L},{0L,9L,-8L,0x9FAE5A9EL,0xDA89BD6AL,0x114EL,0x862DDE09L,1L,0x13L},{0x383FC3BAL,1L,0x25L,7UL,0x45DCFF64L,9L,8UL,0x08793AEFL,0L}},{{1L,0L,0x26L,0xE456177FL,4294967295UL,0x7804L,1UL,-2L,1L},{-10L,0x033297B8L,0x47L,0UL,1UL,0x1F55L,0xF046F770L,-5L,-1L},{1L,0L,-8L,0x5C80094DL,0x3A9E6C9EL,0x30F7L,0x747A9D90L,0x6D7012FEL,0x05L},{0x383FC3BAL,1L,0x25L,7UL,0x45DCFF64L,9L,8UL,0x08793AEFL,0L},{0L,9L,-8L,0x9FAE5A9EL,0xDA89BD6AL,0x114EL,0x862DDE09L,1L,0x13L},{0x383FC3BAL,1L,0x25L,7UL,0x45DCFF64L,9L,8UL,0x08793AEFL,0L}},{{1L,0L,0x26L,0xE456177FL,4294967295UL,0x7804L,1UL,-2L,1L},{-10L,0x033297B8L,0x47L,0UL,1UL,0x1F55L,0xF046F770L,-5L,-1L},{1L,0L,-8L,0x5C80094DL,0x3A9E6C9EL,0x30F7L,0x747A9D90L,0x6D7012FEL,0x05L},{0x383FC3BAL,1L,0x25L,7UL,0x45DCFF64L,9L,8UL,0x08793AEFL,0L},{0L,9L,-8L,0x9FAE5A9EL,0xDA89BD6AL,0x114EL,0x862DDE09L,1L,0x13L},{0x383FC3BAL,1L,0x25L,7UL,0x45DCFF64L,9L,8UL,0x08793AEFL,0L}},{{1L,0L,0x26L,0xE456177FL,4294967295UL,0x7804L,1UL,-2L,1L},{-10L,0x033297B8L,0x47L,0UL,1UL,0x1F55L,0xF046F770L,-5L,-1L},{1L,0L,-8L,0x5C80094DL,0x3A9E6C9EL,0x30F7L,0x747A9D90L,0x6D7012FEL,0x05L},{0x383FC3BAL,1L,0x25L,7UL,0x45DCFF64L,9L,8UL,0x08793AEFL,0L},{0L,9L,-8L,0x9FAE5A9EL,0xDA89BD6AL,0x114EL,0x862DDE09L,1L,0x13L},{0x383FC3BAL,1L,0x25L,7UL,0x45DCFF64L,9L,8UL,0x08793AEFL,0L}},{{1L,0L,0x26L,0xE456177FL,4294967295UL,0x7804L,1UL,-2L,1L},{-10L,0x033297B8L,0x47L,0UL,1UL,0x1F55L,0xF046F770L,-5L,-1L},{1L,0L,-8L,0x5C80094DL,0x3A9E6C9EL,0x30F7L,0x747A9D90L,0x6D7012FEL,0x05L},{0x383FC3BAL,1L,0x25L,7UL,0x45DCFF64L,9L,8UL,0x08793AEFL,0L},{0L,9L,-8L,0x9FAE5A9EL,0xDA89BD6AL,0x114EL,0x862DDE09L,1L,0x13L},{0x383FC3BAL,1L,0x25L,7UL,0x45DCFF64L,9L,8UL,0x08793AEFL,0L}}},{{{1L,0L,0x26L,0xE456177FL,4294967295UL,0x7804L,1UL,-2L,1L},{-10L,0x033297B8L,0x47L,0UL,1UL,0x1F55L,0xF046F770L,-5L,-1L},{1L,0L,-8L,0x5C80094DL,0x3A9E6C9EL,0x30F7L,0x747A9D90L,0x6D7012FEL,0x05L},{0x383FC3BAL,1L,0x25L,7UL,0x45DCFF64L,9L,8UL,0x08793AEFL,0L},{0L,9L,-8L,0x9FAE5A9EL,0xDA89BD6AL,0x114EL,0x862DDE09L,1L,0x13L},{0x383FC3BAL,1L,0x25L,7UL,0x45DCFF64L,9L,8UL,0x08793AEFL,0L}},{{1L,0L,0x26L,0xE456177FL,4294967295UL,0x7804L,1UL,-2L,1L},{-10L,0x033297B8L,0x47L,0UL,1UL,0x1F55L,0xF046F770L,-5L,-1L},{1L,0L,-8L,0x5C80094DL,0x3A9E6C9EL,0x30F7L,0x747A9D90L,0x6D7012FEL,0x05L},{0x383FC3BAL,1L,0x25L,7UL,0x45DCFF64L,9L,8UL,0x08793AEFL,0L},{0L,9L,-8L,0x9FAE5A9EL,0xDA89BD6AL,0x114EL,0x862DDE09L,1L,0x13L},{0x383FC3BAL,1L,0x25L,7UL,0x45DCFF64L,9L,8UL,0x08793AEFL,0L}},{{1L,0L,0x26L,0xE456177FL,4294967295UL,0x7804L,1UL,-2L,1L},{-10L,0x033297B8L,0x47L,0UL,1UL,0x1F55L,0xF046F770L,-5L,-1L},{1L,0L,-8L,0x5C80094DL,0x3A9E6C9EL,0x30F7L,0x747A9D90L,0x6D7012FEL,0x05L},{0x383FC3BAL,1L,0x25L,7UL,0x45DCFF64L,9L,8UL,0x08793AEFL,0L},{0L,9L,-8L,0x9FAE5A9EL,0xDA89BD6AL,0x114EL,0x862DDE09L,1L,0x13L},{0x383FC3BAL,1L,0x25L,7UL,0x45DCFF64L,9L,8UL,0x08793AEFL,0L}},{{1L,0L,0x26L,0xE456177FL,4294967295UL,0x7804L,1UL,-2L,1L},{-10L,0x033297B8L,0x47L,0UL,1UL,0x1F55L,0xF046F770L,-5L,-1L},{1L,0L,-8L,0x5C80094DL,0x3A9E6C9EL,0x30F7L,0x747A9D90L,0x6D7012FEL,0x05L},{0x383FC3BAL,1L,0x25L,7UL,0x45DCFF64L,9L,8UL,0x08793AEFL,0L},{0L,9L,-8L,0x9FAE5A9EL,0xDA89BD6AL,0x114EL,0x862DDE09L,1L,0x13L},{0x383FC3BAL,1L,0x25L,7UL,0x45DCFF64L,9L,8UL,0x08793AEFL,0L}},{{1L,0L,0x26L,0xE456177FL,4294967295UL,0x7804L,1UL,-2L,1L},{-10L,0x033297B8L,0x47L,0UL,1UL,0x1F55L,0xF046F770L,-5L,-1L},{1L,0L,-8L,0x5C80094DL,0x3A9E6C9EL,0x30F7L,0x747A9D90L,0x6D7012FEL,0x05L},{0x383FC3BAL,1L,0x25L,7UL,0x45DCFF64L,9L,8UL,0x08793AEFL,0L},{0L,9L,-8L,0x9FAE5A9EL,0xDA89BD6AL,0x114EL,0x862DDE09L,1L,0x13L},{0x383FC3BAL,1L,0x25L,7UL,0x45DCFF64L,9L,8UL,0x08793AEFL,0L}},{{1L,0L,0x26L,0xE456177FL,4294967295UL,0x7804L,1UL,-2L,1L},{-10L,0x033297B8L,0x47L,0UL,1UL,0x1F55L,0xF046F770L,-5L,-1L},{1L,0L,-8L,0x5C80094DL,0x3A9E6C9EL,0x30F7L,0x747A9D90L,0x6D7012FEL,0x05L},{0x383FC3BAL,1L,0x25L,7UL,0x45DCFF64L,9L,8UL,0x08793AEFL,0L},{0L,9L,-8L,0x9FAE5A9EL,0xDA89BD6AL,0x114EL,0x862DDE09L,1L,0x13L},{0x383FC3BAL,1L,0x25L,7UL,0x45DCFF64L,9L,8UL,0x08793AEFL,0L}},{{1L,0L,0x26L,0xE456177FL,4294967295UL,0x7804L,1UL,-2L,1L},{-10L,0x033297B8L,0x47L,0UL,1UL,0x1F55L,0xF046F770L,-5L,-1L},{1L,0L,-8L,0x5C80094DL,0x3A9E6C9EL,0x30F7L,0x747A9D90L,0x6D7012FEL,0x05L},{0x383FC3BAL,1L,0x25L,7UL,0x45DCFF64L,9L,8UL,0x08793AEFL,0L},{0L,9L,-8L,0x9FAE5A9EL,0xDA89BD6AL,0x114EL,0x862DDE09L,1L,0x13L},{0x383FC3BAL,1L,0x25L,7UL,0x45DCFF64L,9L,8UL,0x08793AEFL,0L}}},{{{1L,0L,0x26L,0xE456177FL,4294967295UL,0x7804L,1UL,-2L,1L},{-10L,0x033297B8L,0x47L,0UL,1UL,0x1F55L,0xF046F770L,-5L,-1L},{1L,0L,-8L,0x5C80094DL,0x3A9E6C9EL,0x30F7L,0x747A9D90L,0x6D7012FEL,0x05L},{0x383FC3BAL,1L,0x25L,7UL,0x45DCFF64L,9L,8UL,0x08793AEFL,0L},{0L,9L,-8L,0x9FAE5A9EL,0xDA89BD6AL,0x114EL,0x862DDE09L,1L,0x13L},{0x383FC3BAL,1L,0x25L,7UL,0x45DCFF64L,9L,8UL,0x08793AEFL,0L}},{{1L,0L,0x26L,0xE456177FL,4294967295UL,0x7804L,1UL,-2L,1L},{-10L,0x033297B8L,0x47L,0UL,1UL,0x1F55L,0xF046F770L,-5L,-1L},{1L,0L,-8L,0x5C80094DL,0x3A9E6C9EL,0x30F7L,0x747A9D90L,0x6D7012FEL,0x05L},{0x383FC3BAL,1L,0x25L,7UL,0x45DCFF64L,9L,8UL,0x08793AEFL,0L},{0L,9L,-8L,0x9FAE5A9EL,0xDA89BD6AL,0x114EL,0x862DDE09L,1L,0x13L},{0x383FC3BAL,1L,0x25L,7UL,0x45DCFF64L,9L,8UL,0x08793AEFL,0L}},{{1L,0L,0x26L,0xE456177FL,4294967295UL,0x7804L,1UL,-2L,1L},{-10L,0x033297B8L,0x47L,0UL,1UL,0x1F55L,0xF046F770L,-5L,-1L},{1L,0L,-8L,0x5C80094DL,0x3A9E6C9EL,0x30F7L,0x747A9D90L,0x6D7012FEL,0x05L},{0x383FC3BAL,1L,0x25L,7UL,0x45DCFF64L,9L,8UL,0x08793AEFL,0L},{0L,9L,-8L,0x9FAE5A9EL,0xDA89BD6AL,0x114EL,0x862DDE09L,1L,0x13L},{0x383FC3BAL,1L,0x25L,7UL,0x45DCFF64L,9L,8UL,0x08793AEFL,0L}},{{1L,0L,0x26L,0xE456177FL,4294967295UL,0x7804L,1UL,-2L,1L},{-10L,0x033297B8L,0x47L,0UL,1UL,0x1F55L,0xF046F770L,-5L,-1L},{1L,0L,-8L,0x5C80094DL,0x3A9E6C9EL,0x30F7L,0x747A9D90L,0x6D7012FEL,0x05L},{0x383FC3BAL,1L,0x25L,7UL,0x45DCFF64L,9L,8UL,0x08793AEFL,0L},{0L,9L,-8L,0x9FAE5A9EL,0xDA89BD6AL,0x114EL,0x862DDE09L,1L,0x13L},{0x383FC3BAL,1L,0x25L,7UL,0x45DCFF64L,9L,8UL,0x08793AEFL,0L}},{{1L,0L,0x26L,0xE456177FL,4294967295UL,0x7804L,1UL,-2L,1L},{-10L,0x033297B8L,0x47L,0UL,1UL,0x1F55L,0xF046F770L,-5L,-1L},{1L,0L,-8L,0x5C80094DL,0x3A9E6C9EL,0x30F7L,0x747A9D90L,0x6D7012FEL,0x05L},{0x383FC3BAL,1L,0x25L,7UL,0x45DCFF64L,9L,8UL,0x08793AEFL,0L},{0L,9L,-8L,0x9FAE5A9EL,0xDA89BD6AL,0x114EL,0x862DDE09L,1L,0x13L},{0x383FC3BAL,1L,0x25L,7UL,0x45DCFF64L,9L,8UL,0x08793AEFL,0L}},{{1L,0L,0x26L,0xE456177FL,4294967295UL,0x7804L,1UL,-2L,1L},{-10L,0x033297B8L,0x47L,0UL,1UL,0x1F55L,0xF046F770L,-5L,-1L},{1L,0L,-8L,0x5C80094DL,0x3A9E6C9EL,0x30F7L,0x747A9D90L,0x6D7012FEL,0x05L},{0x383FC3BAL,1L,0x25L,7UL,0x45DCFF64L,9L,8UL,0x08793AEFL,0L},{0L,9L,-8L,0x9FAE5A9EL,0xDA89BD6AL,0x114EL,0x862DDE09L,1L,0x13L},{0x383FC3BAL,1L,0x25L,7UL,0x45DCFF64L,9L,8UL,0x08793AEFL,0L}},{{1L,0L,0x26L,0xE456177FL,4294967295UL,0x7804L,1UL,-2L,1L},{-10L,0x033297B8L,0x47L,0UL,1UL,0x1F55L,0xF046F770L,-5L,-1L},{1L,0L,-8L,0x5C80094DL,0x3A9E6C9EL,0x30F7L,0x747A9D90L,0x6D7012FEL,0x05L},{0x383FC3BAL,1L,0x25L,7UL,0x45DCFF64L,9L,8UL,0x08793AEFL,0L},{0L,9L,-8L,0x9FAE5A9EL,0xDA89BD6AL,0x114EL,0x862DDE09L,1L,0x13L},{0x383FC3BAL,1L,0x25L,7UL,0x45DCFF64L,9L,8UL,0x08793AEFL,0L}}},{{{1L,0L,0x26L,0xE456177FL,4294967295UL,0x7804L,1UL,-2L,1L},{-10L,0x033297B8L,0x47L,0UL,1UL,0x1F55L,0xF046F770L,-5L,-1L},{1L,0L,-8L,0x5C80094DL,0x3A9E6C9EL,0x30F7L,0x747A9D90L,0x6D7012FEL,0x05L},{0x383FC3BAL,1L,0x25L,7UL,0x45DCFF64L,9L,8UL,0x08793AEFL,0L},{0L,9L,-8L,0x9FAE5A9EL,0xDA89BD6AL,0x114EL,0x862DDE09L,1L,0x13L},{0x383FC3BAL,1L,0x25L,7UL,0x45DCFF64L,9L,8UL,0x08793AEFL,0L}},{{1L,0L,0x26L,0xE456177FL,4294967295UL,0x7804L,1UL,-2L,1L},{-10L,0x033297B8L,0x47L,0UL,1UL,0x1F55L,0xF046F770L,-5L,-1L},{1L,0L,-8L,0x5C80094DL,0x3A9E6C9EL,0x30F7L,0x747A9D90L,0x6D7012FEL,0x05L},{0x383FC3BAL,1L,0x25L,7UL,0x45DCFF64L,9L,8UL,0x08793AEFL,0L},{0L,9L,-8L,0x9FAE5A9EL,0xDA89BD6AL,0x114EL,0x862DDE09L,1L,0x13L},{0x383FC3BAL,1L,0x25L,7UL,0x45DCFF64L,9L,8UL,0x08793AEFL,0L}},{{1L,0L,0x26L,0xE456177FL,4294967295UL,0x7804L,1UL,-2L,1L},{-10L,0x033297B8L,0x47L,0UL,1UL,0x1F55L,0xF046F770L,-5L,-1L},{1L,0L,-8L,0x5C80094DL,0x3A9E6C9EL,0x30F7L,0x747A9D90L,0x6D7012FEL,0x05L},{0x383FC3BAL,1L,0x25L,7UL,0x45DCFF64L,9L,8UL,0x08793AEFL,0L},{0L,9L,-8L,0x9FAE5A9EL,0xDA89BD6AL,0x114EL,0x862DDE09L,1L,0x13L},{0x383FC3BAL,1L,0x25L,7UL,0x45DCFF64L,9L,8UL,0x08793AEFL,0L}},{{1L,0L,0x26L,0xE456177FL,4294967295UL,0x7804L,1UL,-2L,1L},{-10L,0x033297B8L,0x47L,0UL,1UL,0x1F55L,0xF046F770L,-5L,-1L},{1L,0L,-8L,0x5C80094DL,0x3A9E6C9EL,0x30F7L,0x747A9D90L,0x6D7012FEL,0x05L},{0x383FC3BAL,1L,0x25L,7UL,0x45DCFF64L,9L,8UL,0x08793AEFL,0L},{0L,9L,-8L,0x9FAE5A9EL,0xDA89BD6AL,0x114EL,0x862DDE09L,1L,0x13L},{0x383FC3BAL,1L,0x25L,7UL,0x45DCFF64L,9L,8UL,0x08793AEFL,0L}},{{1L,0L,0x26L,0xE456177FL,4294967295UL,0x7804L,1UL,-2L,1L},{-10L,0x033297B8L,0x47L,0UL,1UL,0x1F55L,0xF046F770L,-5L,-1L},{1L,0L,-8L,0x5C80094DL,0x3A9E6C9EL,0x30F7L,0x747A9D90L,0x6D7012FEL,0x05L},{0x383FC3BAL,1L,0x25L,7UL,0x45DCFF64L,9L,8UL,0x08793AEFL,0L},{0L,9L,-8L,0x9FAE5A9EL,0xDA89BD6AL,0x114EL,0x862DDE09L,1L,0x13L},{0x383FC3BAL,1L,0x25L,7UL,0x45DCFF64L,9L,8UL,0x08793AEFL,0L}},{{1L,0L,0x26L,0xE456177FL,4294967295UL,0x7804L,1UL,-2L,1L},{-10L,0x033297B8L,0x47L,0UL,1UL,0x1F55L,0xF046F770L,-5L,-1L},{1L,0L,-8L,0x5C80094DL,0x3A9E6C9EL,0x30F7L,0x747A9D90L,0x6D7012FEL,0x05L},{0x383FC3BAL,1L,0x25L,7UL,0x45DCFF64L,9L,8UL,0x08793AEFL,0L},{0L,9L,-8L,0x9FAE5A9EL,0xDA89BD6AL,0x114EL,0x862DDE09L,1L,0x13L},{0x383FC3BAL,1L,0x25L,7UL,0x45DCFF64L,9L,8UL,0x08793AEFL,0L}},{{1L,0L,0x26L,0xE456177FL,4294967295UL,0x7804L,1UL,-2L,1L},{-10L,0x033297B8L,0x47L,0UL,1UL,0x1F55L,0xF046F770L,-5L,-1L},{1L,0L,-8L,0x5C80094DL,0x3A9E6C9EL,0x30F7L,0x747A9D90L,0x6D7012FEL,0x05L},{0x383FC3BAL,1L,0x25L,7UL,0x45DCFF64L,9L,8UL,0x08793AEFL,0L},{0L,9L,-8L,0x9FAE5A9EL,0xDA89BD6AL,0x114EL,0x862DDE09L,1L,0x13L},{0x383FC3BAL,1L,0x25L,7UL,0x45DCFF64L,9L,8UL,0x08793AEFL,0L}}}}, // p_676->g_330
        {0L,0x15AFA697L,0x16L,0x3AB09545L,0xD32794D6L,-1L,6UL,0x298EC3DAL,-1L}, // p_676->g_331
        {0xD67207D69B2170F9L}, // p_676->g_335
        (VECTOR(int8_t, 16))(0x1FL, (VECTOR(int8_t, 4))(0x1FL, (VECTOR(int8_t, 2))(0x1FL, 5L), 5L), 5L, 0x1FL, 5L, (VECTOR(int8_t, 2))(0x1FL, 5L), (VECTOR(int8_t, 2))(0x1FL, 5L), 0x1FL, 5L, 0x1FL, 5L), // p_676->g_342
        (VECTOR(int8_t, 8))(0x7BL, (VECTOR(int8_t, 4))(0x7BL, (VECTOR(int8_t, 2))(0x7BL, 0x20L), 0x20L), 0x20L, 0x7BL, 0x20L), // p_676->g_343
        (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x49L), 0x49L), // p_676->g_345
        (VECTOR(int8_t, 4))(0x06L, (VECTOR(int8_t, 2))(0x06L, (-6L)), (-6L)), // p_676->g_373
        (VECTOR(int16_t, 2))(1L, (-1L)), // p_676->g_374
        {0L,0L,0L,0L,0L,0L}, // p_676->g_391
        &p_676->g_391[1], // p_676->g_390
        {{{(-9L),(-2L),(-9L)},{(-9L),(-2L),(-9L)},{(-9L),(-2L),(-9L)}},{{(-9L),(-2L),(-9L)},{(-9L),(-2L),(-9L)},{(-9L),(-2L),(-9L)}}}, // p_676->g_393
        {&p_676->g_393[0][2][2]}, // p_676->g_392
        {{&p_676->g_392[0],&p_676->g_392[0]},{&p_676->g_392[0],&p_676->g_392[0]},{&p_676->g_392[0],&p_676->g_392[0]},{&p_676->g_392[0],&p_676->g_392[0]},{&p_676->g_392[0],&p_676->g_392[0]}}, // p_676->g_389
        &p_676->g_389[3][0], // p_676->g_388
        2UL, // p_676->g_396
        6L, // p_676->g_399
        (void*)0, // p_676->g_400
        (VECTOR(int32_t, 2))(0x4F70B593L, 0x138D1E80L), // p_676->g_432
        (VECTOR(uint8_t, 8))(0x26L, (VECTOR(uint8_t, 4))(0x26L, (VECTOR(uint8_t, 2))(0x26L, 247UL), 247UL), 247UL, 0x26L, 247UL), // p_676->g_438
        (VECTOR(int32_t, 2))(0x160CE163L, 3L), // p_676->g_463
        {{{-1L},{0L}},{{-1L},{0L}},{{-1L},{0L}},{{-1L},{0L}},{{-1L},{0L}},{{-1L},{0L}}}, // p_676->g_468
        (VECTOR(int32_t, 2))((-1L), 0x1A7A9411L), // p_676->g_476
        (VECTOR(int16_t, 8))((-9L), (VECTOR(int16_t, 4))((-9L), (VECTOR(int16_t, 2))((-9L), 5L), 5L), 5L, (-9L), 5L), // p_676->g_486
        (VECTOR(uint32_t, 8))(0x05F5188BL, (VECTOR(uint32_t, 4))(0x05F5188BL, (VECTOR(uint32_t, 2))(0x05F5188BL, 1UL), 1UL), 1UL, 0x05F5188BL, 1UL), // p_676->g_512
        (void*)0, // p_676->g_513
        6L, // p_676->g_529
        &p_676->g_529, // p_676->g_528
        {0x790E32B0L,-7L,0x03L,0x0727282FL,0UL,1L,0x613A57B7L,-10L,-4L}, // p_676->g_537
        {1UL}, // p_676->g_545
        {0x688B3B41L,0x66506A56L,-7L,0x318DB0F0L,0xF1D9C160L,-2L,0xE775CCE5L,1L,0x3FL}, // p_676->g_548
        0, // p_676->v_collective
        sequence_input[get_global_id(0)], // p_676->global_0_offset
        sequence_input[get_global_id(1)], // p_676->global_1_offset
        sequence_input[get_global_id(2)], // p_676->global_2_offset
        sequence_input[get_local_id(0)], // p_676->local_0_offset
        sequence_input[get_local_id(1)], // p_676->local_1_offset
        sequence_input[get_local_id(2)], // p_676->local_2_offset
        sequence_input[get_group_id(0)], // p_676->group_0_offset
        sequence_input[get_group_id(1)], // p_676->group_1_offset
        sequence_input[get_group_id(2)], // p_676->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 2)), permutations[0][get_linear_local_id()])), // p_676->tid
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_677 = c_678;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_676);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_676->g_37, "p_676->g_37", print_hash_value);
    transparent_crc(p_676->g_39, "p_676->g_39", print_hash_value);
    transparent_crc(p_676->g_43, "p_676->g_43", print_hash_value);
    transparent_crc(p_676->g_172.f0, "p_676->g_172.f0", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_676->g_198[i].f0, "p_676->g_198[i].f0", print_hash_value);
        transparent_crc(p_676->g_198[i].f1, "p_676->g_198[i].f1", print_hash_value);
        transparent_crc(p_676->g_198[i].f2, "p_676->g_198[i].f2", print_hash_value);
        transparent_crc(p_676->g_198[i].f3, "p_676->g_198[i].f3", print_hash_value);
        transparent_crc(p_676->g_198[i].f4, "p_676->g_198[i].f4", print_hash_value);

    }
    transparent_crc(p_676->g_247, "p_676->g_247", print_hash_value);
    transparent_crc(p_676->g_258.x, "p_676->g_258.x", print_hash_value);
    transparent_crc(p_676->g_258.y, "p_676->g_258.y", print_hash_value);
    transparent_crc(p_676->g_258.z, "p_676->g_258.z", print_hash_value);
    transparent_crc(p_676->g_258.w, "p_676->g_258.w", print_hash_value);
    transparent_crc(p_676->g_264, "p_676->g_264", print_hash_value);
    transparent_crc(p_676->g_269.x, "p_676->g_269.x", print_hash_value);
    transparent_crc(p_676->g_269.y, "p_676->g_269.y", print_hash_value);
    transparent_crc(p_676->g_269.z, "p_676->g_269.z", print_hash_value);
    transparent_crc(p_676->g_269.w, "p_676->g_269.w", print_hash_value);
    transparent_crc(p_676->g_272.s0, "p_676->g_272.s0", print_hash_value);
    transparent_crc(p_676->g_272.s1, "p_676->g_272.s1", print_hash_value);
    transparent_crc(p_676->g_272.s2, "p_676->g_272.s2", print_hash_value);
    transparent_crc(p_676->g_272.s3, "p_676->g_272.s3", print_hash_value);
    transparent_crc(p_676->g_272.s4, "p_676->g_272.s4", print_hash_value);
    transparent_crc(p_676->g_272.s5, "p_676->g_272.s5", print_hash_value);
    transparent_crc(p_676->g_272.s6, "p_676->g_272.s6", print_hash_value);
    transparent_crc(p_676->g_272.s7, "p_676->g_272.s7", print_hash_value);
    transparent_crc(p_676->g_293.f0, "p_676->g_293.f0", print_hash_value);
    transparent_crc(p_676->g_293.f1, "p_676->g_293.f1", print_hash_value);
    transparent_crc(p_676->g_293.f2, "p_676->g_293.f2", print_hash_value);
    transparent_crc(p_676->g_293.f3, "p_676->g_293.f3", print_hash_value);
    transparent_crc(p_676->g_293.f4, "p_676->g_293.f4", print_hash_value);
    transparent_crc(p_676->g_293.f5, "p_676->g_293.f5", print_hash_value);
    transparent_crc(p_676->g_293.f6, "p_676->g_293.f6", print_hash_value);
    transparent_crc(p_676->g_293.f7, "p_676->g_293.f7", print_hash_value);
    transparent_crc(p_676->g_293.f8, "p_676->g_293.f8", print_hash_value);
    transparent_crc(p_676->g_298, "p_676->g_298", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 7; j++)
        {
            for (k = 0; k < 6; k++)
            {
                transparent_crc(p_676->g_330[i][j][k].f0, "p_676->g_330[i][j][k].f0", print_hash_value);
                transparent_crc(p_676->g_330[i][j][k].f1, "p_676->g_330[i][j][k].f1", print_hash_value);
                transparent_crc(p_676->g_330[i][j][k].f2, "p_676->g_330[i][j][k].f2", print_hash_value);
                transparent_crc(p_676->g_330[i][j][k].f3, "p_676->g_330[i][j][k].f3", print_hash_value);
                transparent_crc(p_676->g_330[i][j][k].f4, "p_676->g_330[i][j][k].f4", print_hash_value);
                transparent_crc(p_676->g_330[i][j][k].f5, "p_676->g_330[i][j][k].f5", print_hash_value);
                transparent_crc(p_676->g_330[i][j][k].f6, "p_676->g_330[i][j][k].f6", print_hash_value);
                transparent_crc(p_676->g_330[i][j][k].f7, "p_676->g_330[i][j][k].f7", print_hash_value);
                transparent_crc(p_676->g_330[i][j][k].f8, "p_676->g_330[i][j][k].f8", print_hash_value);

            }
        }
    }
    transparent_crc(p_676->g_331.f0, "p_676->g_331.f0", print_hash_value);
    transparent_crc(p_676->g_331.f1, "p_676->g_331.f1", print_hash_value);
    transparent_crc(p_676->g_331.f2, "p_676->g_331.f2", print_hash_value);
    transparent_crc(p_676->g_331.f3, "p_676->g_331.f3", print_hash_value);
    transparent_crc(p_676->g_331.f4, "p_676->g_331.f4", print_hash_value);
    transparent_crc(p_676->g_331.f5, "p_676->g_331.f5", print_hash_value);
    transparent_crc(p_676->g_331.f6, "p_676->g_331.f6", print_hash_value);
    transparent_crc(p_676->g_331.f7, "p_676->g_331.f7", print_hash_value);
    transparent_crc(p_676->g_331.f8, "p_676->g_331.f8", print_hash_value);
    transparent_crc(p_676->g_335.f0, "p_676->g_335.f0", print_hash_value);
    transparent_crc(p_676->g_342.s0, "p_676->g_342.s0", print_hash_value);
    transparent_crc(p_676->g_342.s1, "p_676->g_342.s1", print_hash_value);
    transparent_crc(p_676->g_342.s2, "p_676->g_342.s2", print_hash_value);
    transparent_crc(p_676->g_342.s3, "p_676->g_342.s3", print_hash_value);
    transparent_crc(p_676->g_342.s4, "p_676->g_342.s4", print_hash_value);
    transparent_crc(p_676->g_342.s5, "p_676->g_342.s5", print_hash_value);
    transparent_crc(p_676->g_342.s6, "p_676->g_342.s6", print_hash_value);
    transparent_crc(p_676->g_342.s7, "p_676->g_342.s7", print_hash_value);
    transparent_crc(p_676->g_342.s8, "p_676->g_342.s8", print_hash_value);
    transparent_crc(p_676->g_342.s9, "p_676->g_342.s9", print_hash_value);
    transparent_crc(p_676->g_342.sa, "p_676->g_342.sa", print_hash_value);
    transparent_crc(p_676->g_342.sb, "p_676->g_342.sb", print_hash_value);
    transparent_crc(p_676->g_342.sc, "p_676->g_342.sc", print_hash_value);
    transparent_crc(p_676->g_342.sd, "p_676->g_342.sd", print_hash_value);
    transparent_crc(p_676->g_342.se, "p_676->g_342.se", print_hash_value);
    transparent_crc(p_676->g_342.sf, "p_676->g_342.sf", print_hash_value);
    transparent_crc(p_676->g_343.s0, "p_676->g_343.s0", print_hash_value);
    transparent_crc(p_676->g_343.s1, "p_676->g_343.s1", print_hash_value);
    transparent_crc(p_676->g_343.s2, "p_676->g_343.s2", print_hash_value);
    transparent_crc(p_676->g_343.s3, "p_676->g_343.s3", print_hash_value);
    transparent_crc(p_676->g_343.s4, "p_676->g_343.s4", print_hash_value);
    transparent_crc(p_676->g_343.s5, "p_676->g_343.s5", print_hash_value);
    transparent_crc(p_676->g_343.s6, "p_676->g_343.s6", print_hash_value);
    transparent_crc(p_676->g_343.s7, "p_676->g_343.s7", print_hash_value);
    transparent_crc(p_676->g_345.x, "p_676->g_345.x", print_hash_value);
    transparent_crc(p_676->g_345.y, "p_676->g_345.y", print_hash_value);
    transparent_crc(p_676->g_345.z, "p_676->g_345.z", print_hash_value);
    transparent_crc(p_676->g_345.w, "p_676->g_345.w", print_hash_value);
    transparent_crc(p_676->g_373.x, "p_676->g_373.x", print_hash_value);
    transparent_crc(p_676->g_373.y, "p_676->g_373.y", print_hash_value);
    transparent_crc(p_676->g_373.z, "p_676->g_373.z", print_hash_value);
    transparent_crc(p_676->g_373.w, "p_676->g_373.w", print_hash_value);
    transparent_crc(p_676->g_374.x, "p_676->g_374.x", print_hash_value);
    transparent_crc(p_676->g_374.y, "p_676->g_374.y", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_676->g_391[i], "p_676->g_391[i]", print_hash_value);

    }
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 3; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_676->g_393[i][j][k], "p_676->g_393[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_676->g_396, "p_676->g_396", print_hash_value);
    transparent_crc(p_676->g_399, "p_676->g_399", print_hash_value);
    transparent_crc(p_676->g_432.x, "p_676->g_432.x", print_hash_value);
    transparent_crc(p_676->g_432.y, "p_676->g_432.y", print_hash_value);
    transparent_crc(p_676->g_438.s0, "p_676->g_438.s0", print_hash_value);
    transparent_crc(p_676->g_438.s1, "p_676->g_438.s1", print_hash_value);
    transparent_crc(p_676->g_438.s2, "p_676->g_438.s2", print_hash_value);
    transparent_crc(p_676->g_438.s3, "p_676->g_438.s3", print_hash_value);
    transparent_crc(p_676->g_438.s4, "p_676->g_438.s4", print_hash_value);
    transparent_crc(p_676->g_438.s5, "p_676->g_438.s5", print_hash_value);
    transparent_crc(p_676->g_438.s6, "p_676->g_438.s6", print_hash_value);
    transparent_crc(p_676->g_438.s7, "p_676->g_438.s7", print_hash_value);
    transparent_crc(p_676->g_463.x, "p_676->g_463.x", print_hash_value);
    transparent_crc(p_676->g_463.y, "p_676->g_463.y", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 2; j++)
        {
            transparent_crc(p_676->g_468[i][j].f0, "p_676->g_468[i][j].f0", print_hash_value);

        }
    }
    transparent_crc(p_676->g_476.x, "p_676->g_476.x", print_hash_value);
    transparent_crc(p_676->g_476.y, "p_676->g_476.y", print_hash_value);
    transparent_crc(p_676->g_486.s0, "p_676->g_486.s0", print_hash_value);
    transparent_crc(p_676->g_486.s1, "p_676->g_486.s1", print_hash_value);
    transparent_crc(p_676->g_486.s2, "p_676->g_486.s2", print_hash_value);
    transparent_crc(p_676->g_486.s3, "p_676->g_486.s3", print_hash_value);
    transparent_crc(p_676->g_486.s4, "p_676->g_486.s4", print_hash_value);
    transparent_crc(p_676->g_486.s5, "p_676->g_486.s5", print_hash_value);
    transparent_crc(p_676->g_486.s6, "p_676->g_486.s6", print_hash_value);
    transparent_crc(p_676->g_486.s7, "p_676->g_486.s7", print_hash_value);
    transparent_crc(p_676->g_512.s0, "p_676->g_512.s0", print_hash_value);
    transparent_crc(p_676->g_512.s1, "p_676->g_512.s1", print_hash_value);
    transparent_crc(p_676->g_512.s2, "p_676->g_512.s2", print_hash_value);
    transparent_crc(p_676->g_512.s3, "p_676->g_512.s3", print_hash_value);
    transparent_crc(p_676->g_512.s4, "p_676->g_512.s4", print_hash_value);
    transparent_crc(p_676->g_512.s5, "p_676->g_512.s5", print_hash_value);
    transparent_crc(p_676->g_512.s6, "p_676->g_512.s6", print_hash_value);
    transparent_crc(p_676->g_512.s7, "p_676->g_512.s7", print_hash_value);
    transparent_crc(p_676->g_529, "p_676->g_529", print_hash_value);
    transparent_crc(p_676->g_537.f0, "p_676->g_537.f0", print_hash_value);
    transparent_crc(p_676->g_537.f1, "p_676->g_537.f1", print_hash_value);
    transparent_crc(p_676->g_537.f2, "p_676->g_537.f2", print_hash_value);
    transparent_crc(p_676->g_537.f3, "p_676->g_537.f3", print_hash_value);
    transparent_crc(p_676->g_537.f4, "p_676->g_537.f4", print_hash_value);
    transparent_crc(p_676->g_537.f5, "p_676->g_537.f5", print_hash_value);
    transparent_crc(p_676->g_537.f6, "p_676->g_537.f6", print_hash_value);
    transparent_crc(p_676->g_537.f7, "p_676->g_537.f7", print_hash_value);
    transparent_crc(p_676->g_537.f8, "p_676->g_537.f8", print_hash_value);
    transparent_crc(p_676->g_545.f0, "p_676->g_545.f0", print_hash_value);
    transparent_crc(p_676->g_548.f0, "p_676->g_548.f0", print_hash_value);
    transparent_crc(p_676->g_548.f1, "p_676->g_548.f1", print_hash_value);
    transparent_crc(p_676->g_548.f2, "p_676->g_548.f2", print_hash_value);
    transparent_crc(p_676->g_548.f3, "p_676->g_548.f3", print_hash_value);
    transparent_crc(p_676->g_548.f4, "p_676->g_548.f4", print_hash_value);
    transparent_crc(p_676->g_548.f5, "p_676->g_548.f5", print_hash_value);
    transparent_crc(p_676->g_548.f6, "p_676->g_548.f6", print_hash_value);
    transparent_crc(p_676->g_548.f7, "p_676->g_548.f7", print_hash_value);
    transparent_crc(p_676->g_548.f8, "p_676->g_548.f8", print_hash_value);
    transparent_crc(p_676->v_collective, "p_676->v_collective", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 35; i++)
            transparent_crc(p_676->g_special_values[i + 35 * get_linear_group_id()], "p_676->g_special_values[i + 35 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 35; i++)
            transparent_crc(p_676->l_special_values[i], "p_676->l_special_values[i]", print_hash_value);
    transparent_crc(p_676->l_comm_values[get_linear_local_id()], "p_676->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_676->g_comm_values[get_linear_group_id() * 2 + get_linear_local_id()], "p_676->g_comm_values[get_linear_group_id() * 2 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
