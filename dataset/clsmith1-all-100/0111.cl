// --atomics 13 ---atomic_reductions ---fake_divergence ---inter_thread_comm -g 60,53,1 -l 1,1,1
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

__constant uint32_t permutations[10][1] = {
{0}, // permutation 0
{0}, // permutation 1
{0}, // permutation 2
{0}, // permutation 3
{0}, // permutation 4
{0}, // permutation 5
{0}, // permutation 6
{0}, // permutation 7
{0}, // permutation 8
{0} // permutation 9
};

// Seed: 111

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   uint32_t  f0;
   volatile uint32_t  f1;
   volatile int64_t  f2;
   uint16_t  f3;
   int32_t  f4;
   int64_t  f5;
   uint16_t  f6;
};

union U1 {
   int64_t  f0;
   volatile int8_t  f1;
};

struct S2 {
    volatile union U1 g_11[2];
    volatile union U1 * volatile g_10;
    union U1 *g_12;
    VECTOR(uint16_t, 16) g_34;
    uint32_t g_64[6];
    union U1 g_66[9];
    int32_t g_82;
    VECTOR(int8_t, 2) g_127;
    union U1 g_137;
    VECTOR(int32_t, 16) g_143;
    int32_t g_146;
    VECTOR(int64_t, 4) g_149;
    int32_t *g_151;
    VECTOR(int32_t, 16) g_155;
    VECTOR(int32_t, 16) g_157;
    union U1 g_164;
    uint64_t g_167;
    int64_t *g_177[5][1];
    struct S0 g_183;
    int16_t g_198[7][5];
    VECTOR(uint32_t, 16) g_207;
    uint32_t g_213[3];
    VECTOR(uint8_t, 16) g_216;
    VECTOR(int16_t, 16) g_222;
    union U1 g_225[3][6][6];
    int32_t g_230;
    struct S0 *g_236;
    struct S0 **g_235;
    union U1 g_252;
    int32_t g_296[4][4];
    volatile uint8_t g_312;
    volatile uint8_t *g_311;
    struct S0 g_323;
    struct S0 g_325;
    struct S0 g_326;
    union U1 g_328;
    volatile struct S0 g_357;
    volatile struct S0 * volatile g_358[9];
    volatile struct S0 * volatile g_359;
    struct S0 g_365;
    struct S0 * volatile g_366;
    struct S0 g_383;
    uint8_t *g_398[2][4];
    int32_t * volatile g_402;
    VECTOR(uint32_t, 2) g_432;
    VECTOR(uint16_t, 4) g_433;
    volatile VECTOR(int16_t, 8) g_434;
    volatile union U1 * volatile **g_444;
    volatile union U1 g_496[9];
    volatile VECTOR(int8_t, 16) g_508;
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
uint32_t  func_1(struct S2 * p_529);
union U1 * func_2(union U1 * p_3, struct S2 * p_529);
union U1 * func_4(uint8_t  p_5, union U1 * p_6, int32_t  p_7, int16_t  p_8, uint32_t  p_9, struct S2 * p_529);
int8_t  func_15(union U1 * p_16, int64_t  p_17, uint32_t  p_18, uint32_t  p_19, union U1 * p_20, struct S2 * p_529);
uint64_t  func_23(union U1 * p_24, int32_t  p_25, struct S2 * p_529);
union U1 * func_26(union U1 * p_27, union U1 * p_28, struct S2 * p_529);
union U1 * func_29(union U1 * p_30, int32_t  p_31, uint32_t  p_32, struct S2 * p_529);
int64_t  func_36(uint32_t  p_37, struct S2 * p_529);
int32_t  func_43(uint8_t  p_44, union U1 * p_45, uint8_t  p_46, int64_t  p_47, struct S2 * p_529);
uint64_t  func_52(int64_t  p_53, uint32_t  p_54, union U1 * p_55, union U1 * p_56, struct S2 * p_529);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_529->g_10 p_529->g_12 p_529->l_comm_values p_529->g_34 p_529->g_comm_values p_529->g_64 p_529->g_66.f0 p_529->g_82 p_529->g_127 p_529->g_146 p_529->g_155 p_529->g_157 p_529->g_167 p_529->g_177 p_529->g_151 p_529->g_183.f3 p_529->g_198 p_529->g_207 p_529->g_213 p_529->g_216 p_529->g_222 p_529->g_235 p_529->g_183.f6 p_529->g_137.f0 p_529->g_230 p_529->g_183.f0 p_529->g_143 p_529->g_296 p_529->g_311 p_529->g_252.f0 p_529->g_325.f6 p_529->g_323.f0 p_529->g_326.f5 p_529->g_357 p_529->g_359 p_529->g_312 p_529->g_325.f4 p_529->g_365 p_529->g_366 p_529->g_323.f6 p_529->g_383 p_529->g_402 p_529->g_323.f5 p_529->g_432 p_529->g_433 p_529->g_434 p_529->g_444 p_529->g_183.f5 p_529->g_325.f0 p_529->g_183.f4 p_529->g_496 p_529->g_508 p_529->g_225.f0
 * writes: p_529->g_64 p_529->g_82 p_529->g_66.f0 p_529->g_146 p_529->g_143 p_529->g_151 p_529->g_167 p_529->g_34 p_529->g_198 p_529->g_157 p_529->g_137.f0 p_529->g_230 p_529->g_216 p_529->g_296 p_529->g_236 p_529->g_183.f3 p_529->g_357 p_529->g_365 p_529->g_323.f6 p_529->g_398 p_529->g_402 p_529->g_323.f5 p_529->g_325.f6 p_529->g_183.f6 p_529->g_183.f4 p_529->g_127
 */
uint32_t  func_1(struct S2 * p_529)
{ /* block id: 4 */
    VECTOR(int32_t, 16) l_33 = (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, (-3L)), (-3L)), (-3L), 0L, (-3L), (VECTOR(int32_t, 2))(0L, (-3L)), (VECTOR(int32_t, 2))(0L, (-3L)), 0L, (-3L), 0L, (-3L));
    union U1 *l_224 = &p_529->g_225[0][0][0];
    union U1 **l_253 = &l_224;
    union U1 *l_327 = &p_529->g_328;
    int i;
    (*l_253) = func_2(func_4(((void*)0 == p_529->g_10), p_529->g_12, p_529->l_comm_values[(safe_mod_func_uint32_t_u_u(p_529->tid, 1))], (safe_div_func_int64_t_s_s(((((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(255UL, 1UL)).xxyxxxyy)))).s5 || func_15(p_529->g_12, ((-1L) & (((safe_div_func_uint64_t_u_u(func_23(((*l_253) = func_26(func_29(((((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(mad_sat(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(clz(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(l_33.sdd9ae65c3421ad7b)).odd)), 0x6896E60BL, ((VECTOR(int32_t, 2))(upsample(((VECTOR(int16_t, 2))(clz(((VECTOR(int16_t, 2))(0x749DL, 1L))))), ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 4))(p_529->g_34.sf8c5)).lo)).yxyxyyyx)).s13))), 0x6AD2214CL, (-1L), 0x5C124380L, (-1L), 0x7E29AC92L)).sd1, ((VECTOR(int32_t, 2))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 16))(0L, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(1L, 0x46B7D869L)).xyyxyxxyyxxyyyyy)).sfefa)), 0L, (l_33.s0 != (p_529->l_comm_values[(safe_mod_func_uint32_t_u_u(p_529->tid, 1))] & p_529->g_34.s8)), (-1L), 0L, p_529->g_comm_values[p_529->tid], ((VECTOR(int32_t, 4))(0x31966BA0L)), 0x12614F5CL, (-1L))).s60, ((VECTOR(int32_t, 2))(0x7F7A2D47L)), ((VECTOR(int32_t, 2))((-1L)))))), ((VECTOR(int32_t, 2))(0x51F81F13L))))).yxxx)).xyzwwzyz))))).s40, ((VECTOR(int32_t, 2))(5L)), ((VECTOR(int32_t, 2))((-1L)))))))).even != l_33.s7) , p_529->g_12), p_529->l_comm_values[(safe_mod_func_uint32_t_u_u(p_529->tid, 1))], l_33.s2, p_529), l_224, p_529)), p_529->g_183.f6, p_529), l_33.s1)) , 0x155CL) == l_33.se)), p_529->g_326.f5, l_33.sc, l_327, p_529)) < l_33.se), l_33.s5)), l_33.s7, p_529), p_529);
    return p_529->g_225[0][0][0].f0;
}


/* ------------------------------------------ */
/* 
 * reads : p_529->g_365.f6 p_529->g_325.f6 p_529->g_207 p_529->g_357.f3 p_529->g_183.f6 p_529->g_155 p_529->g_183.f5 p_529->g_325.f0 p_529->g_183.f4 p_529->g_311 p_529->g_312 p_529->g_82 p_529->g_230 p_529->g_402 p_529->g_146 p_529->g_496 p_529->g_508 p_529->g_34 p_529->g_183.f3 p_529->g_252.f0 p_529->g_127
 * writes: p_529->g_365.f6 p_529->g_325.f6 p_529->g_183.f6 p_529->g_183.f4 p_529->g_82 p_529->g_230 p_529->g_151 p_529->g_127
 */
union U1 * func_2(union U1 * p_3, struct S2 * p_529)
{ /* block id: 191 */
    VECTOR(int64_t, 4) l_452 = (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), (-1L)), (-1L));
    int32_t **l_453[4][7] = {{&p_529->g_151,&p_529->g_151,&p_529->g_151,&p_529->g_151,&p_529->g_151,&p_529->g_151,&p_529->g_151},{&p_529->g_151,&p_529->g_151,&p_529->g_151,&p_529->g_151,&p_529->g_151,&p_529->g_151,&p_529->g_151},{&p_529->g_151,&p_529->g_151,&p_529->g_151,&p_529->g_151,&p_529->g_151,&p_529->g_151,&p_529->g_151},{&p_529->g_151,&p_529->g_151,&p_529->g_151,&p_529->g_151,&p_529->g_151,&p_529->g_151,&p_529->g_151}};
    uint64_t *l_457 = &p_529->g_167;
    uint8_t *l_526 = (void*)0;
    int64_t l_527 = 0x6595764D0BADD7ECL;
    union U1 *l_528[7] = {&p_529->g_66[8],&p_529->g_164,&p_529->g_66[8],&p_529->g_66[8],&p_529->g_164,&p_529->g_66[8],&p_529->g_66[8]};
    int i, j;
    for (p_529->g_365.f6 = (-17); (p_529->g_365.f6 < 4); p_529->g_365.f6 = safe_add_func_uint8_t_u_u(p_529->g_365.f6, 2))
    { /* block id: 194 */
        int32_t **l_456[9][9] = {{&p_529->g_151,&p_529->g_151,&p_529->g_151,&p_529->g_151,&p_529->g_151,&p_529->g_151,&p_529->g_151,&p_529->g_151,&p_529->g_151},{&p_529->g_151,&p_529->g_151,&p_529->g_151,&p_529->g_151,&p_529->g_151,&p_529->g_151,&p_529->g_151,&p_529->g_151,&p_529->g_151},{&p_529->g_151,&p_529->g_151,&p_529->g_151,&p_529->g_151,&p_529->g_151,&p_529->g_151,&p_529->g_151,&p_529->g_151,&p_529->g_151},{&p_529->g_151,&p_529->g_151,&p_529->g_151,&p_529->g_151,&p_529->g_151,&p_529->g_151,&p_529->g_151,&p_529->g_151,&p_529->g_151},{&p_529->g_151,&p_529->g_151,&p_529->g_151,&p_529->g_151,&p_529->g_151,&p_529->g_151,&p_529->g_151,&p_529->g_151,&p_529->g_151},{&p_529->g_151,&p_529->g_151,&p_529->g_151,&p_529->g_151,&p_529->g_151,&p_529->g_151,&p_529->g_151,&p_529->g_151,&p_529->g_151},{&p_529->g_151,&p_529->g_151,&p_529->g_151,&p_529->g_151,&p_529->g_151,&p_529->g_151,&p_529->g_151,&p_529->g_151,&p_529->g_151},{&p_529->g_151,&p_529->g_151,&p_529->g_151,&p_529->g_151,&p_529->g_151,&p_529->g_151,&p_529->g_151,&p_529->g_151,&p_529->g_151},{&p_529->g_151,&p_529->g_151,&p_529->g_151,&p_529->g_151,&p_529->g_151,&p_529->g_151,&p_529->g_151,&p_529->g_151,&p_529->g_151}};
        int32_t l_472 = 0x031CB151L;
        uint64_t l_477[9] = {7UL,7UL,7UL,7UL,7UL,7UL,7UL,7UL,7UL};
        int i, j;
        for (p_529->g_325.f6 = (-16); (p_529->g_325.f6 <= 17); p_529->g_325.f6 = safe_add_func_int16_t_s_s(p_529->g_325.f6, 5))
        { /* block id: 197 */
            VECTOR(uint64_t, 16) l_451 = (VECTOR(uint64_t, 16))(0xE6164F1CED80C914L, (VECTOR(uint64_t, 4))(0xE6164F1CED80C914L, (VECTOR(uint64_t, 2))(0xE6164F1CED80C914L, 1UL), 1UL), 1UL, 0xE6164F1CED80C914L, 1UL, (VECTOR(uint64_t, 2))(0xE6164F1CED80C914L, 1UL), (VECTOR(uint64_t, 2))(0xE6164F1CED80C914L, 1UL), 0xE6164F1CED80C914L, 1UL, 0xE6164F1CED80C914L, 1UL);
            int32_t ***l_454 = (void*)0;
            int32_t ***l_455 = &l_453[0][5];
            uint16_t *l_464 = &p_529->g_183.f6;
            union U1 *l_497 = &p_529->g_252;
            int32_t l_525 = (-7L);
            int i;
            if ((((((p_529->g_207.s8 ^ ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(l_451.sae)), 18446744073709551615UL, 5UL)).y) , ((VECTOR(int64_t, 4))(l_452.xxyx)).w) < (((*l_455) = l_453[3][4]) != l_456[0][3])) | ((l_457 == (void*)0) > ((0x40L <= (l_452.z ^ (safe_rshift_func_uint16_t_u_s(p_529->g_357.f3, ((safe_mul_func_uint8_t_u_u(GROUP_DIVERGE(0, 1), (safe_mul_func_uint16_t_u_u(((*l_464) ^= ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(1UL, 65527UL)).xxyy)).z), (+(safe_div_func_uint16_t_u_u(((p_529->g_155.s4 , l_452.y) ^ p_529->g_183.f5), 0x750BL))))))) && FAKE_DIVERGE(p_529->local_0_offset, get_local_id(0), 10)))))) & 18446744073709551614UL))) | p_529->g_325.f0))
            { /* block id: 200 */
                int32_t *l_469 = &p_529->g_230;
                int8_t *l_478 = (void*)0;
                int8_t *l_479 = (void*)0;
                int8_t *l_480 = (void*)0;
                int8_t *l_481 = (void*)0;
                int8_t *l_482 = (void*)0;
                int8_t *l_483 = (void*)0;
                int8_t *l_484 = (void*)0;
                int8_t *l_485 = (void*)0;
                int8_t *l_486 = (void*)0;
                int8_t *l_487 = (void*)0;
                int8_t *l_488 = (void*)0;
                int8_t *l_489 = (void*)0;
                int8_t *l_490 = (void*)0;
                int8_t *l_491 = (void*)0;
                int8_t *l_492 = (void*)0;
                int32_t l_493 = (-1L);
                for (p_529->g_183.f4 = 19; (p_529->g_183.f4 > (-19)); p_529->g_183.f4 = safe_sub_func_uint16_t_u_u(p_529->g_183.f4, 5))
                { /* block id: 203 */
                    l_469 = &p_529->g_82;
                }
                (*l_469) = (+(safe_rshift_func_uint8_t_u_s(((*p_529->g_311) | l_472), (safe_mul_func_int8_t_s_s((l_493 ^= ((safe_lshift_func_uint8_t_u_s((((void*)0 != &p_529->g_82) , (p_529->g_82 & l_477[0])), 3)) >= (*l_469))), (safe_mod_func_int32_t_s_s((*l_469), ((VECTOR(uint32_t, 16))((*l_469), 0x3E3F2E87L, ((VECTOR(uint32_t, 4))(0x5058B390L)), 1UL, 0x98158C7CL, FAKE_DIVERGE(p_529->local_2_offset, get_local_id(2), 10), (*l_469), ((VECTOR(uint32_t, 4))(0x7BADA4DBL)), 1UL, 4294967292UL)).s8)))))));
                if ((*p_529->g_402))
                    break;
                l_469 = (p_529->g_496[4] , ((**l_455) = &p_529->g_230));
            }
            else
            { /* block id: 211 */
                uint32_t l_498 = 0x5C7D3FA8L;
                uint64_t **l_503 = &l_457;
                int32_t l_515 = 1L;
                int8_t *l_516 = (void*)0;
                int8_t *l_517 = (void*)0;
                int8_t *l_518 = (void*)0;
                int8_t *l_519 = (void*)0;
                int8_t *l_520 = (void*)0;
                int8_t *l_521 = (void*)0;
                int32_t l_522[4][3] = {{2L,2L,2L},{2L,2L,2L},{2L,2L,2L},{2L,2L,2L}};
                uint8_t l_523 = 3UL;
                int8_t *l_524 = (void*)0;
                int i, j;
                if ((*p_529->g_402))
                { /* block id: 212 */
                    if ((*p_529->g_402))
                        break;
                }
                else
                { /* block id: 214 */
                    return l_497;
                }
                l_498 &= 0x3335AE07L;
                if (l_498)
                    continue;
                l_525 &= (safe_lshift_func_uint16_t_u_s((((safe_mul_func_int8_t_s_s((l_503 == (void*)0), (safe_sub_func_int8_t_s_s(((safe_add_func_int32_t_s_s((((VECTOR(int8_t, 16))(p_529->g_508.s7284f1c4c7ac32e6)).s4 < (p_529->g_127.x ^= (((safe_sub_func_int8_t_s_s((l_522[1][2] |= (((!((safe_lshift_func_uint8_t_u_u(l_498, (0xA7344F28L || (p_529->g_34.sf == (l_498 == ((safe_add_func_int8_t_s_s(l_498, (p_529->g_325.f0 == (&p_529->g_64[1] != (void*)0)))) , 18446744073709551615UL)))))) >= p_529->g_183.f3)) > l_515) | (-10L))), l_523)) && l_522[1][2]) & p_529->g_252.f0))), p_529->g_34.s1)) && l_515), l_523)))) & l_498) & p_529->g_365.f6), l_498));
            }
            return l_497;
        }
    }
    l_527 = ((l_526 != (void*)0) != (-10L));
    return l_528[4];
}


/* ------------------------------------------ */
/* 
 * reads : p_529->g_357 p_529->g_359 p_529->g_311 p_529->g_312 p_529->g_325.f4 p_529->g_365 p_529->g_366 p_529->g_230 p_529->g_323.f6 p_529->g_383 p_529->g_402 p_529->g_64 p_529->g_323.f5 p_529->g_432 p_529->g_433 p_529->g_434 p_529->g_444 p_529->g_143
 * writes: p_529->g_357 p_529->g_230 p_529->g_365 p_529->g_323.f6 p_529->g_296 p_529->g_398 p_529->g_198 p_529->g_146 p_529->g_64 p_529->g_402 p_529->g_323.f5 p_529->g_151 p_529->g_143
 */
union U1 * func_4(uint8_t  p_5, union U1 * p_6, int32_t  p_7, int16_t  p_8, uint32_t  p_9, struct S2 * p_529)
{ /* block id: 154 */
    uint16_t *l_354[1];
    uint64_t *l_371 = &p_529->g_167;
    int32_t l_413 = 0x67CC49C9L;
    int32_t l_414 = 5L;
    int16_t l_415 = (-7L);
    int32_t l_417 = 5L;
    int32_t l_418 = 7L;
    int32_t l_419 = 0L;
    uint32_t l_420 = 0x83B86305L;
    int32_t *l_423 = (void*)0;
    VECTOR(uint64_t, 4) l_435 = (VECTOR(uint64_t, 4))(0x0704643D5173473DL, (VECTOR(uint64_t, 2))(0x0704643D5173473DL, 0x81A6F64A17665F87L), 0x81A6F64A17665F87L);
    VECTOR(uint16_t, 8) l_437 = (VECTOR(uint16_t, 8))(65532UL, (VECTOR(uint16_t, 4))(65532UL, (VECTOR(uint16_t, 2))(65532UL, 3UL), 3UL), 3UL, 65532UL, 3UL);
    VECTOR(uint8_t, 2) l_438 = (VECTOR(uint8_t, 2))(0UL, 0xB1L);
    int i;
    for (i = 0; i < 1; i++)
        l_354[i] = &p_529->g_326.f6;
    if (((void*)0 != l_354[0]))
    { /* block id: 155 */
        uint64_t *l_368 = &p_529->g_167;
        volatile union U1 *l_373 = &p_529->g_11[1];
        volatile union U1 **l_372 = &l_373;
        for (p_8 = 25; (p_8 == 23); p_8 = safe_sub_func_int16_t_s_s(p_8, 8))
        { /* block id: 158 */
            int32_t *l_362 = (void*)0;
            int32_t *l_363 = (void*)0;
            int32_t *l_364 = &p_529->g_230;
            uint64_t **l_369 = (void*)0;
            uint64_t **l_370 = &l_368;
            (*p_529->g_359) = p_529->g_357;
            p_7 &= ((*l_364) = (safe_mod_func_uint8_t_u_u((*p_529->g_311), p_529->g_325.f4)));
            (*p_529->g_366) = p_529->g_365;
            p_7 &= (safe_unary_minus_func_int32_t_s((((*l_370) = l_368) == l_371)));
        }
        (*l_372) = &p_529->g_11[0];
    }
    else
    { /* block id: 167 */
        uint64_t *l_380 = &p_529->g_167;
        VECTOR(int16_t, 2) l_393 = (VECTOR(int16_t, 2))(0x79B6L, 0x016AL);
        int32_t l_409 = 1L;
        int32_t l_412 = 0x66226C7BL;
        int32_t l_416 = (-1L);
        struct S0 *l_436 = &p_529->g_365;
        uint8_t *l_439 = (void*)0;
        uint8_t *l_440 = (void*)0;
        uint8_t *l_441[3];
        int i;
        for (i = 0; i < 3; i++)
            l_441[i] = (void*)0;
        p_7 &= (safe_mul_func_int16_t_s_s(0x33D7L, (safe_add_func_int16_t_s_s(p_529->g_357.f3, ((safe_div_func_int8_t_s_s(((void*)0 == l_380), 0x93L)) > p_529->g_230)))));
        for (p_529->g_323.f6 = (-1); (p_529->g_323.f6 > 7); ++p_529->g_323.f6)
        { /* block id: 171 */
            VECTOR(int8_t, 2) l_394 = (VECTOR(int8_t, 2))((-1L), 0x6AL);
            int32_t *l_395 = &p_529->g_296[1][2];
            int16_t *l_399 = &p_529->g_198[5][4];
            int32_t *l_400 = (void*)0;
            int32_t *l_401 = (void*)0;
            int32_t *l_405 = &p_529->g_146;
            int i;
            (*p_529->g_402) = ((p_529->g_383 , p_5) && (safe_div_func_int64_t_s_s(1L, ((safe_unary_minus_func_uint64_t_u((safe_div_func_uint32_t_u_u(((safe_rshift_func_int16_t_s_u(((*l_399) = ((safe_mul_func_int8_t_s_s((((VECTOR(int16_t, 16))(clz(((VECTOR(int16_t, 8))(l_393.yyyyyyxy)).s4207765264303310))).s3 , (~((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 16))(clz(((VECTOR(int8_t, 8))(l_394.yxyxyxxx)).s6152242403141704))).s21)), (-1L), 1L)).y)), (((*l_395) = p_9) , 0xBDL))) , ((safe_lshift_func_int8_t_s_u(p_5, (((void*)0 == p_529->g_311) != ((p_529->g_398[0][3] = (void*)0) == (void*)0)))) > 2L))), GROUP_DIVERGE(1, 1))) > l_393.y), p_529->g_357.f1)))) && 0x13L))));
            p_529->g_402 = (((p_529->g_64[0]--) | FAKE_DIVERGE(p_529->group_1_offset, get_group_id(1), 10)) , l_405);
        }
        for (p_529->g_323.f5 = 0; (p_529->g_323.f5 > (-18)); p_529->g_323.f5--)
        { /* block id: 181 */
            int32_t l_408 = (-10L);
            int32_t *l_410 = &l_408;
            int32_t *l_411[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            int32_t **l_424 = (void*)0;
            int32_t **l_425 = &p_529->g_151;
            int i;
            if (l_408)
                break;
            l_420--;
            l_423 = &p_529->g_146;
            (*l_425) = ((p_8 <= 0xB0378CB0L) , (void*)0);
        }
        p_529->g_143.s1 ^= (safe_sub_func_uint64_t_u_u((1L && (((safe_mod_func_uint64_t_u_u((safe_sub_func_uint8_t_u_u((((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 8))(rhadd(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 8))(p_529->g_432.xyyxyxyy)).s66)), 0x0F1222FCL, 0x396A66A9L)).xxywzxwz, ((VECTOR(uint32_t, 4))(upsample(((VECTOR(uint16_t, 8))(mad_sat(((VECTOR(uint16_t, 16))(p_529->g_433.zyyyyzxxwwyzywww)).hi, ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(abs_diff(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(0x7239L, 0L)), 0x5D34L, 6L)).xwwwwxyw, ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(p_529->g_434.s02175424)).even)).hi)).xxyyxyxy))), 65531UL, 3UL, 65528UL, (((((VECTOR(uint64_t, 16))(l_435.xwwwyzzzyzxxwyyy)).s8 , (&p_8 != &p_8)) , l_436) == (void*)0), ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 16))(l_437.s5341467276300555)).s1f)), 1UL, 1UL)))).hi, ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(clz(((VECTOR(uint16_t, 4))(upsample(((VECTOR(uint8_t, 2))(0x31L, 250UL)).yyyy, ((VECTOR(uint8_t, 8))(mad_sat(((VECTOR(uint8_t, 4))(mad_hi(((VECTOR(uint8_t, 4))(l_438.yyxy)), ((VECTOR(uint8_t, 16))((p_5 = 0UL), FAKE_DIVERGE(p_529->group_2_offset, get_group_id(2), 10), ((VECTOR(uint8_t, 8))(rotate(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 2))(9UL, 255UL)))).yyxyxyyx, ((VECTOR(uint8_t, 4))(248UL, 0x7DL, 0x10L, 1UL)).yyzwwwxw))), ((VECTOR(uint8_t, 4))(max(((VECTOR(uint8_t, 16))(8UL, ((((safe_rshift_func_int8_t_s_s(((((p_9 == p_529->g_365.f0) && l_409) >= 0x44F4BF18L) <= p_8), 4)) && 65533UL) , GROUP_DIVERGE(1, 1)) || p_529->g_383.f5), ((VECTOR(uint8_t, 2))(0xF7L)), FAKE_DIVERGE(p_529->global_2_offset, get_global_id(2), 10), ((VECTOR(uint8_t, 8))(250UL)), 0UL, 1UL, 250UL)).s403e, (uint8_t)1UL))), 255UL, 0x68L)).sb26e, ((VECTOR(uint8_t, 4))(252UL))))).xywwyyzz, ((VECTOR(uint8_t, 8))(0xE9L)), ((VECTOR(uint8_t, 8))(0x19L))))).lo))).odd))), 0UL, 65532UL)).xzzwxxzzwzzxzwyx)).odd))).lo, ((VECTOR(uint16_t, 4))(65535UL))))).zzzzzyyw))).s01)).odd >= 0xDC281F0DL), 247UL)), p_9)) , (void*)0) != p_529->g_444)), l_393.x));
    }
    return p_6;
}


/* ------------------------------------------ */
/* 
 * reads : p_529->g_183.f3 p_529->g_12 p_529->g_311 p_529->g_198 p_529->g_296
 * writes: p_529->g_183.f3 p_529->g_157
 */
int8_t  func_15(union U1 * p_16, int64_t  p_17, uint32_t  p_18, uint32_t  p_19, union U1 * p_20, struct S2 * p_529)
{ /* block id: 145 */
    int16_t l_332 = 0L;
    int32_t l_333 = 0x17D5CF26L;
    int32_t l_334 = (-1L);
    int32_t l_335 = 0x3DA5837BL;
    int32_t l_336 = 0x667741A5L;
    int32_t l_337 = 0x76A8A630L;
    int32_t l_338 = 0L;
    int32_t l_339 = (-1L);
    int32_t l_340 = (-7L);
    int32_t l_341 = 0x16204537L;
    int32_t l_342 = 1L;
    int32_t l_343 = (-4L);
    int8_t *l_349 = (void*)0;
    for (p_529->g_183.f3 = (-27); (p_529->g_183.f3 <= 48); p_529->g_183.f3 = safe_add_func_int16_t_s_s(p_529->g_183.f3, 6))
    { /* block id: 148 */
        int32_t *l_331[1];
        uint16_t l_344 = 65535UL;
        VECTOR(int64_t, 8) l_350 = (VECTOR(int64_t, 8))(0x0709158601AA66F7L, (VECTOR(int64_t, 4))(0x0709158601AA66F7L, (VECTOR(int64_t, 2))(0x0709158601AA66F7L, 0x018A83515CC3C88BL), 0x018A83515CC3C88BL), 0x018A83515CC3C88BL, 0x0709158601AA66F7L, 0x018A83515CC3C88BL);
        uint16_t l_353 = 0x143FL;
        int i;
        for (i = 0; i < 1; i++)
            l_331[i] = &p_529->g_146;
        l_331[0] = &p_529->g_146;
        ++l_344;
        p_529->g_157.s4 = ((65528UL || (((void*)0 == p_529->g_12) , 1UL)) , ((safe_mul_func_int16_t_s_s((p_529->g_311 == l_349), (((((p_18 >= (-1L)) <= (((((((VECTOR(int64_t, 16))(l_350.s6165246600577040)).sc && ((safe_sub_func_int8_t_s_s(l_353, (-1L))) , p_18)) , p_17) <= p_19) & 1L) > 0L)) || p_18) < p_529->g_198[5][4]) <= p_17))) , 0L));
    }
    return p_529->g_296[0][0];
}


/* ------------------------------------------ */
/* 
 * reads : p_529->g_137.f0 p_529->g_230 p_529->g_183.f0 p_529->g_222 p_529->g_157 p_529->g_143 p_529->g_296 p_529->g_311 p_529->g_167 p_529->g_252.f0 p_529->g_183.f3 p_529->g_235 p_529->g_127 p_529->g_325.f6 p_529->g_323.f0
 * writes: p_529->g_137.f0 p_529->g_230 p_529->g_143 p_529->g_167 p_529->g_64 p_529->g_216 p_529->g_296 p_529->g_236
 */
uint64_t  func_23(union U1 * p_24, int32_t  p_25, struct S2 * p_529)
{ /* block id: 116 */
    uint16_t l_260 = 0UL;
    uint32_t l_263 = 3UL;
    int16_t *l_280 = &p_529->g_198[3][1];
    int32_t l_293 = 0x1BCE1EA2L;
    uint8_t *l_310[5];
    int32_t l_320 = (-6L);
    struct S0 *l_322 = &p_529->g_323;
    int i;
    for (i = 0; i < 5; i++)
        l_310[i] = (void*)0;
    for (p_529->g_137.f0 = 0; (p_529->g_137.f0 != 13); p_529->g_137.f0 = safe_add_func_uint16_t_u_u(p_529->g_137.f0, 2))
    { /* block id: 119 */
        int32_t *l_256 = (void*)0;
        int32_t *l_257 = &p_529->g_230;
        int32_t *l_258 = (void*)0;
        int32_t *l_259[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int32_t **l_264 = (void*)0;
        int32_t **l_265 = &l_258;
        struct S0 **l_289 = &p_529->g_236;
        int64_t l_290 = 0x1D030D9EC73109D7L;
        VECTOR(uint64_t, 4) l_301 = (VECTOR(uint64_t, 4))(18446744073709551611UL, (VECTOR(uint64_t, 2))(18446744073709551611UL, 0xEAB3F58FC13AE100L), 0xEAB3F58FC13AE100L);
        VECTOR(uint64_t, 4) l_307 = (VECTOR(uint64_t, 4))(4UL, (VECTOR(uint64_t, 2))(4UL, 0x40817757E26C6C8BL), 0x40817757E26C6C8BL);
        int i;
        l_260++;
        (*l_265) = (l_263 , (void*)0);
        if (((*l_257) |= p_25))
        { /* block id: 123 */
            uint64_t *l_266 = &p_529->g_167;
            p_529->g_143.s9 = (l_266 == l_266);
        }
        else
        { /* block id: 125 */
            uint64_t *l_277 = &p_529->g_167;
            int8_t *l_291 = (void*)0;
            int8_t *l_292[2];
            uint32_t *l_294 = &p_529->g_64[1];
            uint8_t *l_295[1];
            int16_t l_319 = 0x1B36L;
            int32_t l_321 = 0x3F1A1C19L;
            struct S0 *l_324[8] = {&p_529->g_325,&p_529->g_325,&p_529->g_325,&p_529->g_325,&p_529->g_325,&p_529->g_325,&p_529->g_325,&p_529->g_325};
            int i;
            for (i = 0; i < 2; i++)
                l_292[i] = (void*)0;
            for (i = 0; i < 1; i++)
                l_295[i] = (void*)0;
            if ((safe_div_func_int16_t_s_s((safe_lshift_func_uint8_t_u_s((p_529->g_296[1][2] |= (safe_add_func_uint8_t_u_u(p_529->g_183.f0, (p_529->g_216.s0 = (safe_lshift_func_uint8_t_u_s((safe_sub_func_uint32_t_u_u(((((VECTOR(int64_t, 2))(((VECTOR(int64_t, 2))((-1L), 0x69B819D66F257D21L)))).odd < ((*l_277) = (*l_257))) <= ((*l_294) = (p_529->g_222.sa >= ((safe_div_func_int16_t_s_s((((void*)0 != l_280) , (safe_div_func_int16_t_s_s((safe_div_func_uint64_t_u_u(1UL, ((safe_div_func_int8_t_s_s((l_293 = ((((safe_sub_func_int16_t_s_s((((VECTOR(uint8_t, 2))(250UL, 1UL)).even >= (((p_529->g_157.sf , l_289) != l_289) & p_25)), 65534UL)) , l_290) , l_263) | p_25)), 0x10L)) , p_25))), p_25))), 65535UL)) > p_25)))), p_25)), p_529->g_143.s6)))))), 7)), p_529->g_157.s4)))
            { /* block id: 131 */
                VECTOR(int8_t, 16) l_302 = (VECTOR(int8_t, 16))(0x2EL, (VECTOR(int8_t, 4))(0x2EL, (VECTOR(int8_t, 2))(0x2EL, (-1L)), (-1L)), (-1L), 0x2EL, (-1L), (VECTOR(int8_t, 2))(0x2EL, (-1L)), (VECTOR(int8_t, 2))(0x2EL, (-1L)), 0x2EL, (-1L), 0x2EL, (-1L));
                int i;
                l_321 = (safe_div_func_uint64_t_u_u(((safe_sub_func_int64_t_s_s((-1L), ((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 4))(l_301.zyyz)))).lo)).even)) < ((VECTOR(int8_t, 2))(l_302.sb3)).even), (safe_sub_func_int64_t_s_s((0x46B14C68L && (safe_add_func_uint32_t_u_u((+(((VECTOR(uint64_t, 8))(mad_hi(((VECTOR(uint64_t, 4))(l_307.xzyx)).xyxzxzxz, ((VECTOR(uint64_t, 4))(rotate(((VECTOR(uint64_t, 4))((safe_add_func_int32_t_s_s((+((l_310[4] != p_529->g_311) , (safe_lshift_func_uint8_t_u_u((((safe_mul_func_uint8_t_u_u((safe_mul_func_uint16_t_u_u(p_529->g_167, (((((+0x7F8DL) || 3UL) ^ (((+18446744073709551615UL) != p_529->g_252.f0) <= (-4L))) , l_319) == p_25))), l_320)) || GROUP_DIVERGE(2, 1)) , 0x87L), 7)))), l_260)), ((VECTOR(uint64_t, 2))(0x0EBAEA38FDE2A011L)), 5UL)), ((VECTOR(uint64_t, 4))(18446744073709551607UL))))).zxyzwwxx, ((VECTOR(uint64_t, 8))(0x517CF08D60B0F39EL))))).s6 | 0x5613872D6BF58A8DL)), p_25))), p_25))));
                if (p_529->g_183.f3)
                    continue;
            }
            else
            { /* block id: 134 */
                (*p_529->g_235) = l_322;
                l_324[3] = ((*p_529->g_235) = l_322);
                return p_529->g_127.y;
            }
            if (p_529->g_325.f6)
                break;
            return p_529->g_323.f0;
        }
    }
    return l_263;
}


/* ------------------------------------------ */
/* 
 * reads : p_529->g_146 p_529->g_235 p_529->g_comm_values p_529->g_216 p_529->g_82 p_529->g_34 p_529->g_157
 * writes: p_529->g_157
 */
union U1 * func_26(union U1 * p_27, union U1 * p_28, struct S2 * p_529)
{ /* block id: 111 */
    int32_t *l_226 = (void*)0;
    int32_t *l_227 = &p_529->g_146;
    int32_t *l_228 = (void*)0;
    int32_t *l_229[4];
    uint8_t l_231 = 0UL;
    struct S0 **l_234[2];
    VECTOR(int8_t, 2) l_239 = (VECTOR(int8_t, 2))(0x76L, 0x48L);
    uint64_t *l_243 = &p_529->g_167;
    uint16_t l_248 = 0xF2B9L;
    union U1 *l_251 = &p_529->g_252;
    int i;
    for (i = 0; i < 4; i++)
        l_229[i] = &p_529->g_146;
    for (i = 0; i < 2; i++)
        l_234[i] = (void*)0;
    --l_231;
    p_529->g_157.se ^= ((*l_227) && (((l_234[1] == p_529->g_235) ^ ((safe_rshift_func_uint8_t_u_u(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(abs_diff(((VECTOR(int8_t, 4))(l_239.xxxx)).odd, ((VECTOR(int8_t, 2))(0x22L, 0x68L))))).yyyy)).x, (safe_sub_func_int8_t_s_s(((safe_unary_minus_func_uint64_t_u((l_243 != l_243))) > (((*l_227) > ((safe_sub_func_uint64_t_u_u((l_248 <= p_529->g_comm_values[p_529->tid]), GROUP_DIVERGE(2, 1))) > ((safe_sub_func_int32_t_s_s(((*l_227) , p_529->g_216.s2), (*l_227))) != p_529->g_82))) >= (*l_227))), GROUP_DIVERGE(1, 1))))) || (*l_227))) & p_529->g_34.s5));
    return l_251;
}


/* ------------------------------------------ */
/* 
 * reads : p_529->g_12 p_529->l_comm_values p_529->g_34 p_529->g_comm_values p_529->g_64 p_529->g_66.f0 p_529->g_82 p_529->g_127 p_529->g_146 p_529->g_155 p_529->g_157 p_529->g_167 p_529->g_177 p_529->g_151 p_529->g_183.f3 p_529->g_198 p_529->g_207 p_529->g_213 p_529->g_216 p_529->g_222
 * writes: p_529->g_64 p_529->g_82 p_529->g_66.f0 p_529->g_146 p_529->g_143 p_529->g_151 p_529->g_167 p_529->g_34 p_529->g_198
 */
union U1 * func_29(union U1 * p_30, int32_t  p_31, uint32_t  p_32, struct S2 * p_529)
{ /* block id: 5 */
    VECTOR(int64_t, 4) l_35 = (VECTOR(int64_t, 4))((-4L), (VECTOR(int64_t, 2))((-4L), 0x7C2B42D225D8BAC8L), 0x7C2B42D225D8BAC8L);
    union U1 **l_122 = (void*)0;
    VECTOR(int8_t, 4) l_126 = (VECTOR(int8_t, 4))(0x51L, (VECTOR(int8_t, 2))(0x51L, 1L), 1L);
    VECTOR(int32_t, 16) l_156 = (VECTOR(int32_t, 16))(0x3545BE4EL, (VECTOR(int32_t, 4))(0x3545BE4EL, (VECTOR(int32_t, 2))(0x3545BE4EL, (-1L)), (-1L)), (-1L), 0x3545BE4EL, (-1L), (VECTOR(int32_t, 2))(0x3545BE4EL, (-1L)), (VECTOR(int32_t, 2))(0x3545BE4EL, (-1L)), 0x3545BE4EL, (-1L), 0x3545BE4EL, (-1L));
    VECTOR(int32_t, 4) l_158 = (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), (-6L)), (-6L));
    int32_t *l_170 = &p_529->g_146;
    uint32_t l_178 = 0xE894D084L;
    uint8_t l_179 = 246UL;
    struct S0 *l_182 = &p_529->g_183;
    uint32_t l_192 = 8UL;
    int32_t **l_205 = &l_170;
    int32_t **l_206[3];
    VECTOR(int32_t, 2) l_218 = (VECTOR(int32_t, 2))((-1L), 0x06B702C5L);
    VECTOR(int16_t, 4) l_221 = (VECTOR(int16_t, 4))(0x6176L, (VECTOR(int16_t, 2))(0x6176L, 1L), 1L);
    int i;
    for (i = 0; i < 3; i++)
        l_206[i] = &l_170;
    if ((((VECTOR(int64_t, 2))(((VECTOR(int64_t, 2))(l_35.zy)))).lo <= func_36(p_31, p_529)))
    { /* block id: 56 */
        VECTOR(int64_t, 8) l_109 = (VECTOR(int64_t, 8))(0x1076915C511D4011L, (VECTOR(int64_t, 4))(0x1076915C511D4011L, (VECTOR(int64_t, 2))(0x1076915C511D4011L, (-8L)), (-8L)), (-8L), 0x1076915C511D4011L, (-8L));
        union U1 **l_120 = (void*)0;
        union U1 ***l_121[8][1];
        int64_t *l_128 = &p_529->g_66[1].f0;
        int32_t *l_150 = (void*)0;
        VECTOR(int32_t, 16) l_154 = (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, (-8L)), (-8L)), (-8L), 1L, (-8L), (VECTOR(int32_t, 2))(1L, (-8L)), (VECTOR(int32_t, 2))(1L, (-8L)), 1L, (-8L), 1L, (-8L));
        int i, j;
        for (i = 0; i < 8; i++)
        {
            for (j = 0; j < 1; j++)
                l_121[i][j] = &l_120;
        }
        if ((safe_div_func_int32_t_s_s(0x54A0C5CCL, (safe_mod_func_int64_t_s_s(((VECTOR(int64_t, 8))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 8),((VECTOR(int64_t, 8))(mul_hi(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 2))(0x516B2CFE5A8EECE7L, 0x19C3224A64B9282FL)).xxyxxxxxyxyxyxxy)).odd, ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 16))(mul_hi(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 16))(l_109.s5016437130025000)).sf123)).ywzzwzxxzzyzyzzx, ((VECTOR(int64_t, 16))((safe_add_func_int64_t_s_s(((safe_sub_func_uint32_t_u_u(((safe_sub_func_int64_t_s_s(((*l_128) = (safe_mod_func_uint16_t_u_u((safe_div_func_uint16_t_u_u((&p_529->g_12 == (l_122 = l_120)), ((GROUP_DIVERGE(0, 1) | p_32) , ((safe_lshift_func_int8_t_s_s((safe_unary_minus_func_int32_t_s(((((p_30 != (void*)0) , ((((l_109.s4 == ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(l_126.ywzyxxxx)), ((VECTOR(int8_t, 4))(safe_clamp_func(VECTOR(int8_t, 4),int8_t,((VECTOR(int8_t, 4))(((VECTOR(int8_t, 8))(p_529->g_127.yyyyxyyy)).even)), (int8_t)(p_32 && (((p_529->g_82 < 0xE101L) != 0x6E7BA79B21912DA4L) | p_31)), (int8_t)p_32))), ((VECTOR(int8_t, 4))(0x60L)))).s544d)).yzzxzwww)).s4) != 0x5630L) != p_529->g_66[1].f0) == p_31)) && p_529->g_127.x) >= 0x37C96335L))), p_31)) , 0x63A2L)))), p_529->g_34.s4))), p_529->g_64[3])) <= p_31), p_529->g_64[3])) ^ 0xA76CL), p_529->g_64[1])), 0L, ((VECTOR(int64_t, 4))(0L)), ((VECTOR(int64_t, 4))(0x483898E21F576C3BL)), ((VECTOR(int64_t, 2))(0x416096333BD90028L)), 0L, 5L, 0x1AD9D65D8E466642L, 0L))))).s70bf)).yxyzyyyy))), ((VECTOR(int64_t, 8))((-7L))), ((VECTOR(int64_t, 8))((-1L)))))).s7, 0x3EC88D1BEA04750EL)))))
        { /* block id: 59 */
            uint8_t l_139 = 255UL;
            VECTOR(int32_t, 16) l_142 = (VECTOR(int32_t, 16))((-10L), (VECTOR(int32_t, 4))((-10L), (VECTOR(int32_t, 2))((-10L), (-6L)), (-6L)), (-6L), (-10L), (-6L), (VECTOR(int32_t, 2))((-10L), (-6L)), (VECTOR(int32_t, 2))((-10L), (-6L)), (-10L), (-6L), (-10L), (-6L));
            int32_t **l_152 = (void*)0;
            int32_t **l_153 = &l_150;
            int i;
            for (p_32 = 0; (p_32 != 23); p_32 = safe_add_func_int32_t_s_s(p_32, 8))
            { /* block id: 62 */
                VECTOR(uint8_t, 2) l_131 = (VECTOR(uint8_t, 2))(0x06L, 0xA9L);
                VECTOR(uint8_t, 4) l_134 = (VECTOR(uint8_t, 4))(0x3BL, (VECTOR(uint8_t, 2))(0x3BL, 0xFDL), 0xFDL);
                int i;
                if (l_131.y)
                { /* block id: 63 */
                    for (p_31 = 6; (p_31 < 11); ++p_31)
                    { /* block id: 66 */
                        union U1 *l_136 = &p_529->g_137;
                        union U1 **l_135[8];
                        int32_t *l_138 = &p_529->g_82;
                        int i;
                        for (i = 0; i < 8; i++)
                            l_135[i] = &l_136;
                        (*l_138) = (((VECTOR(uint8_t, 2))(l_134.xz)).hi ^ (p_32 | (!((l_135[3] = &p_30) != &p_30))));
                    }
                }
                else
                { /* block id: 70 */
                    int32_t *l_144 = &p_529->g_82;
                    int32_t *l_145 = &p_529->g_146;
                    l_139++;
                    p_529->g_143.s1 = ((*l_145) ^= ((*l_144) ^= ((VECTOR(int32_t, 2))(min(((VECTOR(int32_t, 8))(mad_sat(((VECTOR(int32_t, 2))(1L, 0x6FB81438L)).yxxxyyyy, ((VECTOR(int32_t, 8))((-6L), 3L, 0L, 0x3E3D3D57L, 0x476452A6L, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(0x2DC90BC3L, 2L)).xyyx)).hi)), 0x1912E77BL)), ((VECTOR(int32_t, 16))(l_142.s4171f4ba9cc6504e)).even))).s42, ((VECTOR(int32_t, 2))(p_529->g_143.s74))))).odd));
                    (*l_145) = (safe_sub_func_int64_t_s_s(((VECTOR(int64_t, 2))(p_529->g_149.wz)).hi, (l_109.s5 == 0x7F66L)));
                }
                p_529->g_151 = l_150;
            }
            (*l_153) = (p_31 , &p_529->g_82);
            (*l_150) ^= ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 4))(l_154.se5d7)).even, ((VECTOR(int32_t, 16))(add_sat(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 2))(p_529->g_155.seb)).yyyx, ((VECTOR(int32_t, 16))(l_156.s9961058a052f6dda)).s51a4, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(p_529->g_157.s4679)).odd)).xxyxxxyxyxxxyxyy)).s7f87))))).zyzwwzzywxyxyyzx, ((VECTOR(int32_t, 2))(l_158.wx)).xxyxyyxyxxxxxxyy))).s99))).xyyyyxyxyyxyxyyx)).s2;
        }
        else
        { /* block id: 81 */
            union U1 *l_163 = &p_529->g_164;
            uint64_t *l_165 = (void*)0;
            uint64_t *l_166 = &p_529->g_167;
            uint16_t *l_171 = (void*)0;
            int32_t l_172 = 1L;
            uint16_t *l_173 = (void*)0;
            uint16_t *l_174 = (void*)0;
            int32_t *l_180 = (void*)0;
            struct S0 **l_184 = &l_182;
            if (((-1L) <= ((safe_lshift_func_int16_t_s_u(((1L != (safe_lshift_func_int16_t_s_s((((*l_166) ^= ((p_30 = l_163) != (void*)0)) >= ((safe_div_func_int16_t_s_s(((void*)0 == l_170), l_109.s2)) | ((++p_529->g_34.sf) == FAKE_DIVERGE(p_529->group_2_offset, get_group_id(2), 10)))), 3))) , (((void*)0 != p_529->g_177[1][0]) & l_178)), 12)) > l_179)))
            { /* block id: 85 */
                (*l_170) |= (*p_529->g_151);
                l_180 = (void*)0;
            }
            else
            { /* block id: 88 */
                int32_t **l_181 = &l_180;
                (*l_181) = l_150;
            }
            (*l_184) = l_182;
            for (p_529->g_146 = 0; (p_529->g_146 != (-19)); p_529->g_146 = safe_sub_func_uint64_t_u_u(p_529->g_146, 4))
            { /* block id: 94 */
                int32_t *l_187 = &p_529->g_82;
                int32_t *l_188 = &l_172;
                int32_t *l_189 = (void*)0;
                int32_t *l_190 = &l_172;
                int32_t *l_191[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                int16_t *l_197 = (void*)0;
                int i;
                --l_192;
                atomic_or(&p_529->l_atomic_reduction[0], (safe_sub_func_int16_t_s_s((!p_32), (p_529->g_198[5][4] |= p_529->g_183.f3))));
                barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                if (get_linear_local_id() == 0)
                    p_529->v_collective += p_529->l_atomic_reduction[0];
                barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
            }
            p_30 = p_529->g_12;
        }
        (*l_170) |= (safe_rshift_func_uint8_t_u_u(0x41L, 0));
    }
    else
    { /* block id: 102 */
        int64_t l_208[4];
        uint32_t *l_217 = &l_192;
        int32_t l_223[9] = {0x6E313486L,0x6E313486L,0x6E313486L,0x6E313486L,0x6E313486L,0x6E313486L,0x6E313486L,0x6E313486L,0x6E313486L};
        int i;
        for (i = 0; i < 4; i++)
            l_208[i] = 0x0A0710ADEB3F46A8L;
        (*p_529->g_151) = (p_32 < ((((safe_mod_func_uint32_t_u_u((!((l_205 = &p_529->g_151) == (l_206[2] = &l_170))), (l_208[1] = ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 8))(p_529->g_207.s8fb2bc63)))).s4))) > ((safe_rshift_func_int8_t_s_u((safe_mul_func_uint16_t_u_u(0x39F1L, (p_529->l_comm_values[(safe_mod_func_uint32_t_u_u(p_529->tid, 1))] > p_529->g_213[0]))), 5)) >= ((VECTOR(uint32_t, 4))(4294967291UL, 1UL, 0UL, 0x64EF9075L)).z)) & (GROUP_DIVERGE(2, 1) , (safe_mul_func_uint8_t_u_u(((VECTOR(uint8_t, 8))(min(((VECTOR(uint8_t, 16))(sub_sat(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(250UL, 0x5DL)).hi, ((VECTOR(uint8_t, 2))(p_529->g_216.sb0)), ((VECTOR(uint8_t, 8))((((*l_217) &= ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(0UL, 0x302614C5L)).xyyyyyyx)).s7) ^ ((VECTOR(int32_t, 8))(l_218.yxyxyxyy)).s4), ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(0UL, 0x23L)).xyyy)).lo)), (safe_sub_func_int16_t_s_s(((VECTOR(int16_t, 2))(sub_sat(((VECTOR(int16_t, 4))(l_221.yzxy)).even, ((VECTOR(int16_t, 8))(clz(((VECTOR(int16_t, 2))(p_529->g_222.s91)).xxxyyyxy))).s72))).hi, (l_223[5] != (p_31 && 8UL)))), 0x83L, 250UL, 7UL, 1UL)), ((VECTOR(uint8_t, 2))(0UL)), ((VECTOR(uint8_t, 2))(0x38L)), 0x8DL)), ((VECTOR(uint8_t, 16))(0xE3L))))).hi, (uint8_t)p_32))).s3, l_223[5])))) ^ l_223[1]));
    }
    (*l_205) = &p_529->g_146;
    return p_30;
}


/* ------------------------------------------ */
/* 
 * reads : p_529->g_12 p_529->l_comm_values p_529->g_34 p_529->g_comm_values p_529->g_64 p_529->g_66.f0 p_529->g_82
 * writes: p_529->g_64 p_529->g_82
 */
int64_t  func_36(uint32_t  p_37, struct S2 * p_529)
{ /* block id: 6 */
    int16_t l_42 = 0x4242L;
    int32_t *l_92 = &p_529->g_82;
    for (p_37 = (-25); (p_37 == 55); p_37 = safe_add_func_int16_t_s_s(p_37, 1))
    { /* block id: 9 */
        uint32_t l_78 = 4294967294UL;
        int32_t *l_81 = &p_529->g_82;
        (*l_81) |= (((safe_div_func_int32_t_s_s(l_42, func_43(l_42, p_529->g_12, p_529->l_comm_values[(safe_mod_func_uint32_t_u_u(p_529->tid, 1))], (p_37 & 0x2C17B1ABL), p_529))) < (l_78 == (safe_div_func_uint64_t_u_u((p_37 || p_529->g_34.s5), 0xE622E340D7ECFC28L)))) >= l_42);
        if ((atomic_inc(&p_529->g_atomic_input[13 * get_linear_group_id() + 10]) == 5))
        { /* block id: 33 */
            uint16_t l_83 = 0x90EDL;
            int8_t l_86 = 0x4EL;
            uint32_t l_87 = 0x560E83E0L;
            l_83--;
            --l_87;
            unsigned int result = 0;
            result += l_83;
            result += l_86;
            result += l_87;
            atomic_add(&p_529->g_special_values[13 * get_linear_group_id() + 10], result);
        }
        else
        { /* block id: 36 */
            (1 + 1);
        }
        return l_42;
    }
    for (l_42 = 20; (l_42 == (-30)); --l_42)
    { /* block id: 43 */
        l_92 = l_92;
        if ((atomic_inc(&p_529->g_atomic_input[13 * get_linear_group_id() + 1]) == 9))
        { /* block id: 46 */
            VECTOR(uint32_t, 2) l_93 = (VECTOR(uint32_t, 2))(0UL, 0x4C507BD8L);
            VECTOR(int64_t, 2) l_94 = (VECTOR(int64_t, 2))(0x5B57A05E82EF243AL, 1L);
            int32_t l_96 = 0L;
            int32_t *l_95 = &l_96;
            int32_t *l_97 = &l_96;
            int32_t **l_98 = &l_95;
            VECTOR(int64_t, 4) l_99 = (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 0x284259BBF2B79F9BL), 0x284259BBF2B79F9BL);
            uint64_t l_100 = 0x3328DBD8298C9807L;
            int32_t *l_103 = (void*)0;
            int32_t *l_104 = &l_96;
            int i;
            l_97 = (l_93.x , (((VECTOR(int64_t, 2))(l_94.xx)).odd , l_95));
            l_98 = (void*)0;
            l_104 = ((--l_100) , l_103);
            unsigned int result = 0;
            result += l_93.y;
            result += l_93.x;
            result += l_94.y;
            result += l_94.x;
            result += l_96;
            result += l_99.w;
            result += l_99.z;
            result += l_99.y;
            result += l_99.x;
            result += l_100;
            atomic_add(&p_529->g_special_values[13 * get_linear_group_id() + 1], result);
        }
        else
        { /* block id: 51 */
            (1 + 1);
        }
    }
    return p_37;
}


/* ------------------------------------------ */
/* 
 * reads : p_529->g_34 p_529->l_comm_values p_529->g_comm_values p_529->g_64 p_529->g_66.f0
 * writes: p_529->g_64
 */
int32_t  func_43(uint8_t  p_44, union U1 * p_45, uint8_t  p_46, int64_t  p_47, struct S2 * p_529)
{ /* block id: 10 */
    uint16_t l_48 = 0x066EL;
    int32_t l_49 = (-9L);
    union U1 *l_65 = &p_529->g_66[1];
    if ((l_48 | p_47))
    { /* block id: 11 */
        union U1 **l_57 = (void*)0;
        union U1 *l_59 = (void*)0;
        union U1 **l_58 = &l_59;
        int32_t l_60 = 0x1DE5592EL;
        uint32_t *l_63 = &p_529->g_64[1];
        int32_t *l_77[3];
        int i;
        for (i = 0; i < 3; i++)
            l_77[i] = &l_60;
        l_49 = (p_529->g_34.se || p_529->l_comm_values[(safe_mod_func_uint32_t_u_u(p_529->tid, 1))]);
        l_49 = (((safe_mul_func_int16_t_s_s(0x162BL, p_529->g_comm_values[p_529->tid])) , func_52(((-8L) != ((p_45 == ((*l_58) = p_45)) && (l_49 < ((*l_63) ^= (0x69C1L == (~(l_60 || (safe_mul_func_int8_t_s_s(((((p_529->g_34.s1 || (-5L)) & l_49) | l_60) ^ FAKE_DIVERGE(p_529->group_0_offset, get_group_id(0), 10)), l_49))))))))), l_60, p_45, l_65, p_529)) , (-1L));
        return p_529->g_66[1].f0;
    }
    else
    { /* block id: 28 */
        return l_49;
    }
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint64_t  func_52(int64_t  p_53, uint32_t  p_54, union U1 * p_55, union U1 * p_56, struct S2 * p_529)
{ /* block id: 15 */
    if ((atomic_inc(&p_529->l_atomic_input[0]) == 3))
    { /* block id: 17 */
        int32_t l_68 = 1L;
        int32_t *l_67 = &l_68;
        int32_t *l_69 = &l_68;
        int32_t *l_70 = (void*)0;
        int32_t *l_71 = (void*)0;
        uint64_t l_72 = 18446744073709551615UL;
        int64_t l_75 = (-1L);
        uint16_t l_76[7][10] = {{0xAFB9L,65535UL,0x7760L,65533UL,0x7760L,65535UL,0xAFB9L,0x03F0L,65534UL,0x505BL},{0xAFB9L,65535UL,0x7760L,65533UL,0x7760L,65535UL,0xAFB9L,0x03F0L,65534UL,0x505BL},{0xAFB9L,65535UL,0x7760L,65533UL,0x7760L,65535UL,0xAFB9L,0x03F0L,65534UL,0x505BL},{0xAFB9L,65535UL,0x7760L,65533UL,0x7760L,65535UL,0xAFB9L,0x03F0L,65534UL,0x505BL},{0xAFB9L,65535UL,0x7760L,65533UL,0x7760L,65535UL,0xAFB9L,0x03F0L,65534UL,0x505BL},{0xAFB9L,65535UL,0x7760L,65533UL,0x7760L,65535UL,0xAFB9L,0x03F0L,65534UL,0x505BL},{0xAFB9L,65535UL,0x7760L,65533UL,0x7760L,65535UL,0xAFB9L,0x03F0L,65534UL,0x505BL}};
        int i, j;
        l_69 = l_67;
        l_71 = l_70;
        ++l_72;
        l_76[3][5] = l_75;
        unsigned int result = 0;
        result += l_68;
        result += l_72;
        result += l_75;
        int l_76_i0, l_76_i1;
        for (l_76_i0 = 0; l_76_i0 < 7; l_76_i0++) {
            for (l_76_i1 = 0; l_76_i1 < 10; l_76_i1++) {
                result += l_76[l_76_i0][l_76_i1];
            }
        }
        atomic_add(&p_529->l_special_values[0], result);
    }
    else
    { /* block id: 22 */
        (1 + 1);
    }
    return p_53;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global volatile int *g_atomic_reduction, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[13];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 13; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[13];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 13; i++)
            l_special_values[i] = 0;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    __local int64_t l_comm_values[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_comm_values[i] = 1;
    struct S2 c_530;
    struct S2* p_529 = &c_530;
    struct S2 c_531 = {
        {{0x7CFAF425F5F996F3L},{0x7CFAF425F5F996F3L}}, // p_529->g_11
        &p_529->g_11[0], // p_529->g_10
        (void*)0, // p_529->g_12
        (VECTOR(uint16_t, 16))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0x5E19L), 0x5E19L), 0x5E19L, 0UL, 0x5E19L, (VECTOR(uint16_t, 2))(0UL, 0x5E19L), (VECTOR(uint16_t, 2))(0UL, 0x5E19L), 0UL, 0x5E19L, 0UL, 0x5E19L), // p_529->g_34
        {9UL,9UL,9UL,9UL,9UL,9UL}, // p_529->g_64
        {{-8L},{-8L},{-8L},{-8L},{-8L},{-8L},{-8L},{-8L},{-8L}}, // p_529->g_66
        0x04E4D2D9L, // p_529->g_82
        (VECTOR(int8_t, 2))(0x49L, 0x34L), // p_529->g_127
        {4L}, // p_529->g_137
        (VECTOR(int32_t, 16))(5L, (VECTOR(int32_t, 4))(5L, (VECTOR(int32_t, 2))(5L, 0L), 0L), 0L, 5L, 0L, (VECTOR(int32_t, 2))(5L, 0L), (VECTOR(int32_t, 2))(5L, 0L), 5L, 0L, 5L, 0L), // p_529->g_143
        0x1E6B8C76L, // p_529->g_146
        (VECTOR(int64_t, 4))((-7L), (VECTOR(int64_t, 2))((-7L), 0x17F2CAB375827F4EL), 0x17F2CAB375827F4EL), // p_529->g_149
        &p_529->g_82, // p_529->g_151
        (VECTOR(int32_t, 16))((-8L), (VECTOR(int32_t, 4))((-8L), (VECTOR(int32_t, 2))((-8L), 0x288D6F10L), 0x288D6F10L), 0x288D6F10L, (-8L), 0x288D6F10L, (VECTOR(int32_t, 2))((-8L), 0x288D6F10L), (VECTOR(int32_t, 2))((-8L), 0x288D6F10L), (-8L), 0x288D6F10L, (-8L), 0x288D6F10L), // p_529->g_155
        (VECTOR(int32_t, 16))(0x744F2EDFL, (VECTOR(int32_t, 4))(0x744F2EDFL, (VECTOR(int32_t, 2))(0x744F2EDFL, 1L), 1L), 1L, 0x744F2EDFL, 1L, (VECTOR(int32_t, 2))(0x744F2EDFL, 1L), (VECTOR(int32_t, 2))(0x744F2EDFL, 1L), 0x744F2EDFL, 1L, 0x744F2EDFL, 1L), // p_529->g_157
        {0x61E4F3C4D6EFB634L}, // p_529->g_164
        0xEA70BF62E49423B7L, // p_529->g_167
        {{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}}, // p_529->g_177
        {0x2526AD98L,1UL,0x1DA066FCE70BD27AL,1UL,-9L,0x3D3527156C71AA19L,1UL}, // p_529->g_183
        {{0x0263L,0x699EL,0x2BC1L,0L,0x2BC1L},{0x0263L,0x699EL,0x2BC1L,0L,0x2BC1L},{0x0263L,0x699EL,0x2BC1L,0L,0x2BC1L},{0x0263L,0x699EL,0x2BC1L,0L,0x2BC1L},{0x0263L,0x699EL,0x2BC1L,0L,0x2BC1L},{0x0263L,0x699EL,0x2BC1L,0L,0x2BC1L},{0x0263L,0x699EL,0x2BC1L,0L,0x2BC1L}}, // p_529->g_198
        (VECTOR(uint32_t, 16))(0x10E8D747L, (VECTOR(uint32_t, 4))(0x10E8D747L, (VECTOR(uint32_t, 2))(0x10E8D747L, 5UL), 5UL), 5UL, 0x10E8D747L, 5UL, (VECTOR(uint32_t, 2))(0x10E8D747L, 5UL), (VECTOR(uint32_t, 2))(0x10E8D747L, 5UL), 0x10E8D747L, 5UL, 0x10E8D747L, 5UL), // p_529->g_207
        {0xE53F050AL,0xE53F050AL,0xE53F050AL}, // p_529->g_213
        (VECTOR(uint8_t, 16))(0x35L, (VECTOR(uint8_t, 4))(0x35L, (VECTOR(uint8_t, 2))(0x35L, 250UL), 250UL), 250UL, 0x35L, 250UL, (VECTOR(uint8_t, 2))(0x35L, 250UL), (VECTOR(uint8_t, 2))(0x35L, 250UL), 0x35L, 250UL, 0x35L, 250UL), // p_529->g_216
        (VECTOR(int16_t, 16))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 5L), 5L), 5L, (-1L), 5L, (VECTOR(int16_t, 2))((-1L), 5L), (VECTOR(int16_t, 2))((-1L), 5L), (-1L), 5L, (-1L), 5L), // p_529->g_222
        {{{{8L},{8L},{0L},{0x3C5B25C9D2C595F6L},{0x6211D2C571BFB598L},{0x443D89DC9810B791L}},{{8L},{8L},{0L},{0x3C5B25C9D2C595F6L},{0x6211D2C571BFB598L},{0x443D89DC9810B791L}},{{8L},{8L},{0L},{0x3C5B25C9D2C595F6L},{0x6211D2C571BFB598L},{0x443D89DC9810B791L}},{{8L},{8L},{0L},{0x3C5B25C9D2C595F6L},{0x6211D2C571BFB598L},{0x443D89DC9810B791L}},{{8L},{8L},{0L},{0x3C5B25C9D2C595F6L},{0x6211D2C571BFB598L},{0x443D89DC9810B791L}},{{8L},{8L},{0L},{0x3C5B25C9D2C595F6L},{0x6211D2C571BFB598L},{0x443D89DC9810B791L}}},{{{8L},{8L},{0L},{0x3C5B25C9D2C595F6L},{0x6211D2C571BFB598L},{0x443D89DC9810B791L}},{{8L},{8L},{0L},{0x3C5B25C9D2C595F6L},{0x6211D2C571BFB598L},{0x443D89DC9810B791L}},{{8L},{8L},{0L},{0x3C5B25C9D2C595F6L},{0x6211D2C571BFB598L},{0x443D89DC9810B791L}},{{8L},{8L},{0L},{0x3C5B25C9D2C595F6L},{0x6211D2C571BFB598L},{0x443D89DC9810B791L}},{{8L},{8L},{0L},{0x3C5B25C9D2C595F6L},{0x6211D2C571BFB598L},{0x443D89DC9810B791L}},{{8L},{8L},{0L},{0x3C5B25C9D2C595F6L},{0x6211D2C571BFB598L},{0x443D89DC9810B791L}}},{{{8L},{8L},{0L},{0x3C5B25C9D2C595F6L},{0x6211D2C571BFB598L},{0x443D89DC9810B791L}},{{8L},{8L},{0L},{0x3C5B25C9D2C595F6L},{0x6211D2C571BFB598L},{0x443D89DC9810B791L}},{{8L},{8L},{0L},{0x3C5B25C9D2C595F6L},{0x6211D2C571BFB598L},{0x443D89DC9810B791L}},{{8L},{8L},{0L},{0x3C5B25C9D2C595F6L},{0x6211D2C571BFB598L},{0x443D89DC9810B791L}},{{8L},{8L},{0L},{0x3C5B25C9D2C595F6L},{0x6211D2C571BFB598L},{0x443D89DC9810B791L}},{{8L},{8L},{0L},{0x3C5B25C9D2C595F6L},{0x6211D2C571BFB598L},{0x443D89DC9810B791L}}}}, // p_529->g_225
        0x51341D71L, // p_529->g_230
        (void*)0, // p_529->g_236
        &p_529->g_236, // p_529->g_235
        {-10L}, // p_529->g_252
        {{0L,5L,5L,0L},{0L,5L,5L,0L},{0L,5L,5L,0L},{0L,5L,5L,0L}}, // p_529->g_296
        255UL, // p_529->g_312
        &p_529->g_312, // p_529->g_311
        {4294967291UL,4294967292UL,0x55680D6E9765BE09L,0UL,0x388D3A0BL,-9L,5UL}, // p_529->g_323
        {6UL,1UL,0x5D18551CB4CD0745L,6UL,0x69D9C4ECL,0x609C7BAEC8B08591L,65531UL}, // p_529->g_325
        {0x56A63D8DL,8UL,3L,0xFD12L,-8L,0x5163C3191C0CF2C4L,1UL}, // p_529->g_326
        {9L}, // p_529->g_328
        {0x1B151791L,0x873B9A3AL,0L,65533UL,-1L,-1L,0xF4CFL}, // p_529->g_357
        {&p_529->g_357,&p_529->g_357,&p_529->g_357,&p_529->g_357,&p_529->g_357,&p_529->g_357,&p_529->g_357,&p_529->g_357,&p_529->g_357}, // p_529->g_358
        &p_529->g_357, // p_529->g_359
        {4294967291UL,4294967295UL,-1L,65534UL,0x732F65BBL,0x73FBB3D6549262EDL,0x9CFBL}, // p_529->g_365
        &p_529->g_365, // p_529->g_366
        {1UL,4294967294UL,1L,0UL,-10L,0L,1UL}, // p_529->g_383
        {{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}}, // p_529->g_398
        &p_529->g_230, // p_529->g_402
        (VECTOR(uint32_t, 2))(0x97598967L, 0x2226B567L), // p_529->g_432
        (VECTOR(uint16_t, 4))(0x2628L, (VECTOR(uint16_t, 2))(0x2628L, 1UL), 1UL), // p_529->g_433
        (VECTOR(int16_t, 8))(0x58C1L, (VECTOR(int16_t, 4))(0x58C1L, (VECTOR(int16_t, 2))(0x58C1L, 7L), 7L), 7L, 0x58C1L, 7L), // p_529->g_434
        (void*)0, // p_529->g_444
        {{0x443248C920353F72L},{0x443248C920353F72L},{0x443248C920353F72L},{0x443248C920353F72L},{0x443248C920353F72L},{0x443248C920353F72L},{0x443248C920353F72L},{0x443248C920353F72L},{0x443248C920353F72L}}, // p_529->g_496
        (VECTOR(int8_t, 16))((-6L), (VECTOR(int8_t, 4))((-6L), (VECTOR(int8_t, 2))((-6L), 0x4AL), 0x4AL), 0x4AL, (-6L), 0x4AL, (VECTOR(int8_t, 2))((-6L), 0x4AL), (VECTOR(int8_t, 2))((-6L), 0x4AL), (-6L), 0x4AL, (-6L), 0x4AL), // p_529->g_508
        0, // p_529->v_collective
        sequence_input[get_global_id(0)], // p_529->global_0_offset
        sequence_input[get_global_id(1)], // p_529->global_1_offset
        sequence_input[get_global_id(2)], // p_529->global_2_offset
        sequence_input[get_local_id(0)], // p_529->local_0_offset
        sequence_input[get_local_id(1)], // p_529->local_1_offset
        sequence_input[get_local_id(2)], // p_529->local_2_offset
        sequence_input[get_group_id(0)], // p_529->group_0_offset
        sequence_input[get_group_id(1)], // p_529->group_1_offset
        sequence_input[get_group_id(2)], // p_529->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 1)), permutations[0][get_linear_local_id()])), // p_529->tid
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_530 = c_531;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_529);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_529->g_11[i].f0, "p_529->g_11[i].f0", print_hash_value);

    }
    transparent_crc(p_529->g_34.s0, "p_529->g_34.s0", print_hash_value);
    transparent_crc(p_529->g_34.s1, "p_529->g_34.s1", print_hash_value);
    transparent_crc(p_529->g_34.s2, "p_529->g_34.s2", print_hash_value);
    transparent_crc(p_529->g_34.s3, "p_529->g_34.s3", print_hash_value);
    transparent_crc(p_529->g_34.s4, "p_529->g_34.s4", print_hash_value);
    transparent_crc(p_529->g_34.s5, "p_529->g_34.s5", print_hash_value);
    transparent_crc(p_529->g_34.s6, "p_529->g_34.s6", print_hash_value);
    transparent_crc(p_529->g_34.s7, "p_529->g_34.s7", print_hash_value);
    transparent_crc(p_529->g_34.s8, "p_529->g_34.s8", print_hash_value);
    transparent_crc(p_529->g_34.s9, "p_529->g_34.s9", print_hash_value);
    transparent_crc(p_529->g_34.sa, "p_529->g_34.sa", print_hash_value);
    transparent_crc(p_529->g_34.sb, "p_529->g_34.sb", print_hash_value);
    transparent_crc(p_529->g_34.sc, "p_529->g_34.sc", print_hash_value);
    transparent_crc(p_529->g_34.sd, "p_529->g_34.sd", print_hash_value);
    transparent_crc(p_529->g_34.se, "p_529->g_34.se", print_hash_value);
    transparent_crc(p_529->g_34.sf, "p_529->g_34.sf", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_529->g_64[i], "p_529->g_64[i]", print_hash_value);

    }
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_529->g_66[i].f0, "p_529->g_66[i].f0", print_hash_value);

    }
    transparent_crc(p_529->g_82, "p_529->g_82", print_hash_value);
    transparent_crc(p_529->g_127.x, "p_529->g_127.x", print_hash_value);
    transparent_crc(p_529->g_127.y, "p_529->g_127.y", print_hash_value);
    transparent_crc(p_529->g_137.f0, "p_529->g_137.f0", print_hash_value);
    transparent_crc(p_529->g_143.s0, "p_529->g_143.s0", print_hash_value);
    transparent_crc(p_529->g_143.s1, "p_529->g_143.s1", print_hash_value);
    transparent_crc(p_529->g_143.s2, "p_529->g_143.s2", print_hash_value);
    transparent_crc(p_529->g_143.s3, "p_529->g_143.s3", print_hash_value);
    transparent_crc(p_529->g_143.s4, "p_529->g_143.s4", print_hash_value);
    transparent_crc(p_529->g_143.s5, "p_529->g_143.s5", print_hash_value);
    transparent_crc(p_529->g_143.s6, "p_529->g_143.s6", print_hash_value);
    transparent_crc(p_529->g_143.s7, "p_529->g_143.s7", print_hash_value);
    transparent_crc(p_529->g_143.s8, "p_529->g_143.s8", print_hash_value);
    transparent_crc(p_529->g_143.s9, "p_529->g_143.s9", print_hash_value);
    transparent_crc(p_529->g_143.sa, "p_529->g_143.sa", print_hash_value);
    transparent_crc(p_529->g_143.sb, "p_529->g_143.sb", print_hash_value);
    transparent_crc(p_529->g_143.sc, "p_529->g_143.sc", print_hash_value);
    transparent_crc(p_529->g_143.sd, "p_529->g_143.sd", print_hash_value);
    transparent_crc(p_529->g_143.se, "p_529->g_143.se", print_hash_value);
    transparent_crc(p_529->g_143.sf, "p_529->g_143.sf", print_hash_value);
    transparent_crc(p_529->g_146, "p_529->g_146", print_hash_value);
    transparent_crc(p_529->g_149.x, "p_529->g_149.x", print_hash_value);
    transparent_crc(p_529->g_149.y, "p_529->g_149.y", print_hash_value);
    transparent_crc(p_529->g_149.z, "p_529->g_149.z", print_hash_value);
    transparent_crc(p_529->g_149.w, "p_529->g_149.w", print_hash_value);
    transparent_crc(p_529->g_155.s0, "p_529->g_155.s0", print_hash_value);
    transparent_crc(p_529->g_155.s1, "p_529->g_155.s1", print_hash_value);
    transparent_crc(p_529->g_155.s2, "p_529->g_155.s2", print_hash_value);
    transparent_crc(p_529->g_155.s3, "p_529->g_155.s3", print_hash_value);
    transparent_crc(p_529->g_155.s4, "p_529->g_155.s4", print_hash_value);
    transparent_crc(p_529->g_155.s5, "p_529->g_155.s5", print_hash_value);
    transparent_crc(p_529->g_155.s6, "p_529->g_155.s6", print_hash_value);
    transparent_crc(p_529->g_155.s7, "p_529->g_155.s7", print_hash_value);
    transparent_crc(p_529->g_155.s8, "p_529->g_155.s8", print_hash_value);
    transparent_crc(p_529->g_155.s9, "p_529->g_155.s9", print_hash_value);
    transparent_crc(p_529->g_155.sa, "p_529->g_155.sa", print_hash_value);
    transparent_crc(p_529->g_155.sb, "p_529->g_155.sb", print_hash_value);
    transparent_crc(p_529->g_155.sc, "p_529->g_155.sc", print_hash_value);
    transparent_crc(p_529->g_155.sd, "p_529->g_155.sd", print_hash_value);
    transparent_crc(p_529->g_155.se, "p_529->g_155.se", print_hash_value);
    transparent_crc(p_529->g_155.sf, "p_529->g_155.sf", print_hash_value);
    transparent_crc(p_529->g_157.s0, "p_529->g_157.s0", print_hash_value);
    transparent_crc(p_529->g_157.s1, "p_529->g_157.s1", print_hash_value);
    transparent_crc(p_529->g_157.s2, "p_529->g_157.s2", print_hash_value);
    transparent_crc(p_529->g_157.s3, "p_529->g_157.s3", print_hash_value);
    transparent_crc(p_529->g_157.s4, "p_529->g_157.s4", print_hash_value);
    transparent_crc(p_529->g_157.s5, "p_529->g_157.s5", print_hash_value);
    transparent_crc(p_529->g_157.s6, "p_529->g_157.s6", print_hash_value);
    transparent_crc(p_529->g_157.s7, "p_529->g_157.s7", print_hash_value);
    transparent_crc(p_529->g_157.s8, "p_529->g_157.s8", print_hash_value);
    transparent_crc(p_529->g_157.s9, "p_529->g_157.s9", print_hash_value);
    transparent_crc(p_529->g_157.sa, "p_529->g_157.sa", print_hash_value);
    transparent_crc(p_529->g_157.sb, "p_529->g_157.sb", print_hash_value);
    transparent_crc(p_529->g_157.sc, "p_529->g_157.sc", print_hash_value);
    transparent_crc(p_529->g_157.sd, "p_529->g_157.sd", print_hash_value);
    transparent_crc(p_529->g_157.se, "p_529->g_157.se", print_hash_value);
    transparent_crc(p_529->g_157.sf, "p_529->g_157.sf", print_hash_value);
    transparent_crc(p_529->g_164.f0, "p_529->g_164.f0", print_hash_value);
    transparent_crc(p_529->g_167, "p_529->g_167", print_hash_value);
    transparent_crc(p_529->g_183.f0, "p_529->g_183.f0", print_hash_value);
    transparent_crc(p_529->g_183.f1, "p_529->g_183.f1", print_hash_value);
    transparent_crc(p_529->g_183.f2, "p_529->g_183.f2", print_hash_value);
    transparent_crc(p_529->g_183.f3, "p_529->g_183.f3", print_hash_value);
    transparent_crc(p_529->g_183.f4, "p_529->g_183.f4", print_hash_value);
    transparent_crc(p_529->g_183.f5, "p_529->g_183.f5", print_hash_value);
    transparent_crc(p_529->g_183.f6, "p_529->g_183.f6", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_529->g_198[i][j], "p_529->g_198[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_529->g_207.s0, "p_529->g_207.s0", print_hash_value);
    transparent_crc(p_529->g_207.s1, "p_529->g_207.s1", print_hash_value);
    transparent_crc(p_529->g_207.s2, "p_529->g_207.s2", print_hash_value);
    transparent_crc(p_529->g_207.s3, "p_529->g_207.s3", print_hash_value);
    transparent_crc(p_529->g_207.s4, "p_529->g_207.s4", print_hash_value);
    transparent_crc(p_529->g_207.s5, "p_529->g_207.s5", print_hash_value);
    transparent_crc(p_529->g_207.s6, "p_529->g_207.s6", print_hash_value);
    transparent_crc(p_529->g_207.s7, "p_529->g_207.s7", print_hash_value);
    transparent_crc(p_529->g_207.s8, "p_529->g_207.s8", print_hash_value);
    transparent_crc(p_529->g_207.s9, "p_529->g_207.s9", print_hash_value);
    transparent_crc(p_529->g_207.sa, "p_529->g_207.sa", print_hash_value);
    transparent_crc(p_529->g_207.sb, "p_529->g_207.sb", print_hash_value);
    transparent_crc(p_529->g_207.sc, "p_529->g_207.sc", print_hash_value);
    transparent_crc(p_529->g_207.sd, "p_529->g_207.sd", print_hash_value);
    transparent_crc(p_529->g_207.se, "p_529->g_207.se", print_hash_value);
    transparent_crc(p_529->g_207.sf, "p_529->g_207.sf", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_529->g_213[i], "p_529->g_213[i]", print_hash_value);

    }
    transparent_crc(p_529->g_216.s0, "p_529->g_216.s0", print_hash_value);
    transparent_crc(p_529->g_216.s1, "p_529->g_216.s1", print_hash_value);
    transparent_crc(p_529->g_216.s2, "p_529->g_216.s2", print_hash_value);
    transparent_crc(p_529->g_216.s3, "p_529->g_216.s3", print_hash_value);
    transparent_crc(p_529->g_216.s4, "p_529->g_216.s4", print_hash_value);
    transparent_crc(p_529->g_216.s5, "p_529->g_216.s5", print_hash_value);
    transparent_crc(p_529->g_216.s6, "p_529->g_216.s6", print_hash_value);
    transparent_crc(p_529->g_216.s7, "p_529->g_216.s7", print_hash_value);
    transparent_crc(p_529->g_216.s8, "p_529->g_216.s8", print_hash_value);
    transparent_crc(p_529->g_216.s9, "p_529->g_216.s9", print_hash_value);
    transparent_crc(p_529->g_216.sa, "p_529->g_216.sa", print_hash_value);
    transparent_crc(p_529->g_216.sb, "p_529->g_216.sb", print_hash_value);
    transparent_crc(p_529->g_216.sc, "p_529->g_216.sc", print_hash_value);
    transparent_crc(p_529->g_216.sd, "p_529->g_216.sd", print_hash_value);
    transparent_crc(p_529->g_216.se, "p_529->g_216.se", print_hash_value);
    transparent_crc(p_529->g_216.sf, "p_529->g_216.sf", print_hash_value);
    transparent_crc(p_529->g_222.s0, "p_529->g_222.s0", print_hash_value);
    transparent_crc(p_529->g_222.s1, "p_529->g_222.s1", print_hash_value);
    transparent_crc(p_529->g_222.s2, "p_529->g_222.s2", print_hash_value);
    transparent_crc(p_529->g_222.s3, "p_529->g_222.s3", print_hash_value);
    transparent_crc(p_529->g_222.s4, "p_529->g_222.s4", print_hash_value);
    transparent_crc(p_529->g_222.s5, "p_529->g_222.s5", print_hash_value);
    transparent_crc(p_529->g_222.s6, "p_529->g_222.s6", print_hash_value);
    transparent_crc(p_529->g_222.s7, "p_529->g_222.s7", print_hash_value);
    transparent_crc(p_529->g_222.s8, "p_529->g_222.s8", print_hash_value);
    transparent_crc(p_529->g_222.s9, "p_529->g_222.s9", print_hash_value);
    transparent_crc(p_529->g_222.sa, "p_529->g_222.sa", print_hash_value);
    transparent_crc(p_529->g_222.sb, "p_529->g_222.sb", print_hash_value);
    transparent_crc(p_529->g_222.sc, "p_529->g_222.sc", print_hash_value);
    transparent_crc(p_529->g_222.sd, "p_529->g_222.sd", print_hash_value);
    transparent_crc(p_529->g_222.se, "p_529->g_222.se", print_hash_value);
    transparent_crc(p_529->g_222.sf, "p_529->g_222.sf", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 6; j++)
        {
            for (k = 0; k < 6; k++)
            {
                transparent_crc(p_529->g_225[i][j][k].f0, "p_529->g_225[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_529->g_230, "p_529->g_230", print_hash_value);
    transparent_crc(p_529->g_252.f0, "p_529->g_252.f0", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_529->g_296[i][j], "p_529->g_296[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_529->g_312, "p_529->g_312", print_hash_value);
    transparent_crc(p_529->g_323.f0, "p_529->g_323.f0", print_hash_value);
    transparent_crc(p_529->g_323.f1, "p_529->g_323.f1", print_hash_value);
    transparent_crc(p_529->g_323.f2, "p_529->g_323.f2", print_hash_value);
    transparent_crc(p_529->g_323.f3, "p_529->g_323.f3", print_hash_value);
    transparent_crc(p_529->g_323.f4, "p_529->g_323.f4", print_hash_value);
    transparent_crc(p_529->g_323.f5, "p_529->g_323.f5", print_hash_value);
    transparent_crc(p_529->g_323.f6, "p_529->g_323.f6", print_hash_value);
    transparent_crc(p_529->g_325.f0, "p_529->g_325.f0", print_hash_value);
    transparent_crc(p_529->g_325.f1, "p_529->g_325.f1", print_hash_value);
    transparent_crc(p_529->g_325.f2, "p_529->g_325.f2", print_hash_value);
    transparent_crc(p_529->g_325.f3, "p_529->g_325.f3", print_hash_value);
    transparent_crc(p_529->g_325.f4, "p_529->g_325.f4", print_hash_value);
    transparent_crc(p_529->g_325.f5, "p_529->g_325.f5", print_hash_value);
    transparent_crc(p_529->g_325.f6, "p_529->g_325.f6", print_hash_value);
    transparent_crc(p_529->g_326.f0, "p_529->g_326.f0", print_hash_value);
    transparent_crc(p_529->g_326.f1, "p_529->g_326.f1", print_hash_value);
    transparent_crc(p_529->g_326.f2, "p_529->g_326.f2", print_hash_value);
    transparent_crc(p_529->g_326.f3, "p_529->g_326.f3", print_hash_value);
    transparent_crc(p_529->g_326.f4, "p_529->g_326.f4", print_hash_value);
    transparent_crc(p_529->g_326.f5, "p_529->g_326.f5", print_hash_value);
    transparent_crc(p_529->g_326.f6, "p_529->g_326.f6", print_hash_value);
    transparent_crc(p_529->g_328.f0, "p_529->g_328.f0", print_hash_value);
    transparent_crc(p_529->g_357.f0, "p_529->g_357.f0", print_hash_value);
    transparent_crc(p_529->g_357.f1, "p_529->g_357.f1", print_hash_value);
    transparent_crc(p_529->g_357.f2, "p_529->g_357.f2", print_hash_value);
    transparent_crc(p_529->g_357.f3, "p_529->g_357.f3", print_hash_value);
    transparent_crc(p_529->g_357.f4, "p_529->g_357.f4", print_hash_value);
    transparent_crc(p_529->g_357.f5, "p_529->g_357.f5", print_hash_value);
    transparent_crc(p_529->g_357.f6, "p_529->g_357.f6", print_hash_value);
    transparent_crc(p_529->g_365.f0, "p_529->g_365.f0", print_hash_value);
    transparent_crc(p_529->g_365.f1, "p_529->g_365.f1", print_hash_value);
    transparent_crc(p_529->g_365.f2, "p_529->g_365.f2", print_hash_value);
    transparent_crc(p_529->g_365.f3, "p_529->g_365.f3", print_hash_value);
    transparent_crc(p_529->g_365.f4, "p_529->g_365.f4", print_hash_value);
    transparent_crc(p_529->g_365.f5, "p_529->g_365.f5", print_hash_value);
    transparent_crc(p_529->g_365.f6, "p_529->g_365.f6", print_hash_value);
    transparent_crc(p_529->g_383.f0, "p_529->g_383.f0", print_hash_value);
    transparent_crc(p_529->g_383.f1, "p_529->g_383.f1", print_hash_value);
    transparent_crc(p_529->g_383.f2, "p_529->g_383.f2", print_hash_value);
    transparent_crc(p_529->g_383.f3, "p_529->g_383.f3", print_hash_value);
    transparent_crc(p_529->g_383.f4, "p_529->g_383.f4", print_hash_value);
    transparent_crc(p_529->g_383.f5, "p_529->g_383.f5", print_hash_value);
    transparent_crc(p_529->g_383.f6, "p_529->g_383.f6", print_hash_value);
    transparent_crc(p_529->g_432.x, "p_529->g_432.x", print_hash_value);
    transparent_crc(p_529->g_432.y, "p_529->g_432.y", print_hash_value);
    transparent_crc(p_529->g_433.x, "p_529->g_433.x", print_hash_value);
    transparent_crc(p_529->g_433.y, "p_529->g_433.y", print_hash_value);
    transparent_crc(p_529->g_433.z, "p_529->g_433.z", print_hash_value);
    transparent_crc(p_529->g_433.w, "p_529->g_433.w", print_hash_value);
    transparent_crc(p_529->g_434.s0, "p_529->g_434.s0", print_hash_value);
    transparent_crc(p_529->g_434.s1, "p_529->g_434.s1", print_hash_value);
    transparent_crc(p_529->g_434.s2, "p_529->g_434.s2", print_hash_value);
    transparent_crc(p_529->g_434.s3, "p_529->g_434.s3", print_hash_value);
    transparent_crc(p_529->g_434.s4, "p_529->g_434.s4", print_hash_value);
    transparent_crc(p_529->g_434.s5, "p_529->g_434.s5", print_hash_value);
    transparent_crc(p_529->g_434.s6, "p_529->g_434.s6", print_hash_value);
    transparent_crc(p_529->g_434.s7, "p_529->g_434.s7", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_529->g_496[i].f0, "p_529->g_496[i].f0", print_hash_value);

    }
    transparent_crc(p_529->g_508.s0, "p_529->g_508.s0", print_hash_value);
    transparent_crc(p_529->g_508.s1, "p_529->g_508.s1", print_hash_value);
    transparent_crc(p_529->g_508.s2, "p_529->g_508.s2", print_hash_value);
    transparent_crc(p_529->g_508.s3, "p_529->g_508.s3", print_hash_value);
    transparent_crc(p_529->g_508.s4, "p_529->g_508.s4", print_hash_value);
    transparent_crc(p_529->g_508.s5, "p_529->g_508.s5", print_hash_value);
    transparent_crc(p_529->g_508.s6, "p_529->g_508.s6", print_hash_value);
    transparent_crc(p_529->g_508.s7, "p_529->g_508.s7", print_hash_value);
    transparent_crc(p_529->g_508.s8, "p_529->g_508.s8", print_hash_value);
    transparent_crc(p_529->g_508.s9, "p_529->g_508.s9", print_hash_value);
    transparent_crc(p_529->g_508.sa, "p_529->g_508.sa", print_hash_value);
    transparent_crc(p_529->g_508.sb, "p_529->g_508.sb", print_hash_value);
    transparent_crc(p_529->g_508.sc, "p_529->g_508.sc", print_hash_value);
    transparent_crc(p_529->g_508.sd, "p_529->g_508.sd", print_hash_value);
    transparent_crc(p_529->g_508.se, "p_529->g_508.se", print_hash_value);
    transparent_crc(p_529->g_508.sf, "p_529->g_508.sf", print_hash_value);
    transparent_crc(p_529->v_collective, "p_529->v_collective", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 13; i++)
            transparent_crc(p_529->g_special_values[i + 13 * get_linear_group_id()], "p_529->g_special_values[i + 13 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 13; i++)
            transparent_crc(p_529->l_special_values[i], "p_529->l_special_values[i]", print_hash_value);
    transparent_crc(p_529->l_comm_values[get_linear_local_id()], "p_529->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_529->g_comm_values[get_linear_group_id() * 1 + get_linear_local_id()], "p_529->g_comm_values[get_linear_group_id() * 1 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
