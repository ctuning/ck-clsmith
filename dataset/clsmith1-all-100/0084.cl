// --atomics 43 ---atomic_reductions ---fake_divergence ---inter_thread_comm -g 65,51,3 -l 13,3,1
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

__constant uint32_t permutations[10][39] = {
{14,22,8,23,24,28,35,6,10,30,2,15,36,27,25,37,26,20,0,21,32,31,38,29,12,11,9,5,34,17,33,4,18,3,19,13,1,7,16}, // permutation 0
{9,14,2,4,32,1,31,7,28,35,6,20,0,15,13,29,17,26,37,23,38,16,10,3,24,18,21,33,34,30,25,22,27,11,5,8,36,19,12}, // permutation 1
{18,17,33,2,23,35,4,14,20,28,15,34,16,6,9,10,32,11,21,5,31,27,25,0,3,1,29,22,7,12,8,19,24,30,38,13,26,36,37}, // permutation 2
{29,21,30,18,25,1,31,10,27,38,37,28,4,3,33,6,22,7,9,20,13,19,15,16,5,35,24,11,32,12,2,0,34,8,23,36,17,26,14}, // permutation 3
{1,24,15,25,9,23,8,38,33,4,10,14,6,19,20,18,22,32,35,37,16,36,31,28,30,2,0,12,21,5,7,26,27,29,17,13,34,3,11}, // permutation 4
{29,12,30,33,9,5,35,21,18,6,20,23,32,34,37,16,38,11,26,3,14,36,28,7,15,4,19,25,10,22,31,17,27,2,8,0,1,24,13}, // permutation 5
{26,8,5,4,35,10,33,9,12,28,2,17,7,15,11,32,23,16,27,20,13,0,38,34,22,31,37,6,30,36,21,1,29,18,24,3,25,19,14}, // permutation 6
{37,36,27,26,18,38,14,7,28,31,32,16,21,5,3,4,11,1,29,33,10,22,23,13,12,9,25,6,2,35,30,15,34,17,19,0,8,24,20}, // permutation 7
{14,33,4,36,35,17,23,20,22,9,19,28,3,7,18,16,27,15,13,8,38,31,26,29,32,6,0,10,11,2,30,37,24,25,5,21,34,12,1}, // permutation 8
{37,14,4,28,8,38,9,32,13,7,26,3,34,21,36,17,0,23,20,27,18,6,2,10,22,11,19,5,31,35,33,15,24,29,30,25,12,1,16} // permutation 9
};

// Seed: 84

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   volatile uint64_t  f0;
   uint64_t  f1;
   uint32_t  f2;
};

struct S1 {
   uint64_t  f0;
   int32_t  f1;
   uint32_t  f2;
   volatile uint32_t  f3;
   struct S0  f4;
   volatile uint64_t  f5;
   uint32_t  f6;
   uint32_t  f7;
   int8_t  f8;
   uint64_t  f9;
};

struct S2 {
    uint64_t g_7;
    int32_t g_9[9];
    int32_t *g_8;
    uint16_t g_66;
    int32_t g_68[9];
    struct S1 g_80;
    struct S1 g_105;
    int32_t *g_107;
    volatile VECTOR(int16_t, 8) g_114;
    volatile VECTOR(int16_t, 2) g_115;
    VECTOR(int16_t, 16) g_116;
    VECTOR(int16_t, 2) g_120;
    VECTOR(uint16_t, 16) g_124;
    int32_t ** volatile g_128;
    int32_t ** volatile *g_127;
    volatile uint16_t g_152;
    volatile uint16_t *g_151;
    volatile uint16_t **g_150;
    volatile VECTOR(uint64_t, 4) g_159;
    struct S1 g_195[7];
    volatile struct S0 g_196;
    int32_t g_203;
    int32_t **g_212[6][10][2];
    int32_t ***g_211;
    int32_t ***g_213;
    struct S1 * volatile g_216;
    struct S1 * volatile g_217[6];
    struct S1 * volatile g_218[4][1];
    struct S1 * volatile g_219;
    struct S1 g_245;
    VECTOR(int32_t, 16) g_258;
    struct S1 g_289[1];
    int32_t ** volatile g_291;
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
    __local volatile uint32_t *l_atomic_reduction;
    __global volatile uint32_t *g_atomic_reduction;
    __local int64_t *l_comm_values;
    __global int64_t *g_comm_values;
};


/* --- FORWARD DECLARATIONS --- */
uint32_t  func_1(struct S2 * p_292);
struct S1  func_2(uint64_t  p_3, int32_t * p_4, struct S2 * p_292);
int32_t  func_10(int8_t  p_11, struct S2 * p_292);
uint16_t  func_28(uint32_t  p_29, int64_t  p_30, uint64_t * p_31, int16_t  p_32, struct S2 * p_292);
int32_t * func_40(int16_t  p_41, uint64_t  p_42, int32_t * p_43, struct S2 * p_292);
uint64_t  func_44(int8_t  p_45, uint64_t * p_46, int32_t ** p_47, int32_t ** p_48, int32_t  p_49, struct S2 * p_292);
int8_t  func_50(uint64_t * p_51, uint16_t  p_52, uint64_t * p_53, struct S2 * p_292);
struct S1  func_55(uint64_t * p_56, int32_t ** p_57, struct S2 * p_292);
uint64_t * func_58(int32_t  p_59, int8_t  p_60, int32_t ** p_61, int32_t  p_62, int64_t  p_63, struct S2 * p_292);
struct S1  func_95(int32_t * p_96, uint16_t * p_97, int8_t  p_98, int64_t  p_99, struct S2 * p_292);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_292->g_8 p_292->g_7 p_292->l_comm_values p_292->g_9 p_292->g_comm_values p_292->g_80 p_292->g_66 p_292->g_68 p_292->g_105 p_292->g_114 p_292->g_115 p_292->g_116 p_292->g_120 p_292->g_124 p_292->g_127 p_292->g_150 p_292->g_159 p_292->g_151 p_292->g_152 p_292->g_195 p_292->g_196 p_292->g_203 p_292->g_219 p_292->g_258 p_292->g_245.f0 p_292->g_289 p_292->g_128 p_292->g_291
 * writes: p_292->g_7 p_292->g_80.f6 p_292->g_66 p_292->g_80.f7 p_292->g_8 p_292->g_68 p_292->g_107 p_292->g_105.f4.f1 p_292->g_80.f0 p_292->g_9 p_292->g_80.f8 p_292->g_105.f8 p_292->g_211 p_292->g_213 p_292->g_195 p_292->g_124
 */
uint32_t  func_1(struct S2 * p_292)
{ /* block id: 4 */
    uint8_t l_5 = 255UL;
    uint64_t *l_6 = &p_292->g_7;
    int32_t *l_290 = &p_292->g_9[0];
    (*p_292->g_291) = ((**p_292->g_127) = (func_2(((*l_6) = l_5), p_292->g_8, p_292) , l_290));
    return p_292->g_7;
}


/* ------------------------------------------ */
/* 
 * reads : p_292->g_7 p_292->l_comm_values p_292->g_9 p_292->g_comm_values p_292->g_80 p_292->g_66 p_292->g_68 p_292->g_8 p_292->g_105 p_292->g_114 p_292->g_115 p_292->g_116 p_292->g_120 p_292->g_124 p_292->g_127 p_292->g_150 p_292->g_159 p_292->g_151 p_292->g_152 p_292->g_195 p_292->g_196 p_292->g_203 p_292->g_219 p_292->g_258 p_292->g_245.f0 p_292->g_289
 * writes: p_292->g_7 p_292->g_80.f6 p_292->g_66 p_292->g_80.f7 p_292->g_8 p_292->g_68 p_292->g_107 p_292->g_105.f4.f1 p_292->g_80.f0 p_292->g_9 p_292->g_80.f8 p_292->g_105.f8 p_292->g_211 p_292->g_213 p_292->g_195 p_292->g_124
 */
struct S1  func_2(uint64_t  p_3, int32_t * p_4, struct S2 * p_292)
{ /* block id: 6 */
    VECTOR(uint8_t, 8) l_16 = (VECTOR(uint8_t, 8))(0x3BL, (VECTOR(uint8_t, 4))(0x3BL, (VECTOR(uint8_t, 2))(0x3BL, 0xAEL), 0xAEL), 0xAEL, 0x3BL, 0xAEL);
    int64_t l_19 = 0x5D2E91C84132D38CL;
    VECTOR(uint32_t, 4) l_20 = (VECTOR(uint32_t, 4))(4294967291UL, (VECTOR(uint32_t, 2))(4294967291UL, 1UL), 1UL);
    int32_t l_267 = 2L;
    VECTOR(uint32_t, 2) l_270 = (VECTOR(uint32_t, 2))(1UL, 0x23E925FEL);
    int16_t *l_277[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int32_t l_278 = 0x271C5CC8L;
    VECTOR(uint64_t, 2) l_279 = (VECTOR(uint64_t, 2))(0x5B8E1D6876606C33L, 0x6B19C9D35091913BL);
    uint16_t *l_284 = &p_292->g_66;
    uint16_t *l_285[4][7][3] = {{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}}};
    VECTOR(uint16_t, 16) l_286 = (VECTOR(uint16_t, 16))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0UL), 0UL), 0UL, 1UL, 0UL, (VECTOR(uint16_t, 2))(1UL, 0UL), (VECTOR(uint16_t, 2))(1UL, 0UL), 1UL, 0UL, 1UL, 0UL);
    uint16_t **l_287 = &l_285[2][3][1];
    int32_t l_288[6][5] = {{0x3E678D4EL,0x3E678D4EL,0x3E678D4EL,0x3E678D4EL,0x3E678D4EL},{0x3E678D4EL,0x3E678D4EL,0x3E678D4EL,0x3E678D4EL,0x3E678D4EL},{0x3E678D4EL,0x3E678D4EL,0x3E678D4EL,0x3E678D4EL,0x3E678D4EL},{0x3E678D4EL,0x3E678D4EL,0x3E678D4EL,0x3E678D4EL,0x3E678D4EL},{0x3E678D4EL,0x3E678D4EL,0x3E678D4EL,0x3E678D4EL,0x3E678D4EL},{0x3E678D4EL,0x3E678D4EL,0x3E678D4EL,0x3E678D4EL,0x3E678D4EL}};
    int i, j, k;
    l_267 &= func_10((safe_mod_func_uint32_t_u_u(p_3, (safe_rshift_func_uint16_t_u_u(((((VECTOR(uint8_t, 16))(l_16.s5152533006611376)).s6 <= (-3L)) | (safe_add_func_int32_t_s_s(l_19, (l_16.s6 , ((l_16.s7 > l_19) >= ((VECTOR(uint32_t, 4))(l_20.zzyw)).y))))), 4)))), p_292);
    l_288[0][3] &= (((VECTOR(int8_t, 8))(((VECTOR(int8_t, 8))(3L, (safe_mul_func_uint8_t_u_u((((VECTOR(uint32_t, 16))(l_270.xxxyyyxxyxxxyyyy)).sd , (((safe_lshift_func_int16_t_s_u((l_278 = ((-1L) != (l_267 = (safe_mod_func_uint16_t_u_u((!0x3358L), p_3))))), p_3)) || (*p_4)) > ((VECTOR(uint64_t, 16))(l_279.yyyyyxxyxyyxxyyx)).s2)), 0x04L)), p_3, ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(mul_hi(((VECTOR(int8_t, 2))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 2),((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(0x49L, 0x46L)).xxxyyyxxxxyxyyyy)).sdb, ((VECTOR(int8_t, 16))(rhadd(((VECTOR(int8_t, 2))(0x45L, 1L)).yxyyyxyyxyyyyxxx, ((VECTOR(int8_t, 16))(max(((VECTOR(int8_t, 4))((safe_mul_func_uint8_t_u_u((safe_mul_func_uint16_t_u_u((p_292->g_124.se = ((*l_284) ^= p_3)), ((VECTOR(uint16_t, 4))(l_286.s0aa7)).z)), ((((((*l_287) = l_284) != (void*)0) > l_270.y) && 0xAA79L) || p_3))), 0x1FL, 0x23L, 9L)).xywxwwywxzzyzyzy, (int8_t)p_292->g_105.f4.f1)))))).saa, ((VECTOR(int8_t, 2))(0x35L))))).yxxyxxyy, ((VECTOR(int8_t, 8))(0x1DL))))).s52)), 0x1CL, 0x78L, (-7L))))).s7 == l_279.y);
    return p_292->g_289[0];
}


/* ------------------------------------------ */
/* 
 * reads : p_292->g_7 p_292->l_comm_values p_292->g_9 p_292->g_comm_values p_292->g_80 p_292->g_66 p_292->g_68 p_292->g_8 p_292->g_105 p_292->g_114 p_292->g_115 p_292->g_116 p_292->g_120 p_292->g_124 p_292->g_127 p_292->g_150 p_292->g_159 p_292->g_151 p_292->g_152 p_292->g_195 p_292->g_196 p_292->g_203 p_292->g_219 p_292->g_258 p_292->g_245.f0
 * writes: p_292->g_7 p_292->g_66 p_292->g_80.f7 p_292->g_8 p_292->g_68 p_292->g_107 p_292->g_105.f4.f1 p_292->g_80.f0 p_292->g_9 p_292->g_80.f8 p_292->g_105.f8 p_292->g_211 p_292->g_213 p_292->g_195 p_292->g_80.f6
 */
int32_t  func_10(int8_t  p_11, struct S2 * p_292)
{ /* block id: 7 */
    VECTOR(uint32_t, 8) l_33 = (VECTOR(uint32_t, 8))(0x079D62BFL, (VECTOR(uint32_t, 4))(0x079D62BFL, (VECTOR(uint32_t, 2))(0x079D62BFL, 5UL), 5UL), 5UL, 0x079D62BFL, 5UL);
    VECTOR(int32_t, 16) l_259 = (VECTOR(int32_t, 16))(0x17D608EFL, (VECTOR(int32_t, 4))(0x17D608EFL, (VECTOR(int32_t, 2))(0x17D608EFL, 1L), 1L), 1L, 0x17D608EFL, 1L, (VECTOR(int32_t, 2))(0x17D608EFL, 1L), (VECTOR(int32_t, 2))(0x17D608EFL, 1L), 0x17D608EFL, 1L, 0x17D608EFL, 1L);
    int32_t ****l_262[3];
    int32_t ****l_264 = (void*)0;
    int32_t *****l_263 = &l_264;
    uint8_t l_265 = 255UL;
    int32_t l_266 = 1L;
    int i;
    for (i = 0; i < 3; i++)
        l_262[i] = (void*)0;
    for (p_292->g_7 = (-6); (p_292->g_7 > 10); p_292->g_7++)
    { /* block id: 10 */
        uint64_t *l_34 = &p_292->g_7;
        VECTOR(int64_t, 16) l_237 = (VECTOR(int64_t, 16))(0L, (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 0x58D3A4A643F7BD03L), 0x58D3A4A643F7BD03L), 0x58D3A4A643F7BD03L, 0L, 0x58D3A4A643F7BD03L, (VECTOR(int64_t, 2))(0L, 0x58D3A4A643F7BD03L), (VECTOR(int64_t, 2))(0L, 0x58D3A4A643F7BD03L), 0L, 0x58D3A4A643F7BD03L, 0L, 0x58D3A4A643F7BD03L);
        struct S1 *l_242 = (void*)0;
        struct S1 *l_244 = &p_292->g_245;
        struct S1 **l_243 = &l_244;
        int i;
        atomic_or(&p_292->l_atomic_reduction[0], (safe_unary_minus_func_uint16_t_u((safe_div_func_int16_t_s_s(((safe_mod_func_uint64_t_u_u((func_28(l_33.s4, p_11, l_34, l_33.s1, p_292) | (safe_mod_func_uint32_t_u_u(((safe_sub_func_uint16_t_u_u((((VECTOR(int64_t, 8))(l_237.s5dc35df5)).s4 >= (p_11 | p_11)), (safe_div_func_uint64_t_u_u(p_11, (((safe_rshift_func_uint8_t_u_u((((*l_243) = (l_242 = l_242)) != (void*)0), l_237.s0)) , l_237.s9) || 1L))))) <= 0x4ADB7796L), p_292->g_105.f1))), p_292->g_120.x)) <= FAKE_DIVERGE(p_292->local_2_offset, get_local_id(2), 10)), 0x3006L)))) + get_linear_global_id());
        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        if (get_linear_local_id() == 0)
            p_292->v_collective += p_292->l_atomic_reduction[0];
        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        for (p_292->g_80.f6 = 16; (p_292->g_80.f6 == 2); p_292->g_80.f6 = safe_sub_func_uint64_t_u_u(p_292->g_80.f6, 5))
        { /* block id: 89 */
            return l_237.sb;
        }
        if ((atomic_inc(&p_292->l_atomic_input[28]) == 6))
        { /* block id: 93 */
            int32_t l_248 = 0x6C8FE72FL;
            for (l_248 = 4; (l_248 < 18); l_248++)
            { /* block id: 96 */
                int64_t l_251 = 1L;
                int64_t l_252 = 0L;
                struct S0 l_253 = {18446744073709551614UL,0x54A62370B228D42AL,0x4A81537BL};/* VOLATILE GLOBAL l_253 */
                struct S0 l_254 = {0xB39A4F89602C3C96L,1UL,4294967295UL};/* VOLATILE GLOBAL l_254 */
                uint32_t l_255 = 1UL;
                l_252 |= l_251;
                l_254 = l_253;
                l_255++;
            }
            unsigned int result = 0;
            result += l_248;
            atomic_add(&p_292->l_special_values[28], result);
        }
        else
        { /* block id: 101 */
            (1 + 1);
        }
    }
    (*p_292->g_8) ^= ((VECTOR(int32_t, 16))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 16))(max(((VECTOR(int32_t, 16))(safe_clamp_func(VECTOR(int32_t, 16),VECTOR(int32_t, 16),((VECTOR(int32_t, 16))(p_292->g_258.se435e4f54d223e1e)), ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(l_259.s24)).yyyy)).wzzzzyxxwxzzwwzy, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))((((((p_292->g_195[5].f4.f2 = (safe_sub_func_uint64_t_u_u(18446744073709551615UL, ((((l_262[2] == ((*l_263) = &p_292->g_211)) == (65534UL != (*p_292->g_151))) == p_11) == (p_292->g_80.f0 > (p_11 > p_292->g_245.f0)))))) == l_265) & p_11) || 6L) | l_266), 0x765F1031L, ((VECTOR(int32_t, 4))(0x1A1A6C9BL)), 0x73D2DFCAL, 0x1FCD69D5L)).even)).yxwwwxyxxxwyzyyx))), (int32_t)p_11))), ((VECTOR(int32_t, 16))(0x6BD0323BL))))).s8;
    return p_11;
}


/* ------------------------------------------ */
/* 
 * reads : p_292->l_comm_values p_292->g_9 p_292->g_comm_values p_292->g_80 p_292->g_66 p_292->g_68 p_292->g_8 p_292->g_105 p_292->g_7 p_292->g_114 p_292->g_115 p_292->g_116 p_292->g_120 p_292->g_124 p_292->g_127 p_292->g_150 p_292->g_159 p_292->g_151 p_292->g_152 p_292->g_195 p_292->g_196 p_292->g_203 p_292->g_219
 * writes: p_292->g_66 p_292->g_80.f7 p_292->g_8 p_292->g_68 p_292->g_107 p_292->g_105.f4.f1 p_292->g_80.f0 p_292->g_9 p_292->g_80.f8 p_292->g_105.f8 p_292->g_211 p_292->g_213 p_292->g_195
 */
uint16_t  func_28(uint32_t  p_29, int64_t  p_30, uint64_t * p_31, int16_t  p_32, struct S2 * p_292)
{ /* block id: 11 */
    int32_t *l_37 = (void*)0;
    int32_t **l_38 = (void*)0;
    int32_t **l_39 = &l_37;
    uint64_t *l_54 = (void*)0;
    uint16_t *l_64 = (void*)0;
    uint16_t *l_65 = &p_292->g_66;
    int32_t **l_81 = (void*)0;
    int32_t *l_82 = (void*)0;
    int32_t *l_83 = (void*)0;
    int16_t l_84 = 0x767FL;
    int32_t **l_106[4][6][2] = {{{&p_292->g_8,(void*)0},{&p_292->g_8,(void*)0},{&p_292->g_8,(void*)0},{&p_292->g_8,(void*)0},{&p_292->g_8,(void*)0},{&p_292->g_8,(void*)0}},{{&p_292->g_8,(void*)0},{&p_292->g_8,(void*)0},{&p_292->g_8,(void*)0},{&p_292->g_8,(void*)0},{&p_292->g_8,(void*)0},{&p_292->g_8,(void*)0}},{{&p_292->g_8,(void*)0},{&p_292->g_8,(void*)0},{&p_292->g_8,(void*)0},{&p_292->g_8,(void*)0},{&p_292->g_8,(void*)0},{&p_292->g_8,(void*)0}},{{&p_292->g_8,(void*)0},{&p_292->g_8,(void*)0},{&p_292->g_8,(void*)0},{&p_292->g_8,(void*)0},{&p_292->g_8,(void*)0},{&p_292->g_8,(void*)0}}};
    VECTOR(int16_t, 4) l_113 = (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x735CL), 0x735CL);
    VECTOR(int32_t, 4) l_220 = (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0L), 0L);
    int i, j, k;
    if ((((safe_mul_func_uint8_t_u_u(p_292->l_comm_values[(safe_mod_func_uint32_t_u_u(p_292->tid, 39))], ((((*l_39) = l_37) == (p_292->g_107 = func_40(p_30, func_44(func_50(l_54, p_292->g_9[4], (((((l_82 = (func_55(func_58((+(~(GROUP_DIVERGE(2, 1) || ((*l_65) = 1UL)))), p_292->g_9[6], l_39, p_292->g_comm_values[p_292->tid], p_32, p_292), &p_292->g_8, p_292) , (void*)0)) != l_83) == l_84) || p_292->g_66) , &p_292->g_7), p_292), &p_292->g_7, &l_83, &l_83, p_29, p_292), &p_292->g_68[2], p_292))) | 0x7EC2L))) & p_292->g_7) < (*p_31)))
    { /* block id: 34 */
        int32_t **l_108 = &l_83;
        int32_t ***l_109 = &l_38;
        uint64_t *l_110 = &p_292->g_105.f4.f1;
        VECTOR(int16_t, 2) l_117 = (VECTOR(int16_t, 2))(0x2678L, 0x7E6EL);
        VECTOR(int16_t, 8) l_118 = (VECTOR(int16_t, 8))(0x766CL, (VECTOR(int16_t, 4))(0x766CL, (VECTOR(int16_t, 2))(0x766CL, 0x1806L), 0x1806L), 0x1806L, 0x766CL, 0x1806L);
        VECTOR(int16_t, 8) l_119 = (VECTOR(int16_t, 8))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 6L), 6L), 6L, 1L, 6L);
        VECTOR(int16_t, 2) l_121 = (VECTOR(int16_t, 2))((-4L), 0L);
        VECTOR(int16_t, 8) l_122 = (VECTOR(int16_t, 8))(0x5EF2L, (VECTOR(int16_t, 4))(0x5EF2L, (VECTOR(int16_t, 2))(0x5EF2L, 0x17AEL), 0x17AEL), 0x17AEL, 0x5EF2L, 0x17AEL);
        VECTOR(int16_t, 2) l_123 = (VECTOR(int16_t, 2))(0L, 6L);
        uint64_t *l_129 = &p_292->g_80.f0;
        VECTOR(uint32_t, 8) l_132 = (VECTOR(uint32_t, 8))(0xFB383223L, (VECTOR(uint32_t, 4))(0xFB383223L, (VECTOR(uint32_t, 2))(0xFB383223L, 4294967288UL), 4294967288UL), 4294967288UL, 0xFB383223L, 4294967288UL);
        uint16_t *l_142 = &p_292->g_66;
        int32_t l_149 = 1L;
        int i;
        (*l_109) = l_108;
        if ((((*p_31) , ((((--(*l_110)) , (*l_108)) != (void*)0) < (***l_109))) >= ((*l_129) = (p_29 & (((((VECTOR(int16_t, 2))(mul_hi(((VECTOR(int16_t, 16))(l_113.xxxyyywxyzzzxyxy)).sef, ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 8))(clz(((VECTOR(int16_t, 2))(hadd(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(rotate(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(sub_sat(((VECTOR(int16_t, 4))(p_292->g_114.s4751)).hi, ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))((-1L), ((VECTOR(int16_t, 4))(min(((VECTOR(int16_t, 16))(mul_hi(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 16))(p_292->g_115.yxxyyyxxyxyxyxyx)).lo)).s3375373374376614)).sd8)).xyyxxxyyxxxyxxyx, ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(min(((VECTOR(int16_t, 2))(p_292->g_116.s2a)), (int16_t)((VECTOR(int16_t, 8))(l_117.yxyxyxyx)).s3))).xxxxyyxy)).s0233104044130441))).s9e56, ((VECTOR(int16_t, 16))(hadd(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(9L, 1L)).xxxx)).wzywyzxxwxxxwwwx, ((VECTOR(int16_t, 16))(min(((VECTOR(int16_t, 2))(l_118.s42)).xyxyyyxyxyxxxyyy, ((VECTOR(int16_t, 2))(0x7FD1L, (-1L))).yxyxyyyyyyxxyxxx)))))).s6ccb))), p_292->g_105.f4.f0, 0x3594L, 0x4781L)).s11))))).yyxyxyxyyxyyyxxy)).s97f7, ((VECTOR(int16_t, 4))(l_119.s5504))))).zzzxwzxwwxzxwywy)).sd64f)).yxzxywwxxxywwxwz)).sca, ((VECTOR(int16_t, 4))(mad_sat(((VECTOR(int16_t, 8))(p_292->g_120.yxxxyyyx)).odd, ((VECTOR(int16_t, 16))(l_121.xxxyxxxyyxxyyyxy)).sf8ad, ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(add_sat(((VECTOR(int16_t, 2))(l_122.s04)), ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(l_123.yy))))))), (p_29 > ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(p_292->g_124.s73)).xyyy)).y), 0x5794L, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(0x1303L, 0x5652L)), 0x6DD0L, 0L)), (-1L), p_29, (safe_lshift_func_uint16_t_u_u(((**l_108) & FAKE_DIVERGE(p_292->local_2_offset, get_local_id(2), 10)), p_292->g_7)), 1L, ((VECTOR(int16_t, 4))((-3L))))).s09)).xyxx))).hi))).xxyyyxxy))))).s14))).even , &l_38) != p_292->g_127) ^ 0x793722E0L)))))
        { /* block id: 38 */
            VECTOR(int32_t, 4) l_135 = (VECTOR(int32_t, 4))(0x4898C356L, (VECTOR(int32_t, 2))(0x4898C356L, 0x4585397BL), 0x4585397BL);
            uint16_t **l_143[4][8][2] = {{{&l_64,&l_64},{&l_64,&l_64},{&l_64,&l_64},{&l_64,&l_64},{&l_64,&l_64},{&l_64,&l_64},{&l_64,&l_64},{&l_64,&l_64}},{{&l_64,&l_64},{&l_64,&l_64},{&l_64,&l_64},{&l_64,&l_64},{&l_64,&l_64},{&l_64,&l_64},{&l_64,&l_64},{&l_64,&l_64}},{{&l_64,&l_64},{&l_64,&l_64},{&l_64,&l_64},{&l_64,&l_64},{&l_64,&l_64},{&l_64,&l_64},{&l_64,&l_64},{&l_64,&l_64}},{{&l_64,&l_64},{&l_64,&l_64},{&l_64,&l_64},{&l_64,&l_64},{&l_64,&l_64},{&l_64,&l_64},{&l_64,&l_64},{&l_64,&l_64}}};
            uint16_t *l_146 = (void*)0;
            int i, j, k;
            l_149 |= (safe_sub_func_uint32_t_u_u(((VECTOR(uint32_t, 4))(l_132.s3760)).x, ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 16))(max(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(0UL, 4294967295UL)).xxyyyyxy)).s0227620610053002, (uint32_t)((safe_mod_func_int32_t_s_s(((VECTOR(int32_t, 4))(0x79817D95L, ((VECTOR(int32_t, 2))(l_135.wy)), 0x065190E7L)).x, (+(p_292->g_9[6] &= ((safe_mul_func_uint8_t_u_u((safe_mul_func_uint16_t_u_u((0x6F01L < (~(l_135.x && ((l_65 = ((safe_mul_func_uint8_t_u_u((**l_38), p_292->g_80.f5)) , l_142)) != ((safe_mod_func_uint32_t_u_u(p_292->g_80.f6, p_29)) , l_146))))), (safe_lshift_func_int16_t_s_u(((p_29 , &p_292->g_66) == (void*)0), (**l_108))))), 5L)) ^ 1L))))) & 0x50L)))).even)).s3));
        }
        else
        { /* block id: 42 */
            uint16_t **l_155 = &l_65;
            VECTOR(uint16_t, 16) l_165 = (VECTOR(uint16_t, 16))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 1UL), 1UL), 1UL, 1UL, 1UL, (VECTOR(uint16_t, 2))(1UL, 1UL), (VECTOR(uint16_t, 2))(1UL, 1UL), 1UL, 1UL, 1UL, 1UL);
            int i;
            (*l_83) ^= p_32;
            if ((+((func_55(p_31, (*l_109), p_292) , 3L) , (&l_142 == p_292->g_150))))
            { /* block id: 44 */
                uint16_t ***l_156 = &l_155;
                int32_t l_162 = (-1L);
                int8_t *l_176 = &p_292->g_80.f8;
                int8_t *l_179 = &p_292->g_105.f8;
                int i, j;
                barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                p_292->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 39)), permutations[(safe_mod_func_uint32_t_u_u((((((safe_rshift_func_int8_t_s_u((((*l_156) = l_155) != (void*)0), (!(safe_add_func_uint64_t_u_u(((VECTOR(uint64_t, 16))(p_292->g_159.wzzwwxyzyxzxwwww)).s7, (safe_lshift_func_int8_t_s_s(1L, 6))))))) >= l_162) <= (safe_lshift_func_uint8_t_u_s((!((((VECTOR(uint16_t, 16))(l_165.sa0a5abd8b400a94a)).s8 || FAKE_DIVERGE(p_292->group_0_offset, get_group_id(0), 10)) <= ((safe_lshift_func_uint8_t_u_u(((+p_292->g_105.f2) || p_292->g_68[0]), p_292->g_124.sf)) & (safe_add_func_uint32_t_u_u((((-1L) <= (safe_add_func_uint64_t_u_u(((safe_lshift_func_int8_t_s_u(((*l_179) = (~((safe_add_func_int8_t_s_s(((*l_176) ^= ((VECTOR(int8_t, 2))(0x42L, 0x53L)).lo), (FAKE_DIVERGE(p_292->group_2_offset, get_group_id(2), 10) && (safe_sub_func_int32_t_s_s((0x1EC3EBD9387172B5L | 0x7C03A1E7A8C1E0F0L), p_32))))) && (***l_109)))), p_292->l_comm_values[(safe_mod_func_uint32_t_u_u(p_292->tid, 39))])) & (***l_109)), 1UL))) , 4294967291UL), p_30))))), (***l_109)))) , &l_162) != (void*)0), 10))][(safe_mod_func_uint32_t_u_u(p_292->tid, 39))]));
                return (*p_292->g_151);
            }
            else
            { /* block id: 52 */
                if ((atomic_inc(&p_292->l_atomic_input[20]) == 1))
                { /* block id: 54 */
                    int32_t l_180 = (-3L);
                    uint32_t l_181 = 5UL;
                    int8_t l_182 = 0x01L;
                    int32_t l_183 = 1L;
                    VECTOR(int16_t, 2) l_184 = (VECTOR(int16_t, 2))((-1L), (-1L));
                    int i;
                    l_181 ^= l_180;
                    l_182 ^= 0L;
                    if ((l_184.x = l_183))
                    { /* block id: 58 */
                        uint64_t l_185 = 0xBB77FB0FCDA90051L;
                        int64_t l_186 = 0x0F979C1DC01494EEL;
                        int32_t l_188 = 0x69E5AFB1L;
                        int32_t *l_187 = &l_188;
                        int32_t *l_189 = &l_188;
                        int32_t *l_190 = &l_188;
                        l_186 &= l_185;
                        l_190 = (l_189 = l_187);
                    }
                    else
                    { /* block id: 62 */
                        uint16_t l_191 = 0xA3FEL;
                        uint32_t l_192[8] = {0x7F2E3D42L,0xF2D61EB4L,0x7F2E3D42L,0x7F2E3D42L,0xF2D61EB4L,0x7F2E3D42L,0x7F2E3D42L,0xF2D61EB4L};
                        int i;
                        l_192[0] ^= l_191;
                    }
                    unsigned int result = 0;
                    result += l_180;
                    result += l_181;
                    result += l_182;
                    result += l_183;
                    result += l_184.y;
                    result += l_184.x;
                    atomic_add(&p_292->l_special_values[20], result);
                }
                else
                { /* block id: 65 */
                    (1 + 1);
                }
            }
            (*p_292->g_8) ^= ((void*)0 != &l_155);
            p_292->g_9[6] &= (~((***l_109) = (safe_mod_func_uint8_t_u_u((p_292->g_195[5] , (((p_292->g_196 , &p_292->g_151) != (((safe_mod_func_int8_t_s_s((safe_lshift_func_uint8_t_u_u(((l_64 != ((*l_155) = &p_292->g_66)) > FAKE_DIVERGE(p_292->group_2_offset, get_group_id(2), 10)), ((((safe_div_func_uint16_t_u_u(((VECTOR(uint16_t, 16))(add_sat(((VECTOR(uint16_t, 2))(mad_sat(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(add_sat(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(0x51B8L, 0xDC69L)).xxxxxxyy)), ((VECTOR(uint16_t, 4))((l_142 == (*p_292->g_150)), 65526UL, 0xDDD1L, 65531UL)).wyywzyxy))).s0536524723115561)))).sa2af)).hi, ((VECTOR(uint16_t, 4))(0x939AL, (l_54 != (l_110 = func_58(l_165.s4, p_292->g_203, &l_82, p_32, p_292->g_195[5].f9, p_292))), 5UL, 1UL)).lo, ((VECTOR(uint16_t, 2))(8UL))))).xyyxxyyyyxxyxyxy, ((VECTOR(uint16_t, 16))(1UL))))).s4, p_29)) | (*p_292->g_8)) & FAKE_DIVERGE(p_292->group_1_offset, get_group_id(1), 10)) == 18446744073709551615UL))), p_30)) & p_29) , &l_64)) >= 0x6F1BC82AL)), p_292->g_80.f9))));
        }
    }
    else
    { /* block id: 75 */
        uint16_t l_204[6];
        int32_t ***l_210 = &l_106[0][0][1];
        int32_t ****l_209[3];
        int i;
        for (i = 0; i < 6; i++)
            l_204[i] = 0x0065L;
        for (i = 0; i < 3; i++)
            l_209[i] = &l_210;
        l_204[0]--;
        (*p_292->g_219) = ((safe_div_func_int64_t_s_s(((p_292->g_211 = &l_106[0][1][1]) != (p_292->g_213 = &p_292->g_212[1][5][0])), ((safe_add_func_uint64_t_u_u(0UL, ((*p_292->g_151) | GROUP_DIVERGE(1, 1)))) && 0xECB74F96L))) , func_55(&p_292->g_7, &l_82, p_292));
        (*l_83) ^= (((((VECTOR(int32_t, 8))(l_220.wyxyxxxx)).s4 && (p_30 == ((safe_add_func_int32_t_s_s(((((void*)0 == &l_82) != (safe_mod_func_int16_t_s_s(((((&l_82 != (p_292->g_105.f3 , &l_37)) , (FAKE_DIVERGE(p_292->local_0_offset, get_local_id(0), 10) , ((safe_lshift_func_uint8_t_u_u(((((safe_sub_func_uint8_t_u_u((p_292->g_195[5].f8 == p_292->g_80.f2), ((safe_sub_func_int8_t_s_s((safe_add_func_uint16_t_u_u(((0x6FC81A48L > 0x2A0B72BAL) != (-9L)), p_30)), p_30)) && 0x46CC7DBCL))) , p_30) > 0UL) != 8L), p_292->g_66)) , (void*)0))) != (void*)0) & p_29), p_29))) || p_29), 7L)) ^ p_292->g_120.y))) ^ 1L) ^ p_292->g_195[5].f2);
        (*p_292->g_8) = (-3L);
    }
    return p_32;
}


/* ------------------------------------------ */
/* 
 * reads : p_292->g_68 p_292->g_66 p_292->g_8 p_292->g_9 p_292->g_105
 * writes: p_292->g_80.f7 p_292->g_8 p_292->g_68
 */
int32_t * func_40(int16_t  p_41, uint64_t  p_42, int32_t * p_43, struct S2 * p_292)
{ /* block id: 27 */
    int8_t l_93 = 0x70L;
    uint64_t *l_94 = (void*)0;
    uint16_t *l_100 = &p_292->g_66;
    uint32_t *l_103 = &p_292->g_80.f7;
    uint32_t *l_104 = (void*)0;
    (*p_43) = (((func_44(((safe_lshift_func_uint8_t_u_u((p_292->g_68[1] == (safe_add_func_uint8_t_u_u(l_93, ((void*)0 != l_94)))), 6)) > (((func_95(&p_292->g_9[6], l_100, (((*l_103) = p_292->g_66) >= (!(((p_292->g_8 == l_104) | p_292->g_9[1]) , (*p_43)))), p_42, p_292) , 0x6975085CL) , l_100) == &p_292->g_66)), l_94, &p_292->g_8, &p_292->g_8, p_42, p_292) < 0x34F01B87C57D7CE4L) , 0UL) ^ p_41);
    return l_104;
}


/* ------------------------------------------ */
/* 
 * reads : p_292->g_8
 * writes: p_292->g_8
 */
uint64_t  func_44(int8_t  p_45, uint64_t * p_46, int32_t ** p_47, int32_t ** p_48, int32_t  p_49, struct S2 * p_292)
{ /* block id: 22 */
    VECTOR(int32_t, 16) l_85 = (VECTOR(int32_t, 16))((-4L), (VECTOR(int32_t, 4))((-4L), (VECTOR(int32_t, 2))((-4L), 0x2016C9CCL), 0x2016C9CCL), 0x2016C9CCL, (-4L), 0x2016C9CCL, (VECTOR(int32_t, 2))((-4L), 0x2016C9CCL), (VECTOR(int32_t, 2))((-4L), 0x2016C9CCL), (-4L), 0x2016C9CCL, (-4L), 0x2016C9CCL);
    int32_t l_86 = 0x609021D5L;
    int i;
    (*p_48) = (*p_48);
    (*p_47) = &p_292->g_68[1];
    l_86 &= ((VECTOR(int32_t, 2))(l_85.s5f)).hi;
    return l_85.sc;
}


/* ------------------------------------------ */
/* 
 * reads : p_292->g_9
 * writes:
 */
int8_t  func_50(uint64_t * p_51, uint16_t  p_52, uint64_t * p_53, struct S2 * p_292)
{ /* block id: 20 */
    return p_292->g_9[6];
}


/* ------------------------------------------ */
/* 
 * reads : p_292->g_80
 * writes:
 */
struct S1  func_55(uint64_t * p_56, int32_t ** p_57, struct S2 * p_292)
{ /* block id: 17 */
    return p_292->g_80;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint64_t * func_58(int32_t  p_59, int8_t  p_60, int32_t ** p_61, int32_t  p_62, int64_t  p_63, struct S2 * p_292)
{ /* block id: 14 */
    int32_t *l_67 = &p_292->g_68[1];
    int32_t *l_69 = (void*)0;
    int32_t *l_70 = &p_292->g_68[2];
    int32_t *l_71 = &p_292->g_68[1];
    int32_t *l_72 = (void*)0;
    int32_t *l_73 = &p_292->g_68[1];
    int32_t *l_74[2][9];
    int64_t l_75 = 0x7656345D18A93828L;
    uint32_t l_76[1][2];
    uint64_t *l_79 = &p_292->g_7;
    int i, j;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 9; j++)
            l_74[i][j] = (void*)0;
    }
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 2; j++)
            l_76[i][j] = 0x36105796L;
    }
    ++l_76[0][1];
    return l_79;
}


/* ------------------------------------------ */
/* 
 * reads : p_292->g_105
 * writes:
 */
struct S1  func_95(int32_t * p_96, uint16_t * p_97, int8_t  p_98, int64_t  p_99, struct S2 * p_292)
{ /* block id: 29 */
    return p_292->g_105;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global volatile int *g_atomic_reduction, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[43];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 43; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[43];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 43; i++)
            l_special_values[i] = 0;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    __local int64_t l_comm_values[39];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 39; i++)
            l_comm_values[i] = 1;
    struct S2 c_293;
    struct S2* p_292 = &c_293;
    struct S2 c_294 = {
        9UL, // p_292->g_7
        {0x35CF1C94L,(-1L),0x35CF1C94L,0x35CF1C94L,(-1L),0x35CF1C94L,0x35CF1C94L,(-1L),0x35CF1C94L}, // p_292->g_9
        &p_292->g_9[6], // p_292->g_8
        65529UL, // p_292->g_66
        {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)}, // p_292->g_68
        {18446744073709551614UL,0x10E41E6FL,4294967288UL,8UL,{18446744073709551610UL,4UL,0x721BC9AFL},0x0AFC62902D270846L,1UL,0x3B424222L,0x2AL,1UL}, // p_292->g_80
        {1UL,-1L,0x58A98806L,0xFC1DF0E7L,{1UL,0xD339D48ECEC35015L,1UL},0x3447928101EF9C6BL,0xA79CFC9BL,0xF6CA1BE1L,-1L,0x447F7BB3F607BB08L}, // p_292->g_105
        &p_292->g_68[1], // p_292->g_107
        (VECTOR(int16_t, 8))(0x4B60L, (VECTOR(int16_t, 4))(0x4B60L, (VECTOR(int16_t, 2))(0x4B60L, 0x2E8FL), 0x2E8FL), 0x2E8FL, 0x4B60L, 0x2E8FL), // p_292->g_114
        (VECTOR(int16_t, 2))((-7L), 0x28D9L), // p_292->g_115
        (VECTOR(int16_t, 16))(0x0BE3L, (VECTOR(int16_t, 4))(0x0BE3L, (VECTOR(int16_t, 2))(0x0BE3L, 0L), 0L), 0L, 0x0BE3L, 0L, (VECTOR(int16_t, 2))(0x0BE3L, 0L), (VECTOR(int16_t, 2))(0x0BE3L, 0L), 0x0BE3L, 0L, 0x0BE3L, 0L), // p_292->g_116
        (VECTOR(int16_t, 2))(0x5392L, 1L), // p_292->g_120
        (VECTOR(uint16_t, 16))(65529UL, (VECTOR(uint16_t, 4))(65529UL, (VECTOR(uint16_t, 2))(65529UL, 0x4EBCL), 0x4EBCL), 0x4EBCL, 65529UL, 0x4EBCL, (VECTOR(uint16_t, 2))(65529UL, 0x4EBCL), (VECTOR(uint16_t, 2))(65529UL, 0x4EBCL), 65529UL, 0x4EBCL, 65529UL, 0x4EBCL), // p_292->g_124
        &p_292->g_107, // p_292->g_128
        &p_292->g_128, // p_292->g_127
        1UL, // p_292->g_152
        &p_292->g_152, // p_292->g_151
        &p_292->g_151, // p_292->g_150
        (VECTOR(uint64_t, 4))(0xA1C93EE843484084L, (VECTOR(uint64_t, 2))(0xA1C93EE843484084L, 0x12841510BD41EAB7L), 0x12841510BD41EAB7L), // p_292->g_159
        {{18446744073709551608UL,0x0052E4B5L,0x79BDA634L,4294967292UL,{0x0EF6DE1D1B8B10F9L,18446744073709551615UL,9UL},1UL,0xE081A661L,0xECF5ED42L,-1L,0UL},{18446744073709551615UL,0x0B5351F7L,0x0607FCC5L,0xDFD7D043L,{18446744073709551615UL,9UL,0x729903A5L},8UL,0xD5146EA9L,0x4662F551L,-3L,0xBAB025D6F0B5DE0BL},{18446744073709551608UL,0x0052E4B5L,0x79BDA634L,4294967292UL,{0x0EF6DE1D1B8B10F9L,18446744073709551615UL,9UL},1UL,0xE081A661L,0xECF5ED42L,-1L,0UL},{18446744073709551608UL,0x0052E4B5L,0x79BDA634L,4294967292UL,{0x0EF6DE1D1B8B10F9L,18446744073709551615UL,9UL},1UL,0xE081A661L,0xECF5ED42L,-1L,0UL},{18446744073709551615UL,0x0B5351F7L,0x0607FCC5L,0xDFD7D043L,{18446744073709551615UL,9UL,0x729903A5L},8UL,0xD5146EA9L,0x4662F551L,-3L,0xBAB025D6F0B5DE0BL},{18446744073709551608UL,0x0052E4B5L,0x79BDA634L,4294967292UL,{0x0EF6DE1D1B8B10F9L,18446744073709551615UL,9UL},1UL,0xE081A661L,0xECF5ED42L,-1L,0UL},{18446744073709551608UL,0x0052E4B5L,0x79BDA634L,4294967292UL,{0x0EF6DE1D1B8B10F9L,18446744073709551615UL,9UL},1UL,0xE081A661L,0xECF5ED42L,-1L,0UL}}, // p_292->g_195
        {0x6C76EF8A6834DD0CL,18446744073709551615UL,0xD87D5FD9L}, // p_292->g_196
        (-1L), // p_292->g_203
        {{{&p_292->g_107,(void*)0},{&p_292->g_107,(void*)0},{&p_292->g_107,(void*)0},{&p_292->g_107,(void*)0},{&p_292->g_107,(void*)0},{&p_292->g_107,(void*)0},{&p_292->g_107,(void*)0},{&p_292->g_107,(void*)0},{&p_292->g_107,(void*)0},{&p_292->g_107,(void*)0}},{{&p_292->g_107,(void*)0},{&p_292->g_107,(void*)0},{&p_292->g_107,(void*)0},{&p_292->g_107,(void*)0},{&p_292->g_107,(void*)0},{&p_292->g_107,(void*)0},{&p_292->g_107,(void*)0},{&p_292->g_107,(void*)0},{&p_292->g_107,(void*)0},{&p_292->g_107,(void*)0}},{{&p_292->g_107,(void*)0},{&p_292->g_107,(void*)0},{&p_292->g_107,(void*)0},{&p_292->g_107,(void*)0},{&p_292->g_107,(void*)0},{&p_292->g_107,(void*)0},{&p_292->g_107,(void*)0},{&p_292->g_107,(void*)0},{&p_292->g_107,(void*)0},{&p_292->g_107,(void*)0}},{{&p_292->g_107,(void*)0},{&p_292->g_107,(void*)0},{&p_292->g_107,(void*)0},{&p_292->g_107,(void*)0},{&p_292->g_107,(void*)0},{&p_292->g_107,(void*)0},{&p_292->g_107,(void*)0},{&p_292->g_107,(void*)0},{&p_292->g_107,(void*)0},{&p_292->g_107,(void*)0}},{{&p_292->g_107,(void*)0},{&p_292->g_107,(void*)0},{&p_292->g_107,(void*)0},{&p_292->g_107,(void*)0},{&p_292->g_107,(void*)0},{&p_292->g_107,(void*)0},{&p_292->g_107,(void*)0},{&p_292->g_107,(void*)0},{&p_292->g_107,(void*)0},{&p_292->g_107,(void*)0}},{{&p_292->g_107,(void*)0},{&p_292->g_107,(void*)0},{&p_292->g_107,(void*)0},{&p_292->g_107,(void*)0},{&p_292->g_107,(void*)0},{&p_292->g_107,(void*)0},{&p_292->g_107,(void*)0},{&p_292->g_107,(void*)0},{&p_292->g_107,(void*)0},{&p_292->g_107,(void*)0}}}, // p_292->g_212
        &p_292->g_212[1][5][0], // p_292->g_211
        &p_292->g_212[3][2][0], // p_292->g_213
        (void*)0, // p_292->g_216
        {&p_292->g_195[5],(void*)0,&p_292->g_195[5],&p_292->g_195[5],(void*)0,&p_292->g_195[5]}, // p_292->g_217
        {{(void*)0},{(void*)0},{(void*)0},{(void*)0}}, // p_292->g_218
        &p_292->g_195[0], // p_292->g_219
        {0x773E6724607D9147L,-3L,4294967295UL,4294967292UL,{18446744073709551612UL,18446744073709551615UL,0xEF104C48L},0x4EDC7D4696B21A96L,1UL,4294967291UL,0L,7UL}, // p_292->g_245
        (VECTOR(int32_t, 16))(0x719CB5F6L, (VECTOR(int32_t, 4))(0x719CB5F6L, (VECTOR(int32_t, 2))(0x719CB5F6L, 0x3EDEE33AL), 0x3EDEE33AL), 0x3EDEE33AL, 0x719CB5F6L, 0x3EDEE33AL, (VECTOR(int32_t, 2))(0x719CB5F6L, 0x3EDEE33AL), (VECTOR(int32_t, 2))(0x719CB5F6L, 0x3EDEE33AL), 0x719CB5F6L, 0x3EDEE33AL, 0x719CB5F6L, 0x3EDEE33AL), // p_292->g_258
        {{0x9F0A6AE48DF67939L,0x77C94B5FL,1UL,0x67ACE2E2L,{0x6C88F2CCD2FD83C1L,0x563B2C34FCC02263L,0UL},18446744073709551615UL,1UL,4294967289UL,0L,0x086BAE5D8CDCA859L}}, // p_292->g_289
        &p_292->g_8, // p_292->g_291
        0, // p_292->v_collective
        sequence_input[get_global_id(0)], // p_292->global_0_offset
        sequence_input[get_global_id(1)], // p_292->global_1_offset
        sequence_input[get_global_id(2)], // p_292->global_2_offset
        sequence_input[get_local_id(0)], // p_292->local_0_offset
        sequence_input[get_local_id(1)], // p_292->local_1_offset
        sequence_input[get_local_id(2)], // p_292->local_2_offset
        sequence_input[get_group_id(0)], // p_292->group_0_offset
        sequence_input[get_group_id(1)], // p_292->group_1_offset
        sequence_input[get_group_id(2)], // p_292->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 39)), permutations[0][get_linear_local_id()])), // p_292->tid
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_293 = c_294;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_292);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_292->g_7, "p_292->g_7", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_292->g_9[i], "p_292->g_9[i]", print_hash_value);

    }
    transparent_crc(p_292->g_66, "p_292->g_66", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_292->g_68[i], "p_292->g_68[i]", print_hash_value);

    }
    transparent_crc(p_292->g_80.f0, "p_292->g_80.f0", print_hash_value);
    transparent_crc(p_292->g_80.f1, "p_292->g_80.f1", print_hash_value);
    transparent_crc(p_292->g_80.f2, "p_292->g_80.f2", print_hash_value);
    transparent_crc(p_292->g_80.f3, "p_292->g_80.f3", print_hash_value);
    transparent_crc(p_292->g_80.f4.f0, "p_292->g_80.f4.f0", print_hash_value);
    transparent_crc(p_292->g_80.f4.f1, "p_292->g_80.f4.f1", print_hash_value);
    transparent_crc(p_292->g_80.f4.f2, "p_292->g_80.f4.f2", print_hash_value);
    transparent_crc(p_292->g_80.f5, "p_292->g_80.f5", print_hash_value);
    transparent_crc(p_292->g_80.f6, "p_292->g_80.f6", print_hash_value);
    transparent_crc(p_292->g_80.f7, "p_292->g_80.f7", print_hash_value);
    transparent_crc(p_292->g_80.f8, "p_292->g_80.f8", print_hash_value);
    transparent_crc(p_292->g_80.f9, "p_292->g_80.f9", print_hash_value);
    transparent_crc(p_292->g_105.f0, "p_292->g_105.f0", print_hash_value);
    transparent_crc(p_292->g_105.f1, "p_292->g_105.f1", print_hash_value);
    transparent_crc(p_292->g_105.f2, "p_292->g_105.f2", print_hash_value);
    transparent_crc(p_292->g_105.f3, "p_292->g_105.f3", print_hash_value);
    transparent_crc(p_292->g_105.f4.f0, "p_292->g_105.f4.f0", print_hash_value);
    transparent_crc(p_292->g_105.f4.f1, "p_292->g_105.f4.f1", print_hash_value);
    transparent_crc(p_292->g_105.f4.f2, "p_292->g_105.f4.f2", print_hash_value);
    transparent_crc(p_292->g_105.f5, "p_292->g_105.f5", print_hash_value);
    transparent_crc(p_292->g_105.f6, "p_292->g_105.f6", print_hash_value);
    transparent_crc(p_292->g_105.f7, "p_292->g_105.f7", print_hash_value);
    transparent_crc(p_292->g_105.f8, "p_292->g_105.f8", print_hash_value);
    transparent_crc(p_292->g_105.f9, "p_292->g_105.f9", print_hash_value);
    transparent_crc(p_292->g_114.s0, "p_292->g_114.s0", print_hash_value);
    transparent_crc(p_292->g_114.s1, "p_292->g_114.s1", print_hash_value);
    transparent_crc(p_292->g_114.s2, "p_292->g_114.s2", print_hash_value);
    transparent_crc(p_292->g_114.s3, "p_292->g_114.s3", print_hash_value);
    transparent_crc(p_292->g_114.s4, "p_292->g_114.s4", print_hash_value);
    transparent_crc(p_292->g_114.s5, "p_292->g_114.s5", print_hash_value);
    transparent_crc(p_292->g_114.s6, "p_292->g_114.s6", print_hash_value);
    transparent_crc(p_292->g_114.s7, "p_292->g_114.s7", print_hash_value);
    transparent_crc(p_292->g_115.x, "p_292->g_115.x", print_hash_value);
    transparent_crc(p_292->g_115.y, "p_292->g_115.y", print_hash_value);
    transparent_crc(p_292->g_116.s0, "p_292->g_116.s0", print_hash_value);
    transparent_crc(p_292->g_116.s1, "p_292->g_116.s1", print_hash_value);
    transparent_crc(p_292->g_116.s2, "p_292->g_116.s2", print_hash_value);
    transparent_crc(p_292->g_116.s3, "p_292->g_116.s3", print_hash_value);
    transparent_crc(p_292->g_116.s4, "p_292->g_116.s4", print_hash_value);
    transparent_crc(p_292->g_116.s5, "p_292->g_116.s5", print_hash_value);
    transparent_crc(p_292->g_116.s6, "p_292->g_116.s6", print_hash_value);
    transparent_crc(p_292->g_116.s7, "p_292->g_116.s7", print_hash_value);
    transparent_crc(p_292->g_116.s8, "p_292->g_116.s8", print_hash_value);
    transparent_crc(p_292->g_116.s9, "p_292->g_116.s9", print_hash_value);
    transparent_crc(p_292->g_116.sa, "p_292->g_116.sa", print_hash_value);
    transparent_crc(p_292->g_116.sb, "p_292->g_116.sb", print_hash_value);
    transparent_crc(p_292->g_116.sc, "p_292->g_116.sc", print_hash_value);
    transparent_crc(p_292->g_116.sd, "p_292->g_116.sd", print_hash_value);
    transparent_crc(p_292->g_116.se, "p_292->g_116.se", print_hash_value);
    transparent_crc(p_292->g_116.sf, "p_292->g_116.sf", print_hash_value);
    transparent_crc(p_292->g_120.x, "p_292->g_120.x", print_hash_value);
    transparent_crc(p_292->g_120.y, "p_292->g_120.y", print_hash_value);
    transparent_crc(p_292->g_124.s0, "p_292->g_124.s0", print_hash_value);
    transparent_crc(p_292->g_124.s1, "p_292->g_124.s1", print_hash_value);
    transparent_crc(p_292->g_124.s2, "p_292->g_124.s2", print_hash_value);
    transparent_crc(p_292->g_124.s3, "p_292->g_124.s3", print_hash_value);
    transparent_crc(p_292->g_124.s4, "p_292->g_124.s4", print_hash_value);
    transparent_crc(p_292->g_124.s5, "p_292->g_124.s5", print_hash_value);
    transparent_crc(p_292->g_124.s6, "p_292->g_124.s6", print_hash_value);
    transparent_crc(p_292->g_124.s7, "p_292->g_124.s7", print_hash_value);
    transparent_crc(p_292->g_124.s8, "p_292->g_124.s8", print_hash_value);
    transparent_crc(p_292->g_124.s9, "p_292->g_124.s9", print_hash_value);
    transparent_crc(p_292->g_124.sa, "p_292->g_124.sa", print_hash_value);
    transparent_crc(p_292->g_124.sb, "p_292->g_124.sb", print_hash_value);
    transparent_crc(p_292->g_124.sc, "p_292->g_124.sc", print_hash_value);
    transparent_crc(p_292->g_124.sd, "p_292->g_124.sd", print_hash_value);
    transparent_crc(p_292->g_124.se, "p_292->g_124.se", print_hash_value);
    transparent_crc(p_292->g_124.sf, "p_292->g_124.sf", print_hash_value);
    transparent_crc(p_292->g_152, "p_292->g_152", print_hash_value);
    transparent_crc(p_292->g_159.x, "p_292->g_159.x", print_hash_value);
    transparent_crc(p_292->g_159.y, "p_292->g_159.y", print_hash_value);
    transparent_crc(p_292->g_159.z, "p_292->g_159.z", print_hash_value);
    transparent_crc(p_292->g_159.w, "p_292->g_159.w", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_292->g_195[i].f0, "p_292->g_195[i].f0", print_hash_value);
        transparent_crc(p_292->g_195[i].f1, "p_292->g_195[i].f1", print_hash_value);
        transparent_crc(p_292->g_195[i].f2, "p_292->g_195[i].f2", print_hash_value);
        transparent_crc(p_292->g_195[i].f3, "p_292->g_195[i].f3", print_hash_value);
        transparent_crc(p_292->g_195[i].f4.f0, "p_292->g_195[i].f4.f0", print_hash_value);
        transparent_crc(p_292->g_195[i].f4.f1, "p_292->g_195[i].f4.f1", print_hash_value);
        transparent_crc(p_292->g_195[i].f4.f2, "p_292->g_195[i].f4.f2", print_hash_value);
        transparent_crc(p_292->g_195[i].f5, "p_292->g_195[i].f5", print_hash_value);
        transparent_crc(p_292->g_195[i].f6, "p_292->g_195[i].f6", print_hash_value);
        transparent_crc(p_292->g_195[i].f7, "p_292->g_195[i].f7", print_hash_value);
        transparent_crc(p_292->g_195[i].f8, "p_292->g_195[i].f8", print_hash_value);
        transparent_crc(p_292->g_195[i].f9, "p_292->g_195[i].f9", print_hash_value);

    }
    transparent_crc(p_292->g_196.f0, "p_292->g_196.f0", print_hash_value);
    transparent_crc(p_292->g_196.f1, "p_292->g_196.f1", print_hash_value);
    transparent_crc(p_292->g_196.f2, "p_292->g_196.f2", print_hash_value);
    transparent_crc(p_292->g_203, "p_292->g_203", print_hash_value);
    transparent_crc(p_292->g_245.f0, "p_292->g_245.f0", print_hash_value);
    transparent_crc(p_292->g_245.f1, "p_292->g_245.f1", print_hash_value);
    transparent_crc(p_292->g_245.f2, "p_292->g_245.f2", print_hash_value);
    transparent_crc(p_292->g_245.f3, "p_292->g_245.f3", print_hash_value);
    transparent_crc(p_292->g_245.f4.f0, "p_292->g_245.f4.f0", print_hash_value);
    transparent_crc(p_292->g_245.f4.f1, "p_292->g_245.f4.f1", print_hash_value);
    transparent_crc(p_292->g_245.f4.f2, "p_292->g_245.f4.f2", print_hash_value);
    transparent_crc(p_292->g_245.f5, "p_292->g_245.f5", print_hash_value);
    transparent_crc(p_292->g_245.f6, "p_292->g_245.f6", print_hash_value);
    transparent_crc(p_292->g_245.f7, "p_292->g_245.f7", print_hash_value);
    transparent_crc(p_292->g_245.f8, "p_292->g_245.f8", print_hash_value);
    transparent_crc(p_292->g_245.f9, "p_292->g_245.f9", print_hash_value);
    transparent_crc(p_292->g_258.s0, "p_292->g_258.s0", print_hash_value);
    transparent_crc(p_292->g_258.s1, "p_292->g_258.s1", print_hash_value);
    transparent_crc(p_292->g_258.s2, "p_292->g_258.s2", print_hash_value);
    transparent_crc(p_292->g_258.s3, "p_292->g_258.s3", print_hash_value);
    transparent_crc(p_292->g_258.s4, "p_292->g_258.s4", print_hash_value);
    transparent_crc(p_292->g_258.s5, "p_292->g_258.s5", print_hash_value);
    transparent_crc(p_292->g_258.s6, "p_292->g_258.s6", print_hash_value);
    transparent_crc(p_292->g_258.s7, "p_292->g_258.s7", print_hash_value);
    transparent_crc(p_292->g_258.s8, "p_292->g_258.s8", print_hash_value);
    transparent_crc(p_292->g_258.s9, "p_292->g_258.s9", print_hash_value);
    transparent_crc(p_292->g_258.sa, "p_292->g_258.sa", print_hash_value);
    transparent_crc(p_292->g_258.sb, "p_292->g_258.sb", print_hash_value);
    transparent_crc(p_292->g_258.sc, "p_292->g_258.sc", print_hash_value);
    transparent_crc(p_292->g_258.sd, "p_292->g_258.sd", print_hash_value);
    transparent_crc(p_292->g_258.se, "p_292->g_258.se", print_hash_value);
    transparent_crc(p_292->g_258.sf, "p_292->g_258.sf", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_292->g_289[i].f0, "p_292->g_289[i].f0", print_hash_value);
        transparent_crc(p_292->g_289[i].f1, "p_292->g_289[i].f1", print_hash_value);
        transparent_crc(p_292->g_289[i].f2, "p_292->g_289[i].f2", print_hash_value);
        transparent_crc(p_292->g_289[i].f3, "p_292->g_289[i].f3", print_hash_value);
        transparent_crc(p_292->g_289[i].f4.f0, "p_292->g_289[i].f4.f0", print_hash_value);
        transparent_crc(p_292->g_289[i].f4.f1, "p_292->g_289[i].f4.f1", print_hash_value);
        transparent_crc(p_292->g_289[i].f4.f2, "p_292->g_289[i].f4.f2", print_hash_value);
        transparent_crc(p_292->g_289[i].f5, "p_292->g_289[i].f5", print_hash_value);
        transparent_crc(p_292->g_289[i].f6, "p_292->g_289[i].f6", print_hash_value);
        transparent_crc(p_292->g_289[i].f7, "p_292->g_289[i].f7", print_hash_value);
        transparent_crc(p_292->g_289[i].f8, "p_292->g_289[i].f8", print_hash_value);
        transparent_crc(p_292->g_289[i].f9, "p_292->g_289[i].f9", print_hash_value);

    }
    transparent_crc(p_292->v_collective, "p_292->v_collective", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 43; i++)
            transparent_crc(p_292->l_special_values[i], "p_292->l_special_values[i]", print_hash_value);
    transparent_crc(p_292->l_comm_values[get_linear_local_id()], "p_292->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_292->g_comm_values[get_linear_group_id() * 39 + get_linear_local_id()], "p_292->g_comm_values[get_linear_group_id() * 39 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
