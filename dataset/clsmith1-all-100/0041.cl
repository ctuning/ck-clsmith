// --atomics 59 ---atomic_reductions ---fake_divergence ---inter_thread_comm -g 93,70,1 -l 1,35,1
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

__constant uint32_t permutations[10][35] = {
{32,29,26,31,8,11,34,33,30,18,9,2,12,20,25,28,0,5,10,21,14,7,24,27,6,17,15,23,22,4,3,16,13,1,19}, // permutation 0
{28,21,25,12,26,8,9,19,31,7,34,13,5,11,17,23,29,2,3,16,20,10,1,22,4,15,0,32,27,18,30,14,6,33,24}, // permutation 1
{1,9,32,19,30,16,13,26,0,17,2,18,6,34,4,29,3,7,10,12,27,24,28,20,14,11,21,5,22,25,23,31,8,33,15}, // permutation 2
{11,32,26,5,29,1,3,31,20,7,24,13,28,10,27,22,4,6,14,12,19,21,16,2,33,0,9,15,30,34,17,18,23,8,25}, // permutation 3
{1,23,5,24,16,22,4,15,13,6,19,11,32,18,21,26,10,3,7,8,31,30,27,25,9,33,34,28,20,29,12,14,17,0,2}, // permutation 4
{13,32,17,19,14,30,31,26,1,24,18,11,20,29,21,28,34,27,5,7,16,4,9,0,22,8,25,2,6,10,3,12,23,15,33}, // permutation 5
{32,0,5,19,33,21,30,10,31,1,13,12,23,2,18,16,17,8,29,4,25,7,20,3,9,6,34,24,14,11,15,27,22,26,28}, // permutation 6
{3,32,22,28,30,1,31,2,15,0,20,9,10,19,7,4,29,21,8,5,27,18,26,23,12,24,14,33,34,16,25,11,6,17,13}, // permutation 7
{30,8,20,4,22,2,32,26,0,16,24,31,28,34,17,7,10,6,23,27,13,19,12,25,5,15,21,1,3,14,29,9,18,33,11}, // permutation 8
{22,13,28,8,32,29,16,15,14,4,20,27,18,0,9,31,6,17,33,26,1,2,23,34,12,10,3,7,25,11,19,30,5,21,24} // permutation 9
};

// Seed: 41

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   uint32_t  f0;
   int64_t  f1;
   int16_t  f2;
   uint64_t  f3;
   volatile int16_t  f4;
   int64_t  f5;
   volatile int8_t  f6;
   volatile int32_t  f7;
   uint8_t  f8;
};

struct S1 {
   volatile uint32_t  f0;
   uint8_t  f1;
};

union U2 {
   int8_t * volatile  f0;
};

struct S3 {
    uint32_t g_5;
    VECTOR(uint16_t, 8) g_10;
    VECTOR(uint16_t, 4) g_11;
    VECTOR(int32_t, 8) g_16;
    volatile VECTOR(int8_t, 2) g_34;
    VECTOR(int32_t, 16) g_35;
    VECTOR(int32_t, 4) g_36;
    uint64_t g_140;
    int32_t *g_141;
    int64_t g_146;
    int64_t *g_148;
    VECTOR(int8_t, 16) g_169;
    union U2 g_177[7][3][2];
    union U2 *g_178[7];
    union U2 g_203;
    union U2 g_204;
    union U2 g_205[10][5];
    union U2 g_206;
    union U2 g_207[10];
    union U2 g_208[1];
    union U2 g_209;
    union U2 g_210;
    union U2 g_211;
    union U2 g_212;
    VECTOR(int16_t, 4) g_219;
    VECTOR(int32_t, 2) g_226;
    uint8_t g_238;
    VECTOR(int64_t, 16) g_288;
    VECTOR(int64_t, 8) g_289;
    uint32_t g_291[2][9];
    int8_t *g_318;
    int32_t ** volatile g_331;
    int32_t * volatile g_332;
    int32_t * volatile g_336;
    int32_t * volatile g_338;
    int32_t * volatile g_339;
    int32_t * volatile g_340[10][8];
    int32_t * volatile g_341[7];
    int32_t * volatile g_342;
    int32_t * volatile g_343;
    int32_t * volatile g_345;
    uint64_t g_368;
    int32_t g_374;
    struct S1 g_404;
    VECTOR(uint8_t, 16) g_408;
    struct S0 g_411;
    struct S0 * volatile g_410;
    struct S0 * volatile * volatile g_412[8];
    volatile struct S1 g_414;
    volatile struct S1 * volatile g_416[8];
    volatile struct S1 * volatile g_417[9];
    volatile struct S1 * volatile g_418;
    int32_t ** volatile g_419;
    volatile union U2 g_447;
    int8_t g_474;
    volatile int32_t g_507;
    int32_t ** volatile g_512;
    int32_t ** volatile g_513[5];
    int32_t g_526;
    int32_t ** volatile g_532;
    volatile VECTOR(uint16_t, 16) g_542;
    VECTOR(int64_t, 8) g_558;
    volatile VECTOR(int64_t, 8) g_559;
    VECTOR(int64_t, 8) g_560;
    volatile int64_t *g_566;
    uint8_t *g_611[3];
    VECTOR(int8_t, 4) g_635;
    VECTOR(int64_t, 4) g_648;
    VECTOR(int64_t, 16) g_650;
    struct S0 g_657;
    struct S1 g_672;
    union U2 g_678;
    int32_t ** volatile g_720;
    int32_t ** volatile g_721;
    struct S1 g_736[1][7][10];
    volatile struct S1 g_753;
    volatile struct S1 * volatile g_754;
    volatile union U2 g_775;
    volatile VECTOR(int8_t, 16) g_799;
    volatile VECTOR(int8_t, 8) g_800;
    int8_t **g_821[1];
    int8_t ***g_820;
    VECTOR(uint8_t, 4) g_822;
    struct S1 g_846;
    struct S1 * volatile g_847;
    struct S0 *g_850;
    uint8_t g_874[4][3][1];
    int32_t ** volatile g_876;
    VECTOR(uint32_t, 8) g_889;
    volatile int32_t g_910;
    uint64_t g_927[1][10][5];
    int32_t ** volatile g_959;
    VECTOR(int8_t, 8) g_967;
    volatile VECTOR(int8_t, 16) g_975;
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
int64_t  func_1(struct S3 * p_990);
int32_t  func_18(int64_t * p_19, int8_t * p_20, uint8_t  p_21, uint64_t  p_22, struct S3 * p_990);
int64_t * func_23(int8_t * p_24, uint32_t  p_25, int8_t * p_26, uint8_t  p_27, uint32_t  p_28, struct S3 * p_990);
int8_t * func_29(int8_t * p_30, int64_t  p_31, uint8_t  p_32, int8_t * p_33, struct S3 * p_990);
int32_t  func_42(int64_t  p_43, int8_t * p_44, int64_t * p_45, int64_t  p_46, struct S3 * p_990);
int64_t  func_47(int64_t * p_48, uint32_t  p_49, struct S3 * p_990);
int64_t * func_50(uint32_t  p_51, struct S3 * p_990);
int16_t  func_57(int64_t  p_58, int64_t  p_59, int32_t * p_60, uint32_t  p_61, int32_t  p_62, struct S3 * p_990);
int32_t  func_65(int64_t * p_66, struct S3 * p_990);
int64_t * func_67(uint32_t  p_68, int32_t  p_69, int8_t  p_70, uint16_t  p_71, uint16_t  p_72, struct S3 * p_990);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_990->g_5 p_990->g_10 p_990->g_11 p_990->g_16 p_990->g_34 p_990->g_35 p_990->g_36 p_990->g_141 p_990->g_148 p_990->l_comm_values p_990->g_178 p_990->g_219 p_990->g_226 p_990->g_169 p_990->g_318 p_990->g_288 p_990->g_140 p_990->g_comm_values p_990->g_289 p_990->g_331 p_990->g_291 p_990->g_404 p_990->g_408 p_990->g_410 p_990->g_414 p_990->g_418 p_990->g_411.f8 p_990->g_238 p_990->g_411.f2 p_990->g_447 p_990->g_368 p_990->g_411.f3 p_990->g_411.f1 p_990->g_532 p_990->g_542 p_990->g_411.f5 p_990->g_558 p_990->g_559 p_990->g_560 p_990->g_566 p_990->g_374 p_990->g_635 p_990->g_474 p_990->g_672 p_990->g_657.f5 p_990->g_657.f1 p_990->g_411.f7 p_990->g_721 p_990->g_657.f4 p_990->g_736 p_990->g_753 p_990->g_754 p_990->g_799 p_990->g_800 p_990->g_822 p_990->g_657.f0 p_990->g_846 p_990->g_847 p_990->g_874 p_990->g_876 p_990->g_889 p_990->g_910 p_990->g_657.f7 p_990->g_927 p_990->g_959 p_990->g_967 p_990->g_650 p_990->g_975
 * writes: p_990->g_140 p_990->g_141 p_990->g_146 p_990->g_178 p_990->g_36 p_990->g_169 p_990->g_238 p_990->g_10 p_990->g_11 p_990->g_35 p_990->g_289 p_990->g_291 p_990->g_410 p_990->g_414 p_990->g_411.f2 p_990->g_374 p_990->g_368 p_990->g_411.f3 p_990->g_411.f1 p_990->g_219 p_990->g_148 p_990->g_288 p_990->g_5 p_990->g_611 p_990->g_411.f8 p_990->g_672 p_990->g_474 p_990->g_753 p_990->g_820 p_990->g_411.f5 p_990->g_846 p_990->g_850 p_990->g_874 p_990->g_657.f1 p_990->g_404.f1
 */
int64_t  func_1(struct S3 * p_990)
{ /* block id: 4 */
    VECTOR(int64_t, 8) l_2 = (VECTOR(int64_t, 8))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 0x41FC9A57B5BF2D3FL), 0x41FC9A57B5BF2D3FL), 0x41FC9A57B5BF2D3FL, (-1L), 0x41FC9A57B5BF2D3FL);
    int64_t *l_3 = (void*)0;
    int32_t l_4 = 1L;
    VECTOR(int8_t, 8) l_6 = (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 1L), 1L), 1L, 1L, 1L);
    VECTOR(uint16_t, 2) l_9 = (VECTOR(uint16_t, 2))(65535UL, 1UL);
    VECTOR(uint16_t, 4) l_12 = (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 65529UL), 65529UL);
    VECTOR(int32_t, 16) l_15 = (VECTOR(int32_t, 16))((-6L), (VECTOR(int32_t, 4))((-6L), (VECTOR(int32_t, 2))((-6L), (-6L)), (-6L)), (-6L), (-6L), (-6L), (VECTOR(int32_t, 2))((-6L), (-6L)), (VECTOR(int32_t, 2))((-6L), (-6L)), (-6L), (-6L), (-6L), (-6L));
    VECTOR(int32_t, 2) l_17 = (VECTOR(int32_t, 2))(0x22781501L, 1L);
    int32_t l_37[10][4] = {{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L}};
    int64_t *l_145 = &p_990->g_146;
    int8_t *l_147 = (void*)0;
    int32_t *l_315 = (void*)0;
    int32_t *l_316[8][9][3] = {{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}}};
    uint32_t l_317 = 0x0B206ECAL;
    uint16_t l_319 = 65532UL;
    int8_t *l_326 = (void*)0;
    int16_t l_327 = 1L;
    int64_t l_521 = 1L;
    int8_t l_533 = 0x66L;
    int32_t l_534 = 0x5EE5BBDBL;
    int64_t l_535[5][7] = {{0x6E9BCD4D1A1D6763L,0x6E9BCD4D1A1D6763L,0x6E9BCD4D1A1D6763L,0x6E9BCD4D1A1D6763L,0x6E9BCD4D1A1D6763L,0x6E9BCD4D1A1D6763L,0x6E9BCD4D1A1D6763L},{0x6E9BCD4D1A1D6763L,0x6E9BCD4D1A1D6763L,0x6E9BCD4D1A1D6763L,0x6E9BCD4D1A1D6763L,0x6E9BCD4D1A1D6763L,0x6E9BCD4D1A1D6763L,0x6E9BCD4D1A1D6763L},{0x6E9BCD4D1A1D6763L,0x6E9BCD4D1A1D6763L,0x6E9BCD4D1A1D6763L,0x6E9BCD4D1A1D6763L,0x6E9BCD4D1A1D6763L,0x6E9BCD4D1A1D6763L,0x6E9BCD4D1A1D6763L},{0x6E9BCD4D1A1D6763L,0x6E9BCD4D1A1D6763L,0x6E9BCD4D1A1D6763L,0x6E9BCD4D1A1D6763L,0x6E9BCD4D1A1D6763L,0x6E9BCD4D1A1D6763L,0x6E9BCD4D1A1D6763L},{0x6E9BCD4D1A1D6763L,0x6E9BCD4D1A1D6763L,0x6E9BCD4D1A1D6763L,0x6E9BCD4D1A1D6763L,0x6E9BCD4D1A1D6763L,0x6E9BCD4D1A1D6763L,0x6E9BCD4D1A1D6763L}};
    VECTOR(int64_t, 8) l_557 = (VECTOR(int64_t, 8))(0x4B78B72FBEEFBC15L, (VECTOR(int64_t, 4))(0x4B78B72FBEEFBC15L, (VECTOR(int64_t, 2))(0x4B78B72FBEEFBC15L, 0x7C034EBBE7615635L), 0x7C034EBBE7615635L), 0x7C034EBBE7615635L, 0x4B78B72FBEEFBC15L, 0x7C034EBBE7615635L);
    uint32_t l_567 = 0x96BD9CFAL;
    int32_t l_568[1][7][3] = {{{0L,0L,0L},{0L,0L,0L},{0L,0L,0L},{0L,0L,0L},{0L,0L,0L},{0L,0L,0L},{0L,0L,0L}}};
    int16_t l_570 = 0x41C1L;
    int64_t l_571 = 0x74EAC98B3594C212L;
    uint32_t l_576 = 0xF89F8467L;
    uint32_t l_586 = 4294967295UL;
    uint64_t l_587 = 0x78D39E035AED73D5L;
    uint64_t l_607 = 18446744073709551615UL;
    uint8_t *l_609[2][2];
    uint8_t **l_608[10] = {&l_609[1][0],&l_609[1][0],&l_609[1][0],&l_609[1][0],&l_609[1][0],&l_609[1][0],&l_609[1][0],&l_609[1][0],&l_609[1][0],&l_609[1][0]};
    uint8_t *l_610 = (void*)0;
    VECTOR(int64_t, 2) l_612 = (VECTOR(int64_t, 2))(0x7365C3274C42FD6BL, 0x449CE58B0AE30EC1L);
    uint32_t l_613 = 7UL;
    int16_t *l_614 = &l_570;
    uint32_t l_615 = 4294967295UL;
    uint32_t l_639 = 0xC03BF146L;
    VECTOR(int64_t, 16) l_649 = (VECTOR(int64_t, 16))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 0L), 0L), 0L, (-1L), 0L, (VECTOR(int64_t, 2))((-1L), 0L), (VECTOR(int64_t, 2))((-1L), 0L), (-1L), 0L, (-1L), 0L);
    struct S0 *l_656 = &p_990->g_657;
    int64_t *l_680 = &p_990->g_657.f1;
    int8_t **l_688 = &l_326;
    VECTOR(int8_t, 4) l_698 = (VECTOR(int8_t, 4))(0x2AL, (VECTOR(int8_t, 2))(0x2AL, 0x6DL), 0x6DL);
    uint32_t l_717 = 0x33A1E913L;
    uint64_t l_740 = 0x218D0E276D4A6130L;
    union U2 *l_744 = (void*)0;
    uint8_t l_787 = 1UL;
    int8_t ***l_802 = &l_688;
    uint16_t l_807 = 0xE305L;
    VECTOR(uint8_t, 2) l_823 = (VECTOR(uint8_t, 2))(248UL, 0xC4L);
    VECTOR(uint8_t, 2) l_824 = (VECTOR(uint8_t, 2))(0UL, 9UL);
    uint16_t l_864 = 0xE2B6L;
    int64_t l_870 = 6L;
    uint64_t l_883 = 0x31446F62ADCCF962L;
    int16_t l_911 = 0x2B1BL;
    int32_t l_912 = 0x5051F5B3L;
    uint8_t l_942 = 0x62L;
    VECTOR(int16_t, 4) l_974 = (VECTOR(int16_t, 4))((-9L), (VECTOR(int16_t, 2))((-9L), 0x7E54L), 0x7E54L);
    int64_t l_980 = 3L;
    uint64_t l_986 = 0x491848EF8788D1D9L;
    int i, j, k;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 2; j++)
            l_609[i][j] = &p_990->g_411.f8;
    }
    if (((l_4 = (!((VECTOR(int64_t, 8))(l_2.s50474451)).s4)) >= (p_990->g_5 | ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 16))(min(((VECTOR(int16_t, 4))(mad_sat(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(upsample(((VECTOR(int8_t, 4))(max(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 4))(safe_clamp_func(VECTOR(int8_t, 4),int8_t,((VECTOR(int8_t, 4))(l_6.s7712)), (int8_t)(safe_rshift_func_uint16_t_u_u(((VECTOR(uint16_t, 2))(mad_hi(((VECTOR(uint16_t, 2))(l_9.xx)), ((VECTOR(uint16_t, 16))(p_990->g_10.s7355143627746214)).s4d, ((VECTOR(uint16_t, 4))(mul_hi(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(sub_sat(((VECTOR(uint16_t, 16))(max(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(0UL, 0xFF44L, 0x6282L, 0xC712L)).xzwwxwzxwzyzxwyz)), ((VECTOR(uint16_t, 4))(safe_clamp_func(VECTOR(uint16_t, 4),uint16_t,((VECTOR(uint16_t, 4))(min(((VECTOR(uint16_t, 16))(p_990->g_11.yxzxwxzwxzzzwwwz)).s585f, ((VECTOR(uint16_t, 8))(l_12.wyxwwwyw)).hi))), (uint16_t)l_12.z, (uint16_t)(safe_rshift_func_uint8_t_u_u(p_990->g_5, 1))))).yzxxzzwzzxyyzzxw))).sc7, ((VECTOR(uint16_t, 2))(add_sat(((VECTOR(uint16_t, 8))(0xF767L, 0xD132L, p_990->g_11.z, (((VECTOR(int32_t, 16))(safe_clamp_func(VECTOR(int32_t, 16),VECTOR(int32_t, 16),((VECTOR(int32_t, 4))(l_15.s5b6d)).xwyxyzywxyywxxzy, ((VECTOR(int32_t, 16))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 2))(0x13CC9D6CL, 0x00B8F3BEL)).xyxyyyyyxyyyxyxx, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(3L, ((VECTOR(int32_t, 2))(clz(((VECTOR(int32_t, 4))(0x6946CB4FL, 0x5FDA84ADL, 0x26F2C0E8L, 0x167C74E2L)).hi))), (-9L))).zxzwwzyx)))).s6174127534043761, ((VECTOR(int32_t, 2))(p_990->g_16.s30)).xyxyyyyxxxxyyxxy))), ((VECTOR(int32_t, 8))(l_17.xyyyyxxx)).s4323122155631644))).s9 & func_18(func_23(func_29((((((((VECTOR(int8_t, 4))(p_990->g_34.xyyy)).x == ((((VECTOR(int32_t, 2))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 8))(p_990->g_35.s4bb1b2b1)).s50, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(rotate(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(l_12.z, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(p_990->g_36.xxwwywywwzxxwwxx)).odd)), ((((l_37[4][3] = l_2.s1) != (safe_mul_func_uint16_t_u_u(l_2.s0, (safe_lshift_func_uint16_t_u_s((((p_990->g_36.z = func_42(((*l_145) = func_47(func_50(l_12.y, p_990), p_990->g_5, p_990)), l_147, p_990->g_148, l_17.x, p_990)) < p_990->g_226.y) == l_317), 15))))) , p_990->g_318) != (void*)0), l_319, ((VECTOR(int32_t, 2))((-4L))), ((VECTOR(int32_t, 2))(0x2A3DCA01L)), 0x7049C35AL)))).s51f4, ((VECTOR(int32_t, 4))((-5L)))))).zyzzyyww)).s65))).even , p_990->g_35.s4) ^ p_990->g_219.w)) , 6UL) , p_990->g_288.s4) , p_990->g_140) , (void*)0), p_990->l_comm_values[(safe_mod_func_uint32_t_u_u(p_990->tid, 35))], p_990->g_5, p_990->g_318, p_990), p_990->g_comm_values[p_990->tid], l_326, l_327, p_990->g_288.s0, p_990), l_147, p_990->g_408.sf, l_521, p_990)), ((VECTOR(uint16_t, 2))(65533UL)), 0x52FBL, 0UL)).s21, ((VECTOR(uint16_t, 2))(0UL)))))))).xyxy)), l_533, 0xFEF1L, 1UL, ((VECTOR(uint16_t, 2))(0xCDEDL)), 0UL, 7UL, p_990->g_291[1][4], FAKE_DIVERGE(p_990->local_2_offset, get_local_id(2), 10), ((VECTOR(uint16_t, 2))(0UL)), 65528UL)).hi)).s24)).yyyy, ((VECTOR(uint16_t, 4))(0xB4EAL))))).even))).even, p_990->g_288.sc)), (int8_t)l_534))))), (int8_t)l_535[1][1]))).hi, ((VECTOR(uint8_t, 2))(0xABL))))).xyyx)), ((VECTOR(int16_t, 4))(0x7428L)), ((VECTOR(int16_t, 4))(1L))))).yxywzxxxywzwwxyx, ((VECTOR(int16_t, 16))(1L))))).sf961)).x)))
    { /* block id: 230 */
        int16_t *l_536[5][10] = {{&l_327,&l_327,&p_990->g_411.f2,(void*)0,&p_990->g_411.f2,&p_990->g_411.f2,(void*)0,&p_990->g_411.f2,&p_990->g_411.f2,&p_990->g_411.f2},{&l_327,&l_327,&p_990->g_411.f2,(void*)0,&p_990->g_411.f2,&p_990->g_411.f2,(void*)0,&p_990->g_411.f2,&p_990->g_411.f2,&p_990->g_411.f2},{&l_327,&l_327,&p_990->g_411.f2,(void*)0,&p_990->g_411.f2,&p_990->g_411.f2,(void*)0,&p_990->g_411.f2,&p_990->g_411.f2,&p_990->g_411.f2},{&l_327,&l_327,&p_990->g_411.f2,(void*)0,&p_990->g_411.f2,&p_990->g_411.f2,(void*)0,&p_990->g_411.f2,&p_990->g_411.f2,&p_990->g_411.f2},{&l_327,&l_327,&p_990->g_411.f2,(void*)0,&p_990->g_411.f2,&p_990->g_411.f2,(void*)0,&p_990->g_411.f2,&p_990->g_411.f2,&p_990->g_411.f2}};
        int32_t l_537 = 0L;
        int16_t l_545 = (-6L);
        int32_t l_546 = 0x61CCED6DL;
        uint16_t *l_551 = (void*)0;
        uint16_t *l_552 = &l_319;
        VECTOR(int64_t, 4) l_553 = (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 0L), 0L);
        VECTOR(int64_t, 8) l_554 = (VECTOR(int64_t, 8))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 0x6D187E8A61A88682L), 0x6D187E8A61A88682L), 0x6D187E8A61A88682L, 1L, 0x6D187E8A61A88682L);
        int64_t *l_555 = &l_535[0][4];
        VECTOR(int64_t, 8) l_556 = (VECTOR(int64_t, 8))(0x7B256AED5928250DL, (VECTOR(int64_t, 4))(0x7B256AED5928250DL, (VECTOR(int64_t, 2))(0x7B256AED5928250DL, 0x624F0BE1F96057AEL), 0x624F0BE1F96057AEL), 0x624F0BE1F96057AEL, 0x7B256AED5928250DL, 0x624F0BE1F96057AEL);
        VECTOR(uint16_t, 2) l_565 = (VECTOR(uint16_t, 2))(0x6148L, 1UL);
        uint32_t l_569 = 1UL;
        int16_t l_572 = 0x6162L;
        int8_t l_573 = 0x46L;
        int32_t l_574[2][2];
        int32_t l_575 = 0x64A93C1FL;
        int i, j;
        for (i = 0; i < 2; i++)
        {
            for (j = 0; j < 2; j++)
                l_574[i][j] = 4L;
        }
        l_546 ^= ((l_537 = (p_990->g_219.z ^= 1L)) != (safe_lshift_func_uint16_t_u_u(((safe_div_func_uint8_t_u_u((FAKE_DIVERGE(p_990->global_2_offset, get_global_id(2), 10) != ((VECTOR(uint16_t, 8))(p_990->g_542.s9bb714f8)).s3), 251UL)) || (safe_lshift_func_int8_t_s_u(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(0x19L, (l_545 = ((void*)0 == &l_319)), 0L, ((VECTOR(int8_t, 2))(0x7AL, 0x35L)), 0x52L, 0x37L, 1L)).s45)).odd, p_990->g_411.f5))), 3)));
        atomic_min(&p_990->l_atomic_reduction[0], (l_537 = (safe_mod_func_uint8_t_u_u((safe_div_func_uint16_t_u_u((~((*l_552) &= 1UL)), p_990->g_169.s0)), (+((p_990->g_288.sc = ((VECTOR(int64_t, 8))(hadd(((VECTOR(int64_t, 8))(rotate(((VECTOR(int64_t, 16))(l_545, ((VECTOR(int64_t, 2))((-8L), (-4L))), 5L, ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 16))(0x37E79B004C1587ABL, ((VECTOR(int64_t, 2))(l_553.zy)), ((VECTOR(int64_t, 8))(l_554.s42077055)), ((*l_555) = 0x7B83B7FF5308DE58L), ((VECTOR(int64_t, 2))(mad_sat(((VECTOR(int64_t, 8))(l_556.s24150625)).s34, ((VECTOR(int64_t, 16))(safe_clamp_func(VECTOR(int64_t, 16),int64_t,((VECTOR(int64_t, 16))((-6L), (-1L), ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 16))(1L, ((VECTOR(int64_t, 4))(l_557.s0542)), ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(sub_sat(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(p_990->g_558.s3702)), ((VECTOR(int64_t, 2))(p_990->g_559.s22)), (-6L), 0x4E5E34C24ED0ABE1L)).odd, ((VECTOR(int64_t, 8))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 8),((VECTOR(int64_t, 2))(rhadd(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 2))(p_990->g_560.s67)))).xxyyxyxx)).hi)).lo, ((VECTOR(int64_t, 16))(((VECTOR(int64_t, 16))(0x093753ACF6328888L, ((VECTOR(int64_t, 4))((-10L), 1L, 0x23F3842E0869EEC3L, 0x66C99F2D1931EB30L)), (safe_add_func_int8_t_s_s((l_556.s1 | (((safe_lshift_func_uint16_t_u_s(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 16))(1UL, ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(0x424AL, 65535UL)).hi, ((VECTOR(uint16_t, 2))(l_565.xx)), 0x14E5L)), (l_553.x ^ p_990->g_411.f1), 65534UL, (((((((p_990->g_148 = (void*)0) == p_990->g_566) ^ l_537) >= l_553.z) , l_554.s6) <= GROUP_DIVERGE(2, 1)) > l_556.s2), 65534UL, ((VECTOR(uint16_t, 4))(0x9F4BL)), 65527UL, 0xCCB6L, 0x681DL)).sb302)).w, 14)) , l_556.s3) ^ 248UL)), p_990->g_35.s7)), (-1L), l_553.x, l_554.s5, 0x3C3EDD3608AE9419L, (-1L), l_567, ((VECTOR(int64_t, 2))((-2L))), 0x43B1881BC74F750FL, 0x54187F4F67BE844FL)))).s17))).xyxxyyxy, ((VECTOR(int64_t, 8))(1L)), ((VECTOR(int64_t, 8))(0x7DCCE4D5D3B2BA91L))))).even))).wwzxyxxy)).s40)), l_568[0][0][0], 0x2E18CA361EB59189L, l_554.s7, 0x6D67A86741D3DE00L, 0x786AFA8B6A1639C5L, l_565.x, 0x1535A12B9A10F338L, 0x204AE61AC596BCD7L, 0x4249FA54B275F360L)).s47)), (-2L), 0x4756B43AD73F1267L, ((VECTOR(int64_t, 4))(1L)), l_554.s4, ((VECTOR(int64_t, 2))(0x7487502146E391F8L)), l_554.s0, 0x284F5C772A1A490BL, 0L)), (int64_t)l_569, (int64_t)l_570))).s1e, ((VECTOR(int64_t, 2))(0x419BC9029E083305L))))), 1L, 0x08F27A12A257E106L)).even)).odd)), 0x2A9A0C54E594B796L, ((VECTOR(int64_t, 4))((-1L))), 1L, 0x2B2BDA7F948F8DB6L, (-2L))).lo, ((VECTOR(int64_t, 8))(0x4A99D591D504E9FDL))))), ((VECTOR(int64_t, 8))(0L))))).s2) ^ (-1L)))))));
        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        if (get_linear_local_id() == 0)
            p_990->v_collective += p_990->l_atomic_reduction[0];
        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        l_537 = l_571;
        l_576--;
    }
    else
    { /* block id: 243 */
        for (p_990->g_5 = 5; (p_990->g_5 == 10); ++p_990->g_5)
        { /* block id: 246 */
            int32_t l_581 = 0L;
            return l_581;
        }
    }
    if (((safe_mul_func_int16_t_s_s((((safe_div_func_uint32_t_u_u(((l_586 , p_990->g_169.s3) & l_587), 3L)) >= GROUP_DIVERGE(0, 1)) , (safe_unary_minus_func_uint8_t_u((safe_add_func_int16_t_s_s((((p_990->g_35.sb > ((*l_614) = (!(safe_mul_func_int16_t_s_s((+(((safe_sub_func_uint64_t_u_u((safe_mul_func_uint8_t_u_u(((safe_lshift_func_uint8_t_u_s(((safe_mul_func_uint8_t_u_u((safe_mul_func_int8_t_s_s((safe_mul_func_uint8_t_u_u((l_607 >= (p_990->g_140 > p_990->g_404.f0)), (((p_990->g_611[1] = (l_610 = l_326)) == &p_990->g_238) > 1L))), 0xF9L)), 0x4EL)) <= 0x33714F4864D706A3L), l_612.y)) , l_613), 1UL)), p_990->g_comm_values[p_990->tid])) , &p_990->g_474) != &p_990->g_474)), p_990->g_411.f1))))) , l_615) >= p_990->g_35.s9), p_990->g_16.s1))))), p_990->g_374)) , 0x28DCCBCFL))
    { /* block id: 253 */
        int8_t l_638[8][8][4] = {{{0x01L,0x71L,0x71L,0x01L},{0x01L,0x71L,0x71L,0x01L},{0x01L,0x71L,0x71L,0x01L},{0x01L,0x71L,0x71L,0x01L},{0x01L,0x71L,0x71L,0x01L},{0x01L,0x71L,0x71L,0x01L},{0x01L,0x71L,0x71L,0x01L},{0x01L,0x71L,0x71L,0x01L}},{{0x01L,0x71L,0x71L,0x01L},{0x01L,0x71L,0x71L,0x01L},{0x01L,0x71L,0x71L,0x01L},{0x01L,0x71L,0x71L,0x01L},{0x01L,0x71L,0x71L,0x01L},{0x01L,0x71L,0x71L,0x01L},{0x01L,0x71L,0x71L,0x01L},{0x01L,0x71L,0x71L,0x01L}},{{0x01L,0x71L,0x71L,0x01L},{0x01L,0x71L,0x71L,0x01L},{0x01L,0x71L,0x71L,0x01L},{0x01L,0x71L,0x71L,0x01L},{0x01L,0x71L,0x71L,0x01L},{0x01L,0x71L,0x71L,0x01L},{0x01L,0x71L,0x71L,0x01L},{0x01L,0x71L,0x71L,0x01L}},{{0x01L,0x71L,0x71L,0x01L},{0x01L,0x71L,0x71L,0x01L},{0x01L,0x71L,0x71L,0x01L},{0x01L,0x71L,0x71L,0x01L},{0x01L,0x71L,0x71L,0x01L},{0x01L,0x71L,0x71L,0x01L},{0x01L,0x71L,0x71L,0x01L},{0x01L,0x71L,0x71L,0x01L}},{{0x01L,0x71L,0x71L,0x01L},{0x01L,0x71L,0x71L,0x01L},{0x01L,0x71L,0x71L,0x01L},{0x01L,0x71L,0x71L,0x01L},{0x01L,0x71L,0x71L,0x01L},{0x01L,0x71L,0x71L,0x01L},{0x01L,0x71L,0x71L,0x01L},{0x01L,0x71L,0x71L,0x01L}},{{0x01L,0x71L,0x71L,0x01L},{0x01L,0x71L,0x71L,0x01L},{0x01L,0x71L,0x71L,0x01L},{0x01L,0x71L,0x71L,0x01L},{0x01L,0x71L,0x71L,0x01L},{0x01L,0x71L,0x71L,0x01L},{0x01L,0x71L,0x71L,0x01L},{0x01L,0x71L,0x71L,0x01L}},{{0x01L,0x71L,0x71L,0x01L},{0x01L,0x71L,0x71L,0x01L},{0x01L,0x71L,0x71L,0x01L},{0x01L,0x71L,0x71L,0x01L},{0x01L,0x71L,0x71L,0x01L},{0x01L,0x71L,0x71L,0x01L},{0x01L,0x71L,0x71L,0x01L},{0x01L,0x71L,0x71L,0x01L}},{{0x01L,0x71L,0x71L,0x01L},{0x01L,0x71L,0x71L,0x01L},{0x01L,0x71L,0x71L,0x01L},{0x01L,0x71L,0x71L,0x01L},{0x01L,0x71L,0x71L,0x01L},{0x01L,0x71L,0x71L,0x01L},{0x01L,0x71L,0x71L,0x01L},{0x01L,0x71L,0x71L,0x01L}}};
        int32_t l_641 = (-9L);
        int32_t l_647 = (-6L);
        int32_t l_716 = (-5L);
        VECTOR(int32_t, 2) l_719 = (VECTOR(int32_t, 2))(1L, 0x1FB10580L);
        VECTOR(int64_t, 4) l_735 = (VECTOR(int64_t, 4))(0x7A965225254DB58FL, (VECTOR(int64_t, 2))(0x7A965225254DB58FL, 0x5B27B7DAAF11F588L), 0x5B27B7DAAF11F588L);
        VECTOR(int32_t, 2) l_757 = (VECTOR(int32_t, 2))(0x77721D81L, 0x3FA14E75L);
        uint64_t *l_776 = &p_990->g_368;
        int i, j, k;
        for (l_586 = 1; (l_586 < 59); l_586 = safe_add_func_int32_t_s_s(l_586, 8))
        { /* block id: 256 */
            uint32_t l_620 = 1UL;
            uint32_t l_623 = 0x402FA382L;
            uint64_t *l_640[6] = {&l_587,&l_587,&l_587,&l_587,&l_587,&l_587};
            int16_t l_642[8][4] = {{(-4L),3L,(-1L),3L},{(-4L),3L,(-1L),3L},{(-4L),3L,(-1L),3L},{(-4L),3L,(-1L),3L},{(-4L),3L,(-1L),3L},{(-4L),3L,(-1L),3L},{(-4L),3L,(-1L),3L},{(-4L),3L,(-1L),3L}};
            int32_t **l_643[2][7] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
            uint16_t l_644 = 0x323AL;
            int i, j;
            (*p_990->g_532) = ((((safe_sub_func_uint8_t_u_u(((l_620 > ((safe_sub_func_int64_t_s_s(l_623, (safe_sub_func_int8_t_s_s((((l_641 ^= (safe_sub_func_int32_t_s_s((safe_div_func_int64_t_s_s((safe_sub_func_int64_t_s_s((((safe_rshift_func_int8_t_s_u(((VECTOR(int8_t, 16))(mul_hi(((VECTOR(int8_t, 4))(sub_sat(((VECTOR(int8_t, 16))(sub_sat(((VECTOR(int8_t, 4))(0x67L, 0x40L, 1L, 0x44L)).xwzwyxzwwyyzyxyz, ((VECTOR(int8_t, 16))((p_990->g_34.y != ((safe_unary_minus_func_uint16_t_u(p_990->g_226.x)) < (&p_990->g_238 == (void*)0))), (-3L), ((VECTOR(int8_t, 2))(p_990->g_635.wy)), (-3L), ((VECTOR(int8_t, 2))((-1L), 0x79L)), (GROUP_DIVERGE(1, 1) || ((VECTOR(uint64_t, 4))(rhadd(((VECTOR(uint64_t, 8))((safe_mul_func_int16_t_s_s((((((&p_990->g_345 != (FAKE_DIVERGE(p_990->group_2_offset, get_group_id(2), 10) , (void*)0)) & 0x7FEB5D49L) <= p_990->g_288.sd) != p_990->g_404.f0) <= p_990->g_219.y), p_990->g_226.x)), 18446744073709551612UL, ((VECTOR(uint64_t, 2))(0xFD16B5519475F241L)), 18446744073709551606UL, l_620, 1UL, 0xF7B09517C090633EL)).lo, ((VECTOR(uint64_t, 4))(6UL))))).w), 1L, (-4L), 0L, 0L, 3L, l_638[7][3][2], 0x75L, (-1L)))))).s6867, ((VECTOR(int8_t, 4))(0L))))).yzzzxyxxyyxxzxzy, ((VECTOR(int8_t, 16))((-3L)))))).s0, 2)) & l_638[6][3][3]) != l_639), l_638[1][2][2])), l_638[7][3][2])), l_638[7][3][2]))) > 0x3619B28D5E682DCDL) , l_642[6][1]), p_990->g_16.s7)))) , l_638[7][3][2])) , l_641), l_623)) != p_990->g_474) && p_990->g_414.f0) , (void*)0);
            l_644 ^= 0x74114634L;
        }
        for (p_990->g_411.f1 = 0; (p_990->g_411.f1 < (-16)); p_990->g_411.f1 = safe_sub_func_int64_t_s_s(p_990->g_411.f1, 5))
        { /* block id: 263 */
            int64_t *l_651 = &l_521;
            struct S0 *l_654 = &p_990->g_411;
            struct S0 **l_655[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            VECTOR(int32_t, 2) l_662 = (VECTOR(int32_t, 2))(0x2F142D43L, 0x265D5491L);
            VECTOR(uint32_t, 8) l_673 = (VECTOR(uint32_t, 8))(0x2E045A54L, (VECTOR(uint32_t, 4))(0x2E045A54L, (VECTOR(uint32_t, 2))(0x2E045A54L, 0x1571DACAL), 0x1571DACAL), 0x1571DACAL, 0x2E045A54L, 0x1571DACAL);
            uint32_t l_706 = 0x7F0DB6B9L;
            int i;
            l_641 = l_638[7][3][2];
            l_656 = (((l_647 ^ 0x6850F002666A77D5L) , ((l_638[3][4][0] && ((VECTOR(int64_t, 8))(((void*)0 == &l_587), (-4L), (-1L), 0x2AFA4D53400B23A0L, ((VECTOR(int64_t, 4))(p_990->g_648.xxyz)).w, ((VECTOR(int64_t, 2))(sub_sat(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 16))(l_649.sdf950e6ccbb6cd53)).s2f)), ((VECTOR(int64_t, 16))(mul_hi(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 16))(p_990->g_650.se4d9f6367a2a0f26)).s09c0)).wyxzyyyzwyzwyyxy)).s37)).yyyyyxyxyyyxyyyx, ((VECTOR(int64_t, 4))(0x5A581712B4F41CCDL, ((*l_651) = p_990->g_559.s0), 0x49DDD18997FA8F6DL, (-1L))).zwzzzwywywyzwzzx))).sf1))), 4L)).s0) & (safe_lshift_func_int16_t_s_s((-1L), 12)))) , l_654);
            for (l_576 = 0; (l_576 <= 41); l_576++)
            { /* block id: 269 */
                int16_t l_669[2];
                int32_t l_705 = 0x56AB8D15L;
                int i;
                for (i = 0; i < 2; i++)
                    l_669[i] = 0x1B0CL;
                for (l_570 = 0; (l_570 == 28); ++l_570)
                { /* block id: 272 */
                    if (l_662.y)
                        break;
                }
                for (p_990->g_368 = 7; (p_990->g_368 < 13); p_990->g_368 = safe_add_func_uint16_t_u_u(p_990->g_368, 2))
                { /* block id: 277 */
                    int64_t **l_667 = &l_3;
                    uint16_t *l_668[6][6] = {{(void*)0,&l_319,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&l_319,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&l_319,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&l_319,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&l_319,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&l_319,(void*)0,(void*)0,(void*)0,(void*)0}};
                    int32_t l_681[7] = {0x65FB1166L,0x65FB1166L,0x65FB1166L,0x65FB1166L,0x65FB1166L,0x65FB1166L,0x65FB1166L};
                    int i, j;
                    l_641 |= (((p_990->g_11.z = (safe_add_func_int64_t_s_s(l_662.y, ((void*)0 == l_667)))) != (l_669[1] || ((safe_add_func_int16_t_s_s(0L, (p_990->g_672 , (((VECTOR(uint32_t, 16))(mad_hi(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 16))(4294967286UL, ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(l_673.s64)), 0x8B355E9EL, 4294967295UL)).even)).xyxyyxyx)), (safe_rshift_func_uint16_t_u_s((safe_lshift_func_uint8_t_u_u((p_990->g_678 , ((safe_unary_minus_func_int64_t_s(((((void*)0 == l_680) | l_681[3]) || l_638[7][3][2]))) == l_681[6])), 2)), p_990->g_146)), 0x431C71FAL, ((VECTOR(uint32_t, 4))(4294967295UL)), 0xAD7CEB9EL)).hi)).s5677645673607706, ((VECTOR(uint32_t, 16))(0x54437C6CL)), ((VECTOR(uint32_t, 16))(0xDC2389FAL))))).s3 == l_647)))) && p_990->g_672.f1))) < l_638[7][3][2]);
                    l_662.y = (l_673.s0 ^ (((l_681[0] || (((*l_614) = p_990->g_657.f5) , 0L)) , (p_990->g_657.f1 ^ ((*l_651) = l_681[2]))) == l_681[3]));
                }
                for (p_990->g_238 = 0; (p_990->g_238 <= 57); p_990->g_238++)
                { /* block id: 286 */
                    int8_t **l_687 = &p_990->g_318;
                    int8_t ***l_686[3][10] = {{(void*)0,&l_687,&l_687,&l_687,(void*)0,(void*)0,&l_687,&l_687,&l_687,(void*)0},{(void*)0,&l_687,&l_687,&l_687,(void*)0,(void*)0,&l_687,&l_687,&l_687,(void*)0},{(void*)0,&l_687,&l_687,&l_687,(void*)0,(void*)0,&l_687,&l_687,&l_687,(void*)0}};
                    int32_t l_689 = 0x4895D1E0L;
                    int64_t l_703 = 0x32EBBFEBB7472B47L;
                    int32_t l_704 = 0x1BC164ECL;
                    int i, j;
                    l_689 = ((l_688 = &p_990->g_318) != (void*)0);
                    p_990->g_36.x &= (safe_lshift_func_uint16_t_u_u(p_990->g_411.f7, 1));
                    for (p_990->g_411.f8 = 0; (p_990->g_411.f8 >= 10); ++p_990->g_411.f8)
                    { /* block id: 292 */
                        int32_t l_715[10] = {0x6D0D12EAL,(-2L),0x01F13EFDL,(-2L),0x6D0D12EAL,0x6D0D12EAL,(-2L),0x01F13EFDL,(-2L),0x6D0D12EAL};
                        int32_t l_718 = (-2L);
                        int i;
                        l_718 &= ((((safe_sub_func_uint16_t_u_u((safe_mul_func_int8_t_s_s(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 4))(hadd(((VECTOR(int8_t, 8))(2L, 0x50L, 3L, 0x49L, ((VECTOR(int8_t, 2))(rhadd(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(l_698.zwzyywyzwwxwzxxw)).s6fd8)).hi, ((VECTOR(int8_t, 16))(max(((VECTOR(int8_t, 2))(0x46L, 0x73L)).xyxxyyxyyxxyyxyy, ((VECTOR(int8_t, 8))(0x28L, (((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(abs(((VECTOR(int32_t, 8))(8L, ((l_641 ^= 0x4DL) == (l_716 = ((l_689 = (safe_rshift_func_uint16_t_u_u(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(min(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 16))(((safe_mod_func_uint8_t_u_u(l_703, l_704)) <= ((((*l_614) = ((--l_706) | (l_689 || l_705))) && (safe_div_func_uint32_t_u_u((safe_div_func_uint16_t_u_u(((-5L) < (safe_lshift_func_uint8_t_u_s(0x30L, ((p_990->g_404.f0 , l_715[2]) > p_990->g_10.s0)))), l_716)), p_990->g_657.f0))) , l_717)), 0xF0CBL, ((VECTOR(uint16_t, 2))(65535UL)), 0xCBE7L, 0x9537L, ((VECTOR(uint16_t, 4))(7UL)), 65531UL, FAKE_DIVERGE(p_990->local_2_offset, get_local_id(2), 10), ((VECTOR(uint16_t, 2))(1UL)), 0x17C6L, 65535UL)).even)).s64, ((VECTOR(uint16_t, 2))(3UL))))).xxxy)).z, 12))) == 0x1EL))), ((VECTOR(int32_t, 4))(0x066D9642L)), 0x78054106L, 0L)).s44))), 0UL, 0x58C2C017L)).w , l_647), ((VECTOR(int8_t, 4))(0x45L)), (-1L), (-1L))).s1540003056647656))).s65))).odd, l_669[1], 0x1AL, 5L)).odd, ((VECTOR(int8_t, 4))(0L))))))), 0x38L, ((VECTOR(int8_t, 2))(1L)), 0x6FL)).s6, l_669[1])), p_990->g_169.sb)) ^ 0x0326L) | 5UL) || l_716);
                        if (l_704)
                            break;
                        l_715[2] |= ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(l_719.xx)), 0x082DFD9FL, 6L)).xxwzyxxz)).s46)), 0x1024D011L, (-5L))).y;
                    }
                    (*p_990->g_721) = &l_568[0][3][0];
                }
            }
            for (l_317 = 0; (l_317 == 4); l_317 = safe_add_func_uint16_t_u_u(l_317, 6))
            { /* block id: 307 */
                struct S0 *l_724 = &p_990->g_411;
                int32_t l_725 = 0x537E69D6L;
                int64_t *l_734[6][4][5] = {{{(void*)0,&p_990->g_411.f5,(void*)0,&p_990->g_411.f5,&p_990->g_411.f5},{(void*)0,&p_990->g_411.f5,(void*)0,&p_990->g_411.f5,&p_990->g_411.f5},{(void*)0,&p_990->g_411.f5,(void*)0,&p_990->g_411.f5,&p_990->g_411.f5},{(void*)0,&p_990->g_411.f5,(void*)0,&p_990->g_411.f5,&p_990->g_411.f5}},{{(void*)0,&p_990->g_411.f5,(void*)0,&p_990->g_411.f5,&p_990->g_411.f5},{(void*)0,&p_990->g_411.f5,(void*)0,&p_990->g_411.f5,&p_990->g_411.f5},{(void*)0,&p_990->g_411.f5,(void*)0,&p_990->g_411.f5,&p_990->g_411.f5},{(void*)0,&p_990->g_411.f5,(void*)0,&p_990->g_411.f5,&p_990->g_411.f5}},{{(void*)0,&p_990->g_411.f5,(void*)0,&p_990->g_411.f5,&p_990->g_411.f5},{(void*)0,&p_990->g_411.f5,(void*)0,&p_990->g_411.f5,&p_990->g_411.f5},{(void*)0,&p_990->g_411.f5,(void*)0,&p_990->g_411.f5,&p_990->g_411.f5},{(void*)0,&p_990->g_411.f5,(void*)0,&p_990->g_411.f5,&p_990->g_411.f5}},{{(void*)0,&p_990->g_411.f5,(void*)0,&p_990->g_411.f5,&p_990->g_411.f5},{(void*)0,&p_990->g_411.f5,(void*)0,&p_990->g_411.f5,&p_990->g_411.f5},{(void*)0,&p_990->g_411.f5,(void*)0,&p_990->g_411.f5,&p_990->g_411.f5},{(void*)0,&p_990->g_411.f5,(void*)0,&p_990->g_411.f5,&p_990->g_411.f5}},{{(void*)0,&p_990->g_411.f5,(void*)0,&p_990->g_411.f5,&p_990->g_411.f5},{(void*)0,&p_990->g_411.f5,(void*)0,&p_990->g_411.f5,&p_990->g_411.f5},{(void*)0,&p_990->g_411.f5,(void*)0,&p_990->g_411.f5,&p_990->g_411.f5},{(void*)0,&p_990->g_411.f5,(void*)0,&p_990->g_411.f5,&p_990->g_411.f5}},{{(void*)0,&p_990->g_411.f5,(void*)0,&p_990->g_411.f5,&p_990->g_411.f5},{(void*)0,&p_990->g_411.f5,(void*)0,&p_990->g_411.f5,&p_990->g_411.f5},{(void*)0,&p_990->g_411.f5,(void*)0,&p_990->g_411.f5,&p_990->g_411.f5},{(void*)0,&p_990->g_411.f5,(void*)0,&p_990->g_411.f5,&p_990->g_411.f5}}};
                union U2 *l_743 = &p_990->g_208[0];
                int32_t l_747 = (-1L);
                int8_t *l_748 = &p_990->g_474;
                int i, j, k;
                l_656 = l_724;
                if (((l_719.y , (0x1A45E353E6B1986AL | l_725)) , (((safe_div_func_uint32_t_u_u((safe_mul_func_int16_t_s_s(p_990->g_657.f4, (l_647 >= (safe_add_func_uint32_t_u_u((safe_div_func_uint32_t_u_u((((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(mad_hi(((VECTOR(uint16_t, 16))(p_990->g_672.f1, (p_990->l_comm_values[(safe_mod_func_uint32_t_u_u(p_990->tid, 35))] < (((p_990->g_comm_values[p_990->tid] |= ((*l_651) |= (l_662.x | (p_990->g_374 >= 0x530EL)))) <= 18446744073709551615UL) , 0x86AEAD13L)), l_725, 65530UL, 0x93E5L, ((VECTOR(uint16_t, 4))(0x7E5BL)), 7UL, GROUP_DIVERGE(0, 1), 0xF2ACL, 0x48C9L, 0UL, 0x9169L, 0UL)).sb8, ((VECTOR(uint16_t, 2))(1UL)), ((VECTOR(uint16_t, 2))(5UL))))), 65530UL, 3UL, 65532UL, ((VECTOR(uint16_t, 2))(0xFA50L)), 0xA1C9L)).s6 <= l_719.x), l_662.x)), l_638[7][3][2]))))), l_735.w)) < FAKE_DIVERGE(p_990->group_0_offset, get_group_id(0), 10)) != (-10L))))
                { /* block id: 311 */
                    l_662.y = 0x2A99856DL;
                }
                else
                { /* block id: 313 */
                    struct S1 *l_737 = &p_990->g_672;
                    l_656 = (l_724 = &p_990->g_411);
                    (*l_737) = p_990->g_736[0][0][2];
                }
                if ((safe_add_func_int8_t_s_s((l_740 = l_719.x), ((*l_748) ^= (l_747 = ((safe_rshift_func_int8_t_s_u((l_743 == l_744), 6)) > (safe_div_func_int32_t_s_s(l_641, 0x827D113BL))))))))
                { /* block id: 321 */
                    uint32_t l_759 = 4294967295UL;
                    for (l_747 = (-2); (l_747 > 11); l_747 = safe_add_func_uint64_t_u_u(l_747, 3))
                    { /* block id: 324 */
                        int32_t l_751 = 0x4D50FE19L;
                        int16_t l_752 = (-1L);
                        if (l_751)
                            break;
                        l_752 &= (p_990->g_635.x & l_751);
                        if (l_706)
                            break;
                    }
                    (*p_990->g_754) = p_990->g_753;
                    for (l_521 = 0; (l_521 == 26); l_521 = safe_add_func_int32_t_s_s(l_521, 2))
                    { /* block id: 332 */
                        uint32_t l_758[1][9];
                        uint16_t *l_770[8][5][6] = {{{(void*)0,(void*)0,&l_319,&l_319,(void*)0,(void*)0},{(void*)0,(void*)0,&l_319,&l_319,(void*)0,(void*)0},{(void*)0,(void*)0,&l_319,&l_319,(void*)0,(void*)0},{(void*)0,(void*)0,&l_319,&l_319,(void*)0,(void*)0},{(void*)0,(void*)0,&l_319,&l_319,(void*)0,(void*)0}},{{(void*)0,(void*)0,&l_319,&l_319,(void*)0,(void*)0},{(void*)0,(void*)0,&l_319,&l_319,(void*)0,(void*)0},{(void*)0,(void*)0,&l_319,&l_319,(void*)0,(void*)0},{(void*)0,(void*)0,&l_319,&l_319,(void*)0,(void*)0},{(void*)0,(void*)0,&l_319,&l_319,(void*)0,(void*)0}},{{(void*)0,(void*)0,&l_319,&l_319,(void*)0,(void*)0},{(void*)0,(void*)0,&l_319,&l_319,(void*)0,(void*)0},{(void*)0,(void*)0,&l_319,&l_319,(void*)0,(void*)0},{(void*)0,(void*)0,&l_319,&l_319,(void*)0,(void*)0},{(void*)0,(void*)0,&l_319,&l_319,(void*)0,(void*)0}},{{(void*)0,(void*)0,&l_319,&l_319,(void*)0,(void*)0},{(void*)0,(void*)0,&l_319,&l_319,(void*)0,(void*)0},{(void*)0,(void*)0,&l_319,&l_319,(void*)0,(void*)0},{(void*)0,(void*)0,&l_319,&l_319,(void*)0,(void*)0},{(void*)0,(void*)0,&l_319,&l_319,(void*)0,(void*)0}},{{(void*)0,(void*)0,&l_319,&l_319,(void*)0,(void*)0},{(void*)0,(void*)0,&l_319,&l_319,(void*)0,(void*)0},{(void*)0,(void*)0,&l_319,&l_319,(void*)0,(void*)0},{(void*)0,(void*)0,&l_319,&l_319,(void*)0,(void*)0},{(void*)0,(void*)0,&l_319,&l_319,(void*)0,(void*)0}},{{(void*)0,(void*)0,&l_319,&l_319,(void*)0,(void*)0},{(void*)0,(void*)0,&l_319,&l_319,(void*)0,(void*)0},{(void*)0,(void*)0,&l_319,&l_319,(void*)0,(void*)0},{(void*)0,(void*)0,&l_319,&l_319,(void*)0,(void*)0},{(void*)0,(void*)0,&l_319,&l_319,(void*)0,(void*)0}},{{(void*)0,(void*)0,&l_319,&l_319,(void*)0,(void*)0},{(void*)0,(void*)0,&l_319,&l_319,(void*)0,(void*)0},{(void*)0,(void*)0,&l_319,&l_319,(void*)0,(void*)0},{(void*)0,(void*)0,&l_319,&l_319,(void*)0,(void*)0},{(void*)0,(void*)0,&l_319,&l_319,(void*)0,(void*)0}},{{(void*)0,(void*)0,&l_319,&l_319,(void*)0,(void*)0},{(void*)0,(void*)0,&l_319,&l_319,(void*)0,(void*)0},{(void*)0,(void*)0,&l_319,&l_319,(void*)0,(void*)0},{(void*)0,(void*)0,&l_319,&l_319,(void*)0,(void*)0},{(void*)0,(void*)0,&l_319,&l_319,(void*)0,(void*)0}}};
                        int32_t l_783[2][2][1];
                        int32_t l_784 = 0x7DFE1580L;
                        int i, j, k;
                        for (i = 0; i < 1; i++)
                        {
                            for (j = 0; j < 9; j++)
                                l_758[i][j] = 0xB5BEB722L;
                        }
                        for (i = 0; i < 2; i++)
                        {
                            for (j = 0; j < 2; j++)
                            {
                                for (k = 0; k < 1; k++)
                                    l_783[i][j][k] = (-1L);
                            }
                        }
                        l_784 = ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(l_757.yxxy)).lo)), (-1L), 0x615FCED2L, (l_759 ^= l_758[0][3]), 0L, 0x57A4A90EL, ((VECTOR(int32_t, 4))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 4))(((safe_lshift_func_int8_t_s_s(((l_662.x = (safe_sub_func_int8_t_s_s((l_783[1][0][0] = (safe_rshift_func_uint16_t_u_s(((safe_div_func_int32_t_s_s((safe_add_func_int64_t_s_s(((--p_990->g_10.s6) != (l_651 == (((safe_sub_func_int32_t_s_s(((*l_688) == (*l_688)), 0xCEEEAEE2L)) , p_990->g_775) , l_776))), ((safe_mul_func_int16_t_s_s(((*l_614) = (safe_add_func_uint64_t_u_u((safe_rshift_func_int16_t_s_u(l_757.y, 6)), p_990->g_526))), p_990->g_474)) != l_758[0][3]))), 4L)) , 0xDEFFL), p_990->g_650.sa))), 0x23L))) != l_673.s7), 6)) >= l_759), l_662.x, 0x39896A3CL, 0x5F6CC869L)), ((VECTOR(int32_t, 4))(1L))))), 0x3ADA0D97L, 0x2F9B7F5EL, 0x5B9EF3C5L, 0x537EEFABL, 0L)), ((VECTOR(int32_t, 16))(0x7F2DEDD7L))))).s4a70)))).y;
                        return l_747;
                    }
                }
                else
                { /* block id: 341 */
                    int32_t **l_785 = &l_315;
                    int32_t **l_786 = &p_990->g_141;
                    (*l_786) = ((*l_785) = (*p_990->g_532));
                    l_787++;
                }
            }
        }
    }
    else
    { /* block id: 348 */
        VECTOR(int8_t, 16) l_798 = (VECTOR(int8_t, 16))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), (-8L)), (-8L)), (-8L), (-1L), (-8L), (VECTOR(int8_t, 2))((-1L), (-8L)), (VECTOR(int8_t, 2))((-1L), (-8L)), (-1L), (-8L), (-1L), (-8L));
        int64_t *l_801 = (void*)0;
        uint16_t *l_803 = (void*)0;
        uint16_t *l_804 = (void*)0;
        uint16_t *l_805 = (void*)0;
        uint16_t *l_806[5][3] = {{&l_319,&l_319,&l_319},{&l_319,&l_319,&l_319},{&l_319,&l_319,&l_319},{&l_319,&l_319,&l_319},{&l_319,&l_319,&l_319}};
        int32_t l_808 = 0L;
        uint64_t *l_813 = &l_740;
        uint32_t *l_818 = (void*)0;
        uint32_t *l_819 = &p_990->g_291[0][6];
        int64_t *l_829 = (void*)0;
        int64_t *l_830[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int32_t l_841 = 7L;
        struct S0 *l_851[8][1][6] = {{{&p_990->g_657,&p_990->g_657,&p_990->g_657,&p_990->g_657,&p_990->g_657,&p_990->g_657}},{{&p_990->g_657,&p_990->g_657,&p_990->g_657,&p_990->g_657,&p_990->g_657,&p_990->g_657}},{{&p_990->g_657,&p_990->g_657,&p_990->g_657,&p_990->g_657,&p_990->g_657,&p_990->g_657}},{{&p_990->g_657,&p_990->g_657,&p_990->g_657,&p_990->g_657,&p_990->g_657,&p_990->g_657}},{{&p_990->g_657,&p_990->g_657,&p_990->g_657,&p_990->g_657,&p_990->g_657,&p_990->g_657}},{{&p_990->g_657,&p_990->g_657,&p_990->g_657,&p_990->g_657,&p_990->g_657,&p_990->g_657}},{{&p_990->g_657,&p_990->g_657,&p_990->g_657,&p_990->g_657,&p_990->g_657,&p_990->g_657}},{{&p_990->g_657,&p_990->g_657,&p_990->g_657,&p_990->g_657,&p_990->g_657,&p_990->g_657}}};
        int8_t l_854 = (-3L);
        int i, j, k;
        l_808 |= (((safe_mul_func_uint16_t_u_u((safe_lshift_func_uint16_t_u_u((safe_rshift_func_int16_t_s_s((safe_sub_func_int8_t_s_s(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(sub_sat(((VECTOR(int8_t, 2))(l_798.s3e)).xyxyyyxy, ((VECTOR(int8_t, 2))(add_sat(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))(p_990->g_799.scff0513492c4768f)).lo)).s23, ((VECTOR(int8_t, 4))(p_990->g_800.s3522)).lo))).yyxyxxyy))).s64)).xxyy)))).y, (l_801 != &p_990->g_146))), l_798.sd)), (p_990->g_11.z = (l_798.s7 < (l_798.s1 || (l_802 == (void*)0)))))), ((void*)0 != &p_990->g_141))) > 0UL) == l_807);
        if ((safe_add_func_int64_t_s_s((((void*)0 == &p_990->g_410) != (safe_add_func_uint64_t_u_u((--(*l_813)), (safe_sub_func_uint32_t_u_u(((*l_819) ^= 0x2B8BA01BL), ((p_990->g_820 = &l_688) == (((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(abs_diff(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(p_990->g_822.wyzz)).xxwzyxwwywzyywyy)).even)), ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 2))(l_823.yy)))).xxxxxxyy))).s42)), 1UL, ((VECTOR(uint8_t, 2))(l_824.yx)), 7UL, 0x9EL, 0x28L)).s6 , &l_688))))))), (l_841 &= ((safe_sub_func_int64_t_s_s((p_990->g_411.f5 = l_808), (+(safe_add_func_int32_t_s_s(0x2861E361L, GROUP_DIVERGE(1, 1)))))) < ((((safe_mul_func_uint16_t_u_u(l_798.sc, (((safe_rshift_func_uint16_t_u_s((((safe_div_func_int16_t_s_s((l_798.s9 && 18446744073709551615UL), 0x258AL)) || p_990->g_635.z) < l_808), l_798.sb)) != p_990->g_657.f0) > p_990->l_comm_values[(safe_mod_func_uint32_t_u_u(p_990->tid, 35))]))) != 0x71L) == 0L) != l_798.s6))))))
        { /* block id: 356 */
            VECTOR(int32_t, 4) l_844 = (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x3EEB3352L), 0x3EEB3352L);
            int8_t l_845 = 0x5AL;
            int i;
            for (p_990->g_411.f8 = 0; (p_990->g_411.f8 >= 25); p_990->g_411.f8 = safe_add_func_int32_t_s_s(p_990->g_411.f8, 4))
            { /* block id: 359 */
                struct S0 *l_848[8] = {&p_990->g_411,&p_990->g_411,&p_990->g_411,&p_990->g_411,&p_990->g_411,&p_990->g_411,&p_990->g_411,&p_990->g_411};
                struct S0 **l_849[8] = {&l_656,(void*)0,&l_656,&l_656,(void*)0,&l_656,&l_656,(void*)0};
                int i;
                l_845 ^= ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(l_844.zyxw)).ywxwxwyz)).s5;
                (*p_990->g_847) = p_990->g_846;
                l_851[3][0][1] = (p_990->g_850 = l_848[5]);
            }
        }
        else
        { /* block id: 365 */
            int16_t l_863 = (-2L);
            uint64_t *l_872 = &p_990->g_657.f3;
            uint64_t **l_871 = &l_872;
            uint32_t *l_873[10][5][3];
            int32_t **l_875 = (void*)0;
            int i, j, k;
            for (i = 0; i < 10; i++)
            {
                for (j = 0; j < 5; j++)
                {
                    for (k = 0; k < 3; k++)
                        l_873[i][j][k] = &l_576;
                }
            }
            p_990->g_36.w |= ((p_990->g_874[0][1][0] ^= (safe_rshift_func_int16_t_s_u((l_854 <= (safe_add_func_uint8_t_u_u(((((safe_mul_func_uint8_t_u_u((l_798.sa <= (p_990->g_291[1][3] = 0x1F359DB3L)), 7UL)) > ((safe_lshift_func_int16_t_s_s((safe_lshift_func_int8_t_s_u(l_863, 7)), ((*l_614) = (((p_990->g_10.s4 = (l_864 ^ (safe_rshift_func_uint16_t_u_u((~(safe_unary_minus_func_int32_t_s((((((*l_871) = func_67(p_990->g_672.f0, ((safe_add_func_int16_t_s_s(((*l_614) |= l_863), l_854)) | 4294967290UL), l_870, p_990->g_288.s0, p_990->g_822.z, p_990)) != &p_990->g_140) > p_990->g_288.s1) , 3L)))), p_990->g_657.f0)))) <= p_990->g_822.z) , 0x0AB6L)))) >= FAKE_DIVERGE(p_990->global_0_offset, get_global_id(0), 10))) < p_990->g_5) == l_863), FAKE_DIVERGE(p_990->local_1_offset, get_local_id(1), 10)))), 2))) || l_798.sb);
            (*p_990->g_876) = l_873[6][2][2];
        }
    }
    for (l_870 = 0; (l_870 < 6); l_870 = safe_add_func_int8_t_s_s(l_870, 1))
    { /* block id: 378 */
        int8_t **l_886 = &p_990->g_318;
        VECTOR(uint32_t, 4) l_890 = (VECTOR(uint32_t, 4))(0x54DE4999L, (VECTOR(uint32_t, 2))(0x54DE4999L, 0UL), 0UL);
        int32_t l_909 = 0x14C7ED0AL;
        int64_t *l_913 = (void*)0;
        int64_t *l_914 = &p_990->g_411.f1;
        int32_t l_946 = 0x019F6C07L;
        uint8_t l_948 = 0x74L;
        int32_t *l_958 = &l_946;
        int32_t l_985[10][9] = {{0x799780BEL,0x701FB98CL,(-3L),6L,(-3L),0x701FB98CL,0x799780BEL,0L,1L},{0x799780BEL,0x701FB98CL,(-3L),6L,(-3L),0x701FB98CL,0x799780BEL,0L,1L},{0x799780BEL,0x701FB98CL,(-3L),6L,(-3L),0x701FB98CL,0x799780BEL,0L,1L},{0x799780BEL,0x701FB98CL,(-3L),6L,(-3L),0x701FB98CL,0x799780BEL,0L,1L},{0x799780BEL,0x701FB98CL,(-3L),6L,(-3L),0x701FB98CL,0x799780BEL,0L,1L},{0x799780BEL,0x701FB98CL,(-3L),6L,(-3L),0x701FB98CL,0x799780BEL,0L,1L},{0x799780BEL,0x701FB98CL,(-3L),6L,(-3L),0x701FB98CL,0x799780BEL,0L,1L},{0x799780BEL,0x701FB98CL,(-3L),6L,(-3L),0x701FB98CL,0x799780BEL,0L,1L},{0x799780BEL,0x701FB98CL,(-3L),6L,(-3L),0x701FB98CL,0x799780BEL,0L,1L},{0x799780BEL,0x701FB98CL,(-3L),6L,(-3L),0x701FB98CL,0x799780BEL,0L,1L}};
        uint32_t l_989 = 0x960BB35DL;
        int i, j;
        if (((safe_lshift_func_int16_t_s_s((safe_rshift_func_uint8_t_u_u(l_883, (safe_add_func_uint32_t_u_u(((void*)0 != l_886), (safe_sub_func_uint32_t_u_u(((VECTOR(uint32_t, 4))(rotate(((VECTOR(uint32_t, 16))(p_990->g_889.s5030131437112307)).s80cd, ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 8))(l_890.yyxzyxww)))).hi))).z, ((p_990->g_291[0][6] = 4294967291UL) >= (&p_990->g_178[5] != (((*l_914) = (((*l_145) = ((*l_680) = ((safe_sub_func_uint64_t_u_u((safe_rshift_func_uint16_t_u_u((safe_sub_func_int8_t_s_s((safe_mod_func_uint8_t_u_u((safe_mul_func_int8_t_s_s((safe_rshift_func_int8_t_s_s((l_890.z <= (p_990->g_657.f1 , ((safe_lshift_func_int8_t_s_s((safe_mul_func_uint8_t_u_u((safe_mod_func_int64_t_s_s(l_890.w, (~(p_990->g_11.z >= l_890.x)))), 0x61L)), l_909)) <= p_990->g_910))), l_909)), l_909)), l_911)), l_912)), l_890.z)), p_990->g_889.s0)) <= p_990->g_846.f1))) , (-9L))) , &p_990->g_178[5]))))))))), 1)) < l_909))
        { /* block id: 383 */
            int32_t l_915 = 0x78BD3D23L;
            if (l_915)
                break;
            for (p_990->g_404.f1 = (-13); (p_990->g_404.f1 < 1); p_990->g_404.f1 = safe_add_func_int8_t_s_s(p_990->g_404.f1, 4))
            { /* block id: 387 */
                int8_t l_920[10][7] = {{0x1BL,0x0BL,0x58L,0L,0x58L,0x0BL,0x1BL},{0x1BL,0x0BL,0x58L,0L,0x58L,0x0BL,0x1BL},{0x1BL,0x0BL,0x58L,0L,0x58L,0x0BL,0x1BL},{0x1BL,0x0BL,0x58L,0L,0x58L,0x0BL,0x1BL},{0x1BL,0x0BL,0x58L,0L,0x58L,0x0BL,0x1BL},{0x1BL,0x0BL,0x58L,0L,0x58L,0x0BL,0x1BL},{0x1BL,0x0BL,0x58L,0L,0x58L,0x0BL,0x1BL},{0x1BL,0x0BL,0x58L,0L,0x58L,0x0BL,0x1BL},{0x1BL,0x0BL,0x58L,0L,0x58L,0x0BL,0x1BL},{0x1BL,0x0BL,0x58L,0L,0x58L,0x0BL,0x1BL}};
                int16_t l_947 = 8L;
                int i, j;
                for (l_567 = 0; (l_567 <= 42); ++l_567)
                { /* block id: 390 */
                    int64_t l_922 = 0x75C234E799F98F6AL;
                    if ((p_990->g_289.s2 <= l_920[6][6]))
                    { /* block id: 391 */
                        int64_t l_921 = (-1L);
                        if (l_921)
                            break;
                    }
                    else
                    { /* block id: 393 */
                        int32_t l_943 = 0x6C73A231L;
                        uint64_t *l_944 = (void*)0;
                        uint64_t *l_945 = &p_990->g_368;
                        l_946 = (l_922 && ((safe_rshift_func_uint8_t_u_s(((0x5932013FL || (safe_sub_func_int64_t_s_s(p_990->g_657.f7, p_990->g_927[0][0][2]))) | ((*l_614) = l_922)), 6)) ^ (+(((safe_rshift_func_uint8_t_u_u((safe_div_func_int16_t_s_s((safe_lshift_func_uint16_t_u_u(((safe_mod_func_int16_t_s_s((((safe_sub_func_int32_t_s_s(l_915, GROUP_DIVERGE(1, 1))) | ((*l_945) = (safe_mod_func_int32_t_s_s(((VECTOR(int32_t, 8))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(0x55F9FCB9L, 0x36CCF742L, ((VECTOR(int32_t, 8))(safe_clamp_func(VECTOR(int32_t, 8),int32_t,((VECTOR(int32_t, 2))(6L, 0x13E2B4E2L)).xyxyyxxy, (int32_t)((((safe_rshift_func_int16_t_s_s(((void*)0 != &p_990->g_927[0][0][2]), 7)) && 0L) , l_942) , l_943), (int32_t)l_890.y))), l_915, 9L, l_922, ((VECTOR(int32_t, 2))((-8L))), 7L)).s2b2f)).xwxzywzz, ((VECTOR(int32_t, 8))(1L)), ((VECTOR(int32_t, 8))(0x7FFA19A5L))))).s1, l_922)))) , 1L), (-1L))) , GROUP_DIVERGE(0, 1)), l_943)), 1UL)), 3)) , 0x70469496L) , (-1L)))));
                        ++l_948;
                        if (l_920[0][6])
                            continue;
                    }
                }
            }
        }
        else
        { /* block id: 402 */
            uint32_t l_953 = 0x2B8E7B27L;
            uint16_t l_955 = 0xDFFCL;
            VECTOR(int8_t, 8) l_968 = (VECTOR(int8_t, 8))(0x41L, (VECTOR(int8_t, 4))(0x41L, (VECTOR(int8_t, 2))(0x41L, 0L), 0L), 0L, 0x41L, 0L);
            int8_t *l_977 = (void*)0;
            uint32_t l_979[6][4][8] = {{{0x4353DBFEL,1UL,4294967288UL,0x3E69C58BL,0x87E02043L,4294967294UL,0x3785DAC0L,4294967292UL},{0x4353DBFEL,1UL,4294967288UL,0x3E69C58BL,0x87E02043L,4294967294UL,0x3785DAC0L,4294967292UL},{0x4353DBFEL,1UL,4294967288UL,0x3E69C58BL,0x87E02043L,4294967294UL,0x3785DAC0L,4294967292UL},{0x4353DBFEL,1UL,4294967288UL,0x3E69C58BL,0x87E02043L,4294967294UL,0x3785DAC0L,4294967292UL}},{{0x4353DBFEL,1UL,4294967288UL,0x3E69C58BL,0x87E02043L,4294967294UL,0x3785DAC0L,4294967292UL},{0x4353DBFEL,1UL,4294967288UL,0x3E69C58BL,0x87E02043L,4294967294UL,0x3785DAC0L,4294967292UL},{0x4353DBFEL,1UL,4294967288UL,0x3E69C58BL,0x87E02043L,4294967294UL,0x3785DAC0L,4294967292UL},{0x4353DBFEL,1UL,4294967288UL,0x3E69C58BL,0x87E02043L,4294967294UL,0x3785DAC0L,4294967292UL}},{{0x4353DBFEL,1UL,4294967288UL,0x3E69C58BL,0x87E02043L,4294967294UL,0x3785DAC0L,4294967292UL},{0x4353DBFEL,1UL,4294967288UL,0x3E69C58BL,0x87E02043L,4294967294UL,0x3785DAC0L,4294967292UL},{0x4353DBFEL,1UL,4294967288UL,0x3E69C58BL,0x87E02043L,4294967294UL,0x3785DAC0L,4294967292UL},{0x4353DBFEL,1UL,4294967288UL,0x3E69C58BL,0x87E02043L,4294967294UL,0x3785DAC0L,4294967292UL}},{{0x4353DBFEL,1UL,4294967288UL,0x3E69C58BL,0x87E02043L,4294967294UL,0x3785DAC0L,4294967292UL},{0x4353DBFEL,1UL,4294967288UL,0x3E69C58BL,0x87E02043L,4294967294UL,0x3785DAC0L,4294967292UL},{0x4353DBFEL,1UL,4294967288UL,0x3E69C58BL,0x87E02043L,4294967294UL,0x3785DAC0L,4294967292UL},{0x4353DBFEL,1UL,4294967288UL,0x3E69C58BL,0x87E02043L,4294967294UL,0x3785DAC0L,4294967292UL}},{{0x4353DBFEL,1UL,4294967288UL,0x3E69C58BL,0x87E02043L,4294967294UL,0x3785DAC0L,4294967292UL},{0x4353DBFEL,1UL,4294967288UL,0x3E69C58BL,0x87E02043L,4294967294UL,0x3785DAC0L,4294967292UL},{0x4353DBFEL,1UL,4294967288UL,0x3E69C58BL,0x87E02043L,4294967294UL,0x3785DAC0L,4294967292UL},{0x4353DBFEL,1UL,4294967288UL,0x3E69C58BL,0x87E02043L,4294967294UL,0x3785DAC0L,4294967292UL}},{{0x4353DBFEL,1UL,4294967288UL,0x3E69C58BL,0x87E02043L,4294967294UL,0x3785DAC0L,4294967292UL},{0x4353DBFEL,1UL,4294967288UL,0x3E69C58BL,0x87E02043L,4294967294UL,0x3785DAC0L,4294967292UL},{0x4353DBFEL,1UL,4294967288UL,0x3E69C58BL,0x87E02043L,4294967294UL,0x3785DAC0L,4294967292UL},{0x4353DBFEL,1UL,4294967288UL,0x3E69C58BL,0x87E02043L,4294967294UL,0x3785DAC0L,4294967292UL}}};
            int32_t l_981 = 0L;
            int i, j, k;
            for (l_948 = 0; (l_948 != 36); l_948 = safe_add_func_int64_t_s_s(l_948, 9))
            { /* block id: 405 */
                uint16_t l_954 = 65533UL;
                l_954 = l_953;
            }
            --l_955;
            (*p_990->g_959) = (l_958 = &l_946);
            for (l_576 = 11; (l_576 == 25); l_576 = safe_add_func_int8_t_s_s(l_576, 7))
            { /* block id: 413 */
                VECTOR(int16_t, 4) l_966 = (VECTOR(int16_t, 4))(0x1950L, (VECTOR(int16_t, 2))(0x1950L, 1L), 1L);
                VECTOR(uint8_t, 8) l_969 = (VECTOR(uint8_t, 8))(248UL, (VECTOR(uint8_t, 4))(248UL, (VECTOR(uint8_t, 2))(248UL, 0x0DL), 0x0DL), 0x0DL, 248UL, 0x0DL);
                int8_t *l_976 = (void*)0;
                int32_t l_982 = 0x6A628E33L;
                int32_t l_983 = (-3L);
                int32_t l_984 = 0x0D910C35L;
                int i;
                for (l_317 = 10; (l_317 < 13); l_317 = safe_add_func_uint64_t_u_u(l_317, 3))
                { /* block id: 416 */
                    uint64_t *l_970 = &p_990->g_368;
                    int32_t l_973 = 1L;
                    uint32_t l_978 = 1UL;
                    l_980 = ((safe_add_func_uint16_t_u_u(((VECTOR(uint16_t, 16))(abs_diff(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(l_966.zz)).yxyyyyyxyyxyxxyx)).lo)))).s7406160610731546, ((VECTOR(int16_t, 2))(upsample(((VECTOR(int8_t, 2))(max(((VECTOR(int8_t, 4))(p_990->g_967.s1044)).even, ((VECTOR(int8_t, 16))(l_968.s0233737703121673)).s88))), ((VECTOR(uint8_t, 16))(l_969.s2667407055154606)).sd3))).yxyyxyxyyyyyyxxy))).s8, (p_990->g_11.w = ((((((l_979[1][2][7] = ((((*l_970) = p_990->g_650.sb) != (((*l_614) = (((*l_958) = (safe_mul_func_int8_t_s_s(l_973, (((VECTOR(int32_t, 2))(0x7BCD1EE9L, 0x7377F9EEL)).lo >= ((((VECTOR(int16_t, 8))(rotate(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 16))(hadd(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(min(((VECTOR(int16_t, 16))(mul_hi(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(l_974.xz)).xxxyxyxy)).s6242612773163370, ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 16))(min(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 4))(p_990->g_169.s2, ((VECTOR(int16_t, 2))(upsample(((VECTOR(int8_t, 16))(p_990->g_975.s6b876d41fe87560f)).s48, ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 8))(mad_hi(((VECTOR(uint8_t, 8))((p_990->g_289.s3 == (((*l_958) && (((l_976 = (void*)0) == l_977) , (p_990->g_291[1][0] == p_990->g_36.z))) == p_990->g_558.s1)), l_966.z, 0x1FL, ((VECTOR(uint8_t, 2))(0x1FL)), ((VECTOR(uint8_t, 2))(0xA2L)), 1UL)), ((VECTOR(uint8_t, 8))(1UL)), ((VECTOR(uint8_t, 8))(0xD0L))))))).s57))), 0x3462L)).odd)).xxxxxxxyxxyyyyyy, (int16_t)p_990->g_635.y)))))))).s42, ((VECTOR(int16_t, 2))(0x2A98L))))).xxyx)).xxxwyzyyxxxzzxzx, ((VECTOR(int16_t, 16))(0x4CBDL))))))).s04)), (-8L), 1L)).yxxxyxzz)), ((VECTOR(int16_t, 8))((-3L)))))).s2 , p_990->g_411.f1) | l_973))))) > l_978)) > p_990->g_288.se)) , (-1L))) != 0x4F176FA1L) == 0x30BDL) , p_990->g_140) , l_955) != p_990->g_411.f1)))) == 0x2957AA72L);
                    --l_986;
                }
            }
        }
        return l_989;
    }
    return p_990->g_635.y;
}


/* ------------------------------------------ */
/* 
 * reads : p_990->g_532
 * writes: p_990->g_141
 */
int32_t  func_18(int64_t * p_19, int8_t * p_20, uint8_t  p_21, uint64_t  p_22, struct S3 * p_990)
{ /* block id: 226 */
    int32_t *l_522 = &p_990->g_374;
    int32_t *l_523 = &p_990->g_374;
    int32_t *l_524 = (void*)0;
    int32_t *l_525[6][5][1];
    int8_t l_527 = 0x29L;
    int64_t l_528 = 0x241E4009612E0324L;
    uint8_t l_529 = 0x0BL;
    int i, j, k;
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 5; j++)
        {
            for (k = 0; k < 1; k++)
                l_525[i][j][k] = (void*)0;
        }
    }
    l_529--;
    (*p_990->g_532) = l_524;
    return p_22;
}


/* ------------------------------------------ */
/* 
 * reads : p_990->g_289 p_990->g_331 p_990->g_16 p_990->g_140 p_990->g_291 p_990->g_404 p_990->g_408 p_990->g_10 p_990->g_36 p_990->g_410 p_990->g_414 p_990->g_418 p_990->g_411.f8 p_990->g_238 p_990->g_148 p_990->g_411.f2 p_990->g_447 p_990->g_368 p_990->g_5 p_990->g_411.f3 p_990->g_141 p_990->g_411.f1
 * writes: p_990->g_141 p_990->g_140 p_990->g_291 p_990->g_410 p_990->g_414 p_990->g_411.f2 p_990->g_374 p_990->g_368 p_990->g_411.f3 p_990->g_411.f1
 */
int64_t * func_23(int8_t * p_24, uint32_t  p_25, int8_t * p_26, uint8_t  p_27, uint32_t  p_28, struct S3 * p_990)
{ /* block id: 128 */
    int16_t l_353 = (-8L);
    VECTOR(uint16_t, 4) l_357 = (VECTOR(uint16_t, 4))(0x2066L, (VECTOR(uint16_t, 2))(0x2066L, 0x1A3BL), 0x1A3BL);
    int32_t l_362 = 0x490222A5L;
    int32_t *l_387 = &l_362;
    VECTOR(int8_t, 4) l_406 = (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0x05L), 0x05L);
    int64_t *l_422 = (void*)0;
    int32_t l_468 = 0x5D339FC5L;
    int32_t l_469 = 1L;
    int32_t l_503 = 0x6E958A77L;
    int32_t l_504 = 0x003AF015L;
    int32_t l_505 = 5L;
    int32_t l_506[5][5] = {{1L,(-7L),(-6L),1L,(-6L)},{1L,(-7L),(-6L),1L,(-6L)},{1L,(-7L),(-6L),1L,(-6L)},{1L,(-7L),(-6L),1L,(-6L)},{1L,(-7L),(-6L),1L,(-6L)}};
    int8_t l_508 = 1L;
    uint32_t l_517[6] = {3UL,3UL,3UL,3UL,3UL,3UL};
    int32_t *l_520 = &l_362;
    int i, j;
    if (p_990->g_289.s1)
    { /* block id: 129 */
        uint8_t l_346 = 0xE0L;
        int32_t l_354[4] = {0x53A77E88L,0x53A77E88L,0x53A77E88L,0x53A77E88L};
        int64_t l_375 = 0x48AA8C383516B679L;
        int32_t *l_385 = &l_362;
        int16_t l_388 = 0x668DL;
        union U2 *l_405 = &p_990->g_207[4];
        uint8_t *l_436 = &l_346;
        int8_t l_444 = 6L;
        int i;
        for (p_28 = 4; (p_28 >= 3); p_28 = safe_sub_func_int8_t_s_s(p_28, 4))
        { /* block id: 132 */
            int32_t *l_330 = (void*)0;
            int32_t *l_333 = (void*)0;
            int32_t *l_334 = (void*)0;
            int32_t *l_335 = (void*)0;
            int32_t *l_337 = (void*)0;
            int32_t *l_344 = (void*)0;
            uint64_t *l_367[4][4] = {{&p_990->g_368,&p_990->g_368,&p_990->g_368,&p_990->g_368},{&p_990->g_368,&p_990->g_368,&p_990->g_368,&p_990->g_368},{&p_990->g_368,&p_990->g_368,&p_990->g_368,&p_990->g_368},{&p_990->g_368,&p_990->g_368,&p_990->g_368,&p_990->g_368}};
            int32_t *l_369 = (void*)0;
            int32_t *l_370 = (void*)0;
            int32_t *l_371 = (void*)0;
            int32_t *l_372 = (void*)0;
            int32_t *l_373[1];
            int i, j;
            for (i = 0; i < 1; i++)
                l_373[i] = (void*)0;
            (*p_990->g_331) = l_330;
            l_346 ^= p_25;
            l_375 ^= (safe_lshift_func_int8_t_s_s(((safe_lshift_func_int8_t_s_u(((((VECTOR(int32_t, 4))((safe_mul_func_int8_t_s_s((l_354[1] = ((p_25 != 0xCAAA5692L) , l_353)), (safe_add_func_uint16_t_u_u(((!((VECTOR(uint16_t, 4))(l_357.xzxw)).w) || 0x42BEL), (safe_mod_func_int16_t_s_s(p_25, (safe_add_func_int8_t_s_s(((p_990->g_374 = (((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(((l_362 ^= (0x62F0825AL || (+0x66959D6BL))) <= 8UL), ((VECTOR(int16_t, 2))(0x1C7CL, (-1L))), 0x633BL)).xwzzwxxywzywwwwz)).seb26)).yxwwwyxy)).s7364577044434503)).s8 <= (((p_990->g_368 = (GROUP_DIVERGE(0, 1) & (safe_lshift_func_uint8_t_u_s((((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(add_sat(((VECTOR(int16_t, 4))((safe_sub_func_uint16_t_u_u(0xCCADL, 0x09D5L)), 1L, (-1L), 0x60D8L)).even, ((VECTOR(int16_t, 2))(0x6203L))))), (-9L), 0L)).x ^ 1UL), l_346)))) & 0xAFFA7EBE27F9E097L) != p_27))) ^ 0xD81D241AL), 4L)))))))), ((VECTOR(int32_t, 2))((-7L))), 0x79502D20L)).y & p_990->g_16.s1) > p_25), 1)) <= p_990->g_16.s4), 3));
            for (l_346 = 18; (l_346 <= 11); l_346 = safe_sub_func_int32_t_s_s(l_346, 1))
            { /* block id: 142 */
                int32_t *l_386 = (void*)0;
                for (l_375 = (-17); (l_375 > (-15)); l_375 = safe_add_func_uint8_t_u_u(l_375, 5))
                { /* block id: 145 */
                    VECTOR(uint16_t, 16) l_380 = (VECTOR(uint16_t, 16))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 9UL), 9UL), 9UL, 65535UL, 9UL, (VECTOR(uint16_t, 2))(65535UL, 9UL), (VECTOR(uint16_t, 2))(65535UL, 9UL), 65535UL, 9UL, 65535UL, 9UL);
                    int32_t **l_383 = (void*)0;
                    int32_t **l_384[5][1][9] = {{{(void*)0,&l_372,&l_372,&l_372,(void*)0,(void*)0,&l_372,&l_372,&l_372}},{{(void*)0,&l_372,&l_372,&l_372,(void*)0,(void*)0,&l_372,&l_372,&l_372}},{{(void*)0,&l_372,&l_372,&l_372,(void*)0,(void*)0,&l_372,&l_372,&l_372}},{{(void*)0,&l_372,&l_372,&l_372,(void*)0,(void*)0,&l_372,&l_372,&l_372}},{{(void*)0,&l_372,&l_372,&l_372,(void*)0,(void*)0,&l_372,&l_372,&l_372}}};
                    int i, j, k;
                    ++l_380.s0;
                    l_385 = &l_354[1];
                    if (l_357.x)
                        break;
                    l_387 = l_386;
                }
                (*l_385) |= l_388;
            }
        }
        for (p_990->g_140 = 0; (p_990->g_140 != 56); p_990->g_140 = safe_add_func_int64_t_s_s(p_990->g_140, 4))
        { /* block id: 156 */
            uint8_t l_442 = 255UL;
            VECTOR(int32_t, 8) l_453 = (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x58F35FC2L), 0x58F35FC2L), 0x58F35FC2L, 1L, 0x58F35FC2L);
            int32_t l_460 = 0x0F2B8476L;
            uint64_t *l_481 = &p_990->g_368;
            int i;
            if ((safe_mod_func_uint16_t_u_u((*l_385), p_990->g_291[0][6])))
            { /* block id: 157 */
                int32_t *l_421 = &p_990->g_374;
                uint32_t l_443 = 1UL;
                for (p_25 = 0; (p_25 < 23); ++p_25)
                { /* block id: 160 */
                    uint32_t *l_397 = &p_990->g_291[0][6];
                    VECTOR(uint8_t, 16) l_407 = (VECTOR(uint8_t, 16))(7UL, (VECTOR(uint8_t, 4))(7UL, (VECTOR(uint8_t, 2))(7UL, 1UL), 1UL), 1UL, 7UL, 1UL, (VECTOR(uint8_t, 2))(7UL, 1UL), (VECTOR(uint8_t, 2))(7UL, 1UL), 7UL, 1UL, 7UL, 1UL);
                    union U2 *l_409 = (void*)0;
                    int i;
                    if ((((((*l_397)++) < p_28) <= ((0UL || ((safe_add_func_int32_t_s_s(p_27, (~0x32B621F3L))) <= ((*l_385) = ((safe_add_func_int16_t_s_s(0x54D8L, (((p_990->g_404 , l_405) == (((VECTOR(uint8_t, 8))(mad_hi(((VECTOR(uint8_t, 16))(abs(((VECTOR(int8_t, 2))(l_406.xz)).yxyyxyyxxyxyxxxy))).even, ((VECTOR(uint8_t, 16))(l_407.s414cc7728c5d38b6)).even, ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 8))(p_990->g_408.s0bf30543)).lo)).yxxxxyxx))).s3 , l_409)) == p_990->g_10.s1))) < p_25)))) & 0UL)) <= p_990->g_36.z))
                    { /* block id: 163 */
                        struct S0 * volatile *l_413 = &p_990->g_410;
                        volatile struct S1 *l_415 = (void*)0;
                        (*l_413) = p_990->g_410;
                        (*p_990->g_418) = p_990->g_414;
                    }
                    else
                    { /* block id: 166 */
                        int32_t **l_420[9][6] = {{&l_385,&p_990->g_141,&l_387,&l_385,&l_387,&p_990->g_141},{&l_385,&p_990->g_141,&l_387,&l_385,&l_387,&p_990->g_141},{&l_385,&p_990->g_141,&l_387,&l_385,&l_387,&p_990->g_141},{&l_385,&p_990->g_141,&l_387,&l_385,&l_387,&p_990->g_141},{&l_385,&p_990->g_141,&l_387,&l_385,&l_387,&p_990->g_141},{&l_385,&p_990->g_141,&l_387,&l_385,&l_387,&p_990->g_141},{&l_385,&p_990->g_141,&l_387,&l_385,&l_387,&p_990->g_141},{&l_385,&p_990->g_141,&l_387,&l_385,&l_387,&p_990->g_141},{&l_385,&p_990->g_141,&l_387,&l_385,&l_387,&p_990->g_141}};
                        int i, j;
                        l_421 = &l_362;
                        (*l_421) &= 7L;
                        return l_422;
                    }
                    return l_422;
                }
                for (l_353 = (-19); (l_353 != (-16)); l_353++)
                { /* block id: 175 */
                    uint8_t *l_433 = &p_990->g_238;
                    uint8_t **l_434 = (void*)0;
                    uint8_t **l_435[6] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                    int16_t *l_437 = &p_990->g_411.f2;
                    int i, j;
                    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                    p_990->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 35)), permutations[(safe_mod_func_uint32_t_u_u((((p_25 , 65531UL) , p_25) < (l_444 = ((*l_421) = (!(safe_rshift_func_int16_t_s_u((safe_add_func_uint16_t_u_u((((((safe_add_func_uint64_t_u_u(((safe_rshift_func_int16_t_s_u(((l_436 = l_433) == &p_27), 7)) | (((*l_437) = 0x1460L) < (((((safe_div_func_int8_t_s_s((((((((((safe_add_func_uint64_t_u_u(0x86DEF3AE348E6ABAL, p_990->g_404.f1)) <= p_27) <= 1UL) == 0x54L) ^ l_442) , 0xC4L) || l_442) <= GROUP_DIVERGE(0, 1)) != p_990->g_411.f8), (*l_385))) > (*l_385)) ^ l_443) >= GROUP_DIVERGE(0, 1)) <= 0x63C3919FL))), 5UL)) ^ p_990->g_404.f1) <= p_28) , p_27) < p_990->g_238), l_442)), p_990->g_10.s1)))))), 10))][(safe_mod_func_uint32_t_u_u(p_990->tid, 35))]));
                    return p_990->g_148;
                }
            }
            else
            { /* block id: 185 */
                VECTOR(int64_t, 4) l_456 = (VECTOR(int64_t, 4))((-10L), (VECTOR(int64_t, 2))((-10L), 0L), 0L);
                int32_t l_470 = 8L;
                int32_t l_488 = 1L;
                int i;
                for (p_990->g_411.f2 = 0; (p_990->g_411.f2 < (-21)); p_990->g_411.f2 = safe_sub_func_int16_t_s_s(p_990->g_411.f2, 3))
                { /* block id: 188 */
                    uint32_t l_450[5][10] = {{0xDC0F35E6L,0UL,4294967295UL,1UL,4294967295UL,0UL,0xDC0F35E6L,1UL,4294967295UL,4294967295UL},{0xDC0F35E6L,0UL,4294967295UL,1UL,4294967295UL,0UL,0xDC0F35E6L,1UL,4294967295UL,4294967295UL},{0xDC0F35E6L,0UL,4294967295UL,1UL,4294967295UL,0UL,0xDC0F35E6L,1UL,4294967295UL,4294967295UL},{0xDC0F35E6L,0UL,4294967295UL,1UL,4294967295UL,0UL,0xDC0F35E6L,1UL,4294967295UL,4294967295UL},{0xDC0F35E6L,0UL,4294967295UL,1UL,4294967295UL,0UL,0xDC0F35E6L,1UL,4294967295UL,4294967295UL}};
                    int8_t *l_451 = (void*)0;
                    int8_t *l_452[3][2][6] = {{{&l_444,(void*)0,&l_444,(void*)0,&l_444,&l_444},{&l_444,(void*)0,&l_444,(void*)0,&l_444,&l_444}},{{&l_444,(void*)0,&l_444,(void*)0,&l_444,&l_444},{&l_444,(void*)0,&l_444,(void*)0,&l_444,&l_444}},{{&l_444,(void*)0,&l_444,(void*)0,&l_444,&l_444},{&l_444,(void*)0,&l_444,(void*)0,&l_444,&l_444}}};
                    uint64_t *l_457[10][3] = {{&p_990->g_368,(void*)0,(void*)0},{&p_990->g_368,(void*)0,(void*)0},{&p_990->g_368,(void*)0,(void*)0},{&p_990->g_368,(void*)0,(void*)0},{&p_990->g_368,(void*)0,(void*)0},{&p_990->g_368,(void*)0,(void*)0},{&p_990->g_368,(void*)0,(void*)0},{&p_990->g_368,(void*)0,(void*)0},{&p_990->g_368,(void*)0,(void*)0},{&p_990->g_368,(void*)0,(void*)0}};
                    int16_t l_458[3];
                    int32_t l_459 = 5L;
                    int i, j, k;
                    for (i = 0; i < 3; i++)
                        l_458[i] = 0x3A73L;
                    l_460 &= (l_459 &= ((p_990->g_447 , ((safe_lshift_func_int8_t_s_u((l_453.s6 = l_450[0][2]), p_25)) >= (safe_add_func_int64_t_s_s(0x3554DDED7C10AEA3L, ((VECTOR(int64_t, 4))(l_456.wzxy)).y)))) || (((p_25 <= GROUP_DIVERGE(0, 1)) >= (l_458[2] = p_28)) , (*l_385))));
                }
                if (p_27)
                    continue;
                for (l_442 = 0; (l_442 == 26); l_442 = safe_add_func_int16_t_s_s(l_442, 7))
                { /* block id: 197 */
                    int32_t *l_463 = (void*)0;
                    int32_t *l_464 = &p_990->g_374;
                    int32_t *l_465 = &l_362;
                    int32_t *l_466[9][9][3] = {{{&p_990->g_374,&p_990->g_374,(void*)0},{&p_990->g_374,&p_990->g_374,(void*)0},{&p_990->g_374,&p_990->g_374,(void*)0},{&p_990->g_374,&p_990->g_374,(void*)0},{&p_990->g_374,&p_990->g_374,(void*)0},{&p_990->g_374,&p_990->g_374,(void*)0},{&p_990->g_374,&p_990->g_374,(void*)0},{&p_990->g_374,&p_990->g_374,(void*)0},{&p_990->g_374,&p_990->g_374,(void*)0}},{{&p_990->g_374,&p_990->g_374,(void*)0},{&p_990->g_374,&p_990->g_374,(void*)0},{&p_990->g_374,&p_990->g_374,(void*)0},{&p_990->g_374,&p_990->g_374,(void*)0},{&p_990->g_374,&p_990->g_374,(void*)0},{&p_990->g_374,&p_990->g_374,(void*)0},{&p_990->g_374,&p_990->g_374,(void*)0},{&p_990->g_374,&p_990->g_374,(void*)0},{&p_990->g_374,&p_990->g_374,(void*)0}},{{&p_990->g_374,&p_990->g_374,(void*)0},{&p_990->g_374,&p_990->g_374,(void*)0},{&p_990->g_374,&p_990->g_374,(void*)0},{&p_990->g_374,&p_990->g_374,(void*)0},{&p_990->g_374,&p_990->g_374,(void*)0},{&p_990->g_374,&p_990->g_374,(void*)0},{&p_990->g_374,&p_990->g_374,(void*)0},{&p_990->g_374,&p_990->g_374,(void*)0},{&p_990->g_374,&p_990->g_374,(void*)0}},{{&p_990->g_374,&p_990->g_374,(void*)0},{&p_990->g_374,&p_990->g_374,(void*)0},{&p_990->g_374,&p_990->g_374,(void*)0},{&p_990->g_374,&p_990->g_374,(void*)0},{&p_990->g_374,&p_990->g_374,(void*)0},{&p_990->g_374,&p_990->g_374,(void*)0},{&p_990->g_374,&p_990->g_374,(void*)0},{&p_990->g_374,&p_990->g_374,(void*)0},{&p_990->g_374,&p_990->g_374,(void*)0}},{{&p_990->g_374,&p_990->g_374,(void*)0},{&p_990->g_374,&p_990->g_374,(void*)0},{&p_990->g_374,&p_990->g_374,(void*)0},{&p_990->g_374,&p_990->g_374,(void*)0},{&p_990->g_374,&p_990->g_374,(void*)0},{&p_990->g_374,&p_990->g_374,(void*)0},{&p_990->g_374,&p_990->g_374,(void*)0},{&p_990->g_374,&p_990->g_374,(void*)0},{&p_990->g_374,&p_990->g_374,(void*)0}},{{&p_990->g_374,&p_990->g_374,(void*)0},{&p_990->g_374,&p_990->g_374,(void*)0},{&p_990->g_374,&p_990->g_374,(void*)0},{&p_990->g_374,&p_990->g_374,(void*)0},{&p_990->g_374,&p_990->g_374,(void*)0},{&p_990->g_374,&p_990->g_374,(void*)0},{&p_990->g_374,&p_990->g_374,(void*)0},{&p_990->g_374,&p_990->g_374,(void*)0},{&p_990->g_374,&p_990->g_374,(void*)0}},{{&p_990->g_374,&p_990->g_374,(void*)0},{&p_990->g_374,&p_990->g_374,(void*)0},{&p_990->g_374,&p_990->g_374,(void*)0},{&p_990->g_374,&p_990->g_374,(void*)0},{&p_990->g_374,&p_990->g_374,(void*)0},{&p_990->g_374,&p_990->g_374,(void*)0},{&p_990->g_374,&p_990->g_374,(void*)0},{&p_990->g_374,&p_990->g_374,(void*)0},{&p_990->g_374,&p_990->g_374,(void*)0}},{{&p_990->g_374,&p_990->g_374,(void*)0},{&p_990->g_374,&p_990->g_374,(void*)0},{&p_990->g_374,&p_990->g_374,(void*)0},{&p_990->g_374,&p_990->g_374,(void*)0},{&p_990->g_374,&p_990->g_374,(void*)0},{&p_990->g_374,&p_990->g_374,(void*)0},{&p_990->g_374,&p_990->g_374,(void*)0},{&p_990->g_374,&p_990->g_374,(void*)0},{&p_990->g_374,&p_990->g_374,(void*)0}},{{&p_990->g_374,&p_990->g_374,(void*)0},{&p_990->g_374,&p_990->g_374,(void*)0},{&p_990->g_374,&p_990->g_374,(void*)0},{&p_990->g_374,&p_990->g_374,(void*)0},{&p_990->g_374,&p_990->g_374,(void*)0},{&p_990->g_374,&p_990->g_374,(void*)0},{&p_990->g_374,&p_990->g_374,(void*)0},{&p_990->g_374,&p_990->g_374,(void*)0},{&p_990->g_374,&p_990->g_374,(void*)0}}};
                    int8_t l_467[1][10][9] = {{{8L,0x45L,0x20L,0x00L,0x20L,5L,(-1L),2L,(-1L)},{8L,0x45L,0x20L,0x00L,0x20L,5L,(-1L),2L,(-1L)},{8L,0x45L,0x20L,0x00L,0x20L,5L,(-1L),2L,(-1L)},{8L,0x45L,0x20L,0x00L,0x20L,5L,(-1L),2L,(-1L)},{8L,0x45L,0x20L,0x00L,0x20L,5L,(-1L),2L,(-1L)},{8L,0x45L,0x20L,0x00L,0x20L,5L,(-1L),2L,(-1L)},{8L,0x45L,0x20L,0x00L,0x20L,5L,(-1L),2L,(-1L)},{8L,0x45L,0x20L,0x00L,0x20L,5L,(-1L),2L,(-1L)},{8L,0x45L,0x20L,0x00L,0x20L,5L,(-1L),2L,(-1L)},{8L,0x45L,0x20L,0x00L,0x20L,5L,(-1L),2L,(-1L)}}};
                    uint8_t l_471 = 0xB8L;
                    uint64_t *l_475 = &p_990->g_368;
                    VECTOR(uint64_t, 4) l_478 = (VECTOR(uint64_t, 4))(0xC6149DA5E4DBF167L, (VECTOR(uint64_t, 2))(0xC6149DA5E4DBF167L, 0x84D0D20AB1FE2B89L), 0x84D0D20AB1FE2B89L);
                    int64_t **l_492 = (void*)0;
                    int i, j, k;
                    l_471++;
                    l_470 |= (((((*l_475)++) >= ((VECTOR(uint64_t, 2))(rhadd(((VECTOR(uint64_t, 16))(l_478.zzxzzxyxwyxywywy)).s5c, ((VECTOR(uint64_t, 4))(0UL, (*l_385), 0x64A26364520E4127L, 1UL)).even))).odd) | (((*l_385) & p_990->g_5) ^ (&p_990->g_338 != &p_990->g_340[2][6]))) , (safe_rshift_func_uint16_t_u_u((((l_481 != (void*)0) | (safe_div_func_uint16_t_u_u(p_28, ((safe_add_func_int16_t_s_s(p_990->g_411.f2, 0x62A5L)) , GROUP_DIVERGE(0, 1))))) != p_28), (*l_385))));
                    for (p_990->g_411.f3 = (-10); (p_990->g_411.f3 < 21); p_990->g_411.f3++)
                    { /* block id: 203 */
                        uint64_t l_489[7][6][4] = {{{1UL,0UL,1UL,0xA39FBE9D128CC325L},{1UL,0UL,1UL,0xA39FBE9D128CC325L},{1UL,0UL,1UL,0xA39FBE9D128CC325L},{1UL,0UL,1UL,0xA39FBE9D128CC325L},{1UL,0UL,1UL,0xA39FBE9D128CC325L},{1UL,0UL,1UL,0xA39FBE9D128CC325L}},{{1UL,0UL,1UL,0xA39FBE9D128CC325L},{1UL,0UL,1UL,0xA39FBE9D128CC325L},{1UL,0UL,1UL,0xA39FBE9D128CC325L},{1UL,0UL,1UL,0xA39FBE9D128CC325L},{1UL,0UL,1UL,0xA39FBE9D128CC325L},{1UL,0UL,1UL,0xA39FBE9D128CC325L}},{{1UL,0UL,1UL,0xA39FBE9D128CC325L},{1UL,0UL,1UL,0xA39FBE9D128CC325L},{1UL,0UL,1UL,0xA39FBE9D128CC325L},{1UL,0UL,1UL,0xA39FBE9D128CC325L},{1UL,0UL,1UL,0xA39FBE9D128CC325L},{1UL,0UL,1UL,0xA39FBE9D128CC325L}},{{1UL,0UL,1UL,0xA39FBE9D128CC325L},{1UL,0UL,1UL,0xA39FBE9D128CC325L},{1UL,0UL,1UL,0xA39FBE9D128CC325L},{1UL,0UL,1UL,0xA39FBE9D128CC325L},{1UL,0UL,1UL,0xA39FBE9D128CC325L},{1UL,0UL,1UL,0xA39FBE9D128CC325L}},{{1UL,0UL,1UL,0xA39FBE9D128CC325L},{1UL,0UL,1UL,0xA39FBE9D128CC325L},{1UL,0UL,1UL,0xA39FBE9D128CC325L},{1UL,0UL,1UL,0xA39FBE9D128CC325L},{1UL,0UL,1UL,0xA39FBE9D128CC325L},{1UL,0UL,1UL,0xA39FBE9D128CC325L}},{{1UL,0UL,1UL,0xA39FBE9D128CC325L},{1UL,0UL,1UL,0xA39FBE9D128CC325L},{1UL,0UL,1UL,0xA39FBE9D128CC325L},{1UL,0UL,1UL,0xA39FBE9D128CC325L},{1UL,0UL,1UL,0xA39FBE9D128CC325L},{1UL,0UL,1UL,0xA39FBE9D128CC325L}},{{1UL,0UL,1UL,0xA39FBE9D128CC325L},{1UL,0UL,1UL,0xA39FBE9D128CC325L},{1UL,0UL,1UL,0xA39FBE9D128CC325L},{1UL,0UL,1UL,0xA39FBE9D128CC325L},{1UL,0UL,1UL,0xA39FBE9D128CC325L},{1UL,0UL,1UL,0xA39FBE9D128CC325L}}};
                        int i, j, k;
                        (*l_465) |= 0x5A121119L;
                        (*l_465) = p_27;
                        --l_489[5][3][1];
                        if (l_489[5][3][1])
                            continue;
                    }
                    l_492 = l_492;
                }
            }
        }
    }
    else
    { /* block id: 213 */
        int32_t *l_493 = &l_468;
        int32_t *l_494 = &p_990->g_374;
        int32_t *l_495 = &l_362;
        int32_t *l_496 = &l_469;
        int32_t *l_497 = (void*)0;
        int32_t *l_498 = &l_468;
        int32_t *l_499 = (void*)0;
        int32_t *l_500 = &l_362;
        int32_t *l_501 = &l_362;
        int32_t *l_502[5] = {&l_362,&l_362,&l_362,&l_362,&l_362};
        uint32_t l_509 = 1UL;
        int64_t l_516[3];
        int i;
        for (i = 0; i < 3; i++)
            l_516[i] = 0x489938D1CC87EE8AL;
        --l_509;
        l_502[1] = (*p_990->g_331);
        for (p_990->g_411.f1 = 0; (p_990->g_411.f1 != 15); p_990->g_411.f1++)
        { /* block id: 218 */
            (*l_501) = (-1L);
        }
        l_517[0]--;
    }
    l_504 = ((*l_520) ^= (-1L));
    return p_990->g_148;
}


/* ------------------------------------------ */
/* 
 * reads : p_990->g_318
 * writes:
 */
int8_t * func_29(int8_t * p_30, int64_t  p_31, uint8_t  p_32, int8_t * p_33, struct S3 * p_990)
{ /* block id: 125 */
    int32_t *l_320 = (void*)0;
    int32_t *l_321 = (void*)0;
    int32_t *l_322[1];
    uint16_t l_323 = 0xB3BEL;
    int i;
    for (i = 0; i < 1; i++)
        l_322[i] = (void*)0;
    l_323++;
    return p_990->g_318;
}


/* ------------------------------------------ */
/* 
 * reads : p_990->g_141 p_990->g_36 p_990->g_10 p_990->l_comm_values p_990->g_35 p_990->g_178 p_990->g_219 p_990->g_11 p_990->g_226 p_990->g_169 p_990->g_16 p_990->g_148 p_990->g_5
 * writes: p_990->g_178 p_990->g_141 p_990->g_36 p_990->g_169 p_990->g_238 p_990->g_10 p_990->g_140 p_990->g_11 p_990->g_35 p_990->g_289
 */
int32_t  func_42(int64_t  p_43, int8_t * p_44, int64_t * p_45, int64_t  p_46, struct S3 * p_990)
{ /* block id: 45 */
    VECTOR(uint32_t, 8) l_153 = (VECTOR(uint32_t, 8))(0xE4442883L, (VECTOR(uint32_t, 4))(0xE4442883L, (VECTOR(uint32_t, 2))(0xE4442883L, 0xD08F0301L), 0xD08F0301L), 0xD08F0301L, 0xE4442883L, 0xD08F0301L);
    int32_t *l_163[3];
    VECTOR(int32_t, 4) l_194 = (VECTOR(int32_t, 4))(0x3ABA1C15L, (VECTOR(int32_t, 2))(0x3ABA1C15L, 1L), 1L);
    union U2 *l_202[2][7][6] = {{{&p_990->g_205[4][4],&p_990->g_209,&p_990->g_205[4][4],&p_990->g_205[4][4],&p_990->g_209,&p_990->g_205[4][4]},{&p_990->g_205[4][4],&p_990->g_209,&p_990->g_205[4][4],&p_990->g_205[4][4],&p_990->g_209,&p_990->g_205[4][4]},{&p_990->g_205[4][4],&p_990->g_209,&p_990->g_205[4][4],&p_990->g_205[4][4],&p_990->g_209,&p_990->g_205[4][4]},{&p_990->g_205[4][4],&p_990->g_209,&p_990->g_205[4][4],&p_990->g_205[4][4],&p_990->g_209,&p_990->g_205[4][4]},{&p_990->g_205[4][4],&p_990->g_209,&p_990->g_205[4][4],&p_990->g_205[4][4],&p_990->g_209,&p_990->g_205[4][4]},{&p_990->g_205[4][4],&p_990->g_209,&p_990->g_205[4][4],&p_990->g_205[4][4],&p_990->g_209,&p_990->g_205[4][4]},{&p_990->g_205[4][4],&p_990->g_209,&p_990->g_205[4][4],&p_990->g_205[4][4],&p_990->g_209,&p_990->g_205[4][4]}},{{&p_990->g_205[4][4],&p_990->g_209,&p_990->g_205[4][4],&p_990->g_205[4][4],&p_990->g_209,&p_990->g_205[4][4]},{&p_990->g_205[4][4],&p_990->g_209,&p_990->g_205[4][4],&p_990->g_205[4][4],&p_990->g_209,&p_990->g_205[4][4]},{&p_990->g_205[4][4],&p_990->g_209,&p_990->g_205[4][4],&p_990->g_205[4][4],&p_990->g_209,&p_990->g_205[4][4]},{&p_990->g_205[4][4],&p_990->g_209,&p_990->g_205[4][4],&p_990->g_205[4][4],&p_990->g_209,&p_990->g_205[4][4]},{&p_990->g_205[4][4],&p_990->g_209,&p_990->g_205[4][4],&p_990->g_205[4][4],&p_990->g_209,&p_990->g_205[4][4]},{&p_990->g_205[4][4],&p_990->g_209,&p_990->g_205[4][4],&p_990->g_205[4][4],&p_990->g_209,&p_990->g_205[4][4]},{&p_990->g_205[4][4],&p_990->g_209,&p_990->g_205[4][4],&p_990->g_205[4][4],&p_990->g_209,&p_990->g_205[4][4]}}};
    int32_t l_220 = (-2L);
    int32_t l_257[5] = {1L,1L,1L,1L,1L};
    int8_t *l_276[1];
    uint32_t l_283 = 0xBCF031B4L;
    int8_t l_310 = 0x55L;
    int64_t l_313 = 1L;
    int32_t **l_314 = &l_163[2];
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_163[i] = (void*)0;
    for (i = 0; i < 1; i++)
        l_276[i] = (void*)0;
    for (p_46 = 0; (p_46 == 19); p_46++)
    { /* block id: 48 */
        int32_t **l_156 = &p_990->g_141;
        VECTOR(int16_t, 16) l_166 = (VECTOR(int16_t, 16))(0x7468L, (VECTOR(int16_t, 4))(0x7468L, (VECTOR(int16_t, 2))(0x7468L, 0x4B25L), 0x4B25L), 0x4B25L, 0x7468L, 0x4B25L, (VECTOR(int16_t, 2))(0x7468L, 0x4B25L), (VECTOR(int16_t, 2))(0x7468L, 0x4B25L), 0x7468L, 0x4B25L, 0x7468L, 0x4B25L);
        int8_t *l_167 = (void*)0;
        int8_t *l_168 = (void*)0;
        int8_t *l_170 = (void*)0;
        int8_t *l_171 = (void*)0;
        int8_t *l_172 = (void*)0;
        int8_t *l_173 = (void*)0;
        int32_t l_174 = (-1L);
        int32_t l_175 = 0x74D66F8EL;
        VECTOR(int16_t, 16) l_218 = (VECTOR(int16_t, 16))(0x0C44L, (VECTOR(int16_t, 4))(0x0C44L, (VECTOR(int16_t, 2))(0x0C44L, 0x5AEDL), 0x5AEDL), 0x5AEDL, 0x0C44L, 0x5AEDL, (VECTOR(int16_t, 2))(0x0C44L, 0x5AEDL), (VECTOR(int16_t, 2))(0x0C44L, 0x5AEDL), 0x0C44L, 0x5AEDL, 0x0C44L, 0x5AEDL);
        VECTOR(int16_t, 4) l_241 = (VECTOR(int16_t, 4))(0x3EBFL, (VECTOR(int16_t, 2))(0x3EBFL, 0x7ECDL), 0x7ECDL);
        int32_t l_280 = (-1L);
        int64_t *l_304 = &p_990->g_146;
        int i;
        if (((safe_lshift_func_int8_t_s_s(((l_153.s6 <= (safe_lshift_func_int8_t_s_s(((void*)0 == l_156), 7))) <= p_46), (safe_mod_func_int32_t_s_s((0xDCL && (safe_sub_func_uint32_t_u_u(l_153.s1, (l_175 = ((safe_mod_func_int8_t_s_s((((l_174 &= ((l_163[0] != p_990->g_141) && (safe_lshift_func_int8_t_s_u((((((VECTOR(int16_t, 4))(((VECTOR(int16_t, 16))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 16),((VECTOR(int16_t, 2))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(1L, (-4L))), 0x5582L, 0x6D28L)).hi)).yxxxxxxyxxyxxyyy, ((VECTOR(int16_t, 16))(l_166.scbc684671b80dfbf)), ((VECTOR(int16_t, 4))(0x16C8L, ((VECTOR(int16_t, 2))(0x0D45L)), (-1L))).wzwyzyxzyxzxzxwy))).sd119)).w <= p_43) , 0x4C56DE61L) , (-10L)), FAKE_DIVERGE(p_990->group_0_offset, get_group_id(0), 10))))) == p_990->g_36.x) > 0UL), p_990->g_10.s6)) != 4294967293UL))))), 7UL)))) != p_46))
        { /* block id: 51 */
            union U2 *l_176 = &p_990->g_177[1][2][1];
            union U2 **l_179 = &l_176;
            int32_t *l_193 = (void*)0;
            (*l_179) = (p_990->g_178[5] = l_176);
            for (l_174 = 0; (l_174 != 19); l_174 = safe_add_func_int32_t_s_s(l_174, 3))
            { /* block id: 56 */
                if ((atomic_inc(&p_990->l_atomic_input[48]) == 0))
                { /* block id: 58 */
                    int32_t l_182[4][9] = {{0x2DBF15BDL,0x55A96B93L,2L,0x5DDA83CDL,7L,0x2DBF15BDL,0x5DDA83CDL,(-1L),0x5DDA83CDL},{0x2DBF15BDL,0x55A96B93L,2L,0x5DDA83CDL,7L,0x2DBF15BDL,0x5DDA83CDL,(-1L),0x5DDA83CDL},{0x2DBF15BDL,0x55A96B93L,2L,0x5DDA83CDL,7L,0x2DBF15BDL,0x5DDA83CDL,(-1L),0x5DDA83CDL},{0x2DBF15BDL,0x55A96B93L,2L,0x5DDA83CDL,7L,0x2DBF15BDL,0x5DDA83CDL,(-1L),0x5DDA83CDL}};
                    int i, j;
                    for (l_182[1][5] = 0; (l_182[1][5] >= (-13)); l_182[1][5] = safe_sub_func_uint64_t_u_u(l_182[1][5], 5))
                    { /* block id: 61 */
                        int32_t l_185 = 0x2DC09E04L;
                        int32_t l_187 = 0x30513A6BL;
                        int32_t *l_186[3][5][5] = {{{&l_187,&l_187,&l_187,&l_187,&l_187},{&l_187,&l_187,&l_187,&l_187,&l_187},{&l_187,&l_187,&l_187,&l_187,&l_187},{&l_187,&l_187,&l_187,&l_187,&l_187},{&l_187,&l_187,&l_187,&l_187,&l_187}},{{&l_187,&l_187,&l_187,&l_187,&l_187},{&l_187,&l_187,&l_187,&l_187,&l_187},{&l_187,&l_187,&l_187,&l_187,&l_187},{&l_187,&l_187,&l_187,&l_187,&l_187},{&l_187,&l_187,&l_187,&l_187,&l_187}},{{&l_187,&l_187,&l_187,&l_187,&l_187},{&l_187,&l_187,&l_187,&l_187,&l_187},{&l_187,&l_187,&l_187,&l_187,&l_187},{&l_187,&l_187,&l_187,&l_187,&l_187},{&l_187,&l_187,&l_187,&l_187,&l_187}}};
                        int32_t *l_188 = &l_187;
                        uint16_t l_189 = 1UL;
                        int32_t *l_192[1][8][10] = {{{&l_187,(void*)0,&l_187,(void*)0,&l_187,&l_187,(void*)0,(void*)0,&l_187,&l_187},{&l_187,(void*)0,&l_187,(void*)0,&l_187,&l_187,(void*)0,(void*)0,&l_187,&l_187},{&l_187,(void*)0,&l_187,(void*)0,&l_187,&l_187,(void*)0,(void*)0,&l_187,&l_187},{&l_187,(void*)0,&l_187,(void*)0,&l_187,&l_187,(void*)0,(void*)0,&l_187,&l_187},{&l_187,(void*)0,&l_187,(void*)0,&l_187,&l_187,(void*)0,(void*)0,&l_187,&l_187},{&l_187,(void*)0,&l_187,(void*)0,&l_187,&l_187,(void*)0,(void*)0,&l_187,&l_187},{&l_187,(void*)0,&l_187,(void*)0,&l_187,&l_187,(void*)0,(void*)0,&l_187,&l_187},{&l_187,(void*)0,&l_187,(void*)0,&l_187,&l_187,(void*)0,(void*)0,&l_187,&l_187}}};
                        int i, j, k;
                        l_188 = (l_186[2][0][3] = ((l_185 , 1UL) , (void*)0));
                        --l_189;
                        l_192[0][7][8] = (void*)0;
                    }
                    unsigned int result = 0;
                    int l_182_i0, l_182_i1;
                    for (l_182_i0 = 0; l_182_i0 < 4; l_182_i0++) {
                        for (l_182_i1 = 0; l_182_i1 < 9; l_182_i1++) {
                            result += l_182[l_182_i0][l_182_i1];
                        }
                    }
                    atomic_add(&p_990->l_special_values[48], result);
                }
                else
                { /* block id: 67 */
                    (1 + 1);
                }
                if (p_43)
                    break;
                l_175 ^= (4L == p_990->l_comm_values[(safe_mod_func_uint32_t_u_u(p_990->tid, 35))]);
            }
            (*l_156) = l_193;
            return p_990->g_10.s6;
        }
        else
        { /* block id: 75 */
            VECTOR(int8_t, 16) l_195 = (VECTOR(int8_t, 16))(0x07L, (VECTOR(int8_t, 4))(0x07L, (VECTOR(int8_t, 2))(0x07L, 1L), 1L), 1L, 0x07L, 1L, (VECTOR(int8_t, 2))(0x07L, 1L), (VECTOR(int8_t, 2))(0x07L, 1L), 0x07L, 1L, 0x07L, 1L);
            int i;
            p_990->g_36.y = 0x33B7F865L;
            l_195.s5 = ((VECTOR(int32_t, 8))(l_194.yzzwwzzy)).s1;
        }
        for (l_174 = 0; (l_174 < 14); l_174 = safe_add_func_int8_t_s_s(l_174, 7))
        { /* block id: 81 */
            union U2 **l_201 = &p_990->g_178[5];
            int32_t l_215 = 0x3AB003C8L;
            int32_t l_221 = 7L;
            l_221 = ((safe_div_func_int8_t_s_s(((((((+(p_990->g_35.sa , ((!((p_990->g_169.sf = (0x4F4BDD3EL | p_46)) < (safe_unary_minus_func_uint16_t_u(((((*l_201) = p_990->g_178[4]) != l_202[1][0][3]) <= ((safe_add_func_uint8_t_u_u((l_215 = p_43), 0xE9L)) & (safe_add_func_int16_t_s_s(((VECTOR(int16_t, 4))(min(((VECTOR(int16_t, 2))(min(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 16))(l_218.s8269c4503094e3f1)).s821a)).even, ((VECTOR(int16_t, 16))(sub_sat(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(p_990->g_219.wzyywzzw)).s4610174043774773)), ((VECTOR(int16_t, 2))(0x04DAL, 0L)).yxyxxyyxyyyyxxyy))).sb9))).yxyx, (int16_t)p_990->g_11.w))).y, (p_46 > p_990->g_219.w))))))))) & 1L))) != p_46) ^ 0x697D797E412633B6L) | 0xD4D813FCL) >= l_220) || p_990->g_11.y), p_990->g_35.s3)) <= p_43);
            if (p_43)
                continue;
            if (p_990->g_11.w)
                continue;
        }
        for (l_174 = 0; (l_174 == (-30)); --l_174)
        { /* block id: 91 */
            uint8_t *l_237 = &p_990->g_238;
            VECTOR(int64_t, 8) l_244 = (VECTOR(int64_t, 8))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 0x10DB2C35B8B97E36L), 0x10DB2C35B8B97E36L), 0x10DB2C35B8B97E36L, (-1L), 0x10DB2C35B8B97E36L);
            int64_t *l_255 = &p_990->g_146;
            uint16_t *l_256[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            int32_t l_262 = 1L;
            VECTOR(uint8_t, 2) l_284 = (VECTOR(uint8_t, 2))(0UL, 0x09L);
            int64_t **l_307 = (void*)0;
            int64_t ***l_306 = &l_307;
            int i;
            l_175 = (((safe_div_func_int32_t_s_s(((VECTOR(int32_t, 2))(p_990->g_226.yy)).hi, p_990->g_10.s6)) , (safe_lshift_func_uint16_t_u_u((!(safe_div_func_int32_t_s_s(((((safe_sub_func_int16_t_s_s((safe_mul_func_int8_t_s_s(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))(max(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(p_990->g_169.s7, (safe_add_func_uint16_t_u_u((((((*l_237) = p_990->g_11.z) == ((safe_sub_func_uint32_t_u_u(((((VECTOR(int16_t, 8))(l_241.xwzwxxzy)).s3 >= ((safe_add_func_int64_t_s_s(((VECTOR(int64_t, 8))(safe_clamp_func(VECTOR(int64_t, 8),int64_t,((VECTOR(int64_t, 8))(l_244.s03242407)), (int64_t)(safe_sub_func_uint64_t_u_u((1UL < (p_990->g_10.s1 = (safe_mul_func_int16_t_s_s((safe_add_func_uint64_t_u_u(((safe_sub_func_int16_t_s_s((safe_mod_func_int8_t_s_s(p_990->l_comm_values[(safe_mod_func_uint32_t_u_u(p_990->tid, 35))], (2UL || ((((&p_43 == l_255) == (0L || 0x6E2A7A38L)) && l_174) , p_990->g_10.s5)))), GROUP_DIVERGE(1, 1))) , p_990->l_comm_values[(safe_mod_func_uint32_t_u_u(p_990->tid, 35))]), 0x966705826A11987DL)), l_244.s7)))), 0UL)), (int64_t)0x459CDDAF78F503F6L))).s0, 0x728B8A9CD988E820L)) ^ p_43)) , 4294967287UL), p_43)) , p_990->g_219.x)) | p_46) && 1L), p_46)), (-10L), (-1L))).zxxzxxzw)).s7730320231517360, ((VECTOR(int8_t, 16))(0x62L))))).even)).s3, 1UL)), l_244.s4)) < p_46) , 0x0CA6L) == (-5L)), l_257[3]))), 9))) , 0x27EC2377L);
            for (l_175 = (-8); (l_175 >= (-1)); l_175 = safe_add_func_uint8_t_u_u(l_175, 1))
            { /* block id: 97 */
                int32_t l_279 = 0x15847E23L;
                uint8_t **l_285 = &l_237;
                uint32_t *l_290[10][4] = {{(void*)0,&p_990->g_291[0][6],&p_990->g_291[0][1],(void*)0},{(void*)0,&p_990->g_291[0][6],&p_990->g_291[0][1],(void*)0},{(void*)0,&p_990->g_291[0][6],&p_990->g_291[0][1],(void*)0},{(void*)0,&p_990->g_291[0][6],&p_990->g_291[0][1],(void*)0},{(void*)0,&p_990->g_291[0][6],&p_990->g_291[0][1],(void*)0},{(void*)0,&p_990->g_291[0][6],&p_990->g_291[0][1],(void*)0},{(void*)0,&p_990->g_291[0][6],&p_990->g_291[0][1],(void*)0},{(void*)0,&p_990->g_291[0][6],&p_990->g_291[0][1],(void*)0},{(void*)0,&p_990->g_291[0][6],&p_990->g_291[0][1],(void*)0},{(void*)0,&p_990->g_291[0][6],&p_990->g_291[0][1],(void*)0}};
                int64_t *l_294 = (void*)0;
                int64_t *l_295 = (void*)0;
                int64_t *l_296[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                uint32_t l_303 = 0x127D6F1AL;
                int32_t **l_305 = (void*)0;
                int i, j;
                for (p_990->g_140 = 0; (p_990->g_140 > 48); p_990->g_140 = safe_add_func_int16_t_s_s(p_990->g_140, 1))
                { /* block id: 100 */
                    l_262 = p_46;
                    for (l_262 = 0; (l_262 <= (-9)); l_262--)
                    { /* block id: 104 */
                        int8_t **l_273 = &l_168;
                        (*l_156) = (*l_156);
                        l_280 = (safe_lshift_func_int8_t_s_u((safe_mod_func_int64_t_s_s((p_44 != ((safe_add_func_int64_t_s_s((safe_rshift_func_int8_t_s_u((((*l_273) = (void*)0) == p_44), 3)), (p_990->g_169.sf <= (++p_990->g_11.w)))) , l_276[0])), (safe_add_func_uint8_t_u_u((p_990->g_10.s5 != (!8L)), l_279)))), ((0x52A6L < p_990->g_16.s1) && FAKE_DIVERGE(p_990->local_0_offset, get_local_id(0), 10))));
                    }
                }
                p_990->g_35.s4 = (safe_sub_func_uint8_t_u_u(l_283, ((l_279 != (((VECTOR(uint8_t, 2))(l_284.xx)).odd ^ ((((*l_285) = (void*)0) == &p_990->g_238) | ((((void*)0 != p_990->g_148) == (safe_sub_func_uint16_t_u_u(p_990->g_219.z, (((VECTOR(int64_t, 2))(mul_hi(((VECTOR(int64_t, 2))(mad_sat(((VECTOR(int64_t, 16))(hadd(((VECTOR(int64_t, 2))((-10L), 0x1F650A6B046790FAL)).yxyxxyyyyyxxxyyy, ((VECTOR(int64_t, 8))(p_990->g_288.sdc91d79c)).s7361742452010562))).s18, ((VECTOR(int64_t, 16))(p_990->g_289.s7066735670472441)).sf7, ((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))(mad_sat(((VECTOR(int64_t, 4))(max(((VECTOR(int64_t, 4))(((((p_990->g_291[0][6] = 3UL) >= 0x1DEAADF8L) < l_279) > 0L), ((VECTOR(int64_t, 2))(0x55128AA24266508CL)), 0x0B5E746004359408L)), (int64_t)p_990->g_219.w))), ((VECTOR(int64_t, 4))(0x4815E9DAD21F84CAL)), ((VECTOR(int64_t, 4))(1L))))).xxxxwzzzyyzzyxwz)).s4f))), ((VECTOR(int64_t, 2))(0x63DADC4BB3CEF0DFL))))).even ^ l_284.y)))) || p_46)))) && 0L)));
                l_280 = (safe_lshift_func_uint8_t_u_u((p_43 & ((p_990->g_289.s0 = (+l_279)) | 0x5871EF909DA0BEA7L)), ((0x42L || (safe_sub_func_uint16_t_u_u(GROUP_DIVERGE(2, 1), p_990->g_5))) < ((safe_lshift_func_uint8_t_u_s((safe_add_func_int32_t_s_s(l_303, 2L)), 3)) | ((l_304 != &p_990->g_146) || p_46)))));
                l_280 = (0xD0L & (+((l_305 != (l_244.s4 , &p_990->g_141)) , 1L)));
            }
            (*l_306) = &p_45;
        }
    }
    l_313 = (safe_lshift_func_uint16_t_u_s(l_310, (safe_rshift_func_uint8_t_u_s(0x9AL, 6))));
    (*l_314) = &l_257[0];
    return p_43;
}


/* ------------------------------------------ */
/* 
 * reads : p_990->g_141 p_990->g_16
 * writes: p_990->g_141
 */
int64_t  func_47(int64_t * p_48, uint32_t  p_49, struct S3 * p_990)
{ /* block id: 41 */
    int32_t **l_144 = &p_990->g_141;
    (*l_144) = p_990->g_141;
    return p_990->g_16.s1;
}


/* ------------------------------------------ */
/* 
 * reads : p_990->g_10 p_990->g_36 p_990->g_35 p_990->g_5 p_990->g_16 p_990->g_11 p_990->g_141
 * writes: p_990->g_140 p_990->g_141
 */
int64_t * func_50(uint32_t  p_51, struct S3 * p_990)
{ /* block id: 7 */
    VECTOR(uint32_t, 4) l_52 = (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 1UL), 1UL);
    uint16_t l_77 = 65535UL;
    int32_t *l_128[3][6];
    int32_t l_138 = (-5L);
    uint64_t *l_139 = &p_990->g_140;
    int32_t **l_142 = &l_128[0][1];
    int32_t **l_143 = &p_990->g_141;
    int i, j;
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 6; j++)
            l_128[i][j] = (void*)0;
    }
    (*l_143) = ((*l_142) = (((*l_139) = (((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 8))(sub_sat(((VECTOR(uint32_t, 2))(l_52.xx)).yxxxyxxx, ((VECTOR(uint32_t, 16))((((safe_unary_minus_func_int8_t_s((-1L))) ^ (((~(safe_mul_func_int16_t_s_s(((VECTOR(int16_t, 4))(p_51, (((safe_unary_minus_func_uint8_t_u(((9UL >= p_51) >= p_990->g_10.s4))) != (l_52.x & func_57((+(safe_mul_func_uint8_t_u_u(p_990->g_36.z, (func_65(func_67((safe_mod_func_uint64_t_u_u(((safe_sub_func_int32_t_s_s(p_51, 4294967295UL)) != l_52.x), l_77)), p_51, l_77, l_52.x, p_51, p_990), p_990) && 0L)))), l_77, l_128[2][2], p_51, p_990->g_35.s5, p_990))) >= p_990->g_36.y), 0x2784L, 0x7444L)).z, 0x4A09L))) > l_138) > p_51)) | p_51), 0x11D26DFEL, 0x6F4B36ECL, 0x39B0881CL, p_990->g_16.s5, p_990->g_11.z, 1UL, p_990->g_11.z, ((VECTOR(uint32_t, 4))(0x4EAA763EL)), 0x5459EB2AL, 9UL, 4294967295UL, 0xD6A78B01L)).lo))))).s1 < p_990->g_10.s3)) , p_990->g_141));
    return l_139;
}


/* ------------------------------------------ */
/* 
 * reads : p_990->g_5
 * writes:
 */
int16_t  func_57(int64_t  p_58, int64_t  p_59, int32_t * p_60, uint32_t  p_61, int32_t  p_62, struct S3 * p_990)
{ /* block id: 29 */
    int32_t *l_131 = (void*)0;
    int32_t *l_132 = (void*)0;
    int32_t *l_133[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int16_t l_134 = 7L;
    uint64_t l_135[9] = {0x382D2773B058BA22L,0x2F3D0092667326E3L,0x382D2773B058BA22L,0x382D2773B058BA22L,0x2F3D0092667326E3L,0x382D2773B058BA22L,0x382D2773B058BA22L,0x2F3D0092667326E3L,0x382D2773B058BA22L};
    int i;
    for (p_62 = 0; (p_62 > (-6)); p_62 = safe_sub_func_uint32_t_u_u(p_62, 7))
    { /* block id: 32 */
        return p_61;
    }
    l_135[5]++;
    return p_990->g_5;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t  func_65(int64_t * p_66, struct S3 * p_990)
{ /* block id: 25 */
    int32_t *l_125[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int32_t **l_126 = &l_125[5];
    int16_t l_127 = 0x2EE4L;
    int i;
    (*l_126) = l_125[3];
    (*l_126) = (*l_126);
    return l_127;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int64_t * func_67(uint32_t  p_68, int32_t  p_69, int8_t  p_70, uint16_t  p_71, uint16_t  p_72, struct S3 * p_990)
{ /* block id: 8 */
    int32_t *l_78 = (void*)0;
    int32_t *l_79[4][5] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
    uint8_t l_80 = 0x11L;
    int16_t l_93 = 0x1067L;
    uint16_t l_95 = 0x734CL;
    int64_t *l_124 = (void*)0;
    int i, j;
    l_80++;
    for (p_71 = 0; (p_71 < 35); p_71 = safe_add_func_uint32_t_u_u(p_71, 9))
    { /* block id: 12 */
        int32_t *l_85 = (void*)0;
        int32_t **l_86 = &l_79[0][4];
        int32_t l_87 = 0x3B0BE523L;
        int32_t l_88 = 0x7EFE7B18L;
        int32_t l_89 = (-1L);
        int32_t l_90 = 0x4661B5B5L;
        int32_t l_91 = 0x56A3EEC5L;
        int32_t l_92[3][7][5] = {{{0x584D8666L,0x745203A9L,0x584D8666L,0x584D8666L,0x745203A9L},{0x584D8666L,0x745203A9L,0x584D8666L,0x584D8666L,0x745203A9L},{0x584D8666L,0x745203A9L,0x584D8666L,0x584D8666L,0x745203A9L},{0x584D8666L,0x745203A9L,0x584D8666L,0x584D8666L,0x745203A9L},{0x584D8666L,0x745203A9L,0x584D8666L,0x584D8666L,0x745203A9L},{0x584D8666L,0x745203A9L,0x584D8666L,0x584D8666L,0x745203A9L},{0x584D8666L,0x745203A9L,0x584D8666L,0x584D8666L,0x745203A9L}},{{0x584D8666L,0x745203A9L,0x584D8666L,0x584D8666L,0x745203A9L},{0x584D8666L,0x745203A9L,0x584D8666L,0x584D8666L,0x745203A9L},{0x584D8666L,0x745203A9L,0x584D8666L,0x584D8666L,0x745203A9L},{0x584D8666L,0x745203A9L,0x584D8666L,0x584D8666L,0x745203A9L},{0x584D8666L,0x745203A9L,0x584D8666L,0x584D8666L,0x745203A9L},{0x584D8666L,0x745203A9L,0x584D8666L,0x584D8666L,0x745203A9L},{0x584D8666L,0x745203A9L,0x584D8666L,0x584D8666L,0x745203A9L}},{{0x584D8666L,0x745203A9L,0x584D8666L,0x584D8666L,0x745203A9L},{0x584D8666L,0x745203A9L,0x584D8666L,0x584D8666L,0x745203A9L},{0x584D8666L,0x745203A9L,0x584D8666L,0x584D8666L,0x745203A9L},{0x584D8666L,0x745203A9L,0x584D8666L,0x584D8666L,0x745203A9L},{0x584D8666L,0x745203A9L,0x584D8666L,0x584D8666L,0x745203A9L},{0x584D8666L,0x745203A9L,0x584D8666L,0x584D8666L,0x745203A9L},{0x584D8666L,0x745203A9L,0x584D8666L,0x584D8666L,0x745203A9L}}};
        int16_t l_94 = 0x116CL;
        int i, j, k;
        (*l_86) = l_85;
        --l_95;
    }
    if ((atomic_inc(&p_990->l_atomic_input[9]) == 6))
    { /* block id: 17 */
        VECTOR(int32_t, 8) l_98 = (VECTOR(int32_t, 8))(0x653AA939L, (VECTOR(int32_t, 4))(0x653AA939L, (VECTOR(int32_t, 2))(0x653AA939L, 0x2E8AAE05L), 0x2E8AAE05L), 0x2E8AAE05L, 0x653AA939L, 0x2E8AAE05L);
        VECTOR(int32_t, 8) l_99 = (VECTOR(int32_t, 8))(0x12C0405AL, (VECTOR(int32_t, 4))(0x12C0405AL, (VECTOR(int32_t, 2))(0x12C0405AL, 0x0A6424E8L), 0x0A6424E8L), 0x0A6424E8L, 0x12C0405AL, 0x0A6424E8L);
        VECTOR(int32_t, 16) l_100 = (VECTOR(int32_t, 16))((-6L), (VECTOR(int32_t, 4))((-6L), (VECTOR(int32_t, 2))((-6L), 1L), 1L), 1L, (-6L), 1L, (VECTOR(int32_t, 2))((-6L), 1L), (VECTOR(int32_t, 2))((-6L), 1L), (-6L), 1L, (-6L), 1L);
        uint32_t l_101 = 0UL;
        VECTOR(int32_t, 16) l_102 = (VECTOR(int32_t, 16))(0x33C59A75L, (VECTOR(int32_t, 4))(0x33C59A75L, (VECTOR(int32_t, 2))(0x33C59A75L, 0x7574C5A9L), 0x7574C5A9L), 0x7574C5A9L, 0x33C59A75L, 0x7574C5A9L, (VECTOR(int32_t, 2))(0x33C59A75L, 0x7574C5A9L), (VECTOR(int32_t, 2))(0x33C59A75L, 0x7574C5A9L), 0x33C59A75L, 0x7574C5A9L, 0x33C59A75L, 0x7574C5A9L);
        uint64_t l_103 = 0x7B35E0E5596EFE92L;
        int32_t l_104 = 0x59BD7285L;
        VECTOR(int32_t, 4) l_105 = (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, (-6L)), (-6L));
        int32_t l_106 = 8L;
        VECTOR(int32_t, 8) l_107 = (VECTOR(int32_t, 8))(0x4D0575CFL, (VECTOR(int32_t, 4))(0x4D0575CFL, (VECTOR(int32_t, 2))(0x4D0575CFL, 0x327B7FBDL), 0x327B7FBDL), 0x327B7FBDL, 0x4D0575CFL, 0x327B7FBDL);
        VECTOR(int32_t, 16) l_108 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x5AB0F429L), 0x5AB0F429L), 0x5AB0F429L, (-1L), 0x5AB0F429L, (VECTOR(int32_t, 2))((-1L), 0x5AB0F429L), (VECTOR(int32_t, 2))((-1L), 0x5AB0F429L), (-1L), 0x5AB0F429L, (-1L), 0x5AB0F429L);
        VECTOR(int32_t, 8) l_109 = (VECTOR(int32_t, 8))(0x32ECB4BFL, (VECTOR(int32_t, 4))(0x32ECB4BFL, (VECTOR(int32_t, 2))(0x32ECB4BFL, 0x3DD6524CL), 0x3DD6524CL), 0x3DD6524CL, 0x32ECB4BFL, 0x3DD6524CL);
        uint32_t l_110 = 4294967293UL;
        VECTOR(int32_t, 16) l_111 = (VECTOR(int32_t, 16))(0x00338EFFL, (VECTOR(int32_t, 4))(0x00338EFFL, (VECTOR(int32_t, 2))(0x00338EFFL, (-3L)), (-3L)), (-3L), 0x00338EFFL, (-3L), (VECTOR(int32_t, 2))(0x00338EFFL, (-3L)), (VECTOR(int32_t, 2))(0x00338EFFL, (-3L)), 0x00338EFFL, (-3L), 0x00338EFFL, (-3L));
        VECTOR(int32_t, 4) l_112 = (VECTOR(int32_t, 4))(0x16142324L, (VECTOR(int32_t, 2))(0x16142324L, 1L), 1L);
        VECTOR(int32_t, 8) l_113 = (VECTOR(int32_t, 8))(0x400A57CCL, (VECTOR(int32_t, 4))(0x400A57CCL, (VECTOR(int32_t, 2))(0x400A57CCL, (-1L)), (-1L)), (-1L), 0x400A57CCL, (-1L));
        int8_t l_114[2];
        uint64_t l_115 = 2UL;
        int64_t l_116 = 0x305CABCBA91106ACL;
        uint32_t l_117 = 1UL;
        uint32_t l_118 = 0xA6587CEBL;
        VECTOR(int16_t, 8) l_119 = (VECTOR(int16_t, 8))(0x27BCL, (VECTOR(int16_t, 4))(0x27BCL, (VECTOR(int16_t, 2))(0x27BCL, 0x3D2CL), 0x3D2CL), 0x3D2CL, 0x27BCL, 0x3D2CL);
        uint32_t l_120 = 4294967292UL;
        uint32_t l_121 = 0xAC706118L;
        int i;
        for (i = 0; i < 2; i++)
            l_114[i] = (-4L);
        l_120 = ((VECTOR(int32_t, 4))(max(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(mad_sat(((VECTOR(int32_t, 2))(l_98.s07)).xyxx, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(l_99.s40)), 0x44100379L, (-5L))), ((VECTOR(int32_t, 2))(l_100.sbe)).odd, l_101, (-9L), 0x2292D23BL)).hi, ((VECTOR(int32_t, 4))(l_102.s4563))))), ((VECTOR(int32_t, 2))(0x07BE1BD8L, 0x73A3E21FL)), (l_104 &= l_103), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(rhadd(((VECTOR(int32_t, 2))(0x7DEE5F14L, 1L)).xxxxyxyx, ((VECTOR(int32_t, 4))(safe_clamp_func(VECTOR(int32_t, 4),int32_t,((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(mad_sat(((VECTOR(int32_t, 2))((-10L), 0x14635291L)).xxyyxyyxyyxyxxyx, ((VECTOR(int32_t, 2))(sub_sat(((VECTOR(int32_t, 8))(safe_clamp_func(VECTOR(int32_t, 8),int32_t,((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))((-8L), (-8L))), 0x393044EDL, ((VECTOR(int32_t, 2))(l_105.yw)), 0x6AE705E6L, 0L, 1L)), (int32_t)0x716A15F5L, (int32_t)((VECTOR(int32_t, 4))(0x4801A31DL, ((VECTOR(int32_t, 2))(1L, 0L)), (-6L))).z))).s75, ((VECTOR(int32_t, 4))(1L, (l_106 , 6L), 0L, 0x696CBC8BL)).hi))).yyyyxyxxyyxxxxyx, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(0x79FC7206L, (-9L))), 0x3DE70362L, 0x2F547D1AL)), 1L, 0x5CB3EC86L, 0x5B86E312L, 0x5ED4DF38L)).s3244050763047764))).s1292)), ((VECTOR(int32_t, 8))(mad_sat(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(l_107.s40625460)).s4, ((VECTOR(int32_t, 2))(clz(((VECTOR(int32_t, 2))(l_108.s65))))), 0x132FBB45L)).yyzzxzxz, ((VECTOR(int32_t, 4))(safe_clamp_func(VECTOR(int32_t, 4),int32_t,((VECTOR(int32_t, 16))(l_109.s0035277273522324)).s362d, (int32_t)l_110, (int32_t)0x7E790059L))).zwwxxwxy, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(l_111.sc1)), 0x33BDE5FCL, ((VECTOR(int32_t, 16))(l_112.zyyxyzzxzwyyzyww)).s6, ((VECTOR(int32_t, 2))(sub_sat(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(l_113.s5366)).hi)), ((VECTOR(int32_t, 8))(mad_sat(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(0x121B7D6BL, 0x642B31CCL, 0L, (-1L))).z, l_114[1], 2L, 0x69B74624L, 1L, 0x29ED1989L, (-4L), 7L)), ((VECTOR(int32_t, 8))(1L)), ((VECTOR(int32_t, 8))(0L))))).s02))), l_115, ((VECTOR(int32_t, 4))(0x38483FBCL)), 4L, 0x73BD0473L, (-8L), 0x59BBAF6BL, 0L)).hi))).odd, ((VECTOR(int32_t, 4))(0L))))).xwxzwxzxzxxxzwwz)).s7776)), (int32_t)(-4L), (int32_t)l_116))).zxzwxzzw))))).s10)), 8L, l_117, 0x76220615L, l_118, 3L, 0x78E770A4L, (-1L))).sdc11, (int32_t)l_119.s5))).z;
        l_121--;
        unsigned int result = 0;
        result += l_98.s7;
        result += l_98.s6;
        result += l_98.s5;
        result += l_98.s4;
        result += l_98.s3;
        result += l_98.s2;
        result += l_98.s1;
        result += l_98.s0;
        result += l_99.s7;
        result += l_99.s6;
        result += l_99.s5;
        result += l_99.s4;
        result += l_99.s3;
        result += l_99.s2;
        result += l_99.s1;
        result += l_99.s0;
        result += l_100.sf;
        result += l_100.se;
        result += l_100.sd;
        result += l_100.sc;
        result += l_100.sb;
        result += l_100.sa;
        result += l_100.s9;
        result += l_100.s8;
        result += l_100.s7;
        result += l_100.s6;
        result += l_100.s5;
        result += l_100.s4;
        result += l_100.s3;
        result += l_100.s2;
        result += l_100.s1;
        result += l_100.s0;
        result += l_101;
        result += l_102.sf;
        result += l_102.se;
        result += l_102.sd;
        result += l_102.sc;
        result += l_102.sb;
        result += l_102.sa;
        result += l_102.s9;
        result += l_102.s8;
        result += l_102.s7;
        result += l_102.s6;
        result += l_102.s5;
        result += l_102.s4;
        result += l_102.s3;
        result += l_102.s2;
        result += l_102.s1;
        result += l_102.s0;
        result += l_103;
        result += l_104;
        result += l_105.w;
        result += l_105.z;
        result += l_105.y;
        result += l_105.x;
        result += l_106;
        result += l_107.s7;
        result += l_107.s6;
        result += l_107.s5;
        result += l_107.s4;
        result += l_107.s3;
        result += l_107.s2;
        result += l_107.s1;
        result += l_107.s0;
        result += l_108.sf;
        result += l_108.se;
        result += l_108.sd;
        result += l_108.sc;
        result += l_108.sb;
        result += l_108.sa;
        result += l_108.s9;
        result += l_108.s8;
        result += l_108.s7;
        result += l_108.s6;
        result += l_108.s5;
        result += l_108.s4;
        result += l_108.s3;
        result += l_108.s2;
        result += l_108.s1;
        result += l_108.s0;
        result += l_109.s7;
        result += l_109.s6;
        result += l_109.s5;
        result += l_109.s4;
        result += l_109.s3;
        result += l_109.s2;
        result += l_109.s1;
        result += l_109.s0;
        result += l_110;
        result += l_111.sf;
        result += l_111.se;
        result += l_111.sd;
        result += l_111.sc;
        result += l_111.sb;
        result += l_111.sa;
        result += l_111.s9;
        result += l_111.s8;
        result += l_111.s7;
        result += l_111.s6;
        result += l_111.s5;
        result += l_111.s4;
        result += l_111.s3;
        result += l_111.s2;
        result += l_111.s1;
        result += l_111.s0;
        result += l_112.w;
        result += l_112.z;
        result += l_112.y;
        result += l_112.x;
        result += l_113.s7;
        result += l_113.s6;
        result += l_113.s5;
        result += l_113.s4;
        result += l_113.s3;
        result += l_113.s2;
        result += l_113.s1;
        result += l_113.s0;
        int l_114_i0;
        for (l_114_i0 = 0; l_114_i0 < 2; l_114_i0++) {
            result += l_114[l_114_i0];
        }
        result += l_115;
        result += l_116;
        result += l_117;
        result += l_118;
        result += l_119.s7;
        result += l_119.s6;
        result += l_119.s5;
        result += l_119.s4;
        result += l_119.s3;
        result += l_119.s2;
        result += l_119.s1;
        result += l_119.s0;
        result += l_120;
        result += l_121;
        atomic_add(&p_990->l_special_values[9], result);
    }
    else
    { /* block id: 21 */
        (1 + 1);
    }
    return l_124;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global volatile int *g_atomic_reduction, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[59];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 59; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[59];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 59; i++)
            l_special_values[i] = 0;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    __local int64_t l_comm_values[35];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 35; i++)
            l_comm_values[i] = 1;
    struct S3 c_991;
    struct S3* p_990 = &c_991;
    struct S3 c_992 = {
        0x3061ECE3L, // p_990->g_5
        (VECTOR(uint16_t, 8))(0x320FL, (VECTOR(uint16_t, 4))(0x320FL, (VECTOR(uint16_t, 2))(0x320FL, 65535UL), 65535UL), 65535UL, 0x320FL, 65535UL), // p_990->g_10
        (VECTOR(uint16_t, 4))(0x8BC6L, (VECTOR(uint16_t, 2))(0x8BC6L, 0xDC50L), 0xDC50L), // p_990->g_11
        (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x64ADB5D2L), 0x64ADB5D2L), 0x64ADB5D2L, (-1L), 0x64ADB5D2L), // p_990->g_16
        (VECTOR(int8_t, 2))(7L, 0L), // p_990->g_34
        (VECTOR(int32_t, 16))(0x36FDE002L, (VECTOR(int32_t, 4))(0x36FDE002L, (VECTOR(int32_t, 2))(0x36FDE002L, 0x08F57543L), 0x08F57543L), 0x08F57543L, 0x36FDE002L, 0x08F57543L, (VECTOR(int32_t, 2))(0x36FDE002L, 0x08F57543L), (VECTOR(int32_t, 2))(0x36FDE002L, 0x08F57543L), 0x36FDE002L, 0x08F57543L, 0x36FDE002L, 0x08F57543L), // p_990->g_35
        (VECTOR(int32_t, 4))(0x74AB7223L, (VECTOR(int32_t, 2))(0x74AB7223L, 0x3DFA8E8BL), 0x3DFA8E8BL), // p_990->g_36
        0x2B06D5C7E7E5BDE7L, // p_990->g_140
        (void*)0, // p_990->g_141
        0x2DFB2C7E0AD0DFBBL, // p_990->g_146
        (void*)0, // p_990->g_148
        (VECTOR(int8_t, 16))(0x52L, (VECTOR(int8_t, 4))(0x52L, (VECTOR(int8_t, 2))(0x52L, 7L), 7L), 7L, 0x52L, 7L, (VECTOR(int8_t, 2))(0x52L, 7L), (VECTOR(int8_t, 2))(0x52L, 7L), 0x52L, 7L, 0x52L, 7L), // p_990->g_169
        {{{{0},{0}},{{0},{0}},{{0},{0}}},{{{0},{0}},{{0},{0}},{{0},{0}}},{{{0},{0}},{{0},{0}},{{0},{0}}},{{{0},{0}},{{0},{0}},{{0},{0}}},{{{0},{0}},{{0},{0}},{{0},{0}}},{{{0},{0}},{{0},{0}},{{0},{0}}},{{{0},{0}},{{0},{0}},{{0},{0}}}}, // p_990->g_177
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_990->g_178
        {0}, // p_990->g_203
        {0}, // p_990->g_204
        {{{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0}}}, // p_990->g_205
        {0}, // p_990->g_206
        {{0},{0},{0},{0},{0},{0},{0},{0},{0},{0}}, // p_990->g_207
        {{0}}, // p_990->g_208
        {0}, // p_990->g_209
        {0}, // p_990->g_210
        {0}, // p_990->g_211
        {0}, // p_990->g_212
        (VECTOR(int16_t, 4))(0x0C46L, (VECTOR(int16_t, 2))(0x0C46L, 0x1203L), 0x1203L), // p_990->g_219
        (VECTOR(int32_t, 2))((-2L), 7L), // p_990->g_226
        0x6CL, // p_990->g_238
        (VECTOR(int64_t, 16))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, (-1L)), (-1L)), (-1L), 1L, (-1L), (VECTOR(int64_t, 2))(1L, (-1L)), (VECTOR(int64_t, 2))(1L, (-1L)), 1L, (-1L), 1L, (-1L)), // p_990->g_288
        (VECTOR(int64_t, 8))((-7L), (VECTOR(int64_t, 4))((-7L), (VECTOR(int64_t, 2))((-7L), 0L), 0L), 0L, (-7L), 0L), // p_990->g_289
        {{9UL,9UL,9UL,9UL,9UL,9UL,9UL,9UL,9UL},{9UL,9UL,9UL,9UL,9UL,9UL,9UL,9UL,9UL}}, // p_990->g_291
        (void*)0, // p_990->g_318
        &p_990->g_141, // p_990->g_331
        (void*)0, // p_990->g_332
        (void*)0, // p_990->g_336
        (void*)0, // p_990->g_338
        (void*)0, // p_990->g_339
        {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}, // p_990->g_340
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_990->g_341
        (void*)0, // p_990->g_342
        (void*)0, // p_990->g_343
        (void*)0, // p_990->g_345
        0x4B76843E61D54BFCL, // p_990->g_368
        0x11508E36L, // p_990->g_374
        {0UL,255UL}, // p_990->g_404
        (VECTOR(uint8_t, 16))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 0x01L), 0x01L), 0x01L, 255UL, 0x01L, (VECTOR(uint8_t, 2))(255UL, 0x01L), (VECTOR(uint8_t, 2))(255UL, 0x01L), 255UL, 0x01L, 255UL, 0x01L), // p_990->g_408
        {4294967295UL,0x09228902F3CB2A20L,0x3A10L,7UL,-1L,-1L,-1L,0x4B676F91L,0UL}, // p_990->g_411
        &p_990->g_411, // p_990->g_410
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_990->g_412
        {0UL,255UL}, // p_990->g_414
        {&p_990->g_414,&p_990->g_414,&p_990->g_414,&p_990->g_414,&p_990->g_414,&p_990->g_414,&p_990->g_414,&p_990->g_414}, // p_990->g_416
        {&p_990->g_414,&p_990->g_414,&p_990->g_414,&p_990->g_414,&p_990->g_414,&p_990->g_414,&p_990->g_414,&p_990->g_414,&p_990->g_414}, // p_990->g_417
        &p_990->g_414, // p_990->g_418
        (void*)0, // p_990->g_419
        {0}, // p_990->g_447
        0x7EL, // p_990->g_474
        6L, // p_990->g_507
        (void*)0, // p_990->g_512
        {&p_990->g_141,&p_990->g_141,&p_990->g_141,&p_990->g_141,&p_990->g_141}, // p_990->g_513
        (-1L), // p_990->g_526
        &p_990->g_141, // p_990->g_532
        (VECTOR(uint16_t, 16))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0UL), 0UL), 0UL, 0UL, 0UL, (VECTOR(uint16_t, 2))(0UL, 0UL), (VECTOR(uint16_t, 2))(0UL, 0UL), 0UL, 0UL, 0UL, 0UL), // p_990->g_542
        (VECTOR(int64_t, 8))(0x3546C2FFE972CF97L, (VECTOR(int64_t, 4))(0x3546C2FFE972CF97L, (VECTOR(int64_t, 2))(0x3546C2FFE972CF97L, 1L), 1L), 1L, 0x3546C2FFE972CF97L, 1L), // p_990->g_558
        (VECTOR(int64_t, 8))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 0x13519ECB94A2965FL), 0x13519ECB94A2965FL), 0x13519ECB94A2965FL, 1L, 0x13519ECB94A2965FL), // p_990->g_559
        (VECTOR(int64_t, 8))(0x1340597AE732ACB6L, (VECTOR(int64_t, 4))(0x1340597AE732ACB6L, (VECTOR(int64_t, 2))(0x1340597AE732ACB6L, 0x2D350ADCAE93D8B9L), 0x2D350ADCAE93D8B9L), 0x2D350ADCAE93D8B9L, 0x1340597AE732ACB6L, 0x2D350ADCAE93D8B9L), // p_990->g_560
        (void*)0, // p_990->g_566
        {(void*)0,(void*)0,(void*)0}, // p_990->g_611
        (VECTOR(int8_t, 4))(0x04L, (VECTOR(int8_t, 2))(0x04L, (-1L)), (-1L)), // p_990->g_635
        (VECTOR(int64_t, 4))(0x757A0342F7278969L, (VECTOR(int64_t, 2))(0x757A0342F7278969L, 0x2033A1D00C47E282L), 0x2033A1D00C47E282L), // p_990->g_648
        (VECTOR(int64_t, 16))((-10L), (VECTOR(int64_t, 4))((-10L), (VECTOR(int64_t, 2))((-10L), 0x08E37199DF1B46DDL), 0x08E37199DF1B46DDL), 0x08E37199DF1B46DDL, (-10L), 0x08E37199DF1B46DDL, (VECTOR(int64_t, 2))((-10L), 0x08E37199DF1B46DDL), (VECTOR(int64_t, 2))((-10L), 0x08E37199DF1B46DDL), (-10L), 0x08E37199DF1B46DDL, (-10L), 0x08E37199DF1B46DDL), // p_990->g_650
        {4294967295UL,1L,1L,0xE523CEA08415F374L,-5L,-1L,0x69L,-1L,252UL}, // p_990->g_657
        {0x447A1205L,0x31L}, // p_990->g_672
        {0}, // p_990->g_678
        (void*)0, // p_990->g_720
        &p_990->g_141, // p_990->g_721
        {{{{0x403EBF02L,0x11L},{0UL,0x5CL},{0x04BF849DL,0xA6L},{2UL,252UL},{0x3C9E8F70L,247UL},{4294967295UL,0UL},{0x0997DF81L,0x70L},{0x04BF849DL,0xA6L},{0x5ABDEE9CL,247UL},{0x8906E94DL,0x1BL}},{{0x403EBF02L,0x11L},{0UL,0x5CL},{0x04BF849DL,0xA6L},{2UL,252UL},{0x3C9E8F70L,247UL},{4294967295UL,0UL},{0x0997DF81L,0x70L},{0x04BF849DL,0xA6L},{0x5ABDEE9CL,247UL},{0x8906E94DL,0x1BL}},{{0x403EBF02L,0x11L},{0UL,0x5CL},{0x04BF849DL,0xA6L},{2UL,252UL},{0x3C9E8F70L,247UL},{4294967295UL,0UL},{0x0997DF81L,0x70L},{0x04BF849DL,0xA6L},{0x5ABDEE9CL,247UL},{0x8906E94DL,0x1BL}},{{0x403EBF02L,0x11L},{0UL,0x5CL},{0x04BF849DL,0xA6L},{2UL,252UL},{0x3C9E8F70L,247UL},{4294967295UL,0UL},{0x0997DF81L,0x70L},{0x04BF849DL,0xA6L},{0x5ABDEE9CL,247UL},{0x8906E94DL,0x1BL}},{{0x403EBF02L,0x11L},{0UL,0x5CL},{0x04BF849DL,0xA6L},{2UL,252UL},{0x3C9E8F70L,247UL},{4294967295UL,0UL},{0x0997DF81L,0x70L},{0x04BF849DL,0xA6L},{0x5ABDEE9CL,247UL},{0x8906E94DL,0x1BL}},{{0x403EBF02L,0x11L},{0UL,0x5CL},{0x04BF849DL,0xA6L},{2UL,252UL},{0x3C9E8F70L,247UL},{4294967295UL,0UL},{0x0997DF81L,0x70L},{0x04BF849DL,0xA6L},{0x5ABDEE9CL,247UL},{0x8906E94DL,0x1BL}},{{0x403EBF02L,0x11L},{0UL,0x5CL},{0x04BF849DL,0xA6L},{2UL,252UL},{0x3C9E8F70L,247UL},{4294967295UL,0UL},{0x0997DF81L,0x70L},{0x04BF849DL,0xA6L},{0x5ABDEE9CL,247UL},{0x8906E94DL,0x1BL}}}}, // p_990->g_736
        {0xC32727FBL,248UL}, // p_990->g_753
        &p_990->g_753, // p_990->g_754
        {0}, // p_990->g_775
        (VECTOR(int8_t, 16))(0x4AL, (VECTOR(int8_t, 4))(0x4AL, (VECTOR(int8_t, 2))(0x4AL, 0x37L), 0x37L), 0x37L, 0x4AL, 0x37L, (VECTOR(int8_t, 2))(0x4AL, 0x37L), (VECTOR(int8_t, 2))(0x4AL, 0x37L), 0x4AL, 0x37L, 0x4AL, 0x37L), // p_990->g_799
        (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 4L), 4L), 4L, 1L, 4L), // p_990->g_800
        {(void*)0}, // p_990->g_821
        &p_990->g_821[0], // p_990->g_820
        (VECTOR(uint8_t, 4))(6UL, (VECTOR(uint8_t, 2))(6UL, 0UL), 0UL), // p_990->g_822
        {6UL,0x33L}, // p_990->g_846
        &p_990->g_846, // p_990->g_847
        &p_990->g_657, // p_990->g_850
        {{{0UL},{0UL},{0UL}},{{0UL},{0UL},{0UL}},{{0UL},{0UL},{0UL}},{{0UL},{0UL},{0UL}}}, // p_990->g_874
        &p_990->g_141, // p_990->g_876
        (VECTOR(uint32_t, 8))(3UL, (VECTOR(uint32_t, 4))(3UL, (VECTOR(uint32_t, 2))(3UL, 8UL), 8UL), 8UL, 3UL, 8UL), // p_990->g_889
        (-9L), // p_990->g_910
        {{{0x76162BAFC3F7EAF5L,0xBC0786F9BF981CC5L,0xBC0786F9BF981CC5L,0x76162BAFC3F7EAF5L,0x76162BAFC3F7EAF5L},{0x76162BAFC3F7EAF5L,0xBC0786F9BF981CC5L,0xBC0786F9BF981CC5L,0x76162BAFC3F7EAF5L,0x76162BAFC3F7EAF5L},{0x76162BAFC3F7EAF5L,0xBC0786F9BF981CC5L,0xBC0786F9BF981CC5L,0x76162BAFC3F7EAF5L,0x76162BAFC3F7EAF5L},{0x76162BAFC3F7EAF5L,0xBC0786F9BF981CC5L,0xBC0786F9BF981CC5L,0x76162BAFC3F7EAF5L,0x76162BAFC3F7EAF5L},{0x76162BAFC3F7EAF5L,0xBC0786F9BF981CC5L,0xBC0786F9BF981CC5L,0x76162BAFC3F7EAF5L,0x76162BAFC3F7EAF5L},{0x76162BAFC3F7EAF5L,0xBC0786F9BF981CC5L,0xBC0786F9BF981CC5L,0x76162BAFC3F7EAF5L,0x76162BAFC3F7EAF5L},{0x76162BAFC3F7EAF5L,0xBC0786F9BF981CC5L,0xBC0786F9BF981CC5L,0x76162BAFC3F7EAF5L,0x76162BAFC3F7EAF5L},{0x76162BAFC3F7EAF5L,0xBC0786F9BF981CC5L,0xBC0786F9BF981CC5L,0x76162BAFC3F7EAF5L,0x76162BAFC3F7EAF5L},{0x76162BAFC3F7EAF5L,0xBC0786F9BF981CC5L,0xBC0786F9BF981CC5L,0x76162BAFC3F7EAF5L,0x76162BAFC3F7EAF5L},{0x76162BAFC3F7EAF5L,0xBC0786F9BF981CC5L,0xBC0786F9BF981CC5L,0x76162BAFC3F7EAF5L,0x76162BAFC3F7EAF5L}}}, // p_990->g_927
        &p_990->g_141, // p_990->g_959
        (VECTOR(int8_t, 8))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), (-3L)), (-3L)), (-3L), (-1L), (-3L)), // p_990->g_967
        (VECTOR(int8_t, 16))(0x61L, (VECTOR(int8_t, 4))(0x61L, (VECTOR(int8_t, 2))(0x61L, 2L), 2L), 2L, 0x61L, 2L, (VECTOR(int8_t, 2))(0x61L, 2L), (VECTOR(int8_t, 2))(0x61L, 2L), 0x61L, 2L, 0x61L, 2L), // p_990->g_975
        0, // p_990->v_collective
        sequence_input[get_global_id(0)], // p_990->global_0_offset
        sequence_input[get_global_id(1)], // p_990->global_1_offset
        sequence_input[get_global_id(2)], // p_990->global_2_offset
        sequence_input[get_local_id(0)], // p_990->local_0_offset
        sequence_input[get_local_id(1)], // p_990->local_1_offset
        sequence_input[get_local_id(2)], // p_990->local_2_offset
        sequence_input[get_group_id(0)], // p_990->group_0_offset
        sequence_input[get_group_id(1)], // p_990->group_1_offset
        sequence_input[get_group_id(2)], // p_990->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 35)), permutations[0][get_linear_local_id()])), // p_990->tid
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_991 = c_992;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_990);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_990->g_5, "p_990->g_5", print_hash_value);
    transparent_crc(p_990->g_10.s0, "p_990->g_10.s0", print_hash_value);
    transparent_crc(p_990->g_10.s1, "p_990->g_10.s1", print_hash_value);
    transparent_crc(p_990->g_10.s2, "p_990->g_10.s2", print_hash_value);
    transparent_crc(p_990->g_10.s3, "p_990->g_10.s3", print_hash_value);
    transparent_crc(p_990->g_10.s4, "p_990->g_10.s4", print_hash_value);
    transparent_crc(p_990->g_10.s5, "p_990->g_10.s5", print_hash_value);
    transparent_crc(p_990->g_10.s6, "p_990->g_10.s6", print_hash_value);
    transparent_crc(p_990->g_10.s7, "p_990->g_10.s7", print_hash_value);
    transparent_crc(p_990->g_11.x, "p_990->g_11.x", print_hash_value);
    transparent_crc(p_990->g_11.y, "p_990->g_11.y", print_hash_value);
    transparent_crc(p_990->g_11.z, "p_990->g_11.z", print_hash_value);
    transparent_crc(p_990->g_11.w, "p_990->g_11.w", print_hash_value);
    transparent_crc(p_990->g_16.s0, "p_990->g_16.s0", print_hash_value);
    transparent_crc(p_990->g_16.s1, "p_990->g_16.s1", print_hash_value);
    transparent_crc(p_990->g_16.s2, "p_990->g_16.s2", print_hash_value);
    transparent_crc(p_990->g_16.s3, "p_990->g_16.s3", print_hash_value);
    transparent_crc(p_990->g_16.s4, "p_990->g_16.s4", print_hash_value);
    transparent_crc(p_990->g_16.s5, "p_990->g_16.s5", print_hash_value);
    transparent_crc(p_990->g_16.s6, "p_990->g_16.s6", print_hash_value);
    transparent_crc(p_990->g_16.s7, "p_990->g_16.s7", print_hash_value);
    transparent_crc(p_990->g_34.x, "p_990->g_34.x", print_hash_value);
    transparent_crc(p_990->g_34.y, "p_990->g_34.y", print_hash_value);
    transparent_crc(p_990->g_35.s0, "p_990->g_35.s0", print_hash_value);
    transparent_crc(p_990->g_35.s1, "p_990->g_35.s1", print_hash_value);
    transparent_crc(p_990->g_35.s2, "p_990->g_35.s2", print_hash_value);
    transparent_crc(p_990->g_35.s3, "p_990->g_35.s3", print_hash_value);
    transparent_crc(p_990->g_35.s4, "p_990->g_35.s4", print_hash_value);
    transparent_crc(p_990->g_35.s5, "p_990->g_35.s5", print_hash_value);
    transparent_crc(p_990->g_35.s6, "p_990->g_35.s6", print_hash_value);
    transparent_crc(p_990->g_35.s7, "p_990->g_35.s7", print_hash_value);
    transparent_crc(p_990->g_35.s8, "p_990->g_35.s8", print_hash_value);
    transparent_crc(p_990->g_35.s9, "p_990->g_35.s9", print_hash_value);
    transparent_crc(p_990->g_35.sa, "p_990->g_35.sa", print_hash_value);
    transparent_crc(p_990->g_35.sb, "p_990->g_35.sb", print_hash_value);
    transparent_crc(p_990->g_35.sc, "p_990->g_35.sc", print_hash_value);
    transparent_crc(p_990->g_35.sd, "p_990->g_35.sd", print_hash_value);
    transparent_crc(p_990->g_35.se, "p_990->g_35.se", print_hash_value);
    transparent_crc(p_990->g_35.sf, "p_990->g_35.sf", print_hash_value);
    transparent_crc(p_990->g_36.x, "p_990->g_36.x", print_hash_value);
    transparent_crc(p_990->g_36.y, "p_990->g_36.y", print_hash_value);
    transparent_crc(p_990->g_36.z, "p_990->g_36.z", print_hash_value);
    transparent_crc(p_990->g_36.w, "p_990->g_36.w", print_hash_value);
    transparent_crc(p_990->g_140, "p_990->g_140", print_hash_value);
    transparent_crc(p_990->g_146, "p_990->g_146", print_hash_value);
    transparent_crc(p_990->g_169.s0, "p_990->g_169.s0", print_hash_value);
    transparent_crc(p_990->g_169.s1, "p_990->g_169.s1", print_hash_value);
    transparent_crc(p_990->g_169.s2, "p_990->g_169.s2", print_hash_value);
    transparent_crc(p_990->g_169.s3, "p_990->g_169.s3", print_hash_value);
    transparent_crc(p_990->g_169.s4, "p_990->g_169.s4", print_hash_value);
    transparent_crc(p_990->g_169.s5, "p_990->g_169.s5", print_hash_value);
    transparent_crc(p_990->g_169.s6, "p_990->g_169.s6", print_hash_value);
    transparent_crc(p_990->g_169.s7, "p_990->g_169.s7", print_hash_value);
    transparent_crc(p_990->g_169.s8, "p_990->g_169.s8", print_hash_value);
    transparent_crc(p_990->g_169.s9, "p_990->g_169.s9", print_hash_value);
    transparent_crc(p_990->g_169.sa, "p_990->g_169.sa", print_hash_value);
    transparent_crc(p_990->g_169.sb, "p_990->g_169.sb", print_hash_value);
    transparent_crc(p_990->g_169.sc, "p_990->g_169.sc", print_hash_value);
    transparent_crc(p_990->g_169.sd, "p_990->g_169.sd", print_hash_value);
    transparent_crc(p_990->g_169.se, "p_990->g_169.se", print_hash_value);
    transparent_crc(p_990->g_169.sf, "p_990->g_169.sf", print_hash_value);
    transparent_crc(p_990->g_219.x, "p_990->g_219.x", print_hash_value);
    transparent_crc(p_990->g_219.y, "p_990->g_219.y", print_hash_value);
    transparent_crc(p_990->g_219.z, "p_990->g_219.z", print_hash_value);
    transparent_crc(p_990->g_219.w, "p_990->g_219.w", print_hash_value);
    transparent_crc(p_990->g_226.x, "p_990->g_226.x", print_hash_value);
    transparent_crc(p_990->g_226.y, "p_990->g_226.y", print_hash_value);
    transparent_crc(p_990->g_238, "p_990->g_238", print_hash_value);
    transparent_crc(p_990->g_288.s0, "p_990->g_288.s0", print_hash_value);
    transparent_crc(p_990->g_288.s1, "p_990->g_288.s1", print_hash_value);
    transparent_crc(p_990->g_288.s2, "p_990->g_288.s2", print_hash_value);
    transparent_crc(p_990->g_288.s3, "p_990->g_288.s3", print_hash_value);
    transparent_crc(p_990->g_288.s4, "p_990->g_288.s4", print_hash_value);
    transparent_crc(p_990->g_288.s5, "p_990->g_288.s5", print_hash_value);
    transparent_crc(p_990->g_288.s6, "p_990->g_288.s6", print_hash_value);
    transparent_crc(p_990->g_288.s7, "p_990->g_288.s7", print_hash_value);
    transparent_crc(p_990->g_288.s8, "p_990->g_288.s8", print_hash_value);
    transparent_crc(p_990->g_288.s9, "p_990->g_288.s9", print_hash_value);
    transparent_crc(p_990->g_288.sa, "p_990->g_288.sa", print_hash_value);
    transparent_crc(p_990->g_288.sb, "p_990->g_288.sb", print_hash_value);
    transparent_crc(p_990->g_288.sc, "p_990->g_288.sc", print_hash_value);
    transparent_crc(p_990->g_288.sd, "p_990->g_288.sd", print_hash_value);
    transparent_crc(p_990->g_288.se, "p_990->g_288.se", print_hash_value);
    transparent_crc(p_990->g_288.sf, "p_990->g_288.sf", print_hash_value);
    transparent_crc(p_990->g_289.s0, "p_990->g_289.s0", print_hash_value);
    transparent_crc(p_990->g_289.s1, "p_990->g_289.s1", print_hash_value);
    transparent_crc(p_990->g_289.s2, "p_990->g_289.s2", print_hash_value);
    transparent_crc(p_990->g_289.s3, "p_990->g_289.s3", print_hash_value);
    transparent_crc(p_990->g_289.s4, "p_990->g_289.s4", print_hash_value);
    transparent_crc(p_990->g_289.s5, "p_990->g_289.s5", print_hash_value);
    transparent_crc(p_990->g_289.s6, "p_990->g_289.s6", print_hash_value);
    transparent_crc(p_990->g_289.s7, "p_990->g_289.s7", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_990->g_291[i][j], "p_990->g_291[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_990->g_368, "p_990->g_368", print_hash_value);
    transparent_crc(p_990->g_374, "p_990->g_374", print_hash_value);
    transparent_crc(p_990->g_404.f0, "p_990->g_404.f0", print_hash_value);
    transparent_crc(p_990->g_404.f1, "p_990->g_404.f1", print_hash_value);
    transparent_crc(p_990->g_408.s0, "p_990->g_408.s0", print_hash_value);
    transparent_crc(p_990->g_408.s1, "p_990->g_408.s1", print_hash_value);
    transparent_crc(p_990->g_408.s2, "p_990->g_408.s2", print_hash_value);
    transparent_crc(p_990->g_408.s3, "p_990->g_408.s3", print_hash_value);
    transparent_crc(p_990->g_408.s4, "p_990->g_408.s4", print_hash_value);
    transparent_crc(p_990->g_408.s5, "p_990->g_408.s5", print_hash_value);
    transparent_crc(p_990->g_408.s6, "p_990->g_408.s6", print_hash_value);
    transparent_crc(p_990->g_408.s7, "p_990->g_408.s7", print_hash_value);
    transparent_crc(p_990->g_408.s8, "p_990->g_408.s8", print_hash_value);
    transparent_crc(p_990->g_408.s9, "p_990->g_408.s9", print_hash_value);
    transparent_crc(p_990->g_408.sa, "p_990->g_408.sa", print_hash_value);
    transparent_crc(p_990->g_408.sb, "p_990->g_408.sb", print_hash_value);
    transparent_crc(p_990->g_408.sc, "p_990->g_408.sc", print_hash_value);
    transparent_crc(p_990->g_408.sd, "p_990->g_408.sd", print_hash_value);
    transparent_crc(p_990->g_408.se, "p_990->g_408.se", print_hash_value);
    transparent_crc(p_990->g_408.sf, "p_990->g_408.sf", print_hash_value);
    transparent_crc(p_990->g_411.f0, "p_990->g_411.f0", print_hash_value);
    transparent_crc(p_990->g_411.f1, "p_990->g_411.f1", print_hash_value);
    transparent_crc(p_990->g_411.f2, "p_990->g_411.f2", print_hash_value);
    transparent_crc(p_990->g_411.f3, "p_990->g_411.f3", print_hash_value);
    transparent_crc(p_990->g_411.f4, "p_990->g_411.f4", print_hash_value);
    transparent_crc(p_990->g_411.f5, "p_990->g_411.f5", print_hash_value);
    transparent_crc(p_990->g_411.f6, "p_990->g_411.f6", print_hash_value);
    transparent_crc(p_990->g_411.f7, "p_990->g_411.f7", print_hash_value);
    transparent_crc(p_990->g_411.f8, "p_990->g_411.f8", print_hash_value);
    transparent_crc(p_990->g_414.f0, "p_990->g_414.f0", print_hash_value);
    transparent_crc(p_990->g_414.f1, "p_990->g_414.f1", print_hash_value);
    transparent_crc(p_990->g_474, "p_990->g_474", print_hash_value);
    transparent_crc(p_990->g_507, "p_990->g_507", print_hash_value);
    transparent_crc(p_990->g_526, "p_990->g_526", print_hash_value);
    transparent_crc(p_990->g_542.s0, "p_990->g_542.s0", print_hash_value);
    transparent_crc(p_990->g_542.s1, "p_990->g_542.s1", print_hash_value);
    transparent_crc(p_990->g_542.s2, "p_990->g_542.s2", print_hash_value);
    transparent_crc(p_990->g_542.s3, "p_990->g_542.s3", print_hash_value);
    transparent_crc(p_990->g_542.s4, "p_990->g_542.s4", print_hash_value);
    transparent_crc(p_990->g_542.s5, "p_990->g_542.s5", print_hash_value);
    transparent_crc(p_990->g_542.s6, "p_990->g_542.s6", print_hash_value);
    transparent_crc(p_990->g_542.s7, "p_990->g_542.s7", print_hash_value);
    transparent_crc(p_990->g_542.s8, "p_990->g_542.s8", print_hash_value);
    transparent_crc(p_990->g_542.s9, "p_990->g_542.s9", print_hash_value);
    transparent_crc(p_990->g_542.sa, "p_990->g_542.sa", print_hash_value);
    transparent_crc(p_990->g_542.sb, "p_990->g_542.sb", print_hash_value);
    transparent_crc(p_990->g_542.sc, "p_990->g_542.sc", print_hash_value);
    transparent_crc(p_990->g_542.sd, "p_990->g_542.sd", print_hash_value);
    transparent_crc(p_990->g_542.se, "p_990->g_542.se", print_hash_value);
    transparent_crc(p_990->g_542.sf, "p_990->g_542.sf", print_hash_value);
    transparent_crc(p_990->g_558.s0, "p_990->g_558.s0", print_hash_value);
    transparent_crc(p_990->g_558.s1, "p_990->g_558.s1", print_hash_value);
    transparent_crc(p_990->g_558.s2, "p_990->g_558.s2", print_hash_value);
    transparent_crc(p_990->g_558.s3, "p_990->g_558.s3", print_hash_value);
    transparent_crc(p_990->g_558.s4, "p_990->g_558.s4", print_hash_value);
    transparent_crc(p_990->g_558.s5, "p_990->g_558.s5", print_hash_value);
    transparent_crc(p_990->g_558.s6, "p_990->g_558.s6", print_hash_value);
    transparent_crc(p_990->g_558.s7, "p_990->g_558.s7", print_hash_value);
    transparent_crc(p_990->g_559.s0, "p_990->g_559.s0", print_hash_value);
    transparent_crc(p_990->g_559.s1, "p_990->g_559.s1", print_hash_value);
    transparent_crc(p_990->g_559.s2, "p_990->g_559.s2", print_hash_value);
    transparent_crc(p_990->g_559.s3, "p_990->g_559.s3", print_hash_value);
    transparent_crc(p_990->g_559.s4, "p_990->g_559.s4", print_hash_value);
    transparent_crc(p_990->g_559.s5, "p_990->g_559.s5", print_hash_value);
    transparent_crc(p_990->g_559.s6, "p_990->g_559.s6", print_hash_value);
    transparent_crc(p_990->g_559.s7, "p_990->g_559.s7", print_hash_value);
    transparent_crc(p_990->g_560.s0, "p_990->g_560.s0", print_hash_value);
    transparent_crc(p_990->g_560.s1, "p_990->g_560.s1", print_hash_value);
    transparent_crc(p_990->g_560.s2, "p_990->g_560.s2", print_hash_value);
    transparent_crc(p_990->g_560.s3, "p_990->g_560.s3", print_hash_value);
    transparent_crc(p_990->g_560.s4, "p_990->g_560.s4", print_hash_value);
    transparent_crc(p_990->g_560.s5, "p_990->g_560.s5", print_hash_value);
    transparent_crc(p_990->g_560.s6, "p_990->g_560.s6", print_hash_value);
    transparent_crc(p_990->g_560.s7, "p_990->g_560.s7", print_hash_value);
    transparent_crc(p_990->g_635.x, "p_990->g_635.x", print_hash_value);
    transparent_crc(p_990->g_635.y, "p_990->g_635.y", print_hash_value);
    transparent_crc(p_990->g_635.z, "p_990->g_635.z", print_hash_value);
    transparent_crc(p_990->g_635.w, "p_990->g_635.w", print_hash_value);
    transparent_crc(p_990->g_648.x, "p_990->g_648.x", print_hash_value);
    transparent_crc(p_990->g_648.y, "p_990->g_648.y", print_hash_value);
    transparent_crc(p_990->g_648.z, "p_990->g_648.z", print_hash_value);
    transparent_crc(p_990->g_648.w, "p_990->g_648.w", print_hash_value);
    transparent_crc(p_990->g_650.s0, "p_990->g_650.s0", print_hash_value);
    transparent_crc(p_990->g_650.s1, "p_990->g_650.s1", print_hash_value);
    transparent_crc(p_990->g_650.s2, "p_990->g_650.s2", print_hash_value);
    transparent_crc(p_990->g_650.s3, "p_990->g_650.s3", print_hash_value);
    transparent_crc(p_990->g_650.s4, "p_990->g_650.s4", print_hash_value);
    transparent_crc(p_990->g_650.s5, "p_990->g_650.s5", print_hash_value);
    transparent_crc(p_990->g_650.s6, "p_990->g_650.s6", print_hash_value);
    transparent_crc(p_990->g_650.s7, "p_990->g_650.s7", print_hash_value);
    transparent_crc(p_990->g_650.s8, "p_990->g_650.s8", print_hash_value);
    transparent_crc(p_990->g_650.s9, "p_990->g_650.s9", print_hash_value);
    transparent_crc(p_990->g_650.sa, "p_990->g_650.sa", print_hash_value);
    transparent_crc(p_990->g_650.sb, "p_990->g_650.sb", print_hash_value);
    transparent_crc(p_990->g_650.sc, "p_990->g_650.sc", print_hash_value);
    transparent_crc(p_990->g_650.sd, "p_990->g_650.sd", print_hash_value);
    transparent_crc(p_990->g_650.se, "p_990->g_650.se", print_hash_value);
    transparent_crc(p_990->g_650.sf, "p_990->g_650.sf", print_hash_value);
    transparent_crc(p_990->g_657.f0, "p_990->g_657.f0", print_hash_value);
    transparent_crc(p_990->g_657.f1, "p_990->g_657.f1", print_hash_value);
    transparent_crc(p_990->g_657.f2, "p_990->g_657.f2", print_hash_value);
    transparent_crc(p_990->g_657.f3, "p_990->g_657.f3", print_hash_value);
    transparent_crc(p_990->g_657.f4, "p_990->g_657.f4", print_hash_value);
    transparent_crc(p_990->g_657.f5, "p_990->g_657.f5", print_hash_value);
    transparent_crc(p_990->g_657.f6, "p_990->g_657.f6", print_hash_value);
    transparent_crc(p_990->g_657.f7, "p_990->g_657.f7", print_hash_value);
    transparent_crc(p_990->g_657.f8, "p_990->g_657.f8", print_hash_value);
    transparent_crc(p_990->g_672.f0, "p_990->g_672.f0", print_hash_value);
    transparent_crc(p_990->g_672.f1, "p_990->g_672.f1", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 7; j++)
        {
            for (k = 0; k < 10; k++)
            {
                transparent_crc(p_990->g_736[i][j][k].f0, "p_990->g_736[i][j][k].f0", print_hash_value);
                transparent_crc(p_990->g_736[i][j][k].f1, "p_990->g_736[i][j][k].f1", print_hash_value);

            }
        }
    }
    transparent_crc(p_990->g_753.f0, "p_990->g_753.f0", print_hash_value);
    transparent_crc(p_990->g_753.f1, "p_990->g_753.f1", print_hash_value);
    transparent_crc(p_990->g_799.s0, "p_990->g_799.s0", print_hash_value);
    transparent_crc(p_990->g_799.s1, "p_990->g_799.s1", print_hash_value);
    transparent_crc(p_990->g_799.s2, "p_990->g_799.s2", print_hash_value);
    transparent_crc(p_990->g_799.s3, "p_990->g_799.s3", print_hash_value);
    transparent_crc(p_990->g_799.s4, "p_990->g_799.s4", print_hash_value);
    transparent_crc(p_990->g_799.s5, "p_990->g_799.s5", print_hash_value);
    transparent_crc(p_990->g_799.s6, "p_990->g_799.s6", print_hash_value);
    transparent_crc(p_990->g_799.s7, "p_990->g_799.s7", print_hash_value);
    transparent_crc(p_990->g_799.s8, "p_990->g_799.s8", print_hash_value);
    transparent_crc(p_990->g_799.s9, "p_990->g_799.s9", print_hash_value);
    transparent_crc(p_990->g_799.sa, "p_990->g_799.sa", print_hash_value);
    transparent_crc(p_990->g_799.sb, "p_990->g_799.sb", print_hash_value);
    transparent_crc(p_990->g_799.sc, "p_990->g_799.sc", print_hash_value);
    transparent_crc(p_990->g_799.sd, "p_990->g_799.sd", print_hash_value);
    transparent_crc(p_990->g_799.se, "p_990->g_799.se", print_hash_value);
    transparent_crc(p_990->g_799.sf, "p_990->g_799.sf", print_hash_value);
    transparent_crc(p_990->g_800.s0, "p_990->g_800.s0", print_hash_value);
    transparent_crc(p_990->g_800.s1, "p_990->g_800.s1", print_hash_value);
    transparent_crc(p_990->g_800.s2, "p_990->g_800.s2", print_hash_value);
    transparent_crc(p_990->g_800.s3, "p_990->g_800.s3", print_hash_value);
    transparent_crc(p_990->g_800.s4, "p_990->g_800.s4", print_hash_value);
    transparent_crc(p_990->g_800.s5, "p_990->g_800.s5", print_hash_value);
    transparent_crc(p_990->g_800.s6, "p_990->g_800.s6", print_hash_value);
    transparent_crc(p_990->g_800.s7, "p_990->g_800.s7", print_hash_value);
    transparent_crc(p_990->g_822.x, "p_990->g_822.x", print_hash_value);
    transparent_crc(p_990->g_822.y, "p_990->g_822.y", print_hash_value);
    transparent_crc(p_990->g_822.z, "p_990->g_822.z", print_hash_value);
    transparent_crc(p_990->g_822.w, "p_990->g_822.w", print_hash_value);
    transparent_crc(p_990->g_846.f0, "p_990->g_846.f0", print_hash_value);
    transparent_crc(p_990->g_846.f1, "p_990->g_846.f1", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 3; j++)
        {
            for (k = 0; k < 1; k++)
            {
                transparent_crc(p_990->g_874[i][j][k], "p_990->g_874[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_990->g_889.s0, "p_990->g_889.s0", print_hash_value);
    transparent_crc(p_990->g_889.s1, "p_990->g_889.s1", print_hash_value);
    transparent_crc(p_990->g_889.s2, "p_990->g_889.s2", print_hash_value);
    transparent_crc(p_990->g_889.s3, "p_990->g_889.s3", print_hash_value);
    transparent_crc(p_990->g_889.s4, "p_990->g_889.s4", print_hash_value);
    transparent_crc(p_990->g_889.s5, "p_990->g_889.s5", print_hash_value);
    transparent_crc(p_990->g_889.s6, "p_990->g_889.s6", print_hash_value);
    transparent_crc(p_990->g_889.s7, "p_990->g_889.s7", print_hash_value);
    transparent_crc(p_990->g_910, "p_990->g_910", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 10; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_990->g_927[i][j][k], "p_990->g_927[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_990->g_967.s0, "p_990->g_967.s0", print_hash_value);
    transparent_crc(p_990->g_967.s1, "p_990->g_967.s1", print_hash_value);
    transparent_crc(p_990->g_967.s2, "p_990->g_967.s2", print_hash_value);
    transparent_crc(p_990->g_967.s3, "p_990->g_967.s3", print_hash_value);
    transparent_crc(p_990->g_967.s4, "p_990->g_967.s4", print_hash_value);
    transparent_crc(p_990->g_967.s5, "p_990->g_967.s5", print_hash_value);
    transparent_crc(p_990->g_967.s6, "p_990->g_967.s6", print_hash_value);
    transparent_crc(p_990->g_967.s7, "p_990->g_967.s7", print_hash_value);
    transparent_crc(p_990->g_975.s0, "p_990->g_975.s0", print_hash_value);
    transparent_crc(p_990->g_975.s1, "p_990->g_975.s1", print_hash_value);
    transparent_crc(p_990->g_975.s2, "p_990->g_975.s2", print_hash_value);
    transparent_crc(p_990->g_975.s3, "p_990->g_975.s3", print_hash_value);
    transparent_crc(p_990->g_975.s4, "p_990->g_975.s4", print_hash_value);
    transparent_crc(p_990->g_975.s5, "p_990->g_975.s5", print_hash_value);
    transparent_crc(p_990->g_975.s6, "p_990->g_975.s6", print_hash_value);
    transparent_crc(p_990->g_975.s7, "p_990->g_975.s7", print_hash_value);
    transparent_crc(p_990->g_975.s8, "p_990->g_975.s8", print_hash_value);
    transparent_crc(p_990->g_975.s9, "p_990->g_975.s9", print_hash_value);
    transparent_crc(p_990->g_975.sa, "p_990->g_975.sa", print_hash_value);
    transparent_crc(p_990->g_975.sb, "p_990->g_975.sb", print_hash_value);
    transparent_crc(p_990->g_975.sc, "p_990->g_975.sc", print_hash_value);
    transparent_crc(p_990->g_975.sd, "p_990->g_975.sd", print_hash_value);
    transparent_crc(p_990->g_975.se, "p_990->g_975.se", print_hash_value);
    transparent_crc(p_990->g_975.sf, "p_990->g_975.sf", print_hash_value);
    transparent_crc(p_990->v_collective, "p_990->v_collective", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 59; i++)
            transparent_crc(p_990->l_special_values[i], "p_990->l_special_values[i]", print_hash_value);
    transparent_crc(p_990->l_comm_values[get_linear_local_id()], "p_990->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_990->g_comm_values[get_linear_group_id() * 35 + get_linear_local_id()], "p_990->g_comm_values[get_linear_group_id() * 35 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
