// --atomics 22 ---atomic_reductions ---fake_divergence ---inter_thread_comm -g 93,11,9 -l 31,1,1
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

__constant uint32_t permutations[10][31] = {
{30,22,3,23,28,11,12,24,9,18,26,13,17,29,8,19,7,4,20,27,5,6,15,16,21,2,10,0,14,1,25}, // permutation 0
{9,28,11,10,8,17,13,14,15,1,21,26,3,30,25,6,5,16,4,7,20,18,27,22,2,29,0,24,19,12,23}, // permutation 1
{29,17,6,13,27,11,21,10,7,22,18,0,24,4,2,20,26,23,28,16,5,25,19,15,1,14,9,12,3,30,8}, // permutation 2
{14,2,11,20,29,16,30,5,10,28,22,19,3,13,7,15,24,0,6,1,25,17,4,26,8,27,21,23,12,18,9}, // permutation 3
{24,0,30,5,15,1,14,18,22,11,8,29,25,19,9,7,16,26,2,28,21,13,27,20,23,17,4,10,6,3,12}, // permutation 4
{23,20,19,0,22,26,14,24,11,8,5,2,13,16,4,9,7,30,27,1,6,28,25,15,17,12,21,10,18,3,29}, // permutation 5
{27,15,5,26,10,1,3,16,11,9,8,13,29,28,7,21,25,18,17,2,30,24,23,0,22,4,6,14,20,19,12}, // permutation 6
{29,0,2,18,25,13,20,26,1,4,3,9,27,30,14,12,15,16,22,21,17,6,23,7,11,28,8,24,10,19,5}, // permutation 7
{14,27,15,6,1,12,13,10,9,5,23,28,7,21,18,2,25,11,4,0,17,20,22,24,30,26,29,3,8,16,19}, // permutation 8
{18,5,9,1,10,12,24,14,19,25,7,11,6,16,8,2,17,29,21,4,13,27,0,23,20,3,15,26,22,30,28} // permutation 9
};

// Seed: 36

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    int32_t g_3[10];
    int32_t *g_5;
    int32_t ** volatile g_4;
    int32_t g_6;
    uint16_t g_23[8];
    volatile VECTOR(int32_t, 8) g_26;
    uint8_t g_34;
    int16_t g_52;
    int16_t g_79;
    VECTOR(uint64_t, 16) g_88;
    uint32_t g_121;
    VECTOR(uint64_t, 2) g_128;
    VECTOR(int32_t, 8) g_129;
    VECTOR(uint16_t, 4) g_135;
    VECTOR(int64_t, 8) g_140;
    int8_t g_165;
    volatile int16_t * volatile g_168;
    volatile int16_t g_170;
    volatile int16_t g_171;
    volatile int16_t *g_169[5];
    volatile int16_t * volatile *g_167[9];
    int32_t g_190;
    VECTOR(int8_t, 8) g_217;
    VECTOR(int8_t, 4) g_218;
    VECTOR(uint32_t, 16) g_225;
    int16_t g_236[5][3];
    volatile int64_t g_240;
    volatile int64_t * volatile g_239;
    volatile int64_t * volatile *g_238;
    VECTOR(int8_t, 8) g_252;
    VECTOR(int16_t, 16) g_253;
    VECTOR(uint16_t, 4) g_256;
    VECTOR(uint8_t, 16) g_296;
    VECTOR(uint8_t, 8) g_299;
    VECTOR(int8_t, 8) g_302;
    VECTOR(int8_t, 8) g_305;
    VECTOR(uint64_t, 4) g_318;
    VECTOR(uint64_t, 4) g_320;
    VECTOR(uint64_t, 2) g_321;
    uint32_t g_334;
    VECTOR(uint64_t, 8) g_337;
    VECTOR(uint64_t, 2) g_340;
    int32_t g_343;
    volatile VECTOR(int32_t, 2) g_689;
    VECTOR(int32_t, 2) g_690;
    int32_t ** volatile g_705;
    VECTOR(uint8_t, 2) g_717;
    uint64_t *g_754;
    int32_t ** volatile g_774;
    int32_t **g_779;
    volatile VECTOR(int32_t, 8) g_980;
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
int64_t  func_1(struct S0 * p_996);
int32_t * func_12(int32_t * p_13, int32_t * p_14, int32_t ** p_15, int32_t ** p_16, int32_t  p_17, struct S0 * p_996);
int32_t ** func_20(int8_t  p_21, struct S0 * p_996);
int16_t  func_24(uint16_t * p_25, struct S0 * p_996);
int32_t * func_28(int8_t  p_29, struct S0 * p_996);
int32_t * func_37(uint8_t * p_38, int32_t * p_39, int64_t  p_40, struct S0 * p_996);
int32_t * func_41(int32_t  p_42, uint8_t * p_43, int32_t * p_44, int16_t  p_45, uint64_t  p_46, struct S0 * p_996);
int32_t * func_48(int16_t  p_49, uint8_t * p_50, struct S0 * p_996);
int32_t  func_55(uint64_t  p_56, int64_t  p_57, struct S0 * p_996);
int16_t  func_64(uint32_t  p_65, struct S0 * p_996);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_996->g_3 p_996->g_4 p_996->g_6 p_996->g_121 p_996->g_5
 * writes: p_996->g_3 p_996->g_5 p_996->g_6 p_996->g_121
 */
int64_t  func_1(struct S0 * p_996)
{ /* block id: 4 */
    int32_t *l_2 = &p_996->g_3[6];
    int32_t *l_18[1][4] = {{&p_996->g_3[6],&p_996->g_3[6],&p_996->g_3[6],&p_996->g_3[6]}};
    int8_t l_965 = 5L;
    int i, j;
    (*l_2) &= 1L;
    (*p_996->g_4) = l_2;
    for (p_996->g_6 = 0; (p_996->g_6 <= 8); p_996->g_6 = safe_add_func_int8_t_s_s(p_996->g_6, 9))
    { /* block id: 9 */
        int16_t l_9 = 0x286BL;
        int32_t *l_19 = &p_996->g_3[6];
        uint64_t l_936 = 0xD84164CA0CBEF4F0L;
        uint32_t l_963[9] = {0x217DCE2EL,0x217DCE2EL,0x217DCE2EL,0x217DCE2EL,0x217DCE2EL,0x217DCE2EL,0x217DCE2EL,0x217DCE2EL,0x217DCE2EL};
        uint8_t l_964 = 0x39L;
        uint32_t l_991 = 4294967292UL;
        int32_t l_992 = 1L;
        int i;
        l_9 &= (*l_2);
    }
    for (p_996->g_121 = (-24); (p_996->g_121 >= 25); ++p_996->g_121)
    { /* block id: 443 */
        int8_t l_995 = 0x6BL;
        (*p_996->g_5) ^= l_995;
    }
    return (*l_2);
}


/* ------------------------------------------ */
/* 
 * reads : p_996->g_34 p_996->l_comm_values p_996->g_23 p_996->g_4 p_996->g_5
 * writes: p_996->g_305 p_996->g_34 p_996->g_217 p_996->l_comm_values p_996->g_3
 */
int32_t * func_12(int32_t * p_13, int32_t * p_14, int32_t ** p_15, int32_t ** p_16, int32_t  p_17, struct S0 * p_996)
{ /* block id: 344 */
    VECTOR(int64_t, 2) l_782 = (VECTOR(int64_t, 2))(1L, 0x5639462A6A8DDEB5L);
    int32_t l_783[10][4][6] = {{{(-1L),(-1L),0x0E84EC32L,0x00F5C25CL,0L,9L},{(-1L),(-1L),0x0E84EC32L,0x00F5C25CL,0L,9L},{(-1L),(-1L),0x0E84EC32L,0x00F5C25CL,0L,9L},{(-1L),(-1L),0x0E84EC32L,0x00F5C25CL,0L,9L}},{{(-1L),(-1L),0x0E84EC32L,0x00F5C25CL,0L,9L},{(-1L),(-1L),0x0E84EC32L,0x00F5C25CL,0L,9L},{(-1L),(-1L),0x0E84EC32L,0x00F5C25CL,0L,9L},{(-1L),(-1L),0x0E84EC32L,0x00F5C25CL,0L,9L}},{{(-1L),(-1L),0x0E84EC32L,0x00F5C25CL,0L,9L},{(-1L),(-1L),0x0E84EC32L,0x00F5C25CL,0L,9L},{(-1L),(-1L),0x0E84EC32L,0x00F5C25CL,0L,9L},{(-1L),(-1L),0x0E84EC32L,0x00F5C25CL,0L,9L}},{{(-1L),(-1L),0x0E84EC32L,0x00F5C25CL,0L,9L},{(-1L),(-1L),0x0E84EC32L,0x00F5C25CL,0L,9L},{(-1L),(-1L),0x0E84EC32L,0x00F5C25CL,0L,9L},{(-1L),(-1L),0x0E84EC32L,0x00F5C25CL,0L,9L}},{{(-1L),(-1L),0x0E84EC32L,0x00F5C25CL,0L,9L},{(-1L),(-1L),0x0E84EC32L,0x00F5C25CL,0L,9L},{(-1L),(-1L),0x0E84EC32L,0x00F5C25CL,0L,9L},{(-1L),(-1L),0x0E84EC32L,0x00F5C25CL,0L,9L}},{{(-1L),(-1L),0x0E84EC32L,0x00F5C25CL,0L,9L},{(-1L),(-1L),0x0E84EC32L,0x00F5C25CL,0L,9L},{(-1L),(-1L),0x0E84EC32L,0x00F5C25CL,0L,9L},{(-1L),(-1L),0x0E84EC32L,0x00F5C25CL,0L,9L}},{{(-1L),(-1L),0x0E84EC32L,0x00F5C25CL,0L,9L},{(-1L),(-1L),0x0E84EC32L,0x00F5C25CL,0L,9L},{(-1L),(-1L),0x0E84EC32L,0x00F5C25CL,0L,9L},{(-1L),(-1L),0x0E84EC32L,0x00F5C25CL,0L,9L}},{{(-1L),(-1L),0x0E84EC32L,0x00F5C25CL,0L,9L},{(-1L),(-1L),0x0E84EC32L,0x00F5C25CL,0L,9L},{(-1L),(-1L),0x0E84EC32L,0x00F5C25CL,0L,9L},{(-1L),(-1L),0x0E84EC32L,0x00F5C25CL,0L,9L}},{{(-1L),(-1L),0x0E84EC32L,0x00F5C25CL,0L,9L},{(-1L),(-1L),0x0E84EC32L,0x00F5C25CL,0L,9L},{(-1L),(-1L),0x0E84EC32L,0x00F5C25CL,0L,9L},{(-1L),(-1L),0x0E84EC32L,0x00F5C25CL,0L,9L}},{{(-1L),(-1L),0x0E84EC32L,0x00F5C25CL,0L,9L},{(-1L),(-1L),0x0E84EC32L,0x00F5C25CL,0L,9L},{(-1L),(-1L),0x0E84EC32L,0x00F5C25CL,0L,9L},{(-1L),(-1L),0x0E84EC32L,0x00F5C25CL,0L,9L}}};
    int8_t *l_789 = (void*)0;
    int8_t *l_790 = (void*)0;
    int8_t *l_791[6];
    int32_t l_792[5] = {2L,2L,2L,2L,2L};
    uint8_t *l_793 = (void*)0;
    uint8_t *l_794 = (void*)0;
    uint8_t *l_795 = &p_996->g_34;
    int64_t *l_814 = (void*)0;
    int64_t *l_815 = (void*)0;
    int i, j, k;
    for (i = 0; i < 6; i++)
        l_791[i] = (void*)0;
    (**p_15) = (safe_sub_func_uint32_t_u_u((l_783[8][1][4] |= (((VECTOR(int64_t, 16))(((VECTOR(int64_t, 16))(l_782.yyxxyxxyyyxxyxyy)))).s3 , l_782.x)), (((*l_795) |= (safe_add_func_uint64_t_u_u(0UL, (safe_lshift_func_int8_t_s_s((l_792[2] = (safe_unary_minus_func_int64_t_s(0x08C9396DAD7435E5L))), (p_996->g_305.s1 = (-1L))))))) , (safe_rshift_func_uint16_t_u_u((safe_mod_func_uint64_t_u_u((safe_add_func_int8_t_s_s(((VECTOR(int8_t, 2))((-3L), 0x11L)).odd, (safe_mul_func_uint16_t_u_u((~((0x1084L && 0x1807L) > (p_996->g_217.s4 = l_792[2]))), ((((safe_add_func_int8_t_s_s(p_17, (safe_mod_func_int64_t_s_s((safe_add_func_int8_t_s_s((~(safe_mul_func_int16_t_s_s((((safe_mul_func_int16_t_s_s(((((p_996->l_comm_values[(safe_mod_func_uint32_t_u_u(p_996->tid, 31))] &= 8L) , p_17) , 246UL) != 0xC4L), 1UL)) , p_996->g_23[4]) , l_792[4]), 0UL))), l_792[2])), p_17)))) != 4294967295UL) , 4294967292UL) != p_17))))), 7UL)), 10)))));
    return (*p_996->g_4);
}


/* ------------------------------------------ */
/* 
 * reads : p_996->g_5 p_996->g_23 p_996->g_26 p_996->g_52 p_996->g_3 p_996->g_79 p_996->g_88 p_996->g_comm_values p_996->g_34 p_996->g_121 p_996->g_128 p_996->g_129 p_996->g_135 p_996->g_140 p_996->l_comm_values p_996->g_165 p_996->g_167 p_996->g_6 p_996->g_190 p_996->g_217 p_996->g_218 p_996->g_225 p_996->g_238 p_996->g_252 p_996->g_253 p_996->g_256 p_996->g_296 p_996->g_299 p_996->g_302 p_996->g_305 p_996->g_318 p_996->g_320 p_996->g_321 p_996->g_334 p_996->g_337 p_996->g_340 p_996->g_343 p_996->g_689 p_996->g_690 p_996->g_4 p_996->g_705 p_996->g_717 p_996->g_754 p_996->g_239 p_996->g_236 p_996->g_774
 * writes: p_996->g_3 p_996->g_34 p_996->g_52 p_996->g_79 p_996->g_121 p_996->g_165 p_996->g_167 p_996->g_190 p_996->g_236 p_996->g_238 p_996->g_comm_values p_996->g_225 p_996->g_334 p_996->g_343 p_996->g_5 p_996->g_717 p_996->g_23 p_996->g_754
 */
int32_t ** func_20(int8_t  p_21, struct S0 * p_996)
{ /* block id: 18 */
    uint64_t l_32 = 0UL;
    uint8_t *l_33 = &p_996->g_34;
    int32_t **l_775 = (void*)0;
    (*p_996->g_774) = func_28((l_32 && ((0x07C837E0L | ((*p_996->g_5) = (-1L))) , ((*l_33) = (!p_996->g_23[4])))), p_996);
    return l_775;
}


/* ------------------------------------------ */
/* 
 * reads : p_996->g_26 p_996->g_5
 * writes: p_996->g_3
 */
int16_t  func_24(uint16_t * p_25, struct S0 * p_996)
{ /* block id: 15 */
    int64_t l_27[5][9] = {{4L,0L,0x7C72FA5D8720725FL,0x1D88C83B91359A70L,0L,0x1D88C83B91359A70L,0x7C72FA5D8720725FL,0L,4L},{4L,0L,0x7C72FA5D8720725FL,0x1D88C83B91359A70L,0L,0x1D88C83B91359A70L,0x7C72FA5D8720725FL,0L,4L},{4L,0L,0x7C72FA5D8720725FL,0x1D88C83B91359A70L,0L,0x1D88C83B91359A70L,0x7C72FA5D8720725FL,0L,4L},{4L,0L,0x7C72FA5D8720725FL,0x1D88C83B91359A70L,0L,0x1D88C83B91359A70L,0x7C72FA5D8720725FL,0L,4L},{4L,0L,0x7C72FA5D8720725FL,0x1D88C83B91359A70L,0L,0x1D88C83B91359A70L,0x7C72FA5D8720725FL,0L,4L}};
    int i, j;
    (*p_996->g_5) = ((0L && 0xA98CEEF9A8551B32L) != ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(p_996->g_26.s3766)).yzzzwwwx)).s6);
    return l_27[3][3];
}


/* ------------------------------------------ */
/* 
 * reads : p_996->g_26 p_996->g_23 p_996->g_52 p_996->g_3 p_996->g_79 p_996->g_88 p_996->g_comm_values p_996->g_5 p_996->g_34 p_996->g_121 p_996->g_128 p_996->g_129 p_996->g_135 p_996->g_140 p_996->l_comm_values p_996->g_165 p_996->g_167 p_996->g_6 p_996->g_190 p_996->g_217 p_996->g_218 p_996->g_225 p_996->g_238 p_996->g_252 p_996->g_253 p_996->g_256 p_996->g_296 p_996->g_299 p_996->g_302 p_996->g_305 p_996->g_318 p_996->g_320 p_996->g_321 p_996->g_334 p_996->g_337 p_996->g_340 p_996->g_343 p_996->g_689 p_996->g_690 p_996->g_4 p_996->g_705 p_996->g_717 p_996->g_754 p_996->g_239 p_996->g_236
 * writes: p_996->g_52 p_996->g_79 p_996->g_121 p_996->g_165 p_996->g_34 p_996->g_167 p_996->g_3 p_996->g_190 p_996->g_236 p_996->g_238 p_996->g_comm_values p_996->g_225 p_996->g_334 p_996->g_343 p_996->g_5 p_996->g_717 p_996->g_23 p_996->g_754
 */
int32_t * func_28(int8_t  p_29, struct S0 * p_996)
{ /* block id: 21 */
    uint8_t *l_47 = (void*)0;
    int32_t l_709 = (-10L);
    VECTOR(uint8_t, 16) l_716 = (VECTOR(uint8_t, 16))(0xBDL, (VECTOR(uint8_t, 4))(0xBDL, (VECTOR(uint8_t, 2))(0xBDL, 0UL), 0UL), 0UL, 0xBDL, 0UL, (VECTOR(uint8_t, 2))(0xBDL, 0UL), (VECTOR(uint8_t, 2))(0xBDL, 0UL), 0xBDL, 0UL, 0xBDL, 0UL);
    int32_t l_723 = (-3L);
    uint16_t *l_734 = &p_996->g_23[1];
    uint64_t **l_755 = &p_996->g_754;
    int16_t *l_756[7] = {&p_996->g_236[4][2],&p_996->g_236[4][2],&p_996->g_236[4][2],&p_996->g_236[4][2],&p_996->g_236[4][2],&p_996->g_236[4][2],&p_996->g_236[4][2]};
    int8_t l_757[1][10] = {{0x44L,0L,0x44L,0x44L,0L,0x44L,0x44L,0L,0x44L,0x44L}};
    int32_t *l_758 = &p_996->g_190;
    VECTOR(int8_t, 8) l_765 = (VECTOR(int8_t, 8))(0x73L, (VECTOR(int8_t, 4))(0x73L, (VECTOR(int8_t, 2))(0x73L, 3L), 3L), 3L, 0x73L, 3L);
    int64_t ***l_766 = (void*)0;
    int64_t *l_768 = (void*)0;
    int64_t **l_767[7][7][5] = {{{&l_768,&l_768,&l_768,&l_768,&l_768},{&l_768,&l_768,&l_768,&l_768,&l_768},{&l_768,&l_768,&l_768,&l_768,&l_768},{&l_768,&l_768,&l_768,&l_768,&l_768},{&l_768,&l_768,&l_768,&l_768,&l_768},{&l_768,&l_768,&l_768,&l_768,&l_768},{&l_768,&l_768,&l_768,&l_768,&l_768}},{{&l_768,&l_768,&l_768,&l_768,&l_768},{&l_768,&l_768,&l_768,&l_768,&l_768},{&l_768,&l_768,&l_768,&l_768,&l_768},{&l_768,&l_768,&l_768,&l_768,&l_768},{&l_768,&l_768,&l_768,&l_768,&l_768},{&l_768,&l_768,&l_768,&l_768,&l_768},{&l_768,&l_768,&l_768,&l_768,&l_768}},{{&l_768,&l_768,&l_768,&l_768,&l_768},{&l_768,&l_768,&l_768,&l_768,&l_768},{&l_768,&l_768,&l_768,&l_768,&l_768},{&l_768,&l_768,&l_768,&l_768,&l_768},{&l_768,&l_768,&l_768,&l_768,&l_768},{&l_768,&l_768,&l_768,&l_768,&l_768},{&l_768,&l_768,&l_768,&l_768,&l_768}},{{&l_768,&l_768,&l_768,&l_768,&l_768},{&l_768,&l_768,&l_768,&l_768,&l_768},{&l_768,&l_768,&l_768,&l_768,&l_768},{&l_768,&l_768,&l_768,&l_768,&l_768},{&l_768,&l_768,&l_768,&l_768,&l_768},{&l_768,&l_768,&l_768,&l_768,&l_768},{&l_768,&l_768,&l_768,&l_768,&l_768}},{{&l_768,&l_768,&l_768,&l_768,&l_768},{&l_768,&l_768,&l_768,&l_768,&l_768},{&l_768,&l_768,&l_768,&l_768,&l_768},{&l_768,&l_768,&l_768,&l_768,&l_768},{&l_768,&l_768,&l_768,&l_768,&l_768},{&l_768,&l_768,&l_768,&l_768,&l_768},{&l_768,&l_768,&l_768,&l_768,&l_768}},{{&l_768,&l_768,&l_768,&l_768,&l_768},{&l_768,&l_768,&l_768,&l_768,&l_768},{&l_768,&l_768,&l_768,&l_768,&l_768},{&l_768,&l_768,&l_768,&l_768,&l_768},{&l_768,&l_768,&l_768,&l_768,&l_768},{&l_768,&l_768,&l_768,&l_768,&l_768},{&l_768,&l_768,&l_768,&l_768,&l_768}},{{&l_768,&l_768,&l_768,&l_768,&l_768},{&l_768,&l_768,&l_768,&l_768,&l_768},{&l_768,&l_768,&l_768,&l_768,&l_768},{&l_768,&l_768,&l_768,&l_768,&l_768},{&l_768,&l_768,&l_768,&l_768,&l_768},{&l_768,&l_768,&l_768,&l_768,&l_768},{&l_768,&l_768,&l_768,&l_768,&l_768}}};
    VECTOR(uint8_t, 8) l_769 = (VECTOR(uint8_t, 8))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 254UL), 254UL), 254UL, 255UL, 254UL);
    uint8_t *l_772[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    uint8_t l_773[2][4][7] = {{{0x47L,0x47L,248UL,0x66L,255UL,0x66L,248UL},{0x47L,0x47L,248UL,0x66L,255UL,0x66L,248UL},{0x47L,0x47L,248UL,0x66L,255UL,0x66L,248UL},{0x47L,0x47L,248UL,0x66L,255UL,0x66L,248UL}},{{0x47L,0x47L,248UL,0x66L,255UL,0x66L,248UL},{0x47L,0x47L,248UL,0x66L,255UL,0x66L,248UL},{0x47L,0x47L,248UL,0x66L,255UL,0x66L,248UL},{0x47L,0x47L,248UL,0x66L,255UL,0x66L,248UL}}};
    int i, j, k;
    for (p_29 = (-14); (p_29 < 23); ++p_29)
    { /* block id: 24 */
        int16_t *l_51 = &p_996->g_52;
        int32_t **l_684 = &p_996->g_5;
        int32_t l_708 = 0x7275BB6FL;
        int64_t l_710[7];
        VECTOR(int8_t, 8) l_713 = (VECTOR(int8_t, 8))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x56L), 0x56L), 0x56L, (-1L), 0x56L);
        int8_t *l_718[9] = {&p_996->g_165,(void*)0,&p_996->g_165,&p_996->g_165,(void*)0,&p_996->g_165,&p_996->g_165,(void*)0,&p_996->g_165};
        VECTOR(int8_t, 2) l_719 = (VECTOR(int8_t, 2))((-9L), 0x16L);
        int64_t *l_722 = (void*)0;
        uint8_t *l_725 = (void*)0;
        uint8_t *l_726 = &p_996->g_34;
        int i;
        for (i = 0; i < 7; i++)
            l_710[i] = 0x4070C09348ADC13CL;
        (*l_684) = func_37(&p_996->g_34, func_41(p_996->g_26.s2, l_47, ((*l_684) = func_48(((*l_51) = p_996->g_23[1]), l_47, p_996)), p_996->g_253.s9, p_996->g_252.s6, p_996), p_996->g_320.x, p_996);
        (*l_684) = (((((safe_sub_func_int32_t_s_s(l_708, ((((p_29 != p_29) && ((p_29 , p_29) && (((*l_51) = l_709) < l_710[2]))) || 0x1B03L) != (l_709 > p_996->g_321.x)))) | l_709) <= 65526UL) , 0x2687B4C5L) , &l_709);
        if ((safe_add_func_int16_t_s_s(((((VECTOR(int8_t, 4))(mad_sat(((VECTOR(int8_t, 2))(mad_sat(((VECTOR(int8_t, 16))(l_713.s2753305621503640)).s09, ((VECTOR(int8_t, 4))(mul_hi(((VECTOR(int8_t, 16))((safe_rshift_func_uint8_t_u_u(((VECTOR(uint8_t, 8))(add_sat(((VECTOR(uint8_t, 8))(l_716.s2a96b1d8)), ((VECTOR(uint8_t, 4))(p_996->g_717.yyxx)).zzzywzxz))).s2, 2)), ((VECTOR(int8_t, 8))(0L, (-1L), (l_709 = l_716.s2), 6L, (-1L), ((VECTOR(int8_t, 2))(max(((VECTOR(int8_t, 8))(clz(((VECTOR(int8_t, 4))(l_719.xyxy)).yyyzyxzx))).s21, (int8_t)(p_29 == (safe_sub_func_uint32_t_u_u((l_709 <= ((l_723 = ((65526UL < ((*l_51) = (p_29 , (&p_996->g_34 != (void*)0)))) != p_29)) ^ (safe_unary_minus_func_int64_t_s((((*l_726) = (p_996->g_717.y = 246UL)) == GROUP_DIVERGE(2, 1)))))), (**p_996->g_4))))))), (-6L))).s4, 0x73L, ((VECTOR(int8_t, 8))(0x4DL)), ((VECTOR(int8_t, 2))(0x69L)), ((VECTOR(int8_t, 2))(0x5CL)), 0L)).sfc33, ((VECTOR(int8_t, 4))(0x53L))))).even, ((VECTOR(int8_t, 2))(0L))))).xxyy, ((VECTOR(int8_t, 4))(0x0AL)), ((VECTOR(int8_t, 4))(0L))))).z & p_29) == l_713.s6), (-1L))))
        { /* block id: 323 */
            VECTOR(int16_t, 16) l_729 = (VECTOR(int16_t, 16))(0x5EE8L, (VECTOR(int16_t, 4))(0x5EE8L, (VECTOR(int16_t, 2))(0x5EE8L, 0x0C82L), 0x0C82L), 0x0C82L, 0x5EE8L, 0x0C82L, (VECTOR(int16_t, 2))(0x5EE8L, 0x0C82L), (VECTOR(int16_t, 2))(0x5EE8L, 0x0C82L), 0x5EE8L, 0x0C82L, 0x5EE8L, 0x0C82L);
            int32_t *l_730 = &p_996->g_3[7];
            int i;
            (*p_996->g_5) = (safe_mul_func_uint64_t_u_u((((VECTOR(uint16_t, 8))(abs(((VECTOR(int16_t, 8))(l_729.se41d53b9))))).s4 && (**l_684)), 0L));
            return l_730;
        }
        else
        { /* block id: 326 */
            int32_t *l_731 = &p_996->g_3[6];
            (*l_684) = (*p_996->g_4);
            return l_731;
        }
    }
    (*l_758) |= (l_709 = (safe_rshift_func_uint16_t_u_s(0x8EB4L, (((((*l_734) = 0UL) , (safe_div_func_uint16_t_u_u(0xD78EL, (((safe_lshift_func_int8_t_s_s((safe_lshift_func_int16_t_s_s((p_996->g_236[0][0] = (l_723 = ((((!(safe_lshift_func_uint8_t_u_u(((safe_add_func_uint64_t_u_u(((void*)0 != l_47), (safe_div_func_uint16_t_u_u(p_996->g_3[6], (safe_lshift_func_int16_t_s_u(p_29, 8)))))) && (safe_unary_minus_func_uint32_t_u(FAKE_DIVERGE(p_996->global_1_offset, get_global_id(1), 10)))), 4))) == (safe_sub_func_int32_t_s_s((((safe_mul_func_int8_t_s_s(((((*l_755) = p_996->g_754) == p_996->g_239) > 0xA639L), 5UL)) & p_29) & l_723), p_996->g_302.s2))) > p_996->g_305.s4) , 1L))), 3)), p_29)) | p_996->g_252.s1) , l_757[0][5])))) , FAKE_DIVERGE(p_996->group_0_offset, get_group_id(0), 10)) != l_716.s8))));
    (*p_996->g_5) = ((*l_758) = (safe_mod_func_uint8_t_u_u(((p_29 && (((safe_add_func_uint16_t_u_u((safe_div_func_uint64_t_u_u((((VECTOR(int8_t, 2))(l_765.s77)).even != ((VECTOR(uint8_t, 2))(rotate(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(safe_clamp_func(VECTOR(uint8_t, 2),uint8_t,((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))((l_766 == ((l_767[4][5][0] != &p_996->g_239) , &l_767[4][2][2])), 0x4FL, 0UL, 1UL)), ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(l_769.s0406)).even)), p_996->g_337.s4, 0x06L, (l_773[1][2][0] = (safe_sub_func_uint8_t_u_u(p_29, ((((*l_758) & 0x7EE35CC503791637L) < p_996->g_236[3][1]) , p_29)))), 253UL, (*l_758), 255UL, 0UL, 0UL, 0xF7L, 250UL)).even)).s07)), 0UL, 249UL)).lo, (uint8_t)p_996->g_88.s8, (uint8_t)p_996->g_140.s3))).yyxyyyyxyyyyxyyy)).s35)), ((VECTOR(uint8_t, 2))(0UL))))).lo), (*l_758))), (*l_758))) , p_29) , (*l_758))) != (*l_758)), p_996->g_34)));
    return (*p_996->g_4);
}


/* ------------------------------------------ */
/* 
 * reads : p_996->g_5
 * writes: p_996->g_190 p_996->g_3
 */
int32_t * func_37(uint8_t * p_38, int32_t * p_39, int64_t  p_40, struct S0 * p_996)
{ /* block id: 312 */
    (*p_996->g_5) = ((VECTOR(int32_t, 2))(1L, 0x5AB15E58L)).even;
    return p_39;
}


/* ------------------------------------------ */
/* 
 * reads : p_996->g_689 p_996->g_690 p_996->g_321 p_996->g_52 p_996->g_4 p_996->g_5 p_996->g_705
 * writes: p_996->g_3 p_996->g_52 p_996->g_5
 */
int32_t * func_41(int32_t  p_42, uint8_t * p_43, int32_t * p_44, int16_t  p_45, uint64_t  p_46, struct S0 * p_996)
{ /* block id: 298 */
    VECTOR(int32_t, 16) l_691 = (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0L), 0L), 0L, 1L, 0L, (VECTOR(int32_t, 2))(1L, 0L), (VECTOR(int32_t, 2))(1L, 0L), 1L, 0L, 1L, 0L);
    uint32_t *l_697 = (void*)0;
    uint32_t *l_700 = (void*)0;
    int32_t *l_703 = (void*)0;
    int i;
    for (p_46 = 0; (p_46 <= 15); ++p_46)
    { /* block id: 301 */
        VECTOR(int32_t, 16) l_688 = (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x764D03F2L), 0x764D03F2L), 0x764D03F2L, 0L, 0x764D03F2L, (VECTOR(int32_t, 2))(0L, 0x764D03F2L), (VECTOR(int32_t, 2))(0L, 0x764D03F2L), 0L, 0x764D03F2L, 0L, 0x764D03F2L);
        int64_t *l_694 = (void*)0;
        uint32_t *l_698 = (void*)0;
        uint32_t **l_699[7] = {&l_698,&l_698,&l_698,&l_698,&l_698,&l_698,&l_698};
        int i;
        (*p_44) = (safe_unary_minus_func_int32_t_s(((VECTOR(int32_t, 2))(min(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(l_688.s11f2)))).wwxwzxwz, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(rhadd(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(p_996->g_689.xxxx)), ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(p_996->g_690.yy)).xyxy)).wzwzxzyyywyyxxxz)).s0c46)), ((VECTOR(int32_t, 2))(sub_sat(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(0x21DE824AL, 0x169BA3B6L)).yxxy)).zyyzwwwx)).s76, ((VECTOR(int32_t, 8))(l_691.se3ad14fc)).s22))), ((GROUP_DIVERGE(0, 1) ^ (safe_mul_func_int16_t_s_s(((&p_996->g_165 != (void*)0) < ((l_694 == ((((safe_div_func_int8_t_s_s((l_697 != (l_700 = l_698)), 0x55L)) == (-4L)) ^ p_996->g_321.x) , (void*)0)) | 0x26FCL)), 0xC5FEL))) || p_46), 1L, (-1L), ((VECTOR(int32_t, 2))(0L)), (-1L))).se73a, ((VECTOR(int32_t, 4))((-10L)))))).wyyyyzxy)), ((VECTOR(int32_t, 8))(0x6B08961DL))))).hi)).xwxwwywyzxwwwxyz)).sef)), (int32_t)l_688.sb))).odd));
    }
    for (p_996->g_52 = (-18); (p_996->g_52 < 3); p_996->g_52 = safe_add_func_uint64_t_u_u(p_996->g_52, 7))
    { /* block id: 307 */
        int32_t *l_704 = &p_996->g_190;
        l_703 = (*p_996->g_4);
        (*p_996->g_705) = l_704;
    }
    return l_700;
}


/* ------------------------------------------ */
/* 
 * reads : p_996->g_52 p_996->g_3 p_996->g_79 p_996->g_88 p_996->g_comm_values p_996->g_5 p_996->g_34 p_996->g_121 p_996->g_128 p_996->g_129 p_996->g_135 p_996->g_140 p_996->l_comm_values p_996->g_165 p_996->g_167 p_996->g_6 p_996->g_190 p_996->g_217 p_996->g_218 p_996->g_225 p_996->g_238 p_996->g_252 p_996->g_253 p_996->g_256 p_996->g_296 p_996->g_299 p_996->g_302 p_996->g_305 p_996->g_318 p_996->g_320 p_996->g_321 p_996->g_334 p_996->g_337 p_996->g_340 p_996->g_343
 * writes: p_996->g_52 p_996->g_79 p_996->g_121 p_996->g_165 p_996->g_34 p_996->g_167 p_996->g_3 p_996->g_190 p_996->g_236 p_996->g_238 p_996->g_comm_values p_996->g_225 p_996->g_334 p_996->g_343
 */
int32_t * func_48(int16_t  p_49, uint8_t * p_50, struct S0 * p_996)
{ /* block id: 26 */
    int32_t l_73 = 0L;
    VECTOR(int8_t, 8) l_75 = (VECTOR(int8_t, 8))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x3EL), 0x3EL), 0x3EL, (-1L), 0x3EL);
    int32_t l_349[9] = {0x7DABA2F5L,1L,0x7DABA2F5L,0x7DABA2F5L,1L,0x7DABA2F5L,0x7DABA2F5L,1L,0x7DABA2F5L};
    int8_t l_350 = 0x51L;
    int i;
    for (p_996->g_52 = 10; (p_996->g_52 != 5); p_996->g_52--)
    { /* block id: 29 */
        uint32_t l_66 = 6UL;
        VECTOR(int8_t, 4) l_74 = (VECTOR(int8_t, 4))(0x0DL, (VECTOR(int8_t, 2))(0x0DL, (-1L)), (-1L));
        int16_t *l_77 = &p_996->g_52;
        int16_t **l_76 = &l_77;
        int16_t *l_78 = &p_996->g_79;
        int32_t l_89 = 0x16490A06L;
        int32_t *l_341 = (void*)0;
        int32_t *l_342 = (void*)0;
        int32_t *l_344 = (void*)0;
        int32_t *l_345 = (void*)0;
        int32_t *l_346 = (void*)0;
        int32_t *l_347 = (void*)0;
        int32_t *l_348[8] = {&p_996->g_190,&l_73,&p_996->g_190,&p_996->g_190,&l_73,&p_996->g_190,&p_996->g_190,&l_73};
        int64_t l_351 = 0x6200000DF9B1FE86L;
        uint8_t l_352 = 0UL;
        int i;
        p_996->g_343 &= (func_55((safe_sub_func_int16_t_s_s((safe_mul_func_uint8_t_u_u((((safe_mul_func_int16_t_s_s(func_64((l_89 = (((l_66--) , (safe_rshift_func_int16_t_s_s((safe_add_func_int16_t_s_s(0x709CL, l_73)), ((*l_78) |= (((((VECTOR(int8_t, 16))(sub_sat(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(l_74.ywyw)).odd)).xxyxyyxxxxyyyyyy, ((VECTOR(int8_t, 16))(l_75.s1700257707123137))))).sd , &p_996->g_52) != ((*l_76) = (void*)0)) , p_996->g_3[6]))))) || (safe_rshift_func_uint16_t_u_u(p_996->g_79, (255UL && ((safe_sub_func_uint32_t_u_u(((((safe_sub_func_int32_t_s_s((safe_div_func_int16_t_s_s(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(upsample(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(mad_sat(((VECTOR(int8_t, 16))(0x63L, 9L, ((!0xE91BE676CD85683DL) == (((VECTOR(uint64_t, 2))(p_996->g_88.sd5)).lo != 0UL)), ((VECTOR(int8_t, 8))(0x1BL)), (-7L), ((VECTOR(int8_t, 2))(0x30L)), (-1L), (-1L))).s1e, ((VECTOR(int8_t, 2))(0x2CL)), ((VECTOR(int8_t, 2))(0L))))).yyyyxyxyyxyyyyxx)).s50d6, ((VECTOR(uint8_t, 4))(0xE9L))))).zxyxzxzz)).s6, l_75.s6)), 0x5B647B0CL)) != l_73) , l_75.s7) , 0x76B3EC5FL), p_49)) > p_996->g_comm_values[p_996->tid])))))), p_996), l_74.x)) , 1L) && 1L), 0L)), p_49)), l_74.z, p_996) == p_49);
        l_352++;
        if ((atomic_inc(&p_996->l_atomic_input[5]) == 4))
        { /* block id: 104 */
            uint8_t l_355 = 0xACL;
            int32_t l_359[1];
            int32_t *l_358 = &l_359[0];
            int32_t *l_360[2];
            int i;
            for (i = 0; i < 1; i++)
                l_359[i] = 0x65FC8E73L;
            for (i = 0; i < 2; i++)
                l_360[i] = &l_359[0];
            --l_355;
            l_360[1] = l_358;
            unsigned int result = 0;
            result += l_355;
            int l_359_i0;
            for (l_359_i0 = 0; l_359_i0 < 1; l_359_i0++) {
                result += l_359[l_359_i0];
            }
            atomic_add(&p_996->l_special_values[5], result);
        }
        else
        { /* block id: 107 */
            (1 + 1);
        }
    }
    if ((atomic_inc(&p_996->g_atomic_input[22 * get_linear_group_id() + 20]) == 4))
    { /* block id: 112 */
        int32_t l_361 = 0x57D29463L;
        uint8_t l_471 = 0x5FL;
        VECTOR(int32_t, 2) l_667 = (VECTOR(int32_t, 2))(0x52DA7C41L, 0x263904A0L);
        int32_t l_668 = (-10L);
        VECTOR(int32_t, 8) l_669 = (VECTOR(int32_t, 8))((-9L), (VECTOR(int32_t, 4))((-9L), (VECTOR(int32_t, 2))((-9L), 7L), 7L), 7L, (-9L), 7L);
        VECTOR(int8_t, 16) l_670 = (VECTOR(int8_t, 16))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0x2FL), 0x2FL), 0x2FL, 0L, 0x2FL, (VECTOR(int8_t, 2))(0L, 0x2FL), (VECTOR(int8_t, 2))(0L, 0x2FL), 0L, 0x2FL, 0L, 0x2FL);
        int64_t l_671 = 0x4EC1622DEBD135EBL;
        int32_t l_672 = 4L;
        int32_t l_673[3];
        VECTOR(int32_t, 8) l_674 = (VECTOR(int32_t, 8))((-7L), (VECTOR(int32_t, 4))((-7L), (VECTOR(int32_t, 2))((-7L), 0x2CA10CD2L), 0x2CA10CD2L), 0x2CA10CD2L, (-7L), 0x2CA10CD2L);
        uint64_t l_675[3];
        uint8_t l_676 = 0x22L;
        int32_t l_677 = 8L;
        int32_t l_678 = (-1L);
        uint16_t l_679 = 0UL;
        uint16_t l_680 = 0x15B1L;
        uint32_t l_681 = 0xECD644C6L;
        int64_t l_682 = 0x11B55CD0A3F753DEL;
        VECTOR(uint8_t, 8) l_683 = (VECTOR(uint8_t, 8))(0x00L, (VECTOR(uint8_t, 4))(0x00L, (VECTOR(uint8_t, 2))(0x00L, 0x60L), 0x60L), 0x60L, 0x00L, 0x60L);
        int i;
        for (i = 0; i < 3; i++)
            l_673[i] = 1L;
        for (i = 0; i < 3; i++)
            l_675[i] = 0x746BDA9C095B26ABL;
        for (l_361 = 0; (l_361 == 25); l_361++)
        { /* block id: 115 */
            uint8_t l_364 = 246UL;
            VECTOR(int32_t, 16) l_388 = (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, (-4L)), (-4L)), (-4L), 1L, (-4L), (VECTOR(int32_t, 2))(1L, (-4L)), (VECTOR(int32_t, 2))(1L, (-4L)), 1L, (-4L), 1L, (-4L));
            uint64_t l_389[7];
            int16_t l_390 = 0x15CDL;
            uint32_t l_391 = 0x04B57859L;
            VECTOR(int16_t, 16) l_392 = (VECTOR(int16_t, 16))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x6803L), 0x6803L), 0x6803L, 1L, 0x6803L, (VECTOR(int16_t, 2))(1L, 0x6803L), (VECTOR(int16_t, 2))(1L, 0x6803L), 1L, 0x6803L, 1L, 0x6803L);
            int8_t l_393 = 0x1AL;
            VECTOR(int16_t, 16) l_394 = (VECTOR(int16_t, 16))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x654AL), 0x654AL), 0x654AL, 1L, 0x654AL, (VECTOR(int16_t, 2))(1L, 0x654AL), (VECTOR(int16_t, 2))(1L, 0x654AL), 1L, 0x654AL, 1L, 0x654AL);
            VECTOR(int16_t, 2) l_395 = (VECTOR(int16_t, 2))((-1L), 0x1961L);
            VECTOR(int16_t, 4) l_396 = (VECTOR(int16_t, 4))((-5L), (VECTOR(int16_t, 2))((-5L), (-4L)), (-4L));
            VECTOR(int16_t, 16) l_397 = (VECTOR(int16_t, 16))(0x1EF3L, (VECTOR(int16_t, 4))(0x1EF3L, (VECTOR(int16_t, 2))(0x1EF3L, (-3L)), (-3L)), (-3L), 0x1EF3L, (-3L), (VECTOR(int16_t, 2))(0x1EF3L, (-3L)), (VECTOR(int16_t, 2))(0x1EF3L, (-3L)), 0x1EF3L, (-3L), 0x1EF3L, (-3L));
            VECTOR(int16_t, 2) l_398 = (VECTOR(int16_t, 2))(0L, 0x3846L);
            int8_t l_399 = 5L;
            int8_t l_400[2][4][1] = {{{0x76L},{0x76L},{0x76L},{0x76L}},{{0x76L},{0x76L},{0x76L},{0x76L}}};
            int8_t l_401[1][1];
            int8_t l_402 = 0x63L;
            int32_t l_403 = 7L;
            uint64_t l_404[7][10] = {{0UL,0x6062DCC839D8DAA5L,1UL,18446744073709551608UL,0xE968C4AD824A4C45L,18446744073709551608UL,1UL,0x6062DCC839D8DAA5L,0UL,0x7386036BE4FE29F6L},{0UL,0x6062DCC839D8DAA5L,1UL,18446744073709551608UL,0xE968C4AD824A4C45L,18446744073709551608UL,1UL,0x6062DCC839D8DAA5L,0UL,0x7386036BE4FE29F6L},{0UL,0x6062DCC839D8DAA5L,1UL,18446744073709551608UL,0xE968C4AD824A4C45L,18446744073709551608UL,1UL,0x6062DCC839D8DAA5L,0UL,0x7386036BE4FE29F6L},{0UL,0x6062DCC839D8DAA5L,1UL,18446744073709551608UL,0xE968C4AD824A4C45L,18446744073709551608UL,1UL,0x6062DCC839D8DAA5L,0UL,0x7386036BE4FE29F6L},{0UL,0x6062DCC839D8DAA5L,1UL,18446744073709551608UL,0xE968C4AD824A4C45L,18446744073709551608UL,1UL,0x6062DCC839D8DAA5L,0UL,0x7386036BE4FE29F6L},{0UL,0x6062DCC839D8DAA5L,1UL,18446744073709551608UL,0xE968C4AD824A4C45L,18446744073709551608UL,1UL,0x6062DCC839D8DAA5L,0UL,0x7386036BE4FE29F6L},{0UL,0x6062DCC839D8DAA5L,1UL,18446744073709551608UL,0xE968C4AD824A4C45L,18446744073709551608UL,1UL,0x6062DCC839D8DAA5L,0UL,0x7386036BE4FE29F6L}};
            uint8_t l_468 = 253UL;
            int16_t l_469 = (-3L);
            int32_t *l_470[10] = {&l_403,&l_403,&l_403,&l_403,&l_403,&l_403,&l_403,&l_403,&l_403,&l_403};
            int i, j, k;
            for (i = 0; i < 7; i++)
                l_389[i] = 5UL;
            for (i = 0; i < 1; i++)
            {
                for (j = 0; j < 1; j++)
                    l_401[i][j] = (-1L);
            }
            if (l_364)
            { /* block id: 116 */
                uint16_t l_365 = 1UL;
                l_365 = 0x586DE9C2L;
            }
            else
            { /* block id: 118 */
                int32_t *l_366 = (void*)0;
                int64_t l_367 = 0x3D29C9424EE37C26L;
                int32_t l_368 = 0L;
                uint16_t l_369 = 0x4806L;
                int64_t l_370 = 0x42C1FF58AC76A57FL;
                int32_t l_371 = 0x61F05CBEL;
                VECTOR(int32_t, 16) l_372 = (VECTOR(int32_t, 16))(0x52C124EFL, (VECTOR(int32_t, 4))(0x52C124EFL, (VECTOR(int32_t, 2))(0x52C124EFL, (-9L)), (-9L)), (-9L), 0x52C124EFL, (-9L), (VECTOR(int32_t, 2))(0x52C124EFL, (-9L)), (VECTOR(int32_t, 2))(0x52C124EFL, (-9L)), 0x52C124EFL, (-9L), 0x52C124EFL, (-9L));
                VECTOR(int64_t, 8) l_373 = (VECTOR(int64_t, 8))(0x70C34D30542DAF02L, (VECTOR(int64_t, 4))(0x70C34D30542DAF02L, (VECTOR(int64_t, 2))(0x70C34D30542DAF02L, 0L), 0L), 0L, 0x70C34D30542DAF02L, 0L);
                VECTOR(uint8_t, 4) l_374 = (VECTOR(uint8_t, 4))(252UL, (VECTOR(uint8_t, 2))(252UL, 255UL), 255UL);
                uint32_t l_375 = 4294967295UL;
                int64_t l_376 = 0L;
                VECTOR(int32_t, 8) l_377 = (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x3D721656L), 0x3D721656L), 0x3D721656L, 1L, 0x3D721656L);
                VECTOR(int32_t, 2) l_378 = (VECTOR(int32_t, 2))(9L, 0x0DC0A0A9L);
                int64_t l_379 = 0x4A399173029C1A4BL;
                VECTOR(int32_t, 2) l_380 = (VECTOR(int32_t, 2))(0L, 0x3F064CB1L);
                int32_t l_381 = 0L;
                VECTOR(int32_t, 8) l_382 = (VECTOR(int32_t, 8))(0x4D7C3677L, (VECTOR(int32_t, 4))(0x4D7C3677L, (VECTOR(int32_t, 2))(0x4D7C3677L, 1L), 1L), 1L, 0x4D7C3677L, 1L);
                int32_t l_383 = (-6L);
                int8_t l_384 = 0x47L;
                uint32_t l_385 = 4294967286UL;
                int32_t *l_386 = &l_368;
                int32_t *l_387 = &l_368;
                int i;
                l_366 = (void*)0;
                l_368 = (l_367 = 1L);
                l_387 = (((VECTOR(int32_t, 2))(rotate(((VECTOR(int32_t, 16))(rotate(((VECTOR(int32_t, 8))((l_371 &= (l_370 &= l_369)), 0x761FBEE4L, ((VECTOR(int32_t, 4))(l_372.sb40f)), (-7L), 1L)).s1367071251743116, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(mad_sat(((VECTOR(int32_t, 2))(0x0276EA95L, (-1L))), ((VECTOR(int32_t, 16))(0x6DAD4C3DL, (l_384 = ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(0x45957AEFL, ((VECTOR(int32_t, 2))(sub_sat(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(sub_sat(((VECTOR(int32_t, 4))((((VECTOR(int64_t, 16))(l_373.s5742740521326736)).s8 , ((l_364 = ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 4))(rhadd(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(abs(((VECTOR(uint8_t, 2))(l_374.xx)).xxxxyyxx))).s56)).yxyy)).zwxwwzzyzwzxzxww)).s304a, ((VECTOR(uint8_t, 2))(255UL, 0UL)).xxyx))))).lo)).xyxx)).y) , (l_375 , (-1L)))), (l_376 , 0x4AF8F418L), 1L, 0x5CC22EFAL)), ((VECTOR(int32_t, 2))(clz(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(0x251B80A1L, 0x752D0FF5L)).xxxyxxxx)).s21))).xyyx))).z, 0x5035BC83L, 0L, 0x326BF449L)).even, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(l_377.s23)).xyxxyyyyyxyyxyxx)).s12))), 0x20615B9FL)).y, ((VECTOR(int32_t, 4))(hadd(((VECTOR(int32_t, 8))(min(((VECTOR(int32_t, 2))(0x11230DB8L, (-2L))).xyxxxxyy, ((VECTOR(int32_t, 2))(max(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(l_378.yyxyxxyxxxyyxxxx)).even)), (-1L), 8L, l_379, ((VECTOR(int32_t, 4))(min(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(max(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(1L, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(l_380.yxxyyyyxyxxxxxyx)).even)).odd)), l_381, (-1L), 0x3E8BA83DL)).s10)), (-4L), 0x5C5DFFC6L)).odd, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(l_382.s14264230)).hi)).xxzzzwxwxxzzyzzz)).sa3))))).xyyx, (int32_t)l_383))), (-1L))).s46, (int32_t)1L))).yyxxyxxy))).odd, ((VECTOR(int32_t, 4))(0x3EA5A883L))))), ((VECTOR(int32_t, 2))(0L)), 6L)).s1), 0x69FBA819L, (-1L), 0L, ((VECTOR(int32_t, 4))(9L)), 0x762B044EL, (-6L), (-1L), l_385, ((VECTOR(int32_t, 2))((-9L))), 8L)).s9a, ((VECTOR(int32_t, 2))(0x11A53D89L))))), ((VECTOR(int32_t, 8))(8L)), ((VECTOR(int32_t, 2))(2L)), ((VECTOR(int32_t, 4))(0L)))).hi)).s4205210636731024))).s3d, ((VECTOR(int32_t, 2))(0x0F6367C8L))))).lo , l_386);
            }
            if (((VECTOR(int32_t, 2))(min(((VECTOR(int32_t, 16))(rotate(((VECTOR(int32_t, 8))(rotate(((VECTOR(int32_t, 2))(4L, 0x12DCA3ABL)).xyxyyyxy, ((VECTOR(int32_t, 2))(max(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(mad_sat(((VECTOR(int32_t, 2))((-1L), (-1L))).yxyyxyyyyxyyyyxx, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(l_388.sa622fa75f79ae890)).odd)).s3037071374277165, ((VECTOR(int32_t, 4))(1L, 6L, 0L, 9L)).zyzyxxzwyyxyyxyw))).s2f)), 2L, l_389[6], (-2L), ((l_396.x = ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 16))(min(((VECTOR(int16_t, 16))((l_390 , l_391), 0x422FL, ((VECTOR(int16_t, 8))(l_392.s977cfc8c)), ((VECTOR(int16_t, 4))(0L, l_393, 5L, 0x1FD2L)), 0x65FEL, (-1L))), ((VECTOR(int16_t, 16))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 16),((VECTOR(int16_t, 4))(mul_hi(((VECTOR(int16_t, 4))(clz(((VECTOR(int16_t, 16))(sub_sat(((VECTOR(int16_t, 8))(clz(((VECTOR(int16_t, 2))(l_394.sbd)).xxyyyyyx))).s1605475727222766, ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(mad_sat(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(l_395.yy)), (-10L), 0x399CL)), ((VECTOR(int16_t, 2))(0x0A8EL, 0x1945L)).yxyx, ((VECTOR(int16_t, 4))(l_396.zywx))))).xzxwxzzxyzwzyzzw))))).sada1))), ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(0x0977L, 0L)).yxyxyyxyxyyxxxyy)).s06e3))).xxywxyywxwwwzzyy, ((VECTOR(int16_t, 16))(l_397.s4db1a413f0adc264)), ((VECTOR(int16_t, 8))(hadd(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(l_398.yx)), 0x3CA6L, 0x29F0L)).xxyzyxyy, ((VECTOR(int16_t, 4))((l_395.x ^= 0x4FC3L), 0x4765L, 0x2ED1L, (-5L))).zyxyzwyy))).s1364335706670251)))))).sfac4)).w) , (l_399 , 0x079DE3ABL)), l_400[1][3][0], ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(0x1A2D1802L, (-1L), 0x3950329EL, 0x0AF9A6D1L)).xwwxzwzyxxzyywzx)).s4f81)).wyyzwwyy)).s2107472446426043)).s7f)), l_401[0][0], 0x17738128L, l_402, 0L, l_403, 7L, 0x0EF296DAL)).s3d, ((VECTOR(int32_t, 2))(0x1450F154L))))).xxxyyxxy))).s4171162164360116, ((VECTOR(int32_t, 16))(0L))))).s2a, (int32_t)l_404[1][2]))).hi)
            { /* block id: 130 */
                int32_t l_405 = 0x0DE7A86FL;
                VECTOR(int64_t, 4) l_455 = (VECTOR(int64_t, 4))(0x245250A47287E339L, (VECTOR(int64_t, 2))(0x245250A47287E339L, 0x44DFE14C3EC5194EL), 0x44DFE14C3EC5194EL);
                uint64_t l_456 = 0xFF9682761255775FL;
                int64_t l_457 = 5L;
                int64_t l_458 = 0x5780E78713BA92FBL;
                int32_t l_459[5] = {0x6F9CCC33L,0x6F9CCC33L,0x6F9CCC33L,0x6F9CCC33L,0x6F9CCC33L};
                uint8_t l_460 = 3UL;
                uint32_t l_461 = 0xE4D7F021L;
                int16_t l_462 = (-7L);
                int64_t l_463 = 7L;
                int32_t l_464 = (-9L);
                int i;
                if (l_405)
                { /* block id: 131 */
                    int8_t l_406 = 0x52L;
                    int32_t l_407 = 1L;
                    uint8_t l_408 = 255UL;
                    l_388.s1 |= l_406;
                    l_408 = ((l_407 = 8L) , 0L);
                }
                else
                { /* block id: 135 */
                    int32_t l_409 = 0x3C8E1A82L;
                    for (l_409 = (-10); (l_409 <= 10); ++l_409)
                    { /* block id: 138 */
                        uint8_t l_412 = 0xAEL;
                        int64_t l_413 = 0x6A4B70CB83D582AFL;
                        VECTOR(int32_t, 4) l_414 = (VECTOR(int32_t, 4))(9L, (VECTOR(int32_t, 2))(9L, 0x5419AE76L), 0x5419AE76L);
                        VECTOR(int32_t, 8) l_415 = (VECTOR(int32_t, 8))(0x508C9860L, (VECTOR(int32_t, 4))(0x508C9860L, (VECTOR(int32_t, 2))(0x508C9860L, 0x4FD58C5EL), 0x4FD58C5EL), 0x4FD58C5EL, 0x508C9860L, 0x4FD58C5EL);
                        VECTOR(int32_t, 4) l_416 = (VECTOR(int32_t, 4))(0x10628BC0L, (VECTOR(int32_t, 2))(0x10628BC0L, 0x26B80C23L), 0x26B80C23L);
                        VECTOR(uint8_t, 4) l_417 = (VECTOR(uint8_t, 4))(0x79L, (VECTOR(uint8_t, 2))(0x79L, 0UL), 0UL);
                        VECTOR(int32_t, 8) l_418 = (VECTOR(int32_t, 8))(0x14B244F7L, (VECTOR(int32_t, 4))(0x14B244F7L, (VECTOR(int32_t, 2))(0x14B244F7L, 0L), 0L), 0L, 0x14B244F7L, 0L);
                        VECTOR(int32_t, 4) l_419 = (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 1L), 1L);
                        VECTOR(int32_t, 16) l_420 = (VECTOR(int32_t, 16))((-2L), (VECTOR(int32_t, 4))((-2L), (VECTOR(int32_t, 2))((-2L), 0x19BE68D1L), 0x19BE68D1L), 0x19BE68D1L, (-2L), 0x19BE68D1L, (VECTOR(int32_t, 2))((-2L), 0x19BE68D1L), (VECTOR(int32_t, 2))((-2L), 0x19BE68D1L), (-2L), 0x19BE68D1L, (-2L), 0x19BE68D1L);
                        uint8_t l_421[10][1];
                        uint32_t l_422 = 0x3711DB81L;
                        VECTOR(int32_t, 8) l_423 = (VECTOR(int32_t, 8))((-8L), (VECTOR(int32_t, 4))((-8L), (VECTOR(int32_t, 2))((-8L), 9L), 9L), 9L, (-8L), 9L);
                        VECTOR(int32_t, 8) l_424 = (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 3L), 3L), 3L, (-1L), 3L);
                        VECTOR(int32_t, 4) l_425 = (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x41766392L), 0x41766392L);
                        VECTOR(int32_t, 8) l_426 = (VECTOR(int32_t, 8))(0x49907FB9L, (VECTOR(int32_t, 4))(0x49907FB9L, (VECTOR(int32_t, 2))(0x49907FB9L, (-1L)), (-1L)), (-1L), 0x49907FB9L, (-1L));
                        uint16_t l_427 = 0xE6E2L;
                        int32_t l_428 = 0x3C11E794L;
                        VECTOR(int32_t, 4) l_429 = (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x0462C134L), 0x0462C134L);
                        VECTOR(int32_t, 16) l_430 = (VECTOR(int32_t, 16))(4L, (VECTOR(int32_t, 4))(4L, (VECTOR(int32_t, 2))(4L, 0x4CA4C91CL), 0x4CA4C91CL), 0x4CA4C91CL, 4L, 0x4CA4C91CL, (VECTOR(int32_t, 2))(4L, 0x4CA4C91CL), (VECTOR(int32_t, 2))(4L, 0x4CA4C91CL), 4L, 0x4CA4C91CL, 4L, 0x4CA4C91CL);
                        VECTOR(int32_t, 8) l_431 = (VECTOR(int32_t, 8))((-3L), (VECTOR(int32_t, 4))((-3L), (VECTOR(int32_t, 2))((-3L), 0x46F7270AL), 0x46F7270AL), 0x46F7270AL, (-3L), 0x46F7270AL);
                        VECTOR(int32_t, 8) l_432 = (VECTOR(int32_t, 8))(0x30BE17B4L, (VECTOR(int32_t, 4))(0x30BE17B4L, (VECTOR(int32_t, 2))(0x30BE17B4L, (-8L)), (-8L)), (-8L), 0x30BE17B4L, (-8L));
                        VECTOR(int32_t, 8) l_433 = (VECTOR(int32_t, 8))(0x788D69E5L, (VECTOR(int32_t, 4))(0x788D69E5L, (VECTOR(int32_t, 2))(0x788D69E5L, 7L), 7L), 7L, 0x788D69E5L, 7L);
                        VECTOR(int32_t, 4) l_434 = (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, (-1L)), (-1L));
                        VECTOR(int32_t, 2) l_435 = (VECTOR(int32_t, 2))(0x1CF0E024L, 2L);
                        VECTOR(int32_t, 4) l_436 = (VECTOR(int32_t, 4))(0x4D8DC7A8L, (VECTOR(int32_t, 2))(0x4D8DC7A8L, 0x3EAB172BL), 0x3EAB172BL);
                        uint32_t l_437 = 4294967290UL;
                        int16_t l_438 = 9L;
                        uint8_t l_439 = 247UL;
                        int16_t l_440[2][4] = {{(-5L),0x06C4L,(-5L),(-5L)},{(-5L),0x06C4L,(-5L),(-5L)}};
                        int16_t l_441 = 0x6922L;
                        int8_t l_442 = 0x05L;
                        int32_t *l_443[4][10][5] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
                        uint64_t l_444 = 0x2436C2EC222700A5L;
                        int i, j, k;
                        for (i = 0; i < 10; i++)
                        {
                            for (j = 0; j < 1; j++)
                                l_421[i][j] = 0x19L;
                        }
                        l_388.s7 = (l_405 |= (l_403 = (l_412 , l_413)));
                        l_442 &= ((VECTOR(int32_t, 8))(0x45947E02L, ((VECTOR(int32_t, 2))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 4))(0L, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(mad_sat(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(l_414.wz)).yxyxxxxxxxxxyyxx)).sb, 1L, (-1L), 0x319E86FBL)), ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(l_415.s3130657163511666)).sc8a1)).x, ((VECTOR(int32_t, 4))(l_416.xyyy)).y, (-5L), 0x304E7DF0L)).xzyxzxxz)).hi, ((VECTOR(int32_t, 2))(0x081CBCF8L, 0x13EF35D8L)).xxxy))).even)), 0x0CA9C001L)).hi, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(max(((VECTOR(int32_t, 4))((l_417.x , (l_405 = (l_388.s4 = ((VECTOR(int32_t, 8))(hadd(((VECTOR(int32_t, 4))(0x20AE7433L, ((VECTOR(int32_t, 2))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(l_418.s3335)).hi)), ((VECTOR(int32_t, 2))(safe_clamp_func(VECTOR(int32_t, 2),int32_t,((VECTOR(int32_t, 2))(l_419.wx)), (int32_t)(l_420.sd , ((l_422 = (l_421[0][0] = FAKE_DIVERGE(p_996->group_0_offset, get_group_id(0), 10))) , (l_403 |= 0L))), (int32_t)((VECTOR(int32_t, 2))(sub_sat(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(0L, 0x2B79C91DL)).xxxxxxxx)))).s45, ((VECTOR(int32_t, 8))(mul_hi(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(l_423.s2527)))).zzywzwwxyxwwyzzz)).even)))))), ((VECTOR(int32_t, 2))(l_424.s65)).xxxyyxyx))).s27))).odd))), ((VECTOR(int32_t, 16))(l_425.yzywwxwzxywzzxwy)).s7b))), 1L)).yyyxwzwz, ((VECTOR(int32_t, 2))(l_426.s62)).xxyxxxyx))).s3))), (-1L), 4L, 0x5E9E7A45L)).zyzyzzxz, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(0x00AB89A5L, 0x4DE0123DL, (-5L), 3L)), ((l_428 = (l_427 , (l_413 ^= 0x2FFF96C59186A3FEL))) , (l_424.s0 ^= ((VECTOR(int32_t, 16))(l_429.wwzxxwxwxwzwxwxz)).sb)), 2L, 1L, 0x53AC1D9BL))))).lo)).lo, ((VECTOR(int32_t, 2))(0x0B69AA1CL, 0x2466F75DL))))), 0x68AEC3F9L, 0L, ((VECTOR(int32_t, 2))(mad_sat(((VECTOR(int32_t, 8))(min(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(0x032EBF0BL, ((VECTOR(int32_t, 4))(l_430.sa797)), 0L, 0x18597104L, (-5L))).even)).lo)).yxxxyxyy, ((VECTOR(int32_t, 2))((-8L), 2L)).yxxxxxxy))).s70, ((VECTOR(int32_t, 2))(l_431.s46)), ((VECTOR(int32_t, 4))(rhadd(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(l_432.s01)), ((VECTOR(int32_t, 4))(rhadd(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(l_433.s3523)))), ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 16))(l_434.ywwwyxzxwwzxxzyz)).lo, ((VECTOR(int32_t, 4))(l_435.yyxx)).zxzzxwyx))))).even))), (-6L), 0x7F49ABFAL)).lo, ((VECTOR(int32_t, 16))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 16))(l_436.wyzyzzwxxwxzwxww)), ((VECTOR(int32_t, 2))(1L, 0x13E27871L)).yxyxyxxyyyyxxyxx, ((VECTOR(int32_t, 4))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 4))(0x7D044429L, 0x567BE515L, 0x0A805F02L, 0x15CBCF6BL)), ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(l_437, 0x4492F84BL, (-6L), l_438, (-5L), ((VECTOR(int32_t, 4))(8L)), l_439, 0x7C8A56B1L, l_440[1][2], l_441, ((VECTOR(int32_t, 2))(0x47A37E1AL)), 0x7B20CDA8L)).s78c4)).lo)).xxxyxyyxyyxyxxxx)).s6a08, ((VECTOR(int32_t, 4))(0x1330DC23L))))).yzzwzxxyzxyzwxyz))).sa81a))).even))), 0L)).s1;
                        l_443[2][5][4] = (void*)0;
                        l_388.sa |= l_444;
                    }
                    l_388.s9 = 0x3B296B5BL;
                    for (l_409 = 0; (l_409 == (-28)); l_409 = safe_sub_func_int16_t_s_s(l_409, 9))
                    { /* block id: 157 */
                        uint8_t l_447 = 255UL;
                        int32_t l_449 = 0x16A11009L;
                        int32_t *l_448 = &l_449;
                        int8_t l_450 = 0x76L;
                        int8_t l_451 = 0x52L;
                        uint64_t l_452 = 0xA1F5894C06E21C1BL;
                        l_403 = l_447;
                        l_448 = (void*)0;
                        l_388.sd = l_450;
                        ++l_452;
                    }
                }
                l_388.s8 |= 0x2490D149L;
                l_403 = (l_405 = (l_388.s0 = l_455.x));
                l_388.sf = ((VECTOR(int32_t, 4))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 4))(safe_clamp_func(VECTOR(int32_t, 4),int32_t,((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(l_456, l_457, ((VECTOR(int32_t, 8))(mad_sat(((VECTOR(int32_t, 8))(((l_458 , l_459[0]) , (l_460 , l_461)), 0x030D6909L, l_462, l_463, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(l_464, ((VECTOR(int32_t, 4))((-1L))), ((VECTOR(int32_t, 2))(0x0E49C004L)), 0L)).s5136144073501705)).hi)).s22)), 1L, 1L)), ((VECTOR(int32_t, 8))((-3L))), ((VECTOR(int32_t, 8))(0x09189F7FL))))), ((VECTOR(int32_t, 2))(0x21EC2D61L)), ((VECTOR(int32_t, 4))(0x1CC6AA21L)))).s122e)), (int32_t)0x4C70FE7FL, (int32_t)0x35CAA64AL))), ((VECTOR(int32_t, 4))((-5L))), ((VECTOR(int32_t, 4))(0x392168DFL))))).y;
            }
            else
            { /* block id: 169 */
                VECTOR(int32_t, 16) l_465 = (VECTOR(int32_t, 16))((-3L), (VECTOR(int32_t, 4))((-3L), (VECTOR(int32_t, 2))((-3L), (-10L)), (-10L)), (-10L), (-3L), (-10L), (VECTOR(int32_t, 2))((-3L), (-10L)), (VECTOR(int32_t, 2))((-3L), (-10L)), (-3L), (-10L), (-3L), (-10L));
                int32_t *l_466 = (void*)0;
                int32_t *l_467 = (void*)0;
                int i;
                l_403 = ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(l_465.s147d)).hi)).even;
                l_467 = l_466;
            }
            l_469 = l_468;
            l_470[7] = (void*)0;
        }
        if (l_471)
        { /* block id: 176 */
            int32_t l_472 = 0x03A0A6A0L;
            int32_t *l_588 = &l_472;
            for (l_472 = 18; (l_472 < (-11)); l_472 = safe_sub_func_int32_t_s_s(l_472, 9))
            { /* block id: 179 */
                uint32_t l_475 = 0xA5C554E6L;
                uint8_t l_478[3][6] = {{0x44L,9UL,0x44L,0x44L,9UL,0x44L},{0x44L,9UL,0x44L,0x44L,9UL,0x44L},{0x44L,9UL,0x44L,0x44L,9UL,0x44L}};
                int32_t l_587 = 0x34CFFD5AL;
                int i, j;
                l_475--;
                if (l_478[1][0])
                { /* block id: 181 */
                    VECTOR(int32_t, 2) l_479 = (VECTOR(int32_t, 2))((-5L), 5L);
                    int i;
                    for (l_479.y = 0; (l_479.y != (-26)); l_479.y = safe_sub_func_uint8_t_u_u(l_479.y, 1))
                    { /* block id: 184 */
                        int32_t *l_482 = (void*)0;
                        int64_t l_483 = 0x42B83A40CFA9FB95L;
                        uint64_t l_484 = 0xFD40EFD24CAC9094L;
                        VECTOR(int32_t, 2) l_485 = (VECTOR(int32_t, 2))(0x2B62892FL, (-1L));
                        int32_t l_486 = (-1L);
                        uint64_t l_487 = 7UL;
                        VECTOR(int32_t, 8) l_488 = (VECTOR(int32_t, 8))(0x76294C5FL, (VECTOR(int32_t, 4))(0x76294C5FL, (VECTOR(int32_t, 2))(0x76294C5FL, (-6L)), (-6L)), (-6L), 0x76294C5FL, (-6L));
                        VECTOR(int32_t, 8) l_489 = (VECTOR(int32_t, 8))((-3L), (VECTOR(int32_t, 4))((-3L), (VECTOR(int32_t, 2))((-3L), 0x224F860DL), 0x224F860DL), 0x224F860DL, (-3L), 0x224F860DL);
                        uint32_t l_490 = 0xF897BBFCL;
                        uint32_t l_491 = 5UL;
                        VECTOR(int32_t, 2) l_492 = (VECTOR(int32_t, 2))(1L, 0x2D6B6A2BL);
                        VECTOR(int16_t, 4) l_493 = (VECTOR(int16_t, 4))(0x2356L, (VECTOR(int16_t, 2))(0x2356L, 0x3A62L), 0x3A62L);
                        VECTOR(uint16_t, 8) l_494 = (VECTOR(uint16_t, 8))(0xDB3FL, (VECTOR(uint16_t, 4))(0xDB3FL, (VECTOR(uint16_t, 2))(0xDB3FL, 0x5359L), 0x5359L), 0x5359L, 0xDB3FL, 0x5359L);
                        int16_t l_495 = 0x459DL;
                        int32_t l_496 = 0x2FEE1E85L;
                        VECTOR(int64_t, 4) l_497 = (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 0x5AAEBE21A22A3B79L), 0x5AAEBE21A22A3B79L);
                        uint64_t l_498 = 0x92D86C99677D2E32L;
                        int32_t l_499 = 0x179A264FL;
                        uint32_t l_500 = 9UL;
                        int32_t l_501 = 0L;
                        uint32_t l_502[2];
                        uint64_t l_503 = 0xE89616BEFFCD0996L;
                        uint8_t l_504 = 1UL;
                        uint32_t l_505 = 1UL;
                        int32_t l_506 = 4L;
                        uint8_t l_507 = 0x57L;
                        int i;
                        for (i = 0; i < 2; i++)
                            l_502[i] = 4294967289UL;
                        l_482 = (void*)0;
                        l_505 ^= ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(rhadd(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 2))(max(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(0x04DE8212L, 1L, 1L, 0x01AB8E4AL)).yywxzzww)).s23, (int32_t)(l_361 = (l_483 , l_484))))), ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(max(((VECTOR(int32_t, 2))(l_485.yy)).yyxy, (int32_t)l_486))), l_487, ((VECTOR(int32_t, 2))((-1L), 1L)), (-5L))), ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(l_488.s6362)))), 6L, ((VECTOR(int32_t, 2))(min(((VECTOR(int32_t, 2))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 8))(l_489.s00567622)).s36, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(2L, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(mad_sat(((VECTOR(int32_t, 16))(0x300226BFL, 4L, l_490, (l_491 , (l_361 = 0x46F374A4L)), ((VECTOR(int32_t, 16))(l_492.yyxyyyyxxxxyxyxy)).sd, 0x41D5A55DL, 1L, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(0x37E9667EL, (l_361 = ((VECTOR(int32_t, 2))(upsample(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 8))(l_493.yyyxzyzx)))).s41, ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(max(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(l_494.s34)), (l_495 = GROUP_DIVERGE(2, 1)), ((l_497.x = l_496) , l_498), 0xC5C4L, 7UL, 0x47E5L, 65526UL)).s07, ((VECTOR(uint16_t, 2))(8UL))))), 0x3490L, 0x004DL)).lo))).odd), 0x37FE58ADL, ((VECTOR(int32_t, 4))(0L)), 0x5C8DED1EL, l_499, l_500, l_501, l_502[0], l_503, ((VECTOR(int32_t, 2))(0x407579A6L)), (-1L))).lo)).s7, ((VECTOR(int32_t, 2))(0x49179815L)), 6L, (-1L), l_504, ((VECTOR(int32_t, 2))(0x0A15F8A0L)), (-1L))), ((VECTOR(int32_t, 16))(1L)), ((VECTOR(int32_t, 16))(0L))))).se9)), 6L)))).hi, ((VECTOR(int32_t, 2))(8L))))), ((VECTOR(int32_t, 2))(0x7C40CFD7L))))), (-1L))))).sd1, ((VECTOR(int32_t, 2))(0x5A07949DL))))).yyyxyxyx)))))).s34, ((VECTOR(int32_t, 2))(0x623F2402L))))), ((VECTOR(int32_t, 4))(0x0E2C84C1L)), ((VECTOR(int32_t, 4))(1L)), 0x74648438L, 0x1B0A2A4DL, 0x77661EF7L, 0x22CE5AECL, 0x155F7450L, 0x1F611B81L)).s5;
                        --l_507;
                    }
                    for (l_479.y = 0; (l_479.y <= (-20)); l_479.y = safe_sub_func_uint8_t_u_u(l_479.y, 1))
                    { /* block id: 196 */
                        VECTOR(int32_t, 2) l_513 = (VECTOR(int32_t, 2))(0x2E4C8AEFL, 0x29CA5071L);
                        int32_t *l_512 = (void*)0;
                        int32_t *l_514 = (void*)0;
                        int32_t *l_515 = (void*)0;
                        int32_t l_516 = (-1L);
                        int8_t l_517 = 0x65L;
                        uint32_t l_518[2][4][10] = {{{0x4F2B03CBL,0x9517AA5FL,0x4F2B03CBL,0x4F2B03CBL,0x9517AA5FL,0x4F2B03CBL,0x4F2B03CBL,0x9517AA5FL,0x4F2B03CBL,0x4F2B03CBL},{0x4F2B03CBL,0x9517AA5FL,0x4F2B03CBL,0x4F2B03CBL,0x9517AA5FL,0x4F2B03CBL,0x4F2B03CBL,0x9517AA5FL,0x4F2B03CBL,0x4F2B03CBL},{0x4F2B03CBL,0x9517AA5FL,0x4F2B03CBL,0x4F2B03CBL,0x9517AA5FL,0x4F2B03CBL,0x4F2B03CBL,0x9517AA5FL,0x4F2B03CBL,0x4F2B03CBL},{0x4F2B03CBL,0x9517AA5FL,0x4F2B03CBL,0x4F2B03CBL,0x9517AA5FL,0x4F2B03CBL,0x4F2B03CBL,0x9517AA5FL,0x4F2B03CBL,0x4F2B03CBL}},{{0x4F2B03CBL,0x9517AA5FL,0x4F2B03CBL,0x4F2B03CBL,0x9517AA5FL,0x4F2B03CBL,0x4F2B03CBL,0x9517AA5FL,0x4F2B03CBL,0x4F2B03CBL},{0x4F2B03CBL,0x9517AA5FL,0x4F2B03CBL,0x4F2B03CBL,0x9517AA5FL,0x4F2B03CBL,0x4F2B03CBL,0x9517AA5FL,0x4F2B03CBL,0x4F2B03CBL},{0x4F2B03CBL,0x9517AA5FL,0x4F2B03CBL,0x4F2B03CBL,0x9517AA5FL,0x4F2B03CBL,0x4F2B03CBL,0x9517AA5FL,0x4F2B03CBL,0x4F2B03CBL},{0x4F2B03CBL,0x9517AA5FL,0x4F2B03CBL,0x4F2B03CBL,0x9517AA5FL,0x4F2B03CBL,0x4F2B03CBL,0x9517AA5FL,0x4F2B03CBL,0x4F2B03CBL}}};
                        uint8_t l_519 = 255UL;
                        uint32_t l_520 = 0x94C18DFAL;
                        uint32_t l_521 = 0xE6F47A3BL;
                        int32_t l_522 = 0x40E5080FL;
                        VECTOR(uint32_t, 4) l_523 = (VECTOR(uint32_t, 4))(0x11799EADL, (VECTOR(uint32_t, 2))(0x11799EADL, 0x79637484L), 0x79637484L);
                        int32_t l_524 = 0x4AF8B694L;
                        int64_t l_525[8] = {0L,0L,0L,0L,0L,0L,0L,0L};
                        uint8_t l_526 = 0x51L;
                        int8_t l_527[9] = {1L,1L,1L,1L,1L,1L,1L,1L,1L};
                        uint8_t l_528 = 1UL;
                        int16_t l_529 = (-10L);
                        uint64_t l_530 = 5UL;
                        uint64_t l_531 = 4UL;
                        int32_t l_532 = 0L;
                        int i, j, k;
                        l_515 = (l_514 = (l_512 = (void*)0));
                        l_532 = (l_531 = (((l_517 = (l_516 , 0x53L)) , l_518[1][3][2]) , (l_530 = ((VECTOR(int32_t, 16))((l_519 , ((l_521 = l_520) , ((GROUP_DIVERGE(0, 1) , (l_522 , (((((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))(l_523.yzxxwxwy)).s7112063071675261)).hi)).s3 , ((GROUP_DIVERGE(2, 1) , 0L) , (l_524 , (l_361 = l_525[4])))) , 0x81508FB8L) , l_526))) , l_527[5]))), l_528, ((VECTOR(int32_t, 8))((-4L))), ((VECTOR(int32_t, 2))((-1L))), 2L, l_529, 0x258819F4L, 9L)).s7)));
                    }
                }
                else
                { /* block id: 207 */
                    VECTOR(int16_t, 4) l_533 = (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, (-10L)), (-10L));
                    int16_t l_534 = 0x48A6L;
                    VECTOR(uint16_t, 2) l_535 = (VECTOR(uint16_t, 2))(0x0041L, 0xCAA9L);
                    VECTOR(uint16_t, 4) l_536 = (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 5UL), 5UL);
                    uint8_t l_537 = 0x36L;
                    VECTOR(uint16_t, 8) l_538 = (VECTOR(uint16_t, 8))(0x4EE1L, (VECTOR(uint16_t, 4))(0x4EE1L, (VECTOR(uint16_t, 2))(0x4EE1L, 0x0B95L), 0x0B95L), 0x0B95L, 0x4EE1L, 0x0B95L);
                    VECTOR(uint16_t, 2) l_539 = (VECTOR(uint16_t, 2))(65535UL, 0UL);
                    VECTOR(uint16_t, 8) l_540 = (VECTOR(uint16_t, 8))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 65535UL), 65535UL), 65535UL, 1UL, 65535UL);
                    int16_t l_541 = 0x055AL;
                    uint16_t l_542 = 65526UL;
                    int32_t l_543 = 0x5A1B2D90L;
                    int64_t l_544 = 1L;
                    VECTOR(uint16_t, 8) l_545 = (VECTOR(uint16_t, 8))(0x4163L, (VECTOR(uint16_t, 4))(0x4163L, (VECTOR(uint16_t, 2))(0x4163L, 65535UL), 65535UL), 65535UL, 0x4163L, 65535UL);
                    uint32_t l_546[9][8][3] = {{{0x65341F31L,2UL,0x2B0202EEL},{0x65341F31L,2UL,0x2B0202EEL},{0x65341F31L,2UL,0x2B0202EEL},{0x65341F31L,2UL,0x2B0202EEL},{0x65341F31L,2UL,0x2B0202EEL},{0x65341F31L,2UL,0x2B0202EEL},{0x65341F31L,2UL,0x2B0202EEL},{0x65341F31L,2UL,0x2B0202EEL}},{{0x65341F31L,2UL,0x2B0202EEL},{0x65341F31L,2UL,0x2B0202EEL},{0x65341F31L,2UL,0x2B0202EEL},{0x65341F31L,2UL,0x2B0202EEL},{0x65341F31L,2UL,0x2B0202EEL},{0x65341F31L,2UL,0x2B0202EEL},{0x65341F31L,2UL,0x2B0202EEL},{0x65341F31L,2UL,0x2B0202EEL}},{{0x65341F31L,2UL,0x2B0202EEL},{0x65341F31L,2UL,0x2B0202EEL},{0x65341F31L,2UL,0x2B0202EEL},{0x65341F31L,2UL,0x2B0202EEL},{0x65341F31L,2UL,0x2B0202EEL},{0x65341F31L,2UL,0x2B0202EEL},{0x65341F31L,2UL,0x2B0202EEL},{0x65341F31L,2UL,0x2B0202EEL}},{{0x65341F31L,2UL,0x2B0202EEL},{0x65341F31L,2UL,0x2B0202EEL},{0x65341F31L,2UL,0x2B0202EEL},{0x65341F31L,2UL,0x2B0202EEL},{0x65341F31L,2UL,0x2B0202EEL},{0x65341F31L,2UL,0x2B0202EEL},{0x65341F31L,2UL,0x2B0202EEL},{0x65341F31L,2UL,0x2B0202EEL}},{{0x65341F31L,2UL,0x2B0202EEL},{0x65341F31L,2UL,0x2B0202EEL},{0x65341F31L,2UL,0x2B0202EEL},{0x65341F31L,2UL,0x2B0202EEL},{0x65341F31L,2UL,0x2B0202EEL},{0x65341F31L,2UL,0x2B0202EEL},{0x65341F31L,2UL,0x2B0202EEL},{0x65341F31L,2UL,0x2B0202EEL}},{{0x65341F31L,2UL,0x2B0202EEL},{0x65341F31L,2UL,0x2B0202EEL},{0x65341F31L,2UL,0x2B0202EEL},{0x65341F31L,2UL,0x2B0202EEL},{0x65341F31L,2UL,0x2B0202EEL},{0x65341F31L,2UL,0x2B0202EEL},{0x65341F31L,2UL,0x2B0202EEL},{0x65341F31L,2UL,0x2B0202EEL}},{{0x65341F31L,2UL,0x2B0202EEL},{0x65341F31L,2UL,0x2B0202EEL},{0x65341F31L,2UL,0x2B0202EEL},{0x65341F31L,2UL,0x2B0202EEL},{0x65341F31L,2UL,0x2B0202EEL},{0x65341F31L,2UL,0x2B0202EEL},{0x65341F31L,2UL,0x2B0202EEL},{0x65341F31L,2UL,0x2B0202EEL}},{{0x65341F31L,2UL,0x2B0202EEL},{0x65341F31L,2UL,0x2B0202EEL},{0x65341F31L,2UL,0x2B0202EEL},{0x65341F31L,2UL,0x2B0202EEL},{0x65341F31L,2UL,0x2B0202EEL},{0x65341F31L,2UL,0x2B0202EEL},{0x65341F31L,2UL,0x2B0202EEL},{0x65341F31L,2UL,0x2B0202EEL}},{{0x65341F31L,2UL,0x2B0202EEL},{0x65341F31L,2UL,0x2B0202EEL},{0x65341F31L,2UL,0x2B0202EEL},{0x65341F31L,2UL,0x2B0202EEL},{0x65341F31L,2UL,0x2B0202EEL},{0x65341F31L,2UL,0x2B0202EEL},{0x65341F31L,2UL,0x2B0202EEL},{0x65341F31L,2UL,0x2B0202EEL}}};
                    uint32_t l_547 = 8UL;
                    VECTOR(uint16_t, 2) l_548 = (VECTOR(uint16_t, 2))(1UL, 65529UL);
                    VECTOR(uint16_t, 8) l_549 = (VECTOR(uint16_t, 8))(65534UL, (VECTOR(uint16_t, 4))(65534UL, (VECTOR(uint16_t, 2))(65534UL, 0xD556L), 0xD556L), 0xD556L, 65534UL, 0xD556L);
                    VECTOR(uint16_t, 2) l_550 = (VECTOR(uint16_t, 2))(0xC087L, 0x4AACL);
                    VECTOR(uint16_t, 8) l_551 = (VECTOR(uint16_t, 8))(65530UL, (VECTOR(uint16_t, 4))(65530UL, (VECTOR(uint16_t, 2))(65530UL, 0x6313L), 0x6313L), 0x6313L, 65530UL, 0x6313L);
                    VECTOR(uint16_t, 16) l_552 = (VECTOR(uint16_t, 16))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 65528UL), 65528UL), 65528UL, 1UL, 65528UL, (VECTOR(uint16_t, 2))(1UL, 65528UL), (VECTOR(uint16_t, 2))(1UL, 65528UL), 1UL, 65528UL, 1UL, 65528UL);
                    int8_t l_553 = (-1L);
                    uint64_t l_554[10] = {2UL,2UL,2UL,2UL,2UL,2UL,2UL,2UL,2UL,2UL};
                    int64_t l_557 = 0x5C0C344E28FAC365L;
                    int16_t l_558 = 9L;
                    uint32_t l_559 = 0x17B619A3L;
                    int i, j, k;
                    l_361 = ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(hadd(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(hadd(((VECTOR(int32_t, 2))(upsample(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(clz(((VECTOR(int16_t, 2))(l_533.zz)).xyxxxxyy))).odd)).odd, ((VECTOR(uint16_t, 4))(l_534, ((VECTOR(uint16_t, 2))(mul_hi(((VECTOR(uint16_t, 2))(l_535.xy)), ((VECTOR(uint16_t, 8))(mad_hi(((VECTOR(uint16_t, 2))(abs(((VECTOR(uint16_t, 4))(sub_sat(((VECTOR(uint16_t, 16))(0UL, ((VECTOR(uint16_t, 4))(l_536.wyyx)).x, ((VECTOR(uint16_t, 2))(65535UL, 0x0BA5L)), l_537, ((VECTOR(uint16_t, 4))(0xD836L, 0x9454L, 65529UL, 0x48EAL)), ((VECTOR(uint16_t, 8))(0x6470L, 65535UL, ((VECTOR(uint16_t, 4))(7UL, 0x6E75L, 0x4178L, 8UL)), 0x6526L, 1UL)).s0, ((VECTOR(uint16_t, 16))(l_538.s3401765433352170)).sa, ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(3UL, 65531UL)).hi, ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(l_539.xy)), ((VECTOR(uint16_t, 4))(min(((VECTOR(uint16_t, 16))(l_540.s4232342426765304)).s6315, (uint16_t)l_541))), l_542, 0xBDF4L, (l_544 |= ((l_543 , FAKE_DIVERGE(p_996->group_0_offset, get_group_id(0), 10)) , FAKE_DIVERGE(p_996->global_1_offset, get_global_id(1), 10))), ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 4))(l_545.s2110)).odd)), (l_547 = l_546[7][2][1]), 0xC373L, ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 8))(0xDC5DL, ((VECTOR(uint16_t, 16))(rotate(((VECTOR(uint16_t, 16))(l_548.yxxyyxyxxxyyxxxy)), ((VECTOR(uint16_t, 2))(mad_hi(((VECTOR(uint16_t, 16))(l_549.s5101114125117024)).s44, ((VECTOR(uint16_t, 2))(l_550.xy)), ((VECTOR(uint16_t, 8))(abs(((VECTOR(uint16_t, 4))(1UL, ((VECTOR(uint16_t, 2))(0x67D3L, 0xA11AL)), 0UL)).xzzwyzwx))).s52))).xxxxxyxyxyxxyxyy))).s2, FAKE_DIVERGE(p_996->global_0_offset, get_global_id(0), 10), 0x872EL, ((VECTOR(uint16_t, 2))(0x8736L, 0xDC2AL)), 1UL, 65528UL)).s65)), 65529UL)).s1, 0x0B31L, 0xA733L)), 0x8523L)).s9398, ((VECTOR(uint16_t, 4))(mad_hi(((VECTOR(uint16_t, 16))(l_551.s0016116200740157)).s6cef, ((VECTOR(uint16_t, 4))(l_552.sc940)), ((VECTOR(uint16_t, 8))((l_554[6]--), l_557, 1UL, 65535UL, 0xD603L, l_558, 65535UL, 1UL)).odd)))))).odd))).yyyxxyyy, ((VECTOR(uint16_t, 8))(65535UL)), ((VECTOR(uint16_t, 8))(1UL))))).s35))), 1UL)).lo))).yxyx, ((VECTOR(int32_t, 4))(8L))))).wwwzzwxw)).s1711226706213242, ((VECTOR(int32_t, 16))(0x4B82320BL))))).lo)).s7;
                    --l_559;
                }
                for (l_478[2][1] = 19; (l_478[2][1] < 9); --l_478[2][1])
                { /* block id: 216 */
                    int32_t l_564 = 1L;
                    uint32_t l_565 = 0xF73DBD37L;
                    uint32_t l_579 = 0x335591EEL;
                    int8_t l_580 = 0x16L;
                    int16_t l_581 = 0x346EL;
                    int32_t l_582 = (-9L);
                    int32_t l_583 = 0x388F196EL;
                    uint64_t l_584[6][3][3] = {{{18446744073709551606UL,18446744073709551615UL,0x1DE89ABA664CC4C1L},{18446744073709551606UL,18446744073709551615UL,0x1DE89ABA664CC4C1L},{18446744073709551606UL,18446744073709551615UL,0x1DE89ABA664CC4C1L}},{{18446744073709551606UL,18446744073709551615UL,0x1DE89ABA664CC4C1L},{18446744073709551606UL,18446744073709551615UL,0x1DE89ABA664CC4C1L},{18446744073709551606UL,18446744073709551615UL,0x1DE89ABA664CC4C1L}},{{18446744073709551606UL,18446744073709551615UL,0x1DE89ABA664CC4C1L},{18446744073709551606UL,18446744073709551615UL,0x1DE89ABA664CC4C1L},{18446744073709551606UL,18446744073709551615UL,0x1DE89ABA664CC4C1L}},{{18446744073709551606UL,18446744073709551615UL,0x1DE89ABA664CC4C1L},{18446744073709551606UL,18446744073709551615UL,0x1DE89ABA664CC4C1L},{18446744073709551606UL,18446744073709551615UL,0x1DE89ABA664CC4C1L}},{{18446744073709551606UL,18446744073709551615UL,0x1DE89ABA664CC4C1L},{18446744073709551606UL,18446744073709551615UL,0x1DE89ABA664CC4C1L},{18446744073709551606UL,18446744073709551615UL,0x1DE89ABA664CC4C1L}},{{18446744073709551606UL,18446744073709551615UL,0x1DE89ABA664CC4C1L},{18446744073709551606UL,18446744073709551615UL,0x1DE89ABA664CC4C1L},{18446744073709551606UL,18446744073709551615UL,0x1DE89ABA664CC4C1L}}};
                    int i, j, k;
                    --l_565;
                    for (l_565 = 0; (l_565 > 24); l_565++)
                    { /* block id: 220 */
                        uint32_t l_570[6][2];
                        VECTOR(int32_t, 4) l_573 = (VECTOR(int32_t, 4))(0x5E9DD75CL, (VECTOR(int32_t, 2))(0x5E9DD75CL, 0x1DE511B7L), 0x1DE511B7L);
                        uint32_t l_574 = 0x7E0C1978L;
                        int32_t l_575 = 0x3A18243DL;
                        uint64_t l_576 = 0UL;
                        uint32_t l_577 = 4294967295UL;
                        uint32_t l_578 = 4294967293UL;
                        int i, j;
                        for (i = 0; i < 6; i++)
                        {
                            for (j = 0; j < 2; j++)
                                l_570[i][j] = 0x3B2BA8AFL;
                        }
                        l_570[4][1]++;
                        l_574 = ((VECTOR(int32_t, 4))(l_573.wxwz)).w;
                        l_577 = ((l_575 , l_576) , (l_361 = 0x0C5D4E79L));
                        l_361 = l_578;
                    }
                    l_361 = ((l_580 ^= l_579) , l_581);
                    ++l_584[5][2][1];
                }
                l_587 = 0x0C6DCD87L;
            }
            l_588 = (void*)0;
        }
        else
        { /* block id: 234 */
            int32_t l_589 = (-9L);
            for (l_589 = (-22); (l_589 == (-3)); l_589 = safe_add_func_uint8_t_u_u(l_589, 3))
            { /* block id: 237 */
                uint64_t l_592 = 0x8A4EDC87CF69EDB5L;
                --l_592;
            }
            for (l_589 = (-13); (l_589 != 28); ++l_589)
            { /* block id: 242 */
                VECTOR(int32_t, 4) l_597 = (VECTOR(int32_t, 4))(0x41CD8C92L, (VECTOR(int32_t, 2))(0x41CD8C92L, 0x7A223983L), 0x7A223983L);
                int16_t l_659 = 0x7BECL;
                uint8_t l_660 = 0x67L;
                int i;
                if (((VECTOR(int32_t, 2))(l_597.xy)).lo)
                { /* block id: 243 */
                    int32_t l_598 = 0x1ECBB861L;
                    l_597.z = (l_361 = (-2L));
                    for (l_598 = 22; (l_598 > 24); l_598 = safe_add_func_uint8_t_u_u(l_598, 9))
                    { /* block id: 248 */
                        uint32_t l_601 = 0UL;
                        l_597.w = (l_361 |= l_601);
                    }
                    for (l_598 = (-29); (l_598 <= 6); ++l_598)
                    { /* block id: 254 */
                        VECTOR(int32_t, 16) l_604 = (VECTOR(int32_t, 16))(0x11E9394AL, (VECTOR(int32_t, 4))(0x11E9394AL, (VECTOR(int32_t, 2))(0x11E9394AL, (-8L)), (-8L)), (-8L), 0x11E9394AL, (-8L), (VECTOR(int32_t, 2))(0x11E9394AL, (-8L)), (VECTOR(int32_t, 2))(0x11E9394AL, (-8L)), 0x11E9394AL, (-8L), 0x11E9394AL, (-8L));
                        VECTOR(int32_t, 2) l_605 = (VECTOR(int32_t, 2))((-1L), (-1L));
                        uint64_t l_606 = 0xF8FE456FD1CD0A25L;
                        uint8_t l_607 = 1UL;
                        VECTOR(int32_t, 2) l_608 = (VECTOR(int32_t, 2))(0L, 0x4908072EL);
                        VECTOR(int32_t, 16) l_609 = (VECTOR(int32_t, 16))(0x785AC19FL, (VECTOR(int32_t, 4))(0x785AC19FL, (VECTOR(int32_t, 2))(0x785AC19FL, 1L), 1L), 1L, 0x785AC19FL, 1L, (VECTOR(int32_t, 2))(0x785AC19FL, 1L), (VECTOR(int32_t, 2))(0x785AC19FL, 1L), 0x785AC19FL, 1L, 0x785AC19FL, 1L);
                        uint32_t l_610 = 0UL;
                        int8_t l_611 = (-5L);
                        VECTOR(int16_t, 8) l_612 = (VECTOR(int16_t, 8))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x78AAL), 0x78AAL), 0x78AAL, 1L, 0x78AAL);
                        uint8_t l_613 = 0x35L;
                        uint16_t l_614 = 0x923AL;
                        VECTOR(int64_t, 16) l_615 = (VECTOR(int64_t, 16))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 0x03FB0A1599C28509L), 0x03FB0A1599C28509L), 0x03FB0A1599C28509L, 1L, 0x03FB0A1599C28509L, (VECTOR(int64_t, 2))(1L, 0x03FB0A1599C28509L), (VECTOR(int64_t, 2))(1L, 0x03FB0A1599C28509L), 1L, 0x03FB0A1599C28509L, 1L, 0x03FB0A1599C28509L);
                        int32_t l_616 = 0x612641B3L;
                        VECTOR(int16_t, 16) l_617 = (VECTOR(int16_t, 16))((-10L), (VECTOR(int16_t, 4))((-10L), (VECTOR(int16_t, 2))((-10L), (-1L)), (-1L)), (-1L), (-10L), (-1L), (VECTOR(int16_t, 2))((-10L), (-1L)), (VECTOR(int16_t, 2))((-10L), (-1L)), (-10L), (-1L), (-10L), (-1L));
                        VECTOR(int16_t, 16) l_618 = (VECTOR(int16_t, 16))((-10L), (VECTOR(int16_t, 4))((-10L), (VECTOR(int16_t, 2))((-10L), (-3L)), (-3L)), (-3L), (-10L), (-3L), (VECTOR(int16_t, 2))((-10L), (-3L)), (VECTOR(int16_t, 2))((-10L), (-3L)), (-10L), (-3L), (-10L), (-3L));
                        uint64_t l_619 = 6UL;
                        uint32_t l_620 = 0x83E93957L;
                        int64_t l_621 = (-1L);
                        uint32_t l_622 = 0xF0842C64L;
                        uint32_t l_623 = 0x0CBD3D9EL;
                        uint64_t l_624 = 18446744073709551615UL;
                        int32_t l_625[6];
                        uint16_t l_626 = 0UL;
                        int32_t l_627 = 0L;
                        VECTOR(uint16_t, 16) l_628 = (VECTOR(uint16_t, 16))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 65535UL), 65535UL), 65535UL, 1UL, 65535UL, (VECTOR(uint16_t, 2))(1UL, 65535UL), (VECTOR(uint16_t, 2))(1UL, 65535UL), 1UL, 65535UL, 1UL, 65535UL);
                        int i;
                        for (i = 0; i < 6; i++)
                            l_625[i] = 0L;
                        l_597.w = ((VECTOR(int32_t, 8))(add_sat(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(safe_clamp_func(VECTOR(int32_t, 2),VECTOR(int32_t, 2),((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))((-4L), 0x2E915F63L)), 0x6A856433L, 0L)).lo, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(1L, 0x5ED9A6EBL)).yxyxxyxy)).s32, ((VECTOR(int32_t, 8))(hadd(((VECTOR(int32_t, 2))(l_604.s7a)).yyyxyyxy, ((VECTOR(int32_t, 4))((-1L), ((VECTOR(int32_t, 2))(0x0BA00E9DL, 3L)), 0x52D8838CL)).zwzwyzyx))).s70))).yxyxyyxxyyyyxyyx)))).s65)).xxxx)), ((VECTOR(int32_t, 2))(max(((VECTOR(int32_t, 16))(l_605.yxyxyyyyxyxxxyyx)).s5f, ((VECTOR(int32_t, 16))(hadd(((VECTOR(int32_t, 8))(l_606, 0x45866E08L, l_607, 0x1F554673L, 0L, ((VECTOR(int32_t, 4))(l_608.xxxy)).w, 0x26B98657L, 0x0C28A9BEL)).s1151253432170260, ((VECTOR(int32_t, 8))((-5L), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(max(((VECTOR(int32_t, 8))(l_609.s4a34ca2c)).s17, (int32_t)(l_610 , l_611)))), 0x6A90A587L, 0x1BD9E80BL, ((VECTOR(int32_t, 2))(0x0A38783BL, 0x1A990FE3L)), ((VECTOR(int32_t, 2))(0x1BA5702CL, 5L)), ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(min(((VECTOR(int32_t, 4))(max(((VECTOR(int32_t, 16))(mul_hi(((VECTOR(int32_t, 8))(upsample(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(l_612.s25)), ((l_613 , l_614) , (((VECTOR(int64_t, 4))(l_615.s2e18)).z , l_616)), (l_623 = ((GROUP_DIVERGE(2, 1) , FAKE_DIVERGE(p_996->group_1_offset, get_group_id(1), 10)) , ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(mad_sat(((VECTOR(int16_t, 2))(l_617.s57)), ((VECTOR(int16_t, 16))(rotate(((VECTOR(int16_t, 2))(l_618.s1c)).yxxxyyxyxxyxyyyy, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(6L, (-4L), ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(mad_sat(((VECTOR(int16_t, 16))(l_619, 0x1C3FL, (l_620 , 2L), l_621, 0x1F8DL, ((VECTOR(int16_t, 2))((-7L))), ((VECTOR(int16_t, 8))(0x312BL)), 6L)), ((VECTOR(int16_t, 16))(0x4F2DL)), ((VECTOR(int16_t, 16))(0x5165L))))).sda)), 9L, ((VECTOR(int16_t, 2))(0x5D0FL)), 0x21BDL)).hi)).wwwzxxwxxyxzwwxw))).sea, ((VECTOR(int16_t, 2))((-1L)))))), ((VECTOR(int16_t, 2))(0x087EL)), l_622, (-1L), 1L, 0L)).s03)).yxyx)).wyxxxyxzwzzzwwxy)).odd)).s5)), ((VECTOR(int16_t, 8))(0x2F7AL)), l_624, l_625[1], (-1L), 0x6349L)).lo, ((VECTOR(uint16_t, 8))(0x4502L))))).s1123602756262527, ((VECTOR(int32_t, 16))((-1L)))))).sd15e, (int32_t)l_626))), (int32_t)l_627))).hi)).yyxx)), 0x37464C50L, ((VECTOR(int32_t, 2))(5L)), 0x51B54B94L)))).s95)), 0L, ((VECTOR(int32_t, 4))((-3L))))).s0065165221346262))).sce))), 9L, (-3L), ((VECTOR(int32_t, 2))(4L)), 2L, ((VECTOR(int32_t, 2))(0x345D8B11L)), l_628.s7, 0x3F719F22L, 1L)))).s67)).xxyxxyyy, ((VECTOR(int32_t, 8))(0x741A709FL))))).s0;
                    }
                    for (l_598 = 0; (l_598 <= 22); l_598 = safe_add_func_int64_t_s_s(l_598, 6))
                    { /* block id: 260 */
                        int32_t l_632 = (-8L);
                        int32_t *l_631 = &l_632;
                        int32_t *l_633 = &l_632;
                        VECTOR(int32_t, 8) l_634 = (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0L), 0L), 0L, 1L, 0L);
                        int64_t l_635[1];
                        uint8_t l_636[5];
                        int i;
                        for (i = 0; i < 1; i++)
                            l_635[i] = (-1L);
                        for (i = 0; i < 5; i++)
                            l_636[i] = 1UL;
                        l_633 = l_631;
                        l_597.w = ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(l_634.s3712)).odd)), 0x21495A1FL, 0L)).z;
                        l_636[4] ^= l_635[0];
                    }
                }
                else
                { /* block id: 265 */
                    int32_t l_637 = 0x782DA82EL;
                    int32_t *l_653 = &l_637;
                    int32_t *l_654 = &l_637;
                    int64_t l_655 = 0x4D15E9AEE0959F42L;
                    uint32_t l_656 = 0x2F2132BAL;
                    if (l_637)
                    { /* block id: 266 */
                        int32_t l_638 = 1L;
                        int32_t l_639[3][4] = {{0x13D941C6L,0x13D941C6L,0x13D941C6L,0x13D941C6L},{0x13D941C6L,0x13D941C6L,0x13D941C6L,0x13D941C6L},{0x13D941C6L,0x13D941C6L,0x13D941C6L,0x13D941C6L}};
                        VECTOR(uint64_t, 8) l_640 = (VECTOR(uint64_t, 8))(0UL, (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 2UL), 2UL), 2UL, 0UL, 2UL);
                        int64_t l_641[10][3] = {{0x4886904FD8BC1CB8L,0L,0L},{0x4886904FD8BC1CB8L,0L,0L},{0x4886904FD8BC1CB8L,0L,0L},{0x4886904FD8BC1CB8L,0L,0L},{0x4886904FD8BC1CB8L,0L,0L},{0x4886904FD8BC1CB8L,0L,0L},{0x4886904FD8BC1CB8L,0L,0L},{0x4886904FD8BC1CB8L,0L,0L},{0x4886904FD8BC1CB8L,0L,0L},{0x4886904FD8BC1CB8L,0L,0L}};
                        uint64_t l_642 = 1UL;
                        uint64_t *l_646 = (void*)0;
                        uint64_t **l_645 = &l_646;
                        int i, j;
                        l_597.y = (((l_638 , l_639[0][0]) , FAKE_DIVERGE(p_996->local_1_offset, get_local_id(1), 10)) , (((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))(l_640.s25270277)).s0162534242360512)).s3 , l_641[0][1]));
                        ++l_642;
                        l_645 = (void*)0;
                    }
                    else
                    { /* block id: 270 */
                        int32_t l_648 = 0L;
                        int32_t *l_647[9] = {&l_648,&l_648,&l_648,&l_648,&l_648,&l_648,&l_648,&l_648,&l_648};
                        int32_t *l_649 = (void*)0;
                        int32_t *l_650 = &l_648;
                        int32_t *l_651 = &l_648;
                        int32_t *l_652 = &l_648;
                        int i;
                        l_649 = (l_647[1] = (void*)0);
                        l_652 = (l_651 = l_650);
                    }
                    l_654 = l_653;
                    l_656++;
                }
                l_660--;
                l_361 = ((VECTOR(int32_t, 2))(0x453C5E26L, 0x4B662E99L)).odd;
            }
            for (l_589 = 1; (l_589 < (-2)); l_589--)
            { /* block id: 284 */
                int32_t l_666 = 1L;
                int32_t *l_665[3][5][4] = {{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}}};
                int i, j, k;
                l_665[2][1][2] = (void*)0;
                l_361 = 0x75322868L;
            }
        }
        l_683.s7 = ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(safe_clamp_func(VECTOR(int32_t, 16),int32_t,((VECTOR(int32_t, 16))(l_667.xyyxyyyxxyxyyxxy)), (int32_t)(l_681 = ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(add_sat(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(0x71DB6CAEL, 0x10C043D2L)).yxyy)), l_668, ((VECTOR(int32_t, 8))(hadd(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(rhadd(((VECTOR(int32_t, 8))(l_669.s46755153)).odd, ((VECTOR(int32_t, 16))(l_670.sb, ((VECTOR(int32_t, 2))(sub_sat(((VECTOR(int32_t, 8))((l_671 , l_672), 1L, (-7L), l_673[1], 6L, 0x1832EE26L, 0L, 8L)).s27, ((VECTOR(int32_t, 16))(l_674.s4004465320051440)).s79))), (l_676 ^= l_675[2]), (-1L), l_677, ((l_678 = 1L) , 1L), l_679, ((VECTOR(int32_t, 8))(0x5A450A46L)))).sde23))))).xxyxyzwy, ((VECTOR(int32_t, 8))(0L))))), ((VECTOR(int32_t, 2))(0x0EB55774L)), 1L)).sfd)), 0x7A2553F0L, 4L)).wzxxxzyx, ((VECTOR(int32_t, 8))((-1L)))))).s31)), l_680, ((VECTOR(int32_t, 2))(0x1516CA8BL)), ((VECTOR(int32_t, 2))(0L)), 1L)).s4), (int32_t)l_682))).s3f)).hi;
        unsigned int result = 0;
        result += l_361;
        result += l_471;
        result += l_667.y;
        result += l_667.x;
        result += l_668;
        result += l_669.s7;
        result += l_669.s6;
        result += l_669.s5;
        result += l_669.s4;
        result += l_669.s3;
        result += l_669.s2;
        result += l_669.s1;
        result += l_669.s0;
        result += l_670.sf;
        result += l_670.se;
        result += l_670.sd;
        result += l_670.sc;
        result += l_670.sb;
        result += l_670.sa;
        result += l_670.s9;
        result += l_670.s8;
        result += l_670.s7;
        result += l_670.s6;
        result += l_670.s5;
        result += l_670.s4;
        result += l_670.s3;
        result += l_670.s2;
        result += l_670.s1;
        result += l_670.s0;
        result += l_671;
        result += l_672;
        int l_673_i0;
        for (l_673_i0 = 0; l_673_i0 < 3; l_673_i0++) {
            result += l_673[l_673_i0];
        }
        result += l_674.s7;
        result += l_674.s6;
        result += l_674.s5;
        result += l_674.s4;
        result += l_674.s3;
        result += l_674.s2;
        result += l_674.s1;
        result += l_674.s0;
        int l_675_i0;
        for (l_675_i0 = 0; l_675_i0 < 3; l_675_i0++) {
            result += l_675[l_675_i0];
        }
        result += l_676;
        result += l_677;
        result += l_678;
        result += l_679;
        result += l_680;
        result += l_681;
        result += l_682;
        result += l_683.s7;
        result += l_683.s6;
        result += l_683.s5;
        result += l_683.s4;
        result += l_683.s3;
        result += l_683.s2;
        result += l_683.s1;
        result += l_683.s0;
        atomic_add(&p_996->g_special_values[22 * get_linear_group_id() + 20], result);
    }
    else
    { /* block id: 293 */
        (1 + 1);
    }
    return &p_996->g_3[3];
}


/* ------------------------------------------ */
/* 
 * reads : p_996->g_5 p_996->g_3 p_996->g_34 p_996->g_121 p_996->g_128 p_996->g_129 p_996->g_135 p_996->g_140 p_996->g_79 p_996->l_comm_values p_996->g_165 p_996->g_167 p_996->g_52 p_996->g_6 p_996->g_190 p_996->g_217 p_996->g_218 p_996->g_225 p_996->g_238 p_996->g_252 p_996->g_88 p_996->g_253 p_996->g_256 p_996->g_comm_values p_996->g_296 p_996->g_299 p_996->g_302 p_996->g_305 p_996->g_318 p_996->g_320 p_996->g_321 p_996->g_334 p_996->g_337 p_996->g_340
 * writes: p_996->g_121 p_996->g_79 p_996->g_165 p_996->g_34 p_996->g_167 p_996->g_3 p_996->g_190 p_996->g_236 p_996->g_238 p_996->g_comm_values p_996->g_225 p_996->g_334
 */
int32_t  func_55(uint64_t  p_56, int64_t  p_57, struct S0 * p_996)
{ /* block id: 40 */
    int32_t **l_145 = &p_996->g_5;
    uint8_t *l_202[7][10] = {{&p_996->g_34,&p_996->g_34,&p_996->g_34,&p_996->g_34,(void*)0,&p_996->g_34,&p_996->g_34,&p_996->g_34,&p_996->g_34,&p_996->g_34},{&p_996->g_34,&p_996->g_34,&p_996->g_34,&p_996->g_34,(void*)0,&p_996->g_34,&p_996->g_34,&p_996->g_34,&p_996->g_34,&p_996->g_34},{&p_996->g_34,&p_996->g_34,&p_996->g_34,&p_996->g_34,(void*)0,&p_996->g_34,&p_996->g_34,&p_996->g_34,&p_996->g_34,&p_996->g_34},{&p_996->g_34,&p_996->g_34,&p_996->g_34,&p_996->g_34,(void*)0,&p_996->g_34,&p_996->g_34,&p_996->g_34,&p_996->g_34,&p_996->g_34},{&p_996->g_34,&p_996->g_34,&p_996->g_34,&p_996->g_34,(void*)0,&p_996->g_34,&p_996->g_34,&p_996->g_34,&p_996->g_34,&p_996->g_34},{&p_996->g_34,&p_996->g_34,&p_996->g_34,&p_996->g_34,(void*)0,&p_996->g_34,&p_996->g_34,&p_996->g_34,&p_996->g_34,&p_996->g_34},{&p_996->g_34,&p_996->g_34,&p_996->g_34,&p_996->g_34,(void*)0,&p_996->g_34,&p_996->g_34,&p_996->g_34,&p_996->g_34,&p_996->g_34}};
    uint8_t **l_201[8][6] = {{(void*)0,&l_202[2][8],&l_202[4][2],&l_202[2][8],(void*)0,(void*)0},{(void*)0,&l_202[2][8],&l_202[4][2],&l_202[2][8],(void*)0,(void*)0},{(void*)0,&l_202[2][8],&l_202[4][2],&l_202[2][8],(void*)0,(void*)0},{(void*)0,&l_202[2][8],&l_202[4][2],&l_202[2][8],(void*)0,(void*)0},{(void*)0,&l_202[2][8],&l_202[4][2],&l_202[2][8],(void*)0,(void*)0},{(void*)0,&l_202[2][8],&l_202[4][2],&l_202[2][8],(void*)0,(void*)0},{(void*)0,&l_202[2][8],&l_202[4][2],&l_202[2][8],(void*)0,(void*)0},{(void*)0,&l_202[2][8],&l_202[4][2],&l_202[2][8],(void*)0,(void*)0}};
    VECTOR(int8_t, 8) l_251 = (VECTOR(int8_t, 8))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x13L), 0x13L), 0x13L, (-1L), 0x13L);
    VECTOR(uint8_t, 8) l_298 = (VECTOR(uint8_t, 8))(0xCBL, (VECTOR(uint8_t, 4))(0xCBL, (VECTOR(uint8_t, 2))(0xCBL, 0UL), 0UL), 0UL, 0xCBL, 0UL);
    int16_t *l_309 = &p_996->g_236[4][2];
    int16_t **l_308 = &l_309;
    VECTOR(int8_t, 16) l_310 = (VECTOR(int8_t, 16))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0L), 0L), 0L, 1L, 0L, (VECTOR(int8_t, 2))(1L, 0L), (VECTOR(int8_t, 2))(1L, 0L), 1L, 0L, 1L, 0L);
    VECTOR(uint64_t, 16) l_314 = (VECTOR(uint64_t, 16))(0UL, (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 0x39B3D9607B2179A8L), 0x39B3D9607B2179A8L), 0x39B3D9607B2179A8L, 0UL, 0x39B3D9607B2179A8L, (VECTOR(uint64_t, 2))(0UL, 0x39B3D9607B2179A8L), (VECTOR(uint64_t, 2))(0UL, 0x39B3D9607B2179A8L), 0UL, 0x39B3D9607B2179A8L, 0UL, 0x39B3D9607B2179A8L);
    VECTOR(uint64_t, 4) l_315 = (VECTOR(uint64_t, 4))(0xFC523A2674D38FDDL, (VECTOR(uint64_t, 2))(0xFC523A2674D38FDDL, 0UL), 0UL);
    VECTOR(uint64_t, 4) l_317 = (VECTOR(uint64_t, 4))(18446744073709551611UL, (VECTOR(uint64_t, 2))(18446744073709551611UL, 7UL), 7UL);
    VECTOR(uint64_t, 8) l_319 = (VECTOR(uint64_t, 8))(0x887B5A5742831745L, (VECTOR(uint64_t, 4))(0x887B5A5742831745L, (VECTOR(uint64_t, 2))(0x887B5A5742831745L, 18446744073709551615UL), 18446744073709551615UL), 18446744073709551615UL, 0x887B5A5742831745L, 18446744073709551615UL);
    uint32_t *l_327 = (void*)0;
    uint32_t *l_328 = (void*)0;
    uint32_t *l_329 = (void*)0;
    int32_t l_332 = 0x661AD2DFL;
    uint32_t *l_333 = &p_996->g_334;
    int i, j;
    if ((*p_996->g_5))
    { /* block id: 41 */
        VECTOR(int16_t, 16) l_113 = (VECTOR(int16_t, 16))(0x3DAEL, (VECTOR(int16_t, 4))(0x3DAEL, (VECTOR(int16_t, 2))(0x3DAEL, 0x64ACL), 0x64ACL), 0x64ACL, 0x3DAEL, 0x64ACL, (VECTOR(int16_t, 2))(0x3DAEL, 0x64ACL), (VECTOR(int16_t, 2))(0x3DAEL, 0x64ACL), 0x3DAEL, 0x64ACL, 0x3DAEL, 0x64ACL);
        VECTOR(uint32_t, 4) l_132 = (VECTOR(uint32_t, 4))(0xA9B0E507L, (VECTOR(uint32_t, 2))(0xA9B0E507L, 0x622FD341L), 0x622FD341L);
        uint64_t l_153 = 18446744073709551611UL;
        uint32_t l_162 = 0UL;
        int32_t l_163 = 0x1819A6ADL;
        int64_t *l_185 = (void*)0;
        uint8_t ***l_203 = &l_201[3][1];
        int i;
        if ((((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(4L, (safe_mul_func_uint16_t_u_u((safe_mod_func_int8_t_s_s(p_56, p_996->g_3[6])), p_996->g_34)), 1L, 0x31L)).lo)).even != 0x39L))
        { /* block id: 42 */
            VECTOR(int16_t, 2) l_112 = (VECTOR(int16_t, 2))(0x0AE6L, 4L);
            uint32_t *l_120 = &p_996->g_121;
            int64_t *l_146 = (void*)0;
            int64_t *l_147 = (void*)0;
            int32_t l_148 = 0x1DABA5DBL;
            uint8_t *l_149 = &p_996->g_34;
            int16_t *l_150[4][10] = {{(void*)0,&p_996->g_52,(void*)0,(void*)0,&p_996->g_52,(void*)0,(void*)0,&p_996->g_52,(void*)0,(void*)0},{(void*)0,&p_996->g_52,(void*)0,(void*)0,&p_996->g_52,(void*)0,(void*)0,&p_996->g_52,(void*)0,(void*)0},{(void*)0,&p_996->g_52,(void*)0,(void*)0,&p_996->g_52,(void*)0,(void*)0,&p_996->g_52,(void*)0,(void*)0},{(void*)0,&p_996->g_52,(void*)0,(void*)0,&p_996->g_52,(void*)0,(void*)0,&p_996->g_52,(void*)0,(void*)0}};
            uint16_t *l_151[10];
            int32_t l_152 = 0L;
            uint64_t *l_154 = (void*)0;
            uint64_t *l_155 = (void*)0;
            uint64_t *l_156 = (void*)0;
            uint64_t *l_157 = (void*)0;
            uint64_t *l_158 = (void*)0;
            uint64_t *l_159 = (void*)0;
            uint64_t *l_160 = (void*)0;
            uint64_t *l_161[8][7] = {{&l_153,&l_153,(void*)0,&l_153,&l_153,&l_153,&l_153},{&l_153,&l_153,(void*)0,&l_153,&l_153,&l_153,&l_153},{&l_153,&l_153,(void*)0,&l_153,&l_153,&l_153,&l_153},{&l_153,&l_153,(void*)0,&l_153,&l_153,&l_153,&l_153},{&l_153,&l_153,(void*)0,&l_153,&l_153,&l_153,&l_153},{&l_153,&l_153,(void*)0,&l_153,&l_153,&l_153,&l_153},{&l_153,&l_153,(void*)0,&l_153,&l_153,&l_153,&l_153},{&l_153,&l_153,(void*)0,&l_153,&l_153,&l_153,&l_153}};
            int8_t *l_164 = &p_996->g_165;
            int32_t l_166 = (-8L);
            int i, j;
            for (i = 0; i < 10; i++)
                l_151[i] = &p_996->g_23[1];
            l_166 |= (safe_mod_func_int16_t_s_s(((VECTOR(int16_t, 4))(sub_sat(((VECTOR(int16_t, 8))(hadd(((VECTOR(int16_t, 2))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 2),((VECTOR(int16_t, 8))(l_112.yyyxxxyx)).s00, ((VECTOR(int16_t, 16))(min(((VECTOR(int16_t, 16))(l_113.s108e42a34357c3c5)), (int16_t)((~((VECTOR(int32_t, 16))((safe_mul_func_int16_t_s_s(p_56, (safe_mul_func_uint16_t_u_u(p_56, (((*l_149) = (safe_add_func_uint16_t_u_u(((--(*l_120)) , (safe_div_func_uint64_t_u_u(l_112.y, p_56))), (safe_rshift_func_uint8_t_u_u(((((VECTOR(uint64_t, 2))(p_996->g_128.yx)).hi != (((((VECTOR(int32_t, 16))(p_996->g_129.s0117037025037030)).sf , ((*l_164) &= (safe_div_func_uint64_t_u_u(((VECTOR(uint64_t, 2))(sub_sat(((VECTOR(uint64_t, 8))(upsample(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 2))(l_132.zw)))).xyxxyxxx, ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 4))(0xF8C634FBL, 0x99E5F1C3L, 0x489111B8L, 0x1DEDA0BEL)))).yyxxzxxw))).s05, ((VECTOR(uint64_t, 16))(clz(((VECTOR(uint64_t, 8))((safe_mul_func_uint16_t_u_u(((VECTOR(uint16_t, 4))(p_996->g_135.wzyz)).w, (safe_rshift_func_int8_t_s_s(p_996->g_129.s5, l_112.y)))), 18446744073709551611UL, (l_163 = (l_162 ^= (safe_sub_func_int16_t_s_s(((((VECTOR(int64_t, 4))(p_996->g_140.s2262)).y & (((safe_sub_func_int32_t_s_s((safe_sub_func_uint16_t_u_u(FAKE_DIVERGE(p_996->local_0_offset, get_local_id(0), 10), (l_152 = ((p_996->g_79 &= (((l_148 = (l_145 == &p_996->g_5)) , (void*)0) == l_149)) != (**l_145))))), l_153)) >= 0x0A14L) , (-10L))) , p_996->g_140.s3), p_56)))), 0xD851A5E322C8E7E3L, ((VECTOR(uint64_t, 2))(18446744073709551615UL)), 0UL, 0x1D8F3208BFBE81ACL)).s6143305672727073))).se7))).even, p_996->l_comm_values[(safe_mod_func_uint32_t_u_u(p_996->tid, 31))])))) | p_996->g_128.x) | (**l_145))) | (**l_145)), p_996->g_129.s3))))) & 3L))))), 2L, l_148, 9L, (-7L), (*p_996->g_5), ((VECTOR(int32_t, 8))(0x39E8D0F5L)), 0x7E22B2D8L, (-1L))).s5) > 1L)))).s1a, ((VECTOR(int16_t, 2))(0x61C5L))))).yxyxyxxy, ((VECTOR(int16_t, 8))(0x373CL))))).hi, ((VECTOR(int16_t, 4))(0x02D2L))))).w, 0x8821L));
        }
        else
        { /* block id: 52 */
            volatile int16_t * volatile **l_172 = &p_996->g_167[0];
            (*l_172) = p_996->g_167[1];
            for (p_996->g_34 = 0; (p_996->g_34 == 23); p_996->g_34++)
            { /* block id: 56 */
                VECTOR(int32_t, 16) l_175 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x15FEFF64L), 0x15FEFF64L), 0x15FEFF64L, (-1L), 0x15FEFF64L, (VECTOR(int32_t, 2))((-1L), 0x15FEFF64L), (VECTOR(int32_t, 2))((-1L), 0x15FEFF64L), (-1L), 0x15FEFF64L, (-1L), 0x15FEFF64L);
                int i;
                (*p_996->g_5) = ((VECTOR(int32_t, 4))(l_175.s66af)).y;
            }
        }
        for (p_996->g_121 = (-8); (p_996->g_121 > 60); ++p_996->g_121)
        { /* block id: 62 */
            int64_t *l_184 = (void*)0;
            uint8_t *l_186 = &p_996->g_34;
            int32_t l_187 = 1L;
            int32_t *l_188 = (void*)0;
            int32_t *l_189[4];
            VECTOR(int16_t, 16) l_195 = (VECTOR(int16_t, 16))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x3C73L), 0x3C73L), 0x3C73L, (-1L), 0x3C73L, (VECTOR(int16_t, 2))((-1L), 0x3C73L), (VECTOR(int16_t, 2))((-1L), 0x3C73L), (-1L), 0x3C73L, (-1L), 0x3C73L);
            int i;
            for (i = 0; i < 4; i++)
                l_189[i] = &p_996->g_190;
            p_996->g_190 &= ((safe_mul_func_uint8_t_u_u(((p_996->g_121 , ((+p_56) , (void*)0)) != (((VECTOR(uint32_t, 4))(4294967295UL, ((safe_rshift_func_int16_t_s_u((safe_add_func_uint64_t_u_u(p_57, (((l_184 == l_185) || ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(0x30A03C78L, 0x01C7FA8CL, 1L, 0x491F7684L)))).z) < p_996->g_52))), (l_163 ^= ((p_996->g_6 , p_996->g_129.s6) != p_56)))) , p_996->g_79), 1UL, 0xB194EF10L)).w , l_186)), (**l_145))) > l_187);
            (**l_145) = (safe_lshift_func_uint8_t_u_s((((~(safe_div_func_int16_t_s_s(((VECTOR(int16_t, 16))(0x3D32L, ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 16))(safe_clamp_func(VECTOR(int16_t, 16),VECTOR(int16_t, 16),((VECTOR(int16_t, 8))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 8),((VECTOR(int16_t, 2))(0L, 0x071FL)).yxyyxxyx, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(l_195.s1ba7616d)).hi)).wwyzzxxw, ((VECTOR(int16_t, 2))(0x5EABL, 0x0B3CL)).yyyyxxxx))).s2202376752365474, ((VECTOR(int16_t, 16))((safe_div_func_int32_t_s_s(((FAKE_DIVERGE(p_996->group_0_offset, get_group_id(0), 10) ^ p_57) & (((((&p_996->g_121 != &p_996->g_121) , p_996->g_165) , 0xE4D9EE29C00FFBC5L) | (safe_unary_minus_func_int16_t_s((safe_sub_func_uint16_t_u_u(((p_56 , 0x5DL) == (((&p_996->g_167[0] != &p_996->g_167[1]) > p_996->g_190) , 248UL)), l_162))))) , (-10L))), l_153)), (-1L), ((VECTOR(int16_t, 8))(1L)), p_56, p_57, 0x3C16L, 0x067EL, (-5L), 0L)), ((VECTOR(int16_t, 16))(0x0711L))))).s8907)), 0L, 0L, 0x47D6L, 0x2E71L)).s4, ((VECTOR(int16_t, 8))(7L)), 0x3DBDL, ((VECTOR(int16_t, 4))((-10L))), 5L)).s4, p_996->g_52))) & 0xA118L) > (-10L)), p_996->g_129.s4));
            if (p_57)
                break;
            if (l_153)
                break;
        }
        (*l_203) = l_201[3][1];
    }
    else
    { /* block id: 70 */
        uint8_t **l_214 = &l_202[2][6];
        VECTOR(int8_t, 2) l_215 = (VECTOR(int8_t, 2))(0x2EL, 0x0DL);
        VECTOR(int8_t, 4) l_216 = (VECTOR(int8_t, 4))(2L, (VECTOR(int8_t, 2))(2L, (-9L)), (-9L));
        int32_t l_228 = 0x46CE5F64L;
        int32_t l_237 = (-3L);
        VECTOR(int16_t, 8) l_254 = (VECTOR(int16_t, 8))(0x5004L, (VECTOR(int16_t, 4))(0x5004L, (VECTOR(int16_t, 2))(0x5004L, 4L), 4L), 4L, 0x5004L, 4L);
        VECTOR(int16_t, 8) l_255 = (VECTOR(int16_t, 8))((-3L), (VECTOR(int16_t, 4))((-3L), (VECTOR(int16_t, 2))((-3L), 0x378FL), 0x378FL), 0x378FL, (-3L), 0x378FL);
        VECTOR(int32_t, 16) l_257 = (VECTOR(int32_t, 16))(0x4BED25ABL, (VECTOR(int32_t, 4))(0x4BED25ABL, (VECTOR(int32_t, 2))(0x4BED25ABL, 0L), 0L), 0L, 0x4BED25ABL, 0L, (VECTOR(int32_t, 2))(0x4BED25ABL, 0L), (VECTOR(int32_t, 2))(0x4BED25ABL, 0L), 0x4BED25ABL, 0L, 0x4BED25ABL, 0L);
        VECTOR(int16_t, 4) l_287 = (VECTOR(int16_t, 4))(0x0A5AL, (VECTOR(int16_t, 2))(0x0A5AL, 0x66BDL), 0x66BDL);
        VECTOR(uint8_t, 16) l_300 = (VECTOR(uint8_t, 16))(0xE6L, (VECTOR(uint8_t, 4))(0xE6L, (VECTOR(uint8_t, 2))(0xE6L, 0x15L), 0x15L), 0x15L, 0xE6L, 0x15L, (VECTOR(uint8_t, 2))(0xE6L, 0x15L), (VECTOR(uint8_t, 2))(0xE6L, 0x15L), 0xE6L, 0x15L, 0xE6L, 0x15L);
        VECTOR(uint8_t, 2) l_301 = (VECTOR(uint8_t, 2))(0xE4L, 0xA1L);
        VECTOR(int8_t, 2) l_303 = (VECTOR(int8_t, 2))((-1L), 6L);
        VECTOR(int8_t, 16) l_304 = (VECTOR(int8_t, 16))(0x38L, (VECTOR(int8_t, 4))(0x38L, (VECTOR(int8_t, 2))(0x38L, 7L), 7L), 7L, 0x38L, 7L, (VECTOR(int8_t, 2))(0x38L, 7L), (VECTOR(int8_t, 2))(0x38L, 7L), 0x38L, 7L, 0x38L, 7L);
        VECTOR(int64_t, 8) l_313 = (VECTOR(int64_t, 8))(0x7BD41EC225770872L, (VECTOR(int64_t, 4))(0x7BD41EC225770872L, (VECTOR(int64_t, 2))(0x7BD41EC225770872L, 2L), 2L), 2L, 0x7BD41EC225770872L, 2L);
        int i;
        for (p_57 = 0; (p_57 == (-22)); p_57 = safe_sub_func_int64_t_s_s(p_57, 4))
        { /* block id: 73 */
            uint64_t *l_208 = (void*)0;
            uint64_t *l_209 = (void*)0;
            uint64_t *l_210 = (void*)0;
            uint64_t *l_211[3];
            uint32_t *l_226[8][10] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
            int32_t l_227 = 0x31884F5BL;
            int16_t *l_235 = &p_996->g_236[4][2];
            volatile int64_t * volatile **l_241 = (void*)0;
            volatile int64_t * volatile **l_242 = &p_996->g_238;
            VECTOR(int32_t, 8) l_258 = (VECTOR(int32_t, 8))(0x7BA2EC1DL, (VECTOR(int32_t, 4))(0x7BA2EC1DL, (VECTOR(int32_t, 2))(0x7BA2EC1DL, 0L), 0L), 0L, 0x7BA2EC1DL, 0L);
            int64_t *l_275 = (void*)0;
            int64_t *l_276 = (void*)0;
            int64_t *l_277 = (void*)0;
            int64_t *l_278 = (void*)0;
            int64_t *l_279 = (void*)0;
            int64_t *l_280[6] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            int32_t *l_281 = (void*)0;
            int32_t *l_282 = &l_237;
            VECTOR(uint8_t, 4) l_297 = (VECTOR(uint8_t, 4))(0x80L, (VECTOR(uint8_t, 2))(0x80L, 252UL), 252UL);
            VECTOR(uint64_t, 8) l_316 = (VECTOR(uint64_t, 8))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 0xB2507C90E5C9369EL), 0xB2507C90E5C9369EL), 0xB2507C90E5C9369EL, 1UL, 0xB2507C90E5C9369EL);
            uint32_t l_322 = 0x0B2A8E6DL;
            int i, j;
            for (i = 0; i < 3; i++)
                l_211[i] = (void*)0;
            l_237 ^= (safe_sub_func_uint64_t_u_u((++p_56), ((FAKE_DIVERGE(p_996->local_1_offset, get_local_id(1), 10) || ((void*)0 == l_214)) ^ ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 2),((VECTOR(int8_t, 2))(clz(((VECTOR(int8_t, 16))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 16),((VECTOR(int8_t, 16))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 16),((VECTOR(int8_t, 8))(l_215.yyyyyxxy)).s6530054625467117, ((VECTOR(int8_t, 16))(mad_sat(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(sub_sat(((VECTOR(int8_t, 4))(max(((VECTOR(int8_t, 16))(safe_clamp_func(VECTOR(int8_t, 16),VECTOR(int8_t, 16),((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(rotate(((VECTOR(int8_t, 16))(l_216.zzwzwywyxzwyyzww)).s29, ((VECTOR(int8_t, 16))(p_996->g_217.s7633610361405251)).s30))).yyyxxyxxxxxxyyyy)), ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))(min(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(p_996->g_218.ywxx)), (((**l_145) == (p_57 ^ (safe_mul_func_uint16_t_u_u((p_57 >= p_996->g_79), ((*l_235) = (safe_div_func_uint16_t_u_u(p_996->g_190, (safe_mod_func_int8_t_s_s(l_215.x, ((l_228 = (l_227 = ((VECTOR(uint32_t, 4))(p_996->g_225.s0dad)).w)) | (safe_div_func_uint8_t_u_u((safe_add_func_uint8_t_u_u((safe_sub_func_uint16_t_u_u(0UL, (**l_145))), (**l_145))), 0x0AL)))))))))))) , (**l_145)), 0x37L, 0x67L, 1L)).s2312327664577423, (int8_t)p_57))).lo)).s7077623356261266, ((VECTOR(int8_t, 16))(0x60L))))).s2663, (int8_t)0x57L))).lo, ((VECTOR(int8_t, 2))(0x1BL))))).yyxxxyxy)).lo)).zzwwywwzxxzywzyz, ((VECTOR(int8_t, 16))(0x0DL)), ((VECTOR(int8_t, 16))(1L))))), ((VECTOR(int8_t, 16))(0x14L))))), ((VECTOR(int8_t, 16))(0x21L)), ((VECTOR(int8_t, 16))(0L))))).sc5))), ((VECTOR(int8_t, 2))(2L)), ((VECTOR(int8_t, 2))(0x5FL))))), 0L, 0x32L)).hi)).lo)));
            (*l_242) = p_996->g_238;
            (*l_282) ^= ((safe_mod_func_uint64_t_u_u((safe_lshift_func_uint16_t_u_u(((safe_rshift_func_uint8_t_u_s((safe_add_func_uint16_t_u_u(((((VECTOR(int8_t, 4))(max(((VECTOR(int8_t, 16))(l_251.s0033153443145165)).s40af, ((VECTOR(int8_t, 2))(p_996->g_252.s56)).xyxy))).z , p_996->g_88.s7) == ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(add_sat(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(upsample(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 4))(min(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(p_996->g_253.s3e)).xxyyyxxy)).lo, ((VECTOR(int16_t, 4))(rhadd(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 16))(l_254.s4643747163472046)).hi)).lo, ((VECTOR(int16_t, 2))(l_255.s74)).yyxx)))))))), ((VECTOR(uint16_t, 4))(p_996->g_256.xzwy))))).zzwxxzzwyzyxzzwx)).s2f, ((VECTOR(int32_t, 4))(min(((VECTOR(int32_t, 2))(l_257.scb)).xyxy, ((VECTOR(int32_t, 8))(add_sat(((VECTOR(int32_t, 8))(mul_hi(((VECTOR(int32_t, 16))(l_258.s1545702015621215)).lo, ((VECTOR(int32_t, 2))(max(((VECTOR(int32_t, 4))((((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(0xFFB2C8B339EBD8DDL, 0x7751AF70A99F0648L)).yyyx)).y >= (p_996->g_comm_values[p_996->tid] &= (((0x45C848CC07B78506L | ((safe_lshift_func_uint8_t_u_u(((((((VECTOR(uint32_t, 8))(4294967295UL, ((VECTOR(uint32_t, 2))(0xC2C38089L, 1UL)), 0xE8E0344BL, (safe_lshift_func_uint16_t_u_s((safe_div_func_uint8_t_u_u(0x16L, 0x1AL)), (safe_mul_func_uint8_t_u_u((safe_rshift_func_int16_t_s_u(((*l_235) = (((((**l_145) >= (((safe_rshift_func_int8_t_s_s((safe_lshift_func_uint16_t_u_s(0x08C0L, 2)), 3)) , &p_996->g_23[0]) == &p_996->g_23[1])) , (safe_mul_func_int8_t_s_s(p_56, p_56))) , p_996->g_5) == (void*)0)), 0)), (**l_145))))), ((VECTOR(uint32_t, 2))(0x884CA143L)), 4294967295UL)).s7 ^ p_57) , p_996->g_218.w) <= 0L) < 0x6FED59EBL), 3)) ^ 0x28F6L)) , p_57) > 6UL))), 0x778595F2L, 0x1B67A449L, 0x3A7BD05BL)).lo, ((VECTOR(int32_t, 2))(0L))))).xyyyyyxy))), ((VECTOR(int32_t, 8))(0x54BD57DCL))))).hi))).even))).yyyxxxyy)).s2), 0x6978L)), 2)) , p_996->g_252.s5), p_56)), p_996->g_256.w)) || GROUP_DIVERGE(2, 1));
            p_996->g_190 = ((l_322 = (safe_add_func_int16_t_s_s((((**l_145) = ((safe_add_func_int8_t_s_s(p_56, ((((VECTOR(int16_t, 2))(l_287.ww)).lo & ((VECTOR(int16_t, 2))(rhadd(((VECTOR(int16_t, 8))(add_sat(((VECTOR(int16_t, 16))(((*l_235) = (((safe_lshift_func_uint16_t_u_s((l_237 ^= (((safe_mod_func_uint32_t_u_u(((VECTOR(uint32_t, 16))(5UL, 1UL, ((safe_mul_func_uint16_t_u_u(p_57, ((safe_mod_func_int8_t_s_s((**l_145), ((VECTOR(uint8_t, 2))(safe_clamp_func(VECTOR(uint8_t, 2),uint8_t,((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(safe_clamp_func(VECTOR(uint8_t, 4),VECTOR(uint8_t, 4),((VECTOR(uint8_t, 2))(p_996->g_296.s16)).xyxy, ((VECTOR(uint8_t, 4))(l_297.wywx)), ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 8))(l_298.s37012100)), ((VECTOR(uint8_t, 4))(rotate(((VECTOR(uint8_t, 2))(p_996->g_299.s25)).yxyy, ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(clz(((VECTOR(uint8_t, 2))(l_300.s64)).xyxy))).w, 0xFEL, ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 16))(l_301.xxyyyxxxxyxxyxyx)).see26)), 246UL, 0x5CL)).lo))).y, ((VECTOR(uint8_t, 2))(255UL, 0UL)), ((VECTOR(uint8_t, 2))(abs_diff(((VECTOR(int8_t, 2))((-7L), 0x49L)), ((VECTOR(int8_t, 16))(sub_sat(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 16))(p_996->g_302.s3726703311166633)))), ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(mad_sat(((VECTOR(int8_t, 16))(add_sat(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(l_303.xx)).yyxxxxyy)).s0322054220420153)), ((VECTOR(int8_t, 16))(l_304.sf3046392cdda0624))))).odd, ((VECTOR(int8_t, 16))(0L, ((VECTOR(int8_t, 2))(p_996->g_305.s31)).odd, p_56, (safe_lshift_func_int16_t_s_s((+((p_57 , l_308) != &l_309)), 1)), ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(max(((VECTOR(int8_t, 16))(sub_sat(((VECTOR(int8_t, 2))(0x6FL, 0x7BL)).yxxyyyxyxyyyxyyy, ((VECTOR(int8_t, 8))(l_310.scbd6c7dc)).s5223616130637145))).s1f, (int8_t)((p_996->g_252.s6 && (safe_mod_func_int64_t_s_s(((VECTOR(int64_t, 4))(l_313.s7506)).x, (+((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 8))(sub_sat(((VECTOR(uint64_t, 4))(l_314.s8729)).zxyyyywx, ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 8))(sub_sat(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 16))(l_315.yxwwzxyxwxyzxyzx)).sf508)).zwxxzxwz, ((VECTOR(uint64_t, 16))(mad_hi(((VECTOR(uint64_t, 16))(l_316.s7436246133503050)), ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 4))(rhadd(((VECTOR(uint64_t, 16))(rotate(((VECTOR(uint64_t, 16))(sub_sat(((VECTOR(uint64_t, 8))(l_317.wzyzzwzy)).s7464577400522735, ((VECTOR(uint64_t, 16))(add_sat(((VECTOR(uint64_t, 8))(p_996->g_318.zxwwzywx)).s6477657103111612, ((VECTOR(uint64_t, 4))(l_319.s2107)).wwxyxxxwyzyyxyzz)))))), ((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 2))(p_996->g_320.yx)))).yyxyyxyxyyxxyyyx))).s4263, ((VECTOR(uint64_t, 16))(p_996->g_321.xxxyxxyyxxyxxxxx)).s6b53))).wywwzywwzxyxxzwz)), ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 8))(add_sat(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 16))(0UL, ((VECTOR(uint64_t, 2))(0xF5B2EFFE276B1CADL)), 0x68E1F56D0E316845L, ((VECTOR(uint64_t, 8))(0xE4F14B80F8FDA9C6L)), p_996->g_88.sa, 0xD06AB99F26E04692L, 2UL, 0xD65AB089EF0A4284L)).hi)), ((VECTOR(uint64_t, 8))(6UL))))).lo)))).yxwwyzywyyyzyzyx))).even))))).s4442714544061765)).even))).s52)).lo)))) != 1UL)))).xxyy)), 1L, ((VECTOR(int8_t, 4))(0x1BL)), 0x73L, 4L, 0x5BL)).lo, ((VECTOR(int8_t, 8))((-5L)))))).s6250504052246021))))).sf1))), ((VECTOR(uint8_t, 2))(0xFBL)), 255UL)).lo)).odd))).hi)), (uint8_t)0x28L, (uint8_t)p_996->g_256.x))).hi)) || (**l_145)))) < p_996->g_296.s9), p_996->g_225.s9, p_996->g_121, ((VECTOR(uint32_t, 8))(0x3A6D9E38L)), 0xC38856BDL, 0x530B490FL, 2UL)).s3, (-1L))) < p_57) >= p_996->g_299.s0)), p_996->g_128.y)) ^ p_996->g_225.s9) , p_996->g_135.x)), (-6L), ((VECTOR(int16_t, 8))((-4L))), ((VECTOR(int16_t, 4))(0x0209L)), (-3L), 0L)).odd, ((VECTOR(int16_t, 8))(0x6D43L))))).s57, ((VECTOR(int16_t, 2))(0x5285L))))).odd) != p_57))) & p_56)) , (**l_145)), 1UL))) > p_56);
        }
        for (p_57 = (-30); (p_57 < (-3)); p_57 = safe_add_func_int16_t_s_s(p_57, 2))
        { /* block id: 91 */
            (**l_145) = (-1L);
            (**l_145) = (*p_996->g_5);
            return p_56;
        }
    }
    l_332 &= (((safe_mul_func_int8_t_s_s((**l_145), (((p_996->g_225.se++) == ((((*l_333)--) && 0x07DE155AL) == 3L)) || (p_57 , ((VECTOR(uint64_t, 2))(p_996->g_337.s04)).lo)))) && (FAKE_DIVERGE(p_996->global_0_offset, get_global_id(0), 10) >= (safe_mod_func_uint64_t_u_u(18446744073709551607UL, p_56)))) != ((VECTOR(uint64_t, 4))(p_996->g_340.yyyx)).z);
    return (**l_145);
}


/* ------------------------------------------ */
/* 
 * reads : p_996->g_79
 * writes:
 */
int16_t  func_64(uint32_t  p_65, struct S0 * p_996)
{ /* block id: 34 */
    int32_t l_90[10] = {0L,1L,3L,1L,0L,0L,1L,3L,1L,0L};
    int32_t l_91 = (-1L);
    int32_t *l_92 = &l_91;
    int32_t *l_93 = (void*)0;
    int32_t *l_94[2];
    uint8_t l_95 = 7UL;
    int32_t **l_98 = &l_94[0];
    int32_t l_99 = 0x4E64C31CL;
    int64_t l_100 = 7L;
    int32_t l_101 = (-8L);
    int16_t l_102[9] = {0L,0L,0L,0L,0L,0L,0L,0L,0L};
    uint32_t l_103 = 0x8F058C4DL;
    int i;
    for (i = 0; i < 2; i++)
        l_94[i] = &l_91;
    --l_95;
    (*l_98) = &p_996->g_3[6];
    --l_103;
    (*l_98) = (void*)0;
    return p_996->g_79;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global volatile int *g_atomic_reduction, __global int *sequence_input, __global long *g_comm_values) {
    int i, j;
    __local volatile uint32_t l_atomic_input[22];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 22; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[22];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 22; i++)
            l_special_values[i] = 0;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    __local int64_t l_comm_values[31];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 31; i++)
            l_comm_values[i] = 1;
    struct S0 c_997;
    struct S0* p_996 = &c_997;
    struct S0 c_998 = {
        {0x7C558BACL,0L,0x7C558BACL,0x7C558BACL,0L,0x7C558BACL,0x7C558BACL,0L,0x7C558BACL,0x7C558BACL}, // p_996->g_3
        &p_996->g_3[9], // p_996->g_5
        &p_996->g_5, // p_996->g_4
        0x2E6E7F73L, // p_996->g_6
        {0x2F3DL,0x2F3DL,0x2F3DL,0x2F3DL,0x2F3DL,0x2F3DL,0x2F3DL,0x2F3DL}, // p_996->g_23
        (VECTOR(int32_t, 8))(6L, (VECTOR(int32_t, 4))(6L, (VECTOR(int32_t, 2))(6L, (-9L)), (-9L)), (-9L), 6L, (-9L)), // p_996->g_26
        0x65L, // p_996->g_34
        (-8L), // p_996->g_52
        1L, // p_996->g_79
        (VECTOR(uint64_t, 16))(9UL, (VECTOR(uint64_t, 4))(9UL, (VECTOR(uint64_t, 2))(9UL, 1UL), 1UL), 1UL, 9UL, 1UL, (VECTOR(uint64_t, 2))(9UL, 1UL), (VECTOR(uint64_t, 2))(9UL, 1UL), 9UL, 1UL, 9UL, 1UL), // p_996->g_88
        0UL, // p_996->g_121
        (VECTOR(uint64_t, 2))(8UL, 0UL), // p_996->g_128
        (VECTOR(int32_t, 8))(0x2B2E08F3L, (VECTOR(int32_t, 4))(0x2B2E08F3L, (VECTOR(int32_t, 2))(0x2B2E08F3L, 0x2122A3D4L), 0x2122A3D4L), 0x2122A3D4L, 0x2B2E08F3L, 0x2122A3D4L), // p_996->g_129
        (VECTOR(uint16_t, 4))(0xE181L, (VECTOR(uint16_t, 2))(0xE181L, 0x4DADL), 0x4DADL), // p_996->g_135
        (VECTOR(int64_t, 8))(7L, (VECTOR(int64_t, 4))(7L, (VECTOR(int64_t, 2))(7L, 0L), 0L), 0L, 7L, 0L), // p_996->g_140
        0x0DL, // p_996->g_165
        (void*)0, // p_996->g_168
        0x0F83L, // p_996->g_170
        1L, // p_996->g_171
        {&p_996->g_170,&p_996->g_170,&p_996->g_170,&p_996->g_170,&p_996->g_170}, // p_996->g_169
        {&p_996->g_168,&p_996->g_168,&p_996->g_168,&p_996->g_168,&p_996->g_168,&p_996->g_168,&p_996->g_168,&p_996->g_168,&p_996->g_168}, // p_996->g_167
        1L, // p_996->g_190
        (VECTOR(int8_t, 8))((-6L), (VECTOR(int8_t, 4))((-6L), (VECTOR(int8_t, 2))((-6L), 4L), 4L), 4L, (-6L), 4L), // p_996->g_217
        (VECTOR(int8_t, 4))(0x23L, (VECTOR(int8_t, 2))(0x23L, 0x50L), 0x50L), // p_996->g_218
        (VECTOR(uint32_t, 16))(0x7C91920BL, (VECTOR(uint32_t, 4))(0x7C91920BL, (VECTOR(uint32_t, 2))(0x7C91920BL, 0x3FB7B5DEL), 0x3FB7B5DEL), 0x3FB7B5DEL, 0x7C91920BL, 0x3FB7B5DEL, (VECTOR(uint32_t, 2))(0x7C91920BL, 0x3FB7B5DEL), (VECTOR(uint32_t, 2))(0x7C91920BL, 0x3FB7B5DEL), 0x7C91920BL, 0x3FB7B5DEL, 0x7C91920BL, 0x3FB7B5DEL), // p_996->g_225
        {{0x15F6L,0x15F6L,0x15F6L},{0x15F6L,0x15F6L,0x15F6L},{0x15F6L,0x15F6L,0x15F6L},{0x15F6L,0x15F6L,0x15F6L},{0x15F6L,0x15F6L,0x15F6L}}, // p_996->g_236
        2L, // p_996->g_240
        &p_996->g_240, // p_996->g_239
        &p_996->g_239, // p_996->g_238
        (VECTOR(int8_t, 8))(5L, (VECTOR(int8_t, 4))(5L, (VECTOR(int8_t, 2))(5L, (-1L)), (-1L)), (-1L), 5L, (-1L)), // p_996->g_252
        (VECTOR(int16_t, 16))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x2A02L), 0x2A02L), 0x2A02L, 1L, 0x2A02L, (VECTOR(int16_t, 2))(1L, 0x2A02L), (VECTOR(int16_t, 2))(1L, 0x2A02L), 1L, 0x2A02L, 1L, 0x2A02L), // p_996->g_253
        (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 3UL), 3UL), // p_996->g_256
        (VECTOR(uint8_t, 16))(0x81L, (VECTOR(uint8_t, 4))(0x81L, (VECTOR(uint8_t, 2))(0x81L, 0x64L), 0x64L), 0x64L, 0x81L, 0x64L, (VECTOR(uint8_t, 2))(0x81L, 0x64L), (VECTOR(uint8_t, 2))(0x81L, 0x64L), 0x81L, 0x64L, 0x81L, 0x64L), // p_996->g_296
        (VECTOR(uint8_t, 8))(0xF1L, (VECTOR(uint8_t, 4))(0xF1L, (VECTOR(uint8_t, 2))(0xF1L, 0x5FL), 0x5FL), 0x5FL, 0xF1L, 0x5FL), // p_996->g_299
        (VECTOR(int8_t, 8))(0x2DL, (VECTOR(int8_t, 4))(0x2DL, (VECTOR(int8_t, 2))(0x2DL, 0x3DL), 0x3DL), 0x3DL, 0x2DL, 0x3DL), // p_996->g_302
        (VECTOR(int8_t, 8))(6L, (VECTOR(int8_t, 4))(6L, (VECTOR(int8_t, 2))(6L, 0x33L), 0x33L), 0x33L, 6L, 0x33L), // p_996->g_305
        (VECTOR(uint64_t, 4))(0xB312D9BF3D29A96DL, (VECTOR(uint64_t, 2))(0xB312D9BF3D29A96DL, 0x10D7859EA8BB6925L), 0x10D7859EA8BB6925L), // p_996->g_318
        (VECTOR(uint64_t, 4))(3UL, (VECTOR(uint64_t, 2))(3UL, 0xE33949A14BB4250DL), 0xE33949A14BB4250DL), // p_996->g_320
        (VECTOR(uint64_t, 2))(0x3E63233A5F907354L, 0x7CBAE9583856E529L), // p_996->g_321
        1UL, // p_996->g_334
        (VECTOR(uint64_t, 8))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 1UL), 1UL), 1UL, 1UL, 1UL), // p_996->g_337
        (VECTOR(uint64_t, 2))(1UL, 0x57EF1B187F41C3D7L), // p_996->g_340
        0x4BC7448AL, // p_996->g_343
        (VECTOR(int32_t, 2))(0x3B6E1D7FL, 0x0FA85AFAL), // p_996->g_689
        (VECTOR(int32_t, 2))(0x245ABED6L, 0x71BA77B8L), // p_996->g_690
        &p_996->g_5, // p_996->g_705
        (VECTOR(uint8_t, 2))(0xCEL, 1UL), // p_996->g_717
        (void*)0, // p_996->g_754
        &p_996->g_5, // p_996->g_774
        (void*)0, // p_996->g_779
        (VECTOR(int32_t, 8))(0x6DA5329AL, (VECTOR(int32_t, 4))(0x6DA5329AL, (VECTOR(int32_t, 2))(0x6DA5329AL, 0x38935035L), 0x38935035L), 0x38935035L, 0x6DA5329AL, 0x38935035L), // p_996->g_980
        0, // p_996->v_collective
        sequence_input[get_global_id(0)], // p_996->global_0_offset
        sequence_input[get_global_id(1)], // p_996->global_1_offset
        sequence_input[get_global_id(2)], // p_996->global_2_offset
        sequence_input[get_local_id(0)], // p_996->local_0_offset
        sequence_input[get_local_id(1)], // p_996->local_1_offset
        sequence_input[get_local_id(2)], // p_996->local_2_offset
        sequence_input[get_group_id(0)], // p_996->group_0_offset
        sequence_input[get_group_id(1)], // p_996->group_1_offset
        sequence_input[get_group_id(2)], // p_996->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 31)), permutations[0][get_linear_local_id()])), // p_996->tid
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_997 = c_998;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_996);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_996->g_3[i], "p_996->g_3[i]", print_hash_value);

    }
    transparent_crc(p_996->g_6, "p_996->g_6", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_996->g_23[i], "p_996->g_23[i]", print_hash_value);

    }
    transparent_crc(p_996->g_26.s0, "p_996->g_26.s0", print_hash_value);
    transparent_crc(p_996->g_26.s1, "p_996->g_26.s1", print_hash_value);
    transparent_crc(p_996->g_26.s2, "p_996->g_26.s2", print_hash_value);
    transparent_crc(p_996->g_26.s3, "p_996->g_26.s3", print_hash_value);
    transparent_crc(p_996->g_26.s4, "p_996->g_26.s4", print_hash_value);
    transparent_crc(p_996->g_26.s5, "p_996->g_26.s5", print_hash_value);
    transparent_crc(p_996->g_26.s6, "p_996->g_26.s6", print_hash_value);
    transparent_crc(p_996->g_26.s7, "p_996->g_26.s7", print_hash_value);
    transparent_crc(p_996->g_34, "p_996->g_34", print_hash_value);
    transparent_crc(p_996->g_52, "p_996->g_52", print_hash_value);
    transparent_crc(p_996->g_79, "p_996->g_79", print_hash_value);
    transparent_crc(p_996->g_88.s0, "p_996->g_88.s0", print_hash_value);
    transparent_crc(p_996->g_88.s1, "p_996->g_88.s1", print_hash_value);
    transparent_crc(p_996->g_88.s2, "p_996->g_88.s2", print_hash_value);
    transparent_crc(p_996->g_88.s3, "p_996->g_88.s3", print_hash_value);
    transparent_crc(p_996->g_88.s4, "p_996->g_88.s4", print_hash_value);
    transparent_crc(p_996->g_88.s5, "p_996->g_88.s5", print_hash_value);
    transparent_crc(p_996->g_88.s6, "p_996->g_88.s6", print_hash_value);
    transparent_crc(p_996->g_88.s7, "p_996->g_88.s7", print_hash_value);
    transparent_crc(p_996->g_88.s8, "p_996->g_88.s8", print_hash_value);
    transparent_crc(p_996->g_88.s9, "p_996->g_88.s9", print_hash_value);
    transparent_crc(p_996->g_88.sa, "p_996->g_88.sa", print_hash_value);
    transparent_crc(p_996->g_88.sb, "p_996->g_88.sb", print_hash_value);
    transparent_crc(p_996->g_88.sc, "p_996->g_88.sc", print_hash_value);
    transparent_crc(p_996->g_88.sd, "p_996->g_88.sd", print_hash_value);
    transparent_crc(p_996->g_88.se, "p_996->g_88.se", print_hash_value);
    transparent_crc(p_996->g_88.sf, "p_996->g_88.sf", print_hash_value);
    transparent_crc(p_996->g_121, "p_996->g_121", print_hash_value);
    transparent_crc(p_996->g_128.x, "p_996->g_128.x", print_hash_value);
    transparent_crc(p_996->g_128.y, "p_996->g_128.y", print_hash_value);
    transparent_crc(p_996->g_129.s0, "p_996->g_129.s0", print_hash_value);
    transparent_crc(p_996->g_129.s1, "p_996->g_129.s1", print_hash_value);
    transparent_crc(p_996->g_129.s2, "p_996->g_129.s2", print_hash_value);
    transparent_crc(p_996->g_129.s3, "p_996->g_129.s3", print_hash_value);
    transparent_crc(p_996->g_129.s4, "p_996->g_129.s4", print_hash_value);
    transparent_crc(p_996->g_129.s5, "p_996->g_129.s5", print_hash_value);
    transparent_crc(p_996->g_129.s6, "p_996->g_129.s6", print_hash_value);
    transparent_crc(p_996->g_129.s7, "p_996->g_129.s7", print_hash_value);
    transparent_crc(p_996->g_135.x, "p_996->g_135.x", print_hash_value);
    transparent_crc(p_996->g_135.y, "p_996->g_135.y", print_hash_value);
    transparent_crc(p_996->g_135.z, "p_996->g_135.z", print_hash_value);
    transparent_crc(p_996->g_135.w, "p_996->g_135.w", print_hash_value);
    transparent_crc(p_996->g_140.s0, "p_996->g_140.s0", print_hash_value);
    transparent_crc(p_996->g_140.s1, "p_996->g_140.s1", print_hash_value);
    transparent_crc(p_996->g_140.s2, "p_996->g_140.s2", print_hash_value);
    transparent_crc(p_996->g_140.s3, "p_996->g_140.s3", print_hash_value);
    transparent_crc(p_996->g_140.s4, "p_996->g_140.s4", print_hash_value);
    transparent_crc(p_996->g_140.s5, "p_996->g_140.s5", print_hash_value);
    transparent_crc(p_996->g_140.s6, "p_996->g_140.s6", print_hash_value);
    transparent_crc(p_996->g_140.s7, "p_996->g_140.s7", print_hash_value);
    transparent_crc(p_996->g_165, "p_996->g_165", print_hash_value);
    transparent_crc(p_996->g_170, "p_996->g_170", print_hash_value);
    transparent_crc(p_996->g_171, "p_996->g_171", print_hash_value);
    transparent_crc(p_996->g_190, "p_996->g_190", print_hash_value);
    transparent_crc(p_996->g_217.s0, "p_996->g_217.s0", print_hash_value);
    transparent_crc(p_996->g_217.s1, "p_996->g_217.s1", print_hash_value);
    transparent_crc(p_996->g_217.s2, "p_996->g_217.s2", print_hash_value);
    transparent_crc(p_996->g_217.s3, "p_996->g_217.s3", print_hash_value);
    transparent_crc(p_996->g_217.s4, "p_996->g_217.s4", print_hash_value);
    transparent_crc(p_996->g_217.s5, "p_996->g_217.s5", print_hash_value);
    transparent_crc(p_996->g_217.s6, "p_996->g_217.s6", print_hash_value);
    transparent_crc(p_996->g_217.s7, "p_996->g_217.s7", print_hash_value);
    transparent_crc(p_996->g_218.x, "p_996->g_218.x", print_hash_value);
    transparent_crc(p_996->g_218.y, "p_996->g_218.y", print_hash_value);
    transparent_crc(p_996->g_218.z, "p_996->g_218.z", print_hash_value);
    transparent_crc(p_996->g_218.w, "p_996->g_218.w", print_hash_value);
    transparent_crc(p_996->g_225.s0, "p_996->g_225.s0", print_hash_value);
    transparent_crc(p_996->g_225.s1, "p_996->g_225.s1", print_hash_value);
    transparent_crc(p_996->g_225.s2, "p_996->g_225.s2", print_hash_value);
    transparent_crc(p_996->g_225.s3, "p_996->g_225.s3", print_hash_value);
    transparent_crc(p_996->g_225.s4, "p_996->g_225.s4", print_hash_value);
    transparent_crc(p_996->g_225.s5, "p_996->g_225.s5", print_hash_value);
    transparent_crc(p_996->g_225.s6, "p_996->g_225.s6", print_hash_value);
    transparent_crc(p_996->g_225.s7, "p_996->g_225.s7", print_hash_value);
    transparent_crc(p_996->g_225.s8, "p_996->g_225.s8", print_hash_value);
    transparent_crc(p_996->g_225.s9, "p_996->g_225.s9", print_hash_value);
    transparent_crc(p_996->g_225.sa, "p_996->g_225.sa", print_hash_value);
    transparent_crc(p_996->g_225.sb, "p_996->g_225.sb", print_hash_value);
    transparent_crc(p_996->g_225.sc, "p_996->g_225.sc", print_hash_value);
    transparent_crc(p_996->g_225.sd, "p_996->g_225.sd", print_hash_value);
    transparent_crc(p_996->g_225.se, "p_996->g_225.se", print_hash_value);
    transparent_crc(p_996->g_225.sf, "p_996->g_225.sf", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 3; j++)
        {
            transparent_crc(p_996->g_236[i][j], "p_996->g_236[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_996->g_240, "p_996->g_240", print_hash_value);
    transparent_crc(p_996->g_252.s0, "p_996->g_252.s0", print_hash_value);
    transparent_crc(p_996->g_252.s1, "p_996->g_252.s1", print_hash_value);
    transparent_crc(p_996->g_252.s2, "p_996->g_252.s2", print_hash_value);
    transparent_crc(p_996->g_252.s3, "p_996->g_252.s3", print_hash_value);
    transparent_crc(p_996->g_252.s4, "p_996->g_252.s4", print_hash_value);
    transparent_crc(p_996->g_252.s5, "p_996->g_252.s5", print_hash_value);
    transparent_crc(p_996->g_252.s6, "p_996->g_252.s6", print_hash_value);
    transparent_crc(p_996->g_252.s7, "p_996->g_252.s7", print_hash_value);
    transparent_crc(p_996->g_253.s0, "p_996->g_253.s0", print_hash_value);
    transparent_crc(p_996->g_253.s1, "p_996->g_253.s1", print_hash_value);
    transparent_crc(p_996->g_253.s2, "p_996->g_253.s2", print_hash_value);
    transparent_crc(p_996->g_253.s3, "p_996->g_253.s3", print_hash_value);
    transparent_crc(p_996->g_253.s4, "p_996->g_253.s4", print_hash_value);
    transparent_crc(p_996->g_253.s5, "p_996->g_253.s5", print_hash_value);
    transparent_crc(p_996->g_253.s6, "p_996->g_253.s6", print_hash_value);
    transparent_crc(p_996->g_253.s7, "p_996->g_253.s7", print_hash_value);
    transparent_crc(p_996->g_253.s8, "p_996->g_253.s8", print_hash_value);
    transparent_crc(p_996->g_253.s9, "p_996->g_253.s9", print_hash_value);
    transparent_crc(p_996->g_253.sa, "p_996->g_253.sa", print_hash_value);
    transparent_crc(p_996->g_253.sb, "p_996->g_253.sb", print_hash_value);
    transparent_crc(p_996->g_253.sc, "p_996->g_253.sc", print_hash_value);
    transparent_crc(p_996->g_253.sd, "p_996->g_253.sd", print_hash_value);
    transparent_crc(p_996->g_253.se, "p_996->g_253.se", print_hash_value);
    transparent_crc(p_996->g_253.sf, "p_996->g_253.sf", print_hash_value);
    transparent_crc(p_996->g_256.x, "p_996->g_256.x", print_hash_value);
    transparent_crc(p_996->g_256.y, "p_996->g_256.y", print_hash_value);
    transparent_crc(p_996->g_256.z, "p_996->g_256.z", print_hash_value);
    transparent_crc(p_996->g_256.w, "p_996->g_256.w", print_hash_value);
    transparent_crc(p_996->g_296.s0, "p_996->g_296.s0", print_hash_value);
    transparent_crc(p_996->g_296.s1, "p_996->g_296.s1", print_hash_value);
    transparent_crc(p_996->g_296.s2, "p_996->g_296.s2", print_hash_value);
    transparent_crc(p_996->g_296.s3, "p_996->g_296.s3", print_hash_value);
    transparent_crc(p_996->g_296.s4, "p_996->g_296.s4", print_hash_value);
    transparent_crc(p_996->g_296.s5, "p_996->g_296.s5", print_hash_value);
    transparent_crc(p_996->g_296.s6, "p_996->g_296.s6", print_hash_value);
    transparent_crc(p_996->g_296.s7, "p_996->g_296.s7", print_hash_value);
    transparent_crc(p_996->g_296.s8, "p_996->g_296.s8", print_hash_value);
    transparent_crc(p_996->g_296.s9, "p_996->g_296.s9", print_hash_value);
    transparent_crc(p_996->g_296.sa, "p_996->g_296.sa", print_hash_value);
    transparent_crc(p_996->g_296.sb, "p_996->g_296.sb", print_hash_value);
    transparent_crc(p_996->g_296.sc, "p_996->g_296.sc", print_hash_value);
    transparent_crc(p_996->g_296.sd, "p_996->g_296.sd", print_hash_value);
    transparent_crc(p_996->g_296.se, "p_996->g_296.se", print_hash_value);
    transparent_crc(p_996->g_296.sf, "p_996->g_296.sf", print_hash_value);
    transparent_crc(p_996->g_299.s0, "p_996->g_299.s0", print_hash_value);
    transparent_crc(p_996->g_299.s1, "p_996->g_299.s1", print_hash_value);
    transparent_crc(p_996->g_299.s2, "p_996->g_299.s2", print_hash_value);
    transparent_crc(p_996->g_299.s3, "p_996->g_299.s3", print_hash_value);
    transparent_crc(p_996->g_299.s4, "p_996->g_299.s4", print_hash_value);
    transparent_crc(p_996->g_299.s5, "p_996->g_299.s5", print_hash_value);
    transparent_crc(p_996->g_299.s6, "p_996->g_299.s6", print_hash_value);
    transparent_crc(p_996->g_299.s7, "p_996->g_299.s7", print_hash_value);
    transparent_crc(p_996->g_302.s0, "p_996->g_302.s0", print_hash_value);
    transparent_crc(p_996->g_302.s1, "p_996->g_302.s1", print_hash_value);
    transparent_crc(p_996->g_302.s2, "p_996->g_302.s2", print_hash_value);
    transparent_crc(p_996->g_302.s3, "p_996->g_302.s3", print_hash_value);
    transparent_crc(p_996->g_302.s4, "p_996->g_302.s4", print_hash_value);
    transparent_crc(p_996->g_302.s5, "p_996->g_302.s5", print_hash_value);
    transparent_crc(p_996->g_302.s6, "p_996->g_302.s6", print_hash_value);
    transparent_crc(p_996->g_302.s7, "p_996->g_302.s7", print_hash_value);
    transparent_crc(p_996->g_305.s0, "p_996->g_305.s0", print_hash_value);
    transparent_crc(p_996->g_305.s1, "p_996->g_305.s1", print_hash_value);
    transparent_crc(p_996->g_305.s2, "p_996->g_305.s2", print_hash_value);
    transparent_crc(p_996->g_305.s3, "p_996->g_305.s3", print_hash_value);
    transparent_crc(p_996->g_305.s4, "p_996->g_305.s4", print_hash_value);
    transparent_crc(p_996->g_305.s5, "p_996->g_305.s5", print_hash_value);
    transparent_crc(p_996->g_305.s6, "p_996->g_305.s6", print_hash_value);
    transparent_crc(p_996->g_305.s7, "p_996->g_305.s7", print_hash_value);
    transparent_crc(p_996->g_318.x, "p_996->g_318.x", print_hash_value);
    transparent_crc(p_996->g_318.y, "p_996->g_318.y", print_hash_value);
    transparent_crc(p_996->g_318.z, "p_996->g_318.z", print_hash_value);
    transparent_crc(p_996->g_318.w, "p_996->g_318.w", print_hash_value);
    transparent_crc(p_996->g_320.x, "p_996->g_320.x", print_hash_value);
    transparent_crc(p_996->g_320.y, "p_996->g_320.y", print_hash_value);
    transparent_crc(p_996->g_320.z, "p_996->g_320.z", print_hash_value);
    transparent_crc(p_996->g_320.w, "p_996->g_320.w", print_hash_value);
    transparent_crc(p_996->g_321.x, "p_996->g_321.x", print_hash_value);
    transparent_crc(p_996->g_321.y, "p_996->g_321.y", print_hash_value);
    transparent_crc(p_996->g_334, "p_996->g_334", print_hash_value);
    transparent_crc(p_996->g_337.s0, "p_996->g_337.s0", print_hash_value);
    transparent_crc(p_996->g_337.s1, "p_996->g_337.s1", print_hash_value);
    transparent_crc(p_996->g_337.s2, "p_996->g_337.s2", print_hash_value);
    transparent_crc(p_996->g_337.s3, "p_996->g_337.s3", print_hash_value);
    transparent_crc(p_996->g_337.s4, "p_996->g_337.s4", print_hash_value);
    transparent_crc(p_996->g_337.s5, "p_996->g_337.s5", print_hash_value);
    transparent_crc(p_996->g_337.s6, "p_996->g_337.s6", print_hash_value);
    transparent_crc(p_996->g_337.s7, "p_996->g_337.s7", print_hash_value);
    transparent_crc(p_996->g_340.x, "p_996->g_340.x", print_hash_value);
    transparent_crc(p_996->g_340.y, "p_996->g_340.y", print_hash_value);
    transparent_crc(p_996->g_343, "p_996->g_343", print_hash_value);
    transparent_crc(p_996->g_689.x, "p_996->g_689.x", print_hash_value);
    transparent_crc(p_996->g_689.y, "p_996->g_689.y", print_hash_value);
    transparent_crc(p_996->g_690.x, "p_996->g_690.x", print_hash_value);
    transparent_crc(p_996->g_690.y, "p_996->g_690.y", print_hash_value);
    transparent_crc(p_996->g_717.x, "p_996->g_717.x", print_hash_value);
    transparent_crc(p_996->g_717.y, "p_996->g_717.y", print_hash_value);
    transparent_crc(p_996->g_980.s0, "p_996->g_980.s0", print_hash_value);
    transparent_crc(p_996->g_980.s1, "p_996->g_980.s1", print_hash_value);
    transparent_crc(p_996->g_980.s2, "p_996->g_980.s2", print_hash_value);
    transparent_crc(p_996->g_980.s3, "p_996->g_980.s3", print_hash_value);
    transparent_crc(p_996->g_980.s4, "p_996->g_980.s4", print_hash_value);
    transparent_crc(p_996->g_980.s5, "p_996->g_980.s5", print_hash_value);
    transparent_crc(p_996->g_980.s6, "p_996->g_980.s6", print_hash_value);
    transparent_crc(p_996->g_980.s7, "p_996->g_980.s7", print_hash_value);
    transparent_crc(p_996->v_collective, "p_996->v_collective", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 22; i++)
            transparent_crc(p_996->g_special_values[i + 22 * get_linear_group_id()], "p_996->g_special_values[i + 22 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 22; i++)
            transparent_crc(p_996->l_special_values[i], "p_996->l_special_values[i]", print_hash_value);
    transparent_crc(p_996->l_comm_values[get_linear_local_id()], "p_996->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_996->g_comm_values[get_linear_group_id() * 31 + get_linear_local_id()], "p_996->g_comm_values[get_linear_group_id() * 31 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
