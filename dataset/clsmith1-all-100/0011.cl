// --atomics 25 ---atomic_reductions ---fake_divergence ---inter_thread_comm -g 86,63,1 -l 2,7,1
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

__constant uint32_t permutations[10][14] = {
{3,13,11,12,6,8,1,10,2,9,5,0,4,7}, // permutation 0
{11,0,2,5,7,6,9,8,13,1,12,10,3,4}, // permutation 1
{7,11,6,10,3,9,2,4,8,12,13,5,0,1}, // permutation 2
{5,12,0,10,8,9,2,1,7,13,4,3,6,11}, // permutation 3
{10,3,2,4,8,1,5,0,9,12,6,7,13,11}, // permutation 4
{7,10,9,2,0,12,4,1,6,5,3,11,13,8}, // permutation 5
{1,6,8,5,9,13,10,11,3,4,0,7,2,12}, // permutation 6
{3,7,11,10,2,0,9,4,5,6,12,13,1,8}, // permutation 7
{4,9,1,0,12,11,6,8,2,5,10,3,7,13}, // permutation 8
{11,5,6,13,3,10,8,9,4,1,12,7,2,0} // permutation 9
};

// Seed: 11

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   uint16_t  f0;
   volatile uint64_t  f1;
   int32_t  f2;
   uint32_t  f3;
   uint64_t  f4;
   int32_t  f5;
   uint16_t  f6;
   uint32_t  f7;
   volatile int16_t  f8;
};

struct S1 {
   uint16_t  f0;
   int32_t  f1;
   int32_t  f2;
   int16_t  f3;
   uint16_t  f4;
   volatile uint64_t  f5;
   volatile uint32_t  f6;
};

struct S2 {
    int32_t g_6;
    int32_t *g_7;
    int32_t ** volatile g_8[9][4];
    int32_t ** volatile g_9;
    VECTOR(uint32_t, 16) g_11;
    int32_t g_16;
    uint8_t g_97;
    uint8_t g_103;
    uint16_t g_106;
    volatile VECTOR(uint16_t, 4) g_127;
    volatile VECTOR(uint16_t, 8) g_128;
    uint64_t g_159;
    int16_t g_176;
    VECTOR(uint8_t, 4) g_179;
    int16_t g_194;
    uint32_t g_196;
    struct S1 g_207;
    volatile uint16_t *g_210;
    volatile uint16_t * volatile * volatile g_209;
    volatile uint16_t * volatile * volatile *g_208[10][7][2];
    volatile VECTOR(uint32_t, 4) g_213;
    uint32_t g_215;
    volatile uint32_t g_226;
    volatile struct S1 g_271;
    uint8_t **g_302;
    volatile struct S0 g_309;
    struct S0 g_354;
    struct S0 *g_356;
    struct S0 ** volatile g_355;
    volatile VECTOR(uint32_t, 16) g_360;
    VECTOR(int8_t, 2) g_374;
    VECTOR(int8_t, 8) g_376;
    volatile VECTOR(int64_t, 2) g_433;
    VECTOR(int64_t, 4) g_443;
    VECTOR(uint64_t, 8) g_491;
    VECTOR(uint64_t, 4) g_492;
    int32_t g_501;
    volatile VECTOR(int32_t, 8) g_504;
    uint32_t g_509;
    uint32_t g_532;
    int32_t g_538;
    int32_t ** volatile g_540;
    struct S1 *g_546;
    struct S1 **g_545;
    struct S1 *** volatile g_544;
    int64_t g_555;
    volatile VECTOR(int8_t, 16) g_570;
    volatile VECTOR(uint8_t, 2) g_595;
    VECTOR(uint8_t, 16) g_596;
    volatile uint64_t *g_597[1];
    struct S1 ***g_619;
    VECTOR(int16_t, 8) g_657;
    VECTOR(int8_t, 2) g_660;
    struct S1 g_678[4];
    int32_t g_680[7][6][2];
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
    __global volatile uint32_t *g_atomic_input;
    __global volatile uint32_t *g_special_values;
    __local volatile uint32_t *l_atomic_reduction;
    __global volatile uint32_t *g_atomic_reduction;
    __local int64_t *l_comm_values;
    __global int64_t *g_comm_values;
};


/* --- FORWARD DECLARATIONS --- */
uint64_t  func_1(struct S2 * p_681);
struct S1  func_17(uint32_t * p_18, struct S2 * p_681);
uint32_t * func_19(int32_t  p_20, int32_t * p_21, int32_t ** p_22, struct S2 * p_681);
int8_t  func_29(uint32_t * p_30, uint64_t  p_31, int64_t  p_32, int32_t * p_33, uint64_t  p_34, struct S2 * p_681);
uint32_t * func_35(int32_t * p_36, int32_t  p_37, uint32_t  p_38, struct S2 * p_681);
int16_t  func_39(uint32_t * p_40, uint32_t * p_41, int64_t  p_42, struct S2 * p_681);
uint32_t * func_43(int64_t  p_44, int32_t ** p_45, uint64_t  p_46, uint64_t  p_47, int32_t  p_48, struct S2 * p_681);
int32_t ** func_49(int32_t ** p_50, int16_t  p_51, uint8_t  p_52, int32_t * p_53, uint32_t  p_54, struct S2 * p_681);
int32_t ** func_55(uint32_t  p_56, int32_t  p_57, int64_t  p_58, struct S2 * p_681);
int32_t  func_59(uint32_t * p_60, struct S2 * p_681);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_681->g_7 p_681->g_9 p_681->g_11 p_681->g_16 p_681->l_comm_values p_681->g_6 p_681->g_comm_values p_681->g_309.f3 p_681->g_196 p_681->g_97 p_681->g_127 p_681->g_207.f0 p_681->g_302 p_681->g_179 p_681->g_103 p_681->g_207.f3 p_681->g_309.f6 p_681->g_355 p_681->g_360 p_681->g_159 p_681->g_374 p_681->g_376 p_681->g_106 p_681->g_194 p_681->g_354 p_681->g_356 p_681->g_433 p_681->g_215 p_681->g_271.f0 p_681->g_207.f4 p_681->g_443 p_681->g_271.f4 p_681->g_491 p_681->g_492 p_681->g_501 p_681->g_504 p_681->g_509 p_681->g_532 p_681->g_544 p_681->g_309.f2 p_681->g_570 p_681->g_271.f5 p_681->g_176 p_681->g_271.f3 p_681->g_595 p_681->g_596 p_681->g_597 p_681->g_657 p_681->g_660 p_681->g_678 p_681->g_680 p_681->g_555
 * writes: p_681->g_6 p_681->g_7 p_681->g_11 p_681->g_16 p_681->g_196 p_681->g_179 p_681->g_103 p_681->g_207.f3 p_681->g_356 p_681->g_194 p_681->g_354 p_681->g_106 p_681->g_215 p_681->g_207.f4 p_681->g_501 p_681->g_545 p_681->g_555 p_681->g_374 p_681->g_207.f0 p_681->g_619 p_681->g_538 p_681->g_680
 */
uint64_t  func_1(struct S2 * p_681)
{ /* block id: 4 */
    VECTOR(int16_t, 16) l_4 = (VECTOR(int16_t, 16))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x23FEL), 0x23FEL), 0x23FEL, (-1L), 0x23FEL, (VECTOR(int16_t, 2))((-1L), 0x23FEL), (VECTOR(int16_t, 2))((-1L), 0x23FEL), (-1L), 0x23FEL, (-1L), 0x23FEL);
    int32_t *l_5 = &p_681->g_6;
    uint32_t *l_10 = (void*)0;
    uint32_t *l_12 = (void*)0;
    uint32_t *l_13[9];
    int32_t l_489 = 0L;
    int32_t *l_679 = &p_681->g_680[1][3][0];
    int i;
    for (i = 0; i < 9; i++)
        l_13[i] = (void*)0;
    (*l_5) = (safe_rshift_func_int16_t_s_u(((VECTOR(int16_t, 16))(l_4.s5e81a7ecc2443ac4)).s6, 13));
    (*p_681->g_9) = p_681->g_7;
    (*l_679) ^= ((p_681->g_16 |= (p_681->g_11.sd++)) <= (func_17(func_19((safe_mul_func_int8_t_s_s((safe_div_func_uint32_t_u_u(0x9D945AD3L, p_681->l_comm_values[(safe_mod_func_uint32_t_u_u(p_681->tid, 14))])), (((safe_div_func_int8_t_s_s(func_29(func_35(l_12, ((func_39(p_681->g_7, func_43(p_681->l_comm_values[(safe_mod_func_uint32_t_u_u(p_681->tid, 14))], func_49(func_55(((*l_5) < ((-10L) || func_59(p_681->g_7, p_681))), p_681->l_comm_values[(safe_mod_func_uint32_t_u_u(p_681->tid, 14))], (*l_5), p_681), p_681->g_376.s5, p_681->g_159, l_13[8], l_4.sa, p_681), p_681->g_443.w, l_489, p_681->g_376.s3, p_681), p_681->g_491.s2, p_681) , (*l_5)) & p_681->g_376.s5), p_681->g_207.f0, p_681), p_681->g_176, p_681->g_509, l_12, p_681->g_491.s4, p_681), 1L)) || 8UL) & GROUP_DIVERGE(1, 1)))), &p_681->g_538, &p_681->g_7, p_681), p_681) , (*l_5)));
    return p_681->g_555;
}


/* ------------------------------------------ */
/* 
 * reads : p_681->g_354.f5 p_681->g_215 p_681->g_7 p_681->g_6 p_681->g_678
 * writes: p_681->g_6
 */
struct S1  func_17(uint32_t * p_18, struct S2 * p_681)
{ /* block id: 242 */
    uint8_t ***l_671 = &p_681->g_302;
    VECTOR(uint32_t, 2) l_672 = (VECTOR(uint32_t, 2))(0UL, 0UL);
    int32_t l_673 = 0L;
    int32_t *l_674[2];
    uint64_t l_675 = 0xC54C19AE93DF24D4L;
    int i;
    for (i = 0; i < 2; i++)
        l_674[i] = &p_681->g_538;
    (*p_681->g_7) &= (+(safe_mod_func_int64_t_s_s((safe_mul_func_int8_t_s_s(1L, ((p_681->g_354.f5 > ((((l_671 == (((VECTOR(uint32_t, 2))(l_672.xx)).hi , &p_681->g_302)) < (+(*p_18))) >= l_672.x) ^ GROUP_DIVERGE(0, 1))) >= l_672.x))), ((~(((void*)0 == &p_681->g_209) , l_672.x)) & 0x4EEDD81E1CFC3375L))));
    ++l_675;
    return p_681->g_678[3];
}


/* ------------------------------------------ */
/* 
 * reads : p_681->g_501 p_681->g_7 p_681->g_6 p_681->g_271.f3 p_681->g_215 p_681->g_595 p_681->g_596 p_681->g_597 p_681->g_207.f3 p_681->g_354.f8 p_681->g_354.f3 p_681->g_9 p_681->g_176 p_681->g_657 p_681->g_660 p_681->g_354.f7 p_681->g_97 p_681->g_comm_values
 * writes: p_681->g_501 p_681->g_374 p_681->g_6 p_681->g_207.f0 p_681->g_619 p_681->g_207.f3 p_681->g_354.f0 p_681->g_538
 */
uint32_t * func_19(int32_t  p_20, int32_t * p_21, int32_t ** p_22, struct S2 * p_681)
{ /* block id: 217 */
    uint32_t l_586[9][1][8] = {{{0xA6F3904BL,4294967287UL,0UL,4294967295UL,4294967295UL,0xEC6AE309L,1UL,0UL}},{{0xA6F3904BL,4294967287UL,0UL,4294967295UL,4294967295UL,0xEC6AE309L,1UL,0UL}},{{0xA6F3904BL,4294967287UL,0UL,4294967295UL,4294967295UL,0xEC6AE309L,1UL,0UL}},{{0xA6F3904BL,4294967287UL,0UL,4294967295UL,4294967295UL,0xEC6AE309L,1UL,0UL}},{{0xA6F3904BL,4294967287UL,0UL,4294967295UL,4294967295UL,0xEC6AE309L,1UL,0UL}},{{0xA6F3904BL,4294967287UL,0UL,4294967295UL,4294967295UL,0xEC6AE309L,1UL,0UL}},{{0xA6F3904BL,4294967287UL,0UL,4294967295UL,4294967295UL,0xEC6AE309L,1UL,0UL}},{{0xA6F3904BL,4294967287UL,0UL,4294967295UL,4294967295UL,0xEC6AE309L,1UL,0UL}},{{0xA6F3904BL,4294967287UL,0UL,4294967295UL,4294967295UL,0xEC6AE309L,1UL,0UL}}};
    VECTOR(int16_t, 8) l_600 = (VECTOR(int16_t, 8))(0x545BL, (VECTOR(int16_t, 4))(0x545BL, (VECTOR(int16_t, 2))(0x545BL, 0x172AL), 0x172AL), 0x172AL, 0x545BL, 0x172AL);
    uint8_t ***l_601 = &p_681->g_302;
    VECTOR(int64_t, 16) l_617 = (VECTOR(int64_t, 16))(0x530D49869681D57EL, (VECTOR(int64_t, 4))(0x530D49869681D57EL, (VECTOR(int64_t, 2))(0x530D49869681D57EL, 0x3F6392D8A89BE172L), 0x3F6392D8A89BE172L), 0x3F6392D8A89BE172L, 0x530D49869681D57EL, 0x3F6392D8A89BE172L, (VECTOR(int64_t, 2))(0x530D49869681D57EL, 0x3F6392D8A89BE172L), (VECTOR(int64_t, 2))(0x530D49869681D57EL, 0x3F6392D8A89BE172L), 0x530D49869681D57EL, 0x3F6392D8A89BE172L, 0x530D49869681D57EL, 0x3F6392D8A89BE172L);
    int32_t l_621 = 6L;
    uint64_t l_630 = 18446744073709551609UL;
    uint16_t *l_636 = &p_681->g_354.f6;
    uint16_t **l_635 = &l_636;
    uint16_t ***l_637 = &l_635;
    struct S0 **l_638 = (void*)0;
    VECTOR(int16_t, 2) l_658 = (VECTOR(int16_t, 2))(0x1E44L, 0x7231L);
    VECTOR(int16_t, 8) l_659 = (VECTOR(int16_t, 8))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x598AL), 0x598AL), 0x598AL, (-1L), 0x598AL);
    uint8_t l_663 = 0xA6L;
    int8_t *l_664 = (void*)0;
    int8_t *l_665 = (void*)0;
    int8_t *l_666 = (void*)0;
    int i, j, k;
    for (p_681->g_501 = 0; (p_681->g_501 <= 24); p_681->g_501 = safe_add_func_int64_t_s_s(p_681->g_501, 5))
    { /* block id: 220 */
        l_586[0][0][7]--;
        if ((*p_681->g_7))
            continue;
        (*p_681->g_7) &= ((p_681->g_374.x = (safe_mod_func_uint64_t_u_u(p_681->g_271.f3, p_681->g_215))) > FAKE_DIVERGE(p_681->local_2_offset, get_local_id(2), 10));
    }
    for (p_20 = 0; (p_20 > (-13)); p_20 = safe_sub_func_uint64_t_u_u(p_20, 8))
    { /* block id: 228 */
        uint16_t *l_602 = (void*)0;
        uint16_t *l_603 = &p_681->g_207.f0;
        struct S1 ***l_618 = &p_681->g_545;
        int16_t *l_620[10][10] = {{(void*)0,&p_681->g_194,(void*)0,(void*)0,(void*)0,(void*)0,&p_681->g_194,(void*)0,&p_681->g_194,&p_681->g_176},{(void*)0,&p_681->g_194,(void*)0,(void*)0,(void*)0,(void*)0,&p_681->g_194,(void*)0,&p_681->g_194,&p_681->g_176},{(void*)0,&p_681->g_194,(void*)0,(void*)0,(void*)0,(void*)0,&p_681->g_194,(void*)0,&p_681->g_194,&p_681->g_176},{(void*)0,&p_681->g_194,(void*)0,(void*)0,(void*)0,(void*)0,&p_681->g_194,(void*)0,&p_681->g_194,&p_681->g_176},{(void*)0,&p_681->g_194,(void*)0,(void*)0,(void*)0,(void*)0,&p_681->g_194,(void*)0,&p_681->g_194,&p_681->g_176},{(void*)0,&p_681->g_194,(void*)0,(void*)0,(void*)0,(void*)0,&p_681->g_194,(void*)0,&p_681->g_194,&p_681->g_176},{(void*)0,&p_681->g_194,(void*)0,(void*)0,(void*)0,(void*)0,&p_681->g_194,(void*)0,&p_681->g_194,&p_681->g_176},{(void*)0,&p_681->g_194,(void*)0,(void*)0,(void*)0,(void*)0,&p_681->g_194,(void*)0,&p_681->g_194,&p_681->g_176},{(void*)0,&p_681->g_194,(void*)0,(void*)0,(void*)0,(void*)0,&p_681->g_194,(void*)0,&p_681->g_194,&p_681->g_176},{(void*)0,&p_681->g_194,(void*)0,(void*)0,(void*)0,(void*)0,&p_681->g_194,(void*)0,&p_681->g_194,&p_681->g_176}};
        uint16_t *l_622 = &p_681->g_354.f0;
        int32_t l_623 = (-1L);
        int i, j;
        (*p_21) = (((safe_lshift_func_uint8_t_u_s(((VECTOR(uint8_t, 4))(hadd(((VECTOR(uint8_t, 2))(p_681->g_595.xx)).yxxy, ((VECTOR(uint8_t, 16))(mul_hi(((VECTOR(uint8_t, 2))(p_681->g_596.sa2)).yyxyyyxxxyxxxxxy, ((VECTOR(uint8_t, 16))(mad_sat(((VECTOR(uint8_t, 16))((((void*)0 != p_681->g_597[0]) == (safe_mod_func_uint16_t_u_u(((*l_603) = (((VECTOR(int16_t, 16))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 16))(l_600.s0114165560014617)))))).sa > (l_601 == (FAKE_DIVERGE(p_681->local_1_offset, get_local_id(1), 10) , l_601)))), (safe_rshift_func_uint16_t_u_s(p_20, (safe_lshift_func_int16_t_s_s((((safe_mul_func_int8_t_s_s((safe_unary_minus_func_int64_t_s((safe_rshift_func_int16_t_s_u(((((*l_622) = (p_20 != (safe_lshift_func_uint16_t_u_u(((0xB12A044AL || (((p_681->g_207.f3 = (l_621 |= (safe_add_func_int64_t_s_s(((VECTOR(int64_t, 4))(l_617.sa60b)).y, ((&p_681->g_545 != (p_681->g_619 = l_618)) ^ p_681->g_207.f3))))) == 1L) & 0L)) & p_681->g_595.y), 12)))) | l_600.s3) && l_600.s3), l_617.s2)))), 0x56L)) <= p_681->g_6) < l_617.s8), l_617.s3))))))), ((VECTOR(uint8_t, 2))(0x40L)), 250UL, 0xF2L, p_20, 0xE7L, ((VECTOR(uint8_t, 4))(6UL)), 252UL, ((VECTOR(uint8_t, 2))(0x11L)), 255UL, 247UL)), ((VECTOR(uint8_t, 16))(0x33L)), ((VECTOR(uint8_t, 16))(0xF2L)))))))).sdbb5))).y, 3)) , p_20) && l_623);
    }
    (*p_681->g_7) = (l_600.s5 & ((safe_add_func_uint64_t_u_u((((safe_mul_func_int16_t_s_s((safe_lshift_func_uint16_t_u_s(l_630, (safe_mod_func_int8_t_s_s((safe_lshift_func_int8_t_s_u((p_20 & (((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))((((((*l_637) = l_635) == (void*)0) , 65535UL) & 8L), 0L, (-3L), (-4L))), ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(0x4FD2L, 0L)))).yxxy)))).s7 == (((l_638 == (void*)0) > p_681->g_354.f8) == p_20))), l_586[2][0][4])), l_621)))), p_681->g_354.f3)) && l_621) , p_20), 0x322C5E593262200BL)) , 0UL));
    (*p_681->g_7) = ((safe_sub_func_int16_t_s_s((safe_rshift_func_uint8_t_u_u((safe_sub_func_uint64_t_u_u(((l_600.s7 && 3UL) > (18446744073709551614UL >= (safe_div_func_int32_t_s_s((~(**p_681->g_9)), ((((p_681->g_176 < ((((safe_sub_func_int16_t_s_s(((l_630 >= (safe_mod_func_int32_t_s_s((safe_mul_func_uint8_t_u_u((l_617.se & (((l_621 = p_20) < ((p_681->g_374.y = (safe_mul_func_uint8_t_u_u(((((((((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(rotate(((VECTOR(int16_t, 4))((-5L), 0x3767L, 0x015DL, (-1L))), ((VECTOR(int16_t, 2))(rhadd(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(rotate(((VECTOR(int16_t, 16))(rotate(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(hadd(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(p_681->g_657.s34)).yyxxyyxx)).s12, ((VECTOR(int16_t, 8))(l_658.yyxyxxxy)).s44))), 0x2F47L, 0x2FABL)).zwwyxzwzxzzwyxzx, ((VECTOR(int16_t, 4))(safe_clamp_func(VECTOR(int16_t, 4),int16_t,((VECTOR(int16_t, 8))(clz(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(mul_hi(((VECTOR(int16_t, 8))(rotate(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(0x1C0DL, 0x34CBL)), 9L, 0L)).wwzwyzzw, ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 16))(l_659.s6636437615536307)))).even))).s5752277115531532, ((VECTOR(int16_t, 2))((-4L), 0x3402L)).yyyyyyxyxxxxxyxy))).s9f)))).yyxyyyyx))).odd, (int16_t)((((VECTOR(int8_t, 4))(p_681->g_660.xxyx)).x == (safe_mod_func_uint8_t_u_u(((void*)0 != (*l_637)), 1UL))) != l_586[4][0][6]), (int16_t)l_663))).xxzxwzwzyxzwwwxy))).s18, ((VECTOR(int16_t, 2))(0L))))), p_20, l_617.s8, ((VECTOR(int16_t, 2))(0x087DL)), 1L, 0x59A9L)).s44, ((VECTOR(int16_t, 2))((-5L)))))).yxyy))).xwzwzwzwwwywxzwx)).s9 && p_20) ^ p_20) & 0UL) , p_681->g_354.f7) || p_20) , p_20), 0x22L))) > p_681->g_97)) >= p_20)), 0L)), 0xC6403BBEL))) == p_20), 0L)) < l_617.s0) || l_600.s4) <= l_600.s0)) , 0x2355A067L) == p_681->g_354.f3) , 1L))))), p_681->g_501)), 5)), p_20)) <= p_681->g_comm_values[p_681->tid]);
    return &p_681->g_215;
}


/* ------------------------------------------ */
/* 
 * reads : p_681->g_7 p_681->g_6
 * writes: p_681->g_6
 */
int8_t  func_29(uint32_t * p_30, uint64_t  p_31, int64_t  p_32, int32_t * p_33, uint64_t  p_34, struct S2 * p_681)
{ /* block id: 213 */
    uint64_t l_576 = 18446744073709551615UL;
    int32_t l_577[8] = {(-3L),(-3L),(-3L),(-3L),(-3L),(-3L),(-3L),(-3L)};
    int32_t *l_578 = &p_681->g_6;
    int32_t *l_579[3];
    int32_t l_580 = (-1L);
    uint8_t l_581 = 0x9FL;
    int i;
    for (i = 0; i < 3; i++)
        l_579[i] = &p_681->g_6;
    (*p_681->g_7) &= l_576;
    --l_581;
    return p_32;
}


/* ------------------------------------------ */
/* 
 * reads : p_681->g_504 p_681->g_207.f4 p_681->g_491 p_681->g_570 p_681->g_271.f5 p_681->g_7 p_681->g_6 p_681->g_354.f6 p_681->g_501
 * writes: p_681->g_555 p_681->g_207.f4 p_681->g_501
 */
uint32_t * func_35(int32_t * p_36, int32_t  p_37, uint32_t  p_38, struct S2 * p_681)
{ /* block id: 206 */
    int64_t *l_553 = (void*)0;
    int64_t *l_554 = &p_681->g_555;
    uint16_t *l_556 = (void*)0;
    uint16_t *l_557 = &p_681->g_207.f4;
    struct S0 **l_564 = &p_681->g_356;
    int8_t *l_565 = (void*)0;
    int8_t *l_566 = (void*)0;
    int8_t *l_567 = (void*)0;
    int32_t l_568 = (-1L);
    struct S0 **l_569 = (void*)0;
    int32_t **l_571 = &p_681->g_7;
    int32_t *l_572 = &p_681->g_501;
    struct S1 *l_573[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
    struct S1 **l_574 = (void*)0;
    struct S1 **l_575 = &l_573[2];
    int i;
    (*l_572) &= (((VECTOR(int8_t, 2))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(((safe_rshift_func_uint8_t_u_s(((safe_sub_func_int64_t_s_s((((VECTOR(int8_t, 8))(mul_hi(((VECTOR(int8_t, 8))((safe_rshift_func_uint16_t_u_u(p_37, (((*l_554) = p_681->g_504.s6) , ((*l_557)--)))), ((VECTOR(int8_t, 4))(0x65L, 0x52L, 0x75L, 1L)), ((VECTOR(int8_t, 8))((safe_lshift_func_uint16_t_u_s(FAKE_DIVERGE(p_681->local_2_offset, get_local_id(2), 10), (safe_mul_func_int16_t_s_s(p_37, (l_564 == ((l_568 ^= p_681->g_491.s4) , l_569)))))), (-1L), ((VECTOR(int8_t, 2))((-2L), 0x74L)), ((VECTOR(int8_t, 4))(0x51L, 0x49L, (-4L), 0x75L)))).s1, 3L, 1L)), ((VECTOR(int8_t, 2))(mad_sat(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(mad_sat(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(p_681->g_570.s32)), 6L, (((void*)0 != l_571) ^ p_681->g_271.f5), ((VECTOR(int8_t, 8))((-1L))), (**l_571), 5L, 0x49L, (-7L))).odd)).even)).hi, ((VECTOR(int8_t, 2))(0x6EL)), ((VECTOR(int8_t, 2))(1L))))), 0L, 0x40L)), ((VECTOR(int8_t, 2))(0x15L)), (-1L), 0x0EL)).s2034061252702552)).s8, ((VECTOR(int8_t, 4))(0x39L)), ((VECTOR(int8_t, 2))((-4L))), 0L)).s35, ((VECTOR(int8_t, 2))(0x6AL)), ((VECTOR(int8_t, 2))(0x31L))))).xyxyxxxy))).s3 == p_37), 6L)) | 4UL), 5)) == p_681->g_354.f6), 0x52L, ((VECTOR(int8_t, 4))(0x0AL)), (**l_571), 0x6CL, (-9L), ((VECTOR(int8_t, 4))(0x16L)), 0x5FL, 1L, 0x5AL)).s77f6)).even)))).even >= 0xD0L);
    (*l_575) = l_573[2];
    return &p_681->g_215;
}


/* ------------------------------------------ */
/* 
 * reads : p_681->g_544 p_681->g_309.f2
 * writes: p_681->g_545
 */
int16_t  func_39(uint32_t * p_40, uint32_t * p_41, int64_t  p_42, struct S2 * p_681)
{ /* block id: 203 */
    struct S1 *l_543[6] = {&p_681->g_207,&p_681->g_207,&p_681->g_207,&p_681->g_207,&p_681->g_207,&p_681->g_207};
    struct S1 **l_542 = &l_543[3];
    int i;
    (*p_681->g_544) = l_542;
    return p_681->g_309.f2;
}


/* ------------------------------------------ */
/* 
 * reads : p_681->g_491 p_681->g_492 p_681->g_7 p_681->g_6 p_681->g_354.f5 p_681->g_207.f4 p_681->g_194 p_681->g_501 p_681->g_504 p_681->g_509 p_681->g_103 p_681->g_354.f4 p_681->g_532 p_681->g_360
 * writes: p_681->g_6 p_681->g_354.f5 p_681->g_207.f4 p_681->g_194 p_681->g_501 p_681->g_103 p_681->g_354.f4
 */
uint32_t * func_43(int64_t  p_44, int32_t ** p_45, uint64_t  p_46, uint64_t  p_47, int32_t  p_48, struct S2 * p_681)
{ /* block id: 173 */
    int8_t l_490[2];
    VECTOR(uint32_t, 8) l_493 = (VECTOR(uint32_t, 8))(0x578ED2DDL, (VECTOR(uint32_t, 4))(0x578ED2DDL, (VECTOR(uint32_t, 2))(0x578ED2DDL, 0x152616A7L), 0x152616A7L), 0x152616A7L, 0x578ED2DDL, 0x152616A7L);
    int32_t l_539 = (-8L);
    int i, j;
    for (i = 0; i < 2; i++)
        l_490[i] = (-2L);
    (*p_681->g_7) &= (l_490[0] != ((VECTOR(uint64_t, 2))(mad_sat(((VECTOR(uint64_t, 2))(max(((VECTOR(uint64_t, 2))(hadd(((VECTOR(uint64_t, 4))(p_681->g_491.s3626)).hi, ((VECTOR(uint64_t, 2))(0UL, 0x1FEA394D4C2BEB74L))))), (uint64_t)l_490[0]))), ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(safe_clamp_func(VECTOR(uint64_t, 2),uint64_t,((VECTOR(uint64_t, 2))(0UL, 0x00167081EBDE1157L)), (uint64_t)(FAKE_DIVERGE(p_681->local_1_offset, get_local_id(1), 10) <= 0x2E7FA1F8L), (uint64_t)((VECTOR(uint64_t, 2))(0x55ADFD5752BCC04DL, 0x2030F19206706E88L)).lo))).yxxyxxyx)).s63, ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 4))(p_681->g_492.yzxz)))).lo))).hi);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    p_681->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 14)), permutations[(safe_mod_func_uint32_t_u_u(((VECTOR(uint32_t, 16))(l_493.s4351650072143653)).s5, 10))][(safe_mod_func_uint32_t_u_u(p_681->tid, 14))]));
    for (p_681->g_354.f5 = 10; (p_681->g_354.f5 != 19); p_681->g_354.f5 = safe_add_func_uint16_t_u_u(p_681->g_354.f5, 4))
    { /* block id: 180 */
        uint32_t l_529[10][6][4] = {{{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL}},{{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL}},{{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL}},{{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL}},{{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL}},{{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL}},{{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL}},{{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL}},{{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL}},{{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL}}};
        int32_t l_536 = 0L;
        int i, j, k;
        for (p_681->g_207.f4 = 1; (p_681->g_207.f4 != 15); p_681->g_207.f4++)
        { /* block id: 183 */
            for (p_681->g_194 = 0; (p_681->g_194 == (-6)); --p_681->g_194)
            { /* block id: 186 */
                int32_t *l_500 = &p_681->g_501;
                (*l_500) = ((*p_681->g_7) = 0x5B25C877L);
            }
        }
        for (p_681->g_501 = (-23); (p_681->g_501 <= 16); ++p_681->g_501)
        { /* block id: 193 */
            uint8_t *l_516 = (void*)0;
            uint8_t *l_517 = &p_681->g_103;
            int32_t l_520 = 1L;
            struct S0 *l_530 = (void*)0;
            uint64_t *l_531 = &p_681->g_354.f4;
            uint64_t *l_533 = (void*)0;
            uint64_t *l_534 = (void*)0;
            uint64_t *l_535[4];
            int32_t *l_537[1];
            int32_t **l_541 = &l_537[0];
            int i;
            for (i = 0; i < 4; i++)
                l_535[i] = (void*)0;
            for (i = 0; i < 1; i++)
                l_537[i] = &p_681->g_538;
            l_539 |= ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(min(((VECTOR(int32_t, 8))(0L, (-1L), ((VECTOR(int32_t, 4))(mad_sat(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(0x3A367887L, (-4L))).xyxx)), ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(0L, 1L, (-5L), 0x252F340BL)).ywwxwwxx)).hi, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(0x7A560597L, (-1L))), 0x56197AAEL, 1L))))), 0x55544E36L, (-1L))).s30, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(p_681->g_504.s01772207)).s7512172454145341)).s94))).yxxxyyxy)))).s72)), (safe_lshift_func_int8_t_s_s((safe_rshift_func_int16_t_s_u(((VECTOR(int16_t, 4))(0L, p_681->g_509, 0L, (-1L))).w, 7)), (safe_add_func_uint64_t_u_u((l_536 = ((safe_lshift_func_int8_t_s_s((((safe_mul_func_uint8_t_u_u(((void*)0 == &p_681->g_209), (--(*l_517)))) | p_48) && (p_46 , l_520)), (safe_lshift_func_int16_t_s_u((~p_681->g_6), 2)))) >= ((safe_rshift_func_uint16_t_u_s(GROUP_DIVERGE(0, 1), (p_47 >= (safe_mod_func_uint64_t_u_u(((*l_531) &= (safe_mul_func_int8_t_s_s(((((l_529[7][1][1] , l_530) == (void*)0) & l_493.s3) || 0xF7A74A5625F856B8L), 255UL))), p_681->g_532))))) < p_681->g_360.s2))), l_520)))), l_520, (-1L), 0x2D239D18L, 7L, 1L)).s3;
            (*l_541) = &l_536;
        }
        return &p_681->g_215;
    }
    return &p_681->g_532;
}


/* ------------------------------------------ */
/* 
 * reads : p_681->g_355 p_681->g_356 p_681->g_354 p_681->g_7 p_681->g_103 p_681->g_433 p_681->g_6 p_681->g_215 p_681->g_271.f0 p_681->l_comm_values p_681->g_207.f4 p_681->g_196 p_681->g_194 p_681->g_443 p_681->g_9 p_681->g_374 p_681->g_302 p_681->g_271.f4 p_681->g_179
 * writes: p_681->g_6 p_681->g_103 p_681->g_106 p_681->g_215 p_681->g_179
 */
int32_t ** func_49(int32_t ** p_50, int16_t  p_51, uint8_t  p_52, int32_t * p_53, uint32_t  p_54, struct S2 * p_681)
{ /* block id: 121 */
    uint32_t l_390 = 0x8C88A1EAL;
    int32_t *l_391 = (void*)0;
    int32_t *l_392 = &p_681->g_6;
    int32_t *l_393 = &p_681->g_6;
    int32_t *l_394 = &p_681->g_6;
    int32_t *l_395 = &p_681->g_6;
    int32_t *l_396 = &p_681->g_6;
    int32_t *l_397 = &p_681->g_6;
    int32_t *l_398 = &p_681->g_6;
    int32_t l_399 = 0x56E93C78L;
    int32_t *l_400 = &p_681->g_6;
    int32_t *l_401 = &l_399;
    int32_t *l_402 = (void*)0;
    int32_t *l_403 = &l_399;
    int32_t *l_404 = &p_681->g_6;
    int32_t *l_405 = (void*)0;
    int32_t *l_406 = &l_399;
    int32_t *l_407 = (void*)0;
    int32_t *l_408 = &l_399;
    int32_t *l_409[1];
    int16_t l_410[6];
    uint8_t l_411 = 251UL;
    uint32_t l_440 = 4294967295UL;
    VECTOR(int64_t, 16) l_444 = (VECTOR(int64_t, 16))(0x287FF15702E9836BL, (VECTOR(int64_t, 4))(0x287FF15702E9836BL, (VECTOR(int64_t, 2))(0x287FF15702E9836BL, 9L), 9L), 9L, 0x287FF15702E9836BL, 9L, (VECTOR(int64_t, 2))(0x287FF15702E9836BL, 9L), (VECTOR(int64_t, 2))(0x287FF15702E9836BL, 9L), 0x287FF15702E9836BL, 9L, 0x287FF15702E9836BL, 9L);
    VECTOR(uint16_t, 2) l_468 = (VECTOR(uint16_t, 2))(0x690CL, 0xD814L);
    uint64_t *l_480 = &p_681->g_354.f4;
    int i;
    for (i = 0; i < 1; i++)
        l_409[i] = (void*)0;
    for (i = 0; i < 6; i++)
        l_410[i] = 1L;
    (*p_681->g_7) = (safe_lshift_func_int8_t_s_u(((**p_681->g_355) , l_390), 3));
    --l_411;
    for (p_681->g_103 = 0; (p_681->g_103 < 21); p_681->g_103 = safe_add_func_int16_t_s_s(p_681->g_103, 5))
    { /* block id: 126 */
        uint16_t l_420 = 65534UL;
        int8_t l_437 = 0x6DL;
        int32_t l_439 = 0x0643521DL;
        VECTOR(int32_t, 2) l_464 = (VECTOR(int32_t, 2))(0L, 0x3F9DE6CCL);
        uint64_t *l_482 = &p_681->g_159;
        struct S0 **l_485[6][10][4] = {{{&p_681->g_356,&p_681->g_356,&p_681->g_356,&p_681->g_356},{&p_681->g_356,&p_681->g_356,&p_681->g_356,&p_681->g_356},{&p_681->g_356,&p_681->g_356,&p_681->g_356,&p_681->g_356},{&p_681->g_356,&p_681->g_356,&p_681->g_356,&p_681->g_356},{&p_681->g_356,&p_681->g_356,&p_681->g_356,&p_681->g_356},{&p_681->g_356,&p_681->g_356,&p_681->g_356,&p_681->g_356},{&p_681->g_356,&p_681->g_356,&p_681->g_356,&p_681->g_356},{&p_681->g_356,&p_681->g_356,&p_681->g_356,&p_681->g_356},{&p_681->g_356,&p_681->g_356,&p_681->g_356,&p_681->g_356},{&p_681->g_356,&p_681->g_356,&p_681->g_356,&p_681->g_356}},{{&p_681->g_356,&p_681->g_356,&p_681->g_356,&p_681->g_356},{&p_681->g_356,&p_681->g_356,&p_681->g_356,&p_681->g_356},{&p_681->g_356,&p_681->g_356,&p_681->g_356,&p_681->g_356},{&p_681->g_356,&p_681->g_356,&p_681->g_356,&p_681->g_356},{&p_681->g_356,&p_681->g_356,&p_681->g_356,&p_681->g_356},{&p_681->g_356,&p_681->g_356,&p_681->g_356,&p_681->g_356},{&p_681->g_356,&p_681->g_356,&p_681->g_356,&p_681->g_356},{&p_681->g_356,&p_681->g_356,&p_681->g_356,&p_681->g_356},{&p_681->g_356,&p_681->g_356,&p_681->g_356,&p_681->g_356},{&p_681->g_356,&p_681->g_356,&p_681->g_356,&p_681->g_356}},{{&p_681->g_356,&p_681->g_356,&p_681->g_356,&p_681->g_356},{&p_681->g_356,&p_681->g_356,&p_681->g_356,&p_681->g_356},{&p_681->g_356,&p_681->g_356,&p_681->g_356,&p_681->g_356},{&p_681->g_356,&p_681->g_356,&p_681->g_356,&p_681->g_356},{&p_681->g_356,&p_681->g_356,&p_681->g_356,&p_681->g_356},{&p_681->g_356,&p_681->g_356,&p_681->g_356,&p_681->g_356},{&p_681->g_356,&p_681->g_356,&p_681->g_356,&p_681->g_356},{&p_681->g_356,&p_681->g_356,&p_681->g_356,&p_681->g_356},{&p_681->g_356,&p_681->g_356,&p_681->g_356,&p_681->g_356},{&p_681->g_356,&p_681->g_356,&p_681->g_356,&p_681->g_356}},{{&p_681->g_356,&p_681->g_356,&p_681->g_356,&p_681->g_356},{&p_681->g_356,&p_681->g_356,&p_681->g_356,&p_681->g_356},{&p_681->g_356,&p_681->g_356,&p_681->g_356,&p_681->g_356},{&p_681->g_356,&p_681->g_356,&p_681->g_356,&p_681->g_356},{&p_681->g_356,&p_681->g_356,&p_681->g_356,&p_681->g_356},{&p_681->g_356,&p_681->g_356,&p_681->g_356,&p_681->g_356},{&p_681->g_356,&p_681->g_356,&p_681->g_356,&p_681->g_356},{&p_681->g_356,&p_681->g_356,&p_681->g_356,&p_681->g_356},{&p_681->g_356,&p_681->g_356,&p_681->g_356,&p_681->g_356},{&p_681->g_356,&p_681->g_356,&p_681->g_356,&p_681->g_356}},{{&p_681->g_356,&p_681->g_356,&p_681->g_356,&p_681->g_356},{&p_681->g_356,&p_681->g_356,&p_681->g_356,&p_681->g_356},{&p_681->g_356,&p_681->g_356,&p_681->g_356,&p_681->g_356},{&p_681->g_356,&p_681->g_356,&p_681->g_356,&p_681->g_356},{&p_681->g_356,&p_681->g_356,&p_681->g_356,&p_681->g_356},{&p_681->g_356,&p_681->g_356,&p_681->g_356,&p_681->g_356},{&p_681->g_356,&p_681->g_356,&p_681->g_356,&p_681->g_356},{&p_681->g_356,&p_681->g_356,&p_681->g_356,&p_681->g_356},{&p_681->g_356,&p_681->g_356,&p_681->g_356,&p_681->g_356},{&p_681->g_356,&p_681->g_356,&p_681->g_356,&p_681->g_356}},{{&p_681->g_356,&p_681->g_356,&p_681->g_356,&p_681->g_356},{&p_681->g_356,&p_681->g_356,&p_681->g_356,&p_681->g_356},{&p_681->g_356,&p_681->g_356,&p_681->g_356,&p_681->g_356},{&p_681->g_356,&p_681->g_356,&p_681->g_356,&p_681->g_356},{&p_681->g_356,&p_681->g_356,&p_681->g_356,&p_681->g_356},{&p_681->g_356,&p_681->g_356,&p_681->g_356,&p_681->g_356},{&p_681->g_356,&p_681->g_356,&p_681->g_356,&p_681->g_356},{&p_681->g_356,&p_681->g_356,&p_681->g_356,&p_681->g_356},{&p_681->g_356,&p_681->g_356,&p_681->g_356,&p_681->g_356},{&p_681->g_356,&p_681->g_356,&p_681->g_356,&p_681->g_356}}};
        int32_t l_488 = 0x273A35BFL;
        int i, j, k;
        for (p_54 = (-14); (p_54 <= 42); p_54++)
        { /* block id: 129 */
            uint16_t *l_421 = (void*)0;
            uint16_t *l_422 = &p_681->g_106;
            uint32_t *l_436[3][7];
            uint64_t *l_438[3][1][7] = {{{&p_681->g_354.f4,(void*)0,(void*)0,&p_681->g_354.f4,&p_681->g_354.f4,(void*)0,(void*)0}},{{&p_681->g_354.f4,(void*)0,(void*)0,&p_681->g_354.f4,&p_681->g_354.f4,(void*)0,(void*)0}},{{&p_681->g_354.f4,(void*)0,(void*)0,&p_681->g_354.f4,&p_681->g_354.f4,(void*)0,(void*)0}}};
            int32_t l_447 = 0x38E2E1E2L;
            VECTOR(int32_t, 4) l_448 = (VECTOR(int32_t, 4))((-2L), (VECTOR(int32_t, 2))((-2L), 0x7B5075E8L), 0x7B5075E8L);
            int32_t l_449 = 7L;
            uint8_t **l_463 = (void*)0;
            int32_t **l_467 = &l_398;
            VECTOR(int16_t, 16) l_473 = (VECTOR(int16_t, 16))(5L, (VECTOR(int16_t, 4))(5L, (VECTOR(int16_t, 2))(5L, 4L), 4L), 4L, 5L, 4L, (VECTOR(int16_t, 2))(5L, 4L), (VECTOR(int16_t, 2))(5L, 4L), 5L, 4L, 5L, 4L);
            VECTOR(int32_t, 2) l_474 = (VECTOR(int32_t, 2))((-2L), (-1L));
            int8_t l_484[9];
            int64_t l_486 = (-1L);
            int i, j, k;
            for (i = 0; i < 3; i++)
            {
                for (j = 0; j < 7; j++)
                    l_436[i][j] = &p_681->g_354.f7;
            }
            for (i = 0; i < 9; i++)
                l_484[i] = 0x5FL;
            (*l_401) |= (((safe_mod_func_uint16_t_u_u(((*l_422) = l_420), (safe_sub_func_uint16_t_u_u((((8UL != (l_420 ^ (safe_lshift_func_uint16_t_u_u((safe_sub_func_int16_t_s_s(p_681->g_354.f2, p_52)), (safe_lshift_func_int16_t_s_s(((((l_439 = (safe_div_func_int32_t_s_s((((VECTOR(int64_t, 8))(p_681->g_433.yxxxxxxy)).s1 ^ 1L), ((VECTOR(uint32_t, 4))(4294967295UL, (p_681->g_215 |= ((((*l_397) &= (safe_rshift_func_int8_t_s_s(p_681->g_354.f0, 6))) || 0x20F5AFC8L) && l_437)), 4294967286UL, 4294967295UL)).y))) || 1UL) == 4L) | 0x2E8E6249232F920EL), 14)))))) ^ p_54) >= l_440), 0x600DL)))) <= p_54) >= 0x56L);
            l_449 |= (l_448.z |= (((*l_401) = ((((VECTOR(uint8_t, 4))(p_681->g_271.f0, p_681->l_comm_values[(safe_mod_func_uint32_t_u_u(p_681->tid, 14))], 0xDDL, 0x03L)).w & ((safe_add_func_int8_t_s_s(p_681->g_207.f4, p_681->g_354.f2)) & p_681->g_196)) , ((p_681->g_194 , ((VECTOR(int64_t, 16))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))(p_681->g_443.zz)), ((VECTOR(int64_t, 4))(max(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(min(((VECTOR(int64_t, 2))(l_444.sea)).xyxy, (int64_t)(((**p_681->g_9) >= 0xB789913DL) | ((((safe_sub_func_uint16_t_u_u(((*l_404) || FAKE_DIVERGE(p_681->group_1_offset, get_group_id(1), 10)), GROUP_DIVERGE(2, 1))) <= (*l_403)) ^ p_54) | 0L))))).yxwyywww)).s0060026520564454)).s1841, ((VECTOR(int64_t, 4))(0x2B5A8659E7355782L))))), 0x6BBCBE6E71B8E01AL, 0x73729C1D12C8AFFDL)).s7433252711113472)).s9b)), 0x7BBD9EE1A3B281C6L, ((VECTOR(int64_t, 2))(3L)), ((VECTOR(int64_t, 4))(0x46BD21A556371C4FL)), 1L, l_447, 0x16F87D2E75FB02DDL, ((VECTOR(int64_t, 2))((-1L))), 1L, 0x50903981F27884B7L)).sb) > p_681->g_374.y))) && 0x5C40B07FL));
            for (l_440 = (-4); (l_440 == 5); l_440 = safe_add_func_uint64_t_u_u(l_440, 1))
            { /* block id: 140 */
                uint8_t *l_461 = &p_681->g_103;
                uint8_t **l_460[4][2][3] = {{{&l_461,(void*)0,&l_461},{&l_461,(void*)0,&l_461}},{{&l_461,(void*)0,&l_461},{&l_461,(void*)0,&l_461}},{{&l_461,(void*)0,&l_461},{&l_461,(void*)0,&l_461}},{{&l_461,(void*)0,&l_461},{&l_461,(void*)0,&l_461}}};
                int32_t *l_477 = (void*)0;
                uint64_t *l_481 = &p_681->g_159;
                uint64_t **l_483 = &l_482;
                uint64_t l_487 = 0x65B43DF33CB52B5FL;
                int i, j, k;
                for (l_390 = (-26); (l_390 != 47); l_390 = safe_add_func_uint8_t_u_u(l_390, 2))
                { /* block id: 143 */
                    if ((atomic_inc(&p_681->g_atomic_input[25 * get_linear_group_id() + 11]) == 6))
                    { /* block id: 145 */
                        struct S1 l_454 = {7UL,2L,0x5D8D1942L,0x1EA7L,0x89A5L,0UL,0x1923C483L};/* VOLATILE GLOBAL l_454 */
                        struct S1 l_455 = {1UL,0x298A893DL,0L,1L,3UL,1UL,0x46774A5BL};/* VOLATILE GLOBAL l_455 */
                        l_455 = l_454;
                        unsigned int result = 0;
                        result += l_454.f0;
                        result += l_454.f1;
                        result += l_454.f2;
                        result += l_454.f3;
                        result += l_454.f4;
                        result += l_454.f5;
                        result += l_454.f6;
                        result += l_455.f0;
                        result += l_455.f1;
                        result += l_455.f2;
                        result += l_455.f3;
                        result += l_455.f4;
                        result += l_455.f5;
                        result += l_455.f6;
                        atomic_add(&p_681->g_special_values[25 * get_linear_group_id() + 11], result);
                    }
                    else
                    { /* block id: 147 */
                        (1 + 1);
                    }
                    for (l_439 = 0; (l_439 == (-8)); l_439 = safe_sub_func_int16_t_s_s(l_439, 9))
                    { /* block id: 152 */
                        uint8_t ***l_462[9] = {&l_460[0][0][2],(void*)0,&l_460[0][0][2],&l_460[0][0][2],(void*)0,&l_460[0][0][2],&l_460[0][0][2],(void*)0,&l_460[0][0][2]};
                        int i;
                        (*l_406) = (safe_div_func_uint32_t_u_u((l_460[2][1][1] != (l_463 = p_681->g_302)), (*p_681->g_7)));
                        (*l_393) = ((VECTOR(int32_t, 4))(l_464.yyyx)).z;
                        if ((**p_50))
                            break;
                        if (l_464.y)
                            break;
                    }
                }
                (*l_403) &= (FAKE_DIVERGE(p_681->local_1_offset, get_local_id(1), 10) >= (l_467 != &p_53));
                (*l_403) |= ((((VECTOR(uint16_t, 2))(clz(((VECTOR(uint16_t, 4))(l_468.yxyx)).lo))).hi >= ((((((safe_sub_func_uint32_t_u_u((p_681->g_215 = (safe_add_func_int16_t_s_s(((VECTOR(int16_t, 4))(l_473.s6dfc)).x, ((*l_422) = (p_54 < (((VECTOR(int32_t, 4))(l_474.xyyy)).y && (p_54 == ((0L & (p_681->g_179.w &= (((*p_681->g_7) = (l_477 == (void*)0)) || (l_439 > ((((((safe_mul_func_int8_t_s_s(((l_480 != ((((l_481 != ((*l_483) = l_482)) , p_681->g_354.f7) <= 1L) , l_482)) , 6L), p_681->g_271.f4)) > l_437) == l_484[4]) , (void*)0) == l_485[2][3][1]) ^ p_681->g_354.f4))))) == 255UL)))))))), l_486)) , (**l_467)) ^ l_487) < p_681->g_196) ^ 0L) & l_488)) >= 0x3D2565CFL);
            }
        }
        return &p_681->g_7;
    }
    (*l_403) ^= (*l_397);
    return &p_681->g_7;
}


/* ------------------------------------------ */
/* 
 * reads : p_681->g_comm_values p_681->l_comm_values p_681->g_7 p_681->g_6 p_681->g_9 p_681->g_309.f3 p_681->g_196 p_681->g_97 p_681->g_127 p_681->g_207.f0 p_681->g_302 p_681->g_179 p_681->g_103 p_681->g_207.f3 p_681->g_309.f6 p_681->g_355 p_681->g_360 p_681->g_159 p_681->g_374 p_681->g_376 p_681->g_106 p_681->g_194 p_681->g_354 p_681->g_356
 * writes: p_681->g_6 p_681->g_196 p_681->g_179 p_681->g_103 p_681->g_207.f3 p_681->g_356 p_681->g_194 p_681->g_354
 */
int32_t ** func_55(uint32_t  p_56, int32_t  p_57, int64_t  p_58, struct S2 * p_681)
{ /* block id: 11 */
    int64_t l_76 = 1L;
    VECTOR(int32_t, 2) l_83 = (VECTOR(int32_t, 2))(0x5FC4B74EL, 1L);
    int32_t *l_85[3][9] = {{&p_681->g_6,&p_681->g_6,&p_681->g_6,(void*)0,(void*)0,(void*)0,&p_681->g_6,&p_681->g_6,&p_681->g_6},{&p_681->g_6,&p_681->g_6,&p_681->g_6,(void*)0,(void*)0,(void*)0,&p_681->g_6,&p_681->g_6,&p_681->g_6},{&p_681->g_6,&p_681->g_6,&p_681->g_6,(void*)0,(void*)0,(void*)0,&p_681->g_6,&p_681->g_6,&p_681->g_6}};
    int32_t *l_107 = (void*)0;
    VECTOR(int8_t, 8) l_243 = (VECTOR(int8_t, 8))(0x3FL, (VECTOR(int8_t, 4))(0x3FL, (VECTOR(int8_t, 2))(0x3FL, 0x37L), 0x37L), 0x37L, 0x3FL, 0x37L);
    int32_t l_253 = 0x6DE75B74L;
    int32_t **l_256 = &l_85[1][5];
    int32_t ***l_255 = &l_256;
    VECTOR(int16_t, 2) l_263 = (VECTOR(int16_t, 2))(1L, 0x7328L);
    uint8_t **l_303 = (void*)0;
    uint32_t *l_308 = (void*)0;
    uint8_t l_328[10][4] = {{0xBEL,0x70L,0UL,255UL},{0xBEL,0x70L,0UL,255UL},{0xBEL,0x70L,0UL,255UL},{0xBEL,0x70L,0UL,255UL},{0xBEL,0x70L,0UL,255UL},{0xBEL,0x70L,0UL,255UL},{0xBEL,0x70L,0UL,255UL},{0xBEL,0x70L,0UL,255UL},{0xBEL,0x70L,0UL,255UL},{0xBEL,0x70L,0UL,255UL}};
    int8_t *l_330 = (void*)0;
    uint16_t l_352 = 65535UL;
    struct S0 *l_353 = &p_681->g_354;
    VECTOR(uint64_t, 16) l_378 = (VECTOR(uint64_t, 16))(18446744073709551614UL, (VECTOR(uint64_t, 4))(18446744073709551614UL, (VECTOR(uint64_t, 2))(18446744073709551614UL, 18446744073709551606UL), 18446744073709551606UL), 18446744073709551606UL, 18446744073709551614UL, 18446744073709551606UL, (VECTOR(uint64_t, 2))(18446744073709551614UL, 18446744073709551606UL), (VECTOR(uint64_t, 2))(18446744073709551614UL, 18446744073709551606UL), 18446744073709551614UL, 18446744073709551606UL, 18446744073709551614UL, 18446744073709551606UL);
    int i, j;
    if (((safe_mod_func_uint32_t_u_u(p_681->g_comm_values[p_681->tid], (safe_rshift_func_int8_t_s_u((safe_sub_func_uint8_t_u_u((safe_lshift_func_int16_t_s_u((safe_sub_func_int8_t_s_s(((safe_sub_func_int16_t_s_s((safe_mod_func_int32_t_s_s(l_76, p_56)), ((p_681->l_comm_values[(safe_mod_func_uint32_t_u_u(p_681->tid, 14))] & p_56) | 0x1B61F286L))) < (safe_lshift_func_uint16_t_u_u(0UL, 2))), (safe_lshift_func_uint8_t_u_s(l_76, 1)))), (safe_rshift_func_int16_t_s_s(8L, 7)))), l_76)), 4)))) | p_56))
    { /* block id: 12 */
        int32_t *l_84 = (void*)0;
        uint8_t *l_102[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        uint16_t *l_118 = &p_681->g_106;
        uint16_t **l_117 = &l_118;
        int32_t l_129 = 0x0C4EF542L;
        uint16_t l_162 = 0UL;
        VECTOR(uint8_t, 8) l_180 = (VECTOR(uint8_t, 8))(0xA0L, (VECTOR(uint8_t, 4))(0xA0L, (VECTOR(uint8_t, 2))(0xA0L, 0UL), 0UL), 0UL, 0xA0L, 0UL);
        VECTOR(int32_t, 2) l_201 = (VECTOR(int32_t, 2))(0x6C62DEA1L, 1L);
        VECTOR(uint32_t, 2) l_211 = (VECTOR(uint32_t, 2))(0x329A422DL, 4294967287UL);
        VECTOR(uint32_t, 16) l_212 = (VECTOR(uint32_t, 16))(0xCE8AD497L, (VECTOR(uint32_t, 4))(0xCE8AD497L, (VECTOR(uint32_t, 2))(0xCE8AD497L, 0UL), 0UL), 0UL, 0xCE8AD497L, 0UL, (VECTOR(uint32_t, 2))(0xCE8AD497L, 0UL), (VECTOR(uint32_t, 2))(0xCE8AD497L, 0UL), 0xCE8AD497L, 0UL, 0xCE8AD497L, 0UL);
        VECTOR(int8_t, 8) l_242 = (VECTOR(int8_t, 8))(0x7FL, (VECTOR(int8_t, 4))(0x7FL, (VECTOR(int8_t, 2))(0x7FL, 0x3FL), 0x3FL), 0x3FL, 0x7FL, 0x3FL);
        int8_t l_260[2];
        int32_t **l_267 = &l_84;
        int32_t l_281 = 0x0945477DL;
        VECTOR(uint32_t, 2) l_306 = (VECTOR(uint32_t, 2))(0x3B5A4707L, 0x5D227EE7L);
        int i;
        for (i = 0; i < 2; i++)
            l_260[i] = 0x5DL;
        (*p_681->g_7) = ((VECTOR(int32_t, 2))(l_83.yy)).hi;
        l_85[1][4] = l_84;
        (*p_681->g_7) ^= p_57;
        for (p_57 = 0; (p_57 > (-18)); p_57--)
        { /* block id: 18 */
            VECTOR(uint32_t, 8) l_90 = (VECTOR(uint32_t, 8))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 0x473CB3F0L), 0x473CB3F0L), 0x473CB3F0L, 4294967295UL, 0x473CB3F0L);
            int32_t **l_91 = &l_85[1][4];
            uint8_t *l_96 = &p_681->g_97;
            uint16_t *l_104 = (void*)0;
            uint16_t *l_105 = &p_681->g_106;
            uint32_t *l_108 = (void*)0;
            int32_t **l_125[4][8] = {{&l_107,&l_107,&p_681->g_7,&l_107,&l_85[1][4],&l_84,(void*)0,(void*)0},{&l_107,&l_107,&p_681->g_7,&l_107,&l_85[1][4],&l_84,(void*)0,(void*)0},{&l_107,&l_107,&p_681->g_7,&l_107,&l_85[1][4],&l_84,(void*)0,(void*)0},{&l_107,&l_107,&p_681->g_7,&l_107,&l_85[1][4],&l_84,(void*)0,(void*)0}};
            VECTOR(int16_t, 8) l_206 = (VECTOR(int16_t, 8))(5L, (VECTOR(int16_t, 4))(5L, (VECTOR(int16_t, 2))(5L, 0L), 0L), 0L, 5L, 0L);
            VECTOR(int8_t, 8) l_244 = (VECTOR(int8_t, 8))(0x47L, (VECTOR(int8_t, 4))(0x47L, (VECTOR(int8_t, 2))(0x47L, 0x61L), 0x61L), 0x61L, 0x47L, 0x61L);
            uint16_t l_266 = 0xFCE6L;
            VECTOR(int16_t, 4) l_269 = (VECTOR(int16_t, 4))(0x61E5L, (VECTOR(int16_t, 2))(0x61E5L, 0x5034L), 0x5034L);
            uint8_t l_310 = 0x63L;
            uint32_t l_327[9][8][3] = {{{5UL,0xE1F1E102L,0xB061BDACL},{5UL,0xE1F1E102L,0xB061BDACL},{5UL,0xE1F1E102L,0xB061BDACL},{5UL,0xE1F1E102L,0xB061BDACL},{5UL,0xE1F1E102L,0xB061BDACL},{5UL,0xE1F1E102L,0xB061BDACL},{5UL,0xE1F1E102L,0xB061BDACL},{5UL,0xE1F1E102L,0xB061BDACL}},{{5UL,0xE1F1E102L,0xB061BDACL},{5UL,0xE1F1E102L,0xB061BDACL},{5UL,0xE1F1E102L,0xB061BDACL},{5UL,0xE1F1E102L,0xB061BDACL},{5UL,0xE1F1E102L,0xB061BDACL},{5UL,0xE1F1E102L,0xB061BDACL},{5UL,0xE1F1E102L,0xB061BDACL},{5UL,0xE1F1E102L,0xB061BDACL}},{{5UL,0xE1F1E102L,0xB061BDACL},{5UL,0xE1F1E102L,0xB061BDACL},{5UL,0xE1F1E102L,0xB061BDACL},{5UL,0xE1F1E102L,0xB061BDACL},{5UL,0xE1F1E102L,0xB061BDACL},{5UL,0xE1F1E102L,0xB061BDACL},{5UL,0xE1F1E102L,0xB061BDACL},{5UL,0xE1F1E102L,0xB061BDACL}},{{5UL,0xE1F1E102L,0xB061BDACL},{5UL,0xE1F1E102L,0xB061BDACL},{5UL,0xE1F1E102L,0xB061BDACL},{5UL,0xE1F1E102L,0xB061BDACL},{5UL,0xE1F1E102L,0xB061BDACL},{5UL,0xE1F1E102L,0xB061BDACL},{5UL,0xE1F1E102L,0xB061BDACL},{5UL,0xE1F1E102L,0xB061BDACL}},{{5UL,0xE1F1E102L,0xB061BDACL},{5UL,0xE1F1E102L,0xB061BDACL},{5UL,0xE1F1E102L,0xB061BDACL},{5UL,0xE1F1E102L,0xB061BDACL},{5UL,0xE1F1E102L,0xB061BDACL},{5UL,0xE1F1E102L,0xB061BDACL},{5UL,0xE1F1E102L,0xB061BDACL},{5UL,0xE1F1E102L,0xB061BDACL}},{{5UL,0xE1F1E102L,0xB061BDACL},{5UL,0xE1F1E102L,0xB061BDACL},{5UL,0xE1F1E102L,0xB061BDACL},{5UL,0xE1F1E102L,0xB061BDACL},{5UL,0xE1F1E102L,0xB061BDACL},{5UL,0xE1F1E102L,0xB061BDACL},{5UL,0xE1F1E102L,0xB061BDACL},{5UL,0xE1F1E102L,0xB061BDACL}},{{5UL,0xE1F1E102L,0xB061BDACL},{5UL,0xE1F1E102L,0xB061BDACL},{5UL,0xE1F1E102L,0xB061BDACL},{5UL,0xE1F1E102L,0xB061BDACL},{5UL,0xE1F1E102L,0xB061BDACL},{5UL,0xE1F1E102L,0xB061BDACL},{5UL,0xE1F1E102L,0xB061BDACL},{5UL,0xE1F1E102L,0xB061BDACL}},{{5UL,0xE1F1E102L,0xB061BDACL},{5UL,0xE1F1E102L,0xB061BDACL},{5UL,0xE1F1E102L,0xB061BDACL},{5UL,0xE1F1E102L,0xB061BDACL},{5UL,0xE1F1E102L,0xB061BDACL},{5UL,0xE1F1E102L,0xB061BDACL},{5UL,0xE1F1E102L,0xB061BDACL},{5UL,0xE1F1E102L,0xB061BDACL}},{{5UL,0xE1F1E102L,0xB061BDACL},{5UL,0xE1F1E102L,0xB061BDACL},{5UL,0xE1F1E102L,0xB061BDACL},{5UL,0xE1F1E102L,0xB061BDACL},{5UL,0xE1F1E102L,0xB061BDACL},{5UL,0xE1F1E102L,0xB061BDACL},{5UL,0xE1F1E102L,0xB061BDACL},{5UL,0xE1F1E102L,0xB061BDACL}}};
            int i, j, k;
            (1 + 1);
        }
    }
    else
    { /* block id: 99 */
        int32_t *l_329[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        uint32_t *l_331 = &p_681->g_196;
        VECTOR(int16_t, 2) l_332 = (VECTOR(int16_t, 2))(8L, (-1L));
        VECTOR(int16_t, 16) l_337 = (VECTOR(int16_t, 16))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 6L), 6L), 6L, (-1L), 6L, (VECTOR(int16_t, 2))((-1L), 6L), (VECTOR(int16_t, 2))((-1L), 6L), (-1L), 6L, (-1L), 6L);
        uint8_t *l_344 = (void*)0;
        uint8_t *l_345 = (void*)0;
        uint8_t *l_346[10];
        uint8_t ***l_351 = &l_303;
        VECTOR(int8_t, 2) l_373 = (VECTOR(int8_t, 2))(0L, 1L);
        uint32_t l_384 = 0UL;
        int i;
        for (i = 0; i < 10; i++)
            l_346[i] = &p_681->g_103;
        l_329[5] = (l_328[6][3] , (*p_681->g_9));
        (*p_681->g_7) ^= ((l_330 != (void*)0) | ((((*l_331) ^= p_681->g_309.f3) , ((p_681->g_97 , (((VECTOR(int16_t, 8))(l_332.yyyyyyyx)).s7 > (p_56 > (+p_56)))) >= (p_681->g_127.y && (safe_mul_func_uint8_t_u_u(255UL, 5UL))))) >= p_681->g_207.f0));
        if ((((((safe_add_func_uint8_t_u_u(l_337.s9, 1L)) , (+((safe_rshift_func_uint8_t_u_u((4294967295UL | (((void*)0 == p_681->g_302) | FAKE_DIVERGE(p_681->local_1_offset, get_local_id(1), 10))), (safe_div_func_uint8_t_u_u((p_681->g_179.z ^= GROUP_DIVERGE(0, 1)), p_58)))) > (&p_681->g_7 != &l_329[5])))) , (p_681->g_103++)) > (((p_681->g_207.f3 &= (safe_rshift_func_int16_t_s_u((l_351 == (void*)0), l_352))) < p_58) || p_681->g_207.f3)) == p_681->g_309.f6))
        { /* block id: 106 */
            int32_t **l_357 = &l_85[1][4];
            (*p_681->g_355) = l_353;
            atomic_sub(&p_681->g_atomic_reduction[get_linear_group_id()], (*p_681->g_7) + get_linear_global_id());
            barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
            if (get_linear_local_id() == 0)
                p_681->v_collective += p_681->g_atomic_reduction[get_linear_group_id()];
            barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
            return &p_681->g_7;
        }
        else
        { /* block id: 110 */
            VECTOR(int64_t, 8) l_365 = (VECTOR(int64_t, 8))(4L, (VECTOR(int64_t, 4))(4L, (VECTOR(int64_t, 2))(4L, 0x769C28889A2521D7L), 0x769C28889A2521D7L), 0x769C28889A2521D7L, 4L, 0x769C28889A2521D7L);
            int64_t *l_366 = (void*)0;
            int64_t *l_367 = (void*)0;
            int64_t *l_368 = &l_76;
            VECTOR(int8_t, 4) l_375 = (VECTOR(int8_t, 4))(0x53L, (VECTOR(int8_t, 2))(0x53L, (-1L)), (-1L));
            VECTOR(int8_t, 8) l_377 = (VECTOR(int8_t, 8))(0x1EL, (VECTOR(int8_t, 4))(0x1EL, (VECTOR(int8_t, 2))(0x1EL, 0L), 0L), 0L, 0x1EL, 0L);
            int32_t l_385 = 0L;
            int i;
            l_385 &= ((0x3DA8L <= (safe_sub_func_uint32_t_u_u(((VECTOR(uint32_t, 4))(p_681->g_360.sc95d)).z, (safe_rshift_func_int8_t_s_s((safe_div_func_int64_t_s_s(((VECTOR(int64_t, 8))(min(((VECTOR(int64_t, 2))(min(((VECTOR(int64_t, 8))(l_365.s63641004)).s62, (int64_t)0x34D226501C975E57L))).yyxyxxyy, (int64_t)((*l_368) = 0x043755C66E6F554CL)))).s2, (p_681->g_159 , (safe_mod_func_int16_t_s_s(l_365.s4, (+(((safe_div_func_int8_t_s_s(((VECTOR(int8_t, 2))(mul_hi(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(l_373.yxxxxyxx)), (-1L), ((VECTOR(int8_t, 4))(add_sat(((VECTOR(int8_t, 8))(sub_sat(((VECTOR(int8_t, 2))(0x1EL, 0L)).yyyxxxyy, ((VECTOR(int8_t, 8))(0L, ((VECTOR(int8_t, 4))(sub_sat(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 4))(p_681->g_374.xyxy)))), ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 8))(l_375.zxxzyzyw)))).s4670036136642144)).s37)))), ((VECTOR(int8_t, 4))(mad_sat(((VECTOR(int8_t, 4))(p_681->g_376.s0622)), ((VECTOR(int8_t, 4))(sub_sat(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 16))(rhadd(((VECTOR(int8_t, 2))(l_377.s34)).xxyyxxxyxyyxxyyy, ((VECTOR(int8_t, 16))((((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))(0x6712F5CC818CA980L, ((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 4))(l_378.sba44)).xzxyxwxxwxzywzxw)).see)), GROUP_DIVERGE(0, 1), 1UL, 0xD0CDF8DF82B3E60FL, 0xA380BEEFADD971DBL, 18446744073709551611UL)).s5054134742453151)).s0 , (p_58 <= (safe_unary_minus_func_int8_t_s((!(p_681->g_374.y , ((safe_mod_func_int32_t_s_s((*p_681->g_7), (safe_rshift_func_uint16_t_u_u((p_681->g_374.y , p_681->g_106), l_377.s4)))) || p_58))))))), ((VECTOR(int8_t, 8))(9L)), l_384, p_56, p_681->g_179.z, ((VECTOR(int8_t, 4))(0x7FL))))))).s13)).yxxx, ((VECTOR(int8_t, 4))(1L))))), ((VECTOR(int8_t, 4))(1L))))), ((VECTOR(int8_t, 2))(0x74L)), ((VECTOR(int8_t, 4))(3L)), p_681->g_159, ((VECTOR(int8_t, 2))(0L)), 6L)).s1c9a))), p_681->g_194, (-8L), 3L))))).lo, ((VECTOR(int8_t, 4))(2L))))), ((VECTOR(int8_t, 2))(0x4CL)), (-3L))).sfb, ((VECTOR(int8_t, 2))(0x22L))))).hi, 6L)) < p_57) && 0x1B928ACAD7C5CC24L))))))), 6))))) || p_58);
            for (p_681->g_194 = 24; (p_681->g_194 > (-6)); --p_681->g_194)
            { /* block id: 115 */
                (*p_681->g_356) = (*l_353);
            }
        }
    }
    return &p_681->g_7;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t  func_59(uint32_t * p_60, struct S2 * p_681)
{ /* block id: 9 */
    VECTOR(uint16_t, 8) l_61 = (VECTOR(uint16_t, 8))(0x3F0DL, (VECTOR(uint16_t, 4))(0x3F0DL, (VECTOR(uint16_t, 2))(0x3F0DL, 65535UL), 65535UL), 65535UL, 0x3F0DL, 65535UL);
    int i;
    return l_61.s6;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global volatile int *g_atomic_reduction, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    __local int64_t l_comm_values[14];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 14; i++)
            l_comm_values[i] = 1;
    struct S2 c_682;
    struct S2* p_681 = &c_682;
    struct S2 c_683 = {
        0L, // p_681->g_6
        &p_681->g_6, // p_681->g_7
        {{&p_681->g_7,&p_681->g_7,&p_681->g_7,&p_681->g_7},{&p_681->g_7,&p_681->g_7,&p_681->g_7,&p_681->g_7},{&p_681->g_7,&p_681->g_7,&p_681->g_7,&p_681->g_7},{&p_681->g_7,&p_681->g_7,&p_681->g_7,&p_681->g_7},{&p_681->g_7,&p_681->g_7,&p_681->g_7,&p_681->g_7},{&p_681->g_7,&p_681->g_7,&p_681->g_7,&p_681->g_7},{&p_681->g_7,&p_681->g_7,&p_681->g_7,&p_681->g_7},{&p_681->g_7,&p_681->g_7,&p_681->g_7,&p_681->g_7},{&p_681->g_7,&p_681->g_7,&p_681->g_7,&p_681->g_7}}, // p_681->g_8
        &p_681->g_7, // p_681->g_9
        (VECTOR(uint32_t, 16))(5UL, (VECTOR(uint32_t, 4))(5UL, (VECTOR(uint32_t, 2))(5UL, 0UL), 0UL), 0UL, 5UL, 0UL, (VECTOR(uint32_t, 2))(5UL, 0UL), (VECTOR(uint32_t, 2))(5UL, 0UL), 5UL, 0UL, 5UL, 0UL), // p_681->g_11
        (-9L), // p_681->g_16
        0xDEL, // p_681->g_97
        0x81L, // p_681->g_103
        0x071EL, // p_681->g_106
        (VECTOR(uint16_t, 4))(0xF813L, (VECTOR(uint16_t, 2))(0xF813L, 65535UL), 65535UL), // p_681->g_127
        (VECTOR(uint16_t, 8))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 65530UL), 65530UL), 65530UL, 65535UL, 65530UL), // p_681->g_128
        0x2F7DB775658741FBL, // p_681->g_159
        0x1F9EL, // p_681->g_176
        (VECTOR(uint8_t, 4))(0xCEL, (VECTOR(uint8_t, 2))(0xCEL, 0UL), 0UL), // p_681->g_179
        0L, // p_681->g_194
        0xC96A0899L, // p_681->g_196
        {65526UL,0x261DAF29L,1L,0x546CL,0x458FL,0UL,4294967295UL}, // p_681->g_207
        (void*)0, // p_681->g_210
        &p_681->g_210, // p_681->g_209
        {{{&p_681->g_209,&p_681->g_209},{&p_681->g_209,&p_681->g_209},{&p_681->g_209,&p_681->g_209},{&p_681->g_209,&p_681->g_209},{&p_681->g_209,&p_681->g_209},{&p_681->g_209,&p_681->g_209},{&p_681->g_209,&p_681->g_209}},{{&p_681->g_209,&p_681->g_209},{&p_681->g_209,&p_681->g_209},{&p_681->g_209,&p_681->g_209},{&p_681->g_209,&p_681->g_209},{&p_681->g_209,&p_681->g_209},{&p_681->g_209,&p_681->g_209},{&p_681->g_209,&p_681->g_209}},{{&p_681->g_209,&p_681->g_209},{&p_681->g_209,&p_681->g_209},{&p_681->g_209,&p_681->g_209},{&p_681->g_209,&p_681->g_209},{&p_681->g_209,&p_681->g_209},{&p_681->g_209,&p_681->g_209},{&p_681->g_209,&p_681->g_209}},{{&p_681->g_209,&p_681->g_209},{&p_681->g_209,&p_681->g_209},{&p_681->g_209,&p_681->g_209},{&p_681->g_209,&p_681->g_209},{&p_681->g_209,&p_681->g_209},{&p_681->g_209,&p_681->g_209},{&p_681->g_209,&p_681->g_209}},{{&p_681->g_209,&p_681->g_209},{&p_681->g_209,&p_681->g_209},{&p_681->g_209,&p_681->g_209},{&p_681->g_209,&p_681->g_209},{&p_681->g_209,&p_681->g_209},{&p_681->g_209,&p_681->g_209},{&p_681->g_209,&p_681->g_209}},{{&p_681->g_209,&p_681->g_209},{&p_681->g_209,&p_681->g_209},{&p_681->g_209,&p_681->g_209},{&p_681->g_209,&p_681->g_209},{&p_681->g_209,&p_681->g_209},{&p_681->g_209,&p_681->g_209},{&p_681->g_209,&p_681->g_209}},{{&p_681->g_209,&p_681->g_209},{&p_681->g_209,&p_681->g_209},{&p_681->g_209,&p_681->g_209},{&p_681->g_209,&p_681->g_209},{&p_681->g_209,&p_681->g_209},{&p_681->g_209,&p_681->g_209},{&p_681->g_209,&p_681->g_209}},{{&p_681->g_209,&p_681->g_209},{&p_681->g_209,&p_681->g_209},{&p_681->g_209,&p_681->g_209},{&p_681->g_209,&p_681->g_209},{&p_681->g_209,&p_681->g_209},{&p_681->g_209,&p_681->g_209},{&p_681->g_209,&p_681->g_209}},{{&p_681->g_209,&p_681->g_209},{&p_681->g_209,&p_681->g_209},{&p_681->g_209,&p_681->g_209},{&p_681->g_209,&p_681->g_209},{&p_681->g_209,&p_681->g_209},{&p_681->g_209,&p_681->g_209},{&p_681->g_209,&p_681->g_209}},{{&p_681->g_209,&p_681->g_209},{&p_681->g_209,&p_681->g_209},{&p_681->g_209,&p_681->g_209},{&p_681->g_209,&p_681->g_209},{&p_681->g_209,&p_681->g_209},{&p_681->g_209,&p_681->g_209},{&p_681->g_209,&p_681->g_209}}}, // p_681->g_208
        (VECTOR(uint32_t, 4))(0x92B8F49EL, (VECTOR(uint32_t, 2))(0x92B8F49EL, 4294967289UL), 4294967289UL), // p_681->g_213
        4294967289UL, // p_681->g_215
        0xE024A966L, // p_681->g_226
        {0x1675L,-9L,0x081B6FD6L,0x01BEL,65535UL,6UL,0xD89F1C9DL}, // p_681->g_271
        (void*)0, // p_681->g_302
        {1UL,1UL,-1L,0x8C3DFA59L,0xA85423C135AEFB28L,0x6BE5C5FEL,0x9E61L,0x5859390DL,-1L}, // p_681->g_309
        {0x6559L,0xDCB62E0574C796D2L,0x58A77E30L,0xE88A51A1L,5UL,0x2C7D1E4DL,1UL,0x5D5B3C9DL,5L}, // p_681->g_354
        &p_681->g_354, // p_681->g_356
        &p_681->g_356, // p_681->g_355
        (VECTOR(uint32_t, 16))(0x6236AC3FL, (VECTOR(uint32_t, 4))(0x6236AC3FL, (VECTOR(uint32_t, 2))(0x6236AC3FL, 0UL), 0UL), 0UL, 0x6236AC3FL, 0UL, (VECTOR(uint32_t, 2))(0x6236AC3FL, 0UL), (VECTOR(uint32_t, 2))(0x6236AC3FL, 0UL), 0x6236AC3FL, 0UL, 0x6236AC3FL, 0UL), // p_681->g_360
        (VECTOR(int8_t, 2))(0x50L, (-1L)), // p_681->g_374
        (VECTOR(int8_t, 8))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, (-4L)), (-4L)), (-4L), 0L, (-4L)), // p_681->g_376
        (VECTOR(int64_t, 2))(1L, 1L), // p_681->g_433
        (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 0x7F7299C5FB5D7F6BL), 0x7F7299C5FB5D7F6BL), // p_681->g_443
        (VECTOR(uint64_t, 8))(0UL, (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 0xB88482BB972B8ABEL), 0xB88482BB972B8ABEL), 0xB88482BB972B8ABEL, 0UL, 0xB88482BB972B8ABEL), // p_681->g_491
        (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 1UL), 1UL), // p_681->g_492
        5L, // p_681->g_501
        (VECTOR(int32_t, 8))(7L, (VECTOR(int32_t, 4))(7L, (VECTOR(int32_t, 2))(7L, 6L), 6L), 6L, 7L, 6L), // p_681->g_504
        0xCEB0FC88L, // p_681->g_509
        0xBCC0779DL, // p_681->g_532
        0x44ADDD83L, // p_681->g_538
        (void*)0, // p_681->g_540
        &p_681->g_207, // p_681->g_546
        &p_681->g_546, // p_681->g_545
        &p_681->g_545, // p_681->g_544
        (-8L), // p_681->g_555
        (VECTOR(int8_t, 16))(0x19L, (VECTOR(int8_t, 4))(0x19L, (VECTOR(int8_t, 2))(0x19L, 0x1CL), 0x1CL), 0x1CL, 0x19L, 0x1CL, (VECTOR(int8_t, 2))(0x19L, 0x1CL), (VECTOR(int8_t, 2))(0x19L, 0x1CL), 0x19L, 0x1CL, 0x19L, 0x1CL), // p_681->g_570
        (VECTOR(uint8_t, 2))(255UL, 7UL), // p_681->g_595
        (VECTOR(uint8_t, 16))(0x0CL, (VECTOR(uint8_t, 4))(0x0CL, (VECTOR(uint8_t, 2))(0x0CL, 2UL), 2UL), 2UL, 0x0CL, 2UL, (VECTOR(uint8_t, 2))(0x0CL, 2UL), (VECTOR(uint8_t, 2))(0x0CL, 2UL), 0x0CL, 2UL, 0x0CL, 2UL), // p_681->g_596
        {&p_681->g_271.f5}, // p_681->g_597
        &p_681->g_545, // p_681->g_619
        (VECTOR(int16_t, 8))((-8L), (VECTOR(int16_t, 4))((-8L), (VECTOR(int16_t, 2))((-8L), 0L), 0L), 0L, (-8L), 0L), // p_681->g_657
        (VECTOR(int8_t, 2))(0L, (-1L)), // p_681->g_660
        {{0xAF2EL,0x10687FBCL,0L,0L,0xC49AL,18446744073709551611UL,0xE9056D98L},{0xAF2EL,0x10687FBCL,0L,0L,0xC49AL,18446744073709551611UL,0xE9056D98L},{0xAF2EL,0x10687FBCL,0L,0L,0xC49AL,18446744073709551611UL,0xE9056D98L},{0xAF2EL,0x10687FBCL,0L,0L,0xC49AL,18446744073709551611UL,0xE9056D98L}}, // p_681->g_678
        {{{(-6L),0L},{(-6L),0L},{(-6L),0L},{(-6L),0L},{(-6L),0L},{(-6L),0L}},{{(-6L),0L},{(-6L),0L},{(-6L),0L},{(-6L),0L},{(-6L),0L},{(-6L),0L}},{{(-6L),0L},{(-6L),0L},{(-6L),0L},{(-6L),0L},{(-6L),0L},{(-6L),0L}},{{(-6L),0L},{(-6L),0L},{(-6L),0L},{(-6L),0L},{(-6L),0L},{(-6L),0L}},{{(-6L),0L},{(-6L),0L},{(-6L),0L},{(-6L),0L},{(-6L),0L},{(-6L),0L}},{{(-6L),0L},{(-6L),0L},{(-6L),0L},{(-6L),0L},{(-6L),0L},{(-6L),0L}},{{(-6L),0L},{(-6L),0L},{(-6L),0L},{(-6L),0L},{(-6L),0L},{(-6L),0L}}}, // p_681->g_680
        0, // p_681->v_collective
        sequence_input[get_global_id(0)], // p_681->global_0_offset
        sequence_input[get_global_id(1)], // p_681->global_1_offset
        sequence_input[get_global_id(2)], // p_681->global_2_offset
        sequence_input[get_local_id(0)], // p_681->local_0_offset
        sequence_input[get_local_id(1)], // p_681->local_1_offset
        sequence_input[get_local_id(2)], // p_681->local_2_offset
        sequence_input[get_group_id(0)], // p_681->group_0_offset
        sequence_input[get_group_id(1)], // p_681->group_1_offset
        sequence_input[get_group_id(2)], // p_681->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 14)), permutations[0][get_linear_local_id()])), // p_681->tid
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_682 = c_683;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_681);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_681->g_6, "p_681->g_6", print_hash_value);
    transparent_crc(p_681->g_11.s0, "p_681->g_11.s0", print_hash_value);
    transparent_crc(p_681->g_11.s1, "p_681->g_11.s1", print_hash_value);
    transparent_crc(p_681->g_11.s2, "p_681->g_11.s2", print_hash_value);
    transparent_crc(p_681->g_11.s3, "p_681->g_11.s3", print_hash_value);
    transparent_crc(p_681->g_11.s4, "p_681->g_11.s4", print_hash_value);
    transparent_crc(p_681->g_11.s5, "p_681->g_11.s5", print_hash_value);
    transparent_crc(p_681->g_11.s6, "p_681->g_11.s6", print_hash_value);
    transparent_crc(p_681->g_11.s7, "p_681->g_11.s7", print_hash_value);
    transparent_crc(p_681->g_11.s8, "p_681->g_11.s8", print_hash_value);
    transparent_crc(p_681->g_11.s9, "p_681->g_11.s9", print_hash_value);
    transparent_crc(p_681->g_11.sa, "p_681->g_11.sa", print_hash_value);
    transparent_crc(p_681->g_11.sb, "p_681->g_11.sb", print_hash_value);
    transparent_crc(p_681->g_11.sc, "p_681->g_11.sc", print_hash_value);
    transparent_crc(p_681->g_11.sd, "p_681->g_11.sd", print_hash_value);
    transparent_crc(p_681->g_11.se, "p_681->g_11.se", print_hash_value);
    transparent_crc(p_681->g_11.sf, "p_681->g_11.sf", print_hash_value);
    transparent_crc(p_681->g_16, "p_681->g_16", print_hash_value);
    transparent_crc(p_681->g_97, "p_681->g_97", print_hash_value);
    transparent_crc(p_681->g_103, "p_681->g_103", print_hash_value);
    transparent_crc(p_681->g_106, "p_681->g_106", print_hash_value);
    transparent_crc(p_681->g_127.x, "p_681->g_127.x", print_hash_value);
    transparent_crc(p_681->g_127.y, "p_681->g_127.y", print_hash_value);
    transparent_crc(p_681->g_127.z, "p_681->g_127.z", print_hash_value);
    transparent_crc(p_681->g_127.w, "p_681->g_127.w", print_hash_value);
    transparent_crc(p_681->g_128.s0, "p_681->g_128.s0", print_hash_value);
    transparent_crc(p_681->g_128.s1, "p_681->g_128.s1", print_hash_value);
    transparent_crc(p_681->g_128.s2, "p_681->g_128.s2", print_hash_value);
    transparent_crc(p_681->g_128.s3, "p_681->g_128.s3", print_hash_value);
    transparent_crc(p_681->g_128.s4, "p_681->g_128.s4", print_hash_value);
    transparent_crc(p_681->g_128.s5, "p_681->g_128.s5", print_hash_value);
    transparent_crc(p_681->g_128.s6, "p_681->g_128.s6", print_hash_value);
    transparent_crc(p_681->g_128.s7, "p_681->g_128.s7", print_hash_value);
    transparent_crc(p_681->g_159, "p_681->g_159", print_hash_value);
    transparent_crc(p_681->g_176, "p_681->g_176", print_hash_value);
    transparent_crc(p_681->g_179.x, "p_681->g_179.x", print_hash_value);
    transparent_crc(p_681->g_179.y, "p_681->g_179.y", print_hash_value);
    transparent_crc(p_681->g_179.z, "p_681->g_179.z", print_hash_value);
    transparent_crc(p_681->g_179.w, "p_681->g_179.w", print_hash_value);
    transparent_crc(p_681->g_194, "p_681->g_194", print_hash_value);
    transparent_crc(p_681->g_196, "p_681->g_196", print_hash_value);
    transparent_crc(p_681->g_207.f0, "p_681->g_207.f0", print_hash_value);
    transparent_crc(p_681->g_207.f1, "p_681->g_207.f1", print_hash_value);
    transparent_crc(p_681->g_207.f2, "p_681->g_207.f2", print_hash_value);
    transparent_crc(p_681->g_207.f3, "p_681->g_207.f3", print_hash_value);
    transparent_crc(p_681->g_207.f4, "p_681->g_207.f4", print_hash_value);
    transparent_crc(p_681->g_207.f5, "p_681->g_207.f5", print_hash_value);
    transparent_crc(p_681->g_207.f6, "p_681->g_207.f6", print_hash_value);
    transparent_crc(p_681->g_213.x, "p_681->g_213.x", print_hash_value);
    transparent_crc(p_681->g_213.y, "p_681->g_213.y", print_hash_value);
    transparent_crc(p_681->g_213.z, "p_681->g_213.z", print_hash_value);
    transparent_crc(p_681->g_213.w, "p_681->g_213.w", print_hash_value);
    transparent_crc(p_681->g_215, "p_681->g_215", print_hash_value);
    transparent_crc(p_681->g_226, "p_681->g_226", print_hash_value);
    transparent_crc(p_681->g_271.f0, "p_681->g_271.f0", print_hash_value);
    transparent_crc(p_681->g_271.f1, "p_681->g_271.f1", print_hash_value);
    transparent_crc(p_681->g_271.f2, "p_681->g_271.f2", print_hash_value);
    transparent_crc(p_681->g_271.f3, "p_681->g_271.f3", print_hash_value);
    transparent_crc(p_681->g_271.f4, "p_681->g_271.f4", print_hash_value);
    transparent_crc(p_681->g_271.f5, "p_681->g_271.f5", print_hash_value);
    transparent_crc(p_681->g_271.f6, "p_681->g_271.f6", print_hash_value);
    transparent_crc(p_681->g_309.f0, "p_681->g_309.f0", print_hash_value);
    transparent_crc(p_681->g_309.f1, "p_681->g_309.f1", print_hash_value);
    transparent_crc(p_681->g_309.f2, "p_681->g_309.f2", print_hash_value);
    transparent_crc(p_681->g_309.f3, "p_681->g_309.f3", print_hash_value);
    transparent_crc(p_681->g_309.f4, "p_681->g_309.f4", print_hash_value);
    transparent_crc(p_681->g_309.f5, "p_681->g_309.f5", print_hash_value);
    transparent_crc(p_681->g_309.f6, "p_681->g_309.f6", print_hash_value);
    transparent_crc(p_681->g_309.f7, "p_681->g_309.f7", print_hash_value);
    transparent_crc(p_681->g_309.f8, "p_681->g_309.f8", print_hash_value);
    transparent_crc(p_681->g_354.f0, "p_681->g_354.f0", print_hash_value);
    transparent_crc(p_681->g_354.f1, "p_681->g_354.f1", print_hash_value);
    transparent_crc(p_681->g_354.f2, "p_681->g_354.f2", print_hash_value);
    transparent_crc(p_681->g_354.f3, "p_681->g_354.f3", print_hash_value);
    transparent_crc(p_681->g_354.f4, "p_681->g_354.f4", print_hash_value);
    transparent_crc(p_681->g_354.f5, "p_681->g_354.f5", print_hash_value);
    transparent_crc(p_681->g_354.f6, "p_681->g_354.f6", print_hash_value);
    transparent_crc(p_681->g_354.f7, "p_681->g_354.f7", print_hash_value);
    transparent_crc(p_681->g_354.f8, "p_681->g_354.f8", print_hash_value);
    transparent_crc(p_681->g_360.s0, "p_681->g_360.s0", print_hash_value);
    transparent_crc(p_681->g_360.s1, "p_681->g_360.s1", print_hash_value);
    transparent_crc(p_681->g_360.s2, "p_681->g_360.s2", print_hash_value);
    transparent_crc(p_681->g_360.s3, "p_681->g_360.s3", print_hash_value);
    transparent_crc(p_681->g_360.s4, "p_681->g_360.s4", print_hash_value);
    transparent_crc(p_681->g_360.s5, "p_681->g_360.s5", print_hash_value);
    transparent_crc(p_681->g_360.s6, "p_681->g_360.s6", print_hash_value);
    transparent_crc(p_681->g_360.s7, "p_681->g_360.s7", print_hash_value);
    transparent_crc(p_681->g_360.s8, "p_681->g_360.s8", print_hash_value);
    transparent_crc(p_681->g_360.s9, "p_681->g_360.s9", print_hash_value);
    transparent_crc(p_681->g_360.sa, "p_681->g_360.sa", print_hash_value);
    transparent_crc(p_681->g_360.sb, "p_681->g_360.sb", print_hash_value);
    transparent_crc(p_681->g_360.sc, "p_681->g_360.sc", print_hash_value);
    transparent_crc(p_681->g_360.sd, "p_681->g_360.sd", print_hash_value);
    transparent_crc(p_681->g_360.se, "p_681->g_360.se", print_hash_value);
    transparent_crc(p_681->g_360.sf, "p_681->g_360.sf", print_hash_value);
    transparent_crc(p_681->g_374.x, "p_681->g_374.x", print_hash_value);
    transparent_crc(p_681->g_374.y, "p_681->g_374.y", print_hash_value);
    transparent_crc(p_681->g_376.s0, "p_681->g_376.s0", print_hash_value);
    transparent_crc(p_681->g_376.s1, "p_681->g_376.s1", print_hash_value);
    transparent_crc(p_681->g_376.s2, "p_681->g_376.s2", print_hash_value);
    transparent_crc(p_681->g_376.s3, "p_681->g_376.s3", print_hash_value);
    transparent_crc(p_681->g_376.s4, "p_681->g_376.s4", print_hash_value);
    transparent_crc(p_681->g_376.s5, "p_681->g_376.s5", print_hash_value);
    transparent_crc(p_681->g_376.s6, "p_681->g_376.s6", print_hash_value);
    transparent_crc(p_681->g_376.s7, "p_681->g_376.s7", print_hash_value);
    transparent_crc(p_681->g_433.x, "p_681->g_433.x", print_hash_value);
    transparent_crc(p_681->g_433.y, "p_681->g_433.y", print_hash_value);
    transparent_crc(p_681->g_443.x, "p_681->g_443.x", print_hash_value);
    transparent_crc(p_681->g_443.y, "p_681->g_443.y", print_hash_value);
    transparent_crc(p_681->g_443.z, "p_681->g_443.z", print_hash_value);
    transparent_crc(p_681->g_443.w, "p_681->g_443.w", print_hash_value);
    transparent_crc(p_681->g_491.s0, "p_681->g_491.s0", print_hash_value);
    transparent_crc(p_681->g_491.s1, "p_681->g_491.s1", print_hash_value);
    transparent_crc(p_681->g_491.s2, "p_681->g_491.s2", print_hash_value);
    transparent_crc(p_681->g_491.s3, "p_681->g_491.s3", print_hash_value);
    transparent_crc(p_681->g_491.s4, "p_681->g_491.s4", print_hash_value);
    transparent_crc(p_681->g_491.s5, "p_681->g_491.s5", print_hash_value);
    transparent_crc(p_681->g_491.s6, "p_681->g_491.s6", print_hash_value);
    transparent_crc(p_681->g_491.s7, "p_681->g_491.s7", print_hash_value);
    transparent_crc(p_681->g_492.x, "p_681->g_492.x", print_hash_value);
    transparent_crc(p_681->g_492.y, "p_681->g_492.y", print_hash_value);
    transparent_crc(p_681->g_492.z, "p_681->g_492.z", print_hash_value);
    transparent_crc(p_681->g_492.w, "p_681->g_492.w", print_hash_value);
    transparent_crc(p_681->g_501, "p_681->g_501", print_hash_value);
    transparent_crc(p_681->g_504.s0, "p_681->g_504.s0", print_hash_value);
    transparent_crc(p_681->g_504.s1, "p_681->g_504.s1", print_hash_value);
    transparent_crc(p_681->g_504.s2, "p_681->g_504.s2", print_hash_value);
    transparent_crc(p_681->g_504.s3, "p_681->g_504.s3", print_hash_value);
    transparent_crc(p_681->g_504.s4, "p_681->g_504.s4", print_hash_value);
    transparent_crc(p_681->g_504.s5, "p_681->g_504.s5", print_hash_value);
    transparent_crc(p_681->g_504.s6, "p_681->g_504.s6", print_hash_value);
    transparent_crc(p_681->g_504.s7, "p_681->g_504.s7", print_hash_value);
    transparent_crc(p_681->g_509, "p_681->g_509", print_hash_value);
    transparent_crc(p_681->g_532, "p_681->g_532", print_hash_value);
    transparent_crc(p_681->g_538, "p_681->g_538", print_hash_value);
    transparent_crc(p_681->g_555, "p_681->g_555", print_hash_value);
    transparent_crc(p_681->g_570.s0, "p_681->g_570.s0", print_hash_value);
    transparent_crc(p_681->g_570.s1, "p_681->g_570.s1", print_hash_value);
    transparent_crc(p_681->g_570.s2, "p_681->g_570.s2", print_hash_value);
    transparent_crc(p_681->g_570.s3, "p_681->g_570.s3", print_hash_value);
    transparent_crc(p_681->g_570.s4, "p_681->g_570.s4", print_hash_value);
    transparent_crc(p_681->g_570.s5, "p_681->g_570.s5", print_hash_value);
    transparent_crc(p_681->g_570.s6, "p_681->g_570.s6", print_hash_value);
    transparent_crc(p_681->g_570.s7, "p_681->g_570.s7", print_hash_value);
    transparent_crc(p_681->g_570.s8, "p_681->g_570.s8", print_hash_value);
    transparent_crc(p_681->g_570.s9, "p_681->g_570.s9", print_hash_value);
    transparent_crc(p_681->g_570.sa, "p_681->g_570.sa", print_hash_value);
    transparent_crc(p_681->g_570.sb, "p_681->g_570.sb", print_hash_value);
    transparent_crc(p_681->g_570.sc, "p_681->g_570.sc", print_hash_value);
    transparent_crc(p_681->g_570.sd, "p_681->g_570.sd", print_hash_value);
    transparent_crc(p_681->g_570.se, "p_681->g_570.se", print_hash_value);
    transparent_crc(p_681->g_570.sf, "p_681->g_570.sf", print_hash_value);
    transparent_crc(p_681->g_595.x, "p_681->g_595.x", print_hash_value);
    transparent_crc(p_681->g_595.y, "p_681->g_595.y", print_hash_value);
    transparent_crc(p_681->g_596.s0, "p_681->g_596.s0", print_hash_value);
    transparent_crc(p_681->g_596.s1, "p_681->g_596.s1", print_hash_value);
    transparent_crc(p_681->g_596.s2, "p_681->g_596.s2", print_hash_value);
    transparent_crc(p_681->g_596.s3, "p_681->g_596.s3", print_hash_value);
    transparent_crc(p_681->g_596.s4, "p_681->g_596.s4", print_hash_value);
    transparent_crc(p_681->g_596.s5, "p_681->g_596.s5", print_hash_value);
    transparent_crc(p_681->g_596.s6, "p_681->g_596.s6", print_hash_value);
    transparent_crc(p_681->g_596.s7, "p_681->g_596.s7", print_hash_value);
    transparent_crc(p_681->g_596.s8, "p_681->g_596.s8", print_hash_value);
    transparent_crc(p_681->g_596.s9, "p_681->g_596.s9", print_hash_value);
    transparent_crc(p_681->g_596.sa, "p_681->g_596.sa", print_hash_value);
    transparent_crc(p_681->g_596.sb, "p_681->g_596.sb", print_hash_value);
    transparent_crc(p_681->g_596.sc, "p_681->g_596.sc", print_hash_value);
    transparent_crc(p_681->g_596.sd, "p_681->g_596.sd", print_hash_value);
    transparent_crc(p_681->g_596.se, "p_681->g_596.se", print_hash_value);
    transparent_crc(p_681->g_596.sf, "p_681->g_596.sf", print_hash_value);
    transparent_crc(p_681->g_657.s0, "p_681->g_657.s0", print_hash_value);
    transparent_crc(p_681->g_657.s1, "p_681->g_657.s1", print_hash_value);
    transparent_crc(p_681->g_657.s2, "p_681->g_657.s2", print_hash_value);
    transparent_crc(p_681->g_657.s3, "p_681->g_657.s3", print_hash_value);
    transparent_crc(p_681->g_657.s4, "p_681->g_657.s4", print_hash_value);
    transparent_crc(p_681->g_657.s5, "p_681->g_657.s5", print_hash_value);
    transparent_crc(p_681->g_657.s6, "p_681->g_657.s6", print_hash_value);
    transparent_crc(p_681->g_657.s7, "p_681->g_657.s7", print_hash_value);
    transparent_crc(p_681->g_660.x, "p_681->g_660.x", print_hash_value);
    transparent_crc(p_681->g_660.y, "p_681->g_660.y", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_681->g_678[i].f0, "p_681->g_678[i].f0", print_hash_value);
        transparent_crc(p_681->g_678[i].f1, "p_681->g_678[i].f1", print_hash_value);
        transparent_crc(p_681->g_678[i].f2, "p_681->g_678[i].f2", print_hash_value);
        transparent_crc(p_681->g_678[i].f3, "p_681->g_678[i].f3", print_hash_value);
        transparent_crc(p_681->g_678[i].f4, "p_681->g_678[i].f4", print_hash_value);
        transparent_crc(p_681->g_678[i].f5, "p_681->g_678[i].f5", print_hash_value);
        transparent_crc(p_681->g_678[i].f6, "p_681->g_678[i].f6", print_hash_value);

    }
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 6; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_681->g_680[i][j][k], "p_681->g_680[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_681->v_collective, "p_681->v_collective", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 25; i++)
            transparent_crc(p_681->g_special_values[i + 25 * get_linear_group_id()], "p_681->g_special_values[i + 25 * get_linear_group_id()]", print_hash_value);
    transparent_crc(p_681->l_comm_values[get_linear_local_id()], "p_681->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_681->g_comm_values[get_linear_group_id() * 14 + get_linear_local_id()], "p_681->g_comm_values[get_linear_group_id() * 14 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
