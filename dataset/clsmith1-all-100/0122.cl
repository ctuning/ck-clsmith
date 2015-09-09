// --atomics 54 ---atomic_reductions ---fake_divergence ---inter_thread_comm -g 84,74,1 -l 2,37,1
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

__constant uint32_t permutations[10][74] = {
{60,70,19,29,10,73,55,62,54,51,46,13,66,3,40,44,18,22,11,0,26,56,16,5,50,28,43,9,32,39,67,63,1,35,33,59,27,4,36,21,68,48,8,64,23,42,65,34,30,52,31,15,7,20,49,25,71,53,61,58,37,72,45,24,57,12,38,69,14,17,47,41,2,6}, // permutation 0
{61,45,37,4,10,40,43,5,11,30,63,26,13,3,59,52,50,68,53,35,65,12,49,60,28,55,18,22,17,46,42,66,15,29,9,54,19,38,0,48,51,20,64,7,32,8,14,34,21,47,44,70,41,2,16,62,1,36,33,31,6,72,67,58,39,25,69,73,23,27,56,71,57,24}, // permutation 1
{60,70,55,35,69,46,8,16,59,68,3,6,15,21,54,22,36,29,14,24,31,57,0,11,47,19,37,28,25,2,49,38,44,20,53,5,7,12,45,52,10,71,39,42,17,30,63,23,9,73,64,43,48,61,50,41,62,26,65,18,66,32,58,67,13,27,4,1,51,72,34,56,33,40}, // permutation 2
{64,16,65,42,15,54,20,17,60,22,18,38,62,6,25,31,11,68,21,4,10,34,67,9,39,45,24,56,55,48,41,57,3,36,40,52,51,2,71,8,50,61,7,63,30,12,5,33,35,26,19,69,58,1,70,32,46,73,43,23,29,37,44,53,14,28,72,47,49,0,59,66,13,27}, // permutation 3
{12,17,28,36,66,71,2,16,72,6,42,30,39,10,58,68,52,49,19,9,4,69,56,25,1,73,29,0,45,43,11,63,20,60,64,46,5,70,50,26,53,57,13,44,40,61,48,32,62,34,14,35,38,41,54,15,27,37,51,47,24,8,55,67,22,31,23,65,33,59,7,21,3,18}, // permutation 4
{67,0,11,35,53,23,52,58,25,13,72,56,47,37,62,4,6,54,15,41,61,65,30,5,27,2,68,39,40,45,18,55,19,16,57,29,34,26,33,64,59,48,8,60,1,24,36,28,12,21,3,51,70,42,32,46,71,49,17,66,50,9,10,22,73,14,7,69,38,20,31,43,44,63}, // permutation 5
{19,24,9,51,25,4,10,71,3,60,48,40,31,55,67,56,66,53,27,38,16,63,68,39,26,30,46,72,21,73,14,54,50,58,43,17,28,36,29,15,2,33,45,35,7,11,1,41,20,59,61,52,6,47,37,8,64,62,34,57,0,23,70,13,69,65,49,44,5,12,22,42,18,32}, // permutation 6
{53,10,31,24,51,54,8,4,30,5,11,71,72,3,45,22,52,13,60,56,59,47,66,64,68,73,55,35,50,27,19,42,29,58,23,70,49,0,36,41,7,1,16,57,6,43,9,61,32,63,48,44,67,46,69,12,62,21,18,65,34,26,15,40,17,28,33,20,37,25,38,2,14,39}, // permutation 7
{19,35,24,10,34,40,51,5,20,53,27,72,12,63,66,62,9,1,59,13,31,33,32,61,68,6,23,54,38,43,47,50,55,58,15,2,45,71,25,39,64,29,67,42,57,36,4,46,28,49,70,11,7,22,8,17,16,18,56,3,52,21,44,37,73,60,30,48,0,26,69,41,14,65}, // permutation 8
{57,55,43,29,20,50,28,68,10,59,41,32,51,13,44,49,7,60,63,46,6,3,4,22,31,64,16,33,73,37,0,62,8,52,42,36,66,15,26,70,45,19,1,58,65,53,12,39,34,69,27,71,5,17,18,24,56,11,30,35,72,21,38,48,2,67,54,61,25,23,40,14,47,9} // permutation 9
};

// Seed: 122

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    volatile int16_t g_4;
    volatile VECTOR(uint16_t, 16) g_24;
    int32_t g_63;
    volatile VECTOR(uint32_t, 2) g_65;
    int8_t g_74[3][2][4];
    int32_t g_77;
    int32_t *g_78;
    int32_t *g_81;
    int32_t * volatile *g_80;
    int32_t **g_86;
    int32_t *** volatile g_85;
    VECTOR(int16_t, 8) g_101;
    VECTOR(uint16_t, 2) g_122;
    volatile VECTOR(uint16_t, 8) g_123;
    VECTOR(uint16_t, 2) g_124;
    volatile VECTOR(uint16_t, 16) g_125;
    VECTOR(uint16_t, 8) g_127;
    uint32_t g_139;
    uint32_t g_149;
    int8_t g_152;
    uint8_t g_154[4][1];
    volatile uint32_t g_160;
    uint32_t g_177[10];
    VECTOR(uint32_t, 2) g_178;
    VECTOR(int8_t, 8) g_199;
    VECTOR(uint32_t, 16) g_252;
    VECTOR(uint32_t, 16) g_253;
    uint64_t g_260;
    uint8_t *g_358;
    VECTOR(uint64_t, 4) g_365;
    uint32_t ** volatile g_378;
    volatile uint16_t g_398;
    volatile uint16_t *g_397;
    volatile uint16_t **g_396;
    uint16_t *g_402;
    uint16_t **g_401;
    int32_t g_405[1];
    volatile uint8_t g_406;
    int64_t *g_476;
    VECTOR(uint8_t, 16) g_485;
    int32_t g_489[6][8];
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
int32_t  func_1(struct S0 * p_495);
uint8_t  func_7(int16_t  p_8, uint8_t  p_9, struct S0 * p_495);
uint8_t  func_13(int8_t  p_14, int32_t  p_15, struct S0 * p_495);
int8_t  func_18(uint64_t  p_19, int64_t  p_20, uint32_t  p_21, struct S0 * p_495);
int32_t  func_27(uint64_t  p_28, int32_t  p_29, int8_t  p_30, int32_t  p_31, struct S0 * p_495);
int8_t  func_41(uint32_t  p_42, uint64_t  p_43, uint8_t  p_44, int32_t  p_45, int16_t  p_46, struct S0 * p_495);
uint32_t  func_47(uint32_t  p_48, uint32_t  p_49, uint32_t  p_50, struct S0 * p_495);
uint32_t  func_51(uint8_t  p_52, uint32_t  p_53, uint64_t  p_54, int16_t  p_55, struct S0 * p_495);
uint8_t  func_56(int32_t  p_57, struct S0 * p_495);
int32_t  func_58(uint64_t  p_59, struct S0 * p_495);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_495->g_4 p_495->l_comm_values p_495->g_24 p_495->g_65 p_495->g_74 p_495->g_80 p_495->g_81 p_495->g_85 p_495->g_86 p_495->g_78 p_495->g_101 p_495->g_comm_values p_495->g_63 p_495->g_122 p_495->g_123 p_495->g_124 p_495->g_125 p_495->g_127 p_495->g_139 p_495->g_152 p_495->g_154 p_495->g_160 p_495->g_177 p_495->g_77 p_495->g_178 p_495->g_149 p_495->g_252 p_495->g_253 p_495->g_260 p_495->g_199 p_495->g_365 p_495->g_378 p_495->g_358 p_495->g_396 p_495->g_405 p_495->g_397 p_495->g_398 p_495->g_476 p_495->g_485 p_495->g_489
 * writes: p_495->g_4 p_495->g_63 p_495->g_74 p_495->g_77 p_495->g_78 p_495->g_86 p_495->g_139 p_495->g_comm_values p_495->g_149 p_495->g_152 p_495->g_154 p_495->g_160 p_495->g_81 p_495->g_101 p_495->g_177 p_495->g_178 p_495->g_127 p_495->g_260 p_495->g_358 p_495->g_401 p_495->g_405 p_495->g_406 p_495->g_476 p_495->g_485 p_495->g_489
 */
int32_t  func_1(struct S0 * p_495)
{ /* block id: 4 */
    int32_t l_2 = (-4L);
    VECTOR(int32_t, 4) l_3 = (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x014B733CL), 0x014B733CL);
    uint8_t *l_486 = (void*)0;
    uint8_t *l_487[8][9] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
    int32_t *l_488 = &p_495->g_489[4][3];
    int32_t *l_490 = &p_495->g_405[0];
    int32_t *l_491[3];
    uint32_t l_492 = 0x1A79D77FL;
    int i, j;
    for (i = 0; i < 3; i++)
        l_491[i] = &p_495->g_405[0];
    p_495->g_4 &= (l_2 , ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(l_3.zw)).yxxyxxxy)).s6);
    (*l_488) |= (safe_rshift_func_int16_t_s_u((func_7(l_2, l_3.x, p_495) & (p_495->g_485.s7 = (safe_sub_func_uint8_t_u_u(0x6EL, ((VECTOR(uint8_t, 2))(p_495->g_485.sd3)).even)))), 0));
    l_492++;
    return p_495->g_124.y;
}


/* ------------------------------------------ */
/* 
 * reads : p_495->l_comm_values p_495->g_24 p_495->g_65 p_495->g_74 p_495->g_80 p_495->g_81 p_495->g_85 p_495->g_86 p_495->g_78 p_495->g_101 p_495->g_comm_values p_495->g_63 p_495->g_122 p_495->g_123 p_495->g_124 p_495->g_125 p_495->g_4 p_495->g_127 p_495->g_139 p_495->g_152 p_495->g_154 p_495->g_160 p_495->g_177 p_495->g_77 p_495->g_178 p_495->g_149 p_495->g_252 p_495->g_253 p_495->g_260 p_495->g_199 p_495->g_365 p_495->g_378 p_495->g_358 p_495->g_396 p_495->g_405 p_495->g_397 p_495->g_398 p_495->g_476
 * writes: p_495->g_63 p_495->g_74 p_495->g_77 p_495->g_78 p_495->g_86 p_495->g_139 p_495->g_comm_values p_495->g_149 p_495->g_152 p_495->g_154 p_495->g_160 p_495->g_81 p_495->g_101 p_495->g_177 p_495->g_178 p_495->g_127 p_495->g_260 p_495->g_358 p_495->g_401 p_495->g_405 p_495->g_406 p_495->g_476
 */
uint8_t  func_7(int16_t  p_8, uint8_t  p_9, struct S0 * p_495)
{ /* block id: 6 */
    VECTOR(int32_t, 16) l_10 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x73468807L), 0x73468807L), 0x73468807L, (-1L), 0x73468807L, (VECTOR(int32_t, 2))((-1L), 0x73468807L), (VECTOR(int32_t, 2))((-1L), 0x73468807L), (-1L), 0x73468807L, (-1L), 0x73468807L);
    int32_t l_157 = (-1L);
    int32_t *l_408 = &p_495->g_405[0];
    uint8_t l_422 = 1UL;
    int8_t l_437 = 0x71L;
    VECTOR(uint16_t, 2) l_458 = (VECTOR(uint16_t, 2))(6UL, 0x230EL);
    int i;
    if (((VECTOR(int32_t, 4))(0x6D065768L, ((VECTOR(int32_t, 2))(mul_hi(((VECTOR(int32_t, 2))(0x7DAD5A51L, 0x01479B69L)), ((VECTOR(int32_t, 16))(l_10.s383cc47d1afd061a)).s65))), (-1L))).x)
    { /* block id: 7 */
        VECTOR(uint64_t, 4) l_34 = (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0x17C08A59C2D16CF0L), 0x17C08A59C2D16CF0L);
        int8_t l_104[10] = {0x38L,0x38L,0x38L,0x38L,0x38L,0x38L,0x38L,0x38L,0x38L,0x38L};
        uint64_t *l_272 = &p_495->g_260;
        int i;
        l_10.s0 = (safe_add_func_int8_t_s_s(l_10.sd, func_13(((safe_lshift_func_int8_t_s_u(((VECTOR(int8_t, 16))(mad_sat(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(mad_sat(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(0L, 0x1EL)).yxxxxxyx)).odd, ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(0x39L, (-1L), func_18(((p_9 , (GROUP_DIVERGE(2, 1) & p_495->l_comm_values[(safe_mod_func_uint32_t_u_u(p_495->tid, 74))])) | p_8), p_9, (safe_sub_func_int32_t_s_s(((((((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(p_495->g_24.s68)).xxyyxxyx)))).s3 || (safe_sub_func_int32_t_s_s(func_27(((safe_rshift_func_uint8_t_u_u((((VECTOR(uint64_t, 16))(abs_diff(((VECTOR(uint64_t, 16))(0xC712BAD479EA4087L, ((VECTOR(uint64_t, 4))(mad_sat(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(0x63ADE45A9172C2E8L, 0xA47B6C411E69D086L)), 5UL, 18446744073709551608UL, 0x7283A38C8A251ABEL, 0x9C29AEDA1E1CF2BBL, 9UL, 1UL)).even, ((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(abs(((VECTOR(uint64_t, 16))(l_34.ywxzzxyyzzyxxwwz)).se3))).xyyyyxxy)).s22)).xxyy, ((VECTOR(uint64_t, 16))(rotate(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 16))(safe_clamp_func(VECTOR(uint64_t, 16),uint64_t,((VECTOR(uint64_t, 16))(FAKE_DIVERGE(p_495->global_2_offset, get_global_id(2), 10), 18446744073709551612UL, (~(safe_mod_func_int32_t_s_s(0L, (safe_mod_func_uint32_t_u_u((safe_add_func_uint32_t_u_u((func_41(l_34.y, ((*l_272) = (func_47(func_51(func_56(func_58(p_495->g_24.s0, p_495), p_495), p_495->g_101.s4, l_104[7], l_10.s0, p_495), p_9, l_157, p_495) , FAKE_DIVERGE(p_495->local_1_offset, get_local_id(1), 10))), p_495->g_122.y, p_495->g_199.s1, l_104[4], p_495) , 0UL), 0xF82ABC91L)), p_495->g_124.x))))), 1UL, 0xCC8E3B56843FF962L, 0xB68904D907F4B088L, ((VECTOR(uint64_t, 2))(0x2391D8773489FC4EL)), 18446744073709551615UL, 0xB6B823CF101AF512L, 0x42BDE7F8942DD229L, 6UL, ((VECTOR(uint64_t, 4))(18446744073709551615UL)))), (uint64_t)p_495->g_123.s0, (uint64_t)p_495->g_252.sf))).odd)).s6705745013312401, ((VECTOR(uint64_t, 16))(0x9F6F33D91CE7705EL))))).s78ad))), 0x62D90D2D3D36E67FL, p_8, p_9, ((VECTOR(uint64_t, 4))(4UL)), p_495->g_127.s5, 0UL, 0UL, 0x98F1C0671A72BC70L)), ((VECTOR(uint64_t, 16))(18446744073709551609UL))))).sc , 0UL), FAKE_DIVERGE(p_495->local_2_offset, get_local_id(2), 10))) & l_34.x), l_10.s7, p_8, l_10.s0, p_495), 0xD81D62C3L))) , p_495->g_101.s7) , (-1L)) ^ l_10.sf), p_8)), p_495), ((VECTOR(int8_t, 4))(5L)), (-1L))).s13)).xyxy, ((VECTOR(int8_t, 4))(0L))))).yyxxywxx)).s1070124006572642, ((VECTOR(int8_t, 16))((-5L))), ((VECTOR(int8_t, 16))(7L))))).s4, 6)) , (-8L)), p_495->g_253.s5, p_495)));
    }
    else
    { /* block id: 208 */
        (*p_495->g_80) = l_408;
    }
    if ((~((*l_408) &= ((VECTOR(int32_t, 4))(0x083F53F9L, 0x32CCB250L, 9L, 7L)).y)))
    { /* block id: 212 */
        uint16_t l_436 = 0xFDB9L;
        int32_t l_439 = 0x397FD97CL;
        VECTOR(uint8_t, 2) l_452 = (VECTOR(uint8_t, 2))(0x23L, 0xEEL);
        VECTOR(uint32_t, 8) l_453 = (VECTOR(uint32_t, 8))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 0xD79DD359L), 0xD79DD359L), 0xD79DD359L, 0UL, 0xD79DD359L);
        int32_t l_471[7] = {0x592C981EL,0x592C981EL,0x592C981EL,0x592C981EL,0x592C981EL,0x592C981EL,0x592C981EL};
        int32_t *l_474[2][2] = {{&p_495->g_405[0],&p_495->g_405[0]},{&p_495->g_405[0],&p_495->g_405[0]}};
        int64_t *l_477 = (void*)0;
        int64_t **l_478 = (void*)0;
        int64_t **l_479 = &p_495->g_476;
        int i, j;
        for (p_495->g_77 = 0; (p_495->g_77 < 7); ++p_495->g_77)
        { /* block id: 215 */
            int32_t *l_411 = (void*)0;
            int32_t *l_412[10] = {&p_495->g_405[0],&p_495->g_405[0],&p_495->g_405[0],&p_495->g_405[0],&p_495->g_405[0],&p_495->g_405[0],&p_495->g_405[0],&p_495->g_405[0],&p_495->g_405[0],&p_495->g_405[0]};
            uint8_t l_413 = 1UL;
            uint32_t *l_438 = (void*)0;
            int16_t *l_467 = (void*)0;
            int16_t *l_468 = (void*)0;
            int16_t *l_469 = (void*)0;
            int16_t *l_470[4][1][4];
            int64_t *l_475 = (void*)0;
            int i, j, k;
            for (i = 0; i < 4; i++)
            {
                for (j = 0; j < 1; j++)
                {
                    for (k = 0; k < 4; k++)
                        l_470[i][j][k] = (void*)0;
                }
            }
            --l_413;
            (*l_408) = (safe_mod_func_int8_t_s_s((safe_div_func_uint32_t_u_u(((VECTOR(uint32_t, 8))(safe_mul24_func_uint32_t_u_u(VECTOR(uint32_t, 8),((VECTOR(uint32_t, 2))(0x95473A0AL, 0x0DDAB6FAL)).xxyyyxyx, ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(mul_hi(((VECTOR(uint32_t, 4))(0xE3CBB9D7L, 1UL, 0x18EAD459L, 0xF73D4317L)), ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 16))(4294967295UL, GROUP_DIVERGE(2, 1), ((*l_408) || ((safe_mod_func_uint8_t_u_u(((VECTOR(uint8_t, 2))(255UL, 255UL)).lo, (*p_495->g_358))) == l_422)), 0x9B58C386L, 0x6DD509FAL, 0x75B1017EL, 1UL, (safe_add_func_uint16_t_u_u(65528UL, ((((safe_div_func_uint64_t_u_u((((safe_mul_func_int16_t_s_s(p_9, ((safe_unary_minus_func_uint32_t_u((safe_div_func_int32_t_s_s((p_9 ^ ((safe_lshift_func_int8_t_s_u((safe_add_func_uint64_t_u_u((((p_8 > (+(*p_495->g_358))) <= p_495->g_63) >= p_8), p_495->g_260)), 7)) ^ 0x2FL)), l_436)))) , 9L))) || p_8) < 0xAB9AL), l_436)) , p_9) ^ (*l_408)) ^ p_9))), 5UL, p_8, 0xA0ECF0C1L, ((VECTOR(uint32_t, 2))(3UL)), 0x4FFD99FFL, 0x64F7A1F6L, 1UL)).s8bce))))).xxywyzzy)).odd)).xwzyyxyz))).s7, p_9)), p_8));
            l_10.s7 ^= ((l_439 = l_437) && (safe_mul_func_int8_t_s_s((safe_mul_func_uint16_t_u_u((**p_495->g_396), (p_8 = ((safe_add_func_uint32_t_u_u((safe_lshift_func_int16_t_s_s((safe_mul_func_int8_t_s_s((safe_rshift_func_uint8_t_u_s(((VECTOR(uint8_t, 16))(l_452.yyyyxyxxxyxyyyxy)).s4, 0)), (p_8 == (((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(mad_hi(((VECTOR(uint32_t, 8))(l_453.s22107366)).s40, ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(rotate(((VECTOR(uint32_t, 2))(1UL, 0xA1EDC15AL)).yyxx, ((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))((safe_mod_func_uint32_t_u_u((safe_sub_func_uint16_t_u_u(((VECTOR(uint16_t, 16))(l_458.yyxxyxxyyyxxyxyx)).sa, (((safe_mul_func_int8_t_s_s((safe_div_func_uint16_t_u_u(((safe_lshift_func_int8_t_s_u(p_495->g_154[3][0], ((p_495->g_74[1][0][0] ^ (safe_lshift_func_int16_t_s_s((l_471[6] = p_495->g_405[0]), 15))) > ((safe_sub_func_int64_t_s_s((((l_474[0][1] != (void*)0) , l_475) != p_495->g_476), p_9)) > p_495->g_178.x)))) >= p_495->g_365.z), p_8)), p_8)) ^ 0x1CBB3539DA6848B9L) >= (*l_408)))), p_495->g_74[2][1][3])), ((VECTOR(uint32_t, 4))(0UL)), 1UL, 0xBA0DE83FL, 4294967286UL)).s0712026536360344)).secf7))).yzwxyxxw)).s33, ((VECTOR(uint32_t, 2))(0x5EAF0BA9L))))), 0x39FEF1D3L, 0x26B3615CL)).z , 0x1001L)))), (*l_408))), (*l_408))) <= p_9)))), 0L)));
        }
        (*l_408) &= (((*l_479) = l_477) != (void*)0);
        (*p_495->g_80) = &l_471[6];
    }
    else
    { /* block id: 226 */
        return (*p_495->g_358);
    }
    for (l_437 = 0; (l_437 == 3); ++l_437)
    { /* block id: 231 */
        int8_t l_482[4];
        int i;
        for (i = 0; i < 4; i++)
            l_482[i] = 0L;
        (*l_408) &= l_482[3];
    }
    return (*p_495->g_358);
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint8_t  func_13(int8_t  p_14, int32_t  p_15, struct S0 * p_495)
{ /* block id: 205 */
    int64_t l_407 = (-1L);
    return l_407;
}


/* ------------------------------------------ */
/* 
 * reads : p_495->g_378 p_495->g_77 p_495->g_358 p_495->g_154 p_495->g_396 p_495->g_63 p_495->g_260 p_495->g_405 p_495->g_253
 * writes: p_495->g_154 p_495->g_401 p_495->g_63 p_495->g_405 p_495->g_406
 */
int8_t  func_18(uint64_t  p_19, int64_t  p_20, uint32_t  p_21, struct S0 * p_495)
{ /* block id: 198 */
    VECTOR(uint32_t, 16) l_381 = (VECTOR(uint32_t, 16))(0xBC221F69L, (VECTOR(uint32_t, 4))(0xBC221F69L, (VECTOR(uint32_t, 2))(0xBC221F69L, 0x88B05C5EL), 0x88B05C5EL), 0x88B05C5EL, 0xBC221F69L, 0x88B05C5EL, (VECTOR(uint32_t, 2))(0xBC221F69L, 0x88B05C5EL), (VECTOR(uint32_t, 2))(0xBC221F69L, 0x88B05C5EL), 0xBC221F69L, 0x88B05C5EL, 0xBC221F69L, 0x88B05C5EL);
    uint16_t *l_394 = (void*)0;
    VECTOR(uint64_t, 8) l_395 = (VECTOR(uint64_t, 8))(0x7A8836129E778932L, (VECTOR(uint64_t, 4))(0x7A8836129E778932L, (VECTOR(uint64_t, 2))(0x7A8836129E778932L, 18446744073709551610UL), 18446744073709551610UL), 18446744073709551610UL, 0x7A8836129E778932L, 18446744073709551610UL);
    uint16_t **l_400[2];
    uint16_t ***l_399[9][10] = {{&l_400[0],&l_400[1],&l_400[1],&l_400[1],&l_400[0],&l_400[0],&l_400[1],&l_400[1],&l_400[1],&l_400[0]},{&l_400[0],&l_400[1],&l_400[1],&l_400[1],&l_400[0],&l_400[0],&l_400[1],&l_400[1],&l_400[1],&l_400[0]},{&l_400[0],&l_400[1],&l_400[1],&l_400[1],&l_400[0],&l_400[0],&l_400[1],&l_400[1],&l_400[1],&l_400[0]},{&l_400[0],&l_400[1],&l_400[1],&l_400[1],&l_400[0],&l_400[0],&l_400[1],&l_400[1],&l_400[1],&l_400[0]},{&l_400[0],&l_400[1],&l_400[1],&l_400[1],&l_400[0],&l_400[0],&l_400[1],&l_400[1],&l_400[1],&l_400[0]},{&l_400[0],&l_400[1],&l_400[1],&l_400[1],&l_400[0],&l_400[0],&l_400[1],&l_400[1],&l_400[1],&l_400[0]},{&l_400[0],&l_400[1],&l_400[1],&l_400[1],&l_400[0],&l_400[0],&l_400[1],&l_400[1],&l_400[1],&l_400[0]},{&l_400[0],&l_400[1],&l_400[1],&l_400[1],&l_400[0],&l_400[0],&l_400[1],&l_400[1],&l_400[1],&l_400[0]},{&l_400[0],&l_400[1],&l_400[1],&l_400[1],&l_400[0],&l_400[0],&l_400[1],&l_400[1],&l_400[1],&l_400[0]}};
    int32_t *l_403 = &p_495->g_63;
    int32_t *l_404[4] = {&p_495->g_405[0],&p_495->g_405[0],&p_495->g_405[0],&p_495->g_405[0]};
    int i, j;
    for (i = 0; i < 2; i++)
        l_400[i] = &l_394;
    p_495->g_406 = ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(rotate(((VECTOR(int32_t, 2))(rhadd(((VECTOR(int32_t, 16))(1L, 0x0AAB1C3CL, 0x2DA926B8L, (p_495->g_405[0] &= (p_495->g_378 == (((safe_add_func_uint16_t_u_u((((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 16))(l_381.s7cfc8e2312e50f9d)))).s8 , p_21), (((p_495->g_77 <= (safe_div_func_uint8_t_u_u((0xE7L < (--(*p_495->g_358))), (safe_mul_func_int8_t_s_s((safe_sub_func_int16_t_s_s(((((safe_add_func_int32_t_s_s(((VECTOR(int32_t, 4))(((*l_403) ^= (safe_mul_func_int16_t_s_s(((((((void*)0 == l_394) || ((VECTOR(uint64_t, 4))(l_395.s3411)).w) < ((((VECTOR(uint8_t, 8))(255UL, 0xFEL, 249UL, 8UL, ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 2))(253UL, 0x22L)))), 8UL, 0xABL)).s6 || (p_495->g_396 == (p_495->g_401 = &l_394))) && (l_381.s3 & 0x0513L))) && 0x4173L) , p_19), 0UL))), p_21, 0x41142506L, 0L)).y, p_19)) && p_20) , l_403) != l_403), p_495->g_260)), (-6L)))))) , p_20) <= GROUP_DIVERGE(0, 1)))) < FAKE_DIVERGE(p_495->group_0_offset, get_group_id(0), 10)) , (void*)0))), ((VECTOR(int32_t, 4))((-5L))), ((VECTOR(int32_t, 2))(0x4349C25FL)), ((VECTOR(int32_t, 2))((-1L))), ((VECTOR(int32_t, 2))(0x78A7842FL)), 0x29504E1EL, (-1L))).s2e, ((VECTOR(int32_t, 2))((-1L)))))).yxxxyyxx, ((VECTOR(int32_t, 8))(1L))))).lo)).w;
    return p_495->g_253.sb;
}


/* ------------------------------------------ */
/* 
 * reads : p_495->g_86 p_495->g_78 p_495->g_80 p_495->g_63
 * writes: p_495->g_78 p_495->g_81 p_495->g_63
 */
int32_t  func_27(uint64_t  p_28, int32_t  p_29, int8_t  p_30, int32_t  p_31, struct S0 * p_495)
{ /* block id: 181 */
    for (p_30 = 0; (p_30 != 13); p_30++)
    { /* block id: 184 */
        (*p_495->g_86) = &p_29;
    }
    for (p_31 = (-15); (p_31 <= (-5)); p_31 = safe_add_func_int8_t_s_s(p_31, 4))
    { /* block id: 189 */
        (*p_495->g_80) = (*p_495->g_86);
        for (p_495->g_63 = 15; (p_495->g_63 >= (-2)); p_495->g_63--)
        { /* block id: 193 */
            (*p_495->g_86) = &p_29;
        }
    }
    return p_30;
}


/* ------------------------------------------ */
/* 
 * reads : p_495->g_86 p_495->g_78 p_495->g_365 p_495->g_260 p_495->g_comm_values p_495->g_252 p_495->g_154 p_495->g_123 p_495->g_63 p_495->g_152
 * writes: p_495->g_63 p_495->g_358 p_495->g_260
 */
int8_t  func_41(uint32_t  p_42, uint64_t  p_43, uint8_t  p_44, int32_t  p_45, int16_t  p_46, struct S0 * p_495)
{ /* block id: 118 */
    uint8_t *l_354[3];
    uint8_t **l_355 = (void*)0;
    uint8_t *l_357 = (void*)0;
    uint8_t **l_356[1];
    int32_t l_361[3][10][8] = {{{0x6EF6DFB5L,0L,0x001C5E73L,0x77971B1FL,(-2L),0x77971B1FL,0x001C5E73L,0L},{0x6EF6DFB5L,0L,0x001C5E73L,0x77971B1FL,(-2L),0x77971B1FL,0x001C5E73L,0L},{0x6EF6DFB5L,0L,0x001C5E73L,0x77971B1FL,(-2L),0x77971B1FL,0x001C5E73L,0L},{0x6EF6DFB5L,0L,0x001C5E73L,0x77971B1FL,(-2L),0x77971B1FL,0x001C5E73L,0L},{0x6EF6DFB5L,0L,0x001C5E73L,0x77971B1FL,(-2L),0x77971B1FL,0x001C5E73L,0L},{0x6EF6DFB5L,0L,0x001C5E73L,0x77971B1FL,(-2L),0x77971B1FL,0x001C5E73L,0L},{0x6EF6DFB5L,0L,0x001C5E73L,0x77971B1FL,(-2L),0x77971B1FL,0x001C5E73L,0L},{0x6EF6DFB5L,0L,0x001C5E73L,0x77971B1FL,(-2L),0x77971B1FL,0x001C5E73L,0L},{0x6EF6DFB5L,0L,0x001C5E73L,0x77971B1FL,(-2L),0x77971B1FL,0x001C5E73L,0L},{0x6EF6DFB5L,0L,0x001C5E73L,0x77971B1FL,(-2L),0x77971B1FL,0x001C5E73L,0L}},{{0x6EF6DFB5L,0L,0x001C5E73L,0x77971B1FL,(-2L),0x77971B1FL,0x001C5E73L,0L},{0x6EF6DFB5L,0L,0x001C5E73L,0x77971B1FL,(-2L),0x77971B1FL,0x001C5E73L,0L},{0x6EF6DFB5L,0L,0x001C5E73L,0x77971B1FL,(-2L),0x77971B1FL,0x001C5E73L,0L},{0x6EF6DFB5L,0L,0x001C5E73L,0x77971B1FL,(-2L),0x77971B1FL,0x001C5E73L,0L},{0x6EF6DFB5L,0L,0x001C5E73L,0x77971B1FL,(-2L),0x77971B1FL,0x001C5E73L,0L},{0x6EF6DFB5L,0L,0x001C5E73L,0x77971B1FL,(-2L),0x77971B1FL,0x001C5E73L,0L},{0x6EF6DFB5L,0L,0x001C5E73L,0x77971B1FL,(-2L),0x77971B1FL,0x001C5E73L,0L},{0x6EF6DFB5L,0L,0x001C5E73L,0x77971B1FL,(-2L),0x77971B1FL,0x001C5E73L,0L},{0x6EF6DFB5L,0L,0x001C5E73L,0x77971B1FL,(-2L),0x77971B1FL,0x001C5E73L,0L},{0x6EF6DFB5L,0L,0x001C5E73L,0x77971B1FL,(-2L),0x77971B1FL,0x001C5E73L,0L}},{{0x6EF6DFB5L,0L,0x001C5E73L,0x77971B1FL,(-2L),0x77971B1FL,0x001C5E73L,0L},{0x6EF6DFB5L,0L,0x001C5E73L,0x77971B1FL,(-2L),0x77971B1FL,0x001C5E73L,0L},{0x6EF6DFB5L,0L,0x001C5E73L,0x77971B1FL,(-2L),0x77971B1FL,0x001C5E73L,0L},{0x6EF6DFB5L,0L,0x001C5E73L,0x77971B1FL,(-2L),0x77971B1FL,0x001C5E73L,0L},{0x6EF6DFB5L,0L,0x001C5E73L,0x77971B1FL,(-2L),0x77971B1FL,0x001C5E73L,0L},{0x6EF6DFB5L,0L,0x001C5E73L,0x77971B1FL,(-2L),0x77971B1FL,0x001C5E73L,0L},{0x6EF6DFB5L,0L,0x001C5E73L,0x77971B1FL,(-2L),0x77971B1FL,0x001C5E73L,0L},{0x6EF6DFB5L,0L,0x001C5E73L,0x77971B1FL,(-2L),0x77971B1FL,0x001C5E73L,0L},{0x6EF6DFB5L,0L,0x001C5E73L,0x77971B1FL,(-2L),0x77971B1FL,0x001C5E73L,0L},{0x6EF6DFB5L,0L,0x001C5E73L,0x77971B1FL,(-2L),0x77971B1FL,0x001C5E73L,0L}}};
    int32_t l_364 = 0x5196C692L;
    uint64_t *l_366 = &p_495->g_260;
    VECTOR(uint32_t, 4) l_369 = (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 5UL), 5UL);
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_354[i] = (void*)0;
    for (i = 0; i < 1; i++)
        l_356[i] = &l_357;
    (**p_495->g_86) = (-8L);
    if ((atomic_inc(&p_495->l_atomic_input[46]) == 4))
    { /* block id: 121 */
        uint64_t l_273 = 0UL;
        VECTOR(int64_t, 2) l_276 = (VECTOR(int64_t, 2))(1L, 1L);
        VECTOR(int16_t, 8) l_277 = (VECTOR(int16_t, 8))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x4DE4L), 0x4DE4L), 0x4DE4L, 1L, 0x4DE4L);
        uint64_t l_278[6][1][8] = {{{9UL,6UL,0x2773BEED81015B2BL,6UL,9UL,9UL,6UL,0x2773BEED81015B2BL}},{{9UL,6UL,0x2773BEED81015B2BL,6UL,9UL,9UL,6UL,0x2773BEED81015B2BL}},{{9UL,6UL,0x2773BEED81015B2BL,6UL,9UL,9UL,6UL,0x2773BEED81015B2BL}},{{9UL,6UL,0x2773BEED81015B2BL,6UL,9UL,9UL,6UL,0x2773BEED81015B2BL}},{{9UL,6UL,0x2773BEED81015B2BL,6UL,9UL,9UL,6UL,0x2773BEED81015B2BL}},{{9UL,6UL,0x2773BEED81015B2BL,6UL,9UL,9UL,6UL,0x2773BEED81015B2BL}}};
        VECTOR(int32_t, 2) l_279 = (VECTOR(int32_t, 2))(0x1F6BFAA2L, 0x44A2E45BL);
        int16_t l_280 = 0x5BAFL;
        int i, j, k;
        ++l_273;
        l_278[1][0][5] = (((VECTOR(int64_t, 2))(l_276.xx)).hi , (((VECTOR(int16_t, 8))(l_277.s34073624)).s4 , (-9L)));
        l_280 &= ((VECTOR(int32_t, 16))(rhadd(((VECTOR(int32_t, 4))(l_279.xxxx)).zwyyxxywwyxyxzyx, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(0L, 0x523C713AL, 9L, 0x049AD811L)).zyzywzxy)).s2712011260405316))).s5;
        unsigned int result = 0;
        result += l_273;
        result += l_276.y;
        result += l_276.x;
        result += l_277.s7;
        result += l_277.s6;
        result += l_277.s5;
        result += l_277.s4;
        result += l_277.s3;
        result += l_277.s2;
        result += l_277.s1;
        result += l_277.s0;
        int l_278_i0, l_278_i1, l_278_i2;
        for (l_278_i0 = 0; l_278_i0 < 6; l_278_i0++) {
            for (l_278_i1 = 0; l_278_i1 < 1; l_278_i1++) {
                for (l_278_i2 = 0; l_278_i2 < 8; l_278_i2++) {
                    result += l_278[l_278_i0][l_278_i1][l_278_i2];
                }
            }
        }
        result += l_279.y;
        result += l_279.x;
        result += l_280;
        atomic_add(&p_495->l_special_values[46], result);
    }
    else
    { /* block id: 125 */
        (1 + 1);
    }
    if ((atomic_inc(&p_495->l_atomic_input[48]) == 0))
    { /* block id: 129 */
        int64_t l_281 = 0x3F7F697AC61EB78EL;
        VECTOR(int32_t, 2) l_282 = (VECTOR(int32_t, 2))(0x611CBF97L, (-1L));
        VECTOR(int32_t, 8) l_283 = (VECTOR(int32_t, 8))(0x03773507L, (VECTOR(int32_t, 4))(0x03773507L, (VECTOR(int32_t, 2))(0x03773507L, 9L), 9L), 9L, 0x03773507L, 9L);
        int i;
        if ((l_281 , ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(0x6B19EFFCL, 9L)), ((VECTOR(int32_t, 4))(rhadd(((VECTOR(int32_t, 4))(l_282.yyyx)), ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(l_283.s6234)).xwxxyzwywwzxzwzy)))).sd31e))))), 0L, 0x496E039DL)).s0))
        { /* block id: 130 */
            int32_t *l_284 = (void*)0;
            int32_t l_286 = (-1L);
            int32_t *l_285 = &l_286;
            int32_t *l_287[6][8][5] = {{{&l_286,&l_286,&l_286,&l_286,&l_286},{&l_286,&l_286,&l_286,&l_286,&l_286},{&l_286,&l_286,&l_286,&l_286,&l_286},{&l_286,&l_286,&l_286,&l_286,&l_286},{&l_286,&l_286,&l_286,&l_286,&l_286},{&l_286,&l_286,&l_286,&l_286,&l_286},{&l_286,&l_286,&l_286,&l_286,&l_286},{&l_286,&l_286,&l_286,&l_286,&l_286}},{{&l_286,&l_286,&l_286,&l_286,&l_286},{&l_286,&l_286,&l_286,&l_286,&l_286},{&l_286,&l_286,&l_286,&l_286,&l_286},{&l_286,&l_286,&l_286,&l_286,&l_286},{&l_286,&l_286,&l_286,&l_286,&l_286},{&l_286,&l_286,&l_286,&l_286,&l_286},{&l_286,&l_286,&l_286,&l_286,&l_286},{&l_286,&l_286,&l_286,&l_286,&l_286}},{{&l_286,&l_286,&l_286,&l_286,&l_286},{&l_286,&l_286,&l_286,&l_286,&l_286},{&l_286,&l_286,&l_286,&l_286,&l_286},{&l_286,&l_286,&l_286,&l_286,&l_286},{&l_286,&l_286,&l_286,&l_286,&l_286},{&l_286,&l_286,&l_286,&l_286,&l_286},{&l_286,&l_286,&l_286,&l_286,&l_286},{&l_286,&l_286,&l_286,&l_286,&l_286}},{{&l_286,&l_286,&l_286,&l_286,&l_286},{&l_286,&l_286,&l_286,&l_286,&l_286},{&l_286,&l_286,&l_286,&l_286,&l_286},{&l_286,&l_286,&l_286,&l_286,&l_286},{&l_286,&l_286,&l_286,&l_286,&l_286},{&l_286,&l_286,&l_286,&l_286,&l_286},{&l_286,&l_286,&l_286,&l_286,&l_286},{&l_286,&l_286,&l_286,&l_286,&l_286}},{{&l_286,&l_286,&l_286,&l_286,&l_286},{&l_286,&l_286,&l_286,&l_286,&l_286},{&l_286,&l_286,&l_286,&l_286,&l_286},{&l_286,&l_286,&l_286,&l_286,&l_286},{&l_286,&l_286,&l_286,&l_286,&l_286},{&l_286,&l_286,&l_286,&l_286,&l_286},{&l_286,&l_286,&l_286,&l_286,&l_286},{&l_286,&l_286,&l_286,&l_286,&l_286}},{{&l_286,&l_286,&l_286,&l_286,&l_286},{&l_286,&l_286,&l_286,&l_286,&l_286},{&l_286,&l_286,&l_286,&l_286,&l_286},{&l_286,&l_286,&l_286,&l_286,&l_286},{&l_286,&l_286,&l_286,&l_286,&l_286},{&l_286,&l_286,&l_286,&l_286,&l_286},{&l_286,&l_286,&l_286,&l_286,&l_286},{&l_286,&l_286,&l_286,&l_286,&l_286}}};
            int32_t *l_288[5][1] = {{&l_286},{&l_286},{&l_286},{&l_286},{&l_286}};
            int32_t l_289 = 0x6593E916L;
            int i, j, k;
            l_285 = l_284;
            l_288[1][0] = l_287[2][4][2];
            if (l_289)
            { /* block id: 133 */
                uint32_t l_290 = 0xBCA9E537L;
                l_290 = 0x6B0B1ACBL;
            }
            else
            { /* block id: 135 */
                int16_t l_291 = 1L;
                uint32_t l_292 = 0x3A0CFA0CL;
                l_292 = l_291;
            }
        }
        else
        { /* block id: 138 */
            int16_t l_293 = 0x098CL;
            uint64_t l_294 = 0x27E9D785869A014FL;
            int8_t l_295 = 0x7BL;
            int32_t l_296 = 0x3A2B4AFAL;
            uint32_t l_349[8] = {0xDDCC9D1FL,0xDDCC9D1FL,0xDDCC9D1FL,0xDDCC9D1FL,0xDDCC9D1FL,0xDDCC9D1FL,0xDDCC9D1FL,0xDDCC9D1FL};
            int i;
            l_294 &= (l_282.x ^= l_293);
            if ((l_296 = l_295))
            { /* block id: 142 */
                int32_t *l_297[5][1];
                int32_t l_299 = 0x4539A553L;
                int32_t *l_298[10];
                int32_t *l_300 = &l_299;
                int i, j;
                for (i = 0; i < 5; i++)
                {
                    for (j = 0; j < 1; j++)
                        l_297[i][j] = (void*)0;
                }
                for (i = 0; i < 10; i++)
                    l_298[i] = &l_299;
                l_300 = (l_298[1] = l_297[0][0]);
            }
            else
            { /* block id: 145 */
                int16_t l_301 = 6L;
                int16_t l_302 = 0x6667L;
                int32_t l_303 = 7L;
                int32_t l_304 = 6L;
                int64_t l_305 = 0x1262CF15C36A2068L;
                uint16_t l_306 = 0x270DL;
                int16_t l_307[3][9][1] = {{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}},{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}},{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}}};
                int32_t *l_346 = (void*)0;
                int32_t l_348 = (-3L);
                int32_t *l_347 = &l_348;
                int i, j, k;
                l_305 &= (l_301 , (l_304 = (l_303 = l_302)));
                l_283.s6 &= l_306;
                if ((GROUP_DIVERGE(1, 1) , l_307[0][0][0]))
                { /* block id: 150 */
                    int32_t l_308[4];
                    int32_t l_309[4][6] = {{0x20A8497BL,0x1FBF22F4L,(-1L),0L,0x1FBF22F4L,0L},{0x20A8497BL,0x1FBF22F4L,(-1L),0L,0x1FBF22F4L,0L},{0x20A8497BL,0x1FBF22F4L,(-1L),0L,0x1FBF22F4L,0L},{0x20A8497BL,0x1FBF22F4L,(-1L),0L,0x1FBF22F4L,0L}};
                    int16_t l_310 = (-1L);
                    VECTOR(uint64_t, 4) l_311 = (VECTOR(uint64_t, 4))(0x7706C75F7A7125EDL, (VECTOR(uint64_t, 2))(0x7706C75F7A7125EDL, 0xD58CF7BA0BE485B3L), 0xD58CF7BA0BE485B3L);
                    VECTOR(uint64_t, 4) l_312 = (VECTOR(uint64_t, 4))(0xC9D6C6E5D27EA404L, (VECTOR(uint64_t, 2))(0xC9D6C6E5D27EA404L, 0x562EF163EFBA4DB7L), 0x562EF163EFBA4DB7L);
                    VECTOR(uint64_t, 4) l_313 = (VECTOR(uint64_t, 4))(9UL, (VECTOR(uint64_t, 2))(9UL, 1UL), 1UL);
                    VECTOR(uint64_t, 16) l_314 = (VECTOR(uint64_t, 16))(18446744073709551615UL, (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 7UL), 7UL), 7UL, 18446744073709551615UL, 7UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 7UL), (VECTOR(uint64_t, 2))(18446744073709551615UL, 7UL), 18446744073709551615UL, 7UL, 18446744073709551615UL, 7UL);
                    VECTOR(uint64_t, 2) l_315 = (VECTOR(uint64_t, 2))(0xBAF55E6D8CFDACA2L, 0x45715C263F2155C7L);
                    VECTOR(uint64_t, 2) l_316 = (VECTOR(uint64_t, 2))(18446744073709551613UL, 0xF09360FBD2BF5B2DL);
                    int32_t l_317 = (-5L);
                    uint8_t l_318 = 0x4DL;
                    VECTOR(uint64_t, 8) l_319 = (VECTOR(uint64_t, 8))(0xD41C9934A37A2098L, (VECTOR(uint64_t, 4))(0xD41C9934A37A2098L, (VECTOR(uint64_t, 2))(0xD41C9934A37A2098L, 0x1BAC67C9084D83E6L), 0x1BAC67C9084D83E6L), 0x1BAC67C9084D83E6L, 0xD41C9934A37A2098L, 0x1BAC67C9084D83E6L);
                    VECTOR(uint64_t, 4) l_320 = (VECTOR(uint64_t, 4))(0xE477E6F25DCC32BCL, (VECTOR(uint64_t, 2))(0xE477E6F25DCC32BCL, 7UL), 7UL);
                    uint64_t l_321 = 18446744073709551612UL;
                    uint32_t l_322 = 4294967288UL;
                    VECTOR(uint64_t, 2) l_323 = (VECTOR(uint64_t, 2))(0x3D5AC0A195B390D3L, 0UL);
                    VECTOR(uint64_t, 8) l_324 = (VECTOR(uint64_t, 8))(0xC5AFDBD778E73A4FL, (VECTOR(uint64_t, 4))(0xC5AFDBD778E73A4FL, (VECTOR(uint64_t, 2))(0xC5AFDBD778E73A4FL, 18446744073709551607UL), 18446744073709551607UL), 18446744073709551607UL, 0xC5AFDBD778E73A4FL, 18446744073709551607UL);
                    int32_t l_325 = 0x4B837798L;
                    VECTOR(uint64_t, 8) l_326 = (VECTOR(uint64_t, 8))(0x4E99E3B8823D4417L, (VECTOR(uint64_t, 4))(0x4E99E3B8823D4417L, (VECTOR(uint64_t, 2))(0x4E99E3B8823D4417L, 0x1F93E2F61A40780AL), 0x1F93E2F61A40780AL), 0x1F93E2F61A40780AL, 0x4E99E3B8823D4417L, 0x1F93E2F61A40780AL);
                    uint32_t l_327 = 0x23C691C4L;
                    uint32_t l_328 = 0x349288DCL;
                    int32_t l_329 = 0x1231886FL;
                    uint32_t l_330 = 0x529CC8C2L;
                    uint32_t l_331 = 4294967290UL;
                    uint8_t *l_333 = &l_318;
                    uint8_t **l_332 = &l_333;
                    uint8_t **l_334 = &l_333;
                    VECTOR(int32_t, 8) l_335 = (VECTOR(int32_t, 8))((-9L), (VECTOR(int32_t, 4))((-9L), (VECTOR(int32_t, 2))((-9L), 0x031EDEBAL), 0x031EDEBAL), 0x031EDEBAL, (-9L), 0x031EDEBAL);
                    uint32_t l_336 = 8UL;
                    int i, j;
                    for (i = 0; i < 4; i++)
                        l_308[i] = 0L;
                    l_310 = (l_309[2][0] = l_308[3]);
                    l_334 = (((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(0UL, 0xC13B67A6B4E15A36L)), ((VECTOR(uint64_t, 2))(mad_hi(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 16))(l_311.zwywwzyzyzxywyyz)).sf2)), ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 16))(sub_sat(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 16))(l_312.xzwzzwwwxwwwwxxw)).odd)).s1166325134715771, ((VECTOR(uint64_t, 16))(mad_hi(((VECTOR(uint64_t, 8))(0x3796F63ACA23B12CL, ((VECTOR(uint64_t, 4))(0xB55BE655786D4CB8L, ((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(l_313.xyzx)), ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(0UL, 0xBF0F9607C9C3BC84L)), 18446744073709551612UL, 18446744073709551615UL)))).odd)), ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 4))(l_314.s3ea8)))))).s33)), 0xD28A6E83F28C3C1AL)), ((VECTOR(uint64_t, 2))(1UL, 0xED059261936C932CL)), 0x59ED45C23DEE4B08L)).s2417352245717662, ((VECTOR(uint64_t, 2))(clz(((VECTOR(uint64_t, 4))(l_315.xxyy)).hi))).yyxyyxyxyxxxyxxx, ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))(mad_sat(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 8))(0x72A5828DF365013CL, 0UL, ((VECTOR(uint64_t, 4))(hadd(((VECTOR(uint64_t, 2))(0x29A4946745A519EFL, 8UL)).xxxx, ((VECTOR(uint64_t, 8))(min(((VECTOR(uint64_t, 8))(l_316.xyyxyyyy)), (uint64_t)l_317))).even))).w, 0x5C5AB65DB106207EL, ((VECTOR(uint64_t, 2))(0x421E2236AA9CF4BEL, 0xCA48ADCD1A5CA313L)), 0xAB370156E42DADD9L, 0UL)).s41)).xxxxxxyx, ((VECTOR(uint64_t, 4))(l_318, ((VECTOR(uint64_t, 8))(0UL, ((VECTOR(uint64_t, 2))(add_sat(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(mul_hi(((VECTOR(uint64_t, 16))(l_319.s6303776410034153)).s67f6, ((VECTOR(uint64_t, 16))(0x8029260F8D8FAEBDL, (GROUP_DIVERGE(2, 1) , 0x360A3791266A05A9L), ((VECTOR(uint64_t, 2))(rhadd(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(l_320.xw)).yyxyyxxy)).s30, ((VECTOR(uint64_t, 16))(18446744073709551611UL, ((l_322 ^= l_321) , 0UL), 0xAD60F1835D3D4605L, ((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 8))(mad_sat(((VECTOR(uint64_t, 16))(2UL, 0UL, 0x3F2FACD075D00FB1L, ((VECTOR(uint64_t, 2))(l_323.xx)), ((VECTOR(uint64_t, 2))(l_324.s42)), 1UL, l_325, ((VECTOR(uint64_t, 4))(l_326.s0740)), l_327, 0xC3CB3B4597DB14E4L, 0xA223F371B4ADB113L)).lo, ((VECTOR(uint64_t, 2))(0xB938308A2CE61AF8L, 1UL)).xyyxxyxx, ((VECTOR(uint64_t, 8))(0x744C2159E1C9F853L, ((VECTOR(uint64_t, 2))(18446744073709551615UL, 1UL)), 0x792CEEDB600DA550L, l_328, l_329, 0x98E3EB7B2D5373DBL, 0xDC7371E66309EC39L))))).s44)), 0x7A07A2310DF42E3AL, 0x471E4B83D750BC53L, ((VECTOR(uint64_t, 8))(0x348D29ACC7DFC97EL)), 0x96FC550BE4A081BCL)).se8))), 0x2E99EA02A07A7B42L, 1UL, ((VECTOR(uint64_t, 2))(0UL)), 18446744073709551607UL, 0xB0DAB34724CC38D6L, l_330, ((VECTOR(uint64_t, 2))(0x7EA61720AAA3C670L)), ((VECTOR(uint64_t, 2))(18446744073709551612UL)), 0UL)).s8f15))).z, 1UL, 4UL, 0UL, 7UL, 0x85E873ECC432D9B5L, 18446744073709551607UL, 0x08310E77FDF4EE6EL)).s65, ((VECTOR(uint64_t, 2))(4UL))))), 0xB36B28D34F5B111EL, ((VECTOR(uint64_t, 4))(0x6F16D85A1D1B10EDL)))).s4, 0x894548E907C6F90BL, 0x9195E1FE765B9DE5L)).wyxyywwy, ((VECTOR(uint64_t, 8))(0xE3D480ECD03867C6L))))).s7246543767473466)))))))))).s87, ((VECTOR(uint64_t, 2))(18446744073709551615UL))))), ((VECTOR(uint64_t, 2))(0xD3DF3510C8457E02L)), 6UL, 0UL, 0x284796CDE82CD16FL, l_331, 18446744073709551615UL, ((VECTOR(uint64_t, 2))(1UL)), ((VECTOR(uint64_t, 2))(18446744073709551608UL)), 7UL)).s0 , l_332);
                    l_283.s4 &= ((VECTOR(int32_t, 2))(l_335.s67)).lo;
                    l_282.y ^= (l_336 , (l_335.s3 &= (l_308[3] = 0x0D9E5B19L)));
                }
                else
                { /* block id: 159 */
                    uint32_t l_337 = 0xABF7D19AL;
                    int32_t *l_340 = (void*)0;
                    int32_t l_342 = 0L;
                    int32_t *l_341 = &l_342;
                    uint16_t l_343 = 0x215CL;
                    int32_t l_344 = 1L;
                    uint16_t l_345 = 0UL;
                    if (l_337)
                    { /* block id: 160 */
                        l_283.s6 &= 0L;
                    }
                    else
                    { /* block id: 162 */
                        uint16_t l_338 = 0x7806L;
                        uint64_t l_339 = 18446744073709551615UL;
                        l_339 = l_338;
                    }
                    l_341 = l_340;
                    l_282.y &= l_343;
                    l_345 = l_344;
                }
                l_347 = l_346;
            }
            --l_349[5];
        }
        unsigned int result = 0;
        result += l_281;
        result += l_282.y;
        result += l_282.x;
        result += l_283.s7;
        result += l_283.s6;
        result += l_283.s5;
        result += l_283.s4;
        result += l_283.s3;
        result += l_283.s2;
        result += l_283.s1;
        result += l_283.s0;
        atomic_add(&p_495->l_special_values[48], result);
    }
    else
    { /* block id: 173 */
        (1 + 1);
    }
    (**p_495->g_86) |= (safe_mod_func_int32_t_s_s(((((p_495->g_358 = (l_354[0] = &p_495->g_154[0][0])) == ((safe_div_func_uint64_t_u_u(l_361[0][4][6], (((safe_div_func_uint32_t_u_u(p_43, l_364)) && ((*l_366) |= ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(p_495->g_365.wy)), 0xAC12BE62CBD8DC3DL, 0x63C25B9C23C86C2DL)).z)) | p_495->g_comm_values[p_495->tid]))) , &p_495->g_154[2][0])) > (((safe_div_func_int16_t_s_s((p_42 == (p_43 <= (((VECTOR(uint32_t, 8))(l_369.yyyyyzyw)).s6 < (safe_mul_func_uint16_t_u_u(p_495->g_252.sa, p_42))))), p_46)) && l_361[2][1][3]) , p_495->g_154[3][0])) , 0L), p_495->g_123.s2));
    return p_495->g_152;
}


/* ------------------------------------------ */
/* 
 * reads : p_495->g_160 p_495->g_80 p_495->g_78 p_495->g_63 p_495->g_127 p_495->g_154 p_495->g_177 p_495->g_74 p_495->g_86 p_495->g_152 p_495->g_139 p_495->g_85 p_495->g_comm_values p_495->g_101 p_495->g_4 p_495->g_77 p_495->g_178 p_495->g_65 p_495->g_149 p_495->g_124 p_495->g_252 p_495->g_253 p_495->g_260
 * writes: p_495->g_160 p_495->g_81 p_495->g_101 p_495->g_177 p_495->g_178 p_495->g_63 p_495->g_152 p_495->g_78 p_495->g_74 p_495->g_127 p_495->g_149 p_495->g_260 p_495->g_154
 */
uint32_t  func_47(uint32_t  p_48, uint32_t  p_49, uint32_t  p_50, struct S0 * p_495)
{ /* block id: 50 */
    int32_t *l_158 = &p_495->g_63;
    int32_t *l_159[6][1] = {{&p_495->g_63},{&p_495->g_63},{&p_495->g_63},{&p_495->g_63},{&p_495->g_63},{&p_495->g_63}};
    uint32_t *l_170 = &p_495->g_139;
    uint32_t **l_169 = &l_170;
    uint32_t l_171 = 0xA217E51FL;
    int16_t *l_172 = (void*)0;
    int16_t *l_173 = (void*)0;
    int16_t *l_174[1][6] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
    VECTOR(uint8_t, 2) l_244 = (VECTOR(uint8_t, 2))(0xFBL, 0UL);
    uint16_t *l_270[10][9][1] = {{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}}};
    int i, j, k;
    --p_495->g_160;
    (*p_495->g_80) = (void*)0;
    if (((**p_495->g_86) = ((safe_sub_func_int16_t_s_s((p_495->g_178.y = (safe_add_func_int32_t_s_s((safe_sub_func_int64_t_s_s(p_48, ((((*l_169) = &p_495->g_139) == (void*)0) >= (p_495->g_101.s3 = ((*p_495->g_78) != l_171))))), (p_495->g_177[5] &= ((safe_add_func_int16_t_s_s(p_495->g_127.s4, p_48)) > p_495->g_154[0][0]))))), p_49)) > p_495->g_74[0][1][2])))
    { /* block id: 58 */
        int32_t *l_179[7][9][4] = {{{&p_495->g_63,&p_495->g_63,&p_495->g_63,&p_495->g_63},{&p_495->g_63,&p_495->g_63,&p_495->g_63,&p_495->g_63},{&p_495->g_63,&p_495->g_63,&p_495->g_63,&p_495->g_63},{&p_495->g_63,&p_495->g_63,&p_495->g_63,&p_495->g_63},{&p_495->g_63,&p_495->g_63,&p_495->g_63,&p_495->g_63},{&p_495->g_63,&p_495->g_63,&p_495->g_63,&p_495->g_63},{&p_495->g_63,&p_495->g_63,&p_495->g_63,&p_495->g_63},{&p_495->g_63,&p_495->g_63,&p_495->g_63,&p_495->g_63},{&p_495->g_63,&p_495->g_63,&p_495->g_63,&p_495->g_63}},{{&p_495->g_63,&p_495->g_63,&p_495->g_63,&p_495->g_63},{&p_495->g_63,&p_495->g_63,&p_495->g_63,&p_495->g_63},{&p_495->g_63,&p_495->g_63,&p_495->g_63,&p_495->g_63},{&p_495->g_63,&p_495->g_63,&p_495->g_63,&p_495->g_63},{&p_495->g_63,&p_495->g_63,&p_495->g_63,&p_495->g_63},{&p_495->g_63,&p_495->g_63,&p_495->g_63,&p_495->g_63},{&p_495->g_63,&p_495->g_63,&p_495->g_63,&p_495->g_63},{&p_495->g_63,&p_495->g_63,&p_495->g_63,&p_495->g_63},{&p_495->g_63,&p_495->g_63,&p_495->g_63,&p_495->g_63}},{{&p_495->g_63,&p_495->g_63,&p_495->g_63,&p_495->g_63},{&p_495->g_63,&p_495->g_63,&p_495->g_63,&p_495->g_63},{&p_495->g_63,&p_495->g_63,&p_495->g_63,&p_495->g_63},{&p_495->g_63,&p_495->g_63,&p_495->g_63,&p_495->g_63},{&p_495->g_63,&p_495->g_63,&p_495->g_63,&p_495->g_63},{&p_495->g_63,&p_495->g_63,&p_495->g_63,&p_495->g_63},{&p_495->g_63,&p_495->g_63,&p_495->g_63,&p_495->g_63},{&p_495->g_63,&p_495->g_63,&p_495->g_63,&p_495->g_63},{&p_495->g_63,&p_495->g_63,&p_495->g_63,&p_495->g_63}},{{&p_495->g_63,&p_495->g_63,&p_495->g_63,&p_495->g_63},{&p_495->g_63,&p_495->g_63,&p_495->g_63,&p_495->g_63},{&p_495->g_63,&p_495->g_63,&p_495->g_63,&p_495->g_63},{&p_495->g_63,&p_495->g_63,&p_495->g_63,&p_495->g_63},{&p_495->g_63,&p_495->g_63,&p_495->g_63,&p_495->g_63},{&p_495->g_63,&p_495->g_63,&p_495->g_63,&p_495->g_63},{&p_495->g_63,&p_495->g_63,&p_495->g_63,&p_495->g_63},{&p_495->g_63,&p_495->g_63,&p_495->g_63,&p_495->g_63},{&p_495->g_63,&p_495->g_63,&p_495->g_63,&p_495->g_63}},{{&p_495->g_63,&p_495->g_63,&p_495->g_63,&p_495->g_63},{&p_495->g_63,&p_495->g_63,&p_495->g_63,&p_495->g_63},{&p_495->g_63,&p_495->g_63,&p_495->g_63,&p_495->g_63},{&p_495->g_63,&p_495->g_63,&p_495->g_63,&p_495->g_63},{&p_495->g_63,&p_495->g_63,&p_495->g_63,&p_495->g_63},{&p_495->g_63,&p_495->g_63,&p_495->g_63,&p_495->g_63},{&p_495->g_63,&p_495->g_63,&p_495->g_63,&p_495->g_63},{&p_495->g_63,&p_495->g_63,&p_495->g_63,&p_495->g_63},{&p_495->g_63,&p_495->g_63,&p_495->g_63,&p_495->g_63}},{{&p_495->g_63,&p_495->g_63,&p_495->g_63,&p_495->g_63},{&p_495->g_63,&p_495->g_63,&p_495->g_63,&p_495->g_63},{&p_495->g_63,&p_495->g_63,&p_495->g_63,&p_495->g_63},{&p_495->g_63,&p_495->g_63,&p_495->g_63,&p_495->g_63},{&p_495->g_63,&p_495->g_63,&p_495->g_63,&p_495->g_63},{&p_495->g_63,&p_495->g_63,&p_495->g_63,&p_495->g_63},{&p_495->g_63,&p_495->g_63,&p_495->g_63,&p_495->g_63},{&p_495->g_63,&p_495->g_63,&p_495->g_63,&p_495->g_63},{&p_495->g_63,&p_495->g_63,&p_495->g_63,&p_495->g_63}},{{&p_495->g_63,&p_495->g_63,&p_495->g_63,&p_495->g_63},{&p_495->g_63,&p_495->g_63,&p_495->g_63,&p_495->g_63},{&p_495->g_63,&p_495->g_63,&p_495->g_63,&p_495->g_63},{&p_495->g_63,&p_495->g_63,&p_495->g_63,&p_495->g_63},{&p_495->g_63,&p_495->g_63,&p_495->g_63,&p_495->g_63},{&p_495->g_63,&p_495->g_63,&p_495->g_63,&p_495->g_63},{&p_495->g_63,&p_495->g_63,&p_495->g_63,&p_495->g_63},{&p_495->g_63,&p_495->g_63,&p_495->g_63,&p_495->g_63},{&p_495->g_63,&p_495->g_63,&p_495->g_63,&p_495->g_63}}};
        VECTOR(int32_t, 16) l_182 = (VECTOR(int32_t, 16))(0x14236E2AL, (VECTOR(int32_t, 4))(0x14236E2AL, (VECTOR(int32_t, 2))(0x14236E2AL, 1L), 1L), 1L, 0x14236E2AL, 1L, (VECTOR(int32_t, 2))(0x14236E2AL, 1L), (VECTOR(int32_t, 2))(0x14236E2AL, 1L), 0x14236E2AL, 1L, 0x14236E2AL, 1L);
        int i, j, k;
        (*p_495->g_80) = l_179[5][0][1];
        for (p_495->g_152 = (-17); (p_495->g_152 > 7); p_495->g_152++)
        { /* block id: 62 */
            int32_t *l_190 = &p_495->g_63;
            int64_t *l_205 = (void*)0;
            if (((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(l_182.s82)).yyyyxyyy)).s4)
            { /* block id: 63 */
                for (l_171 = 0; (l_171 == 38); l_171++)
                { /* block id: 66 */
                    uint32_t l_192 = 0xF908AAE1L;
                    for (p_50 = 0; (p_50 > 23); p_50 = safe_add_func_uint32_t_u_u(p_50, 2))
                    { /* block id: 69 */
                        uint64_t l_187 = 0x5BEA170B35B5DD2DL;
                        int32_t l_191 = 0x3BDEAF15L;
                        --l_187;
                        (*p_495->g_80) = ((*p_495->g_86) = l_190);
                        (*p_495->g_80) = (*p_495->g_86);
                        ++l_192;
                    }
                }
            }
            else
            { /* block id: 77 */
                int8_t *l_200 = &p_495->g_74[2][1][3];
                int32_t l_201[10] = {0x03283455L,0x2A9526B4L,0x03283455L,0x03283455L,0x2A9526B4L,0x03283455L,0x03283455L,0x2A9526B4L,0x03283455L,0x03283455L};
                uint16_t *l_202[5][6] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
                int i, j;
                (*p_495->g_80) = ((((0x20F0L & ((safe_add_func_uint64_t_u_u(18446744073709551615UL, (safe_mul_func_int16_t_s_s((((*l_200) = ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(p_495->g_199.s52)).yyxxyxxy)).s0) != (!246UL)), ((p_495->g_127.s5 &= l_201[1]) | 0UL))))) & (((((((p_495->g_139 & 0x6CL) >= ((((((safe_add_func_uint32_t_u_u(p_49, FAKE_DIVERGE(p_495->group_2_offset, get_group_id(2), 10))) | 0x6D77FB83B52146C8L) && 0x7EL) , 1L) , 0UL) && 0xA821EC39L)) != 2UL) , (void*)0) == l_205) & (***p_495->g_85)) != 0x2CC4L))) && p_495->g_160) , (*l_190)) , (void*)0);
                if ((atomic_inc(&p_495->l_atomic_input[25]) == 2))
                { /* block id: 82 */
                    int64_t l_206 = 1L;
                    VECTOR(int8_t, 16) l_207 = (VECTOR(int8_t, 16))(0x11L, (VECTOR(int8_t, 4))(0x11L, (VECTOR(int8_t, 2))(0x11L, 0x27L), 0x27L), 0x27L, 0x11L, 0x27L, (VECTOR(int8_t, 2))(0x11L, 0x27L), (VECTOR(int8_t, 2))(0x11L, 0x27L), 0x11L, 0x27L, 0x11L, 0x27L);
                    int32_t l_208 = (-1L);
                    uint16_t l_209 = 0xFD28L;
                    int i;
                    l_207.sb = (l_206 ^= 0x7D56119EL);
                    l_209 = l_208;
                    unsigned int result = 0;
                    result += l_206;
                    result += l_207.sf;
                    result += l_207.se;
                    result += l_207.sd;
                    result += l_207.sc;
                    result += l_207.sb;
                    result += l_207.sa;
                    result += l_207.s9;
                    result += l_207.s8;
                    result += l_207.s7;
                    result += l_207.s6;
                    result += l_207.s5;
                    result += l_207.s4;
                    result += l_207.s3;
                    result += l_207.s2;
                    result += l_207.s1;
                    result += l_207.s0;
                    result += l_208;
                    result += l_209;
                    atomic_add(&p_495->l_special_values[25], result);
                }
                else
                { /* block id: 86 */
                    (1 + 1);
                }
            }
        }
    }
    else
    { /* block id: 91 */
        int32_t ***l_216 = &p_495->g_86;
        uint32_t **l_229 = (void*)0;
        int64_t *l_230[1];
        int32_t l_245 = (-6L);
        uint16_t *l_250 = (void*)0;
        int i;
        for (i = 0; i < 1; i++)
            l_230[i] = (void*)0;
        for (l_171 = (-29); (l_171 < 24); l_171 = safe_add_func_int64_t_s_s(l_171, 5))
        { /* block id: 94 */
            int8_t *l_223 = &p_495->g_74[2][1][3];
            int32_t l_224 = 0x367BDB8DL;
            if (p_50)
                break;
            atomic_max(&p_495->l_atomic_reduction[0], (safe_div_func_uint16_t_u_u(p_50, ((safe_rshift_func_uint16_t_u_s((l_216 != l_216), 4)) || (safe_mod_func_uint64_t_u_u(((p_49 <= (safe_rshift_func_uint8_t_u_s(((safe_mul_func_int8_t_s_s((~((*l_223) = (*l_158))), p_48)) != (l_224 & (safe_lshift_func_uint16_t_u_s(((***p_495->g_85) < (GROUP_DIVERGE(2, 1) > ((void*)0 != l_229))), l_224)))), p_50))) >= p_495->g_comm_values[p_495->tid]), p_495->g_101.s7))))) + get_linear_global_id());
            barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
            if (get_linear_local_id() == 0)
                p_495->v_collective += p_495->l_atomic_reduction[0];
            barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        }
        l_245 |= (((l_230[0] == l_230[0]) == (safe_sub_func_int16_t_s_s((p_50 && (((safe_unary_minus_func_uint8_t_u((p_495->g_4 || ((safe_sub_func_uint32_t_u_u(p_495->g_77, (safe_mod_func_int64_t_s_s(((((safe_div_func_int8_t_s_s(((safe_mod_func_uint16_t_u_u((+p_495->g_178.y), 2UL)) , (safe_mod_func_uint8_t_u_u(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(l_244.xyyyxxyx)).s35)).lo, (p_495->g_177[9] , 1UL)))), p_48)) <= 1UL) | 0x844BL) == 0UL), p_495->g_65.x)))) & 0x2D2BL)))) >= (*l_158)) > 0x862DL)), p_495->g_177[0]))) ^ 0x5740L);
        (**p_495->g_86) = 0x607EB25AL;
        for (p_495->g_149 = 0; (p_495->g_149 < 25); p_495->g_149 = safe_add_func_uint8_t_u_u(p_495->g_149, 1))
        { /* block id: 103 */
            VECTOR(uint32_t, 16) l_251 = (VECTOR(uint32_t, 16))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 1UL), 1UL), 1UL, 1UL, 1UL, (VECTOR(uint32_t, 2))(1UL, 1UL), (VECTOR(uint32_t, 2))(1UL, 1UL), 1UL, 1UL, 1UL, 1UL);
            VECTOR(int8_t, 2) l_256 = (VECTOR(int8_t, 2))(0x21L, 0x1DL);
            int32_t l_257[5][5][4] = {{{0x0EAB5212L,0x55989F5DL,0x1416B480L,5L},{0x0EAB5212L,0x55989F5DL,0x1416B480L,5L},{0x0EAB5212L,0x55989F5DL,0x1416B480L,5L},{0x0EAB5212L,0x55989F5DL,0x1416B480L,5L},{0x0EAB5212L,0x55989F5DL,0x1416B480L,5L}},{{0x0EAB5212L,0x55989F5DL,0x1416B480L,5L},{0x0EAB5212L,0x55989F5DL,0x1416B480L,5L},{0x0EAB5212L,0x55989F5DL,0x1416B480L,5L},{0x0EAB5212L,0x55989F5DL,0x1416B480L,5L},{0x0EAB5212L,0x55989F5DL,0x1416B480L,5L}},{{0x0EAB5212L,0x55989F5DL,0x1416B480L,5L},{0x0EAB5212L,0x55989F5DL,0x1416B480L,5L},{0x0EAB5212L,0x55989F5DL,0x1416B480L,5L},{0x0EAB5212L,0x55989F5DL,0x1416B480L,5L},{0x0EAB5212L,0x55989F5DL,0x1416B480L,5L}},{{0x0EAB5212L,0x55989F5DL,0x1416B480L,5L},{0x0EAB5212L,0x55989F5DL,0x1416B480L,5L},{0x0EAB5212L,0x55989F5DL,0x1416B480L,5L},{0x0EAB5212L,0x55989F5DL,0x1416B480L,5L},{0x0EAB5212L,0x55989F5DL,0x1416B480L,5L}},{{0x0EAB5212L,0x55989F5DL,0x1416B480L,5L},{0x0EAB5212L,0x55989F5DL,0x1416B480L,5L},{0x0EAB5212L,0x55989F5DL,0x1416B480L,5L},{0x0EAB5212L,0x55989F5DL,0x1416B480L,5L},{0x0EAB5212L,0x55989F5DL,0x1416B480L,5L}}};
            uint16_t *l_266 = (void*)0;
            int32_t l_271 = 1L;
            int i, j, k;
            for (l_171 = 0; (l_171 == 9); l_171 = safe_add_func_uint32_t_u_u(l_171, 8))
            { /* block id: 106 */
                uint64_t *l_258 = (void*)0;
                uint64_t *l_259 = &p_495->g_260;
                uint32_t *l_263 = &p_495->g_139;
                uint8_t *l_264 = (void*)0;
                uint8_t *l_265 = &p_495->g_154[0][0];
                uint16_t **l_267 = &l_266;
                uint16_t **l_268 = (void*)0;
                uint16_t **l_269[9];
                int i;
                for (i = 0; i < 9; i++)
                    l_269[i] = (void*)0;
                l_271 |= ((((-1L) & p_495->g_124.x) , l_250) == (l_270[0][8][0] = ((*l_267) = (((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 4))(safe_mad24_func_uint32_t_u_u_u(VECTOR(uint32_t, 4),((VECTOR(uint32_t, 4))(l_251.s01a5)), ((VECTOR(uint32_t, 16))(p_495->g_252.s5572b44842a39414)).se7bc, ((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))(p_495->g_253.s2cab)), ((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))(4294967295UL, ((p_495->g_154[0][0] >= p_495->g_149) && p_48), (safe_rshift_func_uint8_t_u_u((!(l_257[1][2][2] ^= ((*l_265) = (((VECTOR(int8_t, 4))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 8))(l_256.xxxxyxxy)))).even)).z | (((p_495->g_154[0][0] || ((((((VECTOR(int8_t, 4))(0x3FL, ((VECTOR(int8_t, 2))((-1L), 0x1CL)), 0x71L)).w , (***l_216)) ^ (((((*l_259)--) && p_495->g_253.s1) > GROUP_DIVERGE(1, 1)) ^ 0x1AL)) , (*l_169)) != l_263)) <= (***l_216)) <= 0x4D0642E4L))))), 1)), 0xAB4E013FL, ((VECTOR(uint32_t, 4))(4294967290UL)))), ((VECTOR(uint32_t, 2))(4294967288UL)), ((VECTOR(uint32_t, 2))(0xF691D8E7L)), ((VECTOR(uint32_t, 2))(0x80AF3E0FL)), 1UL, 0x1AFD5369L)).s2, 0x34851EF8L, ((VECTOR(uint32_t, 8))(0UL)), 0x51F7C336L, 8UL)).s888f))).lo)).odd , l_266))));
            }
        }
    }
    return p_50;
}


/* ------------------------------------------ */
/* 
 * reads : p_495->g_74 p_495->l_comm_values p_495->g_122 p_495->g_123 p_495->g_124 p_495->g_125 p_495->g_4 p_495->g_127 p_495->g_139 p_495->g_65 p_495->g_86 p_495->g_78 p_495->g_101 p_495->g_152 p_495->g_154
 * writes: p_495->g_74 p_495->g_139 p_495->g_comm_values p_495->g_149 p_495->g_152 p_495->g_63 p_495->g_154
 */
uint32_t  func_51(uint8_t  p_52, uint32_t  p_53, uint64_t  p_54, int16_t  p_55, struct S0 * p_495)
{ /* block id: 39 */
    int32_t l_107 = 0x78C8F4DBL;
    int8_t *l_108 = (void*)0;
    int8_t *l_109 = &p_495->g_74[2][1][3];
    VECTOR(uint16_t, 2) l_126 = (VECTOR(uint16_t, 2))(65533UL, 65535UL);
    uint32_t *l_132[9];
    int32_t l_133 = 0x6F88CBA7L;
    int32_t l_134 = 0x7E2AFDD6L;
    int32_t l_135 = 0x28E11CF2L;
    int32_t l_136 = 3L;
    int32_t l_137[2][5][9] = {{{0x4B5C8199L,0L,(-1L),0x73A0D747L,(-8L),0x4B5C8199L,0x73A0D747L,6L,0x73A0D747L},{0x4B5C8199L,0L,(-1L),0x73A0D747L,(-8L),0x4B5C8199L,0x73A0D747L,6L,0x73A0D747L},{0x4B5C8199L,0L,(-1L),0x73A0D747L,(-8L),0x4B5C8199L,0x73A0D747L,6L,0x73A0D747L},{0x4B5C8199L,0L,(-1L),0x73A0D747L,(-8L),0x4B5C8199L,0x73A0D747L,6L,0x73A0D747L},{0x4B5C8199L,0L,(-1L),0x73A0D747L,(-8L),0x4B5C8199L,0x73A0D747L,6L,0x73A0D747L}},{{0x4B5C8199L,0L,(-1L),0x73A0D747L,(-8L),0x4B5C8199L,0x73A0D747L,6L,0x73A0D747L},{0x4B5C8199L,0L,(-1L),0x73A0D747L,(-8L),0x4B5C8199L,0x73A0D747L,6L,0x73A0D747L},{0x4B5C8199L,0L,(-1L),0x73A0D747L,(-8L),0x4B5C8199L,0x73A0D747L,6L,0x73A0D747L},{0x4B5C8199L,0L,(-1L),0x73A0D747L,(-8L),0x4B5C8199L,0x73A0D747L,6L,0x73A0D747L},{0x4B5C8199L,0L,(-1L),0x73A0D747L,(-8L),0x4B5C8199L,0x73A0D747L,6L,0x73A0D747L}}};
    int32_t l_138 = 0x47CB24E9L;
    int64_t *l_145[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int32_t l_146 = 0L;
    uint32_t *l_147 = (void*)0;
    uint32_t *l_148 = &p_495->g_149;
    int32_t l_150 = 0x76563979L;
    int8_t *l_151[2][6][1] = {{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}}};
    int32_t *l_153[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int i, j, k;
    for (i = 0; i < 9; i++)
        l_132[i] = (void*)0;
    (**p_495->g_86) = (safe_div_func_int32_t_s_s((((*l_109) |= (0xDABF61A3L | l_107)) < (p_495->g_152 ^= (safe_lshift_func_uint8_t_u_u((safe_mul_func_uint8_t_u_u(((safe_mul_func_uint16_t_u_u((safe_add_func_uint8_t_u_u((p_52 = (((((*l_148) = (safe_mul_func_int8_t_s_s(p_495->l_comm_values[(safe_mod_func_uint32_t_u_u(p_495->tid, 74))], ((safe_div_func_uint16_t_u_u(((VECTOR(uint16_t, 16))(max(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 16))(min(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 16))(min(((VECTOR(uint16_t, 2))(p_495->g_122.yx)).yxxxxyyyyxxyyyxy, ((VECTOR(uint16_t, 2))(add_sat(((VECTOR(uint16_t, 8))(safe_clamp_func(VECTOR(uint16_t, 8),VECTOR(uint16_t, 8),((VECTOR(uint16_t, 2))(rhadd(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 4))(p_495->g_123.s3465)).even)), ((VECTOR(uint16_t, 2))(mad_sat(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(mad_sat(((VECTOR(uint16_t, 2))(p_495->g_124.xx)), ((VECTOR(uint16_t, 4))(p_495->g_125.scb73)).even, ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(safe_clamp_func(VECTOR(uint16_t, 4),VECTOR(uint16_t, 4),((VECTOR(uint16_t, 4))(l_126.yxxy)), ((VECTOR(uint16_t, 4))(min(((VECTOR(uint16_t, 2))(0UL, 0xBB06L)).xxyy, ((VECTOR(uint16_t, 16))(p_495->g_4, 0UL, (((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 4))(p_495->g_127.s5736)).even)).xxxyyyyyxxyxxyxx)).s6 | (safe_div_func_uint32_t_u_u(l_126.y, (l_133 = (safe_add_func_uint32_t_u_u((++p_495->g_139), (((safe_unary_minus_func_uint64_t_u(((safe_div_func_uint64_t_u_u(((VECTOR(uint64_t, 16))(18446744073709551615UL, ((p_495->g_comm_values[p_495->tid] = ((((l_107 , &l_107) == &l_134) == p_53) , p_495->g_65.y)) != p_53), 0x4424053B13CA6591L, ((VECTOR(uint64_t, 4))(0x09466F024E21FBFDL)), ((VECTOR(uint64_t, 4))(0xA75574C4D6AA8532L)), ((VECTOR(uint64_t, 2))(0x30FA3D1AAD7911D4L)), 18446744073709551606UL, 0UL, 18446744073709551615UL)).s9, 0x170EBC1338C270E2L)) < p_55))) < p_495->g_124.x) < p_495->g_122.x))))))), l_146, 0xD26DL, ((VECTOR(uint16_t, 4))(0x8A1AL)), l_137[1][0][7], 65532UL, 0x8FF0L, ((VECTOR(uint16_t, 2))(0x352AL)), 0x8DCCL, 65535UL)).s67c0))), ((VECTOR(uint16_t, 4))(6UL))))).zyzxwzwyxzzywyxy)).sea))), ((VECTOR(uint16_t, 2))(0xA9D9L)), 1UL, 0x3CA1L, 65534UL, 0xDD50L)).s75, ((VECTOR(uint16_t, 2))(5UL)), ((VECTOR(uint16_t, 2))(0xE20EL)))))))).yyyyxxxy, ((VECTOR(uint16_t, 8))(0xE86DL)), ((VECTOR(uint16_t, 8))(0x666CL))))).s73, ((VECTOR(uint16_t, 2))(0xFC80L))))).xyxyyyyxyxyxyxyx))).odd)).s4733762402740125, (uint16_t)l_126.y))).sa997)).zwzxxxwxywwyyxwx, (uint16_t)GROUP_DIVERGE(0, 1)))).s9, p_53)) | 1L)))) , (void*)0) != (*p_495->g_86)) || 0x0AD59A9DL)), 0x74L)), 0xFFE7L)) | p_54), p_495->g_101.s5)), l_150)))), p_495->g_122.y));
    p_495->g_154[0][0]++;
    return p_495->g_125.sb;
}


/* ------------------------------------------ */
/* 
 * reads : p_495->g_85 p_495->g_24 p_495->g_86 p_495->g_78 p_495->g_101 p_495->g_comm_values p_495->g_81 p_495->g_63
 * writes: p_495->g_86 p_495->g_74 p_495->g_63
 */
uint8_t  func_56(int32_t  p_57, struct S0 * p_495)
{ /* block id: 33 */
    uint64_t l_91 = 0xB86155BF9BF4A26EL;
    uint16_t l_92 = 0x6DCFL;
    int8_t *l_95 = &p_495->g_74[2][1][3];
    int8_t *l_102 = (void*)0;
    int32_t l_103 = 1L;
    (*p_495->g_85) = &p_495->g_78;
    (*p_495->g_81) |= (safe_rshift_func_uint8_t_u_u((((safe_add_func_int64_t_s_s(l_91, p_495->g_24.sc)) == ((void*)0 != (*p_495->g_86))) , (l_91 , l_92)), ((safe_mul_func_int8_t_s_s((l_95 != (void*)0), (l_103 = (safe_unary_minus_func_uint8_t_u((safe_mod_func_int8_t_s_s(((*l_95) = (safe_mul_func_int16_t_s_s((+((VECTOR(int16_t, 16))(p_495->g_101.s5152510265021706)).s6), (4294967294UL != l_91)))), p_495->g_comm_values[p_495->tid]))))))) > p_57)));
    return p_57;
}


/* ------------------------------------------ */
/* 
 * reads : p_495->g_65 p_495->g_74 p_495->l_comm_values p_495->g_80 p_495->g_81
 * writes: p_495->g_63 p_495->g_74 p_495->g_77 p_495->g_78
 */
int32_t  func_58(uint64_t  p_59, struct S0 * p_495)
{ /* block id: 8 */
    int16_t l_66 = 0L;
    int32_t *l_67[6];
    int i;
    for (i = 0; i < 6; i++)
        l_67[i] = &p_495->g_63;
    for (p_59 = 18; (p_59 < 25); ++p_59)
    { /* block id: 11 */
        int32_t *l_62 = &p_495->g_63;
        int32_t **l_64 = &l_62;
        int i, j;
        (*l_64) = l_62;
        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        p_495->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 74)), permutations[(safe_mod_func_uint32_t_u_u(((VECTOR(uint32_t, 8))(p_495->g_65.xyyyxxyx)).s4, 10))][(safe_mod_func_uint32_t_u_u(p_495->tid, 74))]));
    }
    p_495->g_63 = l_66;
    for (l_66 = 0; (l_66 <= (-9)); l_66--)
    { /* block id: 20 */
        int64_t l_70 = 9L;
        int8_t *l_73 = &p_495->g_74[2][1][3];
        int32_t **l_79 = &l_67[2];
        (*p_495->g_81) = (((l_70 <= ((p_495->g_65.x , ((*l_73) |= 0x29L)) & ((safe_div_func_uint8_t_u_u(0UL, (p_495->g_77 = p_495->l_comm_values[(safe_mod_func_uint32_t_u_u(p_495->tid, 74))]))) & ((p_495->g_78 = (((VECTOR(int32_t, 2))(0x010CA1D2L, 0x4349FEC8L)).hi , l_67[3])) != (void*)0)))) , (l_70 , l_79)) != p_495->g_80);
    }
    for (l_66 = 0; (l_66 < (-9)); --l_66)
    { /* block id: 28 */
        uint32_t l_84 = 3UL;
        if (l_84)
            break;
        return p_59;
    }
    return p_59;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global volatile int *g_atomic_reduction, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[54];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 54; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[54];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 54; i++)
            l_special_values[i] = 0;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    __local int64_t l_comm_values[74];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 74; i++)
            l_comm_values[i] = 1;
    struct S0 c_496;
    struct S0* p_495 = &c_496;
    struct S0 c_497 = {
        1L, // p_495->g_4
        (VECTOR(uint16_t, 16))(0x65CAL, (VECTOR(uint16_t, 4))(0x65CAL, (VECTOR(uint16_t, 2))(0x65CAL, 65530UL), 65530UL), 65530UL, 0x65CAL, 65530UL, (VECTOR(uint16_t, 2))(0x65CAL, 65530UL), (VECTOR(uint16_t, 2))(0x65CAL, 65530UL), 0x65CAL, 65530UL, 0x65CAL, 65530UL), // p_495->g_24
        0x657B790EL, // p_495->g_63
        (VECTOR(uint32_t, 2))(0x0C20EB8FL, 0x01265A1BL), // p_495->g_65
        {{{0x2AL,0x2AL,0x2AL,0x2AL},{0x2AL,0x2AL,0x2AL,0x2AL}},{{0x2AL,0x2AL,0x2AL,0x2AL},{0x2AL,0x2AL,0x2AL,0x2AL}},{{0x2AL,0x2AL,0x2AL,0x2AL},{0x2AL,0x2AL,0x2AL,0x2AL}}}, // p_495->g_74
        0x3142B930L, // p_495->g_77
        &p_495->g_63, // p_495->g_78
        &p_495->g_63, // p_495->g_81
        &p_495->g_81, // p_495->g_80
        (void*)0, // p_495->g_86
        &p_495->g_86, // p_495->g_85
        (VECTOR(int16_t, 8))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x635BL), 0x635BL), 0x635BL, (-1L), 0x635BL), // p_495->g_101
        (VECTOR(uint16_t, 2))(0UL, 65527UL), // p_495->g_122
        (VECTOR(uint16_t, 8))(0x0561L, (VECTOR(uint16_t, 4))(0x0561L, (VECTOR(uint16_t, 2))(0x0561L, 0xB9C7L), 0xB9C7L), 0xB9C7L, 0x0561L, 0xB9C7L), // p_495->g_123
        (VECTOR(uint16_t, 2))(6UL, 0xEC89L), // p_495->g_124
        (VECTOR(uint16_t, 16))(0xFB89L, (VECTOR(uint16_t, 4))(0xFB89L, (VECTOR(uint16_t, 2))(0xFB89L, 0UL), 0UL), 0UL, 0xFB89L, 0UL, (VECTOR(uint16_t, 2))(0xFB89L, 0UL), (VECTOR(uint16_t, 2))(0xFB89L, 0UL), 0xFB89L, 0UL, 0xFB89L, 0UL), // p_495->g_125
        (VECTOR(uint16_t, 8))(65533UL, (VECTOR(uint16_t, 4))(65533UL, (VECTOR(uint16_t, 2))(65533UL, 0x0D1CL), 0x0D1CL), 0x0D1CL, 65533UL, 0x0D1CL), // p_495->g_127
        0x7E046D47L, // p_495->g_139
        0xEF34A033L, // p_495->g_149
        0x3BL, // p_495->g_152
        {{1UL},{1UL},{1UL},{1UL}}, // p_495->g_154
        0xE5DE1F74L, // p_495->g_160
        {0UL,0UL,0xF7665E0CL,0UL,0UL,0UL,0UL,0xF7665E0CL,0UL,0UL}, // p_495->g_177
        (VECTOR(uint32_t, 2))(0xACEB1D2BL, 0xE0EAAB09L), // p_495->g_178
        (VECTOR(int8_t, 8))(0x6DL, (VECTOR(int8_t, 4))(0x6DL, (VECTOR(int8_t, 2))(0x6DL, (-4L)), (-4L)), (-4L), 0x6DL, (-4L)), // p_495->g_199
        (VECTOR(uint32_t, 16))(8UL, (VECTOR(uint32_t, 4))(8UL, (VECTOR(uint32_t, 2))(8UL, 4294967295UL), 4294967295UL), 4294967295UL, 8UL, 4294967295UL, (VECTOR(uint32_t, 2))(8UL, 4294967295UL), (VECTOR(uint32_t, 2))(8UL, 4294967295UL), 8UL, 4294967295UL, 8UL, 4294967295UL), // p_495->g_252
        (VECTOR(uint32_t, 16))(0x6277879FL, (VECTOR(uint32_t, 4))(0x6277879FL, (VECTOR(uint32_t, 2))(0x6277879FL, 0x5546EA2CL), 0x5546EA2CL), 0x5546EA2CL, 0x6277879FL, 0x5546EA2CL, (VECTOR(uint32_t, 2))(0x6277879FL, 0x5546EA2CL), (VECTOR(uint32_t, 2))(0x6277879FL, 0x5546EA2CL), 0x6277879FL, 0x5546EA2CL, 0x6277879FL, 0x5546EA2CL), // p_495->g_253
        0xED81734C236C3F1CL, // p_495->g_260
        &p_495->g_154[1][0], // p_495->g_358
        (VECTOR(uint64_t, 4))(0x4D87DEB21495E486L, (VECTOR(uint64_t, 2))(0x4D87DEB21495E486L, 0xA8161A80EEFB9554L), 0xA8161A80EEFB9554L), // p_495->g_365
        (void*)0, // p_495->g_378
        0x95DEL, // p_495->g_398
        &p_495->g_398, // p_495->g_397
        &p_495->g_397, // p_495->g_396
        (void*)0, // p_495->g_402
        &p_495->g_402, // p_495->g_401
        {(-1L)}, // p_495->g_405
        0xCFL, // p_495->g_406
        (void*)0, // p_495->g_476
        (VECTOR(uint8_t, 16))(0xDFL, (VECTOR(uint8_t, 4))(0xDFL, (VECTOR(uint8_t, 2))(0xDFL, 0x27L), 0x27L), 0x27L, 0xDFL, 0x27L, (VECTOR(uint8_t, 2))(0xDFL, 0x27L), (VECTOR(uint8_t, 2))(0xDFL, 0x27L), 0xDFL, 0x27L, 0xDFL, 0x27L), // p_495->g_485
        {{0x6D8CD2DEL,0x1D1A7B98L,(-1L),0x4C61AE91L,(-1L),0x1D1A7B98L,0x6D8CD2DEL,0x75F4FEB1L},{0x6D8CD2DEL,0x1D1A7B98L,(-1L),0x4C61AE91L,(-1L),0x1D1A7B98L,0x6D8CD2DEL,0x75F4FEB1L},{0x6D8CD2DEL,0x1D1A7B98L,(-1L),0x4C61AE91L,(-1L),0x1D1A7B98L,0x6D8CD2DEL,0x75F4FEB1L},{0x6D8CD2DEL,0x1D1A7B98L,(-1L),0x4C61AE91L,(-1L),0x1D1A7B98L,0x6D8CD2DEL,0x75F4FEB1L},{0x6D8CD2DEL,0x1D1A7B98L,(-1L),0x4C61AE91L,(-1L),0x1D1A7B98L,0x6D8CD2DEL,0x75F4FEB1L},{0x6D8CD2DEL,0x1D1A7B98L,(-1L),0x4C61AE91L,(-1L),0x1D1A7B98L,0x6D8CD2DEL,0x75F4FEB1L}}, // p_495->g_489
        0, // p_495->v_collective
        sequence_input[get_global_id(0)], // p_495->global_0_offset
        sequence_input[get_global_id(1)], // p_495->global_1_offset
        sequence_input[get_global_id(2)], // p_495->global_2_offset
        sequence_input[get_local_id(0)], // p_495->local_0_offset
        sequence_input[get_local_id(1)], // p_495->local_1_offset
        sequence_input[get_local_id(2)], // p_495->local_2_offset
        sequence_input[get_group_id(0)], // p_495->group_0_offset
        sequence_input[get_group_id(1)], // p_495->group_1_offset
        sequence_input[get_group_id(2)], // p_495->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 74)), permutations[0][get_linear_local_id()])), // p_495->tid
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_496 = c_497;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_495);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_495->g_4, "p_495->g_4", print_hash_value);
    transparent_crc(p_495->g_24.s0, "p_495->g_24.s0", print_hash_value);
    transparent_crc(p_495->g_24.s1, "p_495->g_24.s1", print_hash_value);
    transparent_crc(p_495->g_24.s2, "p_495->g_24.s2", print_hash_value);
    transparent_crc(p_495->g_24.s3, "p_495->g_24.s3", print_hash_value);
    transparent_crc(p_495->g_24.s4, "p_495->g_24.s4", print_hash_value);
    transparent_crc(p_495->g_24.s5, "p_495->g_24.s5", print_hash_value);
    transparent_crc(p_495->g_24.s6, "p_495->g_24.s6", print_hash_value);
    transparent_crc(p_495->g_24.s7, "p_495->g_24.s7", print_hash_value);
    transparent_crc(p_495->g_24.s8, "p_495->g_24.s8", print_hash_value);
    transparent_crc(p_495->g_24.s9, "p_495->g_24.s9", print_hash_value);
    transparent_crc(p_495->g_24.sa, "p_495->g_24.sa", print_hash_value);
    transparent_crc(p_495->g_24.sb, "p_495->g_24.sb", print_hash_value);
    transparent_crc(p_495->g_24.sc, "p_495->g_24.sc", print_hash_value);
    transparent_crc(p_495->g_24.sd, "p_495->g_24.sd", print_hash_value);
    transparent_crc(p_495->g_24.se, "p_495->g_24.se", print_hash_value);
    transparent_crc(p_495->g_24.sf, "p_495->g_24.sf", print_hash_value);
    transparent_crc(p_495->g_63, "p_495->g_63", print_hash_value);
    transparent_crc(p_495->g_65.x, "p_495->g_65.x", print_hash_value);
    transparent_crc(p_495->g_65.y, "p_495->g_65.y", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_495->g_74[i][j][k], "p_495->g_74[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_495->g_77, "p_495->g_77", print_hash_value);
    transparent_crc(p_495->g_101.s0, "p_495->g_101.s0", print_hash_value);
    transparent_crc(p_495->g_101.s1, "p_495->g_101.s1", print_hash_value);
    transparent_crc(p_495->g_101.s2, "p_495->g_101.s2", print_hash_value);
    transparent_crc(p_495->g_101.s3, "p_495->g_101.s3", print_hash_value);
    transparent_crc(p_495->g_101.s4, "p_495->g_101.s4", print_hash_value);
    transparent_crc(p_495->g_101.s5, "p_495->g_101.s5", print_hash_value);
    transparent_crc(p_495->g_101.s6, "p_495->g_101.s6", print_hash_value);
    transparent_crc(p_495->g_101.s7, "p_495->g_101.s7", print_hash_value);
    transparent_crc(p_495->g_122.x, "p_495->g_122.x", print_hash_value);
    transparent_crc(p_495->g_122.y, "p_495->g_122.y", print_hash_value);
    transparent_crc(p_495->g_123.s0, "p_495->g_123.s0", print_hash_value);
    transparent_crc(p_495->g_123.s1, "p_495->g_123.s1", print_hash_value);
    transparent_crc(p_495->g_123.s2, "p_495->g_123.s2", print_hash_value);
    transparent_crc(p_495->g_123.s3, "p_495->g_123.s3", print_hash_value);
    transparent_crc(p_495->g_123.s4, "p_495->g_123.s4", print_hash_value);
    transparent_crc(p_495->g_123.s5, "p_495->g_123.s5", print_hash_value);
    transparent_crc(p_495->g_123.s6, "p_495->g_123.s6", print_hash_value);
    transparent_crc(p_495->g_123.s7, "p_495->g_123.s7", print_hash_value);
    transparent_crc(p_495->g_124.x, "p_495->g_124.x", print_hash_value);
    transparent_crc(p_495->g_124.y, "p_495->g_124.y", print_hash_value);
    transparent_crc(p_495->g_125.s0, "p_495->g_125.s0", print_hash_value);
    transparent_crc(p_495->g_125.s1, "p_495->g_125.s1", print_hash_value);
    transparent_crc(p_495->g_125.s2, "p_495->g_125.s2", print_hash_value);
    transparent_crc(p_495->g_125.s3, "p_495->g_125.s3", print_hash_value);
    transparent_crc(p_495->g_125.s4, "p_495->g_125.s4", print_hash_value);
    transparent_crc(p_495->g_125.s5, "p_495->g_125.s5", print_hash_value);
    transparent_crc(p_495->g_125.s6, "p_495->g_125.s6", print_hash_value);
    transparent_crc(p_495->g_125.s7, "p_495->g_125.s7", print_hash_value);
    transparent_crc(p_495->g_125.s8, "p_495->g_125.s8", print_hash_value);
    transparent_crc(p_495->g_125.s9, "p_495->g_125.s9", print_hash_value);
    transparent_crc(p_495->g_125.sa, "p_495->g_125.sa", print_hash_value);
    transparent_crc(p_495->g_125.sb, "p_495->g_125.sb", print_hash_value);
    transparent_crc(p_495->g_125.sc, "p_495->g_125.sc", print_hash_value);
    transparent_crc(p_495->g_125.sd, "p_495->g_125.sd", print_hash_value);
    transparent_crc(p_495->g_125.se, "p_495->g_125.se", print_hash_value);
    transparent_crc(p_495->g_125.sf, "p_495->g_125.sf", print_hash_value);
    transparent_crc(p_495->g_127.s0, "p_495->g_127.s0", print_hash_value);
    transparent_crc(p_495->g_127.s1, "p_495->g_127.s1", print_hash_value);
    transparent_crc(p_495->g_127.s2, "p_495->g_127.s2", print_hash_value);
    transparent_crc(p_495->g_127.s3, "p_495->g_127.s3", print_hash_value);
    transparent_crc(p_495->g_127.s4, "p_495->g_127.s4", print_hash_value);
    transparent_crc(p_495->g_127.s5, "p_495->g_127.s5", print_hash_value);
    transparent_crc(p_495->g_127.s6, "p_495->g_127.s6", print_hash_value);
    transparent_crc(p_495->g_127.s7, "p_495->g_127.s7", print_hash_value);
    transparent_crc(p_495->g_139, "p_495->g_139", print_hash_value);
    transparent_crc(p_495->g_149, "p_495->g_149", print_hash_value);
    transparent_crc(p_495->g_152, "p_495->g_152", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 1; j++)
        {
            transparent_crc(p_495->g_154[i][j], "p_495->g_154[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_495->g_160, "p_495->g_160", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_495->g_177[i], "p_495->g_177[i]", print_hash_value);

    }
    transparent_crc(p_495->g_178.x, "p_495->g_178.x", print_hash_value);
    transparent_crc(p_495->g_178.y, "p_495->g_178.y", print_hash_value);
    transparent_crc(p_495->g_199.s0, "p_495->g_199.s0", print_hash_value);
    transparent_crc(p_495->g_199.s1, "p_495->g_199.s1", print_hash_value);
    transparent_crc(p_495->g_199.s2, "p_495->g_199.s2", print_hash_value);
    transparent_crc(p_495->g_199.s3, "p_495->g_199.s3", print_hash_value);
    transparent_crc(p_495->g_199.s4, "p_495->g_199.s4", print_hash_value);
    transparent_crc(p_495->g_199.s5, "p_495->g_199.s5", print_hash_value);
    transparent_crc(p_495->g_199.s6, "p_495->g_199.s6", print_hash_value);
    transparent_crc(p_495->g_199.s7, "p_495->g_199.s7", print_hash_value);
    transparent_crc(p_495->g_252.s0, "p_495->g_252.s0", print_hash_value);
    transparent_crc(p_495->g_252.s1, "p_495->g_252.s1", print_hash_value);
    transparent_crc(p_495->g_252.s2, "p_495->g_252.s2", print_hash_value);
    transparent_crc(p_495->g_252.s3, "p_495->g_252.s3", print_hash_value);
    transparent_crc(p_495->g_252.s4, "p_495->g_252.s4", print_hash_value);
    transparent_crc(p_495->g_252.s5, "p_495->g_252.s5", print_hash_value);
    transparent_crc(p_495->g_252.s6, "p_495->g_252.s6", print_hash_value);
    transparent_crc(p_495->g_252.s7, "p_495->g_252.s7", print_hash_value);
    transparent_crc(p_495->g_252.s8, "p_495->g_252.s8", print_hash_value);
    transparent_crc(p_495->g_252.s9, "p_495->g_252.s9", print_hash_value);
    transparent_crc(p_495->g_252.sa, "p_495->g_252.sa", print_hash_value);
    transparent_crc(p_495->g_252.sb, "p_495->g_252.sb", print_hash_value);
    transparent_crc(p_495->g_252.sc, "p_495->g_252.sc", print_hash_value);
    transparent_crc(p_495->g_252.sd, "p_495->g_252.sd", print_hash_value);
    transparent_crc(p_495->g_252.se, "p_495->g_252.se", print_hash_value);
    transparent_crc(p_495->g_252.sf, "p_495->g_252.sf", print_hash_value);
    transparent_crc(p_495->g_253.s0, "p_495->g_253.s0", print_hash_value);
    transparent_crc(p_495->g_253.s1, "p_495->g_253.s1", print_hash_value);
    transparent_crc(p_495->g_253.s2, "p_495->g_253.s2", print_hash_value);
    transparent_crc(p_495->g_253.s3, "p_495->g_253.s3", print_hash_value);
    transparent_crc(p_495->g_253.s4, "p_495->g_253.s4", print_hash_value);
    transparent_crc(p_495->g_253.s5, "p_495->g_253.s5", print_hash_value);
    transparent_crc(p_495->g_253.s6, "p_495->g_253.s6", print_hash_value);
    transparent_crc(p_495->g_253.s7, "p_495->g_253.s7", print_hash_value);
    transparent_crc(p_495->g_253.s8, "p_495->g_253.s8", print_hash_value);
    transparent_crc(p_495->g_253.s9, "p_495->g_253.s9", print_hash_value);
    transparent_crc(p_495->g_253.sa, "p_495->g_253.sa", print_hash_value);
    transparent_crc(p_495->g_253.sb, "p_495->g_253.sb", print_hash_value);
    transparent_crc(p_495->g_253.sc, "p_495->g_253.sc", print_hash_value);
    transparent_crc(p_495->g_253.sd, "p_495->g_253.sd", print_hash_value);
    transparent_crc(p_495->g_253.se, "p_495->g_253.se", print_hash_value);
    transparent_crc(p_495->g_253.sf, "p_495->g_253.sf", print_hash_value);
    transparent_crc(p_495->g_260, "p_495->g_260", print_hash_value);
    transparent_crc(p_495->g_365.x, "p_495->g_365.x", print_hash_value);
    transparent_crc(p_495->g_365.y, "p_495->g_365.y", print_hash_value);
    transparent_crc(p_495->g_365.z, "p_495->g_365.z", print_hash_value);
    transparent_crc(p_495->g_365.w, "p_495->g_365.w", print_hash_value);
    transparent_crc(p_495->g_398, "p_495->g_398", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_495->g_405[i], "p_495->g_405[i]", print_hash_value);

    }
    transparent_crc(p_495->g_406, "p_495->g_406", print_hash_value);
    transparent_crc(p_495->g_485.s0, "p_495->g_485.s0", print_hash_value);
    transparent_crc(p_495->g_485.s1, "p_495->g_485.s1", print_hash_value);
    transparent_crc(p_495->g_485.s2, "p_495->g_485.s2", print_hash_value);
    transparent_crc(p_495->g_485.s3, "p_495->g_485.s3", print_hash_value);
    transparent_crc(p_495->g_485.s4, "p_495->g_485.s4", print_hash_value);
    transparent_crc(p_495->g_485.s5, "p_495->g_485.s5", print_hash_value);
    transparent_crc(p_495->g_485.s6, "p_495->g_485.s6", print_hash_value);
    transparent_crc(p_495->g_485.s7, "p_495->g_485.s7", print_hash_value);
    transparent_crc(p_495->g_485.s8, "p_495->g_485.s8", print_hash_value);
    transparent_crc(p_495->g_485.s9, "p_495->g_485.s9", print_hash_value);
    transparent_crc(p_495->g_485.sa, "p_495->g_485.sa", print_hash_value);
    transparent_crc(p_495->g_485.sb, "p_495->g_485.sb", print_hash_value);
    transparent_crc(p_495->g_485.sc, "p_495->g_485.sc", print_hash_value);
    transparent_crc(p_495->g_485.sd, "p_495->g_485.sd", print_hash_value);
    transparent_crc(p_495->g_485.se, "p_495->g_485.se", print_hash_value);
    transparent_crc(p_495->g_485.sf, "p_495->g_485.sf", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_495->g_489[i][j], "p_495->g_489[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_495->v_collective, "p_495->v_collective", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 54; i++)
            transparent_crc(p_495->l_special_values[i], "p_495->l_special_values[i]", print_hash_value);
    transparent_crc(p_495->l_comm_values[get_linear_local_id()], "p_495->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_495->g_comm_values[get_linear_group_id() * 74 + get_linear_local_id()], "p_495->g_comm_values[get_linear_group_id() * 74 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
