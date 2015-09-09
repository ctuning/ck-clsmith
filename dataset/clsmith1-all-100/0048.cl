// --atomics 52 ---atomic_reductions ---fake_divergence ---inter_thread_comm -g 35,33,3 -l 35,1,1
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

__constant uint32_t permutations[10][35] = {
{5,17,24,16,15,30,18,34,14,13,12,0,21,23,6,28,27,19,25,11,31,10,22,3,20,26,9,7,29,33,1,8,4,2,32}, // permutation 0
{5,26,6,15,11,9,3,17,24,21,30,28,0,8,29,16,12,22,7,10,33,18,1,25,31,14,27,32,34,13,20,4,19,23,2}, // permutation 1
{28,26,1,29,30,11,32,4,10,17,14,9,7,13,3,21,0,5,18,33,12,20,15,8,2,27,16,34,6,22,25,19,24,23,31}, // permutation 2
{5,29,28,21,4,26,19,17,33,20,1,10,9,31,27,18,15,32,0,7,11,25,2,16,8,14,3,12,13,34,30,24,23,6,22}, // permutation 3
{1,24,21,34,26,16,3,28,31,32,29,33,25,12,9,14,18,30,4,2,17,15,5,13,0,22,6,8,27,19,20,23,11,10,7}, // permutation 4
{17,29,19,21,32,15,28,9,20,18,4,1,16,27,23,7,26,25,14,24,3,2,34,10,8,11,5,12,22,6,0,13,30,31,33}, // permutation 5
{1,26,14,11,17,29,19,5,3,30,31,6,20,12,34,4,8,0,13,33,18,28,22,2,23,9,7,16,32,25,24,21,10,27,15}, // permutation 6
{24,0,16,31,23,27,28,20,11,19,7,21,25,2,18,22,15,10,13,34,9,5,6,8,32,1,17,26,29,33,14,12,30,4,3}, // permutation 7
{31,16,26,14,23,27,28,33,8,17,29,4,5,21,22,25,18,9,13,10,30,19,20,3,34,11,6,15,2,0,12,32,7,1,24}, // permutation 8
{13,14,3,27,26,17,7,9,29,30,23,8,22,28,16,19,2,24,10,31,32,21,5,20,0,25,6,33,1,15,11,4,18,34,12} // permutation 9
};

// Seed: 48

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    volatile VECTOR(int16_t, 16) g_23;
    volatile VECTOR(uint32_t, 4) g_27;
    int16_t g_58;
    uint64_t g_88;
    int16_t g_90;
    int16_t *g_100[7][2][7];
    int16_t **g_99;
    uint8_t g_111;
    uint8_t g_113;
    VECTOR(int32_t, 8) g_120;
    int64_t g_122[7];
    int8_t g_132;
    int32_t *g_135;
    int32_t ** volatile g_134;
    VECTOR(int32_t, 8) g_204;
    int32_t **g_216;
    int32_t ***g_215[7][2];
    int32_t ** volatile g_218;
    int16_t *** volatile g_235;
    int64_t * volatile g_237;
    int64_t * volatile * volatile g_236;
    int64_t * volatile * volatile * volatile g_238[2];
    int32_t g_241;
    int8_t g_251[7];
    volatile int16_t *g_253[7][4];
    int64_t g_260[5][3];
    volatile uint64_t g_277;
    volatile uint64_t *g_276[5];
    volatile uint64_t * volatile * volatile g_275[3][5];
    uint32_t g_283[4][6];
    int32_t ** volatile g_292;
    uint16_t g_309;
    uint16_t g_333;
    int64_t *g_351[9][8];
    int64_t **g_350[2];
    int32_t * volatile g_355;
    int8_t g_361;
    volatile VECTOR(int8_t, 4) g_387;
    uint32_t g_393;
    uint64_t g_400;
    uint64_t g_413[4];
    int32_t ** volatile g_437[4];
    int32_t ** volatile g_440;
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
    __local volatile uint32_t *l_atomic_reduction;
    __global volatile uint32_t *g_atomic_reduction;
    __local int64_t *l_comm_values;
    __global int64_t *g_comm_values;
};


/* --- FORWARD DECLARATIONS --- */
int64_t  func_1(struct S0 * p_442);
int64_t  func_2(int16_t  p_3, uint32_t  p_4, uint64_t  p_5, struct S0 * p_442);
int8_t  func_13(uint32_t  p_14, uint16_t  p_15, struct S0 * p_442);
uint8_t  func_20(int64_t  p_21, uint16_t  p_22, struct S0 * p_442);
uint32_t  func_31(uint32_t  p_32, uint8_t  p_33, uint8_t  p_34, uint32_t  p_35, int64_t  p_36, struct S0 * p_442);
int32_t  func_42(uint64_t  p_43, int8_t  p_44, int64_t  p_45, int32_t  p_46, int32_t  p_47, struct S0 * p_442);
int64_t  func_50(int32_t  p_51, int64_t  p_52, uint32_t  p_53, struct S0 * p_442);
int16_t  func_59(int32_t  p_60, int32_t  p_61, struct S0 * p_442);
int16_t ** func_62(uint32_t  p_63, int8_t  p_64, int16_t * p_65, int32_t  p_66, uint32_t  p_67, struct S0 * p_442);
uint8_t  func_78(int16_t ** p_79, uint64_t  p_80, uint16_t  p_81, int16_t * p_82, uint32_t  p_83, struct S0 * p_442);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_442->g_comm_values p_442->g_23 p_442->g_27 p_442->l_comm_values p_442->g_132 p_442->g_251 p_442->g_120 p_442->g_99 p_442->g_253 p_442->g_260 p_442->g_241 p_442->g_90 p_442->g_111 p_442->g_275 p_442->g_283 p_442->g_292 p_442->g_204 p_442->g_88 p_442->g_333 p_442->g_387 p_442->g_400 p_442->g_413 p_442->g_440
 * writes: p_442->g_251 p_442->g_100 p_442->g_260 p_442->g_111 p_442->g_283 p_442->g_90 p_442->g_135 p_442->g_88 p_442->g_309 p_442->g_333 p_442->g_350 p_442->g_361 p_442->g_241 p_442->g_393 p_442->g_400
 */
int64_t  func_1(struct S0 * p_442)
{ /* block id: 4 */
    uint16_t l_10 = 0xBD0AL;
    VECTOR(int16_t, 4) l_24 = (VECTOR(int16_t, 4))(0x3BF1L, (VECTOR(int16_t, 2))(0x3BF1L, 0x484BL), 0x484BL);
    VECTOR(uint32_t, 8) l_28 = (VECTOR(uint32_t, 8))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 0x1E183A09L), 0x1E183A09L), 0x1E183A09L, 1UL, 0x1E183A09L);
    uint32_t l_39[5][1][2] = {{{0x4C3DC4D7L,0x4C3DC4D7L}},{{0x4C3DC4D7L,0x4C3DC4D7L}},{{0x4C3DC4D7L,0x4C3DC4D7L}},{{0x4C3DC4D7L,0x4C3DC4D7L}},{{0x4C3DC4D7L,0x4C3DC4D7L}}};
    int64_t *l_259 = &p_442->g_260[1][0];
    int32_t *l_261 = (void*)0;
    int32_t l_262 = 4L;
    int32_t l_263 = 0L;
    uint16_t *l_308[5];
    uint16_t l_310 = 65530UL;
    uint64_t l_358 = 0xB5990A5554EDFD15L;
    uint8_t *l_359 = &p_442->g_111;
    int32_t l_360 = 0L;
    int32_t l_362[5] = {0x03B54FA3L,0x03B54FA3L,0x03B54FA3L,0x03B54FA3L,0x03B54FA3L};
    int32_t l_398 = 0x2763322FL;
    int32_t ***l_403 = (void*)0;
    int16_t l_432 = 0x735FL;
    int32_t **l_439 = &l_261;
    int32_t l_441 = (-1L);
    int i, j, k;
    for (i = 0; i < 5; i++)
        l_308[i] = &p_442->g_309;
    if (((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))((((func_2((safe_mod_func_uint16_t_u_u((p_442->g_361 = (p_442->g_comm_values[p_442->tid] <= (safe_add_func_uint16_t_u_u((l_10 ^ (safe_add_func_uint64_t_u_u((((((*l_359) = ((func_13(p_442->g_comm_values[p_442->tid], (l_310 = (safe_lshift_func_int16_t_s_s((safe_lshift_func_uint8_t_u_u(l_10, func_20(l_10, ((((VECTOR(int16_t, 8))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(add_sat(((VECTOR(int16_t, 16))(p_442->g_23.sa7209c3997b09b37)).sd0, ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 8))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 8),((VECTOR(int16_t, 8))(l_24.wwxwyyzz)), ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(add_sat(((VECTOR(int16_t, 4))(0x41FCL, ((((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))((((l_262 = (safe_mod_func_uint32_t_u_u((((*l_259) |= (l_24.x > ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(mul_hi(((VECTOR(uint32_t, 16))(p_442->g_27.zwzzwwywwwxwywwy)).s37, ((VECTOR(uint32_t, 2))(max(((VECTOR(uint32_t, 8))(l_28.s17736626)).s11, (uint32_t)((safe_sub_func_int16_t_s_s((func_31(((safe_lshift_func_int16_t_s_s(0x2964L, (p_442->g_23.s1 ^ (l_10 , p_442->l_comm_values[(safe_mod_func_uint32_t_u_u(p_442->tid, 35))])))) >= p_442->l_comm_values[(safe_mod_func_uint32_t_u_u(p_442->tid, 35))]), l_39[3][0][0], p_442->g_comm_values[p_442->tid], l_39[3][0][1], p_442->l_comm_values[(safe_mod_func_uint32_t_u_u(p_442->tid, 35))], p_442) , l_24.y), l_10)) , l_28.s7))))))), 0xBABD686FL, 4294967289UL)).x)) >= p_442->g_120.s1), 0xD3785568L))) == l_263) || l_28.s0), 0x183B725F03459CE8L, 0xC05448FBCCC2C11AL, 0xA158747C4E963F5EL)).wxzzxzyz)).s6 || p_442->g_241) == p_442->g_90), 0x11B0L, 1L)).odd, ((VECTOR(int16_t, 2))(6L))))))), 2L, 5L)).xwyxwyxxyxzxyywx)).s16)).yxxxyyxx, ((VECTOR(int16_t, 8))((-1L)))))))).s33))).xyxyxxyxyxxyyxyx)).lo)).s1 & 0x7FF8L) > FAKE_DIVERGE(p_442->local_0_offset, get_local_id(0), 10)), p_442))), l_10))), p_442) == 0xA3L) ^ l_358)) , p_442->g_204.s7) , l_24.z) != 0x039FL), FAKE_DIVERGE(p_442->local_2_offset, get_local_id(2), 10)))), l_360)))), 1L)), p_442->g_comm_values[p_442->tid], l_362[0], p_442) ^ p_442->l_comm_values[(safe_mod_func_uint32_t_u_u(p_442->tid, 35))]) && 0x7BL) == l_24.y), (-8L), l_39[4][0][1], ((VECTOR(int32_t, 4))(0x04D1C60CL)), 0L)).hi)).w)
    { /* block id: 166 */
        int32_t *l_395 = &l_362[1];
        int32_t *l_396[1];
        int32_t l_397 = 0x60786122L;
        int8_t l_399 = 0L;
        int16_t l_414 = (-1L);
        uint64_t l_433 = 1UL;
        int i;
        for (i = 0; i < 1; i++)
            l_396[i] = &l_262;
        p_442->g_400++;
        if (((void*)0 == l_403))
        { /* block id: 168 */
            VECTOR(int16_t, 8) l_416 = (VECTOR(int16_t, 8))(0x38EFL, (VECTOR(int16_t, 4))(0x38EFL, (VECTOR(int16_t, 2))(0x38EFL, 0x577CL), 0x577CL), 0x577CL, 0x38EFL, 0x577CL);
            int16_t *l_427 = &p_442->g_58;
            uint64_t *l_428 = &p_442->g_413[3];
            uint8_t l_429 = 0xAAL;
            int32_t l_430 = (-1L);
            int i;
            for (l_10 = 0; (l_10 != 55); l_10 = safe_add_func_uint32_t_u_u(l_10, 5))
            { /* block id: 171 */
                VECTOR(uint16_t, 4) l_406 = (VECTOR(uint16_t, 4))(0xEFC5L, (VECTOR(uint16_t, 2))(0xEFC5L, 0x829AL), 0x829AL);
                uint8_t *l_415 = &p_442->g_111;
                int i;
                (*l_395) &= (((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(l_406.wy)).yxxy)).y || (((safe_sub_func_int16_t_s_s(l_28.s2, ((0L & ((safe_lshift_func_uint8_t_u_u(((void*)0 != &p_442->g_350[0]), ((safe_sub_func_uint16_t_u_u(p_442->g_413[2], 0xCF31L)) >= l_414))) && (l_415 == (void*)0))) , 0L))) != 249UL) , 0xCF26L));
            }
            l_430 |= ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(max(((VECTOR(int32_t, 4))(min(((VECTOR(int32_t, 8))(add_sat(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(0x606B9408L, 0x06275D1EL)).yxxyxxyyxxxyyxyx)).lo, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))((-7L), 1L)), ((VECTOR(int32_t, 8))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 4))(upsample(((VECTOR(int16_t, 4))((-1L), ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 16))(l_416.s0742146774304005)).sa91f)), (((safe_add_func_int16_t_s_s((safe_rshift_func_int16_t_s_u(((0x3CA8E30BL != (safe_add_func_int32_t_s_s(((safe_div_func_int16_t_s_s(l_416.s2, (l_416.s5 , l_416.s0))) < (safe_add_func_uint16_t_u_u(p_442->g_387.z, ((((((*p_442->g_99) = l_427) != (void*)0) , l_428) != (void*)0) < p_442->g_204.s0)))), 0xC03A2697L))) || (*l_395)), 5)), p_442->g_120.s4)) , l_359) == (void*)0), (-9L), (-1L), ((VECTOR(int16_t, 4))(0x1A7FL)), (-1L), l_262, ((VECTOR(int16_t, 2))(0x7225L)), (-8L))).s9b)), 0L)), ((VECTOR(uint16_t, 4))(0x4FE4L))))).xywyzzzz, ((VECTOR(int32_t, 8))(0x0AA86F4DL)), ((VECTOR(int32_t, 8))(9L))))), 0x6BD29D54L, 0x48446E02L, 0x29DE29E1L, l_416.s0, 0x6CD249ACL, 8L)).even))).lo, (int32_t)(-1L)))).xyywwxzz, (int32_t)l_429))))).s0;
        }
        else
        { /* block id: 176 */
            int64_t l_431[3];
            int i;
            for (i = 0; i < 3; i++)
                l_431[i] = 0x036627E460425BB6L;
            return l_431[1];
        }
        ++l_433;
    }
    else
    { /* block id: 180 */
        int32_t *l_436 = &l_263;
        int32_t **l_438 = &l_261;
        (*l_438) = (p_442->g_260[2][1] , l_436);
    }
    (*p_442->g_440) = ((*l_439) = &l_362[0]);
    return l_441;
}


/* ------------------------------------------ */
/* 
 * reads : p_442->g_90 p_442->g_99 p_442->g_387 p_442->g_283 p_442->g_120
 * writes: p_442->g_90 p_442->g_241 p_442->g_100 p_442->g_393 p_442->g_111
 */
int64_t  func_2(int16_t  p_3, uint32_t  p_4, uint64_t  p_5, struct S0 * p_442)
{ /* block id: 150 */
    int16_t *l_372 = &p_442->g_90;
    int64_t *l_373[8] = {&p_442->g_260[3][1],&p_442->g_260[4][1],&p_442->g_260[3][1],&p_442->g_260[3][1],&p_442->g_260[4][1],&p_442->g_260[3][1],&p_442->g_260[3][1],&p_442->g_260[4][1]};
    int32_t l_377 = 1L;
    int32_t l_382 = 0x31D85C06L;
    int32_t l_389 = 0L;
    int i;
    for (p_442->g_90 = 0; (p_442->g_90 == 26); p_442->g_90 = safe_add_func_int8_t_s_s(p_442->g_90, 6))
    { /* block id: 153 */
        int32_t *l_365 = (void*)0;
        int32_t *l_366 = &p_442->g_241;
        int16_t *l_371[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int64_t **l_374 = &l_373[5];
        int32_t *l_375 = (void*)0;
        int32_t *l_376[4][3][10] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
        VECTOR(uint8_t, 4) l_388 = (VECTOR(uint8_t, 4))(0xF1L, (VECTOR(uint8_t, 2))(0xF1L, 0x5FL), 0x5FL);
        uint32_t *l_392 = &p_442->g_393;
        uint8_t *l_394 = &p_442->g_111;
        int i, j, k;
        l_365 = l_365;
        l_377 = (((((*l_366) = 0x206E4477L) , p_4) , p_3) , (safe_mul_func_uint8_t_u_u(((1L ^ 7L) & (safe_add_func_int64_t_s_s(p_4, (((*p_442->g_99) = l_371[4]) == l_372)))), (((*l_374) = l_373[5]) == &p_442->g_260[1][0]))));
        l_382 = ((safe_mul_func_int8_t_s_s(0x64L, p_5)) > (safe_mod_func_uint64_t_u_u(((l_377 = p_4) == ((+(65531UL && l_382)) , 4294967295UL)), (((*l_394) = ((p_3 & ((VECTOR(int64_t, 2))(0x4BBCE12E4BF430DAL, 0L)).hi) >= (safe_lshift_func_int16_t_s_s((+p_4), ((((*l_392) = ((safe_add_func_int16_t_s_s((l_389 = ((VECTOR(int16_t, 4))(upsample(((VECTOR(int8_t, 8))(p_442->g_387.xyxzyyzy)).odd, ((VECTOR(uint8_t, 8))(l_388.wzxyzxxz)).lo))).z), (safe_mod_func_uint32_t_u_u(0x280458CAL, p_442->g_283[1][1])))) && p_5)) , p_5) == FAKE_DIVERGE(p_442->local_0_offset, get_local_id(0), 10)))))) ^ (-1L)))));
    }
    return p_442->g_120.s5;
}


/* ------------------------------------------ */
/* 
 * reads : p_442->g_88 p_442->g_333 p_442->g_111 p_442->g_comm_values
 * writes: p_442->g_88 p_442->g_309 p_442->g_333 p_442->g_350
 */
int8_t  func_13(uint32_t  p_14, uint16_t  p_15, struct S0 * p_442)
{ /* block id: 131 */
    int32_t l_315 = 0x63288620L;
    int64_t l_321[10][5][3] = {{{0x72F857729BDC5D14L,0x508C7653ECA8A1A8L,0x7D65FC68337E1C1FL},{0x72F857729BDC5D14L,0x508C7653ECA8A1A8L,0x7D65FC68337E1C1FL},{0x72F857729BDC5D14L,0x508C7653ECA8A1A8L,0x7D65FC68337E1C1FL},{0x72F857729BDC5D14L,0x508C7653ECA8A1A8L,0x7D65FC68337E1C1FL},{0x72F857729BDC5D14L,0x508C7653ECA8A1A8L,0x7D65FC68337E1C1FL}},{{0x72F857729BDC5D14L,0x508C7653ECA8A1A8L,0x7D65FC68337E1C1FL},{0x72F857729BDC5D14L,0x508C7653ECA8A1A8L,0x7D65FC68337E1C1FL},{0x72F857729BDC5D14L,0x508C7653ECA8A1A8L,0x7D65FC68337E1C1FL},{0x72F857729BDC5D14L,0x508C7653ECA8A1A8L,0x7D65FC68337E1C1FL},{0x72F857729BDC5D14L,0x508C7653ECA8A1A8L,0x7D65FC68337E1C1FL}},{{0x72F857729BDC5D14L,0x508C7653ECA8A1A8L,0x7D65FC68337E1C1FL},{0x72F857729BDC5D14L,0x508C7653ECA8A1A8L,0x7D65FC68337E1C1FL},{0x72F857729BDC5D14L,0x508C7653ECA8A1A8L,0x7D65FC68337E1C1FL},{0x72F857729BDC5D14L,0x508C7653ECA8A1A8L,0x7D65FC68337E1C1FL},{0x72F857729BDC5D14L,0x508C7653ECA8A1A8L,0x7D65FC68337E1C1FL}},{{0x72F857729BDC5D14L,0x508C7653ECA8A1A8L,0x7D65FC68337E1C1FL},{0x72F857729BDC5D14L,0x508C7653ECA8A1A8L,0x7D65FC68337E1C1FL},{0x72F857729BDC5D14L,0x508C7653ECA8A1A8L,0x7D65FC68337E1C1FL},{0x72F857729BDC5D14L,0x508C7653ECA8A1A8L,0x7D65FC68337E1C1FL},{0x72F857729BDC5D14L,0x508C7653ECA8A1A8L,0x7D65FC68337E1C1FL}},{{0x72F857729BDC5D14L,0x508C7653ECA8A1A8L,0x7D65FC68337E1C1FL},{0x72F857729BDC5D14L,0x508C7653ECA8A1A8L,0x7D65FC68337E1C1FL},{0x72F857729BDC5D14L,0x508C7653ECA8A1A8L,0x7D65FC68337E1C1FL},{0x72F857729BDC5D14L,0x508C7653ECA8A1A8L,0x7D65FC68337E1C1FL},{0x72F857729BDC5D14L,0x508C7653ECA8A1A8L,0x7D65FC68337E1C1FL}},{{0x72F857729BDC5D14L,0x508C7653ECA8A1A8L,0x7D65FC68337E1C1FL},{0x72F857729BDC5D14L,0x508C7653ECA8A1A8L,0x7D65FC68337E1C1FL},{0x72F857729BDC5D14L,0x508C7653ECA8A1A8L,0x7D65FC68337E1C1FL},{0x72F857729BDC5D14L,0x508C7653ECA8A1A8L,0x7D65FC68337E1C1FL},{0x72F857729BDC5D14L,0x508C7653ECA8A1A8L,0x7D65FC68337E1C1FL}},{{0x72F857729BDC5D14L,0x508C7653ECA8A1A8L,0x7D65FC68337E1C1FL},{0x72F857729BDC5D14L,0x508C7653ECA8A1A8L,0x7D65FC68337E1C1FL},{0x72F857729BDC5D14L,0x508C7653ECA8A1A8L,0x7D65FC68337E1C1FL},{0x72F857729BDC5D14L,0x508C7653ECA8A1A8L,0x7D65FC68337E1C1FL},{0x72F857729BDC5D14L,0x508C7653ECA8A1A8L,0x7D65FC68337E1C1FL}},{{0x72F857729BDC5D14L,0x508C7653ECA8A1A8L,0x7D65FC68337E1C1FL},{0x72F857729BDC5D14L,0x508C7653ECA8A1A8L,0x7D65FC68337E1C1FL},{0x72F857729BDC5D14L,0x508C7653ECA8A1A8L,0x7D65FC68337E1C1FL},{0x72F857729BDC5D14L,0x508C7653ECA8A1A8L,0x7D65FC68337E1C1FL},{0x72F857729BDC5D14L,0x508C7653ECA8A1A8L,0x7D65FC68337E1C1FL}},{{0x72F857729BDC5D14L,0x508C7653ECA8A1A8L,0x7D65FC68337E1C1FL},{0x72F857729BDC5D14L,0x508C7653ECA8A1A8L,0x7D65FC68337E1C1FL},{0x72F857729BDC5D14L,0x508C7653ECA8A1A8L,0x7D65FC68337E1C1FL},{0x72F857729BDC5D14L,0x508C7653ECA8A1A8L,0x7D65FC68337E1C1FL},{0x72F857729BDC5D14L,0x508C7653ECA8A1A8L,0x7D65FC68337E1C1FL}},{{0x72F857729BDC5D14L,0x508C7653ECA8A1A8L,0x7D65FC68337E1C1FL},{0x72F857729BDC5D14L,0x508C7653ECA8A1A8L,0x7D65FC68337E1C1FL},{0x72F857729BDC5D14L,0x508C7653ECA8A1A8L,0x7D65FC68337E1C1FL},{0x72F857729BDC5D14L,0x508C7653ECA8A1A8L,0x7D65FC68337E1C1FL},{0x72F857729BDC5D14L,0x508C7653ECA8A1A8L,0x7D65FC68337E1C1FL}}};
    int32_t l_335 = (-7L);
    uint32_t l_357 = 9UL;
    int i, j, k;
    for (p_442->g_88 = (-9); (p_442->g_88 < 23); p_442->g_88++)
    { /* block id: 134 */
        int32_t *l_318 = (void*)0;
        int32_t l_328 = (-5L);
        uint16_t *l_331 = &p_442->g_309;
        uint16_t *l_332 = &p_442->g_333;
        uint16_t l_334[2];
        int64_t *l_349 = &p_442->g_122[3];
        int64_t **l_348 = &l_349;
        int64_t **l_353[7][8] = {{&p_442->g_351[1][5],&l_349,&p_442->g_351[0][6],&p_442->g_351[3][6],&p_442->g_351[0][6],&l_349,&p_442->g_351[1][5],&p_442->g_351[7][6]},{&p_442->g_351[1][5],&l_349,&p_442->g_351[0][6],&p_442->g_351[3][6],&p_442->g_351[0][6],&l_349,&p_442->g_351[1][5],&p_442->g_351[7][6]},{&p_442->g_351[1][5],&l_349,&p_442->g_351[0][6],&p_442->g_351[3][6],&p_442->g_351[0][6],&l_349,&p_442->g_351[1][5],&p_442->g_351[7][6]},{&p_442->g_351[1][5],&l_349,&p_442->g_351[0][6],&p_442->g_351[3][6],&p_442->g_351[0][6],&l_349,&p_442->g_351[1][5],&p_442->g_351[7][6]},{&p_442->g_351[1][5],&l_349,&p_442->g_351[0][6],&p_442->g_351[3][6],&p_442->g_351[0][6],&l_349,&p_442->g_351[1][5],&p_442->g_351[7][6]},{&p_442->g_351[1][5],&l_349,&p_442->g_351[0][6],&p_442->g_351[3][6],&p_442->g_351[0][6],&l_349,&p_442->g_351[1][5],&p_442->g_351[7][6]},{&p_442->g_351[1][5],&l_349,&p_442->g_351[0][6],&p_442->g_351[3][6],&p_442->g_351[0][6],&l_349,&p_442->g_351[1][5],&p_442->g_351[7][6]}};
        int64_t ***l_352 = &l_353[0][2];
        VECTOR(uint32_t, 16) l_354 = (VECTOR(uint32_t, 16))(0xAE47DCB6L, (VECTOR(uint32_t, 4))(0xAE47DCB6L, (VECTOR(uint32_t, 2))(0xAE47DCB6L, 0xFDC092EFL), 0xFDC092EFL), 0xFDC092EFL, 0xAE47DCB6L, 0xFDC092EFL, (VECTOR(uint32_t, 2))(0xAE47DCB6L, 0xFDC092EFL), (VECTOR(uint32_t, 2))(0xAE47DCB6L, 0xFDC092EFL), 0xAE47DCB6L, 0xFDC092EFL, 0xAE47DCB6L, 0xFDC092EFL);
        int32_t *l_356[6];
        int i, j;
        for (i = 0; i < 2; i++)
            l_334[i] = 4UL;
        for (i = 0; i < 6; i++)
            l_356[i] = (void*)0;
        for (p_15 = 0; (p_15 > 31); p_15 = safe_add_func_int32_t_s_s(p_15, 3))
        { /* block id: 137 */
            if (l_315)
                break;
        }
        l_335 = (safe_mod_func_int16_t_s_s(((void*)0 == l_318), (safe_lshift_func_int16_t_s_u((l_321[5][1][2] ^ (safe_rshift_func_int16_t_s_u(p_14, (safe_sub_func_int32_t_s_s((safe_div_func_uint32_t_u_u(l_328, (safe_add_func_uint16_t_u_u(((*l_331) = 65535UL), ((*l_332) ^= (FAKE_DIVERGE(p_442->local_2_offset, get_local_id(2), 10) && (p_15 , (!((VECTOR(int64_t, 2))((-10L), (-1L))).odd)))))))), (l_334[1] & (p_15 | p_442->g_111))))))), 13))));
        l_335 = (safe_div_func_int16_t_s_s((safe_lshift_func_uint8_t_u_s(((safe_sub_func_uint64_t_u_u((safe_lshift_func_uint16_t_u_u((safe_mod_func_uint16_t_u_u(((safe_add_func_uint16_t_u_u((((p_442->g_350[0] = ((((p_15 != 5L) > 18446744073709551615UL) , p_15) , l_348)) != ((*l_352) = &p_442->g_351[1][5])) , 0x7BC3L), (((((VECTOR(uint64_t, 16))(upsample(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 16))(mul_hi(((VECTOR(uint32_t, 8))(l_354.s3164f34e)).s5446421125417727, ((VECTOR(uint32_t, 16))(clz(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 16))(mad_sat(((VECTOR(uint32_t, 4))(4294967295UL, 0x81631843L, 0UL, 0xEA63802CL)).zxwywzxyyyzzzzxz, ((VECTOR(uint32_t, 16))(4294967295UL, 1UL, ((VECTOR(uint32_t, 4))(p_442->g_23.s3, 0x39541A7BL, 0xBF689521L, 0xEF3ABFB5L)), l_335, ((VECTOR(uint32_t, 2))(4294967292UL)), ((VECTOR(uint32_t, 4))(4UL)), 1UL, 4294967294UL, 0x1F59CEDBL)), ((VECTOR(uint32_t, 16))(0x01043741L))))).even)).s1621663413703161)))))))), ((VECTOR(uint32_t, 16))(1UL))))).s5 >= 0x05AC7BDA4903D656L) || (-1L)) > p_15))) == GROUP_DIVERGE(2, 1)), (-1L))), 13)), GROUP_DIVERGE(2, 1))) >= p_14), 3)), p_442->g_comm_values[p_442->tid]));
    }
    return l_357;
}


/* ------------------------------------------ */
/* 
 * reads : p_442->g_111 p_442->g_comm_values p_442->g_275 p_442->g_23 p_442->g_283 p_442->g_251 p_442->g_90 p_442->g_292 p_442->g_204 p_442->g_88
 * writes: p_442->g_111 p_442->g_283 p_442->g_260 p_442->g_90 p_442->g_135
 */
uint8_t  func_20(int64_t  p_21, uint16_t  p_22, struct S0 * p_442)
{ /* block id: 108 */
    uint32_t l_289 = 1UL;
    uint64_t *l_302 = &p_442->g_88;
    uint64_t **l_301 = &l_302;
    uint32_t *l_303 = (void*)0;
    uint32_t *l_304 = &p_442->g_283[1][1];
    uint8_t *l_305 = &p_442->g_111;
    VECTOR(uint64_t, 4) l_306 = (VECTOR(uint64_t, 4))(18446744073709551614UL, (VECTOR(uint64_t, 2))(18446744073709551614UL, 6UL), 6UL);
    int32_t l_307 = 0x0EA1205CL;
    int i;
    for (p_442->g_111 = (-17); (p_442->g_111 <= 35); p_442->g_111 = safe_add_func_uint32_t_u_u(p_442->g_111, 9))
    { /* block id: 111 */
        int32_t *l_266 = (void*)0;
        int32_t l_267 = 0x436ECE72L;
        l_267 ^= 8L;
        for (l_267 = 28; (l_267 >= 24); l_267--)
        { /* block id: 115 */
            uint8_t l_278 = 255UL;
            uint32_t *l_279 = (void*)0;
            uint32_t *l_280 = (void*)0;
            uint32_t *l_281 = (void*)0;
            uint32_t *l_282 = &p_442->g_283[1][1];
            int64_t *l_284 = &p_442->g_260[1][2];
            VECTOR(int32_t, 2) l_285 = (VECTOR(int32_t, 2))((-8L), 0x257AAD55L);
            int i;
            l_285.y = (safe_add_func_int64_t_s_s((safe_div_func_int64_t_s_s(p_442->g_comm_values[p_442->tid], (safe_unary_minus_func_int16_t_s(1L)))), (((void*)0 != p_442->g_275[2][1]) || ((*l_284) = (((((*l_282) &= ((p_442->g_23.se & ((0L >= (l_278 & 255UL)) & ((p_21 ^ 0xDF07101F3979143FL) , l_278))) && 0x38L)) == 1L) , p_22) != p_442->g_251[5])))));
            for (p_442->g_90 = 24; (p_442->g_90 > (-12)); --p_442->g_90)
            { /* block id: 121 */
                int8_t l_288 = 0x08L;
                --l_289;
                (*p_442->g_292) = l_279;
            }
        }
    }
    l_307 &= ((safe_rshift_func_int8_t_s_u((safe_lshift_func_uint8_t_u_u((p_442->g_204.s5 >= (safe_lshift_func_uint16_t_u_s(p_442->g_88, 4))), 3)), ((safe_rshift_func_uint16_t_u_u((+((l_301 == (l_289 , &p_442->g_276[2])) == (((((((*l_304) &= p_442->g_23.s7) == (!FAKE_DIVERGE(p_442->group_2_offset, get_group_id(2), 10))) == (l_289 , 0x9CL)) > (l_289 , 0x66L)) , l_305) == l_305))), l_306.z)) != (-8L)))) != 0x50FAL);
    return l_289;
}


/* ------------------------------------------ */
/* 
 * reads : p_442->g_132 p_442->g_251 p_442->g_120 p_442->g_99 p_442->g_253
 * writes: p_442->g_251 p_442->g_100
 */
uint32_t  func_31(uint32_t  p_32, uint8_t  p_33, uint8_t  p_34, uint32_t  p_35, int64_t  p_36, struct S0 * p_442)
{ /* block id: 5 */
    int32_t l_48 = (-4L);
    VECTOR(uint16_t, 8) l_56 = (VECTOR(uint16_t, 8))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0x0900L), 0x0900L), 0x0900L, 0UL, 0x0900L);
    int32_t l_258 = 1L;
    int i;
    for (p_35 = 0; (p_35 <= 39); p_35 = safe_add_func_uint16_t_u_u(p_35, 7))
    { /* block id: 8 */
        VECTOR(int64_t, 8) l_49 = (VECTOR(int64_t, 8))(0x5F0A862252705104L, (VECTOR(int64_t, 4))(0x5F0A862252705104L, (VECTOR(int64_t, 2))(0x5F0A862252705104L, 5L), 5L), 5L, 0x5F0A862252705104L, 5L);
        int16_t *l_57[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int32_t *l_240[10][5][5] = {{{(void*)0,&p_442->g_241,&p_442->g_241,&p_442->g_241,&p_442->g_241},{(void*)0,&p_442->g_241,&p_442->g_241,&p_442->g_241,&p_442->g_241},{(void*)0,&p_442->g_241,&p_442->g_241,&p_442->g_241,&p_442->g_241},{(void*)0,&p_442->g_241,&p_442->g_241,&p_442->g_241,&p_442->g_241},{(void*)0,&p_442->g_241,&p_442->g_241,&p_442->g_241,&p_442->g_241}},{{(void*)0,&p_442->g_241,&p_442->g_241,&p_442->g_241,&p_442->g_241},{(void*)0,&p_442->g_241,&p_442->g_241,&p_442->g_241,&p_442->g_241},{(void*)0,&p_442->g_241,&p_442->g_241,&p_442->g_241,&p_442->g_241},{(void*)0,&p_442->g_241,&p_442->g_241,&p_442->g_241,&p_442->g_241},{(void*)0,&p_442->g_241,&p_442->g_241,&p_442->g_241,&p_442->g_241}},{{(void*)0,&p_442->g_241,&p_442->g_241,&p_442->g_241,&p_442->g_241},{(void*)0,&p_442->g_241,&p_442->g_241,&p_442->g_241,&p_442->g_241},{(void*)0,&p_442->g_241,&p_442->g_241,&p_442->g_241,&p_442->g_241},{(void*)0,&p_442->g_241,&p_442->g_241,&p_442->g_241,&p_442->g_241},{(void*)0,&p_442->g_241,&p_442->g_241,&p_442->g_241,&p_442->g_241}},{{(void*)0,&p_442->g_241,&p_442->g_241,&p_442->g_241,&p_442->g_241},{(void*)0,&p_442->g_241,&p_442->g_241,&p_442->g_241,&p_442->g_241},{(void*)0,&p_442->g_241,&p_442->g_241,&p_442->g_241,&p_442->g_241},{(void*)0,&p_442->g_241,&p_442->g_241,&p_442->g_241,&p_442->g_241},{(void*)0,&p_442->g_241,&p_442->g_241,&p_442->g_241,&p_442->g_241}},{{(void*)0,&p_442->g_241,&p_442->g_241,&p_442->g_241,&p_442->g_241},{(void*)0,&p_442->g_241,&p_442->g_241,&p_442->g_241,&p_442->g_241},{(void*)0,&p_442->g_241,&p_442->g_241,&p_442->g_241,&p_442->g_241},{(void*)0,&p_442->g_241,&p_442->g_241,&p_442->g_241,&p_442->g_241},{(void*)0,&p_442->g_241,&p_442->g_241,&p_442->g_241,&p_442->g_241}},{{(void*)0,&p_442->g_241,&p_442->g_241,&p_442->g_241,&p_442->g_241},{(void*)0,&p_442->g_241,&p_442->g_241,&p_442->g_241,&p_442->g_241},{(void*)0,&p_442->g_241,&p_442->g_241,&p_442->g_241,&p_442->g_241},{(void*)0,&p_442->g_241,&p_442->g_241,&p_442->g_241,&p_442->g_241},{(void*)0,&p_442->g_241,&p_442->g_241,&p_442->g_241,&p_442->g_241}},{{(void*)0,&p_442->g_241,&p_442->g_241,&p_442->g_241,&p_442->g_241},{(void*)0,&p_442->g_241,&p_442->g_241,&p_442->g_241,&p_442->g_241},{(void*)0,&p_442->g_241,&p_442->g_241,&p_442->g_241,&p_442->g_241},{(void*)0,&p_442->g_241,&p_442->g_241,&p_442->g_241,&p_442->g_241},{(void*)0,&p_442->g_241,&p_442->g_241,&p_442->g_241,&p_442->g_241}},{{(void*)0,&p_442->g_241,&p_442->g_241,&p_442->g_241,&p_442->g_241},{(void*)0,&p_442->g_241,&p_442->g_241,&p_442->g_241,&p_442->g_241},{(void*)0,&p_442->g_241,&p_442->g_241,&p_442->g_241,&p_442->g_241},{(void*)0,&p_442->g_241,&p_442->g_241,&p_442->g_241,&p_442->g_241},{(void*)0,&p_442->g_241,&p_442->g_241,&p_442->g_241,&p_442->g_241}},{{(void*)0,&p_442->g_241,&p_442->g_241,&p_442->g_241,&p_442->g_241},{(void*)0,&p_442->g_241,&p_442->g_241,&p_442->g_241,&p_442->g_241},{(void*)0,&p_442->g_241,&p_442->g_241,&p_442->g_241,&p_442->g_241},{(void*)0,&p_442->g_241,&p_442->g_241,&p_442->g_241,&p_442->g_241},{(void*)0,&p_442->g_241,&p_442->g_241,&p_442->g_241,&p_442->g_241}},{{(void*)0,&p_442->g_241,&p_442->g_241,&p_442->g_241,&p_442->g_241},{(void*)0,&p_442->g_241,&p_442->g_241,&p_442->g_241,&p_442->g_241},{(void*)0,&p_442->g_241,&p_442->g_241,&p_442->g_241,&p_442->g_241},{(void*)0,&p_442->g_241,&p_442->g_241,&p_442->g_241,&p_442->g_241},{(void*)0,&p_442->g_241,&p_442->g_241,&p_442->g_241,&p_442->g_241}}};
        int32_t *l_243 = (void*)0;
        int32_t **l_242[7][1][3] = {{{&l_243,&l_243,&l_243}},{{&l_243,&l_243,&l_243}},{{&l_243,&l_243,&l_243}},{{&l_243,&l_243,&l_243}},{{&l_243,&l_243,&l_243}},{{&l_243,&l_243,&l_243}},{{&l_243,&l_243,&l_243}}};
        int8_t *l_249 = (void*)0;
        int8_t *l_250[2][6][4] = {{{&p_442->g_251[2],&p_442->g_251[2],&p_442->g_251[6],&p_442->g_251[5]},{&p_442->g_251[2],&p_442->g_251[2],&p_442->g_251[6],&p_442->g_251[5]},{&p_442->g_251[2],&p_442->g_251[2],&p_442->g_251[6],&p_442->g_251[5]},{&p_442->g_251[2],&p_442->g_251[2],&p_442->g_251[6],&p_442->g_251[5]},{&p_442->g_251[2],&p_442->g_251[2],&p_442->g_251[6],&p_442->g_251[5]},{&p_442->g_251[2],&p_442->g_251[2],&p_442->g_251[6],&p_442->g_251[5]}},{{&p_442->g_251[2],&p_442->g_251[2],&p_442->g_251[6],&p_442->g_251[5]},{&p_442->g_251[2],&p_442->g_251[2],&p_442->g_251[6],&p_442->g_251[5]},{&p_442->g_251[2],&p_442->g_251[2],&p_442->g_251[6],&p_442->g_251[5]},{&p_442->g_251[2],&p_442->g_251[2],&p_442->g_251[6],&p_442->g_251[5]},{&p_442->g_251[2],&p_442->g_251[2],&p_442->g_251[6],&p_442->g_251[5]},{&p_442->g_251[2],&p_442->g_251[2],&p_442->g_251[6],&p_442->g_251[5]}}};
        uint8_t l_257[3][1];
        int i, j, k;
        for (i = 0; i < 3; i++)
        {
            for (j = 0; j < 1; j++)
                l_257[i][j] = 0x38L;
        }
        l_258 = (l_257[0][0] ^= func_42(p_35, (l_48 , (p_442->g_251[5] &= (((VECTOR(int64_t, 8))(clz(((VECTOR(int64_t, 4))(max(((VECTOR(int64_t, 4))(l_49.s6062)), (int64_t)func_50((l_48 = (p_442->g_241 &= ((p_442->g_58 = (safe_lshift_func_uint16_t_u_u(((VECTOR(uint16_t, 2))(l_56.s55)).odd, 8))) <= func_59(p_442->g_27.x, p_442->l_comm_values[(safe_mod_func_uint32_t_u_u(p_442->tid, 35))], p_442)))), l_49.s1, ((void*)0 == l_242[2][0][2]), p_442)))).xzyzwwww))).s1 , p_442->g_132))), l_56.s4, p_442->g_120.s5, l_56.s5, p_442));
    }
    return p_442->g_120.s5;
}


/* ------------------------------------------ */
/* 
 * reads : p_442->g_99 p_442->g_253
 * writes: p_442->g_100
 */
int32_t  func_42(uint64_t  p_43, int8_t  p_44, int64_t  p_45, int32_t  p_46, int32_t  p_47, struct S0 * p_442)
{ /* block id: 97 */
    int16_t *l_252 = &p_442->g_58;
    int32_t l_254 = 0x54C23DD2L;
    int32_t *l_255[3][6] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
    uint8_t l_256[9] = {0xA1L,3UL,0xA1L,0xA1L,3UL,0xA1L,0xA1L,3UL,0xA1L};
    int i, j;
    l_256[2] = ((l_252 != l_252) < (l_254 ^= (((*p_442->g_99) = l_252) != p_442->g_253[4][0])));
    return p_45;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int64_t  func_50(int32_t  p_51, int64_t  p_52, uint32_t  p_53, struct S0 * p_442)
{ /* block id: 91 */
    uint32_t l_244 = 4294967295UL;
    int32_t l_245 = 0x31BF553EL;
    int32_t l_246 = 0x13BF90D2L;
    int32_t l_247 = 8L;
    int8_t l_248[9][9][3] = {{{3L,0x60L,2L},{3L,0x60L,2L},{3L,0x60L,2L},{3L,0x60L,2L},{3L,0x60L,2L},{3L,0x60L,2L},{3L,0x60L,2L},{3L,0x60L,2L},{3L,0x60L,2L}},{{3L,0x60L,2L},{3L,0x60L,2L},{3L,0x60L,2L},{3L,0x60L,2L},{3L,0x60L,2L},{3L,0x60L,2L},{3L,0x60L,2L},{3L,0x60L,2L},{3L,0x60L,2L}},{{3L,0x60L,2L},{3L,0x60L,2L},{3L,0x60L,2L},{3L,0x60L,2L},{3L,0x60L,2L},{3L,0x60L,2L},{3L,0x60L,2L},{3L,0x60L,2L},{3L,0x60L,2L}},{{3L,0x60L,2L},{3L,0x60L,2L},{3L,0x60L,2L},{3L,0x60L,2L},{3L,0x60L,2L},{3L,0x60L,2L},{3L,0x60L,2L},{3L,0x60L,2L},{3L,0x60L,2L}},{{3L,0x60L,2L},{3L,0x60L,2L},{3L,0x60L,2L},{3L,0x60L,2L},{3L,0x60L,2L},{3L,0x60L,2L},{3L,0x60L,2L},{3L,0x60L,2L},{3L,0x60L,2L}},{{3L,0x60L,2L},{3L,0x60L,2L},{3L,0x60L,2L},{3L,0x60L,2L},{3L,0x60L,2L},{3L,0x60L,2L},{3L,0x60L,2L},{3L,0x60L,2L},{3L,0x60L,2L}},{{3L,0x60L,2L},{3L,0x60L,2L},{3L,0x60L,2L},{3L,0x60L,2L},{3L,0x60L,2L},{3L,0x60L,2L},{3L,0x60L,2L},{3L,0x60L,2L},{3L,0x60L,2L}},{{3L,0x60L,2L},{3L,0x60L,2L},{3L,0x60L,2L},{3L,0x60L,2L},{3L,0x60L,2L},{3L,0x60L,2L},{3L,0x60L,2L},{3L,0x60L,2L},{3L,0x60L,2L}},{{3L,0x60L,2L},{3L,0x60L,2L},{3L,0x60L,2L},{3L,0x60L,2L},{3L,0x60L,2L},{3L,0x60L,2L},{3L,0x60L,2L},{3L,0x60L,2L},{3L,0x60L,2L}}};
    int i, j, k;
    l_246 = ((l_245 = (((l_244 ^ p_51) , p_53) | l_244)) == 0xD2ABL);
    l_246 = l_247;
    return l_248[5][6][1];
}


/* ------------------------------------------ */
/* 
 * reads : p_442->g_23 p_442->g_comm_values p_442->g_88 p_442->l_comm_values p_442->g_90 p_442->g_99 p_442->g_113 p_442->g_120 p_442->g_122 p_442->g_134 p_442->g_111 p_442->g_218 p_442->g_235 p_442->g_236
 * writes: p_442->g_88 p_442->g_90 p_442->g_99 p_442->g_111 p_442->g_113 p_442->g_122 p_442->g_132 p_442->g_135 p_442->g_236
 */
int16_t  func_59(int32_t  p_60, int32_t  p_61, struct S0 * p_442)
{ /* block id: 10 */
    int16_t **l_68 = (void*)0;
    int32_t l_86 = (-1L);
    uint64_t *l_87 = &p_442->g_88;
    int16_t *l_89 = &p_442->g_90;
    int32_t l_130[10] = {7L,7L,7L,7L,7L,7L,7L,7L,7L,7L};
    int8_t *l_131 = &p_442->g_132;
    int64_t * volatile * volatile *l_239 = &p_442->g_236;
    int i;
    (*p_442->g_235) = func_62((l_68 != (FAKE_DIVERGE(p_442->group_0_offset, get_group_id(0), 10) , (void*)0)), ((*l_131) = (safe_mul_func_uint16_t_u_u((((safe_sub_func_int32_t_s_s((p_61 |= p_442->g_23.s0), ((safe_div_func_int64_t_s_s((safe_unary_minus_func_uint64_t_u((p_442->g_comm_values[p_442->tid] <= p_60))), ((safe_mul_func_uint8_t_u_u(p_60, (((VECTOR(uint8_t, 16))(hadd(((VECTOR(uint8_t, 8))(0x68L, ((VECTOR(uint8_t, 4))(252UL, 247UL, 0x1CL, 9UL)), func_78(l_68, ((*l_87) |= ((safe_mod_func_int64_t_s_s((0x606D3C1DL <= l_86), p_60)) == p_60)), p_442->l_comm_values[(safe_mod_func_uint32_t_u_u(p_442->tid, 35))], l_89, l_86, p_442), 0xE1L, 250UL)).s4115773134356346, ((VECTOR(uint8_t, 16))(0x87L))))).s6 && 0x18L))) , l_86))) || l_130[5]))) > p_60) > p_60), p_60))), l_89, l_86, l_130[2], p_442);
    (*l_239) = p_442->g_236;
    return p_61;
}


/* ------------------------------------------ */
/* 
 * reads : p_442->g_134 p_442->g_111 p_442->g_90 p_442->g_comm_values p_442->g_218
 * writes: p_442->g_135 p_442->g_111 p_442->g_90 p_442->g_88
 */
int16_t ** func_62(uint32_t  p_63, int8_t  p_64, int16_t * p_65, int32_t  p_66, uint32_t  p_67, struct S0 * p_442)
{ /* block id: 31 */
    int32_t *l_133 = (void*)0;
    int32_t **l_148 = &l_133;
    VECTOR(uint64_t, 16) l_153 = (VECTOR(uint64_t, 16))(18446744073709551608UL, (VECTOR(uint64_t, 4))(18446744073709551608UL, (VECTOR(uint64_t, 2))(18446744073709551608UL, 0x52A06A2A823BF627L), 0x52A06A2A823BF627L), 0x52A06A2A823BF627L, 18446744073709551608UL, 0x52A06A2A823BF627L, (VECTOR(uint64_t, 2))(18446744073709551608UL, 0x52A06A2A823BF627L), (VECTOR(uint64_t, 2))(18446744073709551608UL, 0x52A06A2A823BF627L), 18446744073709551608UL, 0x52A06A2A823BF627L, 18446744073709551608UL, 0x52A06A2A823BF627L);
    uint64_t l_154 = 0x6E4515CB47B8E489L;
    int32_t *l_191 = (void*)0;
    int32_t ***l_214 = &l_148;
    int32_t l_220 = 1L;
    int32_t l_225 = 0x73F7CD45L;
    int32_t l_226 = (-7L);
    int32_t l_227 = 0x05B977ACL;
    int32_t l_228 = 0x230310DEL;
    int32_t l_229 = 0x484C5219L;
    int32_t l_230 = 0L;
    uint8_t l_232 = 0xD1L;
    int i;
    (*p_442->g_134) = l_133;
    for (p_442->g_111 = 0; (p_442->g_111 != 10); ++p_442->g_111)
    { /* block id: 35 */
        int32_t **l_147 = &p_442->g_135;
        int32_t ***l_146 = &l_147;
        l_154 ^= ((VECTOR(int32_t, 4))(((((safe_add_func_int64_t_s_s(p_66, (((safe_mod_func_int32_t_s_s(((((-1L) < p_442->g_113) & (p_442->g_23.sc || p_442->g_88)) ^ (safe_mul_func_int8_t_s_s((p_64 < (safe_mul_func_int16_t_s_s((p_442->g_comm_values[p_442->tid] != ((l_148 = ((*l_146) = (void*)0)) == (((safe_add_func_uint64_t_u_u(((safe_lshift_func_uint8_t_u_s((((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(clz(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(l_153.s4b)).yxyyxyxxxxyyyxxy)).s52))).yyyxyyxxxyyyyyxx)).se8)).lo , ((&p_442->g_99 == &p_442->g_99) , p_442->g_comm_values[p_442->tid])), p_66)) , p_66), 0x20E94A997FCA4635L)) , p_442->g_120.s5) , (void*)0))), 0xCD2DL))), FAKE_DIVERGE(p_442->local_0_offset, get_local_id(0), 10)))), p_63)) && p_66) , 18446744073709551614UL))) , p_442->g_111) , &p_442->g_100[1][1][4]) != &p_442->g_100[1][1][4]), ((VECTOR(int32_t, 2))(0x5295FBE9L)), (-6L))).w;
    }
    for (p_442->g_90 = (-2); (p_442->g_90 <= (-20)); p_442->g_90 = safe_sub_func_uint64_t_u_u(p_442->g_90, 8))
    { /* block id: 42 */
        VECTOR(int8_t, 2) l_174 = (VECTOR(int8_t, 2))(0x10L, 0x62L);
        int32_t l_180 = 0x23438911L;
        int32_t l_185 = 0x2C1AD123L;
        int32_t l_186[2];
        int16_t **l_187 = &p_442->g_100[1][1][4];
        VECTOR(int16_t, 16) l_195 = (VECTOR(int16_t, 16))(0x27D6L, (VECTOR(int16_t, 4))(0x27D6L, (VECTOR(int16_t, 2))(0x27D6L, 0x41F2L), 0x41F2L), 0x41F2L, 0x27D6L, 0x41F2L, (VECTOR(int16_t, 2))(0x27D6L, 0x41F2L), (VECTOR(int16_t, 2))(0x27D6L, 0x41F2L), 0x27D6L, 0x41F2L, 0x27D6L, 0x41F2L);
        int32_t ***l_212 = &l_148;
        int i;
        for (i = 0; i < 2; i++)
            l_186[i] = 0x2514E944L;
        for (p_66 = 0; (p_66 >= (-22)); --p_66)
        { /* block id: 45 */
            for (p_442->g_88 = 28; (p_442->g_88 > 10); --p_442->g_88)
            { /* block id: 48 */
                for (p_442->g_111 = 0; (p_442->g_111 <= 17); p_442->g_111 = safe_add_func_int32_t_s_s(p_442->g_111, 2))
                { /* block id: 51 */
                    if (p_64)
                        break;
                }
            }
        }
        for (p_442->g_111 = 0; (p_442->g_111 <= 45); p_442->g_111 = safe_add_func_uint64_t_u_u(p_442->g_111, 3))
        { /* block id: 58 */
            VECTOR(int32_t, 4) l_167 = (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, (-1L)), (-1L));
            int32_t *l_190 = (void*)0;
            int32_t ***l_213 = &l_148;
            int32_t *l_219 = (void*)0;
            int32_t *l_221 = (void*)0;
            int32_t *l_222 = &l_186[1];
            int32_t *l_223 = (void*)0;
            int32_t *l_224[10][8] = {{&l_185,(void*)0,(void*)0,&l_186[1],(void*)0,&l_186[0],&l_220,&l_180},{&l_185,(void*)0,(void*)0,&l_186[1],(void*)0,&l_186[0],&l_220,&l_180},{&l_185,(void*)0,(void*)0,&l_186[1],(void*)0,&l_186[0],&l_220,&l_180},{&l_185,(void*)0,(void*)0,&l_186[1],(void*)0,&l_186[0],&l_220,&l_180},{&l_185,(void*)0,(void*)0,&l_186[1],(void*)0,&l_186[0],&l_220,&l_180},{&l_185,(void*)0,(void*)0,&l_186[1],(void*)0,&l_186[0],&l_220,&l_180},{&l_185,(void*)0,(void*)0,&l_186[1],(void*)0,&l_186[0],&l_220,&l_180},{&l_185,(void*)0,(void*)0,&l_186[1],(void*)0,&l_186[0],&l_220,&l_180},{&l_185,(void*)0,(void*)0,&l_186[1],(void*)0,&l_186[0],&l_220,&l_180},{&l_185,(void*)0,(void*)0,&l_186[1],(void*)0,&l_186[0],&l_220,&l_180}};
            int16_t l_231 = 0x2023L;
            int i, j;
            for (p_66 = 0; (p_66 == 9); p_66 = safe_add_func_uint8_t_u_u(p_66, 2))
            { /* block id: 61 */
                int8_t *l_175[10] = {&p_442->g_132,&p_442->g_132,&p_442->g_132,&p_442->g_132,&p_442->g_132,&p_442->g_132,&p_442->g_132,&p_442->g_132,&p_442->g_132,&p_442->g_132};
                VECTOR(int32_t, 8) l_176 = (VECTOR(int32_t, 8))((-6L), (VECTOR(int32_t, 4))((-6L), (VECTOR(int32_t, 2))((-6L), 6L), 6L), 6L, (-6L), 6L);
                int32_t *l_177 = (void*)0;
                int32_t *l_178 = (void*)0;
                int32_t *l_179 = (void*)0;
                int i;
                l_186[1] |= ((VECTOR(int32_t, 8))(sub_sat(((VECTOR(int32_t, 4))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(l_167.yxxz)))), ((VECTOR(int32_t, 4))(clz(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 16))(max(((VECTOR(int32_t, 4))(rotate(((VECTOR(int32_t, 8))(0x48D9708BL, (safe_rshift_func_uint16_t_u_u(p_442->g_23.s7, 2)), (l_185 = (safe_div_func_int16_t_s_s((((l_167.y = p_63) > (l_180 = (safe_add_func_int32_t_s_s(((p_64 &= ((VECTOR(int8_t, 4))(l_174.yyxx)).x) <= p_442->g_90), ((VECTOR(int32_t, 8))(l_176.s71742256)).s6)))) == ((VECTOR(int8_t, 4))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 4),((VECTOR(int8_t, 4))(mul_hi(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 8),((VECTOR(int8_t, 16))((safe_lshift_func_uint16_t_u_s(p_63, ((p_63 , (safe_add_func_uint64_t_u_u(l_174.x, 0x0EDB9B34ADFA8AF1L))) > (((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(0x7A3C92833B97862BL, 18446744073709551615UL)), 0UL, 0x98E1D098C6651808L)).w , p_442->g_27.w)))), 0x7FL, p_442->g_122[0], 0x69L, ((VECTOR(int8_t, 4))(0x65L)), 0x4DL, ((VECTOR(int8_t, 4))(0x5BL)), (-2L), 6L, 0x2AL)).hi, ((VECTOR(int8_t, 8))(0x0DL)), ((VECTOR(int8_t, 8))(0x51L))))).s07)).yxxy, ((VECTOR(int8_t, 4))(0x5FL))))), ((VECTOR(int8_t, 4))(0x48L)), ((VECTOR(int8_t, 4))(1L))))).y), 1UL))), ((VECTOR(int32_t, 4))(0x7CBD7A91L)), 0x677F79E9L)).odd, ((VECTOR(int32_t, 4))(1L))))).wxzyxwwzzxzzyzwy, (int32_t)1L))).s8a, ((VECTOR(int32_t, 2))(0L)), ((VECTOR(int32_t, 2))(0x7779B4FEL))))).yyxxyxyy)))), 0x41BAD849L, 0x6FDF31C3L, ((VECTOR(int32_t, 4))(1L)), 0x6F432E68L, (-3L))).s28d7))), 0x74DF6C7FL, ((VECTOR(int32_t, 4))(1L)), ((VECTOR(int32_t, 2))(4L)), 2L)).lo)).s4000407743700430)).s4bfd, ((VECTOR(int32_t, 4))(0x1D08C604L)), ((VECTOR(int32_t, 4))((-6L)))))).ywxzwwxx, ((VECTOR(int32_t, 8))(0x62B96CBFL))))).s7;
                return l_187;
            }
            for (p_442->g_88 = (-5); (p_442->g_88 != 12); p_442->g_88 = safe_add_func_uint8_t_u_u(p_442->g_88, 4))
            { /* block id: 71 */
                uint16_t l_192 = 9UL;
                int32_t *l_196 = &l_180;
                int32_t **l_197 = &l_191;
                int64_t *l_211[3][10] = {{&p_442->g_122[6],&p_442->g_122[6],&p_442->g_122[6],&p_442->g_122[6],&p_442->g_122[6],&p_442->g_122[6],&p_442->g_122[6],&p_442->g_122[6],&p_442->g_122[6],&p_442->g_122[6]},{&p_442->g_122[6],&p_442->g_122[6],&p_442->g_122[6],&p_442->g_122[6],&p_442->g_122[6],&p_442->g_122[6],&p_442->g_122[6],&p_442->g_122[6],&p_442->g_122[6],&p_442->g_122[6]},{&p_442->g_122[6],&p_442->g_122[6],&p_442->g_122[6],&p_442->g_122[6],&p_442->g_122[6],&p_442->g_122[6],&p_442->g_122[6],&p_442->g_122[6],&p_442->g_122[6],&p_442->g_122[6]}};
                int32_t *l_217 = &l_180;
                int i, j;
                l_191 = l_190;
                l_167.y &= l_192;
                (*l_217) = ((safe_mod_func_int64_t_s_s(p_442->g_comm_values[p_442->tid], l_192)) ^ ((VECTOR(int16_t, 4))(max(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(l_195.s51f002bf4545e75f)).s00)).yyyy, (int16_t)((((l_196 = (void*)0) == ((*l_197) = l_190)) && (safe_mod_func_uint64_t_u_u((safe_mul_func_int8_t_s_s((safe_div_func_int32_t_s_s(((VECTOR(int32_t, 4))(p_442->g_204.s1523)).x, p_442->l_comm_values[(safe_mod_func_uint32_t_u_u(p_442->tid, 35))])), (safe_mul_func_int8_t_s_s((((safe_lshift_func_uint8_t_u_s((safe_rshift_func_int8_t_s_u(((l_195.s9 == ((((l_185 = p_63) , (l_212 == (p_442->g_215[3][1] = (l_214 = l_213)))) && 0xB3L) > (*p_65))) >= 0UL), p_442->g_27.z)), p_442->g_120.s6)) == p_66) > p_64), p_442->g_111)))), p_64))) , (*p_65))))).w);
            }
            (*p_442->g_218) = &l_185;
            l_232--;
        }
    }
    return &p_442->g_100[1][1][4];
}


/* ------------------------------------------ */
/* 
 * reads : p_442->g_90 p_442->g_99 p_442->g_113 p_442->g_120 p_442->g_88 p_442->g_122
 * writes: p_442->g_90 p_442->g_99 p_442->g_111 p_442->g_113 p_442->g_122
 */
uint8_t  func_78(int16_t ** p_79, uint64_t  p_80, uint16_t  p_81, int16_t * p_82, uint32_t  p_83, struct S0 * p_442)
{ /* block id: 13 */
    uint8_t *l_123 = (void*)0;
    uint64_t *l_127[6][2] = {{&p_442->g_88,(void*)0},{&p_442->g_88,(void*)0},{&p_442->g_88,(void*)0},{&p_442->g_88,(void*)0},{&p_442->g_88,(void*)0},{&p_442->g_88,(void*)0}};
    int32_t l_128 = 0x739EBEB9L;
    int64_t l_129 = 0x2DE520ED3B4235E9L;
    int i, j;
    for (p_442->g_90 = 0; (p_442->g_90 > 19); ++p_442->g_90)
    { /* block id: 16 */
        int16_t ***l_101 = &p_442->g_99;
        int16_t **l_103 = &p_442->g_100[1][1][4];
        int16_t ***l_102 = &l_103;
        int16_t **l_105 = &p_442->g_100[3][0][3];
        int16_t ***l_104 = &l_105;
        uint8_t *l_110 = &p_442->g_111;
        uint8_t *l_112 = &p_442->g_113;
        int64_t *l_121 = &p_442->g_122[0];
        int32_t l_124 = 0x3401CF63L;
        uint64_t *l_126[6][1][7] = {{{&p_442->g_88,&p_442->g_88,&p_442->g_88,&p_442->g_88,&p_442->g_88,&p_442->g_88,&p_442->g_88}},{{&p_442->g_88,&p_442->g_88,&p_442->g_88,&p_442->g_88,&p_442->g_88,&p_442->g_88,&p_442->g_88}},{{&p_442->g_88,&p_442->g_88,&p_442->g_88,&p_442->g_88,&p_442->g_88,&p_442->g_88,&p_442->g_88}},{{&p_442->g_88,&p_442->g_88,&p_442->g_88,&p_442->g_88,&p_442->g_88,&p_442->g_88,&p_442->g_88}},{{&p_442->g_88,&p_442->g_88,&p_442->g_88,&p_442->g_88,&p_442->g_88,&p_442->g_88,&p_442->g_88}},{{&p_442->g_88,&p_442->g_88,&p_442->g_88,&p_442->g_88,&p_442->g_88,&p_442->g_88,&p_442->g_88}}};
        uint64_t **l_125[5] = {&l_126[1][0][2],&l_126[1][0][2],&l_126[1][0][2],&l_126[1][0][2],&l_126[1][0][2]};
        int i, j, k;
        atomic_add(&p_442->g_atomic_reduction[get_linear_group_id()], ((safe_mod_func_int32_t_s_s((safe_rshift_func_uint8_t_u_u((p_81 & ((0x07BCL ^ ((l_127[4][1] = (((p_442->g_90 > ((VECTOR(uint8_t, 16))(mad_hi(((VECTOR(uint8_t, 4))(clz(((VECTOR(uint8_t, 16))(1UL, 0x29L, 0UL, 0UL, p_81, 253UL, 0x67L, 0x42L, ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 8))(sub_sat(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))((l_124 = ((safe_lshift_func_uint8_t_u_u((((*l_104) = ((*l_102) = ((*l_101) = p_442->g_99))) != (p_79 = &p_442->g_100[0][0][4])), (safe_sub_func_int8_t_s_s((safe_rshift_func_uint16_t_u_u((p_83 || ((((*l_110) = p_80) & ((*l_112)--)) , (((safe_rshift_func_uint8_t_u_u(GROUP_DIVERGE(2, 1), (((((*l_121) = (safe_add_func_int8_t_s_s(p_442->g_90, p_442->g_120.s0))) , l_123) == &p_442->g_113) > (*p_82)))) , p_80) , p_81))), 12)), l_124)))) < p_442->g_90)), ((VECTOR(uint8_t, 2))(0x71L)), 255UL)).even)).yxyxxyyy)).hi)), ((VECTOR(uint8_t, 4))(0x15L)))), ((VECTOR(uint8_t, 8))(248UL))))).odd)).zzzzwxzy)))).sd97a))).zzyzyxxzwxxyzwwx, ((VECTOR(uint8_t, 16))(0xA3L)), ((VECTOR(uint8_t, 16))(0x29L))))).s6) , 0x45L) , &p_442->g_88)) == &p_442->g_88)) < l_128)), 6)), GROUP_DIVERGE(0, 1))) , p_442->g_88) + get_linear_global_id());
        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        if (get_linear_local_id() == 0)
            p_442->v_collective += p_442->g_atomic_reduction[get_linear_group_id()];
        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        return l_129;
    }
    return p_442->g_122[0];
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global volatile int *g_atomic_reduction, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    __local int64_t l_comm_values[35];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 35; i++)
            l_comm_values[i] = 1;
    struct S0 c_443;
    struct S0* p_442 = &c_443;
    struct S0 c_444 = {
        (VECTOR(int16_t, 16))(0x01C7L, (VECTOR(int16_t, 4))(0x01C7L, (VECTOR(int16_t, 2))(0x01C7L, 3L), 3L), 3L, 0x01C7L, 3L, (VECTOR(int16_t, 2))(0x01C7L, 3L), (VECTOR(int16_t, 2))(0x01C7L, 3L), 0x01C7L, 3L, 0x01C7L, 3L), // p_442->g_23
        (VECTOR(uint32_t, 4))(0xC5F93BE4L, (VECTOR(uint32_t, 2))(0xC5F93BE4L, 4294967290UL), 4294967290UL), // p_442->g_27
        1L, // p_442->g_58
        0UL, // p_442->g_88
        0x64CCL, // p_442->g_90
        {{{&p_442->g_90,&p_442->g_90,&p_442->g_90,&p_442->g_90,&p_442->g_90,&p_442->g_90,&p_442->g_90},{&p_442->g_90,&p_442->g_90,&p_442->g_90,&p_442->g_90,&p_442->g_90,&p_442->g_90,&p_442->g_90}},{{&p_442->g_90,&p_442->g_90,&p_442->g_90,&p_442->g_90,&p_442->g_90,&p_442->g_90,&p_442->g_90},{&p_442->g_90,&p_442->g_90,&p_442->g_90,&p_442->g_90,&p_442->g_90,&p_442->g_90,&p_442->g_90}},{{&p_442->g_90,&p_442->g_90,&p_442->g_90,&p_442->g_90,&p_442->g_90,&p_442->g_90,&p_442->g_90},{&p_442->g_90,&p_442->g_90,&p_442->g_90,&p_442->g_90,&p_442->g_90,&p_442->g_90,&p_442->g_90}},{{&p_442->g_90,&p_442->g_90,&p_442->g_90,&p_442->g_90,&p_442->g_90,&p_442->g_90,&p_442->g_90},{&p_442->g_90,&p_442->g_90,&p_442->g_90,&p_442->g_90,&p_442->g_90,&p_442->g_90,&p_442->g_90}},{{&p_442->g_90,&p_442->g_90,&p_442->g_90,&p_442->g_90,&p_442->g_90,&p_442->g_90,&p_442->g_90},{&p_442->g_90,&p_442->g_90,&p_442->g_90,&p_442->g_90,&p_442->g_90,&p_442->g_90,&p_442->g_90}},{{&p_442->g_90,&p_442->g_90,&p_442->g_90,&p_442->g_90,&p_442->g_90,&p_442->g_90,&p_442->g_90},{&p_442->g_90,&p_442->g_90,&p_442->g_90,&p_442->g_90,&p_442->g_90,&p_442->g_90,&p_442->g_90}},{{&p_442->g_90,&p_442->g_90,&p_442->g_90,&p_442->g_90,&p_442->g_90,&p_442->g_90,&p_442->g_90},{&p_442->g_90,&p_442->g_90,&p_442->g_90,&p_442->g_90,&p_442->g_90,&p_442->g_90,&p_442->g_90}}}, // p_442->g_100
        &p_442->g_100[1][1][4], // p_442->g_99
        4UL, // p_442->g_111
        0x1BL, // p_442->g_113
        (VECTOR(int32_t, 8))(0x60324A0BL, (VECTOR(int32_t, 4))(0x60324A0BL, (VECTOR(int32_t, 2))(0x60324A0BL, 0x229A6A91L), 0x229A6A91L), 0x229A6A91L, 0x60324A0BL, 0x229A6A91L), // p_442->g_120
        {0x310918DDDCD3E82DL,0x38A40F947660C929L,0x310918DDDCD3E82DL,0x310918DDDCD3E82DL,0x38A40F947660C929L,0x310918DDDCD3E82DL,0x310918DDDCD3E82DL}, // p_442->g_122
        0x09L, // p_442->g_132
        (void*)0, // p_442->g_135
        &p_442->g_135, // p_442->g_134
        (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, (-5L)), (-5L)), (-5L), 0L, (-5L)), // p_442->g_204
        (void*)0, // p_442->g_216
        {{&p_442->g_216,&p_442->g_216},{&p_442->g_216,&p_442->g_216},{&p_442->g_216,&p_442->g_216},{&p_442->g_216,&p_442->g_216},{&p_442->g_216,&p_442->g_216},{&p_442->g_216,&p_442->g_216},{&p_442->g_216,&p_442->g_216}}, // p_442->g_215
        &p_442->g_135, // p_442->g_218
        &p_442->g_99, // p_442->g_235
        (void*)0, // p_442->g_237
        &p_442->g_237, // p_442->g_236
        {&p_442->g_236,&p_442->g_236}, // p_442->g_238
        (-1L), // p_442->g_241
        {(-1L),0x5DL,(-1L),(-1L),0x5DL,(-1L),(-1L)}, // p_442->g_251
        {{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}}, // p_442->g_253
        {{3L,3L,3L},{3L,3L,3L},{3L,3L,3L},{3L,3L,3L},{3L,3L,3L}}, // p_442->g_260
        18446744073709551607UL, // p_442->g_277
        {&p_442->g_277,&p_442->g_277,&p_442->g_277,&p_442->g_277,&p_442->g_277}, // p_442->g_276
        {{&p_442->g_276[4],&p_442->g_276[4],&p_442->g_276[4],&p_442->g_276[4],&p_442->g_276[4]},{&p_442->g_276[4],&p_442->g_276[4],&p_442->g_276[4],&p_442->g_276[4],&p_442->g_276[4]},{&p_442->g_276[4],&p_442->g_276[4],&p_442->g_276[4],&p_442->g_276[4],&p_442->g_276[4]}}, // p_442->g_275
        {{4294967287UL,3UL,3UL,4294967287UL,4294967287UL,3UL},{4294967287UL,3UL,3UL,4294967287UL,4294967287UL,3UL},{4294967287UL,3UL,3UL,4294967287UL,4294967287UL,3UL},{4294967287UL,3UL,3UL,4294967287UL,4294967287UL,3UL}}, // p_442->g_283
        &p_442->g_135, // p_442->g_292
        0x49A1L, // p_442->g_309
        0x42D5L, // p_442->g_333
        {{&p_442->g_122[0],&p_442->g_122[0],&p_442->g_122[0],&p_442->g_122[0],&p_442->g_122[0],&p_442->g_122[0],&p_442->g_122[0],&p_442->g_122[0]},{&p_442->g_122[0],&p_442->g_122[0],&p_442->g_122[0],&p_442->g_122[0],&p_442->g_122[0],&p_442->g_122[0],&p_442->g_122[0],&p_442->g_122[0]},{&p_442->g_122[0],&p_442->g_122[0],&p_442->g_122[0],&p_442->g_122[0],&p_442->g_122[0],&p_442->g_122[0],&p_442->g_122[0],&p_442->g_122[0]},{&p_442->g_122[0],&p_442->g_122[0],&p_442->g_122[0],&p_442->g_122[0],&p_442->g_122[0],&p_442->g_122[0],&p_442->g_122[0],&p_442->g_122[0]},{&p_442->g_122[0],&p_442->g_122[0],&p_442->g_122[0],&p_442->g_122[0],&p_442->g_122[0],&p_442->g_122[0],&p_442->g_122[0],&p_442->g_122[0]},{&p_442->g_122[0],&p_442->g_122[0],&p_442->g_122[0],&p_442->g_122[0],&p_442->g_122[0],&p_442->g_122[0],&p_442->g_122[0],&p_442->g_122[0]},{&p_442->g_122[0],&p_442->g_122[0],&p_442->g_122[0],&p_442->g_122[0],&p_442->g_122[0],&p_442->g_122[0],&p_442->g_122[0],&p_442->g_122[0]},{&p_442->g_122[0],&p_442->g_122[0],&p_442->g_122[0],&p_442->g_122[0],&p_442->g_122[0],&p_442->g_122[0],&p_442->g_122[0],&p_442->g_122[0]},{&p_442->g_122[0],&p_442->g_122[0],&p_442->g_122[0],&p_442->g_122[0],&p_442->g_122[0],&p_442->g_122[0],&p_442->g_122[0],&p_442->g_122[0]}}, // p_442->g_351
        {&p_442->g_351[3][4],&p_442->g_351[3][4]}, // p_442->g_350
        (void*)0, // p_442->g_355
        0x0CL, // p_442->g_361
        (VECTOR(int8_t, 4))((-6L), (VECTOR(int8_t, 2))((-6L), 0x04L), 0x04L), // p_442->g_387
        0x41A6D218L, // p_442->g_393
        4UL, // p_442->g_400
        {18446744073709551614UL,18446744073709551614UL,18446744073709551614UL,18446744073709551614UL}, // p_442->g_413
        {(void*)0,(void*)0,(void*)0,(void*)0}, // p_442->g_437
        &p_442->g_135, // p_442->g_440
        0, // p_442->v_collective
        sequence_input[get_global_id(0)], // p_442->global_0_offset
        sequence_input[get_global_id(1)], // p_442->global_1_offset
        sequence_input[get_global_id(2)], // p_442->global_2_offset
        sequence_input[get_local_id(0)], // p_442->local_0_offset
        sequence_input[get_local_id(1)], // p_442->local_1_offset
        sequence_input[get_local_id(2)], // p_442->local_2_offset
        sequence_input[get_group_id(0)], // p_442->group_0_offset
        sequence_input[get_group_id(1)], // p_442->group_1_offset
        sequence_input[get_group_id(2)], // p_442->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 35)), permutations[0][get_linear_local_id()])), // p_442->tid
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_443 = c_444;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_442);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_442->g_23.s0, "p_442->g_23.s0", print_hash_value);
    transparent_crc(p_442->g_23.s1, "p_442->g_23.s1", print_hash_value);
    transparent_crc(p_442->g_23.s2, "p_442->g_23.s2", print_hash_value);
    transparent_crc(p_442->g_23.s3, "p_442->g_23.s3", print_hash_value);
    transparent_crc(p_442->g_23.s4, "p_442->g_23.s4", print_hash_value);
    transparent_crc(p_442->g_23.s5, "p_442->g_23.s5", print_hash_value);
    transparent_crc(p_442->g_23.s6, "p_442->g_23.s6", print_hash_value);
    transparent_crc(p_442->g_23.s7, "p_442->g_23.s7", print_hash_value);
    transparent_crc(p_442->g_23.s8, "p_442->g_23.s8", print_hash_value);
    transparent_crc(p_442->g_23.s9, "p_442->g_23.s9", print_hash_value);
    transparent_crc(p_442->g_23.sa, "p_442->g_23.sa", print_hash_value);
    transparent_crc(p_442->g_23.sb, "p_442->g_23.sb", print_hash_value);
    transparent_crc(p_442->g_23.sc, "p_442->g_23.sc", print_hash_value);
    transparent_crc(p_442->g_23.sd, "p_442->g_23.sd", print_hash_value);
    transparent_crc(p_442->g_23.se, "p_442->g_23.se", print_hash_value);
    transparent_crc(p_442->g_23.sf, "p_442->g_23.sf", print_hash_value);
    transparent_crc(p_442->g_27.x, "p_442->g_27.x", print_hash_value);
    transparent_crc(p_442->g_27.y, "p_442->g_27.y", print_hash_value);
    transparent_crc(p_442->g_27.z, "p_442->g_27.z", print_hash_value);
    transparent_crc(p_442->g_27.w, "p_442->g_27.w", print_hash_value);
    transparent_crc(p_442->g_58, "p_442->g_58", print_hash_value);
    transparent_crc(p_442->g_88, "p_442->g_88", print_hash_value);
    transparent_crc(p_442->g_90, "p_442->g_90", print_hash_value);
    transparent_crc(p_442->g_111, "p_442->g_111", print_hash_value);
    transparent_crc(p_442->g_113, "p_442->g_113", print_hash_value);
    transparent_crc(p_442->g_120.s0, "p_442->g_120.s0", print_hash_value);
    transparent_crc(p_442->g_120.s1, "p_442->g_120.s1", print_hash_value);
    transparent_crc(p_442->g_120.s2, "p_442->g_120.s2", print_hash_value);
    transparent_crc(p_442->g_120.s3, "p_442->g_120.s3", print_hash_value);
    transparent_crc(p_442->g_120.s4, "p_442->g_120.s4", print_hash_value);
    transparent_crc(p_442->g_120.s5, "p_442->g_120.s5", print_hash_value);
    transparent_crc(p_442->g_120.s6, "p_442->g_120.s6", print_hash_value);
    transparent_crc(p_442->g_120.s7, "p_442->g_120.s7", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_442->g_122[i], "p_442->g_122[i]", print_hash_value);

    }
    transparent_crc(p_442->g_132, "p_442->g_132", print_hash_value);
    transparent_crc(p_442->g_204.s0, "p_442->g_204.s0", print_hash_value);
    transparent_crc(p_442->g_204.s1, "p_442->g_204.s1", print_hash_value);
    transparent_crc(p_442->g_204.s2, "p_442->g_204.s2", print_hash_value);
    transparent_crc(p_442->g_204.s3, "p_442->g_204.s3", print_hash_value);
    transparent_crc(p_442->g_204.s4, "p_442->g_204.s4", print_hash_value);
    transparent_crc(p_442->g_204.s5, "p_442->g_204.s5", print_hash_value);
    transparent_crc(p_442->g_204.s6, "p_442->g_204.s6", print_hash_value);
    transparent_crc(p_442->g_204.s7, "p_442->g_204.s7", print_hash_value);
    transparent_crc(p_442->g_241, "p_442->g_241", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_442->g_251[i], "p_442->g_251[i]", print_hash_value);

    }
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 3; j++)
        {
            transparent_crc(p_442->g_260[i][j], "p_442->g_260[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_442->g_277, "p_442->g_277", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 6; j++)
        {
            transparent_crc(p_442->g_283[i][j], "p_442->g_283[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_442->g_309, "p_442->g_309", print_hash_value);
    transparent_crc(p_442->g_333, "p_442->g_333", print_hash_value);
    transparent_crc(p_442->g_361, "p_442->g_361", print_hash_value);
    transparent_crc(p_442->g_387.x, "p_442->g_387.x", print_hash_value);
    transparent_crc(p_442->g_387.y, "p_442->g_387.y", print_hash_value);
    transparent_crc(p_442->g_387.z, "p_442->g_387.z", print_hash_value);
    transparent_crc(p_442->g_387.w, "p_442->g_387.w", print_hash_value);
    transparent_crc(p_442->g_393, "p_442->g_393", print_hash_value);
    transparent_crc(p_442->g_400, "p_442->g_400", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_442->g_413[i], "p_442->g_413[i]", print_hash_value);

    }
    transparent_crc(p_442->v_collective, "p_442->v_collective", print_hash_value);
    transparent_crc(p_442->l_comm_values[get_linear_local_id()], "p_442->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_442->g_comm_values[get_linear_group_id() * 35 + get_linear_local_id()], "p_442->g_comm_values[get_linear_group_id() * 35 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
