// ---fake_divergence ---inter_thread_comm -g 77,67,1 -l 11,1,1
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

__constant uint32_t permutations[10][11] = {
{4,0,5,7,1,10,9,3,8,6,2}, // permutation 0
{10,6,3,0,8,5,9,2,7,4,1}, // permutation 1
{9,4,3,5,0,8,7,6,2,10,1}, // permutation 2
{7,5,8,10,3,2,4,9,6,1,0}, // permutation 3
{6,2,0,9,8,5,1,4,10,3,7}, // permutation 4
{6,8,2,10,7,0,9,5,4,3,1}, // permutation 5
{8,5,0,6,2,4,7,3,1,9,10}, // permutation 6
{8,10,6,5,0,1,4,3,9,7,2}, // permutation 7
{1,8,2,5,3,7,9,0,6,10,4}, // permutation 8
{3,6,5,8,10,1,0,4,2,9,7} // permutation 9
};

// Seed: 92

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   uint16_t  f0;
   int64_t  f1;
   int64_t  f2;
   uint16_t  f3;
   volatile uint64_t  f4;
   volatile int32_t  f5;
};

union U1 {
   volatile uint32_t  f0;
   int16_t  f1;
};

struct S2 {
    int32_t g_3;
    int32_t g_4;
    volatile int32_t g_5;
    volatile int32_t g_6[1];
    volatile int32_t g_7[5][9];
    volatile int32_t g_8;
    int32_t g_9[8];
    int32_t g_11;
    int32_t g_91;
    int16_t g_135;
    uint64_t g_142;
    union U1 g_146;
    union U1 g_147;
    union U1 g_148;
    union U1 g_149;
    union U1 g_150[2][2][1];
    union U1 g_151;
    union U1 g_152;
    union U1 g_153[7][10];
    int32_t g_157;
    volatile int32_t *g_159;
    volatile int32_t * volatile *g_158;
    union U1 g_172;
    union U1 g_173;
    union U1 g_174;
    union U1 g_175;
    union U1 g_176;
    union U1 g_177[9][10];
    union U1 g_178[8][2];
    union U1 g_179;
    union U1 g_180;
    union U1 g_181;
    union U1 g_182;
    union U1 g_183[9][2];
    union U1 g_184[3];
    union U1 g_185;
    union U1 g_186;
    union U1 g_187;
    union U1 g_188;
    union U1 g_189;
    union U1 g_190[9][6][4];
    union U1 g_191;
    union U1 g_192[4][3];
    union U1 g_193[10][8];
    union U1 g_194;
    union U1 g_195;
    union U1 g_196;
    union U1 g_197[8];
    union U1 g_198;
    union U1 g_199;
    union U1 g_200;
    union U1 g_201;
    union U1 g_202;
    union U1 g_203;
    union U1 g_204[9];
    union U1 g_205;
    union U1 g_206;
    union U1 g_207;
    union U1 g_208;
    union U1 g_209;
    union U1 g_210[9][10];
    union U1 g_211;
    union U1 g_212;
    union U1 g_213;
    union U1 g_214;
    union U1 g_215;
    union U1 g_216;
    union U1 g_217;
    union U1 g_218;
    union U1 g_219;
    union U1 g_220;
    union U1 g_221;
    union U1 g_222;
    union U1 g_223;
    union U1 g_224;
    union U1 g_225;
    union U1 g_226;
    union U1 g_227;
    union U1 g_228;
    volatile union U1 g_258[9][1][7];
    volatile union U1 *g_257;
    int8_t g_288;
    uint8_t g_313;
    volatile uint16_t g_324;
    volatile uint16_t *g_323;
    int32_t *g_340;
    int32_t **g_339[7][1];
    uint32_t g_345;
    int32_t g_353[10][7][3];
    int32_t g_357;
    union U1 g_364;
    union U1 g_366[10];
    union U1 g_368;
    union U1 g_369;
    union U1 *g_367[7];
    int8_t g_377;
    volatile int16_t g_428;
    volatile int16_t g_429;
    volatile int16_t g_430;
    volatile int16_t g_431;
    volatile int16_t g_432;
    volatile int16_t g_433[2];
    volatile int16_t g_434;
    volatile int16_t g_435;
    volatile int16_t g_436;
    volatile int16_t g_437;
    volatile int16_t g_438;
    volatile int16_t *g_427[9][9];
    volatile int16_t * volatile *g_426;
    int16_t g_454;
    int16_t g_456;
    int32_t g_505;
    uint8_t g_506;
    int32_t *g_520;
    int32_t *g_554;
    uint32_t g_564;
    union U1 g_617[5][2];
    union U1 g_619;
    union U1 *g_618[6];
    uint32_t g_620[7];
    int64_t *g_673[5];
    int64_t g_704;
    struct S0 g_709;
    int16_t g_724;
    int64_t g_734;
    int32_t g_786[10][9];
    uint64_t g_787;
    uint32_t g_845;
    int16_t *g_878;
    union U1 g_1022;
    uint32_t g_1024;
    struct S0 * volatile g_1047;
    volatile struct S0 g_1094;
    volatile struct S0 * volatile g_1095[5][7];
    struct S0 g_1119[3][3][8];
    struct S0 * volatile g_1120[3];
    struct S0 g_1122;
    uint32_t g_1137;
    int32_t ** volatile g_1147[5];
    volatile struct S0 g_1242;
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
int8_t  func_1(struct S2 * p_1264);
uint64_t  func_48(uint16_t  p_49, int32_t * p_50, uint32_t  p_51, int32_t * p_52, struct S2 * p_1264);
uint32_t  func_53(int64_t  p_54, struct S2 * p_1264);
uint32_t  func_56(int32_t * p_57, int32_t * p_58, struct S2 * p_1264);
int32_t * func_59(int32_t * p_60, int32_t * p_61, int32_t * p_62, struct S2 * p_1264);
int32_t * func_63(int32_t * p_64, int32_t * p_65, struct S2 * p_1264);
int32_t * func_66(int32_t * p_67, int32_t * p_68, int32_t  p_69, uint32_t  p_70, uint64_t  p_71, struct S2 * p_1264);
int32_t * func_72(int32_t * p_73, int32_t * p_74, uint32_t  p_75, int32_t  p_76, struct S2 * p_1264);
uint8_t  func_94(int32_t * p_95, uint32_t  p_96, uint8_t  p_97, struct S2 * p_1264);
uint8_t  func_103(uint32_t  p_104, struct S2 * p_1264);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1264->g_3 p_1264->g_438
 * writes: p_1264->g_3
 */
int8_t  func_1(struct S2 * p_1264)
{ /* block id: 4 */
    uint8_t l_2[5][3] = {{0UL,0x50L,249UL},{0UL,0x50L,249UL},{0UL,0x50L,249UL},{0UL,0x50L,249UL},{0UL,0x50L,249UL}};
    int32_t *l_161 = &p_1264->g_9[5];
    int32_t l_1048 = 1L;
    int32_t l_1049 = 8L;
    int32_t l_1083 = 0x50E9CA5AL;
    int32_t l_1086[9][5] = {{0x100CA3CFL,(-5L),0x6CE0E561L,1L,0x6CE0E561L},{0x100CA3CFL,(-5L),0x6CE0E561L,1L,0x6CE0E561L},{0x100CA3CFL,(-5L),0x6CE0E561L,1L,0x6CE0E561L},{0x100CA3CFL,(-5L),0x6CE0E561L,1L,0x6CE0E561L},{0x100CA3CFL,(-5L),0x6CE0E561L,1L,0x6CE0E561L},{0x100CA3CFL,(-5L),0x6CE0E561L,1L,0x6CE0E561L},{0x100CA3CFL,(-5L),0x6CE0E561L,1L,0x6CE0E561L},{0x100CA3CFL,(-5L),0x6CE0E561L,1L,0x6CE0E561L},{0x100CA3CFL,(-5L),0x6CE0E561L,1L,0x6CE0E561L}};
    int8_t l_1089[10] = {0x28L,0x28L,0x28L,0x28L,0x28L,0x28L,0x28L,0x28L,0x28L,0x28L};
    uint16_t *l_1144[7];
    uint8_t *l_1191 = (void*)0;
    uint8_t **l_1190 = &l_1191;
    int16_t l_1231 = 0L;
    int32_t l_1237[3];
    uint32_t l_1254 = 0x19BF6243L;
    int32_t l_1259 = 0x70D8C035L;
    int i, j;
    for (i = 0; i < 7; i++)
        l_1144[i] = &p_1264->g_1119[1][1][1].f3;
    for (i = 0; i < 3; i++)
        l_1237[i] = 0x1A6FDEEBL;
    for (p_1264->g_3 = 0; (p_1264->g_3 <= 2); p_1264->g_3 += 1)
    { /* block id: 7 */
        int16_t l_86[8];
        int32_t *l_776 = (void*)0;
        uint8_t *l_1059[2][10] = {{&l_2[4][0],&p_1264->g_506,&p_1264->g_313,&l_2[3][2],&p_1264->g_506,&l_2[3][2],&p_1264->g_313,&p_1264->g_506,&l_2[4][0],&l_2[4][0]},{&l_2[4][0],&p_1264->g_506,&p_1264->g_313,&l_2[3][2],&p_1264->g_506,&l_2[3][2],&p_1264->g_313,&p_1264->g_506,&l_2[4][0],&l_2[4][0]}};
        uint8_t **l_1058[5][10][5] = {{{&l_1059[0][0],&l_1059[0][2],&l_1059[0][3],(void*)0,&l_1059[0][3]},{&l_1059[0][0],&l_1059[0][2],&l_1059[0][3],(void*)0,&l_1059[0][3]},{&l_1059[0][0],&l_1059[0][2],&l_1059[0][3],(void*)0,&l_1059[0][3]},{&l_1059[0][0],&l_1059[0][2],&l_1059[0][3],(void*)0,&l_1059[0][3]},{&l_1059[0][0],&l_1059[0][2],&l_1059[0][3],(void*)0,&l_1059[0][3]},{&l_1059[0][0],&l_1059[0][2],&l_1059[0][3],(void*)0,&l_1059[0][3]},{&l_1059[0][0],&l_1059[0][2],&l_1059[0][3],(void*)0,&l_1059[0][3]},{&l_1059[0][0],&l_1059[0][2],&l_1059[0][3],(void*)0,&l_1059[0][3]},{&l_1059[0][0],&l_1059[0][2],&l_1059[0][3],(void*)0,&l_1059[0][3]},{&l_1059[0][0],&l_1059[0][2],&l_1059[0][3],(void*)0,&l_1059[0][3]}},{{&l_1059[0][0],&l_1059[0][2],&l_1059[0][3],(void*)0,&l_1059[0][3]},{&l_1059[0][0],&l_1059[0][2],&l_1059[0][3],(void*)0,&l_1059[0][3]},{&l_1059[0][0],&l_1059[0][2],&l_1059[0][3],(void*)0,&l_1059[0][3]},{&l_1059[0][0],&l_1059[0][2],&l_1059[0][3],(void*)0,&l_1059[0][3]},{&l_1059[0][0],&l_1059[0][2],&l_1059[0][3],(void*)0,&l_1059[0][3]},{&l_1059[0][0],&l_1059[0][2],&l_1059[0][3],(void*)0,&l_1059[0][3]},{&l_1059[0][0],&l_1059[0][2],&l_1059[0][3],(void*)0,&l_1059[0][3]},{&l_1059[0][0],&l_1059[0][2],&l_1059[0][3],(void*)0,&l_1059[0][3]},{&l_1059[0][0],&l_1059[0][2],&l_1059[0][3],(void*)0,&l_1059[0][3]},{&l_1059[0][0],&l_1059[0][2],&l_1059[0][3],(void*)0,&l_1059[0][3]}},{{&l_1059[0][0],&l_1059[0][2],&l_1059[0][3],(void*)0,&l_1059[0][3]},{&l_1059[0][0],&l_1059[0][2],&l_1059[0][3],(void*)0,&l_1059[0][3]},{&l_1059[0][0],&l_1059[0][2],&l_1059[0][3],(void*)0,&l_1059[0][3]},{&l_1059[0][0],&l_1059[0][2],&l_1059[0][3],(void*)0,&l_1059[0][3]},{&l_1059[0][0],&l_1059[0][2],&l_1059[0][3],(void*)0,&l_1059[0][3]},{&l_1059[0][0],&l_1059[0][2],&l_1059[0][3],(void*)0,&l_1059[0][3]},{&l_1059[0][0],&l_1059[0][2],&l_1059[0][3],(void*)0,&l_1059[0][3]},{&l_1059[0][0],&l_1059[0][2],&l_1059[0][3],(void*)0,&l_1059[0][3]},{&l_1059[0][0],&l_1059[0][2],&l_1059[0][3],(void*)0,&l_1059[0][3]},{&l_1059[0][0],&l_1059[0][2],&l_1059[0][3],(void*)0,&l_1059[0][3]}},{{&l_1059[0][0],&l_1059[0][2],&l_1059[0][3],(void*)0,&l_1059[0][3]},{&l_1059[0][0],&l_1059[0][2],&l_1059[0][3],(void*)0,&l_1059[0][3]},{&l_1059[0][0],&l_1059[0][2],&l_1059[0][3],(void*)0,&l_1059[0][3]},{&l_1059[0][0],&l_1059[0][2],&l_1059[0][3],(void*)0,&l_1059[0][3]},{&l_1059[0][0],&l_1059[0][2],&l_1059[0][3],(void*)0,&l_1059[0][3]},{&l_1059[0][0],&l_1059[0][2],&l_1059[0][3],(void*)0,&l_1059[0][3]},{&l_1059[0][0],&l_1059[0][2],&l_1059[0][3],(void*)0,&l_1059[0][3]},{&l_1059[0][0],&l_1059[0][2],&l_1059[0][3],(void*)0,&l_1059[0][3]},{&l_1059[0][0],&l_1059[0][2],&l_1059[0][3],(void*)0,&l_1059[0][3]},{&l_1059[0][0],&l_1059[0][2],&l_1059[0][3],(void*)0,&l_1059[0][3]}},{{&l_1059[0][0],&l_1059[0][2],&l_1059[0][3],(void*)0,&l_1059[0][3]},{&l_1059[0][0],&l_1059[0][2],&l_1059[0][3],(void*)0,&l_1059[0][3]},{&l_1059[0][0],&l_1059[0][2],&l_1059[0][3],(void*)0,&l_1059[0][3]},{&l_1059[0][0],&l_1059[0][2],&l_1059[0][3],(void*)0,&l_1059[0][3]},{&l_1059[0][0],&l_1059[0][2],&l_1059[0][3],(void*)0,&l_1059[0][3]},{&l_1059[0][0],&l_1059[0][2],&l_1059[0][3],(void*)0,&l_1059[0][3]},{&l_1059[0][0],&l_1059[0][2],&l_1059[0][3],(void*)0,&l_1059[0][3]},{&l_1059[0][0],&l_1059[0][2],&l_1059[0][3],(void*)0,&l_1059[0][3]},{&l_1059[0][0],&l_1059[0][2],&l_1059[0][3],(void*)0,&l_1059[0][3]},{&l_1059[0][0],&l_1059[0][2],&l_1059[0][3],(void*)0,&l_1059[0][3]}}};
        int64_t l_1069 = 3L;
        int32_t l_1073 = 0L;
        int32_t l_1074 = 0x27785295L;
        int32_t l_1077 = 0x0E2EFC13L;
        int32_t l_1078 = 0x426283F5L;
        int32_t l_1079 = (-2L);
        int32_t l_1081 = (-1L);
        int32_t l_1084 = 0x423078C6L;
        int32_t l_1087 = 8L;
        int32_t l_1088 = (-1L);
        int32_t l_1090 = 0x34874C15L;
        uint64_t l_1091 = 18446744073709551606UL;
        uint32_t l_1111 = 0x59DB44C4L;
        uint16_t l_1241 = 0x0BD5L;
        union U1 **l_1245 = &p_1264->g_618[3];
        uint64_t l_1250 = 8UL;
        uint32_t l_1251 = 0UL;
        int16_t *l_1252 = (void*)0;
        int16_t *l_1253 = &p_1264->g_214.f1;
        uint32_t l_1255 = 0x5C9396FBL;
        int64_t *l_1256[8];
        int32_t l_1262 = 1L;
        int i, j, k;
        for (i = 0; i < 8; i++)
            l_86[i] = 6L;
        for (i = 0; i < 8; i++)
            l_1256[i] = &p_1264->g_1119[1][1][1].f1;
        if (l_2[4][2])
            break;
    }
    return p_1264->g_438;
}


/* ------------------------------------------ */
/* 
 * reads : p_1264->g_214.f1 p_1264->g_222.f0
 * writes: p_1264->g_214.f1
 */
uint64_t  func_48(uint16_t  p_49, int32_t * p_50, uint32_t  p_51, int32_t * p_52, struct S2 * p_1264)
{ /* block id: 437 */
    uint32_t l_1032 = 1UL;
    int32_t l_1038 = 1L;
    int32_t l_1039 = 0x31B5C244L;
    int32_t l_1040[3][5] = {{0L,2L,0L,0L,2L},{0L,2L,0L,0L,2L},{0L,2L,0L,0L,2L}};
    int32_t l_1041 = (-1L);
    int64_t l_1042 = 1L;
    uint16_t l_1044 = 0xC4FAL;
    int i, j;
    for (p_1264->g_214.f1 = 8; (p_1264->g_214.f1 == 20); p_1264->g_214.f1++)
    { /* block id: 440 */
        int32_t *l_1035 = (void*)0;
        int32_t *l_1036 = &p_1264->g_786[6][7];
        int32_t *l_1037[8];
        int8_t l_1043[9] = {0x2FL,0L,0x2FL,0x2FL,0L,0x2FL,0x2FL,0L,0x2FL};
        int i;
        for (i = 0; i < 8; i++)
            l_1037[i] = &p_1264->g_157;
        ++l_1032;
        --l_1044;
    }
    return p_1264->g_222.f0;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint32_t  func_53(int64_t  p_54, struct S2 * p_1264)
{ /* block id: 435 */
    uint32_t l_1029 = 4294967286UL;
    return l_1029;
}


/* ------------------------------------------ */
/* 
 * reads : p_1264->g_213.f1 p_1264->g_340 p_1264->g_157 p_1264->g_9 p_1264->l_comm_values p_1264->g_786 p_1264->g_353 p_1264->g_345 p_1264->g_620 p_1264->g_357 p_1264->g_142 p_1264->g_564 p_1264->g_845 p_1264->g_377 p_1264->g_709.f1 p_1264->g_878 p_1264->g_724 p_1264->g_787 p_1264->g_200.f1 p_1264->g_223.f1 p_1264->g_367 p_1264->g_comm_values p_1264->g_3 p_1264->g_11 p_1264->g_158
 * writes: p_1264->g_213.f1 p_1264->g_709.f0 p_1264->g_157 p_1264->g_878 p_1264->g_288 p_1264->g_505 p_1264->g_564 p_1264->g_845 p_1264->g_506 p_1264->g_787 p_1264->g_200.f1 p_1264->g_724 p_1264->g_357 p_1264->g_223.f1 p_1264->g_369.f1 p_1264->g_1024 p_1264->g_91 p_1264->g_135 p_1264->g_142 p_1264->g_158 p_1264->g_520
 */
uint32_t  func_56(int32_t * p_57, int32_t * p_58, struct S2 * p_1264)
{ /* block id: 363 */
    struct S0 **l_860 = (void*)0;
    int32_t l_861 = 0L;
    int16_t *l_874 = &p_1264->g_146.f1;
    int32_t l_888 = 0x087E10BFL;
    int32_t l_889 = (-1L);
    int32_t l_890 = 0x50652180L;
    int32_t l_891 = 0x5D8D1EE7L;
    int32_t l_892[6] = {0x019C4BA5L,0x23337698L,0x019C4BA5L,0x019C4BA5L,0x23337698L,0x019C4BA5L};
    int64_t l_893 = (-1L);
    int32_t l_894 = 0x2888CBA5L;
    uint64_t l_895 = 0x0D387BC33BE61324L;
    uint32_t *l_916 = &p_1264->g_620[1];
    int64_t *l_917 = &p_1264->g_704;
    int32_t l_930 = (-10L);
    uint8_t l_934 = 0x0DL;
    int i;
    for (p_1264->g_213.f1 = 0; (p_1264->g_213.f1 > (-22)); p_1264->g_213.f1--)
    { /* block id: 366 */
        if ((*p_1264->g_340))
            break;
    }
    if ((*p_57))
    { /* block id: 369 */
        int64_t *l_853 = &p_1264->g_704;
        int32_t l_862 = 0L;
        int16_t *l_875 = &p_1264->g_724;
        int16_t **l_876 = (void*)0;
        int16_t **l_877[9] = {&l_874,&l_874,&l_874,&l_874,&l_874,&l_874,&l_874,&l_874,&l_874};
        int8_t *l_879 = (void*)0;
        int32_t *l_886 = &l_862;
        int32_t *l_887[1][8][3] = {{{&p_1264->g_4,&l_861,(void*)0},{&p_1264->g_4,&l_861,(void*)0},{&p_1264->g_4,&l_861,(void*)0},{&p_1264->g_4,&l_861,(void*)0},{&p_1264->g_4,&l_861,(void*)0},{&p_1264->g_4,&l_861,(void*)0},{&p_1264->g_4,&l_861,(void*)0},{&p_1264->g_4,&l_861,(void*)0}}};
        uint8_t l_912 = 0x38L;
        int64_t *l_913 = (void*)0;
        int64_t *l_914 = (void*)0;
        int64_t *l_915 = &l_893;
        uint8_t *l_918 = &p_1264->g_506;
        int64_t l_927 = (-3L);
        int8_t l_928[9][6] = {{0x22L,1L,0x10L,1L,0x22L,0x22L},{0x22L,1L,0x10L,1L,0x22L,0x22L},{0x22L,1L,0x10L,1L,0x22L,0x22L},{0x22L,1L,0x10L,1L,0x22L,0x22L},{0x22L,1L,0x10L,1L,0x22L,0x22L},{0x22L,1L,0x10L,1L,0x22L,0x22L},{0x22L,1L,0x10L,1L,0x22L,0x22L},{0x22L,1L,0x10L,1L,0x22L,0x22L},{0x22L,1L,0x10L,1L,0x22L,0x22L}};
        int16_t l_941 = 0x2106L;
        int i, j, k;
        (*p_1264->g_340) ^= (safe_sub_func_uint16_t_u_u((safe_lshift_func_uint16_t_u_u((l_853 != &p_1264->g_704), (p_1264->g_709.f0 = ((safe_lshift_func_uint8_t_u_s((safe_sub_func_int32_t_s_s((safe_sub_func_uint8_t_u_u(((void*)0 == l_860), l_861)), l_861)), 5)) || (+(((!l_861) <= l_862) ^ ((((l_861 && 0x2FL) < 0x7C3BL) < 0L) & l_862))))))), l_862));
        (*p_1264->g_340) = (((((safe_div_func_uint8_t_u_u(((safe_div_func_int16_t_s_s((safe_sub_func_uint8_t_u_u((safe_rshift_func_int8_t_s_s((safe_unary_minus_func_uint16_t_u(((safe_mul_func_int8_t_s_s((p_1264->g_288 = (l_862 < ((((~l_861) , l_874) != (p_1264->g_878 = l_875)) < l_862))), GROUP_DIVERGE(0, 1))) , 0x0885L))), p_1264->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1264->tid, 11))])), l_862)), (safe_rshift_func_uint8_t_u_s((safe_add_func_int8_t_s_s((safe_rshift_func_int16_t_s_u(p_1264->g_786[6][7], 7)), GROUP_DIVERGE(2, 1))), l_862)))) , p_1264->g_353[1][6][0]), 4L)) , p_1264->g_786[3][4]) != l_862) <= (-1L)) && FAKE_DIVERGE(p_1264->global_0_offset, get_global_id(0), 10));
        --l_895;
        if (((safe_add_func_uint16_t_u_u(((!l_892[2]) | (safe_mul_func_uint8_t_u_u(((*l_918) = ((((p_1264->g_353[5][2][1] , &p_1264->g_734) != (((((safe_rshift_func_int8_t_s_u((safe_rshift_func_int16_t_s_u((safe_mul_func_int8_t_s_s((safe_add_func_int64_t_s_s(((safe_rshift_func_int16_t_s_u(((((*l_915) ^= (l_912 != p_1264->g_345)) , &p_1264->g_257) != (((((p_1264->g_505 = p_1264->g_620[5]) , func_59(&l_862, p_58, &l_891, p_1264)) != l_916) > (*l_886)) , (void*)0)), l_890)) , (-1L)), p_1264->g_377)), l_895)), 15)), 1)) != (-5L)) , (void*)0) == l_917) , &p_1264->g_734)) , (void*)0) != (void*)0)), p_1264->g_709.f1))), (*p_1264->g_878))) == p_1264->g_213.f1))
        { /* block id: 379 */
            int32_t *l_919 = &l_888;
            int32_t **l_920 = &l_919;
            int32_t l_926[8] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
            int64_t l_929 = 0L;
            int64_t l_931 = (-3L);
            int32_t l_932 = (-5L);
            int32_t l_933 = 0L;
            int i;
lbl_923:
            (*l_920) = l_919;
            if (l_862)
                goto lbl_924;
lbl_924:
            for (p_1264->g_787 = 1; (p_1264->g_787 >= 12); p_1264->g_787++)
            { /* block id: 383 */
                if (p_1264->g_564)
                    goto lbl_923;
            }
            for (p_1264->g_200.f1 = 0; (p_1264->g_200.f1 <= 6); p_1264->g_200.f1 += 1)
            { /* block id: 389 */
                uint8_t l_925 = 0x3FL;
                return l_925;
            }
            l_934++;
        }
        else
        { /* block id: 393 */
            uint16_t l_945 = 0x2CA3L;
            (*l_886) = (((*l_875) &= (((safe_mod_func_int8_t_s_s((safe_div_func_uint64_t_u_u(GROUP_DIVERGE(1, 1), l_941)), ((safe_rshift_func_uint8_t_u_u(l_895, 5)) && 0x2CL))) >= ((p_1264->g_787 , 0L) ^ ((void*)0 == &l_918))) == (safe_unary_minus_func_int64_t_s(l_945)))) || ((4L >= l_945) || l_945));
        }
    }
    else
    { /* block id: 397 */
        int16_t l_950 = 4L;
        uint8_t *l_953[2][6];
        int32_t l_968 = 0x07948314L;
        int32_t l_1012 = 1L;
        union U1 *l_1021 = &p_1264->g_1022;
        uint32_t *l_1023 = &p_1264->g_1024;
        int32_t **l_1025 = &p_1264->g_520;
        uint8_t l_1026[5];
        int i, j;
        for (i = 0; i < 2; i++)
        {
            for (j = 0; j < 6; j++)
                l_953[i][j] = &p_1264->g_313;
        }
        for (i = 0; i < 5; i++)
            l_1026[i] = 253UL;
lbl_971:
        (*p_1264->g_340) = (safe_mod_func_uint64_t_u_u(((l_950 = l_895) == ((void*)0 == &p_1264->g_426)), (safe_mul_func_uint8_t_u_u((l_891 = 255UL), (((safe_div_func_uint32_t_u_u((safe_lshift_func_int8_t_s_u((+(l_930 , ((safe_mul_func_int16_t_s_s((0x07L ^ (0xDD0C75F1C31F8600L != (safe_lshift_func_int8_t_s_u((((safe_sub_func_int64_t_s_s((+l_892[1]), (safe_mod_func_uint64_t_u_u((safe_sub_func_int8_t_s_s(((FAKE_DIVERGE(p_1264->group_2_offset, get_group_id(2), 10) , (void*)0) != (void*)0), l_968)), l_968)))) > l_888) == 0x3318L), p_1264->g_620[5])))), (-5L))) && 0x494DD2CBL))), p_1264->g_9[2])), l_968)) < (*p_58)) , (-1L))))));
        for (p_1264->g_357 = 0; (p_1264->g_357 == (-6)); p_1264->g_357 = safe_sub_func_int8_t_s_s(p_1264->g_357, 3))
        { /* block id: 403 */
            uint8_t l_972 = 0x0FL;
            int32_t l_1006 = 5L;
            int32_t l_1018 = 0x3C788B08L;
            for (p_1264->g_223.f1 = 3; (p_1264->g_223.f1 <= 8); p_1264->g_223.f1 += 1)
            { /* block id: 406 */
                int32_t l_1011 = (-3L);
                uint16_t *l_1013 = &p_1264->g_709.f3;
                int32_t **l_1014 = &p_1264->g_340;
                int32_t **l_1015[5][5] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
                int i, j;
                for (p_1264->g_369.f1 = 0; (p_1264->g_369.f1 <= 8); p_1264->g_369.f1 += 1)
                { /* block id: 409 */
                    if (l_934)
                        goto lbl_971;
                    --l_972;
                    return p_1264->g_564;
                }
            }
            return p_1264->g_709.f1;
        }
        (*l_1025) = func_72(&l_968, &l_891, ((*l_1023) = (((safe_div_func_int64_t_s_s(l_1012, GROUP_DIVERGE(0, 1))) > 5L) != (p_1264->g_367[3] != ((l_890 < l_950) , l_1021)))), l_1012, p_1264);
        l_1026[2]++;
    }
    return p_1264->g_3;
}


/* ------------------------------------------ */
/* 
 * reads : p_1264->g_357 p_1264->g_142 p_1264->g_564 p_1264->g_845 p_1264->g_340 p_1264->g_157
 * writes: p_1264->g_564 p_1264->g_845 p_1264->g_157
 */
int32_t * func_59(int32_t * p_60, int32_t * p_61, int32_t * p_62, struct S2 * p_1264)
{ /* block id: 356 */
    int8_t l_834 = 1L;
    int16_t *l_842 = &p_1264->g_135;
    int16_t **l_841 = &l_842;
    int16_t ***l_843 = &l_841;
    uint32_t *l_844 = &p_1264->g_845;
    (*p_1264->g_340) |= (4294967293UL | ((*l_844) &= (((p_1264->g_357 , (safe_mod_func_int64_t_s_s(l_834, 18446744073709551608UL))) == (l_834 == (safe_mod_func_uint32_t_u_u((p_1264->g_564 &= ((safe_mul_func_uint16_t_u_u(((((l_834 , l_834) < 0x28919F8121D05FD6L) | (((safe_mod_func_uint16_t_u_u(((((*l_843) = l_841) == &p_1264->g_427[8][8]) & (-1L)), 0xB5E1L)) , 0xB813B59847C97700L) , l_834)) | p_1264->g_142), l_834)) == GROUP_DIVERGE(0, 1))), l_834)))) | FAKE_DIVERGE(p_1264->global_0_offset, get_global_id(0), 10))));
    return p_61;
}


/* ------------------------------------------ */
/* 
 * reads : p_1264->g_787 p_1264->g_3 p_1264->g_353 p_1264->g_620 p_1264->g_157 p_1264->g_9 p_1264->g_142 p_1264->g_704 p_1264->g_357 p_1264->l_comm_values p_1264->g_786 p_1264->g_709.f0 p_1264->g_506 p_1264->g_520 p_1264->g_4 p_1264->g_219.f1
 * writes: p_1264->g_787 p_1264->g_734 p_1264->g_339 p_1264->g_157 p_1264->g_219.f1 p_1264->g_357
 */
int32_t * func_63(int32_t * p_64, int32_t * p_65, struct S2 * p_1264)
{ /* block id: 328 */
    int32_t *l_777 = &p_1264->g_3;
    int32_t **l_778 = &l_777;
    int32_t l_779[4];
    int32_t *l_780 = &l_779[2];
    int32_t *l_781 = &l_779[1];
    int32_t *l_782 = &p_1264->g_157;
    int32_t *l_783 = &p_1264->g_357;
    int32_t *l_784 = (void*)0;
    int32_t *l_785[1][2][1];
    int16_t *l_798[9][2] = {{&p_1264->g_724,&p_1264->g_724},{&p_1264->g_724,&p_1264->g_724},{&p_1264->g_724,&p_1264->g_724},{&p_1264->g_724,&p_1264->g_724},{&p_1264->g_724,&p_1264->g_724},{&p_1264->g_724,&p_1264->g_724},{&p_1264->g_724,&p_1264->g_724},{&p_1264->g_724,&p_1264->g_724},{&p_1264->g_724,&p_1264->g_724}};
    int16_t *l_800 = &p_1264->g_146.f1;
    int16_t **l_799 = &l_800;
    uint8_t *l_801 = &p_1264->g_313;
    uint8_t **l_802 = &l_801;
    uint8_t *l_804[5] = {&p_1264->g_506,&p_1264->g_506,&p_1264->g_506,&p_1264->g_506,&p_1264->g_506};
    uint8_t **l_803 = &l_804[4];
    uint8_t *l_806[5][5][7] = {{{&p_1264->g_506,&p_1264->g_313,&p_1264->g_506,&p_1264->g_506,(void*)0,&p_1264->g_313,&p_1264->g_313},{&p_1264->g_506,&p_1264->g_313,&p_1264->g_506,&p_1264->g_506,(void*)0,&p_1264->g_313,&p_1264->g_313},{&p_1264->g_506,&p_1264->g_313,&p_1264->g_506,&p_1264->g_506,(void*)0,&p_1264->g_313,&p_1264->g_313},{&p_1264->g_506,&p_1264->g_313,&p_1264->g_506,&p_1264->g_506,(void*)0,&p_1264->g_313,&p_1264->g_313},{&p_1264->g_506,&p_1264->g_313,&p_1264->g_506,&p_1264->g_506,(void*)0,&p_1264->g_313,&p_1264->g_313}},{{&p_1264->g_506,&p_1264->g_313,&p_1264->g_506,&p_1264->g_506,(void*)0,&p_1264->g_313,&p_1264->g_313},{&p_1264->g_506,&p_1264->g_313,&p_1264->g_506,&p_1264->g_506,(void*)0,&p_1264->g_313,&p_1264->g_313},{&p_1264->g_506,&p_1264->g_313,&p_1264->g_506,&p_1264->g_506,(void*)0,&p_1264->g_313,&p_1264->g_313},{&p_1264->g_506,&p_1264->g_313,&p_1264->g_506,&p_1264->g_506,(void*)0,&p_1264->g_313,&p_1264->g_313},{&p_1264->g_506,&p_1264->g_313,&p_1264->g_506,&p_1264->g_506,(void*)0,&p_1264->g_313,&p_1264->g_313}},{{&p_1264->g_506,&p_1264->g_313,&p_1264->g_506,&p_1264->g_506,(void*)0,&p_1264->g_313,&p_1264->g_313},{&p_1264->g_506,&p_1264->g_313,&p_1264->g_506,&p_1264->g_506,(void*)0,&p_1264->g_313,&p_1264->g_313},{&p_1264->g_506,&p_1264->g_313,&p_1264->g_506,&p_1264->g_506,(void*)0,&p_1264->g_313,&p_1264->g_313},{&p_1264->g_506,&p_1264->g_313,&p_1264->g_506,&p_1264->g_506,(void*)0,&p_1264->g_313,&p_1264->g_313},{&p_1264->g_506,&p_1264->g_313,&p_1264->g_506,&p_1264->g_506,(void*)0,&p_1264->g_313,&p_1264->g_313}},{{&p_1264->g_506,&p_1264->g_313,&p_1264->g_506,&p_1264->g_506,(void*)0,&p_1264->g_313,&p_1264->g_313},{&p_1264->g_506,&p_1264->g_313,&p_1264->g_506,&p_1264->g_506,(void*)0,&p_1264->g_313,&p_1264->g_313},{&p_1264->g_506,&p_1264->g_313,&p_1264->g_506,&p_1264->g_506,(void*)0,&p_1264->g_313,&p_1264->g_313},{&p_1264->g_506,&p_1264->g_313,&p_1264->g_506,&p_1264->g_506,(void*)0,&p_1264->g_313,&p_1264->g_313},{&p_1264->g_506,&p_1264->g_313,&p_1264->g_506,&p_1264->g_506,(void*)0,&p_1264->g_313,&p_1264->g_313}},{{&p_1264->g_506,&p_1264->g_313,&p_1264->g_506,&p_1264->g_506,(void*)0,&p_1264->g_313,&p_1264->g_313},{&p_1264->g_506,&p_1264->g_313,&p_1264->g_506,&p_1264->g_506,(void*)0,&p_1264->g_313,&p_1264->g_313},{&p_1264->g_506,&p_1264->g_313,&p_1264->g_506,&p_1264->g_506,(void*)0,&p_1264->g_313,&p_1264->g_313},{&p_1264->g_506,&p_1264->g_313,&p_1264->g_506,&p_1264->g_506,(void*)0,&p_1264->g_313,&p_1264->g_313},{&p_1264->g_506,&p_1264->g_313,&p_1264->g_506,&p_1264->g_506,(void*)0,&p_1264->g_313,&p_1264->g_313}}};
    uint8_t **l_805 = &l_806[3][3][3];
    int8_t *l_807 = &p_1264->g_288;
    int64_t l_820 = 0x1181F6C82CD09CFEL;
    uint8_t *l_821 = &p_1264->g_313;
    int64_t *l_822 = &p_1264->g_734;
    int i, j, k;
    for (i = 0; i < 4; i++)
        l_779[i] = 1L;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 1; k++)
                l_785[i][j][k] = &p_1264->g_357;
        }
    }
    (*l_778) = l_777;
    p_1264->g_787--;
    if (((safe_div_func_int16_t_s_s(((safe_mod_func_int64_t_s_s(((*l_780) = 2L), ((*l_822) = (((safe_lshift_func_int8_t_s_s((safe_div_func_int32_t_s_s(((FAKE_DIVERGE(p_1264->global_2_offset, get_global_id(2), 10) , ((*l_805) = ((*l_803) = ((*l_802) = ((l_798[8][1] == ((*l_799) = l_798[8][1])) , l_801))))) != ((((((((l_807 == (((safe_mul_func_int16_t_s_s(((safe_rshift_func_int16_t_s_s((safe_mul_func_int16_t_s_s((((**l_778) & (safe_sub_func_int8_t_s_s(p_1264->g_353[4][6][0], ((*l_777) < (((safe_sub_func_int64_t_s_s(((safe_mod_func_int16_t_s_s(p_1264->g_620[3], (**l_778))) || 0x4D68L), (**l_778))) > (*l_782)) & 9UL))))) > p_1264->g_787), p_1264->g_9[5])), 5)) == p_1264->g_142), l_820)) || GROUP_DIVERGE(2, 1)) , l_807)) , (void*)0) != &l_780) , p_1264->g_704) , 0x98B11BFFL) , (**l_778)) >= (*l_783)) , l_821)), 4UL)), p_1264->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1264->tid, 11))])) < 0x5EL) , 0x295FCD3359BAE9F9L)))) , (**l_778)), p_1264->g_353[3][5][2])) , (-1L)))
    { /* block id: 337 */
        int32_t ***l_823 = &p_1264->g_339[1][0];
        int64_t *l_824 = &p_1264->g_709.f2;
        int32_t l_825 = (-7L);
        (*l_823) = &p_1264->g_340;
        if (((((((&p_1264->g_704 != l_824) , p_1264->g_786[8][6]) <= p_1264->g_709.f0) > ((FAKE_DIVERGE(p_1264->global_2_offset, get_global_id(2), 10) || l_825) == ((*l_783) , (((*l_778) = (*l_778)) == p_64)))) , (p_1264->g_506 > (*l_777))) , (*p_1264->g_520)))
        { /* block id: 340 */
            return p_65;
        }
        else
        { /* block id: 342 */
            (*l_782) |= (*l_781);
            for (p_1264->g_219.f1 = 0; (p_1264->g_219.f1 != (-25)); p_1264->g_219.f1--)
            { /* block id: 346 */
                int8_t *l_828 = &p_1264->g_288;
                (*l_783) = ((void*)0 != l_828);
                return p_65;
            }
        }
    }
    else
    { /* block id: 351 */
        uint32_t l_829 = 4294967288UL;
        p_64 = (*l_778);
        l_829++;
    }
    return p_65;
}


/* ------------------------------------------ */
/* 
 * reads : p_1264->g_146.f1 p_1264->g_91 p_1264->g_3 p_1264->g_9 p_1264->g_11 p_1264->g_157 p_1264->g_comm_values p_1264->g_257 p_1264->g_135 p_1264->g_142 p_1264->l_comm_values p_1264->g_158 p_1264->g_313 p_1264->g_323 p_1264->g_4 p_1264->g_288 p_1264->g_345 p_1264->g_340 p_1264->g_181.f1 p_1264->g_353 p_1264->g_357 p_1264->g_377 p_1264->g_182.f1 p_1264->g_426 p_1264->g_506 p_1264->g_520 p_1264->g_456 p_1264->g_620 p_1264->g_227.f1 p_1264->g_724 p_1264->g_369.f1 p_1264->g_734 p_1264->g_209.f1 p_1264->g_454 p_1264->g_709.f0
 * writes: p_1264->g_146.f1 p_1264->g_288 p_1264->g_157 p_1264->g_182.f1 p_1264->g_91 p_1264->g_135 p_1264->g_142 p_1264->g_158 p_1264->g_313 p_1264->g_339 p_1264->g_353 p_1264->g_367 p_1264->g_181.f1 p_1264->g_377 p_1264->g_217.f1 p_1264->g_223.f1 p_1264->g_195.f1 p_1264->g_149.f1 p_1264->g_506 p_1264->g_456 p_1264->g_369.f1 p_1264->g_227.f1 p_1264->g_505 p_1264->g_209.f1 p_1264->g_224.f1 p_1264->g_709.f3 p_1264->g_709.f0 p_1264->g_734
 */
int32_t * func_66(int32_t * p_67, int32_t * p_68, int32_t  p_69, uint32_t  p_70, uint64_t  p_71, struct S2 * p_1264)
{ /* block id: 41 */
    uint16_t l_165 = 65535UL;
    int32_t l_239[9];
    int32_t l_240 = (-3L);
    union U1 **l_252 = (void*)0;
    uint64_t l_255 = 0x18E7A130ACF16FAFL;
    int32_t *l_262 = &p_1264->g_9[7];
    int32_t **l_261[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
    int32_t ***l_260[2][10][4] = {{{&l_261[2],&l_261[1],&l_261[2],&l_261[1]},{&l_261[2],&l_261[1],&l_261[2],&l_261[1]},{&l_261[2],&l_261[1],&l_261[2],&l_261[1]},{&l_261[2],&l_261[1],&l_261[2],&l_261[1]},{&l_261[2],&l_261[1],&l_261[2],&l_261[1]},{&l_261[2],&l_261[1],&l_261[2],&l_261[1]},{&l_261[2],&l_261[1],&l_261[2],&l_261[1]},{&l_261[2],&l_261[1],&l_261[2],&l_261[1]},{&l_261[2],&l_261[1],&l_261[2],&l_261[1]},{&l_261[2],&l_261[1],&l_261[2],&l_261[1]}},{{&l_261[2],&l_261[1],&l_261[2],&l_261[1]},{&l_261[2],&l_261[1],&l_261[2],&l_261[1]},{&l_261[2],&l_261[1],&l_261[2],&l_261[1]},{&l_261[2],&l_261[1],&l_261[2],&l_261[1]},{&l_261[2],&l_261[1],&l_261[2],&l_261[1]},{&l_261[2],&l_261[1],&l_261[2],&l_261[1]},{&l_261[2],&l_261[1],&l_261[2],&l_261[1]},{&l_261[2],&l_261[1],&l_261[2],&l_261[1]},{&l_261[2],&l_261[1],&l_261[2],&l_261[1]},{&l_261[2],&l_261[1],&l_261[2],&l_261[1]}}};
    int8_t l_304 = 0x0FL;
    int32_t l_311 = 0x3692EB2FL;
    uint8_t l_359 = 0x47L;
    int16_t **l_381 = (void*)0;
    uint8_t *l_391 = &p_1264->g_313;
    int32_t l_448 = 0x69CA1130L;
    int32_t l_492 = 0L;
    int32_t l_548[7][8] = {{0x73F04445L,0L,0x534C485BL,1L,0x5628A893L,0x5628A893L,1L,0x534C485BL},{0x73F04445L,0L,0x534C485BL,1L,0x5628A893L,0x5628A893L,1L,0x534C485BL},{0x73F04445L,0L,0x534C485BL,1L,0x5628A893L,0x5628A893L,1L,0x534C485BL},{0x73F04445L,0L,0x534C485BL,1L,0x5628A893L,0x5628A893L,1L,0x534C485BL},{0x73F04445L,0L,0x534C485BL,1L,0x5628A893L,0x5628A893L,1L,0x534C485BL},{0x73F04445L,0L,0x534C485BL,1L,0x5628A893L,0x5628A893L,1L,0x534C485BL},{0x73F04445L,0L,0x534C485BL,1L,0x5628A893L,0x5628A893L,1L,0x534C485BL}};
    int16_t *l_706[4] = {&p_1264->g_454,&p_1264->g_454,&p_1264->g_454,&p_1264->g_454};
    int64_t **l_771 = &p_1264->g_673[2];
    uint16_t *l_772 = &p_1264->g_709.f3;
    uint16_t *l_773 = &p_1264->g_709.f0;
    int64_t *l_774 = (void*)0;
    int64_t *l_775 = &p_1264->g_734;
    int i, j, k;
    for (i = 0; i < 9; i++)
        l_239[i] = 0x5D3DB025L;
    for (p_1264->g_146.f1 = (-30); (p_1264->g_146.f1 != (-22)); ++p_1264->g_146.f1)
    { /* block id: 44 */
        int32_t *l_164[8];
        union U1 *l_171[10][8][3] = {{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}}};
        union U1 **l_170[7];
        int16_t *l_296 = &p_1264->g_146.f1;
        int16_t **l_295 = &l_296;
        uint32_t l_335[6][4][3] = {{{0x489C8799L,0xE6DF44F7L,0UL},{0x489C8799L,0xE6DF44F7L,0UL},{0x489C8799L,0xE6DF44F7L,0UL},{0x489C8799L,0xE6DF44F7L,0UL}},{{0x489C8799L,0xE6DF44F7L,0UL},{0x489C8799L,0xE6DF44F7L,0UL},{0x489C8799L,0xE6DF44F7L,0UL},{0x489C8799L,0xE6DF44F7L,0UL}},{{0x489C8799L,0xE6DF44F7L,0UL},{0x489C8799L,0xE6DF44F7L,0UL},{0x489C8799L,0xE6DF44F7L,0UL},{0x489C8799L,0xE6DF44F7L,0UL}},{{0x489C8799L,0xE6DF44F7L,0UL},{0x489C8799L,0xE6DF44F7L,0UL},{0x489C8799L,0xE6DF44F7L,0UL},{0x489C8799L,0xE6DF44F7L,0UL}},{{0x489C8799L,0xE6DF44F7L,0UL},{0x489C8799L,0xE6DF44F7L,0UL},{0x489C8799L,0xE6DF44F7L,0UL},{0x489C8799L,0xE6DF44F7L,0UL}},{{0x489C8799L,0xE6DF44F7L,0UL},{0x489C8799L,0xE6DF44F7L,0UL},{0x489C8799L,0xE6DF44F7L,0UL},{0x489C8799L,0xE6DF44F7L,0UL}}};
        int8_t *l_342 = &p_1264->g_288;
        int32_t l_358 = (-1L);
        int64_t l_411[2];
        uint8_t l_453 = 2UL;
        uint32_t l_469 = 4294967289UL;
        int i, j, k;
        for (i = 0; i < 8; i++)
            l_164[i] = &p_1264->g_157;
        for (i = 0; i < 7; i++)
            l_170[i] = &l_171[1][5][1];
        for (i = 0; i < 2; i++)
            l_411[i] = (-1L);
        l_165 ^= p_1264->g_91;
        for (p_69 = 0; (p_69 > 10); p_69++)
        { /* block id: 48 */
            uint64_t *l_229[2][6][6] = {{{&p_1264->g_142,&p_1264->g_142,&p_1264->g_142,&p_1264->g_142,&p_1264->g_142,&p_1264->g_142},{&p_1264->g_142,&p_1264->g_142,&p_1264->g_142,&p_1264->g_142,&p_1264->g_142,&p_1264->g_142},{&p_1264->g_142,&p_1264->g_142,&p_1264->g_142,&p_1264->g_142,&p_1264->g_142,&p_1264->g_142},{&p_1264->g_142,&p_1264->g_142,&p_1264->g_142,&p_1264->g_142,&p_1264->g_142,&p_1264->g_142},{&p_1264->g_142,&p_1264->g_142,&p_1264->g_142,&p_1264->g_142,&p_1264->g_142,&p_1264->g_142},{&p_1264->g_142,&p_1264->g_142,&p_1264->g_142,&p_1264->g_142,&p_1264->g_142,&p_1264->g_142}},{{&p_1264->g_142,&p_1264->g_142,&p_1264->g_142,&p_1264->g_142,&p_1264->g_142,&p_1264->g_142},{&p_1264->g_142,&p_1264->g_142,&p_1264->g_142,&p_1264->g_142,&p_1264->g_142,&p_1264->g_142},{&p_1264->g_142,&p_1264->g_142,&p_1264->g_142,&p_1264->g_142,&p_1264->g_142,&p_1264->g_142},{&p_1264->g_142,&p_1264->g_142,&p_1264->g_142,&p_1264->g_142,&p_1264->g_142,&p_1264->g_142},{&p_1264->g_142,&p_1264->g_142,&p_1264->g_142,&p_1264->g_142,&p_1264->g_142,&p_1264->g_142},{&p_1264->g_142,&p_1264->g_142,&p_1264->g_142,&p_1264->g_142,&p_1264->g_142,&p_1264->g_142}}};
            int32_t l_230 = 0x2F1F12ECL;
            int16_t *l_241[8] = {&p_1264->g_146.f1,&p_1264->g_146.f1,&p_1264->g_146.f1,&p_1264->g_146.f1,&p_1264->g_146.f1,&p_1264->g_146.f1,&p_1264->g_146.f1,&p_1264->g_146.f1};
            int32_t **l_338 = &l_262;
            int i, j, k;
            if (((l_230 = (safe_add_func_int64_t_s_s(1L, ((void*)0 != l_170[3])))) < (0UL == (safe_sub_func_int32_t_s_s((*p_68), (((safe_lshift_func_uint16_t_u_u((((+(safe_sub_func_uint64_t_u_u((l_240 = (p_71 != (l_239[2] = (safe_lshift_func_uint8_t_u_u(((p_1264->g_11 , (0xD6E3933DD79A8471L != p_70)) && 0x2BC1F679L), p_1264->g_157))))), p_1264->g_3))) , (void*)0) == l_241[5]), 10)) ^ p_71) <= (*p_68)))))))
            { /* block id: 52 */
                l_230 = 0x7A930F33L;
            }
            else
            { /* block id: 54 */
                uint32_t l_259 = 4UL;
                int16_t *l_310 = (void*)0;
                int8_t *l_331 = &p_1264->g_288;
                uint16_t *l_332 = &l_165;
                int32_t l_341 = 0x4E6AA63AL;
                for (p_71 = 0; (p_71 <= 7); p_71 += 1)
                { /* block id: 57 */
                    union U1 **l_253 = &l_171[1][5][1];
                    int32_t l_254 = 0x0FFC12B6L;
                    int32_t l_256 = 1L;
                    uint16_t *l_269 = &l_165;
                    uint32_t *l_286 = &l_259;
                    int8_t *l_287 = &p_1264->g_288;
                    int32_t l_289 = 0x4D34D639L;
                    int16_t **l_290 = &l_241[5];
                    int i;
                    l_230 = (safe_sub_func_uint64_t_u_u(l_239[p_71], (((safe_add_func_int8_t_s_s(0x14L, (p_69 != l_165))) | ((safe_rshift_func_int16_t_s_s((safe_div_func_int16_t_s_s((p_1264->g_3 && ((((safe_mul_func_int8_t_s_s((0L < (p_1264->g_157 && ((l_255 |= ((p_1264->g_157 != (((l_252 == l_253) <= 4294967295UL) > l_254)) , 0x23AED3EFL)) , l_256))), p_1264->g_comm_values[p_1264->tid])) , p_1264->g_257) != p_1264->g_257) <= 0x4BD3L)), p_69)), 0)) , l_259)) != p_1264->g_135)));
                    p_1264->g_157 = ((+(l_260[1][3][1] == &l_261[2])) < (((*l_290) = (((~(safe_mod_func_uint32_t_u_u((safe_rshift_func_int8_t_s_u((safe_rshift_func_int16_t_s_s((-1L), p_69)), 4)), ((--(*l_269)) | (l_289 |= ((l_256 = (safe_add_func_int32_t_s_s((((safe_lshift_func_int8_t_s_s(p_70, ((safe_mul_func_int16_t_s_s(((!255UL) >= ((*l_287) = (((safe_div_func_int64_t_s_s((((safe_div_func_uint16_t_u_u(0x45AAL, (safe_mul_func_int16_t_s_s((safe_add_func_int8_t_s_s(((((((*l_286) = p_70) > (p_1264->g_257 == p_1264->g_257)) == 0x4301L) > p_69) , l_239[p_71]), p_71)), 8L)))) | p_71) | p_1264->g_11), p_70)) >= 0xB3627186L) , p_1264->g_3))), p_71)) , (-10L)))) >= p_70) , 0x0F8AC1A1L), 4294967295UL))) <= 0x244B06863550A750L)))))) , 0x6CC7CC8B21E8FEB3L) , (void*)0)) != (void*)0));
                    for (p_1264->g_182.f1 = 0; (p_1264->g_182.f1 <= 6); p_1264->g_182.f1 += 1)
                    { /* block id: 69 */
                        int32_t l_305 = 0x09AC96B2L;
                        uint8_t *l_312 = &p_1264->g_313;
                        uint16_t *l_322 = &l_165;
                        int i;
                        l_305 &= (safe_mod_func_int32_t_s_s((safe_mod_func_int16_t_s_s((~(((2UL && ((((l_164[p_71] = func_72(p_67, &p_1264->g_4, ((((p_71 <= (!(0x4FL >= ((void*)0 != l_295)))) < p_1264->g_142) ^ (safe_mul_func_int8_t_s_s((safe_unary_minus_func_uint64_t_u((safe_lshift_func_uint8_t_u_u((safe_add_func_int8_t_s_s(p_70, 255UL)), p_69)))), 0x3CL))) && p_1264->g_9[5]), p_70, p_1264)) == p_68) , l_304) & p_1264->g_9[5])) >= p_70) | (-5L))), l_254)), 0x2C781140L));
                        if (l_239[p_71])
                            continue;
                        p_1264->g_157 &= (safe_mul_func_int8_t_s_s((safe_lshift_func_uint8_t_u_u(((l_256 = (l_310 != (l_311 , (*l_290)))) ^ ((++(*l_312)) || (p_1264->g_142 == ((((((((((-2L) >= (((safe_rshift_func_int16_t_s_s((safe_div_func_uint32_t_u_u((&l_304 != ((((safe_lshift_func_uint8_t_u_s(((l_322 == (p_69 , p_1264->g_323)) > p_1264->g_135), 7)) || p_71) , p_70) , l_287)), p_1264->g_4)), l_259)) , (*p_67)) != GROUP_DIVERGE(2, 1))) && p_1264->g_146.f1) , 0L) != p_69) , 0x2EF56FE32209B306L) ^ 0x4ABC332EF7126A5EL) < p_70) | 1UL) , l_239[p_71])))), 4)), p_70));
                        l_164[p_71] = func_72(p_68, &p_1264->g_157, l_239[p_71], l_259, p_1264);
                    }
                }
                l_341 |= (safe_mod_func_uint16_t_u_u(((safe_sub_func_int32_t_s_s((safe_mul_func_uint16_t_u_u((((*l_331) ^= p_1264->g_146.f1) , (--(*l_332))), l_259)), (!FAKE_DIVERGE(p_1264->group_0_offset, get_group_id(0), 10)))) < ((p_1264->g_11 , l_335[3][2][2]) && p_1264->g_157)), (safe_rshift_func_uint8_t_u_s(((p_1264->g_339[1][0] = (l_338 = &l_164[7])) != (void*)0), p_1264->g_comm_values[p_1264->tid]))));
            }
        }
        if (((0L || (&p_1264->g_288 == l_342)) & (safe_mul_func_uint16_t_u_u((0x1F0AA9D2L > p_1264->g_345), (safe_rshift_func_int16_t_s_u(p_1264->g_91, (safe_unary_minus_func_int8_t_s((safe_lshift_func_uint16_t_u_u(p_1264->g_91, (((safe_sub_func_int32_t_s_s((*p_1264->g_340), (p_1264->g_353[4][6][0] = ((*l_262) , p_69)))) & p_1264->g_91) >= 0x5E46L)))))))))))
        { /* block id: 87 */
            int32_t l_354 = 1L;
            int32_t l_355 = 1L;
            int32_t l_356[8][6] = {{1L,1L,1L,1L,1L,1L},{1L,1L,1L,1L,1L,1L},{1L,1L,1L,1L,1L,1L},{1L,1L,1L,1L,1L,1L},{1L,1L,1L,1L,1L,1L},{1L,1L,1L,1L,1L,1L},{1L,1L,1L,1L,1L,1L},{1L,1L,1L,1L,1L,1L}};
            int i, j;
            --l_359;
            p_68 = p_68;
        }
        else
        { /* block id: 90 */
            int64_t l_362 = 1L;
            union U1 *l_365 = &p_1264->g_366[8];
            int16_t **l_374 = (void*)0;
            uint32_t *l_386[10] = {&l_335[3][2][2],&l_335[3][2][2],&l_335[0][1][1],&l_335[3][2][2],&l_335[3][2][2],&l_335[3][2][2],&l_335[3][2][2],&l_335[0][1][1],&l_335[3][2][2],&l_335[3][2][2]};
            int32_t l_393[2];
            int64_t *l_493[2][6];
            int32_t l_494 = 0x63CC6194L;
            int16_t l_519 = 0x5EEAL;
            int32_t *l_522 = &l_494;
            int i, j;
            for (i = 0; i < 2; i++)
                l_393[i] = 0x19D71EDCL;
            for (i = 0; i < 2; i++)
            {
                for (j = 0; j < 6; j++)
                    l_493[i][j] = &l_411[0];
            }
            l_164[5] = p_68;
            if ((l_362 > 0x47L))
            { /* block id: 92 */
                union U1 *l_363 = &p_1264->g_364;
                int32_t l_392[7][2][2] = {{{(-6L),(-6L)},{(-6L),(-6L)}},{{(-6L),(-6L)},{(-6L),(-6L)}},{{(-6L),(-6L)},{(-6L),(-6L)}},{{(-6L),(-6L)},{(-6L),(-6L)}},{{(-6L),(-6L)},{(-6L),(-6L)}},{{(-6L),(-6L)},{(-6L),(-6L)}},{{(-6L),(-6L)},{(-6L),(-6L)}}};
                uint64_t l_412 = 0xA98BC18B6C73CD0FL;
                int i, j, k;
                p_1264->g_367[3] = (l_365 = l_363);
                p_68 = p_67;
                if ((safe_add_func_uint32_t_u_u(p_71, (*p_68))))
                { /* block id: 96 */
                    int16_t l_380 = (-3L);
                    int32_t l_383 = 0L;
                    for (p_1264->g_181.f1 = 15; (p_1264->g_181.f1 > 22); p_1264->g_181.f1 = safe_add_func_uint32_t_u_u(p_1264->g_181.f1, 1))
                    { /* block id: 99 */
                        int32_t l_382 = 0x1D6F6295L;
                        l_382 ^= (((*p_1264->g_340) = (((((*l_342) ^= p_1264->g_181.f1) <= p_71) > 0x1614L) || 0x06B5L)) == (l_374 != (((p_1264->g_377 = (safe_div_func_int8_t_s_s((5UL && 18446744073709551615UL), 246UL))) != (safe_lshift_func_int8_t_s_u(p_1264->g_313, l_380))) , l_381)));
                        l_383 = (*p_68);
                        return p_68;
                    }
                }
                else
                { /* block id: 107 */
                    int32_t *l_387 = &p_1264->g_3;
                    uint8_t *l_388 = &l_359;
                    uint8_t **l_389 = (void*)0;
                    uint8_t **l_390[10][5] = {{&l_388,(void*)0,&l_388,&l_388,(void*)0},{&l_388,(void*)0,&l_388,&l_388,(void*)0},{&l_388,(void*)0,&l_388,&l_388,(void*)0},{&l_388,(void*)0,&l_388,&l_388,(void*)0},{&l_388,(void*)0,&l_388,&l_388,(void*)0},{&l_388,(void*)0,&l_388,&l_388,(void*)0},{&l_388,(void*)0,&l_388,&l_388,(void*)0},{&l_388,(void*)0,&l_388,&l_388,(void*)0},{&l_388,(void*)0,&l_388,&l_388,(void*)0},{&l_388,(void*)0,&l_388,&l_388,(void*)0}};
                    int32_t l_396 = (-8L);
                    int32_t l_397 = 0x628C13ABL;
                    int32_t l_398 = (-1L);
                    int i, j;
                    (*p_1264->g_340) = (safe_div_func_int8_t_s_s((l_386[7] != ((p_1264->g_135 || (*p_1264->g_340)) , func_72(func_72(p_68, func_72(p_67, (FAKE_DIVERGE(p_1264->global_2_offset, get_global_id(2), 10) , func_72(p_67, l_387, p_1264->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1264->tid, 11))], ((l_391 = l_388) == (void*)0), p_1264)), p_1264->g_345, p_1264->g_353[4][6][0], p_1264), p_1264->g_357, l_362, p_1264), &l_358, p_70, p_71, p_1264))), p_1264->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1264->tid, 11))]));
                    l_393[1] = ((+l_392[5][1][0]) || (l_252 == (void*)0));
                    for (p_1264->g_182.f1 = (-1); (p_1264->g_182.f1 > (-3)); --p_1264->g_182.f1)
                    { /* block id: 113 */
                        uint32_t l_399 = 4294967289UL;
                        l_399--;
                        if ((*l_387))
                            break;
                        if ((*p_1264->g_340))
                            break;
                        (*p_1264->g_340) = (p_71 < (((safe_mod_func_int64_t_s_s(1L, (((safe_rshift_func_uint16_t_u_u(((((safe_mod_func_uint8_t_u_u((safe_unary_minus_func_uint8_t_u(FAKE_DIVERGE(p_1264->global_1_offset, get_global_id(1), 10))), (safe_lshift_func_int8_t_s_u((((((void*)0 == l_262) || p_1264->g_9[5]) >= (l_411[0] = p_70)) , (+(p_1264->g_377 < ((l_399 , p_1264->g_323) != p_1264->g_323)))), 1)))) && l_392[2][1][1]) <= p_69) > (*l_387)), 2)) ^ p_1264->g_182.f1) ^ p_1264->g_11))) ^ p_1264->g_4) > GROUP_DIVERGE(2, 1)));
                    }
                    l_412 |= l_392[2][0][1];
                }
            }
            else
            { /* block id: 122 */
                int32_t *l_444 = (void*)0;
                int32_t l_458[2][4] = {{(-6L),(-6L),(-6L),(-6L)},{(-6L),(-6L),(-6L),(-6L)}};
                uint16_t l_464[4];
                int32_t l_467 = 0x449A3642L;
                int32_t l_468 = (-1L);
                int i, j;
                for (i = 0; i < 4; i++)
                    l_464[i] = 0x1BD5L;
                if ((p_1264->g_146.f1 , (-5L)))
                { /* block id: 123 */
                    uint8_t l_421 = 0UL;
                    int32_t *l_447[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                    int i;
                    for (p_1264->g_217.f1 = 0; (p_1264->g_217.f1 <= 22); p_1264->g_217.f1++)
                    { /* block id: 126 */
                        uint32_t l_443[10] = {0xAAF38E21L,0xAAF38E21L,0xAAF38E21L,0xAAF38E21L,0xAAF38E21L,0xAAF38E21L,0xAAF38E21L,0xAAF38E21L,0xAAF38E21L,0xAAF38E21L};
                        int i;
                        l_393[1] = (*p_67);
                        l_443[8] ^= ((5UL <= (p_1264->g_353[4][6][0] && ((safe_sub_func_uint8_t_u_u(0x00L, (safe_mul_func_int8_t_s_s(((*l_342) = (safe_sub_func_uint64_t_u_u((l_421 == ((safe_lshift_func_uint8_t_u_u((safe_add_func_uint8_t_u_u((p_1264->g_426 != (void*)0), (safe_sub_func_int64_t_s_s((p_1264->g_377 , (-7L)), (safe_mod_func_uint32_t_u_u(p_69, l_421)))))), p_1264->g_353[9][4][0])) < p_70)), 1L))), p_70)))) < p_1264->g_157))) | p_1264->g_135);
                    }
                    l_444 = p_67;
                    for (p_1264->g_223.f1 = 18; (p_1264->g_223.f1 != 1); p_1264->g_223.f1--)
                    { /* block id: 134 */
                        p_67 = l_447[2];
                    }
                    for (p_1264->g_91 = 1; (p_1264->g_91 >= 0); p_1264->g_91 -= 1)
                    { /* block id: 139 */
                        int32_t *l_451 = (void*)0;
                        int32_t *l_452 = &p_1264->g_353[7][3][1];
                        int i, j;
                        (1 + 1);
                    }
                }
                else
                { /* block id: 152 */
                    int32_t l_455 = 5L;
                    int32_t l_457 = (-1L);
                    int32_t l_459 = (-4L);
                    int64_t l_460 = 0x196A20A56EFCEC9CL;
                    int32_t l_461 = 0x0B93E3E6L;
                    int32_t l_462 = 7L;
                    int32_t l_463[5][3] = {{6L,6L,6L},{6L,6L,6L},{6L,6L,6L},{6L,6L,6L},{6L,6L,6L}};
                    int i, j;
                    l_464[1]++;
                    l_469++;
                    if ((*p_68))
                        break;
                    for (p_1264->g_195.f1 = (-30); (p_1264->g_195.f1 < 16); p_1264->g_195.f1 = safe_add_func_int64_t_s_s(p_1264->g_195.f1, 8))
                    { /* block id: 158 */
                        (*p_1264->g_340) = (*p_1264->g_340);
                    }
                }
                return p_67;
            }
            if (((l_393[1] < ((safe_mul_func_int16_t_s_s(((l_494 = ((6UL != (((*l_391) = p_1264->g_345) == (((p_71 > ((safe_add_func_int8_t_s_s((safe_mul_func_uint16_t_u_u((safe_rshift_func_int8_t_s_u((0x33DFAE343D10D858L == (safe_unary_minus_func_uint8_t_u((((p_70 & p_1264->g_146.f1) > ((safe_div_func_uint16_t_u_u((safe_rshift_func_int8_t_s_s(((safe_unary_minus_func_int64_t_s((((safe_div_func_uint32_t_u_u((((safe_div_func_int16_t_s_s((l_492 , ((!FAKE_DIVERGE(p_1264->group_2_offset, get_group_id(2), 10)) && (-8L))), 0x6EF7L)) , &p_1264->g_367[5]) == &l_365), 8UL)) != 2L) <= (*p_68)))) & p_70), 7)), 65530UL)) == p_1264->g_135)) == p_1264->g_357)))), 0)), p_71)), 0xA4L)) > 0x79FB6EBD1A48D87AL)) , p_69) < 1L))) , 7L)) == p_1264->g_9[5]), p_69)) , p_1264->g_157)) >= 1L))
            { /* block id: 166 */
                uint32_t l_503 = 4294967290UL;
                int32_t *l_504 = &l_393[1];
                int32_t *l_525[2];
                int i;
                for (i = 0; i < 2; i++)
                    l_525[i] = &l_240;
                for (p_1264->g_149.f1 = 3; (p_1264->g_149.f1 >= 0); p_1264->g_149.f1 -= 1)
                { /* block id: 169 */
                    int32_t l_499 = 0x279C1327L;
                    int32_t l_500 = 0x42AED8D7L;
                    int i, j;
                    l_500 |= ((*p_1264->g_340) &= ((safe_rshift_func_int8_t_s_u(0L, p_71)) >= (safe_rshift_func_uint16_t_u_s(l_494, (l_499 < p_1264->g_11)))));
                    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                    p_1264->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 11)), permutations[(safe_mod_func_uint32_t_u_u((safe_rshift_func_int8_t_s_u(p_1264->g_288, 5)), 10))][(safe_mod_func_uint32_t_u_u(p_1264->tid, 11))]));
                    l_503 = (!(*p_68));
                }
                if ((*p_1264->g_340))
                { /* block id: 177 */
                    int32_t l_509 = 0x0BA093BCL;
                    int32_t l_518 = 0x219CBAC5L;
                    uint64_t *l_521[10][2][1] = {{{(void*)0},{(void*)0}},{{(void*)0},{(void*)0}},{{(void*)0},{(void*)0}},{{(void*)0},{(void*)0}},{{(void*)0},{(void*)0}},{{(void*)0},{(void*)0}},{{(void*)0},{(void*)0}},{{(void*)0},{(void*)0}},{{(void*)0},{(void*)0}},{{(void*)0},{(void*)0}}};
                    int i, j, k;
                    l_504 = &l_393[1];
                    (*p_1264->g_340) |= ((18446744073709551615UL >= (((void*)0 != &p_1264->g_427[7][4]) == (l_519 = ((p_1264->g_506--) || ((l_518 = (l_509 | (safe_mod_func_uint16_t_u_u(0UL, (safe_div_func_int16_t_s_s((safe_rshift_func_uint16_t_u_s((p_69 != p_1264->g_146.f1), p_1264->g_3)), (safe_div_func_uint64_t_u_u(0x77A4A058CC0ADA09L, p_1264->g_9[3])))))))) | p_69))))) > 0L);
                    l_522 = func_72(p_1264->g_520, p_67, (*l_262), ((l_494 = 0x104E6FF37CD03940L) >= (l_393[0] = (p_1264->g_142 = 18446744073709551607UL))), p_1264);
                }
                else
                { /* block id: 187 */
                    for (p_1264->g_181.f1 = 9; (p_1264->g_181.f1 >= (-21)); --p_1264->g_181.f1)
                    { /* block id: 190 */
                        l_525[0] = p_67;
                        p_68 = p_67;
                    }
                }
            }
            else
            { /* block id: 195 */
                return p_67;
            }
            (*p_1264->g_340) = ((safe_lshift_func_uint16_t_u_u(((safe_div_func_uint16_t_u_u((safe_mod_func_int16_t_s_s(((p_1264->g_257 != (void*)0) && (((safe_mod_func_uint32_t_u_u(p_1264->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1264->tid, 11))], (p_1264->g_135 || ((p_70 , (safe_add_func_uint64_t_u_u(((0xF28A8ACCL <= (((((&p_1264->g_142 == (((safe_rshift_func_int8_t_s_u(((safe_div_func_uint16_t_u_u(0x735BL, (p_1264->g_313 , p_1264->g_91))) & 9UL), 0)) ^ (*l_522)) , &p_1264->g_142)) && p_1264->g_456) || p_1264->g_4) || 0x169E5768L) == 0x26L)) , p_1264->g_comm_values[p_1264->tid]), p_69))) | 7L)))) , 7UL) ^ p_71)), p_1264->g_11)), 0x4855L)) & p_1264->g_3), 12)) & 0x1F15F85AL);
        }
    }
    for (p_1264->g_456 = 5; (p_1264->g_456 >= 1); p_1264->g_456 -= 1)
    { /* block id: 203 */
        int32_t *l_542 = (void*)0;
        uint64_t l_555 = 8UL;
        uint16_t l_560 = 0xABC9L;
        int32_t l_578[2][9][2] = {{{0x3D80B4B6L,0x6C4A3984L},{0x3D80B4B6L,0x6C4A3984L},{0x3D80B4B6L,0x6C4A3984L},{0x3D80B4B6L,0x6C4A3984L},{0x3D80B4B6L,0x6C4A3984L},{0x3D80B4B6L,0x6C4A3984L},{0x3D80B4B6L,0x6C4A3984L},{0x3D80B4B6L,0x6C4A3984L},{0x3D80B4B6L,0x6C4A3984L}},{{0x3D80B4B6L,0x6C4A3984L},{0x3D80B4B6L,0x6C4A3984L},{0x3D80B4B6L,0x6C4A3984L},{0x3D80B4B6L,0x6C4A3984L},{0x3D80B4B6L,0x6C4A3984L},{0x3D80B4B6L,0x6C4A3984L},{0x3D80B4B6L,0x6C4A3984L},{0x3D80B4B6L,0x6C4A3984L},{0x3D80B4B6L,0x6C4A3984L}}};
        int32_t *l_600 = &p_1264->g_353[9][5][2];
        union U1 *l_616 = &p_1264->g_617[4][1];
        int64_t **l_702 = (void*)0;
        uint16_t l_737[5][6] = {{0x1290L,8UL,0x1290L,0x1290L,8UL,0x1290L},{0x1290L,8UL,0x1290L,0x1290L,8UL,0x1290L},{0x1290L,8UL,0x1290L,0x1290L,8UL,0x1290L},{0x1290L,8UL,0x1290L,0x1290L,8UL,0x1290L},{0x1290L,8UL,0x1290L,0x1290L,8UL,0x1290L}};
        int i, j, k;
        for (p_1264->g_369.f1 = 1; (p_1264->g_369.f1 <= 6); p_1264->g_369.f1 += 1)
        { /* block id: 206 */
            int32_t l_543 = (-4L);
            uint8_t **l_552 = &l_391;
            uint8_t ***l_551 = &l_552;
            uint16_t *l_553 = &l_165;
            int64_t *l_561 = (void*)0;
            int64_t *l_562[8][10][3] = {{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}}};
            uint32_t *l_563 = &p_1264->g_564;
            int32_t *l_565 = &l_240;
            int i, j, k;
            p_67 = l_542;
            if (l_555)
                continue;
        }
        (*p_1264->g_340) |= (*p_68);
        for (p_1264->g_227.f1 = 1; (p_1264->g_227.f1 <= 6); p_1264->g_227.f1 += 1)
        { /* block id: 225 */
            int64_t l_575 = 0x3BC1B2CC3A35525DL;
            int32_t l_577 = 6L;
            uint32_t l_581 = 0UL;
            int16_t *l_586 = (void*)0;
            uint8_t l_609 = 0xE8L;
            uint8_t **l_677 = &l_391;
            int64_t *l_703[9][8] = {{&p_1264->g_704,&p_1264->g_704,&p_1264->g_704,&p_1264->g_704,&p_1264->g_704,&p_1264->g_704,&p_1264->g_704,&p_1264->g_704},{&p_1264->g_704,&p_1264->g_704,&p_1264->g_704,&p_1264->g_704,&p_1264->g_704,&p_1264->g_704,&p_1264->g_704,&p_1264->g_704},{&p_1264->g_704,&p_1264->g_704,&p_1264->g_704,&p_1264->g_704,&p_1264->g_704,&p_1264->g_704,&p_1264->g_704,&p_1264->g_704},{&p_1264->g_704,&p_1264->g_704,&p_1264->g_704,&p_1264->g_704,&p_1264->g_704,&p_1264->g_704,&p_1264->g_704,&p_1264->g_704},{&p_1264->g_704,&p_1264->g_704,&p_1264->g_704,&p_1264->g_704,&p_1264->g_704,&p_1264->g_704,&p_1264->g_704,&p_1264->g_704},{&p_1264->g_704,&p_1264->g_704,&p_1264->g_704,&p_1264->g_704,&p_1264->g_704,&p_1264->g_704,&p_1264->g_704,&p_1264->g_704},{&p_1264->g_704,&p_1264->g_704,&p_1264->g_704,&p_1264->g_704,&p_1264->g_704,&p_1264->g_704,&p_1264->g_704,&p_1264->g_704},{&p_1264->g_704,&p_1264->g_704,&p_1264->g_704,&p_1264->g_704,&p_1264->g_704,&p_1264->g_704,&p_1264->g_704,&p_1264->g_704},{&p_1264->g_704,&p_1264->g_704,&p_1264->g_704,&p_1264->g_704,&p_1264->g_704,&p_1264->g_704,&p_1264->g_704,&p_1264->g_704}};
            int8_t *l_705[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
            int32_t l_707 = (-10L);
            int32_t l_735[6] = {4L,4L,4L,4L,4L,4L};
            int i, j;
            for (l_359 = 2; (l_359 <= 8); l_359 += 1)
            { /* block id: 228 */
                uint32_t l_572[3][6][9] = {{{2UL,0xF20BB6DDL,0xB0A37766L,4294967295UL,0UL,4294967295UL,0xB0A37766L,0xF20BB6DDL,2UL},{2UL,0xF20BB6DDL,0xB0A37766L,4294967295UL,0UL,4294967295UL,0xB0A37766L,0xF20BB6DDL,2UL},{2UL,0xF20BB6DDL,0xB0A37766L,4294967295UL,0UL,4294967295UL,0xB0A37766L,0xF20BB6DDL,2UL},{2UL,0xF20BB6DDL,0xB0A37766L,4294967295UL,0UL,4294967295UL,0xB0A37766L,0xF20BB6DDL,2UL},{2UL,0xF20BB6DDL,0xB0A37766L,4294967295UL,0UL,4294967295UL,0xB0A37766L,0xF20BB6DDL,2UL},{2UL,0xF20BB6DDL,0xB0A37766L,4294967295UL,0UL,4294967295UL,0xB0A37766L,0xF20BB6DDL,2UL}},{{2UL,0xF20BB6DDL,0xB0A37766L,4294967295UL,0UL,4294967295UL,0xB0A37766L,0xF20BB6DDL,2UL},{2UL,0xF20BB6DDL,0xB0A37766L,4294967295UL,0UL,4294967295UL,0xB0A37766L,0xF20BB6DDL,2UL},{2UL,0xF20BB6DDL,0xB0A37766L,4294967295UL,0UL,4294967295UL,0xB0A37766L,0xF20BB6DDL,2UL},{2UL,0xF20BB6DDL,0xB0A37766L,4294967295UL,0UL,4294967295UL,0xB0A37766L,0xF20BB6DDL,2UL},{2UL,0xF20BB6DDL,0xB0A37766L,4294967295UL,0UL,4294967295UL,0xB0A37766L,0xF20BB6DDL,2UL},{2UL,0xF20BB6DDL,0xB0A37766L,4294967295UL,0UL,4294967295UL,0xB0A37766L,0xF20BB6DDL,2UL}},{{2UL,0xF20BB6DDL,0xB0A37766L,4294967295UL,0UL,4294967295UL,0xB0A37766L,0xF20BB6DDL,2UL},{2UL,0xF20BB6DDL,0xB0A37766L,4294967295UL,0UL,4294967295UL,0xB0A37766L,0xF20BB6DDL,2UL},{2UL,0xF20BB6DDL,0xB0A37766L,4294967295UL,0UL,4294967295UL,0xB0A37766L,0xF20BB6DDL,2UL},{2UL,0xF20BB6DDL,0xB0A37766L,4294967295UL,0UL,4294967295UL,0xB0A37766L,0xF20BB6DDL,2UL},{2UL,0xF20BB6DDL,0xB0A37766L,4294967295UL,0UL,4294967295UL,0xB0A37766L,0xF20BB6DDL,2UL},{2UL,0xF20BB6DDL,0xB0A37766L,4294967295UL,0UL,4294967295UL,0xB0A37766L,0xF20BB6DDL,2UL}}};
                int32_t l_579 = 0L;
                uint64_t l_599 = 1UL;
                int32_t l_659 = 0L;
                int i, j, k;
                (1 + 1);
            }
            l_707 &= (safe_lshift_func_uint8_t_u_u((((*l_677) = &p_1264->g_313) != &l_609), ((safe_mul_func_uint8_t_u_u(((safe_mul_func_int8_t_s_s((p_1264->g_135 || ((safe_sub_func_int16_t_s_s((!(p_1264->g_182.f1 = (safe_div_func_uint8_t_u_u(((p_70 | ((safe_add_func_uint8_t_u_u((safe_mul_func_uint8_t_u_u(((safe_unary_minus_func_int8_t_s(((((((safe_lshift_func_uint8_t_u_s(((((*p_1264->g_340) & (((p_1264->g_288 = ((p_1264->g_377 = (((safe_add_func_int16_t_s_s((safe_unary_minus_func_uint32_t_u(p_1264->g_620[5])), ((-7L) || ((safe_sub_func_uint32_t_u_u((safe_mul_func_uint8_t_u_u(((p_71 > ((l_577 = (((safe_div_func_uint8_t_u_u(((&p_1264->g_620[5] == &p_1264->g_345) | p_71), p_1264->g_4)) , &p_1264->g_673[0]) != l_702)) , p_1264->g_157)) >= GROUP_DIVERGE(2, 1)), p_1264->g_353[4][6][0])), p_70)) | 0x5E21902BL)))) && p_70) && p_69)) != p_71)) & p_70) | 0x48A8L)) || l_609) || p_1264->g_456), p_1264->g_313)) ^ (*p_1264->g_520)) , l_706[3]) != &p_1264->g_456) == 0x829FL) , (-1L)))) != p_69), l_609)), 252UL)) , FAKE_DIVERGE(p_1264->global_0_offset, get_global_id(0), 10))) , p_69), p_1264->g_227.f1)))), l_575)) >= 1UL)), 251UL)) , 0xCAL), p_1264->g_620[5])) , 255UL)));
            for (p_1264->g_505 = 8; (p_1264->g_505 >= 0); p_1264->g_505 -= 1)
            { /* block id: 280 */
                int32_t l_712 = (-9L);
                uint64_t *l_725 = &p_1264->g_142;
                int32_t l_732 = 0x3818381BL;
                int32_t l_733 = (-1L);
                int32_t l_736[1];
                int32_t *l_759 = &p_1264->g_157;
                int i;
                for (i = 0; i < 1; i++)
                    l_736[i] = 0L;
                for (p_1264->g_209.f1 = 7; (p_1264->g_209.f1 >= 2); p_1264->g_209.f1 -= 1)
                { /* block id: 283 */
                    struct S0 *l_708 = &p_1264->g_709;
                    uint64_t *l_713 = &p_1264->g_142;
                    for (p_1264->g_146.f1 = 0; (p_1264->g_146.f1 <= 6); p_1264->g_146.f1 += 1)
                    { /* block id: 286 */
                        struct S0 **l_710 = (void*)0;
                        struct S0 **l_711 = &l_708;
                        (*l_711) = l_708;
                        (*p_1264->g_340) ^= (*p_68);
                    }
                    (*p_1264->g_340) = ((0xC9F8L & (l_712 &= 0x2D93L)) > ((*l_713)++));
                }
                l_578[1][4][1] = (l_736[0] = (((safe_div_func_int8_t_s_s((safe_mul_func_int16_t_s_s((p_1264->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1264->tid, 11))] || ((safe_rshift_func_uint16_t_u_u(((safe_div_func_int64_t_s_s(((((p_71 != (+(&p_1264->g_367[p_1264->g_227.f1] != (p_1264->g_724 , &p_1264->g_367[3])))) != (((((*l_725) ^= p_69) | ((l_733 |= (safe_rshift_func_uint8_t_u_s(((p_1264->g_224.f1 = (safe_mul_func_int16_t_s_s((l_732 = ((safe_sub_func_uint16_t_u_u(p_1264->g_377, p_1264->g_345)) | ((l_712 , (-5L)) | p_1264->g_369.f1))), p_69))) ^ p_69), 7))) < p_1264->g_9[5])) , p_1264->g_734) != p_1264->g_288)) < 251UL) <= 7UL), p_70)) | 0x428D4EDFL), p_69)) == p_1264->g_369.f1)), l_712)), 1L)) , p_71) , l_735[2]));
                --l_737[1][5];
                for (p_1264->g_209.f1 = 5; (p_1264->g_209.f1 >= 0); p_1264->g_209.f1 -= 1)
                { /* block id: 303 */
                    int16_t l_758 = (-1L);
                    int32_t *l_760[6];
                    int i;
                    for (i = 0; i < 6; i++)
                        l_760[i] = (void*)0;
                    (1 + 1);
                }
            }
        }
    }
    (*p_1264->g_340) = ((safe_lshift_func_uint8_t_u_s((p_69 == (((18446744073709551615UL <= (((((&p_70 != l_262) <= ((*l_775) = (((*l_773) ^= ((*l_772) = (safe_sub_func_uint16_t_u_u(((safe_add_func_uint64_t_u_u(p_69, p_71)) != (FAKE_DIVERGE(p_1264->global_0_offset, get_global_id(0), 10) | (l_771 != &p_1264->g_673[2]))), ((p_71 <= (*l_262)) > p_1264->g_454))))) & p_71))) | 0L) > p_1264->g_724) ^ p_70)) , (void*)0) != (void*)0)), 7)) <= p_71);
    p_68 = p_68;
    return p_67;
}


/* ------------------------------------------ */
/* 
 * reads : p_1264->g_comm_values p_1264->g_3 p_1264->g_11 p_1264->g_9 p_1264->l_comm_values p_1264->g_91 p_1264->g_142 p_1264->g_157 p_1264->g_158 p_1264->g_4 l_1073
 * writes: p_1264->g_91 p_1264->g_135 p_1264->g_142 p_1264->g_157 p_1264->g_158
 */
int32_t * func_72(int32_t * p_73, int32_t * p_74, uint32_t  p_75, int32_t  p_76, struct S2 * p_1264)
{ /* block id: 23 */
    int32_t *l_98 = &p_1264->g_3;
    int32_t *l_155 = (void*)0;
    int32_t *l_156 = &p_1264->g_157;
    volatile int32_t * volatile **l_160[4][8][4] = {{{&p_1264->g_158,&p_1264->g_158,&p_1264->g_158,(void*)0},{&p_1264->g_158,&p_1264->g_158,&p_1264->g_158,(void*)0},{&p_1264->g_158,&p_1264->g_158,&p_1264->g_158,(void*)0},{&p_1264->g_158,&p_1264->g_158,&p_1264->g_158,(void*)0},{&p_1264->g_158,&p_1264->g_158,&p_1264->g_158,(void*)0},{&p_1264->g_158,&p_1264->g_158,&p_1264->g_158,(void*)0},{&p_1264->g_158,&p_1264->g_158,&p_1264->g_158,(void*)0},{&p_1264->g_158,&p_1264->g_158,&p_1264->g_158,(void*)0}},{{&p_1264->g_158,&p_1264->g_158,&p_1264->g_158,(void*)0},{&p_1264->g_158,&p_1264->g_158,&p_1264->g_158,(void*)0},{&p_1264->g_158,&p_1264->g_158,&p_1264->g_158,(void*)0},{&p_1264->g_158,&p_1264->g_158,&p_1264->g_158,(void*)0},{&p_1264->g_158,&p_1264->g_158,&p_1264->g_158,(void*)0},{&p_1264->g_158,&p_1264->g_158,&p_1264->g_158,(void*)0},{&p_1264->g_158,&p_1264->g_158,&p_1264->g_158,(void*)0},{&p_1264->g_158,&p_1264->g_158,&p_1264->g_158,(void*)0}},{{&p_1264->g_158,&p_1264->g_158,&p_1264->g_158,(void*)0},{&p_1264->g_158,&p_1264->g_158,&p_1264->g_158,(void*)0},{&p_1264->g_158,&p_1264->g_158,&p_1264->g_158,(void*)0},{&p_1264->g_158,&p_1264->g_158,&p_1264->g_158,(void*)0},{&p_1264->g_158,&p_1264->g_158,&p_1264->g_158,(void*)0},{&p_1264->g_158,&p_1264->g_158,&p_1264->g_158,(void*)0},{&p_1264->g_158,&p_1264->g_158,&p_1264->g_158,(void*)0},{&p_1264->g_158,&p_1264->g_158,&p_1264->g_158,(void*)0}},{{&p_1264->g_158,&p_1264->g_158,&p_1264->g_158,(void*)0},{&p_1264->g_158,&p_1264->g_158,&p_1264->g_158,(void*)0},{&p_1264->g_158,&p_1264->g_158,&p_1264->g_158,(void*)0},{&p_1264->g_158,&p_1264->g_158,&p_1264->g_158,(void*)0},{&p_1264->g_158,&p_1264->g_158,&p_1264->g_158,(void*)0},{&p_1264->g_158,&p_1264->g_158,&p_1264->g_158,(void*)0},{&p_1264->g_158,&p_1264->g_158,&p_1264->g_158,(void*)0},{&p_1264->g_158,&p_1264->g_158,&p_1264->g_158,(void*)0}}};
    int i, j, k;
    (*l_156) |= (p_1264->g_comm_values[p_1264->tid] >= ((safe_rshift_func_uint16_t_u_s((p_1264->g_91 = 0xC03CL), 8)) && (safe_lshift_func_uint8_t_u_s(func_94(l_98, (*l_98), (safe_div_func_int64_t_s_s((((*p_73) > p_1264->g_comm_values[p_1264->tid]) != ((safe_mul_func_int16_t_s_s(0x64AAL, (func_103(p_75, p_1264) , p_1264->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1264->tid, 11))]))) > 65532UL)), 1UL)), p_1264), p_1264->g_comm_values[p_1264->tid]))));
    p_1264->g_158 = p_1264->g_158;
    return l_98;
}


/* ------------------------------------------ */
/* 
 * reads : p_1264->g_91 p_1264->g_142
 * writes: p_1264->g_91 p_1264->g_142
 */
uint8_t  func_94(int32_t * p_95, uint32_t  p_96, uint8_t  p_97, struct S2 * p_1264)
{ /* block id: 29 */
    int32_t *l_140 = &p_1264->g_9[5];
    union U1 *l_145[5][8] = {{&p_1264->g_148,&p_1264->g_152,&p_1264->g_148,&p_1264->g_148,&p_1264->g_152,&p_1264->g_148,&p_1264->g_148,&p_1264->g_152},{&p_1264->g_148,&p_1264->g_152,&p_1264->g_148,&p_1264->g_148,&p_1264->g_152,&p_1264->g_148,&p_1264->g_148,&p_1264->g_152},{&p_1264->g_148,&p_1264->g_152,&p_1264->g_148,&p_1264->g_148,&p_1264->g_152,&p_1264->g_148,&p_1264->g_148,&p_1264->g_152},{&p_1264->g_148,&p_1264->g_152,&p_1264->g_148,&p_1264->g_148,&p_1264->g_152,&p_1264->g_148,&p_1264->g_148,&p_1264->g_152},{&p_1264->g_148,&p_1264->g_152,&p_1264->g_148,&p_1264->g_148,&p_1264->g_152,&p_1264->g_148,&p_1264->g_148,&p_1264->g_152}};
    union U1 **l_154 = &l_145[1][3];
    int i, j;
    for (p_1264->g_91 = 0; (p_1264->g_91 > 22); p_1264->g_91 = safe_add_func_uint64_t_u_u(p_1264->g_91, 5))
    { /* block id: 32 */
        int32_t **l_141[8][1][2] = {{{&l_140,&l_140}},{{&l_140,&l_140}},{{&l_140,&l_140}},{{&l_140,&l_140}},{{&l_140,&l_140}},{{&l_140,&l_140}},{{&l_140,&l_140}},{{&l_140,&l_140}}};
        int i, j, k;
        p_95 = l_140;
        ++p_1264->g_142;
    }
    (*l_154) = l_145[1][3];
    return p_96;
}


/* ------------------------------------------ */
/* 
 * reads : p_1264->g_9 p_1264->g_11
 * writes: p_1264->g_135
 */
uint8_t  func_103(uint32_t  p_104, struct S2 * p_1264)
{ /* block id: 25 */
    int32_t l_105 = 0x3B9F80B5L;
    int16_t *l_134 = &p_1264->g_135;
    int32_t *l_137 = (void*)0;
    int32_t **l_136 = &l_137;
    (*l_136) = ((l_105 < (safe_div_func_int16_t_s_s((safe_add_func_uint8_t_u_u(((safe_rshift_func_uint8_t_u_s((((safe_mul_func_int16_t_s_s(((safe_div_func_uint16_t_u_u(p_1264->g_9[5], (safe_div_func_uint16_t_u_u((safe_sub_func_uint16_t_u_u((safe_lshift_func_int16_t_s_s((((safe_lshift_func_int16_t_s_u(((safe_div_func_int16_t_s_s(0x48ABL, (GROUP_DIVERGE(1, 1) ^ (~(l_105 <= (((p_1264->g_9[0] < ((((*l_134) = (safe_div_func_uint16_t_u_u((((safe_sub_func_uint8_t_u_u((safe_add_func_uint64_t_u_u(p_104, (safe_mod_func_int16_t_s_s((0x89C39DB4L & (l_105 < p_104)), GROUP_DIVERGE(0, 1))))), l_105)) == p_104) & 0x45L), p_104))) && 65535UL) & GROUP_DIVERGE(2, 1))) ^ l_105) | l_105)))))) == (-1L)), 2)) && 1L) | 1UL), 8)), (-3L))), 1UL)))) , (-1L)), p_1264->g_11)) , FAKE_DIVERGE(p_1264->global_0_offset, get_global_id(0), 10)) || p_1264->g_9[1]), p_1264->g_9[1])) , 0UL), 0x57L)), p_104))) , &p_1264->g_9[0]);
    return (**l_136);
}


__kernel void entry(__global ulong *result, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local int64_t l_comm_values[11];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 11; i++)
            l_comm_values[i] = 1;
    struct S2 c_1265;
    struct S2* p_1264 = &c_1265;
    struct S2 c_1266 = {
        0x22A3B3F3L, // p_1264->g_3
        0x488EB987L, // p_1264->g_4
        0x2FA9B64FL, // p_1264->g_5
        {0x6F5D870AL}, // p_1264->g_6
        {{0x2B058EFAL,7L,0x35B3847DL,(-1L),0x35B3847DL,7L,0x2B058EFAL,(-1L),0x0018D9DCL},{0x2B058EFAL,7L,0x35B3847DL,(-1L),0x35B3847DL,7L,0x2B058EFAL,(-1L),0x0018D9DCL},{0x2B058EFAL,7L,0x35B3847DL,(-1L),0x35B3847DL,7L,0x2B058EFAL,(-1L),0x0018D9DCL},{0x2B058EFAL,7L,0x35B3847DL,(-1L),0x35B3847DL,7L,0x2B058EFAL,(-1L),0x0018D9DCL},{0x2B058EFAL,7L,0x35B3847DL,(-1L),0x35B3847DL,7L,0x2B058EFAL,(-1L),0x0018D9DCL}}, // p_1264->g_7
        (-1L), // p_1264->g_8
        {(-4L),(-4L),(-4L),(-4L),(-4L),(-4L),(-4L),(-4L)}, // p_1264->g_9
        0x7B1A0949L, // p_1264->g_11
        0x5A5D7A23L, // p_1264->g_91
        0x7275L, // p_1264->g_135
        1UL, // p_1264->g_142
        {1UL}, // p_1264->g_146
        {0xB0DFAB60L}, // p_1264->g_147
        {0x208FD8E1L}, // p_1264->g_148
        {7UL}, // p_1264->g_149
        {{{{0UL}},{{0UL}}},{{{0UL}},{{0UL}}}}, // p_1264->g_150
        {3UL}, // p_1264->g_151
        {9UL}, // p_1264->g_152
        {{{0x1A89D357L},{0x1A89D357L},{0x1A89D357L},{0x1A89D357L},{0x1A89D357L},{0x1A89D357L},{0x1A89D357L},{0x1A89D357L},{0x1A89D357L},{0x1A89D357L}},{{0x1A89D357L},{0x1A89D357L},{0x1A89D357L},{0x1A89D357L},{0x1A89D357L},{0x1A89D357L},{0x1A89D357L},{0x1A89D357L},{0x1A89D357L},{0x1A89D357L}},{{0x1A89D357L},{0x1A89D357L},{0x1A89D357L},{0x1A89D357L},{0x1A89D357L},{0x1A89D357L},{0x1A89D357L},{0x1A89D357L},{0x1A89D357L},{0x1A89D357L}},{{0x1A89D357L},{0x1A89D357L},{0x1A89D357L},{0x1A89D357L},{0x1A89D357L},{0x1A89D357L},{0x1A89D357L},{0x1A89D357L},{0x1A89D357L},{0x1A89D357L}},{{0x1A89D357L},{0x1A89D357L},{0x1A89D357L},{0x1A89D357L},{0x1A89D357L},{0x1A89D357L},{0x1A89D357L},{0x1A89D357L},{0x1A89D357L},{0x1A89D357L}},{{0x1A89D357L},{0x1A89D357L},{0x1A89D357L},{0x1A89D357L},{0x1A89D357L},{0x1A89D357L},{0x1A89D357L},{0x1A89D357L},{0x1A89D357L},{0x1A89D357L}},{{0x1A89D357L},{0x1A89D357L},{0x1A89D357L},{0x1A89D357L},{0x1A89D357L},{0x1A89D357L},{0x1A89D357L},{0x1A89D357L},{0x1A89D357L},{0x1A89D357L}}}, // p_1264->g_153
        0x523D0AF2L, // p_1264->g_157
        (void*)0, // p_1264->g_159
        &p_1264->g_159, // p_1264->g_158
        {0UL}, // p_1264->g_172
        {4294967295UL}, // p_1264->g_173
        {4UL}, // p_1264->g_174
        {0x959E53F4L}, // p_1264->g_175
        {0x33E800ADL}, // p_1264->g_176
        {{{0x3798E47AL},{5UL},{4294967295UL},{0xE5E82803L},{4294967295UL},{5UL},{0x3798E47AL},{4294967295UL},{1UL},{0xA2289B71L}},{{0x3798E47AL},{5UL},{4294967295UL},{0xE5E82803L},{4294967295UL},{5UL},{0x3798E47AL},{4294967295UL},{1UL},{0xA2289B71L}},{{0x3798E47AL},{5UL},{4294967295UL},{0xE5E82803L},{4294967295UL},{5UL},{0x3798E47AL},{4294967295UL},{1UL},{0xA2289B71L}},{{0x3798E47AL},{5UL},{4294967295UL},{0xE5E82803L},{4294967295UL},{5UL},{0x3798E47AL},{4294967295UL},{1UL},{0xA2289B71L}},{{0x3798E47AL},{5UL},{4294967295UL},{0xE5E82803L},{4294967295UL},{5UL},{0x3798E47AL},{4294967295UL},{1UL},{0xA2289B71L}},{{0x3798E47AL},{5UL},{4294967295UL},{0xE5E82803L},{4294967295UL},{5UL},{0x3798E47AL},{4294967295UL},{1UL},{0xA2289B71L}},{{0x3798E47AL},{5UL},{4294967295UL},{0xE5E82803L},{4294967295UL},{5UL},{0x3798E47AL},{4294967295UL},{1UL},{0xA2289B71L}},{{0x3798E47AL},{5UL},{4294967295UL},{0xE5E82803L},{4294967295UL},{5UL},{0x3798E47AL},{4294967295UL},{1UL},{0xA2289B71L}},{{0x3798E47AL},{5UL},{4294967295UL},{0xE5E82803L},{4294967295UL},{5UL},{0x3798E47AL},{4294967295UL},{1UL},{0xA2289B71L}}}, // p_1264->g_177
        {{{0xF63262D6L},{0xF63262D6L}},{{0xF63262D6L},{0xF63262D6L}},{{0xF63262D6L},{0xF63262D6L}},{{0xF63262D6L},{0xF63262D6L}},{{0xF63262D6L},{0xF63262D6L}},{{0xF63262D6L},{0xF63262D6L}},{{0xF63262D6L},{0xF63262D6L}},{{0xF63262D6L},{0xF63262D6L}}}, // p_1264->g_178
        {0x9B7D3352L}, // p_1264->g_179
        {0UL}, // p_1264->g_180
        {0xDBE3FBEBL}, // p_1264->g_181
        {0x7468A156L}, // p_1264->g_182
        {{{4294967295UL},{4294967295UL}},{{4294967295UL},{4294967295UL}},{{4294967295UL},{4294967295UL}},{{4294967295UL},{4294967295UL}},{{4294967295UL},{4294967295UL}},{{4294967295UL},{4294967295UL}},{{4294967295UL},{4294967295UL}},{{4294967295UL},{4294967295UL}},{{4294967295UL},{4294967295UL}}}, // p_1264->g_183
        {{0x685B67D8L},{0x685B67D8L},{0x685B67D8L}}, // p_1264->g_184
        {4UL}, // p_1264->g_185
        {0x3D763EE6L}, // p_1264->g_186
        {0x40F4936DL}, // p_1264->g_187
        {3UL}, // p_1264->g_188
        {0xD82A544FL}, // p_1264->g_189
        {{{{1UL},{9UL},{0x6205CD23L},{4294967295UL}},{{1UL},{9UL},{0x6205CD23L},{4294967295UL}},{{1UL},{9UL},{0x6205CD23L},{4294967295UL}},{{1UL},{9UL},{0x6205CD23L},{4294967295UL}},{{1UL},{9UL},{0x6205CD23L},{4294967295UL}},{{1UL},{9UL},{0x6205CD23L},{4294967295UL}}},{{{1UL},{9UL},{0x6205CD23L},{4294967295UL}},{{1UL},{9UL},{0x6205CD23L},{4294967295UL}},{{1UL},{9UL},{0x6205CD23L},{4294967295UL}},{{1UL},{9UL},{0x6205CD23L},{4294967295UL}},{{1UL},{9UL},{0x6205CD23L},{4294967295UL}},{{1UL},{9UL},{0x6205CD23L},{4294967295UL}}},{{{1UL},{9UL},{0x6205CD23L},{4294967295UL}},{{1UL},{9UL},{0x6205CD23L},{4294967295UL}},{{1UL},{9UL},{0x6205CD23L},{4294967295UL}},{{1UL},{9UL},{0x6205CD23L},{4294967295UL}},{{1UL},{9UL},{0x6205CD23L},{4294967295UL}},{{1UL},{9UL},{0x6205CD23L},{4294967295UL}}},{{{1UL},{9UL},{0x6205CD23L},{4294967295UL}},{{1UL},{9UL},{0x6205CD23L},{4294967295UL}},{{1UL},{9UL},{0x6205CD23L},{4294967295UL}},{{1UL},{9UL},{0x6205CD23L},{4294967295UL}},{{1UL},{9UL},{0x6205CD23L},{4294967295UL}},{{1UL},{9UL},{0x6205CD23L},{4294967295UL}}},{{{1UL},{9UL},{0x6205CD23L},{4294967295UL}},{{1UL},{9UL},{0x6205CD23L},{4294967295UL}},{{1UL},{9UL},{0x6205CD23L},{4294967295UL}},{{1UL},{9UL},{0x6205CD23L},{4294967295UL}},{{1UL},{9UL},{0x6205CD23L},{4294967295UL}},{{1UL},{9UL},{0x6205CD23L},{4294967295UL}}},{{{1UL},{9UL},{0x6205CD23L},{4294967295UL}},{{1UL},{9UL},{0x6205CD23L},{4294967295UL}},{{1UL},{9UL},{0x6205CD23L},{4294967295UL}},{{1UL},{9UL},{0x6205CD23L},{4294967295UL}},{{1UL},{9UL},{0x6205CD23L},{4294967295UL}},{{1UL},{9UL},{0x6205CD23L},{4294967295UL}}},{{{1UL},{9UL},{0x6205CD23L},{4294967295UL}},{{1UL},{9UL},{0x6205CD23L},{4294967295UL}},{{1UL},{9UL},{0x6205CD23L},{4294967295UL}},{{1UL},{9UL},{0x6205CD23L},{4294967295UL}},{{1UL},{9UL},{0x6205CD23L},{4294967295UL}},{{1UL},{9UL},{0x6205CD23L},{4294967295UL}}},{{{1UL},{9UL},{0x6205CD23L},{4294967295UL}},{{1UL},{9UL},{0x6205CD23L},{4294967295UL}},{{1UL},{9UL},{0x6205CD23L},{4294967295UL}},{{1UL},{9UL},{0x6205CD23L},{4294967295UL}},{{1UL},{9UL},{0x6205CD23L},{4294967295UL}},{{1UL},{9UL},{0x6205CD23L},{4294967295UL}}},{{{1UL},{9UL},{0x6205CD23L},{4294967295UL}},{{1UL},{9UL},{0x6205CD23L},{4294967295UL}},{{1UL},{9UL},{0x6205CD23L},{4294967295UL}},{{1UL},{9UL},{0x6205CD23L},{4294967295UL}},{{1UL},{9UL},{0x6205CD23L},{4294967295UL}},{{1UL},{9UL},{0x6205CD23L},{4294967295UL}}}}, // p_1264->g_190
        {0UL}, // p_1264->g_191
        {{{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL}}}, // p_1264->g_192
        {{{0xF05488EFL},{0UL},{9UL},{0x6A3AA068L},{9UL},{0UL},{0xF05488EFL},{0xD280BCC4L}},{{0xF05488EFL},{0UL},{9UL},{0x6A3AA068L},{9UL},{0UL},{0xF05488EFL},{0xD280BCC4L}},{{0xF05488EFL},{0UL},{9UL},{0x6A3AA068L},{9UL},{0UL},{0xF05488EFL},{0xD280BCC4L}},{{0xF05488EFL},{0UL},{9UL},{0x6A3AA068L},{9UL},{0UL},{0xF05488EFL},{0xD280BCC4L}},{{0xF05488EFL},{0UL},{9UL},{0x6A3AA068L},{9UL},{0UL},{0xF05488EFL},{0xD280BCC4L}},{{0xF05488EFL},{0UL},{9UL},{0x6A3AA068L},{9UL},{0UL},{0xF05488EFL},{0xD280BCC4L}},{{0xF05488EFL},{0UL},{9UL},{0x6A3AA068L},{9UL},{0UL},{0xF05488EFL},{0xD280BCC4L}},{{0xF05488EFL},{0UL},{9UL},{0x6A3AA068L},{9UL},{0UL},{0xF05488EFL},{0xD280BCC4L}},{{0xF05488EFL},{0UL},{9UL},{0x6A3AA068L},{9UL},{0UL},{0xF05488EFL},{0xD280BCC4L}},{{0xF05488EFL},{0UL},{9UL},{0x6A3AA068L},{9UL},{0UL},{0xF05488EFL},{0xD280BCC4L}}}, // p_1264->g_193
        {6UL}, // p_1264->g_194
        {0UL}, // p_1264->g_195
        {4294967286UL}, // p_1264->g_196
        {{4294967289UL},{4294967289UL},{4294967289UL},{4294967289UL},{4294967289UL},{4294967289UL},{4294967289UL},{4294967289UL}}, // p_1264->g_197
        {0x9D8590BCL}, // p_1264->g_198
        {0xBA149CD5L}, // p_1264->g_199
        {4294967295UL}, // p_1264->g_200
        {4294967295UL}, // p_1264->g_201
        {0x0F7100B6L}, // p_1264->g_202
        {0x1C8EEA47L}, // p_1264->g_203
        {{0xCE4B1711L},{0xCE4B1711L},{0xCE4B1711L},{0xCE4B1711L},{0xCE4B1711L},{0xCE4B1711L},{0xCE4B1711L},{0xCE4B1711L},{0xCE4B1711L}}, // p_1264->g_204
        {0x01278691L}, // p_1264->g_205
        {1UL}, // p_1264->g_206
        {1UL}, // p_1264->g_207
        {0x697EC7B6L}, // p_1264->g_208
        {0xC4BFEEEDL}, // p_1264->g_209
        {{{1UL},{4294967290UL},{0x9236ECDBL},{4294967289UL},{4294967290UL},{4294967289UL},{0x9236ECDBL},{4294967290UL},{1UL},{1UL}},{{1UL},{4294967290UL},{0x9236ECDBL},{4294967289UL},{4294967290UL},{4294967289UL},{0x9236ECDBL},{4294967290UL},{1UL},{1UL}},{{1UL},{4294967290UL},{0x9236ECDBL},{4294967289UL},{4294967290UL},{4294967289UL},{0x9236ECDBL},{4294967290UL},{1UL},{1UL}},{{1UL},{4294967290UL},{0x9236ECDBL},{4294967289UL},{4294967290UL},{4294967289UL},{0x9236ECDBL},{4294967290UL},{1UL},{1UL}},{{1UL},{4294967290UL},{0x9236ECDBL},{4294967289UL},{4294967290UL},{4294967289UL},{0x9236ECDBL},{4294967290UL},{1UL},{1UL}},{{1UL},{4294967290UL},{0x9236ECDBL},{4294967289UL},{4294967290UL},{4294967289UL},{0x9236ECDBL},{4294967290UL},{1UL},{1UL}},{{1UL},{4294967290UL},{0x9236ECDBL},{4294967289UL},{4294967290UL},{4294967289UL},{0x9236ECDBL},{4294967290UL},{1UL},{1UL}},{{1UL},{4294967290UL},{0x9236ECDBL},{4294967289UL},{4294967290UL},{4294967289UL},{0x9236ECDBL},{4294967290UL},{1UL},{1UL}},{{1UL},{4294967290UL},{0x9236ECDBL},{4294967289UL},{4294967290UL},{4294967289UL},{0x9236ECDBL},{4294967290UL},{1UL},{1UL}}}, // p_1264->g_210
        {1UL}, // p_1264->g_211
        {0UL}, // p_1264->g_212
        {0xDD7475D9L}, // p_1264->g_213
        {0xC7A1140AL}, // p_1264->g_214
        {0x4975F8E4L}, // p_1264->g_215
        {0xC96602D5L}, // p_1264->g_216
        {1UL}, // p_1264->g_217
        {0x4D960969L}, // p_1264->g_218
        {4294967287UL}, // p_1264->g_219
        {9UL}, // p_1264->g_220
        {0x5B517A9BL}, // p_1264->g_221
        {4294967295UL}, // p_1264->g_222
        {0xA18CC621L}, // p_1264->g_223
        {0x63500523L}, // p_1264->g_224
        {4294967295UL}, // p_1264->g_225
        {0x9674B016L}, // p_1264->g_226
        {4294967295UL}, // p_1264->g_227
        {8UL}, // p_1264->g_228
        {{{{0UL},{0xD8ECEE31L},{0x6D627CF3L},{0xD8ECEE31L},{0UL},{0UL},{0xD8ECEE31L}}},{{{0UL},{0xD8ECEE31L},{0x6D627CF3L},{0xD8ECEE31L},{0UL},{0UL},{0xD8ECEE31L}}},{{{0UL},{0xD8ECEE31L},{0x6D627CF3L},{0xD8ECEE31L},{0UL},{0UL},{0xD8ECEE31L}}},{{{0UL},{0xD8ECEE31L},{0x6D627CF3L},{0xD8ECEE31L},{0UL},{0UL},{0xD8ECEE31L}}},{{{0UL},{0xD8ECEE31L},{0x6D627CF3L},{0xD8ECEE31L},{0UL},{0UL},{0xD8ECEE31L}}},{{{0UL},{0xD8ECEE31L},{0x6D627CF3L},{0xD8ECEE31L},{0UL},{0UL},{0xD8ECEE31L}}},{{{0UL},{0xD8ECEE31L},{0x6D627CF3L},{0xD8ECEE31L},{0UL},{0UL},{0xD8ECEE31L}}},{{{0UL},{0xD8ECEE31L},{0x6D627CF3L},{0xD8ECEE31L},{0UL},{0UL},{0xD8ECEE31L}}},{{{0UL},{0xD8ECEE31L},{0x6D627CF3L},{0xD8ECEE31L},{0UL},{0UL},{0xD8ECEE31L}}}}, // p_1264->g_258
        &p_1264->g_258[8][0][4], // p_1264->g_257
        0x4BL, // p_1264->g_288
        0x25L, // p_1264->g_313
        0xF8BDL, // p_1264->g_324
        &p_1264->g_324, // p_1264->g_323
        &p_1264->g_157, // p_1264->g_340
        {{&p_1264->g_340},{&p_1264->g_340},{&p_1264->g_340},{&p_1264->g_340},{&p_1264->g_340},{&p_1264->g_340},{&p_1264->g_340}}, // p_1264->g_339
        4294967289UL, // p_1264->g_345
        {{{0x02DA7137L,0x68C4E4E6L,0x53541622L},{0x02DA7137L,0x68C4E4E6L,0x53541622L},{0x02DA7137L,0x68C4E4E6L,0x53541622L},{0x02DA7137L,0x68C4E4E6L,0x53541622L},{0x02DA7137L,0x68C4E4E6L,0x53541622L},{0x02DA7137L,0x68C4E4E6L,0x53541622L},{0x02DA7137L,0x68C4E4E6L,0x53541622L}},{{0x02DA7137L,0x68C4E4E6L,0x53541622L},{0x02DA7137L,0x68C4E4E6L,0x53541622L},{0x02DA7137L,0x68C4E4E6L,0x53541622L},{0x02DA7137L,0x68C4E4E6L,0x53541622L},{0x02DA7137L,0x68C4E4E6L,0x53541622L},{0x02DA7137L,0x68C4E4E6L,0x53541622L},{0x02DA7137L,0x68C4E4E6L,0x53541622L}},{{0x02DA7137L,0x68C4E4E6L,0x53541622L},{0x02DA7137L,0x68C4E4E6L,0x53541622L},{0x02DA7137L,0x68C4E4E6L,0x53541622L},{0x02DA7137L,0x68C4E4E6L,0x53541622L},{0x02DA7137L,0x68C4E4E6L,0x53541622L},{0x02DA7137L,0x68C4E4E6L,0x53541622L},{0x02DA7137L,0x68C4E4E6L,0x53541622L}},{{0x02DA7137L,0x68C4E4E6L,0x53541622L},{0x02DA7137L,0x68C4E4E6L,0x53541622L},{0x02DA7137L,0x68C4E4E6L,0x53541622L},{0x02DA7137L,0x68C4E4E6L,0x53541622L},{0x02DA7137L,0x68C4E4E6L,0x53541622L},{0x02DA7137L,0x68C4E4E6L,0x53541622L},{0x02DA7137L,0x68C4E4E6L,0x53541622L}},{{0x02DA7137L,0x68C4E4E6L,0x53541622L},{0x02DA7137L,0x68C4E4E6L,0x53541622L},{0x02DA7137L,0x68C4E4E6L,0x53541622L},{0x02DA7137L,0x68C4E4E6L,0x53541622L},{0x02DA7137L,0x68C4E4E6L,0x53541622L},{0x02DA7137L,0x68C4E4E6L,0x53541622L},{0x02DA7137L,0x68C4E4E6L,0x53541622L}},{{0x02DA7137L,0x68C4E4E6L,0x53541622L},{0x02DA7137L,0x68C4E4E6L,0x53541622L},{0x02DA7137L,0x68C4E4E6L,0x53541622L},{0x02DA7137L,0x68C4E4E6L,0x53541622L},{0x02DA7137L,0x68C4E4E6L,0x53541622L},{0x02DA7137L,0x68C4E4E6L,0x53541622L},{0x02DA7137L,0x68C4E4E6L,0x53541622L}},{{0x02DA7137L,0x68C4E4E6L,0x53541622L},{0x02DA7137L,0x68C4E4E6L,0x53541622L},{0x02DA7137L,0x68C4E4E6L,0x53541622L},{0x02DA7137L,0x68C4E4E6L,0x53541622L},{0x02DA7137L,0x68C4E4E6L,0x53541622L},{0x02DA7137L,0x68C4E4E6L,0x53541622L},{0x02DA7137L,0x68C4E4E6L,0x53541622L}},{{0x02DA7137L,0x68C4E4E6L,0x53541622L},{0x02DA7137L,0x68C4E4E6L,0x53541622L},{0x02DA7137L,0x68C4E4E6L,0x53541622L},{0x02DA7137L,0x68C4E4E6L,0x53541622L},{0x02DA7137L,0x68C4E4E6L,0x53541622L},{0x02DA7137L,0x68C4E4E6L,0x53541622L},{0x02DA7137L,0x68C4E4E6L,0x53541622L}},{{0x02DA7137L,0x68C4E4E6L,0x53541622L},{0x02DA7137L,0x68C4E4E6L,0x53541622L},{0x02DA7137L,0x68C4E4E6L,0x53541622L},{0x02DA7137L,0x68C4E4E6L,0x53541622L},{0x02DA7137L,0x68C4E4E6L,0x53541622L},{0x02DA7137L,0x68C4E4E6L,0x53541622L},{0x02DA7137L,0x68C4E4E6L,0x53541622L}},{{0x02DA7137L,0x68C4E4E6L,0x53541622L},{0x02DA7137L,0x68C4E4E6L,0x53541622L},{0x02DA7137L,0x68C4E4E6L,0x53541622L},{0x02DA7137L,0x68C4E4E6L,0x53541622L},{0x02DA7137L,0x68C4E4E6L,0x53541622L},{0x02DA7137L,0x68C4E4E6L,0x53541622L},{0x02DA7137L,0x68C4E4E6L,0x53541622L}}}, // p_1264->g_353
        0x0576873FL, // p_1264->g_357
        {0UL}, // p_1264->g_364
        {{0x6A514F41L},{0xA1E54621L},{0x6A514F41L},{0x6A514F41L},{0xA1E54621L},{0x6A514F41L},{0x6A514F41L},{0xA1E54621L},{0x6A514F41L},{0x6A514F41L}}, // p_1264->g_366
        {0xC672D693L}, // p_1264->g_368
        {0x5E016AE7L}, // p_1264->g_369
        {&p_1264->g_368,&p_1264->g_368,&p_1264->g_368,&p_1264->g_368,&p_1264->g_368,&p_1264->g_368,&p_1264->g_368}, // p_1264->g_367
        0x68L, // p_1264->g_377
        0x50EBL, // p_1264->g_428
        0L, // p_1264->g_429
        0L, // p_1264->g_430
        (-1L), // p_1264->g_431
        1L, // p_1264->g_432
        {(-1L),(-1L)}, // p_1264->g_433
        0x0670L, // p_1264->g_434
        0x4AA3L, // p_1264->g_435
        1L, // p_1264->g_436
        (-1L), // p_1264->g_437
        0L, // p_1264->g_438
        {{&p_1264->g_435,&p_1264->g_429,(void*)0,(void*)0,(void*)0,&p_1264->g_429,&p_1264->g_435,(void*)0,(void*)0},{&p_1264->g_435,&p_1264->g_429,(void*)0,(void*)0,(void*)0,&p_1264->g_429,&p_1264->g_435,(void*)0,(void*)0},{&p_1264->g_435,&p_1264->g_429,(void*)0,(void*)0,(void*)0,&p_1264->g_429,&p_1264->g_435,(void*)0,(void*)0},{&p_1264->g_435,&p_1264->g_429,(void*)0,(void*)0,(void*)0,&p_1264->g_429,&p_1264->g_435,(void*)0,(void*)0},{&p_1264->g_435,&p_1264->g_429,(void*)0,(void*)0,(void*)0,&p_1264->g_429,&p_1264->g_435,(void*)0,(void*)0},{&p_1264->g_435,&p_1264->g_429,(void*)0,(void*)0,(void*)0,&p_1264->g_429,&p_1264->g_435,(void*)0,(void*)0},{&p_1264->g_435,&p_1264->g_429,(void*)0,(void*)0,(void*)0,&p_1264->g_429,&p_1264->g_435,(void*)0,(void*)0},{&p_1264->g_435,&p_1264->g_429,(void*)0,(void*)0,(void*)0,&p_1264->g_429,&p_1264->g_435,(void*)0,(void*)0},{&p_1264->g_435,&p_1264->g_429,(void*)0,(void*)0,(void*)0,&p_1264->g_429,&p_1264->g_435,(void*)0,(void*)0}}, // p_1264->g_427
        &p_1264->g_427[8][8], // p_1264->g_426
        0x5D08L, // p_1264->g_454
        (-3L), // p_1264->g_456
        (-1L), // p_1264->g_505
        1UL, // p_1264->g_506
        &p_1264->g_4, // p_1264->g_520
        (void*)0, // p_1264->g_554
        0x897F5994L, // p_1264->g_564
        {{{4294967288UL},{0UL}},{{4294967288UL},{0UL}},{{4294967288UL},{0UL}},{{4294967288UL},{0UL}},{{4294967288UL},{0UL}}}, // p_1264->g_617
        {0x438B25A9L}, // p_1264->g_619
        {&p_1264->g_619,&p_1264->g_619,&p_1264->g_619,&p_1264->g_619,&p_1264->g_619,&p_1264->g_619}, // p_1264->g_618
        {4294967294UL,4294967294UL,4294967294UL,4294967294UL,4294967294UL,4294967294UL,4294967294UL}, // p_1264->g_620
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_1264->g_673
        (-4L), // p_1264->g_704
        {0x72FBL,0x030B78A892008229L,0L,1UL,0x1189C6FB31F9AFB3L,0x25ABCC8AL}, // p_1264->g_709
        0L, // p_1264->g_724
        0L, // p_1264->g_734
        {{(-1L),0x7551E6D8L,0x5E06A0D0L,0x1EC01E48L,1L,1L,0x1EC01E48L,0x5E06A0D0L,0x7551E6D8L},{(-1L),0x7551E6D8L,0x5E06A0D0L,0x1EC01E48L,1L,1L,0x1EC01E48L,0x5E06A0D0L,0x7551E6D8L},{(-1L),0x7551E6D8L,0x5E06A0D0L,0x1EC01E48L,1L,1L,0x1EC01E48L,0x5E06A0D0L,0x7551E6D8L},{(-1L),0x7551E6D8L,0x5E06A0D0L,0x1EC01E48L,1L,1L,0x1EC01E48L,0x5E06A0D0L,0x7551E6D8L},{(-1L),0x7551E6D8L,0x5E06A0D0L,0x1EC01E48L,1L,1L,0x1EC01E48L,0x5E06A0D0L,0x7551E6D8L},{(-1L),0x7551E6D8L,0x5E06A0D0L,0x1EC01E48L,1L,1L,0x1EC01E48L,0x5E06A0D0L,0x7551E6D8L},{(-1L),0x7551E6D8L,0x5E06A0D0L,0x1EC01E48L,1L,1L,0x1EC01E48L,0x5E06A0D0L,0x7551E6D8L},{(-1L),0x7551E6D8L,0x5E06A0D0L,0x1EC01E48L,1L,1L,0x1EC01E48L,0x5E06A0D0L,0x7551E6D8L},{(-1L),0x7551E6D8L,0x5E06A0D0L,0x1EC01E48L,1L,1L,0x1EC01E48L,0x5E06A0D0L,0x7551E6D8L},{(-1L),0x7551E6D8L,0x5E06A0D0L,0x1EC01E48L,1L,1L,0x1EC01E48L,0x5E06A0D0L,0x7551E6D8L}}, // p_1264->g_786
        4UL, // p_1264->g_787
        0xCA25070EL, // p_1264->g_845
        (void*)0, // p_1264->g_878
        {0xB9DF94BCL}, // p_1264->g_1022
        1UL, // p_1264->g_1024
        &p_1264->g_709, // p_1264->g_1047
        {0xF4D7L,0L,2L,1UL,0x419A022D8ACA8B3AL,0x26FF4A63L}, // p_1264->g_1094
        {{&p_1264->g_1094,&p_1264->g_1094,(void*)0,&p_1264->g_1094,&p_1264->g_1094,&p_1264->g_1094,&p_1264->g_1094},{&p_1264->g_1094,&p_1264->g_1094,(void*)0,&p_1264->g_1094,&p_1264->g_1094,&p_1264->g_1094,&p_1264->g_1094},{&p_1264->g_1094,&p_1264->g_1094,(void*)0,&p_1264->g_1094,&p_1264->g_1094,&p_1264->g_1094,&p_1264->g_1094},{&p_1264->g_1094,&p_1264->g_1094,(void*)0,&p_1264->g_1094,&p_1264->g_1094,&p_1264->g_1094,&p_1264->g_1094},{&p_1264->g_1094,&p_1264->g_1094,(void*)0,&p_1264->g_1094,&p_1264->g_1094,&p_1264->g_1094,&p_1264->g_1094}}, // p_1264->g_1095
        {{{{0x77CCL,0x72B0C192ED2E25B0L,-10L,65527UL,0xAA9C570A110B1B0CL,0x74899E06L},{0x77CCL,0x72B0C192ED2E25B0L,-10L,65527UL,0xAA9C570A110B1B0CL,0x74899E06L},{65535UL,0x4FF79091A479ACB7L,-4L,1UL,1UL,-1L},{0UL,0x5F07CDF4C42C9C87L,0x3A2CE8C7D2DECF78L,0xD453L,0xFF2CF021DAB567ACL,0x59B8DCFAL},{65535UL,0x212A0360EDCFB30EL,9L,7UL,4UL,4L},{0xB37AL,0x14A44E6403FFFB5BL,5L,0UL,0xD7382AA4AF8DB530L,9L},{0UL,1L,0x1DB0218B75A0AAADL,0xAFB1L,0x038A1162A48B6EA0L,0x7BF58077L},{65535UL,8L,1L,0xD170L,1UL,0x1568B8ABL}},{{0x77CCL,0x72B0C192ED2E25B0L,-10L,65527UL,0xAA9C570A110B1B0CL,0x74899E06L},{0x77CCL,0x72B0C192ED2E25B0L,-10L,65527UL,0xAA9C570A110B1B0CL,0x74899E06L},{65535UL,0x4FF79091A479ACB7L,-4L,1UL,1UL,-1L},{0UL,0x5F07CDF4C42C9C87L,0x3A2CE8C7D2DECF78L,0xD453L,0xFF2CF021DAB567ACL,0x59B8DCFAL},{65535UL,0x212A0360EDCFB30EL,9L,7UL,4UL,4L},{0xB37AL,0x14A44E6403FFFB5BL,5L,0UL,0xD7382AA4AF8DB530L,9L},{0UL,1L,0x1DB0218B75A0AAADL,0xAFB1L,0x038A1162A48B6EA0L,0x7BF58077L},{65535UL,8L,1L,0xD170L,1UL,0x1568B8ABL}},{{0x77CCL,0x72B0C192ED2E25B0L,-10L,65527UL,0xAA9C570A110B1B0CL,0x74899E06L},{0x77CCL,0x72B0C192ED2E25B0L,-10L,65527UL,0xAA9C570A110B1B0CL,0x74899E06L},{65535UL,0x4FF79091A479ACB7L,-4L,1UL,1UL,-1L},{0UL,0x5F07CDF4C42C9C87L,0x3A2CE8C7D2DECF78L,0xD453L,0xFF2CF021DAB567ACL,0x59B8DCFAL},{65535UL,0x212A0360EDCFB30EL,9L,7UL,4UL,4L},{0xB37AL,0x14A44E6403FFFB5BL,5L,0UL,0xD7382AA4AF8DB530L,9L},{0UL,1L,0x1DB0218B75A0AAADL,0xAFB1L,0x038A1162A48B6EA0L,0x7BF58077L},{65535UL,8L,1L,0xD170L,1UL,0x1568B8ABL}}},{{{0x77CCL,0x72B0C192ED2E25B0L,-10L,65527UL,0xAA9C570A110B1B0CL,0x74899E06L},{0x77CCL,0x72B0C192ED2E25B0L,-10L,65527UL,0xAA9C570A110B1B0CL,0x74899E06L},{65535UL,0x4FF79091A479ACB7L,-4L,1UL,1UL,-1L},{0UL,0x5F07CDF4C42C9C87L,0x3A2CE8C7D2DECF78L,0xD453L,0xFF2CF021DAB567ACL,0x59B8DCFAL},{65535UL,0x212A0360EDCFB30EL,9L,7UL,4UL,4L},{0xB37AL,0x14A44E6403FFFB5BL,5L,0UL,0xD7382AA4AF8DB530L,9L},{0UL,1L,0x1DB0218B75A0AAADL,0xAFB1L,0x038A1162A48B6EA0L,0x7BF58077L},{65535UL,8L,1L,0xD170L,1UL,0x1568B8ABL}},{{0x77CCL,0x72B0C192ED2E25B0L,-10L,65527UL,0xAA9C570A110B1B0CL,0x74899E06L},{0x77CCL,0x72B0C192ED2E25B0L,-10L,65527UL,0xAA9C570A110B1B0CL,0x74899E06L},{65535UL,0x4FF79091A479ACB7L,-4L,1UL,1UL,-1L},{0UL,0x5F07CDF4C42C9C87L,0x3A2CE8C7D2DECF78L,0xD453L,0xFF2CF021DAB567ACL,0x59B8DCFAL},{65535UL,0x212A0360EDCFB30EL,9L,7UL,4UL,4L},{0xB37AL,0x14A44E6403FFFB5BL,5L,0UL,0xD7382AA4AF8DB530L,9L},{0UL,1L,0x1DB0218B75A0AAADL,0xAFB1L,0x038A1162A48B6EA0L,0x7BF58077L},{65535UL,8L,1L,0xD170L,1UL,0x1568B8ABL}},{{0x77CCL,0x72B0C192ED2E25B0L,-10L,65527UL,0xAA9C570A110B1B0CL,0x74899E06L},{0x77CCL,0x72B0C192ED2E25B0L,-10L,65527UL,0xAA9C570A110B1B0CL,0x74899E06L},{65535UL,0x4FF79091A479ACB7L,-4L,1UL,1UL,-1L},{0UL,0x5F07CDF4C42C9C87L,0x3A2CE8C7D2DECF78L,0xD453L,0xFF2CF021DAB567ACL,0x59B8DCFAL},{65535UL,0x212A0360EDCFB30EL,9L,7UL,4UL,4L},{0xB37AL,0x14A44E6403FFFB5BL,5L,0UL,0xD7382AA4AF8DB530L,9L},{0UL,1L,0x1DB0218B75A0AAADL,0xAFB1L,0x038A1162A48B6EA0L,0x7BF58077L},{65535UL,8L,1L,0xD170L,1UL,0x1568B8ABL}}},{{{0x77CCL,0x72B0C192ED2E25B0L,-10L,65527UL,0xAA9C570A110B1B0CL,0x74899E06L},{0x77CCL,0x72B0C192ED2E25B0L,-10L,65527UL,0xAA9C570A110B1B0CL,0x74899E06L},{65535UL,0x4FF79091A479ACB7L,-4L,1UL,1UL,-1L},{0UL,0x5F07CDF4C42C9C87L,0x3A2CE8C7D2DECF78L,0xD453L,0xFF2CF021DAB567ACL,0x59B8DCFAL},{65535UL,0x212A0360EDCFB30EL,9L,7UL,4UL,4L},{0xB37AL,0x14A44E6403FFFB5BL,5L,0UL,0xD7382AA4AF8DB530L,9L},{0UL,1L,0x1DB0218B75A0AAADL,0xAFB1L,0x038A1162A48B6EA0L,0x7BF58077L},{65535UL,8L,1L,0xD170L,1UL,0x1568B8ABL}},{{0x77CCL,0x72B0C192ED2E25B0L,-10L,65527UL,0xAA9C570A110B1B0CL,0x74899E06L},{0x77CCL,0x72B0C192ED2E25B0L,-10L,65527UL,0xAA9C570A110B1B0CL,0x74899E06L},{65535UL,0x4FF79091A479ACB7L,-4L,1UL,1UL,-1L},{0UL,0x5F07CDF4C42C9C87L,0x3A2CE8C7D2DECF78L,0xD453L,0xFF2CF021DAB567ACL,0x59B8DCFAL},{65535UL,0x212A0360EDCFB30EL,9L,7UL,4UL,4L},{0xB37AL,0x14A44E6403FFFB5BL,5L,0UL,0xD7382AA4AF8DB530L,9L},{0UL,1L,0x1DB0218B75A0AAADL,0xAFB1L,0x038A1162A48B6EA0L,0x7BF58077L},{65535UL,8L,1L,0xD170L,1UL,0x1568B8ABL}},{{0x77CCL,0x72B0C192ED2E25B0L,-10L,65527UL,0xAA9C570A110B1B0CL,0x74899E06L},{0x77CCL,0x72B0C192ED2E25B0L,-10L,65527UL,0xAA9C570A110B1B0CL,0x74899E06L},{65535UL,0x4FF79091A479ACB7L,-4L,1UL,1UL,-1L},{0UL,0x5F07CDF4C42C9C87L,0x3A2CE8C7D2DECF78L,0xD453L,0xFF2CF021DAB567ACL,0x59B8DCFAL},{65535UL,0x212A0360EDCFB30EL,9L,7UL,4UL,4L},{0xB37AL,0x14A44E6403FFFB5BL,5L,0UL,0xD7382AA4AF8DB530L,9L},{0UL,1L,0x1DB0218B75A0AAADL,0xAFB1L,0x038A1162A48B6EA0L,0x7BF58077L},{65535UL,8L,1L,0xD170L,1UL,0x1568B8ABL}}}}, // p_1264->g_1119
        {(void*)0,(void*)0,(void*)0}, // p_1264->g_1120
        {2UL,0x392DD2BC660730FBL,0x4AD039CADCF01CD5L,0xDBA0L,0xFDCD4E927F36D859L,0x58DEC339L}, // p_1264->g_1122
        4294967295UL, // p_1264->g_1137
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_1264->g_1147
        {0xF8EEL,0x4E6CA6A73CC08A06L,1L,0x5E0BL,0UL,0x3EB04CE8L}, // p_1264->g_1242
        sequence_input[get_global_id(0)], // p_1264->global_0_offset
        sequence_input[get_global_id(1)], // p_1264->global_1_offset
        sequence_input[get_global_id(2)], // p_1264->global_2_offset
        sequence_input[get_local_id(0)], // p_1264->local_0_offset
        sequence_input[get_local_id(1)], // p_1264->local_1_offset
        sequence_input[get_local_id(2)], // p_1264->local_2_offset
        sequence_input[get_group_id(0)], // p_1264->group_0_offset
        sequence_input[get_group_id(1)], // p_1264->group_1_offset
        sequence_input[get_group_id(2)], // p_1264->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 11)), permutations[0][get_linear_local_id()])), // p_1264->tid
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_1265 = c_1266;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1264);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1264->g_3, "p_1264->g_3", print_hash_value);
    transparent_crc(p_1264->g_4, "p_1264->g_4", print_hash_value);
    transparent_crc(p_1264->g_5, "p_1264->g_5", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1264->g_6[i], "p_1264->g_6[i]", print_hash_value);

    }
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_1264->g_7[i][j], "p_1264->g_7[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1264->g_8, "p_1264->g_8", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1264->g_9[i], "p_1264->g_9[i]", print_hash_value);

    }
    transparent_crc(p_1264->g_11, "p_1264->g_11", print_hash_value);
    transparent_crc(p_1264->g_91, "p_1264->g_91", print_hash_value);
    transparent_crc(p_1264->g_135, "p_1264->g_135", print_hash_value);
    transparent_crc(p_1264->g_142, "p_1264->g_142", print_hash_value);
    transparent_crc(p_1264->g_146.f0, "p_1264->g_146.f0", print_hash_value);
    transparent_crc(p_1264->g_147.f0, "p_1264->g_147.f0", print_hash_value);
    transparent_crc(p_1264->g_148.f0, "p_1264->g_148.f0", print_hash_value);
    transparent_crc(p_1264->g_149.f0, "p_1264->g_149.f0", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 1; k++)
            {
                transparent_crc(p_1264->g_150[i][j][k].f0, "p_1264->g_150[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_1264->g_151.f0, "p_1264->g_151.f0", print_hash_value);
    transparent_crc(p_1264->g_152.f0, "p_1264->g_152.f0", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_1264->g_153[i][j].f0, "p_1264->g_153[i][j].f0", print_hash_value);

        }
    }
    transparent_crc(p_1264->g_157, "p_1264->g_157", print_hash_value);
    transparent_crc(p_1264->g_172.f0, "p_1264->g_172.f0", print_hash_value);
    transparent_crc(p_1264->g_173.f0, "p_1264->g_173.f0", print_hash_value);
    transparent_crc(p_1264->g_174.f0, "p_1264->g_174.f0", print_hash_value);
    transparent_crc(p_1264->g_175.f0, "p_1264->g_175.f0", print_hash_value);
    transparent_crc(p_1264->g_176.f0, "p_1264->g_176.f0", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_1264->g_177[i][j].f0, "p_1264->g_177[i][j].f0", print_hash_value);

        }
    }
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 2; j++)
        {
            transparent_crc(p_1264->g_178[i][j].f0, "p_1264->g_178[i][j].f0", print_hash_value);

        }
    }
    transparent_crc(p_1264->g_179.f0, "p_1264->g_179.f0", print_hash_value);
    transparent_crc(p_1264->g_180.f0, "p_1264->g_180.f0", print_hash_value);
    transparent_crc(p_1264->g_181.f0, "p_1264->g_181.f0", print_hash_value);
    transparent_crc(p_1264->g_182.f0, "p_1264->g_182.f0", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 2; j++)
        {
            transparent_crc(p_1264->g_183[i][j].f0, "p_1264->g_183[i][j].f0", print_hash_value);

        }
    }
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_1264->g_184[i].f0, "p_1264->g_184[i].f0", print_hash_value);

    }
    transparent_crc(p_1264->g_185.f0, "p_1264->g_185.f0", print_hash_value);
    transparent_crc(p_1264->g_186.f0, "p_1264->g_186.f0", print_hash_value);
    transparent_crc(p_1264->g_187.f0, "p_1264->g_187.f0", print_hash_value);
    transparent_crc(p_1264->g_188.f0, "p_1264->g_188.f0", print_hash_value);
    transparent_crc(p_1264->g_189.f0, "p_1264->g_189.f0", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 6; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_1264->g_190[i][j][k].f0, "p_1264->g_190[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_1264->g_191.f0, "p_1264->g_191.f0", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 3; j++)
        {
            transparent_crc(p_1264->g_192[i][j].f0, "p_1264->g_192[i][j].f0", print_hash_value);

        }
    }
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_1264->g_193[i][j].f0, "p_1264->g_193[i][j].f0", print_hash_value);

        }
    }
    transparent_crc(p_1264->g_194.f0, "p_1264->g_194.f0", print_hash_value);
    transparent_crc(p_1264->g_195.f0, "p_1264->g_195.f0", print_hash_value);
    transparent_crc(p_1264->g_196.f0, "p_1264->g_196.f0", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1264->g_197[i].f0, "p_1264->g_197[i].f0", print_hash_value);

    }
    transparent_crc(p_1264->g_198.f0, "p_1264->g_198.f0", print_hash_value);
    transparent_crc(p_1264->g_199.f0, "p_1264->g_199.f0", print_hash_value);
    transparent_crc(p_1264->g_200.f0, "p_1264->g_200.f0", print_hash_value);
    transparent_crc(p_1264->g_201.f0, "p_1264->g_201.f0", print_hash_value);
    transparent_crc(p_1264->g_202.f0, "p_1264->g_202.f0", print_hash_value);
    transparent_crc(p_1264->g_203.f0, "p_1264->g_203.f0", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1264->g_204[i].f0, "p_1264->g_204[i].f0", print_hash_value);

    }
    transparent_crc(p_1264->g_205.f0, "p_1264->g_205.f0", print_hash_value);
    transparent_crc(p_1264->g_206.f0, "p_1264->g_206.f0", print_hash_value);
    transparent_crc(p_1264->g_207.f0, "p_1264->g_207.f0", print_hash_value);
    transparent_crc(p_1264->g_208.f0, "p_1264->g_208.f0", print_hash_value);
    transparent_crc(p_1264->g_209.f0, "p_1264->g_209.f0", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_1264->g_210[i][j].f0, "p_1264->g_210[i][j].f0", print_hash_value);

        }
    }
    transparent_crc(p_1264->g_211.f0, "p_1264->g_211.f0", print_hash_value);
    transparent_crc(p_1264->g_212.f0, "p_1264->g_212.f0", print_hash_value);
    transparent_crc(p_1264->g_213.f0, "p_1264->g_213.f0", print_hash_value);
    transparent_crc(p_1264->g_214.f0, "p_1264->g_214.f0", print_hash_value);
    transparent_crc(p_1264->g_215.f0, "p_1264->g_215.f0", print_hash_value);
    transparent_crc(p_1264->g_216.f0, "p_1264->g_216.f0", print_hash_value);
    transparent_crc(p_1264->g_217.f0, "p_1264->g_217.f0", print_hash_value);
    transparent_crc(p_1264->g_218.f0, "p_1264->g_218.f0", print_hash_value);
    transparent_crc(p_1264->g_219.f0, "p_1264->g_219.f0", print_hash_value);
    transparent_crc(p_1264->g_220.f0, "p_1264->g_220.f0", print_hash_value);
    transparent_crc(p_1264->g_221.f0, "p_1264->g_221.f0", print_hash_value);
    transparent_crc(p_1264->g_222.f0, "p_1264->g_222.f0", print_hash_value);
    transparent_crc(p_1264->g_223.f0, "p_1264->g_223.f0", print_hash_value);
    transparent_crc(p_1264->g_224.f0, "p_1264->g_224.f0", print_hash_value);
    transparent_crc(p_1264->g_225.f0, "p_1264->g_225.f0", print_hash_value);
    transparent_crc(p_1264->g_226.f0, "p_1264->g_226.f0", print_hash_value);
    transparent_crc(p_1264->g_227.f0, "p_1264->g_227.f0", print_hash_value);
    transparent_crc(p_1264->g_228.f0, "p_1264->g_228.f0", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 7; k++)
            {
                transparent_crc(p_1264->g_258[i][j][k].f0, "p_1264->g_258[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_1264->g_288, "p_1264->g_288", print_hash_value);
    transparent_crc(p_1264->g_313, "p_1264->g_313", print_hash_value);
    transparent_crc(p_1264->g_324, "p_1264->g_324", print_hash_value);
    transparent_crc(p_1264->g_345, "p_1264->g_345", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 7; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_1264->g_353[i][j][k], "p_1264->g_353[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1264->g_357, "p_1264->g_357", print_hash_value);
    transparent_crc(p_1264->g_364.f0, "p_1264->g_364.f0", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1264->g_366[i].f0, "p_1264->g_366[i].f0", print_hash_value);

    }
    transparent_crc(p_1264->g_368.f0, "p_1264->g_368.f0", print_hash_value);
    transparent_crc(p_1264->g_369.f0, "p_1264->g_369.f0", print_hash_value);
    transparent_crc(p_1264->g_377, "p_1264->g_377", print_hash_value);
    transparent_crc(p_1264->g_428, "p_1264->g_428", print_hash_value);
    transparent_crc(p_1264->g_429, "p_1264->g_429", print_hash_value);
    transparent_crc(p_1264->g_430, "p_1264->g_430", print_hash_value);
    transparent_crc(p_1264->g_431, "p_1264->g_431", print_hash_value);
    transparent_crc(p_1264->g_432, "p_1264->g_432", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1264->g_433[i], "p_1264->g_433[i]", print_hash_value);

    }
    transparent_crc(p_1264->g_434, "p_1264->g_434", print_hash_value);
    transparent_crc(p_1264->g_435, "p_1264->g_435", print_hash_value);
    transparent_crc(p_1264->g_436, "p_1264->g_436", print_hash_value);
    transparent_crc(p_1264->g_437, "p_1264->g_437", print_hash_value);
    transparent_crc(p_1264->g_438, "p_1264->g_438", print_hash_value);
    transparent_crc(p_1264->g_454, "p_1264->g_454", print_hash_value);
    transparent_crc(p_1264->g_456, "p_1264->g_456", print_hash_value);
    transparent_crc(p_1264->g_505, "p_1264->g_505", print_hash_value);
    transparent_crc(p_1264->g_506, "p_1264->g_506", print_hash_value);
    transparent_crc(p_1264->g_564, "p_1264->g_564", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 2; j++)
        {
            transparent_crc(p_1264->g_617[i][j].f0, "p_1264->g_617[i][j].f0", print_hash_value);

        }
    }
    transparent_crc(p_1264->g_619.f0, "p_1264->g_619.f0", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1264->g_620[i], "p_1264->g_620[i]", print_hash_value);

    }
    transparent_crc(p_1264->g_704, "p_1264->g_704", print_hash_value);
    transparent_crc(p_1264->g_709.f0, "p_1264->g_709.f0", print_hash_value);
    transparent_crc(p_1264->g_709.f1, "p_1264->g_709.f1", print_hash_value);
    transparent_crc(p_1264->g_709.f2, "p_1264->g_709.f2", print_hash_value);
    transparent_crc(p_1264->g_709.f3, "p_1264->g_709.f3", print_hash_value);
    transparent_crc(p_1264->g_709.f4, "p_1264->g_709.f4", print_hash_value);
    transparent_crc(p_1264->g_709.f5, "p_1264->g_709.f5", print_hash_value);
    transparent_crc(p_1264->g_724, "p_1264->g_724", print_hash_value);
    transparent_crc(p_1264->g_734, "p_1264->g_734", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_1264->g_786[i][j], "p_1264->g_786[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1264->g_787, "p_1264->g_787", print_hash_value);
    transparent_crc(p_1264->g_845, "p_1264->g_845", print_hash_value);
    transparent_crc(p_1264->g_1022.f0, "p_1264->g_1022.f0", print_hash_value);
    transparent_crc(p_1264->g_1024, "p_1264->g_1024", print_hash_value);
    transparent_crc(p_1264->g_1094.f0, "p_1264->g_1094.f0", print_hash_value);
    transparent_crc(p_1264->g_1094.f1, "p_1264->g_1094.f1", print_hash_value);
    transparent_crc(p_1264->g_1094.f2, "p_1264->g_1094.f2", print_hash_value);
    transparent_crc(p_1264->g_1094.f3, "p_1264->g_1094.f3", print_hash_value);
    transparent_crc(p_1264->g_1094.f4, "p_1264->g_1094.f4", print_hash_value);
    transparent_crc(p_1264->g_1094.f5, "p_1264->g_1094.f5", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 3; j++)
        {
            for (k = 0; k < 8; k++)
            {
                transparent_crc(p_1264->g_1119[i][j][k].f0, "p_1264->g_1119[i][j][k].f0", print_hash_value);
                transparent_crc(p_1264->g_1119[i][j][k].f1, "p_1264->g_1119[i][j][k].f1", print_hash_value);
                transparent_crc(p_1264->g_1119[i][j][k].f2, "p_1264->g_1119[i][j][k].f2", print_hash_value);
                transparent_crc(p_1264->g_1119[i][j][k].f3, "p_1264->g_1119[i][j][k].f3", print_hash_value);
                transparent_crc(p_1264->g_1119[i][j][k].f4, "p_1264->g_1119[i][j][k].f4", print_hash_value);
                transparent_crc(p_1264->g_1119[i][j][k].f5, "p_1264->g_1119[i][j][k].f5", print_hash_value);

            }
        }
    }
    transparent_crc(p_1264->g_1122.f0, "p_1264->g_1122.f0", print_hash_value);
    transparent_crc(p_1264->g_1122.f1, "p_1264->g_1122.f1", print_hash_value);
    transparent_crc(p_1264->g_1122.f2, "p_1264->g_1122.f2", print_hash_value);
    transparent_crc(p_1264->g_1122.f3, "p_1264->g_1122.f3", print_hash_value);
    transparent_crc(p_1264->g_1122.f4, "p_1264->g_1122.f4", print_hash_value);
    transparent_crc(p_1264->g_1122.f5, "p_1264->g_1122.f5", print_hash_value);
    transparent_crc(p_1264->g_1137, "p_1264->g_1137", print_hash_value);
    transparent_crc(p_1264->g_1242.f0, "p_1264->g_1242.f0", print_hash_value);
    transparent_crc(p_1264->g_1242.f1, "p_1264->g_1242.f1", print_hash_value);
    transparent_crc(p_1264->g_1242.f2, "p_1264->g_1242.f2", print_hash_value);
    transparent_crc(p_1264->g_1242.f3, "p_1264->g_1242.f3", print_hash_value);
    transparent_crc(p_1264->g_1242.f4, "p_1264->g_1242.f4", print_hash_value);
    transparent_crc(p_1264->g_1242.f5, "p_1264->g_1242.f5", print_hash_value);
    transparent_crc(p_1264->l_comm_values[get_linear_local_id()], "p_1264->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_1264->g_comm_values[get_linear_group_id() * 11 + get_linear_local_id()], "p_1264->g_comm_values[get_linear_group_id() * 11 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
