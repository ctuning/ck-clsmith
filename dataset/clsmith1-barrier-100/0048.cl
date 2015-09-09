// ---fake_divergence ---inter_thread_comm -g 35,33,3 -l 35,1,1
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
{31,2,3,14,1,9,17,15,8,26,29,30,7,13,6,16,0,12,18,20,4,19,10,23,27,28,33,11,21,24,25,22,34,5,32}, // permutation 0
{5,17,24,16,15,30,18,34,14,13,12,0,21,23,6,28,27,19,25,11,31,10,22,3,20,26,9,7,29,33,1,8,4,2,32}, // permutation 1
{5,26,6,15,11,9,3,17,24,21,30,28,0,8,29,16,12,22,7,10,33,18,1,25,31,14,27,32,34,13,20,4,19,23,2}, // permutation 2
{28,26,1,29,30,11,32,4,10,17,14,9,7,13,3,21,0,5,18,33,12,20,15,8,2,27,16,34,6,22,25,19,24,23,31}, // permutation 3
{5,29,28,21,4,26,19,17,33,20,1,10,9,31,27,18,15,32,0,7,11,25,2,16,8,14,3,12,13,34,30,24,23,6,22}, // permutation 4
{1,24,21,34,26,16,3,28,31,32,29,33,25,12,9,14,18,30,4,2,17,15,5,13,0,22,6,8,27,19,20,23,11,10,7}, // permutation 5
{17,29,19,21,32,15,28,9,20,18,4,1,16,27,23,7,26,25,14,24,3,2,34,10,8,11,5,12,22,6,0,13,30,31,33}, // permutation 6
{1,26,14,11,17,29,19,5,3,30,31,6,20,12,34,4,8,0,13,33,18,28,22,2,23,9,7,16,32,25,24,21,10,27,15}, // permutation 7
{24,0,16,31,23,27,28,20,11,19,7,21,25,2,18,22,15,10,13,34,9,5,6,8,32,1,17,26,29,33,14,12,30,4,3}, // permutation 8
{31,16,26,14,23,27,28,33,8,17,29,4,5,21,22,25,18,9,13,10,30,19,20,3,34,11,6,15,2,0,12,32,7,1,24} // permutation 9
};

// Seed: 48

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   uint16_t  f0;
   uint64_t  f1;
   uint32_t  f2;
   uint64_t  f3;
   volatile int16_t  f4;
   volatile uint16_t  f5;
};

struct S1 {
   uint32_t  f0;
   volatile int32_t  f1;
   volatile uint16_t  f2;
   int8_t  f3;
};

union U2 {
   uint16_t  f0;
   uint64_t  f1;
   struct S0  f2;
   volatile int8_t * f3;
   volatile uint32_t  f4;
};

union U3 {
   uint64_t  f0;
   uint32_t  f1;
   volatile uint8_t  f2;
   int32_t  f3;
   int16_t  f4;
};

struct S4 {
    uint8_t g_2[8][2][5];
    int32_t g_3;
    int8_t g_18;
    int32_t g_53;
    int32_t g_73;
    volatile struct S0 g_97;
    int32_t g_106[5];
    struct S1 g_108;
    int32_t * volatile g_118[9][7][4];
    struct S1 * volatile g_121[6];
    uint16_t g_126;
    volatile int8_t *g_143;
    volatile struct S0 g_146;
    volatile struct S1 g_156;
    volatile struct S1 g_157[2];
    volatile struct S1 g_158[9];
    volatile struct S1 *g_155[10];
    int16_t g_161;
    int32_t **g_170;
    volatile int64_t g_173;
    volatile int64_t *g_172;
    struct S0 g_185;
    int64_t *g_195;
    int32_t *g_202;
    volatile struct S1 g_223;
    union U2 g_233;
    int32_t g_245;
    volatile struct S0 g_251;
    volatile struct S0 g_252;
    volatile struct S0 g_253;
    volatile struct S0 g_254[9][6][2];
    volatile struct S0 g_255;
    volatile struct S0 g_256[5];
    volatile struct S0 g_257;
    volatile struct S0 g_258;
    volatile struct S0 g_259;
    volatile struct S0 g_260[7];
    volatile struct S0 g_261;
    volatile struct S0 g_262[7];
    volatile struct S0 g_263;
    volatile struct S0 g_264;
    volatile struct S0 g_265;
    volatile struct S0 g_266[8];
    volatile struct S0 g_267;
    volatile struct S0 g_268;
    volatile struct S0 g_269;
    volatile struct S0 g_270[2][10];
    volatile struct S0 g_271;
    volatile struct S0 g_272;
    volatile struct S0 g_273;
    volatile struct S0 g_274[8][6][2];
    volatile struct S0 g_275[3];
    volatile struct S0 g_276;
    volatile struct S0 g_277;
    volatile struct S0 g_278;
    volatile struct S0 g_279[10][4][2];
    volatile struct S0 g_280[2];
    volatile struct S0 g_281;
    volatile struct S0 g_282;
    volatile struct S0 g_283;
    volatile struct S0 g_284;
    volatile struct S0 g_285;
    volatile struct S0 g_286;
    volatile struct S0 g_287[4];
    volatile struct S0 g_288;
    volatile struct S0 g_289;
    volatile struct S0 g_290;
    volatile struct S0 g_291[7];
    volatile struct S0 g_292;
    volatile struct S0 g_293;
    volatile struct S0 g_294;
    volatile struct S0 g_295;
    volatile struct S0 g_296;
    volatile struct S0 g_297;
    volatile struct S0 g_298;
    volatile struct S0 *g_250[4][9][7];
    int32_t g_317;
    struct S0 g_319;
    uint16_t *g_324;
    struct S1 g_325;
    uint16_t g_348;
    struct S0 g_351;
    volatile struct S0 g_367;
    volatile struct S0 * volatile g_368;
    int32_t *g_373;
    int16_t g_376;
    int32_t * volatile * volatile * volatile *g_378;
    int64_t **g_379;
    int16_t g_394;
    int32_t ***g_420;
    int32_t ****g_419;
    union U3 g_429;
    int64_t g_539;
    volatile struct S1 **g_548;
    volatile struct S1 ** volatile *g_547;
    uint8_t g_593;
    uint64_t g_619;
    volatile struct S0 g_621;
    volatile struct S0 * volatile g_622;
    volatile struct S0 g_624;
    volatile struct S1 g_627;
    volatile int8_t g_713;
    volatile struct S0 g_750;
    struct S0 g_758;
    struct S0 g_763[4];
    int32_t * volatile g_795;
    int64_t g_823[5];
    struct S1 g_826;
    volatile union U3 g_844;
    struct S1 g_850;
    volatile struct S0 g_865;
    uint32_t g_870;
    union U2 g_931;
    volatile union U2 g_948;
    volatile uint8_t g_955;
    volatile uint8_t * volatile g_954;
    volatile uint8_t * volatile * volatile g_953;
    volatile struct S0 g_972[5][9];
    volatile struct S0 * volatile g_973;
    int32_t g_981[7];
    volatile uint32_t *g_1004;
    volatile uint32_t **g_1003;
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
int64_t  func_1(struct S4 * p_1060);
int32_t  func_4(int32_t  p_5, int32_t  p_6, struct S4 * p_1060);
int32_t  func_8(int8_t * p_9, int64_t  p_10, int8_t * p_11, struct S4 * p_1060);
int8_t * func_12(int8_t * p_13, int32_t  p_14, int64_t  p_15, uint32_t  p_16, struct S4 * p_1060);
int64_t  func_21(int8_t  p_22, int16_t  p_23, int32_t  p_24, int8_t * p_25, int8_t * p_26, struct S4 * p_1060);
uint16_t  func_56(int64_t * p_57, int64_t * p_58, int8_t * p_59, uint32_t  p_60, struct S4 * p_1060);
int32_t  func_69(uint64_t  p_70, struct S4 * p_1060);
struct S0  func_80(uint32_t  p_81, struct S4 * p_1060);
uint16_t  func_85(uint32_t  p_86, uint64_t  p_87, struct S4 * p_1060);
uint32_t  func_88(int64_t  p_89, uint64_t  p_90, struct S4 * p_1060);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1060->g_3 p_1060->g_539 p_1060->g_202 p_1060->g_73 p_1060->g_373 p_1060->g_251.f4
 * writes: p_1060->g_3 p_1060->g_539 p_1060->g_73
 */
int64_t  func_1(struct S4 * p_1060)
{ /* block id: 4 */
    uint32_t l_31 = 0UL;
    uint32_t l_39 = 0xA97A8D1DL;
    int8_t *l_594 = &p_1060->g_325.f3;
    uint8_t l_793 = 0xF9L;
    int32_t l_799 = (-9L);
    int32_t l_801 = 3L;
    int32_t l_802 = 0x1B65B1C4L;
    int32_t l_803[6][10][4] = {{{9L,7L,0x5C978C63L,0x5C978C63L},{9L,7L,0x5C978C63L,0x5C978C63L},{9L,7L,0x5C978C63L,0x5C978C63L},{9L,7L,0x5C978C63L,0x5C978C63L},{9L,7L,0x5C978C63L,0x5C978C63L},{9L,7L,0x5C978C63L,0x5C978C63L},{9L,7L,0x5C978C63L,0x5C978C63L},{9L,7L,0x5C978C63L,0x5C978C63L},{9L,7L,0x5C978C63L,0x5C978C63L},{9L,7L,0x5C978C63L,0x5C978C63L}},{{9L,7L,0x5C978C63L,0x5C978C63L},{9L,7L,0x5C978C63L,0x5C978C63L},{9L,7L,0x5C978C63L,0x5C978C63L},{9L,7L,0x5C978C63L,0x5C978C63L},{9L,7L,0x5C978C63L,0x5C978C63L},{9L,7L,0x5C978C63L,0x5C978C63L},{9L,7L,0x5C978C63L,0x5C978C63L},{9L,7L,0x5C978C63L,0x5C978C63L},{9L,7L,0x5C978C63L,0x5C978C63L},{9L,7L,0x5C978C63L,0x5C978C63L}},{{9L,7L,0x5C978C63L,0x5C978C63L},{9L,7L,0x5C978C63L,0x5C978C63L},{9L,7L,0x5C978C63L,0x5C978C63L},{9L,7L,0x5C978C63L,0x5C978C63L},{9L,7L,0x5C978C63L,0x5C978C63L},{9L,7L,0x5C978C63L,0x5C978C63L},{9L,7L,0x5C978C63L,0x5C978C63L},{9L,7L,0x5C978C63L,0x5C978C63L},{9L,7L,0x5C978C63L,0x5C978C63L},{9L,7L,0x5C978C63L,0x5C978C63L}},{{9L,7L,0x5C978C63L,0x5C978C63L},{9L,7L,0x5C978C63L,0x5C978C63L},{9L,7L,0x5C978C63L,0x5C978C63L},{9L,7L,0x5C978C63L,0x5C978C63L},{9L,7L,0x5C978C63L,0x5C978C63L},{9L,7L,0x5C978C63L,0x5C978C63L},{9L,7L,0x5C978C63L,0x5C978C63L},{9L,7L,0x5C978C63L,0x5C978C63L},{9L,7L,0x5C978C63L,0x5C978C63L},{9L,7L,0x5C978C63L,0x5C978C63L}},{{9L,7L,0x5C978C63L,0x5C978C63L},{9L,7L,0x5C978C63L,0x5C978C63L},{9L,7L,0x5C978C63L,0x5C978C63L},{9L,7L,0x5C978C63L,0x5C978C63L},{9L,7L,0x5C978C63L,0x5C978C63L},{9L,7L,0x5C978C63L,0x5C978C63L},{9L,7L,0x5C978C63L,0x5C978C63L},{9L,7L,0x5C978C63L,0x5C978C63L},{9L,7L,0x5C978C63L,0x5C978C63L},{9L,7L,0x5C978C63L,0x5C978C63L}},{{9L,7L,0x5C978C63L,0x5C978C63L},{9L,7L,0x5C978C63L,0x5C978C63L},{9L,7L,0x5C978C63L,0x5C978C63L},{9L,7L,0x5C978C63L,0x5C978C63L},{9L,7L,0x5C978C63L,0x5C978C63L},{9L,7L,0x5C978C63L,0x5C978C63L},{9L,7L,0x5C978C63L,0x5C978C63L},{9L,7L,0x5C978C63L,0x5C978C63L},{9L,7L,0x5C978C63L,0x5C978C63L},{9L,7L,0x5C978C63L,0x5C978C63L}}};
    uint64_t l_827 = 0x8DC8C4D6EA9A30B0L;
    int64_t l_852[10][7][3] = {{{(-9L),0x07078A2C8F9B4370L,0x07078A2C8F9B4370L},{(-9L),0x07078A2C8F9B4370L,0x07078A2C8F9B4370L},{(-9L),0x07078A2C8F9B4370L,0x07078A2C8F9B4370L},{(-9L),0x07078A2C8F9B4370L,0x07078A2C8F9B4370L},{(-9L),0x07078A2C8F9B4370L,0x07078A2C8F9B4370L},{(-9L),0x07078A2C8F9B4370L,0x07078A2C8F9B4370L},{(-9L),0x07078A2C8F9B4370L,0x07078A2C8F9B4370L}},{{(-9L),0x07078A2C8F9B4370L,0x07078A2C8F9B4370L},{(-9L),0x07078A2C8F9B4370L,0x07078A2C8F9B4370L},{(-9L),0x07078A2C8F9B4370L,0x07078A2C8F9B4370L},{(-9L),0x07078A2C8F9B4370L,0x07078A2C8F9B4370L},{(-9L),0x07078A2C8F9B4370L,0x07078A2C8F9B4370L},{(-9L),0x07078A2C8F9B4370L,0x07078A2C8F9B4370L},{(-9L),0x07078A2C8F9B4370L,0x07078A2C8F9B4370L}},{{(-9L),0x07078A2C8F9B4370L,0x07078A2C8F9B4370L},{(-9L),0x07078A2C8F9B4370L,0x07078A2C8F9B4370L},{(-9L),0x07078A2C8F9B4370L,0x07078A2C8F9B4370L},{(-9L),0x07078A2C8F9B4370L,0x07078A2C8F9B4370L},{(-9L),0x07078A2C8F9B4370L,0x07078A2C8F9B4370L},{(-9L),0x07078A2C8F9B4370L,0x07078A2C8F9B4370L},{(-9L),0x07078A2C8F9B4370L,0x07078A2C8F9B4370L}},{{(-9L),0x07078A2C8F9B4370L,0x07078A2C8F9B4370L},{(-9L),0x07078A2C8F9B4370L,0x07078A2C8F9B4370L},{(-9L),0x07078A2C8F9B4370L,0x07078A2C8F9B4370L},{(-9L),0x07078A2C8F9B4370L,0x07078A2C8F9B4370L},{(-9L),0x07078A2C8F9B4370L,0x07078A2C8F9B4370L},{(-9L),0x07078A2C8F9B4370L,0x07078A2C8F9B4370L},{(-9L),0x07078A2C8F9B4370L,0x07078A2C8F9B4370L}},{{(-9L),0x07078A2C8F9B4370L,0x07078A2C8F9B4370L},{(-9L),0x07078A2C8F9B4370L,0x07078A2C8F9B4370L},{(-9L),0x07078A2C8F9B4370L,0x07078A2C8F9B4370L},{(-9L),0x07078A2C8F9B4370L,0x07078A2C8F9B4370L},{(-9L),0x07078A2C8F9B4370L,0x07078A2C8F9B4370L},{(-9L),0x07078A2C8F9B4370L,0x07078A2C8F9B4370L},{(-9L),0x07078A2C8F9B4370L,0x07078A2C8F9B4370L}},{{(-9L),0x07078A2C8F9B4370L,0x07078A2C8F9B4370L},{(-9L),0x07078A2C8F9B4370L,0x07078A2C8F9B4370L},{(-9L),0x07078A2C8F9B4370L,0x07078A2C8F9B4370L},{(-9L),0x07078A2C8F9B4370L,0x07078A2C8F9B4370L},{(-9L),0x07078A2C8F9B4370L,0x07078A2C8F9B4370L},{(-9L),0x07078A2C8F9B4370L,0x07078A2C8F9B4370L},{(-9L),0x07078A2C8F9B4370L,0x07078A2C8F9B4370L}},{{(-9L),0x07078A2C8F9B4370L,0x07078A2C8F9B4370L},{(-9L),0x07078A2C8F9B4370L,0x07078A2C8F9B4370L},{(-9L),0x07078A2C8F9B4370L,0x07078A2C8F9B4370L},{(-9L),0x07078A2C8F9B4370L,0x07078A2C8F9B4370L},{(-9L),0x07078A2C8F9B4370L,0x07078A2C8F9B4370L},{(-9L),0x07078A2C8F9B4370L,0x07078A2C8F9B4370L},{(-9L),0x07078A2C8F9B4370L,0x07078A2C8F9B4370L}},{{(-9L),0x07078A2C8F9B4370L,0x07078A2C8F9B4370L},{(-9L),0x07078A2C8F9B4370L,0x07078A2C8F9B4370L},{(-9L),0x07078A2C8F9B4370L,0x07078A2C8F9B4370L},{(-9L),0x07078A2C8F9B4370L,0x07078A2C8F9B4370L},{(-9L),0x07078A2C8F9B4370L,0x07078A2C8F9B4370L},{(-9L),0x07078A2C8F9B4370L,0x07078A2C8F9B4370L},{(-9L),0x07078A2C8F9B4370L,0x07078A2C8F9B4370L}},{{(-9L),0x07078A2C8F9B4370L,0x07078A2C8F9B4370L},{(-9L),0x07078A2C8F9B4370L,0x07078A2C8F9B4370L},{(-9L),0x07078A2C8F9B4370L,0x07078A2C8F9B4370L},{(-9L),0x07078A2C8F9B4370L,0x07078A2C8F9B4370L},{(-9L),0x07078A2C8F9B4370L,0x07078A2C8F9B4370L},{(-9L),0x07078A2C8F9B4370L,0x07078A2C8F9B4370L},{(-9L),0x07078A2C8F9B4370L,0x07078A2C8F9B4370L}},{{(-9L),0x07078A2C8F9B4370L,0x07078A2C8F9B4370L},{(-9L),0x07078A2C8F9B4370L,0x07078A2C8F9B4370L},{(-9L),0x07078A2C8F9B4370L,0x07078A2C8F9B4370L},{(-9L),0x07078A2C8F9B4370L,0x07078A2C8F9B4370L},{(-9L),0x07078A2C8F9B4370L,0x07078A2C8F9B4370L},{(-9L),0x07078A2C8F9B4370L,0x07078A2C8F9B4370L},{(-9L),0x07078A2C8F9B4370L,0x07078A2C8F9B4370L}}};
    int32_t *l_860[2][9][6] = {{{&l_801,(void*)0,&l_803[4][4][2],&l_799,&l_803[4][4][2],(void*)0},{&l_801,(void*)0,&l_803[4][4][2],&l_799,&l_803[4][4][2],(void*)0},{&l_801,(void*)0,&l_803[4][4][2],&l_799,&l_803[4][4][2],(void*)0},{&l_801,(void*)0,&l_803[4][4][2],&l_799,&l_803[4][4][2],(void*)0},{&l_801,(void*)0,&l_803[4][4][2],&l_799,&l_803[4][4][2],(void*)0},{&l_801,(void*)0,&l_803[4][4][2],&l_799,&l_803[4][4][2],(void*)0},{&l_801,(void*)0,&l_803[4][4][2],&l_799,&l_803[4][4][2],(void*)0},{&l_801,(void*)0,&l_803[4][4][2],&l_799,&l_803[4][4][2],(void*)0},{&l_801,(void*)0,&l_803[4][4][2],&l_799,&l_803[4][4][2],(void*)0}},{{&l_801,(void*)0,&l_803[4][4][2],&l_799,&l_803[4][4][2],(void*)0},{&l_801,(void*)0,&l_803[4][4][2],&l_799,&l_803[4][4][2],(void*)0},{&l_801,(void*)0,&l_803[4][4][2],&l_799,&l_803[4][4][2],(void*)0},{&l_801,(void*)0,&l_803[4][4][2],&l_799,&l_803[4][4][2],(void*)0},{&l_801,(void*)0,&l_803[4][4][2],&l_799,&l_803[4][4][2],(void*)0},{&l_801,(void*)0,&l_803[4][4][2],&l_799,&l_803[4][4][2],(void*)0},{&l_801,(void*)0,&l_803[4][4][2],&l_799,&l_803[4][4][2],(void*)0},{&l_801,(void*)0,&l_803[4][4][2],&l_799,&l_803[4][4][2],(void*)0},{&l_801,(void*)0,&l_803[4][4][2],&l_799,&l_803[4][4][2],(void*)0}}};
    uint32_t l_886 = 4294967295UL;
    struct S1 *l_1047 = &p_1060->g_325;
    uint8_t l_1050 = 0xC4L;
    int64_t l_1055 = 7L;
    union U2 *l_1059[7] = {&p_1060->g_931,&p_1060->g_931,&p_1060->g_931,&p_1060->g_931,&p_1060->g_931,&p_1060->g_931,&p_1060->g_931};
    union U2 **l_1058 = &l_1059[6];
    int i, j, k;
    for (p_1060->g_3 = 1; (p_1060->g_3 >= 0); p_1060->g_3 -= 1)
    { /* block id: 7 */
        int32_t l_7[10][5] = {{0x5F27A412L,0x5F27A412L,0x5F27A412L,0x5F27A412L,0x5F27A412L},{0x5F27A412L,0x5F27A412L,0x5F27A412L,0x5F27A412L,0x5F27A412L},{0x5F27A412L,0x5F27A412L,0x5F27A412L,0x5F27A412L,0x5F27A412L},{0x5F27A412L,0x5F27A412L,0x5F27A412L,0x5F27A412L,0x5F27A412L},{0x5F27A412L,0x5F27A412L,0x5F27A412L,0x5F27A412L,0x5F27A412L},{0x5F27A412L,0x5F27A412L,0x5F27A412L,0x5F27A412L,0x5F27A412L},{0x5F27A412L,0x5F27A412L,0x5F27A412L,0x5F27A412L,0x5F27A412L},{0x5F27A412L,0x5F27A412L,0x5F27A412L,0x5F27A412L,0x5F27A412L},{0x5F27A412L,0x5F27A412L,0x5F27A412L,0x5F27A412L,0x5F27A412L},{0x5F27A412L,0x5F27A412L,0x5F27A412L,0x5F27A412L,0x5F27A412L}};
        int8_t *l_17 = &p_1060->g_18;
        int64_t *l_32 = (void*)0;
        int64_t *l_33 = (void*)0;
        int64_t *l_34 = (void*)0;
        int64_t *l_35 = (void*)0;
        int64_t *l_36 = (void*)0;
        int64_t *l_37 = (void*)0;
        int64_t *l_38[2];
        int32_t l_620 = 6L;
        int32_t *l_782 = &p_1060->g_106[2];
        uint16_t l_794 = 0UL;
        uint64_t l_807 = 0x50725B3E02E8EC39L;
        uint16_t l_810 = 65535UL;
        uint8_t l_839 = 250UL;
        uint32_t *l_881 = &l_31;
        int16_t l_887 = 0x6384L;
        int32_t l_1051 = 0L;
        int i, j;
        for (i = 0; i < 2; i++)
            l_38[i] = (void*)0;
        (1 + 1);
    }
    for (p_1060->g_539 = 0; (p_1060->g_539 < (-8)); p_1060->g_539 = safe_sub_func_uint64_t_u_u(p_1060->g_539, 3))
    { /* block id: 424 */
        int8_t l_1054[2];
        uint8_t l_1056 = 0x21L;
        int32_t l_1057 = (-4L);
        int i;
        for (i = 0; i < 2; i++)
            l_1054[i] = 0x3EL;
        (*p_1060->g_202) &= (+l_1054[1]);
        (*p_1060->g_373) = l_1055;
        l_1057 |= l_1056;
    }
    (*l_1058) = &p_1060->g_233;
    return p_1060->g_251.f4;
}


/* ------------------------------------------ */
/* 
 * reads : p_1060->g_621 p_1060->g_627 p_1060->g_348 p_1060->g_394 p_1060->g_252.f2 p_1060->g_3 p_1060->g_351.f1 p_1060->g_172 p_1060->g_173 p_1060->g_419 p_1060->g_288.f2 p_1060->g_18 p_1060->g_351 p_1060->g_373 p_1060->g_185.f2 p_1060->g_291 p_1060->g_750 p_1060->g_106 p_1060->g_758 p_1060->g_280.f0 p_1060->l_comm_values p_1060->g_255.f1
 * writes: p_1060->g_624 p_1060->g_348 p_1060->g_394 p_1060->g_351.f1 p_1060->g_185.f2 p_1060->g_73 p_1060->g_420 p_1060->g_18 p_1060->g_108.f0 p_1060->g_233.f1 p_1060->g_106 p_1060->g_195 p_1060->g_291 p_1060->g_763
 */
int32_t  func_4(int32_t  p_5, int32_t  p_6, struct S4 * p_1060)
{ /* block id: 214 */
    volatile struct S0 *l_623 = (void*)0;
    int16_t *l_634 = &p_1060->g_394;
    int32_t l_641 = 0x45BC90E9L;
    struct S0 *l_644 = &p_1060->g_319;
    struct S0 *l_645 = &p_1060->g_351;
    uint32_t l_646 = 0x03E02B66L;
    int16_t l_647[4] = {0x02ECL,0x02ECL,0x02ECL,0x02ECL};
    int16_t l_648 = 0x51F1L;
    int32_t l_676 = (-1L);
    int32_t l_680[7];
    int64_t *l_726 = &p_1060->g_539;
    uint32_t l_745 = 7UL;
    int8_t *l_753[8] = {&p_1060->g_108.f3,&p_1060->g_108.f3,&p_1060->g_108.f3,&p_1060->g_108.f3,&p_1060->g_108.f3,&p_1060->g_108.f3,&p_1060->g_108.f3,&p_1060->g_108.f3};
    int64_t l_764 = 9L;
    struct S1 *l_772 = &p_1060->g_325;
    struct S1 **l_771 = &l_772;
    int32_t *l_773[7][4] = {{&l_680[5],(void*)0,&l_680[5],&p_1060->g_106[0]},{&l_680[5],(void*)0,&l_680[5],&p_1060->g_106[0]},{&l_680[5],(void*)0,&l_680[5],&p_1060->g_106[0]},{&l_680[5],(void*)0,&l_680[5],&p_1060->g_106[0]},{&l_680[5],(void*)0,&l_680[5],&p_1060->g_106[0]},{&l_680[5],(void*)0,&l_680[5],&p_1060->g_106[0]},{&l_680[5],(void*)0,&l_680[5],&p_1060->g_106[0]}};
    int i, j;
    for (i = 0; i < 7; i++)
        l_680[i] = 3L;
    p_1060->g_624 = p_1060->g_621;
    if (((safe_rshift_func_int16_t_s_s((p_1060->g_627 , ((p_6 <= (((((p_5 = (safe_rshift_func_uint16_t_u_s((p_1060->g_348--), (safe_sub_func_int64_t_s_s(((0xFFEEL & FAKE_DIVERGE(p_1060->local_2_offset, get_local_id(2), 10)) | ((FAKE_DIVERGE(p_1060->global_1_offset, get_global_id(1), 10) , l_634) == (void*)0)), ((safe_add_func_int8_t_s_s((((*l_634) &= (safe_lshift_func_int16_t_s_s((p_5 == (safe_rshift_func_uint16_t_u_u(l_641, 11))), ((~(safe_mul_func_int8_t_s_s((-1L), ((l_645 = l_644) == (void*)0)))) | FAKE_DIVERGE(p_1060->group_1_offset, get_group_id(1), 10))))) ^ 2UL), l_641)) & l_646)))))) || l_646) < p_1060->g_252.f2) < l_647[1]) <= 0x072B8614D91E1D9AL)) ^ l_648)), 7)) ^ p_1060->g_3))
    { /* block id: 220 */
        int32_t l_649 = 0x3EE69355L;
        int32_t l_652[6][3] = {{6L,6L,6L},{6L,6L,6L},{6L,6L,6L},{6L,6L,6L},{6L,6L,6L},{6L,6L,6L}};
        uint8_t l_681 = 0x49L;
        int8_t *l_751 = &p_1060->g_325.f3;
        int32_t *l_766 = &l_676;
        int32_t *l_767[7] = {&p_1060->g_73,&p_1060->g_73,&p_1060->g_73,&p_1060->g_73,&p_1060->g_73,&p_1060->g_73,&p_1060->g_73};
        uint64_t l_768 = 1UL;
        int i, j;
        l_649 = 6L;
        for (p_1060->g_351.f1 = (-20); (p_1060->g_351.f1 == 51); p_1060->g_351.f1 = safe_add_func_int32_t_s_s(p_1060->g_351.f1, 2))
        { /* block id: 224 */
            int32_t *l_653 = (void*)0;
            int32_t *l_654 = &p_1060->g_53;
            int32_t *l_655 = &l_652[4][1];
            int32_t l_656 = 0x79FC0D8AL;
            int32_t *l_657 = &l_652[4][1];
            int32_t *l_658 = (void*)0;
            int32_t *l_659 = (void*)0;
            int32_t *l_660 = &l_652[4][1];
            int32_t *l_661 = &l_656;
            int32_t *l_662 = &l_641;
            int32_t *l_663 = (void*)0;
            int32_t *l_664 = &p_1060->g_106[0];
            int32_t *l_665 = &p_1060->g_106[4];
            int32_t *l_666 = &l_656;
            int32_t *l_667 = &l_656;
            int32_t *l_668 = &p_1060->g_106[3];
            int32_t *l_669 = &l_656;
            int32_t *l_670 = &l_641;
            int32_t *l_671 = &p_1060->g_106[0];
            int32_t *l_672 = &l_652[4][1];
            int32_t *l_673 = (void*)0;
            int32_t *l_674 = &l_652[2][2];
            int32_t *l_675 = (void*)0;
            int32_t l_677 = 0x0B4B7D10L;
            int32_t *l_678 = &l_677;
            int32_t *l_679[10][9][2] = {{{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676}},{{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676}},{{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676}},{{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676}},{{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676}},{{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676}},{{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676}},{{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676}},{{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676}},{{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676},{&p_1060->g_73,&l_676}}};
            int i, j, k;
            ++l_681;
        }
        for (l_676 = (-11); (l_676 != (-9)); l_676++)
        { /* block id: 229 */
            uint16_t l_687 = 0x9114L;
            int32_t l_711 = 0x4195243BL;
            int32_t l_712[3];
            uint8_t *l_740 = &p_1060->g_2[2][1][3];
            int32_t *l_765 = &l_680[4];
            int i;
            for (i = 0; i < 3; i++)
                l_712[i] = (-1L);
            for (p_1060->g_185.f2 = 0; (p_1060->g_185.f2 <= 6); p_1060->g_185.f2 += 1)
            { /* block id: 232 */
                uint64_t l_703[8];
                int32_t l_706 = 0L;
                int32_t l_707 = 0L;
                int32_t l_709 = 1L;
                int32_t l_710[8][9][3] = {{{0x0D0FD780L,0x69A5ACC0L,0x0D0FD780L},{0x0D0FD780L,0x69A5ACC0L,0x0D0FD780L},{0x0D0FD780L,0x69A5ACC0L,0x0D0FD780L},{0x0D0FD780L,0x69A5ACC0L,0x0D0FD780L},{0x0D0FD780L,0x69A5ACC0L,0x0D0FD780L},{0x0D0FD780L,0x69A5ACC0L,0x0D0FD780L},{0x0D0FD780L,0x69A5ACC0L,0x0D0FD780L},{0x0D0FD780L,0x69A5ACC0L,0x0D0FD780L},{0x0D0FD780L,0x69A5ACC0L,0x0D0FD780L}},{{0x0D0FD780L,0x69A5ACC0L,0x0D0FD780L},{0x0D0FD780L,0x69A5ACC0L,0x0D0FD780L},{0x0D0FD780L,0x69A5ACC0L,0x0D0FD780L},{0x0D0FD780L,0x69A5ACC0L,0x0D0FD780L},{0x0D0FD780L,0x69A5ACC0L,0x0D0FD780L},{0x0D0FD780L,0x69A5ACC0L,0x0D0FD780L},{0x0D0FD780L,0x69A5ACC0L,0x0D0FD780L},{0x0D0FD780L,0x69A5ACC0L,0x0D0FD780L},{0x0D0FD780L,0x69A5ACC0L,0x0D0FD780L}},{{0x0D0FD780L,0x69A5ACC0L,0x0D0FD780L},{0x0D0FD780L,0x69A5ACC0L,0x0D0FD780L},{0x0D0FD780L,0x69A5ACC0L,0x0D0FD780L},{0x0D0FD780L,0x69A5ACC0L,0x0D0FD780L},{0x0D0FD780L,0x69A5ACC0L,0x0D0FD780L},{0x0D0FD780L,0x69A5ACC0L,0x0D0FD780L},{0x0D0FD780L,0x69A5ACC0L,0x0D0FD780L},{0x0D0FD780L,0x69A5ACC0L,0x0D0FD780L},{0x0D0FD780L,0x69A5ACC0L,0x0D0FD780L}},{{0x0D0FD780L,0x69A5ACC0L,0x0D0FD780L},{0x0D0FD780L,0x69A5ACC0L,0x0D0FD780L},{0x0D0FD780L,0x69A5ACC0L,0x0D0FD780L},{0x0D0FD780L,0x69A5ACC0L,0x0D0FD780L},{0x0D0FD780L,0x69A5ACC0L,0x0D0FD780L},{0x0D0FD780L,0x69A5ACC0L,0x0D0FD780L},{0x0D0FD780L,0x69A5ACC0L,0x0D0FD780L},{0x0D0FD780L,0x69A5ACC0L,0x0D0FD780L},{0x0D0FD780L,0x69A5ACC0L,0x0D0FD780L}},{{0x0D0FD780L,0x69A5ACC0L,0x0D0FD780L},{0x0D0FD780L,0x69A5ACC0L,0x0D0FD780L},{0x0D0FD780L,0x69A5ACC0L,0x0D0FD780L},{0x0D0FD780L,0x69A5ACC0L,0x0D0FD780L},{0x0D0FD780L,0x69A5ACC0L,0x0D0FD780L},{0x0D0FD780L,0x69A5ACC0L,0x0D0FD780L},{0x0D0FD780L,0x69A5ACC0L,0x0D0FD780L},{0x0D0FD780L,0x69A5ACC0L,0x0D0FD780L},{0x0D0FD780L,0x69A5ACC0L,0x0D0FD780L}},{{0x0D0FD780L,0x69A5ACC0L,0x0D0FD780L},{0x0D0FD780L,0x69A5ACC0L,0x0D0FD780L},{0x0D0FD780L,0x69A5ACC0L,0x0D0FD780L},{0x0D0FD780L,0x69A5ACC0L,0x0D0FD780L},{0x0D0FD780L,0x69A5ACC0L,0x0D0FD780L},{0x0D0FD780L,0x69A5ACC0L,0x0D0FD780L},{0x0D0FD780L,0x69A5ACC0L,0x0D0FD780L},{0x0D0FD780L,0x69A5ACC0L,0x0D0FD780L},{0x0D0FD780L,0x69A5ACC0L,0x0D0FD780L}},{{0x0D0FD780L,0x69A5ACC0L,0x0D0FD780L},{0x0D0FD780L,0x69A5ACC0L,0x0D0FD780L},{0x0D0FD780L,0x69A5ACC0L,0x0D0FD780L},{0x0D0FD780L,0x69A5ACC0L,0x0D0FD780L},{0x0D0FD780L,0x69A5ACC0L,0x0D0FD780L},{0x0D0FD780L,0x69A5ACC0L,0x0D0FD780L},{0x0D0FD780L,0x69A5ACC0L,0x0D0FD780L},{0x0D0FD780L,0x69A5ACC0L,0x0D0FD780L},{0x0D0FD780L,0x69A5ACC0L,0x0D0FD780L}},{{0x0D0FD780L,0x69A5ACC0L,0x0D0FD780L},{0x0D0FD780L,0x69A5ACC0L,0x0D0FD780L},{0x0D0FD780L,0x69A5ACC0L,0x0D0FD780L},{0x0D0FD780L,0x69A5ACC0L,0x0D0FD780L},{0x0D0FD780L,0x69A5ACC0L,0x0D0FD780L},{0x0D0FD780L,0x69A5ACC0L,0x0D0FD780L},{0x0D0FD780L,0x69A5ACC0L,0x0D0FD780L},{0x0D0FD780L,0x69A5ACC0L,0x0D0FD780L},{0x0D0FD780L,0x69A5ACC0L,0x0D0FD780L}}};
                uint16_t *l_725 = &p_1060->g_126;
                int i, j, k;
                for (i = 0; i < 8; i++)
                    l_703[i] = 0xA45B3C78FBDF5DB7L;
                for (p_1060->g_73 = 8; (p_1060->g_73 >= 0); p_1060->g_73 -= 1)
                { /* block id: 235 */
                    int32_t *l_686[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                    int32_t ***l_696 = &p_1060->g_170;
                    int64_t l_704 = 0x170BED2741A93095L;
                    uint8_t l_714 = 4UL;
                    uint16_t *l_728 = &p_1060->g_351.f0;
                    uint16_t l_744 = 0xA50BL;
                    int i;
                    ++l_687;
                    if ((safe_mul_func_uint16_t_u_u((p_5 <= 0x155C391AL), ((safe_mul_func_int16_t_s_s(((*p_1060->g_172) < 7UL), 0x511DL)) , (safe_add_func_uint32_t_u_u(((((*p_1060->g_419) = l_696) != (((18446744073709551607UL && ((safe_add_func_int64_t_s_s(((((safe_mod_func_int32_t_s_s((l_652[2][0] = (safe_add_func_int8_t_s_s((-1L), 0x72L))), l_703[5])) > p_6) < 0xC01CAD269A5C2732L) || l_687), (-1L))) && 251UL)) | 0UL) , (void*)0)) | p_1060->g_288.f2), 0x2064BAF6L))))))
                    { /* block id: 239 */
                        int16_t l_705[8] = {8L,8L,8L,8L,8L,8L,8L,8L};
                        int32_t l_708[2];
                        int64_t **l_727 = &l_726;
                        uint8_t *l_734 = (void*)0;
                        uint8_t **l_733 = &l_734;
                        int8_t *l_739 = &p_1060->g_18;
                        uint32_t *l_741 = &p_1060->g_108.f0;
                        int16_t l_742 = 0x663EL;
                        uint64_t *l_743 = &p_1060->g_233.f1;
                        int i;
                        for (i = 0; i < 2; i++)
                            l_708[i] = 1L;
                        --l_714;
                        p_6 = (safe_sub_func_uint16_t_u_u(((safe_add_func_uint64_t_u_u((!0xACB3B5DA5854FE8CL), (((safe_rshift_func_uint16_t_u_u(((safe_add_func_int64_t_s_s((l_725 == ((((*l_727) = l_726) == &p_1060->g_539) , l_728)), ((*l_743) = (safe_lshift_func_uint8_t_u_u((((safe_add_func_int64_t_s_s((func_80(((*l_741) = (((((*l_733) = &l_681) != (((l_648 || l_712[2]) , ((*l_739) &= (safe_mod_func_uint16_t_u_u((safe_div_func_uint32_t_u_u(p_1060->g_252.f2, 0x272A1D61L)), 3L)))) , l_740)) , l_709) , p_5)), p_1060) , l_742), l_712[1])) , p_5) || l_652[5][0]), 2))))) >= 0x5CFCF967FFB2BB8AL), 11)) > 0x52L) || p_6))) <= p_6), l_744));
                        l_745++;
                    }
                    else
                    { /* block id: 248 */
                        uint32_t *l_749 = (void*)0;
                        uint32_t **l_748 = &l_749;
                        int8_t **l_752[9];
                        int64_t **l_754 = (void*)0;
                        int64_t **l_755 = (void*)0;
                        int64_t **l_756 = &p_1060->g_195;
                        int32_t l_757[2];
                        int i;
                        for (i = 0; i < 9; i++)
                            l_752[i] = &l_751;
                        for (i = 0; i < 2; i++)
                            l_757[i] = (-9L);
                        p_1060->g_106[0] &= ((((*l_748) = p_1060->g_373) == (p_1060->g_291[p_1060->g_185.f2] , (p_1060->g_750 , p_1060->g_373))) & (p_6 <= ((l_751 = l_751) == l_753[5])));
                        l_757[0] &= (&p_1060->g_195 == ((((*l_756) = (void*)0) == (void*)0) , &p_1060->g_172));
                        p_1060->g_291[p_1060->g_185.f2] = p_1060->g_758;
                    }
                }
                if (l_712[0])
                { /* block id: 257 */
                    uint32_t l_759 = 4294967286UL;
                    ++l_759;
                    for (l_646 = 0; (l_646 <= 9); l_646 += 1)
                    { /* block id: 261 */
                        p_1060->g_763[1] = func_80((l_676 , ((safe_unary_minus_func_uint8_t_u(p_5)) ^ l_712[1])), p_1060);
                    }
                    if (p_5)
                        break;
                }
                else
                { /* block id: 265 */
                    p_5 |= 0L;
                }
                p_6 = p_5;
            }
            l_652[3][1] &= (l_764 > l_687);
            (*l_765) = 0x099D53B5L;
        }
        --l_768;
    }
    else
    { /* block id: 274 */
        uint16_t l_774[2][6] = {{0UL,0UL,0UL,0UL,0UL,0UL},{0UL,0UL,0UL,0UL,0UL,0UL}};
        int32_t l_779 = (-4L);
        int i, j;
        p_6 |= (l_771 != &l_772);
        l_773[1][3] = &p_6;
        if (((p_1060->g_280[1].f0 >= p_6) , p_5))
        { /* block id: 277 */
lbl_780:
            p_5 = (p_1060->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1060->tid, 35))] | p_1060->g_255.f1);
            --l_774[0][2];
        }
        else
        { /* block id: 280 */
            int32_t *l_781[6][6] = {{&l_680[1],&l_680[5],&l_680[5],&p_1060->g_73,&l_680[5],&p_1060->g_73},{&l_680[1],&l_680[5],&l_680[5],&p_1060->g_73,&l_680[5],&p_1060->g_73},{&l_680[1],&l_680[5],&l_680[5],&p_1060->g_73,&l_680[5],&p_1060->g_73},{&l_680[1],&l_680[5],&l_680[5],&p_1060->g_73,&l_680[5],&p_1060->g_73},{&l_680[1],&l_680[5],&l_680[5],&p_1060->g_73,&l_680[5],&p_1060->g_73},{&l_680[1],&l_680[5],&l_680[5],&p_1060->g_73,&l_680[5],&p_1060->g_73}};
            int i, j;
            for (p_6 = (-5); (p_6 != (-15)); --p_6)
            { /* block id: 283 */
                return l_779;
            }
            if (p_1060->g_394)
                goto lbl_780;
            l_781[2][1] = (void*)0;
        }
    }
    return p_6;
}


/* ------------------------------------------ */
/* 
 * reads : p_1060->g_351.f0 p_1060->g_284.f2 p_1060->g_619
 * writes: p_1060->g_351.f0 p_1060->g_619
 */
int32_t  func_8(int8_t * p_9, int64_t  p_10, int8_t * p_11, struct S4 * p_1060)
{ /* block id: 203 */
    uint8_t *l_601[1];
    int32_t l_610[4][10][6] = {{{(-9L),6L,0x4A9457B3L,(-1L),0x4A9457B3L,6L},{(-9L),6L,0x4A9457B3L,(-1L),0x4A9457B3L,6L},{(-9L),6L,0x4A9457B3L,(-1L),0x4A9457B3L,6L},{(-9L),6L,0x4A9457B3L,(-1L),0x4A9457B3L,6L},{(-9L),6L,0x4A9457B3L,(-1L),0x4A9457B3L,6L},{(-9L),6L,0x4A9457B3L,(-1L),0x4A9457B3L,6L},{(-9L),6L,0x4A9457B3L,(-1L),0x4A9457B3L,6L},{(-9L),6L,0x4A9457B3L,(-1L),0x4A9457B3L,6L},{(-9L),6L,0x4A9457B3L,(-1L),0x4A9457B3L,6L},{(-9L),6L,0x4A9457B3L,(-1L),0x4A9457B3L,6L}},{{(-9L),6L,0x4A9457B3L,(-1L),0x4A9457B3L,6L},{(-9L),6L,0x4A9457B3L,(-1L),0x4A9457B3L,6L},{(-9L),6L,0x4A9457B3L,(-1L),0x4A9457B3L,6L},{(-9L),6L,0x4A9457B3L,(-1L),0x4A9457B3L,6L},{(-9L),6L,0x4A9457B3L,(-1L),0x4A9457B3L,6L},{(-9L),6L,0x4A9457B3L,(-1L),0x4A9457B3L,6L},{(-9L),6L,0x4A9457B3L,(-1L),0x4A9457B3L,6L},{(-9L),6L,0x4A9457B3L,(-1L),0x4A9457B3L,6L},{(-9L),6L,0x4A9457B3L,(-1L),0x4A9457B3L,6L},{(-9L),6L,0x4A9457B3L,(-1L),0x4A9457B3L,6L}},{{(-9L),6L,0x4A9457B3L,(-1L),0x4A9457B3L,6L},{(-9L),6L,0x4A9457B3L,(-1L),0x4A9457B3L,6L},{(-9L),6L,0x4A9457B3L,(-1L),0x4A9457B3L,6L},{(-9L),6L,0x4A9457B3L,(-1L),0x4A9457B3L,6L},{(-9L),6L,0x4A9457B3L,(-1L),0x4A9457B3L,6L},{(-9L),6L,0x4A9457B3L,(-1L),0x4A9457B3L,6L},{(-9L),6L,0x4A9457B3L,(-1L),0x4A9457B3L,6L},{(-9L),6L,0x4A9457B3L,(-1L),0x4A9457B3L,6L},{(-9L),6L,0x4A9457B3L,(-1L),0x4A9457B3L,6L},{(-9L),6L,0x4A9457B3L,(-1L),0x4A9457B3L,6L}},{{(-9L),6L,0x4A9457B3L,(-1L),0x4A9457B3L,6L},{(-9L),6L,0x4A9457B3L,(-1L),0x4A9457B3L,6L},{(-9L),6L,0x4A9457B3L,(-1L),0x4A9457B3L,6L},{(-9L),6L,0x4A9457B3L,(-1L),0x4A9457B3L,6L},{(-9L),6L,0x4A9457B3L,(-1L),0x4A9457B3L,6L},{(-9L),6L,0x4A9457B3L,(-1L),0x4A9457B3L,6L},{(-9L),6L,0x4A9457B3L,(-1L),0x4A9457B3L,6L},{(-9L),6L,0x4A9457B3L,(-1L),0x4A9457B3L,6L},{(-9L),6L,0x4A9457B3L,(-1L),0x4A9457B3L,6L},{(-9L),6L,0x4A9457B3L,(-1L),0x4A9457B3L,6L}}};
    int32_t l_617 = 0x1641ACC5L;
    int64_t l_618 = 0x4762EB2117CD219AL;
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_601[i] = (void*)0;
    for (p_1060->g_351.f0 = 0; (p_1060->g_351.f0 < 33); ++p_1060->g_351.f0)
    { /* block id: 206 */
        uint8_t *l_600 = &p_1060->g_2[4][0][0];
        uint8_t **l_599[1][4] = {{&l_600,&l_600,&l_600,&l_600}};
        int32_t l_615[6][2] = {{1L,0x348D35D5L},{1L,0x348D35D5L},{1L,0x348D35D5L},{1L,0x348D35D5L},{1L,0x348D35D5L},{1L,0x348D35D5L}};
        int32_t *l_616[7] = {&p_1060->g_106[0],&p_1060->g_106[0],&p_1060->g_106[0],&p_1060->g_106[0],&p_1060->g_106[0],&p_1060->g_106[0],&p_1060->g_106[0]};
        int i, j;
        l_617 &= (safe_rshift_func_int16_t_s_u((((l_601[0] = &p_1060->g_2[6][1][3]) != ((safe_rshift_func_int16_t_s_s(((safe_sub_func_uint32_t_u_u(0x656A6792L, FAKE_DIVERGE(p_1060->group_0_offset, get_group_id(0), 10))) < (safe_sub_func_int8_t_s_s((((p_10 >= (safe_rshift_func_uint8_t_u_u(p_1060->g_284.f2, 0))) > (((l_610[3][7][2] == (safe_mod_func_uint8_t_u_u((safe_mul_func_int8_t_s_s((0x01ECL > 65535UL), l_615[5][0])), l_610[3][7][2]))) ^ p_10) || (-2L))) ^ FAKE_DIVERGE(p_1060->local_0_offset, get_local_id(0), 10)), p_10))), 1)) , p_11)) && GROUP_DIVERGE(0, 1)), FAKE_DIVERGE(p_1060->local_2_offset, get_local_id(2), 10)));
        p_1060->g_619 &= l_618;
        if (l_610[3][7][2])
            break;
    }
    return p_10;
}


/* ------------------------------------------ */
/* 
 * reads : p_1060->g_185.f1 p_1060->g_288.f3 p_1060->g_2 p_1060->g_3 p_1060->g_593
 * writes: p_1060->g_185.f1 p_1060->g_2 p_1060->g_18 p_1060->g_comm_values p_1060->g_593
 */
int8_t * func_12(int8_t * p_13, int32_t  p_14, int64_t  p_15, uint32_t  p_16, struct S4 * p_1060)
{ /* block id: 191 */
    int32_t **l_584[8][3];
    int32_t **l_587 = &p_1060->g_202;
    int i, j;
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 3; j++)
            l_584[i][j] = &p_1060->g_202;
    }
    for (p_1060->g_185.f1 = 23; (p_1060->g_185.f1 < 11); --p_1060->g_185.f1)
    { /* block id: 194 */
        int32_t l_579 = (-9L);
        struct S1 **l_580 = (void*)0;
        int32_t ***l_583 = &p_1060->g_170;
        int32_t ***l_585 = &p_1060->g_170;
        int32_t ***l_586[2];
        uint8_t *l_588 = &p_1060->g_2[4][1][2];
        int64_t *l_589 = (void*)0;
        int64_t *l_590 = (void*)0;
        int64_t *l_591 = (void*)0;
        int32_t l_592 = 0x7DD999E7L;
        int i;
        for (i = 0; i < 2; i++)
            l_586[i] = &p_1060->g_170;
        l_592 = (+(safe_mod_func_int8_t_s_s((safe_add_func_uint16_t_u_u((l_579 <= FAKE_DIVERGE(p_1060->group_1_offset, get_group_id(1), 10)), (((((void*)0 != l_580) & ((safe_lshift_func_uint16_t_u_u(p_1060->g_288.f3, 1)) > (p_1060->g_comm_values[p_1060->tid] = ((p_14 <= p_16) <= ((*p_13) = ((+((*l_588) &= ((l_583 == (void*)0) ^ ((l_584[2][2] = l_584[2][2]) == l_587)))) && p_1060->g_3)))))) , &p_1060->g_547) != (void*)0))), 9UL)));
        p_1060->g_593 ^= p_16;
    }
    return &p_1060->g_18;
}


/* ------------------------------------------ */
/* 
 * reads : p_1060->g_3 p_1060->g_comm_values p_1060->g_18 p_1060->g_2 p_1060->g_97 p_1060->l_comm_values p_1060->g_106 p_1060->g_73 p_1060->g_108 p_1060->g_126 p_1060->g_143 p_1060->g_146 p_1060->g_155 p_1060->g_161 p_1060->g_170 p_1060->g_172 p_1060->g_156.f0 p_1060->g_185 p_1060->g_195 p_1060->g_223 p_1060->g_233 p_1060->g_245 p_1060->g_250 p_1060->g_317 p_1060->g_296.f5 p_1060->g_319 p_1060->g_325 p_1060->g_324 p_1060->g_348 p_1060->g_351 p_1060->g_263.f5 p_1060->g_298.f1 p_1060->g_367 p_1060->g_368 p_1060->g_373 p_1060->g_378 p_1060->g_291.f4 p_1060->g_233.f0 p_1060->g_394 p_1060->g_419 p_1060->g_53 p_1060->g_429 p_1060->g_429.f3 p_1060->g_284.f0 p_1060->g_268.f2 p_1060->g_253.f5 p_1060->g_376 p_1060->g_270.f1 p_1060->g_547 p_1060->g_173 p_1060->g_274.f3 p_1060->g_539
 * writes: p_1060->g_53 p_1060->g_18 p_1060->l_comm_values p_1060->g_108 p_1060->g_126 p_1060->g_146 p_1060->g_170 p_1060->g_195 p_1060->g_106 p_1060->g_73 p_1060->g_202 p_1060->g_185 p_1060->g_161 p_1060->g_245 p_1060->g_324 p_1060->g_348 p_1060->g_118 p_1060->g_253 p_1060->g_319.f3 p_1060->g_379 p_1060->g_419 p_1060->g_429.f1 p_1060->g_429.f3 p_1060->g_539 p_1060->g_351.f3 p_1060->g_2
 */
int64_t  func_21(int8_t  p_22, int16_t  p_23, int32_t  p_24, int8_t * p_25, int8_t * p_26, struct S4 * p_1060)
{ /* block id: 9 */
    int32_t l_46 = (-4L);
    int32_t *l_51 = (void*)0;
    int32_t *l_52 = &p_1060->g_53;
    int64_t *l_353 = (void*)0;
    int8_t *l_354 = &p_1060->g_325.f3;
    int16_t *l_375[6];
    int32_t l_377 = 0x74814A27L;
    int32_t l_397 = (-8L);
    int32_t l_412 = 0L;
    int32_t l_413 = 0x0C0BB32CL;
    struct S1 *l_447 = &p_1060->g_108;
    int32_t l_459 = 2L;
    int32_t l_462 = 1L;
    int32_t l_465 = (-1L);
    int32_t l_466 = (-4L);
    int32_t l_467 = 3L;
    int32_t l_472 = 0x0D8CE236L;
    int32_t l_474[9][10][2] = {{{1L,(-2L)},{1L,(-2L)},{1L,(-2L)},{1L,(-2L)},{1L,(-2L)},{1L,(-2L)},{1L,(-2L)},{1L,(-2L)},{1L,(-2L)},{1L,(-2L)}},{{1L,(-2L)},{1L,(-2L)},{1L,(-2L)},{1L,(-2L)},{1L,(-2L)},{1L,(-2L)},{1L,(-2L)},{1L,(-2L)},{1L,(-2L)},{1L,(-2L)}},{{1L,(-2L)},{1L,(-2L)},{1L,(-2L)},{1L,(-2L)},{1L,(-2L)},{1L,(-2L)},{1L,(-2L)},{1L,(-2L)},{1L,(-2L)},{1L,(-2L)}},{{1L,(-2L)},{1L,(-2L)},{1L,(-2L)},{1L,(-2L)},{1L,(-2L)},{1L,(-2L)},{1L,(-2L)},{1L,(-2L)},{1L,(-2L)},{1L,(-2L)}},{{1L,(-2L)},{1L,(-2L)},{1L,(-2L)},{1L,(-2L)},{1L,(-2L)},{1L,(-2L)},{1L,(-2L)},{1L,(-2L)},{1L,(-2L)},{1L,(-2L)}},{{1L,(-2L)},{1L,(-2L)},{1L,(-2L)},{1L,(-2L)},{1L,(-2L)},{1L,(-2L)},{1L,(-2L)},{1L,(-2L)},{1L,(-2L)},{1L,(-2L)}},{{1L,(-2L)},{1L,(-2L)},{1L,(-2L)},{1L,(-2L)},{1L,(-2L)},{1L,(-2L)},{1L,(-2L)},{1L,(-2L)},{1L,(-2L)},{1L,(-2L)}},{{1L,(-2L)},{1L,(-2L)},{1L,(-2L)},{1L,(-2L)},{1L,(-2L)},{1L,(-2L)},{1L,(-2L)},{1L,(-2L)},{1L,(-2L)},{1L,(-2L)}},{{1L,(-2L)},{1L,(-2L)},{1L,(-2L)},{1L,(-2L)},{1L,(-2L)},{1L,(-2L)},{1L,(-2L)},{1L,(-2L)},{1L,(-2L)},{1L,(-2L)}}};
    int8_t l_483[8][5][6] = {{{0x34L,0x34L,2L,0x43L,0L,0x43L},{0x34L,0x34L,2L,0x43L,0L,0x43L},{0x34L,0x34L,2L,0x43L,0L,0x43L},{0x34L,0x34L,2L,0x43L,0L,0x43L},{0x34L,0x34L,2L,0x43L,0L,0x43L}},{{0x34L,0x34L,2L,0x43L,0L,0x43L},{0x34L,0x34L,2L,0x43L,0L,0x43L},{0x34L,0x34L,2L,0x43L,0L,0x43L},{0x34L,0x34L,2L,0x43L,0L,0x43L},{0x34L,0x34L,2L,0x43L,0L,0x43L}},{{0x34L,0x34L,2L,0x43L,0L,0x43L},{0x34L,0x34L,2L,0x43L,0L,0x43L},{0x34L,0x34L,2L,0x43L,0L,0x43L},{0x34L,0x34L,2L,0x43L,0L,0x43L},{0x34L,0x34L,2L,0x43L,0L,0x43L}},{{0x34L,0x34L,2L,0x43L,0L,0x43L},{0x34L,0x34L,2L,0x43L,0L,0x43L},{0x34L,0x34L,2L,0x43L,0L,0x43L},{0x34L,0x34L,2L,0x43L,0L,0x43L},{0x34L,0x34L,2L,0x43L,0L,0x43L}},{{0x34L,0x34L,2L,0x43L,0L,0x43L},{0x34L,0x34L,2L,0x43L,0L,0x43L},{0x34L,0x34L,2L,0x43L,0L,0x43L},{0x34L,0x34L,2L,0x43L,0L,0x43L},{0x34L,0x34L,2L,0x43L,0L,0x43L}},{{0x34L,0x34L,2L,0x43L,0L,0x43L},{0x34L,0x34L,2L,0x43L,0L,0x43L},{0x34L,0x34L,2L,0x43L,0L,0x43L},{0x34L,0x34L,2L,0x43L,0L,0x43L},{0x34L,0x34L,2L,0x43L,0L,0x43L}},{{0x34L,0x34L,2L,0x43L,0L,0x43L},{0x34L,0x34L,2L,0x43L,0L,0x43L},{0x34L,0x34L,2L,0x43L,0L,0x43L},{0x34L,0x34L,2L,0x43L,0L,0x43L},{0x34L,0x34L,2L,0x43L,0L,0x43L}},{{0x34L,0x34L,2L,0x43L,0L,0x43L},{0x34L,0x34L,2L,0x43L,0L,0x43L},{0x34L,0x34L,2L,0x43L,0L,0x43L},{0x34L,0x34L,2L,0x43L,0L,0x43L},{0x34L,0x34L,2L,0x43L,0L,0x43L}}};
    uint32_t l_500 = 0UL;
    int32_t *l_555 = &p_1060->g_73;
    int32_t *l_556 = (void*)0;
    int32_t *l_557 = &p_1060->g_73;
    int32_t *l_558 = &l_465;
    int32_t *l_559 = &l_465;
    int32_t *l_560 = &l_412;
    int32_t *l_561[10] = {&p_1060->g_3,&l_459,&p_1060->g_3,&p_1060->g_3,&l_459,&p_1060->g_3,&p_1060->g_3,&l_459,&p_1060->g_3,&p_1060->g_3};
    int8_t l_562 = 0x2CL;
    uint16_t l_563[7] = {0xABA3L,9UL,0xABA3L,0xABA3L,9UL,0xABA3L,0xABA3L};
    uint8_t *l_566 = &p_1060->g_2[4][1][1];
    uint16_t *l_567[3];
    int64_t l_568 = 0x23E0155B13C9DD04L;
    int64_t **l_571 = &p_1060->g_195;
    struct S0 *l_572 = &p_1060->g_185;
    int i, j, k;
    for (i = 0; i < 6; i++)
        l_375[i] = &p_1060->g_376;
    for (i = 0; i < 3; i++)
        l_567[i] = &p_1060->g_185.f0;
    if (((-1L) < (safe_sub_func_uint16_t_u_u(l_46, (l_377 |= (GROUP_DIVERGE(2, 1) && (safe_mod_func_int8_t_s_s(p_1060->g_3, (safe_div_func_int32_t_s_s(((*l_52) = l_46), (safe_add_func_uint16_t_u_u(func_56((((safe_add_func_int8_t_s_s(((*p_26) ^= p_1060->g_comm_values[p_1060->tid]), ((p_23 ^ ((safe_mod_func_uint64_t_u_u((((safe_div_func_uint32_t_u_u((safe_div_func_uint32_t_u_u(p_1060->g_2[5][1][4], func_69((p_1060->g_3 , 0x8915D48947DE68BDL), p_1060))), 0xAFF3E48AL)) != (-5L)) , 0x7C4979838588B505L), p_1060->g_351.f0)) || 0x04L)) && p_1060->g_263.f5))) == p_1060->g_325.f0) , p_1060->g_195), l_353, l_354, p_1060->g_comm_values[p_1060->tid], p_1060), p_1060->g_325.f0))))))))))))
    { /* block id: 116 */
        return p_24;
    }
    else
    { /* block id: 118 */
        uint8_t l_388[7] = {0x18L,0x33L,0x18L,0x18L,0x33L,0x18L,0x18L};
        int64_t *l_390 = (void*)0;
        int32_t l_393 = 1L;
        int64_t l_395 = (-9L);
        int16_t l_438[5];
        int16_t l_453 = (-6L);
        int32_t l_457 = (-6L);
        int32_t l_458 = (-7L);
        int32_t l_460 = (-1L);
        int32_t l_461 = 1L;
        int32_t l_470 = 0L;
        int32_t l_475[10] = {1L,8L,1L,1L,8L,1L,1L,8L,1L,1L};
        int32_t l_482 = 1L;
        int8_t l_513 = 0x1EL;
        uint16_t *l_544 = &p_1060->g_233.f0;
        uint32_t l_554 = 0xA485B180L;
        int i;
        for (i = 0; i < 5; i++)
            l_438[i] = 1L;
        if ((!(p_1060->g_378 == (void*)0)))
        { /* block id: 119 */
            uint32_t l_389 = 0x9C461FC0L;
            int32_t l_396[5] = {(-1L),(-1L),(-1L),(-1L),(-1L)};
            int i;
            p_1060->g_379 = (void*)0;
            l_396[2] = (safe_mul_func_int8_t_s_s((safe_mul_func_int16_t_s_s((((safe_sub_func_int8_t_s_s((safe_lshift_func_int16_t_s_s(((((l_388[4] , (l_389 == p_1060->g_291[2].f4)) != GROUP_DIVERGE(0, 1)) , &p_1060->g_173) == l_390), 14)), (((((safe_add_func_int32_t_s_s(l_388[4], ((&l_46 == (((l_393 = (l_389 ^ p_1060->g_233.f0)) <= 18446744073709551615UL) , &p_24)) | p_24))) , p_24) || 0x72214ABFF246976AL) , p_1060->g_394) , 0L))) , (*p_26)) < FAKE_DIVERGE(p_1060->global_1_offset, get_global_id(1), 10)), l_395)), (*p_25)));
            return p_24;
        }
        else
        { /* block id: 124 */
            int16_t l_404[7][3][7] = {{{0x4A8BL,(-1L),(-9L),(-1L),0x4A8BL,0L,0x3B6DL},{0x4A8BL,(-1L),(-9L),(-1L),0x4A8BL,0L,0x3B6DL},{0x4A8BL,(-1L),(-9L),(-1L),0x4A8BL,0L,0x3B6DL}},{{0x4A8BL,(-1L),(-9L),(-1L),0x4A8BL,0L,0x3B6DL},{0x4A8BL,(-1L),(-9L),(-1L),0x4A8BL,0L,0x3B6DL},{0x4A8BL,(-1L),(-9L),(-1L),0x4A8BL,0L,0x3B6DL}},{{0x4A8BL,(-1L),(-9L),(-1L),0x4A8BL,0L,0x3B6DL},{0x4A8BL,(-1L),(-9L),(-1L),0x4A8BL,0L,0x3B6DL},{0x4A8BL,(-1L),(-9L),(-1L),0x4A8BL,0L,0x3B6DL}},{{0x4A8BL,(-1L),(-9L),(-1L),0x4A8BL,0L,0x3B6DL},{0x4A8BL,(-1L),(-9L),(-1L),0x4A8BL,0L,0x3B6DL},{0x4A8BL,(-1L),(-9L),(-1L),0x4A8BL,0L,0x3B6DL}},{{0x4A8BL,(-1L),(-9L),(-1L),0x4A8BL,0L,0x3B6DL},{0x4A8BL,(-1L),(-9L),(-1L),0x4A8BL,0L,0x3B6DL},{0x4A8BL,(-1L),(-9L),(-1L),0x4A8BL,0L,0x3B6DL}},{{0x4A8BL,(-1L),(-9L),(-1L),0x4A8BL,0L,0x3B6DL},{0x4A8BL,(-1L),(-9L),(-1L),0x4A8BL,0L,0x3B6DL},{0x4A8BL,(-1L),(-9L),(-1L),0x4A8BL,0L,0x3B6DL}},{{0x4A8BL,(-1L),(-9L),(-1L),0x4A8BL,0L,0x3B6DL},{0x4A8BL,(-1L),(-9L),(-1L),0x4A8BL,0L,0x3B6DL},{0x4A8BL,(-1L),(-9L),(-1L),0x4A8BL,0L,0x3B6DL}}};
            int64_t **l_407[10][10][2] = {{{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0}},{{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0}},{{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0}},{{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0}},{{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0}},{{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0}},{{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0}},{{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0}},{{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0}},{{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0},{&l_353,(void*)0}}};
            int32_t **l_408[3][4][7] = {{{&p_1060->g_373,(void*)0,&p_1060->g_202,&p_1060->g_202,&p_1060->g_202,&p_1060->g_373,&p_1060->g_202},{&p_1060->g_373,(void*)0,&p_1060->g_202,&p_1060->g_202,&p_1060->g_202,&p_1060->g_373,&p_1060->g_202},{&p_1060->g_373,(void*)0,&p_1060->g_202,&p_1060->g_202,&p_1060->g_202,&p_1060->g_373,&p_1060->g_202},{&p_1060->g_373,(void*)0,&p_1060->g_202,&p_1060->g_202,&p_1060->g_202,&p_1060->g_373,&p_1060->g_202}},{{&p_1060->g_373,(void*)0,&p_1060->g_202,&p_1060->g_202,&p_1060->g_202,&p_1060->g_373,&p_1060->g_202},{&p_1060->g_373,(void*)0,&p_1060->g_202,&p_1060->g_202,&p_1060->g_202,&p_1060->g_373,&p_1060->g_202},{&p_1060->g_373,(void*)0,&p_1060->g_202,&p_1060->g_202,&p_1060->g_202,&p_1060->g_373,&p_1060->g_202},{&p_1060->g_373,(void*)0,&p_1060->g_202,&p_1060->g_202,&p_1060->g_202,&p_1060->g_373,&p_1060->g_202}},{{&p_1060->g_373,(void*)0,&p_1060->g_202,&p_1060->g_202,&p_1060->g_202,&p_1060->g_373,&p_1060->g_202},{&p_1060->g_373,(void*)0,&p_1060->g_202,&p_1060->g_202,&p_1060->g_202,&p_1060->g_373,&p_1060->g_202},{&p_1060->g_373,(void*)0,&p_1060->g_202,&p_1060->g_202,&p_1060->g_202,&p_1060->g_373,&p_1060->g_202},{&p_1060->g_373,(void*)0,&p_1060->g_202,&p_1060->g_202,&p_1060->g_202,&p_1060->g_373,&p_1060->g_202}}};
            int32_t *****l_421 = &p_1060->g_419;
            int i, j, k;
            p_24 &= (l_397 < (safe_rshift_func_uint16_t_u_s((0x9C81L & ((safe_lshift_func_uint16_t_u_s(65526UL, 3)) , (((*l_52) = (safe_lshift_func_uint8_t_u_u(((l_404[0][1][5] ^ 1L) == FAKE_DIVERGE(p_1060->global_1_offset, get_global_id(1), 10)), 2))) | (safe_lshift_func_int8_t_s_s(((void*)0 != l_407[4][6][0]), 0))))), 2)));
            if (((l_404[6][2][3] , &l_51) == l_408[0][0][0]))
            { /* block id: 127 */
                for (p_22 = (-17); (p_22 != (-14)); ++p_22)
                { /* block id: 130 */
                    uint32_t l_411 = 0x87020169L;
                    return l_411;
                }
            }
            else
            { /* block id: 133 */
                int32_t l_414 = 0x4043797CL;
                int32_t l_415 = 0x0B81520BL;
                uint16_t l_416 = 0x4940L;
                ++l_416;
            }
            (*l_52) &= (p_1060->g_378 != ((*l_421) = p_1060->g_419));
        }
        for (p_1060->g_348 = 19; (p_1060->g_348 < 1); --p_1060->g_348)
        { /* block id: 141 */
            int32_t *l_424 = &l_413;
            struct S1 *l_443 = &p_1060->g_108;
            uint32_t *l_446[5] = {&p_1060->g_108.f0,&p_1060->g_108.f0,&p_1060->g_108.f0,&p_1060->g_108.f0,&p_1060->g_108.f0};
            int64_t *l_448 = &l_395;
            int32_t l_463 = (-1L);
            int32_t l_468 = (-1L);
            int32_t l_471 = (-8L);
            int32_t l_473 = 0x61139F7CL;
            int32_t l_476 = (-1L);
            int32_t l_477 = 0L;
            int32_t l_478[9];
            int32_t ****l_499 = &p_1060->g_420;
            struct S1 **l_550 = &l_447;
            struct S1 ***l_549 = &l_550;
            struct S1 ****l_551 = &l_549;
            int i;
            for (i = 0; i < 9; i++)
                l_478[i] = 0x1314B53CL;
            (*l_424) = ((*l_52) &= l_388[2]);
            if ((safe_div_func_int8_t_s_s((((safe_mul_func_int8_t_s_s((p_1060->g_429 , (safe_lshift_func_int16_t_s_s((safe_lshift_func_uint16_t_u_u(p_22, 6)), 10))), (safe_mod_func_int64_t_s_s((-1L), 1L)))) || (safe_mod_func_uint32_t_u_u((l_438[1] , (safe_mul_func_int16_t_s_s((p_1060->g_161 = l_388[6]), ((safe_sub_func_uint8_t_u_u(((l_438[1] > (((l_393 = (((*l_448) = ((l_443 != (l_447 = ((~(p_1060->g_429.f1 = ((FAKE_DIVERGE(p_1060->group_1_offset, get_group_id(1), 10) > (safe_lshift_func_int16_t_s_s(0x546EL, 15))) && 0xAAE84D5E80FA0365L))) , &p_1060->g_325))) == (*l_52))) ^ (-4L))) != GROUP_DIVERGE(2, 1)) & p_23)) | (-1L)), 0x9BL)) & 0x51L)))), l_388[5]))) | 0x3EL), (*p_26))))
            { /* block id: 149 */
                int64_t l_454[3];
                int32_t l_455 = (-7L);
                int32_t l_456 = 5L;
                int32_t l_464 = 8L;
                int32_t l_469[6] = {0x15739CFFL,(-1L),0x15739CFFL,0x15739CFFL,(-1L),0x15739CFFL};
                int i;
                for (i = 0; i < 3; i++)
                    l_454[i] = 0x64E759E62D8AA283L;
                for (p_1060->g_429.f3 = 15; (p_1060->g_429.f3 > (-19)); --p_1060->g_429.f3)
                { /* block id: 152 */
                    int32_t *l_451 = &l_412;
                    int32_t *l_452[8] = {&p_1060->g_106[0],&p_1060->g_106[0],&p_1060->g_106[0],&p_1060->g_106[0],&p_1060->g_106[0],&p_1060->g_106[0],&p_1060->g_106[0],&p_1060->g_106[0]};
                    uint8_t l_479 = 2UL;
                    uint32_t l_484 = 0xE2DA93EDL;
                    int i;
                    l_479++;
                    if ((*p_1060->g_373))
                        break;
                    --l_484;
                    if (p_24)
                        break;
                }
            }
            else
            { /* block id: 158 */
                uint32_t **l_491 = &l_446[0];
                int32_t ****l_492 = &p_1060->g_420;
                int32_t l_514[8] = {(-5L),3L,(-5L),(-5L),3L,(-5L),(-5L),3L};
                uint32_t l_515[8][8] = {{1UL,0UL,3UL,2UL,3UL,0UL,1UL,0UL},{1UL,0UL,3UL,2UL,3UL,0UL,1UL,0UL},{1UL,0UL,3UL,2UL,3UL,0UL,1UL,0UL},{1UL,0UL,3UL,2UL,3UL,0UL,1UL,0UL},{1UL,0UL,3UL,2UL,3UL,0UL,1UL,0UL},{1UL,0UL,3UL,2UL,3UL,0UL,1UL,0UL},{1UL,0UL,3UL,2UL,3UL,0UL,1UL,0UL},{1UL,0UL,3UL,2UL,3UL,0UL,1UL,0UL}};
                int i, j;
                if (((((safe_div_func_int16_t_s_s(((*p_26) == ((((((*l_491) = p_1060->g_373) != l_424) , ((*l_52) &= ((((l_492 != ((safe_add_func_uint8_t_u_u((l_470 , ((p_22 , ((safe_div_func_int16_t_s_s((FAKE_DIVERGE(p_1060->group_1_offset, get_group_id(1), 10) == 5L), p_24)) , (((safe_lshift_func_uint16_t_u_s(l_388[1], 2)) == (*p_25)) < (-5L)))) > p_22)), l_395)) , l_499)) , p_1060->g_284.f0) , 1UL) | (*l_424)))) , 0x4D56777AE71FC076L) <= 0x4EE1018BFE896D69L)), 7L)) >= FAKE_DIVERGE(p_1060->group_1_offset, get_group_id(1), 10)) & p_24) , l_500))
                { /* block id: 161 */
                    (*l_52) |= (safe_sub_func_int16_t_s_s((safe_lshift_func_int8_t_s_s(0x39L, 6)), 0L));
                }
                else
                { /* block id: 163 */
                    int32_t *l_505 = (void*)0;
                    int32_t *l_506 = &l_475[3];
                    int32_t *l_507 = (void*)0;
                    int32_t *l_508 = &l_475[0];
                    int32_t *l_509 = &l_458;
                    int32_t *l_510 = &l_412;
                    int32_t *l_511 = &l_472;
                    int32_t *l_512[7];
                    struct S1 **l_519 = &l_447;
                    struct S1 ***l_518 = &l_519;
                    int32_t **l_536[6];
                    int i;
                    for (i = 0; i < 7; i++)
                        l_512[i] = &l_472;
                    for (i = 0; i < 6; i++)
                        l_536[i] = &l_512[3];
                    --l_515[0][7];
                    (*l_518) = &l_443;
                    for (l_482 = 29; (l_482 >= (-24)); --l_482)
                    { /* block id: 168 */
                        int64_t *l_537 = (void*)0;
                        int64_t *l_538[1];
                        uint64_t *l_540 = &p_1060->g_351.f3;
                        int32_t l_541 = 0x13DCBEC2L;
                        int i;
                        for (i = 0; i < 1; i++)
                            l_538[i] = &p_1060->g_539;
                        l_541 &= (((safe_add_func_uint8_t_u_u((((FAKE_DIVERGE(p_1060->group_0_offset, get_group_id(0), 10) & (((*l_540) ^= (safe_sub_func_uint8_t_u_u(1UL, (safe_sub_func_int16_t_s_s(((*p_26) <= (l_446[3] == (((p_1060->g_539 = (safe_mul_func_uint16_t_u_u(((p_1060->g_268.f2 , (GROUP_DIVERGE(0, 1) | (safe_rshift_func_int8_t_s_s((((safe_sub_func_int32_t_s_s(((*l_509) ^= ((*l_52) | (((p_23 = ((0xE771L < (p_1060->g_161 = p_1060->g_253.f5)) ^ ((+(p_24 | (safe_rshift_func_int16_t_s_s((*l_52), p_1060->g_325.f0)))) <= p_1060->g_351.f0))) > l_482) & 65535UL))), p_1060->g_2[4][1][1])) , l_536[1]) != (void*)0), p_1060->g_376)))) && p_1060->g_270[0][1].f1), p_1060->g_126))) , p_24) , (*l_491)))), p_1060->g_108.f3))))) || 0x1A6A3FE8E34B0726L)) && 0xD361A7A1L) | (*l_52)), p_1060->g_108.f3)) != l_513) , l_513);
                    }
                }
                if ((*l_52))
                    break;
            }
            l_461 ^= (((FAKE_DIVERGE(p_1060->global_2_offset, get_global_id(2), 10) <= (safe_mod_func_int8_t_s_s((((((void*)0 == l_544) <= l_453) | ((safe_mod_func_int8_t_s_s(((p_1060->g_547 == ((*l_551) = l_549)) ^ (5UL && (*l_424))), (safe_mul_func_int8_t_s_s((*l_424), l_554)))) <= 65535UL)) | (*p_25)), p_22))) != 0xCB96L) | (*p_1060->g_172));
        }
    }
    l_51 = &p_24;
    --l_563[5];
    (*l_572) = func_80(((((*l_566) |= p_1060->g_185.f1) , (p_23 = p_1060->g_274[6][3][0].f3)) <= ((((--p_1060->g_348) > p_1060->g_539) , (l_571 = &p_1060->g_195)) != (void*)0)), p_1060);
    return (*p_1060->g_172);
}


/* ------------------------------------------ */
/* 
 * reads : p_1060->g_298.f1 p_1060->g_106 p_1060->g_367 p_1060->g_368 p_1060->g_185.f1 p_1060->g_319.f3 p_1060->g_373
 * writes: p_1060->g_161 p_1060->g_106 p_1060->g_253 p_1060->g_185.f1 p_1060->g_319.f3
 */
uint16_t  func_56(int64_t * p_57, int64_t * p_58, int8_t * p_59, uint32_t  p_60, struct S4 * p_1060)
{ /* block id: 97 */
    uint64_t l_357[3][5];
    int32_t ***l_358 = &p_1060->g_170;
    int32_t ****l_359 = &l_358;
    int32_t *l_364 = (void*)0;
    int16_t *l_365[3];
    int32_t *l_366 = &p_1060->g_106[3];
    int32_t *l_369[5][5] = {{&p_1060->g_106[0],&p_1060->g_106[2],(void*)0,&p_1060->g_106[2],&p_1060->g_106[0]},{&p_1060->g_106[0],&p_1060->g_106[2],(void*)0,&p_1060->g_106[2],&p_1060->g_106[0]},{&p_1060->g_106[0],&p_1060->g_106[2],(void*)0,&p_1060->g_106[2],&p_1060->g_106[0]},{&p_1060->g_106[0],&p_1060->g_106[2],(void*)0,&p_1060->g_106[2],&p_1060->g_106[0]},{&p_1060->g_106[0],&p_1060->g_106[2],(void*)0,&p_1060->g_106[2],&p_1060->g_106[0]}};
    int32_t **l_370 = &l_369[3][2];
    uint32_t l_374 = 0UL;
    int i, j;
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 5; j++)
            l_357[i][j] = 0x2B8F4B44E849F56FL;
    }
    for (i = 0; i < 3; i++)
        l_365[i] = &p_1060->g_161;
    (*l_366) ^= ((safe_rshift_func_int16_t_s_s(((((-8L) && l_357[0][0]) , (void*)0) == ((*l_359) = l_358)), 2)) != (safe_add_func_int32_t_s_s(((((void*)0 == &p_58) <= ((((GROUP_DIVERGE(2, 1) ^ (p_1060->g_161 = ((((void*)0 != l_364) >= (p_60 > 0x4708L)) && 0UL))) > 0x7618C1D69EB125F0L) == GROUP_DIVERGE(0, 1)) != p_60)) < p_1060->g_298.f1), l_357[0][0])));
    (*p_1060->g_368) = p_1060->g_367;
    (*l_370) = l_369[3][2];
    for (p_1060->g_185.f1 = 0; (p_1060->g_185.f1 < 9); p_1060->g_185.f1++)
    { /* block id: 105 */
        for (p_1060->g_319.f3 = 0; (p_1060->g_319.f3 <= 6); p_1060->g_319.f3 += 1)
        { /* block id: 108 */
            return p_60;
        }
        (*l_370) = p_1060->g_373;
        (*l_366) = l_374;
    }
    return p_60;
}


/* ------------------------------------------ */
/* 
 * reads : p_1060->g_comm_values p_1060->g_97 p_1060->l_comm_values p_1060->g_3 p_1060->g_106 p_1060->g_73 p_1060->g_108 p_1060->g_126 p_1060->g_143 p_1060->g_146 p_1060->g_155 p_1060->g_161 p_1060->g_170 p_1060->g_172 p_1060->g_2 p_1060->g_156.f0 p_1060->g_185 p_1060->g_195 p_1060->g_223 p_1060->g_233 p_1060->g_245 p_1060->g_250 p_1060->g_317 p_1060->g_296.f5 p_1060->g_319 p_1060->g_325 p_1060->g_324 p_1060->g_348 p_1060->g_351
 * writes: p_1060->l_comm_values p_1060->g_108 p_1060->g_126 p_1060->g_146 p_1060->g_170 p_1060->g_195 p_1060->g_106 p_1060->g_73 p_1060->g_202 p_1060->g_185 p_1060->g_161 p_1060->g_245 p_1060->g_324 p_1060->g_348 p_1060->g_118
 */
int32_t  func_69(uint64_t  p_70, struct S4 * p_1060)
{ /* block id: 12 */
    int32_t *l_71 = (void*)0;
    int32_t *l_72[3];
    int32_t l_74 = 0x375F08A7L;
    uint8_t l_75 = 0x50L;
    uint32_t l_84 = 5UL;
    int32_t **l_95 = &l_72[2];
    int32_t **l_96 = &l_71;
    int64_t l_107 = 4L;
    int8_t *l_352 = (void*)0;
    int i;
    for (i = 0; i < 3; i++)
        l_72[i] = &p_1060->g_73;
    ++l_75;
    p_1060->g_118[4][6][2] = ((((safe_add_func_uint8_t_u_u(((func_80(((((safe_div_func_int16_t_s_s(l_84, func_85(func_88(p_1060->g_comm_values[p_1060->tid], ((((safe_mod_func_int32_t_s_s((safe_rshift_func_uint8_t_u_u((p_70 & ((0x07BCL ^ (((*l_95) = &p_1060->g_3) == ((*l_96) = &p_1060->g_73))) < GROUP_DIVERGE(0, 1))), ((p_1060->g_97 , (safe_div_func_int8_t_s_s(((FAKE_DIVERGE(p_1060->group_2_offset, get_group_id(2), 10) , p_1060->g_97.f0) | ((safe_add_func_uint32_t_u_u(((safe_lshift_func_int16_t_s_s(((safe_rshift_func_uint8_t_u_u(0xD3L, p_70)) ^ 0x77EE7E4EBB7C4EAEL), p_1060->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1060->tid, 35))])) ^ p_70), p_1060->g_3)) >= p_1060->g_3)), p_1060->g_106[0]))) >= p_70))), p_1060->g_73)) , p_1060->g_73) <= p_1060->g_comm_values[p_1060->tid]) != l_107), p_1060), p_1060->g_comm_values[p_1060->tid], p_1060))) && p_70) , (*l_96)) == &l_74), p_1060) , l_352) == (void*)0), (-1L))) && p_70) , (-9L)) , (*l_95));
    return p_70;
}


/* ------------------------------------------ */
/* 
 * reads : p_1060->g_348 p_1060->g_351
 * writes: p_1060->g_348
 */
struct S0  func_80(uint32_t  p_81, struct S4 * p_1060)
{ /* block id: 92 */
    int32_t l_335[3];
    int32_t *l_336 = &p_1060->g_106[3];
    int32_t *l_337 = &p_1060->g_106[1];
    int32_t *l_338 = &p_1060->g_73;
    int32_t *l_339 = &p_1060->g_106[0];
    int32_t *l_340 = (void*)0;
    int32_t *l_341 = &l_335[2];
    int32_t *l_342 = (void*)0;
    int32_t *l_343 = &l_335[0];
    int32_t *l_344 = &l_335[0];
    int32_t *l_345 = &p_1060->g_106[2];
    int32_t *l_346 = &p_1060->g_106[3];
    int32_t *l_347[3][2] = {{&l_335[2],&l_335[0]},{&l_335[2],&l_335[0]},{&l_335[2],&l_335[0]}};
    int i, j;
    for (i = 0; i < 3; i++)
        l_335[i] = 0x4DB5E24FL;
    --p_1060->g_348;
    return p_1060->g_351;
}


/* ------------------------------------------ */
/* 
 * reads : p_1060->g_185 p_1060->g_195 p_1060->g_172 p_1060->l_comm_values p_1060->g_2 p_1060->g_106 p_1060->g_73 p_1060->g_3 p_1060->g_223 p_1060->g_97.f1 p_1060->g_233 p_1060->g_245 p_1060->g_146.f3 p_1060->g_250 p_1060->g_317 p_1060->g_296.f5 p_1060->g_319 p_1060->g_325 p_1060->g_126 p_1060->g_324
 * writes: p_1060->g_126 p_1060->g_195 p_1060->g_106 p_1060->g_73 p_1060->g_202 p_1060->g_185 p_1060->g_161 p_1060->g_170 p_1060->g_245 p_1060->g_324
 */
uint16_t  func_85(uint32_t  p_86, uint64_t  p_87, struct S4 * p_1060)
{ /* block id: 35 */
    int32_t *l_175[8][5] = {{&p_1060->g_73,&p_1060->g_73,&p_1060->g_106[3],&p_1060->g_73,&p_1060->g_3},{&p_1060->g_73,&p_1060->g_73,&p_1060->g_106[3],&p_1060->g_73,&p_1060->g_3},{&p_1060->g_73,&p_1060->g_73,&p_1060->g_106[3],&p_1060->g_73,&p_1060->g_3},{&p_1060->g_73,&p_1060->g_73,&p_1060->g_106[3],&p_1060->g_73,&p_1060->g_3},{&p_1060->g_73,&p_1060->g_73,&p_1060->g_106[3],&p_1060->g_73,&p_1060->g_3},{&p_1060->g_73,&p_1060->g_73,&p_1060->g_106[3],&p_1060->g_73,&p_1060->g_3},{&p_1060->g_73,&p_1060->g_73,&p_1060->g_106[3],&p_1060->g_73,&p_1060->g_3},{&p_1060->g_73,&p_1060->g_73,&p_1060->g_106[3],&p_1060->g_73,&p_1060->g_3}};
    int64_t l_176[5];
    int64_t l_177 = 0x7C29BA30310DE8F5L;
    int32_t l_178 = 0L;
    int32_t l_179 = 1L;
    uint8_t l_180 = 1UL;
    int32_t *l_184 = &p_1060->g_73;
    int32_t **l_183 = &l_184;
    uint16_t *l_188 = &p_1060->g_126;
    int64_t **l_196 = &p_1060->g_195;
    int32_t **l_201[10][2] = {{&l_175[5][2],&l_175[1][3]},{&l_175[5][2],&l_175[1][3]},{&l_175[5][2],&l_175[1][3]},{&l_175[5][2],&l_175[1][3]},{&l_175[5][2],&l_175[1][3]},{&l_175[5][2],&l_175[1][3]},{&l_175[5][2],&l_175[1][3]},{&l_175[5][2],&l_175[1][3]},{&l_175[5][2],&l_175[1][3]},{&l_175[5][2],&l_175[1][3]}};
    uint8_t l_244 = 0xE7L;
    int i, j;
    for (i = 0; i < 5; i++)
        l_176[i] = 0x410409340F2FB423L;
    l_180++;
    (*l_183) = (l_175[6][4] = l_175[6][4]);
    p_1060->g_73 ^= ((p_1060->g_185 , (p_1060->g_106[0] &= (safe_lshift_func_uint16_t_u_s(((*l_188) = 0x4A16L), (safe_mod_func_uint16_t_u_u((safe_sub_func_uint32_t_u_u(GROUP_DIVERGE(2, 1), (safe_mul_func_int8_t_s_s((p_1060->g_185.f5 , p_86), (((p_87 != (((*l_196) = p_1060->g_195) != p_1060->g_172)) , (safe_rshift_func_uint8_t_u_s(((safe_div_func_uint16_t_u_u(((((p_1060->g_195 != p_1060->g_195) ^ p_1060->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1060->tid, 35))]) | p_1060->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1060->tid, 35))]) || p_1060->g_2[1][0][1]), 0x4F90L)) > p_1060->g_185.f2), p_87))) >= 0xB4E3L))))), p_87)))))) >= p_86);
    if (((((1UL != p_1060->g_3) , ((*l_183) != (p_1060->g_202 = (*l_183)))) , (void*)0) == (void*)0))
    { /* block id: 44 */
        int32_t l_208 = 2L;
        int32_t **l_243[1];
        int i;
        for (i = 0; i < 1; i++)
            l_243[i] = &l_184;
        for (l_178 = 0; (l_178 < (-18)); l_178--)
        { /* block id: 47 */
            for (l_179 = 0; (l_179 < (-19)); l_179 = safe_sub_func_uint32_t_u_u(l_179, 9))
            { /* block id: 50 */
                uint32_t l_207 = 8UL;
                l_207 &= (-4L);
            }
            if (l_208)
                break;
        }
        for (p_1060->g_73 = 18; (p_1060->g_73 == 10); p_1060->g_73 = safe_sub_func_int32_t_s_s(p_1060->g_73, 3))
        { /* block id: 57 */
            struct S0 *l_211 = &p_1060->g_185;
            int32_t l_222 = 0x0C2F3897L;
            int32_t l_227 = 0x26515E36L;
            uint16_t *l_232 = &p_1060->g_185.f0;
            int32_t **l_240 = &l_175[6][4];
            int32_t ***l_241 = (void*)0;
            int32_t ***l_242 = &p_1060->g_170;
            (*l_211) = p_1060->g_185;
            for (l_177 = 0; (l_177 < 20); l_177 = safe_add_func_uint32_t_u_u(l_177, 7))
            { /* block id: 61 */
                int16_t *l_226 = &p_1060->g_161;
                int i, j;
                l_208 &= 0x3928BA42L;
                barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                p_1060->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 35)), permutations[(safe_mod_func_uint32_t_u_u((safe_add_func_uint8_t_u_u((((safe_rshift_func_uint8_t_u_s((safe_mod_func_uint32_t_u_u((safe_div_func_uint16_t_u_u(l_208, l_222)), (p_1060->g_223 , (safe_sub_func_int16_t_s_s((((p_86 != (((l_227 = ((*l_226) = 1L)) || (safe_lshift_func_int16_t_s_s((p_86 | (l_227 ^= ((safe_mul_func_uint8_t_u_u((l_208 , ((&p_1060->g_126 != l_232) , 0UL)), 0x55L)) || p_1060->g_185.f0))), p_1060->g_185.f3))) , p_86)) != l_222) & 0xDEE3L), p_1060->g_97.f1))))), 7)) , 0x60L) > p_86), p_86)), 10))][(safe_mod_func_uint32_t_u_u(p_1060->tid, 35))]));
            }
            p_1060->g_245 &= ((p_1060->g_233 , &p_1060->g_108) == (((safe_rshift_func_int16_t_s_u(1L, 11)) , (((safe_sub_func_uint64_t_u_u(p_86, ((safe_mul_func_uint8_t_u_u((((p_86 , p_1060->g_185.f3) , ((((*l_242) = l_240) == (void*)0) , l_243[0])) != &p_1060->g_202), p_86)) , 0x5F07101F3979143FL))) <= p_1060->g_106[0]) == l_244)) , (void*)0));
        }
    }
    else
    { /* block id: 73 */
        uint8_t *l_299 = &l_244;
        int32_t l_316 = (-1L);
        int32_t l_318[7];
        uint16_t *l_326 = (void*)0;
        int32_t **l_327 = &l_184;
        int i;
        for (i = 0; i < 7; i++)
            l_318[i] = 0L;
lbl_334:
        l_318[4] ^= (safe_add_func_int64_t_s_s((p_87 ^ (p_1060->g_185.f1 , (0x408DL | ((p_1060->g_146.f3 <= (((((safe_div_func_uint8_t_u_u(((void*)0 != p_1060->g_250[1][3][1]), ((*l_299)++))) || ((safe_sub_func_int64_t_s_s(((safe_rshift_func_uint8_t_u_u(FAKE_DIVERGE(p_1060->group_2_offset, get_group_id(2), 10), 2)) | FAKE_DIVERGE(p_1060->group_2_offset, get_group_id(2), 10)), ((p_86 , (+(safe_div_func_int16_t_s_s((safe_mod_func_uint16_t_u_u(p_1060->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1060->tid, 35))], (safe_add_func_uint64_t_u_u((safe_lshift_func_uint8_t_u_u((((safe_mod_func_uint16_t_u_u(0x6B94L, 1L)) , p_87) & p_86), p_86)), p_86)))), 0x577CL)))) , 18446744073709551615UL))) == l_316)) ^ p_1060->g_317) > p_86) | 0x3CA8E30BL)) , p_1060->g_296.f5)))), l_316));
lbl_333:
        l_327 = (p_1060->g_319 , ((safe_lshift_func_int8_t_s_u((safe_sub_func_uint8_t_u_u(p_87, 0xCDL)), ((p_1060->g_324 = &p_1060->g_126) == (p_1060->g_325 , l_326)))) , (void*)0));
        for (l_180 = 29; (l_180 < 47); l_180 = safe_add_func_uint64_t_u_u(l_180, 9))
        { /* block id: 80 */
            uint8_t l_330[5][8] = {{254UL,0UL,0xAFL,9UL,0UL,9UL,0xAFL,0UL},{254UL,0UL,0xAFL,9UL,0UL,9UL,0xAFL,0UL},{254UL,0UL,0xAFL,9UL,0UL,9UL,0xAFL,0UL},{254UL,0UL,0xAFL,9UL,0UL,9UL,0xAFL,0UL},{254UL,0UL,0xAFL,9UL,0UL,9UL,0xAFL,0UL}};
            int i, j;
            for (p_1060->g_126 = 0; (p_1060->g_126 <= 6); p_1060->g_126 += 1)
            { /* block id: 83 */
                ++l_330[4][5];
                if (p_1060->g_233.f0)
                    goto lbl_333;
                return (*p_1060->g_324);
            }
        }
        if (p_1060->g_319.f0)
            goto lbl_334;
    }
    return p_86;
}


/* ------------------------------------------ */
/* 
 * reads : p_1060->g_108 p_1060->g_97.f2 p_1060->g_126 p_1060->g_comm_values p_1060->g_143 p_1060->g_106 p_1060->l_comm_values p_1060->g_3 p_1060->g_146 p_1060->g_155 p_1060->g_161 p_1060->g_170 p_1060->g_172 p_1060->g_2 p_1060->g_156.f0
 * writes: p_1060->l_comm_values p_1060->g_108 p_1060->g_126 p_1060->g_146 p_1060->g_170
 */
uint32_t  func_88(int64_t  p_89, uint64_t  p_90, struct S4 * p_1060)
{ /* block id: 16 */
    uint32_t l_109[2];
    int64_t *l_110 = (void*)0;
    int64_t *l_111 = (void*)0;
    int64_t *l_112 = (void*)0;
    int64_t *l_113 = (void*)0;
    int64_t *l_114 = (void*)0;
    int64_t *l_115 = (void*)0;
    int64_t *l_116[3];
    int32_t l_117[7][8][4] = {{{0L,0x1B9F6C78L,0x58142B0CL,0L},{0L,0x1B9F6C78L,0x58142B0CL,0L},{0L,0x1B9F6C78L,0x58142B0CL,0L},{0L,0x1B9F6C78L,0x58142B0CL,0L},{0L,0x1B9F6C78L,0x58142B0CL,0L},{0L,0x1B9F6C78L,0x58142B0CL,0L},{0L,0x1B9F6C78L,0x58142B0CL,0L},{0L,0x1B9F6C78L,0x58142B0CL,0L}},{{0L,0x1B9F6C78L,0x58142B0CL,0L},{0L,0x1B9F6C78L,0x58142B0CL,0L},{0L,0x1B9F6C78L,0x58142B0CL,0L},{0L,0x1B9F6C78L,0x58142B0CL,0L},{0L,0x1B9F6C78L,0x58142B0CL,0L},{0L,0x1B9F6C78L,0x58142B0CL,0L},{0L,0x1B9F6C78L,0x58142B0CL,0L},{0L,0x1B9F6C78L,0x58142B0CL,0L}},{{0L,0x1B9F6C78L,0x58142B0CL,0L},{0L,0x1B9F6C78L,0x58142B0CL,0L},{0L,0x1B9F6C78L,0x58142B0CL,0L},{0L,0x1B9F6C78L,0x58142B0CL,0L},{0L,0x1B9F6C78L,0x58142B0CL,0L},{0L,0x1B9F6C78L,0x58142B0CL,0L},{0L,0x1B9F6C78L,0x58142B0CL,0L},{0L,0x1B9F6C78L,0x58142B0CL,0L}},{{0L,0x1B9F6C78L,0x58142B0CL,0L},{0L,0x1B9F6C78L,0x58142B0CL,0L},{0L,0x1B9F6C78L,0x58142B0CL,0L},{0L,0x1B9F6C78L,0x58142B0CL,0L},{0L,0x1B9F6C78L,0x58142B0CL,0L},{0L,0x1B9F6C78L,0x58142B0CL,0L},{0L,0x1B9F6C78L,0x58142B0CL,0L},{0L,0x1B9F6C78L,0x58142B0CL,0L}},{{0L,0x1B9F6C78L,0x58142B0CL,0L},{0L,0x1B9F6C78L,0x58142B0CL,0L},{0L,0x1B9F6C78L,0x58142B0CL,0L},{0L,0x1B9F6C78L,0x58142B0CL,0L},{0L,0x1B9F6C78L,0x58142B0CL,0L},{0L,0x1B9F6C78L,0x58142B0CL,0L},{0L,0x1B9F6C78L,0x58142B0CL,0L},{0L,0x1B9F6C78L,0x58142B0CL,0L}},{{0L,0x1B9F6C78L,0x58142B0CL,0L},{0L,0x1B9F6C78L,0x58142B0CL,0L},{0L,0x1B9F6C78L,0x58142B0CL,0L},{0L,0x1B9F6C78L,0x58142B0CL,0L},{0L,0x1B9F6C78L,0x58142B0CL,0L},{0L,0x1B9F6C78L,0x58142B0CL,0L},{0L,0x1B9F6C78L,0x58142B0CL,0L},{0L,0x1B9F6C78L,0x58142B0CL,0L}},{{0L,0x1B9F6C78L,0x58142B0CL,0L},{0L,0x1B9F6C78L,0x58142B0CL,0L},{0L,0x1B9F6C78L,0x58142B0CL,0L},{0L,0x1B9F6C78L,0x58142B0CL,0L},{0L,0x1B9F6C78L,0x58142B0CL,0L},{0L,0x1B9F6C78L,0x58142B0CL,0L},{0L,0x1B9F6C78L,0x58142B0CL,0L},{0L,0x1B9F6C78L,0x58142B0CL,0L}}};
    int32_t *l_119 = (void*)0;
    int32_t l_120 = 0x4CFDF4E9L;
    struct S1 *l_122 = &p_1060->g_108;
    uint16_t *l_125 = &p_1060->g_126;
    int16_t l_133 = 0x792FL;
    int16_t l_136 = 3L;
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_109[i] = 0x997E3454L;
    for (i = 0; i < 3; i++)
        l_116[i] = (void*)0;
    l_120 = ((p_1060->g_108 , (p_1060->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1060->tid, 35))] = l_109[1])) && (l_117[5][3][2] = ((void*)0 != l_110)));
    (*l_122) = p_1060->g_108;
    if ((p_1060->g_97.f2 >= (safe_mul_func_uint8_t_u_u((((++(*l_125)) && (safe_lshift_func_int8_t_s_u(((safe_mul_func_uint8_t_u_u((l_133 == p_89), (safe_mul_func_int16_t_s_s(l_136, (safe_div_func_int8_t_s_s((((~((safe_rshift_func_uint8_t_u_u(((l_120 ^= ((((FAKE_DIVERGE(p_1060->local_0_offset, get_local_id(0), 10) <= (safe_add_func_uint16_t_u_u(((((p_1060->g_comm_values[p_1060->tid] || l_117[5][3][2]) && ((p_1060->g_143 != (((~p_1060->g_106[2]) , ((safe_mul_func_uint8_t_u_u(p_1060->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1060->tid, 35))], p_1060->g_3)) == 0xEAABCA9CL)) , (void*)0)) , p_1060->g_108.f0)) | GROUP_DIVERGE(1, 1)) & p_89), p_1060->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1060->tid, 35))]))) && p_89) <= 0xF16EL) , p_90)) >= 0x2342696941D4D588L), p_90)) ^ 0x6C974F601976A6A2L)) >= 0xFCB4505FL) , (-9L)), GROUP_DIVERGE(1, 1))))))) != 3UL), 7))) , p_90), (-3L)))))
    { /* block id: 23 */
        p_1060->g_146 = p_1060->g_146;
        return p_1060->g_108.f1;
    }
    else
    { /* block id: 26 */
        int32_t *l_159 = (void*)0;
        int32_t *l_160 = &l_117[5][3][2];
        int32_t ***l_171[9][6] = {{&p_1060->g_170,&p_1060->g_170,&p_1060->g_170,(void*)0,&p_1060->g_170,&p_1060->g_170},{&p_1060->g_170,&p_1060->g_170,&p_1060->g_170,(void*)0,&p_1060->g_170,&p_1060->g_170},{&p_1060->g_170,&p_1060->g_170,&p_1060->g_170,(void*)0,&p_1060->g_170,&p_1060->g_170},{&p_1060->g_170,&p_1060->g_170,&p_1060->g_170,(void*)0,&p_1060->g_170,&p_1060->g_170},{&p_1060->g_170,&p_1060->g_170,&p_1060->g_170,(void*)0,&p_1060->g_170,&p_1060->g_170},{&p_1060->g_170,&p_1060->g_170,&p_1060->g_170,(void*)0,&p_1060->g_170,&p_1060->g_170},{&p_1060->g_170,&p_1060->g_170,&p_1060->g_170,(void*)0,&p_1060->g_170,&p_1060->g_170},{&p_1060->g_170,&p_1060->g_170,&p_1060->g_170,(void*)0,&p_1060->g_170,&p_1060->g_170},{&p_1060->g_170,&p_1060->g_170,&p_1060->g_170,(void*)0,&p_1060->g_170,&p_1060->g_170}};
        int64_t *l_174 = (void*)0;
        int i, j;
        (*l_160) &= ((GROUP_DIVERGE(2, 1) | (p_1060->g_108.f2 , 0x429D60EDL)) | (((safe_rshift_func_uint8_t_u_u((safe_sub_func_int64_t_s_s((safe_lshift_func_int8_t_s_s(p_1060->g_106[0], 1)), (safe_mul_func_int8_t_s_s(p_1060->g_3, p_1060->g_106[0])))), 0)) , l_122) == p_1060->g_155[5]));
        (*l_160) = (((void*)0 == l_113) , (5UL | p_1060->g_161));
        l_120 ^= ((((safe_rshift_func_uint16_t_u_s(((((p_1060->g_146.f2 == (((((safe_mul_func_uint16_t_u_u((((p_1060->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1060->tid, 35))] = (((((p_89 | (*l_160)) == ((*l_125) = ((safe_lshift_func_uint8_t_u_s((FAKE_DIVERGE(p_1060->global_1_offset, get_global_id(1), 10) , (+0UL)), 2)) == (~(safe_add_func_uint32_t_u_u(((((p_1060->g_170 = p_1060->g_170) == &l_119) < (p_1060->g_172 == l_174)) , (0x7E45A53668A93EDAL > 0x84D5964E550A7628L)), p_90)))))) | 0xB3L) || p_89) | 0UL)) <= p_1060->g_2[1][0][3]) ^ p_90), p_1060->g_comm_values[p_1060->tid])) , p_90) | p_1060->g_106[0]) | p_1060->g_2[0][1][2]) != FAKE_DIVERGE(p_1060->local_0_offset, get_local_id(0), 10))) && p_89) != p_90) < p_1060->g_108.f0), 10)) <= 0x4DL) < 1L) >= (-2L));
    }
    return p_1060->g_156.f0;
}


__kernel void entry(__global ulong *result, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local int64_t l_comm_values[35];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 35; i++)
            l_comm_values[i] = 1;
    struct S4 c_1061;
    struct S4* p_1060 = &c_1061;
    struct S4 c_1062 = {
        {{{0xB7L,0xB7L,0xF6L,0x18L,0x29L},{0xB7L,0xB7L,0xF6L,0x18L,0x29L}},{{0xB7L,0xB7L,0xF6L,0x18L,0x29L},{0xB7L,0xB7L,0xF6L,0x18L,0x29L}},{{0xB7L,0xB7L,0xF6L,0x18L,0x29L},{0xB7L,0xB7L,0xF6L,0x18L,0x29L}},{{0xB7L,0xB7L,0xF6L,0x18L,0x29L},{0xB7L,0xB7L,0xF6L,0x18L,0x29L}},{{0xB7L,0xB7L,0xF6L,0x18L,0x29L},{0xB7L,0xB7L,0xF6L,0x18L,0x29L}},{{0xB7L,0xB7L,0xF6L,0x18L,0x29L},{0xB7L,0xB7L,0xF6L,0x18L,0x29L}},{{0xB7L,0xB7L,0xF6L,0x18L,0x29L},{0xB7L,0xB7L,0xF6L,0x18L,0x29L}},{{0xB7L,0xB7L,0xF6L,0x18L,0x29L},{0xB7L,0xB7L,0xF6L,0x18L,0x29L}}}, // p_1060->g_2
        0x0D68F985L, // p_1060->g_3
        9L, // p_1060->g_18
        0x1BCF2EC2L, // p_1060->g_53
        (-8L), // p_1060->g_73
        {0x3A67L,0xE427CCDDECA68EB2L,0UL,18446744073709551606UL,0L,0x85E6L}, // p_1060->g_97
        {0x60324A0BL,0x60324A0BL,0x60324A0BL,0x60324A0BL,0x60324A0BL}, // p_1060->g_106
        {0x538C74B5L,0x1E040F3CL,0x490BL,-1L}, // p_1060->g_108
        {{{(void*)0,&p_1060->g_106[0],(void*)0,(void*)0},{(void*)0,&p_1060->g_106[0],(void*)0,(void*)0},{(void*)0,&p_1060->g_106[0],(void*)0,(void*)0},{(void*)0,&p_1060->g_106[0],(void*)0,(void*)0},{(void*)0,&p_1060->g_106[0],(void*)0,(void*)0},{(void*)0,&p_1060->g_106[0],(void*)0,(void*)0},{(void*)0,&p_1060->g_106[0],(void*)0,(void*)0}},{{(void*)0,&p_1060->g_106[0],(void*)0,(void*)0},{(void*)0,&p_1060->g_106[0],(void*)0,(void*)0},{(void*)0,&p_1060->g_106[0],(void*)0,(void*)0},{(void*)0,&p_1060->g_106[0],(void*)0,(void*)0},{(void*)0,&p_1060->g_106[0],(void*)0,(void*)0},{(void*)0,&p_1060->g_106[0],(void*)0,(void*)0},{(void*)0,&p_1060->g_106[0],(void*)0,(void*)0}},{{(void*)0,&p_1060->g_106[0],(void*)0,(void*)0},{(void*)0,&p_1060->g_106[0],(void*)0,(void*)0},{(void*)0,&p_1060->g_106[0],(void*)0,(void*)0},{(void*)0,&p_1060->g_106[0],(void*)0,(void*)0},{(void*)0,&p_1060->g_106[0],(void*)0,(void*)0},{(void*)0,&p_1060->g_106[0],(void*)0,(void*)0},{(void*)0,&p_1060->g_106[0],(void*)0,(void*)0}},{{(void*)0,&p_1060->g_106[0],(void*)0,(void*)0},{(void*)0,&p_1060->g_106[0],(void*)0,(void*)0},{(void*)0,&p_1060->g_106[0],(void*)0,(void*)0},{(void*)0,&p_1060->g_106[0],(void*)0,(void*)0},{(void*)0,&p_1060->g_106[0],(void*)0,(void*)0},{(void*)0,&p_1060->g_106[0],(void*)0,(void*)0},{(void*)0,&p_1060->g_106[0],(void*)0,(void*)0}},{{(void*)0,&p_1060->g_106[0],(void*)0,(void*)0},{(void*)0,&p_1060->g_106[0],(void*)0,(void*)0},{(void*)0,&p_1060->g_106[0],(void*)0,(void*)0},{(void*)0,&p_1060->g_106[0],(void*)0,(void*)0},{(void*)0,&p_1060->g_106[0],(void*)0,(void*)0},{(void*)0,&p_1060->g_106[0],(void*)0,(void*)0},{(void*)0,&p_1060->g_106[0],(void*)0,(void*)0}},{{(void*)0,&p_1060->g_106[0],(void*)0,(void*)0},{(void*)0,&p_1060->g_106[0],(void*)0,(void*)0},{(void*)0,&p_1060->g_106[0],(void*)0,(void*)0},{(void*)0,&p_1060->g_106[0],(void*)0,(void*)0},{(void*)0,&p_1060->g_106[0],(void*)0,(void*)0},{(void*)0,&p_1060->g_106[0],(void*)0,(void*)0},{(void*)0,&p_1060->g_106[0],(void*)0,(void*)0}},{{(void*)0,&p_1060->g_106[0],(void*)0,(void*)0},{(void*)0,&p_1060->g_106[0],(void*)0,(void*)0},{(void*)0,&p_1060->g_106[0],(void*)0,(void*)0},{(void*)0,&p_1060->g_106[0],(void*)0,(void*)0},{(void*)0,&p_1060->g_106[0],(void*)0,(void*)0},{(void*)0,&p_1060->g_106[0],(void*)0,(void*)0},{(void*)0,&p_1060->g_106[0],(void*)0,(void*)0}},{{(void*)0,&p_1060->g_106[0],(void*)0,(void*)0},{(void*)0,&p_1060->g_106[0],(void*)0,(void*)0},{(void*)0,&p_1060->g_106[0],(void*)0,(void*)0},{(void*)0,&p_1060->g_106[0],(void*)0,(void*)0},{(void*)0,&p_1060->g_106[0],(void*)0,(void*)0},{(void*)0,&p_1060->g_106[0],(void*)0,(void*)0},{(void*)0,&p_1060->g_106[0],(void*)0,(void*)0}},{{(void*)0,&p_1060->g_106[0],(void*)0,(void*)0},{(void*)0,&p_1060->g_106[0],(void*)0,(void*)0},{(void*)0,&p_1060->g_106[0],(void*)0,(void*)0},{(void*)0,&p_1060->g_106[0],(void*)0,(void*)0},{(void*)0,&p_1060->g_106[0],(void*)0,(void*)0},{(void*)0,&p_1060->g_106[0],(void*)0,(void*)0},{(void*)0,&p_1060->g_106[0],(void*)0,(void*)0}}}, // p_1060->g_118
        {&p_1060->g_108,&p_1060->g_108,&p_1060->g_108,&p_1060->g_108,&p_1060->g_108,&p_1060->g_108}, // p_1060->g_121
        1UL, // p_1060->g_126
        (void*)0, // p_1060->g_143
        {0UL,9UL,1UL,0xDD3F16023438911BL,1L,2UL}, // p_1060->g_146
        {0UL,0x65EACDDFL,0x5BC5L,0x06L}, // p_1060->g_156
        {{0x4805B927L,2L,65535UL,-4L},{0x4805B927L,2L,65535UL,-4L}}, // p_1060->g_157
        {{0xAC625639L,1L,0xE9FEL,1L},{0xAC625639L,1L,0xE9FEL,1L},{0xAC625639L,1L,0xE9FEL,1L},{0xAC625639L,1L,0xE9FEL,1L},{0xAC625639L,1L,0xE9FEL,1L},{0xAC625639L,1L,0xE9FEL,1L},{0xAC625639L,1L,0xE9FEL,1L},{0xAC625639L,1L,0xE9FEL,1L},{0xAC625639L,1L,0xE9FEL,1L}}, // p_1060->g_158
        {&p_1060->g_156,&p_1060->g_156,&p_1060->g_156,&p_1060->g_156,&p_1060->g_156,&p_1060->g_156,&p_1060->g_156,&p_1060->g_156,&p_1060->g_156,&p_1060->g_156}, // p_1060->g_155
        7L, // p_1060->g_161
        (void*)0, // p_1060->g_170
        1L, // p_1060->g_173
        &p_1060->g_173, // p_1060->g_172
        {0x3222L,0x9A26B157E574C6D2L,4294967289UL,1UL,-8L,0UL}, // p_1060->g_185
        (void*)0, // p_1060->g_195
        &p_1060->g_73, // p_1060->g_202
        {1UL,0x1ACB9F7CL,0x1B3FL,0x6DL}, // p_1060->g_223
        {0xE6AAL}, // p_1060->g_233
        0x1DD93E93L, // p_1060->g_245
        {0xEAAAL,0x224B2532C7C98F07L,4294967295UL,0UL,-1L,0x3037L}, // p_1060->g_251
        {3UL,4UL,9UL,1UL,0L,65527UL}, // p_1060->g_252
        {65527UL,1UL,4UL,0x3CF3447AFBABFCD6L,0x4BC0L,1UL}, // p_1060->g_253
        {{{{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL},{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL}},{{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL},{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL}},{{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL},{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL}},{{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL},{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL}},{{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL},{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL}},{{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL},{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL}}},{{{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL},{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL}},{{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL},{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL}},{{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL},{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL}},{{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL},{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL}},{{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL},{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL}},{{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL},{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL}}},{{{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL},{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL}},{{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL},{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL}},{{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL},{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL}},{{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL},{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL}},{{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL},{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL}},{{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL},{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL}}},{{{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL},{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL}},{{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL},{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL}},{{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL},{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL}},{{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL},{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL}},{{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL},{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL}},{{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL},{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL}}},{{{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL},{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL}},{{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL},{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL}},{{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL},{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL}},{{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL},{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL}},{{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL},{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL}},{{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL},{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL}}},{{{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL},{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL}},{{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL},{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL}},{{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL},{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL}},{{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL},{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL}},{{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL},{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL}},{{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL},{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL}}},{{{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL},{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL}},{{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL},{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL}},{{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL},{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL}},{{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL},{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL}},{{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL},{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL}},{{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL},{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL}}},{{{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL},{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL}},{{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL},{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL}},{{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL},{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL}},{{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL},{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL}},{{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL},{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL}},{{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL},{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL}}},{{{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL},{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL}},{{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL},{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL}},{{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL},{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL}},{{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL},{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL}},{{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL},{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL}},{{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL},{0xE753L,1UL,6UL,0x197F9CA66A1822A1L,1L,65532UL}}}}, // p_1060->g_254
        {0x5746L,0x49A1E4A71829D1ACL,0xD0BC41B9L,0x0C5E9977FC4C1116L,0x565AL,0xDB8AL}, // p_1060->g_255
        {{4UL,1UL,0x62067395L,0x2A289612D35162C1L,-8L,2UL},{4UL,1UL,0x62067395L,0x2A289612D35162C1L,-8L,2UL},{4UL,1UL,0x62067395L,0x2A289612D35162C1L,-8L,2UL},{4UL,1UL,0x62067395L,0x2A289612D35162C1L,-8L,2UL},{4UL,1UL,0x62067395L,0x2A289612D35162C1L,-8L,2UL}}, // p_1060->g_256
        {1UL,4UL,0UL,18446744073709551615UL,0x4B4CL,1UL}, // p_1060->g_257
        {0xB245L,0xD9327C2083D566D0L,9UL,0UL,4L,3UL}, // p_1060->g_258
        {0x7D23L,0x100C5AB965B3739AL,7UL,0x4E7A1AFC6B86DBEEL,0L,0xC610L}, // p_1060->g_259
        {{65535UL,1UL,0x4B2B6D17L,18446744073709551609UL,0x5CF4L,0x9835L},{65535UL,1UL,0x4B2B6D17L,18446744073709551609UL,0x5CF4L,0x9835L},{65535UL,1UL,0x4B2B6D17L,18446744073709551609UL,0x5CF4L,0x9835L},{65535UL,1UL,0x4B2B6D17L,18446744073709551609UL,0x5CF4L,0x9835L},{65535UL,1UL,0x4B2B6D17L,18446744073709551609UL,0x5CF4L,0x9835L},{65535UL,1UL,0x4B2B6D17L,18446744073709551609UL,0x5CF4L,0x9835L},{65535UL,1UL,0x4B2B6D17L,18446744073709551609UL,0x5CF4L,0x9835L}}, // p_1060->g_260
        {0xD9B8L,0x5A0E175A34FBB876L,7UL,0x7662D703F634CE5AL,0x1A39L,0x7394L}, // p_1060->g_261
        {{0x4804L,0x9782B84019BDB98CL,0xD40D41F2L,0x3284EC7DB43E4174L,-3L,0x7742L},{0xFA9EL,0x565B072407BEE8EDL,4294967291UL,6UL,-7L,0x50CCL},{0x4804L,0x9782B84019BDB98CL,0xD40D41F2L,0x3284EC7DB43E4174L,-3L,0x7742L},{0x4804L,0x9782B84019BDB98CL,0xD40D41F2L,0x3284EC7DB43E4174L,-3L,0x7742L},{0xFA9EL,0x565B072407BEE8EDL,4294967291UL,6UL,-7L,0x50CCL},{0x4804L,0x9782B84019BDB98CL,0xD40D41F2L,0x3284EC7DB43E4174L,-3L,0x7742L},{0x4804L,0x9782B84019BDB98CL,0xD40D41F2L,0x3284EC7DB43E4174L,-3L,0x7742L}}, // p_1060->g_262
        {1UL,0x602A20DF232AE47DL,0xB6B8FDC0L,0UL,1L,65533UL}, // p_1060->g_263
        {0x43F4L,0UL,0xEA63802CL,0UL,4L,0x959EL}, // p_1060->g_264
        {0xF689L,0UL,0x5EF3ABFBL,0UL,0x1878L,65535UL}, // p_1060->g_265
        {{0xD729L,6UL,0x06F11A5EL,18446744073709551615UL,5L,0x7642L},{65535UL,0x46AA76B3C505BFE8L,4294967290UL,18446744073709551611UL,-1L,65535UL},{0xD729L,6UL,0x06F11A5EL,18446744073709551615UL,5L,0x7642L},{0xD729L,6UL,0x06F11A5EL,18446744073709551615UL,5L,0x7642L},{65535UL,0x46AA76B3C505BFE8L,4294967290UL,18446744073709551611UL,-1L,65535UL},{0xD729L,6UL,0x06F11A5EL,18446744073709551615UL,5L,0x7642L},{0xD729L,6UL,0x06F11A5EL,18446744073709551615UL,5L,0x7642L},{65535UL,0x46AA76B3C505BFE8L,4294967290UL,18446744073709551611UL,-1L,65535UL}}, // p_1060->g_266
        {0x1190L,0x0582BCD2E3A9FBFAL,0xC9DEEEC2L,0x5D851CD8F33B5990L,7L,8UL}, // p_1060->g_267
        {0x59C4L,0x1FA5839F482893DCL,0x341F2213L,18446744073709551615UL,0x08ECL,1UL}, // p_1060->g_268
        {1UL,0x8C0178596C50F094L,1UL,0x79C7857CB03B54FAL,4L,8UL}, // p_1060->g_269
        {{{0x97A3L,0xD6CFD9D4A11782B0L,4294967292UL,0xA759B0F3FEBD9CC5L,0x3ACDL,1UL},{0x97A3L,0xD6CFD9D4A11782B0L,4294967292UL,0xA759B0F3FEBD9CC5L,0x3ACDL,1UL},{0xC8C8L,0xCAE6502A305BE12FL,6UL,0x1021AD2A60849B00L,1L,0x0BBAL},{0x3687L,0x8BC8206E447777C2L,4294967295UL,0x3D29F545C8E805FFL,-1L,3UL},{1UL,0UL,0UL,0x9426AAB50528DDE3L,1L,0x8662L},{0x3687L,0x8BC8206E447777C2L,4294967295UL,0x3D29F545C8E805FFL,-1L,3UL},{0xC8C8L,0xCAE6502A305BE12FL,6UL,0x1021AD2A60849B00L,1L,0x0BBAL},{0x97A3L,0xD6CFD9D4A11782B0L,4294967292UL,0xA759B0F3FEBD9CC5L,0x3ACDL,1UL},{0x97A3L,0xD6CFD9D4A11782B0L,4294967292UL,0xA759B0F3FEBD9CC5L,0x3ACDL,1UL},{0xC8C8L,0xCAE6502A305BE12FL,6UL,0x1021AD2A60849B00L,1L,0x0BBAL}},{{0x97A3L,0xD6CFD9D4A11782B0L,4294967292UL,0xA759B0F3FEBD9CC5L,0x3ACDL,1UL},{0x97A3L,0xD6CFD9D4A11782B0L,4294967292UL,0xA759B0F3FEBD9CC5L,0x3ACDL,1UL},{0xC8C8L,0xCAE6502A305BE12FL,6UL,0x1021AD2A60849B00L,1L,0x0BBAL},{0x3687L,0x8BC8206E447777C2L,4294967295UL,0x3D29F545C8E805FFL,-1L,3UL},{1UL,0UL,0UL,0x9426AAB50528DDE3L,1L,0x8662L},{0x3687L,0x8BC8206E447777C2L,4294967295UL,0x3D29F545C8E805FFL,-1L,3UL},{0xC8C8L,0xCAE6502A305BE12FL,6UL,0x1021AD2A60849B00L,1L,0x0BBAL},{0x97A3L,0xD6CFD9D4A11782B0L,4294967292UL,0xA759B0F3FEBD9CC5L,0x3ACDL,1UL},{0x97A3L,0xD6CFD9D4A11782B0L,4294967292UL,0xA759B0F3FEBD9CC5L,0x3ACDL,1UL},{0xC8C8L,0xCAE6502A305BE12FL,6UL,0x1021AD2A60849B00L,1L,0x0BBAL}}}, // p_1060->g_270
        {0xEBDDL,0UL,4294967295UL,18446744073709551611UL,0x6E56L,8UL}, // p_1060->g_271
        {0xA225L,18446744073709551615UL,4294967287UL,1UL,-1L,0x792EL}, // p_1060->g_272
        {65535UL,0xA5990F09F6C475C6L,6UL,18446744073709551614UL,-3L,0x61EAL}, // p_1060->g_273
        {{{{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL},{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL}},{{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL},{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL}},{{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL},{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL}},{{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL},{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL}},{{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL},{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL}},{{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL},{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL}}},{{{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL},{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL}},{{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL},{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL}},{{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL},{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL}},{{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL},{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL}},{{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL},{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL}},{{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL},{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL}}},{{{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL},{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL}},{{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL},{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL}},{{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL},{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL}},{{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL},{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL}},{{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL},{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL}},{{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL},{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL}}},{{{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL},{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL}},{{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL},{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL}},{{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL},{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL}},{{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL},{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL}},{{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL},{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL}},{{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL},{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL}}},{{{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL},{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL}},{{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL},{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL}},{{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL},{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL}},{{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL},{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL}},{{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL},{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL}},{{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL},{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL}}},{{{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL},{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL}},{{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL},{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL}},{{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL},{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL}},{{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL},{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL}},{{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL},{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL}},{{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL},{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL}}},{{{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL},{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL}},{{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL},{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL}},{{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL},{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL}},{{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL},{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL}},{{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL},{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL}},{{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL},{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL}}},{{{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL},{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL}},{{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL},{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL}},{{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL},{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL}},{{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL},{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL}},{{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL},{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL}},{{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL},{0x7337L,0UL,0x26A752FAL,0x1601FB99274E46A7L,1L,65529UL}}}}, // p_1060->g_274
        {{65528UL,18446744073709551615UL,4294967294UL,0x6E6E6B571F5CE4DAL,0x7375L,0xB842L},{65528UL,18446744073709551615UL,4294967294UL,0x6E6E6B571F5CE4DAL,0x7375L,0xB842L},{65528UL,18446744073709551615UL,4294967294UL,0x6E6E6B571F5CE4DAL,0x7375L,0xB842L}}, // p_1060->g_275
        {65534UL,0UL,0xB625FD2AL,0x35E3F1211D8B4104L,0x6FBDL,0UL}, // p_1060->g_276
        {0xD63FL,0x54FDB46A76162333L,4294967291UL,6UL,0x4A81L,0x4346L}, // p_1060->g_277
        {65535UL,0x3D06E82CEF0461D2L,0UL,1UL,1L,0xA9D6L}, // p_1060->g_278
        {{{{65530UL,6UL,0xDA84BA11L,0x4C092481F595A229L,1L,8UL},{3UL,0x00B8E471CA4684CCL,0x5CE519DEL,0xD1452EECA2CE9A02L,7L,65526UL}},{{65530UL,6UL,0xDA84BA11L,0x4C092481F595A229L,1L,8UL},{3UL,0x00B8E471CA4684CCL,0x5CE519DEL,0xD1452EECA2CE9A02L,7L,65526UL}},{{65530UL,6UL,0xDA84BA11L,0x4C092481F595A229L,1L,8UL},{3UL,0x00B8E471CA4684CCL,0x5CE519DEL,0xD1452EECA2CE9A02L,7L,65526UL}},{{65530UL,6UL,0xDA84BA11L,0x4C092481F595A229L,1L,8UL},{3UL,0x00B8E471CA4684CCL,0x5CE519DEL,0xD1452EECA2CE9A02L,7L,65526UL}}},{{{65530UL,6UL,0xDA84BA11L,0x4C092481F595A229L,1L,8UL},{3UL,0x00B8E471CA4684CCL,0x5CE519DEL,0xD1452EECA2CE9A02L,7L,65526UL}},{{65530UL,6UL,0xDA84BA11L,0x4C092481F595A229L,1L,8UL},{3UL,0x00B8E471CA4684CCL,0x5CE519DEL,0xD1452EECA2CE9A02L,7L,65526UL}},{{65530UL,6UL,0xDA84BA11L,0x4C092481F595A229L,1L,8UL},{3UL,0x00B8E471CA4684CCL,0x5CE519DEL,0xD1452EECA2CE9A02L,7L,65526UL}},{{65530UL,6UL,0xDA84BA11L,0x4C092481F595A229L,1L,8UL},{3UL,0x00B8E471CA4684CCL,0x5CE519DEL,0xD1452EECA2CE9A02L,7L,65526UL}}},{{{65530UL,6UL,0xDA84BA11L,0x4C092481F595A229L,1L,8UL},{3UL,0x00B8E471CA4684CCL,0x5CE519DEL,0xD1452EECA2CE9A02L,7L,65526UL}},{{65530UL,6UL,0xDA84BA11L,0x4C092481F595A229L,1L,8UL},{3UL,0x00B8E471CA4684CCL,0x5CE519DEL,0xD1452EECA2CE9A02L,7L,65526UL}},{{65530UL,6UL,0xDA84BA11L,0x4C092481F595A229L,1L,8UL},{3UL,0x00B8E471CA4684CCL,0x5CE519DEL,0xD1452EECA2CE9A02L,7L,65526UL}},{{65530UL,6UL,0xDA84BA11L,0x4C092481F595A229L,1L,8UL},{3UL,0x00B8E471CA4684CCL,0x5CE519DEL,0xD1452EECA2CE9A02L,7L,65526UL}}},{{{65530UL,6UL,0xDA84BA11L,0x4C092481F595A229L,1L,8UL},{3UL,0x00B8E471CA4684CCL,0x5CE519DEL,0xD1452EECA2CE9A02L,7L,65526UL}},{{65530UL,6UL,0xDA84BA11L,0x4C092481F595A229L,1L,8UL},{3UL,0x00B8E471CA4684CCL,0x5CE519DEL,0xD1452EECA2CE9A02L,7L,65526UL}},{{65530UL,6UL,0xDA84BA11L,0x4C092481F595A229L,1L,8UL},{3UL,0x00B8E471CA4684CCL,0x5CE519DEL,0xD1452EECA2CE9A02L,7L,65526UL}},{{65530UL,6UL,0xDA84BA11L,0x4C092481F595A229L,1L,8UL},{3UL,0x00B8E471CA4684CCL,0x5CE519DEL,0xD1452EECA2CE9A02L,7L,65526UL}}},{{{65530UL,6UL,0xDA84BA11L,0x4C092481F595A229L,1L,8UL},{3UL,0x00B8E471CA4684CCL,0x5CE519DEL,0xD1452EECA2CE9A02L,7L,65526UL}},{{65530UL,6UL,0xDA84BA11L,0x4C092481F595A229L,1L,8UL},{3UL,0x00B8E471CA4684CCL,0x5CE519DEL,0xD1452EECA2CE9A02L,7L,65526UL}},{{65530UL,6UL,0xDA84BA11L,0x4C092481F595A229L,1L,8UL},{3UL,0x00B8E471CA4684CCL,0x5CE519DEL,0xD1452EECA2CE9A02L,7L,65526UL}},{{65530UL,6UL,0xDA84BA11L,0x4C092481F595A229L,1L,8UL},{3UL,0x00B8E471CA4684CCL,0x5CE519DEL,0xD1452EECA2CE9A02L,7L,65526UL}}},{{{65530UL,6UL,0xDA84BA11L,0x4C092481F595A229L,1L,8UL},{3UL,0x00B8E471CA4684CCL,0x5CE519DEL,0xD1452EECA2CE9A02L,7L,65526UL}},{{65530UL,6UL,0xDA84BA11L,0x4C092481F595A229L,1L,8UL},{3UL,0x00B8E471CA4684CCL,0x5CE519DEL,0xD1452EECA2CE9A02L,7L,65526UL}},{{65530UL,6UL,0xDA84BA11L,0x4C092481F595A229L,1L,8UL},{3UL,0x00B8E471CA4684CCL,0x5CE519DEL,0xD1452EECA2CE9A02L,7L,65526UL}},{{65530UL,6UL,0xDA84BA11L,0x4C092481F595A229L,1L,8UL},{3UL,0x00B8E471CA4684CCL,0x5CE519DEL,0xD1452EECA2CE9A02L,7L,65526UL}}},{{{65530UL,6UL,0xDA84BA11L,0x4C092481F595A229L,1L,8UL},{3UL,0x00B8E471CA4684CCL,0x5CE519DEL,0xD1452EECA2CE9A02L,7L,65526UL}},{{65530UL,6UL,0xDA84BA11L,0x4C092481F595A229L,1L,8UL},{3UL,0x00B8E471CA4684CCL,0x5CE519DEL,0xD1452EECA2CE9A02L,7L,65526UL}},{{65530UL,6UL,0xDA84BA11L,0x4C092481F595A229L,1L,8UL},{3UL,0x00B8E471CA4684CCL,0x5CE519DEL,0xD1452EECA2CE9A02L,7L,65526UL}},{{65530UL,6UL,0xDA84BA11L,0x4C092481F595A229L,1L,8UL},{3UL,0x00B8E471CA4684CCL,0x5CE519DEL,0xD1452EECA2CE9A02L,7L,65526UL}}},{{{65530UL,6UL,0xDA84BA11L,0x4C092481F595A229L,1L,8UL},{3UL,0x00B8E471CA4684CCL,0x5CE519DEL,0xD1452EECA2CE9A02L,7L,65526UL}},{{65530UL,6UL,0xDA84BA11L,0x4C092481F595A229L,1L,8UL},{3UL,0x00B8E471CA4684CCL,0x5CE519DEL,0xD1452EECA2CE9A02L,7L,65526UL}},{{65530UL,6UL,0xDA84BA11L,0x4C092481F595A229L,1L,8UL},{3UL,0x00B8E471CA4684CCL,0x5CE519DEL,0xD1452EECA2CE9A02L,7L,65526UL}},{{65530UL,6UL,0xDA84BA11L,0x4C092481F595A229L,1L,8UL},{3UL,0x00B8E471CA4684CCL,0x5CE519DEL,0xD1452EECA2CE9A02L,7L,65526UL}}},{{{65530UL,6UL,0xDA84BA11L,0x4C092481F595A229L,1L,8UL},{3UL,0x00B8E471CA4684CCL,0x5CE519DEL,0xD1452EECA2CE9A02L,7L,65526UL}},{{65530UL,6UL,0xDA84BA11L,0x4C092481F595A229L,1L,8UL},{3UL,0x00B8E471CA4684CCL,0x5CE519DEL,0xD1452EECA2CE9A02L,7L,65526UL}},{{65530UL,6UL,0xDA84BA11L,0x4C092481F595A229L,1L,8UL},{3UL,0x00B8E471CA4684CCL,0x5CE519DEL,0xD1452EECA2CE9A02L,7L,65526UL}},{{65530UL,6UL,0xDA84BA11L,0x4C092481F595A229L,1L,8UL},{3UL,0x00B8E471CA4684CCL,0x5CE519DEL,0xD1452EECA2CE9A02L,7L,65526UL}}},{{{65530UL,6UL,0xDA84BA11L,0x4C092481F595A229L,1L,8UL},{3UL,0x00B8E471CA4684CCL,0x5CE519DEL,0xD1452EECA2CE9A02L,7L,65526UL}},{{65530UL,6UL,0xDA84BA11L,0x4C092481F595A229L,1L,8UL},{3UL,0x00B8E471CA4684CCL,0x5CE519DEL,0xD1452EECA2CE9A02L,7L,65526UL}},{{65530UL,6UL,0xDA84BA11L,0x4C092481F595A229L,1L,8UL},{3UL,0x00B8E471CA4684CCL,0x5CE519DEL,0xD1452EECA2CE9A02L,7L,65526UL}},{{65530UL,6UL,0xDA84BA11L,0x4C092481F595A229L,1L,8UL},{3UL,0x00B8E471CA4684CCL,0x5CE519DEL,0xD1452EECA2CE9A02L,7L,65526UL}}}}, // p_1060->g_279
        {{0xD973L,0UL,0xD1AA99E7L,0x794DED783F521F7CL,-1L,0x2FD9L},{0xD973L,0UL,0xD1AA99E7L,0x794DED783F521F7CL,-1L,0x2FD9L}}, // p_1060->g_280
        {0xA923L,0x63A0385E88D1CBDAL,1UL,18446744073709551614UL,0x104DL,0xC60CL}, // p_1060->g_281
        {6UL,0x68DBB830A52AECC8L,0xDAEB41E3L,0x0565544F09820A1DL,0x6A86L,0UL}, // p_1060->g_282
        {0xA9D0L,2UL,0xB5A85652L,0UL,4L,0x8BA2L}, // p_1060->g_283
        {0UL,0x31AE1242CA710C95L,0xA7C1728DL,18446744073709551615UL,7L,0x58FCL}, // p_1060->g_284
        {1UL,0UL,4294967295UL,18446744073709551609UL,0x6BDFL,0xA104L}, // p_1060->g_285
        {0UL,0x014085F8C4AC007FL,0UL,6UL,0x5E2BL,65532UL}, // p_1060->g_286
        {{0xF88EL,0x740D2DA0EE495EC2L,0x979685F7L,0x2B848C472A42C80EL,0x02F7L,0x6DE3L},{0xF88EL,0x740D2DA0EE495EC2L,0x979685F7L,0x2B848C472A42C80EL,0x02F7L,0x6DE3L},{0xF88EL,0x740D2DA0EE495EC2L,0x979685F7L,0x2B848C472A42C80EL,0x02F7L,0x6DE3L},{0xF88EL,0x740D2DA0EE495EC2L,0x979685F7L,0x2B848C472A42C80EL,0x02F7L,0x6DE3L}}, // p_1060->g_287
        {0x7C94L,18446744073709551614UL,0x693AD60EL,18446744073709551612UL,1L,1UL}, // p_1060->g_288
        {0xB8F6L,0x7FDB96DCF82778B1L,1UL,18446744073709551615UL,1L,0x5B68L}, // p_1060->g_289
        {0xDC1CL,8UL,0x0E1D867EL,0UL,0x0015L,65535UL}, // p_1060->g_290
        {{1UL,18446744073709551615UL,4294967291UL,7UL,0x3071L,65528UL},{1UL,18446744073709551615UL,4294967291UL,7UL,0x3071L,65528UL},{1UL,18446744073709551615UL,4294967291UL,7UL,0x3071L,65528UL},{1UL,18446744073709551615UL,4294967291UL,7UL,0x3071L,65528UL},{1UL,18446744073709551615UL,4294967291UL,7UL,0x3071L,65528UL},{1UL,18446744073709551615UL,4294967291UL,7UL,0x3071L,65528UL},{1UL,18446744073709551615UL,4294967291UL,7UL,0x3071L,65528UL}}, // p_1060->g_291
        {0UL,0x2AF414E0AD6DD971L,7UL,0xC5EDC73D433844ACL,1L,0x606BL}, // p_1060->g_292
        {0x0570L,7UL,0UL,0xC661F5DA5AEA2547L,-9L,0x2352L}, // p_1060->g_293
        {0x0070L,7UL,0xEEA5D783L,0x69C20DDC43A81B4CL,1L,0xF0FCL}, // p_1060->g_294
        {2UL,0xBFDBF61017FAE190L,4294967288UL,0x2CF7A3F03639E58FL,0x0444L,0x5A64L}, // p_1060->g_295
        {3UL,0x229B64416E39AFF1L,1UL,18446744073709551615UL,1L,0x9EFCL}, // p_1060->g_296
        {65533UL,1UL,0x309A928CL,0x50FD662FCB27B7E0L,-1L,0x0EF6L}, // p_1060->g_297
        {1UL,0x53B71CA113D644DEL,0UL,18446744073709551615UL,0x5063L,65535UL}, // p_1060->g_298
        {{{&p_1060->g_265,&p_1060->g_290,&p_1060->g_269,&p_1060->g_298,&p_1060->g_278,(void*)0,&p_1060->g_288},{&p_1060->g_265,&p_1060->g_290,&p_1060->g_269,&p_1060->g_298,&p_1060->g_278,(void*)0,&p_1060->g_288},{&p_1060->g_265,&p_1060->g_290,&p_1060->g_269,&p_1060->g_298,&p_1060->g_278,(void*)0,&p_1060->g_288},{&p_1060->g_265,&p_1060->g_290,&p_1060->g_269,&p_1060->g_298,&p_1060->g_278,(void*)0,&p_1060->g_288},{&p_1060->g_265,&p_1060->g_290,&p_1060->g_269,&p_1060->g_298,&p_1060->g_278,(void*)0,&p_1060->g_288},{&p_1060->g_265,&p_1060->g_290,&p_1060->g_269,&p_1060->g_298,&p_1060->g_278,(void*)0,&p_1060->g_288},{&p_1060->g_265,&p_1060->g_290,&p_1060->g_269,&p_1060->g_298,&p_1060->g_278,(void*)0,&p_1060->g_288},{&p_1060->g_265,&p_1060->g_290,&p_1060->g_269,&p_1060->g_298,&p_1060->g_278,(void*)0,&p_1060->g_288},{&p_1060->g_265,&p_1060->g_290,&p_1060->g_269,&p_1060->g_298,&p_1060->g_278,(void*)0,&p_1060->g_288}},{{&p_1060->g_265,&p_1060->g_290,&p_1060->g_269,&p_1060->g_298,&p_1060->g_278,(void*)0,&p_1060->g_288},{&p_1060->g_265,&p_1060->g_290,&p_1060->g_269,&p_1060->g_298,&p_1060->g_278,(void*)0,&p_1060->g_288},{&p_1060->g_265,&p_1060->g_290,&p_1060->g_269,&p_1060->g_298,&p_1060->g_278,(void*)0,&p_1060->g_288},{&p_1060->g_265,&p_1060->g_290,&p_1060->g_269,&p_1060->g_298,&p_1060->g_278,(void*)0,&p_1060->g_288},{&p_1060->g_265,&p_1060->g_290,&p_1060->g_269,&p_1060->g_298,&p_1060->g_278,(void*)0,&p_1060->g_288},{&p_1060->g_265,&p_1060->g_290,&p_1060->g_269,&p_1060->g_298,&p_1060->g_278,(void*)0,&p_1060->g_288},{&p_1060->g_265,&p_1060->g_290,&p_1060->g_269,&p_1060->g_298,&p_1060->g_278,(void*)0,&p_1060->g_288},{&p_1060->g_265,&p_1060->g_290,&p_1060->g_269,&p_1060->g_298,&p_1060->g_278,(void*)0,&p_1060->g_288},{&p_1060->g_265,&p_1060->g_290,&p_1060->g_269,&p_1060->g_298,&p_1060->g_278,(void*)0,&p_1060->g_288}},{{&p_1060->g_265,&p_1060->g_290,&p_1060->g_269,&p_1060->g_298,&p_1060->g_278,(void*)0,&p_1060->g_288},{&p_1060->g_265,&p_1060->g_290,&p_1060->g_269,&p_1060->g_298,&p_1060->g_278,(void*)0,&p_1060->g_288},{&p_1060->g_265,&p_1060->g_290,&p_1060->g_269,&p_1060->g_298,&p_1060->g_278,(void*)0,&p_1060->g_288},{&p_1060->g_265,&p_1060->g_290,&p_1060->g_269,&p_1060->g_298,&p_1060->g_278,(void*)0,&p_1060->g_288},{&p_1060->g_265,&p_1060->g_290,&p_1060->g_269,&p_1060->g_298,&p_1060->g_278,(void*)0,&p_1060->g_288},{&p_1060->g_265,&p_1060->g_290,&p_1060->g_269,&p_1060->g_298,&p_1060->g_278,(void*)0,&p_1060->g_288},{&p_1060->g_265,&p_1060->g_290,&p_1060->g_269,&p_1060->g_298,&p_1060->g_278,(void*)0,&p_1060->g_288},{&p_1060->g_265,&p_1060->g_290,&p_1060->g_269,&p_1060->g_298,&p_1060->g_278,(void*)0,&p_1060->g_288},{&p_1060->g_265,&p_1060->g_290,&p_1060->g_269,&p_1060->g_298,&p_1060->g_278,(void*)0,&p_1060->g_288}},{{&p_1060->g_265,&p_1060->g_290,&p_1060->g_269,&p_1060->g_298,&p_1060->g_278,(void*)0,&p_1060->g_288},{&p_1060->g_265,&p_1060->g_290,&p_1060->g_269,&p_1060->g_298,&p_1060->g_278,(void*)0,&p_1060->g_288},{&p_1060->g_265,&p_1060->g_290,&p_1060->g_269,&p_1060->g_298,&p_1060->g_278,(void*)0,&p_1060->g_288},{&p_1060->g_265,&p_1060->g_290,&p_1060->g_269,&p_1060->g_298,&p_1060->g_278,(void*)0,&p_1060->g_288},{&p_1060->g_265,&p_1060->g_290,&p_1060->g_269,&p_1060->g_298,&p_1060->g_278,(void*)0,&p_1060->g_288},{&p_1060->g_265,&p_1060->g_290,&p_1060->g_269,&p_1060->g_298,&p_1060->g_278,(void*)0,&p_1060->g_288},{&p_1060->g_265,&p_1060->g_290,&p_1060->g_269,&p_1060->g_298,&p_1060->g_278,(void*)0,&p_1060->g_288},{&p_1060->g_265,&p_1060->g_290,&p_1060->g_269,&p_1060->g_298,&p_1060->g_278,(void*)0,&p_1060->g_288},{&p_1060->g_265,&p_1060->g_290,&p_1060->g_269,&p_1060->g_298,&p_1060->g_278,(void*)0,&p_1060->g_288}}}, // p_1060->g_250
        0x1C9425C8L, // p_1060->g_317
        {65528UL,18446744073709551614UL,0x0FD68956L,0x9C6C98CE44BD0252L,0x0064L,0x3E79L}, // p_1060->g_319
        &p_1060->g_233.f2.f0, // p_1060->g_324
        {0x10DB3CA8L,0x5E9E254CL,7UL,5L}, // p_1060->g_325
        65535UL, // p_1060->g_348
        {1UL,18446744073709551615UL,6UL,18446744073709551615UL,-1L,0xC0A0L}, // p_1060->g_351
        {0x4FD9L,0x4FE0EFC14EF2F984L,0xE634FCB8L,0x4B9B0143853552CAL,0x7399L,0UL}, // p_1060->g_367
        &p_1060->g_253, // p_1060->g_368
        &p_1060->g_3, // p_1060->g_373
        0x3CF0L, // p_1060->g_376
        (void*)0, // p_1060->g_378
        &p_1060->g_195, // p_1060->g_379
        0x3BF3L, // p_1060->g_394
        &p_1060->g_170, // p_1060->g_420
        &p_1060->g_420, // p_1060->g_419
        {0x4265B5F8CA4A355FL}, // p_1060->g_429
        1L, // p_1060->g_539
        &p_1060->g_155[5], // p_1060->g_548
        &p_1060->g_548, // p_1060->g_547
        247UL, // p_1060->g_593
        18446744073709551606UL, // p_1060->g_619
        {65527UL,0xA03C465FEAE0427BL,1UL,0xA4A86BF4C2CF8AE6L,3L,65529UL}, // p_1060->g_621
        (void*)0, // p_1060->g_622
        {0xC264L,4UL,1UL,5UL,0x6EC9L,0xA6BFL}, // p_1060->g_624
        {0x3B2ABBA0L,0L,2UL,0L}, // p_1060->g_627
        0x51L, // p_1060->g_713
        {0x0C3EL,2UL,0UL,6UL,0L,0x7711L}, // p_1060->g_750
        {4UL,0xA58DD65A18F214FFL,0x3E2DD03BL,0xDFDBD18A0B9C733FL,5L,0x7811L}, // p_1060->g_758
        {{65532UL,0x612A41A824CEAE71L,0x7B00FBE0L,0x1D6EB96C3E1FC6B7L,1L,0x75E4L},{65532UL,0x612A41A824CEAE71L,0x7B00FBE0L,0x1D6EB96C3E1FC6B7L,1L,0x75E4L},{65532UL,0x612A41A824CEAE71L,0x7B00FBE0L,0x1D6EB96C3E1FC6B7L,1L,0x75E4L},{65532UL,0x612A41A824CEAE71L,0x7B00FBE0L,0x1D6EB96C3E1FC6B7L,1L,0x75E4L}}, // p_1060->g_763
        &p_1060->g_73, // p_1060->g_795
        {(-3L),(-3L),(-3L),(-3L),(-3L)}, // p_1060->g_823
        {0xFE66869CL,1L,5UL,0x3EL}, // p_1060->g_826
        {0x44D898565AE548FDL}, // p_1060->g_844
        {0x617506DDL,-1L,65526UL,0x2BL}, // p_1060->g_850
        {0xDF3DL,7UL,0x9ADE8DEBL,18446744073709551615UL,0L,0x1BA6L}, // p_1060->g_865
        9UL, // p_1060->g_870
        {0UL}, // p_1060->g_931
        {0x5663L}, // p_1060->g_948
        0x2DL, // p_1060->g_955
        &p_1060->g_955, // p_1060->g_954
        &p_1060->g_954, // p_1060->g_953
        {{{1UL,18446744073709551613UL,4294967295UL,0x3B8562418911CD91L,0x0C42L,0xCB0AL},{0x1C8AL,0x9DA4D12B05C5EC4DL,4294967293UL,0x5156D4DBED9D7A81L,-3L,0xA233L},{1UL,18446744073709551613UL,4294967295UL,0x3B8562418911CD91L,0x0C42L,0xCB0AL},{1UL,18446744073709551613UL,4294967295UL,0x3B8562418911CD91L,0x0C42L,0xCB0AL},{0x1C8AL,0x9DA4D12B05C5EC4DL,4294967293UL,0x5156D4DBED9D7A81L,-3L,0xA233L},{1UL,18446744073709551613UL,4294967295UL,0x3B8562418911CD91L,0x0C42L,0xCB0AL},{1UL,18446744073709551613UL,4294967295UL,0x3B8562418911CD91L,0x0C42L,0xCB0AL},{0x1C8AL,0x9DA4D12B05C5EC4DL,4294967293UL,0x5156D4DBED9D7A81L,-3L,0xA233L},{1UL,18446744073709551613UL,4294967295UL,0x3B8562418911CD91L,0x0C42L,0xCB0AL}},{{1UL,18446744073709551613UL,4294967295UL,0x3B8562418911CD91L,0x0C42L,0xCB0AL},{0x1C8AL,0x9DA4D12B05C5EC4DL,4294967293UL,0x5156D4DBED9D7A81L,-3L,0xA233L},{1UL,18446744073709551613UL,4294967295UL,0x3B8562418911CD91L,0x0C42L,0xCB0AL},{1UL,18446744073709551613UL,4294967295UL,0x3B8562418911CD91L,0x0C42L,0xCB0AL},{0x1C8AL,0x9DA4D12B05C5EC4DL,4294967293UL,0x5156D4DBED9D7A81L,-3L,0xA233L},{1UL,18446744073709551613UL,4294967295UL,0x3B8562418911CD91L,0x0C42L,0xCB0AL},{1UL,18446744073709551613UL,4294967295UL,0x3B8562418911CD91L,0x0C42L,0xCB0AL},{0x1C8AL,0x9DA4D12B05C5EC4DL,4294967293UL,0x5156D4DBED9D7A81L,-3L,0xA233L},{1UL,18446744073709551613UL,4294967295UL,0x3B8562418911CD91L,0x0C42L,0xCB0AL}},{{1UL,18446744073709551613UL,4294967295UL,0x3B8562418911CD91L,0x0C42L,0xCB0AL},{0x1C8AL,0x9DA4D12B05C5EC4DL,4294967293UL,0x5156D4DBED9D7A81L,-3L,0xA233L},{1UL,18446744073709551613UL,4294967295UL,0x3B8562418911CD91L,0x0C42L,0xCB0AL},{1UL,18446744073709551613UL,4294967295UL,0x3B8562418911CD91L,0x0C42L,0xCB0AL},{0x1C8AL,0x9DA4D12B05C5EC4DL,4294967293UL,0x5156D4DBED9D7A81L,-3L,0xA233L},{1UL,18446744073709551613UL,4294967295UL,0x3B8562418911CD91L,0x0C42L,0xCB0AL},{1UL,18446744073709551613UL,4294967295UL,0x3B8562418911CD91L,0x0C42L,0xCB0AL},{0x1C8AL,0x9DA4D12B05C5EC4DL,4294967293UL,0x5156D4DBED9D7A81L,-3L,0xA233L},{1UL,18446744073709551613UL,4294967295UL,0x3B8562418911CD91L,0x0C42L,0xCB0AL}},{{1UL,18446744073709551613UL,4294967295UL,0x3B8562418911CD91L,0x0C42L,0xCB0AL},{0x1C8AL,0x9DA4D12B05C5EC4DL,4294967293UL,0x5156D4DBED9D7A81L,-3L,0xA233L},{1UL,18446744073709551613UL,4294967295UL,0x3B8562418911CD91L,0x0C42L,0xCB0AL},{1UL,18446744073709551613UL,4294967295UL,0x3B8562418911CD91L,0x0C42L,0xCB0AL},{0x1C8AL,0x9DA4D12B05C5EC4DL,4294967293UL,0x5156D4DBED9D7A81L,-3L,0xA233L},{1UL,18446744073709551613UL,4294967295UL,0x3B8562418911CD91L,0x0C42L,0xCB0AL},{1UL,18446744073709551613UL,4294967295UL,0x3B8562418911CD91L,0x0C42L,0xCB0AL},{0x1C8AL,0x9DA4D12B05C5EC4DL,4294967293UL,0x5156D4DBED9D7A81L,-3L,0xA233L},{1UL,18446744073709551613UL,4294967295UL,0x3B8562418911CD91L,0x0C42L,0xCB0AL}},{{1UL,18446744073709551613UL,4294967295UL,0x3B8562418911CD91L,0x0C42L,0xCB0AL},{0x1C8AL,0x9DA4D12B05C5EC4DL,4294967293UL,0x5156D4DBED9D7A81L,-3L,0xA233L},{1UL,18446744073709551613UL,4294967295UL,0x3B8562418911CD91L,0x0C42L,0xCB0AL},{1UL,18446744073709551613UL,4294967295UL,0x3B8562418911CD91L,0x0C42L,0xCB0AL},{0x1C8AL,0x9DA4D12B05C5EC4DL,4294967293UL,0x5156D4DBED9D7A81L,-3L,0xA233L},{1UL,18446744073709551613UL,4294967295UL,0x3B8562418911CD91L,0x0C42L,0xCB0AL},{1UL,18446744073709551613UL,4294967295UL,0x3B8562418911CD91L,0x0C42L,0xCB0AL},{0x1C8AL,0x9DA4D12B05C5EC4DL,4294967293UL,0x5156D4DBED9D7A81L,-3L,0xA233L},{1UL,18446744073709551613UL,4294967295UL,0x3B8562418911CD91L,0x0C42L,0xCB0AL}}}, // p_1060->g_972
        &p_1060->g_269, // p_1060->g_973
        {3L,3L,3L,3L,3L,3L,3L}, // p_1060->g_981
        (void*)0, // p_1060->g_1004
        &p_1060->g_1004, // p_1060->g_1003
        sequence_input[get_global_id(0)], // p_1060->global_0_offset
        sequence_input[get_global_id(1)], // p_1060->global_1_offset
        sequence_input[get_global_id(2)], // p_1060->global_2_offset
        sequence_input[get_local_id(0)], // p_1060->local_0_offset
        sequence_input[get_local_id(1)], // p_1060->local_1_offset
        sequence_input[get_local_id(2)], // p_1060->local_2_offset
        sequence_input[get_group_id(0)], // p_1060->group_0_offset
        sequence_input[get_group_id(1)], // p_1060->group_1_offset
        sequence_input[get_group_id(2)], // p_1060->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 35)), permutations[0][get_linear_local_id()])), // p_1060->tid
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_1061 = c_1062;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1060);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_1060->g_2[i][j][k], "p_1060->g_2[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1060->g_3, "p_1060->g_3", print_hash_value);
    transparent_crc(p_1060->g_18, "p_1060->g_18", print_hash_value);
    transparent_crc(p_1060->g_53, "p_1060->g_53", print_hash_value);
    transparent_crc(p_1060->g_73, "p_1060->g_73", print_hash_value);
    transparent_crc(p_1060->g_97.f0, "p_1060->g_97.f0", print_hash_value);
    transparent_crc(p_1060->g_97.f1, "p_1060->g_97.f1", print_hash_value);
    transparent_crc(p_1060->g_97.f2, "p_1060->g_97.f2", print_hash_value);
    transparent_crc(p_1060->g_97.f3, "p_1060->g_97.f3", print_hash_value);
    transparent_crc(p_1060->g_97.f4, "p_1060->g_97.f4", print_hash_value);
    transparent_crc(p_1060->g_97.f5, "p_1060->g_97.f5", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_1060->g_106[i], "p_1060->g_106[i]", print_hash_value);

    }
    transparent_crc(p_1060->g_108.f0, "p_1060->g_108.f0", print_hash_value);
    transparent_crc(p_1060->g_108.f1, "p_1060->g_108.f1", print_hash_value);
    transparent_crc(p_1060->g_108.f2, "p_1060->g_108.f2", print_hash_value);
    transparent_crc(p_1060->g_108.f3, "p_1060->g_108.f3", print_hash_value);
    transparent_crc(p_1060->g_126, "p_1060->g_126", print_hash_value);
    transparent_crc(p_1060->g_146.f0, "p_1060->g_146.f0", print_hash_value);
    transparent_crc(p_1060->g_146.f1, "p_1060->g_146.f1", print_hash_value);
    transparent_crc(p_1060->g_146.f2, "p_1060->g_146.f2", print_hash_value);
    transparent_crc(p_1060->g_146.f3, "p_1060->g_146.f3", print_hash_value);
    transparent_crc(p_1060->g_146.f4, "p_1060->g_146.f4", print_hash_value);
    transparent_crc(p_1060->g_146.f5, "p_1060->g_146.f5", print_hash_value);
    transparent_crc(p_1060->g_156.f0, "p_1060->g_156.f0", print_hash_value);
    transparent_crc(p_1060->g_156.f1, "p_1060->g_156.f1", print_hash_value);
    transparent_crc(p_1060->g_156.f2, "p_1060->g_156.f2", print_hash_value);
    transparent_crc(p_1060->g_156.f3, "p_1060->g_156.f3", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1060->g_157[i].f0, "p_1060->g_157[i].f0", print_hash_value);
        transparent_crc(p_1060->g_157[i].f1, "p_1060->g_157[i].f1", print_hash_value);
        transparent_crc(p_1060->g_157[i].f2, "p_1060->g_157[i].f2", print_hash_value);
        transparent_crc(p_1060->g_157[i].f3, "p_1060->g_157[i].f3", print_hash_value);

    }
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1060->g_158[i].f0, "p_1060->g_158[i].f0", print_hash_value);
        transparent_crc(p_1060->g_158[i].f1, "p_1060->g_158[i].f1", print_hash_value);
        transparent_crc(p_1060->g_158[i].f2, "p_1060->g_158[i].f2", print_hash_value);
        transparent_crc(p_1060->g_158[i].f3, "p_1060->g_158[i].f3", print_hash_value);

    }
    transparent_crc(p_1060->g_161, "p_1060->g_161", print_hash_value);
    transparent_crc(p_1060->g_173, "p_1060->g_173", print_hash_value);
    transparent_crc(p_1060->g_185.f0, "p_1060->g_185.f0", print_hash_value);
    transparent_crc(p_1060->g_185.f1, "p_1060->g_185.f1", print_hash_value);
    transparent_crc(p_1060->g_185.f2, "p_1060->g_185.f2", print_hash_value);
    transparent_crc(p_1060->g_185.f3, "p_1060->g_185.f3", print_hash_value);
    transparent_crc(p_1060->g_185.f4, "p_1060->g_185.f4", print_hash_value);
    transparent_crc(p_1060->g_185.f5, "p_1060->g_185.f5", print_hash_value);
    transparent_crc(p_1060->g_223.f0, "p_1060->g_223.f0", print_hash_value);
    transparent_crc(p_1060->g_223.f1, "p_1060->g_223.f1", print_hash_value);
    transparent_crc(p_1060->g_223.f2, "p_1060->g_223.f2", print_hash_value);
    transparent_crc(p_1060->g_223.f3, "p_1060->g_223.f3", print_hash_value);
    transparent_crc(p_1060->g_233.f0, "p_1060->g_233.f0", print_hash_value);
    transparent_crc(p_1060->g_245, "p_1060->g_245", print_hash_value);
    transparent_crc(p_1060->g_251.f0, "p_1060->g_251.f0", print_hash_value);
    transparent_crc(p_1060->g_251.f1, "p_1060->g_251.f1", print_hash_value);
    transparent_crc(p_1060->g_251.f2, "p_1060->g_251.f2", print_hash_value);
    transparent_crc(p_1060->g_251.f3, "p_1060->g_251.f3", print_hash_value);
    transparent_crc(p_1060->g_251.f4, "p_1060->g_251.f4", print_hash_value);
    transparent_crc(p_1060->g_251.f5, "p_1060->g_251.f5", print_hash_value);
    transparent_crc(p_1060->g_252.f0, "p_1060->g_252.f0", print_hash_value);
    transparent_crc(p_1060->g_252.f1, "p_1060->g_252.f1", print_hash_value);
    transparent_crc(p_1060->g_252.f2, "p_1060->g_252.f2", print_hash_value);
    transparent_crc(p_1060->g_252.f3, "p_1060->g_252.f3", print_hash_value);
    transparent_crc(p_1060->g_252.f4, "p_1060->g_252.f4", print_hash_value);
    transparent_crc(p_1060->g_252.f5, "p_1060->g_252.f5", print_hash_value);
    transparent_crc(p_1060->g_253.f0, "p_1060->g_253.f0", print_hash_value);
    transparent_crc(p_1060->g_253.f1, "p_1060->g_253.f1", print_hash_value);
    transparent_crc(p_1060->g_253.f2, "p_1060->g_253.f2", print_hash_value);
    transparent_crc(p_1060->g_253.f3, "p_1060->g_253.f3", print_hash_value);
    transparent_crc(p_1060->g_253.f4, "p_1060->g_253.f4", print_hash_value);
    transparent_crc(p_1060->g_253.f5, "p_1060->g_253.f5", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 6; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_1060->g_254[i][j][k].f0, "p_1060->g_254[i][j][k].f0", print_hash_value);
                transparent_crc(p_1060->g_254[i][j][k].f1, "p_1060->g_254[i][j][k].f1", print_hash_value);
                transparent_crc(p_1060->g_254[i][j][k].f2, "p_1060->g_254[i][j][k].f2", print_hash_value);
                transparent_crc(p_1060->g_254[i][j][k].f3, "p_1060->g_254[i][j][k].f3", print_hash_value);
                transparent_crc(p_1060->g_254[i][j][k].f4, "p_1060->g_254[i][j][k].f4", print_hash_value);
                transparent_crc(p_1060->g_254[i][j][k].f5, "p_1060->g_254[i][j][k].f5", print_hash_value);

            }
        }
    }
    transparent_crc(p_1060->g_255.f0, "p_1060->g_255.f0", print_hash_value);
    transparent_crc(p_1060->g_255.f1, "p_1060->g_255.f1", print_hash_value);
    transparent_crc(p_1060->g_255.f2, "p_1060->g_255.f2", print_hash_value);
    transparent_crc(p_1060->g_255.f3, "p_1060->g_255.f3", print_hash_value);
    transparent_crc(p_1060->g_255.f4, "p_1060->g_255.f4", print_hash_value);
    transparent_crc(p_1060->g_255.f5, "p_1060->g_255.f5", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_1060->g_256[i].f0, "p_1060->g_256[i].f0", print_hash_value);
        transparent_crc(p_1060->g_256[i].f1, "p_1060->g_256[i].f1", print_hash_value);
        transparent_crc(p_1060->g_256[i].f2, "p_1060->g_256[i].f2", print_hash_value);
        transparent_crc(p_1060->g_256[i].f3, "p_1060->g_256[i].f3", print_hash_value);
        transparent_crc(p_1060->g_256[i].f4, "p_1060->g_256[i].f4", print_hash_value);
        transparent_crc(p_1060->g_256[i].f5, "p_1060->g_256[i].f5", print_hash_value);

    }
    transparent_crc(p_1060->g_257.f0, "p_1060->g_257.f0", print_hash_value);
    transparent_crc(p_1060->g_257.f1, "p_1060->g_257.f1", print_hash_value);
    transparent_crc(p_1060->g_257.f2, "p_1060->g_257.f2", print_hash_value);
    transparent_crc(p_1060->g_257.f3, "p_1060->g_257.f3", print_hash_value);
    transparent_crc(p_1060->g_257.f4, "p_1060->g_257.f4", print_hash_value);
    transparent_crc(p_1060->g_257.f5, "p_1060->g_257.f5", print_hash_value);
    transparent_crc(p_1060->g_258.f0, "p_1060->g_258.f0", print_hash_value);
    transparent_crc(p_1060->g_258.f1, "p_1060->g_258.f1", print_hash_value);
    transparent_crc(p_1060->g_258.f2, "p_1060->g_258.f2", print_hash_value);
    transparent_crc(p_1060->g_258.f3, "p_1060->g_258.f3", print_hash_value);
    transparent_crc(p_1060->g_258.f4, "p_1060->g_258.f4", print_hash_value);
    transparent_crc(p_1060->g_258.f5, "p_1060->g_258.f5", print_hash_value);
    transparent_crc(p_1060->g_259.f0, "p_1060->g_259.f0", print_hash_value);
    transparent_crc(p_1060->g_259.f1, "p_1060->g_259.f1", print_hash_value);
    transparent_crc(p_1060->g_259.f2, "p_1060->g_259.f2", print_hash_value);
    transparent_crc(p_1060->g_259.f3, "p_1060->g_259.f3", print_hash_value);
    transparent_crc(p_1060->g_259.f4, "p_1060->g_259.f4", print_hash_value);
    transparent_crc(p_1060->g_259.f5, "p_1060->g_259.f5", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1060->g_260[i].f0, "p_1060->g_260[i].f0", print_hash_value);
        transparent_crc(p_1060->g_260[i].f1, "p_1060->g_260[i].f1", print_hash_value);
        transparent_crc(p_1060->g_260[i].f2, "p_1060->g_260[i].f2", print_hash_value);
        transparent_crc(p_1060->g_260[i].f3, "p_1060->g_260[i].f3", print_hash_value);
        transparent_crc(p_1060->g_260[i].f4, "p_1060->g_260[i].f4", print_hash_value);
        transparent_crc(p_1060->g_260[i].f5, "p_1060->g_260[i].f5", print_hash_value);

    }
    transparent_crc(p_1060->g_261.f0, "p_1060->g_261.f0", print_hash_value);
    transparent_crc(p_1060->g_261.f1, "p_1060->g_261.f1", print_hash_value);
    transparent_crc(p_1060->g_261.f2, "p_1060->g_261.f2", print_hash_value);
    transparent_crc(p_1060->g_261.f3, "p_1060->g_261.f3", print_hash_value);
    transparent_crc(p_1060->g_261.f4, "p_1060->g_261.f4", print_hash_value);
    transparent_crc(p_1060->g_261.f5, "p_1060->g_261.f5", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1060->g_262[i].f0, "p_1060->g_262[i].f0", print_hash_value);
        transparent_crc(p_1060->g_262[i].f1, "p_1060->g_262[i].f1", print_hash_value);
        transparent_crc(p_1060->g_262[i].f2, "p_1060->g_262[i].f2", print_hash_value);
        transparent_crc(p_1060->g_262[i].f3, "p_1060->g_262[i].f3", print_hash_value);
        transparent_crc(p_1060->g_262[i].f4, "p_1060->g_262[i].f4", print_hash_value);
        transparent_crc(p_1060->g_262[i].f5, "p_1060->g_262[i].f5", print_hash_value);

    }
    transparent_crc(p_1060->g_263.f0, "p_1060->g_263.f0", print_hash_value);
    transparent_crc(p_1060->g_263.f1, "p_1060->g_263.f1", print_hash_value);
    transparent_crc(p_1060->g_263.f2, "p_1060->g_263.f2", print_hash_value);
    transparent_crc(p_1060->g_263.f3, "p_1060->g_263.f3", print_hash_value);
    transparent_crc(p_1060->g_263.f4, "p_1060->g_263.f4", print_hash_value);
    transparent_crc(p_1060->g_263.f5, "p_1060->g_263.f5", print_hash_value);
    transparent_crc(p_1060->g_264.f0, "p_1060->g_264.f0", print_hash_value);
    transparent_crc(p_1060->g_264.f1, "p_1060->g_264.f1", print_hash_value);
    transparent_crc(p_1060->g_264.f2, "p_1060->g_264.f2", print_hash_value);
    transparent_crc(p_1060->g_264.f3, "p_1060->g_264.f3", print_hash_value);
    transparent_crc(p_1060->g_264.f4, "p_1060->g_264.f4", print_hash_value);
    transparent_crc(p_1060->g_264.f5, "p_1060->g_264.f5", print_hash_value);
    transparent_crc(p_1060->g_265.f0, "p_1060->g_265.f0", print_hash_value);
    transparent_crc(p_1060->g_265.f1, "p_1060->g_265.f1", print_hash_value);
    transparent_crc(p_1060->g_265.f2, "p_1060->g_265.f2", print_hash_value);
    transparent_crc(p_1060->g_265.f3, "p_1060->g_265.f3", print_hash_value);
    transparent_crc(p_1060->g_265.f4, "p_1060->g_265.f4", print_hash_value);
    transparent_crc(p_1060->g_265.f5, "p_1060->g_265.f5", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1060->g_266[i].f0, "p_1060->g_266[i].f0", print_hash_value);
        transparent_crc(p_1060->g_266[i].f1, "p_1060->g_266[i].f1", print_hash_value);
        transparent_crc(p_1060->g_266[i].f2, "p_1060->g_266[i].f2", print_hash_value);
        transparent_crc(p_1060->g_266[i].f3, "p_1060->g_266[i].f3", print_hash_value);
        transparent_crc(p_1060->g_266[i].f4, "p_1060->g_266[i].f4", print_hash_value);
        transparent_crc(p_1060->g_266[i].f5, "p_1060->g_266[i].f5", print_hash_value);

    }
    transparent_crc(p_1060->g_267.f0, "p_1060->g_267.f0", print_hash_value);
    transparent_crc(p_1060->g_267.f1, "p_1060->g_267.f1", print_hash_value);
    transparent_crc(p_1060->g_267.f2, "p_1060->g_267.f2", print_hash_value);
    transparent_crc(p_1060->g_267.f3, "p_1060->g_267.f3", print_hash_value);
    transparent_crc(p_1060->g_267.f4, "p_1060->g_267.f4", print_hash_value);
    transparent_crc(p_1060->g_267.f5, "p_1060->g_267.f5", print_hash_value);
    transparent_crc(p_1060->g_268.f0, "p_1060->g_268.f0", print_hash_value);
    transparent_crc(p_1060->g_268.f1, "p_1060->g_268.f1", print_hash_value);
    transparent_crc(p_1060->g_268.f2, "p_1060->g_268.f2", print_hash_value);
    transparent_crc(p_1060->g_268.f3, "p_1060->g_268.f3", print_hash_value);
    transparent_crc(p_1060->g_268.f4, "p_1060->g_268.f4", print_hash_value);
    transparent_crc(p_1060->g_268.f5, "p_1060->g_268.f5", print_hash_value);
    transparent_crc(p_1060->g_269.f0, "p_1060->g_269.f0", print_hash_value);
    transparent_crc(p_1060->g_269.f1, "p_1060->g_269.f1", print_hash_value);
    transparent_crc(p_1060->g_269.f2, "p_1060->g_269.f2", print_hash_value);
    transparent_crc(p_1060->g_269.f3, "p_1060->g_269.f3", print_hash_value);
    transparent_crc(p_1060->g_269.f4, "p_1060->g_269.f4", print_hash_value);
    transparent_crc(p_1060->g_269.f5, "p_1060->g_269.f5", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_1060->g_270[i][j].f0, "p_1060->g_270[i][j].f0", print_hash_value);
            transparent_crc(p_1060->g_270[i][j].f1, "p_1060->g_270[i][j].f1", print_hash_value);
            transparent_crc(p_1060->g_270[i][j].f2, "p_1060->g_270[i][j].f2", print_hash_value);
            transparent_crc(p_1060->g_270[i][j].f3, "p_1060->g_270[i][j].f3", print_hash_value);
            transparent_crc(p_1060->g_270[i][j].f4, "p_1060->g_270[i][j].f4", print_hash_value);
            transparent_crc(p_1060->g_270[i][j].f5, "p_1060->g_270[i][j].f5", print_hash_value);

        }
    }
    transparent_crc(p_1060->g_271.f0, "p_1060->g_271.f0", print_hash_value);
    transparent_crc(p_1060->g_271.f1, "p_1060->g_271.f1", print_hash_value);
    transparent_crc(p_1060->g_271.f2, "p_1060->g_271.f2", print_hash_value);
    transparent_crc(p_1060->g_271.f3, "p_1060->g_271.f3", print_hash_value);
    transparent_crc(p_1060->g_271.f4, "p_1060->g_271.f4", print_hash_value);
    transparent_crc(p_1060->g_271.f5, "p_1060->g_271.f5", print_hash_value);
    transparent_crc(p_1060->g_272.f0, "p_1060->g_272.f0", print_hash_value);
    transparent_crc(p_1060->g_272.f1, "p_1060->g_272.f1", print_hash_value);
    transparent_crc(p_1060->g_272.f2, "p_1060->g_272.f2", print_hash_value);
    transparent_crc(p_1060->g_272.f3, "p_1060->g_272.f3", print_hash_value);
    transparent_crc(p_1060->g_272.f4, "p_1060->g_272.f4", print_hash_value);
    transparent_crc(p_1060->g_272.f5, "p_1060->g_272.f5", print_hash_value);
    transparent_crc(p_1060->g_273.f0, "p_1060->g_273.f0", print_hash_value);
    transparent_crc(p_1060->g_273.f1, "p_1060->g_273.f1", print_hash_value);
    transparent_crc(p_1060->g_273.f2, "p_1060->g_273.f2", print_hash_value);
    transparent_crc(p_1060->g_273.f3, "p_1060->g_273.f3", print_hash_value);
    transparent_crc(p_1060->g_273.f4, "p_1060->g_273.f4", print_hash_value);
    transparent_crc(p_1060->g_273.f5, "p_1060->g_273.f5", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 6; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_1060->g_274[i][j][k].f0, "p_1060->g_274[i][j][k].f0", print_hash_value);
                transparent_crc(p_1060->g_274[i][j][k].f1, "p_1060->g_274[i][j][k].f1", print_hash_value);
                transparent_crc(p_1060->g_274[i][j][k].f2, "p_1060->g_274[i][j][k].f2", print_hash_value);
                transparent_crc(p_1060->g_274[i][j][k].f3, "p_1060->g_274[i][j][k].f3", print_hash_value);
                transparent_crc(p_1060->g_274[i][j][k].f4, "p_1060->g_274[i][j][k].f4", print_hash_value);
                transparent_crc(p_1060->g_274[i][j][k].f5, "p_1060->g_274[i][j][k].f5", print_hash_value);

            }
        }
    }
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_1060->g_275[i].f0, "p_1060->g_275[i].f0", print_hash_value);
        transparent_crc(p_1060->g_275[i].f1, "p_1060->g_275[i].f1", print_hash_value);
        transparent_crc(p_1060->g_275[i].f2, "p_1060->g_275[i].f2", print_hash_value);
        transparent_crc(p_1060->g_275[i].f3, "p_1060->g_275[i].f3", print_hash_value);
        transparent_crc(p_1060->g_275[i].f4, "p_1060->g_275[i].f4", print_hash_value);
        transparent_crc(p_1060->g_275[i].f5, "p_1060->g_275[i].f5", print_hash_value);

    }
    transparent_crc(p_1060->g_276.f0, "p_1060->g_276.f0", print_hash_value);
    transparent_crc(p_1060->g_276.f1, "p_1060->g_276.f1", print_hash_value);
    transparent_crc(p_1060->g_276.f2, "p_1060->g_276.f2", print_hash_value);
    transparent_crc(p_1060->g_276.f3, "p_1060->g_276.f3", print_hash_value);
    transparent_crc(p_1060->g_276.f4, "p_1060->g_276.f4", print_hash_value);
    transparent_crc(p_1060->g_276.f5, "p_1060->g_276.f5", print_hash_value);
    transparent_crc(p_1060->g_277.f0, "p_1060->g_277.f0", print_hash_value);
    transparent_crc(p_1060->g_277.f1, "p_1060->g_277.f1", print_hash_value);
    transparent_crc(p_1060->g_277.f2, "p_1060->g_277.f2", print_hash_value);
    transparent_crc(p_1060->g_277.f3, "p_1060->g_277.f3", print_hash_value);
    transparent_crc(p_1060->g_277.f4, "p_1060->g_277.f4", print_hash_value);
    transparent_crc(p_1060->g_277.f5, "p_1060->g_277.f5", print_hash_value);
    transparent_crc(p_1060->g_278.f0, "p_1060->g_278.f0", print_hash_value);
    transparent_crc(p_1060->g_278.f1, "p_1060->g_278.f1", print_hash_value);
    transparent_crc(p_1060->g_278.f2, "p_1060->g_278.f2", print_hash_value);
    transparent_crc(p_1060->g_278.f3, "p_1060->g_278.f3", print_hash_value);
    transparent_crc(p_1060->g_278.f4, "p_1060->g_278.f4", print_hash_value);
    transparent_crc(p_1060->g_278.f5, "p_1060->g_278.f5", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_1060->g_279[i][j][k].f0, "p_1060->g_279[i][j][k].f0", print_hash_value);
                transparent_crc(p_1060->g_279[i][j][k].f1, "p_1060->g_279[i][j][k].f1", print_hash_value);
                transparent_crc(p_1060->g_279[i][j][k].f2, "p_1060->g_279[i][j][k].f2", print_hash_value);
                transparent_crc(p_1060->g_279[i][j][k].f3, "p_1060->g_279[i][j][k].f3", print_hash_value);
                transparent_crc(p_1060->g_279[i][j][k].f4, "p_1060->g_279[i][j][k].f4", print_hash_value);
                transparent_crc(p_1060->g_279[i][j][k].f5, "p_1060->g_279[i][j][k].f5", print_hash_value);

            }
        }
    }
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1060->g_280[i].f0, "p_1060->g_280[i].f0", print_hash_value);
        transparent_crc(p_1060->g_280[i].f1, "p_1060->g_280[i].f1", print_hash_value);
        transparent_crc(p_1060->g_280[i].f2, "p_1060->g_280[i].f2", print_hash_value);
        transparent_crc(p_1060->g_280[i].f3, "p_1060->g_280[i].f3", print_hash_value);
        transparent_crc(p_1060->g_280[i].f4, "p_1060->g_280[i].f4", print_hash_value);
        transparent_crc(p_1060->g_280[i].f5, "p_1060->g_280[i].f5", print_hash_value);

    }
    transparent_crc(p_1060->g_281.f0, "p_1060->g_281.f0", print_hash_value);
    transparent_crc(p_1060->g_281.f1, "p_1060->g_281.f1", print_hash_value);
    transparent_crc(p_1060->g_281.f2, "p_1060->g_281.f2", print_hash_value);
    transparent_crc(p_1060->g_281.f3, "p_1060->g_281.f3", print_hash_value);
    transparent_crc(p_1060->g_281.f4, "p_1060->g_281.f4", print_hash_value);
    transparent_crc(p_1060->g_281.f5, "p_1060->g_281.f5", print_hash_value);
    transparent_crc(p_1060->g_282.f0, "p_1060->g_282.f0", print_hash_value);
    transparent_crc(p_1060->g_282.f1, "p_1060->g_282.f1", print_hash_value);
    transparent_crc(p_1060->g_282.f2, "p_1060->g_282.f2", print_hash_value);
    transparent_crc(p_1060->g_282.f3, "p_1060->g_282.f3", print_hash_value);
    transparent_crc(p_1060->g_282.f4, "p_1060->g_282.f4", print_hash_value);
    transparent_crc(p_1060->g_282.f5, "p_1060->g_282.f5", print_hash_value);
    transparent_crc(p_1060->g_283.f0, "p_1060->g_283.f0", print_hash_value);
    transparent_crc(p_1060->g_283.f1, "p_1060->g_283.f1", print_hash_value);
    transparent_crc(p_1060->g_283.f2, "p_1060->g_283.f2", print_hash_value);
    transparent_crc(p_1060->g_283.f3, "p_1060->g_283.f3", print_hash_value);
    transparent_crc(p_1060->g_283.f4, "p_1060->g_283.f4", print_hash_value);
    transparent_crc(p_1060->g_283.f5, "p_1060->g_283.f5", print_hash_value);
    transparent_crc(p_1060->g_284.f0, "p_1060->g_284.f0", print_hash_value);
    transparent_crc(p_1060->g_284.f1, "p_1060->g_284.f1", print_hash_value);
    transparent_crc(p_1060->g_284.f2, "p_1060->g_284.f2", print_hash_value);
    transparent_crc(p_1060->g_284.f3, "p_1060->g_284.f3", print_hash_value);
    transparent_crc(p_1060->g_284.f4, "p_1060->g_284.f4", print_hash_value);
    transparent_crc(p_1060->g_284.f5, "p_1060->g_284.f5", print_hash_value);
    transparent_crc(p_1060->g_285.f0, "p_1060->g_285.f0", print_hash_value);
    transparent_crc(p_1060->g_285.f1, "p_1060->g_285.f1", print_hash_value);
    transparent_crc(p_1060->g_285.f2, "p_1060->g_285.f2", print_hash_value);
    transparent_crc(p_1060->g_285.f3, "p_1060->g_285.f3", print_hash_value);
    transparent_crc(p_1060->g_285.f4, "p_1060->g_285.f4", print_hash_value);
    transparent_crc(p_1060->g_285.f5, "p_1060->g_285.f5", print_hash_value);
    transparent_crc(p_1060->g_286.f0, "p_1060->g_286.f0", print_hash_value);
    transparent_crc(p_1060->g_286.f1, "p_1060->g_286.f1", print_hash_value);
    transparent_crc(p_1060->g_286.f2, "p_1060->g_286.f2", print_hash_value);
    transparent_crc(p_1060->g_286.f3, "p_1060->g_286.f3", print_hash_value);
    transparent_crc(p_1060->g_286.f4, "p_1060->g_286.f4", print_hash_value);
    transparent_crc(p_1060->g_286.f5, "p_1060->g_286.f5", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1060->g_287[i].f0, "p_1060->g_287[i].f0", print_hash_value);
        transparent_crc(p_1060->g_287[i].f1, "p_1060->g_287[i].f1", print_hash_value);
        transparent_crc(p_1060->g_287[i].f2, "p_1060->g_287[i].f2", print_hash_value);
        transparent_crc(p_1060->g_287[i].f3, "p_1060->g_287[i].f3", print_hash_value);
        transparent_crc(p_1060->g_287[i].f4, "p_1060->g_287[i].f4", print_hash_value);
        transparent_crc(p_1060->g_287[i].f5, "p_1060->g_287[i].f5", print_hash_value);

    }
    transparent_crc(p_1060->g_288.f0, "p_1060->g_288.f0", print_hash_value);
    transparent_crc(p_1060->g_288.f1, "p_1060->g_288.f1", print_hash_value);
    transparent_crc(p_1060->g_288.f2, "p_1060->g_288.f2", print_hash_value);
    transparent_crc(p_1060->g_288.f3, "p_1060->g_288.f3", print_hash_value);
    transparent_crc(p_1060->g_288.f4, "p_1060->g_288.f4", print_hash_value);
    transparent_crc(p_1060->g_288.f5, "p_1060->g_288.f5", print_hash_value);
    transparent_crc(p_1060->g_289.f0, "p_1060->g_289.f0", print_hash_value);
    transparent_crc(p_1060->g_289.f1, "p_1060->g_289.f1", print_hash_value);
    transparent_crc(p_1060->g_289.f2, "p_1060->g_289.f2", print_hash_value);
    transparent_crc(p_1060->g_289.f3, "p_1060->g_289.f3", print_hash_value);
    transparent_crc(p_1060->g_289.f4, "p_1060->g_289.f4", print_hash_value);
    transparent_crc(p_1060->g_289.f5, "p_1060->g_289.f5", print_hash_value);
    transparent_crc(p_1060->g_290.f0, "p_1060->g_290.f0", print_hash_value);
    transparent_crc(p_1060->g_290.f1, "p_1060->g_290.f1", print_hash_value);
    transparent_crc(p_1060->g_290.f2, "p_1060->g_290.f2", print_hash_value);
    transparent_crc(p_1060->g_290.f3, "p_1060->g_290.f3", print_hash_value);
    transparent_crc(p_1060->g_290.f4, "p_1060->g_290.f4", print_hash_value);
    transparent_crc(p_1060->g_290.f5, "p_1060->g_290.f5", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1060->g_291[i].f0, "p_1060->g_291[i].f0", print_hash_value);
        transparent_crc(p_1060->g_291[i].f1, "p_1060->g_291[i].f1", print_hash_value);
        transparent_crc(p_1060->g_291[i].f2, "p_1060->g_291[i].f2", print_hash_value);
        transparent_crc(p_1060->g_291[i].f3, "p_1060->g_291[i].f3", print_hash_value);
        transparent_crc(p_1060->g_291[i].f4, "p_1060->g_291[i].f4", print_hash_value);
        transparent_crc(p_1060->g_291[i].f5, "p_1060->g_291[i].f5", print_hash_value);

    }
    transparent_crc(p_1060->g_292.f0, "p_1060->g_292.f0", print_hash_value);
    transparent_crc(p_1060->g_292.f1, "p_1060->g_292.f1", print_hash_value);
    transparent_crc(p_1060->g_292.f2, "p_1060->g_292.f2", print_hash_value);
    transparent_crc(p_1060->g_292.f3, "p_1060->g_292.f3", print_hash_value);
    transparent_crc(p_1060->g_292.f4, "p_1060->g_292.f4", print_hash_value);
    transparent_crc(p_1060->g_292.f5, "p_1060->g_292.f5", print_hash_value);
    transparent_crc(p_1060->g_293.f0, "p_1060->g_293.f0", print_hash_value);
    transparent_crc(p_1060->g_293.f1, "p_1060->g_293.f1", print_hash_value);
    transparent_crc(p_1060->g_293.f2, "p_1060->g_293.f2", print_hash_value);
    transparent_crc(p_1060->g_293.f3, "p_1060->g_293.f3", print_hash_value);
    transparent_crc(p_1060->g_293.f4, "p_1060->g_293.f4", print_hash_value);
    transparent_crc(p_1060->g_293.f5, "p_1060->g_293.f5", print_hash_value);
    transparent_crc(p_1060->g_294.f0, "p_1060->g_294.f0", print_hash_value);
    transparent_crc(p_1060->g_294.f1, "p_1060->g_294.f1", print_hash_value);
    transparent_crc(p_1060->g_294.f2, "p_1060->g_294.f2", print_hash_value);
    transparent_crc(p_1060->g_294.f3, "p_1060->g_294.f3", print_hash_value);
    transparent_crc(p_1060->g_294.f4, "p_1060->g_294.f4", print_hash_value);
    transparent_crc(p_1060->g_294.f5, "p_1060->g_294.f5", print_hash_value);
    transparent_crc(p_1060->g_295.f0, "p_1060->g_295.f0", print_hash_value);
    transparent_crc(p_1060->g_295.f1, "p_1060->g_295.f1", print_hash_value);
    transparent_crc(p_1060->g_295.f2, "p_1060->g_295.f2", print_hash_value);
    transparent_crc(p_1060->g_295.f3, "p_1060->g_295.f3", print_hash_value);
    transparent_crc(p_1060->g_295.f4, "p_1060->g_295.f4", print_hash_value);
    transparent_crc(p_1060->g_295.f5, "p_1060->g_295.f5", print_hash_value);
    transparent_crc(p_1060->g_296.f0, "p_1060->g_296.f0", print_hash_value);
    transparent_crc(p_1060->g_296.f1, "p_1060->g_296.f1", print_hash_value);
    transparent_crc(p_1060->g_296.f2, "p_1060->g_296.f2", print_hash_value);
    transparent_crc(p_1060->g_296.f3, "p_1060->g_296.f3", print_hash_value);
    transparent_crc(p_1060->g_296.f4, "p_1060->g_296.f4", print_hash_value);
    transparent_crc(p_1060->g_296.f5, "p_1060->g_296.f5", print_hash_value);
    transparent_crc(p_1060->g_297.f0, "p_1060->g_297.f0", print_hash_value);
    transparent_crc(p_1060->g_297.f1, "p_1060->g_297.f1", print_hash_value);
    transparent_crc(p_1060->g_297.f2, "p_1060->g_297.f2", print_hash_value);
    transparent_crc(p_1060->g_297.f3, "p_1060->g_297.f3", print_hash_value);
    transparent_crc(p_1060->g_297.f4, "p_1060->g_297.f4", print_hash_value);
    transparent_crc(p_1060->g_297.f5, "p_1060->g_297.f5", print_hash_value);
    transparent_crc(p_1060->g_298.f0, "p_1060->g_298.f0", print_hash_value);
    transparent_crc(p_1060->g_298.f1, "p_1060->g_298.f1", print_hash_value);
    transparent_crc(p_1060->g_298.f2, "p_1060->g_298.f2", print_hash_value);
    transparent_crc(p_1060->g_298.f3, "p_1060->g_298.f3", print_hash_value);
    transparent_crc(p_1060->g_298.f4, "p_1060->g_298.f4", print_hash_value);
    transparent_crc(p_1060->g_298.f5, "p_1060->g_298.f5", print_hash_value);
    transparent_crc(p_1060->g_317, "p_1060->g_317", print_hash_value);
    transparent_crc(p_1060->g_319.f0, "p_1060->g_319.f0", print_hash_value);
    transparent_crc(p_1060->g_319.f1, "p_1060->g_319.f1", print_hash_value);
    transparent_crc(p_1060->g_319.f2, "p_1060->g_319.f2", print_hash_value);
    transparent_crc(p_1060->g_319.f3, "p_1060->g_319.f3", print_hash_value);
    transparent_crc(p_1060->g_319.f4, "p_1060->g_319.f4", print_hash_value);
    transparent_crc(p_1060->g_319.f5, "p_1060->g_319.f5", print_hash_value);
    transparent_crc(p_1060->g_325.f0, "p_1060->g_325.f0", print_hash_value);
    transparent_crc(p_1060->g_325.f1, "p_1060->g_325.f1", print_hash_value);
    transparent_crc(p_1060->g_325.f2, "p_1060->g_325.f2", print_hash_value);
    transparent_crc(p_1060->g_325.f3, "p_1060->g_325.f3", print_hash_value);
    transparent_crc(p_1060->g_348, "p_1060->g_348", print_hash_value);
    transparent_crc(p_1060->g_351.f0, "p_1060->g_351.f0", print_hash_value);
    transparent_crc(p_1060->g_351.f1, "p_1060->g_351.f1", print_hash_value);
    transparent_crc(p_1060->g_351.f2, "p_1060->g_351.f2", print_hash_value);
    transparent_crc(p_1060->g_351.f3, "p_1060->g_351.f3", print_hash_value);
    transparent_crc(p_1060->g_351.f4, "p_1060->g_351.f4", print_hash_value);
    transparent_crc(p_1060->g_351.f5, "p_1060->g_351.f5", print_hash_value);
    transparent_crc(p_1060->g_367.f0, "p_1060->g_367.f0", print_hash_value);
    transparent_crc(p_1060->g_367.f1, "p_1060->g_367.f1", print_hash_value);
    transparent_crc(p_1060->g_367.f2, "p_1060->g_367.f2", print_hash_value);
    transparent_crc(p_1060->g_367.f3, "p_1060->g_367.f3", print_hash_value);
    transparent_crc(p_1060->g_367.f4, "p_1060->g_367.f4", print_hash_value);
    transparent_crc(p_1060->g_367.f5, "p_1060->g_367.f5", print_hash_value);
    transparent_crc(p_1060->g_376, "p_1060->g_376", print_hash_value);
    transparent_crc(p_1060->g_394, "p_1060->g_394", print_hash_value);
    transparent_crc(p_1060->g_429.f0, "p_1060->g_429.f0", print_hash_value);
    transparent_crc(p_1060->g_539, "p_1060->g_539", print_hash_value);
    transparent_crc(p_1060->g_593, "p_1060->g_593", print_hash_value);
    transparent_crc(p_1060->g_619, "p_1060->g_619", print_hash_value);
    transparent_crc(p_1060->g_621.f0, "p_1060->g_621.f0", print_hash_value);
    transparent_crc(p_1060->g_621.f1, "p_1060->g_621.f1", print_hash_value);
    transparent_crc(p_1060->g_621.f2, "p_1060->g_621.f2", print_hash_value);
    transparent_crc(p_1060->g_621.f3, "p_1060->g_621.f3", print_hash_value);
    transparent_crc(p_1060->g_621.f4, "p_1060->g_621.f4", print_hash_value);
    transparent_crc(p_1060->g_621.f5, "p_1060->g_621.f5", print_hash_value);
    transparent_crc(p_1060->g_624.f0, "p_1060->g_624.f0", print_hash_value);
    transparent_crc(p_1060->g_624.f1, "p_1060->g_624.f1", print_hash_value);
    transparent_crc(p_1060->g_624.f2, "p_1060->g_624.f2", print_hash_value);
    transparent_crc(p_1060->g_624.f3, "p_1060->g_624.f3", print_hash_value);
    transparent_crc(p_1060->g_624.f4, "p_1060->g_624.f4", print_hash_value);
    transparent_crc(p_1060->g_624.f5, "p_1060->g_624.f5", print_hash_value);
    transparent_crc(p_1060->g_627.f0, "p_1060->g_627.f0", print_hash_value);
    transparent_crc(p_1060->g_627.f1, "p_1060->g_627.f1", print_hash_value);
    transparent_crc(p_1060->g_627.f2, "p_1060->g_627.f2", print_hash_value);
    transparent_crc(p_1060->g_627.f3, "p_1060->g_627.f3", print_hash_value);
    transparent_crc(p_1060->g_713, "p_1060->g_713", print_hash_value);
    transparent_crc(p_1060->g_750.f0, "p_1060->g_750.f0", print_hash_value);
    transparent_crc(p_1060->g_750.f1, "p_1060->g_750.f1", print_hash_value);
    transparent_crc(p_1060->g_750.f2, "p_1060->g_750.f2", print_hash_value);
    transparent_crc(p_1060->g_750.f3, "p_1060->g_750.f3", print_hash_value);
    transparent_crc(p_1060->g_750.f4, "p_1060->g_750.f4", print_hash_value);
    transparent_crc(p_1060->g_750.f5, "p_1060->g_750.f5", print_hash_value);
    transparent_crc(p_1060->g_758.f0, "p_1060->g_758.f0", print_hash_value);
    transparent_crc(p_1060->g_758.f1, "p_1060->g_758.f1", print_hash_value);
    transparent_crc(p_1060->g_758.f2, "p_1060->g_758.f2", print_hash_value);
    transparent_crc(p_1060->g_758.f3, "p_1060->g_758.f3", print_hash_value);
    transparent_crc(p_1060->g_758.f4, "p_1060->g_758.f4", print_hash_value);
    transparent_crc(p_1060->g_758.f5, "p_1060->g_758.f5", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1060->g_763[i].f0, "p_1060->g_763[i].f0", print_hash_value);
        transparent_crc(p_1060->g_763[i].f1, "p_1060->g_763[i].f1", print_hash_value);
        transparent_crc(p_1060->g_763[i].f2, "p_1060->g_763[i].f2", print_hash_value);
        transparent_crc(p_1060->g_763[i].f3, "p_1060->g_763[i].f3", print_hash_value);
        transparent_crc(p_1060->g_763[i].f4, "p_1060->g_763[i].f4", print_hash_value);
        transparent_crc(p_1060->g_763[i].f5, "p_1060->g_763[i].f5", print_hash_value);

    }
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_1060->g_823[i], "p_1060->g_823[i]", print_hash_value);

    }
    transparent_crc(p_1060->g_826.f0, "p_1060->g_826.f0", print_hash_value);
    transparent_crc(p_1060->g_826.f1, "p_1060->g_826.f1", print_hash_value);
    transparent_crc(p_1060->g_826.f2, "p_1060->g_826.f2", print_hash_value);
    transparent_crc(p_1060->g_826.f3, "p_1060->g_826.f3", print_hash_value);
    transparent_crc(p_1060->g_844.f0, "p_1060->g_844.f0", print_hash_value);
    transparent_crc(p_1060->g_850.f0, "p_1060->g_850.f0", print_hash_value);
    transparent_crc(p_1060->g_850.f1, "p_1060->g_850.f1", print_hash_value);
    transparent_crc(p_1060->g_850.f2, "p_1060->g_850.f2", print_hash_value);
    transparent_crc(p_1060->g_850.f3, "p_1060->g_850.f3", print_hash_value);
    transparent_crc(p_1060->g_865.f0, "p_1060->g_865.f0", print_hash_value);
    transparent_crc(p_1060->g_865.f1, "p_1060->g_865.f1", print_hash_value);
    transparent_crc(p_1060->g_865.f2, "p_1060->g_865.f2", print_hash_value);
    transparent_crc(p_1060->g_865.f3, "p_1060->g_865.f3", print_hash_value);
    transparent_crc(p_1060->g_865.f4, "p_1060->g_865.f4", print_hash_value);
    transparent_crc(p_1060->g_865.f5, "p_1060->g_865.f5", print_hash_value);
    transparent_crc(p_1060->g_870, "p_1060->g_870", print_hash_value);
    transparent_crc(p_1060->g_931.f0, "p_1060->g_931.f0", print_hash_value);
    transparent_crc(p_1060->g_948.f0, "p_1060->g_948.f0", print_hash_value);
    transparent_crc(p_1060->g_955, "p_1060->g_955", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_1060->g_972[i][j].f0, "p_1060->g_972[i][j].f0", print_hash_value);
            transparent_crc(p_1060->g_972[i][j].f1, "p_1060->g_972[i][j].f1", print_hash_value);
            transparent_crc(p_1060->g_972[i][j].f2, "p_1060->g_972[i][j].f2", print_hash_value);
            transparent_crc(p_1060->g_972[i][j].f3, "p_1060->g_972[i][j].f3", print_hash_value);
            transparent_crc(p_1060->g_972[i][j].f4, "p_1060->g_972[i][j].f4", print_hash_value);
            transparent_crc(p_1060->g_972[i][j].f5, "p_1060->g_972[i][j].f5", print_hash_value);

        }
    }
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1060->g_981[i], "p_1060->g_981[i]", print_hash_value);

    }
    transparent_crc(p_1060->l_comm_values[get_linear_local_id()], "p_1060->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_1060->g_comm_values[get_linear_group_id() * 35 + get_linear_local_id()], "p_1060->g_comm_values[get_linear_group_id() * 35 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
