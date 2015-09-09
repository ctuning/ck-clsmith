// --atomics 75 ---atomic_reductions ---fake_divergence ---inter_thread_comm -g 95,80,1 -l 5,40,1
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

__constant uint32_t permutations[10][200] = {
{62,36,101,117,77,160,133,181,33,75,161,115,177,79,175,163,99,199,20,21,121,187,158,100,125,78,134,41,172,162,107,189,51,167,59,89,194,150,5,137,19,142,0,183,171,159,92,186,30,53,94,44,179,176,180,149,184,22,80,49,152,174,27,70,34,192,76,54,198,2,138,83,151,185,169,55,4,69,116,145,46,56,118,29,191,157,132,61,9,23,74,57,1,42,71,93,127,48,188,126,128,43,109,111,85,73,84,120,122,64,114,11,65,112,108,106,38,104,68,6,35,105,86,166,95,32,178,165,182,91,14,45,146,131,102,110,154,170,98,17,193,37,50,141,143,24,16,129,3,103,18,148,31,130,96,47,155,39,113,60,10,195,168,136,196,13,12,140,67,87,8,135,123,63,90,153,7,147,144,52,28,156,197,173,164,26,81,124,119,25,40,190,139,58,82,88,97,66,15,72}, // permutation 0
{180,96,73,156,67,48,115,9,71,117,157,55,21,57,5,105,37,199,62,170,74,119,186,53,116,134,95,146,43,161,104,79,80,70,49,188,46,33,98,1,172,162,83,153,197,141,25,38,125,2,179,178,106,102,144,65,158,17,130,76,149,195,168,3,151,44,47,42,34,133,131,177,174,22,81,30,155,185,163,127,164,196,58,121,54,18,176,97,143,26,152,137,139,90,114,8,99,132,91,159,36,6,56,100,51,4,59,19,109,140,187,13,118,69,147,94,165,189,112,10,191,181,145,92,183,128,40,27,166,16,171,60,39,84,68,124,52,78,50,28,122,110,194,20,113,190,198,150,103,72,120,41,175,107,11,15,12,61,138,89,136,75,173,101,31,66,86,88,63,193,126,82,87,7,154,85,0,14,135,129,160,93,142,24,111,184,35,64,169,167,108,32,77,45,29,148,123,182,192,23}, // permutation 1
{179,173,78,104,6,13,163,47,176,142,4,85,23,70,183,118,45,87,111,93,146,8,96,191,162,134,61,10,170,136,129,98,92,97,11,102,12,154,107,181,182,157,197,29,143,16,119,171,135,18,187,21,84,174,100,192,24,31,95,151,158,43,75,35,169,132,68,101,83,20,72,159,153,0,89,49,126,15,86,117,55,99,62,195,7,166,148,51,137,1,71,190,115,77,64,165,88,121,39,82,168,65,25,59,188,67,141,27,124,56,184,105,177,34,128,189,114,130,156,180,161,152,131,37,110,90,139,172,41,66,112,17,164,46,57,5,52,32,185,175,150,160,109,60,19,144,42,28,80,81,133,38,44,193,123,178,167,106,199,103,69,147,149,138,63,145,140,2,26,33,116,9,196,198,30,91,3,113,155,50,120,54,73,76,53,58,186,127,48,74,122,36,125,14,94,79,22,108,40,194}, // permutation 2
{132,114,111,175,197,99,160,198,89,178,58,30,20,164,11,31,103,63,117,184,22,126,116,138,35,118,181,188,186,122,199,3,0,106,136,137,9,68,174,140,127,41,141,16,56,36,1,33,139,13,64,46,82,171,54,2,173,61,149,65,191,94,187,14,123,128,15,131,180,43,129,34,25,134,152,182,145,84,10,154,125,155,144,107,121,6,159,170,69,150,172,24,143,124,47,62,23,166,37,98,158,74,26,96,95,79,183,148,50,88,193,151,78,53,52,130,119,81,12,67,80,189,163,32,195,113,55,85,196,42,48,194,86,185,168,156,17,49,51,157,179,190,8,109,27,28,5,19,176,44,71,66,4,93,21,101,87,102,167,38,110,18,115,142,76,104,90,77,73,135,162,97,29,100,161,57,39,112,133,147,92,91,146,40,108,60,105,120,72,153,165,45,192,169,83,7,59,70,75,177}, // permutation 3
{133,60,22,99,44,15,69,137,188,131,50,146,26,165,183,63,30,107,142,186,20,98,75,178,88,154,34,73,168,5,61,52,24,128,180,47,130,123,171,18,7,144,74,112,25,54,42,72,147,126,108,16,64,65,56,94,181,89,36,134,95,141,66,78,179,138,101,45,57,86,105,6,177,172,114,189,43,176,19,1,80,104,135,17,48,139,51,158,143,31,122,46,62,149,103,166,59,0,119,35,39,27,2,9,82,175,170,110,129,21,40,159,174,91,93,109,152,111,58,84,13,12,162,140,195,3,10,151,14,81,184,102,116,169,76,194,115,29,11,85,132,96,41,196,38,160,83,164,92,49,192,55,77,173,90,118,150,33,156,53,4,120,148,127,155,190,106,198,67,8,153,97,87,32,157,187,79,37,193,70,121,125,197,136,71,145,23,100,185,163,28,191,113,199,182,161,68,167,124,117}, // permutation 4
{41,9,134,53,102,133,149,26,45,174,30,98,74,197,193,184,92,106,14,18,167,55,146,115,186,6,116,59,120,99,129,191,190,103,58,159,153,181,185,126,48,1,148,46,124,29,170,125,147,63,82,177,122,54,27,64,160,121,113,119,94,35,50,79,42,87,71,163,168,13,12,25,32,143,142,182,69,156,169,152,15,66,118,128,130,11,114,78,86,52,187,104,22,198,62,0,68,158,111,199,183,37,137,47,88,173,135,61,172,175,2,80,138,31,73,77,162,164,57,166,150,155,140,144,108,38,4,195,19,81,136,188,72,141,112,16,40,7,49,89,132,43,56,76,17,3,165,65,60,145,117,139,127,101,131,10,24,109,179,83,196,192,93,154,157,34,194,96,85,180,20,178,67,189,28,84,21,90,95,36,51,110,70,5,33,105,171,91,107,23,161,75,44,151,8,176,97,123,39,100}, // permutation 5
{15,96,3,141,65,92,152,172,18,163,190,82,120,186,94,145,17,179,83,148,52,199,105,61,69,121,79,97,171,74,114,22,173,95,149,140,45,59,117,28,142,151,8,165,12,129,13,24,187,192,41,116,158,154,162,104,156,175,7,43,87,180,47,49,64,194,150,93,109,4,46,191,99,108,112,75,21,161,146,144,182,71,137,159,33,44,20,193,39,126,48,78,72,111,55,88,50,178,91,110,157,124,123,127,60,32,132,80,176,198,9,29,138,168,31,128,85,38,147,76,23,166,107,1,164,35,189,86,139,125,70,42,169,143,0,54,11,14,25,196,195,100,115,118,58,90,160,68,67,102,27,170,19,174,177,197,73,53,57,2,103,181,26,119,63,136,40,66,56,89,84,51,167,77,113,30,133,98,6,130,185,122,135,134,188,37,184,153,36,62,101,183,5,106,131,34,81,155,10,16}, // permutation 6
{90,160,41,40,180,110,146,53,122,2,196,72,120,187,32,176,116,134,48,181,27,59,19,20,36,94,50,37,12,133,6,191,18,17,123,22,15,124,85,111,73,174,153,25,45,91,114,150,29,126,68,198,175,193,54,67,23,102,92,178,136,65,10,115,113,145,83,84,24,137,79,57,69,192,42,99,80,144,195,131,44,35,88,149,86,141,121,5,129,164,82,151,190,47,26,143,167,98,140,119,108,194,112,148,7,109,31,66,183,199,61,33,89,87,105,156,182,43,3,186,127,117,58,165,157,70,179,21,118,76,189,135,4,100,62,52,81,138,16,56,106,158,128,93,107,171,104,197,162,169,9,159,51,170,71,172,8,152,103,28,0,168,77,177,130,74,60,173,139,14,30,38,163,34,184,185,46,188,55,147,49,166,97,101,132,11,1,142,95,39,96,75,161,63,154,125,155,13,78,64}, // permutation 7
{1,15,56,122,41,79,147,120,30,137,110,101,193,171,39,113,168,135,197,40,134,76,164,143,43,130,12,145,165,126,166,78,58,161,175,27,188,107,125,48,144,105,73,127,148,29,14,169,13,9,117,189,74,138,141,150,194,124,33,23,140,109,139,91,60,146,49,53,186,28,7,196,63,51,153,136,67,106,118,86,157,22,151,89,47,25,129,176,192,94,173,108,87,69,155,32,116,81,37,198,123,184,96,95,154,187,90,34,85,160,46,38,45,131,114,181,19,64,99,65,80,11,10,8,182,68,59,72,5,88,26,17,103,52,142,84,42,93,75,191,111,115,172,152,179,44,62,174,163,190,185,112,77,54,83,97,180,55,156,82,61,178,133,162,71,167,195,18,3,100,183,128,159,21,50,158,92,6,20,98,4,170,199,0,66,132,102,104,57,121,2,31,16,36,119,149,70,24,35,177}, // permutation 8
{176,11,85,55,134,167,52,137,41,188,199,7,187,24,94,162,197,18,93,64,136,78,186,75,122,90,80,79,60,56,169,21,105,145,1,23,45,141,103,171,129,9,12,148,189,183,195,77,190,172,128,101,100,139,33,15,89,57,84,138,149,82,36,27,20,37,121,143,173,50,154,135,146,181,46,116,158,14,30,62,67,5,164,31,26,193,91,4,109,8,124,63,182,108,32,102,58,43,151,39,73,155,161,157,147,74,127,178,69,153,68,66,115,180,13,54,126,119,185,83,65,131,35,86,133,160,192,177,97,72,118,198,44,0,132,117,184,166,165,42,194,25,196,175,16,113,92,29,120,49,53,81,17,59,125,19,2,163,48,38,142,111,61,191,123,40,98,159,76,96,110,87,51,28,140,152,34,104,3,22,47,144,88,6,10,170,106,95,70,112,130,71,107,179,150,174,99,168,114,156} // permutation 9
};

// Seed: 125

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   int8_t  f0;
   uint64_t  f1;
   volatile uint32_t  f2;
};

struct S1 {
   int8_t  f0;
   uint64_t  f1;
   int32_t  f2;
   struct S0  f3;
   uint8_t  f4;
   int32_t  f5;
   volatile int8_t  f6;
};

struct S2 {
   uint64_t  f0;
};

union U3 {
   volatile uint8_t  f0;
   int8_t * volatile  f1;
};

union U4 {
   uint32_t  f0;
   volatile uint16_t  f1;
   struct S0  f2;
};

union U5 {
   struct S0  f0;
   int16_t  f1;
   int8_t * f2;
};

union U6 {
   volatile uint64_t  f0;
};

struct S7 {
    volatile int32_t g_2[1][6][8];
    int32_t g_3;
    volatile int32_t g_6[7][10];
    int32_t g_7[3][6][3];
    int8_t g_30;
    VECTOR(int8_t, 16) g_33;
    VECTOR(uint8_t, 4) g_34;
    struct S2 g_59;
    VECTOR(uint32_t, 8) g_86;
    uint32_t g_93;
    int32_t g_95;
    struct S2 g_104;
    VECTOR(uint64_t, 16) g_113;
    int16_t g_130;
    int64_t g_141[4];
    VECTOR(int32_t, 8) g_147;
    uint8_t g_157[6];
    VECTOR(uint32_t, 4) g_174;
    int32_t *g_185;
    int32_t **g_184;
    uint16_t g_194[2];
    uint16_t g_209;
    uint16_t *g_208[1][10];
    VECTOR(int8_t, 16) g_239;
    uint64_t g_246[4][5][9];
    int16_t g_249;
    uint32_t g_250;
    VECTOR(int32_t, 16) g_268;
    VECTOR(int8_t, 4) g_296;
    uint32_t g_310;
    int32_t g_313;
    uint8_t g_314;
    int64_t *g_349[9][5][5];
    VECTOR(int32_t, 8) g_352;
    int64_t g_367;
    union U3 g_377;
    union U3 g_381;
    volatile union U6 g_391;
    volatile union U6 g_392;
    volatile union U6 g_393[1];
    volatile union U6 g_394;
    volatile union U6 g_395;
    volatile union U6 g_396;
    volatile union U6 g_397[5];
    volatile union U6 g_398;
    volatile union U6 g_399;
    volatile union U6 *g_390[1][8][5];
    VECTOR(uint64_t, 16) g_417;
    uint16_t g_422;
    uint64_t *g_438;
    union U3 g_443;
    int64_t g_464;
    int8_t *g_467[7][4];
    VECTOR(int8_t, 8) g_488;
    VECTOR(int32_t, 4) g_489;
    VECTOR(uint32_t, 8) g_520;
    union U6 g_525;
    union U6 g_526;
    union U6 g_527;
    union U6 *g_524[6];
    int16_t *g_544;
    int16_t **g_543;
    VECTOR(int8_t, 2) g_572;
    volatile uint8_t g_590[6];
    volatile uint8_t g_591;
    volatile uint8_t *g_589[4];
    volatile uint8_t **g_588;
    uint16_t g_606;
    union U3 **g_625;
    union U3 g_629;
    int8_t g_723;
    struct S1 g_745;
    struct S1 *g_744[9];
    VECTOR(int64_t, 2) g_782;
    volatile union U5 g_803[2][9];
    volatile union U5 *g_802;
    volatile union U5 g_806;
    union U5 g_833[1][1];
    union U5 *g_832;
    union U5 **g_831;
    union U5 **g_835;
    uint8_t g_854;
    int32_t *g_882[2][9];
    union U3 g_916;
    union U3 g_918;
    union U3 g_920;
    union U3 *g_919;
    union U6 ***g_922;
    struct S0 g_931[1][8];
    VECTOR(uint8_t, 4) g_939;
    VECTOR(uint16_t, 16) g_969;
    VECTOR(uint16_t, 2) g_970;
    union U3 g_987;
    union U3 g_988;
    union U3 g_989;
    union U3 g_991;
    VECTOR(uint16_t, 16) g_1033;
    VECTOR(int32_t, 4) g_1075;
    VECTOR(uint8_t, 4) g_1091;
    VECTOR(uint8_t, 4) g_1093;
    VECTOR(uint16_t, 4) g_1132;
    VECTOR(uint8_t, 4) g_1146;
    VECTOR(uint16_t, 2) g_1184;
    volatile struct S1 g_1191;
    volatile struct S1 *g_1190;
    volatile struct S1 ** volatile g_1189[1][1][8];
    volatile struct S1 ** volatile *g_1188;
    int16_t ***g_1199;
    VECTOR(int32_t, 2) g_1238;
    VECTOR(uint64_t, 2) g_1239;
    VECTOR(uint32_t, 16) g_1255;
    VECTOR(int16_t, 16) g_1263;
    VECTOR(int16_t, 2) g_1264;
    union U6 g_1279;
    uint32_t g_1305;
    volatile struct S1 g_1321;
    volatile struct S1 g_1322[9];
    union U4 g_1326;
    int8_t *g_1330;
    int32_t * volatile g_1565;
    VECTOR(int16_t, 8) g_1568;
    VECTOR(uint32_t, 16) g_1581;
    uint32_t g_1588;
    int8_t g_1592;
    struct S0 g_1600;
    volatile union U5 g_1601[7][2][8];
    union U3 g_1606;
    volatile struct S0 g_1613;
    struct S0 * volatile g_1615;
    union U5 g_1617;
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
union U5  func_1(struct S7 * p_1618);
struct S0  func_10(int8_t * p_11, int8_t * p_12, struct S7 * p_1618);
int8_t * func_13(int8_t * p_14, uint8_t  p_15, int8_t * p_16, int64_t  p_17, int8_t * p_18, struct S7 * p_1618);
int32_t  func_19(int8_t * p_20, uint32_t  p_21, int32_t  p_22, struct S7 * p_1618);
int8_t * func_23(uint8_t  p_24, int32_t  p_25, int8_t * p_26, uint64_t  p_27, uint32_t  p_28, struct S7 * p_1618);
uint32_t  func_37(int8_t * p_38, uint64_t  p_39, int8_t * p_40, uint64_t  p_41, int8_t * p_42, struct S7 * p_1618);
int8_t * func_43(int8_t  p_44, int8_t * p_45, struct S7 * p_1618);
int8_t  func_46(int64_t  p_47, int64_t  p_48, struct S7 * p_1618);
int32_t  func_49(uint16_t  p_50, uint8_t  p_51, int8_t * p_52, struct S7 * p_1618);
struct S2  func_53(struct S2  p_54, int8_t * p_55, int8_t * p_56, int8_t * p_57, int8_t * p_58, struct S7 * p_1618);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1618->g_3 p_1618->g_6 p_1618->g_1255 p_1618->g_1321 p_1618->g_1326 p_1618->g_1330 p_1618->g_1093 p_1618->g_543 p_1618->g_544 p_1618->g_1565 p_1618->g_1600 p_1618->g_1601 p_1618->g_1606 p_1618->g_422 p_1618->g_1613 p_1618->g_745.f3.f0 p_1618->g_931.f0 p_1618->g_723 p_1618->g_1615 p_1618->g_1617
 * writes: p_1618->g_3 p_1618->g_7 p_1618->g_157 p_1618->g_30 p_1618->g_422 p_1618->g_249 p_1618->g_1322 p_1618->g_467 p_1618->g_1326.f2.f1 p_1618->g_854 p_1618->g_1093 p_1618->g_130 p_1618->g_314 p_1618->g_209 p_1618->g_95 p_1618->g_723 p_1618->g_1326.f2
 */
union U5  func_1(struct S7 * p_1618)
{ /* block id: 4 */
    int8_t *l_29 = &p_1618->g_30;
    VECTOR(int32_t, 2) l_466 = (VECTOR(int32_t, 2))(0x0600CB6FL, 0x71522155L);
    uint32_t l_621 = 0x582D20D0L;
    int8_t l_1616 = (-8L);
    int i;
    for (p_1618->g_3 = 0; (p_1618->g_3 <= (-21)); --p_1618->g_3)
    { /* block id: 7 */
        int8_t *l_61[4] = {&p_1618->g_30,&p_1618->g_30,&p_1618->g_30,&p_1618->g_30};
        int8_t *l_67 = (void*)0;
        int32_t l_1298 = (-4L);
        int i;
        for (p_1618->g_7[0][4][2] = (-19); (p_1618->g_7[0][4][2] < (-1)); p_1618->g_7[0][4][2]++)
        { /* block id: 10 */
            int8_t *l_60 = (void*)0;
            struct S2 l_66 = {0UL};
            uint8_t *l_1315 = &p_1618->g_157[0];
            int8_t **l_1329[1];
            int i;
            for (i = 0; i < 1; i++)
                l_1329[i] = (void*)0;
            (*p_1618->g_1615) = func_10(func_13((p_1618->g_467[5][2] = (func_19(func_23(p_1618->g_6[4][8], p_1618->g_3, l_29, ((((*l_29) = ((((*l_1315) = ((safe_rshift_func_int16_t_s_s(((VECTOR(int16_t, 8))(add_sat(((VECTOR(int16_t, 2))((-1L), (-5L))).yxxxyyxy, ((VECTOR(int16_t, 8))(clz(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))(rotate(((VECTOR(int16_t, 4))(upsample(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 4))(p_1618->g_33.se47b)))), ((VECTOR(uint8_t, 8))(p_1618->g_34.ywxyyxzy)).lo))).yzwzxzzw, ((VECTOR(int16_t, 8))(rotate(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))((safe_div_func_uint32_t_u_u(func_37(func_43(func_46((func_49(((func_53(p_1618->g_59, l_60, &p_1618->g_30, l_61[1], ((safe_rshift_func_int16_t_s_s((safe_mod_func_uint64_t_u_u((l_66 , p_1618->g_33.s7), l_66.f0)), 14)) , l_67), p_1618) , l_466.y) && GROUP_DIVERGE(2, 1)), p_1618->g_3, p_1618->g_467[5][2], p_1618) == l_66.f0), l_621, p_1618), &p_1618->g_723, p_1618), p_1618->g_970.y, l_29, l_1298, p_1618->g_467[5][2], p_1618), l_621)), (**p_1618->g_543), (*p_1618->g_544), 0x606AL, 0L, 0x59CBL, 8L, 3L)).s71)))).xxxyxxyyyxyyxyxy)).s19)).xyxyxyyy, ((VECTOR(int16_t, 8))(3L)))))))).s47)), 2L, 1L)).wzzywzwy)))))).s0, 6)) , l_466.x)) != GROUP_DIVERGE(0, 1)) == 1L)) || p_1618->g_1255.sc) , 0xAD400B5DBBC59FD4L), l_66.f0, p_1618), l_466.x, l_1298, p_1618) , &p_1618->g_30)), p_1618->g_1255.s0, p_1618->g_1330, l_66.f0, p_1618->g_1330, p_1618), p_1618->g_1330, p_1618);
            if (l_1616)
                break;
        }
    }
    return p_1618->g_1617;
}


/* ------------------------------------------ */
/* 
 * reads : p_1618->g_1565 p_1618->g_1568 p_1618->g_543 p_1618->g_544 p_1618->g_130 p_1618->g_745.f3.f0 p_1618->g_250 p_1618->g_1093 p_1618->g_438 p_1618->g_104.f0 p_1618->g_1581 p_1618->g_1588 p_1618->g_723 p_1618->g_588 p_1618->g_589 p_1618->g_591 p_1618->g_590 p_1618->g_1592 p_1618->g_1330 p_1618->g_1326.f2.f1 p_1618->g_1600 p_1618->g_1601 p_1618->g_1606 p_1618->g_422 p_1618->g_1613 p_1618->g_931.f0 p_1618->g_1321.f3
 * writes: p_1618->g_95 p_1618->g_1093 p_1618->g_104.f0 p_1618->g_1588 p_1618->g_723 p_1618->g_1326.f2.f1
 */
struct S0  func_10(int8_t * p_11, int8_t * p_12, struct S7 * p_1618)
{ /* block id: 759 */
    int64_t l_1564 = 0x1F0FDDAC17C76DC8L;
    int32_t *l_1573[3];
    uint16_t l_1574 = 0xA2A9L;
    uint32_t l_1575 = 4294967295UL;
    int64_t *l_1586 = (void*)0;
    int64_t *l_1587[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int16_t l_1589 = 0x6B32L;
    int32_t l_1590 = 0x26AC18A9L;
    VECTOR(uint64_t, 8) l_1591 = (VECTOR(uint64_t, 8))(0x839494F96A816178L, (VECTOR(uint64_t, 4))(0x839494F96A816178L, (VECTOR(uint64_t, 2))(0x839494F96A816178L, 18446744073709551608UL), 18446744073709551608UL), 18446744073709551608UL, 0x839494F96A816178L, 18446744073709551608UL);
    VECTOR(int8_t, 4) l_1608 = (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x2EL), 0x2EL);
    int i;
    for (i = 0; i < 3; i++)
        l_1573[i] = (void*)0;
    (*p_1618->g_1565) = l_1564;
    (*p_1618->g_1565) = ((VECTOR(int32_t, 8))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))((safe_mod_func_uint16_t_u_u((((VECTOR(int16_t, 16))(p_1618->g_1568.s4430243302056634)).sc ^ (FAKE_DIVERGE(p_1618->global_2_offset, get_global_id(2), 10) || 0x128AA0E6L)), (((*p_1618->g_438) ^= (safe_div_func_int32_t_s_s((~l_1564), ((l_1564 >= ((p_1618->g_1093.w &= (l_1574 &= ((safe_add_func_int64_t_s_s(((void*)0 == l_1573[0]), ((**p_1618->g_543) != 0UL))) == ((*p_12) , p_1618->g_250)))) & 0x57L)) || (*p_12))))) || 0x43BF8C1C11A4A95EL))), 0x7C900C8BL, (-2L), ((VECTOR(int32_t, 2))((-3L))), 1L, (-1L), 0x4A9A788AL)).hi)).yywzzwwy, ((VECTOR(int32_t, 8))(0L)), ((VECTOR(int32_t, 8))(1L))))).s4;
    --l_1575;
    if ((safe_add_func_uint8_t_u_u((safe_unary_minus_func_uint64_t_u(((void*)0 == &p_1618->g_589[1]))), ((VECTOR(int8_t, 16))(((((((((((VECTOR(uint32_t, 2))(p_1618->g_1581.sa9)).hi | (~(safe_div_func_uint64_t_u_u((*p_1618->g_438), ((((**p_1618->g_543) & (0x81F9235AA254E6D5L > ((*p_1618->g_438) > (p_1618->g_1588 &= 0x580760BAD6E28E79L)))) < (*p_1618->g_438)) , (((*p_11) = (((*p_11) , &l_1573[0]) != (void*)0)) ^ (**p_1618->g_588))))))) , (*p_1618->g_544)) & GROUP_DIVERGE(0, 1)) , l_1589) & l_1590) ^ l_1591.s7) >= p_1618->g_1592) & 4294967289UL), 0x61L, ((VECTOR(int8_t, 2))(0L)), 0x35L, (*p_11), (-8L), 0L, (*p_1618->g_1330), ((VECTOR(int8_t, 4))(9L)), (*p_12), 3L, 0L)).s5)))
    { /* block id: 768 */
        for (p_1618->g_1326.f2.f1 = 20; (p_1618->g_1326.f2.f1 < 25); p_1618->g_1326.f2.f1++)
        { /* block id: 771 */
            uint16_t l_1595 = 65535UL;
            l_1595++;
            for (p_1618->g_723 = 0; (p_1618->g_723 <= (-15)); p_1618->g_723--)
            { /* block id: 775 */
                return p_1618->g_1600;
            }
        }
    }
    else
    { /* block id: 779 */
        int16_t l_1607[10] = {(-10L),0x537CL,0L,0x537CL,(-10L),(-10L),0x537CL,0L,0x537CL,(-10L)};
        int32_t *l_1614 = &l_1590;
        int i;
        (*l_1614) &= (p_1618->g_1601[3][0][2] , (&l_1590 == ((((((safe_add_func_uint16_t_u_u((safe_sub_func_int16_t_s_s(((&p_1618->g_1189[0][0][1] != ((p_1618->g_1606 , (l_1607[4] < (((((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(l_1608.zyyxyyxx)).s06)).xyxyxyxyxyxxyxyx)).s3 == (p_1618->g_422 , ((safe_lshift_func_uint16_t_u_u((safe_mul_func_int8_t_s_s((p_1618->g_1613 , (*p_12)), (*p_1618->g_1330))), l_1607[4])) != l_1607[2]))) | p_1618->g_931[0][6].f0) | l_1607[4]))) , (void*)0)) == (*p_11)), 65526UL)), l_1607[4])) & l_1607[8]) == FAKE_DIVERGE(p_1618->local_1_offset, get_local_id(1), 10)) & 1L) == l_1607[4]) , l_1614)));
    }
    return p_1618->g_1321.f3;
}


/* ------------------------------------------ */
/* 
 * reads : p_1618->g_1326.f2.f1 p_1618->g_854 p_1618->g_1093 p_1618->g_544 p_1618->g_130 p_1618->g_745.f3.f0 p_1618->g_543 p_1618->g_314 p_1618->g_209
 * writes: p_1618->g_1326.f2.f1 p_1618->g_854 p_1618->g_1093 p_1618->g_367 p_1618->g_130 p_1618->g_314 p_1618->g_209
 */
int8_t * func_13(int8_t * p_14, uint8_t  p_15, int8_t * p_16, int64_t  p_17, int8_t * p_18, struct S7 * p_1618)
{ /* block id: 610 */
    union U3 *l_1333 = &p_1618->g_918;
    int32_t l_1512 = (-4L);
    int32_t l_1513 = (-1L);
    int32_t l_1514 = 0L;
    int32_t l_1515 = 0x5E9408B2L;
    int32_t l_1516 = 0x50728DF4L;
    int32_t l_1517 = 0x19FD4842L;
    int32_t l_1518 = 0x1725F4BCL;
    VECTOR(int32_t, 8) l_1519 = (VECTOR(int32_t, 8))(0x4E9EA8B9L, (VECTOR(int32_t, 4))(0x4E9EA8B9L, (VECTOR(int32_t, 2))(0x4E9EA8B9L, (-9L)), (-9L)), (-9L), 0x4E9EA8B9L, (-9L));
    int16_t l_1520 = 0x5679L;
    uint32_t *l_1527 = (void*)0;
    uint64_t l_1541 = 5UL;
    int64_t l_1563 = 2L;
    int i;
    for (p_1618->g_1326.f2.f1 = 0; (p_1618->g_1326.f2.f1 > 21); p_1618->g_1326.f2.f1++)
    { /* block id: 613 */
        l_1333 = l_1333;
        if ((atomic_inc(&p_1618->l_atomic_input[54]) == 3))
        { /* block id: 616 */
            int32_t l_1334[7][9][1] = {{{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L}}};
            struct S0 l_1346[8] = {{0x61L,0xBB313A8DDB3A2A3BL,0xD750B17FL},{0x61L,0xBB313A8DDB3A2A3BL,0xD750B17FL},{0x61L,0xBB313A8DDB3A2A3BL,0xD750B17FL},{0x61L,0xBB313A8DDB3A2A3BL,0xD750B17FL},{0x61L,0xBB313A8DDB3A2A3BL,0xD750B17FL},{0x61L,0xBB313A8DDB3A2A3BL,0xD750B17FL},{0x61L,0xBB313A8DDB3A2A3BL,0xD750B17FL},{0x61L,0xBB313A8DDB3A2A3BL,0xD750B17FL}};
            uint8_t l_1347 = 253UL;
            VECTOR(int8_t, 2) l_1348 = (VECTOR(int8_t, 2))(0x4DL, 0x5CL);
            uint32_t l_1349 = 0xCACEB7D0L;
            int64_t l_1350 = 0L;
            int32_t l_1351[1];
            uint8_t l_1352 = 0x16L;
            uint32_t l_1353 = 1UL;
            VECTOR(int8_t, 4) l_1354 = (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x14L), 0x14L);
            VECTOR(int8_t, 16) l_1355 = (VECTOR(int8_t, 16))(0x46L, (VECTOR(int8_t, 4))(0x46L, (VECTOR(int8_t, 2))(0x46L, 0x6DL), 0x6DL), 0x6DL, 0x46L, 0x6DL, (VECTOR(int8_t, 2))(0x46L, 0x6DL), (VECTOR(int8_t, 2))(0x46L, 0x6DL), 0x46L, 0x6DL, 0x46L, 0x6DL);
            VECTOR(int8_t, 4) l_1356 = (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x38L), 0x38L);
            int32_t l_1357 = 0x780498DDL;
            VECTOR(int8_t, 8) l_1358 = (VECTOR(int8_t, 8))(0x0CL, (VECTOR(int8_t, 4))(0x0CL, (VECTOR(int8_t, 2))(0x0CL, 0x5CL), 0x5CL), 0x5CL, 0x0CL, 0x5CL);
            int16_t l_1359 = 0L;
            int16_t l_1470[6] = {0x746FL,0x2B4AL,0x746FL,0x746FL,0x2B4AL,0x746FL};
            struct S0 l_1471 = {0x3BL,0x8551340047175A42L,0x09F65BA0L};/* VOLATILE GLOBAL l_1471 */
            uint16_t l_1472 = 0UL;
            int i, j, k;
            for (i = 0; i < 1; i++)
                l_1351[i] = (-4L);
            for (l_1334[2][5][0] = 0; (l_1334[2][5][0] <= 4); ++l_1334[2][5][0])
            { /* block id: 619 */
                uint32_t l_1337 = 4294967295UL;
                uint8_t l_1338 = 1UL;
                int32_t l_1340 = 0L;
                int32_t *l_1339 = &l_1340;
                int32_t *l_1341 = &l_1340;
                int32_t *l_1342 = &l_1340;
                int64_t l_1343 = (-6L);
                int32_t l_1344 = 0x5473DE06L;
                int8_t l_1345 = 0x3BL;
                l_1338 &= l_1337;
                l_1342 = (l_1341 = l_1339);
                l_1345 |= (l_1344 ^= l_1343);
            }
            if ((l_1346[4] , ((VECTOR(int32_t, 8))(mul_hi(((VECTOR(int32_t, 16))(upsample(((VECTOR(int16_t, 8))(upsample(((VECTOR(int8_t, 4))(safe_clamp_func(VECTOR(int8_t, 4),int8_t,((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(clz(((VECTOR(int8_t, 4))(rotate(((VECTOR(int8_t, 2))(rotate(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))((-8L), 7L)).xyxx)).even, ((VECTOR(int8_t, 2))(add_sat(((VECTOR(int8_t, 8))(0x67L, ((VECTOR(int8_t, 4))(l_1347, 0L, 0x20L, 0x4FL)), ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(add_sat(((VECTOR(int8_t, 4))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 4),((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 8))(add_sat(((VECTOR(int8_t, 16))(1L, 1L, ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 16))(l_1348.xxyxyxxyxxxyxxxy)).s4f)), l_1349, ((VECTOR(int8_t, 8))(0x45L, (((l_1351[0] = (l_1350 ^= 0x2024D1FBL)) , l_1352) , 0L), l_1353, (-1L), ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(hadd(((VECTOR(int8_t, 16))(l_1354.xyxzzwzwyxwyywww)).s0f, ((VECTOR(int8_t, 2))(l_1355.s65))))).yyxy)))), 9L, 0x12L, 0x1BL)).lo, ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(l_1356.zz)), ((VECTOR(int8_t, 8))(l_1357, 1L, (-1L), 8L, ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(4L, 1L)).xyyx)))), (-9L), 0x3AL, 0x73L, 0x1EL, 3L, 0x3AL)).lo))).odd)), ((VECTOR(int8_t, 2))((-1L), 1L)), 0x10L, ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(l_1358.s42)).xyyy)), 0x04L, 1L, 0x26L, (-5L), 0x7BL)).s81b1, ((VECTOR(int8_t, 4))((-10L))), ((VECTOR(int8_t, 4))(8L))))), ((VECTOR(int8_t, 4))((-8L)))))).hi)), 1L)).s40, ((VECTOR(int8_t, 2))(6L)))))))).xyyy, ((VECTOR(int8_t, 4))(0x1EL)))))))).even)).yyyx, (int8_t)l_1359, (int8_t)0x27L))).yxyzwxxw, ((VECTOR(uint8_t, 8))(4UL))))).s4226422450033672, ((VECTOR(uint16_t, 16))(0x2F0AL))))).lo, ((VECTOR(int32_t, 8))((-5L)))))).s4))
            { /* block id: 628 */
                uint8_t l_1360 = 0xB9L;
                uint32_t l_1417 = 5UL;
                if ((l_1334[2][5][0] = l_1360))
                { /* block id: 630 */
                    int8_t l_1361 = (-6L);
                    uint32_t l_1362 = 0UL;
                    l_1362--;
                }
                else
                { /* block id: 632 */
                    int32_t l_1365 = 9L;
                    int64_t l_1377 = (-1L);
                    int16_t l_1378 = (-4L);
                    int8_t l_1379 = 0x36L;
                    uint32_t l_1380 = 0xFB8E6ABCL;
                    for (l_1365 = 0; (l_1365 == (-13)); l_1365 = safe_sub_func_uint16_t_u_u(l_1365, 1))
                    { /* block id: 635 */
                        int32_t l_1368[4] = {0x1FC858F7L,0x1FC858F7L,0x1FC858F7L,0x1FC858F7L};
                        uint16_t l_1369 = 6UL;
                        uint32_t l_1370 = 0x0947896EL;
                        int32_t *l_1371[4] = {&l_1368[0],&l_1368[0],&l_1368[0],&l_1368[0]};
                        int32_t *l_1372 = (void*)0;
                        int32_t *l_1373 = (void*)0;
                        int64_t l_1374 = 0x1E98325B0BEB9A4AL;
                        int32_t *l_1375 = (void*)0;
                        int32_t *l_1376 = &l_1368[0];
                        int i;
                        l_1370 = (l_1369 = (l_1334[2][5][0] = l_1368[0]));
                        l_1373 = (l_1372 = (l_1371[2] = (void*)0));
                        l_1334[0][3][0] ^= l_1374;
                        l_1376 = l_1375;
                    }
                    --l_1380;
                    if (((VECTOR(int32_t, 2))(0x683A7FCFL, 0x079D0F79L)).lo)
                    { /* block id: 646 */
                        int32_t l_1384 = 0x243E06F3L;
                        int32_t *l_1383[10][2] = {{&l_1384,&l_1384},{&l_1384,&l_1384},{&l_1384,&l_1384},{&l_1384,&l_1384},{&l_1384,&l_1384},{&l_1384,&l_1384},{&l_1384,&l_1384},{&l_1384,&l_1384},{&l_1384,&l_1384},{&l_1384,&l_1384}};
                        int i, j;
                        l_1383[7][0] = l_1383[7][0];
                    }
                    else
                    { /* block id: 648 */
                        uint32_t l_1385[6][5] = {{1UL,1UL,4294967294UL,1UL,0xBE75B7ECL},{1UL,1UL,4294967294UL,1UL,0xBE75B7ECL},{1UL,1UL,4294967294UL,1UL,0xBE75B7ECL},{1UL,1UL,4294967294UL,1UL,0xBE75B7ECL},{1UL,1UL,4294967294UL,1UL,0xBE75B7ECL},{1UL,1UL,4294967294UL,1UL,0xBE75B7ECL}};
                        VECTOR(int32_t, 4) l_1386 = (VECTOR(int32_t, 4))(0x368399E2L, (VECTOR(int32_t, 2))(0x368399E2L, 0L), 0L);
                        VECTOR(int32_t, 8) l_1387 = (VECTOR(int32_t, 8))(6L, (VECTOR(int32_t, 4))(6L, (VECTOR(int32_t, 2))(6L, 0x03FD789DL), 0x03FD789DL), 0x03FD789DL, 6L, 0x03FD789DL);
                        VECTOR(int32_t, 4) l_1388 = (VECTOR(int32_t, 4))((-6L), (VECTOR(int32_t, 2))((-6L), 1L), 1L);
                        uint32_t l_1389 = 1UL;
                        VECTOR(int32_t, 2) l_1390 = (VECTOR(int32_t, 2))((-1L), 1L);
                        int8_t l_1391 = 0x09L;
                        VECTOR(int32_t, 4) l_1392 = (VECTOR(int32_t, 4))(0x13D0F254L, (VECTOR(int32_t, 2))(0x13D0F254L, 0x34A39DAAL), 0x34A39DAAL);
                        VECTOR(int32_t, 2) l_1393 = (VECTOR(int32_t, 2))((-8L), (-2L));
                        VECTOR(int32_t, 16) l_1394 = (VECTOR(int32_t, 16))((-8L), (VECTOR(int32_t, 4))((-8L), (VECTOR(int32_t, 2))((-8L), (-1L)), (-1L)), (-1L), (-8L), (-1L), (VECTOR(int32_t, 2))((-8L), (-1L)), (VECTOR(int32_t, 2))((-8L), (-1L)), (-8L), (-1L), (-8L), (-1L));
                        uint16_t l_1395 = 0xC4DCL;
                        VECTOR(int32_t, 4) l_1396 = (VECTOR(int32_t, 4))(0x5CBAB66CL, (VECTOR(int32_t, 2))(0x5CBAB66CL, 1L), 1L);
                        VECTOR(int32_t, 4) l_1397 = (VECTOR(int32_t, 4))(0x54CEAAEEL, (VECTOR(int32_t, 2))(0x54CEAAEEL, 0x33CA1B71L), 0x33CA1B71L);
                        int8_t l_1398 = 0x7AL;
                        VECTOR(int64_t, 2) l_1399 = (VECTOR(int64_t, 2))((-6L), 1L);
                        VECTOR(int64_t, 4) l_1400 = (VECTOR(int64_t, 4))(2L, (VECTOR(int64_t, 2))(2L, 0x1BF721FA2EDDA158L), 0x1BF721FA2EDDA158L);
                        uint32_t l_1401[8];
                        VECTOR(int64_t, 16) l_1402 = (VECTOR(int64_t, 16))(0x1D1220287BCB9A0BL, (VECTOR(int64_t, 4))(0x1D1220287BCB9A0BL, (VECTOR(int64_t, 2))(0x1D1220287BCB9A0BL, (-1L)), (-1L)), (-1L), 0x1D1220287BCB9A0BL, (-1L), (VECTOR(int64_t, 2))(0x1D1220287BCB9A0BL, (-1L)), (VECTOR(int64_t, 2))(0x1D1220287BCB9A0BL, (-1L)), 0x1D1220287BCB9A0BL, (-1L), 0x1D1220287BCB9A0BL, (-1L));
                        VECTOR(int64_t, 8) l_1403 = (VECTOR(int64_t, 8))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 0x7CC129467C0F98ECL), 0x7CC129467C0F98ECL), 0x7CC129467C0F98ECL, 1L, 0x7CC129467C0F98ECL);
                        VECTOR(int64_t, 4) l_1404 = (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, (-5L)), (-5L));
                        uint16_t l_1405 = 0x341EL;
                        uint16_t l_1406 = 0xC154L;
                        uint32_t l_1407 = 0xE218F6F1L;
                        uint8_t l_1408 = 255UL;
                        int i, j;
                        for (i = 0; i < 8; i++)
                            l_1401[i] = 0xB896B3DEL;
                        l_1365 = (l_1385[1][0] , ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(rhadd(((VECTOR(int32_t, 2))(safe_clamp_func(VECTOR(int32_t, 2),VECTOR(int32_t, 2),((VECTOR(int32_t, 4))(clz(((VECTOR(int32_t, 4))(l_1386.wyzz))))).even, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(max(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(hadd(((VECTOR(int32_t, 2))(l_1387.s72)).xyyxxxyx, ((VECTOR(int32_t, 8))(l_1388.xwxwwxzy))))).s0463670446161024)))))).sf798, (int32_t)l_1389))), ((VECTOR(int32_t, 4))(8L, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 4))(l_1390.xyyx)), ((VECTOR(int32_t, 16))(l_1391, ((VECTOR(int32_t, 8))(mul_hi(((VECTOR(int32_t, 4))(l_1392.zwzz)).wzywxxyx, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(l_1393.yyyx)), ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(l_1394.s5b9a3db3e886275a)).sd4c2)), 0x79BFF1FAL, l_1395, (-1L), 0x7A83BB7DL, ((VECTOR(int32_t, 4))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 16))(l_1396.wzxyxxwywyzzwyww)).s7897, ((VECTOR(int32_t, 2))(l_1397.zx)).xyxy))))).lo))), l_1398, (((VECTOR(int64_t, 2))(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))(l_1399.xxxx)), (l_1400.x = (l_1350 = (((VECTOR(uint64_t, 2))(0xE025C74782C68914L, 0xAD3358E74D1C5136L)).hi , ((VECTOR(int64_t, 16))(min(((VECTOR(int64_t, 16))(l_1400.xzzwwywxwxyywwzy)), (int64_t)(l_1377 = (l_1399.y = l_1401[7]))))).s5))), ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 2))(l_1402.sbd)))), ((VECTOR(int64_t, 4))(min(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 2))(l_1403.s22)))).xyxxyxxxyyyyxyxy)).sd7c6, ((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))(0x1D85CEF3455AC047L, 0x7049371D9EAA7B8CL, 0x5F15BF7FFA1EE7C3L, 0L)).xwxwzwxzxyxxyyww)).s423e))), ((VECTOR(int64_t, 2))(l_1404.yx)), (l_1405 , l_1406), 0x1115867694249767L, 0x2308D62462A6921BL)).s5a)).lo , l_1407), l_1408, ((VECTOR(int32_t, 4))(0L)))).s7b16, ((VECTOR(int32_t, 4))(0x3A20DCC3L))))).even)), 1L)))).s10, ((VECTOR(int32_t, 2))(0x082F96FFL))))), ((VECTOR(int32_t, 2))(0x48B6EC61L))))), 0L, 0x4F89117EL)).w);
                        l_1365 &= (-7L);
                    }
                }
                for (l_1360 = 0; (l_1360 < 11); l_1360++)
                { /* block id: 659 */
                    int32_t l_1411 = 0x6BC444FDL;
                    uint32_t l_1412 = 1UL;
                    uint32_t l_1413 = 0x84063233L;
                    uint8_t l_1414[3];
                    int16_t l_1415[4] = {0x1C0AL,0x1C0AL,0x1C0AL,0x1C0AL};
                    uint8_t l_1416[3][6] = {{0UL,0UL,0UL,0UL,0UL,0UL},{0UL,0UL,0UL,0UL,0UL,0UL},{0UL,0UL,0UL,0UL,0UL,0UL}};
                    int i, j;
                    for (i = 0; i < 3; i++)
                        l_1414[i] = 0xB3L;
                    l_1411 &= 0x30EAAD99L;
                    l_1416[0][4] = (l_1334[0][2][0] = (l_1412 , ((l_1414[2] = (l_1413 = 0x1D547C3A12B8DE64L)) , l_1415[1])));
                }
                l_1417++;
                for (l_1360 = 0; (l_1360 >= 32); l_1360 = safe_add_func_uint8_t_u_u(l_1360, 8))
                { /* block id: 669 */
                    uint32_t l_1422 = 0UL;
                    union U3 l_1423[4][5][7] = {{{{251UL},{0xE7L},{255UL},{1UL},{0x5CL},{0x5CL},{1UL}},{{251UL},{0xE7L},{255UL},{1UL},{0x5CL},{0x5CL},{1UL}},{{251UL},{0xE7L},{255UL},{1UL},{0x5CL},{0x5CL},{1UL}},{{251UL},{0xE7L},{255UL},{1UL},{0x5CL},{0x5CL},{1UL}},{{251UL},{0xE7L},{255UL},{1UL},{0x5CL},{0x5CL},{1UL}}},{{{251UL},{0xE7L},{255UL},{1UL},{0x5CL},{0x5CL},{1UL}},{{251UL},{0xE7L},{255UL},{1UL},{0x5CL},{0x5CL},{1UL}},{{251UL},{0xE7L},{255UL},{1UL},{0x5CL},{0x5CL},{1UL}},{{251UL},{0xE7L},{255UL},{1UL},{0x5CL},{0x5CL},{1UL}},{{251UL},{0xE7L},{255UL},{1UL},{0x5CL},{0x5CL},{1UL}}},{{{251UL},{0xE7L},{255UL},{1UL},{0x5CL},{0x5CL},{1UL}},{{251UL},{0xE7L},{255UL},{1UL},{0x5CL},{0x5CL},{1UL}},{{251UL},{0xE7L},{255UL},{1UL},{0x5CL},{0x5CL},{1UL}},{{251UL},{0xE7L},{255UL},{1UL},{0x5CL},{0x5CL},{1UL}},{{251UL},{0xE7L},{255UL},{1UL},{0x5CL},{0x5CL},{1UL}}},{{{251UL},{0xE7L},{255UL},{1UL},{0x5CL},{0x5CL},{1UL}},{{251UL},{0xE7L},{255UL},{1UL},{0x5CL},{0x5CL},{1UL}},{{251UL},{0xE7L},{255UL},{1UL},{0x5CL},{0x5CL},{1UL}},{{251UL},{0xE7L},{255UL},{1UL},{0x5CL},{0x5CL},{1UL}},{{251UL},{0xE7L},{255UL},{1UL},{0x5CL},{0x5CL},{1UL}}}};
                    uint32_t l_1424 = 4294967294UL;
                    union U4 l_1425[7] = {{1UL},{4294967291UL},{1UL},{1UL},{4294967291UL},{1UL},{1UL}};
                    struct S2 l_1426 = {0x4AE4C55F162F7D8FL};
                    struct S2 l_1427[7][10] = {{{0x2B665596CA92CCC1L},{0x37526B309DAD54D4L},{18446744073709551615UL},{18446744073709551615UL},{18446744073709551612UL},{0x2B665596CA92CCC1L},{18446744073709551615UL},{0x06291730030F23A9L},{18446744073709551615UL},{0x2B665596CA92CCC1L}},{{0x2B665596CA92CCC1L},{0x37526B309DAD54D4L},{18446744073709551615UL},{18446744073709551615UL},{18446744073709551612UL},{0x2B665596CA92CCC1L},{18446744073709551615UL},{0x06291730030F23A9L},{18446744073709551615UL},{0x2B665596CA92CCC1L}},{{0x2B665596CA92CCC1L},{0x37526B309DAD54D4L},{18446744073709551615UL},{18446744073709551615UL},{18446744073709551612UL},{0x2B665596CA92CCC1L},{18446744073709551615UL},{0x06291730030F23A9L},{18446744073709551615UL},{0x2B665596CA92CCC1L}},{{0x2B665596CA92CCC1L},{0x37526B309DAD54D4L},{18446744073709551615UL},{18446744073709551615UL},{18446744073709551612UL},{0x2B665596CA92CCC1L},{18446744073709551615UL},{0x06291730030F23A9L},{18446744073709551615UL},{0x2B665596CA92CCC1L}},{{0x2B665596CA92CCC1L},{0x37526B309DAD54D4L},{18446744073709551615UL},{18446744073709551615UL},{18446744073709551612UL},{0x2B665596CA92CCC1L},{18446744073709551615UL},{0x06291730030F23A9L},{18446744073709551615UL},{0x2B665596CA92CCC1L}},{{0x2B665596CA92CCC1L},{0x37526B309DAD54D4L},{18446744073709551615UL},{18446744073709551615UL},{18446744073709551612UL},{0x2B665596CA92CCC1L},{18446744073709551615UL},{0x06291730030F23A9L},{18446744073709551615UL},{0x2B665596CA92CCC1L}},{{0x2B665596CA92CCC1L},{0x37526B309DAD54D4L},{18446744073709551615UL},{18446744073709551615UL},{18446744073709551612UL},{0x2B665596CA92CCC1L},{18446744073709551615UL},{0x06291730030F23A9L},{18446744073709551615UL},{0x2B665596CA92CCC1L}}};
                    struct S2 l_1428 = {2UL};
                    uint8_t l_1429 = 0xC1L;
                    struct S1 l_1430[7] = {{5L,0x21373D1FBC9113D5L,0L,{0L,0xEE1105BD423F9056L,0UL},255UL,0x44EA06EEL,-1L},{0x19L,0UL,4L,{0x39L,0x63EE6AF23C30D55EL,1UL},0x1BL,2L,1L},{5L,0x21373D1FBC9113D5L,0L,{0L,0xEE1105BD423F9056L,0UL},255UL,0x44EA06EEL,-1L},{5L,0x21373D1FBC9113D5L,0L,{0L,0xEE1105BD423F9056L,0UL},255UL,0x44EA06EEL,-1L},{0x19L,0UL,4L,{0x39L,0x63EE6AF23C30D55EL,1UL},0x1BL,2L,1L},{5L,0x21373D1FBC9113D5L,0L,{0L,0xEE1105BD423F9056L,0UL},255UL,0x44EA06EEL,-1L},{5L,0x21373D1FBC9113D5L,0L,{0L,0xEE1105BD423F9056L,0UL},255UL,0x44EA06EEL,-1L}};
                    uint8_t l_1431[5][6] = {{255UL,255UL,0x70L,4UL,0x6CL,0x08L},{255UL,255UL,0x70L,4UL,0x6CL,0x08L},{255UL,255UL,0x70L,4UL,0x6CL,0x08L},{255UL,255UL,0x70L,4UL,0x6CL,0x08L},{255UL,255UL,0x70L,4UL,0x6CL,0x08L}};
                    int i, j, k;
                    l_1422 = 0x5794D105L;
                    l_1431[2][1] = (((l_1334[3][8][0] |= 1L) , (l_1423[0][1][4] , ((l_1424 , l_1425[3]) , ((l_1350 = ((l_1428 = (l_1427[4][0] = (l_1426 = l_1426))) , l_1429)) , l_1430[3])))) , 0x4AB1D0C6L);
                    for (l_1424 = 4; (l_1424 != 58); l_1424 = safe_add_func_uint8_t_u_u(l_1424, 3))
                    { /* block id: 679 */
                        VECTOR(int64_t, 2) l_1434 = (VECTOR(int64_t, 2))(0L, 0x301F2339B4526407L);
                        uint16_t l_1435 = 0xFDCFL;
                        uint64_t l_1436 = 0x387DE41E018662FFL;
                        uint32_t l_1437[10][7][1] = {{{0x06CEB6C2L},{0x06CEB6C2L},{0x06CEB6C2L},{0x06CEB6C2L},{0x06CEB6C2L},{0x06CEB6C2L},{0x06CEB6C2L}},{{0x06CEB6C2L},{0x06CEB6C2L},{0x06CEB6C2L},{0x06CEB6C2L},{0x06CEB6C2L},{0x06CEB6C2L},{0x06CEB6C2L}},{{0x06CEB6C2L},{0x06CEB6C2L},{0x06CEB6C2L},{0x06CEB6C2L},{0x06CEB6C2L},{0x06CEB6C2L},{0x06CEB6C2L}},{{0x06CEB6C2L},{0x06CEB6C2L},{0x06CEB6C2L},{0x06CEB6C2L},{0x06CEB6C2L},{0x06CEB6C2L},{0x06CEB6C2L}},{{0x06CEB6C2L},{0x06CEB6C2L},{0x06CEB6C2L},{0x06CEB6C2L},{0x06CEB6C2L},{0x06CEB6C2L},{0x06CEB6C2L}},{{0x06CEB6C2L},{0x06CEB6C2L},{0x06CEB6C2L},{0x06CEB6C2L},{0x06CEB6C2L},{0x06CEB6C2L},{0x06CEB6C2L}},{{0x06CEB6C2L},{0x06CEB6C2L},{0x06CEB6C2L},{0x06CEB6C2L},{0x06CEB6C2L},{0x06CEB6C2L},{0x06CEB6C2L}},{{0x06CEB6C2L},{0x06CEB6C2L},{0x06CEB6C2L},{0x06CEB6C2L},{0x06CEB6C2L},{0x06CEB6C2L},{0x06CEB6C2L}},{{0x06CEB6C2L},{0x06CEB6C2L},{0x06CEB6C2L},{0x06CEB6C2L},{0x06CEB6C2L},{0x06CEB6C2L},{0x06CEB6C2L}},{{0x06CEB6C2L},{0x06CEB6C2L},{0x06CEB6C2L},{0x06CEB6C2L},{0x06CEB6C2L},{0x06CEB6C2L},{0x06CEB6C2L}}};
                        uint64_t l_1438 = 1UL;
                        uint64_t l_1439 = 0x9587DBD323397542L;
                        uint32_t l_1442 = 6UL;
                        int64_t l_1443 = 0x276A49FBA2FAB28AL;
                        VECTOR(int32_t, 4) l_1444 = (VECTOR(int32_t, 4))(0x28CC9EFDL, (VECTOR(int32_t, 2))(0x28CC9EFDL, (-7L)), (-7L));
                        VECTOR(int32_t, 4) l_1445 = (VECTOR(int32_t, 4))(4L, (VECTOR(int32_t, 2))(4L, 0L), 0L);
                        VECTOR(int32_t, 8) l_1446 = (VECTOR(int32_t, 8))(0x1662F93DL, (VECTOR(int32_t, 4))(0x1662F93DL, (VECTOR(int32_t, 2))(0x1662F93DL, 0x0601563AL), 0x0601563AL), 0x0601563AL, 0x1662F93DL, 0x0601563AL);
                        VECTOR(int32_t, 16) l_1447 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 1L), 1L), 1L, (-1L), 1L, (VECTOR(int32_t, 2))((-1L), 1L), (VECTOR(int32_t, 2))((-1L), 1L), (-1L), 1L, (-1L), 1L);
                        uint16_t l_1448 = 65533UL;
                        VECTOR(int32_t, 16) l_1449 = (VECTOR(int32_t, 16))(0x7E7B056EL, (VECTOR(int32_t, 4))(0x7E7B056EL, (VECTOR(int32_t, 2))(0x7E7B056EL, 0x1AC67671L), 0x1AC67671L), 0x1AC67671L, 0x7E7B056EL, 0x1AC67671L, (VECTOR(int32_t, 2))(0x7E7B056EL, 0x1AC67671L), (VECTOR(int32_t, 2))(0x7E7B056EL, 0x1AC67671L), 0x7E7B056EL, 0x1AC67671L, 0x7E7B056EL, 0x1AC67671L);
                        uint32_t l_1450 = 4294967287UL;
                        int8_t l_1451 = 3L;
                        int8_t l_1452 = 0x7BL;
                        VECTOR(int16_t, 4) l_1453 = (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x4287L), 0x4287L);
                        union U3 l_1454 = {0xA6L};/* VOLATILE GLOBAL l_1454 */
                        union U5 l_1455 = {{0L,0x5F33C5BA3E499C2AL,0xDD296D0EL}};/* VOLATILE GLOBAL l_1455 */
                        struct S1 l_1456[5][9][5] = {{{{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{8L,0xC68DE750282E1DAEL,-7L,{0x34L,0x8B1CE4A12F594893L,0UL},0x30L,0x42BC37D6L,2L},{2L,0x3A667C67DA2D99BCL,0x0E1F7EFEL,{-1L,18446744073709551608UL,1UL},1UL,0x59AA66B8L,-1L},{0x51L,0UL,1L,{1L,0x81B6E2A57BF114EDL,0xE204C634L},255UL,0x4C840050L,0L}},{{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{8L,0xC68DE750282E1DAEL,-7L,{0x34L,0x8B1CE4A12F594893L,0UL},0x30L,0x42BC37D6L,2L},{2L,0x3A667C67DA2D99BCL,0x0E1F7EFEL,{-1L,18446744073709551608UL,1UL},1UL,0x59AA66B8L,-1L},{0x51L,0UL,1L,{1L,0x81B6E2A57BF114EDL,0xE204C634L},255UL,0x4C840050L,0L}},{{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{8L,0xC68DE750282E1DAEL,-7L,{0x34L,0x8B1CE4A12F594893L,0UL},0x30L,0x42BC37D6L,2L},{2L,0x3A667C67DA2D99BCL,0x0E1F7EFEL,{-1L,18446744073709551608UL,1UL},1UL,0x59AA66B8L,-1L},{0x51L,0UL,1L,{1L,0x81B6E2A57BF114EDL,0xE204C634L},255UL,0x4C840050L,0L}},{{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{8L,0xC68DE750282E1DAEL,-7L,{0x34L,0x8B1CE4A12F594893L,0UL},0x30L,0x42BC37D6L,2L},{2L,0x3A667C67DA2D99BCL,0x0E1F7EFEL,{-1L,18446744073709551608UL,1UL},1UL,0x59AA66B8L,-1L},{0x51L,0UL,1L,{1L,0x81B6E2A57BF114EDL,0xE204C634L},255UL,0x4C840050L,0L}},{{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{8L,0xC68DE750282E1DAEL,-7L,{0x34L,0x8B1CE4A12F594893L,0UL},0x30L,0x42BC37D6L,2L},{2L,0x3A667C67DA2D99BCL,0x0E1F7EFEL,{-1L,18446744073709551608UL,1UL},1UL,0x59AA66B8L,-1L},{0x51L,0UL,1L,{1L,0x81B6E2A57BF114EDL,0xE204C634L},255UL,0x4C840050L,0L}},{{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{8L,0xC68DE750282E1DAEL,-7L,{0x34L,0x8B1CE4A12F594893L,0UL},0x30L,0x42BC37D6L,2L},{2L,0x3A667C67DA2D99BCL,0x0E1F7EFEL,{-1L,18446744073709551608UL,1UL},1UL,0x59AA66B8L,-1L},{0x51L,0UL,1L,{1L,0x81B6E2A57BF114EDL,0xE204C634L},255UL,0x4C840050L,0L}},{{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{8L,0xC68DE750282E1DAEL,-7L,{0x34L,0x8B1CE4A12F594893L,0UL},0x30L,0x42BC37D6L,2L},{2L,0x3A667C67DA2D99BCL,0x0E1F7EFEL,{-1L,18446744073709551608UL,1UL},1UL,0x59AA66B8L,-1L},{0x51L,0UL,1L,{1L,0x81B6E2A57BF114EDL,0xE204C634L},255UL,0x4C840050L,0L}},{{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{8L,0xC68DE750282E1DAEL,-7L,{0x34L,0x8B1CE4A12F594893L,0UL},0x30L,0x42BC37D6L,2L},{2L,0x3A667C67DA2D99BCL,0x0E1F7EFEL,{-1L,18446744073709551608UL,1UL},1UL,0x59AA66B8L,-1L},{0x51L,0UL,1L,{1L,0x81B6E2A57BF114EDL,0xE204C634L},255UL,0x4C840050L,0L}},{{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{8L,0xC68DE750282E1DAEL,-7L,{0x34L,0x8B1CE4A12F594893L,0UL},0x30L,0x42BC37D6L,2L},{2L,0x3A667C67DA2D99BCL,0x0E1F7EFEL,{-1L,18446744073709551608UL,1UL},1UL,0x59AA66B8L,-1L},{0x51L,0UL,1L,{1L,0x81B6E2A57BF114EDL,0xE204C634L},255UL,0x4C840050L,0L}}},{{{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{8L,0xC68DE750282E1DAEL,-7L,{0x34L,0x8B1CE4A12F594893L,0UL},0x30L,0x42BC37D6L,2L},{2L,0x3A667C67DA2D99BCL,0x0E1F7EFEL,{-1L,18446744073709551608UL,1UL},1UL,0x59AA66B8L,-1L},{0x51L,0UL,1L,{1L,0x81B6E2A57BF114EDL,0xE204C634L},255UL,0x4C840050L,0L}},{{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{8L,0xC68DE750282E1DAEL,-7L,{0x34L,0x8B1CE4A12F594893L,0UL},0x30L,0x42BC37D6L,2L},{2L,0x3A667C67DA2D99BCL,0x0E1F7EFEL,{-1L,18446744073709551608UL,1UL},1UL,0x59AA66B8L,-1L},{0x51L,0UL,1L,{1L,0x81B6E2A57BF114EDL,0xE204C634L},255UL,0x4C840050L,0L}},{{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{8L,0xC68DE750282E1DAEL,-7L,{0x34L,0x8B1CE4A12F594893L,0UL},0x30L,0x42BC37D6L,2L},{2L,0x3A667C67DA2D99BCL,0x0E1F7EFEL,{-1L,18446744073709551608UL,1UL},1UL,0x59AA66B8L,-1L},{0x51L,0UL,1L,{1L,0x81B6E2A57BF114EDL,0xE204C634L},255UL,0x4C840050L,0L}},{{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{8L,0xC68DE750282E1DAEL,-7L,{0x34L,0x8B1CE4A12F594893L,0UL},0x30L,0x42BC37D6L,2L},{2L,0x3A667C67DA2D99BCL,0x0E1F7EFEL,{-1L,18446744073709551608UL,1UL},1UL,0x59AA66B8L,-1L},{0x51L,0UL,1L,{1L,0x81B6E2A57BF114EDL,0xE204C634L},255UL,0x4C840050L,0L}},{{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{8L,0xC68DE750282E1DAEL,-7L,{0x34L,0x8B1CE4A12F594893L,0UL},0x30L,0x42BC37D6L,2L},{2L,0x3A667C67DA2D99BCL,0x0E1F7EFEL,{-1L,18446744073709551608UL,1UL},1UL,0x59AA66B8L,-1L},{0x51L,0UL,1L,{1L,0x81B6E2A57BF114EDL,0xE204C634L},255UL,0x4C840050L,0L}},{{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{8L,0xC68DE750282E1DAEL,-7L,{0x34L,0x8B1CE4A12F594893L,0UL},0x30L,0x42BC37D6L,2L},{2L,0x3A667C67DA2D99BCL,0x0E1F7EFEL,{-1L,18446744073709551608UL,1UL},1UL,0x59AA66B8L,-1L},{0x51L,0UL,1L,{1L,0x81B6E2A57BF114EDL,0xE204C634L},255UL,0x4C840050L,0L}},{{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{8L,0xC68DE750282E1DAEL,-7L,{0x34L,0x8B1CE4A12F594893L,0UL},0x30L,0x42BC37D6L,2L},{2L,0x3A667C67DA2D99BCL,0x0E1F7EFEL,{-1L,18446744073709551608UL,1UL},1UL,0x59AA66B8L,-1L},{0x51L,0UL,1L,{1L,0x81B6E2A57BF114EDL,0xE204C634L},255UL,0x4C840050L,0L}},{{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{8L,0xC68DE750282E1DAEL,-7L,{0x34L,0x8B1CE4A12F594893L,0UL},0x30L,0x42BC37D6L,2L},{2L,0x3A667C67DA2D99BCL,0x0E1F7EFEL,{-1L,18446744073709551608UL,1UL},1UL,0x59AA66B8L,-1L},{0x51L,0UL,1L,{1L,0x81B6E2A57BF114EDL,0xE204C634L},255UL,0x4C840050L,0L}},{{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{8L,0xC68DE750282E1DAEL,-7L,{0x34L,0x8B1CE4A12F594893L,0UL},0x30L,0x42BC37D6L,2L},{2L,0x3A667C67DA2D99BCL,0x0E1F7EFEL,{-1L,18446744073709551608UL,1UL},1UL,0x59AA66B8L,-1L},{0x51L,0UL,1L,{1L,0x81B6E2A57BF114EDL,0xE204C634L},255UL,0x4C840050L,0L}}},{{{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{8L,0xC68DE750282E1DAEL,-7L,{0x34L,0x8B1CE4A12F594893L,0UL},0x30L,0x42BC37D6L,2L},{2L,0x3A667C67DA2D99BCL,0x0E1F7EFEL,{-1L,18446744073709551608UL,1UL},1UL,0x59AA66B8L,-1L},{0x51L,0UL,1L,{1L,0x81B6E2A57BF114EDL,0xE204C634L},255UL,0x4C840050L,0L}},{{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{8L,0xC68DE750282E1DAEL,-7L,{0x34L,0x8B1CE4A12F594893L,0UL},0x30L,0x42BC37D6L,2L},{2L,0x3A667C67DA2D99BCL,0x0E1F7EFEL,{-1L,18446744073709551608UL,1UL},1UL,0x59AA66B8L,-1L},{0x51L,0UL,1L,{1L,0x81B6E2A57BF114EDL,0xE204C634L},255UL,0x4C840050L,0L}},{{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{8L,0xC68DE750282E1DAEL,-7L,{0x34L,0x8B1CE4A12F594893L,0UL},0x30L,0x42BC37D6L,2L},{2L,0x3A667C67DA2D99BCL,0x0E1F7EFEL,{-1L,18446744073709551608UL,1UL},1UL,0x59AA66B8L,-1L},{0x51L,0UL,1L,{1L,0x81B6E2A57BF114EDL,0xE204C634L},255UL,0x4C840050L,0L}},{{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{8L,0xC68DE750282E1DAEL,-7L,{0x34L,0x8B1CE4A12F594893L,0UL},0x30L,0x42BC37D6L,2L},{2L,0x3A667C67DA2D99BCL,0x0E1F7EFEL,{-1L,18446744073709551608UL,1UL},1UL,0x59AA66B8L,-1L},{0x51L,0UL,1L,{1L,0x81B6E2A57BF114EDL,0xE204C634L},255UL,0x4C840050L,0L}},{{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{8L,0xC68DE750282E1DAEL,-7L,{0x34L,0x8B1CE4A12F594893L,0UL},0x30L,0x42BC37D6L,2L},{2L,0x3A667C67DA2D99BCL,0x0E1F7EFEL,{-1L,18446744073709551608UL,1UL},1UL,0x59AA66B8L,-1L},{0x51L,0UL,1L,{1L,0x81B6E2A57BF114EDL,0xE204C634L},255UL,0x4C840050L,0L}},{{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{8L,0xC68DE750282E1DAEL,-7L,{0x34L,0x8B1CE4A12F594893L,0UL},0x30L,0x42BC37D6L,2L},{2L,0x3A667C67DA2D99BCL,0x0E1F7EFEL,{-1L,18446744073709551608UL,1UL},1UL,0x59AA66B8L,-1L},{0x51L,0UL,1L,{1L,0x81B6E2A57BF114EDL,0xE204C634L},255UL,0x4C840050L,0L}},{{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{8L,0xC68DE750282E1DAEL,-7L,{0x34L,0x8B1CE4A12F594893L,0UL},0x30L,0x42BC37D6L,2L},{2L,0x3A667C67DA2D99BCL,0x0E1F7EFEL,{-1L,18446744073709551608UL,1UL},1UL,0x59AA66B8L,-1L},{0x51L,0UL,1L,{1L,0x81B6E2A57BF114EDL,0xE204C634L},255UL,0x4C840050L,0L}},{{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{8L,0xC68DE750282E1DAEL,-7L,{0x34L,0x8B1CE4A12F594893L,0UL},0x30L,0x42BC37D6L,2L},{2L,0x3A667C67DA2D99BCL,0x0E1F7EFEL,{-1L,18446744073709551608UL,1UL},1UL,0x59AA66B8L,-1L},{0x51L,0UL,1L,{1L,0x81B6E2A57BF114EDL,0xE204C634L},255UL,0x4C840050L,0L}},{{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{8L,0xC68DE750282E1DAEL,-7L,{0x34L,0x8B1CE4A12F594893L,0UL},0x30L,0x42BC37D6L,2L},{2L,0x3A667C67DA2D99BCL,0x0E1F7EFEL,{-1L,18446744073709551608UL,1UL},1UL,0x59AA66B8L,-1L},{0x51L,0UL,1L,{1L,0x81B6E2A57BF114EDL,0xE204C634L},255UL,0x4C840050L,0L}}},{{{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{8L,0xC68DE750282E1DAEL,-7L,{0x34L,0x8B1CE4A12F594893L,0UL},0x30L,0x42BC37D6L,2L},{2L,0x3A667C67DA2D99BCL,0x0E1F7EFEL,{-1L,18446744073709551608UL,1UL},1UL,0x59AA66B8L,-1L},{0x51L,0UL,1L,{1L,0x81B6E2A57BF114EDL,0xE204C634L},255UL,0x4C840050L,0L}},{{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{8L,0xC68DE750282E1DAEL,-7L,{0x34L,0x8B1CE4A12F594893L,0UL},0x30L,0x42BC37D6L,2L},{2L,0x3A667C67DA2D99BCL,0x0E1F7EFEL,{-1L,18446744073709551608UL,1UL},1UL,0x59AA66B8L,-1L},{0x51L,0UL,1L,{1L,0x81B6E2A57BF114EDL,0xE204C634L},255UL,0x4C840050L,0L}},{{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{8L,0xC68DE750282E1DAEL,-7L,{0x34L,0x8B1CE4A12F594893L,0UL},0x30L,0x42BC37D6L,2L},{2L,0x3A667C67DA2D99BCL,0x0E1F7EFEL,{-1L,18446744073709551608UL,1UL},1UL,0x59AA66B8L,-1L},{0x51L,0UL,1L,{1L,0x81B6E2A57BF114EDL,0xE204C634L},255UL,0x4C840050L,0L}},{{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{8L,0xC68DE750282E1DAEL,-7L,{0x34L,0x8B1CE4A12F594893L,0UL},0x30L,0x42BC37D6L,2L},{2L,0x3A667C67DA2D99BCL,0x0E1F7EFEL,{-1L,18446744073709551608UL,1UL},1UL,0x59AA66B8L,-1L},{0x51L,0UL,1L,{1L,0x81B6E2A57BF114EDL,0xE204C634L},255UL,0x4C840050L,0L}},{{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{8L,0xC68DE750282E1DAEL,-7L,{0x34L,0x8B1CE4A12F594893L,0UL},0x30L,0x42BC37D6L,2L},{2L,0x3A667C67DA2D99BCL,0x0E1F7EFEL,{-1L,18446744073709551608UL,1UL},1UL,0x59AA66B8L,-1L},{0x51L,0UL,1L,{1L,0x81B6E2A57BF114EDL,0xE204C634L},255UL,0x4C840050L,0L}},{{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{8L,0xC68DE750282E1DAEL,-7L,{0x34L,0x8B1CE4A12F594893L,0UL},0x30L,0x42BC37D6L,2L},{2L,0x3A667C67DA2D99BCL,0x0E1F7EFEL,{-1L,18446744073709551608UL,1UL},1UL,0x59AA66B8L,-1L},{0x51L,0UL,1L,{1L,0x81B6E2A57BF114EDL,0xE204C634L},255UL,0x4C840050L,0L}},{{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{8L,0xC68DE750282E1DAEL,-7L,{0x34L,0x8B1CE4A12F594893L,0UL},0x30L,0x42BC37D6L,2L},{2L,0x3A667C67DA2D99BCL,0x0E1F7EFEL,{-1L,18446744073709551608UL,1UL},1UL,0x59AA66B8L,-1L},{0x51L,0UL,1L,{1L,0x81B6E2A57BF114EDL,0xE204C634L},255UL,0x4C840050L,0L}},{{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{8L,0xC68DE750282E1DAEL,-7L,{0x34L,0x8B1CE4A12F594893L,0UL},0x30L,0x42BC37D6L,2L},{2L,0x3A667C67DA2D99BCL,0x0E1F7EFEL,{-1L,18446744073709551608UL,1UL},1UL,0x59AA66B8L,-1L},{0x51L,0UL,1L,{1L,0x81B6E2A57BF114EDL,0xE204C634L},255UL,0x4C840050L,0L}},{{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{8L,0xC68DE750282E1DAEL,-7L,{0x34L,0x8B1CE4A12F594893L,0UL},0x30L,0x42BC37D6L,2L},{2L,0x3A667C67DA2D99BCL,0x0E1F7EFEL,{-1L,18446744073709551608UL,1UL},1UL,0x59AA66B8L,-1L},{0x51L,0UL,1L,{1L,0x81B6E2A57BF114EDL,0xE204C634L},255UL,0x4C840050L,0L}}},{{{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{8L,0xC68DE750282E1DAEL,-7L,{0x34L,0x8B1CE4A12F594893L,0UL},0x30L,0x42BC37D6L,2L},{2L,0x3A667C67DA2D99BCL,0x0E1F7EFEL,{-1L,18446744073709551608UL,1UL},1UL,0x59AA66B8L,-1L},{0x51L,0UL,1L,{1L,0x81B6E2A57BF114EDL,0xE204C634L},255UL,0x4C840050L,0L}},{{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{8L,0xC68DE750282E1DAEL,-7L,{0x34L,0x8B1CE4A12F594893L,0UL},0x30L,0x42BC37D6L,2L},{2L,0x3A667C67DA2D99BCL,0x0E1F7EFEL,{-1L,18446744073709551608UL,1UL},1UL,0x59AA66B8L,-1L},{0x51L,0UL,1L,{1L,0x81B6E2A57BF114EDL,0xE204C634L},255UL,0x4C840050L,0L}},{{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{8L,0xC68DE750282E1DAEL,-7L,{0x34L,0x8B1CE4A12F594893L,0UL},0x30L,0x42BC37D6L,2L},{2L,0x3A667C67DA2D99BCL,0x0E1F7EFEL,{-1L,18446744073709551608UL,1UL},1UL,0x59AA66B8L,-1L},{0x51L,0UL,1L,{1L,0x81B6E2A57BF114EDL,0xE204C634L},255UL,0x4C840050L,0L}},{{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{8L,0xC68DE750282E1DAEL,-7L,{0x34L,0x8B1CE4A12F594893L,0UL},0x30L,0x42BC37D6L,2L},{2L,0x3A667C67DA2D99BCL,0x0E1F7EFEL,{-1L,18446744073709551608UL,1UL},1UL,0x59AA66B8L,-1L},{0x51L,0UL,1L,{1L,0x81B6E2A57BF114EDL,0xE204C634L},255UL,0x4C840050L,0L}},{{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{8L,0xC68DE750282E1DAEL,-7L,{0x34L,0x8B1CE4A12F594893L,0UL},0x30L,0x42BC37D6L,2L},{2L,0x3A667C67DA2D99BCL,0x0E1F7EFEL,{-1L,18446744073709551608UL,1UL},1UL,0x59AA66B8L,-1L},{0x51L,0UL,1L,{1L,0x81B6E2A57BF114EDL,0xE204C634L},255UL,0x4C840050L,0L}},{{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{8L,0xC68DE750282E1DAEL,-7L,{0x34L,0x8B1CE4A12F594893L,0UL},0x30L,0x42BC37D6L,2L},{2L,0x3A667C67DA2D99BCL,0x0E1F7EFEL,{-1L,18446744073709551608UL,1UL},1UL,0x59AA66B8L,-1L},{0x51L,0UL,1L,{1L,0x81B6E2A57BF114EDL,0xE204C634L},255UL,0x4C840050L,0L}},{{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{8L,0xC68DE750282E1DAEL,-7L,{0x34L,0x8B1CE4A12F594893L,0UL},0x30L,0x42BC37D6L,2L},{2L,0x3A667C67DA2D99BCL,0x0E1F7EFEL,{-1L,18446744073709551608UL,1UL},1UL,0x59AA66B8L,-1L},{0x51L,0UL,1L,{1L,0x81B6E2A57BF114EDL,0xE204C634L},255UL,0x4C840050L,0L}},{{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{8L,0xC68DE750282E1DAEL,-7L,{0x34L,0x8B1CE4A12F594893L,0UL},0x30L,0x42BC37D6L,2L},{2L,0x3A667C67DA2D99BCL,0x0E1F7EFEL,{-1L,18446744073709551608UL,1UL},1UL,0x59AA66B8L,-1L},{0x51L,0UL,1L,{1L,0x81B6E2A57BF114EDL,0xE204C634L},255UL,0x4C840050L,0L}},{{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{0x68L,0x4487865BD2C8880AL,2L,{-4L,0xD74A882C007A0655L,0UL},0UL,-2L,0x4EL},{8L,0xC68DE750282E1DAEL,-7L,{0x34L,0x8B1CE4A12F594893L,0UL},0x30L,0x42BC37D6L,2L},{2L,0x3A667C67DA2D99BCL,0x0E1F7EFEL,{-1L,18446744073709551608UL,1UL},1UL,0x59AA66B8L,-1L},{0x51L,0UL,1L,{1L,0x81B6E2A57BF114EDL,0xE204C634L},255UL,0x4C840050L,0L}}}};
                        int i, j, k;
                        l_1438 &= (((VECTOR(int64_t, 8))(sub_sat(((VECTOR(int64_t, 16))(min(((VECTOR(int64_t, 8))(l_1434.yxyxxxyx)).s6015117725172364, (int64_t)(l_1350 = (l_1436 = l_1435))))).lo, ((VECTOR(int64_t, 2))(0x70AA493FC94854ECL, (-1L))).yyyyxyyy))).s0 , l_1437[9][0][0]);
                        ++l_1439;
                        l_1430[3].f5 = (l_1442 , ((VECTOR(int32_t, 16))(l_1443, ((VECTOR(int32_t, 2))(rotate(((VECTOR(int32_t, 16))(l_1444.xwzywyzwywywxwzy)).s80, ((VECTOR(int32_t, 2))(mul_hi(((VECTOR(int32_t, 8))(l_1445.xxyzzyzw)).s25, ((VECTOR(int32_t, 2))(l_1446.s02)))))))), ((VECTOR(int32_t, 4))(l_1447.s412f)).y, 1L, 4L, (l_1334[2][5][0] = l_1448), 3L, 0x4757FAA0L, ((VECTOR(int32_t, 4))(l_1449.s7355)), l_1450, 0x672F91C7L, 6L)).sa);
                        l_1430[3] = (((((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(3L, 1L)), 0x5025L, 0L, l_1451, l_1452, ((VECTOR(int16_t, 8))(l_1453.yzyxywzw)), 7L, 0x3CE7L)).s7 , l_1454) , l_1455) , l_1456[0][2][1]);
                    }
                }
            }
            else
            { /* block id: 689 */
                uint32_t l_1457 = 8UL;
                struct S2 l_1458 = {3UL};
                union U3 l_1460 = {0x09L};/* VOLATILE GLOBAL l_1460 */
                union U3 *l_1459 = &l_1460;
                union U3 *l_1461 = &l_1460;
                VECTOR(int32_t, 8) l_1462 = (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x649229B1L), 0x649229B1L), 0x649229B1L, 0L, 0x649229B1L);
                int16_t l_1465[1][2];
                int16_t *l_1464[7] = {(void*)0,&l_1465[0][1],(void*)0,(void*)0,&l_1465[0][1],(void*)0,(void*)0};
                int16_t **l_1463 = &l_1464[3];
                int16_t **l_1466[10][4][3] = {{{&l_1464[3],&l_1464[3],&l_1464[3]},{&l_1464[3],&l_1464[3],&l_1464[3]},{&l_1464[3],&l_1464[3],&l_1464[3]},{&l_1464[3],&l_1464[3],&l_1464[3]}},{{&l_1464[3],&l_1464[3],&l_1464[3]},{&l_1464[3],&l_1464[3],&l_1464[3]},{&l_1464[3],&l_1464[3],&l_1464[3]},{&l_1464[3],&l_1464[3],&l_1464[3]}},{{&l_1464[3],&l_1464[3],&l_1464[3]},{&l_1464[3],&l_1464[3],&l_1464[3]},{&l_1464[3],&l_1464[3],&l_1464[3]},{&l_1464[3],&l_1464[3],&l_1464[3]}},{{&l_1464[3],&l_1464[3],&l_1464[3]},{&l_1464[3],&l_1464[3],&l_1464[3]},{&l_1464[3],&l_1464[3],&l_1464[3]},{&l_1464[3],&l_1464[3],&l_1464[3]}},{{&l_1464[3],&l_1464[3],&l_1464[3]},{&l_1464[3],&l_1464[3],&l_1464[3]},{&l_1464[3],&l_1464[3],&l_1464[3]},{&l_1464[3],&l_1464[3],&l_1464[3]}},{{&l_1464[3],&l_1464[3],&l_1464[3]},{&l_1464[3],&l_1464[3],&l_1464[3]},{&l_1464[3],&l_1464[3],&l_1464[3]},{&l_1464[3],&l_1464[3],&l_1464[3]}},{{&l_1464[3],&l_1464[3],&l_1464[3]},{&l_1464[3],&l_1464[3],&l_1464[3]},{&l_1464[3],&l_1464[3],&l_1464[3]},{&l_1464[3],&l_1464[3],&l_1464[3]}},{{&l_1464[3],&l_1464[3],&l_1464[3]},{&l_1464[3],&l_1464[3],&l_1464[3]},{&l_1464[3],&l_1464[3],&l_1464[3]},{&l_1464[3],&l_1464[3],&l_1464[3]}},{{&l_1464[3],&l_1464[3],&l_1464[3]},{&l_1464[3],&l_1464[3],&l_1464[3]},{&l_1464[3],&l_1464[3],&l_1464[3]},{&l_1464[3],&l_1464[3],&l_1464[3]}},{{&l_1464[3],&l_1464[3],&l_1464[3]},{&l_1464[3],&l_1464[3],&l_1464[3]},{&l_1464[3],&l_1464[3],&l_1464[3]},{&l_1464[3],&l_1464[3],&l_1464[3]}}};
                int16_t **l_1467[7];
                int32_t *l_1468 = (void*)0;
                int32_t *l_1469 = (void*)0;
                int i, j, k;
                for (i = 0; i < 1; i++)
                {
                    for (j = 0; j < 2; j++)
                        l_1465[i][j] = 8L;
                }
                for (i = 0; i < 7; i++)
                    l_1467[i] = &l_1464[3];
                l_1461 = (((l_1457 = 0x25F9514BL) , l_1458) , l_1459);
                l_1334[3][6][0] &= ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(l_1462.s31)))).odd;
                l_1467[4] = (l_1466[7][2][2] = l_1463);
                l_1469 = l_1468;
            }
            if ((l_1472 = ((l_1470[3] , l_1471) , 0x17A09F60L)))
            { /* block id: 698 */
                int8_t l_1473 = (-6L);
                l_1334[3][4][0] = l_1473;
            }
            else
            { /* block id: 700 */
                int32_t l_1474 = (-4L);
                struct S2 l_1487 = {18446744073709551613UL};
                struct S2 l_1488[9][1][2] = {{{{0x6FE297A53E2A1A4BL},{0xFD9481D065FCC116L}}},{{{0x6FE297A53E2A1A4BL},{0xFD9481D065FCC116L}}},{{{0x6FE297A53E2A1A4BL},{0xFD9481D065FCC116L}}},{{{0x6FE297A53E2A1A4BL},{0xFD9481D065FCC116L}}},{{{0x6FE297A53E2A1A4BL},{0xFD9481D065FCC116L}}},{{{0x6FE297A53E2A1A4BL},{0xFD9481D065FCC116L}}},{{{0x6FE297A53E2A1A4BL},{0xFD9481D065FCC116L}}},{{{0x6FE297A53E2A1A4BL},{0xFD9481D065FCC116L}}},{{{0x6FE297A53E2A1A4BL},{0xFD9481D065FCC116L}}}};
                VECTOR(uint16_t, 8) l_1489 = (VECTOR(uint16_t, 8))(6UL, (VECTOR(uint16_t, 4))(6UL, (VECTOR(uint16_t, 2))(6UL, 0x31A2L), 0x31A2L), 0x31A2L, 6UL, 0x31A2L);
                VECTOR(int32_t, 8) l_1490 = (VECTOR(int32_t, 8))(0x2AF17D4EL, (VECTOR(int32_t, 4))(0x2AF17D4EL, (VECTOR(int32_t, 2))(0x2AF17D4EL, 0x00F4AAB7L), 0x00F4AAB7L), 0x00F4AAB7L, 0x2AF17D4EL, 0x00F4AAB7L);
                VECTOR(int64_t, 8) l_1491 = (VECTOR(int64_t, 8))(0x372424396606074CL, (VECTOR(int64_t, 4))(0x372424396606074CL, (VECTOR(int64_t, 2))(0x372424396606074CL, 0x018B71CAD07D1800L), 0x018B71CAD07D1800L), 0x018B71CAD07D1800L, 0x372424396606074CL, 0x018B71CAD07D1800L);
                struct S0 l_1492 = {0x63L,0x112AFCE55829167AL,4294967295UL};/* VOLATILE GLOBAL l_1492 */
                VECTOR(uint64_t, 2) l_1493 = (VECTOR(uint64_t, 2))(0x865EC3140C9AD7A2L, 0UL);
                int16_t l_1494 = 0x503AL;
                VECTOR(uint64_t, 2) l_1495 = (VECTOR(uint64_t, 2))(0x426B85975157A664L, 0x371BB9B9DA1D4E73L);
                VECTOR(uint64_t, 8) l_1496 = (VECTOR(uint64_t, 8))(0UL, (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 18446744073709551615UL), 18446744073709551615UL), 18446744073709551615UL, 0UL, 18446744073709551615UL);
                VECTOR(uint64_t, 2) l_1497 = (VECTOR(uint64_t, 2))(0x2933ED024F088101L, 0xAB63CA3D4893AA5AL);
                int32_t l_1498 = (-4L);
                VECTOR(uint64_t, 16) l_1499 = (VECTOR(uint64_t, 16))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 0xCD605ACE1E1FD489L), 0xCD605ACE1E1FD489L), 0xCD605ACE1E1FD489L, 1UL, 0xCD605ACE1E1FD489L, (VECTOR(uint64_t, 2))(1UL, 0xCD605ACE1E1FD489L), (VECTOR(uint64_t, 2))(1UL, 0xCD605ACE1E1FD489L), 1UL, 0xCD605ACE1E1FD489L, 1UL, 0xCD605ACE1E1FD489L);
                VECTOR(int32_t, 16) l_1500 = (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x44703F03L), 0x44703F03L), 0x44703F03L, 0L, 0x44703F03L, (VECTOR(int32_t, 2))(0L, 0x44703F03L), (VECTOR(int32_t, 2))(0L, 0x44703F03L), 0L, 0x44703F03L, 0L, 0x44703F03L);
                int i, j, k;
                for (l_1474 = (-28); (l_1474 == 8); l_1474 = safe_add_func_int64_t_s_s(l_1474, 3))
                { /* block id: 703 */
                    int8_t l_1477 = (-10L);
                    int32_t l_1478 = 7L;
                    uint16_t l_1479 = 0x63ACL;
                    VECTOR(int64_t, 4) l_1482 = (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 0x3CD6FCA5E948F253L), 0x3CD6FCA5E948F253L);
                    int32_t *l_1483 = &l_1478;
                    int32_t *l_1484 = &l_1478;
                    int32_t *l_1485[1][5];
                    int64_t l_1486 = 0x43B34389FB0187BBL;
                    int i, j;
                    for (i = 0; i < 1; i++)
                    {
                        for (j = 0; j < 5; j++)
                            l_1485[i][j] = &l_1478;
                    }
                    l_1479++;
                    l_1485[0][4] = ((l_1350 |= ((VECTOR(int64_t, 4))(l_1482.wwwz)).y) , (l_1484 = l_1483));
                    l_1334[2][5][0] &= l_1486;
                }
                l_1488[3][0][1] = l_1487;
                l_1474 = l_1489.s4;
                l_1334[2][5][0] |= ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))((l_1474 = ((VECTOR(int32_t, 2))(l_1490.s15)).even), l_1491.s0, (l_1492 , (((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(mad_hi(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(1UL, 0x16C570787147D2DEL)), 0x7CFCA27A7ADED54FL, 0UL, ((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 16))(l_1493.xyyyyyyyyxxxyxyy)).s53)), 0x099A895DDD48736FL, 0xE491012C5280CCDFL)).s4656420630723000)).sf9, ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(add_sat(((VECTOR(uint64_t, 16))(rhadd(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(2UL, 18446744073709551615UL)).xxyx)).yyxxxzzxxxzzwzwx, ((VECTOR(uint64_t, 4))(0xAC9E3B8610860EF5L, (l_1346[4].f1 = (l_1494 , ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 4))(hadd(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 16))(clz(((VECTOR(uint64_t, 2))(1UL, 18446744073709551615UL)).yxyyxyxyyxxxyxxy))).sff81)), ((VECTOR(uint64_t, 2))(l_1495.yy)).yyyy))).yzzwwzxyzyyxzyyy)).s4)), 3UL, 0xD8672BFB58F166F7L)).yyyxwwzyxywwzxyz))).s4a, ((VECTOR(uint64_t, 4))(l_1496.s6430)).lo))).yyxxxxxx)))).lo)).odd, ((VECTOR(uint64_t, 16))(sub_sat(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 4))(hadd(((VECTOR(uint64_t, 8))(l_1497.xyyxxyyy)).lo, ((VECTOR(uint64_t, 16))(min(((VECTOR(uint64_t, 2))(0x27932754859C8B4CL, 18446744073709551615UL)).xxxxyxxyyyyxyxxy, (uint64_t)l_1498))).s7e37))))).lo)).yxyx)).ywxxyzyxyzxyzzzw, ((VECTOR(uint64_t, 2))(l_1499.scf)).yyyyxxxyyxxxxyyy))).sac))).yxyx)).y , (-1L))), 1L, (-1L), 0x106F6762L, 0x2E6189E0L, ((VECTOR(int32_t, 4))(l_1500.se7c3)), 0x5012A80BL, 5L, 0x1DBFF15BL, 0x386FBC4EL, 0L)).even)).s41)), 0x012259E5L, 0L)))).yxzzxywxyyywzwwz)).s1;
            }
            for (l_1355.s8 = 28; (l_1355.s8 < (-29)); --l_1355.s8)
            { /* block id: 718 */
                VECTOR(int32_t, 16) l_1503 = (VECTOR(int32_t, 16))(0x55F23582L, (VECTOR(int32_t, 4))(0x55F23582L, (VECTOR(int32_t, 2))(0x55F23582L, (-1L)), (-1L)), (-1L), 0x55F23582L, (-1L), (VECTOR(int32_t, 2))(0x55F23582L, (-1L)), (VECTOR(int32_t, 2))(0x55F23582L, (-1L)), 0x55F23582L, (-1L), 0x55F23582L, (-1L));
                int32_t l_1504 = 0x1DB275F2L;
                uint64_t l_1505[6][1] = {{0x15B95E23302319A4L},{0x15B95E23302319A4L},{0x15B95E23302319A4L},{0x15B95E23302319A4L},{0x15B95E23302319A4L},{0x15B95E23302319A4L}};
                VECTOR(uint32_t, 4) l_1506 = (VECTOR(uint32_t, 4))(0xB3A96435L, (VECTOR(uint32_t, 2))(0xB3A96435L, 4294967287UL), 4294967287UL);
                union U5 l_1507 = {{0x5FL,0x669EA9E193A704CBL,0UL}};/* VOLATILE GLOBAL l_1507 */
                uint16_t l_1508 = 0x8E47L;
                int i, j;
                l_1505[5][0] |= (l_1504 ^= (l_1334[2][5][0] = ((VECTOR(int32_t, 4))(l_1503.sf71b)).w));
                l_1334[3][6][0] ^= ((((VECTOR(uint32_t, 16))(0x3066D36EL, ((VECTOR(uint32_t, 8))(l_1506.xzywwwxy)), ((VECTOR(uint32_t, 2))(0x0DC04EDFL, 0x44772466L)), (l_1506.w &= FAKE_DIVERGE(p_1618->group_0_offset, get_group_id(0), 10)), 4294967295UL, 0UL, 0xA22E3DC2L, 3UL)).sc , l_1507) , l_1508);
            }
            unsigned int result = 0;
            int l_1334_i0, l_1334_i1, l_1334_i2;
            for (l_1334_i0 = 0; l_1334_i0 < 7; l_1334_i0++) {
                for (l_1334_i1 = 0; l_1334_i1 < 9; l_1334_i1++) {
                    for (l_1334_i2 = 0; l_1334_i2 < 1; l_1334_i2++) {
                        result += l_1334[l_1334_i0][l_1334_i1][l_1334_i2];
                    }
                }
            }
            int l_1346_i0;
            for (l_1346_i0 = 0; l_1346_i0 < 8; l_1346_i0++) {
                result += l_1346[l_1346_i0].f0;
                result += l_1346[l_1346_i0].f1;
                result += l_1346[l_1346_i0].f2;
            }
            result += l_1347;
            result += l_1348.y;
            result += l_1348.x;
            result += l_1349;
            result += l_1350;
            int l_1351_i0;
            for (l_1351_i0 = 0; l_1351_i0 < 1; l_1351_i0++) {
                result += l_1351[l_1351_i0];
            }
            result += l_1352;
            result += l_1353;
            result += l_1354.w;
            result += l_1354.z;
            result += l_1354.y;
            result += l_1354.x;
            result += l_1355.sf;
            result += l_1355.se;
            result += l_1355.sd;
            result += l_1355.sc;
            result += l_1355.sb;
            result += l_1355.sa;
            result += l_1355.s9;
            result += l_1355.s8;
            result += l_1355.s7;
            result += l_1355.s6;
            result += l_1355.s5;
            result += l_1355.s4;
            result += l_1355.s3;
            result += l_1355.s2;
            result += l_1355.s1;
            result += l_1355.s0;
            result += l_1356.w;
            result += l_1356.z;
            result += l_1356.y;
            result += l_1356.x;
            result += l_1357;
            result += l_1358.s7;
            result += l_1358.s6;
            result += l_1358.s5;
            result += l_1358.s4;
            result += l_1358.s3;
            result += l_1358.s2;
            result += l_1358.s1;
            result += l_1358.s0;
            result += l_1359;
            int l_1470_i0;
            for (l_1470_i0 = 0; l_1470_i0 < 6; l_1470_i0++) {
                result += l_1470[l_1470_i0];
            }
            result += l_1471.f0;
            result += l_1471.f1;
            result += l_1471.f2;
            result += l_1472;
            atomic_add(&p_1618->l_special_values[54], result);
        }
        else
        { /* block id: 725 */
            (1 + 1);
        }
    }
    for (p_1618->g_854 = 0; (p_1618->g_854 >= 56); p_1618->g_854 = safe_add_func_int64_t_s_s(p_1618->g_854, 5))
    { /* block id: 731 */
        int32_t *l_1511[6] = {&p_1618->g_7[0][4][2],&p_1618->g_745.f5,&p_1618->g_7[0][4][2],&p_1618->g_7[0][4][2],&p_1618->g_745.f5,&p_1618->g_7[0][4][2]};
        int8_t l_1521 = 0x11L;
        uint64_t l_1522 = 18446744073709551615UL;
        uint32_t *l_1529 = (void*)0;
        uint32_t **l_1528 = &l_1529;
        VECTOR(int32_t, 16) l_1542 = (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x11E90DB4L), 0x11E90DB4L), 0x11E90DB4L, 1L, 0x11E90DB4L, (VECTOR(int32_t, 2))(1L, 0x11E90DB4L), (VECTOR(int32_t, 2))(1L, 0x11E90DB4L), 1L, 0x11E90DB4L, 1L, 0x11E90DB4L);
        VECTOR(int16_t, 2) l_1552 = (VECTOR(int16_t, 2))(3L, 0x749BL);
        uint32_t l_1555 = 0x7561E18CL;
        int i;
        --l_1522;
        if ((safe_add_func_int16_t_s_s(8L, ((p_1618->g_1093.w ^= ((p_15 , l_1527) == ((*l_1528) = &p_1618->g_310))) > 0x0DL))))
        { /* block id: 735 */
            int64_t l_1540 = 0x2CFCFF65DB408805L;
            int64_t *l_1551 = &p_1618->g_367;
            uint8_t *l_1553 = (void*)0;
            int32_t l_1554[5];
            int32_t l_1556 = 0x2D628915L;
            int i;
            for (i = 0; i < 5; i++)
                l_1554[i] = 3L;
            l_1556 = (safe_add_func_uint8_t_u_u((safe_div_func_int8_t_s_s(((safe_mod_func_uint8_t_u_u(p_17, 0x65L)) || (safe_lshift_func_int16_t_s_s(((safe_mod_func_int32_t_s_s(l_1540, (l_1542.s3 = (l_1541 = 0x362C437FL)))) < ((**p_1618->g_543) = ((l_1540 ^ (((safe_lshift_func_uint8_t_u_s(((VECTOR(uint8_t, 8))(255UL, 0x3AL, 0xEAL, (l_1554[0] ^= (((safe_lshift_func_int16_t_s_s((((!FAKE_DIVERGE(p_1618->global_2_offset, get_global_id(2), 10)) & (((safe_mul_func_int16_t_s_s((safe_rshift_func_uint8_t_u_u((p_15 == ((*l_1551) = (p_17 || (*p_1618->g_544)))), 6)), ((void*)0 == &p_1618->g_543))) != p_15) , (*p_18))) | l_1552.y), 0)) == 0x77C10009L) == p_17)), 255UL, 255UL, 251UL, 4UL)).s1, l_1555)) >= p_15) , 65535UL)) | p_17))), p_15))), 2UL)), 0x15L));
        }
        else
        { /* block id: 742 */
            for (p_1618->g_314 = 0; (p_1618->g_314 < 35); p_1618->g_314++)
            { /* block id: 745 */
                int8_t l_1561[1][9] = {{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)}};
                int i, j;
                for (p_1618->g_209 = (-14); (p_1618->g_209 <= 23); p_1618->g_209++)
                { /* block id: 748 */
                    uint8_t l_1562 = 0xEFL;
                    if (l_1561[0][6])
                        break;
                    l_1562 |= (l_1519.s7 ^= (l_1512 |= 0x0B0DB9D8L));
                    if (l_1563)
                        break;
                }
            }
        }
    }
    return &p_1618->g_723;
}


/* ------------------------------------------ */
/* 
 * reads : p_1618->g_1326
 * writes:
 */
int32_t  func_19(int8_t * p_20, uint32_t  p_21, int32_t  p_22, struct S7 * p_1618)
{ /* block id: 606 */
    int32_t *l_1327 = (void*)0;
    int32_t *l_1328 = (void*)0;
    l_1328 = (p_1618->g_1326 , l_1327);
    return p_22;
}


/* ------------------------------------------ */
/* 
 * reads : p_1618->g_422 p_1618->g_249 p_1618->g_1321
 * writes: p_1618->g_422 p_1618->g_249 p_1618->g_1322
 */
int8_t * func_23(uint8_t  p_24, int32_t  p_25, int8_t * p_26, uint64_t  p_27, uint32_t  p_28, struct S7 * p_1618)
{ /* block id: 591 */
    uint8_t l_1323 = 255UL;
    for (p_1618->g_422 = 23; (p_1618->g_422 == 34); p_1618->g_422 = safe_add_func_uint8_t_u_u(p_1618->g_422, 6))
    { /* block id: 594 */
        int32_t l_1318 = (-1L);
        if (l_1318)
            break;
        if (l_1318)
            continue;
        for (p_1618->g_249 = 0; (p_1618->g_249 < (-23)); p_1618->g_249 = safe_sub_func_int64_t_s_s(p_1618->g_249, 8))
        { /* block id: 599 */
            return &p_1618->g_30;
        }
        p_1618->g_1322[6] = p_1618->g_1321;
    }
    l_1323++;
    return &p_1618->g_30;
}


/* ------------------------------------------ */
/* 
 * reads : p_1618->g_1305 p_1618->g_310
 * writes: p_1618->g_1305 p_1618->g_310
 */
uint32_t  func_37(int8_t * p_38, uint64_t  p_39, int8_t * p_40, uint64_t  p_41, int8_t * p_42, struct S7 * p_1618)
{ /* block id: 578 */
    int32_t *l_1299 = (void*)0;
    int32_t *l_1300 = &p_1618->g_95;
    int32_t *l_1301 = (void*)0;
    int32_t l_1302 = (-4L);
    int32_t *l_1303[3];
    int8_t l_1304[8][10][3] = {{{1L,(-8L),0L},{1L,(-8L),0L},{1L,(-8L),0L},{1L,(-8L),0L},{1L,(-8L),0L},{1L,(-8L),0L},{1L,(-8L),0L},{1L,(-8L),0L},{1L,(-8L),0L},{1L,(-8L),0L}},{{1L,(-8L),0L},{1L,(-8L),0L},{1L,(-8L),0L},{1L,(-8L),0L},{1L,(-8L),0L},{1L,(-8L),0L},{1L,(-8L),0L},{1L,(-8L),0L},{1L,(-8L),0L},{1L,(-8L),0L}},{{1L,(-8L),0L},{1L,(-8L),0L},{1L,(-8L),0L},{1L,(-8L),0L},{1L,(-8L),0L},{1L,(-8L),0L},{1L,(-8L),0L},{1L,(-8L),0L},{1L,(-8L),0L},{1L,(-8L),0L}},{{1L,(-8L),0L},{1L,(-8L),0L},{1L,(-8L),0L},{1L,(-8L),0L},{1L,(-8L),0L},{1L,(-8L),0L},{1L,(-8L),0L},{1L,(-8L),0L},{1L,(-8L),0L},{1L,(-8L),0L}},{{1L,(-8L),0L},{1L,(-8L),0L},{1L,(-8L),0L},{1L,(-8L),0L},{1L,(-8L),0L},{1L,(-8L),0L},{1L,(-8L),0L},{1L,(-8L),0L},{1L,(-8L),0L},{1L,(-8L),0L}},{{1L,(-8L),0L},{1L,(-8L),0L},{1L,(-8L),0L},{1L,(-8L),0L},{1L,(-8L),0L},{1L,(-8L),0L},{1L,(-8L),0L},{1L,(-8L),0L},{1L,(-8L),0L},{1L,(-8L),0L}},{{1L,(-8L),0L},{1L,(-8L),0L},{1L,(-8L),0L},{1L,(-8L),0L},{1L,(-8L),0L},{1L,(-8L),0L},{1L,(-8L),0L},{1L,(-8L),0L},{1L,(-8L),0L},{1L,(-8L),0L}},{{1L,(-8L),0L},{1L,(-8L),0L},{1L,(-8L),0L},{1L,(-8L),0L},{1L,(-8L),0L},{1L,(-8L),0L},{1L,(-8L),0L},{1L,(-8L),0L},{1L,(-8L),0L},{1L,(-8L),0L}}};
    uint16_t l_1308 = 0x98D1L;
    int32_t l_1309[6][1][9] = {{{1L,1L,0x4EEC50F3L,0x30A10EA8L,0L,(-1L),0L,(-1L),0L}},{{1L,1L,0x4EEC50F3L,0x30A10EA8L,0L,(-1L),0L,(-1L),0L}},{{1L,1L,0x4EEC50F3L,0x30A10EA8L,0L,(-1L),0L,(-1L),0L}},{{1L,1L,0x4EEC50F3L,0x30A10EA8L,0L,(-1L),0L,(-1L),0L}},{{1L,1L,0x4EEC50F3L,0x30A10EA8L,0L,(-1L),0L,(-1L),0L}},{{1L,1L,0x4EEC50F3L,0x30A10EA8L,0L,(-1L),0L,(-1L),0L}}};
    uint32_t l_1310 = 7UL;
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_1303[i] = &p_1618->g_95;
    ++p_1618->g_1305;
    l_1308 ^= p_39;
    --l_1310;
    for (p_1618->g_310 = 0; (p_1618->g_310 == 12); p_1618->g_310 = safe_add_func_uint16_t_u_u(p_1618->g_310, 8))
    { /* block id: 584 */
        if (p_39)
            break;
        l_1300 = &l_1302;
    }
    return p_41;
}


/* ------------------------------------------ */
/* 
 * reads : p_1618->g_314 p_1618->g_723 p_1618->g_3 p_1618->g_95 p_1618->g_782 p_1618->g_141 p_1618->g_745.f1 p_1618->g_34 p_1618->g_33 p_1618->g_comm_values p_1618->g_93 p_1618->g_157 p_1618->g_59.f0 p_1618->g_352 p_1618->g_802 p_1618->g_745.f5 p_1618->g_438 p_1618->g_104.f0 p_1618->g_544 p_1618->g_130 p_1618->g_184 p_1618->g_185 p_1618->g_831 p_1618->g_174 p_1618->g_854 p_1618->g_745.f0 p_1618->g_543 p_1618->g_30 p_1618->g_922 p_1618->g_939 p_1618->g_310 p_1618->g_520 p_1618->g_969 p_1618->g_970 p_1618->g_745.f2 p_1618->g_1033 p_1618->g_104 permutations p_1618->g_931.f1 p_1618->g_745.f4 p_1618->g_882 p_1618->g_194 p_1618->g_313 p_1618->g_1075 p_1618->g_1091 p_1618->g_1093 p_1618->g_417 p_1618->g_147 p_1618->g_1132 p_1618->g_250 p_1618->g_1146 p_1618->g_744 p_1618->g_1184 p_1618->g_1188 p_1618->g_467 p_1618->g_367 p_1618->g_1238 p_1618->g_1239 p_1618->g_1255 p_1618->g_86
 * writes: p_1618->g_314 p_1618->g_745.f5 p_1618->g_95 p_1618->g_543 p_1618->g_367 p_1618->g_745.f1 p_1618->g_93 p_1618->g_59.f0 p_1618->g_30 p_1618->g_104 p_1618->g_comm_values p_1618->l_comm_values p_1618->g_157 p_1618->g_130 p_1618->g_352 p_1618->g_831 p_1618->g_835 p_1618->g_723 p_1618->g_745.f0 p_1618->g_185 p_1618->g_882 p_1618->g_919 p_1618->g_310 p_1618->g_939 p_1618->g_246 p_1618->g_209 p_1618->g_249 p_1618->g_745.f2 p_1618->g_250 p_1618->g_931.f1 p_1618->g_745.f4 p_1618->g_313 p_1618->g_194 p_1618->g_141 p_1618->g_744 p_1618->g_1199
 */
int8_t * func_43(int8_t  p_44, int8_t * p_45, struct S7 * p_1618)
{ /* block id: 323 */
    uint32_t l_749 = 0xCCB3AE80L;
    struct S2 l_752 = {0xFD669F5107C69501L};
    VECTOR(int16_t, 4) l_757 = (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0L), 0L);
    VECTOR(int64_t, 4) l_760 = (VECTOR(int64_t, 4))(0x46A46215A62FC74CL, (VECTOR(int64_t, 2))(0x46A46215A62FC74CL, 0L), 0L);
    VECTOR(int32_t, 4) l_761 = (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x7F4F3B45L), 0x7F4F3B45L);
    union U3 ***l_770 = &p_1618->g_625;
    union U3 ***l_772[6][9] = {{(void*)0,&p_1618->g_625,&p_1618->g_625,(void*)0,(void*)0,&p_1618->g_625,&p_1618->g_625,(void*)0,(void*)0},{(void*)0,&p_1618->g_625,&p_1618->g_625,(void*)0,(void*)0,&p_1618->g_625,&p_1618->g_625,(void*)0,(void*)0},{(void*)0,&p_1618->g_625,&p_1618->g_625,(void*)0,(void*)0,&p_1618->g_625,&p_1618->g_625,(void*)0,(void*)0},{(void*)0,&p_1618->g_625,&p_1618->g_625,(void*)0,(void*)0,&p_1618->g_625,&p_1618->g_625,(void*)0,(void*)0},{(void*)0,&p_1618->g_625,&p_1618->g_625,(void*)0,(void*)0,&p_1618->g_625,&p_1618->g_625,(void*)0,(void*)0},{(void*)0,&p_1618->g_625,&p_1618->g_625,(void*)0,(void*)0,&p_1618->g_625,&p_1618->g_625,(void*)0,(void*)0}};
    union U3 ****l_771[4][4] = {{&l_772[4][6],&l_772[4][6],&l_772[4][6],&l_772[4][6]},{&l_772[4][6],&l_772[4][6],&l_772[4][6],&l_772[4][6]},{&l_772[4][6],&l_772[4][6],&l_772[4][6],&l_772[4][6]},{&l_772[4][6],&l_772[4][6],&l_772[4][6],&l_772[4][6]}};
    union U3 ***l_773 = (void*)0;
    uint8_t *l_776 = &p_1618->g_745.f4;
    uint8_t l_797 = 255UL;
    volatile union U5 *l_805[5];
    uint32_t l_827 = 0x66BB1524L;
    uint32_t l_1016[8];
    int8_t **l_1059 = &p_1618->g_467[5][2];
    int32_t *l_1066 = &p_1618->g_313;
    VECTOR(uint8_t, 16) l_1092 = (VECTOR(uint8_t, 16))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 0UL), 0UL), 0UL, 1UL, 0UL, (VECTOR(uint8_t, 2))(1UL, 0UL), (VECTOR(uint8_t, 2))(1UL, 0UL), 1UL, 0UL, 1UL, 0UL);
    VECTOR(uint32_t, 4) l_1119 = (VECTOR(uint32_t, 4))(4294967294UL, (VECTOR(uint32_t, 2))(4294967294UL, 4294967293UL), 4294967293UL);
    struct S1 **l_1193 = &p_1618->g_744[1];
    struct S1 ***l_1192 = &l_1193;
    VECTOR(int8_t, 16) l_1247 = (VECTOR(int8_t, 16))((-3L), (VECTOR(int8_t, 4))((-3L), (VECTOR(int8_t, 2))((-3L), 0x2EL), 0x2EL), 0x2EL, (-3L), 0x2EL, (VECTOR(int8_t, 2))((-3L), 0x2EL), (VECTOR(int8_t, 2))((-3L), 0x2EL), (-3L), 0x2EL, (-3L), 0x2EL);
    VECTOR(int32_t, 8) l_1254 = (VECTOR(int32_t, 8))(0x28739F61L, (VECTOR(int32_t, 4))(0x28739F61L, (VECTOR(int32_t, 2))(0x28739F61L, (-1L)), (-1L)), (-1L), 0x28739F61L, (-1L));
    int64_t l_1294 = 8L;
    union U3 *****l_1297 = &l_771[3][1];
    int i, j;
    for (i = 0; i < 5; i++)
        l_805[i] = &p_1618->g_806;
    for (i = 0; i < 8; i++)
        l_1016[i] = 0xE550C4DBL;
    for (p_1618->g_314 = 9; (p_1618->g_314 < 28); p_1618->g_314++)
    { /* block id: 326 */
        int32_t *l_750 = (void*)0;
        int32_t *l_751 = &p_1618->g_745.f5;
        (*l_751) = l_749;
        l_752 = l_752;
        if (l_752.f0)
            continue;
        if (p_44)
            continue;
    }
    l_752 = l_752;
    if ((safe_sub_func_uint32_t_u_u(((safe_lshift_func_int16_t_s_u(((VECTOR(int16_t, 2))(l_757.wy)).even, GROUP_DIVERGE(2, 1))) | l_757.z), ((safe_sub_func_int64_t_s_s((GROUP_DIVERGE(1, 1) | l_757.x), (((VECTOR(int64_t, 4))(l_760.yzwx)).w & (((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 4))(l_761.zyxw)).yyyywzyx, ((VECTOR(int32_t, 4))(hadd(((VECTOR(int32_t, 8))((safe_rshift_func_uint8_t_u_u(((safe_div_func_uint16_t_u_u((safe_sub_func_int16_t_s_s((l_760.z , (safe_mod_func_int8_t_s_s((l_770 == (l_773 = l_770)), (*p_45)))), l_757.x)), p_44)) >= ((safe_sub_func_uint8_t_u_u((p_45 == l_776), l_760.y)) == l_761.y)), p_1618->g_3)), ((VECTOR(int32_t, 2))(1L)), l_752.f0, (-1L), p_44, 0x67F7BAA7L, 0L)).hi, ((VECTOR(int32_t, 4))(1L))))).xxzyyyzw, ((VECTOR(int32_t, 8))(0L))))).s5267562263063666)).s2 ^ (-1L))))) ^ GROUP_DIVERGE(0, 1)))))
    { /* block id: 334 */
        union U3 ***l_781 = &p_1618->g_625;
        int16_t **l_788 = &p_1618->g_544;
        struct S2 l_793[7][6] = {{{18446744073709551609UL},{18446744073709551609UL},{0x473B49335371650AL},{0UL},{0x7391BBFCB66FED0DL},{0x33511B0B52CCA3E3L}},{{18446744073709551609UL},{18446744073709551609UL},{0x473B49335371650AL},{0UL},{0x7391BBFCB66FED0DL},{0x33511B0B52CCA3E3L}},{{18446744073709551609UL},{18446744073709551609UL},{0x473B49335371650AL},{0UL},{0x7391BBFCB66FED0DL},{0x33511B0B52CCA3E3L}},{{18446744073709551609UL},{18446744073709551609UL},{0x473B49335371650AL},{0UL},{0x7391BBFCB66FED0DL},{0x33511B0B52CCA3E3L}},{{18446744073709551609UL},{18446744073709551609UL},{0x473B49335371650AL},{0UL},{0x7391BBFCB66FED0DL},{0x33511B0B52CCA3E3L}},{{18446744073709551609UL},{18446744073709551609UL},{0x473B49335371650AL},{0UL},{0x7391BBFCB66FED0DL},{0x33511B0B52CCA3E3L}},{{18446744073709551609UL},{18446744073709551609UL},{0x473B49335371650AL},{0UL},{0x7391BBFCB66FED0DL},{0x33511B0B52CCA3E3L}}};
        int8_t *l_794 = &p_1618->g_30;
        VECTOR(int32_t, 16) l_796 = (VECTOR(int32_t, 16))(0x5E721D6CL, (VECTOR(int32_t, 4))(0x5E721D6CL, (VECTOR(int32_t, 2))(0x5E721D6CL, 1L), 1L), 1L, 0x5E721D6CL, 1L, (VECTOR(int32_t, 2))(0x5E721D6CL, 1L), (VECTOR(int32_t, 2))(0x5E721D6CL, 1L), 0x5E721D6CL, 1L, 0x5E721D6CL, 1L);
        int16_t l_798 = 1L;
        int32_t *l_799 = (void*)0;
        int32_t *l_800[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int i, j;
        for (p_1618->g_314 = 26; (p_1618->g_314 >= 38); p_1618->g_314++)
        { /* block id: 337 */
            for (p_1618->g_95 = 0; (p_1618->g_95 == (-28)); p_1618->g_95 = safe_sub_func_uint64_t_u_u(p_1618->g_95, 5))
            { /* block id: 340 */
                int16_t **l_785[9];
                int16_t ***l_786 = (void*)0;
                int16_t ***l_787 = &p_1618->g_543;
                int64_t *l_789 = &p_1618->g_367;
                int32_t *l_790 = &p_1618->g_745.f5;
                int i;
                for (i = 0; i < 9; i++)
                    l_785[i] = &p_1618->g_544;
                (*l_790) = (p_44 , (((((l_781 = l_781) != &p_1618->g_625) >= (((FAKE_DIVERGE(p_1618->group_2_offset, get_group_id(2), 10) && ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 4))(p_1618->g_782.yyxx)).lo)), 1L, 4L)).z) == (!(255UL == (p_44 <= (GROUP_DIVERGE(0, 1) , ((*l_789) = (p_44 < (((VECTOR(int32_t, 4))(clz(((VECTOR(int32_t, 2))((-9L), 7L)).yxxx))).w > (((*l_787) = l_785[8]) != (GROUP_DIVERGE(1, 1) , l_788)))))))))) || l_760.z)) <= p_1618->g_141[3]) & p_44));
            }
            for (p_1618->g_745.f1 = (-28); (p_1618->g_745.f1 != 8); p_1618->g_745.f1 = safe_add_func_int16_t_s_s(p_1618->g_745.f1, 4))
            { /* block id: 348 */
                struct S2 *l_795 = &p_1618->g_104;
                (*l_795) = func_53(l_793[0][4], &p_1618->g_30, l_776, &p_1618->g_30, l_794, p_1618);
            }
        }
        l_797 &= ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(l_796.sa978c30a82c374c2)))).sf6)).odd;
        l_761.y |= (p_1618->g_352.s1 ^= l_798);
    }
    else
    { /* block id: 355 */
        int32_t *l_801 = &p_1618->g_745.f5;
        VECTOR(uint8_t, 2) l_821 = (VECTOR(uint8_t, 2))(0xB6L, 0x91L);
        int32_t l_860 = 0x77D49171L;
        int32_t l_868 = 0x1346A90BL;
        int32_t l_869 = 2L;
        int32_t l_870 = 0x46026DFDL;
        int32_t l_873 = 0x2B73081DL;
        int32_t l_876 = (-1L);
        int32_t l_878 = 0L;
        VECTOR(uint64_t, 8) l_914 = (VECTOR(uint64_t, 8))(0x9D2AB43BE5525028L, (VECTOR(uint64_t, 4))(0x9D2AB43BE5525028L, (VECTOR(uint64_t, 2))(0x9D2AB43BE5525028L, 0x0F28A0F78D48D518L), 0x0F28A0F78D48D518L), 0x0F28A0F78D48D518L, 0x9D2AB43BE5525028L, 0x0F28A0F78D48D518L);
        union U3 *l_917 = &p_1618->g_918;
        struct S0 *l_930 = &p_1618->g_931[0][6];
        VECTOR(uint16_t, 8) l_946 = (VECTOR(uint16_t, 8))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 65529UL), 65529UL), 65529UL, 0UL, 65529UL);
        VECTOR(int16_t, 16) l_973 = (VECTOR(int16_t, 16))((-10L), (VECTOR(int16_t, 4))((-10L), (VECTOR(int16_t, 2))((-10L), 0x3D8EL), 0x3D8EL), 0x3D8EL, (-10L), 0x3D8EL, (VECTOR(int16_t, 2))((-10L), 0x3D8EL), (VECTOR(int16_t, 2))((-10L), 0x3D8EL), (-10L), 0x3D8EL, (-10L), 0x3D8EL);
        VECTOR(int16_t, 2) l_974 = (VECTOR(int16_t, 2))((-1L), 0x3B96L);
        int8_t *l_995 = &p_1618->g_745.f0;
        int32_t l_1010 = 1L;
        int32_t l_1011 = 0x02FF8F01L;
        int32_t l_1012[2];
        VECTOR(int8_t, 8) l_1040 = (VECTOR(int8_t, 8))((-9L), (VECTOR(int8_t, 4))((-9L), (VECTOR(int8_t, 2))((-9L), 0x62L), 0x62L), 0x62L, (-9L), 0x62L);
        VECTOR(uint16_t, 4) l_1107 = (VECTOR(uint16_t, 4))(0xD105L, (VECTOR(uint16_t, 2))(0xD105L, 0UL), 0UL);
        uint16_t l_1116 = 65532UL;
        struct S1 **l_1135[1][1];
        uint64_t l_1210[9] = {0xD4D60C92B0C59EBEL,0xD4D60C92B0C59EBEL,0xD4D60C92B0C59EBEL,0xD4D60C92B0C59EBEL,0xD4D60C92B0C59EBEL,0xD4D60C92B0C59EBEL,0xD4D60C92B0C59EBEL,0xD4D60C92B0C59EBEL,0xD4D60C92B0C59EBEL};
        int8_t l_1232 = 1L;
        uint16_t **l_1242 = (void*)0;
        VECTOR(int32_t, 16) l_1246 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 9L), 9L), 9L, (-1L), 9L, (VECTOR(int32_t, 2))((-1L), 9L), (VECTOR(int32_t, 2))((-1L), 9L), (-1L), 9L, (-1L), 9L);
        VECTOR(int64_t, 16) l_1257 = (VECTOR(int64_t, 16))(0L, (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 0x16289BDC9E234371L), 0x16289BDC9E234371L), 0x16289BDC9E234371L, 0L, 0x16289BDC9E234371L, (VECTOR(int64_t, 2))(0L, 0x16289BDC9E234371L), (VECTOR(int64_t, 2))(0L, 0x16289BDC9E234371L), 0L, 0x16289BDC9E234371L, 0L, 0x16289BDC9E234371L);
        int16_t *l_1260 = (void*)0;
        union U6 *l_1278 = &p_1618->g_1279;
        int64_t *l_1289[7][10] = {{&p_1618->g_464,&p_1618->g_464,&p_1618->g_464,&p_1618->g_464,&p_1618->g_464,&p_1618->g_464,&p_1618->g_464,&p_1618->g_464,&p_1618->g_464,&p_1618->g_464},{&p_1618->g_464,&p_1618->g_464,&p_1618->g_464,&p_1618->g_464,&p_1618->g_464,&p_1618->g_464,&p_1618->g_464,&p_1618->g_464,&p_1618->g_464,&p_1618->g_464},{&p_1618->g_464,&p_1618->g_464,&p_1618->g_464,&p_1618->g_464,&p_1618->g_464,&p_1618->g_464,&p_1618->g_464,&p_1618->g_464,&p_1618->g_464,&p_1618->g_464},{&p_1618->g_464,&p_1618->g_464,&p_1618->g_464,&p_1618->g_464,&p_1618->g_464,&p_1618->g_464,&p_1618->g_464,&p_1618->g_464,&p_1618->g_464,&p_1618->g_464},{&p_1618->g_464,&p_1618->g_464,&p_1618->g_464,&p_1618->g_464,&p_1618->g_464,&p_1618->g_464,&p_1618->g_464,&p_1618->g_464,&p_1618->g_464,&p_1618->g_464},{&p_1618->g_464,&p_1618->g_464,&p_1618->g_464,&p_1618->g_464,&p_1618->g_464,&p_1618->g_464,&p_1618->g_464,&p_1618->g_464,&p_1618->g_464,&p_1618->g_464},{&p_1618->g_464,&p_1618->g_464,&p_1618->g_464,&p_1618->g_464,&p_1618->g_464,&p_1618->g_464,&p_1618->g_464,&p_1618->g_464,&p_1618->g_464,&p_1618->g_464}};
        int i, j;
        for (i = 0; i < 2; i++)
            l_1012[i] = (-2L);
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 1; j++)
                l_1135[i][j] = &p_1618->g_744[1];
        }
        if (((*l_801) = p_44))
        { /* block id: 357 */
            volatile union U5 **l_804[8];
            int32_t l_826 = 4L;
            int32_t *l_828 = &p_1618->g_95;
            union U5 ***l_834 = &p_1618->g_831;
            VECTOR(uint32_t, 4) l_836 = (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 0xB4A06308L), 0xB4A06308L);
            uint32_t *l_837 = (void*)0;
            uint32_t *l_838 = (void*)0;
            uint32_t *l_839 = (void*)0;
            uint32_t *l_840 = &l_827;
            int32_t *l_843 = (void*)0;
            int32_t l_859 = (-2L);
            int32_t l_861 = 0x58A20D9BL;
            int32_t l_862 = 0x44294023L;
            int32_t l_863 = (-1L);
            int64_t l_864 = 0x5BD95EF2DB82FEFBL;
            int16_t l_865 = (-6L);
            int32_t l_866 = (-6L);
            int32_t l_867[4];
            int i;
            for (i = 0; i < 8; i++)
                l_804[i] = &p_1618->g_802;
            for (i = 0; i < 4; i++)
                l_867[i] = 1L;
            l_805[4] = p_1618->g_802;
            (*l_828) &= (safe_add_func_uint16_t_u_u((safe_add_func_int32_t_s_s(0x4D5BBEF4L, (l_827 &= (((*p_1618->g_438) |= (safe_mod_func_int64_t_s_s(((safe_mul_func_int16_t_s_s((l_761.y == (safe_div_func_int32_t_s_s((safe_rshift_func_uint16_t_u_u(((safe_mul_func_uint8_t_u_u(((VECTOR(uint8_t, 4))(l_821.yxyy)).y, ((safe_mod_func_uint64_t_u_u(0x8EEC63A30EAF0272L, l_760.w)) < 0xF3361794L))) <= (safe_mul_func_uint16_t_u_u(((((~((p_44 , (void*)0) != (void*)0)) | (+((-1L) > (-1L)))) != p_44) < 0x29D25566L), (*l_801)))), 2)), (*l_801)))), (*l_801))) & (*l_801)), 5L))) && l_826)))), (*p_1618->g_544)));
            l_828 = (*p_1618->g_184);
            if ((((*l_801) = ((safe_add_func_int8_t_s_s(0L, ((((p_1618->g_835 = ((*l_834) = p_1618->g_831)) != &p_1618->g_832) , (&p_1618->g_246[2][3][8] != &p_1618->g_246[2][3][8])) & (((VECTOR(uint32_t, 4))(l_836.wyww)).x | (++(*l_840)))))) >= ((*p_45) = 0L))) , (((safe_rshift_func_int16_t_s_s(l_752.f0, 7)) , ((safe_mod_func_int8_t_s_s((safe_add_func_uint8_t_u_u(((safe_div_func_int32_t_s_s(0x4E53C52AL, (safe_lshift_func_int8_t_s_s(0x1DL, 5)))) | p_1618->g_174.x), p_1618->g_854)), p_44)) != 0x5904B0C5L)) , (*l_801))))
            { /* block id: 368 */
                uint32_t l_857 = 0x7BBDE69BL;
                int32_t l_871 = 0x67CE948FL;
                int32_t l_872 = 0x4B7CD5B9L;
                int32_t l_874 = 0x33C1C970L;
                int32_t l_875[8][10][3] = {{{(-8L),4L,(-8L)},{(-8L),4L,(-8L)},{(-8L),4L,(-8L)},{(-8L),4L,(-8L)},{(-8L),4L,(-8L)},{(-8L),4L,(-8L)},{(-8L),4L,(-8L)},{(-8L),4L,(-8L)},{(-8L),4L,(-8L)},{(-8L),4L,(-8L)}},{{(-8L),4L,(-8L)},{(-8L),4L,(-8L)},{(-8L),4L,(-8L)},{(-8L),4L,(-8L)},{(-8L),4L,(-8L)},{(-8L),4L,(-8L)},{(-8L),4L,(-8L)},{(-8L),4L,(-8L)},{(-8L),4L,(-8L)},{(-8L),4L,(-8L)}},{{(-8L),4L,(-8L)},{(-8L),4L,(-8L)},{(-8L),4L,(-8L)},{(-8L),4L,(-8L)},{(-8L),4L,(-8L)},{(-8L),4L,(-8L)},{(-8L),4L,(-8L)},{(-8L),4L,(-8L)},{(-8L),4L,(-8L)},{(-8L),4L,(-8L)}},{{(-8L),4L,(-8L)},{(-8L),4L,(-8L)},{(-8L),4L,(-8L)},{(-8L),4L,(-8L)},{(-8L),4L,(-8L)},{(-8L),4L,(-8L)},{(-8L),4L,(-8L)},{(-8L),4L,(-8L)},{(-8L),4L,(-8L)},{(-8L),4L,(-8L)}},{{(-8L),4L,(-8L)},{(-8L),4L,(-8L)},{(-8L),4L,(-8L)},{(-8L),4L,(-8L)},{(-8L),4L,(-8L)},{(-8L),4L,(-8L)},{(-8L),4L,(-8L)},{(-8L),4L,(-8L)},{(-8L),4L,(-8L)},{(-8L),4L,(-8L)}},{{(-8L),4L,(-8L)},{(-8L),4L,(-8L)},{(-8L),4L,(-8L)},{(-8L),4L,(-8L)},{(-8L),4L,(-8L)},{(-8L),4L,(-8L)},{(-8L),4L,(-8L)},{(-8L),4L,(-8L)},{(-8L),4L,(-8L)},{(-8L),4L,(-8L)}},{{(-8L),4L,(-8L)},{(-8L),4L,(-8L)},{(-8L),4L,(-8L)},{(-8L),4L,(-8L)},{(-8L),4L,(-8L)},{(-8L),4L,(-8L)},{(-8L),4L,(-8L)},{(-8L),4L,(-8L)},{(-8L),4L,(-8L)},{(-8L),4L,(-8L)}},{{(-8L),4L,(-8L)},{(-8L),4L,(-8L)},{(-8L),4L,(-8L)},{(-8L),4L,(-8L)},{(-8L),4L,(-8L)},{(-8L),4L,(-8L)},{(-8L),4L,(-8L)},{(-8L),4L,(-8L)},{(-8L),4L,(-8L)},{(-8L),4L,(-8L)}}};
                int i, j, k;
                for (p_1618->g_745.f0 = 0; (p_1618->g_745.f0 <= 15); p_1618->g_745.f0 = safe_add_func_int16_t_s_s(p_1618->g_745.f0, 8))
                { /* block id: 371 */
                    int32_t *l_858[10][8][3] = {{{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]},{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]},{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]},{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]},{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]},{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]},{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]},{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]}},{{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]},{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]},{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]},{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]},{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]},{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]},{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]},{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]}},{{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]},{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]},{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]},{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]},{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]},{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]},{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]},{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]}},{{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]},{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]},{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]},{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]},{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]},{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]},{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]},{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]}},{{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]},{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]},{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]},{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]},{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]},{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]},{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]},{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]}},{{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]},{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]},{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]},{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]},{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]},{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]},{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]},{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]}},{{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]},{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]},{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]},{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]},{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]},{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]},{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]},{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]}},{{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]},{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]},{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]},{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]},{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]},{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]},{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]},{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]}},{{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]},{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]},{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]},{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]},{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]},{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]},{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]},{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]}},{{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]},{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]},{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]},{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]},{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]},{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]},{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]},{(void*)0,&p_1618->g_745.f5,&p_1618->g_7[0][4][2]}}};
                    int32_t l_877[4][3] = {{(-1L),0x028D0F9FL,(-1L)},{(-1L),0x028D0F9FL,(-1L)},{(-1L),0x028D0F9FL,(-1L)},{(-1L),0x028D0F9FL,(-1L)}};
                    uint32_t l_879 = 0xEDA157D6L;
                    int i, j, k;
                    if (p_44)
                        break;
                    (*l_801) = l_857;
                    ++l_879;
                }
            }
            else
            { /* block id: 376 */
                VECTOR(uint8_t, 16) l_890 = (VECTOR(uint8_t, 16))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 0UL), 0UL), 0UL, 1UL, 0UL, (VECTOR(uint8_t, 2))(1UL, 0UL), (VECTOR(uint8_t, 2))(1UL, 0UL), 1UL, 0UL, 1UL, 0UL);
                int32_t l_897 = (-1L);
                union U3 *l_915 = &p_1618->g_916;
                int i;
                p_1618->g_882[0][8] = ((*p_1618->g_184) = (*p_1618->g_184));
                l_828 = &l_870;
                for (p_1618->g_104.f0 = 0; (p_1618->g_104.f0 <= 38); p_1618->g_104.f0 = safe_add_func_int32_t_s_s(p_1618->g_104.f0, 7))
                { /* block id: 382 */
                    struct S2 l_902 = {18446744073709551615UL};
                    (*l_828) |= (-1L);
                    for (l_876 = 0; (l_876 > (-12)); l_876--)
                    { /* block id: 386 */
                        int32_t *l_887 = &l_878;
                        int32_t *l_888 = &l_870;
                        int32_t *l_889[8];
                        int i;
                        for (i = 0; i < 8; i++)
                            l_889[i] = &l_873;
                        ++l_890.s3;
                        l_897 &= (safe_lshift_func_uint8_t_u_u((1UL < (safe_rshift_func_int8_t_s_u(0x5BL, 4))), 2));
                        if (p_44)
                            continue;
                    }
                    if ((l_761.z = (-1L)))
                    { /* block id: 392 */
                        int16_t l_903 = 0x1427L;
                        int32_t l_921 = (-1L);
                        (*l_801) = (~(((*l_801) <= ((safe_add_func_int64_t_s_s((l_921 = (safe_mod_func_int16_t_s_s(p_44, ((+((((((l_902 , ((**p_1618->g_543) = ((l_903 || (safe_mod_func_uint64_t_u_u(p_44, p_44))) ^ (((safe_add_func_uint32_t_u_u((--(*l_840)), (safe_rshift_func_uint16_t_u_u(l_903, (safe_rshift_func_uint8_t_u_u(250UL, 3)))))) , (l_897 &= ((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 8))(l_914.s55161456)).s17)).lo)) && ((p_1618->g_919 = (l_917 = l_915)) == (void*)0))))) != 1UL) | l_902.f0) <= p_1618->g_30) && 1L) , 0x05600A35L)) && p_44)))), 0x06FB45E5991044F4L)) >= (*l_801))) , 0x171FDC17L));
                    }
                    else
                    { /* block id: 400 */
                        uint32_t l_923 = 0x32B15398L;
                        (*l_801) |= ((((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(min(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(0x4F23L, 0L)))).yxyy)).lo, (int16_t)p_44))).xxxyyxyy)).s4 , p_1618->g_922) == (void*)0);
                        ++l_923;
                    }
                    for (l_862 = 0; (l_862 <= (-21)); l_862 = safe_sub_func_uint16_t_u_u(l_862, 5))
                    { /* block id: 406 */
                        (*l_801) |= p_44;
                        return &p_1618->g_30;
                    }
                }
            }
        }
        else
        { /* block id: 412 */
            uint16_t l_994 = 0x6B3DL;
            for (l_749 = 0; (l_749 != 57); l_749 = safe_add_func_int32_t_s_s(l_749, 3))
            { /* block id: 415 */
                uint32_t *l_940 = &p_1618->g_310;
                VECTOR(int64_t, 8) l_943 = (VECTOR(int64_t, 8))(8L, (VECTOR(int64_t, 4))(8L, (VECTOR(int64_t, 2))(8L, 0L), 0L), 0L, 8L, 0L);
                uint64_t *l_952 = &p_1618->g_246[2][3][3];
                int32_t l_993[3][10][4] = {{{(-5L),0x32A24487L,(-6L),0L},{(-5L),0x32A24487L,(-6L),0L},{(-5L),0x32A24487L,(-6L),0L},{(-5L),0x32A24487L,(-6L),0L},{(-5L),0x32A24487L,(-6L),0L},{(-5L),0x32A24487L,(-6L),0L},{(-5L),0x32A24487L,(-6L),0L},{(-5L),0x32A24487L,(-6L),0L},{(-5L),0x32A24487L,(-6L),0L},{(-5L),0x32A24487L,(-6L),0L}},{{(-5L),0x32A24487L,(-6L),0L},{(-5L),0x32A24487L,(-6L),0L},{(-5L),0x32A24487L,(-6L),0L},{(-5L),0x32A24487L,(-6L),0L},{(-5L),0x32A24487L,(-6L),0L},{(-5L),0x32A24487L,(-6L),0L},{(-5L),0x32A24487L,(-6L),0L},{(-5L),0x32A24487L,(-6L),0L},{(-5L),0x32A24487L,(-6L),0L},{(-5L),0x32A24487L,(-6L),0L}},{{(-5L),0x32A24487L,(-6L),0L},{(-5L),0x32A24487L,(-6L),0L},{(-5L),0x32A24487L,(-6L),0L},{(-5L),0x32A24487L,(-6L),0L},{(-5L),0x32A24487L,(-6L),0L},{(-5L),0x32A24487L,(-6L),0L},{(-5L),0x32A24487L,(-6L),0L},{(-5L),0x32A24487L,(-6L),0L},{(-5L),0x32A24487L,(-6L),0L},{(-5L),0x32A24487L,(-6L),0L}}};
                int i, j, k;
                if (((*l_801) |= (((void*)0 != l_930) >= (((safe_unary_minus_func_uint32_t_u((safe_mul_func_uint16_t_u_u((safe_div_func_int16_t_s_s((safe_mul_func_uint16_t_u_u(((VECTOR(uint16_t, 4))(upsample(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(p_1618->g_352.s1, 1UL, 246UL, 0xD6L)).zzwwwwzy)).odd, ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(p_1618->g_939.zwzx)), (((*l_940)--) <= ((-5L) < (((VECTOR(int64_t, 2))(l_943.s70)).even != (*p_1618->g_438)))), (p_1618->g_939.x--), 3UL, 0xA3L)).lo))).z, ((VECTOR(uint16_t, 2))(65535UL, 1UL)).even)), ((VECTOR(uint16_t, 4))(rhadd(((VECTOR(uint16_t, 4))(65535UL, ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 2))(l_946.s01)))).xxyy)).w, 0x91C1L, 0x6BC9L)), ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(1UL, 0UL)), 0x3AF5L, 0UL))))).y)), (safe_unary_minus_func_int16_t_s(l_757.z)))))) ^ (safe_lshift_func_uint16_t_u_s(65526UL, ((((((*l_952) = (safe_sub_func_uint32_t_u_u(0xC045E339L, p_1618->g_520.s2))) ^ p_44) , p_44) != l_943.s4) , l_943.s3)))) > p_44))))
                { /* block id: 420 */
                    l_805[4] = l_805[0];
                    if ((atomic_inc(&p_1618->l_atomic_input[12]) == 0))
                    { /* block id: 423 */
                        uint16_t l_953 = 0xC724L;
                        uint64_t l_954[3];
                        VECTOR(uint32_t, 4) l_955 = (VECTOR(uint32_t, 4))(0x895EB004L, (VECTOR(uint32_t, 2))(0x895EB004L, 5UL), 5UL);
                        VECTOR(uint32_t, 4) l_956 = (VECTOR(uint32_t, 4))(0x88533A0CL, (VECTOR(uint32_t, 2))(0x88533A0CL, 0xEA225477L), 0xEA225477L);
                        VECTOR(uint32_t, 2) l_957 = (VECTOR(uint32_t, 2))(0xB791A053L, 0x628D09B0L);
                        VECTOR(uint32_t, 4) l_958 = (VECTOR(uint32_t, 4))(0xE10DE9A2L, (VECTOR(uint32_t, 2))(0xE10DE9A2L, 0x774867F8L), 0x774867F8L);
                        VECTOR(uint32_t, 16) l_959 = (VECTOR(uint32_t, 16))(7UL, (VECTOR(uint32_t, 4))(7UL, (VECTOR(uint32_t, 2))(7UL, 0UL), 0UL), 0UL, 7UL, 0UL, (VECTOR(uint32_t, 2))(7UL, 0UL), (VECTOR(uint32_t, 2))(7UL, 0UL), 7UL, 0UL, 7UL, 0UL);
                        int32_t *l_960 = (void*)0;
                        struct S1 l_962 = {0x10L,0xEEB0CBDB45D11599L,0x4E0213FAL,{0x35L,18446744073709551615UL,0x4CA6452FL},0x2BL,0x4B7E1C8AL,0x1BL};/* VOLATILE GLOBAL l_962 */
                        struct S1 *l_961 = &l_962;
                        struct S1 l_964 = {1L,1UL,0x04FB5118L,{-1L,0x41F07ED6BD0F7161L,0xFDFFF7B0L},0xA7L,5L,-1L};/* VOLATILE GLOBAL l_964 */
                        struct S1 *l_963 = &l_964;
                        struct S1 l_966 = {-1L,0x9B90428D15163369L,0L,{0x2DL,18446744073709551610UL,0x6B38C2B3L},6UL,0x1B9EAF06L,0x1FL};/* VOLATILE GLOBAL l_966 */
                        struct S1 *l_965 = &l_966;
                        int i;
                        for (i = 0; i < 3; i++)
                            l_954[i] = 0x7A6A1514CFD1FB7EL;
                        l_953 = 0L;
                        l_960 = (l_954[2] , (((VECTOR(uint32_t, 16))(mul_hi(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))(rhadd(((VECTOR(uint32_t, 8))(l_955.wywywwyx)).s02, ((VECTOR(uint32_t, 16))(mad_hi(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(l_956.xy)).yyxyyyxy)).s77)), 1UL, 0x0D06C8C0L)).yyywyzxwywxwzzww)), ((VECTOR(uint32_t, 16))(sub_sat(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 8))(l_957.yxyyyyyx)).s53)).xxxxyxyxyxyxxxyx, ((VECTOR(uint32_t, 4))(0x4BD98BA8L, 0x56209FB7L, 0x9F9C13C8L, 1UL)).wxwzywzxyxyzwyzz))), ((VECTOR(uint32_t, 2))(l_958.zy)).xxyxxyyyyxxyyxxy))).s4f))).yxxxxyxxxyxxyyxy)).s8327)).yzyyxyzz)).s7060252242207361, ((VECTOR(uint32_t, 2))(l_959.s66)).yxxyyyxyyyyxxxyx))).sd , (void*)0));
                        l_965 = (l_963 = l_961);
                        unsigned int result = 0;
                        result += l_953;
                        int l_954_i0;
                        for (l_954_i0 = 0; l_954_i0 < 3; l_954_i0++) {
                            result += l_954[l_954_i0];
                        }
                        result += l_955.w;
                        result += l_955.z;
                        result += l_955.y;
                        result += l_955.x;
                        result += l_956.w;
                        result += l_956.z;
                        result += l_956.y;
                        result += l_956.x;
                        result += l_957.y;
                        result += l_957.x;
                        result += l_958.w;
                        result += l_958.z;
                        result += l_958.y;
                        result += l_958.x;
                        result += l_959.sf;
                        result += l_959.se;
                        result += l_959.sd;
                        result += l_959.sc;
                        result += l_959.sb;
                        result += l_959.sa;
                        result += l_959.s9;
                        result += l_959.s8;
                        result += l_959.s7;
                        result += l_959.s6;
                        result += l_959.s5;
                        result += l_959.s4;
                        result += l_959.s3;
                        result += l_959.s2;
                        result += l_959.s1;
                        result += l_959.s0;
                        result += l_962.f0;
                        result += l_962.f1;
                        result += l_962.f2;
                        result += l_962.f3.f0;
                        result += l_962.f3.f1;
                        result += l_962.f3.f2;
                        result += l_962.f4;
                        result += l_962.f5;
                        result += l_962.f6;
                        result += l_964.f0;
                        result += l_964.f1;
                        result += l_964.f2;
                        result += l_964.f3.f0;
                        result += l_964.f3.f1;
                        result += l_964.f3.f2;
                        result += l_964.f4;
                        result += l_964.f5;
                        result += l_964.f6;
                        result += l_966.f0;
                        result += l_966.f1;
                        result += l_966.f2;
                        result += l_966.f3.f0;
                        result += l_966.f3.f1;
                        result += l_966.f3.f2;
                        result += l_966.f4;
                        result += l_966.f5;
                        result += l_966.f6;
                        atomic_add(&p_1618->l_special_values[12], result);
                    }
                    else
                    { /* block id: 428 */
                        (1 + 1);
                    }
                    (*l_801) = p_44;
                }
                else
                { /* block id: 432 */
                    uint16_t *l_971 = &p_1618->g_209;
                    VECTOR(uint16_t, 4) l_972 = (VECTOR(uint16_t, 4))(0x4541L, (VECTOR(uint16_t, 2))(0x4541L, 0x9C8BL), 0x9C8BL);
                    int16_t *l_983 = (void*)0;
                    int16_t *l_984 = (void*)0;
                    int16_t *l_985 = &p_1618->g_249;
                    union U3 *l_986[10][6] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
                    union U3 *l_990 = &p_1618->g_991;
                    int16_t *l_992 = &p_1618->g_833[0][0].f1;
                    int i, j;
                    l_994 &= (!((safe_mod_func_int16_t_s_s((**p_1618->g_543), ((VECTOR(uint16_t, 16))(0x7960L, (((VECTOR(uint16_t, 4))(p_1618->g_969.s9cca)).z <= ((VECTOR(uint16_t, 4))(((*l_971) = ((VECTOR(uint16_t, 2))(p_1618->g_970.xx)).lo), ((VECTOR(uint16_t, 2))(l_972.xz)), 5UL)).y), ((VECTOR(uint16_t, 8))(mad_sat(((VECTOR(uint16_t, 2))(add_sat(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(abs(((VECTOR(int16_t, 4))(((~(((*l_952) = l_972.w) & ((((VECTOR(int16_t, 2))(((VECTOR(int16_t, 4))(min(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(0x3357L, (-7L), 0x28AAL, 0L)), ((VECTOR(int16_t, 2))(l_973.s81)), 0x2040L, 0x23B1L)))).odd, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(l_974.yy)), 0L, 0x057EL))))).lo)).hi != ((!p_44) == (((l_993[1][1][1] |= (l_761.x ^= (safe_sub_func_uint64_t_u_u((safe_mod_func_int16_t_s_s((safe_sub_func_int8_t_s_s((((*l_985) = (safe_rshift_func_uint16_t_u_u((p_44 || GROUP_DIVERGE(0, 1)), (4294967292UL >= (p_44 , 0x7D364FD6L))))) > ((l_986[7][2] = l_917) != l_990)), p_1618->g_130)), p_44)), l_749)))) < 0x2466L) , (-2L)))) , GROUP_DIVERGE(0, 1)))) | p_44), 0x37ABL, (-1L), (-10L))).even))).yyxxyxyyxxxyxyyy)).s60, ((VECTOR(uint16_t, 2))(0x404DL))))).xxxyxxyx, ((VECTOR(uint16_t, 8))(0xDC34L)), ((VECTOR(uint16_t, 8))(65535UL))))), ((VECTOR(uint16_t, 4))(65535UL)), 65535UL, 3UL)).sb)) && (*p_1618->g_438)));
                    return l_995;
                }
                for (p_1618->g_30 = (-16); (p_1618->g_30 <= 10); p_1618->g_30++)
                { /* block id: 444 */
                    struct S0 **l_998 = &l_930;
                    (*l_998) = l_930;
                }
            }
        }
        (*p_1618->g_184) = &l_869;
        if (p_44)
        { /* block id: 450 */
            int8_t l_1007 = (-1L);
            int32_t l_1008 = 0x56B298F8L;
            int32_t l_1009[7] = {(-8L),(-8L),(-8L),(-8L),(-8L),(-8L),(-8L)};
            int i;
            (*p_1618->g_184) = (*p_1618->g_184);
            for (p_1618->g_745.f2 = (-18); (p_1618->g_745.f2 < 2); p_1618->g_745.f2 = safe_add_func_int64_t_s_s(p_1618->g_745.f2, 1))
            { /* block id: 454 */
                int32_t *l_1001 = &l_868;
                int32_t *l_1002 = &l_869;
                int32_t *l_1003 = &p_1618->g_95;
                int32_t *l_1004 = &l_868;
                int32_t *l_1005 = &p_1618->g_95;
                int32_t *l_1006[1][9][3] = {{{(void*)0,(void*)0,&l_869},{(void*)0,(void*)0,&l_869},{(void*)0,(void*)0,&l_869},{(void*)0,(void*)0,&l_869},{(void*)0,(void*)0,&l_869},{(void*)0,(void*)0,&l_869},{(void*)0,(void*)0,&l_869},{(void*)0,(void*)0,&l_869},{(void*)0,(void*)0,&l_869}}};
                uint8_t l_1013 = 248UL;
                uint32_t *l_1021 = (void*)0;
                uint32_t *l_1022[6][8][5] = {{{&p_1618->g_250,&l_827,(void*)0,&p_1618->g_250,&l_1016[0]},{&p_1618->g_250,&l_827,(void*)0,&p_1618->g_250,&l_1016[0]},{&p_1618->g_250,&l_827,(void*)0,&p_1618->g_250,&l_1016[0]},{&p_1618->g_250,&l_827,(void*)0,&p_1618->g_250,&l_1016[0]},{&p_1618->g_250,&l_827,(void*)0,&p_1618->g_250,&l_1016[0]},{&p_1618->g_250,&l_827,(void*)0,&p_1618->g_250,&l_1016[0]},{&p_1618->g_250,&l_827,(void*)0,&p_1618->g_250,&l_1016[0]},{&p_1618->g_250,&l_827,(void*)0,&p_1618->g_250,&l_1016[0]}},{{&p_1618->g_250,&l_827,(void*)0,&p_1618->g_250,&l_1016[0]},{&p_1618->g_250,&l_827,(void*)0,&p_1618->g_250,&l_1016[0]},{&p_1618->g_250,&l_827,(void*)0,&p_1618->g_250,&l_1016[0]},{&p_1618->g_250,&l_827,(void*)0,&p_1618->g_250,&l_1016[0]},{&p_1618->g_250,&l_827,(void*)0,&p_1618->g_250,&l_1016[0]},{&p_1618->g_250,&l_827,(void*)0,&p_1618->g_250,&l_1016[0]},{&p_1618->g_250,&l_827,(void*)0,&p_1618->g_250,&l_1016[0]},{&p_1618->g_250,&l_827,(void*)0,&p_1618->g_250,&l_1016[0]}},{{&p_1618->g_250,&l_827,(void*)0,&p_1618->g_250,&l_1016[0]},{&p_1618->g_250,&l_827,(void*)0,&p_1618->g_250,&l_1016[0]},{&p_1618->g_250,&l_827,(void*)0,&p_1618->g_250,&l_1016[0]},{&p_1618->g_250,&l_827,(void*)0,&p_1618->g_250,&l_1016[0]},{&p_1618->g_250,&l_827,(void*)0,&p_1618->g_250,&l_1016[0]},{&p_1618->g_250,&l_827,(void*)0,&p_1618->g_250,&l_1016[0]},{&p_1618->g_250,&l_827,(void*)0,&p_1618->g_250,&l_1016[0]},{&p_1618->g_250,&l_827,(void*)0,&p_1618->g_250,&l_1016[0]}},{{&p_1618->g_250,&l_827,(void*)0,&p_1618->g_250,&l_1016[0]},{&p_1618->g_250,&l_827,(void*)0,&p_1618->g_250,&l_1016[0]},{&p_1618->g_250,&l_827,(void*)0,&p_1618->g_250,&l_1016[0]},{&p_1618->g_250,&l_827,(void*)0,&p_1618->g_250,&l_1016[0]},{&p_1618->g_250,&l_827,(void*)0,&p_1618->g_250,&l_1016[0]},{&p_1618->g_250,&l_827,(void*)0,&p_1618->g_250,&l_1016[0]},{&p_1618->g_250,&l_827,(void*)0,&p_1618->g_250,&l_1016[0]},{&p_1618->g_250,&l_827,(void*)0,&p_1618->g_250,&l_1016[0]}},{{&p_1618->g_250,&l_827,(void*)0,&p_1618->g_250,&l_1016[0]},{&p_1618->g_250,&l_827,(void*)0,&p_1618->g_250,&l_1016[0]},{&p_1618->g_250,&l_827,(void*)0,&p_1618->g_250,&l_1016[0]},{&p_1618->g_250,&l_827,(void*)0,&p_1618->g_250,&l_1016[0]},{&p_1618->g_250,&l_827,(void*)0,&p_1618->g_250,&l_1016[0]},{&p_1618->g_250,&l_827,(void*)0,&p_1618->g_250,&l_1016[0]},{&p_1618->g_250,&l_827,(void*)0,&p_1618->g_250,&l_1016[0]},{&p_1618->g_250,&l_827,(void*)0,&p_1618->g_250,&l_1016[0]}},{{&p_1618->g_250,&l_827,(void*)0,&p_1618->g_250,&l_1016[0]},{&p_1618->g_250,&l_827,(void*)0,&p_1618->g_250,&l_1016[0]},{&p_1618->g_250,&l_827,(void*)0,&p_1618->g_250,&l_1016[0]},{&p_1618->g_250,&l_827,(void*)0,&p_1618->g_250,&l_1016[0]},{&p_1618->g_250,&l_827,(void*)0,&p_1618->g_250,&l_1016[0]},{&p_1618->g_250,&l_827,(void*)0,&p_1618->g_250,&l_1016[0]},{&p_1618->g_250,&l_827,(void*)0,&p_1618->g_250,&l_1016[0]},{&p_1618->g_250,&l_827,(void*)0,&p_1618->g_250,&l_1016[0]}}};
                int i, j, k;
                (**p_1618->g_184) = (*p_1618->g_185);
                l_1013--;
                --l_1016[0];
                (*l_801) ^= ((((l_761.z = (65534UL ^ l_1016[0])) >= (((safe_mul_func_int8_t_s_s((*p_45), p_1618->g_745.f1)) , (*l_1004)) != ((**p_1618->g_184) = 1L))) != ((VECTOR(uint32_t, 16))((safe_mul_func_uint16_t_u_u(p_44, p_44)), 3UL, 0UL, (safe_sub_func_int16_t_s_s((safe_sub_func_uint16_t_u_u((((void*)0 == &p_1618->g_246[2][3][8]) != l_1008), p_44)), p_44)), GROUP_DIVERGE(2, 1), ((VECTOR(uint32_t, 2))(0xE8332A13L)), 0xF96F7BA3L, 0xD50DADD9L, p_44, ((VECTOR(uint32_t, 4))(0x730AABDAL)), 0x5A241427L, 7UL)).s9) != p_44);
            }
        }
        else
        { /* block id: 462 */
            VECTOR(uint8_t, 8) l_1041 = (VECTOR(uint8_t, 8))(0xC1L, (VECTOR(uint8_t, 4))(0xC1L, (VECTOR(uint8_t, 2))(0xC1L, 0xE0L), 0xE0L), 0xE0L, 0xC1L, 0xE0L);
            VECTOR(uint32_t, 16) l_1046 = (VECTOR(uint32_t, 16))(6UL, (VECTOR(uint32_t, 4))(6UL, (VECTOR(uint32_t, 2))(6UL, 0x2A8E8557L), 0x2A8E8557L), 0x2A8E8557L, 6UL, 0x2A8E8557L, (VECTOR(uint32_t, 2))(6UL, 0x2A8E8557L), (VECTOR(uint32_t, 2))(6UL, 0x2A8E8557L), 6UL, 0x2A8E8557L, 6UL, 0x2A8E8557L);
            uint32_t *l_1047 = &p_1618->g_250;
            uint64_t *l_1050 = &p_1618->g_931[0][6].f1;
            uint64_t *l_1051 = (void*)0;
            uint64_t *l_1052 = &p_1618->g_59.f0;
            int32_t *l_1053 = &p_1618->g_95;
            uint32_t l_1076[5] = {1UL,1UL,1UL,1UL,1UL};
            VECTOR(uint8_t, 2) l_1081 = (VECTOR(uint8_t, 2))(0x16L, 0x22L);
            VECTOR(uint16_t, 8) l_1094 = (VECTOR(uint16_t, 8))(0x4C1FL, (VECTOR(uint16_t, 4))(0x4C1FL, (VECTOR(uint16_t, 2))(0x4C1FL, 65535UL), 65535UL), 65535UL, 0x4C1FL, 65535UL);
            uint64_t l_1095 = 2UL;
            uint16_t l_1098 = 0x84F0L;
            VECTOR(int8_t, 16) l_1152 = (VECTOR(int8_t, 16))(0x4EL, (VECTOR(int8_t, 4))(0x4EL, (VECTOR(int8_t, 2))(0x4EL, 0x6DL), 0x6DL), 0x6DL, 0x4EL, 0x6DL, (VECTOR(int8_t, 2))(0x4EL, 0x6DL), (VECTOR(int8_t, 2))(0x4EL, 0x6DL), 0x4EL, 0x6DL, 0x4EL, 0x6DL);
            int32_t l_1159 = (-1L);
            int32_t l_1160 = 0x19D136A2L;
            VECTOR(int32_t, 2) l_1161 = (VECTOR(int32_t, 2))(0L, 0x764D28D6L);
            int16_t *l_1194 = (void*)0;
            struct S2 l_1205 = {1UL};
            VECTOR(uint32_t, 16) l_1256 = (VECTOR(uint32_t, 16))(0x81C2C180L, (VECTOR(uint32_t, 4))(0x81C2C180L, (VECTOR(uint32_t, 2))(0x81C2C180L, 0xBE3C8E02L), 0xBE3C8E02L), 0xBE3C8E02L, 0x81C2C180L, 0xBE3C8E02L, (VECTOR(uint32_t, 2))(0x81C2C180L, 0xBE3C8E02L), (VECTOR(uint32_t, 2))(0x81C2C180L, 0xBE3C8E02L), 0x81C2C180L, 0xBE3C8E02L, 0x81C2C180L, 0xBE3C8E02L);
            VECTOR(int64_t, 4) l_1269 = (VECTOR(int64_t, 4))((-5L), (VECTOR(int64_t, 2))((-5L), (-4L)), (-4L));
            int i, j;
            barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
            p_1618->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 200)), permutations[(safe_mod_func_uint32_t_u_u(GROUP_DIVERGE(2, 1), 10))][(safe_mod_func_uint32_t_u_u(p_1618->tid, 200))]));
            (*l_1053) ^= ((*p_1618->g_185) = (((*l_1052) = ((*p_1618->g_438) = (safe_div_func_uint16_t_u_u(((VECTOR(uint16_t, 2))(p_1618->g_1033.s6b)).odd, ((safe_add_func_int64_t_s_s(p_44, ((*l_1050) ^= ((-1L) <= (((((safe_div_func_uint32_t_u_u((p_44 == (p_1618->g_104 , (safe_lshift_func_int8_t_s_u(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 8))(l_1040.s30353410)))).s2, ((VECTOR(uint8_t, 16))(sub_sat(((VECTOR(uint8_t, 4))(add_sat(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(5UL, 0xE2L)), 0UL, 0UL)).zwzxwwzxyyzwyzxz)))).s9e7e, ((VECTOR(uint8_t, 2))(rotate(((VECTOR(uint8_t, 2))(0x30L, 1UL)), ((VECTOR(uint8_t, 4))(l_1041.s2442)).odd))).yxxx))).xwyzwwwywwyxwyxx, ((VECTOR(uint8_t, 8))(249UL, 0x3EL, 0x74L, ((VECTOR(uint8_t, 2))(0x89L, 255UL)), ((safe_rshift_func_uint16_t_u_s(0x8405L, 3)) ^ (safe_mod_func_uint16_t_u_u(permutations[(safe_mod_func_uint32_t_u_u(GROUP_DIVERGE(2, 1), 10))][(safe_mod_func_uint32_t_u_u(p_1618->tid, 200))], (**p_1618->g_543)))), 1UL, 0x38L)).s1503345357250775))).sc)))), ((*l_1047) = ((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))(l_1046.s5b3e)).wxwyzwxwxxyywwzx)).s9))) > ((safe_sub_func_uint32_t_u_u(0x4D07C38FL, (p_44 , p_1618->g_314))) , (*l_801))) | p_44) | (*p_1618->g_438)) < (*l_801)))))) || p_1618->g_59.f0))))) == p_44));
            for (l_869 = 0; (l_869 != (-4)); l_869--)
            { /* block id: 474 */
                for (p_1618->g_745.f4 = (-17); (p_1618->g_745.f4 <= 46); p_1618->g_745.f4 = safe_add_func_int16_t_s_s(p_1618->g_745.f4, 6))
                { /* block id: 477 */
                    int8_t **l_1058 = &p_1618->g_467[6][1];
                    int32_t **l_1067[10];
                    int i;
                    for (i = 0; i < 10; i++)
                        l_1067[i] = &l_1066;
                    (*l_1053) = (((l_1058 == l_1059) == (safe_mod_func_uint8_t_u_u(p_44, (safe_lshift_func_uint8_t_u_s(248UL, (safe_add_func_int8_t_s_s((&p_1618->g_313 == (l_1066 = l_1066)), (*l_1053)))))))) | ((*p_45) | (p_1618->g_882[0][8] != (void*)0)));
                    for (l_797 = 0; (l_797 == 21); l_797++)
                    { /* block id: 482 */
                        int32_t l_1070 = 0x0BB206F7L;
                        (*p_1618->g_184) = (l_1070 , (*p_1618->g_184));
                        l_1070 &= (**p_1618->g_184);
                        if ((**p_1618->g_184))
                            break;
                        if (p_44)
                            break;
                    }
                    (*l_1053) |= ((*p_45) == (safe_add_func_uint32_t_u_u(p_1618->g_194[0], ((-1L) > 6L))));
                }
                if (p_44)
                    break;
            }
            if ((*l_1053))
            { /* block id: 492 */
                VECTOR(uint8_t, 8) l_1090 = (VECTOR(uint8_t, 8))(0xAAL, (VECTOR(uint8_t, 4))(0xAAL, (VECTOR(uint8_t, 2))(0xAAL, 0x4FL), 0x4FL), 0x4FL, 0xAAL, 0x4FL);
                uint16_t *l_1096 = &p_1618->g_194[0];
                int64_t l_1097[6][8] = {{1L,0L,(-1L),8L,(-5L),(-5L),8L,(-1L)},{1L,0L,(-1L),8L,(-5L),(-5L),8L,(-1L)},{1L,0L,(-1L),8L,(-5L),(-5L),8L,(-1L)},{1L,0L,(-1L),8L,(-5L),(-5L),8L,(-1L)},{1L,0L,(-1L),8L,(-5L),(-5L),8L,(-1L)},{1L,0L,(-1L),8L,(-5L),(-5L),8L,(-1L)}};
                struct S1 **l_1133[3];
                int32_t l_1140 = 0L;
                int i, j;
                for (i = 0; i < 3; i++)
                    l_1133[i] = &p_1618->g_744[1];
                for (p_1618->g_313 = (-27); (p_1618->g_313 > (-28)); --p_1618->g_313)
                { /* block id: 495 */
                    (*p_1618->g_184) = (*p_1618->g_184);
                    if (l_1016[4])
                        continue;
                    if ((*p_1618->g_185))
                        continue;
                }
                (*p_1618->g_185) = ((VECTOR(int32_t, 8))(mad_sat(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(0x2E4FEB76L, p_44, ((VECTOR(int32_t, 8))(p_1618->g_1075.zyzwzyww)), 1L, (l_1098 = (l_1076[2] & (safe_div_func_uint16_t_u_u(((GROUP_DIVERGE(1, 1) || (((safe_mod_func_uint32_t_u_u(((p_44 & l_752.f0) || ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 8))(l_1081.xxyyxxxy)).s5074535655526442)).s3), 2UL)) && ((safe_div_func_uint64_t_u_u((safe_rshift_func_int8_t_s_u(((*l_801) = (*p_45)), ((safe_add_func_uint8_t_u_u((0x1A790206C22945C5L != ((*l_1052)--)), (((*l_1096) = ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(upsample(((VECTOR(uint8_t, 16))(l_1090.s5233363624453776)).se649, ((VECTOR(uint8_t, 8))(mul_hi(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 16))(hadd(((VECTOR(uint8_t, 16))(p_1618->g_1091.ywxyxzywzxxzywyx)), ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(l_1092.s3329fec9)).s31)).xxxyxyyyyxyyxyyy))).s1663)).zwwzyyyx, ((VECTOR(uint8_t, 16))(p_1618->g_1093.xzwzzwxzywzwyxyw)).lo))).hi))), 65528UL, ((VECTOR(uint16_t, 4))(rhadd(((VECTOR(uint16_t, 2))(mad_sat(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(0xC9F0L, ((VECTOR(uint16_t, 2))(l_1094.s45)), 65526UL)).xyxzwxxwyzwxxzxw)).s00, ((VECTOR(uint16_t, 8))(65535UL, (&l_801 != (void*)0), 65535UL, 0xED95L, 65533UL, ((VECTOR(uint16_t, 2))(0x6893L)), 65528UL)).s10, ((VECTOR(uint16_t, 2))(7UL))))).yxyx, ((VECTOR(uint16_t, 4))(0UL))))), l_1095, 0xA4EDL, p_44, ((VECTOR(uint16_t, 4))(1UL)))).s2) && p_44))) && l_1097[5][6]))), (*p_1618->g_438))) , FAKE_DIVERGE(p_1618->global_1_offset, get_global_id(1), 10))) , 8L)) <= 251UL), (*p_1618->g_544))))), ((VECTOR(int32_t, 4))(0x6D8A4A4CL)))).s28)))), (-1L), 0x2DF79B9EL)).ywxxyxzz, ((VECTOR(int32_t, 8))(8L)), ((VECTOR(int32_t, 8))(0x0B2D1A21L))))).s3;
                for (p_1618->g_745.f5 = (-26); (p_1618->g_745.f5 != 22); ++p_1618->g_745.f5)
                { /* block id: 507 */
                    int64_t *l_1108 = &p_1618->g_141[3];
                    VECTOR(int8_t, 8) l_1115 = (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, (-1L)), (-1L)), (-1L), 1L, (-1L));
                    struct S1 ***l_1134 = (void*)0;
                    struct S1 **l_1137[9][6] = {{&p_1618->g_744[4],&p_1618->g_744[4],(void*)0,&p_1618->g_744[1],&p_1618->g_744[1],(void*)0},{&p_1618->g_744[4],&p_1618->g_744[4],(void*)0,&p_1618->g_744[1],&p_1618->g_744[1],(void*)0},{&p_1618->g_744[4],&p_1618->g_744[4],(void*)0,&p_1618->g_744[1],&p_1618->g_744[1],(void*)0},{&p_1618->g_744[4],&p_1618->g_744[4],(void*)0,&p_1618->g_744[1],&p_1618->g_744[1],(void*)0},{&p_1618->g_744[4],&p_1618->g_744[4],(void*)0,&p_1618->g_744[1],&p_1618->g_744[1],(void*)0},{&p_1618->g_744[4],&p_1618->g_744[4],(void*)0,&p_1618->g_744[1],&p_1618->g_744[1],(void*)0},{&p_1618->g_744[4],&p_1618->g_744[4],(void*)0,&p_1618->g_744[1],&p_1618->g_744[1],(void*)0},{&p_1618->g_744[4],&p_1618->g_744[4],(void*)0,&p_1618->g_744[1],&p_1618->g_744[1],(void*)0},{&p_1618->g_744[4],&p_1618->g_744[4],(void*)0,&p_1618->g_744[1],&p_1618->g_744[1],(void*)0}};
                    struct S1 ***l_1136 = &l_1137[5][3];
                    int16_t *l_1138 = &p_1618->g_249;
                    int16_t *l_1139[7][9] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
                    int32_t *l_1147 = &p_1618->g_313;
                    int i, j;
                    (**p_1618->g_184) = (safe_add_func_int8_t_s_s(((*p_1618->g_438) & (((((((*l_1053) = (-1L)) , (safe_lshift_func_uint8_t_u_u((safe_mul_func_int8_t_s_s((*p_45), ((*l_776) = (~p_1618->g_417.s9)))), 2))) >= ((VECTOR(uint16_t, 8))(abs(((VECTOR(uint16_t, 4))(min(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(l_1107.yzyyxwyw)).s7454161643540520)).s1191, (uint16_t)1UL))).wwwyzwwy))).s3) , ((*l_1108) &= (-10L))) > (((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(1UL, 4294967295UL)).yxxxyyxx)).s7 || 0x1F28B359L)) ^ (((safe_div_func_int32_t_s_s(((FAKE_DIVERGE(p_1618->local_2_offset, get_local_id(2), 10) > ((+(safe_mod_func_int16_t_s_s(((safe_sub_func_int8_t_s_s(((VECTOR(int8_t, 8))(l_1115.s06407265)).s3, ((*l_995) = ((void*)0 != &p_1618->g_59)))) || FAKE_DIVERGE(p_1618->group_0_offset, get_group_id(0), 10)), 0x2F4DL))) , l_1097[3][3])) ^ p_1618->g_970.x), p_1618->g_147.s3)) > l_1116) , 0x6C191B31492D247CL))), p_1618->g_1033.sb));
                    l_761.x = (l_1047 != l_1066);
                    if ((safe_rshift_func_uint8_t_u_s((((((VECTOR(uint32_t, 2))(l_1119.xz)).lo < ((((*l_776) = (*l_801)) ^ (safe_div_func_int8_t_s_s((GROUP_DIVERGE(0, 1) && 0x6AL), l_1115.s1))) <= ((((*l_1047) &= (((((l_1140 = (safe_add_func_int32_t_s_s((((0UL & (safe_mul_func_int16_t_s_s((!(l_761.x = ((*l_1138) = ((**p_1618->g_543) ^= (safe_div_func_int64_t_s_s((safe_sub_func_uint32_t_u_u((safe_rshift_func_uint8_t_u_u(255UL, 4)), (((VECTOR(uint16_t, 16))(rotate(((VECTOR(uint16_t, 4))(0x7B1CL, 65532UL, 0xCD20L, 65535UL)).xxzzyyzyyyxzyzwx, ((VECTOR(uint16_t, 8))(p_1618->g_1132.yxxyyzwz)).s6465704713071167))).sd , ((l_1135[0][0] = l_1133[1]) == ((*l_1136) = &p_1618->g_744[1]))))), p_44)))))), (l_1092.s3 > (*l_801))))) | FAKE_DIVERGE(p_1618->local_0_offset, get_local_id(0), 10)) , p_44), p_44))) | p_44) & (*l_1053)) <= (*l_801)) , (*l_801))) >= 0UL) == (*p_45)))) & (*l_1053)) > 0x78L), 4)))
                    { /* block id: 522 */
                        uint16_t l_1145 = 0xC0BBL;
                        (*p_1618->g_185) = (safe_mul_func_int8_t_s_s((safe_rshift_func_uint8_t_u_u(((l_1145 == 9UL) && ((VECTOR(uint8_t, 8))(safe_clamp_func(VECTOR(uint8_t, 8),uint8_t,((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(p_1618->g_1146.wz)).yxyxxxyyxyyyyyyx)).odd, (uint8_t)(p_44 ^ ((((void*)0 == l_1147) != (((+p_44) == l_1145) , (safe_rshift_func_int16_t_s_s((l_1115.s6 > (safe_mod_func_int8_t_s_s(((VECTOR(int8_t, 8))(l_1152.s72e04341)).s4, (((safe_add_func_uint64_t_u_u(((*l_1052) &= p_44), l_1145)) & p_44) , 1UL)))), 5)))) , 0x0541CDF993D2A4A2L)), (uint8_t)(*l_1053)))).s7), l_1115.s4)), p_1618->g_1091.x));
                    }
                    else
                    { /* block id: 525 */
                        return &p_1618->g_723;
                    }
                }
            }
            else
            { /* block id: 529 */
                int32_t *l_1155 = &l_878;
                int32_t **l_1156 = (void*)0;
                int32_t **l_1157 = &l_1155;
                int32_t *l_1158[5];
                int8_t l_1162 = 0x06L;
                uint32_t l_1163 = 0x3EAC6D07L;
                VECTOR(uint16_t, 4) l_1170 = (VECTOR(uint16_t, 4))(0x025DL, (VECTOR(uint16_t, 2))(0x025DL, 0x7E2AL), 0x7E2AL);
                uint16_t *l_1175 = (void*)0;
                uint16_t *l_1176 = (void*)0;
                uint16_t *l_1177 = (void*)0;
                uint16_t *l_1178 = (void*)0;
                uint16_t *l_1179 = &p_1618->g_194[0];
                int16_t ***l_1270 = &p_1618->g_543;
                int i;
                for (i = 0; i < 5; i++)
                    l_1158[i] = &l_869;
                (*l_1157) = ((*p_1618->g_184) = l_1155);
                ++l_1163;
                if ((1UL >= (p_44 && (((((*l_1179) |= (+(l_752 , (((safe_div_func_int8_t_s_s(0x5DL, (safe_mul_func_uint16_t_u_u((*l_1053), ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 16))(l_1170.zzxyyzyyyzwzwxzx)).s13)).yyxx)).wzywwxxxywwxxzxw)).s0)))) , (safe_mod_func_int32_t_s_s((l_1092.s9 <= 0x43L), (safe_lshift_func_uint8_t_u_s(((*l_776) = FAKE_DIVERGE(p_1618->local_1_offset, get_local_id(1), 10)), l_757.y))))) < ((*l_1053) < (*l_801)))))) ^ (-1L)) != 65535UL) && p_44))))
                { /* block id: 535 */
                    int16_t *l_1187 = &p_1618->g_130;
                    (*l_1155) = (*l_1053);
                    p_1618->g_744[0] = p_1618->g_744[6];
                    (*l_1053) = (~(safe_mod_func_int16_t_s_s(((+(*l_801)) < ((((((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 16))(65535UL, 0UL, ((VECTOR(uint16_t, 4))(p_1618->g_1184.xyyx)), 0xD877L, (safe_sub_func_uint32_t_u_u((0x2DB651D177B2B354L & (l_1187 == ((p_1618->g_1188 == (func_53(p_1618->g_104, &p_44, &p_1618->g_723, (*l_1059), &p_44, p_1618) , l_1192)) , l_1194))), p_44)), ((VECTOR(uint16_t, 2))(0x2CB6L)), 4UL, GROUP_DIVERGE(2, 1), 8UL, ((VECTOR(uint16_t, 2))(0x4F49L)), 6UL)).lo)).s2 , (void*)0) == &p_1618->g_832) ^ 0x3719L) <= (-1L))), (*l_801))));
                }
                else
                { /* block id: 539 */
                    int16_t ***l_1196 = &p_1618->g_543;
                    int16_t ****l_1195 = &l_1196;
                    int16_t ***l_1197[9][10][2] = {{{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543}},{{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543}},{{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543}},{{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543}},{{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543}},{{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543}},{{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543}},{{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543}},{{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543},{(void*)0,&p_1618->g_543}}};
                    int16_t ****l_1198[1];
                    VECTOR(int32_t, 16) l_1202 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 6L), 6L), 6L, (-1L), 6L, (VECTOR(int32_t, 2))((-1L), 6L), (VECTOR(int32_t, 2))((-1L), 6L), (-1L), 6L, (-1L), 6L);
                    int64_t *l_1206 = &p_1618->g_367;
                    int32_t **l_1229 = &p_1618->g_882[1][1];
                    uint16_t **l_1240 = &l_1175;
                    int i, j, k;
                    for (i = 0; i < 1; i++)
                        l_1198[i] = &l_1197[5][2][1];
                    if (((((*l_1195) = (void*)0) != (p_1618->g_1199 = l_1197[5][2][1])) , (l_1202.se == (((((*l_1206) ^= (((((*l_995) &= (+(p_44 < (safe_lshift_func_uint16_t_u_u(((func_53(((~(-1L)) , l_1205), ((p_1618->g_1075.y , (*p_45)) , &p_1618->g_30), &p_1618->g_30, &p_1618->g_30, l_995, p_1618) , 0xE6456A40L) <= l_749), 9))))) > (*p_45)) ^ p_44) && 0x03L)) <= l_1202.sb) >= (*p_45)) <= l_1202.s4))))
                    { /* block id: 544 */
                        int32_t l_1207 = 0x76A5AF48L;
                        int32_t l_1208 = (-1L);
                        int32_t l_1209 = 0x6D927EA8L;
                        l_1210[0]++;
                    }
                    else
                    { /* block id: 546 */
                        int32_t *l_1216 = &p_1618->g_313;
                        int32_t **l_1215 = &l_1216;
                        uint8_t **l_1217 = &l_776;
                        int32_t l_1219 = 0x030A4AC3L;
                        int8_t l_1224 = 0x76L;
                        uint16_t ***l_1241 = &l_1240;
                        (*l_1157) = ((safe_sub_func_int32_t_s_s((p_44 , (l_1066 == ((*l_1215) = l_1053))), (((*l_1217) = p_45) != ((((safe_unary_minus_func_int32_t_s(((*p_1618->g_185) = ((l_1219 > (((safe_rshift_func_int16_t_s_u(((*l_801) | (**l_1157)), 4)) | (safe_mod_func_int8_t_s_s(((l_761.y = l_1224) ^ ((*p_1618->g_544) = (safe_add_func_uint8_t_u_u((safe_add_func_uint8_t_u_u(0x97L, (*l_801))), 0x1FL)))), (*p_45)))) ^ p_44)) && l_1202.sc)))) || (*p_1618->g_438)) == p_44) , p_45)))) , (*p_1618->g_184));
                        (**l_1157) &= ((l_1229 == (void*)0) , ((safe_mod_func_int16_t_s_s(((**p_1618->g_543) &= l_1232), p_44)) && (safe_mod_func_int16_t_s_s((((((*p_1618->g_544) && ((safe_unary_minus_func_int64_t_s(((safe_add_func_int32_t_s_s(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 8))(8L, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(p_1618->g_1238.yxxxyyxx)).s45)), 0x46C5B35DL, 0x2D3C9410L)), (((VECTOR(uint64_t, 4))(p_1618->g_1239.yxyy)).w && (-2L)), 0x655FC463L, 0x7F7E5110L)).lo, ((VECTOR(int32_t, 2))(0x237B28EDL, 1L)).xxyx))).zwyzzyxzwzwyzzxz)).s93)).even, (0UL <= ((~GROUP_DIVERGE(2, 1)) == GROUP_DIVERGE(0, 1))))) >= (((*l_1241) = l_1240) != l_1242)))) != p_44)) | p_44) >= p_44) , l_1119.y), p_44))));
                    }
                    (*p_1618->g_185) |= ((safe_unary_minus_func_int8_t_s(((((VECTOR(int64_t, 16))(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))(add_sat(((VECTOR(int64_t, 16))(((**p_1618->g_543) & (~(safe_mul_func_int8_t_s_s(0x04L, (((VECTOR(int64_t, 16))(mul_hi(((VECTOR(int64_t, 8))(upsample(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(mul_hi(((VECTOR(int32_t, 4))(l_1246.sd8cc)).hi, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))((((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(l_1247.sf0a94455)).s64)).even | ((!p_44) || ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(0x6837L, ((VECTOR(uint16_t, 2))(65535UL, 0x3513L)), 0x2011L)).wyyzxwxzyzwxwxzx)).sc)), 0x763E0276L, 0L, 5L)).hi))))), ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(0x02D34758L, 1L, ((safe_sub_func_int64_t_s_s((safe_sub_func_uint32_t_u_u(((void*)0 != &p_1618->g_141[3]), GROUP_DIVERGE(1, 1))), 0xC6CBF7B481A9DAB9L)) & (safe_sub_func_int16_t_s_s(2L, (-9L)))), 0x525F184BL, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(l_1254.s5410)).lo)), 0x3FE9477AL, 0x48F39E0EL)).odd)), (-6L), 0x0205EAF8L)).s3473003761103133)).even, ((VECTOR(uint32_t, 4))(rotate(((VECTOR(uint32_t, 4))(p_1618->g_1255.sfe37)), ((VECTOR(uint32_t, 16))(l_1256.s74e21506e7de98c7)).sdaba))).wwxwwwyy))).s4725231435277412, ((VECTOR(int64_t, 4))(l_1257.s66a2)).ywywzyzzxxxzxzyy))).sa , (safe_lshift_func_int8_t_s_s(0x6FL, (*p_45)))))))), p_44, ((VECTOR(int64_t, 2))(0L)), ((VECTOR(int64_t, 4))(8L)), ((VECTOR(int64_t, 8))((-1L))))).seb, ((VECTOR(int64_t, 2))(0x4395871305DB198BL))))).yyyxyyyx)), (*l_801), ((VECTOR(int64_t, 2))((-5L))), 0x59571E7C1F3E644FL, ((VECTOR(int64_t, 4))(0x540E38A4681CE1D2L)))).s7 , l_1194) != l_1260))) | p_1618->g_86.s2);
                    for (p_1618->g_95 = 0; (p_1618->g_95 > 11); ++p_1618->g_95)
                    { /* block id: 560 */
                        uint32_t l_1271 = 0x5E92BB48L;
                        (*p_1618->g_185) = (((VECTOR(int16_t, 16))(max(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 8))((-1L), ((VECTOR(int16_t, 2))(2L, 0L)), (**p_1618->g_543), p_44, ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(5L, ((VECTOR(int16_t, 2))(add_sat(((VECTOR(int16_t, 16))(p_1618->g_1263.se7001e65de265226)).s0f, ((VECTOR(int16_t, 4))(p_1618->g_1264.xxxy)).even))), 0x6CE0L)), 0x0175L, 0L, 0x5197L, (-1L))).s6, 0x6B69L, (-9L))))).s44)).xyyyyxxyyyxxyyyy, (int16_t)(safe_div_func_int8_t_s_s((((VECTOR(int64_t, 8))(l_1269.zwyyxywx)).s0 != (((*l_1195) = l_1270) == &p_1618->g_543)), ((*p_45) = (*p_45))))))).sf && l_1271);
                        if (p_44)
                            break;
                    }
                    (*l_801) |= (**p_1618->g_184);
                }
                (*l_1053) ^= (*p_1618->g_185);
            }
        }
        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        p_1618->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 200)), permutations[(safe_mod_func_uint32_t_u_u((safe_rshift_func_uint16_t_u_u((safe_rshift_func_int8_t_s_s((safe_lshift_func_uint16_t_u_u((l_1278 != (void*)0), (((safe_div_func_uint64_t_u_u((safe_sub_func_uint32_t_u_u((safe_rshift_func_int16_t_s_u((safe_mod_func_uint32_t_u_u(4294967295UL, (((safe_unary_minus_func_int16_t_s((((void*)0 == l_1289[2][8]) | ((p_44 != (safe_div_func_int32_t_s_s((safe_add_func_uint32_t_u_u((l_1289[1][1] == (void*)0), 0L)), l_1119.z))) | (*p_45))))) == l_760.x) , p_1618->g_352.s7))), 13)), l_1294)), p_44)) , (*p_45)) <= l_760.x))), (*p_45))), p_44)), 10))][(safe_mod_func_uint32_t_u_u(p_1618->tid, 200))]));
    }
    (*l_1193) = ((safe_rshift_func_uint16_t_u_s((((*l_1297) = (void*)0) != &l_772[4][6]), 2)) , (*l_1193));
    return &p_1618->g_723;
}


/* ------------------------------------------ */
/* 
 * reads : p_1618->g_352 p_1618->g_625 p_1618->g_488 p_1618->g_157 p_1618->g_59 p_1618->g_34 p_1618->g_33 p_1618->g_comm_values p_1618->g_3 p_1618->g_93 p_1618->g_95 p_1618->g_467 p_1618->g_606 p_1618->g_489 p_1618->g_438 p_1618->g_104.f0 p_1618->g_544 p_1618->g_130 p_1618->g_390 p_1618->g_184 p_1618->l_comm_values p_1618->g_7 p_1618->g_104 p_1618->g_723 p_1618->g_174 p_1618->g_141 p_1618->g_744
 * writes: p_1618->g_625 p_1618->g_157 p_1618->g_93 p_1618->g_95 p_1618->g_59.f0 p_1618->g_30 p_1618->g_104 p_1618->g_comm_values p_1618->l_comm_values p_1618->g_130 p_1618->g_59 p_1618->g_606 p_1618->g_390 p_1618->g_185 p_1618->g_489 p_1618->g_141 p_1618->g_744
 */
int8_t  func_46(int64_t  p_47, int64_t  p_48, struct S7 * p_1618)
{ /* block id: 236 */
    struct S2 l_622 = {18446744073709551615UL};
    union U3 ***l_626 = &p_1618->g_625;
    union U3 *l_628 = &p_1618->g_629;
    union U3 **l_627 = &l_628;
    uint8_t *l_632 = &p_1618->g_157[4];
    int8_t *l_633 = &p_1618->g_30;
    int8_t *l_634 = (void*)0;
    struct S2 *l_635 = &p_1618->g_59;
    uint32_t l_661 = 0x6B94BD6AL;
    int32_t *l_663[4];
    int16_t l_699 = 0x1E61L;
    int32_t l_701 = 0x30757651L;
    int64_t **l_718 = &p_1618->g_349[4][2][0];
    struct S1 **l_746 = &p_1618->g_744[1];
    int i;
    for (i = 0; i < 4; i++)
        l_663[i] = (void*)0;
    (*l_635) = func_53(func_53((p_1618->g_59 = func_53(l_622, (((((safe_mul_func_uint8_t_u_u(p_1618->g_352.s7, (((*l_626) = p_1618->g_625) == l_627))) >= 0xE18EF3CBL) | (7UL && (safe_add_func_uint8_t_u_u(((*l_632) ^= p_1618->g_488.s4), (p_47 < (p_1618->g_59 , l_622.f0)))))) == 0x33DFE582L) , &p_1618->g_30), l_632, l_632, l_633, p_1618)), p_1618->g_467[5][2], l_632, l_632, p_1618->g_467[0][3], p_1618), l_633, p_1618->g_467[5][2], l_633, l_634, p_1618);
    for (p_1618->g_606 = (-1); (p_1618->g_606 >= 53); ++p_1618->g_606)
    { /* block id: 243 */
        struct S2 l_640 = {0x2DFBFAFEE30937BAL};
        int32_t *l_673 = &p_1618->g_3;
        int32_t l_695 = 0x223E9535L;
        int32_t l_698 = 3L;
        if ((l_661 = (safe_mod_func_uint64_t_u_u((((*l_635) = l_640) , (((safe_mul_func_int8_t_s_s((safe_mod_func_int8_t_s_s(((p_1618->g_489.x || (safe_lshift_func_uint8_t_u_u((safe_mul_func_int16_t_s_s((((((*p_1618->g_438)++) , p_1618->g_157[4]) , (+((((safe_mod_func_int64_t_s_s(((safe_sub_func_uint64_t_u_u((safe_div_func_uint64_t_u_u(p_47, ((!p_47) , (((safe_rshift_func_int16_t_s_u(((l_622.f0 > l_640.f0) == (((l_622.f0 ^ (safe_rshift_func_int8_t_s_s(l_640.f0, p_47))) || (*p_1618->g_544)) , p_47)), 10)) == p_47) || l_640.f0)))), (*p_1618->g_438))) < l_640.f0), 7UL)) | (-7L)) > 0x6C81L) >= p_47))) , (-5L)), 0x512CL)), 0))) < p_48), p_48)), 0x65L)) , p_1618->g_488.s6) , p_47)), GROUP_DIVERGE(1, 1)))))
        { /* block id: 247 */
            volatile union U6 **l_662[8][7][4] = {{{&p_1618->g_390[0][0][4],&p_1618->g_390[0][3][2],&p_1618->g_390[0][6][0],&p_1618->g_390[0][3][2]},{&p_1618->g_390[0][0][4],&p_1618->g_390[0][3][2],&p_1618->g_390[0][6][0],&p_1618->g_390[0][3][2]},{&p_1618->g_390[0][0][4],&p_1618->g_390[0][3][2],&p_1618->g_390[0][6][0],&p_1618->g_390[0][3][2]},{&p_1618->g_390[0][0][4],&p_1618->g_390[0][3][2],&p_1618->g_390[0][6][0],&p_1618->g_390[0][3][2]},{&p_1618->g_390[0][0][4],&p_1618->g_390[0][3][2],&p_1618->g_390[0][6][0],&p_1618->g_390[0][3][2]},{&p_1618->g_390[0][0][4],&p_1618->g_390[0][3][2],&p_1618->g_390[0][6][0],&p_1618->g_390[0][3][2]},{&p_1618->g_390[0][0][4],&p_1618->g_390[0][3][2],&p_1618->g_390[0][6][0],&p_1618->g_390[0][3][2]}},{{&p_1618->g_390[0][0][4],&p_1618->g_390[0][3][2],&p_1618->g_390[0][6][0],&p_1618->g_390[0][3][2]},{&p_1618->g_390[0][0][4],&p_1618->g_390[0][3][2],&p_1618->g_390[0][6][0],&p_1618->g_390[0][3][2]},{&p_1618->g_390[0][0][4],&p_1618->g_390[0][3][2],&p_1618->g_390[0][6][0],&p_1618->g_390[0][3][2]},{&p_1618->g_390[0][0][4],&p_1618->g_390[0][3][2],&p_1618->g_390[0][6][0],&p_1618->g_390[0][3][2]},{&p_1618->g_390[0][0][4],&p_1618->g_390[0][3][2],&p_1618->g_390[0][6][0],&p_1618->g_390[0][3][2]},{&p_1618->g_390[0][0][4],&p_1618->g_390[0][3][2],&p_1618->g_390[0][6][0],&p_1618->g_390[0][3][2]},{&p_1618->g_390[0][0][4],&p_1618->g_390[0][3][2],&p_1618->g_390[0][6][0],&p_1618->g_390[0][3][2]}},{{&p_1618->g_390[0][0][4],&p_1618->g_390[0][3][2],&p_1618->g_390[0][6][0],&p_1618->g_390[0][3][2]},{&p_1618->g_390[0][0][4],&p_1618->g_390[0][3][2],&p_1618->g_390[0][6][0],&p_1618->g_390[0][3][2]},{&p_1618->g_390[0][0][4],&p_1618->g_390[0][3][2],&p_1618->g_390[0][6][0],&p_1618->g_390[0][3][2]},{&p_1618->g_390[0][0][4],&p_1618->g_390[0][3][2],&p_1618->g_390[0][6][0],&p_1618->g_390[0][3][2]},{&p_1618->g_390[0][0][4],&p_1618->g_390[0][3][2],&p_1618->g_390[0][6][0],&p_1618->g_390[0][3][2]},{&p_1618->g_390[0][0][4],&p_1618->g_390[0][3][2],&p_1618->g_390[0][6][0],&p_1618->g_390[0][3][2]},{&p_1618->g_390[0][0][4],&p_1618->g_390[0][3][2],&p_1618->g_390[0][6][0],&p_1618->g_390[0][3][2]}},{{&p_1618->g_390[0][0][4],&p_1618->g_390[0][3][2],&p_1618->g_390[0][6][0],&p_1618->g_390[0][3][2]},{&p_1618->g_390[0][0][4],&p_1618->g_390[0][3][2],&p_1618->g_390[0][6][0],&p_1618->g_390[0][3][2]},{&p_1618->g_390[0][0][4],&p_1618->g_390[0][3][2],&p_1618->g_390[0][6][0],&p_1618->g_390[0][3][2]},{&p_1618->g_390[0][0][4],&p_1618->g_390[0][3][2],&p_1618->g_390[0][6][0],&p_1618->g_390[0][3][2]},{&p_1618->g_390[0][0][4],&p_1618->g_390[0][3][2],&p_1618->g_390[0][6][0],&p_1618->g_390[0][3][2]},{&p_1618->g_390[0][0][4],&p_1618->g_390[0][3][2],&p_1618->g_390[0][6][0],&p_1618->g_390[0][3][2]},{&p_1618->g_390[0][0][4],&p_1618->g_390[0][3][2],&p_1618->g_390[0][6][0],&p_1618->g_390[0][3][2]}},{{&p_1618->g_390[0][0][4],&p_1618->g_390[0][3][2],&p_1618->g_390[0][6][0],&p_1618->g_390[0][3][2]},{&p_1618->g_390[0][0][4],&p_1618->g_390[0][3][2],&p_1618->g_390[0][6][0],&p_1618->g_390[0][3][2]},{&p_1618->g_390[0][0][4],&p_1618->g_390[0][3][2],&p_1618->g_390[0][6][0],&p_1618->g_390[0][3][2]},{&p_1618->g_390[0][0][4],&p_1618->g_390[0][3][2],&p_1618->g_390[0][6][0],&p_1618->g_390[0][3][2]},{&p_1618->g_390[0][0][4],&p_1618->g_390[0][3][2],&p_1618->g_390[0][6][0],&p_1618->g_390[0][3][2]},{&p_1618->g_390[0][0][4],&p_1618->g_390[0][3][2],&p_1618->g_390[0][6][0],&p_1618->g_390[0][3][2]},{&p_1618->g_390[0][0][4],&p_1618->g_390[0][3][2],&p_1618->g_390[0][6][0],&p_1618->g_390[0][3][2]}},{{&p_1618->g_390[0][0][4],&p_1618->g_390[0][3][2],&p_1618->g_390[0][6][0],&p_1618->g_390[0][3][2]},{&p_1618->g_390[0][0][4],&p_1618->g_390[0][3][2],&p_1618->g_390[0][6][0],&p_1618->g_390[0][3][2]},{&p_1618->g_390[0][0][4],&p_1618->g_390[0][3][2],&p_1618->g_390[0][6][0],&p_1618->g_390[0][3][2]},{&p_1618->g_390[0][0][4],&p_1618->g_390[0][3][2],&p_1618->g_390[0][6][0],&p_1618->g_390[0][3][2]},{&p_1618->g_390[0][0][4],&p_1618->g_390[0][3][2],&p_1618->g_390[0][6][0],&p_1618->g_390[0][3][2]},{&p_1618->g_390[0][0][4],&p_1618->g_390[0][3][2],&p_1618->g_390[0][6][0],&p_1618->g_390[0][3][2]},{&p_1618->g_390[0][0][4],&p_1618->g_390[0][3][2],&p_1618->g_390[0][6][0],&p_1618->g_390[0][3][2]}},{{&p_1618->g_390[0][0][4],&p_1618->g_390[0][3][2],&p_1618->g_390[0][6][0],&p_1618->g_390[0][3][2]},{&p_1618->g_390[0][0][4],&p_1618->g_390[0][3][2],&p_1618->g_390[0][6][0],&p_1618->g_390[0][3][2]},{&p_1618->g_390[0][0][4],&p_1618->g_390[0][3][2],&p_1618->g_390[0][6][0],&p_1618->g_390[0][3][2]},{&p_1618->g_390[0][0][4],&p_1618->g_390[0][3][2],&p_1618->g_390[0][6][0],&p_1618->g_390[0][3][2]},{&p_1618->g_390[0][0][4],&p_1618->g_390[0][3][2],&p_1618->g_390[0][6][0],&p_1618->g_390[0][3][2]},{&p_1618->g_390[0][0][4],&p_1618->g_390[0][3][2],&p_1618->g_390[0][6][0],&p_1618->g_390[0][3][2]},{&p_1618->g_390[0][0][4],&p_1618->g_390[0][3][2],&p_1618->g_390[0][6][0],&p_1618->g_390[0][3][2]}},{{&p_1618->g_390[0][0][4],&p_1618->g_390[0][3][2],&p_1618->g_390[0][6][0],&p_1618->g_390[0][3][2]},{&p_1618->g_390[0][0][4],&p_1618->g_390[0][3][2],&p_1618->g_390[0][6][0],&p_1618->g_390[0][3][2]},{&p_1618->g_390[0][0][4],&p_1618->g_390[0][3][2],&p_1618->g_390[0][6][0],&p_1618->g_390[0][3][2]},{&p_1618->g_390[0][0][4],&p_1618->g_390[0][3][2],&p_1618->g_390[0][6][0],&p_1618->g_390[0][3][2]},{&p_1618->g_390[0][0][4],&p_1618->g_390[0][3][2],&p_1618->g_390[0][6][0],&p_1618->g_390[0][3][2]},{&p_1618->g_390[0][0][4],&p_1618->g_390[0][3][2],&p_1618->g_390[0][6][0],&p_1618->g_390[0][3][2]},{&p_1618->g_390[0][0][4],&p_1618->g_390[0][3][2],&p_1618->g_390[0][6][0],&p_1618->g_390[0][3][2]}}};
            int32_t l_674 = 2L;
            uint8_t l_704 = 1UL;
            int64_t **l_717 = &p_1618->g_349[7][4][3];
            int i, j, k;
            p_1618->g_390[0][0][0] = p_1618->g_390[0][3][2];
            (*p_1618->g_184) = l_663[0];
            if ((atomic_inc(&p_1618->l_atomic_input[55]) == 8))
            { /* block id: 251 */
                uint32_t l_664 = 0UL;
                uint8_t l_665 = 0x5CL;
                l_665 |= l_664;
                unsigned int result = 0;
                result += l_664;
                result += l_665;
                atomic_add(&p_1618->l_special_values[55], result);
            }
            else
            { /* block id: 253 */
                (1 + 1);
            }
            for (p_1618->g_59.f0 = 14; (p_1618->g_59.f0 == 17); p_1618->g_59.f0 = safe_add_func_uint8_t_u_u(p_1618->g_59.f0, 1))
            { /* block id: 258 */
                int64_t l_670 = (-9L);
                uint8_t *l_681[2];
                struct S0 *l_688 = (void*)0;
                VECTOR(int32_t, 8) l_693 = (VECTOR(int32_t, 8))(0x300EBB5EL, (VECTOR(int32_t, 4))(0x300EBB5EL, (VECTOR(int32_t, 2))(0x300EBB5EL, 0x38225D2FL), 0x38225D2FL), 0x38225D2FL, 0x300EBB5EL, 0x38225D2FL);
                int i;
                for (i = 0; i < 2; i++)
                    l_681[i] = &p_1618->g_314;
                if (p_48)
                    break;
                for (p_1618->g_104.f0 = (-18); (p_1618->g_104.f0 <= 1); p_1618->g_104.f0++)
                { /* block id: 262 */
                    return p_48;
                }
                p_1618->g_489.w = (((VECTOR(int8_t, 2))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(1L, 0x66L)), (-1L), 2L)).yxxzwwyyzxyyxyyw)).se7)).hi != (p_1618->g_59.f0 , l_670));
                for (p_1618->g_95 = (-2); (p_1618->g_95 > (-11)); p_1618->g_95 = safe_sub_func_uint16_t_u_u(p_1618->g_95, 6))
                { /* block id: 268 */
                    VECTOR(int8_t, 2) l_686 = (VECTOR(int8_t, 2))(0L, (-1L));
                    int32_t l_694 = 0L;
                    int32_t l_697 = 0x2AE9FBAAL;
                    int32_t l_703 = 0x54F0E48AL;
                    union U3 ****l_721 = &l_626;
                    uint32_t l_722 = 0x5E00E506L;
                    int64_t *l_724 = &p_1618->g_141[3];
                    int i;
                    if (((l_673 == (void*)0) & (((~l_674) < (++(*p_1618->g_438))) & (safe_div_func_uint16_t_u_u((safe_mod_func_uint8_t_u_u(((((*p_1618->g_544) = (*p_1618->g_544)) | ((l_681[0] != (void*)0) >= (*l_673))) , ((safe_add_func_int64_t_s_s(((safe_lshift_func_int8_t_s_s(((VECTOR(int8_t, 8))(l_686.yyxyxyyy)).s7, (((*l_673) && ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(0x4C267708CB09D607L, 0xC2816BFDF82A5512L)).xxyxxyxxyxyyxyyy)).s4) < l_670))) > GROUP_DIVERGE(1, 1)), p_48)) == p_47)), 0x5EL)), p_47)))))
                    { /* block id: 271 */
                        uint32_t l_687 = 4294967295UL;
                        return l_687;
                    }
                    else
                    { /* block id: 273 */
                        struct S0 **l_689 = &l_688;
                        int32_t l_690 = 1L;
                        union U6 **l_692 = &p_1618->g_524[4];
                        union U6 ***l_691 = &l_692;
                        int32_t l_696 = 0x4BE6AA98L;
                        int32_t l_700 = 0x2260F579L;
                        int32_t l_702 = 1L;
                        (*l_689) = l_688;
                        l_690 &= p_1618->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1618->tid, 200))];
                        l_690 ^= ((&p_1618->g_390[0][3][2] == ((*l_691) = &p_1618->g_524[0])) , l_670);
                        ++l_704;
                    }
                    if ((atomic_inc(&p_1618->g_atomic_input[75 * get_linear_group_id() + 11]) == 4))
                    { /* block id: 281 */
                        int8_t l_707 = 0x3CL;
                        VECTOR(int16_t, 2) l_708 = (VECTOR(int16_t, 2))(0x7EA9L, (-1L));
                        uint8_t l_709[2][7][7] = {{{0xC9L,253UL,0xDEL,0x5EL,253UL,0x5EL,0xDEL},{0xC9L,253UL,0xDEL,0x5EL,253UL,0x5EL,0xDEL},{0xC9L,253UL,0xDEL,0x5EL,253UL,0x5EL,0xDEL},{0xC9L,253UL,0xDEL,0x5EL,253UL,0x5EL,0xDEL},{0xC9L,253UL,0xDEL,0x5EL,253UL,0x5EL,0xDEL},{0xC9L,253UL,0xDEL,0x5EL,253UL,0x5EL,0xDEL},{0xC9L,253UL,0xDEL,0x5EL,253UL,0x5EL,0xDEL}},{{0xC9L,253UL,0xDEL,0x5EL,253UL,0x5EL,0xDEL},{0xC9L,253UL,0xDEL,0x5EL,253UL,0x5EL,0xDEL},{0xC9L,253UL,0xDEL,0x5EL,253UL,0x5EL,0xDEL},{0xC9L,253UL,0xDEL,0x5EL,253UL,0x5EL,0xDEL},{0xC9L,253UL,0xDEL,0x5EL,253UL,0x5EL,0xDEL},{0xC9L,253UL,0xDEL,0x5EL,253UL,0x5EL,0xDEL},{0xC9L,253UL,0xDEL,0x5EL,253UL,0x5EL,0xDEL}}};
                        int32_t l_713 = 0x0318FD07L;
                        int32_t *l_712 = &l_713;
                        int32_t *l_714 = &l_713;
                        int i, j, k;
                        l_708.y ^= l_707;
                        ++l_709[0][4][6];
                        l_714 = l_712;
                        unsigned int result = 0;
                        result += l_707;
                        result += l_708.y;
                        result += l_708.x;
                        int l_709_i0, l_709_i1, l_709_i2;
                        for (l_709_i0 = 0; l_709_i0 < 2; l_709_i0++) {
                            for (l_709_i1 = 0; l_709_i1 < 7; l_709_i1++) {
                                for (l_709_i2 = 0; l_709_i2 < 7; l_709_i2++) {
                                    result += l_709[l_709_i0][l_709_i1][l_709_i2];
                                }
                            }
                        }
                        result += l_713;
                        atomic_add(&p_1618->g_special_values[75 * get_linear_group_id() + 11], result);
                    }
                    else
                    { /* block id: 285 */
                        (1 + 1);
                    }
                    p_1618->g_489.w ^= (((*l_724) |= ((safe_mod_func_int8_t_s_s((*l_673), 0x3CL)) != ((((l_703 | ((l_717 == l_718) | (p_1618->g_7[1][4][1] , (!((((p_1618->g_104 , 0x46BCL) > ((safe_lshift_func_uint8_t_u_s(((((((*l_721) = (void*)0) == (void*)0) , (-4L)) >= p_47) == l_722), p_48)) <= p_1618->g_723)) >= p_48) != 0x70L))))) || p_47) & 0L) <= p_1618->g_174.z))) >= 0x52B17F3ABE33A5EFL);
                }
            }
        }
        else
        { /* block id: 293 */
            if ((atomic_inc(&p_1618->l_atomic_input[41]) == 2))
            { /* block id: 295 */
                int32_t l_725 = 0x02A98F7AL;
                for (l_725 = 0; (l_725 != 2); l_725 = safe_add_func_uint64_t_u_u(l_725, 4))
                { /* block id: 298 */
                    VECTOR(int32_t, 2) l_728 = (VECTOR(int32_t, 2))(0x6BDF6E2EL, 8L);
                    int8_t l_729 = (-1L);
                    uint32_t l_740 = 0xF126B85CL;
                    int32_t l_741 = 0x61DBE13EL;
                    uint64_t l_742[3][3][3] = {{{9UL,9UL,0xB3C15ADEB1905BF2L},{9UL,9UL,0xB3C15ADEB1905BF2L},{9UL,9UL,0xB3C15ADEB1905BF2L}},{{9UL,9UL,0xB3C15ADEB1905BF2L},{9UL,9UL,0xB3C15ADEB1905BF2L},{9UL,9UL,0xB3C15ADEB1905BF2L}},{{9UL,9UL,0xB3C15ADEB1905BF2L},{9UL,9UL,0xB3C15ADEB1905BF2L},{9UL,9UL,0xB3C15ADEB1905BF2L}}};
                    int8_t l_743 = 0L;
                    int i, j, k;
                    if ((l_729 = ((VECTOR(int32_t, 8))(l_728.yxxxxxyx)).s2))
                    { /* block id: 300 */
                        int32_t l_731 = 0x5FBB0679L;
                        int32_t *l_730 = &l_731;
                        int16_t l_732 = 1L;
                        l_728.y = (-7L);
                        l_730 = (void*)0;
                        l_728.x = l_732;
                    }
                    else
                    { /* block id: 304 */
                        int32_t *l_733 = (void*)0;
                        int32_t l_735 = 0x169D2E67L;
                        int32_t *l_734[3];
                        int32_t *l_736 = (void*)0;
                        uint8_t l_737 = 0x67L;
                        int32_t *l_738 = (void*)0;
                        int32_t *l_739 = (void*)0;
                        int i;
                        for (i = 0; i < 3; i++)
                            l_734[i] = &l_735;
                        l_736 = (l_734[0] = l_733);
                        l_728.y |= l_737;
                        l_739 = l_738;
                    }
                    l_740 = 0x20937FD1L;
                    l_743 = (l_742[1][2][2] = (GROUP_DIVERGE(0, 1) , (l_741 = 0x21239451L)));
                }
                unsigned int result = 0;
                result += l_725;
                atomic_add(&p_1618->l_special_values[41], result);
            }
            else
            { /* block id: 315 */
                (1 + 1);
            }
        }
    }
    (*l_746) = p_1618->g_744[1];
    (*l_635) = (*l_635);
    return p_48;
}


/* ------------------------------------------ */
/* 
 * reads : p_1618->g_113 p_1618->g_488 p_1618->g_489 p_1618->g_93 p_1618->g_95 p_1618->g_422 p_1618->g_438 p_1618->g_104.f0 p_1618->g_520 p_1618->g_184 p_1618->g_185 p_1618->g_7 p_1618->g_296 p_1618->g_130 p_1618->g_524 p_1618->g_59 p_1618->g_543 p_1618->g_34 p_1618->g_606
 * writes: p_1618->g_157 p_1618->g_93 p_1618->g_95 p_1618->g_422 p_1618->g_141 p_1618->g_130 p_1618->g_524 p_1618->g_185 p_1618->g_104.f0 p_1618->g_606
 */
int32_t  func_49(uint16_t  p_50, uint8_t  p_51, int8_t * p_52, struct S7 * p_1618)
{ /* block id: 175 */
    VECTOR(int64_t, 16) l_468 = (VECTOR(int64_t, 16))(0x4C94AEF887E58F73L, (VECTOR(int64_t, 4))(0x4C94AEF887E58F73L, (VECTOR(int64_t, 2))(0x4C94AEF887E58F73L, (-1L)), (-1L)), (-1L), 0x4C94AEF887E58F73L, (-1L), (VECTOR(int64_t, 2))(0x4C94AEF887E58F73L, (-1L)), (VECTOR(int64_t, 2))(0x4C94AEF887E58F73L, (-1L)), 0x4C94AEF887E58F73L, (-1L), 0x4C94AEF887E58F73L, (-1L));
    VECTOR(int64_t, 16) l_469 = (VECTOR(int64_t, 16))(0x2722DD7E60F92FD6L, (VECTOR(int64_t, 4))(0x2722DD7E60F92FD6L, (VECTOR(int64_t, 2))(0x2722DD7E60F92FD6L, (-6L)), (-6L)), (-6L), 0x2722DD7E60F92FD6L, (-6L), (VECTOR(int64_t, 2))(0x2722DD7E60F92FD6L, (-6L)), (VECTOR(int64_t, 2))(0x2722DD7E60F92FD6L, (-6L)), 0x2722DD7E60F92FD6L, (-6L), 0x2722DD7E60F92FD6L, (-6L));
    VECTOR(int64_t, 2) l_470 = (VECTOR(int64_t, 2))(0x145EC7F82F6F79ABL, 3L);
    int32_t l_473 = 0L;
    uint8_t *l_484 = &p_1618->g_157[4];
    VECTOR(int8_t, 16) l_487 = (VECTOR(int8_t, 16))(0x09L, (VECTOR(int8_t, 4))(0x09L, (VECTOR(int8_t, 2))(0x09L, 0x26L), 0x26L), 0x26L, 0x09L, 0x26L, (VECTOR(int8_t, 2))(0x09L, 0x26L), (VECTOR(int8_t, 2))(0x09L, 0x26L), 0x09L, 0x26L, 0x09L, 0x26L);
    int32_t l_490 = 0x78038688L;
    VECTOR(int8_t, 8) l_491 = (VECTOR(int8_t, 8))(0x37L, (VECTOR(int8_t, 4))(0x37L, (VECTOR(int8_t, 2))(0x37L, 0x5CL), 0x5CL), 0x5CL, 0x37L, 0x5CL);
    uint32_t *l_500 = &p_1618->g_93;
    int32_t *l_501 = (void*)0;
    int32_t *l_502 = (void*)0;
    int32_t *l_503 = &p_1618->g_95;
    VECTOR(uint8_t, 16) l_508 = (VECTOR(uint8_t, 16))(0x92L, (VECTOR(uint8_t, 4))(0x92L, (VECTOR(uint8_t, 2))(0x92L, 0x63L), 0x63L), 0x63L, 0x92L, 0x63L, (VECTOR(uint8_t, 2))(0x92L, 0x63L), (VECTOR(uint8_t, 2))(0x92L, 0x63L), 0x92L, 0x63L, 0x92L, 0x63L);
    int8_t l_511 = 0x52L;
    uint16_t *l_512 = &p_1618->g_422;
    uint64_t l_515 = 0xE873365C93BEA61DL;
    VECTOR(uint32_t, 4) l_518 = (VECTOR(uint32_t, 4))(4294967288UL, (VECTOR(uint32_t, 2))(4294967288UL, 4294967292UL), 4294967292UL);
    VECTOR(uint32_t, 2) l_519 = (VECTOR(uint32_t, 2))(0x0667ECD4L, 0x46BF9C46L);
    int64_t *l_521 = &p_1618->g_141[3];
    uint32_t l_522 = 0x00577038L;
    int16_t *l_523 = &p_1618->g_130;
    VECTOR(uint16_t, 4) l_558 = (VECTOR(uint16_t, 4))(0xAD12L, (VECTOR(uint16_t, 2))(0xAD12L, 65535UL), 65535UL);
    VECTOR(int8_t, 8) l_571 = (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0L), 0L), 0L, 1L, 0L);
    uint16_t l_616 = 0xEE2BL;
    int i;
    (*l_503) = ((p_50 <= p_50) || (((VECTOR(int64_t, 4))(max(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 4))(l_468.s3ae8)).odd)).yxxx, ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 8))(rotate(((VECTOR(int64_t, 8))(6L, ((VECTOR(int64_t, 4))(l_469.sd289)), 0x1A7299F77C744603L, 0x07E6C6B775DB9EF5L, 0x32E415B73058DB30L)), ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(min(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 4))(l_469.s4, ((VECTOR(int64_t, 2))(l_470.xy)), 0x47316B0A31252006L)))).lo, (int64_t)((safe_lshift_func_int8_t_s_u((p_50 , (l_473 = (l_469.s9 <= ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(0x638FDD870287A1FBL, 4UL)), 0x729EC944FF30B77BL, 0x4929C9689EDB6831L)).z))), 6)) <= (safe_add_func_uint64_t_u_u((safe_lshift_func_uint16_t_u_s(((safe_sub_func_uint32_t_u_u((safe_lshift_func_int8_t_s_u((safe_lshift_func_uint8_t_u_s(((*l_484) = p_1618->g_113.s7), (safe_div_func_int8_t_s_s(((VECTOR(int8_t, 4))(0L, ((VECTOR(int8_t, 2))(sub_sat(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 16))(l_487.s7274ac5390cd2bc0)))).odd)).s04, ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(mad_sat(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 16))(safe_clamp_func(VECTOR(int8_t, 16),int8_t,((VECTOR(int8_t, 4))(p_1618->g_488.s6440)).yxzwxzxzwxyzzxxy, (int8_t)(l_490 = (((VECTOR(int32_t, 2))(p_1618->g_489.ww)).hi & FAKE_DIVERGE(p_1618->local_0_offset, get_local_id(0), 10))), (int8_t)l_487.s8))))).s67, ((VECTOR(int8_t, 8))(l_491.s36372755)).s00, ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(0x0EL, 0x08L)).xxyxyyxy)).s36))), l_491.s0, 0x4EL, 0x71L, (safe_mul_func_uint16_t_u_u((safe_mul_func_int8_t_s_s((safe_rshift_func_uint8_t_u_s((safe_mod_func_uint32_t_u_u(((*l_500) |= l_490), 0xD6ABD2B6L)), 4)), p_51)), l_490)), (-5L), 0x3CL)))).s33))), 0x5FL)).y, 0x1EL)))), 5)), l_491.s0)) & FAKE_DIVERGE(p_1618->group_2_offset, get_group_id(2), 10)), p_50)), l_468.s7)))))), (-1L), 7L)).wwxxwzxy))))))).odd))).z >= 0x462320AEC6F41DDDL));
    if (((safe_add_func_uint32_t_u_u(((VECTOR(uint32_t, 8))((safe_add_func_uint8_t_u_u(((VECTOR(uint8_t, 4))(l_508.sfe70)).x, (safe_mul_func_int16_t_s_s((l_511 > (0x7E1940FDL >= (((*l_512) |= (*l_503)) && ((*l_523) ^= (p_50 || (((((!(safe_div_func_uint16_t_u_u(((((*l_484) = (((*l_521) = (l_515 && ((safe_sub_func_int64_t_s_s(((((VECTOR(uint32_t, 16))(rotate(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 8))(l_518.xyzzyzwy)).s70)).xyxxyxyxxyxyyxyy, ((VECTOR(uint32_t, 8))(l_519.yxyyxyxy)).s5121133246044414))).sc , (18446744073709551615UL || (((*l_503) & 65535UL) != p_51))) ^ FAKE_DIVERGE(p_1618->group_0_offset, get_group_id(0), 10)), (*p_1618->g_438))) , p_1618->g_520.s7))) != (*p_1618->g_438))) > l_522) >= (**p_1618->g_184)), p_1618->g_296.z))) != p_1618->g_113.s4) & p_1618->g_7[0][4][2]) , &p_50) == l_512)))))), p_50)))), ((VECTOR(uint32_t, 4))(0x8EE5EBDFL)), 4294967294UL, 2UL, 1UL)).s0, 4294967286UL)) != 0x55773AD211FA6542L))
    { /* block id: 185 */
        union U6 **l_528 = &p_1618->g_524[4];
        int32_t *l_529 = &p_1618->g_95;
        VECTOR(uint64_t, 4) l_536 = (VECTOR(uint64_t, 4))(18446744073709551612UL, (VECTOR(uint64_t, 2))(18446744073709551612UL, 0x12EF96059B0EBD00L), 0x12EF96059B0EBD00L);
        VECTOR(int8_t, 16) l_546 = (VECTOR(int8_t, 16))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x7EL), 0x7EL), 0x7EL, (-1L), 0x7EL, (VECTOR(int8_t, 2))((-1L), 0x7EL), (VECTOR(int8_t, 2))((-1L), 0x7EL), (-1L), 0x7EL, (-1L), 0x7EL);
        int8_t **l_575 = &p_1618->g_467[1][3];
        int32_t l_612 = 0x676077DBL;
        int32_t l_613 = (-6L);
        int32_t l_614[4];
        int i;
        for (i = 0; i < 4; i++)
            l_614[i] = 0L;
        l_529 = (((((*l_528) = p_1618->g_524[4]) == (void*)0) < 0L) , l_529);
        for (p_1618->g_95 = 0; (p_1618->g_95 < 15); ++p_1618->g_95)
        { /* block id: 190 */
            uint8_t *l_566 = &p_1618->g_157[4];
            int32_t l_573 = 0x3E394B11L;
            int16_t *l_600[9][9][3] = {{{(void*)0,(void*)0,&p_1618->g_249},{(void*)0,(void*)0,&p_1618->g_249},{(void*)0,(void*)0,&p_1618->g_249},{(void*)0,(void*)0,&p_1618->g_249},{(void*)0,(void*)0,&p_1618->g_249},{(void*)0,(void*)0,&p_1618->g_249},{(void*)0,(void*)0,&p_1618->g_249},{(void*)0,(void*)0,&p_1618->g_249},{(void*)0,(void*)0,&p_1618->g_249}},{{(void*)0,(void*)0,&p_1618->g_249},{(void*)0,(void*)0,&p_1618->g_249},{(void*)0,(void*)0,&p_1618->g_249},{(void*)0,(void*)0,&p_1618->g_249},{(void*)0,(void*)0,&p_1618->g_249},{(void*)0,(void*)0,&p_1618->g_249},{(void*)0,(void*)0,&p_1618->g_249},{(void*)0,(void*)0,&p_1618->g_249},{(void*)0,(void*)0,&p_1618->g_249}},{{(void*)0,(void*)0,&p_1618->g_249},{(void*)0,(void*)0,&p_1618->g_249},{(void*)0,(void*)0,&p_1618->g_249},{(void*)0,(void*)0,&p_1618->g_249},{(void*)0,(void*)0,&p_1618->g_249},{(void*)0,(void*)0,&p_1618->g_249},{(void*)0,(void*)0,&p_1618->g_249},{(void*)0,(void*)0,&p_1618->g_249},{(void*)0,(void*)0,&p_1618->g_249}},{{(void*)0,(void*)0,&p_1618->g_249},{(void*)0,(void*)0,&p_1618->g_249},{(void*)0,(void*)0,&p_1618->g_249},{(void*)0,(void*)0,&p_1618->g_249},{(void*)0,(void*)0,&p_1618->g_249},{(void*)0,(void*)0,&p_1618->g_249},{(void*)0,(void*)0,&p_1618->g_249},{(void*)0,(void*)0,&p_1618->g_249},{(void*)0,(void*)0,&p_1618->g_249}},{{(void*)0,(void*)0,&p_1618->g_249},{(void*)0,(void*)0,&p_1618->g_249},{(void*)0,(void*)0,&p_1618->g_249},{(void*)0,(void*)0,&p_1618->g_249},{(void*)0,(void*)0,&p_1618->g_249},{(void*)0,(void*)0,&p_1618->g_249},{(void*)0,(void*)0,&p_1618->g_249},{(void*)0,(void*)0,&p_1618->g_249},{(void*)0,(void*)0,&p_1618->g_249}},{{(void*)0,(void*)0,&p_1618->g_249},{(void*)0,(void*)0,&p_1618->g_249},{(void*)0,(void*)0,&p_1618->g_249},{(void*)0,(void*)0,&p_1618->g_249},{(void*)0,(void*)0,&p_1618->g_249},{(void*)0,(void*)0,&p_1618->g_249},{(void*)0,(void*)0,&p_1618->g_249},{(void*)0,(void*)0,&p_1618->g_249},{(void*)0,(void*)0,&p_1618->g_249}},{{(void*)0,(void*)0,&p_1618->g_249},{(void*)0,(void*)0,&p_1618->g_249},{(void*)0,(void*)0,&p_1618->g_249},{(void*)0,(void*)0,&p_1618->g_249},{(void*)0,(void*)0,&p_1618->g_249},{(void*)0,(void*)0,&p_1618->g_249},{(void*)0,(void*)0,&p_1618->g_249},{(void*)0,(void*)0,&p_1618->g_249},{(void*)0,(void*)0,&p_1618->g_249}},{{(void*)0,(void*)0,&p_1618->g_249},{(void*)0,(void*)0,&p_1618->g_249},{(void*)0,(void*)0,&p_1618->g_249},{(void*)0,(void*)0,&p_1618->g_249},{(void*)0,(void*)0,&p_1618->g_249},{(void*)0,(void*)0,&p_1618->g_249},{(void*)0,(void*)0,&p_1618->g_249},{(void*)0,(void*)0,&p_1618->g_249},{(void*)0,(void*)0,&p_1618->g_249}},{{(void*)0,(void*)0,&p_1618->g_249},{(void*)0,(void*)0,&p_1618->g_249},{(void*)0,(void*)0,&p_1618->g_249},{(void*)0,(void*)0,&p_1618->g_249},{(void*)0,(void*)0,&p_1618->g_249},{(void*)0,(void*)0,&p_1618->g_249},{(void*)0,(void*)0,&p_1618->g_249},{(void*)0,(void*)0,&p_1618->g_249},{(void*)0,(void*)0,&p_1618->g_249}}};
            int i, j, k;
            for (p_1618->g_130 = (-9); (p_1618->g_130 > 10); p_1618->g_130 = safe_add_func_int8_t_s_s(p_1618->g_130, 8))
            { /* block id: 193 */
                int16_t **l_545 = &l_523;
                uint8_t *l_565 = &p_1618->g_314;
                int32_t l_576 = 0x4AFCF37BL;
                int32_t l_598[1][9][4] = {{{7L,1L,0x173888D5L,(-1L)},{7L,1L,0x173888D5L,(-1L)},{7L,1L,0x173888D5L,(-1L)},{7L,1L,0x173888D5L,(-1L)},{7L,1L,0x173888D5L,(-1L)},{7L,1L,0x173888D5L,(-1L)},{7L,1L,0x173888D5L,(-1L)},{7L,1L,0x173888D5L,(-1L)},{7L,1L,0x173888D5L,(-1L)}}};
                int i, j, k;
                (*p_1618->g_184) = (*p_1618->g_184);
                for (l_473 = 20; (l_473 != (-10)); l_473 = safe_sub_func_uint32_t_u_u(l_473, 3))
                { /* block id: 197 */
                    int32_t l_553 = 1L;
                    int32_t *l_554 = &l_490;
                    int32_t **l_555 = &l_503;
                    uint8_t *l_567 = (void*)0;
                    uint8_t **l_568 = &l_484;
                    int8_t *l_577 = &p_1618->g_30;
                    int32_t *l_578[4][3];
                    VECTOR(int64_t, 4) l_585 = (VECTOR(int64_t, 4))(0x34445434044754F8L, (VECTOR(int64_t, 2))(0x34445434044754F8L, 0x2E5A57EF8D098761L), 0x2E5A57EF8D098761L);
                    VECTOR(int32_t, 2) l_587 = (VECTOR(int32_t, 2))((-1L), (-10L));
                    int i, j;
                    for (i = 0; i < 4; i++)
                    {
                        for (j = 0; j < 3; j++)
                            l_578[i][j] = (void*)0;
                    }
                    (*l_554) |= ((((VECTOR(uint64_t, 8))(abs(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 8))(0UL, ((VECTOR(uint64_t, 4))(0x9B4AC63CBDBE5F35L, 0xCFC3E09FE74E8F98L, 1UL, 1UL)), ((VECTOR(uint64_t, 2))(l_536.ww)), 0x19AC641B2660CDF9L)))).s41)).yxxxyxyx))).s3 != (safe_mod_func_uint8_t_u_u(((0x6362L < (p_1618->g_59 , ((p_50 <= (safe_sub_func_int64_t_s_s((p_51 >= ((*p_1618->g_438)--)), ((((p_51 & ((l_545 = p_1618->g_543) != (void*)0)) == ((-5L) < (((VECTOR(int8_t, 8))(((VECTOR(int8_t, 8))(l_546.sac2ae0bb)))).s3 & ((safe_mul_func_int8_t_s_s(((safe_div_func_uint16_t_u_u((safe_rshift_func_int8_t_s_u((l_553 <= p_1618->g_34.x), 0)), FAKE_DIVERGE(p_1618->local_0_offset, get_local_id(0), 10))) == p_50), 1L)) <= (*l_503))))) || p_50) , 0x591592B760BC83CBL)))) , p_50))) || 0x6A0D6D0B11492DBCL), p_1618->g_7[1][3][0]))) != FAKE_DIVERGE(p_1618->global_0_offset, get_global_id(0), 10));
                    (*l_555) = ((*p_1618->g_184) = (*p_1618->g_184));
                    if ((**p_1618->g_184))
                        break;
                }
            }
        }
        for (l_522 = 0; (l_522 > 49); l_522++)
        { /* block id: 224 */
            VECTOR(uint16_t, 8) l_605 = (VECTOR(uint16_t, 8))(0xC9CBL, (VECTOR(uint16_t, 4))(0xC9CBL, (VECTOR(uint16_t, 2))(0xC9CBL, 0xA533L), 0xA533L), 0xA533L, 0xC9CBL, 0xA533L);
            int32_t *l_607 = (void*)0;
            int32_t *l_608 = &l_473;
            int32_t *l_609 = &l_473;
            int32_t *l_610 = (void*)0;
            int32_t *l_611[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            int16_t l_615 = 9L;
            int i;
            if (l_605.s7)
                break;
            p_1618->g_606 &= ((void*)0 != &p_1618->g_467[2][3]);
            if ((*p_1618->g_185))
                continue;
            l_616++;
        }
        (*l_529) ^= 0x005138BEL;
    }
    else
    { /* block id: 231 */
        l_490 ^= ((*l_503) = (safe_div_func_int32_t_s_s((**p_1618->g_184), 0x4963089DL)));
    }
    return (*p_1618->g_185);
}


/* ------------------------------------------ */
/* 
 * reads : p_1618->g_34 p_1618->g_86 p_1618->g_33 p_1618->g_comm_values p_1618->g_3 p_1618->g_93 p_1618->g_95 p_1618->g_157 p_1618->g_59.f0
 * writes: p_1618->g_93 p_1618->g_95 p_1618->g_59.f0 p_1618->g_30 p_1618->g_104 p_1618->g_comm_values p_1618->l_comm_values p_1618->g_157 p_1618->g_130
 */
struct S2  func_53(struct S2  p_54, int8_t * p_55, int8_t * p_56, int8_t * p_57, int8_t * p_58, struct S7 * p_1618)
{ /* block id: 11 */
    struct S2 l_82 = {0x4FCE62B0DDE25D9DL};
    int8_t *l_85 = &p_1618->g_30;
    int32_t l_91[8] = {5L,5L,5L,5L,5L,5L,5L,5L};
    uint32_t *l_92 = &p_1618->g_93;
    int32_t *l_94 = &p_1618->g_95;
    int16_t l_114 = (-1L);
    uint32_t l_171 = 0x2E68823EL;
    VECTOR(uint32_t, 2) l_183 = (VECTOR(uint32_t, 2))(4294967292UL, 0x624CEE3AL);
    VECTOR(uint8_t, 16) l_213 = (VECTOR(uint8_t, 16))(0x95L, (VECTOR(uint8_t, 4))(0x95L, (VECTOR(uint8_t, 2))(0x95L, 0x11L), 0x11L), 0x11L, 0x95L, 0x11L, (VECTOR(uint8_t, 2))(0x95L, 0x11L), (VECTOR(uint8_t, 2))(0x95L, 0x11L), 0x95L, 0x11L, 0x95L, 0x11L);
    VECTOR(uint64_t, 2) l_221 = (VECTOR(uint64_t, 2))(0UL, 0xAF589615D4B14E12L);
    VECTOR(int16_t, 2) l_238 = (VECTOR(int16_t, 2))(1L, (-6L));
    int64_t *l_241[2][4][10] = {{{(void*)0,&p_1618->g_141[3],&p_1618->g_141[0],&p_1618->g_141[3],(void*)0,(void*)0,&p_1618->g_141[3],&p_1618->g_141[0],&p_1618->g_141[3],(void*)0},{(void*)0,&p_1618->g_141[3],&p_1618->g_141[0],&p_1618->g_141[3],(void*)0,(void*)0,&p_1618->g_141[3],&p_1618->g_141[0],&p_1618->g_141[3],(void*)0},{(void*)0,&p_1618->g_141[3],&p_1618->g_141[0],&p_1618->g_141[3],(void*)0,(void*)0,&p_1618->g_141[3],&p_1618->g_141[0],&p_1618->g_141[3],(void*)0},{(void*)0,&p_1618->g_141[3],&p_1618->g_141[0],&p_1618->g_141[3],(void*)0,(void*)0,&p_1618->g_141[3],&p_1618->g_141[0],&p_1618->g_141[3],(void*)0}},{{(void*)0,&p_1618->g_141[3],&p_1618->g_141[0],&p_1618->g_141[3],(void*)0,(void*)0,&p_1618->g_141[3],&p_1618->g_141[0],&p_1618->g_141[3],(void*)0},{(void*)0,&p_1618->g_141[3],&p_1618->g_141[0],&p_1618->g_141[3],(void*)0,(void*)0,&p_1618->g_141[3],&p_1618->g_141[0],&p_1618->g_141[3],(void*)0},{(void*)0,&p_1618->g_141[3],&p_1618->g_141[0],&p_1618->g_141[3],(void*)0,(void*)0,&p_1618->g_141[3],&p_1618->g_141[0],&p_1618->g_141[3],(void*)0},{(void*)0,&p_1618->g_141[3],&p_1618->g_141[0],&p_1618->g_141[3],(void*)0,(void*)0,&p_1618->g_141[3],&p_1618->g_141[0],&p_1618->g_141[3],(void*)0}}};
    struct S2 l_257 = {0UL};
    VECTOR(uint8_t, 8) l_295 = (VECTOR(uint8_t, 8))(0x8AL, (VECTOR(uint8_t, 4))(0x8AL, (VECTOR(uint8_t, 2))(0x8AL, 4UL), 4UL), 4UL, 0x8AL, 4UL);
    VECTOR(int8_t, 16) l_321 = (VECTOR(int8_t, 16))(5L, (VECTOR(int8_t, 4))(5L, (VECTOR(int8_t, 2))(5L, 0x3FL), 0x3FL), 0x3FL, 5L, 0x3FL, (VECTOR(int8_t, 2))(5L, 0x3FL), (VECTOR(int8_t, 2))(5L, 0x3FL), 5L, 0x3FL, 5L, 0x3FL);
    VECTOR(uint8_t, 8) l_335 = (VECTOR(uint8_t, 8))(0x49L, (VECTOR(uint8_t, 4))(0x49L, (VECTOR(uint8_t, 2))(0x49L, 0x84L), 0x84L), 0x84L, 0x49L, 0x84L);
    union U3 *l_376 = &p_1618->g_377;
    union U3 **l_378 = &l_376;
    union U3 *l_380 = &p_1618->g_381;
    union U3 **l_379 = &l_380;
    VECTOR(int32_t, 4) l_439 = (VECTOR(int32_t, 4))(0x3EC6D11BL, (VECTOR(int32_t, 2))(0x3EC6D11BL, 0x20B31D36L), 0x20B31D36L);
    int64_t l_462 = 1L;
    int i, j, k;
    (*l_94) |= (safe_mod_func_uint32_t_u_u(((*l_92) ^= (safe_mod_func_uint16_t_u_u((p_1618->g_34.x > (safe_add_func_int32_t_s_s((safe_add_func_uint16_t_u_u((((safe_div_func_uint8_t_u_u(((safe_rshift_func_uint8_t_u_u(((safe_mod_func_int16_t_s_s(((l_82 , (void*)0) != (void*)0), (safe_lshift_func_uint8_t_u_s((&p_1618->g_30 == l_85), 4)))) <= ((VECTOR(uint32_t, 16))(p_1618->g_86.s3202164032366521)).sb), 0)) || 0xD67D06F9L), ((safe_lshift_func_uint16_t_u_u(p_1618->g_33.sd, (safe_mod_func_int16_t_s_s((l_91[0] = l_82.f0), p_54.f0)))) | l_82.f0))) < p_1618->g_comm_values[p_1618->tid]) || GROUP_DIVERGE(1, 1)), p_1618->g_3)), p_54.f0))), l_82.f0))), l_82.f0));
    for (p_54.f0 = (-30); (p_54.f0 == 26); ++p_54.f0)
    { /* block id: 17 */
        int32_t *l_123 = (void*)0;
        int32_t l_136 = 8L;
        int32_t l_143 = 0x76BE207BL;
        int32_t l_156 = 0x625E376BL;
        uint32_t **l_179 = &l_92;
        VECTOR(uint32_t, 4) l_180 = (VECTOR(uint32_t, 4))(0xF1E1A577L, (VECTOR(uint32_t, 2))(0xF1E1A577L, 0x56CCD2ECL), 0x56CCD2ECL);
        int64_t l_186 = 0x54584B11E5EC6406L;
        VECTOR(int8_t, 8) l_217 = (VECTOR(int8_t, 8))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 1L), 1L), 1L, 0L, 1L);
        VECTOR(uint8_t, 16) l_240 = (VECTOR(uint8_t, 16))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0xB2L), 0xB2L), 0xB2L, 0UL, 0xB2L, (VECTOR(uint8_t, 2))(0UL, 0xB2L), (VECTOR(uint8_t, 2))(0UL, 0xB2L), 0UL, 0xB2L, 0UL, 0xB2L);
        uint16_t l_256 = 65535UL;
        uint16_t **l_329 = &p_1618->g_208[0][9];
        int32_t l_361 = 8L;
        int32_t l_362 = (-8L);
        int32_t l_363 = 0x6796462EL;
        int32_t l_364 = 0x7CFA79D1L;
        int32_t l_365 = 0x26E4DC9FL;
        VECTOR(int32_t, 16) l_366 = (VECTOR(int32_t, 16))(0x4440B08DL, (VECTOR(int32_t, 4))(0x4440B08DL, (VECTOR(int32_t, 2))(0x4440B08DL, 0x09CF7947L), 0x09CF7947L), 0x09CF7947L, 0x4440B08DL, 0x09CF7947L, (VECTOR(int32_t, 2))(0x4440B08DL, 0x09CF7947L), (VECTOR(int32_t, 2))(0x4440B08DL, 0x09CF7947L), 0x4440B08DL, 0x09CF7947L, 0x4440B08DL, 0x09CF7947L);
        int8_t l_368 = 0L;
        uint16_t l_375 = 65528UL;
        int i;
        if (p_1618->g_93)
            break;
        for (p_1618->g_93 = 12; (p_1618->g_93 >= 8); --p_1618->g_93)
        { /* block id: 21 */
            uint32_t l_125 = 0x3F511B60L;
            int32_t *l_127 = &p_1618->g_95;
            int32_t *l_128 = &l_91[7];
            int32_t *l_129 = &l_91[0];
            int32_t *l_131 = &l_91[0];
            int32_t *l_132 = &l_91[0];
            int32_t *l_133 = &l_91[4];
            int32_t *l_134 = &p_1618->g_95;
            int32_t *l_135 = &l_91[6];
            int32_t *l_137 = &l_91[0];
            int32_t *l_138 = &l_136;
            int32_t *l_139 = &l_91[6];
            int32_t *l_140 = &l_136;
            int32_t l_142 = (-1L);
            int32_t *l_144 = &p_1618->g_95;
            int32_t *l_145 = &l_91[0];
            int32_t *l_146 = &l_91[0];
            int32_t *l_148 = &p_1618->g_95;
            int32_t *l_149 = &p_1618->g_95;
            int32_t *l_150 = &l_91[5];
            int32_t *l_151 = &l_136;
            int32_t *l_152 = &l_91[4];
            int32_t *l_153 = &l_136;
            int32_t *l_154 = &l_143;
            int32_t *l_155[9][8][3] = {{{&p_1618->g_95,&p_1618->g_95,&p_1618->g_95},{&p_1618->g_95,&p_1618->g_95,&p_1618->g_95},{&p_1618->g_95,&p_1618->g_95,&p_1618->g_95},{&p_1618->g_95,&p_1618->g_95,&p_1618->g_95},{&p_1618->g_95,&p_1618->g_95,&p_1618->g_95},{&p_1618->g_95,&p_1618->g_95,&p_1618->g_95},{&p_1618->g_95,&p_1618->g_95,&p_1618->g_95},{&p_1618->g_95,&p_1618->g_95,&p_1618->g_95}},{{&p_1618->g_95,&p_1618->g_95,&p_1618->g_95},{&p_1618->g_95,&p_1618->g_95,&p_1618->g_95},{&p_1618->g_95,&p_1618->g_95,&p_1618->g_95},{&p_1618->g_95,&p_1618->g_95,&p_1618->g_95},{&p_1618->g_95,&p_1618->g_95,&p_1618->g_95},{&p_1618->g_95,&p_1618->g_95,&p_1618->g_95},{&p_1618->g_95,&p_1618->g_95,&p_1618->g_95},{&p_1618->g_95,&p_1618->g_95,&p_1618->g_95}},{{&p_1618->g_95,&p_1618->g_95,&p_1618->g_95},{&p_1618->g_95,&p_1618->g_95,&p_1618->g_95},{&p_1618->g_95,&p_1618->g_95,&p_1618->g_95},{&p_1618->g_95,&p_1618->g_95,&p_1618->g_95},{&p_1618->g_95,&p_1618->g_95,&p_1618->g_95},{&p_1618->g_95,&p_1618->g_95,&p_1618->g_95},{&p_1618->g_95,&p_1618->g_95,&p_1618->g_95},{&p_1618->g_95,&p_1618->g_95,&p_1618->g_95}},{{&p_1618->g_95,&p_1618->g_95,&p_1618->g_95},{&p_1618->g_95,&p_1618->g_95,&p_1618->g_95},{&p_1618->g_95,&p_1618->g_95,&p_1618->g_95},{&p_1618->g_95,&p_1618->g_95,&p_1618->g_95},{&p_1618->g_95,&p_1618->g_95,&p_1618->g_95},{&p_1618->g_95,&p_1618->g_95,&p_1618->g_95},{&p_1618->g_95,&p_1618->g_95,&p_1618->g_95},{&p_1618->g_95,&p_1618->g_95,&p_1618->g_95}},{{&p_1618->g_95,&p_1618->g_95,&p_1618->g_95},{&p_1618->g_95,&p_1618->g_95,&p_1618->g_95},{&p_1618->g_95,&p_1618->g_95,&p_1618->g_95},{&p_1618->g_95,&p_1618->g_95,&p_1618->g_95},{&p_1618->g_95,&p_1618->g_95,&p_1618->g_95},{&p_1618->g_95,&p_1618->g_95,&p_1618->g_95},{&p_1618->g_95,&p_1618->g_95,&p_1618->g_95},{&p_1618->g_95,&p_1618->g_95,&p_1618->g_95}},{{&p_1618->g_95,&p_1618->g_95,&p_1618->g_95},{&p_1618->g_95,&p_1618->g_95,&p_1618->g_95},{&p_1618->g_95,&p_1618->g_95,&p_1618->g_95},{&p_1618->g_95,&p_1618->g_95,&p_1618->g_95},{&p_1618->g_95,&p_1618->g_95,&p_1618->g_95},{&p_1618->g_95,&p_1618->g_95,&p_1618->g_95},{&p_1618->g_95,&p_1618->g_95,&p_1618->g_95},{&p_1618->g_95,&p_1618->g_95,&p_1618->g_95}},{{&p_1618->g_95,&p_1618->g_95,&p_1618->g_95},{&p_1618->g_95,&p_1618->g_95,&p_1618->g_95},{&p_1618->g_95,&p_1618->g_95,&p_1618->g_95},{&p_1618->g_95,&p_1618->g_95,&p_1618->g_95},{&p_1618->g_95,&p_1618->g_95,&p_1618->g_95},{&p_1618->g_95,&p_1618->g_95,&p_1618->g_95},{&p_1618->g_95,&p_1618->g_95,&p_1618->g_95},{&p_1618->g_95,&p_1618->g_95,&p_1618->g_95}},{{&p_1618->g_95,&p_1618->g_95,&p_1618->g_95},{&p_1618->g_95,&p_1618->g_95,&p_1618->g_95},{&p_1618->g_95,&p_1618->g_95,&p_1618->g_95},{&p_1618->g_95,&p_1618->g_95,&p_1618->g_95},{&p_1618->g_95,&p_1618->g_95,&p_1618->g_95},{&p_1618->g_95,&p_1618->g_95,&p_1618->g_95},{&p_1618->g_95,&p_1618->g_95,&p_1618->g_95},{&p_1618->g_95,&p_1618->g_95,&p_1618->g_95}},{{&p_1618->g_95,&p_1618->g_95,&p_1618->g_95},{&p_1618->g_95,&p_1618->g_95,&p_1618->g_95},{&p_1618->g_95,&p_1618->g_95,&p_1618->g_95},{&p_1618->g_95,&p_1618->g_95,&p_1618->g_95},{&p_1618->g_95,&p_1618->g_95,&p_1618->g_95},{&p_1618->g_95,&p_1618->g_95,&p_1618->g_95},{&p_1618->g_95,&p_1618->g_95,&p_1618->g_95},{&p_1618->g_95,&p_1618->g_95,&p_1618->g_95}}};
            int16_t *l_164 = (void*)0;
            int16_t *l_165 = (void*)0;
            int16_t *l_166 = &p_1618->g_130;
            uint32_t **l_169 = &l_92;
            int32_t **l_170 = &l_135;
            int i, j, k;
            for (p_1618->g_59.f0 = 14; (p_1618->g_59.f0 <= 2); p_1618->g_59.f0--)
            { /* block id: 24 */
                uint32_t l_124 = 0xE7310FB7L;
                struct S2 l_126 = {0x347DC9BE96803575L};
                for (p_1618->g_30 = 0; (p_1618->g_30 == 6); p_1618->g_30 = safe_add_func_int32_t_s_s(p_1618->g_30, 1))
                { /* block id: 27 */
                    uint32_t *l_109[3][10] = {{&p_1618->g_93,(void*)0,&p_1618->g_93,(void*)0,&p_1618->g_93,(void*)0,&p_1618->g_93,(void*)0,(void*)0,(void*)0},{&p_1618->g_93,(void*)0,&p_1618->g_93,(void*)0,&p_1618->g_93,(void*)0,&p_1618->g_93,(void*)0,(void*)0,(void*)0},{&p_1618->g_93,(void*)0,&p_1618->g_93,(void*)0,&p_1618->g_93,(void*)0,&p_1618->g_93,(void*)0,(void*)0,(void*)0}};
                    int i, j;
                    p_1618->g_104 = p_54;
                    for (l_82.f0 = 0; (l_82.f0 > 25); l_82.f0 = safe_add_func_int64_t_s_s(l_82.f0, 6))
                    { /* block id: 31 */
                        (*l_94) = 0x13D2D6DAL;
                    }
                    (*l_94) ^= (safe_add_func_uint32_t_u_u(((+(l_109[1][3] == &p_1618->g_93)) <= ((safe_lshift_func_uint16_t_u_s((((safe_unary_minus_func_uint64_t_u(((VECTOR(uint64_t, 4))(p_1618->g_113.s9990)).x)) , (l_114 | (safe_rshift_func_uint16_t_u_u(0xEC2AL, (GROUP_DIVERGE(0, 1) & (safe_mod_func_uint32_t_u_u(((safe_sub_func_int32_t_s_s(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(0x0546551EL, 7L)), 9L, 9L)).w, p_1618->g_3)) && p_54.f0), p_54.f0))))))) == (0x5E97E1C57157DACBL & (p_1618->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1618->tid, 200))] = (~(p_1618->g_comm_values[p_1618->tid] = (safe_div_func_int16_t_s_s(((&p_1618->g_7[0][1][1] == l_123) && l_124), (-1L)))))))), 1)) , l_125)), p_1618->g_33.s5));
                }
                return l_126;
            }
            ++p_1618->g_157[4];
            (*l_170) = (((*l_94) = ((((void*)0 != &p_1618->g_30) <= (safe_add_func_uint8_t_u_u((safe_mod_func_int8_t_s_s(0x51L, 0x74L)), p_54.f0))) , (((*l_166) = p_54.f0) < (((safe_mod_func_int64_t_s_s((&p_1618->g_93 == ((*l_169) = l_123)), p_1618->g_59.f0)) , p_54.f0) | 0UL)))) , &l_142);
            (*l_133) |= (1UL & l_171);
        }
    }
    (*l_379) = ((*l_378) = l_376);
    for (p_1618->g_93 = (-21); (p_1618->g_93 <= 39); p_1618->g_93++)
    { /* block id: 129 */
        uint64_t l_436 = 1UL;
        union U3 *l_442 = &p_1618->g_443;
        struct S2 l_446 = {0x168A38C5895F3D7DL};
        uint16_t *l_455[4][9] = {{&p_1618->g_194[0],&p_1618->g_194[0],&p_1618->g_422,&p_1618->g_194[0],&p_1618->g_194[0],&p_1618->g_194[0],&p_1618->g_194[0],&p_1618->g_422,&p_1618->g_194[0]},{&p_1618->g_194[0],&p_1618->g_194[0],&p_1618->g_422,&p_1618->g_194[0],&p_1618->g_194[0],&p_1618->g_194[0],&p_1618->g_194[0],&p_1618->g_422,&p_1618->g_194[0]},{&p_1618->g_194[0],&p_1618->g_194[0],&p_1618->g_422,&p_1618->g_194[0],&p_1618->g_194[0],&p_1618->g_194[0],&p_1618->g_194[0],&p_1618->g_422,&p_1618->g_194[0]},{&p_1618->g_194[0],&p_1618->g_194[0],&p_1618->g_422,&p_1618->g_194[0],&p_1618->g_194[0],&p_1618->g_194[0],&p_1618->g_194[0],&p_1618->g_422,&p_1618->g_194[0]}};
        int32_t l_456[1][9] = {{(-1L),4L,(-1L),(-1L),4L,(-1L),(-1L),4L,(-1L)}};
        int8_t *l_457[4][6][10] = {{{(void*)0,&p_1618->g_30,(void*)0,(void*)0,&p_1618->g_30,(void*)0,&p_1618->g_30,(void*)0,(void*)0,(void*)0},{(void*)0,&p_1618->g_30,(void*)0,(void*)0,&p_1618->g_30,(void*)0,&p_1618->g_30,(void*)0,(void*)0,(void*)0},{(void*)0,&p_1618->g_30,(void*)0,(void*)0,&p_1618->g_30,(void*)0,&p_1618->g_30,(void*)0,(void*)0,(void*)0},{(void*)0,&p_1618->g_30,(void*)0,(void*)0,&p_1618->g_30,(void*)0,&p_1618->g_30,(void*)0,(void*)0,(void*)0},{(void*)0,&p_1618->g_30,(void*)0,(void*)0,&p_1618->g_30,(void*)0,&p_1618->g_30,(void*)0,(void*)0,(void*)0},{(void*)0,&p_1618->g_30,(void*)0,(void*)0,&p_1618->g_30,(void*)0,&p_1618->g_30,(void*)0,(void*)0,(void*)0}},{{(void*)0,&p_1618->g_30,(void*)0,(void*)0,&p_1618->g_30,(void*)0,&p_1618->g_30,(void*)0,(void*)0,(void*)0},{(void*)0,&p_1618->g_30,(void*)0,(void*)0,&p_1618->g_30,(void*)0,&p_1618->g_30,(void*)0,(void*)0,(void*)0},{(void*)0,&p_1618->g_30,(void*)0,(void*)0,&p_1618->g_30,(void*)0,&p_1618->g_30,(void*)0,(void*)0,(void*)0},{(void*)0,&p_1618->g_30,(void*)0,(void*)0,&p_1618->g_30,(void*)0,&p_1618->g_30,(void*)0,(void*)0,(void*)0},{(void*)0,&p_1618->g_30,(void*)0,(void*)0,&p_1618->g_30,(void*)0,&p_1618->g_30,(void*)0,(void*)0,(void*)0},{(void*)0,&p_1618->g_30,(void*)0,(void*)0,&p_1618->g_30,(void*)0,&p_1618->g_30,(void*)0,(void*)0,(void*)0}},{{(void*)0,&p_1618->g_30,(void*)0,(void*)0,&p_1618->g_30,(void*)0,&p_1618->g_30,(void*)0,(void*)0,(void*)0},{(void*)0,&p_1618->g_30,(void*)0,(void*)0,&p_1618->g_30,(void*)0,&p_1618->g_30,(void*)0,(void*)0,(void*)0},{(void*)0,&p_1618->g_30,(void*)0,(void*)0,&p_1618->g_30,(void*)0,&p_1618->g_30,(void*)0,(void*)0,(void*)0},{(void*)0,&p_1618->g_30,(void*)0,(void*)0,&p_1618->g_30,(void*)0,&p_1618->g_30,(void*)0,(void*)0,(void*)0},{(void*)0,&p_1618->g_30,(void*)0,(void*)0,&p_1618->g_30,(void*)0,&p_1618->g_30,(void*)0,(void*)0,(void*)0},{(void*)0,&p_1618->g_30,(void*)0,(void*)0,&p_1618->g_30,(void*)0,&p_1618->g_30,(void*)0,(void*)0,(void*)0}},{{(void*)0,&p_1618->g_30,(void*)0,(void*)0,&p_1618->g_30,(void*)0,&p_1618->g_30,(void*)0,(void*)0,(void*)0},{(void*)0,&p_1618->g_30,(void*)0,(void*)0,&p_1618->g_30,(void*)0,&p_1618->g_30,(void*)0,(void*)0,(void*)0},{(void*)0,&p_1618->g_30,(void*)0,(void*)0,&p_1618->g_30,(void*)0,&p_1618->g_30,(void*)0,(void*)0,(void*)0},{(void*)0,&p_1618->g_30,(void*)0,(void*)0,&p_1618->g_30,(void*)0,&p_1618->g_30,(void*)0,(void*)0,(void*)0},{(void*)0,&p_1618->g_30,(void*)0,(void*)0,&p_1618->g_30,(void*)0,&p_1618->g_30,(void*)0,(void*)0,(void*)0},{(void*)0,&p_1618->g_30,(void*)0,(void*)0,&p_1618->g_30,(void*)0,&p_1618->g_30,(void*)0,(void*)0,(void*)0}}};
        int8_t **l_458 = &l_85;
        uint32_t *l_459 = (void*)0;
        uint32_t *l_460 = (void*)0;
        uint32_t *l_461[6] = {&p_1618->g_250,&p_1618->g_250,&p_1618->g_250,&p_1618->g_250,&p_1618->g_250,&p_1618->g_250};
        int64_t *l_463[2];
        int32_t l_465 = 4L;
        int i, j, k;
        for (i = 0; i < 2; i++)
            l_463[i] = &p_1618->g_464;
        if (p_54.f0)
            break;
    }
    return p_54;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global volatile int *g_atomic_reduction, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[75];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 75; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[75];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 75; i++)
            l_special_values[i] = 0;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    __local int64_t l_comm_values[200];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 200; i++)
            l_comm_values[i] = 1;
    struct S7 c_1619;
    struct S7* p_1618 = &c_1619;
    struct S7 c_1620 = {
        {{{(-1L),0L,0L,(-1L),8L,0x280643B8L,5L,0x168CB667L},{(-1L),0L,0L,(-1L),8L,0x280643B8L,5L,0x168CB667L},{(-1L),0L,0L,(-1L),8L,0x280643B8L,5L,0x168CB667L},{(-1L),0L,0L,(-1L),8L,0x280643B8L,5L,0x168CB667L},{(-1L),0L,0L,(-1L),8L,0x280643B8L,5L,0x168CB667L},{(-1L),0L,0L,(-1L),8L,0x280643B8L,5L,0x168CB667L}}}, // p_1618->g_2
        0x4D9796A0L, // p_1618->g_3
        {{0x6CE1A812L,(-1L),0x65F4B3F4L,1L,0x65F4B3F4L,(-1L),0x6CE1A812L,0x005D9C72L,0L,1L},{0x6CE1A812L,(-1L),0x65F4B3F4L,1L,0x65F4B3F4L,(-1L),0x6CE1A812L,0x005D9C72L,0L,1L},{0x6CE1A812L,(-1L),0x65F4B3F4L,1L,0x65F4B3F4L,(-1L),0x6CE1A812L,0x005D9C72L,0L,1L},{0x6CE1A812L,(-1L),0x65F4B3F4L,1L,0x65F4B3F4L,(-1L),0x6CE1A812L,0x005D9C72L,0L,1L},{0x6CE1A812L,(-1L),0x65F4B3F4L,1L,0x65F4B3F4L,(-1L),0x6CE1A812L,0x005D9C72L,0L,1L},{0x6CE1A812L,(-1L),0x65F4B3F4L,1L,0x65F4B3F4L,(-1L),0x6CE1A812L,0x005D9C72L,0L,1L},{0x6CE1A812L,(-1L),0x65F4B3F4L,1L,0x65F4B3F4L,(-1L),0x6CE1A812L,0x005D9C72L,0L,1L}}, // p_1618->g_6
        {{{(-1L),0x5D8D3410L,(-1L)},{(-1L),0x5D8D3410L,(-1L)},{(-1L),0x5D8D3410L,(-1L)},{(-1L),0x5D8D3410L,(-1L)},{(-1L),0x5D8D3410L,(-1L)},{(-1L),0x5D8D3410L,(-1L)}},{{(-1L),0x5D8D3410L,(-1L)},{(-1L),0x5D8D3410L,(-1L)},{(-1L),0x5D8D3410L,(-1L)},{(-1L),0x5D8D3410L,(-1L)},{(-1L),0x5D8D3410L,(-1L)},{(-1L),0x5D8D3410L,(-1L)}},{{(-1L),0x5D8D3410L,(-1L)},{(-1L),0x5D8D3410L,(-1L)},{(-1L),0x5D8D3410L,(-1L)},{(-1L),0x5D8D3410L,(-1L)},{(-1L),0x5D8D3410L,(-1L)},{(-1L),0x5D8D3410L,(-1L)}}}, // p_1618->g_7
        (-4L), // p_1618->g_30
        (VECTOR(int8_t, 16))(0x69L, (VECTOR(int8_t, 4))(0x69L, (VECTOR(int8_t, 2))(0x69L, 0L), 0L), 0L, 0x69L, 0L, (VECTOR(int8_t, 2))(0x69L, 0L), (VECTOR(int8_t, 2))(0x69L, 0L), 0x69L, 0L, 0x69L, 0L), // p_1618->g_33
        (VECTOR(uint8_t, 4))(248UL, (VECTOR(uint8_t, 2))(248UL, 250UL), 250UL), // p_1618->g_34
        {0x40B35667B22F105EL}, // p_1618->g_59
        (VECTOR(uint32_t, 8))(6UL, (VECTOR(uint32_t, 4))(6UL, (VECTOR(uint32_t, 2))(6UL, 0x14567548L), 0x14567548L), 0x14567548L, 6UL, 0x14567548L), // p_1618->g_86
        0xFF1AB120L, // p_1618->g_93
        (-4L), // p_1618->g_95
        {18446744073709551615UL}, // p_1618->g_104
        (VECTOR(uint64_t, 16))(0x7715EE0523CF742FL, (VECTOR(uint64_t, 4))(0x7715EE0523CF742FL, (VECTOR(uint64_t, 2))(0x7715EE0523CF742FL, 0UL), 0UL), 0UL, 0x7715EE0523CF742FL, 0UL, (VECTOR(uint64_t, 2))(0x7715EE0523CF742FL, 0UL), (VECTOR(uint64_t, 2))(0x7715EE0523CF742FL, 0UL), 0x7715EE0523CF742FL, 0UL, 0x7715EE0523CF742FL, 0UL), // p_1618->g_113
        0L, // p_1618->g_130
        {(-8L),(-8L),(-8L),(-8L)}, // p_1618->g_141
        (VECTOR(int32_t, 8))(0x0C28541DL, (VECTOR(int32_t, 4))(0x0C28541DL, (VECTOR(int32_t, 2))(0x0C28541DL, 0x0C4F2CD8L), 0x0C4F2CD8L), 0x0C4F2CD8L, 0x0C28541DL, 0x0C4F2CD8L), // p_1618->g_147
        {0xD5L,0x26L,0xD5L,0xD5L,0x26L,0xD5L}, // p_1618->g_157
        (VECTOR(uint32_t, 4))(0x8E1B6261L, (VECTOR(uint32_t, 2))(0x8E1B6261L, 4294967295UL), 4294967295UL), // p_1618->g_174
        &p_1618->g_7[0][2][0], // p_1618->g_185
        &p_1618->g_185, // p_1618->g_184
        {8UL,8UL}, // p_1618->g_194
        65535UL, // p_1618->g_209
        {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}, // p_1618->g_208
        (VECTOR(int8_t, 16))(6L, (VECTOR(int8_t, 4))(6L, (VECTOR(int8_t, 2))(6L, 0L), 0L), 0L, 6L, 0L, (VECTOR(int8_t, 2))(6L, 0L), (VECTOR(int8_t, 2))(6L, 0L), 6L, 0L, 6L, 0L), // p_1618->g_239
        {{{18446744073709551610UL,0xB8BE3C6FCBD07F21L,1UL,0x164A4B153B5C7476L,0x3E49B171A6DB7C81L,0x164A4B153B5C7476L,1UL,0xB8BE3C6FCBD07F21L,18446744073709551610UL},{18446744073709551610UL,0xB8BE3C6FCBD07F21L,1UL,0x164A4B153B5C7476L,0x3E49B171A6DB7C81L,0x164A4B153B5C7476L,1UL,0xB8BE3C6FCBD07F21L,18446744073709551610UL},{18446744073709551610UL,0xB8BE3C6FCBD07F21L,1UL,0x164A4B153B5C7476L,0x3E49B171A6DB7C81L,0x164A4B153B5C7476L,1UL,0xB8BE3C6FCBD07F21L,18446744073709551610UL},{18446744073709551610UL,0xB8BE3C6FCBD07F21L,1UL,0x164A4B153B5C7476L,0x3E49B171A6DB7C81L,0x164A4B153B5C7476L,1UL,0xB8BE3C6FCBD07F21L,18446744073709551610UL},{18446744073709551610UL,0xB8BE3C6FCBD07F21L,1UL,0x164A4B153B5C7476L,0x3E49B171A6DB7C81L,0x164A4B153B5C7476L,1UL,0xB8BE3C6FCBD07F21L,18446744073709551610UL}},{{18446744073709551610UL,0xB8BE3C6FCBD07F21L,1UL,0x164A4B153B5C7476L,0x3E49B171A6DB7C81L,0x164A4B153B5C7476L,1UL,0xB8BE3C6FCBD07F21L,18446744073709551610UL},{18446744073709551610UL,0xB8BE3C6FCBD07F21L,1UL,0x164A4B153B5C7476L,0x3E49B171A6DB7C81L,0x164A4B153B5C7476L,1UL,0xB8BE3C6FCBD07F21L,18446744073709551610UL},{18446744073709551610UL,0xB8BE3C6FCBD07F21L,1UL,0x164A4B153B5C7476L,0x3E49B171A6DB7C81L,0x164A4B153B5C7476L,1UL,0xB8BE3C6FCBD07F21L,18446744073709551610UL},{18446744073709551610UL,0xB8BE3C6FCBD07F21L,1UL,0x164A4B153B5C7476L,0x3E49B171A6DB7C81L,0x164A4B153B5C7476L,1UL,0xB8BE3C6FCBD07F21L,18446744073709551610UL},{18446744073709551610UL,0xB8BE3C6FCBD07F21L,1UL,0x164A4B153B5C7476L,0x3E49B171A6DB7C81L,0x164A4B153B5C7476L,1UL,0xB8BE3C6FCBD07F21L,18446744073709551610UL}},{{18446744073709551610UL,0xB8BE3C6FCBD07F21L,1UL,0x164A4B153B5C7476L,0x3E49B171A6DB7C81L,0x164A4B153B5C7476L,1UL,0xB8BE3C6FCBD07F21L,18446744073709551610UL},{18446744073709551610UL,0xB8BE3C6FCBD07F21L,1UL,0x164A4B153B5C7476L,0x3E49B171A6DB7C81L,0x164A4B153B5C7476L,1UL,0xB8BE3C6FCBD07F21L,18446744073709551610UL},{18446744073709551610UL,0xB8BE3C6FCBD07F21L,1UL,0x164A4B153B5C7476L,0x3E49B171A6DB7C81L,0x164A4B153B5C7476L,1UL,0xB8BE3C6FCBD07F21L,18446744073709551610UL},{18446744073709551610UL,0xB8BE3C6FCBD07F21L,1UL,0x164A4B153B5C7476L,0x3E49B171A6DB7C81L,0x164A4B153B5C7476L,1UL,0xB8BE3C6FCBD07F21L,18446744073709551610UL},{18446744073709551610UL,0xB8BE3C6FCBD07F21L,1UL,0x164A4B153B5C7476L,0x3E49B171A6DB7C81L,0x164A4B153B5C7476L,1UL,0xB8BE3C6FCBD07F21L,18446744073709551610UL}},{{18446744073709551610UL,0xB8BE3C6FCBD07F21L,1UL,0x164A4B153B5C7476L,0x3E49B171A6DB7C81L,0x164A4B153B5C7476L,1UL,0xB8BE3C6FCBD07F21L,18446744073709551610UL},{18446744073709551610UL,0xB8BE3C6FCBD07F21L,1UL,0x164A4B153B5C7476L,0x3E49B171A6DB7C81L,0x164A4B153B5C7476L,1UL,0xB8BE3C6FCBD07F21L,18446744073709551610UL},{18446744073709551610UL,0xB8BE3C6FCBD07F21L,1UL,0x164A4B153B5C7476L,0x3E49B171A6DB7C81L,0x164A4B153B5C7476L,1UL,0xB8BE3C6FCBD07F21L,18446744073709551610UL},{18446744073709551610UL,0xB8BE3C6FCBD07F21L,1UL,0x164A4B153B5C7476L,0x3E49B171A6DB7C81L,0x164A4B153B5C7476L,1UL,0xB8BE3C6FCBD07F21L,18446744073709551610UL},{18446744073709551610UL,0xB8BE3C6FCBD07F21L,1UL,0x164A4B153B5C7476L,0x3E49B171A6DB7C81L,0x164A4B153B5C7476L,1UL,0xB8BE3C6FCBD07F21L,18446744073709551610UL}}}, // p_1618->g_246
        2L, // p_1618->g_249
        0xE813BFA9L, // p_1618->g_250
        (VECTOR(int32_t, 16))(0x3D5287A0L, (VECTOR(int32_t, 4))(0x3D5287A0L, (VECTOR(int32_t, 2))(0x3D5287A0L, 0x2196DACAL), 0x2196DACAL), 0x2196DACAL, 0x3D5287A0L, 0x2196DACAL, (VECTOR(int32_t, 2))(0x3D5287A0L, 0x2196DACAL), (VECTOR(int32_t, 2))(0x3D5287A0L, 0x2196DACAL), 0x3D5287A0L, 0x2196DACAL, 0x3D5287A0L, 0x2196DACAL), // p_1618->g_268
        (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0x5EL), 0x5EL), // p_1618->g_296
        0xB75B1A38L, // p_1618->g_310
        0x30C10BCBL, // p_1618->g_313
        0xEBL, // p_1618->g_314
        {{{(void*)0,&p_1618->g_141[1],&p_1618->g_141[3],&p_1618->g_141[3],&p_1618->g_141[1]},{(void*)0,&p_1618->g_141[1],&p_1618->g_141[3],&p_1618->g_141[3],&p_1618->g_141[1]},{(void*)0,&p_1618->g_141[1],&p_1618->g_141[3],&p_1618->g_141[3],&p_1618->g_141[1]},{(void*)0,&p_1618->g_141[1],&p_1618->g_141[3],&p_1618->g_141[3],&p_1618->g_141[1]},{(void*)0,&p_1618->g_141[1],&p_1618->g_141[3],&p_1618->g_141[3],&p_1618->g_141[1]}},{{(void*)0,&p_1618->g_141[1],&p_1618->g_141[3],&p_1618->g_141[3],&p_1618->g_141[1]},{(void*)0,&p_1618->g_141[1],&p_1618->g_141[3],&p_1618->g_141[3],&p_1618->g_141[1]},{(void*)0,&p_1618->g_141[1],&p_1618->g_141[3],&p_1618->g_141[3],&p_1618->g_141[1]},{(void*)0,&p_1618->g_141[1],&p_1618->g_141[3],&p_1618->g_141[3],&p_1618->g_141[1]},{(void*)0,&p_1618->g_141[1],&p_1618->g_141[3],&p_1618->g_141[3],&p_1618->g_141[1]}},{{(void*)0,&p_1618->g_141[1],&p_1618->g_141[3],&p_1618->g_141[3],&p_1618->g_141[1]},{(void*)0,&p_1618->g_141[1],&p_1618->g_141[3],&p_1618->g_141[3],&p_1618->g_141[1]},{(void*)0,&p_1618->g_141[1],&p_1618->g_141[3],&p_1618->g_141[3],&p_1618->g_141[1]},{(void*)0,&p_1618->g_141[1],&p_1618->g_141[3],&p_1618->g_141[3],&p_1618->g_141[1]},{(void*)0,&p_1618->g_141[1],&p_1618->g_141[3],&p_1618->g_141[3],&p_1618->g_141[1]}},{{(void*)0,&p_1618->g_141[1],&p_1618->g_141[3],&p_1618->g_141[3],&p_1618->g_141[1]},{(void*)0,&p_1618->g_141[1],&p_1618->g_141[3],&p_1618->g_141[3],&p_1618->g_141[1]},{(void*)0,&p_1618->g_141[1],&p_1618->g_141[3],&p_1618->g_141[3],&p_1618->g_141[1]},{(void*)0,&p_1618->g_141[1],&p_1618->g_141[3],&p_1618->g_141[3],&p_1618->g_141[1]},{(void*)0,&p_1618->g_141[1],&p_1618->g_141[3],&p_1618->g_141[3],&p_1618->g_141[1]}},{{(void*)0,&p_1618->g_141[1],&p_1618->g_141[3],&p_1618->g_141[3],&p_1618->g_141[1]},{(void*)0,&p_1618->g_141[1],&p_1618->g_141[3],&p_1618->g_141[3],&p_1618->g_141[1]},{(void*)0,&p_1618->g_141[1],&p_1618->g_141[3],&p_1618->g_141[3],&p_1618->g_141[1]},{(void*)0,&p_1618->g_141[1],&p_1618->g_141[3],&p_1618->g_141[3],&p_1618->g_141[1]},{(void*)0,&p_1618->g_141[1],&p_1618->g_141[3],&p_1618->g_141[3],&p_1618->g_141[1]}},{{(void*)0,&p_1618->g_141[1],&p_1618->g_141[3],&p_1618->g_141[3],&p_1618->g_141[1]},{(void*)0,&p_1618->g_141[1],&p_1618->g_141[3],&p_1618->g_141[3],&p_1618->g_141[1]},{(void*)0,&p_1618->g_141[1],&p_1618->g_141[3],&p_1618->g_141[3],&p_1618->g_141[1]},{(void*)0,&p_1618->g_141[1],&p_1618->g_141[3],&p_1618->g_141[3],&p_1618->g_141[1]},{(void*)0,&p_1618->g_141[1],&p_1618->g_141[3],&p_1618->g_141[3],&p_1618->g_141[1]}},{{(void*)0,&p_1618->g_141[1],&p_1618->g_141[3],&p_1618->g_141[3],&p_1618->g_141[1]},{(void*)0,&p_1618->g_141[1],&p_1618->g_141[3],&p_1618->g_141[3],&p_1618->g_141[1]},{(void*)0,&p_1618->g_141[1],&p_1618->g_141[3],&p_1618->g_141[3],&p_1618->g_141[1]},{(void*)0,&p_1618->g_141[1],&p_1618->g_141[3],&p_1618->g_141[3],&p_1618->g_141[1]},{(void*)0,&p_1618->g_141[1],&p_1618->g_141[3],&p_1618->g_141[3],&p_1618->g_141[1]}},{{(void*)0,&p_1618->g_141[1],&p_1618->g_141[3],&p_1618->g_141[3],&p_1618->g_141[1]},{(void*)0,&p_1618->g_141[1],&p_1618->g_141[3],&p_1618->g_141[3],&p_1618->g_141[1]},{(void*)0,&p_1618->g_141[1],&p_1618->g_141[3],&p_1618->g_141[3],&p_1618->g_141[1]},{(void*)0,&p_1618->g_141[1],&p_1618->g_141[3],&p_1618->g_141[3],&p_1618->g_141[1]},{(void*)0,&p_1618->g_141[1],&p_1618->g_141[3],&p_1618->g_141[3],&p_1618->g_141[1]}},{{(void*)0,&p_1618->g_141[1],&p_1618->g_141[3],&p_1618->g_141[3],&p_1618->g_141[1]},{(void*)0,&p_1618->g_141[1],&p_1618->g_141[3],&p_1618->g_141[3],&p_1618->g_141[1]},{(void*)0,&p_1618->g_141[1],&p_1618->g_141[3],&p_1618->g_141[3],&p_1618->g_141[1]},{(void*)0,&p_1618->g_141[1],&p_1618->g_141[3],&p_1618->g_141[3],&p_1618->g_141[1]},{(void*)0,&p_1618->g_141[1],&p_1618->g_141[3],&p_1618->g_141[3],&p_1618->g_141[1]}}}, // p_1618->g_349
        (VECTOR(int32_t, 8))((-9L), (VECTOR(int32_t, 4))((-9L), (VECTOR(int32_t, 2))((-9L), (-7L)), (-7L)), (-7L), (-9L), (-7L)), // p_1618->g_352
        0L, // p_1618->g_367
        {0x84L}, // p_1618->g_377
        {0UL}, // p_1618->g_381
        {18446744073709551607UL}, // p_1618->g_391
        {0UL}, // p_1618->g_392
        {{0x9741DC32873D7A9DL}}, // p_1618->g_393
        {1UL}, // p_1618->g_394
        {0xF5B713B7AA850CFCL}, // p_1618->g_395
        {0xF2374E3417BA2DDBL}, // p_1618->g_396
        {{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL}}, // p_1618->g_397
        {0x225A4937A474A702L}, // p_1618->g_398
        {18446744073709551615UL}, // p_1618->g_399
        {{{(void*)0,&p_1618->g_392,&p_1618->g_398,&p_1618->g_395,&p_1618->g_399},{(void*)0,&p_1618->g_392,&p_1618->g_398,&p_1618->g_395,&p_1618->g_399},{(void*)0,&p_1618->g_392,&p_1618->g_398,&p_1618->g_395,&p_1618->g_399},{(void*)0,&p_1618->g_392,&p_1618->g_398,&p_1618->g_395,&p_1618->g_399},{(void*)0,&p_1618->g_392,&p_1618->g_398,&p_1618->g_395,&p_1618->g_399},{(void*)0,&p_1618->g_392,&p_1618->g_398,&p_1618->g_395,&p_1618->g_399},{(void*)0,&p_1618->g_392,&p_1618->g_398,&p_1618->g_395,&p_1618->g_399},{(void*)0,&p_1618->g_392,&p_1618->g_398,&p_1618->g_395,&p_1618->g_399}}}, // p_1618->g_390
        (VECTOR(uint64_t, 16))(0x0E9538AC4C237AC4L, (VECTOR(uint64_t, 4))(0x0E9538AC4C237AC4L, (VECTOR(uint64_t, 2))(0x0E9538AC4C237AC4L, 0x6B91768309D5EF3EL), 0x6B91768309D5EF3EL), 0x6B91768309D5EF3EL, 0x0E9538AC4C237AC4L, 0x6B91768309D5EF3EL, (VECTOR(uint64_t, 2))(0x0E9538AC4C237AC4L, 0x6B91768309D5EF3EL), (VECTOR(uint64_t, 2))(0x0E9538AC4C237AC4L, 0x6B91768309D5EF3EL), 0x0E9538AC4C237AC4L, 0x6B91768309D5EF3EL, 0x0E9538AC4C237AC4L, 0x6B91768309D5EF3EL), // p_1618->g_417
        65535UL, // p_1618->g_422
        &p_1618->g_104.f0, // p_1618->g_438
        {0xE4L}, // p_1618->g_443
        1L, // p_1618->g_464
        {{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}}, // p_1618->g_467
        (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 2L), 2L), 2L, 1L, 2L), // p_1618->g_488
        (VECTOR(int32_t, 4))((-9L), (VECTOR(int32_t, 2))((-9L), 0x778953BEL), 0x778953BEL), // p_1618->g_489
        (VECTOR(uint32_t, 8))(0x5958FFB2L, (VECTOR(uint32_t, 4))(0x5958FFB2L, (VECTOR(uint32_t, 2))(0x5958FFB2L, 0xBFCE242DL), 0xBFCE242DL), 0xBFCE242DL, 0x5958FFB2L, 0xBFCE242DL), // p_1618->g_520
        {5UL}, // p_1618->g_525
        {0x0D99C86604E8D428L}, // p_1618->g_526
        {0x15A7D7949429808FL}, // p_1618->g_527
        {&p_1618->g_526,&p_1618->g_527,&p_1618->g_526,&p_1618->g_526,&p_1618->g_527,&p_1618->g_526}, // p_1618->g_524
        &p_1618->g_130, // p_1618->g_544
        &p_1618->g_544, // p_1618->g_543
        (VECTOR(int8_t, 2))(0x2BL, 0x63L), // p_1618->g_572
        {0UL,0xC0L,0UL,0UL,0xC0L,0UL}, // p_1618->g_590
        0x2BL, // p_1618->g_591
        {&p_1618->g_590[2],&p_1618->g_590[2],&p_1618->g_590[2],&p_1618->g_590[2]}, // p_1618->g_589
        &p_1618->g_589[0], // p_1618->g_588
        65535UL, // p_1618->g_606
        (void*)0, // p_1618->g_625
        {0xFAL}, // p_1618->g_629
        5L, // p_1618->g_723
        {-1L,0x4B51BFABA2F18B68L,8L,{1L,0UL,4294967294UL},7UL,0x60C52FE2L,-1L}, // p_1618->g_745
        {&p_1618->g_745,&p_1618->g_745,&p_1618->g_745,&p_1618->g_745,&p_1618->g_745,&p_1618->g_745,&p_1618->g_745,&p_1618->g_745,&p_1618->g_745}, // p_1618->g_744
        (VECTOR(int64_t, 2))(0x22C9512C6DFDA150L, (-5L)), // p_1618->g_782
        {{{{0x1DL,0x550714D1CC327D53L,0UL}},{{0x1DL,0x550714D1CC327D53L,0UL}},{{0L,18446744073709551608UL,0x998A7135L}},{{0x5DL,0x6101A12F30D526D4L,0x3709EA40L}},{{-1L,0xBDC05E20CD90A3F4L,4294967293UL}},{{0x5DL,0x6101A12F30D526D4L,0x3709EA40L}},{{0L,18446744073709551608UL,0x998A7135L}},{{0x1DL,0x550714D1CC327D53L,0UL}},{{0x1DL,0x550714D1CC327D53L,0UL}}},{{{0x1DL,0x550714D1CC327D53L,0UL}},{{0x1DL,0x550714D1CC327D53L,0UL}},{{0L,18446744073709551608UL,0x998A7135L}},{{0x5DL,0x6101A12F30D526D4L,0x3709EA40L}},{{-1L,0xBDC05E20CD90A3F4L,4294967293UL}},{{0x5DL,0x6101A12F30D526D4L,0x3709EA40L}},{{0L,18446744073709551608UL,0x998A7135L}},{{0x1DL,0x550714D1CC327D53L,0UL}},{{0x1DL,0x550714D1CC327D53L,0UL}}}}, // p_1618->g_803
        &p_1618->g_803[0][4], // p_1618->g_802
        {{6L,0x3DB68BE6A1F2F21CL,0xA35AC639L}}, // p_1618->g_806
        {{{{1L,0UL,4294967295UL}}}}, // p_1618->g_833
        &p_1618->g_833[0][0], // p_1618->g_832
        &p_1618->g_832, // p_1618->g_831
        &p_1618->g_832, // p_1618->g_835
        0x63L, // p_1618->g_854
        {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}, // p_1618->g_882
        {0x71L}, // p_1618->g_916
        {0UL}, // p_1618->g_918
        {0UL}, // p_1618->g_920
        &p_1618->g_920, // p_1618->g_919
        (void*)0, // p_1618->g_922
        {{{7L,0x4875F5EBAF5B4D26L,0xAFC83B31L},{7L,0x4875F5EBAF5B4D26L,0xAFC83B31L},{7L,0x4875F5EBAF5B4D26L,0xAFC83B31L},{7L,0x4875F5EBAF5B4D26L,0xAFC83B31L},{7L,0x4875F5EBAF5B4D26L,0xAFC83B31L},{7L,0x4875F5EBAF5B4D26L,0xAFC83B31L},{7L,0x4875F5EBAF5B4D26L,0xAFC83B31L},{7L,0x4875F5EBAF5B4D26L,0xAFC83B31L}}}, // p_1618->g_931
        (VECTOR(uint8_t, 4))(252UL, (VECTOR(uint8_t, 2))(252UL, 1UL), 1UL), // p_1618->g_939
        (VECTOR(uint16_t, 16))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 65533UL), 65533UL), 65533UL, 65535UL, 65533UL, (VECTOR(uint16_t, 2))(65535UL, 65533UL), (VECTOR(uint16_t, 2))(65535UL, 65533UL), 65535UL, 65533UL, 65535UL, 65533UL), // p_1618->g_969
        (VECTOR(uint16_t, 2))(65530UL, 6UL), // p_1618->g_970
        {8UL}, // p_1618->g_987
        {0x2AL}, // p_1618->g_988
        {255UL}, // p_1618->g_989
        {250UL}, // p_1618->g_991
        (VECTOR(uint16_t, 16))(0xB26FL, (VECTOR(uint16_t, 4))(0xB26FL, (VECTOR(uint16_t, 2))(0xB26FL, 0xD331L), 0xD331L), 0xD331L, 0xB26FL, 0xD331L, (VECTOR(uint16_t, 2))(0xB26FL, 0xD331L), (VECTOR(uint16_t, 2))(0xB26FL, 0xD331L), 0xB26FL, 0xD331L, 0xB26FL, 0xD331L), // p_1618->g_1033
        (VECTOR(int32_t, 4))(0x1E677896L, (VECTOR(int32_t, 2))(0x1E677896L, 1L), 1L), // p_1618->g_1075
        (VECTOR(uint8_t, 4))(250UL, (VECTOR(uint8_t, 2))(250UL, 0xD7L), 0xD7L), // p_1618->g_1091
        (VECTOR(uint8_t, 4))(5UL, (VECTOR(uint8_t, 2))(5UL, 0x39L), 0x39L), // p_1618->g_1093
        (VECTOR(uint16_t, 4))(0xB113L, (VECTOR(uint16_t, 2))(0xB113L, 0xA384L), 0xA384L), // p_1618->g_1132
        (VECTOR(uint8_t, 4))(253UL, (VECTOR(uint8_t, 2))(253UL, 0UL), 0UL), // p_1618->g_1146
        (VECTOR(uint16_t, 2))(0x31E5L, 0x83C2L), // p_1618->g_1184
        {0x7AL,0xC7AA491A72D05B16L,0L,{0x18L,0x50F0C93A22A47B23L,0x1B49CE59L},246UL,3L,0x3FL}, // p_1618->g_1191
        &p_1618->g_1191, // p_1618->g_1190
        {{{&p_1618->g_1190,&p_1618->g_1190,&p_1618->g_1190,&p_1618->g_1190,&p_1618->g_1190,&p_1618->g_1190,&p_1618->g_1190,&p_1618->g_1190}}}, // p_1618->g_1189
        &p_1618->g_1189[0][0][1], // p_1618->g_1188
        &p_1618->g_543, // p_1618->g_1199
        (VECTOR(int32_t, 2))((-6L), 0x6DBA7FACL), // p_1618->g_1238
        (VECTOR(uint64_t, 2))(0x0466D82DEA76C4F0L, 0x691B537893BFE8D2L), // p_1618->g_1239
        (VECTOR(uint32_t, 16))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 0xEDE03A5AL), 0xEDE03A5AL), 0xEDE03A5AL, 0UL, 0xEDE03A5AL, (VECTOR(uint32_t, 2))(0UL, 0xEDE03A5AL), (VECTOR(uint32_t, 2))(0UL, 0xEDE03A5AL), 0UL, 0xEDE03A5AL, 0UL, 0xEDE03A5AL), // p_1618->g_1255
        (VECTOR(int16_t, 16))(0x395EL, (VECTOR(int16_t, 4))(0x395EL, (VECTOR(int16_t, 2))(0x395EL, (-1L)), (-1L)), (-1L), 0x395EL, (-1L), (VECTOR(int16_t, 2))(0x395EL, (-1L)), (VECTOR(int16_t, 2))(0x395EL, (-1L)), 0x395EL, (-1L), 0x395EL, (-1L)), // p_1618->g_1263
        (VECTOR(int16_t, 2))(0L, 0x4701L), // p_1618->g_1264
        {0xC816529272F67291L}, // p_1618->g_1279
        0UL, // p_1618->g_1305
        {0x42L,0xDC2FADE1CA939151L,-1L,{0x54L,0UL,4294967292UL},0x5FL,-1L,1L}, // p_1618->g_1321
        {{-8L,0x4D7DB2C4DC663983L,2L,{-1L,1UL,0UL},246UL,-1L,0L},{-8L,0x4D7DB2C4DC663983L,2L,{-1L,1UL,0UL},246UL,-1L,0L},{-8L,0x4D7DB2C4DC663983L,2L,{-1L,1UL,0UL},246UL,-1L,0L},{-8L,0x4D7DB2C4DC663983L,2L,{-1L,1UL,0UL},246UL,-1L,0L},{-8L,0x4D7DB2C4DC663983L,2L,{-1L,1UL,0UL},246UL,-1L,0L},{-8L,0x4D7DB2C4DC663983L,2L,{-1L,1UL,0UL},246UL,-1L,0L},{-8L,0x4D7DB2C4DC663983L,2L,{-1L,1UL,0UL},246UL,-1L,0L},{-8L,0x4D7DB2C4DC663983L,2L,{-1L,1UL,0UL},246UL,-1L,0L},{-8L,0x4D7DB2C4DC663983L,2L,{-1L,1UL,0UL},246UL,-1L,0L}}, // p_1618->g_1322
        {3UL}, // p_1618->g_1326
        &p_1618->g_745.f3.f0, // p_1618->g_1330
        &p_1618->g_95, // p_1618->g_1565
        (VECTOR(int16_t, 8))(0x78BFL, (VECTOR(int16_t, 4))(0x78BFL, (VECTOR(int16_t, 2))(0x78BFL, (-1L)), (-1L)), (-1L), 0x78BFL, (-1L)), // p_1618->g_1568
        (VECTOR(uint32_t, 16))(0xAFB72631L, (VECTOR(uint32_t, 4))(0xAFB72631L, (VECTOR(uint32_t, 2))(0xAFB72631L, 3UL), 3UL), 3UL, 0xAFB72631L, 3UL, (VECTOR(uint32_t, 2))(0xAFB72631L, 3UL), (VECTOR(uint32_t, 2))(0xAFB72631L, 3UL), 0xAFB72631L, 3UL, 0xAFB72631L, 3UL), // p_1618->g_1581
        0x3A07467BL, // p_1618->g_1588
        0x03L, // p_1618->g_1592
        {-9L,0UL,1UL}, // p_1618->g_1600
        {{{{{1L,0UL,4294967292UL}},{{-1L,0UL,0xEDB93009L}},{{0x73L,0x745F8A74743E6B5DL,1UL}},{{-1L,0UL,0xEDB93009L}},{{1L,0UL,4294967292UL}},{{0x66L,1UL,4294967290UL}},{{0L,0x085CB405769469C8L,0x93B8240BL}},{{0x03L,18446744073709551607UL,4294967295UL}}},{{{1L,0UL,4294967292UL}},{{-1L,0UL,0xEDB93009L}},{{0x73L,0x745F8A74743E6B5DL,1UL}},{{-1L,0UL,0xEDB93009L}},{{1L,0UL,4294967292UL}},{{0x66L,1UL,4294967290UL}},{{0L,0x085CB405769469C8L,0x93B8240BL}},{{0x03L,18446744073709551607UL,4294967295UL}}}},{{{{1L,0UL,4294967292UL}},{{-1L,0UL,0xEDB93009L}},{{0x73L,0x745F8A74743E6B5DL,1UL}},{{-1L,0UL,0xEDB93009L}},{{1L,0UL,4294967292UL}},{{0x66L,1UL,4294967290UL}},{{0L,0x085CB405769469C8L,0x93B8240BL}},{{0x03L,18446744073709551607UL,4294967295UL}}},{{{1L,0UL,4294967292UL}},{{-1L,0UL,0xEDB93009L}},{{0x73L,0x745F8A74743E6B5DL,1UL}},{{-1L,0UL,0xEDB93009L}},{{1L,0UL,4294967292UL}},{{0x66L,1UL,4294967290UL}},{{0L,0x085CB405769469C8L,0x93B8240BL}},{{0x03L,18446744073709551607UL,4294967295UL}}}},{{{{1L,0UL,4294967292UL}},{{-1L,0UL,0xEDB93009L}},{{0x73L,0x745F8A74743E6B5DL,1UL}},{{-1L,0UL,0xEDB93009L}},{{1L,0UL,4294967292UL}},{{0x66L,1UL,4294967290UL}},{{0L,0x085CB405769469C8L,0x93B8240BL}},{{0x03L,18446744073709551607UL,4294967295UL}}},{{{1L,0UL,4294967292UL}},{{-1L,0UL,0xEDB93009L}},{{0x73L,0x745F8A74743E6B5DL,1UL}},{{-1L,0UL,0xEDB93009L}},{{1L,0UL,4294967292UL}},{{0x66L,1UL,4294967290UL}},{{0L,0x085CB405769469C8L,0x93B8240BL}},{{0x03L,18446744073709551607UL,4294967295UL}}}},{{{{1L,0UL,4294967292UL}},{{-1L,0UL,0xEDB93009L}},{{0x73L,0x745F8A74743E6B5DL,1UL}},{{-1L,0UL,0xEDB93009L}},{{1L,0UL,4294967292UL}},{{0x66L,1UL,4294967290UL}},{{0L,0x085CB405769469C8L,0x93B8240BL}},{{0x03L,18446744073709551607UL,4294967295UL}}},{{{1L,0UL,4294967292UL}},{{-1L,0UL,0xEDB93009L}},{{0x73L,0x745F8A74743E6B5DL,1UL}},{{-1L,0UL,0xEDB93009L}},{{1L,0UL,4294967292UL}},{{0x66L,1UL,4294967290UL}},{{0L,0x085CB405769469C8L,0x93B8240BL}},{{0x03L,18446744073709551607UL,4294967295UL}}}},{{{{1L,0UL,4294967292UL}},{{-1L,0UL,0xEDB93009L}},{{0x73L,0x745F8A74743E6B5DL,1UL}},{{-1L,0UL,0xEDB93009L}},{{1L,0UL,4294967292UL}},{{0x66L,1UL,4294967290UL}},{{0L,0x085CB405769469C8L,0x93B8240BL}},{{0x03L,18446744073709551607UL,4294967295UL}}},{{{1L,0UL,4294967292UL}},{{-1L,0UL,0xEDB93009L}},{{0x73L,0x745F8A74743E6B5DL,1UL}},{{-1L,0UL,0xEDB93009L}},{{1L,0UL,4294967292UL}},{{0x66L,1UL,4294967290UL}},{{0L,0x085CB405769469C8L,0x93B8240BL}},{{0x03L,18446744073709551607UL,4294967295UL}}}},{{{{1L,0UL,4294967292UL}},{{-1L,0UL,0xEDB93009L}},{{0x73L,0x745F8A74743E6B5DL,1UL}},{{-1L,0UL,0xEDB93009L}},{{1L,0UL,4294967292UL}},{{0x66L,1UL,4294967290UL}},{{0L,0x085CB405769469C8L,0x93B8240BL}},{{0x03L,18446744073709551607UL,4294967295UL}}},{{{1L,0UL,4294967292UL}},{{-1L,0UL,0xEDB93009L}},{{0x73L,0x745F8A74743E6B5DL,1UL}},{{-1L,0UL,0xEDB93009L}},{{1L,0UL,4294967292UL}},{{0x66L,1UL,4294967290UL}},{{0L,0x085CB405769469C8L,0x93B8240BL}},{{0x03L,18446744073709551607UL,4294967295UL}}}},{{{{1L,0UL,4294967292UL}},{{-1L,0UL,0xEDB93009L}},{{0x73L,0x745F8A74743E6B5DL,1UL}},{{-1L,0UL,0xEDB93009L}},{{1L,0UL,4294967292UL}},{{0x66L,1UL,4294967290UL}},{{0L,0x085CB405769469C8L,0x93B8240BL}},{{0x03L,18446744073709551607UL,4294967295UL}}},{{{1L,0UL,4294967292UL}},{{-1L,0UL,0xEDB93009L}},{{0x73L,0x745F8A74743E6B5DL,1UL}},{{-1L,0UL,0xEDB93009L}},{{1L,0UL,4294967292UL}},{{0x66L,1UL,4294967290UL}},{{0L,0x085CB405769469C8L,0x93B8240BL}},{{0x03L,18446744073709551607UL,4294967295UL}}}}}, // p_1618->g_1601
        {0x86L}, // p_1618->g_1606
        {0x31L,1UL,4294967294UL}, // p_1618->g_1613
        &p_1618->g_1326.f2, // p_1618->g_1615
        {{0x53L,18446744073709551615UL,1UL}}, // p_1618->g_1617
        0, // p_1618->v_collective
        sequence_input[get_global_id(0)], // p_1618->global_0_offset
        sequence_input[get_global_id(1)], // p_1618->global_1_offset
        sequence_input[get_global_id(2)], // p_1618->global_2_offset
        sequence_input[get_local_id(0)], // p_1618->local_0_offset
        sequence_input[get_local_id(1)], // p_1618->local_1_offset
        sequence_input[get_local_id(2)], // p_1618->local_2_offset
        sequence_input[get_group_id(0)], // p_1618->group_0_offset
        sequence_input[get_group_id(1)], // p_1618->group_1_offset
        sequence_input[get_group_id(2)], // p_1618->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 200)), permutations[0][get_linear_local_id()])), // p_1618->tid
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_1619 = c_1620;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1618);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 6; j++)
        {
            for (k = 0; k < 8; k++)
            {
                transparent_crc(p_1618->g_2[i][j][k], "p_1618->g_2[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1618->g_3, "p_1618->g_3", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_1618->g_6[i][j], "p_1618->g_6[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 6; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_1618->g_7[i][j][k], "p_1618->g_7[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1618->g_30, "p_1618->g_30", print_hash_value);
    transparent_crc(p_1618->g_33.s0, "p_1618->g_33.s0", print_hash_value);
    transparent_crc(p_1618->g_33.s1, "p_1618->g_33.s1", print_hash_value);
    transparent_crc(p_1618->g_33.s2, "p_1618->g_33.s2", print_hash_value);
    transparent_crc(p_1618->g_33.s3, "p_1618->g_33.s3", print_hash_value);
    transparent_crc(p_1618->g_33.s4, "p_1618->g_33.s4", print_hash_value);
    transparent_crc(p_1618->g_33.s5, "p_1618->g_33.s5", print_hash_value);
    transparent_crc(p_1618->g_33.s6, "p_1618->g_33.s6", print_hash_value);
    transparent_crc(p_1618->g_33.s7, "p_1618->g_33.s7", print_hash_value);
    transparent_crc(p_1618->g_33.s8, "p_1618->g_33.s8", print_hash_value);
    transparent_crc(p_1618->g_33.s9, "p_1618->g_33.s9", print_hash_value);
    transparent_crc(p_1618->g_33.sa, "p_1618->g_33.sa", print_hash_value);
    transparent_crc(p_1618->g_33.sb, "p_1618->g_33.sb", print_hash_value);
    transparent_crc(p_1618->g_33.sc, "p_1618->g_33.sc", print_hash_value);
    transparent_crc(p_1618->g_33.sd, "p_1618->g_33.sd", print_hash_value);
    transparent_crc(p_1618->g_33.se, "p_1618->g_33.se", print_hash_value);
    transparent_crc(p_1618->g_33.sf, "p_1618->g_33.sf", print_hash_value);
    transparent_crc(p_1618->g_34.x, "p_1618->g_34.x", print_hash_value);
    transparent_crc(p_1618->g_34.y, "p_1618->g_34.y", print_hash_value);
    transparent_crc(p_1618->g_34.z, "p_1618->g_34.z", print_hash_value);
    transparent_crc(p_1618->g_34.w, "p_1618->g_34.w", print_hash_value);
    transparent_crc(p_1618->g_59.f0, "p_1618->g_59.f0", print_hash_value);
    transparent_crc(p_1618->g_86.s0, "p_1618->g_86.s0", print_hash_value);
    transparent_crc(p_1618->g_86.s1, "p_1618->g_86.s1", print_hash_value);
    transparent_crc(p_1618->g_86.s2, "p_1618->g_86.s2", print_hash_value);
    transparent_crc(p_1618->g_86.s3, "p_1618->g_86.s3", print_hash_value);
    transparent_crc(p_1618->g_86.s4, "p_1618->g_86.s4", print_hash_value);
    transparent_crc(p_1618->g_86.s5, "p_1618->g_86.s5", print_hash_value);
    transparent_crc(p_1618->g_86.s6, "p_1618->g_86.s6", print_hash_value);
    transparent_crc(p_1618->g_86.s7, "p_1618->g_86.s7", print_hash_value);
    transparent_crc(p_1618->g_93, "p_1618->g_93", print_hash_value);
    transparent_crc(p_1618->g_95, "p_1618->g_95", print_hash_value);
    transparent_crc(p_1618->g_104.f0, "p_1618->g_104.f0", print_hash_value);
    transparent_crc(p_1618->g_113.s0, "p_1618->g_113.s0", print_hash_value);
    transparent_crc(p_1618->g_113.s1, "p_1618->g_113.s1", print_hash_value);
    transparent_crc(p_1618->g_113.s2, "p_1618->g_113.s2", print_hash_value);
    transparent_crc(p_1618->g_113.s3, "p_1618->g_113.s3", print_hash_value);
    transparent_crc(p_1618->g_113.s4, "p_1618->g_113.s4", print_hash_value);
    transparent_crc(p_1618->g_113.s5, "p_1618->g_113.s5", print_hash_value);
    transparent_crc(p_1618->g_113.s6, "p_1618->g_113.s6", print_hash_value);
    transparent_crc(p_1618->g_113.s7, "p_1618->g_113.s7", print_hash_value);
    transparent_crc(p_1618->g_113.s8, "p_1618->g_113.s8", print_hash_value);
    transparent_crc(p_1618->g_113.s9, "p_1618->g_113.s9", print_hash_value);
    transparent_crc(p_1618->g_113.sa, "p_1618->g_113.sa", print_hash_value);
    transparent_crc(p_1618->g_113.sb, "p_1618->g_113.sb", print_hash_value);
    transparent_crc(p_1618->g_113.sc, "p_1618->g_113.sc", print_hash_value);
    transparent_crc(p_1618->g_113.sd, "p_1618->g_113.sd", print_hash_value);
    transparent_crc(p_1618->g_113.se, "p_1618->g_113.se", print_hash_value);
    transparent_crc(p_1618->g_113.sf, "p_1618->g_113.sf", print_hash_value);
    transparent_crc(p_1618->g_130, "p_1618->g_130", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1618->g_141[i], "p_1618->g_141[i]", print_hash_value);

    }
    transparent_crc(p_1618->g_147.s0, "p_1618->g_147.s0", print_hash_value);
    transparent_crc(p_1618->g_147.s1, "p_1618->g_147.s1", print_hash_value);
    transparent_crc(p_1618->g_147.s2, "p_1618->g_147.s2", print_hash_value);
    transparent_crc(p_1618->g_147.s3, "p_1618->g_147.s3", print_hash_value);
    transparent_crc(p_1618->g_147.s4, "p_1618->g_147.s4", print_hash_value);
    transparent_crc(p_1618->g_147.s5, "p_1618->g_147.s5", print_hash_value);
    transparent_crc(p_1618->g_147.s6, "p_1618->g_147.s6", print_hash_value);
    transparent_crc(p_1618->g_147.s7, "p_1618->g_147.s7", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_1618->g_157[i], "p_1618->g_157[i]", print_hash_value);

    }
    transparent_crc(p_1618->g_174.x, "p_1618->g_174.x", print_hash_value);
    transparent_crc(p_1618->g_174.y, "p_1618->g_174.y", print_hash_value);
    transparent_crc(p_1618->g_174.z, "p_1618->g_174.z", print_hash_value);
    transparent_crc(p_1618->g_174.w, "p_1618->g_174.w", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1618->g_194[i], "p_1618->g_194[i]", print_hash_value);

    }
    transparent_crc(p_1618->g_209, "p_1618->g_209", print_hash_value);
    transparent_crc(p_1618->g_239.s0, "p_1618->g_239.s0", print_hash_value);
    transparent_crc(p_1618->g_239.s1, "p_1618->g_239.s1", print_hash_value);
    transparent_crc(p_1618->g_239.s2, "p_1618->g_239.s2", print_hash_value);
    transparent_crc(p_1618->g_239.s3, "p_1618->g_239.s3", print_hash_value);
    transparent_crc(p_1618->g_239.s4, "p_1618->g_239.s4", print_hash_value);
    transparent_crc(p_1618->g_239.s5, "p_1618->g_239.s5", print_hash_value);
    transparent_crc(p_1618->g_239.s6, "p_1618->g_239.s6", print_hash_value);
    transparent_crc(p_1618->g_239.s7, "p_1618->g_239.s7", print_hash_value);
    transparent_crc(p_1618->g_239.s8, "p_1618->g_239.s8", print_hash_value);
    transparent_crc(p_1618->g_239.s9, "p_1618->g_239.s9", print_hash_value);
    transparent_crc(p_1618->g_239.sa, "p_1618->g_239.sa", print_hash_value);
    transparent_crc(p_1618->g_239.sb, "p_1618->g_239.sb", print_hash_value);
    transparent_crc(p_1618->g_239.sc, "p_1618->g_239.sc", print_hash_value);
    transparent_crc(p_1618->g_239.sd, "p_1618->g_239.sd", print_hash_value);
    transparent_crc(p_1618->g_239.se, "p_1618->g_239.se", print_hash_value);
    transparent_crc(p_1618->g_239.sf, "p_1618->g_239.sf", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 5; j++)
        {
            for (k = 0; k < 9; k++)
            {
                transparent_crc(p_1618->g_246[i][j][k], "p_1618->g_246[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1618->g_249, "p_1618->g_249", print_hash_value);
    transparent_crc(p_1618->g_250, "p_1618->g_250", print_hash_value);
    transparent_crc(p_1618->g_268.s0, "p_1618->g_268.s0", print_hash_value);
    transparent_crc(p_1618->g_268.s1, "p_1618->g_268.s1", print_hash_value);
    transparent_crc(p_1618->g_268.s2, "p_1618->g_268.s2", print_hash_value);
    transparent_crc(p_1618->g_268.s3, "p_1618->g_268.s3", print_hash_value);
    transparent_crc(p_1618->g_268.s4, "p_1618->g_268.s4", print_hash_value);
    transparent_crc(p_1618->g_268.s5, "p_1618->g_268.s5", print_hash_value);
    transparent_crc(p_1618->g_268.s6, "p_1618->g_268.s6", print_hash_value);
    transparent_crc(p_1618->g_268.s7, "p_1618->g_268.s7", print_hash_value);
    transparent_crc(p_1618->g_268.s8, "p_1618->g_268.s8", print_hash_value);
    transparent_crc(p_1618->g_268.s9, "p_1618->g_268.s9", print_hash_value);
    transparent_crc(p_1618->g_268.sa, "p_1618->g_268.sa", print_hash_value);
    transparent_crc(p_1618->g_268.sb, "p_1618->g_268.sb", print_hash_value);
    transparent_crc(p_1618->g_268.sc, "p_1618->g_268.sc", print_hash_value);
    transparent_crc(p_1618->g_268.sd, "p_1618->g_268.sd", print_hash_value);
    transparent_crc(p_1618->g_268.se, "p_1618->g_268.se", print_hash_value);
    transparent_crc(p_1618->g_268.sf, "p_1618->g_268.sf", print_hash_value);
    transparent_crc(p_1618->g_296.x, "p_1618->g_296.x", print_hash_value);
    transparent_crc(p_1618->g_296.y, "p_1618->g_296.y", print_hash_value);
    transparent_crc(p_1618->g_296.z, "p_1618->g_296.z", print_hash_value);
    transparent_crc(p_1618->g_296.w, "p_1618->g_296.w", print_hash_value);
    transparent_crc(p_1618->g_310, "p_1618->g_310", print_hash_value);
    transparent_crc(p_1618->g_313, "p_1618->g_313", print_hash_value);
    transparent_crc(p_1618->g_314, "p_1618->g_314", print_hash_value);
    transparent_crc(p_1618->g_352.s0, "p_1618->g_352.s0", print_hash_value);
    transparent_crc(p_1618->g_352.s1, "p_1618->g_352.s1", print_hash_value);
    transparent_crc(p_1618->g_352.s2, "p_1618->g_352.s2", print_hash_value);
    transparent_crc(p_1618->g_352.s3, "p_1618->g_352.s3", print_hash_value);
    transparent_crc(p_1618->g_352.s4, "p_1618->g_352.s4", print_hash_value);
    transparent_crc(p_1618->g_352.s5, "p_1618->g_352.s5", print_hash_value);
    transparent_crc(p_1618->g_352.s6, "p_1618->g_352.s6", print_hash_value);
    transparent_crc(p_1618->g_352.s7, "p_1618->g_352.s7", print_hash_value);
    transparent_crc(p_1618->g_367, "p_1618->g_367", print_hash_value);
    transparent_crc(p_1618->g_377.f0, "p_1618->g_377.f0", print_hash_value);
    transparent_crc(p_1618->g_381.f0, "p_1618->g_381.f0", print_hash_value);
    transparent_crc(p_1618->g_391.f0, "p_1618->g_391.f0", print_hash_value);
    transparent_crc(p_1618->g_392.f0, "p_1618->g_392.f0", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1618->g_393[i].f0, "p_1618->g_393[i].f0", print_hash_value);

    }
    transparent_crc(p_1618->g_394.f0, "p_1618->g_394.f0", print_hash_value);
    transparent_crc(p_1618->g_395.f0, "p_1618->g_395.f0", print_hash_value);
    transparent_crc(p_1618->g_396.f0, "p_1618->g_396.f0", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_1618->g_397[i].f0, "p_1618->g_397[i].f0", print_hash_value);

    }
    transparent_crc(p_1618->g_398.f0, "p_1618->g_398.f0", print_hash_value);
    transparent_crc(p_1618->g_399.f0, "p_1618->g_399.f0", print_hash_value);
    transparent_crc(p_1618->g_417.s0, "p_1618->g_417.s0", print_hash_value);
    transparent_crc(p_1618->g_417.s1, "p_1618->g_417.s1", print_hash_value);
    transparent_crc(p_1618->g_417.s2, "p_1618->g_417.s2", print_hash_value);
    transparent_crc(p_1618->g_417.s3, "p_1618->g_417.s3", print_hash_value);
    transparent_crc(p_1618->g_417.s4, "p_1618->g_417.s4", print_hash_value);
    transparent_crc(p_1618->g_417.s5, "p_1618->g_417.s5", print_hash_value);
    transparent_crc(p_1618->g_417.s6, "p_1618->g_417.s6", print_hash_value);
    transparent_crc(p_1618->g_417.s7, "p_1618->g_417.s7", print_hash_value);
    transparent_crc(p_1618->g_417.s8, "p_1618->g_417.s8", print_hash_value);
    transparent_crc(p_1618->g_417.s9, "p_1618->g_417.s9", print_hash_value);
    transparent_crc(p_1618->g_417.sa, "p_1618->g_417.sa", print_hash_value);
    transparent_crc(p_1618->g_417.sb, "p_1618->g_417.sb", print_hash_value);
    transparent_crc(p_1618->g_417.sc, "p_1618->g_417.sc", print_hash_value);
    transparent_crc(p_1618->g_417.sd, "p_1618->g_417.sd", print_hash_value);
    transparent_crc(p_1618->g_417.se, "p_1618->g_417.se", print_hash_value);
    transparent_crc(p_1618->g_417.sf, "p_1618->g_417.sf", print_hash_value);
    transparent_crc(p_1618->g_422, "p_1618->g_422", print_hash_value);
    transparent_crc(p_1618->g_443.f0, "p_1618->g_443.f0", print_hash_value);
    transparent_crc(p_1618->g_464, "p_1618->g_464", print_hash_value);
    transparent_crc(p_1618->g_488.s0, "p_1618->g_488.s0", print_hash_value);
    transparent_crc(p_1618->g_488.s1, "p_1618->g_488.s1", print_hash_value);
    transparent_crc(p_1618->g_488.s2, "p_1618->g_488.s2", print_hash_value);
    transparent_crc(p_1618->g_488.s3, "p_1618->g_488.s3", print_hash_value);
    transparent_crc(p_1618->g_488.s4, "p_1618->g_488.s4", print_hash_value);
    transparent_crc(p_1618->g_488.s5, "p_1618->g_488.s5", print_hash_value);
    transparent_crc(p_1618->g_488.s6, "p_1618->g_488.s6", print_hash_value);
    transparent_crc(p_1618->g_488.s7, "p_1618->g_488.s7", print_hash_value);
    transparent_crc(p_1618->g_489.x, "p_1618->g_489.x", print_hash_value);
    transparent_crc(p_1618->g_489.y, "p_1618->g_489.y", print_hash_value);
    transparent_crc(p_1618->g_489.z, "p_1618->g_489.z", print_hash_value);
    transparent_crc(p_1618->g_489.w, "p_1618->g_489.w", print_hash_value);
    transparent_crc(p_1618->g_520.s0, "p_1618->g_520.s0", print_hash_value);
    transparent_crc(p_1618->g_520.s1, "p_1618->g_520.s1", print_hash_value);
    transparent_crc(p_1618->g_520.s2, "p_1618->g_520.s2", print_hash_value);
    transparent_crc(p_1618->g_520.s3, "p_1618->g_520.s3", print_hash_value);
    transparent_crc(p_1618->g_520.s4, "p_1618->g_520.s4", print_hash_value);
    transparent_crc(p_1618->g_520.s5, "p_1618->g_520.s5", print_hash_value);
    transparent_crc(p_1618->g_520.s6, "p_1618->g_520.s6", print_hash_value);
    transparent_crc(p_1618->g_520.s7, "p_1618->g_520.s7", print_hash_value);
    transparent_crc(p_1618->g_525.f0, "p_1618->g_525.f0", print_hash_value);
    transparent_crc(p_1618->g_526.f0, "p_1618->g_526.f0", print_hash_value);
    transparent_crc(p_1618->g_527.f0, "p_1618->g_527.f0", print_hash_value);
    transparent_crc(p_1618->g_572.x, "p_1618->g_572.x", print_hash_value);
    transparent_crc(p_1618->g_572.y, "p_1618->g_572.y", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_1618->g_590[i], "p_1618->g_590[i]", print_hash_value);

    }
    transparent_crc(p_1618->g_591, "p_1618->g_591", print_hash_value);
    transparent_crc(p_1618->g_606, "p_1618->g_606", print_hash_value);
    transparent_crc(p_1618->g_629.f0, "p_1618->g_629.f0", print_hash_value);
    transparent_crc(p_1618->g_723, "p_1618->g_723", print_hash_value);
    transparent_crc(p_1618->g_745.f0, "p_1618->g_745.f0", print_hash_value);
    transparent_crc(p_1618->g_745.f1, "p_1618->g_745.f1", print_hash_value);
    transparent_crc(p_1618->g_745.f2, "p_1618->g_745.f2", print_hash_value);
    transparent_crc(p_1618->g_745.f3.f0, "p_1618->g_745.f3.f0", print_hash_value);
    transparent_crc(p_1618->g_745.f3.f1, "p_1618->g_745.f3.f1", print_hash_value);
    transparent_crc(p_1618->g_745.f3.f2, "p_1618->g_745.f3.f2", print_hash_value);
    transparent_crc(p_1618->g_745.f4, "p_1618->g_745.f4", print_hash_value);
    transparent_crc(p_1618->g_745.f5, "p_1618->g_745.f5", print_hash_value);
    transparent_crc(p_1618->g_745.f6, "p_1618->g_745.f6", print_hash_value);
    transparent_crc(p_1618->g_782.x, "p_1618->g_782.x", print_hash_value);
    transparent_crc(p_1618->g_782.y, "p_1618->g_782.y", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_1618->g_803[i][j].f0.f0, "p_1618->g_803[i][j].f0.f0", print_hash_value);
            transparent_crc(p_1618->g_803[i][j].f0.f1, "p_1618->g_803[i][j].f0.f1", print_hash_value);
            transparent_crc(p_1618->g_803[i][j].f0.f2, "p_1618->g_803[i][j].f0.f2", print_hash_value);

        }
    }
    transparent_crc(p_1618->g_806.f0.f0, "p_1618->g_806.f0.f0", print_hash_value);
    transparent_crc(p_1618->g_806.f0.f1, "p_1618->g_806.f0.f1", print_hash_value);
    transparent_crc(p_1618->g_806.f0.f2, "p_1618->g_806.f0.f2", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 1; j++)
        {
            transparent_crc(p_1618->g_833[i][j].f0.f0, "p_1618->g_833[i][j].f0.f0", print_hash_value);
            transparent_crc(p_1618->g_833[i][j].f0.f1, "p_1618->g_833[i][j].f0.f1", print_hash_value);
            transparent_crc(p_1618->g_833[i][j].f0.f2, "p_1618->g_833[i][j].f0.f2", print_hash_value);

        }
    }
    transparent_crc(p_1618->g_854, "p_1618->g_854", print_hash_value);
    transparent_crc(p_1618->g_916.f0, "p_1618->g_916.f0", print_hash_value);
    transparent_crc(p_1618->g_918.f0, "p_1618->g_918.f0", print_hash_value);
    transparent_crc(p_1618->g_920.f0, "p_1618->g_920.f0", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_1618->g_931[i][j].f0, "p_1618->g_931[i][j].f0", print_hash_value);
            transparent_crc(p_1618->g_931[i][j].f1, "p_1618->g_931[i][j].f1", print_hash_value);
            transparent_crc(p_1618->g_931[i][j].f2, "p_1618->g_931[i][j].f2", print_hash_value);

        }
    }
    transparent_crc(p_1618->g_939.x, "p_1618->g_939.x", print_hash_value);
    transparent_crc(p_1618->g_939.y, "p_1618->g_939.y", print_hash_value);
    transparent_crc(p_1618->g_939.z, "p_1618->g_939.z", print_hash_value);
    transparent_crc(p_1618->g_939.w, "p_1618->g_939.w", print_hash_value);
    transparent_crc(p_1618->g_969.s0, "p_1618->g_969.s0", print_hash_value);
    transparent_crc(p_1618->g_969.s1, "p_1618->g_969.s1", print_hash_value);
    transparent_crc(p_1618->g_969.s2, "p_1618->g_969.s2", print_hash_value);
    transparent_crc(p_1618->g_969.s3, "p_1618->g_969.s3", print_hash_value);
    transparent_crc(p_1618->g_969.s4, "p_1618->g_969.s4", print_hash_value);
    transparent_crc(p_1618->g_969.s5, "p_1618->g_969.s5", print_hash_value);
    transparent_crc(p_1618->g_969.s6, "p_1618->g_969.s6", print_hash_value);
    transparent_crc(p_1618->g_969.s7, "p_1618->g_969.s7", print_hash_value);
    transparent_crc(p_1618->g_969.s8, "p_1618->g_969.s8", print_hash_value);
    transparent_crc(p_1618->g_969.s9, "p_1618->g_969.s9", print_hash_value);
    transparent_crc(p_1618->g_969.sa, "p_1618->g_969.sa", print_hash_value);
    transparent_crc(p_1618->g_969.sb, "p_1618->g_969.sb", print_hash_value);
    transparent_crc(p_1618->g_969.sc, "p_1618->g_969.sc", print_hash_value);
    transparent_crc(p_1618->g_969.sd, "p_1618->g_969.sd", print_hash_value);
    transparent_crc(p_1618->g_969.se, "p_1618->g_969.se", print_hash_value);
    transparent_crc(p_1618->g_969.sf, "p_1618->g_969.sf", print_hash_value);
    transparent_crc(p_1618->g_970.x, "p_1618->g_970.x", print_hash_value);
    transparent_crc(p_1618->g_970.y, "p_1618->g_970.y", print_hash_value);
    transparent_crc(p_1618->g_987.f0, "p_1618->g_987.f0", print_hash_value);
    transparent_crc(p_1618->g_988.f0, "p_1618->g_988.f0", print_hash_value);
    transparent_crc(p_1618->g_989.f0, "p_1618->g_989.f0", print_hash_value);
    transparent_crc(p_1618->g_991.f0, "p_1618->g_991.f0", print_hash_value);
    transparent_crc(p_1618->g_1033.s0, "p_1618->g_1033.s0", print_hash_value);
    transparent_crc(p_1618->g_1033.s1, "p_1618->g_1033.s1", print_hash_value);
    transparent_crc(p_1618->g_1033.s2, "p_1618->g_1033.s2", print_hash_value);
    transparent_crc(p_1618->g_1033.s3, "p_1618->g_1033.s3", print_hash_value);
    transparent_crc(p_1618->g_1033.s4, "p_1618->g_1033.s4", print_hash_value);
    transparent_crc(p_1618->g_1033.s5, "p_1618->g_1033.s5", print_hash_value);
    transparent_crc(p_1618->g_1033.s6, "p_1618->g_1033.s6", print_hash_value);
    transparent_crc(p_1618->g_1033.s7, "p_1618->g_1033.s7", print_hash_value);
    transparent_crc(p_1618->g_1033.s8, "p_1618->g_1033.s8", print_hash_value);
    transparent_crc(p_1618->g_1033.s9, "p_1618->g_1033.s9", print_hash_value);
    transparent_crc(p_1618->g_1033.sa, "p_1618->g_1033.sa", print_hash_value);
    transparent_crc(p_1618->g_1033.sb, "p_1618->g_1033.sb", print_hash_value);
    transparent_crc(p_1618->g_1033.sc, "p_1618->g_1033.sc", print_hash_value);
    transparent_crc(p_1618->g_1033.sd, "p_1618->g_1033.sd", print_hash_value);
    transparent_crc(p_1618->g_1033.se, "p_1618->g_1033.se", print_hash_value);
    transparent_crc(p_1618->g_1033.sf, "p_1618->g_1033.sf", print_hash_value);
    transparent_crc(p_1618->g_1075.x, "p_1618->g_1075.x", print_hash_value);
    transparent_crc(p_1618->g_1075.y, "p_1618->g_1075.y", print_hash_value);
    transparent_crc(p_1618->g_1075.z, "p_1618->g_1075.z", print_hash_value);
    transparent_crc(p_1618->g_1075.w, "p_1618->g_1075.w", print_hash_value);
    transparent_crc(p_1618->g_1091.x, "p_1618->g_1091.x", print_hash_value);
    transparent_crc(p_1618->g_1091.y, "p_1618->g_1091.y", print_hash_value);
    transparent_crc(p_1618->g_1091.z, "p_1618->g_1091.z", print_hash_value);
    transparent_crc(p_1618->g_1091.w, "p_1618->g_1091.w", print_hash_value);
    transparent_crc(p_1618->g_1093.x, "p_1618->g_1093.x", print_hash_value);
    transparent_crc(p_1618->g_1093.y, "p_1618->g_1093.y", print_hash_value);
    transparent_crc(p_1618->g_1093.z, "p_1618->g_1093.z", print_hash_value);
    transparent_crc(p_1618->g_1093.w, "p_1618->g_1093.w", print_hash_value);
    transparent_crc(p_1618->g_1132.x, "p_1618->g_1132.x", print_hash_value);
    transparent_crc(p_1618->g_1132.y, "p_1618->g_1132.y", print_hash_value);
    transparent_crc(p_1618->g_1132.z, "p_1618->g_1132.z", print_hash_value);
    transparent_crc(p_1618->g_1132.w, "p_1618->g_1132.w", print_hash_value);
    transparent_crc(p_1618->g_1146.x, "p_1618->g_1146.x", print_hash_value);
    transparent_crc(p_1618->g_1146.y, "p_1618->g_1146.y", print_hash_value);
    transparent_crc(p_1618->g_1146.z, "p_1618->g_1146.z", print_hash_value);
    transparent_crc(p_1618->g_1146.w, "p_1618->g_1146.w", print_hash_value);
    transparent_crc(p_1618->g_1184.x, "p_1618->g_1184.x", print_hash_value);
    transparent_crc(p_1618->g_1184.y, "p_1618->g_1184.y", print_hash_value);
    transparent_crc(p_1618->g_1191.f0, "p_1618->g_1191.f0", print_hash_value);
    transparent_crc(p_1618->g_1191.f1, "p_1618->g_1191.f1", print_hash_value);
    transparent_crc(p_1618->g_1191.f2, "p_1618->g_1191.f2", print_hash_value);
    transparent_crc(p_1618->g_1191.f3.f0, "p_1618->g_1191.f3.f0", print_hash_value);
    transparent_crc(p_1618->g_1191.f3.f1, "p_1618->g_1191.f3.f1", print_hash_value);
    transparent_crc(p_1618->g_1191.f3.f2, "p_1618->g_1191.f3.f2", print_hash_value);
    transparent_crc(p_1618->g_1191.f4, "p_1618->g_1191.f4", print_hash_value);
    transparent_crc(p_1618->g_1191.f5, "p_1618->g_1191.f5", print_hash_value);
    transparent_crc(p_1618->g_1191.f6, "p_1618->g_1191.f6", print_hash_value);
    transparent_crc(p_1618->g_1238.x, "p_1618->g_1238.x", print_hash_value);
    transparent_crc(p_1618->g_1238.y, "p_1618->g_1238.y", print_hash_value);
    transparent_crc(p_1618->g_1239.x, "p_1618->g_1239.x", print_hash_value);
    transparent_crc(p_1618->g_1239.y, "p_1618->g_1239.y", print_hash_value);
    transparent_crc(p_1618->g_1255.s0, "p_1618->g_1255.s0", print_hash_value);
    transparent_crc(p_1618->g_1255.s1, "p_1618->g_1255.s1", print_hash_value);
    transparent_crc(p_1618->g_1255.s2, "p_1618->g_1255.s2", print_hash_value);
    transparent_crc(p_1618->g_1255.s3, "p_1618->g_1255.s3", print_hash_value);
    transparent_crc(p_1618->g_1255.s4, "p_1618->g_1255.s4", print_hash_value);
    transparent_crc(p_1618->g_1255.s5, "p_1618->g_1255.s5", print_hash_value);
    transparent_crc(p_1618->g_1255.s6, "p_1618->g_1255.s6", print_hash_value);
    transparent_crc(p_1618->g_1255.s7, "p_1618->g_1255.s7", print_hash_value);
    transparent_crc(p_1618->g_1255.s8, "p_1618->g_1255.s8", print_hash_value);
    transparent_crc(p_1618->g_1255.s9, "p_1618->g_1255.s9", print_hash_value);
    transparent_crc(p_1618->g_1255.sa, "p_1618->g_1255.sa", print_hash_value);
    transparent_crc(p_1618->g_1255.sb, "p_1618->g_1255.sb", print_hash_value);
    transparent_crc(p_1618->g_1255.sc, "p_1618->g_1255.sc", print_hash_value);
    transparent_crc(p_1618->g_1255.sd, "p_1618->g_1255.sd", print_hash_value);
    transparent_crc(p_1618->g_1255.se, "p_1618->g_1255.se", print_hash_value);
    transparent_crc(p_1618->g_1255.sf, "p_1618->g_1255.sf", print_hash_value);
    transparent_crc(p_1618->g_1263.s0, "p_1618->g_1263.s0", print_hash_value);
    transparent_crc(p_1618->g_1263.s1, "p_1618->g_1263.s1", print_hash_value);
    transparent_crc(p_1618->g_1263.s2, "p_1618->g_1263.s2", print_hash_value);
    transparent_crc(p_1618->g_1263.s3, "p_1618->g_1263.s3", print_hash_value);
    transparent_crc(p_1618->g_1263.s4, "p_1618->g_1263.s4", print_hash_value);
    transparent_crc(p_1618->g_1263.s5, "p_1618->g_1263.s5", print_hash_value);
    transparent_crc(p_1618->g_1263.s6, "p_1618->g_1263.s6", print_hash_value);
    transparent_crc(p_1618->g_1263.s7, "p_1618->g_1263.s7", print_hash_value);
    transparent_crc(p_1618->g_1263.s8, "p_1618->g_1263.s8", print_hash_value);
    transparent_crc(p_1618->g_1263.s9, "p_1618->g_1263.s9", print_hash_value);
    transparent_crc(p_1618->g_1263.sa, "p_1618->g_1263.sa", print_hash_value);
    transparent_crc(p_1618->g_1263.sb, "p_1618->g_1263.sb", print_hash_value);
    transparent_crc(p_1618->g_1263.sc, "p_1618->g_1263.sc", print_hash_value);
    transparent_crc(p_1618->g_1263.sd, "p_1618->g_1263.sd", print_hash_value);
    transparent_crc(p_1618->g_1263.se, "p_1618->g_1263.se", print_hash_value);
    transparent_crc(p_1618->g_1263.sf, "p_1618->g_1263.sf", print_hash_value);
    transparent_crc(p_1618->g_1264.x, "p_1618->g_1264.x", print_hash_value);
    transparent_crc(p_1618->g_1264.y, "p_1618->g_1264.y", print_hash_value);
    transparent_crc(p_1618->g_1279.f0, "p_1618->g_1279.f0", print_hash_value);
    transparent_crc(p_1618->g_1305, "p_1618->g_1305", print_hash_value);
    transparent_crc(p_1618->g_1321.f0, "p_1618->g_1321.f0", print_hash_value);
    transparent_crc(p_1618->g_1321.f1, "p_1618->g_1321.f1", print_hash_value);
    transparent_crc(p_1618->g_1321.f2, "p_1618->g_1321.f2", print_hash_value);
    transparent_crc(p_1618->g_1321.f3.f0, "p_1618->g_1321.f3.f0", print_hash_value);
    transparent_crc(p_1618->g_1321.f3.f1, "p_1618->g_1321.f3.f1", print_hash_value);
    transparent_crc(p_1618->g_1321.f3.f2, "p_1618->g_1321.f3.f2", print_hash_value);
    transparent_crc(p_1618->g_1321.f4, "p_1618->g_1321.f4", print_hash_value);
    transparent_crc(p_1618->g_1321.f5, "p_1618->g_1321.f5", print_hash_value);
    transparent_crc(p_1618->g_1321.f6, "p_1618->g_1321.f6", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1618->g_1322[i].f0, "p_1618->g_1322[i].f0", print_hash_value);
        transparent_crc(p_1618->g_1322[i].f1, "p_1618->g_1322[i].f1", print_hash_value);
        transparent_crc(p_1618->g_1322[i].f2, "p_1618->g_1322[i].f2", print_hash_value);
        transparent_crc(p_1618->g_1322[i].f3.f0, "p_1618->g_1322[i].f3.f0", print_hash_value);
        transparent_crc(p_1618->g_1322[i].f3.f1, "p_1618->g_1322[i].f3.f1", print_hash_value);
        transparent_crc(p_1618->g_1322[i].f3.f2, "p_1618->g_1322[i].f3.f2", print_hash_value);
        transparent_crc(p_1618->g_1322[i].f4, "p_1618->g_1322[i].f4", print_hash_value);
        transparent_crc(p_1618->g_1322[i].f5, "p_1618->g_1322[i].f5", print_hash_value);
        transparent_crc(p_1618->g_1322[i].f6, "p_1618->g_1322[i].f6", print_hash_value);

    }
    transparent_crc(p_1618->g_1568.s0, "p_1618->g_1568.s0", print_hash_value);
    transparent_crc(p_1618->g_1568.s1, "p_1618->g_1568.s1", print_hash_value);
    transparent_crc(p_1618->g_1568.s2, "p_1618->g_1568.s2", print_hash_value);
    transparent_crc(p_1618->g_1568.s3, "p_1618->g_1568.s3", print_hash_value);
    transparent_crc(p_1618->g_1568.s4, "p_1618->g_1568.s4", print_hash_value);
    transparent_crc(p_1618->g_1568.s5, "p_1618->g_1568.s5", print_hash_value);
    transparent_crc(p_1618->g_1568.s6, "p_1618->g_1568.s6", print_hash_value);
    transparent_crc(p_1618->g_1568.s7, "p_1618->g_1568.s7", print_hash_value);
    transparent_crc(p_1618->g_1581.s0, "p_1618->g_1581.s0", print_hash_value);
    transparent_crc(p_1618->g_1581.s1, "p_1618->g_1581.s1", print_hash_value);
    transparent_crc(p_1618->g_1581.s2, "p_1618->g_1581.s2", print_hash_value);
    transparent_crc(p_1618->g_1581.s3, "p_1618->g_1581.s3", print_hash_value);
    transparent_crc(p_1618->g_1581.s4, "p_1618->g_1581.s4", print_hash_value);
    transparent_crc(p_1618->g_1581.s5, "p_1618->g_1581.s5", print_hash_value);
    transparent_crc(p_1618->g_1581.s6, "p_1618->g_1581.s6", print_hash_value);
    transparent_crc(p_1618->g_1581.s7, "p_1618->g_1581.s7", print_hash_value);
    transparent_crc(p_1618->g_1581.s8, "p_1618->g_1581.s8", print_hash_value);
    transparent_crc(p_1618->g_1581.s9, "p_1618->g_1581.s9", print_hash_value);
    transparent_crc(p_1618->g_1581.sa, "p_1618->g_1581.sa", print_hash_value);
    transparent_crc(p_1618->g_1581.sb, "p_1618->g_1581.sb", print_hash_value);
    transparent_crc(p_1618->g_1581.sc, "p_1618->g_1581.sc", print_hash_value);
    transparent_crc(p_1618->g_1581.sd, "p_1618->g_1581.sd", print_hash_value);
    transparent_crc(p_1618->g_1581.se, "p_1618->g_1581.se", print_hash_value);
    transparent_crc(p_1618->g_1581.sf, "p_1618->g_1581.sf", print_hash_value);
    transparent_crc(p_1618->g_1588, "p_1618->g_1588", print_hash_value);
    transparent_crc(p_1618->g_1592, "p_1618->g_1592", print_hash_value);
    transparent_crc(p_1618->g_1600.f0, "p_1618->g_1600.f0", print_hash_value);
    transparent_crc(p_1618->g_1600.f1, "p_1618->g_1600.f1", print_hash_value);
    transparent_crc(p_1618->g_1600.f2, "p_1618->g_1600.f2", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 8; k++)
            {
                transparent_crc(p_1618->g_1601[i][j][k].f0.f0, "p_1618->g_1601[i][j][k].f0.f0", print_hash_value);
                transparent_crc(p_1618->g_1601[i][j][k].f0.f1, "p_1618->g_1601[i][j][k].f0.f1", print_hash_value);
                transparent_crc(p_1618->g_1601[i][j][k].f0.f2, "p_1618->g_1601[i][j][k].f0.f2", print_hash_value);

            }
        }
    }
    transparent_crc(p_1618->g_1606.f0, "p_1618->g_1606.f0", print_hash_value);
    transparent_crc(p_1618->g_1613.f0, "p_1618->g_1613.f0", print_hash_value);
    transparent_crc(p_1618->g_1613.f1, "p_1618->g_1613.f1", print_hash_value);
    transparent_crc(p_1618->g_1613.f2, "p_1618->g_1613.f2", print_hash_value);
    transparent_crc(p_1618->g_1617.f0.f0, "p_1618->g_1617.f0.f0", print_hash_value);
    transparent_crc(p_1618->g_1617.f0.f1, "p_1618->g_1617.f0.f1", print_hash_value);
    transparent_crc(p_1618->g_1617.f0.f2, "p_1618->g_1617.f0.f2", print_hash_value);
    transparent_crc(p_1618->v_collective, "p_1618->v_collective", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 75; i++)
            transparent_crc(p_1618->g_special_values[i + 75 * get_linear_group_id()], "p_1618->g_special_values[i + 75 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 75; i++)
            transparent_crc(p_1618->l_special_values[i], "p_1618->l_special_values[i]", print_hash_value);
    transparent_crc(p_1618->l_comm_values[get_linear_local_id()], "p_1618->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_1618->g_comm_values[get_linear_group_id() * 200 + get_linear_local_id()], "p_1618->g_comm_values[get_linear_group_id() * 200 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
