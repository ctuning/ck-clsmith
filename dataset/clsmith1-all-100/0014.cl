// --atomics 33 ---atomic_reductions ---fake_divergence ---inter_thread_comm -g 98,68,1 -l 7,17,1
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
{116,110,21,28,88,90,49,35,72,96,14,27,39,83,74,114,47,11,52,31,23,118,106,67,92,101,41,48,1,117,80,8,66,32,64,77,16,99,2,29,107,71,76,42,60,84,4,46,97,75,59,20,70,30,5,103,61,105,7,44,112,0,58,113,25,89,94,95,104,56,10,65,86,82,34,93,62,33,36,108,53,109,98,18,73,40,45,9,78,79,51,24,19,55,115,81,102,68,3,111,85,54,37,22,26,13,38,91,15,69,6,57,12,100,43,63,17,87,50}, // permutation 0
{90,23,114,111,18,72,85,4,19,33,31,37,34,58,56,13,108,89,104,22,45,93,68,115,14,95,41,61,75,81,105,109,38,118,40,80,35,27,1,49,79,48,78,52,53,24,54,29,25,55,98,32,66,101,116,88,64,77,100,3,11,74,76,83,71,117,8,94,39,82,17,112,92,12,91,6,84,28,43,47,97,42,2,44,9,15,57,16,62,5,10,26,107,103,21,65,59,99,86,73,51,96,110,69,67,46,70,113,30,63,106,7,102,87,0,36,50,60,20}, // permutation 1
{7,80,56,54,45,86,51,59,22,17,92,9,53,111,25,103,20,38,19,36,102,73,44,110,70,62,40,85,31,41,79,34,60,75,1,76,93,30,67,21,63,107,10,37,108,28,65,82,14,118,72,47,6,105,100,71,43,57,99,2,11,0,104,90,13,42,95,48,8,112,68,35,46,24,84,106,55,114,101,77,32,74,52,49,115,97,33,3,89,26,50,39,23,18,87,4,29,12,117,94,16,91,98,116,15,69,96,27,64,109,61,83,66,78,58,5,88,81,113}, // permutation 2
{113,5,15,93,2,41,26,95,61,31,103,13,18,69,57,83,68,74,91,101,86,21,64,30,75,96,82,9,79,77,73,63,25,87,62,67,116,80,3,43,7,40,24,100,38,111,112,29,49,52,81,11,45,99,56,19,66,92,107,36,22,88,14,76,97,34,104,53,55,90,105,58,46,65,51,117,20,70,16,39,47,118,106,0,78,35,85,23,71,27,32,114,50,54,102,4,72,89,59,17,60,109,10,28,94,1,115,44,84,48,6,42,98,33,108,8,12,37,110}, // permutation 3
{79,26,42,32,85,12,72,31,110,111,19,94,117,27,49,115,74,53,50,75,109,17,73,78,9,99,105,88,116,40,118,114,64,11,10,66,59,108,91,83,90,62,101,51,69,1,30,63,3,20,92,86,93,82,67,8,58,39,104,87,43,41,60,107,84,38,96,44,29,35,103,81,61,37,113,95,70,76,33,68,80,56,57,34,7,65,4,6,97,89,21,18,77,15,5,48,112,23,98,52,106,100,55,54,25,36,46,16,13,102,0,47,28,24,71,45,2,22,14}, // permutation 4
{36,100,59,102,60,79,42,88,3,117,10,14,35,77,46,70,39,5,86,11,30,107,58,72,65,62,78,25,0,101,29,44,66,13,61,4,1,94,91,115,32,98,90,118,40,93,114,33,24,52,109,106,67,105,68,103,73,28,26,18,27,20,82,85,87,19,96,111,23,108,41,81,80,50,64,63,113,7,37,55,95,53,8,48,54,84,92,12,16,9,97,49,112,47,51,43,56,83,2,89,57,17,116,34,38,69,74,45,31,22,6,71,110,21,99,76,104,15,75}, // permutation 5
{7,114,107,2,36,20,29,96,61,31,81,79,60,105,57,80,55,84,98,76,46,45,27,34,32,91,93,12,116,103,73,75,41,51,53,16,88,102,65,49,58,85,17,100,71,5,118,106,40,68,22,83,33,9,35,15,59,86,89,39,14,90,28,109,48,13,47,10,63,38,8,92,87,74,56,43,50,77,82,67,115,44,64,21,24,95,42,66,62,97,18,11,4,23,94,112,37,26,3,70,1,19,25,6,69,30,99,0,78,101,104,117,110,54,52,111,108,72,113}, // permutation 6
{61,86,46,18,87,53,36,30,29,72,109,84,89,98,108,59,38,95,100,42,20,6,92,63,70,1,82,104,41,114,4,14,26,105,17,27,35,73,68,11,88,106,69,47,74,103,49,10,113,5,93,54,79,57,117,77,64,2,23,80,12,110,85,22,19,9,51,65,96,40,13,32,83,62,55,16,33,25,97,90,76,75,56,50,71,107,116,0,111,24,112,15,78,58,8,31,99,66,60,118,39,67,91,44,101,102,34,94,43,45,37,7,3,115,28,52,21,48,81}, // permutation 7
{84,85,33,98,83,95,92,28,23,100,51,32,4,63,49,94,1,99,42,19,103,37,82,0,38,36,50,14,48,112,40,114,31,47,101,110,21,34,54,76,108,67,71,75,43,3,109,2,8,66,113,12,89,115,22,72,73,13,111,96,11,91,27,45,26,74,62,41,118,86,106,65,57,107,116,58,35,56,24,7,104,97,93,15,88,6,55,64,117,70,5,25,78,52,44,17,18,61,60,79,77,20,53,69,39,105,80,46,68,59,87,9,16,102,29,10,90,81,30}, // permutation 8
{79,74,47,94,91,68,66,57,87,59,114,6,39,49,26,28,31,69,56,90,118,10,40,108,67,25,117,96,53,9,50,5,88,38,2,54,58,60,30,78,52,42,4,109,89,36,95,82,41,83,23,81,104,64,8,71,86,22,93,14,13,48,11,18,99,103,44,24,70,92,101,105,80,100,27,37,111,85,43,97,73,61,113,76,55,63,7,34,65,46,115,17,51,19,116,15,45,12,72,106,102,32,62,112,33,1,16,107,3,110,84,35,29,21,75,98,77,0,20} // permutation 9
};

// Seed: 14

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   uint32_t  f0;
   int8_t  f1;
   int8_t  f2;
   int32_t  f3;
};

union U1 {
   int64_t  f0;
   int32_t  f1;
};

union U2 {
   volatile int32_t  f0;
   volatile uint8_t  f1;
   uint32_t  f2;
   int8_t * f3;
   volatile int16_t  f4;
};

union U3 {
   uint32_t  f0;
   int8_t  f1;
   int8_t * f2;
   volatile int8_t  f3;
};

union U4 {
   volatile int32_t  f0;
   int8_t * f1;
   volatile int64_t  f2;
   volatile int32_t  f3;
};

union U5 {
   int64_t  f0;
   uint8_t  f1;
   uint64_t  f2;
   uint16_t  f3;
};

struct S6 {
    uint16_t g_9;
    VECTOR(int32_t, 2) g_10;
    int8_t g_19[5];
    int8_t *g_18;
    volatile union U4 g_29;
    volatile VECTOR(int32_t, 4) g_30;
    int8_t g_50[3];
    int32_t g_53[3];
    volatile int32_t g_54;
    int32_t g_55;
    int64_t g_94;
    int8_t *g_104;
    union U2 g_111;
    union U2 *g_115;
    union U2 ** volatile g_114;
    int32_t *g_121;
    int32_t ** volatile g_120;
    int32_t ** volatile g_127;
    int16_t g_140;
    union U5 g_142;
    int32_t ** volatile g_149;
    VECTOR(int32_t, 2) g_155;
    volatile VECTOR(int8_t, 16) g_166;
    volatile VECTOR(int8_t, 8) g_167;
    uint64_t g_191[1];
    volatile VECTOR(int64_t, 16) g_194;
    union U3 g_246;
    volatile int16_t g_249;
    volatile int16_t *g_248;
    volatile int16_t **g_247[4][1];
    volatile union U3 g_270;
    VECTOR(uint64_t, 4) g_272;
    volatile union U0 g_309;
    volatile VECTOR(uint32_t, 8) g_316;
    VECTOR(uint8_t, 4) g_320;
    union U1 g_324;
    VECTOR(uint8_t, 4) g_368;
    VECTOR(int8_t, 16) g_371;
    volatile VECTOR(int8_t, 4) g_373;
    volatile VECTOR(int8_t, 16) g_374;
    union U1 *g_388;
    union U1 ** volatile g_387;
    int32_t g_457;
    volatile VECTOR(uint32_t, 16) g_459;
    int16_t *g_466[7][8][4];
    int16_t **g_465[3][2];
    int16_t g_479;
    VECTOR(int8_t, 4) g_489;
    volatile VECTOR(int8_t, 8) g_490;
    volatile VECTOR(int8_t, 16) g_491;
    uint8_t g_503;
    union U4 g_506;
    int16_t g_521;
    uint32_t g_522;
    VECTOR(uint64_t, 8) g_541;
    int32_t * volatile g_547[2];
    int32_t * volatile g_548;
    union U2 g_570;
    volatile union U3 g_577;
    volatile union U3 *g_576[5];
    VECTOR(int64_t, 8) g_589;
    volatile union U2 g_626[4][3];
    volatile VECTOR(int8_t, 8) g_642;
    volatile int32_t g_655;
    union U0 g_664;
    union U0 ** volatile g_666;
    union U0 ** volatile g_667;
    union U0 *g_669;
    union U0 ** volatile g_668[1];
    union U2 g_671;
    union U4 g_672;
    volatile union U4 g_673;
    VECTOR(uint16_t, 4) g_674;
    VECTOR(int8_t, 8) g_677;
    int64_t g_684;
    union U2 ** volatile g_716;
    union U2 ** volatile g_717;
    union U2 ** volatile g_718;
    volatile VECTOR(int32_t, 2) g_719;
    union U3 *g_766;
    volatile VECTOR(uint16_t, 2) g_929;
    union U2 g_930;
    int64_t g_947;
    volatile VECTOR(uint64_t, 16) g_969;
    VECTOR(int16_t, 4) g_979;
    volatile VECTOR(uint32_t, 8) g_1003;
    VECTOR(uint32_t, 16) g_1005;
    VECTOR(int64_t, 2) g_1009;
    int32_t * volatile *g_1018;
    int32_t * volatile * volatile *g_1017;
    volatile int32_t * volatile g_1052;
    volatile int32_t * volatile *g_1051;
    int64_t *g_1061;
    int32_t g_1071;
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
union U1  func_1(struct S6 * p_1073);
int32_t  func_2(int32_t  p_3, int8_t * p_4, struct S6 * p_1073);
int32_t  func_12(int32_t  p_13, uint16_t * p_14, int8_t * p_15, uint32_t  p_16, union U0  p_17, struct S6 * p_1073);
union U0  func_20(union U1  p_21, uint8_t  p_22, int8_t * p_23, uint16_t * p_24, uint8_t  p_25, struct S6 * p_1073);
union U1  func_26(int64_t  p_27, int64_t  p_28, struct S6 * p_1073);
union U4  func_38(uint64_t  p_39, uint32_t  p_40, uint16_t * p_41, struct S6 * p_1073);
uint64_t  func_42(uint64_t  p_43, int8_t * p_44, struct S6 * p_1073);
union U1  func_46(int8_t * p_47, int8_t * p_48, struct S6 * p_1073);
union U1  func_84(int8_t * p_85, int64_t  p_86, struct S6 * p_1073);
int8_t * func_87(uint16_t * p_88, int8_t * p_89, int32_t * p_90, int32_t  p_91, struct S6 * p_1073);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1073->l_comm_values p_1073->g_10 p_1073->g_18 p_1073->g_19 p_1073->g_9 p_1073->g_29 p_1073->g_30 p_1073->g_53 p_1073->g_55 p_1073->g_94 p_1073->g_50 p_1073->g_114 p_1073->g_120 p_1073->g_127 p_1073->g_246 p_1073->g_247 p_1073->g_270 p_1073->g_166 p_1073->g_121 p_1073->g_309 p_1073->g_comm_values p_1073->g_104 p_1073->g_248 p_1073->g_249 p_1073->g_149 p_1073->g_387 p_1073->g_246.f0 p_1073->g_371 p_1073->g_324 p_1073->g_111 p_1073->g_111.f0 p_1073->g_459 p_1073->g_29.f0 p_1073->g_142 p_1073->g_479 permutations p_1073->g_506 p_1073->g_142.f0 p_1073->g_522 p_1073->g_491 p_1073->g_191 p_1073->g_316 p_1073->g_155 p_1073->g_541 p_1073->g_548 p_1073->g_457 p_1073->g_115 p_1073->g_576 p_1073->g_368 p_1073->g_589 p_1073->g_194 p_1073->g_626 p_1073->g_388 p_1073->g_642 p_1073->g_272 p_1073->g_503 p_1073->g_521 p_1073->g_655 p_1073->g_324.f0 p_1073->g_671 p_1073->g_672 p_1073->g_673 p_1073->g_684 p_1073->g_718 p_1073->g_664.f0 p_1073->g_140 p_1073->g_929 p_1073->g_930 p_1073->g_664.f1 p_1073->g_677 p_1073->g_947 p_1073->g_969 p_1073->g_979 p_1073->g_1003 p_1073->g_1005 p_1073->g_1009 p_1073->g_1017 p_1073->g_1051 p_1073->g_489 p_1073->g_1071
 * writes: p_1073->g_9 p_1073->g_53 p_1073->g_55 p_1073->g_94 p_1073->g_104 p_1073->g_115 p_1073->g_121 p_1073->g_142.f1 p_1073->g_50 p_1073->g_140 p_1073->g_320 p_1073->g_388 p_1073->g_457 p_1073->g_465 p_1073->g_191 p_1073->g_479 p_1073->g_246.f1 p_1073->g_142.f3 p_1073->g_503 p_1073->g_142.f0 p_1073->g_522 p_1073->g_comm_values p_1073->g_324 p_1073->g_521 p_1073->g_664.f0 p_1073->g_766 p_1073->g_684 p_1073->g_664.f1 p_1073->g_19 p_1073->g_466 p_1073->g_1051 p_1073->g_1005 p_1073->g_1061 p_1073->g_1071
 */
union U1  func_1(struct S6 * p_1073)
{ /* block id: 4 */
    union U1 l_5 = {0L};
    uint16_t *l_8 = &p_1073->g_9;
    uint32_t l_11[4] = {0UL,0UL,0UL,0UL};
    int8_t *l_936 = (void*)0;
    int32_t *l_1069 = &p_1073->g_53[1];
    int32_t *l_1070 = &p_1073->g_1071;
    union U1 l_1072 = {0x66B76AD09415D250L};
    int i;
    (*l_1070) |= ((*l_1069) = func_2((l_5 , (safe_add_func_int32_t_s_s((((+p_1073->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1073->tid, 119))]) >= ((*l_8) = ((VECTOR(uint16_t, 2))(3UL, 1UL)).hi)) || ((l_11[1] ^= ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(p_1073->g_10.xxyy)).xywxwzzxwxyzywxw)).sa) ^ func_12(l_5.f0, &p_1073->g_9, p_1073->g_18, (p_1073->g_19[4] < p_1073->g_9), func_20(func_26((p_1073->g_29 , l_5.f0), l_5.f0, p_1073), l_5.f0, &p_1073->g_19[4], l_8, l_5.f0, p_1073), p_1073))), l_5.f0))), l_936, p_1073));
    return l_1072;
}


/* ------------------------------------------ */
/* 
 * reads : p_1073->g_664.f1 p_1073->g_30 p_1073->g_677 p_1073->g_18 p_1073->g_541 p_1073->g_947 p_1073->g_191 p_1073->g_55 p_1073->g_969 p_1073->g_272 p_1073->g_521 p_1073->g_979 p_1073->g_522 p_1073->g_1003 p_1073->g_1005 p_1073->g_1009 p_1073->g_1017 p_1073->g_94 p_1073->g_19 p_1073->g_1051 p_1073->g_489 p_1073->g_50 permutations p_1073->g_104 p_1073->g_270 p_1073->g_506 p_1073->g_491 p_1073->g_53 p_1073->g_10 p_1073->g_316
 * writes: p_1073->g_664.f1 p_1073->g_19 p_1073->g_191 p_1073->g_55 p_1073->g_9 p_1073->g_324.f1 p_1073->g_121 p_1073->g_522 p_1073->g_466 p_1073->g_503 p_1073->g_142.f1 p_1073->g_1051 p_1073->g_1005 p_1073->g_1061 p_1073->g_50 p_1073->g_246.f1 p_1073->g_388 p_1073->g_142.f3 p_1073->g_465 p_1073->g_142.f0 p_1073->g_53 p_1073->g_94
 */
int32_t  func_2(int32_t  p_3, int8_t * p_4, struct S6 * p_1073)
{ /* block id: 535 */
    uint64_t l_946 = 0UL;
    union U2 **l_960 = (void*)0;
    VECTOR(uint64_t, 16) l_967 = (VECTOR(uint64_t, 16))(0UL, (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 18446744073709551615UL), 18446744073709551615UL), 18446744073709551615UL, 0UL, 18446744073709551615UL, (VECTOR(uint64_t, 2))(0UL, 18446744073709551615UL), (VECTOR(uint64_t, 2))(0UL, 18446744073709551615UL), 0UL, 18446744073709551615UL, 0UL, 18446744073709551615UL);
    VECTOR(uint64_t, 4) l_970 = (VECTOR(uint64_t, 4))(0x57C2C2297C193A22L, (VECTOR(uint64_t, 2))(0x57C2C2297C193A22L, 18446744073709551615UL), 18446744073709551615UL);
    VECTOR(int16_t, 4) l_981 = (VECTOR(int16_t, 4))(0x5AF0L, (VECTOR(int16_t, 2))(0x5AF0L, 0x255FL), 0x255FL);
    int16_t *l_1007 = &p_1073->g_521;
    int32_t l_1021[6][7] = {{0x26FBAC59L,0x29B156B2L,8L,0x29B156B2L,0x26FBAC59L,0x26FBAC59L,0x29B156B2L},{0x26FBAC59L,0x29B156B2L,8L,0x29B156B2L,0x26FBAC59L,0x26FBAC59L,0x29B156B2L},{0x26FBAC59L,0x29B156B2L,8L,0x29B156B2L,0x26FBAC59L,0x26FBAC59L,0x29B156B2L},{0x26FBAC59L,0x29B156B2L,8L,0x29B156B2L,0x26FBAC59L,0x26FBAC59L,0x29B156B2L},{0x26FBAC59L,0x29B156B2L,8L,0x29B156B2L,0x26FBAC59L,0x26FBAC59L,0x29B156B2L},{0x26FBAC59L,0x29B156B2L,8L,0x29B156B2L,0x26FBAC59L,0x26FBAC59L,0x29B156B2L}};
    int32_t l_1067 = 0x783CEDA5L;
    int32_t l_1068 = 0x79FCC5BAL;
    int i, j;
    for (p_1073->g_664.f1 = 25; (p_1073->g_664.f1 >= (-9)); p_1073->g_664.f1--)
    { /* block id: 538 */
        int8_t *l_939 = &p_1073->g_664.f1;
        VECTOR(int64_t, 8) l_940 = (VECTOR(int64_t, 8))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 0x5FCC19B20C2AECBFL), 0x5FCC19B20C2AECBFL), 0x5FCC19B20C2AECBFL, (-1L), 0x5FCC19B20C2AECBFL);
        union U5 *l_941 = &p_1073->g_142;
        union U5 **l_942 = (void*)0;
        union U5 **l_943 = &l_941;
        union U1 **l_948 = &p_1073->g_388;
        int32_t **l_953 = &p_1073->g_121;
        int32_t ***l_952 = &l_953;
        int16_t **l_973 = &p_1073->g_466[1][5][3];
        int64_t **l_976 = (void*)0;
        VECTOR(uint32_t, 8) l_998 = (VECTOR(uint32_t, 8))(0xC8B57128L, (VECTOR(uint32_t, 4))(0xC8B57128L, (VECTOR(uint32_t, 2))(0xC8B57128L, 0x8C99325EL), 0x8C99325EL), 0x8C99325EL, 0xC8B57128L, 0x8C99325EL);
        uint32_t *l_1054 = (void*)0;
        uint32_t *l_1055 = (void*)0;
        uint32_t *l_1056[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int64_t *l_1059[5];
        int64_t **l_1060[6];
        int32_t *l_1066[1][5][3] = {{{&l_1021[0][5],&l_1021[0][5],&l_1021[0][5]},{&l_1021[0][5],&l_1021[0][5],&l_1021[0][5]},{&l_1021[0][5],&l_1021[0][5],&l_1021[0][5]},{&l_1021[0][5],&l_1021[0][5],&l_1021[0][5]},{&l_1021[0][5],&l_1021[0][5],&l_1021[0][5]}}};
        int i, j, k;
        for (i = 0; i < 5; i++)
            l_1059[i] = &p_1073->g_94;
        for (i = 0; i < 6; i++)
            l_1060[i] = (void*)0;
        if (((((p_1073->g_30.z < p_1073->g_677.s7) , l_939) != p_4) <= (((VECTOR(uint64_t, 16))(max(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 8))(mad_sat(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(0x58398D757C59BCAFL, 0xD53DCCFA5C5611F4L)).xyxyxyyyyyyxxxxy)).even, ((VECTOR(uint64_t, 2))(clz(((VECTOR(uint64_t, 2))(abs(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(l_940.s6663)).zzxxxyyz)).s7572755321411217)).sf2)))))).yyyxyyxy, ((VECTOR(uint64_t, 16))(p_3, (((*l_943) = l_941) != &p_1073->g_142), ((VECTOR(uint64_t, 2))(mad_sat(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 2))(18446744073709551615UL, 0x02C78AF7560E6E99L)))), ((VECTOR(uint64_t, 16))(abs_diff(((VECTOR(int64_t, 16))(p_3, ((safe_sub_func_uint32_t_u_u((((((*p_1073->g_18) = (l_940.s5 & l_946)) | 0x2BL) > p_3) < l_946), l_946)) <= p_3), 8L, 0x4136212B31CE80C5L, 0x3F09B50C0F07F0BEL, p_1073->g_541.s3, p_1073->g_947, ((VECTOR(int64_t, 8))(0x51C7102D2B417CCFL)), 0x09AB600F21ADFFEAL)), ((VECTOR(int64_t, 16))(0x09CE75146AD8E1E1L))))).sd3, ((VECTOR(uint64_t, 2))(0x52F4B7B6EC2FECCAL))))), ((VECTOR(uint64_t, 4))(18446744073709551609UL)), 0x4B6F15D9CCB53972L, 0xC5566EEE69512179L, 0xD1D0A0E41F321C5AL, 0xA3C922A51C974289L, l_940.s7, 18446744073709551609UL, 0x21ECBC7059B970E3L, 0x0887B721C12EFF9AL)).lo))).lo)).xyzzwzywwxwwzxwy, ((VECTOR(uint64_t, 16))(0x3E05A97F019A7627L))))).sa != p_1073->g_541.s5)))
        { /* block id: 541 */
            uint64_t *l_949 = &p_1073->g_191[0];
            VECTOR(uint64_t, 16) l_968 = (VECTOR(uint64_t, 16))(0x9CA11821B963A290L, (VECTOR(uint64_t, 4))(0x9CA11821B963A290L, (VECTOR(uint64_t, 2))(0x9CA11821B963A290L, 0UL), 0UL), 0UL, 0x9CA11821B963A290L, 0UL, (VECTOR(uint64_t, 2))(0x9CA11821B963A290L, 0UL), (VECTOR(uint64_t, 2))(0x9CA11821B963A290L, 0UL), 0x9CA11821B963A290L, 0UL, 0x9CA11821B963A290L, 0UL);
            int64_t **l_977 = (void*)0;
            int32_t *l_978 = (void*)0;
            VECTOR(int16_t, 8) l_980 = (VECTOR(int16_t, 8))(0x658AL, (VECTOR(int16_t, 4))(0x658AL, (VECTOR(int16_t, 2))(0x658AL, 0x7964L), 0x7964L), 0x7964L, 0x658AL, 0x7964L);
            VECTOR(int32_t, 8) l_1004 = (VECTOR(int32_t, 8))(4L, (VECTOR(int32_t, 4))(4L, (VECTOR(int32_t, 2))(4L, 0x70155452L), 0x70155452L), 0x70155452L, 4L, 0x70155452L);
            int16_t *l_1006[8][1] = {{&p_1073->g_521},{&p_1073->g_521},{&p_1073->g_521},{&p_1073->g_521},{&p_1073->g_521},{&p_1073->g_521},{&p_1073->g_521},{&p_1073->g_521}};
            int i, j;
            if (((((void*)0 != l_948) && ((*l_949)++)) >= ((l_952 != &p_1073->g_149) ^ FAKE_DIVERGE(p_1073->local_0_offset, get_local_id(0), 10))))
            { /* block id: 543 */
                union U2 **l_959 = &p_1073->g_115;
                union U2 ***l_958 = &l_959;
                int32_t l_961 = 0x4A708ABAL;
                int64_t *l_963 = &p_1073->g_947;
                int64_t **l_962 = &l_963;
                int32_t *l_964 = (void*)0;
                int32_t *l_965 = &p_1073->g_324.f1;
                int32_t *l_966 = &p_1073->g_55;
                int16_t ***l_971 = &p_1073->g_465[0][0];
                int16_t ***l_972[3][1];
                uint16_t *l_974 = (void*)0;
                uint16_t *l_975 = &p_1073->g_9;
                int i, j;
                for (i = 0; i < 3; i++)
                {
                    for (j = 0; j < 1; j++)
                        l_972[i][j] = &p_1073->g_465[2][1];
                }
                (*l_965) = (safe_mod_func_uint16_t_u_u(((p_3 | ((safe_mul_func_int8_t_s_s((((*l_958) = (void*)0) != l_960), (((((l_961 & p_3) , l_962) != (void*)0) && ((*l_966) |= l_961)) != ((*l_949) = (~(((((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 16))(mad_sat(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 4))(l_967.sf521)))))).xwyxzzxzyyyyxwzy, ((VECTOR(uint64_t, 16))(mul_hi(((VECTOR(uint64_t, 4))(l_968.s5309)).zzxxzywwzwxxzyww, ((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 4))(p_1073->g_969.s7cae)).odd)).xxxxyyxxyxyyyxxy))), ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 2))(l_970.zx)))).xyyxxxxyyyxxyxyy))))).s81)).xyyxxxyxxyyxxxyy)).s8 , ((*l_975) = ((l_973 = (void*)0) == (void*)0))) < 0x113EL) >= 0x7198C354302D74A2L)))))) == p_1073->g_272.z)) < p_1073->g_521), 0x49C4L));
            }
            else
            { /* block id: 550 */
                uint32_t *l_999 = &p_1073->g_522;
                VECTOR(uint32_t, 4) l_1002 = (VECTOR(uint32_t, 4))(0xD5B4A83DL, (VECTOR(uint32_t, 2))(0xD5B4A83DL, 0x2FB96B35L), 0x2FB96B35L);
                int16_t **l_1008 = &l_1007;
                uint8_t *l_1010 = &p_1073->g_503;
                uint8_t *l_1019 = (void*)0;
                uint8_t *l_1020 = &p_1073->g_142.f1;
                int i;
                l_977 = l_976;
                (*l_953) = l_978;
                p_3 = (((VECTOR(int16_t, 16))(hadd(((VECTOR(int16_t, 4))(p_1073->g_979.zyxy)).zxxyzywyywyyyzwz, ((VECTOR(int16_t, 4))(hadd(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(l_980.s41)), 1L, 0x1DEBL)))), ((VECTOR(int16_t, 4))(l_981.wwzx))))).yzxyzxywzxxwzzyw))).s5 <= (safe_unary_minus_func_int16_t_s((((l_1021[2][3] = (safe_sub_func_int32_t_s_s((((safe_unary_minus_func_int8_t_s((safe_mul_func_int8_t_s_s((~(safe_rshift_func_uint8_t_u_u(((*l_1010) = (safe_add_func_int64_t_s_s((p_3 < (l_967.s1 == FAKE_DIVERGE(p_1073->global_0_offset, get_global_id(0), 10))), (safe_div_func_uint64_t_u_u((safe_rshift_func_uint16_t_u_s((((VECTOR(uint32_t, 8))(rotate(((VECTOR(uint32_t, 8))(0UL, 1UL, (safe_mod_func_uint32_t_u_u(((VECTOR(uint32_t, 4))(l_998.s0421)).x, ((*l_999)++))), ((VECTOR(uint32_t, 4))(l_1002.xyyz)), 0xAAC4D4A2L)), ((VECTOR(uint32_t, 4))(0x00DB8D95L, ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 2))(hadd(((VECTOR(uint32_t, 8))(add_sat(((VECTOR(uint32_t, 4))(p_1073->g_1003.s7475)).wzxyzxww, ((VECTOR(uint32_t, 2))(abs(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(clz(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(l_1004.s5251535436620526)).s21c7)).wwxwyyxwzyzzyxyz))))).lo)).s24))).xyxxyxyy))).s42, ((VECTOR(uint32_t, 4))(p_1073->g_1005.s22af)).odd))))), 0UL)).xxyzxyzx))).s4 , (((*l_973) = l_1006[2][0]) != ((*l_1008) = l_1007))), p_3)), ((VECTOR(int64_t, 4))(p_1073->g_1009.xyxy)).w))))), ((*l_1020) = ((safe_add_func_uint16_t_u_u((safe_add_func_uint16_t_u_u(p_3, (safe_add_func_uint16_t_u_u((0x65C372CCL && (p_1073->g_1017 == (void*)0)), p_3)))), p_1073->g_94)) < p_3))))), 0xC1L)))) , 0x7DL) || (*p_1073->g_18)), p_3))) || l_1002.w) || p_3))));
                p_3 = (safe_rshift_func_uint8_t_u_s(p_3, 2));
            }
            if ((atomic_inc(&p_1073->l_atomic_input[14]) == 0))
            { /* block id: 563 */
                uint8_t l_1024 = 0xF0L;
                uint8_t l_1025 = 255UL;
                uint8_t l_1026 = 0x00L;
                l_1025 = (l_1024 = 0x137617B3L);
                ++l_1026;
                for (l_1025 = 12; (l_1025 <= 10); l_1025--)
                { /* block id: 569 */
                    int32_t l_1031[8] = {0x7F426387L,0x7F426387L,0x7F426387L,0x7F426387L,0x7F426387L,0x7F426387L,0x7F426387L,0x7F426387L};
                    int32_t l_1039 = 0x70CD774BL;
                    uint32_t l_1040 = 0x610ACB50L;
                    int i;
                    for (l_1031[4] = (-24); (l_1031[4] < (-9)); ++l_1031[4])
                    { /* block id: 572 */
                        int8_t l_1034 = 1L;
                        int32_t l_1035[10][2] = {{0x36837288L,0x5E1FAB89L},{0x36837288L,0x5E1FAB89L},{0x36837288L,0x5E1FAB89L},{0x36837288L,0x5E1FAB89L},{0x36837288L,0x5E1FAB89L},{0x36837288L,0x5E1FAB89L},{0x36837288L,0x5E1FAB89L},{0x36837288L,0x5E1FAB89L},{0x36837288L,0x5E1FAB89L},{0x36837288L,0x5E1FAB89L}};
                        uint64_t l_1036 = 0x2F1293558B36FC3BL;
                        int i, j;
                        l_1036--;
                    }
                    l_1039 |= 0x52682833L;
                    if (l_1040)
                    { /* block id: 576 */
                        int32_t l_1042 = 5L;
                        int32_t *l_1041 = &l_1042;
                        l_1041 = (void*)0;
                    }
                    else
                    { /* block id: 578 */
                        uint64_t l_1043 = 0x4A7D1DBE99D3DE34L;
                        int32_t l_1048 = 0x5EA54F00L;
                        int32_t *l_1047 = &l_1048;
                        int32_t **l_1046[2][4] = {{&l_1047,&l_1047,&l_1047,&l_1047},{&l_1047,&l_1047,&l_1047,&l_1047}};
                        int32_t **l_1049[4] = {&l_1047,&l_1047,&l_1047,&l_1047};
                        int32_t **l_1050 = &l_1047;
                        int i, j;
                        --l_1043;
                        l_1050 = (l_1049[2] = l_1046[0][1]);
                    }
                }
                unsigned int result = 0;
                result += l_1024;
                result += l_1025;
                result += l_1026;
                atomic_add(&p_1073->l_special_values[14], result);
            }
            else
            { /* block id: 584 */
                (1 + 1);
            }
            return p_3;
        }
        else
        { /* block id: 588 */
            volatile int32_t * volatile **l_1053 = &p_1073->g_1051;
            (*l_1053) = p_1073->g_1051;
        }
        l_1067 |= ((p_3 ^ (func_38(((l_1021[2][3] = ((((++p_1073->g_1005.sa) != (p_1073->g_489.x , 0xAEDC64EEL)) < ((0x2A74F36DL >= ((p_1073->g_1061 = l_1059[2]) == (void*)0)) <= (safe_lshift_func_int16_t_s_s((!p_3), (safe_mod_func_uint16_t_u_u(65528UL, p_1073->g_50[0])))))) <= p_3)) >= 0x07E6C5E9L), p_3, l_1007, p_1073) , 0x52BF9B32L)) | 0xAC57588FL);
    }
    l_1067 ^= l_1068;
    return l_981.x;
}


/* ------------------------------------------ */
/* 
 * reads : p_1073->g_140 p_1073->g_684 p_1073->g_142.f0 p_1073->g_55 p_1073->g_521 p_1073->g_191 p_1073->g_929 p_1073->g_930 p_1073->g_9
 * writes: p_1073->g_766 p_1073->g_140 p_1073->g_684 p_1073->g_142.f0 p_1073->g_521 p_1073->g_191 p_1073->g_9 p_1073->g_55
 */
int32_t  func_12(int32_t  p_13, uint16_t * p_14, int8_t * p_15, uint32_t  p_16, union U0  p_17, struct S6 * p_1073)
{ /* block id: 398 */
    int32_t *l_762 = &p_1073->g_55;
    int32_t **l_763 = &l_762;
    union U3 *l_764 = &p_1073->g_246;
    union U3 **l_765[3][10];
    VECTOR(int32_t, 4) l_902 = (VECTOR(int32_t, 4))(0x20DB5E90L, (VECTOR(int32_t, 2))(0x20DB5E90L, 0L), 0L);
    int8_t l_909 = 0L;
    int32_t *l_921 = (void*)0;
    int i, j;
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 10; j++)
            l_765[i][j] = &l_764;
    }
    (*l_763) = l_762;
    p_1073->g_766 = l_764;
    if ((atomic_inc(&p_1073->l_atomic_input[16]) == 3))
    { /* block id: 402 */
        int16_t l_767 = 0x3EABL;
        if (l_767)
        { /* block id: 403 */
            union U1 l_768 = {0x26883154DC9894F8L};
            int8_t l_769 = 0x6AL;
            uint32_t l_770 = 0x047EC243L;
            int32_t l_772 = (-1L);
            int32_t *l_771 = &l_772;
            int32_t *l_773 = &l_772;
            l_770 |= (l_768 , l_769);
            l_773 = l_771;
        }
        else
        { /* block id: 406 */
            VECTOR(int32_t, 2) l_774 = (VECTOR(int32_t, 2))(0x1C24C862L, 0x595ADAE3L);
            int i;
            if (((VECTOR(int32_t, 4))(l_774.yyxx)).w)
            { /* block id: 407 */
                uint64_t l_775 = 18446744073709551615UL;
                int64_t l_776 = (-1L);
                uint64_t l_777 = 0x6BCFCC0865DA8C81L;
                int32_t l_820 = 0x4B81D07DL;
                int32_t *l_819 = &l_820;
                int32_t *l_821 = &l_820;
                l_776 ^= l_775;
                if (l_777)
                { /* block id: 409 */
                    union U2 *l_778 = (void*)0;
                    union U2 l_780 = {0L};/* VOLATILE GLOBAL l_780 */
                    union U2 *l_779 = &l_780;
                    VECTOR(int16_t, 16) l_791 = (VECTOR(int16_t, 16))(0x4C9CL, (VECTOR(int16_t, 4))(0x4C9CL, (VECTOR(int16_t, 2))(0x4C9CL, (-7L)), (-7L)), (-7L), 0x4C9CL, (-7L), (VECTOR(int16_t, 2))(0x4C9CL, (-7L)), (VECTOR(int16_t, 2))(0x4C9CL, (-7L)), 0x4C9CL, (-7L), 0x4C9CL, (-7L));
                    union U1 l_792[8] = {{7L},{7L},{7L},{7L},{7L},{7L},{7L},{7L}};
                    union U1 l_793 = {0x185DA1FD1F9C1908L};
                    VECTOR(int32_t, 2) l_794 = (VECTOR(int32_t, 2))(0x0EC3E772L, 0x2E607662L);
                    int32_t l_795 = (-1L);
                    int32_t l_813 = 1L;
                    VECTOR(uint64_t, 16) l_814 = (VECTOR(uint64_t, 16))(0UL, (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 18446744073709551615UL), 18446744073709551615UL), 18446744073709551615UL, 0UL, 18446744073709551615UL, (VECTOR(uint64_t, 2))(0UL, 18446744073709551615UL), (VECTOR(uint64_t, 2))(0UL, 18446744073709551615UL), 0UL, 18446744073709551615UL, 0UL, 18446744073709551615UL);
                    int64_t l_815[3];
                    uint16_t l_816 = 5UL;
                    int i;
                    for (i = 0; i < 3; i++)
                        l_815[i] = 1L;
                    l_779 = l_778;
                    for (l_780.f2 = 0; (l_780.f2 != 12); l_780.f2++)
                    { /* block id: 413 */
                        int32_t l_784 = 0x1285AD9DL;
                        int32_t *l_783 = &l_784;
                        int32_t *l_785 = (void*)0;
                        int32_t *l_786 = &l_784;
                        int32_t *l_787 = &l_784;
                        int32_t *l_788 = &l_784;
                        int32_t *l_789 = &l_784;
                        uint16_t **l_790[7];
                        int i;
                        for (i = 0; i < 7; i++)
                            l_790[i] = (void*)0;
                        l_786 = (l_785 = l_783);
                        l_774.x = (-9L);
                        l_789 = (l_788 = l_787);
                        l_790[4] = l_790[5];
                    }
                    if ((((VECTOR(int16_t, 8))(l_791.s3b617acc)).s1 , (l_795 = ((l_793 = l_792[1]) , (l_774.y = ((VECTOR(int32_t, 8))(l_794.yxxyxyyx)).s6)))))
                    { /* block id: 424 */
                        int32_t l_797 = 0x43229438L;
                        int32_t *l_796[10][2][10] = {{{&l_797,&l_797,(void*)0,&l_797,&l_797,&l_797,&l_797,&l_797,&l_797,&l_797},{&l_797,&l_797,(void*)0,&l_797,&l_797,&l_797,&l_797,&l_797,&l_797,&l_797}},{{&l_797,&l_797,(void*)0,&l_797,&l_797,&l_797,&l_797,&l_797,&l_797,&l_797},{&l_797,&l_797,(void*)0,&l_797,&l_797,&l_797,&l_797,&l_797,&l_797,&l_797}},{{&l_797,&l_797,(void*)0,&l_797,&l_797,&l_797,&l_797,&l_797,&l_797,&l_797},{&l_797,&l_797,(void*)0,&l_797,&l_797,&l_797,&l_797,&l_797,&l_797,&l_797}},{{&l_797,&l_797,(void*)0,&l_797,&l_797,&l_797,&l_797,&l_797,&l_797,&l_797},{&l_797,&l_797,(void*)0,&l_797,&l_797,&l_797,&l_797,&l_797,&l_797,&l_797}},{{&l_797,&l_797,(void*)0,&l_797,&l_797,&l_797,&l_797,&l_797,&l_797,&l_797},{&l_797,&l_797,(void*)0,&l_797,&l_797,&l_797,&l_797,&l_797,&l_797,&l_797}},{{&l_797,&l_797,(void*)0,&l_797,&l_797,&l_797,&l_797,&l_797,&l_797,&l_797},{&l_797,&l_797,(void*)0,&l_797,&l_797,&l_797,&l_797,&l_797,&l_797,&l_797}},{{&l_797,&l_797,(void*)0,&l_797,&l_797,&l_797,&l_797,&l_797,&l_797,&l_797},{&l_797,&l_797,(void*)0,&l_797,&l_797,&l_797,&l_797,&l_797,&l_797,&l_797}},{{&l_797,&l_797,(void*)0,&l_797,&l_797,&l_797,&l_797,&l_797,&l_797,&l_797},{&l_797,&l_797,(void*)0,&l_797,&l_797,&l_797,&l_797,&l_797,&l_797,&l_797}},{{&l_797,&l_797,(void*)0,&l_797,&l_797,&l_797,&l_797,&l_797,&l_797,&l_797},{&l_797,&l_797,(void*)0,&l_797,&l_797,&l_797,&l_797,&l_797,&l_797,&l_797}},{{&l_797,&l_797,(void*)0,&l_797,&l_797,&l_797,&l_797,&l_797,&l_797,&l_797},{&l_797,&l_797,(void*)0,&l_797,&l_797,&l_797,&l_797,&l_797,&l_797,&l_797}}};
                        int32_t *l_798 = &l_797;
                        uint16_t l_799 = 0x6748L;
                        int i, j, k;
                        l_798 = l_796[5][1][3];
                        l_794.x &= l_799;
                        l_796[7][1][4] = (void*)0;
                    }
                    else
                    { /* block id: 428 */
                        int64_t l_800[9][8][3] = {{{0x0777C152C99B88B0L,(-2L),(-6L)},{0x0777C152C99B88B0L,(-2L),(-6L)},{0x0777C152C99B88B0L,(-2L),(-6L)},{0x0777C152C99B88B0L,(-2L),(-6L)},{0x0777C152C99B88B0L,(-2L),(-6L)},{0x0777C152C99B88B0L,(-2L),(-6L)},{0x0777C152C99B88B0L,(-2L),(-6L)},{0x0777C152C99B88B0L,(-2L),(-6L)}},{{0x0777C152C99B88B0L,(-2L),(-6L)},{0x0777C152C99B88B0L,(-2L),(-6L)},{0x0777C152C99B88B0L,(-2L),(-6L)},{0x0777C152C99B88B0L,(-2L),(-6L)},{0x0777C152C99B88B0L,(-2L),(-6L)},{0x0777C152C99B88B0L,(-2L),(-6L)},{0x0777C152C99B88B0L,(-2L),(-6L)},{0x0777C152C99B88B0L,(-2L),(-6L)}},{{0x0777C152C99B88B0L,(-2L),(-6L)},{0x0777C152C99B88B0L,(-2L),(-6L)},{0x0777C152C99B88B0L,(-2L),(-6L)},{0x0777C152C99B88B0L,(-2L),(-6L)},{0x0777C152C99B88B0L,(-2L),(-6L)},{0x0777C152C99B88B0L,(-2L),(-6L)},{0x0777C152C99B88B0L,(-2L),(-6L)},{0x0777C152C99B88B0L,(-2L),(-6L)}},{{0x0777C152C99B88B0L,(-2L),(-6L)},{0x0777C152C99B88B0L,(-2L),(-6L)},{0x0777C152C99B88B0L,(-2L),(-6L)},{0x0777C152C99B88B0L,(-2L),(-6L)},{0x0777C152C99B88B0L,(-2L),(-6L)},{0x0777C152C99B88B0L,(-2L),(-6L)},{0x0777C152C99B88B0L,(-2L),(-6L)},{0x0777C152C99B88B0L,(-2L),(-6L)}},{{0x0777C152C99B88B0L,(-2L),(-6L)},{0x0777C152C99B88B0L,(-2L),(-6L)},{0x0777C152C99B88B0L,(-2L),(-6L)},{0x0777C152C99B88B0L,(-2L),(-6L)},{0x0777C152C99B88B0L,(-2L),(-6L)},{0x0777C152C99B88B0L,(-2L),(-6L)},{0x0777C152C99B88B0L,(-2L),(-6L)},{0x0777C152C99B88B0L,(-2L),(-6L)}},{{0x0777C152C99B88B0L,(-2L),(-6L)},{0x0777C152C99B88B0L,(-2L),(-6L)},{0x0777C152C99B88B0L,(-2L),(-6L)},{0x0777C152C99B88B0L,(-2L),(-6L)},{0x0777C152C99B88B0L,(-2L),(-6L)},{0x0777C152C99B88B0L,(-2L),(-6L)},{0x0777C152C99B88B0L,(-2L),(-6L)},{0x0777C152C99B88B0L,(-2L),(-6L)}},{{0x0777C152C99B88B0L,(-2L),(-6L)},{0x0777C152C99B88B0L,(-2L),(-6L)},{0x0777C152C99B88B0L,(-2L),(-6L)},{0x0777C152C99B88B0L,(-2L),(-6L)},{0x0777C152C99B88B0L,(-2L),(-6L)},{0x0777C152C99B88B0L,(-2L),(-6L)},{0x0777C152C99B88B0L,(-2L),(-6L)},{0x0777C152C99B88B0L,(-2L),(-6L)}},{{0x0777C152C99B88B0L,(-2L),(-6L)},{0x0777C152C99B88B0L,(-2L),(-6L)},{0x0777C152C99B88B0L,(-2L),(-6L)},{0x0777C152C99B88B0L,(-2L),(-6L)},{0x0777C152C99B88B0L,(-2L),(-6L)},{0x0777C152C99B88B0L,(-2L),(-6L)},{0x0777C152C99B88B0L,(-2L),(-6L)},{0x0777C152C99B88B0L,(-2L),(-6L)}},{{0x0777C152C99B88B0L,(-2L),(-6L)},{0x0777C152C99B88B0L,(-2L),(-6L)},{0x0777C152C99B88B0L,(-2L),(-6L)},{0x0777C152C99B88B0L,(-2L),(-6L)},{0x0777C152C99B88B0L,(-2L),(-6L)},{0x0777C152C99B88B0L,(-2L),(-6L)},{0x0777C152C99B88B0L,(-2L),(-6L)},{0x0777C152C99B88B0L,(-2L),(-6L)}}};
                        int32_t l_801 = 1L;
                        uint8_t l_802 = 0x98L;
                        VECTOR(int32_t, 8) l_805 = (VECTOR(int32_t, 8))(0x2E02D9FBL, (VECTOR(int32_t, 4))(0x2E02D9FBL, (VECTOR(int32_t, 2))(0x2E02D9FBL, 0x139EE6E6L), 0x139EE6E6L), 0x139EE6E6L, 0x2E02D9FBL, 0x139EE6E6L);
                        int64_t l_806 = 0x5149203C8E1FAEA1L;
                        uint64_t l_807 = 18446744073709551608UL;
                        uint32_t l_810[4];
                        int i, j, k;
                        for (i = 0; i < 4; i++)
                            l_810[i] = 0x3F557BAAL;
                        --l_802;
                        l_805.s0 = ((VECTOR(int32_t, 4))(rotate(((VECTOR(int32_t, 8))(l_805.s20635721)).odd, ((VECTOR(int32_t, 2))(5L, (-2L))).xxyy))).z;
                        l_807++;
                        l_810[2]++;
                    }
                    l_774.y = ((l_814.s7 = l_813) , (l_816 ^= l_815[0]));
                }
                else
                { /* block id: 437 */
                    int32_t l_818 = 0L;
                    int32_t *l_817 = &l_818;
                    l_817 = (void*)0;
                }
                l_774.y &= 7L;
                l_821 = l_819;
            }
            else
            { /* block id: 442 */
                uint16_t l_822[10] = {0xAFA9L,0xAFA9L,0xAFA9L,0xAFA9L,0xAFA9L,0xAFA9L,0xAFA9L,0xAFA9L,0xAFA9L,0xAFA9L};
                union U0 l_823 = {0xDD441BAAL};
                union U0 l_824 = {4294967295UL};
                uint64_t l_825 = 0x82DCF1BCDD857D0BL;
                uint16_t l_883 = 65531UL;
                int8_t l_884 = 0x12L;
                VECTOR(int32_t, 4) l_885 = (VECTOR(int32_t, 4))(0x0D1DD3CAL, (VECTOR(int32_t, 2))(0x0D1DD3CAL, 0x46010292L), 0x46010292L);
                uint8_t l_886 = 255UL;
                int32_t *l_887 = (void*)0;
                int i;
                if (((l_824 = (l_822[5] , l_823)) , l_825))
                { /* block id: 444 */
                    int32_t l_826 = 1L;
                    for (l_826 = 24; (l_826 != (-28)); l_826--)
                    { /* block id: 447 */
                        int32_t l_830 = (-2L);
                        int32_t *l_829[1];
                        int32_t *l_831 = &l_830;
                        int32_t l_832[1];
                        VECTOR(int64_t, 2) l_833 = (VECTOR(int64_t, 2))((-1L), 7L);
                        VECTOR(int64_t, 8) l_834 = (VECTOR(int64_t, 8))(8L, (VECTOR(int64_t, 4))(8L, (VECTOR(int64_t, 2))(8L, 0x15D7B966F6FD41B8L), 0x15D7B966F6FD41B8L), 0x15D7B966F6FD41B8L, 8L, 0x15D7B966F6FD41B8L);
                        VECTOR(int64_t, 8) l_835 = (VECTOR(int64_t, 8))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 6L), 6L), 6L, 1L, 6L);
                        VECTOR(int32_t, 16) l_836 = (VECTOR(int32_t, 16))((-7L), (VECTOR(int32_t, 4))((-7L), (VECTOR(int32_t, 2))((-7L), (-4L)), (-4L)), (-4L), (-7L), (-4L), (VECTOR(int32_t, 2))((-7L), (-4L)), (VECTOR(int32_t, 2))((-7L), (-4L)), (-7L), (-4L), (-7L), (-4L));
                        int i;
                        for (i = 0; i < 1; i++)
                            l_829[i] = &l_830;
                        for (i = 0; i < 1; i++)
                            l_832[i] = 5L;
                        l_831 = l_829[0];
                        l_774.y = (((VECTOR(int64_t, 4))(l_832[0], ((VECTOR(int64_t, 2))(mad_sat(((VECTOR(int64_t, 8))(l_833.xyyxxyyy)).s11, ((VECTOR(int64_t, 16))(l_834.s7676061103127240)).s32, ((VECTOR(int64_t, 4))(l_835.s5335)).hi))), 4L)).y , ((VECTOR(int32_t, 4))(1L, ((VECTOR(int32_t, 16))(l_836.s5c445a99f789552a)).s1, 0x4E4254B7L, 0x223AACECL)).y);
                    }
                    for (l_826 = (-17); (l_826 <= (-17)); l_826 = safe_add_func_uint8_t_u_u(l_826, 2))
                    { /* block id: 453 */
                        VECTOR(int16_t, 8) l_839 = (VECTOR(int16_t, 8))(0x032BL, (VECTOR(int16_t, 4))(0x032BL, (VECTOR(int16_t, 2))(0x032BL, (-1L)), (-1L)), (-1L), 0x032BL, (-1L));
                        VECTOR(uint16_t, 16) l_840 = (VECTOR(uint16_t, 16))(0x3691L, (VECTOR(uint16_t, 4))(0x3691L, (VECTOR(uint16_t, 2))(0x3691L, 0x92A1L), 0x92A1L), 0x92A1L, 0x3691L, 0x92A1L, (VECTOR(uint16_t, 2))(0x3691L, 0x92A1L), (VECTOR(uint16_t, 2))(0x3691L, 0x92A1L), 0x3691L, 0x92A1L, 0x3691L, 0x92A1L);
                        VECTOR(uint16_t, 16) l_843 = (VECTOR(uint16_t, 16))(0xBD77L, (VECTOR(uint16_t, 4))(0xBD77L, (VECTOR(uint16_t, 2))(0xBD77L, 7UL), 7UL), 7UL, 0xBD77L, 7UL, (VECTOR(uint16_t, 2))(0xBD77L, 7UL), (VECTOR(uint16_t, 2))(0xBD77L, 7UL), 0xBD77L, 7UL, 0xBD77L, 7UL);
                        VECTOR(uint16_t, 8) l_844 = (VECTOR(uint16_t, 8))(65531UL, (VECTOR(uint16_t, 4))(65531UL, (VECTOR(uint16_t, 2))(65531UL, 0x222DL), 0x222DL), 0x222DL, 65531UL, 0x222DL);
                        uint8_t l_845 = 0x07L;
                        VECTOR(uint16_t, 8) l_846 = (VECTOR(uint16_t, 8))(0x1196L, (VECTOR(uint16_t, 4))(0x1196L, (VECTOR(uint16_t, 2))(0x1196L, 0x9B55L), 0x9B55L), 0x9B55L, 0x1196L, 0x9B55L);
                        VECTOR(uint16_t, 2) l_847 = (VECTOR(uint16_t, 2))(0x2A9CL, 0x5102L);
                        uint32_t l_848[9] = {0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL};
                        int8_t l_849 = 1L;
                        int i;
                        l_849 = (l_774.y &= (((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(upsample(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(add_sat(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(0x1A55L, 0x5DEFL)), 0UL, 0x8C40L, ((VECTOR(uint16_t, 2))(mad_hi(((VECTOR(uint16_t, 16))(0UL, 0xC8E2L, 8UL, ((VECTOR(uint16_t, 16))(abs(((VECTOR(int16_t, 16))(l_839.s1112563072065261))))).sb, ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(l_840.s4c)), 0x55C2L, 0xC088L)), (--l_822[5]), 65535UL, 6UL, ((VECTOR(uint16_t, 2))(l_843.sf5)), (l_822[6] = 3UL), 0xDD3DL, 0x5A42L)).sa8, ((VECTOR(uint16_t, 8))(l_844.s67676470)).s61, ((VECTOR(uint16_t, 2))(abs(((VECTOR(uint16_t, 8))(mul_hi(((VECTOR(uint16_t, 2))(0xB757L, 0x3B03L)).yyxyxyyx, ((VECTOR(uint16_t, 4))(0xCD86L, 65534UL, 0x566DL, 65531UL)).ywyyxwxy))).s05)))))), 0x0EDFL, 65533UL)), ((VECTOR(uint16_t, 8))(l_845, (l_822[5] = 0xCAB1L), 65527UL, GROUP_DIVERGE(0, 1), ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 8))(l_846.s21033147)).odd)).y, 0UL, 65535UL, 0xF8BBL))))).s6555701011335476)).sa8, ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 4))(0UL, ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 16))(l_847.xxxxyxxxyyxyxyxx)).s19)), 0UL)).even))))).xxyyxyxx)).s5 , l_848[6]));
                    }
                    for (l_826 = 6; (l_826 > 25); l_826 = safe_add_func_int8_t_s_s(l_826, 7))
                    { /* block id: 462 */
                        union U1 *l_852 = (void*)0;
                        union U1 l_854 = {0L};
                        union U1 *l_853[8][6] = {{&l_854,&l_854,&l_854,&l_854,&l_854,&l_854},{&l_854,&l_854,&l_854,&l_854,&l_854,&l_854},{&l_854,&l_854,&l_854,&l_854,&l_854,&l_854},{&l_854,&l_854,&l_854,&l_854,&l_854,&l_854},{&l_854,&l_854,&l_854,&l_854,&l_854,&l_854},{&l_854,&l_854,&l_854,&l_854,&l_854,&l_854},{&l_854,&l_854,&l_854,&l_854,&l_854,&l_854},{&l_854,&l_854,&l_854,&l_854,&l_854,&l_854}};
                        int32_t l_855 = 0x12D83FBDL;
                        int8_t l_856 = 0x60L;
                        int32_t l_857 = (-1L);
                        int32_t l_858 = 0x6E1B5252L;
                        int32_t l_859 = (-2L);
                        uint16_t l_860 = 0x54B4L;
                        uint8_t l_863[5];
                        int64_t l_864 = (-10L);
                        union U0 l_865 = {0x2EDAFC0FL};
                        int64_t l_866 = 0x5D5ED039740FA02CL;
                        uint16_t l_867[8] = {65531UL,65531UL,65531UL,65531UL,65531UL,65531UL,65531UL,65531UL};
                        int i, j;
                        for (i = 0; i < 5; i++)
                            l_863[i] = 1UL;
                        l_853[7][1] = l_852;
                        l_774.x |= l_855;
                        l_774.x = (((((l_856 , (l_860--)) , (l_864 = l_863[1])) , l_865) , 0x6FF071B6L) , 0x6F7338E4L);
                        l_867[0]++;
                    }
                }
                else
                { /* block id: 470 */
                    int32_t l_870 = 1L;
                    int32_t l_876 = (-1L);
                    for (l_870 = 0; (l_870 == 13); l_870 = safe_add_func_uint64_t_u_u(l_870, 8))
                    { /* block id: 473 */
                        uint32_t l_873 = 0UL;
                        int32_t l_874 = 8L;
                        int8_t l_875 = 1L;
                        l_774.x ^= (l_875 &= (l_873 , l_874));
                    }
                    if (l_876)
                    { /* block id: 477 */
                        union U0 l_877 = {0UL};
                        VECTOR(int32_t, 16) l_878 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 3L), 3L), 3L, (-1L), 3L, (VECTOR(int32_t, 2))((-1L), 3L), (VECTOR(int32_t, 2))((-1L), 3L), (-1L), 3L, (-1L), 3L);
                        VECTOR(int32_t, 16) l_879 = (VECTOR(int32_t, 16))(0x6FB2009AL, (VECTOR(int32_t, 4))(0x6FB2009AL, (VECTOR(int32_t, 2))(0x6FB2009AL, 0x2C92A710L), 0x2C92A710L), 0x2C92A710L, 0x6FB2009AL, 0x2C92A710L, (VECTOR(int32_t, 2))(0x6FB2009AL, 0x2C92A710L), (VECTOR(int32_t, 2))(0x6FB2009AL, 0x2C92A710L), 0x6FB2009AL, 0x2C92A710L, 0x6FB2009AL, 0x2C92A710L);
                        VECTOR(int32_t, 4) l_880 = (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, (-10L)), (-10L));
                        VECTOR(int32_t, 8) l_881 = (VECTOR(int32_t, 8))(0x4527D89CL, (VECTOR(int32_t, 4))(0x4527D89CL, (VECTOR(int32_t, 2))(0x4527D89CL, 0x6485F003L), 0x6485F003L), 0x6485F003L, 0x4527D89CL, 0x6485F003L);
                        uint8_t l_882[5][7] = {{9UL,255UL,7UL,1UL,7UL,255UL,9UL},{9UL,255UL,7UL,1UL,7UL,255UL,9UL},{9UL,255UL,7UL,1UL,7UL,255UL,9UL},{9UL,255UL,7UL,1UL,7UL,255UL,9UL},{9UL,255UL,7UL,1UL,7UL,255UL,9UL}};
                        int i, j;
                        l_882[0][4] |= (l_774.y = (l_870 |= (l_877 , ((VECTOR(int32_t, 8))(mul_hi(((VECTOR(int32_t, 16))(min(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 4))(l_878.s7caf)).xzwwyyww, ((VECTOR(int32_t, 16))(l_879.s5761af9136f60beb)).odd))).hi)).xyzxzyxzwxwwywxx, ((VECTOR(int32_t, 4))(hadd(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(l_880.zxxxzywyxzxywwxx)).sa5e4)).wxyywzyw)).lo, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(0x474A1E5AL, 0x42E85793L, 6L, 0x62058697L))))))).xxyxxwwxxwwxxwyx))).lo, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(l_881.s6322054253070472)).odd)).even)).wwwxyyxy))).s1)));
                    }
                    else
                    { /* block id: 481 */
                        l_774.y ^= ((VECTOR(int32_t, 2))(clz(((VECTOR(int32_t, 2))(0L, 0x01513D85L))))).lo;
                    }
                }
                l_774.y &= (l_883 , (l_884 , ((VECTOR(int32_t, 8))(l_885.xyxwwywz)).s3));
                l_885.y = l_886;
                l_887 = l_887;
            }
        }
        for (l_767 = 0; (l_767 <= 26); ++l_767)
        { /* block id: 492 */
            VECTOR(uint64_t, 2) l_890 = (VECTOR(uint64_t, 2))(0xAD4C4C351B7D1244L, 0UL);
            int i;
            l_890.x ^= 0x53FDC542L;
        }
        unsigned int result = 0;
        result += l_767;
        atomic_add(&p_1073->l_special_values[16], result);
    }
    else
    { /* block id: 495 */
        (1 + 1);
    }
    for (p_1073->g_140 = 25; (p_1073->g_140 == 8); --p_1073->g_140)
    { /* block id: 500 */
        int32_t l_903 = 7L;
        int32_t l_912 = 9L;
        int32_t l_914 = 0x46F14558L;
        int32_t l_916 = 7L;
        uint16_t l_918 = 65535UL;
        for (p_1073->g_684 = 0; (p_1073->g_684 < (-8)); p_1073->g_684 = safe_sub_func_int16_t_s_s(p_1073->g_684, 1))
        { /* block id: 503 */
            uint8_t l_901 = 255UL;
            int32_t l_908 = 1L;
            int32_t l_910 = (-1L);
            int32_t l_911 = 0x16CB223CL;
            int32_t l_913 = (-2L);
            int32_t l_915 = 0x6B1AC637L;
            int32_t l_917[6][4][2] = {{{(-4L),2L},{(-4L),2L},{(-4L),2L},{(-4L),2L}},{{(-4L),2L},{(-4L),2L},{(-4L),2L},{(-4L),2L}},{{(-4L),2L},{(-4L),2L},{(-4L),2L},{(-4L),2L}},{{(-4L),2L},{(-4L),2L},{(-4L),2L},{(-4L),2L}},{{(-4L),2L},{(-4L),2L},{(-4L),2L},{(-4L),2L}},{{(-4L),2L},{(-4L),2L},{(-4L),2L},{(-4L),2L}}};
            int i, j, k;
            for (p_1073->g_142.f0 = (-28); (p_1073->g_142.f0 <= (-27)); p_1073->g_142.f0++)
            { /* block id: 506 */
                int32_t *l_907[7];
                int i;
                for (i = 0; i < 7; i++)
                    l_907[i] = &l_903;
                (1 + 1);
            }
            if ((**l_763))
                continue;
            for (p_1073->g_521 = (-24); (p_1073->g_521 == 28); p_1073->g_521 = safe_add_func_uint8_t_u_u(p_1073->g_521, 6))
            { /* block id: 526 */
                uint64_t *l_924 = &p_1073->g_191[0];
                int32_t **l_927 = (void*)0;
                int32_t ***l_928 = &l_927;
                VECTOR(int8_t, 4) l_933 = (VECTOR(int8_t, 4))(0x7BL, (VECTOR(int8_t, 2))(0x7BL, 1L), 1L);
                int i;
                p_1073->g_55 |= ((++(*l_924)) & ((((VECTOR(int16_t, 2))((-3L), 0x44F8L)).even == ((((*l_928) = l_927) == &p_1073->g_547[1]) != ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(p_1073->g_929.xx)).yyxyyxxyxxyxxyyx)).s6)) , ((p_1073->g_930 , (safe_mul_func_uint8_t_u_u(l_917[4][0][0], ((VECTOR(int8_t, 16))(l_933.wwwwzyzzyzzxxyzz)).sc))) && (safe_lshift_func_uint16_t_u_s(((*p_14) = (*p_14)), 4)))));
            }
        }
    }
    return (*l_762);
}


/* ------------------------------------------ */
/* 
 * reads : p_1073->g_503 p_1073->g_521 p_1073->g_655 p_1073->g_324.f0 p_1073->g_671 p_1073->g_672 p_1073->g_673 p_1073->g_684 p_1073->g_718 p_1073->g_120 p_1073->g_149 p_1073->g_664.f0 p_1073->g_166 p_1073->g_155 p_1073->g_19 p_1073->g_18 p_1073->g_388 p_1073->g_324 p_1073->g_comm_values
 * writes: p_1073->g_503 p_1073->g_521 p_1073->g_55 p_1073->g_324.f0 p_1073->g_94 p_1073->g_140 p_1073->g_115 p_1073->g_121 p_1073->g_664.f0 p_1073->g_522
 */
union U0  func_20(union U1  p_21, uint8_t  p_22, int8_t * p_23, uint16_t * p_24, uint8_t  p_25, struct S6 * p_1073)
{ /* block id: 310 */
    int32_t *l_649[10];
    int32_t **l_650 = &l_649[9];
    uint8_t l_656[7][8][4] = {{{6UL,6UL,1UL,0UL},{6UL,6UL,1UL,0UL},{6UL,6UL,1UL,0UL},{6UL,6UL,1UL,0UL},{6UL,6UL,1UL,0UL},{6UL,6UL,1UL,0UL},{6UL,6UL,1UL,0UL},{6UL,6UL,1UL,0UL}},{{6UL,6UL,1UL,0UL},{6UL,6UL,1UL,0UL},{6UL,6UL,1UL,0UL},{6UL,6UL,1UL,0UL},{6UL,6UL,1UL,0UL},{6UL,6UL,1UL,0UL},{6UL,6UL,1UL,0UL},{6UL,6UL,1UL,0UL}},{{6UL,6UL,1UL,0UL},{6UL,6UL,1UL,0UL},{6UL,6UL,1UL,0UL},{6UL,6UL,1UL,0UL},{6UL,6UL,1UL,0UL},{6UL,6UL,1UL,0UL},{6UL,6UL,1UL,0UL},{6UL,6UL,1UL,0UL}},{{6UL,6UL,1UL,0UL},{6UL,6UL,1UL,0UL},{6UL,6UL,1UL,0UL},{6UL,6UL,1UL,0UL},{6UL,6UL,1UL,0UL},{6UL,6UL,1UL,0UL},{6UL,6UL,1UL,0UL},{6UL,6UL,1UL,0UL}},{{6UL,6UL,1UL,0UL},{6UL,6UL,1UL,0UL},{6UL,6UL,1UL,0UL},{6UL,6UL,1UL,0UL},{6UL,6UL,1UL,0UL},{6UL,6UL,1UL,0UL},{6UL,6UL,1UL,0UL},{6UL,6UL,1UL,0UL}},{{6UL,6UL,1UL,0UL},{6UL,6UL,1UL,0UL},{6UL,6UL,1UL,0UL},{6UL,6UL,1UL,0UL},{6UL,6UL,1UL,0UL},{6UL,6UL,1UL,0UL},{6UL,6UL,1UL,0UL},{6UL,6UL,1UL,0UL}},{{6UL,6UL,1UL,0UL},{6UL,6UL,1UL,0UL},{6UL,6UL,1UL,0UL},{6UL,6UL,1UL,0UL},{6UL,6UL,1UL,0UL},{6UL,6UL,1UL,0UL},{6UL,6UL,1UL,0UL},{6UL,6UL,1UL,0UL}}};
    uint64_t l_712 = 18446744073709551613UL;
    uint16_t l_746[10] = {0xE995L,65535UL,65528UL,65535UL,0xE995L,0xE995L,65535UL,65528UL,65535UL,0xE995L};
    int64_t *l_751 = &p_1073->g_142.f0;
    int64_t *l_753 = &p_1073->g_684;
    int64_t **l_752 = &l_753;
    uint32_t *l_760 = &p_1073->g_522;
    union U0 l_761 = {4294967295UL};
    int i, j, k;
    for (i = 0; i < 10; i++)
        l_649[i] = &p_1073->g_55;
    (*l_650) = l_649[8];
    for (p_1073->g_503 = 12; (p_1073->g_503 == 25); p_1073->g_503 = safe_add_func_int16_t_s_s(p_1073->g_503, 1))
    { /* block id: 314 */
        int8_t l_679 = (-1L);
        int32_t l_681 = 0x46B6103AL;
        int32_t l_744[5] = {0x14F63C0DL,0x14F63C0DL,0x14F63C0DL,0x14F63C0DL,0x14F63C0DL};
        int i;
        for (p_1073->g_521 = 13; (p_1073->g_521 > (-9)); p_1073->g_521--)
        { /* block id: 317 */
            (**l_650) = 0x28FF64CDL;
            if (p_1073->g_655)
                break;
            atomic_or(&p_1073->g_atomic_reduction[get_linear_group_id()], l_656[4][1][2]);
            barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
            if (get_linear_local_id() == 0)
                p_1073->v_collective += p_1073->g_atomic_reduction[get_linear_group_id()];
            barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        }
        for (p_1073->g_324.f0 = 0; (p_1073->g_324.f0 > 26); p_1073->g_324.f0 = safe_add_func_int8_t_s_s(p_1073->g_324.f0, 2))
        { /* block id: 324 */
            uint32_t l_678 = 0x252B409CL;
            uint32_t l_680 = 4UL;
            int32_t l_682 = 0x6A9ACED5L;
            int32_t l_697 = (-1L);
            int32_t l_698 = 0x389852D6L;
            VECTOR(int32_t, 16) l_699 = (VECTOR(int32_t, 16))(0x6D68662FL, (VECTOR(int32_t, 4))(0x6D68662FL, (VECTOR(int32_t, 2))(0x6D68662FL, (-2L)), (-2L)), (-2L), 0x6D68662FL, (-2L), (VECTOR(int32_t, 2))(0x6D68662FL, (-2L)), (VECTOR(int32_t, 2))(0x6D68662FL, (-2L)), 0x6D68662FL, (-2L), 0x6D68662FL, (-2L));
            union U2 *l_715 = (void*)0;
            int i;
            for (p_21.f0 = (-9); (p_21.f0 != (-13)); --p_21.f0)
            { /* block id: 327 */
                int8_t l_683 = 4L;
                int32_t l_713 = 0x06817261L;
                union U5 *l_725 = &p_1073->g_142;
                union U5 **l_726 = &l_725;
                for (p_1073->g_94 = 0; (p_1073->g_94 == 12); p_1073->g_94++)
                { /* block id: 330 */
                    union U0 *l_663[10] = {&p_1073->g_664,&p_1073->g_664,&p_1073->g_664,&p_1073->g_664,&p_1073->g_664,&p_1073->g_664,&p_1073->g_664,&p_1073->g_664,&p_1073->g_664,&p_1073->g_664};
                    union U0 **l_665 = &l_663[6];
                    union U0 *l_670 = &p_1073->g_664;
                    int i;
                    l_670 = ((*l_665) = l_663[6]);
                    (**l_650) = (-10L);
                }
                if (((p_1073->g_671 , ((((((l_682 |= ((p_21.f0 & ((p_1073->g_672 , (p_1073->g_673 , &p_1073->g_669)) != (((VECTOR(uint16_t, 16))(p_1073->g_674.wwxyyzwwzxzxzxzy)).s6 , &p_1073->g_669))) == (safe_rshift_func_int8_t_s_s(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(p_1073->g_677.s12270737)), ((l_681 &= ((((((&p_1073->g_94 == &p_1073->g_94) == (*p_23)) == l_678) || l_679) , l_680) != p_1073->g_589.s2)) , (*p_23)), 0x46L, (*p_23), ((VECTOR(int8_t, 4))((-1L))), 0x41L)).s2, 6)))) > (-1L)) & 0x684749B6120E3F90L) , FAKE_DIVERGE(p_1073->group_0_offset, get_group_id(0), 10)) < l_683) >= 65531UL)) >= p_1073->g_684))
                { /* block id: 337 */
                    int64_t l_696 = 0x79F613F65DE52D7EL;
                    VECTOR(int64_t, 8) l_707 = (VECTOR(int64_t, 8))(6L, (VECTOR(int64_t, 4))(6L, (VECTOR(int64_t, 2))(6L, 0L), 0L), 0L, 6L, 0L);
                    int32_t *l_708[7];
                    int i;
                    for (i = 0; i < 7; i++)
                        l_708[i] = &l_697;
                    if ((atomic_inc(&p_1073->l_atomic_input[32]) == 8))
                    { /* block id: 339 */
                        uint8_t l_685[5][6] = {{0xDFL,0xDFL,0xD6L,255UL,0xBCL,255UL},{0xDFL,0xDFL,0xD6L,255UL,0xBCL,255UL},{0xDFL,0xDFL,0xD6L,255UL,0xBCL,255UL},{0xDFL,0xDFL,0xD6L,255UL,0xBCL,255UL},{0xDFL,0xDFL,0xD6L,255UL,0xBCL,255UL}};
                        union U4 l_688 = {-1L};/* VOLATILE GLOBAL l_688 */
                        VECTOR(int16_t, 4) l_689 = (VECTOR(int16_t, 4))(6L, (VECTOR(int16_t, 2))(6L, 0x53DEL), 0x53DEL);
                        VECTOR(uint16_t, 16) l_690 = (VECTOR(uint16_t, 16))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0xD2FEL), 0xD2FEL), 0xD2FEL, 1UL, 0xD2FEL, (VECTOR(uint16_t, 2))(1UL, 0xD2FEL), (VECTOR(uint16_t, 2))(1UL, 0xD2FEL), 1UL, 0xD2FEL, 1UL, 0xD2FEL);
                        uint16_t l_691 = 1UL;
                        int32_t *l_692 = (void*)0;
                        int32_t *l_693[2][1][2];
                        int i, j, k;
                        for (i = 0; i < 2; i++)
                        {
                            for (j = 0; j < 1; j++)
                            {
                                for (k = 0; k < 2; k++)
                                    l_693[i][j][k] = (void*)0;
                            }
                        }
                        --l_685[3][3];
                        l_691 = (l_688 , ((VECTOR(int32_t, 2))(upsample(((VECTOR(int16_t, 4))(l_689.xxyw)).odd, ((VECTOR(uint16_t, 2))(l_690.s4a))))).hi);
                        l_693[0][0][1] = l_692;
                        unsigned int result = 0;
                        int l_685_i0, l_685_i1;
                        for (l_685_i0 = 0; l_685_i0 < 5; l_685_i0++) {
                            for (l_685_i1 = 0; l_685_i1 < 6; l_685_i1++) {
                                result += l_685[l_685_i0][l_685_i1];
                            }
                        }
                        result += l_688.f0;
                        result += l_688.f1;
                        result += l_688.f2;
                        result += l_688.f3;
                        result += l_689.w;
                        result += l_689.z;
                        result += l_689.y;
                        result += l_689.x;
                        result += l_690.sf;
                        result += l_690.se;
                        result += l_690.sd;
                        result += l_690.sc;
                        result += l_690.sb;
                        result += l_690.sa;
                        result += l_690.s9;
                        result += l_690.s8;
                        result += l_690.s7;
                        result += l_690.s6;
                        result += l_690.s5;
                        result += l_690.s4;
                        result += l_690.s3;
                        result += l_690.s2;
                        result += l_690.s1;
                        result += l_690.s0;
                        result += l_691;
                        atomic_add(&p_1073->l_special_values[32], result);
                    }
                    else
                    { /* block id: 343 */
                        (1 + 1);
                    }
                    for (p_1073->g_140 = 0; (p_1073->g_140 > 13); ++p_1073->g_140)
                    { /* block id: 348 */
                        uint64_t l_700 = 18446744073709551611UL;
                        int64_t *l_709[9] = {&p_1073->g_684,&p_1073->g_684,&p_1073->g_684,&p_1073->g_684,&p_1073->g_684,&p_1073->g_684,&p_1073->g_684,&p_1073->g_684,&p_1073->g_684};
                        VECTOR(int32_t, 8) l_710 = (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0L), 0L), 0L, 0L, 0L);
                        int32_t l_711 = 0x1F0EE07DL;
                        int i;
                        l_700++;
                        (**l_650) = (l_713 |= (safe_div_func_uint16_t_u_u((safe_add_func_int64_t_s_s(((VECTOR(int64_t, 16))(l_707.s1375010164066110)).s9, (l_711 = (l_710.s5 = (l_708[4] == (void*)0))))), l_712)));
                    }
                }
                else
                { /* block id: 355 */
                    VECTOR(uint32_t, 8) l_714 = (VECTOR(uint32_t, 8))(0x9E406412L, (VECTOR(uint32_t, 4))(0x9E406412L, (VECTOR(uint32_t, 2))(0x9E406412L, 0UL), 0UL), 0UL, 0x9E406412L, 0UL);
                    int32_t *l_721 = &l_682;
                    int i;
                    (**l_650) = l_714.s7;
                    if (l_713)
                    { /* block id: 357 */
                        int32_t *l_720[8][3][4] = {{{&p_1073->g_55,&l_697,&l_697,&p_1073->g_55},{&p_1073->g_55,&l_697,&l_697,&p_1073->g_55},{&p_1073->g_55,&l_697,&l_697,&p_1073->g_55}},{{&p_1073->g_55,&l_697,&l_697,&p_1073->g_55},{&p_1073->g_55,&l_697,&l_697,&p_1073->g_55},{&p_1073->g_55,&l_697,&l_697,&p_1073->g_55}},{{&p_1073->g_55,&l_697,&l_697,&p_1073->g_55},{&p_1073->g_55,&l_697,&l_697,&p_1073->g_55},{&p_1073->g_55,&l_697,&l_697,&p_1073->g_55}},{{&p_1073->g_55,&l_697,&l_697,&p_1073->g_55},{&p_1073->g_55,&l_697,&l_697,&p_1073->g_55},{&p_1073->g_55,&l_697,&l_697,&p_1073->g_55}},{{&p_1073->g_55,&l_697,&l_697,&p_1073->g_55},{&p_1073->g_55,&l_697,&l_697,&p_1073->g_55},{&p_1073->g_55,&l_697,&l_697,&p_1073->g_55}},{{&p_1073->g_55,&l_697,&l_697,&p_1073->g_55},{&p_1073->g_55,&l_697,&l_697,&p_1073->g_55},{&p_1073->g_55,&l_697,&l_697,&p_1073->g_55}},{{&p_1073->g_55,&l_697,&l_697,&p_1073->g_55},{&p_1073->g_55,&l_697,&l_697,&p_1073->g_55},{&p_1073->g_55,&l_697,&l_697,&p_1073->g_55}},{{&p_1073->g_55,&l_697,&l_697,&p_1073->g_55},{&p_1073->g_55,&l_697,&l_697,&p_1073->g_55},{&p_1073->g_55,&l_697,&l_697,&p_1073->g_55}}};
                        int i, j, k;
                        (*p_1073->g_718) = l_715;
                        (**l_650) = ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(p_1073->g_719.yyxyxyxx)).s4214761036726523)).s5;
                        (*p_1073->g_120) = l_720[0][1][1];
                        (*p_1073->g_149) = l_721;
                    }
                    else
                    { /* block id: 362 */
                        uint8_t l_722 = 0x42L;
                        l_722--;
                    }
                }
                (*l_726) = l_725;
            }
            for (p_1073->g_664.f0 = 0; (p_1073->g_664.f0 > 25); p_1073->g_664.f0 = safe_add_func_int8_t_s_s(p_1073->g_664.f0, 9))
            { /* block id: 370 */
                if ((atomic_inc(&p_1073->l_atomic_input[21]) == 2))
                { /* block id: 372 */
                    int32_t l_729 = 0x51CD2F7CL;
                    for (l_729 = 0; (l_729 == 27); l_729 = safe_add_func_uint32_t_u_u(l_729, 5))
                    { /* block id: 375 */
                        int32_t l_733 = 0x59F6494CL;
                        int32_t *l_732 = &l_733;
                        int32_t *l_734 = &l_733;
                        uint16_t l_735 = 0x654EL;
                        uint32_t l_736 = 0x13DFAD61L;
                        union U1 l_737[8][1] = {{{6L}},{{6L}},{{6L}},{{6L}},{{6L}},{{6L}},{{6L}},{{6L}}};
                        union U1 l_738[4][5][1] = {{{{0x24CB77C0A8911B57L}},{{0x24CB77C0A8911B57L}},{{0x24CB77C0A8911B57L}},{{0x24CB77C0A8911B57L}},{{0x24CB77C0A8911B57L}}},{{{0x24CB77C0A8911B57L}},{{0x24CB77C0A8911B57L}},{{0x24CB77C0A8911B57L}},{{0x24CB77C0A8911B57L}},{{0x24CB77C0A8911B57L}}},{{{0x24CB77C0A8911B57L}},{{0x24CB77C0A8911B57L}},{{0x24CB77C0A8911B57L}},{{0x24CB77C0A8911B57L}},{{0x24CB77C0A8911B57L}}},{{{0x24CB77C0A8911B57L}},{{0x24CB77C0A8911B57L}},{{0x24CB77C0A8911B57L}},{{0x24CB77C0A8911B57L}},{{0x24CB77C0A8911B57L}}}};
                        int16_t l_739[9][7][4] = {{{0x270FL,0x270FL,0x3E23L,(-5L)},{0x270FL,0x270FL,0x3E23L,(-5L)},{0x270FL,0x270FL,0x3E23L,(-5L)},{0x270FL,0x270FL,0x3E23L,(-5L)},{0x270FL,0x270FL,0x3E23L,(-5L)},{0x270FL,0x270FL,0x3E23L,(-5L)},{0x270FL,0x270FL,0x3E23L,(-5L)}},{{0x270FL,0x270FL,0x3E23L,(-5L)},{0x270FL,0x270FL,0x3E23L,(-5L)},{0x270FL,0x270FL,0x3E23L,(-5L)},{0x270FL,0x270FL,0x3E23L,(-5L)},{0x270FL,0x270FL,0x3E23L,(-5L)},{0x270FL,0x270FL,0x3E23L,(-5L)},{0x270FL,0x270FL,0x3E23L,(-5L)}},{{0x270FL,0x270FL,0x3E23L,(-5L)},{0x270FL,0x270FL,0x3E23L,(-5L)},{0x270FL,0x270FL,0x3E23L,(-5L)},{0x270FL,0x270FL,0x3E23L,(-5L)},{0x270FL,0x270FL,0x3E23L,(-5L)},{0x270FL,0x270FL,0x3E23L,(-5L)},{0x270FL,0x270FL,0x3E23L,(-5L)}},{{0x270FL,0x270FL,0x3E23L,(-5L)},{0x270FL,0x270FL,0x3E23L,(-5L)},{0x270FL,0x270FL,0x3E23L,(-5L)},{0x270FL,0x270FL,0x3E23L,(-5L)},{0x270FL,0x270FL,0x3E23L,(-5L)},{0x270FL,0x270FL,0x3E23L,(-5L)},{0x270FL,0x270FL,0x3E23L,(-5L)}},{{0x270FL,0x270FL,0x3E23L,(-5L)},{0x270FL,0x270FL,0x3E23L,(-5L)},{0x270FL,0x270FL,0x3E23L,(-5L)},{0x270FL,0x270FL,0x3E23L,(-5L)},{0x270FL,0x270FL,0x3E23L,(-5L)},{0x270FL,0x270FL,0x3E23L,(-5L)},{0x270FL,0x270FL,0x3E23L,(-5L)}},{{0x270FL,0x270FL,0x3E23L,(-5L)},{0x270FL,0x270FL,0x3E23L,(-5L)},{0x270FL,0x270FL,0x3E23L,(-5L)},{0x270FL,0x270FL,0x3E23L,(-5L)},{0x270FL,0x270FL,0x3E23L,(-5L)},{0x270FL,0x270FL,0x3E23L,(-5L)},{0x270FL,0x270FL,0x3E23L,(-5L)}},{{0x270FL,0x270FL,0x3E23L,(-5L)},{0x270FL,0x270FL,0x3E23L,(-5L)},{0x270FL,0x270FL,0x3E23L,(-5L)},{0x270FL,0x270FL,0x3E23L,(-5L)},{0x270FL,0x270FL,0x3E23L,(-5L)},{0x270FL,0x270FL,0x3E23L,(-5L)},{0x270FL,0x270FL,0x3E23L,(-5L)}},{{0x270FL,0x270FL,0x3E23L,(-5L)},{0x270FL,0x270FL,0x3E23L,(-5L)},{0x270FL,0x270FL,0x3E23L,(-5L)},{0x270FL,0x270FL,0x3E23L,(-5L)},{0x270FL,0x270FL,0x3E23L,(-5L)},{0x270FL,0x270FL,0x3E23L,(-5L)},{0x270FL,0x270FL,0x3E23L,(-5L)}},{{0x270FL,0x270FL,0x3E23L,(-5L)},{0x270FL,0x270FL,0x3E23L,(-5L)},{0x270FL,0x270FL,0x3E23L,(-5L)},{0x270FL,0x270FL,0x3E23L,(-5L)},{0x270FL,0x270FL,0x3E23L,(-5L)},{0x270FL,0x270FL,0x3E23L,(-5L)},{0x270FL,0x270FL,0x3E23L,(-5L)}}};
                        uint32_t l_740 = 0x032D44D7L;
                        uint32_t l_741 = 0x7D0822F0L;
                        int i, j, k;
                        l_734 = l_732;
                        l_741 |= (((l_736 &= l_735) , FAKE_DIVERGE(p_1073->group_0_offset, get_group_id(0), 10)) , (l_740 = (l_739[0][2][3] = ((l_738[3][3][0] = l_737[1][0]) , (-1L)))));
                    }
                    unsigned int result = 0;
                    result += l_729;
                    atomic_add(&p_1073->l_special_values[21], result);
                }
                else
                { /* block id: 383 */
                    (1 + 1);
                }
            }
            for (p_1073->g_664.f0 = 0; (p_1073->g_664.f0 != 17); ++p_1073->g_664.f0)
            { /* block id: 389 */
                int32_t l_745 = 1L;
                ++l_746[1];
            }
        }
    }
    (**l_650) = ((safe_rshift_func_int8_t_s_s((18446744073709551611UL >= (l_751 != ((*l_752) = l_751))), (p_1073->g_166.se | (safe_rshift_func_uint16_t_u_s(p_1073->g_155.x, (safe_add_func_uint32_t_u_u(((*l_760) = (((((*p_23) >= (*p_1073->g_18)) && (safe_sub_func_uint8_t_u_u(p_21.f0, ((*p_1073->g_388) , (*p_1073->g_18))))) , 2UL) , 0xFAC18A82L)), p_1073->g_comm_values[p_1073->tid]))))))) && p_25);
    return l_761;
}


/* ------------------------------------------ */
/* 
 * reads : p_1073->g_30 p_1073->l_comm_values p_1073->g_53 p_1073->g_55 p_1073->g_94 p_1073->g_18 p_1073->g_19 p_1073->g_50 p_1073->g_114 p_1073->g_120 p_1073->g_127 p_1073->g_246 p_1073->g_247 p_1073->g_270 p_1073->g_166 p_1073->g_121 p_1073->g_309 p_1073->g_9 p_1073->g_comm_values p_1073->g_104 p_1073->g_248 p_1073->g_249 p_1073->g_149 p_1073->g_10 p_1073->g_387 p_1073->g_246.f0 p_1073->g_371 p_1073->g_324 p_1073->g_111 p_1073->g_111.f0 p_1073->g_459 p_1073->g_29.f0 p_1073->g_142 p_1073->g_479 permutations p_1073->g_506 p_1073->g_142.f0 p_1073->g_522 p_1073->g_491 p_1073->g_191 p_1073->g_316 p_1073->g_155 p_1073->g_541 p_1073->g_548 p_1073->g_457 p_1073->g_115 p_1073->g_576 p_1073->g_368 p_1073->g_589 p_1073->g_194 p_1073->g_626 p_1073->g_388 p_1073->g_642 p_1073->g_272
 * writes: p_1073->g_53 p_1073->g_55 p_1073->g_94 p_1073->g_104 p_1073->g_115 p_1073->g_121 p_1073->g_142.f1 p_1073->g_50 p_1073->g_140 p_1073->g_320 p_1073->g_388 p_1073->g_457 p_1073->g_465 p_1073->g_191 p_1073->g_479 p_1073->g_246.f1 p_1073->g_142.f3 p_1073->g_503 p_1073->g_142.f0 p_1073->g_522 p_1073->g_comm_values p_1073->g_324
 */
union U1  func_26(int64_t  p_27, int64_t  p_28, struct S6 * p_1073)
{ /* block id: 7 */
    VECTOR(uint16_t, 4) l_31 = (VECTOR(uint16_t, 4))(0xDEF0L, (VECTOR(uint16_t, 2))(0xDEF0L, 0xE082L), 0xE082L);
    VECTOR(int32_t, 16) l_32 = (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x77355A2CL), 0x77355A2CL), 0x77355A2CL, 0L, 0x77355A2CL, (VECTOR(int32_t, 2))(0L, 0x77355A2CL), (VECTOR(int32_t, 2))(0L, 0x77355A2CL), 0L, 0x77355A2CL, 0L, 0x77355A2CL);
    VECTOR(int32_t, 2) l_33 = (VECTOR(int32_t, 2))(0x5D1892F8L, 0x3176A179L);
    int8_t *l_45[5][5] = {{&p_1073->g_19[4],&p_1073->g_19[4],(void*)0,&p_1073->g_19[4],&p_1073->g_19[4]},{&p_1073->g_19[4],&p_1073->g_19[4],(void*)0,&p_1073->g_19[4],&p_1073->g_19[4]},{&p_1073->g_19[4],&p_1073->g_19[4],(void*)0,&p_1073->g_19[4],&p_1073->g_19[4]},{&p_1073->g_19[4],&p_1073->g_19[4],(void*)0,&p_1073->g_19[4],&p_1073->g_19[4]},{&p_1073->g_19[4],&p_1073->g_19[4],(void*)0,&p_1073->g_19[4],&p_1073->g_19[4]}};
    uint16_t *l_453 = (void*)0;
    union U1 l_534 = {0x27F0CE4892705AC9L};
    VECTOR(int32_t, 8) l_537 = (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x2FA3CE98L), 0x2FA3CE98L), 0x2FA3CE98L, 1L, 0x2FA3CE98L);
    union U2 *l_569 = &p_1073->g_570;
    uint8_t l_584 = 6UL;
    int32_t **l_590[2][8][4] = {{{&p_1073->g_121,(void*)0,&p_1073->g_121,&p_1073->g_121},{&p_1073->g_121,(void*)0,&p_1073->g_121,&p_1073->g_121},{&p_1073->g_121,(void*)0,&p_1073->g_121,&p_1073->g_121},{&p_1073->g_121,(void*)0,&p_1073->g_121,&p_1073->g_121},{&p_1073->g_121,(void*)0,&p_1073->g_121,&p_1073->g_121},{&p_1073->g_121,(void*)0,&p_1073->g_121,&p_1073->g_121},{&p_1073->g_121,(void*)0,&p_1073->g_121,&p_1073->g_121},{&p_1073->g_121,(void*)0,&p_1073->g_121,&p_1073->g_121}},{{&p_1073->g_121,(void*)0,&p_1073->g_121,&p_1073->g_121},{&p_1073->g_121,(void*)0,&p_1073->g_121,&p_1073->g_121},{&p_1073->g_121,(void*)0,&p_1073->g_121,&p_1073->g_121},{&p_1073->g_121,(void*)0,&p_1073->g_121,&p_1073->g_121},{&p_1073->g_121,(void*)0,&p_1073->g_121,&p_1073->g_121},{&p_1073->g_121,(void*)0,&p_1073->g_121,&p_1073->g_121},{&p_1073->g_121,(void*)0,&p_1073->g_121,&p_1073->g_121},{&p_1073->g_121,(void*)0,&p_1073->g_121,&p_1073->g_121}}};
    VECTOR(uint32_t, 2) l_593 = (VECTOR(uint32_t, 2))(4294967295UL, 4294967292UL);
    VECTOR(uint32_t, 2) l_594 = (VECTOR(uint32_t, 2))(1UL, 0UL);
    uint8_t l_613 = 0xD7L;
    int32_t l_618 = 0L;
    uint64_t l_619 = 5UL;
    VECTOR(uint8_t, 2) l_631 = (VECTOR(uint8_t, 2))(2UL, 0x3CL);
    int i, j, k;
    if (((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(add_sat(((VECTOR(int32_t, 2))(hadd(((VECTOR(int32_t, 8))(0x77DA19AEL, ((VECTOR(int32_t, 2))(0x606E82A7L, 0x3503B5B0L)), 0x1B45C761L, 0x4E22955DL, ((VECTOR(int32_t, 2))(p_1073->g_30.xz)), 0x2DFCE958L)).s66, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(add_sat(((VECTOR(int32_t, 2))(sub_sat(((VECTOR(int32_t, 16))(upsample(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(clz(((VECTOR(int16_t, 2))((-6L), 2L))))))).yxyyyxxyxxyxyxyx, ((VECTOR(uint16_t, 4))(l_31.zyzx)).ywywwwwwwwywyzzz))).s47, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(0x27160C63L, ((VECTOR(int32_t, 2))(mad_sat(((VECTOR(int32_t, 8))(0x0DE197B2L, 1L, ((VECTOR(int32_t, 2))(0x3A4B1F05L, 0x60698B42L)), ((VECTOR(int32_t, 2))(1L, 0x12DB22C0L)), 1L, 0x3167647CL)).s72, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(l_32.s03fd)).yzwxxxxy)).s00)), ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(l_33.yyyx)), 4L, 0x5CAF6DDFL, ((VECTOR(int32_t, 2))(0L, (-5L))), p_27, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(1L, 0x6CCE71C9L)), 0x33BD830BL, 0L)), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))((safe_lshift_func_int8_t_s_u(((safe_mod_func_int8_t_s_s(((((((((VECTOR(uint32_t, 4))(0xC155EA0DL, ((l_33.y , func_38(func_42(p_27, l_45[3][4], p_1073), p_28, l_453, p_1073)) , 0xA8456522L), 0UL, 0UL)).x , 0x90L) & p_1073->g_19[2]) >= p_1073->g_155.x) || p_28) | l_32.s2) || p_27), l_31.x)) == l_31.x), 1)), 0x147DB40AL, ((VECTOR(int32_t, 2))(7L)), 0L, ((VECTOR(int32_t, 2))(4L)), (-2L))).s61)), (-9L))).s7c))), p_27, 0x191CAC2AL, 0x50F8CBD6L, ((VECTOR(int32_t, 2))(1L)), p_27, 0x252F676EL, p_27, 0x7856C352L, 0x5BCEBBB3L, ((VECTOR(int32_t, 2))(0L)), 4L)).s7b)).yxyxyyxxxyyxyyyy)).s7d))).yxxyxyxx, ((VECTOR(int32_t, 8))((-9L)))))).s4445351655225442)).s2, ((VECTOR(int32_t, 8))(0L)), 0x6E8E09BCL, 3L, ((VECTOR(int32_t, 4))(0x2367B649L)), 0x7FDB1C20L)).s99))), ((VECTOR(int32_t, 2))(0x58687CB1L))))), 0L, 0x5B8DAE54L)).z)
    { /* block id: 240 */
        int32_t *l_533 = &p_1073->g_53[1];
        (*l_533) = (l_33.y |= l_32.sf);
        return l_534;
    }
    else
    { /* block id: 244 */
        int64_t *l_535[3];
        int64_t **l_536 = &l_535[2];
        int32_t l_538 = 6L;
        uint64_t l_555 = 0xF1EB54E6E36AFB49L;
        int32_t l_582[4];
        VECTOR(uint32_t, 8) l_596 = (VECTOR(uint32_t, 8))(0xFF02708BL, (VECTOR(uint32_t, 4))(0xFF02708BL, (VECTOR(uint32_t, 2))(0xFF02708BL, 0x33E5AE70L), 0x33E5AE70L), 0x33E5AE70L, 0xFF02708BL, 0x33E5AE70L);
        uint8_t l_610 = 9UL;
        union U2 *l_633 = &p_1073->g_111;
        union U1 l_634[6][8][5] = {{{{0L},{0x799516F0270A112CL},{0x6A40A281D8ADFE18L},{0x72A8FF89D26E0501L},{0x0D71BD211D566C44L}},{{0L},{0x799516F0270A112CL},{0x6A40A281D8ADFE18L},{0x72A8FF89D26E0501L},{0x0D71BD211D566C44L}},{{0L},{0x799516F0270A112CL},{0x6A40A281D8ADFE18L},{0x72A8FF89D26E0501L},{0x0D71BD211D566C44L}},{{0L},{0x799516F0270A112CL},{0x6A40A281D8ADFE18L},{0x72A8FF89D26E0501L},{0x0D71BD211D566C44L}},{{0L},{0x799516F0270A112CL},{0x6A40A281D8ADFE18L},{0x72A8FF89D26E0501L},{0x0D71BD211D566C44L}},{{0L},{0x799516F0270A112CL},{0x6A40A281D8ADFE18L},{0x72A8FF89D26E0501L},{0x0D71BD211D566C44L}},{{0L},{0x799516F0270A112CL},{0x6A40A281D8ADFE18L},{0x72A8FF89D26E0501L},{0x0D71BD211D566C44L}},{{0L},{0x799516F0270A112CL},{0x6A40A281D8ADFE18L},{0x72A8FF89D26E0501L},{0x0D71BD211D566C44L}}},{{{0L},{0x799516F0270A112CL},{0x6A40A281D8ADFE18L},{0x72A8FF89D26E0501L},{0x0D71BD211D566C44L}},{{0L},{0x799516F0270A112CL},{0x6A40A281D8ADFE18L},{0x72A8FF89D26E0501L},{0x0D71BD211D566C44L}},{{0L},{0x799516F0270A112CL},{0x6A40A281D8ADFE18L},{0x72A8FF89D26E0501L},{0x0D71BD211D566C44L}},{{0L},{0x799516F0270A112CL},{0x6A40A281D8ADFE18L},{0x72A8FF89D26E0501L},{0x0D71BD211D566C44L}},{{0L},{0x799516F0270A112CL},{0x6A40A281D8ADFE18L},{0x72A8FF89D26E0501L},{0x0D71BD211D566C44L}},{{0L},{0x799516F0270A112CL},{0x6A40A281D8ADFE18L},{0x72A8FF89D26E0501L},{0x0D71BD211D566C44L}},{{0L},{0x799516F0270A112CL},{0x6A40A281D8ADFE18L},{0x72A8FF89D26E0501L},{0x0D71BD211D566C44L}},{{0L},{0x799516F0270A112CL},{0x6A40A281D8ADFE18L},{0x72A8FF89D26E0501L},{0x0D71BD211D566C44L}}},{{{0L},{0x799516F0270A112CL},{0x6A40A281D8ADFE18L},{0x72A8FF89D26E0501L},{0x0D71BD211D566C44L}},{{0L},{0x799516F0270A112CL},{0x6A40A281D8ADFE18L},{0x72A8FF89D26E0501L},{0x0D71BD211D566C44L}},{{0L},{0x799516F0270A112CL},{0x6A40A281D8ADFE18L},{0x72A8FF89D26E0501L},{0x0D71BD211D566C44L}},{{0L},{0x799516F0270A112CL},{0x6A40A281D8ADFE18L},{0x72A8FF89D26E0501L},{0x0D71BD211D566C44L}},{{0L},{0x799516F0270A112CL},{0x6A40A281D8ADFE18L},{0x72A8FF89D26E0501L},{0x0D71BD211D566C44L}},{{0L},{0x799516F0270A112CL},{0x6A40A281D8ADFE18L},{0x72A8FF89D26E0501L},{0x0D71BD211D566C44L}},{{0L},{0x799516F0270A112CL},{0x6A40A281D8ADFE18L},{0x72A8FF89D26E0501L},{0x0D71BD211D566C44L}},{{0L},{0x799516F0270A112CL},{0x6A40A281D8ADFE18L},{0x72A8FF89D26E0501L},{0x0D71BD211D566C44L}}},{{{0L},{0x799516F0270A112CL},{0x6A40A281D8ADFE18L},{0x72A8FF89D26E0501L},{0x0D71BD211D566C44L}},{{0L},{0x799516F0270A112CL},{0x6A40A281D8ADFE18L},{0x72A8FF89D26E0501L},{0x0D71BD211D566C44L}},{{0L},{0x799516F0270A112CL},{0x6A40A281D8ADFE18L},{0x72A8FF89D26E0501L},{0x0D71BD211D566C44L}},{{0L},{0x799516F0270A112CL},{0x6A40A281D8ADFE18L},{0x72A8FF89D26E0501L},{0x0D71BD211D566C44L}},{{0L},{0x799516F0270A112CL},{0x6A40A281D8ADFE18L},{0x72A8FF89D26E0501L},{0x0D71BD211D566C44L}},{{0L},{0x799516F0270A112CL},{0x6A40A281D8ADFE18L},{0x72A8FF89D26E0501L},{0x0D71BD211D566C44L}},{{0L},{0x799516F0270A112CL},{0x6A40A281D8ADFE18L},{0x72A8FF89D26E0501L},{0x0D71BD211D566C44L}},{{0L},{0x799516F0270A112CL},{0x6A40A281D8ADFE18L},{0x72A8FF89D26E0501L},{0x0D71BD211D566C44L}}},{{{0L},{0x799516F0270A112CL},{0x6A40A281D8ADFE18L},{0x72A8FF89D26E0501L},{0x0D71BD211D566C44L}},{{0L},{0x799516F0270A112CL},{0x6A40A281D8ADFE18L},{0x72A8FF89D26E0501L},{0x0D71BD211D566C44L}},{{0L},{0x799516F0270A112CL},{0x6A40A281D8ADFE18L},{0x72A8FF89D26E0501L},{0x0D71BD211D566C44L}},{{0L},{0x799516F0270A112CL},{0x6A40A281D8ADFE18L},{0x72A8FF89D26E0501L},{0x0D71BD211D566C44L}},{{0L},{0x799516F0270A112CL},{0x6A40A281D8ADFE18L},{0x72A8FF89D26E0501L},{0x0D71BD211D566C44L}},{{0L},{0x799516F0270A112CL},{0x6A40A281D8ADFE18L},{0x72A8FF89D26E0501L},{0x0D71BD211D566C44L}},{{0L},{0x799516F0270A112CL},{0x6A40A281D8ADFE18L},{0x72A8FF89D26E0501L},{0x0D71BD211D566C44L}},{{0L},{0x799516F0270A112CL},{0x6A40A281D8ADFE18L},{0x72A8FF89D26E0501L},{0x0D71BD211D566C44L}}},{{{0L},{0x799516F0270A112CL},{0x6A40A281D8ADFE18L},{0x72A8FF89D26E0501L},{0x0D71BD211D566C44L}},{{0L},{0x799516F0270A112CL},{0x6A40A281D8ADFE18L},{0x72A8FF89D26E0501L},{0x0D71BD211D566C44L}},{{0L},{0x799516F0270A112CL},{0x6A40A281D8ADFE18L},{0x72A8FF89D26E0501L},{0x0D71BD211D566C44L}},{{0L},{0x799516F0270A112CL},{0x6A40A281D8ADFE18L},{0x72A8FF89D26E0501L},{0x0D71BD211D566C44L}},{{0L},{0x799516F0270A112CL},{0x6A40A281D8ADFE18L},{0x72A8FF89D26E0501L},{0x0D71BD211D566C44L}},{{0L},{0x799516F0270A112CL},{0x6A40A281D8ADFE18L},{0x72A8FF89D26E0501L},{0x0D71BD211D566C44L}},{{0L},{0x799516F0270A112CL},{0x6A40A281D8ADFE18L},{0x72A8FF89D26E0501L},{0x0D71BD211D566C44L}},{{0L},{0x799516F0270A112CL},{0x6A40A281D8ADFE18L},{0x72A8FF89D26E0501L},{0x0D71BD211D566C44L}}}};
        VECTOR(int8_t, 8) l_641 = (VECTOR(int8_t, 8))(9L, (VECTOR(int8_t, 4))(9L, (VECTOR(int8_t, 2))(9L, 0L), 0L), 0L, 9L, 0L);
        int32_t l_643 = (-9L);
        int i, j, k;
        for (i = 0; i < 3; i++)
            l_535[i] = &l_534.f0;
        for (i = 0; i < 4; i++)
            l_582[i] = 0x6F32396DL;
        if (((((*l_536) = l_535[0]) == (void*)0) | ((VECTOR(int32_t, 8))(l_537.s77360063)).s5))
        { /* block id: 246 */
            int8_t l_544 = (-1L);
            int16_t *l_545 = (void*)0;
            int16_t *l_546 = &p_1073->g_140;
            VECTOR(uint8_t, 8) l_553 = (VECTOR(uint8_t, 8))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 0x28L), 0x28L), 0x28L, 1UL, 0x28L);
            VECTOR(int32_t, 4) l_579 = (VECTOR(int32_t, 4))(0x247774ECL, (VECTOR(int32_t, 2))(0x247774ECL, 0x3DC3EFBFL), 0x3DC3EFBFL);
            int32_t l_601 = 0x0C95E3B0L;
            VECTOR(int32_t, 8) l_604 = (VECTOR(int32_t, 8))(0x072C8A30L, (VECTOR(int32_t, 4))(0x072C8A30L, (VECTOR(int32_t, 2))(0x072C8A30L, 0x42EBA9D1L), 0x42EBA9D1L), 0x42EBA9D1L, 0x072C8A30L, 0x42EBA9D1L);
            int i;
            (*p_1073->g_548) |= ((~(*p_1073->g_104)) ^ (l_538 > ((*l_546) = (p_1073->g_50[0] ^ (safe_lshift_func_int16_t_s_s(0L, (p_27 || (((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 4))(p_1073->g_541.s5653)).xwyxzxyywyyxzwzy)).s53d2)).x & (p_27 < (safe_rshift_func_int8_t_s_u(l_544, GROUP_DIVERGE(1, 1))))))))))));
            for (p_1073->g_457 = 0; (p_1073->g_457 <= (-14)); --p_1073->g_457)
            { /* block id: 251 */
                int32_t *l_554[6];
                uint16_t *l_566 = (void*)0;
                int64_t *l_571[7] = {&p_1073->g_142.f0,&p_1073->g_142.f0,&p_1073->g_142.f0,&p_1073->g_142.f0,&p_1073->g_142.f0,&p_1073->g_142.f0,&p_1073->g_142.f0};
                VECTOR(uint32_t, 8) l_595 = (VECTOR(uint32_t, 8))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 4294967286UL), 4294967286UL), 4294967286UL, 4294967295UL, 4294967286UL);
                VECTOR(uint32_t, 16) l_597 = (VECTOR(uint32_t, 16))(0xDE58632EL, (VECTOR(uint32_t, 4))(0xDE58632EL, (VECTOR(uint32_t, 2))(0xDE58632EL, 0xF13569FAL), 0xF13569FAL), 0xF13569FAL, 0xDE58632EL, 0xF13569FAL, (VECTOR(uint32_t, 2))(0xDE58632EL, 0xF13569FAL), (VECTOR(uint32_t, 2))(0xDE58632EL, 0xF13569FAL), 0xDE58632EL, 0xF13569FAL, 0xDE58632EL, 0xF13569FAL);
                int i;
                for (i = 0; i < 6; i++)
                    l_554[i] = &l_534.f1;
                l_538 = (safe_add_func_int32_t_s_s(p_27, ((l_537.s6 &= (*p_1073->g_104)) & ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(l_553.s46)).xxyxyyxx)).s4)));
                ++l_555;
                if ((safe_mod_func_uint64_t_u_u(FAKE_DIVERGE(p_1073->global_1_offset, get_global_id(1), 10), (safe_mod_func_int64_t_s_s((safe_div_func_int32_t_s_s(((safe_div_func_uint16_t_u_u(l_538, (p_27 | ((void*)0 == l_566)))) ^ (safe_lshift_func_int16_t_s_s(((p_28 = ((*p_1073->g_114) == l_569)) == ((safe_rshift_func_int16_t_s_s(((*l_546) = p_27), 11)) ^ (((VECTOR(int64_t, 4))(((VECTOR(int64_t, 16))((!(safe_add_func_uint8_t_u_u((((~(p_1073->g_576[3] != (void*)0)) | p_27) , 255UL), p_27))), ((VECTOR(int64_t, 4))(6L)), (-1L), p_27, 1L, 0x3EBF84B82809F9D9L, (-4L), p_1073->g_53[1], 6L, (-1L), 0L, 4L, (-7L))).s505b)).z >= p_1073->g_368.z))), l_33.y))), (-5L))), 0xBCF5F2D52311559FL)))))
                { /* block id: 257 */
                    int32_t l_578 = 0x072D4719L;
                    int32_t l_580 = 0L;
                    int32_t l_581 = (-8L);
                    int32_t l_583 = 0x54E5CCBFL;
                    l_579.y ^= l_578;
                    l_584++;
                    l_580 = (GROUP_DIVERGE(1, 1) <= (&p_1073->g_270 != (void*)0));
                }
                else
                { /* block id: 261 */
                    VECTOR(int32_t, 16) l_591 = (VECTOR(int32_t, 16))(2L, (VECTOR(int32_t, 4))(2L, (VECTOR(int32_t, 2))(2L, (-9L)), (-9L)), (-9L), 2L, (-9L), (VECTOR(int32_t, 2))(2L, (-9L)), (VECTOR(int32_t, 2))(2L, (-9L)), 2L, (-9L), 2L, (-9L));
                    VECTOR(int32_t, 16) l_592 = (VECTOR(int32_t, 16))(0x3E440E5BL, (VECTOR(int32_t, 4))(0x3E440E5BL, (VECTOR(int32_t, 2))(0x3E440E5BL, 0x7665C5FBL), 0x7665C5FBL), 0x7665C5FBL, 0x3E440E5BL, 0x7665C5FBL, (VECTOR(int32_t, 2))(0x3E440E5BL, 0x7665C5FBL), (VECTOR(int32_t, 2))(0x3E440E5BL, 0x7665C5FBL), 0x3E440E5BL, 0x7665C5FBL, 0x3E440E5BL, 0x7665C5FBL);
                    int32_t l_605 = 0x45062150L;
                    int32_t l_608 = 0x7A1165F3L;
                    int i;
                    l_601 ^= ((safe_add_func_uint16_t_u_u((p_27 , ((l_579.x = (p_1073->g_comm_values[p_1073->tid] = ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 16))(max(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(mad_sat(((VECTOR(int64_t, 16))(p_1073->g_589.s6312632756306211)).s8521, ((VECTOR(int64_t, 16))(upsample(((VECTOR(int32_t, 8))(add_sat(((VECTOR(int32_t, 2))(0x3FCA03D2L, 0x072E87CCL)).yxyyxyyx, ((VECTOR(int32_t, 8))(min(((VECTOR(int32_t, 4))((l_590[0][1][2] == (void*)0), 0L, 0x6A115B91L, 0x17CAFDA0L)).yxwzwzzw, ((VECTOR(int32_t, 4))(max(((VECTOR(int32_t, 8))(l_591.s0b62b480)).even, ((VECTOR(int32_t, 2))(l_592.sd0)).yxxy))).wyxwyxww)))))).s6160373163325003, ((VECTOR(uint32_t, 16))(rhadd(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))(4294967295UL, 0xBDC186C0L)), ((VECTOR(uint32_t, 8))(mad_hi(((VECTOR(uint32_t, 4))(l_593.yxxy)).wwywzzzx, ((VECTOR(uint32_t, 2))(sub_sat(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(l_594.yxyy)).wywxzwzx)).s71, ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 8))(abs(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 16))(l_595.s0320424140304634)).s34b3)).zxzyyxxx))))).s77))).xyyxxxxy, ((VECTOR(uint32_t, 16))(l_596.s1332430366615002)).hi))), (((((((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 4))(p_27, 0xE39EE3CD1E7E6598L, 18446744073709551612UL, 18446744073709551611UL)), 18446744073709551615UL, ((VECTOR(uint64_t, 2))(upsample(((VECTOR(uint32_t, 2))(0x8CC04DA4L, 4294967295UL)), ((VECTOR(uint32_t, 8))(l_597.s8d7d557c)).s42))), (((((p_1073->g_194.sa >= l_596.s1) == ((safe_unary_minus_func_uint16_t_u(p_27)) , ((((l_582[2] > ((safe_mul_func_int16_t_s_s(p_27, (-1L))) & 0x1FL)) >= p_1073->g_9) && p_28) > 7L))) >= p_1073->g_368.x) , 0x0D55A0DDL) != p_27), 18446744073709551606UL, 0x586E5A838036B2C3L, 18446744073709551615UL, 18446744073709551608UL, 18446744073709551612UL, 1UL, 0UL, 0xA3BFB7254D2A3B94L)).s4 && p_27) > p_27) > p_1073->g_10.y) <= 0x1584F2E6B485F663L) <= p_27), 1UL, 0xD0D5D87DL, 8UL, 0xE6B4C3B0L, 0UL)), ((VECTOR(uint32_t, 16))(4294967295UL)))))))).s7b6f, ((VECTOR(int64_t, 4))(0x2A122399B971D7D6L))))).xwwwwwzx)).s3577177617172256, ((VECTOR(int64_t, 16))(0L))))).s07)).even)) | p_27)), p_28)) , p_27);
                    for (l_584 = 0; (l_584 != 49); l_584++)
                    { /* block id: 267 */
                        l_605 |= ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(l_604.s11)), 0x5DAF70A0L, 3L)).z;
                    }
                    l_538 = l_604.s7;
                    for (l_538 = 0; (l_538 < 8); l_538++)
                    { /* block id: 273 */
                        int16_t l_609 = (-5L);
                        l_610++;
                        l_613 ^= p_28;
                    }
                }
            }
        }
        else
        { /* block id: 279 */
            int32_t l_614 = 1L;
            int32_t l_615 = (-9L);
            int32_t l_616 = 0x58AA0B05L;
            int32_t l_617[5][9] = {{0x1D638812L,0L,0x1D638812L,0x1D638812L,0L,0x1D638812L,0x1D638812L,0L,0x1D638812L},{0x1D638812L,0L,0x1D638812L,0x1D638812L,0L,0x1D638812L,0x1D638812L,0L,0x1D638812L},{0x1D638812L,0L,0x1D638812L,0x1D638812L,0L,0x1D638812L,0x1D638812L,0L,0x1D638812L},{0x1D638812L,0L,0x1D638812L,0x1D638812L,0L,0x1D638812L,0x1D638812L,0L,0x1D638812L},{0x1D638812L,0L,0x1D638812L,0x1D638812L,0L,0x1D638812L,0x1D638812L,0L,0x1D638812L}};
            VECTOR(int16_t, 2) l_640 = (VECTOR(int16_t, 2))(0L, 0L);
            int i, j;
            l_614 = p_27;
            l_619++;
            for (l_619 = 0; (l_619 <= 8); l_619 = safe_add_func_int32_t_s_s(l_619, 3))
            { /* block id: 284 */
                union U2 **l_632 = &l_569;
                union U1 *l_635 = &l_534;
                union U1 *l_636 = &l_634[2][7][3];
                VECTOR(int16_t, 16) l_639 = (VECTOR(int16_t, 16))(9L, (VECTOR(int16_t, 4))(9L, (VECTOR(int16_t, 2))(9L, (-3L)), (-3L)), (-3L), 9L, (-3L), (VECTOR(int16_t, 2))(9L, (-3L)), (VECTOR(int16_t, 2))(9L, (-3L)), 9L, (-3L), 9L, (-3L));
                int i, j;
                barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                p_1073->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 119)), permutations[(safe_mod_func_uint32_t_u_u((safe_add_func_int32_t_s_s((p_1073->g_459.sf , (l_643 = ((*p_1073->g_548) = (l_538 = (((p_1073->g_626[0][0] , (safe_rshift_func_uint16_t_u_u(((safe_mul_func_uint16_t_u_u((p_27 & (((l_596.s6 || ((VECTOR(uint8_t, 16))(l_631.yxxxxxxyxyyyxxxy)).s3) | (((l_582[3] = ((((*l_632) = l_569) != (l_633 = (void*)0)) == (((*l_636) = ((*l_635) = ((*p_1073->g_388) = l_634[5][3][3]))) , ((safe_mul_func_int16_t_s_s(p_28, ((VECTOR(uint16_t, 4))(abs_diff(((VECTOR(int16_t, 4))(mad_sat(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(l_639.s51)))).xxxx, ((VECTOR(int16_t, 2))(l_640.yx)).yxxx, ((VECTOR(int16_t, 16))(rhadd(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 4))(min(((VECTOR(int16_t, 4))(0x1DE0L, ((VECTOR(int16_t, 2))(upsample(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 2))(hadd(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(hadd(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(l_641.s57)).xxyx)).lo, ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))(p_1073->g_642.s5374301621046601)).s3, (((-1L) | p_28) >= (*p_1073->g_104)), l_614, 0L, 0x3BL, ((VECTOR(int8_t, 2))(0x7BL)), 1L)).s43)).yyxxxxxxyyyxxyxy)).s09))), (-5L), 0x09L)).even, ((VECTOR(int8_t, 2))(0L))))))).xxyxxyyy)).s77, ((VECTOR(uint8_t, 2))(0x9CL))))), 1L)), ((VECTOR(int16_t, 4))((-1L)))))).hi)).yxxxxxyxxxyxyyxx, ((VECTOR(int16_t, 16))(1L))))).s4428))), ((VECTOR(int16_t, 4))((-9L)))))).y)) | l_639.sc)))) ^ p_1073->g_272.x) , 0x89FAL)) < 5L)), p_27)) <= l_639.s0), 1))) | p_27) <= p_1073->g_368.x))))), l_639.sf)), 10))][(safe_mod_func_uint32_t_u_u(p_1073->tid, 119))]));
            }
        }
        for (l_643 = (-17); (l_643 > (-29)); l_643 = safe_sub_func_int64_t_s_s(l_643, 1))
        { /* block id: 301 */
            int32_t *l_648 = (void*)0;
            for (p_1073->g_479 = 3; (p_1073->g_479 < 17); p_1073->g_479 = safe_add_func_uint16_t_u_u(p_1073->g_479, 9))
            { /* block id: 304 */
                l_648 = &l_643;
            }
        }
        return l_634[5][3][3];
    }
}


/* ------------------------------------------ */
/* 
 * reads : p_1073->g_459 p_1073->g_29.f0 p_1073->g_142 p_1073->g_479 permutations p_1073->g_104 p_1073->g_270 p_1073->g_506 p_1073->g_142.f0 p_1073->g_522 p_1073->g_491 p_1073->g_53 p_1073->g_10 p_1073->g_191 p_1073->g_316
 * writes: p_1073->g_457 p_1073->g_465 p_1073->g_191 p_1073->g_479 p_1073->g_50 p_1073->g_246.f1 p_1073->g_388 p_1073->g_142.f3 p_1073->g_503 p_1073->g_142.f0 p_1073->g_522 p_1073->g_53 p_1073->g_94
 */
union U4  func_38(uint64_t  p_39, uint32_t  p_40, uint16_t * p_41, struct S6 * p_1073)
{ /* block id: 201 */
    int32_t *l_456 = &p_1073->g_457;
    VECTOR(uint32_t, 16) l_458 = (VECTOR(uint32_t, 16))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 0x8F7F0EEAL), 0x8F7F0EEAL), 0x8F7F0EEAL, 4294967295UL, 0x8F7F0EEAL, (VECTOR(uint32_t, 2))(4294967295UL, 0x8F7F0EEAL), (VECTOR(uint32_t, 2))(4294967295UL, 0x8F7F0EEAL), 4294967295UL, 0x8F7F0EEAL, 4294967295UL, 0x8F7F0EEAL);
    VECTOR(int64_t, 2) l_460 = (VECTOR(int64_t, 2))((-7L), 1L);
    union U1 l_461 = {0x0DB29413AA12DD35L};
    int16_t *l_463 = &p_1073->g_140;
    int16_t **l_462 = &l_463;
    int16_t ***l_464[8];
    uint64_t *l_471 = (void*)0;
    uint64_t *l_472 = (void*)0;
    uint64_t *l_473 = (void*)0;
    uint64_t *l_474 = (void*)0;
    uint64_t *l_475 = (void*)0;
    uint64_t *l_476 = &p_1073->g_191[0];
    int64_t *l_477 = (void*)0;
    int64_t *l_478 = (void*)0;
    int32_t *l_480 = &l_461.f1;
    uint8_t l_484[3];
    int32_t l_505 = 0x62230773L;
    VECTOR(uint8_t, 16) l_514 = (VECTOR(uint8_t, 16))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 0x93L), 0x93L), 0x93L, 255UL, 0x93L, (VECTOR(uint8_t, 2))(255UL, 0x93L), (VECTOR(uint8_t, 2))(255UL, 0x93L), 255UL, 0x93L, 255UL, 0x93L);
    int8_t *l_527[5];
    uint16_t l_532 = 0UL;
    int i;
    for (i = 0; i < 8; i++)
        l_464[i] = &l_462;
    for (i = 0; i < 3; i++)
        l_484[i] = 0x3CL;
    for (i = 0; i < 5; i++)
        l_527[i] = (void*)0;
    (*l_480) = (safe_div_func_int32_t_s_s(((((VECTOR(int64_t, 16))(max(((VECTOR(int64_t, 2))(upsample(((VECTOR(int32_t, 4))(((*l_456) = 9L), ((VECTOR(int32_t, 2))((-7L), 0x79D3DC06L)), 0x6F1039CFL)).lo, ((VECTOR(uint32_t, 4))(sub_sat(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))(mul_hi(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 4))(l_458.s9ebc)).lo)).xxyxyxyxyxyyxxxx)).s5a)).yxxyxxyx, ((VECTOR(uint32_t, 2))(0x4C8019D6L, 0x6A645496L)).yyyyyyxx))).s1203150306232661)).s21e3, ((VECTOR(uint32_t, 2))(p_1073->g_459.sd7)).xyxy))).even))).xxxyyxyxxxyxyyyx, (int64_t)((VECTOR(int64_t, 4))(0x3D813E0CE4F53F8DL, ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 16))(sub_sat(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 8))(l_460.xxyyxxxx)).s55)), (-2L), ((l_461 , (-10L)) ^ (((p_1073->g_465[0][0] = l_462) == &p_1073->g_248) != p_1073->g_29.f0)), (p_1073->g_479 |= (((*l_476) = (((p_1073->g_142 , (safe_rshift_func_uint16_t_u_s(((0L || (safe_rshift_func_uint16_t_u_u(l_460.x, 3))) && l_458.s7), 5))) ^ FAKE_DIVERGE(p_1073->global_0_offset, get_global_id(0), 10)) , GROUP_DIVERGE(0, 1))) >= 0x3E96AFE467C0A7CDL)), ((VECTOR(int64_t, 8))(3L)), l_460.x, 0x7084D8D6FCE461A9L, 0x32075B8F82095A32L)), ((VECTOR(int64_t, 16))(1L))))).s15)), 0x16E4F1FC2FFD1641L)).y))).s7 & 0x0BF3F6AEC69DAE28L) < (-1L)), 0x12EC5850L));
    for (l_461.f1 = 0; (l_461.f1 <= (-9)); --l_461.f1)
    { /* block id: 209 */
        uint16_t *l_483[9][1][5] = {{{(void*)0,(void*)0,&p_1073->g_9,(void*)0,(void*)0}},{{(void*)0,(void*)0,&p_1073->g_9,(void*)0,(void*)0}},{{(void*)0,(void*)0,&p_1073->g_9,(void*)0,(void*)0}},{{(void*)0,(void*)0,&p_1073->g_9,(void*)0,(void*)0}},{{(void*)0,(void*)0,&p_1073->g_9,(void*)0,(void*)0}},{{(void*)0,(void*)0,&p_1073->g_9,(void*)0,(void*)0}},{{(void*)0,(void*)0,&p_1073->g_9,(void*)0,(void*)0}},{{(void*)0,(void*)0,&p_1073->g_9,(void*)0,(void*)0}},{{(void*)0,(void*)0,&p_1073->g_9,(void*)0,(void*)0}}};
        int8_t *l_487 = (void*)0;
        int8_t *l_488 = &p_1073->g_246.f1;
        union U1 *l_496 = &p_1073->g_324;
        union U1 *l_497 = &p_1073->g_324;
        union U1 **l_498 = &p_1073->g_388;
        int32_t *l_504[1][4] = {{&p_1073->g_53[1],&p_1073->g_53[1],&p_1073->g_53[1],&p_1073->g_53[1]}};
        int16_t **l_507 = &l_463;
        int i, j, k;
        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        p_1073->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 119)), permutations[(safe_mod_func_uint32_t_u_u((p_41 != ((FAKE_DIVERGE(p_1073->local_1_offset, get_local_id(1), 10) < (l_484[1] = GROUP_DIVERGE(1, 1))) , p_41)), 10))][(safe_mod_func_uint32_t_u_u(p_1073->tid, 119))]));
        l_505 = ((p_1073->g_503 = ((safe_mul_func_int8_t_s_s(((*p_1073->g_104) = permutations[(safe_mod_func_uint32_t_u_u((p_41 != ((FAKE_DIVERGE(p_1073->local_1_offset, get_local_id(1), 10) < (l_484[1] = GROUP_DIVERGE(1, 1))) , p_41)), 10))][(safe_mod_func_uint32_t_u_u(p_1073->tid, 119))]), ((*l_488) = 0x78L))) & ((p_1073->g_142.f3 = ((((VECTOR(int8_t, 4))(mad_sat(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))(p_1073->g_489.wxzxwzxzxwyzxzwz)).odd)).odd, ((VECTOR(int8_t, 8))(p_1073->g_490.s73716030)).lo, ((VECTOR(int8_t, 8))(rotate(((VECTOR(int8_t, 8))(p_1073->g_491.s7362a070)), ((VECTOR(int8_t, 4))(0x14L, ((VECTOR(int8_t, 2))(4L, 0x3FL)), 1L)).zzwwxwxw))).odd))).y && (safe_div_func_int8_t_s_s(((p_40 > 2L) | (safe_add_func_uint16_t_u_u(((l_496 = l_496) == ((*l_498) = l_497)), (safe_lshift_func_int16_t_s_u((~(safe_sub_func_int32_t_s_s((*l_480), ((p_39 | p_39) >= 0x2659956A99F2DA1CL)))), 1))))), FAKE_DIVERGE(p_1073->local_0_offset, get_local_id(0), 10)))) & 1L)) ^ p_40))) | p_40);
        p_1073->g_465[0][0] = (p_1073->g_270 , (p_1073->g_506 , l_507));
    }
    for (p_1073->g_142.f0 = 20; (p_1073->g_142.f0 == 11); --p_1073->g_142.f0)
    { /* block id: 225 */
        return p_1073->g_506;
    }
    for (p_40 = 0; (p_40 > 23); p_40++)
    { /* block id: 230 */
        int32_t *l_512[6] = {&p_1073->g_53[1],&p_1073->g_53[1],&p_1073->g_53[1],&p_1073->g_53[1],&p_1073->g_53[1],&p_1073->g_53[1]};
        int32_t **l_513 = &l_512[4];
        uint16_t *l_519 = &p_1073->g_142.f3;
        uint16_t *l_520[3][4][3] = {{{&p_1073->g_9,(void*)0,&p_1073->g_9},{&p_1073->g_9,(void*)0,&p_1073->g_9},{&p_1073->g_9,(void*)0,&p_1073->g_9},{&p_1073->g_9,(void*)0,&p_1073->g_9}},{{&p_1073->g_9,(void*)0,&p_1073->g_9},{&p_1073->g_9,(void*)0,&p_1073->g_9},{&p_1073->g_9,(void*)0,&p_1073->g_9},{&p_1073->g_9,(void*)0,&p_1073->g_9}},{{&p_1073->g_9,(void*)0,&p_1073->g_9},{&p_1073->g_9,(void*)0,&p_1073->g_9},{&p_1073->g_9,(void*)0,&p_1073->g_9},{&p_1073->g_9,(void*)0,&p_1073->g_9}}};
        int8_t **l_528[1];
        int8_t *l_529[2];
        int64_t *l_530 = (void*)0;
        int64_t *l_531 = &p_1073->g_94;
        int i, j, k;
        for (i = 0; i < 1; i++)
            l_528[i] = &p_1073->g_104;
        for (i = 0; i < 2; i++)
            l_529[i] = &p_1073->g_50[1];
        (*l_513) = l_512[4];
        (*l_480) &= 0x5CCFB369L;
        l_532 = ((1UL >= ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(l_514.saa02)).zzxxzwzyyxyywxwx)).s2) , (((*l_480) , ((safe_rshift_func_uint8_t_u_u((safe_sub_func_int8_t_s_s((p_39 == (((++p_1073->g_522) , (((*l_531) = (safe_sub_func_uint8_t_u_u(((*l_480) = (&p_1073->g_9 != (void*)0)), ((p_39 , (((l_527[0] != (p_1073->g_491.s6 , (l_529[1] = func_87(&p_1073->g_9, &p_1073->g_19[4], &l_505, p_40, p_1073)))) <= 18446744073709551606UL) <= p_1073->g_10.x)) > 0x01376577L)))) , (void*)0)) == (void*)0)), p_39)), 0)) | p_1073->g_191[0])) || p_1073->g_316.s7));
    }
    return p_1073->g_506;
}


/* ------------------------------------------ */
/* 
 * reads : p_1073->l_comm_values p_1073->g_53 p_1073->g_55 p_1073->g_94 p_1073->g_18 p_1073->g_19 p_1073->g_50 p_1073->g_114 p_1073->g_120 p_1073->g_127 p_1073->g_246 p_1073->g_247 p_1073->g_270 p_1073->g_166 p_1073->g_121 p_1073->g_309 p_1073->g_9 p_1073->g_30 p_1073->g_comm_values p_1073->g_104 p_1073->g_248 p_1073->g_249 p_1073->g_149 p_1073->g_10 p_1073->g_387 p_1073->g_246.f0 p_1073->g_371 p_1073->g_324 p_1073->g_111 p_1073->g_111.f0
 * writes: p_1073->g_53 p_1073->g_55 p_1073->g_94 p_1073->g_104 p_1073->g_115 p_1073->g_121 p_1073->g_142.f1 p_1073->g_50 p_1073->g_140 p_1073->g_320 p_1073->g_388
 */
uint64_t  func_42(uint64_t  p_43, int8_t * p_44, struct S6 * p_1073)
{ /* block id: 8 */
    int8_t *l_49 = &p_1073->g_50[0];
    int8_t *l_51 = &p_1073->g_50[0];
    union U5 l_442 = {-4L};
    VECTOR(int32_t, 16) l_449 = (VECTOR(int32_t, 16))(0x4E6855A4L, (VECTOR(int32_t, 4))(0x4E6855A4L, (VECTOR(int32_t, 2))(0x4E6855A4L, 0x58C867A4L), 0x58C867A4L), 0x58C867A4L, 0x4E6855A4L, 0x58C867A4L, (VECTOR(int32_t, 2))(0x4E6855A4L, 0x58C867A4L), (VECTOR(int32_t, 2))(0x4E6855A4L, 0x58C867A4L), 0x4E6855A4L, 0x58C867A4L, 0x4E6855A4L, 0x58C867A4L);
    int32_t l_452 = 0x4FD85D54L;
    int i;
    l_452 |= (func_46((l_49 = (void*)0), l_51, p_1073) , ((((VECTOR(int8_t, 16))((-10L), (l_442 , (((*p_1073->g_18) != (((*p_1073->g_104) ^ l_442.f0) < ((safe_div_func_int64_t_s_s((safe_mul_func_uint16_t_u_u((((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(l_449.s9772)), (safe_lshift_func_int8_t_s_s((p_1073->g_111 , (*p_1073->g_18)), 4)), ((VECTOR(int32_t, 2))(0L)), p_1073->g_111.f0, ((VECTOR(int32_t, 8))(0x5F74F24DL)))).s5 , 5UL), p_1073->g_246.f0)), l_442.f0)) ^ GROUP_DIVERGE(0, 1)))) > 0x9936L)), ((VECTOR(int8_t, 4))(0x06L)), l_449.sd, ((VECTOR(int8_t, 2))(0x6CL)), 0x75L, 0L, (*p_1073->g_18), 0x3AL, ((VECTOR(int8_t, 2))(0x28L)), 0L)).s2 && 1L) ^ (-3L)));
    return p_1073->g_50[0];
}


/* ------------------------------------------ */
/* 
 * reads : p_1073->l_comm_values p_1073->g_53 p_1073->g_55 p_1073->g_94 p_1073->g_18 p_1073->g_19 p_1073->g_50 p_1073->g_114 p_1073->g_120 p_1073->g_127 p_1073->g_246 p_1073->g_247 p_1073->g_270 p_1073->g_166 p_1073->g_121 p_1073->g_309 p_1073->g_9 p_1073->g_30 p_1073->g_comm_values p_1073->g_104 p_1073->g_248 p_1073->g_249 p_1073->g_149 p_1073->g_10 p_1073->g_387 p_1073->g_246.f0 p_1073->g_371 p_1073->g_324
 * writes: p_1073->g_53 p_1073->g_55 p_1073->g_94 p_1073->g_104 p_1073->g_115 p_1073->g_121 p_1073->g_142.f1 p_1073->g_50 p_1073->g_140 p_1073->g_320 p_1073->g_388
 */
union U1  func_46(int8_t * p_47, int8_t * p_48, struct S6 * p_1073)
{ /* block id: 10 */
    int32_t *l_52 = &p_1073->g_53[1];
    int32_t l_60 = 0x35C0EDEAL;
    int32_t l_61 = 0x29228E1FL;
    int32_t l_62 = (-2L);
    int32_t l_63 = 0x2CED7563L;
    int32_t l_64 = 1L;
    int32_t l_65 = 0x65848584L;
    int32_t l_66 = 0L;
    int32_t l_67 = (-8L);
    int32_t l_68 = 0x046699B5L;
    int32_t l_69 = 1L;
    int32_t l_70 = 0x2D82128CL;
    int32_t l_71 = 0x7F7C8792L;
    int32_t l_72 = 3L;
    int32_t l_73 = (-4L);
    int32_t l_74 = 0x3136B179L;
    int32_t l_75 = 0x3B27F04CL;
    VECTOR(int32_t, 16) l_77 = (VECTOR(int32_t, 16))((-6L), (VECTOR(int32_t, 4))((-6L), (VECTOR(int32_t, 2))((-6L), 0x1E57E6B1L), 0x1E57E6B1L), 0x1E57E6B1L, (-6L), 0x1E57E6B1L, (VECTOR(int32_t, 2))((-6L), 0x1E57E6B1L), (VECTOR(int32_t, 2))((-6L), 0x1E57E6B1L), (-6L), 0x1E57E6B1L, (-6L), 0x1E57E6B1L);
    int32_t l_80[2][6] = {{5L,5L,5L,5L,5L,5L},{5L,5L,5L,5L,5L,5L}};
    uint32_t l_81[4][8][8] = {{{3UL,4294967295UL,4294967291UL,4294967292UL,4294967295UL,4294967294UL,0x90FAD0A5L,1UL},{3UL,4294967295UL,4294967291UL,4294967292UL,4294967295UL,4294967294UL,0x90FAD0A5L,1UL},{3UL,4294967295UL,4294967291UL,4294967292UL,4294967295UL,4294967294UL,0x90FAD0A5L,1UL},{3UL,4294967295UL,4294967291UL,4294967292UL,4294967295UL,4294967294UL,0x90FAD0A5L,1UL},{3UL,4294967295UL,4294967291UL,4294967292UL,4294967295UL,4294967294UL,0x90FAD0A5L,1UL},{3UL,4294967295UL,4294967291UL,4294967292UL,4294967295UL,4294967294UL,0x90FAD0A5L,1UL},{3UL,4294967295UL,4294967291UL,4294967292UL,4294967295UL,4294967294UL,0x90FAD0A5L,1UL},{3UL,4294967295UL,4294967291UL,4294967292UL,4294967295UL,4294967294UL,0x90FAD0A5L,1UL}},{{3UL,4294967295UL,4294967291UL,4294967292UL,4294967295UL,4294967294UL,0x90FAD0A5L,1UL},{3UL,4294967295UL,4294967291UL,4294967292UL,4294967295UL,4294967294UL,0x90FAD0A5L,1UL},{3UL,4294967295UL,4294967291UL,4294967292UL,4294967295UL,4294967294UL,0x90FAD0A5L,1UL},{3UL,4294967295UL,4294967291UL,4294967292UL,4294967295UL,4294967294UL,0x90FAD0A5L,1UL},{3UL,4294967295UL,4294967291UL,4294967292UL,4294967295UL,4294967294UL,0x90FAD0A5L,1UL},{3UL,4294967295UL,4294967291UL,4294967292UL,4294967295UL,4294967294UL,0x90FAD0A5L,1UL},{3UL,4294967295UL,4294967291UL,4294967292UL,4294967295UL,4294967294UL,0x90FAD0A5L,1UL},{3UL,4294967295UL,4294967291UL,4294967292UL,4294967295UL,4294967294UL,0x90FAD0A5L,1UL}},{{3UL,4294967295UL,4294967291UL,4294967292UL,4294967295UL,4294967294UL,0x90FAD0A5L,1UL},{3UL,4294967295UL,4294967291UL,4294967292UL,4294967295UL,4294967294UL,0x90FAD0A5L,1UL},{3UL,4294967295UL,4294967291UL,4294967292UL,4294967295UL,4294967294UL,0x90FAD0A5L,1UL},{3UL,4294967295UL,4294967291UL,4294967292UL,4294967295UL,4294967294UL,0x90FAD0A5L,1UL},{3UL,4294967295UL,4294967291UL,4294967292UL,4294967295UL,4294967294UL,0x90FAD0A5L,1UL},{3UL,4294967295UL,4294967291UL,4294967292UL,4294967295UL,4294967294UL,0x90FAD0A5L,1UL},{3UL,4294967295UL,4294967291UL,4294967292UL,4294967295UL,4294967294UL,0x90FAD0A5L,1UL},{3UL,4294967295UL,4294967291UL,4294967292UL,4294967295UL,4294967294UL,0x90FAD0A5L,1UL}},{{3UL,4294967295UL,4294967291UL,4294967292UL,4294967295UL,4294967294UL,0x90FAD0A5L,1UL},{3UL,4294967295UL,4294967291UL,4294967292UL,4294967295UL,4294967294UL,0x90FAD0A5L,1UL},{3UL,4294967295UL,4294967291UL,4294967292UL,4294967295UL,4294967294UL,0x90FAD0A5L,1UL},{3UL,4294967295UL,4294967291UL,4294967292UL,4294967295UL,4294967294UL,0x90FAD0A5L,1UL},{3UL,4294967295UL,4294967291UL,4294967292UL,4294967295UL,4294967294UL,0x90FAD0A5L,1UL},{3UL,4294967295UL,4294967291UL,4294967292UL,4294967295UL,4294967294UL,0x90FAD0A5L,1UL},{3UL,4294967295UL,4294967291UL,4294967292UL,4294967295UL,4294967294UL,0x90FAD0A5L,1UL},{3UL,4294967295UL,4294967291UL,4294967292UL,4294967295UL,4294967294UL,0x90FAD0A5L,1UL}}};
    uint16_t *l_92 = &p_1073->g_9;
    VECTOR(int8_t, 8) l_164 = (VECTOR(int8_t, 8))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0x7BL), 0x7BL), 0x7BL, 0L, 0x7BL);
    int32_t l_254 = 0x076EA888L;
    VECTOR(uint64_t, 8) l_260 = (VECTOR(uint64_t, 8))(0x8516E9539AAE6CB8L, (VECTOR(uint64_t, 4))(0x8516E9539AAE6CB8L, (VECTOR(uint64_t, 2))(0x8516E9539AAE6CB8L, 18446744073709551611UL), 18446744073709551611UL), 18446744073709551611UL, 0x8516E9539AAE6CB8L, 18446744073709551611UL);
    uint32_t l_284 = 4294967287UL;
    int16_t **l_312 = (void*)0;
    VECTOR(uint8_t, 2) l_313 = (VECTOR(uint8_t, 2))(2UL, 0x64L);
    VECTOR(uint8_t, 4) l_319 = (VECTOR(uint8_t, 4))(4UL, (VECTOR(uint8_t, 2))(4UL, 255UL), 255UL);
    union U1 *l_323 = &p_1073->g_324;
    union U2 **l_327 = &p_1073->g_115;
    uint32_t l_328 = 4294967295UL;
    VECTOR(int8_t, 8) l_370 = (VECTOR(int8_t, 8))(0x56L, (VECTOR(int8_t, 4))(0x56L, (VECTOR(int8_t, 2))(0x56L, 1L), 1L), 1L, 0x56L, 1L);
    VECTOR(int8_t, 2) l_372 = (VECTOR(int8_t, 2))((-1L), 4L);
    uint32_t l_399 = 0UL;
    union U5 l_418 = {1L};
    int32_t l_438 = 0x2583837AL;
    int i, j, k;
    (*l_52) &= p_1073->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1073->tid, 119))];
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    p_1073->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 119)), permutations[(safe_mod_func_uint32_t_u_u(0x0910B8B7L, 10))][(safe_mod_func_uint32_t_u_u(p_1073->tid, 119))]));
    for (p_1073->g_55 = 4; (p_1073->g_55 > (-19)); p_1073->g_55--)
    { /* block id: 17 */
        int32_t *l_58 = &p_1073->g_53[1];
        int32_t *l_59[10][5][5] = {{{(void*)0,(void*)0,(void*)0,&p_1073->g_55,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1073->g_55,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1073->g_55,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1073->g_55,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1073->g_55,(void*)0}},{{(void*)0,(void*)0,(void*)0,&p_1073->g_55,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1073->g_55,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1073->g_55,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1073->g_55,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1073->g_55,(void*)0}},{{(void*)0,(void*)0,(void*)0,&p_1073->g_55,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1073->g_55,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1073->g_55,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1073->g_55,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1073->g_55,(void*)0}},{{(void*)0,(void*)0,(void*)0,&p_1073->g_55,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1073->g_55,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1073->g_55,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1073->g_55,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1073->g_55,(void*)0}},{{(void*)0,(void*)0,(void*)0,&p_1073->g_55,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1073->g_55,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1073->g_55,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1073->g_55,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1073->g_55,(void*)0}},{{(void*)0,(void*)0,(void*)0,&p_1073->g_55,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1073->g_55,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1073->g_55,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1073->g_55,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1073->g_55,(void*)0}},{{(void*)0,(void*)0,(void*)0,&p_1073->g_55,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1073->g_55,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1073->g_55,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1073->g_55,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1073->g_55,(void*)0}},{{(void*)0,(void*)0,(void*)0,&p_1073->g_55,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1073->g_55,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1073->g_55,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1073->g_55,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1073->g_55,(void*)0}},{{(void*)0,(void*)0,(void*)0,&p_1073->g_55,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1073->g_55,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1073->g_55,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1073->g_55,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1073->g_55,(void*)0}},{{(void*)0,(void*)0,(void*)0,&p_1073->g_55,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1073->g_55,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1073->g_55,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1073->g_55,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1073->g_55,(void*)0}}};
        int32_t l_76 = 0x0F534B39L;
        int32_t l_78 = 0x00449F6AL;
        int32_t l_79 = 0x3175C3F9L;
        int64_t *l_93 = &p_1073->g_94;
        int8_t **l_103[3][1][4] = {{{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0}}};
        VECTOR(uint8_t, 2) l_107 = (VECTOR(uint8_t, 2))(0x5CL, 0xACL);
        uint8_t l_141 = 0xE2L;
        VECTOR(uint8_t, 16) l_145 = (VECTOR(uint8_t, 16))(246UL, (VECTOR(uint8_t, 4))(246UL, (VECTOR(uint8_t, 2))(246UL, 0x59L), 0x59L), 0x59L, 246UL, 0x59L, (VECTOR(uint8_t, 2))(246UL, 0x59L), (VECTOR(uint8_t, 2))(246UL, 0x59L), 246UL, 0x59L, 246UL, 0x59L);
        uint64_t l_161[1][9] = {{18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL}};
        VECTOR(int8_t, 16) l_165 = (VECTOR(int8_t, 16))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, (-10L)), (-10L)), (-10L), 0L, (-10L), (VECTOR(int8_t, 2))(0L, (-10L)), (VECTOR(int8_t, 2))(0L, (-10L)), 0L, (-10L), 0L, (-10L));
        union U0 l_174 = {1UL};
        union U2 **l_178 = &p_1073->g_115;
        int32_t **l_304[9][8][3] = {{{&l_59[9][1][1],&l_58,&l_58},{&l_59[9][1][1],&l_58,&l_58},{&l_59[9][1][1],&l_58,&l_58},{&l_59[9][1][1],&l_58,&l_58},{&l_59[9][1][1],&l_58,&l_58},{&l_59[9][1][1],&l_58,&l_58},{&l_59[9][1][1],&l_58,&l_58},{&l_59[9][1][1],&l_58,&l_58}},{{&l_59[9][1][1],&l_58,&l_58},{&l_59[9][1][1],&l_58,&l_58},{&l_59[9][1][1],&l_58,&l_58},{&l_59[9][1][1],&l_58,&l_58},{&l_59[9][1][1],&l_58,&l_58},{&l_59[9][1][1],&l_58,&l_58},{&l_59[9][1][1],&l_58,&l_58},{&l_59[9][1][1],&l_58,&l_58}},{{&l_59[9][1][1],&l_58,&l_58},{&l_59[9][1][1],&l_58,&l_58},{&l_59[9][1][1],&l_58,&l_58},{&l_59[9][1][1],&l_58,&l_58},{&l_59[9][1][1],&l_58,&l_58},{&l_59[9][1][1],&l_58,&l_58},{&l_59[9][1][1],&l_58,&l_58},{&l_59[9][1][1],&l_58,&l_58}},{{&l_59[9][1][1],&l_58,&l_58},{&l_59[9][1][1],&l_58,&l_58},{&l_59[9][1][1],&l_58,&l_58},{&l_59[9][1][1],&l_58,&l_58},{&l_59[9][1][1],&l_58,&l_58},{&l_59[9][1][1],&l_58,&l_58},{&l_59[9][1][1],&l_58,&l_58},{&l_59[9][1][1],&l_58,&l_58}},{{&l_59[9][1][1],&l_58,&l_58},{&l_59[9][1][1],&l_58,&l_58},{&l_59[9][1][1],&l_58,&l_58},{&l_59[9][1][1],&l_58,&l_58},{&l_59[9][1][1],&l_58,&l_58},{&l_59[9][1][1],&l_58,&l_58},{&l_59[9][1][1],&l_58,&l_58},{&l_59[9][1][1],&l_58,&l_58}},{{&l_59[9][1][1],&l_58,&l_58},{&l_59[9][1][1],&l_58,&l_58},{&l_59[9][1][1],&l_58,&l_58},{&l_59[9][1][1],&l_58,&l_58},{&l_59[9][1][1],&l_58,&l_58},{&l_59[9][1][1],&l_58,&l_58},{&l_59[9][1][1],&l_58,&l_58},{&l_59[9][1][1],&l_58,&l_58}},{{&l_59[9][1][1],&l_58,&l_58},{&l_59[9][1][1],&l_58,&l_58},{&l_59[9][1][1],&l_58,&l_58},{&l_59[9][1][1],&l_58,&l_58},{&l_59[9][1][1],&l_58,&l_58},{&l_59[9][1][1],&l_58,&l_58},{&l_59[9][1][1],&l_58,&l_58},{&l_59[9][1][1],&l_58,&l_58}},{{&l_59[9][1][1],&l_58,&l_58},{&l_59[9][1][1],&l_58,&l_58},{&l_59[9][1][1],&l_58,&l_58},{&l_59[9][1][1],&l_58,&l_58},{&l_59[9][1][1],&l_58,&l_58},{&l_59[9][1][1],&l_58,&l_58},{&l_59[9][1][1],&l_58,&l_58},{&l_59[9][1][1],&l_58,&l_58}},{{&l_59[9][1][1],&l_58,&l_58},{&l_59[9][1][1],&l_58,&l_58},{&l_59[9][1][1],&l_58,&l_58},{&l_59[9][1][1],&l_58,&l_58},{&l_59[9][1][1],&l_58,&l_58},{&l_59[9][1][1],&l_58,&l_58},{&l_59[9][1][1],&l_58,&l_58},{&l_59[9][1][1],&l_58,&l_58}}};
        int32_t ***l_303 = &l_304[1][0][2];
        int64_t l_310 = 6L;
        uint8_t *l_314[2];
        uint16_t l_329 = 0x1EADL;
        uint16_t l_382 = 5UL;
        int i, j, k;
        for (i = 0; i < 2; i++)
            l_314[i] = &l_141;
        ++l_81[2][6][1];
        if (((*l_58) = ((func_84((p_1073->g_104 = (p_48 = func_87(l_92, &p_1073->g_50[0], (((*l_93) |= (*l_52)) , &l_76), p_1073->g_53[2], p_1073))), ((safe_sub_func_int16_t_s_s((((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(l_107.yy)).xxyx)).z & (*p_1073->g_18)), 1UL)) , (safe_rshift_func_int16_t_s_u((l_70 & p_1073->g_50[2]), 15))), p_1073) , &l_74) != (void*)0)))
        { /* block id: 31 */
            int32_t *l_117 = &l_80[1][0];
            int32_t **l_118 = &l_117;
            (*l_118) = l_117;
        }
        else
        { /* block id: 33 */
            int32_t **l_119 = (void*)0;
            VECTOR(uint16_t, 2) l_152 = (VECTOR(uint16_t, 2))(1UL, 65535UL);
            VECTOR(int8_t, 2) l_168 = (VECTOR(int8_t, 2))(0x6DL, 7L);
            int32_t l_189 = 1L;
            int i;
            (*p_1073->g_120) = &p_1073->g_55;
            for (p_1073->g_94 = 0; (p_1073->g_94 != (-26)); p_1073->g_94 = safe_sub_func_int8_t_s_s(p_1073->g_94, 6))
            { /* block id: 37 */
                int32_t l_130 = (-1L);
                int32_t **l_160 = &l_58;
                VECTOR(int8_t, 16) l_169 = (VECTOR(int8_t, 16))(0x64L, (VECTOR(int8_t, 4))(0x64L, (VECTOR(int8_t, 2))(0x64L, 0L), 0L), 0L, 0x64L, 0L, (VECTOR(int8_t, 2))(0x64L, 0L), (VECTOR(int8_t, 2))(0x64L, 0L), 0x64L, 0L, 0x64L, 0L);
                int16_t *l_177[2];
                uint64_t *l_187 = &l_161[0][1];
                uint32_t *l_188[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                uint64_t *l_190 = &p_1073->g_191[0];
                int i;
                for (i = 0; i < 2; i++)
                    l_177[i] = &p_1073->g_140;
                for (l_61 = 0; (l_61 > (-10)); l_61--)
                { /* block id: 40 */
                    int32_t *l_126 = &p_1073->g_55;
                    (*p_1073->g_127) = l_126;
                }
            }
        }
        for (p_1073->g_142.f1 = 24; (p_1073->g_142.f1 == 52); p_1073->g_142.f1++)
        { /* block id: 67 */
            int32_t *l_206[6] = {&l_72,&l_69,&l_72,&l_72,&l_69,&l_72};
            int16_t **l_250 = (void*)0;
            int64_t *l_253 = (void*)0;
            int8_t *l_257 = &p_1073->g_50[0];
            VECTOR(uint64_t, 16) l_271 = (VECTOR(uint64_t, 16))(0UL, (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 0x9FE5C63CD88CE5F2L), 0x9FE5C63CD88CE5F2L), 0x9FE5C63CD88CE5F2L, 0UL, 0x9FE5C63CD88CE5F2L, (VECTOR(uint64_t, 2))(0UL, 0x9FE5C63CD88CE5F2L), (VECTOR(uint64_t, 2))(0UL, 0x9FE5C63CD88CE5F2L), 0UL, 0x9FE5C63CD88CE5F2L, 0UL, 0x9FE5C63CD88CE5F2L);
            int i;
            (*p_1073->g_127) = l_206[1];
            if ((atomic_inc(&p_1073->l_atomic_input[27]) == 7))
            { /* block id: 70 */
                int32_t l_208 = 0L;
                int32_t *l_207[7][10][3] = {{{&l_208,&l_208,(void*)0},{&l_208,&l_208,(void*)0},{&l_208,&l_208,(void*)0},{&l_208,&l_208,(void*)0},{&l_208,&l_208,(void*)0},{&l_208,&l_208,(void*)0},{&l_208,&l_208,(void*)0},{&l_208,&l_208,(void*)0},{&l_208,&l_208,(void*)0},{&l_208,&l_208,(void*)0}},{{&l_208,&l_208,(void*)0},{&l_208,&l_208,(void*)0},{&l_208,&l_208,(void*)0},{&l_208,&l_208,(void*)0},{&l_208,&l_208,(void*)0},{&l_208,&l_208,(void*)0},{&l_208,&l_208,(void*)0},{&l_208,&l_208,(void*)0},{&l_208,&l_208,(void*)0},{&l_208,&l_208,(void*)0}},{{&l_208,&l_208,(void*)0},{&l_208,&l_208,(void*)0},{&l_208,&l_208,(void*)0},{&l_208,&l_208,(void*)0},{&l_208,&l_208,(void*)0},{&l_208,&l_208,(void*)0},{&l_208,&l_208,(void*)0},{&l_208,&l_208,(void*)0},{&l_208,&l_208,(void*)0},{&l_208,&l_208,(void*)0}},{{&l_208,&l_208,(void*)0},{&l_208,&l_208,(void*)0},{&l_208,&l_208,(void*)0},{&l_208,&l_208,(void*)0},{&l_208,&l_208,(void*)0},{&l_208,&l_208,(void*)0},{&l_208,&l_208,(void*)0},{&l_208,&l_208,(void*)0},{&l_208,&l_208,(void*)0},{&l_208,&l_208,(void*)0}},{{&l_208,&l_208,(void*)0},{&l_208,&l_208,(void*)0},{&l_208,&l_208,(void*)0},{&l_208,&l_208,(void*)0},{&l_208,&l_208,(void*)0},{&l_208,&l_208,(void*)0},{&l_208,&l_208,(void*)0},{&l_208,&l_208,(void*)0},{&l_208,&l_208,(void*)0},{&l_208,&l_208,(void*)0}},{{&l_208,&l_208,(void*)0},{&l_208,&l_208,(void*)0},{&l_208,&l_208,(void*)0},{&l_208,&l_208,(void*)0},{&l_208,&l_208,(void*)0},{&l_208,&l_208,(void*)0},{&l_208,&l_208,(void*)0},{&l_208,&l_208,(void*)0},{&l_208,&l_208,(void*)0},{&l_208,&l_208,(void*)0}},{{&l_208,&l_208,(void*)0},{&l_208,&l_208,(void*)0},{&l_208,&l_208,(void*)0},{&l_208,&l_208,(void*)0},{&l_208,&l_208,(void*)0},{&l_208,&l_208,(void*)0},{&l_208,&l_208,(void*)0},{&l_208,&l_208,(void*)0},{&l_208,&l_208,(void*)0},{&l_208,&l_208,(void*)0}}};
                int32_t l_209 = 1L;
                uint64_t l_210 = 1UL;
                int16_t l_242[3][8] = {{0x2C9FL,9L,9L,0x2C9FL,0x2C9FL,9L,9L,0x2C9FL},{0x2C9FL,9L,9L,0x2C9FL,0x2C9FL,9L,9L,0x2C9FL},{0x2C9FL,9L,9L,0x2C9FL,0x2C9FL,9L,9L,0x2C9FL}};
                int16_t *l_241 = &l_242[1][1];
                int16_t **l_240[3][2][3] = {{{&l_241,&l_241,&l_241},{&l_241,&l_241,&l_241}},{{&l_241,&l_241,&l_241},{&l_241,&l_241,&l_241}},{{&l_241,&l_241,&l_241},{&l_241,&l_241,&l_241}}};
                VECTOR(int32_t, 2) l_243 = (VECTOR(int32_t, 2))(7L, 0x67A7047DL);
                VECTOR(int32_t, 8) l_244 = (VECTOR(int32_t, 8))(0x3F1DB032L, (VECTOR(int32_t, 4))(0x3F1DB032L, (VECTOR(int32_t, 2))(0x3F1DB032L, 0x02E1B593L), 0x02E1B593L), 0x02E1B593L, 0x3F1DB032L, 0x02E1B593L);
                int16_t l_245 = 0x0D2FL;
                int i, j, k;
                l_207[6][4][2] = l_207[6][4][2];
                if ((l_210 = l_209))
                { /* block id: 73 */
                    uint64_t l_211 = 0xDCE14CEF642E672BL;
                    uint32_t l_214[9][10] = {{0xDE0BBEE7L,0xDE0BBEE7L,3UL,0x93A47A92L,8UL,0x93A47A92L,3UL,0xDE0BBEE7L,0xDE0BBEE7L,3UL},{0xDE0BBEE7L,0xDE0BBEE7L,3UL,0x93A47A92L,8UL,0x93A47A92L,3UL,0xDE0BBEE7L,0xDE0BBEE7L,3UL},{0xDE0BBEE7L,0xDE0BBEE7L,3UL,0x93A47A92L,8UL,0x93A47A92L,3UL,0xDE0BBEE7L,0xDE0BBEE7L,3UL},{0xDE0BBEE7L,0xDE0BBEE7L,3UL,0x93A47A92L,8UL,0x93A47A92L,3UL,0xDE0BBEE7L,0xDE0BBEE7L,3UL},{0xDE0BBEE7L,0xDE0BBEE7L,3UL,0x93A47A92L,8UL,0x93A47A92L,3UL,0xDE0BBEE7L,0xDE0BBEE7L,3UL},{0xDE0BBEE7L,0xDE0BBEE7L,3UL,0x93A47A92L,8UL,0x93A47A92L,3UL,0xDE0BBEE7L,0xDE0BBEE7L,3UL},{0xDE0BBEE7L,0xDE0BBEE7L,3UL,0x93A47A92L,8UL,0x93A47A92L,3UL,0xDE0BBEE7L,0xDE0BBEE7L,3UL},{0xDE0BBEE7L,0xDE0BBEE7L,3UL,0x93A47A92L,8UL,0x93A47A92L,3UL,0xDE0BBEE7L,0xDE0BBEE7L,3UL},{0xDE0BBEE7L,0xDE0BBEE7L,3UL,0x93A47A92L,8UL,0x93A47A92L,3UL,0xDE0BBEE7L,0xDE0BBEE7L,3UL}};
                    int16_t l_217 = 1L;
                    VECTOR(int32_t, 8) l_230 = (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 4L), 4L), 4L, 0L, 4L);
                    int i, j;
                    l_211++;
                    --l_214[2][7];
                    if (l_217)
                    { /* block id: 76 */
                        uint16_t l_218 = 0x16EEL;
                        int16_t l_219 = (-3L);
                        int8_t l_220[10][8] = {{1L,1L,1L,1L,1L,1L,1L,1L},{1L,1L,1L,1L,1L,1L,1L,1L},{1L,1L,1L,1L,1L,1L,1L,1L},{1L,1L,1L,1L,1L,1L,1L,1L},{1L,1L,1L,1L,1L,1L,1L,1L},{1L,1L,1L,1L,1L,1L,1L,1L},{1L,1L,1L,1L,1L,1L,1L,1L},{1L,1L,1L,1L,1L,1L,1L,1L},{1L,1L,1L,1L,1L,1L,1L,1L},{1L,1L,1L,1L,1L,1L,1L,1L}};
                        int64_t l_221 = 0x7A2345CDD01D6342L;
                        uint32_t l_222 = 4294967290UL;
                        int i, j;
                        l_221 = (l_220[5][0] ^= (l_219 = l_218));
                        ++l_222;
                    }
                    else
                    { /* block id: 81 */
                        int32_t l_226 = (-1L);
                        int32_t *l_225 = &l_226;
                        VECTOR(uint8_t, 16) l_227 = (VECTOR(uint8_t, 16))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0x13L), 0x13L), 0x13L, 0UL, 0x13L, (VECTOR(uint8_t, 2))(0UL, 0x13L), (VECTOR(uint8_t, 2))(0UL, 0x13L), 0UL, 0x13L, 0UL, 0x13L);
                        VECTOR(uint8_t, 4) l_228 = (VECTOR(uint8_t, 4))(5UL, (VECTOR(uint8_t, 2))(5UL, 1UL), 1UL);
                        int16_t l_229 = 0L;
                        int i;
                        l_207[6][4][2] = l_225;
                        (*l_225) = (((VECTOR(uint8_t, 4))(abs(((VECTOR(uint8_t, 16))(sub_sat(((VECTOR(uint8_t, 4))(l_227.s865a)).ywywzyzwyyyzyzzw, ((VECTOR(uint8_t, 2))(l_228.xx)).xyxyxyyxyxxxxxyy))).se8a8))).w , l_229);
                    }
                    l_230.s3 = ((VECTOR(int32_t, 16))(0x7DAF4DD6L, 0x6E652F08L, (-7L), 0x487887CBL, 0x2EC48310L, 0x39C24C45L, ((VECTOR(int32_t, 8))(l_230.s13745053)).s1, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(0x4EDC32C6L, 0x5F420312L)), 1L, 0L)).zyxwwyww)), (-5L))).sc;
                }
                else
                { /* block id: 86 */
                    int32_t l_232 = 0x620321E0L;
                    int32_t *l_231 = &l_232;
                    union U1 l_234 = {0x370FD327BD9B7857L};
                    union U1 *l_233[5];
                    union U3 *l_235 = (void*)0;
                    union U3 l_237 = {0x9DE8029FL};/* VOLATILE GLOBAL l_237 */
                    union U3 *l_236 = &l_237;
                    int16_t l_238 = 0x2CF4L;
                    uint64_t l_239 = 0xA1E50D7E0083D8C6L;
                    int i;
                    for (i = 0; i < 5; i++)
                        l_233[i] = &l_234;
                    l_207[6][4][2] = l_231;
                    l_233[0] = (void*)0;
                    l_236 = l_235;
                    l_239 &= ((*l_231) |= l_238);
                }
                l_240[2][1][2] = l_240[2][1][2];
                l_245 = ((VECTOR(int32_t, 4))(hadd(((VECTOR(int32_t, 4))(l_243.xyxy)), ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(l_244.s4772655257122035)).s504f))))).z;
                unsigned int result = 0;
                result += l_208;
                result += l_209;
                result += l_210;
                int l_242_i0, l_242_i1;
                for (l_242_i0 = 0; l_242_i0 < 3; l_242_i0++) {
                    for (l_242_i1 = 0; l_242_i1 < 8; l_242_i1++) {
                        result += l_242[l_242_i0][l_242_i1];
                    }
                }
                result += l_243.y;
                result += l_243.x;
                result += l_244.s7;
                result += l_244.s6;
                result += l_244.s5;
                result += l_244.s4;
                result += l_244.s3;
                result += l_244.s2;
                result += l_244.s1;
                result += l_244.s0;
                result += l_245;
                atomic_add(&p_1073->l_special_values[27], result);
            }
            else
            { /* block id: 95 */
                (1 + 1);
            }
            if ((((p_1073->g_246 , p_1073->g_247[0][0]) == l_250) > (safe_add_func_int16_t_s_s((((0x32C6A256C074AFCBL ^ (l_254 = (GROUP_DIVERGE(2, 1) && 0x6B07L))) > ((0x05270DC6L ^ (safe_lshift_func_int16_t_s_s(((p_1073->g_104 = l_257) != ((safe_sub_func_uint64_t_u_u(((VECTOR(uint64_t, 16))(mad_sat(((VECTOR(uint64_t, 16))(l_260.s6012170174660412)), ((VECTOR(uint64_t, 16))(sub_sat(((VECTOR(uint64_t, 4))(((((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))((((*p_48) ^= 9L) == ((safe_div_func_uint32_t_u_u(((p_1073->g_142 , &p_1073->g_9) == (void*)0), p_1073->g_53[2])) != 0x088D73E6L)), 0x4B555033L, 0L, 0x42E72DC9L, 0x435C4965L, ((VECTOR(int32_t, 4))(0x6F7A1B80L)), (*l_58), 0x29E00F0BL, ((VECTOR(int32_t, 4))(0L)), 0x4A8A4F5FL)).scd8a)).z | (*p_1073->g_121)) & (*p_1073->g_121)), ((VECTOR(uint64_t, 2))(0x2BEF01581CB35956L)), 18446744073709551606UL)).yzwwxwyzywxwxxzy, ((VECTOR(uint64_t, 16))(0xCAC514285EE49C00L))))), ((VECTOR(uint64_t, 16))(18446744073709551613UL))))).s4, FAKE_DIVERGE(p_1073->local_1_offset, get_local_id(1), 10))) , l_257)), 7))) & (*l_58))) & (*l_58)), (*l_52)))))
            { /* block id: 101 */
                int32_t **l_263 = &l_52;
                (*l_263) = &l_74;
                if ((*l_58))
                    break;
            }
            else
            { /* block id: 104 */
                VECTOR(uint64_t, 4) l_274 = (VECTOR(uint64_t, 4))(0x6FE158E6A85570AEL, (VECTOR(uint64_t, 2))(0x6FE158E6A85570AEL, 18446744073709551609UL), 18446744073709551609UL);
                VECTOR(int8_t, 8) l_275 = (VECTOR(int8_t, 8))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0x0CL), 0x0CL), 0x0CL, 0L, 0x0CL);
                int32_t l_279 = (-1L);
                int64_t l_280 = 9L;
                int32_t l_281 = 0x213F2A16L;
                int32_t l_282 = 3L;
                VECTOR(int64_t, 4) l_283 = (VECTOR(int64_t, 4))(0x45DAA343B23D90E9L, (VECTOR(int64_t, 2))(0x45DAA343B23D90E9L, (-7L)), (-7L));
                union U3 *l_306 = &p_1073->g_246;
                int i;
                for (l_71 = 0; (l_71 != (-7)); l_71 = safe_sub_func_int64_t_s_s(l_71, 4))
                { /* block id: 107 */
                    int32_t l_273 = 0x33DBC7B3L;
                    for (l_79 = 0; (l_79 < (-11)); l_79 = safe_sub_func_int8_t_s_s(l_79, 3))
                    { /* block id: 110 */
                        uint32_t l_278 = 0x8FF9C4B2L;
                        (*p_1073->g_121) |= (safe_mod_func_uint32_t_u_u(((((*p_48) |= (((((p_1073->g_270 , FAKE_DIVERGE(p_1073->group_1_offset, get_group_id(1), 10)) > ((((VECTOR(uint64_t, 8))(min(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 8))(sub_sat(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))(l_271.sf657058d)).s6475364562064744)).lo, ((VECTOR(uint64_t, 4))(0x82741C40E2B816CDL, ((VECTOR(uint64_t, 2))(p_1073->g_272.wx)), 18446744073709551615UL)).zyxxxwww))).s05)).yyxxxxxy, ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 2))(1UL, 18446744073709551615UL)))), ((VECTOR(uint64_t, 2))(0xD33F3F4F500C49C0L, 0x4559BD97DC1B12C8L)), 0xC77EC0581C3F60DEL, ((VECTOR(uint64_t, 2))(1UL, 9UL)), 6UL)).s51)).xxyy)).zwywxxzz))).s6 || (&p_1073->g_18 != &p_47)) & GROUP_DIVERGE(0, 1))) == l_273) && ((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 16))(l_274.xxxxyxzwzzwwzyyz)).sda)).odd) && ((VECTOR(int8_t, 16))(sub_sat(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 16))(l_275.s3756413505010550)))), ((VECTOR(int8_t, 4))(0x69L, (((VECTOR(int8_t, 2))(0x11L, 0x64L)).odd | 0x31L), 0x26L, (-8L))).yxzyzwwxzzzywzzz))).s9)) , (safe_mod_func_uint16_t_u_u(((((void*)0 != &p_1073->g_94) ^ 0x47575000L) >= p_1073->g_166.s4), l_273))) , p_1073->g_53[1]), l_278));
                    }
                }
                l_284++;
                if ((atomic_inc(&p_1073->l_atomic_input[25]) == 5))
                { /* block id: 117 */
                    uint8_t l_287 = 0xC7L;
                    uint64_t l_288 = 0x7E1E57C4A3E8A9B7L;
                    l_288 = l_287;
                    for (l_288 = 27; (l_288 == 39); l_288 = safe_add_func_int64_t_s_s(l_288, 2))
                    { /* block id: 121 */
                        uint8_t l_291 = 254UL;
                        uint32_t l_292 = 4294967295UL;
                        uint16_t l_293 = 0xB002L;
                        l_291 = (-1L);
                        l_293 = l_292;
                    }
                    unsigned int result = 0;
                    result += l_287;
                    result += l_288;
                    atomic_add(&p_1073->l_special_values[25], result);
                }
                else
                { /* block id: 125 */
                    (1 + 1);
                }
                for (l_73 = 0; (l_73 > (-10)); l_73--)
                { /* block id: 130 */
                    VECTOR(int32_t, 2) l_302 = (VECTOR(int32_t, 2))(0x4350024DL, (-6L));
                    int64_t *l_305[6][2] = {{&p_1073->g_94,&p_1073->g_94},{&p_1073->g_94,&p_1073->g_94},{&p_1073->g_94,&p_1073->g_94},{&p_1073->g_94,&p_1073->g_94},{&p_1073->g_94,&p_1073->g_94},{&p_1073->g_94,&p_1073->g_94}};
                    int32_t l_311 = 3L;
                    int i, j;
                    l_311 &= (((*l_52) , (safe_add_func_int64_t_s_s(((safe_lshift_func_int16_t_s_s((safe_sub_func_int32_t_s_s(((VECTOR(int32_t, 4))(l_302.yxxx)).z, (((l_303 != &l_304[1][0][2]) , (((((VECTOR(uint32_t, 2))(5UL, 0UL)).lo , l_305[1][1]) == (void*)0) >= (((void*)0 == l_306) , (safe_div_func_uint16_t_u_u(((p_1073->g_309 , ((*l_52) = (**p_1073->g_120))) , l_274.w), l_310))))) && (*p_48)))), l_302.y)) <= 1L), l_274.x))) != p_1073->g_50[0]);
                    if ((**p_1073->g_120))
                        break;
                    (*p_1073->g_121) |= (!l_283.w);
                }
            }
        }
        if (((((*l_52) != (((((p_1073->g_320.x = ((((((p_1073->g_140 = ((void*)0 == l_312)) , ((p_1073->g_142.f1 = ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(l_313.xyxx)).even)).even) && (safe_unary_minus_func_int64_t_s(((((VECTOR(uint32_t, 16))(p_1073->g_316.s4134765576203154)).s9 , ((safe_mul_func_int16_t_s_s((((((*l_58) , ((VECTOR(uint8_t, 2))(safe_clamp_func(VECTOR(uint8_t, 2),uint8_t,((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 16))(0xF5L, 250UL, ((VECTOR(uint8_t, 4))(sub_sat(((VECTOR(uint8_t, 4))(l_319.ywxw)), ((VECTOR(uint8_t, 8))(p_1073->g_320.zzywyyxz)).hi))).y, ((safe_rshift_func_uint8_t_u_s(1UL, (((void*)0 == l_323) <= ((((0x1576D3139D1EA6E4L ^ ((safe_rshift_func_int8_t_s_s((l_327 == l_178), 4)) , p_1073->g_272.y)) , (*p_1073->g_127)) == &p_1073->g_55) , l_328)))) , (*l_52)), p_1073->g_30.y, ((VECTOR(uint8_t, 8))(1UL)), ((VECTOR(uint8_t, 2))(0xE4L)), 8UL)).sb2)), (uint8_t)GROUP_DIVERGE(1, 1), (uint8_t)FAKE_DIVERGE(p_1073->global_0_offset, get_global_id(0), 10)))).lo) > p_1073->g_9) , p_1073->g_30.w) && p_1073->g_166.s5), 0xBEEAL)) == (*l_52))) | (*l_52)))))) >= 0x22L) <= (*l_58)) & (*l_58)) <= p_1073->g_comm_values[p_1073->tid])) , 4294967295UL) & 0UL) | (*p_1073->g_104)) ^ (-10L))) || (*p_1073->g_248)) <= l_329))
        { /* block id: 141 */
            int16_t l_330 = 7L;
            int32_t *l_331 = &l_76;
            if (l_330)
                break;
            l_331 = (*p_1073->g_149);
            (*p_1073->g_149) = &l_73;
        }
        else
        { /* block id: 145 */
            VECTOR(int8_t, 2) l_369 = (VECTOR(int8_t, 2))(0x2DL, 0x7CL);
            VECTOR(int64_t, 16) l_375 = (VECTOR(int64_t, 16))(0x6BFC4CF91E71C99DL, (VECTOR(int64_t, 4))(0x6BFC4CF91E71C99DL, (VECTOR(int64_t, 2))(0x6BFC4CF91E71C99DL, 0x71472A1047E79177L), 0x71472A1047E79177L), 0x71472A1047E79177L, 0x6BFC4CF91E71C99DL, 0x71472A1047E79177L, (VECTOR(int64_t, 2))(0x6BFC4CF91E71C99DL, 0x71472A1047E79177L), (VECTOR(int64_t, 2))(0x6BFC4CF91E71C99DL, 0x71472A1047E79177L), 0x6BFC4CF91E71C99DL, 0x71472A1047E79177L, 0x6BFC4CF91E71C99DL, 0x71472A1047E79177L);
            int32_t l_383 = 2L;
            int i, j;
            if ((atomic_inc(&p_1073->l_atomic_input[15]) == 3))
            { /* block id: 147 */
                int32_t l_333[3];
                int32_t *l_332 = &l_333[1];
                int i;
                for (i = 0; i < 3; i++)
                    l_333[i] = 0x36DB0117L;
                l_332 = (void*)0;
                for (l_333[1] = 0; (l_333[1] != (-5)); l_333[1] = safe_sub_func_int32_t_s_s(l_333[1], 9))
                { /* block id: 151 */
                    int64_t l_336[5];
                    int32_t l_337 = 0x5700B4CFL;
                    int32_t l_338 = (-8L);
                    int i;
                    for (i = 0; i < 5; i++)
                        l_336[i] = 0x6577DCC2655FA995L;
                    l_337 &= l_336[2];
                    if (l_338)
                    { /* block id: 153 */
                        int32_t l_340 = 0x3381C8EFL;
                        int32_t *l_339 = &l_340;
                        int64_t l_341 = 0x2074A43845F37CF7L;
                        uint32_t l_342 = 1UL;
                        union U4 l_343 = {0L};/* VOLATILE GLOBAL l_343 */
                        VECTOR(uint32_t, 2) l_344 = (VECTOR(uint32_t, 2))(4294967291UL, 0x7C4B1933L);
                        int8_t l_345 = (-1L);
                        union U5 l_346 = {-5L};
                        union U5 l_347[2][4][3] = {{{{0x3318ECE233EEFA31L},{-9L},{-9L}},{{0x3318ECE233EEFA31L},{-9L},{-9L}},{{0x3318ECE233EEFA31L},{-9L},{-9L}},{{0x3318ECE233EEFA31L},{-9L},{-9L}}},{{{0x3318ECE233EEFA31L},{-9L},{-9L}},{{0x3318ECE233EEFA31L},{-9L},{-9L}},{{0x3318ECE233EEFA31L},{-9L},{-9L}},{{0x3318ECE233EEFA31L},{-9L},{-9L}}}};
                        VECTOR(int32_t, 16) l_348 = (VECTOR(int32_t, 16))(0x5C307D44L, (VECTOR(int32_t, 4))(0x5C307D44L, (VECTOR(int32_t, 2))(0x5C307D44L, 0x2E1480AFL), 0x2E1480AFL), 0x2E1480AFL, 0x5C307D44L, 0x2E1480AFL, (VECTOR(int32_t, 2))(0x5C307D44L, 0x2E1480AFL), (VECTOR(int32_t, 2))(0x5C307D44L, 0x2E1480AFL), 0x5C307D44L, 0x2E1480AFL, 0x5C307D44L, 0x2E1480AFL);
                        uint64_t l_349 = 0xBCE3AB0F523E72F3L;
                        int i, j, k;
                        l_332 = l_339;
                        (*l_332) = l_341;
                        l_338 = (l_349 = ((*l_332) &= (l_342 , ((l_343 , (l_347[1][1][2] = ((l_345 = ((VECTOR(uint32_t, 8))(l_344.xyyyyxyy)).s3) , l_346))) , ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(l_348.sc9)), 1L, 0x1352D0F2L)).y))));
                    }
                    else
                    { /* block id: 161 */
                        int32_t l_350 = (-1L);
                        VECTOR(int32_t, 4) l_351 = (VECTOR(int32_t, 4))(0x037BBB02L, (VECTOR(int32_t, 2))(0x037BBB02L, 0x08951C26L), 0x08951C26L);
                        VECTOR(int32_t, 8) l_352 = (VECTOR(int32_t, 8))(0x484A35AAL, (VECTOR(int32_t, 4))(0x484A35AAL, (VECTOR(int32_t, 2))(0x484A35AAL, (-1L)), (-1L)), (-1L), 0x484A35AAL, (-1L));
                        uint32_t l_353 = 4294967290UL;
                        int32_t l_354 = 0x02A61A51L;
                        uint8_t l_355 = 246UL;
                        int32_t l_358 = (-6L);
                        uint64_t l_359 = 0x6E64809D6454BA73L;
                        int i;
                        l_350 = l_350;
                        l_354 ^= (l_338 = (l_353 &= (l_350 &= ((VECTOR(int32_t, 4))(rhadd(((VECTOR(int32_t, 4))(l_351.zzyz)), ((VECTOR(int32_t, 8))(l_352.s00323467)).hi))).x)));
                        l_355--;
                        l_352.s5 &= (l_359 |= l_358);
                    }
                }
                unsigned int result = 0;
                int l_333_i0;
                for (l_333_i0 = 0; l_333_i0 < 3; l_333_i0++) {
                    result += l_333[l_333_i0];
                }
                atomic_add(&p_1073->l_special_values[15], result);
            }
            else
            { /* block id: 172 */
                (1 + 1);
            }
            l_383 |= (safe_add_func_int16_t_s_s((safe_add_func_int8_t_s_s(((safe_div_func_int64_t_s_s((safe_sub_func_uint8_t_u_u(((VECTOR(uint8_t, 4))(max(((VECTOR(uint8_t, 2))(max(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 8))(p_1073->g_368.zyzzxzyy)).odd)))), ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 16))(abs_diff(((VECTOR(int8_t, 4))(l_369.yyyx)).ywwywwxxyyxwwzxw, ((VECTOR(int8_t, 16))(min(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(hadd(((VECTOR(int8_t, 16))(l_370.s4324417617167075)).sa120, ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(p_1073->g_371.sc2)).yxyxyxxxxyyyxxxx)).s4a00))).xzywyxxwyywzwyzy)), ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 8))(safe_clamp_func(VECTOR(int8_t, 8),VECTOR(int8_t, 8),((VECTOR(int8_t, 16))(sub_sat(((VECTOR(int8_t, 4))(clz(((VECTOR(int8_t, 2))(5L, 0x02L)).yyxx))).wyzzxxyzwxxwwxyx, ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 2))(sub_sat(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(max(((VECTOR(int8_t, 4))(hadd(((VECTOR(int8_t, 2))(rhadd(((VECTOR(int8_t, 16))(mad_sat(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(0x57L, 0x00L)).yyxxyxxxxxyyxyxx)), ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 8))(l_372.yxxyyyxx)))))).s1151366363007222, ((VECTOR(int8_t, 2))(p_1073->g_373.zz)).yxyxyxxxyxxxxxyy))).s5f, ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(rhadd(((VECTOR(int8_t, 4))(l_369.x, ((VECTOR(int8_t, 2))(p_1073->g_374.sac)), 0x0AL)).odd, ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 16))(0x36L, (*l_58), ((VECTOR(int8_t, 2))((-3L), 0L)), (p_1073->g_373.x < ((9L <= ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))(rhadd(((VECTOR(int64_t, 4))(l_375.s79d9)).hi, ((VECTOR(int64_t, 2))((-1L), 5L))))), (-1L), ((*l_52) = (p_1073->g_53[1] >= ((VECTOR(int64_t, 2))(0L, 0x6857B20CBDA6B83AL)).even)), (&p_1073->g_115 == &p_1073->g_115), 0x5E50F10C9E63EE61L, 3L, 0x3A3550F2E7470BE6L)).s0) < ((safe_lshift_func_int8_t_s_s((safe_mul_func_uint16_t_u_u((p_1073->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1073->tid, 119))] && (safe_rshift_func_int16_t_s_u((p_1073->g_140 = l_63), p_1073->g_50[0]))), l_382)), (*p_1073->g_18))) >= l_369.x))), 0x74L, (-1L), ((VECTOR(int8_t, 4))(1L)), (-1L), 0x4DL, (-1L), 1L, 0x17L)))).s34))), 2L, 0x1BL)).lo))).yyyy, ((VECTOR(int8_t, 4))((-1L)))))).lo, ((VECTOR(int8_t, 2))(4L))))).xxxyxxxx)))).s12, ((VECTOR(int8_t, 2))(3L))))))).yxyxyxyxxxyxyyyy))).even, ((VECTOR(int8_t, 8))((-1L))), ((VECTOR(int8_t, 8))(0x00L))))).even)).ywwywzwyzyzzyzwz)))))).s9f3e)))).s77, (uint8_t)p_1073->g_373.z))).yyyy, ((VECTOR(uint8_t, 4))(0UL))))).y, (*p_1073->g_18))), p_1073->g_9)) <= 0x6E06L), FAKE_DIVERGE(p_1073->group_0_offset, get_group_id(0), 10))), 9L));
            barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
            p_1073->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 119)), permutations[(safe_mod_func_uint32_t_u_u(p_1073->g_10.x, 10))][(safe_mod_func_uint32_t_u_u(p_1073->tid, 119))]));
        }
    }
    for (l_61 = 0; (l_61 > (-18)); --l_61)
    { /* block id: 185 */
        union U1 *l_386 = &p_1073->g_324;
        int32_t *l_392 = &l_63;
        int32_t *l_393 = (void*)0;
        int32_t *l_394 = (void*)0;
        int32_t *l_395 = (void*)0;
        int32_t *l_396 = &l_60;
        int32_t *l_397[5][6][8] = {{{(void*)0,&l_60,&p_1073->g_53[1],(void*)0,&l_72,&l_62,&l_254,&l_71},{(void*)0,&l_60,&p_1073->g_53[1],(void*)0,&l_72,&l_62,&l_254,&l_71},{(void*)0,&l_60,&p_1073->g_53[1],(void*)0,&l_72,&l_62,&l_254,&l_71},{(void*)0,&l_60,&p_1073->g_53[1],(void*)0,&l_72,&l_62,&l_254,&l_71},{(void*)0,&l_60,&p_1073->g_53[1],(void*)0,&l_72,&l_62,&l_254,&l_71},{(void*)0,&l_60,&p_1073->g_53[1],(void*)0,&l_72,&l_62,&l_254,&l_71}},{{(void*)0,&l_60,&p_1073->g_53[1],(void*)0,&l_72,&l_62,&l_254,&l_71},{(void*)0,&l_60,&p_1073->g_53[1],(void*)0,&l_72,&l_62,&l_254,&l_71},{(void*)0,&l_60,&p_1073->g_53[1],(void*)0,&l_72,&l_62,&l_254,&l_71},{(void*)0,&l_60,&p_1073->g_53[1],(void*)0,&l_72,&l_62,&l_254,&l_71},{(void*)0,&l_60,&p_1073->g_53[1],(void*)0,&l_72,&l_62,&l_254,&l_71},{(void*)0,&l_60,&p_1073->g_53[1],(void*)0,&l_72,&l_62,&l_254,&l_71}},{{(void*)0,&l_60,&p_1073->g_53[1],(void*)0,&l_72,&l_62,&l_254,&l_71},{(void*)0,&l_60,&p_1073->g_53[1],(void*)0,&l_72,&l_62,&l_254,&l_71},{(void*)0,&l_60,&p_1073->g_53[1],(void*)0,&l_72,&l_62,&l_254,&l_71},{(void*)0,&l_60,&p_1073->g_53[1],(void*)0,&l_72,&l_62,&l_254,&l_71},{(void*)0,&l_60,&p_1073->g_53[1],(void*)0,&l_72,&l_62,&l_254,&l_71},{(void*)0,&l_60,&p_1073->g_53[1],(void*)0,&l_72,&l_62,&l_254,&l_71}},{{(void*)0,&l_60,&p_1073->g_53[1],(void*)0,&l_72,&l_62,&l_254,&l_71},{(void*)0,&l_60,&p_1073->g_53[1],(void*)0,&l_72,&l_62,&l_254,&l_71},{(void*)0,&l_60,&p_1073->g_53[1],(void*)0,&l_72,&l_62,&l_254,&l_71},{(void*)0,&l_60,&p_1073->g_53[1],(void*)0,&l_72,&l_62,&l_254,&l_71},{(void*)0,&l_60,&p_1073->g_53[1],(void*)0,&l_72,&l_62,&l_254,&l_71},{(void*)0,&l_60,&p_1073->g_53[1],(void*)0,&l_72,&l_62,&l_254,&l_71}},{{(void*)0,&l_60,&p_1073->g_53[1],(void*)0,&l_72,&l_62,&l_254,&l_71},{(void*)0,&l_60,&p_1073->g_53[1],(void*)0,&l_72,&l_62,&l_254,&l_71},{(void*)0,&l_60,&p_1073->g_53[1],(void*)0,&l_72,&l_62,&l_254,&l_71},{(void*)0,&l_60,&p_1073->g_53[1],(void*)0,&l_72,&l_62,&l_254,&l_71},{(void*)0,&l_60,&p_1073->g_53[1],(void*)0,&l_72,&l_62,&l_254,&l_71},{(void*)0,&l_60,&p_1073->g_53[1],(void*)0,&l_72,&l_62,&l_254,&l_71}}};
        VECTOR(int16_t, 2) l_398 = (VECTOR(int16_t, 2))(0x32F3L, 0x3771L);
        int8_t l_415[3][7] = {{0x79L,0x79L,0x42L,9L,0x23L,9L,0x42L},{0x79L,0x79L,0x42L,9L,0x23L,9L,0x42L},{0x79L,0x79L,0x42L,9L,0x23L,9L,0x42L}};
        int32_t *l_433 = &l_75;
        uint8_t *l_439 = &l_418.f1;
        uint8_t *l_440[8][7] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
        uint32_t *l_441 = &l_328;
        int i, j, k;
        (*p_1073->g_387) = l_386;
        if ((atomic_inc(&p_1073->l_atomic_input[26]) == 1))
        { /* block id: 188 */
            uint8_t l_389 = 0xE3L;
            l_389++;
            unsigned int result = 0;
            result += l_389;
            atomic_add(&p_1073->l_special_values[26], result);
        }
        else
        { /* block id: 190 */
            (1 + 1);
        }
        --l_399;
        (*l_52) = (safe_div_func_uint8_t_u_u((safe_lshift_func_int8_t_s_s((safe_unary_minus_func_int32_t_s((FAKE_DIVERGE(p_1073->local_0_offset, get_local_id(0), 10) & (*l_392)))), 7)), (safe_lshift_func_uint8_t_u_s((((safe_mul_func_uint8_t_u_u(((safe_add_func_uint64_t_u_u((safe_div_func_int8_t_s_s(l_415[2][2], ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 16))(hadd(((VECTOR(int8_t, 16))(safe_clamp_func(VECTOR(int8_t, 16),VECTOR(int8_t, 16),((VECTOR(int8_t, 16))((safe_rshift_func_int16_t_s_s(((((l_418 , (((safe_mul_func_int16_t_s_s((safe_mod_func_uint32_t_u_u(((*l_441) = (safe_add_func_int8_t_s_s(((*l_396) | ((safe_lshift_func_int16_t_s_s((safe_mul_func_uint16_t_u_u((safe_div_func_uint8_t_u_u((l_68 &= (((((VECTOR(uint16_t, 4))(max(((VECTOR(uint16_t, 16))(((safe_rshift_func_int8_t_s_s(((((func_84(p_48, ((void*)0 == l_433), p_1073) , (safe_lshift_func_uint8_t_u_u((safe_add_func_uint32_t_u_u(p_1073->g_19[3], l_438)), (*l_52)))) & (*p_1073->g_121)) < (*l_52)) , (*p_1073->g_18)), (*p_48))) > p_1073->g_246.f0), 65535UL, ((VECTOR(uint16_t, 4))(0x835DL)), ((VECTOR(uint16_t, 4))(65535UL)), 0UL, 0UL, ((VECTOR(uint16_t, 2))(65527UL)), 65535UL, 0x6697L)).s6e6b, ((VECTOR(uint16_t, 4))(0x5B42L))))).w < (*l_52)) <= 250UL) || GROUP_DIVERGE(0, 1))), (*l_52))), (*l_52))), (*l_396))) , 0UL)), (*p_1073->g_104)))), 0x67B92A35L)), GROUP_DIVERGE(2, 1))) > p_1073->g_371.s2) > FAKE_DIVERGE(p_1073->global_2_offset, get_global_id(2), 10))) & (*l_433)) > p_1073->g_50[0]) > 0L), (*l_52))), (-4L), (*p_48), 0x6DL, ((VECTOR(int8_t, 4))(0x0FL)), 0x50L, 1L, 0L, ((VECTOR(int8_t, 4))((-1L))), 1L)), ((VECTOR(int8_t, 16))(1L)), ((VECTOR(int8_t, 16))(4L))))), ((VECTOR(int8_t, 16))(0x34L))))))).s6)), p_1073->g_371.s6)) || (-8L)), (*p_1073->g_18))) , &p_1073->g_50[0]) == &p_1073->g_19[4]), 1))));
    }
    return (*l_323);
}


/* ------------------------------------------ */
/* 
 * reads : p_1073->g_114
 * writes: p_1073->g_115
 */
union U1  func_84(int8_t * p_85, int64_t  p_86, struct S6 * p_1073)
{ /* block id: 26 */
    union U2 *l_110[4][4][10] = {{{&p_1073->g_111,&p_1073->g_111,(void*)0,(void*)0,&p_1073->g_111,&p_1073->g_111,&p_1073->g_111,&p_1073->g_111,&p_1073->g_111,&p_1073->g_111},{&p_1073->g_111,&p_1073->g_111,(void*)0,(void*)0,&p_1073->g_111,&p_1073->g_111,&p_1073->g_111,&p_1073->g_111,&p_1073->g_111,&p_1073->g_111},{&p_1073->g_111,&p_1073->g_111,(void*)0,(void*)0,&p_1073->g_111,&p_1073->g_111,&p_1073->g_111,&p_1073->g_111,&p_1073->g_111,&p_1073->g_111},{&p_1073->g_111,&p_1073->g_111,(void*)0,(void*)0,&p_1073->g_111,&p_1073->g_111,&p_1073->g_111,&p_1073->g_111,&p_1073->g_111,&p_1073->g_111}},{{&p_1073->g_111,&p_1073->g_111,(void*)0,(void*)0,&p_1073->g_111,&p_1073->g_111,&p_1073->g_111,&p_1073->g_111,&p_1073->g_111,&p_1073->g_111},{&p_1073->g_111,&p_1073->g_111,(void*)0,(void*)0,&p_1073->g_111,&p_1073->g_111,&p_1073->g_111,&p_1073->g_111,&p_1073->g_111,&p_1073->g_111},{&p_1073->g_111,&p_1073->g_111,(void*)0,(void*)0,&p_1073->g_111,&p_1073->g_111,&p_1073->g_111,&p_1073->g_111,&p_1073->g_111,&p_1073->g_111},{&p_1073->g_111,&p_1073->g_111,(void*)0,(void*)0,&p_1073->g_111,&p_1073->g_111,&p_1073->g_111,&p_1073->g_111,&p_1073->g_111,&p_1073->g_111}},{{&p_1073->g_111,&p_1073->g_111,(void*)0,(void*)0,&p_1073->g_111,&p_1073->g_111,&p_1073->g_111,&p_1073->g_111,&p_1073->g_111,&p_1073->g_111},{&p_1073->g_111,&p_1073->g_111,(void*)0,(void*)0,&p_1073->g_111,&p_1073->g_111,&p_1073->g_111,&p_1073->g_111,&p_1073->g_111,&p_1073->g_111},{&p_1073->g_111,&p_1073->g_111,(void*)0,(void*)0,&p_1073->g_111,&p_1073->g_111,&p_1073->g_111,&p_1073->g_111,&p_1073->g_111,&p_1073->g_111},{&p_1073->g_111,&p_1073->g_111,(void*)0,(void*)0,&p_1073->g_111,&p_1073->g_111,&p_1073->g_111,&p_1073->g_111,&p_1073->g_111,&p_1073->g_111}},{{&p_1073->g_111,&p_1073->g_111,(void*)0,(void*)0,&p_1073->g_111,&p_1073->g_111,&p_1073->g_111,&p_1073->g_111,&p_1073->g_111,&p_1073->g_111},{&p_1073->g_111,&p_1073->g_111,(void*)0,(void*)0,&p_1073->g_111,&p_1073->g_111,&p_1073->g_111,&p_1073->g_111,&p_1073->g_111,&p_1073->g_111},{&p_1073->g_111,&p_1073->g_111,(void*)0,(void*)0,&p_1073->g_111,&p_1073->g_111,&p_1073->g_111,&p_1073->g_111,&p_1073->g_111,&p_1073->g_111},{&p_1073->g_111,&p_1073->g_111,(void*)0,(void*)0,&p_1073->g_111,&p_1073->g_111,&p_1073->g_111,&p_1073->g_111,&p_1073->g_111,&p_1073->g_111}}};
    union U2 **l_112 = (void*)0;
    union U2 **l_113 = &l_110[2][1][3];
    union U1 l_116 = {0x453C66BB1736FFD8L};
    int i, j, k;
    (*p_1073->g_114) = ((*l_113) = l_110[3][2][7]);
    return l_116;
}


/* ------------------------------------------ */
/* 
 * reads : p_1073->g_53
 * writes: p_1073->g_53
 */
int8_t * func_87(uint16_t * p_88, int8_t * p_89, int32_t * p_90, int32_t  p_91, struct S6 * p_1073)
{ /* block id: 20 */
    int32_t *l_95 = (void*)0;
    int32_t *l_96 = &p_1073->g_53[1];
    int32_t *l_97 = &p_1073->g_53[2];
    int32_t *l_98 = &p_1073->g_53[1];
    int32_t *l_99[2];
    uint8_t l_100 = 1UL;
    int i;
    for (i = 0; i < 2; i++)
        l_99[i] = (void*)0;
    ++l_100;
    (*l_97) |= 0x50D1068EL;
    return p_89;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global volatile int *g_atomic_reduction, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[33];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 33; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[33];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 33; i++)
            l_special_values[i] = 0;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    __local int64_t l_comm_values[119];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 119; i++)
            l_comm_values[i] = 1;
    struct S6 c_1074;
    struct S6* p_1073 = &c_1074;
    struct S6 c_1075 = {
        2UL, // p_1073->g_9
        (VECTOR(int32_t, 2))((-1L), 0x11023F12L), // p_1073->g_10
        {0x7FL,0x7FL,0x7FL,0x7FL,0x7FL}, // p_1073->g_19
        &p_1073->g_19[4], // p_1073->g_18
        {0x44DCD6A9L}, // p_1073->g_29
        (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x70E74BB9L), 0x70E74BB9L), // p_1073->g_30
        {0x4BL,0x4BL,0x4BL}, // p_1073->g_50
        {(-9L),(-9L),(-9L)}, // p_1073->g_53
        (-4L), // p_1073->g_54
        0x01945549L, // p_1073->g_55
        0x20542C854347F6A0L, // p_1073->g_94
        &p_1073->g_50[2], // p_1073->g_104
        {-7L}, // p_1073->g_111
        &p_1073->g_111, // p_1073->g_115
        &p_1073->g_115, // p_1073->g_114
        &p_1073->g_53[1], // p_1073->g_121
        &p_1073->g_121, // p_1073->g_120
        &p_1073->g_121, // p_1073->g_127
        1L, // p_1073->g_140
        {-1L}, // p_1073->g_142
        &p_1073->g_121, // p_1073->g_149
        (VECTOR(int32_t, 2))((-7L), (-5L)), // p_1073->g_155
        (VECTOR(int8_t, 16))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0L), 0L), 0L, (-1L), 0L, (VECTOR(int8_t, 2))((-1L), 0L), (VECTOR(int8_t, 2))((-1L), 0L), (-1L), 0L, (-1L), 0L), // p_1073->g_166
        (VECTOR(int8_t, 8))(0x54L, (VECTOR(int8_t, 4))(0x54L, (VECTOR(int8_t, 2))(0x54L, (-1L)), (-1L)), (-1L), 0x54L, (-1L)), // p_1073->g_167
        {0x3BD2F83595F58C2DL}, // p_1073->g_191
        (VECTOR(int64_t, 16))(0x65E22198808A8C2AL, (VECTOR(int64_t, 4))(0x65E22198808A8C2AL, (VECTOR(int64_t, 2))(0x65E22198808A8C2AL, (-10L)), (-10L)), (-10L), 0x65E22198808A8C2AL, (-10L), (VECTOR(int64_t, 2))(0x65E22198808A8C2AL, (-10L)), (VECTOR(int64_t, 2))(0x65E22198808A8C2AL, (-10L)), 0x65E22198808A8C2AL, (-10L), 0x65E22198808A8C2AL, (-10L)), // p_1073->g_194
        {0xAFA24CBDL}, // p_1073->g_246
        0x1BD1L, // p_1073->g_249
        &p_1073->g_249, // p_1073->g_248
        {{&p_1073->g_248},{&p_1073->g_248},{&p_1073->g_248},{&p_1073->g_248}}, // p_1073->g_247
        {4294967286UL}, // p_1073->g_270
        (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 1UL), 1UL), // p_1073->g_272
        {0xA65D40BDL}, // p_1073->g_309
        (VECTOR(uint32_t, 8))(4294967289UL, (VECTOR(uint32_t, 4))(4294967289UL, (VECTOR(uint32_t, 2))(4294967289UL, 4294967295UL), 4294967295UL), 4294967295UL, 4294967289UL, 4294967295UL), // p_1073->g_316
        (VECTOR(uint8_t, 4))(4UL, (VECTOR(uint8_t, 2))(4UL, 0xD8L), 0xD8L), // p_1073->g_320
        {0x1CC45F543435C77AL}, // p_1073->g_324
        (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 255UL), 255UL), // p_1073->g_368
        (VECTOR(int8_t, 16))(0x7AL, (VECTOR(int8_t, 4))(0x7AL, (VECTOR(int8_t, 2))(0x7AL, 0x7AL), 0x7AL), 0x7AL, 0x7AL, 0x7AL, (VECTOR(int8_t, 2))(0x7AL, 0x7AL), (VECTOR(int8_t, 2))(0x7AL, 0x7AL), 0x7AL, 0x7AL, 0x7AL, 0x7AL), // p_1073->g_371
        (VECTOR(int8_t, 4))((-6L), (VECTOR(int8_t, 2))((-6L), (-6L)), (-6L)), // p_1073->g_373
        (VECTOR(int8_t, 16))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 1L), 1L), 1L, 0L, 1L, (VECTOR(int8_t, 2))(0L, 1L), (VECTOR(int8_t, 2))(0L, 1L), 0L, 1L, 0L, 1L), // p_1073->g_374
        &p_1073->g_324, // p_1073->g_388
        &p_1073->g_388, // p_1073->g_387
        0L, // p_1073->g_457
        (VECTOR(uint32_t, 16))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 4294967294UL), 4294967294UL), 4294967294UL, 4294967295UL, 4294967294UL, (VECTOR(uint32_t, 2))(4294967295UL, 4294967294UL), (VECTOR(uint32_t, 2))(4294967295UL, 4294967294UL), 4294967295UL, 4294967294UL, 4294967295UL, 4294967294UL), // p_1073->g_459
        {{{&p_1073->g_140,&p_1073->g_140,&p_1073->g_140,(void*)0},{&p_1073->g_140,&p_1073->g_140,&p_1073->g_140,(void*)0},{&p_1073->g_140,&p_1073->g_140,&p_1073->g_140,(void*)0},{&p_1073->g_140,&p_1073->g_140,&p_1073->g_140,(void*)0},{&p_1073->g_140,&p_1073->g_140,&p_1073->g_140,(void*)0},{&p_1073->g_140,&p_1073->g_140,&p_1073->g_140,(void*)0},{&p_1073->g_140,&p_1073->g_140,&p_1073->g_140,(void*)0},{&p_1073->g_140,&p_1073->g_140,&p_1073->g_140,(void*)0}},{{&p_1073->g_140,&p_1073->g_140,&p_1073->g_140,(void*)0},{&p_1073->g_140,&p_1073->g_140,&p_1073->g_140,(void*)0},{&p_1073->g_140,&p_1073->g_140,&p_1073->g_140,(void*)0},{&p_1073->g_140,&p_1073->g_140,&p_1073->g_140,(void*)0},{&p_1073->g_140,&p_1073->g_140,&p_1073->g_140,(void*)0},{&p_1073->g_140,&p_1073->g_140,&p_1073->g_140,(void*)0},{&p_1073->g_140,&p_1073->g_140,&p_1073->g_140,(void*)0},{&p_1073->g_140,&p_1073->g_140,&p_1073->g_140,(void*)0}},{{&p_1073->g_140,&p_1073->g_140,&p_1073->g_140,(void*)0},{&p_1073->g_140,&p_1073->g_140,&p_1073->g_140,(void*)0},{&p_1073->g_140,&p_1073->g_140,&p_1073->g_140,(void*)0},{&p_1073->g_140,&p_1073->g_140,&p_1073->g_140,(void*)0},{&p_1073->g_140,&p_1073->g_140,&p_1073->g_140,(void*)0},{&p_1073->g_140,&p_1073->g_140,&p_1073->g_140,(void*)0},{&p_1073->g_140,&p_1073->g_140,&p_1073->g_140,(void*)0},{&p_1073->g_140,&p_1073->g_140,&p_1073->g_140,(void*)0}},{{&p_1073->g_140,&p_1073->g_140,&p_1073->g_140,(void*)0},{&p_1073->g_140,&p_1073->g_140,&p_1073->g_140,(void*)0},{&p_1073->g_140,&p_1073->g_140,&p_1073->g_140,(void*)0},{&p_1073->g_140,&p_1073->g_140,&p_1073->g_140,(void*)0},{&p_1073->g_140,&p_1073->g_140,&p_1073->g_140,(void*)0},{&p_1073->g_140,&p_1073->g_140,&p_1073->g_140,(void*)0},{&p_1073->g_140,&p_1073->g_140,&p_1073->g_140,(void*)0},{&p_1073->g_140,&p_1073->g_140,&p_1073->g_140,(void*)0}},{{&p_1073->g_140,&p_1073->g_140,&p_1073->g_140,(void*)0},{&p_1073->g_140,&p_1073->g_140,&p_1073->g_140,(void*)0},{&p_1073->g_140,&p_1073->g_140,&p_1073->g_140,(void*)0},{&p_1073->g_140,&p_1073->g_140,&p_1073->g_140,(void*)0},{&p_1073->g_140,&p_1073->g_140,&p_1073->g_140,(void*)0},{&p_1073->g_140,&p_1073->g_140,&p_1073->g_140,(void*)0},{&p_1073->g_140,&p_1073->g_140,&p_1073->g_140,(void*)0},{&p_1073->g_140,&p_1073->g_140,&p_1073->g_140,(void*)0}},{{&p_1073->g_140,&p_1073->g_140,&p_1073->g_140,(void*)0},{&p_1073->g_140,&p_1073->g_140,&p_1073->g_140,(void*)0},{&p_1073->g_140,&p_1073->g_140,&p_1073->g_140,(void*)0},{&p_1073->g_140,&p_1073->g_140,&p_1073->g_140,(void*)0},{&p_1073->g_140,&p_1073->g_140,&p_1073->g_140,(void*)0},{&p_1073->g_140,&p_1073->g_140,&p_1073->g_140,(void*)0},{&p_1073->g_140,&p_1073->g_140,&p_1073->g_140,(void*)0},{&p_1073->g_140,&p_1073->g_140,&p_1073->g_140,(void*)0}},{{&p_1073->g_140,&p_1073->g_140,&p_1073->g_140,(void*)0},{&p_1073->g_140,&p_1073->g_140,&p_1073->g_140,(void*)0},{&p_1073->g_140,&p_1073->g_140,&p_1073->g_140,(void*)0},{&p_1073->g_140,&p_1073->g_140,&p_1073->g_140,(void*)0},{&p_1073->g_140,&p_1073->g_140,&p_1073->g_140,(void*)0},{&p_1073->g_140,&p_1073->g_140,&p_1073->g_140,(void*)0},{&p_1073->g_140,&p_1073->g_140,&p_1073->g_140,(void*)0},{&p_1073->g_140,&p_1073->g_140,&p_1073->g_140,(void*)0}}}, // p_1073->g_466
        {{&p_1073->g_466[5][7][0],&p_1073->g_466[1][5][3]},{&p_1073->g_466[5][7][0],&p_1073->g_466[1][5][3]},{&p_1073->g_466[5][7][0],&p_1073->g_466[1][5][3]}}, // p_1073->g_465
        (-4L), // p_1073->g_479
        (VECTOR(int8_t, 4))(0x35L, (VECTOR(int8_t, 2))(0x35L, 0x61L), 0x61L), // p_1073->g_489
        (VECTOR(int8_t, 8))(6L, (VECTOR(int8_t, 4))(6L, (VECTOR(int8_t, 2))(6L, 0L), 0L), 0L, 6L, 0L), // p_1073->g_490
        (VECTOR(int8_t, 16))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, (-3L)), (-3L)), (-3L), 1L, (-3L), (VECTOR(int8_t, 2))(1L, (-3L)), (VECTOR(int8_t, 2))(1L, (-3L)), 1L, (-3L), 1L, (-3L)), // p_1073->g_491
        4UL, // p_1073->g_503
        {0x5B95EFFAL}, // p_1073->g_506
        0x51BFL, // p_1073->g_521
        0UL, // p_1073->g_522
        (VECTOR(uint64_t, 8))(18446744073709551615UL, (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0x532AFE26040FA06EL), 0x532AFE26040FA06EL), 0x532AFE26040FA06EL, 18446744073709551615UL, 0x532AFE26040FA06EL), // p_1073->g_541
        {&p_1073->g_324.f1,&p_1073->g_324.f1}, // p_1073->g_547
        &p_1073->g_53[2], // p_1073->g_548
        {0x21B4EB1FL}, // p_1073->g_570
        {0x994ABA78L}, // p_1073->g_577
        {&p_1073->g_577,&p_1073->g_577,&p_1073->g_577,&p_1073->g_577,&p_1073->g_577}, // p_1073->g_576
        (VECTOR(int64_t, 8))(0L, (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 0x4BEE34ABCE77DE8DL), 0x4BEE34ABCE77DE8DL), 0x4BEE34ABCE77DE8DL, 0L, 0x4BEE34ABCE77DE8DL), // p_1073->g_589
        {{{-6L},{0x084AEAE8L},{-6L}},{{-6L},{0x084AEAE8L},{-6L}},{{-6L},{0x084AEAE8L},{-6L}},{{-6L},{0x084AEAE8L},{-6L}}}, // p_1073->g_626
        (VECTOR(int8_t, 8))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0L), 0L), 0L, (-1L), 0L), // p_1073->g_642
        0x21D29713L, // p_1073->g_655
        {6UL}, // p_1073->g_664
        (void*)0, // p_1073->g_666
        (void*)0, // p_1073->g_667
        &p_1073->g_664, // p_1073->g_669
        {&p_1073->g_669}, // p_1073->g_668
        {1L}, // p_1073->g_671
        {0x140F0322L}, // p_1073->g_672
        {0x5210B9AFL}, // p_1073->g_673
        (VECTOR(uint16_t, 4))(65532UL, (VECTOR(uint16_t, 2))(65532UL, 65530UL), 65530UL), // p_1073->g_674
        (VECTOR(int8_t, 8))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 1L), 1L), 1L, 0L, 1L), // p_1073->g_677
        (-4L), // p_1073->g_684
        (void*)0, // p_1073->g_716
        (void*)0, // p_1073->g_717
        &p_1073->g_115, // p_1073->g_718
        (VECTOR(int32_t, 2))(0x46F1F503L, 1L), // p_1073->g_719
        (void*)0, // p_1073->g_766
        (VECTOR(uint16_t, 2))(0x80B5L, 1UL), // p_1073->g_929
        {-1L}, // p_1073->g_930
        0L, // p_1073->g_947
        (VECTOR(uint64_t, 16))(0xFCDC8E0DF8D129EAL, (VECTOR(uint64_t, 4))(0xFCDC8E0DF8D129EAL, (VECTOR(uint64_t, 2))(0xFCDC8E0DF8D129EAL, 0UL), 0UL), 0UL, 0xFCDC8E0DF8D129EAL, 0UL, (VECTOR(uint64_t, 2))(0xFCDC8E0DF8D129EAL, 0UL), (VECTOR(uint64_t, 2))(0xFCDC8E0DF8D129EAL, 0UL), 0xFCDC8E0DF8D129EAL, 0UL, 0xFCDC8E0DF8D129EAL, 0UL), // p_1073->g_969
        (VECTOR(int16_t, 4))(0x7F53L, (VECTOR(int16_t, 2))(0x7F53L, 0x083DL), 0x083DL), // p_1073->g_979
        (VECTOR(uint32_t, 8))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 4294967293UL), 4294967293UL), 4294967293UL, 1UL, 4294967293UL), // p_1073->g_1003
        (VECTOR(uint32_t, 16))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 0xB62337E2L), 0xB62337E2L), 0xB62337E2L, 1UL, 0xB62337E2L, (VECTOR(uint32_t, 2))(1UL, 0xB62337E2L), (VECTOR(uint32_t, 2))(1UL, 0xB62337E2L), 1UL, 0xB62337E2L, 1UL, 0xB62337E2L), // p_1073->g_1005
        (VECTOR(int64_t, 2))(0x09038DB477FB8511L, 1L), // p_1073->g_1009
        (void*)0, // p_1073->g_1018
        &p_1073->g_1018, // p_1073->g_1017
        (void*)0, // p_1073->g_1052
        &p_1073->g_1052, // p_1073->g_1051
        &p_1073->g_94, // p_1073->g_1061
        6L, // p_1073->g_1071
        0, // p_1073->v_collective
        sequence_input[get_global_id(0)], // p_1073->global_0_offset
        sequence_input[get_global_id(1)], // p_1073->global_1_offset
        sequence_input[get_global_id(2)], // p_1073->global_2_offset
        sequence_input[get_local_id(0)], // p_1073->local_0_offset
        sequence_input[get_local_id(1)], // p_1073->local_1_offset
        sequence_input[get_local_id(2)], // p_1073->local_2_offset
        sequence_input[get_group_id(0)], // p_1073->group_0_offset
        sequence_input[get_group_id(1)], // p_1073->group_1_offset
        sequence_input[get_group_id(2)], // p_1073->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 119)), permutations[0][get_linear_local_id()])), // p_1073->tid
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_1074 = c_1075;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1073);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1073->g_9, "p_1073->g_9", print_hash_value);
    transparent_crc(p_1073->g_10.x, "p_1073->g_10.x", print_hash_value);
    transparent_crc(p_1073->g_10.y, "p_1073->g_10.y", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_1073->g_19[i], "p_1073->g_19[i]", print_hash_value);

    }
    transparent_crc(p_1073->g_29.f0, "p_1073->g_29.f0", print_hash_value);
    transparent_crc(p_1073->g_30.x, "p_1073->g_30.x", print_hash_value);
    transparent_crc(p_1073->g_30.y, "p_1073->g_30.y", print_hash_value);
    transparent_crc(p_1073->g_30.z, "p_1073->g_30.z", print_hash_value);
    transparent_crc(p_1073->g_30.w, "p_1073->g_30.w", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_1073->g_50[i], "p_1073->g_50[i]", print_hash_value);

    }
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_1073->g_53[i], "p_1073->g_53[i]", print_hash_value);

    }
    transparent_crc(p_1073->g_54, "p_1073->g_54", print_hash_value);
    transparent_crc(p_1073->g_55, "p_1073->g_55", print_hash_value);
    transparent_crc(p_1073->g_94, "p_1073->g_94", print_hash_value);
    transparent_crc(p_1073->g_111.f0, "p_1073->g_111.f0", print_hash_value);
    transparent_crc(p_1073->g_140, "p_1073->g_140", print_hash_value);
    transparent_crc(p_1073->g_155.x, "p_1073->g_155.x", print_hash_value);
    transparent_crc(p_1073->g_155.y, "p_1073->g_155.y", print_hash_value);
    transparent_crc(p_1073->g_166.s0, "p_1073->g_166.s0", print_hash_value);
    transparent_crc(p_1073->g_166.s1, "p_1073->g_166.s1", print_hash_value);
    transparent_crc(p_1073->g_166.s2, "p_1073->g_166.s2", print_hash_value);
    transparent_crc(p_1073->g_166.s3, "p_1073->g_166.s3", print_hash_value);
    transparent_crc(p_1073->g_166.s4, "p_1073->g_166.s4", print_hash_value);
    transparent_crc(p_1073->g_166.s5, "p_1073->g_166.s5", print_hash_value);
    transparent_crc(p_1073->g_166.s6, "p_1073->g_166.s6", print_hash_value);
    transparent_crc(p_1073->g_166.s7, "p_1073->g_166.s7", print_hash_value);
    transparent_crc(p_1073->g_166.s8, "p_1073->g_166.s8", print_hash_value);
    transparent_crc(p_1073->g_166.s9, "p_1073->g_166.s9", print_hash_value);
    transparent_crc(p_1073->g_166.sa, "p_1073->g_166.sa", print_hash_value);
    transparent_crc(p_1073->g_166.sb, "p_1073->g_166.sb", print_hash_value);
    transparent_crc(p_1073->g_166.sc, "p_1073->g_166.sc", print_hash_value);
    transparent_crc(p_1073->g_166.sd, "p_1073->g_166.sd", print_hash_value);
    transparent_crc(p_1073->g_166.se, "p_1073->g_166.se", print_hash_value);
    transparent_crc(p_1073->g_166.sf, "p_1073->g_166.sf", print_hash_value);
    transparent_crc(p_1073->g_167.s0, "p_1073->g_167.s0", print_hash_value);
    transparent_crc(p_1073->g_167.s1, "p_1073->g_167.s1", print_hash_value);
    transparent_crc(p_1073->g_167.s2, "p_1073->g_167.s2", print_hash_value);
    transparent_crc(p_1073->g_167.s3, "p_1073->g_167.s3", print_hash_value);
    transparent_crc(p_1073->g_167.s4, "p_1073->g_167.s4", print_hash_value);
    transparent_crc(p_1073->g_167.s5, "p_1073->g_167.s5", print_hash_value);
    transparent_crc(p_1073->g_167.s6, "p_1073->g_167.s6", print_hash_value);
    transparent_crc(p_1073->g_167.s7, "p_1073->g_167.s7", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1073->g_191[i], "p_1073->g_191[i]", print_hash_value);

    }
    transparent_crc(p_1073->g_194.s0, "p_1073->g_194.s0", print_hash_value);
    transparent_crc(p_1073->g_194.s1, "p_1073->g_194.s1", print_hash_value);
    transparent_crc(p_1073->g_194.s2, "p_1073->g_194.s2", print_hash_value);
    transparent_crc(p_1073->g_194.s3, "p_1073->g_194.s3", print_hash_value);
    transparent_crc(p_1073->g_194.s4, "p_1073->g_194.s4", print_hash_value);
    transparent_crc(p_1073->g_194.s5, "p_1073->g_194.s5", print_hash_value);
    transparent_crc(p_1073->g_194.s6, "p_1073->g_194.s6", print_hash_value);
    transparent_crc(p_1073->g_194.s7, "p_1073->g_194.s7", print_hash_value);
    transparent_crc(p_1073->g_194.s8, "p_1073->g_194.s8", print_hash_value);
    transparent_crc(p_1073->g_194.s9, "p_1073->g_194.s9", print_hash_value);
    transparent_crc(p_1073->g_194.sa, "p_1073->g_194.sa", print_hash_value);
    transparent_crc(p_1073->g_194.sb, "p_1073->g_194.sb", print_hash_value);
    transparent_crc(p_1073->g_194.sc, "p_1073->g_194.sc", print_hash_value);
    transparent_crc(p_1073->g_194.sd, "p_1073->g_194.sd", print_hash_value);
    transparent_crc(p_1073->g_194.se, "p_1073->g_194.se", print_hash_value);
    transparent_crc(p_1073->g_194.sf, "p_1073->g_194.sf", print_hash_value);
    transparent_crc(p_1073->g_249, "p_1073->g_249", print_hash_value);
    transparent_crc(p_1073->g_270.f0, "p_1073->g_270.f0", print_hash_value);
    transparent_crc(p_1073->g_272.x, "p_1073->g_272.x", print_hash_value);
    transparent_crc(p_1073->g_272.y, "p_1073->g_272.y", print_hash_value);
    transparent_crc(p_1073->g_272.z, "p_1073->g_272.z", print_hash_value);
    transparent_crc(p_1073->g_272.w, "p_1073->g_272.w", print_hash_value);
    transparent_crc(p_1073->g_309.f0, "p_1073->g_309.f0", print_hash_value);
    transparent_crc(p_1073->g_316.s0, "p_1073->g_316.s0", print_hash_value);
    transparent_crc(p_1073->g_316.s1, "p_1073->g_316.s1", print_hash_value);
    transparent_crc(p_1073->g_316.s2, "p_1073->g_316.s2", print_hash_value);
    transparent_crc(p_1073->g_316.s3, "p_1073->g_316.s3", print_hash_value);
    transparent_crc(p_1073->g_316.s4, "p_1073->g_316.s4", print_hash_value);
    transparent_crc(p_1073->g_316.s5, "p_1073->g_316.s5", print_hash_value);
    transparent_crc(p_1073->g_316.s6, "p_1073->g_316.s6", print_hash_value);
    transparent_crc(p_1073->g_316.s7, "p_1073->g_316.s7", print_hash_value);
    transparent_crc(p_1073->g_320.x, "p_1073->g_320.x", print_hash_value);
    transparent_crc(p_1073->g_320.y, "p_1073->g_320.y", print_hash_value);
    transparent_crc(p_1073->g_320.z, "p_1073->g_320.z", print_hash_value);
    transparent_crc(p_1073->g_320.w, "p_1073->g_320.w", print_hash_value);
    transparent_crc(p_1073->g_368.x, "p_1073->g_368.x", print_hash_value);
    transparent_crc(p_1073->g_368.y, "p_1073->g_368.y", print_hash_value);
    transparent_crc(p_1073->g_368.z, "p_1073->g_368.z", print_hash_value);
    transparent_crc(p_1073->g_368.w, "p_1073->g_368.w", print_hash_value);
    transparent_crc(p_1073->g_371.s0, "p_1073->g_371.s0", print_hash_value);
    transparent_crc(p_1073->g_371.s1, "p_1073->g_371.s1", print_hash_value);
    transparent_crc(p_1073->g_371.s2, "p_1073->g_371.s2", print_hash_value);
    transparent_crc(p_1073->g_371.s3, "p_1073->g_371.s3", print_hash_value);
    transparent_crc(p_1073->g_371.s4, "p_1073->g_371.s4", print_hash_value);
    transparent_crc(p_1073->g_371.s5, "p_1073->g_371.s5", print_hash_value);
    transparent_crc(p_1073->g_371.s6, "p_1073->g_371.s6", print_hash_value);
    transparent_crc(p_1073->g_371.s7, "p_1073->g_371.s7", print_hash_value);
    transparent_crc(p_1073->g_371.s8, "p_1073->g_371.s8", print_hash_value);
    transparent_crc(p_1073->g_371.s9, "p_1073->g_371.s9", print_hash_value);
    transparent_crc(p_1073->g_371.sa, "p_1073->g_371.sa", print_hash_value);
    transparent_crc(p_1073->g_371.sb, "p_1073->g_371.sb", print_hash_value);
    transparent_crc(p_1073->g_371.sc, "p_1073->g_371.sc", print_hash_value);
    transparent_crc(p_1073->g_371.sd, "p_1073->g_371.sd", print_hash_value);
    transparent_crc(p_1073->g_371.se, "p_1073->g_371.se", print_hash_value);
    transparent_crc(p_1073->g_371.sf, "p_1073->g_371.sf", print_hash_value);
    transparent_crc(p_1073->g_373.x, "p_1073->g_373.x", print_hash_value);
    transparent_crc(p_1073->g_373.y, "p_1073->g_373.y", print_hash_value);
    transparent_crc(p_1073->g_373.z, "p_1073->g_373.z", print_hash_value);
    transparent_crc(p_1073->g_373.w, "p_1073->g_373.w", print_hash_value);
    transparent_crc(p_1073->g_374.s0, "p_1073->g_374.s0", print_hash_value);
    transparent_crc(p_1073->g_374.s1, "p_1073->g_374.s1", print_hash_value);
    transparent_crc(p_1073->g_374.s2, "p_1073->g_374.s2", print_hash_value);
    transparent_crc(p_1073->g_374.s3, "p_1073->g_374.s3", print_hash_value);
    transparent_crc(p_1073->g_374.s4, "p_1073->g_374.s4", print_hash_value);
    transparent_crc(p_1073->g_374.s5, "p_1073->g_374.s5", print_hash_value);
    transparent_crc(p_1073->g_374.s6, "p_1073->g_374.s6", print_hash_value);
    transparent_crc(p_1073->g_374.s7, "p_1073->g_374.s7", print_hash_value);
    transparent_crc(p_1073->g_374.s8, "p_1073->g_374.s8", print_hash_value);
    transparent_crc(p_1073->g_374.s9, "p_1073->g_374.s9", print_hash_value);
    transparent_crc(p_1073->g_374.sa, "p_1073->g_374.sa", print_hash_value);
    transparent_crc(p_1073->g_374.sb, "p_1073->g_374.sb", print_hash_value);
    transparent_crc(p_1073->g_374.sc, "p_1073->g_374.sc", print_hash_value);
    transparent_crc(p_1073->g_374.sd, "p_1073->g_374.sd", print_hash_value);
    transparent_crc(p_1073->g_374.se, "p_1073->g_374.se", print_hash_value);
    transparent_crc(p_1073->g_374.sf, "p_1073->g_374.sf", print_hash_value);
    transparent_crc(p_1073->g_457, "p_1073->g_457", print_hash_value);
    transparent_crc(p_1073->g_459.s0, "p_1073->g_459.s0", print_hash_value);
    transparent_crc(p_1073->g_459.s1, "p_1073->g_459.s1", print_hash_value);
    transparent_crc(p_1073->g_459.s2, "p_1073->g_459.s2", print_hash_value);
    transparent_crc(p_1073->g_459.s3, "p_1073->g_459.s3", print_hash_value);
    transparent_crc(p_1073->g_459.s4, "p_1073->g_459.s4", print_hash_value);
    transparent_crc(p_1073->g_459.s5, "p_1073->g_459.s5", print_hash_value);
    transparent_crc(p_1073->g_459.s6, "p_1073->g_459.s6", print_hash_value);
    transparent_crc(p_1073->g_459.s7, "p_1073->g_459.s7", print_hash_value);
    transparent_crc(p_1073->g_459.s8, "p_1073->g_459.s8", print_hash_value);
    transparent_crc(p_1073->g_459.s9, "p_1073->g_459.s9", print_hash_value);
    transparent_crc(p_1073->g_459.sa, "p_1073->g_459.sa", print_hash_value);
    transparent_crc(p_1073->g_459.sb, "p_1073->g_459.sb", print_hash_value);
    transparent_crc(p_1073->g_459.sc, "p_1073->g_459.sc", print_hash_value);
    transparent_crc(p_1073->g_459.sd, "p_1073->g_459.sd", print_hash_value);
    transparent_crc(p_1073->g_459.se, "p_1073->g_459.se", print_hash_value);
    transparent_crc(p_1073->g_459.sf, "p_1073->g_459.sf", print_hash_value);
    transparent_crc(p_1073->g_479, "p_1073->g_479", print_hash_value);
    transparent_crc(p_1073->g_489.x, "p_1073->g_489.x", print_hash_value);
    transparent_crc(p_1073->g_489.y, "p_1073->g_489.y", print_hash_value);
    transparent_crc(p_1073->g_489.z, "p_1073->g_489.z", print_hash_value);
    transparent_crc(p_1073->g_489.w, "p_1073->g_489.w", print_hash_value);
    transparent_crc(p_1073->g_490.s0, "p_1073->g_490.s0", print_hash_value);
    transparent_crc(p_1073->g_490.s1, "p_1073->g_490.s1", print_hash_value);
    transparent_crc(p_1073->g_490.s2, "p_1073->g_490.s2", print_hash_value);
    transparent_crc(p_1073->g_490.s3, "p_1073->g_490.s3", print_hash_value);
    transparent_crc(p_1073->g_490.s4, "p_1073->g_490.s4", print_hash_value);
    transparent_crc(p_1073->g_490.s5, "p_1073->g_490.s5", print_hash_value);
    transparent_crc(p_1073->g_490.s6, "p_1073->g_490.s6", print_hash_value);
    transparent_crc(p_1073->g_490.s7, "p_1073->g_490.s7", print_hash_value);
    transparent_crc(p_1073->g_491.s0, "p_1073->g_491.s0", print_hash_value);
    transparent_crc(p_1073->g_491.s1, "p_1073->g_491.s1", print_hash_value);
    transparent_crc(p_1073->g_491.s2, "p_1073->g_491.s2", print_hash_value);
    transparent_crc(p_1073->g_491.s3, "p_1073->g_491.s3", print_hash_value);
    transparent_crc(p_1073->g_491.s4, "p_1073->g_491.s4", print_hash_value);
    transparent_crc(p_1073->g_491.s5, "p_1073->g_491.s5", print_hash_value);
    transparent_crc(p_1073->g_491.s6, "p_1073->g_491.s6", print_hash_value);
    transparent_crc(p_1073->g_491.s7, "p_1073->g_491.s7", print_hash_value);
    transparent_crc(p_1073->g_491.s8, "p_1073->g_491.s8", print_hash_value);
    transparent_crc(p_1073->g_491.s9, "p_1073->g_491.s9", print_hash_value);
    transparent_crc(p_1073->g_491.sa, "p_1073->g_491.sa", print_hash_value);
    transparent_crc(p_1073->g_491.sb, "p_1073->g_491.sb", print_hash_value);
    transparent_crc(p_1073->g_491.sc, "p_1073->g_491.sc", print_hash_value);
    transparent_crc(p_1073->g_491.sd, "p_1073->g_491.sd", print_hash_value);
    transparent_crc(p_1073->g_491.se, "p_1073->g_491.se", print_hash_value);
    transparent_crc(p_1073->g_491.sf, "p_1073->g_491.sf", print_hash_value);
    transparent_crc(p_1073->g_503, "p_1073->g_503", print_hash_value);
    transparent_crc(p_1073->g_506.f0, "p_1073->g_506.f0", print_hash_value);
    transparent_crc(p_1073->g_521, "p_1073->g_521", print_hash_value);
    transparent_crc(p_1073->g_522, "p_1073->g_522", print_hash_value);
    transparent_crc(p_1073->g_541.s0, "p_1073->g_541.s0", print_hash_value);
    transparent_crc(p_1073->g_541.s1, "p_1073->g_541.s1", print_hash_value);
    transparent_crc(p_1073->g_541.s2, "p_1073->g_541.s2", print_hash_value);
    transparent_crc(p_1073->g_541.s3, "p_1073->g_541.s3", print_hash_value);
    transparent_crc(p_1073->g_541.s4, "p_1073->g_541.s4", print_hash_value);
    transparent_crc(p_1073->g_541.s5, "p_1073->g_541.s5", print_hash_value);
    transparent_crc(p_1073->g_541.s6, "p_1073->g_541.s6", print_hash_value);
    transparent_crc(p_1073->g_541.s7, "p_1073->g_541.s7", print_hash_value);
    transparent_crc(p_1073->g_570.f0, "p_1073->g_570.f0", print_hash_value);
    transparent_crc(p_1073->g_577.f0, "p_1073->g_577.f0", print_hash_value);
    transparent_crc(p_1073->g_589.s0, "p_1073->g_589.s0", print_hash_value);
    transparent_crc(p_1073->g_589.s1, "p_1073->g_589.s1", print_hash_value);
    transparent_crc(p_1073->g_589.s2, "p_1073->g_589.s2", print_hash_value);
    transparent_crc(p_1073->g_589.s3, "p_1073->g_589.s3", print_hash_value);
    transparent_crc(p_1073->g_589.s4, "p_1073->g_589.s4", print_hash_value);
    transparent_crc(p_1073->g_589.s5, "p_1073->g_589.s5", print_hash_value);
    transparent_crc(p_1073->g_589.s6, "p_1073->g_589.s6", print_hash_value);
    transparent_crc(p_1073->g_589.s7, "p_1073->g_589.s7", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 3; j++)
        {
            transparent_crc(p_1073->g_626[i][j].f0, "p_1073->g_626[i][j].f0", print_hash_value);

        }
    }
    transparent_crc(p_1073->g_642.s0, "p_1073->g_642.s0", print_hash_value);
    transparent_crc(p_1073->g_642.s1, "p_1073->g_642.s1", print_hash_value);
    transparent_crc(p_1073->g_642.s2, "p_1073->g_642.s2", print_hash_value);
    transparent_crc(p_1073->g_642.s3, "p_1073->g_642.s3", print_hash_value);
    transparent_crc(p_1073->g_642.s4, "p_1073->g_642.s4", print_hash_value);
    transparent_crc(p_1073->g_642.s5, "p_1073->g_642.s5", print_hash_value);
    transparent_crc(p_1073->g_642.s6, "p_1073->g_642.s6", print_hash_value);
    transparent_crc(p_1073->g_642.s7, "p_1073->g_642.s7", print_hash_value);
    transparent_crc(p_1073->g_655, "p_1073->g_655", print_hash_value);
    transparent_crc(p_1073->g_664.f1, "p_1073->g_664.f1", print_hash_value);
    transparent_crc(p_1073->g_671.f0, "p_1073->g_671.f0", print_hash_value);
    transparent_crc(p_1073->g_672.f0, "p_1073->g_672.f0", print_hash_value);
    transparent_crc(p_1073->g_673.f0, "p_1073->g_673.f0", print_hash_value);
    transparent_crc(p_1073->g_674.x, "p_1073->g_674.x", print_hash_value);
    transparent_crc(p_1073->g_674.y, "p_1073->g_674.y", print_hash_value);
    transparent_crc(p_1073->g_674.z, "p_1073->g_674.z", print_hash_value);
    transparent_crc(p_1073->g_674.w, "p_1073->g_674.w", print_hash_value);
    transparent_crc(p_1073->g_677.s0, "p_1073->g_677.s0", print_hash_value);
    transparent_crc(p_1073->g_677.s1, "p_1073->g_677.s1", print_hash_value);
    transparent_crc(p_1073->g_677.s2, "p_1073->g_677.s2", print_hash_value);
    transparent_crc(p_1073->g_677.s3, "p_1073->g_677.s3", print_hash_value);
    transparent_crc(p_1073->g_677.s4, "p_1073->g_677.s4", print_hash_value);
    transparent_crc(p_1073->g_677.s5, "p_1073->g_677.s5", print_hash_value);
    transparent_crc(p_1073->g_677.s6, "p_1073->g_677.s6", print_hash_value);
    transparent_crc(p_1073->g_677.s7, "p_1073->g_677.s7", print_hash_value);
    transparent_crc(p_1073->g_684, "p_1073->g_684", print_hash_value);
    transparent_crc(p_1073->g_719.x, "p_1073->g_719.x", print_hash_value);
    transparent_crc(p_1073->g_719.y, "p_1073->g_719.y", print_hash_value);
    transparent_crc(p_1073->g_929.x, "p_1073->g_929.x", print_hash_value);
    transparent_crc(p_1073->g_929.y, "p_1073->g_929.y", print_hash_value);
    transparent_crc(p_1073->g_930.f0, "p_1073->g_930.f0", print_hash_value);
    transparent_crc(p_1073->g_947, "p_1073->g_947", print_hash_value);
    transparent_crc(p_1073->g_969.s0, "p_1073->g_969.s0", print_hash_value);
    transparent_crc(p_1073->g_969.s1, "p_1073->g_969.s1", print_hash_value);
    transparent_crc(p_1073->g_969.s2, "p_1073->g_969.s2", print_hash_value);
    transparent_crc(p_1073->g_969.s3, "p_1073->g_969.s3", print_hash_value);
    transparent_crc(p_1073->g_969.s4, "p_1073->g_969.s4", print_hash_value);
    transparent_crc(p_1073->g_969.s5, "p_1073->g_969.s5", print_hash_value);
    transparent_crc(p_1073->g_969.s6, "p_1073->g_969.s6", print_hash_value);
    transparent_crc(p_1073->g_969.s7, "p_1073->g_969.s7", print_hash_value);
    transparent_crc(p_1073->g_969.s8, "p_1073->g_969.s8", print_hash_value);
    transparent_crc(p_1073->g_969.s9, "p_1073->g_969.s9", print_hash_value);
    transparent_crc(p_1073->g_969.sa, "p_1073->g_969.sa", print_hash_value);
    transparent_crc(p_1073->g_969.sb, "p_1073->g_969.sb", print_hash_value);
    transparent_crc(p_1073->g_969.sc, "p_1073->g_969.sc", print_hash_value);
    transparent_crc(p_1073->g_969.sd, "p_1073->g_969.sd", print_hash_value);
    transparent_crc(p_1073->g_969.se, "p_1073->g_969.se", print_hash_value);
    transparent_crc(p_1073->g_969.sf, "p_1073->g_969.sf", print_hash_value);
    transparent_crc(p_1073->g_979.x, "p_1073->g_979.x", print_hash_value);
    transparent_crc(p_1073->g_979.y, "p_1073->g_979.y", print_hash_value);
    transparent_crc(p_1073->g_979.z, "p_1073->g_979.z", print_hash_value);
    transparent_crc(p_1073->g_979.w, "p_1073->g_979.w", print_hash_value);
    transparent_crc(p_1073->g_1003.s0, "p_1073->g_1003.s0", print_hash_value);
    transparent_crc(p_1073->g_1003.s1, "p_1073->g_1003.s1", print_hash_value);
    transparent_crc(p_1073->g_1003.s2, "p_1073->g_1003.s2", print_hash_value);
    transparent_crc(p_1073->g_1003.s3, "p_1073->g_1003.s3", print_hash_value);
    transparent_crc(p_1073->g_1003.s4, "p_1073->g_1003.s4", print_hash_value);
    transparent_crc(p_1073->g_1003.s5, "p_1073->g_1003.s5", print_hash_value);
    transparent_crc(p_1073->g_1003.s6, "p_1073->g_1003.s6", print_hash_value);
    transparent_crc(p_1073->g_1003.s7, "p_1073->g_1003.s7", print_hash_value);
    transparent_crc(p_1073->g_1005.s0, "p_1073->g_1005.s0", print_hash_value);
    transparent_crc(p_1073->g_1005.s1, "p_1073->g_1005.s1", print_hash_value);
    transparent_crc(p_1073->g_1005.s2, "p_1073->g_1005.s2", print_hash_value);
    transparent_crc(p_1073->g_1005.s3, "p_1073->g_1005.s3", print_hash_value);
    transparent_crc(p_1073->g_1005.s4, "p_1073->g_1005.s4", print_hash_value);
    transparent_crc(p_1073->g_1005.s5, "p_1073->g_1005.s5", print_hash_value);
    transparent_crc(p_1073->g_1005.s6, "p_1073->g_1005.s6", print_hash_value);
    transparent_crc(p_1073->g_1005.s7, "p_1073->g_1005.s7", print_hash_value);
    transparent_crc(p_1073->g_1005.s8, "p_1073->g_1005.s8", print_hash_value);
    transparent_crc(p_1073->g_1005.s9, "p_1073->g_1005.s9", print_hash_value);
    transparent_crc(p_1073->g_1005.sa, "p_1073->g_1005.sa", print_hash_value);
    transparent_crc(p_1073->g_1005.sb, "p_1073->g_1005.sb", print_hash_value);
    transparent_crc(p_1073->g_1005.sc, "p_1073->g_1005.sc", print_hash_value);
    transparent_crc(p_1073->g_1005.sd, "p_1073->g_1005.sd", print_hash_value);
    transparent_crc(p_1073->g_1005.se, "p_1073->g_1005.se", print_hash_value);
    transparent_crc(p_1073->g_1005.sf, "p_1073->g_1005.sf", print_hash_value);
    transparent_crc(p_1073->g_1009.x, "p_1073->g_1009.x", print_hash_value);
    transparent_crc(p_1073->g_1009.y, "p_1073->g_1009.y", print_hash_value);
    transparent_crc(p_1073->g_1071, "p_1073->g_1071", print_hash_value);
    transparent_crc(p_1073->v_collective, "p_1073->v_collective", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 33; i++)
            transparent_crc(p_1073->l_special_values[i], "p_1073->l_special_values[i]", print_hash_value);
    transparent_crc(p_1073->l_comm_values[get_linear_local_id()], "p_1073->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_1073->g_comm_values[get_linear_group_id() * 119 + get_linear_local_id()], "p_1073->g_comm_values[get_linear_group_id() * 119 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
