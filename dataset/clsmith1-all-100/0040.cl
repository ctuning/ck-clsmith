// --atomics 65 ---atomic_reductions ---fake_divergence ---inter_thread_comm -g 75,17,1 -l 25,1,1
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

__constant uint32_t permutations[10][25] = {
{9,17,23,4,19,3,10,16,1,11,5,14,18,15,22,21,7,24,8,0,13,6,12,2,20}, // permutation 0
{8,4,12,5,16,24,19,17,22,11,10,15,13,9,1,2,0,14,21,7,23,18,3,6,20}, // permutation 1
{5,15,18,21,10,9,13,11,22,12,8,17,14,19,2,23,4,20,3,16,6,7,1,24,0}, // permutation 2
{20,21,9,2,12,14,5,16,23,18,3,15,17,8,6,19,11,1,10,7,24,13,0,22,4}, // permutation 3
{5,4,6,8,11,21,3,14,9,1,7,15,16,19,12,20,0,23,2,24,13,18,17,10,22}, // permutation 4
{14,7,16,13,2,21,0,11,19,20,12,22,1,3,10,8,24,4,17,6,15,5,23,18,9}, // permutation 5
{3,22,16,14,1,23,8,24,5,20,9,11,18,7,17,10,15,4,0,6,19,21,2,13,12}, // permutation 6
{17,11,12,21,8,5,9,15,22,23,0,18,6,4,24,14,13,16,10,20,3,7,2,19,1}, // permutation 7
{2,17,15,6,11,14,0,21,20,13,18,5,23,9,12,4,19,10,8,24,22,1,3,16,7}, // permutation 8
{1,3,9,13,21,12,14,18,17,2,22,5,0,8,23,15,19,24,11,6,7,20,10,4,16} // permutation 9
};

// Seed: 40

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   volatile int64_t  f0;
};

struct S1 {
   volatile int64_t  f0;
   volatile uint64_t  f1;
   struct S0  f2;
   int32_t  f3;
   volatile uint32_t  f4;
   uint64_t  f5;
};

union U2 {
   struct S0  f0;
   volatile int8_t  f1;
};

struct S3 {
    int32_t g_9;
    union U2 g_42;
    int32_t g_51;
    volatile VECTOR(uint32_t, 16) g_57;
    int8_t g_77;
    uint64_t g_78[8];
    struct S1 g_79[3];
    struct S1 g_80;
    union U2 g_81;
    volatile VECTOR(int32_t, 4) g_91;
    VECTOR(int32_t, 8) g_98;
    int32_t *g_101;
    int32_t * volatile *g_100;
    int16_t g_108;
    VECTOR(int32_t, 4) g_112;
    struct S0 g_139[1][6][6];
    volatile VECTOR(int8_t, 16) g_140;
    int32_t *g_166[3][7];
    uint8_t g_189;
    volatile VECTOR(uint64_t, 2) g_190;
    struct S1 g_227;
    uint8_t g_238;
    uint32_t g_245;
    volatile uint16_t g_247;
    volatile uint16_t *g_246;
    uint8_t g_248;
    volatile struct S1 g_271;
    struct S1 g_393;
    struct S1 *g_392;
    struct S1 g_410;
    uint16_t g_422;
    uint16_t *g_421[8][1][7];
    struct S0 g_518;
    int8_t *g_520;
    int32_t * volatile g_523;
    int32_t * volatile g_524;
    int32_t * volatile g_525;
    int32_t * volatile g_545[9][2];
    union U2 g_547;
    int32_t *g_690[1];
    volatile VECTOR(int32_t, 16) g_708;
    volatile VECTOR(int32_t, 16) g_709;
    uint32_t *g_738;
    uint32_t **g_737;
    uint32_t **g_740;
    int32_t *g_746;
    VECTOR(int16_t, 4) g_772;
    uint16_t g_784;
    struct S1 g_794[6][1][1];
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
int32_t  func_1(struct S3 * p_796);
int32_t * func_2(uint64_t  p_3, int64_t  p_4, uint32_t  p_5, int64_t  p_6, int64_t  p_7, struct S3 * p_796);
int32_t * func_10(uint64_t  p_11, uint64_t  p_12, int8_t  p_13, int8_t  p_14, struct S3 * p_796);
uint8_t  func_19(uint32_t  p_20, int32_t * p_21, int64_t  p_22, int32_t * p_23, int8_t  p_24, struct S3 * p_796);
int16_t  func_29(int16_t  p_30, struct S3 * p_796);
union U2  func_33(int32_t  p_34, int32_t * p_35, int16_t  p_36, uint16_t  p_37, struct S3 * p_796);
int32_t * func_38(int8_t  p_39, int32_t * p_40, int64_t  p_41, struct S3 * p_796);
int32_t * func_43(int32_t * p_44, int32_t * p_45, struct S3 * p_796);
int32_t * func_46(int32_t  p_47, int32_t  p_48, int32_t * p_49, struct S3 * p_796);
union U2  func_52(int32_t * p_53, int64_t  p_54, int32_t * p_55, struct S3 * p_796);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_796->g_comm_values p_796->g_9 p_796->l_comm_values p_796->g_42 p_796->g_57 p_796->g_78 p_796->g_79 p_796->g_81 p_796->g_80.f0 p_796->g_51 p_796->g_80.f4 p_796->g_91 p_796->g_98 p_796->g_100 p_796->g_101 p_796->g_108 p_796->g_112 p_796->g_81.f0.f0 p_796->g_77 p_796->g_80.f3 p_796->g_80.f5 p_796->g_139 p_796->g_140 p_796->g_189 p_796->g_190 p_796->g_271 p_796->g_392 p_796->g_238 p_796->g_410 p_796->g_246 p_796->g_247 p_796->g_421 p_796->g_518 p_796->g_393 p_796->g_547 p_796->g_248 p_796->g_227.f2.f0 p_796->g_690 p_796->g_708 p_796->g_709 p_796->g_520 p_796->g_737 p_796->g_227.f5 p_796->g_422 p_796->g_772 p_796->g_784 p_796->g_227.f3 p_796->g_794
 * writes: p_796->g_51 p_796->g_77 p_796->g_78 p_796->g_80 p_796->g_108 p_796->g_98 p_796->g_91 p_796->g_112 p_796->g_166 p_796->g_189 p_796->g_101 p_796->g_245 p_796->g_271 p_796->g_248 p_796->g_393.f5 p_796->g_421 p_796->g_520 p_796->g_422 p_796->g_comm_values p_796->l_comm_values p_796->g_737 p_796->g_740 p_796->g_79.f5 p_796->g_746 p_796->g_393
 */
int32_t  func_1(struct S3 * p_796)
{ /* block id: 4 */
    int32_t *l_8[10];
    VECTOR(uint32_t, 2) l_27 = (VECTOR(uint32_t, 2))(4294967286UL, 0x374FD522L);
    int32_t *l_50 = &p_796->g_51;
    int8_t l_691 = (-1L);
    int32_t **l_789 = (void*)0;
    int32_t *l_790 = (void*)0;
    int16_t l_791[1];
    uint32_t l_792[1][3];
    int64_t l_793 = 0x661F153DC5BFC618L;
    int i, j;
    for (i = 0; i < 10; i++)
        l_8[i] = &p_796->g_9;
    for (i = 0; i < 1; i++)
        l_791[i] = (-3L);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 3; j++)
            l_792[i][j] = 0xA620525AL;
    }
    (*p_796->g_100) = func_2(((l_792[0][0] = (l_791[0] = ((VECTOR(int32_t, 16))(hadd(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(p_796->g_comm_values[p_796->tid], 1L, (l_8[2] == (l_790 = func_10((l_8[2] != &p_796->g_9), (safe_mul_func_int16_t_s_s((safe_sub_func_uint8_t_u_u(p_796->g_9, func_19((safe_div_func_uint16_t_u_u(0x8339L, (((((VECTOR(uint32_t, 4))(l_27.xxyy)).y < ((safe_unary_minus_func_int16_t_s(func_29((((safe_rshift_func_uint16_t_u_u((func_33(p_796->l_comm_values[(safe_mod_func_uint32_t_u_u(p_796->tid, 25))], func_38((((p_796->g_42 , func_43(func_46(((*l_50) = (-9L)), p_796->g_comm_values[p_796->tid], l_50, p_796), &p_796->g_9, p_796)) == &p_796->g_9) , 0x58L), &p_796->g_9, p_796->l_comm_values[(safe_mod_func_uint32_t_u_u(p_796->tid, 25))], p_796), p_796->g_79[2].f3, p_796->g_79[2].f3, p_796) , 0x9258L), FAKE_DIVERGE(p_796->global_0_offset, get_global_id(0), 10))) , 6L) , 4L), p_796))) , p_796->g_112.z)) && p_796->g_227.f2.f0) & p_796->g_79[2].f3))), l_8[2], p_796->g_238, p_796->g_690[0], l_691, p_796))), 4UL)), p_796->g_227.f5, p_796->g_9, p_796))), 0x670AA7ABL, ((VECTOR(int32_t, 8))(8L)), 0x7E49133AL, (**p_796->g_100), 1L, 0L)).scb)), (*l_790), 0x13D62F87L, (**p_796->g_100), 0L, (-5L), (-1L))).s4065602316711561, ((VECTOR(int32_t, 16))(0x077F6733L))))).s3)) & 4294967295UL), l_793, p_796->g_238, p_796->g_772.y, p_796->g_227.f3, p_796);
    return (*l_790);
}


/* ------------------------------------------ */
/* 
 * reads : p_796->g_794 p_796->g_392
 * writes: p_796->g_393
 */
int32_t * func_2(uint64_t  p_3, int64_t  p_4, uint32_t  p_5, int64_t  p_6, int64_t  p_7, struct S3 * p_796)
{ /* block id: 360 */
    int32_t *l_795 = &p_796->g_9;
    (*p_796->g_392) = p_796->g_794[4][0][0];
    return l_795;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t * func_10(uint64_t  p_11, uint64_t  p_12, int8_t  p_13, int8_t  p_14, struct S3 * p_796)
{ /* block id: 354 */
    VECTOR(uint8_t, 4) l_786 = (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 0x52L), 0x52L);
    int i;
    --l_786.z;
    return &p_796->g_9;
}


/* ------------------------------------------ */
/* 
 * reads : p_796->g_comm_values p_796->g_708 p_796->g_709 p_796->g_91 p_796->g_520 p_796->g_77 p_796->g_79.f3 p_796->l_comm_values p_796->g_9 p_796->g_108 p_796->g_79.f5 p_796->g_78 p_796->g_410.f5 p_796->g_393.f3 p_796->g_737 p_796->g_81 p_796->g_227.f5 p_796->g_112 p_796->g_101 p_796->g_422 p_796->g_100 p_796->g_79.f4 p_796->g_772 p_796->g_238 p_796->g_784 p_796->g_393.f5 p_796->g_80.f4
 * writes: p_796->g_422 p_796->g_comm_values p_796->l_comm_values p_796->g_108 p_796->g_737 p_796->g_740 p_796->g_79.f5 p_796->g_166 p_796->g_746 p_796->g_101 p_796->g_77 p_796->g_393.f5
 */
uint8_t  func_19(uint32_t  p_20, int32_t * p_21, int64_t  p_22, int32_t * p_23, int8_t  p_24, struct S3 * p_796)
{ /* block id: 330 */
    struct S0 *l_698 = &p_796->g_227.f2;
    struct S0 **l_699 = &l_698;
    uint8_t *l_700 = (void*)0;
    uint16_t *l_701 = &p_796->g_422;
    int64_t *l_702[6][3] = {{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}};
    VECTOR(int16_t, 16) l_703 = (VECTOR(int16_t, 16))(0x2541L, (VECTOR(int16_t, 4))(0x2541L, (VECTOR(int16_t, 2))(0x2541L, (-1L)), (-1L)), (-1L), 0x2541L, (-1L), (VECTOR(int16_t, 2))(0x2541L, (-1L)), (VECTOR(int16_t, 2))(0x2541L, (-1L)), 0x2541L, (-1L), 0x2541L, (-1L));
    VECTOR(int16_t, 2) l_704 = (VECTOR(int16_t, 2))(0x518CL, 0x4EBBL);
    VECTOR(int32_t, 16) l_707 = (VECTOR(int32_t, 16))(0x291942C0L, (VECTOR(int32_t, 4))(0x291942C0L, (VECTOR(int32_t, 2))(0x291942C0L, 3L), 3L), 3L, 0x291942C0L, 3L, (VECTOR(int32_t, 2))(0x291942C0L, 3L), (VECTOR(int32_t, 2))(0x291942C0L, 3L), 0x291942C0L, 3L, 0x291942C0L, 3L);
    VECTOR(int32_t, 8) l_710 = (VECTOR(int32_t, 8))(0x6A4EE4CAL, (VECTOR(int32_t, 4))(0x6A4EE4CAL, (VECTOR(int32_t, 2))(0x6A4EE4CAL, 0x194A9FA9L), 0x194A9FA9L), 0x194A9FA9L, 0x6A4EE4CAL, 0x194A9FA9L);
    VECTOR(int32_t, 4) l_711 = (VECTOR(int32_t, 4))(0x5D4E91FEL, (VECTOR(int32_t, 2))(0x5D4E91FEL, 0x36B93F70L), 0x36B93F70L);
    VECTOR(int32_t, 2) l_712 = (VECTOR(int32_t, 2))(0L, 3L);
    VECTOR(int32_t, 8) l_713 = (VECTOR(int32_t, 8))((-4L), (VECTOR(int32_t, 4))((-4L), (VECTOR(int32_t, 2))((-4L), 0x49073D1CL), 0x49073D1CL), 0x49073D1CL, (-4L), 0x49073D1CL);
    VECTOR(int32_t, 8) l_714 = (VECTOR(int32_t, 8))(0x723183BBL, (VECTOR(int32_t, 4))(0x723183BBL, (VECTOR(int32_t, 2))(0x723183BBL, 0x2685FB9CL), 0x2685FB9CL), 0x2685FB9CL, 0x723183BBL, 0x2685FB9CL);
    VECTOR(int32_t, 16) l_715 = (VECTOR(int32_t, 16))((-6L), (VECTOR(int32_t, 4))((-6L), (VECTOR(int32_t, 2))((-6L), 0x1BDFFB3EL), 0x1BDFFB3EL), 0x1BDFFB3EL, (-6L), 0x1BDFFB3EL, (VECTOR(int32_t, 2))((-6L), 0x1BDFFB3EL), (VECTOR(int32_t, 2))((-6L), 0x1BDFFB3EL), (-6L), 0x1BDFFB3EL, (-6L), 0x1BDFFB3EL);
    int32_t l_718[8] = {0x7A05873DL,0x7A05873DL,0x7A05873DL,0x7A05873DL,0x7A05873DL,0x7A05873DL,0x7A05873DL,0x7A05873DL};
    uint64_t *l_719 = (void*)0;
    uint64_t *l_720 = (void*)0;
    int32_t l_721 = (-1L);
    int16_t *l_722 = (void*)0;
    int16_t *l_723 = &p_796->g_108;
    int32_t *l_724 = (void*)0;
    int32_t *l_725[9][8][2] = {{{(void*)0,&p_796->g_9},{(void*)0,&p_796->g_9},{(void*)0,&p_796->g_9},{(void*)0,&p_796->g_9},{(void*)0,&p_796->g_9},{(void*)0,&p_796->g_9},{(void*)0,&p_796->g_9},{(void*)0,&p_796->g_9}},{{(void*)0,&p_796->g_9},{(void*)0,&p_796->g_9},{(void*)0,&p_796->g_9},{(void*)0,&p_796->g_9},{(void*)0,&p_796->g_9},{(void*)0,&p_796->g_9},{(void*)0,&p_796->g_9},{(void*)0,&p_796->g_9}},{{(void*)0,&p_796->g_9},{(void*)0,&p_796->g_9},{(void*)0,&p_796->g_9},{(void*)0,&p_796->g_9},{(void*)0,&p_796->g_9},{(void*)0,&p_796->g_9},{(void*)0,&p_796->g_9},{(void*)0,&p_796->g_9}},{{(void*)0,&p_796->g_9},{(void*)0,&p_796->g_9},{(void*)0,&p_796->g_9},{(void*)0,&p_796->g_9},{(void*)0,&p_796->g_9},{(void*)0,&p_796->g_9},{(void*)0,&p_796->g_9},{(void*)0,&p_796->g_9}},{{(void*)0,&p_796->g_9},{(void*)0,&p_796->g_9},{(void*)0,&p_796->g_9},{(void*)0,&p_796->g_9},{(void*)0,&p_796->g_9},{(void*)0,&p_796->g_9},{(void*)0,&p_796->g_9},{(void*)0,&p_796->g_9}},{{(void*)0,&p_796->g_9},{(void*)0,&p_796->g_9},{(void*)0,&p_796->g_9},{(void*)0,&p_796->g_9},{(void*)0,&p_796->g_9},{(void*)0,&p_796->g_9},{(void*)0,&p_796->g_9},{(void*)0,&p_796->g_9}},{{(void*)0,&p_796->g_9},{(void*)0,&p_796->g_9},{(void*)0,&p_796->g_9},{(void*)0,&p_796->g_9},{(void*)0,&p_796->g_9},{(void*)0,&p_796->g_9},{(void*)0,&p_796->g_9},{(void*)0,&p_796->g_9}},{{(void*)0,&p_796->g_9},{(void*)0,&p_796->g_9},{(void*)0,&p_796->g_9},{(void*)0,&p_796->g_9},{(void*)0,&p_796->g_9},{(void*)0,&p_796->g_9},{(void*)0,&p_796->g_9},{(void*)0,&p_796->g_9}},{{(void*)0,&p_796->g_9},{(void*)0,&p_796->g_9},{(void*)0,&p_796->g_9},{(void*)0,&p_796->g_9},{(void*)0,&p_796->g_9},{(void*)0,&p_796->g_9},{(void*)0,&p_796->g_9},{(void*)0,&p_796->g_9}}};
    int32_t l_726 = (-8L);
    uint32_t *l_736 = (void*)0;
    uint32_t **l_735 = &l_736;
    uint32_t ***l_739[1];
    uint64_t *l_741 = (void*)0;
    uint64_t *l_742[9] = {&p_796->g_78[3],&p_796->g_79[2].f5,&p_796->g_78[3],&p_796->g_78[3],&p_796->g_79[2].f5,&p_796->g_78[3],&p_796->g_78[3],&p_796->g_79[2].f5,&p_796->g_78[3]};
    int32_t **l_743 = &p_796->g_166[1][1];
    int32_t *l_745 = (void*)0;
    int32_t **l_744[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int32_t l_747 = (-1L);
    VECTOR(int8_t, 2) l_783 = (VECTOR(int8_t, 2))(0x29L, 8L);
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_739[i] = &p_796->g_737;
    l_726 &= ((safe_mod_func_uint64_t_u_u(((p_796->g_comm_values[p_796->tid] |= (safe_lshift_func_uint16_t_u_s(((*l_701) = (((safe_add_func_uint64_t_u_u(18446744073709551607UL, (((*l_699) = l_698) != &p_796->g_139[0][5][2]))) , l_700) != &p_796->g_238)), 14))) > (((((*l_723) &= ((VECTOR(int16_t, 16))(min(((VECTOR(int16_t, 2))(mul_hi(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(min(((VECTOR(int16_t, 16))(min(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(l_703.sbd)), (-9L), 0L)).wyyzyxyywzwwyyyx, ((VECTOR(int16_t, 8))(l_704.xxyyxyxy)).s3551574607610341))), (int16_t)(((l_721 ^= ((p_796->l_comm_values[(safe_mod_func_uint32_t_u_u(p_796->tid, 25))] = (safe_mod_func_uint8_t_u_u((p_22 , ((l_718[7] |= ((VECTOR(int32_t, 8))(mad_sat(((VECTOR(int32_t, 2))(0x7C0DEAC8L, 0x60248248L)).xyxyyxxy, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(rotate(((VECTOR(int32_t, 2))(l_707.sdd)), ((VECTOR(int32_t, 2))(0x0B826667L, 0x1F0AE6BEL))))).yyyyyxyy)), ((VECTOR(int32_t, 8))((-1L), ((VECTOR(int32_t, 2))(mad_sat(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(add_sat(((VECTOR(int32_t, 16))(add_sat(((VECTOR(int32_t, 4))(0x1BA8BB1AL, 1L, 0x01D211FCL, 1L)).ywxwwwyxzwwwzwxz, ((VECTOR(int32_t, 2))(p_796->g_708.s58)).xxyxxxyxxxxxxxyy))), ((VECTOR(int32_t, 8))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 16))(2L, (-4L), ((VECTOR(int32_t, 8))(p_796->g_709.s92b27371)), ((VECTOR(int32_t, 4))(l_710.s1376)), (-1L), (-1L))).hi, ((VECTOR(int32_t, 8))(clz(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(l_711.wxwxywyw)).s7216500135215677)).lo))), ((VECTOR(int32_t, 4))((-9L), ((VECTOR(int32_t, 2))(l_712.yy)), 0x0CF1F3FBL)).zywxwwzx))).s0216167113762527))).hi)).s56)), 0x5FD997AFL, 0x1D3812DFL)).even, ((VECTOR(int32_t, 16))(rhadd(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(l_713.s31127606)))).s7200365642545731)).even)).odd)).yyyzyzywxzxzzyzz, ((VECTOR(int32_t, 16))(l_714.s6152613406704136))))).sa9, ((VECTOR(int32_t, 4))(l_715.s226a)).odd))), (safe_lshift_func_int8_t_s_u(((((l_707.s3 | ((((0x9BECA3F104B9CEB8L > p_796->g_91.y) > 0x365CF698FCBB6742L) , (*p_796->g_520)) == l_707.s5)) && p_796->g_79[2].f3) == (-6L)) == p_796->l_comm_values[(safe_mod_func_uint32_t_u_u(p_796->tid, 25))]), FAKE_DIVERGE(p_796->global_1_offset, get_global_id(1), 10))), ((VECTOR(int32_t, 4))(0L))))))).s2) | (*p_23))), (*p_796->g_520)))) == 0x0BEEBC95A698A58EL)) > 0xE323DAE3CBC6017FL) && 7L)))).s73)), l_707.sa, ((VECTOR(int16_t, 2))((-10L))), 0x618EL, 1L, (-2L))).s73, ((VECTOR(int16_t, 2))((-3L)))))).yxxxxyxxxyyxyyyx, (int16_t)l_712.y))).s2) >= p_22) == l_714.s7) <= p_796->g_79[2].f5)), p_796->g_78[3])) | p_22);
    l_747 = ((1UL > (p_796->g_410.f5 <= ((safe_add_func_int32_t_s_s(((safe_mod_func_int64_t_s_s(p_796->g_393.f3, (((((safe_add_func_uint8_t_u_u((safe_mul_func_uint8_t_u_u((((((p_796->g_79[2].f5 = (l_735 != (p_796->g_740 = (p_796->g_737 = p_796->g_737)))) & (p_24 <= (((*l_743) = l_724) != (p_796->g_746 = p_21)))) | ((p_796->g_81 , 5UL) < (*p_21))) == p_796->g_227.f5) == p_796->g_78[2]), p_796->g_112.w)), (-4L))) , (void*)0) != &p_796->g_245) , 0x0CEF6B00139B03D3L) , p_22))) || p_20), (*p_796->g_101))) <= 0UL))) && 8L);
    for (p_796->g_422 = 0; (p_796->g_422 < 37); p_796->g_422 = safe_add_func_uint32_t_u_u(p_796->g_422, 1))
    { /* block id: 347 */
        uint32_t l_754 = 4294967288UL;
        VECTOR(uint16_t, 8) l_769 = (VECTOR(uint16_t, 8))(0xA02AL, (VECTOR(uint16_t, 4))(0xA02AL, (VECTOR(uint16_t, 2))(0xA02AL, 65531UL), 65531UL), 65531UL, 0xA02AL, 65531UL);
        VECTOR(uint8_t, 4) l_770 = (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 6UL), 6UL);
        VECTOR(uint8_t, 4) l_771 = (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0xE7L), 0xE7L);
        int16_t l_785[5] = {0x3DA9L,0x3DA9L,0x3DA9L,0x3DA9L,0x3DA9L};
        int i;
        (*p_796->g_100) = (*p_796->g_100);
        atomic_or(&p_796->l_atomic_reduction[0], (safe_lshift_func_int16_t_s_s(((p_20 , (safe_add_func_int16_t_s_s(l_754, ((safe_add_func_int64_t_s_s((safe_rshift_func_int8_t_s_s((safe_mod_func_int32_t_s_s((safe_mul_func_uint8_t_u_u((safe_div_func_int16_t_s_s((safe_mod_func_uint8_t_u_u((safe_mul_func_uint16_t_u_u(((VECTOR(uint16_t, 8))(l_769.s42154061)).s2, ((VECTOR(uint16_t, 8))(upsample(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 16))(l_770.zxxyxyxzxxwzyxyz)).lo)), ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(l_771.yz)).xxyy)).xywxwyxw))).s5)), (p_796->g_79[2].f4 | (((((((VECTOR(int32_t, 8))(clz(((VECTOR(int32_t, 2))(upsample(((VECTOR(int16_t, 2))(clz(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 8))(p_796->g_772.yxywzxxw)))).s16))), ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 4))(clz(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(65527UL, ((VECTOR(uint16_t, 2))(9UL, 0UL)), 0x8B4AL)).xzwwwwww)))).hi))))).odd))).xxxyxyyx))).s7 != (*p_21)) , p_20) && (p_24 != (safe_mod_func_uint8_t_u_u(((p_796->g_393.f5 = ((safe_mod_func_int64_t_s_s(((safe_sub_func_int32_t_s_s((((((p_22 < ((((safe_div_func_int32_t_s_s(l_771.y, ((FAKE_DIVERGE(p_796->group_1_offset, get_group_id(1), 10) ^ ((safe_mul_func_int8_t_s_s(((VECTOR(int8_t, 4))(add_sat(((VECTOR(int8_t, 4))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 4),((VECTOR(int8_t, 2))((-5L), 0x7EL)).xxxx, ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))(l_783.xxxxyxyyxyxyxxyx)).even)), ((VECTOR(int8_t, 4))((-3L), 0x64L, 3L, (-10L))), (-8L), ((*p_796->g_520) ^= 0L), 0L, 5L)).sa9b6, ((VECTOR(int8_t, 4))((-3L)))))), ((VECTOR(int8_t, 4))((-3L)))))).z, 1L)) <= p_796->g_238)) || l_770.w))) , l_771.w) , (*p_21)) < (*p_23))) >= p_796->g_79[2].f5) == l_771.z) ^ p_796->g_784) < l_769.s3), p_796->g_393.f5)) , 4L), 0x02DCD9B489EA7013L)) , 18446744073709551609UL)) < p_24), FAKE_DIVERGE(p_796->global_1_offset, get_global_id(1), 10))))) , p_21) != &p_796->g_9)))), 0x2B7CL)), p_796->g_112.x)), l_754)), 5)), 0xF32FB86FFB3DA09FL)) & p_24)))) , p_796->l_comm_values[(safe_mod_func_uint32_t_u_u(p_796->tid, 25))]), l_785[4])) + get_linear_global_id());
        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        if (get_linear_local_id() == 0)
            p_796->v_collective += p_796->l_atomic_reduction[0];
        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    }
    return p_796->g_80.f4;
}


/* ------------------------------------------ */
/* 
 * reads : p_796->g_248
 * writes:
 */
int16_t  func_29(int16_t  p_30, struct S3 * p_796)
{ /* block id: 250 */
    int32_t *l_673 = (void*)0;
    int32_t *l_674 = (void*)0;
    int32_t *l_675 = (void*)0;
    int32_t l_676 = 0x752ED7ADL;
    int32_t *l_677 = &l_676;
    int32_t *l_678 = (void*)0;
    int32_t *l_679 = &l_676;
    int32_t *l_680 = &l_676;
    int32_t *l_681 = (void*)0;
    int32_t *l_682 = (void*)0;
    int32_t *l_683 = (void*)0;
    int32_t *l_684 = (void*)0;
    int32_t *l_685[2][1][1];
    int8_t l_686 = 0x7AL;
    uint16_t l_687[8] = {0UL,65527UL,0UL,0UL,65527UL,0UL,0UL,65527UL};
    int i, j, k;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 1; k++)
                l_685[i][j][k] = (void*)0;
        }
    }
    if ((atomic_inc(&p_796->g_atomic_input[65 * get_linear_group_id() + 45]) == 8))
    { /* block id: 252 */
        int32_t l_548[9][9][3] = {{{0x6F89FBE7L,1L,0x64463967L},{0x6F89FBE7L,1L,0x64463967L},{0x6F89FBE7L,1L,0x64463967L},{0x6F89FBE7L,1L,0x64463967L},{0x6F89FBE7L,1L,0x64463967L},{0x6F89FBE7L,1L,0x64463967L},{0x6F89FBE7L,1L,0x64463967L},{0x6F89FBE7L,1L,0x64463967L},{0x6F89FBE7L,1L,0x64463967L}},{{0x6F89FBE7L,1L,0x64463967L},{0x6F89FBE7L,1L,0x64463967L},{0x6F89FBE7L,1L,0x64463967L},{0x6F89FBE7L,1L,0x64463967L},{0x6F89FBE7L,1L,0x64463967L},{0x6F89FBE7L,1L,0x64463967L},{0x6F89FBE7L,1L,0x64463967L},{0x6F89FBE7L,1L,0x64463967L},{0x6F89FBE7L,1L,0x64463967L}},{{0x6F89FBE7L,1L,0x64463967L},{0x6F89FBE7L,1L,0x64463967L},{0x6F89FBE7L,1L,0x64463967L},{0x6F89FBE7L,1L,0x64463967L},{0x6F89FBE7L,1L,0x64463967L},{0x6F89FBE7L,1L,0x64463967L},{0x6F89FBE7L,1L,0x64463967L},{0x6F89FBE7L,1L,0x64463967L},{0x6F89FBE7L,1L,0x64463967L}},{{0x6F89FBE7L,1L,0x64463967L},{0x6F89FBE7L,1L,0x64463967L},{0x6F89FBE7L,1L,0x64463967L},{0x6F89FBE7L,1L,0x64463967L},{0x6F89FBE7L,1L,0x64463967L},{0x6F89FBE7L,1L,0x64463967L},{0x6F89FBE7L,1L,0x64463967L},{0x6F89FBE7L,1L,0x64463967L},{0x6F89FBE7L,1L,0x64463967L}},{{0x6F89FBE7L,1L,0x64463967L},{0x6F89FBE7L,1L,0x64463967L},{0x6F89FBE7L,1L,0x64463967L},{0x6F89FBE7L,1L,0x64463967L},{0x6F89FBE7L,1L,0x64463967L},{0x6F89FBE7L,1L,0x64463967L},{0x6F89FBE7L,1L,0x64463967L},{0x6F89FBE7L,1L,0x64463967L},{0x6F89FBE7L,1L,0x64463967L}},{{0x6F89FBE7L,1L,0x64463967L},{0x6F89FBE7L,1L,0x64463967L},{0x6F89FBE7L,1L,0x64463967L},{0x6F89FBE7L,1L,0x64463967L},{0x6F89FBE7L,1L,0x64463967L},{0x6F89FBE7L,1L,0x64463967L},{0x6F89FBE7L,1L,0x64463967L},{0x6F89FBE7L,1L,0x64463967L},{0x6F89FBE7L,1L,0x64463967L}},{{0x6F89FBE7L,1L,0x64463967L},{0x6F89FBE7L,1L,0x64463967L},{0x6F89FBE7L,1L,0x64463967L},{0x6F89FBE7L,1L,0x64463967L},{0x6F89FBE7L,1L,0x64463967L},{0x6F89FBE7L,1L,0x64463967L},{0x6F89FBE7L,1L,0x64463967L},{0x6F89FBE7L,1L,0x64463967L},{0x6F89FBE7L,1L,0x64463967L}},{{0x6F89FBE7L,1L,0x64463967L},{0x6F89FBE7L,1L,0x64463967L},{0x6F89FBE7L,1L,0x64463967L},{0x6F89FBE7L,1L,0x64463967L},{0x6F89FBE7L,1L,0x64463967L},{0x6F89FBE7L,1L,0x64463967L},{0x6F89FBE7L,1L,0x64463967L},{0x6F89FBE7L,1L,0x64463967L},{0x6F89FBE7L,1L,0x64463967L}},{{0x6F89FBE7L,1L,0x64463967L},{0x6F89FBE7L,1L,0x64463967L},{0x6F89FBE7L,1L,0x64463967L},{0x6F89FBE7L,1L,0x64463967L},{0x6F89FBE7L,1L,0x64463967L},{0x6F89FBE7L,1L,0x64463967L},{0x6F89FBE7L,1L,0x64463967L},{0x6F89FBE7L,1L,0x64463967L},{0x6F89FBE7L,1L,0x64463967L}}};
        int16_t l_670 = 1L;
        int32_t l_671 = 5L;
        struct S0 *l_672[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
        int i, j, k;
        for (l_548[7][5][0] = 0; (l_548[7][5][0] >= (-30)); l_548[7][5][0] = safe_sub_func_int64_t_s_s(l_548[7][5][0], 4))
        { /* block id: 255 */
            uint32_t l_551 = 0x472918BDL;
            int64_t l_554[4][2];
            int64_t l_555[4] = {0x10DC0F5A3D4712CEL,0x10DC0F5A3D4712CEL,0x10DC0F5A3D4712CEL,0x10DC0F5A3D4712CEL};
            int32_t l_557 = 0x4FCFA9B9L;
            int32_t *l_556 = &l_557;
            int i, j;
            for (i = 0; i < 4; i++)
            {
                for (j = 0; j < 2; j++)
                    l_554[i][j] = (-1L);
            }
            l_551--;
            l_555[1] |= l_554[1][1];
            l_556 = (void*)0;
        }
        for (l_548[7][5][0] = (-11); (l_548[7][5][0] <= 12); l_548[7][5][0] = safe_add_func_uint64_t_u_u(l_548[7][5][0], 9))
        { /* block id: 262 */
            VECTOR(int32_t, 16) l_560 = (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, (-1L)), (-1L)), (-1L), 1L, (-1L), (VECTOR(int32_t, 2))(1L, (-1L)), (VECTOR(int32_t, 2))(1L, (-1L)), 1L, (-1L), 1L, (-1L));
            uint32_t l_664 = 9UL;
            VECTOR(uint64_t, 2) l_665 = (VECTOR(uint64_t, 2))(0x4052233756DA031AL, 0x985E2EBCBC899017L);
            struct S0 l_666 = {0x4BB9EE7336828663L};/* VOLATILE GLOBAL l_666 */
            int8_t l_667 = 9L;
            int32_t *l_668 = (void*)0;
            int32_t *l_669 = (void*)0;
            int i;
            if (((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(l_560.s35)).xyyx)).y)
            { /* block id: 263 */
                VECTOR(uint16_t, 8) l_561 = (VECTOR(uint16_t, 8))(8UL, (VECTOR(uint16_t, 4))(8UL, (VECTOR(uint16_t, 2))(8UL, 0xC0BAL), 0xC0BAL), 0xC0BAL, 8UL, 0xC0BAL);
                int i;
                if (l_561.s0)
                { /* block id: 264 */
                    VECTOR(uint32_t, 16) l_562 = (VECTOR(uint32_t, 16))(0x14C960DEL, (VECTOR(uint32_t, 4))(0x14C960DEL, (VECTOR(uint32_t, 2))(0x14C960DEL, 0xAAE85A88L), 0xAAE85A88L), 0xAAE85A88L, 0x14C960DEL, 0xAAE85A88L, (VECTOR(uint32_t, 2))(0x14C960DEL, 0xAAE85A88L), (VECTOR(uint32_t, 2))(0x14C960DEL, 0xAAE85A88L), 0x14C960DEL, 0xAAE85A88L, 0x14C960DEL, 0xAAE85A88L);
                    VECTOR(uint32_t, 8) l_563 = (VECTOR(uint32_t, 8))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 4294967293UL), 4294967293UL), 4294967293UL, 0UL, 4294967293UL);
                    uint64_t l_564 = 0UL;
                    uint32_t l_565 = 0xD88C6A46L;
                    VECTOR(uint32_t, 8) l_566 = (VECTOR(uint32_t, 8))(0x71963E73L, (VECTOR(uint32_t, 4))(0x71963E73L, (VECTOR(uint32_t, 2))(0x71963E73L, 0xF4C80792L), 0xF4C80792L), 0xF4C80792L, 0x71963E73L, 0xF4C80792L);
                    struct S1 l_567[7] = {{0x1499427B7D844F9EL,1UL,{0x30E1BB76B5D53A3CL},0x47BE5C5EL,4294967293UL,18446744073709551615UL},{1L,18446744073709551612UL,{0x243BCD8AC970C8CFL},-5L,4294967293UL,1UL},{0x1499427B7D844F9EL,1UL,{0x30E1BB76B5D53A3CL},0x47BE5C5EL,4294967293UL,18446744073709551615UL},{0x1499427B7D844F9EL,1UL,{0x30E1BB76B5D53A3CL},0x47BE5C5EL,4294967293UL,18446744073709551615UL},{1L,18446744073709551612UL,{0x243BCD8AC970C8CFL},-5L,4294967293UL,1UL},{0x1499427B7D844F9EL,1UL,{0x30E1BB76B5D53A3CL},0x47BE5C5EL,4294967293UL,18446744073709551615UL},{0x1499427B7D844F9EL,1UL,{0x30E1BB76B5D53A3CL},0x47BE5C5EL,4294967293UL,18446744073709551615UL}};
                    VECTOR(int32_t, 4) l_568 = (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 1L), 1L);
                    VECTOR(int32_t, 4) l_569 = (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x0521B141L), 0x0521B141L);
                    VECTOR(int32_t, 16) l_570 = (VECTOR(int32_t, 16))(0x6BC1231AL, (VECTOR(int32_t, 4))(0x6BC1231AL, (VECTOR(int32_t, 2))(0x6BC1231AL, 0L), 0L), 0L, 0x6BC1231AL, 0L, (VECTOR(int32_t, 2))(0x6BC1231AL, 0L), (VECTOR(int32_t, 2))(0x6BC1231AL, 0L), 0x6BC1231AL, 0L, 0x6BC1231AL, 0L);
                    VECTOR(int32_t, 4) l_571 = (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0L), 0L);
                    uint8_t l_572 = 0UL;
                    VECTOR(int32_t, 8) l_573 = (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0L), 0L), 0L, 0L, 0L);
                    uint32_t l_574 = 0UL;
                    VECTOR(int32_t, 8) l_575 = (VECTOR(int32_t, 8))((-9L), (VECTOR(int32_t, 4))((-9L), (VECTOR(int32_t, 2))((-9L), 0x71E3B58CL), 0x71E3B58CL), 0x71E3B58CL, (-9L), 0x71E3B58CL);
                    uint32_t l_576[3];
                    union U2 l_577[4] = {{{0x1B11CD16444F4BEBL}},{{0x1B11CD16444F4BEBL}},{{0x1B11CD16444F4BEBL}},{{0x1B11CD16444F4BEBL}}};
                    int16_t l_578 = 0x07C3L;
                    int16_t l_579 = 0L;
                    int i;
                    for (i = 0; i < 3; i++)
                        l_576[i] = 4294967291UL;
                    l_560.s6 = ((((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))(max(((VECTOR(uint32_t, 4))(l_562.s3ec8)).even, (uint32_t)((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 4))(abs(((VECTOR(uint32_t, 8))(0x10E46619L, 4294967295UL, ((VECTOR(uint32_t, 2))(l_563.s16)), 0xC1365AE4L, ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 4))(((l_565 = (l_564 = FAKE_DIVERGE(p_796->local_2_offset, get_local_id(2), 10))) , ((VECTOR(uint32_t, 4))(l_566.s3540)).z), 2UL, 0xF132239AL, 0UL)))).lo)).yyyxyyxy)).s7, 0UL, 1UL)).hi))).odd)), 9UL, 4294967286UL)).y))).xyyyyxyyyxyyyyyy)).s1c)))).lo , l_567[3]) , (((l_576[2] = ((VECTOR(int32_t, 2))(add_sat(((VECTOR(int32_t, 2))(l_568.yx)), ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(rhadd(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(sub_sat(((VECTOR(int32_t, 4))(l_569.zywz)).yyywwyxxxzzxxyzx, ((VECTOR(int32_t, 16))(rhadd(((VECTOR(int32_t, 4))(l_570.sb652)).zwwwyxzyxxyxwwwz, ((VECTOR(int32_t, 16))(l_571.wxwzxwzzxwxxxwwy)))))))).s836d)).zwwwywxw)).odd, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(l_572, 0x31DC2A80L, ((VECTOR(int32_t, 4))(add_sat(((VECTOR(int32_t, 8))(max(((VECTOR(int32_t, 8))(l_573.s06464606)), (int32_t)l_574))).hi, ((VECTOR(int32_t, 2))(min(((VECTOR(int32_t, 16))(l_575.s1250167514266346)).s83, ((VECTOR(int32_t, 16))(clz(((VECTOR(int32_t, 4))(0x357BE368L, 7L, 0L, 0L)).wxwzzxzwyxyyxywz))).s43))).yxyx))), 0L, 0x558C7F9FL)).hi))))))).xyzxwxyz)).even)).lo))).even) , l_577[3]) , (l_578 , l_579)));
                    l_560.s8 ^= 0x320333ADL;
                    for (l_566.s3 = 23; (l_566.s3 <= 41); ++l_566.s3)
                    { /* block id: 272 */
                        int32_t l_583 = 7L;
                        int32_t *l_582[6][5][8] = {{{&l_583,&l_583,&l_583,&l_583,&l_583,&l_583,(void*)0,&l_583},{&l_583,&l_583,&l_583,&l_583,&l_583,&l_583,(void*)0,&l_583},{&l_583,&l_583,&l_583,&l_583,&l_583,&l_583,(void*)0,&l_583},{&l_583,&l_583,&l_583,&l_583,&l_583,&l_583,(void*)0,&l_583},{&l_583,&l_583,&l_583,&l_583,&l_583,&l_583,(void*)0,&l_583}},{{&l_583,&l_583,&l_583,&l_583,&l_583,&l_583,(void*)0,&l_583},{&l_583,&l_583,&l_583,&l_583,&l_583,&l_583,(void*)0,&l_583},{&l_583,&l_583,&l_583,&l_583,&l_583,&l_583,(void*)0,&l_583},{&l_583,&l_583,&l_583,&l_583,&l_583,&l_583,(void*)0,&l_583},{&l_583,&l_583,&l_583,&l_583,&l_583,&l_583,(void*)0,&l_583}},{{&l_583,&l_583,&l_583,&l_583,&l_583,&l_583,(void*)0,&l_583},{&l_583,&l_583,&l_583,&l_583,&l_583,&l_583,(void*)0,&l_583},{&l_583,&l_583,&l_583,&l_583,&l_583,&l_583,(void*)0,&l_583},{&l_583,&l_583,&l_583,&l_583,&l_583,&l_583,(void*)0,&l_583},{&l_583,&l_583,&l_583,&l_583,&l_583,&l_583,(void*)0,&l_583}},{{&l_583,&l_583,&l_583,&l_583,&l_583,&l_583,(void*)0,&l_583},{&l_583,&l_583,&l_583,&l_583,&l_583,&l_583,(void*)0,&l_583},{&l_583,&l_583,&l_583,&l_583,&l_583,&l_583,(void*)0,&l_583},{&l_583,&l_583,&l_583,&l_583,&l_583,&l_583,(void*)0,&l_583},{&l_583,&l_583,&l_583,&l_583,&l_583,&l_583,(void*)0,&l_583}},{{&l_583,&l_583,&l_583,&l_583,&l_583,&l_583,(void*)0,&l_583},{&l_583,&l_583,&l_583,&l_583,&l_583,&l_583,(void*)0,&l_583},{&l_583,&l_583,&l_583,&l_583,&l_583,&l_583,(void*)0,&l_583},{&l_583,&l_583,&l_583,&l_583,&l_583,&l_583,(void*)0,&l_583},{&l_583,&l_583,&l_583,&l_583,&l_583,&l_583,(void*)0,&l_583}},{{&l_583,&l_583,&l_583,&l_583,&l_583,&l_583,(void*)0,&l_583},{&l_583,&l_583,&l_583,&l_583,&l_583,&l_583,(void*)0,&l_583},{&l_583,&l_583,&l_583,&l_583,&l_583,&l_583,(void*)0,&l_583},{&l_583,&l_583,&l_583,&l_583,&l_583,&l_583,(void*)0,&l_583},{&l_583,&l_583,&l_583,&l_583,&l_583,&l_583,(void*)0,&l_583}}};
                        int32_t *l_584[8][10][3] = {{{&l_583,(void*)0,(void*)0},{&l_583,(void*)0,(void*)0},{&l_583,(void*)0,(void*)0},{&l_583,(void*)0,(void*)0},{&l_583,(void*)0,(void*)0},{&l_583,(void*)0,(void*)0},{&l_583,(void*)0,(void*)0},{&l_583,(void*)0,(void*)0},{&l_583,(void*)0,(void*)0},{&l_583,(void*)0,(void*)0}},{{&l_583,(void*)0,(void*)0},{&l_583,(void*)0,(void*)0},{&l_583,(void*)0,(void*)0},{&l_583,(void*)0,(void*)0},{&l_583,(void*)0,(void*)0},{&l_583,(void*)0,(void*)0},{&l_583,(void*)0,(void*)0},{&l_583,(void*)0,(void*)0},{&l_583,(void*)0,(void*)0},{&l_583,(void*)0,(void*)0}},{{&l_583,(void*)0,(void*)0},{&l_583,(void*)0,(void*)0},{&l_583,(void*)0,(void*)0},{&l_583,(void*)0,(void*)0},{&l_583,(void*)0,(void*)0},{&l_583,(void*)0,(void*)0},{&l_583,(void*)0,(void*)0},{&l_583,(void*)0,(void*)0},{&l_583,(void*)0,(void*)0},{&l_583,(void*)0,(void*)0}},{{&l_583,(void*)0,(void*)0},{&l_583,(void*)0,(void*)0},{&l_583,(void*)0,(void*)0},{&l_583,(void*)0,(void*)0},{&l_583,(void*)0,(void*)0},{&l_583,(void*)0,(void*)0},{&l_583,(void*)0,(void*)0},{&l_583,(void*)0,(void*)0},{&l_583,(void*)0,(void*)0},{&l_583,(void*)0,(void*)0}},{{&l_583,(void*)0,(void*)0},{&l_583,(void*)0,(void*)0},{&l_583,(void*)0,(void*)0},{&l_583,(void*)0,(void*)0},{&l_583,(void*)0,(void*)0},{&l_583,(void*)0,(void*)0},{&l_583,(void*)0,(void*)0},{&l_583,(void*)0,(void*)0},{&l_583,(void*)0,(void*)0},{&l_583,(void*)0,(void*)0}},{{&l_583,(void*)0,(void*)0},{&l_583,(void*)0,(void*)0},{&l_583,(void*)0,(void*)0},{&l_583,(void*)0,(void*)0},{&l_583,(void*)0,(void*)0},{&l_583,(void*)0,(void*)0},{&l_583,(void*)0,(void*)0},{&l_583,(void*)0,(void*)0},{&l_583,(void*)0,(void*)0},{&l_583,(void*)0,(void*)0}},{{&l_583,(void*)0,(void*)0},{&l_583,(void*)0,(void*)0},{&l_583,(void*)0,(void*)0},{&l_583,(void*)0,(void*)0},{&l_583,(void*)0,(void*)0},{&l_583,(void*)0,(void*)0},{&l_583,(void*)0,(void*)0},{&l_583,(void*)0,(void*)0},{&l_583,(void*)0,(void*)0},{&l_583,(void*)0,(void*)0}},{{&l_583,(void*)0,(void*)0},{&l_583,(void*)0,(void*)0},{&l_583,(void*)0,(void*)0},{&l_583,(void*)0,(void*)0},{&l_583,(void*)0,(void*)0},{&l_583,(void*)0,(void*)0},{&l_583,(void*)0,(void*)0},{&l_583,(void*)0,(void*)0},{&l_583,(void*)0,(void*)0},{&l_583,(void*)0,(void*)0}}};
                        int32_t l_585 = 0x60D4F939L;
                        int i, j, k;
                        l_584[2][3][2] = l_582[5][0][0];
                        l_560.s5 |= l_585;
                    }
                    for (l_571.x = 0; (l_571.x == 7); l_571.x = safe_add_func_int8_t_s_s(l_571.x, 1))
                    { /* block id: 278 */
                        uint32_t l_588 = 0x3F794647L;
                        int64_t l_589 = 1L;
                        int32_t l_590 = 0x5445778DL;
                        uint16_t l_591 = 65535UL;
                        l_560.s4 &= l_588;
                        l_590 ^= (l_560.s0 = l_589);
                        ++l_591;
                    }
                }
                else
                { /* block id: 284 */
                    struct S1 l_594 = {0x732391B883F3B646L,0xC63407760177B751L,{-1L},0x1640BC32L,1UL,2UL};/* VOLATILE GLOBAL l_594 */
                    struct S0 *l_595 = &l_594.f2;
                    uint32_t l_596 = 0x8E3E2FDCL;
                    union U2 l_599 = {{0L}};/* VOLATILE GLOBAL l_599 */
                    int32_t l_601 = (-1L);
                    int32_t *l_600 = &l_601;
                    int32_t *l_602 = &l_601;
                    int32_t *l_603 = &l_601;
                    int32_t *l_604 = (void*)0;
                    int32_t *l_605 = (void*)0;
                    uint32_t l_606 = 0x7540C5B5L;
                    union U2 *l_607[2];
                    union U2 *l_608 = &l_599;
                    union U2 *l_609 = &l_599;
                    int i;
                    for (i = 0; i < 2; i++)
                        l_607[i] = (void*)0;
                    l_595 = (l_594 , (void*)0);
                    l_596++;
                    l_605 = (l_604 = (l_603 = (l_600 = (l_599 , (l_602 = l_600)))));
                    l_609 = (l_606 , (l_608 = l_607[1]));
                }
                l_560.sc &= 0L;
                for (l_561.s2 = (-27); (l_561.s2 != 57); l_561.s2 = safe_add_func_int32_t_s_s(l_561.s2, 1))
                { /* block id: 298 */
                    VECTOR(int32_t, 4) l_612 = (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0L), 0L);
                    int16_t l_613 = 1L;
                    VECTOR(int8_t, 4) l_614 = (VECTOR(int8_t, 4))(8L, (VECTOR(int8_t, 2))(8L, (-9L)), (-9L));
                    VECTOR(int8_t, 4) l_615 = (VECTOR(int8_t, 4))(0x02L, (VECTOR(int8_t, 2))(0x02L, 0x68L), 0x68L);
                    VECTOR(int8_t, 16) l_616 = (VECTOR(int8_t, 16))(0x0AL, (VECTOR(int8_t, 4))(0x0AL, (VECTOR(int8_t, 2))(0x0AL, 0x0BL), 0x0BL), 0x0BL, 0x0AL, 0x0BL, (VECTOR(int8_t, 2))(0x0AL, 0x0BL), (VECTOR(int8_t, 2))(0x0AL, 0x0BL), 0x0AL, 0x0BL, 0x0AL, 0x0BL);
                    uint32_t l_617 = 0x173B5D6AL;
                    int64_t l_618 = (-1L);
                    VECTOR(int8_t, 2) l_619 = (VECTOR(int8_t, 2))(0x6FL, 0x07L);
                    VECTOR(int8_t, 8) l_620 = (VECTOR(int8_t, 8))(0x70L, (VECTOR(int8_t, 4))(0x70L, (VECTOR(int8_t, 2))(0x70L, 0x56L), 0x56L), 0x56L, 0x70L, 0x56L);
                    VECTOR(int8_t, 2) l_621 = (VECTOR(int8_t, 2))((-1L), (-1L));
                    VECTOR(int8_t, 8) l_622 = (VECTOR(int8_t, 8))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0x40L), 0x40L), 0x40L, 0L, 0x40L);
                    VECTOR(int8_t, 8) l_623 = (VECTOR(int8_t, 8))(0x03L, (VECTOR(int8_t, 4))(0x03L, (VECTOR(int8_t, 2))(0x03L, 0x54L), 0x54L), 0x54L, 0x03L, 0x54L);
                    int16_t l_624[9][7][4] = {{{0x6D92L,0L,0x6D92L,0x6D92L},{0x6D92L,0L,0x6D92L,0x6D92L},{0x6D92L,0L,0x6D92L,0x6D92L},{0x6D92L,0L,0x6D92L,0x6D92L},{0x6D92L,0L,0x6D92L,0x6D92L},{0x6D92L,0L,0x6D92L,0x6D92L},{0x6D92L,0L,0x6D92L,0x6D92L}},{{0x6D92L,0L,0x6D92L,0x6D92L},{0x6D92L,0L,0x6D92L,0x6D92L},{0x6D92L,0L,0x6D92L,0x6D92L},{0x6D92L,0L,0x6D92L,0x6D92L},{0x6D92L,0L,0x6D92L,0x6D92L},{0x6D92L,0L,0x6D92L,0x6D92L},{0x6D92L,0L,0x6D92L,0x6D92L}},{{0x6D92L,0L,0x6D92L,0x6D92L},{0x6D92L,0L,0x6D92L,0x6D92L},{0x6D92L,0L,0x6D92L,0x6D92L},{0x6D92L,0L,0x6D92L,0x6D92L},{0x6D92L,0L,0x6D92L,0x6D92L},{0x6D92L,0L,0x6D92L,0x6D92L},{0x6D92L,0L,0x6D92L,0x6D92L}},{{0x6D92L,0L,0x6D92L,0x6D92L},{0x6D92L,0L,0x6D92L,0x6D92L},{0x6D92L,0L,0x6D92L,0x6D92L},{0x6D92L,0L,0x6D92L,0x6D92L},{0x6D92L,0L,0x6D92L,0x6D92L},{0x6D92L,0L,0x6D92L,0x6D92L},{0x6D92L,0L,0x6D92L,0x6D92L}},{{0x6D92L,0L,0x6D92L,0x6D92L},{0x6D92L,0L,0x6D92L,0x6D92L},{0x6D92L,0L,0x6D92L,0x6D92L},{0x6D92L,0L,0x6D92L,0x6D92L},{0x6D92L,0L,0x6D92L,0x6D92L},{0x6D92L,0L,0x6D92L,0x6D92L},{0x6D92L,0L,0x6D92L,0x6D92L}},{{0x6D92L,0L,0x6D92L,0x6D92L},{0x6D92L,0L,0x6D92L,0x6D92L},{0x6D92L,0L,0x6D92L,0x6D92L},{0x6D92L,0L,0x6D92L,0x6D92L},{0x6D92L,0L,0x6D92L,0x6D92L},{0x6D92L,0L,0x6D92L,0x6D92L},{0x6D92L,0L,0x6D92L,0x6D92L}},{{0x6D92L,0L,0x6D92L,0x6D92L},{0x6D92L,0L,0x6D92L,0x6D92L},{0x6D92L,0L,0x6D92L,0x6D92L},{0x6D92L,0L,0x6D92L,0x6D92L},{0x6D92L,0L,0x6D92L,0x6D92L},{0x6D92L,0L,0x6D92L,0x6D92L},{0x6D92L,0L,0x6D92L,0x6D92L}},{{0x6D92L,0L,0x6D92L,0x6D92L},{0x6D92L,0L,0x6D92L,0x6D92L},{0x6D92L,0L,0x6D92L,0x6D92L},{0x6D92L,0L,0x6D92L,0x6D92L},{0x6D92L,0L,0x6D92L,0x6D92L},{0x6D92L,0L,0x6D92L,0x6D92L},{0x6D92L,0L,0x6D92L,0x6D92L}},{{0x6D92L,0L,0x6D92L,0x6D92L},{0x6D92L,0L,0x6D92L,0x6D92L},{0x6D92L,0L,0x6D92L,0x6D92L},{0x6D92L,0L,0x6D92L,0x6D92L},{0x6D92L,0L,0x6D92L,0x6D92L},{0x6D92L,0L,0x6D92L,0x6D92L},{0x6D92L,0L,0x6D92L,0x6D92L}}};
                    uint64_t l_625 = 0x386F31924B3ED15CL;
                    VECTOR(int8_t, 4) l_626 = (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, (-3L)), (-3L));
                    VECTOR(int8_t, 2) l_627 = (VECTOR(int8_t, 2))(0x3FL, 0L);
                    VECTOR(int8_t, 2) l_628 = (VECTOR(int8_t, 2))(0x74L, 1L);
                    VECTOR(int8_t, 8) l_629 = (VECTOR(int8_t, 8))(0x30L, (VECTOR(int8_t, 4))(0x30L, (VECTOR(int8_t, 2))(0x30L, (-9L)), (-9L)), (-9L), 0x30L, (-9L));
                    uint16_t l_630 = 0x5D01L;
                    int64_t l_631 = 0L;
                    int32_t l_632 = 0x6EC6D7E4L;
                    int32_t l_633[4] = {(-1L),(-1L),(-1L),(-1L)};
                    VECTOR(int16_t, 4) l_634 = (VECTOR(int16_t, 4))((-3L), (VECTOR(int16_t, 2))((-3L), (-1L)), (-1L));
                    struct S1 l_635 = {-1L,0xAABFA4FF1ED6AE50L,{0x02F78C7BC158CDDDL},0x5F7B44B0L,5UL,0xFB8A64E8E6CE3D4CL};/* VOLATILE GLOBAL l_635 */
                    uint64_t l_636 = 18446744073709551608UL;
                    int8_t l_637 = (-1L);
                    int i, j, k;
                    l_637 = ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))((-1L), ((VECTOR(int32_t, 2))(l_612.wx)), ((VECTOR(int32_t, 4))(0x0E67CC74L, (l_560.s8 = (((l_634.y |= (l_633[1] = ((VECTOR(uint8_t, 8))(((l_613 , ((VECTOR(uint8_t, 16))(abs_diff(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(max(((VECTOR(int8_t, 4))(l_614.zxzw)), (int8_t)((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(1L, ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 16))((-9L), 0x7DL, ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 8))(l_615.xwzwwzxx)).s0, (-1L), (-1L), 0x0FL)).wxywxywx)), ((VECTOR(int8_t, 2))(l_616.s46)), (-7L), ((VECTOR(int8_t, 2))(0x3EL, 0x33L)), 0x45L)).s10)), (-2L))), (l_617 , l_618), ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(hadd(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(safe_clamp_func(VECTOR(int8_t, 2),VECTOR(int8_t, 2),((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(l_619.xxyy)).wyxyyyzw)).s3230550102437317)).sf2, ((VECTOR(int8_t, 8))(mul_hi(((VECTOR(int8_t, 8))(l_620.s10743702)), ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 2))(l_621.yx)))).xyxyyxyy))).s12, ((VECTOR(int8_t, 4))(max(((VECTOR(int8_t, 2))(0x15L, (-1L))).xyxy, ((VECTOR(int8_t, 16))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 16),((VECTOR(int8_t, 2))(add_sat(((VECTOR(int8_t, 4))(l_622.s3231)).hi, ((VECTOR(int8_t, 2))(l_623.s47))))).yxyyxxyxxxyyxxyx, ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(rhadd(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(0L, 0L, 8L, l_624[7][0][0], ((VECTOR(int8_t, 2))((-7L), 0x2BL)), 0L, 0x3CL)).s7467306632351035)).s57, ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 4))(l_625, ((VECTOR(int8_t, 2))(l_626.zw)), 0x16L)))).xxwyxyxwwwzzyyww)).s5401)).lo)), 1L, (-1L))).odd))), 0x00L, (-8L))))).wyxxxxzzyzzyxwzx, ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 8))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 8),((VECTOR(int8_t, 2))(clz(((VECTOR(int8_t, 16))(l_627.yxyyxxyxyyyyyxxy)).sd5))).xyxxyyxx, ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 4))(sub_sat(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(rhadd(((VECTOR(int8_t, 8))(l_628.xyxxyyxx)).s62, ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(min(((VECTOR(int8_t, 4))(l_629.s7065)).zwyxyzzxxyywzxzw, (int8_t)0x74L))).sdb78)).wzywyzxx)).s20))).xyxxyxyx)).s1060520043270565)).s53bc)), (l_630 &= 1L), 4L, (-1L), 9L)), ((VECTOR(int8_t, 4))(0x61L)), (-5L), l_631, 0x00L, 0x07L)).s9ef5, ((VECTOR(int8_t, 4))(7L))))))).yzzyxzzxzzyzwzzz)).odd, ((VECTOR(int8_t, 8))(0L))))))).s56)).xyyxxxyy)).s6611074010325553))).sd1ec))).hi))).xxxyxxxy)))).hi, ((VECTOR(int8_t, 4))(0x24L))))).wzwyzwzxyxzxywyz)).s52)), 0x57L)).s3))).hi)).yyxyyxyxyyxyxyxx, ((VECTOR(int8_t, 16))(0x6FL))))).s6) , l_632), ((VECTOR(uint8_t, 4))(0x04L)), 0x51L, 0x17L, 0UL)).s7)) , l_635) , l_636)), 1L, 0x7CFB31B9L)), (-7L))))), ((VECTOR(int32_t, 4))(0x38650137L)), 0x76464BFEL, ((VECTOR(int32_t, 2))(0x7EF29485L)), (-9L))).sb;
                }
                if (((VECTOR(int32_t, 2))(0x0B083B3CL, 0x1A278CD0L)).lo)
                { /* block id: 305 */
                    int8_t l_638 = (-1L);
                    l_638 &= (l_560.s7 = 0x14612CDAL);
                }
                else
                { /* block id: 308 */
                    VECTOR(int32_t, 4) l_639 = (VECTOR(int32_t, 4))(0x24D26F04L, (VECTOR(int32_t, 2))(0x24D26F04L, 0x19142795L), 0x19142795L);
                    uint32_t **l_640 = (void*)0;
                    uint32_t l_643 = 0xFA9F1069L;
                    uint32_t *l_642 = &l_643;
                    uint32_t **l_641 = &l_642;
                    int i;
                    l_639.w = ((VECTOR(int32_t, 16))(l_639.wxzwyyyyzywwzzyz)).se;
                    l_641 = l_640;
                }
            }
            else
            { /* block id: 312 */
                uint8_t l_644 = 5UL;
                int32_t l_645 = 0x419F40F7L;
                uint64_t l_646 = 0xB0B1380F39CEDB88L;
                struct S0 l_647 = {0x383D849FAC22516CL};/* VOLATILE GLOBAL l_647 */
                uint32_t l_648 = 0xB46A2E55L;
                VECTOR(uint64_t, 4) l_649 = (VECTOR(uint64_t, 4))(0x853627B1A52758AFL, (VECTOR(uint64_t, 2))(0x853627B1A52758AFL, 0x889AE3F99B525F1AL), 0x889AE3F99B525F1AL);
                int64_t l_650 = 1L;
                VECTOR(int16_t, 8) l_651 = (VECTOR(int16_t, 8))(0x5EF7L, (VECTOR(int16_t, 4))(0x5EF7L, (VECTOR(int16_t, 2))(0x5EF7L, (-7L)), (-7L)), (-7L), 0x5EF7L, (-7L));
                VECTOR(int64_t, 2) l_652 = (VECTOR(int64_t, 2))(0x341BC0B915FC6067L, 1L);
                VECTOR(int64_t, 16) l_653 = (VECTOR(int64_t, 16))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 0x50479773A335AED5L), 0x50479773A335AED5L), 0x50479773A335AED5L, (-1L), 0x50479773A335AED5L, (VECTOR(int64_t, 2))((-1L), 0x50479773A335AED5L), (VECTOR(int64_t, 2))((-1L), 0x50479773A335AED5L), (-1L), 0x50479773A335AED5L, (-1L), 0x50479773A335AED5L);
                VECTOR(int64_t, 4) l_654 = (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, (-4L)), (-4L));
                VECTOR(int64_t, 16) l_655 = (VECTOR(int64_t, 16))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 0x181785CA58751360L), 0x181785CA58751360L), 0x181785CA58751360L, 1L, 0x181785CA58751360L, (VECTOR(int64_t, 2))(1L, 0x181785CA58751360L), (VECTOR(int64_t, 2))(1L, 0x181785CA58751360L), 1L, 0x181785CA58751360L, 1L, 0x181785CA58751360L);
                int8_t l_656[8] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
                int64_t l_657 = 0x7E6548B6EF12F0A9L;
                VECTOR(uint8_t, 16) l_658 = (VECTOR(uint8_t, 16))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 0xC1L), 0xC1L), 0xC1L, 1UL, 0xC1L, (VECTOR(uint8_t, 2))(1UL, 0xC1L), (VECTOR(uint8_t, 2))(1UL, 0xC1L), 1UL, 0xC1L, 1UL, 0xC1L);
                uint16_t l_659 = 8UL;
                uint64_t l_660 = 18446744073709551615UL;
                uint32_t l_661 = 0x43E742D0L;
                int8_t l_662[1];
                uint64_t l_663[6][9][4] = {{{18446744073709551611UL,0x26111057F885AEBDL,1UL,1UL},{18446744073709551611UL,0x26111057F885AEBDL,1UL,1UL},{18446744073709551611UL,0x26111057F885AEBDL,1UL,1UL},{18446744073709551611UL,0x26111057F885AEBDL,1UL,1UL},{18446744073709551611UL,0x26111057F885AEBDL,1UL,1UL},{18446744073709551611UL,0x26111057F885AEBDL,1UL,1UL},{18446744073709551611UL,0x26111057F885AEBDL,1UL,1UL},{18446744073709551611UL,0x26111057F885AEBDL,1UL,1UL},{18446744073709551611UL,0x26111057F885AEBDL,1UL,1UL}},{{18446744073709551611UL,0x26111057F885AEBDL,1UL,1UL},{18446744073709551611UL,0x26111057F885AEBDL,1UL,1UL},{18446744073709551611UL,0x26111057F885AEBDL,1UL,1UL},{18446744073709551611UL,0x26111057F885AEBDL,1UL,1UL},{18446744073709551611UL,0x26111057F885AEBDL,1UL,1UL},{18446744073709551611UL,0x26111057F885AEBDL,1UL,1UL},{18446744073709551611UL,0x26111057F885AEBDL,1UL,1UL},{18446744073709551611UL,0x26111057F885AEBDL,1UL,1UL},{18446744073709551611UL,0x26111057F885AEBDL,1UL,1UL}},{{18446744073709551611UL,0x26111057F885AEBDL,1UL,1UL},{18446744073709551611UL,0x26111057F885AEBDL,1UL,1UL},{18446744073709551611UL,0x26111057F885AEBDL,1UL,1UL},{18446744073709551611UL,0x26111057F885AEBDL,1UL,1UL},{18446744073709551611UL,0x26111057F885AEBDL,1UL,1UL},{18446744073709551611UL,0x26111057F885AEBDL,1UL,1UL},{18446744073709551611UL,0x26111057F885AEBDL,1UL,1UL},{18446744073709551611UL,0x26111057F885AEBDL,1UL,1UL},{18446744073709551611UL,0x26111057F885AEBDL,1UL,1UL}},{{18446744073709551611UL,0x26111057F885AEBDL,1UL,1UL},{18446744073709551611UL,0x26111057F885AEBDL,1UL,1UL},{18446744073709551611UL,0x26111057F885AEBDL,1UL,1UL},{18446744073709551611UL,0x26111057F885AEBDL,1UL,1UL},{18446744073709551611UL,0x26111057F885AEBDL,1UL,1UL},{18446744073709551611UL,0x26111057F885AEBDL,1UL,1UL},{18446744073709551611UL,0x26111057F885AEBDL,1UL,1UL},{18446744073709551611UL,0x26111057F885AEBDL,1UL,1UL},{18446744073709551611UL,0x26111057F885AEBDL,1UL,1UL}},{{18446744073709551611UL,0x26111057F885AEBDL,1UL,1UL},{18446744073709551611UL,0x26111057F885AEBDL,1UL,1UL},{18446744073709551611UL,0x26111057F885AEBDL,1UL,1UL},{18446744073709551611UL,0x26111057F885AEBDL,1UL,1UL},{18446744073709551611UL,0x26111057F885AEBDL,1UL,1UL},{18446744073709551611UL,0x26111057F885AEBDL,1UL,1UL},{18446744073709551611UL,0x26111057F885AEBDL,1UL,1UL},{18446744073709551611UL,0x26111057F885AEBDL,1UL,1UL},{18446744073709551611UL,0x26111057F885AEBDL,1UL,1UL}},{{18446744073709551611UL,0x26111057F885AEBDL,1UL,1UL},{18446744073709551611UL,0x26111057F885AEBDL,1UL,1UL},{18446744073709551611UL,0x26111057F885AEBDL,1UL,1UL},{18446744073709551611UL,0x26111057F885AEBDL,1UL,1UL},{18446744073709551611UL,0x26111057F885AEBDL,1UL,1UL},{18446744073709551611UL,0x26111057F885AEBDL,1UL,1UL},{18446744073709551611UL,0x26111057F885AEBDL,1UL,1UL},{18446744073709551611UL,0x26111057F885AEBDL,1UL,1UL},{18446744073709551611UL,0x26111057F885AEBDL,1UL,1UL}}};
                int i, j, k;
                for (i = 0; i < 1; i++)
                    l_662[i] = (-5L);
                l_560.sa ^= ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(rhadd(((VECTOR(int32_t, 8))(0x58F6926BL, 1L, (((((l_644 , ((l_646 &= l_645) , l_647)) , (((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 16))(sub_sat(((VECTOR(uint64_t, 4))(l_648, 1UL, 0x0F2EFA00095EE0B6L, 0xC5D285FF231E8D5AL)).yzwzxxxwwyxzzxyz, ((VECTOR(uint64_t, 8))(clz(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(l_649.xx)).xyxyyyyxyyxyyyyx)).lo))).s6173052357461372))).s95)).odd , l_650)) , ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))(l_651.s64340540)).s74)), 0x0930L, 0L)).z) , (l_657 = (l_656[4] |= (GROUP_DIVERGE(0, 1) , ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 16))(rhadd(((VECTOR(int64_t, 2))(l_652.xx)).yxxxyyyxyyyxxyxy, ((VECTOR(int64_t, 8))(rotate(((VECTOR(int64_t, 4))(l_653.s2a00)).xwyxzyww, ((VECTOR(int64_t, 8))(rotate(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 8))(mul_hi(((VECTOR(int64_t, 2))(0x2A3B548DBE4CAAD4L, 0x743147C52EEFEBF4L)).xxxxxxyx, ((VECTOR(int64_t, 16))(clz(((VECTOR(int64_t, 8))(l_654.ywxzyzwz)).s5513125066322416))).even))).odd)).wzwzwwzz, ((VECTOR(int64_t, 16))(((VECTOR(int64_t, 8))(l_655.s90d87a47)).s4737430660226105)).even)))))).s6343252005264114))).s6e)).even)))) , ((((VECTOR(uint8_t, 16))(FAKE_DIVERGE(p_796->global_1_offset, get_global_id(1), 10), 250UL, 0xCEL, 255UL, 0x16L, 0UL, 0UL, ((VECTOR(uint8_t, 8))(l_658.s2ba71d4d)), 0x19L)).s2 , (l_659 , (l_662[0] ^= (l_661 = l_660)))) , l_663[2][2][2])), ((VECTOR(int32_t, 2))((-1L))), (-1L), (-1L), (-8L))).s04, ((VECTOR(int32_t, 2))(0x69C403E2L))))), (-7L), 0x785320F2L, ((VECTOR(int32_t, 4))(0x6A2AB0DBL)))).s4;
            }
            l_669 = (((l_664 , ((VECTOR(uint64_t, 16))(abs_diff(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(l_665.yy)).xxyyyxxx)).hi)).xwywxyxyywywwyyw, ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(0xE9A06CAB62AEB79DL, 0x81C5E39993360596L)), 0xC246F9E37D322A58L, 0xADCC2D5E488A4CFDL)).zyxxxwxy)).s3001242235555763))))).s0) , (l_666 , l_667)) , l_668);
        }
        l_672[2] = (((l_671 = (l_670 |= GROUP_DIVERGE(2, 1))) , (-8L)) , (void*)0);
        unsigned int result = 0;
        int l_548_i0, l_548_i1, l_548_i2;
        for (l_548_i0 = 0; l_548_i0 < 9; l_548_i0++) {
            for (l_548_i1 = 0; l_548_i1 < 9; l_548_i1++) {
                for (l_548_i2 = 0; l_548_i2 < 3; l_548_i2++) {
                    result += l_548[l_548_i0][l_548_i1][l_548_i2];
                }
            }
        }
        result += l_670;
        result += l_671;
        atomic_add(&p_796->g_special_values[65 * get_linear_group_id() + 45], result);
    }
    else
    { /* block id: 325 */
        (1 + 1);
    }
    ++l_687[0];
    return p_796->g_248;
}


/* ------------------------------------------ */
/* 
 * reads : p_796->g_518 p_796->g_392 p_796->g_393 p_796->g_410.f5 p_796->g_547
 * writes: p_796->g_520 p_796->g_80.f5 p_796->g_245
 */
union U2  func_33(int32_t  p_34, int32_t * p_35, int16_t  p_36, uint16_t  p_37, struct S3 * p_796)
{ /* block id: 243 */
    int8_t *l_519 = &p_796->g_77;
    int32_t l_521 = 1L;
    VECTOR(int8_t, 16) l_522 = (VECTOR(int8_t, 16))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 7L), 7L), 7L, (-1L), 7L, (VECTOR(int8_t, 2))((-1L), 7L), (VECTOR(int8_t, 2))((-1L), 7L), (-1L), 7L, (-1L), 7L);
    int16_t *l_528 = &p_796->g_108;
    struct S1 *l_535[5];
    VECTOR(int64_t, 8) l_536 = (VECTOR(int64_t, 8))(0L, (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 0x3B662A772E0F6F29L), 0x3B662A772E0F6F29L), 0x3B662A772E0F6F29L, 0L, 0x3B662A772E0F6F29L);
    uint64_t *l_543[10] = {&p_796->g_410.f5,&p_796->g_79[2].f5,&p_796->g_410.f5,&p_796->g_410.f5,&p_796->g_79[2].f5,&p_796->g_410.f5,&p_796->g_410.f5,&p_796->g_79[2].f5,&p_796->g_410.f5,&p_796->g_410.f5};
    uint32_t *l_544 = &p_796->g_245;
    int32_t *l_546[10];
    int i;
    for (i = 0; i < 5; i++)
        l_535[i] = &p_796->g_227;
    for (i = 0; i < 10; i++)
        l_546[i] = (void*)0;
    l_521 = ((((p_796->g_518 , &p_796->g_77) == (p_796->g_520 = l_519)) && l_521) & ((VECTOR(int8_t, 16))(l_522.sfe723c10224536fb)).s1);
    p_34 = (safe_lshift_func_int16_t_s_s((((*l_544) = (((!(p_796->g_80.f5 = ((FAKE_DIVERGE(p_796->group_1_offset, get_group_id(1), 10) , (l_528 == ((*p_796->g_392) , &p_36))) || ((((safe_add_func_uint64_t_u_u(((safe_mul_func_uint8_t_u_u(GROUP_DIVERGE(0, 1), l_522.s6)) != ((void*)0 == l_535[0])), ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 8))(l_536.s76743566)))).s1)) && ((l_536.s6 > (safe_div_func_uint64_t_u_u(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 4))(18446744073709551611UL, 0x33DA468F6A1E9830L, 1UL, 0UL)))).x, (safe_mul_func_int16_t_s_s((safe_sub_func_uint32_t_u_u((p_34 < GROUP_DIVERGE(1, 1)), (&l_521 != (void*)0))), GROUP_DIVERGE(2, 1)))))) >= p_34)) != GROUP_DIVERGE(1, 1)) , p_796->g_410.f5)))) & 0xFADF914E442C6E30L) > 0x84L)) , l_522.s6), 15));
    return p_796->g_547;
}


/* ------------------------------------------ */
/* 
 * reads : p_796->g_139 p_796->g_140 p_796->g_57 p_796->g_101 p_796->g_9 p_796->g_79.f3 p_796->g_189 p_796->g_190 p_796->g_108 p_796->g_98 p_796->g_79.f5 p_796->g_100 p_796->g_91 p_796->g_81.f0.f0 p_796->g_78 p_796->l_comm_values p_796->g_77 p_796->g_51 p_796->g_112 p_796->g_comm_values p_796->g_80.f3 p_796->g_80.f5 p_796->g_271 p_796->g_392 p_796->g_238 p_796->g_410 p_796->g_246 p_796->g_247 p_796->g_421 p_796->g_79.f2.f0
 * writes: p_796->g_166 p_796->g_189 p_796->g_108 p_796->g_98 p_796->g_91 p_796->g_78 p_796->g_112 p_796->g_101 p_796->g_51 p_796->g_245 p_796->g_271 p_796->g_248 p_796->g_393.f5 p_796->g_421
 */
int32_t * func_38(int8_t  p_39, int32_t * p_40, int64_t  p_41, struct S3 * p_796)
{ /* block id: 29 */
    int32_t **l_149 = &p_796->g_101;
    int32_t **l_151 = (void*)0;
    int32_t ***l_150 = &l_151;
    VECTOR(int8_t, 2) l_154 = (VECTOR(int8_t, 2))(0x37L, 0x7DL);
    VECTOR(int8_t, 4) l_155 = (VECTOR(int8_t, 4))(0x51L, (VECTOR(int8_t, 2))(0x51L, (-9L)), (-9L));
    VECTOR(int8_t, 8) l_156 = (VECTOR(int8_t, 8))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 7L), 7L), 7L, (-1L), 7L);
    int32_t *l_164 = &p_796->g_79[2].f3;
    int32_t **l_165[6];
    int32_t *l_167 = (void*)0;
    int32_t *l_168 = (void*)0;
    int32_t *l_169[1];
    int32_t l_170 = 1L;
    VECTOR(uint32_t, 4) l_171 = (VECTOR(uint32_t, 4))(4294967293UL, (VECTOR(uint32_t, 2))(4294967293UL, 0UL), 0UL);
    VECTOR(int64_t, 4) l_182 = (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 1L), 1L);
    uint16_t l_196 = 0x670AL;
    int32_t *l_206 = &l_170;
    int32_t *l_208[9] = {&p_796->g_9,&p_796->g_9,&p_796->g_9,&p_796->g_9,&p_796->g_9,&p_796->g_9,&p_796->g_9,&p_796->g_9,&p_796->g_9};
    uint16_t l_215 = 0x0082L;
    VECTOR(int32_t, 8) l_230 = (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x0F185DDBL), 0x0F185DDBL), 0x0F185DDBL, 0L, 0x0F185DDBL);
    VECTOR(int32_t, 2) l_253 = (VECTOR(int32_t, 2))(0L, 0x46284EDCL);
    int64_t l_306 = 7L;
    uint64_t l_391 = 9UL;
    VECTOR(int8_t, 8) l_417 = (VECTOR(int8_t, 8))(0x5FL, (VECTOR(int8_t, 4))(0x5FL, (VECTOR(int8_t, 2))(0x5FL, 0L), 0L), 0L, 0x5FL, 0L);
    int i;
    for (i = 0; i < 6; i++)
        l_165[i] = &l_164;
    for (i = 0; i < 1; i++)
        l_169[i] = (void*)0;
    if ((l_170 = (p_40 == (p_796->g_166[0][6] = (p_796->g_139[0][5][2] , ((!(0x33L >= ((VECTOR(int8_t, 4))(hadd(((VECTOR(int8_t, 2))(p_796->g_140.s31)).xyyx, ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(1L, (safe_add_func_uint8_t_u_u((safe_mod_func_uint32_t_u_u((safe_add_func_uint64_t_u_u(p_796->g_57.s0, 1UL)), GROUP_DIVERGE(0, 1))), ((safe_div_func_uint32_t_u_u((l_149 != ((*l_150) = (void*)0)), (safe_mod_func_int8_t_s_s(((((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(max(((VECTOR(int8_t, 4))(l_154.xxxx)), ((VECTOR(int8_t, 16))(add_sat(((VECTOR(int8_t, 8))(safe_clamp_func(VECTOR(int8_t, 8),int8_t,((VECTOR(int8_t, 4))(l_155.wyww)).zxywzyxw, (int8_t)((VECTOR(int8_t, 4))(max(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(l_156.s72)).yxxyyyxyxyyyyyyy)).s8aa5, (int8_t)((safe_div_func_int32_t_s_s((((((safe_unary_minus_func_uint32_t_u((safe_sub_func_uint16_t_u_u((((**l_149) | 6UL) , 0x637EL), 0L)))) && 0x549030FCL) || 0UL) & 18446744073709551609UL) == (**l_149)), GROUP_DIVERGE(0, 1))) & FAKE_DIVERGE(p_796->group_2_offset, get_group_id(2), 10))))).y, (int8_t)(-9L)))).s4011405764414703, ((VECTOR(int8_t, 16))((-1L)))))).s29b9))), ((VECTOR(int8_t, 4))(1L)))).s5 & p_41) , 0x1CL), (**l_149))))) , 1L))), 0x32L, 0x6AL)).ywxzyzxz)).s70)).yxxx))).x)) , l_164))))))
    { /* block id: 33 */
        int64_t l_185[5];
        uint8_t *l_188 = &p_796->g_189;
        VECTOR(uint16_t, 4) l_193 = (VECTOR(uint16_t, 4))(0x7D99L, (VECTOR(uint16_t, 2))(0x7D99L, 65529UL), 65529UL);
        int32_t *l_194 = &p_796->g_51;
        int32_t *l_195 = &p_796->g_51;
        int32_t *l_205 = (void*)0;
        int32_t l_209 = 0x6A834350L;
        int32_t l_210 = 0x74D2FEC2L;
        int32_t l_211 = 0x655B3C0CL;
        int32_t l_212 = 8L;
        int32_t l_213 = 0x17D69C0AL;
        VECTOR(int32_t, 16) l_214 = (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x5187F818L), 0x5187F818L), 0x5187F818L, 0L, 0x5187F818L, (VECTOR(int32_t, 2))(0L, 0x5187F818L), (VECTOR(int32_t, 2))(0L, 0x5187F818L), 0L, 0x5187F818L, 0L, 0x5187F818L);
        uint8_t l_250 = 249UL;
        int32_t *l_319 = &l_213;
        int i;
        for (i = 0; i < 5; i++)
            l_185[i] = 5L;
        (*l_149) = func_43((((((VECTOR(uint32_t, 4))(hadd(((VECTOR(uint32_t, 2))(4294967295UL, 7UL)).xyxy, ((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))(0UL, ((VECTOR(uint32_t, 2))(l_171.wx)), 1UL)).xzywxwzxxywzxzyz)).sb0a5))).w , (p_41 > (*p_40))) , ((((safe_rshift_func_int8_t_s_s((safe_add_func_uint8_t_u_u((((((safe_sub_func_int16_t_s_s((((VECTOR(int16_t, 8))((safe_div_func_int64_t_s_s((((((VECTOR(int64_t, 4))(l_182.yxzx)).y <= (1UL >= (safe_mul_func_int16_t_s_s(0L, (p_796->g_79[2].f3 > l_185[2]))))) >= (safe_lshift_func_uint8_t_u_s(((*l_188) &= 255UL), 0))) & (((VECTOR(uint64_t, 4))(p_796->g_190.yyyx)).z == (safe_sub_func_int8_t_s_s((((*p_796->g_101) < ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(max(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 8))(mul_hi(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))(sub_sat(((VECTOR(uint32_t, 2))(1UL, 0x60C76813L)).yyyx, ((VECTOR(uint32_t, 8))(upsample(((VECTOR(uint16_t, 2))(l_193.yz)).xxyxyxyy, ((VECTOR(uint16_t, 2))(rhadd(((VECTOR(uint16_t, 8))(abs(((VECTOR(uint16_t, 16))((((l_194 = &p_796->g_51) == l_195) , p_796->g_108), p_41, p_796->g_108, ((VECTOR(uint16_t, 8))(1UL)), FAKE_DIVERGE(p_796->local_2_offset, get_local_id(2), 10), ((VECTOR(uint16_t, 4))(6UL)))).lo))).s27, ((VECTOR(uint16_t, 2))(0xF50FL))))).xxyxyyyy))).hi))).xwxxxywwzyywywxw)).even, ((VECTOR(uint32_t, 8))(8UL))))))).s53, (uint32_t)p_39))), 0x7527264FL, 4294967295UL)).hi)), ((VECTOR(uint32_t, 4))(0xC5627ABCL)), 4294967292UL, 0xE3334AD1L)).s6) , p_796->g_98.s0), 0x79L)))), p_39)), 0x5B94L, 0x192DL, ((VECTOR(int16_t, 4))(0x0BBDL)), (-4L))).s6 <= l_196), 0x25B3L)) > 0x11L) && p_39) != p_796->g_79[2].f5) , p_39), l_185[2])), p_39)) | 0x0582L) , p_41) != l_193.y)) , l_194), &p_796->g_9, p_796);
        if ((safe_rshift_func_int8_t_s_s((((3L <= (p_796->g_189 = ((&p_41 != (void*)0) , FAKE_DIVERGE(p_796->group_1_offset, get_group_id(1), 10)))) >= (**l_149)) || (safe_mod_func_int16_t_s_s(0x4F7AL, l_185[2]))), ((((safe_add_func_int16_t_s_s((safe_mod_func_int16_t_s_s((((VECTOR(uint32_t, 8))(rhadd(((VECTOR(uint32_t, 16))(safe_mad24_func_uint32_t_u_u_u(VECTOR(uint32_t, 16),((VECTOR(uint32_t, 4))(4294967292UL, ((((l_205 = func_43(func_43(l_194, func_43(&p_796->g_9, p_40, p_796), p_796), l_195, p_796)) == p_40) , (**p_796->g_100)) == p_39), 0x70606D16L, 0UL)).zyxzzxwzzwwwxyzy, ((VECTOR(uint32_t, 16))(4294967295UL)), ((VECTOR(uint32_t, 16))(0xA99E75E4L))))).even, ((VECTOR(uint32_t, 8))(4294967288UL))))).s0 >= 7L), (-1L))), p_39)) & l_185[3]) <= 1L) , 0x44L))))
        { /* block id: 39 */
            int32_t *l_207[8][4] = {{(void*)0,&p_796->g_9,(void*)0,(void*)0},{(void*)0,&p_796->g_9,(void*)0,(void*)0},{(void*)0,&p_796->g_9,(void*)0,(void*)0},{(void*)0,&p_796->g_9,(void*)0,(void*)0},{(void*)0,&p_796->g_9,(void*)0,(void*)0},{(void*)0,&p_796->g_9,(void*)0,(void*)0},{(void*)0,&p_796->g_9,(void*)0,(void*)0},{(void*)0,&p_796->g_9,(void*)0,(void*)0}};
            int i, j;
            return l_208[1];
        }
        else
        { /* block id: 41 */
            l_215--;
        }
        for (l_170 = 14; (l_170 >= 5); l_170--)
        { /* block id: 46 */
            int16_t l_249 = 7L;
            int64_t l_256 = (-3L);
            int32_t l_257 = 0x035A0E91L;
            int32_t **l_305 = &l_195;
            int32_t l_311 = (-2L);
            int32_t l_313[4] = {(-1L),(-1L),(-1L),(-1L)};
            uint32_t l_316 = 0xD5D887FDL;
            int i;
            for (p_796->g_51 = 8; (p_796->g_51 >= (-22)); p_796->g_51 = safe_sub_func_uint64_t_u_u(p_796->g_51, 9))
            { /* block id: 49 */
                int32_t **l_226 = &p_796->g_166[0][6];
                VECTOR(int32_t, 8) l_233 = (VECTOR(int32_t, 8))(6L, (VECTOR(int32_t, 4))(6L, (VECTOR(int32_t, 2))(6L, 0x71CDC077L), 0x71CDC077L), 0x71CDC077L, 6L, 0x71CDC077L);
                int8_t *l_234 = (void*)0;
                int8_t *l_235 = &p_796->g_77;
                uint16_t *l_236 = (void*)0;
                uint16_t *l_237[5][7][7] = {{{&l_196,&l_196,&l_196,&l_196,&l_196,&l_196,&l_196},{&l_196,&l_196,&l_196,&l_196,&l_196,&l_196,&l_196},{&l_196,&l_196,&l_196,&l_196,&l_196,&l_196,&l_196},{&l_196,&l_196,&l_196,&l_196,&l_196,&l_196,&l_196},{&l_196,&l_196,&l_196,&l_196,&l_196,&l_196,&l_196},{&l_196,&l_196,&l_196,&l_196,&l_196,&l_196,&l_196},{&l_196,&l_196,&l_196,&l_196,&l_196,&l_196,&l_196}},{{&l_196,&l_196,&l_196,&l_196,&l_196,&l_196,&l_196},{&l_196,&l_196,&l_196,&l_196,&l_196,&l_196,&l_196},{&l_196,&l_196,&l_196,&l_196,&l_196,&l_196,&l_196},{&l_196,&l_196,&l_196,&l_196,&l_196,&l_196,&l_196},{&l_196,&l_196,&l_196,&l_196,&l_196,&l_196,&l_196},{&l_196,&l_196,&l_196,&l_196,&l_196,&l_196,&l_196},{&l_196,&l_196,&l_196,&l_196,&l_196,&l_196,&l_196}},{{&l_196,&l_196,&l_196,&l_196,&l_196,&l_196,&l_196},{&l_196,&l_196,&l_196,&l_196,&l_196,&l_196,&l_196},{&l_196,&l_196,&l_196,&l_196,&l_196,&l_196,&l_196},{&l_196,&l_196,&l_196,&l_196,&l_196,&l_196,&l_196},{&l_196,&l_196,&l_196,&l_196,&l_196,&l_196,&l_196},{&l_196,&l_196,&l_196,&l_196,&l_196,&l_196,&l_196},{&l_196,&l_196,&l_196,&l_196,&l_196,&l_196,&l_196}},{{&l_196,&l_196,&l_196,&l_196,&l_196,&l_196,&l_196},{&l_196,&l_196,&l_196,&l_196,&l_196,&l_196,&l_196},{&l_196,&l_196,&l_196,&l_196,&l_196,&l_196,&l_196},{&l_196,&l_196,&l_196,&l_196,&l_196,&l_196,&l_196},{&l_196,&l_196,&l_196,&l_196,&l_196,&l_196,&l_196},{&l_196,&l_196,&l_196,&l_196,&l_196,&l_196,&l_196},{&l_196,&l_196,&l_196,&l_196,&l_196,&l_196,&l_196}},{{&l_196,&l_196,&l_196,&l_196,&l_196,&l_196,&l_196},{&l_196,&l_196,&l_196,&l_196,&l_196,&l_196,&l_196},{&l_196,&l_196,&l_196,&l_196,&l_196,&l_196,&l_196},{&l_196,&l_196,&l_196,&l_196,&l_196,&l_196,&l_196},{&l_196,&l_196,&l_196,&l_196,&l_196,&l_196,&l_196},{&l_196,&l_196,&l_196,&l_196,&l_196,&l_196,&l_196},{&l_196,&l_196,&l_196,&l_196,&l_196,&l_196,&l_196}}};
                uint32_t *l_243 = (void*)0;
                uint32_t *l_244 = &p_796->g_245;
                uint16_t l_262 = 65530UL;
                int i, j, k;
                (1 + 1);
            }
            for (p_796->g_245 = (-14); (p_796->g_245 < 24); p_796->g_245 = safe_add_func_uint64_t_u_u(p_796->g_245, 6))
            { /* block id: 72 */
                return p_40;
            }
            for (l_209 = (-15); (l_209 != 20); l_209 = safe_add_func_uint64_t_u_u(l_209, 7))
            { /* block id: 77 */
                volatile uint16_t **l_270 = &p_796->g_246;
                volatile uint16_t ***l_269 = &l_270;
                volatile struct S1 *l_272 = (void*)0;
                volatile struct S1 *l_273 = &p_796->g_271;
                (*l_269) = &p_796->g_246;
                (*l_273) = p_796->g_271;
                if ((atomic_inc(&p_796->g_atomic_input[65 * get_linear_group_id() + 4]) == 6))
                { /* block id: 81 */
                    VECTOR(int64_t, 2) l_274 = (VECTOR(int64_t, 2))((-7L), 1L);
                    int32_t l_295 = 0x032B1C84L;
                    int32_t *l_294[10];
                    int32_t *l_296 = &l_295;
                    int i;
                    for (i = 0; i < 10; i++)
                        l_294[i] = &l_295;
                    if (l_274.x)
                    { /* block id: 82 */
                        VECTOR(int32_t, 16) l_275 = (VECTOR(int32_t, 16))((-3L), (VECTOR(int32_t, 4))((-3L), (VECTOR(int32_t, 2))((-3L), 0x74138C16L), 0x74138C16L), 0x74138C16L, (-3L), 0x74138C16L, (VECTOR(int32_t, 2))((-3L), 0x74138C16L), (VECTOR(int32_t, 2))((-3L), 0x74138C16L), (-3L), 0x74138C16L, (-3L), 0x74138C16L);
                        VECTOR(int32_t, 4) l_276 = (VECTOR(int32_t, 4))((-4L), (VECTOR(int32_t, 2))((-4L), 0x65168BC2L), 0x65168BC2L);
                        VECTOR(int32_t, 8) l_277 = (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 6L), 6L), 6L, 0L, 6L);
                        VECTOR(int32_t, 4) l_278 = (VECTOR(int32_t, 4))(8L, (VECTOR(int32_t, 2))(8L, (-3L)), (-3L));
                        VECTOR(int32_t, 8) l_279 = (VECTOR(int32_t, 8))(0x0C55F51BL, (VECTOR(int32_t, 4))(0x0C55F51BL, (VECTOR(int32_t, 2))(0x0C55F51BL, (-4L)), (-4L)), (-4L), 0x0C55F51BL, (-4L));
                        uint64_t l_280 = 0x65B7B6F859AAA8E0L;
                        int32_t l_281 = 0x29610F24L;
                        VECTOR(uint8_t, 8) l_282 = (VECTOR(uint8_t, 8))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 1UL), 1UL), 1UL, 0UL, 1UL);
                        VECTOR(int32_t, 4) l_283 = (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x614F5B04L), 0x614F5B04L);
                        int16_t l_284 = 0x6DF3L;
                        uint64_t l_285 = 1UL;
                        int i;
                        l_280 ^= ((VECTOR(int32_t, 2))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(mul_hi(((VECTOR(int32_t, 2))(l_275.s83)).yyxxyxyyxyxxxyxx, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(0x3AA201D1L, (-5L), ((VECTOR(int32_t, 2))(l_276.wy)), 1L, ((VECTOR(int32_t, 2))(l_277.s76)), (-1L))))))).s6327701417324234))).se9d9)).hi, ((VECTOR(int32_t, 4))(l_278.wxzw)).even, ((VECTOR(int32_t, 16))(l_279.s3572257325554341)).s4e))).odd;
                        l_284 ^= ((VECTOR(int32_t, 4))((l_282.s3 = l_281), ((VECTOR(int32_t, 2))(l_283.zx)), 1L)).z;
                        --l_285;
                    }
                    else
                    { /* block id: 87 */
                        uint32_t l_288 = 0x2E06FD1DL;
                        int32_t l_292 = 0x760A48CDL;
                        int32_t *l_291 = &l_292;
                        int32_t l_293 = 6L;
                        ++l_288;
                        l_291 = (void*)0;
                        l_293 ^= (-1L);
                    }
                    l_296 = l_294[2];
                    unsigned int result = 0;
                    result += l_274.y;
                    result += l_274.x;
                    result += l_295;
                    atomic_add(&p_796->g_special_values[65 * get_linear_group_id() + 4], result);
                }
                else
                { /* block id: 93 */
                    (1 + 1);
                }
                if ((*l_205))
                    break;
            }
            for (p_796->g_248 = 0; (p_796->g_248 > 36); p_796->g_248 = safe_add_func_int64_t_s_s(p_796->g_248, 4))
            { /* block id: 100 */
                int32_t ***l_302 = &l_165[4];
                int32_t **l_304 = &p_796->g_166[2][4];
                int32_t ***l_303[2];
                int32_t l_307 = 1L;
                int32_t l_308 = (-1L);
                int32_t l_309 = 1L;
                int32_t l_310 = 0x1F0EE2D9L;
                int32_t l_312[4];
                int64_t l_314 = 8L;
                int8_t l_315 = 0x44L;
                int i;
                for (i = 0; i < 2; i++)
                    l_303[i] = &l_304;
                for (i = 0; i < 4; i++)
                    l_312[i] = 6L;
                for (p_39 = 0; (p_39 != 26); ++p_39)
                { /* block id: 103 */
                    int32_t **l_301[3][6] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
                    int i, j;
                    p_40 = (p_796->g_101 = p_40);
                    if ((*p_40))
                        break;
                }
                p_796->g_112.w ^= (((*l_302) = &p_796->g_166[1][5]) != (l_305 = &p_796->g_166[0][6]));
                if (l_249)
                    continue;
                --l_316;
            }
        }
        (*p_796->g_100) = (*p_796->g_100);
    }
    else
    { /* block id: 117 */
        uint64_t *l_394 = &p_796->g_393.f5;
        uint64_t *l_395[1];
        int32_t l_396 = 0x07ED3039L;
        int32_t l_397 = (-1L);
        int16_t *l_400 = &p_796->g_108;
        uint32_t *l_405 = &p_796->g_245;
        int i;
        for (i = 0; i < 1; i++)
            l_395[i] = &p_796->g_80.f5;
        if ((atomic_inc(&p_796->g_atomic_input[65 * get_linear_group_id() + 13]) == 0))
        { /* block id: 119 */
            int16_t l_320 = 0x2788L;
            uint8_t l_321[3][4][2] = {{{0x73L,0x7AL},{0x73L,0x7AL},{0x73L,0x7AL},{0x73L,0x7AL}},{{0x73L,0x7AL},{0x73L,0x7AL},{0x73L,0x7AL},{0x73L,0x7AL}},{{0x73L,0x7AL},{0x73L,0x7AL},{0x73L,0x7AL},{0x73L,0x7AL}}};
            VECTOR(int32_t, 4) l_324 = (VECTOR(int32_t, 4))((-8L), (VECTOR(int32_t, 2))((-8L), (-1L)), (-1L));
            VECTOR(int32_t, 8) l_325 = (VECTOR(int32_t, 8))(5L, (VECTOR(int32_t, 4))(5L, (VECTOR(int32_t, 2))(5L, 8L), 8L), 8L, 5L, 8L);
            VECTOR(int32_t, 16) l_326 = (VECTOR(int32_t, 16))(0x624FCBCCL, (VECTOR(int32_t, 4))(0x624FCBCCL, (VECTOR(int32_t, 2))(0x624FCBCCL, 0x2A4664BDL), 0x2A4664BDL), 0x2A4664BDL, 0x624FCBCCL, 0x2A4664BDL, (VECTOR(int32_t, 2))(0x624FCBCCL, 0x2A4664BDL), (VECTOR(int32_t, 2))(0x624FCBCCL, 0x2A4664BDL), 0x624FCBCCL, 0x2A4664BDL, 0x624FCBCCL, 0x2A4664BDL);
            int64_t l_327 = 0x6418BE28BBD46E12L;
            int32_t *l_328 = (void*)0;
            int32_t *l_329 = (void*)0;
            uint8_t l_330 = 0xDAL;
            int32_t l_383 = (-7L);
            int32_t *l_384 = (void*)0;
            int i, j, k;
            l_321[0][0][0]++;
            l_329 = (((l_327 &= ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(safe_clamp_func(VECTOR(int32_t, 4),VECTOR(int32_t, 4),((VECTOR(int32_t, 4))(l_324.yyxw)), ((VECTOR(int32_t, 16))(l_325.s4417111371147725)).s3bcf, ((VECTOR(int32_t, 8))(l_326.sadbf2d43)).hi))).xyzxywxx)).s7) , 0x1F74BA9EL) , l_328);
            if (l_330)
            { /* block id: 123 */
                int32_t l_331 = 1L;
                for (l_331 = 2; (l_331 != (-28)); l_331 = safe_sub_func_int32_t_s_s(l_331, 1))
                { /* block id: 126 */
                    int64_t l_334 = 0x7C36F293F6CEA1F4L;
                    uint32_t l_350[1];
                    uint32_t l_351 = 0xEDBB41DCL;
                    int i;
                    for (i = 0; i < 1; i++)
                        l_350[i] = 0x470E1591L;
                    l_328 = (void*)0;
                    if (l_334)
                    { /* block id: 128 */
                        int32_t l_336 = 0L;
                        int32_t *l_335 = &l_336;
                        int16_t l_337 = 0x02D8L;
                        VECTOR(uint32_t, 8) l_338 = (VECTOR(uint32_t, 8))(8UL, (VECTOR(uint32_t, 4))(8UL, (VECTOR(uint32_t, 2))(8UL, 0x666F7F35L), 0x666F7F35L), 0x666F7F35L, 8UL, 0x666F7F35L);
                        int32_t *l_341 = &l_336;
                        int i;
                        l_329 = l_335;
                        --l_338.s7;
                        l_329 = l_341;
                    }
                    else
                    { /* block id: 132 */
                        VECTOR(uint32_t, 4) l_342 = (VECTOR(uint32_t, 4))(0x31C7CB92L, (VECTOR(uint32_t, 2))(0x31C7CB92L, 0UL), 0UL);
                        int32_t l_346 = 1L;
                        int32_t *l_345 = &l_346;
                        union U2 l_348 = {{0x651E1C9720F91E9BL}};/* VOLATILE GLOBAL l_348 */
                        union U2 *l_347[3][1];
                        union U2 *l_349[6][7][6] = {{{&l_348,&l_348,&l_348,&l_348,&l_348,&l_348},{&l_348,&l_348,&l_348,&l_348,&l_348,&l_348},{&l_348,&l_348,&l_348,&l_348,&l_348,&l_348},{&l_348,&l_348,&l_348,&l_348,&l_348,&l_348},{&l_348,&l_348,&l_348,&l_348,&l_348,&l_348},{&l_348,&l_348,&l_348,&l_348,&l_348,&l_348},{&l_348,&l_348,&l_348,&l_348,&l_348,&l_348}},{{&l_348,&l_348,&l_348,&l_348,&l_348,&l_348},{&l_348,&l_348,&l_348,&l_348,&l_348,&l_348},{&l_348,&l_348,&l_348,&l_348,&l_348,&l_348},{&l_348,&l_348,&l_348,&l_348,&l_348,&l_348},{&l_348,&l_348,&l_348,&l_348,&l_348,&l_348},{&l_348,&l_348,&l_348,&l_348,&l_348,&l_348},{&l_348,&l_348,&l_348,&l_348,&l_348,&l_348}},{{&l_348,&l_348,&l_348,&l_348,&l_348,&l_348},{&l_348,&l_348,&l_348,&l_348,&l_348,&l_348},{&l_348,&l_348,&l_348,&l_348,&l_348,&l_348},{&l_348,&l_348,&l_348,&l_348,&l_348,&l_348},{&l_348,&l_348,&l_348,&l_348,&l_348,&l_348},{&l_348,&l_348,&l_348,&l_348,&l_348,&l_348},{&l_348,&l_348,&l_348,&l_348,&l_348,&l_348}},{{&l_348,&l_348,&l_348,&l_348,&l_348,&l_348},{&l_348,&l_348,&l_348,&l_348,&l_348,&l_348},{&l_348,&l_348,&l_348,&l_348,&l_348,&l_348},{&l_348,&l_348,&l_348,&l_348,&l_348,&l_348},{&l_348,&l_348,&l_348,&l_348,&l_348,&l_348},{&l_348,&l_348,&l_348,&l_348,&l_348,&l_348},{&l_348,&l_348,&l_348,&l_348,&l_348,&l_348}},{{&l_348,&l_348,&l_348,&l_348,&l_348,&l_348},{&l_348,&l_348,&l_348,&l_348,&l_348,&l_348},{&l_348,&l_348,&l_348,&l_348,&l_348,&l_348},{&l_348,&l_348,&l_348,&l_348,&l_348,&l_348},{&l_348,&l_348,&l_348,&l_348,&l_348,&l_348},{&l_348,&l_348,&l_348,&l_348,&l_348,&l_348},{&l_348,&l_348,&l_348,&l_348,&l_348,&l_348}},{{&l_348,&l_348,&l_348,&l_348,&l_348,&l_348},{&l_348,&l_348,&l_348,&l_348,&l_348,&l_348},{&l_348,&l_348,&l_348,&l_348,&l_348,&l_348},{&l_348,&l_348,&l_348,&l_348,&l_348,&l_348},{&l_348,&l_348,&l_348,&l_348,&l_348,&l_348},{&l_348,&l_348,&l_348,&l_348,&l_348,&l_348},{&l_348,&l_348,&l_348,&l_348,&l_348,&l_348}}};
                        int i, j, k;
                        for (i = 0; i < 3; i++)
                        {
                            for (j = 0; j < 1; j++)
                                l_347[i][j] = &l_348;
                        }
                        ++l_342.y;
                        l_328 = l_345;
                        l_349[2][3][4] = l_347[0][0];
                    }
                    l_351 &= l_350[0];
                    for (l_351 = 0; (l_351 > 9); l_351 = safe_add_func_int8_t_s_s(l_351, 1))
                    { /* block id: 140 */
                        int32_t l_355 = 0x00E9B217L;
                        int32_t *l_354 = &l_355;
                        l_354 = l_354;
                    }
                }
                for (l_331 = (-19); (l_331 != 16); ++l_331)
                { /* block id: 146 */
                    l_325.s4 |= 0x5A48FA41L;
                }
                for (l_331 = 9; (l_331 > (-20)); --l_331)
                { /* block id: 151 */
                    VECTOR(int32_t, 16) l_360 = (VECTOR(int32_t, 16))((-7L), (VECTOR(int32_t, 4))((-7L), (VECTOR(int32_t, 2))((-7L), 0x0DA0BA0CL), 0x0DA0BA0CL), 0x0DA0BA0CL, (-7L), 0x0DA0BA0CL, (VECTOR(int32_t, 2))((-7L), 0x0DA0BA0CL), (VECTOR(int32_t, 2))((-7L), 0x0DA0BA0CL), (-7L), 0x0DA0BA0CL, (-7L), 0x0DA0BA0CL);
                    int8_t l_361[6] = {0x09L,0x09L,0x09L,0x09L,0x09L,0x09L};
                    int i;
                    l_361[5] ^= ((VECTOR(int32_t, 4))(l_360.s1b1a)).z;
                }
                for (l_331 = 0; (l_331 < 27); l_331 = safe_add_func_int8_t_s_s(l_331, 7))
                { /* block id: 156 */
                    int64_t l_364 = 0x4C93C5DA89E05681L;
                    int32_t l_365 = (-8L);
                    uint16_t l_366 = 0x9FB2L;
                    uint32_t l_369 = 0x8A015477L;
                    int64_t *l_371[7] = {&l_364,&l_364,&l_364,&l_364,&l_364,&l_364,&l_364};
                    int64_t **l_370 = &l_371[3];
                    int64_t **l_372 = &l_371[3];
                    int64_t **l_373 = &l_371[0];
                    int i;
                    --l_366;
                    l_373 = (l_372 = (((FAKE_DIVERGE(p_796->local_1_offset, get_local_id(1), 10) , l_369) , 0x2E3A02C0L) , (l_370 = l_370)));
                    for (l_366 = 0; (l_366 <= 18); l_366 = safe_add_func_uint32_t_u_u(l_366, 1))
                    { /* block id: 163 */
                        uint32_t l_376[9] = {0x02BA7AABL,0x02BA7AABL,0x02BA7AABL,0x02BA7AABL,0x02BA7AABL,0x02BA7AABL,0x02BA7AABL,0x02BA7AABL,0x02BA7AABL};
                        uint16_t l_379 = 2UL;
                        int i;
                        --l_376[1];
                        l_324.y |= l_379;
                    }
                }
            }
            else
            { /* block id: 168 */
                int64_t l_380 = 0x7B36FAE6D1EB2E24L;
                uint32_t l_381 = 4294967295UL;
                uint8_t l_382 = 255UL;
                l_381 = l_380;
                l_324.w ^= l_382;
            }
            l_384 = (l_383 , (void*)0);
            unsigned int result = 0;
            result += l_320;
            int l_321_i0, l_321_i1, l_321_i2;
            for (l_321_i0 = 0; l_321_i0 < 3; l_321_i0++) {
                for (l_321_i1 = 0; l_321_i1 < 4; l_321_i1++) {
                    for (l_321_i2 = 0; l_321_i2 < 2; l_321_i2++) {
                        result += l_321[l_321_i0][l_321_i1][l_321_i2];
                    }
                }
            }
            result += l_324.w;
            result += l_324.z;
            result += l_324.y;
            result += l_324.x;
            result += l_325.s7;
            result += l_325.s6;
            result += l_325.s5;
            result += l_325.s4;
            result += l_325.s3;
            result += l_325.s2;
            result += l_325.s1;
            result += l_325.s0;
            result += l_326.sf;
            result += l_326.se;
            result += l_326.sd;
            result += l_326.sc;
            result += l_326.sb;
            result += l_326.sa;
            result += l_326.s9;
            result += l_326.s8;
            result += l_326.s7;
            result += l_326.s6;
            result += l_326.s5;
            result += l_326.s4;
            result += l_326.s3;
            result += l_326.s2;
            result += l_326.s1;
            result += l_326.s0;
            result += l_327;
            result += l_330;
            result += l_383;
            atomic_add(&p_796->g_special_values[65 * get_linear_group_id() + 13], result);
        }
        else
        { /* block id: 173 */
            (1 + 1);
        }
        atomic_or(&p_796->g_atomic_reduction[get_linear_group_id()], (p_796->g_271.f2.f0 <= (((safe_lshift_func_int16_t_s_u(((*l_400) = (safe_sub_func_int64_t_s_s(p_796->g_77, (safe_sub_func_int64_t_s_s((l_391 | ((*l_394) = ((void*)0 == p_796->g_392))), (p_796->g_78[4]--)))))), (((l_396 = ((safe_div_func_int16_t_s_s((((safe_rshift_func_int8_t_s_s((l_405 == &p_796->g_245), 3)) <= (safe_sub_func_int64_t_s_s(((&p_796->g_101 == ((*l_150) = (*l_150))) >= l_397), p_796->g_238))) <= 0x6C2B0465L), 7UL)) ^ 0x65EEL)) <= p_796->g_79[2].f5) | p_41))) == 0L) | 0x3EL)));
        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        if (get_linear_local_id() == 0)
            p_796->v_collective += p_796->g_atomic_reduction[get_linear_group_id()];
        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        for (p_796->g_51 = 3; (p_796->g_51 != (-8)); p_796->g_51--)
        { /* block id: 184 */
            int64_t **l_413 = (void*)0;
            uint16_t *l_414 = &l_196;
            int32_t *l_420 = &p_796->g_410.f3;
            uint16_t **l_423[8] = {&l_414,&p_796->g_421[6][0][2],&l_414,&l_414,&p_796->g_421[6][0][2],&l_414,&l_414,&p_796->g_421[6][0][2]};
            int32_t l_426 = (-1L);
            int i;
            p_796->g_98.s2 &= ((((p_796->g_410 , (((((safe_rshift_func_int16_t_s_s((((*l_414) = (l_413 != l_413)) | (~(l_396 &= 5L))), (safe_rshift_func_int8_t_s_s(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 2))(l_417.s71)))).hi, ((*p_796->g_246) <= ((safe_mod_func_uint8_t_u_u((((*l_206) &= ((void*)0 == l_420)) <= ((p_796->g_421[6][0][2] = p_796->g_421[6][0][2]) == ((safe_add_func_int32_t_s_s(l_397, FAKE_DIVERGE(p_796->local_2_offset, get_local_id(2), 10))) , l_400))), FAKE_DIVERGE(p_796->group_0_offset, get_group_id(0), 10))) ^ p_41)))))) ^ p_796->g_78[7]) , (-1L)) != (-7L)) , l_426)) == (*p_40)) , p_796->g_79[2].f2.f0) != (**l_149));
            if ((atomic_inc(&p_796->l_atomic_input[14]) == 1))
            { /* block id: 191 */
                int32_t l_427 = 0x6CC25D41L;
                uint64_t l_456 = 0xECBBD2CC59CD811DL;
                int32_t l_457 = 0x3CD8CF10L;
                int64_t l_515 = 0x45C25D91549D411BL;
                struct S0 l_517 = {0L};/* VOLATILE GLOBAL l_517 */
                struct S0 *l_516[7] = {&l_517,&l_517,&l_517,&l_517,&l_517,&l_517,&l_517};
                int i;
                for (l_427 = 25; (l_427 >= (-19)); l_427 = safe_sub_func_int64_t_s_s(l_427, 9))
                { /* block id: 194 */
                    int32_t l_430 = (-1L);
                    uint32_t l_431 = 0xC881086FL;
                    struct S1 l_432 = {-10L,0xAD274BE085FA7185L,{0x44262284AD1BB957L},-1L,0x1E375A43L,0x32B43972BEEA884BL};/* VOLATILE GLOBAL l_432 */
                    int32_t *l_433 = (void*)0;
                    int32_t *l_434 = (void*)0;
                    int32_t l_435 = 0L;
                    uint16_t l_436 = 0x0172L;
                    struct S1 l_439[7] = {{7L,18446744073709551615UL,{1L},0x46C3E8B5L,0UL,18446744073709551606UL},{7L,18446744073709551615UL,{1L},0x46C3E8B5L,0UL,18446744073709551606UL},{7L,18446744073709551615UL,{1L},0x46C3E8B5L,0UL,18446744073709551606UL},{7L,18446744073709551615UL,{1L},0x46C3E8B5L,0UL,18446744073709551606UL},{7L,18446744073709551615UL,{1L},0x46C3E8B5L,0UL,18446744073709551606UL},{7L,18446744073709551615UL,{1L},0x46C3E8B5L,0UL,18446744073709551606UL},{7L,18446744073709551615UL,{1L},0x46C3E8B5L,0UL,18446744073709551606UL}};
                    uint32_t l_440 = 0x8B8BF3E6L;
                    int32_t l_441 = (-1L);
                    int8_t *l_443 = (void*)0;
                    int8_t **l_442 = &l_443;
                    int8_t l_444 = 0x57L;
                    VECTOR(int32_t, 16) l_445 = (VECTOR(int32_t, 16))(0x4DBC30A7L, (VECTOR(int32_t, 4))(0x4DBC30A7L, (VECTOR(int32_t, 2))(0x4DBC30A7L, 0x31316676L), 0x31316676L), 0x31316676L, 0x4DBC30A7L, 0x31316676L, (VECTOR(int32_t, 2))(0x4DBC30A7L, 0x31316676L), (VECTOR(int32_t, 2))(0x4DBC30A7L, 0x31316676L), 0x4DBC30A7L, 0x31316676L, 0x4DBC30A7L, 0x31316676L);
                    int i;
                    l_434 = (l_433 = (GROUP_DIVERGE(2, 1) , ((l_431 ^= l_430) , (l_432 , l_433))));
                    l_436--;
                    l_442 = (l_439[5] , ((l_441 = l_440) , l_442));
                    if ((l_444 , l_445.s1))
                    { /* block id: 201 */
                        int32_t l_446 = 8L;
                        int32_t l_447 = 0x39C90AC0L;
                        int64_t l_448 = 0L;
                        uint32_t l_449 = 0x6A54A907L;
                        int32_t *l_450 = (void*)0;
                        int32_t *l_451[9][4] = {{&l_446,&l_447,&l_447,&l_446},{&l_446,&l_447,&l_447,&l_446},{&l_446,&l_447,&l_447,&l_446},{&l_446,&l_447,&l_447,&l_446},{&l_446,&l_447,&l_447,&l_446},{&l_446,&l_447,&l_447,&l_446},{&l_446,&l_447,&l_447,&l_446},{&l_446,&l_447,&l_447,&l_446},{&l_446,&l_447,&l_447,&l_446}};
                        int32_t *l_452 = (void*)0;
                        int i, j;
                        l_447 ^= l_446;
                        l_446 &= l_448;
                        l_434 = (l_433 = (l_449 , (l_452 = (l_451[5][2] = l_450))));
                    }
                    else
                    { /* block id: 208 */
                        uint32_t l_453 = 5UL;
                        int32_t l_454 = 0x55FCE418L;
                        uint64_t l_455 = 1UL;
                        l_445.s2 |= (l_455 = (l_453 , l_454));
                    }
                }
                l_457 ^= l_456;
                for (l_456 = 0; (l_456 == 48); l_456++)
                { /* block id: 216 */
                    struct S0 l_460 = {0L};/* VOLATILE GLOBAL l_460 */
                    struct S0 *l_461 = (void*)0;
                    union U2 l_462 = {{0x37B8CE593189D29CL}};/* VOLATILE GLOBAL l_462 */
                    int8_t l_463 = 0x73L;
                    uint64_t l_464 = 18446744073709551615UL;
                    int32_t l_465 = (-6L);
                    VECTOR(int8_t, 8) l_466 = (VECTOR(int8_t, 8))(0x6EL, (VECTOR(int8_t, 4))(0x6EL, (VECTOR(int8_t, 2))(0x6EL, 0x58L), 0x58L), 0x58L, 0x6EL, 0x58L);
                    VECTOR(int8_t, 16) l_467 = (VECTOR(int8_t, 16))(0x65L, (VECTOR(int8_t, 4))(0x65L, (VECTOR(int8_t, 2))(0x65L, 9L), 9L), 9L, 0x65L, 9L, (VECTOR(int8_t, 2))(0x65L, 9L), (VECTOR(int8_t, 2))(0x65L, 9L), 0x65L, 9L, 0x65L, 9L);
                    VECTOR(uint32_t, 2) l_468 = (VECTOR(uint32_t, 2))(0xB091FC0DL, 4UL);
                    union U2 l_469 = {{9L}};/* VOLATILE GLOBAL l_469 */
                    uint8_t l_470 = 246UL;
                    int64_t l_471 = (-3L);
                    int8_t l_472 = 0x29L;
                    uint16_t l_473 = 1UL;
                    int32_t l_474 = 0x3C67C924L;
                    VECTOR(int32_t, 2) l_475 = (VECTOR(int32_t, 2))(0L, 0x54A92A7EL);
                    uint32_t l_476 = 0x37B94CF1L;
                    int i;
                    l_461 = (l_460 , (void*)0);
                    if (((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(hadd(((VECTOR(int32_t, 4))(clz(((VECTOR(int32_t, 2))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 4))((-1L), ((VECTOR(int32_t, 2))(clz(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(1L, (-1L))).yxyyyxxyxxyxxyxx)).sc3))), (-1L))).lo, ((VECTOR(int32_t, 8))(upsample(((VECTOR(int16_t, 16))(rhadd(((VECTOR(int16_t, 2))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 2),((VECTOR(int16_t, 8))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(max(((VECTOR(int16_t, 8))((((VECTOR(int8_t, 4))(((l_462 , l_463) , (-1L)), l_464, 0x2AL, (-9L))).w , (l_465 = 2L)), ((VECTOR(int16_t, 2))(rotate(((VECTOR(int16_t, 2))(sub_sat(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 16))(0x7858L, 0x59BCL, ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(min(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 16))(upsample(((VECTOR(int8_t, 4))(max(((VECTOR(int8_t, 2))(0x16L, (-1L))).yxyy, ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(hadd(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(add_sat(((VECTOR(int8_t, 16))(min(((VECTOR(int8_t, 16))(l_466.s1054570745404777)), (int8_t)1L))).sb1, ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(add_sat(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(max(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(min(((VECTOR(int8_t, 2))(mad_sat(((VECTOR(int8_t, 4))(l_467.s3f74)).odd, ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(min(((VECTOR(int8_t, 2))(0x40L, 0x0BL)).yxxy, ((VECTOR(int8_t, 2))(0x2FL, 0x22L)).xyxy))).odd)), ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 16))((((((VECTOR(uint32_t, 16))(l_468.yxxxxxyyxxyxyxyy)).sa , 0x05EBA0D2A675BC51L) , l_469) , l_470), 1L, ((VECTOR(int8_t, 4))((-1L))), 1L, ((VECTOR(int8_t, 2))(0L)), 1L, ((VECTOR(int8_t, 4))(0L)), (-1L), 0L)))).s29))), (int8_t)l_471))), (-9L), 0x72L)), ((VECTOR(int8_t, 4))((-6L)))))).ywxzzywy)), (-1L), ((VECTOR(int8_t, 2))(0x11L)), l_472, 0x56L, 0L, 8L, 0x76L)).lo)).s24, ((VECTOR(int8_t, 2))(0x71L))))), 0x26L, 0x70L)).wzxzxxwy)).s22))), 0x31L, 0x79L, 0L, ((VECTOR(int8_t, 8))(0x74L)), 0x37L, 0x3CL, 0x56L)).s704d, ((VECTOR(int8_t, 4))(0x46L))))), 0L, ((VECTOR(int8_t, 2))(8L)), 1L)).even))).wwyzxxxzwxxyyxxw, ((VECTOR(uint8_t, 16))(1UL))))).s3a44)).zxwxxzyy, ((VECTOR(int16_t, 8))(5L))))), 0x6F2FL, 9L, l_473, ((VECTOR(int16_t, 4))(4L)), (-2L))).se3)), (-10L), (-1L), l_474, (-8L), (-1L), ((VECTOR(int16_t, 2))(0L)), 0x4C86L, 2L, l_475.x, 0L, 0x525CL)).hi)).s56)).xyyyxyxyyxxyxxyy)).s7a, ((VECTOR(int16_t, 2))(0x0625L))))), ((VECTOR(int16_t, 2))(0x7011L))))), 0x3983L, 0x190CL, 0x69C5L, 5L, 1L)).s51, ((VECTOR(int16_t, 2))((-1L)))))).xyxyxyyx)), 0x16B9L, l_476, ((VECTOR(int16_t, 4))(0x4403L)), 1L, 0x709BL)).s21)).xyxxyxxyyxxyxxxx)).lo)).s61, ((VECTOR(int16_t, 2))(7L)), ((VECTOR(int16_t, 2))(0x6E51L))))).yxxyyxxyxyyxxyyx, ((VECTOR(int16_t, 16))(0x001EL))))).hi, ((VECTOR(uint16_t, 8))(0x5587L))))).s40, ((VECTOR(int32_t, 2))((-1L)))))).xyxx))).zxzxyyxz, ((VECTOR(int32_t, 8))(0L))))).s02)).hi)
                    { /* block id: 219 */
                        VECTOR(int32_t, 4) l_477 = (VECTOR(int32_t, 4))(0x0D74AC84L, (VECTOR(int32_t, 2))(0x0D74AC84L, 0x640178FAL), 0x640178FAL);
                        uint16_t l_478 = 5UL;
                        VECTOR(int16_t, 4) l_479 = (VECTOR(int16_t, 4))(5L, (VECTOR(int16_t, 2))(5L, (-1L)), (-1L));
                        int64_t l_480 = (-6L);
                        struct S0 l_481[3] = {{0x48581DEDB553F0F9L},{0x48581DEDB553F0F9L},{0x48581DEDB553F0F9L}};
                        VECTOR(int32_t, 2) l_482 = (VECTOR(int32_t, 2))(0x5A22E776L, 0x0827B0EFL);
                        struct S0 l_483 = {-1L};/* VOLATILE GLOBAL l_483 */
                        VECTOR(int32_t, 4) l_484 = (VECTOR(int32_t, 4))(7L, (VECTOR(int32_t, 2))(7L, 0L), 0L);
                        uint32_t l_485 = 1UL;
                        uint32_t l_486 = 5UL;
                        int32_t *l_487 = (void*)0;
                        int32_t *l_488 = (void*)0;
                        int32_t *l_489[7];
                        int32_t *l_490 = (void*)0;
                        int32_t *l_491 = (void*)0;
                        int32_t *l_492 = (void*)0;
                        int i;
                        for (i = 0; i < 7; i++)
                            l_489[i] = (void*)0;
                        l_427 = (GROUP_DIVERGE(1, 1) , ((VECTOR(int32_t, 16))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(l_477.ywwywwxxwwyywxyy)).s62)).xyxxxyxyyyyyxxxy, ((VECTOR(int32_t, 8))((l_457 = (l_478 , l_479.y)), l_480, (l_481[2] , (((l_475.x = ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(l_482.xyxyyxxx)).s5305707467553772)).sb) , l_483) , (l_474 = ((VECTOR(int32_t, 16))(l_484.zxzwwwxywxxwwwxz)).sa))), l_485, 0x03ED800CL, 0L, 0x30497AA7L, (-1L))).s1001611322636064))).s4);
                        l_488 = (l_486 , l_487);
                        l_491 = (l_490 = l_489[1]);
                        l_489[6] = l_492;
                    }
                    else
                    { /* block id: 228 */
                        VECTOR(int32_t, 4) l_493 = (VECTOR(int32_t, 4))(4L, (VECTOR(int32_t, 2))(4L, 0x7D623907L), 0x7D623907L);
                        VECTOR(int32_t, 4) l_494 = (VECTOR(int32_t, 4))(0x12ABA137L, (VECTOR(int32_t, 2))(0x12ABA137L, 0x731883DDL), 0x731883DDL);
                        uint32_t l_495[8][1];
                        uint32_t l_496 = 0xAE8D3F4EL;
                        VECTOR(int32_t, 8) l_497 = (VECTOR(int32_t, 8))((-9L), (VECTOR(int32_t, 4))((-9L), (VECTOR(int32_t, 2))((-9L), 0x1D5C4EABL), 0x1D5C4EABL), 0x1D5C4EABL, (-9L), 0x1D5C4EABL);
                        VECTOR(int32_t, 16) l_498 = (VECTOR(int32_t, 16))((-2L), (VECTOR(int32_t, 4))((-2L), (VECTOR(int32_t, 2))((-2L), 0x2D13F58BL), 0x2D13F58BL), 0x2D13F58BL, (-2L), 0x2D13F58BL, (VECTOR(int32_t, 2))((-2L), 0x2D13F58BL), (VECTOR(int32_t, 2))((-2L), 0x2D13F58BL), (-2L), 0x2D13F58BL, (-2L), 0x2D13F58BL);
                        VECTOR(int32_t, 4) l_499 = (VECTOR(int32_t, 4))(0x054E5E26L, (VECTOR(int32_t, 2))(0x054E5E26L, 7L), 7L);
                        VECTOR(int32_t, 2) l_500 = (VECTOR(int32_t, 2))(0x5B788F49L, 0x2EF24B5FL);
                        VECTOR(int32_t, 4) l_501 = (VECTOR(int32_t, 4))(0x0D789472L, (VECTOR(int32_t, 2))(0x0D789472L, 0x1A835BF6L), 0x1A835BF6L);
                        VECTOR(int32_t, 8) l_502 = (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, (-6L)), (-6L)), (-6L), 1L, (-6L));
                        int8_t l_503[9][9][3] = {{{0x5EL,(-2L),(-6L)},{0x5EL,(-2L),(-6L)},{0x5EL,(-2L),(-6L)},{0x5EL,(-2L),(-6L)},{0x5EL,(-2L),(-6L)},{0x5EL,(-2L),(-6L)},{0x5EL,(-2L),(-6L)},{0x5EL,(-2L),(-6L)},{0x5EL,(-2L),(-6L)}},{{0x5EL,(-2L),(-6L)},{0x5EL,(-2L),(-6L)},{0x5EL,(-2L),(-6L)},{0x5EL,(-2L),(-6L)},{0x5EL,(-2L),(-6L)},{0x5EL,(-2L),(-6L)},{0x5EL,(-2L),(-6L)},{0x5EL,(-2L),(-6L)},{0x5EL,(-2L),(-6L)}},{{0x5EL,(-2L),(-6L)},{0x5EL,(-2L),(-6L)},{0x5EL,(-2L),(-6L)},{0x5EL,(-2L),(-6L)},{0x5EL,(-2L),(-6L)},{0x5EL,(-2L),(-6L)},{0x5EL,(-2L),(-6L)},{0x5EL,(-2L),(-6L)},{0x5EL,(-2L),(-6L)}},{{0x5EL,(-2L),(-6L)},{0x5EL,(-2L),(-6L)},{0x5EL,(-2L),(-6L)},{0x5EL,(-2L),(-6L)},{0x5EL,(-2L),(-6L)},{0x5EL,(-2L),(-6L)},{0x5EL,(-2L),(-6L)},{0x5EL,(-2L),(-6L)},{0x5EL,(-2L),(-6L)}},{{0x5EL,(-2L),(-6L)},{0x5EL,(-2L),(-6L)},{0x5EL,(-2L),(-6L)},{0x5EL,(-2L),(-6L)},{0x5EL,(-2L),(-6L)},{0x5EL,(-2L),(-6L)},{0x5EL,(-2L),(-6L)},{0x5EL,(-2L),(-6L)},{0x5EL,(-2L),(-6L)}},{{0x5EL,(-2L),(-6L)},{0x5EL,(-2L),(-6L)},{0x5EL,(-2L),(-6L)},{0x5EL,(-2L),(-6L)},{0x5EL,(-2L),(-6L)},{0x5EL,(-2L),(-6L)},{0x5EL,(-2L),(-6L)},{0x5EL,(-2L),(-6L)},{0x5EL,(-2L),(-6L)}},{{0x5EL,(-2L),(-6L)},{0x5EL,(-2L),(-6L)},{0x5EL,(-2L),(-6L)},{0x5EL,(-2L),(-6L)},{0x5EL,(-2L),(-6L)},{0x5EL,(-2L),(-6L)},{0x5EL,(-2L),(-6L)},{0x5EL,(-2L),(-6L)},{0x5EL,(-2L),(-6L)}},{{0x5EL,(-2L),(-6L)},{0x5EL,(-2L),(-6L)},{0x5EL,(-2L),(-6L)},{0x5EL,(-2L),(-6L)},{0x5EL,(-2L),(-6L)},{0x5EL,(-2L),(-6L)},{0x5EL,(-2L),(-6L)},{0x5EL,(-2L),(-6L)},{0x5EL,(-2L),(-6L)}},{{0x5EL,(-2L),(-6L)},{0x5EL,(-2L),(-6L)},{0x5EL,(-2L),(-6L)},{0x5EL,(-2L),(-6L)},{0x5EL,(-2L),(-6L)},{0x5EL,(-2L),(-6L)},{0x5EL,(-2L),(-6L)},{0x5EL,(-2L),(-6L)},{0x5EL,(-2L),(-6L)}}};
                        int64_t l_504 = 0x6085B0DEF44A66C5L;
                        uint16_t l_505 = 0xA148L;
                        VECTOR(int32_t, 8) l_506 = (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x2B98B582L), 0x2B98B582L), 0x2B98B582L, 0L, 0x2B98B582L);
                        VECTOR(int32_t, 4) l_507 = (VECTOR(int32_t, 4))(0x79FEE777L, (VECTOR(int32_t, 2))(0x79FEE777L, 0x0E07D7F3L), 0x0E07D7F3L);
                        VECTOR(int32_t, 2) l_508 = (VECTOR(int32_t, 2))(0x65E68421L, 0x58FE34F4L);
                        int32_t l_509 = 9L;
                        int8_t l_510 = 0x01L;
                        uint32_t l_511 = 0x1F263C7FL;
                        uint32_t l_514 = 4294967291UL;
                        int i, j, k;
                        for (i = 0; i < 8; i++)
                        {
                            for (j = 0; j < 1; j++)
                                l_495[i][j] = 0x3A596BB0L;
                        }
                        l_427 = ((VECTOR(int32_t, 2))(mul_hi(((VECTOR(int32_t, 2))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 2))(sub_sat(((VECTOR(int32_t, 2))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 8))(l_493.zyyywxwy)).s24, ((VECTOR(int32_t, 2))(l_494.yw)), ((VECTOR(int32_t, 4))(l_495[6][0], l_496, (-2L), (-3L))).lo))), ((VECTOR(int32_t, 8))(0x01F137BEL, 0x77D8D29AL, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(l_497.s1654243266535354)).s6e)), ((VECTOR(int32_t, 2))(l_498.sb4)), (-4L), (-5L))).s63))).yyyyxyxy, ((VECTOR(int32_t, 2))(clz(((VECTOR(int32_t, 4))(0x298837D9L, ((VECTOR(int32_t, 2))(l_499.zx)), 0x4CE1AAF0L)).hi))).xxxxyyxx, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(l_500.yxyyxxyy)).lo)).wxzyyzzw))).s60)), ((VECTOR(int32_t, 16))(max(((VECTOR(int32_t, 2))(0x35CDA4A4L, 0x0E9CAAC2L)).yyyyyyxxyxxyxxxy, (int32_t)(l_474 = 0x2CA6F14AL)))).s48, ((VECTOR(int32_t, 4))(mul_hi(((VECTOR(int32_t, 16))(l_501.wxyyzyyxyyyzwyyy)).sdaee, ((VECTOR(int32_t, 16))(safe_clamp_func(VECTOR(int32_t, 16),int32_t,((VECTOR(int32_t, 16))(l_502.s2411271022101330)), (int32_t)l_503[2][2][0], (int32_t)1L))).s11e4))).hi))), ((VECTOR(int32_t, 4))(rhadd(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(hadd(((VECTOR(int32_t, 2))(6L, 0x23B3EB47L)).yyyxxxxx, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(add_sat(((VECTOR(int32_t, 8))(0x4EC4E830L, ((l_467.s3 = (l_504 , 1L)) , l_505), ((VECTOR(int32_t, 2))(1L, 0L)), 6L, 0L, 0x008F65D1L, 0x7255B35CL)).lo, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(l_506.s45053522)))).lo))))).xwwxxzzy))))).s6237106013402235)).odd)).odd, ((VECTOR(int32_t, 2))(min(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(l_507.yy)), 0x7D50563BL, 0x129ED631L)).even)), ((VECTOR(int32_t, 2))(l_508.xy))))).xxyy))).hi))).lo;
                        l_511--;
                        l_498.sd ^= l_514;
                    }
                }
                l_516[3] = (l_515 , (void*)0);
                unsigned int result = 0;
                result += l_427;
                result += l_456;
                result += l_457;
                result += l_515;
                result += l_517.f0;
                atomic_add(&p_796->l_special_values[14], result);
            }
            else
            { /* block id: 237 */
                (1 + 1);
            }
        }
    }
    return &p_796->g_9;
}


/* ------------------------------------------ */
/* 
 * reads : p_796->g_108 p_796->g_112 p_796->g_100 p_796->g_101 p_796->g_9 p_796->g_91 p_796->g_81.f0.f0 p_796->g_78 p_796->g_98 p_796->l_comm_values p_796->g_77 p_796->g_79.f3 p_796->g_51 p_796->g_comm_values p_796->g_80.f3 p_796->g_80.f5
 * writes: p_796->g_108 p_796->g_98 p_796->g_91 p_796->g_78 p_796->g_112
 */
int32_t * func_43(int32_t * p_44, int32_t * p_45, struct S3 * p_796)
{ /* block id: 21 */
    uint8_t l_102 = 247UL;
    int32_t l_105 = 0x5250D909L;
    int32_t *l_106 = &p_796->g_79[2].f3;
    int16_t *l_107 = &p_796->g_108;
    VECTOR(uint16_t, 4) l_109 = (VECTOR(uint16_t, 4))(65526UL, (VECTOR(uint16_t, 2))(65526UL, 0x6254L), 0x6254L);
    int32_t *l_113 = (void*)0;
    int32_t *l_114 = (void*)0;
    int32_t *l_115[3][1];
    uint64_t l_138 = 0x151F3E89965A7D26L;
    int i, j;
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 1; j++)
            l_115[i][j] = (void*)0;
    }
    p_796->g_91.x &= (p_796->g_98.s2 = ((l_102 < (safe_lshift_func_int16_t_s_u(((*l_107) &= (((l_105 = 255UL) , l_106) == &p_796->g_51)), ((VECTOR(uint16_t, 8))(l_109.zzywyzxx)).s0))) & (((safe_sub_func_uint32_t_u_u((((((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(p_796->g_112.xyyywwyxxyxxxxzz)).s5b)).yyyxxxyyyxyyxyxy)).sb >= (1L || l_102)) || l_109.y) || 0UL), (**p_796->g_100))) != 1L) | 1L)));
    p_796->g_112.z = (((safe_rshift_func_int8_t_s_s(p_796->g_81.f0.f0, 2)) <= (safe_div_func_int32_t_s_s((safe_mul_func_int16_t_s_s(((((p_796->g_78[3]++) , 1L) , p_796->g_98.s0) == ((safe_div_func_int8_t_s_s(((p_796->l_comm_values[(safe_mod_func_uint32_t_u_u(p_796->tid, 25))] == ((((safe_rshift_func_int16_t_s_s((safe_div_func_int64_t_s_s((((safe_div_func_int32_t_s_s((((0x0F77C65BL && 0UL) & (((p_796->g_77 || ((safe_mul_func_int16_t_s_s((safe_mod_func_int16_t_s_s((((safe_rshift_func_uint8_t_u_u(l_138, ((0xA9L == 0x91L) ^ (*p_796->g_101)))) >= p_796->g_79[2].f3) , 0x7F40L), p_796->l_comm_values[(safe_mod_func_uint32_t_u_u(p_796->tid, 25))])), p_796->g_51)) == GROUP_DIVERGE(2, 1))) <= p_796->g_112.z) > 0x64C5L)) > p_796->g_79[2].f3), (-2L))) > p_796->g_98.s6) && p_796->g_112.w), 18446744073709551615UL)), 13)) , (void*)0) != &p_796->g_51) != p_796->g_comm_values[p_796->tid])) <= p_796->g_80.f3), p_796->g_112.x)) <= 0x450FL)), FAKE_DIVERGE(p_796->global_2_offset, get_global_id(2), 10))), (-1L)))) ^ p_796->g_80.f5);
    return &p_796->g_9;
}


/* ------------------------------------------ */
/* 
 * reads : p_796->g_57 p_796->g_9 p_796->l_comm_values p_796->g_78 p_796->g_79 p_796->g_81 p_796->g_80.f0 p_796->g_51 p_796->g_80.f4 p_796->g_91 p_796->g_98 p_796->g_100 p_796->g_101
 * writes: p_796->g_77 p_796->g_78 p_796->g_80 p_796->g_51
 */
int32_t * func_46(int32_t  p_47, int32_t  p_48, int32_t * p_49, struct S3 * p_796)
{ /* block id: 6 */
    int32_t *l_56 = (void*)0;
    int32_t *l_58 = &p_796->g_51;
    int32_t l_69 = 9L;
    int32_t *l_72 = (void*)0;
    int64_t *l_73 = (void*)0;
    int32_t l_74[1];
    int32_t l_75[4] = {0x7732C352L,0x7732C352L,0x7732C352L,0x7732C352L};
    int8_t *l_76[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int32_t *l_83 = &l_74[0];
    int32_t **l_82 = &l_83;
    VECTOR(int32_t, 16) l_86 = (VECTOR(int32_t, 16))(0x29FE0D49L, (VECTOR(int32_t, 4))(0x29FE0D49L, (VECTOR(int32_t, 2))(0x29FE0D49L, 0x16A8AB26L), 0x16A8AB26L), 0x16A8AB26L, 0x29FE0D49L, 0x16A8AB26L, (VECTOR(int32_t, 2))(0x29FE0D49L, 0x16A8AB26L), (VECTOR(int32_t, 2))(0x29FE0D49L, 0x16A8AB26L), 0x29FE0D49L, 0x16A8AB26L, 0x29FE0D49L, 0x16A8AB26L);
    VECTOR(uint16_t, 16) l_87 = (VECTOR(uint16_t, 16))(0xECA9L, (VECTOR(uint16_t, 4))(0xECA9L, (VECTOR(uint16_t, 2))(0xECA9L, 4UL), 4UL), 4UL, 0xECA9L, 4UL, (VECTOR(uint16_t, 2))(0xECA9L, 4UL), (VECTOR(uint16_t, 2))(0xECA9L, 4UL), 0xECA9L, 4UL, 0xECA9L, 4UL);
    VECTOR(int32_t, 2) l_90 = (VECTOR(int32_t, 2))(3L, 0x0E88EED3L);
    VECTOR(int32_t, 8) l_92 = (VECTOR(int32_t, 8))(0x36850493L, (VECTOR(int32_t, 4))(0x36850493L, (VECTOR(int32_t, 2))(0x36850493L, 1L), 1L), 1L, 0x36850493L, 1L);
    VECTOR(int32_t, 4) l_93 = (VECTOR(int32_t, 4))(0x646E9995L, (VECTOR(int32_t, 2))(0x646E9995L, (-1L)), (-1L));
    VECTOR(int32_t, 8) l_94 = (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0L), 0L), 0L, 1L, 0L);
    VECTOR(int32_t, 16) l_95 = (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x7D32FAA6L), 0x7D32FAA6L), 0x7D32FAA6L, 1L, 0x7D32FAA6L, (VECTOR(int32_t, 2))(1L, 0x7D32FAA6L), (VECTOR(int32_t, 2))(1L, 0x7D32FAA6L), 1L, 0x7D32FAA6L, 1L, 0x7D32FAA6L);
    VECTOR(int8_t, 4) l_96 = (VECTOR(int8_t, 4))((-6L), (VECTOR(int8_t, 2))((-6L), 0x5BL), 0x5BL);
    VECTOR(int8_t, 8) l_97 = (VECTOR(int8_t, 8))((-3L), (VECTOR(int8_t, 4))((-3L), (VECTOR(int8_t, 2))((-3L), 8L), 8L), 8L, (-3L), 8L);
    VECTOR(int32_t, 16) l_99 = (VECTOR(int32_t, 16))(0x6F7B2E30L, (VECTOR(int32_t, 4))(0x6F7B2E30L, (VECTOR(int32_t, 2))(0x6F7B2E30L, (-9L)), (-9L)), (-9L), 0x6F7B2E30L, (-9L), (VECTOR(int32_t, 2))(0x6F7B2E30L, (-9L)), (VECTOR(int32_t, 2))(0x6F7B2E30L, (-9L)), 0x6F7B2E30L, (-9L), 0x6F7B2E30L, (-9L));
    int i;
    for (i = 0; i < 1; i++)
        l_74[i] = 0x61F29A3AL;
    (*p_49) = ((VECTOR(int32_t, 16))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 4))(sub_sat(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(((func_52(l_56, (p_796->g_78[3] &= ((((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 8))(hadd(((VECTOR(uint32_t, 2))(p_796->g_57.sf9)).xxyyxyxx, ((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(5UL, 1UL)).xyxx)), 4294967291UL, 4294967291UL, 0x42039CE8L, ((((l_58 = &p_47) == &p_796->g_51) ^ (((safe_mul_func_int8_t_s_s((l_75[0] = (p_796->g_77 = (safe_mul_func_uint8_t_u_u((safe_rshift_func_int8_t_s_s(((safe_mod_func_uint32_t_u_u((safe_add_func_int64_t_s_s(((VECTOR(int64_t, 8))(0x4340421A16747B1DL, l_69, (p_796->g_57.se <= (l_74[0] &= ((safe_mod_func_int8_t_s_s(((((l_69 = ((p_796->g_9 & (p_796->l_comm_values[(safe_mod_func_uint32_t_u_u(p_796->tid, 25))] < 0x7BL)) && (l_69 , l_69))) , &p_796->g_51) != l_72) | GROUP_DIVERGE(0, 1)), p_48)) || p_48))), p_47, 0x24BD9F5B60AA0707L, ((VECTOR(int64_t, 2))(0L)), 0x6C8559CE79000823L)).s3, FAKE_DIVERGE(p_796->group_2_offset, get_group_id(2), 10))), l_75[0])) != 0xFD735AE52E9AD701L), 3)), l_75[0])))), p_48)) < 1UL) || FAKE_DIVERGE(p_796->group_1_offset, get_group_id(1), 10))) && 0x2784L), 0x02764208L, ((VECTOR(uint32_t, 2))(0x5C685B35L)), p_796->g_57.s2, ((VECTOR(uint32_t, 4))(0x3FE27FCEL)))).lo))))).s6 > GROUP_DIVERGE(1, 1)) , 0x75669BA90DD06798L)), &p_796->g_9, p_796) , 0x23A7L) && p_796->g_80.f0), ((VECTOR(int32_t, 2))(0x6265DC7DL)), ((VECTOR(int32_t, 2))(0x18FFE4DFL)), p_796->g_78[6], 0x7460CB50L, 0x2C85E55DL)).s7416134671603330)).sde)).xxyx, ((VECTOR(int32_t, 4))(0x3E679C8AL))))).zwyyxzwzxwwwxzzz, ((VECTOR(int32_t, 16))(0x431F4830L))))).s7;
    (*l_82) = &p_796->g_9;
    (*p_49) = ((VECTOR(int32_t, 16))(((safe_mod_func_int32_t_s_s(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(max(((VECTOR(int32_t, 4))(safe_clamp_func(VECTOR(int32_t, 4),int32_t,((VECTOR(int32_t, 16))(mul_hi(((VECTOR(int32_t, 2))(0x1577CD18L, 0x462667C2L)).yyyyxxxyxyxxxyxx, ((VECTOR(int32_t, 4))(sub_sat(((VECTOR(int32_t, 2))(l_86.sf9)).yyxx, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(1L, (((((((((((+(*p_49)) == ((((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 16))(l_87.sf1a53783ad51ac0d)).s59bb)).w && 1L) < (((VECTOR(int32_t, 8))(min(((VECTOR(int32_t, 16))(0x7E53E2A5L, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(add_sat(((VECTOR(int32_t, 4))(1L, ((VECTOR(int32_t, 2))(safe_clamp_func(VECTOR(int32_t, 2),int32_t,((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(l_90.xx)).yyxx)).xwwwwzxxwwzzwwwy)).sc5, (int32_t)(+1L), (int32_t)(p_48 < p_796->g_80.f4)))), (-7L))).wywyxywz, ((VECTOR(int32_t, 2))(p_796->g_91.zz)).xxxxyyxy))).s76)), ((VECTOR(int32_t, 8))(hadd(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(l_92.s54)), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(l_93.zy)))), ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(l_94.s77)).yxyxyyyx)).odd)))), ((VECTOR(int32_t, 8))(l_95.s3a172f11))))), 0x3977822EL, ((p_796->g_77 = ((VECTOR(int8_t, 8))(mul_hi(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(l_96.zxwx)).yyxyxzwxxxzwyxwy)).hi, ((VECTOR(int8_t, 8))(l_97.s04024337))))).s4) <= (*l_83)), 0x5E1A35A1L, 0x17960EBFL, (-1L))).lo, ((VECTOR(int32_t, 8))((-1L), ((VECTOR(int32_t, 4))(p_796->g_98.s6331)), ((VECTOR(int32_t, 2))(l_99.s96)), (-6L)))))).s0 ^ (&p_796->g_51 != (void*)0)))) , &l_83) == p_796->g_100) | p_47) > p_796->g_98.s5) != p_796->g_78[3]) , (*l_83)) || 0x1D7ECA506553B860L) , l_72) == l_58), (*l_83), (*p_49), 3L, 0x41848BC0L, 7L, 0x4CF47AE0L, ((VECTOR(int32_t, 2))(0x754ED04BL)), (**l_82), ((VECTOR(int32_t, 4))(0x1938C4D5L)), 0x4DB1C9D1L)).even)).hi))).zyywwzyzxzxwwxxy))).s9f3e, (int32_t)(-1L), (int32_t)(*p_796->g_101)))).xyzwwxzw, ((VECTOR(int32_t, 8))(0x45361ACFL))))).s55)).xxxyxyyyyxyxxxyx, ((VECTOR(int32_t, 16))(0L)), ((VECTOR(int32_t, 16))((-1L)))))).hi)).s4, (*l_83))) , 0L), 0x1CAE4519L, (**p_796->g_100), 3L, 0x691FFD6FL, (**l_82), ((VECTOR(int32_t, 4))(0L)), (-8L), ((VECTOR(int32_t, 4))(0x0A961F3FL)), 0x0E688B2FL)).sf;
    return &p_796->g_9;
}


/* ------------------------------------------ */
/* 
 * reads : p_796->g_79 p_796->g_81
 * writes: p_796->g_80
 */
union U2  func_52(int32_t * p_53, int64_t  p_54, int32_t * p_55, struct S3 * p_796)
{ /* block id: 13 */
    p_796->g_80 = p_796->g_79[2];
    return p_796->g_81;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global volatile int *g_atomic_reduction, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[65];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 65; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[65];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 65; i++)
            l_special_values[i] = 0;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    __local int64_t l_comm_values[25];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 25; i++)
            l_comm_values[i] = 1;
    struct S3 c_797;
    struct S3* p_796 = &c_797;
    struct S3 c_798 = {
        (-3L), // p_796->g_9
        {{0x77A0D7C8A36A77D7L}}, // p_796->g_42
        (-1L), // p_796->g_51
        (VECTOR(uint32_t, 16))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 0UL), 0UL), 0UL, 1UL, 0UL, (VECTOR(uint32_t, 2))(1UL, 0UL), (VECTOR(uint32_t, 2))(1UL, 0UL), 1UL, 0UL, 1UL, 0UL), // p_796->g_57
        1L, // p_796->g_77
        {0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL}, // p_796->g_78
        {{0x2F93872454177E56L,2UL,{1L},-1L,0x178D33F6L,0x3BA0E38899A8624AL},{0x2F93872454177E56L,2UL,{1L},-1L,0x178D33F6L,0x3BA0E38899A8624AL},{0x2F93872454177E56L,2UL,{1L},-1L,0x178D33F6L,0x3BA0E38899A8624AL}}, // p_796->g_79
        {-1L,6UL,{0x6FE548C15133AA3AL},5L,4294967295UL,1UL}, // p_796->g_80
        {{0x2D585B88FC9099BCL}}, // p_796->g_81
        (VECTOR(int32_t, 4))(0x116371A0L, (VECTOR(int32_t, 2))(0x116371A0L, 0x382FD53FL), 0x382FD53FL), // p_796->g_91
        (VECTOR(int32_t, 8))(0x04E31C67L, (VECTOR(int32_t, 4))(0x04E31C67L, (VECTOR(int32_t, 2))(0x04E31C67L, (-9L)), (-9L)), (-9L), 0x04E31C67L, (-9L)), // p_796->g_98
        &p_796->g_9, // p_796->g_101
        &p_796->g_101, // p_796->g_100
        0x626EL, // p_796->g_108
        (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x3D2CEF0FL), 0x3D2CEF0FL), // p_796->g_112
        {{{{0x14262232ECD07D77L},{-6L},{0x14262232ECD07D77L},{0x14262232ECD07D77L},{-6L},{0x14262232ECD07D77L}},{{0x14262232ECD07D77L},{-6L},{0x14262232ECD07D77L},{0x14262232ECD07D77L},{-6L},{0x14262232ECD07D77L}},{{0x14262232ECD07D77L},{-6L},{0x14262232ECD07D77L},{0x14262232ECD07D77L},{-6L},{0x14262232ECD07D77L}},{{0x14262232ECD07D77L},{-6L},{0x14262232ECD07D77L},{0x14262232ECD07D77L},{-6L},{0x14262232ECD07D77L}},{{0x14262232ECD07D77L},{-6L},{0x14262232ECD07D77L},{0x14262232ECD07D77L},{-6L},{0x14262232ECD07D77L}},{{0x14262232ECD07D77L},{-6L},{0x14262232ECD07D77L},{0x14262232ECD07D77L},{-6L},{0x14262232ECD07D77L}}}}, // p_796->g_139
        (VECTOR(int8_t, 16))(0x57L, (VECTOR(int8_t, 4))(0x57L, (VECTOR(int8_t, 2))(0x57L, 0x21L), 0x21L), 0x21L, 0x57L, 0x21L, (VECTOR(int8_t, 2))(0x57L, 0x21L), (VECTOR(int8_t, 2))(0x57L, 0x21L), 0x57L, 0x21L, 0x57L, 0x21L), // p_796->g_140
        {{&p_796->g_79[2].f3,&p_796->g_79[2].f3,(void*)0,&p_796->g_51,&p_796->g_79[2].f3,&p_796->g_51,(void*)0},{&p_796->g_79[2].f3,&p_796->g_79[2].f3,(void*)0,&p_796->g_51,&p_796->g_79[2].f3,&p_796->g_51,(void*)0},{&p_796->g_79[2].f3,&p_796->g_79[2].f3,(void*)0,&p_796->g_51,&p_796->g_79[2].f3,&p_796->g_51,(void*)0}}, // p_796->g_166
        3UL, // p_796->g_189
        (VECTOR(uint64_t, 2))(0x765B23B53869009AL, 0x25EF7269C6AF2977L), // p_796->g_190
        {7L,0UL,{0x7A754648E5995FA5L},0x765FF97EL,0UL,1UL}, // p_796->g_227
        0x81L, // p_796->g_238
        0x9ADC42FEL, // p_796->g_245
        0UL, // p_796->g_247
        &p_796->g_247, // p_796->g_246
        0xB6L, // p_796->g_248
        {5L,0UL,{-1L},-1L,0xB0CFA7A6L,0xF4CE8A4B93AC515AL}, // p_796->g_271
        {0x36BBFA046A8C86F4L,0x10609C211777CCA3L,{-1L},0x54F41447L,3UL,5UL}, // p_796->g_393
        &p_796->g_393, // p_796->g_392
        {0x4C7940E899C9ACE0L,0x7C4C76B76D250B95L,{-1L},0x4AB8D0ABL,7UL,0x01A2F0B874C0757CL}, // p_796->g_410
        0x4785L, // p_796->g_422
        {{{&p_796->g_422,&p_796->g_422,&p_796->g_422,&p_796->g_422,&p_796->g_422,&p_796->g_422,&p_796->g_422}},{{&p_796->g_422,&p_796->g_422,&p_796->g_422,&p_796->g_422,&p_796->g_422,&p_796->g_422,&p_796->g_422}},{{&p_796->g_422,&p_796->g_422,&p_796->g_422,&p_796->g_422,&p_796->g_422,&p_796->g_422,&p_796->g_422}},{{&p_796->g_422,&p_796->g_422,&p_796->g_422,&p_796->g_422,&p_796->g_422,&p_796->g_422,&p_796->g_422}},{{&p_796->g_422,&p_796->g_422,&p_796->g_422,&p_796->g_422,&p_796->g_422,&p_796->g_422,&p_796->g_422}},{{&p_796->g_422,&p_796->g_422,&p_796->g_422,&p_796->g_422,&p_796->g_422,&p_796->g_422,&p_796->g_422}},{{&p_796->g_422,&p_796->g_422,&p_796->g_422,&p_796->g_422,&p_796->g_422,&p_796->g_422,&p_796->g_422}},{{&p_796->g_422,&p_796->g_422,&p_796->g_422,&p_796->g_422,&p_796->g_422,&p_796->g_422,&p_796->g_422}}}, // p_796->g_421
        {0x11ADC124B3B98263L}, // p_796->g_518
        &p_796->g_77, // p_796->g_520
        (void*)0, // p_796->g_523
        (void*)0, // p_796->g_524
        (void*)0, // p_796->g_525
        {{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}}, // p_796->g_545
        {{0x594F143B40E2EE14L}}, // p_796->g_547
        {&p_796->g_9}, // p_796->g_690
        (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x3A032D70L), 0x3A032D70L), 0x3A032D70L, 1L, 0x3A032D70L, (VECTOR(int32_t, 2))(1L, 0x3A032D70L), (VECTOR(int32_t, 2))(1L, 0x3A032D70L), 1L, 0x3A032D70L, 1L, 0x3A032D70L), // p_796->g_708
        (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x1F35A81EL), 0x1F35A81EL), 0x1F35A81EL, 0L, 0x1F35A81EL, (VECTOR(int32_t, 2))(0L, 0x1F35A81EL), (VECTOR(int32_t, 2))(0L, 0x1F35A81EL), 0L, 0x1F35A81EL, 0L, 0x1F35A81EL), // p_796->g_709
        &p_796->g_245, // p_796->g_738
        &p_796->g_738, // p_796->g_737
        &p_796->g_738, // p_796->g_740
        &p_796->g_79[2].f3, // p_796->g_746
        (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x3515L), 0x3515L), // p_796->g_772
        4UL, // p_796->g_784
        {{{{0x60A8025D10A95209L,0xCCF3CE62FB643331L,{0L},1L,0x747EB853L,0x7E4B97E84897E79DL}}},{{{0x60A8025D10A95209L,0xCCF3CE62FB643331L,{0L},1L,0x747EB853L,0x7E4B97E84897E79DL}}},{{{0x60A8025D10A95209L,0xCCF3CE62FB643331L,{0L},1L,0x747EB853L,0x7E4B97E84897E79DL}}},{{{0x60A8025D10A95209L,0xCCF3CE62FB643331L,{0L},1L,0x747EB853L,0x7E4B97E84897E79DL}}},{{{0x60A8025D10A95209L,0xCCF3CE62FB643331L,{0L},1L,0x747EB853L,0x7E4B97E84897E79DL}}},{{{0x60A8025D10A95209L,0xCCF3CE62FB643331L,{0L},1L,0x747EB853L,0x7E4B97E84897E79DL}}}}, // p_796->g_794
        0, // p_796->v_collective
        sequence_input[get_global_id(0)], // p_796->global_0_offset
        sequence_input[get_global_id(1)], // p_796->global_1_offset
        sequence_input[get_global_id(2)], // p_796->global_2_offset
        sequence_input[get_local_id(0)], // p_796->local_0_offset
        sequence_input[get_local_id(1)], // p_796->local_1_offset
        sequence_input[get_local_id(2)], // p_796->local_2_offset
        sequence_input[get_group_id(0)], // p_796->group_0_offset
        sequence_input[get_group_id(1)], // p_796->group_1_offset
        sequence_input[get_group_id(2)], // p_796->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 25)), permutations[0][get_linear_local_id()])), // p_796->tid
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_797 = c_798;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_796);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_796->g_9, "p_796->g_9", print_hash_value);
    transparent_crc(p_796->g_42.f0.f0, "p_796->g_42.f0.f0", print_hash_value);
    transparent_crc(p_796->g_51, "p_796->g_51", print_hash_value);
    transparent_crc(p_796->g_57.s0, "p_796->g_57.s0", print_hash_value);
    transparent_crc(p_796->g_57.s1, "p_796->g_57.s1", print_hash_value);
    transparent_crc(p_796->g_57.s2, "p_796->g_57.s2", print_hash_value);
    transparent_crc(p_796->g_57.s3, "p_796->g_57.s3", print_hash_value);
    transparent_crc(p_796->g_57.s4, "p_796->g_57.s4", print_hash_value);
    transparent_crc(p_796->g_57.s5, "p_796->g_57.s5", print_hash_value);
    transparent_crc(p_796->g_57.s6, "p_796->g_57.s6", print_hash_value);
    transparent_crc(p_796->g_57.s7, "p_796->g_57.s7", print_hash_value);
    transparent_crc(p_796->g_57.s8, "p_796->g_57.s8", print_hash_value);
    transparent_crc(p_796->g_57.s9, "p_796->g_57.s9", print_hash_value);
    transparent_crc(p_796->g_57.sa, "p_796->g_57.sa", print_hash_value);
    transparent_crc(p_796->g_57.sb, "p_796->g_57.sb", print_hash_value);
    transparent_crc(p_796->g_57.sc, "p_796->g_57.sc", print_hash_value);
    transparent_crc(p_796->g_57.sd, "p_796->g_57.sd", print_hash_value);
    transparent_crc(p_796->g_57.se, "p_796->g_57.se", print_hash_value);
    transparent_crc(p_796->g_57.sf, "p_796->g_57.sf", print_hash_value);
    transparent_crc(p_796->g_77, "p_796->g_77", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_796->g_78[i], "p_796->g_78[i]", print_hash_value);

    }
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_796->g_79[i].f0, "p_796->g_79[i].f0", print_hash_value);
        transparent_crc(p_796->g_79[i].f1, "p_796->g_79[i].f1", print_hash_value);
        transparent_crc(p_796->g_79[i].f2.f0, "p_796->g_79[i].f2.f0", print_hash_value);
        transparent_crc(p_796->g_79[i].f3, "p_796->g_79[i].f3", print_hash_value);
        transparent_crc(p_796->g_79[i].f4, "p_796->g_79[i].f4", print_hash_value);
        transparent_crc(p_796->g_79[i].f5, "p_796->g_79[i].f5", print_hash_value);

    }
    transparent_crc(p_796->g_80.f0, "p_796->g_80.f0", print_hash_value);
    transparent_crc(p_796->g_80.f1, "p_796->g_80.f1", print_hash_value);
    transparent_crc(p_796->g_80.f2.f0, "p_796->g_80.f2.f0", print_hash_value);
    transparent_crc(p_796->g_80.f3, "p_796->g_80.f3", print_hash_value);
    transparent_crc(p_796->g_80.f4, "p_796->g_80.f4", print_hash_value);
    transparent_crc(p_796->g_80.f5, "p_796->g_80.f5", print_hash_value);
    transparent_crc(p_796->g_81.f0.f0, "p_796->g_81.f0.f0", print_hash_value);
    transparent_crc(p_796->g_91.x, "p_796->g_91.x", print_hash_value);
    transparent_crc(p_796->g_91.y, "p_796->g_91.y", print_hash_value);
    transparent_crc(p_796->g_91.z, "p_796->g_91.z", print_hash_value);
    transparent_crc(p_796->g_91.w, "p_796->g_91.w", print_hash_value);
    transparent_crc(p_796->g_98.s0, "p_796->g_98.s0", print_hash_value);
    transparent_crc(p_796->g_98.s1, "p_796->g_98.s1", print_hash_value);
    transparent_crc(p_796->g_98.s2, "p_796->g_98.s2", print_hash_value);
    transparent_crc(p_796->g_98.s3, "p_796->g_98.s3", print_hash_value);
    transparent_crc(p_796->g_98.s4, "p_796->g_98.s4", print_hash_value);
    transparent_crc(p_796->g_98.s5, "p_796->g_98.s5", print_hash_value);
    transparent_crc(p_796->g_98.s6, "p_796->g_98.s6", print_hash_value);
    transparent_crc(p_796->g_98.s7, "p_796->g_98.s7", print_hash_value);
    transparent_crc(p_796->g_108, "p_796->g_108", print_hash_value);
    transparent_crc(p_796->g_112.x, "p_796->g_112.x", print_hash_value);
    transparent_crc(p_796->g_112.y, "p_796->g_112.y", print_hash_value);
    transparent_crc(p_796->g_112.z, "p_796->g_112.z", print_hash_value);
    transparent_crc(p_796->g_112.w, "p_796->g_112.w", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 6; j++)
        {
            for (k = 0; k < 6; k++)
            {
                transparent_crc(p_796->g_139[i][j][k].f0, "p_796->g_139[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_796->g_140.s0, "p_796->g_140.s0", print_hash_value);
    transparent_crc(p_796->g_140.s1, "p_796->g_140.s1", print_hash_value);
    transparent_crc(p_796->g_140.s2, "p_796->g_140.s2", print_hash_value);
    transparent_crc(p_796->g_140.s3, "p_796->g_140.s3", print_hash_value);
    transparent_crc(p_796->g_140.s4, "p_796->g_140.s4", print_hash_value);
    transparent_crc(p_796->g_140.s5, "p_796->g_140.s5", print_hash_value);
    transparent_crc(p_796->g_140.s6, "p_796->g_140.s6", print_hash_value);
    transparent_crc(p_796->g_140.s7, "p_796->g_140.s7", print_hash_value);
    transparent_crc(p_796->g_140.s8, "p_796->g_140.s8", print_hash_value);
    transparent_crc(p_796->g_140.s9, "p_796->g_140.s9", print_hash_value);
    transparent_crc(p_796->g_140.sa, "p_796->g_140.sa", print_hash_value);
    transparent_crc(p_796->g_140.sb, "p_796->g_140.sb", print_hash_value);
    transparent_crc(p_796->g_140.sc, "p_796->g_140.sc", print_hash_value);
    transparent_crc(p_796->g_140.sd, "p_796->g_140.sd", print_hash_value);
    transparent_crc(p_796->g_140.se, "p_796->g_140.se", print_hash_value);
    transparent_crc(p_796->g_140.sf, "p_796->g_140.sf", print_hash_value);
    transparent_crc(p_796->g_189, "p_796->g_189", print_hash_value);
    transparent_crc(p_796->g_190.x, "p_796->g_190.x", print_hash_value);
    transparent_crc(p_796->g_190.y, "p_796->g_190.y", print_hash_value);
    transparent_crc(p_796->g_227.f0, "p_796->g_227.f0", print_hash_value);
    transparent_crc(p_796->g_227.f1, "p_796->g_227.f1", print_hash_value);
    transparent_crc(p_796->g_227.f2.f0, "p_796->g_227.f2.f0", print_hash_value);
    transparent_crc(p_796->g_227.f3, "p_796->g_227.f3", print_hash_value);
    transparent_crc(p_796->g_227.f4, "p_796->g_227.f4", print_hash_value);
    transparent_crc(p_796->g_227.f5, "p_796->g_227.f5", print_hash_value);
    transparent_crc(p_796->g_238, "p_796->g_238", print_hash_value);
    transparent_crc(p_796->g_245, "p_796->g_245", print_hash_value);
    transparent_crc(p_796->g_247, "p_796->g_247", print_hash_value);
    transparent_crc(p_796->g_248, "p_796->g_248", print_hash_value);
    transparent_crc(p_796->g_271.f0, "p_796->g_271.f0", print_hash_value);
    transparent_crc(p_796->g_271.f1, "p_796->g_271.f1", print_hash_value);
    transparent_crc(p_796->g_271.f2.f0, "p_796->g_271.f2.f0", print_hash_value);
    transparent_crc(p_796->g_271.f3, "p_796->g_271.f3", print_hash_value);
    transparent_crc(p_796->g_271.f4, "p_796->g_271.f4", print_hash_value);
    transparent_crc(p_796->g_271.f5, "p_796->g_271.f5", print_hash_value);
    transparent_crc(p_796->g_393.f0, "p_796->g_393.f0", print_hash_value);
    transparent_crc(p_796->g_393.f1, "p_796->g_393.f1", print_hash_value);
    transparent_crc(p_796->g_393.f2.f0, "p_796->g_393.f2.f0", print_hash_value);
    transparent_crc(p_796->g_393.f3, "p_796->g_393.f3", print_hash_value);
    transparent_crc(p_796->g_393.f4, "p_796->g_393.f4", print_hash_value);
    transparent_crc(p_796->g_393.f5, "p_796->g_393.f5", print_hash_value);
    transparent_crc(p_796->g_410.f0, "p_796->g_410.f0", print_hash_value);
    transparent_crc(p_796->g_410.f1, "p_796->g_410.f1", print_hash_value);
    transparent_crc(p_796->g_410.f2.f0, "p_796->g_410.f2.f0", print_hash_value);
    transparent_crc(p_796->g_410.f3, "p_796->g_410.f3", print_hash_value);
    transparent_crc(p_796->g_410.f4, "p_796->g_410.f4", print_hash_value);
    transparent_crc(p_796->g_410.f5, "p_796->g_410.f5", print_hash_value);
    transparent_crc(p_796->g_422, "p_796->g_422", print_hash_value);
    transparent_crc(p_796->g_518.f0, "p_796->g_518.f0", print_hash_value);
    transparent_crc(p_796->g_547.f0.f0, "p_796->g_547.f0.f0", print_hash_value);
    transparent_crc(p_796->g_708.s0, "p_796->g_708.s0", print_hash_value);
    transparent_crc(p_796->g_708.s1, "p_796->g_708.s1", print_hash_value);
    transparent_crc(p_796->g_708.s2, "p_796->g_708.s2", print_hash_value);
    transparent_crc(p_796->g_708.s3, "p_796->g_708.s3", print_hash_value);
    transparent_crc(p_796->g_708.s4, "p_796->g_708.s4", print_hash_value);
    transparent_crc(p_796->g_708.s5, "p_796->g_708.s5", print_hash_value);
    transparent_crc(p_796->g_708.s6, "p_796->g_708.s6", print_hash_value);
    transparent_crc(p_796->g_708.s7, "p_796->g_708.s7", print_hash_value);
    transparent_crc(p_796->g_708.s8, "p_796->g_708.s8", print_hash_value);
    transparent_crc(p_796->g_708.s9, "p_796->g_708.s9", print_hash_value);
    transparent_crc(p_796->g_708.sa, "p_796->g_708.sa", print_hash_value);
    transparent_crc(p_796->g_708.sb, "p_796->g_708.sb", print_hash_value);
    transparent_crc(p_796->g_708.sc, "p_796->g_708.sc", print_hash_value);
    transparent_crc(p_796->g_708.sd, "p_796->g_708.sd", print_hash_value);
    transparent_crc(p_796->g_708.se, "p_796->g_708.se", print_hash_value);
    transparent_crc(p_796->g_708.sf, "p_796->g_708.sf", print_hash_value);
    transparent_crc(p_796->g_709.s0, "p_796->g_709.s0", print_hash_value);
    transparent_crc(p_796->g_709.s1, "p_796->g_709.s1", print_hash_value);
    transparent_crc(p_796->g_709.s2, "p_796->g_709.s2", print_hash_value);
    transparent_crc(p_796->g_709.s3, "p_796->g_709.s3", print_hash_value);
    transparent_crc(p_796->g_709.s4, "p_796->g_709.s4", print_hash_value);
    transparent_crc(p_796->g_709.s5, "p_796->g_709.s5", print_hash_value);
    transparent_crc(p_796->g_709.s6, "p_796->g_709.s6", print_hash_value);
    transparent_crc(p_796->g_709.s7, "p_796->g_709.s7", print_hash_value);
    transparent_crc(p_796->g_709.s8, "p_796->g_709.s8", print_hash_value);
    transparent_crc(p_796->g_709.s9, "p_796->g_709.s9", print_hash_value);
    transparent_crc(p_796->g_709.sa, "p_796->g_709.sa", print_hash_value);
    transparent_crc(p_796->g_709.sb, "p_796->g_709.sb", print_hash_value);
    transparent_crc(p_796->g_709.sc, "p_796->g_709.sc", print_hash_value);
    transparent_crc(p_796->g_709.sd, "p_796->g_709.sd", print_hash_value);
    transparent_crc(p_796->g_709.se, "p_796->g_709.se", print_hash_value);
    transparent_crc(p_796->g_709.sf, "p_796->g_709.sf", print_hash_value);
    transparent_crc(p_796->g_772.x, "p_796->g_772.x", print_hash_value);
    transparent_crc(p_796->g_772.y, "p_796->g_772.y", print_hash_value);
    transparent_crc(p_796->g_772.z, "p_796->g_772.z", print_hash_value);
    transparent_crc(p_796->g_772.w, "p_796->g_772.w", print_hash_value);
    transparent_crc(p_796->g_784, "p_796->g_784", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 1; k++)
            {
                transparent_crc(p_796->g_794[i][j][k].f0, "p_796->g_794[i][j][k].f0", print_hash_value);
                transparent_crc(p_796->g_794[i][j][k].f1, "p_796->g_794[i][j][k].f1", print_hash_value);
                transparent_crc(p_796->g_794[i][j][k].f2.f0, "p_796->g_794[i][j][k].f2.f0", print_hash_value);
                transparent_crc(p_796->g_794[i][j][k].f3, "p_796->g_794[i][j][k].f3", print_hash_value);
                transparent_crc(p_796->g_794[i][j][k].f4, "p_796->g_794[i][j][k].f4", print_hash_value);
                transparent_crc(p_796->g_794[i][j][k].f5, "p_796->g_794[i][j][k].f5", print_hash_value);

            }
        }
    }
    transparent_crc(p_796->v_collective, "p_796->v_collective", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 65; i++)
            transparent_crc(p_796->g_special_values[i + 65 * get_linear_group_id()], "p_796->g_special_values[i + 65 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 65; i++)
            transparent_crc(p_796->l_special_values[i], "p_796->l_special_values[i]", print_hash_value);
    transparent_crc(p_796->l_comm_values[get_linear_local_id()], "p_796->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_796->g_comm_values[get_linear_group_id() * 25 + get_linear_local_id()], "p_796->g_comm_values[get_linear_group_id() * 25 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
