// --atomics 95 ---atomic_reductions ---fake_divergence ---inter_thread_comm -g 17,91,3 -l 17,7,1
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

__constant uint32_t permutations[10][119] = {
{34,107,7,37,28,25,83,117,43,58,108,33,69,113,76,55,71,20,19,61,8,93,48,98,39,96,68,51,21,114,97,77,106,79,102,72,44,99,80,2,59,115,112,75,10,22,82,57,24,91,78,15,65,73,32,53,47,81,87,23,56,41,101,49,13,63,67,74,103,36,12,29,11,62,26,116,35,40,90,88,86,6,94,85,27,3,16,54,31,42,4,118,66,92,110,104,111,14,9,30,18,17,89,84,70,105,46,45,64,0,5,100,50,52,109,95,1,60,38}, // permutation 0
{82,72,35,55,106,99,43,29,16,51,97,8,37,67,19,89,14,63,74,28,102,71,96,2,33,12,13,9,25,24,1,0,94,44,109,88,4,90,70,77,86,83,79,26,31,73,92,105,80,6,50,69,107,54,57,66,32,93,104,115,56,36,64,118,78,20,30,42,65,53,108,41,17,98,111,47,48,59,49,7,22,75,101,58,40,62,21,18,87,113,39,76,60,52,3,91,68,112,46,5,45,95,117,11,116,10,23,61,81,110,84,15,85,27,103,34,38,100,114}, // permutation 1
{79,45,65,116,55,91,15,33,64,108,81,85,99,54,98,17,82,94,50,10,34,90,104,16,76,60,0,110,49,14,36,71,74,114,8,20,5,61,96,4,89,22,84,2,37,105,32,39,87,13,12,107,26,115,27,43,78,58,80,68,109,6,29,101,97,42,56,35,106,48,93,41,30,67,103,72,62,18,38,102,73,1,3,53,70,57,88,31,77,75,25,86,24,23,47,51,63,117,44,19,9,69,11,40,66,83,95,113,100,112,7,92,118,21,52,28,111,59,46}, // permutation 2
{68,104,74,71,23,18,42,24,93,112,46,90,66,111,3,25,62,26,84,81,105,33,78,16,118,49,70,52,31,99,22,13,12,96,34,73,108,80,57,94,38,9,5,75,54,4,56,17,69,48,30,86,29,47,35,115,89,50,76,14,44,114,92,10,85,116,2,107,63,6,27,0,8,45,55,87,100,97,67,103,32,117,83,61,19,43,91,58,101,20,40,37,11,64,15,53,39,28,36,110,95,113,109,21,79,106,102,41,72,88,60,65,82,7,1,98,51,59,77}, // permutation 3
{60,90,93,52,92,51,2,1,64,21,20,9,67,10,116,63,59,56,66,76,28,30,69,77,19,7,40,24,26,17,89,100,74,41,97,102,73,70,71,29,104,46,4,55,75,42,78,11,13,50,44,48,96,103,99,86,37,31,32,57,39,6,49,114,34,81,88,95,84,38,16,22,91,47,36,14,101,113,12,65,45,58,115,80,109,106,108,94,117,15,3,18,43,82,68,118,53,0,8,61,33,85,54,62,107,83,5,27,87,110,79,98,72,105,25,23,112,111,35}, // permutation 4
{2,63,104,69,11,117,39,100,76,99,45,51,49,53,68,24,111,97,52,73,27,31,84,113,70,95,36,85,21,23,109,75,88,40,60,59,101,57,47,80,17,44,62,61,108,20,118,29,71,110,56,90,93,114,7,67,115,65,81,116,105,78,77,4,64,112,89,18,16,6,82,46,92,12,25,38,32,42,86,8,26,37,30,106,66,79,0,1,74,72,83,15,13,10,107,9,5,33,87,22,94,43,35,41,91,50,55,98,48,96,3,103,58,28,102,19,34,14,54}, // permutation 5
{6,0,14,69,85,64,41,5,96,35,81,49,63,90,58,50,66,4,117,18,118,82,93,15,62,72,28,80,78,54,19,89,12,68,7,77,91,24,20,95,94,113,74,75,17,33,52,51,27,37,92,110,44,13,83,67,100,57,59,88,23,47,111,114,55,60,45,103,101,56,25,9,3,61,107,108,112,84,30,116,46,102,26,76,11,109,79,70,8,31,99,40,1,38,10,97,39,73,53,105,42,104,98,2,65,22,36,71,87,32,106,21,86,43,16,34,29,48,115}, // permutation 6
{115,8,28,116,78,52,114,113,48,109,47,102,56,76,3,101,21,106,19,46,97,12,90,43,83,68,71,104,88,37,50,14,53,55,1,24,66,72,99,13,84,31,35,65,70,20,85,100,36,108,15,34,67,93,82,74,54,98,27,57,79,17,58,26,77,91,41,89,7,95,23,62,61,39,6,10,51,60,25,96,32,86,64,49,5,110,11,112,42,118,9,80,105,81,29,40,117,63,2,45,87,92,111,107,38,44,94,18,75,4,30,33,73,0,22,59,103,16,69}, // permutation 7
{53,5,95,61,91,37,114,118,52,22,82,76,88,115,0,11,113,38,15,39,108,28,90,54,27,106,68,105,85,73,77,103,57,41,75,60,16,48,23,25,93,101,1,20,79,98,9,3,89,65,12,110,18,31,66,51,50,111,6,32,69,109,100,56,72,107,36,34,84,59,33,13,62,97,94,8,46,112,43,102,71,116,17,87,10,81,24,74,42,45,40,44,92,7,26,2,58,47,30,67,104,117,78,63,49,55,80,21,19,64,96,70,29,35,83,4,99,14,86}, // permutation 8
{23,0,99,53,19,26,50,30,115,16,66,35,79,1,77,40,37,52,104,117,81,62,112,46,3,28,75,64,20,54,47,58,13,73,96,80,67,90,70,44,72,88,105,38,5,71,14,21,69,109,9,84,89,91,32,36,56,8,27,100,87,24,34,51,92,55,2,43,57,41,106,11,102,76,17,86,18,118,6,85,59,78,15,31,113,68,94,65,93,111,63,12,7,48,108,4,101,74,42,61,60,98,49,103,116,82,29,45,22,114,83,33,107,110,95,25,39,10,97} // permutation 9
};

// Seed: 52

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    volatile VECTOR(int16_t, 8) g_9;
    int32_t g_68;
    uint8_t g_71;
    uint32_t g_76;
    uint32_t g_79;
    int32_t g_86[10];
    VECTOR(uint32_t, 4) g_99;
    VECTOR(uint32_t, 16) g_100;
    VECTOR(uint8_t, 2) g_101;
    int8_t g_141;
    uint64_t g_149;
    VECTOR(uint64_t, 16) g_162;
    int16_t g_198;
    uint64_t g_216[5][6];
    int32_t g_223;
    VECTOR(uint16_t, 8) g_244;
    VECTOR(uint16_t, 16) g_245;
    VECTOR(int64_t, 16) g_272;
    int32_t *g_292;
    VECTOR(int64_t, 2) g_313;
    VECTOR(int64_t, 4) g_331;
    VECTOR(int16_t, 16) g_342;
    int8_t *g_348;
    VECTOR(int8_t, 16) g_352;
    VECTOR(int8_t, 4) g_353;
    VECTOR(int8_t, 4) g_359;
    uint32_t g_387;
    int64_t *g_437;
    int32_t g_486;
    VECTOR(int16_t, 2) g_490;
    uint8_t g_517;
    VECTOR(int32_t, 8) g_530;
    VECTOR(int32_t, 4) g_545;
    VECTOR(int32_t, 2) g_555;
    VECTOR(int32_t, 8) g_558;
    VECTOR(int8_t, 2) g_563;
    VECTOR(int8_t, 8) g_565;
    VECTOR(int8_t, 4) g_566;
    VECTOR(int8_t, 16) g_597;
    VECTOR(int16_t, 4) g_619;
    VECTOR(int64_t, 2) g_633;
    VECTOR(uint64_t, 2) g_642;
    VECTOR(uint8_t, 16) g_664;
    int16_t *g_688[1][6];
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
uint32_t  func_1(struct S0 * p_718);
int32_t  func_2(uint16_t  p_3, uint32_t  p_4, struct S0 * p_718);
int16_t  func_14(uint32_t  p_15, uint32_t  p_16, struct S0 * p_718);
int64_t  func_17(uint64_t  p_18, uint32_t  p_19, int64_t  p_20, struct S0 * p_718);
int64_t  func_22(uint32_t  p_23, uint16_t  p_24, uint32_t  p_25, int32_t  p_26, uint32_t  p_27, struct S0 * p_718);
int8_t  func_33(uint64_t  p_34, int32_t  p_35, struct S0 * p_718);
uint32_t  func_42(uint32_t  p_43, int32_t  p_44, int64_t  p_45, int16_t  p_46, struct S0 * p_718);
uint32_t  func_50(uint8_t  p_51, int8_t  p_52, int64_t  p_53, uint16_t  p_54, struct S0 * p_718);
uint32_t  func_64(int64_t  p_65, struct S0 * p_718);
int32_t  func_87(uint64_t  p_88, int8_t  p_89, uint32_t * p_90, int32_t  p_91, struct S0 * p_718);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_718->g_9 p_718->g_comm_values p_718->l_comm_values p_718->g_162 p_718->g_100 p_718->g_245 p_718->g_292 p_718->g_101 p_718->g_216 p_718->g_223 p_718->g_313 p_718->g_86 p_718->g_387 p_718->g_352 p_718->g_331 p_718->g_198 p_718->g_149 p_718->g_99 p_718->g_359 p_718->g_272 p_718->g_68 p_718->g_76 p_718->g_545 p_718->g_555 p_718->g_558 p_718->g_563 p_718->g_565 p_718->g_566 p_718->g_353 p_718->g_597 p_718->g_619 p_718->g_633 p_718->g_642 p_718->g_664 p_718->g_141 p_718->g_71
 * writes: p_718->g_68 p_718->g_86 p_718->g_292 p_718->g_198 p_718->g_216 p_718->g_223 p_718->g_387 p_718->g_100 p_718->g_149 p_718->g_99 p_718->g_76 p_718->g_359 p_718->g_566 p_718->g_517 p_718->g_331 p_718->g_688 p_718->g_141 p_718->g_71
 */
uint32_t  func_1(struct S0 * p_718)
{ /* block id: 4 */
    int64_t l_21 = 4L;
    int8_t l_32 = 5L;
    int32_t *l_717 = &p_718->g_223;
    (*l_717) = func_2((safe_rshift_func_uint16_t_u_u((6L & (((VECTOR(int16_t, 4))(p_718->g_9.s3721)).z < (safe_div_func_int64_t_s_s((safe_mul_func_int16_t_s_s(func_14((func_17(p_718->g_comm_values[p_718->tid], l_21, func_22(((safe_div_func_int32_t_s_s((safe_add_func_uint32_t_u_u((l_21 && l_32), ((((VECTOR(int8_t, 8))(rotate(((VECTOR(int8_t, 16))(func_33(((safe_lshift_func_int16_t_s_u(((VECTOR(int16_t, 4))(0x24C8L, 1L, (-1L), 0x5D93L)).w, 6)) < ((p_718->l_comm_values[(safe_mod_func_uint32_t_u_u(p_718->tid, 119))] >= p_718->g_comm_values[p_718->tid]) != l_21)), l_32, p_718), 0x7AL, ((VECTOR(int8_t, 2))(0L)), l_32, 0x06L, l_21, (-5L), 0x7BL, (-2L), (-2L), 0x4AL, ((VECTOR(int8_t, 4))(0L)))).even, ((VECTOR(int8_t, 8))(0x31L))))).s1 || 0UL) < 0x94C3L))), l_32)) > l_32), p_718->g_331.x, p_718->g_313.y, l_32, p_718->g_331.z, p_718), p_718) ^ l_32), p_718->g_352.s4, p_718), 0x3132L)), 18446744073709551615UL)))), 12)), p_718->g_642.x, p_718);
    return (*l_717);
}


/* ------------------------------------------ */
/* 
 * reads : p_718->g_597
 * writes: p_718->g_198
 */
int32_t  func_2(uint16_t  p_3, uint32_t  p_4, struct S0 * p_718)
{ /* block id: 342 */
    VECTOR(uint32_t, 2) l_712 = (VECTOR(uint32_t, 2))(0xAC5FEFE1L, 1UL);
    int16_t *l_715 = &p_718->g_198;
    int32_t l_716[2];
    int i;
    for (i = 0; i < 2; i++)
        l_716[i] = 0x0A74E7DCL;
    l_716[0] |= (safe_sub_func_uint16_t_u_u(((safe_mod_func_uint32_t_u_u(((VECTOR(uint32_t, 4))(l_712.yxxy)).y, GROUP_DIVERGE(1, 1))) != (0x238CL != p_3)), ((*l_715) = (safe_mod_func_uint32_t_u_u(1UL, p_718->g_597.s3)))));
    return l_712.x;
}


/* ------------------------------------------ */
/* 
 * reads : p_718->g_633 p_718->g_664 p_718->g_100 p_718->l_comm_values p_718->g_141 p_718->g_101 p_718->g_71 p_718->g_555 p_718->g_292 p_718->g_86
 * writes: p_718->g_216 p_718->g_688 p_718->g_141 p_718->g_71 p_718->g_86
 */
int16_t  func_14(uint32_t  p_15, uint32_t  p_16, struct S0 * p_718)
{ /* block id: 327 */
    uint32_t *l_659[8];
    VECTOR(uint8_t, 16) l_665 = (VECTOR(uint8_t, 16))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 0x7FL), 0x7FL), 0x7FL, 1UL, 0x7FL, (VECTOR(uint8_t, 2))(1UL, 0x7FL), (VECTOR(uint8_t, 2))(1UL, 0x7FL), 1UL, 0x7FL, 1UL, 0x7FL);
    VECTOR(uint8_t, 4) l_666 = (VECTOR(uint8_t, 4))(0x8FL, (VECTOR(uint8_t, 2))(0x8FL, 1UL), 1UL);
    VECTOR(uint8_t, 8) l_667 = (VECTOR(uint8_t, 8))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 7UL), 7UL), 7UL, 0UL, 7UL);
    VECTOR(uint8_t, 8) l_668 = (VECTOR(uint8_t, 8))(0x3FL, (VECTOR(uint8_t, 4))(0x3FL, (VECTOR(uint8_t, 2))(0x3FL, 0xAEL), 0xAEL), 0xAEL, 0x3FL, 0xAEL);
    VECTOR(uint8_t, 2) l_669 = (VECTOR(uint8_t, 2))(0xE3L, 255UL);
    VECTOR(uint8_t, 16) l_670 = (VECTOR(uint8_t, 16))(0x5AL, (VECTOR(uint8_t, 4))(0x5AL, (VECTOR(uint8_t, 2))(0x5AL, 0xD5L), 0xD5L), 0xD5L, 0x5AL, 0xD5L, (VECTOR(uint8_t, 2))(0x5AL, 0xD5L), (VECTOR(uint8_t, 2))(0x5AL, 0xD5L), 0x5AL, 0xD5L, 0x5AL, 0xD5L);
    uint64_t *l_675 = &p_718->g_216[0][5];
    int16_t *l_686[3];
    int16_t **l_687[2][10];
    int8_t *l_689 = &p_718->g_141;
    uint8_t *l_690 = &p_718->g_71;
    int16_t l_691 = 9L;
    int32_t *l_692 = (void*)0;
    int32_t l_693 = 0x513886D1L;
    int32_t *l_694 = (void*)0;
    int32_t *l_695 = &l_693;
    int32_t *l_696[8][2] = {{&l_693,(void*)0},{&l_693,(void*)0},{&l_693,(void*)0},{&l_693,(void*)0},{&l_693,(void*)0},{&l_693,(void*)0},{&l_693,(void*)0},{&l_693,(void*)0}};
    int32_t l_697 = 0x4F7A62FFL;
    int32_t l_698 = 0x010EE46BL;
    int16_t l_699 = 3L;
    int8_t l_700[3];
    uint64_t l_701 = 0xAA8521434DDCC5D4L;
    int32_t **l_707 = &l_696[2][1];
    int i, j;
    for (i = 0; i < 8; i++)
        l_659[i] = &p_718->g_387;
    for (i = 0; i < 3; i++)
        l_686[i] = (void*)0;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 10; j++)
            l_687[i][j] = &l_686[0];
    }
    for (i = 0; i < 3; i++)
        l_700[i] = (-10L);
    (*p_718->g_292) ^= (safe_mod_func_uint64_t_u_u((p_718->g_633.x == ((safe_sub_func_uint32_t_u_u((l_659[1] != &p_718->g_76), (safe_mod_func_int64_t_s_s(((safe_add_func_uint8_t_u_u(((VECTOR(uint8_t, 2))(mad_hi(((VECTOR(uint8_t, 16))(0x12L, 1UL, ((VECTOR(uint8_t, 4))(p_718->g_664.s8a49)), ((VECTOR(uint8_t, 8))(mad_hi(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 16))(sub_sat(((VECTOR(uint8_t, 2))(l_665.sca)).xyyyyyyxyxxyxxyx, ((VECTOR(uint8_t, 8))(l_666.zyxwywzx)).s6013535055631232))).s9874)).yxwxywxw, ((VECTOR(uint8_t, 4))(l_667.s1420)).yxyzzyxz, ((VECTOR(uint8_t, 4))(l_668.s4133)).zxxzzzwz))), 0x52L, 253UL)).s9e, ((VECTOR(uint8_t, 8))(l_669.xxxyxxxy)).s42, ((VECTOR(uint8_t, 8))(l_670.s000e07e4)).s24))).even, (-6L))) == (((*l_690) ^= (safe_sub_func_uint64_t_u_u(((*l_675) = (safe_mul_func_uint16_t_u_u(0xD5A7L, p_718->g_100.sa))), (~((safe_mul_func_int8_t_s_s((safe_sub_func_int64_t_s_s((safe_add_func_uint64_t_u_u((p_718->l_comm_values[(safe_mod_func_uint32_t_u_u(p_718->tid, 119))] & ((safe_lshift_func_uint16_t_u_s((((*l_689) |= ((p_718->g_688[0][3] = l_686[0]) != &p_718->g_198)) & 0x5EL), l_665.s5)) >= 0UL)), 0x2851536A257424F4L)), p_718->g_101.y)), l_668.s3)) != FAKE_DIVERGE(p_718->local_0_offset, get_local_id(0), 10)))))) ^ p_16)), p_15)))) == p_718->g_555.x)), 0x13DCEBAE68E88D36L));
    ++l_701;
    for (l_691 = 20; (l_691 >= 16); l_691 = safe_sub_func_uint64_t_u_u(l_691, 8))
    { /* block id: 336 */
        int16_t l_706 = 0x30BCL;
        if (l_706)
            break;
        return l_706;
    }
    (*l_707) = &l_693;
    return p_15;
}


/* ------------------------------------------ */
/* 
 * reads : p_718->g_198 p_718->g_223 p_718->g_76 p_718->g_545 p_718->g_555 p_718->g_558 p_718->g_563 p_718->g_565 p_718->g_566 p_718->g_353 p_718->g_149 p_718->g_272 p_718->g_216 p_718->g_292 p_718->g_86 p_718->g_68 p_718->g_597 p_718->g_619 p_718->g_633 p_718->g_642 p_718->g_100
 * writes: p_718->g_292 p_718->g_198 p_718->g_223 p_718->g_76 p_718->g_359 p_718->g_86 p_718->g_68 p_718->g_566 p_718->g_517 p_718->g_100 p_718->g_331
 */
int64_t  func_17(uint64_t  p_18, uint32_t  p_19, int64_t  p_20, struct S0 * p_718)
{ /* block id: 229 */
    int32_t *l_420 = &p_718->g_86[6];
    int32_t **l_421 = (void*)0;
    int32_t **l_422 = (void*)0;
    int32_t **l_423 = &p_718->g_292;
    uint32_t *l_438[8];
    int32_t l_527 = (-1L);
    int8_t l_531 = 4L;
    int32_t l_532 = (-4L);
    int32_t l_533 = 0L;
    int32_t l_534[7];
    uint32_t l_579 = 9UL;
    VECTOR(int8_t, 4) l_599 = (VECTOR(int8_t, 4))((-6L), (VECTOR(int8_t, 2))((-6L), 0x6BL), 0x6BL);
    VECTOR(uint64_t, 16) l_602 = (VECTOR(uint64_t, 16))(18446744073709551615UL, (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0xAEBEDAE11A78C62AL), 0xAEBEDAE11A78C62AL), 0xAEBEDAE11A78C62AL, 18446744073709551615UL, 0xAEBEDAE11A78C62AL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0xAEBEDAE11A78C62AL), (VECTOR(uint64_t, 2))(18446744073709551615UL, 0xAEBEDAE11A78C62AL), 18446744073709551615UL, 0xAEBEDAE11A78C62AL, 18446744073709551615UL, 0xAEBEDAE11A78C62AL);
    int32_t l_611 = 0L;
    uint64_t l_613[8][10] = {{0UL,0x9A6E7F0856D2AF94L,0x540F50F7904A7106L,1UL,0x9A6E7F0856D2AF94L,1UL,0x540F50F7904A7106L,0x9A6E7F0856D2AF94L,0UL,0UL},{0UL,0x9A6E7F0856D2AF94L,0x540F50F7904A7106L,1UL,0x9A6E7F0856D2AF94L,1UL,0x540F50F7904A7106L,0x9A6E7F0856D2AF94L,0UL,0UL},{0UL,0x9A6E7F0856D2AF94L,0x540F50F7904A7106L,1UL,0x9A6E7F0856D2AF94L,1UL,0x540F50F7904A7106L,0x9A6E7F0856D2AF94L,0UL,0UL},{0UL,0x9A6E7F0856D2AF94L,0x540F50F7904A7106L,1UL,0x9A6E7F0856D2AF94L,1UL,0x540F50F7904A7106L,0x9A6E7F0856D2AF94L,0UL,0UL},{0UL,0x9A6E7F0856D2AF94L,0x540F50F7904A7106L,1UL,0x9A6E7F0856D2AF94L,1UL,0x540F50F7904A7106L,0x9A6E7F0856D2AF94L,0UL,0UL},{0UL,0x9A6E7F0856D2AF94L,0x540F50F7904A7106L,1UL,0x9A6E7F0856D2AF94L,1UL,0x540F50F7904A7106L,0x9A6E7F0856D2AF94L,0UL,0UL},{0UL,0x9A6E7F0856D2AF94L,0x540F50F7904A7106L,1UL,0x9A6E7F0856D2AF94L,1UL,0x540F50F7904A7106L,0x9A6E7F0856D2AF94L,0UL,0UL},{0UL,0x9A6E7F0856D2AF94L,0x540F50F7904A7106L,1UL,0x9A6E7F0856D2AF94L,1UL,0x540F50F7904A7106L,0x9A6E7F0856D2AF94L,0UL,0UL}};
    VECTOR(int32_t, 4) l_618 = (VECTOR(int32_t, 4))((-9L), (VECTOR(int32_t, 2))((-9L), 1L), 1L);
    uint16_t l_640 = 0x1A4CL;
    int i, j;
    for (i = 0; i < 8; i++)
        l_438[i] = &p_718->g_79;
    for (i = 0; i < 7; i++)
        l_534[i] = 0x2207ED94L;
    (*l_423) = l_420;
    for (p_718->g_198 = 13; (p_718->g_198 == 14); p_718->g_198 = safe_add_func_int32_t_s_s(p_718->g_198, 3))
    { /* block id: 233 */
        VECTOR(uint32_t, 2) l_443 = (VECTOR(uint32_t, 2))(0x2F5D25ACL, 4294967292UL);
        int32_t l_473 = (-5L);
        int32_t l_537 = 0x0B184010L;
        int32_t l_540 = 0x43B0F5CAL;
        VECTOR(int32_t, 16) l_557 = (VECTOR(int32_t, 16))(0x02E56892L, (VECTOR(int32_t, 4))(0x02E56892L, (VECTOR(int32_t, 2))(0x02E56892L, (-1L)), (-1L)), (-1L), 0x02E56892L, (-1L), (VECTOR(int32_t, 2))(0x02E56892L, (-1L)), (VECTOR(int32_t, 2))(0x02E56892L, (-1L)), 0x02E56892L, (-1L), 0x02E56892L, (-1L));
        VECTOR(int8_t, 16) l_564 = (VECTOR(int8_t, 16))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x7BL), 0x7BL), 0x7BL, 1L, 0x7BL, (VECTOR(int8_t, 2))(1L, 0x7BL), (VECTOR(int8_t, 2))(1L, 0x7BL), 1L, 0x7BL, 1L, 0x7BL);
        uint32_t l_578[7] = {0xB0BD1382L,0xB0BD1382L,0xB0BD1382L,0xB0BD1382L,0xB0BD1382L,0xB0BD1382L,0xB0BD1382L};
        uint16_t l_603 = 65535UL;
        uint32_t l_610 = 0xBC9EBEC7L;
        VECTOR(uint64_t, 8) l_641 = (VECTOR(uint64_t, 8))(0xA72AAD9906056739L, (VECTOR(uint64_t, 4))(0xA72AAD9906056739L, (VECTOR(uint64_t, 2))(0xA72AAD9906056739L, 0xAA01B079C1DD6C62L), 0xAA01B079C1DD6C62L), 0xAA01B079C1DD6C62L, 0xA72AAD9906056739L, 0xAA01B079C1DD6C62L);
        uint64_t *l_653 = &l_613[7][9];
        int64_t *l_654[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int i;
        for (p_718->g_223 = (-15); (p_718->g_223 != 7); p_718->g_223 = safe_add_func_int32_t_s_s(p_718->g_223, 1))
        { /* block id: 236 */
            int32_t *l_449[7][10] = {{(void*)0,(void*)0,&p_718->g_223,&p_718->g_86[7],&p_718->g_86[0],&p_718->g_86[7],&p_718->g_223,(void*)0,(void*)0,&p_718->g_223},{(void*)0,(void*)0,&p_718->g_223,&p_718->g_86[7],&p_718->g_86[0],&p_718->g_86[7],&p_718->g_223,(void*)0,(void*)0,&p_718->g_223},{(void*)0,(void*)0,&p_718->g_223,&p_718->g_86[7],&p_718->g_86[0],&p_718->g_86[7],&p_718->g_223,(void*)0,(void*)0,&p_718->g_223},{(void*)0,(void*)0,&p_718->g_223,&p_718->g_86[7],&p_718->g_86[0],&p_718->g_86[7],&p_718->g_223,(void*)0,(void*)0,&p_718->g_223},{(void*)0,(void*)0,&p_718->g_223,&p_718->g_86[7],&p_718->g_86[0],&p_718->g_86[7],&p_718->g_223,(void*)0,(void*)0,&p_718->g_223},{(void*)0,(void*)0,&p_718->g_223,&p_718->g_86[7],&p_718->g_86[0],&p_718->g_86[7],&p_718->g_223,(void*)0,(void*)0,&p_718->g_223},{(void*)0,(void*)0,&p_718->g_223,&p_718->g_86[7],&p_718->g_86[0],&p_718->g_86[7],&p_718->g_223,(void*)0,(void*)0,&p_718->g_223}};
            int64_t l_523[2][4] = {{0x118F731ABCCE2CAFL,0x6CDC36DC3161FD81L,0x118F731ABCCE2CAFL,0x118F731ABCCE2CAFL},{0x118F731ABCCE2CAFL,0x6CDC36DC3161FD81L,0x118F731ABCCE2CAFL,0x118F731ABCCE2CAFL}};
            VECTOR(int8_t, 8) l_548 = (VECTOR(int8_t, 8))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), (-1L)), (-1L)), (-1L), (-1L), (-1L));
            VECTOR(int32_t, 2) l_556 = (VECTOR(int32_t, 2))((-6L), (-10L));
            int16_t *l_573 = (void*)0;
            int16_t *l_574 = (void*)0;
            int16_t *l_575 = (void*)0;
            int16_t *l_576 = (void*)0;
            int16_t *l_577[1];
            uint32_t *l_580 = (void*)0;
            uint64_t *l_628 = &l_613[2][4];
            uint8_t *l_635 = &p_718->g_517;
            uint8_t **l_634 = &l_635;
            int i, j;
            for (i = 0; i < 1; i++)
                l_577[i] = (void*)0;
            for (p_718->g_76 = 24; (p_718->g_76 != 60); ++p_718->g_76)
            { /* block id: 239 */
                uint8_t l_432 = 251UL;
                uint32_t *l_439 = (void*)0;
                int32_t l_458 = (-1L);
                int32_t l_484 = 7L;
                VECTOR(uint64_t, 8) l_507 = (VECTOR(uint64_t, 8))(0xB27DDE4A3F8B84F6L, (VECTOR(uint64_t, 4))(0xB27DDE4A3F8B84F6L, (VECTOR(uint64_t, 2))(0xB27DDE4A3F8B84F6L, 0x1F0056F20E71E966L), 0x1F0056F20E71E966L), 0x1F0056F20E71E966L, 0xB27DDE4A3F8B84F6L, 0x1F0056F20E71E966L);
                VECTOR(int8_t, 8) l_514 = (VECTOR(int8_t, 8))(0x77L, (VECTOR(int8_t, 4))(0x77L, (VECTOR(int8_t, 2))(0x77L, 0x76L), 0x76L), 0x76L, 0x77L, 0x76L);
                int32_t l_536[3];
                int i;
                for (i = 0; i < 3; i++)
                    l_536[i] = 0x63DACBE4L;
                (1 + 1);
            }
            if (l_473)
                continue;
            p_718->g_68 &= ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(max(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(p_718->g_545.wx)).xxyx)).xzyzyzyyyxxzzzzy, (int32_t)(safe_sub_func_uint32_t_u_u((l_557.s4 = (((p_718->g_359.y = ((VECTOR(int8_t, 16))(l_548.s4226424152312160)).s5) , ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 2))(clz(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(0xBBF389CFL, 1UL)).xxyy)).hi))))).lo) | (safe_lshift_func_uint16_t_u_u((safe_rshift_func_uint16_t_u_s((((safe_div_func_int32_t_s_s(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(mad_sat(((VECTOR(int32_t, 16))(max(((VECTOR(int32_t, 4))(mad_sat(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(add_sat(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(0x35DFF840L, ((VECTOR(int32_t, 2))(p_718->g_555.yx)), 0x0F36B97AL)).xwyyzyxy)).even, ((VECTOR(int32_t, 2))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 2))(0x640F0D59L, (-1L))), ((VECTOR(int32_t, 2))(l_556.xy)), ((VECTOR(int32_t, 4))(0x605C19C4L, ((VECTOR(int32_t, 2))(0x43667B15L, 0x46102D6BL)), 0x5E18858EL)).even))).xyxy))).odd)).yyxx, ((VECTOR(int32_t, 8))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(min(((VECTOR(int32_t, 8))(0x47AEEEABL, ((VECTOR(int32_t, 2))(rotate(((VECTOR(int32_t, 2))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 8))(l_557.s291b8a23)).s72, ((VECTOR(int32_t, 16))(p_718->g_558.s4421242303240472)).s17, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(clz(((VECTOR(int32_t, 8))(0x675AC424L, ((VECTOR(int32_t, 2))(0x74EF56C7L, 0x7501CA5FL)), ((safe_div_func_uint32_t_u_u((safe_mod_func_int16_t_s_s((((p_20 != (((VECTOR(int16_t, 4))(upsample(((VECTOR(int8_t, 4))(mul_hi(((VECTOR(int8_t, 8))(5L, 0L, 0x62L, ((VECTOR(int8_t, 2))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 2),((VECTOR(int8_t, 2))(0x00L, 1L)), ((VECTOR(int8_t, 4))(p_718->g_563.xyxx)).hi, ((VECTOR(int8_t, 8))(0x23L, ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 4))(l_564.s8723)))), ((VECTOR(int8_t, 2))(clz(((VECTOR(int8_t, 16))(mad_sat(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(p_718->g_565.s17337442)).s14)).yyxxxxxyxyyxyyxx, ((VECTOR(int8_t, 2))(p_718->g_566.xw)).xxxxxyyyxxxxxyxy, ((VECTOR(int8_t, 8))(0L, (safe_div_func_uint32_t_u_u((safe_sub_func_uint64_t_u_u((safe_rshift_func_int8_t_s_s(0x57L, 4)), (((((l_473 = (p_718->g_353.x ^ ((0xEAD5L && p_19) , ((*l_420) = p_718->g_149)))) , 0UL) == p_718->g_555.x) , l_564.s1) && p_718->g_272.se))), p_718->g_545.z)), ((VECTOR(int8_t, 2))(0L)), 0x7AL, 0x5AL, 7L, 1L)).s4703601616367745))).s81))), 0x39L)).s64))), (-1L), 0x64L, 0x5FL)).even, ((VECTOR(int8_t, 4))((-6L)))))), ((VECTOR(uint8_t, 4))(0x19L))))).w , p_718->g_216[3][0])) && 0x76L) < 0xF0L), 0x591DL)), 0x1A3034DEL)) >= p_718->g_545.x), l_578[0], l_578[0], 0L, 0L)).s74))), (*p_718->g_292), ((VECTOR(int32_t, 8))(0L)), ((VECTOR(int32_t, 2))(0x609BA7A7L)), 1L, 1L, 0x7E4163B6L)).sa4))), ((VECTOR(int32_t, 2))(4L))))), p_19, p_19, ((VECTOR(int32_t, 2))(0x1FE8829AL)), 0x6C402677L)).s02, (int32_t)(*p_718->g_292)))).yyxyxyxyyxxxyxxy)).lo)), ((VECTOR(int32_t, 8))((-6L))), ((VECTOR(int32_t, 8))(0x597F16B0L))))).lo, ((VECTOR(int32_t, 4))((-1L)))))).xxyyyzyxyyxzyzzw, (int32_t)(*p_718->g_292)))).s38, ((VECTOR(int32_t, 2))((-7L))), ((VECTOR(int32_t, 2))(0x579F69E9L))))), ((VECTOR(int32_t, 8))(0x0D164B01L)), (*p_718->g_292), (-8L), l_473, ((VECTOR(int32_t, 2))((-1L))), (-8L))).sf, p_718->g_566.y)) && p_718->g_566.z) != l_579), 8)), p_19)))), l_578[3]))))))).se;
            for (l_537 = (-22); (l_537 >= (-28)); l_537--)
            { /* block id: 294 */
                uint8_t *l_584[8];
                uint8_t **l_583 = &l_584[2];
                uint8_t ***l_585 = &l_583;
                VECTOR(int8_t, 2) l_595 = (VECTOR(int8_t, 2))(0x55L, 0x46L);
                VECTOR(int8_t, 8) l_596 = (VECTOR(int8_t, 8))(0x20L, (VECTOR(int8_t, 4))(0x20L, (VECTOR(int8_t, 2))(0x20L, 0x59L), 0x59L), 0x59L, 0x20L, 0x59L);
                VECTOR(int8_t, 8) l_598 = (VECTOR(int8_t, 8))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0L), 0L), 0L, (-1L), 0L);
                uint32_t *l_604 = (void*)0;
                uint32_t *l_605 = (void*)0;
                uint32_t *l_606 = (void*)0;
                uint32_t *l_607 = (void*)0;
                uint32_t *l_608 = (void*)0;
                uint32_t *l_609[7];
                int8_t *l_612[3][1][1];
                int32_t *l_632 = &p_718->g_86[6];
                int i, j, k;
                for (i = 0; i < 8; i++)
                    l_584[i] = &p_718->g_517;
                for (i = 0; i < 7; i++)
                    l_609[i] = (void*)0;
                for (i = 0; i < 3; i++)
                {
                    for (j = 0; j < 1; j++)
                    {
                        for (k = 0; k < 1; k++)
                            l_612[i][j][k] = (void*)0;
                    }
                }
                (*l_585) = l_583;
                if ((safe_mul_func_int8_t_s_s(0x67L, (safe_unary_minus_func_uint64_t_u(((p_718->g_566.y = ((((void*)0 != &p_718->g_149) , (safe_lshift_func_int8_t_s_s(((safe_add_func_int8_t_s_s(p_20, (safe_rshift_func_int16_t_s_s(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))(clz(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(sub_sat(((VECTOR(int16_t, 4))(upsample(((VECTOR(int8_t, 4))(hadd(((VECTOR(int8_t, 8))(l_595.xxxyyyyx)).even, ((VECTOR(int8_t, 8))(clz(((VECTOR(int8_t, 8))(1L, ((VECTOR(int8_t, 4))(mad_sat(((VECTOR(int8_t, 2))(0x24L, 7L)).xxyy, ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 16))(clz(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(l_596.s5671)).zzyyyzxx)), ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(p_718->g_597.s69c366e2)), 0x7CL, 0x0BL, ((VECTOR(int8_t, 2))(l_598.s75)), ((VECTOR(int8_t, 2))(0x2EL, (-1L))), 0x71L, (-1L))).s4e42)), 0x4DL, 0L, (-1L), 0x61L))))))).sf8cd, ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(l_599.wyyx)).even)).yyxyxxxx)).even))), ((safe_div_func_int8_t_s_s((((+(((0UL == ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(l_602.sfac5)).xzzyzwxw)).s1534017654333521)).s7) != (l_610 = ((*l_420) |= l_603))) >= (p_20 < ((p_19 && ((((p_20 ^ p_19) , 0x1ACF9B968BF005C6L) , (-1L)) , p_19)) < p_20)))) && (-1L)) == p_20), p_718->g_545.w)) & GROUP_DIVERGE(2, 1)), 0L, 4L))))).odd))), ((VECTOR(uint8_t, 4))(0x95L))))).xyzwwxww, ((VECTOR(int16_t, 8))(1L))))).s3013773044115555)).even))).s47)).even, p_718->g_565.s6)))) ^ 0x45E7AEBAA08AEA7CL), l_611))) & 255UL)) | l_613[7][9]))))))
                { /* block id: 299 */
                    int16_t l_629 = 1L;
                    int32_t l_630 = 0x122E78E2L;
                    (**l_423) = (((safe_add_func_uint64_t_u_u(0xE80357992603BF46L, (&p_20 == (void*)0))) >= p_18) , (((safe_div_func_uint8_t_u_u((l_630 = ((**l_583) = (~(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(mul_hi(((VECTOR(int32_t, 2))(1L, 0x11F824CCL)).xxyxxxxy, ((VECTOR(int32_t, 2))(safe_clamp_func(VECTOR(int32_t, 2),int32_t,((VECTOR(int32_t, 2))(l_618.zz)), (int32_t)1L, (int32_t)(0x204EL & 9UL)))).xyxxxxxx))).lo)).z <= ((((VECTOR(int16_t, 8))(add_sat(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 16))(min(((VECTOR(int16_t, 8))(9L, ((VECTOR(int16_t, 4))(hadd(((VECTOR(int16_t, 4))(min(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(p_718->g_619.zyxw)).wyywzwww)).hi, (int16_t)(safe_sub_func_int16_t_s_s((safe_sub_func_uint64_t_u_u(((*l_628) = (safe_div_func_int16_t_s_s(p_18, (safe_rshift_func_int16_t_s_u((l_628 != &p_718->g_149), 7))))), p_18)), 0x074BL))))), ((VECTOR(int16_t, 4))(0x17EAL))))), ((VECTOR(int16_t, 2))((-6L))), 0x46A0L)).s7243654125205041, (int16_t)l_629))).sf467)).xzwyywzz, ((VECTOR(int16_t, 8))((-1L)))))).s0 | l_557.s8) , 4294967295UL))))), p_20)) , 0x1FL) && p_20));
                    if (((*l_420) |= (0xB535BF28L >= p_20)))
                    { /* block id: 305 */
                        return p_18;
                    }
                    else
                    { /* block id: 307 */
                        return p_18;
                    }
                }
                else
                { /* block id: 310 */
                    uint8_t *l_631[6] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                    int i;
                    (*p_718->g_292) &= (l_631[3] == (**l_585));
                    l_632 = &l_540;
                    (*l_632) |= ((((VECTOR(int64_t, 2))(((VECTOR(int64_t, 8))(p_718->g_633.xyyxyyyx)).s41)).even , l_634) != &l_635);
                }
            }
        }
        if ((*p_718->g_292))
            break;
        atomic_min(&p_718->g_atomic_reduction[get_linear_group_id()], (~(safe_rshift_func_int16_t_s_s((safe_mod_func_int32_t_s_s(l_557.sa, ((**l_423) = p_20))), (l_578[3] && l_640)))) + get_linear_global_id());
        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        if (get_linear_local_id() == 0)
            p_718->v_collective += p_718->g_atomic_reduction[get_linear_group_id()];
        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        (*l_420) = ((((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 16))(mul_hi(((VECTOR(uint64_t, 16))(min(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(18446744073709551608UL, 1UL)).yyxx)).yzwzzzxxxxxyywwx, ((VECTOR(uint64_t, 8))(min(((VECTOR(uint64_t, 4))(l_641.s5707)).xzzyyyzx, ((VECTOR(uint64_t, 8))(max(((VECTOR(uint64_t, 16))(p_718->g_642.yxyxyyxxyyyyxyyx)).hi, (uint64_t)(safe_sub_func_int16_t_s_s((4L && (safe_mul_func_uint8_t_u_u((safe_mod_func_int64_t_s_s((p_19 == ((safe_mul_func_int16_t_s_s((((p_718->g_100.sb ^= l_557.sf) , &p_718->g_517) != (void*)0), l_473)) != (p_718->g_331.y = (((((0x47559EFAL >= (((*l_653) |= (((*l_423) = (*l_423)) == &p_718->g_223)) & (-1L))) == l_610) == p_19) || FAKE_DIVERGE(p_718->local_2_offset, get_local_id(2), 10)) >= p_19)))), 0x3F25FA1126C8C4FAL)), 0x35L))), p_19)))))))).s6712147036763360))), ((VECTOR(uint64_t, 16))(0xD55CF96ED6ECC84DL))))))).lo)).s0364020437574701)).s91)), 0xFEB979511B137076L, ((VECTOR(uint64_t, 4))(18446744073709551615UL)), 0x582ADCDCD0EE6802L)).odd)).y != 1UL) , 0x03C1808FL);
    }
    return (**l_423);
}


/* ------------------------------------------ */
/* 
 * reads : p_718->g_149 p_718->g_86 p_718->g_99 p_718->g_359 p_718->g_272 p_718->g_313 p_718->g_68
 * writes: p_718->g_149 p_718->g_86 p_718->g_99 p_718->g_68
 */
int64_t  func_22(uint32_t  p_23, uint16_t  p_24, uint32_t  p_25, int32_t  p_26, uint32_t  p_27, struct S0 * p_718)
{ /* block id: 218 */
    int8_t l_397 = 0x5FL;
    for (p_718->g_149 = 0; (p_718->g_149 != 52); p_718->g_149++)
    { /* block id: 221 */
        int32_t l_395[2][9][2] = {{{0x66BC2559L,0x66BC2559L},{0x66BC2559L,0x66BC2559L},{0x66BC2559L,0x66BC2559L},{0x66BC2559L,0x66BC2559L},{0x66BC2559L,0x66BC2559L},{0x66BC2559L,0x66BC2559L},{0x66BC2559L,0x66BC2559L},{0x66BC2559L,0x66BC2559L},{0x66BC2559L,0x66BC2559L}},{{0x66BC2559L,0x66BC2559L},{0x66BC2559L,0x66BC2559L},{0x66BC2559L,0x66BC2559L},{0x66BC2559L,0x66BC2559L},{0x66BC2559L,0x66BC2559L},{0x66BC2559L,0x66BC2559L},{0x66BC2559L,0x66BC2559L},{0x66BC2559L,0x66BC2559L},{0x66BC2559L,0x66BC2559L}}};
        int32_t *l_396 = &p_718->g_86[1];
        uint32_t *l_416[7][3][7] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
        int32_t *l_419[10] = {&p_718->g_68,&p_718->g_223,&p_718->g_68,&p_718->g_68,&p_718->g_223,&p_718->g_68,&p_718->g_68,&p_718->g_223,&p_718->g_68,&p_718->g_68};
        int i, j, k;
        (*l_396) = (l_395[0][4][1] , 0x0A1A2D6AL);
        if (l_397)
            break;
        p_26 |= (*l_396);
        p_718->g_68 ^= (safe_mul_func_int16_t_s_s(((void*)0 != &p_718->g_223), (safe_mod_func_int16_t_s_s((~(safe_mul_func_int16_t_s_s((safe_add_func_uint16_t_u_u((safe_mod_func_uint16_t_u_u(((VECTOR(uint16_t, 2))(0x17B7L, 9UL)).lo, (safe_add_func_int8_t_s_s(p_25, (l_396 != &p_26))))), ((safe_sub_func_int32_t_s_s(0x0DF67939L, ((*l_396) ^ (((((p_718->g_99.y &= l_397) || (((safe_lshift_func_int8_t_s_u(((void*)0 != l_416[3][2][3]), p_718->g_359.x)) != p_718->g_272.sd) < GROUP_DIVERGE(1, 1))) || 0L) < 0xC3224B0CL) <= (*l_396))))) , p_718->g_313.y))), 0x3082L))), p_23))));
    }
    return l_397;
}


/* ------------------------------------------ */
/* 
 * reads : p_718->g_comm_values p_718->g_162 p_718->g_100 p_718->g_245 p_718->g_292 p_718->g_101 p_718->g_216 p_718->g_223 p_718->g_313 p_718->g_86 p_718->g_387 p_718->g_352 p_718->g_331 p_718->g_198
 * writes: p_718->g_68 p_718->g_86 p_718->g_292 p_718->g_198 p_718->g_216 p_718->g_223 p_718->g_387 p_718->g_100
 */
int8_t  func_33(uint64_t  p_34, int32_t  p_35, struct S0 * p_718)
{ /* block id: 5 */
    VECTOR(int16_t, 2) l_61 = (VECTOR(int16_t, 2))(9L, (-1L));
    int32_t l_80 = 0x0C4F412FL;
    uint8_t l_300 = 0x00L;
    VECTOR(int16_t, 8) l_338 = (VECTOR(int16_t, 8))((-10L), (VECTOR(int16_t, 4))((-10L), (VECTOR(int16_t, 2))((-10L), (-9L)), (-9L)), (-9L), (-10L), (-9L));
    VECTOR(int16_t, 2) l_343 = (VECTOR(int16_t, 2))(0L, 0x1BDBL);
    VECTOR(int8_t, 4) l_357 = (VECTOR(int8_t, 4))(0x6FL, (VECTOR(int8_t, 2))(0x6FL, 1L), 1L);
    int32_t l_370 = (-1L);
    uint16_t l_371 = 0UL;
    int64_t l_379 = 4L;
    int32_t *l_384[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int16_t l_386 = 1L;
    uint32_t *l_390 = (void*)0;
    uint32_t *l_391 = (void*)0;
    int32_t **l_392 = &p_718->g_292;
    int i;
    for (p_35 = 0; (p_35 <= 6); ++p_35)
    { /* block id: 8 */
        uint16_t l_47 = 0xC914L;
        uint16_t l_66[8][1] = {{0xBB9AL},{0xBB9AL},{0xBB9AL},{0xBB9AL},{0xBB9AL},{0xBB9AL},{0xBB9AL},{0xBB9AL}};
        uint32_t *l_75 = &p_718->g_76;
        uint32_t *l_77 = (void*)0;
        uint32_t *l_78[7][7] = {{&p_718->g_79,&p_718->g_79,(void*)0,&p_718->g_79,&p_718->g_79,&p_718->g_79,&p_718->g_79},{&p_718->g_79,&p_718->g_79,(void*)0,&p_718->g_79,&p_718->g_79,&p_718->g_79,&p_718->g_79},{&p_718->g_79,&p_718->g_79,(void*)0,&p_718->g_79,&p_718->g_79,&p_718->g_79,&p_718->g_79},{&p_718->g_79,&p_718->g_79,(void*)0,&p_718->g_79,&p_718->g_79,&p_718->g_79,&p_718->g_79},{&p_718->g_79,&p_718->g_79,(void*)0,&p_718->g_79,&p_718->g_79,&p_718->g_79,&p_718->g_79},{&p_718->g_79,&p_718->g_79,(void*)0,&p_718->g_79,&p_718->g_79,&p_718->g_79,&p_718->g_79},{&p_718->g_79,&p_718->g_79,(void*)0,&p_718->g_79,&p_718->g_79,&p_718->g_79,&p_718->g_79}};
        VECTOR(uint32_t, 2) l_295 = (VECTOR(uint32_t, 2))(0xD39F2E5EL, 3UL);
        int32_t l_323 = 0L;
        int8_t *l_349 = &p_718->g_141;
        VECTOR(uint8_t, 4) l_356 = (VECTOR(uint8_t, 4))(0x76L, (VECTOR(uint8_t, 2))(0x76L, 2UL), 2UL);
        VECTOR(int8_t, 8) l_358 = (VECTOR(int8_t, 8))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, (-1L)), (-1L)), (-1L), 0L, (-1L));
        VECTOR(int8_t, 8) l_360 = (VECTOR(int8_t, 8))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0x1EL), 0x1EL), 0x1EL, 0L, 0x1EL);
        uint64_t l_363 = 18446744073709551615UL;
        VECTOR(int32_t, 4) l_380 = (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x1A9C0D5DL), 0x1A9C0D5DL);
        int i, j;
        if (((248UL != (safe_div_func_uint32_t_u_u(func_42(l_47, (l_47 , ((safe_mod_func_uint64_t_u_u((func_50((safe_rshift_func_int8_t_s_u(p_35, 3)), (safe_sub_func_uint16_t_u_u(p_34, ((safe_rshift_func_uint16_t_u_s(((((VECTOR(int16_t, 8))(((VECTOR(int16_t, 16))(min(((VECTOR(int16_t, 4))(0x1C2FL, ((VECTOR(int16_t, 2))(l_61.yy)), 0x7CB0L)).zzywzwwzwzwzyxwx, (int16_t)(safe_sub_func_uint8_t_u_u(0x31L, (((l_80 = ((*l_75) = func_64(l_66[7][0], p_718))) , ((safe_add_func_int32_t_s_s(p_718->g_76, p_35)) , p_718->g_76)) & p_718->g_79)))))).even)).s6 < p_35) > l_66[1][0]), 10)) , p_718->g_comm_values[p_718->tid]))), p_34, p_34, p_718) < (-5L)), 18446744073709551614UL)) , p_718->g_162.s9)), p_35, l_61.x, p_718), p_718->g_100.s0))) , p_718->g_245.s8))
        { /* block id: 164 */
            int64_t l_334 = 0x4D782895629A1DBCL;
            VECTOR(int16_t, 2) l_339 = (VECTOR(int16_t, 2))(0x4044L, (-1L));
            int8_t *l_347 = &p_718->g_141;
            int8_t **l_346[6][6] = {{&l_347,(void*)0,&l_347,&l_347,&l_347,(void*)0},{&l_347,(void*)0,&l_347,&l_347,&l_347,(void*)0},{&l_347,(void*)0,&l_347,&l_347,&l_347,(void*)0},{&l_347,(void*)0,&l_347,&l_347,&l_347,(void*)0},{&l_347,(void*)0,&l_347,&l_347,&l_347,(void*)0},{&l_347,(void*)0,&l_347,&l_347,&l_347,(void*)0}};
            int64_t *l_361[5][7][2] = {{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}}};
            int32_t l_362 = 0x5C7D4696L;
            int32_t *l_364 = &p_718->g_223;
            int32_t **l_383[9][10][2] = {{{&l_364,&p_718->g_292},{&l_364,&p_718->g_292},{&l_364,&p_718->g_292},{&l_364,&p_718->g_292},{&l_364,&p_718->g_292},{&l_364,&p_718->g_292},{&l_364,&p_718->g_292},{&l_364,&p_718->g_292},{&l_364,&p_718->g_292},{&l_364,&p_718->g_292}},{{&l_364,&p_718->g_292},{&l_364,&p_718->g_292},{&l_364,&p_718->g_292},{&l_364,&p_718->g_292},{&l_364,&p_718->g_292},{&l_364,&p_718->g_292},{&l_364,&p_718->g_292},{&l_364,&p_718->g_292},{&l_364,&p_718->g_292},{&l_364,&p_718->g_292}},{{&l_364,&p_718->g_292},{&l_364,&p_718->g_292},{&l_364,&p_718->g_292},{&l_364,&p_718->g_292},{&l_364,&p_718->g_292},{&l_364,&p_718->g_292},{&l_364,&p_718->g_292},{&l_364,&p_718->g_292},{&l_364,&p_718->g_292},{&l_364,&p_718->g_292}},{{&l_364,&p_718->g_292},{&l_364,&p_718->g_292},{&l_364,&p_718->g_292},{&l_364,&p_718->g_292},{&l_364,&p_718->g_292},{&l_364,&p_718->g_292},{&l_364,&p_718->g_292},{&l_364,&p_718->g_292},{&l_364,&p_718->g_292},{&l_364,&p_718->g_292}},{{&l_364,&p_718->g_292},{&l_364,&p_718->g_292},{&l_364,&p_718->g_292},{&l_364,&p_718->g_292},{&l_364,&p_718->g_292},{&l_364,&p_718->g_292},{&l_364,&p_718->g_292},{&l_364,&p_718->g_292},{&l_364,&p_718->g_292},{&l_364,&p_718->g_292}},{{&l_364,&p_718->g_292},{&l_364,&p_718->g_292},{&l_364,&p_718->g_292},{&l_364,&p_718->g_292},{&l_364,&p_718->g_292},{&l_364,&p_718->g_292},{&l_364,&p_718->g_292},{&l_364,&p_718->g_292},{&l_364,&p_718->g_292},{&l_364,&p_718->g_292}},{{&l_364,&p_718->g_292},{&l_364,&p_718->g_292},{&l_364,&p_718->g_292},{&l_364,&p_718->g_292},{&l_364,&p_718->g_292},{&l_364,&p_718->g_292},{&l_364,&p_718->g_292},{&l_364,&p_718->g_292},{&l_364,&p_718->g_292},{&l_364,&p_718->g_292}},{{&l_364,&p_718->g_292},{&l_364,&p_718->g_292},{&l_364,&p_718->g_292},{&l_364,&p_718->g_292},{&l_364,&p_718->g_292},{&l_364,&p_718->g_292},{&l_364,&p_718->g_292},{&l_364,&p_718->g_292},{&l_364,&p_718->g_292},{&l_364,&p_718->g_292}},{{&l_364,&p_718->g_292},{&l_364,&p_718->g_292},{&l_364,&p_718->g_292},{&l_364,&p_718->g_292},{&l_364,&p_718->g_292},{&l_364,&p_718->g_292},{&l_364,&p_718->g_292},{&l_364,&p_718->g_292},{&l_364,&p_718->g_292},{&l_364,&p_718->g_292}}};
            int i, j, k;
            for (p_718->g_68 = 15; (p_718->g_68 >= 7); --p_718->g_68)
            { /* block id: 167 */
                int32_t *l_291 = &p_718->g_86[9];
                int32_t **l_290[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
                int i;
                p_718->g_292 = &p_35;
                if (p_35)
                    break;
                for (p_34 = 0; (p_34 < 2); p_34 = safe_add_func_uint64_t_u_u(p_34, 3))
                { /* block id: 172 */
                    uint8_t *l_308 = &l_300;
                    uint32_t *l_314 = (void*)0;
                    uint32_t *l_315 = (void*)0;
                    uint32_t *l_316 = (void*)0;
                    uint32_t *l_317[2];
                    int64_t *l_318 = (void*)0;
                    int64_t *l_319 = (void*)0;
                    int64_t *l_320 = (void*)0;
                    int32_t l_321 = (-7L);
                    uint8_t *l_322[2][7][5] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
                    uint64_t *l_328 = &p_718->g_216[4][4];
                    int32_t l_335 = 9L;
                    int i, j, k;
                    for (i = 0; i < 2; i++)
                        l_317[i] = (void*)0;
                    if (l_295.y)
                        break;
                    for (p_718->g_198 = 5; (p_718->g_198 < 13); ++p_718->g_198)
                    { /* block id: 176 */
                        uint8_t l_301 = 0UL;
                        l_300 = (safe_add_func_int8_t_s_s((-1L), 250UL));
                        --l_301;
                    }
                    l_335 |= ((*p_718->g_292) == ((safe_add_func_int8_t_s_s((safe_rshift_func_uint8_t_u_u(((*l_308)++), 6)), (l_323 = ((safe_div_func_uint8_t_u_u((p_718->g_100.sa <= (l_80 = ((VECTOR(int64_t, 8))(p_35, ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(p_718->g_313.yy)), 1L, 1L)).x, 1L, 1L, ((p_718->g_99.y = l_80) ^ ((*l_291) = 9L)), ((VECTOR(int64_t, 2))((-1L), 0x165C8278260FE3E4L)), (-1L))).s6)), p_718->g_101.x)) == l_321)))) > (safe_sub_func_int64_t_s_s((safe_add_func_int32_t_s_s(((++(*l_328)) || ((VECTOR(int64_t, 8))(p_718->g_331.yzwzwwzx)).s3), (safe_rshift_func_uint8_t_u_u(l_334, 5)))), (!p_35)))));
                }
            }
            (*l_364) &= (safe_lshift_func_uint16_t_u_s(((p_35 && (((VECTOR(int16_t, 16))(hadd(((VECTOR(int16_t, 4))(add_sat(((VECTOR(int16_t, 2))(l_338.s37)).yxyy, ((VECTOR(int16_t, 16))(l_339.xyxxxxxyyyxyyyxy)).s1a5e))).wwzxzzzzzwzzzyyz, ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(add_sat(((VECTOR(int16_t, 16))(p_718->g_149, 0x61EEL, (safe_rshift_func_int8_t_s_s(l_339.x, 1)), ((VECTOR(int16_t, 2))(p_718->g_342.sf3)), ((VECTOR(int16_t, 4))(l_343.xxxy)), (safe_div_func_int64_t_s_s(((p_718->g_348 = &p_718->g_141) == l_349), (((0UL != ((safe_mul_func_int8_t_s_s(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(sub_sat(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(p_718->g_352.sf4)), 0x01L, 0L)).zxxwywxw, ((VECTOR(int8_t, 8))(hadd(((VECTOR(int8_t, 8))(p_718->g_353.wyxzzywx)), ((VECTOR(int8_t, 16))(rhadd(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))((safe_rshift_func_uint8_t_u_s((!((VECTOR(uint8_t, 8))(l_356.wzzxwzwy)).s0), 6)), ((VECTOR(int8_t, 2))(0x10L, 0x7DL)), 1L)), ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 2),((VECTOR(int8_t, 4))(l_357.xxwx)).lo, ((VECTOR(int8_t, 2))(0L, (-6L))), ((VECTOR(int8_t, 8))(l_358.s54330767)).s01))).xyyy)), 0x16L, ((VECTOR(int8_t, 16))(safe_clamp_func(VECTOR(int8_t, 16),int8_t,((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(p_718->g_359.zy)), ((VECTOR(int8_t, 2))(l_360.s52)), 0x10L, 4L, 7L, 0x68L)).s0171052663607010, (int8_t)((l_362 = (l_343.y , (&l_347 == (void*)0))) , (-9L)), (int8_t)p_718->g_162.s6))).se, 0x27L, 0x4DL, 0x7DL, ((VECTOR(int8_t, 2))(0x24L)), (-9L))), ((VECTOR(int8_t, 16))((-1L)))))).lo)))))).s76)).odd, l_61.y)) , l_363)) | p_35) , 1UL))), ((VECTOR(int16_t, 2))(0x5F4FL)), 0x4B0EL, (-3L), 0L, 0x5ABDL)).s3d, ((VECTOR(int16_t, 2))((-1L)))))).xxyyyxyy)).s3424331136400432))).s4 & 4UL)) , FAKE_DIVERGE(p_718->local_1_offset, get_local_id(1), 10)), 4));
            for (p_718->g_223 = (-3); (p_718->g_223 <= (-4)); p_718->g_223 = safe_sub_func_uint64_t_u_u(p_718->g_223, 4))
            { /* block id: 194 */
                int32_t *l_367 = &p_718->g_86[1];
                int32_t *l_368 = &l_80;
                int32_t *l_369[5] = {&l_323,&l_323,&l_323,&l_323,&l_323};
                uint16_t *l_374 = &l_66[5][0];
                int i;
                l_371++;
                if (((p_35 != ((*l_368) &= (((*l_374)++) >= (safe_rshift_func_int16_t_s_s(p_718->g_313.x, l_379))))) < (-7L)))
                { /* block id: 198 */
                    (*l_367) ^= (l_360.s5 , ((VECTOR(int32_t, 2))(l_380.wy)).hi);
                }
                else
                { /* block id: 200 */
                    for (l_334 = (-29); (l_334 != 6); l_334++)
                    { /* block id: 203 */
                        (*l_368) &= (*p_718->g_292);
                    }
                }
            }
            l_384[7] = &p_718->g_86[0];
        }
        else
        { /* block id: 209 */
            int32_t **l_385 = &l_384[3];
            (*l_385) = &p_35;
        }
    }
    --p_718->g_387;
    (*p_718->g_292) ^= (p_34 | ((+((&p_718->g_141 != &p_718->g_141) < (!p_718->g_352.sc))) < (p_718->g_100.s1 ^= p_718->g_331.x)));
    (*l_392) = (p_718->g_198 , (void*)0);
    return p_34;
}


/* ------------------------------------------ */
/* 
 * reads : p_718->g_162
 * writes:
 */
uint32_t  func_42(uint32_t  p_43, int32_t  p_44, int64_t  p_45, int16_t  p_46, struct S0 * p_718)
{ /* block id: 88 */
    int32_t *l_190[10];
    int32_t **l_189 = &l_190[5];
    int8_t *l_259 = &p_718->g_141;
    VECTOR(uint64_t, 16) l_269 = (VECTOR(uint64_t, 16))(0UL, (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 0xF1A88DF3BDC24BC6L), 0xF1A88DF3BDC24BC6L), 0xF1A88DF3BDC24BC6L, 0UL, 0xF1A88DF3BDC24BC6L, (VECTOR(uint64_t, 2))(0UL, 0xF1A88DF3BDC24BC6L), (VECTOR(uint64_t, 2))(0UL, 0xF1A88DF3BDC24BC6L), 0UL, 0xF1A88DF3BDC24BC6L, 0UL, 0xF1A88DF3BDC24BC6L);
    int32_t *l_283 = &p_718->g_86[8];
    int i;
    for (i = 0; i < 10; i++)
        l_190[i] = &p_718->g_86[6];
    (*l_189) = &p_718->g_68;
    for (p_43 = 7; (p_43 <= 24); p_43 = safe_add_func_uint32_t_u_u(p_43, 7))
    { /* block id: 92 */
        uint64_t l_219 = 0xBB2B50047D229401L;
        VECTOR(uint16_t, 4) l_243 = (VECTOR(uint16_t, 4))(0xC03AL, (VECTOR(uint16_t, 2))(0xC03AL, 1UL), 1UL);
        int8_t *l_246[1];
        int i;
        for (i = 0; i < 1; i++)
            l_246[i] = &p_718->g_141;
        (1 + 1);
    }
    (*l_189) = &p_44;
    return p_718->g_162.s8;
}


/* ------------------------------------------ */
/* 
 * reads : p_718->g_68 p_718->g_99 p_718->g_100 p_718->g_101 p_718->g_76 p_718->g_79 p_718->g_86 p_718->g_141 p_718->g_162 p_718->g_comm_values
 * writes: p_718->g_68 p_718->g_86 p_718->g_101 p_718->g_79 p_718->g_76 p_718->g_141
 */
uint32_t  func_50(uint8_t  p_51, int8_t  p_52, int64_t  p_53, uint16_t  p_54, struct S0 * p_718)
{ /* block id: 14 */
    uint32_t l_98[2];
    int i;
    for (i = 0; i < 2; i++)
        l_98[i] = 4294967288UL;
    for (p_718->g_68 = 0; (p_718->g_68 < (-17)); p_718->g_68 = safe_sub_func_uint8_t_u_u(p_718->g_68, 1))
    { /* block id: 17 */
        int32_t *l_85 = &p_718->g_86[6];
        (*l_85) = (-9L);
        (*l_85) = ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(0x075F97E6L, 0x051AA8C9L)))), ((VECTOR(int32_t, 4))(1L, 0x33FFEA36L, (-1L), 0x77871239L)), 0x59721CB4L, func_87((((~((safe_mul_func_uint8_t_u_u((safe_div_func_uint32_t_u_u(((((safe_mod_func_int64_t_s_s((-7L), l_98[1])) < (((VECTOR(uint32_t, 2))(mad_hi(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 16))(p_718->g_99.yxyzxwyyzzxxzywz)).sdc)), ((VECTOR(uint32_t, 16))(p_718->g_100.sd5aa0404c6930a87)).s56, ((VECTOR(uint32_t, 16))(l_98[1], 0x475996E2L, 4294967294UL, 4294967287UL, 1UL, p_53, ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(clz(((VECTOR(uint32_t, 8))(0xD4A066EEL, 0x24E311B8L, ((VECTOR(uint32_t, 4))((0UL || (p_718->g_101.y = ((VECTOR(uint8_t, 2))(p_718->g_101.yy)).hi)), (safe_mul_func_uint8_t_u_u(p_718->g_76, (0x77405739L && ((l_98[1] | 1UL) | l_98[1])))), 0UL, 4294967295UL)), 0xDFD6319DL, 0x990E41E6L)).odd))).wxzxxzxy)), 4294967295UL, 0x21BC9AF0L)).s0a))).lo , 8UL)) == FAKE_DIVERGE(p_718->local_2_offset, get_local_id(2), 10)) || l_98[0]), 0x5B3E5B60L)), 1UL)) & p_54)) , (-1L)) || 0L), p_52, &p_718->g_79, p_52, p_718), ((VECTOR(int32_t, 8))(0x54882EDDL)))).s9;
    }
    return p_718->g_comm_values[p_718->tid];
}


/* ------------------------------------------ */
/* 
 * reads : p_718->g_71
 * writes: p_718->g_71
 */
uint32_t  func_64(int64_t  p_65, struct S0 * p_718)
{ /* block id: 9 */
    int32_t *l_67 = &p_718->g_68;
    int32_t *l_69 = &p_718->g_68;
    int32_t *l_70[5] = {&p_718->g_68,&p_718->g_68,&p_718->g_68,&p_718->g_68,&p_718->g_68};
    int8_t l_74 = 0x6DL;
    int i;
    ++p_718->g_71;
    return l_74;
}


/* ------------------------------------------ */
/* 
 * reads : p_718->g_79 p_718->g_76 p_718->g_86 p_718->g_141 p_718->g_162 p_718->g_101
 * writes: p_718->g_79 p_718->g_76 p_718->g_86 p_718->g_141
 */
int32_t  func_87(uint64_t  p_88, int8_t  p_89, uint32_t * p_90, int32_t  p_91, struct S0 * p_718)
{ /* block id: 20 */
    int32_t l_147 = (-7L);
    for (p_88 = 4; (p_88 == 43); p_88 = safe_add_func_int16_t_s_s(p_88, 7))
    { /* block id: 23 */
        uint16_t l_150 = 1UL;
        int32_t l_159 = 0x741F5D68L;
        VECTOR(int64_t, 8) l_160 = (VECTOR(int64_t, 8))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 5L), 5L), 5L, (-1L), 5L);
        int32_t l_167 = 0x49337052L;
        int i;
        for (p_718->g_79 = 0; (p_718->g_79 != 35); ++p_718->g_79)
        { /* block id: 26 */
            int32_t *l_111 = &p_718->g_68;
            int32_t **l_110 = &l_111;
            VECTOR(uint64_t, 16) l_163 = (VECTOR(uint64_t, 16))(0xF728D9C3D7FAD0BDL, (VECTOR(uint64_t, 4))(0xF728D9C3D7FAD0BDL, (VECTOR(uint64_t, 2))(0xF728D9C3D7FAD0BDL, 0xF01B87C57D7CE495L), 0xF01B87C57D7CE495L), 0xF01B87C57D7CE495L, 0xF728D9C3D7FAD0BDL, 0xF01B87C57D7CE495L, (VECTOR(uint64_t, 2))(0xF728D9C3D7FAD0BDL, 0xF01B87C57D7CE495L), (VECTOR(uint64_t, 2))(0xF728D9C3D7FAD0BDL, 0xF01B87C57D7CE495L), 0xF728D9C3D7FAD0BDL, 0xF01B87C57D7CE495L, 0xF728D9C3D7FAD0BDL, 0xF01B87C57D7CE495L);
            int i;
            for (p_718->g_76 = (-10); (p_718->g_76 == 38); p_718->g_76 = safe_add_func_uint8_t_u_u(p_718->g_76, 2))
            { /* block id: 29 */
                return p_89;
            }
            (*l_110) = p_90;
            for (p_91 = 0; (p_91 <= 29); p_91 = safe_add_func_int32_t_s_s(p_91, 1))
            { /* block id: 35 */
                int32_t *l_131 = &p_718->g_86[6];
                int8_t *l_140 = (void*)0;
                uint64_t *l_148[5][9][5] = {{{&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149},{&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149},{&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149},{&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149},{&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149},{&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149},{&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149},{&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149},{&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149}},{{&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149},{&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149},{&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149},{&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149},{&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149},{&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149},{&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149},{&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149},{&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149}},{{&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149},{&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149},{&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149},{&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149},{&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149},{&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149},{&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149},{&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149},{&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149}},{{&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149},{&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149},{&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149},{&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149},{&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149},{&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149},{&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149},{&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149},{&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149}},{{&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149},{&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149},{&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149},{&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149},{&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149},{&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149},{&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149},{&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149},{&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149,&p_718->g_149}}};
                int64_t *l_153 = (void*)0;
                int64_t *l_154 = (void*)0;
                int64_t *l_155 = (void*)0;
                int64_t *l_156 = (void*)0;
                int64_t *l_157 = (void*)0;
                int64_t *l_158[4][5];
                VECTOR(uint64_t, 8) l_161 = (VECTOR(uint64_t, 8))(18446744073709551615UL, (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0x2F7AB6CDAE681B69L), 0x2F7AB6CDAE681B69L), 0x2F7AB6CDAE681B69L, 18446744073709551615UL, 0x2F7AB6CDAE681B69L);
                uint32_t *l_164 = (void*)0;
                uint32_t *l_165 = (void*)0;
                uint32_t *l_166[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                int i, j, k;
                for (i = 0; i < 4; i++)
                {
                    for (j = 0; j < 5; j++)
                        l_158[i][j] = (void*)0;
                }
                if ((atomic_inc(&p_718->g_atomic_input[95 * get_linear_group_id() + 83]) == 8))
                { /* block id: 37 */
                    int32_t l_114 = 0x54055D01L;
                    int32_t *l_127 = (void*)0;
                    int32_t **l_126 = &l_127;
                    int32_t **l_128 = &l_127;
                    int32_t **l_129 = &l_127;
                    int32_t **l_130[8];
                    int i;
                    for (i = 0; i < 8; i++)
                        l_130[i] = &l_127;
                    for (l_114 = 0; (l_114 <= (-18)); l_114 = safe_sub_func_int64_t_s_s(l_114, 8))
                    { /* block id: 40 */
                        int64_t l_117 = 0x0A5C6425F0F443C0L;
                        uint32_t l_118 = 0xDB549FEDL;
                        uint32_t l_119 = 0xD02479DAL;
                        int32_t l_121 = 0x196B4A01L;
                        int32_t *l_120 = &l_121;
                        int32_t *l_122 = &l_121;
                        int16_t l_123 = 0x29F5L;
                        int32_t l_124 = 1L;
                        uint32_t l_125[2][7][8] = {{{4294967293UL,4294967293UL,0x80DBEA54L,8UL,4294967287UL,8UL,0x80DBEA54L,4294967293UL},{4294967293UL,4294967293UL,0x80DBEA54L,8UL,4294967287UL,8UL,0x80DBEA54L,4294967293UL},{4294967293UL,4294967293UL,0x80DBEA54L,8UL,4294967287UL,8UL,0x80DBEA54L,4294967293UL},{4294967293UL,4294967293UL,0x80DBEA54L,8UL,4294967287UL,8UL,0x80DBEA54L,4294967293UL},{4294967293UL,4294967293UL,0x80DBEA54L,8UL,4294967287UL,8UL,0x80DBEA54L,4294967293UL},{4294967293UL,4294967293UL,0x80DBEA54L,8UL,4294967287UL,8UL,0x80DBEA54L,4294967293UL},{4294967293UL,4294967293UL,0x80DBEA54L,8UL,4294967287UL,8UL,0x80DBEA54L,4294967293UL}},{{4294967293UL,4294967293UL,0x80DBEA54L,8UL,4294967287UL,8UL,0x80DBEA54L,4294967293UL},{4294967293UL,4294967293UL,0x80DBEA54L,8UL,4294967287UL,8UL,0x80DBEA54L,4294967293UL},{4294967293UL,4294967293UL,0x80DBEA54L,8UL,4294967287UL,8UL,0x80DBEA54L,4294967293UL},{4294967293UL,4294967293UL,0x80DBEA54L,8UL,4294967287UL,8UL,0x80DBEA54L,4294967293UL},{4294967293UL,4294967293UL,0x80DBEA54L,8UL,4294967287UL,8UL,0x80DBEA54L,4294967293UL},{4294967293UL,4294967293UL,0x80DBEA54L,8UL,4294967287UL,8UL,0x80DBEA54L,4294967293UL},{4294967293UL,4294967293UL,0x80DBEA54L,8UL,4294967287UL,8UL,0x80DBEA54L,4294967293UL}}};
                        int i, j, k;
                        l_122 = ((l_118 &= l_117) , (l_119 , (FAKE_DIVERGE(p_718->group_1_offset, get_group_id(1), 10) , l_120)));
                        l_123 = 0x09021D5EL;
                        l_124 &= (-8L);
                        l_125[1][2][3] = (-5L);
                    }
                    l_130[4] = (((VECTOR(uint32_t, 2))(0xBF394C47L, 1UL)).hi , (l_129 = (l_128 = l_126)));
                    unsigned int result = 0;
                    result += l_114;
                    atomic_add(&p_718->g_special_values[95 * get_linear_group_id() + 83], result);
                }
                else
                { /* block id: 50 */
                    (1 + 1);
                }
                (*l_131) &= (+p_91);
                (*l_131) = (((safe_mul_func_uint8_t_u_u(((safe_rshift_func_int16_t_s_u((((l_167 = (safe_sub_func_uint8_t_u_u(((safe_lshift_func_int8_t_s_s((*l_131), (p_718->g_141 &= p_718->g_79))) , 0x1BL), (safe_unary_minus_func_uint64_t_u((safe_add_func_uint16_t_u_u(((safe_sub_func_int32_t_s_s((((18446744073709551612UL ^ (--l_150)) || (l_150 , (&p_88 != (void*)0))) ^ ((((l_159 |= p_718->g_79) < ((VECTOR(int64_t, 2))(l_160.s72)).hi) , (((VECTOR(uint64_t, 2))(mad_sat(((VECTOR(uint64_t, 4))(l_161.s7500)).even, ((VECTOR(uint64_t, 2))(p_718->g_162.sbc)), ((VECTOR(uint64_t, 16))(l_163.s67760c71652fd558)).saf))).even > 18446744073709551615UL)) > 0x4CA8L)), p_88)) & p_89), 0UL))))))) , p_89) || 0L), 14)) , 0x3BL), p_718->g_101.x)) , p_89) , p_91);
                if ((atomic_inc(&p_718->l_atomic_input[41]) == 6))
                { /* block id: 60 */
                    int32_t l_168 = (-8L);
                    uint8_t l_175 = 255UL;
                    uint64_t l_176[5][4] = {{0UL,0xD0DECC6E98D5FDB6L,0xC5E4B60272E8F47DL,0x8D9300DF10CB638BL},{0UL,0xD0DECC6E98D5FDB6L,0xC5E4B60272E8F47DL,0x8D9300DF10CB638BL},{0UL,0xD0DECC6E98D5FDB6L,0xC5E4B60272E8F47DL,0x8D9300DF10CB638BL},{0UL,0xD0DECC6E98D5FDB6L,0xC5E4B60272E8F47DL,0x8D9300DF10CB638BL},{0UL,0xD0DECC6E98D5FDB6L,0xC5E4B60272E8F47DL,0x8D9300DF10CB638BL}};
                    VECTOR(int32_t, 8) l_177 = (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x14D8E95EL), 0x14D8E95EL), 0x14D8E95EL, 1L, 0x14D8E95EL);
                    VECTOR(int32_t, 16) l_178 = (VECTOR(int32_t, 16))(0x640B0BE3L, (VECTOR(int32_t, 4))(0x640B0BE3L, (VECTOR(int32_t, 2))(0x640B0BE3L, 0x772AFA6FL), 0x772AFA6FL), 0x772AFA6FL, 0x640B0BE3L, 0x772AFA6FL, (VECTOR(int32_t, 2))(0x640B0BE3L, 0x772AFA6FL), (VECTOR(int32_t, 2))(0x640B0BE3L, 0x772AFA6FL), 0x640B0BE3L, 0x772AFA6FL, 0x640B0BE3L, 0x772AFA6FL);
                    uint16_t l_186 = 0x1D36L;
                    int i, j;
                    for (l_168 = (-5); (l_168 == 17); ++l_168)
                    { /* block id: 63 */
                        int32_t l_172 = 0x6DE95A86L;
                        int32_t *l_171 = &l_172;
                        int32_t *l_173 = &l_172;
                        int32_t *l_174 = &l_172;
                        l_171 = (void*)0;
                        l_174 = l_173;
                    }
                    if (((VECTOR(int32_t, 2))(rotate(((VECTOR(int32_t, 8))(hadd(((VECTOR(int32_t, 4))((-1L), 0x4A0CB05FL, 0x089812E2L, 0x66100BB5L)).wzxxzwww, ((VECTOR(int32_t, 8))((l_176[0][3] = l_175), 5L, ((VECTOR(int32_t, 4))(l_177.s0417)), 0x27221027L, 0L))))).s55, ((VECTOR(int32_t, 4))(l_178.s6173)).lo))).hi)
                    { /* block id: 68 */
                        int32_t l_180[10][6] = {{1L,2L,6L,0x58E107FDL,(-1L),(-1L)},{1L,2L,6L,0x58E107FDL,(-1L),(-1L)},{1L,2L,6L,0x58E107FDL,(-1L),(-1L)},{1L,2L,6L,0x58E107FDL,(-1L),(-1L)},{1L,2L,6L,0x58E107FDL,(-1L),(-1L)},{1L,2L,6L,0x58E107FDL,(-1L),(-1L)},{1L,2L,6L,0x58E107FDL,(-1L),(-1L)},{1L,2L,6L,0x58E107FDL,(-1L),(-1L)},{1L,2L,6L,0x58E107FDL,(-1L),(-1L)},{1L,2L,6L,0x58E107FDL,(-1L),(-1L)}};
                        int32_t *l_179[8][2] = {{&l_180[4][0],(void*)0},{&l_180[4][0],(void*)0},{&l_180[4][0],(void*)0},{&l_180[4][0],(void*)0},{&l_180[4][0],(void*)0},{&l_180[4][0],(void*)0},{&l_180[4][0],(void*)0},{&l_180[4][0],(void*)0}};
                        int32_t *l_181 = &l_180[1][1];
                        int32_t *l_182[9][6] = {{&l_180[4][0],&l_180[6][2],&l_180[4][0],&l_180[4][0],&l_180[6][2],&l_180[4][0]},{&l_180[4][0],&l_180[6][2],&l_180[4][0],&l_180[4][0],&l_180[6][2],&l_180[4][0]},{&l_180[4][0],&l_180[6][2],&l_180[4][0],&l_180[4][0],&l_180[6][2],&l_180[4][0]},{&l_180[4][0],&l_180[6][2],&l_180[4][0],&l_180[4][0],&l_180[6][2],&l_180[4][0]},{&l_180[4][0],&l_180[6][2],&l_180[4][0],&l_180[4][0],&l_180[6][2],&l_180[4][0]},{&l_180[4][0],&l_180[6][2],&l_180[4][0],&l_180[4][0],&l_180[6][2],&l_180[4][0]},{&l_180[4][0],&l_180[6][2],&l_180[4][0],&l_180[4][0],&l_180[6][2],&l_180[4][0]},{&l_180[4][0],&l_180[6][2],&l_180[4][0],&l_180[4][0],&l_180[6][2],&l_180[4][0]},{&l_180[4][0],&l_180[6][2],&l_180[4][0],&l_180[4][0],&l_180[6][2],&l_180[4][0]}};
                        int32_t *l_183 = &l_180[0][5];
                        uint32_t l_184[4][8][8] = {{{0xC05B529FL,4294967294UL,3UL,4294967295UL,3UL,4294967294UL,0xC05B529FL,0UL},{0xC05B529FL,4294967294UL,3UL,4294967295UL,3UL,4294967294UL,0xC05B529FL,0UL},{0xC05B529FL,4294967294UL,3UL,4294967295UL,3UL,4294967294UL,0xC05B529FL,0UL},{0xC05B529FL,4294967294UL,3UL,4294967295UL,3UL,4294967294UL,0xC05B529FL,0UL},{0xC05B529FL,4294967294UL,3UL,4294967295UL,3UL,4294967294UL,0xC05B529FL,0UL},{0xC05B529FL,4294967294UL,3UL,4294967295UL,3UL,4294967294UL,0xC05B529FL,0UL},{0xC05B529FL,4294967294UL,3UL,4294967295UL,3UL,4294967294UL,0xC05B529FL,0UL},{0xC05B529FL,4294967294UL,3UL,4294967295UL,3UL,4294967294UL,0xC05B529FL,0UL}},{{0xC05B529FL,4294967294UL,3UL,4294967295UL,3UL,4294967294UL,0xC05B529FL,0UL},{0xC05B529FL,4294967294UL,3UL,4294967295UL,3UL,4294967294UL,0xC05B529FL,0UL},{0xC05B529FL,4294967294UL,3UL,4294967295UL,3UL,4294967294UL,0xC05B529FL,0UL},{0xC05B529FL,4294967294UL,3UL,4294967295UL,3UL,4294967294UL,0xC05B529FL,0UL},{0xC05B529FL,4294967294UL,3UL,4294967295UL,3UL,4294967294UL,0xC05B529FL,0UL},{0xC05B529FL,4294967294UL,3UL,4294967295UL,3UL,4294967294UL,0xC05B529FL,0UL},{0xC05B529FL,4294967294UL,3UL,4294967295UL,3UL,4294967294UL,0xC05B529FL,0UL},{0xC05B529FL,4294967294UL,3UL,4294967295UL,3UL,4294967294UL,0xC05B529FL,0UL}},{{0xC05B529FL,4294967294UL,3UL,4294967295UL,3UL,4294967294UL,0xC05B529FL,0UL},{0xC05B529FL,4294967294UL,3UL,4294967295UL,3UL,4294967294UL,0xC05B529FL,0UL},{0xC05B529FL,4294967294UL,3UL,4294967295UL,3UL,4294967294UL,0xC05B529FL,0UL},{0xC05B529FL,4294967294UL,3UL,4294967295UL,3UL,4294967294UL,0xC05B529FL,0UL},{0xC05B529FL,4294967294UL,3UL,4294967295UL,3UL,4294967294UL,0xC05B529FL,0UL},{0xC05B529FL,4294967294UL,3UL,4294967295UL,3UL,4294967294UL,0xC05B529FL,0UL},{0xC05B529FL,4294967294UL,3UL,4294967295UL,3UL,4294967294UL,0xC05B529FL,0UL},{0xC05B529FL,4294967294UL,3UL,4294967295UL,3UL,4294967294UL,0xC05B529FL,0UL}},{{0xC05B529FL,4294967294UL,3UL,4294967295UL,3UL,4294967294UL,0xC05B529FL,0UL},{0xC05B529FL,4294967294UL,3UL,4294967295UL,3UL,4294967294UL,0xC05B529FL,0UL},{0xC05B529FL,4294967294UL,3UL,4294967295UL,3UL,4294967294UL,0xC05B529FL,0UL},{0xC05B529FL,4294967294UL,3UL,4294967295UL,3UL,4294967294UL,0xC05B529FL,0UL},{0xC05B529FL,4294967294UL,3UL,4294967295UL,3UL,4294967294UL,0xC05B529FL,0UL},{0xC05B529FL,4294967294UL,3UL,4294967295UL,3UL,4294967294UL,0xC05B529FL,0UL},{0xC05B529FL,4294967294UL,3UL,4294967295UL,3UL,4294967294UL,0xC05B529FL,0UL},{0xC05B529FL,4294967294UL,3UL,4294967295UL,3UL,4294967294UL,0xC05B529FL,0UL}}};
                        uint32_t l_185 = 0x01999303L;
                        int i, j, k;
                        l_181 = l_179[7][0];
                        l_183 = l_182[3][3];
                        l_178.s2 = (l_177.s5 = (l_184[1][7][1] , l_185));
                    }
                    else
                    { /* block id: 73 */
                        l_178.se = ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(clz(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(0x0522CE91L, (-5L))))).yyxyxyyxxyxyyxyx))).s35)).even;
                    }
                    l_186++;
                    unsigned int result = 0;
                    result += l_168;
                    result += l_175;
                    int l_176_i0, l_176_i1;
                    for (l_176_i0 = 0; l_176_i0 < 5; l_176_i0++) {
                        for (l_176_i1 = 0; l_176_i1 < 4; l_176_i1++) {
                            result += l_176[l_176_i0][l_176_i1];
                        }
                    }
                    result += l_177.s7;
                    result += l_177.s6;
                    result += l_177.s5;
                    result += l_177.s4;
                    result += l_177.s3;
                    result += l_177.s2;
                    result += l_177.s1;
                    result += l_177.s0;
                    result += l_178.sf;
                    result += l_178.se;
                    result += l_178.sd;
                    result += l_178.sc;
                    result += l_178.sb;
                    result += l_178.sa;
                    result += l_178.s9;
                    result += l_178.s8;
                    result += l_178.s7;
                    result += l_178.s6;
                    result += l_178.s5;
                    result += l_178.s4;
                    result += l_178.s3;
                    result += l_178.s2;
                    result += l_178.s1;
                    result += l_178.s0;
                    result += l_186;
                    atomic_add(&p_718->l_special_values[41], result);
                }
                else
                { /* block id: 77 */
                    (1 + 1);
                }
            }
            if ((**l_110))
                continue;
        }
    }
    return l_147;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global volatile int *g_atomic_reduction, __global int *sequence_input, __global long *g_comm_values) {
    int i, j;
    __local volatile uint32_t l_atomic_input[95];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 95; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[95];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 95; i++)
            l_special_values[i] = 0;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    __local int64_t l_comm_values[119];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 119; i++)
            l_comm_values[i] = 1;
    struct S0 c_719;
    struct S0* p_718 = &c_719;
    struct S0 c_720 = {
        (VECTOR(int16_t, 8))(0x70AAL, (VECTOR(int16_t, 4))(0x70AAL, (VECTOR(int16_t, 2))(0x70AAL, 0x6F7FL), 0x6F7FL), 0x6F7FL, 0x70AAL, 0x6F7FL), // p_718->g_9
        0x77F0A061L, // p_718->g_68
        0x72L, // p_718->g_71
        4294967293UL, // p_718->g_76
        4294967289UL, // p_718->g_79
        {0x645104F3L,(-6L),0x606A86E6L,(-6L),0x645104F3L,0x645104F3L,(-6L),0x606A86E6L,(-6L),0x645104F3L}, // p_718->g_86
        (VECTOR(uint32_t, 4))(4294967287UL, (VECTOR(uint32_t, 2))(4294967287UL, 0x1936EFE4L), 0x1936EFE4L), // p_718->g_99
        (VECTOR(uint32_t, 16))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 7UL), 7UL), 7UL, 1UL, 7UL, (VECTOR(uint32_t, 2))(1UL, 7UL), (VECTOR(uint32_t, 2))(1UL, 7UL), 1UL, 7UL, 1UL, 7UL), // p_718->g_100
        (VECTOR(uint8_t, 2))(0x0EL, 5UL), // p_718->g_101
        1L, // p_718->g_141
        0x4CD0C3B02FF5F5FBL, // p_718->g_149
        (VECTOR(uint64_t, 16))(0xDCBE86AE0A1952B1L, (VECTOR(uint64_t, 4))(0xDCBE86AE0A1952B1L, (VECTOR(uint64_t, 2))(0xDCBE86AE0A1952B1L, 2UL), 2UL), 2UL, 0xDCBE86AE0A1952B1L, 2UL, (VECTOR(uint64_t, 2))(0xDCBE86AE0A1952B1L, 2UL), (VECTOR(uint64_t, 2))(0xDCBE86AE0A1952B1L, 2UL), 0xDCBE86AE0A1952B1L, 2UL, 0xDCBE86AE0A1952B1L, 2UL), // p_718->g_162
        (-1L), // p_718->g_198
        {{0x8155E1EFB666E459L,0xD3BF737D9CE7F4B8L,0x8155E1EFB666E459L,0x8155E1EFB666E459L,0xD3BF737D9CE7F4B8L,0x8155E1EFB666E459L},{0x8155E1EFB666E459L,0xD3BF737D9CE7F4B8L,0x8155E1EFB666E459L,0x8155E1EFB666E459L,0xD3BF737D9CE7F4B8L,0x8155E1EFB666E459L},{0x8155E1EFB666E459L,0xD3BF737D9CE7F4B8L,0x8155E1EFB666E459L,0x8155E1EFB666E459L,0xD3BF737D9CE7F4B8L,0x8155E1EFB666E459L},{0x8155E1EFB666E459L,0xD3BF737D9CE7F4B8L,0x8155E1EFB666E459L,0x8155E1EFB666E459L,0xD3BF737D9CE7F4B8L,0x8155E1EFB666E459L},{0x8155E1EFB666E459L,0xD3BF737D9CE7F4B8L,0x8155E1EFB666E459L,0x8155E1EFB666E459L,0xD3BF737D9CE7F4B8L,0x8155E1EFB666E459L}}, // p_718->g_216
        (-4L), // p_718->g_223
        (VECTOR(uint16_t, 8))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0x7A34L), 0x7A34L), 0x7A34L, 1UL, 0x7A34L), // p_718->g_244
        (VECTOR(uint16_t, 16))(0x7204L, (VECTOR(uint16_t, 4))(0x7204L, (VECTOR(uint16_t, 2))(0x7204L, 65535UL), 65535UL), 65535UL, 0x7204L, 65535UL, (VECTOR(uint16_t, 2))(0x7204L, 65535UL), (VECTOR(uint16_t, 2))(0x7204L, 65535UL), 0x7204L, 65535UL, 0x7204L, 65535UL), // p_718->g_245
        (VECTOR(int64_t, 16))(0x40E2F8F9937B97A5L, (VECTOR(int64_t, 4))(0x40E2F8F9937B97A5L, (VECTOR(int64_t, 2))(0x40E2F8F9937B97A5L, (-1L)), (-1L)), (-1L), 0x40E2F8F9937B97A5L, (-1L), (VECTOR(int64_t, 2))(0x40E2F8F9937B97A5L, (-1L)), (VECTOR(int64_t, 2))(0x40E2F8F9937B97A5L, (-1L)), 0x40E2F8F9937B97A5L, (-1L), 0x40E2F8F9937B97A5L, (-1L)), // p_718->g_272
        &p_718->g_86[6], // p_718->g_292
        (VECTOR(int64_t, 2))((-2L), (-10L)), // p_718->g_313
        (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 6L), 6L), // p_718->g_331
        (VECTOR(int16_t, 16))(0x6068L, (VECTOR(int16_t, 4))(0x6068L, (VECTOR(int16_t, 2))(0x6068L, (-1L)), (-1L)), (-1L), 0x6068L, (-1L), (VECTOR(int16_t, 2))(0x6068L, (-1L)), (VECTOR(int16_t, 2))(0x6068L, (-1L)), 0x6068L, (-1L), 0x6068L, (-1L)), // p_718->g_342
        (void*)0, // p_718->g_348
        (VECTOR(int8_t, 16))(0x4BL, (VECTOR(int8_t, 4))(0x4BL, (VECTOR(int8_t, 2))(0x4BL, 0x07L), 0x07L), 0x07L, 0x4BL, 0x07L, (VECTOR(int8_t, 2))(0x4BL, 0x07L), (VECTOR(int8_t, 2))(0x4BL, 0x07L), 0x4BL, 0x07L, 0x4BL, 0x07L), // p_718->g_352
        (VECTOR(int8_t, 4))(0x46L, (VECTOR(int8_t, 2))(0x46L, 0x67L), 0x67L), // p_718->g_353
        (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, (-1L)), (-1L)), // p_718->g_359
        0x4E1D7CEBL, // p_718->g_387
        (void*)0, // p_718->g_437
        0x7940AD29L, // p_718->g_486
        (VECTOR(int16_t, 2))((-10L), 0x250AL), // p_718->g_490
        247UL, // p_718->g_517
        (VECTOR(int32_t, 8))(7L, (VECTOR(int32_t, 4))(7L, (VECTOR(int32_t, 2))(7L, 0x77AC0E9AL), 0x77AC0E9AL), 0x77AC0E9AL, 7L, 0x77AC0E9AL), // p_718->g_530
        (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 1L), 1L), // p_718->g_545
        (VECTOR(int32_t, 2))(0x796DB0B2L, 0x6287C303L), // p_718->g_555
        (VECTOR(int32_t, 8))(0x182312BEL, (VECTOR(int32_t, 4))(0x182312BEL, (VECTOR(int32_t, 2))(0x182312BEL, 0L), 0L), 0L, 0x182312BEL, 0L), // p_718->g_558
        (VECTOR(int8_t, 2))(1L, 0x0EL), // p_718->g_563
        (VECTOR(int8_t, 8))(0x7DL, (VECTOR(int8_t, 4))(0x7DL, (VECTOR(int8_t, 2))(0x7DL, 0x70L), 0x70L), 0x70L, 0x7DL, 0x70L), // p_718->g_565
        (VECTOR(int8_t, 4))(0x3EL, (VECTOR(int8_t, 2))(0x3EL, 0x75L), 0x75L), // p_718->g_566
        (VECTOR(int8_t, 16))(0x40L, (VECTOR(int8_t, 4))(0x40L, (VECTOR(int8_t, 2))(0x40L, 0L), 0L), 0L, 0x40L, 0L, (VECTOR(int8_t, 2))(0x40L, 0L), (VECTOR(int8_t, 2))(0x40L, 0L), 0x40L, 0L, 0x40L, 0L), // p_718->g_597
        (VECTOR(int16_t, 4))(0x5E66L, (VECTOR(int16_t, 2))(0x5E66L, 0x3B79L), 0x3B79L), // p_718->g_619
        (VECTOR(int64_t, 2))(0x35AD2E04DD959B29L, 0x4B52B75CD09A7E80L), // p_718->g_633
        (VECTOR(uint64_t, 2))(0x61C8603803B6722DL, 0x914C005D04E5450FL), // p_718->g_642
        (VECTOR(uint8_t, 16))(0x01L, (VECTOR(uint8_t, 4))(0x01L, (VECTOR(uint8_t, 2))(0x01L, 0xDFL), 0xDFL), 0xDFL, 0x01L, 0xDFL, (VECTOR(uint8_t, 2))(0x01L, 0xDFL), (VECTOR(uint8_t, 2))(0x01L, 0xDFL), 0x01L, 0xDFL, 0x01L, 0xDFL), // p_718->g_664
        {{(void*)0,&p_718->g_198,(void*)0,(void*)0,&p_718->g_198,(void*)0}}, // p_718->g_688
        0, // p_718->v_collective
        sequence_input[get_global_id(0)], // p_718->global_0_offset
        sequence_input[get_global_id(1)], // p_718->global_1_offset
        sequence_input[get_global_id(2)], // p_718->global_2_offset
        sequence_input[get_local_id(0)], // p_718->local_0_offset
        sequence_input[get_local_id(1)], // p_718->local_1_offset
        sequence_input[get_local_id(2)], // p_718->local_2_offset
        sequence_input[get_group_id(0)], // p_718->group_0_offset
        sequence_input[get_group_id(1)], // p_718->group_1_offset
        sequence_input[get_group_id(2)], // p_718->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 119)), permutations[0][get_linear_local_id()])), // p_718->tid
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_719 = c_720;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_718);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_718->g_9.s0, "p_718->g_9.s0", print_hash_value);
    transparent_crc(p_718->g_9.s1, "p_718->g_9.s1", print_hash_value);
    transparent_crc(p_718->g_9.s2, "p_718->g_9.s2", print_hash_value);
    transparent_crc(p_718->g_9.s3, "p_718->g_9.s3", print_hash_value);
    transparent_crc(p_718->g_9.s4, "p_718->g_9.s4", print_hash_value);
    transparent_crc(p_718->g_9.s5, "p_718->g_9.s5", print_hash_value);
    transparent_crc(p_718->g_9.s6, "p_718->g_9.s6", print_hash_value);
    transparent_crc(p_718->g_9.s7, "p_718->g_9.s7", print_hash_value);
    transparent_crc(p_718->g_68, "p_718->g_68", print_hash_value);
    transparent_crc(p_718->g_71, "p_718->g_71", print_hash_value);
    transparent_crc(p_718->g_76, "p_718->g_76", print_hash_value);
    transparent_crc(p_718->g_79, "p_718->g_79", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_718->g_86[i], "p_718->g_86[i]", print_hash_value);

    }
    transparent_crc(p_718->g_99.x, "p_718->g_99.x", print_hash_value);
    transparent_crc(p_718->g_99.y, "p_718->g_99.y", print_hash_value);
    transparent_crc(p_718->g_99.z, "p_718->g_99.z", print_hash_value);
    transparent_crc(p_718->g_99.w, "p_718->g_99.w", print_hash_value);
    transparent_crc(p_718->g_100.s0, "p_718->g_100.s0", print_hash_value);
    transparent_crc(p_718->g_100.s1, "p_718->g_100.s1", print_hash_value);
    transparent_crc(p_718->g_100.s2, "p_718->g_100.s2", print_hash_value);
    transparent_crc(p_718->g_100.s3, "p_718->g_100.s3", print_hash_value);
    transparent_crc(p_718->g_100.s4, "p_718->g_100.s4", print_hash_value);
    transparent_crc(p_718->g_100.s5, "p_718->g_100.s5", print_hash_value);
    transparent_crc(p_718->g_100.s6, "p_718->g_100.s6", print_hash_value);
    transparent_crc(p_718->g_100.s7, "p_718->g_100.s7", print_hash_value);
    transparent_crc(p_718->g_100.s8, "p_718->g_100.s8", print_hash_value);
    transparent_crc(p_718->g_100.s9, "p_718->g_100.s9", print_hash_value);
    transparent_crc(p_718->g_100.sa, "p_718->g_100.sa", print_hash_value);
    transparent_crc(p_718->g_100.sb, "p_718->g_100.sb", print_hash_value);
    transparent_crc(p_718->g_100.sc, "p_718->g_100.sc", print_hash_value);
    transparent_crc(p_718->g_100.sd, "p_718->g_100.sd", print_hash_value);
    transparent_crc(p_718->g_100.se, "p_718->g_100.se", print_hash_value);
    transparent_crc(p_718->g_100.sf, "p_718->g_100.sf", print_hash_value);
    transparent_crc(p_718->g_101.x, "p_718->g_101.x", print_hash_value);
    transparent_crc(p_718->g_101.y, "p_718->g_101.y", print_hash_value);
    transparent_crc(p_718->g_141, "p_718->g_141", print_hash_value);
    transparent_crc(p_718->g_149, "p_718->g_149", print_hash_value);
    transparent_crc(p_718->g_162.s0, "p_718->g_162.s0", print_hash_value);
    transparent_crc(p_718->g_162.s1, "p_718->g_162.s1", print_hash_value);
    transparent_crc(p_718->g_162.s2, "p_718->g_162.s2", print_hash_value);
    transparent_crc(p_718->g_162.s3, "p_718->g_162.s3", print_hash_value);
    transparent_crc(p_718->g_162.s4, "p_718->g_162.s4", print_hash_value);
    transparent_crc(p_718->g_162.s5, "p_718->g_162.s5", print_hash_value);
    transparent_crc(p_718->g_162.s6, "p_718->g_162.s6", print_hash_value);
    transparent_crc(p_718->g_162.s7, "p_718->g_162.s7", print_hash_value);
    transparent_crc(p_718->g_162.s8, "p_718->g_162.s8", print_hash_value);
    transparent_crc(p_718->g_162.s9, "p_718->g_162.s9", print_hash_value);
    transparent_crc(p_718->g_162.sa, "p_718->g_162.sa", print_hash_value);
    transparent_crc(p_718->g_162.sb, "p_718->g_162.sb", print_hash_value);
    transparent_crc(p_718->g_162.sc, "p_718->g_162.sc", print_hash_value);
    transparent_crc(p_718->g_162.sd, "p_718->g_162.sd", print_hash_value);
    transparent_crc(p_718->g_162.se, "p_718->g_162.se", print_hash_value);
    transparent_crc(p_718->g_162.sf, "p_718->g_162.sf", print_hash_value);
    transparent_crc(p_718->g_198, "p_718->g_198", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 6; j++)
        {
            transparent_crc(p_718->g_216[i][j], "p_718->g_216[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_718->g_223, "p_718->g_223", print_hash_value);
    transparent_crc(p_718->g_244.s0, "p_718->g_244.s0", print_hash_value);
    transparent_crc(p_718->g_244.s1, "p_718->g_244.s1", print_hash_value);
    transparent_crc(p_718->g_244.s2, "p_718->g_244.s2", print_hash_value);
    transparent_crc(p_718->g_244.s3, "p_718->g_244.s3", print_hash_value);
    transparent_crc(p_718->g_244.s4, "p_718->g_244.s4", print_hash_value);
    transparent_crc(p_718->g_244.s5, "p_718->g_244.s5", print_hash_value);
    transparent_crc(p_718->g_244.s6, "p_718->g_244.s6", print_hash_value);
    transparent_crc(p_718->g_244.s7, "p_718->g_244.s7", print_hash_value);
    transparent_crc(p_718->g_245.s0, "p_718->g_245.s0", print_hash_value);
    transparent_crc(p_718->g_245.s1, "p_718->g_245.s1", print_hash_value);
    transparent_crc(p_718->g_245.s2, "p_718->g_245.s2", print_hash_value);
    transparent_crc(p_718->g_245.s3, "p_718->g_245.s3", print_hash_value);
    transparent_crc(p_718->g_245.s4, "p_718->g_245.s4", print_hash_value);
    transparent_crc(p_718->g_245.s5, "p_718->g_245.s5", print_hash_value);
    transparent_crc(p_718->g_245.s6, "p_718->g_245.s6", print_hash_value);
    transparent_crc(p_718->g_245.s7, "p_718->g_245.s7", print_hash_value);
    transparent_crc(p_718->g_245.s8, "p_718->g_245.s8", print_hash_value);
    transparent_crc(p_718->g_245.s9, "p_718->g_245.s9", print_hash_value);
    transparent_crc(p_718->g_245.sa, "p_718->g_245.sa", print_hash_value);
    transparent_crc(p_718->g_245.sb, "p_718->g_245.sb", print_hash_value);
    transparent_crc(p_718->g_245.sc, "p_718->g_245.sc", print_hash_value);
    transparent_crc(p_718->g_245.sd, "p_718->g_245.sd", print_hash_value);
    transparent_crc(p_718->g_245.se, "p_718->g_245.se", print_hash_value);
    transparent_crc(p_718->g_245.sf, "p_718->g_245.sf", print_hash_value);
    transparent_crc(p_718->g_272.s0, "p_718->g_272.s0", print_hash_value);
    transparent_crc(p_718->g_272.s1, "p_718->g_272.s1", print_hash_value);
    transparent_crc(p_718->g_272.s2, "p_718->g_272.s2", print_hash_value);
    transparent_crc(p_718->g_272.s3, "p_718->g_272.s3", print_hash_value);
    transparent_crc(p_718->g_272.s4, "p_718->g_272.s4", print_hash_value);
    transparent_crc(p_718->g_272.s5, "p_718->g_272.s5", print_hash_value);
    transparent_crc(p_718->g_272.s6, "p_718->g_272.s6", print_hash_value);
    transparent_crc(p_718->g_272.s7, "p_718->g_272.s7", print_hash_value);
    transparent_crc(p_718->g_272.s8, "p_718->g_272.s8", print_hash_value);
    transparent_crc(p_718->g_272.s9, "p_718->g_272.s9", print_hash_value);
    transparent_crc(p_718->g_272.sa, "p_718->g_272.sa", print_hash_value);
    transparent_crc(p_718->g_272.sb, "p_718->g_272.sb", print_hash_value);
    transparent_crc(p_718->g_272.sc, "p_718->g_272.sc", print_hash_value);
    transparent_crc(p_718->g_272.sd, "p_718->g_272.sd", print_hash_value);
    transparent_crc(p_718->g_272.se, "p_718->g_272.se", print_hash_value);
    transparent_crc(p_718->g_272.sf, "p_718->g_272.sf", print_hash_value);
    transparent_crc(p_718->g_313.x, "p_718->g_313.x", print_hash_value);
    transparent_crc(p_718->g_313.y, "p_718->g_313.y", print_hash_value);
    transparent_crc(p_718->g_331.x, "p_718->g_331.x", print_hash_value);
    transparent_crc(p_718->g_331.y, "p_718->g_331.y", print_hash_value);
    transparent_crc(p_718->g_331.z, "p_718->g_331.z", print_hash_value);
    transparent_crc(p_718->g_331.w, "p_718->g_331.w", print_hash_value);
    transparent_crc(p_718->g_342.s0, "p_718->g_342.s0", print_hash_value);
    transparent_crc(p_718->g_342.s1, "p_718->g_342.s1", print_hash_value);
    transparent_crc(p_718->g_342.s2, "p_718->g_342.s2", print_hash_value);
    transparent_crc(p_718->g_342.s3, "p_718->g_342.s3", print_hash_value);
    transparent_crc(p_718->g_342.s4, "p_718->g_342.s4", print_hash_value);
    transparent_crc(p_718->g_342.s5, "p_718->g_342.s5", print_hash_value);
    transparent_crc(p_718->g_342.s6, "p_718->g_342.s6", print_hash_value);
    transparent_crc(p_718->g_342.s7, "p_718->g_342.s7", print_hash_value);
    transparent_crc(p_718->g_342.s8, "p_718->g_342.s8", print_hash_value);
    transparent_crc(p_718->g_342.s9, "p_718->g_342.s9", print_hash_value);
    transparent_crc(p_718->g_342.sa, "p_718->g_342.sa", print_hash_value);
    transparent_crc(p_718->g_342.sb, "p_718->g_342.sb", print_hash_value);
    transparent_crc(p_718->g_342.sc, "p_718->g_342.sc", print_hash_value);
    transparent_crc(p_718->g_342.sd, "p_718->g_342.sd", print_hash_value);
    transparent_crc(p_718->g_342.se, "p_718->g_342.se", print_hash_value);
    transparent_crc(p_718->g_342.sf, "p_718->g_342.sf", print_hash_value);
    transparent_crc(p_718->g_352.s0, "p_718->g_352.s0", print_hash_value);
    transparent_crc(p_718->g_352.s1, "p_718->g_352.s1", print_hash_value);
    transparent_crc(p_718->g_352.s2, "p_718->g_352.s2", print_hash_value);
    transparent_crc(p_718->g_352.s3, "p_718->g_352.s3", print_hash_value);
    transparent_crc(p_718->g_352.s4, "p_718->g_352.s4", print_hash_value);
    transparent_crc(p_718->g_352.s5, "p_718->g_352.s5", print_hash_value);
    transparent_crc(p_718->g_352.s6, "p_718->g_352.s6", print_hash_value);
    transparent_crc(p_718->g_352.s7, "p_718->g_352.s7", print_hash_value);
    transparent_crc(p_718->g_352.s8, "p_718->g_352.s8", print_hash_value);
    transparent_crc(p_718->g_352.s9, "p_718->g_352.s9", print_hash_value);
    transparent_crc(p_718->g_352.sa, "p_718->g_352.sa", print_hash_value);
    transparent_crc(p_718->g_352.sb, "p_718->g_352.sb", print_hash_value);
    transparent_crc(p_718->g_352.sc, "p_718->g_352.sc", print_hash_value);
    transparent_crc(p_718->g_352.sd, "p_718->g_352.sd", print_hash_value);
    transparent_crc(p_718->g_352.se, "p_718->g_352.se", print_hash_value);
    transparent_crc(p_718->g_352.sf, "p_718->g_352.sf", print_hash_value);
    transparent_crc(p_718->g_353.x, "p_718->g_353.x", print_hash_value);
    transparent_crc(p_718->g_353.y, "p_718->g_353.y", print_hash_value);
    transparent_crc(p_718->g_353.z, "p_718->g_353.z", print_hash_value);
    transparent_crc(p_718->g_353.w, "p_718->g_353.w", print_hash_value);
    transparent_crc(p_718->g_359.x, "p_718->g_359.x", print_hash_value);
    transparent_crc(p_718->g_359.y, "p_718->g_359.y", print_hash_value);
    transparent_crc(p_718->g_359.z, "p_718->g_359.z", print_hash_value);
    transparent_crc(p_718->g_359.w, "p_718->g_359.w", print_hash_value);
    transparent_crc(p_718->g_387, "p_718->g_387", print_hash_value);
    transparent_crc(p_718->g_486, "p_718->g_486", print_hash_value);
    transparent_crc(p_718->g_490.x, "p_718->g_490.x", print_hash_value);
    transparent_crc(p_718->g_490.y, "p_718->g_490.y", print_hash_value);
    transparent_crc(p_718->g_517, "p_718->g_517", print_hash_value);
    transparent_crc(p_718->g_530.s0, "p_718->g_530.s0", print_hash_value);
    transparent_crc(p_718->g_530.s1, "p_718->g_530.s1", print_hash_value);
    transparent_crc(p_718->g_530.s2, "p_718->g_530.s2", print_hash_value);
    transparent_crc(p_718->g_530.s3, "p_718->g_530.s3", print_hash_value);
    transparent_crc(p_718->g_530.s4, "p_718->g_530.s4", print_hash_value);
    transparent_crc(p_718->g_530.s5, "p_718->g_530.s5", print_hash_value);
    transparent_crc(p_718->g_530.s6, "p_718->g_530.s6", print_hash_value);
    transparent_crc(p_718->g_530.s7, "p_718->g_530.s7", print_hash_value);
    transparent_crc(p_718->g_545.x, "p_718->g_545.x", print_hash_value);
    transparent_crc(p_718->g_545.y, "p_718->g_545.y", print_hash_value);
    transparent_crc(p_718->g_545.z, "p_718->g_545.z", print_hash_value);
    transparent_crc(p_718->g_545.w, "p_718->g_545.w", print_hash_value);
    transparent_crc(p_718->g_555.x, "p_718->g_555.x", print_hash_value);
    transparent_crc(p_718->g_555.y, "p_718->g_555.y", print_hash_value);
    transparent_crc(p_718->g_558.s0, "p_718->g_558.s0", print_hash_value);
    transparent_crc(p_718->g_558.s1, "p_718->g_558.s1", print_hash_value);
    transparent_crc(p_718->g_558.s2, "p_718->g_558.s2", print_hash_value);
    transparent_crc(p_718->g_558.s3, "p_718->g_558.s3", print_hash_value);
    transparent_crc(p_718->g_558.s4, "p_718->g_558.s4", print_hash_value);
    transparent_crc(p_718->g_558.s5, "p_718->g_558.s5", print_hash_value);
    transparent_crc(p_718->g_558.s6, "p_718->g_558.s6", print_hash_value);
    transparent_crc(p_718->g_558.s7, "p_718->g_558.s7", print_hash_value);
    transparent_crc(p_718->g_563.x, "p_718->g_563.x", print_hash_value);
    transparent_crc(p_718->g_563.y, "p_718->g_563.y", print_hash_value);
    transparent_crc(p_718->g_565.s0, "p_718->g_565.s0", print_hash_value);
    transparent_crc(p_718->g_565.s1, "p_718->g_565.s1", print_hash_value);
    transparent_crc(p_718->g_565.s2, "p_718->g_565.s2", print_hash_value);
    transparent_crc(p_718->g_565.s3, "p_718->g_565.s3", print_hash_value);
    transparent_crc(p_718->g_565.s4, "p_718->g_565.s4", print_hash_value);
    transparent_crc(p_718->g_565.s5, "p_718->g_565.s5", print_hash_value);
    transparent_crc(p_718->g_565.s6, "p_718->g_565.s6", print_hash_value);
    transparent_crc(p_718->g_565.s7, "p_718->g_565.s7", print_hash_value);
    transparent_crc(p_718->g_566.x, "p_718->g_566.x", print_hash_value);
    transparent_crc(p_718->g_566.y, "p_718->g_566.y", print_hash_value);
    transparent_crc(p_718->g_566.z, "p_718->g_566.z", print_hash_value);
    transparent_crc(p_718->g_566.w, "p_718->g_566.w", print_hash_value);
    transparent_crc(p_718->g_597.s0, "p_718->g_597.s0", print_hash_value);
    transparent_crc(p_718->g_597.s1, "p_718->g_597.s1", print_hash_value);
    transparent_crc(p_718->g_597.s2, "p_718->g_597.s2", print_hash_value);
    transparent_crc(p_718->g_597.s3, "p_718->g_597.s3", print_hash_value);
    transparent_crc(p_718->g_597.s4, "p_718->g_597.s4", print_hash_value);
    transparent_crc(p_718->g_597.s5, "p_718->g_597.s5", print_hash_value);
    transparent_crc(p_718->g_597.s6, "p_718->g_597.s6", print_hash_value);
    transparent_crc(p_718->g_597.s7, "p_718->g_597.s7", print_hash_value);
    transparent_crc(p_718->g_597.s8, "p_718->g_597.s8", print_hash_value);
    transparent_crc(p_718->g_597.s9, "p_718->g_597.s9", print_hash_value);
    transparent_crc(p_718->g_597.sa, "p_718->g_597.sa", print_hash_value);
    transparent_crc(p_718->g_597.sb, "p_718->g_597.sb", print_hash_value);
    transparent_crc(p_718->g_597.sc, "p_718->g_597.sc", print_hash_value);
    transparent_crc(p_718->g_597.sd, "p_718->g_597.sd", print_hash_value);
    transparent_crc(p_718->g_597.se, "p_718->g_597.se", print_hash_value);
    transparent_crc(p_718->g_597.sf, "p_718->g_597.sf", print_hash_value);
    transparent_crc(p_718->g_619.x, "p_718->g_619.x", print_hash_value);
    transparent_crc(p_718->g_619.y, "p_718->g_619.y", print_hash_value);
    transparent_crc(p_718->g_619.z, "p_718->g_619.z", print_hash_value);
    transparent_crc(p_718->g_619.w, "p_718->g_619.w", print_hash_value);
    transparent_crc(p_718->g_633.x, "p_718->g_633.x", print_hash_value);
    transparent_crc(p_718->g_633.y, "p_718->g_633.y", print_hash_value);
    transparent_crc(p_718->g_642.x, "p_718->g_642.x", print_hash_value);
    transparent_crc(p_718->g_642.y, "p_718->g_642.y", print_hash_value);
    transparent_crc(p_718->g_664.s0, "p_718->g_664.s0", print_hash_value);
    transparent_crc(p_718->g_664.s1, "p_718->g_664.s1", print_hash_value);
    transparent_crc(p_718->g_664.s2, "p_718->g_664.s2", print_hash_value);
    transparent_crc(p_718->g_664.s3, "p_718->g_664.s3", print_hash_value);
    transparent_crc(p_718->g_664.s4, "p_718->g_664.s4", print_hash_value);
    transparent_crc(p_718->g_664.s5, "p_718->g_664.s5", print_hash_value);
    transparent_crc(p_718->g_664.s6, "p_718->g_664.s6", print_hash_value);
    transparent_crc(p_718->g_664.s7, "p_718->g_664.s7", print_hash_value);
    transparent_crc(p_718->g_664.s8, "p_718->g_664.s8", print_hash_value);
    transparent_crc(p_718->g_664.s9, "p_718->g_664.s9", print_hash_value);
    transparent_crc(p_718->g_664.sa, "p_718->g_664.sa", print_hash_value);
    transparent_crc(p_718->g_664.sb, "p_718->g_664.sb", print_hash_value);
    transparent_crc(p_718->g_664.sc, "p_718->g_664.sc", print_hash_value);
    transparent_crc(p_718->g_664.sd, "p_718->g_664.sd", print_hash_value);
    transparent_crc(p_718->g_664.se, "p_718->g_664.se", print_hash_value);
    transparent_crc(p_718->g_664.sf, "p_718->g_664.sf", print_hash_value);
    transparent_crc(p_718->v_collective, "p_718->v_collective", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 95; i++)
            transparent_crc(p_718->g_special_values[i + 95 * get_linear_group_id()], "p_718->g_special_values[i + 95 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 95; i++)
            transparent_crc(p_718->l_special_values[i], "p_718->l_special_values[i]", print_hash_value);
    transparent_crc(p_718->l_comm_values[get_linear_local_id()], "p_718->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_718->g_comm_values[get_linear_group_id() * 119 + get_linear_local_id()], "p_718->g_comm_values[get_linear_group_id() * 119 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
