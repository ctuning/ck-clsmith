// --atomics 26 ---atomic_reductions ---fake_divergence ---inter_thread_comm -g 48,89,1 -l 3,1,1
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

__constant uint32_t permutations[10][3] = {
{1,0,2}, // permutation 0
{1,2,0}, // permutation 1
{1,2,0}, // permutation 2
{1,2,0}, // permutation 3
{2,0,1}, // permutation 4
{2,0,1}, // permutation 5
{1,0,2}, // permutation 6
{2,0,1}, // permutation 7
{2,0,1}, // permutation 8
{2,0,1} // permutation 9
};

// Seed: 103

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    uint8_t g_12;
    uint8_t g_16;
    uint64_t g_27;
    int16_t g_48;
    int32_t g_51;
    VECTOR(int32_t, 16) g_100;
    uint64_t g_108;
    int32_t * volatile g_135;
    int32_t *g_147;
    int8_t g_155;
    VECTOR(int32_t, 2) g_161;
    volatile VECTOR(int32_t, 16) g_164;
    int16_t *g_240;
    int16_t **g_239;
    volatile int16_t **g_251;
    uint64_t g_264;
    uint32_t g_266;
    VECTOR(uint64_t, 16) g_271;
    int32_t * volatile g_295;
    uint32_t g_299[3][3][4];
    VECTOR(uint16_t, 4) g_393;
    VECTOR(uint16_t, 2) g_394;
    VECTOR(uint16_t, 4) g_396;
    VECTOR(uint16_t, 4) g_397;
    uint8_t **g_475;
    uint16_t g_520;
    volatile int8_t g_530[3][5];
    volatile int8_t *g_529;
    volatile VECTOR(uint64_t, 4) g_535;
    volatile VECTOR(uint8_t, 4) g_558;
    volatile VECTOR(uint8_t, 2) g_559;
    volatile uint32_t g_565;
    int64_t * volatile g_584;
    VECTOR(int16_t, 4) g_613;
    VECTOR(int16_t, 2) g_621;
    VECTOR(int32_t, 4) g_639;
    int32_t ** volatile g_650;
    VECTOR(uint64_t, 2) g_699;
    volatile VECTOR(uint32_t, 2) g_700;
    volatile VECTOR(uint32_t, 2) g_702;
    volatile VECTOR(uint32_t, 16) g_704;
    VECTOR(uint8_t, 2) g_726;
    VECTOR(uint64_t, 16) g_736;
    volatile VECTOR(int8_t, 2) g_749;
    volatile VECTOR(int8_t, 4) g_750;
    VECTOR(int8_t, 4) g_754;
    int32_t * volatile g_770[4][10][5];
    uint32_t * volatile * volatile g_772[2][1][2];
    VECTOR(uint32_t, 4) g_776;
    int64_t g_782;
    uint32_t g_783;
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
uint32_t  func_1(struct S0 * p_784);
int8_t  func_3(int16_t  p_4, struct S0 * p_784);
uint32_t  func_5(int16_t  p_6, struct S0 * p_784);
int32_t * func_21(int32_t  p_22, struct S0 * p_784);
int32_t * func_31(int64_t  p_32, uint64_t * p_33, uint64_t  p_34, struct S0 * p_784);
int16_t  func_42(int32_t * p_43, uint64_t  p_44, int16_t * p_45, struct S0 * p_784);
uint32_t  func_102(int32_t * p_103, struct S0 * p_784);
int16_t  func_125(uint64_t  p_126, uint64_t  p_127, int16_t * p_128, struct S0 * p_784);
int16_t  func_131(int64_t  p_132, int32_t  p_133, struct S0 * p_784);
uint32_t  func_139(int32_t  p_140, uint64_t  p_141, uint32_t  p_142, struct S0 * p_784);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_784->g_comm_values p_784->g_12 p_784->g_16 p_784->l_comm_values p_784->g_529 p_784->g_530 p_784->g_393 p_784->g_240 p_784->g_48 p_784->g_295 p_784->g_51 p_784->g_147 p_784->g_108 p_784->g_27 p_784->g_613 p_784->g_621 p_784->g_639 p_784->g_266 p_784->g_650 p_784->g_161 p_784->g_565 p_784->g_100 p_784->g_726 p_784->g_396 p_784->g_749 p_784->g_750 p_784->g_754 p_784->g_239 p_784->g_772 p_784->g_776 p_784->g_783
 * writes: p_784->g_12 p_784->g_16 p_784->g_27 p_784->g_135 p_784->g_51 p_784->g_147 p_784->g_108 p_784->g_155 p_784->g_comm_values p_784->g_161 p_784->g_699 p_784->g_396 p_784->g_100 p_784->g_393 p_784->g_772 p_784->g_782 p_784->g_783
 */
uint32_t  func_1(struct S0 * p_784)
{ /* block id: 4 */
    int8_t l_2 = (-7L);
    uint8_t *l_11 = &p_784->g_12;
    uint8_t *l_15[6][6][7] = {{{(void*)0,&p_784->g_16,(void*)0,(void*)0,&p_784->g_16,(void*)0,&p_784->g_16},{(void*)0,&p_784->g_16,(void*)0,(void*)0,&p_784->g_16,(void*)0,&p_784->g_16},{(void*)0,&p_784->g_16,(void*)0,(void*)0,&p_784->g_16,(void*)0,&p_784->g_16},{(void*)0,&p_784->g_16,(void*)0,(void*)0,&p_784->g_16,(void*)0,&p_784->g_16},{(void*)0,&p_784->g_16,(void*)0,(void*)0,&p_784->g_16,(void*)0,&p_784->g_16},{(void*)0,&p_784->g_16,(void*)0,(void*)0,&p_784->g_16,(void*)0,&p_784->g_16}},{{(void*)0,&p_784->g_16,(void*)0,(void*)0,&p_784->g_16,(void*)0,&p_784->g_16},{(void*)0,&p_784->g_16,(void*)0,(void*)0,&p_784->g_16,(void*)0,&p_784->g_16},{(void*)0,&p_784->g_16,(void*)0,(void*)0,&p_784->g_16,(void*)0,&p_784->g_16},{(void*)0,&p_784->g_16,(void*)0,(void*)0,&p_784->g_16,(void*)0,&p_784->g_16},{(void*)0,&p_784->g_16,(void*)0,(void*)0,&p_784->g_16,(void*)0,&p_784->g_16},{(void*)0,&p_784->g_16,(void*)0,(void*)0,&p_784->g_16,(void*)0,&p_784->g_16}},{{(void*)0,&p_784->g_16,(void*)0,(void*)0,&p_784->g_16,(void*)0,&p_784->g_16},{(void*)0,&p_784->g_16,(void*)0,(void*)0,&p_784->g_16,(void*)0,&p_784->g_16},{(void*)0,&p_784->g_16,(void*)0,(void*)0,&p_784->g_16,(void*)0,&p_784->g_16},{(void*)0,&p_784->g_16,(void*)0,(void*)0,&p_784->g_16,(void*)0,&p_784->g_16},{(void*)0,&p_784->g_16,(void*)0,(void*)0,&p_784->g_16,(void*)0,&p_784->g_16},{(void*)0,&p_784->g_16,(void*)0,(void*)0,&p_784->g_16,(void*)0,&p_784->g_16}},{{(void*)0,&p_784->g_16,(void*)0,(void*)0,&p_784->g_16,(void*)0,&p_784->g_16},{(void*)0,&p_784->g_16,(void*)0,(void*)0,&p_784->g_16,(void*)0,&p_784->g_16},{(void*)0,&p_784->g_16,(void*)0,(void*)0,&p_784->g_16,(void*)0,&p_784->g_16},{(void*)0,&p_784->g_16,(void*)0,(void*)0,&p_784->g_16,(void*)0,&p_784->g_16},{(void*)0,&p_784->g_16,(void*)0,(void*)0,&p_784->g_16,(void*)0,&p_784->g_16},{(void*)0,&p_784->g_16,(void*)0,(void*)0,&p_784->g_16,(void*)0,&p_784->g_16}},{{(void*)0,&p_784->g_16,(void*)0,(void*)0,&p_784->g_16,(void*)0,&p_784->g_16},{(void*)0,&p_784->g_16,(void*)0,(void*)0,&p_784->g_16,(void*)0,&p_784->g_16},{(void*)0,&p_784->g_16,(void*)0,(void*)0,&p_784->g_16,(void*)0,&p_784->g_16},{(void*)0,&p_784->g_16,(void*)0,(void*)0,&p_784->g_16,(void*)0,&p_784->g_16},{(void*)0,&p_784->g_16,(void*)0,(void*)0,&p_784->g_16,(void*)0,&p_784->g_16},{(void*)0,&p_784->g_16,(void*)0,(void*)0,&p_784->g_16,(void*)0,&p_784->g_16}},{{(void*)0,&p_784->g_16,(void*)0,(void*)0,&p_784->g_16,(void*)0,&p_784->g_16},{(void*)0,&p_784->g_16,(void*)0,(void*)0,&p_784->g_16,(void*)0,&p_784->g_16},{(void*)0,&p_784->g_16,(void*)0,(void*)0,&p_784->g_16,(void*)0,&p_784->g_16},{(void*)0,&p_784->g_16,(void*)0,(void*)0,&p_784->g_16,(void*)0,&p_784->g_16},{(void*)0,&p_784->g_16,(void*)0,(void*)0,&p_784->g_16,(void*)0,&p_784->g_16},{(void*)0,&p_784->g_16,(void*)0,(void*)0,&p_784->g_16,(void*)0,&p_784->g_16}}};
    VECTOR(int16_t, 16) l_18 = (VECTOR(int16_t, 16))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0L), 0L), 0L, 1L, 0L, (VECTOR(int16_t, 2))(1L, 0L), (VECTOR(int16_t, 2))(1L, 0L), 1L, 0L, 1L, 0L);
    int16_t *l_19 = (void*)0;
    uint8_t l_20 = 1UL;
    int32_t l_777[6][9] = {{3L,(-1L),0x4C51B86CL,(-1L),3L,3L,(-1L),0x4C51B86CL,(-1L)},{3L,(-1L),0x4C51B86CL,(-1L),3L,3L,(-1L),0x4C51B86CL,(-1L)},{3L,(-1L),0x4C51B86CL,(-1L),3L,3L,(-1L),0x4C51B86CL,(-1L)},{3L,(-1L),0x4C51B86CL,(-1L),3L,3L,(-1L),0x4C51B86CL,(-1L)},{3L,(-1L),0x4C51B86CL,(-1L),3L,3L,(-1L),0x4C51B86CL,(-1L)},{3L,(-1L),0x4C51B86CL,(-1L),3L,3L,(-1L),0x4C51B86CL,(-1L)}};
    int32_t *l_778 = (void*)0;
    int32_t *l_779 = (void*)0;
    VECTOR(int32_t, 8) l_780 = (VECTOR(int32_t, 8))(7L, (VECTOR(int32_t, 4))(7L, (VECTOR(int32_t, 2))(7L, 0x4E492FB7L), 0x4E492FB7L), 0x4E492FB7L, 7L, 0x4E492FB7L);
    int32_t *l_781[3];
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_781[i] = (void*)0;
    p_784->g_783 &= (p_784->g_782 = (l_780.s2 = ((((l_2 , l_2) , (func_3((func_5((0x78L <= (safe_rshift_func_uint8_t_u_u((p_784->g_16 |= (safe_mul_func_int8_t_s_s(p_784->g_comm_values[p_784->tid], (++(*l_11))))), 6))), p_784) , (l_20 ^= ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 4))(l_18.s7582)))).lo)).lo)), p_784) == (1UL | ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(p_784->g_776.wx)), ((VECTOR(uint32_t, 2))(0x9CE824E2L, 1UL)), l_777[3][8], 4294967295UL, 4294967286UL, 1UL)).s5))) , 0x16BEL) != p_784->l_comm_values[(safe_mod_func_uint32_t_u_u(p_784->tid, 3))])));
    return p_784->g_749.x;
}


/* ------------------------------------------ */
/* 
 * reads : p_784->g_16 p_784->l_comm_values p_784->g_12 p_784->g_529 p_784->g_530 p_784->g_393 p_784->g_240 p_784->g_48 p_784->g_295 p_784->g_51 p_784->g_147 p_784->g_108 p_784->g_27 p_784->g_613 p_784->g_621 p_784->g_639 p_784->g_266 p_784->g_650 p_784->g_161 p_784->g_565 p_784->g_100 p_784->g_726 p_784->g_396 p_784->g_749 p_784->g_750 p_784->g_754 p_784->g_comm_values p_784->g_239 p_784->g_772
 * writes: p_784->g_27 p_784->g_135 p_784->g_51 p_784->g_147 p_784->g_108 p_784->g_155 p_784->g_comm_values p_784->g_161 p_784->g_699 p_784->g_396 p_784->g_100 p_784->g_393 p_784->g_772
 */
int8_t  func_3(int16_t  p_4, struct S0 * p_784)
{ /* block id: 10 */
    uint16_t l_25 = 0x8464L;
    uint64_t *l_26 = &p_784->g_27;
    int32_t *l_28 = (void*)0;
    int32_t **l_774 = &p_784->g_147;
    int32_t **l_775 = &l_28;
    (*l_775) = ((*l_774) = func_21((((safe_add_func_uint8_t_u_u(0UL, (func_5(l_25, p_784) < (((*l_26) = (((p_784->g_16 , func_5(p_4, p_784)) > (!(!func_5(p_784->l_comm_values[(safe_mod_func_uint32_t_u_u(p_784->tid, 3))], p_784)))) <= ((VECTOR(int64_t, 2))(mul_hi(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 16))(func_5(p_4, p_784), ((VECTOR(int64_t, 2))(1L)), ((VECTOR(int64_t, 2))(1L)), ((VECTOR(int64_t, 2))(2L)), 1L, 1L, 0x1425A33ED863780DL, (-7L), ((VECTOR(int64_t, 2))((-4L))), ((VECTOR(int64_t, 2))(0x25A46E4944C1A1FDL)), (-6L))).s02)), ((VECTOR(int64_t, 2))((-1L)))))).odd)) > p_784->g_12)))) , l_28) == l_28), p_784));
    return p_4;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint32_t  func_5(int16_t  p_6, struct S0 * p_784)
{ /* block id: 7 */
    uint64_t l_17 = 0x8ABB75DA2CA335C2L;
    return l_17;
}


/* ------------------------------------------ */
/* 
 * reads : p_784->l_comm_values p_784->g_529 p_784->g_530 p_784->g_393 p_784->g_240 p_784->g_48 p_784->g_295 p_784->g_51 p_784->g_147 p_784->g_108 p_784->g_27 p_784->g_613 p_784->g_621 p_784->g_639 p_784->g_266 p_784->g_650 p_784->g_12 p_784->g_161 p_784->g_565 p_784->g_100 p_784->g_726 p_784->g_396 p_784->g_749 p_784->g_750 p_784->g_754 p_784->g_comm_values p_784->g_239 p_784->g_772
 * writes: p_784->g_135 p_784->g_51 p_784->g_147 p_784->g_108 p_784->g_27 p_784->g_155 p_784->g_comm_values p_784->g_161 p_784->g_699 p_784->g_396 p_784->g_100 p_784->g_393 p_784->g_772
 */
int32_t * func_21(int32_t  p_22, struct S0 * p_784)
{ /* block id: 12 */
    int32_t *l_604 = (void*)0;
    int32_t l_648 = 0x32F5F8EBL;
    uint8_t *l_666 = &p_784->g_16;
    uint8_t **l_665[9] = {&l_666,&l_666,&l_666,&l_666,&l_666,&l_666,&l_666,&l_666,&l_666};
    int64_t *l_675 = (void*)0;
    int8_t l_687 = 5L;
    uint32_t l_695 = 0xB7F5AA10L;
    VECTOR(uint64_t, 2) l_696 = (VECTOR(uint64_t, 2))(1UL, 18446744073709551607UL);
    VECTOR(uint64_t, 16) l_698 = (VECTOR(uint64_t, 16))(7UL, (VECTOR(uint64_t, 4))(7UL, (VECTOR(uint64_t, 2))(7UL, 0x81468D2DB5C2CD27L), 0x81468D2DB5C2CD27L), 0x81468D2DB5C2CD27L, 7UL, 0x81468D2DB5C2CD27L, (VECTOR(uint64_t, 2))(7UL, 0x81468D2DB5C2CD27L), (VECTOR(uint64_t, 2))(7UL, 0x81468D2DB5C2CD27L), 7UL, 0x81468D2DB5C2CD27L, 7UL, 0x81468D2DB5C2CD27L);
    uint64_t *l_740[3][7][6] = {{{&p_784->g_108,&p_784->g_108,(void*)0,(void*)0,(void*)0,(void*)0},{&p_784->g_108,&p_784->g_108,(void*)0,(void*)0,(void*)0,(void*)0},{&p_784->g_108,&p_784->g_108,(void*)0,(void*)0,(void*)0,(void*)0},{&p_784->g_108,&p_784->g_108,(void*)0,(void*)0,(void*)0,(void*)0},{&p_784->g_108,&p_784->g_108,(void*)0,(void*)0,(void*)0,(void*)0},{&p_784->g_108,&p_784->g_108,(void*)0,(void*)0,(void*)0,(void*)0},{&p_784->g_108,&p_784->g_108,(void*)0,(void*)0,(void*)0,(void*)0}},{{&p_784->g_108,&p_784->g_108,(void*)0,(void*)0,(void*)0,(void*)0},{&p_784->g_108,&p_784->g_108,(void*)0,(void*)0,(void*)0,(void*)0},{&p_784->g_108,&p_784->g_108,(void*)0,(void*)0,(void*)0,(void*)0},{&p_784->g_108,&p_784->g_108,(void*)0,(void*)0,(void*)0,(void*)0},{&p_784->g_108,&p_784->g_108,(void*)0,(void*)0,(void*)0,(void*)0},{&p_784->g_108,&p_784->g_108,(void*)0,(void*)0,(void*)0,(void*)0},{&p_784->g_108,&p_784->g_108,(void*)0,(void*)0,(void*)0,(void*)0}},{{&p_784->g_108,&p_784->g_108,(void*)0,(void*)0,(void*)0,(void*)0},{&p_784->g_108,&p_784->g_108,(void*)0,(void*)0,(void*)0,(void*)0},{&p_784->g_108,&p_784->g_108,(void*)0,(void*)0,(void*)0,(void*)0},{&p_784->g_108,&p_784->g_108,(void*)0,(void*)0,(void*)0,(void*)0},{&p_784->g_108,&p_784->g_108,(void*)0,(void*)0,(void*)0,(void*)0},{&p_784->g_108,&p_784->g_108,(void*)0,(void*)0,(void*)0,(void*)0},{&p_784->g_108,&p_784->g_108,(void*)0,(void*)0,(void*)0,(void*)0}}};
    uint64_t **l_739 = &l_740[0][5][4];
    int32_t *l_743 = (void*)0;
    uint16_t *l_744 = (void*)0;
    uint16_t *l_745 = (void*)0;
    uint16_t *l_746[9][3];
    VECTOR(int8_t, 16) l_751 = (VECTOR(int8_t, 16))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 4L), 4L), 4L, 1L, 4L, (VECTOR(int8_t, 2))(1L, 4L), (VECTOR(int8_t, 2))(1L, 4L), 1L, 4L, 1L, 4L);
    VECTOR(int8_t, 16) l_752 = (VECTOR(int8_t, 16))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, (-1L)), (-1L)), (-1L), 1L, (-1L), (VECTOR(int8_t, 2))(1L, (-1L)), (VECTOR(int8_t, 2))(1L, (-1L)), 1L, (-1L), 1L, (-1L));
    uint32_t l_753 = 2UL;
    int32_t *l_769 = &p_784->g_51;
    int32_t *l_771 = &l_648;
    uint32_t * volatile * volatile *l_773 = &p_784->g_772[0][0][0];
    int i, j, k;
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 3; j++)
            l_746[i][j] = (void*)0;
    }
    for (p_22 = 0; (p_22 == 7); p_22 = safe_add_func_int32_t_s_s(p_22, 2))
    { /* block id: 15 */
        VECTOR(int8_t, 8) l_37 = (VECTOR(int8_t, 8))(0x40L, (VECTOR(int8_t, 4))(0x40L, (VECTOR(int8_t, 2))(0x40L, 0L), 0L), 0L, 0x40L, 0L);
        uint64_t *l_594 = (void*)0;
        VECTOR(uint64_t, 4) l_616 = (VECTOR(uint64_t, 4))(0xEB95833E97C3C927L, (VECTOR(uint64_t, 2))(0xEB95833E97C3C927L, 0x2B45B80F091CC2F3L), 0x2B45B80F091CC2F3L);
        int16_t *l_623[7][5];
        VECTOR(int64_t, 2) l_667 = (VECTOR(int64_t, 2))(0x0D56FD30270A4D3AL, 0x14220C9B98869336L);
        VECTOR(uint32_t, 2) l_703 = (VECTOR(uint32_t, 2))(0xB888A8F0L, 4294967295UL);
        VECTOR(int32_t, 16) l_710 = (VECTOR(int32_t, 16))(0x0F66AEC5L, (VECTOR(int32_t, 4))(0x0F66AEC5L, (VECTOR(int32_t, 2))(0x0F66AEC5L, 0x1B9210C2L), 0x1B9210C2L), 0x1B9210C2L, 0x0F66AEC5L, 0x1B9210C2L, (VECTOR(int32_t, 2))(0x0F66AEC5L, 0x1B9210C2L), (VECTOR(int32_t, 2))(0x0F66AEC5L, 0x1B9210C2L), 0x0F66AEC5L, 0x1B9210C2L, 0x0F66AEC5L, 0x1B9210C2L);
        uint8_t l_717 = 0x07L;
        VECTOR(uint8_t, 2) l_727 = (VECTOR(uint8_t, 2))(0x67L, 0xD8L);
        int32_t *l_734 = (void*)0;
        VECTOR(int32_t, 16) l_735 = (VECTOR(int32_t, 16))(0x1006F276L, (VECTOR(int32_t, 4))(0x1006F276L, (VECTOR(int32_t, 2))(0x1006F276L, 1L), 1L), 1L, 0x1006F276L, 1L, (VECTOR(int32_t, 2))(0x1006F276L, 1L), (VECTOR(int32_t, 2))(0x1006F276L, 1L), 0x1006F276L, 1L, 0x1006F276L, 1L);
        int32_t l_742 = (-3L);
        int i, j;
        for (i = 0; i < 7; i++)
        {
            for (j = 0; j < 5; j++)
                l_623[i][j] = (void*)0;
        }
        if (p_784->l_comm_values[(safe_mod_func_uint32_t_u_u(p_784->tid, 3))])
        { /* block id: 16 */
            int32_t *l_46 = (void*)0;
            int16_t *l_47 = &p_784->g_48;
            VECTOR(int16_t, 8) l_620 = (VECTOR(int16_t, 8))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0L), 0L), 0L, (-1L), 0L);
            int32_t l_638[6][9] = {{(-3L),(-3L),8L,0x2702A555L,0x21E6D019L,0x45E195F9L,0L,0x0CF8FB59L,0L},{(-3L),(-3L),8L,0x2702A555L,0x21E6D019L,0x45E195F9L,0L,0x0CF8FB59L,0L},{(-3L),(-3L),8L,0x2702A555L,0x21E6D019L,0x45E195F9L,0L,0x0CF8FB59L,0L},{(-3L),(-3L),8L,0x2702A555L,0x21E6D019L,0x45E195F9L,0L,0x0CF8FB59L,0L},{(-3L),(-3L),8L,0x2702A555L,0x21E6D019L,0x45E195F9L,0L,0x0CF8FB59L,0L},{(-3L),(-3L),8L,0x2702A555L,0x21E6D019L,0x45E195F9L,0L,0x0CF8FB59L,0L}};
            uint64_t **l_649 = &l_594;
            VECTOR(uint32_t, 4) l_672 = (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 0x0C4D43B5L), 0x0C4D43B5L);
            uint16_t l_678 = 0x2365L;
            int64_t *l_679 = (void*)0;
            int64_t *l_680 = (void*)0;
            int64_t *l_681 = (void*)0;
            int64_t *l_682 = (void*)0;
            int64_t *l_683 = (void*)0;
            int64_t *l_684 = (void*)0;
            int64_t *l_685 = (void*)0;
            int64_t *l_686[8][3][2] = {{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}}};
            int i, j, k;
            l_604 = func_31(((safe_unary_minus_func_uint64_t_u(((safe_unary_minus_func_int8_t_s((((VECTOR(int8_t, 16))(rhadd(((VECTOR(int8_t, 4))(1L, ((VECTOR(int8_t, 2))(l_37.s36)), 0L)).yxxxyzxywwxxyxww, ((VECTOR(int8_t, 2))(safe_clamp_func(VECTOR(int8_t, 2),VECTOR(int8_t, 2),((VECTOR(int8_t, 16))(sub_sat(((VECTOR(int8_t, 8))(mad_sat(((VECTOR(int8_t, 8))((safe_rshift_func_uint16_t_u_s((safe_add_func_int64_t_s_s(func_5(func_42(l_46, p_22, l_47, p_784), p_784), p_22)), (safe_mul_func_uint16_t_u_u((safe_sub_func_int16_t_s_s(((void*)0 != &p_784->g_295), l_37.s6)), 0L)))), p_22, 0x33L, (-1L), ((VECTOR(int8_t, 4))(0x21L)))), ((VECTOR(int8_t, 8))((-3L))), ((VECTOR(int8_t, 8))(2L))))).s6661055504413107, ((VECTOR(int8_t, 16))(4L))))).sd5, ((VECTOR(int8_t, 2))((-7L))), ((VECTOR(int8_t, 2))(0x5CL))))).xxyyxxyyyyxxyyyx))).sa , (*p_784->g_529)))) || p_784->g_393.y))) , l_37.s0), l_594, p_22, p_784);
            for (p_784->g_51 = 14; (p_784->g_51 >= 23); p_784->g_51++)
            { /* block id: 264 */
                uint16_t l_607 = 0xE02CL;
                int32_t l_608[7][3][5] = {{{1L,(-10L),1L,1L,6L},{1L,(-10L),1L,1L,6L},{1L,(-10L),1L,1L,6L}},{{1L,(-10L),1L,1L,6L},{1L,(-10L),1L,1L,6L},{1L,(-10L),1L,1L,6L}},{{1L,(-10L),1L,1L,6L},{1L,(-10L),1L,1L,6L},{1L,(-10L),1L,1L,6L}},{{1L,(-10L),1L,1L,6L},{1L,(-10L),1L,1L,6L},{1L,(-10L),1L,1L,6L}},{{1L,(-10L),1L,1L,6L},{1L,(-10L),1L,1L,6L},{1L,(-10L),1L,1L,6L}},{{1L,(-10L),1L,1L,6L},{1L,(-10L),1L,1L,6L},{1L,(-10L),1L,1L,6L}},{{1L,(-10L),1L,1L,6L},{1L,(-10L),1L,1L,6L},{1L,(-10L),1L,1L,6L}}};
                uint8_t ***l_622 = &p_784->g_475;
                int i, j, k;
                l_608[0][1][3] = l_607;
                if ((*p_784->g_147))
                    break;
                for (p_784->g_108 = 0; (p_784->g_108 == 16); p_784->g_108++)
                { /* block id: 269 */
                    VECTOR(int16_t, 16) l_618 = (VECTOR(int16_t, 16))(0x6037L, (VECTOR(int16_t, 4))(0x6037L, (VECTOR(int16_t, 2))(0x6037L, 6L), 6L), 6L, 0x6037L, 6L, (VECTOR(int16_t, 2))(0x6037L, 6L), (VECTOR(int16_t, 2))(0x6037L, 6L), 0x6037L, 6L, 0x6037L, 6L);
                    VECTOR(int16_t, 4) l_619 = (VECTOR(int16_t, 4))(0x77F1L, (VECTOR(int16_t, 2))(0x77F1L, (-3L)), (-3L));
                    int32_t l_646 = 0L;
                    int i;
                    for (p_784->g_27 = 3; (p_784->g_27 > 32); p_784->g_27++)
                    { /* block id: 272 */
                        uint32_t l_617 = 0x3923D280L;
                        int64_t *l_624 = (void*)0;
                        int64_t *l_625 = (void*)0;
                        int64_t *l_626 = (void*)0;
                        int64_t *l_627 = (void*)0;
                        int64_t *l_628 = (void*)0;
                        int64_t *l_629 = (void*)0;
                        int64_t *l_630 = (void*)0;
                        int64_t *l_631 = (void*)0;
                        int64_t *l_632 = (void*)0;
                        int64_t *l_633 = (void*)0;
                        int64_t *l_634 = (void*)0;
                        int64_t *l_635 = (void*)0;
                        int64_t *l_636 = (void*)0;
                        int64_t *l_637 = (void*)0;
                        int8_t *l_640 = (void*)0;
                        int8_t *l_641 = (void*)0;
                        int8_t *l_642 = (void*)0;
                        int8_t *l_643 = (void*)0;
                        int8_t *l_644 = (void*)0;
                        int8_t *l_645 = &p_784->g_155;
                        int32_t **l_647 = &p_784->g_147;
                        l_646 |= ((p_22 >= (((VECTOR(int16_t, 4))(mad_sat(((VECTOR(int16_t, 8))(max(((VECTOR(int16_t, 16))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 16),((VECTOR(int16_t, 16))(safe_clamp_func(VECTOR(int16_t, 16),VECTOR(int16_t, 16),((VECTOR(int16_t, 2))(((VECTOR(int16_t, 4))(max(((VECTOR(int16_t, 4))(p_784->g_613.yzyw)), ((VECTOR(int16_t, 4))(1L, 2L, 0x1845L, 1L))))).even)).yyxyyyyyxxxyxyyx, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))(mad_sat(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))((-7L), (safe_mod_func_uint64_t_u_u(((VECTOR(uint64_t, 16))(l_616.wxzzwwwzzzyzwzxx)).sd, l_617)), 0x5AB1L, 0x019DL)).wwywzxyw)).s1335107456074333)).even, ((VECTOR(int16_t, 8))(rhadd(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 8))(l_618.sde4291bc)))), ((VECTOR(int16_t, 4))(l_619.zyxx)).xzyywzzx))), ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))(l_620.s16676031)).s56)).xxyxxyxy))).s65)).yyxy)).yzwwyyyyzyxyzzyw, ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(max(((VECTOR(int16_t, 2))(add_sat(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(rotate(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(mul_hi(((VECTOR(int16_t, 2))(p_784->g_621.yy)), ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 16))(mad_sat(((VECTOR(int16_t, 2))(sub_sat(((VECTOR(int16_t, 8))(clz(((VECTOR(int16_t, 2))((-1L), 0x5EC0L)).xxxyyyyx))).s52, ((VECTOR(int16_t, 8))(0x4168L, (-3L), 0L, ((VECTOR(int16_t, 2))((-9L), (-1L))), (-1L), (-9L), 0x6C7EL)).s33))).yxyyxxyxyxyxxxxy, ((VECTOR(int16_t, 8))(6L, (-3L), l_617, ((&p_784->g_475 == l_622) != (l_608[5][1][3] = (+(l_638[3][5] = (l_623[3][1] == l_623[3][1]))))), ((((VECTOR(int32_t, 16))(p_784->g_639.xyzxzwzxwxxzyyyw)).sc | ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 4))((p_22 < ((*l_645) = ((0x23L || GROUP_DIVERGE(0, 1)) > 18446744073709551615UL))), (*p_784->g_295), 0x2BA87D5AL, 1L)).xywzwyxy, ((VECTOR(int32_t, 8))(0x57E19671L)), ((VECTOR(int32_t, 8))(0x54ED3593L))))).s3246163425555731)).sd) || l_618.s9), ((VECTOR(int16_t, 2))(0x339DL)), 5L)).s4562224073276421, ((VECTOR(int16_t, 16))(0x150CL))))).hi)).s43))), ((VECTOR(int16_t, 2))(0x5E1AL)), 0x69FFL, ((VECTOR(int16_t, 2))(1L)), 1L)))).s11, ((VECTOR(int16_t, 2))(0x0CFFL))))).yyxyxxyxxyyxxxyx)).sfa, ((VECTOR(int16_t, 2))(0x5330L))))), (int16_t)l_37.s0))).yxxyyyxy)).s4463760225017665))), ((VECTOR(int16_t, 16))(0x1D52L)), ((VECTOR(int16_t, 16))(0x181BL))))).even, (int16_t)0x1F2BL))).lo, ((VECTOR(int16_t, 4))(1L)), ((VECTOR(int16_t, 4))(0x40B5L))))).x != p_784->g_266)) , l_618.s9);
                        (*l_647) = &p_784->g_51;
                        l_648 = (p_22 < 5UL);
                    }
                    return &p_784->g_51;
                }
            }
            (*p_784->g_650) = func_31((+(-4L)), ((*l_649) = &p_784->g_108), p_784->g_639.w, p_784);
            (*p_784->g_147) = (safe_mod_func_int32_t_s_s(((((safe_mul_func_int16_t_s_s((safe_div_func_int8_t_s_s((safe_add_func_int16_t_s_s(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 4))((-9L), (((safe_add_func_int32_t_s_s(((p_784->g_comm_values[p_784->tid] = ((GROUP_DIVERGE(1, 1) || (l_616.w < (!(safe_mod_func_int16_t_s_s(((p_784->g_12 || ((void*)0 == l_665[5])) > 0x2F9C7125L), ((((((VECTOR(int64_t, 16))(l_667.xxxxyxxyyyxxxxyx)).s6 , (safe_mod_func_uint32_t_u_u(0UL, (safe_div_func_uint32_t_u_u(((VECTOR(uint32_t, 16))(l_672.zwwxwzxzxyxxzxzx)).sf, ((((((((safe_add_func_int8_t_s_s(((void*)0 == l_675), (((safe_add_func_int64_t_s_s(l_616.y, l_678)) >= 0x5EL) || 6L))) ^ GROUP_DIVERGE(0, 1)) && p_22) , &p_784->g_239) != &p_784->g_239) && 252UL) > (*l_604)) & 0x44DFF78CL)))))) > (-5L)) >= p_22) , p_22)))))) >= p_784->g_108)) < p_784->g_27), (*l_604))) > l_687) , (-7L)), 0x1F2AL, 0x1878L)))).w, FAKE_DIVERGE(p_784->local_2_offset, get_local_id(2), 10))), l_667.y)), p_22)) , FAKE_DIVERGE(p_784->group_0_offset, get_group_id(0), 10)) >= (*p_784->g_529)) <= p_784->g_51), p_22));
        }
        else
        { /* block id: 287 */
            VECTOR(int32_t, 2) l_690 = (VECTOR(int32_t, 2))(0x27CB35E7L, 0x037BA1A0L);
            VECTOR(uint64_t, 16) l_697 = (VECTOR(uint64_t, 16))(18446744073709551615UL, (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 5UL), 5UL), 5UL, 18446744073709551615UL, 5UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 5UL), (VECTOR(uint64_t, 2))(18446744073709551615UL, 5UL), 18446744073709551615UL, 5UL, 18446744073709551615UL, 5UL);
            VECTOR(uint32_t, 4) l_701 = (VECTOR(uint32_t, 4))(3UL, (VECTOR(uint32_t, 2))(3UL, 0xFFB82C0FL), 0xFFB82C0FL);
            uint16_t *l_709[6] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            VECTOR(int8_t, 2) l_715 = (VECTOR(int8_t, 2))(0x6FL, 2L);
            uint16_t l_716 = 0x6F99L;
            int32_t *l_718[3];
            int i;
            for (i = 0; i < 3; i++)
                l_718[i] = &l_648;
            p_784->g_161.x |= ((((VECTOR(int32_t, 8))(upsample(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))((safe_lshift_func_uint8_t_u_u(((((VECTOR(int32_t, 4))(clz(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(rotate(((VECTOR(int32_t, 4))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 2))(l_690.yy)).xxxx, ((VECTOR(int32_t, 4))(0x1642DDE3L, 0x52AD3801L, (-1L), 0x10140949L)), ((VECTOR(int32_t, 4))(5L, (((safe_mod_func_uint32_t_u_u(((safe_div_func_int16_t_s_s(((p_784->g_271.sa = ((VECTOR(uint64_t, 4))(mad_sat(((VECTOR(uint64_t, 2))(18446744073709551615UL, 18446744073709551615UL)).xxxx, ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 2))(18446744073709551609UL, 0x6068FFFB309C2B79L)))).yxxyxxxyyyxxxyyx)).sbbd1, ((VECTOR(uint64_t, 8))(l_695, 0xF74E23359640CB94L, (l_690.y || 0UL), ((VECTOR(uint64_t, 4))(1UL, ((VECTOR(uint64_t, 2))(clz(((VECTOR(uint64_t, 16))(mad_sat(((VECTOR(uint64_t, 8))(l_696.yyxyyxyy)).s1126001204407606, ((VECTOR(uint64_t, 4))(mad_hi(((VECTOR(uint64_t, 16))(l_697.scbed209f7eb10d7a)).s362a, ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(sub_sat(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(l_698.s33)).xxxxyxyyyxyyyyyx)).s3a, ((VECTOR(uint64_t, 2))(safe_clamp_func(VECTOR(uint64_t, 2),uint64_t,((VECTOR(uint64_t, 4))(p_784->g_699.yxxx)).hi, (uint64_t)p_784->g_27, (uint64_t)((VECTOR(uint64_t, 2))(1UL, 0xF88AFE55E48D492EL)).lo)))))).xxxxyxxxyyxyxyxx)).s219d, ((VECTOR(uint64_t, 16))(upsample(((VECTOR(uint32_t, 2))(safe_clamp_func(VECTOR(uint32_t, 2),VECTOR(uint32_t, 2),((VECTOR(uint32_t, 2))(sub_sat(((VECTOR(uint32_t, 8))(p_784->g_700.xyyxyxxx)).s16, ((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))(sub_sat(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 16))(l_701.zywzzxywxyyxxxxx)))).odd, ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))(p_784->g_702.yy)).yxyxxyxxyxyyyxxy)).sce25)), ((VECTOR(uint32_t, 2))(l_703.xy)), 4294967295UL, 1UL))))), ((VECTOR(uint32_t, 2))(p_784->g_704.s32)), ((safe_rshift_func_int8_t_s_s((((safe_rshift_func_int8_t_s_u((l_710.s5 = (1L < (p_784->g_520--))), (safe_div_func_uint64_t_u_u((&l_695 != (void*)0), p_784->g_559.x)))) & ((VECTOR(int8_t, 4))(l_715.yyyy)).x) || ((*p_784->g_295) == l_667.y)), p_784->g_639.z)) , p_22), ((VECTOR(uint32_t, 4))(0x68E3E37EL)), 0x1DA7C767L)).s2b))), ((VECTOR(uint32_t, 2))(0x64C85F83L)), ((VECTOR(uint32_t, 2))(0xD7C67DC8L))))).xyxxyyyyyxxxyyyx, ((VECTOR(uint32_t, 16))(0x5D65D132L))))).s3ae5))).ywxzzxzwxzxwxxwz, ((VECTOR(uint64_t, 16))(18446744073709551608UL))))).s8d))), 18446744073709551615UL)), 0xAB61BC0A09D2934CL)).hi))).z) != p_22), FAKE_DIVERGE(p_784->global_1_offset, get_global_id(1), 10))) < l_715.x), p_22)) >= p_784->g_621.x) || p_784->g_699.x), 0x7EBBCD5CL, 0x0034B90DL))))).wyyzwyzz, ((VECTOR(int32_t, 8))(0x5978BAE9L))))))).even))).z , (*p_784->g_295)) >= 1UL), 1)), p_22, l_716, 4L, p_22, 0x2DE2L, 0x031AL, 0x4ADFL)).s3021365371220400)).even, ((VECTOR(uint16_t, 8))(1UL))))).s5 & l_717) , p_22);
            if ((*p_784->g_295))
            { /* block id: 292 */
                uint8_t l_719 = 253UL;
                l_719++;
            }
            else
            { /* block id: 294 */
                int8_t l_728[5][1][9];
                VECTOR(int32_t, 2) l_731 = (VECTOR(int32_t, 2))(0x2AB42439L, 0x547632BDL);
                uint64_t *l_737 = (void*)0;
                uint64_t *l_738[1];
                uint64_t ***l_741 = &l_739;
                int i, j, k;
                for (i = 0; i < 5; i++)
                {
                    for (j = 0; j < 1; j++)
                    {
                        for (k = 0; k < 9; k++)
                            l_728[i][j][k] = 2L;
                    }
                }
                for (i = 0; i < 1; i++)
                    l_738[i] = (void*)0;
                l_742 |= (safe_rshift_func_uint8_t_u_u(1UL, (((safe_sub_func_uint8_t_u_u(((VECTOR(uint8_t, 16))(mad_sat(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 16))(clz(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 8))(250UL, 0x7EL, ((VECTOR(uint8_t, 4))(p_784->g_726.xxyy)), 1UL, 0UL)).hi)).xyyyzxzxyywxxzwz))).sa50d)).wwwwwzyxxyzzwyxx, ((VECTOR(uint8_t, 8))(l_727.yyyyyxyx)).s4607047034371070, ((VECTOR(uint8_t, 8))(0x95L, 0x14L, 0x0EL, l_728[1][0][0], 0UL, 1UL, 0x91L, 0x10L)).s1372211242354424))).s6, ((safe_sub_func_int32_t_s_s(((VECTOR(int32_t, 4))(l_731.xyyx)).y, (((*l_741) = ((p_22 ^ ((safe_sub_func_int16_t_s_s(((p_784->g_565 || ((l_710.s1 = (((l_734 = l_734) != (void*)0) , ((VECTOR(int32_t, 16))(l_735.s969cd6a72a0418ab)).s1)) > (+((((p_784->g_699.y = ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 16))(p_784->g_736.sfb0ddfa126d5d7f7)).lo)).s6) && 0L) && (((-1L) ^ (p_784->g_266 || p_784->g_100.sb)) ^ 0x27L)) , (*p_784->g_295))))) > 1UL), 1L)) | p_22)) , l_739)) == &l_740[0][5][4]))) , l_698.s3))) < p_784->g_726.x) <= p_22)));
            }
        }
    }
    l_648 ^= (*p_784->g_295);
    (*l_771) = ((~((p_784->g_396.x++) <= (p_22 <= ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(add_sat(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 2),((VECTOR(int8_t, 2))(p_784->g_749.xy)), ((VECTOR(int8_t, 8))(safe_clamp_func(VECTOR(int8_t, 8),int8_t,((VECTOR(int8_t, 8))(p_784->g_750.wxwwzwxz)), (int8_t)0x7EL, (int8_t)((VECTOR(int8_t, 8))(rotate(((VECTOR(int8_t, 4))(l_751.s76c3)).zxwzxzyy, ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(min(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(l_752.s65b62f1e)).s0372231314716746)).sda, ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(l_753, (-1L), 0x17L, 0L)).zxxyzwzw)).lo)).hi))), ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(0x3BL, 0x3BL)).xyxx)).lo)), 8L, 8L, 0L, 0x3DL))))).s7))).s60, ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(safe_clamp_func(VECTOR(int8_t, 8),VECTOR(int8_t, 8),((VECTOR(int8_t, 4))(min(((VECTOR(int8_t, 8))(mad_sat(((VECTOR(int8_t, 16))(p_784->g_754.wxxzzzwwwxzywxxy)).hi, ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))((*p_784->g_529), p_22, (safe_add_func_int8_t_s_s(((safe_div_func_int16_t_s_s((safe_rshift_func_uint8_t_u_s((safe_lshift_func_uint16_t_u_s(FAKE_DIVERGE(p_784->group_0_offset, get_group_id(0), 10), (p_22 ^ (p_784->g_393.x = (((*l_769) = (p_784->g_100.s0 |= (((((safe_lshift_func_int16_t_s_s((safe_mod_func_uint8_t_u_u(((safe_rshift_func_uint8_t_u_u(((p_22 <= 0x790D0379L) != FAKE_DIVERGE(p_784->local_2_offset, get_local_id(2), 10)), ((((0x5386B800F82D5BDFL ^ p_22) , &p_784->g_530[0][4]) != (void*)0) < 0x36D573AA5D8B3884L))) && p_784->g_comm_values[p_784->tid]), p_22)), (**p_784->g_239))) != p_22) , p_784->g_comm_values[p_784->tid]) == p_22) , (*p_784->g_295)))) & p_784->l_comm_values[(safe_mod_func_uint32_t_u_u(p_784->tid, 3))]))))), 6)), 9L)) <= p_22), p_784->g_48)), (-1L), 0x2AL, ((VECTOR(int8_t, 8))((-1L))), (*p_784->g_529), 0x47L, 0L)).s6990)).ywzzxxxw, ((VECTOR(int8_t, 8))(0x71L))))).even, ((VECTOR(int8_t, 4))(0x69L))))).yxyzzyyw, ((VECTOR(int8_t, 8))((-1L))), ((VECTOR(int8_t, 8))(0x6CL))))).s7361236417442503)).s14))))), (*p_784->g_529), 0x6FL, ((VECTOR(int8_t, 4))((-1L))))).hi)).even, ((VECTOR(int8_t, 2))(0x70L))))).yyxyxyxxxyxxxxxy)).s0))) <= (-1L));
    (*l_773) = p_784->g_772[0][0][0];
    return (*p_784->g_650);
}


/* ------------------------------------------ */
/* 
 * reads : p_784->g_240 p_784->g_48 p_784->g_295 p_784->g_51
 * writes: p_784->g_135 p_784->g_51 p_784->g_147
 */
int32_t * func_31(int64_t  p_32, uint64_t * p_33, uint64_t  p_34, struct S0 * p_784)
{ /* block id: 255 */
    int32_t **l_595[2];
    int8_t l_598 = 0x44L;
    int32_t l_599 = 0x7E083F82L;
    int32_t l_600 = (-9L);
    uint32_t l_601 = 0UL;
    int i;
    for (i = 0; i < 2; i++)
        l_595[i] = &p_784->g_147;
    p_784->g_135 = &p_784->g_51;
    (*p_784->g_295) ^= (~(safe_rshift_func_int16_t_s_s((*p_784->g_240), 4)));
    ++l_601;
    p_784->g_147 = &p_784->g_51;
    return &p_784->g_51;
}


/* ------------------------------------------ */
/* 
 * reads : p_784->g_27 p_784->g_240 p_784->g_48
 * writes: p_784->g_27 p_784->g_161
 */
int16_t  func_42(int32_t * p_43, uint64_t  p_44, int16_t * p_45, struct S0 * p_784)
{ /* block id: 17 */
    int32_t *l_50 = &p_784->g_51;
    int32_t **l_49 = &l_50;
    int32_t l_313[5] = {(-1L),(-1L),(-1L),(-1L),(-1L)};
    int64_t l_314 = 1L;
    int32_t *l_331[1];
    VECTOR(uint16_t, 16) l_354 = (VECTOR(uint16_t, 16))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0x4848L), 0x4848L), 0x4848L, 0UL, 0x4848L, (VECTOR(uint16_t, 2))(0UL, 0x4848L), (VECTOR(uint16_t, 2))(0UL, 0x4848L), 0UL, 0x4848L, 0UL, 0x4848L);
    VECTOR(int64_t, 2) l_380 = (VECTOR(int64_t, 2))(4L, (-1L));
    VECTOR(int64_t, 8) l_381 = (VECTOR(int64_t, 8))((-6L), (VECTOR(int64_t, 4))((-6L), (VECTOR(int64_t, 2))((-6L), 5L), 5L), 5L, (-6L), 5L);
    VECTOR(uint16_t, 8) l_382 = (VECTOR(uint16_t, 8))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 5UL), 5UL), 5UL, 1UL, 5UL);
    VECTOR(uint16_t, 8) l_392 = (VECTOR(uint16_t, 8))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0UL), 0UL), 0UL, 1UL, 0UL);
    int8_t l_398 = 1L;
    VECTOR(int64_t, 8) l_406 = (VECTOR(int64_t, 8))(0L, (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 0x13F8F3A49FF9D980L), 0x13F8F3A49FF9D980L), 0x13F8F3A49FF9D980L, 0L, 0x13F8F3A49FF9D980L);
    int16_t ***l_415 = &p_784->g_239;
    uint32_t l_432 = 3UL;
    uint8_t *l_471 = &p_784->g_12;
    uint8_t **l_470 = &l_471;
    VECTOR(uint16_t, 4) l_533 = (VECTOR(uint16_t, 4))(0x431AL, (VECTOR(uint16_t, 2))(0x431AL, 0xA757L), 0xA757L);
    VECTOR(uint16_t, 2) l_534 = (VECTOR(uint16_t, 2))(0x86EAL, 0xCFEFL);
    int32_t l_538[8] = {(-3L),0x0B43B126L,(-3L),(-3L),0x0B43B126L,(-3L),(-3L),0x0B43B126L};
    uint16_t l_587 = 65533UL;
    int i;
    for (i = 0; i < 1; i++)
        l_331[i] = &p_784->g_51;
    (*l_49) = (void*)0;
    if ((atomic_inc(&p_784->l_atomic_input[24]) == 6))
    { /* block id: 20 */
        int32_t l_52 = (-3L);
        uint16_t l_94 = 1UL;
        int8_t l_95 = (-1L);
        uint64_t l_96 = 18446744073709551612UL;
        for (l_52 = 0; (l_52 <= (-26)); --l_52)
        { /* block id: 23 */
            VECTOR(int32_t, 4) l_55 = (VECTOR(int32_t, 4))(0x7D4076B8L, (VECTOR(int32_t, 2))(0x7D4076B8L, 0x3552E296L), 0x3552E296L);
            int i;
            for (l_55.x = 0; (l_55.x <= 17); ++l_55.x)
            { /* block id: 26 */
                VECTOR(int16_t, 4) l_58 = (VECTOR(int16_t, 4))(0x22A6L, (VECTOR(int16_t, 2))(0x22A6L, (-9L)), (-9L));
                int32_t l_60 = 0x1D242EC2L;
                int32_t *l_59 = &l_60;
                int64_t l_61[10];
                uint8_t l_62 = 0x63L;
                int i;
                for (i = 0; i < 10; i++)
                    l_61[i] = 0x282E93B6ABB57DDDL;
                l_58.y &= 4L;
                l_59 = (void*)0;
                l_62 |= l_61[2];
                for (l_60 = 13; (l_60 == 25); ++l_60)
                { /* block id: 32 */
                    VECTOR(int16_t, 2) l_65 = (VECTOR(int16_t, 2))(0x7CDBL, 0L);
                    int32_t l_93 = (-8L);
                    int32_t *l_92 = &l_93;
                    int i;
                    if (l_65.y)
                    { /* block id: 33 */
                        int16_t l_66[1][9];
                        int64_t l_67 = 1L;
                        int32_t l_69 = 0x045F054FL;
                        int32_t *l_68 = &l_69;
                        uint32_t l_70 = 0x0BA59A11L;
                        int i, j;
                        for (i = 0; i < 1; i++)
                        {
                            for (j = 0; j < 9; j++)
                                l_66[i][j] = 0x19C0L;
                        }
                        l_67 = l_66[0][4];
                        l_59 = l_68;
                        (*l_59) |= l_70;
                    }
                    else
                    { /* block id: 37 */
                        uint8_t l_71[2][1][2] = {{{0x72L,0x72L}},{{0x72L,0x72L}}};
                        int16_t l_72[5] = {0x3EF4L,0x3EF4L,0x3EF4L,0x3EF4L,0x3EF4L};
                        uint8_t l_73 = 9UL;
                        int32_t l_74 = 0x23DF4915L;
                        VECTOR(int32_t, 8) l_75 = (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x4537F45EL), 0x4537F45EL), 0x4537F45EL, 1L, 0x4537F45EL);
                        VECTOR(int32_t, 8) l_76 = (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, (-10L)), (-10L)), (-10L), 0L, (-10L));
                        int16_t l_77 = (-1L);
                        VECTOR(int64_t, 8) l_78 = (VECTOR(int64_t, 8))(0x3A6DCE4D36899A90L, (VECTOR(int64_t, 4))(0x3A6DCE4D36899A90L, (VECTOR(int64_t, 2))(0x3A6DCE4D36899A90L, (-8L)), (-8L)), (-8L), 0x3A6DCE4D36899A90L, (-8L));
                        uint32_t l_79[8] = {0xF0B38F1CL,0xF0B38F1CL,0xF0B38F1CL,0xF0B38F1CL,0xF0B38F1CL,0xF0B38F1CL,0xF0B38F1CL,0xF0B38F1CL};
                        VECTOR(int32_t, 8) l_80 = (VECTOR(int32_t, 8))(0x0275CA95L, (VECTOR(int32_t, 4))(0x0275CA95L, (VECTOR(int32_t, 2))(0x0275CA95L, 0x1D6528A1L), 0x1D6528A1L), 0x1D6528A1L, 0x0275CA95L, 0x1D6528A1L);
                        uint64_t l_81 = 9UL;
                        uint32_t l_82[9][7] = {{1UL,1UL,0x735B57BDL,0x08F1A9DBL,0UL,0x43DE26F3L,4294967295UL},{1UL,1UL,0x735B57BDL,0x08F1A9DBL,0UL,0x43DE26F3L,4294967295UL},{1UL,1UL,0x735B57BDL,0x08F1A9DBL,0UL,0x43DE26F3L,4294967295UL},{1UL,1UL,0x735B57BDL,0x08F1A9DBL,0UL,0x43DE26F3L,4294967295UL},{1UL,1UL,0x735B57BDL,0x08F1A9DBL,0UL,0x43DE26F3L,4294967295UL},{1UL,1UL,0x735B57BDL,0x08F1A9DBL,0UL,0x43DE26F3L,4294967295UL},{1UL,1UL,0x735B57BDL,0x08F1A9DBL,0UL,0x43DE26F3L,4294967295UL},{1UL,1UL,0x735B57BDL,0x08F1A9DBL,0UL,0x43DE26F3L,4294967295UL},{1UL,1UL,0x735B57BDL,0x08F1A9DBL,0UL,0x43DE26F3L,4294967295UL}};
                        int64_t l_83 = (-3L);
                        int64_t l_84 = 0x3435D61FA6E79906L;
                        VECTOR(int32_t, 8) l_85 = (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 1L), 1L), 1L, 1L, 1L);
                        VECTOR(int32_t, 2) l_86 = (VECTOR(int32_t, 2))((-1L), (-1L));
                        VECTOR(int16_t, 2) l_87 = (VECTOR(int16_t, 2))(0L, 0x22E4L);
                        VECTOR(int16_t, 4) l_88 = (VECTOR(int16_t, 4))(0x6AACL, (VECTOR(int16_t, 2))(0x6AACL, 0x2074L), 0x2074L);
                        VECTOR(uint16_t, 4) l_89 = (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 65535UL), 65535UL);
                        int64_t l_90 = (-5L);
                        uint16_t l_91 = 0x1B3FL;
                        int i, j, k;
                        l_72[0] = l_71[1][0][0];
                        l_74 = l_73;
                        l_91 &= ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(min(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(clz(((VECTOR(int32_t, 16))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 2))(clz(((VECTOR(int32_t, 16))(l_75.s2776222161226121)).sdc))).xxyxyxyyxyxyxyxx, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(min(((VECTOR(int32_t, 16))(max(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(l_76.s10)), 0x36EDA74EL, (-3L))).ywzwyyxwxwwzwzxw)), ((VECTOR(int32_t, 4))(0L, (l_74 = (l_77 , (l_75.s6 = (l_79[7] ^= (((VECTOR(int64_t, 8))(clz(((VECTOR(int64_t, 16))(l_78.s2273324674616626)).hi))).s0 , 5L))))), 0x1A1A39BFL, 2L)).ywxzzzzzzwxxywzx))).lo, ((VECTOR(int32_t, 2))(0x45943CDAL, 0x620FE2C0L)).xxyxyyyy))), ((VECTOR(int32_t, 4))(rotate(((VECTOR(int32_t, 4))(l_80.s0153)), ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(safe_clamp_func(VECTOR(int32_t, 16),VECTOR(int32_t, 16),((VECTOR(int32_t, 8))(0x453E4AB2L, (l_81 , (l_82[7][5] , l_83)), ((VECTOR(int32_t, 4))(l_84, 0x4678F9D6L, 0x2E403142L, (-1L))), 0x68BA164AL, (-1L))).s1455076606207564, ((VECTOR(int32_t, 8))(rotate(((VECTOR(int32_t, 4))(l_85.s4215)).yywwzwyz, ((VECTOR(int32_t, 16))(l_86.yyxyyyyxxyyxxyxy)).odd))).s5207357446144435, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(upsample(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(l_87.yyyyyyyx)).hi)), ((VECTOR(int16_t, 4))(l_88.xyxz)))).s56)).xyxyyyxx)), ((VECTOR(uint16_t, 2))(clz(((VECTOR(uint16_t, 4))(l_89.xxyw)).even))).yxxxyxyx))).hi)).wxyzyyyx)).s1476154346554370))).sc8)), 0L, (-1L)))))), ((VECTOR(int32_t, 2))(0L, 1L)), 0x188215CFL, (-4L)))))).odd))))), (int32_t)l_90))))).s5;
                    }
                    l_59 = l_92;
                }
            }
        }
        l_96 |= (l_95 &= (FAKE_DIVERGE(p_784->local_2_offset, get_local_id(2), 10) , l_94));
        unsigned int result = 0;
        result += l_52;
        result += l_94;
        result += l_95;
        result += l_96;
        atomic_add(&p_784->l_special_values[24], result);
    }
    else
    { /* block id: 51 */
        (1 + 1);
    }
    for (p_784->g_27 = (-14); (p_784->g_27 < 8); ++p_784->g_27)
    { /* block id: 56 */
        VECTOR(int32_t, 4) l_99 = (VECTOR(int32_t, 4))(6L, (VECTOR(int32_t, 2))(6L, 0L), 0L);
        VECTOR(int32_t, 2) l_101 = (VECTOR(int32_t, 2))(0L, 0x69DA67FBL);
        uint32_t *l_297 = &p_784->g_266;
        uint32_t *l_298 = &p_784->g_299[2][0][2];
        int32_t l_306 = 0x53313AE2L;
        int32_t *l_307 = (void*)0;
        int32_t *l_308 = (void*)0;
        int32_t *l_309 = (void*)0;
        int32_t *l_310 = (void*)0;
        int32_t *l_311 = (void*)0;
        int32_t *l_312 = (void*)0;
        int32_t *l_315 = (void*)0;
        int32_t *l_316 = (void*)0;
        int32_t *l_317 = (void*)0;
        int32_t *l_318 = (void*)0;
        int32_t *l_319 = (void*)0;
        int32_t *l_320 = (void*)0;
        int32_t *l_321 = (void*)0;
        int32_t *l_322 = (void*)0;
        int32_t *l_323 = (void*)0;
        int32_t *l_324 = (void*)0;
        int32_t *l_325 = (void*)0;
        int32_t *l_326 = (void*)0;
        int32_t *l_327 = (void*)0;
        int32_t *l_328 = (void*)0;
        int32_t *l_329 = (void*)0;
        int32_t *l_330[1][10][9] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
        int32_t **l_350 = (void*)0;
        int32_t **l_351 = &l_330[0][6][4];
        uint64_t *l_352 = &p_784->g_264;
        uint32_t l_353 = 3UL;
        uint16_t l_399 = 65535UL;
        uint8_t *l_451 = (void*)0;
        VECTOR(int32_t, 2) l_458 = (VECTOR(int32_t, 2))(0x4619F9CCL, (-8L));
        uint8_t l_500 = 0xA1L;
        int i, j, k;
        p_784->g_161.y = ((VECTOR(int32_t, 16))(mul_hi(((VECTOR(int32_t, 4))(mul_hi(((VECTOR(int32_t, 8))(clz(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(sub_sat(((VECTOR(int32_t, 2))(l_99.zw)).yyxyxxyx, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(0L, p_784->g_12, 9L, 0x4A5BE0B3L)).lo)).yxxyxyyyxxxxxyxy)))).hi))).odd)).zwwzzyzz))).odd, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(safe_clamp_func(VECTOR(int32_t, 2),VECTOR(int32_t, 2),((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(clz(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(p_784->g_100.s090d)).xzwwzyyw)).s54))), 0L, 0x152AC100L)))).odd, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(l_101.yxyyyyxy)).lo)).even, ((VECTOR(int32_t, 16))((-3L), ((VECTOR(int32_t, 4))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(0x79B48C28L, 0L)), 0x3505F385L, ((VECTOR(int32_t, 2))(1L, 0x0F377315L)), 8L, 0x37DAF6EEL, (l_313[2] = ((FAKE_DIVERGE(p_784->group_1_offset, get_group_id(1), 10) & ((*l_298) |= ((*l_297) = func_102(p_43, p_784)))) , ((*p_784->g_295) = ((((*p_784->g_295) != ((((!((safe_mod_func_uint16_t_u_u(((0x721ED154L || (((~((0xA67FB14B8DF6ADCCL == p_784->g_27) != (safe_sub_func_uint32_t_u_u(0xEE7F85FFL, 5L)))) == p_784->g_299[2][0][0]) & (*p_45))) , p_44), (**p_784->g_239))) | GROUP_DIVERGE(2, 1))) != l_306) == 2UL) >= p_784->g_27)) < 0UL) , (*p_784->g_295))))), 1L, ((VECTOR(int32_t, 4))(0L)), (*p_784->g_295), 0x3A73491EL, (-1L))).s7275, ((VECTOR(int32_t, 4))(0x0FE7DAA4L)), ((VECTOR(int32_t, 4))(0x4D548416L))))), ((VECTOR(int32_t, 2))(0x3E4F0D6DL)), 0x43A35081L, l_314, 0x135E4DA7L, ((VECTOR(int32_t, 2))(0x71D38BC4L)), (-4L), p_44, (-6L), 0x0C671B2CL)).se5))).xyyyyyxy)).s0553011034617202)).lo)).odd))).xzyzywzywywwzyyy, ((VECTOR(int32_t, 16))((-10L)))))).s9;
        l_331[0] = &p_784->g_51;
    }
    return (*p_784->g_240);
}


/* ------------------------------------------ */
/* 
 * reads : p_784->g_48 p_784->g_12 p_784->g_147 p_784->g_161 p_784->g_164 p_784->g_16 p_784->l_comm_values p_784->g_239 p_784->g_251 p_784->g_240 p_784->g_51 p_784->g_100 p_784->g_271 p_784->g_155 p_784->g_295 p_784->g_27
 * writes: p_784->g_108 p_784->g_51 p_784->g_147 p_784->g_155 p_784->g_48 p_784->g_264 p_784->g_266 p_784->g_12
 */
uint32_t  func_102(int32_t * p_103, struct S0 * p_784)
{ /* block id: 57 */
    int16_t l_106[5][9] = {{8L,8L,8L,8L,8L,8L,8L,8L,8L},{8L,8L,8L,8L,8L,8L,8L,8L,8L},{8L,8L,8L,8L,8L,8L,8L,8L,8L},{8L,8L,8L,8L,8L,8L,8L,8L,8L},{8L,8L,8L,8L,8L,8L,8L,8L,8L}};
    uint64_t *l_107 = &p_784->g_108;
    VECTOR(int32_t, 4) l_110 = (VECTOR(int32_t, 4))(0x47B1C5A9L, (VECTOR(int32_t, 2))(0x47B1C5A9L, 1L), 1L);
    int64_t *l_280 = (void*)0;
    int64_t *l_281 = (void*)0;
    int64_t *l_282 = (void*)0;
    int64_t *l_283 = (void*)0;
    int64_t *l_284 = (void*)0;
    int64_t *l_285 = (void*)0;
    int64_t *l_286 = (void*)0;
    int64_t *l_287 = (void*)0;
    int64_t *l_288 = (void*)0;
    int32_t l_289[10] = {1L,1L,1L,1L,1L,1L,1L,1L,1L,1L};
    int32_t **l_296 = &p_784->g_147;
    int i, j;
    (*p_784->g_295) = (safe_add_func_uint64_t_u_u((~((*l_107) = func_5(l_106[2][6], p_784))), func_5(((safe_unary_minus_func_int16_t_s((((VECTOR(int32_t, 2))(l_110.ww)).odd != (safe_rshift_func_int8_t_s_u((safe_add_func_uint8_t_u_u((((VECTOR(uint32_t, 4))((safe_add_func_uint8_t_u_u((safe_div_func_int64_t_s_s(0x3C274765F4E78816L, (safe_mul_func_int8_t_s_s((safe_mod_func_uint64_t_u_u((safe_mod_func_int16_t_s_s(func_125(((safe_lshift_func_uint16_t_u_s(GROUP_DIVERGE(0, 1), func_131(l_106[2][6], l_110.w, p_784))) > (((((((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(p_784->g_271.sd4)).xyxx)).y || (safe_div_func_uint64_t_u_u((((safe_sub_func_int32_t_s_s((0x1DD4L > (safe_add_func_int32_t_s_s(0x025F0558L, ((((l_289[6] = (safe_div_func_uint8_t_u_u(p_784->g_161.y, l_106[2][2]))) || 0x9CDB673B34546D45L) ^ 2L) , p_784->l_comm_values[(safe_mod_func_uint32_t_u_u(p_784->tid, 3))])))), l_106[2][6])) != (-9L)) < l_110.y), l_106[4][7]))) ^ l_106[2][6]) != 18446744073709551615UL) ^ 0x76L) == l_106[2][7])), l_110.x, &l_106[2][6], p_784), 0xE176L)), l_110.w)), l_110.x)))), (-3L))), ((VECTOR(uint32_t, 2))(0xB5B3C7A5L)), 8UL)).z , l_289[0]), l_110.x)), 5))))) < l_110.z), p_784)));
    (*l_296) = (void*)0;
    return p_784->g_27;
}


/* ------------------------------------------ */
/* 
 * reads : p_784->g_12 p_784->g_155
 * writes: p_784->g_12 p_784->g_155
 */
int16_t  func_125(uint64_t  p_126, uint64_t  p_127, int16_t * p_128, struct S0 * p_784)
{ /* block id: 129 */
    int16_t l_294 = 9L;
    for (p_784->g_12 = 0; (p_784->g_12 == 54); p_784->g_12 = safe_add_func_int64_t_s_s(p_784->g_12, 6))
    { /* block id: 132 */
        for (p_784->g_155 = (-14); (p_784->g_155 >= 13); p_784->g_155 = safe_add_func_uint16_t_u_u(p_784->g_155, 7))
        { /* block id: 135 */
            return l_294;
        }
    }
    return (*p_128);
}


/* ------------------------------------------ */
/* 
 * reads : p_784->g_48 p_784->g_12 p_784->g_147 p_784->g_161 p_784->g_164 p_784->g_16 p_784->l_comm_values p_784->g_239 p_784->g_251 p_784->g_240 p_784->g_51 p_784->g_100
 * writes: p_784->g_51 p_784->g_147 p_784->g_155 p_784->g_48 p_784->g_264 p_784->g_266
 */
int16_t  func_131(int64_t  p_132, int32_t  p_133, struct S0 * p_784)
{ /* block id: 59 */
    uint32_t l_134 = 0x8D7AC8CEL;
    int32_t *l_136 = &p_784->g_51;
    int32_t **l_143 = &l_136;
    int32_t **l_144 = (void*)0;
    int32_t *l_146 = &p_784->g_51;
    int32_t **l_145[10][3] = {{&l_146,&l_146,&l_146},{&l_146,&l_146,&l_146},{&l_146,&l_146,&l_146},{&l_146,&l_146,&l_146},{&l_146,&l_146,&l_146},{&l_146,&l_146,&l_146},{&l_146,&l_146,&l_146},{&l_146,&l_146,&l_146},{&l_146,&l_146,&l_146},{&l_146,&l_146,&l_146}};
    int32_t *l_148 = &p_784->g_51;
    uint16_t l_151 = 0xA973L;
    int8_t *l_154 = &p_784->g_155;
    int16_t *l_156 = &p_784->g_48;
    int16_t **l_157 = &l_156;
    int16_t *l_158 = (void*)0;
    uint64_t l_268 = 0xA3F8C589242FC265L;
    int i, j;
    (*l_136) = l_134;
    (*l_146) = (FAKE_DIVERGE(p_784->local_0_offset, get_local_id(0), 10) , ((safe_div_func_int8_t_s_s((((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))((func_139((p_133 , p_133), ((p_784->g_147 = ((*l_143) = &p_784->g_51)) != (l_148 = &p_784->g_51)), ((safe_sub_func_uint64_t_u_u(((l_151 ^ (p_133 , (safe_sub_func_int8_t_s_s(((*l_154) = (FAKE_DIVERGE(p_784->group_2_offset, get_group_id(2), 10) <= p_784->g_48)), (((*l_157) = l_156) != l_158))))) <= 0x00BEA9BBD7F02351L), p_784->g_48)) & p_784->g_12), p_784) != p_784->g_100.s1), 0x9B2CL, 0x4060L, 0x0DC3L, GROUP_DIVERGE(1, 1), 1UL, 0xD8D9L, 1UL)).s0604657271035537)))).s5 , 0x3EL), p_784->g_16)) || 4294967295UL));
    ++l_268;
    return p_132;
}


/* ------------------------------------------ */
/* 
 * reads : p_784->g_147 p_784->g_161 p_784->g_164 p_784->g_16 p_784->l_comm_values p_784->g_239 p_784->g_48 p_784->g_251 p_784->g_240 p_784->g_51
 * writes: p_784->g_51 p_784->g_48 p_784->g_264 p_784->g_266
 */
uint32_t  func_139(int32_t  p_140, uint64_t  p_141, uint32_t  p_142, struct S0 * p_784)
{ /* block id: 66 */
    uint8_t *l_159 = &p_784->g_12;
    VECTOR(int32_t, 16) l_160 = (VECTOR(int32_t, 16))(0x55475332L, (VECTOR(int32_t, 4))(0x55475332L, (VECTOR(int32_t, 2))(0x55475332L, 0x7F4B0332L), 0x7F4B0332L), 0x7F4B0332L, 0x55475332L, 0x7F4B0332L, (VECTOR(int32_t, 2))(0x55475332L, 0x7F4B0332L), (VECTOR(int32_t, 2))(0x55475332L, 0x7F4B0332L), 0x55475332L, 0x7F4B0332L, 0x55475332L, 0x7F4B0332L);
    VECTOR(int32_t, 2) l_162 = (VECTOR(int32_t, 2))(0x5AD36DDCL, 0x64D10B9EL);
    VECTOR(int32_t, 16) l_163 = (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x092AB72FL), 0x092AB72FL), 0x092AB72FL, 1L, 0x092AB72FL, (VECTOR(int32_t, 2))(1L, 0x092AB72FL), (VECTOR(int32_t, 2))(1L, 0x092AB72FL), 1L, 0x092AB72FL, 1L, 0x092AB72FL);
    VECTOR(int32_t, 16) l_165 = (VECTOR(int32_t, 16))((-5L), (VECTOR(int32_t, 4))((-5L), (VECTOR(int32_t, 2))((-5L), 0x24C18629L), 0x24C18629L), 0x24C18629L, (-5L), 0x24C18629L, (VECTOR(int32_t, 2))((-5L), 0x24C18629L), (VECTOR(int32_t, 2))((-5L), 0x24C18629L), (-5L), 0x24C18629L, (-5L), 0x24C18629L);
    int16_t *l_174 = &p_784->g_48;
    int64_t *l_184 = (void*)0;
    int64_t *l_185 = (void*)0;
    int8_t l_186 = 0x28L;
    int16_t **l_241[4][10] = {{&l_174,&p_784->g_240,&l_174,&l_174,&p_784->g_240,&l_174,&l_174,&p_784->g_240,&l_174,&l_174},{&l_174,&p_784->g_240,&l_174,&l_174,&p_784->g_240,&l_174,&l_174,&p_784->g_240,&l_174,&l_174},{&l_174,&p_784->g_240,&l_174,&l_174,&p_784->g_240,&l_174,&l_174,&p_784->g_240,&l_174,&l_174},{&l_174,&p_784->g_240,&l_174,&l_174,&p_784->g_240,&l_174,&l_174,&p_784->g_240,&l_174,&l_174}};
    int16_t **l_250 = &p_784->g_240;
    int16_t l_254 = (-3L);
    uint32_t l_267 = 4294967287UL;
    int i, j;
    (*p_784->g_147) = (&p_784->g_16 != l_159);
    if (((VECTOR(int32_t, 8))(mad_sat(((VECTOR(int32_t, 8))(l_160.se89e7a35)), ((VECTOR(int32_t, 2))(p_784->g_161.xx)).yxxxyyyx, ((VECTOR(int32_t, 16))(l_160.sf, ((VECTOR(int32_t, 8))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 8))(l_162.yxxyyyyx)), ((VECTOR(int32_t, 16))(l_163.s02ffe034fb26f9e2)).lo, ((VECTOR(int32_t, 4))(p_784->g_164.sed2b)).xyxwyzyw))).s4, ((VECTOR(int32_t, 8))(l_165.s1552f5ce)), 0x33754A37L, 0x75CED9F9L, ((VECTOR(int32_t, 4))(rotate(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(((safe_rshift_func_int16_t_s_u((safe_div_func_uint64_t_u_u(GROUP_DIVERGE(2, 1), (safe_div_func_int8_t_s_s((safe_lshift_func_int8_t_s_u(p_142, (((*l_174) = p_140) , (((-1L) == (l_162.x <= 0x7CL)) >= (l_186 |= (((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))(0x32C16FF7666B4555L, 0L)), 0x33AAB27D90806AD6L, 0x150A55D307A3123DL, (-3L), 0x2E1E26954D5C3D96L, 0x2B8A3C79E369C8CFL, 0x79F1E3D1283D66D5L)).s0 == ((safe_add_func_uint64_t_u_u((safe_unary_minus_func_int64_t_s(((void*)0 == l_159))), ((safe_rshift_func_uint16_t_u_u(((safe_add_func_int32_t_s_s((safe_div_func_int8_t_s_s((p_784->g_161.x || p_142), GROUP_DIVERGE(0, 1))), l_160.se)) , p_784->g_16), 10)) ^ p_784->l_comm_values[(safe_mod_func_uint32_t_u_u(p_784->tid, 3))]))) >= 0x056195176A3A7D8DL))))))), 0x7EL)))), 15)) , l_165.s2), (-7L), 0x017176E7L, 0x20CF3850L)).wwxzzwzxzxzwzyyz)).s9f69, ((VECTOR(int32_t, 4))(0x1EC5AFB6L))))))).hi))).s0)
    { /* block id: 70 */
        for (p_142 = (-14); (p_142 > 26); p_142 = safe_add_func_uint8_t_u_u(p_142, 1))
        { /* block id: 73 */
            if (l_162.x)
                break;
        }
        if ((atomic_inc(&p_784->g_atomic_input[26 * get_linear_group_id() + 25]) == 4))
        { /* block id: 77 */
            int32_t l_189 = 0x31FC9802L;
            VECTOR(int32_t, 8) l_190 = (VECTOR(int32_t, 8))(0x35739DC3L, (VECTOR(int32_t, 4))(0x35739DC3L, (VECTOR(int32_t, 2))(0x35739DC3L, 0x2C4A7598L), 0x2C4A7598L), 0x2C4A7598L, 0x35739DC3L, 0x2C4A7598L);
            uint8_t l_191[4][4] = {{255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL}};
            uint32_t l_194[9] = {1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL};
            uint8_t l_195 = 254UL;
            int32_t *l_237 = (void*)0;
            int32_t *l_238 = (void*)0;
            int i, j;
            if ((l_195 = (l_189 , ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(l_190.s67)), ((VECTOR(int32_t, 4))(1L, ((l_191[2][0]--) , l_194[7]), 1L, 0x4D1AD4BDL)), 0L, 0x208BE86FL)).s4)))
            { /* block id: 80 */
                uint8_t l_196 = 0x6AL;
                l_196--;
            }
            else
            { /* block id: 82 */
                uint16_t l_199[9][3] = {{65535UL,65533UL,65535UL},{65535UL,65533UL,65535UL},{65535UL,65533UL,65535UL},{65535UL,65533UL,65535UL},{65535UL,65533UL,65535UL},{65535UL,65533UL,65535UL},{65535UL,65533UL,65535UL},{65535UL,65533UL,65535UL},{65535UL,65533UL,65535UL}};
                int i, j;
                if (l_199[0][0])
                { /* block id: 83 */
                    VECTOR(int32_t, 16) l_200 = (VECTOR(int32_t, 16))(0x789EDA74L, (VECTOR(int32_t, 4))(0x789EDA74L, (VECTOR(int32_t, 2))(0x789EDA74L, 0x596CCF5CL), 0x596CCF5CL), 0x596CCF5CL, 0x789EDA74L, 0x596CCF5CL, (VECTOR(int32_t, 2))(0x789EDA74L, 0x596CCF5CL), (VECTOR(int32_t, 2))(0x789EDA74L, 0x596CCF5CL), 0x789EDA74L, 0x596CCF5CL, 0x789EDA74L, 0x596CCF5CL);
                    int8_t l_214 = 0x78L;
                    int i;
                    l_189 |= ((VECTOR(int32_t, 2))(l_200.s82)).odd;
                    for (l_200.s6 = 0; (l_200.s6 <= (-28)); --l_200.s6)
                    { /* block id: 87 */
                        uint64_t l_203[3];
                        int8_t l_206 = 0x64L;
                        int32_t l_207 = 1L;
                        int8_t l_208 = 4L;
                        uint64_t l_209 = 18446744073709551615UL;
                        VECTOR(int32_t, 16) l_212 = (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x07E54C48L), 0x07E54C48L), 0x07E54C48L, 0L, 0x07E54C48L, (VECTOR(int32_t, 2))(0L, 0x07E54C48L), (VECTOR(int32_t, 2))(0L, 0x07E54C48L), 0L, 0x07E54C48L, 0L, 0x07E54C48L);
                        VECTOR(int32_t, 2) l_213 = (VECTOR(int32_t, 2))(0L, (-2L));
                        int i;
                        for (i = 0; i < 3; i++)
                            l_203[i] = 18446744073709551613UL;
                        l_203[2]++;
                        ++l_209;
                        l_189 |= ((VECTOR(int32_t, 2))(mul_hi(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(l_212.scf)), 1L, 1L)).even, ((VECTOR(int32_t, 2))(l_213.yx))))).even;
                        l_189 ^= 2L;
                    }
                    l_190.s5 &= l_214;
                }
                else
                { /* block id: 94 */
                    uint16_t l_215[5] = {0UL,0UL,0UL,0UL,0UL};
                    int64_t l_234 = 0x77A4CD5AEAFD40EEL;
                    int16_t l_235 = 0x2A39L;
                    VECTOR(uint64_t, 8) l_236 = (VECTOR(uint64_t, 8))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 0x741F752DD46F2F6BL), 0x741F752DD46F2F6BL), 0x741F752DD46F2F6BL, 1UL, 0x741F752DD46F2F6BL);
                    int i;
                    ++l_215[4];
                    for (l_215[4] = 0; (l_215[4] < 53); l_215[4] = safe_add_func_int32_t_s_s(l_215[4], 1))
                    { /* block id: 98 */
                        int32_t l_220 = (-5L);
                        uint32_t l_221 = 4294967292UL;
                        int8_t l_222 = 3L;
                        int8_t l_223 = 0x6BL;
                        int32_t l_224 = 0L;
                        VECTOR(uint64_t, 4) l_225 = (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 18446744073709551608UL), 18446744073709551608UL);
                        int8_t l_226 = 0x25L;
                        VECTOR(int64_t, 4) l_227 = (VECTOR(int64_t, 4))(0x49BAF9D1F0E5CD17L, (VECTOR(int64_t, 2))(0x49BAF9D1F0E5CD17L, 0x728AACDA7B0075A8L), 0x728AACDA7B0075A8L);
                        VECTOR(int32_t, 4) l_228 = (VECTOR(int32_t, 4))(0x66EE9E94L, (VECTOR(int32_t, 2))(0x66EE9E94L, 0x6380F945L), 0x6380F945L);
                        int8_t l_229 = 0x71L;
                        int32_t l_230 = (-9L);
                        uint64_t l_231 = 0x343139D346875B5FL;
                        uint32_t l_232 = 0xD331418DL;
                        int32_t l_233 = 0x070B2A59L;
                        int i;
                        l_190.s1 = l_220;
                        l_233 = (l_221 , (l_222 , ((VECTOR(int32_t, 2))(add_sat(((VECTOR(int32_t, 16))(rhadd(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 8))(l_223, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(max(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(min(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(6L, 0x0073F68BL)))).yyxx, ((VECTOR(int32_t, 8))(l_224, ((((VECTOR(uint64_t, 8))(min(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 16))(l_225.ywxyxwxyyyzwzxwy)).sb2fd)).xwzxwxyy, (uint64_t)l_226))).s4 , ((VECTOR(int64_t, 2))(l_227.xx)).lo) , (-10L)), ((VECTOR(int32_t, 2))(3L, 0x377D7F2AL)).odd, 0x6AC3B5ACL, (-5L), ((VECTOR(int32_t, 2))(l_228.yx)), (-10L))).even))), (l_190.s4 = (l_189 &= 1L)), l_229, l_230, ((VECTOR(int32_t, 4))(0x4A9C0FA1L)), 0L, ((VECTOR(int32_t, 4))(0L)))).even)).even, ((VECTOR(int32_t, 4))(0L))))))).hi)), l_231, l_232, 0x701ECD67L, 3L, (-1L))).s5213116623767607, ((VECTOR(int32_t, 16))(0x7AF2A45AL))))))), ((VECTOR(int32_t, 16))((-1L)))))).s60, ((VECTOR(int32_t, 2))((-1L)))))).odd));
                    }
                    l_235 ^= l_234;
                    l_236.s2 = (-9L);
                }
            }
            l_238 = (l_237 = l_237);
            unsigned int result = 0;
            result += l_189;
            result += l_190.s7;
            result += l_190.s6;
            result += l_190.s5;
            result += l_190.s4;
            result += l_190.s3;
            result += l_190.s2;
            result += l_190.s1;
            result += l_190.s0;
            int l_191_i0, l_191_i1;
            for (l_191_i0 = 0; l_191_i0 < 4; l_191_i0++) {
                for (l_191_i1 = 0; l_191_i1 < 4; l_191_i1++) {
                    result += l_191[l_191_i0][l_191_i1];
                }
            }
            int l_194_i0;
            for (l_194_i0 = 0; l_194_i0 < 9; l_194_i0++) {
                result += l_194[l_194_i0];
            }
            result += l_195;
            atomic_add(&p_784->g_special_values[26 * get_linear_group_id() + 25], result);
        }
        else
        { /* block id: 110 */
            (1 + 1);
        }
    }
    else
    { /* block id: 113 */
        int16_t **l_242 = (void*)0;
        int16_t ***l_249[1][8][10] = {{{(void*)0,&l_242,(void*)0,&l_242,(void*)0,&l_242,&l_242,(void*)0,&l_242,&l_242},{(void*)0,&l_242,(void*)0,&l_242,(void*)0,&l_242,&l_242,(void*)0,&l_242,&l_242},{(void*)0,&l_242,(void*)0,&l_242,(void*)0,&l_242,&l_242,(void*)0,&l_242,&l_242},{(void*)0,&l_242,(void*)0,&l_242,(void*)0,&l_242,&l_242,(void*)0,&l_242,&l_242},{(void*)0,&l_242,(void*)0,&l_242,(void*)0,&l_242,&l_242,(void*)0,&l_242,&l_242},{(void*)0,&l_242,(void*)0,&l_242,(void*)0,&l_242,&l_242,(void*)0,&l_242,&l_242},{(void*)0,&l_242,(void*)0,&l_242,(void*)0,&l_242,&l_242,(void*)0,&l_242,&l_242},{(void*)0,&l_242,(void*)0,&l_242,(void*)0,&l_242,&l_242,(void*)0,&l_242,&l_242}}};
        VECTOR(int16_t, 16) l_255 = (VECTOR(int16_t, 16))(0x576DL, (VECTOR(int16_t, 4))(0x576DL, (VECTOR(int16_t, 2))(0x576DL, (-3L)), (-3L)), (-3L), 0x576DL, (-3L), (VECTOR(int16_t, 2))(0x576DL, (-3L)), (VECTOR(int16_t, 2))(0x576DL, (-3L)), 0x576DL, (-3L), 0x576DL, (-3L));
        uint64_t l_256 = 18446744073709551615UL;
        uint8_t *l_261 = &p_784->g_16;
        int32_t l_262 = 0x206C5AA2L;
        uint64_t *l_263 = &p_784->g_264;
        int32_t l_265[6] = {0x41E2D72DL,0x0116C57BL,0x41E2D72DL,0x41E2D72DL,0x0116C57BL,0x41E2D72DL};
        int i, j, k;
        (*p_784->g_147) = (((((l_241[2][2] = p_784->g_239) != l_242) , &l_174) != ((safe_div_func_uint16_t_u_u((0x15A1C812790765E2L == (safe_rshift_func_int16_t_s_u((((p_784->g_48 <= p_140) >= (safe_sub_func_uint32_t_u_u((65532UL == ((l_250 = &p_784->g_240) == &l_174)), p_784->g_164.s0))) & p_140), GROUP_DIVERGE(0, 1)))), p_142)) , p_784->g_251)) < p_140);
        (*p_784->g_147) = (safe_mul_func_int16_t_s_s((l_254 = (*p_784->g_240)), ((((l_162.x | ((p_784->g_266 = (l_265[3] = (((l_256 |= (((VECTOR(int16_t, 8))(((VECTOR(int16_t, 16))(l_255.s083cf007212548a5)).hi)).s4 && p_784->g_48)) >= l_255.sf) < (((*l_263) = ((safe_lshift_func_uint16_t_u_s(p_784->l_comm_values[(safe_mod_func_uint32_t_u_u(p_784->tid, 3))], (safe_lshift_func_int8_t_s_s(p_140, 7)))) >= (p_142 == ((((void*)0 != l_261) , l_262) <= GROUP_DIVERGE(0, 1))))) < 0x288C40D4FEF44D4CL)))) , p_784->g_16)) || p_141) , l_267) < (*p_784->g_147))));
    }
    return l_165.sc;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global volatile int *g_atomic_reduction, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[26];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 26; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[26];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 26; i++)
            l_special_values[i] = 0;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    __local int64_t l_comm_values[3];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 3; i++)
            l_comm_values[i] = 1;
    struct S0 c_785;
    struct S0* p_784 = &c_785;
    struct S0 c_786 = {
        0UL, // p_784->g_12
        0x54L, // p_784->g_16
        18446744073709551615UL, // p_784->g_27
        1L, // p_784->g_48
        (-7L), // p_784->g_51
        (VECTOR(int32_t, 16))(0x6960EC7AL, (VECTOR(int32_t, 4))(0x6960EC7AL, (VECTOR(int32_t, 2))(0x6960EC7AL, 2L), 2L), 2L, 0x6960EC7AL, 2L, (VECTOR(int32_t, 2))(0x6960EC7AL, 2L), (VECTOR(int32_t, 2))(0x6960EC7AL, 2L), 0x6960EC7AL, 2L, 0x6960EC7AL, 2L), // p_784->g_100
        0x8F77E60D2C52FFF7L, // p_784->g_108
        (void*)0, // p_784->g_135
        (void*)0, // p_784->g_147
        0x03L, // p_784->g_155
        (VECTOR(int32_t, 2))(0x2566A7C8L, 0x5B1B1804L), // p_784->g_161
        (VECTOR(int32_t, 16))(0x32EA050EL, (VECTOR(int32_t, 4))(0x32EA050EL, (VECTOR(int32_t, 2))(0x32EA050EL, 8L), 8L), 8L, 0x32EA050EL, 8L, (VECTOR(int32_t, 2))(0x32EA050EL, 8L), (VECTOR(int32_t, 2))(0x32EA050EL, 8L), 0x32EA050EL, 8L, 0x32EA050EL, 8L), // p_784->g_164
        &p_784->g_48, // p_784->g_240
        &p_784->g_240, // p_784->g_239
        (void*)0, // p_784->g_251
        0UL, // p_784->g_264
        0x15E02292L, // p_784->g_266
        (VECTOR(uint64_t, 16))(0x7CEFE5D314C61F8AL, (VECTOR(uint64_t, 4))(0x7CEFE5D314C61F8AL, (VECTOR(uint64_t, 2))(0x7CEFE5D314C61F8AL, 0xED07A093D23DAA2BL), 0xED07A093D23DAA2BL), 0xED07A093D23DAA2BL, 0x7CEFE5D314C61F8AL, 0xED07A093D23DAA2BL, (VECTOR(uint64_t, 2))(0x7CEFE5D314C61F8AL, 0xED07A093D23DAA2BL), (VECTOR(uint64_t, 2))(0x7CEFE5D314C61F8AL, 0xED07A093D23DAA2BL), 0x7CEFE5D314C61F8AL, 0xED07A093D23DAA2BL, 0x7CEFE5D314C61F8AL, 0xED07A093D23DAA2BL), // p_784->g_271
        &p_784->g_51, // p_784->g_295
        {{{0x123524ABL,0x123524ABL,0x123524ABL,0x123524ABL},{0x123524ABL,0x123524ABL,0x123524ABL,0x123524ABL},{0x123524ABL,0x123524ABL,0x123524ABL,0x123524ABL}},{{0x123524ABL,0x123524ABL,0x123524ABL,0x123524ABL},{0x123524ABL,0x123524ABL,0x123524ABL,0x123524ABL},{0x123524ABL,0x123524ABL,0x123524ABL,0x123524ABL}},{{0x123524ABL,0x123524ABL,0x123524ABL,0x123524ABL},{0x123524ABL,0x123524ABL,0x123524ABL,0x123524ABL},{0x123524ABL,0x123524ABL,0x123524ABL,0x123524ABL}}}, // p_784->g_299
        (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 0xEDE4L), 0xEDE4L), // p_784->g_393
        (VECTOR(uint16_t, 2))(1UL, 0UL), // p_784->g_394
        (VECTOR(uint16_t, 4))(0xAA61L, (VECTOR(uint16_t, 2))(0xAA61L, 0x0B61L), 0x0B61L), // p_784->g_396
        (VECTOR(uint16_t, 4))(0x4218L, (VECTOR(uint16_t, 2))(0x4218L, 3UL), 3UL), // p_784->g_397
        (void*)0, // p_784->g_475
        0x5E67L, // p_784->g_520
        {{0x71L,0L,0x71L,0x71L,0L},{0x71L,0L,0x71L,0x71L,0L},{0x71L,0L,0x71L,0x71L,0L}}, // p_784->g_530
        &p_784->g_530[0][4], // p_784->g_529
        (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 18446744073709551615UL), 18446744073709551615UL), // p_784->g_535
        (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 255UL), 255UL), // p_784->g_558
        (VECTOR(uint8_t, 2))(252UL, 0x8AL), // p_784->g_559
        1UL, // p_784->g_565
        (void*)0, // p_784->g_584
        (VECTOR(int16_t, 4))(0x114FL, (VECTOR(int16_t, 2))(0x114FL, 0x20D4L), 0x20D4L), // p_784->g_613
        (VECTOR(int16_t, 2))(0x5867L, 1L), // p_784->g_621
        (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), (-4L)), (-4L)), // p_784->g_639
        &p_784->g_147, // p_784->g_650
        (VECTOR(uint64_t, 2))(0xAABA63FCDCEEEBB1L, 18446744073709551610UL), // p_784->g_699
        (VECTOR(uint32_t, 2))(1UL, 3UL), // p_784->g_700
        (VECTOR(uint32_t, 2))(0xFC3F2308L, 1UL), // p_784->g_702
        (VECTOR(uint32_t, 16))(0x78AC3ACEL, (VECTOR(uint32_t, 4))(0x78AC3ACEL, (VECTOR(uint32_t, 2))(0x78AC3ACEL, 4294967291UL), 4294967291UL), 4294967291UL, 0x78AC3ACEL, 4294967291UL, (VECTOR(uint32_t, 2))(0x78AC3ACEL, 4294967291UL), (VECTOR(uint32_t, 2))(0x78AC3ACEL, 4294967291UL), 0x78AC3ACEL, 4294967291UL, 0x78AC3ACEL, 4294967291UL), // p_784->g_704
        (VECTOR(uint8_t, 2))(0x05L, 1UL), // p_784->g_726
        (VECTOR(uint64_t, 16))(4UL, (VECTOR(uint64_t, 4))(4UL, (VECTOR(uint64_t, 2))(4UL, 0x47F6BDF7CB2AB211L), 0x47F6BDF7CB2AB211L), 0x47F6BDF7CB2AB211L, 4UL, 0x47F6BDF7CB2AB211L, (VECTOR(uint64_t, 2))(4UL, 0x47F6BDF7CB2AB211L), (VECTOR(uint64_t, 2))(4UL, 0x47F6BDF7CB2AB211L), 4UL, 0x47F6BDF7CB2AB211L, 4UL, 0x47F6BDF7CB2AB211L), // p_784->g_736
        (VECTOR(int8_t, 2))((-1L), 1L), // p_784->g_749
        (VECTOR(int8_t, 4))(0x06L, (VECTOR(int8_t, 2))(0x06L, 1L), 1L), // p_784->g_750
        (VECTOR(int8_t, 4))(0x14L, (VECTOR(int8_t, 2))(0x14L, (-5L)), (-5L)), // p_784->g_754
        {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}}, // p_784->g_770
        {{{(void*)0,(void*)0}},{{(void*)0,(void*)0}}}, // p_784->g_772
        (VECTOR(uint32_t, 4))(4294967290UL, (VECTOR(uint32_t, 2))(4294967290UL, 0xDC423276L), 0xDC423276L), // p_784->g_776
        4L, // p_784->g_782
        4294967287UL, // p_784->g_783
        0, // p_784->v_collective
        sequence_input[get_global_id(0)], // p_784->global_0_offset
        sequence_input[get_global_id(1)], // p_784->global_1_offset
        sequence_input[get_global_id(2)], // p_784->global_2_offset
        sequence_input[get_local_id(0)], // p_784->local_0_offset
        sequence_input[get_local_id(1)], // p_784->local_1_offset
        sequence_input[get_local_id(2)], // p_784->local_2_offset
        sequence_input[get_group_id(0)], // p_784->group_0_offset
        sequence_input[get_group_id(1)], // p_784->group_1_offset
        sequence_input[get_group_id(2)], // p_784->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 3)), permutations[0][get_linear_local_id()])), // p_784->tid
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_785 = c_786;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_784);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_784->g_12, "p_784->g_12", print_hash_value);
    transparent_crc(p_784->g_16, "p_784->g_16", print_hash_value);
    transparent_crc(p_784->g_27, "p_784->g_27", print_hash_value);
    transparent_crc(p_784->g_48, "p_784->g_48", print_hash_value);
    transparent_crc(p_784->g_51, "p_784->g_51", print_hash_value);
    transparent_crc(p_784->g_100.s0, "p_784->g_100.s0", print_hash_value);
    transparent_crc(p_784->g_100.s1, "p_784->g_100.s1", print_hash_value);
    transparent_crc(p_784->g_100.s2, "p_784->g_100.s2", print_hash_value);
    transparent_crc(p_784->g_100.s3, "p_784->g_100.s3", print_hash_value);
    transparent_crc(p_784->g_100.s4, "p_784->g_100.s4", print_hash_value);
    transparent_crc(p_784->g_100.s5, "p_784->g_100.s5", print_hash_value);
    transparent_crc(p_784->g_100.s6, "p_784->g_100.s6", print_hash_value);
    transparent_crc(p_784->g_100.s7, "p_784->g_100.s7", print_hash_value);
    transparent_crc(p_784->g_100.s8, "p_784->g_100.s8", print_hash_value);
    transparent_crc(p_784->g_100.s9, "p_784->g_100.s9", print_hash_value);
    transparent_crc(p_784->g_100.sa, "p_784->g_100.sa", print_hash_value);
    transparent_crc(p_784->g_100.sb, "p_784->g_100.sb", print_hash_value);
    transparent_crc(p_784->g_100.sc, "p_784->g_100.sc", print_hash_value);
    transparent_crc(p_784->g_100.sd, "p_784->g_100.sd", print_hash_value);
    transparent_crc(p_784->g_100.se, "p_784->g_100.se", print_hash_value);
    transparent_crc(p_784->g_100.sf, "p_784->g_100.sf", print_hash_value);
    transparent_crc(p_784->g_108, "p_784->g_108", print_hash_value);
    transparent_crc(p_784->g_155, "p_784->g_155", print_hash_value);
    transparent_crc(p_784->g_161.x, "p_784->g_161.x", print_hash_value);
    transparent_crc(p_784->g_161.y, "p_784->g_161.y", print_hash_value);
    transparent_crc(p_784->g_164.s0, "p_784->g_164.s0", print_hash_value);
    transparent_crc(p_784->g_164.s1, "p_784->g_164.s1", print_hash_value);
    transparent_crc(p_784->g_164.s2, "p_784->g_164.s2", print_hash_value);
    transparent_crc(p_784->g_164.s3, "p_784->g_164.s3", print_hash_value);
    transparent_crc(p_784->g_164.s4, "p_784->g_164.s4", print_hash_value);
    transparent_crc(p_784->g_164.s5, "p_784->g_164.s5", print_hash_value);
    transparent_crc(p_784->g_164.s6, "p_784->g_164.s6", print_hash_value);
    transparent_crc(p_784->g_164.s7, "p_784->g_164.s7", print_hash_value);
    transparent_crc(p_784->g_164.s8, "p_784->g_164.s8", print_hash_value);
    transparent_crc(p_784->g_164.s9, "p_784->g_164.s9", print_hash_value);
    transparent_crc(p_784->g_164.sa, "p_784->g_164.sa", print_hash_value);
    transparent_crc(p_784->g_164.sb, "p_784->g_164.sb", print_hash_value);
    transparent_crc(p_784->g_164.sc, "p_784->g_164.sc", print_hash_value);
    transparent_crc(p_784->g_164.sd, "p_784->g_164.sd", print_hash_value);
    transparent_crc(p_784->g_164.se, "p_784->g_164.se", print_hash_value);
    transparent_crc(p_784->g_164.sf, "p_784->g_164.sf", print_hash_value);
    transparent_crc(p_784->g_264, "p_784->g_264", print_hash_value);
    transparent_crc(p_784->g_266, "p_784->g_266", print_hash_value);
    transparent_crc(p_784->g_271.s0, "p_784->g_271.s0", print_hash_value);
    transparent_crc(p_784->g_271.s1, "p_784->g_271.s1", print_hash_value);
    transparent_crc(p_784->g_271.s2, "p_784->g_271.s2", print_hash_value);
    transparent_crc(p_784->g_271.s3, "p_784->g_271.s3", print_hash_value);
    transparent_crc(p_784->g_271.s4, "p_784->g_271.s4", print_hash_value);
    transparent_crc(p_784->g_271.s5, "p_784->g_271.s5", print_hash_value);
    transparent_crc(p_784->g_271.s6, "p_784->g_271.s6", print_hash_value);
    transparent_crc(p_784->g_271.s7, "p_784->g_271.s7", print_hash_value);
    transparent_crc(p_784->g_271.s8, "p_784->g_271.s8", print_hash_value);
    transparent_crc(p_784->g_271.s9, "p_784->g_271.s9", print_hash_value);
    transparent_crc(p_784->g_271.sa, "p_784->g_271.sa", print_hash_value);
    transparent_crc(p_784->g_271.sb, "p_784->g_271.sb", print_hash_value);
    transparent_crc(p_784->g_271.sc, "p_784->g_271.sc", print_hash_value);
    transparent_crc(p_784->g_271.sd, "p_784->g_271.sd", print_hash_value);
    transparent_crc(p_784->g_271.se, "p_784->g_271.se", print_hash_value);
    transparent_crc(p_784->g_271.sf, "p_784->g_271.sf", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 3; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_784->g_299[i][j][k], "p_784->g_299[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_784->g_393.x, "p_784->g_393.x", print_hash_value);
    transparent_crc(p_784->g_393.y, "p_784->g_393.y", print_hash_value);
    transparent_crc(p_784->g_393.z, "p_784->g_393.z", print_hash_value);
    transparent_crc(p_784->g_393.w, "p_784->g_393.w", print_hash_value);
    transparent_crc(p_784->g_394.x, "p_784->g_394.x", print_hash_value);
    transparent_crc(p_784->g_394.y, "p_784->g_394.y", print_hash_value);
    transparent_crc(p_784->g_396.x, "p_784->g_396.x", print_hash_value);
    transparent_crc(p_784->g_396.y, "p_784->g_396.y", print_hash_value);
    transparent_crc(p_784->g_396.z, "p_784->g_396.z", print_hash_value);
    transparent_crc(p_784->g_396.w, "p_784->g_396.w", print_hash_value);
    transparent_crc(p_784->g_397.x, "p_784->g_397.x", print_hash_value);
    transparent_crc(p_784->g_397.y, "p_784->g_397.y", print_hash_value);
    transparent_crc(p_784->g_397.z, "p_784->g_397.z", print_hash_value);
    transparent_crc(p_784->g_397.w, "p_784->g_397.w", print_hash_value);
    transparent_crc(p_784->g_520, "p_784->g_520", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_784->g_530[i][j], "p_784->g_530[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_784->g_535.x, "p_784->g_535.x", print_hash_value);
    transparent_crc(p_784->g_535.y, "p_784->g_535.y", print_hash_value);
    transparent_crc(p_784->g_535.z, "p_784->g_535.z", print_hash_value);
    transparent_crc(p_784->g_535.w, "p_784->g_535.w", print_hash_value);
    transparent_crc(p_784->g_558.x, "p_784->g_558.x", print_hash_value);
    transparent_crc(p_784->g_558.y, "p_784->g_558.y", print_hash_value);
    transparent_crc(p_784->g_558.z, "p_784->g_558.z", print_hash_value);
    transparent_crc(p_784->g_558.w, "p_784->g_558.w", print_hash_value);
    transparent_crc(p_784->g_559.x, "p_784->g_559.x", print_hash_value);
    transparent_crc(p_784->g_559.y, "p_784->g_559.y", print_hash_value);
    transparent_crc(p_784->g_565, "p_784->g_565", print_hash_value);
    transparent_crc(p_784->g_613.x, "p_784->g_613.x", print_hash_value);
    transparent_crc(p_784->g_613.y, "p_784->g_613.y", print_hash_value);
    transparent_crc(p_784->g_613.z, "p_784->g_613.z", print_hash_value);
    transparent_crc(p_784->g_613.w, "p_784->g_613.w", print_hash_value);
    transparent_crc(p_784->g_621.x, "p_784->g_621.x", print_hash_value);
    transparent_crc(p_784->g_621.y, "p_784->g_621.y", print_hash_value);
    transparent_crc(p_784->g_639.x, "p_784->g_639.x", print_hash_value);
    transparent_crc(p_784->g_639.y, "p_784->g_639.y", print_hash_value);
    transparent_crc(p_784->g_639.z, "p_784->g_639.z", print_hash_value);
    transparent_crc(p_784->g_639.w, "p_784->g_639.w", print_hash_value);
    transparent_crc(p_784->g_699.x, "p_784->g_699.x", print_hash_value);
    transparent_crc(p_784->g_699.y, "p_784->g_699.y", print_hash_value);
    transparent_crc(p_784->g_700.x, "p_784->g_700.x", print_hash_value);
    transparent_crc(p_784->g_700.y, "p_784->g_700.y", print_hash_value);
    transparent_crc(p_784->g_702.x, "p_784->g_702.x", print_hash_value);
    transparent_crc(p_784->g_702.y, "p_784->g_702.y", print_hash_value);
    transparent_crc(p_784->g_704.s0, "p_784->g_704.s0", print_hash_value);
    transparent_crc(p_784->g_704.s1, "p_784->g_704.s1", print_hash_value);
    transparent_crc(p_784->g_704.s2, "p_784->g_704.s2", print_hash_value);
    transparent_crc(p_784->g_704.s3, "p_784->g_704.s3", print_hash_value);
    transparent_crc(p_784->g_704.s4, "p_784->g_704.s4", print_hash_value);
    transparent_crc(p_784->g_704.s5, "p_784->g_704.s5", print_hash_value);
    transparent_crc(p_784->g_704.s6, "p_784->g_704.s6", print_hash_value);
    transparent_crc(p_784->g_704.s7, "p_784->g_704.s7", print_hash_value);
    transparent_crc(p_784->g_704.s8, "p_784->g_704.s8", print_hash_value);
    transparent_crc(p_784->g_704.s9, "p_784->g_704.s9", print_hash_value);
    transparent_crc(p_784->g_704.sa, "p_784->g_704.sa", print_hash_value);
    transparent_crc(p_784->g_704.sb, "p_784->g_704.sb", print_hash_value);
    transparent_crc(p_784->g_704.sc, "p_784->g_704.sc", print_hash_value);
    transparent_crc(p_784->g_704.sd, "p_784->g_704.sd", print_hash_value);
    transparent_crc(p_784->g_704.se, "p_784->g_704.se", print_hash_value);
    transparent_crc(p_784->g_704.sf, "p_784->g_704.sf", print_hash_value);
    transparent_crc(p_784->g_726.x, "p_784->g_726.x", print_hash_value);
    transparent_crc(p_784->g_726.y, "p_784->g_726.y", print_hash_value);
    transparent_crc(p_784->g_736.s0, "p_784->g_736.s0", print_hash_value);
    transparent_crc(p_784->g_736.s1, "p_784->g_736.s1", print_hash_value);
    transparent_crc(p_784->g_736.s2, "p_784->g_736.s2", print_hash_value);
    transparent_crc(p_784->g_736.s3, "p_784->g_736.s3", print_hash_value);
    transparent_crc(p_784->g_736.s4, "p_784->g_736.s4", print_hash_value);
    transparent_crc(p_784->g_736.s5, "p_784->g_736.s5", print_hash_value);
    transparent_crc(p_784->g_736.s6, "p_784->g_736.s6", print_hash_value);
    transparent_crc(p_784->g_736.s7, "p_784->g_736.s7", print_hash_value);
    transparent_crc(p_784->g_736.s8, "p_784->g_736.s8", print_hash_value);
    transparent_crc(p_784->g_736.s9, "p_784->g_736.s9", print_hash_value);
    transparent_crc(p_784->g_736.sa, "p_784->g_736.sa", print_hash_value);
    transparent_crc(p_784->g_736.sb, "p_784->g_736.sb", print_hash_value);
    transparent_crc(p_784->g_736.sc, "p_784->g_736.sc", print_hash_value);
    transparent_crc(p_784->g_736.sd, "p_784->g_736.sd", print_hash_value);
    transparent_crc(p_784->g_736.se, "p_784->g_736.se", print_hash_value);
    transparent_crc(p_784->g_736.sf, "p_784->g_736.sf", print_hash_value);
    transparent_crc(p_784->g_749.x, "p_784->g_749.x", print_hash_value);
    transparent_crc(p_784->g_749.y, "p_784->g_749.y", print_hash_value);
    transparent_crc(p_784->g_750.x, "p_784->g_750.x", print_hash_value);
    transparent_crc(p_784->g_750.y, "p_784->g_750.y", print_hash_value);
    transparent_crc(p_784->g_750.z, "p_784->g_750.z", print_hash_value);
    transparent_crc(p_784->g_750.w, "p_784->g_750.w", print_hash_value);
    transparent_crc(p_784->g_754.x, "p_784->g_754.x", print_hash_value);
    transparent_crc(p_784->g_754.y, "p_784->g_754.y", print_hash_value);
    transparent_crc(p_784->g_754.z, "p_784->g_754.z", print_hash_value);
    transparent_crc(p_784->g_754.w, "p_784->g_754.w", print_hash_value);
    transparent_crc(p_784->g_776.x, "p_784->g_776.x", print_hash_value);
    transparent_crc(p_784->g_776.y, "p_784->g_776.y", print_hash_value);
    transparent_crc(p_784->g_776.z, "p_784->g_776.z", print_hash_value);
    transparent_crc(p_784->g_776.w, "p_784->g_776.w", print_hash_value);
    transparent_crc(p_784->g_782, "p_784->g_782", print_hash_value);
    transparent_crc(p_784->g_783, "p_784->g_783", print_hash_value);
    transparent_crc(p_784->v_collective, "p_784->v_collective", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 26; i++)
            transparent_crc(p_784->g_special_values[i + 26 * get_linear_group_id()], "p_784->g_special_values[i + 26 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 26; i++)
            transparent_crc(p_784->l_special_values[i], "p_784->l_special_values[i]", print_hash_value);
    transparent_crc(p_784->l_comm_values[get_linear_local_id()], "p_784->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_784->g_comm_values[get_linear_group_id() * 3 + get_linear_local_id()], "p_784->g_comm_values[get_linear_group_id() * 3 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
