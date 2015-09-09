// --atomics 47 ---fake_divergence -g 31,5,35 -l 31,1,5
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


// Seed: 112

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   uint8_t  f0;
   uint32_t  f1;
   int32_t  f2;
   uint32_t  f3;
   uint32_t  f4;
};

struct S1 {
   volatile uint32_t  f0;
   int64_t  f1;
   int32_t  f2;
   uint32_t  f3;
   int16_t  f4;
};

union U2 {
   volatile uint32_t  f0;
};

union U3 {
   volatile uint32_t  f0;
};

struct S4 {
    int16_t g_12;
    uint8_t g_21;
    int32_t g_23;
    int32_t * volatile g_24;
    int32_t g_27;
    int32_t g_43;
    int32_t * volatile g_51;
    uint64_t g_63[1][3];
    int64_t g_71;
    int64_t g_72;
    uint16_t g_75;
    int32_t g_92[5];
    uint32_t g_154;
    int32_t g_164;
    uint64_t g_168;
    int64_t g_191[7][6];
    int32_t g_192;
    int64_t g_233[9][1];
    int64_t *g_232;
    int64_t **g_231;
    uint64_t g_236;
    int8_t g_238;
    uint16_t g_285;
    volatile int32_t g_327;
    volatile int32_t * volatile g_326;
    volatile int32_t * volatile *g_325;
    union U2 g_341;
    uint8_t g_385;
    uint16_t * volatile g_397;
    uint16_t * volatile * volatile g_396[10][1];
    struct S0 g_398;
    volatile uint8_t g_408;
    union U2 g_414;
    uint64_t g_509;
    union U3 g_519;
    int32_t g_523;
    volatile union U2 g_547;
    volatile union U3 g_593;
    uint32_t g_664;
    int32_t *g_672;
    int32_t ** volatile g_671;
    struct S1 g_675;
    uint64_t global_0_offset;
    uint64_t global_1_offset;
    uint64_t global_2_offset;
    uint64_t local_0_offset;
    uint64_t local_1_offset;
    uint64_t local_2_offset;
    uint64_t group_0_offset;
    uint64_t group_1_offset;
    uint64_t group_2_offset;
    __local volatile uint32_t *l_atomic_input;
    __local volatile uint32_t *l_special_values;
    __global volatile uint32_t *g_atomic_input;
    __global volatile uint32_t *g_special_values;
};


/* --- FORWARD DECLARATIONS --- */
struct S1  func_1(struct S4 * p_676);
uint8_t  func_6(uint32_t  p_7, struct S4 * p_676);
uint64_t  func_8(int64_t  p_9, int8_t  p_10, struct S4 * p_676);
int32_t  func_17(uint8_t  p_18, uint32_t  p_19, struct S4 * p_676);
int32_t  func_38(int32_t  p_39, struct S4 * p_676);
int32_t * func_46(uint8_t * p_47, uint8_t  p_48, struct S4 * p_676);
uint8_t * func_49(int8_t  p_50, struct S4 * p_676);
int16_t  func_54(uint64_t  p_55, int32_t * p_56, uint64_t  p_57, uint8_t * p_58, uint8_t * p_59, struct S4 * p_676);
int32_t * func_64(int64_t  p_65, uint16_t  p_66, uint64_t * p_67, uint8_t * p_68, int32_t * p_69, struct S4 * p_676);
uint64_t  func_77(uint64_t  p_78, int8_t  p_79, int32_t * p_80, struct S4 * p_676);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_676->g_12 p_676->g_21 p_676->g_27 p_676->g_51 p_676->g_23 p_676->g_63 p_676->g_75 p_676->g_92 p_676->g_154 p_676->g_192 p_676->g_43 p_676->g_191 p_676->g_231 p_676->g_233 p_676->g_285 p_676->g_232 p_676->g_325 p_676->g_168 p_676->g_164 p_676->g_238 p_676->g_385 p_676->g_326 p_676->g_327 p_676->g_396 p_676->g_398 p_676->g_236 p_676->g_408 p_676->g_593 p_676->g_509 p_676->g_523 p_676->g_664 p_676->g_397 p_676->g_671 p_676->g_675
 * writes: p_676->g_21 p_676->g_23 p_676->g_27 p_676->g_63 p_676->g_71 p_676->g_72 p_676->g_75 p_676->g_92 p_676->g_154 p_676->g_164 p_676->g_168 p_676->g_191 p_676->g_192 p_676->g_238 p_676->g_285 p_676->g_325 p_676->g_233 p_676->g_327 p_676->g_398 p_676->g_236 p_676->g_408 p_676->g_51 p_676->g_385 p_676->g_664 p_676->g_672 p_676->g_509
 */
struct S1  func_1(struct S4 * p_676)
{ /* block id: 4 */
    int64_t l_11 = (-1L);
    uint8_t *l_20 = &p_676->g_21;
    uint64_t *l_673 = &p_676->g_509;
    int32_t l_674 = 0x7B117F36L;
    l_674 ^= ((safe_mod_func_uint64_t_u_u(((*l_673) = (((safe_rshift_func_int8_t_s_u(0x04L, 3)) > func_6((func_8(l_11, p_676->g_12, p_676) , (((safe_lshift_func_int16_t_s_u((l_11 != l_11), 15)) > (safe_mul_func_int8_t_s_s((func_17(((*l_20) &= l_11), l_11, p_676) , 0x25L), l_11))) & l_11)), p_676)) | 0x76L)), l_11)) ^ p_676->g_12);
    return p_676->g_675;
}


/* ------------------------------------------ */
/* 
 * reads : p_676->g_21 p_676->g_397 p_676->g_75 p_676->g_671
 * writes: p_676->g_21 p_676->g_672
 */
uint8_t  func_6(uint32_t  p_7, struct S4 * p_676)
{ /* block id: 362 */
    int32_t *l_670 = &p_676->g_523;
    for (p_676->g_21 = 25; (p_676->g_21 < 52); p_676->g_21 = safe_add_func_int8_t_s_s(p_676->g_21, 7))
    { /* block id: 365 */
        int8_t l_668[4][6][3] = {{{0x5CL,(-1L),0x7EL},{0x5CL,(-1L),0x7EL},{0x5CL,(-1L),0x7EL},{0x5CL,(-1L),0x7EL},{0x5CL,(-1L),0x7EL},{0x5CL,(-1L),0x7EL}},{{0x5CL,(-1L),0x7EL},{0x5CL,(-1L),0x7EL},{0x5CL,(-1L),0x7EL},{0x5CL,(-1L),0x7EL},{0x5CL,(-1L),0x7EL},{0x5CL,(-1L),0x7EL}},{{0x5CL,(-1L),0x7EL},{0x5CL,(-1L),0x7EL},{0x5CL,(-1L),0x7EL},{0x5CL,(-1L),0x7EL},{0x5CL,(-1L),0x7EL},{0x5CL,(-1L),0x7EL}},{{0x5CL,(-1L),0x7EL},{0x5CL,(-1L),0x7EL},{0x5CL,(-1L),0x7EL},{0x5CL,(-1L),0x7EL},{0x5CL,(-1L),0x7EL},{0x5CL,(-1L),0x7EL}}};
        uint64_t *l_669 = (void*)0;
        int i, j, k;
        (*p_676->g_671) = func_64(l_668[0][4][0], (*p_676->g_397), l_669, &p_676->g_385, l_670, p_676);
    }
    return p_7;
}


/* ------------------------------------------ */
/* 
 * reads : p_676->g_12
 * writes:
 */
uint64_t  func_8(int64_t  p_9, int8_t  p_10, struct S4 * p_676)
{ /* block id: 5 */
    return p_676->g_12;
}


/* ------------------------------------------ */
/* 
 * reads : p_676->g_27 p_676->g_51 p_676->g_23 p_676->g_63 p_676->g_12 p_676->g_75 p_676->g_92 p_676->g_154 p_676->g_21 p_676->g_192 p_676->g_43 p_676->g_191 p_676->g_231 p_676->g_233 p_676->g_285 p_676->g_232 p_676->g_325 p_676->g_168 p_676->g_164 p_676->g_238 p_676->g_385 p_676->g_326 p_676->g_327 p_676->g_396 p_676->g_398 p_676->g_236 p_676->g_408 p_676->g_593 p_676->g_509 p_676->g_523 p_676->g_664
 * writes: p_676->g_23 p_676->g_27 p_676->g_63 p_676->g_71 p_676->g_72 p_676->g_75 p_676->g_92 p_676->g_154 p_676->g_164 p_676->g_168 p_676->g_191 p_676->g_192 p_676->g_238 p_676->g_285 p_676->g_325 p_676->g_233 p_676->g_327 p_676->g_398 p_676->g_236 p_676->g_408 p_676->g_51 p_676->g_21 p_676->g_385 p_676->g_664
 */
int32_t  func_17(uint8_t  p_18, uint32_t  p_19, struct S4 * p_676)
{ /* block id: 8 */
    int32_t *l_22 = &p_676->g_23;
    int32_t *l_25 = (void*)0;
    int32_t *l_26 = &p_676->g_27;
    int32_t *l_28 = &p_676->g_23;
    int32_t *l_29 = &p_676->g_23;
    int32_t *l_30 = &p_676->g_27;
    int32_t *l_31 = &p_676->g_27;
    int32_t *l_32 = &p_676->g_23;
    int32_t *l_33 = &p_676->g_27;
    int32_t *l_34[6][2] = {{&p_676->g_27,&p_676->g_23},{&p_676->g_27,&p_676->g_23},{&p_676->g_27,&p_676->g_23},{&p_676->g_27,&p_676->g_23},{&p_676->g_27,&p_676->g_23},{&p_676->g_27,&p_676->g_23}};
    uint16_t l_35 = 65535UL;
    int32_t *l_42[2][2][4] = {{{&p_676->g_43,&p_676->g_43,&p_676->g_43,&p_676->g_43},{&p_676->g_43,&p_676->g_43,&p_676->g_43,&p_676->g_43}},{{&p_676->g_43,&p_676->g_43,&p_676->g_43,&p_676->g_43},{&p_676->g_43,&p_676->g_43,&p_676->g_43,&p_676->g_43}}};
    struct S0 l_665 = {255UL,0x8A28A8C8L,0x23C6057DL,4UL,3UL};
    int i, j, k;
    (*l_26) = ((*l_22) = (-3L));
    l_35--;
    p_676->g_664 &= func_38(((*l_28) = (safe_rshift_func_uint16_t_u_u(7UL, FAKE_DIVERGE(p_676->global_0_offset, get_global_id(0), 10)))), p_676);
    l_665 = l_665;
    return p_18;
}


/* ------------------------------------------ */
/* 
 * reads : p_676->g_27 p_676->g_51 p_676->g_23 p_676->g_63 p_676->g_12 p_676->g_75 p_676->g_92 p_676->g_154 p_676->g_21 p_676->g_192 p_676->g_43 p_676->g_191 p_676->g_231 p_676->g_233 p_676->g_285 p_676->g_232 p_676->g_325 p_676->g_168 p_676->g_164 p_676->g_238 p_676->g_385 p_676->g_326 p_676->g_327 p_676->g_396 p_676->g_398 p_676->g_236 p_676->g_408 p_676->g_593 p_676->g_509 p_676->g_523
 * writes: p_676->g_27 p_676->g_23 p_676->g_63 p_676->g_71 p_676->g_72 p_676->g_75 p_676->g_92 p_676->g_154 p_676->g_164 p_676->g_168 p_676->g_191 p_676->g_192 p_676->g_238 p_676->g_285 p_676->g_325 p_676->g_233 p_676->g_327 p_676->g_398 p_676->g_236 p_676->g_408 p_676->g_51 p_676->g_21 p_676->g_385
 */
int32_t  func_38(int32_t  p_39, struct S4 * p_676)
{ /* block id: 13 */
    int16_t l_60[6][7] = {{0x4D0AL,1L,5L,0x5F5AL,0x5D55L,0x4D0AL,0x5F5AL},{0x4D0AL,1L,5L,0x5F5AL,0x5D55L,0x4D0AL,0x5F5AL},{0x4D0AL,1L,5L,0x5F5AL,0x5D55L,0x4D0AL,0x5F5AL},{0x4D0AL,1L,5L,0x5F5AL,0x5D55L,0x4D0AL,0x5F5AL},{0x4D0AL,1L,5L,0x5F5AL,0x5D55L,0x4D0AL,0x5F5AL},{0x4D0AL,1L,5L,0x5F5AL,0x5D55L,0x4D0AL,0x5F5AL}};
    uint8_t *l_376 = &p_676->g_21;
    int32_t *l_377 = &p_676->g_43;
    int32_t l_594 = 0x38E13915L;
    int8_t *l_597[3][9] = {{&p_676->g_238,&p_676->g_238,&p_676->g_238,&p_676->g_238,&p_676->g_238,&p_676->g_238,&p_676->g_238,&p_676->g_238,&p_676->g_238},{&p_676->g_238,&p_676->g_238,&p_676->g_238,&p_676->g_238,&p_676->g_238,&p_676->g_238,&p_676->g_238,&p_676->g_238,&p_676->g_238},{&p_676->g_238,&p_676->g_238,&p_676->g_238,&p_676->g_238,&p_676->g_238,&p_676->g_238,&p_676->g_238,&p_676->g_238,&p_676->g_238}};
    int8_t **l_598 = &l_597[0][0];
    int32_t *l_615[10][3] = {{&p_676->g_27,&p_676->g_92[0],&p_676->g_192},{&p_676->g_27,&p_676->g_92[0],&p_676->g_192},{&p_676->g_27,&p_676->g_92[0],&p_676->g_192},{&p_676->g_27,&p_676->g_92[0],&p_676->g_192},{&p_676->g_27,&p_676->g_92[0],&p_676->g_192},{&p_676->g_27,&p_676->g_92[0],&p_676->g_192},{&p_676->g_27,&p_676->g_92[0],&p_676->g_192},{&p_676->g_27,&p_676->g_92[0],&p_676->g_192},{&p_676->g_27,&p_676->g_92[0],&p_676->g_192},{&p_676->g_27,&p_676->g_92[0],&p_676->g_192}};
    int64_t *l_616 = (void*)0;
    int64_t *l_617 = (void*)0;
    int64_t *l_618 = &p_676->g_191[0][3];
    struct S0 l_634 = {0x0DL,4294967289UL,-1L,4294967295UL,4294967287UL};
    uint16_t l_645[3][8][7] = {{{65534UL,0xCF70L,65534UL,65534UL,0xCF70L,65534UL,65534UL},{65534UL,0xCF70L,65534UL,65534UL,0xCF70L,65534UL,65534UL},{65534UL,0xCF70L,65534UL,65534UL,0xCF70L,65534UL,65534UL},{65534UL,0xCF70L,65534UL,65534UL,0xCF70L,65534UL,65534UL},{65534UL,0xCF70L,65534UL,65534UL,0xCF70L,65534UL,65534UL},{65534UL,0xCF70L,65534UL,65534UL,0xCF70L,65534UL,65534UL},{65534UL,0xCF70L,65534UL,65534UL,0xCF70L,65534UL,65534UL},{65534UL,0xCF70L,65534UL,65534UL,0xCF70L,65534UL,65534UL}},{{65534UL,0xCF70L,65534UL,65534UL,0xCF70L,65534UL,65534UL},{65534UL,0xCF70L,65534UL,65534UL,0xCF70L,65534UL,65534UL},{65534UL,0xCF70L,65534UL,65534UL,0xCF70L,65534UL,65534UL},{65534UL,0xCF70L,65534UL,65534UL,0xCF70L,65534UL,65534UL},{65534UL,0xCF70L,65534UL,65534UL,0xCF70L,65534UL,65534UL},{65534UL,0xCF70L,65534UL,65534UL,0xCF70L,65534UL,65534UL},{65534UL,0xCF70L,65534UL,65534UL,0xCF70L,65534UL,65534UL},{65534UL,0xCF70L,65534UL,65534UL,0xCF70L,65534UL,65534UL}},{{65534UL,0xCF70L,65534UL,65534UL,0xCF70L,65534UL,65534UL},{65534UL,0xCF70L,65534UL,65534UL,0xCF70L,65534UL,65534UL},{65534UL,0xCF70L,65534UL,65534UL,0xCF70L,65534UL,65534UL},{65534UL,0xCF70L,65534UL,65534UL,0xCF70L,65534UL,65534UL},{65534UL,0xCF70L,65534UL,65534UL,0xCF70L,65534UL,65534UL},{65534UL,0xCF70L,65534UL,65534UL,0xCF70L,65534UL,65534UL},{65534UL,0xCF70L,65534UL,65534UL,0xCF70L,65534UL,65534UL},{65534UL,0xCF70L,65534UL,65534UL,0xCF70L,65534UL,65534UL}}};
    uint64_t l_646[8][2];
    int32_t **l_648 = &l_615[9][2];
    int32_t ***l_647 = &l_648;
    int32_t ****l_649 = &l_647;
    uint8_t *l_650 = &p_676->g_398.f0;
    uint8_t *l_651 = (void*)0;
    uint8_t *l_652[5] = {&p_676->g_385,&p_676->g_385,&p_676->g_385,&p_676->g_385,&p_676->g_385};
    uint32_t l_661[6][9] = {{4294967295UL,4294967295UL,4294967288UL,0x730D3253L,0xBA3C9797L,4294967286UL,4294967286UL,4294967288UL,0x3B5D2DE1L},{4294967295UL,4294967295UL,4294967288UL,0x730D3253L,0xBA3C9797L,4294967286UL,4294967286UL,4294967288UL,0x3B5D2DE1L},{4294967295UL,4294967295UL,4294967288UL,0x730D3253L,0xBA3C9797L,4294967286UL,4294967286UL,4294967288UL,0x3B5D2DE1L},{4294967295UL,4294967295UL,4294967288UL,0x730D3253L,0xBA3C9797L,4294967286UL,4294967286UL,4294967288UL,0x3B5D2DE1L},{4294967295UL,4294967295UL,4294967288UL,0x730D3253L,0xBA3C9797L,4294967286UL,4294967286UL,4294967288UL,0x3B5D2DE1L},{4294967295UL,4294967295UL,4294967288UL,0x730D3253L,0xBA3C9797L,4294967286UL,4294967286UL,4294967288UL,0x3B5D2DE1L}};
    int i, j, k;
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 2; j++)
            l_646[i][j] = 0xA0C523E49F8A4183L;
    }
    for (p_676->g_27 = (-22); (p_676->g_27 <= 26); p_676->g_27 = safe_add_func_uint16_t_u_u(p_676->g_27, 1))
    { /* block id: 16 */
        uint64_t *l_61 = (void*)0;
        uint64_t *l_62 = &p_676->g_63[0][2];
        int64_t *l_70 = &p_676->g_71;
        uint16_t *l_73 = (void*)0;
        uint16_t *l_74[1];
        int32_t l_76 = 9L;
        uint16_t **l_87 = &l_74[0];
        int32_t *l_88 = &p_676->g_43;
        int32_t **l_378 = (void*)0;
        int32_t **l_379 = &l_88;
        int32_t *l_589 = &p_676->g_23;
        int32_t **l_588[4][3][2] = {{{&l_589,&l_589},{&l_589,&l_589},{&l_589,&l_589}},{{&l_589,&l_589},{&l_589,&l_589},{&l_589,&l_589}},{{&l_589,&l_589},{&l_589,&l_589},{&l_589,&l_589}},{{&l_589,&l_589},{&l_589,&l_589},{&l_589,&l_589}}};
        union U2 *l_590 = &p_676->g_414;
        int i, j, k;
        for (i = 0; i < 1; i++)
            l_74[i] = &p_676->g_75;
        p_676->g_51 = func_46(func_49(p_39, p_676), (func_8(((safe_lshift_func_int16_t_s_u(func_54(((*l_62) &= l_60[2][6]), ((*l_379) = func_64((p_676->g_72 = ((*l_70) = (GROUP_DIVERGE(0, 1) || p_676->g_12))), (l_76 |= 0x900DL), (((*p_676->g_232) = ((func_77(l_60[3][2], p_39, ((safe_mod_func_int64_t_s_s(p_676->g_75, (safe_mul_func_int8_t_s_s((safe_div_func_uint16_t_u_u((((*l_87) = (void*)0) == (void*)0), p_39)), GROUP_DIVERGE(0, 1))))) , l_88), p_676) < l_60[0][1]) < (-6L))) , &p_676->g_236), l_376, l_377, p_676)), p_39, l_376, &p_676->g_21, p_676), 13)) , l_60[2][6]), p_676->g_43, p_676) , 5UL), p_676);
        l_590 = l_590;
    }
    (**p_676->g_325) = (~((l_594 &= (p_676->g_593 , 0x69D1E0FB7FA86BEFL)) & (((safe_rshift_func_uint8_t_u_s((((*l_598) = l_597[0][2]) == (void*)0), ((safe_mod_func_uint16_t_u_u(((((FAKE_DIVERGE(p_676->global_0_offset, get_global_id(0), 10) == FAKE_DIVERGE(p_676->group_0_offset, get_group_id(0), 10)) || (((safe_rshift_func_int16_t_s_s((((p_676->g_238 , ((((safe_add_func_int64_t_s_s((p_39 && 4L), ((*l_618) &= (safe_rshift_func_int16_t_s_s((safe_lshift_func_int8_t_s_s(((((safe_add_func_int32_t_s_s((p_676->g_92[0] = ((safe_lshift_func_uint8_t_u_u(0xA1L, 6)) != (p_676->g_233[1][0] <= p_39))), 0x06BFB1C8L)) <= 0x425FL) || (**p_676->g_231)) | 0x399492F142BE87F0L), p_676->g_509)), p_676->g_236))))) == p_39) && p_39) ^ (*p_676->g_232))) != p_676->g_168) >= p_676->g_285), p_39)) != (-1L)) > p_676->g_238)) == FAKE_DIVERGE(p_676->group_0_offset, get_group_id(0), 10)) < FAKE_DIVERGE(p_676->global_0_offset, get_global_id(0), 10)), 1L)) || FAKE_DIVERGE(p_676->global_1_offset, get_global_id(1), 10)))) , p_39) >= p_676->g_43)));
    (**p_676->g_325) = (safe_mul_func_int8_t_s_s(((*p_676->g_326) ^ (safe_rshift_func_int8_t_s_u((safe_rshift_func_uint8_t_u_s((safe_rshift_func_uint8_t_u_u((p_676->g_385 = (safe_rshift_func_uint8_t_u_u(p_676->g_191[0][3], ((*l_650) &= (safe_unary_minus_func_uint32_t_u((safe_div_func_uint64_t_u_u((((((*l_649) = ((safe_mul_func_int16_t_s_s(((((**p_676->g_231) = (((l_634 , (((*l_376) ^= (safe_div_func_uint64_t_u_u(((p_39 , ((+0x64FEAD36L) > ((safe_sub_func_int8_t_s_s((p_676->g_398.f3 > (1UL != ((safe_sub_func_int16_t_s_s(((safe_add_func_uint8_t_u_u(((safe_mod_func_int8_t_s_s((0xDE8CD0D28004AF81L >= (((p_39 && 0x32L) , 1L) || p_676->g_75)), p_676->g_164)) <= 0x2FL), p_676->g_523)) < p_39), 0x3594L)) <= p_676->g_92[4]))), l_645[2][2][0])) >= l_646[0][1]))) , p_676->g_398.f2), p_39))) , &p_676->g_285)) != &p_676->g_75) != 0L)) || 0x8143DC41129B96CBL) || 65535UL), p_676->g_236)) , l_647)) != &p_676->g_325) != 65535UL) > p_39), p_676->g_509)))))))), p_39)), 4)), 0))), p_39));
    for (p_39 = (-14); (p_39 == (-6)); ++p_39)
    { /* block id: 332 */
        uint32_t l_657 = 3UL;
        for (p_676->g_236 = (-26); (p_676->g_236 < 31); p_676->g_236 = safe_add_func_uint32_t_u_u(p_676->g_236, 8))
        { /* block id: 335 */
            l_657 = p_39;
            for (p_676->g_23 = 26; (p_676->g_23 < 21); --p_676->g_23)
            { /* block id: 339 */
                int8_t l_660 = 0x09L;
                l_660 ^= (-5L);
            }
            if (p_39)
                break;
        }
        if (l_661[0][8])
        { /* block id: 344 */
            int16_t l_662 = 0x4CD8L;
            return l_662;
        }
        else
        { /* block id: 346 */
            volatile int32_t * volatile l_663 = &p_676->g_327;/* VOLATILE GLOBAL l_663 */
            l_663 = ((GROUP_DIVERGE(0, 1) ^ 0xE097L) , (*p_676->g_325));
            (**p_676->g_325) = 1L;
            for (l_634.f1 = 0; (l_634.f1 <= 2); l_634.f1 += 1)
            { /* block id: 351 */
                return l_657;
            }
        }
        if (l_657)
            continue;
        if ((*p_676->g_51))
            continue;
    }
    return p_39;
}


/* ------------------------------------------ */
/* 
 * reads : p_676->g_92 p_676->g_385 p_676->g_233 p_676->g_23 p_676->g_191 p_676->g_325 p_676->g_326 p_676->g_327 p_676->g_192 p_676->g_396 p_676->g_398 p_676->g_236 p_676->g_408 p_676->g_164
 * writes: p_676->g_75 p_676->g_285 p_676->g_71 p_676->g_327 p_676->g_192 p_676->g_398 p_676->g_236 p_676->g_408 p_676->g_164
 */
int32_t * func_46(uint8_t * p_47, uint8_t  p_48, struct S4 * p_676)
{ /* block id: 207 */
    int64_t l_384[3];
    uint16_t *l_388 = &p_676->g_285;
    int64_t *l_391 = &p_676->g_71;
    int32_t **l_393 = (void*)0;
    int32_t ***l_392 = &l_393;
    int32_t l_402 = 0x0D8FC810L;
    int32_t l_407 = (-9L);
    uint16_t *l_459 = &p_676->g_75;
    union U2 **l_487 = (void*)0;
    int16_t l_526[8];
    int32_t l_531 = (-1L);
    int32_t l_534 = 0x49C889DFL;
    int32_t l_536[3][9][3] = {{{0x66ED2F33L,(-1L),(-1L)},{0x66ED2F33L,(-1L),(-1L)},{0x66ED2F33L,(-1L),(-1L)},{0x66ED2F33L,(-1L),(-1L)},{0x66ED2F33L,(-1L),(-1L)},{0x66ED2F33L,(-1L),(-1L)},{0x66ED2F33L,(-1L),(-1L)},{0x66ED2F33L,(-1L),(-1L)},{0x66ED2F33L,(-1L),(-1L)}},{{0x66ED2F33L,(-1L),(-1L)},{0x66ED2F33L,(-1L),(-1L)},{0x66ED2F33L,(-1L),(-1L)},{0x66ED2F33L,(-1L),(-1L)},{0x66ED2F33L,(-1L),(-1L)},{0x66ED2F33L,(-1L),(-1L)},{0x66ED2F33L,(-1L),(-1L)},{0x66ED2F33L,(-1L),(-1L)},{0x66ED2F33L,(-1L),(-1L)}},{{0x66ED2F33L,(-1L),(-1L)},{0x66ED2F33L,(-1L),(-1L)},{0x66ED2F33L,(-1L),(-1L)},{0x66ED2F33L,(-1L),(-1L)},{0x66ED2F33L,(-1L),(-1L)},{0x66ED2F33L,(-1L),(-1L)},{0x66ED2F33L,(-1L),(-1L)},{0x66ED2F33L,(-1L),(-1L)},{0x66ED2F33L,(-1L),(-1L)}}};
    int16_t l_564 = 0x74AEL;
    int32_t *l_580[1];
    int8_t l_581 = 0x1EL;
    uint32_t l_582 = 0x5AE333F7L;
    uint64_t l_585 = 18446744073709551610UL;
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_384[i] = 0L;
    for (i = 0; i < 8; i++)
        l_526[i] = (-1L);
    for (i = 0; i < 1; i++)
        l_580[i] = (void*)0;
    (**p_676->g_325) |= (l_384[0] == (((p_676->g_75 = (p_676->g_92[0] && l_384[0])) == (((!(p_676->g_385 , ((safe_rshift_func_uint16_t_u_u(((*l_388) = p_48), (safe_mul_func_uint16_t_u_u(p_676->g_233[3][0], ((&l_384[0] != (void*)0) | ((*l_391) = ((((p_48 || 0x5222L) != 4294967295UL) , p_676->g_23) | 0xD433L))))))) , 4UL))) , l_392) == &l_393)) || p_676->g_191[5][4]));
    for (p_676->g_192 = (-28); (p_676->g_192 >= 18); p_676->g_192 = safe_add_func_uint32_t_u_u(p_676->g_192, 6))
    { /* block id: 214 */
        int32_t l_406[7][8][4] = {{{8L,9L,0x113D644DL,(-8L)},{8L,9L,0x113D644DL,(-8L)},{8L,9L,0x113D644DL,(-8L)},{8L,9L,0x113D644DL,(-8L)},{8L,9L,0x113D644DL,(-8L)},{8L,9L,0x113D644DL,(-8L)},{8L,9L,0x113D644DL,(-8L)},{8L,9L,0x113D644DL,(-8L)}},{{8L,9L,0x113D644DL,(-8L)},{8L,9L,0x113D644DL,(-8L)},{8L,9L,0x113D644DL,(-8L)},{8L,9L,0x113D644DL,(-8L)},{8L,9L,0x113D644DL,(-8L)},{8L,9L,0x113D644DL,(-8L)},{8L,9L,0x113D644DL,(-8L)},{8L,9L,0x113D644DL,(-8L)}},{{8L,9L,0x113D644DL,(-8L)},{8L,9L,0x113D644DL,(-8L)},{8L,9L,0x113D644DL,(-8L)},{8L,9L,0x113D644DL,(-8L)},{8L,9L,0x113D644DL,(-8L)},{8L,9L,0x113D644DL,(-8L)},{8L,9L,0x113D644DL,(-8L)},{8L,9L,0x113D644DL,(-8L)}},{{8L,9L,0x113D644DL,(-8L)},{8L,9L,0x113D644DL,(-8L)},{8L,9L,0x113D644DL,(-8L)},{8L,9L,0x113D644DL,(-8L)},{8L,9L,0x113D644DL,(-8L)},{8L,9L,0x113D644DL,(-8L)},{8L,9L,0x113D644DL,(-8L)},{8L,9L,0x113D644DL,(-8L)}},{{8L,9L,0x113D644DL,(-8L)},{8L,9L,0x113D644DL,(-8L)},{8L,9L,0x113D644DL,(-8L)},{8L,9L,0x113D644DL,(-8L)},{8L,9L,0x113D644DL,(-8L)},{8L,9L,0x113D644DL,(-8L)},{8L,9L,0x113D644DL,(-8L)},{8L,9L,0x113D644DL,(-8L)}},{{8L,9L,0x113D644DL,(-8L)},{8L,9L,0x113D644DL,(-8L)},{8L,9L,0x113D644DL,(-8L)},{8L,9L,0x113D644DL,(-8L)},{8L,9L,0x113D644DL,(-8L)},{8L,9L,0x113D644DL,(-8L)},{8L,9L,0x113D644DL,(-8L)},{8L,9L,0x113D644DL,(-8L)}},{{8L,9L,0x113D644DL,(-8L)},{8L,9L,0x113D644DL,(-8L)},{8L,9L,0x113D644DL,(-8L)},{8L,9L,0x113D644DL,(-8L)},{8L,9L,0x113D644DL,(-8L)},{8L,9L,0x113D644DL,(-8L)},{8L,9L,0x113D644DL,(-8L)},{8L,9L,0x113D644DL,(-8L)}}};
        int32_t **l_411 = (void*)0;
        int32_t *l_448 = &p_676->g_23;
        uint16_t *l_460 = (void*)0;
        uint32_t l_501 = 0x0A157EF4L;
        uint64_t *l_508 = &p_676->g_509;
        uint32_t **l_520 = (void*)0;
        int16_t l_521 = (-10L);
        uint32_t l_522[5] = {0UL,0UL,0UL,0UL,0UL};
        int32_t l_527 = 0x2D0759F3L;
        int32_t l_529 = (-1L);
        int32_t l_532 = 0x7AF5C8EEL;
        int32_t l_533 = 0x248ACD95L;
        int32_t l_535 = (-8L);
        int32_t l_537 = 0x043DC2DCL;
        int32_t l_539 = 1L;
        int32_t l_553 = 0x03308098L;
        uint16_t l_561[2][2] = {{0x30A3L,0x30A3L},{0x30A3L,0x30A3L}};
        int i, j, k;
        if ((&l_388 != p_676->g_396[4][0]))
        { /* block id: 215 */
            struct S0 *l_399 = &p_676->g_398;
            int32_t l_405[8] = {0x4416E39AL,0x4416E39AL,0x4416E39AL,0x4416E39AL,0x4416E39AL,0x4416E39AL,0x4416E39AL,0x4416E39AL};
            uint8_t *l_418 = &p_676->g_398.f0;
            int32_t *l_419 = (void*)0;
            int32_t *l_420 = &l_405[0];
            int16_t l_554 = 0L;
            int i;
            (*l_399) = p_676->g_398;
            for (p_676->g_236 = 0; (p_676->g_236 <= 0); p_676->g_236 += 1)
            { /* block id: 219 */
                int32_t *l_400 = (void*)0;
                int32_t *l_401 = &p_676->g_92[0];
                int32_t *l_403 = &p_676->g_23;
                int32_t *l_404[4];
                union U2 *l_485 = &p_676->g_414;
                union U2 **l_484[1][10] = {{&l_485,&l_485,&l_485,&l_485,&l_485,&l_485,&l_485,&l_485,&l_485,&l_485}};
                union U2 ***l_486 = &l_484[0][5];
                int8_t *l_488[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                uint64_t *l_493 = &p_676->g_168;
                int16_t l_565 = 0x6E34L;
                uint64_t l_568 = 18446744073709551615UL;
                int i, j;
                for (i = 0; i < 4; i++)
                    l_404[i] = &p_676->g_92[p_676->g_236];
                p_676->g_408++;
                if (p_676->g_191[(p_676->g_236 + 3)][(p_676->g_236 + 3)])
                    continue;
            }
        }
        else
        { /* block id: 299 */
            if ((*p_676->g_326))
                break;
        }
        for (p_676->g_164 = 0; (p_676->g_164 >= 9); p_676->g_164++)
        { /* block id: 304 */
            if ((atomic_inc(&p_676->g_atomic_input[47 * get_linear_group_id() + 46]) == 7))
            { /* block id: 306 */
                int64_t l_576 = 0x02ACC99A47A1A8B7L;
                int32_t l_578 = 0x565BC4E2L;
                int32_t *l_577 = &l_578;
                int32_t *l_579 = &l_578;
                l_579 = (l_576 , l_577);
                unsigned int result = 0;
                result += l_576;
                result += l_578;
                atomic_add(&p_676->g_special_values[47 * get_linear_group_id() + 46], result);
            }
            else
            { /* block id: 308 */
                (1 + 1);
            }
        }
    }
    l_582--;
    --l_585;
    return &p_676->g_23;
}


/* ------------------------------------------ */
/* 
 * reads : p_676->g_51 p_676->g_23
 * writes: p_676->g_23
 */
uint8_t * func_49(int8_t  p_50, struct S4 * p_676)
{ /* block id: 17 */
    (*p_676->g_51) ^= p_50;
    return &p_676->g_21;
}


/* ------------------------------------------ */
/* 
 * reads : p_676->g_92
 * writes: p_676->g_92
 */
int16_t  func_54(uint64_t  p_55, int32_t * p_56, uint64_t  p_57, uint8_t * p_58, uint8_t * p_59, struct S4 * p_676)
{ /* block id: 202 */
    uint32_t *l_380 = &p_676->g_154;
    uint32_t *l_381 = &p_676->g_154;
    uint32_t **l_382 = &l_381;
    int32_t *l_383 = &p_676->g_92[2];
    (*l_383) = ((l_380 = (void*)0) == ((*l_382) = l_381));
    return (*l_383);
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t * func_64(int64_t  p_65, uint16_t  p_66, uint64_t * p_67, uint8_t * p_68, int32_t * p_69, struct S4 * p_676)
{ /* block id: 199 */
    return p_69;
}


/* ------------------------------------------ */
/* 
 * reads : p_676->g_75 p_676->g_92 p_676->g_154 p_676->g_21 p_676->g_27 p_676->g_192 p_676->g_43 p_676->g_191 p_676->g_231 p_676->g_233 p_676->g_285 p_676->g_232 p_676->g_325 p_676->g_168 p_676->g_164 p_676->g_238
 * writes: p_676->g_75 p_676->g_92 p_676->g_154 p_676->g_164 p_676->g_168 p_676->g_191 p_676->g_192 p_676->g_238 p_676->g_285 p_676->g_325 p_676->g_233
 */
uint64_t  func_77(uint64_t  p_78, int8_t  p_79, int32_t * p_80, struct S4 * p_676)
{ /* block id: 25 */
    int32_t l_93 = 1L;
    uint32_t l_152 = 0xAF5C8058L;
    int32_t *l_177 = &p_676->g_43;
    struct S0 l_193 = {0x97L,0xBE373B64L,0x57383A17L,0UL,0x295D964BL};
    uint16_t l_239 = 65535UL;
    int32_t l_247 = 9L;
    int32_t l_248 = 1L;
    int32_t l_250 = 0L;
    int32_t l_251 = (-10L);
    int32_t l_252 = 0x15054550L;
    int32_t l_253 = 0x090D4C23L;
    int32_t l_255 = (-1L);
    int32_t l_256 = 0x3999EB9FL;
    int32_t l_258 = 9L;
    uint8_t l_260 = 255UL;
    int16_t l_280 = 8L;
    int32_t l_281 = 0x760D366CL;
    int32_t l_282 = 1L;
    int32_t l_283 = 0x75B507F0L;
    int32_t l_284 = 0x5C911F6CL;
    uint16_t *l_370 = &l_239;
    for (p_676->g_75 = 0; (p_676->g_75 < 19); p_676->g_75 = safe_add_func_int8_t_s_s(p_676->g_75, 2))
    { /* block id: 28 */
        int32_t *l_91 = &p_676->g_92[0];
        uint32_t *l_153 = &p_676->g_154;
        uint8_t l_161 = 0UL;
        uint64_t *l_167[5] = {&p_676->g_168,&p_676->g_168,&p_676->g_168,&p_676->g_168,&p_676->g_168};
        int64_t **l_230[2];
        uint64_t *l_235 = &p_676->g_236;
        uint64_t **l_234[6] = {&l_235,&l_235,&l_235,&l_235,&l_235,&l_235};
        int32_t l_241 = 0x252184DDL;
        int32_t l_243 = 0x0B46675EL;
        int32_t l_244 = 7L;
        int32_t l_245 = 0x098E09D7L;
        int32_t l_246[6] = {(-2L),8L,(-2L),(-2L),8L,(-2L)};
        uint8_t l_263 = 6UL;
        uint32_t l_353 = 0x19DEDD14L;
        uint16_t *l_367[1];
        int i;
        for (i = 0; i < 2; i++)
            l_230[i] = (void*)0;
        for (i = 0; i < 1; i++)
            l_367[i] = &p_676->g_75;
        (*l_91) = p_78;
        if (l_93)
            break;
        if ((atomic_inc(&p_676->g_atomic_input[47 * get_linear_group_id() + 22]) == 4))
        { /* block id: 32 */
            int16_t l_94 = 1L;
            int8_t l_95 = 1L;
            uint64_t l_96[1][10][7] = {{{0xC1D26016E5DCA5B7L,18446744073709551615UL,0xBB0CEA4F543A9B16L,0x440AFAA93538B87BL,0xBB0CEA4F543A9B16L,18446744073709551615UL,0xC1D26016E5DCA5B7L},{0xC1D26016E5DCA5B7L,18446744073709551615UL,0xBB0CEA4F543A9B16L,0x440AFAA93538B87BL,0xBB0CEA4F543A9B16L,18446744073709551615UL,0xC1D26016E5DCA5B7L},{0xC1D26016E5DCA5B7L,18446744073709551615UL,0xBB0CEA4F543A9B16L,0x440AFAA93538B87BL,0xBB0CEA4F543A9B16L,18446744073709551615UL,0xC1D26016E5DCA5B7L},{0xC1D26016E5DCA5B7L,18446744073709551615UL,0xBB0CEA4F543A9B16L,0x440AFAA93538B87BL,0xBB0CEA4F543A9B16L,18446744073709551615UL,0xC1D26016E5DCA5B7L},{0xC1D26016E5DCA5B7L,18446744073709551615UL,0xBB0CEA4F543A9B16L,0x440AFAA93538B87BL,0xBB0CEA4F543A9B16L,18446744073709551615UL,0xC1D26016E5DCA5B7L},{0xC1D26016E5DCA5B7L,18446744073709551615UL,0xBB0CEA4F543A9B16L,0x440AFAA93538B87BL,0xBB0CEA4F543A9B16L,18446744073709551615UL,0xC1D26016E5DCA5B7L},{0xC1D26016E5DCA5B7L,18446744073709551615UL,0xBB0CEA4F543A9B16L,0x440AFAA93538B87BL,0xBB0CEA4F543A9B16L,18446744073709551615UL,0xC1D26016E5DCA5B7L},{0xC1D26016E5DCA5B7L,18446744073709551615UL,0xBB0CEA4F543A9B16L,0x440AFAA93538B87BL,0xBB0CEA4F543A9B16L,18446744073709551615UL,0xC1D26016E5DCA5B7L},{0xC1D26016E5DCA5B7L,18446744073709551615UL,0xBB0CEA4F543A9B16L,0x440AFAA93538B87BL,0xBB0CEA4F543A9B16L,18446744073709551615UL,0xC1D26016E5DCA5B7L},{0xC1D26016E5DCA5B7L,18446744073709551615UL,0xBB0CEA4F543A9B16L,0x440AFAA93538B87BL,0xBB0CEA4F543A9B16L,18446744073709551615UL,0xC1D26016E5DCA5B7L}}};
            uint32_t l_146 = 0x331A3B0DL;
            int32_t l_147 = 0x6AABCA9CL;
            int64_t l_148 = 0x4EDA5373E3C2ACCFL;
            uint32_t l_149[9] = {0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL};
            int i, j, k;
            l_96[0][0][0]--;
            for (l_94 = (-14); (l_94 <= 19); ++l_94)
            { /* block id: 36 */
                uint32_t l_101 = 4294967295UL;
                uint32_t l_102 = 0UL;
                int32_t l_104 = 0L;
                int32_t *l_103 = &l_104;
                int32_t *l_105 = (void*)0;
                int32_t *l_106 = &l_104;
                l_106 = (l_101 , (l_105 = (l_103 = (l_102 , l_103))));
                for (l_104 = 0; (l_104 <= 0); l_104 += 1)
                { /* block id: 42 */
                    int32_t l_107 = 0x596CDD17L;
                    for (l_107 = 0; (l_107 <= 0); l_107 += 1)
                    { /* block id: 45 */
                        int32_t l_108 = 1L;
                        uint32_t l_109 = 0xA68EB2A1L;
                        int32_t l_110 = 0x5CBD99A0L;
                        uint64_t l_111 = 3UL;
                        int16_t l_112 = 0x1412L;
                        uint8_t l_113 = 1UL;
                        struct S0 l_114 = {249UL,0xD3A0D674L,0x23298C05L,0x577EE7E4L,1UL};
                        struct S0 l_115 = {0x71L,0x13FE16D8L,2L,4294967288UL,0x41E781FFL};
                        struct S0 l_116[4][10][1] = {{{{0x14L,4294967294UL,-10L,0x63C109E6L,0xFEE3948BL}},{{0x14L,4294967294UL,-10L,0x63C109E6L,0xFEE3948BL}},{{0x14L,4294967294UL,-10L,0x63C109E6L,0xFEE3948BL}},{{0x14L,4294967294UL,-10L,0x63C109E6L,0xFEE3948BL}},{{0x14L,4294967294UL,-10L,0x63C109E6L,0xFEE3948BL}},{{0x14L,4294967294UL,-10L,0x63C109E6L,0xFEE3948BL}},{{0x14L,4294967294UL,-10L,0x63C109E6L,0xFEE3948BL}},{{0x14L,4294967294UL,-10L,0x63C109E6L,0xFEE3948BL}},{{0x14L,4294967294UL,-10L,0x63C109E6L,0xFEE3948BL}},{{0x14L,4294967294UL,-10L,0x63C109E6L,0xFEE3948BL}}},{{{0x14L,4294967294UL,-10L,0x63C109E6L,0xFEE3948BL}},{{0x14L,4294967294UL,-10L,0x63C109E6L,0xFEE3948BL}},{{0x14L,4294967294UL,-10L,0x63C109E6L,0xFEE3948BL}},{{0x14L,4294967294UL,-10L,0x63C109E6L,0xFEE3948BL}},{{0x14L,4294967294UL,-10L,0x63C109E6L,0xFEE3948BL}},{{0x14L,4294967294UL,-10L,0x63C109E6L,0xFEE3948BL}},{{0x14L,4294967294UL,-10L,0x63C109E6L,0xFEE3948BL}},{{0x14L,4294967294UL,-10L,0x63C109E6L,0xFEE3948BL}},{{0x14L,4294967294UL,-10L,0x63C109E6L,0xFEE3948BL}},{{0x14L,4294967294UL,-10L,0x63C109E6L,0xFEE3948BL}}},{{{0x14L,4294967294UL,-10L,0x63C109E6L,0xFEE3948BL}},{{0x14L,4294967294UL,-10L,0x63C109E6L,0xFEE3948BL}},{{0x14L,4294967294UL,-10L,0x63C109E6L,0xFEE3948BL}},{{0x14L,4294967294UL,-10L,0x63C109E6L,0xFEE3948BL}},{{0x14L,4294967294UL,-10L,0x63C109E6L,0xFEE3948BL}},{{0x14L,4294967294UL,-10L,0x63C109E6L,0xFEE3948BL}},{{0x14L,4294967294UL,-10L,0x63C109E6L,0xFEE3948BL}},{{0x14L,4294967294UL,-10L,0x63C109E6L,0xFEE3948BL}},{{0x14L,4294967294UL,-10L,0x63C109E6L,0xFEE3948BL}},{{0x14L,4294967294UL,-10L,0x63C109E6L,0xFEE3948BL}}},{{{0x14L,4294967294UL,-10L,0x63C109E6L,0xFEE3948BL}},{{0x14L,4294967294UL,-10L,0x63C109E6L,0xFEE3948BL}},{{0x14L,4294967294UL,-10L,0x63C109E6L,0xFEE3948BL}},{{0x14L,4294967294UL,-10L,0x63C109E6L,0xFEE3948BL}},{{0x14L,4294967294UL,-10L,0x63C109E6L,0xFEE3948BL}},{{0x14L,4294967294UL,-10L,0x63C109E6L,0xFEE3948BL}},{{0x14L,4294967294UL,-10L,0x63C109E6L,0xFEE3948BL}},{{0x14L,4294967294UL,-10L,0x63C109E6L,0xFEE3948BL}},{{0x14L,4294967294UL,-10L,0x63C109E6L,0xFEE3948BL}},{{0x14L,4294967294UL,-10L,0x63C109E6L,0xFEE3948BL}}}};
                        int i, j, k;
                        l_111 ^= (l_110 = (l_108 , (l_109 , (FAKE_DIVERGE(p_676->global_0_offset, get_global_id(0), 10) , (l_108 ^= l_110)))));
                        l_116[0][0][0] = (((l_112 = 18446744073709551615UL) , l_113) , (l_115 = (FAKE_DIVERGE(p_676->global_1_offset, get_global_id(1), 10) , l_114)));
                    }
                }
            }
            for (l_95 = 0; (l_95 >= 0); l_95 -= 1)
            { /* block id: 57 */
                int32_t l_117 = 0L;
                for (l_117 = 0; (l_117 >= 0); l_117 -= 1)
                { /* block id: 60 */
                    int32_t l_118 = 1L;
                    int32_t l_124 = 1L;
                    int8_t l_125[5][10] = {{(-1L),0x52L,0x26L,(-1L),0x51L,0x26L,0x26L,0x51L,(-1L),0x26L},{(-1L),0x52L,0x26L,(-1L),0x51L,0x26L,0x26L,0x51L,(-1L),0x26L},{(-1L),0x52L,0x26L,(-1L),0x51L,0x26L,0x26L,0x51L,(-1L),0x26L},{(-1L),0x52L,0x26L,(-1L),0x51L,0x26L,0x26L,0x51L,(-1L),0x26L},{(-1L),0x52L,0x26L,(-1L),0x51L,0x26L,0x26L,0x51L,(-1L),0x26L}};
                    int i, j;
                    for (l_118 = 3; (l_118 >= 0); l_118 -= 1)
                    { /* block id: 63 */
                        uint8_t l_119 = 255UL;
                        uint64_t l_122 = 0x01B9F6C78DD8142BL;
                        uint64_t *l_121[1];
                        uint64_t **l_120 = &l_121[0];
                        int i, j, k;
                        for (i = 0; i < 1; i++)
                            l_121[i] = &l_122;
                        l_119 |= l_96[l_117][l_118][l_95];
                        l_120 = (void*)0;
                    }
                    for (l_118 = 0; (l_118 <= 0); l_118 += 1)
                    { /* block id: 69 */
                        int32_t *l_123 = (void*)0;
                        int i;
                        l_123 = &p_676->g_92[(l_95 + 1)];
                    }
                    if (((l_124 &= p_676->g_92[(l_95 + 1)]) , l_125[2][9]))
                    { /* block id: 73 */
                        uint32_t l_126[10] = {1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL};
                        int32_t l_130 = 0x721EC415L;
                        int32_t *l_129 = &l_130;
                        int32_t *l_131 = &l_130;
                        int64_t l_134 = 7L;
                        int64_t *l_133 = &l_134;
                        int64_t **l_132 = &l_133;
                        int64_t **l_135[6] = {&l_133,&l_133,&l_133,&l_133,&l_133,&l_133};
                        uint64_t *l_137 = (void*)0;
                        uint64_t **l_136 = &l_137;
                        uint64_t **l_138 = &l_137;
                        int i;
                        l_126[2]--;
                        l_131 = l_129;
                        l_135[0] = l_132;
                        l_138 = l_136;
                    }
                    else
                    { /* block id: 78 */
                        uint32_t l_139 = 4294967295UL;
                        uint64_t l_140 = 0x5C20038BE24636B9L;
                        uint16_t l_141 = 0UL;
                        l_118 &= ((l_140 = l_139) , l_141);
                    }
                }
                for (l_117 = 0; (l_117 >= 0); l_117 -= 1)
                { /* block id: 85 */
                    int32_t l_142[4] = {(-1L),(-1L),(-1L),(-1L)};
                    int i;
                    for (l_142[3] = 0; (l_142[3] <= 0); l_142[3] += 1)
                    { /* block id: 88 */
                        int8_t l_143 = 6L;
                        uint32_t l_144 = 1UL;
                        uint64_t l_145[10][4][6] = {{{0x0B4DDF18D0889286L,18446744073709551613UL,18446744073709551615UL,0x2447E691350E2895L,18446744073709551613UL,0x2447E691350E2895L},{0x0B4DDF18D0889286L,18446744073709551613UL,18446744073709551615UL,0x2447E691350E2895L,18446744073709551613UL,0x2447E691350E2895L},{0x0B4DDF18D0889286L,18446744073709551613UL,18446744073709551615UL,0x2447E691350E2895L,18446744073709551613UL,0x2447E691350E2895L},{0x0B4DDF18D0889286L,18446744073709551613UL,18446744073709551615UL,0x2447E691350E2895L,18446744073709551613UL,0x2447E691350E2895L}},{{0x0B4DDF18D0889286L,18446744073709551613UL,18446744073709551615UL,0x2447E691350E2895L,18446744073709551613UL,0x2447E691350E2895L},{0x0B4DDF18D0889286L,18446744073709551613UL,18446744073709551615UL,0x2447E691350E2895L,18446744073709551613UL,0x2447E691350E2895L},{0x0B4DDF18D0889286L,18446744073709551613UL,18446744073709551615UL,0x2447E691350E2895L,18446744073709551613UL,0x2447E691350E2895L},{0x0B4DDF18D0889286L,18446744073709551613UL,18446744073709551615UL,0x2447E691350E2895L,18446744073709551613UL,0x2447E691350E2895L}},{{0x0B4DDF18D0889286L,18446744073709551613UL,18446744073709551615UL,0x2447E691350E2895L,18446744073709551613UL,0x2447E691350E2895L},{0x0B4DDF18D0889286L,18446744073709551613UL,18446744073709551615UL,0x2447E691350E2895L,18446744073709551613UL,0x2447E691350E2895L},{0x0B4DDF18D0889286L,18446744073709551613UL,18446744073709551615UL,0x2447E691350E2895L,18446744073709551613UL,0x2447E691350E2895L},{0x0B4DDF18D0889286L,18446744073709551613UL,18446744073709551615UL,0x2447E691350E2895L,18446744073709551613UL,0x2447E691350E2895L}},{{0x0B4DDF18D0889286L,18446744073709551613UL,18446744073709551615UL,0x2447E691350E2895L,18446744073709551613UL,0x2447E691350E2895L},{0x0B4DDF18D0889286L,18446744073709551613UL,18446744073709551615UL,0x2447E691350E2895L,18446744073709551613UL,0x2447E691350E2895L},{0x0B4DDF18D0889286L,18446744073709551613UL,18446744073709551615UL,0x2447E691350E2895L,18446744073709551613UL,0x2447E691350E2895L},{0x0B4DDF18D0889286L,18446744073709551613UL,18446744073709551615UL,0x2447E691350E2895L,18446744073709551613UL,0x2447E691350E2895L}},{{0x0B4DDF18D0889286L,18446744073709551613UL,18446744073709551615UL,0x2447E691350E2895L,18446744073709551613UL,0x2447E691350E2895L},{0x0B4DDF18D0889286L,18446744073709551613UL,18446744073709551615UL,0x2447E691350E2895L,18446744073709551613UL,0x2447E691350E2895L},{0x0B4DDF18D0889286L,18446744073709551613UL,18446744073709551615UL,0x2447E691350E2895L,18446744073709551613UL,0x2447E691350E2895L},{0x0B4DDF18D0889286L,18446744073709551613UL,18446744073709551615UL,0x2447E691350E2895L,18446744073709551613UL,0x2447E691350E2895L}},{{0x0B4DDF18D0889286L,18446744073709551613UL,18446744073709551615UL,0x2447E691350E2895L,18446744073709551613UL,0x2447E691350E2895L},{0x0B4DDF18D0889286L,18446744073709551613UL,18446744073709551615UL,0x2447E691350E2895L,18446744073709551613UL,0x2447E691350E2895L},{0x0B4DDF18D0889286L,18446744073709551613UL,18446744073709551615UL,0x2447E691350E2895L,18446744073709551613UL,0x2447E691350E2895L},{0x0B4DDF18D0889286L,18446744073709551613UL,18446744073709551615UL,0x2447E691350E2895L,18446744073709551613UL,0x2447E691350E2895L}},{{0x0B4DDF18D0889286L,18446744073709551613UL,18446744073709551615UL,0x2447E691350E2895L,18446744073709551613UL,0x2447E691350E2895L},{0x0B4DDF18D0889286L,18446744073709551613UL,18446744073709551615UL,0x2447E691350E2895L,18446744073709551613UL,0x2447E691350E2895L},{0x0B4DDF18D0889286L,18446744073709551613UL,18446744073709551615UL,0x2447E691350E2895L,18446744073709551613UL,0x2447E691350E2895L},{0x0B4DDF18D0889286L,18446744073709551613UL,18446744073709551615UL,0x2447E691350E2895L,18446744073709551613UL,0x2447E691350E2895L}},{{0x0B4DDF18D0889286L,18446744073709551613UL,18446744073709551615UL,0x2447E691350E2895L,18446744073709551613UL,0x2447E691350E2895L},{0x0B4DDF18D0889286L,18446744073709551613UL,18446744073709551615UL,0x2447E691350E2895L,18446744073709551613UL,0x2447E691350E2895L},{0x0B4DDF18D0889286L,18446744073709551613UL,18446744073709551615UL,0x2447E691350E2895L,18446744073709551613UL,0x2447E691350E2895L},{0x0B4DDF18D0889286L,18446744073709551613UL,18446744073709551615UL,0x2447E691350E2895L,18446744073709551613UL,0x2447E691350E2895L}},{{0x0B4DDF18D0889286L,18446744073709551613UL,18446744073709551615UL,0x2447E691350E2895L,18446744073709551613UL,0x2447E691350E2895L},{0x0B4DDF18D0889286L,18446744073709551613UL,18446744073709551615UL,0x2447E691350E2895L,18446744073709551613UL,0x2447E691350E2895L},{0x0B4DDF18D0889286L,18446744073709551613UL,18446744073709551615UL,0x2447E691350E2895L,18446744073709551613UL,0x2447E691350E2895L},{0x0B4DDF18D0889286L,18446744073709551613UL,18446744073709551615UL,0x2447E691350E2895L,18446744073709551613UL,0x2447E691350E2895L}},{{0x0B4DDF18D0889286L,18446744073709551613UL,18446744073709551615UL,0x2447E691350E2895L,18446744073709551613UL,0x2447E691350E2895L},{0x0B4DDF18D0889286L,18446744073709551613UL,18446744073709551615UL,0x2447E691350E2895L,18446744073709551613UL,0x2447E691350E2895L},{0x0B4DDF18D0889286L,18446744073709551613UL,18446744073709551615UL,0x2447E691350E2895L,18446744073709551613UL,0x2447E691350E2895L},{0x0B4DDF18D0889286L,18446744073709551613UL,18446744073709551615UL,0x2447E691350E2895L,18446744073709551613UL,0x2447E691350E2895L}}};
                        int i, j, k;
                        l_143 |= l_96[l_117][(l_117 + 9)][(l_117 + 2)];
                        l_145[3][3][5] ^= l_144;
                    }
                }
            }
            l_149[8] = (l_148 |= (l_146 , l_147));
            unsigned int result = 0;
            result += l_94;
            result += l_95;
            int l_96_i0, l_96_i1, l_96_i2;
            for (l_96_i0 = 0; l_96_i0 < 1; l_96_i0++) {
                for (l_96_i1 = 0; l_96_i1 < 10; l_96_i1++) {
                    for (l_96_i2 = 0; l_96_i2 < 7; l_96_i2++) {
                        result += l_96[l_96_i0][l_96_i1][l_96_i2];
                    }
                }
            }
            result += l_146;
            result += l_147;
            result += l_148;
            int l_149_i0;
            for (l_149_i0 = 0; l_149_i0 < 9; l_149_i0++) {
                result += l_149[l_149_i0];
            }
            atomic_add(&p_676->g_special_values[47 * get_linear_group_id() + 22], result);
        }
        else
        { /* block id: 96 */
            (1 + 1);
        }
        if ((safe_div_func_uint64_t_u_u((p_78 = (((l_152 ^ (((*l_153)++) < ((safe_div_func_uint16_t_u_u(((65532UL < ((((p_79 = p_676->g_92[2]) && (safe_rshift_func_int8_t_s_u(l_161, p_78))) & 0x62A8138454CA82F6L) >= ((((p_676->g_164 = 5L) > (p_78 != (safe_div_func_int64_t_s_s(0x7FFD43EB6FFE17F8L, 0x5D3BA113A2588FA3L)))) && p_676->g_75) & p_676->g_75))) , 3UL), p_676->g_92[0])) & (*l_91)))) == 0x8E1DL) < 65535UL)), 0xE5EACDDF55BC5006L)))
        { /* block id: 103 */
            int32_t *l_175 = &p_676->g_43;
            int32_t **l_176 = &l_175;
            int32_t **l_178 = &l_177;
            int32_t *l_179 = &l_93;
            int64_t *l_190 = &p_676->g_191[0][3];
            uint16_t **l_229 = (void*)0;
            int8_t *l_237 = &p_676->g_238;
            int32_t l_242 = 0L;
            int32_t l_249 = 0x2159D9BBL;
            int32_t l_254 = 0x50FC66B7L;
            int32_t l_257[3];
            int8_t l_259[5] = {0L,0L,0L,0L,0L};
            int i;
            for (i = 0; i < 3; i++)
                l_257[i] = 1L;
            if ((p_676->g_192 ^= (((((safe_sub_func_uint32_t_u_u(p_676->g_92[0], (!(((safe_add_func_int64_t_s_s(((*l_190) = (safe_sub_func_int8_t_s_s((((*l_176) = l_175) == ((*l_178) = l_177)), ((0UL || ((*l_179) |= p_79)) < (safe_add_func_uint64_t_u_u((p_676->g_168 = (safe_sub_func_int8_t_s_s((p_79 >= (safe_mul_func_int8_t_s_s(p_676->g_21, (safe_div_func_int64_t_s_s(p_79, (safe_mod_func_int32_t_s_s(0x3CE37CC8L, 0xBFF400B9L))))))), 0x54L))), 0x44683A1E9C1B1B48L)))))), l_152)) , 0xA4FB260FA43BB0A9L) ^ 0UL)))) || 0UL) >= p_676->g_27) || (*l_91)) , l_152)))
            { /* block id: 110 */
                struct S0 *l_194 = &l_193;
                (*l_194) = l_193;
                (*l_179) = p_676->g_43;
            }
            else
            { /* block id: 113 */
                (*l_91) = p_78;
                if ((*l_179))
                    break;
            }
            if ((((safe_mod_func_int16_t_s_s((safe_lshift_func_uint8_t_u_u((safe_mod_func_uint16_t_u_u((p_676->g_21 & p_78), (safe_add_func_int8_t_s_s(((*l_237) = (safe_lshift_func_int8_t_s_u((safe_rshift_func_int8_t_s_u((!((safe_add_func_int32_t_s_s((safe_mul_func_uint16_t_u_u(l_193.f1, (safe_mul_func_uint16_t_u_u((((safe_add_func_int32_t_s_s(((safe_lshift_func_uint8_t_u_u((safe_rshift_func_int16_t_s_u((safe_mul_func_int16_t_s_s(p_676->g_92[0], ((((((safe_lshift_func_int16_t_s_u(((safe_rshift_func_uint8_t_u_s(((0xF279C46AL ^ ((safe_mul_func_int16_t_s_s((safe_mod_func_uint16_t_u_u((((((*l_153) &= ((l_153 != (((((void*)0 == l_229) != ((*l_190) &= ((*l_179) , p_79))) == 0xBBL) , (void*)0)) && p_79)) == l_93) , l_230[1]) != p_676->g_231), (*l_91))), p_676->g_27)) < 0x43E9C7F93EFDE07DL)) , p_79), p_78)) && 0x5758L), p_676->g_92[0])) , l_234[2]) != (void*)0) & p_79) > p_79) <= FAKE_DIVERGE(p_676->local_1_offset, get_local_id(1), 10)))), 5)), 0)) || 0UL), p_676->g_27)) && FAKE_DIVERGE(p_676->global_2_offset, get_global_id(2), 10)) && 0UL), 0x4093L)))), 4294967294UL)) > p_79)), p_676->g_233[5][0])), 1))), 0x47L)))), 2)), 1L)) , l_239) & 65535UL))
            { /* block id: 120 */
                int32_t *l_240[7][8][2] = {{{&l_93,(void*)0},{&l_93,(void*)0},{&l_93,(void*)0},{&l_93,(void*)0},{&l_93,(void*)0},{&l_93,(void*)0},{&l_93,(void*)0},{&l_93,(void*)0}},{{&l_93,(void*)0},{&l_93,(void*)0},{&l_93,(void*)0},{&l_93,(void*)0},{&l_93,(void*)0},{&l_93,(void*)0},{&l_93,(void*)0},{&l_93,(void*)0}},{{&l_93,(void*)0},{&l_93,(void*)0},{&l_93,(void*)0},{&l_93,(void*)0},{&l_93,(void*)0},{&l_93,(void*)0},{&l_93,(void*)0},{&l_93,(void*)0}},{{&l_93,(void*)0},{&l_93,(void*)0},{&l_93,(void*)0},{&l_93,(void*)0},{&l_93,(void*)0},{&l_93,(void*)0},{&l_93,(void*)0},{&l_93,(void*)0}},{{&l_93,(void*)0},{&l_93,(void*)0},{&l_93,(void*)0},{&l_93,(void*)0},{&l_93,(void*)0},{&l_93,(void*)0},{&l_93,(void*)0},{&l_93,(void*)0}},{{&l_93,(void*)0},{&l_93,(void*)0},{&l_93,(void*)0},{&l_93,(void*)0},{&l_93,(void*)0},{&l_93,(void*)0},{&l_93,(void*)0},{&l_93,(void*)0}},{{&l_93,(void*)0},{&l_93,(void*)0},{&l_93,(void*)0},{&l_93,(void*)0},{&l_93,(void*)0},{&l_93,(void*)0},{&l_93,(void*)0},{&l_93,(void*)0}}};
                int i, j, k;
                --l_260;
            }
            else
            { /* block id: 122 */
                if (p_676->g_191[3][1])
                    break;
            }
            if (p_79)
                continue;
            if (l_263)
                continue;
        }
        else
        { /* block id: 127 */
            int32_t *l_264 = (void*)0;
            int32_t *l_265 = (void*)0;
            int32_t *l_266 = &l_256;
            int32_t *l_267 = &l_253;
            int32_t *l_268 = (void*)0;
            int32_t *l_269 = &p_676->g_192;
            int32_t l_270 = 4L;
            int32_t *l_271 = &l_248;
            int32_t *l_272 = &l_270;
            int32_t *l_273 = &l_250;
            int32_t *l_274 = &l_255;
            int32_t l_275 = 0x4BFD598AL;
            int32_t *l_276 = &l_275;
            int32_t *l_277 = (void*)0;
            int32_t *l_278 = &l_253;
            int32_t *l_279[8] = {&l_252,&l_252,&l_252,&l_252,&l_252,&l_252,&l_252,&l_252};
            int32_t **l_330 = &l_177;
            union U2 *l_340 = &p_676->g_341;
            int32_t l_344 = (-8L);
            int i;
            p_676->g_285--;
            for (l_161 = 12; (l_161 > 53); l_161 = safe_add_func_uint32_t_u_u(l_161, 7))
            { /* block id: 131 */
                uint16_t *l_296 = &p_676->g_285;
                int32_t l_339 = (-5L);
                if (((*l_273) ^= ((*l_278) || (((safe_div_func_int64_t_s_s((safe_mul_func_int16_t_s_s((safe_mod_func_uint16_t_u_u((((0x6A12L < (--(*l_296))) == (p_676->g_92[0] ^ p_78)) <= (p_676->g_191[0][3] & (safe_add_func_int16_t_s_s(((FAKE_DIVERGE(p_676->global_2_offset, get_global_id(2), 10) , (((0xA2F6E2ABL < p_676->g_92[0]) , &p_676->g_154) == (void*)0)) <= 1UL), (*l_272))))), p_78)), 0L)), (*l_91))) >= p_676->g_233[0][0]) != p_79))))
                { /* block id: 134 */
                    uint8_t l_324[3];
                    int32_t *l_332 = &l_281;
                    int32_t **l_333 = (void*)0;
                    int32_t **l_334 = (void*)0;
                    int32_t **l_335 = &l_273;
                    int i;
                    for (i = 0; i < 3; i++)
                        l_324[i] = 0xC9L;
                    if ((atomic_inc(&p_676->l_atomic_input[28]) == 4))
                    { /* block id: 136 */
                        uint32_t l_301 = 0x1FEE5F72L;
                        struct S0 l_302[4][1][6] = {{{{0x2CL,0x10D86140L,0L,4294967295UL,0x10BEDAFEL},{7UL,1UL,7L,0UL,0x8051BDCDL},{0xFAL,0xFB6A5159L,0L,6UL,0xD98FD706L},{248UL,4294967294UL,-1L,4294967295UL,0xA47113E9L},{0xFAL,0xFB6A5159L,0L,6UL,0xD98FD706L},{7UL,1UL,7L,0UL,0x8051BDCDL}}},{{{0x2CL,0x10D86140L,0L,4294967295UL,0x10BEDAFEL},{7UL,1UL,7L,0UL,0x8051BDCDL},{0xFAL,0xFB6A5159L,0L,6UL,0xD98FD706L},{248UL,4294967294UL,-1L,4294967295UL,0xA47113E9L},{0xFAL,0xFB6A5159L,0L,6UL,0xD98FD706L},{7UL,1UL,7L,0UL,0x8051BDCDL}}},{{{0x2CL,0x10D86140L,0L,4294967295UL,0x10BEDAFEL},{7UL,1UL,7L,0UL,0x8051BDCDL},{0xFAL,0xFB6A5159L,0L,6UL,0xD98FD706L},{248UL,4294967294UL,-1L,4294967295UL,0xA47113E9L},{0xFAL,0xFB6A5159L,0L,6UL,0xD98FD706L},{7UL,1UL,7L,0UL,0x8051BDCDL}}},{{{0x2CL,0x10D86140L,0L,4294967295UL,0x10BEDAFEL},{7UL,1UL,7L,0UL,0x8051BDCDL},{0xFAL,0xFB6A5159L,0L,6UL,0xD98FD706L},{248UL,4294967294UL,-1L,4294967295UL,0xA47113E9L},{0xFAL,0xFB6A5159L,0L,6UL,0xD98FD706L},{7UL,1UL,7L,0UL,0x8051BDCDL}}}};
                        struct S0 l_303 = {0x19L,4294967290UL,0L,0x5C79E42DL,0x4BD7E9FFL};
                        struct S0 l_304 = {0UL,0x51DE7662L,-2L,0xF634CE5AL,1UL};
                        int32_t l_306 = 0x49091035L;
                        int32_t *l_305 = &l_306;
                        int32_t *l_307[8][5][3] = {{{&l_306,&l_306,(void*)0},{&l_306,&l_306,(void*)0},{&l_306,&l_306,(void*)0},{&l_306,&l_306,(void*)0},{&l_306,&l_306,(void*)0}},{{&l_306,&l_306,(void*)0},{&l_306,&l_306,(void*)0},{&l_306,&l_306,(void*)0},{&l_306,&l_306,(void*)0},{&l_306,&l_306,(void*)0}},{{&l_306,&l_306,(void*)0},{&l_306,&l_306,(void*)0},{&l_306,&l_306,(void*)0},{&l_306,&l_306,(void*)0},{&l_306,&l_306,(void*)0}},{{&l_306,&l_306,(void*)0},{&l_306,&l_306,(void*)0},{&l_306,&l_306,(void*)0},{&l_306,&l_306,(void*)0},{&l_306,&l_306,(void*)0}},{{&l_306,&l_306,(void*)0},{&l_306,&l_306,(void*)0},{&l_306,&l_306,(void*)0},{&l_306,&l_306,(void*)0},{&l_306,&l_306,(void*)0}},{{&l_306,&l_306,(void*)0},{&l_306,&l_306,(void*)0},{&l_306,&l_306,(void*)0},{&l_306,&l_306,(void*)0},{&l_306,&l_306,(void*)0}},{{&l_306,&l_306,(void*)0},{&l_306,&l_306,(void*)0},{&l_306,&l_306,(void*)0},{&l_306,&l_306,(void*)0},{&l_306,&l_306,(void*)0}},{{&l_306,&l_306,(void*)0},{&l_306,&l_306,(void*)0},{&l_306,&l_306,(void*)0},{&l_306,&l_306,(void*)0},{&l_306,&l_306,(void*)0}}};
                        int16_t l_308 = 1L;
                        struct S0 *l_309 = (void*)0;
                        int32_t l_310[5][10][4] = {{{0x64219A54L,0x5C092EF3L,1L,(-2L)},{0x64219A54L,0x5C092EF3L,1L,(-2L)},{0x64219A54L,0x5C092EF3L,1L,(-2L)},{0x64219A54L,0x5C092EF3L,1L,(-2L)},{0x64219A54L,0x5C092EF3L,1L,(-2L)},{0x64219A54L,0x5C092EF3L,1L,(-2L)},{0x64219A54L,0x5C092EF3L,1L,(-2L)},{0x64219A54L,0x5C092EF3L,1L,(-2L)},{0x64219A54L,0x5C092EF3L,1L,(-2L)},{0x64219A54L,0x5C092EF3L,1L,(-2L)}},{{0x64219A54L,0x5C092EF3L,1L,(-2L)},{0x64219A54L,0x5C092EF3L,1L,(-2L)},{0x64219A54L,0x5C092EF3L,1L,(-2L)},{0x64219A54L,0x5C092EF3L,1L,(-2L)},{0x64219A54L,0x5C092EF3L,1L,(-2L)},{0x64219A54L,0x5C092EF3L,1L,(-2L)},{0x64219A54L,0x5C092EF3L,1L,(-2L)},{0x64219A54L,0x5C092EF3L,1L,(-2L)},{0x64219A54L,0x5C092EF3L,1L,(-2L)},{0x64219A54L,0x5C092EF3L,1L,(-2L)}},{{0x64219A54L,0x5C092EF3L,1L,(-2L)},{0x64219A54L,0x5C092EF3L,1L,(-2L)},{0x64219A54L,0x5C092EF3L,1L,(-2L)},{0x64219A54L,0x5C092EF3L,1L,(-2L)},{0x64219A54L,0x5C092EF3L,1L,(-2L)},{0x64219A54L,0x5C092EF3L,1L,(-2L)},{0x64219A54L,0x5C092EF3L,1L,(-2L)},{0x64219A54L,0x5C092EF3L,1L,(-2L)},{0x64219A54L,0x5C092EF3L,1L,(-2L)},{0x64219A54L,0x5C092EF3L,1L,(-2L)}},{{0x64219A54L,0x5C092EF3L,1L,(-2L)},{0x64219A54L,0x5C092EF3L,1L,(-2L)},{0x64219A54L,0x5C092EF3L,1L,(-2L)},{0x64219A54L,0x5C092EF3L,1L,(-2L)},{0x64219A54L,0x5C092EF3L,1L,(-2L)},{0x64219A54L,0x5C092EF3L,1L,(-2L)},{0x64219A54L,0x5C092EF3L,1L,(-2L)},{0x64219A54L,0x5C092EF3L,1L,(-2L)},{0x64219A54L,0x5C092EF3L,1L,(-2L)},{0x64219A54L,0x5C092EF3L,1L,(-2L)}},{{0x64219A54L,0x5C092EF3L,1L,(-2L)},{0x64219A54L,0x5C092EF3L,1L,(-2L)},{0x64219A54L,0x5C092EF3L,1L,(-2L)},{0x64219A54L,0x5C092EF3L,1L,(-2L)},{0x64219A54L,0x5C092EF3L,1L,(-2L)},{0x64219A54L,0x5C092EF3L,1L,(-2L)},{0x64219A54L,0x5C092EF3L,1L,(-2L)},{0x64219A54L,0x5C092EF3L,1L,(-2L)},{0x64219A54L,0x5C092EF3L,1L,(-2L)},{0x64219A54L,0x5C092EF3L,1L,(-2L)}}};
                        int32_t l_311 = 0x039E12FEL;
                        int8_t l_312 = 0x7BL;
                        int32_t l_313[5];
                        int16_t l_314 = (-1L);
                        uint8_t l_315 = 0UL;
                        int i, j, k;
                        for (i = 0; i < 5; i++)
                            l_313[i] = 0x7C05AC7BL;
                        l_304 = (l_303 = ((l_301 = 0x2113A691L) , l_302[0][0][4]));
                        l_307[1][1][1] = l_305;
                        l_309 = (l_308 , (void*)0);
                        ++l_315;
                        unsigned int result = 0;
                        result += l_301;
                        int l_302_i0, l_302_i1, l_302_i2;
                        for (l_302_i0 = 0; l_302_i0 < 4; l_302_i0++) {
                            for (l_302_i1 = 0; l_302_i1 < 1; l_302_i1++) {
                                for (l_302_i2 = 0; l_302_i2 < 6; l_302_i2++) {
                                    result += l_302[l_302_i0][l_302_i1][l_302_i2].f0;
                                    result += l_302[l_302_i0][l_302_i1][l_302_i2].f1;
                                    result += l_302[l_302_i0][l_302_i1][l_302_i2].f2;
                                    result += l_302[l_302_i0][l_302_i1][l_302_i2].f3;
                                    result += l_302[l_302_i0][l_302_i1][l_302_i2].f4;
                                }
                            }
                        }
                        result += l_303.f0;
                        result += l_303.f1;
                        result += l_303.f2;
                        result += l_303.f3;
                        result += l_303.f4;
                        result += l_304.f0;
                        result += l_304.f1;
                        result += l_304.f2;
                        result += l_304.f3;
                        result += l_304.f4;
                        result += l_306;
                        result += l_308;
                        int l_310_i0, l_310_i1, l_310_i2;
                        for (l_310_i0 = 0; l_310_i0 < 5; l_310_i0++) {
                            for (l_310_i1 = 0; l_310_i1 < 10; l_310_i1++) {
                                for (l_310_i2 = 0; l_310_i2 < 4; l_310_i2++) {
                                    result += l_310[l_310_i0][l_310_i1][l_310_i2];
                                }
                            }
                        }
                        result += l_311;
                        result += l_312;
                        int l_313_i0;
                        for (l_313_i0 = 0; l_313_i0 < 5; l_313_i0++) {
                            result += l_313[l_313_i0];
                        }
                        result += l_314;
                        result += l_315;
                        atomic_add(&p_676->l_special_values[28], result);
                    }
                    else
                    { /* block id: 143 */
                        (1 + 1);
                    }
                    if ((safe_add_func_uint8_t_u_u(((*l_272) , (p_676->g_233[6][0] != (safe_div_func_int16_t_s_s(((p_676->g_285 == (p_79 == p_79)) > 0x23043293D730E397L), (safe_add_func_uint16_t_u_u(0xFA12L, ((p_676->g_21 && l_324[2]) || (**p_676->g_231)))))))), p_676->g_21)))
                    { /* block id: 146 */
                        volatile int32_t * volatile **l_328 = (void*)0;
                        volatile int32_t * volatile **l_329 = &p_676->g_325;
                        (*l_329) = p_676->g_325;
                    }
                    else
                    { /* block id: 148 */
                        int32_t ***l_331 = &l_330;
                        p_676->g_192 ^= l_283;
                        (*l_331) = l_330;
                        if (p_676->g_233[1][0])
                            break;
                    }
                    (*l_335) = l_332;
                    for (l_255 = 0; (l_255 <= 0); l_255 += 1)
                    { /* block id: 156 */
                        int i, j;
                        if (p_676->g_233[(l_255 + 7)][l_255])
                            break;
                        l_246[(l_255 + 2)] |= 0L;
                    }
                }
                else
                { /* block id: 160 */
                    int32_t *l_338 = &l_258;
                    union U2 **l_342 = &l_340;
                    if (p_79)
                        break;
                    for (p_676->g_154 = 0; (p_676->g_154 != 7); ++p_676->g_154)
                    { /* block id: 164 */
                        l_279[0] = l_338;
                    }
                    for (l_243 = 0; (l_243 >= 0); l_243 -= 1)
                    { /* block id: 169 */
                        int i, j;
                        l_339 ^= p_676->g_233[(l_243 + 3)][l_243];
                        if (p_676->g_233[(l_243 + 6)][l_243])
                            break;
                    }
                    (*l_342) = l_340;
                }
                return p_79;
            }
            for (l_284 = 1; (l_284 <= 4); l_284 += 1)
            { /* block id: 179 */
                int32_t l_343 = (-1L);
                int32_t l_345 = 0x0D783281L;
                int32_t l_346 = 0x4C9FEDD7L;
                int32_t l_347 = 2L;
                int32_t l_348 = (-2L);
                int32_t l_349 = 0x496C0E56L;
                int32_t l_350 = (-2L);
                int32_t l_351 = 0x20C79D9AL;
                int32_t l_352[9];
                uint16_t **l_368 = (void*)0;
                uint16_t **l_369[4][9][7] = {{{&l_367[0],&l_367[0],&l_367[0],&l_367[0],(void*)0,(void*)0,&l_367[0]},{&l_367[0],&l_367[0],&l_367[0],&l_367[0],(void*)0,(void*)0,&l_367[0]},{&l_367[0],&l_367[0],&l_367[0],&l_367[0],(void*)0,(void*)0,&l_367[0]},{&l_367[0],&l_367[0],&l_367[0],&l_367[0],(void*)0,(void*)0,&l_367[0]},{&l_367[0],&l_367[0],&l_367[0],&l_367[0],(void*)0,(void*)0,&l_367[0]},{&l_367[0],&l_367[0],&l_367[0],&l_367[0],(void*)0,(void*)0,&l_367[0]},{&l_367[0],&l_367[0],&l_367[0],&l_367[0],(void*)0,(void*)0,&l_367[0]},{&l_367[0],&l_367[0],&l_367[0],&l_367[0],(void*)0,(void*)0,&l_367[0]},{&l_367[0],&l_367[0],&l_367[0],&l_367[0],(void*)0,(void*)0,&l_367[0]}},{{&l_367[0],&l_367[0],&l_367[0],&l_367[0],(void*)0,(void*)0,&l_367[0]},{&l_367[0],&l_367[0],&l_367[0],&l_367[0],(void*)0,(void*)0,&l_367[0]},{&l_367[0],&l_367[0],&l_367[0],&l_367[0],(void*)0,(void*)0,&l_367[0]},{&l_367[0],&l_367[0],&l_367[0],&l_367[0],(void*)0,(void*)0,&l_367[0]},{&l_367[0],&l_367[0],&l_367[0],&l_367[0],(void*)0,(void*)0,&l_367[0]},{&l_367[0],&l_367[0],&l_367[0],&l_367[0],(void*)0,(void*)0,&l_367[0]},{&l_367[0],&l_367[0],&l_367[0],&l_367[0],(void*)0,(void*)0,&l_367[0]},{&l_367[0],&l_367[0],&l_367[0],&l_367[0],(void*)0,(void*)0,&l_367[0]},{&l_367[0],&l_367[0],&l_367[0],&l_367[0],(void*)0,(void*)0,&l_367[0]}},{{&l_367[0],&l_367[0],&l_367[0],&l_367[0],(void*)0,(void*)0,&l_367[0]},{&l_367[0],&l_367[0],&l_367[0],&l_367[0],(void*)0,(void*)0,&l_367[0]},{&l_367[0],&l_367[0],&l_367[0],&l_367[0],(void*)0,(void*)0,&l_367[0]},{&l_367[0],&l_367[0],&l_367[0],&l_367[0],(void*)0,(void*)0,&l_367[0]},{&l_367[0],&l_367[0],&l_367[0],&l_367[0],(void*)0,(void*)0,&l_367[0]},{&l_367[0],&l_367[0],&l_367[0],&l_367[0],(void*)0,(void*)0,&l_367[0]},{&l_367[0],&l_367[0],&l_367[0],&l_367[0],(void*)0,(void*)0,&l_367[0]},{&l_367[0],&l_367[0],&l_367[0],&l_367[0],(void*)0,(void*)0,&l_367[0]},{&l_367[0],&l_367[0],&l_367[0],&l_367[0],(void*)0,(void*)0,&l_367[0]}},{{&l_367[0],&l_367[0],&l_367[0],&l_367[0],(void*)0,(void*)0,&l_367[0]},{&l_367[0],&l_367[0],&l_367[0],&l_367[0],(void*)0,(void*)0,&l_367[0]},{&l_367[0],&l_367[0],&l_367[0],&l_367[0],(void*)0,(void*)0,&l_367[0]},{&l_367[0],&l_367[0],&l_367[0],&l_367[0],(void*)0,(void*)0,&l_367[0]},{&l_367[0],&l_367[0],&l_367[0],&l_367[0],(void*)0,(void*)0,&l_367[0]},{&l_367[0],&l_367[0],&l_367[0],&l_367[0],(void*)0,(void*)0,&l_367[0]},{&l_367[0],&l_367[0],&l_367[0],&l_367[0],(void*)0,(void*)0,&l_367[0]},{&l_367[0],&l_367[0],&l_367[0],&l_367[0],(void*)0,(void*)0,&l_367[0]},{&l_367[0],&l_367[0],&l_367[0],&l_367[0],(void*)0,(void*)0,&l_367[0]}}};
                uint16_t *l_371 = &p_676->g_285;
                int i, j, k;
                for (i = 0; i < 9; i++)
                    l_352[i] = 8L;
                --l_353;
                p_676->g_192 &= (+((*l_91) = (safe_unary_minus_func_int32_t_s(((*l_273) = (p_79 | (safe_mul_func_int16_t_s_s((safe_mod_func_uint64_t_u_u(((p_676->g_168 | ((((*p_676->g_232) ^= 0x4C3D62FD9E34060DL) == (safe_sub_func_uint16_t_u_u((&l_278 != (((0x2B7B50C5A400F266L ^ (safe_sub_func_int16_t_s_s((safe_lshift_func_int16_t_s_u(((((l_370 = l_367[0]) == (l_371 = &p_676->g_75)) & FAKE_DIVERGE(p_676->local_0_offset, get_local_id(0), 10)) != (p_79 , (safe_lshift_func_uint16_t_u_s(((safe_sub_func_int16_t_s_s(p_79, p_78)) , FAKE_DIVERGE(p_676->group_1_offset, get_group_id(1), 10)), 10)))), 0)), 1UL))) | p_676->g_164) , &l_271)), p_676->g_154))) || (*l_91))) && (**p_676->g_231)), p_676->g_191[0][3])), p_676->g_238))))))));
                for (l_152 = 1; (l_152 <= 5); l_152 += 1)
                { /* block id: 189 */
                    int i;
                    l_246[(l_284 + 1)] |= l_343;
                    if (p_79)
                        continue;
                }
                if (l_349)
                    break;
            }
        }
    }
    return l_93;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global int *sequence_input) {
    int i, j;
    __local volatile uint32_t l_atomic_input[47];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 47; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[47];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 47; i++)
            l_special_values[i] = 0;
    struct S4 c_677;
    struct S4* p_676 = &c_677;
    struct S4 c_678 = {
        0x0331L, // p_676->g_12
        250UL, // p_676->g_21
        0x4779D44FL, // p_676->g_23
        (void*)0, // p_676->g_24
        0x3637B304L, // p_676->g_27
        0x4B79A97AL, // p_676->g_43
        &p_676->g_23, // p_676->g_51
        {{18446744073709551615UL,18446744073709551615UL,18446744073709551615UL}}, // p_676->g_63
        1L, // p_676->g_71
        (-1L), // p_676->g_72
        65527UL, // p_676->g_75
        {(-1L),(-1L),(-1L),(-1L),(-1L)}, // p_676->g_92
        0x696941D4L, // p_676->g_154
        2L, // p_676->g_164
        9UL, // p_676->g_168
        {{0L,0x005C0E4766B9EE8EL,0x005C0E4766B9EE8EL,0L,0x13C712B6B1F519B7L,(-7L)},{0L,0x005C0E4766B9EE8EL,0x005C0E4766B9EE8EL,0L,0x13C712B6B1F519B7L,(-7L)},{0L,0x005C0E4766B9EE8EL,0x005C0E4766B9EE8EL,0L,0x13C712B6B1F519B7L,(-7L)},{0L,0x005C0E4766B9EE8EL,0x005C0E4766B9EE8EL,0L,0x13C712B6B1F519B7L,(-7L)},{0L,0x005C0E4766B9EE8EL,0x005C0E4766B9EE8EL,0L,0x13C712B6B1F519B7L,(-7L)},{0L,0x005C0E4766B9EE8EL,0x005C0E4766B9EE8EL,0L,0x13C712B6B1F519B7L,(-7L)},{0L,0x005C0E4766B9EE8EL,0x005C0E4766B9EE8EL,0L,0x13C712B6B1F519B7L,(-7L)}}, // p_676->g_191
        0x53CF241CL, // p_676->g_192
        {{0L},{0L},{0L},{0L},{0L},{0L},{0L},{0L},{0L}}, // p_676->g_233
        &p_676->g_233[1][0], // p_676->g_232
        &p_676->g_232, // p_676->g_231
        0x5E3F2DEF7D714BD8L, // p_676->g_236
        (-9L), // p_676->g_238
        3UL, // p_676->g_285
        (-2L), // p_676->g_327
        &p_676->g_327, // p_676->g_326
        &p_676->g_326, // p_676->g_325
        {0UL}, // p_676->g_341
        0x97L, // p_676->g_385
        &p_676->g_75, // p_676->g_397
        {{&p_676->g_397},{&p_676->g_397},{&p_676->g_397},{&p_676->g_397},{&p_676->g_397},{&p_676->g_397},{&p_676->g_397},{&p_676->g_397},{&p_676->g_397},{&p_676->g_397}}, // p_676->g_396
        {0xC2L,0xDDC43A81L,0x4C5373F0L,0xC6BAD358L,4294967290UL}, // p_676->g_398
        0x8DL, // p_676->g_408
        {1UL}, // p_676->g_414
        1UL, // p_676->g_509
        {0x477E6080L}, // p_676->g_519
        0x480774A5L, // p_676->g_523
        {4294967287UL}, // p_676->g_547
        {0x616796DBL}, // p_676->g_593
        1UL, // p_676->g_664
        &p_676->g_23, // p_676->g_672
        &p_676->g_672, // p_676->g_671
        {0x94C21D6AL,0x67E4CA41B8758EFAL,1L,5UL,0x302BL}, // p_676->g_675
        sequence_input[get_global_id(0)], // p_676->global_0_offset
        sequence_input[get_global_id(1)], // p_676->global_1_offset
        sequence_input[get_global_id(2)], // p_676->global_2_offset
        sequence_input[get_local_id(0)], // p_676->local_0_offset
        sequence_input[get_local_id(1)], // p_676->local_1_offset
        sequence_input[get_local_id(2)], // p_676->local_2_offset
        sequence_input[get_group_id(0)], // p_676->group_0_offset
        sequence_input[get_group_id(1)], // p_676->group_1_offset
        sequence_input[get_group_id(2)], // p_676->group_2_offset
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
    };
    c_677 = c_678;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_676);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_676->g_12, "p_676->g_12", print_hash_value);
    transparent_crc(p_676->g_21, "p_676->g_21", print_hash_value);
    transparent_crc(p_676->g_23, "p_676->g_23", print_hash_value);
    transparent_crc(p_676->g_27, "p_676->g_27", print_hash_value);
    transparent_crc(p_676->g_43, "p_676->g_43", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 3; j++)
        {
            transparent_crc(p_676->g_63[i][j], "p_676->g_63[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_676->g_71, "p_676->g_71", print_hash_value);
    transparent_crc(p_676->g_72, "p_676->g_72", print_hash_value);
    transparent_crc(p_676->g_75, "p_676->g_75", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_676->g_92[i], "p_676->g_92[i]", print_hash_value);

    }
    transparent_crc(p_676->g_154, "p_676->g_154", print_hash_value);
    transparent_crc(p_676->g_164, "p_676->g_164", print_hash_value);
    transparent_crc(p_676->g_168, "p_676->g_168", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 6; j++)
        {
            transparent_crc(p_676->g_191[i][j], "p_676->g_191[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_676->g_192, "p_676->g_192", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 1; j++)
        {
            transparent_crc(p_676->g_233[i][j], "p_676->g_233[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_676->g_236, "p_676->g_236", print_hash_value);
    transparent_crc(p_676->g_238, "p_676->g_238", print_hash_value);
    transparent_crc(p_676->g_285, "p_676->g_285", print_hash_value);
    transparent_crc(p_676->g_327, "p_676->g_327", print_hash_value);
    transparent_crc(p_676->g_341.f0, "p_676->g_341.f0", print_hash_value);
    transparent_crc(p_676->g_385, "p_676->g_385", print_hash_value);
    transparent_crc(p_676->g_398.f0, "p_676->g_398.f0", print_hash_value);
    transparent_crc(p_676->g_398.f1, "p_676->g_398.f1", print_hash_value);
    transparent_crc(p_676->g_398.f2, "p_676->g_398.f2", print_hash_value);
    transparent_crc(p_676->g_398.f3, "p_676->g_398.f3", print_hash_value);
    transparent_crc(p_676->g_398.f4, "p_676->g_398.f4", print_hash_value);
    transparent_crc(p_676->g_408, "p_676->g_408", print_hash_value);
    transparent_crc(p_676->g_414.f0, "p_676->g_414.f0", print_hash_value);
    transparent_crc(p_676->g_509, "p_676->g_509", print_hash_value);
    transparent_crc(p_676->g_519.f0, "p_676->g_519.f0", print_hash_value);
    transparent_crc(p_676->g_523, "p_676->g_523", print_hash_value);
    transparent_crc(p_676->g_547.f0, "p_676->g_547.f0", print_hash_value);
    transparent_crc(p_676->g_593.f0, "p_676->g_593.f0", print_hash_value);
    transparent_crc(p_676->g_664, "p_676->g_664", print_hash_value);
    transparent_crc(p_676->g_675.f0, "p_676->g_675.f0", print_hash_value);
    transparent_crc(p_676->g_675.f1, "p_676->g_675.f1", print_hash_value);
    transparent_crc(p_676->g_675.f2, "p_676->g_675.f2", print_hash_value);
    transparent_crc(p_676->g_675.f3, "p_676->g_675.f3", print_hash_value);
    transparent_crc(p_676->g_675.f4, "p_676->g_675.f4", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 47; i++)
            transparent_crc(p_676->g_special_values[i + 47 * get_linear_group_id()], "p_676->g_special_values[i + 47 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 47; i++)
            transparent_crc(p_676->l_special_values[i], "p_676->l_special_values[i]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
