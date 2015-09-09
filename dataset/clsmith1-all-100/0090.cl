// --atomics 40 ---atomic_reductions ---fake_divergence ---inter_thread_comm -g 36,14,5 -l 3,1,1
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
{2,0,1}, // permutation 0
{1,2,0}, // permutation 1
{1,2,0}, // permutation 2
{2,0,1}, // permutation 3
{2,0,1}, // permutation 4
{2,0,1}, // permutation 5
{1,2,0}, // permutation 6
{1,0,2}, // permutation 7
{2,0,1}, // permutation 8
{1,0,2} // permutation 9
};

// Seed: 90

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    uint16_t g_3;
    int64_t g_6;
    uint64_t g_35;
    int32_t g_65;
    volatile uint32_t g_67;
    uint16_t *g_112[6][4];
    uint16_t **g_111;
    volatile VECTOR(int16_t, 4) g_116;
    int32_t *g_127;
    uint64_t g_135;
    VECTOR(int64_t, 16) g_147;
    VECTOR(uint32_t, 16) g_149;
    uint32_t g_156;
    int32_t g_160;
    int32_t * volatile g_159[1][3][6];
    int8_t g_167;
    uint64_t g_170;
    VECTOR(uint64_t, 16) g_187;
    VECTOR(int64_t, 4) g_199;
    int32_t **g_208;
    int32_t g_219[9];
    int32_t * volatile g_218[1];
    volatile VECTOR(int8_t, 4) g_230;
    uint32_t *g_232;
    uint16_t *** volatile g_273;
    int16_t g_313;
    int8_t g_322;
    uint32_t g_325[3];
    uint64_t *g_333;
    VECTOR(int64_t, 4) g_355;
    int32_t g_363;
    int32_t * volatile g_379;
    uint16_t g_395[6];
    VECTOR(int16_t, 4) g_408;
    VECTOR(uint16_t, 16) g_416;
    volatile VECTOR(uint16_t, 2) g_420;
    uint8_t g_481[8];
    VECTOR(int16_t, 2) g_498;
    volatile VECTOR(int64_t, 2) g_510;
    VECTOR(uint16_t, 2) g_523;
    int64_t g_528;
    VECTOR(int8_t, 8) g_572;
    volatile VECTOR(uint16_t, 8) g_574;
    volatile VECTOR(int32_t, 2) g_596;
    int32_t ***g_604;
    VECTOR(int32_t, 2) g_645;
    volatile VECTOR(int32_t, 16) g_699;
    uint64_t *g_715;
    uint64_t **g_714[7][8];
    int32_t * volatile g_741;
    VECTOR(int16_t, 8) g_748;
    VECTOR(uint16_t, 4) g_776;
    VECTOR(uint32_t, 2) g_780;
    int32_t * volatile g_831;
    volatile VECTOR(uint32_t, 4) g_840;
    uint8_t g_847;
    uint8_t *g_846;
    volatile VECTOR(int64_t, 8) g_859;
    uint64_t ***g_868;
    uint64_t ***g_869[1][6];
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
uint32_t  func_1(struct S0 * p_883);
int16_t  func_8(uint32_t  p_9, struct S0 * p_883);
uint16_t * func_14(uint16_t * p_15, struct S0 * p_883);
uint16_t * func_16(uint64_t  p_17, uint16_t * p_18, uint16_t * p_19, int32_t  p_20, uint16_t * p_21, struct S0 * p_883);
int16_t  func_24(uint16_t  p_25, uint16_t * p_26, uint16_t * p_27, struct S0 * p_883);
uint16_t ** func_28(uint64_t  p_29, uint16_t * p_30, uint32_t  p_31, int32_t  p_32, struct S0 * p_883);
uint16_t * func_38(int64_t  p_39, int64_t  p_40, int32_t  p_41, uint16_t * p_42, struct S0 * p_883);
int64_t  func_43(int64_t  p_44, uint64_t * p_45, uint32_t  p_46, uint32_t  p_47, uint64_t * p_48, struct S0 * p_883);
uint32_t  func_56(uint32_t  p_57, uint16_t ** p_58, uint16_t * p_59, struct S0 * p_883);
uint16_t ** func_60(uint64_t * p_61, uint16_t * p_62, struct S0 * p_883);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_883->g_3 p_883->g_6 p_883->l_comm_values p_883->g_35 p_883->g_67 p_883->g_comm_values p_883->g_65 p_883->g_111 p_883->g_112 p_883->g_116 p_883->g_147 p_883->g_149 p_883->g_156 p_883->g_127 p_883->g_187 p_883->g_199 p_883->g_160 p_883->g_219 p_883->g_208 p_883->g_230 p_883->g_167 p_883->g_135 p_883->g_273 p_883->g_313 p_883->g_232 p_883->g_170 p_883->g_322 p_883->g_325 p_883->g_831 p_883->g_748 p_883->g_379 p_883->g_481 p_883->g_840 p_883->g_846 p_883->g_604 p_883->g_847 p_883->g_859 p_883->g_355 p_883->g_780
 * writes: p_883->g_3 p_883->g_6 p_883->g_35 p_883->g_67 p_883->g_65 p_883->g_127 p_883->g_135 p_883->g_156 p_883->g_167 p_883->g_208 p_883->g_160 p_883->g_219 p_883->g_232 p_883->g_111 p_883->g_112 p_883->g_313 p_883->g_322 p_883->g_325 p_883->g_481 p_883->g_868 p_883->g_869 p_883->g_748 p_883->g_408
 */
uint32_t  func_1(struct S0 * p_883)
{ /* block id: 4 */
    uint16_t *l_2 = &p_883->g_3;
    VECTOR(int32_t, 8) l_7 = (VECTOR(int32_t, 8))(4L, (VECTOR(int32_t, 4))(4L, (VECTOR(int32_t, 2))(4L, 7L), 7L), 7L, 4L, 7L);
    uint16_t **l_280 = (void*)0;
    uint16_t **l_281 = (void*)0;
    uint16_t **l_282 = &p_883->g_112[0][2];
    int8_t *l_321 = &p_883->g_322;
    uint32_t *l_323 = (void*)0;
    uint32_t *l_324 = &p_883->g_325[2];
    int32_t *l_832[9][5] = {{&p_883->g_65,&p_883->g_65,(void*)0,&p_883->g_65,&p_883->g_65},{&p_883->g_65,&p_883->g_65,(void*)0,&p_883->g_65,&p_883->g_65},{&p_883->g_65,&p_883->g_65,(void*)0,&p_883->g_65,&p_883->g_65},{&p_883->g_65,&p_883->g_65,(void*)0,&p_883->g_65,&p_883->g_65},{&p_883->g_65,&p_883->g_65,(void*)0,&p_883->g_65,&p_883->g_65},{&p_883->g_65,&p_883->g_65,(void*)0,&p_883->g_65,&p_883->g_65},{&p_883->g_65,&p_883->g_65,(void*)0,&p_883->g_65,&p_883->g_65},{&p_883->g_65,&p_883->g_65,(void*)0,&p_883->g_65,&p_883->g_65},{&p_883->g_65,&p_883->g_65,(void*)0,&p_883->g_65,&p_883->g_65}};
    uint32_t l_835 = 0xA13E0726L;
    uint8_t *l_836 = &p_883->g_481[4];
    uint32_t l_856 = 2UL;
    uint64_t ***l_866 = (void*)0;
    uint64_t ****l_867[2][2] = {{&l_866,&l_866},{&l_866,&l_866}};
    uint64_t *l_872 = &p_883->g_135;
    int64_t l_873 = (-2L);
    int32_t ****l_874[9];
    int16_t *l_875 = (void*)0;
    int16_t *l_876 = (void*)0;
    int16_t *l_877 = &p_883->g_313;
    uint32_t l_878[8][5][6] = {{{0UL,0xA971CBACL,0xB339C7FCL,0x1BC8FCC1L,0xDBFF3E13L,0x8F0F218CL},{0UL,0xA971CBACL,0xB339C7FCL,0x1BC8FCC1L,0xDBFF3E13L,0x8F0F218CL},{0UL,0xA971CBACL,0xB339C7FCL,0x1BC8FCC1L,0xDBFF3E13L,0x8F0F218CL},{0UL,0xA971CBACL,0xB339C7FCL,0x1BC8FCC1L,0xDBFF3E13L,0x8F0F218CL},{0UL,0xA971CBACL,0xB339C7FCL,0x1BC8FCC1L,0xDBFF3E13L,0x8F0F218CL}},{{0UL,0xA971CBACL,0xB339C7FCL,0x1BC8FCC1L,0xDBFF3E13L,0x8F0F218CL},{0UL,0xA971CBACL,0xB339C7FCL,0x1BC8FCC1L,0xDBFF3E13L,0x8F0F218CL},{0UL,0xA971CBACL,0xB339C7FCL,0x1BC8FCC1L,0xDBFF3E13L,0x8F0F218CL},{0UL,0xA971CBACL,0xB339C7FCL,0x1BC8FCC1L,0xDBFF3E13L,0x8F0F218CL},{0UL,0xA971CBACL,0xB339C7FCL,0x1BC8FCC1L,0xDBFF3E13L,0x8F0F218CL}},{{0UL,0xA971CBACL,0xB339C7FCL,0x1BC8FCC1L,0xDBFF3E13L,0x8F0F218CL},{0UL,0xA971CBACL,0xB339C7FCL,0x1BC8FCC1L,0xDBFF3E13L,0x8F0F218CL},{0UL,0xA971CBACL,0xB339C7FCL,0x1BC8FCC1L,0xDBFF3E13L,0x8F0F218CL},{0UL,0xA971CBACL,0xB339C7FCL,0x1BC8FCC1L,0xDBFF3E13L,0x8F0F218CL},{0UL,0xA971CBACL,0xB339C7FCL,0x1BC8FCC1L,0xDBFF3E13L,0x8F0F218CL}},{{0UL,0xA971CBACL,0xB339C7FCL,0x1BC8FCC1L,0xDBFF3E13L,0x8F0F218CL},{0UL,0xA971CBACL,0xB339C7FCL,0x1BC8FCC1L,0xDBFF3E13L,0x8F0F218CL},{0UL,0xA971CBACL,0xB339C7FCL,0x1BC8FCC1L,0xDBFF3E13L,0x8F0F218CL},{0UL,0xA971CBACL,0xB339C7FCL,0x1BC8FCC1L,0xDBFF3E13L,0x8F0F218CL},{0UL,0xA971CBACL,0xB339C7FCL,0x1BC8FCC1L,0xDBFF3E13L,0x8F0F218CL}},{{0UL,0xA971CBACL,0xB339C7FCL,0x1BC8FCC1L,0xDBFF3E13L,0x8F0F218CL},{0UL,0xA971CBACL,0xB339C7FCL,0x1BC8FCC1L,0xDBFF3E13L,0x8F0F218CL},{0UL,0xA971CBACL,0xB339C7FCL,0x1BC8FCC1L,0xDBFF3E13L,0x8F0F218CL},{0UL,0xA971CBACL,0xB339C7FCL,0x1BC8FCC1L,0xDBFF3E13L,0x8F0F218CL},{0UL,0xA971CBACL,0xB339C7FCL,0x1BC8FCC1L,0xDBFF3E13L,0x8F0F218CL}},{{0UL,0xA971CBACL,0xB339C7FCL,0x1BC8FCC1L,0xDBFF3E13L,0x8F0F218CL},{0UL,0xA971CBACL,0xB339C7FCL,0x1BC8FCC1L,0xDBFF3E13L,0x8F0F218CL},{0UL,0xA971CBACL,0xB339C7FCL,0x1BC8FCC1L,0xDBFF3E13L,0x8F0F218CL},{0UL,0xA971CBACL,0xB339C7FCL,0x1BC8FCC1L,0xDBFF3E13L,0x8F0F218CL},{0UL,0xA971CBACL,0xB339C7FCL,0x1BC8FCC1L,0xDBFF3E13L,0x8F0F218CL}},{{0UL,0xA971CBACL,0xB339C7FCL,0x1BC8FCC1L,0xDBFF3E13L,0x8F0F218CL},{0UL,0xA971CBACL,0xB339C7FCL,0x1BC8FCC1L,0xDBFF3E13L,0x8F0F218CL},{0UL,0xA971CBACL,0xB339C7FCL,0x1BC8FCC1L,0xDBFF3E13L,0x8F0F218CL},{0UL,0xA971CBACL,0xB339C7FCL,0x1BC8FCC1L,0xDBFF3E13L,0x8F0F218CL},{0UL,0xA971CBACL,0xB339C7FCL,0x1BC8FCC1L,0xDBFF3E13L,0x8F0F218CL}},{{0UL,0xA971CBACL,0xB339C7FCL,0x1BC8FCC1L,0xDBFF3E13L,0x8F0F218CL},{0UL,0xA971CBACL,0xB339C7FCL,0x1BC8FCC1L,0xDBFF3E13L,0x8F0F218CL},{0UL,0xA971CBACL,0xB339C7FCL,0x1BC8FCC1L,0xDBFF3E13L,0x8F0F218CL},{0UL,0xA971CBACL,0xB339C7FCL,0x1BC8FCC1L,0xDBFF3E13L,0x8F0F218CL},{0UL,0xA971CBACL,0xB339C7FCL,0x1BC8FCC1L,0xDBFF3E13L,0x8F0F218CL}}};
    int8_t l_879 = 0x30L;
    uint8_t l_880 = 1UL;
    uint16_t l_881 = 7UL;
    uint32_t l_882[6][5][8] = {{{0UL,1UL,4294967295UL,0x5F5F2FA7L,0x1F75B1CCL,4UL,4294967295UL,3UL},{0UL,1UL,4294967295UL,0x5F5F2FA7L,0x1F75B1CCL,4UL,4294967295UL,3UL},{0UL,1UL,4294967295UL,0x5F5F2FA7L,0x1F75B1CCL,4UL,4294967295UL,3UL},{0UL,1UL,4294967295UL,0x5F5F2FA7L,0x1F75B1CCL,4UL,4294967295UL,3UL},{0UL,1UL,4294967295UL,0x5F5F2FA7L,0x1F75B1CCL,4UL,4294967295UL,3UL}},{{0UL,1UL,4294967295UL,0x5F5F2FA7L,0x1F75B1CCL,4UL,4294967295UL,3UL},{0UL,1UL,4294967295UL,0x5F5F2FA7L,0x1F75B1CCL,4UL,4294967295UL,3UL},{0UL,1UL,4294967295UL,0x5F5F2FA7L,0x1F75B1CCL,4UL,4294967295UL,3UL},{0UL,1UL,4294967295UL,0x5F5F2FA7L,0x1F75B1CCL,4UL,4294967295UL,3UL},{0UL,1UL,4294967295UL,0x5F5F2FA7L,0x1F75B1CCL,4UL,4294967295UL,3UL}},{{0UL,1UL,4294967295UL,0x5F5F2FA7L,0x1F75B1CCL,4UL,4294967295UL,3UL},{0UL,1UL,4294967295UL,0x5F5F2FA7L,0x1F75B1CCL,4UL,4294967295UL,3UL},{0UL,1UL,4294967295UL,0x5F5F2FA7L,0x1F75B1CCL,4UL,4294967295UL,3UL},{0UL,1UL,4294967295UL,0x5F5F2FA7L,0x1F75B1CCL,4UL,4294967295UL,3UL},{0UL,1UL,4294967295UL,0x5F5F2FA7L,0x1F75B1CCL,4UL,4294967295UL,3UL}},{{0UL,1UL,4294967295UL,0x5F5F2FA7L,0x1F75B1CCL,4UL,4294967295UL,3UL},{0UL,1UL,4294967295UL,0x5F5F2FA7L,0x1F75B1CCL,4UL,4294967295UL,3UL},{0UL,1UL,4294967295UL,0x5F5F2FA7L,0x1F75B1CCL,4UL,4294967295UL,3UL},{0UL,1UL,4294967295UL,0x5F5F2FA7L,0x1F75B1CCL,4UL,4294967295UL,3UL},{0UL,1UL,4294967295UL,0x5F5F2FA7L,0x1F75B1CCL,4UL,4294967295UL,3UL}},{{0UL,1UL,4294967295UL,0x5F5F2FA7L,0x1F75B1CCL,4UL,4294967295UL,3UL},{0UL,1UL,4294967295UL,0x5F5F2FA7L,0x1F75B1CCL,4UL,4294967295UL,3UL},{0UL,1UL,4294967295UL,0x5F5F2FA7L,0x1F75B1CCL,4UL,4294967295UL,3UL},{0UL,1UL,4294967295UL,0x5F5F2FA7L,0x1F75B1CCL,4UL,4294967295UL,3UL},{0UL,1UL,4294967295UL,0x5F5F2FA7L,0x1F75B1CCL,4UL,4294967295UL,3UL}},{{0UL,1UL,4294967295UL,0x5F5F2FA7L,0x1F75B1CCL,4UL,4294967295UL,3UL},{0UL,1UL,4294967295UL,0x5F5F2FA7L,0x1F75B1CCL,4UL,4294967295UL,3UL},{0UL,1UL,4294967295UL,0x5F5F2FA7L,0x1F75B1CCL,4UL,4294967295UL,3UL},{0UL,1UL,4294967295UL,0x5F5F2FA7L,0x1F75B1CCL,4UL,4294967295UL,3UL},{0UL,1UL,4294967295UL,0x5F5F2FA7L,0x1F75B1CCL,4UL,4294967295UL,3UL}}};
    int i, j, k;
    for (i = 0; i < 9; i++)
        l_874[i] = &p_883->g_604;
    (*p_883->g_831) = ((p_883->g_6 &= ((*l_2)++)) , ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(safe_clamp_func(VECTOR(int32_t, 16),int32_t,((VECTOR(int32_t, 16))(safe_clamp_func(VECTOR(int32_t, 16),int32_t,((VECTOR(int32_t, 8))(l_7.s41464716)).s6724234037102233, (int32_t)(((func_8((p_883->l_comm_values[(safe_mod_func_uint32_t_u_u(p_883->tid, 3))] , ((*l_324) &= (!(safe_lshift_func_int16_t_s_s(((safe_lshift_func_int8_t_s_s(((*l_321) &= (&p_883->g_3 == ((*l_282) = func_14(((*l_282) = func_16((safe_add_func_int16_t_s_s((p_883->l_comm_values[(safe_mod_func_uint32_t_u_u(p_883->tid, 3))] == (func_24(l_7.s0, l_2, l_2, p_883) == (p_883->g_187.s4 == 0UL))), 9UL)), l_2, p_883->g_112[0][2], l_7.s7, l_2, p_883)), p_883)))), 4)) != l_7.s4), 15))))), p_883) ^ p_883->g_147.sc) || 0x3CBE02E6L) , 6L), (int32_t)l_7.s4))), (int32_t)(*p_883->g_379), (int32_t)l_7.s4))).s6b)).odd);
    (**p_883->g_208) = (safe_div_func_int32_t_s_s((((((*l_321) = ((0x6FL < ((+GROUP_DIVERGE(0, 1)) , l_835)) || (!0xC8L))) != (++(*l_836))) , (safe_unary_minus_func_uint32_t_u(((VECTOR(uint32_t, 16))(p_883->g_840.xxwzwzyyzxzwzzwx)).sc))) >= (safe_mod_func_uint16_t_u_u(((safe_unary_minus_func_uint32_t_u((*p_883->g_232))) | (p_883->g_219[7] != (((safe_lshift_func_int8_t_s_u(0x43L, 2)) != (p_883->g_846 == &p_883->g_847)) == (***p_883->g_604)))), 1UL))), 0x1D43EBD7L));
    l_882[5][2][3] &= (((((safe_sub_func_int8_t_s_s((p_883->g_167 = ((safe_rshift_func_int8_t_s_u(((*p_883->g_846) != (safe_mod_func_int64_t_s_s((safe_rshift_func_int16_t_s_s((p_883->g_408.y = (((l_856 && ((p_883->g_748.s6 = (+((*l_877) &= (((VECTOR(int64_t, 16))(p_883->g_859.s1521034420725476)).s1 <= (((((safe_mul_func_int8_t_s_s(0x23L, (safe_add_func_uint32_t_u_u(((((safe_sub_func_uint64_t_u_u(p_883->g_199.w, ((253UL > (((p_883->g_868 = l_866) == (p_883->g_869[0][4] = &p_883->g_714[3][3])) , ((safe_div_func_uint64_t_u_u(((((*l_872) = (p_883->g_3 > ((p_883->g_481[3] , (-7L)) & 1L))) | p_883->g_355.w) > p_883->g_149.s0), l_873)) >= FAKE_DIVERGE(p_883->global_0_offset, get_global_id(0), 10)))) == FAKE_DIVERGE(p_883->local_2_offset, get_local_id(2), 10)))) , p_883->g_780.x) , &p_883->g_208) == (void*)0), (***p_883->g_604))))) , l_832[4][3]) == (**p_883->g_604)) , l_874[6]) != &p_883->g_604))))) < l_878[7][0][5])) && p_883->g_481[6]) || p_883->g_325[2])), p_883->g_147.sc)), l_879))), (*p_883->g_846))) || l_880)), (*p_883->g_846))) , (***p_883->g_604)) != (*p_883->g_232)) == l_881) != FAKE_DIVERGE(p_883->global_2_offset, get_global_id(2), 10));
    (*p_883->g_127) = 0x110A16DAL;
    return (*p_883->g_232);
}


/* ------------------------------------------ */
/* 
 * reads : p_883->g_322 p_883->g_127 p_883->g_160 p_883->g_831 p_883->g_219 p_883->g_748
 * writes: p_883->g_322 p_883->g_219
 */
int16_t  func_8(uint32_t  p_9, struct S0 * p_883)
{ /* block id: 110 */
    uint64_t *l_330[9][4][2] = {{{&p_883->g_135,&p_883->g_135},{&p_883->g_135,&p_883->g_135},{&p_883->g_135,&p_883->g_135},{&p_883->g_135,&p_883->g_135}},{{&p_883->g_135,&p_883->g_135},{&p_883->g_135,&p_883->g_135},{&p_883->g_135,&p_883->g_135},{&p_883->g_135,&p_883->g_135}},{{&p_883->g_135,&p_883->g_135},{&p_883->g_135,&p_883->g_135},{&p_883->g_135,&p_883->g_135},{&p_883->g_135,&p_883->g_135}},{{&p_883->g_135,&p_883->g_135},{&p_883->g_135,&p_883->g_135},{&p_883->g_135,&p_883->g_135},{&p_883->g_135,&p_883->g_135}},{{&p_883->g_135,&p_883->g_135},{&p_883->g_135,&p_883->g_135},{&p_883->g_135,&p_883->g_135},{&p_883->g_135,&p_883->g_135}},{{&p_883->g_135,&p_883->g_135},{&p_883->g_135,&p_883->g_135},{&p_883->g_135,&p_883->g_135},{&p_883->g_135,&p_883->g_135}},{{&p_883->g_135,&p_883->g_135},{&p_883->g_135,&p_883->g_135},{&p_883->g_135,&p_883->g_135},{&p_883->g_135,&p_883->g_135}},{{&p_883->g_135,&p_883->g_135},{&p_883->g_135,&p_883->g_135},{&p_883->g_135,&p_883->g_135},{&p_883->g_135,&p_883->g_135}},{{&p_883->g_135,&p_883->g_135},{&p_883->g_135,&p_883->g_135},{&p_883->g_135,&p_883->g_135},{&p_883->g_135,&p_883->g_135}}};
    VECTOR(int32_t, 16) l_354 = (VECTOR(int32_t, 16))(5L, (VECTOR(int32_t, 4))(5L, (VECTOR(int32_t, 2))(5L, 9L), 9L), 9L, 5L, 9L, (VECTOR(int32_t, 2))(5L, 9L), (VECTOR(int32_t, 2))(5L, 9L), 5L, 9L, 5L, 9L);
    int32_t l_356 = 0x42D2A07EL;
    int32_t l_392 = 0L;
    uint64_t l_439 = 0xC489FDDF94FC2709L;
    uint32_t *l_478 = &p_883->g_156;
    uint16_t *l_484[10] = {&p_883->g_395[5],&p_883->g_395[5],&p_883->g_395[5],&p_883->g_395[5],&p_883->g_395[5],&p_883->g_395[5],&p_883->g_395[5],&p_883->g_395[5],&p_883->g_395[5],&p_883->g_395[5]};
    uint8_t l_487 = 1UL;
    VECTOR(int16_t, 4) l_497 = (VECTOR(int16_t, 4))((-10L), (VECTOR(int16_t, 2))((-10L), 0L), 0L);
    VECTOR(int32_t, 8) l_555 = (VECTOR(int32_t, 8))(0x2749B3E4L, (VECTOR(int32_t, 4))(0x2749B3E4L, (VECTOR(int32_t, 2))(0x2749B3E4L, 0x11C9FCD6L), 0x11C9FCD6L), 0x11C9FCD6L, 0x2749B3E4L, 0x11C9FCD6L);
    VECTOR(int32_t, 4) l_598 = (VECTOR(int32_t, 4))((-8L), (VECTOR(int32_t, 2))((-8L), 1L), 1L);
    int8_t *l_652 = (void*)0;
    int32_t **l_667 = &p_883->g_127;
    uint16_t ***l_683 = &p_883->g_111;
    uint16_t ****l_682 = &l_683;
    uint32_t *l_700 = &p_883->g_325[2];
    VECTOR(uint32_t, 16) l_703 = (VECTOR(uint32_t, 16))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 0x65A33116L), 0x65A33116L), 0x65A33116L, 1UL, 0x65A33116L, (VECTOR(uint32_t, 2))(1UL, 0x65A33116L), (VECTOR(uint32_t, 2))(1UL, 0x65A33116L), 1UL, 0x65A33116L, 1UL, 0x65A33116L);
    uint64_t **l_717 = &p_883->g_715;
    int64_t *l_821 = &p_883->g_6;
    int64_t **l_820 = &l_821;
    int i, j, k;
    for (p_883->g_322 = 14; (p_883->g_322 <= 17); ++p_883->g_322)
    { /* block id: 113 */
        uint64_t *l_334[9] = {&p_883->g_135,&p_883->g_135,&p_883->g_135,&p_883->g_135,&p_883->g_135,&p_883->g_135,&p_883->g_135,&p_883->g_135,&p_883->g_135};
        VECTOR(uint64_t, 16) l_346 = (VECTOR(uint64_t, 16))(0x890C7987E043FE9FL, (VECTOR(uint64_t, 4))(0x890C7987E043FE9FL, (VECTOR(uint64_t, 2))(0x890C7987E043FE9FL, 18446744073709551610UL), 18446744073709551610UL), 18446744073709551610UL, 0x890C7987E043FE9FL, 18446744073709551610UL, (VECTOR(uint64_t, 2))(0x890C7987E043FE9FL, 18446744073709551610UL), (VECTOR(uint64_t, 2))(0x890C7987E043FE9FL, 18446744073709551610UL), 0x890C7987E043FE9FL, 18446744073709551610UL, 0x890C7987E043FE9FL, 18446744073709551610UL);
        VECTOR(uint64_t, 16) l_347 = (VECTOR(uint64_t, 16))(0x77971B1F35735074L, (VECTOR(uint64_t, 4))(0x77971B1F35735074L, (VECTOR(uint64_t, 2))(0x77971B1F35735074L, 18446744073709551610UL), 18446744073709551610UL), 18446744073709551610UL, 0x77971B1F35735074L, 18446744073709551610UL, (VECTOR(uint64_t, 2))(0x77971B1F35735074L, 18446744073709551610UL), (VECTOR(uint64_t, 2))(0x77971B1F35735074L, 18446744073709551610UL), 0x77971B1F35735074L, 18446744073709551610UL, 0x77971B1F35735074L, 18446744073709551610UL);
        int32_t l_386 = 0x37D61D63L;
        int32_t l_387 = 0x2926B870L;
        int32_t l_388 = 0L;
        int32_t l_389 = (-1L);
        int32_t l_390[7][8] = {{(-2L),0x0E2312E5L,0x1FE7AB1DL,0x61E464B5L,0x1FBAA5E3L,(-2L),0x61E464B5L,0L},{(-2L),0x0E2312E5L,0x1FE7AB1DL,0x61E464B5L,0x1FBAA5E3L,(-2L),0x61E464B5L,0L},{(-2L),0x0E2312E5L,0x1FE7AB1DL,0x61E464B5L,0x1FBAA5E3L,(-2L),0x61E464B5L,0L},{(-2L),0x0E2312E5L,0x1FE7AB1DL,0x61E464B5L,0x1FBAA5E3L,(-2L),0x61E464B5L,0L},{(-2L),0x0E2312E5L,0x1FE7AB1DL,0x61E464B5L,0x1FBAA5E3L,(-2L),0x61E464B5L,0L},{(-2L),0x0E2312E5L,0x1FE7AB1DL,0x61E464B5L,0x1FBAA5E3L,(-2L),0x61E464B5L,0L},{(-2L),0x0E2312E5L,0x1FE7AB1DL,0x61E464B5L,0x1FBAA5E3L,(-2L),0x61E464B5L,0L}};
        VECTOR(uint32_t, 8) l_399 = (VECTOR(uint32_t, 8))(4294967291UL, (VECTOR(uint32_t, 4))(4294967291UL, (VECTOR(uint32_t, 2))(4294967291UL, 0x9BC3E905L), 0x9BC3E905L), 0x9BC3E905L, 4294967291UL, 0x9BC3E905L);
        int32_t l_429 = 0L;
        int64_t l_436[10] = {0x4BCE4011C5F217C8L,0x4BCE4011C5F217C8L,0x4BCE4011C5F217C8L,0x4BCE4011C5F217C8L,0x4BCE4011C5F217C8L,0x4BCE4011C5F217C8L,0x4BCE4011C5F217C8L,0x4BCE4011C5F217C8L,0x4BCE4011C5F217C8L,0x4BCE4011C5F217C8L};
        uint64_t l_459 = 0UL;
        uint8_t l_482 = 255UL;
        uint16_t *l_485[9];
        VECTOR(uint8_t, 4) l_519 = (VECTOR(uint8_t, 4))(0x90L, (VECTOR(uint8_t, 2))(0x90L, 0xA7L), 0xA7L);
        VECTOR(uint8_t, 2) l_522 = (VECTOR(uint8_t, 2))(0xA5L, 0x4DL);
        int64_t l_535 = 0x670D08E9943FCA10L;
        VECTOR(int32_t, 4) l_644 = (VECTOR(int32_t, 4))(0x13FAFB0FL, (VECTOR(int32_t, 2))(0x13FAFB0FL, 0x2F6998F8L), 0x2F6998F8L);
        VECTOR(int32_t, 2) l_646 = (VECTOR(int32_t, 2))(5L, 0x0460F77AL);
        VECTOR(int32_t, 8) l_668 = (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x49EC4D68L), 0x49EC4D68L), 0x49EC4D68L, 1L, 0x49EC4D68L);
        uint16_t ***l_681 = &p_883->g_111;
        uint16_t ****l_680 = &l_681;
        int16_t *l_688 = &p_883->g_313;
        int16_t *l_689 = (void*)0;
        int16_t *l_690 = (void*)0;
        int16_t *l_691 = (void*)0;
        VECTOR(int32_t, 8) l_698 = (VECTOR(int32_t, 8))(0x02D5230BL, (VECTOR(int32_t, 4))(0x02D5230BL, (VECTOR(int32_t, 2))(0x02D5230BL, 0x0E1A8B5DL), 0x0E1A8B5DL), 0x0E1A8B5DL, 0x02D5230BL, 0x0E1A8B5DL);
        uint32_t **l_701 = &l_700;
        VECTOR(uint32_t, 16) l_702 = (VECTOR(uint32_t, 16))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 4294967293UL), 4294967293UL), 4294967293UL, 0UL, 4294967293UL, (VECTOR(uint32_t, 2))(0UL, 4294967293UL), (VECTOR(uint32_t, 2))(0UL, 4294967293UL), 0UL, 4294967293UL, 0UL, 4294967293UL);
        uint64_t ***l_716[7][4] = {{&p_883->g_714[5][0],&p_883->g_714[3][1],&p_883->g_714[5][3],&p_883->g_714[5][3]},{&p_883->g_714[5][0],&p_883->g_714[3][1],&p_883->g_714[5][3],&p_883->g_714[5][3]},{&p_883->g_714[5][0],&p_883->g_714[3][1],&p_883->g_714[5][3],&p_883->g_714[5][3]},{&p_883->g_714[5][0],&p_883->g_714[3][1],&p_883->g_714[5][3],&p_883->g_714[5][3]},{&p_883->g_714[5][0],&p_883->g_714[3][1],&p_883->g_714[5][3],&p_883->g_714[5][3]},{&p_883->g_714[5][0],&p_883->g_714[3][1],&p_883->g_714[5][3],&p_883->g_714[5][3]},{&p_883->g_714[5][0],&p_883->g_714[3][1],&p_883->g_714[5][3],&p_883->g_714[5][3]}};
        int8_t *l_718 = (void*)0;
        int8_t *l_719[4] = {&p_883->g_167,&p_883->g_167,&p_883->g_167,&p_883->g_167};
        int32_t ***l_755 = &l_667;
        uint16_t l_759 = 1UL;
        uint8_t l_828[4] = {255UL,255UL,255UL,255UL};
        int i, j;
        for (i = 0; i < 9; i++)
            l_485[i] = &p_883->g_395[4];
        (1 + 1);
    }
    (*p_883->g_831) |= (**l_667);
    return p_883->g_748.s5;
}


/* ------------------------------------------ */
/* 
 * reads : p_883->g_160 p_883->g_147 p_883->g_313 p_883->g_135 p_883->g_3 p_883->g_116 p_883->g_199 p_883->g_219 p_883->g_167 p_883->g_232 p_883->g_230 p_883->g_65 p_883->g_127 p_883->g_149 p_883->g_170
 * writes: p_883->g_313 p_883->g_167 p_883->g_160
 */
uint16_t * func_14(uint16_t * p_15, struct S0 * p_883)
{ /* block id: 100 */
    int32_t *l_283 = &p_883->g_160;
    int32_t *l_284 = (void*)0;
    int32_t *l_285[2][1];
    uint64_t l_286 = 18446744073709551606UL;
    VECTOR(uint16_t, 2) l_295 = (VECTOR(uint16_t, 2))(65535UL, 0x8DF3L);
    VECTOR(uint16_t, 8) l_296 = (VECTOR(uint16_t, 8))(0xA783L, (VECTOR(uint16_t, 4))(0xA783L, (VECTOR(uint16_t, 2))(0xA783L, 1UL), 1UL), 1UL, 0xA783L, 1UL);
    int16_t *l_311 = (void*)0;
    int16_t *l_312 = &p_883->g_313;
    int64_t l_318 = (-1L);
    int8_t *l_319 = &p_883->g_167;
    uint64_t l_320 = 0x29195E1FE765B9DEL;
    int i, j;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 1; j++)
            l_285[i][j] = &p_883->g_160;
    }
    l_286++;
    (*l_283) = ((((safe_mod_func_int32_t_s_s((safe_lshift_func_int8_t_s_s(((*l_283) > (((l_320 = (((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 16))(0xE20EL, ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(0x5E6DL, 7UL)), 0xA283L, 65527UL)).yxzzwwzy)), ((safe_add_func_uint16_t_u_u(((VECTOR(uint16_t, 2))(mul_hi(((VECTOR(uint16_t, 2))(clz(((VECTOR(uint16_t, 8))(add_sat(((VECTOR(uint16_t, 2))(l_295.xy)).xyyxxxxx, ((VECTOR(uint16_t, 16))(3UL, 0x0329L, 65534UL, ((VECTOR(uint16_t, 4))(add_sat(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 8))(l_296.s07270170)).s13)), 65533UL, 65529UL)).ywzyzywz)).lo, ((VECTOR(uint16_t, 4))(((*l_283) , (((+((0xCF4BEE0CL || 0x2DCD1A5CL) >= ((((*l_283) , (GROUP_DIVERGE(0, 1) | (((safe_add_func_uint32_t_u_u((((safe_add_func_int16_t_s_s((safe_lshift_func_int8_t_s_u(((*l_319) &= (((safe_lshift_func_int8_t_s_u((safe_add_func_int64_t_s_s((((*l_283) != (((((safe_mod_func_int32_t_s_s(((((*l_312) |= p_883->g_147.sd) <= ((p_883->g_135 == ((safe_add_func_int16_t_s_s((safe_sub_func_uint64_t_u_u(0xD460507924D338BCL, 0x3F2FACD075D00FB1L)), (*p_15))) != 0xC5AFDBD7L)) && 0UL)) <= (*p_15)), 0xECB83779L)) && (*l_283)) ^ l_318) ^ 1L) >= p_883->g_116.w)) == 0xC1B9L), 1UL)), p_883->g_199.y)) < (*l_283)) & p_883->g_219[0])), (*l_283))), (*p_15))) & FAKE_DIVERGE(p_883->local_0_offset, get_local_id(0), 10)) , FAKE_DIVERGE(p_883->group_1_offset, get_group_id(1), 10)), 1L)) > (*p_883->g_232)) , p_883->g_230.w))) < (-1L)) < p_883->g_65))) || 0x8D29L) == (*l_283))), 0x4A08L, 0UL, 0UL))))), (*l_283), ((VECTOR(uint16_t, 4))(1UL)), 65535UL, 0xDAB3L, 65534UL, 0x38D6L)).hi))).s37))), ((VECTOR(uint16_t, 2))(0x5752L))))).lo, 8L)) < (*l_283)), 0UL, 0x15BAL, 0x218AL, 0xD352L, 0x9F85L, 0x73ECL)).sc4)).odd ^ (*l_283))) < (*p_883->g_127)) , (*l_283))), p_883->g_149.sf)), (*l_283))) > p_883->g_170) , 0xE82CD16FL) , (*l_283));
    return l_312;
}


/* ------------------------------------------ */
/* 
 * reads : p_883->g_160 p_883->g_187 p_883->g_3 p_883->g_208
 * writes: p_883->g_160 p_883->g_127
 */
uint16_t * func_16(uint64_t  p_17, uint16_t * p_18, uint16_t * p_19, int32_t  p_20, uint16_t * p_21, struct S0 * p_883)
{ /* block id: 92 */
    uint64_t *l_274 = &p_883->g_170;
    int32_t *l_275 = &p_883->g_160;
    int32_t **l_278 = &l_275;
    uint16_t *l_279 = &p_883->g_3;
    (*l_275) |= ((void*)0 != l_274);
    (*l_275) = (p_883->g_187.sc , (safe_mod_func_uint16_t_u_u((*p_19), 4UL)));
    (*l_275) = (*l_275);
    (*l_278) = ((*p_883->g_208) = l_275);
    return l_279;
}


/* ------------------------------------------ */
/* 
 * reads : p_883->g_35 p_883->g_67 p_883->g_6 p_883->g_comm_values p_883->g_65 p_883->g_111 p_883->g_112 p_883->g_116 p_883->g_147 p_883->g_149 p_883->g_3 p_883->g_156 p_883->g_127 p_883->g_187 p_883->g_199 p_883->g_160 p_883->g_219 p_883->g_208 p_883->g_230 p_883->g_167 p_883->g_135 p_883->g_273
 * writes: p_883->g_35 p_883->g_67 p_883->g_6 p_883->g_65 p_883->g_3 p_883->g_127 p_883->g_135 p_883->g_156 p_883->g_167 p_883->g_208 p_883->g_160 p_883->g_219 p_883->g_232 p_883->g_111
 */
int16_t  func_24(uint16_t  p_25, uint16_t * p_26, uint16_t * p_27, struct S0 * p_883)
{ /* block id: 7 */
    uint64_t *l_33 = (void*)0;
    uint64_t *l_34 = &p_883->g_35;
    VECTOR(int64_t, 2) l_51 = (VECTOR(int64_t, 2))((-6L), 0x72B416C28CBD6CD5L);
    uint64_t **l_63 = &l_33;
    int8_t *l_166 = &p_883->g_167;
    int32_t l_168 = 0x12B9D125L;
    uint64_t *l_169 = &p_883->g_170;
    uint16_t *l_249 = (void*)0;
    int i;
    (*p_883->g_273) = func_28((--(*l_34)), func_38(func_43((l_51.y > (l_168 = ((*l_166) = ((safe_mod_func_uint64_t_u_u((safe_sub_func_uint32_t_u_u(func_56(l_51.y, func_60(((*l_63) = l_33), &p_25, p_883), (*p_883->g_111), p_883), (~((((safe_mod_func_uint8_t_u_u((safe_rshift_func_int16_t_s_s(p_25, 12)), p_25)) , p_883->g_149.sf) , l_51.x) , 0x32743BDEL)))), 1L)) & p_883->g_147.s7)))), l_169, l_51.x, p_883->g_149.s9, &p_883->g_170, p_883), l_51.x, p_883->g_187.sa, l_249, p_883), p_25, p_25, p_883);
    return p_25;
}


/* ------------------------------------------ */
/* 
 * reads : p_883->g_208
 * writes: p_883->g_127
 */
uint16_t ** func_28(uint64_t  p_29, uint16_t * p_30, uint32_t  p_31, int32_t  p_32, struct S0 * p_883)
{ /* block id: 80 */
    uint16_t **l_272 = (void*)0;
    if ((atomic_inc(&p_883->l_atomic_input[22]) == 6))
    { /* block id: 82 */
        int32_t l_253 = 0x6C6893DEL;
        int32_t l_254 = (-1L);
        VECTOR(int32_t, 16) l_255 = (VECTOR(int32_t, 16))((-10L), (VECTOR(int32_t, 4))((-10L), (VECTOR(int32_t, 2))((-10L), 0x1B7BAD2BL), 0x1B7BAD2BL), 0x1B7BAD2BL, (-10L), 0x1B7BAD2BL, (VECTOR(int32_t, 2))((-10L), 0x1B7BAD2BL), (VECTOR(int32_t, 2))((-10L), 0x1B7BAD2BL), (-10L), 0x1B7BAD2BL, (-10L), 0x1B7BAD2BL);
        VECTOR(int32_t, 8) l_256 = (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), (-2L)), (-2L)), (-2L), (-1L), (-2L));
        VECTOR(int32_t, 8) l_257 = (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, (-4L)), (-4L)), (-4L), 0L, (-4L));
        VECTOR(int32_t, 4) l_258 = (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x5966B01AL), 0x5966B01AL);
        VECTOR(int32_t, 4) l_259 = (VECTOR(int32_t, 4))(0x1FACA592L, (VECTOR(int32_t, 2))(0x1FACA592L, 0x0B8B0C2FL), 0x0B8B0C2FL);
        VECTOR(int32_t, 16) l_260 = (VECTOR(int32_t, 16))(0x363515B0L, (VECTOR(int32_t, 4))(0x363515B0L, (VECTOR(int32_t, 2))(0x363515B0L, 0x49D8CCFAL), 0x49D8CCFAL), 0x49D8CCFAL, 0x363515B0L, 0x49D8CCFAL, (VECTOR(int32_t, 2))(0x363515B0L, 0x49D8CCFAL), (VECTOR(int32_t, 2))(0x363515B0L, 0x49D8CCFAL), 0x363515B0L, 0x49D8CCFAL, 0x363515B0L, 0x49D8CCFAL);
        VECTOR(int32_t, 16) l_261 = (VECTOR(int32_t, 16))(0x0115E5B6L, (VECTOR(int32_t, 4))(0x0115E5B6L, (VECTOR(int32_t, 2))(0x0115E5B6L, 0L), 0L), 0L, 0x0115E5B6L, 0L, (VECTOR(int32_t, 2))(0x0115E5B6L, 0L), (VECTOR(int32_t, 2))(0x0115E5B6L, 0L), 0x0115E5B6L, 0L, 0x0115E5B6L, 0L);
        uint32_t l_262 = 0x3DDF22E6L;
        int32_t l_263 = 0L;
        uint32_t l_264 = 1UL;
        int16_t l_265 = 0x3119L;
        uint8_t l_266 = 0UL;
        VECTOR(int16_t, 8) l_267 = (VECTOR(int16_t, 8))((-2L), (VECTOR(int16_t, 4))((-2L), (VECTOR(int16_t, 2))((-2L), 0L), 0L), 0L, (-2L), 0L);
        VECTOR(uint16_t, 8) l_268 = (VECTOR(uint16_t, 8))(9UL, (VECTOR(uint16_t, 4))(9UL, (VECTOR(uint16_t, 2))(9UL, 0UL), 0UL), 0UL, 9UL, 0UL);
        int64_t l_269 = 0x6BD6667CC52C0171L;
        uint64_t l_270[7] = {18446744073709551611UL,18446744073709551615UL,18446744073709551611UL,18446744073709551611UL,18446744073709551615UL,18446744073709551611UL,18446744073709551611UL};
        int32_t l_271 = 0L;
        int i;
        l_271 ^= ((VECTOR(int32_t, 8))((-1L), ((VECTOR(int32_t, 4))(hadd(((VECTOR(int32_t, 2))(add_sat(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(0x7E4177E3L, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(6L, 4L, ((l_253 , l_254) , ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(l_255.s1335)).ywzxxwww)))).s3), ((VECTOR(int32_t, 4))(l_256.s3041)), ((VECTOR(int32_t, 2))((-10L), 1L)), ((VECTOR(int32_t, 4))(rotate(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 2))(l_257.s66)).yxxy, ((VECTOR(int32_t, 8))(min(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(l_258.yxxywzyy)).s72)).yxxyxyxy, ((VECTOR(int32_t, 4))(l_259.wwyz)).xxyzwwzw))).hi, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(l_260.s6725a7c1)).s6203101206642045)).seb14))).xxxyyxwz)), ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(0x294CD019L, 1L)).xyyyxyyx)))))))).sc8)).xyyy, ((VECTOR(int32_t, 16))(l_261.sacb79cad0a982e34)).scca1))), (l_262 , l_263), 0x280D7D40L, 0x468CCA99L)).s02)), l_264, (l_266 = l_265), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(min(((VECTOR(int32_t, 16))(upsample(((VECTOR(int16_t, 2))(l_267.s24)).xyxxyyyxxxyyxyyy, ((VECTOR(uint16_t, 16))(rhadd(((VECTOR(uint16_t, 2))(1UL, 1UL)).yyyxyyyxyyyxxyyy, ((VECTOR(uint16_t, 16))(l_268.s4561414543633057)))))))).s54, (int32_t)(l_269 , l_270[1])))))), 1L)).odd)).odd, ((VECTOR(int32_t, 2))(1L))))).xyxx, ((VECTOR(int32_t, 4))(0x4808877CL))))), 0L, (-4L), 0x480B2054L)).s4;
        unsigned int result = 0;
        result += l_253;
        result += l_254;
        result += l_255.sf;
        result += l_255.se;
        result += l_255.sd;
        result += l_255.sc;
        result += l_255.sb;
        result += l_255.sa;
        result += l_255.s9;
        result += l_255.s8;
        result += l_255.s7;
        result += l_255.s6;
        result += l_255.s5;
        result += l_255.s4;
        result += l_255.s3;
        result += l_255.s2;
        result += l_255.s1;
        result += l_255.s0;
        result += l_256.s7;
        result += l_256.s6;
        result += l_256.s5;
        result += l_256.s4;
        result += l_256.s3;
        result += l_256.s2;
        result += l_256.s1;
        result += l_256.s0;
        result += l_257.s7;
        result += l_257.s6;
        result += l_257.s5;
        result += l_257.s4;
        result += l_257.s3;
        result += l_257.s2;
        result += l_257.s1;
        result += l_257.s0;
        result += l_258.w;
        result += l_258.z;
        result += l_258.y;
        result += l_258.x;
        result += l_259.w;
        result += l_259.z;
        result += l_259.y;
        result += l_259.x;
        result += l_260.sf;
        result += l_260.se;
        result += l_260.sd;
        result += l_260.sc;
        result += l_260.sb;
        result += l_260.sa;
        result += l_260.s9;
        result += l_260.s8;
        result += l_260.s7;
        result += l_260.s6;
        result += l_260.s5;
        result += l_260.s4;
        result += l_260.s3;
        result += l_260.s2;
        result += l_260.s1;
        result += l_260.s0;
        result += l_261.sf;
        result += l_261.se;
        result += l_261.sd;
        result += l_261.sc;
        result += l_261.sb;
        result += l_261.sa;
        result += l_261.s9;
        result += l_261.s8;
        result += l_261.s7;
        result += l_261.s6;
        result += l_261.s5;
        result += l_261.s4;
        result += l_261.s3;
        result += l_261.s2;
        result += l_261.s1;
        result += l_261.s0;
        result += l_262;
        result += l_263;
        result += l_264;
        result += l_265;
        result += l_266;
        result += l_267.s7;
        result += l_267.s6;
        result += l_267.s5;
        result += l_267.s4;
        result += l_267.s3;
        result += l_267.s2;
        result += l_267.s1;
        result += l_267.s0;
        result += l_268.s7;
        result += l_268.s6;
        result += l_268.s5;
        result += l_268.s4;
        result += l_268.s3;
        result += l_268.s2;
        result += l_268.s1;
        result += l_268.s0;
        result += l_269;
        int l_270_i0;
        for (l_270_i0 = 0; l_270_i0 < 7; l_270_i0++) {
            result += l_270[l_270_i0];
        }
        result += l_271;
        atomic_add(&p_883->l_special_values[22], result);
    }
    else
    { /* block id: 85 */
        (1 + 1);
    }
    (*p_883->g_208) = &p_32;
    return l_272;
}


/* ------------------------------------------ */
/* 
 * reads : p_883->g_111 p_883->g_112
 * writes:
 */
uint16_t * func_38(int64_t  p_39, int64_t  p_40, int32_t  p_41, uint16_t * p_42, struct S0 * p_883)
{ /* block id: 77 */
    uint64_t l_250 = 18446744073709551615UL;
    --l_250;
    return (*p_883->g_111);
}


/* ------------------------------------------ */
/* 
 * reads : p_883->g_149 p_883->g_187 p_883->g_156 p_883->g_199 p_883->g_127 p_883->g_67 p_883->g_65 p_883->g_160 p_883->g_219 p_883->g_208 p_883->g_230 p_883->g_167 p_883->g_135
 * writes: p_883->g_156 p_883->g_208 p_883->g_135 p_883->g_65 p_883->g_6 p_883->g_160 p_883->g_219 p_883->g_232
 */
int64_t  func_43(int64_t  p_44, uint64_t * p_45, uint32_t  p_46, uint32_t  p_47, uint64_t * p_48, struct S0 * p_883)
{ /* block id: 60 */
    VECTOR(uint8_t, 16) l_175 = (VECTOR(uint8_t, 16))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0UL), 0UL), 0UL, 0UL, 0UL, (VECTOR(uint8_t, 2))(0UL, 0UL), (VECTOR(uint8_t, 2))(0UL, 0UL), 0UL, 0UL, 0UL, 0UL);
    VECTOR(uint64_t, 4) l_186 = (VECTOR(uint64_t, 4))(0xA6EC452CB20AC4CAL, (VECTOR(uint64_t, 2))(0xA6EC452CB20AC4CAL, 0x6139D5ECBE26192BL), 0x6139D5ECBE26192BL);
    VECTOR(uint64_t, 8) l_188 = (VECTOR(uint64_t, 8))(0xB9CDFA9A00E7A821L, (VECTOR(uint64_t, 4))(0xB9CDFA9A00E7A821L, (VECTOR(uint64_t, 2))(0xB9CDFA9A00E7A821L, 0x393FF6A6F7F2E4BEL), 0x393FF6A6F7F2E4BEL), 0x393FF6A6F7F2E4BEL, 0xB9CDFA9A00E7A821L, 0x393FF6A6F7F2E4BEL);
    VECTOR(uint64_t, 2) l_189 = (VECTOR(uint64_t, 2))(2UL, 0x8ED0E527677E7D22L);
    uint8_t l_190 = 0x57L;
    uint32_t *l_193 = &p_883->g_156;
    VECTOR(int32_t, 8) l_196 = (VECTOR(int32_t, 8))(5L, (VECTOR(int32_t, 4))(5L, (VECTOR(int32_t, 2))(5L, 2L), 2L), 2L, 5L, 2L);
    VECTOR(int32_t, 4) l_197 = (VECTOR(int32_t, 4))(0x6BE3635EL, (VECTOR(int32_t, 2))(0x6BE3635EL, 0L), 0L);
    VECTOR(uint32_t, 8) l_198 = (VECTOR(uint32_t, 8))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 0xAA367CD0L), 0xAA367CD0L), 0xAA367CD0L, 1UL, 0xAA367CD0L);
    VECTOR(int64_t, 8) l_200 = (VECTOR(int64_t, 8))(0x03A3E19EA11A8359L, (VECTOR(int64_t, 4))(0x03A3E19EA11A8359L, (VECTOR(int64_t, 2))(0x03A3E19EA11A8359L, 0x0DCDEB364EF6050AL), 0x0DCDEB364EF6050AL), 0x0DCDEB364EF6050AL, 0x03A3E19EA11A8359L, 0x0DCDEB364EF6050AL);
    VECTOR(uint16_t, 4) l_201 = (VECTOR(uint16_t, 4))(0xF018L, (VECTOR(uint16_t, 2))(0xF018L, 0x83EBL), 0x83EBL);
    int32_t **l_206 = &p_883->g_127;
    int32_t ***l_207 = (void*)0;
    uint64_t *l_209 = (void*)0;
    uint64_t *l_210 = (void*)0;
    uint64_t *l_211 = (void*)0;
    uint64_t *l_212 = (void*)0;
    uint64_t *l_213[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int64_t *l_214 = (void*)0;
    int64_t *l_215 = &p_883->g_6;
    int32_t *l_216 = &p_883->g_160;
    int32_t *l_217 = (void*)0;
    int32_t *l_220 = (void*)0;
    int32_t *l_221 = (void*)0;
    int32_t *l_222 = &p_883->g_219[7];
    VECTOR(int8_t, 16) l_223 = (VECTOR(int8_t, 16))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x02L), 0x02L), 0x02L, (-1L), 0x02L, (VECTOR(int8_t, 2))((-1L), 0x02L), (VECTOR(int8_t, 2))((-1L), 0x02L), (-1L), 0x02L, (-1L), 0x02L);
    uint32_t **l_231[5] = {&l_193,&l_193,&l_193,&l_193,&l_193};
    VECTOR(int16_t, 2) l_243 = (VECTOR(int16_t, 2))(3L, 0x62E6L);
    uint32_t l_246 = 0xC91FD1CDL;
    int32_t l_247 = 3L;
    uint64_t l_248 = 0x4A2E45BC0E46B9D0L;
    int i;
    (*l_222) = ((*l_216) = (safe_add_func_int64_t_s_s(((VECTOR(int64_t, 8))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 8),((VECTOR(int64_t, 4))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 16))(rhadd(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 4))(((*l_215) = ((safe_sub_func_uint8_t_u_u(((VECTOR(uint8_t, 16))(l_175.s21af039434215336)).sb, l_175.s0)) || (p_883->g_149.s4 && (((safe_rshift_func_uint16_t_u_s((l_175.s1 <= p_44), ((0x1BA4L >= (safe_mul_func_uint16_t_u_u((safe_lshift_func_int8_t_s_u(((VECTOR(int8_t, 2))(0x49L, 0L)).even, (safe_lshift_func_uint8_t_u_s(((safe_lshift_func_int16_t_s_s(((((l_175.sa && ((**l_206) = ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(mad_sat(((VECTOR(uint64_t, 4))(mad_sat(((VECTOR(uint64_t, 4))(hadd(((VECTOR(uint64_t, 16))(hadd(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 8))(l_186.wwzxxyyz)))).s0611375640746137, ((VECTOR(uint64_t, 16))(p_883->g_187.sd07ed48e4b82fd02))))).s3d6c, ((VECTOR(uint64_t, 8))(l_188.s77614521)).lo))), ((VECTOR(uint64_t, 16))(mad_sat(((VECTOR(uint64_t, 16))(l_189.xxxxyxyxxxxxxyxy)), ((VECTOR(uint64_t, 8))(abs(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 8))(max(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(rhadd(((VECTOR(int64_t, 2))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 2),((VECTOR(int64_t, 16))(min(((VECTOR(int64_t, 8))(rotate(((VECTOR(int64_t, 16))(l_190, ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 16))(clz(((VECTOR(int64_t, 4))(upsample(((VECTOR(int32_t, 4))(mad_sat(((VECTOR(int32_t, 2))((-1L), 0x30A91DF0L)).xyyx, ((VECTOR(int32_t, 8))(p_883->g_149.sa, (safe_sub_func_uint32_t_u_u(((*l_193)--), ((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 2))(0x7D020138L, 0xCB09DC8EL)))))).yxyxxxxxxxyyyxyy)).s9)), ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(l_196.s74)), 1L, 1L)), (-1L), (-5L))).even, ((VECTOR(int32_t, 2))(l_197.zz)).xyyx))), ((VECTOR(uint32_t, 2))(l_198.s37)).xxxx))).xyywzxzxwxxwwxwx))).lo)), ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 16))(p_883->g_199.wwywxyyzxxwzzwzz)).odd)).lo)), ((VECTOR(int64_t, 2))(mul_hi(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 8))(l_200.s32472066)).s4, (((VECTOR(uint16_t, 8))(l_201.wwzxywzw)).s5 == (safe_div_func_uint16_t_u_u((safe_div_func_uint64_t_u_u((p_883->g_135 = (((p_883->g_208 = l_206) == &p_883->g_159[0][1][5]) , 0x7179A0431243610AL)), p_883->g_187.s6)), FAKE_DIVERGE(p_883->local_2_offset, get_local_id(2), 10)))), 0x32D01FADEA91A948L, 1L)).even, ((VECTOR(int64_t, 2))(0x1E57495F73CDD720L))))), 0x06CDDE3C59E35A50L)).odd, ((VECTOR(int64_t, 8))(1L))))).s2324720474722660, ((VECTOR(int64_t, 16))(0L))))).sb8, ((VECTOR(int64_t, 2))((-5L))), ((VECTOR(int64_t, 2))(0x1DF60D0BD520F136L))))), ((VECTOR(int64_t, 2))((-1L)))))), 4L, 0x6A4B53EABFC5C242L)), 0x3EC00692321C0B2DL, ((VECTOR(int64_t, 2))((-1L))), ((VECTOR(int64_t, 8))((-1L))), (-1L))).even, (int64_t)0x4F3A6AD2B1841E32L)))))))).s0417635436107364, ((VECTOR(uint64_t, 16))(18446744073709551615UL))))).s862d, ((VECTOR(uint64_t, 4))(0x0DE0AF2857B4A2E4L))))), ((VECTOR(uint64_t, 4))(0UL)), ((VECTOR(uint64_t, 4))(0UL))))), 0x5B850C967FFD3E07L, 18446744073709551615UL, 18446744073709551615UL, 2UL)).s1)) ^ 0x36L) && p_44) <= p_44), p_46)) , 0xC7L), 5)))), p_883->g_67))) != p_44))) , 18446744073709551610UL) , p_44)))), p_883->g_199.y, (-10L), 0x2667F5B4925EA103L)))).zyxwwxyxxzwxzxwy)), ((VECTOR(int64_t, 16))(0x5371D5E848DC6E2AL))))).s525c)))).zzyxzyyz, ((VECTOR(int64_t, 8))((-6L))), ((VECTOR(int64_t, 8))(1L))))).s3, p_44)));
    (*l_216) &= ((**l_206) < 0x7AAAA20CL);
    (**p_883->g_208) = (((VECTOR(int8_t, 4))(l_223.s6b29)).z | (+((*l_222) &= p_46)));
    l_248 = (safe_div_func_int64_t_s_s(((*l_215) = ((safe_add_func_uint8_t_u_u((safe_lshift_func_int8_t_s_s(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 8))(mul_hi(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(safe_clamp_func(VECTOR(int8_t, 2),int8_t,((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(p_883->g_230.wz)), 1L, ((p_48 != ((p_44 == (((p_883->g_232 = l_222) != &p_883->g_156) > (safe_rshift_func_uint8_t_u_s((safe_rshift_func_uint16_t_u_s(((((p_44 , (safe_add_func_uint8_t_u_u(0UL, (+(safe_add_func_int64_t_s_s(((safe_rshift_func_int16_t_s_u((((*l_216) = FAKE_DIVERGE(p_883->group_1_offset, get_group_id(1), 10)) , ((VECTOR(int16_t, 8))(l_243.xxyyxyyy)).s0), 7)) , p_47), ((safe_div_func_int64_t_s_s((((**l_206) = (((p_46 | (((*l_222) <= 0x34EA958541D5164DL) , (**l_206))) , p_44) , p_44)) < (*l_222)), l_246)) != 0x18L))))))) || 0xEF41ADA6DF6E22EFL) && (-1L)) == l_247), p_883->g_167)), p_47)))) , l_214)) ^ FAKE_DIVERGE(p_883->local_2_offset, get_local_id(2), 10)), ((VECTOR(int8_t, 2))(7L)), 6L, (-4L))).s24)), 0L, (-6L))).zwywwxzxyxzwyxyz)).s7a, (int8_t)p_883->g_135, (int8_t)(-1L)))), 0x6EL, 0L)).yywyzxzy, ((VECTOR(int8_t, 8))(0L))))))).s7, 4)), p_883->g_135)) <= 0x1DD0L)), 0x2773BEED81015B2BL));
    return p_44;
}


/* ------------------------------------------ */
/* 
 * reads : p_883->g_112 p_883->g_111 p_883->g_116 p_883->g_6 p_883->g_65 p_883->g_147 p_883->g_149 p_883->g_3 p_883->g_156 p_883->g_127 p_883->g_comm_values
 * writes: p_883->g_3 p_883->g_65 p_883->g_6 p_883->g_127 p_883->g_135 p_883->g_156
 */
uint32_t  func_56(uint32_t  p_57, uint16_t ** p_58, uint16_t * p_59, struct S0 * p_883)
{ /* block id: 32 */
    uint32_t l_113 = 4UL;
    int32_t *l_121 = &p_883->g_65;
    int32_t l_144[7] = {0x3894F7B9L,0x3894F7B9L,0x3894F7B9L,0x3894F7B9L,0x3894F7B9L,0x3894F7B9L,0x3894F7B9L};
    int i;
    (*l_121) = (((((0x1F48L == l_113) >= l_113) , (*p_58)) != (*p_883->g_111)) , (safe_mul_func_int16_t_s_s(((VECTOR(int16_t, 4))(p_883->g_116.wwww)).w, (safe_lshift_func_uint16_t_u_s((safe_rshift_func_uint16_t_u_u(((**p_58) = 0x91D3L), 12)), 4)))));
    for (p_57 = 8; (p_57 == 40); ++p_57)
    { /* block id: 37 */
        VECTOR(int32_t, 16) l_132 = (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x0C0A41B3L), 0x0C0A41B3L), 0x0C0A41B3L, 0L, 0x0C0A41B3L, (VECTOR(int32_t, 2))(0L, 0x0C0A41B3L), (VECTOR(int32_t, 2))(0L, 0x0C0A41B3L), 0L, 0x0C0A41B3L, 0L, 0x0C0A41B3L);
        VECTOR(int32_t, 4) l_133 = (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x3FA259D0L), 0x3FA259D0L);
        VECTOR(int8_t, 2) l_136 = (VECTOR(int8_t, 2))(0x6BL, 1L);
        int32_t l_154 = (-3L);
        uint32_t l_157 = 4294967291UL;
        int i;
        if (p_883->g_116.y)
            break;
        for (p_883->g_6 = 0; (p_883->g_6 != (-3)); p_883->g_6--)
        { /* block id: 41 */
            int32_t **l_126 = &l_121;
            (*l_126) = &p_883->g_65;
            p_883->g_127 = ((*l_126) = &p_883->g_65);
            for (l_113 = 12; (l_113 < 9); --l_113)
            { /* block id: 47 */
                uint64_t *l_134 = &p_883->g_135;
                uint64_t *l_143 = (void*)0;
                VECTOR(int64_t, 2) l_148 = (VECTOR(int64_t, 2))(0x7B1311AD5033BB99L, 0x5B04045A8B82CCCDL);
                uint32_t *l_155 = &p_883->g_156;
                int32_t *l_158 = (void*)0;
                VECTOR(int32_t, 16) l_161 = (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x5B5DD2DDL), 0x5B5DD2DDL), 0x5B5DD2DDL, 1L, 0x5B5DD2DDL, (VECTOR(int32_t, 2))(1L, 0x5B5DD2DDL), (VECTOR(int32_t, 2))(1L, 0x5B5DD2DDL), 1L, 0x5B5DD2DDL, 1L, 0x5B5DD2DDL);
                int i;
                l_161.s8 = ((*p_883->g_127) = ((safe_lshift_func_int8_t_s_s(((VECTOR(int8_t, 8))(rhadd(((VECTOR(int8_t, 16))(clz(((VECTOR(int8_t, 4))(0x48L, ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(((((VECTOR(int32_t, 4))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 2))((-4L), (-7L))).xxxy, ((VECTOR(int32_t, 8))(l_132.s8ae19f66)).even, ((VECTOR(int32_t, 4))(l_133.yyyz))))).x , (((*l_134) = p_57) ^ p_883->g_65)) <= 0x138A19F7B7F5E466L), 0x2BL, (-1L), 1L)).hi)), 1L)).xyzyzwyxwwwxzxyx))).hi, ((VECTOR(int8_t, 8))(l_136.xyxxxyxx))))).s1, (safe_mod_func_uint8_t_u_u(((safe_sub_func_uint32_t_u_u(((*l_155) ^= (safe_add_func_uint64_t_u_u((p_883->g_116.x > (l_144[2] = 0x745CED4DE4FE5DE1L)), (l_154 = (safe_add_func_int8_t_s_s((((VECTOR(int64_t, 4))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(sub_sat(((VECTOR(int64_t, 2))(hadd(((VECTOR(int64_t, 4))(1L, 0x06ED117DD735A8DBL, 0x591B382BD8845D90L, 0x6EA3259E9505AA5BL)).odd, ((VECTOR(int64_t, 8))(p_883->g_147.s67439de1)).s13))), ((VECTOR(int64_t, 4))(l_148.xyxx)).odd))).yxyy)))).x | ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(upsample(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))(p_883->g_149.sa9dbf6c9)).s5662275407127257)))).s8afc, ((VECTOR(uint32_t, 4))(1UL, ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 4))((safe_lshift_func_uint8_t_u_u(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 8))((((p_883->g_6 && 0x5AL) | (safe_mul_func_int8_t_s_s(0x51L, p_57))) ^ 0x84L), 5UL, ((VECTOR(uint8_t, 2))(0xFFL)), FAKE_DIVERGE(p_883->local_0_offset, get_local_id(0), 10), ((VECTOR(uint8_t, 2))(6UL)), 1UL)))).s2, p_883->g_149.s0)), p_883->g_3, 0x3BAE3D21L, 4294967295UL)).even)), 0x7642D4FDL))))).xwzxzxyx)).s3), p_57)))))), (**l_126))) | (**l_126)), l_157)))) ^ p_883->g_6));
            }
        }
    }
    return p_883->g_comm_values[p_883->tid];
}


/* ------------------------------------------ */
/* 
 * reads : p_883->g_67 p_883->g_6 p_883->g_comm_values p_883->g_65 p_883->g_111
 * writes: p_883->g_67 p_883->g_6 p_883->g_65
 */
uint16_t ** func_60(uint64_t * p_61, uint16_t * p_62, struct S0 * p_883)
{ /* block id: 10 */
    int32_t *l_64[2];
    int16_t l_66 = (-7L);
    int i;
    for (i = 0; i < 2; i++)
        l_64[i] = &p_883->g_65;
    --p_883->g_67;
    for (p_883->g_6 = 0; (p_883->g_6 < (-4)); --p_883->g_6)
    { /* block id: 14 */
        int32_t **l_72 = &l_64[1];
        (*l_72) = &p_883->g_65;
        if ((atomic_inc(&p_883->l_atomic_input[30]) == 7))
        { /* block id: 17 */
            int32_t l_73 = 0x2174D4A5L;
            uint64_t l_74 = 0xA0230A264F7D9FD5L;
            VECTOR(uint64_t, 4) l_75 = (VECTOR(uint64_t, 4))(0x969E96C9F93B76F0L, (VECTOR(uint64_t, 2))(0x969E96C9F93B76F0L, 18446744073709551611UL), 18446744073709551611UL);
            VECTOR(uint64_t, 4) l_76 = (VECTOR(uint64_t, 4))(0x9CC53A0DCB3DF1C9L, (VECTOR(uint64_t, 2))(0x9CC53A0DCB3DF1C9L, 18446744073709551612UL), 18446744073709551612UL);
            int16_t l_77 = 0x20EBL;
            VECTOR(uint64_t, 4) l_78 = (VECTOR(uint64_t, 4))(0x1B6BD7A89A43D547L, (VECTOR(uint64_t, 2))(0x1B6BD7A89A43D547L, 18446744073709551611UL), 18446744073709551611UL);
            VECTOR(uint64_t, 16) l_79 = (VECTOR(uint64_t, 16))(0x1CA9823142ACE07DL, (VECTOR(uint64_t, 4))(0x1CA9823142ACE07DL, (VECTOR(uint64_t, 2))(0x1CA9823142ACE07DL, 2UL), 2UL), 2UL, 0x1CA9823142ACE07DL, 2UL, (VECTOR(uint64_t, 2))(0x1CA9823142ACE07DL, 2UL), (VECTOR(uint64_t, 2))(0x1CA9823142ACE07DL, 2UL), 0x1CA9823142ACE07DL, 2UL, 0x1CA9823142ACE07DL, 2UL);
            VECTOR(uint64_t, 2) l_80 = (VECTOR(uint64_t, 2))(0x3D5EAA97CAD959FCL, 18446744073709551614UL);
            VECTOR(uint64_t, 2) l_81 = (VECTOR(uint64_t, 2))(18446744073709551614UL, 0x1D25F4349FEC891FL);
            VECTOR(uint64_t, 16) l_82 = (VECTOR(uint64_t, 16))(0xABF266DE40C593BBL, (VECTOR(uint64_t, 4))(0xABF266DE40C593BBL, (VECTOR(uint64_t, 2))(0xABF266DE40C593BBL, 0xD4231368DE677DABL), 0xD4231368DE677DABL), 0xD4231368DE677DABL, 0xABF266DE40C593BBL, 0xD4231368DE677DABL, (VECTOR(uint64_t, 2))(0xABF266DE40C593BBL, 0xD4231368DE677DABL), (VECTOR(uint64_t, 2))(0xABF266DE40C593BBL, 0xD4231368DE677DABL), 0xABF266DE40C593BBL, 0xD4231368DE677DABL, 0xABF266DE40C593BBL, 0xD4231368DE677DABL);
            int16_t l_83 = 0x01CCL;
            VECTOR(uint64_t, 8) l_84 = (VECTOR(uint64_t, 8))(0x83D71515025B9248L, (VECTOR(uint64_t, 4))(0x83D71515025B9248L, (VECTOR(uint64_t, 2))(0x83D71515025B9248L, 0x9C0213A2BBEBC4FFL), 0x9C0213A2BBEBC4FFL), 0x9C0213A2BBEBC4FFL, 0x83D71515025B9248L, 0x9C0213A2BBEBC4FFL);
            uint32_t l_85[8] = {4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL};
            VECTOR(uint64_t, 4) l_86 = (VECTOR(uint64_t, 4))(0x29CC96ABB4AA4140L, (VECTOR(uint64_t, 2))(0x29CC96ABB4AA4140L, 0x4FD71AF1E100AA35L), 0x4FD71AF1E100AA35L);
            VECTOR(uint64_t, 16) l_87 = (VECTOR(uint64_t, 16))(0xCF74835F01DA63D7L, (VECTOR(uint64_t, 4))(0xCF74835F01DA63D7L, (VECTOR(uint64_t, 2))(0xCF74835F01DA63D7L, 6UL), 6UL), 6UL, 0xCF74835F01DA63D7L, 6UL, (VECTOR(uint64_t, 2))(0xCF74835F01DA63D7L, 6UL), (VECTOR(uint64_t, 2))(0xCF74835F01DA63D7L, 6UL), 0xCF74835F01DA63D7L, 6UL, 0xCF74835F01DA63D7L, 6UL);
            VECTOR(uint64_t, 16) l_88 = (VECTOR(uint64_t, 16))(18446744073709551612UL, (VECTOR(uint64_t, 4))(18446744073709551612UL, (VECTOR(uint64_t, 2))(18446744073709551612UL, 0UL), 0UL), 0UL, 18446744073709551612UL, 0UL, (VECTOR(uint64_t, 2))(18446744073709551612UL, 0UL), (VECTOR(uint64_t, 2))(18446744073709551612UL, 0UL), 18446744073709551612UL, 0UL, 18446744073709551612UL, 0UL);
            VECTOR(uint64_t, 8) l_89 = (VECTOR(uint64_t, 8))(18446744073709551610UL, (VECTOR(uint64_t, 4))(18446744073709551610UL, (VECTOR(uint64_t, 2))(18446744073709551610UL, 1UL), 1UL), 1UL, 18446744073709551610UL, 1UL);
            VECTOR(uint32_t, 2) l_90 = (VECTOR(uint32_t, 2))(0xACF1AFC5L, 0x83611122L);
            VECTOR(uint32_t, 8) l_91 = (VECTOR(uint32_t, 8))(0xA087AC20L, (VECTOR(uint32_t, 4))(0xA087AC20L, (VECTOR(uint32_t, 2))(0xA087AC20L, 1UL), 1UL), 1UL, 0xA087AC20L, 1UL);
            VECTOR(uint64_t, 8) l_92 = (VECTOR(uint64_t, 8))(18446744073709551609UL, (VECTOR(uint64_t, 4))(18446744073709551609UL, (VECTOR(uint64_t, 2))(18446744073709551609UL, 0x924D9C5E1620D8A8L), 0x924D9C5E1620D8A8L), 0x924D9C5E1620D8A8L, 18446744073709551609UL, 0x924D9C5E1620D8A8L);
            VECTOR(int64_t, 16) l_93 = (VECTOR(int64_t, 16))(0x40BD20A5AE12EA52L, (VECTOR(int64_t, 4))(0x40BD20A5AE12EA52L, (VECTOR(int64_t, 2))(0x40BD20A5AE12EA52L, (-4L)), (-4L)), (-4L), 0x40BD20A5AE12EA52L, (-4L), (VECTOR(int64_t, 2))(0x40BD20A5AE12EA52L, (-4L)), (VECTOR(int64_t, 2))(0x40BD20A5AE12EA52L, (-4L)), 0x40BD20A5AE12EA52L, (-4L), 0x40BD20A5AE12EA52L, (-4L));
            int64_t l_94 = 0x10B97FFB89B2A2CBL;
            VECTOR(uint64_t, 8) l_95 = (VECTOR(uint64_t, 8))(0xC56F68EFB8CC5E00L, (VECTOR(uint64_t, 4))(0xC56F68EFB8CC5E00L, (VECTOR(uint64_t, 2))(0xC56F68EFB8CC5E00L, 0x88CBA7A3D7248D74L), 0x88CBA7A3D7248D74L), 0x88CBA7A3D7248D74L, 0xC56F68EFB8CC5E00L, 0x88CBA7A3D7248D74L);
            VECTOR(uint64_t, 2) l_96 = (VECTOR(uint64_t, 2))(18446744073709551615UL, 0x78DB3D834670EA8EL);
            VECTOR(uint64_t, 8) l_97 = (VECTOR(uint64_t, 8))(18446744073709551612UL, (VECTOR(uint64_t, 4))(18446744073709551612UL, (VECTOR(uint64_t, 2))(18446744073709551612UL, 0xB7C33EA39AE860EEL), 0xB7C33EA39AE860EEL), 0xB7C33EA39AE860EEL, 18446744073709551612UL, 0xB7C33EA39AE860EEL);
            VECTOR(uint64_t, 16) l_98 = (VECTOR(uint64_t, 16))(18446744073709551611UL, (VECTOR(uint64_t, 4))(18446744073709551611UL, (VECTOR(uint64_t, 2))(18446744073709551611UL, 0xACB5C8199CC8C399L), 0xACB5C8199CC8C399L), 0xACB5C8199CC8C399L, 18446744073709551611UL, 0xACB5C8199CC8C399L, (VECTOR(uint64_t, 2))(18446744073709551611UL, 0xACB5C8199CC8C399L), (VECTOR(uint64_t, 2))(18446744073709551611UL, 0xACB5C8199CC8C399L), 18446744073709551611UL, 0xACB5C8199CC8C399L, 18446744073709551611UL, 0xACB5C8199CC8C399L);
            VECTOR(uint64_t, 4) l_99 = (VECTOR(uint64_t, 4))(0xF3A0D747CD2075E5L, (VECTOR(uint64_t, 2))(0xF3A0D747CD2075E5L, 1UL), 1UL);
            VECTOR(uint64_t, 8) l_100 = (VECTOR(uint64_t, 8))(0xC7C683C3F70368F8L, (VECTOR(uint64_t, 4))(0xC7C683C3F70368F8L, (VECTOR(uint64_t, 2))(0xC7C683C3F70368F8L, 0x678A40D3F77D2087L), 0x678A40D3F77D2087L), 0x678A40D3F77D2087L, 0xC7C683C3F70368F8L, 0x678A40D3F77D2087L);
            VECTOR(uint64_t, 8) l_101 = (VECTOR(uint64_t, 8))(0x91750CCDA4A6FB27L, (VECTOR(uint64_t, 4))(0x91750CCDA4A6FB27L, (VECTOR(uint64_t, 2))(0x91750CCDA4A6FB27L, 0x419A621B44B642EDL), 0x419A621B44B642EDL), 0x419A621B44B642EDL, 0x91750CCDA4A6FB27L, 0x419A621B44B642EDL);
            VECTOR(uint64_t, 2) l_102 = (VECTOR(uint64_t, 2))(18446744073709551613UL, 1UL);
            VECTOR(uint64_t, 8) l_103 = (VECTOR(uint64_t, 8))(18446744073709551614UL, (VECTOR(uint64_t, 4))(18446744073709551614UL, (VECTOR(uint64_t, 2))(18446744073709551614UL, 0UL), 0UL), 0UL, 18446744073709551614UL, 0UL);
            VECTOR(uint64_t, 2) l_104 = (VECTOR(uint64_t, 2))(0xE471B29B62C09397L, 0xBC1338C270E2A701L);
            uint64_t l_105 = 1UL;
            int16_t l_106 = 0x2D8DL;
            int64_t l_107 = 5L;
            int32_t l_108 = (-1L);
            int i;
            l_108 &= ((l_74 = l_73) , (((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(rotate(((VECTOR(uint64_t, 4))(mad_sat(((VECTOR(uint64_t, 8))(l_75.ywyxxwyw)).even, ((VECTOR(uint64_t, 4))(l_76.wzwx)), ((VECTOR(uint64_t, 4))(1UL, 9UL, 0x13E0CA2CDF274C11L, 0xE1695EA989989A98L))))), ((VECTOR(uint64_t, 8))(add_sat(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(add_sat(((VECTOR(uint64_t, 16))(l_77, 1UL, ((VECTOR(uint64_t, 8))(l_78.ywyyywyw)), ((VECTOR(uint64_t, 2))(0x6D7BFF020A73BC0EL, 0x0ECE9518344157F0L)), 0xAA0E685266ADDA10L, 0x310E27A8D2C224CEL, 4UL, 0x87A7CF8314CD5900L)).sa0, ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(l_79.s9c)).hi, ((VECTOR(uint64_t, 2))(l_80.yx)), 6UL)).lo))).yxyxyxxxyyxxyyyx)).lo)), 0xEFF69E9DA1234828L, ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(l_81.yy)).hi, ((VECTOR(uint64_t, 4))(l_82.sf261)), (l_83 = 8UL), ((VECTOR(uint64_t, 2))(abs_diff(((VECTOR(uint64_t, 2))(abs(((VECTOR(uint64_t, 4))(l_84.s0453)).odd))), ((VECTOR(uint64_t, 16))(0UL, l_85[5], ((VECTOR(uint64_t, 4))(mad_sat(((VECTOR(uint64_t, 16))(clz(((VECTOR(uint64_t, 8))(l_86.zzzxzyxw)).s0645075256047272))).s01c1, ((VECTOR(uint64_t, 2))(rhadd(((VECTOR(uint64_t, 4))(rotate(((VECTOR(uint64_t, 2))(l_87.sbf)).xyxx, ((VECTOR(uint64_t, 4))(l_88.sfdd8))))).odd, ((VECTOR(uint64_t, 4))(0x7339E942A635BD15L, 0x982ED821F8E690DFL, 0UL, 0xB48400EC8613E184L)).lo))).yxxy, ((VECTOR(uint64_t, 16))(l_89.s7623307006475236)).s8087))), ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 16))(upsample(((VECTOR(uint32_t, 8))(l_90.xxxyyxyy)).s3400153335115374, ((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))(l_91.s23)).xyxyyxyyxyxyxyxx))))).s0e5c)))), ((VECTOR(uint64_t, 4))(abs(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 16))(hadd(((VECTOR(uint64_t, 16))(l_92.s0630345031031354)), ((VECTOR(uint64_t, 8))(mul_hi(((VECTOR(uint64_t, 16))(mul_hi(((VECTOR(uint64_t, 16))(sub_sat(((VECTOR(uint64_t, 8))(l_93.s4, ((VECTOR(uint64_t, 4))(0xB7D5E36264D6F6C9L, 0x2B18C892F9381BC3L, 0UL, 18446744073709551614UL)), 1UL, 1UL, 0x173B194E89909C2EL)).s6755500535610402, ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(0x6167B9C7346DDCF8L, 6UL)).xxxyxyxy)).s3, l_94, ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 4))(0UL, ((VECTOR(uint64_t, 2))(0xF2BE0B92564D233DL, 0xBB06C8777786D11AL)), 18446744073709551614UL)).zxwywxyywzwwxyyy)).sb3ca)), 0x2B0D1CDFBE848233L, 0x924104B6A6B6A2D8L)).s3643446707023713))), ((VECTOR(uint64_t, 8))(hadd(((VECTOR(uint64_t, 8))(l_95.s27600547)), ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 8))(clz(((VECTOR(uint64_t, 4))(mad_hi(((VECTOR(uint64_t, 8))(l_96.yyxyxxyy)).odd, ((VECTOR(uint64_t, 8))(l_97.s05336706)).lo, ((VECTOR(uint64_t, 8))(l_98.s40fb084a)).hi))).zxxxyxxz)))))))).s6356141300206070))).odd, ((VECTOR(uint64_t, 16))(hadd(((VECTOR(uint64_t, 4))(add_sat(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(18446744073709551615UL, 0xA67006BDA4C5B4E2L)), ((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 16))(add_sat(((VECTOR(uint64_t, 16))(hadd(((VECTOR(uint64_t, 16))(l_99.zwxzyzywyxzyxzxw)), ((VECTOR(uint64_t, 4))(sub_sat(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(0x72AE737D706139C8L, 0xFF4847CB24E923EBL)), ((VECTOR(uint64_t, 4))(l_100.s4255)), 0x6D78DB7E046D4792L, 0x96C68BD412E5A938L)).lo, ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 8))(18446744073709551613UL, 1UL, ((VECTOR(uint64_t, 4))(l_101.s4320)), 1UL, 4UL)).odd)).even)), 18446744073709551615UL, 2UL))))).yzzywwzxyxyzxxxw))), ((VECTOR(uint64_t, 4))(l_102.xyyx)).zwxxzwwywwwwywxx))).scf)), ((VECTOR(uint64_t, 2))(0x766FE7F9DC645B2AL, 0xAED2A57F4424053BL)), 0xCA6591A8809466F0L, 0UL)))).hi, ((VECTOR(uint64_t, 16))(l_103.s7444562205326263)).s0fa3))).yyzzywyyyyxyyywx, ((VECTOR(uint64_t, 8))(l_104.yyxyyyyy)).s2523253036066632))).hi))).s6111055622613510))).s98)))).yyyy))), 18446744073709551608UL, 18446744073709551615UL)).s14))), 1UL, l_105, ((VECTOR(uint64_t, 2))(0x9D26D99E8A1AAA12L)), 0x6C43AB17D805DE68L, l_106, 0x579967C0D34ED2CBL, 18446744073709551614UL)))).se, 18446744073709551608UL, ((VECTOR(uint64_t, 2))(0x9A9D96BD77A3CA1CL)), ((VECTOR(uint64_t, 2))(0xB8DD50FD98BFE20EL)), 0xF1E6A96E86D8666CL)).lo, ((VECTOR(uint64_t, 8))(0x7FC80EF8999B4F4DL))))).lo))).yzyzzxww)).s3 , l_107));
            unsigned int result = 0;
            result += l_73;
            result += l_74;
            result += l_75.w;
            result += l_75.z;
            result += l_75.y;
            result += l_75.x;
            result += l_76.w;
            result += l_76.z;
            result += l_76.y;
            result += l_76.x;
            result += l_77;
            result += l_78.w;
            result += l_78.z;
            result += l_78.y;
            result += l_78.x;
            result += l_79.sf;
            result += l_79.se;
            result += l_79.sd;
            result += l_79.sc;
            result += l_79.sb;
            result += l_79.sa;
            result += l_79.s9;
            result += l_79.s8;
            result += l_79.s7;
            result += l_79.s6;
            result += l_79.s5;
            result += l_79.s4;
            result += l_79.s3;
            result += l_79.s2;
            result += l_79.s1;
            result += l_79.s0;
            result += l_80.y;
            result += l_80.x;
            result += l_81.y;
            result += l_81.x;
            result += l_82.sf;
            result += l_82.se;
            result += l_82.sd;
            result += l_82.sc;
            result += l_82.sb;
            result += l_82.sa;
            result += l_82.s9;
            result += l_82.s8;
            result += l_82.s7;
            result += l_82.s6;
            result += l_82.s5;
            result += l_82.s4;
            result += l_82.s3;
            result += l_82.s2;
            result += l_82.s1;
            result += l_82.s0;
            result += l_83;
            result += l_84.s7;
            result += l_84.s6;
            result += l_84.s5;
            result += l_84.s4;
            result += l_84.s3;
            result += l_84.s2;
            result += l_84.s1;
            result += l_84.s0;
            int l_85_i0;
            for (l_85_i0 = 0; l_85_i0 < 8; l_85_i0++) {
                result += l_85[l_85_i0];
            }
            result += l_86.w;
            result += l_86.z;
            result += l_86.y;
            result += l_86.x;
            result += l_87.sf;
            result += l_87.se;
            result += l_87.sd;
            result += l_87.sc;
            result += l_87.sb;
            result += l_87.sa;
            result += l_87.s9;
            result += l_87.s8;
            result += l_87.s7;
            result += l_87.s6;
            result += l_87.s5;
            result += l_87.s4;
            result += l_87.s3;
            result += l_87.s2;
            result += l_87.s1;
            result += l_87.s0;
            result += l_88.sf;
            result += l_88.se;
            result += l_88.sd;
            result += l_88.sc;
            result += l_88.sb;
            result += l_88.sa;
            result += l_88.s9;
            result += l_88.s8;
            result += l_88.s7;
            result += l_88.s6;
            result += l_88.s5;
            result += l_88.s4;
            result += l_88.s3;
            result += l_88.s2;
            result += l_88.s1;
            result += l_88.s0;
            result += l_89.s7;
            result += l_89.s6;
            result += l_89.s5;
            result += l_89.s4;
            result += l_89.s3;
            result += l_89.s2;
            result += l_89.s1;
            result += l_89.s0;
            result += l_90.y;
            result += l_90.x;
            result += l_91.s7;
            result += l_91.s6;
            result += l_91.s5;
            result += l_91.s4;
            result += l_91.s3;
            result += l_91.s2;
            result += l_91.s1;
            result += l_91.s0;
            result += l_92.s7;
            result += l_92.s6;
            result += l_92.s5;
            result += l_92.s4;
            result += l_92.s3;
            result += l_92.s2;
            result += l_92.s1;
            result += l_92.s0;
            result += l_93.sf;
            result += l_93.se;
            result += l_93.sd;
            result += l_93.sc;
            result += l_93.sb;
            result += l_93.sa;
            result += l_93.s9;
            result += l_93.s8;
            result += l_93.s7;
            result += l_93.s6;
            result += l_93.s5;
            result += l_93.s4;
            result += l_93.s3;
            result += l_93.s2;
            result += l_93.s1;
            result += l_93.s0;
            result += l_94;
            result += l_95.s7;
            result += l_95.s6;
            result += l_95.s5;
            result += l_95.s4;
            result += l_95.s3;
            result += l_95.s2;
            result += l_95.s1;
            result += l_95.s0;
            result += l_96.y;
            result += l_96.x;
            result += l_97.s7;
            result += l_97.s6;
            result += l_97.s5;
            result += l_97.s4;
            result += l_97.s3;
            result += l_97.s2;
            result += l_97.s1;
            result += l_97.s0;
            result += l_98.sf;
            result += l_98.se;
            result += l_98.sd;
            result += l_98.sc;
            result += l_98.sb;
            result += l_98.sa;
            result += l_98.s9;
            result += l_98.s8;
            result += l_98.s7;
            result += l_98.s6;
            result += l_98.s5;
            result += l_98.s4;
            result += l_98.s3;
            result += l_98.s2;
            result += l_98.s1;
            result += l_98.s0;
            result += l_99.w;
            result += l_99.z;
            result += l_99.y;
            result += l_99.x;
            result += l_100.s7;
            result += l_100.s6;
            result += l_100.s5;
            result += l_100.s4;
            result += l_100.s3;
            result += l_100.s2;
            result += l_100.s1;
            result += l_100.s0;
            result += l_101.s7;
            result += l_101.s6;
            result += l_101.s5;
            result += l_101.s4;
            result += l_101.s3;
            result += l_101.s2;
            result += l_101.s1;
            result += l_101.s0;
            result += l_102.y;
            result += l_102.x;
            result += l_103.s7;
            result += l_103.s6;
            result += l_103.s5;
            result += l_103.s4;
            result += l_103.s3;
            result += l_103.s2;
            result += l_103.s1;
            result += l_103.s0;
            result += l_104.y;
            result += l_104.x;
            result += l_105;
            result += l_106;
            result += l_107;
            result += l_108;
            atomic_add(&p_883->l_special_values[30], result);
        }
        else
        { /* block id: 21 */
            (1 + 1);
        }
        if (p_883->g_comm_values[p_883->tid])
            continue;
        for (l_66 = 21; (l_66 < 24); l_66 = safe_add_func_int16_t_s_s(l_66, 8))
        { /* block id: 27 */
            (**l_72) ^= 0L;
        }
    }
    return p_883->g_111;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global volatile int *g_atomic_reduction, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[40];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 40; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[40];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 40; i++)
            l_special_values[i] = 0;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    __local int64_t l_comm_values[3];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 3; i++)
            l_comm_values[i] = 1;
    struct S0 c_884;
    struct S0* p_883 = &c_884;
    struct S0 c_885 = {
        1UL, // p_883->g_3
        0L, // p_883->g_6
        1UL, // p_883->g_35
        0x38C8A251L, // p_883->g_65
        0x2D16CF05L, // p_883->g_67
        {{&p_883->g_3,&p_883->g_3,&p_883->g_3,&p_883->g_3},{&p_883->g_3,&p_883->g_3,&p_883->g_3,&p_883->g_3},{&p_883->g_3,&p_883->g_3,&p_883->g_3,&p_883->g_3},{&p_883->g_3,&p_883->g_3,&p_883->g_3,&p_883->g_3},{&p_883->g_3,&p_883->g_3,&p_883->g_3,&p_883->g_3},{&p_883->g_3,&p_883->g_3,&p_883->g_3,&p_883->g_3}}, // p_883->g_112
        &p_883->g_112[1][2], // p_883->g_111
        (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, (-6L)), (-6L)), // p_883->g_116
        &p_883->g_65, // p_883->g_127
        1UL, // p_883->g_135
        (VECTOR(int64_t, 16))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 0x47A3A9A028DDFECAL), 0x47A3A9A028DDFECAL), 0x47A3A9A028DDFECAL, (-1L), 0x47A3A9A028DDFECAL, (VECTOR(int64_t, 2))((-1L), 0x47A3A9A028DDFECAL), (VECTOR(int64_t, 2))((-1L), 0x47A3A9A028DDFECAL), (-1L), 0x47A3A9A028DDFECAL, (-1L), 0x47A3A9A028DDFECAL), // p_883->g_147
        (VECTOR(uint32_t, 16))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 0xD00C7963L), 0xD00C7963L), 0xD00C7963L, 0UL, 0xD00C7963L, (VECTOR(uint32_t, 2))(0UL, 0xD00C7963L), (VECTOR(uint32_t, 2))(0UL, 0xD00C7963L), 0UL, 0xD00C7963L, 0UL, 0xD00C7963L), // p_883->g_149
        4294967286UL, // p_883->g_156
        0x523A43FDL, // p_883->g_160
        {{{&p_883->g_160,&p_883->g_160,&p_883->g_160,&p_883->g_160,&p_883->g_160,&p_883->g_160},{&p_883->g_160,&p_883->g_160,&p_883->g_160,&p_883->g_160,&p_883->g_160,&p_883->g_160},{&p_883->g_160,&p_883->g_160,&p_883->g_160,&p_883->g_160,&p_883->g_160,&p_883->g_160}}}, // p_883->g_159
        0L, // p_883->g_167
        0x17AC9DC74055D422L, // p_883->g_170
        (VECTOR(uint64_t, 16))(0UL, (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 0x83B52146C8C352A3L), 0x83B52146C8C352A3L), 0x83B52146C8C352A3L, 0UL, 0x83B52146C8C352A3L, (VECTOR(uint64_t, 2))(0UL, 0x83B52146C8C352A3L), (VECTOR(uint64_t, 2))(0UL, 0x83B52146C8C352A3L), 0UL, 0x83B52146C8C352A3L, 0UL, 0x83B52146C8C352A3L), // p_883->g_187
        (VECTOR(int64_t, 4))(0x766869ADC50922C1L, (VECTOR(int64_t, 2))(0x766869ADC50922C1L, 8L), 8L), // p_883->g_199
        &p_883->g_127, // p_883->g_208
        {0x4F668605L,0x4F668605L,0x4F668605L,0x4F668605L,0x4F668605L,0x4F668605L,0x4F668605L,0x4F668605L,0x4F668605L}, // p_883->g_219
        {&p_883->g_219[7]}, // p_883->g_218
        (VECTOR(int8_t, 4))(5L, (VECTOR(int8_t, 2))(5L, (-7L)), (-7L)), // p_883->g_230
        &p_883->g_156, // p_883->g_232
        &p_883->g_111, // p_883->g_273
        0x690EL, // p_883->g_313
        1L, // p_883->g_322
        {4294967294UL,4294967294UL,4294967294UL}, // p_883->g_325
        (void*)0, // p_883->g_333
        (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 1L), 1L), // p_883->g_355
        0x5A3B71BFL, // p_883->g_363
        &p_883->g_65, // p_883->g_379
        {0xAB63L,0xAB63L,0xAB63L,0xAB63L,0xAB63L,0xAB63L}, // p_883->g_395
        (VECTOR(int16_t, 4))((-10L), (VECTOR(int16_t, 2))((-10L), 0x534FL), 0x534FL), // p_883->g_408
        (VECTOR(uint16_t, 16))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 65531UL), 65531UL), 65531UL, 0UL, 65531UL, (VECTOR(uint16_t, 2))(0UL, 65531UL), (VECTOR(uint16_t, 2))(0UL, 65531UL), 0UL, 65531UL, 0UL, 65531UL), // p_883->g_416
        (VECTOR(uint16_t, 2))(65534UL, 65531UL), // p_883->g_420
        {0x32L,0x32L,0x32L,0x32L,0x32L,0x32L,0x32L,0x32L}, // p_883->g_481
        (VECTOR(int16_t, 2))(1L, 0x7EA5L), // p_883->g_498
        (VECTOR(int64_t, 2))(0L, 0x093D9BAE1A404466L), // p_883->g_510
        (VECTOR(uint16_t, 2))(1UL, 7UL), // p_883->g_523
        0x21826C535E11F63FL, // p_883->g_528
        (VECTOR(int8_t, 8))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x1AL), 0x1AL), 0x1AL, (-1L), 0x1AL), // p_883->g_572
        (VECTOR(uint16_t, 8))(0x0C75L, (VECTOR(uint16_t, 4))(0x0C75L, (VECTOR(uint16_t, 2))(0x0C75L, 65535UL), 65535UL), 65535UL, 0x0C75L, 65535UL), // p_883->g_574
        (VECTOR(int32_t, 2))((-7L), 0L), // p_883->g_596
        &p_883->g_208, // p_883->g_604
        (VECTOR(int32_t, 2))(0x3779757BL, 0x4B881ACEL), // p_883->g_645
        (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x18B9751EL), 0x18B9751EL), 0x18B9751EL, 1L, 0x18B9751EL, (VECTOR(int32_t, 2))(1L, 0x18B9751EL), (VECTOR(int32_t, 2))(1L, 0x18B9751EL), 1L, 0x18B9751EL, 1L, 0x18B9751EL), // p_883->g_699
        &p_883->g_35, // p_883->g_715
        {{&p_883->g_715,&p_883->g_715,&p_883->g_715,&p_883->g_715,&p_883->g_715,&p_883->g_715,&p_883->g_715,&p_883->g_715},{&p_883->g_715,&p_883->g_715,&p_883->g_715,&p_883->g_715,&p_883->g_715,&p_883->g_715,&p_883->g_715,&p_883->g_715},{&p_883->g_715,&p_883->g_715,&p_883->g_715,&p_883->g_715,&p_883->g_715,&p_883->g_715,&p_883->g_715,&p_883->g_715},{&p_883->g_715,&p_883->g_715,&p_883->g_715,&p_883->g_715,&p_883->g_715,&p_883->g_715,&p_883->g_715,&p_883->g_715},{&p_883->g_715,&p_883->g_715,&p_883->g_715,&p_883->g_715,&p_883->g_715,&p_883->g_715,&p_883->g_715,&p_883->g_715},{&p_883->g_715,&p_883->g_715,&p_883->g_715,&p_883->g_715,&p_883->g_715,&p_883->g_715,&p_883->g_715,&p_883->g_715},{&p_883->g_715,&p_883->g_715,&p_883->g_715,&p_883->g_715,&p_883->g_715,&p_883->g_715,&p_883->g_715,&p_883->g_715}}, // p_883->g_714
        &p_883->g_65, // p_883->g_741
        (VECTOR(int16_t, 8))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x2FEDL), 0x2FEDL), 0x2FEDL, 1L, 0x2FEDL), // p_883->g_748
        (VECTOR(uint16_t, 4))(0x597CL, (VECTOR(uint16_t, 2))(0x597CL, 0xAC2FL), 0xAC2FL), // p_883->g_776
        (VECTOR(uint32_t, 2))(0x0FE9941FL, 0x44E428ECL), // p_883->g_780
        &p_883->g_219[7], // p_883->g_831
        (VECTOR(uint32_t, 4))(0x6C48D094L, (VECTOR(uint32_t, 2))(0x6C48D094L, 8UL), 8UL), // p_883->g_840
        0x13L, // p_883->g_847
        &p_883->g_847, // p_883->g_846
        (VECTOR(int64_t, 8))(0x19C653C5A45F5361L, (VECTOR(int64_t, 4))(0x19C653C5A45F5361L, (VECTOR(int64_t, 2))(0x19C653C5A45F5361L, 8L), 8L), 8L, 0x19C653C5A45F5361L, 8L), // p_883->g_859
        &p_883->g_714[5][3], // p_883->g_868
        {{(void*)0,&p_883->g_714[3][0],(void*)0,(void*)0,&p_883->g_714[3][0],(void*)0}}, // p_883->g_869
        0, // p_883->v_collective
        sequence_input[get_global_id(0)], // p_883->global_0_offset
        sequence_input[get_global_id(1)], // p_883->global_1_offset
        sequence_input[get_global_id(2)], // p_883->global_2_offset
        sequence_input[get_local_id(0)], // p_883->local_0_offset
        sequence_input[get_local_id(1)], // p_883->local_1_offset
        sequence_input[get_local_id(2)], // p_883->local_2_offset
        sequence_input[get_group_id(0)], // p_883->group_0_offset
        sequence_input[get_group_id(1)], // p_883->group_1_offset
        sequence_input[get_group_id(2)], // p_883->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 3)), permutations[0][get_linear_local_id()])), // p_883->tid
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_884 = c_885;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_883);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_883->g_3, "p_883->g_3", print_hash_value);
    transparent_crc(p_883->g_6, "p_883->g_6", print_hash_value);
    transparent_crc(p_883->g_35, "p_883->g_35", print_hash_value);
    transparent_crc(p_883->g_65, "p_883->g_65", print_hash_value);
    transparent_crc(p_883->g_67, "p_883->g_67", print_hash_value);
    transparent_crc(p_883->g_116.x, "p_883->g_116.x", print_hash_value);
    transparent_crc(p_883->g_116.y, "p_883->g_116.y", print_hash_value);
    transparent_crc(p_883->g_116.z, "p_883->g_116.z", print_hash_value);
    transparent_crc(p_883->g_116.w, "p_883->g_116.w", print_hash_value);
    transparent_crc(p_883->g_135, "p_883->g_135", print_hash_value);
    transparent_crc(p_883->g_147.s0, "p_883->g_147.s0", print_hash_value);
    transparent_crc(p_883->g_147.s1, "p_883->g_147.s1", print_hash_value);
    transparent_crc(p_883->g_147.s2, "p_883->g_147.s2", print_hash_value);
    transparent_crc(p_883->g_147.s3, "p_883->g_147.s3", print_hash_value);
    transparent_crc(p_883->g_147.s4, "p_883->g_147.s4", print_hash_value);
    transparent_crc(p_883->g_147.s5, "p_883->g_147.s5", print_hash_value);
    transparent_crc(p_883->g_147.s6, "p_883->g_147.s6", print_hash_value);
    transparent_crc(p_883->g_147.s7, "p_883->g_147.s7", print_hash_value);
    transparent_crc(p_883->g_147.s8, "p_883->g_147.s8", print_hash_value);
    transparent_crc(p_883->g_147.s9, "p_883->g_147.s9", print_hash_value);
    transparent_crc(p_883->g_147.sa, "p_883->g_147.sa", print_hash_value);
    transparent_crc(p_883->g_147.sb, "p_883->g_147.sb", print_hash_value);
    transparent_crc(p_883->g_147.sc, "p_883->g_147.sc", print_hash_value);
    transparent_crc(p_883->g_147.sd, "p_883->g_147.sd", print_hash_value);
    transparent_crc(p_883->g_147.se, "p_883->g_147.se", print_hash_value);
    transparent_crc(p_883->g_147.sf, "p_883->g_147.sf", print_hash_value);
    transparent_crc(p_883->g_149.s0, "p_883->g_149.s0", print_hash_value);
    transparent_crc(p_883->g_149.s1, "p_883->g_149.s1", print_hash_value);
    transparent_crc(p_883->g_149.s2, "p_883->g_149.s2", print_hash_value);
    transparent_crc(p_883->g_149.s3, "p_883->g_149.s3", print_hash_value);
    transparent_crc(p_883->g_149.s4, "p_883->g_149.s4", print_hash_value);
    transparent_crc(p_883->g_149.s5, "p_883->g_149.s5", print_hash_value);
    transparent_crc(p_883->g_149.s6, "p_883->g_149.s6", print_hash_value);
    transparent_crc(p_883->g_149.s7, "p_883->g_149.s7", print_hash_value);
    transparent_crc(p_883->g_149.s8, "p_883->g_149.s8", print_hash_value);
    transparent_crc(p_883->g_149.s9, "p_883->g_149.s9", print_hash_value);
    transparent_crc(p_883->g_149.sa, "p_883->g_149.sa", print_hash_value);
    transparent_crc(p_883->g_149.sb, "p_883->g_149.sb", print_hash_value);
    transparent_crc(p_883->g_149.sc, "p_883->g_149.sc", print_hash_value);
    transparent_crc(p_883->g_149.sd, "p_883->g_149.sd", print_hash_value);
    transparent_crc(p_883->g_149.se, "p_883->g_149.se", print_hash_value);
    transparent_crc(p_883->g_149.sf, "p_883->g_149.sf", print_hash_value);
    transparent_crc(p_883->g_156, "p_883->g_156", print_hash_value);
    transparent_crc(p_883->g_160, "p_883->g_160", print_hash_value);
    transparent_crc(p_883->g_167, "p_883->g_167", print_hash_value);
    transparent_crc(p_883->g_170, "p_883->g_170", print_hash_value);
    transparent_crc(p_883->g_187.s0, "p_883->g_187.s0", print_hash_value);
    transparent_crc(p_883->g_187.s1, "p_883->g_187.s1", print_hash_value);
    transparent_crc(p_883->g_187.s2, "p_883->g_187.s2", print_hash_value);
    transparent_crc(p_883->g_187.s3, "p_883->g_187.s3", print_hash_value);
    transparent_crc(p_883->g_187.s4, "p_883->g_187.s4", print_hash_value);
    transparent_crc(p_883->g_187.s5, "p_883->g_187.s5", print_hash_value);
    transparent_crc(p_883->g_187.s6, "p_883->g_187.s6", print_hash_value);
    transparent_crc(p_883->g_187.s7, "p_883->g_187.s7", print_hash_value);
    transparent_crc(p_883->g_187.s8, "p_883->g_187.s8", print_hash_value);
    transparent_crc(p_883->g_187.s9, "p_883->g_187.s9", print_hash_value);
    transparent_crc(p_883->g_187.sa, "p_883->g_187.sa", print_hash_value);
    transparent_crc(p_883->g_187.sb, "p_883->g_187.sb", print_hash_value);
    transparent_crc(p_883->g_187.sc, "p_883->g_187.sc", print_hash_value);
    transparent_crc(p_883->g_187.sd, "p_883->g_187.sd", print_hash_value);
    transparent_crc(p_883->g_187.se, "p_883->g_187.se", print_hash_value);
    transparent_crc(p_883->g_187.sf, "p_883->g_187.sf", print_hash_value);
    transparent_crc(p_883->g_199.x, "p_883->g_199.x", print_hash_value);
    transparent_crc(p_883->g_199.y, "p_883->g_199.y", print_hash_value);
    transparent_crc(p_883->g_199.z, "p_883->g_199.z", print_hash_value);
    transparent_crc(p_883->g_199.w, "p_883->g_199.w", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_883->g_219[i], "p_883->g_219[i]", print_hash_value);

    }
    transparent_crc(p_883->g_230.x, "p_883->g_230.x", print_hash_value);
    transparent_crc(p_883->g_230.y, "p_883->g_230.y", print_hash_value);
    transparent_crc(p_883->g_230.z, "p_883->g_230.z", print_hash_value);
    transparent_crc(p_883->g_230.w, "p_883->g_230.w", print_hash_value);
    transparent_crc(p_883->g_313, "p_883->g_313", print_hash_value);
    transparent_crc(p_883->g_322, "p_883->g_322", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_883->g_325[i], "p_883->g_325[i]", print_hash_value);

    }
    transparent_crc(p_883->g_355.x, "p_883->g_355.x", print_hash_value);
    transparent_crc(p_883->g_355.y, "p_883->g_355.y", print_hash_value);
    transparent_crc(p_883->g_355.z, "p_883->g_355.z", print_hash_value);
    transparent_crc(p_883->g_355.w, "p_883->g_355.w", print_hash_value);
    transparent_crc(p_883->g_363, "p_883->g_363", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_883->g_395[i], "p_883->g_395[i]", print_hash_value);

    }
    transparent_crc(p_883->g_408.x, "p_883->g_408.x", print_hash_value);
    transparent_crc(p_883->g_408.y, "p_883->g_408.y", print_hash_value);
    transparent_crc(p_883->g_408.z, "p_883->g_408.z", print_hash_value);
    transparent_crc(p_883->g_408.w, "p_883->g_408.w", print_hash_value);
    transparent_crc(p_883->g_416.s0, "p_883->g_416.s0", print_hash_value);
    transparent_crc(p_883->g_416.s1, "p_883->g_416.s1", print_hash_value);
    transparent_crc(p_883->g_416.s2, "p_883->g_416.s2", print_hash_value);
    transparent_crc(p_883->g_416.s3, "p_883->g_416.s3", print_hash_value);
    transparent_crc(p_883->g_416.s4, "p_883->g_416.s4", print_hash_value);
    transparent_crc(p_883->g_416.s5, "p_883->g_416.s5", print_hash_value);
    transparent_crc(p_883->g_416.s6, "p_883->g_416.s6", print_hash_value);
    transparent_crc(p_883->g_416.s7, "p_883->g_416.s7", print_hash_value);
    transparent_crc(p_883->g_416.s8, "p_883->g_416.s8", print_hash_value);
    transparent_crc(p_883->g_416.s9, "p_883->g_416.s9", print_hash_value);
    transparent_crc(p_883->g_416.sa, "p_883->g_416.sa", print_hash_value);
    transparent_crc(p_883->g_416.sb, "p_883->g_416.sb", print_hash_value);
    transparent_crc(p_883->g_416.sc, "p_883->g_416.sc", print_hash_value);
    transparent_crc(p_883->g_416.sd, "p_883->g_416.sd", print_hash_value);
    transparent_crc(p_883->g_416.se, "p_883->g_416.se", print_hash_value);
    transparent_crc(p_883->g_416.sf, "p_883->g_416.sf", print_hash_value);
    transparent_crc(p_883->g_420.x, "p_883->g_420.x", print_hash_value);
    transparent_crc(p_883->g_420.y, "p_883->g_420.y", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_883->g_481[i], "p_883->g_481[i]", print_hash_value);

    }
    transparent_crc(p_883->g_498.x, "p_883->g_498.x", print_hash_value);
    transparent_crc(p_883->g_498.y, "p_883->g_498.y", print_hash_value);
    transparent_crc(p_883->g_510.x, "p_883->g_510.x", print_hash_value);
    transparent_crc(p_883->g_510.y, "p_883->g_510.y", print_hash_value);
    transparent_crc(p_883->g_523.x, "p_883->g_523.x", print_hash_value);
    transparent_crc(p_883->g_523.y, "p_883->g_523.y", print_hash_value);
    transparent_crc(p_883->g_528, "p_883->g_528", print_hash_value);
    transparent_crc(p_883->g_572.s0, "p_883->g_572.s0", print_hash_value);
    transparent_crc(p_883->g_572.s1, "p_883->g_572.s1", print_hash_value);
    transparent_crc(p_883->g_572.s2, "p_883->g_572.s2", print_hash_value);
    transparent_crc(p_883->g_572.s3, "p_883->g_572.s3", print_hash_value);
    transparent_crc(p_883->g_572.s4, "p_883->g_572.s4", print_hash_value);
    transparent_crc(p_883->g_572.s5, "p_883->g_572.s5", print_hash_value);
    transparent_crc(p_883->g_572.s6, "p_883->g_572.s6", print_hash_value);
    transparent_crc(p_883->g_572.s7, "p_883->g_572.s7", print_hash_value);
    transparent_crc(p_883->g_574.s0, "p_883->g_574.s0", print_hash_value);
    transparent_crc(p_883->g_574.s1, "p_883->g_574.s1", print_hash_value);
    transparent_crc(p_883->g_574.s2, "p_883->g_574.s2", print_hash_value);
    transparent_crc(p_883->g_574.s3, "p_883->g_574.s3", print_hash_value);
    transparent_crc(p_883->g_574.s4, "p_883->g_574.s4", print_hash_value);
    transparent_crc(p_883->g_574.s5, "p_883->g_574.s5", print_hash_value);
    transparent_crc(p_883->g_574.s6, "p_883->g_574.s6", print_hash_value);
    transparent_crc(p_883->g_574.s7, "p_883->g_574.s7", print_hash_value);
    transparent_crc(p_883->g_596.x, "p_883->g_596.x", print_hash_value);
    transparent_crc(p_883->g_596.y, "p_883->g_596.y", print_hash_value);
    transparent_crc(p_883->g_645.x, "p_883->g_645.x", print_hash_value);
    transparent_crc(p_883->g_645.y, "p_883->g_645.y", print_hash_value);
    transparent_crc(p_883->g_699.s0, "p_883->g_699.s0", print_hash_value);
    transparent_crc(p_883->g_699.s1, "p_883->g_699.s1", print_hash_value);
    transparent_crc(p_883->g_699.s2, "p_883->g_699.s2", print_hash_value);
    transparent_crc(p_883->g_699.s3, "p_883->g_699.s3", print_hash_value);
    transparent_crc(p_883->g_699.s4, "p_883->g_699.s4", print_hash_value);
    transparent_crc(p_883->g_699.s5, "p_883->g_699.s5", print_hash_value);
    transparent_crc(p_883->g_699.s6, "p_883->g_699.s6", print_hash_value);
    transparent_crc(p_883->g_699.s7, "p_883->g_699.s7", print_hash_value);
    transparent_crc(p_883->g_699.s8, "p_883->g_699.s8", print_hash_value);
    transparent_crc(p_883->g_699.s9, "p_883->g_699.s9", print_hash_value);
    transparent_crc(p_883->g_699.sa, "p_883->g_699.sa", print_hash_value);
    transparent_crc(p_883->g_699.sb, "p_883->g_699.sb", print_hash_value);
    transparent_crc(p_883->g_699.sc, "p_883->g_699.sc", print_hash_value);
    transparent_crc(p_883->g_699.sd, "p_883->g_699.sd", print_hash_value);
    transparent_crc(p_883->g_699.se, "p_883->g_699.se", print_hash_value);
    transparent_crc(p_883->g_699.sf, "p_883->g_699.sf", print_hash_value);
    transparent_crc(p_883->g_748.s0, "p_883->g_748.s0", print_hash_value);
    transparent_crc(p_883->g_748.s1, "p_883->g_748.s1", print_hash_value);
    transparent_crc(p_883->g_748.s2, "p_883->g_748.s2", print_hash_value);
    transparent_crc(p_883->g_748.s3, "p_883->g_748.s3", print_hash_value);
    transparent_crc(p_883->g_748.s4, "p_883->g_748.s4", print_hash_value);
    transparent_crc(p_883->g_748.s5, "p_883->g_748.s5", print_hash_value);
    transparent_crc(p_883->g_748.s6, "p_883->g_748.s6", print_hash_value);
    transparent_crc(p_883->g_748.s7, "p_883->g_748.s7", print_hash_value);
    transparent_crc(p_883->g_776.x, "p_883->g_776.x", print_hash_value);
    transparent_crc(p_883->g_776.y, "p_883->g_776.y", print_hash_value);
    transparent_crc(p_883->g_776.z, "p_883->g_776.z", print_hash_value);
    transparent_crc(p_883->g_776.w, "p_883->g_776.w", print_hash_value);
    transparent_crc(p_883->g_780.x, "p_883->g_780.x", print_hash_value);
    transparent_crc(p_883->g_780.y, "p_883->g_780.y", print_hash_value);
    transparent_crc(p_883->g_840.x, "p_883->g_840.x", print_hash_value);
    transparent_crc(p_883->g_840.y, "p_883->g_840.y", print_hash_value);
    transparent_crc(p_883->g_840.z, "p_883->g_840.z", print_hash_value);
    transparent_crc(p_883->g_840.w, "p_883->g_840.w", print_hash_value);
    transparent_crc(p_883->g_847, "p_883->g_847", print_hash_value);
    transparent_crc(p_883->g_859.s0, "p_883->g_859.s0", print_hash_value);
    transparent_crc(p_883->g_859.s1, "p_883->g_859.s1", print_hash_value);
    transparent_crc(p_883->g_859.s2, "p_883->g_859.s2", print_hash_value);
    transparent_crc(p_883->g_859.s3, "p_883->g_859.s3", print_hash_value);
    transparent_crc(p_883->g_859.s4, "p_883->g_859.s4", print_hash_value);
    transparent_crc(p_883->g_859.s5, "p_883->g_859.s5", print_hash_value);
    transparent_crc(p_883->g_859.s6, "p_883->g_859.s6", print_hash_value);
    transparent_crc(p_883->g_859.s7, "p_883->g_859.s7", print_hash_value);
    transparent_crc(p_883->v_collective, "p_883->v_collective", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 40; i++)
            transparent_crc(p_883->g_special_values[i + 40 * get_linear_group_id()], "p_883->g_special_values[i + 40 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 40; i++)
            transparent_crc(p_883->l_special_values[i], "p_883->l_special_values[i]", print_hash_value);
    transparent_crc(p_883->l_comm_values[get_linear_local_id()], "p_883->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_883->g_comm_values[get_linear_group_id() * 3 + get_linear_local_id()], "p_883->g_comm_values[get_linear_group_id() * 3 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
