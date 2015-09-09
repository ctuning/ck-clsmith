// ---fake_divergence ---inter_thread_comm -g 34,64,2 -l 1,1,2
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

__constant uint32_t permutations[10][2] = {
{1,0}, // permutation 0
{1,0}, // permutation 1
{1,0}, // permutation 2
{1,0}, // permutation 3
{1,0}, // permutation 4
{1,0}, // permutation 5
{1,0}, // permutation 6
{1,0}, // permutation 7
{1,0}, // permutation 8
{1,0} // permutation 9
};

// Seed: 38

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   volatile uint64_t  f0;
   uint64_t  f1;
   volatile int32_t  f2;
   volatile uint16_t  f3;
};

struct S1 {
    int32_t g_4[5];
    int32_t g_6[9][9];
    int32_t *g_8;
    volatile int32_t g_10;
    volatile int32_t g_11;
    int32_t g_12[4][4][8];
    uint32_t g_29;
    int32_t g_42;
    int16_t g_77;
    int16_t *g_76;
    uint64_t g_108;
    uint32_t g_114[10][3];
    uint64_t g_136;
    uint64_t *g_135;
    int8_t g_148;
    int8_t * volatile g_147[1][2];
    uint16_t g_211;
    int16_t g_234;
    int32_t ** volatile g_257[10];
    volatile uint32_t g_267[9];
    volatile union U0 g_280;
    int32_t ** volatile g_286[5][4][6];
    int8_t *g_310;
    int8_t **g_309;
    int8_t *** volatile g_308;
    union U0 g_315;
    int32_t ** volatile g_326;
    union U0 *g_340;
    int32_t ** volatile g_350;
    int32_t * volatile g_354;
    uint8_t g_362;
    int8_t g_370;
    union U0 g_394;
    volatile union U0 g_416;
    int32_t g_420;
    int8_t *** volatile g_471;
    int8_t *** volatile g_472;
    volatile uint64_t ** volatile g_499;
    volatile uint64_t ** volatile * volatile g_498;
    uint32_t g_545;
    uint32_t g_561[6][9][4];
    volatile uint32_t g_572;
    volatile union U0 * volatile g_580;
    union U0 g_589[2][7];
    int32_t **g_660;
    int32_t ***g_659;
    union U0 *g_668;
    uint8_t g_705;
    volatile union U0 * volatile * volatile g_724;
    volatile union U0 * volatile * volatile * volatile g_723;
    uint32_t *g_727[7];
    volatile int32_t g_735;
    union U0 **g_747[7];
    union U0 ***g_746;
    int8_t g_802;
    volatile uint64_t *g_820[5];
    volatile uint64_t * volatile *g_819;
    int64_t g_825;
    uint8_t g_842;
    volatile union U0 **g_896;
    volatile union U0 ***g_895;
    volatile union U0 *** volatile * volatile g_894;
    volatile union U0 *** volatile * volatile *g_893;
    volatile uint8_t g_906;
    volatile uint8_t *g_905;
    volatile uint8_t * volatile *g_904;
    volatile uint8_t * volatile **g_903;
    volatile union U0 g_1001;
    uint8_t *g_1060[10][7][1];
    uint8_t **g_1059;
    uint8_t ***g_1058;
    int8_t g_1144;
    int16_t g_1146;
    union U0 g_1151;
    uint64_t g_1202;
    union U0 g_1236;
    int32_t g_1263;
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
    __local int64_t *l_comm_values;
    __global int64_t *g_comm_values;
};


/* --- FORWARD DECLARATIONS --- */
int16_t  func_1(struct S1 * p_1358);
int32_t * func_13(uint32_t  p_14, int32_t * p_15, int32_t * p_16, int8_t  p_17, struct S1 * p_1358);
uint32_t  func_23(int32_t * p_24, struct S1 * p_1358);
int32_t  func_25(uint32_t  p_26, int32_t * p_27, struct S1 * p_1358);
int32_t * func_32(int64_t  p_33, uint32_t * p_34, uint32_t  p_35, uint32_t * p_36, int8_t  p_37, struct S1 * p_1358);
uint16_t  func_43(int16_t * p_44, struct S1 * p_1358);
int16_t * func_45(int16_t * p_46, int8_t  p_47, int8_t  p_48, struct S1 * p_1358);
int16_t * func_49(uint16_t  p_50, int32_t  p_51, uint64_t  p_52, struct S1 * p_1358);
uint8_t  func_55(int64_t  p_56, uint64_t  p_57, int64_t  p_58, int64_t  p_59, struct S1 * p_1358);
int16_t  func_62(int32_t  p_63, uint32_t * p_64, uint64_t  p_65, int16_t * p_66, struct S1 * p_1358);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1358->g_comm_values p_1358->g_8 p_1358->g_6 p_1358->g_12 p_1358->g_1151.f0 p_1358->g_561 p_1358->g_309 p_1358->g_310 p_1358->g_135 p_1358->g_136 p_1358->g_148
 * writes: p_1358->g_4 p_1358->g_6 p_1358->g_8 p_1358->g_12 p_1358->g_comm_values p_1358->g_148 p_1358->g_114
 */
int16_t  func_1(struct S1 * p_1358)
{ /* block id: 4 */
    uint32_t l_2[8][4][8] = {{{0x14173BF3L,0UL,0x0D3ECF04L,0x7BB1A88AL,0x172DDB74L,0x14173BF3L,0x7BB1A88AL,0x19570A50L},{0x14173BF3L,0UL,0x0D3ECF04L,0x7BB1A88AL,0x172DDB74L,0x14173BF3L,0x7BB1A88AL,0x19570A50L},{0x14173BF3L,0UL,0x0D3ECF04L,0x7BB1A88AL,0x172DDB74L,0x14173BF3L,0x7BB1A88AL,0x19570A50L},{0x14173BF3L,0UL,0x0D3ECF04L,0x7BB1A88AL,0x172DDB74L,0x14173BF3L,0x7BB1A88AL,0x19570A50L}},{{0x14173BF3L,0UL,0x0D3ECF04L,0x7BB1A88AL,0x172DDB74L,0x14173BF3L,0x7BB1A88AL,0x19570A50L},{0x14173BF3L,0UL,0x0D3ECF04L,0x7BB1A88AL,0x172DDB74L,0x14173BF3L,0x7BB1A88AL,0x19570A50L},{0x14173BF3L,0UL,0x0D3ECF04L,0x7BB1A88AL,0x172DDB74L,0x14173BF3L,0x7BB1A88AL,0x19570A50L},{0x14173BF3L,0UL,0x0D3ECF04L,0x7BB1A88AL,0x172DDB74L,0x14173BF3L,0x7BB1A88AL,0x19570A50L}},{{0x14173BF3L,0UL,0x0D3ECF04L,0x7BB1A88AL,0x172DDB74L,0x14173BF3L,0x7BB1A88AL,0x19570A50L},{0x14173BF3L,0UL,0x0D3ECF04L,0x7BB1A88AL,0x172DDB74L,0x14173BF3L,0x7BB1A88AL,0x19570A50L},{0x14173BF3L,0UL,0x0D3ECF04L,0x7BB1A88AL,0x172DDB74L,0x14173BF3L,0x7BB1A88AL,0x19570A50L},{0x14173BF3L,0UL,0x0D3ECF04L,0x7BB1A88AL,0x172DDB74L,0x14173BF3L,0x7BB1A88AL,0x19570A50L}},{{0x14173BF3L,0UL,0x0D3ECF04L,0x7BB1A88AL,0x172DDB74L,0x14173BF3L,0x7BB1A88AL,0x19570A50L},{0x14173BF3L,0UL,0x0D3ECF04L,0x7BB1A88AL,0x172DDB74L,0x14173BF3L,0x7BB1A88AL,0x19570A50L},{0x14173BF3L,0UL,0x0D3ECF04L,0x7BB1A88AL,0x172DDB74L,0x14173BF3L,0x7BB1A88AL,0x19570A50L},{0x14173BF3L,0UL,0x0D3ECF04L,0x7BB1A88AL,0x172DDB74L,0x14173BF3L,0x7BB1A88AL,0x19570A50L}},{{0x14173BF3L,0UL,0x0D3ECF04L,0x7BB1A88AL,0x172DDB74L,0x14173BF3L,0x7BB1A88AL,0x19570A50L},{0x14173BF3L,0UL,0x0D3ECF04L,0x7BB1A88AL,0x172DDB74L,0x14173BF3L,0x7BB1A88AL,0x19570A50L},{0x14173BF3L,0UL,0x0D3ECF04L,0x7BB1A88AL,0x172DDB74L,0x14173BF3L,0x7BB1A88AL,0x19570A50L},{0x14173BF3L,0UL,0x0D3ECF04L,0x7BB1A88AL,0x172DDB74L,0x14173BF3L,0x7BB1A88AL,0x19570A50L}},{{0x14173BF3L,0UL,0x0D3ECF04L,0x7BB1A88AL,0x172DDB74L,0x14173BF3L,0x7BB1A88AL,0x19570A50L},{0x14173BF3L,0UL,0x0D3ECF04L,0x7BB1A88AL,0x172DDB74L,0x14173BF3L,0x7BB1A88AL,0x19570A50L},{0x14173BF3L,0UL,0x0D3ECF04L,0x7BB1A88AL,0x172DDB74L,0x14173BF3L,0x7BB1A88AL,0x19570A50L},{0x14173BF3L,0UL,0x0D3ECF04L,0x7BB1A88AL,0x172DDB74L,0x14173BF3L,0x7BB1A88AL,0x19570A50L}},{{0x14173BF3L,0UL,0x0D3ECF04L,0x7BB1A88AL,0x172DDB74L,0x14173BF3L,0x7BB1A88AL,0x19570A50L},{0x14173BF3L,0UL,0x0D3ECF04L,0x7BB1A88AL,0x172DDB74L,0x14173BF3L,0x7BB1A88AL,0x19570A50L},{0x14173BF3L,0UL,0x0D3ECF04L,0x7BB1A88AL,0x172DDB74L,0x14173BF3L,0x7BB1A88AL,0x19570A50L},{0x14173BF3L,0UL,0x0D3ECF04L,0x7BB1A88AL,0x172DDB74L,0x14173BF3L,0x7BB1A88AL,0x19570A50L}},{{0x14173BF3L,0UL,0x0D3ECF04L,0x7BB1A88AL,0x172DDB74L,0x14173BF3L,0x7BB1A88AL,0x19570A50L},{0x14173BF3L,0UL,0x0D3ECF04L,0x7BB1A88AL,0x172DDB74L,0x14173BF3L,0x7BB1A88AL,0x19570A50L},{0x14173BF3L,0UL,0x0D3ECF04L,0x7BB1A88AL,0x172DDB74L,0x14173BF3L,0x7BB1A88AL,0x19570A50L},{0x14173BF3L,0UL,0x0D3ECF04L,0x7BB1A88AL,0x172DDB74L,0x14173BF3L,0x7BB1A88AL,0x19570A50L}}};
    int32_t *l_7 = &p_1358->g_6[0][4];
    int32_t l_1182[1];
    int64_t *l_1338 = (void*)0;
    int64_t *l_1339 = (void*)0;
    int64_t *l_1340 = (void*)0;
    int64_t *l_1341 = (void*)0;
    int64_t *l_1342 = (void*)0;
    int64_t *l_1343 = (void*)0;
    uint64_t **l_1352[7][5][5] = {{{&p_1358->g_135,(void*)0,&p_1358->g_135,&p_1358->g_135,&p_1358->g_135},{&p_1358->g_135,(void*)0,&p_1358->g_135,&p_1358->g_135,&p_1358->g_135},{&p_1358->g_135,(void*)0,&p_1358->g_135,&p_1358->g_135,&p_1358->g_135},{&p_1358->g_135,(void*)0,&p_1358->g_135,&p_1358->g_135,&p_1358->g_135},{&p_1358->g_135,(void*)0,&p_1358->g_135,&p_1358->g_135,&p_1358->g_135}},{{&p_1358->g_135,(void*)0,&p_1358->g_135,&p_1358->g_135,&p_1358->g_135},{&p_1358->g_135,(void*)0,&p_1358->g_135,&p_1358->g_135,&p_1358->g_135},{&p_1358->g_135,(void*)0,&p_1358->g_135,&p_1358->g_135,&p_1358->g_135},{&p_1358->g_135,(void*)0,&p_1358->g_135,&p_1358->g_135,&p_1358->g_135},{&p_1358->g_135,(void*)0,&p_1358->g_135,&p_1358->g_135,&p_1358->g_135}},{{&p_1358->g_135,(void*)0,&p_1358->g_135,&p_1358->g_135,&p_1358->g_135},{&p_1358->g_135,(void*)0,&p_1358->g_135,&p_1358->g_135,&p_1358->g_135},{&p_1358->g_135,(void*)0,&p_1358->g_135,&p_1358->g_135,&p_1358->g_135},{&p_1358->g_135,(void*)0,&p_1358->g_135,&p_1358->g_135,&p_1358->g_135},{&p_1358->g_135,(void*)0,&p_1358->g_135,&p_1358->g_135,&p_1358->g_135}},{{&p_1358->g_135,(void*)0,&p_1358->g_135,&p_1358->g_135,&p_1358->g_135},{&p_1358->g_135,(void*)0,&p_1358->g_135,&p_1358->g_135,&p_1358->g_135},{&p_1358->g_135,(void*)0,&p_1358->g_135,&p_1358->g_135,&p_1358->g_135},{&p_1358->g_135,(void*)0,&p_1358->g_135,&p_1358->g_135,&p_1358->g_135},{&p_1358->g_135,(void*)0,&p_1358->g_135,&p_1358->g_135,&p_1358->g_135}},{{&p_1358->g_135,(void*)0,&p_1358->g_135,&p_1358->g_135,&p_1358->g_135},{&p_1358->g_135,(void*)0,&p_1358->g_135,&p_1358->g_135,&p_1358->g_135},{&p_1358->g_135,(void*)0,&p_1358->g_135,&p_1358->g_135,&p_1358->g_135},{&p_1358->g_135,(void*)0,&p_1358->g_135,&p_1358->g_135,&p_1358->g_135},{&p_1358->g_135,(void*)0,&p_1358->g_135,&p_1358->g_135,&p_1358->g_135}},{{&p_1358->g_135,(void*)0,&p_1358->g_135,&p_1358->g_135,&p_1358->g_135},{&p_1358->g_135,(void*)0,&p_1358->g_135,&p_1358->g_135,&p_1358->g_135},{&p_1358->g_135,(void*)0,&p_1358->g_135,&p_1358->g_135,&p_1358->g_135},{&p_1358->g_135,(void*)0,&p_1358->g_135,&p_1358->g_135,&p_1358->g_135},{&p_1358->g_135,(void*)0,&p_1358->g_135,&p_1358->g_135,&p_1358->g_135}},{{&p_1358->g_135,(void*)0,&p_1358->g_135,&p_1358->g_135,&p_1358->g_135},{&p_1358->g_135,(void*)0,&p_1358->g_135,&p_1358->g_135,&p_1358->g_135},{&p_1358->g_135,(void*)0,&p_1358->g_135,&p_1358->g_135,&p_1358->g_135},{&p_1358->g_135,(void*)0,&p_1358->g_135,&p_1358->g_135,&p_1358->g_135},{&p_1358->g_135,(void*)0,&p_1358->g_135,&p_1358->g_135,&p_1358->g_135}}};
    uint32_t *l_1353 = &p_1358->g_114[4][0];
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_1182[i] = (-10L);
    if (l_2[4][3][2])
    { /* block id: 5 */
        int32_t *l_3 = &p_1358->g_4[1];
        int32_t *l_5 = &p_1358->g_6[0][4];
        (*l_5) = ((*l_3) = l_2[6][2][2]);
        (*l_5) = l_2[2][0][6];
        (*l_3) = ((p_1358->g_comm_values[p_1358->tid] || (&p_1358->g_4[3] != &p_1358->g_4[2])) > (-1L));
    }
    else
    { /* block id: 10 */
        int32_t l_9[2];
        int i;
        for (i = 0; i < 2; i++)
            l_9[i] = 0x457720F8L;
        p_1358->g_8 = l_7;
        l_9[1] ^= (*p_1358->g_8);
    }
    for (p_1358->g_12[0][1][6] = 3; (p_1358->g_12[0][1][6] >= 0); p_1358->g_12[0][1][6] -= 1)
    { /* block id: 16 */
        int32_t l_20[1];
        int32_t **l_1178 = (void*)0;
        int32_t *l_1179 = &p_1358->g_4[1];
        int32_t l_1184 = 0x280A3643L;
        int8_t l_1306 = 0L;
        uint32_t l_1333 = 0xCE846CF3L;
        int i;
        for (i = 0; i < 1; i++)
            l_20[i] = (-1L);
        (1 + 1);
    }
    (*l_7) = (safe_lshift_func_int8_t_s_s(((**p_1358->g_309) = (p_1358->g_1151.f0 | (p_1358->g_comm_values[p_1358->tid] ^= p_1358->g_561[2][3][2]))), 1));
    l_1182[0] ^= (((*l_7) == (safe_mod_func_int8_t_s_s(((safe_sub_func_uint32_t_u_u(((*l_7) || ((1L > (safe_rshift_func_int8_t_s_s((*l_7), ((safe_sub_func_uint64_t_u_u((((((*l_1353) = (l_1352[4][3][0] != l_1352[0][1][0])) ^ (safe_div_func_int8_t_s_s(((((*p_1358->g_135) <= (safe_mod_func_int32_t_s_s((0x45L > ((*p_1358->g_310) = (*l_7))), (*l_7)))) || (-1L)) && p_1358->g_6[0][4]), (*l_7)))) & (*l_7)) , (*l_7)), p_1358->g_6[0][4])) & 0UL)))) >= 0x31684025L)), (*l_7))) , (*p_1358->g_310)), GROUP_DIVERGE(0, 1)))) == (*l_7));
    return (*l_7);
}


/* ------------------------------------------ */
/* 
 * reads : p_1358->g_1151 p_1358->g_1059 p_1358->g_1060 p_1358->g_362 p_1358->g_705 p_1358->g_76 p_1358->g_77 p_1358->g_309 p_1358->g_310 p_1358->g_148 p_1358->g_29 p_1358->g_6 p_1358->g_4
 * writes: p_1358->g_4
 */
int32_t * func_13(uint32_t  p_14, int32_t * p_15, int32_t * p_16, int8_t  p_17, struct S1 * p_1358)
{ /* block id: 536 */
    uint8_t l_1161 = 250UL;
    union U0 ***l_1171 = &p_1358->g_747[2];
    int32_t l_1172 = 5L;
    uint8_t *l_1173[7][2] = {{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}};
    int32_t l_1174 = (-1L);
    uint32_t l_1175 = 0xD53A4675L;
    uint8_t l_1176 = 0x66L;
    int32_t *l_1177 = &p_1358->g_4[1];
    int i, j;
    (*l_1177) ^= ((safe_add_func_uint32_t_u_u(((((safe_add_func_uint16_t_u_u((p_1358->g_1151 , GROUP_DIVERGE(1, 1)), ((safe_sub_func_int16_t_s_s((safe_unary_minus_func_int64_t_s((safe_mul_func_uint16_t_u_u((((safe_rshift_func_int8_t_s_u(((safe_mul_func_int16_t_s_s(l_1161, 1L)) || (**p_1358->g_1059)), (safe_mod_func_uint16_t_u_u((safe_unary_minus_func_uint64_t_u((safe_div_func_int16_t_s_s((((*p_16) |= (safe_mul_func_uint8_t_u_u((l_1174 = (l_1172 ^= ((safe_mod_func_int16_t_s_s(((((*p_1358->g_76) , &p_14) == ((((l_1161 , (l_1171 == (void*)0)) , (**p_1358->g_309)) ^ l_1161) , &p_14)) ^ 0x59L), (*p_1358->g_76))) , 1UL))), FAKE_DIVERGE(p_1358->global_2_offset, get_global_id(2), 10)))) >= l_1161), p_1358->g_29)))), l_1175)))) , l_1161) != p_1358->g_6[5][2]), 0xB97BL)))), l_1161)) & 4294967286UL))) , l_1176) && 0xFFL) <= 1L), p_14)) <= l_1175);
    return p_16;
}


/* ------------------------------------------ */
/* 
 * reads : p_1358->g_29 p_1358->g_6 p_1358->g_8 p_1358->g_76 p_1358->g_77 p_1358->g_4 p_1358->g_108 p_1358->g_11 p_1358->g_135 p_1358->g_comm_values p_1358->g_147 p_1358->g_136 p_1358->g_148 p_1358->g_350 p_1358->g_354 p_1358->g_12 p_1358->g_309 p_1358->g_310 p_1358->g_370 p_1358->g_234 p_1358->g_326 p_1358->g_394 p_1358->g_114 p_1358->g_416 p_1358->g_420 p_1358->g_42 p_1358->g_267 p_1358->g_472 p_1358->g_498 p_1358->g_315.f0 p_1358->g_211 p_1358->l_comm_values p_1358->g_362 p_1358->g_572 p_1358->g_561 p_1358->g_580 p_1358->g_589 p_1358->g_545 p_1358->g_660 p_1358->g_904 p_1358->g_905 p_1358->g_906 p_1358->g_1058 p_1358->g_705 p_1358->g_1144 p_1358->g_1146 p_1358->g_10
 * writes: p_1358->g_29 p_1358->g_42 p_1358->g_108 p_1358->g_114 p_1358->g_135 p_1358->g_4 p_1358->g_11 p_1358->g_77 p_1358->g_8 p_1358->g_148 p_1358->g_370 p_1358->g_234 p_1358->g_147 p_1358->g_420 p_1358->g_362 p_1358->g_309 p_1358->g_136 p_1358->g_340 p_1358->g_545 p_1358->g_211 p_1358->g_561 p_1358->g_572 p_1358->g_705 p_1358->g_802 p_1358->g_1058 p_1358->g_842 p_1358->g_1146
 */
uint32_t  func_23(int32_t * p_24, struct S1 * p_1358)
{ /* block id: 17 */
    uint32_t *l_28 = &p_1358->g_29;
    int32_t l_40 = 0L;
    int16_t *l_41 = (void*)0;
    uint8_t l_75 = 0xC8L;
    int32_t *l_1145 = (void*)0;
    p_1358->g_1146 ^= func_25(((*l_28)++), func_32((safe_lshift_func_int16_t_s_u(4L, l_40)), l_28, ((p_1358->g_42 = 0x7092L) != func_43(func_45(func_49((safe_mod_func_uint8_t_u_u(func_55((safe_sub_func_int16_t_s_s(func_62((((safe_sub_func_uint32_t_u_u(((void*)0 != l_28), l_40)) ^ (l_40 <= ((safe_mul_func_int8_t_s_s((safe_mul_func_uint16_t_u_u(0x5785L, l_40)), p_1358->g_6[0][4])) && l_40))) & l_75), p_1358->g_8, l_75, p_1358->g_76, p_1358), l_40)), l_40, l_75, l_75, p_1358), 0x19L)), p_1358->g_148, l_40, p_1358), l_40, l_40, p_1358), p_1358)), p_24, l_75, p_1358), p_1358);
    return p_1358->g_10;
}


/* ------------------------------------------ */
/* 
 * reads : p_1358->g_394 p_1358->g_135 p_1358->g_136 p_1358->g_114 p_1358->g_6 p_1358->g_12 p_1358->g_354 p_1358->g_4 p_1358->g_76 p_1358->g_77 p_1358->g_416 p_1358->g_420 p_1358->g_267 p_1358->g_326 p_1358->g_8 p_1358->g_472 p_1358->g_309 p_1358->g_310 p_1358->g_148 p_1358->g_498 p_1358->g_370 p_1358->g_315.f0 p_1358->g_211 p_1358->l_comm_values p_1358->g_11 p_1358->g_350 p_1358->g_234 p_1358->g_572 p_1358->g_561 p_1358->g_580 p_1358->g_589 p_1358->g_545 p_1358->g_660 p_1358->g_904 p_1358->g_905 p_1358->g_906 p_1358->g_1058 p_1358->g_705 p_1358->g_29 p_1358->g_1144 p_1358->g_42 p_1358->g_362
 * writes: p_1358->g_420 p_1358->g_42 p_1358->g_114 p_1358->g_362 p_1358->g_8 p_1358->g_309 p_1358->g_136 p_1358->g_340 p_1358->g_148 p_1358->g_77 p_1358->g_234 p_1358->g_545 p_1358->g_4 p_1358->g_370 p_1358->g_147 p_1358->g_211 p_1358->g_561 p_1358->g_572 p_1358->g_705 p_1358->g_802 p_1358->g_1058 p_1358->g_842
 */
int32_t  func_25(uint32_t  p_26, int32_t * p_27, struct S1 * p_1358)
{ /* block id: 187 */
    int64_t l_393 = 1L;
    uint32_t l_397 = 0x4010911DL;
    uint64_t l_417 = 0x36F4A3E529422D7DL;
    int32_t *l_418 = (void*)0;
    int32_t *l_419 = &p_1358->g_420;
    int32_t l_441 = 0L;
    int32_t l_446 = (-10L);
    int32_t l_449 = 0x24E23938L;
    int32_t l_450 = 0x4AB4AA67L;
    int32_t l_452 = 0x585495EEL;
    int32_t l_454 = 0x2DD5B797L;
    int32_t l_463 = (-3L);
    int32_t l_464 = 0x35AB4923L;
    int32_t l_465[3];
    int32_t l_466[7] = {0x0E9E75B3L,0x0E9E75B3L,0x0E9E75B3L,0x0E9E75B3L,0x0E9E75B3L,0x0E9E75B3L,0x0E9E75B3L};
    uint64_t *l_495 = &p_1358->g_108;
    int32_t l_502 = 0x28C1E3A1L;
    uint32_t l_611 = 0xCF4F6E1FL;
    int64_t l_648 = 0x7F212ABE88B513F6L;
    union U0 **l_702[3];
    uint16_t l_763 = 0x95B0L;
    int32_t *l_787[9] = {(void*)0,&p_1358->g_6[4][4],(void*)0,(void*)0,&p_1358->g_6[4][4],(void*)0,(void*)0,&p_1358->g_6[4][4],(void*)0};
    uint64_t l_843 = 0xD1187A720DD06BBAL;
    union U0 ****l_874 = (void*)0;
    uint32_t *l_939 = &p_1358->g_561[4][6][3];
    uint32_t **l_938 = &l_939;
    int32_t ***l_1055[4][8] = {{(void*)0,&p_1358->g_660,&p_1358->g_660,&p_1358->g_660,&p_1358->g_660,&p_1358->g_660,(void*)0,&p_1358->g_660},{(void*)0,&p_1358->g_660,&p_1358->g_660,&p_1358->g_660,&p_1358->g_660,&p_1358->g_660,(void*)0,&p_1358->g_660},{(void*)0,&p_1358->g_660,&p_1358->g_660,&p_1358->g_660,&p_1358->g_660,&p_1358->g_660,(void*)0,&p_1358->g_660},{(void*)0,&p_1358->g_660,&p_1358->g_660,&p_1358->g_660,&p_1358->g_660,&p_1358->g_660,(void*)0,&p_1358->g_660}};
    uint32_t l_1141 = 0xECB50759L;
    int i, j;
    for (i = 0; i < 3; i++)
        l_465[i] = 0x3573F051L;
    for (i = 0; i < 3; i++)
        l_702[i] = &p_1358->g_668;
lbl_523:
    (*l_419) ^= (65528UL == (safe_rshift_func_uint16_t_u_u((((((safe_add_func_uint64_t_u_u(9UL, (l_393 | (p_1358->g_394 , (safe_lshift_func_uint16_t_u_u(l_397, ((0x860A4EF2F7283642L < (((safe_sub_func_int16_t_s_s((safe_add_func_uint64_t_u_u(((safe_div_func_uint16_t_u_u((safe_lshift_func_int8_t_s_s(0x12L, ((safe_mul_func_int8_t_s_s((((((((((safe_add_func_int64_t_s_s((((safe_sub_func_int16_t_s_s(l_393, ((safe_sub_func_uint8_t_u_u((((safe_add_func_int64_t_s_s(l_393, (*p_1358->g_135))) , (-1L)) || FAKE_DIVERGE(p_1358->global_2_offset, get_global_id(2), 10)), p_26)) || p_1358->g_114[0][1]))) <= p_26) != (*p_27)), 0UL)) , p_26) || 8UL) , (void*)0) != (void*)0) & (*p_1358->g_354)) > 0x54C47E684543A18DL) && l_393) < l_397), p_26)) <= 0x10BEFF45BC2F7AADL))), 0xB291L)) <= (-1L)), (*p_1358->g_135))), (*p_1358->g_76))) || p_26) , p_26)) , 65535UL))))))) , p_1358->g_416) , p_26) < l_417) && l_393), p_26)));
    if ((*p_27))
    { /* block id: 189 */
        int32_t *l_431 = &p_1358->g_6[0][4];
        int32_t l_435 = 0x1C146A78L;
        int32_t l_443 = 8L;
        int32_t l_447 = 0x64A5E2FFL;
        int32_t l_451 = (-1L);
        int32_t l_453 = 0x59A93CC7L;
        int32_t l_456 = (-6L);
        int32_t l_458[9] = {0x4BFDEE67L,0x1A8787C3L,0x4BFDEE67L,0x4BFDEE67L,0x1A8787C3L,0x4BFDEE67L,0x4BFDEE67L,0x1A8787C3L,0x4BFDEE67L};
        uint16_t l_492 = 65533UL;
        uint64_t ***l_500 = (void*)0;
        int i;
        for (p_1358->g_42 = 0; (p_1358->g_42 != 22); p_1358->g_42 = safe_add_func_uint8_t_u_u(p_1358->g_42, 6))
        { /* block id: 192 */
            int32_t l_434 = 0x4C40589FL;
            int32_t l_444 = (-1L);
            int32_t l_448 = 0L;
            int32_t l_457 = (-1L);
            int32_t l_461[8][9][3] = {{{0L,0x7308D577L,0x58E88D5CL},{0L,0x7308D577L,0x58E88D5CL},{0L,0x7308D577L,0x58E88D5CL},{0L,0x7308D577L,0x58E88D5CL},{0L,0x7308D577L,0x58E88D5CL},{0L,0x7308D577L,0x58E88D5CL},{0L,0x7308D577L,0x58E88D5CL},{0L,0x7308D577L,0x58E88D5CL},{0L,0x7308D577L,0x58E88D5CL}},{{0L,0x7308D577L,0x58E88D5CL},{0L,0x7308D577L,0x58E88D5CL},{0L,0x7308D577L,0x58E88D5CL},{0L,0x7308D577L,0x58E88D5CL},{0L,0x7308D577L,0x58E88D5CL},{0L,0x7308D577L,0x58E88D5CL},{0L,0x7308D577L,0x58E88D5CL},{0L,0x7308D577L,0x58E88D5CL},{0L,0x7308D577L,0x58E88D5CL}},{{0L,0x7308D577L,0x58E88D5CL},{0L,0x7308D577L,0x58E88D5CL},{0L,0x7308D577L,0x58E88D5CL},{0L,0x7308D577L,0x58E88D5CL},{0L,0x7308D577L,0x58E88D5CL},{0L,0x7308D577L,0x58E88D5CL},{0L,0x7308D577L,0x58E88D5CL},{0L,0x7308D577L,0x58E88D5CL},{0L,0x7308D577L,0x58E88D5CL}},{{0L,0x7308D577L,0x58E88D5CL},{0L,0x7308D577L,0x58E88D5CL},{0L,0x7308D577L,0x58E88D5CL},{0L,0x7308D577L,0x58E88D5CL},{0L,0x7308D577L,0x58E88D5CL},{0L,0x7308D577L,0x58E88D5CL},{0L,0x7308D577L,0x58E88D5CL},{0L,0x7308D577L,0x58E88D5CL},{0L,0x7308D577L,0x58E88D5CL}},{{0L,0x7308D577L,0x58E88D5CL},{0L,0x7308D577L,0x58E88D5CL},{0L,0x7308D577L,0x58E88D5CL},{0L,0x7308D577L,0x58E88D5CL},{0L,0x7308D577L,0x58E88D5CL},{0L,0x7308D577L,0x58E88D5CL},{0L,0x7308D577L,0x58E88D5CL},{0L,0x7308D577L,0x58E88D5CL},{0L,0x7308D577L,0x58E88D5CL}},{{0L,0x7308D577L,0x58E88D5CL},{0L,0x7308D577L,0x58E88D5CL},{0L,0x7308D577L,0x58E88D5CL},{0L,0x7308D577L,0x58E88D5CL},{0L,0x7308D577L,0x58E88D5CL},{0L,0x7308D577L,0x58E88D5CL},{0L,0x7308D577L,0x58E88D5CL},{0L,0x7308D577L,0x58E88D5CL},{0L,0x7308D577L,0x58E88D5CL}},{{0L,0x7308D577L,0x58E88D5CL},{0L,0x7308D577L,0x58E88D5CL},{0L,0x7308D577L,0x58E88D5CL},{0L,0x7308D577L,0x58E88D5CL},{0L,0x7308D577L,0x58E88D5CL},{0L,0x7308D577L,0x58E88D5CL},{0L,0x7308D577L,0x58E88D5CL},{0L,0x7308D577L,0x58E88D5CL},{0L,0x7308D577L,0x58E88D5CL}},{{0L,0x7308D577L,0x58E88D5CL},{0L,0x7308D577L,0x58E88D5CL},{0L,0x7308D577L,0x58E88D5CL},{0L,0x7308D577L,0x58E88D5CL},{0L,0x7308D577L,0x58E88D5CL},{0L,0x7308D577L,0x58E88D5CL},{0L,0x7308D577L,0x58E88D5CL},{0L,0x7308D577L,0x58E88D5CL},{0L,0x7308D577L,0x58E88D5CL}}};
            int8_t **l_470 = &p_1358->g_310;
            int32_t *l_473 = &l_449;
            int64_t l_474[6] = {0x4ECA29BAFC21D9C8L,0x4ECA29BAFC21D9C8L,0x4ECA29BAFC21D9C8L,0x4ECA29BAFC21D9C8L,0x4ECA29BAFC21D9C8L,0x4ECA29BAFC21D9C8L};
            int32_t *l_475[9][5][5] = {{{&l_446,&l_447,&p_1358->g_6[3][7],&l_446,&l_446},{&l_446,&l_447,&p_1358->g_6[3][7],&l_446,&l_446},{&l_446,&l_447,&p_1358->g_6[3][7],&l_446,&l_446},{&l_446,&l_447,&p_1358->g_6[3][7],&l_446,&l_446},{&l_446,&l_447,&p_1358->g_6[3][7],&l_446,&l_446}},{{&l_446,&l_447,&p_1358->g_6[3][7],&l_446,&l_446},{&l_446,&l_447,&p_1358->g_6[3][7],&l_446,&l_446},{&l_446,&l_447,&p_1358->g_6[3][7],&l_446,&l_446},{&l_446,&l_447,&p_1358->g_6[3][7],&l_446,&l_446},{&l_446,&l_447,&p_1358->g_6[3][7],&l_446,&l_446}},{{&l_446,&l_447,&p_1358->g_6[3][7],&l_446,&l_446},{&l_446,&l_447,&p_1358->g_6[3][7],&l_446,&l_446},{&l_446,&l_447,&p_1358->g_6[3][7],&l_446,&l_446},{&l_446,&l_447,&p_1358->g_6[3][7],&l_446,&l_446},{&l_446,&l_447,&p_1358->g_6[3][7],&l_446,&l_446}},{{&l_446,&l_447,&p_1358->g_6[3][7],&l_446,&l_446},{&l_446,&l_447,&p_1358->g_6[3][7],&l_446,&l_446},{&l_446,&l_447,&p_1358->g_6[3][7],&l_446,&l_446},{&l_446,&l_447,&p_1358->g_6[3][7],&l_446,&l_446},{&l_446,&l_447,&p_1358->g_6[3][7],&l_446,&l_446}},{{&l_446,&l_447,&p_1358->g_6[3][7],&l_446,&l_446},{&l_446,&l_447,&p_1358->g_6[3][7],&l_446,&l_446},{&l_446,&l_447,&p_1358->g_6[3][7],&l_446,&l_446},{&l_446,&l_447,&p_1358->g_6[3][7],&l_446,&l_446},{&l_446,&l_447,&p_1358->g_6[3][7],&l_446,&l_446}},{{&l_446,&l_447,&p_1358->g_6[3][7],&l_446,&l_446},{&l_446,&l_447,&p_1358->g_6[3][7],&l_446,&l_446},{&l_446,&l_447,&p_1358->g_6[3][7],&l_446,&l_446},{&l_446,&l_447,&p_1358->g_6[3][7],&l_446,&l_446},{&l_446,&l_447,&p_1358->g_6[3][7],&l_446,&l_446}},{{&l_446,&l_447,&p_1358->g_6[3][7],&l_446,&l_446},{&l_446,&l_447,&p_1358->g_6[3][7],&l_446,&l_446},{&l_446,&l_447,&p_1358->g_6[3][7],&l_446,&l_446},{&l_446,&l_447,&p_1358->g_6[3][7],&l_446,&l_446},{&l_446,&l_447,&p_1358->g_6[3][7],&l_446,&l_446}},{{&l_446,&l_447,&p_1358->g_6[3][7],&l_446,&l_446},{&l_446,&l_447,&p_1358->g_6[3][7],&l_446,&l_446},{&l_446,&l_447,&p_1358->g_6[3][7],&l_446,&l_446},{&l_446,&l_447,&p_1358->g_6[3][7],&l_446,&l_446},{&l_446,&l_447,&p_1358->g_6[3][7],&l_446,&l_446}},{{&l_446,&l_447,&p_1358->g_6[3][7],&l_446,&l_446},{&l_446,&l_447,&p_1358->g_6[3][7],&l_446,&l_446},{&l_446,&l_447,&p_1358->g_6[3][7],&l_446,&l_446},{&l_446,&l_447,&p_1358->g_6[3][7],&l_446,&l_446},{&l_446,&l_447,&p_1358->g_6[3][7],&l_446,&l_446}}};
            uint32_t l_476 = 1UL;
            int32_t **l_479 = &l_475[1][0][1];
            uint32_t l_524 = 0UL;
            int i, j, k;
            for (l_417 = 0; (l_417 <= 4); l_417 += 1)
            { /* block id: 195 */
                int64_t l_433 = (-1L);
                int32_t l_442 = 0x0E68345FL;
                int32_t l_445 = 0x7342FC89L;
                int32_t l_455 = 0x3E1116D2L;
                int32_t l_459 = (-2L);
                int32_t l_460 = 0L;
                int32_t l_462[10][5] = {{0x1F48F05BL,0x45F31F38L,0x1DE32367L,(-10L),0x368E7C36L},{0x1F48F05BL,0x45F31F38L,0x1DE32367L,(-10L),0x368E7C36L},{0x1F48F05BL,0x45F31F38L,0x1DE32367L,(-10L),0x368E7C36L},{0x1F48F05BL,0x45F31F38L,0x1DE32367L,(-10L),0x368E7C36L},{0x1F48F05BL,0x45F31F38L,0x1DE32367L,(-10L),0x368E7C36L},{0x1F48F05BL,0x45F31F38L,0x1DE32367L,(-10L),0x368E7C36L},{0x1F48F05BL,0x45F31F38L,0x1DE32367L,(-10L),0x368E7C36L},{0x1F48F05BL,0x45F31F38L,0x1DE32367L,(-10L),0x368E7C36L},{0x1F48F05BL,0x45F31F38L,0x1DE32367L,(-10L),0x368E7C36L},{0x1F48F05BL,0x45F31F38L,0x1DE32367L,(-10L),0x368E7C36L}};
                int i, j;
                for (l_397 = 0; (l_397 <= 0); l_397 += 1)
                { /* block id: 198 */
                    int32_t *l_432 = (void*)0;
                    int32_t *l_436 = &p_1358->g_4[(l_397 + 2)];
                    int32_t *l_437 = (void*)0;
                    int32_t *l_438 = &l_435;
                    int32_t *l_439 = &p_1358->g_4[1];
                    int32_t *l_440[7];
                    uint64_t l_467 = 1UL;
                    int i, j;
                    for (i = 0; i < 7; i++)
                        l_440[i] = &p_1358->g_4[(l_397 + 2)];
                    if ((0L || (p_1358->g_114[(l_397 + 6)][l_397]--)))
                    { /* block id: 200 */
                        uint8_t *l_429 = &p_1358->g_362;
                        uint32_t *l_430 = &p_1358->g_114[1][1];
                        int i, j;
                        if (p_1358->g_114[(l_397 + 1)][(l_397 + 2)])
                            break;
                        if (p_1358->g_267[(l_417 + 3)])
                            break;
                        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                        p_1358->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 2)), permutations[(safe_mod_func_uint32_t_u_u(((*l_430) ^= (safe_mod_func_uint8_t_u_u(((*l_429) = (safe_div_func_uint64_t_u_u(p_1358->g_4[l_417], FAKE_DIVERGE(p_1358->group_1_offset, get_group_id(1), 10)))), p_26))), 10))][(safe_mod_func_uint32_t_u_u(p_1358->tid, 2))]));
                        return (*p_27);
                    }
                    else
                    { /* block id: 209 */
                        if ((*p_1358->g_354))
                            break;
                    }
                    if ((**p_1358->g_326))
                        break;
                    (*p_1358->g_326) = l_431;
                    l_467--;
                }
                (*p_1358->g_472) = l_470;
            }
            l_476--;
            (*l_479) = &l_434;
            if ((safe_sub_func_uint64_t_u_u(((((safe_div_func_uint8_t_u_u((safe_lshift_func_uint8_t_u_u((((-1L) > (((*p_1358->g_135) = (safe_lshift_func_int16_t_s_u(((4294967295UL | 0x75E16D38L) < (*l_431)), 13))) && GROUP_DIVERGE(2, 1))) <= ((((safe_mod_func_uint32_t_u_u(((safe_div_func_uint16_t_u_u((l_492 <= (safe_add_func_int32_t_s_s(((((l_495 == &p_1358->g_108) ^ (safe_mul_func_uint8_t_u_u(p_1358->g_12[0][1][6], p_26))) > p_1358->g_267[0]) ^ p_26), 5UL))), (*p_1358->g_76))) & (**p_1358->g_309)), (-6L))) , (**p_1358->g_309)) , 0L) != (*p_1358->g_310))), 1)), FAKE_DIVERGE(p_1358->local_0_offset, get_local_id(0), 10))) , p_1358->g_498) == l_500) ^ 0x2355EA49A4953AD1L), p_1358->g_370)))
            { /* block id: 221 */
                union U0 **l_501 = &p_1358->g_340;
                int32_t l_519[2][4] = {{(-9L),(-9L),(-9L),(-9L)},{(-9L),(-9L),(-9L),(-9L)}};
                int64_t *l_520 = (void*)0;
                int64_t *l_521 = &l_393;
                uint8_t l_522 = 0x33L;
                int i, j;
                (*l_501) = (void*)0;
                (*l_419) = ((*l_473) &= ((*p_1358->g_135) < (*l_419)));
                l_522 = ((l_502 , (safe_div_func_int32_t_s_s(((p_1358->g_12[1][2][0] >= p_26) >= ((((safe_mod_func_int64_t_s_s(((((*p_1358->g_135) = (((safe_lshift_func_int8_t_s_s((safe_div_func_int64_t_s_s(p_26, (safe_sub_func_uint32_t_u_u((((p_1358->g_315.f0 , ((*p_1358->g_310) = (safe_mul_func_uint8_t_u_u(0x14L, ((((safe_rshift_func_uint8_t_u_s(p_1358->g_12[0][1][6], 0)) || (((*l_521) = l_519[1][2]) >= 18446744073709551615UL)) && (*l_431)) == (*p_1358->g_76)))))) && p_26) & 1L), 0x5D890EECL)))), l_519[0][2])) > p_1358->g_211) > p_1358->g_77)) && 2UL) ^ p_26), 0x757E541DA835EF8CL)) && p_26) < p_1358->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1358->tid, 2))]) < (-3L))), l_519[0][2]))) | 0x60L);
            }
            else
            { /* block id: 229 */
                if (l_397)
                    goto lbl_523;
                return l_524;
            }
        }
        return (*l_431);
    }
    else
    { /* block id: 235 */
        int32_t l_533 = 0L;
        uint32_t *l_546 = &p_1358->g_29;
        int32_t l_562 = 0x0E8A0D0AL;
        int32_t l_565 = 1L;
        int32_t l_566 = 0x4D35B60EL;
        uint32_t l_575 = 0x7B4D9CAEL;
        int32_t l_590 = 0x1115C382L;
        int16_t *l_718 = &p_1358->g_234;
        int32_t *l_739 = &l_465[1];
        union U0 *l_756 = &p_1358->g_315;
        int32_t l_803 = 0x65A7328CL;
        uint8_t *l_846 = &p_1358->g_705;
        uint8_t **l_845 = &l_846;
        int64_t l_856 = 1L;
        int32_t l_861 = 0x5FFB7FEEL;
        int32_t l_863 = 0x6BC943B7L;
        uint8_t l_864 = 0x55L;
        union U0 ****l_869 = (void*)0;
        int32_t l_1071 = (-5L);
        int32_t l_1102 = 0x777808BCL;
        uint16_t l_1120 = 65535UL;
        int16_t l_1132[2];
        int i;
        for (i = 0; i < 2; i++)
            l_1132[i] = 0x0E24L;
        for (l_393 = 3; (l_393 >= 0); l_393 -= 1)
        { /* block id: 238 */
            int32_t **l_532 = &l_418;
            int32_t ***l_531 = &l_532;
            int16_t *l_544[6] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            int32_t **l_547[10] = {&l_418,&l_418,&l_418,&l_418,&l_418,&l_418,&l_418,&l_418,&l_418,&l_418};
            uint16_t *l_550[9][3][2];
            uint64_t *l_553 = &l_417;
            uint32_t *l_560 = &p_1358->g_561[0][8][1];
            int i, j, k;
            for (i = 0; i < 9; i++)
            {
                for (j = 0; j < 3; j++)
                {
                    for (k = 0; k < 2; k++)
                        l_550[i][j][k] = &p_1358->g_211;
                }
            }
            p_27 = func_32((((p_1358->g_545 = (safe_div_func_uint32_t_u_u((((safe_mul_func_int8_t_s_s((safe_rshift_func_uint8_t_u_u(((&p_1358->g_8 != ((*l_531) = &p_1358->g_8)) >= l_533), 5)), ((**p_1358->g_309) = (p_1358->g_211 <= ((safe_lshift_func_uint8_t_u_u(0x48L, 2)) < (safe_rshift_func_int16_t_s_u(((0x936D1508L & 0x122532A2L) | (safe_add_func_int16_t_s_s((18446744073709551607UL == (safe_rshift_func_int8_t_s_u((safe_add_func_int16_t_s_s((p_1358->g_234 = ((*p_1358->g_76) = 0x3DF0L)), 1UL)), 4))), l_533))), 5))))))) < (*p_27)) < 0x58A8L), 0x2A8C8ED6L))) && (-7L)) , p_1358->g_11), &p_1358->g_29, p_1358->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1358->tid, 2))], l_546, p_26, p_1358);
            l_562 &= (((p_1358->g_4[1] | (p_26 >= (p_1358->g_211 ^= (safe_rshift_func_uint8_t_u_s(1UL, p_26))))) && (((((***l_531) == (((*l_553) ^= (--(*p_1358->g_135))) && ((*p_1358->g_135) = (safe_mul_func_int8_t_s_s(p_26, p_26))))) <= ((**p_1358->g_350) == ((*l_419) = (((*l_560) = (safe_mod_func_uint8_t_u_u((((safe_rshift_func_int8_t_s_s(((p_26 != (*p_1358->g_76)) , (-8L)), (*p_1358->g_310))) , (-1L)) < (**l_532)), 0x0FL))) , l_533)))) > p_26) < 9UL)) , l_533);
            for (l_533 = 0; (l_533 >= 0); l_533 -= 1)
            { /* block id: 254 */
                int32_t l_563 = 0L;
                int32_t l_570 = 0x42323B99L;
                l_562 &= ((*l_419) = (-1L));
                l_563 = ((p_1358->g_211 = 1UL) >= FAKE_DIVERGE(p_1358->global_1_offset, get_global_id(1), 10));
                for (p_1358->g_136 = 0; (p_1358->g_136 <= 3); p_1358->g_136 += 1)
                { /* block id: 261 */
                    int8_t l_567[1][2][3] = {{{0x5EL,0x5EL,0x5EL},{0x5EL,0x5EL,0x5EL}}};
                    int32_t l_568[4][2][2] = {{{0x6398F5E1L,0x725E32BDL},{0x6398F5E1L,0x725E32BDL}},{{0x6398F5E1L,0x725E32BDL},{0x6398F5E1L,0x725E32BDL}},{{0x6398F5E1L,0x725E32BDL},{0x6398F5E1L,0x725E32BDL}},{{0x6398F5E1L,0x725E32BDL},{0x6398F5E1L,0x725E32BDL}}};
                    int i, j, k;
                    for (p_1358->g_362 = 0; (p_1358->g_362 <= 0); p_1358->g_362 += 1)
                    { /* block id: 264 */
                        int32_t l_564 = 0x2BBD1C5DL;
                        int32_t l_569 = 0x27400BFCL;
                        int32_t l_571 = (-1L);
                        int i, j, k;
                        p_1358->g_572++;
                        (*l_419) = 1L;
                        return p_1358->g_561[(p_1358->g_136 + 2)][(l_393 + 4)][l_393];
                    }
                }
            }
            ++l_575;
            for (p_1358->g_77 = 0; (p_1358->g_77 >= 0); p_1358->g_77 -= 1)
            { /* block id: 274 */
                int8_t l_581 = (-3L);
                int32_t l_582 = (-1L);
                (*l_419) |= (safe_sub_func_int64_t_s_s(2L, ((void*)0 != p_1358->g_580)));
                for (p_1358->g_234 = 0; (p_1358->g_234 <= 3); p_1358->g_234 += 1)
                { /* block id: 278 */
                    uint64_t l_584 = 18446744073709551615UL;
                    for (l_441 = 0; (l_441 >= 0); l_441 -= 1)
                    { /* block id: 281 */
                        int32_t l_583 = 5L;
                        int i, j, k;
                        l_584--;
                        if (l_533)
                            goto lbl_523;
                    }
                }
            }
        }
        (*l_419) = (safe_rshift_func_int8_t_s_s((p_1358->g_136 < ((*p_1358->g_76) = ((0L == l_575) || ((p_1358->g_589[0][3] , 65526UL) < l_590)))), 7));
        (*l_419) = (*p_27);
        if (l_533)
        { /* block id: 291 */
            uint8_t *l_595[1];
            int32_t l_596 = 0x6EA02005L;
            int64_t *l_612 = &l_393;
            uint32_t *l_613 = &p_1358->g_561[0][8][1];
            int32_t *l_614 = &l_446;
            union U0 **l_700 = (void*)0;
            uint32_t l_826 = 4294967295UL;
            int16_t l_827[8][8] = {{0x73E9L,7L,1L,0x4C25L,0x4092L,(-8L),0x30FCL,1L},{0x73E9L,7L,1L,0x4C25L,0x4092L,(-8L),0x30FCL,1L},{0x73E9L,7L,1L,0x4C25L,0x4092L,(-8L),0x30FCL,1L},{0x73E9L,7L,1L,0x4C25L,0x4092L,(-8L),0x30FCL,1L},{0x73E9L,7L,1L,0x4C25L,0x4092L,(-8L),0x30FCL,1L},{0x73E9L,7L,1L,0x4C25L,0x4092L,(-8L),0x30FCL,1L},{0x73E9L,7L,1L,0x4C25L,0x4092L,(-8L),0x30FCL,1L},{0x73E9L,7L,1L,0x4C25L,0x4092L,(-8L),0x30FCL,1L}};
            int8_t **l_834 = &p_1358->g_310;
            int32_t l_852[9][7][2] = {{{0x2DBCA8A2L,(-1L)},{0x2DBCA8A2L,(-1L)},{0x2DBCA8A2L,(-1L)},{0x2DBCA8A2L,(-1L)},{0x2DBCA8A2L,(-1L)},{0x2DBCA8A2L,(-1L)},{0x2DBCA8A2L,(-1L)}},{{0x2DBCA8A2L,(-1L)},{0x2DBCA8A2L,(-1L)},{0x2DBCA8A2L,(-1L)},{0x2DBCA8A2L,(-1L)},{0x2DBCA8A2L,(-1L)},{0x2DBCA8A2L,(-1L)},{0x2DBCA8A2L,(-1L)}},{{0x2DBCA8A2L,(-1L)},{0x2DBCA8A2L,(-1L)},{0x2DBCA8A2L,(-1L)},{0x2DBCA8A2L,(-1L)},{0x2DBCA8A2L,(-1L)},{0x2DBCA8A2L,(-1L)},{0x2DBCA8A2L,(-1L)}},{{0x2DBCA8A2L,(-1L)},{0x2DBCA8A2L,(-1L)},{0x2DBCA8A2L,(-1L)},{0x2DBCA8A2L,(-1L)},{0x2DBCA8A2L,(-1L)},{0x2DBCA8A2L,(-1L)},{0x2DBCA8A2L,(-1L)}},{{0x2DBCA8A2L,(-1L)},{0x2DBCA8A2L,(-1L)},{0x2DBCA8A2L,(-1L)},{0x2DBCA8A2L,(-1L)},{0x2DBCA8A2L,(-1L)},{0x2DBCA8A2L,(-1L)},{0x2DBCA8A2L,(-1L)}},{{0x2DBCA8A2L,(-1L)},{0x2DBCA8A2L,(-1L)},{0x2DBCA8A2L,(-1L)},{0x2DBCA8A2L,(-1L)},{0x2DBCA8A2L,(-1L)},{0x2DBCA8A2L,(-1L)},{0x2DBCA8A2L,(-1L)}},{{0x2DBCA8A2L,(-1L)},{0x2DBCA8A2L,(-1L)},{0x2DBCA8A2L,(-1L)},{0x2DBCA8A2L,(-1L)},{0x2DBCA8A2L,(-1L)},{0x2DBCA8A2L,(-1L)},{0x2DBCA8A2L,(-1L)}},{{0x2DBCA8A2L,(-1L)},{0x2DBCA8A2L,(-1L)},{0x2DBCA8A2L,(-1L)},{0x2DBCA8A2L,(-1L)},{0x2DBCA8A2L,(-1L)},{0x2DBCA8A2L,(-1L)},{0x2DBCA8A2L,(-1L)}},{{0x2DBCA8A2L,(-1L)},{0x2DBCA8A2L,(-1L)},{0x2DBCA8A2L,(-1L)},{0x2DBCA8A2L,(-1L)},{0x2DBCA8A2L,(-1L)},{0x2DBCA8A2L,(-1L)},{0x2DBCA8A2L,(-1L)}}};
            int32_t l_897 = 0x42DF08F1L;
            int32_t *l_914 = (void*)0;
            int32_t **l_913[1];
            uint64_t **l_1009 = &p_1358->g_135;
            uint64_t ***l_1008[8][8][1] = {{{&l_1009},{&l_1009},{&l_1009},{&l_1009},{&l_1009},{&l_1009},{&l_1009},{&l_1009}},{{&l_1009},{&l_1009},{&l_1009},{&l_1009},{&l_1009},{&l_1009},{&l_1009},{&l_1009}},{{&l_1009},{&l_1009},{&l_1009},{&l_1009},{&l_1009},{&l_1009},{&l_1009},{&l_1009}},{{&l_1009},{&l_1009},{&l_1009},{&l_1009},{&l_1009},{&l_1009},{&l_1009},{&l_1009}},{{&l_1009},{&l_1009},{&l_1009},{&l_1009},{&l_1009},{&l_1009},{&l_1009},{&l_1009}},{{&l_1009},{&l_1009},{&l_1009},{&l_1009},{&l_1009},{&l_1009},{&l_1009},{&l_1009}},{{&l_1009},{&l_1009},{&l_1009},{&l_1009},{&l_1009},{&l_1009},{&l_1009},{&l_1009}},{{&l_1009},{&l_1009},{&l_1009},{&l_1009},{&l_1009},{&l_1009},{&l_1009},{&l_1009}}};
            int i, j, k;
            for (i = 0; i < 1; i++)
                l_595[i] = &p_1358->g_362;
            for (i = 0; i < 1; i++)
                l_913[i] = &l_914;
            (*l_419) ^= (safe_mod_func_uint8_t_u_u(p_26, (l_596 = (safe_lshift_func_int16_t_s_u(p_26, 0)))));
            (*l_614) ^= (safe_div_func_uint32_t_u_u((((*l_419) = (safe_div_func_int8_t_s_s((safe_add_func_uint16_t_u_u((~0x40F9L), 0x159CL)), (safe_lshift_func_int8_t_s_s((safe_mod_func_uint16_t_u_u((~((((!p_26) , func_32(p_1358->g_545, &p_1358->g_545, p_1358->g_136, l_546, ((p_1358->g_561[0][8][1] ^ ((*l_612) ^= (safe_add_func_int16_t_s_s((safe_sub_func_int64_t_s_s(l_611, p_26)), p_26)))) != l_596), p_1358)) != l_613) < l_566)), 65535UL)), p_26))))) | (*p_27)), (*p_27)));
        }
        else
        { /* block id: 470 */
            uint8_t l_1044 = 0x22L;
            int32_t l_1065 = 0x6ABB560FL;
            int32_t l_1067 = 0x6B27EBAFL;
            int32_t l_1068 = (-1L);
            int32_t l_1069 = (-1L);
            int32_t l_1070 = (-2L);
            int32_t l_1072 = 0L;
            int32_t l_1074 = 0x798FC550L;
            int32_t l_1075 = (-6L);
            uint8_t l_1076 = 0UL;
            int64_t *l_1091[9][2][9] = {{{(void*)0,(void*)0,(void*)0,(void*)0,&p_1358->g_825,&p_1358->g_825,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,&p_1358->g_825,&p_1358->g_825,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,&p_1358->g_825,&p_1358->g_825,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,&p_1358->g_825,&p_1358->g_825,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,&p_1358->g_825,&p_1358->g_825,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,&p_1358->g_825,&p_1358->g_825,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,&p_1358->g_825,&p_1358->g_825,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,&p_1358->g_825,&p_1358->g_825,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,&p_1358->g_825,&p_1358->g_825,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,&p_1358->g_825,&p_1358->g_825,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,&p_1358->g_825,&p_1358->g_825,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,&p_1358->g_825,&p_1358->g_825,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,&p_1358->g_825,&p_1358->g_825,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,&p_1358->g_825,&p_1358->g_825,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,&p_1358->g_825,&p_1358->g_825,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,&p_1358->g_825,&p_1358->g_825,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,&p_1358->g_825,&p_1358->g_825,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,&p_1358->g_825,&p_1358->g_825,(void*)0,(void*)0,(void*)0}}};
            uint32_t *l_1129 = &l_575;
            uint8_t l_1135[8][1] = {{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}};
            int i, j, k;
            for (l_397 = 0; (l_397 > 26); l_397 = safe_add_func_uint64_t_u_u(l_397, 5))
            { /* block id: 473 */
                uint16_t l_1043 = 65526UL;
                int32_t l_1057 = 0x23E5578AL;
                int32_t ***l_1064[1][5] = {{&p_1358->g_660,&p_1358->g_660,&p_1358->g_660,&p_1358->g_660,&p_1358->g_660}};
                int i, j;
                for (p_1358->g_362 = 1; (p_1358->g_362 <= 6); p_1358->g_362 += 1)
                { /* block id: 476 */
                    uint32_t l_1042 = 4UL;
                    (*p_1358->g_660) = func_32(p_26, &p_1358->g_545, ((safe_rshift_func_int16_t_s_u(((GROUP_DIVERGE(1, 1) > (safe_lshift_func_uint16_t_u_s((safe_lshift_func_uint16_t_u_u((p_26 & (safe_div_func_int16_t_s_s((-1L), (((((safe_mul_func_int8_t_s_s((p_26 ^ ((safe_add_func_uint16_t_u_u(1UL, ((((safe_lshift_func_int8_t_s_u((safe_mul_func_int8_t_s_s((((safe_lshift_func_int8_t_s_u((safe_sub_func_uint8_t_u_u((0UL && 18446744073709551607UL), (((*l_419) = (safe_div_func_uint32_t_u_u((safe_sub_func_uint8_t_u_u(((**l_845) = (255UL == (*l_739))), l_1042)), p_26))) >= (**p_1358->g_660)))), 3)) , (void*)0) != (void*)0), 0x3CL)), (**p_1358->g_904))) >= (*p_27)) && (*l_739)) & 4UL))) < p_1358->g_4[1])), 0x3CL)) >= l_1043) , (*p_27)) , l_1044) , 0x2E8AL)))), p_1358->g_370)), 6))) && (-1L)), p_26)) | GROUP_DIVERGE(1, 1)), l_546, p_26, p_1358);
                    return (*p_27);
                }
                if ((*p_27))
                    continue;
                for (l_417 = 7; (l_417 != 33); l_417++)
                { /* block id: 485 */
                    uint8_t l_1047 = 8UL;
                    uint32_t *l_1056[3];
                    uint8_t ****l_1061 = (void*)0;
                    uint8_t ****l_1062 = &p_1358->g_1058;
                    union U0 *****l_1063 = (void*)0;
                    int32_t l_1066[9][2][4] = {{{(-1L),2L,(-1L),(-1L)},{(-1L),2L,(-1L),(-1L)}},{{(-1L),2L,(-1L),(-1L)},{(-1L),2L,(-1L),(-1L)}},{{(-1L),2L,(-1L),(-1L)},{(-1L),2L,(-1L),(-1L)}},{{(-1L),2L,(-1L),(-1L)},{(-1L),2L,(-1L),(-1L)}},{{(-1L),2L,(-1L),(-1L)},{(-1L),2L,(-1L),(-1L)}},{{(-1L),2L,(-1L),(-1L)},{(-1L),2L,(-1L),(-1L)}},{{(-1L),2L,(-1L),(-1L)},{(-1L),2L,(-1L),(-1L)}},{{(-1L),2L,(-1L),(-1L)},{(-1L),2L,(-1L),(-1L)}},{{(-1L),2L,(-1L),(-1L)},{(-1L),2L,(-1L),(-1L)}}};
                    int16_t l_1073 = (-1L);
                    int i, j, k;
                    for (i = 0; i < 3; i++)
                        l_1056[i] = &p_1358->g_114[0][1];
                    --l_1047;
                    for (p_1358->g_802 = 26; (p_1358->g_802 == (-22)); p_1358->g_802 = safe_sub_func_int16_t_s_s(p_1358->g_802, 4))
                    { /* block id: 489 */
                        uint16_t *l_1052 = &l_763;
                        (*l_739) &= (((*l_1052) ^= ((**p_1358->g_350) || ((*p_1358->g_76) ^ (*p_1358->g_76)))) ^ p_26);
                        (*l_419) |= (**p_1358->g_350);
                    }
                    (*l_419) ^= ((safe_lshift_func_int16_t_s_s((*p_1358->g_76), 9)) == ((!(l_1055[3][6] == (((((*l_739) >= ((0x81F6A447L > ((*l_739) == (0xDC14154EL >= (((~p_1358->g_114[3][1]) ^ GROUP_DIVERGE(0, 1)) , (l_1057 ^= GROUP_DIVERGE(2, 1)))))) >= p_1358->g_148)) , (((((*l_1062) = p_1358->g_1058) != (void*)0) || p_1358->g_6[3][2]) , (void*)0)) == l_1063) , l_1064[0][4]))) , p_26));
                    --l_1076;
                }
                for (p_1358->g_705 = 0; (p_1358->g_705 <= 6); p_1358->g_705 += 1)
                { /* block id: 501 */
                    uint32_t *l_1083 = (void*)0;
                    uint32_t *l_1084 = &l_575;
                    uint32_t *l_1100 = (void*)0;
                    uint32_t *l_1101 = &p_1358->g_114[4][0];
                    int i;
                    if (((l_466[p_1358->g_705] == ((safe_mul_func_uint8_t_u_u(((safe_mod_func_uint32_t_u_u(((*l_1084) &= 4294967295UL), (safe_mul_func_int16_t_s_s(((l_1076 || ((((safe_sub_func_int16_t_s_s(((safe_sub_func_int64_t_s_s(p_26, p_26)) , (((l_1091[0][0][0] == l_495) , ((safe_mod_func_uint32_t_u_u(((*l_1101) = (safe_mul_func_int8_t_s_s((safe_sub_func_uint16_t_u_u((safe_sub_func_uint64_t_u_u((((0xF2225F4EEC29C996L ^ ((!6L) || p_26)) < (*l_419)) >= p_1358->g_12[0][1][6]), p_26)), (*p_1358->g_76))), l_466[p_1358->g_705]))), p_26)) & 0xDBC51544L)) , 0x7BFEL)), l_1070)) , p_26) && p_26) , l_1102)) | p_26), GROUP_DIVERGE(0, 1))))) != 255UL), (*p_1358->g_905))) > 0x0A1DE391L)) , 1L))
                    { /* block id: 504 */
                        return (**p_1358->g_350);
                    }
                    else
                    { /* block id: 506 */
                        uint8_t l_1103 = 0xBEL;
                        uint8_t *l_1123 = &p_1358->g_842;
                        int32_t l_1124 = 1L;
                        (*l_739) ^= l_1103;
                        (*l_419) &= (l_1103 || (p_26 <= (((0x5105036C18964F30L == FAKE_DIVERGE(p_1358->local_1_offset, get_local_id(1), 10)) , (((*l_739) = (safe_rshift_func_int8_t_s_u((!(safe_add_func_int64_t_s_s(((((*p_1358->g_135) = (((safe_rshift_func_uint16_t_u_s(((((safe_mul_func_uint16_t_u_u((safe_mod_func_int64_t_s_s(((safe_rshift_func_int16_t_s_u(((safe_mod_func_uint8_t_u_u((p_26 & (safe_sub_func_int16_t_s_s(l_1120, ((safe_div_func_int16_t_s_s(l_1103, l_466[p_1358->g_705])) > ((*l_1123) = (((p_1358->g_705 , &p_1358->g_659) != &p_1358->g_659) , l_1067)))))), l_1124)) || 255UL), 14)) | (-9L)), p_1358->g_29)), 9UL)) , 0L) && p_26) == p_26), p_26)) , 1L) || 18446744073709551611UL)) && p_26) , l_1075), l_466[p_1358->g_705]))), 4))) && l_1103)) >= GROUP_DIVERGE(1, 1))));
                    }
                    (*l_739) &= l_466[p_1358->g_705];
                    (*l_739) = (p_26 , (**p_1358->g_350));
                }
            }
            (*p_1358->g_660) = func_32((0x5FB5L ^ (safe_add_func_int16_t_s_s(((safe_sub_func_uint32_t_u_u((--(*l_1129)), (((+l_1132[0]) & p_1358->g_29) & (!(&p_1358->g_499 == (void*)0))))) < p_26), ((~(p_26 , (*l_739))) , (GROUP_DIVERGE(1, 1) >= (*p_1358->g_354)))))), l_1129, p_26, l_1129, (*p_1358->g_310), p_1358);
            for (l_1067 = (-18); (l_1067 < 7); l_1067 = safe_add_func_uint64_t_u_u(l_1067, 5))
            { /* block id: 521 */
                l_1135[4][0]++;
                (*l_739) = (p_26 >= 1UL);
                for (l_565 = (-9); (l_565 != 20); l_565 = safe_add_func_uint16_t_u_u(l_565, 9))
                { /* block id: 526 */
                    int32_t l_1140[1][9][1] = {{{(-9L)},{(-9L)},{(-9L)},{(-9L)},{(-9L)},{(-9L)},{(-9L)},{(-9L)},{(-9L)}}};
                    int i, j, k;
                    ++l_1141;
                    return (**p_1358->g_326);
                }
            }
        }
    }
    return p_1358->g_1144;
}


/* ------------------------------------------ */
/* 
 * reads : p_1358->g_354 p_1358->g_4 p_1358->g_77 p_1358->g_350 p_1358->g_8 p_1358->g_12 p_1358->g_309 p_1358->g_310 p_1358->g_148 p_1358->g_370 p_1358->g_135 p_1358->g_136 p_1358->g_76 p_1358->g_234 p_1358->g_326 p_1358->g_6
 * writes: p_1358->g_4 p_1358->g_77 p_1358->g_370 p_1358->g_234 p_1358->g_148 p_1358->g_147
 */
int32_t * func_32(int64_t  p_33, uint32_t * p_34, uint32_t  p_35, uint32_t * p_36, int8_t  p_37, struct S1 * p_1358)
{ /* block id: 171 */
    int32_t *l_355 = (void*)0;
    uint8_t *l_361 = &p_1358->g_362;
    uint16_t l_381 = 65535UL;
    int32_t l_386 = 0x07CCE1FDL;
    int32_t l_388 = 1L;
    (*p_1358->g_354) &= (safe_add_func_int64_t_s_s(p_33, 0x0B9AC42656696DF6L));
    l_355 = l_355;
    for (p_1358->g_77 = 19; (p_1358->g_77 < 20); p_1358->g_77 = safe_add_func_int64_t_s_s(p_1358->g_77, 6))
    { /* block id: 176 */
        int32_t *l_358 = &p_1358->g_4[0];
        int8_t *l_369 = &p_1358->g_370;
        int64_t *l_382 = (void*)0;
        int64_t *l_383 = (void*)0;
        int64_t *l_384 = (void*)0;
        int64_t *l_385 = (void*)0;
        int16_t *l_387 = &p_1358->g_234;
        (*l_358) &= (**p_1358->g_350);
        (*l_358) = (p_1358->g_4[1] >= ((*p_1358->g_310) = (18446744073709551615UL && (safe_mul_func_int8_t_s_s(((void*)0 == l_361), (((l_388 = ((*l_387) ^= (((safe_lshift_func_int16_t_s_s((safe_sub_func_int16_t_s_s(((safe_add_func_int8_t_s_s(((*l_369) |= (**p_1358->g_309)), (((safe_lshift_func_int8_t_s_u(p_37, 7)) ^ ((safe_sub_func_uint32_t_u_u((safe_rshift_func_uint16_t_u_u(((-1L) || (l_386 &= (p_35 > (safe_lshift_func_uint8_t_u_u((safe_div_func_int64_t_s_s((l_381 & 0x8FL), 0x2CE783B011D3ADA1L)), 0))))), 14)), 6L)) > (*p_1358->g_135))) < p_35))) | 0x4747L), 0x0102L)), (*p_1358->g_76))) & p_33) > (*p_1358->g_135)))) <= (-8L)) , p_33))))));
    }
    for (l_388 = 0; l_388 < 1; l_388 += 1)
    {
        for (p_35 = 0; p_35 < 2; p_35 += 1)
        {
            p_1358->g_147[l_388][p_35] = &p_1358->g_148;
        }
    }
    return (*p_1358->g_326);
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint16_t  func_43(int16_t * p_44, struct S1 * p_1358)
{ /* block id: 169 */
    int8_t l_351 = 0x35L;
    return l_351;
}


/* ------------------------------------------ */
/* 
 * reads : p_1358->g_350
 * writes: p_1358->g_8
 */
int16_t * func_45(int16_t * p_46, int8_t  p_47, int8_t  p_48, struct S1 * p_1358)
{ /* block id: 166 */
    int32_t *l_349 = &p_1358->g_12[3][0][2];
    (*p_1358->g_350) = l_349;
    return p_46;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes: p_1358->g_148
 */
int16_t * func_49(uint16_t  p_50, int32_t  p_51, uint64_t  p_52, struct S1 * p_1358)
{ /* block id: 52 */
    int32_t l_168 = 0x4B6CB0D4L;
    int32_t l_169 = (-4L);
    int32_t l_170 = 0L;
    int32_t l_171 = 5L;
    int32_t l_172 = (-1L);
    int32_t l_173 = 0L;
    int32_t l_174 = 0x3161C8C3L;
    int32_t l_175 = 0x457C80C0L;
    int32_t l_176 = 0x0B236780L;
    uint32_t l_181 = 4294967295UL;
    int64_t *l_197 = (void*)0;
    int64_t *l_198 = (void*)0;
    int64_t *l_199 = (void*)0;
    int64_t *l_200[1][5][4] = {{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}}};
    uint32_t *l_207 = (void*)0;
    uint32_t *l_208 = (void*)0;
    uint16_t *l_209 = (void*)0;
    uint16_t *l_210 = &p_1358->g_211;
    int32_t l_249 = (-1L);
    int32_t l_250 = (-3L);
    int32_t l_270 = 0x0A7A4D2BL;
    int32_t *l_300 = &l_172;
    uint64_t **l_304 = &p_1358->g_135;
    uint8_t l_329 = 5UL;
    int i, j, k;
    for (p_1358->g_148 = (-3); (p_1358->g_148 >= 16); p_1358->g_148 = safe_add_func_uint8_t_u_u(p_1358->g_148, 3))
    { /* block id: 55 */
        int32_t *l_161 = &p_1358->g_4[1];
        int32_t *l_162 = &p_1358->g_4[1];
        int32_t *l_163 = &p_1358->g_4[1];
        int32_t *l_164 = &p_1358->g_4[1];
        int32_t *l_165 = &p_1358->g_4[4];
        int32_t *l_166 = &p_1358->g_4[2];
        int32_t *l_167[6];
        int32_t l_177[5];
        uint32_t l_178[7] = {0x014FFC0FL,0x014FFC0FL,0x014FFC0FL,0x014FFC0FL,0x014FFC0FL,0x014FFC0FL,0x014FFC0FL};
        int i;
        for (i = 0; i < 6; i++)
            l_167[i] = (void*)0;
        for (i = 0; i < 5; i++)
            l_177[i] = (-8L);
        ++l_178[6];
        l_181++;
    }
    return l_209;
}


/* ------------------------------------------ */
/* 
 * reads : p_1358->g_6
 * writes: p_1358->g_4
 */
uint8_t  func_55(int64_t  p_56, uint64_t  p_57, int64_t  p_58, int64_t  p_59, struct S1 * p_1358)
{ /* block id: 49 */
    int32_t *l_158 = &p_1358->g_4[1];
    (*l_158) = p_57;
    return p_1358->g_6[0][4];
}


/* ------------------------------------------ */
/* 
 * reads : p_1358->g_76 p_1358->g_77 p_1358->g_4 p_1358->g_108 p_1358->g_6 p_1358->g_11 p_1358->g_135 p_1358->g_comm_values p_1358->g_147 p_1358->g_136 p_1358->g_148
 * writes: p_1358->g_108 p_1358->g_114 p_1358->g_135 p_1358->g_4 p_1358->g_11 p_1358->g_77 p_1358->g_8
 */
int16_t  func_62(int32_t  p_63, uint32_t * p_64, uint64_t  p_65, int16_t * p_66, struct S1 * p_1358)
{ /* block id: 20 */
    int32_t *l_78 = &p_1358->g_4[0];
    int32_t *l_79 = &p_1358->g_4[1];
    int32_t *l_80 = &p_1358->g_4[2];
    int32_t l_81[4][8] = {{0x1FCF288CL,0x1FCF288CL,0x1FCF288CL,0x1FCF288CL,0x1FCF288CL,0x1FCF288CL,0x1FCF288CL,0x1FCF288CL},{0x1FCF288CL,0x1FCF288CL,0x1FCF288CL,0x1FCF288CL,0x1FCF288CL,0x1FCF288CL,0x1FCF288CL,0x1FCF288CL},{0x1FCF288CL,0x1FCF288CL,0x1FCF288CL,0x1FCF288CL,0x1FCF288CL,0x1FCF288CL,0x1FCF288CL,0x1FCF288CL},{0x1FCF288CL,0x1FCF288CL,0x1FCF288CL,0x1FCF288CL,0x1FCF288CL,0x1FCF288CL,0x1FCF288CL,0x1FCF288CL}};
    int32_t *l_82 = &l_81[3][5];
    int32_t *l_83 = &l_81[0][2];
    int32_t *l_84 = &p_1358->g_4[4];
    int32_t *l_85 = &l_81[0][5];
    int32_t *l_86 = &p_1358->g_4[1];
    int32_t *l_87[5] = {&p_1358->g_4[1],&p_1358->g_4[1],&p_1358->g_4[1],&p_1358->g_4[1],&p_1358->g_4[1]};
    int8_t l_88 = (-1L);
    int64_t l_89 = 0L;
    uint64_t l_90[4][8][2] = {{{0x356E4D920E91C3CDL,0x356E4D920E91C3CDL},{0x356E4D920E91C3CDL,0x356E4D920E91C3CDL},{0x356E4D920E91C3CDL,0x356E4D920E91C3CDL},{0x356E4D920E91C3CDL,0x356E4D920E91C3CDL},{0x356E4D920E91C3CDL,0x356E4D920E91C3CDL},{0x356E4D920E91C3CDL,0x356E4D920E91C3CDL},{0x356E4D920E91C3CDL,0x356E4D920E91C3CDL},{0x356E4D920E91C3CDL,0x356E4D920E91C3CDL}},{{0x356E4D920E91C3CDL,0x356E4D920E91C3CDL},{0x356E4D920E91C3CDL,0x356E4D920E91C3CDL},{0x356E4D920E91C3CDL,0x356E4D920E91C3CDL},{0x356E4D920E91C3CDL,0x356E4D920E91C3CDL},{0x356E4D920E91C3CDL,0x356E4D920E91C3CDL},{0x356E4D920E91C3CDL,0x356E4D920E91C3CDL},{0x356E4D920E91C3CDL,0x356E4D920E91C3CDL},{0x356E4D920E91C3CDL,0x356E4D920E91C3CDL}},{{0x356E4D920E91C3CDL,0x356E4D920E91C3CDL},{0x356E4D920E91C3CDL,0x356E4D920E91C3CDL},{0x356E4D920E91C3CDL,0x356E4D920E91C3CDL},{0x356E4D920E91C3CDL,0x356E4D920E91C3CDL},{0x356E4D920E91C3CDL,0x356E4D920E91C3CDL},{0x356E4D920E91C3CDL,0x356E4D920E91C3CDL},{0x356E4D920E91C3CDL,0x356E4D920E91C3CDL},{0x356E4D920E91C3CDL,0x356E4D920E91C3CDL}},{{0x356E4D920E91C3CDL,0x356E4D920E91C3CDL},{0x356E4D920E91C3CDL,0x356E4D920E91C3CDL},{0x356E4D920E91C3CDL,0x356E4D920E91C3CDL},{0x356E4D920E91C3CDL,0x356E4D920E91C3CDL},{0x356E4D920E91C3CDL,0x356E4D920E91C3CDL},{0x356E4D920E91C3CDL,0x356E4D920E91C3CDL},{0x356E4D920E91C3CDL,0x356E4D920E91C3CDL},{0x356E4D920E91C3CDL,0x356E4D920E91C3CDL}}};
    int i, j, k;
    l_90[3][5][0]--;
    for (p_63 = 0; (p_63 > 9); p_63 = safe_add_func_int64_t_s_s(p_63, 3))
    { /* block id: 24 */
        uint16_t l_103 = 1UL;
        uint64_t *l_106 = (void*)0;
        uint64_t *l_107 = &p_1358->g_108;
        int8_t *l_109 = (void*)0;
        int8_t *l_110 = &l_88;
        uint32_t *l_112 = (void*)0;
        int16_t *l_113[3][4] = {{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}};
        int32_t l_115 = 7L;
        int i, j;
        l_115 |= ((safe_mul_func_uint16_t_u_u((safe_sub_func_int32_t_s_s(((*p_1358->g_76) & GROUP_DIVERGE(1, 1)), ((safe_div_func_uint16_t_u_u((l_103 || ((((safe_sub_func_int8_t_s_s((*l_79), ((*l_110) = (((*l_107) ^= 0xA097D27A3848624FL) , p_1358->g_4[1])))) | ((*l_83) &= (safe_unary_minus_func_uint16_t_u((*l_80))))) , p_64) == ((0x3987L > (p_1358->g_114[4][0] = (p_64 != l_112))) , (void*)0))), l_103)) | p_1358->g_6[8][2]))), 8UL)) || p_1358->g_11);
    }
    for (l_88 = 1; (l_88 <= 4); l_88 += 1)
    { /* block id: 33 */
        uint64_t *l_116 = &l_90[3][5][0];
        uint64_t **l_137 = &p_1358->g_135;
        uint64_t **l_138 = &l_116;
        uint32_t *l_155 = &p_1358->g_114[4][0];
        int32_t l_156 = 0x709790A8L;
        int32_t **l_157[7][10][3] = {{{&l_79,&l_78,(void*)0},{&l_79,&l_78,(void*)0},{&l_79,&l_78,(void*)0},{&l_79,&l_78,(void*)0},{&l_79,&l_78,(void*)0},{&l_79,&l_78,(void*)0},{&l_79,&l_78,(void*)0},{&l_79,&l_78,(void*)0},{&l_79,&l_78,(void*)0},{&l_79,&l_78,(void*)0}},{{&l_79,&l_78,(void*)0},{&l_79,&l_78,(void*)0},{&l_79,&l_78,(void*)0},{&l_79,&l_78,(void*)0},{&l_79,&l_78,(void*)0},{&l_79,&l_78,(void*)0},{&l_79,&l_78,(void*)0},{&l_79,&l_78,(void*)0},{&l_79,&l_78,(void*)0},{&l_79,&l_78,(void*)0}},{{&l_79,&l_78,(void*)0},{&l_79,&l_78,(void*)0},{&l_79,&l_78,(void*)0},{&l_79,&l_78,(void*)0},{&l_79,&l_78,(void*)0},{&l_79,&l_78,(void*)0},{&l_79,&l_78,(void*)0},{&l_79,&l_78,(void*)0},{&l_79,&l_78,(void*)0},{&l_79,&l_78,(void*)0}},{{&l_79,&l_78,(void*)0},{&l_79,&l_78,(void*)0},{&l_79,&l_78,(void*)0},{&l_79,&l_78,(void*)0},{&l_79,&l_78,(void*)0},{&l_79,&l_78,(void*)0},{&l_79,&l_78,(void*)0},{&l_79,&l_78,(void*)0},{&l_79,&l_78,(void*)0},{&l_79,&l_78,(void*)0}},{{&l_79,&l_78,(void*)0},{&l_79,&l_78,(void*)0},{&l_79,&l_78,(void*)0},{&l_79,&l_78,(void*)0},{&l_79,&l_78,(void*)0},{&l_79,&l_78,(void*)0},{&l_79,&l_78,(void*)0},{&l_79,&l_78,(void*)0},{&l_79,&l_78,(void*)0},{&l_79,&l_78,(void*)0}},{{&l_79,&l_78,(void*)0},{&l_79,&l_78,(void*)0},{&l_79,&l_78,(void*)0},{&l_79,&l_78,(void*)0},{&l_79,&l_78,(void*)0},{&l_79,&l_78,(void*)0},{&l_79,&l_78,(void*)0},{&l_79,&l_78,(void*)0},{&l_79,&l_78,(void*)0},{&l_79,&l_78,(void*)0}},{{&l_79,&l_78,(void*)0},{&l_79,&l_78,(void*)0},{&l_79,&l_78,(void*)0},{&l_79,&l_78,(void*)0},{&l_79,&l_78,(void*)0},{&l_79,&l_78,(void*)0},{&l_79,&l_78,(void*)0},{&l_79,&l_78,(void*)0},{&l_79,&l_78,(void*)0},{&l_79,&l_78,(void*)0}}};
        int i, j, k;
        p_1358->g_11 ^= ((*l_79) = (((((((*l_82) |= p_1358->g_4[l_88]) || (-1L)) , ((*l_116) |= p_1358->g_4[l_88])) || (safe_rshift_func_uint8_t_u_s((safe_add_func_int64_t_s_s(p_1358->g_4[l_88], ((((safe_rshift_func_uint16_t_u_s(FAKE_DIVERGE(p_1358->local_0_offset, get_local_id(0), 10), 1)) | (0x8AC4890B747BEB80L <= ((((safe_lshift_func_uint8_t_u_u((safe_rshift_func_uint8_t_u_s((safe_sub_func_int64_t_s_s(1L, (((safe_rshift_func_uint8_t_u_u((safe_lshift_func_int16_t_s_s(((safe_rshift_func_int8_t_s_u(p_65, ((((*l_137) = p_1358->g_135) == ((*l_138) = &p_1358->g_136)) , 1UL))) <= p_1358->g_4[l_88]), 9)), p_63)) != 0x32L) , p_1358->g_4[l_88]))), 5)), 4)) != 0L) == p_1358->g_4[l_88]) == p_65))) >= (*l_82)) > p_1358->g_6[0][4]))), 6))) >= p_65) != p_65));
        (*l_82) = ((*l_80) = (safe_mul_func_int8_t_s_s(p_1358->g_108, ((safe_div_func_int8_t_s_s(((((1L | ((FAKE_DIVERGE(p_1358->local_0_offset, get_local_id(0), 10) != (safe_mul_func_uint16_t_u_u((safe_mul_func_int16_t_s_s((p_65 != (((((*p_1358->g_76) = ((&l_88 != (void*)0) <= ((p_1358->g_comm_values[p_1358->tid] , p_1358->g_147[0][1]) != ((safe_lshift_func_uint16_t_u_u((safe_add_func_uint64_t_u_u(2UL, (safe_add_func_uint32_t_u_u((((*l_155) = 0x6084F89FL) >= p_65), FAKE_DIVERGE(p_1358->local_2_offset, get_local_id(2), 10))))), FAKE_DIVERGE(p_1358->local_0_offset, get_local_id(0), 10))) , (void*)0)))) == l_156) , (*p_1358->g_135)) < (*l_78))), 1L)), p_63))) == 2UL)) <= GROUP_DIVERGE(1, 1)) <= p_65) == p_63), (-1L))) , p_1358->g_148))));
        p_1358->g_8 = &p_1358->g_4[l_88];
    }
    (*l_83) = ((*l_79) &= (-5L));
    return (*l_80);
}


__kernel void entry(__global ulong *result, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local int64_t l_comm_values[2];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 2; i++)
            l_comm_values[i] = 1;
    struct S1 c_1359;
    struct S1* p_1358 = &c_1359;
    struct S1 c_1360 = {
        {(-5L),(-5L),(-5L),(-5L),(-5L)}, // p_1358->g_4
        {{0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L},{0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L},{0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L},{0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L},{0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L},{0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L},{0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L},{0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L},{0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L,0x1D012742L}}, // p_1358->g_6
        (void*)0, // p_1358->g_8
        0x39ABC19AL, // p_1358->g_10
        1L, // p_1358->g_11
        {{{1L,0x7607DBC1L,(-5L),1L,0x16340C09L,(-5L),(-5L),0x16340C09L},{1L,0x7607DBC1L,(-5L),1L,0x16340C09L,(-5L),(-5L),0x16340C09L},{1L,0x7607DBC1L,(-5L),1L,0x16340C09L,(-5L),(-5L),0x16340C09L},{1L,0x7607DBC1L,(-5L),1L,0x16340C09L,(-5L),(-5L),0x16340C09L}},{{1L,0x7607DBC1L,(-5L),1L,0x16340C09L,(-5L),(-5L),0x16340C09L},{1L,0x7607DBC1L,(-5L),1L,0x16340C09L,(-5L),(-5L),0x16340C09L},{1L,0x7607DBC1L,(-5L),1L,0x16340C09L,(-5L),(-5L),0x16340C09L},{1L,0x7607DBC1L,(-5L),1L,0x16340C09L,(-5L),(-5L),0x16340C09L}},{{1L,0x7607DBC1L,(-5L),1L,0x16340C09L,(-5L),(-5L),0x16340C09L},{1L,0x7607DBC1L,(-5L),1L,0x16340C09L,(-5L),(-5L),0x16340C09L},{1L,0x7607DBC1L,(-5L),1L,0x16340C09L,(-5L),(-5L),0x16340C09L},{1L,0x7607DBC1L,(-5L),1L,0x16340C09L,(-5L),(-5L),0x16340C09L}},{{1L,0x7607DBC1L,(-5L),1L,0x16340C09L,(-5L),(-5L),0x16340C09L},{1L,0x7607DBC1L,(-5L),1L,0x16340C09L,(-5L),(-5L),0x16340C09L},{1L,0x7607DBC1L,(-5L),1L,0x16340C09L,(-5L),(-5L),0x16340C09L},{1L,0x7607DBC1L,(-5L),1L,0x16340C09L,(-5L),(-5L),0x16340C09L}}}, // p_1358->g_12
        4UL, // p_1358->g_29
        0x5CA7CEE7L, // p_1358->g_42
        0x3049L, // p_1358->g_77
        &p_1358->g_77, // p_1358->g_76
        18446744073709551608UL, // p_1358->g_108
        {{0xDBCA4C72L,0UL,0UL},{0xDBCA4C72L,0UL,0UL},{0xDBCA4C72L,0UL,0UL},{0xDBCA4C72L,0UL,0UL},{0xDBCA4C72L,0UL,0UL},{0xDBCA4C72L,0UL,0UL},{0xDBCA4C72L,0UL,0UL},{0xDBCA4C72L,0UL,0UL},{0xDBCA4C72L,0UL,0UL},{0xDBCA4C72L,0UL,0UL}}, // p_1358->g_114
        0x503560D2B78A188AL, // p_1358->g_136
        &p_1358->g_136, // p_1358->g_135
        0x49L, // p_1358->g_148
        {{&p_1358->g_148,&p_1358->g_148}}, // p_1358->g_147
        0xB69CL, // p_1358->g_211
        8L, // p_1358->g_234
        {&p_1358->g_8,&p_1358->g_8,&p_1358->g_8,&p_1358->g_8,&p_1358->g_8,&p_1358->g_8,&p_1358->g_8,&p_1358->g_8,&p_1358->g_8,&p_1358->g_8}, // p_1358->g_257
        {0x31185791L,2UL,0x31185791L,0x31185791L,2UL,0x31185791L,0x31185791L,2UL,0x31185791L}, // p_1358->g_267
        {18446744073709551610UL}, // p_1358->g_280
        {{{&p_1358->g_8,&p_1358->g_8,&p_1358->g_8,&p_1358->g_8,(void*)0,&p_1358->g_8},{&p_1358->g_8,&p_1358->g_8,&p_1358->g_8,&p_1358->g_8,(void*)0,&p_1358->g_8},{&p_1358->g_8,&p_1358->g_8,&p_1358->g_8,&p_1358->g_8,(void*)0,&p_1358->g_8},{&p_1358->g_8,&p_1358->g_8,&p_1358->g_8,&p_1358->g_8,(void*)0,&p_1358->g_8}},{{&p_1358->g_8,&p_1358->g_8,&p_1358->g_8,&p_1358->g_8,(void*)0,&p_1358->g_8},{&p_1358->g_8,&p_1358->g_8,&p_1358->g_8,&p_1358->g_8,(void*)0,&p_1358->g_8},{&p_1358->g_8,&p_1358->g_8,&p_1358->g_8,&p_1358->g_8,(void*)0,&p_1358->g_8},{&p_1358->g_8,&p_1358->g_8,&p_1358->g_8,&p_1358->g_8,(void*)0,&p_1358->g_8}},{{&p_1358->g_8,&p_1358->g_8,&p_1358->g_8,&p_1358->g_8,(void*)0,&p_1358->g_8},{&p_1358->g_8,&p_1358->g_8,&p_1358->g_8,&p_1358->g_8,(void*)0,&p_1358->g_8},{&p_1358->g_8,&p_1358->g_8,&p_1358->g_8,&p_1358->g_8,(void*)0,&p_1358->g_8},{&p_1358->g_8,&p_1358->g_8,&p_1358->g_8,&p_1358->g_8,(void*)0,&p_1358->g_8}},{{&p_1358->g_8,&p_1358->g_8,&p_1358->g_8,&p_1358->g_8,(void*)0,&p_1358->g_8},{&p_1358->g_8,&p_1358->g_8,&p_1358->g_8,&p_1358->g_8,(void*)0,&p_1358->g_8},{&p_1358->g_8,&p_1358->g_8,&p_1358->g_8,&p_1358->g_8,(void*)0,&p_1358->g_8},{&p_1358->g_8,&p_1358->g_8,&p_1358->g_8,&p_1358->g_8,(void*)0,&p_1358->g_8}},{{&p_1358->g_8,&p_1358->g_8,&p_1358->g_8,&p_1358->g_8,(void*)0,&p_1358->g_8},{&p_1358->g_8,&p_1358->g_8,&p_1358->g_8,&p_1358->g_8,(void*)0,&p_1358->g_8},{&p_1358->g_8,&p_1358->g_8,&p_1358->g_8,&p_1358->g_8,(void*)0,&p_1358->g_8},{&p_1358->g_8,&p_1358->g_8,&p_1358->g_8,&p_1358->g_8,(void*)0,&p_1358->g_8}}}, // p_1358->g_286
        &p_1358->g_148, // p_1358->g_310
        &p_1358->g_310, // p_1358->g_309
        &p_1358->g_309, // p_1358->g_308
        {0x424A25B0AF15DCCEL}, // p_1358->g_315
        &p_1358->g_8, // p_1358->g_326
        &p_1358->g_315, // p_1358->g_340
        &p_1358->g_8, // p_1358->g_350
        &p_1358->g_4[2], // p_1358->g_354
        246UL, // p_1358->g_362
        6L, // p_1358->g_370
        {0xDA288B95FDD0641AL}, // p_1358->g_394
        {18446744073709551615UL}, // p_1358->g_416
        0x4F3A5986L, // p_1358->g_420
        (void*)0, // p_1358->g_471
        &p_1358->g_309, // p_1358->g_472
        (void*)0, // p_1358->g_499
        &p_1358->g_499, // p_1358->g_498
        4UL, // p_1358->g_545
        {{{0x32BAE01AL,1UL,0xF433C735L,4294967295UL},{0x32BAE01AL,1UL,0xF433C735L,4294967295UL},{0x32BAE01AL,1UL,0xF433C735L,4294967295UL},{0x32BAE01AL,1UL,0xF433C735L,4294967295UL},{0x32BAE01AL,1UL,0xF433C735L,4294967295UL},{0x32BAE01AL,1UL,0xF433C735L,4294967295UL},{0x32BAE01AL,1UL,0xF433C735L,4294967295UL},{0x32BAE01AL,1UL,0xF433C735L,4294967295UL},{0x32BAE01AL,1UL,0xF433C735L,4294967295UL}},{{0x32BAE01AL,1UL,0xF433C735L,4294967295UL},{0x32BAE01AL,1UL,0xF433C735L,4294967295UL},{0x32BAE01AL,1UL,0xF433C735L,4294967295UL},{0x32BAE01AL,1UL,0xF433C735L,4294967295UL},{0x32BAE01AL,1UL,0xF433C735L,4294967295UL},{0x32BAE01AL,1UL,0xF433C735L,4294967295UL},{0x32BAE01AL,1UL,0xF433C735L,4294967295UL},{0x32BAE01AL,1UL,0xF433C735L,4294967295UL},{0x32BAE01AL,1UL,0xF433C735L,4294967295UL}},{{0x32BAE01AL,1UL,0xF433C735L,4294967295UL},{0x32BAE01AL,1UL,0xF433C735L,4294967295UL},{0x32BAE01AL,1UL,0xF433C735L,4294967295UL},{0x32BAE01AL,1UL,0xF433C735L,4294967295UL},{0x32BAE01AL,1UL,0xF433C735L,4294967295UL},{0x32BAE01AL,1UL,0xF433C735L,4294967295UL},{0x32BAE01AL,1UL,0xF433C735L,4294967295UL},{0x32BAE01AL,1UL,0xF433C735L,4294967295UL},{0x32BAE01AL,1UL,0xF433C735L,4294967295UL}},{{0x32BAE01AL,1UL,0xF433C735L,4294967295UL},{0x32BAE01AL,1UL,0xF433C735L,4294967295UL},{0x32BAE01AL,1UL,0xF433C735L,4294967295UL},{0x32BAE01AL,1UL,0xF433C735L,4294967295UL},{0x32BAE01AL,1UL,0xF433C735L,4294967295UL},{0x32BAE01AL,1UL,0xF433C735L,4294967295UL},{0x32BAE01AL,1UL,0xF433C735L,4294967295UL},{0x32BAE01AL,1UL,0xF433C735L,4294967295UL},{0x32BAE01AL,1UL,0xF433C735L,4294967295UL}},{{0x32BAE01AL,1UL,0xF433C735L,4294967295UL},{0x32BAE01AL,1UL,0xF433C735L,4294967295UL},{0x32BAE01AL,1UL,0xF433C735L,4294967295UL},{0x32BAE01AL,1UL,0xF433C735L,4294967295UL},{0x32BAE01AL,1UL,0xF433C735L,4294967295UL},{0x32BAE01AL,1UL,0xF433C735L,4294967295UL},{0x32BAE01AL,1UL,0xF433C735L,4294967295UL},{0x32BAE01AL,1UL,0xF433C735L,4294967295UL},{0x32BAE01AL,1UL,0xF433C735L,4294967295UL}},{{0x32BAE01AL,1UL,0xF433C735L,4294967295UL},{0x32BAE01AL,1UL,0xF433C735L,4294967295UL},{0x32BAE01AL,1UL,0xF433C735L,4294967295UL},{0x32BAE01AL,1UL,0xF433C735L,4294967295UL},{0x32BAE01AL,1UL,0xF433C735L,4294967295UL},{0x32BAE01AL,1UL,0xF433C735L,4294967295UL},{0x32BAE01AL,1UL,0xF433C735L,4294967295UL},{0x32BAE01AL,1UL,0xF433C735L,4294967295UL},{0x32BAE01AL,1UL,0xF433C735L,4294967295UL}}}, // p_1358->g_561
        0x3A82AA4CL, // p_1358->g_572
        &p_1358->g_280, // p_1358->g_580
        {{{0x72A7F3C630F58988L},{0xBB266CF80DFF92F9L},{0x72A7F3C630F58988L},{0x72A7F3C630F58988L},{0xBB266CF80DFF92F9L},{0x72A7F3C630F58988L},{0x72A7F3C630F58988L}},{{0x72A7F3C630F58988L},{0xBB266CF80DFF92F9L},{0x72A7F3C630F58988L},{0x72A7F3C630F58988L},{0xBB266CF80DFF92F9L},{0x72A7F3C630F58988L},{0x72A7F3C630F58988L}}}, // p_1358->g_589
        &p_1358->g_8, // p_1358->g_660
        &p_1358->g_660, // p_1358->g_659
        &p_1358->g_589[0][3], // p_1358->g_668
        0UL, // p_1358->g_705
        &p_1358->g_580, // p_1358->g_724
        &p_1358->g_724, // p_1358->g_723
        {&p_1358->g_545,&p_1358->g_545,&p_1358->g_545,&p_1358->g_545,&p_1358->g_545,&p_1358->g_545,&p_1358->g_545}, // p_1358->g_727
        0x4242E637L, // p_1358->g_735
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_1358->g_747
        &p_1358->g_747[2], // p_1358->g_746
        0L, // p_1358->g_802
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_1358->g_820
        &p_1358->g_820[4], // p_1358->g_819
        (-6L), // p_1358->g_825
        0xD9L, // p_1358->g_842
        (void*)0, // p_1358->g_896
        &p_1358->g_896, // p_1358->g_895
        &p_1358->g_895, // p_1358->g_894
        &p_1358->g_894, // p_1358->g_893
        0UL, // p_1358->g_906
        &p_1358->g_906, // p_1358->g_905
        &p_1358->g_905, // p_1358->g_904
        &p_1358->g_904, // p_1358->g_903
        {0xC328C23994CFE370L}, // p_1358->g_1001
        {{{&p_1358->g_705},{&p_1358->g_705},{&p_1358->g_705},{&p_1358->g_705},{&p_1358->g_705},{&p_1358->g_705},{&p_1358->g_705}},{{&p_1358->g_705},{&p_1358->g_705},{&p_1358->g_705},{&p_1358->g_705},{&p_1358->g_705},{&p_1358->g_705},{&p_1358->g_705}},{{&p_1358->g_705},{&p_1358->g_705},{&p_1358->g_705},{&p_1358->g_705},{&p_1358->g_705},{&p_1358->g_705},{&p_1358->g_705}},{{&p_1358->g_705},{&p_1358->g_705},{&p_1358->g_705},{&p_1358->g_705},{&p_1358->g_705},{&p_1358->g_705},{&p_1358->g_705}},{{&p_1358->g_705},{&p_1358->g_705},{&p_1358->g_705},{&p_1358->g_705},{&p_1358->g_705},{&p_1358->g_705},{&p_1358->g_705}},{{&p_1358->g_705},{&p_1358->g_705},{&p_1358->g_705},{&p_1358->g_705},{&p_1358->g_705},{&p_1358->g_705},{&p_1358->g_705}},{{&p_1358->g_705},{&p_1358->g_705},{&p_1358->g_705},{&p_1358->g_705},{&p_1358->g_705},{&p_1358->g_705},{&p_1358->g_705}},{{&p_1358->g_705},{&p_1358->g_705},{&p_1358->g_705},{&p_1358->g_705},{&p_1358->g_705},{&p_1358->g_705},{&p_1358->g_705}},{{&p_1358->g_705},{&p_1358->g_705},{&p_1358->g_705},{&p_1358->g_705},{&p_1358->g_705},{&p_1358->g_705},{&p_1358->g_705}},{{&p_1358->g_705},{&p_1358->g_705},{&p_1358->g_705},{&p_1358->g_705},{&p_1358->g_705},{&p_1358->g_705},{&p_1358->g_705}}}, // p_1358->g_1060
        &p_1358->g_1060[7][5][0], // p_1358->g_1059
        &p_1358->g_1059, // p_1358->g_1058
        0x64L, // p_1358->g_1144
        0x1CADL, // p_1358->g_1146
        {0x2BD36395B2F023A7L}, // p_1358->g_1151
        0x7BE97F5D769426F2L, // p_1358->g_1202
        {18446744073709551615UL}, // p_1358->g_1236
        0x095740DBL, // p_1358->g_1263
        sequence_input[get_global_id(0)], // p_1358->global_0_offset
        sequence_input[get_global_id(1)], // p_1358->global_1_offset
        sequence_input[get_global_id(2)], // p_1358->global_2_offset
        sequence_input[get_local_id(0)], // p_1358->local_0_offset
        sequence_input[get_local_id(1)], // p_1358->local_1_offset
        sequence_input[get_local_id(2)], // p_1358->local_2_offset
        sequence_input[get_group_id(0)], // p_1358->group_0_offset
        sequence_input[get_group_id(1)], // p_1358->group_1_offset
        sequence_input[get_group_id(2)], // p_1358->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 2)), permutations[0][get_linear_local_id()])), // p_1358->tid
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_1359 = c_1360;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1358);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_1358->g_4[i], "p_1358->g_4[i]", print_hash_value);

    }
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_1358->g_6[i][j], "p_1358->g_6[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1358->g_10, "p_1358->g_10", print_hash_value);
    transparent_crc(p_1358->g_11, "p_1358->g_11", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 8; k++)
            {
                transparent_crc(p_1358->g_12[i][j][k], "p_1358->g_12[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1358->g_29, "p_1358->g_29", print_hash_value);
    transparent_crc(p_1358->g_42, "p_1358->g_42", print_hash_value);
    transparent_crc(p_1358->g_77, "p_1358->g_77", print_hash_value);
    transparent_crc(p_1358->g_108, "p_1358->g_108", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 3; j++)
        {
            transparent_crc(p_1358->g_114[i][j], "p_1358->g_114[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1358->g_136, "p_1358->g_136", print_hash_value);
    transparent_crc(p_1358->g_148, "p_1358->g_148", print_hash_value);
    transparent_crc(p_1358->g_211, "p_1358->g_211", print_hash_value);
    transparent_crc(p_1358->g_234, "p_1358->g_234", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1358->g_267[i], "p_1358->g_267[i]", print_hash_value);

    }
    transparent_crc(p_1358->g_280.f0, "p_1358->g_280.f0", print_hash_value);
    transparent_crc(p_1358->g_315.f0, "p_1358->g_315.f0", print_hash_value);
    transparent_crc(p_1358->g_362, "p_1358->g_362", print_hash_value);
    transparent_crc(p_1358->g_370, "p_1358->g_370", print_hash_value);
    transparent_crc(p_1358->g_394.f0, "p_1358->g_394.f0", print_hash_value);
    transparent_crc(p_1358->g_416.f0, "p_1358->g_416.f0", print_hash_value);
    transparent_crc(p_1358->g_420, "p_1358->g_420", print_hash_value);
    transparent_crc(p_1358->g_545, "p_1358->g_545", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_1358->g_561[i][j][k], "p_1358->g_561[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1358->g_572, "p_1358->g_572", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 7; j++)
        {
            transparent_crc(p_1358->g_589[i][j].f0, "p_1358->g_589[i][j].f0", print_hash_value);

        }
    }
    transparent_crc(p_1358->g_705, "p_1358->g_705", print_hash_value);
    transparent_crc(p_1358->g_735, "p_1358->g_735", print_hash_value);
    transparent_crc(p_1358->g_802, "p_1358->g_802", print_hash_value);
    transparent_crc(p_1358->g_825, "p_1358->g_825", print_hash_value);
    transparent_crc(p_1358->g_842, "p_1358->g_842", print_hash_value);
    transparent_crc(p_1358->g_906, "p_1358->g_906", print_hash_value);
    transparent_crc(p_1358->g_1001.f0, "p_1358->g_1001.f0", print_hash_value);
    transparent_crc(p_1358->g_1144, "p_1358->g_1144", print_hash_value);
    transparent_crc(p_1358->g_1146, "p_1358->g_1146", print_hash_value);
    transparent_crc(p_1358->g_1151.f0, "p_1358->g_1151.f0", print_hash_value);
    transparent_crc(p_1358->g_1202, "p_1358->g_1202", print_hash_value);
    transparent_crc(p_1358->g_1236.f0, "p_1358->g_1236.f0", print_hash_value);
    transparent_crc(p_1358->g_1263, "p_1358->g_1263", print_hash_value);
    transparent_crc(p_1358->l_comm_values[get_linear_local_id()], "p_1358->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_1358->g_comm_values[get_linear_group_id() * 2 + get_linear_local_id()], "p_1358->g_comm_values[get_linear_group_id() * 2 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
