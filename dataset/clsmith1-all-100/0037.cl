// --atomics 31 ---atomic_reductions ---fake_divergence ---inter_thread_comm -g 63,12,3 -l 3,6,3
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

__constant uint32_t permutations[10][54] = {
{1,23,15,2,16,14,43,47,27,35,28,46,11,30,9,3,5,39,19,17,22,40,21,48,51,38,12,25,8,36,13,41,10,50,29,52,44,42,53,31,34,7,37,6,4,0,45,24,49,20,26,33,18,32}, // permutation 0
{15,6,0,31,19,44,8,26,23,2,30,53,27,40,52,41,4,42,5,34,17,48,14,18,45,12,11,28,24,25,13,50,29,21,36,9,10,46,32,1,16,3,43,37,7,22,47,51,20,49,39,33,35,38}, // permutation 1
{31,10,41,13,44,1,52,6,2,7,21,51,19,35,46,30,48,26,17,22,23,18,8,34,45,15,9,39,3,25,53,32,24,28,16,40,50,11,12,49,27,20,5,33,47,29,36,43,4,37,42,14,0,38}, // permutation 2
{27,32,52,23,7,31,0,5,19,37,14,11,40,44,4,43,6,21,39,35,24,22,30,38,26,33,50,47,17,36,51,45,10,18,3,1,25,2,15,28,34,53,20,46,49,16,8,12,48,41,29,9,42,13}, // permutation 3
{39,43,3,15,32,9,1,35,34,18,41,33,53,50,44,27,42,37,5,22,45,28,20,17,4,47,6,31,11,14,49,51,40,26,0,46,10,2,29,12,52,25,19,7,30,48,36,38,8,16,13,24,23,21}, // permutation 4
{28,24,25,45,26,4,31,1,11,15,35,0,41,23,52,38,48,44,29,30,37,20,13,7,42,33,8,46,49,36,14,10,40,43,19,6,9,39,12,50,5,34,47,27,2,53,21,17,32,18,51,3,22,16}, // permutation 5
{46,8,20,38,26,14,43,49,30,6,39,31,52,28,33,0,29,47,21,7,10,23,24,32,17,12,4,35,13,44,18,37,48,19,16,40,53,50,34,1,11,22,15,42,36,27,3,5,45,51,25,41,9,2}, // permutation 6
{52,0,28,50,19,9,16,14,49,33,41,20,31,51,25,1,32,17,53,47,44,23,40,30,45,5,38,24,6,34,11,18,13,37,39,46,42,2,35,10,12,21,8,48,4,15,36,22,43,27,26,3,7,29}, // permutation 7
{45,38,33,47,28,25,8,9,15,53,46,39,36,48,42,12,7,26,2,6,21,31,18,19,40,5,0,43,10,23,4,41,1,37,20,11,49,24,17,22,13,3,44,29,30,50,35,52,34,14,16,32,51,27}, // permutation 8
{0,41,52,11,35,33,36,46,43,16,17,1,51,38,12,21,49,31,18,9,40,28,27,14,4,13,19,25,24,5,26,10,29,8,44,47,7,42,53,32,3,15,45,34,22,30,20,2,48,39,37,50,6,23} // permutation 9
};

// Seed: 37

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   int64_t  f0;
   int16_t  f1;
   volatile int32_t  f2;
};

struct S1 {
    int32_t g_8;
    int32_t *g_7;
    volatile union U0 g_21;
    uint8_t g_37;
    int32_t g_41;
    int32_t g_44;
    VECTOR(int32_t, 16) g_47;
    int32_t g_51;
    uint32_t g_60;
    volatile uint8_t g_69;
    volatile uint8_t *g_68;
    int8_t g_82;
    int8_t g_84;
    volatile uint32_t g_94[5];
    volatile uint32_t * volatile g_93;
    volatile uint32_t * volatile *g_92;
    uint64_t g_95[4];
    VECTOR(uint16_t, 8) g_272;
    VECTOR(int8_t, 8) g_279;
    uint32_t *g_310;
    uint32_t **g_309;
    uint8_t g_315;
    uint32_t g_320;
    uint8_t g_326;
    int64_t g_344[2];
    VECTOR(int64_t, 2) g_354;
    int16_t g_359[8];
    VECTOR(uint16_t, 16) g_373;
    int32_t *g_424;
    VECTOR(uint16_t, 16) g_448;
    VECTOR(uint16_t, 2) g_449;
    uint32_t g_455;
    VECTOR(int8_t, 8) g_472;
    VECTOR(int8_t, 2) g_476;
    VECTOR(int32_t, 16) g_489;
    VECTOR(int32_t, 8) g_499;
    uint8_t g_506;
    volatile int16_t g_553[6][1][6];
    volatile int16_t *g_552;
    volatile int16_t **g_551[3][5][6];
    VECTOR(int16_t, 16) g_600;
    VECTOR(int16_t, 8) g_605;
    VECTOR(int16_t, 2) g_606;
    VECTOR(int8_t, 16) g_612;
    VECTOR(int32_t, 8) g_619;
    VECTOR(int32_t, 4) g_620;
    uint8_t **g_661[7];
    int16_t g_664;
    VECTOR(int64_t, 4) g_670;
    VECTOR(int16_t, 16) g_899;
    uint16_t *g_905;
    VECTOR(uint16_t, 2) g_909;
    uint32_t ***g_912;
    int32_t g_955;
    VECTOR(int32_t, 4) g_957;
    uint64_t g_968[3][5];
    VECTOR(uint32_t, 16) g_973;
    VECTOR(int16_t, 16) g_990;
    uint64_t g_1001;
    VECTOR(int64_t, 4) g_1007;
    VECTOR(int32_t, 16) g_1041;
    VECTOR(uint64_t, 4) g_1112;
    uint32_t *g_1133;
    uint32_t **g_1132;
    uint32_t *** volatile g_1131[7][10];
    VECTOR(uint8_t, 2) g_1153;
    volatile VECTOR(uint8_t, 16) g_1154;
    VECTOR(int8_t, 16) g_1157;
    int32_t g_1168;
    volatile VECTOR(int32_t, 16) g_1175;
    int32_t ** volatile g_1302;
    uint8_t ***g_1304;
    int32_t * volatile g_1306;
    int32_t ** volatile g_1309;
    int8_t * volatile * volatile * volatile g_1352;
    int16_t g_1357;
    uint64_t g_1358;
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
uint64_t  func_1(struct S1 * p_1367);
int32_t * func_2(int32_t  p_3, int32_t * p_4, uint32_t  p_5, int32_t  p_6, struct S1 * p_1367);
int16_t  func_12(int64_t  p_13, int64_t  p_14, struct S1 * p_1367);
union U0  func_15(int32_t * p_16, int64_t  p_17, uint32_t  p_18, uint32_t  p_19, uint64_t  p_20, struct S1 * p_1367);
int32_t  func_24(int32_t  p_25, int32_t  p_26, struct S1 * p_1367);
uint32_t  func_27(int64_t  p_28, int32_t ** p_29, int8_t  p_30, uint8_t  p_31, int32_t  p_32, struct S1 * p_1367);
int32_t  func_38(uint8_t * p_39, uint8_t * p_40, struct S1 * p_1367);
int32_t  func_54(uint64_t  p_55, uint16_t  p_56, uint32_t  p_57, int32_t ** p_58, struct S1 * p_1367);
uint32_t ** func_63(int8_t  p_64, uint32_t  p_65, int32_t * p_66, int8_t  p_67, struct S1 * p_1367);
uint16_t  func_70(uint32_t  p_71, struct S1 * p_1367);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1367->g_comm_values p_1367->g_7 p_1367->l_comm_values p_1367->g_21 p_1367->g_21.f0 p_1367->g_8 p_1367->g_41 p_1367->g_44 p_1367->g_47 p_1367->g_60 p_1367->g_68 p_1367->g_82 p_1367->g_92 p_1367->g_95 p_1367->g_51 p_1367->g_309 p_1367->g_315 p_1367->g_84 p_1367->g_320 p_1367->g_326 p_1367->g_344 p_1367->g_373 p_1367->g_359 p_1367->g_279 p_1367->g_424 p_1367->g_455 p_1367->g_449 p_1367->g_448 p_1367->g_354 p_1367->g_272 p_1367->g_476 p_1367->g_551 p_1367->g_499 p_1367->g_620 p_1367->g_612 p_1367->g_661 p_1367->g_506 p_1367->g_955 p_1367->g_957 p_1367->g_973 p_1367->g_552 p_1367->g_1001 p_1367->g_1007 p_1367->g_1041 p_1367->g_310 p_1367->g_553 p_1367->g_1112 p_1367->g_968 p_1367->g_664 p_1367->g_1153 p_1367->g_1154 p_1367->g_1157 p_1367->g_1168 p_1367->g_1302 p_1367->g_1309 p_1367->g_619 permutations p_1367->g_1352 p_1367->g_1358 p_1367->g_990 p_1367->g_670
 * writes: p_1367->g_37 p_1367->g_41 p_1367->g_44 p_1367->g_47 p_1367->g_51 p_1367->g_60 p_1367->g_82 p_1367->g_84 p_1367->g_95 p_1367->g_309 p_1367->g_315 p_1367->g_326 p_1367->g_344 p_1367->g_359 p_1367->g_272 p_1367->g_320 p_1367->g_424 p_1367->g_373 p_1367->g_455 p_1367->g_279 p_1367->g_506 p_1367->g_449 p_1367->g_661 p_1367->g_619 p_1367->g_489 p_1367->g_620 p_1367->g_664 p_1367->g_955 p_1367->g_968 p_1367->g_1001 p_1367->g_8 p_1367->g_1132 p_1367->g_1168 p_1367->g_1304 p_1367->g_1306 p_1367->g_7 p_1367->g_1357 p_1367->l_comm_values
 */
uint64_t  func_1(struct S1 * p_1367)
{ /* block id: 4 */
    int16_t l_9 = 0x2B21L;
    int32_t **l_1336 = &p_1367->g_7;
    int16_t l_1349 = 0x12B4L;
    int8_t *l_1353 = &p_1367->g_84;
    int64_t *l_1354 = (void*)0;
    int64_t *l_1355 = &p_1367->g_344[0];
    uint32_t ***l_1356[10][4] = {{&p_1367->g_309,&p_1367->g_309,&p_1367->g_309,&p_1367->g_309},{&p_1367->g_309,&p_1367->g_309,&p_1367->g_309,&p_1367->g_309},{&p_1367->g_309,&p_1367->g_309,&p_1367->g_309,&p_1367->g_309},{&p_1367->g_309,&p_1367->g_309,&p_1367->g_309,&p_1367->g_309},{&p_1367->g_309,&p_1367->g_309,&p_1367->g_309,&p_1367->g_309},{&p_1367->g_309,&p_1367->g_309,&p_1367->g_309,&p_1367->g_309},{&p_1367->g_309,&p_1367->g_309,&p_1367->g_309,&p_1367->g_309},{&p_1367->g_309,&p_1367->g_309,&p_1367->g_309,&p_1367->g_309},{&p_1367->g_309,&p_1367->g_309,&p_1367->g_309,&p_1367->g_309},{&p_1367->g_309,&p_1367->g_309,&p_1367->g_309,&p_1367->g_309}};
    uint16_t *l_1361 = (void*)0;
    uint16_t *l_1362 = (void*)0;
    uint16_t *l_1363 = (void*)0;
    uint16_t *l_1364[2];
    uint8_t l_1365[3][4] = {{3UL,0x52L,3UL,3UL},{3UL,0x52L,3UL,3UL},{3UL,0x52L,3UL,3UL}};
    int32_t *l_1366 = &p_1367->g_41;
    int i, j;
    for (i = 0; i < 2; i++)
        l_1364[i] = (void*)0;
    (*p_1367->g_1302) = ((*l_1336) = func_2(p_1367->g_comm_values[p_1367->tid], p_1367->g_7, (p_1367->g_comm_values[p_1367->tid] , ((p_1367->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1367->tid, 54))] | l_9) > ((VECTOR(uint8_t, 4))(0x20L, 0x26L, 255UL, 249UL)).y)), (((safe_sub_func_int16_t_s_s(func_12(l_9, ((((func_15(&p_1367->g_8, (p_1367->g_21 , l_9), l_9, l_9, l_9, p_1367) , 0x5DL) <= p_1367->g_448.s9) , p_1367->g_619.s6) , l_9), p_1367), p_1367->g_1041.sd)) , l_9) & l_9), p_1367));
    for (p_1367->g_506 = (-4); (p_1367->g_506 > 51); p_1367->g_506 = safe_add_func_uint8_t_u_u(p_1367->g_506, 7))
    { /* block id: 724 */
        int i, j;
        if ((atomic_inc(&p_1367->l_atomic_input[23]) == 5))
        { /* block id: 726 */
            int32_t l_1340 = 0x32EC184DL;
            int32_t *l_1339 = &l_1340;
            int32_t *l_1341 = &l_1340;
            int32_t *l_1342 = &l_1340;
            l_1339 = (void*)0;
            l_1342 = l_1341;
            unsigned int result = 0;
            result += l_1340;
            atomic_add(&p_1367->l_special_values[23], result);
        }
        else
        { /* block id: 729 */
            (1 + 1);
        }
        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        p_1367->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 54)), permutations[(safe_mod_func_uint32_t_u_u(((VECTOR(uint32_t, 2))(0x2F2A1E9EL, 1UL)).even, 10))][(safe_mod_func_uint32_t_u_u(p_1367->tid, 54))]));
        if (permutations[(safe_mod_func_uint32_t_u_u(((VECTOR(uint32_t, 2))(0x2F2A1E9EL, 1UL)).even, 10))][(safe_mod_func_uint32_t_u_u(p_1367->tid, 54))])
            continue;
    }
    (*l_1366) = ((safe_mod_func_int32_t_s_s((((safe_lshift_func_uint16_t_u_s(((safe_mul_func_uint16_t_u_u(l_1349, (p_1367->g_373.s1 <= ((*l_1355) |= (safe_div_func_int8_t_s_s(((*l_1353) = ((void*)0 != p_1367->g_1352)), 1UL)))))) , ((p_1367->g_1357 = ((void*)0 != l_1356[7][2])) , (l_1365[2][1] = (p_1367->g_1358 , ((((p_1367->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1367->tid, 54))] = (safe_mul_func_int8_t_s_s((p_1367->g_619.s1 , p_1367->g_344[0]), l_1349))) ^ GROUP_DIVERGE(2, 1)) , 0x0EL) , p_1367->g_272.s3))))), p_1367->g_990.se)) >= l_1349) >= p_1367->g_359[7]), l_9)) , 0x4D407E84L);
    return p_1367->g_670.y;
}


/* ------------------------------------------ */
/* 
 * reads : p_1367->g_455 p_1367->g_1302 p_1367->g_424
 * writes: p_1367->g_455
 */
int32_t * func_2(int32_t  p_3, int32_t * p_4, uint32_t  p_5, int32_t  p_6, struct S1 * p_1367)
{ /* block id: 712 */
    uint16_t l_1334 = 0xAE9EL;
    int32_t *l_1335 = (void*)0;
    for (p_1367->g_455 = (-20); (p_1367->g_455 != 38); p_1367->g_455 = safe_add_func_uint16_t_u_u(p_1367->g_455, 8))
    { /* block id: 715 */
        return (*p_1367->g_1302);
    }
    l_1334 = 0x76D0A4BAL;
    return l_1335;
}


/* ------------------------------------------ */
/* 
 * reads : p_1367->g_7 p_1367->g_8 p_1367->g_1309 p_1367->g_955 p_1367->g_424
 * writes: p_1367->g_8 p_1367->g_424 p_1367->g_1306 p_1367->g_955
 */
int16_t  func_12(int64_t  p_13, int64_t  p_14, struct S1 * p_1367)
{ /* block id: 705 */
    uint32_t l_1327 = 0UL;
    int32_t *l_1328 = &p_1367->g_955;
    int32_t **l_1329[3];
    int i;
    for (i = 0; i < 3; i++)
        l_1329[i] = &p_1367->g_424;
    (*p_1367->g_7) &= l_1327;
    p_1367->g_1306 = ((*p_1367->g_1309) = l_1328);
    (*p_1367->g_424) = (safe_lshift_func_uint8_t_u_s((*l_1328), 4));
    (*p_1367->g_7) = (*l_1328);
    return (*l_1328);
}


/* ------------------------------------------ */
/* 
 * reads : p_1367->l_comm_values p_1367->g_21.f0 p_1367->g_7 p_1367->g_8 p_1367->g_41 p_1367->g_44 p_1367->g_47 p_1367->g_60 p_1367->g_68 p_1367->g_82 p_1367->g_92 p_1367->g_95 p_1367->g_51 p_1367->g_309 p_1367->g_315 p_1367->g_84 p_1367->g_320 p_1367->g_326 p_1367->g_344 p_1367->g_373 p_1367->g_359 p_1367->g_279 p_1367->g_424 p_1367->g_455 p_1367->g_449 p_1367->g_448 p_1367->g_354 p_1367->g_comm_values p_1367->g_272 p_1367->g_476 p_1367->g_551 p_1367->g_499 p_1367->g_620 p_1367->g_612 p_1367->g_661 p_1367->g_506 p_1367->g_955 p_1367->g_957 p_1367->g_973 p_1367->g_552 p_1367->g_1001 p_1367->g_1007 p_1367->g_1041 p_1367->g_310 p_1367->g_553 p_1367->g_1112 p_1367->g_968 p_1367->g_664 p_1367->g_1153 p_1367->g_1154 p_1367->g_1157 p_1367->g_1168 p_1367->g_1302 p_1367->g_1309 p_1367->g_21
 * writes: p_1367->g_37 p_1367->g_41 p_1367->g_44 p_1367->g_47 p_1367->g_51 p_1367->g_60 p_1367->g_82 p_1367->g_84 p_1367->g_95 p_1367->g_309 p_1367->g_315 p_1367->g_326 p_1367->g_344 p_1367->g_359 p_1367->g_272 p_1367->g_320 p_1367->g_424 p_1367->g_373 p_1367->g_455 p_1367->g_279 p_1367->g_506 p_1367->g_449 p_1367->g_661 p_1367->g_619 p_1367->g_489 p_1367->g_620 p_1367->g_664 p_1367->g_955 p_1367->g_968 p_1367->g_1001 p_1367->g_8 p_1367->g_1132 p_1367->g_1168 p_1367->g_1304
 */
union U0  func_15(int32_t * p_16, int64_t  p_17, uint32_t  p_18, uint32_t  p_19, uint64_t  p_20, struct S1 * p_1367)
{ /* block id: 5 */
    int32_t *l_23 = (void*)0;
    int32_t **l_22 = &l_23;
    int32_t *l_1323[4][5] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
    uint32_t l_1324[6];
    int i, j;
    for (i = 0; i < 6; i++)
        l_1324[i] = 1UL;
    (*l_22) = (void*)0;
    (*p_16) = func_24(p_1367->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1367->tid, 54))], p_1367->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1367->tid, 54))], p_1367);
    (*p_1367->g_7) |= (safe_mul_func_uint8_t_u_u((0x96L && GROUP_DIVERGE(1, 1)), p_17));
    ++l_1324[0];
    return p_1367->g_21;
}


/* ------------------------------------------ */
/* 
 * reads : p_1367->g_21.f0 p_1367->g_7 p_1367->g_8 p_1367->g_41 p_1367->g_44 p_1367->g_47 p_1367->g_60 p_1367->g_68 p_1367->g_82 p_1367->g_92 p_1367->g_95 p_1367->g_51 p_1367->g_309 p_1367->g_315 p_1367->g_84 p_1367->g_320 p_1367->g_326 p_1367->g_344 p_1367->g_373 p_1367->g_359 p_1367->g_279 p_1367->g_424 p_1367->g_455 p_1367->g_449 p_1367->g_448 p_1367->g_354 p_1367->g_comm_values p_1367->g_272 p_1367->g_476 p_1367->g_551 p_1367->g_499 p_1367->g_620 p_1367->g_612 p_1367->g_661 p_1367->g_506 p_1367->g_955 p_1367->g_957 p_1367->g_973 p_1367->g_552 p_1367->g_1001 p_1367->g_1007 p_1367->g_1041 p_1367->g_310 p_1367->g_553 p_1367->g_1112 p_1367->g_968 p_1367->g_664 p_1367->g_1153 p_1367->g_1154 p_1367->g_1157 p_1367->g_1168 p_1367->g_1302 p_1367->g_1309
 * writes: p_1367->g_37 p_1367->g_41 p_1367->g_44 p_1367->g_47 p_1367->g_51 p_1367->g_60 p_1367->g_82 p_1367->g_84 p_1367->g_95 p_1367->g_309 p_1367->g_315 p_1367->g_326 p_1367->g_344 p_1367->g_359 p_1367->g_272 p_1367->g_320 p_1367->g_424 p_1367->g_373 p_1367->g_455 p_1367->g_279 p_1367->g_506 p_1367->g_449 p_1367->g_661 p_1367->g_619 p_1367->g_489 p_1367->g_620 p_1367->g_664 p_1367->g_955 p_1367->g_968 p_1367->g_1001 p_1367->g_8 p_1367->g_1132 p_1367->g_1168 p_1367->g_1304
 */
int32_t  func_24(int32_t  p_25, int32_t  p_26, struct S1 * p_1367)
{ /* block id: 7 */
    int32_t l_33[5] = {0x36BD0D42L,0x36BD0D42L,0x36BD0D42L,0x36BD0D42L,0x36BD0D42L};
    uint8_t *l_36 = &p_1367->g_37;
    VECTOR(int64_t, 2) l_1174 = (VECTOR(int64_t, 2))(0x36251D45ADB0913DL, (-1L));
    VECTOR(uint8_t, 8) l_1183 = (VECTOR(uint8_t, 8))(0x72L, (VECTOR(uint8_t, 4))(0x72L, (VECTOR(uint8_t, 2))(0x72L, 250UL), 250UL), 250UL, 0x72L, 250UL);
    int8_t *l_1186 = (void*)0;
    int32_t l_1199 = 0L;
    int32_t l_1285 = 0x4F8D5974L;
    int32_t l_1289 = (-1L);
    int32_t l_1292[9] = {0x3E40F550L,0x628AF0FAL,0x3E40F550L,0x3E40F550L,0x628AF0FAL,0x3E40F550L,0x3E40F550L,0x628AF0FAL,0x3E40F550L};
    int32_t **l_1311 = (void*)0;
    int32_t **l_1312 = &p_1367->g_424;
    uint16_t **l_1313 = &p_1367->g_905;
    int32_t *l_1314 = &l_1289;
    int32_t *l_1315 = (void*)0;
    int32_t *l_1316 = &p_1367->g_1168;
    int32_t *l_1317[8];
    uint32_t l_1318 = 4294967289UL;
    int i;
    for (i = 0; i < 8; i++)
        l_1317[i] = &p_1367->g_1168;
    if ((p_1367->g_1168 &= ((func_27(l_33[3], &p_1367->g_7, p_1367->g_21.f0, ((*l_36) = (safe_add_func_int32_t_s_s((*p_1367->g_7), (*p_1367->g_7)))), func_38(l_36, l_36, p_1367), p_1367) , (void*)0) == &p_1367->g_7)))
    { /* block id: 599 */
        int64_t l_1173[8][4][8] = {{{0x6E1941E11D8233B0L,0x5B8AFA0A686814B0L,0x26CB33CDBE2F6CFFL,1L,0x56C249961E34C62AL,1L,0x26CB33CDBE2F6CFFL,0x5B8AFA0A686814B0L},{0x6E1941E11D8233B0L,0x5B8AFA0A686814B0L,0x26CB33CDBE2F6CFFL,1L,0x56C249961E34C62AL,1L,0x26CB33CDBE2F6CFFL,0x5B8AFA0A686814B0L},{0x6E1941E11D8233B0L,0x5B8AFA0A686814B0L,0x26CB33CDBE2F6CFFL,1L,0x56C249961E34C62AL,1L,0x26CB33CDBE2F6CFFL,0x5B8AFA0A686814B0L},{0x6E1941E11D8233B0L,0x5B8AFA0A686814B0L,0x26CB33CDBE2F6CFFL,1L,0x56C249961E34C62AL,1L,0x26CB33CDBE2F6CFFL,0x5B8AFA0A686814B0L}},{{0x6E1941E11D8233B0L,0x5B8AFA0A686814B0L,0x26CB33CDBE2F6CFFL,1L,0x56C249961E34C62AL,1L,0x26CB33CDBE2F6CFFL,0x5B8AFA0A686814B0L},{0x6E1941E11D8233B0L,0x5B8AFA0A686814B0L,0x26CB33CDBE2F6CFFL,1L,0x56C249961E34C62AL,1L,0x26CB33CDBE2F6CFFL,0x5B8AFA0A686814B0L},{0x6E1941E11D8233B0L,0x5B8AFA0A686814B0L,0x26CB33CDBE2F6CFFL,1L,0x56C249961E34C62AL,1L,0x26CB33CDBE2F6CFFL,0x5B8AFA0A686814B0L},{0x6E1941E11D8233B0L,0x5B8AFA0A686814B0L,0x26CB33CDBE2F6CFFL,1L,0x56C249961E34C62AL,1L,0x26CB33CDBE2F6CFFL,0x5B8AFA0A686814B0L}},{{0x6E1941E11D8233B0L,0x5B8AFA0A686814B0L,0x26CB33CDBE2F6CFFL,1L,0x56C249961E34C62AL,1L,0x26CB33CDBE2F6CFFL,0x5B8AFA0A686814B0L},{0x6E1941E11D8233B0L,0x5B8AFA0A686814B0L,0x26CB33CDBE2F6CFFL,1L,0x56C249961E34C62AL,1L,0x26CB33CDBE2F6CFFL,0x5B8AFA0A686814B0L},{0x6E1941E11D8233B0L,0x5B8AFA0A686814B0L,0x26CB33CDBE2F6CFFL,1L,0x56C249961E34C62AL,1L,0x26CB33CDBE2F6CFFL,0x5B8AFA0A686814B0L},{0x6E1941E11D8233B0L,0x5B8AFA0A686814B0L,0x26CB33CDBE2F6CFFL,1L,0x56C249961E34C62AL,1L,0x26CB33CDBE2F6CFFL,0x5B8AFA0A686814B0L}},{{0x6E1941E11D8233B0L,0x5B8AFA0A686814B0L,0x26CB33CDBE2F6CFFL,1L,0x56C249961E34C62AL,1L,0x26CB33CDBE2F6CFFL,0x5B8AFA0A686814B0L},{0x6E1941E11D8233B0L,0x5B8AFA0A686814B0L,0x26CB33CDBE2F6CFFL,1L,0x56C249961E34C62AL,1L,0x26CB33CDBE2F6CFFL,0x5B8AFA0A686814B0L},{0x6E1941E11D8233B0L,0x5B8AFA0A686814B0L,0x26CB33CDBE2F6CFFL,1L,0x56C249961E34C62AL,1L,0x26CB33CDBE2F6CFFL,0x5B8AFA0A686814B0L},{0x6E1941E11D8233B0L,0x5B8AFA0A686814B0L,0x26CB33CDBE2F6CFFL,1L,0x56C249961E34C62AL,1L,0x26CB33CDBE2F6CFFL,0x5B8AFA0A686814B0L}},{{0x6E1941E11D8233B0L,0x5B8AFA0A686814B0L,0x26CB33CDBE2F6CFFL,1L,0x56C249961E34C62AL,1L,0x26CB33CDBE2F6CFFL,0x5B8AFA0A686814B0L},{0x6E1941E11D8233B0L,0x5B8AFA0A686814B0L,0x26CB33CDBE2F6CFFL,1L,0x56C249961E34C62AL,1L,0x26CB33CDBE2F6CFFL,0x5B8AFA0A686814B0L},{0x6E1941E11D8233B0L,0x5B8AFA0A686814B0L,0x26CB33CDBE2F6CFFL,1L,0x56C249961E34C62AL,1L,0x26CB33CDBE2F6CFFL,0x5B8AFA0A686814B0L},{0x6E1941E11D8233B0L,0x5B8AFA0A686814B0L,0x26CB33CDBE2F6CFFL,1L,0x56C249961E34C62AL,1L,0x26CB33CDBE2F6CFFL,0x5B8AFA0A686814B0L}},{{0x6E1941E11D8233B0L,0x5B8AFA0A686814B0L,0x26CB33CDBE2F6CFFL,1L,0x56C249961E34C62AL,1L,0x26CB33CDBE2F6CFFL,0x5B8AFA0A686814B0L},{0x6E1941E11D8233B0L,0x5B8AFA0A686814B0L,0x26CB33CDBE2F6CFFL,1L,0x56C249961E34C62AL,1L,0x26CB33CDBE2F6CFFL,0x5B8AFA0A686814B0L},{0x6E1941E11D8233B0L,0x5B8AFA0A686814B0L,0x26CB33CDBE2F6CFFL,1L,0x56C249961E34C62AL,1L,0x26CB33CDBE2F6CFFL,0x5B8AFA0A686814B0L},{0x6E1941E11D8233B0L,0x5B8AFA0A686814B0L,0x26CB33CDBE2F6CFFL,1L,0x56C249961E34C62AL,1L,0x26CB33CDBE2F6CFFL,0x5B8AFA0A686814B0L}},{{0x6E1941E11D8233B0L,0x5B8AFA0A686814B0L,0x26CB33CDBE2F6CFFL,1L,0x56C249961E34C62AL,1L,0x26CB33CDBE2F6CFFL,0x5B8AFA0A686814B0L},{0x6E1941E11D8233B0L,0x5B8AFA0A686814B0L,0x26CB33CDBE2F6CFFL,1L,0x56C249961E34C62AL,1L,0x26CB33CDBE2F6CFFL,0x5B8AFA0A686814B0L},{0x6E1941E11D8233B0L,0x5B8AFA0A686814B0L,0x26CB33CDBE2F6CFFL,1L,0x56C249961E34C62AL,1L,0x26CB33CDBE2F6CFFL,0x5B8AFA0A686814B0L},{0x6E1941E11D8233B0L,0x5B8AFA0A686814B0L,0x26CB33CDBE2F6CFFL,1L,0x56C249961E34C62AL,1L,0x26CB33CDBE2F6CFFL,0x5B8AFA0A686814B0L}},{{0x6E1941E11D8233B0L,0x5B8AFA0A686814B0L,0x26CB33CDBE2F6CFFL,1L,0x56C249961E34C62AL,1L,0x26CB33CDBE2F6CFFL,0x5B8AFA0A686814B0L},{0x6E1941E11D8233B0L,0x5B8AFA0A686814B0L,0x26CB33CDBE2F6CFFL,1L,0x56C249961E34C62AL,1L,0x26CB33CDBE2F6CFFL,0x5B8AFA0A686814B0L},{0x6E1941E11D8233B0L,0x5B8AFA0A686814B0L,0x26CB33CDBE2F6CFFL,1L,0x56C249961E34C62AL,1L,0x26CB33CDBE2F6CFFL,0x5B8AFA0A686814B0L},{0x6E1941E11D8233B0L,0x5B8AFA0A686814B0L,0x26CB33CDBE2F6CFFL,1L,0x56C249961E34C62AL,1L,0x26CB33CDBE2F6CFFL,0x5B8AFA0A686814B0L}}};
        int i, j, k;
        for (p_1367->g_82 = 26; (p_1367->g_82 <= (-7)); --p_1367->g_82)
        { /* block id: 602 */
            VECTOR(uint32_t, 2) l_1176 = (VECTOR(uint32_t, 2))(0xA9155AA0L, 0x124298E0L);
            int8_t *l_1184[6][4] = {{&p_1367->g_82,&p_1367->g_82,(void*)0,(void*)0},{&p_1367->g_82,&p_1367->g_82,(void*)0,(void*)0},{&p_1367->g_82,&p_1367->g_82,(void*)0,(void*)0},{&p_1367->g_82,&p_1367->g_82,(void*)0,(void*)0},{&p_1367->g_82,&p_1367->g_82,(void*)0,(void*)0},{&p_1367->g_82,&p_1367->g_82,(void*)0,(void*)0}};
            int8_t **l_1185[5][3] = {{&l_1184[2][0],&l_1184[2][0],&l_1184[2][0]},{&l_1184[2][0],&l_1184[2][0],&l_1184[2][0]},{&l_1184[2][0],&l_1184[2][0],&l_1184[2][0]},{&l_1184[2][0],&l_1184[2][0],&l_1184[2][0]},{&l_1184[2][0],&l_1184[2][0],&l_1184[2][0]}};
            int i, j;
            if (l_33[3])
                break;
            (*p_1367->g_7) &= (((VECTOR(uint8_t, 4))(((((p_26 == l_1173[7][1][3]) ^ (((VECTOR(uint64_t, 4))(abs_diff(((VECTOR(int64_t, 2))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 2),((VECTOR(int64_t, 4))(l_1174.yxyy)).hi, ((VECTOR(int64_t, 2))(upsample(((VECTOR(int32_t, 4))(p_1367->g_1175.sbb10)).lo, ((VECTOR(uint32_t, 4))(safe_clamp_func(VECTOR(uint32_t, 4),uint32_t,((VECTOR(uint32_t, 2))(l_1176.xy)).yxyx, (uint32_t)(safe_mod_func_int8_t_s_s((safe_lshift_func_int16_t_s_s((safe_lshift_func_uint8_t_u_u(l_1176.x, ((VECTOR(uint8_t, 8))(l_1183.s00322574)).s0)), (l_1184[2][0] == (l_1186 = l_1184[0][2])))), (*p_1367->g_68))), (uint32_t)(p_25 == ((!(((VECTOR(uint8_t, 2))(0x71L, 0UL)).even < p_25)) <= p_25))))).even))), ((VECTOR(int64_t, 2))(0x24B09BE87F27819EL))))).xxxx, ((VECTOR(int64_t, 4))(0x4C7B1250EF809791L))))).x <= p_25)) > 1L) , GROUP_DIVERGE(0, 1)), 253UL, 0xA9L, 8UL)).y || 0L);
        }
    }
    else
    { /* block id: 607 */
        VECTOR(uint32_t, 2) l_1195 = (VECTOR(uint32_t, 2))(0xE5B021CFL, 0UL);
        int32_t l_1200 = 0x4DEBD464L;
        int32_t l_1287 = 0x5C340E24L;
        int32_t l_1288 = (-7L);
        int32_t l_1290[7][1] = {{1L},{1L},{1L},{1L},{1L},{1L},{1L}};
        uint8_t ***l_1303 = &p_1367->g_661[4];
        int32_t l_1310 = (-4L);
        int i, j;
        for (p_1367->g_506 = (-5); (p_1367->g_506 < 36); p_1367->g_506 = safe_add_func_int16_t_s_s(p_1367->g_506, 1))
        { /* block id: 610 */
            int16_t *l_1198[10][3][6];
            int i, j, k;
            for (i = 0; i < 10; i++)
            {
                for (j = 0; j < 3; j++)
                {
                    for (k = 0; k < 6; k++)
                        l_1198[i][j][k] = (void*)0;
                }
            }
            (*p_1367->g_7) = ((p_25 , (safe_add_func_int16_t_s_s((safe_lshift_func_uint16_t_u_s((safe_sub_func_uint32_t_u_u(p_25, ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 4))(l_1195.xyxx)).hi)))).even)), l_1183.s1)), l_1183.s2))) | (p_26 , (l_1200 = (l_1199 = (safe_rshift_func_uint16_t_u_u(l_1195.y, 2))))));
        }
        (*p_1367->g_7) &= (-1L);
        if ((atomic_inc(&p_1367->l_atomic_input[18]) == 7))
        { /* block id: 617 */
            int32_t l_1201 = (-6L);
            int16_t l_1220 = 0L;
            uint64_t l_1221[9] = {0xB7CC02695916C61AL,0x5E4571DF67A235DEL,0xB7CC02695916C61AL,0xB7CC02695916C61AL,0x5E4571DF67A235DEL,0xB7CC02695916C61AL,0xB7CC02695916C61AL,0x5E4571DF67A235DEL,0xB7CC02695916C61AL};
            uint32_t l_1222 = 0x77938D67L;
            uint32_t l_1223 = 4294967295UL;
            int16_t l_1224 = 0x19E0L;
            uint32_t l_1276 = 7UL;
            int8_t l_1277 = 1L;
            int i;
            for (l_1201 = (-4); (l_1201 != 23); l_1201++)
            { /* block id: 620 */
                int32_t l_1204 = 0L;
                int32_t *l_1210 = &l_1204;
                uint8_t l_1211 = 1UL;
                for (l_1204 = 0; (l_1204 != 29); l_1204++)
                { /* block id: 623 */
                    VECTOR(int32_t, 8) l_1207 = (VECTOR(int32_t, 8))((-9L), (VECTOR(int32_t, 4))((-9L), (VECTOR(int32_t, 2))((-9L), 8L), 8L), 8L, (-9L), 8L);
                    uint8_t l_1208 = 0xA9L;
                    uint32_t l_1209[10][5] = {{0x3167D0AFL,0x5AA7A73EL,0x7E118053L,1UL,4294967294UL},{0x3167D0AFL,0x5AA7A73EL,0x7E118053L,1UL,4294967294UL},{0x3167D0AFL,0x5AA7A73EL,0x7E118053L,1UL,4294967294UL},{0x3167D0AFL,0x5AA7A73EL,0x7E118053L,1UL,4294967294UL},{0x3167D0AFL,0x5AA7A73EL,0x7E118053L,1UL,4294967294UL},{0x3167D0AFL,0x5AA7A73EL,0x7E118053L,1UL,4294967294UL},{0x3167D0AFL,0x5AA7A73EL,0x7E118053L,1UL,4294967294UL},{0x3167D0AFL,0x5AA7A73EL,0x7E118053L,1UL,4294967294UL},{0x3167D0AFL,0x5AA7A73EL,0x7E118053L,1UL,4294967294UL},{0x3167D0AFL,0x5AA7A73EL,0x7E118053L,1UL,4294967294UL}};
                    int i, j;
                    l_1209[6][3] = (((VECTOR(int32_t, 4))(l_1207.s1313)).x , l_1208);
                }
                l_1210 = (void*)0;
                if (l_1211)
                { /* block id: 627 */
                    int8_t l_1212 = (-9L);
                    uint8_t l_1213 = 0x05L;
                    l_1204 = 2L;
                    l_1213++;
                }
                else
                { /* block id: 630 */
                    uint32_t l_1218 = 1UL;
                    uint32_t *l_1217 = &l_1218;
                    uint32_t **l_1216 = &l_1217;
                    uint32_t **l_1219 = &l_1217;
                    l_1219 = (l_1216 = (void*)0);
                }
            }
            if (((l_1220 , (l_1222 = l_1221[3])) , (l_1224 = l_1223)))
            { /* block id: 637 */
                int32_t l_1225 = 1L;
                uint8_t l_1229 = 246UL;
                uint32_t l_1232 = 1UL;
                int64_t l_1233 = 0L;
                uint32_t l_1234 = 4294967293UL;
                VECTOR(int32_t, 2) l_1235 = (VECTOR(int32_t, 2))(0x1AEFD63DL, 0x57C31D68L);
                int i;
                for (l_1225 = 0; (l_1225 >= 4); l_1225++)
                { /* block id: 640 */
                    int8_t l_1228 = 1L;
                    l_1201 ^= l_1228;
                }
                l_1229++;
                l_1233 = (l_1201 = l_1232);
                if ((l_1201 = (l_1234 , ((VECTOR(int32_t, 2))(l_1235.yy)).hi)))
                { /* block id: 647 */
                    VECTOR(int8_t, 16) l_1236 = (VECTOR(int8_t, 16))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0L), 0L), 0L, 1L, 0L, (VECTOR(int8_t, 2))(1L, 0L), (VECTOR(int8_t, 2))(1L, 0L), 1L, 0L, 1L, 0L);
                    int i;
                    l_1201 = l_1236.s1;
                }
                else
                { /* block id: 649 */
                    uint32_t l_1237 = 1UL;
                    uint32_t l_1238 = 5UL;
                    VECTOR(int32_t, 2) l_1239 = (VECTOR(int32_t, 2))(3L, 0x26EA123BL);
                    VECTOR(int8_t, 4) l_1240 = (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 1L), 1L);
                    VECTOR(int32_t, 4) l_1241 = (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 1L), 1L);
                    VECTOR(int32_t, 16) l_1242 = (VECTOR(int32_t, 16))(0x2F15491AL, (VECTOR(int32_t, 4))(0x2F15491AL, (VECTOR(int32_t, 2))(0x2F15491AL, 0L), 0L), 0L, 0x2F15491AL, 0L, (VECTOR(int32_t, 2))(0x2F15491AL, 0L), (VECTOR(int32_t, 2))(0x2F15491AL, 0L), 0x2F15491AL, 0L, 0x2F15491AL, 0L);
                    VECTOR(int32_t, 4) l_1243 = (VECTOR(int32_t, 4))(0x07104964L, (VECTOR(int32_t, 2))(0x07104964L, 0x55877037L), 0x55877037L);
                    int64_t l_1244 = 0x5F11417B8B22AF50L;
                    VECTOR(int32_t, 8) l_1245 = (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x3C7577C0L), 0x3C7577C0L), 0x3C7577C0L, 0L, 0x3C7577C0L);
                    VECTOR(int32_t, 16) l_1246 = (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x4A843EA1L), 0x4A843EA1L), 0x4A843EA1L, 1L, 0x4A843EA1L, (VECTOR(int32_t, 2))(1L, 0x4A843EA1L), (VECTOR(int32_t, 2))(1L, 0x4A843EA1L), 1L, 0x4A843EA1L, 1L, 0x4A843EA1L);
                    VECTOR(uint16_t, 16) l_1247 = (VECTOR(uint16_t, 16))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0x460AL), 0x460AL), 0x460AL, 0UL, 0x460AL, (VECTOR(uint16_t, 2))(0UL, 0x460AL), (VECTOR(uint16_t, 2))(0UL, 0x460AL), 0UL, 0x460AL, 0UL, 0x460AL);
                    int16_t l_1248 = 0x65C5L;
                    VECTOR(int32_t, 2) l_1249 = (VECTOR(int32_t, 2))((-1L), 0x677542EDL);
                    int16_t l_1250 = 0L;
                    int32_t l_1251 = (-2L);
                    int32_t l_1252 = 0x5145E100L;
                    int32_t *l_1253 = (void*)0;
                    int32_t *l_1254 = (void*)0;
                    int i;
                    l_1225 &= (l_1252 |= ((VECTOR(int32_t, 8))(sub_sat(((VECTOR(int32_t, 16))(mad_sat(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(rhadd(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))((l_1201 = l_1237), ((VECTOR(int32_t, 4))(min(((VECTOR(int32_t, 4))(min(((VECTOR(int32_t, 2))(0x5E6570EFL, (-6L))).xyxx, (int32_t)l_1238))), ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(l_1239.xx)), 8L, (((VECTOR(int8_t, 4))(1L, ((VECTOR(int8_t, 2))(l_1240.xw)), (-1L))).y , ((VECTOR(int32_t, 2))(hadd(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(l_1241.zwzwxzxzyyxxywwx)).s2f)), 0L, 0x06CBEE7DL)).odd)), ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(add_sat(((VECTOR(int32_t, 8))(l_1242.sd50b9b38)).lo, ((VECTOR(int32_t, 2))(l_1243.ww)).yxyy))).ywwwzwxyyxwwywzz)))).sf7))).hi), (l_1235.x = l_1244), 0x779D79B3L, 0x1B79DCACL, 0L)).lo))), ((VECTOR(int32_t, 2))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 16))(rotate(((VECTOR(int32_t, 2))(l_1245.s72)).yxyyxyxxyyxyyxxx, ((VECTOR(int32_t, 8))(sub_sat(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(l_1246.sfa39c2e8a61f947d)).odd)).s0, 1L, l_1247.se, ((VECTOR(int32_t, 2))(2L, 1L)).even, l_1248, 0x687CEC93L, 0x7CAA9A6EL, 0x3B32EAA0L)))), ((VECTOR(int32_t, 4))(add_sat(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(l_1249.yxyyyyyx)), l_1250, ((VECTOR(int32_t, 8))(hadd(((VECTOR(int32_t, 4))(upsample(((VECTOR(int16_t, 2))(max(((VECTOR(int16_t, 2))(0x1F3BL, 0x3D6DL)), (int16_t)l_1251))).yyyx, ((VECTOR(uint16_t, 4))(0x90CFL))))).wwwzyxyx, ((VECTOR(int32_t, 8))(0x638DFE24L))))).s0, (-7L), ((VECTOR(int32_t, 2))(5L)), ((VECTOR(int32_t, 2))(0x19DCFB26L)), 0x5F448C1FL)).s958d, ((VECTOR(int32_t, 4))(0L))))).xwzwwzzy))).s1136572670535433))).s7b, ((VECTOR(int32_t, 2))(3L)), ((VECTOR(int32_t, 2))(0x5FA082ECL))))), 1L)).hi)).yyzzwwxx, ((VECTOR(int32_t, 8))(0x4AA9338BL))))).s5717144474411670)), ((VECTOR(int32_t, 16))(0x7CAD5DCFL)), ((VECTOR(int32_t, 16))((-1L)))))).even, ((VECTOR(int32_t, 8))(6L))))).s0);
                    l_1254 = l_1253;
                }
            }
            else
            { /* block id: 656 */
                int32_t l_1256 = 0x4D256BF5L;
                int32_t *l_1255 = &l_1256;
                VECTOR(uint32_t, 2) l_1257 = (VECTOR(uint32_t, 2))(0xE519869AL, 4294967295UL);
                union U0 l_1261 = {-1L};/* VOLATILE GLOBAL l_1261 */
                union U0 *l_1260 = &l_1261;
                int16_t l_1262 = 0x574BL;
                int8_t l_1275 = 0x48L;
                int i;
                l_1255 = (void*)0;
                l_1260 = ((--l_1257.y) , (void*)0);
                if (l_1262)
                { /* block id: 660 */
                    int32_t l_1263 = 5L;
                    uint32_t l_1264 = 0x8BD59B3BL;
                    uint32_t l_1267 = 4294967295UL;
                    int32_t l_1269 = (-1L);
                    int32_t *l_1268 = &l_1269;
                    --l_1264;
                    l_1255 = (l_1267 , l_1268);
                }
                else
                { /* block id: 663 */
                    uint16_t l_1270 = 0x5EBFL;
                    uint32_t l_1271 = 0x05CB10A5L;
                    int16_t l_1272[5][7] = {{(-1L),0x5290L,0x5290L,(-1L),4L,0x0FBDL,0x0FBDL},{(-1L),0x5290L,0x5290L,(-1L),4L,0x0FBDL,0x0FBDL},{(-1L),0x5290L,0x5290L,(-1L),4L,0x0FBDL,0x0FBDL},{(-1L),0x5290L,0x5290L,(-1L),4L,0x0FBDL,0x0FBDL},{(-1L),0x5290L,0x5290L,(-1L),4L,0x0FBDL,0x0FBDL}};
                    int32_t l_1273 = 0x559675F1L;
                    int32_t l_1274 = 0x5E33FBACL;
                    int i, j;
                    l_1271 = l_1270;
                    l_1201 &= (((l_1272[2][2] , l_1273) , l_1274) , 0x789F1F73L);
                }
                l_1275 = (-1L);
            }
            l_1277 = l_1276;
            unsigned int result = 0;
            result += l_1201;
            result += l_1220;
            int l_1221_i0;
            for (l_1221_i0 = 0; l_1221_i0 < 9; l_1221_i0++) {
                result += l_1221[l_1221_i0];
            }
            result += l_1222;
            result += l_1223;
            result += l_1224;
            result += l_1276;
            result += l_1277;
            atomic_add(&p_1367->l_special_values[18], result);
        }
        else
        { /* block id: 670 */
            (1 + 1);
        }
        for (p_1367->g_8 = 22; (p_1367->g_8 <= (-5)); p_1367->g_8--)
        { /* block id: 675 */
            uint32_t l_1280 = 0x47B5DC2FL;
            int32_t l_1283 = 0x23EC50C1L;
            int32_t l_1286 = (-1L);
            int32_t l_1291 = 0x023AA1B6L;
            int32_t l_1293 = 0x39CC723EL;
            int32_t l_1294 = (-1L);
            int32_t l_1295 = 0x2B5C9398L;
            int32_t l_1296 = 0x1E7BDFA1L;
            int32_t l_1297 = 1L;
            uint32_t l_1298 = 0UL;
            l_1280--;
            if ((*p_1367->g_7))
                break;
            if ((l_1283 = l_1195.y))
            { /* block id: 679 */
                int32_t *l_1284[7][2] = {{&p_1367->g_44,&p_1367->g_44},{&p_1367->g_44,&p_1367->g_44},{&p_1367->g_44,&p_1367->g_44},{&p_1367->g_44,&p_1367->g_44},{&p_1367->g_44,&p_1367->g_44},{&p_1367->g_44,&p_1367->g_44},{&p_1367->g_44,&p_1367->g_44}};
                int32_t **l_1301 = &l_1284[4][1];
                int i, j;
                ++l_1298;
                (*p_1367->g_1302) = ((*l_1301) = &l_1296);
            }
            else
            { /* block id: 683 */
                int32_t *l_1305 = (void*)0;
                l_1290[3][0] = (p_25 ^ ((p_1367->g_1304 = l_1303) == (void*)0));
                for (l_1295 = 0; (l_1295 > (-18)); --l_1295)
                { /* block id: 688 */
                    (*p_1367->g_1309) = &l_1288;
                    if (p_25)
                        break;
                    return l_1310;
                }
                if (l_1280)
                    continue;
            }
        }
    }
    (*l_1312) = &l_1199;
    (*p_1367->g_7) = (FAKE_DIVERGE(p_1367->global_1_offset, get_global_id(1), 10) != ((((VECTOR(uint32_t, 2))(0x5098C1DDL, 1UL)).lo , l_1313) != l_1313));
    ++l_1318;
    return p_25;
}


/* ------------------------------------------ */
/* 
 * reads : p_1367->g_1001 p_1367->g_552 p_1367->g_553 p_1367->g_1112 p_1367->g_354 p_1367->g_7 p_1367->g_8 p_1367->g_448 p_1367->g_968 p_1367->g_499 p_1367->g_664 p_1367->g_60 p_1367->g_1153 p_1367->g_1154 p_1367->g_1157 p_1367->g_47
 * writes: p_1367->g_1001 p_1367->g_664 p_1367->g_60 p_1367->g_359 p_1367->g_8 p_1367->g_47 p_1367->g_1132
 */
uint32_t  func_27(int64_t  p_28, int32_t ** p_29, int8_t  p_30, uint8_t  p_31, int32_t  p_32, struct S1 * p_1367)
{ /* block id: 565 */
    uint8_t l_1083 = 2UL;
    int16_t *l_1089[5];
    int16_t **l_1088 = &l_1089[4];
    int16_t ***l_1090 = &l_1088;
    VECTOR(uint64_t, 2) l_1110 = (VECTOR(uint64_t, 2))(0UL, 0UL);
    VECTOR(uint64_t, 8) l_1111 = (VECTOR(uint64_t, 8))(0xAEF83883948CDCB0L, (VECTOR(uint64_t, 4))(0xAEF83883948CDCB0L, (VECTOR(uint64_t, 2))(0xAEF83883948CDCB0L, 18446744073709551615UL), 18446744073709551615UL), 18446744073709551615UL, 0xAEF83883948CDCB0L, 18446744073709551615UL);
    VECTOR(uint8_t, 8) l_1113 = (VECTOR(uint8_t, 8))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 0x8AL), 0x8AL), 0x8AL, 255UL, 0x8AL);
    VECTOR(uint8_t, 8) l_1114 = (VECTOR(uint8_t, 8))(0x3DL, (VECTOR(uint8_t, 4))(0x3DL, (VECTOR(uint8_t, 2))(0x3DL, 0x08L), 0x08L), 0x08L, 0x3DL, 0x08L);
    VECTOR(uint8_t, 4) l_1115 = (VECTOR(uint8_t, 4))(0x2FL, (VECTOR(uint8_t, 2))(0x2FL, 0xE9L), 0xE9L);
    VECTOR(uint8_t, 16) l_1116 = (VECTOR(uint8_t, 16))(252UL, (VECTOR(uint8_t, 4))(252UL, (VECTOR(uint8_t, 2))(252UL, 0xEFL), 0xEFL), 0xEFL, 252UL, 0xEFL, (VECTOR(uint8_t, 2))(252UL, 0xEFL), (VECTOR(uint8_t, 2))(252UL, 0xEFL), 252UL, 0xEFL, 252UL, 0xEFL);
    VECTOR(uint8_t, 16) l_1117 = (VECTOR(uint8_t, 16))(0xF2L, (VECTOR(uint8_t, 4))(0xF2L, (VECTOR(uint8_t, 2))(0xF2L, 2UL), 2UL), 2UL, 0xF2L, 2UL, (VECTOR(uint8_t, 2))(0xF2L, 2UL), (VECTOR(uint8_t, 2))(0xF2L, 2UL), 0xF2L, 2UL, 0xF2L, 2UL);
    VECTOR(int32_t, 16) l_1118 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x22654DCBL), 0x22654DCBL), 0x22654DCBL, (-1L), 0x22654DCBL, (VECTOR(int32_t, 2))((-1L), 0x22654DCBL), (VECTOR(int32_t, 2))((-1L), 0x22654DCBL), (-1L), 0x22654DCBL, (-1L), 0x22654DCBL);
    int8_t l_1121 = 6L;
    int16_t l_1122[8] = {0x5E7CL,0x4BD6L,0x5E7CL,0x5E7CL,0x4BD6L,0x5E7CL,0x5E7CL,0x4BD6L};
    uint64_t *l_1123 = (void*)0;
    uint64_t *l_1124 = &p_1367->g_1001;
    VECTOR(int8_t, 4) l_1156 = (VECTOR(int8_t, 4))(0x5BL, (VECTOR(int8_t, 2))(0x5BL, 7L), 7L);
    int32_t l_1160 = 0x5A9280DEL;
    uint32_t **l_1166 = &p_1367->g_1133;
    uint32_t ***l_1167 = &p_1367->g_1132;
    int i;
    for (i = 0; i < 5; i++)
        l_1089[i] = &p_1367->g_359[1];
    ++l_1083;
    if (((safe_sub_func_int8_t_s_s(((((*l_1090) = l_1088) != &p_1367->g_552) <= ((l_1118.s3 = (safe_unary_minus_func_uint16_t_u((safe_mod_func_uint64_t_u_u(((*l_1124) = ((+((!(safe_mul_func_int8_t_s_s((((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(0x42L, 0x0BL)).xyyy)).y , (safe_mul_func_uint16_t_u_u(((0x5A4BL <= p_30) >= (safe_mul_func_int8_t_s_s(l_1083, (((safe_div_func_int16_t_s_s((safe_add_func_uint16_t_u_u((((!(safe_mul_func_uint8_t_u_u((!(safe_sub_func_uint32_t_u_u(p_1367->g_1001, (((safe_lshift_func_int16_t_s_u((*p_1367->g_552), 12)) , (((VECTOR(uint64_t, 16))(min(((VECTOR(uint64_t, 8))(clz(((VECTOR(uint64_t, 2))(l_1110.yy)).yyxyyyxx))).s1317173647117657, ((VECTOR(uint64_t, 16))(l_1111.s2737764406723472))))).s7 , ((VECTOR(uint64_t, 2))(p_1367->g_1112.zx)).even)) & p_1367->g_354.y)))), ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(mad_sat(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(l_1113.s15)), 1UL, 0x98L)), ((VECTOR(uint8_t, 16))(rhadd(((VECTOR(uint8_t, 16))(max(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(0x4AL, 0x0DL)).yyxy)).zxyxxxzxwzywyyxw, ((VECTOR(uint8_t, 4))(hadd(((VECTOR(uint8_t, 8))(l_1114.s55751252)).odd, ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(l_1115.wxyz)).odd)).xyyyyxxyyxxyyxyy)).s2422)).xzwwwzyz)).s25)).xxxxyxyyyxyxyxxy)).sba41))).wwzzwwxxyyyzzzyw))), ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(l_1116.s6b27)).hi)).yyyyxxxxyxyxxxyx))).s830a, ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(0x1BL, ((VECTOR(uint8_t, 2))(l_1117.se3)), 0x1FL)).zzzwxwwyzxxxxxxx)).s0611))).even)).hi))) >= ((((((VECTOR(int32_t, 2))(mad_sat(((VECTOR(int32_t, 4))(hadd(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(l_1118.sffdaf3e3)))).lo, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(clz(((VECTOR(int32_t, 2))(0x0FA34CE3L, 0x1BAB5684L))))), 6L, ((safe_mul_func_uint16_t_u_u((((VECTOR(int32_t, 2))((-10L), 3L)).lo >= (p_30 | 0UL)), l_1115.z)) < 65535UL), 0x073883D0L, ((VECTOR(int32_t, 2))((-1L))), 0x0949E15EL)), (*p_1367->g_7), (-1L), 0x5E4E1D05L, ((VECTOR(int32_t, 4))((-10L))), 0x26F79525L)).s6c)).yxxy))).lo, ((VECTOR(int32_t, 2))(1L)), ((VECTOR(int32_t, 2))(0x03D2F70EL))))).even & l_1118.s5) == l_1121) && l_1117.s3) | l_1111.s4)) & p_1367->g_448.s7), l_1122[7])), 0x07FAL)) || p_31) >= p_1367->g_968[1][0])))), (-7L)))), p_1367->g_499.s5))) , l_1110.y)) <= p_32)), l_1113.s0))))) >= p_30)), (-1L))) > 0x2AF5770DL))
    { /* block id: 570 */
        VECTOR(uint16_t, 8) l_1137 = (VECTOR(uint16_t, 8))(0xE6C0L, (VECTOR(uint16_t, 4))(0xE6C0L, (VECTOR(uint16_t, 2))(0xE6C0L, 7UL), 7UL), 7UL, 0xE6C0L, 7UL);
        VECTOR(uint8_t, 16) l_1152 = (VECTOR(uint8_t, 16))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0x07L), 0x07L), 0x07L, 0UL, 0x07L, (VECTOR(uint8_t, 2))(0UL, 0x07L), (VECTOR(uint8_t, 2))(0UL, 0x07L), 0UL, 0x07L, 0UL, 0x07L);
        VECTOR(uint8_t, 4) l_1155 = (VECTOR(uint8_t, 4))(0x57L, (VECTOR(uint8_t, 2))(0x57L, 248UL), 248UL);
        uint32_t l_1159 = 1UL;
        VECTOR(int32_t, 2) l_1162 = (VECTOR(int32_t, 2))(0x14D4BDDAL, 0x2DA34E8EL);
        int32_t *l_1163[6][9] = {{&l_1160,&p_1367->g_51,&l_1160,&l_1160,&p_1367->g_51,&l_1160,&l_1160,&p_1367->g_51,&l_1160},{&l_1160,&p_1367->g_51,&l_1160,&l_1160,&p_1367->g_51,&l_1160,&l_1160,&p_1367->g_51,&l_1160},{&l_1160,&p_1367->g_51,&l_1160,&l_1160,&p_1367->g_51,&l_1160,&l_1160,&p_1367->g_51,&l_1160},{&l_1160,&p_1367->g_51,&l_1160,&l_1160,&p_1367->g_51,&l_1160,&l_1160,&p_1367->g_51,&l_1160},{&l_1160,&p_1367->g_51,&l_1160,&l_1160,&p_1367->g_51,&l_1160,&l_1160,&p_1367->g_51,&l_1160},{&l_1160,&p_1367->g_51,&l_1160,&l_1160,&p_1367->g_51,&l_1160,&l_1160,&p_1367->g_51,&l_1160}};
        int i, j;
        for (p_1367->g_664 = 0; (p_1367->g_664 >= 12); p_1367->g_664++)
        { /* block id: 573 */
            uint32_t *l_1130 = (void*)0;
            uint32_t **l_1129 = &l_1130;
            int64_t l_1143 = 0L;
            int32_t l_1161 = 0x4FCEAE9CL;
            if ((*p_1367->g_7))
                break;
            if ((**p_29))
                continue;
            for (p_1367->g_60 = (-21); (p_1367->g_60 <= 44); p_1367->g_60++)
            { /* block id: 578 */
                uint32_t ***l_1134 = &l_1129;
                uint32_t l_1140 = 0xEA6AD5D9L;
                uint8_t *l_1158 = (void*)0;
                (*l_1134) = l_1129;
                if ((*p_1367->g_7))
                    continue;
                l_1161 = ((**p_29) = ((safe_mul_func_int8_t_s_s((p_31 | ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(rhadd(((VECTOR(uint16_t, 2))(l_1137.s30)), ((VECTOR(uint16_t, 2))(65531UL, 9UL))))), (safe_sub_func_uint64_t_u_u((l_1140 >= (((safe_sub_func_int8_t_s_s(l_1140, ((((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(5UL, 0x93L)).yyyyxxyyxyxyyyyx)).sa , l_1143) == (safe_mod_func_uint8_t_u_u(l_1140, (safe_sub_func_int8_t_s_s(((-1L) & (safe_mul_func_int16_t_s_s((p_28 , ((***l_1090) = (safe_sub_func_uint8_t_u_u((l_1118.s7 &= ((VECTOR(uint8_t, 4))(0UL, ((VECTOR(uint8_t, 2))(mul_hi(((VECTOR(uint8_t, 2))(max(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(l_1152.sc2af)).xwwyzyzx)).s21, ((VECTOR(uint8_t, 8))(abs_diff(((VECTOR(uint8_t, 16))(sub_sat(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(0x4FL, ((VECTOR(uint8_t, 2))(p_1367->g_1153.xx)), ((VECTOR(uint8_t, 2))(0xF2L, 0xFCL)), 0x8DL, 0x7CL, 0xC3L)).s43)).yyyxxyxyyxyxxyxx, ((VECTOR(uint8_t, 2))(0xBAL, 255UL)).yyyyxxxxxyxxxyxx))).hi, ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 16))(p_1367->g_1154.sb48bf3e429a32ab5)).even))))).s55))), ((VECTOR(uint8_t, 8))(add_sat(((VECTOR(uint8_t, 16))(l_1155.wxzzwwyxwwywzyxw)).hi, ((VECTOR(uint8_t, 4))(abs(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(l_1156.yz)), ((VECTOR(int8_t, 4))(hadd(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(min(((VECTOR(int8_t, 4))(add_sat(((VECTOR(int8_t, 8))(rhadd(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(safe_clamp_func(VECTOR(int8_t, 2),VECTOR(int8_t, 2),((VECTOR(int8_t, 4))(0x2EL, 0x00L, 0x4CL, 1L)).odd, ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(p_1367->g_1157.sb0)), ((VECTOR(int8_t, 2))(0x46L, 0x08L)), p_32, (-1L), ((VECTOR(int8_t, 8))(0L)), 1L, 0x67L)).s0e, ((VECTOR(int8_t, 2))(1L))))).yxyyxyyy)), ((VECTOR(int8_t, 8))((-8L)))))).even, ((VECTOR(int8_t, 4))(5L))))).zyywyxww, ((VECTOR(int8_t, 8))((-3L)))))).s3636160055546122)).sbf8c, ((VECTOR(int8_t, 4))(0L))))), (-4L), 1L)).even))).xzxyxzyy))).s46))), 255UL)).y), 0UL)))), 8UL))), l_1159))))))) , p_31) <= l_1137.s2)), l_1140)), 7UL, 65533UL, p_31, 0xAEDFL, 0UL)).s0), l_1116.sc)) , l_1160));
            }
        }
        p_1367->g_47.sc ^= (+(l_1162.x = ((*p_1367->g_7) = l_1162.y)));
    }
    else
    { /* block id: 590 */
        int i, j;
        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        p_1367->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 54)), permutations[(safe_mod_func_uint32_t_u_u((safe_rshift_func_uint8_t_u_s(p_30, 3)), 10))][(safe_mod_func_uint32_t_u_u(p_1367->tid, 54))]));
    }
    (**p_29) |= ((l_1166 != ((*l_1167) = l_1166)) != l_1160);
    return p_28;
}


/* ------------------------------------------ */
/* 
 * reads : p_1367->g_41 p_1367->g_44 p_1367->g_47 p_1367->g_60 p_1367->g_68 p_1367->g_7 p_1367->g_8 p_1367->g_82 p_1367->g_92 p_1367->g_95 p_1367->g_51 p_1367->g_309 p_1367->g_315 p_1367->g_84 p_1367->g_320 p_1367->g_326 p_1367->g_344 p_1367->g_373 p_1367->g_359 p_1367->g_279 p_1367->g_424 p_1367->g_455 p_1367->g_449 p_1367->g_448 p_1367->g_354 p_1367->g_comm_values p_1367->g_272 p_1367->g_476 p_1367->g_551 p_1367->g_499 p_1367->g_620 p_1367->g_612 p_1367->g_661 p_1367->g_506 p_1367->g_955 p_1367->g_957 p_1367->g_973 p_1367->g_552 p_1367->g_1001 p_1367->g_1007 p_1367->g_1041 p_1367->g_310
 * writes: p_1367->g_41 p_1367->g_44 p_1367->g_47 p_1367->g_51 p_1367->g_60 p_1367->g_82 p_1367->g_84 p_1367->g_95 p_1367->g_309 p_1367->g_315 p_1367->g_326 p_1367->g_344 p_1367->g_359 p_1367->g_272 p_1367->g_320 p_1367->g_424 p_1367->g_373 p_1367->g_455 p_1367->g_279 p_1367->g_506 p_1367->g_449 p_1367->g_661 p_1367->g_619 p_1367->g_489 p_1367->g_620 p_1367->g_664 p_1367->g_955 p_1367->g_968 p_1367->g_1001
 */
int32_t  func_38(uint8_t * p_39, uint8_t * p_40, struct S1 * p_1367)
{ /* block id: 9 */
    int32_t l_961[9] = {0x4375BCBBL,0x4375BCBBL,0x4375BCBBL,0x4375BCBBL,0x4375BCBBL,0x4375BCBBL,0x4375BCBBL,0x4375BCBBL,0x4375BCBBL};
    int32_t l_980 = 0x48E5EDFDL;
    int32_t l_986[5];
    uint16_t *l_993[8][9] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
    int16_t *l_1011 = (void*)0;
    int16_t **l_1010 = &l_1011;
    int8_t *l_1013 = (void*)0;
    int8_t **l_1012 = &l_1013;
    uint32_t l_1022 = 0x5F02BC93L;
    uint16_t l_1038 = 65529UL;
    int64_t l_1079 = 1L;
    uint8_t l_1080 = 250UL;
    int i, j;
    for (i = 0; i < 5; i++)
        l_986[i] = (-1L);
    for (p_1367->g_41 = 0; (p_1367->g_41 != 17); p_1367->g_41++)
    { /* block id: 12 */
        VECTOR(int32_t, 2) l_956 = (VECTOR(int32_t, 2))(0x055A3273L, 0x28A8E9A0L);
        int8_t *l_972 = &p_1367->g_82;
        int8_t **l_971 = &l_972;
        int16_t l_976 = 0x1C38L;
        int32_t **l_1006 = &p_1367->g_424;
        uint32_t l_1060 = 3UL;
        int16_t **l_1067[5][10] = {{&l_1011,&l_1011,&l_1011,&l_1011,&l_1011,&l_1011,&l_1011,&l_1011,&l_1011,&l_1011},{&l_1011,&l_1011,&l_1011,&l_1011,&l_1011,&l_1011,&l_1011,&l_1011,&l_1011,&l_1011},{&l_1011,&l_1011,&l_1011,&l_1011,&l_1011,&l_1011,&l_1011,&l_1011,&l_1011,&l_1011},{&l_1011,&l_1011,&l_1011,&l_1011,&l_1011,&l_1011,&l_1011,&l_1011,&l_1011,&l_1011},{&l_1011,&l_1011,&l_1011,&l_1011,&l_1011,&l_1011,&l_1011,&l_1011,&l_1011,&l_1011}};
        int i, j;
        for (p_1367->g_44 = 0; (p_1367->g_44 > 4); p_1367->g_44++)
        { /* block id: 15 */
            int32_t *l_48 = (void*)0;
            p_1367->g_47.sd = (p_1367->g_44 , ((VECTOR(int32_t, 16))(p_1367->g_47.sb1aa435c5265879a)).s2);
        }
        for (p_1367->g_44 = 0; (p_1367->g_44 > (-6)); p_1367->g_44 = safe_sub_func_uint64_t_u_u(p_1367->g_44, 1))
        { /* block id: 20 */
            int16_t l_960 = 1L;
            uint16_t *l_964 = (void*)0;
            uint16_t *l_965 = (void*)0;
            uint16_t *l_966 = (void*)0;
            uint64_t *l_967 = &p_1367->g_968[2][0];
            int32_t *l_977 = (void*)0;
            int32_t l_983 = 0L;
            int32_t l_984 = 4L;
            int32_t l_985 = 0x067501E3L;
            int64_t l_997 = (-1L);
            int32_t **l_1004 = &l_977;
            int32_t *l_1005 = (void*)0;
            for (p_1367->g_51 = 0; (p_1367->g_51 > (-17)); p_1367->g_51 = safe_sub_func_int64_t_s_s(p_1367->g_51, 1))
            { /* block id: 23 */
                uint32_t *l_59 = &p_1367->g_60;
                int32_t *l_954 = &p_1367->g_955;
                (*l_954) |= func_54(p_1367->g_44, p_1367->g_47.s7, (++(*l_59)), &p_1367->g_7, p_1367);
            }
            if (((VECTOR(int32_t, 4))(l_956.xxxy)).y)
            { /* block id: 519 */
                return l_956.x;
            }
            else
            { /* block id: 521 */
                p_1367->g_620.y = (*p_1367->g_7);
                atomic_sub(&p_1367->l_atomic_reduction[0], ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(p_1367->g_957.xwww)).yywyyxwz)).s7);
                barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                if (get_linear_local_id() == 0)
                    p_1367->v_collective += p_1367->l_atomic_reduction[0];
                barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
            }
            if ((safe_sub_func_int64_t_s_s(l_960, (l_961[5] , (((*l_967) = (p_1367->g_95[0] = (safe_mul_func_uint16_t_u_u(0x7CDCL, (p_1367->g_373.sd = GROUP_DIVERGE(2, 1)))))) <= ((safe_div_func_uint64_t_u_u(((void*)0 == l_971), 0x2D1F983E6BBE571AL)) ^ l_960))))))
            { /* block id: 528 */
                int i, j;
                barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                p_1367->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 54)), permutations[(safe_mod_func_uint32_t_u_u((((VECTOR(uint32_t, 8))(p_1367->g_973.scb4fc287)).s3 , (safe_lshift_func_int8_t_s_u(l_956.y, l_976))), 10))][(safe_mod_func_uint32_t_u_u(p_1367->tid, 54))]));
                p_1367->g_424 = l_977;
            }
            else
            { /* block id: 533 */
                uint8_t l_987 = 248UL;
                int32_t l_1000 = 0x3CB0B4ECL;
                if (l_960)
                { /* block id: 534 */
                    int32_t *l_978 = (void*)0;
                    int32_t *l_979 = (void*)0;
                    int32_t *l_981 = &p_1367->g_51;
                    int32_t *l_982[5];
                    int i;
                    for (i = 0; i < 5; i++)
                        l_982[i] = &p_1367->g_51;
                    l_987++;
                    (*l_981) &= 0x643BC18CL;
                }
                else
                { /* block id: 537 */
                    uint32_t l_996 = 1UL;
                    int32_t *l_998 = (void*)0;
                    int32_t *l_999[9] = {&p_1367->g_51,&p_1367->g_51,&p_1367->g_51,&p_1367->g_51,&p_1367->g_51,&p_1367->g_51,&p_1367->g_51,&p_1367->g_51,&p_1367->g_51};
                    int i;
                    p_1367->g_619.s5 = (l_956.x != ((VECTOR(int16_t, 4))(p_1367->g_990.s701a)).w);
                    p_1367->g_620.y &= (l_986[0] && (l_993[5][0] == (((p_1367->g_60 , (safe_add_func_int8_t_s_s(l_996, 0x92L))) > l_997) , p_1367->g_552)));
                    p_1367->g_1001--;
                }
            }
            l_1005 = ((*l_1004) = &p_1367->g_51);
        }
        (*l_1006) = &p_1367->g_41;
        if (((**l_1006) , (((VECTOR(int64_t, 4))(((VECTOR(int64_t, 4))(p_1367->g_1007.yxwz)))).y ^ (safe_sub_func_int16_t_s_s(((void*)0 == l_1010), (l_986[2] = ((void*)0 == l_1012)))))))
        { /* block id: 548 */
            int32_t *l_1014 = &p_1367->g_51;
            int32_t *l_1015 = &l_986[3];
            int32_t *l_1016 = (void*)0;
            int32_t *l_1017 = &p_1367->g_51;
            int32_t *l_1018 = &l_980;
            int32_t *l_1019 = (void*)0;
            int32_t *l_1020 = &l_980;
            int32_t *l_1021[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            int i;
            l_1022++;
        }
        else
        { /* block id: 550 */
            uint8_t *l_1033[4];
            int32_t l_1034 = 0x68DCF254L;
            int32_t l_1035 = 1L;
            int32_t l_1036 = 0x7BB22632L;
            int32_t l_1037[7][9] = {{0x71D73BE0L,0x1CC5F4A9L,0x2F28D17DL,0x4E982F69L,0x1CC5F4A9L,0x4E982F69L,0x2F28D17DL,0x1CC5F4A9L,0x71D73BE0L},{0x71D73BE0L,0x1CC5F4A9L,0x2F28D17DL,0x4E982F69L,0x1CC5F4A9L,0x4E982F69L,0x2F28D17DL,0x1CC5F4A9L,0x71D73BE0L},{0x71D73BE0L,0x1CC5F4A9L,0x2F28D17DL,0x4E982F69L,0x1CC5F4A9L,0x4E982F69L,0x2F28D17DL,0x1CC5F4A9L,0x71D73BE0L},{0x71D73BE0L,0x1CC5F4A9L,0x2F28D17DL,0x4E982F69L,0x1CC5F4A9L,0x4E982F69L,0x2F28D17DL,0x1CC5F4A9L,0x71D73BE0L},{0x71D73BE0L,0x1CC5F4A9L,0x2F28D17DL,0x4E982F69L,0x1CC5F4A9L,0x4E982F69L,0x2F28D17DL,0x1CC5F4A9L,0x71D73BE0L},{0x71D73BE0L,0x1CC5F4A9L,0x2F28D17DL,0x4E982F69L,0x1CC5F4A9L,0x4E982F69L,0x2F28D17DL,0x1CC5F4A9L,0x71D73BE0L},{0x71D73BE0L,0x1CC5F4A9L,0x2F28D17DL,0x4E982F69L,0x1CC5F4A9L,0x4E982F69L,0x2F28D17DL,0x1CC5F4A9L,0x71D73BE0L}};
            int32_t *l_1068[1][4][8] = {{{&l_1037[3][7],(void*)0,&l_1036,(void*)0,&l_1036,(void*)0,&l_1037[3][7],&p_1367->g_44},{&l_1037[3][7],(void*)0,&l_1036,(void*)0,&l_1036,(void*)0,&l_1037[3][7],&p_1367->g_44},{&l_1037[3][7],(void*)0,&l_1036,(void*)0,&l_1036,(void*)0,&l_1037[3][7],&p_1367->g_44},{&l_1037[3][7],(void*)0,&l_1036,(void*)0,&l_1036,(void*)0,&l_1037[3][7],&p_1367->g_44}}};
            int i, j, k;
            for (i = 0; i < 4; i++)
                l_1033[i] = &p_1367->g_315;
            l_956.x = ((3UL | ((**l_1006) > ((safe_rshift_func_int16_t_s_s((**l_1006), ((safe_div_func_uint8_t_u_u((safe_add_func_int16_t_s_s((p_39 == ((l_1038++) , (((VECTOR(int32_t, 16))(p_1367->g_1041.sec57675e2cd9eb2e)).sa , (((safe_lshift_func_uint16_t_u_u(((safe_mul_func_uint8_t_u_u((l_986[3] = (safe_rshift_func_uint8_t_u_u((((safe_sub_func_uint8_t_u_u((safe_add_func_uint8_t_u_u((((*p_1367->g_310) = (safe_mul_func_uint16_t_u_u((**l_1006), (safe_mod_func_uint64_t_u_u((p_1367->g_315 && 0x150D52CBL), (safe_rshift_func_int16_t_s_u((safe_mod_func_uint8_t_u_u(((l_1060 || (safe_mod_func_int16_t_s_s((safe_add_func_uint32_t_u_u((safe_rshift_func_uint8_t_u_u(((l_980 & p_1367->g_comm_values[p_1367->tid]) == l_1037[0][7]), 6)), (*p_1367->g_7))), l_1037[0][7]))) >= 0x171EE26EL), FAKE_DIVERGE(p_1367->group_1_offset, get_group_id(1), 10))), FAKE_DIVERGE(p_1367->group_0_offset, get_group_id(0), 10)))))))) , (**l_1006)), l_961[3])), l_961[7])) , l_1067[2][5]) == &p_1367->g_552), 4))), FAKE_DIVERGE(p_1367->global_2_offset, get_global_id(2), 10))) , l_1037[5][2]), l_1022)) , 0x56L) , p_40)))), 65526UL)), 0x1BL)) & 0x648294D5L))) || l_1037[3][4]))) , l_1034);
        }
    }
    for (p_1367->g_82 = 0; (p_1367->g_82 >= 24); ++p_1367->g_82)
    { /* block id: 559 */
        int32_t **l_1071 = &p_1367->g_424;
        int32_t *l_1072 = &l_980;
        int32_t *l_1073 = (void*)0;
        int32_t *l_1074 = &p_1367->g_51;
        int32_t *l_1075 = &p_1367->g_44;
        int32_t *l_1076 = &p_1367->g_44;
        int32_t *l_1077 = &p_1367->g_41;
        int32_t *l_1078[3];
        int i;
        for (i = 0; i < 3; i++)
            l_1078[i] = &p_1367->g_51;
        (*l_1071) = &p_1367->g_41;
        if (l_1022)
            continue;
        ++l_1080;
    }
    return l_1079;
}


/* ------------------------------------------ */
/* 
 * reads : p_1367->g_68 p_1367->g_7 p_1367->g_8 p_1367->g_41 p_1367->g_82 p_1367->g_47 p_1367->g_92 p_1367->g_95 p_1367->g_272 p_1367->g_279 p_1367->g_51 p_1367->g_60 p_1367->g_309 p_1367->g_315 p_1367->g_84 p_1367->g_320 p_1367->g_326 p_1367->g_344 p_1367->g_354 p_1367->g_373 p_1367->g_359 p_1367->g_424 p_1367->g_455 p_1367->g_449 p_1367->g_448 p_1367->g_comm_values p_1367->g_476 p_1367->g_551 p_1367->g_499 p_1367->g_620 p_1367->g_612 p_1367->g_44 p_1367->g_661 p_1367->g_506 p_1367->g_670 p_1367->g_899 p_1367->g_905 p_1367->g_909 p_1367->g_606
 * writes: p_1367->g_82 p_1367->g_84 p_1367->g_95 p_1367->g_60 p_1367->g_309 p_1367->g_315 p_1367->g_326 p_1367->g_344 p_1367->g_359 p_1367->g_272 p_1367->g_320 p_1367->g_424 p_1367->g_373 p_1367->g_455 p_1367->g_279 p_1367->g_506 p_1367->g_449 p_1367->g_661 p_1367->g_619 p_1367->g_489 p_1367->g_620 p_1367->g_47 p_1367->g_664 p_1367->g_905 p_1367->g_912 p_1367->g_670 p_1367->g_606
 */
int32_t  func_54(uint64_t  p_55, uint16_t  p_56, uint32_t  p_57, int32_t ** p_58, struct S1 * p_1367)
{ /* block id: 25 */
    int8_t *l_80 = (void*)0;
    int8_t *l_81 = &p_1367->g_82;
    int8_t *l_83 = &p_1367->g_84;
    uint32_t *l_88 = &p_1367->g_60;
    uint32_t **l_87 = &l_88;
    uint32_t ***l_89 = (void*)0;
    uint32_t **l_91 = &l_88;
    uint32_t ***l_90 = &l_91;
    uint64_t l_96 = 0xC80536D0B4E55550L;
    int32_t l_97 = 0x3EFA6B6BL;
    uint8_t ***l_667 = &p_1367->g_661[0];
    int32_t *l_673 = (void*)0;
    int32_t *l_674 = &l_97;
    VECTOR(int8_t, 4) l_677 = (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0x4BL), 0x4BL);
    uint64_t *l_893[10] = {&p_1367->g_95[1],&p_1367->g_95[1],&p_1367->g_95[1],&p_1367->g_95[1],&p_1367->g_95[1],&p_1367->g_95[1],&p_1367->g_95[1],&p_1367->g_95[1],&p_1367->g_95[1],&p_1367->g_95[1]};
    int16_t ***l_927 = (void*)0;
    int32_t l_939 = 0x78F00C48L;
    int8_t l_940 = 0x7FL;
    int32_t l_941 = 0x0CC6C0D3L;
    int32_t l_942 = 0x607966FBL;
    int32_t l_943 = 0x7B804EA3L;
    int32_t l_945 = 1L;
    int32_t l_946 = 0x68B2AAB6L;
    int32_t l_947 = (-5L);
    int32_t l_948 = 1L;
    int32_t l_949 = 0L;
    VECTOR(int32_t, 8) l_950 = (VECTOR(int32_t, 8))(0x46556CDBL, (VECTOR(int32_t, 4))(0x46556CDBL, (VECTOR(int32_t, 2))(0x46556CDBL, 0L), 0L), 0L, 0x46556CDBL, 0L);
    uint32_t l_951 = 0x3B4B45A1L;
    int i;
    (*l_90) = func_63((l_97 ^= (((p_1367->g_68 != (void*)0) & func_70((safe_rshift_func_uint8_t_u_u((safe_mul_func_int8_t_s_s(((((FAKE_DIVERGE(p_1367->group_0_offset, get_group_id(0), 10) && ((~(((*p_1367->g_7) < p_1367->g_41) || (((safe_rshift_func_int16_t_s_s((FAKE_DIVERGE(p_1367->global_0_offset, get_global_id(0), 10) >= p_56), ((safe_rshift_func_uint16_t_u_u((((*l_83) = ((*l_81) &= ((void*)0 == &p_1367->g_7))) > (p_1367->g_95[0] |= (safe_sub_func_int8_t_s_s(p_1367->g_47.sc, ((((*l_90) = (l_87 = (void*)0)) != p_1367->g_92) != p_55))))), 4)) , 0x7315L))) , 0x54C1C085L) & 0x2DFF541EL))) ^ 1UL)) >= 0xA88DL) | (**p_58)) || l_96), 0xA5L)), l_96)), p_1367)) , l_96)), p_1367->g_8, l_88, p_57, p_1367);
    if (((safe_mod_func_int8_t_s_s(((((*l_667) = p_1367->g_661[3]) == &p_1367->g_68) & (!((safe_lshift_func_uint16_t_u_u(65527UL, ((((*l_674) = (((VECTOR(int64_t, 16))(p_1367->g_670.xwwxyzyyxxyxzzxy)).s7 , (safe_mul_func_uint16_t_u_u(1UL, (((void*)0 != p_1367->g_7) , 0L))))) | ((safe_lshift_func_int8_t_s_s(((VECTOR(int8_t, 16))(l_677.wwxxzxzyywzwyywx)).s3, 4)) || (((l_83 == l_83) >= 18446744073709551609UL) > p_56))) || 4294967295UL))) , 0L))), p_55)) & (*p_1367->g_7)))
    { /* block id: 370 */
        if ((atomic_inc(&p_1367->g_atomic_input[31 * get_linear_group_id() + 22]) == 3))
        { /* block id: 372 */
            uint8_t l_678[4] = {0xC1L,0xC1L,0xC1L,0xC1L};
            VECTOR(uint8_t, 2) l_679 = (VECTOR(uint8_t, 2))(0xBAL, 1UL);
            int16_t l_680 = 0x7C9FL;
            VECTOR(int64_t, 4) l_681 = (VECTOR(int64_t, 4))(0x5911841823FC946FL, (VECTOR(int64_t, 2))(0x5911841823FC946FL, 1L), 1L);
            uint16_t l_682 = 0UL;
            VECTOR(int64_t, 4) l_683 = (VECTOR(int64_t, 4))(3L, (VECTOR(int64_t, 2))(3L, 0x2DCE3C5355BD8F3CL), 0x2DCE3C5355BD8F3CL);
            int8_t l_684 = 0x31L;
            int16_t l_685 = 0x773DL;
            VECTOR(uint32_t, 2) l_686 = (VECTOR(uint32_t, 2))(0x725A488BL, 0UL);
            VECTOR(int16_t, 8) l_687 = (VECTOR(int16_t, 8))(0x60B5L, (VECTOR(int16_t, 4))(0x60B5L, (VECTOR(int16_t, 2))(0x60B5L, 0x377AL), 0x377AL), 0x377AL, 0x60B5L, 0x377AL);
            VECTOR(uint16_t, 4) l_688 = (VECTOR(uint16_t, 4))(7UL, (VECTOR(uint16_t, 2))(7UL, 0x05B7L), 0x05B7L);
            uint32_t l_689 = 4294967293UL;
            VECTOR(uint32_t, 4) l_690 = (VECTOR(uint32_t, 4))(0xF520571CL, (VECTOR(uint32_t, 2))(0xF520571CL, 0UL), 0UL);
            VECTOR(uint32_t, 8) l_691 = (VECTOR(uint32_t, 8))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 0xC1F9BA15L), 0xC1F9BA15L), 0xC1F9BA15L, 1UL, 0xC1F9BA15L);
            uint32_t l_692[10][4][2] = {{{0xE6ACEE0BL,0x8147A8A3L},{0xE6ACEE0BL,0x8147A8A3L},{0xE6ACEE0BL,0x8147A8A3L},{0xE6ACEE0BL,0x8147A8A3L}},{{0xE6ACEE0BL,0x8147A8A3L},{0xE6ACEE0BL,0x8147A8A3L},{0xE6ACEE0BL,0x8147A8A3L},{0xE6ACEE0BL,0x8147A8A3L}},{{0xE6ACEE0BL,0x8147A8A3L},{0xE6ACEE0BL,0x8147A8A3L},{0xE6ACEE0BL,0x8147A8A3L},{0xE6ACEE0BL,0x8147A8A3L}},{{0xE6ACEE0BL,0x8147A8A3L},{0xE6ACEE0BL,0x8147A8A3L},{0xE6ACEE0BL,0x8147A8A3L},{0xE6ACEE0BL,0x8147A8A3L}},{{0xE6ACEE0BL,0x8147A8A3L},{0xE6ACEE0BL,0x8147A8A3L},{0xE6ACEE0BL,0x8147A8A3L},{0xE6ACEE0BL,0x8147A8A3L}},{{0xE6ACEE0BL,0x8147A8A3L},{0xE6ACEE0BL,0x8147A8A3L},{0xE6ACEE0BL,0x8147A8A3L},{0xE6ACEE0BL,0x8147A8A3L}},{{0xE6ACEE0BL,0x8147A8A3L},{0xE6ACEE0BL,0x8147A8A3L},{0xE6ACEE0BL,0x8147A8A3L},{0xE6ACEE0BL,0x8147A8A3L}},{{0xE6ACEE0BL,0x8147A8A3L},{0xE6ACEE0BL,0x8147A8A3L},{0xE6ACEE0BL,0x8147A8A3L},{0xE6ACEE0BL,0x8147A8A3L}},{{0xE6ACEE0BL,0x8147A8A3L},{0xE6ACEE0BL,0x8147A8A3L},{0xE6ACEE0BL,0x8147A8A3L},{0xE6ACEE0BL,0x8147A8A3L}},{{0xE6ACEE0BL,0x8147A8A3L},{0xE6ACEE0BL,0x8147A8A3L},{0xE6ACEE0BL,0x8147A8A3L},{0xE6ACEE0BL,0x8147A8A3L}}};
            uint16_t l_693 = 0x4793L;
            uint32_t l_694[7][8] = {{0xDAF7FDD3L,0xDAF7FDD3L,4294967295UL,0UL,0xAE244173L,0UL,4294967295UL,0xDAF7FDD3L},{0xDAF7FDD3L,0xDAF7FDD3L,4294967295UL,0UL,0xAE244173L,0UL,4294967295UL,0xDAF7FDD3L},{0xDAF7FDD3L,0xDAF7FDD3L,4294967295UL,0UL,0xAE244173L,0UL,4294967295UL,0xDAF7FDD3L},{0xDAF7FDD3L,0xDAF7FDD3L,4294967295UL,0UL,0xAE244173L,0UL,4294967295UL,0xDAF7FDD3L},{0xDAF7FDD3L,0xDAF7FDD3L,4294967295UL,0UL,0xAE244173L,0UL,4294967295UL,0xDAF7FDD3L},{0xDAF7FDD3L,0xDAF7FDD3L,4294967295UL,0UL,0xAE244173L,0UL,4294967295UL,0xDAF7FDD3L},{0xDAF7FDD3L,0xDAF7FDD3L,4294967295UL,0UL,0xAE244173L,0UL,4294967295UL,0xDAF7FDD3L}};
            VECTOR(int64_t, 2) l_695 = (VECTOR(int64_t, 2))(1L, 0x2119589AC03E8F5FL);
            uint64_t l_696 = 1UL;
            int16_t l_697 = 0x55AEL;
            int32_t l_698 = (-1L);
            int16_t l_699[8] = {2L,2L,2L,2L,2L,2L,2L,2L};
            int16_t l_700 = 0x13F3L;
            uint64_t l_809 = 0x1BD0180FF67A19D4L;
            uint64_t l_883 = 0xD5392ECA3C14BEDAL;
            int32_t l_884[3];
            int i, j, k;
            for (i = 0; i < 3; i++)
                l_884[i] = 6L;
            l_678[3] &= ((VECTOR(int32_t, 2))(0x7E1395A4L, 0x10D205E1L)).even;
            if ((l_679.x , ((l_680 , ((((VECTOR(int64_t, 16))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 16),((VECTOR(int64_t, 8))(((VECTOR(int64_t, 16))(l_681.xwzxwyzxwzxzwwxw)).even)).s7665147675700766, ((VECTOR(int64_t, 16))(safe_clamp_func(VECTOR(int64_t, 16),int64_t,((VECTOR(int64_t, 4))(l_682, ((VECTOR(int64_t, 2))(add_sat(((VECTOR(int64_t, 8))(hadd(((VECTOR(int64_t, 8))(mul_hi(((VECTOR(int64_t, 2))(max(((VECTOR(int64_t, 4))(l_683.yxzz)).hi, ((VECTOR(int64_t, 8))(0x654A726D46B2CA0AL, (l_684 , l_685), ((VECTOR(int64_t, 2))(0x24DDE6419A60A01BL, 0x2B15B68A9EC253BFL)).even, 0x7244C1076CDECE7EL, (((VECTOR(uint32_t, 2))(add_sat(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 4))(4294967294UL, ((VECTOR(uint32_t, 16))(l_686.yxyxyyxxyxxyyyxy)).s8, 0x09BA9D67L, 0UL)))).lo, ((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))(max(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))(0xCB9867DAL, 4294967292UL)).xyxxxyxyyyxyxxyy)).s54)).yyxyyyyx, (uint32_t)(((VECTOR(int32_t, 4))(upsample(((VECTOR(int16_t, 4))(l_687.s2341)), ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 8))(l_688.xwwxxxyx)))).lo))))).y , l_689)))), ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 8))(l_690.yzwzzywy)))).s1, 4294967288UL, ((VECTOR(uint32_t, 4))(l_691.s0275)), 0x74A67082L, 4294967294UL)).s80))).lo , (l_692[8][0][1] , ((l_696 = ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 8))(3L, 3L, (l_694[2][3] = l_693), 0x10B81A59A6E03E0DL, ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 4))(l_695.xyxy)).even)), 0x4BCF712F44AA6EAFL, 0x3DE63232FED3D548L)))).s4) , (l_697 |= 5L)))), ((VECTOR(int64_t, 2))((-1L))), 1L)).s46))).xxxyyyxy, ((VECTOR(int64_t, 8))((-1L)))))), ((VECTOR(int64_t, 8))(1L))))).s23, ((VECTOR(int64_t, 2))(0x3862357437BF99BCL))))), 0x1D82030E6C471A32L)).wwxwwxyxyyyzzwzw, (int64_t)0x10FDC5D2865A4B2FL, (int64_t)l_698))), ((VECTOR(int64_t, 16))(0x57CF21D6D8164EA7L))))).s3 , l_699[7]) , 0x7FEB452BL)) , l_700)))
            { /* block id: 377 */
                int32_t l_702 = 0x53741F08L;
                int32_t *l_701 = &l_702;
                l_698 = 1L;
                l_701 = (void*)0;
            }
            else
            { /* block id: 380 */
                int32_t l_703 = (-3L);
                uint8_t l_734 = 3UL;
                uint8_t l_800 = 0xF6L;
                for (l_703 = 0; (l_703 >= 16); l_703 = safe_add_func_int32_t_s_s(l_703, 4))
                { /* block id: 383 */
                    int32_t l_707 = 0x35B72E5AL;
                    int32_t *l_706 = &l_707;
                    int8_t l_708 = 0x15L;
                    uint64_t l_709 = 0xBACC47E9BD8A8CBBL;
                    uint8_t l_710 = 248UL;
                    l_706 = l_706;
                    l_698 = (l_709 &= l_708);
                    if (l_710)
                    { /* block id: 387 */
                        uint32_t l_711[4] = {0x403F8226L,0x403F8226L,0x403F8226L,0x403F8226L};
                        int32_t l_715 = (-1L);
                        int32_t *l_714 = &l_715;
                        int32_t *l_716 = &l_715;
                        int32_t *l_717 = (void*)0;
                        int32_t *l_718 = &l_715;
                        int i;
                        l_711[3]++;
                        l_716 = (l_706 = l_714);
                        l_718 = (l_717 = (l_706 = (void*)0));
                    }
                    else
                    { /* block id: 394 */
                        int32_t l_720[7][3][8] = {{{0x16DFE831L,1L,(-8L),3L,9L,3L,(-8L),1L},{0x16DFE831L,1L,(-8L),3L,9L,3L,(-8L),1L},{0x16DFE831L,1L,(-8L),3L,9L,3L,(-8L),1L}},{{0x16DFE831L,1L,(-8L),3L,9L,3L,(-8L),1L},{0x16DFE831L,1L,(-8L),3L,9L,3L,(-8L),1L},{0x16DFE831L,1L,(-8L),3L,9L,3L,(-8L),1L}},{{0x16DFE831L,1L,(-8L),3L,9L,3L,(-8L),1L},{0x16DFE831L,1L,(-8L),3L,9L,3L,(-8L),1L},{0x16DFE831L,1L,(-8L),3L,9L,3L,(-8L),1L}},{{0x16DFE831L,1L,(-8L),3L,9L,3L,(-8L),1L},{0x16DFE831L,1L,(-8L),3L,9L,3L,(-8L),1L},{0x16DFE831L,1L,(-8L),3L,9L,3L,(-8L),1L}},{{0x16DFE831L,1L,(-8L),3L,9L,3L,(-8L),1L},{0x16DFE831L,1L,(-8L),3L,9L,3L,(-8L),1L},{0x16DFE831L,1L,(-8L),3L,9L,3L,(-8L),1L}},{{0x16DFE831L,1L,(-8L),3L,9L,3L,(-8L),1L},{0x16DFE831L,1L,(-8L),3L,9L,3L,(-8L),1L},{0x16DFE831L,1L,(-8L),3L,9L,3L,(-8L),1L}},{{0x16DFE831L,1L,(-8L),3L,9L,3L,(-8L),1L},{0x16DFE831L,1L,(-8L),3L,9L,3L,(-8L),1L},{0x16DFE831L,1L,(-8L),3L,9L,3L,(-8L),1L}}};
                        int32_t *l_719 = &l_720[2][0][3];
                        int32_t *l_721 = &l_720[1][2][6];
                        VECTOR(int32_t, 8) l_722 = (VECTOR(int32_t, 8))(6L, (VECTOR(int32_t, 4))(6L, (VECTOR(int32_t, 2))(6L, 0x65D63318L), 0x65D63318L), 0x65D63318L, 6L, 0x65D63318L);
                        uint64_t l_723 = 0x9EEB43E5EADA0804L;
                        int i, j, k;
                        l_721 = l_719;
                        (*l_721) = ((VECTOR(int32_t, 2))(l_722.s21)).even;
                        (*l_706) ^= l_723;
                    }
                }
                for (l_703 = (-8); (l_703 > (-28)); l_703 = safe_sub_func_uint8_t_u_u(l_703, 7))
                { /* block id: 402 */
                    VECTOR(int32_t, 4) l_726 = (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, (-1L)), (-1L));
                    uint32_t l_730 = 3UL;
                    uint8_t l_731 = 251UL;
                    int i;
                    for (l_726.x = 0; (l_726.x != 21); ++l_726.x)
                    { /* block id: 405 */
                        uint16_t l_729 = 0UL;
                        l_729 = (l_698 = (-6L));
                    }
                    l_698 &= l_730;
                    --l_731;
                }
                if (l_734)
                { /* block id: 412 */
                    uint8_t l_735 = 0x2CL;
                    int32_t l_736[4][4][2] = {{{1L,(-9L)},{1L,(-9L)},{1L,(-9L)},{1L,(-9L)}},{{1L,(-9L)},{1L,(-9L)},{1L,(-9L)},{1L,(-9L)}},{{1L,(-9L)},{1L,(-9L)},{1L,(-9L)},{1L,(-9L)}},{{1L,(-9L)},{1L,(-9L)},{1L,(-9L)},{1L,(-9L)}}};
                    int32_t l_737 = 0x01C7BCBCL;
                    int64_t l_738 = 0L;
                    uint64_t l_739 = 0x3683A0CF13617458L;
                    VECTOR(int64_t, 8) l_740 = (VECTOR(int64_t, 8))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 0x7503FF17C116B06FL), 0x7503FF17C116B06FL), 0x7503FF17C116B06FL, (-1L), 0x7503FF17C116B06FL);
                    VECTOR(int64_t, 16) l_741 = (VECTOR(int64_t, 16))(0x6CE4B69B6A34BFB6L, (VECTOR(int64_t, 4))(0x6CE4B69B6A34BFB6L, (VECTOR(int64_t, 2))(0x6CE4B69B6A34BFB6L, (-1L)), (-1L)), (-1L), 0x6CE4B69B6A34BFB6L, (-1L), (VECTOR(int64_t, 2))(0x6CE4B69B6A34BFB6L, (-1L)), (VECTOR(int64_t, 2))(0x6CE4B69B6A34BFB6L, (-1L)), 0x6CE4B69B6A34BFB6L, (-1L), 0x6CE4B69B6A34BFB6L, (-1L));
                    VECTOR(int64_t, 16) l_742 = (VECTOR(int64_t, 16))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, (-1L)), (-1L)), (-1L), 1L, (-1L), (VECTOR(int64_t, 2))(1L, (-1L)), (VECTOR(int64_t, 2))(1L, (-1L)), 1L, (-1L), 1L, (-1L));
                    uint64_t l_743 = 0xAA03074FA1B04F0EL;
                    uint64_t l_744 = 1UL;
                    int64_t l_745 = (-4L);
                    int16_t l_746 = 0x3898L;
                    uint16_t l_747 = 1UL;
                    VECTOR(uint32_t, 2) l_748 = (VECTOR(uint32_t, 2))(0UL, 0xF277DDFAL);
                    uint32_t l_749 = 5UL;
                    int16_t l_750 = 0x0BD3L;
                    int32_t l_751 = 1L;
                    int32_t *l_752 = (void*)0;
                    int32_t l_754 = 0x51A4BC50L;
                    int32_t *l_753 = &l_754;
                    int i, j, k;
                    l_753 = ((l_681.w |= ((VECTOR(int64_t, 16))((-1L), ((l_736[0][2][1] = l_735) , (-6L)), (l_695.x &= l_737), ((VECTOR(int64_t, 8))(mad_sat(((VECTOR(int64_t, 8))(l_738, ((VECTOR(int64_t, 4))(l_739, ((VECTOR(int64_t, 2))(0x2AF8D7DF8EE795B1L, 0x5490E6E617620DEDL)), 0x28389D96A04EE4FCL)), ((VECTOR(int64_t, 2))(l_740.s72)), 0x61D6871E2CF51AF3L)), ((VECTOR(int64_t, 8))(l_741.s55ad52c3)), ((VECTOR(int64_t, 16))(((VECTOR(int64_t, 8))(mul_hi(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 8))(add_sat(((VECTOR(int64_t, 4))(rotate(((VECTOR(int64_t, 8))(max(((VECTOR(int64_t, 16))(l_742.s0ca88b12ffa69d9a)).hi, (int64_t)(l_683.y ^= (l_743 , (((l_744 , l_745) , (l_746 , 0L)) , l_747)))))).hi, ((VECTOR(int64_t, 4))(0x2A7FFDA92AA31E2AL))))).yxyxxzww, ((VECTOR(int64_t, 8))(4L))))).even)))), ((VECTOR(int64_t, 8))((-1L))), 0x7F1B7A9CCFAE1235L, ((VECTOR(int64_t, 2))(0x22EC3CAA55349256L)), 0x4814A7143E3451E6L)).s65be)).y, l_748.x, ((VECTOR(int64_t, 2))(0x4492023C94F41BFAL)), ((VECTOR(int64_t, 2))(1L)), 0L, 5L, 1L, 1L, l_749, (-8L), l_750, ((VECTOR(int64_t, 2))((-8L))), 0L)).odd, ((VECTOR(int64_t, 8))(0L))))).s1247304265377305)).lo))).s6, l_751, ((VECTOR(int64_t, 4))((-1L))), ((VECTOR(int64_t, 4))((-6L))), ((VECTOR(int64_t, 2))(1L)), (-1L))).s1) , l_752);
                }
                else
                { /* block id: 418 */
                    VECTOR(int32_t, 16) l_794 = (VECTOR(int32_t, 16))(0x2DDEAEC6L, (VECTOR(int32_t, 4))(0x2DDEAEC6L, (VECTOR(int32_t, 2))(0x2DDEAEC6L, 0x7F0C275FL), 0x7F0C275FL), 0x7F0C275FL, 0x2DDEAEC6L, 0x7F0C275FL, (VECTOR(int32_t, 2))(0x2DDEAEC6L, 0x7F0C275FL), (VECTOR(int32_t, 2))(0x2DDEAEC6L, 0x7F0C275FL), 0x2DDEAEC6L, 0x7F0C275FL, 0x2DDEAEC6L, 0x7F0C275FL);
                    int64_t l_795 = 0x69A2C6E676F4842BL;
                    int32_t l_796 = 0x1A4F7059L;
                    uint16_t l_797 = 65535UL;
                    int i;
                    if ((l_698 |= (-6L)))
                    { /* block id: 420 */
                        int8_t l_755 = 0L;
                        uint64_t l_756 = 0x6D91E408620CCF0AL;
                        int32_t l_757[5][1] = {{(-3L)},{(-3L)},{(-3L)},{(-3L)},{(-3L)}};
                        int i, j;
                        l_703 &= l_755;
                        l_698 = (l_756 , l_757[1][0]);
                        l_703 = 0x3C9A10BDL;
                    }
                    else
                    { /* block id: 424 */
                        int16_t l_758 = 8L;
                        uint32_t l_759 = 4294967286UL;
                        int16_t l_760 = 0x1547L;
                        int32_t l_761 = 0x7EC33EE6L;
                        uint64_t l_762 = 18446744073709551607UL;
                        VECTOR(int64_t, 16) l_763 = (VECTOR(int64_t, 16))(0L, (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, (-2L)), (-2L)), (-2L), 0L, (-2L), (VECTOR(int64_t, 2))(0L, (-2L)), (VECTOR(int64_t, 2))(0L, (-2L)), 0L, (-2L), 0L, (-2L));
                        VECTOR(int64_t, 16) l_764 = (VECTOR(int64_t, 16))(0x55191AE650D87000L, (VECTOR(int64_t, 4))(0x55191AE650D87000L, (VECTOR(int64_t, 2))(0x55191AE650D87000L, 9L), 9L), 9L, 0x55191AE650D87000L, 9L, (VECTOR(int64_t, 2))(0x55191AE650D87000L, 9L), (VECTOR(int64_t, 2))(0x55191AE650D87000L, 9L), 0x55191AE650D87000L, 9L, 0x55191AE650D87000L, 9L);
                        VECTOR(int64_t, 4) l_765 = (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 0x740FE781C1BEC010L), 0x740FE781C1BEC010L);
                        VECTOR(int8_t, 8) l_766 = (VECTOR(int8_t, 8))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 4L), 4L), 4L, (-1L), 4L);
                        VECTOR(int8_t, 4) l_767 = (VECTOR(int8_t, 4))((-2L), (VECTOR(int8_t, 2))((-2L), (-1L)), (-1L));
                        uint32_t l_768 = 0x070D4688L;
                        VECTOR(int8_t, 16) l_769 = (VECTOR(int8_t, 16))(0x0DL, (VECTOR(int8_t, 4))(0x0DL, (VECTOR(int8_t, 2))(0x0DL, 0L), 0L), 0L, 0x0DL, 0L, (VECTOR(int8_t, 2))(0x0DL, 0L), (VECTOR(int8_t, 2))(0x0DL, 0L), 0x0DL, 0L, 0x0DL, 0L);
                        VECTOR(uint64_t, 16) l_770 = (VECTOR(uint64_t, 16))(18446744073709551615UL, (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0xB92AE4EB3E0C5A0DL), 0xB92AE4EB3E0C5A0DL), 0xB92AE4EB3E0C5A0DL, 18446744073709551615UL, 0xB92AE4EB3E0C5A0DL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0xB92AE4EB3E0C5A0DL), (VECTOR(uint64_t, 2))(18446744073709551615UL, 0xB92AE4EB3E0C5A0DL), 18446744073709551615UL, 0xB92AE4EB3E0C5A0DL, 18446744073709551615UL, 0xB92AE4EB3E0C5A0DL);
                        int32_t l_771[3];
                        VECTOR(int8_t, 8) l_772 = (VECTOR(int8_t, 8))(8L, (VECTOR(int8_t, 4))(8L, (VECTOR(int8_t, 2))(8L, 0x41L), 0x41L), 0x41L, 8L, 0x41L);
                        VECTOR(int8_t, 8) l_773 = (VECTOR(int8_t, 8))((-9L), (VECTOR(int8_t, 4))((-9L), (VECTOR(int8_t, 2))((-9L), 0x70L), 0x70L), 0x70L, (-9L), 0x70L);
                        VECTOR(int8_t, 4) l_774 = (VECTOR(int8_t, 4))((-7L), (VECTOR(int8_t, 2))((-7L), 0x2EL), 0x2EL);
                        VECTOR(int8_t, 2) l_775 = (VECTOR(int8_t, 2))(0x2CL, 0x20L);
                        VECTOR(int8_t, 2) l_776 = (VECTOR(int8_t, 2))((-6L), 0x6CL);
                        uint32_t l_777 = 0xFD45E424L;
                        int16_t l_778 = 0x1BEAL;
                        VECTOR(int8_t, 8) l_779 = (VECTOR(int8_t, 8))((-9L), (VECTOR(int8_t, 4))((-9L), (VECTOR(int8_t, 2))((-9L), 0x69L), 0x69L), 0x69L, (-9L), 0x69L);
                        VECTOR(int8_t, 4) l_780 = (VECTOR(int8_t, 4))(0x53L, (VECTOR(int8_t, 2))(0x53L, 0x09L), 0x09L);
                        int16_t l_781 = 0L;
                        uint8_t l_782 = 9UL;
                        uint32_t l_783 = 0x1617608DL;
                        int32_t l_784 = 0x3E0F2242L;
                        VECTOR(int32_t, 16) l_785 = (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x60849459L), 0x60849459L), 0x60849459L, 1L, 0x60849459L, (VECTOR(int32_t, 2))(1L, 0x60849459L), (VECTOR(int32_t, 2))(1L, 0x60849459L), 1L, 0x60849459L, 1L, 0x60849459L);
                        int8_t l_786 = 1L;
                        uint8_t l_787 = 249UL;
                        uint8_t l_788 = 4UL;
                        int16_t l_789 = 0x7A13L;
                        int32_t l_790 = 7L;
                        uint32_t l_791[6] = {4294967295UL,4294967291UL,4294967295UL,4294967295UL,4294967291UL,4294967295UL};
                        int i;
                        for (i = 0; i < 3; i++)
                            l_771[i] = 0x7593AD14L;
                        l_761 |= ((l_759 &= l_758) , l_760);
                        l_698 |= (-2L);
                        l_698 = (l_762 , ((l_789 = ((VECTOR(int64_t, 8))(add_sat(((VECTOR(int64_t, 4))(rhadd(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 8))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 8),((VECTOR(int64_t, 4))(l_763.s2ff9)).zwzxwxzz, ((VECTOR(int64_t, 4))(l_764.s64bd)).yxxxwxzz, ((VECTOR(int64_t, 16))(l_765.ywxyywzzyzwyxzzx)).lo))).lo)), ((VECTOR(int64_t, 16))((((l_760 = (l_697 = ((VECTOR(int16_t, 4))(mul_hi(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(upsample(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(rhadd(((VECTOR(int8_t, 2))(rhadd(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 2))(safe_clamp_func(VECTOR(int8_t, 2),VECTOR(int8_t, 2),((VECTOR(int8_t, 16))(l_766.s5340001047213230)).sf2, ((VECTOR(int8_t, 8))(mad_sat(((VECTOR(int8_t, 2))(l_767.xy)).yxyxyyxy, ((VECTOR(int8_t, 2))(hadd(((VECTOR(int8_t, 8))(safe_clamp_func(VECTOR(int8_t, 8),VECTOR(int8_t, 8),((VECTOR(int8_t, 8))(rhadd(((VECTOR(int8_t, 8))(0x57L, (-2L), l_768, 1L, ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 8))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 8),((VECTOR(int8_t, 4))(0x2AL, ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(sub_sat(((VECTOR(int8_t, 8))(sub_sat(((VECTOR(int8_t, 4))(safe_clamp_func(VECTOR(int8_t, 4),VECTOR(int8_t, 4),((VECTOR(int8_t, 8))(mul_hi(((VECTOR(int8_t, 8))(l_769.s559aeb03)), ((VECTOR(int8_t, 2))((-1L), 0x68L)).xyxxyxxy))).even, ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(l_770.se, 0L, 0L, 5L)), l_771[2], 7L, (-2L), 0x3DL)).lo, ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(add_sat(((VECTOR(int8_t, 16))(l_772.s0743132151372357)).s32, ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 2),((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(clz(((VECTOR(int8_t, 8))(l_773.s27632726)).odd))).xyxwxzxxzyyzzwxz)).s13, ((VECTOR(int8_t, 2))(l_774.yy)), ((VECTOR(int8_t, 2))(mad_sat(((VECTOR(int8_t, 16))(l_775.xyxxxyyyxxxxxyxy)).s60, ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(hadd(((VECTOR(int8_t, 16))(rotate(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(safe_clamp_func(VECTOR(int8_t, 2),VECTOR(int8_t, 2),((VECTOR(int8_t, 16))(max(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(0x5FL, 0x25L)).xyyxxyyxyyxyxxxx)), ((VECTOR(int8_t, 8))(l_776.xyyxyxyx)).s6475431434353477))).sc7, ((VECTOR(int8_t, 16))((l_785.s4 = ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 8))(0x34L, (l_777 , l_778), ((VECTOR(int8_t, 2))(max(((VECTOR(int8_t, 2))(sub_sat(((VECTOR(int8_t, 8))(rhadd(((VECTOR(int8_t, 8))(l_779.s63023727)), ((VECTOR(int8_t, 2))((-4L), 0x35L)).yxxxyyyx))).s56, ((VECTOR(int8_t, 4))(mad_sat(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(rotate(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(safe_clamp_func(VECTOR(int8_t, 4),int8_t,((VECTOR(int8_t, 16))(1L, 0x0EL, 0x28L, 0x67L, (-1L), ((VECTOR(int8_t, 8))(l_780.zwwxywyw)), l_781, 0x0BL, (-1L))).sfea6, (int8_t)(l_684 = l_782), (int8_t)l_783))).wyxwwxyz)).even, ((VECTOR(int8_t, 4))((-1L)))))), 1L, l_784, 0x35L, 0x12L)))).s44)).xyxx, ((VECTOR(int8_t, 4))(0x4CL)), ((VECTOR(int8_t, 4))((-1L)))))).hi))), ((VECTOR(int8_t, 2))(0x5DL))))), ((VECTOR(int8_t, 4))((-1L))))).lo)).x), ((VECTOR(int8_t, 8))(0x4DL)), ((VECTOR(int8_t, 2))(0x02L)), (-1L), ((VECTOR(int8_t, 4))(0x7EL)))).s7c, ((VECTOR(int8_t, 2))(0x15L))))), (-1L), (-1L))).xwyywzyzzxwzxwyx, ((VECTOR(int8_t, 16))(0x21L))))).sad, ((VECTOR(int8_t, 2))((-9L)))))), 0x6FL, 0L)).odd, ((VECTOR(int8_t, 2))((-1L))))))))), 1L, 0x38L)).hi))), 0x72L, 0x7FL)).lo)).xxyx))).ywwyyzwz, ((VECTOR(int8_t, 8))(0x10L))))).s30, ((VECTOR(int8_t, 2))(0x12L))))), 0x21L, ((VECTOR(int8_t, 2))(0x58L)), (-2L), 1L, (-1L))).s37)), (-1L))).xzxzzyxw, ((VECTOR(int8_t, 8))(0x6EL)), ((VECTOR(int8_t, 8))(6L))))).s2, 0x75L, 0x36L, 8L)).even)), 0x4CL, 2L)), ((VECTOR(int8_t, 8))(0x2FL))))), ((VECTOR(int8_t, 8))(4L)), ((VECTOR(int8_t, 8))(1L))))).s00, ((VECTOR(int8_t, 2))(0x6FL))))).xxxxxyxx, ((VECTOR(int8_t, 8))(0x42L))))).s44, ((VECTOR(int8_t, 2))((-1L)))))))).yyyyxxyxxyyyxyyy)).s43, ((VECTOR(int8_t, 2))(1L))))), ((VECTOR(int8_t, 2))(0L))))), 0x28L, (-9L))).even, ((VECTOR(uint8_t, 2))(0xF4L))))), 0x5669L, (-9L))), ((VECTOR(int16_t, 4))((-1L)))))).x)) , l_786) , (-1L)), l_787, l_788, ((VECTOR(int64_t, 2))(1L)), 0x1C537ED5ABBABED0L, 0x702773F06EA8E8F4L, ((VECTOR(int64_t, 8))((-7L))), 1L)).s7b31))).ywywzwyz, ((VECTOR(int64_t, 8))(0x7C90CCA8F12F5104L))))).s0) , l_790));
                        l_791[0]--;
                    }
                    l_703 = ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(l_794.s01)).yyxyyxyyyxxxxyxy)).sa;
                    ++l_797;
                }
                if (l_800)
                { /* block id: 439 */
                    int32_t l_801[2];
                    int i;
                    for (i = 0; i < 2; i++)
                        l_801[i] = 0x13809F86L;
                    for (l_801[1] = 0; (l_801[1] != 6); l_801[1]++)
                    { /* block id: 442 */
                        int32_t *l_804 = (void*)0;
                        l_804 = (void*)0;
                    }
                }
                else
                { /* block id: 445 */
                    VECTOR(int32_t, 2) l_805 = (VECTOR(int32_t, 2))(0x505257A4L, 0x632674E1L);
                    VECTOR(int32_t, 2) l_806 = (VECTOR(int32_t, 2))(0x01642031L, 1L);
                    uint8_t l_807 = 0xBDL;
                    uint64_t l_808 = 18446744073709551615UL;
                    int i;
                    l_807 &= ((VECTOR(int32_t, 2))(sub_sat(((VECTOR(int32_t, 4))(l_805.xxyx)).lo, ((VECTOR(int32_t, 2))(l_806.xx))))).hi;
                    l_703 ^= (l_698 = l_808);
                }
            }
            if (l_809)
            { /* block id: 451 */
                uint8_t l_810 = 0UL;
                int32_t l_811 = 0x30AD9458L;
                VECTOR(uint64_t, 16) l_812 = (VECTOR(uint64_t, 16))(18446744073709551615UL, (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0xCF02193DEF16B13CL), 0xCF02193DEF16B13CL), 0xCF02193DEF16B13CL, 18446744073709551615UL, 0xCF02193DEF16B13CL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0xCF02193DEF16B13CL), (VECTOR(uint64_t, 2))(18446744073709551615UL, 0xCF02193DEF16B13CL), 18446744073709551615UL, 0xCF02193DEF16B13CL, 18446744073709551615UL, 0xCF02193DEF16B13CL);
                int8_t l_813 = 0L;
                uint32_t l_814 = 0xAE8A659EL;
                uint64_t l_817 = 1UL;
                int32_t l_818 = (-1L);
                int32_t *l_819 = &l_818;
                int32_t *l_820 = &l_818;
                int64_t l_821 = (-1L);
                VECTOR(int32_t, 8) l_822 = (VECTOR(int32_t, 8))((-10L), (VECTOR(int32_t, 4))((-10L), (VECTOR(int32_t, 2))((-10L), 3L), 3L), 3L, (-10L), 3L);
                VECTOR(int32_t, 16) l_823 = (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 1L), 1L), 1L, 1L, 1L, (VECTOR(int32_t, 2))(1L, 1L), (VECTOR(int32_t, 2))(1L, 1L), 1L, 1L, 1L, 1L);
                int i;
                l_820 = (l_810 , (((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(18446744073709551615UL, 0x0E338ACF81346A56L)), l_811, 0x54474294519098A1L, ((VECTOR(uint64_t, 4))(l_812.s16ee)))).s7 , (((((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(min(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(0x0469L, 0x61E7L)))).xyyyyxyy)).s12, (int16_t)l_813))).yyxyyxyxyxxyxxxy)).s1 , l_814) , (--l_678[3])) , ((l_684 = (l_817 , l_818)) , l_819))));
                if (((VECTOR(int32_t, 8))(l_821, ((VECTOR(int32_t, 4))((-5L), (-1L), (-5L), 1L)), ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(l_822.s45)), ((VECTOR(int32_t, 4))(l_823.sf7ff)), (-8L), 0x712DE756L)).s2451766521340376)).s7, 0x248070F0L, 0L)).s7)
                { /* block id: 455 */
                    int32_t *l_824 = (void*)0;
                    int32_t l_826[2];
                    int32_t *l_825[4][8] = {{(void*)0,&l_826[0],(void*)0,(void*)0,&l_826[0],(void*)0,(void*)0,&l_826[0]},{(void*)0,&l_826[0],(void*)0,(void*)0,&l_826[0],(void*)0,(void*)0,&l_826[0]},{(void*)0,&l_826[0],(void*)0,(void*)0,&l_826[0],(void*)0,(void*)0,&l_826[0]},{(void*)0,&l_826[0],(void*)0,(void*)0,&l_826[0],(void*)0,(void*)0,&l_826[0]}};
                    VECTOR(int32_t, 2) l_827 = (VECTOR(int32_t, 2))(0x1D64D856L, 8L);
                    int i, j;
                    for (i = 0; i < 2; i++)
                        l_826[i] = 8L;
                    l_825[1][0] = l_824;
                    if (((VECTOR(int32_t, 2))(l_827.yy)).hi)
                    { /* block id: 457 */
                        int8_t l_828 = 0x4AL;
                        VECTOR(uint32_t, 16) l_829 = (VECTOR(uint32_t, 16))(0x7F133036L, (VECTOR(uint32_t, 4))(0x7F133036L, (VECTOR(uint32_t, 2))(0x7F133036L, 4294967295UL), 4294967295UL), 4294967295UL, 0x7F133036L, 4294967295UL, (VECTOR(uint32_t, 2))(0x7F133036L, 4294967295UL), (VECTOR(uint32_t, 2))(0x7F133036L, 4294967295UL), 0x7F133036L, 4294967295UL, 0x7F133036L, 4294967295UL);
                        VECTOR(uint32_t, 4) l_830 = (VECTOR(uint32_t, 4))(7UL, (VECTOR(uint32_t, 2))(7UL, 4294967293UL), 4294967293UL);
                        VECTOR(uint32_t, 2) l_831 = (VECTOR(uint32_t, 2))(0xE0FFAEAEL, 0x1358316DL);
                        uint32_t l_832 = 0UL;
                        int32_t l_833 = 0x47D9C374L;
                        int32_t l_834[2][8][3] = {{{1L,0L,2L},{1L,0L,2L},{1L,0L,2L},{1L,0L,2L},{1L,0L,2L},{1L,0L,2L},{1L,0L,2L},{1L,0L,2L}},{{1L,0L,2L},{1L,0L,2L},{1L,0L,2L},{1L,0L,2L},{1L,0L,2L},{1L,0L,2L},{1L,0L,2L},{1L,0L,2L}}};
                        uint8_t l_835 = 0xE0L;
                        VECTOR(uint32_t, 4) l_836 = (VECTOR(uint32_t, 4))(0x8CBEA485L, (VECTOR(uint32_t, 2))(0x8CBEA485L, 2UL), 2UL);
                        VECTOR(uint32_t, 4) l_837 = (VECTOR(uint32_t, 4))(0xD0AF22D9L, (VECTOR(uint32_t, 2))(0xD0AF22D9L, 0xC0C448FEL), 0xC0C448FEL);
                        VECTOR(uint16_t, 4) l_838 = (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0UL), 0UL);
                        VECTOR(uint32_t, 4) l_839 = (VECTOR(uint32_t, 4))(4294967286UL, (VECTOR(uint32_t, 2))(4294967286UL, 0xEA2D38CBL), 0xEA2D38CBL);
                        VECTOR(uint16_t, 8) l_840 = (VECTOR(uint16_t, 8))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0UL), 0UL), 0UL, 1UL, 0UL);
                        VECTOR(uint32_t, 16) l_841 = (VECTOR(uint32_t, 16))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 4294967290UL), 4294967290UL), 4294967290UL, 0UL, 4294967290UL, (VECTOR(uint32_t, 2))(0UL, 4294967290UL), (VECTOR(uint32_t, 2))(0UL, 4294967290UL), 0UL, 4294967290UL, 0UL, 4294967290UL);
                        uint64_t l_842[5];
                        VECTOR(uint32_t, 4) l_843 = (VECTOR(uint32_t, 4))(4294967290UL, (VECTOR(uint32_t, 2))(4294967290UL, 4294967292UL), 4294967292UL);
                        VECTOR(uint32_t, 2) l_844 = (VECTOR(uint32_t, 2))(9UL, 0xF51A994BL);
                        uint64_t l_845 = 1UL;
                        int32_t l_846[4];
                        int8_t l_847 = 1L;
                        int32_t l_848 = 0x27DAEE27L;
                        uint16_t l_849 = 0xAA0EL;
                        union U0 l_851 = {0x57E5B1A29AAAA609L};/* VOLATILE GLOBAL l_851 */
                        union U0 *l_850[3];
                        uint16_t l_852[3][4] = {{65529UL,65529UL,65529UL,65529UL},{65529UL,65529UL,65529UL,65529UL},{65529UL,65529UL,65529UL,65529UL}};
                        int i, j, k;
                        for (i = 0; i < 5; i++)
                            l_842[i] = 0x7AFA2A21343B76F5L;
                        for (i = 0; i < 4; i++)
                            l_846[i] = 0x0D8CB72BL;
                        for (i = 0; i < 3; i++)
                            l_850[i] = &l_851;
                        l_850[0] = (((VECTOR(uint32_t, 16))(min(((VECTOR(uint32_t, 8))((l_828 , 0x571A954CL), ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(add_sat(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 16))(l_829.s8ad10a8a5100ffb8)))))).s36, ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(0x5B9B0B75L, 4294967295UL)), 4294967295UL, 0xEB54CF8AL, 0xBFEEB278L, 0xA1A4CE1DL, 0xB5FA162BL, 0xE6AFC27AL)).s22))), 4UL, 6UL)).z, ((VECTOR(uint32_t, 2))(abs_diff(((VECTOR(uint32_t, 2))(min(((VECTOR(uint32_t, 16))(l_830.xxzzxywyzxyywxxy)).s2b, ((VECTOR(uint32_t, 4))(sub_sat(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))(clz(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))(l_831.xxxxyyyy)).s3716041721315130)).even))).s5717050002270151)).sb4c9, ((VECTOR(uint32_t, 2))(0x9CFB5D61L, 1UL)).yxyx))).even))), ((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))(1UL, (l_833 = l_832), l_834[1][4][1], l_835, 0xE4A7BF4BL, ((VECTOR(uint32_t, 2))(l_836.ww)), 1UL)), ((VECTOR(uint32_t, 2))(abs(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(l_837.yw)), 0xF45A9286L, ((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))(0x18F66E1FL, l_838.w, 0x9D9DCA9FL, 9UL)).yzxzwzwxyxzzxzxy)).s4, ((VECTOR(uint32_t, 4))(0x55B95908L, 4294967293UL, 4294967289UL, 1UL)).y, 0x79BCBE51L, 4294967287UL, 0x48B5ACBEL)).s36))), ((VECTOR(uint32_t, 4))(add_sat(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))(mul_hi(((VECTOR(uint32_t, 8))(0UL, ((VECTOR(uint32_t, 4))(3UL, ((VECTOR(uint32_t, 2))(rotate(((VECTOR(uint32_t, 4))(sub_sat(((VECTOR(uint32_t, 16))(rotate(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 8))(abs_diff(((VECTOR(uint32_t, 16))(l_839.wxxywwyxwxxwwwxy)).odd, ((VECTOR(uint32_t, 16))(upsample(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(l_840.s75)).yyyyxyxx)).s3214126406556123)), ((VECTOR(uint16_t, 2))(0x08BDL, 0xFFB8L)).xxyxxyxyxxyxxyyx))).hi))).s37)).yyxy)).zwzyyzxwwywzywxx, ((VECTOR(uint32_t, 16))(l_841.s63a292dbb364900e))))).s65c4, ((VECTOR(uint32_t, 2))(0x3BE97630L, 4294967295UL)).xyyx))).hi, ((VECTOR(uint32_t, 2))(9UL, 0x724B702AL))))), 0xE5CF3F5EL)), l_842[3], 7UL, 1UL)).lo, ((VECTOR(uint32_t, 16))(l_843.xwzwzwyyzzyxyzyz)).s3741))), 4294967287UL, l_844.y, 4294967294UL, ((VECTOR(uint32_t, 8))(4294967293UL, (l_694[2][3] = (l_845 , l_846[1])), 4294967295UL, l_847, ((VECTOR(uint32_t, 2))(0UL)), 0xF1049264L, 4294967295UL)), 4294967295UL)).s99fa, ((VECTOR(uint32_t, 4))(0xB47C330FL))))), 0x078EE49AL, 0UL)))))).sfa))), l_848, 0x446EB6BDL, 0x19FF2389L, 0x02B3FBE4L)).s3474623264171726, (uint32_t)l_849))).s1 , (void*)0);
                        (*l_819) &= l_852[0][3];
                    }
                    else
                    { /* block id: 462 */
                        VECTOR(int32_t, 8) l_853 = (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x16B9A9E6L), 0x16B9A9E6L), 0x16B9A9E6L, (-1L), 0x16B9A9E6L);
                        int32_t *l_854[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                        VECTOR(uint16_t, 4) l_855 = (VECTOR(uint16_t, 4))(0x1260L, (VECTOR(uint16_t, 2))(0x1260L, 0UL), 0UL);
                        int i;
                        (*l_820) = ((VECTOR(int32_t, 16))(l_853.s5355044220276742)).se;
                        l_819 = l_854[2];
                        --l_855.w;
                    }
                    l_820 = (void*)0;
                }
                else
                { /* block id: 468 */
                    int32_t l_858 = 0L;
                    int32_t l_864 = 0L;
                    uint16_t l_865[5];
                    int i;
                    for (i = 0; i < 5; i++)
                        l_865[i] = 65534UL;
                    for (l_858 = 9; (l_858 == 23); l_858++)
                    { /* block id: 471 */
                        int32_t l_861[9] = {0x3AAFF596L,0x74D93291L,0x3AAFF596L,0x3AAFF596L,0x74D93291L,0x3AAFF596L,0x3AAFF596L,0x74D93291L,0x3AAFF596L};
                        int64_t l_862[5];
                        uint32_t l_863 = 0x2F40F77FL;
                        int i;
                        for (i = 0; i < 5; i++)
                            l_862[i] = 0L;
                        (*l_820) &= l_861[6];
                        (*l_820) = (l_862[4] , (l_863 , (-7L)));
                    }
                    l_865[1]++;
                }
            }
            else
            { /* block id: 477 */
                VECTOR(int32_t, 2) l_868 = (VECTOR(int32_t, 2))(7L, 0x196EF37DL);
                int32_t *l_881 = (void*)0;
                int32_t *l_882 = (void*)0;
                int i;
                for (l_868.y = 0; (l_868.y <= 5); l_868.y = safe_add_func_uint16_t_u_u(l_868.y, 1))
                { /* block id: 480 */
                    uint16_t l_871 = 0xC8E3L;
                    uint32_t l_874 = 0xAD990F8EL;
                    int32_t l_877 = 0x5E9657DDL;
                    l_871--;
                    l_874--;
                    l_698 ^= l_877;
                }
                l_698 = 1L;
                for (l_868.x = 0; (l_868.x < 2); l_868.x = safe_add_func_uint32_t_u_u(l_868.x, 4))
                { /* block id: 488 */
                    uint16_t l_880 = 0xBD24L;
                    l_698 &= l_880;
                }
                l_882 = (l_881 = (void*)0);
            }
            l_884[1] = l_883;
            unsigned int result = 0;
            int l_678_i0;
            for (l_678_i0 = 0; l_678_i0 < 4; l_678_i0++) {
                result += l_678[l_678_i0];
            }
            result += l_679.y;
            result += l_679.x;
            result += l_680;
            result += l_681.w;
            result += l_681.z;
            result += l_681.y;
            result += l_681.x;
            result += l_682;
            result += l_683.w;
            result += l_683.z;
            result += l_683.y;
            result += l_683.x;
            result += l_684;
            result += l_685;
            result += l_686.y;
            result += l_686.x;
            result += l_687.s7;
            result += l_687.s6;
            result += l_687.s5;
            result += l_687.s4;
            result += l_687.s3;
            result += l_687.s2;
            result += l_687.s1;
            result += l_687.s0;
            result += l_688.w;
            result += l_688.z;
            result += l_688.y;
            result += l_688.x;
            result += l_689;
            result += l_690.w;
            result += l_690.z;
            result += l_690.y;
            result += l_690.x;
            result += l_691.s7;
            result += l_691.s6;
            result += l_691.s5;
            result += l_691.s4;
            result += l_691.s3;
            result += l_691.s2;
            result += l_691.s1;
            result += l_691.s0;
            int l_692_i0, l_692_i1, l_692_i2;
            for (l_692_i0 = 0; l_692_i0 < 10; l_692_i0++) {
                for (l_692_i1 = 0; l_692_i1 < 4; l_692_i1++) {
                    for (l_692_i2 = 0; l_692_i2 < 2; l_692_i2++) {
                        result += l_692[l_692_i0][l_692_i1][l_692_i2];
                    }
                }
            }
            result += l_693;
            int l_694_i0, l_694_i1;
            for (l_694_i0 = 0; l_694_i0 < 7; l_694_i0++) {
                for (l_694_i1 = 0; l_694_i1 < 8; l_694_i1++) {
                    result += l_694[l_694_i0][l_694_i1];
                }
            }
            result += l_695.y;
            result += l_695.x;
            result += l_696;
            result += l_697;
            result += l_698;
            int l_699_i0;
            for (l_699_i0 = 0; l_699_i0 < 8; l_699_i0++) {
                result += l_699[l_699_i0];
            }
            result += l_700;
            result += l_809;
            result += l_883;
            int l_884_i0;
            for (l_884_i0 = 0; l_884_i0 < 3; l_884_i0++) {
                result += l_884[l_884_i0];
            }
            atomic_add(&p_1367->g_special_values[31 * get_linear_group_id() + 22], result);
        }
        else
        { /* block id: 495 */
            (1 + 1);
        }
    }
    else
    { /* block id: 498 */
        int16_t *l_891[10] = {&p_1367->g_359[1],&p_1367->g_359[1],&p_1367->g_359[1],&p_1367->g_359[1],&p_1367->g_359[1],&p_1367->g_359[1],&p_1367->g_359[1],&p_1367->g_359[1],&p_1367->g_359[1],&p_1367->g_359[1]};
        int32_t l_892 = 0x635B7BB8L;
        uint64_t *l_894 = (void*)0;
        int32_t l_895 = 0x419EAD0EL;
        VECTOR(int8_t, 8) l_900 = (VECTOR(int8_t, 8))((-4L), (VECTOR(int8_t, 4))((-4L), (VECTOR(int8_t, 2))((-4L), 0x61L), 0x61L), 0x61L, (-4L), 0x61L);
        uint16_t *l_904[4];
        uint16_t **l_903 = &l_904[0];
        uint16_t **l_906 = &p_1367->g_905;
        uint32_t ****l_913 = (void*)0;
        uint32_t ****l_914 = &l_90;
        int16_t **l_929 = &l_891[4];
        int16_t ***l_928 = &l_929;
        int64_t *l_934 = (void*)0;
        int64_t *l_935[4][8] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
        VECTOR(int32_t, 8) l_936 = (VECTOR(int32_t, 8))(8L, (VECTOR(int32_t, 4))(8L, (VECTOR(int32_t, 2))(8L, (-10L)), (-10L)), (-10L), 8L, (-10L));
        uint32_t l_937 = 1UL;
        int32_t *l_938[3][6] = {{&l_97,&l_97,&l_97,&l_97,&l_97,&l_97},{&l_97,&l_97,&l_97,&l_97,&l_97,&l_97},{&l_97,&l_97,&l_97,&l_97,&l_97,&l_97}};
        int32_t l_944 = 1L;
        int i, j;
        for (i = 0; i < 4; i++)
            l_904[i] = (void*)0;
        (*l_674) |= ((safe_div_func_int16_t_s_s((safe_rshift_func_uint8_t_u_s(FAKE_DIVERGE(p_1367->group_1_offset, get_group_id(1), 10), p_55)), (safe_lshift_func_uint16_t_u_s(((void*)0 != (*l_667)), (p_1367->g_95[0] < (l_892 ^= p_56)))))) == (l_893[5] != l_894));
        l_892 = ((p_57 , l_895) & (safe_unary_minus_func_uint32_t_u((safe_mul_func_uint8_t_u_u((((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(p_1367->g_899.s4f)), (-1L), 0x3A64L)).x >= FAKE_DIVERGE(p_1367->global_2_offset, get_global_id(2), 10)), ((VECTOR(uint8_t, 4))(add_sat(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(abs(((VECTOR(int8_t, 2))(l_900.s16))))), 0x9BL, 0xE6L)).even)).yxyy, ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 16))(((safe_rshift_func_int8_t_s_u((((*p_1367->g_7) , ((((*l_903) = l_891[8]) != ((*l_906) = p_1367->g_905)) ^ ((((*l_674) = (safe_mul_func_int16_t_s_s(((((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 8))(p_1367->g_909.xxxxxxyy)).even)).w | (safe_add_func_int64_t_s_s(p_1367->g_606.y, ((p_1367->g_912 = &p_1367->g_309) != ((*l_914) = &p_1367->g_309))))) < 0x10986199729D75D3L), 6UL))) > l_900.s6) < (*p_1367->g_7)))) < FAKE_DIVERGE(p_1367->local_0_offset, get_local_id(0), 10)), l_892)) == FAKE_DIVERGE(p_1367->global_1_offset, get_global_id(1), 10)), p_57, 0x18L, 0xB5L, 247UL, 0xB5L, 0xA3L, ((VECTOR(uint8_t, 4))(255UL)), ((VECTOR(uint8_t, 2))(0x1DL)), 0x73L, 0x9AL, 250UL)).odd)).odd))).w)))));
        (*l_674) |= (((safe_sub_func_int64_t_s_s(((VECTOR(int64_t, 16))((p_1367->g_344[0] = ((safe_rshift_func_int16_t_s_u((l_936.s7 ^= (p_1367->g_606.y |= (safe_div_func_uint16_t_u_u((safe_rshift_func_int8_t_s_u(((safe_lshift_func_uint16_t_u_u((safe_mul_func_uint16_t_u_u(((((p_57 , ((&l_96 != (void*)0) == (l_927 != (l_928 = (void*)0)))) , (safe_div_func_int64_t_s_s(((((p_1367->g_670.x = ((~(safe_sub_func_uint64_t_u_u(p_56, l_895))) != (p_55 || p_56))) < 0xCE880CEF46B9AB93L) > GROUP_DIVERGE(1, 1)) <= l_892), p_1367->g_354.y))) || 0x54L) || p_55), l_895)), 7)) , 9L), 2)), 0x203EL)))), FAKE_DIVERGE(p_1367->local_2_offset, get_local_id(2), 10))) >= 0x43L)), (-1L), ((VECTOR(int64_t, 8))((-5L))), ((VECTOR(int64_t, 4))(0x091EB7D4EDEB3711L)), 1L, 0L)).s4, l_892)) || l_937) , 0x56C2E7A5L);
        l_951--;
    }
    (*l_674) = (*p_1367->g_7);
    return (**p_58);
}


/* ------------------------------------------ */
/* 
 * reads : p_1367->g_272 p_1367->g_7 p_1367->g_8 p_1367->g_95 p_1367->g_279 p_1367->g_82 p_1367->g_41 p_1367->g_51 p_1367->g_47 p_1367->g_60 p_1367->g_309 p_1367->g_315 p_1367->g_84 p_1367->g_320 p_1367->g_326 p_1367->g_344 p_1367->g_354 p_1367->g_373 p_1367->g_359 p_1367->g_424 p_1367->g_455 p_1367->g_449 p_1367->g_448 p_1367->g_comm_values p_1367->g_476 p_1367->g_551 p_1367->g_499 p_1367->g_620 p_1367->g_612 p_1367->g_44 p_1367->g_661 p_1367->g_506
 * writes: p_1367->g_82 p_1367->g_60 p_1367->g_309 p_1367->g_315 p_1367->g_326 p_1367->g_344 p_1367->g_359 p_1367->g_84 p_1367->g_272 p_1367->g_320 p_1367->g_424 p_1367->g_373 p_1367->g_455 p_1367->g_279 p_1367->g_506 p_1367->g_449 p_1367->g_95 p_1367->g_661 p_1367->g_619 p_1367->g_489 p_1367->g_620 p_1367->g_47 p_1367->g_664
 */
uint32_t ** func_63(int8_t  p_64, uint32_t  p_65, int32_t * p_66, int8_t  p_67, struct S1 * p_1367)
{ /* block id: 34 */
    VECTOR(int16_t, 16) l_266 = (VECTOR(int16_t, 16))(0x525DL, (VECTOR(int16_t, 4))(0x525DL, (VECTOR(int16_t, 2))(0x525DL, 0L), 0L), 0L, 0x525DL, 0L, (VECTOR(int16_t, 2))(0x525DL, 0L), (VECTOR(int16_t, 2))(0x525DL, 0L), 0x525DL, 0L, 0x525DL, 0L);
    VECTOR(uint16_t, 4) l_271 = (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0UL), 0UL);
    VECTOR(uint16_t, 8) l_273 = (VECTOR(uint16_t, 8))(0xE906L, (VECTOR(uint16_t, 4))(0xE906L, (VECTOR(uint16_t, 2))(0xE906L, 0x7357L), 0x7357L), 0x7357L, 0xE906L, 0x7357L);
    int32_t **l_274 = &p_1367->g_7;
    VECTOR(int8_t, 8) l_277 = (VECTOR(int8_t, 8))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), (-1L)), (-1L)), (-1L), (-1L), (-1L));
    VECTOR(int8_t, 2) l_278 = (VECTOR(int8_t, 2))(0x0CL, 0x03L);
    VECTOR(int8_t, 8) l_280 = (VECTOR(int8_t, 8))(6L, (VECTOR(int8_t, 4))(6L, (VECTOR(int8_t, 2))(6L, 8L), 8L), 8L, 6L, 8L);
    VECTOR(int8_t, 16) l_281 = (VECTOR(int8_t, 16))(0x1FL, (VECTOR(int8_t, 4))(0x1FL, (VECTOR(int8_t, 2))(0x1FL, 0L), 0L), 0L, 0x1FL, 0L, (VECTOR(int8_t, 2))(0x1FL, 0L), (VECTOR(int8_t, 2))(0x1FL, 0L), 0x1FL, 0L, 0x1FL, 0L);
    VECTOR(int8_t, 4) l_282 = (VECTOR(int8_t, 4))(0x0EL, (VECTOR(int8_t, 2))(0x0EL, (-10L)), (-10L));
    VECTOR(int8_t, 16) l_283 = (VECTOR(int8_t, 16))(0x4AL, (VECTOR(int8_t, 4))(0x4AL, (VECTOR(int8_t, 2))(0x4AL, 0L), 0L), 0L, 0x4AL, 0L, (VECTOR(int8_t, 2))(0x4AL, 0L), (VECTOR(int8_t, 2))(0x4AL, 0L), 0x4AL, 0L, 0x4AL, 0L);
    int8_t *l_284 = (void*)0;
    int8_t *l_285[7] = {(void*)0,&p_1367->g_82,(void*)0,(void*)0,&p_1367->g_82,(void*)0,(void*)0};
    int32_t l_286 = 0x7A8FD81BL;
    uint32_t l_287 = 2UL;
    VECTOR(uint64_t, 16) l_302 = (VECTOR(uint64_t, 16))(0UL, (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 0xB1B6B8CC406B1899L), 0xB1B6B8CC406B1899L), 0xB1B6B8CC406B1899L, 0UL, 0xB1B6B8CC406B1899L, (VECTOR(uint64_t, 2))(0UL, 0xB1B6B8CC406B1899L), (VECTOR(uint64_t, 2))(0UL, 0xB1B6B8CC406B1899L), 0UL, 0xB1B6B8CC406B1899L, 0UL, 0xB1B6B8CC406B1899L);
    uint32_t ***l_342 = &p_1367->g_309;
    uint16_t l_366 = 1UL;
    uint16_t l_369 = 0x7399L;
    int32_t *l_381[9] = {&p_1367->g_8,&p_1367->g_8,&p_1367->g_8,&p_1367->g_8,&p_1367->g_8,&p_1367->g_8,&p_1367->g_8,&p_1367->g_8,&p_1367->g_8};
    int16_t *l_386 = (void*)0;
    int16_t **l_385 = &l_386;
    VECTOR(int16_t, 2) l_407 = (VECTOR(int16_t, 2))(8L, (-3L));
    int32_t l_416 = 0x73DF8534L;
    uint8_t *l_427 = &p_1367->g_315;
    uint8_t **l_426 = &l_427;
    uint16_t l_442 = 1UL;
    int16_t *l_453 = (void*)0;
    int16_t *l_454 = (void*)0;
    VECTOR(int8_t, 4) l_466 = (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 8L), 8L);
    VECTOR(int8_t, 2) l_473 = (VECTOR(int8_t, 2))(0x0DL, 0x48L);
    uint64_t l_584[8] = {0x03016E96F683429EL,0x03016E96F683429EL,0x03016E96F683429EL,0x03016E96F683429EL,0x03016E96F683429EL,0x03016E96F683429EL,0x03016E96F683429EL,0x03016E96F683429EL};
    VECTOR(uint64_t, 8) l_594 = (VECTOR(uint64_t, 8))(18446744073709551611UL, (VECTOR(uint64_t, 4))(18446744073709551611UL, (VECTOR(uint64_t, 2))(18446744073709551611UL, 0xF295A194BE84DF82L), 0xF295A194BE84DF82L), 0xF295A194BE84DF82L, 18446744073709551611UL, 0xF295A194BE84DF82L);
    int16_t ***l_658 = &l_385;
    uint8_t ***l_662 = &p_1367->g_661[5];
    uint16_t l_663 = 65528UL;
    int i;
    if ((atomic_inc(&p_1367->g_atomic_input[31 * get_linear_group_id() + 28]) == 8))
    { /* block id: 36 */
        int64_t l_98 = (-4L);
        VECTOR(uint64_t, 8) l_238 = (VECTOR(uint64_t, 8))(0xC59ECB9753820251L, (VECTOR(uint64_t, 4))(0xC59ECB9753820251L, (VECTOR(uint64_t, 2))(0xC59ECB9753820251L, 0x007968B85D11EB61L), 0x007968B85D11EB61L), 0x007968B85D11EB61L, 0xC59ECB9753820251L, 0x007968B85D11EB61L);
        VECTOR(int32_t, 16) l_239 = (VECTOR(int32_t, 16))(0x4C90E365L, (VECTOR(int32_t, 4))(0x4C90E365L, (VECTOR(int32_t, 2))(0x4C90E365L, 0x0F3B8830L), 0x0F3B8830L), 0x0F3B8830L, 0x4C90E365L, 0x0F3B8830L, (VECTOR(int32_t, 2))(0x4C90E365L, 0x0F3B8830L), (VECTOR(int32_t, 2))(0x4C90E365L, 0x0F3B8830L), 0x4C90E365L, 0x0F3B8830L, 0x4C90E365L, 0x0F3B8830L);
        int32_t l_240 = 0x105E24F5L;
        int i;
        if ((l_98 = 0x4FE46DA0L))
        { /* block id: 38 */
            uint16_t l_99 = 0xB14AL;
            int32_t l_152 = 0x68C28246L;
            int16_t l_153 = 0x57D1L;
            if (l_99)
            { /* block id: 39 */
                uint16_t l_100 = 8UL;
                VECTOR(int32_t, 8) l_101 = (VECTOR(int32_t, 8))(8L, (VECTOR(int32_t, 4))(8L, (VECTOR(int32_t, 2))(8L, 1L), 1L), 1L, 8L, 1L);
                int32_t l_102 = 0L;
                VECTOR(int32_t, 4) l_103 = (VECTOR(int32_t, 4))(0x429592AEL, (VECTOR(int32_t, 2))(0x429592AEL, 0x5A398955L), 0x5A398955L);
                VECTOR(int32_t, 16) l_104 = (VECTOR(int32_t, 16))(0x192D0F56L, (VECTOR(int32_t, 4))(0x192D0F56L, (VECTOR(int32_t, 2))(0x192D0F56L, 0x2F72762BL), 0x2F72762BL), 0x2F72762BL, 0x192D0F56L, 0x2F72762BL, (VECTOR(int32_t, 2))(0x192D0F56L, 0x2F72762BL), (VECTOR(int32_t, 2))(0x192D0F56L, 0x2F72762BL), 0x192D0F56L, 0x2F72762BL, 0x192D0F56L, 0x2F72762BL);
                VECTOR(int32_t, 2) l_105 = (VECTOR(int32_t, 2))(0x1F9A2085L, 0x24A23C0FL);
                int32_t l_106 = (-6L);
                VECTOR(int32_t, 2) l_107 = (VECTOR(int32_t, 2))(0x41E63FD6L, 0x588D280DL);
                VECTOR(int32_t, 16) l_108 = (VECTOR(int32_t, 16))(0x60535321L, (VECTOR(int32_t, 4))(0x60535321L, (VECTOR(int32_t, 2))(0x60535321L, 4L), 4L), 4L, 0x60535321L, 4L, (VECTOR(int32_t, 2))(0x60535321L, 4L), (VECTOR(int32_t, 2))(0x60535321L, 4L), 0x60535321L, 4L, 0x60535321L, 4L);
                VECTOR(int32_t, 2) l_109 = (VECTOR(int32_t, 2))(0x2E07F6A7L, 9L);
                uint8_t l_110 = 0x16L;
                uint32_t l_111 = 4294967295UL;
                int32_t l_112 = 2L;
                uint32_t l_113 = 0UL;
                VECTOR(int32_t, 2) l_114 = (VECTOR(int32_t, 2))(0L, 0x7FDB7285L);
                uint32_t l_115[9][3] = {{8UL,4UL,6UL},{8UL,4UL,6UL},{8UL,4UL,6UL},{8UL,4UL,6UL},{8UL,4UL,6UL},{8UL,4UL,6UL},{8UL,4UL,6UL},{8UL,4UL,6UL},{8UL,4UL,6UL}};
                uint8_t l_116 = 248UL;
                uint64_t l_117 = 1UL;
                uint8_t l_134 = 0x8FL;
                int i, j;
                l_102 |= ((l_100 ^= 0x1F637114L) , ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(l_101.s6635104116505466)))).s3);
                l_117 &= ((VECTOR(int32_t, 4))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 4))(l_103.yxwy)), ((VECTOR(int32_t, 2))(mad_sat(((VECTOR(int32_t, 2))(l_104.s6c)), ((VECTOR(int32_t, 16))(1L, 3L, (-3L), ((VECTOR(int32_t, 4))(l_105.xxyy)), 1L, (l_106 , ((VECTOR(int32_t, 4))(0x6197FD74L, ((VECTOR(int32_t, 2))(max(((VECTOR(int32_t, 2))(l_107.xy)), (int32_t)((VECTOR(int32_t, 2))(l_108.s3f)).lo))), 1L)).y), ((VECTOR(int32_t, 4))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(mul_hi(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(l_109.xx)))).yyyxyxxy)).s53)).yyyxxyyxxyyyxxxx, ((VECTOR(int32_t, 8))(0x730FA287L, ((l_110 , l_111) , l_112), (l_116 &= ((VECTOR(int32_t, 4))(l_113, ((VECTOR(int32_t, 16))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 2))(l_114.xx)).xxxxyxxyyyyxxxxx, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(0x6E4EE9DAL, 0x346CB947L, l_115[7][0], ((VECTOR(int32_t, 4))(5L, 0x4353B009L, (-4L), 0x1B59B1E0L)), 0x07259F99L)).odd)).zxywyzyyxyywwyzy, ((VECTOR(int32_t, 8))(0x0AA1209AL, ((VECTOR(int32_t, 2))(0x1383E184L)), ((VECTOR(int32_t, 4))((-6L))), 0x38C19694L)).s3013664237543736))).s4, 1L, 0x29FF954DL)).x), ((VECTOR(int32_t, 4))(1L)), 1L)).s4026625062640611))).odd)).odd, ((VECTOR(int32_t, 4))((-1L))), ((VECTOR(int32_t, 4))((-3L)))))), 0x79B9B320L, 1L, (-1L))).sc4, ((VECTOR(int32_t, 2))(0x382127F5L))))).xyxy, ((VECTOR(int32_t, 4))(9L))))).x;
                for (l_116 = 10; (l_116 > 12); l_116 = safe_add_func_uint64_t_u_u(l_116, 5))
                { /* block id: 46 */
                    int32_t l_120 = 0x35AB6CACL;
                    int32_t *l_124 = &l_120;
                    int32_t *l_125[9] = {&l_120,&l_120,&l_120,&l_120,&l_120,&l_120,&l_120,&l_120,&l_120};
                    int i;
                    for (l_120 = 0; (l_120 < (-6)); l_120--)
                    { /* block id: 49 */
                        int8_t l_123[8][1] = {{(-4L)},{(-4L)},{(-4L)},{(-4L)},{(-4L)},{(-4L)},{(-4L)},{(-4L)}};
                        int i, j;
                        l_101.s7 = (((VECTOR(uint8_t, 2))(0xBCL, 0x54L)).hi , l_123[7][0]);
                    }
                    l_125[3] = l_124;
                    l_109.y |= 0L;
                    for (l_120 = 0; (l_120 != 8); ++l_120)
                    { /* block id: 56 */
                        int32_t l_128 = 0x1C06A483L;
                        uint32_t l_129 = 4294967295UL;
                        int8_t l_130[8] = {0L,0L,0L,0L,0L,0L,0L,0L};
                        uint32_t l_131 = 1UL;
                        int i;
                        l_129 = (l_128 = l_128);
                        --l_131;
                        l_128 = 0x256C2D0CL;
                    }
                }
                if (l_134)
                { /* block id: 63 */
                    VECTOR(int8_t, 4) l_135 = (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 5L), 5L);
                    int32_t l_136 = (-1L);
                    uint32_t l_137 = 0x17292063L;
                    uint64_t l_140 = 0UL;
                    int i;
                    ++l_137;
                    ++l_140;
                }
                else
                { /* block id: 66 */
                    VECTOR(int8_t, 8) l_143 = (VECTOR(int8_t, 8))((-6L), (VECTOR(int8_t, 4))((-6L), (VECTOR(int8_t, 2))((-6L), 0x51L), 0x51L), 0x51L, (-6L), 0x51L);
                    int32_t l_144 = 0x03A0B3D9L;
                    int32_t l_145[8][8] = {{0L,0x75F1DF6FL,0x75F1DF6FL,0L,0x641880D0L,0x59DF16FFL,0x456AEA00L,0x7154065CL},{0L,0x75F1DF6FL,0x75F1DF6FL,0L,0x641880D0L,0x59DF16FFL,0x456AEA00L,0x7154065CL},{0L,0x75F1DF6FL,0x75F1DF6FL,0L,0x641880D0L,0x59DF16FFL,0x456AEA00L,0x7154065CL},{0L,0x75F1DF6FL,0x75F1DF6FL,0L,0x641880D0L,0x59DF16FFL,0x456AEA00L,0x7154065CL},{0L,0x75F1DF6FL,0x75F1DF6FL,0L,0x641880D0L,0x59DF16FFL,0x456AEA00L,0x7154065CL},{0L,0x75F1DF6FL,0x75F1DF6FL,0L,0x641880D0L,0x59DF16FFL,0x456AEA00L,0x7154065CL},{0L,0x75F1DF6FL,0x75F1DF6FL,0L,0x641880D0L,0x59DF16FFL,0x456AEA00L,0x7154065CL},{0L,0x75F1DF6FL,0x75F1DF6FL,0L,0x641880D0L,0x59DF16FFL,0x456AEA00L,0x7154065CL}};
                    int16_t l_146 = 0x754CL;
                    int i, j;
                    l_144 = l_143.s3;
                    l_146 |= l_145[4][1];
                    for (l_144 = 0; (l_144 > 5); l_144 = safe_add_func_uint32_t_u_u(l_144, 8))
                    { /* block id: 71 */
                        int32_t l_149 = (-10L);
                        l_108.s9 ^= l_149;
                        l_108.s0 |= 0x5E9BBC17L;
                    }
                }
            }
            else
            { /* block id: 76 */
                int8_t l_150 = 0x00L;
                int64_t l_151 = 6L;
                l_151 &= l_150;
            }
            if ((l_152 , l_153))
            { /* block id: 79 */
                uint64_t l_154 = 1UL;
                int32_t l_156 = 0x4B8878B8L;
                int32_t *l_155 = &l_156;
                int32_t l_157 = 0x2307A3C1L;
                l_152 |= l_154;
                l_155 = l_155;
                if (l_157)
                { /* block id: 82 */
                    int16_t l_158 = 0x3E2EL;
                    uint16_t l_159 = 65533UL;
                    uint64_t l_167 = 1UL;
                    uint32_t l_170 = 0UL;
                    l_159--;
                    for (l_158 = 0; (l_158 < (-28)); l_158 = safe_sub_func_int8_t_s_s(l_158, 4))
                    { /* block id: 86 */
                        int32_t l_165 = (-1L);
                        int32_t *l_164 = &l_165;
                        int32_t *l_166 = &l_165;
                        l_155 = l_164;
                        l_155 = l_166;
                    }
                    --l_167;
                    ++l_170;
                }
                else
                { /* block id: 92 */
                    uint64_t l_179 = 0x1E8DB3A87BABE7F2L;
                    VECTOR(int32_t, 2) l_187 = (VECTOR(int32_t, 2))((-9L), 0L);
                    int i;
                    if (((*l_155) = (-1L)))
                    { /* block id: 94 */
                        int32_t l_174 = 0L;
                        int32_t *l_173 = &l_174;
                        uint32_t l_175[1];
                        int i;
                        for (i = 0; i < 1; i++)
                            l_175[i] = 0UL;
                        l_155 = l_173;
                        ++l_175[0];
                        (*l_155) = (-1L);
                        (*l_155) = 5L;
                    }
                    else
                    { /* block id: 99 */
                        uint8_t l_178 = 1UL;
                        (*l_155) |= ((l_178 = (l_153 = 9L)) , 0x2EE789F3L);
                    }
                    l_179--;
                    for (l_179 = (-20); (l_179 == 42); ++l_179)
                    { /* block id: 107 */
                        int32_t l_184 = 0x7845B2E7L;
                        int32_t l_186 = 0x55C270F0L;
                        int32_t *l_185 = &l_186;
                        l_156 ^= (l_184 = ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(0x23D7B41EL, (-9L), 0x064898B4L, 0x34561C01L)).odd)).hi);
                        l_155 = (void*)0;
                        l_185 = (void*)0;
                    }
                    l_187.y = ((VECTOR(int32_t, 4))(l_187.xyyy)).z;
                }
            }
            else
            { /* block id: 115 */
                int32_t l_188 = 0x32648B24L;
                for (l_188 = 0; (l_188 < 27); l_188 = safe_add_func_int16_t_s_s(l_188, 4))
                { /* block id: 118 */
                    int32_t l_191[10][7] = {{6L,6L,0L,3L,(-4L),3L,0L},{6L,6L,0L,3L,(-4L),3L,0L},{6L,6L,0L,3L,(-4L),3L,0L},{6L,6L,0L,3L,(-4L),3L,0L},{6L,6L,0L,3L,(-4L),3L,0L},{6L,6L,0L,3L,(-4L),3L,0L},{6L,6L,0L,3L,(-4L),3L,0L},{6L,6L,0L,3L,(-4L),3L,0L},{6L,6L,0L,3L,(-4L),3L,0L},{6L,6L,0L,3L,(-4L),3L,0L}};
                    int i, j;
                    for (l_191[4][1] = 0; (l_191[4][1] < 18); l_191[4][1] = safe_add_func_int8_t_s_s(l_191[4][1], 9))
                    { /* block id: 121 */
                        VECTOR(int64_t, 16) l_194 = (VECTOR(int64_t, 16))((-10L), (VECTOR(int64_t, 4))((-10L), (VECTOR(int64_t, 2))((-10L), 0x22C960B144EC0A88L), 0x22C960B144EC0A88L), 0x22C960B144EC0A88L, (-10L), 0x22C960B144EC0A88L, (VECTOR(int64_t, 2))((-10L), 0x22C960B144EC0A88L), (VECTOR(int64_t, 2))((-10L), 0x22C960B144EC0A88L), (-10L), 0x22C960B144EC0A88L, (-10L), 0x22C960B144EC0A88L);
                        VECTOR(int64_t, 4) l_195 = (VECTOR(int64_t, 4))((-6L), (VECTOR(int64_t, 2))((-6L), (-8L)), (-8L));
                        VECTOR(int64_t, 4) l_196 = (VECTOR(int64_t, 4))(0x58BC3E6D6FF152E6L, (VECTOR(int64_t, 2))(0x58BC3E6D6FF152E6L, 0L), 0L);
                        VECTOR(int64_t, 2) l_197 = (VECTOR(int64_t, 2))(0L, 1L);
                        VECTOR(int64_t, 4) l_198 = (VECTOR(int64_t, 4))(0x3B4AA2B9E0A366A9L, (VECTOR(int64_t, 2))(0x3B4AA2B9E0A366A9L, 0x7880E97096A69D1AL), 0x7880E97096A69D1AL);
                        VECTOR(int64_t, 8) l_199 = (VECTOR(int64_t, 8))(0x7190DC9CCB98C823L, (VECTOR(int64_t, 4))(0x7190DC9CCB98C823L, (VECTOR(int64_t, 2))(0x7190DC9CCB98C823L, 6L), 6L), 6L, 0x7190DC9CCB98C823L, 6L);
                        uint32_t l_200 = 6UL;
                        int32_t l_201 = 0x66672165L;
                        uint32_t l_202 = 0x077A4E5EL;
                        VECTOR(int64_t, 4) l_203 = (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 0x023009E39CDA5918L), 0x023009E39CDA5918L);
                        VECTOR(int64_t, 8) l_204 = (VECTOR(int64_t, 8))(0x106E73B9E9AA08B8L, (VECTOR(int64_t, 4))(0x106E73B9E9AA08B8L, (VECTOR(int64_t, 2))(0x106E73B9E9AA08B8L, 7L), 7L), 7L, 0x106E73B9E9AA08B8L, 7L);
                        VECTOR(int64_t, 4) l_205 = (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, (-1L)), (-1L));
                        VECTOR(int64_t, 16) l_206 = (VECTOR(int64_t, 16))(6L, (VECTOR(int64_t, 4))(6L, (VECTOR(int64_t, 2))(6L, 1L), 1L), 1L, 6L, 1L, (VECTOR(int64_t, 2))(6L, 1L), (VECTOR(int64_t, 2))(6L, 1L), 6L, 1L, 6L, 1L);
                        VECTOR(int32_t, 4) l_207 = (VECTOR(int32_t, 4))(4L, (VECTOR(int32_t, 2))(4L, 0x525A9A46L), 0x525A9A46L);
                        VECTOR(int8_t, 2) l_208 = (VECTOR(int8_t, 2))(0x32L, 0x58L);
                        int64_t l_209 = (-9L);
                        int16_t l_210 = 0x5FB2L;
                        VECTOR(int32_t, 4) l_211 = (VECTOR(int32_t, 4))(3L, (VECTOR(int32_t, 2))(3L, 0x5BADE801L), 0x5BADE801L);
                        VECTOR(int32_t, 4) l_212 = (VECTOR(int32_t, 4))((-3L), (VECTOR(int32_t, 2))((-3L), 0x72E38145L), 0x72E38145L);
                        uint16_t l_213[6][2] = {{65534UL,0x0353L},{65534UL,0x0353L},{65534UL,0x0353L},{65534UL,0x0353L},{65534UL,0x0353L},{65534UL,0x0353L}};
                        VECTOR(int16_t, 2) l_214 = (VECTOR(int16_t, 2))((-6L), (-7L));
                        VECTOR(int16_t, 16) l_215 = (VECTOR(int16_t, 16))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, (-10L)), (-10L)), (-10L), 1L, (-10L), (VECTOR(int16_t, 2))(1L, (-10L)), (VECTOR(int16_t, 2))(1L, (-10L)), 1L, (-10L), 1L, (-10L));
                        uint32_t l_216 = 0xEA347EEFL;
                        uint8_t l_217 = 253UL;
                        VECTOR(uint16_t, 8) l_218 = (VECTOR(uint16_t, 8))(0x6E78L, (VECTOR(uint16_t, 4))(0x6E78L, (VECTOR(uint16_t, 2))(0x6E78L, 65528UL), 65528UL), 65528UL, 0x6E78L, 65528UL);
                        VECTOR(uint16_t, 8) l_219 = (VECTOR(uint16_t, 8))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0xA339L), 0xA339L), 0xA339L, 1UL, 0xA339L);
                        VECTOR(uint32_t, 2) l_220 = (VECTOR(uint32_t, 2))(0x8053AF33L, 0UL);
                        VECTOR(uint32_t, 2) l_221 = (VECTOR(uint32_t, 2))(0xC189D4E1L, 0x2445BC35L);
                        VECTOR(uint32_t, 2) l_222 = (VECTOR(uint32_t, 2))(0UL, 0xC0E92FD1L);
                        uint32_t l_223 = 0x1FDFA3FFL;
                        int16_t l_224 = 0x1735L;
                        int32_t l_225 = 0x4F74CC65L;
                        int64_t l_226 = (-10L);
                        int i, j;
                        l_152 ^= (((VECTOR(int64_t, 2))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 2),((VECTOR(int64_t, 2))(l_194.s28)), ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))(min(((VECTOR(int64_t, 2))(add_sat(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))(l_195.zywz)).xzyyxxzxzxwwyyyw)).sec, ((VECTOR(int64_t, 16))(l_196.yyzxxzzzyxzxyywx)).sda))), ((VECTOR(int64_t, 4))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 4),((VECTOR(int64_t, 4))(l_197.xyxx)), ((VECTOR(int64_t, 8))(l_198.wxxxwxyy)).hi, ((VECTOR(int64_t, 16))(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(min(((VECTOR(int64_t, 2))(l_199.s16)).xxxx, ((VECTOR(int64_t, 8))(rotate(((VECTOR(int64_t, 4))(mad_sat(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(add_sat(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 16))((-9L), l_200, (l_98 &= l_201), l_202, ((VECTOR(int64_t, 8))(max(((VECTOR(int64_t, 2))(0x4B6DA4907F26B115L, 0x5DE02A35B3A7F255L)).yxyxyyxy, (int64_t)((VECTOR(int64_t, 4))(l_203.wyxz)).y))), 9L, 0x2DD0DCD383C10CCCL, (-4L), 0x43CC302F6452D96CL)).s67)).xyxxyxyy)).s76, ((VECTOR(int64_t, 2))(mul_hi(((VECTOR(int64_t, 2))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 2),((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))(max(((VECTOR(int64_t, 16))(l_204.s1651577667072231)).s9a, ((VECTOR(int64_t, 4))(l_205.xzyx)).even))).xyyxyxxy)).s73, ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(l_206.s8d)).yyxx)).even)), ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 4))(mul_hi(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(safe_clamp_func(VECTOR(int64_t, 2),VECTOR(int64_t, 2),((VECTOR(int64_t, 16))(hadd(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 16))(upsample(((VECTOR(int32_t, 2))(l_207.wx)).yyyyyyxxyyxxxxxx, ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 16))((((((VECTOR(int8_t, 4))(l_208.xxyy)).y , l_209) , (((l_210 , (((VECTOR(int32_t, 4))(min(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(l_211.zwzwzxzzwxxwwyzy)))))).sc58a, (int32_t)((VECTOR(int32_t, 4))(l_212.zwzy)).x))).x , l_213[0][0])) , ((VECTOR(int16_t, 8))(rhadd(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(0L, 0x608BL)), 0x6CFDL, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 4))(rhadd(((VECTOR(int16_t, 16))(l_214.yyyxyxyxyxyxxyyx)).s9054, ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(1L, 0x6D99L)))).yxyy))).even)), (-6L), 2L)), 0L)), ((VECTOR(int16_t, 4))(l_215.s92be)).xxyxxzxw))).s6) , FAKE_DIVERGE(p_1367->group_1_offset, get_group_id(1), 10))) , (l_217 &= l_216)), ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 16))(add_sat(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(hadd(((VECTOR(uint32_t, 16))(rhadd(((VECTOR(uint32_t, 16))(mad_hi(((VECTOR(uint32_t, 2))(upsample(((VECTOR(uint16_t, 2))(l_218.s53)), ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(l_219.s74)).yxxyxyyy)).s51))).xxxxyyyxyyxyxxxx, ((VECTOR(uint32_t, 8))(0UL, ((VECTOR(uint32_t, 4))(l_220.xyyy)), 0x9C3896C7L, 0x449B7457L, 4294967295UL)).s2720612522702105, ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(l_221.yxxy)).xwwwzzzy)).s3204711604126500))), ((VECTOR(uint32_t, 8))(l_222.xxxyyyyy)).s3416000461442146))).sf0f6, ((VECTOR(uint32_t, 16))(0UL, 0xECE9AC76L, (l_223 = 4294967288UL), 0xE1A808AFL, ((VECTOR(uint32_t, 2))(2UL)), ((VECTOR(uint32_t, 2))(4294967295UL)), 0xD389A2BFL, 5UL, l_224, ((VECTOR(uint32_t, 2))(1UL)), ((VECTOR(uint32_t, 2))(0x4B4AAE86L)), 0x5E8E2E91L)).s72ec))).ywzzyxyw)).s1476151545434112, ((VECTOR(uint32_t, 16))(0UL))))).s0f4c)))).wxwxwzzx)), ((VECTOR(uint32_t, 2))(1UL)), ((VECTOR(uint32_t, 4))(9UL)), 6UL)).s42)).yyxxxyyy)).s40)).xyxyxxyyxxxxyyxx))).s86da)).zxyzzxzzwxwzwxzw, ((VECTOR(int64_t, 16))(0L))))).s4b, ((VECTOR(int64_t, 2))((-1L))), ((VECTOR(int64_t, 2))((-2L)))))).xxyx)), ((VECTOR(int64_t, 4))(0x0D58CC530642AA80L))))).even)), ((VECTOR(int64_t, 2))((-1L))), 0x76BE060827D36820L, ((VECTOR(int64_t, 2))(0x2FFB450AE0783CDBL)), (-1L))).s74))), ((VECTOR(int64_t, 2))(0x664603C1C094A489L)))))))), 0x2252D3EF6D6D97C5L, 0x41FA78DD7419F2FEL)))), ((VECTOR(int64_t, 4))(2L)), ((VECTOR(int64_t, 4))(0L))))).wzxywywy, ((VECTOR(int64_t, 8))((-1L)))))).lo))).wxxyyyzx)).s3351161155160262)).s0809))).odd))).xxyxxyyx)).s04, ((VECTOR(int64_t, 2))(0x4B1F678A6898C7DAL))))).hi , l_225);
                        l_152 ^= l_226;
                    }
                    for (l_191[4][1] = (-15); (l_191[4][1] > (-13)); l_191[4][1]++)
                    { /* block id: 130 */
                        uint32_t l_229 = 0xE2038526L;
                        l_152 = l_229;
                    }
                }
                for (l_188 = 0; (l_188 >= (-5)); l_188 = safe_sub_func_uint64_t_u_u(l_188, 6))
                { /* block id: 136 */
                    uint32_t l_232 = 0xC5308861L;
                    int32_t *l_233 = (void*)0;
                    int32_t l_235 = 0x549E8312L;
                    int32_t *l_234 = &l_235;
                    l_232 ^= (l_152 = 1L);
                    l_234 = l_233;
                }
            }
        }
        else
        { /* block id: 142 */
            VECTOR(int32_t, 16) l_236 = (VECTOR(int32_t, 16))(0x6A2FED3EL, (VECTOR(int32_t, 4))(0x6A2FED3EL, (VECTOR(int32_t, 2))(0x6A2FED3EL, 0x2C4D8774L), 0x2C4D8774L), 0x2C4D8774L, 0x6A2FED3EL, 0x2C4D8774L, (VECTOR(int32_t, 2))(0x6A2FED3EL, 0x2C4D8774L), (VECTOR(int32_t, 2))(0x6A2FED3EL, 0x2C4D8774L), 0x6A2FED3EL, 0x2C4D8774L, 0x6A2FED3EL, 0x2C4D8774L);
            uint64_t l_237 = 0UL;
            int i;
            l_237 = ((VECTOR(int32_t, 8))(l_236.s9283e141)).s1;
        }
        l_240 &= (((VECTOR(uint64_t, 8))(l_238.s00040513)).s6 , ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(l_239.s0e)))).hi);
        for (l_239.s2 = 20; (l_239.s2 > (-26)); l_239.s2 = safe_sub_func_uint64_t_u_u(l_239.s2, 1))
        { /* block id: 148 */
            VECTOR(uint32_t, 16) l_243 = (VECTOR(uint32_t, 16))(4294967288UL, (VECTOR(uint32_t, 4))(4294967288UL, (VECTOR(uint32_t, 2))(4294967288UL, 0x6244AF00L), 0x6244AF00L), 0x6244AF00L, 4294967288UL, 0x6244AF00L, (VECTOR(uint32_t, 2))(4294967288UL, 0x6244AF00L), (VECTOR(uint32_t, 2))(4294967288UL, 0x6244AF00L), 4294967288UL, 0x6244AF00L, 4294967288UL, 0x6244AF00L);
            uint8_t l_244 = 0x99L;
            uint32_t l_245[10] = {0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL};
            int i;
            if ((((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 4))(l_243.secb8)).lo)))).lo , (l_245[9] = (l_244 ^= 6L))))
            { /* block id: 151 */
                VECTOR(int16_t, 4) l_246 = (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x0B4DL), 0x0B4DL);
                uint32_t l_247[4] = {0UL,0UL,0UL,0UL};
                int8_t l_248 = 0x51L;
                VECTOR(int32_t, 16) l_249 = (VECTOR(int32_t, 16))(7L, (VECTOR(int32_t, 4))(7L, (VECTOR(int32_t, 2))(7L, (-3L)), (-3L)), (-3L), 7L, (-3L), (VECTOR(int32_t, 2))(7L, (-3L)), (VECTOR(int32_t, 2))(7L, (-3L)), 7L, (-3L), 7L, (-3L));
                VECTOR(int32_t, 2) l_250 = (VECTOR(int32_t, 2))((-1L), (-8L));
                uint32_t l_251 = 4294967294UL;
                uint64_t l_252 = 0x7E37214903B10FF5L;
                int32_t *l_253 = (void*)0;
                int32_t *l_254 = (void*)0;
                int i;
                l_247[1] = ((VECTOR(int32_t, 2))(upsample(((VECTOR(int16_t, 16))(l_246.xzzwzywzxxzzyzzx)).sf9, ((VECTOR(uint16_t, 2))(0UL, 7UL))))).lo;
                l_252 &= (l_248 , ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(add_sat(((VECTOR(int32_t, 8))(l_249.s81da031f)).lo, ((VECTOR(int32_t, 8))(l_250.yxyxyyyx)).odd))), (l_251 , 0x6431E086L), 0x4FC8D8B8L, 0x255EBF1CL, 0L)).s0);
                l_253 = (l_254 = l_253);
            }
            else
            { /* block id: 156 */
                int32_t l_256[5] = {1L,1L,1L,1L,1L};
                int32_t *l_255 = &l_256[2];
                int32_t *l_257[4][1] = {{&l_256[2]},{&l_256[2]},{&l_256[2]},{&l_256[2]}};
                int32_t *l_258 = &l_256[1];
                uint8_t l_259 = 0xA1L;
                int8_t l_260 = 0x53L;
                int32_t l_261[10][10][2] = {{{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L}},{{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L}},{{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L}},{{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L}},{{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L}},{{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L}},{{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L}},{{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L}},{{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L}},{{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L}}};
                int i, j, k;
                l_255 = (FAKE_DIVERGE(p_1367->group_1_offset, get_group_id(1), 10) , (l_258 = (l_257[1][0] = l_255)));
                l_259 = 0L;
                l_261[0][3][1] &= (l_260 |= 0x546F6AF2L);
            }
        }
        unsigned int result = 0;
        result += l_98;
        result += l_238.s7;
        result += l_238.s6;
        result += l_238.s5;
        result += l_238.s4;
        result += l_238.s3;
        result += l_238.s2;
        result += l_238.s1;
        result += l_238.s0;
        result += l_239.sf;
        result += l_239.se;
        result += l_239.sd;
        result += l_239.sc;
        result += l_239.sb;
        result += l_239.sa;
        result += l_239.s9;
        result += l_239.s8;
        result += l_239.s7;
        result += l_239.s6;
        result += l_239.s5;
        result += l_239.s4;
        result += l_239.s3;
        result += l_239.s2;
        result += l_239.s1;
        result += l_239.s0;
        result += l_240;
        atomic_add(&p_1367->g_special_values[31 * get_linear_group_id() + 28], result);
    }
    else
    { /* block id: 165 */
        (1 + 1);
    }
    if ((((!(safe_mod_func_uint16_t_u_u((((safe_lshift_func_int16_t_s_u(((VECTOR(int16_t, 2))(l_266.sab)).lo, FAKE_DIVERGE(p_1367->group_1_offset, get_group_id(1), 10))) , (safe_lshift_func_uint16_t_u_s(((p_64 < (GROUP_DIVERGE(1, 1) & ((safe_add_func_int32_t_s_s(((((((VECTOR(uint16_t, 16))(abs_diff(((VECTOR(uint16_t, 4))(mad_hi(((VECTOR(uint16_t, 2))(l_271.xz)).yxxy, ((VECTOR(uint16_t, 16))(p_1367->g_272.s1662256125414040)).sbe4a, ((VECTOR(uint16_t, 2))(0x8185L, 0xDB92L)).xxxy))).wwyzwxzzxwwwxxyx, ((VECTOR(uint16_t, 8))(l_273.s65325026)).s3272752344564322))).sc != l_273.s1) < ((*p_1367->g_7) <= (*p_1367->g_7))) , l_274) == &p_66), ((*p_66) = (safe_sub_func_int32_t_s_s((l_286 = (p_1367->g_95[0] >= ((p_1367->g_82 &= ((VECTOR(int8_t, 2))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 2),((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(rhadd(((VECTOR(int8_t, 8))(l_277.s03157313)).hi, ((VECTOR(int8_t, 8))(l_278.yyxxyxyy)).odd))).zxyywzwy)), ((VECTOR(int8_t, 2))(0x1BL, 0x67L)), ((VECTOR(int8_t, 2))(mul_hi(((VECTOR(int8_t, 8))(p_1367->g_279.s24375463)).s12, ((VECTOR(int8_t, 4))(l_280.s4515)).even))), ((VECTOR(int8_t, 4))(l_281.sa674)))).sea, ((VECTOR(int8_t, 16))(l_282.yxyzyzwwyxxyyxzx)).s06, ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(l_283.sc1)).xyyyxxyxxyxxxxyx)).s00))).even) <= p_1367->g_41))), ((~(l_287 , 0x458BBABF78FD94E1L)) == (**l_274))))))) && p_1367->g_51))) , 0UL), p_1367->g_47.se))) > p_65), p_1367->g_47.s1))) , (**l_274)) >= p_1367->g_95[0]))
    { /* block id: 171 */
        uint64_t l_288 = 1UL;
        int32_t *l_289[3];
        int i;
        for (i = 0; i < 3; i++)
            l_289[i] = (void*)0;
        l_286 ^= ((*p_66) |= (l_288 >= p_67));
    }
    else
    { /* block id: 174 */
        int32_t l_319 = (-1L);
        int32_t l_341 = 0L;
        VECTOR(uint8_t, 2) l_351 = (VECTOR(uint8_t, 2))(0x75L, 0UL);
        VECTOR(uint16_t, 8) l_355 = (VECTOR(uint16_t, 8))(9UL, (VECTOR(uint16_t, 4))(9UL, (VECTOR(uint16_t, 2))(9UL, 65535UL), 65535UL), 65535UL, 9UL, 65535UL);
        int64_t *l_356 = (void*)0;
        uint8_t *l_357 = &p_1367->g_315;
        uint32_t l_358[6] = {0x57659D26L,0x57659D26L,0x57659D26L,0x57659D26L,0x57659D26L,0x57659D26L};
        uint16_t *l_370[5];
        int32_t **l_382 = &l_381[4];
        int i;
        for (i = 0; i < 5; i++)
            l_370[i] = (void*)0;
        for (p_65 = 0; (p_65 == 39); ++p_65)
        { /* block id: 177 */
            uint32_t ***l_311 = &p_1367->g_309;
            uint8_t *l_314[6][8] = {{&p_1367->g_315,(void*)0,&p_1367->g_315,&p_1367->g_315,&p_1367->g_315,(void*)0,&p_1367->g_315,&p_1367->g_315},{&p_1367->g_315,(void*)0,&p_1367->g_315,&p_1367->g_315,&p_1367->g_315,(void*)0,&p_1367->g_315,&p_1367->g_315},{&p_1367->g_315,(void*)0,&p_1367->g_315,&p_1367->g_315,&p_1367->g_315,(void*)0,&p_1367->g_315,&p_1367->g_315},{&p_1367->g_315,(void*)0,&p_1367->g_315,&p_1367->g_315,&p_1367->g_315,(void*)0,&p_1367->g_315,&p_1367->g_315},{&p_1367->g_315,(void*)0,&p_1367->g_315,&p_1367->g_315,&p_1367->g_315,(void*)0,&p_1367->g_315,&p_1367->g_315},{&p_1367->g_315,(void*)0,&p_1367->g_315,&p_1367->g_315,&p_1367->g_315,(void*)0,&p_1367->g_315,&p_1367->g_315}};
            int32_t l_316 = 1L;
            int16_t *l_323 = (void*)0;
            int16_t *l_324 = (void*)0;
            int16_t *l_325[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            int32_t l_339 = 0x1E9F541CL;
            int8_t l_340 = 6L;
            int64_t *l_343 = &p_1367->g_344[0];
            int i, j;
            (*p_66) = (safe_rshift_func_int8_t_s_u((safe_rshift_func_uint8_t_u_s(0x94L, 3)), p_65));
            (*p_66) &= ((((safe_mul_func_uint8_t_u_u((((safe_sub_func_uint16_t_u_u((safe_rshift_func_uint8_t_u_u(p_65, 7)), ((p_64 &= ((-3L) & ((VECTOR(uint64_t, 4))(0UL, ((VECTOR(uint64_t, 2))(l_302.s52)), 0x47FDB5AEA7E32F0EL)).x)) || ((VECTOR(int8_t, 2))(1L, 0x4AL)).hi))) && (safe_sub_func_uint32_t_u_u(p_67, (safe_lshift_func_int16_t_s_s((safe_mul_func_int8_t_s_s((((*l_311) = p_1367->g_309) != &p_1367->g_310), 0x5DL)), (**l_274)))))) , (safe_mul_func_uint8_t_u_u((--p_1367->g_315), (0xDDADD1EAL != p_1367->g_84)))), p_1367->g_41)) < 1L) || l_319) , (-1L));
            (*p_66) |= p_1367->g_320;
            barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
            p_1367->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 54)), permutations[(safe_mod_func_uint32_t_u_u(((((*l_343) |= ((~(FAKE_DIVERGE(p_1367->global_2_offset, get_global_id(2), 10) <= (safe_rshift_func_uint8_t_u_u(((l_319 , &p_1367->g_309) != ((l_341 = ((p_1367->g_326 |= (l_316 != (+(p_1367->g_315 = ((void*)0 == &p_1367->g_7))))) && ((-10L) == ((0x897FB165L != ((!((safe_sub_func_int8_t_s_s(((p_67 = ((safe_lshift_func_int16_t_s_s((safe_mul_func_uint8_t_u_u((safe_rshift_func_uint16_t_u_s((((safe_lshift_func_int8_t_s_s((l_339 = (((safe_mod_func_uint16_t_u_u(p_67, l_319)) , p_64) >= 1L)), 1)) <= (**l_274)) && (*p_66)), 4)), p_67)), l_340)) ^ p_1367->g_315)) | GROUP_DIVERGE(1, 1)), p_64)) > (**l_274))) , (**l_274))) && 0UL)))) , l_342)), 7)))) , p_64)) ^ p_65) , 0xFC229446L), 10))][(safe_mod_func_uint32_t_u_u(p_1367->tid, 54))]));
        }
        (*p_66) = (safe_lshift_func_int8_t_s_u((((safe_lshift_func_int8_t_s_s((p_1367->g_84 = (p_64 >= (safe_div_func_uint64_t_u_u((l_351.y <= (p_1367->g_359[1] = (((*l_342) != (*l_342)) <= (0x44838C9CL == ((safe_sub_func_int64_t_s_s((((((*l_357) = (((0x3FA3B0DD65361546L < ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 8))(p_1367->g_354.yyxxxxyy)).s04)))).xyyy)).x) & ((VECTOR(uint16_t, 2))(min(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(abs(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(l_355.s3624)).zzxwwwwwzzwwxxyy)).s7d11))), 65532UL, 0x74E6L, 0x2C15L, 0UL)).s06, (uint16_t)((((void*)0 == l_356) <= (-9L)) >= (-7L))))).odd) >= 7L)) >= l_358[0]) == 1L) & 4L), p_64)) ^ p_1367->g_344[0]))))), 0xA3EA5012171F3E7FL)))), 5)) && l_351.x) | p_1367->g_326), 3));
        if ((9UL <= ((**l_274) ^ ((((*p_1367->g_7) == (*p_1367->g_7)) == (p_1367->g_272.s4 = (safe_div_func_uint16_t_u_u((FAKE_DIVERGE(p_1367->group_0_offset, get_group_id(0), 10) == (p_67 && ((safe_mul_func_int8_t_s_s((l_369 ^= (((safe_add_func_int32_t_s_s(((*p_66) |= (0L <= (p_64 > (p_1367->g_84 &= l_366)))), (safe_add_func_int8_t_s_s((p_1367->g_47.sd & (**l_274)), p_65)))) < p_1367->g_41) ^ FAKE_DIVERGE(p_1367->local_2_offset, get_local_id(2), 10))), FAKE_DIVERGE(p_1367->global_2_offset, get_global_id(2), 10))) , 0x81L))), 8UL)))) ^ (*p_1367->g_7)))))
        { /* block id: 202 */
            int32_t *l_371 = &l_341;
            VECTOR(uint16_t, 16) l_372 = (VECTOR(uint16_t, 16))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0x6337L), 0x6337L), 0x6337L, 0UL, 0x6337L, (VECTOR(uint16_t, 2))(0UL, 0x6337L), (VECTOR(uint16_t, 2))(0UL, 0x6337L), 0UL, 0x6337L, 0UL, 0x6337L);
            int i, j;
            (*l_371) ^= (*p_66);
            barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
            p_1367->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 54)), permutations[(safe_mod_func_uint32_t_u_u((l_355.s1 < ((VECTOR(uint16_t, 4))(rhadd(((VECTOR(uint16_t, 2))(l_372.sed)).xyxy, ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(p_1367->g_373.s1583)).xxxwzwxxzyzwxxyx)).s3665))).z), 10))][(safe_mod_func_uint32_t_u_u(p_1367->tid, 54))]));
            (*l_371) = 0x397CAD7FL;
            for (p_1367->g_320 = 0; (p_1367->g_320 >= 10); p_1367->g_320 = safe_add_func_uint16_t_u_u(p_1367->g_320, 3))
            { /* block id: 210 */
                int32_t **l_376[4];
                int i;
                for (i = 0; i < 4; i++)
                    l_376[i] = &l_371;
                l_376[3] = &p_66;
                if ((*l_371))
                    continue;
            }
        }
        else
        { /* block id: 214 */
            VECTOR(uint16_t, 16) l_379 = (VECTOR(uint16_t, 16))(8UL, (VECTOR(uint16_t, 4))(8UL, (VECTOR(uint16_t, 2))(8UL, 65535UL), 65535UL), 65535UL, 8UL, 65535UL, (VECTOR(uint16_t, 2))(8UL, 65535UL), (VECTOR(uint16_t, 2))(8UL, 65535UL), 8UL, 65535UL, 8UL, 65535UL);
            int32_t *l_380 = &l_341;
            int i;
            (*p_66) = (safe_mul_func_uint8_t_u_u(((l_355.s5 | ((VECTOR(uint16_t, 2))(l_379.s2b)).odd) , (+((~p_1367->g_344[0]) != 0L))), (**l_274)));
            l_381[4] = l_380;
        }
        (*l_382) = p_66;
    }
    for (l_369 = 0; (l_369 <= 3); l_369 = safe_add_func_uint8_t_u_u(l_369, 3))
    { /* block id: 222 */
        int16_t ***l_387[10][9][2] = {{{&l_385,&l_385},{&l_385,&l_385},{&l_385,&l_385},{&l_385,&l_385},{&l_385,&l_385},{&l_385,&l_385},{&l_385,&l_385},{&l_385,&l_385},{&l_385,&l_385}},{{&l_385,&l_385},{&l_385,&l_385},{&l_385,&l_385},{&l_385,&l_385},{&l_385,&l_385},{&l_385,&l_385},{&l_385,&l_385},{&l_385,&l_385},{&l_385,&l_385}},{{&l_385,&l_385},{&l_385,&l_385},{&l_385,&l_385},{&l_385,&l_385},{&l_385,&l_385},{&l_385,&l_385},{&l_385,&l_385},{&l_385,&l_385},{&l_385,&l_385}},{{&l_385,&l_385},{&l_385,&l_385},{&l_385,&l_385},{&l_385,&l_385},{&l_385,&l_385},{&l_385,&l_385},{&l_385,&l_385},{&l_385,&l_385},{&l_385,&l_385}},{{&l_385,&l_385},{&l_385,&l_385},{&l_385,&l_385},{&l_385,&l_385},{&l_385,&l_385},{&l_385,&l_385},{&l_385,&l_385},{&l_385,&l_385},{&l_385,&l_385}},{{&l_385,&l_385},{&l_385,&l_385},{&l_385,&l_385},{&l_385,&l_385},{&l_385,&l_385},{&l_385,&l_385},{&l_385,&l_385},{&l_385,&l_385},{&l_385,&l_385}},{{&l_385,&l_385},{&l_385,&l_385},{&l_385,&l_385},{&l_385,&l_385},{&l_385,&l_385},{&l_385,&l_385},{&l_385,&l_385},{&l_385,&l_385},{&l_385,&l_385}},{{&l_385,&l_385},{&l_385,&l_385},{&l_385,&l_385},{&l_385,&l_385},{&l_385,&l_385},{&l_385,&l_385},{&l_385,&l_385},{&l_385,&l_385},{&l_385,&l_385}},{{&l_385,&l_385},{&l_385,&l_385},{&l_385,&l_385},{&l_385,&l_385},{&l_385,&l_385},{&l_385,&l_385},{&l_385,&l_385},{&l_385,&l_385},{&l_385,&l_385}},{{&l_385,&l_385},{&l_385,&l_385},{&l_385,&l_385},{&l_385,&l_385},{&l_385,&l_385},{&l_385,&l_385},{&l_385,&l_385},{&l_385,&l_385},{&l_385,&l_385}}};
        int32_t l_396 = 1L;
        uint8_t **l_425[3];
        VECTOR(uint32_t, 8) l_450 = (VECTOR(uint32_t, 8))(0x2E58FA03L, (VECTOR(uint32_t, 4))(0x2E58FA03L, (VECTOR(uint32_t, 2))(0x2E58FA03L, 0x93F601CCL), 0x93F601CCL), 0x93F601CCL, 0x2E58FA03L, 0x93F601CCL);
        VECTOR(int8_t, 4) l_460 = (VECTOR(int8_t, 4))(3L, (VECTOR(int8_t, 2))(3L, 0x62L), 0x62L);
        VECTOR(int8_t, 8) l_470 = (VECTOR(int8_t, 8))(0x2CL, (VECTOR(int8_t, 4))(0x2CL, (VECTOR(int8_t, 2))(0x2CL, (-1L)), (-1L)), (-1L), 0x2CL, (-1L));
        VECTOR(int8_t, 8) l_474 = (VECTOR(int8_t, 8))((-2L), (VECTOR(int8_t, 4))((-2L), (VECTOR(int8_t, 2))((-2L), 0x45L), 0x45L), 0x45L, (-2L), 0x45L);
        VECTOR(int8_t, 4) l_475 = (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x4BL), 0x4BL);
        VECTOR(uint8_t, 8) l_496 = (VECTOR(uint8_t, 8))(0xA9L, (VECTOR(uint8_t, 4))(0xA9L, (VECTOR(uint8_t, 2))(0xA9L, 3UL), 3UL), 3UL, 0xA9L, 3UL);
        VECTOR(int64_t, 2) l_515 = (VECTOR(int64_t, 2))(0x067A28533DBDFC09L, 9L);
        uint64_t *l_543 = (void*)0;
        int8_t **l_560[4][3] = {{&l_285[1],&l_285[1],&l_285[1]},{&l_285[1],&l_285[1],&l_285[1]},{&l_285[1],&l_285[1],&l_285[1]},{&l_285[1],&l_285[1],&l_285[1]}};
        int32_t l_581 = 8L;
        int32_t l_582[2];
        VECTOR(uint64_t, 2) l_595 = (VECTOR(uint64_t, 2))(0x7E488B10890B29E4L, 0xAC4F8F9C657D68D3L);
        VECTOR(int16_t, 2) l_599 = (VECTOR(int16_t, 2))(0x63DFL, 9L);
        VECTOR(int16_t, 8) l_604 = (VECTOR(int16_t, 8))((-4L), (VECTOR(int16_t, 4))((-4L), (VECTOR(int16_t, 2))((-4L), 0L), 0L), 0L, (-4L), 0L);
        uint32_t **l_641 = &p_1367->g_310;
        uint16_t *l_645[9] = {&l_442,&l_442,&l_442,&l_442,&l_442,&l_442,&l_442,&l_442,&l_442};
        VECTOR(uint32_t, 2) l_648 = (VECTOR(uint32_t, 2))(8UL, 4294967286UL);
        uint32_t *l_649 = (void*)0;
        uint32_t *l_650[2];
        int8_t **l_654[1][10][6] = {{{(void*)0,&l_285[1],&l_285[1],(void*)0,(void*)0,&l_285[1]},{(void*)0,&l_285[1],&l_285[1],(void*)0,(void*)0,&l_285[1]},{(void*)0,&l_285[1],&l_285[1],(void*)0,(void*)0,&l_285[1]},{(void*)0,&l_285[1],&l_285[1],(void*)0,(void*)0,&l_285[1]},{(void*)0,&l_285[1],&l_285[1],(void*)0,(void*)0,&l_285[1]},{(void*)0,&l_285[1],&l_285[1],(void*)0,(void*)0,&l_285[1]},{(void*)0,&l_285[1],&l_285[1],(void*)0,(void*)0,&l_285[1]},{(void*)0,&l_285[1],&l_285[1],(void*)0,(void*)0,&l_285[1]},{(void*)0,&l_285[1],&l_285[1],(void*)0,(void*)0,&l_285[1]},{(void*)0,&l_285[1],&l_285[1],(void*)0,(void*)0,&l_285[1]}}};
        int i, j, k;
        for (i = 0; i < 3; i++)
            l_425[i] = (void*)0;
        for (i = 0; i < 2; i++)
            l_582[i] = 1L;
        for (i = 0; i < 2; i++)
            l_650[i] = (void*)0;
        l_385 = l_385;
        if ((safe_sub_func_int32_t_s_s((safe_sub_func_uint32_t_u_u(((((safe_mul_func_int8_t_s_s(((safe_rshift_func_int16_t_s_s((l_396 , (safe_mul_func_uint16_t_u_u((safe_lshift_func_int16_t_s_s(p_67, 6)), (((-9L) < (safe_mod_func_int16_t_s_s((safe_sub_func_int32_t_s_s((-3L), (safe_lshift_func_uint16_t_u_u(((*p_66) == (*p_66)), (((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))(l_407.xyyyyxxx)).s76)).odd || (((safe_add_func_uint8_t_u_u((!(safe_rshift_func_int8_t_s_s(0L, (safe_mod_func_int32_t_s_s((-7L), ((safe_mod_func_uint16_t_u_u(0x6B50L, 7UL)) , FAKE_DIVERGE(p_1367->group_0_offset, get_group_id(0), 10))))))), p_1367->g_47.sd)) , p_1367->g_84) , (**l_274))))))), (-4L)))) != (*p_1367->g_7))))), 14)) <= (*p_66)), p_1367->g_41)) , l_416) , (**l_274)) == p_65), FAKE_DIVERGE(p_1367->global_1_offset, get_global_id(1), 10))), p_1367->g_326)))
        { /* block id: 224 */
            uint32_t l_417 = 0x61B88068L;
            --l_417;
        }
        else
        { /* block id: 226 */
            VECTOR(int32_t, 4) l_430 = (VECTOR(int32_t, 4))(0x664853EBL, (VECTOR(int32_t, 2))(0x664853EBL, (-9L)), (-9L));
            int16_t ***l_433[2][4] = {{&l_385,&l_385,&l_385,&l_385},{&l_385,&l_385,&l_385,&l_385}};
            int32_t *l_451 = &l_396;
            VECTOR(int16_t, 8) l_513 = (VECTOR(int16_t, 8))(0x30DFL, (VECTOR(int16_t, 4))(0x30DFL, (VECTOR(int16_t, 2))(0x30DFL, 0x2F36L), 0x2F36L), 0x2F36L, 0x30DFL, 0x2F36L);
            VECTOR(int32_t, 16) l_598 = (VECTOR(int32_t, 16))(0x7247815FL, (VECTOR(int32_t, 4))(0x7247815FL, (VECTOR(int32_t, 2))(0x7247815FL, 9L), 9L), 9L, 0x7247815FL, 9L, (VECTOR(int32_t, 2))(0x7247815FL, 9L), (VECTOR(int32_t, 2))(0x7247815FL, 9L), 0x7247815FL, 9L, 0x7247815FL, 9L);
            VECTOR(int16_t, 2) l_603 = (VECTOR(int16_t, 2))((-10L), 1L);
            int i, j;
            for (p_1367->g_82 = 0; (p_1367->g_82 > 22); ++p_1367->g_82)
            { /* block id: 229 */
                uint32_t l_437 = 4294967295UL;
                int32_t l_441[5][3] = {{(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L)}};
                VECTOR(uint16_t, 4) l_447 = (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0UL), 0UL);
                int i, j;
                for (l_366 = (-24); (l_366 > 54); l_366 = safe_add_func_int16_t_s_s(l_366, 5))
                { /* block id: 232 */
                    if ((*p_1367->g_7))
                        break;
                }
                p_1367->g_424 = &p_1367->g_8;
                l_426 = l_425[1];
                for (p_1367->g_60 = 0; (p_1367->g_60 <= 14); p_1367->g_60++)
                { /* block id: 239 */
                    uint16_t *l_436[10][5] = {{&l_366,&l_366,&l_366,&l_366,&l_366},{&l_366,&l_366,&l_366,&l_366,&l_366},{&l_366,&l_366,&l_366,&l_366,&l_366},{&l_366,&l_366,&l_366,&l_366,&l_366},{&l_366,&l_366,&l_366,&l_366,&l_366},{&l_366,&l_366,&l_366,&l_366,&l_366},{&l_366,&l_366,&l_366,&l_366,&l_366},{&l_366,&l_366,&l_366,&l_366,&l_366},{&l_366,&l_366,&l_366,&l_366,&l_366},{&l_366,&l_366,&l_366,&l_366,&l_366}};
                    int32_t l_438 = (-8L);
                    int32_t **l_452 = &l_451;
                    int i, j;
                    if ((((p_1367->g_359[1] | (p_1367->g_279.s5 && ((VECTOR(uint16_t, 4))(0x8702L, p_67, 0x0301L, 0x84A8L)).x)) && ((*p_66) , (((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(l_430.zx)).yxyyxxyyyxxyyxxy)).sc4)).even < (*p_1367->g_424)))) | (((p_1367->g_373.se = (safe_mod_func_int16_t_s_s(((((l_433[0][3] == (void*)0) != l_430.y) | (((VECTOR(int16_t, 8))(rhadd(((VECTOR(int16_t, 16))((safe_mod_func_uint64_t_u_u(18446744073709551609UL, p_1367->g_320)), 0L, ((VECTOR(int16_t, 8))(4L)), ((VECTOR(int16_t, 2))(0x1739L)), 0x629CL, ((VECTOR(int16_t, 2))(0x3CF3L)), 0x5EC0L)).lo, ((VECTOR(int16_t, 8))(0x06C6L))))).s6 ^ 0x79BEL)) != p_64), p_65))) >= l_437) || l_438)))
                    { /* block id: 241 */
                        if ((*p_66))
                            break;
                    }
                    else
                    { /* block id: 243 */
                        int32_t l_439 = 2L;
                        int32_t l_440[5] = {(-4L),(-4L),(-4L),(-4L),(-4L)};
                        int i;
                        l_442--;
                    }
                    (*l_452) = ((safe_div_func_uint32_t_u_u(p_65, ((~((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 16))(4294967292UL, ((VECTOR(uint32_t, 8))(upsample(((VECTOR(uint16_t, 4))(l_447.wzww)).wywxxzwx, ((VECTOR(uint16_t, 8))(clz(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 16))(p_1367->g_448.s5ed650913ccff8fb)).even)), ((VECTOR(uint16_t, 2))(65535UL, 0xCCA3L)), 0x48C1L, ((VECTOR(uint16_t, 2))(p_1367->g_449.yy)), (p_1367->g_448.se = l_396), 0xAAE1L, 65535UL)).lo)))))), 0x7700B155L, 4294967289UL, l_396, ((VECTOR(uint32_t, 2))(l_450.s60)), 0x5A5AD025L, 8UL)).hi)).s6) , (*p_66)))) , l_451);
                    if ((*p_66))
                    { /* block id: 248 */
                        (*l_452) = (*l_452);
                    }
                    else
                    { /* block id: 250 */
                        return &p_1367->g_310;
                    }
                }
            }
            if (((((7UL > ((p_1367->g_455 ^= (0x2DCC1531L <= ((l_453 = ((*l_385) = (*l_385))) == (l_454 = &p_1367->g_359[4])))) , (safe_lshift_func_uint16_t_u_u((**l_274), 11)))) ^ (p_65 < (((safe_lshift_func_int8_t_s_u((&p_1367->g_68 != ((p_1367->g_279.s4 = (p_67 = p_67)) , &p_1367->g_68)), p_65)) , p_1367->g_449.x) && l_450.s0))) & p_65) || 0x05DCE6AF9DE39D09L))
            { /* block id: 261 */
                VECTOR(int8_t, 2) l_461 = (VECTOR(int8_t, 2))(0x5EL, (-6L));
                VECTOR(int8_t, 2) l_467 = (VECTOR(int8_t, 2))(0x19L, 6L);
                VECTOR(int8_t, 2) l_468 = (VECTOR(int8_t, 2))(6L, 0x51L);
                VECTOR(int8_t, 2) l_469 = (VECTOR(int8_t, 2))(4L, 0L);
                VECTOR(int8_t, 16) l_471 = (VECTOR(int8_t, 16))(6L, (VECTOR(int8_t, 4))(6L, (VECTOR(int8_t, 2))(6L, 6L), 6L), 6L, 6L, 6L, (VECTOR(int8_t, 2))(6L, 6L), (VECTOR(int8_t, 2))(6L, 6L), 6L, 6L, 6L, 6L);
                uint8_t **l_479 = &l_427;
                int i;
                (*p_66) ^= ((0x28L <= (((VECTOR(int8_t, 8))(add_sat(((VECTOR(int8_t, 2))(l_460.zx)).yxyxxyxx, ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(rotate(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(p_1367->g_84, ((VECTOR(int8_t, 8))(rhadd(((VECTOR(int8_t, 8))(l_461.xyxyxxyy)), ((VECTOR(int8_t, 2))((-1L), 0x5BL)).xxyxyxxy))).s7, ((*l_451) = ((safe_rshift_func_int8_t_s_s(p_1367->g_448.se, 2)) ^ ((&l_427 != &p_1367->g_68) ^ (safe_lshift_func_int8_t_s_u(((VECTOR(int8_t, 2))(l_466.wz)).odd, 7))))), l_450.s5, 0x16L, ((VECTOR(int8_t, 4))(l_467.xyxy)), 0L, (-6L), 0x55L, ((VECTOR(int8_t, 2))(mul_hi(((VECTOR(int8_t, 4))(1L, ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))(l_468.yxxxyyyxxyyyyxyy)).odd)).s4, 0x07L, 3L)).lo, ((VECTOR(int8_t, 4))(l_469.yxxy)).odd))), 0x15L, 0x3FL)).se72a)).xwxwyzyy, ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 4))(add_sat(((VECTOR(int8_t, 16))(l_470.s4636514061556711)).s44ea, ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))((-6L), 0x1EL)), ((VECTOR(int8_t, 4))(l_471.s9898)), 0x54L, ((VECTOR(int8_t, 2))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 2),((VECTOR(int8_t, 16))(0x5AL, p_1367->g_47.sd, ((VECTOR(int8_t, 4))(p_1367->g_472.s4517)), ((VECTOR(int8_t, 8))(l_473.yyyxxyyx)), 0x75L, 0x7FL)).s1d, ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 2),((VECTOR(int8_t, 16))(l_474.s1646035746345332)).sdc, ((VECTOR(int8_t, 16))(sub_sat(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(min(((VECTOR(int8_t, 4))(0x59L, ((VECTOR(int8_t, 2))(l_475.xx)).even, 0x4EL, 0x55L)).hi, ((VECTOR(int8_t, 16))(p_1367->g_476.yyxyxxyyyyxyyxxy)).s46))).yxyyyyxx)).s3173577366414030, ((VECTOR(int8_t, 4))(5L, (safe_sub_func_uint64_t_u_u((l_450.s6 ^ (l_479 != (void*)0)), p_1367->g_373.sf)), 1L, 0L)).yyywyzyxyyxywzxw))).sd0, ((VECTOR(int8_t, 2))(0x3BL))))), (-1L), ((VECTOR(int8_t, 2))(0x20L)), 0x75L, (-7L), 0L)).odd)), 0x7EL, 0x42L, (-1L), 0x29L)).s25, ((VECTOR(int8_t, 2))(1L))))), 0L, 3L, ((VECTOR(int8_t, 4))(0x39L)), 0x40L)).sae80))))))).even)), 0x61L, (-1L))).xywyxxzx))).s7375255514337371)).hi))).s7 > p_67)) ^ p_1367->g_448.sa);
            }
            else
            { /* block id: 264 */
                uint16_t *l_500 = &l_442;
                uint16_t *l_503 = (void*)0;
                uint16_t *l_504[7][9] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
                int32_t l_505 = 0x63D28727L;
                int64_t *l_514 = &p_1367->g_344[0];
                int8_t **l_558 = &l_284;
                int i, j;
                for (l_396 = 20; (l_396 > (-24)); l_396 = safe_sub_func_int64_t_s_s(l_396, 1))
                { /* block id: 267 */
                    uint8_t l_482 = 0xD9L;
                    l_482--;
                }
                l_505 = (((((p_1367->g_506 = (safe_div_func_uint32_t_u_u(((((*l_454) = p_1367->g_82) >= (((safe_sub_func_int32_t_s_s((*p_66), ((VECTOR(int32_t, 16))(p_1367->g_489.s2dbe0fea827975fe)).s4)) | (p_1367->g_326 = (safe_mul_func_int8_t_s_s(p_1367->g_354.y, p_1367->g_84)))) == (safe_lshift_func_uint8_t_u_u(((((safe_mod_func_uint8_t_u_u((p_1367->g_315 = ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(l_496.s51)).xyyy)).z), ((*l_451) ^ ((0UL | 0L) , (safe_rshift_func_uint16_t_u_s(((p_1367->g_272.s4 = (((VECTOR(int32_t, 2))(p_1367->g_499.s67)).hi , (--(*l_500)))) >= p_67), ((0L && 1UL) || (*l_451)))))))) != l_505) ^ p_67) ^ p_67), 0)))) | p_65), l_460.w))) ^ p_1367->g_373.s2) < (*p_1367->g_7)) || 7L) , (*p_1367->g_7));
                (*l_451) = ((p_1367->g_comm_values[p_1367->tid] , (safe_lshift_func_uint8_t_u_u((safe_add_func_int32_t_s_s((((*l_514) = (0x29L <= (safe_div_func_uint8_t_u_u(p_1367->g_272.s2, (((VECTOR(int16_t, 16))(l_513.s1777057646621734)).sf && p_1367->g_344[0]))))) ^ p_64), l_505)), (((VECTOR(int64_t, 2))(((VECTOR(int64_t, 16))(l_515.xyxyxyyyyxyxyyyy)).s35)).even & 0x7805E2ECF681C85FL)))) , (l_505 > ((p_1367->g_47.sc > 0x7EDBDF44L) , p_1367->g_476.y)));
                for (p_64 = 0; (p_64 != (-6)); --p_64)
                { /* block id: 281 */
                    uint64_t *l_540 = &p_1367->g_95[0];
                    int32_t l_546 = 1L;
                    int16_t *l_554 = &p_1367->g_359[3];
                    int i, j;
                    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                    p_1367->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 54)), permutations[(safe_mod_func_uint32_t_u_u(p_1367->g_373.sa, 10))][(safe_mod_func_uint32_t_u_u(p_1367->tid, 54))]));
                    l_505 = ((safe_div_func_int32_t_s_s(((l_546 ^= (safe_add_func_uint8_t_u_u((((*l_454) = (safe_rshift_func_int8_t_s_u(((p_1367->g_47.s9 || (safe_add_func_int64_t_s_s((((VECTOR(int16_t, 2))(clz(((VECTOR(int16_t, 2))(3L, 0x65F7L))))).hi , (safe_mul_func_uint16_t_u_u(((*l_500) = (safe_sub_func_int64_t_s_s(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 16))((safe_div_func_uint16_t_u_u(((VECTOR(uint16_t, 16))(0xB312L, GROUP_DIVERGE(1, 1), (safe_sub_func_uint32_t_u_u(0xA17151F8L, (safe_lshift_func_uint16_t_u_u((!(((((((*l_540) ^= (safe_sub_func_uint64_t_u_u((safe_sub_func_uint32_t_u_u(l_450.s2, p_67)), p_1367->g_354.y))) | (((VECTOR(int8_t, 4))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 4),((VECTOR(int8_t, 8))(2L, ((void*)0 == l_543), (-9L), (-4L), (-1L), (safe_div_func_int64_t_s_s(((*l_451) , p_1367->g_476.y), (**l_274))), 1L, 0x22L)).odd, ((VECTOR(int8_t, 4))(3L)), ((VECTOR(int8_t, 4))(0x49L))))).y || 0L)) > 4UL) < p_1367->g_448.s9) || 0x588634AA4521E7C3L) > permutations[(safe_mod_func_uint32_t_u_u(p_1367->g_373.sa, 10))][(safe_mod_func_uint32_t_u_u(p_1367->tid, 54))])), 10)))), ((VECTOR(uint16_t, 2))(0xCFE2L)), p_1367->g_506, 3UL, ((VECTOR(uint16_t, 4))(0x1FFFL)), 0x3A88L, ((VECTOR(uint16_t, 4))(8UL)))).s2, 65535UL)), 0x2613ECBFC6C8C9F0L, ((VECTOR(int64_t, 2))(0L)), ((VECTOR(int64_t, 2))((-6L))), p_64, l_475.w, ((VECTOR(int64_t, 2))(0x5961AD5E77C23D72L)), ((VECTOR(int64_t, 4))(8L)), 0L, 0L)).s0d87)).w, 0x44BEDE66391F0C64L))), 0UL))), p_1367->g_359[1]))) >= 65535UL), p_1367->g_51))) > p_1367->g_84), l_460.x))) | p_1367->g_455), 4294967295UL)) == l_515.y);
                    (*p_66) &= (safe_rshift_func_int8_t_s_s((safe_rshift_func_uint16_t_u_s(((void*)0 != p_1367->g_551[2][4][5]), ((void*)0 != l_554))), 7));
                    for (l_505 = 0; (l_505 <= (-26)); l_505--)
                    { /* block id: 293 */
                        int32_t **l_557 = &l_451;
                        int8_t ***l_559 = &l_558;
                        (*l_557) = p_66;
                        (*p_66) = (*p_66);
                        (*l_557) = &p_1367->g_44;
                        l_560[3][1] = ((*l_559) = l_558);
                    }
                }
            }
            if (((VECTOR(int32_t, 4))(0x4ADF7F26L, 0L, (-1L), (-1L))).z)
            { /* block id: 302 */
                int32_t *l_561 = (void*)0;
                int32_t **l_562 = &l_381[4];
                int32_t **l_563[5][2][7] = {{{&p_1367->g_7,&l_561,(void*)0,(void*)0,&p_1367->g_424,&p_1367->g_7,(void*)0},{&p_1367->g_7,&l_561,(void*)0,(void*)0,&p_1367->g_424,&p_1367->g_7,(void*)0}},{{&p_1367->g_7,&l_561,(void*)0,(void*)0,&p_1367->g_424,&p_1367->g_7,(void*)0},{&p_1367->g_7,&l_561,(void*)0,(void*)0,&p_1367->g_424,&p_1367->g_7,(void*)0}},{{&p_1367->g_7,&l_561,(void*)0,(void*)0,&p_1367->g_424,&p_1367->g_7,(void*)0},{&p_1367->g_7,&l_561,(void*)0,(void*)0,&p_1367->g_424,&p_1367->g_7,(void*)0}},{{&p_1367->g_7,&l_561,(void*)0,(void*)0,&p_1367->g_424,&p_1367->g_7,(void*)0},{&p_1367->g_7,&l_561,(void*)0,(void*)0,&p_1367->g_424,&p_1367->g_7,(void*)0}},{{&p_1367->g_7,&l_561,(void*)0,(void*)0,&p_1367->g_424,&p_1367->g_7,(void*)0},{&p_1367->g_7,&l_561,(void*)0,(void*)0,&p_1367->g_424,&p_1367->g_7,(void*)0}}};
                int i, j, k;
                p_1367->g_424 = ((*l_562) = l_561);
                if ((*p_1367->g_7))
                    break;
                if ((atomic_inc(&p_1367->l_atomic_input[29]) == 8))
                { /* block id: 307 */
                    int8_t l_564 = (-6L);
                    uint16_t l_565 = 0x2541L;
                    int16_t l_566 = 0L;
                    uint64_t l_567 = 0x5D9F8CE65F8A81BDL;
                    int8_t l_568[7];
                    VECTOR(int32_t, 2) l_576 = (VECTOR(int32_t, 2))(1L, (-7L));
                    int32_t *l_575[10][2] = {{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}};
                    int i, j;
                    for (i = 0; i < 7; i++)
                        l_568[i] = (-10L);
                    l_566 ^= (l_564 , l_565);
                    l_568[2] = (l_567 , 0x12F7D0F3L);
                    for (l_564 = 0; (l_564 >= 22); l_564 = safe_add_func_uint16_t_u_u(l_564, 8))
                    { /* block id: 312 */
                        int32_t l_571 = 0x7351CA03L;
                        uint32_t l_572 = 0x8139390CL;
                        --l_572;
                    }
                    l_575[4][0] = l_575[4][0];
                    unsigned int result = 0;
                    result += l_564;
                    result += l_565;
                    result += l_566;
                    result += l_567;
                    int l_568_i0;
                    for (l_568_i0 = 0; l_568_i0 < 7; l_568_i0++) {
                        result += l_568[l_568_i0];
                    }
                    result += l_576.y;
                    result += l_576.x;
                    atomic_add(&p_1367->l_special_values[29], result);
                }
                else
                { /* block id: 316 */
                    (1 + 1);
                }
            }
            else
            { /* block id: 319 */
                int32_t l_579 = 0x11516D21L;
                int32_t l_580 = 5L;
                int32_t l_583 = 0x7D211C9EL;
                int16_t **l_587[9] = {&l_386,&l_386,&l_386,&l_386,&l_386,&l_386,&l_386,&l_386,&l_386};
                uint16_t *l_590 = (void*)0;
                uint16_t *l_591[7] = {&l_442,(void*)0,&l_442,&l_442,(void*)0,&l_442,&l_442};
                VECTOR(uint16_t, 8) l_607 = (VECTOR(uint16_t, 8))(0xEFE5L, (VECTOR(uint16_t, 4))(0xEFE5L, (VECTOR(uint16_t, 2))(0xEFE5L, 0x9FE7L), 0x9FE7L), 0x9FE7L, 0xEFE5L, 0x9FE7L);
                int i;
                for (l_416 = (-8); (l_416 != (-18)); --l_416)
                { /* block id: 322 */
                    if (l_579)
                        break;
                }
                l_584[6]--;
                if ((l_587[5] != ((((((*p_66) = ((safe_div_func_uint32_t_u_u((((VECTOR(int16_t, 2))((-10L), 0x48A7L)).odd <= (p_1367->g_449.x = l_450.s3)), (safe_sub_func_int32_t_s_s(l_583, (l_342 == l_342))))) | ((VECTOR(uint64_t, 8))(rhadd(((VECTOR(uint64_t, 2))(l_594.s20)).yyxxyxyx, ((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 4))(l_595.xyxx)).hi)).yxxyyxyx))).s6)) , (((**l_274) & p_67) | (((((safe_lshift_func_uint16_t_u_u((GROUP_DIVERGE(1, 1) , (((VECTOR(int32_t, 16))(add_sat(((VECTOR(int32_t, 2))(l_598.sa4)).yyxyyyxxxyxxxxxx, ((VECTOR(int32_t, 16))(upsample(((VECTOR(int16_t, 4))(mad_sat(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(l_599.yyxx)), 0x6F74L, ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))(1L, ((VECTOR(int16_t, 4))(rhadd(((VECTOR(int16_t, 2))(0x313DL, 0x594FL)).yxyy, ((VECTOR(int16_t, 2))(p_1367->g_600.s06)).xyyx))), (safe_rshift_func_uint16_t_u_u((*l_451), 8)), 0x4A5DL, 1L)).s65)), 0x1A73L)).even, ((VECTOR(int16_t, 16))(l_603.xxyxyyxxyxyyyxyy)).s35b9, ((VECTOR(int16_t, 8))(rhadd(((VECTOR(int16_t, 2))(hadd(((VECTOR(int16_t, 2))(l_604.s55)), ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(p_1367->g_605.s7461143250352447)).s22))))).xxyyyxxy, ((VECTOR(int16_t, 4))(p_1367->g_606.xyyy)).zwwxzwzz))).odd))).yyywxwxwxyyxywxw, ((VECTOR(uint16_t, 16))(mad_hi(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 4))(l_607.s0055)))))))).xzxxyxxyyxzyywyw, ((VECTOR(uint16_t, 16))(min(((VECTOR(uint16_t, 16))(0x8D6BL, (safe_mul_func_uint16_t_u_u(l_583, p_1367->g_506)), FAKE_DIVERGE(p_1367->global_1_offset, get_global_id(1), 10), 65535UL, (**l_274), ((VECTOR(uint16_t, 8))(0xBADCL)), 65528UL, 6UL, 0x818AL)), (uint16_t)0x8A50L))), ((VECTOR(uint16_t, 16))(0UL))))))))))).sd != 4294967294UL)), 8)) == (*p_1367->g_7)) > GROUP_DIVERGE(2, 1)) || GROUP_DIVERGE(2, 1)) | (-5L)))) && p_1367->g_499.s6) & (-1L)) , &p_1367->g_552)))
                { /* block id: 328 */
                    int16_t l_623[2][8] = {{0x3AB8L,1L,1L,1L,0x3AB8L,0x3AB8L,1L,1L},{0x3AB8L,1L,1L,1L,0x3AB8L,0x3AB8L,1L,1L}};
                    uint32_t *l_624 = (void*)0;
                    uint32_t *l_625 = (void*)0;
                    uint32_t *l_626 = (void*)0;
                    uint32_t *l_627 = (void*)0;
                    uint32_t *l_628[1][7][8] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
                    uint64_t *l_637 = &l_584[7];
                    uint64_t *l_640 = &p_1367->g_95[0];
                    int i, j, k;
                    (*p_66) = ((p_64 != p_64) && ((((safe_rshift_func_int16_t_s_s((p_64 & 0L), ((VECTOR(int16_t, 4))(upsample(((VECTOR(int8_t, 16))(p_1367->g_612.sbb152d396829f85c)).s223f, ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(0x76L, (((p_65 |= (safe_sub_func_int32_t_s_s(l_583, ((((safe_add_func_uint16_t_u_u(p_1367->g_489.se, p_1367->g_455)) != ((safe_mod_func_int32_t_s_s(((VECTOR(int32_t, 4))(add_sat(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(p_1367->g_619.s2116661202075373)).sb9)))).xyyy, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(rotate(((VECTOR(int32_t, 2))(0L, 0x1B59EB1BL)).yxyxxyxx, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(p_1367->g_620.xxxy)), (safe_rshift_func_int8_t_s_u(l_623[0][2], p_1367->g_272.s6)), 0x5762E5CBL, (-4L), 0x41A6A53CL)).s32)).xxxxyxyx))).s52)).yyyy))).x, 0x4D32B82CL)) && FAKE_DIVERGE(p_1367->local_1_offset, get_local_id(1), 10))) != p_67) != (**l_274))))) > 0x1691228EL) ^ p_1367->g_620.x), 0xCFL, 0xB6L)).wzxxzwzwzzwzwzxw)).s4b11))).w)) && (*p_66)) >= 0x6EA46786622DE6B5L) == p_1367->g_620.y));
                    (*p_66) &= ((safe_mod_func_int16_t_s_s((safe_add_func_uint64_t_u_u(((((-1L) == ((safe_lshift_func_uint16_t_u_s((((((+(safe_add_func_uint64_t_u_u(((*l_637) = (+9UL)), ((*l_640) = (safe_rshift_func_uint8_t_u_u((0x7F3C70D0L == ((p_67 = (l_496.s7 == p_1367->g_612.s1)) | (*l_451))), 4)))))) , ((*l_637) = (l_623[1][5] ^ (&l_579 != l_628[0][0][6])))) & FAKE_DIVERGE(p_1367->local_2_offset, get_local_id(2), 10)) < p_65) ^ 0xE9L), 5)) ^ (*l_451))) , &p_1367->g_309) == &p_1367->g_92), (*l_451))), 65528UL)) | 0xCD2759FCDFB5200BL);
                    return l_641;
                }
                else
                { /* block id: 337 */
                    uint32_t **l_644 = &p_1367->g_310;
                    for (p_1367->g_82 = 0; (p_1367->g_82 >= 23); p_1367->g_82++)
                    { /* block id: 340 */
                        (*p_66) = 0L;
                    }
                    return l_644;
                }
            }
        }
        l_582[1] ^= (0x77L ^ ((++p_1367->g_272.s0) & (p_1367->g_373.s2 = p_64)));
        if ((((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 16))(l_648.yyxyyxxyyxxxxyyx)).sd, (p_65++), 0x178748CAL, 0x80BA4C51L)).z <= (-8L)))
        { /* block id: 351 */
            int32_t **l_653 = &l_381[4];
            int8_t **l_655 = (void*)0;
            (*l_653) = &p_1367->g_8;
            (*p_66) = (l_654[0][3][0] == l_655);
        }
        else
        { /* block id: 354 */
            return l_641;
        }
    }
    p_1367->g_664 = (p_1367->g_47.sf = (p_1367->g_620.w |= (p_1367->g_489.s7 = (p_1367->g_619.s4 = ((((p_67 & ((safe_rshift_func_int8_t_s_u((!0x61L), 5)) , (((((0x00DDL <= p_65) , ((0x7D1FE79AL > ((l_658 = &l_385) == ((((*p_66) = (((safe_lshift_func_int16_t_s_s((((*l_662) = p_1367->g_661[4]) != (p_1367->g_506 , &l_427)), 3)) != (**l_274)) , (*p_66))) | p_67) , (void*)0))) == p_1367->g_82)) && p_65) , p_65) || l_663))) , 0UL) , (*p_66)) & 0x2DD11D12L)))));
    return (*l_342);
}


/* ------------------------------------------ */
/* 
 * reads : p_1367->g_95
 * writes:
 */
uint16_t  func_70(uint32_t  p_71, struct S1 * p_1367)
{ /* block id: 31 */
    return p_1367->g_95[1];
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global volatile int *g_atomic_reduction, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[31];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 31; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[31];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 31; i++)
            l_special_values[i] = 0;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    __local int64_t l_comm_values[54];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 54; i++)
            l_comm_values[i] = 1;
    struct S1 c_1368;
    struct S1* p_1367 = &c_1368;
    struct S1 c_1369 = {
        0x2D2086BDL, // p_1367->g_8
        &p_1367->g_8, // p_1367->g_7
        {-1L}, // p_1367->g_21
        0xEAL, // p_1367->g_37
        6L, // p_1367->g_41
        0L, // p_1367->g_44
        (VECTOR(int32_t, 16))(6L, (VECTOR(int32_t, 4))(6L, (VECTOR(int32_t, 2))(6L, 1L), 1L), 1L, 6L, 1L, (VECTOR(int32_t, 2))(6L, 1L), (VECTOR(int32_t, 2))(6L, 1L), 6L, 1L, 6L, 1L), // p_1367->g_47
        1L, // p_1367->g_51
        4294967295UL, // p_1367->g_60
        0x5EL, // p_1367->g_69
        &p_1367->g_69, // p_1367->g_68
        (-1L), // p_1367->g_82
        0x17L, // p_1367->g_84
        {4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL}, // p_1367->g_94
        &p_1367->g_94[0], // p_1367->g_93
        &p_1367->g_93, // p_1367->g_92
        {0xF4763CD51DC99B0BL,0xF4763CD51DC99B0BL,0xF4763CD51DC99B0BL,0xF4763CD51DC99B0BL}, // p_1367->g_95
        (VECTOR(uint16_t, 8))(0xD7FDL, (VECTOR(uint16_t, 4))(0xD7FDL, (VECTOR(uint16_t, 2))(0xD7FDL, 65532UL), 65532UL), 65532UL, 0xD7FDL, 65532UL), // p_1367->g_272
        (VECTOR(int8_t, 8))(0x31L, (VECTOR(int8_t, 4))(0x31L, (VECTOR(int8_t, 2))(0x31L, 0L), 0L), 0L, 0x31L, 0L), // p_1367->g_279
        &p_1367->g_60, // p_1367->g_310
        &p_1367->g_310, // p_1367->g_309
        9UL, // p_1367->g_315
        4294967295UL, // p_1367->g_320
        0x87L, // p_1367->g_326
        {0x488D896DA5402FC4L,0x488D896DA5402FC4L}, // p_1367->g_344
        (VECTOR(int64_t, 2))(3L, 0x16072BF6ECE069CBL), // p_1367->g_354
        {0x1DE9L,0x1DE9L,0x1DE9L,0x1DE9L,0x1DE9L,0x1DE9L,0x1DE9L,0x1DE9L}, // p_1367->g_359
        (VECTOR(uint16_t, 16))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0UL), 0UL), 0UL, 0UL, 0UL, (VECTOR(uint16_t, 2))(0UL, 0UL), (VECTOR(uint16_t, 2))(0UL, 0UL), 0UL, 0UL, 0UL, 0UL), // p_1367->g_373
        (void*)0, // p_1367->g_424
        (VECTOR(uint16_t, 16))(0xFE48L, (VECTOR(uint16_t, 4))(0xFE48L, (VECTOR(uint16_t, 2))(0xFE48L, 0xA4B4L), 0xA4B4L), 0xA4B4L, 0xFE48L, 0xA4B4L, (VECTOR(uint16_t, 2))(0xFE48L, 0xA4B4L), (VECTOR(uint16_t, 2))(0xFE48L, 0xA4B4L), 0xFE48L, 0xA4B4L, 0xFE48L, 0xA4B4L), // p_1367->g_448
        (VECTOR(uint16_t, 2))(0xF6D9L, 0xC1ACL), // p_1367->g_449
        0xC6BB1CFBL, // p_1367->g_455
        (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, (-1L)), (-1L)), (-1L), 1L, (-1L)), // p_1367->g_472
        (VECTOR(int8_t, 2))(1L, 0x38L), // p_1367->g_476
        (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 1L), 1L), 1L, (-1L), 1L, (VECTOR(int32_t, 2))((-1L), 1L), (VECTOR(int32_t, 2))((-1L), 1L), (-1L), 1L, (-1L), 1L), // p_1367->g_489
        (VECTOR(int32_t, 8))(0x22AE4E9DL, (VECTOR(int32_t, 4))(0x22AE4E9DL, (VECTOR(int32_t, 2))(0x22AE4E9DL, 0x339661B2L), 0x339661B2L), 0x339661B2L, 0x22AE4E9DL, 0x339661B2L), // p_1367->g_499
        0x5AL, // p_1367->g_506
        {{{0x454BL,0x454BL,0x454BL,0x454BL,0x454BL,0x454BL}},{{0x454BL,0x454BL,0x454BL,0x454BL,0x454BL,0x454BL}},{{0x454BL,0x454BL,0x454BL,0x454BL,0x454BL,0x454BL}},{{0x454BL,0x454BL,0x454BL,0x454BL,0x454BL,0x454BL}},{{0x454BL,0x454BL,0x454BL,0x454BL,0x454BL,0x454BL}},{{0x454BL,0x454BL,0x454BL,0x454BL,0x454BL,0x454BL}}}, // p_1367->g_553
        &p_1367->g_553[5][0][5], // p_1367->g_552
        {{{&p_1367->g_552,&p_1367->g_552,&p_1367->g_552,&p_1367->g_552,&p_1367->g_552,&p_1367->g_552},{&p_1367->g_552,&p_1367->g_552,&p_1367->g_552,&p_1367->g_552,&p_1367->g_552,&p_1367->g_552},{&p_1367->g_552,&p_1367->g_552,&p_1367->g_552,&p_1367->g_552,&p_1367->g_552,&p_1367->g_552},{&p_1367->g_552,&p_1367->g_552,&p_1367->g_552,&p_1367->g_552,&p_1367->g_552,&p_1367->g_552},{&p_1367->g_552,&p_1367->g_552,&p_1367->g_552,&p_1367->g_552,&p_1367->g_552,&p_1367->g_552}},{{&p_1367->g_552,&p_1367->g_552,&p_1367->g_552,&p_1367->g_552,&p_1367->g_552,&p_1367->g_552},{&p_1367->g_552,&p_1367->g_552,&p_1367->g_552,&p_1367->g_552,&p_1367->g_552,&p_1367->g_552},{&p_1367->g_552,&p_1367->g_552,&p_1367->g_552,&p_1367->g_552,&p_1367->g_552,&p_1367->g_552},{&p_1367->g_552,&p_1367->g_552,&p_1367->g_552,&p_1367->g_552,&p_1367->g_552,&p_1367->g_552},{&p_1367->g_552,&p_1367->g_552,&p_1367->g_552,&p_1367->g_552,&p_1367->g_552,&p_1367->g_552}},{{&p_1367->g_552,&p_1367->g_552,&p_1367->g_552,&p_1367->g_552,&p_1367->g_552,&p_1367->g_552},{&p_1367->g_552,&p_1367->g_552,&p_1367->g_552,&p_1367->g_552,&p_1367->g_552,&p_1367->g_552},{&p_1367->g_552,&p_1367->g_552,&p_1367->g_552,&p_1367->g_552,&p_1367->g_552,&p_1367->g_552},{&p_1367->g_552,&p_1367->g_552,&p_1367->g_552,&p_1367->g_552,&p_1367->g_552,&p_1367->g_552},{&p_1367->g_552,&p_1367->g_552,&p_1367->g_552,&p_1367->g_552,&p_1367->g_552,&p_1367->g_552}}}, // p_1367->g_551
        (VECTOR(int16_t, 16))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x32E7L), 0x32E7L), 0x32E7L, 0L, 0x32E7L, (VECTOR(int16_t, 2))(0L, 0x32E7L), (VECTOR(int16_t, 2))(0L, 0x32E7L), 0L, 0x32E7L, 0L, 0x32E7L), // p_1367->g_600
        (VECTOR(int16_t, 8))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x16CEL), 0x16CEL), 0x16CEL, 0L, 0x16CEL), // p_1367->g_605
        (VECTOR(int16_t, 2))(0x1B6BL, 1L), // p_1367->g_606
        (VECTOR(int8_t, 16))(0x23L, (VECTOR(int8_t, 4))(0x23L, (VECTOR(int8_t, 2))(0x23L, 0x64L), 0x64L), 0x64L, 0x23L, 0x64L, (VECTOR(int8_t, 2))(0x23L, 0x64L), (VECTOR(int8_t, 2))(0x23L, 0x64L), 0x23L, 0x64L, 0x23L, 0x64L), // p_1367->g_612
        (VECTOR(int32_t, 8))((-5L), (VECTOR(int32_t, 4))((-5L), (VECTOR(int32_t, 2))((-5L), (-1L)), (-1L)), (-1L), (-5L), (-1L)), // p_1367->g_619
        (VECTOR(int32_t, 4))(0x03C47560L, (VECTOR(int32_t, 2))(0x03C47560L, 0x349CD841L), 0x349CD841L), // p_1367->g_620
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_1367->g_661
        0L, // p_1367->g_664
        (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 0x292E5E61469377D4L), 0x292E5E61469377D4L), // p_1367->g_670
        (VECTOR(int16_t, 16))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, (-2L)), (-2L)), (-2L), 0L, (-2L), (VECTOR(int16_t, 2))(0L, (-2L)), (VECTOR(int16_t, 2))(0L, (-2L)), 0L, (-2L), 0L, (-2L)), // p_1367->g_899
        (void*)0, // p_1367->g_905
        (VECTOR(uint16_t, 2))(0x690CL, 0xBE5EL), // p_1367->g_909
        &p_1367->g_309, // p_1367->g_912
        9L, // p_1367->g_955
        (VECTOR(int32_t, 4))(0x2B760541L, (VECTOR(int32_t, 2))(0x2B760541L, 1L), 1L), // p_1367->g_957
        {{18446744073709551612UL,18446744073709551612UL,18446744073709551612UL,18446744073709551612UL,18446744073709551612UL},{18446744073709551612UL,18446744073709551612UL,18446744073709551612UL,18446744073709551612UL,18446744073709551612UL},{18446744073709551612UL,18446744073709551612UL,18446744073709551612UL,18446744073709551612UL,18446744073709551612UL}}, // p_1367->g_968
        (VECTOR(uint32_t, 16))(0x0570087EL, (VECTOR(uint32_t, 4))(0x0570087EL, (VECTOR(uint32_t, 2))(0x0570087EL, 0xCD0DE7F2L), 0xCD0DE7F2L), 0xCD0DE7F2L, 0x0570087EL, 0xCD0DE7F2L, (VECTOR(uint32_t, 2))(0x0570087EL, 0xCD0DE7F2L), (VECTOR(uint32_t, 2))(0x0570087EL, 0xCD0DE7F2L), 0x0570087EL, 0xCD0DE7F2L, 0x0570087EL, 0xCD0DE7F2L), // p_1367->g_973
        (VECTOR(int16_t, 16))((-8L), (VECTOR(int16_t, 4))((-8L), (VECTOR(int16_t, 2))((-8L), 0L), 0L), 0L, (-8L), 0L, (VECTOR(int16_t, 2))((-8L), 0L), (VECTOR(int16_t, 2))((-8L), 0L), (-8L), 0L, (-8L), 0L), // p_1367->g_990
        0xCBCC3A541B19371EL, // p_1367->g_1001
        (VECTOR(int64_t, 4))(0x459BD983744235F7L, (VECTOR(int64_t, 2))(0x459BD983744235F7L, (-1L)), (-1L)), // p_1367->g_1007
        (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x2B0AD882L), 0x2B0AD882L), 0x2B0AD882L, 1L, 0x2B0AD882L, (VECTOR(int32_t, 2))(1L, 0x2B0AD882L), (VECTOR(int32_t, 2))(1L, 0x2B0AD882L), 1L, 0x2B0AD882L, 1L, 0x2B0AD882L), // p_1367->g_1041
        (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 0x4FAA34BB41B84090L), 0x4FAA34BB41B84090L), // p_1367->g_1112
        (void*)0, // p_1367->g_1133
        &p_1367->g_1133, // p_1367->g_1132
        {{&p_1367->g_1132,&p_1367->g_1132,(void*)0,(void*)0,&p_1367->g_1132,(void*)0,(void*)0,&p_1367->g_1132,&p_1367->g_1132,(void*)0},{&p_1367->g_1132,&p_1367->g_1132,(void*)0,(void*)0,&p_1367->g_1132,(void*)0,(void*)0,&p_1367->g_1132,&p_1367->g_1132,(void*)0},{&p_1367->g_1132,&p_1367->g_1132,(void*)0,(void*)0,&p_1367->g_1132,(void*)0,(void*)0,&p_1367->g_1132,&p_1367->g_1132,(void*)0},{&p_1367->g_1132,&p_1367->g_1132,(void*)0,(void*)0,&p_1367->g_1132,(void*)0,(void*)0,&p_1367->g_1132,&p_1367->g_1132,(void*)0},{&p_1367->g_1132,&p_1367->g_1132,(void*)0,(void*)0,&p_1367->g_1132,(void*)0,(void*)0,&p_1367->g_1132,&p_1367->g_1132,(void*)0},{&p_1367->g_1132,&p_1367->g_1132,(void*)0,(void*)0,&p_1367->g_1132,(void*)0,(void*)0,&p_1367->g_1132,&p_1367->g_1132,(void*)0},{&p_1367->g_1132,&p_1367->g_1132,(void*)0,(void*)0,&p_1367->g_1132,(void*)0,(void*)0,&p_1367->g_1132,&p_1367->g_1132,(void*)0}}, // p_1367->g_1131
        (VECTOR(uint8_t, 2))(0x4CL, 0x92L), // p_1367->g_1153
        (VECTOR(uint8_t, 16))(0xF0L, (VECTOR(uint8_t, 4))(0xF0L, (VECTOR(uint8_t, 2))(0xF0L, 252UL), 252UL), 252UL, 0xF0L, 252UL, (VECTOR(uint8_t, 2))(0xF0L, 252UL), (VECTOR(uint8_t, 2))(0xF0L, 252UL), 0xF0L, 252UL, 0xF0L, 252UL), // p_1367->g_1154
        (VECTOR(int8_t, 16))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x6EL), 0x6EL), 0x6EL, (-1L), 0x6EL, (VECTOR(int8_t, 2))((-1L), 0x6EL), (VECTOR(int8_t, 2))((-1L), 0x6EL), (-1L), 0x6EL, (-1L), 0x6EL), // p_1367->g_1157
        1L, // p_1367->g_1168
        (VECTOR(int32_t, 16))(0x1D3F7D49L, (VECTOR(int32_t, 4))(0x1D3F7D49L, (VECTOR(int32_t, 2))(0x1D3F7D49L, (-6L)), (-6L)), (-6L), 0x1D3F7D49L, (-6L), (VECTOR(int32_t, 2))(0x1D3F7D49L, (-6L)), (VECTOR(int32_t, 2))(0x1D3F7D49L, (-6L)), 0x1D3F7D49L, (-6L), 0x1D3F7D49L, (-6L)), // p_1367->g_1175
        &p_1367->g_424, // p_1367->g_1302
        (void*)0, // p_1367->g_1304
        (void*)0, // p_1367->g_1306
        &p_1367->g_424, // p_1367->g_1309
        (void*)0, // p_1367->g_1352
        6L, // p_1367->g_1357
        4UL, // p_1367->g_1358
        0, // p_1367->v_collective
        sequence_input[get_global_id(0)], // p_1367->global_0_offset
        sequence_input[get_global_id(1)], // p_1367->global_1_offset
        sequence_input[get_global_id(2)], // p_1367->global_2_offset
        sequence_input[get_local_id(0)], // p_1367->local_0_offset
        sequence_input[get_local_id(1)], // p_1367->local_1_offset
        sequence_input[get_local_id(2)], // p_1367->local_2_offset
        sequence_input[get_group_id(0)], // p_1367->group_0_offset
        sequence_input[get_group_id(1)], // p_1367->group_1_offset
        sequence_input[get_group_id(2)], // p_1367->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 54)), permutations[0][get_linear_local_id()])), // p_1367->tid
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_1368 = c_1369;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1367);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1367->g_8, "p_1367->g_8", print_hash_value);
    transparent_crc(p_1367->g_21.f0, "p_1367->g_21.f0", print_hash_value);
    transparent_crc(p_1367->g_37, "p_1367->g_37", print_hash_value);
    transparent_crc(p_1367->g_41, "p_1367->g_41", print_hash_value);
    transparent_crc(p_1367->g_44, "p_1367->g_44", print_hash_value);
    transparent_crc(p_1367->g_47.s0, "p_1367->g_47.s0", print_hash_value);
    transparent_crc(p_1367->g_47.s1, "p_1367->g_47.s1", print_hash_value);
    transparent_crc(p_1367->g_47.s2, "p_1367->g_47.s2", print_hash_value);
    transparent_crc(p_1367->g_47.s3, "p_1367->g_47.s3", print_hash_value);
    transparent_crc(p_1367->g_47.s4, "p_1367->g_47.s4", print_hash_value);
    transparent_crc(p_1367->g_47.s5, "p_1367->g_47.s5", print_hash_value);
    transparent_crc(p_1367->g_47.s6, "p_1367->g_47.s6", print_hash_value);
    transparent_crc(p_1367->g_47.s7, "p_1367->g_47.s7", print_hash_value);
    transparent_crc(p_1367->g_47.s8, "p_1367->g_47.s8", print_hash_value);
    transparent_crc(p_1367->g_47.s9, "p_1367->g_47.s9", print_hash_value);
    transparent_crc(p_1367->g_47.sa, "p_1367->g_47.sa", print_hash_value);
    transparent_crc(p_1367->g_47.sb, "p_1367->g_47.sb", print_hash_value);
    transparent_crc(p_1367->g_47.sc, "p_1367->g_47.sc", print_hash_value);
    transparent_crc(p_1367->g_47.sd, "p_1367->g_47.sd", print_hash_value);
    transparent_crc(p_1367->g_47.se, "p_1367->g_47.se", print_hash_value);
    transparent_crc(p_1367->g_47.sf, "p_1367->g_47.sf", print_hash_value);
    transparent_crc(p_1367->g_51, "p_1367->g_51", print_hash_value);
    transparent_crc(p_1367->g_60, "p_1367->g_60", print_hash_value);
    transparent_crc(p_1367->g_69, "p_1367->g_69", print_hash_value);
    transparent_crc(p_1367->g_82, "p_1367->g_82", print_hash_value);
    transparent_crc(p_1367->g_84, "p_1367->g_84", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_1367->g_94[i], "p_1367->g_94[i]", print_hash_value);

    }
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1367->g_95[i], "p_1367->g_95[i]", print_hash_value);

    }
    transparent_crc(p_1367->g_272.s0, "p_1367->g_272.s0", print_hash_value);
    transparent_crc(p_1367->g_272.s1, "p_1367->g_272.s1", print_hash_value);
    transparent_crc(p_1367->g_272.s2, "p_1367->g_272.s2", print_hash_value);
    transparent_crc(p_1367->g_272.s3, "p_1367->g_272.s3", print_hash_value);
    transparent_crc(p_1367->g_272.s4, "p_1367->g_272.s4", print_hash_value);
    transparent_crc(p_1367->g_272.s5, "p_1367->g_272.s5", print_hash_value);
    transparent_crc(p_1367->g_272.s6, "p_1367->g_272.s6", print_hash_value);
    transparent_crc(p_1367->g_272.s7, "p_1367->g_272.s7", print_hash_value);
    transparent_crc(p_1367->g_279.s0, "p_1367->g_279.s0", print_hash_value);
    transparent_crc(p_1367->g_279.s1, "p_1367->g_279.s1", print_hash_value);
    transparent_crc(p_1367->g_279.s2, "p_1367->g_279.s2", print_hash_value);
    transparent_crc(p_1367->g_279.s3, "p_1367->g_279.s3", print_hash_value);
    transparent_crc(p_1367->g_279.s4, "p_1367->g_279.s4", print_hash_value);
    transparent_crc(p_1367->g_279.s5, "p_1367->g_279.s5", print_hash_value);
    transparent_crc(p_1367->g_279.s6, "p_1367->g_279.s6", print_hash_value);
    transparent_crc(p_1367->g_279.s7, "p_1367->g_279.s7", print_hash_value);
    transparent_crc(p_1367->g_315, "p_1367->g_315", print_hash_value);
    transparent_crc(p_1367->g_320, "p_1367->g_320", print_hash_value);
    transparent_crc(p_1367->g_326, "p_1367->g_326", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1367->g_344[i], "p_1367->g_344[i]", print_hash_value);

    }
    transparent_crc(p_1367->g_354.x, "p_1367->g_354.x", print_hash_value);
    transparent_crc(p_1367->g_354.y, "p_1367->g_354.y", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1367->g_359[i], "p_1367->g_359[i]", print_hash_value);

    }
    transparent_crc(p_1367->g_373.s0, "p_1367->g_373.s0", print_hash_value);
    transparent_crc(p_1367->g_373.s1, "p_1367->g_373.s1", print_hash_value);
    transparent_crc(p_1367->g_373.s2, "p_1367->g_373.s2", print_hash_value);
    transparent_crc(p_1367->g_373.s3, "p_1367->g_373.s3", print_hash_value);
    transparent_crc(p_1367->g_373.s4, "p_1367->g_373.s4", print_hash_value);
    transparent_crc(p_1367->g_373.s5, "p_1367->g_373.s5", print_hash_value);
    transparent_crc(p_1367->g_373.s6, "p_1367->g_373.s6", print_hash_value);
    transparent_crc(p_1367->g_373.s7, "p_1367->g_373.s7", print_hash_value);
    transparent_crc(p_1367->g_373.s8, "p_1367->g_373.s8", print_hash_value);
    transparent_crc(p_1367->g_373.s9, "p_1367->g_373.s9", print_hash_value);
    transparent_crc(p_1367->g_373.sa, "p_1367->g_373.sa", print_hash_value);
    transparent_crc(p_1367->g_373.sb, "p_1367->g_373.sb", print_hash_value);
    transparent_crc(p_1367->g_373.sc, "p_1367->g_373.sc", print_hash_value);
    transparent_crc(p_1367->g_373.sd, "p_1367->g_373.sd", print_hash_value);
    transparent_crc(p_1367->g_373.se, "p_1367->g_373.se", print_hash_value);
    transparent_crc(p_1367->g_373.sf, "p_1367->g_373.sf", print_hash_value);
    transparent_crc(p_1367->g_448.s0, "p_1367->g_448.s0", print_hash_value);
    transparent_crc(p_1367->g_448.s1, "p_1367->g_448.s1", print_hash_value);
    transparent_crc(p_1367->g_448.s2, "p_1367->g_448.s2", print_hash_value);
    transparent_crc(p_1367->g_448.s3, "p_1367->g_448.s3", print_hash_value);
    transparent_crc(p_1367->g_448.s4, "p_1367->g_448.s4", print_hash_value);
    transparent_crc(p_1367->g_448.s5, "p_1367->g_448.s5", print_hash_value);
    transparent_crc(p_1367->g_448.s6, "p_1367->g_448.s6", print_hash_value);
    transparent_crc(p_1367->g_448.s7, "p_1367->g_448.s7", print_hash_value);
    transparent_crc(p_1367->g_448.s8, "p_1367->g_448.s8", print_hash_value);
    transparent_crc(p_1367->g_448.s9, "p_1367->g_448.s9", print_hash_value);
    transparent_crc(p_1367->g_448.sa, "p_1367->g_448.sa", print_hash_value);
    transparent_crc(p_1367->g_448.sb, "p_1367->g_448.sb", print_hash_value);
    transparent_crc(p_1367->g_448.sc, "p_1367->g_448.sc", print_hash_value);
    transparent_crc(p_1367->g_448.sd, "p_1367->g_448.sd", print_hash_value);
    transparent_crc(p_1367->g_448.se, "p_1367->g_448.se", print_hash_value);
    transparent_crc(p_1367->g_448.sf, "p_1367->g_448.sf", print_hash_value);
    transparent_crc(p_1367->g_449.x, "p_1367->g_449.x", print_hash_value);
    transparent_crc(p_1367->g_449.y, "p_1367->g_449.y", print_hash_value);
    transparent_crc(p_1367->g_455, "p_1367->g_455", print_hash_value);
    transparent_crc(p_1367->g_472.s0, "p_1367->g_472.s0", print_hash_value);
    transparent_crc(p_1367->g_472.s1, "p_1367->g_472.s1", print_hash_value);
    transparent_crc(p_1367->g_472.s2, "p_1367->g_472.s2", print_hash_value);
    transparent_crc(p_1367->g_472.s3, "p_1367->g_472.s3", print_hash_value);
    transparent_crc(p_1367->g_472.s4, "p_1367->g_472.s4", print_hash_value);
    transparent_crc(p_1367->g_472.s5, "p_1367->g_472.s5", print_hash_value);
    transparent_crc(p_1367->g_472.s6, "p_1367->g_472.s6", print_hash_value);
    transparent_crc(p_1367->g_472.s7, "p_1367->g_472.s7", print_hash_value);
    transparent_crc(p_1367->g_476.x, "p_1367->g_476.x", print_hash_value);
    transparent_crc(p_1367->g_476.y, "p_1367->g_476.y", print_hash_value);
    transparent_crc(p_1367->g_489.s0, "p_1367->g_489.s0", print_hash_value);
    transparent_crc(p_1367->g_489.s1, "p_1367->g_489.s1", print_hash_value);
    transparent_crc(p_1367->g_489.s2, "p_1367->g_489.s2", print_hash_value);
    transparent_crc(p_1367->g_489.s3, "p_1367->g_489.s3", print_hash_value);
    transparent_crc(p_1367->g_489.s4, "p_1367->g_489.s4", print_hash_value);
    transparent_crc(p_1367->g_489.s5, "p_1367->g_489.s5", print_hash_value);
    transparent_crc(p_1367->g_489.s6, "p_1367->g_489.s6", print_hash_value);
    transparent_crc(p_1367->g_489.s7, "p_1367->g_489.s7", print_hash_value);
    transparent_crc(p_1367->g_489.s8, "p_1367->g_489.s8", print_hash_value);
    transparent_crc(p_1367->g_489.s9, "p_1367->g_489.s9", print_hash_value);
    transparent_crc(p_1367->g_489.sa, "p_1367->g_489.sa", print_hash_value);
    transparent_crc(p_1367->g_489.sb, "p_1367->g_489.sb", print_hash_value);
    transparent_crc(p_1367->g_489.sc, "p_1367->g_489.sc", print_hash_value);
    transparent_crc(p_1367->g_489.sd, "p_1367->g_489.sd", print_hash_value);
    transparent_crc(p_1367->g_489.se, "p_1367->g_489.se", print_hash_value);
    transparent_crc(p_1367->g_489.sf, "p_1367->g_489.sf", print_hash_value);
    transparent_crc(p_1367->g_499.s0, "p_1367->g_499.s0", print_hash_value);
    transparent_crc(p_1367->g_499.s1, "p_1367->g_499.s1", print_hash_value);
    transparent_crc(p_1367->g_499.s2, "p_1367->g_499.s2", print_hash_value);
    transparent_crc(p_1367->g_499.s3, "p_1367->g_499.s3", print_hash_value);
    transparent_crc(p_1367->g_499.s4, "p_1367->g_499.s4", print_hash_value);
    transparent_crc(p_1367->g_499.s5, "p_1367->g_499.s5", print_hash_value);
    transparent_crc(p_1367->g_499.s6, "p_1367->g_499.s6", print_hash_value);
    transparent_crc(p_1367->g_499.s7, "p_1367->g_499.s7", print_hash_value);
    transparent_crc(p_1367->g_506, "p_1367->g_506", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 6; k++)
            {
                transparent_crc(p_1367->g_553[i][j][k], "p_1367->g_553[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1367->g_600.s0, "p_1367->g_600.s0", print_hash_value);
    transparent_crc(p_1367->g_600.s1, "p_1367->g_600.s1", print_hash_value);
    transparent_crc(p_1367->g_600.s2, "p_1367->g_600.s2", print_hash_value);
    transparent_crc(p_1367->g_600.s3, "p_1367->g_600.s3", print_hash_value);
    transparent_crc(p_1367->g_600.s4, "p_1367->g_600.s4", print_hash_value);
    transparent_crc(p_1367->g_600.s5, "p_1367->g_600.s5", print_hash_value);
    transparent_crc(p_1367->g_600.s6, "p_1367->g_600.s6", print_hash_value);
    transparent_crc(p_1367->g_600.s7, "p_1367->g_600.s7", print_hash_value);
    transparent_crc(p_1367->g_600.s8, "p_1367->g_600.s8", print_hash_value);
    transparent_crc(p_1367->g_600.s9, "p_1367->g_600.s9", print_hash_value);
    transparent_crc(p_1367->g_600.sa, "p_1367->g_600.sa", print_hash_value);
    transparent_crc(p_1367->g_600.sb, "p_1367->g_600.sb", print_hash_value);
    transparent_crc(p_1367->g_600.sc, "p_1367->g_600.sc", print_hash_value);
    transparent_crc(p_1367->g_600.sd, "p_1367->g_600.sd", print_hash_value);
    transparent_crc(p_1367->g_600.se, "p_1367->g_600.se", print_hash_value);
    transparent_crc(p_1367->g_600.sf, "p_1367->g_600.sf", print_hash_value);
    transparent_crc(p_1367->g_605.s0, "p_1367->g_605.s0", print_hash_value);
    transparent_crc(p_1367->g_605.s1, "p_1367->g_605.s1", print_hash_value);
    transparent_crc(p_1367->g_605.s2, "p_1367->g_605.s2", print_hash_value);
    transparent_crc(p_1367->g_605.s3, "p_1367->g_605.s3", print_hash_value);
    transparent_crc(p_1367->g_605.s4, "p_1367->g_605.s4", print_hash_value);
    transparent_crc(p_1367->g_605.s5, "p_1367->g_605.s5", print_hash_value);
    transparent_crc(p_1367->g_605.s6, "p_1367->g_605.s6", print_hash_value);
    transparent_crc(p_1367->g_605.s7, "p_1367->g_605.s7", print_hash_value);
    transparent_crc(p_1367->g_606.x, "p_1367->g_606.x", print_hash_value);
    transparent_crc(p_1367->g_606.y, "p_1367->g_606.y", print_hash_value);
    transparent_crc(p_1367->g_612.s0, "p_1367->g_612.s0", print_hash_value);
    transparent_crc(p_1367->g_612.s1, "p_1367->g_612.s1", print_hash_value);
    transparent_crc(p_1367->g_612.s2, "p_1367->g_612.s2", print_hash_value);
    transparent_crc(p_1367->g_612.s3, "p_1367->g_612.s3", print_hash_value);
    transparent_crc(p_1367->g_612.s4, "p_1367->g_612.s4", print_hash_value);
    transparent_crc(p_1367->g_612.s5, "p_1367->g_612.s5", print_hash_value);
    transparent_crc(p_1367->g_612.s6, "p_1367->g_612.s6", print_hash_value);
    transparent_crc(p_1367->g_612.s7, "p_1367->g_612.s7", print_hash_value);
    transparent_crc(p_1367->g_612.s8, "p_1367->g_612.s8", print_hash_value);
    transparent_crc(p_1367->g_612.s9, "p_1367->g_612.s9", print_hash_value);
    transparent_crc(p_1367->g_612.sa, "p_1367->g_612.sa", print_hash_value);
    transparent_crc(p_1367->g_612.sb, "p_1367->g_612.sb", print_hash_value);
    transparent_crc(p_1367->g_612.sc, "p_1367->g_612.sc", print_hash_value);
    transparent_crc(p_1367->g_612.sd, "p_1367->g_612.sd", print_hash_value);
    transparent_crc(p_1367->g_612.se, "p_1367->g_612.se", print_hash_value);
    transparent_crc(p_1367->g_612.sf, "p_1367->g_612.sf", print_hash_value);
    transparent_crc(p_1367->g_619.s0, "p_1367->g_619.s0", print_hash_value);
    transparent_crc(p_1367->g_619.s1, "p_1367->g_619.s1", print_hash_value);
    transparent_crc(p_1367->g_619.s2, "p_1367->g_619.s2", print_hash_value);
    transparent_crc(p_1367->g_619.s3, "p_1367->g_619.s3", print_hash_value);
    transparent_crc(p_1367->g_619.s4, "p_1367->g_619.s4", print_hash_value);
    transparent_crc(p_1367->g_619.s5, "p_1367->g_619.s5", print_hash_value);
    transparent_crc(p_1367->g_619.s6, "p_1367->g_619.s6", print_hash_value);
    transparent_crc(p_1367->g_619.s7, "p_1367->g_619.s7", print_hash_value);
    transparent_crc(p_1367->g_620.x, "p_1367->g_620.x", print_hash_value);
    transparent_crc(p_1367->g_620.y, "p_1367->g_620.y", print_hash_value);
    transparent_crc(p_1367->g_620.z, "p_1367->g_620.z", print_hash_value);
    transparent_crc(p_1367->g_620.w, "p_1367->g_620.w", print_hash_value);
    transparent_crc(p_1367->g_664, "p_1367->g_664", print_hash_value);
    transparent_crc(p_1367->g_670.x, "p_1367->g_670.x", print_hash_value);
    transparent_crc(p_1367->g_670.y, "p_1367->g_670.y", print_hash_value);
    transparent_crc(p_1367->g_670.z, "p_1367->g_670.z", print_hash_value);
    transparent_crc(p_1367->g_670.w, "p_1367->g_670.w", print_hash_value);
    transparent_crc(p_1367->g_899.s0, "p_1367->g_899.s0", print_hash_value);
    transparent_crc(p_1367->g_899.s1, "p_1367->g_899.s1", print_hash_value);
    transparent_crc(p_1367->g_899.s2, "p_1367->g_899.s2", print_hash_value);
    transparent_crc(p_1367->g_899.s3, "p_1367->g_899.s3", print_hash_value);
    transparent_crc(p_1367->g_899.s4, "p_1367->g_899.s4", print_hash_value);
    transparent_crc(p_1367->g_899.s5, "p_1367->g_899.s5", print_hash_value);
    transparent_crc(p_1367->g_899.s6, "p_1367->g_899.s6", print_hash_value);
    transparent_crc(p_1367->g_899.s7, "p_1367->g_899.s7", print_hash_value);
    transparent_crc(p_1367->g_899.s8, "p_1367->g_899.s8", print_hash_value);
    transparent_crc(p_1367->g_899.s9, "p_1367->g_899.s9", print_hash_value);
    transparent_crc(p_1367->g_899.sa, "p_1367->g_899.sa", print_hash_value);
    transparent_crc(p_1367->g_899.sb, "p_1367->g_899.sb", print_hash_value);
    transparent_crc(p_1367->g_899.sc, "p_1367->g_899.sc", print_hash_value);
    transparent_crc(p_1367->g_899.sd, "p_1367->g_899.sd", print_hash_value);
    transparent_crc(p_1367->g_899.se, "p_1367->g_899.se", print_hash_value);
    transparent_crc(p_1367->g_899.sf, "p_1367->g_899.sf", print_hash_value);
    transparent_crc(p_1367->g_909.x, "p_1367->g_909.x", print_hash_value);
    transparent_crc(p_1367->g_909.y, "p_1367->g_909.y", print_hash_value);
    transparent_crc(p_1367->g_955, "p_1367->g_955", print_hash_value);
    transparent_crc(p_1367->g_957.x, "p_1367->g_957.x", print_hash_value);
    transparent_crc(p_1367->g_957.y, "p_1367->g_957.y", print_hash_value);
    transparent_crc(p_1367->g_957.z, "p_1367->g_957.z", print_hash_value);
    transparent_crc(p_1367->g_957.w, "p_1367->g_957.w", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_1367->g_968[i][j], "p_1367->g_968[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1367->g_973.s0, "p_1367->g_973.s0", print_hash_value);
    transparent_crc(p_1367->g_973.s1, "p_1367->g_973.s1", print_hash_value);
    transparent_crc(p_1367->g_973.s2, "p_1367->g_973.s2", print_hash_value);
    transparent_crc(p_1367->g_973.s3, "p_1367->g_973.s3", print_hash_value);
    transparent_crc(p_1367->g_973.s4, "p_1367->g_973.s4", print_hash_value);
    transparent_crc(p_1367->g_973.s5, "p_1367->g_973.s5", print_hash_value);
    transparent_crc(p_1367->g_973.s6, "p_1367->g_973.s6", print_hash_value);
    transparent_crc(p_1367->g_973.s7, "p_1367->g_973.s7", print_hash_value);
    transparent_crc(p_1367->g_973.s8, "p_1367->g_973.s8", print_hash_value);
    transparent_crc(p_1367->g_973.s9, "p_1367->g_973.s9", print_hash_value);
    transparent_crc(p_1367->g_973.sa, "p_1367->g_973.sa", print_hash_value);
    transparent_crc(p_1367->g_973.sb, "p_1367->g_973.sb", print_hash_value);
    transparent_crc(p_1367->g_973.sc, "p_1367->g_973.sc", print_hash_value);
    transparent_crc(p_1367->g_973.sd, "p_1367->g_973.sd", print_hash_value);
    transparent_crc(p_1367->g_973.se, "p_1367->g_973.se", print_hash_value);
    transparent_crc(p_1367->g_973.sf, "p_1367->g_973.sf", print_hash_value);
    transparent_crc(p_1367->g_990.s0, "p_1367->g_990.s0", print_hash_value);
    transparent_crc(p_1367->g_990.s1, "p_1367->g_990.s1", print_hash_value);
    transparent_crc(p_1367->g_990.s2, "p_1367->g_990.s2", print_hash_value);
    transparent_crc(p_1367->g_990.s3, "p_1367->g_990.s3", print_hash_value);
    transparent_crc(p_1367->g_990.s4, "p_1367->g_990.s4", print_hash_value);
    transparent_crc(p_1367->g_990.s5, "p_1367->g_990.s5", print_hash_value);
    transparent_crc(p_1367->g_990.s6, "p_1367->g_990.s6", print_hash_value);
    transparent_crc(p_1367->g_990.s7, "p_1367->g_990.s7", print_hash_value);
    transparent_crc(p_1367->g_990.s8, "p_1367->g_990.s8", print_hash_value);
    transparent_crc(p_1367->g_990.s9, "p_1367->g_990.s9", print_hash_value);
    transparent_crc(p_1367->g_990.sa, "p_1367->g_990.sa", print_hash_value);
    transparent_crc(p_1367->g_990.sb, "p_1367->g_990.sb", print_hash_value);
    transparent_crc(p_1367->g_990.sc, "p_1367->g_990.sc", print_hash_value);
    transparent_crc(p_1367->g_990.sd, "p_1367->g_990.sd", print_hash_value);
    transparent_crc(p_1367->g_990.se, "p_1367->g_990.se", print_hash_value);
    transparent_crc(p_1367->g_990.sf, "p_1367->g_990.sf", print_hash_value);
    transparent_crc(p_1367->g_1001, "p_1367->g_1001", print_hash_value);
    transparent_crc(p_1367->g_1007.x, "p_1367->g_1007.x", print_hash_value);
    transparent_crc(p_1367->g_1007.y, "p_1367->g_1007.y", print_hash_value);
    transparent_crc(p_1367->g_1007.z, "p_1367->g_1007.z", print_hash_value);
    transparent_crc(p_1367->g_1007.w, "p_1367->g_1007.w", print_hash_value);
    transparent_crc(p_1367->g_1041.s0, "p_1367->g_1041.s0", print_hash_value);
    transparent_crc(p_1367->g_1041.s1, "p_1367->g_1041.s1", print_hash_value);
    transparent_crc(p_1367->g_1041.s2, "p_1367->g_1041.s2", print_hash_value);
    transparent_crc(p_1367->g_1041.s3, "p_1367->g_1041.s3", print_hash_value);
    transparent_crc(p_1367->g_1041.s4, "p_1367->g_1041.s4", print_hash_value);
    transparent_crc(p_1367->g_1041.s5, "p_1367->g_1041.s5", print_hash_value);
    transparent_crc(p_1367->g_1041.s6, "p_1367->g_1041.s6", print_hash_value);
    transparent_crc(p_1367->g_1041.s7, "p_1367->g_1041.s7", print_hash_value);
    transparent_crc(p_1367->g_1041.s8, "p_1367->g_1041.s8", print_hash_value);
    transparent_crc(p_1367->g_1041.s9, "p_1367->g_1041.s9", print_hash_value);
    transparent_crc(p_1367->g_1041.sa, "p_1367->g_1041.sa", print_hash_value);
    transparent_crc(p_1367->g_1041.sb, "p_1367->g_1041.sb", print_hash_value);
    transparent_crc(p_1367->g_1041.sc, "p_1367->g_1041.sc", print_hash_value);
    transparent_crc(p_1367->g_1041.sd, "p_1367->g_1041.sd", print_hash_value);
    transparent_crc(p_1367->g_1041.se, "p_1367->g_1041.se", print_hash_value);
    transparent_crc(p_1367->g_1041.sf, "p_1367->g_1041.sf", print_hash_value);
    transparent_crc(p_1367->g_1112.x, "p_1367->g_1112.x", print_hash_value);
    transparent_crc(p_1367->g_1112.y, "p_1367->g_1112.y", print_hash_value);
    transparent_crc(p_1367->g_1112.z, "p_1367->g_1112.z", print_hash_value);
    transparent_crc(p_1367->g_1112.w, "p_1367->g_1112.w", print_hash_value);
    transparent_crc(p_1367->g_1153.x, "p_1367->g_1153.x", print_hash_value);
    transparent_crc(p_1367->g_1153.y, "p_1367->g_1153.y", print_hash_value);
    transparent_crc(p_1367->g_1154.s0, "p_1367->g_1154.s0", print_hash_value);
    transparent_crc(p_1367->g_1154.s1, "p_1367->g_1154.s1", print_hash_value);
    transparent_crc(p_1367->g_1154.s2, "p_1367->g_1154.s2", print_hash_value);
    transparent_crc(p_1367->g_1154.s3, "p_1367->g_1154.s3", print_hash_value);
    transparent_crc(p_1367->g_1154.s4, "p_1367->g_1154.s4", print_hash_value);
    transparent_crc(p_1367->g_1154.s5, "p_1367->g_1154.s5", print_hash_value);
    transparent_crc(p_1367->g_1154.s6, "p_1367->g_1154.s6", print_hash_value);
    transparent_crc(p_1367->g_1154.s7, "p_1367->g_1154.s7", print_hash_value);
    transparent_crc(p_1367->g_1154.s8, "p_1367->g_1154.s8", print_hash_value);
    transparent_crc(p_1367->g_1154.s9, "p_1367->g_1154.s9", print_hash_value);
    transparent_crc(p_1367->g_1154.sa, "p_1367->g_1154.sa", print_hash_value);
    transparent_crc(p_1367->g_1154.sb, "p_1367->g_1154.sb", print_hash_value);
    transparent_crc(p_1367->g_1154.sc, "p_1367->g_1154.sc", print_hash_value);
    transparent_crc(p_1367->g_1154.sd, "p_1367->g_1154.sd", print_hash_value);
    transparent_crc(p_1367->g_1154.se, "p_1367->g_1154.se", print_hash_value);
    transparent_crc(p_1367->g_1154.sf, "p_1367->g_1154.sf", print_hash_value);
    transparent_crc(p_1367->g_1157.s0, "p_1367->g_1157.s0", print_hash_value);
    transparent_crc(p_1367->g_1157.s1, "p_1367->g_1157.s1", print_hash_value);
    transparent_crc(p_1367->g_1157.s2, "p_1367->g_1157.s2", print_hash_value);
    transparent_crc(p_1367->g_1157.s3, "p_1367->g_1157.s3", print_hash_value);
    transparent_crc(p_1367->g_1157.s4, "p_1367->g_1157.s4", print_hash_value);
    transparent_crc(p_1367->g_1157.s5, "p_1367->g_1157.s5", print_hash_value);
    transparent_crc(p_1367->g_1157.s6, "p_1367->g_1157.s6", print_hash_value);
    transparent_crc(p_1367->g_1157.s7, "p_1367->g_1157.s7", print_hash_value);
    transparent_crc(p_1367->g_1157.s8, "p_1367->g_1157.s8", print_hash_value);
    transparent_crc(p_1367->g_1157.s9, "p_1367->g_1157.s9", print_hash_value);
    transparent_crc(p_1367->g_1157.sa, "p_1367->g_1157.sa", print_hash_value);
    transparent_crc(p_1367->g_1157.sb, "p_1367->g_1157.sb", print_hash_value);
    transparent_crc(p_1367->g_1157.sc, "p_1367->g_1157.sc", print_hash_value);
    transparent_crc(p_1367->g_1157.sd, "p_1367->g_1157.sd", print_hash_value);
    transparent_crc(p_1367->g_1157.se, "p_1367->g_1157.se", print_hash_value);
    transparent_crc(p_1367->g_1157.sf, "p_1367->g_1157.sf", print_hash_value);
    transparent_crc(p_1367->g_1168, "p_1367->g_1168", print_hash_value);
    transparent_crc(p_1367->g_1175.s0, "p_1367->g_1175.s0", print_hash_value);
    transparent_crc(p_1367->g_1175.s1, "p_1367->g_1175.s1", print_hash_value);
    transparent_crc(p_1367->g_1175.s2, "p_1367->g_1175.s2", print_hash_value);
    transparent_crc(p_1367->g_1175.s3, "p_1367->g_1175.s3", print_hash_value);
    transparent_crc(p_1367->g_1175.s4, "p_1367->g_1175.s4", print_hash_value);
    transparent_crc(p_1367->g_1175.s5, "p_1367->g_1175.s5", print_hash_value);
    transparent_crc(p_1367->g_1175.s6, "p_1367->g_1175.s6", print_hash_value);
    transparent_crc(p_1367->g_1175.s7, "p_1367->g_1175.s7", print_hash_value);
    transparent_crc(p_1367->g_1175.s8, "p_1367->g_1175.s8", print_hash_value);
    transparent_crc(p_1367->g_1175.s9, "p_1367->g_1175.s9", print_hash_value);
    transparent_crc(p_1367->g_1175.sa, "p_1367->g_1175.sa", print_hash_value);
    transparent_crc(p_1367->g_1175.sb, "p_1367->g_1175.sb", print_hash_value);
    transparent_crc(p_1367->g_1175.sc, "p_1367->g_1175.sc", print_hash_value);
    transparent_crc(p_1367->g_1175.sd, "p_1367->g_1175.sd", print_hash_value);
    transparent_crc(p_1367->g_1175.se, "p_1367->g_1175.se", print_hash_value);
    transparent_crc(p_1367->g_1175.sf, "p_1367->g_1175.sf", print_hash_value);
    transparent_crc(p_1367->g_1357, "p_1367->g_1357", print_hash_value);
    transparent_crc(p_1367->g_1358, "p_1367->g_1358", print_hash_value);
    transparent_crc(p_1367->v_collective, "p_1367->v_collective", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 31; i++)
            transparent_crc(p_1367->g_special_values[i + 31 * get_linear_group_id()], "p_1367->g_special_values[i + 31 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 31; i++)
            transparent_crc(p_1367->l_special_values[i], "p_1367->l_special_values[i]", print_hash_value);
    transparent_crc(p_1367->l_comm_values[get_linear_local_id()], "p_1367->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_1367->g_comm_values[get_linear_group_id() * 54 + get_linear_local_id()], "p_1367->g_comm_values[get_linear_group_id() * 54 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
