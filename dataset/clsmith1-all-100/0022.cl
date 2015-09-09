// --atomics 20 ---atomic_reductions ---fake_divergence ---inter_thread_comm -g 10,84,4 -l 1,12,2
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

__constant uint32_t permutations[10][24] = {
{21,15,10,13,11,3,0,23,9,1,20,7,5,22,4,12,8,17,14,16,6,19,2,18}, // permutation 0
{1,9,23,19,13,4,22,2,6,21,8,0,14,5,17,20,16,15,10,3,18,7,11,12}, // permutation 1
{2,15,21,22,3,1,4,17,16,19,6,11,12,9,20,23,18,0,14,7,8,5,10,13}, // permutation 2
{21,5,8,13,3,10,1,2,20,6,16,19,7,4,11,14,12,9,22,0,18,17,15,23}, // permutation 3
{23,18,8,17,10,14,15,5,0,22,19,3,1,7,13,21,6,12,2,9,16,11,4,20}, // permutation 4
{13,14,1,19,23,6,3,8,17,18,10,12,22,5,4,20,15,9,11,2,16,0,21,7}, // permutation 5
{6,15,0,7,17,13,5,9,23,16,19,11,21,8,10,3,2,22,4,1,18,14,12,20}, // permutation 6
{8,10,1,3,16,0,11,19,6,9,7,18,5,21,20,4,12,23,2,15,14,22,13,17}, // permutation 7
{22,7,3,5,11,21,20,15,2,1,8,14,6,17,9,18,19,10,12,16,13,4,0,23}, // permutation 8
{2,10,4,13,23,17,11,3,1,14,5,0,12,8,7,6,20,22,19,16,21,15,18,9} // permutation 9
};

// Seed: 22

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   uint32_t  f0;
   int8_t  f1;
   volatile int32_t  f2;
   int32_t  f3;
};

union U1 {
   volatile uint64_t  f0;
   int8_t * f1;
   uint16_t  f2;
   int32_t  f3;
};

struct S2 {
    int32_t g_25;
    volatile VECTOR(uint32_t, 4) g_30;
    int8_t g_54;
    int8_t *g_53;
    uint64_t g_73;
    uint64_t g_75;
    volatile int64_t g_88;
    volatile uint16_t g_95;
    uint16_t g_117;
    uint16_t g_122;
    int8_t g_128;
    int8_t g_129[8];
    volatile int8_t g_131;
    int8_t g_132[1][9][4];
    uint64_t g_133;
    volatile struct S0 g_136;
    volatile struct S0 * volatile g_137;
    volatile struct S0 g_142;
    VECTOR(int64_t, 16) g_157;
    int32_t g_169;
    int32_t g_182;
    uint32_t g_188;
    union U1 g_190;
    volatile union U1 g_191;
    struct S0 g_193;
    int32_t ** volatile g_198;
    int32_t ** volatile g_199;
    int32_t *g_200;
    uint64_t *g_210;
    uint64_t * volatile *g_209;
    int64_t g_216;
    uint8_t g_294;
    VECTOR(uint8_t, 8) g_297;
    struct S0 g_328;
    int32_t * volatile g_331;
    volatile struct S0 g_348;
    volatile struct S0 *g_347;
    volatile struct S0 **g_346[3];
    struct S0 g_352[1][10][10];
    int16_t g_367;
    volatile uint32_t g_368;
    int32_t * volatile g_375;
    VECTOR(uint32_t, 2) g_378;
    VECTOR(int32_t, 8) g_390;
    volatile union U1 g_441;
    int32_t ** volatile g_445;
    int32_t ** volatile g_446;
    volatile struct S0 g_448;
    struct S0 g_453;
    int32_t g_474;
    int32_t * volatile g_475;
    struct S0 g_476;
    volatile VECTOR(uint8_t, 4) g_511;
    VECTOR(uint8_t, 16) g_525;
    struct S0 g_527;
    int32_t ** volatile g_530;
    volatile VECTOR(int32_t, 2) g_538;
    int32_t *g_556[1][6][6];
    volatile struct S0 g_566;
    volatile VECTOR(int8_t, 8) g_572;
    volatile union U1 g_582;
    VECTOR(int32_t, 4) g_586;
    int32_t **g_606[5][2];
    volatile struct S0 g_612;
    VECTOR(int64_t, 8) g_615;
    VECTOR(int16_t, 16) g_632;
    VECTOR(int16_t, 16) g_633;
    VECTOR(int16_t, 4) g_634;
    VECTOR(int16_t, 2) g_635;
    VECTOR(int16_t, 8) g_636;
    volatile uint32_t g_639;
    volatile uint32_t g_640;
    volatile uint32_t g_641;
    volatile uint32_t g_642;
    volatile uint32_t g_643;
    volatile uint32_t g_644;
    volatile uint32_t *g_638[3][8];
    volatile uint32_t **g_637;
    volatile VECTOR(uint8_t, 4) g_667;
    volatile VECTOR(uint16_t, 2) g_685;
    volatile VECTOR(int8_t, 8) g_709;
    VECTOR(int8_t, 4) g_710;
    volatile union U1 g_712;
    volatile struct S0 g_748;
    VECTOR(int64_t, 8) g_790;
    VECTOR(int64_t, 16) g_791;
    VECTOR(uint32_t, 4) g_878;
    int8_t g_882[6][6][4];
    int32_t *g_883;
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
int64_t  func_1(struct S2 * p_910);
int32_t * func_2(int32_t * p_3, int32_t * p_4, int8_t * p_5, int32_t  p_6, int16_t  p_7, struct S2 * p_910);
int32_t * func_8(uint32_t  p_9, uint64_t  p_10, uint64_t  p_11, int64_t  p_12, int64_t  p_13, struct S2 * p_910);
int32_t  func_16(uint32_t  p_17, uint32_t  p_18, int8_t * p_19, int32_t  p_20, struct S2 * p_910);
uint32_t  func_31(uint8_t  p_32, uint16_t  p_33, uint8_t  p_34, uint32_t  p_35, struct S2 * p_910);
struct S0  func_40(int32_t * p_41, uint32_t  p_42, int32_t * p_43, int64_t  p_44, uint64_t  p_45, struct S2 * p_910);
int32_t * func_46(int8_t * p_47, uint32_t  p_48, struct S2 * p_910);
int8_t * func_49(int8_t * p_50, int8_t * p_51, uint16_t  p_52, struct S2 * p_910);
int8_t * func_55(uint32_t  p_56, int64_t  p_57, uint32_t  p_58, int8_t * p_59, struct S2 * p_910);
int8_t  func_64(uint8_t  p_65, struct S2 * p_910);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_910->l_comm_values p_910->g_30 p_910->g_25 p_910->g_comm_values p_910->g_53 p_910->g_54 p_910->g_75 p_910->g_95 p_910->g_128 p_910->g_133 p_910->g_136 p_910->g_137 p_910->g_142 p_910->g_157 p_910->g_129 p_910->g_117 p_910->g_169 p_910->g_132 p_910->g_190 p_910->g_191 p_910->g_193.f2 p_910->g_209 p_910->g_193.f3 p_910->g_216 p_910->g_193.f1 p_910->g_182 p_910->g_210 p_910->g_193.f0 p_910->g_297 p_910->g_73 p_910->g_191.f0 p_910->g_328 p_910->g_331 p_910->g_346 p_910->g_368 p_910->g_375 p_910->g_352.f3 p_910->g_390 p_910->g_347 p_910->g_348 p_910->g_446 p_910->g_448 p_910->g_475 p_910->g_476 p_910->g_294 p_910->g_352.f1 p_910->g_453.f3 p_910->g_511 p_910->g_525 p_910->g_530 p_910->g_538 p_910->g_188 p_910->g_200 p_910->g_556 p_910->g_378 p_910->g_367 p_910->g_566 p_910->g_572 p_910->g_582 p_910->g_586 p_910->g_612 p_910->g_122 p_910->g_527.f3 p_910->g_685 p_910->g_878 p_910->g_632 p_910->g_882 p_910->g_633 p_910->g_582.f0
 * writes: p_910->g_25 p_910->g_73 p_910->g_75 p_910->g_54 p_910->g_95 p_910->g_117 p_910->g_128 p_910->g_133 p_910->g_136 p_910->g_122 p_910->g_169 p_910->g_182 p_910->g_200 p_910->g_142.f3 p_910->g_193.f1 p_910->g_193.f3 p_910->g_216 p_910->g_368 p_910->g_352.f3 p_910->g_348 p_910->g_474 p_910->g_352.f0 p_910->g_294 p_910->g_188 p_910->g_476.f0 p_910->g_606 p_910->g_476.f3 p_910->g_352 p_910->g_193.f0 p_910->g_527.f3 p_910->g_328.f3 p_910->g_453.f3 p_910->g_634 p_910->g_883
 */
int64_t  func_1(struct S2 * p_910)
{ /* block id: 4 */
    int32_t l_21[9][2];
    int32_t *l_24 = &p_910->g_25;
    VECTOR(uint32_t, 16) l_28 = (VECTOR(uint32_t, 16))(0x93F6A083L, (VECTOR(uint32_t, 4))(0x93F6A083L, (VECTOR(uint32_t, 2))(0x93F6A083L, 0xFBFCC013L), 0xFBFCC013L), 0xFBFCC013L, 0x93F6A083L, 0xFBFCC013L, (VECTOR(uint32_t, 2))(0x93F6A083L, 0xFBFCC013L), (VECTOR(uint32_t, 2))(0x93F6A083L, 0xFBFCC013L), 0x93F6A083L, 0xFBFCC013L, 0x93F6A083L, 0xFBFCC013L);
    VECTOR(uint32_t, 4) l_29 = (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 0xB9A31C0AL), 0xB9A31C0AL);
    uint16_t l_501 = 0xB5C7L;
    uint64_t l_502 = 0xAA1031FD7082AFD5L;
    int16_t l_503 = 0x2D6AL;
    int16_t *l_504 = &l_503;
    uint32_t *l_505 = &p_910->g_352[0][0][2].f0;
    uint32_t l_535 = 0x7850661AL;
    uint64_t l_536 = 0UL;
    int32_t **l_901 = &l_24;
    int32_t *l_906[1][4][6] = {{{&p_910->g_182,&p_910->g_182,&p_910->g_182,&p_910->g_182,&p_910->g_182,&p_910->g_182},{&p_910->g_182,&p_910->g_182,&p_910->g_182,&p_910->g_182,&p_910->g_182,&p_910->g_182},{&p_910->g_182,&p_910->g_182,&p_910->g_182,&p_910->g_182,&p_910->g_182,&p_910->g_182},{&p_910->g_182,&p_910->g_182,&p_910->g_182,&p_910->g_182,&p_910->g_182,&p_910->g_182}}};
    uint64_t l_907 = 0xC2267C2477D2D6F3L;
    int i, j, k;
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 2; j++)
            l_21[i][j] = 1L;
    }
    (*l_901) = func_2(func_8((safe_sub_func_int32_t_s_s(func_16(l_21[3][1], ((*l_505) = (safe_lshift_func_uint16_t_u_s((((p_910->l_comm_values[(safe_mod_func_uint32_t_u_u(p_910->tid, 24))] <= 0x4BL) >= GROUP_DIVERGE(1, 1)) <= (-2L)), ((*l_504) = (((void*)0 == l_24) && (safe_lshift_func_uint8_t_u_u(((((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(min(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(safe_mul24_func_uint32_t_u_u(VECTOR(uint32_t, 2),((VECTOR(uint32_t, 2))(mul_hi(((VECTOR(uint32_t, 16))(clz(((VECTOR(uint32_t, 8))(l_28.scef33920)).s0271656662332655))).sd6, ((VECTOR(uint32_t, 2))(l_29.yx))))), ((VECTOR(uint32_t, 4))(p_910->g_30.xyzy)).lo))), 0xEA3D8810L, 0xEDF47F28L, func_31(p_910->g_30.z, (*l_24), (((VECTOR(int8_t, 16))(1L, (safe_rshift_func_uint8_t_u_s((*l_24), 7)), 1L, ((VECTOR(int8_t, 4))((-1L))), (*l_24), 0L, (*l_24), 0x2FL, p_910->g_comm_values[p_910->tid], 0x57L, (-1L), 0x0EL, 1L)).sa < p_910->l_comm_values[(safe_mod_func_uint32_t_u_u(p_910->tid, 24))]), (*l_24), p_910), ((VECTOR(uint32_t, 2))(1UL)), 4294967295UL)).lo, (uint32_t)l_501))).wwwyywyw)).s7 , (*l_24)) != l_502), l_503))))))), &p_910->g_129[4], p_910->g_476.f0, p_910), 0x4B3024B0L)), p_910->g_129[4], p_910->g_525.s6, l_535, l_536, p_910), p_910->g_556[0][0][2], &p_910->g_129[4], p_910->g_378.x, p_910->g_comm_values[p_910->tid], p_910);
    (*p_910->g_475) ^= (safe_lshift_func_uint16_t_u_s((safe_sub_func_int64_t_s_s(p_910->g_633.se, (*l_24))), 5));
    ++l_907;
    return p_910->g_582.f0;
}


/* ------------------------------------------ */
/* 
 * reads : p_910->g_367 p_910->g_446 p_910->g_200 p_910->g_117 p_910->g_193.f1 p_910->g_328 p_910->g_331 p_910->g_297 p_910->g_53 p_910->g_368 p_910->g_375 p_910->g_352.f3 p_910->g_169 p_910->g_54 p_910->g_390 p_910->g_347 p_910->g_348 p_910->g_448 p_910->g_475 p_910->g_476 p_910->g_566 p_910->g_157 p_910->g_572 p_910->g_453.f3 p_910->g_582 p_910->g_586 p_910->g_129 p_910->g_612 p_910->g_122 p_910->g_193.f0 p_910->g_209 p_910->g_210 p_910->g_73 p_910->g_527.f3 p_910->l_comm_values p_910->g_685 p_910->g_188 p_910->g_878 p_910->g_25 p_910->g_132 p_910->g_632 p_910->g_882
 * writes: p_910->g_182 p_910->g_117 p_910->g_169 p_910->g_216 p_910->g_54 p_910->g_368 p_910->g_352.f3 p_910->g_75 p_910->g_200 p_910->g_348 p_910->g_474 p_910->g_476.f0 p_910->g_294 p_910->g_606 p_910->g_476.f3 p_910->g_352 p_910->g_122 p_910->g_193.f0 p_910->g_527.f3 p_910->g_328.f3 p_910->g_453.f3 p_910->g_193.f1 p_910->g_634 p_910->g_188 p_910->g_883
 */
int32_t * func_2(int32_t * p_3, int32_t * p_4, int8_t * p_5, int32_t  p_6, int16_t  p_7, struct S2 * p_910)
{ /* block id: 282 */
    int32_t *l_559 = &p_910->g_476.f3;
    uint32_t *l_561 = &p_910->g_188;
    uint32_t **l_560 = &l_561;
    VECTOR(int8_t, 2) l_573 = (VECTOR(int8_t, 2))(3L, 5L);
    uint32_t l_579 = 0x423934F7L;
    uint32_t l_588 = 0xBDC010C3L;
    struct S0 *l_599 = &p_910->g_352[0][0][2];
    struct S0 **l_598 = &l_599;
    int32_t **l_605[1];
    VECTOR(uint32_t, 2) l_629 = (VECTOR(uint32_t, 2))(0x51BA95AEL, 0UL);
    int32_t l_647 = 1L;
    int8_t *l_650 = &p_910->g_132[0][6][0];
    uint16_t l_659 = 65535UL;
    VECTOR(uint32_t, 4) l_729 = (VECTOR(uint32_t, 4))(4294967288UL, (VECTOR(uint32_t, 2))(4294967288UL, 0x6E326A48L), 0x6E326A48L);
    VECTOR(int32_t, 2) l_801 = (VECTOR(int32_t, 2))((-8L), 0x3E5DE8A9L);
    VECTOR(uint16_t, 16) l_876 = (VECTOR(uint16_t, 16))(0xF9E5L, (VECTOR(uint16_t, 4))(0xF9E5L, (VECTOR(uint16_t, 2))(0xF9E5L, 65535UL), 65535UL), 65535UL, 0xF9E5L, 65535UL, (VECTOR(uint16_t, 2))(0xF9E5L, 65535UL), (VECTOR(uint16_t, 2))(0xF9E5L, 65535UL), 0xF9E5L, 65535UL, 0xF9E5L, 65535UL);
    VECTOR(uint32_t, 16) l_879 = (VECTOR(uint32_t, 16))(3UL, (VECTOR(uint32_t, 4))(3UL, (VECTOR(uint32_t, 2))(3UL, 0x224B1809L), 0x224B1809L), 0x224B1809L, 3UL, 0x224B1809L, (VECTOR(uint32_t, 2))(3UL, 0x224B1809L), (VECTOR(uint32_t, 2))(3UL, 0x224B1809L), 3UL, 0x224B1809L, 3UL, 0x224B1809L);
    VECTOR(uint32_t, 4) l_880 = (VECTOR(uint32_t, 4))(0x0CAC5B6AL, (VECTOR(uint32_t, 2))(0x0CAC5B6AL, 4294967295UL), 4294967295UL);
    int64_t l_881 = 1L;
    int32_t l_889 = (-10L);
    int8_t l_890 = (-6L);
    int8_t l_893 = 6L;
    int16_t l_894 = 1L;
    uint32_t l_898 = 4294967287UL;
    int i;
    for (i = 0; i < 1; i++)
        l_605[i] = &p_910->g_556[0][5][1];
    if ((+((((((safe_sub_func_uint8_t_u_u(((void*)0 == l_559), ((((*l_560) = l_559) == &p_910->g_188) > p_6))) || 6UL) != p_910->g_367) , func_40((*p_910->g_446), (safe_add_func_uint32_t_u_u(p_7, (-3L))), l_561, p_6, p_7, p_910)) , p_6) ^ 0x439BDEDDL)))
    { /* block id: 284 */
        uint8_t *l_571 = &p_910->g_294;
        VECTOR(uint32_t, 8) l_574 = (VECTOR(uint32_t, 8))(0x0019C1D5L, (VECTOR(uint32_t, 4))(0x0019C1D5L, (VECTOR(uint32_t, 2))(0x0019C1D5L, 1UL), 1UL), 1UL, 0x0019C1D5L, 1UL);
        VECTOR(uint16_t, 16) l_580 = (VECTOR(uint16_t, 16))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 65535UL), 65535UL), 65535UL, 1UL, 65535UL, (VECTOR(uint16_t, 2))(1UL, 65535UL), (VECTOR(uint16_t, 2))(1UL, 65535UL), 1UL, 65535UL, 1UL, 65535UL);
        int64_t *l_581 = &p_910->g_216;
        VECTOR(int32_t, 4) l_585 = (VECTOR(int32_t, 4))(0x5B017463L, (VECTOR(int32_t, 2))(0x5B017463L, (-4L)), (-4L));
        VECTOR(int32_t, 16) l_587 = (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 1L), 1L), 1L, 0L, 1L, (VECTOR(int32_t, 2))(0L, 1L), (VECTOR(int32_t, 2))(0L, 1L), 0L, 1L, 0L, 1L);
        VECTOR(int8_t, 2) l_595 = (VECTOR(int8_t, 2))(0L, 0x51L);
        uint32_t **l_645[5] = {&l_561,&l_561,&l_561,&l_561,&l_561};
        int i;
        for (p_910->g_476.f0 = 0; (p_910->g_476.f0 >= 44); ++p_910->g_476.f0)
        { /* block id: 287 */
            (*p_910->g_347) = p_910->g_566;
        }
        if ((safe_sub_func_int64_t_s_s(p_910->g_157.sd, (safe_sub_func_uint8_t_u_u(((*l_571) = FAKE_DIVERGE(p_910->global_2_offset, get_global_id(2), 10)), (((*l_559) && (!(1UL | ((*p_910->g_53) ^= ((((VECTOR(int8_t, 16))(add_sat(((VECTOR(int8_t, 16))(rotate(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 16))(p_910->g_572.s7054764606175304)))), ((VECTOR(int8_t, 2))(0L, 0x2AL)).yxyyxxxxyxxyxyxx))), ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(l_573.yy)).yxyxyxxyxyyxxyxx)).scbd0)))), 1L, ((((VECTOR(uint32_t, 8))(l_574.s63125621)).s5 > ((safe_mod_func_uint16_t_u_u(FAKE_DIVERGE(p_910->local_0_offset, get_local_id(0), 10), (safe_mod_func_uint16_t_u_u(l_579, ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 16))(l_580.sfcd5a7d3eb2f1b41)).s7f2f)).y)))) > ((*l_581) = p_910->g_453.f3))) ^ (p_910->g_582 , (safe_sub_func_uint64_t_u_u((*l_559), (((VECTOR(int32_t, 16))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 4))(l_585.xzyz)).ywzxwxwwyzwxywwx, ((VECTOR(int32_t, 8))(rotate(((VECTOR(int32_t, 2))(6L, 0x26FCBDB5L)).yyyyxyxx, ((VECTOR(int32_t, 8))((-1L), ((VECTOR(int32_t, 4))(p_910->g_586.yzwz)), 0x29D287E6L, 0x4B35F45FL, 0L))))).s1573546003573105, ((VECTOR(int32_t, 16))(l_587.se666ef7d80e0b081))))).sc ^ p_7))))), 0x78L, 0L)).s3666046324160044))).s5 | (*l_559)) == l_588))))) <= 0x57DF9A32364FD1BEL))))))
        { /* block id: 293 */
            VECTOR(int8_t, 8) l_596 = (VECTOR(int8_t, 8))(0x5DL, (VECTOR(int8_t, 4))(0x5DL, (VECTOR(int8_t, 2))(0x5DL, 0x41L), 0x41L), 0x41L, 0x5DL, 0x41L);
            VECTOR(int8_t, 8) l_597 = (VECTOR(int8_t, 8))(0x7DL, (VECTOR(int8_t, 4))(0x7DL, (VECTOR(int8_t, 2))(0x7DL, 8L), 8L), 8L, 0x7DL, 8L);
            VECTOR(int8_t, 8) l_600 = (VECTOR(int8_t, 8))(5L, (VECTOR(int8_t, 4))(5L, (VECTOR(int8_t, 2))(5L, 0x60L), 0x60L), 0x60L, 5L, 0x60L);
            uint32_t l_611[2][1];
            int i, j;
            for (i = 0; i < 2; i++)
            {
                for (j = 0; j < 1; j++)
                    l_611[i][j] = 0xD4F27AD7L;
            }
            (*l_559) |= (safe_sub_func_int8_t_s_s((safe_mod_func_int64_t_s_s(((p_7 , ((safe_mul_func_int8_t_s_s(((VECTOR(int8_t, 8))(hadd(((VECTOR(int8_t, 2))(l_595.yx)).yxyxyxxy, ((VECTOR(int8_t, 8))(hadd(((VECTOR(int8_t, 16))(rotate(((VECTOR(int8_t, 8))(l_596.s24153251)).s0276044366066412, ((VECTOR(int8_t, 16))(l_597.s4166623230013234))))).odd, ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(0x1AL, ((VECTOR(int8_t, 4))(1L, ((VECTOR(int8_t, 2))(0x37L, 1L)), 0x3FL)), (l_598 != &l_599), 0x69L, ((VECTOR(int8_t, 4))(l_600.s1505)), ((VECTOR(int8_t, 4))((((p_6 < (((VECTOR(uint32_t, 8))(0xBDCB5763L, (safe_div_func_uint8_t_u_u(((p_910->g_606[2][0] = l_605[0]) == (void*)0), 1L)), ((VECTOR(uint32_t, 2))(mad_hi(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(mul_hi(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 8))(((((safe_div_func_int8_t_s_s((safe_mul_func_int16_t_s_s(p_910->g_572.s5, l_611[1][0])), 0xCDL)) , l_596.s1) & GROUP_DIVERGE(2, 1)) >= 0UL), 4294967291UL, 4294967295UL, 4294967287UL, 0xDD501866L, ((VECTOR(uint32_t, 2))(0UL)), 1UL)).lo)).hi, ((VECTOR(uint32_t, 2))(0xF6FC0E97L))))), 0xF233DC06L, p_910->g_367, l_600.s2, 0xAF5A83CBL, 1UL, 0xDC9520BDL)).s67, ((VECTOR(uint32_t, 2))(4294967295UL)), ((VECTOR(uint32_t, 2))(6UL))))), 9UL, p_7, 4UL, 0xF7AFD2BCL)).s1 >= p_7)) , l_595.y) > 0x3A14L), ((VECTOR(int8_t, 2))(0x16L)), 0x23L)), 0x0BL)).s5851)), (*p_5), (*p_5), 0x09L, (-1L))).s20)).xxyxyxyxyyxxyyxy)).s68)).xyyxxyxy)))))).s0, 0xFAL)) ^ 0L)) || (*p_910->g_475)), 1UL)), (*p_910->g_53)));
            (**l_598) = p_910->g_612;
        }
        else
        { /* block id: 297 */
            uint32_t l_622 = 0xAF576D24L;
            int16_t *l_646 = (void*)0;
            int8_t *l_648 = (void*)0;
            int8_t *l_649 = &p_910->g_328.f1;
            int8_t **l_651 = (void*)0;
            int8_t **l_652 = &p_910->g_53;
            int32_t *l_653 = &p_910->g_25;
            int32_t *l_654 = &p_910->g_527.f3;
            l_654 = l_653;
        }
    }
    else
    { /* block id: 303 */
        int16_t l_683[8] = {0L,3L,0L,0L,3L,0L,0L,3L};
        VECTOR(int16_t, 4) l_692 = (VECTOR(int16_t, 4))(0x2203L, (VECTOR(int16_t, 2))(0x2203L, 0x58E7L), 0x58E7L);
        VECTOR(int16_t, 16) l_699 = (VECTOR(int16_t, 16))(0x27DAL, (VECTOR(int16_t, 4))(0x27DAL, (VECTOR(int16_t, 2))(0x27DAL, 0x773DL), 0x773DL), 0x773DL, 0x27DAL, 0x773DL, (VECTOR(int16_t, 2))(0x27DAL, 0x773DL), (VECTOR(int16_t, 2))(0x27DAL, 0x773DL), 0x27DAL, 0x773DL, 0x27DAL, 0x773DL);
        int32_t l_717 = 7L;
        int32_t l_718 = 0x57209755L;
        int32_t l_724[4][1][2];
        VECTOR(int8_t, 4) l_779 = (VECTOR(int8_t, 4))(0x36L, (VECTOR(int8_t, 2))(0x36L, 2L), 2L);
        VECTOR(int64_t, 4) l_789 = (VECTOR(int64_t, 4))(4L, (VECTOR(int64_t, 2))(4L, 9L), 9L);
        int i, j, k;
        for (i = 0; i < 4; i++)
        {
            for (j = 0; j < 1; j++)
            {
                for (k = 0; k < 2; k++)
                    l_724[i][j][k] = (-1L);
            }
        }
        for (p_910->g_122 = 0; (p_910->g_122 < 45); p_910->g_122++)
        { /* block id: 306 */
            int32_t l_668 = 0x5C001F34L;
            int64_t *l_669 = &p_910->g_216;
            uint32_t **l_675 = &l_561;
            VECTOR(uint16_t, 2) l_684 = (VECTOR(uint16_t, 2))(0UL, 0UL);
            int32_t l_741 = 1L;
            int32_t l_742 = 0x02801385L;
            int32_t l_743[10][3][8] = {{{0x08A9C6CFL,0x69816E7FL,0x0F6BE0C8L,0L,0L,0x366F0390L,0L,0x5E44AF56L},{0x08A9C6CFL,0x69816E7FL,0x0F6BE0C8L,0L,0L,0x366F0390L,0L,0x5E44AF56L},{0x08A9C6CFL,0x69816E7FL,0x0F6BE0C8L,0L,0L,0x366F0390L,0L,0x5E44AF56L}},{{0x08A9C6CFL,0x69816E7FL,0x0F6BE0C8L,0L,0L,0x366F0390L,0L,0x5E44AF56L},{0x08A9C6CFL,0x69816E7FL,0x0F6BE0C8L,0L,0L,0x366F0390L,0L,0x5E44AF56L},{0x08A9C6CFL,0x69816E7FL,0x0F6BE0C8L,0L,0L,0x366F0390L,0L,0x5E44AF56L}},{{0x08A9C6CFL,0x69816E7FL,0x0F6BE0C8L,0L,0L,0x366F0390L,0L,0x5E44AF56L},{0x08A9C6CFL,0x69816E7FL,0x0F6BE0C8L,0L,0L,0x366F0390L,0L,0x5E44AF56L},{0x08A9C6CFL,0x69816E7FL,0x0F6BE0C8L,0L,0L,0x366F0390L,0L,0x5E44AF56L}},{{0x08A9C6CFL,0x69816E7FL,0x0F6BE0C8L,0L,0L,0x366F0390L,0L,0x5E44AF56L},{0x08A9C6CFL,0x69816E7FL,0x0F6BE0C8L,0L,0L,0x366F0390L,0L,0x5E44AF56L},{0x08A9C6CFL,0x69816E7FL,0x0F6BE0C8L,0L,0L,0x366F0390L,0L,0x5E44AF56L}},{{0x08A9C6CFL,0x69816E7FL,0x0F6BE0C8L,0L,0L,0x366F0390L,0L,0x5E44AF56L},{0x08A9C6CFL,0x69816E7FL,0x0F6BE0C8L,0L,0L,0x366F0390L,0L,0x5E44AF56L},{0x08A9C6CFL,0x69816E7FL,0x0F6BE0C8L,0L,0L,0x366F0390L,0L,0x5E44AF56L}},{{0x08A9C6CFL,0x69816E7FL,0x0F6BE0C8L,0L,0L,0x366F0390L,0L,0x5E44AF56L},{0x08A9C6CFL,0x69816E7FL,0x0F6BE0C8L,0L,0L,0x366F0390L,0L,0x5E44AF56L},{0x08A9C6CFL,0x69816E7FL,0x0F6BE0C8L,0L,0L,0x366F0390L,0L,0x5E44AF56L}},{{0x08A9C6CFL,0x69816E7FL,0x0F6BE0C8L,0L,0L,0x366F0390L,0L,0x5E44AF56L},{0x08A9C6CFL,0x69816E7FL,0x0F6BE0C8L,0L,0L,0x366F0390L,0L,0x5E44AF56L},{0x08A9C6CFL,0x69816E7FL,0x0F6BE0C8L,0L,0L,0x366F0390L,0L,0x5E44AF56L}},{{0x08A9C6CFL,0x69816E7FL,0x0F6BE0C8L,0L,0L,0x366F0390L,0L,0x5E44AF56L},{0x08A9C6CFL,0x69816E7FL,0x0F6BE0C8L,0L,0L,0x366F0390L,0L,0x5E44AF56L},{0x08A9C6CFL,0x69816E7FL,0x0F6BE0C8L,0L,0L,0x366F0390L,0L,0x5E44AF56L}},{{0x08A9C6CFL,0x69816E7FL,0x0F6BE0C8L,0L,0L,0x366F0390L,0L,0x5E44AF56L},{0x08A9C6CFL,0x69816E7FL,0x0F6BE0C8L,0L,0L,0x366F0390L,0L,0x5E44AF56L},{0x08A9C6CFL,0x69816E7FL,0x0F6BE0C8L,0L,0L,0x366F0390L,0L,0x5E44AF56L}},{{0x08A9C6CFL,0x69816E7FL,0x0F6BE0C8L,0L,0L,0x366F0390L,0L,0x5E44AF56L},{0x08A9C6CFL,0x69816E7FL,0x0F6BE0C8L,0L,0L,0x366F0390L,0L,0x5E44AF56L},{0x08A9C6CFL,0x69816E7FL,0x0F6BE0C8L,0L,0L,0x366F0390L,0L,0x5E44AF56L}}};
            int32_t l_749 = 1L;
            int16_t l_761 = 0x1099L;
            VECTOR(int32_t, 16) l_766 = (VECTOR(int32_t, 16))(0x5970F7E0L, (VECTOR(int32_t, 4))(0x5970F7E0L, (VECTOR(int32_t, 2))(0x5970F7E0L, 1L), 1L), 1L, 0x5970F7E0L, 1L, (VECTOR(int32_t, 2))(0x5970F7E0L, 1L), (VECTOR(int32_t, 2))(0x5970F7E0L, 1L), 0x5970F7E0L, 1L, 0x5970F7E0L, 1L);
            VECTOR(uint16_t, 4) l_782 = (VECTOR(uint16_t, 4))(65533UL, (VECTOR(uint16_t, 2))(65533UL, 65535UL), 65535UL);
            uint16_t *l_783 = &l_659;
            int16_t *l_784 = &p_910->g_367;
            int16_t *l_785[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            int32_t *l_788 = &p_910->g_474;
            VECTOR(uint16_t, 4) l_792 = (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0x60ADL), 0x60ADL);
            int i, j, k;
            (1 + 1);
        }
    }
    if (((VECTOR(int32_t, 8))(l_801.yxxyxyyy)).s6)
    { /* block id: 364 */
        VECTOR(int32_t, 2) l_811 = (VECTOR(int32_t, 2))((-7L), (-1L));
        int i;
        for (p_910->g_193.f0 = (-5); (p_910->g_193.f0 == 14); ++p_910->g_193.f0)
        { /* block id: 367 */
            int32_t l_804 = 0x7402184EL;
            VECTOR(uint16_t, 16) l_812 = (VECTOR(uint16_t, 16))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 65534UL), 65534UL), 65534UL, 65535UL, 65534UL, (VECTOR(uint16_t, 2))(65535UL, 65534UL), (VECTOR(uint16_t, 2))(65535UL, 65534UL), 65535UL, 65534UL, 65535UL, 65534UL);
            int i;
            (*l_559) = (0x1427AEC1L & ((l_804 , (((((VECTOR(uint64_t, 4))((((*p_4) = (safe_mul_func_uint16_t_u_u(l_804, 0xE7D4L))) | 1UL), 1UL, 0xBCBEB9BBD658952DL, 0x6B79265591B5049DL)).w , (safe_add_func_int32_t_s_s(((safe_mul_func_int16_t_s_s((0x3BEDE16E3FCE01B4L < ((VECTOR(int64_t, 2))(upsample(((VECTOR(int32_t, 8))(l_811.xxyyyyyx)).s25, ((VECTOR(uint32_t, 4))(hadd(((VECTOR(uint32_t, 8))(upsample(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(l_812.s32)), ((VECTOR(uint16_t, 4))(hadd(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(65535UL, 0xAD32L)), 0x0CABL, 0x1C18L)), ((VECTOR(uint16_t, 8))(0xDA69L, 0xB00CL, ((*l_559) == ((safe_add_func_uint64_t_u_u(((void*)0 == (*p_910->g_209)), (-1L))) < 0x1419L)), 0xDF63L, 5UL, 1UL, 65533UL, 0xFB15L)).even))), 0xF2FAL, 0x58E3L)), ((VECTOR(uint16_t, 8))(65535UL))))).hi, ((VECTOR(uint32_t, 4))(0xE5B03C8DL))))).odd))).even), p_910->g_586.y)) == (**p_910->g_209)), FAKE_DIVERGE(p_910->global_0_offset, get_global_id(0), 10)))) || 18446744073709551614UL) & 0x0D78DAD6764A9DE0L)) || (*p_4)));
            if ((*p_4))
                break;
            for (p_910->g_193.f1 = 0; (p_910->g_193.f1 < (-25)); p_910->g_193.f1 = safe_sub_func_uint64_t_u_u(p_910->g_193.f1, 7))
            { /* block id: 373 */
                uint8_t l_835 = 0x23L;
                int16_t *l_844 = (void*)0;
                int16_t *l_845 = (void*)0;
                int16_t *l_846 = (void*)0;
                uint64_t l_847[10][9] = {{1UL,18446744073709551608UL,1UL,0x6FAD28EDB0697C6CL,1UL,18446744073709551608UL,1UL,0xF84D097735F1A498L,1UL},{1UL,18446744073709551608UL,1UL,0x6FAD28EDB0697C6CL,1UL,18446744073709551608UL,1UL,0xF84D097735F1A498L,1UL},{1UL,18446744073709551608UL,1UL,0x6FAD28EDB0697C6CL,1UL,18446744073709551608UL,1UL,0xF84D097735F1A498L,1UL},{1UL,18446744073709551608UL,1UL,0x6FAD28EDB0697C6CL,1UL,18446744073709551608UL,1UL,0xF84D097735F1A498L,1UL},{1UL,18446744073709551608UL,1UL,0x6FAD28EDB0697C6CL,1UL,18446744073709551608UL,1UL,0xF84D097735F1A498L,1UL},{1UL,18446744073709551608UL,1UL,0x6FAD28EDB0697C6CL,1UL,18446744073709551608UL,1UL,0xF84D097735F1A498L,1UL},{1UL,18446744073709551608UL,1UL,0x6FAD28EDB0697C6CL,1UL,18446744073709551608UL,1UL,0xF84D097735F1A498L,1UL},{1UL,18446744073709551608UL,1UL,0x6FAD28EDB0697C6CL,1UL,18446744073709551608UL,1UL,0xF84D097735F1A498L,1UL},{1UL,18446744073709551608UL,1UL,0x6FAD28EDB0697C6CL,1UL,18446744073709551608UL,1UL,0xF84D097735F1A498L,1UL},{1UL,18446744073709551608UL,1UL,0x6FAD28EDB0697C6CL,1UL,18446744073709551608UL,1UL,0xF84D097735F1A498L,1UL}};
                int32_t l_848 = 2L;
                uint64_t l_849[8] = {0x4A5DC99F0D4075C4L,0xA5140CBDB3E2F848L,0x4A5DC99F0D4075C4L,0x4A5DC99F0D4075C4L,0xA5140CBDB3E2F848L,0x4A5DC99F0D4075C4L,0x4A5DC99F0D4075C4L,0xA5140CBDB3E2F848L};
                int i, j;
                (*p_3) = (safe_mod_func_uint32_t_u_u(1UL, ((-1L) ^ (safe_sub_func_int16_t_s_s((-8L), ((safe_rshift_func_int16_t_s_s((safe_sub_func_int32_t_s_s((safe_sub_func_int32_t_s_s((safe_sub_func_int8_t_s_s((safe_div_func_int8_t_s_s((((safe_mul_func_uint16_t_u_u((safe_mul_func_uint16_t_u_u((0x1AL >= l_811.x), l_835)), ((p_910->l_comm_values[(safe_mod_func_uint32_t_u_u(p_910->tid, 24))] && (*p_5)) > (safe_add_func_int16_t_s_s((safe_mod_func_int64_t_s_s((safe_add_func_int16_t_s_s((p_910->g_634.y = (!(safe_rshift_func_int8_t_s_s((*p_5), (*p_5))))), p_7)), l_812.s6)), p_7))))) , p_6) | p_7), 1L)), 0x78L)), p_7)), p_6)), l_847[2][5])) || 0x6A1382B4L))))));
                ++l_849[7];
            }
        }
    }
    else
    { /* block id: 379 */
        int16_t l_854 = 0L;
        int64_t *l_861 = (void*)0;
        int64_t *l_862 = (void*)0;
        int64_t *l_863 = (void*)0;
        int64_t *l_864 = (void*)0;
        int64_t *l_865[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
        uint16_t *l_877 = &p_910->g_117;
        int32_t l_884 = 0x6EA2E09FL;
        int32_t l_885 = (-1L);
        int32_t l_886 = 0x25D5773FL;
        int32_t l_887 = 0x2129F85BL;
        int32_t l_888 = 8L;
        int32_t l_891 = 0L;
        int32_t l_892 = 1L;
        int32_t l_895 = 2L;
        int32_t l_896 = 0x74B3B66AL;
        int32_t l_897[7][10][3] = {{{0x62C867A3L,0x165ABC88L,0L},{0x62C867A3L,0x165ABC88L,0L},{0x62C867A3L,0x165ABC88L,0L},{0x62C867A3L,0x165ABC88L,0L},{0x62C867A3L,0x165ABC88L,0L},{0x62C867A3L,0x165ABC88L,0L},{0x62C867A3L,0x165ABC88L,0L},{0x62C867A3L,0x165ABC88L,0L},{0x62C867A3L,0x165ABC88L,0L},{0x62C867A3L,0x165ABC88L,0L}},{{0x62C867A3L,0x165ABC88L,0L},{0x62C867A3L,0x165ABC88L,0L},{0x62C867A3L,0x165ABC88L,0L},{0x62C867A3L,0x165ABC88L,0L},{0x62C867A3L,0x165ABC88L,0L},{0x62C867A3L,0x165ABC88L,0L},{0x62C867A3L,0x165ABC88L,0L},{0x62C867A3L,0x165ABC88L,0L},{0x62C867A3L,0x165ABC88L,0L},{0x62C867A3L,0x165ABC88L,0L}},{{0x62C867A3L,0x165ABC88L,0L},{0x62C867A3L,0x165ABC88L,0L},{0x62C867A3L,0x165ABC88L,0L},{0x62C867A3L,0x165ABC88L,0L},{0x62C867A3L,0x165ABC88L,0L},{0x62C867A3L,0x165ABC88L,0L},{0x62C867A3L,0x165ABC88L,0L},{0x62C867A3L,0x165ABC88L,0L},{0x62C867A3L,0x165ABC88L,0L},{0x62C867A3L,0x165ABC88L,0L}},{{0x62C867A3L,0x165ABC88L,0L},{0x62C867A3L,0x165ABC88L,0L},{0x62C867A3L,0x165ABC88L,0L},{0x62C867A3L,0x165ABC88L,0L},{0x62C867A3L,0x165ABC88L,0L},{0x62C867A3L,0x165ABC88L,0L},{0x62C867A3L,0x165ABC88L,0L},{0x62C867A3L,0x165ABC88L,0L},{0x62C867A3L,0x165ABC88L,0L},{0x62C867A3L,0x165ABC88L,0L}},{{0x62C867A3L,0x165ABC88L,0L},{0x62C867A3L,0x165ABC88L,0L},{0x62C867A3L,0x165ABC88L,0L},{0x62C867A3L,0x165ABC88L,0L},{0x62C867A3L,0x165ABC88L,0L},{0x62C867A3L,0x165ABC88L,0L},{0x62C867A3L,0x165ABC88L,0L},{0x62C867A3L,0x165ABC88L,0L},{0x62C867A3L,0x165ABC88L,0L},{0x62C867A3L,0x165ABC88L,0L}},{{0x62C867A3L,0x165ABC88L,0L},{0x62C867A3L,0x165ABC88L,0L},{0x62C867A3L,0x165ABC88L,0L},{0x62C867A3L,0x165ABC88L,0L},{0x62C867A3L,0x165ABC88L,0L},{0x62C867A3L,0x165ABC88L,0L},{0x62C867A3L,0x165ABC88L,0L},{0x62C867A3L,0x165ABC88L,0L},{0x62C867A3L,0x165ABC88L,0L},{0x62C867A3L,0x165ABC88L,0L}},{{0x62C867A3L,0x165ABC88L,0L},{0x62C867A3L,0x165ABC88L,0L},{0x62C867A3L,0x165ABC88L,0L},{0x62C867A3L,0x165ABC88L,0L},{0x62C867A3L,0x165ABC88L,0L},{0x62C867A3L,0x165ABC88L,0L},{0x62C867A3L,0x165ABC88L,0L},{0x62C867A3L,0x165ABC88L,0L},{0x62C867A3L,0x165ABC88L,0L},{0x62C867A3L,0x165ABC88L,0L}}};
        int i, j, k;
        (*p_910->g_446) = p_4;
        p_910->g_883 = func_8((safe_sub_func_uint64_t_u_u((GROUP_DIVERGE(1, 1) < ((l_854 ^ (safe_sub_func_uint32_t_u_u(4294967295UL, ((safe_sub_func_int64_t_s_s((safe_mul_func_int16_t_s_s((((*l_559) = p_6) > (safe_mod_func_int8_t_s_s(((((VECTOR(int16_t, 8))(upsample(((VECTOR(int8_t, 8))(8L, 6L, 6L, (p_910->g_685.y < (safe_add_func_int16_t_s_s(0L, (safe_lshift_func_uint8_t_u_u(((safe_lshift_func_uint16_t_u_s(((((!(*p_3)) == (safe_mod_func_uint64_t_u_u(((&p_910->g_347 == (((*l_877) = ((VECTOR(uint16_t, 2))(l_876.sc1)).lo) , (void*)0)) ^ (((VECTOR(uint32_t, 2))(rhadd(((VECTOR(uint32_t, 4))(p_910->g_878.zzwx)).even, ((VECTOR(uint32_t, 2))(rotate(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(l_879.s18)).xyyy)).even, ((VECTOR(uint32_t, 16))(l_880.xzxzzzzyyyyyyxzz)).s34)))))).hi , ((((p_910->g_25 >= l_854) < l_854) <= p_910->g_132[0][1][0]) , (*p_4)))), 4UL))) , p_7) || 4UL), l_854)) == (**p_910->g_209)), 1))))), (-2L), ((VECTOR(int8_t, 2))((-1L))), 0x2EL)), ((VECTOR(uint8_t, 8))(3UL))))).s5 < l_881) , 0x77L), (*p_910->g_53)))), p_910->g_157.s3)), 0x74E6C52293C36649L)) < (*p_3))))) >= p_910->g_632.s0)), p_7)), p_910->l_comm_values[(safe_mod_func_uint32_t_u_u(p_910->tid, 24))], p_910->g_882[4][1][1], l_854, p_7, p_910);
        l_898++;
    }
    p_4 = p_4;
    return p_3;
}


/* ------------------------------------------ */
/* 
 * reads : p_910->g_538 p_910->g_188 p_910->g_200 p_910->g_169 p_910->g_527.f3 p_910->g_328.f3 p_910->g_453.f3
 * writes: p_910->g_188 p_910->g_169 p_910->g_527.f3 p_910->g_328.f3 p_910->g_453.f3
 */
int32_t * func_8(uint32_t  p_9, uint64_t  p_10, uint64_t  p_11, int64_t  p_12, int64_t  p_13, struct S2 * p_910)
{ /* block id: 278 */
    VECTOR(int32_t, 16) l_537 = (VECTOR(int32_t, 16))(6L, (VECTOR(int32_t, 4))(6L, (VECTOR(int32_t, 2))(6L, 0x46146A42L), 0x46146A42L), 0x46146A42L, 6L, 0x46146A42L, (VECTOR(int32_t, 2))(6L, 0x46146A42L), (VECTOR(int32_t, 2))(6L, 0x46146A42L), 6L, 0x46146A42L, 6L, 0x46146A42L);
    VECTOR(uint64_t, 2) l_545 = (VECTOR(uint64_t, 2))(0x2B50DD137B58B6E5L, 0xB2BD5BBBD1D20C5EL);
    uint32_t *l_549 = (void*)0;
    uint32_t *l_550 = &p_910->g_188;
    struct S0 *l_555 = (void*)0;
    int i;
    (*p_910->g_200) |= ((VECTOR(int32_t, 8))(0x4EDD95F2L, 0x2FCCBE66L, ((VECTOR(int32_t, 2))(hadd(((VECTOR(int32_t, 4))(mad_sat(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(l_537.sff931d25f85713bd)).s12)).yxyy, ((VECTOR(int32_t, 2))(max(((VECTOR(int32_t, 4))(p_910->g_538.xyyy)).even, (int32_t)(safe_lshift_func_uint8_t_u_u((((l_537.s3 > p_13) == (safe_sub_func_int32_t_s_s((safe_rshift_func_int8_t_s_s((((VECTOR(uint64_t, 16))(l_545.yyxxyyxyyyxyyxyx)).s1 ^ ((VECTOR(int64_t, 16))(7L, ((VECTOR(int64_t, 2))((-1L), 0x2352C9BF640F1EAFL)), (safe_sub_func_uint32_t_u_u(((*l_550) |= ((p_13 != 0x52A7L) || (safe_unary_minus_func_int16_t_s((-3L))))), ((void*)0 == l_550))), 1L, (safe_mod_func_int32_t_s_s(p_11, ((~(safe_mul_func_int16_t_s_s((l_555 == (void*)0), 7UL))) ^ 1UL))), 9L, ((VECTOR(int64_t, 4))(0x23362D9E8D6D43D1L)), 0x5D6D677B8B796F6FL, l_537.s1, ((VECTOR(int64_t, 2))(0x0923E5B786564F05L)), 0x555933D4CAE00610L)).sc), 4)), 0x9ADA7A46L))) ^ l_545.y), p_9))))).xyyx, ((VECTOR(int32_t, 4))((-1L)))))).hi, ((VECTOR(int32_t, 2))(0x3AD372BBL))))), 0x00616FD3L, 3L, 0x1E76D398L, 1L)).s0;
    return l_550;
}


/* ------------------------------------------ */
/* 
 * reads : p_910->g_209 p_910->g_210 p_910->g_73 p_910->g_511 p_910->g_132 p_910->g_352.f3 p_910->g_294 p_910->g_348.f2 p_910->g_525 p_910->g_53 p_910->g_54 p_910->g_157 p_910->g_129 p_910->g_193.f0 p_910->g_193.f3 p_910->g_133 p_910->g_530
 * writes: p_910->g_294 p_910->g_216 p_910->g_193.f1 p_910->g_54 p_910->g_73 p_910->g_193.f3 p_910->g_200
 */
int32_t  func_16(uint32_t  p_17, uint32_t  p_18, int8_t * p_19, int32_t  p_20, struct S2 * p_910)
{ /* block id: 272 */
    VECTOR(uint8_t, 16) l_510 = (VECTOR(uint8_t, 16))(0x44L, (VECTOR(uint8_t, 4))(0x44L, (VECTOR(uint8_t, 2))(0x44L, 0x03L), 0x03L), 0x03L, 0x44L, 0x03L, (VECTOR(uint8_t, 2))(0x44L, 0x03L), (VECTOR(uint8_t, 2))(0x44L, 0x03L), 0x44L, 0x03L, 0x44L, 0x03L);
    VECTOR(int8_t, 4) l_512 = (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x4BL), 0x4BL);
    uint8_t *l_515[1][3][3] = {{{&p_910->g_294,&p_910->g_294,&p_910->g_294},{&p_910->g_294,&p_910->g_294,&p_910->g_294},{&p_910->g_294,&p_910->g_294,&p_910->g_294}}};
    int32_t l_516 = 0x4CA926EDL;
    int32_t l_517[6] = {5L,5L,5L,5L,5L,5L};
    VECTOR(uint8_t, 2) l_524 = (VECTOR(uint8_t, 2))(0UL, 0xB8L);
    struct S0 *l_526 = &p_910->g_527;
    int8_t l_528[5] = {0x34L,0x34L,0x34L,0x34L,0x34L};
    int64_t *l_529 = &p_910->g_216;
    int32_t *l_531[8] = {&l_516,&p_910->g_25,&l_516,&l_516,&p_910->g_25,&l_516,&l_516,&p_910->g_25};
    uint32_t l_532 = 0xDC65B0CBL;
    int i, j, k;
    (*p_910->g_530) = func_46(&p_910->g_54, (((~(safe_sub_func_uint64_t_u_u((**p_910->g_209), (4L | ((safe_mod_func_uint8_t_u_u(((VECTOR(uint8_t, 16))(mad_sat(((VECTOR(uint8_t, 8))(246UL, 0xE0L, 0UL, ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(0xE2L, 0xA1L)), 0x55L, 0x20L)), 1UL)).s1755375256516505, ((VECTOR(uint8_t, 2))(2UL, 255UL)).xyyyyxxxxyyyxyyy, ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 8))(sub_sat(((VECTOR(uint8_t, 16))(l_510.s2887811ee6ca22e5)).odd, ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(p_910->g_511.yz)).xxxy)))).ywwxyxxz))))).s3611165216503154))).s8, ((VECTOR(int8_t, 2))(l_512.yw)).even)) & (safe_add_func_uint8_t_u_u(p_910->g_132[0][1][3], p_910->g_352[0][0][2].f3))))))) && ((*l_529) = (l_512.z != (((((--p_910->g_294) < (safe_mul_func_int16_t_s_s(p_910->g_348.f2, (safe_rshift_func_uint16_t_u_s(8UL, 8))))) < ((VECTOR(uint8_t, 2))(mad_sat(((VECTOR(uint8_t, 8))(l_524.xyyyyxxx)).s24, ((VECTOR(uint8_t, 8))(sub_sat(((VECTOR(uint8_t, 4))(safe_clamp_func(VECTOR(uint8_t, 4),VECTOR(uint8_t, 4),((VECTOR(uint8_t, 4))(add_sat(((VECTOR(uint8_t, 4))(abs(((VECTOR(uint8_t, 2))(hadd(((VECTOR(uint8_t, 4))(p_910->g_525.s5b0a)).odd, ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 8))(1UL, ((l_526 == l_526) || l_528[0]), ((VECTOR(uint8_t, 4))(0x4DL)), 0x97L, 255UL)).s1473207717407053)).s9f))).xxyy))), ((VECTOR(uint8_t, 4))(7UL))))), ((VECTOR(uint8_t, 4))(1UL)), ((VECTOR(uint8_t, 4))(2UL))))).wzxxywzy, ((VECTOR(uint8_t, 8))(0x5AL))))).s34, ((VECTOR(uint8_t, 2))(0x9EL))))).odd) | p_18) & FAKE_DIVERGE(p_910->group_1_offset, get_group_id(1), 10))))) >= 0x2AL), p_910);
    --l_532;
    return p_18;
}


/* ------------------------------------------ */
/* 
 * reads : p_910->g_25 p_910->g_53 p_910->g_54 p_910->g_75 p_910->g_30 p_910->g_95 p_910->g_128 p_910->g_133 p_910->g_136 p_910->g_137 p_910->g_142 p_910->g_157 p_910->g_129 p_910->g_117 p_910->g_169 p_910->g_132 p_910->g_190 p_910->g_191 p_910->g_193.f2 p_910->g_209 p_910->g_193.f3 p_910->g_216 p_910->g_193.f1 p_910->g_182 p_910->g_210 p_910->g_193.f0 p_910->g_297 p_910->g_73 p_910->g_191.f0 p_910->g_328 p_910->g_331 p_910->g_346 p_910->g_368 p_910->g_375 p_910->g_352.f3 p_910->g_390 p_910->g_347 p_910->g_348 p_910->g_446 p_910->g_448 p_910->g_475 p_910->g_476 p_910->g_294 p_910->g_352.f1 p_910->g_453.f3
 * writes: p_910->g_25 p_910->g_73 p_910->g_75 p_910->g_54 p_910->g_95 p_910->g_117 p_910->g_128 p_910->g_133 p_910->g_136 p_910->g_122 p_910->g_169 p_910->g_182 p_910->g_200 p_910->g_142.f3 p_910->g_193.f1 p_910->g_193.f3 p_910->g_216 p_910->g_368 p_910->g_352.f3 p_910->g_348 p_910->g_474
 */
uint32_t  func_31(uint8_t  p_32, uint16_t  p_33, uint8_t  p_34, uint32_t  p_35, struct S2 * p_910)
{ /* block id: 5 */
    VECTOR(int32_t, 8) l_38 = (VECTOR(int32_t, 8))(0x1124C6E1L, (VECTOR(int32_t, 4))(0x1124C6E1L, (VECTOR(int32_t, 2))(0x1124C6E1L, 0x5FD7F7FFL), 0x5FD7F7FFL), 0x5FD7F7FFL, 0x1124C6E1L, 0x5FD7F7FFL);
    int32_t *l_39 = &p_910->g_25;
    int64_t *l_170 = (void*)0;
    int64_t *l_171 = (void*)0;
    int64_t *l_172 = (void*)0;
    int32_t *l_181[1];
    VECTOR(int32_t, 8) l_481 = (VECTOR(int32_t, 8))(0x20DF3053L, (VECTOR(int32_t, 4))(0x20DF3053L, (VECTOR(int32_t, 2))(0x20DF3053L, (-3L)), (-3L)), (-3L), 0x20DF3053L, (-3L));
    int64_t *l_484[7][1];
    int8_t *l_493[7] = {&p_910->g_129[5],&p_910->g_129[5],&p_910->g_129[5],&p_910->g_129[5],&p_910->g_129[5],&p_910->g_129[5],&p_910->g_129[5]};
    int8_t **l_494 = &l_493[1];
    uint32_t l_499[5][4] = {{0xBA1757D1L,1UL,0xA9A6FF2DL,1UL},{0xBA1757D1L,1UL,0xA9A6FF2DL,1UL},{0xBA1757D1L,1UL,0xA9A6FF2DL,1UL},{0xBA1757D1L,1UL,0xA9A6FF2DL,1UL},{0xBA1757D1L,1UL,0xA9A6FF2DL,1UL}};
    uint64_t l_500 = 0xB5BED185B1106E0BL;
    int i, j;
    for (i = 0; i < 1; i++)
        l_181[i] = (void*)0;
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 1; j++)
            l_484[i][j] = &p_910->g_216;
    }
    (*l_39) ^= ((VECTOR(int32_t, 2))(l_38.s77)).hi;
    (*p_910->g_137) = func_40(func_46(func_49(p_910->g_53, func_55((!((safe_sub_func_int16_t_s_s((safe_lshift_func_uint16_t_u_u(0x5BD5L, 1)), FAKE_DIVERGE(p_910->local_1_offset, get_local_id(1), 10))) != (!(((*l_39) = (func_64(p_32, p_910) < p_32)) == 0UL)))), p_32, ((p_910->g_132[0][0][3] , (safe_div_func_int32_t_s_s((safe_sub_func_uint8_t_u_u((safe_rshift_func_int8_t_s_u(((p_910->g_182 = (safe_rshift_func_uint16_t_u_s((p_32 , p_32), p_32))) , p_33), p_32)), p_35)), p_32))) ^ 0x97D7L), &p_910->g_132[0][0][3], p_910), p_34, p_910), p_35, p_910), p_34, l_181[0], p_910->g_129[7], p_910->g_297.s4, p_910);
    l_500 = (((safe_add_func_uint16_t_u_u(((~((VECTOR(uint32_t, 2))(0xF7187AC9L, 0xEF2D6EE9L)).odd) && (0x5109C56BL > ((safe_mod_func_int32_t_s_s(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(add_sat(((VECTOR(int32_t, 8))(l_481.s15435610)), ((VECTOR(int32_t, 8))((p_910->g_193.f3 |= (safe_add_func_int64_t_s_s(((!((*l_39) = p_33)) , (safe_sub_func_int32_t_s_s(p_34, ((((*l_39) = (safe_sub_func_int32_t_s_s(p_33, ((~p_34) , (((l_499[3][3] = (safe_mod_func_uint64_t_u_u(((safe_mod_func_uint32_t_u_u((((*l_494) = l_493[1]) == (void*)0), 0x6DA1CAA5L)) | (safe_add_func_int32_t_s_s((safe_rshift_func_int16_t_s_s(p_34, p_910->g_294)), 0x2C947B2DL))), p_32))) > p_910->g_348.f0) <= 65526UL))))) == p_910->g_352[0][0][2].f1) < 0x75849BBD31F6FDC5L)))), 18446744073709551615UL))), ((VECTOR(int32_t, 2))(1L)), p_35, p_34, p_32, 0L, 0x232C149CL))))))).s6, p_32)) <= p_35))), p_34)) && 0xDBF22E75B3DF25A8L) && (*p_910->g_53));
    return p_910->g_453.f3;
}


/* ------------------------------------------ */
/* 
 * reads : p_910->g_182 p_910->g_53 p_910->g_54 p_910->g_169 p_910->g_210 p_910->g_73 p_910->g_191.f0 p_910->g_117 p_910->g_193.f1 p_910->g_216 p_910->g_328 p_910->g_331 p_910->g_346 p_910->g_193.f0 p_910->g_297 p_910->g_368 p_910->g_375 p_910->g_352.f3 p_910->g_390 p_910->g_75 p_910->g_347 p_910->g_348 p_910->g_446 p_910->g_448 p_910->g_475 p_910->g_476
 * writes: p_910->g_182 p_910->g_169 p_910->g_117 p_910->g_216 p_910->g_54 p_910->g_368 p_910->g_352.f3 p_910->g_75 p_910->g_200 p_910->g_348 p_910->g_474
 */
struct S0  func_40(int32_t * p_41, uint32_t  p_42, int32_t * p_43, int64_t  p_44, uint64_t  p_45, struct S2 * p_910)
{ /* block id: 147 */
    int32_t l_318 = 0x606A7D9DL;
    int32_t l_319 = 0x5D194FD1L;
    VECTOR(uint32_t, 8) l_340 = (VECTOR(uint32_t, 8))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 0xFC32BA81L), 0xFC32BA81L), 0xFC32BA81L, 4294967295UL, 0xFC32BA81L);
    VECTOR(int32_t, 16) l_345 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 1L), 1L), 1L, (-1L), 1L, (VECTOR(int32_t, 2))((-1L), 1L), (VECTOR(int32_t, 2))((-1L), 1L), (-1L), 1L, (-1L), 1L);
    uint32_t l_353 = 4294967295UL;
    int32_t l_356 = (-1L);
    int32_t l_363[7] = {0x2B19DE1AL,0x2B19DE1AL,0x2B19DE1AL,0x2B19DE1AL,0x2B19DE1AL,0x2B19DE1AL,0x2B19DE1AL};
    VECTOR(uint32_t, 8) l_379 = (VECTOR(uint32_t, 8))(0x35D9CB1DL, (VECTOR(uint32_t, 4))(0x35D9CB1DL, (VECTOR(uint32_t, 2))(0x35D9CB1DL, 0x4E5C12BEL), 0x4E5C12BEL), 0x4E5C12BEL, 0x35D9CB1DL, 0x4E5C12BEL);
    uint8_t l_401 = 255UL;
    int32_t *l_473 = &p_910->g_474;
    int i;
    for (p_910->g_182 = 0; (p_910->g_182 == (-3)); p_910->g_182--)
    { /* block id: 150 */
        int32_t l_304 = 0x41AA2878L;
        int8_t l_305[7];
        int8_t **l_317 = (void*)0;
        uint16_t *l_320 = &p_910->g_117;
        VECTOR(uint32_t, 4) l_342 = (VECTOR(uint32_t, 4))(0xDB344362L, (VECTOR(uint32_t, 2))(0xDB344362L, 0x8288692BL), 0x8288692BL);
        int32_t l_360 = 0x79BD78A4L;
        int32_t l_361 = 0L;
        int32_t l_362 = 0L;
        int32_t l_364 = 0x7047FC0EL;
        int32_t l_365 = 0x35B0CBCCL;
        int32_t l_366[6] = {1L,1L,1L,1L,1L,1L};
        VECTOR(int32_t, 16) l_376 = (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x4B79373DL), 0x4B79373DL), 0x4B79373DL, 0L, 0x4B79373DL, (VECTOR(int32_t, 2))(0L, 0x4B79373DL), (VECTOR(int32_t, 2))(0L, 0x4B79373DL), 0L, 0x4B79373DL, 0L, 0x4B79373DL);
        VECTOR(int16_t, 4) l_394 = (VECTOR(int16_t, 4))(0x24DEL, (VECTOR(int16_t, 2))(0x24DEL, 0x411AL), 0x411AL);
        int32_t **l_400 = &p_910->g_200;
        int i;
        for (i = 0; i < 7; i++)
            l_305[i] = (-3L);
        if ((l_304 | ((*l_320) ^= (((VECTOR(uint8_t, 16))((!(p_44 == l_305[4])), ((VECTOR(uint8_t, 4))(hadd(((VECTOR(uint8_t, 16))(abs(((VECTOR(int8_t, 8))((*p_910->g_53), ((l_319 = (safe_sub_func_int64_t_s_s(0x397FF54A15C8C227L, (safe_mul_func_uint8_t_u_u((safe_unary_minus_func_uint8_t_u(0x0AL)), ((VECTOR(int8_t, 8))((((((*p_41) = (*p_41)) & (safe_div_func_uint64_t_u_u((safe_sub_func_uint64_t_u_u(((safe_div_func_int16_t_s_s((((*p_910->g_53) , &p_910->g_53) == l_317), 65534UL)) , 0x7DBA10B856BF0404L), (*p_910->g_210))), p_910->g_191.f0))) < 0x698EB2AFL) & 0x59L), ((VECTOR(int8_t, 2))(0x32L)), p_45, 1L, l_318, (-3L), 0x49L)).s3))))) == p_44), (*p_910->g_53), l_304, 0x4FL, ((VECTOR(int8_t, 2))(0x4AL)), 0L)).s3217730422711450))).s4124, ((VECTOR(uint8_t, 4))(254UL))))), ((VECTOR(uint8_t, 2))(0x13L)), 251UL, 0xECL, ((VECTOR(uint8_t, 4))(0x55L)), ((VECTOR(uint8_t, 2))(0x0BL)), 1UL)).sb , p_42))))
        { /* block id: 154 */
            uint8_t l_325 = 1UL;
            VECTOR(uint32_t, 16) l_341 = (VECTOR(uint32_t, 16))(4294967287UL, (VECTOR(uint32_t, 4))(4294967287UL, (VECTOR(uint32_t, 2))(4294967287UL, 4294967286UL), 4294967286UL), 4294967286UL, 4294967287UL, 4294967286UL, (VECTOR(uint32_t, 2))(4294967287UL, 4294967286UL), (VECTOR(uint32_t, 2))(4294967287UL, 4294967286UL), 4294967287UL, 4294967286UL, 4294967287UL, 4294967286UL);
            struct S0 *l_351 = &p_910->g_352[0][0][2];
            struct S0 **l_350 = &l_351;
            struct S0 ***l_349 = &l_350;
            uint8_t *l_354 = (void*)0;
            int32_t l_355[8] = {(-9L),(-6L),(-9L),(-9L),(-6L),(-9L),(-9L),(-6L)};
            int32_t *l_357 = &p_910->g_169;
            int32_t *l_358 = &l_319;
            int32_t *l_359[8] = {&l_355[2],&p_910->g_182,&l_355[2],&l_355[2],&p_910->g_182,&l_355[2],&l_355[2],&p_910->g_182};
            int i;
            (*p_41) = (safe_add_func_int16_t_s_s((safe_add_func_int16_t_s_s(l_304, (l_325 = l_305[5]))), p_910->g_193.f1));
            for (p_910->g_216 = (-18); (p_910->g_216 <= (-5)); p_910->g_216++)
            { /* block id: 159 */
                if (l_304)
                    break;
                return p_910->g_328;
            }
            (*p_41) = (safe_lshift_func_int16_t_s_s((~(&l_318 != p_910->g_331)), (safe_mul_func_uint8_t_u_u((l_355[0] = (safe_mod_func_int16_t_s_s(p_45, (safe_sub_func_int32_t_s_s((safe_sub_func_int8_t_s_s((((l_353 = ((*p_910->g_53) = (((VECTOR(uint32_t, 2))(add_sat(((VECTOR(uint32_t, 4))(l_340.s3442)).lo, ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(mul_hi(((VECTOR(uint32_t, 4))(l_341.s8e43)).hi, ((VECTOR(uint32_t, 16))(l_342.ywwzxxyyxwwwzyxz)).s13))).yyyxyyxy)).s23))).even , (((p_44 , ((VECTOR(int8_t, 8))((safe_lshift_func_uint16_t_u_u(p_42, (((((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))((-1L), ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(l_345.s1c)).xyyy)), 0L, (-1L), (-1L))).lo)).w , p_910->g_346[0]) != ((*l_349) = (((p_910->g_193.f0 || p_42) | 8UL) , (void*)0))) == 0x161AEF18L))), (-5L), l_345.s6, (-8L), p_45, l_341.s4, 0x7AL, 0x1DL)).s2) , 65527UL) != p_910->g_297.s2)))) < l_305[4]) > 0x03F579C8L), 0x0EL)), l_340.s2))))), l_356))));
            p_910->g_368++;
        }
        else
        { /* block id: 169 */
            uint8_t l_371 = 0x3AL;
            int32_t *l_372 = &l_363[1];
            int32_t *l_373 = (void*)0;
            int32_t *l_374 = &l_366[1];
            uint32_t *l_380 = (void*)0;
            int32_t **l_381 = &l_374;
            (*p_910->g_375) &= ((*l_374) = ((*l_372) = ((*p_41) = l_371)));
            (*p_41) |= ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(l_376.s42)))).xyyx)).wyxzwzzz)).s35)).odd;
            (*l_374) = (*p_41);
            (*l_381) = p_41;
        }
        for (l_319 = 0; (l_319 == (-20)); l_319--)
        { /* block id: 181 */
            int8_t l_393 = 0x2AL;
            int32_t l_397 = 1L;
            atomic_and(&p_910->g_atomic_reduction[get_linear_group_id()], (safe_lshift_func_int8_t_s_s(((safe_rshift_func_int8_t_s_u((*p_910->g_53), ((0xD8FBA4E74F3CE3E6L & (safe_div_func_uint32_t_u_u(p_45, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(p_910->g_390.s20203316)).s02)).hi))) , p_42))) , 0x0FL), 6)) + get_linear_global_id());
            barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
            if (get_linear_local_id() == 0)
                p_910->v_collective += p_910->g_atomic_reduction[get_linear_group_id()];
            barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
            if (l_376.s2)
                break;
            if ((*p_41))
                continue;
            (*p_41) = (6L || ((safe_mul_func_uint8_t_u_u(l_393, (((VECTOR(int16_t, 8))(min(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(l_394.xy)), 0L, 0x496BL)).xyxzxzyy, ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(sub_sat(((VECTOR(int16_t, 16))((l_393 | (**p_910->g_209)), 0x5CDDL, 0x6695L, (-1L), (-1L), (((safe_mul_func_uint64_t_u_u(((**p_910->g_209)++), (&p_910->g_200 != (l_400 = &p_43)))) , (((0x70848E80L || (p_42 >= ((p_910->g_157.se == 0x0F99L) ^ 0UL))) & (*p_910->g_53)) || 1L)) != 0x2C7A3A40L), l_401, p_45, ((VECTOR(int16_t, 8))((-1L))))).se6, ((VECTOR(int16_t, 2))(0x0EEFL))))).odd, ((VECTOR(int16_t, 4))(0x52D0L)), ((VECTOR(int16_t, 2))((-1L))), 0x71B6L)).even)), ((VECTOR(int16_t, 4))(0x27D4L)), 4L, ((VECTOR(int16_t, 4))(0x3459L)), 0x0F79L, 0x2955L, 5L)).odd))).s0 >= l_356))) && p_910->g_328.f0));
        }
        if (l_379.s0)
            break;
    }
    for (p_910->g_75 = (-1); (p_910->g_75 == 7); p_910->g_75++)
    { /* block id: 193 */
        uint32_t l_440 = 1UL;
        struct S0 *l_452[1];
        struct S0 **l_451 = &l_452[0];
        int32_t l_461 = 0x558EC922L;
        int32_t l_462 = 7L;
        int i;
        for (i = 0; i < 1; i++)
            l_452[i] = &p_910->g_453;
        for (l_353 = 0; (l_353 != 35); ++l_353)
        { /* block id: 196 */
            if ((atomic_inc(&p_910->l_atomic_input[10]) == 7))
            { /* block id: 198 */
                int64_t l_406 = 0x6A93C5B79D906E41L;
                uint64_t l_407 = 0x246391254DD26A85L;
                int32_t *l_410 = (void*)0;
                int32_t l_412 = 0x68020F51L;
                int32_t *l_411 = &l_412;
                int32_t *l_413 = &l_412;
                int32_t l_414 = (-5L);
                int64_t l_434[10] = {0x1303A5AAC76E4D17L,0L,0x1ADE259A7E1DFB30L,0L,0x1303A5AAC76E4D17L,0x1303A5AAC76E4D17L,0L,0x1ADE259A7E1DFB30L,0L,0x1303A5AAC76E4D17L};
                int16_t l_435 = 4L;
                int i;
                l_407++;
                l_413 = (l_411 = (l_410 = (void*)0));
                if (l_414)
                { /* block id: 203 */
                    int32_t l_415 = 6L;
                    VECTOR(int32_t, 8) l_420 = (VECTOR(int32_t, 8))(0x6FC5A013L, (VECTOR(int32_t, 4))(0x6FC5A013L, (VECTOR(int32_t, 2))(0x6FC5A013L, 0x2365E5FDL), 0x2365E5FDL), 0x2365E5FDL, 0x6FC5A013L, 0x2365E5FDL);
                    VECTOR(int32_t, 2) l_421 = (VECTOR(int32_t, 2))(0x49C5073AL, 0x250FD147L);
                    int64_t l_422 = (-5L);
                    uint32_t l_423 = 0xDE009277L;
                    uint16_t l_424 = 0x485BL;
                    int i;
                    for (l_415 = (-1); (l_415 <= 8); l_415++)
                    { /* block id: 206 */
                        uint16_t l_418 = 0xCAC7L;
                        int64_t l_419[4][1][4] = {{{1L,1L,1L,1L}},{{1L,1L,1L,1L}},{{1L,1L,1L,1L}},{{1L,1L,1L,1L}}};
                        int i, j, k;
                        l_419[1][0][0] = l_418;
                    }
                    l_412 |= ((VECTOR(int32_t, 8))(max(((VECTOR(int32_t, 16))((-4L), ((VECTOR(int32_t, 2))(0x0126CA8BL, 0x6543DC6BL)), ((VECTOR(int32_t, 4))(l_420.s3700)), 0L, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(0x460881D1L, 0x6F4C14B4L)).xyyxyyyxxyyyyyyy)).s73)).odd, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(0x43899DF1L, 0L)))).yyyx)), ((VECTOR(int32_t, 2))(l_421.xx)).even, 0x56015E6FL, (-1L))).odd, (int32_t)l_422))).s2;
                    l_424 ^= l_423;
                }
                else
                { /* block id: 211 */
                    int32_t l_425 = 0L;
                    int32_t *l_433 = &l_425;
                    for (l_425 = (-24); (l_425 == (-16)); l_425++)
                    { /* block id: 214 */
                        int32_t l_428 = 8L;
                        struct S0 l_430[1] = {{7UL,-9L,0x1C945491L,0x16812D7EL}};
                        struct S0 *l_429[7][3];
                        struct S0 *l_431[4][2] = {{(void*)0,&l_430[0]},{(void*)0,&l_430[0]},{(void*)0,&l_430[0]},{(void*)0,&l_430[0]}};
                        struct S0 *l_432 = &l_430[0];
                        int i, j;
                        for (i = 0; i < 7; i++)
                        {
                            for (j = 0; j < 3; j++)
                                l_429[i][j] = &l_430[0];
                        }
                        l_414 = l_428;
                        l_432 = (l_431[2][1] = l_429[6][2]);
                    }
                    l_413 = l_433;
                }
                l_435 |= l_434[8];
                unsigned int result = 0;
                result += l_406;
                result += l_407;
                result += l_412;
                result += l_414;
                int l_434_i0;
                for (l_434_i0 = 0; l_434_i0 < 10; l_434_i0++) {
                    result += l_434[l_434_i0];
                }
                result += l_435;
                atomic_add(&p_910->l_special_values[10], result);
            }
            else
            { /* block id: 222 */
                (1 + 1);
            }
        }
        if ((&p_41 == &p_41))
        { /* block id: 226 */
            int8_t l_436 = 0x4BL;
            uint16_t l_437 = 1UL;
            int8_t *l_442[4][3][2] = {{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}}};
            int32_t l_463 = (-1L);
            int i, j, k;
            if (l_436)
            { /* block id: 227 */
                return (*p_910->g_347);
            }
            else
            { /* block id: 229 */
                uint32_t l_454[8][1][3] = {{{0x4468146BL,0xDC48AB64L,0x4468146BL}},{{0x4468146BL,0xDC48AB64L,0x4468146BL}},{{0x4468146BL,0xDC48AB64L,0x4468146BL}},{{0x4468146BL,0xDC48AB64L,0x4468146BL}},{{0x4468146BL,0xDC48AB64L,0x4468146BL}},{{0x4468146BL,0xDC48AB64L,0x4468146BL}},{{0x4468146BL,0xDC48AB64L,0x4468146BL}},{{0x4468146BL,0xDC48AB64L,0x4468146BL}}};
                int8_t *l_455[7][1][4] = {{{&p_910->g_453.f1,(void*)0,&p_910->g_328.f1,&p_910->g_132[0][0][3]}},{{&p_910->g_453.f1,(void*)0,&p_910->g_328.f1,&p_910->g_132[0][0][3]}},{{&p_910->g_453.f1,(void*)0,&p_910->g_328.f1,&p_910->g_132[0][0][3]}},{{&p_910->g_453.f1,(void*)0,&p_910->g_328.f1,&p_910->g_132[0][0][3]}},{{&p_910->g_453.f1,(void*)0,&p_910->g_328.f1,&p_910->g_132[0][0][3]}},{{&p_910->g_453.f1,(void*)0,&p_910->g_328.f1,&p_910->g_132[0][0][3]}},{{&p_910->g_453.f1,(void*)0,&p_910->g_328.f1,&p_910->g_132[0][0][3]}}};
                int32_t **l_469 = &p_910->g_200;
                int i, j, k;
                l_363[1] &= (+((*p_41) = (l_437 == 0x7BC0L)));
                for (l_356 = 0; (l_356 >= 11); l_356 = safe_add_func_int8_t_s_s(l_356, 1))
                { /* block id: 234 */
                    int8_t **l_443 = (void*)0;
                    int8_t **l_444 = &l_442[3][2][1];
                    int32_t l_447[8];
                    int i;
                    for (i = 0; i < 8; i++)
                        l_447[i] = 0x149208F5L;
                    (*p_910->g_446) = (l_440 , p_41);
                    (*p_910->g_347) = (l_447[6] , p_910->g_448);
                    p_43 = &l_447[7];
                }
                for (p_45 = 0; (p_45 > 38); ++p_45)
                { /* block id: 242 */
                    uint16_t l_464 = 65528UL;
                    int32_t *l_467 = &l_363[4];
                    int32_t **l_468 = &p_910->g_200;
                    for (p_910->g_54 = 0; (p_910->g_54 == 21); ++p_910->g_54)
                    { /* block id: 245 */
                        int32_t *l_460[2][6] = {{&p_910->g_25,&p_910->g_25,&p_910->g_25,&p_910->g_25,&p_910->g_25,&p_910->g_25},{&p_910->g_25,&p_910->g_25,&p_910->g_25,&p_910->g_25,&p_910->g_25,&p_910->g_25}};
                        int i, j;
                        --l_464;
                        if (l_461)
                            continue;
                        (*p_41) = (*p_41);
                    }
                    (*l_468) = l_467;
                }
                (*l_469) = &l_363[1];
            }
        }
        else
        { /* block id: 254 */
            int32_t l_470 = 1L;
            (*p_41) = l_470;
        }
    }
    (*p_41) = (safe_div_func_uint64_t_u_u(FAKE_DIVERGE(p_910->group_2_offset, get_group_id(2), 10), (((*l_473) = l_379.s3) , p_42)));
    (*p_910->g_475) &= (*p_41);
    return p_910->g_476;
}


/* ------------------------------------------ */
/* 
 * reads : p_910->g_193.f1 p_910->g_53 p_910->g_54 p_910->g_209 p_910->g_210 p_910->g_157 p_910->g_129 p_910->g_193.f0 p_910->g_193.f3 p_910->g_133
 * writes: p_910->g_193.f1 p_910->g_54 p_910->g_73 p_910->g_193.f3 p_910->g_200
 */
int32_t * func_46(int8_t * p_47, uint32_t  p_48, struct S2 * p_910)
{ /* block id: 83 */
    VECTOR(uint8_t, 4) l_273 = (VECTOR(uint8_t, 4))(0xA0L, (VECTOR(uint8_t, 2))(0xA0L, 253UL), 253UL);
    VECTOR(int64_t, 4) l_276 = (VECTOR(int64_t, 4))((-8L), (VECTOR(int64_t, 2))((-8L), 4L), 4L);
    int32_t l_278 = 0L;
    uint16_t *l_281 = (void*)0;
    int32_t l_295 = 0x37A331CBL;
    int i;
    for (p_910->g_193.f1 = (-1); (p_910->g_193.f1 <= 4); p_910->g_193.f1 = safe_add_func_uint8_t_u_u(p_910->g_193.f1, 8))
    { /* block id: 86 */
        int64_t *l_277[9][1];
        uint16_t *l_282[10][8] = {{&p_910->g_117,&p_910->g_122,(void*)0,&p_910->g_117,&p_910->g_117,&p_910->g_122,&p_910->g_122,&p_910->g_117},{&p_910->g_117,&p_910->g_122,(void*)0,&p_910->g_117,&p_910->g_117,&p_910->g_122,&p_910->g_122,&p_910->g_117},{&p_910->g_117,&p_910->g_122,(void*)0,&p_910->g_117,&p_910->g_117,&p_910->g_122,&p_910->g_122,&p_910->g_117},{&p_910->g_117,&p_910->g_122,(void*)0,&p_910->g_117,&p_910->g_117,&p_910->g_122,&p_910->g_122,&p_910->g_117},{&p_910->g_117,&p_910->g_122,(void*)0,&p_910->g_117,&p_910->g_117,&p_910->g_122,&p_910->g_122,&p_910->g_117},{&p_910->g_117,&p_910->g_122,(void*)0,&p_910->g_117,&p_910->g_117,&p_910->g_122,&p_910->g_122,&p_910->g_117},{&p_910->g_117,&p_910->g_122,(void*)0,&p_910->g_117,&p_910->g_117,&p_910->g_122,&p_910->g_122,&p_910->g_117},{&p_910->g_117,&p_910->g_122,(void*)0,&p_910->g_117,&p_910->g_117,&p_910->g_122,&p_910->g_122,&p_910->g_117},{&p_910->g_117,&p_910->g_122,(void*)0,&p_910->g_117,&p_910->g_117,&p_910->g_122,&p_910->g_122,&p_910->g_117},{&p_910->g_117,&p_910->g_122,(void*)0,&p_910->g_117,&p_910->g_117,&p_910->g_122,&p_910->g_122,&p_910->g_117}};
        uint8_t *l_293 = &p_910->g_294;
        uint8_t *l_296 = (void*)0;
        uint8_t *l_298[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int32_t l_299 = 0x425AD5DDL;
        int32_t l_300 = 0L;
        int32_t **l_301 = &p_910->g_200;
        int i, j;
        for (i = 0; i < 9; i++)
        {
            for (j = 0; j < 1; j++)
                l_277[i][j] = &p_910->g_216;
        }
        if ((atomic_inc(&p_910->g_atomic_input[20 * get_linear_group_id() + 18]) == 6))
        { /* block id: 88 */
            int32_t l_219[9] = {0L,0L,0L,0L,0L,0L,0L,0L,0L};
            uint16_t l_245 = 7UL;
            int i;
            for (l_219[6] = 0; (l_219[6] <= (-16)); l_219[6]--)
            { /* block id: 91 */
                int32_t l_222 = 0x30807B0CL;
                uint32_t l_230 = 4294967295UL;
                uint32_t l_231 = 0x13142440L;
                uint32_t l_232 = 4294967286UL;
                struct S0 l_243 = {0x7DC5E76BL,0x61L,0x1198AFD0L,1L};/* VOLATILE GLOBAL l_243 */
                struct S0 l_244[7][7] = {{{0xAB741B8BL,4L,-1L,0x02D8EADAL},{0x0211C2E6L,1L,0x07A698B2L,0L},{1UL,0L,0x539E8659L,0x74A4447EL},{0x00C46875L,5L,0x7EF3DCE3L,-1L},{1UL,0L,0x539E8659L,0x74A4447EL},{0x0211C2E6L,1L,0x07A698B2L,0L},{0xAB741B8BL,4L,-1L,0x02D8EADAL}},{{0xAB741B8BL,4L,-1L,0x02D8EADAL},{0x0211C2E6L,1L,0x07A698B2L,0L},{1UL,0L,0x539E8659L,0x74A4447EL},{0x00C46875L,5L,0x7EF3DCE3L,-1L},{1UL,0L,0x539E8659L,0x74A4447EL},{0x0211C2E6L,1L,0x07A698B2L,0L},{0xAB741B8BL,4L,-1L,0x02D8EADAL}},{{0xAB741B8BL,4L,-1L,0x02D8EADAL},{0x0211C2E6L,1L,0x07A698B2L,0L},{1UL,0L,0x539E8659L,0x74A4447EL},{0x00C46875L,5L,0x7EF3DCE3L,-1L},{1UL,0L,0x539E8659L,0x74A4447EL},{0x0211C2E6L,1L,0x07A698B2L,0L},{0xAB741B8BL,4L,-1L,0x02D8EADAL}},{{0xAB741B8BL,4L,-1L,0x02D8EADAL},{0x0211C2E6L,1L,0x07A698B2L,0L},{1UL,0L,0x539E8659L,0x74A4447EL},{0x00C46875L,5L,0x7EF3DCE3L,-1L},{1UL,0L,0x539E8659L,0x74A4447EL},{0x0211C2E6L,1L,0x07A698B2L,0L},{0xAB741B8BL,4L,-1L,0x02D8EADAL}},{{0xAB741B8BL,4L,-1L,0x02D8EADAL},{0x0211C2E6L,1L,0x07A698B2L,0L},{1UL,0L,0x539E8659L,0x74A4447EL},{0x00C46875L,5L,0x7EF3DCE3L,-1L},{1UL,0L,0x539E8659L,0x74A4447EL},{0x0211C2E6L,1L,0x07A698B2L,0L},{0xAB741B8BL,4L,-1L,0x02D8EADAL}},{{0xAB741B8BL,4L,-1L,0x02D8EADAL},{0x0211C2E6L,1L,0x07A698B2L,0L},{1UL,0L,0x539E8659L,0x74A4447EL},{0x00C46875L,5L,0x7EF3DCE3L,-1L},{1UL,0L,0x539E8659L,0x74A4447EL},{0x0211C2E6L,1L,0x07A698B2L,0L},{0xAB741B8BL,4L,-1L,0x02D8EADAL}},{{0xAB741B8BL,4L,-1L,0x02D8EADAL},{0x0211C2E6L,1L,0x07A698B2L,0L},{1UL,0L,0x539E8659L,0x74A4447EL},{0x00C46875L,5L,0x7EF3DCE3L,-1L},{1UL,0L,0x539E8659L,0x74A4447EL},{0x0211C2E6L,1L,0x07A698B2L,0L},{0xAB741B8BL,4L,-1L,0x02D8EADAL}}};
                int i, j;
                for (l_222 = (-20); (l_222 < (-7)); l_222++)
                { /* block id: 94 */
                    int32_t l_225 = 1L;
                    for (l_225 = 0; (l_225 <= 23); ++l_225)
                    { /* block id: 97 */
                        VECTOR(uint8_t, 8) l_228 = (VECTOR(uint8_t, 8))(0x6BL, (VECTOR(uint8_t, 4))(0x6BL, (VECTOR(uint8_t, 2))(0x6BL, 0UL), 0UL), 0UL, 0x6BL, 0UL);
                        uint32_t l_229 = 0xBC6ABA3EL;
                        int i;
                        l_229 = (((VECTOR(uint8_t, 16))(l_228.s2234727701000553)).s5 , 0x0E5491D3L);
                    }
                }
                if ((l_230 , (GROUP_DIVERGE(0, 1) , (l_232 = l_231))))
                { /* block id: 102 */
                    int32_t l_233 = 0x238A1068L;
                    for (l_233 = (-20); (l_233 == (-12)); ++l_233)
                    { /* block id: 105 */
                        uint16_t l_236 = 0x0A6FL;
                        struct S0 l_239[10][10] = {{{0x084EC389L,0x0AL,1L,0x47CCD354L},{0x1F15DC8CL,3L,0x4A945547L,0x387112B9L},{1UL,0x38L,0x48545C8CL,0x426E526AL},{0x3555BB47L,0x7CL,0L,0x1AA79E07L},{0x8AB577FEL,0x6DL,0x3AA0988EL,7L},{0x084EC389L,0x0AL,1L,0x47CCD354L},{0x3555BB47L,0x7CL,0L,0x1AA79E07L},{4294967295UL,0x05L,0x2C87C860L,0x7C4C534EL},{0x3555BB47L,0x7CL,0L,0x1AA79E07L},{0x084EC389L,0x0AL,1L,0x47CCD354L}},{{0x084EC389L,0x0AL,1L,0x47CCD354L},{0x1F15DC8CL,3L,0x4A945547L,0x387112B9L},{1UL,0x38L,0x48545C8CL,0x426E526AL},{0x3555BB47L,0x7CL,0L,0x1AA79E07L},{0x8AB577FEL,0x6DL,0x3AA0988EL,7L},{0x084EC389L,0x0AL,1L,0x47CCD354L},{0x3555BB47L,0x7CL,0L,0x1AA79E07L},{4294967295UL,0x05L,0x2C87C860L,0x7C4C534EL},{0x3555BB47L,0x7CL,0L,0x1AA79E07L},{0x084EC389L,0x0AL,1L,0x47CCD354L}},{{0x084EC389L,0x0AL,1L,0x47CCD354L},{0x1F15DC8CL,3L,0x4A945547L,0x387112B9L},{1UL,0x38L,0x48545C8CL,0x426E526AL},{0x3555BB47L,0x7CL,0L,0x1AA79E07L},{0x8AB577FEL,0x6DL,0x3AA0988EL,7L},{0x084EC389L,0x0AL,1L,0x47CCD354L},{0x3555BB47L,0x7CL,0L,0x1AA79E07L},{4294967295UL,0x05L,0x2C87C860L,0x7C4C534EL},{0x3555BB47L,0x7CL,0L,0x1AA79E07L},{0x084EC389L,0x0AL,1L,0x47CCD354L}},{{0x084EC389L,0x0AL,1L,0x47CCD354L},{0x1F15DC8CL,3L,0x4A945547L,0x387112B9L},{1UL,0x38L,0x48545C8CL,0x426E526AL},{0x3555BB47L,0x7CL,0L,0x1AA79E07L},{0x8AB577FEL,0x6DL,0x3AA0988EL,7L},{0x084EC389L,0x0AL,1L,0x47CCD354L},{0x3555BB47L,0x7CL,0L,0x1AA79E07L},{4294967295UL,0x05L,0x2C87C860L,0x7C4C534EL},{0x3555BB47L,0x7CL,0L,0x1AA79E07L},{0x084EC389L,0x0AL,1L,0x47CCD354L}},{{0x084EC389L,0x0AL,1L,0x47CCD354L},{0x1F15DC8CL,3L,0x4A945547L,0x387112B9L},{1UL,0x38L,0x48545C8CL,0x426E526AL},{0x3555BB47L,0x7CL,0L,0x1AA79E07L},{0x8AB577FEL,0x6DL,0x3AA0988EL,7L},{0x084EC389L,0x0AL,1L,0x47CCD354L},{0x3555BB47L,0x7CL,0L,0x1AA79E07L},{4294967295UL,0x05L,0x2C87C860L,0x7C4C534EL},{0x3555BB47L,0x7CL,0L,0x1AA79E07L},{0x084EC389L,0x0AL,1L,0x47CCD354L}},{{0x084EC389L,0x0AL,1L,0x47CCD354L},{0x1F15DC8CL,3L,0x4A945547L,0x387112B9L},{1UL,0x38L,0x48545C8CL,0x426E526AL},{0x3555BB47L,0x7CL,0L,0x1AA79E07L},{0x8AB577FEL,0x6DL,0x3AA0988EL,7L},{0x084EC389L,0x0AL,1L,0x47CCD354L},{0x3555BB47L,0x7CL,0L,0x1AA79E07L},{4294967295UL,0x05L,0x2C87C860L,0x7C4C534EL},{0x3555BB47L,0x7CL,0L,0x1AA79E07L},{0x084EC389L,0x0AL,1L,0x47CCD354L}},{{0x084EC389L,0x0AL,1L,0x47CCD354L},{0x1F15DC8CL,3L,0x4A945547L,0x387112B9L},{1UL,0x38L,0x48545C8CL,0x426E526AL},{0x3555BB47L,0x7CL,0L,0x1AA79E07L},{0x8AB577FEL,0x6DL,0x3AA0988EL,7L},{0x084EC389L,0x0AL,1L,0x47CCD354L},{0x3555BB47L,0x7CL,0L,0x1AA79E07L},{4294967295UL,0x05L,0x2C87C860L,0x7C4C534EL},{0x3555BB47L,0x7CL,0L,0x1AA79E07L},{0x084EC389L,0x0AL,1L,0x47CCD354L}},{{0x084EC389L,0x0AL,1L,0x47CCD354L},{0x1F15DC8CL,3L,0x4A945547L,0x387112B9L},{1UL,0x38L,0x48545C8CL,0x426E526AL},{0x3555BB47L,0x7CL,0L,0x1AA79E07L},{0x8AB577FEL,0x6DL,0x3AA0988EL,7L},{0x084EC389L,0x0AL,1L,0x47CCD354L},{0x3555BB47L,0x7CL,0L,0x1AA79E07L},{4294967295UL,0x05L,0x2C87C860L,0x7C4C534EL},{0x3555BB47L,0x7CL,0L,0x1AA79E07L},{0x084EC389L,0x0AL,1L,0x47CCD354L}},{{0x084EC389L,0x0AL,1L,0x47CCD354L},{0x1F15DC8CL,3L,0x4A945547L,0x387112B9L},{1UL,0x38L,0x48545C8CL,0x426E526AL},{0x3555BB47L,0x7CL,0L,0x1AA79E07L},{0x8AB577FEL,0x6DL,0x3AA0988EL,7L},{0x084EC389L,0x0AL,1L,0x47CCD354L},{0x3555BB47L,0x7CL,0L,0x1AA79E07L},{4294967295UL,0x05L,0x2C87C860L,0x7C4C534EL},{0x3555BB47L,0x7CL,0L,0x1AA79E07L},{0x084EC389L,0x0AL,1L,0x47CCD354L}},{{0x084EC389L,0x0AL,1L,0x47CCD354L},{0x1F15DC8CL,3L,0x4A945547L,0x387112B9L},{1UL,0x38L,0x48545C8CL,0x426E526AL},{0x3555BB47L,0x7CL,0L,0x1AA79E07L},{0x8AB577FEL,0x6DL,0x3AA0988EL,7L},{0x084EC389L,0x0AL,1L,0x47CCD354L},{0x3555BB47L,0x7CL,0L,0x1AA79E07L},{4294967295UL,0x05L,0x2C87C860L,0x7C4C534EL},{0x3555BB47L,0x7CL,0L,0x1AA79E07L},{0x084EC389L,0x0AL,1L,0x47CCD354L}}};
                        uint8_t l_240 = 255UL;
                        VECTOR(int32_t, 2) l_241 = (VECTOR(int32_t, 2))(1L, 0x1248A85CL);
                        uint32_t l_242[4][8] = {{2UL,4294967294UL,2UL,2UL,4294967294UL,2UL,2UL,4294967294UL},{2UL,4294967294UL,2UL,2UL,4294967294UL,2UL,2UL,4294967294UL},{2UL,4294967294UL,2UL,2UL,4294967294UL,2UL,2UL,4294967294UL},{2UL,4294967294UL,2UL,2UL,4294967294UL,2UL,2UL,4294967294UL}};
                        int i, j;
                        l_236--;
                        l_222 ^= (l_239[2][3] , l_240);
                        l_242[2][3] = (l_222 = ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(l_241.xxxyxyxy)))).s6);
                    }
                }
                else
                { /* block id: 111 */
                    l_222 &= ((VECTOR(int32_t, 2))((-1L), 0x02586CC2L)).hi;
                }
                l_244[1][2] = l_243;
            }
            if (l_245)
            { /* block id: 116 */
                uint64_t l_246 = 0x88CA57585B5AE068L;
                int16_t l_247 = 4L;
                struct S0 l_248 = {0xDD5B9C65L,0x18L,1L,-1L};/* VOLATILE GLOBAL l_248 */
                struct S0 l_249 = {0x9933C14AL,0L,0L,0x6C4407F4L};/* VOLATILE GLOBAL l_249 */
                l_249 = ((l_247 |= l_246) , l_248);
            }
            else
            { /* block id: 119 */
                int32_t l_250 = 0x59D0C1D5L;
                for (l_250 = 0; (l_250 > (-10)); --l_250)
                { /* block id: 122 */
                    int32_t l_253[2][1][10] = {{{(-9L),0x6A8A35C7L,0x0DB3185AL,0x6A8A35C7L,(-9L),(-9L),0x6A8A35C7L,0x0DB3185AL,0x6A8A35C7L,(-9L)}},{{(-9L),0x6A8A35C7L,0x0DB3185AL,0x6A8A35C7L,(-9L),(-9L),0x6A8A35C7L,0x0DB3185AL,0x6A8A35C7L,(-9L)}}};
                    VECTOR(int32_t, 2) l_258 = (VECTOR(int32_t, 2))(0x24488A8AL, 0x55A1878CL);
                    VECTOR(int32_t, 2) l_259 = (VECTOR(int32_t, 2))(0L, 0x04C55312L);
                    uint32_t l_260 = 0xCE2EB244L;
                    VECTOR(int32_t, 2) l_261 = (VECTOR(int32_t, 2))((-4L), 1L);
                    int32_t *l_262 = &l_253[0][0][5];
                    int i, j, k;
                    for (l_253[0][0][5] = 16; (l_253[0][0][5] == (-5)); l_253[0][0][5]--)
                    { /* block id: 125 */
                        int32_t l_257 = (-1L);
                        int32_t *l_256 = &l_257;
                        l_256 = (void*)0;
                        l_219[6] ^= 0x4F3017F1L;
                    }
                    l_219[5] = ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(0x4D925332L, (l_253[0][0][0] = ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(l_258.yxxyxxyx)).lo)).w), ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(l_259.yxyxxyxy)).even)), 0x55EF6E4DL, l_260, 2L, 0L, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(l_261.yyyx)).odd)), (-1L), 0x4EE0769AL, (-7L), 2L)).s30)).even;
                    l_262 = l_262;
                }
            }
            unsigned int result = 0;
            int l_219_i0;
            for (l_219_i0 = 0; l_219_i0 < 9; l_219_i0++) {
                result += l_219[l_219_i0];
            }
            result += l_245;
            atomic_add(&p_910->g_special_values[20 * get_linear_group_id() + 18], result);
        }
        else
        { /* block id: 134 */
            (1 + 1);
        }
        (*l_301) = (((((((safe_lshift_func_int16_t_s_s((((safe_mod_func_uint8_t_u_u((safe_sub_func_uint8_t_u_u(((((safe_mod_func_uint8_t_u_u((safe_add_func_uint64_t_u_u(((**p_910->g_209) = ((~p_48) <= ((((*p_47) = (*p_910->g_53)) != ((VECTOR(uint8_t, 4))(l_273.wwwx)).z) ^ FAKE_DIVERGE(p_910->local_1_offset, get_local_id(1), 10)))), p_48)), (safe_rshift_func_int8_t_s_u((p_910->g_157.s7 >= ((+(p_910->g_193.f3 &= ((((l_278 = ((VECTOR(int64_t, 16))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 8))(l_276.yzxwwxxz)).s44)))).yyyyxxyxyyyxxxyx)).sa) && (safe_mod_func_uint8_t_u_u(((((((l_281 == l_282[4][7]) ^ (((safe_mod_func_uint8_t_u_u(p_48, (safe_sub_func_int64_t_s_s(((~(safe_lshift_func_uint8_t_u_u((((VECTOR(int64_t, 8))(mul_hi(((VECTOR(int64_t, 16))(rotate(((VECTOR(int64_t, 2))(mad_sat(((VECTOR(int64_t, 4))(0x63DB50818E70DCB5L, (safe_mul_func_uint8_t_u_u((l_299 &= (((safe_mul_func_uint8_t_u_u(((*l_293) = p_910->g_136.f3), l_295)) && 4294967295UL) != p_48)), p_48)), (-1L), 0x6832EED427E3807DL)).lo, ((VECTOR(int64_t, 2))(0x7B3CF3B66BF3DB48L)), ((VECTOR(int64_t, 2))(1L))))).yxxyxyxyyyxyxxxy, ((VECTOR(int64_t, 16))(3L))))).even, ((VECTOR(int64_t, 8))(0x501596AA2BB1F575L))))).s4 , 1UL), p_910->g_129[4]))) && 2L), 0x5710E5DD26EA70BEL)))) > l_278) > l_278)) , 0x64D4L) && FAKE_DIVERGE(p_910->local_1_offset, get_local_id(1), 10)) < p_910->g_193.f0) | l_276.z), p_48))) <= 0x49D64FC424E79B49L) != FAKE_DIVERGE(p_910->local_0_offset, get_local_id(0), 10)))) | p_48)), 1)))) || p_48) , p_48) < p_48), p_910->g_133)), p_48)) ^ l_300) , l_278), p_48)) ^ FAKE_DIVERGE(p_910->global_2_offset, get_global_id(2), 10)) >= p_48) > l_273.z) != p_48) , 65535UL) , &l_299);
        (*l_301) = &l_278;
    }
    return &p_910->g_169;
}


/* ------------------------------------------ */
/* 
 * reads : p_910->g_142.f3 p_910->g_193.f2 p_910->g_133 p_910->g_209 p_910->g_53 p_910->g_54 p_910->g_128 p_910->g_193.f3 p_910->g_216 p_910->g_193.f1 p_910->g_182
 * writes: p_910->g_182 p_910->g_142.f3
 */
int8_t * func_49(int8_t * p_50, int8_t * p_51, uint16_t  p_52, struct S2 * p_910)
{ /* block id: 77 */
    int8_t l_203 = 0x36L;
    int32_t *l_204 = (void*)0;
    int32_t *l_205[8][4] = {{&p_910->g_193.f3,&p_910->g_182,&p_910->g_193.f3,&p_910->g_193.f3},{&p_910->g_193.f3,&p_910->g_182,&p_910->g_193.f3,&p_910->g_193.f3},{&p_910->g_193.f3,&p_910->g_182,&p_910->g_193.f3,&p_910->g_193.f3},{&p_910->g_193.f3,&p_910->g_182,&p_910->g_193.f3,&p_910->g_193.f3},{&p_910->g_193.f3,&p_910->g_182,&p_910->g_193.f3,&p_910->g_193.f3},{&p_910->g_193.f3,&p_910->g_182,&p_910->g_193.f3,&p_910->g_193.f3},{&p_910->g_193.f3,&p_910->g_182,&p_910->g_193.f3,&p_910->g_193.f3},{&p_910->g_193.f3,&p_910->g_182,&p_910->g_193.f3,&p_910->g_193.f3}};
    VECTOR(int32_t, 8) l_206 = (VECTOR(int32_t, 8))(8L, (VECTOR(int32_t, 4))(8L, (VECTOR(int32_t, 2))(8L, 0x38E9E02AL), 0x38E9E02AL), 0x38E9E02AL, 8L, 0x38E9E02AL);
    VECTOR(int8_t, 8) l_211 = (VECTOR(int8_t, 8))((-3L), (VECTOR(int8_t, 4))((-3L), (VECTOR(int8_t, 2))((-3L), 0x0AL), 0x0AL), 0x0AL, (-3L), 0x0AL);
    uint8_t l_214 = 0x09L;
    int8_t l_215 = 0L;
    int i, j;
    p_910->g_182 = l_203;
    p_910->g_142.f3 ^= ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(l_206.s2303)))).z;
    p_910->g_182 ^= ((((p_910->g_193.f2 >= (safe_mod_func_int32_t_s_s(p_910->g_133, (((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(0x53653626L, (p_910->g_209 == &p_910->g_210), (((VECTOR(int8_t, 2))(mul_hi(((VECTOR(int8_t, 4))(0L, (((*p_910->g_53) < GROUP_DIVERGE(0, 1)) | 0xB74DL), (-3L), 0x66L)).even, ((VECTOR(int8_t, 8))(l_211.s07201440)).s01))).lo , (l_215 = ((safe_mod_func_uint8_t_u_u((p_910->g_128 >= (p_52 || l_214)), p_52)) || p_910->g_193.f3))), ((VECTOR(int32_t, 2))(0x023F291EL)), 1L, p_52, p_910->g_216, p_52, ((VECTOR(int32_t, 4))(0L)), ((VECTOR(int32_t, 2))(0x38BE1AEAL)), 0x5D862F89L)).sdf)).lo , (-8L))))) >= p_910->g_193.f1) < p_52) >= 0x81F1820D9AE06E58L);
    return p_50;
}


/* ------------------------------------------ */
/* 
 * reads : p_910->g_128 p_910->g_190 p_910->g_191 p_910->g_169
 * writes: p_910->g_128 p_910->g_169 p_910->g_200
 */
int8_t * func_55(uint32_t  p_56, int64_t  p_57, uint32_t  p_58, int8_t * p_59, struct S2 * p_910)
{ /* block id: 61 */
    int32_t *l_197[5][9] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
    int32_t **l_201[2];
    int32_t *l_202 = (void*)0;
    int i, j;
    for (i = 0; i < 2; i++)
        l_201[i] = (void*)0;
    for (p_910->g_128 = 12; (p_910->g_128 <= 27); p_910->g_128++)
    { /* block id: 64 */
        int32_t *l_185 = (void*)0;
        int32_t *l_186 = &p_910->g_169;
        struct S0 *l_192[8][2] = {{&p_910->g_193,&p_910->g_193},{&p_910->g_193,&p_910->g_193},{&p_910->g_193,&p_910->g_193},{&p_910->g_193,&p_910->g_193},{&p_910->g_193,&p_910->g_193},{&p_910->g_193,&p_910->g_193},{&p_910->g_193,&p_910->g_193},{&p_910->g_193,&p_910->g_193}};
        struct S0 **l_194 = (void*)0;
        struct S0 **l_195 = &l_192[2][0];
        VECTOR(uint8_t, 16) l_196 = (VECTOR(uint8_t, 16))(0x92L, (VECTOR(uint8_t, 4))(0x92L, (VECTOR(uint8_t, 2))(0x92L, 6UL), 6UL), 6UL, 0x92L, 6UL, (VECTOR(uint8_t, 2))(0x92L, 6UL), (VECTOR(uint8_t, 2))(0x92L, 6UL), 0x92L, 6UL, 0x92L, 6UL);
        int i, j;
        (*l_186) = 1L;
        if (p_56)
        { /* block id: 66 */
            return &p_910->g_129[4];
        }
        else
        { /* block id: 68 */
            uint32_t *l_187[9] = {(void*)0,&p_910->g_188,(void*)0,(void*)0,&p_910->g_188,(void*)0,(void*)0,&p_910->g_188,(void*)0};
            int32_t l_189 = 8L;
            int i;
            atomic_max(&p_910->g_atomic_reduction[get_linear_group_id()], (0xDFDE9DF1BF41CA89L <= (0x61482281L | (((p_57 ^ 0UL) || ((void*)0 != l_187[4])) , l_189))) + get_linear_global_id());
            barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
            if (get_linear_local_id() == 0)
                p_910->v_collective += p_910->g_atomic_reduction[get_linear_group_id()];
            barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        }
        (*l_186) &= ((p_910->g_190 , p_910->g_191) , ((((*l_195) = l_192[0][1]) != (void*)0) > ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(l_196.sdb291124)).s23)).xxxyyyxy)).s4));
    }
    p_910->g_200 = l_197[0][2];
    l_202 = l_197[0][3];
    return p_59;
}


/* ------------------------------------------ */
/* 
 * reads : p_910->g_53 p_910->g_54 p_910->g_75 p_910->g_30 p_910->g_25 p_910->g_95 p_910->g_128 p_910->g_133 p_910->g_136 p_910->g_137 p_910->g_142 p_910->g_157 p_910->g_129 p_910->g_117 p_910->g_169
 * writes: p_910->g_73 p_910->g_75 p_910->g_25 p_910->g_54 p_910->g_95 p_910->g_117 p_910->g_128 p_910->g_133 p_910->g_136 p_910->g_122 p_910->g_169
 */
int8_t  func_64(uint8_t  p_65, struct S2 * p_910)
{ /* block id: 7 */
    uint32_t l_70 = 0xA133A5B7L;
    int32_t *l_71 = (void*)0;
    uint64_t *l_72 = &p_910->g_73;
    uint64_t *l_74[7][7] = {{&p_910->g_75,&p_910->g_75,&p_910->g_75,&p_910->g_75,&p_910->g_75,&p_910->g_75,&p_910->g_75},{&p_910->g_75,&p_910->g_75,&p_910->g_75,&p_910->g_75,&p_910->g_75,&p_910->g_75,&p_910->g_75},{&p_910->g_75,&p_910->g_75,&p_910->g_75,&p_910->g_75,&p_910->g_75,&p_910->g_75,&p_910->g_75},{&p_910->g_75,&p_910->g_75,&p_910->g_75,&p_910->g_75,&p_910->g_75,&p_910->g_75,&p_910->g_75},{&p_910->g_75,&p_910->g_75,&p_910->g_75,&p_910->g_75,&p_910->g_75,&p_910->g_75,&p_910->g_75},{&p_910->g_75,&p_910->g_75,&p_910->g_75,&p_910->g_75,&p_910->g_75,&p_910->g_75,&p_910->g_75},{&p_910->g_75,&p_910->g_75,&p_910->g_75,&p_910->g_75,&p_910->g_75,&p_910->g_75,&p_910->g_75}};
    int32_t l_127 = 0x296CD894L;
    int64_t *l_145 = (void*)0;
    int64_t *l_146 = (void*)0;
    int64_t *l_147 = (void*)0;
    int64_t *l_148 = (void*)0;
    int64_t *l_149 = (void*)0;
    int64_t *l_150 = (void*)0;
    int64_t *l_151 = (void*)0;
    int64_t *l_152[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    uint8_t l_153 = 251UL;
    int8_t *l_155 = &p_910->g_128;
    int8_t **l_154 = &l_155;
    int8_t *l_156 = &p_910->g_132[0][0][3];
    uint32_t *l_160 = &l_70;
    uint16_t *l_165 = &p_910->g_122;
    uint16_t *l_166 = &p_910->g_117;
    int32_t *l_167 = &p_910->g_25;
    int32_t *l_168 = &p_910->g_169;
    int i, j;
    p_910->g_25 = ((safe_mod_func_int32_t_s_s((safe_rshift_func_int16_t_s_s(((((+((*p_910->g_53) <= l_70)) ^ (l_71 == ((p_910->g_75 &= ((*l_72) = p_65)) , &p_910->g_25))) , p_910->g_30.x) && (((l_74[2][2] != l_74[2][2]) , ((((safe_lshift_func_uint8_t_u_s(((safe_sub_func_int16_t_s_s(p_910->g_30.z, 0x0950L)) & p_65), 2)) <= l_70) || p_65) < p_910->g_54)) != p_65)), p_910->g_25)), 0x11C1AAD5L)) == 247UL);
    for (p_910->g_25 = 0; (p_910->g_25 >= 5); p_910->g_25 = safe_add_func_int8_t_s_s(p_910->g_25, 7))
    { /* block id: 13 */
        uint32_t l_84[9] = {0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL};
        int32_t l_89 = 0x48FA0D63L;
        uint32_t l_124 = 0xB9B4FE2EL;
        uint64_t *l_126 = &p_910->g_75;
        int32_t l_130 = (-10L);
        int i;
        for (p_910->g_73 = 18; (p_910->g_73 != 20); ++p_910->g_73)
        { /* block id: 16 */
            int32_t *l_115 = &l_89;
            l_84[6] ^= 0L;
            for (p_910->g_54 = 0; (p_910->g_54 < (-27)); p_910->g_54--)
            { /* block id: 20 */
                int32_t *l_90 = (void*)0;
                int32_t *l_91 = &l_89;
                int32_t *l_92 = &l_89;
                int32_t *l_93 = (void*)0;
                int32_t *l_94[5] = {&l_89,&l_89,&l_89,&l_89,&l_89};
                int i;
                if ((atomic_inc(&p_910->l_atomic_input[17]) == 9))
                { /* block id: 22 */
                    uint32_t l_87 = 4294967287UL;
                    l_87 = 0x3EC6B4E2L;
                    unsigned int result = 0;
                    result += l_87;
                    atomic_add(&p_910->l_special_values[17], result);
                }
                else
                { /* block id: 24 */
                    (1 + 1);
                }
                p_910->g_95--;
                for (p_910->g_75 = 0; (p_910->g_75 != 25); p_910->g_75 = safe_add_func_int8_t_s_s(p_910->g_75, 1))
                { /* block id: 30 */
                    VECTOR(int16_t, 16) l_114 = (VECTOR(int16_t, 16))((-2L), (VECTOR(int16_t, 4))((-2L), (VECTOR(int16_t, 2))((-2L), 0x1381L), 0x1381L), 0x1381L, (-2L), 0x1381L, (VECTOR(int16_t, 2))((-2L), 0x1381L), (VECTOR(int16_t, 2))((-2L), 0x1381L), (-2L), 0x1381L, (-2L), 0x1381L);
                    uint16_t *l_123 = (void*)0;
                    int i;
                    for (l_70 = 0; (l_70 <= 49); l_70 = safe_add_func_int8_t_s_s(l_70, 2))
                    { /* block id: 33 */
                        uint16_t *l_116 = &p_910->g_117;
                        uint16_t *l_121 = &p_910->g_122;
                        uint16_t **l_120[4] = {&l_121,&l_121,&l_121,&l_121};
                        uint64_t **l_125 = &l_74[1][1];
                        int i;
                        l_124 ^= ((safe_lshift_func_int16_t_s_u((safe_mod_func_uint8_t_u_u((safe_div_func_int32_t_s_s(p_910->g_75, ((safe_mul_func_uint16_t_u_u(65535UL, (safe_div_func_uint16_t_u_u(((*l_116) = (safe_add_func_int16_t_s_s(((VECTOR(int16_t, 2))(l_114.sdc)).even, (((void*)0 == &p_910->g_75) != (&p_910->g_25 == l_115))))), (safe_add_func_int8_t_s_s((*p_910->g_53), (l_116 == (l_123 = l_116)))))))) , p_910->g_54))), (-5L))), p_910->g_75)) >= (*l_115));
                        p_910->g_128 &= (l_127 = ((*l_92) |= (((*l_125) = &p_910->g_73) == l_126)));
                    }
                    p_910->g_133--;
                }
            }
        }
        (*p_910->g_137) = p_910->g_136;
        if (p_65)
            continue;
    }
    (*l_168) &= ((*l_167) |= ((safe_mul_func_int8_t_s_s(((*p_910->g_53) ^= (safe_rshift_func_uint8_t_u_s((((!(p_910->g_142 , (safe_mod_func_int64_t_s_s((l_127 = 1L), (p_65 , l_153))))) , (((*l_154) = (void*)0) == (l_156 = &p_910->g_129[4]))) | ((VECTOR(int64_t, 2))(p_910->g_157.sab)).hi), (safe_lshift_func_uint16_t_u_u(0x1699L, (((*l_166) = ((*l_165) = (((*l_160) = 1UL) >= ((((((safe_add_func_uint8_t_u_u(FAKE_DIVERGE(p_910->global_1_offset, get_global_id(1), 10), ((safe_mod_func_int32_t_s_s(((p_910->g_129[4] , l_71) == (void*)0), 4294967288UL)) >= p_910->g_157.s9))) & p_65) > 0x38L) <= p_910->g_117) & (-7L)) < 0x3480L)))) , l_153)))))), 0x44L)) < l_153));
    return (*p_910->g_53);
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global volatile int *g_atomic_reduction, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[20];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 20; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[20];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 20; i++)
            l_special_values[i] = 0;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    __local int64_t l_comm_values[24];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 24; i++)
            l_comm_values[i] = 1;
    struct S2 c_911;
    struct S2* p_910 = &c_911;
    struct S2 c_912 = {
        0x493876A4L, // p_910->g_25
        (VECTOR(uint32_t, 4))(0xB4B26D8FL, (VECTOR(uint32_t, 2))(0xB4B26D8FL, 4294967295UL), 4294967295UL), // p_910->g_30
        0x06L, // p_910->g_54
        &p_910->g_54, // p_910->g_53
        0x73DD60280E44E384L, // p_910->g_73
        0x60517E40D8EB8A80L, // p_910->g_75
        (-3L), // p_910->g_88
        0x12E2L, // p_910->g_95
        1UL, // p_910->g_117
        0xF20FL, // p_910->g_122
        0x6CL, // p_910->g_128
        {0x72L,(-1L),0x72L,0x72L,(-1L),0x72L,0x72L,(-1L)}, // p_910->g_129
        0x57L, // p_910->g_131
        {{{0x6AL,8L,0x6AL,0x6AL},{0x6AL,8L,0x6AL,0x6AL},{0x6AL,8L,0x6AL,0x6AL},{0x6AL,8L,0x6AL,0x6AL},{0x6AL,8L,0x6AL,0x6AL},{0x6AL,8L,0x6AL,0x6AL},{0x6AL,8L,0x6AL,0x6AL},{0x6AL,8L,0x6AL,0x6AL},{0x6AL,8L,0x6AL,0x6AL}}}, // p_910->g_132
        0x3408E2242FA0D639L, // p_910->g_133
        {4294967291UL,-5L,1L,0x0F15219CL}, // p_910->g_136
        &p_910->g_136, // p_910->g_137
        {4294967286UL,-2L,1L,0x2C8AADDFL}, // p_910->g_142
        (VECTOR(int64_t, 16))(0x4D89ECE45356EB84L, (VECTOR(int64_t, 4))(0x4D89ECE45356EB84L, (VECTOR(int64_t, 2))(0x4D89ECE45356EB84L, (-1L)), (-1L)), (-1L), 0x4D89ECE45356EB84L, (-1L), (VECTOR(int64_t, 2))(0x4D89ECE45356EB84L, (-1L)), (VECTOR(int64_t, 2))(0x4D89ECE45356EB84L, (-1L)), 0x4D89ECE45356EB84L, (-1L), 0x4D89ECE45356EB84L, (-1L)), // p_910->g_157
        2L, // p_910->g_169
        (-4L), // p_910->g_182
        4294967290UL, // p_910->g_188
        {18446744073709551611UL}, // p_910->g_190
        {0x0D4B936DA785FE2EL}, // p_910->g_191
        {0UL,-1L,1L,-8L}, // p_910->g_193
        (void*)0, // p_910->g_198
        (void*)0, // p_910->g_199
        (void*)0, // p_910->g_200
        &p_910->g_73, // p_910->g_210
        &p_910->g_210, // p_910->g_209
        0x41D09C81770C5B0BL, // p_910->g_216
        255UL, // p_910->g_294
        (VECTOR(uint8_t, 8))(9UL, (VECTOR(uint8_t, 4))(9UL, (VECTOR(uint8_t, 2))(9UL, 0x7CL), 0x7CL), 0x7CL, 9UL, 0x7CL), // p_910->g_297
        {0xF9EE888DL,1L,-10L,0x028811F8L}, // p_910->g_328
        &p_910->g_328.f3, // p_910->g_331
        {4294967295UL,0x4BL,-2L,0x4BB1F648L}, // p_910->g_348
        &p_910->g_348, // p_910->g_347
        {&p_910->g_347,&p_910->g_347,&p_910->g_347}, // p_910->g_346
        {{{{0xEF8654FCL,0x19L,1L,9L},{0x444969DDL,9L,0x69AFB1C5L,0x41E83EE8L},{4294967295UL,-8L,6L,1L},{0x444969DDL,9L,0x69AFB1C5L,0x41E83EE8L},{0xEF8654FCL,0x19L,1L,9L},{0xEF8654FCL,0x19L,1L,9L},{0x444969DDL,9L,0x69AFB1C5L,0x41E83EE8L},{4294967295UL,-8L,6L,1L},{0x444969DDL,9L,0x69AFB1C5L,0x41E83EE8L},{0xEF8654FCL,0x19L,1L,9L}},{{0xEF8654FCL,0x19L,1L,9L},{0x444969DDL,9L,0x69AFB1C5L,0x41E83EE8L},{4294967295UL,-8L,6L,1L},{0x444969DDL,9L,0x69AFB1C5L,0x41E83EE8L},{0xEF8654FCL,0x19L,1L,9L},{0xEF8654FCL,0x19L,1L,9L},{0x444969DDL,9L,0x69AFB1C5L,0x41E83EE8L},{4294967295UL,-8L,6L,1L},{0x444969DDL,9L,0x69AFB1C5L,0x41E83EE8L},{0xEF8654FCL,0x19L,1L,9L}},{{0xEF8654FCL,0x19L,1L,9L},{0x444969DDL,9L,0x69AFB1C5L,0x41E83EE8L},{4294967295UL,-8L,6L,1L},{0x444969DDL,9L,0x69AFB1C5L,0x41E83EE8L},{0xEF8654FCL,0x19L,1L,9L},{0xEF8654FCL,0x19L,1L,9L},{0x444969DDL,9L,0x69AFB1C5L,0x41E83EE8L},{4294967295UL,-8L,6L,1L},{0x444969DDL,9L,0x69AFB1C5L,0x41E83EE8L},{0xEF8654FCL,0x19L,1L,9L}},{{0xEF8654FCL,0x19L,1L,9L},{0x444969DDL,9L,0x69AFB1C5L,0x41E83EE8L},{4294967295UL,-8L,6L,1L},{0x444969DDL,9L,0x69AFB1C5L,0x41E83EE8L},{0xEF8654FCL,0x19L,1L,9L},{0xEF8654FCL,0x19L,1L,9L},{0x444969DDL,9L,0x69AFB1C5L,0x41E83EE8L},{4294967295UL,-8L,6L,1L},{0x444969DDL,9L,0x69AFB1C5L,0x41E83EE8L},{0xEF8654FCL,0x19L,1L,9L}},{{0xEF8654FCL,0x19L,1L,9L},{0x444969DDL,9L,0x69AFB1C5L,0x41E83EE8L},{4294967295UL,-8L,6L,1L},{0x444969DDL,9L,0x69AFB1C5L,0x41E83EE8L},{0xEF8654FCL,0x19L,1L,9L},{0xEF8654FCL,0x19L,1L,9L},{0x444969DDL,9L,0x69AFB1C5L,0x41E83EE8L},{4294967295UL,-8L,6L,1L},{0x444969DDL,9L,0x69AFB1C5L,0x41E83EE8L},{0xEF8654FCL,0x19L,1L,9L}},{{0xEF8654FCL,0x19L,1L,9L},{0x444969DDL,9L,0x69AFB1C5L,0x41E83EE8L},{4294967295UL,-8L,6L,1L},{0x444969DDL,9L,0x69AFB1C5L,0x41E83EE8L},{0xEF8654FCL,0x19L,1L,9L},{0xEF8654FCL,0x19L,1L,9L},{0x444969DDL,9L,0x69AFB1C5L,0x41E83EE8L},{4294967295UL,-8L,6L,1L},{0x444969DDL,9L,0x69AFB1C5L,0x41E83EE8L},{0xEF8654FCL,0x19L,1L,9L}},{{0xEF8654FCL,0x19L,1L,9L},{0x444969DDL,9L,0x69AFB1C5L,0x41E83EE8L},{4294967295UL,-8L,6L,1L},{0x444969DDL,9L,0x69AFB1C5L,0x41E83EE8L},{0xEF8654FCL,0x19L,1L,9L},{0xEF8654FCL,0x19L,1L,9L},{0x444969DDL,9L,0x69AFB1C5L,0x41E83EE8L},{4294967295UL,-8L,6L,1L},{0x444969DDL,9L,0x69AFB1C5L,0x41E83EE8L},{0xEF8654FCL,0x19L,1L,9L}},{{0xEF8654FCL,0x19L,1L,9L},{0x444969DDL,9L,0x69AFB1C5L,0x41E83EE8L},{4294967295UL,-8L,6L,1L},{0x444969DDL,9L,0x69AFB1C5L,0x41E83EE8L},{0xEF8654FCL,0x19L,1L,9L},{0xEF8654FCL,0x19L,1L,9L},{0x444969DDL,9L,0x69AFB1C5L,0x41E83EE8L},{4294967295UL,-8L,6L,1L},{0x444969DDL,9L,0x69AFB1C5L,0x41E83EE8L},{0xEF8654FCL,0x19L,1L,9L}},{{0xEF8654FCL,0x19L,1L,9L},{0x444969DDL,9L,0x69AFB1C5L,0x41E83EE8L},{4294967295UL,-8L,6L,1L},{0x444969DDL,9L,0x69AFB1C5L,0x41E83EE8L},{0xEF8654FCL,0x19L,1L,9L},{0xEF8654FCL,0x19L,1L,9L},{0x444969DDL,9L,0x69AFB1C5L,0x41E83EE8L},{4294967295UL,-8L,6L,1L},{0x444969DDL,9L,0x69AFB1C5L,0x41E83EE8L},{0xEF8654FCL,0x19L,1L,9L}},{{0xEF8654FCL,0x19L,1L,9L},{0x444969DDL,9L,0x69AFB1C5L,0x41E83EE8L},{4294967295UL,-8L,6L,1L},{0x444969DDL,9L,0x69AFB1C5L,0x41E83EE8L},{0xEF8654FCL,0x19L,1L,9L},{0xEF8654FCL,0x19L,1L,9L},{0x444969DDL,9L,0x69AFB1C5L,0x41E83EE8L},{4294967295UL,-8L,6L,1L},{0x444969DDL,9L,0x69AFB1C5L,0x41E83EE8L},{0xEF8654FCL,0x19L,1L,9L}}}}, // p_910->g_352
        0x78E7L, // p_910->g_367
        0xB43176BFL, // p_910->g_368
        &p_910->g_352[0][0][2].f3, // p_910->g_375
        (VECTOR(uint32_t, 2))(4294967295UL, 4294967295UL), // p_910->g_378
        (VECTOR(int32_t, 8))(0x155D4CCAL, (VECTOR(int32_t, 4))(0x155D4CCAL, (VECTOR(int32_t, 2))(0x155D4CCAL, 0x12B66C0BL), 0x12B66C0BL), 0x12B66C0BL, 0x155D4CCAL, 0x12B66C0BL), // p_910->g_390
        {0x5347BC196C296BDFL}, // p_910->g_441
        (void*)0, // p_910->g_445
        &p_910->g_200, // p_910->g_446
        {0x2D26409FL,-7L,0x5736E5A0L,1L}, // p_910->g_448
        {0xCD8B2FD6L,0x76L,0L,6L}, // p_910->g_453
        4L, // p_910->g_474
        &p_910->g_352[0][0][2].f3, // p_910->g_475
        {0xA1A720BDL,1L,0x3781D605L,-2L}, // p_910->g_476
        (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 0x18L), 0x18L), // p_910->g_511
        (VECTOR(uint8_t, 16))(2UL, (VECTOR(uint8_t, 4))(2UL, (VECTOR(uint8_t, 2))(2UL, 0x1CL), 0x1CL), 0x1CL, 2UL, 0x1CL, (VECTOR(uint8_t, 2))(2UL, 0x1CL), (VECTOR(uint8_t, 2))(2UL, 0x1CL), 2UL, 0x1CL, 2UL, 0x1CL), // p_910->g_525
        {0x08E09C9DL,-1L,0x57C87512L,0x7526983BL}, // p_910->g_527
        &p_910->g_200, // p_910->g_530
        (VECTOR(int32_t, 2))((-1L), 0x60504E0FL), // p_910->g_538
        {{{&p_910->g_328.f3,&p_910->g_527.f3,&p_910->g_328.f3,&p_910->g_328.f3,&p_910->g_527.f3,&p_910->g_328.f3},{&p_910->g_328.f3,&p_910->g_527.f3,&p_910->g_328.f3,&p_910->g_328.f3,&p_910->g_527.f3,&p_910->g_328.f3},{&p_910->g_328.f3,&p_910->g_527.f3,&p_910->g_328.f3,&p_910->g_328.f3,&p_910->g_527.f3,&p_910->g_328.f3},{&p_910->g_328.f3,&p_910->g_527.f3,&p_910->g_328.f3,&p_910->g_328.f3,&p_910->g_527.f3,&p_910->g_328.f3},{&p_910->g_328.f3,&p_910->g_527.f3,&p_910->g_328.f3,&p_910->g_328.f3,&p_910->g_527.f3,&p_910->g_328.f3},{&p_910->g_328.f3,&p_910->g_527.f3,&p_910->g_328.f3,&p_910->g_328.f3,&p_910->g_527.f3,&p_910->g_328.f3}}}, // p_910->g_556
        {4UL,0x62L,1L,0L}, // p_910->g_566
        (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x08L), 0x08L), 0x08L, 1L, 0x08L), // p_910->g_572
        {0xEB0F7E47157A7DF4L}, // p_910->g_582
        (VECTOR(int32_t, 4))(8L, (VECTOR(int32_t, 2))(8L, (-1L)), (-1L)), // p_910->g_586
        {{&p_910->g_200,(void*)0},{&p_910->g_200,(void*)0},{&p_910->g_200,(void*)0},{&p_910->g_200,(void*)0},{&p_910->g_200,(void*)0}}, // p_910->g_606
        {0UL,-1L,0L,-1L}, // p_910->g_612
        (VECTOR(int64_t, 8))(0L, (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 1L), 1L), 1L, 0L, 1L), // p_910->g_615
        (VECTOR(int16_t, 16))(0x143FL, (VECTOR(int16_t, 4))(0x143FL, (VECTOR(int16_t, 2))(0x143FL, (-8L)), (-8L)), (-8L), 0x143FL, (-8L), (VECTOR(int16_t, 2))(0x143FL, (-8L)), (VECTOR(int16_t, 2))(0x143FL, (-8L)), 0x143FL, (-8L), 0x143FL, (-8L)), // p_910->g_632
        (VECTOR(int16_t, 16))(0x691FL, (VECTOR(int16_t, 4))(0x691FL, (VECTOR(int16_t, 2))(0x691FL, 0x7381L), 0x7381L), 0x7381L, 0x691FL, 0x7381L, (VECTOR(int16_t, 2))(0x691FL, 0x7381L), (VECTOR(int16_t, 2))(0x691FL, 0x7381L), 0x691FL, 0x7381L, 0x691FL, 0x7381L), // p_910->g_633
        (VECTOR(int16_t, 4))(0x16BFL, (VECTOR(int16_t, 2))(0x16BFL, 0x26EDL), 0x26EDL), // p_910->g_634
        (VECTOR(int16_t, 2))(0L, 0x7C66L), // p_910->g_635
        (VECTOR(int16_t, 8))(0x0CABL, (VECTOR(int16_t, 4))(0x0CABL, (VECTOR(int16_t, 2))(0x0CABL, 0x5BB6L), 0x5BB6L), 0x5BB6L, 0x0CABL, 0x5BB6L), // p_910->g_636
        4294967295UL, // p_910->g_639
        0xF4F49B13L, // p_910->g_640
        4294967290UL, // p_910->g_641
        0UL, // p_910->g_642
        0x83B74BA2L, // p_910->g_643
        1UL, // p_910->g_644
        {{&p_910->g_641,&p_910->g_639,&p_910->g_639,&p_910->g_641,&p_910->g_641,&p_910->g_639,&p_910->g_639,&p_910->g_641},{&p_910->g_641,&p_910->g_639,&p_910->g_639,&p_910->g_641,&p_910->g_641,&p_910->g_639,&p_910->g_639,&p_910->g_641},{&p_910->g_641,&p_910->g_639,&p_910->g_639,&p_910->g_641,&p_910->g_641,&p_910->g_639,&p_910->g_639,&p_910->g_641}}, // p_910->g_638
        &p_910->g_638[1][0], // p_910->g_637
        (VECTOR(uint8_t, 4))(0x8AL, (VECTOR(uint8_t, 2))(0x8AL, 0x0EL), 0x0EL), // p_910->g_667
        (VECTOR(uint16_t, 2))(0x5BC0L, 0x2CACL), // p_910->g_685
        (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, (-1L)), (-1L)), (-1L), 1L, (-1L)), // p_910->g_709
        (VECTOR(int8_t, 4))(0x5BL, (VECTOR(int8_t, 2))(0x5BL, (-1L)), (-1L)), // p_910->g_710
        {0x4CDA965C20C31BF1L}, // p_910->g_712
        {0x7D3F92B6L,0x0DL,0x695AE1B6L,-1L}, // p_910->g_748
        (VECTOR(int64_t, 8))(3L, (VECTOR(int64_t, 4))(3L, (VECTOR(int64_t, 2))(3L, 0x032503DA1EF12425L), 0x032503DA1EF12425L), 0x032503DA1EF12425L, 3L, 0x032503DA1EF12425L), // p_910->g_790
        (VECTOR(int64_t, 16))(0x5BD034199AF277C0L, (VECTOR(int64_t, 4))(0x5BD034199AF277C0L, (VECTOR(int64_t, 2))(0x5BD034199AF277C0L, 0x2EC572423B78B646L), 0x2EC572423B78B646L), 0x2EC572423B78B646L, 0x5BD034199AF277C0L, 0x2EC572423B78B646L, (VECTOR(int64_t, 2))(0x5BD034199AF277C0L, 0x2EC572423B78B646L), (VECTOR(int64_t, 2))(0x5BD034199AF277C0L, 0x2EC572423B78B646L), 0x5BD034199AF277C0L, 0x2EC572423B78B646L, 0x5BD034199AF277C0L, 0x2EC572423B78B646L), // p_910->g_791
        (VECTOR(uint32_t, 4))(4294967287UL, (VECTOR(uint32_t, 2))(4294967287UL, 1UL), 1UL), // p_910->g_878
        {{{(-1L),7L,0x48L,0x30L},{(-1L),7L,0x48L,0x30L},{(-1L),7L,0x48L,0x30L},{(-1L),7L,0x48L,0x30L},{(-1L),7L,0x48L,0x30L},{(-1L),7L,0x48L,0x30L}},{{(-1L),7L,0x48L,0x30L},{(-1L),7L,0x48L,0x30L},{(-1L),7L,0x48L,0x30L},{(-1L),7L,0x48L,0x30L},{(-1L),7L,0x48L,0x30L},{(-1L),7L,0x48L,0x30L}},{{(-1L),7L,0x48L,0x30L},{(-1L),7L,0x48L,0x30L},{(-1L),7L,0x48L,0x30L},{(-1L),7L,0x48L,0x30L},{(-1L),7L,0x48L,0x30L},{(-1L),7L,0x48L,0x30L}},{{(-1L),7L,0x48L,0x30L},{(-1L),7L,0x48L,0x30L},{(-1L),7L,0x48L,0x30L},{(-1L),7L,0x48L,0x30L},{(-1L),7L,0x48L,0x30L},{(-1L),7L,0x48L,0x30L}},{{(-1L),7L,0x48L,0x30L},{(-1L),7L,0x48L,0x30L},{(-1L),7L,0x48L,0x30L},{(-1L),7L,0x48L,0x30L},{(-1L),7L,0x48L,0x30L},{(-1L),7L,0x48L,0x30L}},{{(-1L),7L,0x48L,0x30L},{(-1L),7L,0x48L,0x30L},{(-1L),7L,0x48L,0x30L},{(-1L),7L,0x48L,0x30L},{(-1L),7L,0x48L,0x30L},{(-1L),7L,0x48L,0x30L}}}, // p_910->g_882
        (void*)0, // p_910->g_883
        0, // p_910->v_collective
        sequence_input[get_global_id(0)], // p_910->global_0_offset
        sequence_input[get_global_id(1)], // p_910->global_1_offset
        sequence_input[get_global_id(2)], // p_910->global_2_offset
        sequence_input[get_local_id(0)], // p_910->local_0_offset
        sequence_input[get_local_id(1)], // p_910->local_1_offset
        sequence_input[get_local_id(2)], // p_910->local_2_offset
        sequence_input[get_group_id(0)], // p_910->group_0_offset
        sequence_input[get_group_id(1)], // p_910->group_1_offset
        sequence_input[get_group_id(2)], // p_910->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 24)), permutations[0][get_linear_local_id()])), // p_910->tid
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_911 = c_912;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_910);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_910->g_25, "p_910->g_25", print_hash_value);
    transparent_crc(p_910->g_30.x, "p_910->g_30.x", print_hash_value);
    transparent_crc(p_910->g_30.y, "p_910->g_30.y", print_hash_value);
    transparent_crc(p_910->g_30.z, "p_910->g_30.z", print_hash_value);
    transparent_crc(p_910->g_30.w, "p_910->g_30.w", print_hash_value);
    transparent_crc(p_910->g_54, "p_910->g_54", print_hash_value);
    transparent_crc(p_910->g_73, "p_910->g_73", print_hash_value);
    transparent_crc(p_910->g_75, "p_910->g_75", print_hash_value);
    transparent_crc(p_910->g_88, "p_910->g_88", print_hash_value);
    transparent_crc(p_910->g_95, "p_910->g_95", print_hash_value);
    transparent_crc(p_910->g_117, "p_910->g_117", print_hash_value);
    transparent_crc(p_910->g_122, "p_910->g_122", print_hash_value);
    transparent_crc(p_910->g_128, "p_910->g_128", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_910->g_129[i], "p_910->g_129[i]", print_hash_value);

    }
    transparent_crc(p_910->g_131, "p_910->g_131", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_910->g_132[i][j][k], "p_910->g_132[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_910->g_133, "p_910->g_133", print_hash_value);
    transparent_crc(p_910->g_136.f0, "p_910->g_136.f0", print_hash_value);
    transparent_crc(p_910->g_136.f1, "p_910->g_136.f1", print_hash_value);
    transparent_crc(p_910->g_136.f2, "p_910->g_136.f2", print_hash_value);
    transparent_crc(p_910->g_136.f3, "p_910->g_136.f3", print_hash_value);
    transparent_crc(p_910->g_142.f0, "p_910->g_142.f0", print_hash_value);
    transparent_crc(p_910->g_142.f1, "p_910->g_142.f1", print_hash_value);
    transparent_crc(p_910->g_142.f2, "p_910->g_142.f2", print_hash_value);
    transparent_crc(p_910->g_142.f3, "p_910->g_142.f3", print_hash_value);
    transparent_crc(p_910->g_157.s0, "p_910->g_157.s0", print_hash_value);
    transparent_crc(p_910->g_157.s1, "p_910->g_157.s1", print_hash_value);
    transparent_crc(p_910->g_157.s2, "p_910->g_157.s2", print_hash_value);
    transparent_crc(p_910->g_157.s3, "p_910->g_157.s3", print_hash_value);
    transparent_crc(p_910->g_157.s4, "p_910->g_157.s4", print_hash_value);
    transparent_crc(p_910->g_157.s5, "p_910->g_157.s5", print_hash_value);
    transparent_crc(p_910->g_157.s6, "p_910->g_157.s6", print_hash_value);
    transparent_crc(p_910->g_157.s7, "p_910->g_157.s7", print_hash_value);
    transparent_crc(p_910->g_157.s8, "p_910->g_157.s8", print_hash_value);
    transparent_crc(p_910->g_157.s9, "p_910->g_157.s9", print_hash_value);
    transparent_crc(p_910->g_157.sa, "p_910->g_157.sa", print_hash_value);
    transparent_crc(p_910->g_157.sb, "p_910->g_157.sb", print_hash_value);
    transparent_crc(p_910->g_157.sc, "p_910->g_157.sc", print_hash_value);
    transparent_crc(p_910->g_157.sd, "p_910->g_157.sd", print_hash_value);
    transparent_crc(p_910->g_157.se, "p_910->g_157.se", print_hash_value);
    transparent_crc(p_910->g_157.sf, "p_910->g_157.sf", print_hash_value);
    transparent_crc(p_910->g_169, "p_910->g_169", print_hash_value);
    transparent_crc(p_910->g_182, "p_910->g_182", print_hash_value);
    transparent_crc(p_910->g_188, "p_910->g_188", print_hash_value);
    transparent_crc(p_910->g_190.f0, "p_910->g_190.f0", print_hash_value);
    transparent_crc(p_910->g_191.f0, "p_910->g_191.f0", print_hash_value);
    transparent_crc(p_910->g_193.f0, "p_910->g_193.f0", print_hash_value);
    transparent_crc(p_910->g_193.f1, "p_910->g_193.f1", print_hash_value);
    transparent_crc(p_910->g_193.f2, "p_910->g_193.f2", print_hash_value);
    transparent_crc(p_910->g_193.f3, "p_910->g_193.f3", print_hash_value);
    transparent_crc(p_910->g_216, "p_910->g_216", print_hash_value);
    transparent_crc(p_910->g_294, "p_910->g_294", print_hash_value);
    transparent_crc(p_910->g_297.s0, "p_910->g_297.s0", print_hash_value);
    transparent_crc(p_910->g_297.s1, "p_910->g_297.s1", print_hash_value);
    transparent_crc(p_910->g_297.s2, "p_910->g_297.s2", print_hash_value);
    transparent_crc(p_910->g_297.s3, "p_910->g_297.s3", print_hash_value);
    transparent_crc(p_910->g_297.s4, "p_910->g_297.s4", print_hash_value);
    transparent_crc(p_910->g_297.s5, "p_910->g_297.s5", print_hash_value);
    transparent_crc(p_910->g_297.s6, "p_910->g_297.s6", print_hash_value);
    transparent_crc(p_910->g_297.s7, "p_910->g_297.s7", print_hash_value);
    transparent_crc(p_910->g_328.f0, "p_910->g_328.f0", print_hash_value);
    transparent_crc(p_910->g_328.f1, "p_910->g_328.f1", print_hash_value);
    transparent_crc(p_910->g_328.f2, "p_910->g_328.f2", print_hash_value);
    transparent_crc(p_910->g_328.f3, "p_910->g_328.f3", print_hash_value);
    transparent_crc(p_910->g_348.f0, "p_910->g_348.f0", print_hash_value);
    transparent_crc(p_910->g_348.f1, "p_910->g_348.f1", print_hash_value);
    transparent_crc(p_910->g_348.f2, "p_910->g_348.f2", print_hash_value);
    transparent_crc(p_910->g_348.f3, "p_910->g_348.f3", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 10; j++)
        {
            for (k = 0; k < 10; k++)
            {
                transparent_crc(p_910->g_352[i][j][k].f0, "p_910->g_352[i][j][k].f0", print_hash_value);
                transparent_crc(p_910->g_352[i][j][k].f1, "p_910->g_352[i][j][k].f1", print_hash_value);
                transparent_crc(p_910->g_352[i][j][k].f2, "p_910->g_352[i][j][k].f2", print_hash_value);
                transparent_crc(p_910->g_352[i][j][k].f3, "p_910->g_352[i][j][k].f3", print_hash_value);

            }
        }
    }
    transparent_crc(p_910->g_367, "p_910->g_367", print_hash_value);
    transparent_crc(p_910->g_368, "p_910->g_368", print_hash_value);
    transparent_crc(p_910->g_378.x, "p_910->g_378.x", print_hash_value);
    transparent_crc(p_910->g_378.y, "p_910->g_378.y", print_hash_value);
    transparent_crc(p_910->g_390.s0, "p_910->g_390.s0", print_hash_value);
    transparent_crc(p_910->g_390.s1, "p_910->g_390.s1", print_hash_value);
    transparent_crc(p_910->g_390.s2, "p_910->g_390.s2", print_hash_value);
    transparent_crc(p_910->g_390.s3, "p_910->g_390.s3", print_hash_value);
    transparent_crc(p_910->g_390.s4, "p_910->g_390.s4", print_hash_value);
    transparent_crc(p_910->g_390.s5, "p_910->g_390.s5", print_hash_value);
    transparent_crc(p_910->g_390.s6, "p_910->g_390.s6", print_hash_value);
    transparent_crc(p_910->g_390.s7, "p_910->g_390.s7", print_hash_value);
    transparent_crc(p_910->g_441.f0, "p_910->g_441.f0", print_hash_value);
    transparent_crc(p_910->g_448.f0, "p_910->g_448.f0", print_hash_value);
    transparent_crc(p_910->g_448.f1, "p_910->g_448.f1", print_hash_value);
    transparent_crc(p_910->g_448.f2, "p_910->g_448.f2", print_hash_value);
    transparent_crc(p_910->g_448.f3, "p_910->g_448.f3", print_hash_value);
    transparent_crc(p_910->g_453.f0, "p_910->g_453.f0", print_hash_value);
    transparent_crc(p_910->g_453.f1, "p_910->g_453.f1", print_hash_value);
    transparent_crc(p_910->g_453.f2, "p_910->g_453.f2", print_hash_value);
    transparent_crc(p_910->g_453.f3, "p_910->g_453.f3", print_hash_value);
    transparent_crc(p_910->g_474, "p_910->g_474", print_hash_value);
    transparent_crc(p_910->g_476.f0, "p_910->g_476.f0", print_hash_value);
    transparent_crc(p_910->g_476.f1, "p_910->g_476.f1", print_hash_value);
    transparent_crc(p_910->g_476.f2, "p_910->g_476.f2", print_hash_value);
    transparent_crc(p_910->g_476.f3, "p_910->g_476.f3", print_hash_value);
    transparent_crc(p_910->g_511.x, "p_910->g_511.x", print_hash_value);
    transparent_crc(p_910->g_511.y, "p_910->g_511.y", print_hash_value);
    transparent_crc(p_910->g_511.z, "p_910->g_511.z", print_hash_value);
    transparent_crc(p_910->g_511.w, "p_910->g_511.w", print_hash_value);
    transparent_crc(p_910->g_525.s0, "p_910->g_525.s0", print_hash_value);
    transparent_crc(p_910->g_525.s1, "p_910->g_525.s1", print_hash_value);
    transparent_crc(p_910->g_525.s2, "p_910->g_525.s2", print_hash_value);
    transparent_crc(p_910->g_525.s3, "p_910->g_525.s3", print_hash_value);
    transparent_crc(p_910->g_525.s4, "p_910->g_525.s4", print_hash_value);
    transparent_crc(p_910->g_525.s5, "p_910->g_525.s5", print_hash_value);
    transparent_crc(p_910->g_525.s6, "p_910->g_525.s6", print_hash_value);
    transparent_crc(p_910->g_525.s7, "p_910->g_525.s7", print_hash_value);
    transparent_crc(p_910->g_525.s8, "p_910->g_525.s8", print_hash_value);
    transparent_crc(p_910->g_525.s9, "p_910->g_525.s9", print_hash_value);
    transparent_crc(p_910->g_525.sa, "p_910->g_525.sa", print_hash_value);
    transparent_crc(p_910->g_525.sb, "p_910->g_525.sb", print_hash_value);
    transparent_crc(p_910->g_525.sc, "p_910->g_525.sc", print_hash_value);
    transparent_crc(p_910->g_525.sd, "p_910->g_525.sd", print_hash_value);
    transparent_crc(p_910->g_525.se, "p_910->g_525.se", print_hash_value);
    transparent_crc(p_910->g_525.sf, "p_910->g_525.sf", print_hash_value);
    transparent_crc(p_910->g_527.f0, "p_910->g_527.f0", print_hash_value);
    transparent_crc(p_910->g_527.f1, "p_910->g_527.f1", print_hash_value);
    transparent_crc(p_910->g_527.f2, "p_910->g_527.f2", print_hash_value);
    transparent_crc(p_910->g_527.f3, "p_910->g_527.f3", print_hash_value);
    transparent_crc(p_910->g_538.x, "p_910->g_538.x", print_hash_value);
    transparent_crc(p_910->g_538.y, "p_910->g_538.y", print_hash_value);
    transparent_crc(p_910->g_566.f0, "p_910->g_566.f0", print_hash_value);
    transparent_crc(p_910->g_566.f1, "p_910->g_566.f1", print_hash_value);
    transparent_crc(p_910->g_566.f2, "p_910->g_566.f2", print_hash_value);
    transparent_crc(p_910->g_566.f3, "p_910->g_566.f3", print_hash_value);
    transparent_crc(p_910->g_572.s0, "p_910->g_572.s0", print_hash_value);
    transparent_crc(p_910->g_572.s1, "p_910->g_572.s1", print_hash_value);
    transparent_crc(p_910->g_572.s2, "p_910->g_572.s2", print_hash_value);
    transparent_crc(p_910->g_572.s3, "p_910->g_572.s3", print_hash_value);
    transparent_crc(p_910->g_572.s4, "p_910->g_572.s4", print_hash_value);
    transparent_crc(p_910->g_572.s5, "p_910->g_572.s5", print_hash_value);
    transparent_crc(p_910->g_572.s6, "p_910->g_572.s6", print_hash_value);
    transparent_crc(p_910->g_572.s7, "p_910->g_572.s7", print_hash_value);
    transparent_crc(p_910->g_582.f0, "p_910->g_582.f0", print_hash_value);
    transparent_crc(p_910->g_586.x, "p_910->g_586.x", print_hash_value);
    transparent_crc(p_910->g_586.y, "p_910->g_586.y", print_hash_value);
    transparent_crc(p_910->g_586.z, "p_910->g_586.z", print_hash_value);
    transparent_crc(p_910->g_586.w, "p_910->g_586.w", print_hash_value);
    transparent_crc(p_910->g_612.f0, "p_910->g_612.f0", print_hash_value);
    transparent_crc(p_910->g_612.f1, "p_910->g_612.f1", print_hash_value);
    transparent_crc(p_910->g_612.f2, "p_910->g_612.f2", print_hash_value);
    transparent_crc(p_910->g_612.f3, "p_910->g_612.f3", print_hash_value);
    transparent_crc(p_910->g_615.s0, "p_910->g_615.s0", print_hash_value);
    transparent_crc(p_910->g_615.s1, "p_910->g_615.s1", print_hash_value);
    transparent_crc(p_910->g_615.s2, "p_910->g_615.s2", print_hash_value);
    transparent_crc(p_910->g_615.s3, "p_910->g_615.s3", print_hash_value);
    transparent_crc(p_910->g_615.s4, "p_910->g_615.s4", print_hash_value);
    transparent_crc(p_910->g_615.s5, "p_910->g_615.s5", print_hash_value);
    transparent_crc(p_910->g_615.s6, "p_910->g_615.s6", print_hash_value);
    transparent_crc(p_910->g_615.s7, "p_910->g_615.s7", print_hash_value);
    transparent_crc(p_910->g_632.s0, "p_910->g_632.s0", print_hash_value);
    transparent_crc(p_910->g_632.s1, "p_910->g_632.s1", print_hash_value);
    transparent_crc(p_910->g_632.s2, "p_910->g_632.s2", print_hash_value);
    transparent_crc(p_910->g_632.s3, "p_910->g_632.s3", print_hash_value);
    transparent_crc(p_910->g_632.s4, "p_910->g_632.s4", print_hash_value);
    transparent_crc(p_910->g_632.s5, "p_910->g_632.s5", print_hash_value);
    transparent_crc(p_910->g_632.s6, "p_910->g_632.s6", print_hash_value);
    transparent_crc(p_910->g_632.s7, "p_910->g_632.s7", print_hash_value);
    transparent_crc(p_910->g_632.s8, "p_910->g_632.s8", print_hash_value);
    transparent_crc(p_910->g_632.s9, "p_910->g_632.s9", print_hash_value);
    transparent_crc(p_910->g_632.sa, "p_910->g_632.sa", print_hash_value);
    transparent_crc(p_910->g_632.sb, "p_910->g_632.sb", print_hash_value);
    transparent_crc(p_910->g_632.sc, "p_910->g_632.sc", print_hash_value);
    transparent_crc(p_910->g_632.sd, "p_910->g_632.sd", print_hash_value);
    transparent_crc(p_910->g_632.se, "p_910->g_632.se", print_hash_value);
    transparent_crc(p_910->g_632.sf, "p_910->g_632.sf", print_hash_value);
    transparent_crc(p_910->g_633.s0, "p_910->g_633.s0", print_hash_value);
    transparent_crc(p_910->g_633.s1, "p_910->g_633.s1", print_hash_value);
    transparent_crc(p_910->g_633.s2, "p_910->g_633.s2", print_hash_value);
    transparent_crc(p_910->g_633.s3, "p_910->g_633.s3", print_hash_value);
    transparent_crc(p_910->g_633.s4, "p_910->g_633.s4", print_hash_value);
    transparent_crc(p_910->g_633.s5, "p_910->g_633.s5", print_hash_value);
    transparent_crc(p_910->g_633.s6, "p_910->g_633.s6", print_hash_value);
    transparent_crc(p_910->g_633.s7, "p_910->g_633.s7", print_hash_value);
    transparent_crc(p_910->g_633.s8, "p_910->g_633.s8", print_hash_value);
    transparent_crc(p_910->g_633.s9, "p_910->g_633.s9", print_hash_value);
    transparent_crc(p_910->g_633.sa, "p_910->g_633.sa", print_hash_value);
    transparent_crc(p_910->g_633.sb, "p_910->g_633.sb", print_hash_value);
    transparent_crc(p_910->g_633.sc, "p_910->g_633.sc", print_hash_value);
    transparent_crc(p_910->g_633.sd, "p_910->g_633.sd", print_hash_value);
    transparent_crc(p_910->g_633.se, "p_910->g_633.se", print_hash_value);
    transparent_crc(p_910->g_633.sf, "p_910->g_633.sf", print_hash_value);
    transparent_crc(p_910->g_634.x, "p_910->g_634.x", print_hash_value);
    transparent_crc(p_910->g_634.y, "p_910->g_634.y", print_hash_value);
    transparent_crc(p_910->g_634.z, "p_910->g_634.z", print_hash_value);
    transparent_crc(p_910->g_634.w, "p_910->g_634.w", print_hash_value);
    transparent_crc(p_910->g_635.x, "p_910->g_635.x", print_hash_value);
    transparent_crc(p_910->g_635.y, "p_910->g_635.y", print_hash_value);
    transparent_crc(p_910->g_636.s0, "p_910->g_636.s0", print_hash_value);
    transparent_crc(p_910->g_636.s1, "p_910->g_636.s1", print_hash_value);
    transparent_crc(p_910->g_636.s2, "p_910->g_636.s2", print_hash_value);
    transparent_crc(p_910->g_636.s3, "p_910->g_636.s3", print_hash_value);
    transparent_crc(p_910->g_636.s4, "p_910->g_636.s4", print_hash_value);
    transparent_crc(p_910->g_636.s5, "p_910->g_636.s5", print_hash_value);
    transparent_crc(p_910->g_636.s6, "p_910->g_636.s6", print_hash_value);
    transparent_crc(p_910->g_636.s7, "p_910->g_636.s7", print_hash_value);
    transparent_crc(p_910->g_639, "p_910->g_639", print_hash_value);
    transparent_crc(p_910->g_640, "p_910->g_640", print_hash_value);
    transparent_crc(p_910->g_641, "p_910->g_641", print_hash_value);
    transparent_crc(p_910->g_642, "p_910->g_642", print_hash_value);
    transparent_crc(p_910->g_643, "p_910->g_643", print_hash_value);
    transparent_crc(p_910->g_644, "p_910->g_644", print_hash_value);
    transparent_crc(p_910->g_667.x, "p_910->g_667.x", print_hash_value);
    transparent_crc(p_910->g_667.y, "p_910->g_667.y", print_hash_value);
    transparent_crc(p_910->g_667.z, "p_910->g_667.z", print_hash_value);
    transparent_crc(p_910->g_667.w, "p_910->g_667.w", print_hash_value);
    transparent_crc(p_910->g_685.x, "p_910->g_685.x", print_hash_value);
    transparent_crc(p_910->g_685.y, "p_910->g_685.y", print_hash_value);
    transparent_crc(p_910->g_709.s0, "p_910->g_709.s0", print_hash_value);
    transparent_crc(p_910->g_709.s1, "p_910->g_709.s1", print_hash_value);
    transparent_crc(p_910->g_709.s2, "p_910->g_709.s2", print_hash_value);
    transparent_crc(p_910->g_709.s3, "p_910->g_709.s3", print_hash_value);
    transparent_crc(p_910->g_709.s4, "p_910->g_709.s4", print_hash_value);
    transparent_crc(p_910->g_709.s5, "p_910->g_709.s5", print_hash_value);
    transparent_crc(p_910->g_709.s6, "p_910->g_709.s6", print_hash_value);
    transparent_crc(p_910->g_709.s7, "p_910->g_709.s7", print_hash_value);
    transparent_crc(p_910->g_710.x, "p_910->g_710.x", print_hash_value);
    transparent_crc(p_910->g_710.y, "p_910->g_710.y", print_hash_value);
    transparent_crc(p_910->g_710.z, "p_910->g_710.z", print_hash_value);
    transparent_crc(p_910->g_710.w, "p_910->g_710.w", print_hash_value);
    transparent_crc(p_910->g_712.f0, "p_910->g_712.f0", print_hash_value);
    transparent_crc(p_910->g_748.f0, "p_910->g_748.f0", print_hash_value);
    transparent_crc(p_910->g_748.f1, "p_910->g_748.f1", print_hash_value);
    transparent_crc(p_910->g_748.f2, "p_910->g_748.f2", print_hash_value);
    transparent_crc(p_910->g_748.f3, "p_910->g_748.f3", print_hash_value);
    transparent_crc(p_910->g_790.s0, "p_910->g_790.s0", print_hash_value);
    transparent_crc(p_910->g_790.s1, "p_910->g_790.s1", print_hash_value);
    transparent_crc(p_910->g_790.s2, "p_910->g_790.s2", print_hash_value);
    transparent_crc(p_910->g_790.s3, "p_910->g_790.s3", print_hash_value);
    transparent_crc(p_910->g_790.s4, "p_910->g_790.s4", print_hash_value);
    transparent_crc(p_910->g_790.s5, "p_910->g_790.s5", print_hash_value);
    transparent_crc(p_910->g_790.s6, "p_910->g_790.s6", print_hash_value);
    transparent_crc(p_910->g_790.s7, "p_910->g_790.s7", print_hash_value);
    transparent_crc(p_910->g_791.s0, "p_910->g_791.s0", print_hash_value);
    transparent_crc(p_910->g_791.s1, "p_910->g_791.s1", print_hash_value);
    transparent_crc(p_910->g_791.s2, "p_910->g_791.s2", print_hash_value);
    transparent_crc(p_910->g_791.s3, "p_910->g_791.s3", print_hash_value);
    transparent_crc(p_910->g_791.s4, "p_910->g_791.s4", print_hash_value);
    transparent_crc(p_910->g_791.s5, "p_910->g_791.s5", print_hash_value);
    transparent_crc(p_910->g_791.s6, "p_910->g_791.s6", print_hash_value);
    transparent_crc(p_910->g_791.s7, "p_910->g_791.s7", print_hash_value);
    transparent_crc(p_910->g_791.s8, "p_910->g_791.s8", print_hash_value);
    transparent_crc(p_910->g_791.s9, "p_910->g_791.s9", print_hash_value);
    transparent_crc(p_910->g_791.sa, "p_910->g_791.sa", print_hash_value);
    transparent_crc(p_910->g_791.sb, "p_910->g_791.sb", print_hash_value);
    transparent_crc(p_910->g_791.sc, "p_910->g_791.sc", print_hash_value);
    transparent_crc(p_910->g_791.sd, "p_910->g_791.sd", print_hash_value);
    transparent_crc(p_910->g_791.se, "p_910->g_791.se", print_hash_value);
    transparent_crc(p_910->g_791.sf, "p_910->g_791.sf", print_hash_value);
    transparent_crc(p_910->g_878.x, "p_910->g_878.x", print_hash_value);
    transparent_crc(p_910->g_878.y, "p_910->g_878.y", print_hash_value);
    transparent_crc(p_910->g_878.z, "p_910->g_878.z", print_hash_value);
    transparent_crc(p_910->g_878.w, "p_910->g_878.w", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 6; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_910->g_882[i][j][k], "p_910->g_882[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_910->v_collective, "p_910->v_collective", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 20; i++)
            transparent_crc(p_910->g_special_values[i + 20 * get_linear_group_id()], "p_910->g_special_values[i + 20 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 20; i++)
            transparent_crc(p_910->l_special_values[i], "p_910->l_special_values[i]", print_hash_value);
    transparent_crc(p_910->l_comm_values[get_linear_local_id()], "p_910->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_910->g_comm_values[get_linear_group_id() * 24 + get_linear_local_id()], "p_910->g_comm_values[get_linear_group_id() * 24 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
