// ---fake_divergence ---inter_thread_comm -g 17,91,3 -l 17,7,1
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
{69,93,60,61,94,85,92,43,83,16,88,41,64,73,39,11,74,45,66,68,71,21,111,18,80,70,91,79,30,25,5,46,97,12,59,32,3,67,90,26,23,50,63,56,102,38,53,105,55,113,76,75,31,72,0,51,99,108,62,6,35,109,10,19,52,36,104,54,20,4,100,95,7,110,118,44,27,96,101,13,57,103,77,40,2,24,117,42,22,33,87,9,49,15,8,17,1,116,47,89,37,34,114,28,82,112,84,81,14,106,107,58,29,98,78,115,48,65,86}, // permutation 0
{34,107,7,37,28,25,83,117,43,58,108,33,69,113,76,55,71,20,19,61,8,93,48,98,39,96,68,51,21,114,97,77,106,79,102,72,44,99,80,2,59,115,112,75,10,22,82,57,24,91,78,15,65,73,32,53,47,81,87,23,56,41,101,49,13,63,67,74,103,36,12,29,11,62,26,116,35,40,90,88,86,6,94,85,27,3,16,54,31,42,4,118,66,92,110,104,111,14,9,30,18,17,89,84,70,105,46,45,64,0,5,100,50,52,109,95,1,60,38}, // permutation 1
{82,72,35,55,106,99,43,29,16,51,97,8,37,67,19,89,14,63,74,28,102,71,96,2,33,12,13,9,25,24,1,0,94,44,109,88,4,90,70,77,86,83,79,26,31,73,92,105,80,6,50,69,107,54,57,66,32,93,104,115,56,36,64,118,78,20,30,42,65,53,108,41,17,98,111,47,48,59,49,7,22,75,101,58,40,62,21,18,87,113,39,76,60,52,3,91,68,112,46,5,45,95,117,11,116,10,23,61,81,110,84,15,85,27,103,34,38,100,114}, // permutation 2
{79,45,65,116,55,91,15,33,64,108,81,85,99,54,98,17,82,94,50,10,34,90,104,16,76,60,0,110,49,14,36,71,74,114,8,20,5,61,96,4,89,22,84,2,37,105,32,39,87,13,12,107,26,115,27,43,78,58,80,68,109,6,29,101,97,42,56,35,106,48,93,41,30,67,103,72,62,18,38,102,73,1,3,53,70,57,88,31,77,75,25,86,24,23,47,51,63,117,44,19,9,69,11,40,66,83,95,113,100,112,7,92,118,21,52,28,111,59,46}, // permutation 3
{68,104,74,71,23,18,42,24,93,112,46,90,66,111,3,25,62,26,84,81,105,33,78,16,118,49,70,52,31,99,22,13,12,96,34,73,108,80,57,94,38,9,5,75,54,4,56,17,69,48,30,86,29,47,35,115,89,50,76,14,44,114,92,10,85,116,2,107,63,6,27,0,8,45,55,87,100,97,67,103,32,117,83,61,19,43,91,58,101,20,40,37,11,64,15,53,39,28,36,110,95,113,109,21,79,106,102,41,72,88,60,65,82,7,1,98,51,59,77}, // permutation 4
{60,90,93,52,92,51,2,1,64,21,20,9,67,10,116,63,59,56,66,76,28,30,69,77,19,7,40,24,26,17,89,100,74,41,97,102,73,70,71,29,104,46,4,55,75,42,78,11,13,50,44,48,96,103,99,86,37,31,32,57,39,6,49,114,34,81,88,95,84,38,16,22,91,47,36,14,101,113,12,65,45,58,115,80,109,106,108,94,117,15,3,18,43,82,68,118,53,0,8,61,33,85,54,62,107,83,5,27,87,110,79,98,72,105,25,23,112,111,35}, // permutation 5
{2,63,104,69,11,117,39,100,76,99,45,51,49,53,68,24,111,97,52,73,27,31,84,113,70,95,36,85,21,23,109,75,88,40,60,59,101,57,47,80,17,44,62,61,108,20,118,29,71,110,56,90,93,114,7,67,115,65,81,116,105,78,77,4,64,112,89,18,16,6,82,46,92,12,25,38,32,42,86,8,26,37,30,106,66,79,0,1,74,72,83,15,13,10,107,9,5,33,87,22,94,43,35,41,91,50,55,98,48,96,3,103,58,28,102,19,34,14,54}, // permutation 6
{6,0,14,69,85,64,41,5,96,35,81,49,63,90,58,50,66,4,117,18,118,82,93,15,62,72,28,80,78,54,19,89,12,68,7,77,91,24,20,95,94,113,74,75,17,33,52,51,27,37,92,110,44,13,83,67,100,57,59,88,23,47,111,114,55,60,45,103,101,56,25,9,3,61,107,108,112,84,30,116,46,102,26,76,11,109,79,70,8,31,99,40,1,38,10,97,39,73,53,105,42,104,98,2,65,22,36,71,87,32,106,21,86,43,16,34,29,48,115}, // permutation 7
{115,8,28,116,78,52,114,113,48,109,47,102,56,76,3,101,21,106,19,46,97,12,90,43,83,68,71,104,88,37,50,14,53,55,1,24,66,72,99,13,84,31,35,65,70,20,85,100,36,108,15,34,67,93,82,74,54,98,27,57,79,17,58,26,77,91,41,89,7,95,23,62,61,39,6,10,51,60,25,96,32,86,64,49,5,110,11,112,42,118,9,80,105,81,29,40,117,63,2,45,87,92,111,107,38,44,94,18,75,4,30,33,73,0,22,59,103,16,69}, // permutation 8
{53,5,95,61,91,37,114,118,52,22,82,76,88,115,0,11,113,38,15,39,108,28,90,54,27,106,68,105,85,73,77,103,57,41,75,60,16,48,23,25,93,101,1,20,79,98,9,3,89,65,12,110,18,31,66,51,50,111,6,32,69,109,100,56,72,107,36,34,84,59,33,13,62,97,94,8,46,112,43,102,71,116,17,87,10,81,24,74,42,45,40,44,92,7,26,2,58,47,30,67,104,117,78,63,49,55,80,21,19,64,96,70,29,35,83,4,99,14,86} // permutation 9
};

// Seed: 52

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   uint32_t  f0;
   volatile uint32_t  f1;
   uint16_t  f2;
   int64_t  f3;
};

union U1 {
   volatile int32_t  f0;
   volatile uint32_t  f1;
};

union U2 {
   volatile int8_t  f0;
   int32_t  f1;
   int32_t  f2;
   volatile uint32_t  f3;
   volatile int64_t  f4;
};

union U3 {
   uint16_t  f0;
   struct S0  f1;
};

struct S4 {
    int32_t g_3;
    int32_t *g_2;
    uint64_t g_51;
    int32_t g_53;
    volatile struct S0 g_56[1][9];
    int16_t g_76;
    int8_t g_77;
    uint8_t g_80[8];
    int32_t g_86;
    volatile uint64_t g_98;
    int32_t ** volatile g_103;
    int32_t **g_106;
    int32_t *** volatile g_105;
    volatile struct S0 g_119;
    volatile union U1 g_127;
    int32_t *g_133;
    int32_t **g_132;
    struct S0 g_138;
    struct S0 * volatile g_139;
    volatile int32_t g_142;
    volatile uint8_t g_143;
    int16_t g_179;
    union U3 g_184;
    volatile int16_t g_201[6][4];
    volatile int64_t g_203;
    volatile uint8_t g_205;
    struct S0 g_209;
    int32_t g_212;
    volatile uint64_t g_214;
    volatile union U2 g_228[6][2];
    uint32_t g_231;
    volatile uint32_t g_246;
    int32_t g_254[9][6][4];
    int16_t g_258;
    volatile uint8_t g_259;
    volatile uint16_t g_280;
    union U3 *g_288;
    union U3 ** volatile g_287;
    int32_t g_321[9];
    uint8_t g_341;
    volatile int16_t *g_345;
    volatile int16_t * volatile *g_344[1][5][6];
    volatile int16_t * volatile ** volatile g_346;
    volatile int16_t * volatile ** volatile g_347;
    union U1 g_368;
    union U1 *g_370;
    union U1 ** volatile g_369;
    volatile union U2 * volatile g_377;
    volatile union U2 * volatile *g_376[8][4];
    union U2 g_380;
    volatile int8_t g_392[6][4][2];
    uint64_t g_394;
    struct S0 g_399;
    union U3 ** volatile g_442;
    volatile union U2 g_448[4];
    struct S0 g_462;
    union U1 g_485;
    volatile uint32_t g_497;
    struct S0 *g_502;
    struct S0 ** volatile g_501;
    volatile int32_t g_503;
    volatile uint8_t g_574;
    volatile int64_t *g_598;
    int32_t g_609[10];
    uint16_t g_616;
    volatile struct S0 g_641;
    volatile struct S0 g_643;
    union U1 ** volatile g_665;
    int8_t g_679[2][10][9];
    struct S0 g_681;
    struct S0 * volatile g_682;
    struct S0 g_686[8];
    struct S0 g_747;
    volatile struct S0 g_748;
    volatile struct S0 g_749;
    union U3 g_777;
    volatile union U3 g_783[7];
    struct S0 g_792;
    volatile union U3 g_806;
    struct S0 g_843;
    volatile uint32_t g_886;
    int32_t g_891;
    uint8_t g_910;
    volatile union U2 g_923;
    union U3 **g_926;
    volatile union U2 g_952;
    union U2 g_957;
    int32_t g_975[3];
    struct S0 g_990;
    uint32_t g_998;
    volatile int8_t g_1012;
    union U2 g_1029;
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
uint16_t  func_1(struct S4 * p_1036);
int32_t * func_5(int8_t  p_6, uint64_t  p_7, int64_t  p_8, int32_t * p_9, struct S4 * p_1036);
int8_t  func_10(uint32_t  p_11, struct S4 * p_1036);
int32_t * func_12(int32_t  p_13, int32_t  p_14, struct S4 * p_1036);
int8_t  func_15(uint32_t  p_16, int32_t * p_17, struct S4 * p_1036);
uint64_t  func_20(int32_t * p_21, struct S4 * p_1036);
int32_t * func_22(uint32_t  p_23, struct S4 * p_1036);
int64_t  func_25(int64_t  p_26, struct S4 * p_1036);
int32_t  func_28(int32_t  p_29, int32_t  p_30, int32_t ** p_31, int32_t * p_32, int32_t ** p_33, struct S4 * p_1036);
int8_t  func_34(int64_t  p_35, int32_t  p_36, struct S4 * p_1036);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1036->g_2 p_1036->l_comm_values p_1036->g_3 p_1036->g_138.f3 p_1036->g_143 p_1036->g_132 p_1036->g_133 p_1036->g_616 p_1036->g_77 p_1036->g_641 p_1036->g_462.f0 p_1036->g_399.f2 p_1036->g_665 p_1036->g_280 p_1036->g_209.f1 p_1036->g_598 p_1036->g_209.f3 p_1036->g_80 p_1036->g_56.f0 p_1036->g_679 p_1036->g_254 p_1036->g_681 p_1036->g_682 p_1036->g_103 p_1036->g_686 p_1036->g_184.f1.f0 p_1036->g_258 p_1036->g_51 p_1036->g_139 p_1036->g_138 p_1036->g_747 p_1036->g_748 p_1036->g_184.f0 p_1036->g_442 p_1036->g_288 p_1036->g_368.f0 p_1036->g_209.f0 p_1036->g_609 p_1036->g_783 p_1036->g_792 p_1036->g_806 p_1036->g_321 p_1036->g_341 p_1036->g_209.f2 p_1036->g_843 p_1036->g_231 p_1036->g_749.f1 p_1036->g_886 p_1036->g_891 p_1036->g_910 p_1036->g_923 p_1036->g_399.f1 p_1036->g_952 p_1036->g_394 p_1036->g_462.f2 p_1036->g_246 p_1036->g_990 p_1036->g_998 p_1036->g_957.f0 p_1036->g_53 p_1036->g_212 p_1036->g_184.f1.f3 p_1036->g_975
 * writes: p_1036->g_2 p_1036->g_3 p_1036->g_143 p_1036->g_643 p_1036->g_462.f0 p_1036->g_370 p_1036->g_51 p_1036->g_77 p_1036->g_679 p_1036->g_138 p_1036->g_179 p_1036->g_258 p_1036->g_462.f2 p_1036->g_184.f1.f0 p_1036->g_133 p_1036->g_749 p_1036->g_184.f0 p_1036->g_792 p_1036->g_127.f1 p_1036->g_209.f2 p_1036->g_616 p_1036->g_747.f3 p_1036->g_231 p_1036->g_843.f3 p_1036->g_886 p_1036->g_76 p_1036->g_910 p_1036->g_926 p_1036->g_394 p_1036->l_comm_values p_1036->g_comm_values p_1036->g_975 p_1036->g_399.f3 p_1036->g_777.f1 p_1036->g_998 p_1036->g_184.f1.f3
 */
uint16_t  func_1(struct S4 * p_1036)
{ /* block id: 4 */
    int32_t **l_4 = &p_1036->g_2;
    (*l_4) = p_1036->g_2;
    (*p_1036->g_132) = ((*l_4) = func_5(func_10(p_1036->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1036->tid, 119))], p_1036), p_1036->g_681.f2, p_1036->g_80[3], &p_1036->g_212, p_1036));
    for (p_1036->g_184.f1.f3 = (-1); (p_1036->g_184.f1.f3 >= 11); p_1036->g_184.f1.f3 = safe_add_func_int32_t_s_s(p_1036->g_184.f1.f3, 3))
    { /* block id: 525 */
        (*p_1036->g_133) = 1L;
        (*l_4) = (*l_4);
        if ((**l_4))
            continue;
    }
    return p_1036->g_975[0];
}


/* ------------------------------------------ */
/* 
 * reads : p_1036->g_747.f1 p_1036->g_681.f2 p_1036->g_53 p_1036->g_184.f0 p_1036->g_212 p_1036->g_2 p_1036->g_3 p_1036->g_103
 * writes: p_1036->g_138.f2 p_1036->g_184.f0 p_1036->g_3
 */
int32_t * func_5(int8_t  p_6, uint64_t  p_7, int64_t  p_8, int32_t * p_9, struct S4 * p_1036)
{ /* block id: 515 */
    uint16_t *l_1023 = &p_1036->g_138.f2;
    int32_t l_1026 = 0x03522490L;
    union U2 *l_1028 = &p_1036->g_1029;
    union U2 **l_1027 = &l_1028;
    uint16_t *l_1030 = &p_1036->g_184.f0;
    int64_t *l_1031 = (void*)0;
    int64_t l_1032 = 1L;
    uint32_t l_1033 = 6UL;
    (*p_1036->g_2) ^= (safe_sub_func_uint64_t_u_u((((p_1036->g_747.f1 ^ (safe_mul_func_uint16_t_u_u((safe_mul_func_uint16_t_u_u(0xF981L, ((*l_1023) = p_7))), p_1036->g_681.f2))) >= (((l_1032 |= (((1UL ^ p_1036->g_53) || 6UL) < ((safe_mul_func_uint16_t_u_u(l_1026, (((*l_1030) &= ((void*)0 != l_1027)) < p_8))) < 0UL))) >= 0x2FDDC64DD0F7490BL) && l_1033)) == (*p_9)), p_7));
    return (*p_1036->g_103);
}


/* ------------------------------------------ */
/* 
 * reads : p_1036->g_3 p_1036->g_2 p_1036->g_138.f3 p_1036->g_143 p_1036->g_132 p_1036->g_133 p_1036->g_616 p_1036->g_77 p_1036->g_641 p_1036->g_462.f0 p_1036->g_399.f2 p_1036->g_665 p_1036->g_280 p_1036->g_209.f1 p_1036->g_598 p_1036->g_209.f3 p_1036->g_80 p_1036->g_56.f0 p_1036->g_679 p_1036->g_254 p_1036->g_681 p_1036->g_682 p_1036->g_103 p_1036->g_686 p_1036->g_184.f1.f0 p_1036->g_258 p_1036->g_51 p_1036->g_139 p_1036->g_138 p_1036->g_747 p_1036->g_748 p_1036->g_184.f0 p_1036->g_442 p_1036->g_288 p_1036->g_368.f0 p_1036->g_209.f0 p_1036->g_609 p_1036->g_783 p_1036->g_792 p_1036->g_806 p_1036->g_321 p_1036->g_341 p_1036->g_209.f2 p_1036->g_843 p_1036->g_231 p_1036->g_749.f1 p_1036->g_886 p_1036->g_891 p_1036->g_910 p_1036->g_923 p_1036->g_399.f1 p_1036->g_952 p_1036->g_394 p_1036->g_462.f2 p_1036->g_246 p_1036->g_990 p_1036->g_998 p_1036->g_957.f0
 * writes: p_1036->g_3 p_1036->g_143 p_1036->g_643 p_1036->g_462.f0 p_1036->g_370 p_1036->g_51 p_1036->g_77 p_1036->g_679 p_1036->g_138 p_1036->g_179 p_1036->g_258 p_1036->g_462.f2 p_1036->g_184.f1.f0 p_1036->g_133 p_1036->g_749 p_1036->g_184.f0 p_1036->g_792 p_1036->g_127.f1 p_1036->g_209.f2 p_1036->g_616 p_1036->g_747.f3 p_1036->g_231 p_1036->g_843.f3 p_1036->g_886 p_1036->g_76 p_1036->g_910 p_1036->g_926 p_1036->g_394 p_1036->l_comm_values p_1036->g_comm_values p_1036->g_975 p_1036->g_399.f3 p_1036->g_777.f1 p_1036->g_998
 */
int8_t  func_10(uint32_t  p_11, struct S4 * p_1036)
{ /* block id: 6 */
    uint64_t l_24 = 18446744073709551607UL;
    int32_t **l_636 = &p_1036->g_133;
    int8_t *l_678 = &p_1036->g_679[1][1][0];
    int8_t *l_680 = &p_1036->g_77;
    int32_t *l_1002 = (void*)0;
    int32_t *l_1003 = (void*)0;
    int32_t *l_1004 = &p_1036->g_380.f1;
    int32_t l_1005[3][4] = {{1L,1L,1L,1L},{1L,1L,1L,1L},{1L,1L,1L,1L}};
    int32_t *l_1006 = &p_1036->g_3;
    int32_t *l_1007 = (void*)0;
    int32_t *l_1008 = &p_1036->g_891;
    int32_t *l_1009 = (void*)0;
    int32_t *l_1010[5];
    int32_t l_1011 = 0x4C17B5B7L;
    int32_t l_1013 = 0x425CCF24L;
    uint8_t l_1014 = 0x7EL;
    int i, j;
    for (i = 0; i < 5; i++)
        l_1010[i] = (void*)0;
    (*l_636) = func_12(((((*l_680) = ((*l_678) ^= func_15(((safe_mod_func_uint64_t_u_u(func_20(func_22((l_24 > func_25(l_24, p_1036)), p_1036), p_1036), (p_1036->g_616 ^ ((safe_sub_func_uint32_t_u_u((l_636 != &p_1036->g_133), (safe_mod_func_int64_t_s_s(((safe_add_func_uint8_t_u_u(p_11, p_11)) == p_1036->g_77), p_11)))) == 0xBD7FCAA7L)))) , FAKE_DIVERGE(p_1036->group_1_offset, get_group_id(1), 10)), (*l_636), p_1036))) == p_11) == 0L), p_1036->g_254[6][5][2], p_1036);
    --l_1014;
    return p_1036->g_957.f0;
}


/* ------------------------------------------ */
/* 
 * reads : p_1036->g_681 p_1036->g_682 p_1036->g_103 p_1036->g_2 p_1036->g_3 p_1036->g_686 p_1036->g_132 p_1036->g_139 p_1036->g_138 p_1036->g_77 p_1036->g_143 p_1036->g_133 p_1036->g_747 p_1036->g_748 p_1036->g_184.f0 p_1036->g_442 p_1036->g_288 p_1036->g_368.f0 p_1036->g_209.f0 p_1036->g_609 p_1036->g_783 p_1036->g_792 p_1036->g_806 p_1036->g_321 p_1036->g_399.f2 p_1036->g_341 p_1036->g_209.f2 p_1036->g_843 p_1036->g_616 p_1036->g_184.f1.f0 p_1036->g_209.f3 p_1036->g_749.f1 p_1036->g_258 p_1036->g_886 p_1036->g_231 p_1036->g_891 p_1036->g_910 p_1036->g_280 p_1036->g_923 p_1036->g_399.f1 p_1036->g_952 p_1036->g_394 p_1036->g_80 p_1036->g_462.f2 p_1036->g_246 p_1036->g_990 p_1036->g_998 p_1036->g_51 p_1036->g_462.f0
 * writes: p_1036->g_138 p_1036->g_3 p_1036->g_179 p_1036->g_258 p_1036->g_462.f2 p_1036->g_184.f1.f0 p_1036->g_51 p_1036->g_133 p_1036->g_143 p_1036->g_462.f0 p_1036->g_749 p_1036->g_184.f0 p_1036->g_792 p_1036->g_127.f1 p_1036->g_209.f2 p_1036->g_616 p_1036->g_747.f3 p_1036->g_231 p_1036->g_843.f3 p_1036->g_886 p_1036->g_76 p_1036->g_910 p_1036->g_926 p_1036->g_77 p_1036->g_394 p_1036->l_comm_values p_1036->g_comm_values p_1036->g_975 p_1036->g_399.f3 p_1036->g_777.f1 p_1036->g_998
 */
int32_t * func_12(int32_t  p_13, int32_t  p_14, struct S4 * p_1036)
{ /* block id: 317 */
    uint32_t l_683 = 0UL;
    int32_t ***l_689 = &p_1036->g_132;
    int16_t *l_690 = &p_1036->g_179;
    int16_t *l_691[2];
    uint32_t l_703 = 0xA6A34DE0L;
    int32_t l_704 = 0L;
    int32_t *l_727 = &p_1036->g_254[2][0][1];
    uint16_t l_830[4][8][6] = {{{65535UL,0UL,6UL,0xEBBDL,0UL,0UL},{65535UL,0UL,6UL,0xEBBDL,0UL,0UL},{65535UL,0UL,6UL,0xEBBDL,0UL,0UL},{65535UL,0UL,6UL,0xEBBDL,0UL,0UL},{65535UL,0UL,6UL,0xEBBDL,0UL,0UL},{65535UL,0UL,6UL,0xEBBDL,0UL,0UL},{65535UL,0UL,6UL,0xEBBDL,0UL,0UL},{65535UL,0UL,6UL,0xEBBDL,0UL,0UL}},{{65535UL,0UL,6UL,0xEBBDL,0UL,0UL},{65535UL,0UL,6UL,0xEBBDL,0UL,0UL},{65535UL,0UL,6UL,0xEBBDL,0UL,0UL},{65535UL,0UL,6UL,0xEBBDL,0UL,0UL},{65535UL,0UL,6UL,0xEBBDL,0UL,0UL},{65535UL,0UL,6UL,0xEBBDL,0UL,0UL},{65535UL,0UL,6UL,0xEBBDL,0UL,0UL},{65535UL,0UL,6UL,0xEBBDL,0UL,0UL}},{{65535UL,0UL,6UL,0xEBBDL,0UL,0UL},{65535UL,0UL,6UL,0xEBBDL,0UL,0UL},{65535UL,0UL,6UL,0xEBBDL,0UL,0UL},{65535UL,0UL,6UL,0xEBBDL,0UL,0UL},{65535UL,0UL,6UL,0xEBBDL,0UL,0UL},{65535UL,0UL,6UL,0xEBBDL,0UL,0UL},{65535UL,0UL,6UL,0xEBBDL,0UL,0UL},{65535UL,0UL,6UL,0xEBBDL,0UL,0UL}},{{65535UL,0UL,6UL,0xEBBDL,0UL,0UL},{65535UL,0UL,6UL,0xEBBDL,0UL,0UL},{65535UL,0UL,6UL,0xEBBDL,0UL,0UL},{65535UL,0UL,6UL,0xEBBDL,0UL,0UL},{65535UL,0UL,6UL,0xEBBDL,0UL,0UL},{65535UL,0UL,6UL,0xEBBDL,0UL,0UL},{65535UL,0UL,6UL,0xEBBDL,0UL,0UL},{65535UL,0UL,6UL,0xEBBDL,0UL,0UL}}};
    uint8_t l_840 = 255UL;
    int32_t l_885 = (-1L);
    int32_t l_907 = 4L;
    union U2 *l_956 = &p_1036->g_957;
    union U2 **l_955[7];
    int8_t l_992[10] = {0x18L,8L,0x18L,0x18L,8L,0x18L,0x18L,8L,0x18L,0x18L};
    int32_t l_995 = (-7L);
    int32_t l_996 = 5L;
    int32_t l_997 = 0x3F1DA29DL;
    int32_t *l_1001 = &l_885;
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_691[i] = &p_1036->g_258;
    for (i = 0; i < 7; i++)
        l_955[i] = &l_956;
lbl_978:
    (*p_1036->g_682) = p_1036->g_681;
    (**p_1036->g_103) ^= 0L;
    l_683++;
    if ((((p_1036->g_686[5] , (safe_rshift_func_int16_t_s_s(6L, 4))) < 0xB1L) == ((p_1036->g_258 = ((*l_690) = (l_689 != (void*)0))) <= ((safe_add_func_int16_t_s_s((l_704 &= (safe_add_func_uint64_t_u_u(0xDD4582B7FDB56B7FL, (safe_mod_func_int32_t_s_s((0x58AA6E1BL ^ ((safe_lshift_func_uint16_t_u_s((p_1036->g_462.f2 = 8UL), (safe_unary_minus_func_uint64_t_u((((safe_mod_func_int16_t_s_s(((p_13 == l_683) < l_703), 0xCD23L)) >= p_14) == l_683))))) | FAKE_DIVERGE(p_1036->group_2_offset, get_group_id(2), 10))), l_683))))), 0xEB3FL)) > p_14))))
    { /* block id: 325 */
        uint32_t l_714 = 0x4B81B67CL;
        uint32_t *l_736[10] = {&p_1036->g_231,&p_1036->g_231,&p_1036->g_231,&p_1036->g_231,&p_1036->g_231,&p_1036->g_231,&p_1036->g_231,&p_1036->g_231,&p_1036->g_231,&p_1036->g_231};
        struct S0 **l_738 = &p_1036->g_502;
        uint32_t l_759 = 0xFA1C7D16L;
        int32_t l_782 = 0x70A145A0L;
        int32_t l_833 = (-4L);
        int32_t *l_849 = &p_1036->g_380.f1;
        int32_t l_874 = 3L;
        int32_t l_915 = (-1L);
        int i;
        for (p_1036->g_184.f1.f0 = (-28); (p_1036->g_184.f1.f0 < 24); p_1036->g_184.f1.f0++)
        { /* block id: 328 */
            uint32_t l_721 = 0x111F9DD6L;
            int8_t l_722[9][10] = {{0x3BL,0x50L,0x3BL,0x3BL,0x50L,0x3BL,0x3BL,0x50L,0x3BL,0x3BL},{0x3BL,0x50L,0x3BL,0x3BL,0x50L,0x3BL,0x3BL,0x50L,0x3BL,0x3BL},{0x3BL,0x50L,0x3BL,0x3BL,0x50L,0x3BL,0x3BL,0x50L,0x3BL,0x3BL},{0x3BL,0x50L,0x3BL,0x3BL,0x50L,0x3BL,0x3BL,0x50L,0x3BL,0x3BL},{0x3BL,0x50L,0x3BL,0x3BL,0x50L,0x3BL,0x3BL,0x50L,0x3BL,0x3BL},{0x3BL,0x50L,0x3BL,0x3BL,0x50L,0x3BL,0x3BL,0x50L,0x3BL,0x3BL},{0x3BL,0x50L,0x3BL,0x3BL,0x50L,0x3BL,0x3BL,0x50L,0x3BL,0x3BL},{0x3BL,0x50L,0x3BL,0x3BL,0x50L,0x3BL,0x3BL,0x50L,0x3BL,0x3BL},{0x3BL,0x50L,0x3BL,0x3BL,0x50L,0x3BL,0x3BL,0x50L,0x3BL,0x3BL}};
            struct S0 **l_737 = &p_1036->g_502;
            int32_t *l_739 = (void*)0;
            int i, j;
            if (p_13)
                break;
            for (p_1036->g_258 = 0; (p_1036->g_258 == (-24)); p_1036->g_258--)
            { /* block id: 332 */
                int32_t l_712 = 2L;
                for (p_1036->g_51 = (-16); (p_1036->g_51 > 46); p_1036->g_51++)
                { /* block id: 335 */
                    int32_t *l_711[5][1] = {{&p_1036->g_212},{&p_1036->g_212},{&p_1036->g_212},{&p_1036->g_212},{&p_1036->g_212}};
                    int16_t l_713 = 0x181BL;
                    int i, j;
                    (*p_1036->g_132) = l_711[2][0];
                    l_714--;
                    for (l_713 = 0; (l_713 == (-9)); l_713 = safe_sub_func_uint16_t_u_u(l_713, 8))
                    { /* block id: 340 */
                        l_721 = (safe_add_func_uint16_t_u_u(0x672FL, p_13));
                        (*p_1036->g_2) |= l_722[5][7];
                    }
                }
                (**l_689) = ((safe_rshift_func_int8_t_s_u(((((safe_rshift_func_int8_t_s_u(l_714, 4)) , ((void*)0 != l_727)) , l_722[4][9]) , (safe_rshift_func_uint8_t_u_u(l_712, 3))), 5)) , func_22(((safe_add_func_int16_t_s_s((safe_add_func_uint8_t_u_u((((safe_mul_func_int16_t_s_s(((*p_1036->g_139) , (&p_1036->g_231 == (l_736[2] = &l_721))), (((4UL != 1L) == GROUP_DIVERGE(2, 1)) > p_14))) , l_737) != l_738), FAKE_DIVERGE(p_1036->group_0_offset, get_group_id(0), 10))), p_1036->g_77)) , 0xA8269020L), p_1036));
                return l_739;
            }
            (*p_1036->g_2) |= (GROUP_DIVERGE(1, 1) & ((*l_690) = (p_13 > (0x1C486C4AL == l_703))));
        }
        if ((l_689 == (void*)0))
        { /* block id: 352 */
            int64_t l_744 = 0x365339679DF99AD0L;
            union U3 *l_776 = &p_1036->g_777;
            uint64_t l_831[1];
            uint16_t l_835[9][6] = {{65535UL,65535UL,65535UL,65535UL,65535UL,65535UL},{65535UL,65535UL,65535UL,65535UL,65535UL,65535UL},{65535UL,65535UL,65535UL,65535UL,65535UL,65535UL},{65535UL,65535UL,65535UL,65535UL,65535UL,65535UL},{65535UL,65535UL,65535UL,65535UL,65535UL,65535UL},{65535UL,65535UL,65535UL,65535UL,65535UL,65535UL},{65535UL,65535UL,65535UL,65535UL,65535UL,65535UL},{65535UL,65535UL,65535UL,65535UL,65535UL,65535UL},{65535UL,65535UL,65535UL,65535UL,65535UL,65535UL}};
            int32_t l_838 = (-4L);
            int i, j;
            for (i = 0; i < 1; i++)
                l_831[i] = 3UL;
lbl_750:
            (**l_689) = l_736[4];
            for (p_1036->g_462.f0 = (-15); (p_1036->g_462.f0 >= 40); p_1036->g_462.f0++)
            { /* block id: 356 */
                uint64_t l_755 = 18446744073709551615UL;
                uint32_t *l_758 = &p_1036->g_231;
                union U3 *l_760 = (void*)0;
                int16_t l_761 = 0x0BC2L;
                uint16_t l_769 = 65529UL;
                int32_t *l_773 = &p_1036->g_321[2];
                p_1036->g_749 = ((l_744 || (!(safe_rshift_func_uint16_t_u_u((p_1036->g_747 , p_13), 2)))) , p_1036->g_748);
                if ((*p_1036->g_2))
                    continue;
                if (p_1036->g_138.f2)
                    goto lbl_750;
                if ((safe_mul_func_uint16_t_u_u(GROUP_DIVERGE(0, 1), (0UL > (safe_rshift_func_uint8_t_u_u((p_14 == (((p_13 == l_755) > p_13) || ((!((safe_mod_func_int16_t_s_s(((void*)0 == l_758), l_759)) == l_755)) || (*p_1036->g_2)))), 5))))))
                { /* block id: 360 */
                    uint8_t l_781 = 0xEEL;
                    struct S0 *l_793 = &p_1036->g_792;
                    (*p_1036->g_2) ^= ((l_760 == (void*)0) >= p_13);
                    if (l_761)
                        break;
                    for (p_1036->g_138.f0 = 0; (p_1036->g_138.f0 <= 3); p_1036->g_138.f0 += 1)
                    { /* block id: 365 */
                        int16_t l_762 = (-4L);
                        uint16_t *l_770 = &p_1036->g_184.f0;
                        int32_t *l_780 = &p_1036->g_321[3];
                        (*p_1036->g_2) |= (l_762 = p_14);
                        if (p_14)
                            break;
                        l_782 = ((safe_sub_func_uint16_t_u_u(((safe_mod_func_uint32_t_u_u(((safe_mod_func_int16_t_s_s(l_769, (++(*l_770)))) < (l_773 != &p_1036->g_321[3])), (safe_div_func_uint64_t_u_u(l_759, (p_13 , ((((((((*p_1036->g_442) == l_776) ^ ((safe_sub_func_int16_t_s_s(p_13, ((GROUP_DIVERGE(1, 1) < (&p_1036->g_321[7] != l_780)) == 4UL))) & (-1L))) > p_1036->g_747.f3) | 18446744073709551607UL) | 0xBAL) && p_1036->g_368.f0) & p_1036->g_209.f0)))))) != p_1036->g_747.f3), l_781)) <= p_1036->g_609[6]);
                        (*p_1036->g_2) = (p_1036->g_783[2] , (safe_sub_func_int8_t_s_s((3UL != p_1036->g_748.f3), (((0x48L ^ (((safe_rshift_func_int16_t_s_s(((((safe_mul_func_int16_t_s_s((safe_lshift_func_int8_t_s_u(((249UL == p_1036->g_686[5].f3) || 65535UL), p_13)), l_755)) >= (-8L)) , (void*)0) == (void*)0), 0)) , (-2L)) && l_744)) , l_769) , p_14))));
                    }
                    (*l_793) = p_1036->g_792;
                }
                else
                { /* block id: 374 */
                    return (*p_1036->g_103);
                }
            }
            for (p_13 = 0; (p_13 >= (-18)); p_13 = safe_sub_func_int64_t_s_s(p_13, 6))
            { /* block id: 380 */
                uint32_t l_807[6][8][5] = {{{0x751B887DL,0x005EB1CEL,1UL,1UL,4294967294UL},{0x751B887DL,0x005EB1CEL,1UL,1UL,4294967294UL},{0x751B887DL,0x005EB1CEL,1UL,1UL,4294967294UL},{0x751B887DL,0x005EB1CEL,1UL,1UL,4294967294UL},{0x751B887DL,0x005EB1CEL,1UL,1UL,4294967294UL},{0x751B887DL,0x005EB1CEL,1UL,1UL,4294967294UL},{0x751B887DL,0x005EB1CEL,1UL,1UL,4294967294UL},{0x751B887DL,0x005EB1CEL,1UL,1UL,4294967294UL}},{{0x751B887DL,0x005EB1CEL,1UL,1UL,4294967294UL},{0x751B887DL,0x005EB1CEL,1UL,1UL,4294967294UL},{0x751B887DL,0x005EB1CEL,1UL,1UL,4294967294UL},{0x751B887DL,0x005EB1CEL,1UL,1UL,4294967294UL},{0x751B887DL,0x005EB1CEL,1UL,1UL,4294967294UL},{0x751B887DL,0x005EB1CEL,1UL,1UL,4294967294UL},{0x751B887DL,0x005EB1CEL,1UL,1UL,4294967294UL},{0x751B887DL,0x005EB1CEL,1UL,1UL,4294967294UL}},{{0x751B887DL,0x005EB1CEL,1UL,1UL,4294967294UL},{0x751B887DL,0x005EB1CEL,1UL,1UL,4294967294UL},{0x751B887DL,0x005EB1CEL,1UL,1UL,4294967294UL},{0x751B887DL,0x005EB1CEL,1UL,1UL,4294967294UL},{0x751B887DL,0x005EB1CEL,1UL,1UL,4294967294UL},{0x751B887DL,0x005EB1CEL,1UL,1UL,4294967294UL},{0x751B887DL,0x005EB1CEL,1UL,1UL,4294967294UL},{0x751B887DL,0x005EB1CEL,1UL,1UL,4294967294UL}},{{0x751B887DL,0x005EB1CEL,1UL,1UL,4294967294UL},{0x751B887DL,0x005EB1CEL,1UL,1UL,4294967294UL},{0x751B887DL,0x005EB1CEL,1UL,1UL,4294967294UL},{0x751B887DL,0x005EB1CEL,1UL,1UL,4294967294UL},{0x751B887DL,0x005EB1CEL,1UL,1UL,4294967294UL},{0x751B887DL,0x005EB1CEL,1UL,1UL,4294967294UL},{0x751B887DL,0x005EB1CEL,1UL,1UL,4294967294UL},{0x751B887DL,0x005EB1CEL,1UL,1UL,4294967294UL}},{{0x751B887DL,0x005EB1CEL,1UL,1UL,4294967294UL},{0x751B887DL,0x005EB1CEL,1UL,1UL,4294967294UL},{0x751B887DL,0x005EB1CEL,1UL,1UL,4294967294UL},{0x751B887DL,0x005EB1CEL,1UL,1UL,4294967294UL},{0x751B887DL,0x005EB1CEL,1UL,1UL,4294967294UL},{0x751B887DL,0x005EB1CEL,1UL,1UL,4294967294UL},{0x751B887DL,0x005EB1CEL,1UL,1UL,4294967294UL},{0x751B887DL,0x005EB1CEL,1UL,1UL,4294967294UL}},{{0x751B887DL,0x005EB1CEL,1UL,1UL,4294967294UL},{0x751B887DL,0x005EB1CEL,1UL,1UL,4294967294UL},{0x751B887DL,0x005EB1CEL,1UL,1UL,4294967294UL},{0x751B887DL,0x005EB1CEL,1UL,1UL,4294967294UL},{0x751B887DL,0x005EB1CEL,1UL,1UL,4294967294UL},{0x751B887DL,0x005EB1CEL,1UL,1UL,4294967294UL},{0x751B887DL,0x005EB1CEL,1UL,1UL,4294967294UL},{0x751B887DL,0x005EB1CEL,1UL,1UL,4294967294UL}}};
                int32_t l_832[1];
                int i, j, k;
                for (i = 0; i < 1; i++)
                    l_832[i] = 0L;
                for (l_782 = 0; (l_782 <= (-21)); l_782 = safe_sub_func_int8_t_s_s(l_782, 8))
                { /* block id: 383 */
                    int32_t **l_811 = &l_727;
                    int32_t l_834 = (-9L);
                    for (p_1036->g_127.f1 = 0; p_1036->g_127.f1 < 10; p_1036->g_127.f1 += 1)
                    {
                        l_736[p_1036->g_127.f1] = &p_1036->g_231;
                    }
                    if ((safe_lshift_func_uint8_t_u_s((safe_mul_func_int8_t_s_s(((safe_add_func_uint64_t_u_u(((safe_lshift_func_uint16_t_u_u(0UL, 1)) <= (p_1036->g_806 , l_807[5][4][3])), 7UL)) == FAKE_DIVERGE(p_1036->group_0_offset, get_group_id(0), 10)), (((safe_mul_func_int8_t_s_s(p_13, p_1036->g_792.f0)) < (safe_unary_minus_func_int8_t_s((((((((*l_811) = l_736[2]) == (void*)0) < (&l_691[0] != &p_1036->g_345)) == p_13) <= 4294967286UL) & p_1036->g_321[2])))) , 1L))), 6)))
                    { /* block id: 386 */
                        l_832[0] |= (safe_div_func_int16_t_s_s((safe_mul_func_uint8_t_u_u((safe_mod_func_uint16_t_u_u(((safe_mul_func_int8_t_s_s(((((safe_add_func_uint64_t_u_u(((p_1036->g_748.f1 & (-5L)) || 1L), (((safe_mod_func_uint64_t_u_u(((p_1036->g_399.f2 | p_14) | ((p_1036->g_341 | (safe_mod_func_uint32_t_u_u(((safe_mod_func_uint64_t_u_u(((safe_add_func_int8_t_s_s((&p_1036->g_502 == (l_759 , (p_1036->g_209.f2 , (void*)0))), p_1036->g_747.f3)) < p_13), 0x898D5D66C91480CAL)) | 4L), (-1L)))) != p_14)), p_1036->g_77)) , 0x6719L) != l_830[2][5][4]))) || l_831[0]) ^ 0x005A55A7L) || 0x7D8DL), p_14)) != l_831[0]), GROUP_DIVERGE(0, 1))), 7L)), p_13));
                    }
                    else
                    { /* block id: 388 */
                        l_833 = 0x5D2198D6L;
                        l_835[0][4] = l_834;
                    }
                    (*p_1036->g_2) |= 0x1FE39FA7L;
                }
                for (p_1036->g_209.f2 = 0; (p_1036->g_209.f2 <= 12); p_1036->g_209.f2 = safe_add_func_uint64_t_u_u(p_1036->g_209.f2, 1))
                { /* block id: 396 */
                    int16_t l_839 = 0x0B16L;
                    l_840++;
                    if (p_13)
                        continue;
                }
                (*p_1036->g_139) = p_1036->g_843;
                for (p_1036->g_616 = (-14); (p_1036->g_616 > 22); p_1036->g_616++)
                { /* block id: 403 */
                    for (p_1036->g_747.f3 = 0; (p_1036->g_747.f3 >= 0); p_1036->g_747.f3 -= 1)
                    { /* block id: 406 */
                        int i;
                        l_832[p_1036->g_747.f3] &= 0x753979C9L;
                    }
                }
            }
        }
        else
        { /* block id: 411 */
            for (p_1036->g_231 = 4; (p_1036->g_231 <= 41); p_1036->g_231 = safe_add_func_uint64_t_u_u(p_1036->g_231, 7))
            { /* block id: 414 */
                int32_t *l_848 = (void*)0;
                (*p_1036->g_132) = l_848;
            }
        }
lbl_892:
        l_849 = func_22(l_714, p_1036);
        for (p_1036->g_184.f1.f0 = 14; (p_1036->g_184.f1.f0 < 52); p_1036->g_184.f1.f0 = safe_add_func_uint8_t_u_u(p_1036->g_184.f1.f0, 4))
        { /* block id: 421 */
            uint8_t *l_854[6][2][3] = {{{&p_1036->g_341,&p_1036->g_341,&p_1036->g_341},{&p_1036->g_341,&p_1036->g_341,&p_1036->g_341}},{{&p_1036->g_341,&p_1036->g_341,&p_1036->g_341},{&p_1036->g_341,&p_1036->g_341,&p_1036->g_341}},{{&p_1036->g_341,&p_1036->g_341,&p_1036->g_341},{&p_1036->g_341,&p_1036->g_341,&p_1036->g_341}},{{&p_1036->g_341,&p_1036->g_341,&p_1036->g_341},{&p_1036->g_341,&p_1036->g_341,&p_1036->g_341}},{{&p_1036->g_341,&p_1036->g_341,&p_1036->g_341},{&p_1036->g_341,&p_1036->g_341,&p_1036->g_341}},{{&p_1036->g_341,&p_1036->g_341,&p_1036->g_341},{&p_1036->g_341,&p_1036->g_341,&p_1036->g_341}}};
            int64_t *l_855[8][7][2] = {{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}}};
            int32_t l_856 = 0L;
            int32_t l_863 = 0L;
            int32_t l_866 = (-2L);
            int32_t l_879 = 0x64955A4CL;
            int32_t l_880 = 1L;
            int32_t l_883 = 0L;
            int32_t l_884 = 1L;
            int i, j, k;
            if ((safe_mod_func_int8_t_s_s(((l_782 ^= l_683) > (((l_856 &= 0x42694E734E085DD0L) >= p_1036->g_209.f3) & ((safe_add_func_int64_t_s_s((safe_rshift_func_uint8_t_u_u((safe_sub_func_uint16_t_u_u((l_863 > 65535UL), ((safe_mul_func_uint8_t_u_u(7UL, p_1036->g_749.f1)) < p_14))), (l_866 &= 247UL))), (-2L))) & p_1036->g_686[5].f2))), p_1036->g_258)))
            { /* block id: 425 */
                int8_t l_867 = 6L;
                l_867 |= 0x0E687474L;
            }
            else
            { /* block id: 427 */
                int32_t *l_868 = (void*)0;
                int32_t *l_869 = &p_1036->g_212;
                int32_t *l_870 = &l_704;
                int32_t *l_871 = &l_856;
                int32_t *l_872 = &l_704;
                int32_t *l_873[7][4] = {{&l_863,&l_863,&l_863,&p_1036->g_3},{&l_863,&l_863,&l_863,&p_1036->g_3},{&l_863,&l_863,&l_863,&p_1036->g_3},{&l_863,&l_863,&l_863,&p_1036->g_3},{&l_863,&l_863,&l_863,&p_1036->g_3},{&l_863,&l_863,&l_863,&p_1036->g_3},{&l_863,&l_863,&l_863,&p_1036->g_3}};
                uint8_t l_875[2];
                int i, j;
                for (i = 0; i < 2; i++)
                    l_875[i] = 248UL;
                l_875[0]--;
                for (p_13 = 0; (p_13 <= 1); p_13 += 1)
                { /* block id: 431 */
                    int32_t l_878 = 0L;
                    int i;
                    (*l_870) &= ((p_1036->g_609[(p_13 + 6)] ^ (p_1036->g_231 = (p_1036->g_609[(p_13 + 7)] || 0L))) & p_13);
                    for (p_1036->g_843.f3 = 0; (p_1036->g_843.f3 <= 1); p_1036->g_843.f3 += 1)
                    { /* block id: 436 */
                        int32_t l_881 = 0x21ACE755L;
                        int32_t l_882 = 1L;
                        p_1036->g_886--;
                        if (l_881)
                            continue;
                    }
                }
            }
            if ((safe_lshift_func_int8_t_s_s((((0x7DA2BECDL != FAKE_DIVERGE(p_1036->group_0_offset, get_group_id(0), 10)) , l_833) < (8UL || ((p_13 || ((*l_690) = (((~p_1036->g_231) , (p_1036->g_321[2] & p_13)) && p_1036->g_891))) > (p_1036->g_76 = ((0x49EAL < p_13) ^ 0x053EL))))), 1)))
            { /* block id: 444 */
                int32_t l_905 = 0x6318F9FBL;
                int32_t l_906 = 0x0FBA33A6L;
                int32_t l_908 = 0L;
                int32_t l_909 = 0L;
                if (p_1036->g_399.f2)
                    goto lbl_892;
                for (p_1036->g_138.f0 = 18; (p_1036->g_138.f0 != 59); ++p_1036->g_138.f0)
                { /* block id: 448 */
                    int32_t *l_895 = &l_883;
                    int32_t *l_896 = (void*)0;
                    int32_t *l_897 = &p_1036->g_212;
                    int32_t *l_898 = &l_880;
                    int32_t *l_899 = &l_874;
                    int32_t *l_900 = (void*)0;
                    int32_t *l_901 = &p_1036->g_3;
                    int32_t *l_902 = (void*)0;
                    int32_t *l_903 = &l_704;
                    int32_t *l_904[1][7] = {{&l_856,&l_856,&l_856,&l_856,&l_856,&l_856,&l_856}};
                    int i, j;
                    ++p_1036->g_910;
                    for (l_884 = 0; (l_884 == 13); l_884 = safe_add_func_int32_t_s_s(l_884, 1))
                    { /* block id: 452 */
                        l_915 = (l_909 = ((*l_895) = (p_1036->g_280 < 0x64ADABD2B78F238EL)));
                    }
                }
            }
            else
            { /* block id: 458 */
                union U3 **l_924[10][4] = {{&p_1036->g_288,(void*)0,(void*)0,&p_1036->g_288},{&p_1036->g_288,(void*)0,(void*)0,&p_1036->g_288},{&p_1036->g_288,(void*)0,(void*)0,&p_1036->g_288},{&p_1036->g_288,(void*)0,(void*)0,&p_1036->g_288},{&p_1036->g_288,(void*)0,(void*)0,&p_1036->g_288},{&p_1036->g_288,(void*)0,(void*)0,&p_1036->g_288},{&p_1036->g_288,(void*)0,(void*)0,&p_1036->g_288},{&p_1036->g_288,(void*)0,(void*)0,&p_1036->g_288},{&p_1036->g_288,(void*)0,(void*)0,&p_1036->g_288},{&p_1036->g_288,(void*)0,(void*)0,&p_1036->g_288}};
                int32_t l_939 = 7L;
                union U2 **l_973 = &l_956;
                int32_t l_974 = 0x4167B726L;
                int i, j;
                if (p_13)
                    break;
                (*p_1036->g_2) = (*p_1036->g_2);
                for (p_1036->g_616 = 0; (p_1036->g_616 == 47); ++p_1036->g_616)
                { /* block id: 463 */
                    uint32_t l_918 = 4294967295UL;
                    union U3 ***l_925[8][6] = {{&l_924[5][3],&l_924[5][3],(void*)0,(void*)0,&l_924[5][3],&l_924[5][3]},{&l_924[5][3],&l_924[5][3],(void*)0,(void*)0,&l_924[5][3],&l_924[5][3]},{&l_924[5][3],&l_924[5][3],(void*)0,(void*)0,&l_924[5][3],&l_924[5][3]},{&l_924[5][3],&l_924[5][3],(void*)0,(void*)0,&l_924[5][3],&l_924[5][3]},{&l_924[5][3],&l_924[5][3],(void*)0,(void*)0,&l_924[5][3],&l_924[5][3]},{&l_924[5][3],&l_924[5][3],(void*)0,(void*)0,&l_924[5][3],&l_924[5][3]},{&l_924[5][3],&l_924[5][3],(void*)0,(void*)0,&l_924[5][3],&l_924[5][3]},{&l_924[5][3],&l_924[5][3],(void*)0,(void*)0,&l_924[5][3],&l_924[5][3]}};
                    uint16_t *l_927 = &l_830[0][1][4];
                    int32_t l_936[6] = {0L,0L,0L,0L,0L,0L};
                    int8_t *l_937 = (void*)0;
                    int8_t *l_938 = &p_1036->g_77;
                    union U2 *l_954 = &p_1036->g_380;
                    union U2 **l_953 = &l_954;
                    int32_t l_967[8];
                    uint64_t *l_968 = &p_1036->g_394;
                    int i, j;
                    for (i = 0; i < 8; i++)
                        l_967[i] = 0x294740ABL;
                    (*p_1036->g_2) = ((+(l_918 & ((safe_sub_func_uint16_t_u_u((safe_sub_func_int8_t_s_s((p_1036->g_923 , p_1036->g_399.f1), 0x13L)), ((*l_927) = (l_924[5][3] != (p_1036->g_926 = &p_1036->g_288))))) < ((((*l_938) = (safe_mod_func_uint8_t_u_u(((((l_936[1] &= (safe_add_func_int16_t_s_s((safe_div_func_int32_t_s_s(((GROUP_DIVERGE(0, 1) ^ (safe_add_func_int8_t_s_s(p_14, ((GROUP_DIVERGE(1, 1) <= FAKE_DIVERGE(p_1036->group_0_offset, get_group_id(0), 10)) , p_1036->g_843.f3)))) != 0UL), 0xAE2B4CDBL)), p_14))) <= p_14) && 0UL) | (*p_1036->g_2)), 0x37L))) || 0x4AL) == 0L)))) , l_939);
                    (*p_1036->g_2) = (safe_add_func_int64_t_s_s((safe_add_func_int8_t_s_s(((safe_unary_minus_func_int64_t_s((p_1036->g_975[0] = (p_1036->g_comm_values[p_1036->tid] = (p_1036->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1036->tid, 119))] = ((((safe_unary_minus_func_uint16_t_u((safe_add_func_int8_t_s_s((l_880 = (safe_sub_func_uint64_t_u_u(((safe_rshift_func_int16_t_s_s(((p_1036->g_952 , l_953) != l_955[0]), p_13)) , (safe_div_func_int8_t_s_s((p_1036->g_681.f1 != (l_939 = (((l_936[1] ^= (p_1036->g_258 ^= ((*l_690) = p_13))) > (safe_lshift_func_int16_t_s_s(0x49CCL, 15))) == ((safe_mod_func_int16_t_s_s((GROUP_DIVERGE(2, 1) == ((safe_mul_func_uint8_t_u_u(((((safe_unary_minus_func_int32_t_s((((l_879 |= (l_967[1] = 0x55CC5DCDCEBBDFDCL)) != (((*l_968)--) >= (safe_lshift_func_int8_t_s_s(((*l_938) &= (l_973 == (void*)0)), l_918)))) != p_13))) | p_1036->g_686[5].f3) == p_1036->g_80[3]) > l_915), p_1036->g_792.f0)) & p_13)), 7UL)) <= p_13)))), l_974))), l_918))), FAKE_DIVERGE(p_1036->global_1_offset, get_global_id(1), 10))))) | FAKE_DIVERGE(p_1036->group_2_offset, get_group_id(2), 10)) ^ 3L) || 0x3252L)))))) || 7UL), 1L)), p_1036->g_138.f2));
                    for (l_866 = 5; (l_866 <= 29); l_866++)
                    { /* block id: 484 */
                        uint32_t l_979 = 4294967289UL;
                        if (l_884)
                            goto lbl_978;
                        l_967[5] ^= l_979;
                    }
                }
            }
            if (p_13)
                break;
        }
    }
    else
    { /* block id: 492 */
        int32_t *l_980 = &p_1036->g_3;
        int32_t l_985 = (-1L);
        uint32_t l_987 = 0x428D4118L;
        int32_t *l_993 = &p_1036->g_53;
        int32_t *l_994[10] = {&p_1036->g_3,&l_985,&p_1036->g_3,&l_985,&p_1036->g_3,&p_1036->g_3,&l_985,&p_1036->g_3,&l_985,&p_1036->g_3};
        int i;
        for (p_1036->g_138.f0 = 0; (p_1036->g_138.f0 <= 3); p_1036->g_138.f0 += 1)
        { /* block id: 495 */
            (**l_689) = func_22((p_1036->g_462.f2 != p_1036->g_246), p_1036);
            for (p_1036->g_184.f1.f0 = 0; (p_1036->g_184.f1.f0 <= 3); p_1036->g_184.f1.f0 += 1)
            { /* block id: 499 */
                return l_980;
            }
        }
        for (p_1036->g_399.f3 = (-5); (p_1036->g_399.f3 > (-20)); --p_1036->g_399.f3)
        { /* block id: 505 */
            int32_t *l_983 = &l_907;
            int32_t *l_984[5];
            int32_t l_986 = 0L;
            struct S0 *l_991 = &p_1036->g_777.f1;
            int i;
            for (i = 0; i < 5; i++)
                l_984[i] = &l_704;
            ++l_987;
            (*l_991) = p_1036->g_990;
        }
        p_1036->g_998--;
    }
    return (**l_689);
}


/* ------------------------------------------ */
/* 
 * reads : p_1036->g_641 p_1036->g_462.f0 p_1036->g_399.f2 p_1036->g_2 p_1036->g_665 p_1036->g_280 p_1036->g_209.f1 p_1036->g_598 p_1036->g_209.f3 p_1036->g_80 p_1036->g_3 p_1036->g_56.f0
 * writes: p_1036->g_643 p_1036->g_462.f0 p_1036->g_3 p_1036->g_370 p_1036->g_51 p_1036->g_77
 */
int8_t  func_15(uint32_t  p_16, int32_t * p_17, struct S4 * p_1036)
{ /* block id: 301 */
    volatile struct S0 *l_642[5][10][5] = {{{&p_1036->g_56[0][1],(void*)0,&p_1036->g_119,&p_1036->g_641,(void*)0},{&p_1036->g_56[0][1],(void*)0,&p_1036->g_119,&p_1036->g_641,(void*)0},{&p_1036->g_56[0][1],(void*)0,&p_1036->g_119,&p_1036->g_641,(void*)0},{&p_1036->g_56[0][1],(void*)0,&p_1036->g_119,&p_1036->g_641,(void*)0},{&p_1036->g_56[0][1],(void*)0,&p_1036->g_119,&p_1036->g_641,(void*)0},{&p_1036->g_56[0][1],(void*)0,&p_1036->g_119,&p_1036->g_641,(void*)0},{&p_1036->g_56[0][1],(void*)0,&p_1036->g_119,&p_1036->g_641,(void*)0},{&p_1036->g_56[0][1],(void*)0,&p_1036->g_119,&p_1036->g_641,(void*)0},{&p_1036->g_56[0][1],(void*)0,&p_1036->g_119,&p_1036->g_641,(void*)0},{&p_1036->g_56[0][1],(void*)0,&p_1036->g_119,&p_1036->g_641,(void*)0}},{{&p_1036->g_56[0][1],(void*)0,&p_1036->g_119,&p_1036->g_641,(void*)0},{&p_1036->g_56[0][1],(void*)0,&p_1036->g_119,&p_1036->g_641,(void*)0},{&p_1036->g_56[0][1],(void*)0,&p_1036->g_119,&p_1036->g_641,(void*)0},{&p_1036->g_56[0][1],(void*)0,&p_1036->g_119,&p_1036->g_641,(void*)0},{&p_1036->g_56[0][1],(void*)0,&p_1036->g_119,&p_1036->g_641,(void*)0},{&p_1036->g_56[0][1],(void*)0,&p_1036->g_119,&p_1036->g_641,(void*)0},{&p_1036->g_56[0][1],(void*)0,&p_1036->g_119,&p_1036->g_641,(void*)0},{&p_1036->g_56[0][1],(void*)0,&p_1036->g_119,&p_1036->g_641,(void*)0},{&p_1036->g_56[0][1],(void*)0,&p_1036->g_119,&p_1036->g_641,(void*)0},{&p_1036->g_56[0][1],(void*)0,&p_1036->g_119,&p_1036->g_641,(void*)0}},{{&p_1036->g_56[0][1],(void*)0,&p_1036->g_119,&p_1036->g_641,(void*)0},{&p_1036->g_56[0][1],(void*)0,&p_1036->g_119,&p_1036->g_641,(void*)0},{&p_1036->g_56[0][1],(void*)0,&p_1036->g_119,&p_1036->g_641,(void*)0},{&p_1036->g_56[0][1],(void*)0,&p_1036->g_119,&p_1036->g_641,(void*)0},{&p_1036->g_56[0][1],(void*)0,&p_1036->g_119,&p_1036->g_641,(void*)0},{&p_1036->g_56[0][1],(void*)0,&p_1036->g_119,&p_1036->g_641,(void*)0},{&p_1036->g_56[0][1],(void*)0,&p_1036->g_119,&p_1036->g_641,(void*)0},{&p_1036->g_56[0][1],(void*)0,&p_1036->g_119,&p_1036->g_641,(void*)0},{&p_1036->g_56[0][1],(void*)0,&p_1036->g_119,&p_1036->g_641,(void*)0},{&p_1036->g_56[0][1],(void*)0,&p_1036->g_119,&p_1036->g_641,(void*)0}},{{&p_1036->g_56[0][1],(void*)0,&p_1036->g_119,&p_1036->g_641,(void*)0},{&p_1036->g_56[0][1],(void*)0,&p_1036->g_119,&p_1036->g_641,(void*)0},{&p_1036->g_56[0][1],(void*)0,&p_1036->g_119,&p_1036->g_641,(void*)0},{&p_1036->g_56[0][1],(void*)0,&p_1036->g_119,&p_1036->g_641,(void*)0},{&p_1036->g_56[0][1],(void*)0,&p_1036->g_119,&p_1036->g_641,(void*)0},{&p_1036->g_56[0][1],(void*)0,&p_1036->g_119,&p_1036->g_641,(void*)0},{&p_1036->g_56[0][1],(void*)0,&p_1036->g_119,&p_1036->g_641,(void*)0},{&p_1036->g_56[0][1],(void*)0,&p_1036->g_119,&p_1036->g_641,(void*)0},{&p_1036->g_56[0][1],(void*)0,&p_1036->g_119,&p_1036->g_641,(void*)0},{&p_1036->g_56[0][1],(void*)0,&p_1036->g_119,&p_1036->g_641,(void*)0}},{{&p_1036->g_56[0][1],(void*)0,&p_1036->g_119,&p_1036->g_641,(void*)0},{&p_1036->g_56[0][1],(void*)0,&p_1036->g_119,&p_1036->g_641,(void*)0},{&p_1036->g_56[0][1],(void*)0,&p_1036->g_119,&p_1036->g_641,(void*)0},{&p_1036->g_56[0][1],(void*)0,&p_1036->g_119,&p_1036->g_641,(void*)0},{&p_1036->g_56[0][1],(void*)0,&p_1036->g_119,&p_1036->g_641,(void*)0},{&p_1036->g_56[0][1],(void*)0,&p_1036->g_119,&p_1036->g_641,(void*)0},{&p_1036->g_56[0][1],(void*)0,&p_1036->g_119,&p_1036->g_641,(void*)0},{&p_1036->g_56[0][1],(void*)0,&p_1036->g_119,&p_1036->g_641,(void*)0},{&p_1036->g_56[0][1],(void*)0,&p_1036->g_119,&p_1036->g_641,(void*)0},{&p_1036->g_56[0][1],(void*)0,&p_1036->g_119,&p_1036->g_641,(void*)0}}};
    int32_t l_663[1];
    union U1 *l_664 = &p_1036->g_485;
    uint16_t *l_674 = &p_1036->g_138.f2;
    int64_t *l_675 = (void*)0;
    uint64_t *l_676 = &p_1036->g_51;
    int32_t l_677 = 0x586312CEL;
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_663[i] = (-6L);
    p_1036->g_643 = p_1036->g_641;
    for (p_1036->g_462.f0 = 15; (p_1036->g_462.f0 == 20); p_1036->g_462.f0 = safe_add_func_int32_t_s_s(p_1036->g_462.f0, 7))
    { /* block id: 305 */
        uint16_t l_646 = 0x037FL;
        int64_t *l_657 = (void*)0;
        int64_t *l_658 = (void*)0;
        int64_t *l_659 = (void*)0;
        int64_t *l_660 = (void*)0;
        int64_t *l_661[5];
        int32_t l_662 = 0x04412CE1L;
        int i;
        for (i = 0; i < 5; i++)
            l_661[i] = (void*)0;
        (*p_1036->g_2) = (((l_646 , (safe_add_func_uint8_t_u_u((safe_mul_func_uint16_t_u_u(65528UL, (safe_sub_func_int8_t_s_s((+p_16), 0x6EL)))), ((safe_rshift_func_uint8_t_u_u(0UL, GROUP_DIVERGE(2, 1))) == (safe_sub_func_int32_t_s_s(((GROUP_DIVERGE(0, 1) ^ 18446744073709551606UL) == (l_662 = p_1036->g_399.f2)), (&p_1036->g_246 != (l_663[0] , &p_16)))))))) < p_16) != l_646);
    }
    (*p_1036->g_665) = l_664;
    (*p_1036->g_2) ^= ((safe_mul_func_int8_t_s_s(((((p_1036->g_77 = (p_16 & (((p_1036->g_280 , ((safe_sub_func_uint16_t_u_u(((safe_mul_func_int16_t_s_s(((l_663[0] |= (safe_lshift_func_uint16_t_u_s((((void*)0 != l_674) , (p_1036->g_209.f1 | (l_674 != &p_1036->g_258))), 10))) >= ((*l_676) = (l_675 == p_1036->g_598))), p_1036->g_209.f3)) < p_16), 0x3286L)) ^ p_1036->g_80[3])) ^ (-1L)) | 1L))) && GROUP_DIVERGE(2, 1)) < p_16) | 6UL), (-1L))) < l_677);
    return p_1036->g_56[0][1].f0;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint64_t  func_20(int32_t * p_21, struct S4 * p_1036)
{ /* block id: 299 */
    uint16_t l_633 = 65535UL;
    return l_633;
}


/* ------------------------------------------ */
/* 
 * reads : p_1036->g_143 p_1036->g_132 p_1036->g_133
 * writes: p_1036->g_143
 */
int32_t * func_22(uint32_t  p_23, struct S4 * p_1036)
{ /* block id: 59 */
    int32_t l_140 = 0x5BB096D4L;
    int32_t *l_141[8];
    int8_t *l_165 = &p_1036->g_77;
    int16_t *l_178 = &p_1036->g_179;
    union U3 *l_286 = (void*)0;
    union U3 *l_297 = (void*)0;
    uint64_t *l_300 = &p_1036->g_51;
    uint32_t l_311 = 0UL;
    union U1 *l_367 = &p_1036->g_368;
    int32_t l_434 = 0L;
    union U2 *l_483 = &p_1036->g_380;
    union U2 **l_482 = &l_483;
    int16_t l_504 = (-1L);
    union U3 **l_528 = &l_297;
    uint32_t l_542 = 0xD1382A2CL;
    int16_t **l_605[7][1] = {{&l_178},{&l_178},{&l_178},{&l_178},{&l_178},{&l_178},{&l_178}};
    int16_t ***l_604 = &l_605[6][0];
    uint8_t l_620 = 0UL;
    int i, j;
    for (i = 0; i < 8; i++)
        l_141[i] = &p_1036->g_3;
    --p_1036->g_143;
    return (*p_1036->g_132);
}


/* ------------------------------------------ */
/* 
 * reads : p_1036->g_3 p_1036->g_2 p_1036->g_138.f3
 * writes: p_1036->g_3
 */
int64_t  func_25(int64_t  p_26, struct S4 * p_1036)
{ /* block id: 7 */
    int16_t l_27[3];
    int32_t *l_131 = &p_1036->g_3;
    int32_t **l_130 = &l_131;
    int i;
    for (i = 0; i < 3; i++)
        l_27[i] = 1L;
    for (p_26 = 0; (p_26 <= 2); p_26 += 1)
    { /* block id: 10 */
        uint32_t l_43[6][8] = {{0x9150040BL,0x9150040BL,0x9150040BL,0x9150040BL,0x9150040BL,0x9150040BL,0x9150040BL,0x9150040BL},{0x9150040BL,0x9150040BL,0x9150040BL,0x9150040BL,0x9150040BL,0x9150040BL,0x9150040BL,0x9150040BL},{0x9150040BL,0x9150040BL,0x9150040BL,0x9150040BL,0x9150040BL,0x9150040BL,0x9150040BL,0x9150040BL},{0x9150040BL,0x9150040BL,0x9150040BL,0x9150040BL,0x9150040BL,0x9150040BL,0x9150040BL,0x9150040BL},{0x9150040BL,0x9150040BL,0x9150040BL,0x9150040BL,0x9150040BL,0x9150040BL,0x9150040BL,0x9150040BL},{0x9150040BL,0x9150040BL,0x9150040BL,0x9150040BL,0x9150040BL,0x9150040BL,0x9150040BL,0x9150040BL}};
        int i, j;
        for (p_1036->g_3 = 2; (p_1036->g_3 >= 0); p_1036->g_3 -= 1)
        { /* block id: 13 */
            uint64_t *l_50 = &p_1036->g_51;
            int32_t l_137 = 6L;
            int i;
            (1 + 1);
        }
        if ((*p_1036->g_2))
            continue;
        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        p_1036->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 119)), permutations[(safe_mod_func_uint32_t_u_u(((void*)0 != &p_1036->g_106), 10))][(safe_mod_func_uint32_t_u_u(p_1036->tid, 119))]));
    }
    return p_1036->g_138.f3;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t  func_28(int32_t  p_29, int32_t  p_30, int32_t ** p_31, int32_t * p_32, int32_t ** p_33, struct S4 * p_1036)
{ /* block id: 46 */
    uint64_t l_134[8][5][4] = {{{18446744073709551615UL,1UL,0UL,8UL},{18446744073709551615UL,1UL,0UL,8UL},{18446744073709551615UL,1UL,0UL,8UL},{18446744073709551615UL,1UL,0UL,8UL},{18446744073709551615UL,1UL,0UL,8UL}},{{18446744073709551615UL,1UL,0UL,8UL},{18446744073709551615UL,1UL,0UL,8UL},{18446744073709551615UL,1UL,0UL,8UL},{18446744073709551615UL,1UL,0UL,8UL},{18446744073709551615UL,1UL,0UL,8UL}},{{18446744073709551615UL,1UL,0UL,8UL},{18446744073709551615UL,1UL,0UL,8UL},{18446744073709551615UL,1UL,0UL,8UL},{18446744073709551615UL,1UL,0UL,8UL},{18446744073709551615UL,1UL,0UL,8UL}},{{18446744073709551615UL,1UL,0UL,8UL},{18446744073709551615UL,1UL,0UL,8UL},{18446744073709551615UL,1UL,0UL,8UL},{18446744073709551615UL,1UL,0UL,8UL},{18446744073709551615UL,1UL,0UL,8UL}},{{18446744073709551615UL,1UL,0UL,8UL},{18446744073709551615UL,1UL,0UL,8UL},{18446744073709551615UL,1UL,0UL,8UL},{18446744073709551615UL,1UL,0UL,8UL},{18446744073709551615UL,1UL,0UL,8UL}},{{18446744073709551615UL,1UL,0UL,8UL},{18446744073709551615UL,1UL,0UL,8UL},{18446744073709551615UL,1UL,0UL,8UL},{18446744073709551615UL,1UL,0UL,8UL},{18446744073709551615UL,1UL,0UL,8UL}},{{18446744073709551615UL,1UL,0UL,8UL},{18446744073709551615UL,1UL,0UL,8UL},{18446744073709551615UL,1UL,0UL,8UL},{18446744073709551615UL,1UL,0UL,8UL},{18446744073709551615UL,1UL,0UL,8UL}},{{18446744073709551615UL,1UL,0UL,8UL},{18446744073709551615UL,1UL,0UL,8UL},{18446744073709551615UL,1UL,0UL,8UL},{18446744073709551615UL,1UL,0UL,8UL},{18446744073709551615UL,1UL,0UL,8UL}}};
    int i, j, k;
    l_134[1][0][3]++;
    return l_134[5][2][3];
}


/* ------------------------------------------ */
/* 
 * reads : p_1036->g_53 p_1036->g_56 p_1036->g_3 p_1036->g_comm_values p_1036->g_80 p_1036->g_51 p_1036->g_98 p_1036->g_103 p_1036->g_105 p_1036->g_2 p_1036->g_76 p_1036->l_comm_values p_1036->g_119 p_1036->g_127
 * writes: p_1036->g_53 p_1036->g_76 p_1036->g_77 p_1036->g_80 p_1036->g_51 p_1036->g_98 p_1036->g_2 p_1036->g_106
 */
int8_t  func_34(int64_t  p_35, int32_t  p_36, struct S4 * p_1036)
{ /* block id: 15 */
    int32_t *l_52 = &p_1036->g_53;
    uint64_t *l_63 = &p_1036->g_51;
    uint64_t *l_64 = &p_1036->g_51;
    int32_t l_85 = 1L;
    uint32_t l_87[9][8][3] = {{{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL}},{{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL}},{{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL}},{{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL}},{{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL}},{{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL}},{{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL}},{{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL}},{{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL},{1UL,4UL,0UL}}};
    int32_t l_95 = 0x2185305FL;
    int32_t l_97 = 0x7B12407CL;
    uint8_t *l_128[5][1][6] = {{{&p_1036->g_80[3],&p_1036->g_80[3],&p_1036->g_80[3],&p_1036->g_80[3],&p_1036->g_80[3],&p_1036->g_80[3]}},{{&p_1036->g_80[3],&p_1036->g_80[3],&p_1036->g_80[3],&p_1036->g_80[3],&p_1036->g_80[3],&p_1036->g_80[3]}},{{&p_1036->g_80[3],&p_1036->g_80[3],&p_1036->g_80[3],&p_1036->g_80[3],&p_1036->g_80[3],&p_1036->g_80[3]}},{{&p_1036->g_80[3],&p_1036->g_80[3],&p_1036->g_80[3],&p_1036->g_80[3],&p_1036->g_80[3],&p_1036->g_80[3]}},{{&p_1036->g_80[3],&p_1036->g_80[3],&p_1036->g_80[3],&p_1036->g_80[3],&p_1036->g_80[3],&p_1036->g_80[3]}}};
    int32_t l_129 = 0x72E8F47DL;
    int i, j, k;
    (*l_52) &= (-1L);
    if ((safe_add_func_uint16_t_u_u(((+(p_1036->g_56[0][1] , p_1036->g_3)) < p_1036->g_3), (safe_lshift_func_int16_t_s_s((p_35 == p_1036->g_53), (safe_add_func_int16_t_s_s(((safe_div_func_int32_t_s_s((((l_63 == (l_64 = (((-4L) <= (*l_52)) , l_63))) || 0x051AL) || 1UL), p_36)) != (*l_52)), (*l_52))))))))
    { /* block id: 18 */
        uint32_t l_65 = 4294967295UL;
        int32_t l_70 = (-3L);
        int16_t *l_75[7];
        uint8_t *l_78 = (void*)0;
        uint8_t *l_79 = &p_1036->g_80[3];
        uint8_t l_81 = 0UL;
        int32_t *l_82 = &p_1036->g_53;
        int32_t *l_83 = (void*)0;
        int32_t *l_84[8] = {&p_1036->g_53,&p_1036->g_3,&p_1036->g_53,&p_1036->g_53,&p_1036->g_3,&p_1036->g_53,&p_1036->g_53,&p_1036->g_3};
        int i;
        for (i = 0; i < 7; i++)
            l_75[i] = &p_1036->g_76;
        l_65++;
        p_1036->g_53 = (safe_sub_func_uint64_t_u_u((l_70 = p_1036->g_comm_values[p_1036->tid]), (safe_rshift_func_uint16_t_u_s((((p_1036->g_56[0][1].f0 <= 0x1F65L) && ((((void*)0 == &l_52) , (safe_sub_func_int16_t_s_s((p_1036->g_77 = (p_1036->g_76 = (0xFE45L > (*l_52)))), ((((((((0UL || ((*l_79) ^= (*l_52))) || p_35) & 0xC7A95E7740573921L) <= l_81) > 1UL) > (*l_52)) > p_1036->g_comm_values[p_1036->tid]) , GROUP_DIVERGE(2, 1))))) , p_36)) || p_1036->g_56[0][1].f1), 7))));
        (*l_52) |= (~l_70);
        l_87[2][3][2]--;
    }
    else
    { /* block id: 27 */
        int32_t l_96 = 0x74ABBE4CL;
        int32_t **l_104 = &p_1036->g_2;
        for (p_1036->g_51 = 4; (p_1036->g_51 != 17); p_1036->g_51 = safe_add_func_int32_t_s_s(p_1036->g_51, 2))
        { /* block id: 30 */
            int32_t *l_92 = &l_85;
            int32_t *l_93 = &p_1036->g_53;
            int32_t *l_94[9] = {&l_85,&l_85,&l_85,&l_85,&l_85,&l_85,&l_85,&l_85,&l_85};
            int32_t ***l_111 = &p_1036->g_106;
            int32_t ***l_112 = &p_1036->g_106;
            int i;
            --p_1036->g_98;
            for (p_1036->g_76 = 0; (p_1036->g_76 == (-4)); p_1036->g_76--)
            { /* block id: 34 */
                (*p_1036->g_103) = &l_96;
                (*p_1036->g_105) = l_104;
            }
            (*l_92) |= (**l_104);
            (*l_92) |= (p_1036->g_76 && ((((safe_lshift_func_int8_t_s_u((p_1036->g_53 , (safe_lshift_func_uint8_t_u_s((((&l_104 != (l_111 = l_111)) | (((((&p_1036->g_106 != l_112) < 0x681B6975L) == FAKE_DIVERGE(p_1036->global_0_offset, get_global_id(0), 10)) && (safe_rshift_func_int8_t_s_s((p_1036->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1036->tid, 119))] ^ (safe_sub_func_int32_t_s_s(((safe_mul_func_uint16_t_u_u(((&p_1036->g_103 != (void*)0) && 1L), 0xCCA8L)) != p_35), p_35))), 7))) >= 0L)) > 18446744073709551610UL), (**l_104)))), FAKE_DIVERGE(p_1036->local_1_offset, get_local_id(1), 10))) <= (-1L)) || p_35) | 9L));
        }
        l_52 = &p_36;
    }
    (*l_52) = (p_1036->g_119 , (((safe_unary_minus_func_uint32_t_u((p_35 >= p_1036->g_98))) , (safe_mod_func_int64_t_s_s((safe_sub_func_int64_t_s_s((FAKE_DIVERGE(p_1036->global_0_offset, get_global_id(0), 10) || ((0x76L & (*l_52)) & ((((p_1036->g_127 , l_128[1][0][1]) == &p_1036->g_80[3]) & ((&p_1036->g_3 == &l_97) == p_36)) == l_129))), 8UL)), 0x7DB64883662F39AAL))) & 0x00DF10CBL));
    return p_36;
}


__kernel void entry(__global ulong *result, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local int64_t l_comm_values[119];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 119; i++)
            l_comm_values[i] = 1;
    struct S4 c_1037;
    struct S4* p_1036 = &c_1037;
    struct S4 c_1038 = {
        1L, // p_1036->g_3
        &p_1036->g_3, // p_1036->g_2
        5UL, // p_1036->g_51
        1L, // p_1036->g_53
        {{{4294967287UL,0xFFF74B76L,65529UL,-5L},{4294967287UL,0xFFF74B76L,65529UL,-5L},{4294967287UL,0xFFF74B76L,65529UL,-5L},{4294967287UL,0xFFF74B76L,65529UL,-5L},{4294967287UL,0xFFF74B76L,65529UL,-5L},{4294967287UL,0xFFF74B76L,65529UL,-5L},{4294967287UL,0xFFF74B76L,65529UL,-5L},{4294967287UL,0xFFF74B76L,65529UL,-5L},{4294967287UL,0xFFF74B76L,65529UL,-5L}}}, // p_1036->g_56
        0x0CE1L, // p_1036->g_76
        0x6EL, // p_1036->g_77
        {0xB4L,0xB4L,0xB4L,0xB4L,0xB4L,0xB4L,0xB4L,0xB4L}, // p_1036->g_80
        0x4B9B5B59L, // p_1036->g_86
        0UL, // p_1036->g_98
        &p_1036->g_2, // p_1036->g_103
        (void*)0, // p_1036->g_106
        &p_1036->g_106, // p_1036->g_105
        {0xF354A036L,0xB399E460L,0xF856L,0x0113493370524A1AL}, // p_1036->g_119
        {0x3CA0CB05L}, // p_1036->g_127
        (void*)0, // p_1036->g_133
        &p_1036->g_133, // p_1036->g_132
        {0xEBC73C5DL,0x116D794BL,0UL,0x1999303195652836L}, // p_1036->g_138
        &p_1036->g_138, // p_1036->g_139
        0x60ADCB03L, // p_1036->g_142
        3UL, // p_1036->g_143
        (-1L), // p_1036->g_179
        {0xE8CBL}, // p_1036->g_184
        {{5L,(-1L),0x4871L,(-1L)},{5L,(-1L),0x4871L,(-1L)},{5L,(-1L),0x4871L,(-1L)},{5L,(-1L),0x4871L,(-1L)},{5L,(-1L),0x4871L,(-1L)},{5L,(-1L),0x4871L,(-1L)}}, // p_1036->g_201
        0x66A14887734DABC8L, // p_1036->g_203
        0xCBL, // p_1036->g_205
        {0x28838847L,0xDA4BA7FAL,8UL,0L}, // p_1036->g_209
        1L, // p_1036->g_212
        0x0DB710F9EE0FC505L, // p_1036->g_214
        {{{1L},{1L}},{{1L},{1L}},{{1L},{1L}},{{1L},{1L}},{{1L},{1L}},{{1L},{1L}}}, // p_1036->g_228
        0xF321B609L, // p_1036->g_231
        0x2662F6EAL, // p_1036->g_246
        {{{(-1L),0x477F9D6CL,0L,0x4D9E7DDAL},{(-1L),0x477F9D6CL,0L,0x4D9E7DDAL},{(-1L),0x477F9D6CL,0L,0x4D9E7DDAL},{(-1L),0x477F9D6CL,0L,0x4D9E7DDAL},{(-1L),0x477F9D6CL,0L,0x4D9E7DDAL},{(-1L),0x477F9D6CL,0L,0x4D9E7DDAL}},{{(-1L),0x477F9D6CL,0L,0x4D9E7DDAL},{(-1L),0x477F9D6CL,0L,0x4D9E7DDAL},{(-1L),0x477F9D6CL,0L,0x4D9E7DDAL},{(-1L),0x477F9D6CL,0L,0x4D9E7DDAL},{(-1L),0x477F9D6CL,0L,0x4D9E7DDAL},{(-1L),0x477F9D6CL,0L,0x4D9E7DDAL}},{{(-1L),0x477F9D6CL,0L,0x4D9E7DDAL},{(-1L),0x477F9D6CL,0L,0x4D9E7DDAL},{(-1L),0x477F9D6CL,0L,0x4D9E7DDAL},{(-1L),0x477F9D6CL,0L,0x4D9E7DDAL},{(-1L),0x477F9D6CL,0L,0x4D9E7DDAL},{(-1L),0x477F9D6CL,0L,0x4D9E7DDAL}},{{(-1L),0x477F9D6CL,0L,0x4D9E7DDAL},{(-1L),0x477F9D6CL,0L,0x4D9E7DDAL},{(-1L),0x477F9D6CL,0L,0x4D9E7DDAL},{(-1L),0x477F9D6CL,0L,0x4D9E7DDAL},{(-1L),0x477F9D6CL,0L,0x4D9E7DDAL},{(-1L),0x477F9D6CL,0L,0x4D9E7DDAL}},{{(-1L),0x477F9D6CL,0L,0x4D9E7DDAL},{(-1L),0x477F9D6CL,0L,0x4D9E7DDAL},{(-1L),0x477F9D6CL,0L,0x4D9E7DDAL},{(-1L),0x477F9D6CL,0L,0x4D9E7DDAL},{(-1L),0x477F9D6CL,0L,0x4D9E7DDAL},{(-1L),0x477F9D6CL,0L,0x4D9E7DDAL}},{{(-1L),0x477F9D6CL,0L,0x4D9E7DDAL},{(-1L),0x477F9D6CL,0L,0x4D9E7DDAL},{(-1L),0x477F9D6CL,0L,0x4D9E7DDAL},{(-1L),0x477F9D6CL,0L,0x4D9E7DDAL},{(-1L),0x477F9D6CL,0L,0x4D9E7DDAL},{(-1L),0x477F9D6CL,0L,0x4D9E7DDAL}},{{(-1L),0x477F9D6CL,0L,0x4D9E7DDAL},{(-1L),0x477F9D6CL,0L,0x4D9E7DDAL},{(-1L),0x477F9D6CL,0L,0x4D9E7DDAL},{(-1L),0x477F9D6CL,0L,0x4D9E7DDAL},{(-1L),0x477F9D6CL,0L,0x4D9E7DDAL},{(-1L),0x477F9D6CL,0L,0x4D9E7DDAL}},{{(-1L),0x477F9D6CL,0L,0x4D9E7DDAL},{(-1L),0x477F9D6CL,0L,0x4D9E7DDAL},{(-1L),0x477F9D6CL,0L,0x4D9E7DDAL},{(-1L),0x477F9D6CL,0L,0x4D9E7DDAL},{(-1L),0x477F9D6CL,0L,0x4D9E7DDAL},{(-1L),0x477F9D6CL,0L,0x4D9E7DDAL}},{{(-1L),0x477F9D6CL,0L,0x4D9E7DDAL},{(-1L),0x477F9D6CL,0L,0x4D9E7DDAL},{(-1L),0x477F9D6CL,0L,0x4D9E7DDAL},{(-1L),0x477F9D6CL,0L,0x4D9E7DDAL},{(-1L),0x477F9D6CL,0L,0x4D9E7DDAL},{(-1L),0x477F9D6CL,0L,0x4D9E7DDAL}}}, // p_1036->g_254
        0x6556L, // p_1036->g_258
        248UL, // p_1036->g_259
        0xC916L, // p_1036->g_280
        &p_1036->g_184, // p_1036->g_288
        &p_1036->g_288, // p_1036->g_287
        {0x15B34168L,6L,0x15B34168L,0x15B34168L,6L,0x15B34168L,0x15B34168L,6L,0x15B34168L}, // p_1036->g_321
        0xF8L, // p_1036->g_341
        &p_1036->g_201[4][0], // p_1036->g_345
        {{{&p_1036->g_345,&p_1036->g_345,&p_1036->g_345,&p_1036->g_345,&p_1036->g_345,&p_1036->g_345},{&p_1036->g_345,&p_1036->g_345,&p_1036->g_345,&p_1036->g_345,&p_1036->g_345,&p_1036->g_345},{&p_1036->g_345,&p_1036->g_345,&p_1036->g_345,&p_1036->g_345,&p_1036->g_345,&p_1036->g_345},{&p_1036->g_345,&p_1036->g_345,&p_1036->g_345,&p_1036->g_345,&p_1036->g_345,&p_1036->g_345},{&p_1036->g_345,&p_1036->g_345,&p_1036->g_345,&p_1036->g_345,&p_1036->g_345,&p_1036->g_345}}}, // p_1036->g_344
        (void*)0, // p_1036->g_346
        &p_1036->g_344[0][3][1], // p_1036->g_347
        {-6L}, // p_1036->g_368
        &p_1036->g_368, // p_1036->g_370
        &p_1036->g_370, // p_1036->g_369
        &p_1036->g_228[0][0], // p_1036->g_377
        {{&p_1036->g_377,&p_1036->g_377,(void*)0,(void*)0},{&p_1036->g_377,&p_1036->g_377,(void*)0,(void*)0},{&p_1036->g_377,&p_1036->g_377,(void*)0,(void*)0},{&p_1036->g_377,&p_1036->g_377,(void*)0,(void*)0},{&p_1036->g_377,&p_1036->g_377,(void*)0,(void*)0},{&p_1036->g_377,&p_1036->g_377,(void*)0,(void*)0},{&p_1036->g_377,&p_1036->g_377,(void*)0,(void*)0},{&p_1036->g_377,&p_1036->g_377,(void*)0,(void*)0}}, // p_1036->g_376
        {1L}, // p_1036->g_380
        {{{3L,0x45L},{3L,0x45L},{3L,0x45L},{3L,0x45L}},{{3L,0x45L},{3L,0x45L},{3L,0x45L},{3L,0x45L}},{{3L,0x45L},{3L,0x45L},{3L,0x45L},{3L,0x45L}},{{3L,0x45L},{3L,0x45L},{3L,0x45L},{3L,0x45L}},{{3L,0x45L},{3L,0x45L},{3L,0x45L},{3L,0x45L}},{{3L,0x45L},{3L,0x45L},{3L,0x45L},{3L,0x45L}}}, // p_1036->g_392
        0xB5E08B1FF474044FL, // p_1036->g_394
        {4294967293UL,0UL,0UL,-9L}, // p_1036->g_399
        &p_1036->g_288, // p_1036->g_442
        {{0x72L},{0x72L},{0x72L},{0x72L}}, // p_1036->g_448
        {4294967289UL,1UL,65532UL,-1L}, // p_1036->g_462
        {0x5EFE9A1DL}, // p_1036->g_485
        0x86A964A5L, // p_1036->g_497
        (void*)0, // p_1036->g_502
        &p_1036->g_502, // p_1036->g_501
        0x5CF855C0L, // p_1036->g_503
        0x32L, // p_1036->g_574
        &p_1036->g_119.f3, // p_1036->g_598
        {0x509A7E80L,0x290ACB52L,(-1L),0x290ACB52L,0x509A7E80L,0x509A7E80L,0x290ACB52L,(-1L),0x290ACB52L,0x509A7E80L}, // p_1036->g_609
        0xE165L, // p_1036->g_616
        {4294967295UL,0x35FACE81L,1UL,7L}, // p_1036->g_641
        {0xD10B71D9L,1UL,0x1C1DL,-3L}, // p_1036->g_643
        &p_1036->g_370, // p_1036->g_665
        {{{0x6EL,0x0CL,0x63L,0x67L,0x23L,0x7DL,0x6EL,(-1L),0x76L},{0x6EL,0x0CL,0x63L,0x67L,0x23L,0x7DL,0x6EL,(-1L),0x76L},{0x6EL,0x0CL,0x63L,0x67L,0x23L,0x7DL,0x6EL,(-1L),0x76L},{0x6EL,0x0CL,0x63L,0x67L,0x23L,0x7DL,0x6EL,(-1L),0x76L},{0x6EL,0x0CL,0x63L,0x67L,0x23L,0x7DL,0x6EL,(-1L),0x76L},{0x6EL,0x0CL,0x63L,0x67L,0x23L,0x7DL,0x6EL,(-1L),0x76L},{0x6EL,0x0CL,0x63L,0x67L,0x23L,0x7DL,0x6EL,(-1L),0x76L},{0x6EL,0x0CL,0x63L,0x67L,0x23L,0x7DL,0x6EL,(-1L),0x76L},{0x6EL,0x0CL,0x63L,0x67L,0x23L,0x7DL,0x6EL,(-1L),0x76L},{0x6EL,0x0CL,0x63L,0x67L,0x23L,0x7DL,0x6EL,(-1L),0x76L}},{{0x6EL,0x0CL,0x63L,0x67L,0x23L,0x7DL,0x6EL,(-1L),0x76L},{0x6EL,0x0CL,0x63L,0x67L,0x23L,0x7DL,0x6EL,(-1L),0x76L},{0x6EL,0x0CL,0x63L,0x67L,0x23L,0x7DL,0x6EL,(-1L),0x76L},{0x6EL,0x0CL,0x63L,0x67L,0x23L,0x7DL,0x6EL,(-1L),0x76L},{0x6EL,0x0CL,0x63L,0x67L,0x23L,0x7DL,0x6EL,(-1L),0x76L},{0x6EL,0x0CL,0x63L,0x67L,0x23L,0x7DL,0x6EL,(-1L),0x76L},{0x6EL,0x0CL,0x63L,0x67L,0x23L,0x7DL,0x6EL,(-1L),0x76L},{0x6EL,0x0CL,0x63L,0x67L,0x23L,0x7DL,0x6EL,(-1L),0x76L},{0x6EL,0x0CL,0x63L,0x67L,0x23L,0x7DL,0x6EL,(-1L),0x76L},{0x6EL,0x0CL,0x63L,0x67L,0x23L,0x7DL,0x6EL,(-1L),0x76L}}}, // p_1036->g_679
        {0x2DCF2952L,0x04649EAAL,65535UL,5L}, // p_1036->g_681
        &p_1036->g_138, // p_1036->g_682
        {{4294967295UL,1UL,0x93E0L,1L},{4294967295UL,1UL,0x93E0L,1L},{4294967295UL,1UL,0x93E0L,1L},{4294967295UL,1UL,0x93E0L,1L},{4294967295UL,1UL,0x93E0L,1L},{4294967295UL,1UL,0x93E0L,1L},{4294967295UL,1UL,0x93E0L,1L},{4294967295UL,1UL,0x93E0L,1L}}, // p_1036->g_686
        {0x43DD0874L,0xB951FB39L,0UL,-1L}, // p_1036->g_747
        {0xC9CC08EDL,0xD15BAA8BL,0x6BC6L,6L}, // p_1036->g_748
        {0xE55E4CE0L,1UL,0UL,0x51FA4B16E735C04AL}, // p_1036->g_749
        {65534UL}, // p_1036->g_777
        {{0x7D97L},{65535UL},{0x7D97L},{0x7D97L},{65535UL},{0x7D97L},{0x7D97L}}, // p_1036->g_783
        {4294967295UL,0xD042C94FL,0UL,1L}, // p_1036->g_792
        {1UL}, // p_1036->g_806
        {0xEE125305L,0xFB6B88EEL,0xC902L,0x1B1DB0D11090E357L}, // p_1036->g_843
        0x7174D2F9L, // p_1036->g_886
        0x293702CBL, // p_1036->g_891
        255UL, // p_1036->g_910
        {0x5CL}, // p_1036->g_923
        &p_1036->g_288, // p_1036->g_926
        {0x61L}, // p_1036->g_952
        {1L}, // p_1036->g_957
        {0x4F957F73L,0x4F957F73L,0x4F957F73L}, // p_1036->g_975
        {1UL,0xEE833F68L,0UL,0x732A512CC059C291L}, // p_1036->g_990
        0x985EC8E5L, // p_1036->g_998
        (-1L), // p_1036->g_1012
        {0L}, // p_1036->g_1029
        sequence_input[get_global_id(0)], // p_1036->global_0_offset
        sequence_input[get_global_id(1)], // p_1036->global_1_offset
        sequence_input[get_global_id(2)], // p_1036->global_2_offset
        sequence_input[get_local_id(0)], // p_1036->local_0_offset
        sequence_input[get_local_id(1)], // p_1036->local_1_offset
        sequence_input[get_local_id(2)], // p_1036->local_2_offset
        sequence_input[get_group_id(0)], // p_1036->group_0_offset
        sequence_input[get_group_id(1)], // p_1036->group_1_offset
        sequence_input[get_group_id(2)], // p_1036->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 119)), permutations[0][get_linear_local_id()])), // p_1036->tid
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_1037 = c_1038;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1036);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1036->g_3, "p_1036->g_3", print_hash_value);
    transparent_crc(p_1036->g_51, "p_1036->g_51", print_hash_value);
    transparent_crc(p_1036->g_53, "p_1036->g_53", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_1036->g_56[i][j].f0, "p_1036->g_56[i][j].f0", print_hash_value);
            transparent_crc(p_1036->g_56[i][j].f1, "p_1036->g_56[i][j].f1", print_hash_value);
            transparent_crc(p_1036->g_56[i][j].f2, "p_1036->g_56[i][j].f2", print_hash_value);
            transparent_crc(p_1036->g_56[i][j].f3, "p_1036->g_56[i][j].f3", print_hash_value);

        }
    }
    transparent_crc(p_1036->g_76, "p_1036->g_76", print_hash_value);
    transparent_crc(p_1036->g_77, "p_1036->g_77", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1036->g_80[i], "p_1036->g_80[i]", print_hash_value);

    }
    transparent_crc(p_1036->g_86, "p_1036->g_86", print_hash_value);
    transparent_crc(p_1036->g_98, "p_1036->g_98", print_hash_value);
    transparent_crc(p_1036->g_119.f0, "p_1036->g_119.f0", print_hash_value);
    transparent_crc(p_1036->g_119.f1, "p_1036->g_119.f1", print_hash_value);
    transparent_crc(p_1036->g_119.f2, "p_1036->g_119.f2", print_hash_value);
    transparent_crc(p_1036->g_119.f3, "p_1036->g_119.f3", print_hash_value);
    transparent_crc(p_1036->g_127.f0, "p_1036->g_127.f0", print_hash_value);
    transparent_crc(p_1036->g_138.f0, "p_1036->g_138.f0", print_hash_value);
    transparent_crc(p_1036->g_138.f1, "p_1036->g_138.f1", print_hash_value);
    transparent_crc(p_1036->g_138.f2, "p_1036->g_138.f2", print_hash_value);
    transparent_crc(p_1036->g_138.f3, "p_1036->g_138.f3", print_hash_value);
    transparent_crc(p_1036->g_142, "p_1036->g_142", print_hash_value);
    transparent_crc(p_1036->g_143, "p_1036->g_143", print_hash_value);
    transparent_crc(p_1036->g_179, "p_1036->g_179", print_hash_value);
    transparent_crc(p_1036->g_184.f0, "p_1036->g_184.f0", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_1036->g_201[i][j], "p_1036->g_201[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1036->g_203, "p_1036->g_203", print_hash_value);
    transparent_crc(p_1036->g_205, "p_1036->g_205", print_hash_value);
    transparent_crc(p_1036->g_209.f0, "p_1036->g_209.f0", print_hash_value);
    transparent_crc(p_1036->g_209.f1, "p_1036->g_209.f1", print_hash_value);
    transparent_crc(p_1036->g_209.f2, "p_1036->g_209.f2", print_hash_value);
    transparent_crc(p_1036->g_209.f3, "p_1036->g_209.f3", print_hash_value);
    transparent_crc(p_1036->g_212, "p_1036->g_212", print_hash_value);
    transparent_crc(p_1036->g_214, "p_1036->g_214", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 2; j++)
        {
            transparent_crc(p_1036->g_228[i][j].f0, "p_1036->g_228[i][j].f0", print_hash_value);

        }
    }
    transparent_crc(p_1036->g_231, "p_1036->g_231", print_hash_value);
    transparent_crc(p_1036->g_246, "p_1036->g_246", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 6; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_1036->g_254[i][j][k], "p_1036->g_254[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1036->g_258, "p_1036->g_258", print_hash_value);
    transparent_crc(p_1036->g_259, "p_1036->g_259", print_hash_value);
    transparent_crc(p_1036->g_280, "p_1036->g_280", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1036->g_321[i], "p_1036->g_321[i]", print_hash_value);

    }
    transparent_crc(p_1036->g_341, "p_1036->g_341", print_hash_value);
    transparent_crc(p_1036->g_368.f0, "p_1036->g_368.f0", print_hash_value);
    transparent_crc(p_1036->g_380.f0, "p_1036->g_380.f0", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_1036->g_392[i][j][k], "p_1036->g_392[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1036->g_394, "p_1036->g_394", print_hash_value);
    transparent_crc(p_1036->g_399.f0, "p_1036->g_399.f0", print_hash_value);
    transparent_crc(p_1036->g_399.f1, "p_1036->g_399.f1", print_hash_value);
    transparent_crc(p_1036->g_399.f2, "p_1036->g_399.f2", print_hash_value);
    transparent_crc(p_1036->g_399.f3, "p_1036->g_399.f3", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1036->g_448[i].f0, "p_1036->g_448[i].f0", print_hash_value);

    }
    transparent_crc(p_1036->g_462.f0, "p_1036->g_462.f0", print_hash_value);
    transparent_crc(p_1036->g_462.f1, "p_1036->g_462.f1", print_hash_value);
    transparent_crc(p_1036->g_462.f2, "p_1036->g_462.f2", print_hash_value);
    transparent_crc(p_1036->g_462.f3, "p_1036->g_462.f3", print_hash_value);
    transparent_crc(p_1036->g_485.f0, "p_1036->g_485.f0", print_hash_value);
    transparent_crc(p_1036->g_497, "p_1036->g_497", print_hash_value);
    transparent_crc(p_1036->g_503, "p_1036->g_503", print_hash_value);
    transparent_crc(p_1036->g_574, "p_1036->g_574", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1036->g_609[i], "p_1036->g_609[i]", print_hash_value);

    }
    transparent_crc(p_1036->g_616, "p_1036->g_616", print_hash_value);
    transparent_crc(p_1036->g_641.f0, "p_1036->g_641.f0", print_hash_value);
    transparent_crc(p_1036->g_641.f1, "p_1036->g_641.f1", print_hash_value);
    transparent_crc(p_1036->g_641.f2, "p_1036->g_641.f2", print_hash_value);
    transparent_crc(p_1036->g_641.f3, "p_1036->g_641.f3", print_hash_value);
    transparent_crc(p_1036->g_643.f0, "p_1036->g_643.f0", print_hash_value);
    transparent_crc(p_1036->g_643.f1, "p_1036->g_643.f1", print_hash_value);
    transparent_crc(p_1036->g_643.f2, "p_1036->g_643.f2", print_hash_value);
    transparent_crc(p_1036->g_643.f3, "p_1036->g_643.f3", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 10; j++)
        {
            for (k = 0; k < 9; k++)
            {
                transparent_crc(p_1036->g_679[i][j][k], "p_1036->g_679[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1036->g_681.f0, "p_1036->g_681.f0", print_hash_value);
    transparent_crc(p_1036->g_681.f1, "p_1036->g_681.f1", print_hash_value);
    transparent_crc(p_1036->g_681.f2, "p_1036->g_681.f2", print_hash_value);
    transparent_crc(p_1036->g_681.f3, "p_1036->g_681.f3", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1036->g_686[i].f0, "p_1036->g_686[i].f0", print_hash_value);
        transparent_crc(p_1036->g_686[i].f1, "p_1036->g_686[i].f1", print_hash_value);
        transparent_crc(p_1036->g_686[i].f2, "p_1036->g_686[i].f2", print_hash_value);
        transparent_crc(p_1036->g_686[i].f3, "p_1036->g_686[i].f3", print_hash_value);

    }
    transparent_crc(p_1036->g_747.f0, "p_1036->g_747.f0", print_hash_value);
    transparent_crc(p_1036->g_747.f1, "p_1036->g_747.f1", print_hash_value);
    transparent_crc(p_1036->g_747.f2, "p_1036->g_747.f2", print_hash_value);
    transparent_crc(p_1036->g_747.f3, "p_1036->g_747.f3", print_hash_value);
    transparent_crc(p_1036->g_748.f0, "p_1036->g_748.f0", print_hash_value);
    transparent_crc(p_1036->g_748.f1, "p_1036->g_748.f1", print_hash_value);
    transparent_crc(p_1036->g_748.f2, "p_1036->g_748.f2", print_hash_value);
    transparent_crc(p_1036->g_748.f3, "p_1036->g_748.f3", print_hash_value);
    transparent_crc(p_1036->g_749.f0, "p_1036->g_749.f0", print_hash_value);
    transparent_crc(p_1036->g_749.f1, "p_1036->g_749.f1", print_hash_value);
    transparent_crc(p_1036->g_749.f2, "p_1036->g_749.f2", print_hash_value);
    transparent_crc(p_1036->g_749.f3, "p_1036->g_749.f3", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1036->g_783[i].f0, "p_1036->g_783[i].f0", print_hash_value);

    }
    transparent_crc(p_1036->g_792.f0, "p_1036->g_792.f0", print_hash_value);
    transparent_crc(p_1036->g_792.f1, "p_1036->g_792.f1", print_hash_value);
    transparent_crc(p_1036->g_792.f2, "p_1036->g_792.f2", print_hash_value);
    transparent_crc(p_1036->g_792.f3, "p_1036->g_792.f3", print_hash_value);
    transparent_crc(p_1036->g_806.f0, "p_1036->g_806.f0", print_hash_value);
    transparent_crc(p_1036->g_843.f0, "p_1036->g_843.f0", print_hash_value);
    transparent_crc(p_1036->g_843.f1, "p_1036->g_843.f1", print_hash_value);
    transparent_crc(p_1036->g_843.f2, "p_1036->g_843.f2", print_hash_value);
    transparent_crc(p_1036->g_843.f3, "p_1036->g_843.f3", print_hash_value);
    transparent_crc(p_1036->g_886, "p_1036->g_886", print_hash_value);
    transparent_crc(p_1036->g_891, "p_1036->g_891", print_hash_value);
    transparent_crc(p_1036->g_910, "p_1036->g_910", print_hash_value);
    transparent_crc(p_1036->g_923.f0, "p_1036->g_923.f0", print_hash_value);
    transparent_crc(p_1036->g_952.f0, "p_1036->g_952.f0", print_hash_value);
    transparent_crc(p_1036->g_957.f0, "p_1036->g_957.f0", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_1036->g_975[i], "p_1036->g_975[i]", print_hash_value);

    }
    transparent_crc(p_1036->g_990.f0, "p_1036->g_990.f0", print_hash_value);
    transparent_crc(p_1036->g_990.f1, "p_1036->g_990.f1", print_hash_value);
    transparent_crc(p_1036->g_990.f2, "p_1036->g_990.f2", print_hash_value);
    transparent_crc(p_1036->g_990.f3, "p_1036->g_990.f3", print_hash_value);
    transparent_crc(p_1036->g_998, "p_1036->g_998", print_hash_value);
    transparent_crc(p_1036->g_1012, "p_1036->g_1012", print_hash_value);
    transparent_crc(p_1036->g_1029.f0, "p_1036->g_1029.f0", print_hash_value);
    transparent_crc(p_1036->l_comm_values[get_linear_local_id()], "p_1036->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_1036->g_comm_values[get_linear_group_id() * 119 + get_linear_local_id()], "p_1036->g_comm_values[get_linear_group_id() * 119 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
