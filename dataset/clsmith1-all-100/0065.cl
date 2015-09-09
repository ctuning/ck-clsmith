// --atomics 35 ---atomic_reductions ---fake_divergence ---inter_thread_comm -g 29,66,4 -l 1,11,4
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

__constant uint32_t permutations[10][44] = {
{31,34,24,10,6,38,23,5,39,14,2,18,22,7,11,29,28,42,41,3,27,43,37,25,20,36,13,26,4,40,12,9,16,17,33,30,15,32,35,1,19,21,0,8}, // permutation 0
{31,15,17,14,11,21,36,19,5,33,42,12,38,41,16,43,28,35,23,2,26,39,4,25,22,24,34,13,6,32,18,29,1,0,3,10,20,7,27,9,37,8,30,40}, // permutation 1
{42,20,23,24,14,30,18,22,4,11,31,43,10,29,5,28,13,38,2,7,16,15,40,3,36,1,37,27,33,17,19,32,8,34,6,41,39,25,0,12,9,35,21,26}, // permutation 2
{17,20,19,25,34,33,37,21,16,41,28,18,15,22,42,39,11,30,5,6,35,31,36,1,24,43,40,4,23,7,10,12,14,2,0,9,32,29,8,3,13,27,26,38}, // permutation 3
{17,16,36,20,39,25,4,0,3,9,14,2,38,23,32,24,30,11,40,31,34,19,18,29,35,27,13,5,15,7,6,42,26,33,8,37,21,43,22,12,10,1,28,41}, // permutation 4
{25,33,38,5,13,26,34,42,30,37,21,27,19,31,22,32,14,6,10,16,36,18,24,9,41,23,15,29,35,8,3,1,28,39,0,7,4,20,11,2,12,43,17,40}, // permutation 5
{13,39,18,33,16,25,34,28,42,37,12,5,19,27,43,30,36,24,38,8,7,17,6,23,32,14,40,31,10,22,21,3,4,15,1,11,29,9,0,2,35,41,26,20}, // permutation 6
{2,15,23,24,7,37,25,10,18,38,36,26,1,32,14,34,21,31,17,20,22,3,6,33,28,5,16,9,12,41,11,39,29,40,0,19,13,42,27,8,4,30,35,43}, // permutation 7
{12,40,43,35,42,5,21,33,28,19,24,11,18,34,30,20,14,3,38,31,0,15,8,10,27,16,41,2,17,9,32,4,26,29,37,25,6,23,1,7,13,22,36,39}, // permutation 8
{9,14,16,34,8,24,22,13,27,11,26,29,25,5,41,30,43,32,36,42,38,7,20,4,19,12,18,21,3,1,2,39,23,0,6,15,10,28,40,37,35,17,33,31} // permutation 9
};

// Seed: 65

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    volatile VECTOR(uint16_t, 16) g_6;
    int32_t g_15;
    int32_t *g_14;
    int32_t g_28;
    uint32_t g_60;
    int32_t g_78;
    volatile int32_t g_89;
    int16_t g_91;
    volatile uint16_t g_93;
    int32_t g_97;
    int8_t g_99[4];
    int8_t *g_98;
    VECTOR(int64_t, 4) g_100;
    uint64_t g_105;
    int16_t g_111;
    uint16_t g_113;
    volatile VECTOR(uint64_t, 2) g_127;
    int64_t g_133;
    uint32_t g_172[6];
    volatile VECTOR(uint32_t, 16) g_173;
    int32_t g_176;
    int16_t g_177[7];
    volatile int32_t g_178;
    int32_t g_179;
    uint16_t g_180;
    int32_t g_199;
    uint64_t *g_215;
    int8_t g_232;
    uint32_t g_233;
    int64_t *g_252;
    int32_t ** volatile g_254[7][6][6];
    int32_t *g_256;
    int32_t ** volatile g_255;
    int64_t **g_259;
    int16_t g_294;
    volatile VECTOR(int32_t, 2) g_308;
    int32_t ** volatile g_309;
    VECTOR(int32_t, 8) g_313;
    volatile VECTOR(int32_t, 4) g_314;
    VECTOR(int32_t, 8) g_318;
    uint16_t *g_363;
    uint16_t **g_362;
    uint16_t *** volatile g_361;
    volatile uint64_t g_373[10];
    uint16_t ***g_399;
    volatile VECTOR(int8_t, 2) g_419;
    volatile uint32_t g_433;
    int32_t ** volatile g_466;
    uint16_t **g_467;
    VECTOR(int8_t, 16) g_468;
    uint16_t g_483[4];
    volatile VECTOR(uint16_t, 8) g_498;
    volatile VECTOR(uint16_t, 16) g_502;
    VECTOR(int32_t, 8) g_509;
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
int32_t  func_1(struct S0 * p_519);
int32_t * func_7(uint8_t  p_8, int32_t * p_9, int32_t * p_10, int32_t  p_11, int8_t  p_12, struct S0 * p_519);
int32_t * func_16(int32_t * p_17, int32_t  p_18, uint16_t  p_19, uint64_t  p_20, struct S0 * p_519);
int32_t * func_21(uint32_t  p_22, int32_t * p_23, int32_t * p_24, struct S0 * p_519);
int8_t  func_29(int8_t * p_30, int32_t * p_31, int32_t * p_32, struct S0 * p_519);
int8_t * func_33(int8_t * p_34, uint32_t  p_35, int64_t  p_36, uint32_t  p_37, struct S0 * p_519);
int8_t * func_38(int32_t * p_39, uint32_t  p_40, uint32_t  p_41, struct S0 * p_519);
int32_t * func_42(int32_t * p_43, int8_t * p_44, int16_t  p_45, struct S0 * p_519);
int8_t * func_46(int16_t  p_47, uint8_t  p_48, uint64_t  p_49, uint32_t  p_50, struct S0 * p_519);
int32_t  func_54(uint64_t  p_55, int16_t  p_56, uint64_t  p_57, int32_t * p_58, int32_t  p_59, struct S0 * p_519);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_519->g_6 p_519->l_comm_values p_519->g_14 p_519->g_60 p_519->g_15 p_519->g_comm_values p_519->g_93 p_519->g_97 p_519->g_98 p_519->g_99 p_519->g_100 p_519->g_78 p_519->g_127 p_519->g_89 p_519->g_91 p_519->g_173 p_519->g_180 p_519->g_233 p_519->g_133 p_519->g_172 p_519->g_105 p_519->g_176 p_519->g_215 p_519->g_255 p_519->g_259 p_519->g_256 p_519->g_252 p_519->g_308 p_519->g_309 p_519->g_313 p_519->g_314 p_519->g_318 p_519->g_179 p_519->g_362 p_519->g_363 p_519->g_467 p_519->g_483 p_519->g_498 p_519->g_502 p_519->g_509
 * writes: p_519->g_28 p_519->g_15 p_519->g_60 p_519->g_78 p_519->g_93 p_519->g_97 p_519->g_105 p_519->g_91 p_519->g_111 p_519->g_113 p_519->g_133 p_519->g_comm_values p_519->g_172 p_519->g_180 p_519->g_176 p_519->g_215 p_519->g_233 p_519->g_252 p_519->g_256 p_519->g_259 p_519->g_179 p_519->g_483 p_519->g_99
 */
int32_t  func_1(struct S0 * p_519)
{ /* block id: 4 */
    int32_t l_13 = 0x3000CD9DL;
    VECTOR(int8_t, 16) l_25 = (VECTOR(int8_t, 16))(0x6CL, (VECTOR(int8_t, 4))(0x6CL, (VECTOR(int8_t, 2))(0x6CL, 4L), 4L), 4L, 0x6CL, 4L, (VECTOR(int8_t, 2))(0x6CL, 4L), (VECTOR(int8_t, 2))(0x6CL, 4L), 0x6CL, 4L, 0x6CL, 4L);
    int8_t *l_26 = (void*)0;
    int8_t *l_27[7][4][3] = {{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}}};
    uint32_t l_135 = 0xB2E7E373L;
    int32_t *l_217 = &l_13;
    int32_t **l_349 = &p_519->g_256;
    uint32_t l_350 = 0x73189BFAL;
    int8_t l_489 = 0x09L;
    int i, j, k;
    (*l_349) = ((safe_add_func_uint64_t_u_u(((safe_rshift_func_uint16_t_u_u(((VECTOR(uint16_t, 2))(p_519->g_6.s3e)).hi, 2)) == p_519->l_comm_values[(safe_mod_func_uint32_t_u_u(p_519->tid, 44))]), p_519->l_comm_values[(safe_mod_func_uint32_t_u_u(p_519->tid, 44))])) , func_7(l_13, p_519->g_14, func_16(((*l_349) = func_21((0x33563700L & ((p_519->g_28 = ((VECTOR(int8_t, 4))((-1L), ((VECTOR(int8_t, 2))(hadd(((VECTOR(int8_t, 16))(l_25.se3f9150faeb382e5)).s80, ((VECTOR(int8_t, 4))(2L, 0L, 1L, 1L)).hi))), 0L)).z) != ((VECTOR(int8_t, 16))(l_13, func_29(func_33(func_38(func_42(&l_13, func_46(l_13, p_519->g_6.sb, p_519->l_comm_values[(safe_mod_func_uint32_t_u_u(p_519->tid, 44))], l_25.sb, p_519), p_519->g_99[3], p_519), l_25.s8, l_135, p_519), p_519->g_99[3], p_519->g_100.w, l_135, p_519), &l_13, l_217, p_519), ((VECTOR(int8_t, 4))(0x6DL)), ((VECTOR(int8_t, 8))(0L)), 0L, 0x22L)).s8)), &p_519->g_179, &l_13, p_519)), p_519->g_99[3], p_519->l_comm_values[(safe_mod_func_uint32_t_u_u(p_519->tid, 44))], l_350, p_519), (*l_217), l_489, p_519));
    (*p_519->g_14) ^= (p_519->g_308.y , ((VECTOR(int32_t, 16))(p_519->g_509.s4671127236272263)).s1);
    if ((atomic_inc(&p_519->l_atomic_input[24]) == 2))
    { /* block id: 212 */
        int32_t l_511 = (-1L);
        int32_t *l_510 = &l_511;
        int32_t *l_512 = (void*)0;
        VECTOR(int32_t, 16) l_513 = (VECTOR(int32_t, 16))(2L, (VECTOR(int32_t, 4))(2L, (VECTOR(int32_t, 2))(2L, 0x0AB51282L), 0x0AB51282L), 0x0AB51282L, 2L, 0x0AB51282L, (VECTOR(int32_t, 2))(2L, 0x0AB51282L), (VECTOR(int32_t, 2))(2L, 0x0AB51282L), 2L, 0x0AB51282L, 2L, 0x0AB51282L);
        uint16_t l_514 = 0x5C04L;
        int32_t *l_515 = &l_511;
        int32_t *l_516 = &l_511;
        int32_t *l_517[4][6][5] = {{{&l_511,&l_511,&l_511,(void*)0,(void*)0},{&l_511,&l_511,&l_511,(void*)0,(void*)0},{&l_511,&l_511,&l_511,(void*)0,(void*)0},{&l_511,&l_511,&l_511,(void*)0,(void*)0},{&l_511,&l_511,&l_511,(void*)0,(void*)0},{&l_511,&l_511,&l_511,(void*)0,(void*)0}},{{&l_511,&l_511,&l_511,(void*)0,(void*)0},{&l_511,&l_511,&l_511,(void*)0,(void*)0},{&l_511,&l_511,&l_511,(void*)0,(void*)0},{&l_511,&l_511,&l_511,(void*)0,(void*)0},{&l_511,&l_511,&l_511,(void*)0,(void*)0},{&l_511,&l_511,&l_511,(void*)0,(void*)0}},{{&l_511,&l_511,&l_511,(void*)0,(void*)0},{&l_511,&l_511,&l_511,(void*)0,(void*)0},{&l_511,&l_511,&l_511,(void*)0,(void*)0},{&l_511,&l_511,&l_511,(void*)0,(void*)0},{&l_511,&l_511,&l_511,(void*)0,(void*)0},{&l_511,&l_511,&l_511,(void*)0,(void*)0}},{{&l_511,&l_511,&l_511,(void*)0,(void*)0},{&l_511,&l_511,&l_511,(void*)0,(void*)0},{&l_511,&l_511,&l_511,(void*)0,(void*)0},{&l_511,&l_511,&l_511,(void*)0,(void*)0},{&l_511,&l_511,&l_511,(void*)0,(void*)0},{&l_511,&l_511,&l_511,(void*)0,(void*)0}}};
        int32_t *l_518 = &l_511;
        int i, j, k;
        l_512 = l_510;
        l_514 |= ((VECTOR(int32_t, 4))(l_513.s2718)).y;
        l_518 = (l_517[0][5][1] = (l_516 = l_515));
        unsigned int result = 0;
        result += l_511;
        result += l_513.sf;
        result += l_513.se;
        result += l_513.sd;
        result += l_513.sc;
        result += l_513.sb;
        result += l_513.sa;
        result += l_513.s9;
        result += l_513.s8;
        result += l_513.s7;
        result += l_513.s6;
        result += l_513.s5;
        result += l_513.s4;
        result += l_513.s3;
        result += l_513.s2;
        result += l_513.s1;
        result += l_513.s0;
        result += l_514;
        atomic_add(&p_519->l_special_values[24], result);
    }
    else
    { /* block id: 218 */
        (1 + 1);
    }
    return p_519->g_127.y;
}


/* ------------------------------------------ */
/* 
 * reads : p_519->g_179 p_519->g_233 p_519->g_362 p_519->g_363 p_519->g_180 p_519->g_467 p_519->g_483 p_519->g_498 p_519->g_502 p_519->g_313 p_519->g_78 p_519->g_98 p_519->g_99
 * writes: p_519->g_179 p_519->g_180 p_519->g_483 p_519->g_99
 */
int32_t * func_7(uint8_t  p_8, int32_t * p_9, int32_t * p_10, int32_t  p_11, int8_t  p_12, struct S0 * p_519)
{ /* block id: 199 */
    uint32_t l_490[3][2] = {{0x82ADF5C4L,0x82ADF5C4L},{0x82ADF5C4L,0x82ADF5C4L},{0x82ADF5C4L,0x82ADF5C4L}};
    VECTOR(uint32_t, 16) l_491 = (VECTOR(uint32_t, 16))(0x2A6D4D78L, (VECTOR(uint32_t, 4))(0x2A6D4D78L, (VECTOR(uint32_t, 2))(0x2A6D4D78L, 4294967289UL), 4294967289UL), 4294967289UL, 0x2A6D4D78L, 4294967289UL, (VECTOR(uint32_t, 2))(0x2A6D4D78L, 4294967289UL), (VECTOR(uint32_t, 2))(0x2A6D4D78L, 4294967289UL), 0x2A6D4D78L, 4294967289UL, 0x2A6D4D78L, 4294967289UL);
    uint16_t *l_496[8][6][5] = {{{&p_519->g_113,(void*)0,(void*)0,&p_519->g_113,&p_519->g_483[1]},{&p_519->g_113,(void*)0,(void*)0,&p_519->g_113,&p_519->g_483[1]},{&p_519->g_113,(void*)0,(void*)0,&p_519->g_113,&p_519->g_483[1]},{&p_519->g_113,(void*)0,(void*)0,&p_519->g_113,&p_519->g_483[1]},{&p_519->g_113,(void*)0,(void*)0,&p_519->g_113,&p_519->g_483[1]},{&p_519->g_113,(void*)0,(void*)0,&p_519->g_113,&p_519->g_483[1]}},{{&p_519->g_113,(void*)0,(void*)0,&p_519->g_113,&p_519->g_483[1]},{&p_519->g_113,(void*)0,(void*)0,&p_519->g_113,&p_519->g_483[1]},{&p_519->g_113,(void*)0,(void*)0,&p_519->g_113,&p_519->g_483[1]},{&p_519->g_113,(void*)0,(void*)0,&p_519->g_113,&p_519->g_483[1]},{&p_519->g_113,(void*)0,(void*)0,&p_519->g_113,&p_519->g_483[1]},{&p_519->g_113,(void*)0,(void*)0,&p_519->g_113,&p_519->g_483[1]}},{{&p_519->g_113,(void*)0,(void*)0,&p_519->g_113,&p_519->g_483[1]},{&p_519->g_113,(void*)0,(void*)0,&p_519->g_113,&p_519->g_483[1]},{&p_519->g_113,(void*)0,(void*)0,&p_519->g_113,&p_519->g_483[1]},{&p_519->g_113,(void*)0,(void*)0,&p_519->g_113,&p_519->g_483[1]},{&p_519->g_113,(void*)0,(void*)0,&p_519->g_113,&p_519->g_483[1]},{&p_519->g_113,(void*)0,(void*)0,&p_519->g_113,&p_519->g_483[1]}},{{&p_519->g_113,(void*)0,(void*)0,&p_519->g_113,&p_519->g_483[1]},{&p_519->g_113,(void*)0,(void*)0,&p_519->g_113,&p_519->g_483[1]},{&p_519->g_113,(void*)0,(void*)0,&p_519->g_113,&p_519->g_483[1]},{&p_519->g_113,(void*)0,(void*)0,&p_519->g_113,&p_519->g_483[1]},{&p_519->g_113,(void*)0,(void*)0,&p_519->g_113,&p_519->g_483[1]},{&p_519->g_113,(void*)0,(void*)0,&p_519->g_113,&p_519->g_483[1]}},{{&p_519->g_113,(void*)0,(void*)0,&p_519->g_113,&p_519->g_483[1]},{&p_519->g_113,(void*)0,(void*)0,&p_519->g_113,&p_519->g_483[1]},{&p_519->g_113,(void*)0,(void*)0,&p_519->g_113,&p_519->g_483[1]},{&p_519->g_113,(void*)0,(void*)0,&p_519->g_113,&p_519->g_483[1]},{&p_519->g_113,(void*)0,(void*)0,&p_519->g_113,&p_519->g_483[1]},{&p_519->g_113,(void*)0,(void*)0,&p_519->g_113,&p_519->g_483[1]}},{{&p_519->g_113,(void*)0,(void*)0,&p_519->g_113,&p_519->g_483[1]},{&p_519->g_113,(void*)0,(void*)0,&p_519->g_113,&p_519->g_483[1]},{&p_519->g_113,(void*)0,(void*)0,&p_519->g_113,&p_519->g_483[1]},{&p_519->g_113,(void*)0,(void*)0,&p_519->g_113,&p_519->g_483[1]},{&p_519->g_113,(void*)0,(void*)0,&p_519->g_113,&p_519->g_483[1]},{&p_519->g_113,(void*)0,(void*)0,&p_519->g_113,&p_519->g_483[1]}},{{&p_519->g_113,(void*)0,(void*)0,&p_519->g_113,&p_519->g_483[1]},{&p_519->g_113,(void*)0,(void*)0,&p_519->g_113,&p_519->g_483[1]},{&p_519->g_113,(void*)0,(void*)0,&p_519->g_113,&p_519->g_483[1]},{&p_519->g_113,(void*)0,(void*)0,&p_519->g_113,&p_519->g_483[1]},{&p_519->g_113,(void*)0,(void*)0,&p_519->g_113,&p_519->g_483[1]},{&p_519->g_113,(void*)0,(void*)0,&p_519->g_113,&p_519->g_483[1]}},{{&p_519->g_113,(void*)0,(void*)0,&p_519->g_113,&p_519->g_483[1]},{&p_519->g_113,(void*)0,(void*)0,&p_519->g_113,&p_519->g_483[1]},{&p_519->g_113,(void*)0,(void*)0,&p_519->g_113,&p_519->g_483[1]},{&p_519->g_113,(void*)0,(void*)0,&p_519->g_113,&p_519->g_483[1]},{&p_519->g_113,(void*)0,(void*)0,&p_519->g_113,&p_519->g_483[1]},{&p_519->g_113,(void*)0,(void*)0,&p_519->g_113,&p_519->g_483[1]}}};
    VECTOR(uint16_t, 2) l_497 = (VECTOR(uint16_t, 2))(0x987BL, 0x94B9L);
    VECTOR(uint16_t, 2) l_499 = (VECTOR(uint16_t, 2))(0xAD08L, 0x5998L);
    VECTOR(uint16_t, 4) l_500 = (VECTOR(uint16_t, 4))(0x5F78L, (VECTOR(uint16_t, 2))(0x5F78L, 0UL), 0UL);
    VECTOR(uint16_t, 4) l_501 = (VECTOR(uint16_t, 4))(65528UL, (VECTOR(uint16_t, 2))(65528UL, 65533UL), 65533UL);
    VECTOR(uint32_t, 2) l_505 = (VECTOR(uint32_t, 2))(9UL, 0xB8AE51B6L);
    int64_t *l_506 = (void*)0;
    int32_t l_507 = 8L;
    int32_t *l_508 = (void*)0;
    int i, j, k;
    (*p_10) &= (l_490[0][0] <= FAKE_DIVERGE(p_519->local_1_offset, get_local_id(1), 10));
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    p_519->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 44)), permutations[(safe_mod_func_uint32_t_u_u(((VECTOR(uint32_t, 2))(safe_mul24_func_uint32_t_u_u(VECTOR(uint32_t, 2),((VECTOR(uint32_t, 8))(l_491.sb877a946)).s23, ((VECTOR(uint32_t, 4))(mad_sat(((VECTOR(uint32_t, 8))((((*p_519->g_98) &= (safe_mul_func_int16_t_s_s((((l_490[1][1] | (p_9 == (((l_507 ^= (((!l_491.se) == ((((((+(p_519->g_483[1] ^= ((((**p_519->g_467) = (safe_rshift_func_int16_t_s_u(p_519->g_233, (**p_519->g_362)))) == p_12) | (0x5A9DL == p_8)))) , ((VECTOR(uint16_t, 2))(add_sat(((VECTOR(uint16_t, 8))(l_497.yxyyyyyy)).s07, ((VECTOR(uint16_t, 2))(rotate(((VECTOR(uint16_t, 8))(hadd(((VECTOR(uint16_t, 16))(p_519->g_498.s3621777523067424)).lo, ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(mad_hi(((VECTOR(uint16_t, 2))(l_499.xy)).yyxy, ((VECTOR(uint16_t, 2))(sub_sat(((VECTOR(uint16_t, 2))(l_500.yx)), ((VECTOR(uint16_t, 2))(l_501.zw))))).yxyy, ((VECTOR(uint16_t, 8))(p_519->g_502.s43c1fd45)).odd))), 0x320AL, 0UL, 0x64F3L, 0UL))))).s21, ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(rotate(((VECTOR(uint16_t, 2))(safe_clamp_func(VECTOR(uint16_t, 2),uint16_t,((VECTOR(uint16_t, 16))((safe_div_func_uint64_t_u_u(FAKE_DIVERGE(p_519->group_0_offset, get_group_id(0), 10), ((!((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))(l_505.xxxy)).xzywxwxwxzwxxwxy)).sb) | 0L))), 0x2F3EL, 65535UL, ((VECTOR(uint16_t, 4))(0UL)), 0x6EFEL, p_8, ((VECTOR(uint16_t, 4))(1UL)), 0UL, 0x4E02L, 1UL)).s66, (uint16_t)0x488FL, (uint16_t)l_500.y))), ((VECTOR(uint16_t, 2))(0xD235L))))).yxyyxyyxyxyxyyyx)).s74)))))))).odd) & p_519->g_313.s7) ^ FAKE_DIVERGE(p_519->group_2_offset, get_group_id(2), 10)) > (*p_10)) >= GROUP_DIVERGE(2, 1))) != l_500.y)) , p_11) , (void*)0))) && (-9L)) < p_519->g_78), l_491.s7))) > p_12), 4294967295UL, 0xC74B39C0L, l_500.x, 4UL, 0xC1875629L, 0x54990EBCL, 0xB0FF4447L)).odd, ((VECTOR(uint32_t, 4))(0x86DB9511L)), ((VECTOR(uint32_t, 4))(0xAF3B6A08L))))).odd))).odd, 10))][(safe_mod_func_uint32_t_u_u(p_519->tid, 44))]));
    return l_508;
}


/* ------------------------------------------ */
/* 
 * reads : p_519->g_133
 * writes: p_519->g_133
 */
int32_t * func_16(int32_t * p_17, int32_t  p_18, uint16_t  p_19, uint64_t  p_20, struct S0 * p_519)
{ /* block id: 119 */
    uint16_t **l_360 = (void*)0;
    int32_t l_364 = 0x323B5B30L;
    int32_t l_381 = 0x1D8B3546L;
    int32_t l_382 = 0x45EFB86DL;
    int32_t l_387 = 0x5624AA66L;
    int32_t l_388 = 0x2435A037L;
    int32_t l_389 = 1L;
    int32_t l_391 = 0L;
    int32_t l_392 = 0x02FE08B5L;
    uint8_t l_393 = 1UL;
    VECTOR(int32_t, 2) l_406 = (VECTOR(int32_t, 2))(0x35DFCAF9L, 0x0AD73542L);
    int64_t **l_438 = &p_519->g_252;
    int8_t l_444 = (-5L);
    uint16_t *l_473 = &p_519->g_113;
    int i;
    for (p_519->g_133 = (-19); (p_519->g_133 >= 6); p_519->g_133 = safe_add_func_uint16_t_u_u(p_519->g_133, 7))
    { /* block id: 122 */
        int64_t l_357[8][7] = {{8L,(-5L),(-5L),8L,8L,(-5L),(-5L)},{8L,(-5L),(-5L),8L,8L,(-5L),(-5L)},{8L,(-5L),(-5L),8L,8L,(-5L),(-5L)},{8L,(-5L),(-5L),8L,8L,(-5L),(-5L)},{8L,(-5L),(-5L),8L,8L,(-5L),(-5L)},{8L,(-5L),(-5L),8L,8L,(-5L),(-5L)},{8L,(-5L),(-5L),8L,8L,(-5L),(-5L)},{8L,(-5L),(-5L),8L,8L,(-5L),(-5L)}};
        int32_t *l_359 = (void*)0;
        int32_t l_385 = 0x1C1167A7L;
        int32_t l_386 = (-8L);
        int32_t l_390 = 0x058D8626L;
        VECTOR(int32_t, 16) l_396 = (VECTOR(int32_t, 16))(0x23975C9BL, (VECTOR(int32_t, 4))(0x23975C9BL, (VECTOR(int32_t, 2))(0x23975C9BL, 1L), 1L), 1L, 0x23975C9BL, 1L, (VECTOR(int32_t, 2))(0x23975C9BL, 1L), (VECTOR(int32_t, 2))(0x23975C9BL, 1L), 0x23975C9BL, 1L, 0x23975C9BL, 1L);
        uint16_t ***l_397 = &p_519->g_362;
        VECTOR(int8_t, 8) l_403 = (VECTOR(int8_t, 8))((-2L), (VECTOR(int8_t, 4))((-2L), (VECTOR(int8_t, 2))((-2L), 0x73L), 0x73L), 0x73L, (-2L), 0x73L);
        VECTOR(uint16_t, 16) l_409 = (VECTOR(uint16_t, 16))(65526UL, (VECTOR(uint16_t, 4))(65526UL, (VECTOR(uint16_t, 2))(65526UL, 0x5654L), 0x5654L), 0x5654L, 65526UL, 0x5654L, (VECTOR(uint16_t, 2))(65526UL, 0x5654L), (VECTOR(uint16_t, 2))(65526UL, 0x5654L), 65526UL, 0x5654L, 65526UL, 0x5654L);
        VECTOR(int8_t, 4) l_421 = (VECTOR(int8_t, 4))(8L, (VECTOR(int8_t, 2))(8L, 0L), 0L);
        int16_t l_426 = 0x2EA9L;
        int32_t *l_441[6] = {&p_519->g_199,(void*)0,&p_519->g_199,&p_519->g_199,(void*)0,&p_519->g_199};
        int32_t *l_449 = &l_387;
        int64_t **l_452 = &p_519->g_252;
        int32_t *l_456 = &l_388;
        int64_t l_463 = 9L;
        int64_t l_486 = 1L;
        int i, j;
        (1 + 1);
    }
    return p_17;
}


/* ------------------------------------------ */
/* 
 * reads : p_519->g_133 p_519->g_14 p_519->g_309 p_519->g_256 p_519->g_78 p_519->g_176 p_519->g_179
 * writes: p_519->g_133 p_519->g_15 p_519->g_179
 */
int32_t * func_21(uint32_t  p_22, int32_t * p_23, int32_t * p_24, struct S0 * p_519)
{ /* block id: 106 */
    int32_t *l_334 = (void*)0;
    int32_t *l_335 = &p_519->g_15;
    int32_t *l_336[7] = {&p_519->g_78,&p_519->g_176,&p_519->g_78,&p_519->g_78,&p_519->g_176,&p_519->g_78,&p_519->g_78};
    int8_t l_337 = 0x7FL;
    VECTOR(int64_t, 2) l_338 = (VECTOR(int64_t, 2))(0x23013FB778EB83A8L, 0x6AB7F9D863FB4DD9L);
    uint8_t l_339 = 0UL;
    int8_t l_344 = 0x0DL;
    int8_t l_345 = 0x59L;
    VECTOR(uint32_t, 4) l_346 = (VECTOR(uint32_t, 4))(4294967288UL, (VECTOR(uint32_t, 2))(4294967288UL, 0x6F7E6344L), 0x6F7E6344L);
    int i;
    l_339--;
    for (p_519->g_133 = 0; (p_519->g_133 != 5); p_519->g_133 = safe_add_func_uint16_t_u_u(p_519->g_133, 3))
    { /* block id: 110 */
        (*p_519->g_14) = (-2L);
        if ((*p_24))
            continue;
        if ((**p_519->g_309))
            continue;
    }
    l_346.x--;
    (*p_23) |= (-2L);
    return p_23;
}


/* ------------------------------------------ */
/* 
 * reads : p_519->g_15 p_519->g_233 p_519->g_133 p_519->g_98 p_519->g_99 p_519->g_172 p_519->g_105 p_519->g_176 p_519->g_215 p_519->g_255 p_519->g_259 p_519->g_256 p_519->g_180 p_519->g_252 p_519->g_6 p_519->g_14 p_519->g_97 p_519->g_308 p_519->g_309 p_519->g_313 p_519->g_314 p_519->g_318
 * writes: p_519->g_233 p_519->g_180 p_519->g_176 p_519->g_252 p_519->g_256 p_519->g_259 p_519->g_97 p_519->g_133 p_519->g_15
 */
int8_t  func_29(int8_t * p_30, int32_t * p_31, int32_t * p_32, struct S0 * p_519)
{ /* block id: 65 */
    uint8_t l_220 = 0xFCL;
    int32_t *l_221 = (void*)0;
    int32_t l_227 = 0x7BE8ABB2L;
    int32_t l_228 = 0x2078140AL;
    int32_t l_229 = 0x3BDD3434L;
    int32_t l_230 = 0x4A44A834L;
    int32_t l_231 = 0x2C901CCDL;
    int16_t *l_236 = &p_519->g_111;
    int16_t *l_237 = &p_519->g_111;
    uint8_t l_248 = 1UL;
    int32_t l_295 = (-1L);
    int32_t l_296 = 0L;
    int32_t l_297 = 0L;
    int32_t l_299 = (-7L);
    int32_t l_300 = 1L;
    int32_t l_301 = 0x52665F52L;
    int32_t l_302 = 0x41F52835L;
    int32_t l_303 = 7L;
    int32_t l_304[8] = {(-6L),(-1L),(-6L),(-6L),(-1L),(-6L),(-6L),(-1L)};
    uint64_t l_305 = 0x8480836A69DA250BL;
    int16_t l_312 = 0x0B8CL;
    VECTOR(int32_t, 8) l_315 = (VECTOR(int32_t, 8))((-8L), (VECTOR(int32_t, 4))((-8L), (VECTOR(int32_t, 2))((-8L), 0x24509A3DL), 0x24509A3DL), 0x24509A3DL, (-8L), 0x24509A3DL);
    VECTOR(int32_t, 16) l_317 = (VECTOR(int32_t, 16))(0x7BA86002L, (VECTOR(int32_t, 4))(0x7BA86002L, (VECTOR(int32_t, 2))(0x7BA86002L, (-2L)), (-2L)), (-2L), 0x7BA86002L, (-2L), (VECTOR(int32_t, 2))(0x7BA86002L, (-2L)), (VECTOR(int32_t, 2))(0x7BA86002L, (-2L)), 0x7BA86002L, (-2L), 0x7BA86002L, (-2L));
    int32_t *l_320 = &l_304[3];
    int32_t *l_321 = &l_296;
    int32_t *l_322 = &l_297;
    int32_t *l_323 = &p_519->g_176;
    int32_t *l_324 = &p_519->g_176;
    int32_t *l_325 = &l_295;
    int32_t *l_326 = &p_519->g_15;
    int32_t *l_327 = &l_304[1];
    int32_t *l_328[4][2][9] = {{{&p_519->g_199,&l_297,&p_519->g_199,&p_519->g_199,&l_297,&p_519->g_199,&p_519->g_199,&l_297,&p_519->g_199},{&p_519->g_199,&l_297,&p_519->g_199,&p_519->g_199,&l_297,&p_519->g_199,&p_519->g_199,&l_297,&p_519->g_199}},{{&p_519->g_199,&l_297,&p_519->g_199,&p_519->g_199,&l_297,&p_519->g_199,&p_519->g_199,&l_297,&p_519->g_199},{&p_519->g_199,&l_297,&p_519->g_199,&p_519->g_199,&l_297,&p_519->g_199,&p_519->g_199,&l_297,&p_519->g_199}},{{&p_519->g_199,&l_297,&p_519->g_199,&p_519->g_199,&l_297,&p_519->g_199,&p_519->g_199,&l_297,&p_519->g_199},{&p_519->g_199,&l_297,&p_519->g_199,&p_519->g_199,&l_297,&p_519->g_199,&p_519->g_199,&l_297,&p_519->g_199}},{{&p_519->g_199,&l_297,&p_519->g_199,&p_519->g_199,&l_297,&p_519->g_199,&p_519->g_199,&l_297,&p_519->g_199},{&p_519->g_199,&l_297,&p_519->g_199,&p_519->g_199,&l_297,&p_519->g_199,&p_519->g_199,&l_297,&p_519->g_199}}};
    int32_t l_329 = (-1L);
    int32_t l_330 = 0x1D473552L;
    uint16_t l_331 = 1UL;
    int i, j, k;
    if ((((safe_mul_func_uint16_t_u_u((+p_519->g_15), l_220)) , (&p_519->g_60 != &p_519->g_60)) >= (l_221 == (void*)0)))
    { /* block id: 66 */
        int16_t l_222 = (-9L);
        int32_t *l_223 = (void*)0;
        int32_t *l_224 = &p_519->g_199;
        int32_t *l_225 = &p_519->g_15;
        int32_t *l_226[4];
        uint16_t *l_247 = &p_519->g_180;
        int i;
        for (i = 0; i < 4; i++)
            l_226[i] = &p_519->g_97;
        --p_519->g_233;
        p_519->g_176 &= (((l_236 == l_237) || ((safe_add_func_int64_t_s_s((safe_unary_minus_func_uint16_t_u((safe_sub_func_uint8_t_u_u(p_519->g_133, (*p_519->g_98))))), (*l_225))) | 7L)) | ((VECTOR(uint8_t, 16))(mad_hi(((VECTOR(uint8_t, 16))((safe_lshift_func_uint8_t_u_u((*l_225), 5)), ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(249UL, 0x27L)), 4UL, 0x20L)), (l_248 = (p_519->g_172[5] , ((safe_rshift_func_uint16_t_u_s((((*l_247) = GROUP_DIVERGE(2, 1)) >= (~p_519->g_105)), l_231)) , 252UL))), ((VECTOR(uint8_t, 4))(0x9DL)), ((VECTOR(uint8_t, 2))(0x5EL)), ((VECTOR(uint8_t, 2))(0x0DL)), 0x11L, 0xE9L)), ((VECTOR(uint8_t, 16))(248UL)), ((VECTOR(uint8_t, 16))(0x54L))))).sc);
    }
    else
    { /* block id: 71 */
        uint32_t l_249 = 0UL;
        int32_t l_273[7][5] = {{0x6C0FA0C8L,0x42484F5DL,0x77D5D280L,0x5D5EF9FEL,0x77D5D280L},{0x6C0FA0C8L,0x42484F5DL,0x77D5D280L,0x5D5EF9FEL,0x77D5D280L},{0x6C0FA0C8L,0x42484F5DL,0x77D5D280L,0x5D5EF9FEL,0x77D5D280L},{0x6C0FA0C8L,0x42484F5DL,0x77D5D280L,0x5D5EF9FEL,0x77D5D280L},{0x6C0FA0C8L,0x42484F5DL,0x77D5D280L,0x5D5EF9FEL,0x77D5D280L},{0x6C0FA0C8L,0x42484F5DL,0x77D5D280L,0x5D5EF9FEL,0x77D5D280L},{0x6C0FA0C8L,0x42484F5DL,0x77D5D280L,0x5D5EF9FEL,0x77D5D280L}};
        int16_t l_298 = 0x0105L;
        uint16_t *l_316 = &p_519->g_113;
        VECTOR(int32_t, 16) l_319 = (VECTOR(int32_t, 16))((-9L), (VECTOR(int32_t, 4))((-9L), (VECTOR(int32_t, 2))((-9L), 6L), 6L), 6L, (-9L), 6L, (VECTOR(int32_t, 2))((-9L), 6L), (VECTOR(int32_t, 2))((-9L), 6L), (-9L), 6L, (-9L), 6L);
        int i, j;
        if ((l_249 && l_249))
        { /* block id: 72 */
            int64_t *l_251 = (void*)0;
            int64_t **l_250 = &l_251;
            int32_t l_253[5][5][10] = {{{0x69774912L,0x698BAAADL,0x5FC91880L,0x03BC4A1AL,0x7C95BA0DL,0x14397996L,1L,0L,0x6BF90950L,0L},{0x69774912L,0x698BAAADL,0x5FC91880L,0x03BC4A1AL,0x7C95BA0DL,0x14397996L,1L,0L,0x6BF90950L,0L},{0x69774912L,0x698BAAADL,0x5FC91880L,0x03BC4A1AL,0x7C95BA0DL,0x14397996L,1L,0L,0x6BF90950L,0L},{0x69774912L,0x698BAAADL,0x5FC91880L,0x03BC4A1AL,0x7C95BA0DL,0x14397996L,1L,0L,0x6BF90950L,0L},{0x69774912L,0x698BAAADL,0x5FC91880L,0x03BC4A1AL,0x7C95BA0DL,0x14397996L,1L,0L,0x6BF90950L,0L}},{{0x69774912L,0x698BAAADL,0x5FC91880L,0x03BC4A1AL,0x7C95BA0DL,0x14397996L,1L,0L,0x6BF90950L,0L},{0x69774912L,0x698BAAADL,0x5FC91880L,0x03BC4A1AL,0x7C95BA0DL,0x14397996L,1L,0L,0x6BF90950L,0L},{0x69774912L,0x698BAAADL,0x5FC91880L,0x03BC4A1AL,0x7C95BA0DL,0x14397996L,1L,0L,0x6BF90950L,0L},{0x69774912L,0x698BAAADL,0x5FC91880L,0x03BC4A1AL,0x7C95BA0DL,0x14397996L,1L,0L,0x6BF90950L,0L},{0x69774912L,0x698BAAADL,0x5FC91880L,0x03BC4A1AL,0x7C95BA0DL,0x14397996L,1L,0L,0x6BF90950L,0L}},{{0x69774912L,0x698BAAADL,0x5FC91880L,0x03BC4A1AL,0x7C95BA0DL,0x14397996L,1L,0L,0x6BF90950L,0L},{0x69774912L,0x698BAAADL,0x5FC91880L,0x03BC4A1AL,0x7C95BA0DL,0x14397996L,1L,0L,0x6BF90950L,0L},{0x69774912L,0x698BAAADL,0x5FC91880L,0x03BC4A1AL,0x7C95BA0DL,0x14397996L,1L,0L,0x6BF90950L,0L},{0x69774912L,0x698BAAADL,0x5FC91880L,0x03BC4A1AL,0x7C95BA0DL,0x14397996L,1L,0L,0x6BF90950L,0L},{0x69774912L,0x698BAAADL,0x5FC91880L,0x03BC4A1AL,0x7C95BA0DL,0x14397996L,1L,0L,0x6BF90950L,0L}},{{0x69774912L,0x698BAAADL,0x5FC91880L,0x03BC4A1AL,0x7C95BA0DL,0x14397996L,1L,0L,0x6BF90950L,0L},{0x69774912L,0x698BAAADL,0x5FC91880L,0x03BC4A1AL,0x7C95BA0DL,0x14397996L,1L,0L,0x6BF90950L,0L},{0x69774912L,0x698BAAADL,0x5FC91880L,0x03BC4A1AL,0x7C95BA0DL,0x14397996L,1L,0L,0x6BF90950L,0L},{0x69774912L,0x698BAAADL,0x5FC91880L,0x03BC4A1AL,0x7C95BA0DL,0x14397996L,1L,0L,0x6BF90950L,0L},{0x69774912L,0x698BAAADL,0x5FC91880L,0x03BC4A1AL,0x7C95BA0DL,0x14397996L,1L,0L,0x6BF90950L,0L}},{{0x69774912L,0x698BAAADL,0x5FC91880L,0x03BC4A1AL,0x7C95BA0DL,0x14397996L,1L,0L,0x6BF90950L,0L},{0x69774912L,0x698BAAADL,0x5FC91880L,0x03BC4A1AL,0x7C95BA0DL,0x14397996L,1L,0L,0x6BF90950L,0L},{0x69774912L,0x698BAAADL,0x5FC91880L,0x03BC4A1AL,0x7C95BA0DL,0x14397996L,1L,0L,0x6BF90950L,0L},{0x69774912L,0x698BAAADL,0x5FC91880L,0x03BC4A1AL,0x7C95BA0DL,0x14397996L,1L,0L,0x6BF90950L,0L},{0x69774912L,0x698BAAADL,0x5FC91880L,0x03BC4A1AL,0x7C95BA0DL,0x14397996L,1L,0L,0x6BF90950L,0L}}};
            VECTOR(uint8_t, 16) l_271 = (VECTOR(uint8_t, 16))(253UL, (VECTOR(uint8_t, 4))(253UL, (VECTOR(uint8_t, 2))(253UL, 0x9EL), 0x9EL), 0x9EL, 253UL, 0x9EL, (VECTOR(uint8_t, 2))(253UL, 0x9EL), (VECTOR(uint8_t, 2))(253UL, 0x9EL), 253UL, 0x9EL, 253UL, 0x9EL);
            int i, j, k;
            l_253[1][2][8] = ((l_249 , ((*l_250) = (void*)0)) != (p_519->g_252 = p_519->g_215));
            (*p_519->g_255) = p_32;
            for (l_228 = 22; (l_228 <= 4); l_228--)
            { /* block id: 79 */
                int64_t ***l_260 = &p_519->g_259;
                uint16_t *l_263 = &p_519->g_180;
                int32_t l_268[3];
                int8_t *l_272 = &p_519->g_232;
                int32_t **l_274 = &p_519->g_256;
                int i;
                for (i = 0; i < 3; i++)
                    l_268[i] = (-1L);
                (*l_260) = p_519->g_259;
                for (p_519->g_97 = 6; (p_519->g_97 < (-15)); --p_519->g_97)
                { /* block id: 83 */
                    return (*p_519->g_98);
                }
                (*l_274) = func_42(func_42((*p_519->g_255), &p_519->g_99[3], (l_273[2][0] &= ((0x9094L >= ((*l_263) ^= l_249)) ^ (safe_add_func_int64_t_s_s((safe_rshift_func_uint8_t_u_u(l_268[0], 4)), (safe_add_func_uint8_t_u_u(((VECTOR(uint8_t, 4))(l_271.sa06c)).w, ((l_268[0] , (*p_519->g_252)) == (&p_519->g_232 == l_272)))))))), p_519), p_30, l_268[0], p_519);
            }
            for (p_519->g_133 = 0; (p_519->g_133 < (-17)); p_519->g_133--)
            { /* block id: 92 */
                VECTOR(int16_t, 16) l_277 = (VECTOR(int16_t, 16))(0x7028L, (VECTOR(int16_t, 4))(0x7028L, (VECTOR(int16_t, 2))(0x7028L, 0x2B48L), 0x2B48L), 0x2B48L, 0x7028L, 0x2B48L, (VECTOR(int16_t, 2))(0x7028L, 0x2B48L), (VECTOR(int16_t, 2))(0x7028L, 0x2B48L), 0x7028L, 0x2B48L, 0x7028L, 0x2B48L);
                int32_t *l_278 = (void*)0;
                int32_t *l_279 = &p_519->g_97;
                int32_t *l_280 = &l_229;
                int32_t *l_281 = &l_273[1][0];
                int32_t *l_282 = (void*)0;
                int32_t *l_283 = &l_228;
                int32_t *l_284 = &l_231;
                int32_t *l_285 = &l_230;
                int32_t *l_286 = &l_253[1][4][7];
                int32_t *l_287 = (void*)0;
                int32_t *l_288 = &p_519->g_199;
                int32_t *l_289 = (void*)0;
                int32_t *l_290 = &l_229;
                int32_t *l_291 = &l_228;
                int32_t *l_292 = &l_231;
                int32_t *l_293[7];
                int i;
                for (i = 0; i < 7; i++)
                    l_293[i] = &p_519->g_97;
                if (l_277.sd)
                    break;
                --l_305;
            }
        }
        else
        { /* block id: 96 */
            uint32_t l_310 = 0x0C06B612L;
            uint32_t *l_311 = &p_519->g_233;
            (*p_519->g_256) = (+((VECTOR(int32_t, 16))(p_519->g_308.xxyxyyyyxxyxyxyy)).sd);
            (*p_519->g_309) = p_32;
            (*p_519->g_14) = ((0x6FE0L > ((l_310 , l_311) == (void*)0)) && GROUP_DIVERGE(0, 1));
            l_312 ^= l_273[6][4];
        }
        (*p_519->g_14) = ((VECTOR(int32_t, 16))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 16))(rotate(((VECTOR(int32_t, 4))(p_519->g_313.s1541)).yxzzwwwwyxwzzwzy, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 2))(p_519->g_314.xx)).xxyxyxxxxyyxxyyx, ((VECTOR(int32_t, 8))(7L, ((VECTOR(int32_t, 2))(l_315.s62)), (l_236 != l_316), 0x719964D2L, 0x6356CCCBL, 0x3DF5E649L, 0x223591ACL)).s7332313052774452, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(l_317.s598cf16e)).s6462607332255432))))).sdd)).yyyyxxxyxyyxyxyx))), ((VECTOR(int32_t, 4))(p_519->g_318.s2461)).zxxywxzxxxxzwxxw, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(mul_hi(((VECTOR(int32_t, 4))(0x33606808L, 1L, 0x23BD8184L, 0x0F954912L)).yyywxxzw, ((VECTOR(int32_t, 2))(l_319.s96)).yxyyyyxx))).s37)).yyyyxxyxxyyyxxxy))))).se;
    }
    --l_331;
    return (*p_519->g_98);
}


/* ------------------------------------------ */
/* 
 * reads : p_519->g_15 p_519->g_14 p_519->g_98 p_519->g_99 p_519->g_78
 * writes: p_519->g_176 p_519->g_215 p_519->g_78
 */
int8_t * func_33(int8_t * p_34, uint32_t  p_35, int64_t  p_36, uint32_t  p_37, struct S0 * p_519)
{ /* block id: 58 */
    int32_t l_183 = 0x15808B98L;
    int32_t *l_184 = &p_519->g_78;
    int32_t *l_185 = &p_519->g_176;
    int32_t *l_186 = (void*)0;
    int32_t *l_187 = &p_519->g_176;
    int32_t *l_188 = &p_519->g_97;
    int32_t *l_189 = &p_519->g_176;
    int32_t *l_190 = &p_519->g_176;
    int32_t *l_191 = &p_519->g_176;
    int32_t l_192 = 0L;
    int32_t l_193 = 0x35052A22L;
    int32_t *l_194 = (void*)0;
    int32_t l_195 = (-9L);
    int32_t *l_196 = &l_193;
    int32_t *l_197 = &l_192;
    int32_t *l_198[2][10][2] = {{{&p_519->g_176,&p_519->g_78},{&p_519->g_176,&p_519->g_78},{&p_519->g_176,&p_519->g_78},{&p_519->g_176,&p_519->g_78},{&p_519->g_176,&p_519->g_78},{&p_519->g_176,&p_519->g_78},{&p_519->g_176,&p_519->g_78},{&p_519->g_176,&p_519->g_78},{&p_519->g_176,&p_519->g_78},{&p_519->g_176,&p_519->g_78}},{{&p_519->g_176,&p_519->g_78},{&p_519->g_176,&p_519->g_78},{&p_519->g_176,&p_519->g_78},{&p_519->g_176,&p_519->g_78},{&p_519->g_176,&p_519->g_78},{&p_519->g_176,&p_519->g_78},{&p_519->g_176,&p_519->g_78},{&p_519->g_176,&p_519->g_78},{&p_519->g_176,&p_519->g_78},{&p_519->g_176,&p_519->g_78}}};
    uint32_t l_200 = 0UL;
    VECTOR(uint8_t, 2) l_207 = (VECTOR(uint8_t, 2))(0x9FL, 1UL);
    int64_t *l_208 = &p_519->g_133;
    uint8_t *l_209 = (void*)0;
    uint8_t *l_210[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    uint64_t *l_216[4][5] = {{&p_519->g_105,&p_519->g_105,(void*)0,&p_519->g_105,&p_519->g_105},{&p_519->g_105,&p_519->g_105,(void*)0,&p_519->g_105,&p_519->g_105},{&p_519->g_105,&p_519->g_105,(void*)0,&p_519->g_105,&p_519->g_105},{&p_519->g_105,&p_519->g_105,(void*)0,&p_519->g_105,&p_519->g_105}};
    int i, j, k;
    --l_200;
    (*l_196) ^= (safe_mul_func_uint8_t_u_u(((safe_mod_func_int64_t_s_s((((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(4294967295UL, 0UL)).xyyx)).z != (((*l_189) = (((VECTOR(uint8_t, 4))(l_207.yyyx)).w || (l_208 != (GROUP_DIVERGE(1, 1) , l_208)))) < (p_519->g_15 >= (*l_197)))), p_35)) >= (p_35 && ((*l_184) ^= (((VECTOR(uint32_t, 16))(mul_hi(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))((safe_lshift_func_uint8_t_u_s(((safe_mod_func_int64_t_s_s(((*p_519->g_14) , (&p_519->g_105 == (p_519->g_215 = &p_519->g_105))), 1UL)) ^ 7UL), (*p_519->g_98))), 1UL, 0x50AA39C7L, 1UL)), ((VECTOR(uint32_t, 2))(0xF5CC73E7L)), 0UL, 4294967289UL)).s2171234572273225, ((VECTOR(uint32_t, 16))(4294967295UL))))).sb != (-1L))))), 9UL));
    return p_34;
}


/* ------------------------------------------ */
/* 
 * reads : p_519->g_78 p_519->g_14 p_519->g_15 p_519->g_97 p_519->g_89 p_519->g_91 p_519->g_99 p_519->g_173 p_519->g_180
 * writes: p_519->g_78 p_519->g_15 p_519->g_60 p_519->g_comm_values p_519->g_172 p_519->g_180
 */
int8_t * func_38(int32_t * p_39, uint32_t  p_40, uint32_t  p_41, struct S0 * p_519)
{ /* block id: 41 */
    uint8_t l_140 = 0x8DL;
    uint32_t *l_143 = &p_519->g_60;
    VECTOR(int16_t, 8) l_152 = (VECTOR(int16_t, 8))(0x6ADDL, (VECTOR(int16_t, 4))(0x6ADDL, (VECTOR(int16_t, 2))(0x6ADDL, 0x7392L), 0x7392L), 0x7392L, 0x6ADDL, 0x7392L);
    VECTOR(uint8_t, 4) l_153 = (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 253UL), 253UL);
    int32_t l_154 = 0x52B0BF17L;
    VECTOR(int16_t, 2) l_155 = (VECTOR(int16_t, 2))(0x22CEL, 3L);
    uint8_t *l_158 = (void*)0;
    uint8_t *l_159 = (void*)0;
    uint8_t *l_160 = (void*)0;
    uint8_t *l_161 = (void*)0;
    int64_t *l_162 = (void*)0;
    int64_t *l_163 = (void*)0;
    int64_t *l_164 = (void*)0;
    int64_t *l_165 = (void*)0;
    int64_t *l_166 = (void*)0;
    int64_t *l_167 = (void*)0;
    int64_t *l_168 = (void*)0;
    int64_t *l_169[6][7] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
    uint32_t *l_170 = (void*)0;
    uint32_t *l_171 = &p_519->g_172[5];
    int32_t *l_174 = &p_519->g_78;
    int32_t *l_175[2];
    int i, j;
    for (i = 0; i < 2; i++)
        l_175[i] = &p_519->g_78;
    for (p_519->g_78 = 0; (p_519->g_78 > (-22)); p_519->g_78 = safe_sub_func_uint64_t_u_u(p_519->g_78, 3))
    { /* block id: 44 */
        (*p_519->g_14) |= (safe_div_func_uint32_t_u_u(l_140, 0x7701912AL));
    }
    (*p_39) |= (p_519->g_97 || (safe_sub_func_uint32_t_u_u(((*l_143) = p_41), ((*l_171) = (safe_mul_func_uint16_t_u_u(p_519->g_89, (safe_rshift_func_int8_t_s_s(l_140, (((safe_add_func_int8_t_s_s(((0xB8C437238D2D0EFEL & (p_519->g_comm_values[p_519->tid] = ((*p_519->g_14) , (safe_mod_func_int16_t_s_s(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))((-1L), (-1L))), 0x4613L, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 16))(0L, (-4L), ((VECTOR(int16_t, 8))(l_152.s73420677)), (l_154 |= (((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(l_153.zyzy)).xxwxyyww)).s0 ^ ((void*)0 == &p_519->g_15))), 0L, ((VECTOR(int16_t, 2))(l_155.xx)), 0x174EL, (-2L))).s0779)), 0x6E47L, (safe_div_func_uint8_t_u_u((l_154 = l_155.y), p_519->g_91)), (-1L), 0x0686L, 0x2973L, p_519->g_99[0], 2L, 0x2EECL, 0L)).s0, 0x34DAL))))) | l_155.x), p_41)) < 1L) < 0L)))))))));
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    p_519->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 44)), permutations[(safe_mod_func_uint32_t_u_u(((VECTOR(uint32_t, 16))(p_519->g_173.s61b12810c4a4d08b)).s0, 10))][(safe_mod_func_uint32_t_u_u(p_519->tid, 44))]));
    ++p_519->g_180;
    return l_160;
}


/* ------------------------------------------ */
/* 
 * reads : p_519->g_6 p_519->g_14 p_519->g_15 p_519->g_100 p_519->g_78 p_519->g_98 p_519->g_99 p_519->g_97 p_519->g_127
 * writes: p_519->g_105 p_519->g_91 p_519->g_111 p_519->g_113 p_519->g_15 p_519->g_133
 */
int32_t * func_42(int32_t * p_43, int8_t * p_44, int16_t  p_45, struct S0 * p_519)
{ /* block id: 27 */
    VECTOR(int16_t, 4) l_108 = (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 1L), 1L);
    int16_t *l_109 = (void*)0;
    int16_t *l_110 = (void*)0;
    uint16_t *l_112 = &p_519->g_113;
    uint32_t *l_114[8] = {&p_519->g_60,&p_519->g_60,&p_519->g_60,&p_519->g_60,&p_519->g_60,&p_519->g_60,&p_519->g_60,&p_519->g_60};
    int32_t l_115 = 0L;
    uint64_t l_116[6];
    int32_t l_117 = 0x301B0BCFL;
    VECTOR(int8_t, 4) l_118 = (VECTOR(int8_t, 4))(0x5FL, (VECTOR(int8_t, 2))(0x5FL, 0x5EL), 0x5EL);
    int16_t l_119 = 1L;
    int16_t *l_126 = &l_119;
    int64_t *l_132 = &p_519->g_133;
    uint64_t *l_134 = &l_116[2];
    int i;
    for (i = 0; i < 6; i++)
        l_116[i] = 0x6CB3554E5FB264BAL;
    l_117 = ((((((l_115 ^= (p_519->g_6.sa | (((*p_519->g_14) | ((((((VECTOR(int64_t, 8))(rhadd(((VECTOR(int64_t, 4))(hadd(((VECTOR(int64_t, 2))(safe_clamp_func(VECTOR(int64_t, 2),int64_t,((VECTOR(int64_t, 2))(((VECTOR(int64_t, 8))(p_519->g_100.zzyzyxwz)).s25)), (int64_t)((6UL & (safe_add_func_uint32_t_u_u(((((p_45 < (safe_add_func_uint16_t_u_u(((*l_112) = ((VECTOR(uint16_t, 8))(1UL, (0x0EF410D8L >= ((p_519->g_105 = (&p_43 == (void*)0)) > (p_519->g_111 = (((-1L) || (safe_mul_func_int16_t_s_s(((VECTOR(int16_t, 16))(safe_clamp_func(VECTOR(int16_t, 16),int16_t,((VECTOR(int16_t, 8))(l_108.xyxxxxyz)).s2434154232717605, (int16_t)(((((p_519->g_91 = ((*p_519->g_14) != p_45)) >= l_108.w) | p_45) , 3UL) , p_45), (int16_t)p_519->g_78))).s5, l_108.z))) & 1L)))), ((VECTOR(uint16_t, 2))(0xDAAAL)), 0x263CL, 65535UL, 6UL, 0xC775L)).s0), l_108.x))) || (*p_43)) < (*p_519->g_98)) || l_108.y), 1UL))) , p_45), (int64_t)(-1L)))).xyxy, ((VECTOR(int64_t, 4))(7L))))).zwwxwyxw, ((VECTOR(int64_t, 8))(0x082AC582B1A140D6L))))).s5 | p_519->g_97) > l_108.w) & 18446744073709551615UL) , p_45)) , l_108.z))) , 0x624CL) <= p_45) | l_116[1]) , 0x4340C134DC7289F4L) | 0UL);
    l_117 = (((VECTOR(int8_t, 8))(l_118.zxzzzxyx)).s3 != ((!FAKE_DIVERGE(p_519->global_0_offset, get_global_id(0), 10)) <= ((*l_134) = ((VECTOR(uint64_t, 8))(0UL, 18446744073709551608UL, 0x0DCCF353F810095CL, ((0x6212L | ((l_119 = ((*p_519->g_14) = ((*p_519->g_98) != l_116[2]))) , (safe_sub_func_uint8_t_u_u(((safe_rshift_func_int8_t_s_u(((GROUP_DIVERGE(1, 1) >= (((p_45 , ((*l_126) &= 0x3844L)) , (((VECTOR(uint64_t, 8))(p_519->g_127.xxyyxyyx)).s6 , (((*l_132) = (((((VECTOR(uint32_t, 2))(abs(((VECTOR(uint32_t, 2))(add_sat(((VECTOR(uint32_t, 4))(0x0A9F045BL, 0UL, 0x9FC326A3L, 0UL)).even, ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 2))(4294967290UL, 4294967288UL)))))))))).hi == (safe_add_func_int16_t_s_s(p_519->g_100.y, (safe_add_func_uint64_t_u_u(l_118.x, (((void*)0 == &p_519->g_99[3]) != 0x27F26C9C1765A925L)))))) < p_45) <= (-1L))) , (void*)0))) != p_43)) , (*p_44)), 2)) >= 0L), l_117)))) == 0x428CL), ((VECTOR(uint64_t, 4))(0x2AFDE751A909BF4FL)))).s6)));
    return &p_519->g_78;
}


/* ------------------------------------------ */
/* 
 * reads : p_519->g_14 p_519->g_60 p_519->g_6 p_519->g_15 p_519->g_comm_values p_519->l_comm_values p_519->g_93 p_519->g_97 p_519->g_98
 * writes: p_519->g_15 p_519->g_60 p_519->g_78 p_519->g_93 p_519->g_97
 */
int8_t * func_46(int16_t  p_47, uint8_t  p_48, uint64_t  p_49, uint32_t  p_50, struct S0 * p_519)
{ /* block id: 6 */
    uint8_t l_53 = 254UL;
    int32_t *l_63 = &p_519->g_15;
    uint64_t l_72 = 18446744073709551606UL;
    uint64_t *l_73 = &l_72;
    int32_t *l_96 = &p_519->g_97;
    (*p_519->g_14) = (safe_lshift_func_uint8_t_u_s(((l_53 > ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 2))(6L, (-7L))))).hi) > 1UL), 2));
    (*l_96) |= func_54((p_519->g_60--), (l_53 <= 0UL), p_519->g_6.sf, l_63, (p_49 , ((safe_sub_func_int8_t_s_s(((((*l_73) = (safe_mod_func_uint32_t_u_u((safe_rshift_func_int8_t_s_u((+((((*l_63) & (((VECTOR(uint64_t, 2))(18446744073709551615UL, 0xAA682D83ED3529ACL)).hi ^ (!0x49BF6A774B632CC1L))) >= (~p_519->g_comm_values[p_519->tid])) <= ((safe_div_func_uint8_t_u_u(((((p_50 < l_72) , (*l_63)) , l_63) == l_63), p_50)) <= (*l_63)))), p_519->l_comm_values[(safe_mod_func_uint32_t_u_u(p_519->tid, 44))])), (*l_63)))) > p_519->g_comm_values[p_519->tid]) != p_50), (*l_63))) , (*l_63))), p_519);
    return p_519->g_98;
}


/* ------------------------------------------ */
/* 
 * reads : p_519->g_15 p_519->g_93
 * writes: p_519->g_15 p_519->g_78 p_519->g_93
 */
int32_t  func_54(uint64_t  p_55, int16_t  p_56, uint64_t  p_57, int32_t * p_58, int32_t  p_59, struct S0 * p_519)
{ /* block id: 10 */
    int32_t l_88 = 8L;
    int32_t l_90 = 0x7F353C28L;
    int32_t l_92[5];
    int i;
    for (i = 0; i < 5; i++)
        l_92[i] = 1L;
    for (p_519->g_15 = (-24); (p_519->g_15 > 0); p_519->g_15 = safe_add_func_int32_t_s_s(p_519->g_15, 5))
    { /* block id: 13 */
        int16_t l_76 = 0x7CF0L;
        int32_t *l_77 = &p_519->g_78;
        int32_t **l_79 = (void*)0;
        if (l_76)
            break;
        (*l_77) = 1L;
        p_58 = &p_519->g_78;
        p_58 = &p_519->g_15;
    }
    for (p_57 = 7; (p_57 > 9); ++p_57)
    { /* block id: 21 */
        int32_t *l_82 = &p_519->g_78;
        int32_t *l_83 = &p_519->g_78;
        int32_t *l_84 = &p_519->g_78;
        int32_t *l_85 = &p_519->g_15;
        int32_t *l_86 = (void*)0;
        int32_t *l_87[8] = {&p_519->g_15,&p_519->g_15,&p_519->g_15,&p_519->g_15,&p_519->g_15,&p_519->g_15,&p_519->g_15,&p_519->g_15};
        int i;
        --p_519->g_93;
    }
    return l_92[4];
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global volatile int *g_atomic_reduction, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[35];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 35; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[35];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 35; i++)
            l_special_values[i] = 0;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    __local int64_t l_comm_values[44];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 44; i++)
            l_comm_values[i] = 1;
    struct S0 c_520;
    struct S0* p_519 = &c_520;
    struct S0 c_521 = {
        (VECTOR(uint16_t, 16))(0x4B28L, (VECTOR(uint16_t, 4))(0x4B28L, (VECTOR(uint16_t, 2))(0x4B28L, 0x66C9L), 0x66C9L), 0x66C9L, 0x4B28L, 0x66C9L, (VECTOR(uint16_t, 2))(0x4B28L, 0x66C9L), (VECTOR(uint16_t, 2))(0x4B28L, 0x66C9L), 0x4B28L, 0x66C9L, 0x4B28L, 0x66C9L), // p_519->g_6
        8L, // p_519->g_15
        &p_519->g_15, // p_519->g_14
        (-10L), // p_519->g_28
        4294967295UL, // p_519->g_60
        0x5DC8DEE7L, // p_519->g_78
        (-1L), // p_519->g_89
        0x3CECL, // p_519->g_91
        0UL, // p_519->g_93
        (-3L), // p_519->g_97
        {0x07L,0x07L,0x07L,0x07L}, // p_519->g_99
        &p_519->g_99[3], // p_519->g_98
        (VECTOR(int64_t, 4))(0x219E070DDB654FA8L, (VECTOR(int64_t, 2))(0x219E070DDB654FA8L, 8L), 8L), // p_519->g_100
        2UL, // p_519->g_105
        0x23B8L, // p_519->g_111
        65535UL, // p_519->g_113
        (VECTOR(uint64_t, 2))(0UL, 0xF15DF2204A484DF5L), // p_519->g_127
        (-10L), // p_519->g_133
        {0x858C9672L,0x858C9672L,0x858C9672L,0x858C9672L,0x858C9672L,0x858C9672L}, // p_519->g_172
        (VECTOR(uint32_t, 16))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 4294967294UL), 4294967294UL), 4294967294UL, 0UL, 4294967294UL, (VECTOR(uint32_t, 2))(0UL, 4294967294UL), (VECTOR(uint32_t, 2))(0UL, 4294967294UL), 0UL, 4294967294UL, 0UL, 4294967294UL), // p_519->g_173
        (-9L), // p_519->g_176
        {(-1L),0x3138L,(-1L),(-1L),0x3138L,(-1L),(-1L)}, // p_519->g_177
        0x08AD4082L, // p_519->g_178
        (-5L), // p_519->g_179
        0x87EBL, // p_519->g_180
        (-5L), // p_519->g_199
        &p_519->g_105, // p_519->g_215
        0x1DL, // p_519->g_232
        8UL, // p_519->g_233
        (void*)0, // p_519->g_252
        {{{&p_519->g_14,(void*)0,&p_519->g_14,(void*)0,&p_519->g_14,&p_519->g_14},{&p_519->g_14,(void*)0,&p_519->g_14,(void*)0,&p_519->g_14,&p_519->g_14},{&p_519->g_14,(void*)0,&p_519->g_14,(void*)0,&p_519->g_14,&p_519->g_14},{&p_519->g_14,(void*)0,&p_519->g_14,(void*)0,&p_519->g_14,&p_519->g_14},{&p_519->g_14,(void*)0,&p_519->g_14,(void*)0,&p_519->g_14,&p_519->g_14},{&p_519->g_14,(void*)0,&p_519->g_14,(void*)0,&p_519->g_14,&p_519->g_14}},{{&p_519->g_14,(void*)0,&p_519->g_14,(void*)0,&p_519->g_14,&p_519->g_14},{&p_519->g_14,(void*)0,&p_519->g_14,(void*)0,&p_519->g_14,&p_519->g_14},{&p_519->g_14,(void*)0,&p_519->g_14,(void*)0,&p_519->g_14,&p_519->g_14},{&p_519->g_14,(void*)0,&p_519->g_14,(void*)0,&p_519->g_14,&p_519->g_14},{&p_519->g_14,(void*)0,&p_519->g_14,(void*)0,&p_519->g_14,&p_519->g_14},{&p_519->g_14,(void*)0,&p_519->g_14,(void*)0,&p_519->g_14,&p_519->g_14}},{{&p_519->g_14,(void*)0,&p_519->g_14,(void*)0,&p_519->g_14,&p_519->g_14},{&p_519->g_14,(void*)0,&p_519->g_14,(void*)0,&p_519->g_14,&p_519->g_14},{&p_519->g_14,(void*)0,&p_519->g_14,(void*)0,&p_519->g_14,&p_519->g_14},{&p_519->g_14,(void*)0,&p_519->g_14,(void*)0,&p_519->g_14,&p_519->g_14},{&p_519->g_14,(void*)0,&p_519->g_14,(void*)0,&p_519->g_14,&p_519->g_14},{&p_519->g_14,(void*)0,&p_519->g_14,(void*)0,&p_519->g_14,&p_519->g_14}},{{&p_519->g_14,(void*)0,&p_519->g_14,(void*)0,&p_519->g_14,&p_519->g_14},{&p_519->g_14,(void*)0,&p_519->g_14,(void*)0,&p_519->g_14,&p_519->g_14},{&p_519->g_14,(void*)0,&p_519->g_14,(void*)0,&p_519->g_14,&p_519->g_14},{&p_519->g_14,(void*)0,&p_519->g_14,(void*)0,&p_519->g_14,&p_519->g_14},{&p_519->g_14,(void*)0,&p_519->g_14,(void*)0,&p_519->g_14,&p_519->g_14},{&p_519->g_14,(void*)0,&p_519->g_14,(void*)0,&p_519->g_14,&p_519->g_14}},{{&p_519->g_14,(void*)0,&p_519->g_14,(void*)0,&p_519->g_14,&p_519->g_14},{&p_519->g_14,(void*)0,&p_519->g_14,(void*)0,&p_519->g_14,&p_519->g_14},{&p_519->g_14,(void*)0,&p_519->g_14,(void*)0,&p_519->g_14,&p_519->g_14},{&p_519->g_14,(void*)0,&p_519->g_14,(void*)0,&p_519->g_14,&p_519->g_14},{&p_519->g_14,(void*)0,&p_519->g_14,(void*)0,&p_519->g_14,&p_519->g_14},{&p_519->g_14,(void*)0,&p_519->g_14,(void*)0,&p_519->g_14,&p_519->g_14}},{{&p_519->g_14,(void*)0,&p_519->g_14,(void*)0,&p_519->g_14,&p_519->g_14},{&p_519->g_14,(void*)0,&p_519->g_14,(void*)0,&p_519->g_14,&p_519->g_14},{&p_519->g_14,(void*)0,&p_519->g_14,(void*)0,&p_519->g_14,&p_519->g_14},{&p_519->g_14,(void*)0,&p_519->g_14,(void*)0,&p_519->g_14,&p_519->g_14},{&p_519->g_14,(void*)0,&p_519->g_14,(void*)0,&p_519->g_14,&p_519->g_14},{&p_519->g_14,(void*)0,&p_519->g_14,(void*)0,&p_519->g_14,&p_519->g_14}},{{&p_519->g_14,(void*)0,&p_519->g_14,(void*)0,&p_519->g_14,&p_519->g_14},{&p_519->g_14,(void*)0,&p_519->g_14,(void*)0,&p_519->g_14,&p_519->g_14},{&p_519->g_14,(void*)0,&p_519->g_14,(void*)0,&p_519->g_14,&p_519->g_14},{&p_519->g_14,(void*)0,&p_519->g_14,(void*)0,&p_519->g_14,&p_519->g_14},{&p_519->g_14,(void*)0,&p_519->g_14,(void*)0,&p_519->g_14,&p_519->g_14},{&p_519->g_14,(void*)0,&p_519->g_14,(void*)0,&p_519->g_14,&p_519->g_14}}}, // p_519->g_254
        &p_519->g_176, // p_519->g_256
        &p_519->g_256, // p_519->g_255
        (void*)0, // p_519->g_259
        6L, // p_519->g_294
        (VECTOR(int32_t, 2))(0x31A158E4L, (-4L)), // p_519->g_308
        &p_519->g_256, // p_519->g_309
        (VECTOR(int32_t, 8))(0x2BD41413L, (VECTOR(int32_t, 4))(0x2BD41413L, (VECTOR(int32_t, 2))(0x2BD41413L, 4L), 4L), 4L, 0x2BD41413L, 4L), // p_519->g_313
        (VECTOR(int32_t, 4))((-9L), (VECTOR(int32_t, 2))((-9L), 0x47A6301FL), 0x47A6301FL), // p_519->g_314
        (VECTOR(int32_t, 8))(0x59FB0953L, (VECTOR(int32_t, 4))(0x59FB0953L, (VECTOR(int32_t, 2))(0x59FB0953L, 0x7ADAC12DL), 0x7ADAC12DL), 0x7ADAC12DL, 0x59FB0953L, 0x7ADAC12DL), // p_519->g_318
        &p_519->g_180, // p_519->g_363
        &p_519->g_363, // p_519->g_362
        &p_519->g_362, // p_519->g_361
        {1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL}, // p_519->g_373
        (void*)0, // p_519->g_399
        (VECTOR(int8_t, 2))(0x21L, 1L), // p_519->g_419
        0x31009AE3L, // p_519->g_433
        &p_519->g_256, // p_519->g_466
        &p_519->g_363, // p_519->g_467
        (VECTOR(int8_t, 16))(0x4CL, (VECTOR(int8_t, 4))(0x4CL, (VECTOR(int8_t, 2))(0x4CL, (-1L)), (-1L)), (-1L), 0x4CL, (-1L), (VECTOR(int8_t, 2))(0x4CL, (-1L)), (VECTOR(int8_t, 2))(0x4CL, (-1L)), 0x4CL, (-1L), 0x4CL, (-1L)), // p_519->g_468
        {0x5245L,0x5245L,0x5245L,0x5245L}, // p_519->g_483
        (VECTOR(uint16_t, 8))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 9UL), 9UL), 9UL, 0UL, 9UL), // p_519->g_498
        (VECTOR(uint16_t, 16))(0x7530L, (VECTOR(uint16_t, 4))(0x7530L, (VECTOR(uint16_t, 2))(0x7530L, 0x074DL), 0x074DL), 0x074DL, 0x7530L, 0x074DL, (VECTOR(uint16_t, 2))(0x7530L, 0x074DL), (VECTOR(uint16_t, 2))(0x7530L, 0x074DL), 0x7530L, 0x074DL, 0x7530L, 0x074DL), // p_519->g_502
        (VECTOR(int32_t, 8))(0x23F11769L, (VECTOR(int32_t, 4))(0x23F11769L, (VECTOR(int32_t, 2))(0x23F11769L, (-1L)), (-1L)), (-1L), 0x23F11769L, (-1L)), // p_519->g_509
        0, // p_519->v_collective
        sequence_input[get_global_id(0)], // p_519->global_0_offset
        sequence_input[get_global_id(1)], // p_519->global_1_offset
        sequence_input[get_global_id(2)], // p_519->global_2_offset
        sequence_input[get_local_id(0)], // p_519->local_0_offset
        sequence_input[get_local_id(1)], // p_519->local_1_offset
        sequence_input[get_local_id(2)], // p_519->local_2_offset
        sequence_input[get_group_id(0)], // p_519->group_0_offset
        sequence_input[get_group_id(1)], // p_519->group_1_offset
        sequence_input[get_group_id(2)], // p_519->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 44)), permutations[0][get_linear_local_id()])), // p_519->tid
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_520 = c_521;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_519);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_519->g_6.s0, "p_519->g_6.s0", print_hash_value);
    transparent_crc(p_519->g_6.s1, "p_519->g_6.s1", print_hash_value);
    transparent_crc(p_519->g_6.s2, "p_519->g_6.s2", print_hash_value);
    transparent_crc(p_519->g_6.s3, "p_519->g_6.s3", print_hash_value);
    transparent_crc(p_519->g_6.s4, "p_519->g_6.s4", print_hash_value);
    transparent_crc(p_519->g_6.s5, "p_519->g_6.s5", print_hash_value);
    transparent_crc(p_519->g_6.s6, "p_519->g_6.s6", print_hash_value);
    transparent_crc(p_519->g_6.s7, "p_519->g_6.s7", print_hash_value);
    transparent_crc(p_519->g_6.s8, "p_519->g_6.s8", print_hash_value);
    transparent_crc(p_519->g_6.s9, "p_519->g_6.s9", print_hash_value);
    transparent_crc(p_519->g_6.sa, "p_519->g_6.sa", print_hash_value);
    transparent_crc(p_519->g_6.sb, "p_519->g_6.sb", print_hash_value);
    transparent_crc(p_519->g_6.sc, "p_519->g_6.sc", print_hash_value);
    transparent_crc(p_519->g_6.sd, "p_519->g_6.sd", print_hash_value);
    transparent_crc(p_519->g_6.se, "p_519->g_6.se", print_hash_value);
    transparent_crc(p_519->g_6.sf, "p_519->g_6.sf", print_hash_value);
    transparent_crc(p_519->g_15, "p_519->g_15", print_hash_value);
    transparent_crc(p_519->g_28, "p_519->g_28", print_hash_value);
    transparent_crc(p_519->g_60, "p_519->g_60", print_hash_value);
    transparent_crc(p_519->g_78, "p_519->g_78", print_hash_value);
    transparent_crc(p_519->g_89, "p_519->g_89", print_hash_value);
    transparent_crc(p_519->g_91, "p_519->g_91", print_hash_value);
    transparent_crc(p_519->g_93, "p_519->g_93", print_hash_value);
    transparent_crc(p_519->g_97, "p_519->g_97", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_519->g_99[i], "p_519->g_99[i]", print_hash_value);

    }
    transparent_crc(p_519->g_100.x, "p_519->g_100.x", print_hash_value);
    transparent_crc(p_519->g_100.y, "p_519->g_100.y", print_hash_value);
    transparent_crc(p_519->g_100.z, "p_519->g_100.z", print_hash_value);
    transparent_crc(p_519->g_100.w, "p_519->g_100.w", print_hash_value);
    transparent_crc(p_519->g_105, "p_519->g_105", print_hash_value);
    transparent_crc(p_519->g_111, "p_519->g_111", print_hash_value);
    transparent_crc(p_519->g_113, "p_519->g_113", print_hash_value);
    transparent_crc(p_519->g_127.x, "p_519->g_127.x", print_hash_value);
    transparent_crc(p_519->g_127.y, "p_519->g_127.y", print_hash_value);
    transparent_crc(p_519->g_133, "p_519->g_133", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_519->g_172[i], "p_519->g_172[i]", print_hash_value);

    }
    transparent_crc(p_519->g_173.s0, "p_519->g_173.s0", print_hash_value);
    transparent_crc(p_519->g_173.s1, "p_519->g_173.s1", print_hash_value);
    transparent_crc(p_519->g_173.s2, "p_519->g_173.s2", print_hash_value);
    transparent_crc(p_519->g_173.s3, "p_519->g_173.s3", print_hash_value);
    transparent_crc(p_519->g_173.s4, "p_519->g_173.s4", print_hash_value);
    transparent_crc(p_519->g_173.s5, "p_519->g_173.s5", print_hash_value);
    transparent_crc(p_519->g_173.s6, "p_519->g_173.s6", print_hash_value);
    transparent_crc(p_519->g_173.s7, "p_519->g_173.s7", print_hash_value);
    transparent_crc(p_519->g_173.s8, "p_519->g_173.s8", print_hash_value);
    transparent_crc(p_519->g_173.s9, "p_519->g_173.s9", print_hash_value);
    transparent_crc(p_519->g_173.sa, "p_519->g_173.sa", print_hash_value);
    transparent_crc(p_519->g_173.sb, "p_519->g_173.sb", print_hash_value);
    transparent_crc(p_519->g_173.sc, "p_519->g_173.sc", print_hash_value);
    transparent_crc(p_519->g_173.sd, "p_519->g_173.sd", print_hash_value);
    transparent_crc(p_519->g_173.se, "p_519->g_173.se", print_hash_value);
    transparent_crc(p_519->g_173.sf, "p_519->g_173.sf", print_hash_value);
    transparent_crc(p_519->g_176, "p_519->g_176", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_519->g_177[i], "p_519->g_177[i]", print_hash_value);

    }
    transparent_crc(p_519->g_178, "p_519->g_178", print_hash_value);
    transparent_crc(p_519->g_179, "p_519->g_179", print_hash_value);
    transparent_crc(p_519->g_180, "p_519->g_180", print_hash_value);
    transparent_crc(p_519->g_199, "p_519->g_199", print_hash_value);
    transparent_crc(p_519->g_232, "p_519->g_232", print_hash_value);
    transparent_crc(p_519->g_233, "p_519->g_233", print_hash_value);
    transparent_crc(p_519->g_294, "p_519->g_294", print_hash_value);
    transparent_crc(p_519->g_308.x, "p_519->g_308.x", print_hash_value);
    transparent_crc(p_519->g_308.y, "p_519->g_308.y", print_hash_value);
    transparent_crc(p_519->g_313.s0, "p_519->g_313.s0", print_hash_value);
    transparent_crc(p_519->g_313.s1, "p_519->g_313.s1", print_hash_value);
    transparent_crc(p_519->g_313.s2, "p_519->g_313.s2", print_hash_value);
    transparent_crc(p_519->g_313.s3, "p_519->g_313.s3", print_hash_value);
    transparent_crc(p_519->g_313.s4, "p_519->g_313.s4", print_hash_value);
    transparent_crc(p_519->g_313.s5, "p_519->g_313.s5", print_hash_value);
    transparent_crc(p_519->g_313.s6, "p_519->g_313.s6", print_hash_value);
    transparent_crc(p_519->g_313.s7, "p_519->g_313.s7", print_hash_value);
    transparent_crc(p_519->g_314.x, "p_519->g_314.x", print_hash_value);
    transparent_crc(p_519->g_314.y, "p_519->g_314.y", print_hash_value);
    transparent_crc(p_519->g_314.z, "p_519->g_314.z", print_hash_value);
    transparent_crc(p_519->g_314.w, "p_519->g_314.w", print_hash_value);
    transparent_crc(p_519->g_318.s0, "p_519->g_318.s0", print_hash_value);
    transparent_crc(p_519->g_318.s1, "p_519->g_318.s1", print_hash_value);
    transparent_crc(p_519->g_318.s2, "p_519->g_318.s2", print_hash_value);
    transparent_crc(p_519->g_318.s3, "p_519->g_318.s3", print_hash_value);
    transparent_crc(p_519->g_318.s4, "p_519->g_318.s4", print_hash_value);
    transparent_crc(p_519->g_318.s5, "p_519->g_318.s5", print_hash_value);
    transparent_crc(p_519->g_318.s6, "p_519->g_318.s6", print_hash_value);
    transparent_crc(p_519->g_318.s7, "p_519->g_318.s7", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_519->g_373[i], "p_519->g_373[i]", print_hash_value);

    }
    transparent_crc(p_519->g_419.x, "p_519->g_419.x", print_hash_value);
    transparent_crc(p_519->g_419.y, "p_519->g_419.y", print_hash_value);
    transparent_crc(p_519->g_433, "p_519->g_433", print_hash_value);
    transparent_crc(p_519->g_468.s0, "p_519->g_468.s0", print_hash_value);
    transparent_crc(p_519->g_468.s1, "p_519->g_468.s1", print_hash_value);
    transparent_crc(p_519->g_468.s2, "p_519->g_468.s2", print_hash_value);
    transparent_crc(p_519->g_468.s3, "p_519->g_468.s3", print_hash_value);
    transparent_crc(p_519->g_468.s4, "p_519->g_468.s4", print_hash_value);
    transparent_crc(p_519->g_468.s5, "p_519->g_468.s5", print_hash_value);
    transparent_crc(p_519->g_468.s6, "p_519->g_468.s6", print_hash_value);
    transparent_crc(p_519->g_468.s7, "p_519->g_468.s7", print_hash_value);
    transparent_crc(p_519->g_468.s8, "p_519->g_468.s8", print_hash_value);
    transparent_crc(p_519->g_468.s9, "p_519->g_468.s9", print_hash_value);
    transparent_crc(p_519->g_468.sa, "p_519->g_468.sa", print_hash_value);
    transparent_crc(p_519->g_468.sb, "p_519->g_468.sb", print_hash_value);
    transparent_crc(p_519->g_468.sc, "p_519->g_468.sc", print_hash_value);
    transparent_crc(p_519->g_468.sd, "p_519->g_468.sd", print_hash_value);
    transparent_crc(p_519->g_468.se, "p_519->g_468.se", print_hash_value);
    transparent_crc(p_519->g_468.sf, "p_519->g_468.sf", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_519->g_483[i], "p_519->g_483[i]", print_hash_value);

    }
    transparent_crc(p_519->g_498.s0, "p_519->g_498.s0", print_hash_value);
    transparent_crc(p_519->g_498.s1, "p_519->g_498.s1", print_hash_value);
    transparent_crc(p_519->g_498.s2, "p_519->g_498.s2", print_hash_value);
    transparent_crc(p_519->g_498.s3, "p_519->g_498.s3", print_hash_value);
    transparent_crc(p_519->g_498.s4, "p_519->g_498.s4", print_hash_value);
    transparent_crc(p_519->g_498.s5, "p_519->g_498.s5", print_hash_value);
    transparent_crc(p_519->g_498.s6, "p_519->g_498.s6", print_hash_value);
    transparent_crc(p_519->g_498.s7, "p_519->g_498.s7", print_hash_value);
    transparent_crc(p_519->g_502.s0, "p_519->g_502.s0", print_hash_value);
    transparent_crc(p_519->g_502.s1, "p_519->g_502.s1", print_hash_value);
    transparent_crc(p_519->g_502.s2, "p_519->g_502.s2", print_hash_value);
    transparent_crc(p_519->g_502.s3, "p_519->g_502.s3", print_hash_value);
    transparent_crc(p_519->g_502.s4, "p_519->g_502.s4", print_hash_value);
    transparent_crc(p_519->g_502.s5, "p_519->g_502.s5", print_hash_value);
    transparent_crc(p_519->g_502.s6, "p_519->g_502.s6", print_hash_value);
    transparent_crc(p_519->g_502.s7, "p_519->g_502.s7", print_hash_value);
    transparent_crc(p_519->g_502.s8, "p_519->g_502.s8", print_hash_value);
    transparent_crc(p_519->g_502.s9, "p_519->g_502.s9", print_hash_value);
    transparent_crc(p_519->g_502.sa, "p_519->g_502.sa", print_hash_value);
    transparent_crc(p_519->g_502.sb, "p_519->g_502.sb", print_hash_value);
    transparent_crc(p_519->g_502.sc, "p_519->g_502.sc", print_hash_value);
    transparent_crc(p_519->g_502.sd, "p_519->g_502.sd", print_hash_value);
    transparent_crc(p_519->g_502.se, "p_519->g_502.se", print_hash_value);
    transparent_crc(p_519->g_502.sf, "p_519->g_502.sf", print_hash_value);
    transparent_crc(p_519->g_509.s0, "p_519->g_509.s0", print_hash_value);
    transparent_crc(p_519->g_509.s1, "p_519->g_509.s1", print_hash_value);
    transparent_crc(p_519->g_509.s2, "p_519->g_509.s2", print_hash_value);
    transparent_crc(p_519->g_509.s3, "p_519->g_509.s3", print_hash_value);
    transparent_crc(p_519->g_509.s4, "p_519->g_509.s4", print_hash_value);
    transparent_crc(p_519->g_509.s5, "p_519->g_509.s5", print_hash_value);
    transparent_crc(p_519->g_509.s6, "p_519->g_509.s6", print_hash_value);
    transparent_crc(p_519->g_509.s7, "p_519->g_509.s7", print_hash_value);
    transparent_crc(p_519->v_collective, "p_519->v_collective", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 35; i++)
            transparent_crc(p_519->l_special_values[i], "p_519->l_special_values[i]", print_hash_value);
    transparent_crc(p_519->l_comm_values[get_linear_local_id()], "p_519->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_519->g_comm_values[get_linear_group_id() * 44 + get_linear_local_id()], "p_519->g_comm_values[get_linear_group_id() * 44 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
