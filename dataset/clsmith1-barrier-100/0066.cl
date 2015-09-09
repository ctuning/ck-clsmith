// ---fake_divergence ---inter_thread_comm -g 100,18,4 -l 5,6,1
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

__constant uint32_t permutations[10][30] = {
{13,12,9,14,19,23,25,16,5,10,27,6,4,1,18,26,22,21,3,11,8,2,29,7,17,28,0,15,20,24}, // permutation 0
{9,0,23,22,8,26,28,24,1,11,7,17,14,10,5,16,4,29,3,2,12,21,13,18,15,19,6,25,20,27}, // permutation 1
{20,25,7,3,5,8,28,6,1,14,19,24,23,17,11,21,29,15,10,13,12,2,4,26,18,16,9,27,22,0}, // permutation 2
{9,22,12,15,3,27,18,13,7,24,10,14,25,4,21,11,20,23,1,28,2,0,5,17,29,26,19,8,16,6}, // permutation 3
{9,2,12,29,1,22,28,10,25,4,5,27,13,20,17,16,18,8,21,6,3,15,26,0,19,14,24,7,23,11}, // permutation 4
{21,13,25,15,6,10,17,2,14,0,5,20,3,12,18,11,29,27,16,9,23,8,26,19,22,24,4,7,1,28}, // permutation 5
{22,29,6,0,1,4,8,17,25,21,27,10,3,15,9,18,13,23,11,2,7,14,20,28,24,26,16,12,5,19}, // permutation 6
{11,4,16,29,8,7,23,1,15,20,24,25,27,22,28,9,0,2,6,5,13,10,12,21,18,19,14,17,3,26}, // permutation 7
{11,17,14,21,10,9,5,25,24,2,20,16,0,15,18,8,13,28,6,23,1,27,29,7,3,4,26,19,12,22}, // permutation 8
{14,6,11,26,3,9,28,25,21,10,5,2,23,13,0,22,12,4,16,15,20,29,24,19,27,1,17,7,8,18} // permutation 9
};

// Seed: 66

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   int32_t  f0;
   int32_t  f1;
   volatile int64_t  f2;
   uint16_t  f3;
};

struct S1 {
    uint8_t g_44;
    uint64_t g_68;
    int64_t g_70;
    uint16_t g_84;
    int32_t g_90;
    int32_t * volatile g_89;
    volatile struct S0 g_127;
    volatile struct S0 * volatile g_128;
    struct S0 g_129;
    struct S0 * volatile g_130;
    volatile struct S0 g_136;
    uint8_t g_142;
    uint32_t g_164;
    int8_t g_168;
    uint32_t g_180;
    volatile uint32_t g_185;
    int32_t g_218;
    int32_t g_220;
    uint16_t g_224;
    uint64_t *g_231;
    uint64_t **g_230;
    uint64_t *** volatile g_229;
    int64_t g_241;
    uint8_t g_244;
    struct S0 g_245;
    volatile struct S0 g_249;
    volatile struct S0 * volatile g_250;
    uint16_t g_269[6];
    uint64_t *g_279[1];
    volatile struct S0 g_283[3][3];
    struct S0 g_288;
    int32_t * volatile g_290[9][6][4];
    int32_t * volatile g_291;
    int16_t g_300;
    volatile int64_t g_326;
    uint32_t g_333;
    volatile struct S0 g_381;
    volatile struct S0 * volatile g_382;
    struct S0 g_387[3];
    uint16_t g_388;
    int32_t *g_413;
    int32_t ** volatile g_412;
    struct S0 g_433;
    struct S0 g_436;
    struct S0 g_453[6];
    int64_t *g_458;
    int64_t ** volatile g_457[7];
    int32_t ** volatile g_480;
    uint64_t g_486;
    int32_t g_543;
    uint64_t g_549;
    int32_t ** volatile g_561;
    int32_t * volatile g_563;
    volatile int32_t g_571[9];
    volatile int32_t g_572;
    volatile int32_t *g_570[6];
    uint32_t g_577;
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
    __local int64_t *l_comm_values;
    __global int64_t *g_comm_values;
};


/* --- FORWARD DECLARATIONS --- */
uint32_t  func_1(struct S1 * p_579);
uint64_t  func_10(uint8_t  p_11, uint32_t  p_12, uint32_t  p_13, struct S1 * p_579);
int32_t  func_15(int32_t  p_16, struct S1 * p_579);
int32_t  func_17(uint32_t  p_18, int16_t  p_19, struct S1 * p_579);
int64_t  func_22(uint8_t  p_23, int32_t  p_24, int32_t  p_25, int16_t  p_26, uint32_t  p_27, struct S1 * p_579);
uint8_t  func_28(int64_t  p_29, uint8_t  p_30, uint64_t  p_31, uint8_t  p_32, struct S1 * p_579);
int64_t  func_33(int8_t  p_34, uint8_t  p_35, int64_t  p_36, int8_t  p_37, struct S1 * p_579);
int8_t  func_39(int64_t  p_40, struct S1 * p_579);
uint8_t  func_41(uint8_t  p_42, struct S1 * p_579);
uint64_t  func_51(uint16_t  p_52, uint8_t * p_53, struct S1 * p_579);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_579->l_comm_values p_579->g_comm_values p_579->g_68 p_579->g_89 p_579->g_90 p_579->g_44 p_579->g_185 p_579->g_129.f0 p_579->g_84 p_579->g_245.f0 p_579->g_387 p_579->g_283.f0 p_579->g_245.f1 p_579->g_269 p_579->g_288.f3 p_579->g_412 p_579->g_218 p_579->g_288.f0 p_579->g_433 p_579->g_333 p_579->g_436 p_579->g_180 p_579->g_241 p_579->g_453 p_579->g_142 p_579->g_168 p_579->g_413 p_579->g_457 p_579->g_164 p_579->g_458 p_579->g_480 p_579->g_224 p_579->g_486 p_579->g_70 p_579->g_127.f1 p_579->g_291 p_579->g_220 p_579->g_250 p_579->g_127 p_579->g_129.f1 p_579->g_129.f3 p_579->g_543 p_579->g_230 p_579->g_231 p_579->g_136.f1 p_579->g_561 p_579->g_563 p_579->g_136.f0 p_579->g_288.f2 p_579->g_570
 * writes: p_579->g_44 p_579->g_68 p_579->g_90 p_579->g_129.f0 p_579->g_388 p_579->g_288.f3 p_579->g_413 p_579->g_218 p_579->g_387 p_579->g_245.f0 p_579->g_288.f0 p_579->g_164 p_579->g_70 p_579->g_436.f0 p_579->g_486 p_579->g_333 p_579->g_543 p_579->g_180 p_579->g_549 p_579->g_283 p_579->g_577
 */
uint32_t  func_1(struct S1 * p_579)
{ /* block id: 4 */
    uint64_t l_14 = 1UL;
    uint32_t *l_565 = &p_579->g_180;
    int16_t *l_573 = (void*)0;
    int32_t l_574[1];
    uint64_t *l_575[6][6] = {{&l_14,&l_14,&l_14,&l_14,&l_14,&l_14},{&l_14,&l_14,&l_14,&l_14,&l_14,&l_14},{&l_14,&l_14,&l_14,&l_14,&l_14,&l_14},{&l_14,&l_14,&l_14,&l_14,&l_14,&l_14},{&l_14,&l_14,&l_14,&l_14,&l_14,&l_14},{&l_14,&l_14,&l_14,&l_14,&l_14,&l_14}};
    int32_t l_576 = (-3L);
    int32_t l_578 = 0x2AE21EDBL;
    int i, j;
    for (i = 0; i < 1; i++)
        l_574[i] = 1L;
    l_578 = (safe_mod_func_int32_t_s_s(((safe_rshift_func_uint8_t_u_u(((-1L) > (p_579->g_577 = (l_576 = (safe_mul_func_int8_t_s_s((((l_574[0] = ((safe_lshift_func_int16_t_s_s((func_10(l_14, l_14, l_14, p_579) || (((*l_565) = p_579->g_433.f2) , (safe_sub_func_uint32_t_u_u(7UL, p_579->g_288.f2)))), (((void*)0 == p_579->g_570[2]) == 0L))) , l_14)) != 0x9D96L) >= (-4L)), p_579->g_168))))), l_14)) ^ l_14), 0x3E6563E2L));
    return p_579->g_127.f0;
}


/* ------------------------------------------ */
/* 
 * reads : p_579->l_comm_values p_579->g_comm_values p_579->g_68 p_579->g_89 p_579->g_90 p_579->g_44 p_579->g_185 p_579->g_129.f0 p_579->g_84 p_579->g_245.f0 p_579->g_387 p_579->g_283.f0 p_579->g_245.f1 p_579->g_269 p_579->g_288.f3 p_579->g_412 p_579->g_218 p_579->g_288.f0 p_579->g_433 p_579->g_333 p_579->g_436 p_579->g_180 p_579->g_241 p_579->g_453 p_579->g_142 p_579->g_168 p_579->g_413 p_579->g_457 p_579->g_164 p_579->g_458 p_579->g_480 p_579->g_224 p_579->g_486 p_579->g_70 p_579->g_127.f1 p_579->g_291 p_579->g_220 p_579->g_250 p_579->g_127 p_579->g_129.f1 p_579->g_129.f3 p_579->g_543 p_579->g_230 p_579->g_231 p_579->g_136.f1 p_579->g_561 p_579->g_563 p_579->g_136.f0
 * writes: p_579->g_44 p_579->g_68 p_579->g_90 p_579->g_129.f0 p_579->g_388 p_579->g_288.f3 p_579->g_413 p_579->g_218 p_579->g_387 p_579->g_245.f0 p_579->g_288.f0 p_579->g_164 p_579->g_70 p_579->g_436.f0 p_579->g_486 p_579->g_333 p_579->g_543 p_579->g_180 p_579->g_549 p_579->g_283
 */
uint64_t  func_10(uint8_t  p_11, uint32_t  p_12, uint32_t  p_13, struct S1 * p_579)
{ /* block id: 5 */
    int32_t **l_564[6][4][5] = {{{(void*)0,(void*)0,&p_579->g_413,&p_579->g_413,&p_579->g_413},{(void*)0,(void*)0,&p_579->g_413,&p_579->g_413,&p_579->g_413},{(void*)0,(void*)0,&p_579->g_413,&p_579->g_413,&p_579->g_413},{(void*)0,(void*)0,&p_579->g_413,&p_579->g_413,&p_579->g_413}},{{(void*)0,(void*)0,&p_579->g_413,&p_579->g_413,&p_579->g_413},{(void*)0,(void*)0,&p_579->g_413,&p_579->g_413,&p_579->g_413},{(void*)0,(void*)0,&p_579->g_413,&p_579->g_413,&p_579->g_413},{(void*)0,(void*)0,&p_579->g_413,&p_579->g_413,&p_579->g_413}},{{(void*)0,(void*)0,&p_579->g_413,&p_579->g_413,&p_579->g_413},{(void*)0,(void*)0,&p_579->g_413,&p_579->g_413,&p_579->g_413},{(void*)0,(void*)0,&p_579->g_413,&p_579->g_413,&p_579->g_413},{(void*)0,(void*)0,&p_579->g_413,&p_579->g_413,&p_579->g_413}},{{(void*)0,(void*)0,&p_579->g_413,&p_579->g_413,&p_579->g_413},{(void*)0,(void*)0,&p_579->g_413,&p_579->g_413,&p_579->g_413},{(void*)0,(void*)0,&p_579->g_413,&p_579->g_413,&p_579->g_413},{(void*)0,(void*)0,&p_579->g_413,&p_579->g_413,&p_579->g_413}},{{(void*)0,(void*)0,&p_579->g_413,&p_579->g_413,&p_579->g_413},{(void*)0,(void*)0,&p_579->g_413,&p_579->g_413,&p_579->g_413},{(void*)0,(void*)0,&p_579->g_413,&p_579->g_413,&p_579->g_413},{(void*)0,(void*)0,&p_579->g_413,&p_579->g_413,&p_579->g_413}},{{(void*)0,(void*)0,&p_579->g_413,&p_579->g_413,&p_579->g_413},{(void*)0,(void*)0,&p_579->g_413,&p_579->g_413,&p_579->g_413},{(void*)0,(void*)0,&p_579->g_413,&p_579->g_413,&p_579->g_413},{(void*)0,(void*)0,&p_579->g_413,&p_579->g_413,&p_579->g_413}}};
    int i, j, k;
    (*p_579->g_563) = func_15(func_17(p_579->l_comm_values[(safe_mod_func_uint32_t_u_u(p_579->tid, 30))], p_12, p_579), p_579);
    for (p_579->g_180 = 0; p_579->g_180 < 3; p_579->g_180 += 1)
    {
        for (p_579->g_549 = 0; p_579->g_549 < 3; p_579->g_549 += 1)
        {
            struct S0 tmp = {{0x366C6966L,0x29E7B15DL,-7L,1UL}};
            p_579->g_283[p_579->g_180][p_579->g_549] = tmp;
        }
    }
    (*p_579->g_561) = (*p_579->g_412);
    if ((**p_579->g_561))
    { /* block id: 283 */
        return p_579->g_136.f0;
    }
    else
    { /* block id: 285 */
        return p_579->g_433.f2;
    }
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t  func_15(int32_t  p_16, struct S1 * p_579)
{ /* block id: 278 */
    uint32_t l_562 = 4294967295UL;
    return l_562;
}


/* ------------------------------------------ */
/* 
 * reads : p_579->l_comm_values p_579->g_comm_values p_579->g_68 p_579->g_89 p_579->g_90 p_579->g_44 p_579->g_185 p_579->g_129.f0 p_579->g_84 p_579->g_245.f0 p_579->g_387 p_579->g_283.f0 p_579->g_245.f1 p_579->g_269 p_579->g_288.f3 p_579->g_412 p_579->g_218 p_579->g_288.f0 p_579->g_433 p_579->g_333 p_579->g_436 p_579->g_180 p_579->g_241 p_579->g_453 p_579->g_142 p_579->g_168 p_579->g_413 p_579->g_457 p_579->g_164 p_579->g_458 p_579->g_480 p_579->g_224 p_579->g_486 p_579->g_70 p_579->g_127.f1 p_579->g_291 p_579->g_220 p_579->g_250 p_579->g_127 p_579->g_129.f1 p_579->g_129.f3 p_579->g_543 p_579->g_230 p_579->g_231 p_579->g_136.f1 p_579->g_561
 * writes: p_579->g_44 p_579->g_68 p_579->g_90 p_579->g_129.f0 p_579->g_388 p_579->g_288.f3 p_579->g_413 p_579->g_218 p_579->g_387 p_579->g_245.f0 p_579->g_288.f0 p_579->g_164 p_579->g_70 p_579->g_436.f0 p_579->g_486 p_579->g_333 p_579->g_543
 */
int32_t  func_17(uint32_t  p_18, int16_t  p_19, struct S1 * p_579)
{ /* block id: 6 */
    int16_t l_38 = 0x2B8DL;
    uint8_t *l_43 = &p_579->g_44;
    int32_t *l_542 = &p_579->g_543;
    uint64_t *l_548[5][7][4] = {{{&p_579->g_549,(void*)0,&p_579->g_549,(void*)0},{&p_579->g_549,(void*)0,&p_579->g_549,(void*)0},{&p_579->g_549,(void*)0,&p_579->g_549,(void*)0},{&p_579->g_549,(void*)0,&p_579->g_549,(void*)0},{&p_579->g_549,(void*)0,&p_579->g_549,(void*)0},{&p_579->g_549,(void*)0,&p_579->g_549,(void*)0},{&p_579->g_549,(void*)0,&p_579->g_549,(void*)0}},{{&p_579->g_549,(void*)0,&p_579->g_549,(void*)0},{&p_579->g_549,(void*)0,&p_579->g_549,(void*)0},{&p_579->g_549,(void*)0,&p_579->g_549,(void*)0},{&p_579->g_549,(void*)0,&p_579->g_549,(void*)0},{&p_579->g_549,(void*)0,&p_579->g_549,(void*)0},{&p_579->g_549,(void*)0,&p_579->g_549,(void*)0},{&p_579->g_549,(void*)0,&p_579->g_549,(void*)0}},{{&p_579->g_549,(void*)0,&p_579->g_549,(void*)0},{&p_579->g_549,(void*)0,&p_579->g_549,(void*)0},{&p_579->g_549,(void*)0,&p_579->g_549,(void*)0},{&p_579->g_549,(void*)0,&p_579->g_549,(void*)0},{&p_579->g_549,(void*)0,&p_579->g_549,(void*)0},{&p_579->g_549,(void*)0,&p_579->g_549,(void*)0},{&p_579->g_549,(void*)0,&p_579->g_549,(void*)0}},{{&p_579->g_549,(void*)0,&p_579->g_549,(void*)0},{&p_579->g_549,(void*)0,&p_579->g_549,(void*)0},{&p_579->g_549,(void*)0,&p_579->g_549,(void*)0},{&p_579->g_549,(void*)0,&p_579->g_549,(void*)0},{&p_579->g_549,(void*)0,&p_579->g_549,(void*)0},{&p_579->g_549,(void*)0,&p_579->g_549,(void*)0},{&p_579->g_549,(void*)0,&p_579->g_549,(void*)0}},{{&p_579->g_549,(void*)0,&p_579->g_549,(void*)0},{&p_579->g_549,(void*)0,&p_579->g_549,(void*)0},{&p_579->g_549,(void*)0,&p_579->g_549,(void*)0},{&p_579->g_549,(void*)0,&p_579->g_549,(void*)0},{&p_579->g_549,(void*)0,&p_579->g_549,(void*)0},{&p_579->g_549,(void*)0,&p_579->g_549,(void*)0},{&p_579->g_549,(void*)0,&p_579->g_549,(void*)0}}};
    int32_t l_550 = 0x33491336L;
    int i, j, k;
    (*l_542) &= ((p_18 >= (safe_sub_func_uint64_t_u_u(((65535UL | GROUP_DIVERGE(1, 1)) , p_579->l_comm_values[(safe_mod_func_uint32_t_u_u(p_579->tid, 30))]), ((func_22(((p_579->g_comm_values[p_579->tid] | func_28(func_33((l_38 , func_39((l_38 != (((*l_43) = func_41(((*l_43) = l_38), p_579)) >= l_38)), p_579)), p_579->g_245.f1, p_579->g_269[2], p_19, p_579), p_579->g_224, l_38, p_18, p_579)) <= (-3L)), p_579->g_220, p_579->g_436.f3, p_579->g_comm_values[p_579->tid], l_38, p_579) , p_18) < p_579->g_129.f3)))) < FAKE_DIVERGE(p_579->local_0_offset, get_local_id(0), 10));
    (*p_579->g_561) = ((safe_add_func_uint8_t_u_u((+(((l_550 ^= ((**p_579->g_230) = (safe_add_func_int64_t_s_s((*l_542), (p_579->g_142 || (*l_542)))))) , (0L == ((safe_sub_func_uint64_t_u_u(((0x39L | (+0x49L)) != (safe_lshift_func_uint16_t_u_s((((((safe_unary_minus_func_int16_t_s((safe_add_func_int8_t_s_s((safe_unary_minus_func_uint16_t_u((*l_542))), (safe_rshift_func_int8_t_s_s((p_579->g_136.f1 > p_579->g_486), p_18)))))) && 18446744073709551611UL) < p_579->g_543) ^ 0x0CD2L) >= (-1L)), 6))), 0x11588BB0AB414C2DL)) && (-1L)))) >= p_579->g_453[0].f0)), p_19)) , l_542);
    return (*l_542);
}


/* ------------------------------------------ */
/* 
 * reads : p_579->g_412 p_579->g_250 p_579->g_127 p_579->g_129.f1
 * writes: p_579->g_413
 */
int64_t  func_22(uint8_t  p_23, int32_t  p_24, int32_t  p_25, int16_t  p_26, uint32_t  p_27, struct S1 * p_579)
{ /* block id: 263 */
    uint32_t l_536 = 1UL;
    int32_t **l_537[3][8] = {{&p_579->g_413,&p_579->g_413,&p_579->g_413,&p_579->g_413,&p_579->g_413,&p_579->g_413,&p_579->g_413,&p_579->g_413},{&p_579->g_413,&p_579->g_413,&p_579->g_413,&p_579->g_413,&p_579->g_413,&p_579->g_413,&p_579->g_413,&p_579->g_413},{&p_579->g_413,&p_579->g_413,&p_579->g_413,&p_579->g_413,&p_579->g_413,&p_579->g_413,&p_579->g_413,&p_579->g_413}};
    int32_t l_541 = 0L;
    int i, j;
    for (p_27 = 0; (p_27 == 7); p_27 = safe_add_func_int8_t_s_s(p_27, 7))
    { /* block id: 266 */
        return l_536;
    }
    if (p_27)
        goto lbl_538;
lbl_538:
    (*p_579->g_412) = (void*)0;
    l_541 = (safe_rshift_func_int16_t_s_u(((*p_579->g_250) , 0x01ABL), p_579->g_129.f1));
    return p_26;
}


/* ------------------------------------------ */
/* 
 * reads : p_579->g_486 p_579->g_436.f0 p_579->g_453.f2 p_579->g_433.f3 p_579->g_458 p_579->g_70 p_579->g_127.f1 p_579->g_164 p_579->g_comm_values p_579->g_218 p_579->g_291 p_579->g_90 p_579->g_333
 * writes: p_579->g_486 p_579->g_44 p_579->g_333 p_579->g_218
 */
uint8_t  func_28(int64_t  p_29, uint8_t  p_30, uint64_t  p_31, uint8_t  p_32, struct S1 * p_579)
{ /* block id: 244 */
    uint64_t l_484 = 0x5D6E20A448BCF3B1L;
    uint64_t *l_485 = &p_579->g_486;
    int8_t *l_499[8][2] = {{&p_579->g_168,&p_579->g_168},{&p_579->g_168,&p_579->g_168},{&p_579->g_168,&p_579->g_168},{&p_579->g_168,&p_579->g_168},{&p_579->g_168,&p_579->g_168},{&p_579->g_168,&p_579->g_168},{&p_579->g_168,&p_579->g_168},{&p_579->g_168,&p_579->g_168}};
    int32_t l_500 = 0L;
    int32_t l_503[4][10][3] = {{{(-1L),0x24028D57L,0x24028D57L},{(-1L),0x24028D57L,0x24028D57L},{(-1L),0x24028D57L,0x24028D57L},{(-1L),0x24028D57L,0x24028D57L},{(-1L),0x24028D57L,0x24028D57L},{(-1L),0x24028D57L,0x24028D57L},{(-1L),0x24028D57L,0x24028D57L},{(-1L),0x24028D57L,0x24028D57L},{(-1L),0x24028D57L,0x24028D57L},{(-1L),0x24028D57L,0x24028D57L}},{{(-1L),0x24028D57L,0x24028D57L},{(-1L),0x24028D57L,0x24028D57L},{(-1L),0x24028D57L,0x24028D57L},{(-1L),0x24028D57L,0x24028D57L},{(-1L),0x24028D57L,0x24028D57L},{(-1L),0x24028D57L,0x24028D57L},{(-1L),0x24028D57L,0x24028D57L},{(-1L),0x24028D57L,0x24028D57L},{(-1L),0x24028D57L,0x24028D57L},{(-1L),0x24028D57L,0x24028D57L}},{{(-1L),0x24028D57L,0x24028D57L},{(-1L),0x24028D57L,0x24028D57L},{(-1L),0x24028D57L,0x24028D57L},{(-1L),0x24028D57L,0x24028D57L},{(-1L),0x24028D57L,0x24028D57L},{(-1L),0x24028D57L,0x24028D57L},{(-1L),0x24028D57L,0x24028D57L},{(-1L),0x24028D57L,0x24028D57L},{(-1L),0x24028D57L,0x24028D57L},{(-1L),0x24028D57L,0x24028D57L}},{{(-1L),0x24028D57L,0x24028D57L},{(-1L),0x24028D57L,0x24028D57L},{(-1L),0x24028D57L,0x24028D57L},{(-1L),0x24028D57L,0x24028D57L},{(-1L),0x24028D57L,0x24028D57L},{(-1L),0x24028D57L,0x24028D57L},{(-1L),0x24028D57L,0x24028D57L},{(-1L),0x24028D57L,0x24028D57L},{(-1L),0x24028D57L,0x24028D57L},{(-1L),0x24028D57L,0x24028D57L}}};
    uint8_t *l_506 = &p_579->g_44;
    int32_t l_507[7];
    uint32_t *l_510 = &p_579->g_333;
    int32_t *l_515 = &l_503[1][5][2];
    int i, j, k;
    for (i = 0; i < 7; i++)
        l_507[i] = 0x378DFE64L;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    p_579->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 30)), permutations[(safe_mod_func_uint32_t_u_u((255UL ^ ((((l_484 ^ ((*l_485)--)) < p_31) > ((p_579->g_436.f0 & ((safe_lshift_func_uint16_t_u_u((((l_484 && p_579->g_453[0].f2) , ((safe_sub_func_int64_t_s_s((safe_rshift_func_uint8_t_u_s((((safe_add_func_int8_t_s_s(((l_500 = 0x4FL) & ((p_579->g_433.f3 != (safe_add_func_uint64_t_u_u(p_32, (-1L)))) , 0L)), p_30)) || 4294967295UL) >= 0L), 7)), p_32)) || p_31)) || (*p_579->g_458)), l_484)) ^ p_30)) , 0x6BA2B364L)) < (-2L))), 10))][(safe_mod_func_uint32_t_u_u(p_579->tid, 30))]));
    l_507[0] = ((l_500 , ((l_503[1][5][2] = l_500) , (safe_div_func_uint32_t_u_u(p_30, 0x0BE88754L)))) < ((*l_506) = l_484));
    (*l_515) = (p_579->g_127.f1 != ((((*l_485) = (((*l_510) = 1UL) , (safe_mod_func_int64_t_s_s(l_503[1][7][2], (p_31 , ((((l_507[3] <= (safe_add_func_int16_t_s_s(4L, (((&p_31 == (l_500 , &p_31)) , l_507[0]) >= p_32)))) == p_579->g_164) != p_579->g_comm_values[p_579->tid]) && 0x0920A844D71DFE25L)))))) < 18446744073709551615UL) != p_30));
    for (p_579->g_218 = 0; (p_579->g_218 <= 19); p_579->g_218++)
    { /* block id: 258 */
        int32_t *l_518 = &l_500;
        int32_t *l_519 = &p_579->g_453[0].f0;
        int32_t *l_520 = &l_500;
        int32_t *l_521 = &l_500;
        int32_t l_522 = 1L;
        int32_t *l_523 = &p_579->g_129.f0;
        int32_t *l_524 = (void*)0;
        int32_t *l_525 = (void*)0;
        int32_t *l_526 = &p_579->g_436.f0;
        int32_t *l_527 = (void*)0;
        int32_t *l_528 = &p_579->g_288.f0;
        int32_t *l_529 = (void*)0;
        int32_t *l_530[7][10] = {{&p_579->g_433.f0,(void*)0,&p_579->g_129.f0,(void*)0,&p_579->g_129.f0,(void*)0,&p_579->g_433.f0,(void*)0,&l_507[1],&p_579->g_433.f0},{&p_579->g_433.f0,(void*)0,&p_579->g_129.f0,(void*)0,&p_579->g_129.f0,(void*)0,&p_579->g_433.f0,(void*)0,&l_507[1],&p_579->g_433.f0},{&p_579->g_433.f0,(void*)0,&p_579->g_129.f0,(void*)0,&p_579->g_129.f0,(void*)0,&p_579->g_433.f0,(void*)0,&l_507[1],&p_579->g_433.f0},{&p_579->g_433.f0,(void*)0,&p_579->g_129.f0,(void*)0,&p_579->g_129.f0,(void*)0,&p_579->g_433.f0,(void*)0,&l_507[1],&p_579->g_433.f0},{&p_579->g_433.f0,(void*)0,&p_579->g_129.f0,(void*)0,&p_579->g_129.f0,(void*)0,&p_579->g_433.f0,(void*)0,&l_507[1],&p_579->g_433.f0},{&p_579->g_433.f0,(void*)0,&p_579->g_129.f0,(void*)0,&p_579->g_129.f0,(void*)0,&p_579->g_433.f0,(void*)0,&l_507[1],&p_579->g_433.f0},{&p_579->g_433.f0,(void*)0,&p_579->g_129.f0,(void*)0,&p_579->g_129.f0,(void*)0,&p_579->g_433.f0,(void*)0,&l_507[1],&p_579->g_433.f0}};
        uint64_t l_531 = 0xA5E2C747FB8E18FBL;
        int i, j;
        if ((*p_579->g_291))
            break;
        ++l_531;
    }
    return p_579->g_333;
}


/* ------------------------------------------ */
/* 
 * reads : p_579->g_68 p_579->g_288.f3 p_579->g_412 p_579->g_218 p_579->g_288.f0 p_579->g_245.f0 p_579->g_433 p_579->g_387.f0 p_579->g_333 p_579->g_269 p_579->g_436 p_579->g_180 p_579->g_241 p_579->g_453 p_579->g_142 p_579->g_168 p_579->g_413 p_579->g_90 p_579->g_457 p_579->g_164 p_579->g_458 p_579->g_129.f0 p_579->g_480
 * writes: p_579->g_68 p_579->g_288.f3 p_579->g_413 p_579->g_218 p_579->g_387 p_579->g_90 p_579->g_245.f0 p_579->g_288.f0 p_579->g_164 p_579->g_70 p_579->g_44 p_579->g_129.f0 p_579->g_436.f0
 */
int64_t  func_33(int8_t  p_34, uint8_t  p_35, int64_t  p_36, int8_t  p_37, struct S1 * p_579)
{ /* block id: 196 */
    int32_t *l_389 = &p_579->g_90;
    int32_t *l_390 = &p_579->g_90;
    int32_t *l_391 = &p_579->g_129.f0;
    int32_t *l_392 = &p_579->g_387[0].f0;
    int32_t *l_393 = &p_579->g_288.f0;
    int32_t *l_394 = (void*)0;
    int32_t *l_395 = &p_579->g_245.f0;
    int32_t *l_396 = &p_579->g_387[0].f0;
    int32_t *l_397 = &p_579->g_129.f0;
    int32_t *l_398 = &p_579->g_90;
    int32_t *l_399 = (void*)0;
    int32_t l_400[1][6][3] = {{{7L,7L,0x79135237L},{7L,7L,0x79135237L},{7L,7L,0x79135237L},{7L,7L,0x79135237L},{7L,7L,0x79135237L},{7L,7L,0x79135237L}}};
    int32_t *l_401 = &p_579->g_288.f0;
    int32_t *l_402[10] = {&p_579->g_245.f0,&p_579->g_90,&p_579->g_245.f0,&p_579->g_245.f0,&p_579->g_90,&p_579->g_245.f0,&p_579->g_245.f0,&p_579->g_90,&p_579->g_245.f0,&p_579->g_245.f0};
    uint64_t l_403 = 0xD58091EFF4CD6DDCL;
    uint8_t **l_468 = (void*)0;
    uint32_t l_481 = 0UL;
    int i, j, k;
    --l_403;
    for (p_579->g_68 = 0; (p_579->g_68 <= 55); p_579->g_68 = safe_add_func_uint32_t_u_u(p_579->g_68, 3))
    { /* block id: 200 */
        uint8_t l_408 = 0xBCL;
        int32_t *l_411 = &p_579->g_245.f0;
        int16_t *l_420 = &p_579->g_300;
        uint16_t l_435 = 0x57F0L;
        int64_t *l_447 = &p_579->g_241;
        int64_t *l_450[5][2];
        int i, j;
        for (i = 0; i < 5; i++)
        {
            for (j = 0; j < 2; j++)
                l_450[i][j] = (void*)0;
        }
        if (l_408)
            break;
        for (p_579->g_288.f3 = 23; (p_579->g_288.f3 >= 38); p_579->g_288.f3 = safe_add_func_uint16_t_u_u(p_579->g_288.f3, 4))
        { /* block id: 204 */
            (*p_579->g_412) = l_411;
        }
        for (p_579->g_218 = 16; (p_579->g_218 < 13); p_579->g_218--)
        { /* block id: 209 */
            uint32_t l_416[5][5][8] = {{{4294967295UL,0xE5FCF05DL,0x83F7E285L,0x053F6E46L,4294967290UL,0xA61503D2L,4294967294UL,0x22A9DDD1L},{4294967295UL,0xE5FCF05DL,0x83F7E285L,0x053F6E46L,4294967290UL,0xA61503D2L,4294967294UL,0x22A9DDD1L},{4294967295UL,0xE5FCF05DL,0x83F7E285L,0x053F6E46L,4294967290UL,0xA61503D2L,4294967294UL,0x22A9DDD1L},{4294967295UL,0xE5FCF05DL,0x83F7E285L,0x053F6E46L,4294967290UL,0xA61503D2L,4294967294UL,0x22A9DDD1L},{4294967295UL,0xE5FCF05DL,0x83F7E285L,0x053F6E46L,4294967290UL,0xA61503D2L,4294967294UL,0x22A9DDD1L}},{{4294967295UL,0xE5FCF05DL,0x83F7E285L,0x053F6E46L,4294967290UL,0xA61503D2L,4294967294UL,0x22A9DDD1L},{4294967295UL,0xE5FCF05DL,0x83F7E285L,0x053F6E46L,4294967290UL,0xA61503D2L,4294967294UL,0x22A9DDD1L},{4294967295UL,0xE5FCF05DL,0x83F7E285L,0x053F6E46L,4294967290UL,0xA61503D2L,4294967294UL,0x22A9DDD1L},{4294967295UL,0xE5FCF05DL,0x83F7E285L,0x053F6E46L,4294967290UL,0xA61503D2L,4294967294UL,0x22A9DDD1L},{4294967295UL,0xE5FCF05DL,0x83F7E285L,0x053F6E46L,4294967290UL,0xA61503D2L,4294967294UL,0x22A9DDD1L}},{{4294967295UL,0xE5FCF05DL,0x83F7E285L,0x053F6E46L,4294967290UL,0xA61503D2L,4294967294UL,0x22A9DDD1L},{4294967295UL,0xE5FCF05DL,0x83F7E285L,0x053F6E46L,4294967290UL,0xA61503D2L,4294967294UL,0x22A9DDD1L},{4294967295UL,0xE5FCF05DL,0x83F7E285L,0x053F6E46L,4294967290UL,0xA61503D2L,4294967294UL,0x22A9DDD1L},{4294967295UL,0xE5FCF05DL,0x83F7E285L,0x053F6E46L,4294967290UL,0xA61503D2L,4294967294UL,0x22A9DDD1L},{4294967295UL,0xE5FCF05DL,0x83F7E285L,0x053F6E46L,4294967290UL,0xA61503D2L,4294967294UL,0x22A9DDD1L}},{{4294967295UL,0xE5FCF05DL,0x83F7E285L,0x053F6E46L,4294967290UL,0xA61503D2L,4294967294UL,0x22A9DDD1L},{4294967295UL,0xE5FCF05DL,0x83F7E285L,0x053F6E46L,4294967290UL,0xA61503D2L,4294967294UL,0x22A9DDD1L},{4294967295UL,0xE5FCF05DL,0x83F7E285L,0x053F6E46L,4294967290UL,0xA61503D2L,4294967294UL,0x22A9DDD1L},{4294967295UL,0xE5FCF05DL,0x83F7E285L,0x053F6E46L,4294967290UL,0xA61503D2L,4294967294UL,0x22A9DDD1L},{4294967295UL,0xE5FCF05DL,0x83F7E285L,0x053F6E46L,4294967290UL,0xA61503D2L,4294967294UL,0x22A9DDD1L}},{{4294967295UL,0xE5FCF05DL,0x83F7E285L,0x053F6E46L,4294967290UL,0xA61503D2L,4294967294UL,0x22A9DDD1L},{4294967295UL,0xE5FCF05DL,0x83F7E285L,0x053F6E46L,4294967290UL,0xA61503D2L,4294967294UL,0x22A9DDD1L},{4294967295UL,0xE5FCF05DL,0x83F7E285L,0x053F6E46L,4294967290UL,0xA61503D2L,4294967294UL,0x22A9DDD1L},{4294967295UL,0xE5FCF05DL,0x83F7E285L,0x053F6E46L,4294967290UL,0xA61503D2L,4294967294UL,0x22A9DDD1L},{4294967295UL,0xE5FCF05DL,0x83F7E285L,0x053F6E46L,4294967290UL,0xA61503D2L,4294967294UL,0x22A9DDD1L}}};
            int32_t l_419 = 2L;
            int64_t *l_434 = (void*)0;
            int i, j, k;
            if ((((l_416[1][4][5] = p_35) >= ((l_419 | p_579->g_288.f0) & (l_420 != (void*)0))) , (safe_mul_func_int16_t_s_s((((((safe_mul_func_int16_t_s_s(((l_419 = (p_35 < ((((safe_add_func_int16_t_s_s(((safe_add_func_uint64_t_u_u((((safe_rshift_func_int8_t_s_s((*l_411), ((+((p_579->g_433 , l_434) != &p_579->g_70)) && (*l_396)))) == l_419) , p_579->g_218), 1UL)) || p_36), 1L)) != p_34) , &p_579->g_70) == &p_579->g_70))) & GROUP_DIVERGE(2, 1)), p_36)) == p_37) > 1L) >= p_579->g_333) == p_579->g_269[5]), p_579->g_68))))
            { /* block id: 212 */
                return l_435;
            }
            else
            { /* block id: 214 */
                struct S0 *l_437 = &p_579->g_387[1];
                int32_t l_440 = 1L;
                int64_t *l_449 = &p_579->g_241;
                int64_t **l_448[7][6][6] = {{{&l_447,(void*)0,&l_447,&l_447,&l_447,&l_449},{&l_447,(void*)0,&l_447,&l_447,&l_447,&l_449},{&l_447,(void*)0,&l_447,&l_447,&l_447,&l_449},{&l_447,(void*)0,&l_447,&l_447,&l_447,&l_449},{&l_447,(void*)0,&l_447,&l_447,&l_447,&l_449},{&l_447,(void*)0,&l_447,&l_447,&l_447,&l_449}},{{&l_447,(void*)0,&l_447,&l_447,&l_447,&l_449},{&l_447,(void*)0,&l_447,&l_447,&l_447,&l_449},{&l_447,(void*)0,&l_447,&l_447,&l_447,&l_449},{&l_447,(void*)0,&l_447,&l_447,&l_447,&l_449},{&l_447,(void*)0,&l_447,&l_447,&l_447,&l_449},{&l_447,(void*)0,&l_447,&l_447,&l_447,&l_449}},{{&l_447,(void*)0,&l_447,&l_447,&l_447,&l_449},{&l_447,(void*)0,&l_447,&l_447,&l_447,&l_449},{&l_447,(void*)0,&l_447,&l_447,&l_447,&l_449},{&l_447,(void*)0,&l_447,&l_447,&l_447,&l_449},{&l_447,(void*)0,&l_447,&l_447,&l_447,&l_449},{&l_447,(void*)0,&l_447,&l_447,&l_447,&l_449}},{{&l_447,(void*)0,&l_447,&l_447,&l_447,&l_449},{&l_447,(void*)0,&l_447,&l_447,&l_447,&l_449},{&l_447,(void*)0,&l_447,&l_447,&l_447,&l_449},{&l_447,(void*)0,&l_447,&l_447,&l_447,&l_449},{&l_447,(void*)0,&l_447,&l_447,&l_447,&l_449},{&l_447,(void*)0,&l_447,&l_447,&l_447,&l_449}},{{&l_447,(void*)0,&l_447,&l_447,&l_447,&l_449},{&l_447,(void*)0,&l_447,&l_447,&l_447,&l_449},{&l_447,(void*)0,&l_447,&l_447,&l_447,&l_449},{&l_447,(void*)0,&l_447,&l_447,&l_447,&l_449},{&l_447,(void*)0,&l_447,&l_447,&l_447,&l_449},{&l_447,(void*)0,&l_447,&l_447,&l_447,&l_449}},{{&l_447,(void*)0,&l_447,&l_447,&l_447,&l_449},{&l_447,(void*)0,&l_447,&l_447,&l_447,&l_449},{&l_447,(void*)0,&l_447,&l_447,&l_447,&l_449},{&l_447,(void*)0,&l_447,&l_447,&l_447,&l_449},{&l_447,(void*)0,&l_447,&l_447,&l_447,&l_449},{&l_447,(void*)0,&l_447,&l_447,&l_447,&l_449}},{{&l_447,(void*)0,&l_447,&l_447,&l_447,&l_449},{&l_447,(void*)0,&l_447,&l_447,&l_447,&l_449},{&l_447,(void*)0,&l_447,&l_447,&l_447,&l_449},{&l_447,(void*)0,&l_447,&l_447,&l_447,&l_449},{&l_447,(void*)0,&l_447,&l_447,&l_447,&l_449},{&l_447,(void*)0,&l_447,&l_447,&l_447,&l_449}}};
                int8_t *l_452 = &p_579->g_168;
                int8_t **l_451 = &l_452;
                int8_t *l_454[5][5];
                int64_t **l_456[2][6] = {{(void*)0,&l_434,(void*)0,(void*)0,&l_434,(void*)0},{(void*)0,&l_434,(void*)0,(void*)0,&l_434,(void*)0}};
                int64_t ***l_455 = &l_456[1][1];
                int i, j, k;
                for (i = 0; i < 5; i++)
                {
                    for (j = 0; j < 5; j++)
                        l_454[i][j] = &p_579->g_168;
                }
                (*l_437) = p_579->g_436;
                (*l_390) ^= (((safe_mod_func_uint32_t_u_u(((0x1AADL ^ l_440) & (safe_mod_func_uint16_t_u_u(((safe_sub_func_int64_t_s_s((((p_579->g_180 <= ((safe_add_func_uint16_t_u_u((((((l_447 == (l_450[3][0] = &p_579->g_241)) != p_579->g_241) , ((*l_451) = &p_37)) != (l_454[1][0] = (p_579->g_453[0] , &p_579->g_168))) != p_36), p_579->g_68)) < GROUP_DIVERGE(1, 1))) <= 7UL) & 0UL), p_579->g_142)) == p_579->g_168), p_37))), p_579->g_168)) <= (*p_579->g_413)) != (*l_411));
                (*p_579->g_412) = ((((*l_455) = &l_434) == p_579->g_457[2]) , (*p_579->g_412));
            }
        }
        (*l_389) |= 3L;
    }
    for (p_37 = 0; (p_37 > 26); p_37++)
    { /* block id: 228 */
        uint32_t *l_465 = &p_579->g_164;
        int32_t l_473[9] = {0x0D402403L,0x0D402403L,0x0D402403L,0x0D402403L,0x0D402403L,0x0D402403L,0x0D402403L,0x0D402403L,0x0D402403L};
        int i;
        (*l_393) &= ((*l_395) &= (((safe_rshift_func_uint8_t_u_s(1UL, 4)) > 0x0E5E5210L) || p_37));
        (*l_393) ^= ((*l_397) = ((*p_579->g_413) &= (safe_add_func_int16_t_s_s((((++(*l_465)) && ((l_468 == (void*)0) & ((*p_579->g_458) = 0L))) & ((p_579->g_44 = (((safe_div_func_uint32_t_u_u(1UL, (safe_mul_func_int8_t_s_s(l_473[4], (safe_add_func_uint16_t_u_u(0x9936L, (safe_lshift_func_int8_t_s_u(p_37, ((*l_397) , p_36))))))))) , p_35) && 1L)) == p_35)), l_473[4]))));
    }
    for (p_579->g_436.f0 = 18; (p_579->g_436.f0 > 27); p_579->g_436.f0 = safe_add_func_uint32_t_u_u(p_579->g_436.f0, 3))
    { /* block id: 240 */
        (*p_579->g_480) = &l_400[0][4][0];
    }
    return l_481;
}


/* ------------------------------------------ */
/* 
 * reads : p_579->g_185 p_579->g_129.f0 p_579->g_84 p_579->g_245.f0 p_579->g_387 p_579->g_89 p_579->g_283.f0
 * writes: p_579->g_129.f0 p_579->g_388 p_579->g_90
 */
int8_t  func_39(int64_t  p_40, struct S1 * p_579)
{ /* block id: 40 */
    int32_t l_100[2][2];
    int64_t *l_101 = &p_579->g_70;
    int32_t l_148 = 0x15E2246EL;
    int32_t *l_215 = (void*)0;
    int32_t **l_214 = &l_215;
    uint32_t l_226[9];
    int8_t l_268 = 0x54L;
    int32_t l_327 = 0L;
    int64_t l_328 = 0x605C481B2CB0F279L;
    int32_t l_329[2];
    int32_t *l_384[5];
    int i, j;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 2; j++)
            l_100[i][j] = 0x7EF296F1L;
    }
    for (i = 0; i < 9; i++)
        l_226[i] = 0x6AC21E7AL;
    for (i = 0; i < 2; i++)
        l_329[i] = 0x12432F89L;
    for (i = 0; i < 5; i++)
        l_384[i] = &l_329[0];
    for (p_40 = (-15); (p_40 <= 14); p_40 = safe_add_func_int8_t_s_s(p_40, 8))
    { /* block id: 43 */
        int32_t l_103[6] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
        int32_t l_108 = 5L;
        int32_t l_109 = 1L;
        int32_t l_110 = 0x423FC009L;
        int32_t l_111 = 0L;
        uint32_t **l_201 = (void*)0;
        uint16_t l_254 = 0x647AL;
        int32_t l_257 = 0x26F7BA14L;
        int32_t l_330 = 0x100D1537L;
        int32_t l_331 = 0x7EE8DCCDL;
        int32_t l_332[3][8] = {{0x7B1EA330L,3L,3L,0x7B1EA330L,0x7B1EA330L,3L,3L,0x7B1EA330L},{0x7B1EA330L,3L,3L,0x7B1EA330L,0x7B1EA330L,3L,3L,0x7B1EA330L},{0x7B1EA330L,3L,3L,0x7B1EA330L,0x7B1EA330L,3L,3L,0x7B1EA330L}};
        int64_t *l_378[7][1];
        int32_t *l_383 = &l_108;
        int i, j;
        for (i = 0; i < 7; i++)
        {
            for (j = 0; j < 1; j++)
                l_378[i][j] = &p_579->g_70;
        }
        (1 + 1);
    }
    for (l_328 = 8; (l_328 >= 0); l_328 -= 1)
    { /* block id: 188 */
        p_579->g_129.f0 &= (p_579->g_185 , 0x340B7054L);
        (*l_214) = l_384[2];
        (*l_214) = &p_579->g_90;
    }
    p_579->g_388 = (p_579->g_84 > (p_579->g_245.f0 , (safe_sub_func_uint16_t_u_u(((p_579->g_387[0] , p_40) & p_40), p_579->g_387[0].f3))));
    (*p_579->g_89) = (p_579->g_387[0].f2 > p_40);
    return p_579->g_283[0][0].f0;
}


/* ------------------------------------------ */
/* 
 * reads : p_579->l_comm_values p_579->g_comm_values p_579->g_68 p_579->g_89 p_579->g_90 p_579->g_44
 * writes: p_579->g_68 p_579->g_90 p_579->g_44
 */
uint8_t  func_41(uint8_t  p_42, struct S1 * p_579)
{ /* block id: 8 */
    uint8_t l_49 = 0xC4L;
    uint32_t l_50[9][8] = {{4294967288UL,0xAD14CA72L,4294967287UL,0xAD14CA72L,4294967288UL,4294967288UL,0xAD14CA72L,4294967287UL},{4294967288UL,0xAD14CA72L,4294967287UL,0xAD14CA72L,4294967288UL,4294967288UL,0xAD14CA72L,4294967287UL},{4294967288UL,0xAD14CA72L,4294967287UL,0xAD14CA72L,4294967288UL,4294967288UL,0xAD14CA72L,4294967287UL},{4294967288UL,0xAD14CA72L,4294967287UL,0xAD14CA72L,4294967288UL,4294967288UL,0xAD14CA72L,4294967287UL},{4294967288UL,0xAD14CA72L,4294967287UL,0xAD14CA72L,4294967288UL,4294967288UL,0xAD14CA72L,4294967287UL},{4294967288UL,0xAD14CA72L,4294967287UL,0xAD14CA72L,4294967288UL,4294967288UL,0xAD14CA72L,4294967287UL},{4294967288UL,0xAD14CA72L,4294967287UL,0xAD14CA72L,4294967288UL,4294967288UL,0xAD14CA72L,4294967287UL},{4294967288UL,0xAD14CA72L,4294967287UL,0xAD14CA72L,4294967288UL,4294967288UL,0xAD14CA72L,4294967287UL},{4294967288UL,0xAD14CA72L,4294967287UL,0xAD14CA72L,4294967288UL,4294967288UL,0xAD14CA72L,4294967287UL}};
    uint8_t l_72 = 1UL;
    int i, j;
    for (p_42 = 0; (p_42 <= 44); p_42++)
    { /* block id: 11 */
        int32_t *l_47 = (void*)0;
        int32_t l_48 = 2L;
        l_49 ^= (l_48 = 0x5DFDAF0BL);
    }
    for (p_42 = 0; (p_42 <= 7); p_42 += 1)
    { /* block id: 17 */
        int8_t l_60 = 0x38L;
        uint64_t *l_67 = &p_579->g_68;
        int64_t *l_69[10] = {&p_579->g_70,&p_579->g_70,&p_579->g_70,&p_579->g_70,&p_579->g_70,&p_579->g_70,&p_579->g_70,&p_579->g_70,&p_579->g_70,&p_579->g_70};
        int32_t l_71 = 0x21BF3346L;
        int32_t l_97[2][8][5] = {{{(-1L),0x634927B9L,2L,1L,8L},{(-1L),0x634927B9L,2L,1L,8L},{(-1L),0x634927B9L,2L,1L,8L},{(-1L),0x634927B9L,2L,1L,8L},{(-1L),0x634927B9L,2L,1L,8L},{(-1L),0x634927B9L,2L,1L,8L},{(-1L),0x634927B9L,2L,1L,8L},{(-1L),0x634927B9L,2L,1L,8L}},{{(-1L),0x634927B9L,2L,1L,8L},{(-1L),0x634927B9L,2L,1L,8L},{(-1L),0x634927B9L,2L,1L,8L},{(-1L),0x634927B9L,2L,1L,8L},{(-1L),0x634927B9L,2L,1L,8L},{(-1L),0x634927B9L,2L,1L,8L},{(-1L),0x634927B9L,2L,1L,8L},{(-1L),0x634927B9L,2L,1L,8L}}};
        int i, j, k;
        l_97[1][5][1] ^= (p_42 == (func_51((safe_mod_func_uint32_t_u_u((safe_div_func_int32_t_s_s(0x31DCEDE6L, (safe_div_func_uint32_t_u_u((p_42 == (((l_60 , GROUP_DIVERGE(0, 1)) > (l_71 = (safe_mul_func_uint16_t_u_u(((safe_div_func_int8_t_s_s(4L, (((((0UL | p_42) > (((*l_67) = (p_579->l_comm_values[(safe_mod_func_uint32_t_u_u(p_579->tid, 30))] < (safe_sub_func_int16_t_s_s((+p_579->g_comm_values[p_579->tid]), p_42)))) , l_60)) && p_42) < l_50[1][3]) , l_49))) >= 0x04L), p_579->l_comm_values[(safe_mod_func_uint32_t_u_u(p_579->tid, 30))])))) && l_72)), l_60)))), p_42)), &p_579->g_44, p_579) , p_579->l_comm_values[(safe_mod_func_uint32_t_u_u(p_579->tid, 30))]));
        return p_579->g_68;
    }
    return l_50[5][7];
}


/* ------------------------------------------ */
/* 
 * reads : p_579->g_68 p_579->g_comm_values p_579->l_comm_values p_579->g_89 p_579->g_90 p_579->g_44
 * writes: p_579->g_90 p_579->g_44
 */
uint64_t  func_51(uint16_t  p_52, uint8_t * p_53, struct S1 * p_579)
{ /* block id: 20 */
    uint8_t *l_75 = &p_579->g_44;
    uint64_t *l_76[8] = {&p_579->g_68,&p_579->g_68,&p_579->g_68,&p_579->g_68,&p_579->g_68,&p_579->g_68,&p_579->g_68,&p_579->g_68};
    uint16_t *l_83[5] = {&p_579->g_84,&p_579->g_84,&p_579->g_84,&p_579->g_84,&p_579->g_84};
    int32_t l_85 = 1L;
    int32_t l_88 = 0x2F083348L;
    int32_t **l_91 = (void*)0;
    int32_t *l_92 = &l_85;
    int i;
    (*p_579->g_89) ^= (safe_rshift_func_int16_t_s_s((((void*)0 == l_75) | (((((l_76[0] != &p_579->g_68) , (safe_sub_func_int32_t_s_s(p_52, (((safe_sub_func_uint32_t_u_u(GROUP_DIVERGE(2, 1), (((l_85 = (p_579->g_68 , ((void*)0 != l_76[5]))) , (safe_mul_func_uint8_t_u_u((((l_76[2] != l_76[4]) & p_579->g_68) , p_579->g_comm_values[p_579->tid]), l_85))) || 0UL))) & l_88) ^ p_579->g_68)))) , (-7L)) > p_52) , p_579->l_comm_values[(safe_mod_func_uint32_t_u_u(p_579->tid, 30))])), 9));
    l_92 = &l_88;
    for (l_85 = (-25); (l_85 > 12); ++l_85)
    { /* block id: 26 */
        for (p_579->g_44 = 0; (p_579->g_44 <= 59); ++p_579->g_44)
        { /* block id: 29 */
            if ((*p_579->g_89))
                break;
        }
        (*l_92) ^= (-2L);
    }
    return p_579->l_comm_values[(safe_mod_func_uint32_t_u_u(p_579->tid, 30))];
}


__kernel void entry(__global ulong *result, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local int64_t l_comm_values[30];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 30; i++)
            l_comm_values[i] = 1;
    struct S1 c_580;
    struct S1* p_579 = &c_580;
    struct S1 c_581 = {
        0xA0L, // p_579->g_44
        18446744073709551615UL, // p_579->g_68
        (-3L), // p_579->g_70
        7UL, // p_579->g_84
        0x6A276D00L, // p_579->g_90
        &p_579->g_90, // p_579->g_89
        {0L,0x218FE463L,-1L,8UL}, // p_579->g_127
        &p_579->g_127, // p_579->g_128
        {0x289F6E7EL,1L,-1L,0x3886L}, // p_579->g_129
        &p_579->g_129, // p_579->g_130
        {0L,-1L,0x50DB93F61EF617C7L,4UL}, // p_579->g_136
        255UL, // p_579->g_142
        0xAAD06F1CL, // p_579->g_164
        2L, // p_579->g_168
        4294967290UL, // p_579->g_180
        0x659B8041L, // p_579->g_185
        (-1L), // p_579->g_218
        0x393109E4L, // p_579->g_220
        0xD6F3L, // p_579->g_224
        &p_579->g_68, // p_579->g_231
        &p_579->g_231, // p_579->g_230
        &p_579->g_230, // p_579->g_229
        0L, // p_579->g_241
        0x3CL, // p_579->g_244
        {3L,0x6541012FL,-1L,0x3A49L}, // p_579->g_245
        {0L,0x22745AFFL,2L,0x725EL}, // p_579->g_249
        &p_579->g_127, // p_579->g_250
        {0UL,7UL,0UL,0UL,7UL,0UL}, // p_579->g_269
        {(void*)0}, // p_579->g_279
        {{{0x33ADBE0AL,1L,1L,4UL},{0x33ADBE0AL,1L,1L,4UL},{0x33ADBE0AL,1L,1L,4UL}},{{0x33ADBE0AL,1L,1L,4UL},{0x33ADBE0AL,1L,1L,4UL},{0x33ADBE0AL,1L,1L,4UL}},{{0x33ADBE0AL,1L,1L,4UL},{0x33ADBE0AL,1L,1L,4UL},{0x33ADBE0AL,1L,1L,4UL}}}, // p_579->g_283
        {0x16002CAEL,0L,-1L,1UL}, // p_579->g_288
        {{{&p_579->g_288.f0,&p_579->g_288.f0,&p_579->g_129.f0,&p_579->g_245.f0},{&p_579->g_288.f0,&p_579->g_288.f0,&p_579->g_129.f0,&p_579->g_245.f0},{&p_579->g_288.f0,&p_579->g_288.f0,&p_579->g_129.f0,&p_579->g_245.f0},{&p_579->g_288.f0,&p_579->g_288.f0,&p_579->g_129.f0,&p_579->g_245.f0},{&p_579->g_288.f0,&p_579->g_288.f0,&p_579->g_129.f0,&p_579->g_245.f0},{&p_579->g_288.f0,&p_579->g_288.f0,&p_579->g_129.f0,&p_579->g_245.f0}},{{&p_579->g_288.f0,&p_579->g_288.f0,&p_579->g_129.f0,&p_579->g_245.f0},{&p_579->g_288.f0,&p_579->g_288.f0,&p_579->g_129.f0,&p_579->g_245.f0},{&p_579->g_288.f0,&p_579->g_288.f0,&p_579->g_129.f0,&p_579->g_245.f0},{&p_579->g_288.f0,&p_579->g_288.f0,&p_579->g_129.f0,&p_579->g_245.f0},{&p_579->g_288.f0,&p_579->g_288.f0,&p_579->g_129.f0,&p_579->g_245.f0},{&p_579->g_288.f0,&p_579->g_288.f0,&p_579->g_129.f0,&p_579->g_245.f0}},{{&p_579->g_288.f0,&p_579->g_288.f0,&p_579->g_129.f0,&p_579->g_245.f0},{&p_579->g_288.f0,&p_579->g_288.f0,&p_579->g_129.f0,&p_579->g_245.f0},{&p_579->g_288.f0,&p_579->g_288.f0,&p_579->g_129.f0,&p_579->g_245.f0},{&p_579->g_288.f0,&p_579->g_288.f0,&p_579->g_129.f0,&p_579->g_245.f0},{&p_579->g_288.f0,&p_579->g_288.f0,&p_579->g_129.f0,&p_579->g_245.f0},{&p_579->g_288.f0,&p_579->g_288.f0,&p_579->g_129.f0,&p_579->g_245.f0}},{{&p_579->g_288.f0,&p_579->g_288.f0,&p_579->g_129.f0,&p_579->g_245.f0},{&p_579->g_288.f0,&p_579->g_288.f0,&p_579->g_129.f0,&p_579->g_245.f0},{&p_579->g_288.f0,&p_579->g_288.f0,&p_579->g_129.f0,&p_579->g_245.f0},{&p_579->g_288.f0,&p_579->g_288.f0,&p_579->g_129.f0,&p_579->g_245.f0},{&p_579->g_288.f0,&p_579->g_288.f0,&p_579->g_129.f0,&p_579->g_245.f0},{&p_579->g_288.f0,&p_579->g_288.f0,&p_579->g_129.f0,&p_579->g_245.f0}},{{&p_579->g_288.f0,&p_579->g_288.f0,&p_579->g_129.f0,&p_579->g_245.f0},{&p_579->g_288.f0,&p_579->g_288.f0,&p_579->g_129.f0,&p_579->g_245.f0},{&p_579->g_288.f0,&p_579->g_288.f0,&p_579->g_129.f0,&p_579->g_245.f0},{&p_579->g_288.f0,&p_579->g_288.f0,&p_579->g_129.f0,&p_579->g_245.f0},{&p_579->g_288.f0,&p_579->g_288.f0,&p_579->g_129.f0,&p_579->g_245.f0},{&p_579->g_288.f0,&p_579->g_288.f0,&p_579->g_129.f0,&p_579->g_245.f0}},{{&p_579->g_288.f0,&p_579->g_288.f0,&p_579->g_129.f0,&p_579->g_245.f0},{&p_579->g_288.f0,&p_579->g_288.f0,&p_579->g_129.f0,&p_579->g_245.f0},{&p_579->g_288.f0,&p_579->g_288.f0,&p_579->g_129.f0,&p_579->g_245.f0},{&p_579->g_288.f0,&p_579->g_288.f0,&p_579->g_129.f0,&p_579->g_245.f0},{&p_579->g_288.f0,&p_579->g_288.f0,&p_579->g_129.f0,&p_579->g_245.f0},{&p_579->g_288.f0,&p_579->g_288.f0,&p_579->g_129.f0,&p_579->g_245.f0}},{{&p_579->g_288.f0,&p_579->g_288.f0,&p_579->g_129.f0,&p_579->g_245.f0},{&p_579->g_288.f0,&p_579->g_288.f0,&p_579->g_129.f0,&p_579->g_245.f0},{&p_579->g_288.f0,&p_579->g_288.f0,&p_579->g_129.f0,&p_579->g_245.f0},{&p_579->g_288.f0,&p_579->g_288.f0,&p_579->g_129.f0,&p_579->g_245.f0},{&p_579->g_288.f0,&p_579->g_288.f0,&p_579->g_129.f0,&p_579->g_245.f0},{&p_579->g_288.f0,&p_579->g_288.f0,&p_579->g_129.f0,&p_579->g_245.f0}},{{&p_579->g_288.f0,&p_579->g_288.f0,&p_579->g_129.f0,&p_579->g_245.f0},{&p_579->g_288.f0,&p_579->g_288.f0,&p_579->g_129.f0,&p_579->g_245.f0},{&p_579->g_288.f0,&p_579->g_288.f0,&p_579->g_129.f0,&p_579->g_245.f0},{&p_579->g_288.f0,&p_579->g_288.f0,&p_579->g_129.f0,&p_579->g_245.f0},{&p_579->g_288.f0,&p_579->g_288.f0,&p_579->g_129.f0,&p_579->g_245.f0},{&p_579->g_288.f0,&p_579->g_288.f0,&p_579->g_129.f0,&p_579->g_245.f0}},{{&p_579->g_288.f0,&p_579->g_288.f0,&p_579->g_129.f0,&p_579->g_245.f0},{&p_579->g_288.f0,&p_579->g_288.f0,&p_579->g_129.f0,&p_579->g_245.f0},{&p_579->g_288.f0,&p_579->g_288.f0,&p_579->g_129.f0,&p_579->g_245.f0},{&p_579->g_288.f0,&p_579->g_288.f0,&p_579->g_129.f0,&p_579->g_245.f0},{&p_579->g_288.f0,&p_579->g_288.f0,&p_579->g_129.f0,&p_579->g_245.f0},{&p_579->g_288.f0,&p_579->g_288.f0,&p_579->g_129.f0,&p_579->g_245.f0}}}, // p_579->g_290
        &p_579->g_90, // p_579->g_291
        (-8L), // p_579->g_300
        0L, // p_579->g_326
        0x0E5A4777L, // p_579->g_333
        {-2L,0x4B18CC3CL,0x349389C57FDE84D4L,65528UL}, // p_579->g_381
        &p_579->g_127, // p_579->g_382
        {{0L,-1L,-8L,0UL},{0L,-1L,-8L,0UL},{0L,-1L,-8L,0UL}}, // p_579->g_387
        1UL, // p_579->g_388
        &p_579->g_245.f0, // p_579->g_413
        &p_579->g_413, // p_579->g_412
        {-1L,-10L,-10L,0xCD60L}, // p_579->g_433
        {0x22DEFF4BL,0x3CF1B483L,0L,0xC927L}, // p_579->g_436
        {{0x35EEB368L,8L,0x203405DADAD87833L,0xDD33L},{0x35EEB368L,8L,0x203405DADAD87833L,0xDD33L},{0x35EEB368L,8L,0x203405DADAD87833L,0xDD33L},{0x35EEB368L,8L,0x203405DADAD87833L,0xDD33L},{0x35EEB368L,8L,0x203405DADAD87833L,0xDD33L},{0x35EEB368L,8L,0x203405DADAD87833L,0xDD33L}}, // p_579->g_453
        &p_579->g_70, // p_579->g_458
        {&p_579->g_458,&p_579->g_458,&p_579->g_458,&p_579->g_458,&p_579->g_458,&p_579->g_458,&p_579->g_458}, // p_579->g_457
        &p_579->g_413, // p_579->g_480
        0xBABEF612F231E079L, // p_579->g_486
        8L, // p_579->g_543
        1UL, // p_579->g_549
        &p_579->g_413, // p_579->g_561
        &p_579->g_387[0].f0, // p_579->g_563
        {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)}, // p_579->g_571
        0x442CDBCFL, // p_579->g_572
        {&p_579->g_571[3],&p_579->g_571[3],&p_579->g_571[3],&p_579->g_571[3],&p_579->g_571[3],&p_579->g_571[3]}, // p_579->g_570
        4294967295UL, // p_579->g_577
        sequence_input[get_global_id(0)], // p_579->global_0_offset
        sequence_input[get_global_id(1)], // p_579->global_1_offset
        sequence_input[get_global_id(2)], // p_579->global_2_offset
        sequence_input[get_local_id(0)], // p_579->local_0_offset
        sequence_input[get_local_id(1)], // p_579->local_1_offset
        sequence_input[get_local_id(2)], // p_579->local_2_offset
        sequence_input[get_group_id(0)], // p_579->group_0_offset
        sequence_input[get_group_id(1)], // p_579->group_1_offset
        sequence_input[get_group_id(2)], // p_579->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 30)), permutations[0][get_linear_local_id()])), // p_579->tid
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_580 = c_581;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_579);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_579->g_44, "p_579->g_44", print_hash_value);
    transparent_crc(p_579->g_68, "p_579->g_68", print_hash_value);
    transparent_crc(p_579->g_70, "p_579->g_70", print_hash_value);
    transparent_crc(p_579->g_84, "p_579->g_84", print_hash_value);
    transparent_crc(p_579->g_90, "p_579->g_90", print_hash_value);
    transparent_crc(p_579->g_127.f0, "p_579->g_127.f0", print_hash_value);
    transparent_crc(p_579->g_127.f1, "p_579->g_127.f1", print_hash_value);
    transparent_crc(p_579->g_127.f2, "p_579->g_127.f2", print_hash_value);
    transparent_crc(p_579->g_127.f3, "p_579->g_127.f3", print_hash_value);
    transparent_crc(p_579->g_129.f0, "p_579->g_129.f0", print_hash_value);
    transparent_crc(p_579->g_129.f1, "p_579->g_129.f1", print_hash_value);
    transparent_crc(p_579->g_129.f2, "p_579->g_129.f2", print_hash_value);
    transparent_crc(p_579->g_129.f3, "p_579->g_129.f3", print_hash_value);
    transparent_crc(p_579->g_136.f0, "p_579->g_136.f0", print_hash_value);
    transparent_crc(p_579->g_136.f1, "p_579->g_136.f1", print_hash_value);
    transparent_crc(p_579->g_136.f2, "p_579->g_136.f2", print_hash_value);
    transparent_crc(p_579->g_136.f3, "p_579->g_136.f3", print_hash_value);
    transparent_crc(p_579->g_142, "p_579->g_142", print_hash_value);
    transparent_crc(p_579->g_164, "p_579->g_164", print_hash_value);
    transparent_crc(p_579->g_168, "p_579->g_168", print_hash_value);
    transparent_crc(p_579->g_180, "p_579->g_180", print_hash_value);
    transparent_crc(p_579->g_185, "p_579->g_185", print_hash_value);
    transparent_crc(p_579->g_218, "p_579->g_218", print_hash_value);
    transparent_crc(p_579->g_220, "p_579->g_220", print_hash_value);
    transparent_crc(p_579->g_224, "p_579->g_224", print_hash_value);
    transparent_crc(p_579->g_241, "p_579->g_241", print_hash_value);
    transparent_crc(p_579->g_244, "p_579->g_244", print_hash_value);
    transparent_crc(p_579->g_245.f0, "p_579->g_245.f0", print_hash_value);
    transparent_crc(p_579->g_245.f1, "p_579->g_245.f1", print_hash_value);
    transparent_crc(p_579->g_245.f2, "p_579->g_245.f2", print_hash_value);
    transparent_crc(p_579->g_245.f3, "p_579->g_245.f3", print_hash_value);
    transparent_crc(p_579->g_249.f0, "p_579->g_249.f0", print_hash_value);
    transparent_crc(p_579->g_249.f1, "p_579->g_249.f1", print_hash_value);
    transparent_crc(p_579->g_249.f2, "p_579->g_249.f2", print_hash_value);
    transparent_crc(p_579->g_249.f3, "p_579->g_249.f3", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_579->g_269[i], "p_579->g_269[i]", print_hash_value);

    }
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 3; j++)
        {
            transparent_crc(p_579->g_283[i][j].f0, "p_579->g_283[i][j].f0", print_hash_value);
            transparent_crc(p_579->g_283[i][j].f1, "p_579->g_283[i][j].f1", print_hash_value);
            transparent_crc(p_579->g_283[i][j].f2, "p_579->g_283[i][j].f2", print_hash_value);
            transparent_crc(p_579->g_283[i][j].f3, "p_579->g_283[i][j].f3", print_hash_value);

        }
    }
    transparent_crc(p_579->g_288.f0, "p_579->g_288.f0", print_hash_value);
    transparent_crc(p_579->g_288.f1, "p_579->g_288.f1", print_hash_value);
    transparent_crc(p_579->g_288.f2, "p_579->g_288.f2", print_hash_value);
    transparent_crc(p_579->g_288.f3, "p_579->g_288.f3", print_hash_value);
    transparent_crc(p_579->g_300, "p_579->g_300", print_hash_value);
    transparent_crc(p_579->g_326, "p_579->g_326", print_hash_value);
    transparent_crc(p_579->g_333, "p_579->g_333", print_hash_value);
    transparent_crc(p_579->g_381.f0, "p_579->g_381.f0", print_hash_value);
    transparent_crc(p_579->g_381.f1, "p_579->g_381.f1", print_hash_value);
    transparent_crc(p_579->g_381.f2, "p_579->g_381.f2", print_hash_value);
    transparent_crc(p_579->g_381.f3, "p_579->g_381.f3", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_579->g_387[i].f0, "p_579->g_387[i].f0", print_hash_value);
        transparent_crc(p_579->g_387[i].f1, "p_579->g_387[i].f1", print_hash_value);
        transparent_crc(p_579->g_387[i].f2, "p_579->g_387[i].f2", print_hash_value);
        transparent_crc(p_579->g_387[i].f3, "p_579->g_387[i].f3", print_hash_value);

    }
    transparent_crc(p_579->g_388, "p_579->g_388", print_hash_value);
    transparent_crc(p_579->g_433.f0, "p_579->g_433.f0", print_hash_value);
    transparent_crc(p_579->g_433.f1, "p_579->g_433.f1", print_hash_value);
    transparent_crc(p_579->g_433.f2, "p_579->g_433.f2", print_hash_value);
    transparent_crc(p_579->g_433.f3, "p_579->g_433.f3", print_hash_value);
    transparent_crc(p_579->g_436.f0, "p_579->g_436.f0", print_hash_value);
    transparent_crc(p_579->g_436.f1, "p_579->g_436.f1", print_hash_value);
    transparent_crc(p_579->g_436.f2, "p_579->g_436.f2", print_hash_value);
    transparent_crc(p_579->g_436.f3, "p_579->g_436.f3", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_579->g_453[i].f0, "p_579->g_453[i].f0", print_hash_value);
        transparent_crc(p_579->g_453[i].f1, "p_579->g_453[i].f1", print_hash_value);
        transparent_crc(p_579->g_453[i].f2, "p_579->g_453[i].f2", print_hash_value);
        transparent_crc(p_579->g_453[i].f3, "p_579->g_453[i].f3", print_hash_value);

    }
    transparent_crc(p_579->g_486, "p_579->g_486", print_hash_value);
    transparent_crc(p_579->g_543, "p_579->g_543", print_hash_value);
    transparent_crc(p_579->g_549, "p_579->g_549", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_579->g_571[i], "p_579->g_571[i]", print_hash_value);

    }
    transparent_crc(p_579->g_572, "p_579->g_572", print_hash_value);
    transparent_crc(p_579->g_577, "p_579->g_577", print_hash_value);
    transparent_crc(p_579->l_comm_values[get_linear_local_id()], "p_579->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_579->g_comm_values[get_linear_group_id() * 30 + get_linear_local_id()], "p_579->g_comm_values[get_linear_group_id() * 30 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
