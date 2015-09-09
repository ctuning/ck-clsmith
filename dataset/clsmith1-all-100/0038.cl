// --atomics 93 ---atomic_reductions ---fake_divergence ---inter_thread_comm -g 34,64,2 -l 1,1,2
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
struct S0 {
   uint16_t  f0;
   int64_t  f1;
   uint16_t  f2;
   volatile int32_t  f3;
};

struct S1 {
   int64_t  f0;
   int16_t  f1;
   volatile int32_t  f2;
   int64_t  f3;
   volatile int8_t  f4;
};

struct S2 {
   uint64_t  f0;
};

struct S3 {
   uint32_t  f0;
   uint8_t  f1;
   volatile uint64_t  f2;
   uint32_t  f3;
};

struct S4 {
    volatile VECTOR(uint64_t, 2) g_2;
    int32_t g_118[7][4][3];
    int32_t *g_117;
    int32_t **g_116;
    uint16_t g_143;
    uint8_t g_165;
    int32_t g_171[6];
    int32_t * volatile g_170;
    volatile VECTOR(int8_t, 16) g_188;
    uint16_t g_192;
    volatile VECTOR(uint8_t, 16) g_197;
    volatile uint8_t * volatile g_196;
    volatile uint8_t * volatile *g_195;
    volatile uint8_t * volatile ** volatile g_198;
    volatile uint8_t * volatile ** volatile g_199;
    struct S0 g_209;
    struct S0 *g_210;
    struct S1 g_223;
    struct S1 *g_225;
    struct S1 ** volatile g_224;
    struct S2 g_226[7][4][1];
    struct S3 g_228;
    volatile int32_t g_248;
    volatile int32_t *g_247;
    VECTOR(int32_t, 8) g_268;
    int8_t g_270;
    VECTOR(int8_t, 8) g_271;
    uint16_t *g_277;
    VECTOR(int64_t, 2) g_297;
    VECTOR(int16_t, 8) g_318;
    volatile VECTOR(int8_t, 8) g_334;
    volatile VECTOR(int64_t, 2) g_339;
    volatile VECTOR(int64_t, 4) g_340;
    VECTOR(int64_t, 16) g_342;
    VECTOR(int64_t, 16) g_345;
    VECTOR(int64_t, 4) g_347;
    int8_t *g_356;
    int8_t *g_358;
    uint16_t g_359;
    struct S1 g_365;
    volatile struct S0 g_376;
    VECTOR(uint64_t, 2) g_383;
    VECTOR(int64_t, 2) g_387;
    VECTOR(uint8_t, 4) g_399;
    struct S0 g_404;
    struct S3 g_411;
    volatile struct S1 g_412;
    volatile struct S1 g_415;
    volatile VECTOR(uint8_t, 16) g_437;
    VECTOR(int8_t, 8) g_445;
    VECTOR(int8_t, 8) g_446;
    int32_t g_458;
    struct S1 g_463;
    struct S0 g_483;
    int8_t **g_492;
    int8_t g_517;
    int32_t g_564[9][5][5];
    VECTOR(int8_t, 16) g_605;
    struct S0 ** volatile g_619;
    volatile VECTOR(uint16_t, 16) g_621;
    uint8_t *g_642[3][5];
    uint8_t **g_641;
    uint8_t ***g_640;
    VECTOR(int8_t, 16) g_649;
    VECTOR(uint64_t, 2) g_650;
    VECTOR(uint8_t, 16) g_674;
    volatile VECTOR(uint16_t, 8) g_680;
    VECTOR(uint16_t, 4) g_681;
    volatile VECTOR(uint16_t, 4) g_682;
    int16_t g_697[9];
    int16_t g_706;
    struct S0 g_732;
    volatile VECTOR(int16_t, 16) g_734;
    VECTOR(uint16_t, 16) g_743;
    VECTOR(uint16_t, 16) g_744;
    struct S3 ** volatile g_768;
    struct S3 ** volatile g_769;
    struct S2 * volatile g_773[10];
    struct S2 * volatile g_774[4][6][10];
    struct S2 *g_776[3];
    struct S2 ** volatile g_775;
    struct S0 g_854;
    uint32_t g_867;
    volatile VECTOR(int8_t, 8) g_881;
    VECTOR(int8_t, 2) g_882;
    VECTOR(int8_t, 16) g_884;
    int8_t g_890;
    struct S1 g_950;
    struct S1 ** volatile g_966;
    volatile uint64_t * volatile *g_975;
    VECTOR(uint16_t, 16) g_977;
    volatile VECTOR(int16_t, 16) g_980;
    VECTOR(int16_t, 2) g_1023;
    volatile VECTOR(int32_t, 8) g_1026;
    VECTOR(int32_t, 16) g_1034;
    VECTOR(uint16_t, 8) g_1037;
    VECTOR(uint64_t, 2) g_1088;
    VECTOR(uint64_t, 2) g_1091;
    VECTOR(uint32_t, 8) g_1102;
    volatile VECTOR(uint64_t, 4) g_1124;
    VECTOR(uint16_t, 4) g_1278;
    volatile VECTOR(int16_t, 8) g_1294;
    int8_t g_1300;
    volatile struct S3 g_1305;
    volatile struct S3 * volatile g_1306;
    volatile struct S3 g_1307;
    volatile int64_t g_1312[2][4];
    struct S3 g_1318;
    VECTOR(uint8_t, 2) g_1321;
    VECTOR(int16_t, 4) g_1327;
    VECTOR(int16_t, 2) g_1328;
    uint8_t g_1363;
    struct S1 ** volatile g_1395;
    struct S1 ** volatile g_1396[8];
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
uint32_t  func_1(struct S4 * p_1544);
int32_t  func_93(int32_t * p_94, int32_t ** p_95, int32_t * p_96, struct S4 * p_1544);
int32_t * func_97(int32_t * p_98, struct S4 * p_1544);
int32_t * func_99(uint64_t  p_100, int8_t  p_101, struct S4 * p_1544);
uint32_t  func_107(int32_t * p_108, int32_t  p_109, int32_t ** p_110, struct S4 * p_1544);
int64_t  func_111(int32_t ** p_112, int32_t * p_113, int32_t ** p_114, int32_t  p_115, struct S4 * p_1544);
int32_t * func_119(int64_t  p_120, uint16_t  p_121, int32_t ** p_122, struct S4 * p_1544);
int32_t ** func_125(int32_t ** p_126, int8_t  p_127, uint32_t  p_128, int64_t  p_129, int16_t  p_130, struct S4 * p_1544);
int32_t * func_146(uint16_t * p_147, int32_t  p_148, int32_t  p_149, int32_t * p_150, uint16_t * p_151, struct S4 * p_1544);
struct S3  func_152(struct S2  p_153, uint16_t * p_154, int16_t  p_155, uint64_t  p_156, struct S4 * p_1544);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1544->g_2 p_1544->l_comm_values p_1544->g_116 p_1544->g_118 p_1544->g_comm_values p_1544->g_143 p_1544->g_165 p_1544->g_117 p_1544->g_170 p_1544->g_171 p_1544->g_195 p_1544->g_192 p_1544->g_224 p_1544->g_226 p_1544->g_228 p_1544->g_223.f1 p_1544->g_247 p_1544->g_197 p_1544->g_318 p_1544->g_268 p_1544->g_209.f1 p_1544->g_270 p_1544->g_334 p_1544->g_339 p_1544->g_340 p_1544->g_342 p_1544->g_345 p_1544->g_347 p_1544->g_209.f0 p_1544->g_277 p_1544->g_223.f2 p_1544->g_356 p_1544->g_359 p_1544->g_271 p_1544->g_225 p_1544->g_209.f2 p_1544->g_376 p_1544->g_383 p_1544->g_223.f3 p_1544->g_387 p_1544->g_399 p_1544->g_365.f1 p_1544->g_411 p_1544->g_412 p_1544->g_248 p_1544->g_415 p_1544->g_223 p_1544->g_437 p_1544->g_445 p_1544->g_446 p_1544->g_463.f0 p_1544->g_674 p_1544->g_483.f2 p_1544->g_680 p_1544->g_681 p_1544->g_682 p_1544->g_483.f1 p_1544->g_697 p_1544->g_483.f0 p_1544->g_706 p_1544->g_650 p_1544->g_365.f3 p_1544->g_732 p_1544->g_734 p_1544->g_743 p_1544->g_744 p_1544->g_404.f0 p_1544->g_640 p_1544->g_641 p_1544->g_642 p_1544->g_775 p_1544->g_619 p_1544->g_854 p_1544->g_867 p_1544->g_881 p_1544->g_882 p_1544->g_884 p_1544->g_890 p_1544->g_950 p_1544->g_966 p_1544->g_975 p_1544->g_1034 p_1544->g_605 p_1544->g_1088 p_1544->g_1091 p_1544->g_1102 p_1544->g_649 p_1544->g_1300 p_1544->g_1037 p_1544->g_1305 p_1544->g_458 p_1544->g_1312 p_1544->g_188 p_1544->g_1023 p_1544->g_1363
 * writes: p_1544->g_143 p_1544->g_165 p_1544->g_171 p_1544->g_192 p_1544->g_210 p_1544->g_118 p_1544->g_225 p_1544->g_226 p_1544->g_117 p_1544->g_170 p_1544->g_268 p_1544->g_270 p_1544->g_358 p_1544->g_271 p_1544->g_248 p_1544->g_223.f3 p_1544->g_223 p_1544->g_228.f0 p_1544->g_463 p_1544->g_359 p_1544->g_492 p_1544->g_697 p_1544->g_483.f0 p_1544->g_706 p_1544->g_365.f3 p_1544->g_776 p_1544->g_732.f0 p_1544->g_411.f1 p_1544->g_228.f1 p_1544->g_517 p_1544->g_854.f2 p_1544->g_209.f1 p_1544->g_411.f3 p_1544->g_228.f3 p_1544->g_1034 p_1544->g_383 p_1544->g_867 p_1544->g_318 p_1544->g_640 p_1544->g_1307 p_1544->g_458 p_1544->g_1023 p_1544->g_1363 p_1544->g_950.f1
 */
uint32_t  func_1(struct S4 * p_1544)
{ /* block id: 4 */
    VECTOR(uint16_t, 16) l_3 = (VECTOR(uint16_t, 16))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 1UL), 1UL), 1UL, 65535UL, 1UL, (VECTOR(uint16_t, 2))(65535UL, 1UL), (VECTOR(uint16_t, 2))(65535UL, 1UL), 65535UL, 1UL, 65535UL, 1UL);
    uint32_t l_455 = 0xE6B98EC6L;
    int32_t *l_457[6][6] = {{&p_1544->g_458,&p_1544->g_458,&p_1544->g_458,&p_1544->g_458,&p_1544->g_458,&p_1544->g_458},{&p_1544->g_458,&p_1544->g_458,&p_1544->g_458,&p_1544->g_458,&p_1544->g_458,&p_1544->g_458},{&p_1544->g_458,&p_1544->g_458,&p_1544->g_458,&p_1544->g_458,&p_1544->g_458,&p_1544->g_458},{&p_1544->g_458,&p_1544->g_458,&p_1544->g_458,&p_1544->g_458,&p_1544->g_458,&p_1544->g_458},{&p_1544->g_458,&p_1544->g_458,&p_1544->g_458,&p_1544->g_458,&p_1544->g_458,&p_1544->g_458},{&p_1544->g_458,&p_1544->g_458,&p_1544->g_458,&p_1544->g_458,&p_1544->g_458,&p_1544->g_458}};
    int32_t **l_456[9][3] = {{&l_457[3][4],&l_457[5][3],&l_457[3][4]},{&l_457[3][4],&l_457[5][3],&l_457[3][4]},{&l_457[3][4],&l_457[5][3],&l_457[3][4]},{&l_457[3][4],&l_457[5][3],&l_457[3][4]},{&l_457[3][4],&l_457[5][3],&l_457[3][4]},{&l_457[3][4],&l_457[5][3],&l_457[3][4]},{&l_457[3][4],&l_457[5][3],&l_457[3][4]},{&l_457[3][4],&l_457[5][3],&l_457[3][4]},{&l_457[3][4],&l_457[5][3],&l_457[3][4]}};
    int32_t **l_707 = &l_457[3][3];
    VECTOR(uint64_t, 8) l_1087 = (VECTOR(uint64_t, 8))(0xD66558D41CF8126CL, (VECTOR(uint64_t, 4))(0xD66558D41CF8126CL, (VECTOR(uint64_t, 2))(0xD66558D41CF8126CL, 0UL), 0UL), 0UL, 0xD66558D41CF8126CL, 0UL);
    VECTOR(uint64_t, 16) l_1089 = (VECTOR(uint64_t, 16))(18446744073709551615UL, (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0xF578DE8E813FCB59L), 0xF578DE8E813FCB59L), 0xF578DE8E813FCB59L, 18446744073709551615UL, 0xF578DE8E813FCB59L, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0xF578DE8E813FCB59L), (VECTOR(uint64_t, 2))(18446744073709551615UL, 0xF578DE8E813FCB59L), 18446744073709551615UL, 0xF578DE8E813FCB59L, 18446744073709551615UL, 0xF578DE8E813FCB59L);
    VECTOR(uint64_t, 2) l_1090 = (VECTOR(uint64_t, 2))(0x7EF442E0FE9E106DL, 18446744073709551615UL);
    VECTOR(uint64_t, 16) l_1092 = (VECTOR(uint64_t, 16))(0x440CF735E7A3100FL, (VECTOR(uint64_t, 4))(0x440CF735E7A3100FL, (VECTOR(uint64_t, 2))(0x440CF735E7A3100FL, 0x0C45308DA3C7413FL), 0x0C45308DA3C7413FL), 0x0C45308DA3C7413FL, 0x440CF735E7A3100FL, 0x0C45308DA3C7413FL, (VECTOR(uint64_t, 2))(0x440CF735E7A3100FL, 0x0C45308DA3C7413FL), (VECTOR(uint64_t, 2))(0x440CF735E7A3100FL, 0x0C45308DA3C7413FL), 0x440CF735E7A3100FL, 0x0C45308DA3C7413FL, 0x440CF735E7A3100FL, 0x0C45308DA3C7413FL);
    VECTOR(uint64_t, 16) l_1094 = (VECTOR(uint64_t, 16))(0x634100C60E2501B6L, (VECTOR(uint64_t, 4))(0x634100C60E2501B6L, (VECTOR(uint64_t, 2))(0x634100C60E2501B6L, 18446744073709551610UL), 18446744073709551610UL), 18446744073709551610UL, 0x634100C60E2501B6L, 18446744073709551610UL, (VECTOR(uint64_t, 2))(0x634100C60E2501B6L, 18446744073709551610UL), (VECTOR(uint64_t, 2))(0x634100C60E2501B6L, 18446744073709551610UL), 0x634100C60E2501B6L, 18446744073709551610UL, 0x634100C60E2501B6L, 18446744073709551610UL);
    VECTOR(uint8_t, 2) l_1101 = (VECTOR(uint8_t, 2))(0x75L, 0xCDL);
    uint8_t **l_1107[10] = {&p_1544->g_642[1][0],&p_1544->g_642[1][0],&p_1544->g_642[1][0],&p_1544->g_642[1][0],&p_1544->g_642[1][0],&p_1544->g_642[1][0],&p_1544->g_642[1][0],&p_1544->g_642[1][0],&p_1544->g_642[1][0],&p_1544->g_642[1][0]};
    int32_t l_1109 = (-1L);
    uint64_t l_1110 = 18446744073709551615UL;
    uint32_t l_1111 = 0xCDDA3E2CL;
    int32_t l_1134 = 0x07350022L;
    VECTOR(int16_t, 4) l_1325 = (VECTOR(int16_t, 4))(0x18F3L, (VECTOR(int16_t, 2))(0x18F3L, 0x6698L), 0x6698L);
    struct S2 l_1338 = {0UL};
    int8_t *l_1353 = (void*)0;
    struct S3 *l_1389 = &p_1544->g_411;
    struct S1 *l_1399 = &p_1544->g_463;
    uint32_t l_1405 = 0x7E12CC09L;
    int i, j;
    if ((((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 16))(p_1544->g_2.xxxyyxxyxxxyxxyy)).s7688)).y , (((VECTOR(uint16_t, 16))(add_sat(((VECTOR(uint16_t, 4))(l_3.sb64b)).yxzwxwxzzyxywxww, ((VECTOR(uint16_t, 2))(0xBEFAL, 0x9C71L)).xxxyxyxyyxyyxxxx))).se ^ p_1544->g_2.x)))
    { /* block id: 5 */
        uint8_t l_104 = 0x94L;
        int32_t *l_137 = &p_1544->g_118[1][1][1];
        int32_t **l_453 = &l_137;
        int32_t ***l_452 = &l_453;
        int32_t l_454 = 3L;
        int8_t l_688[10] = {0x62L,(-6L),0x62L,0x62L,(-6L),0x62L,0x62L,(-6L),0x62L,0x62L};
        uint64_t *l_689 = (void*)0;
        uint64_t *l_690 = (void*)0;
        uint64_t *l_691 = (void*)0;
        uint64_t *l_692 = (void*)0;
        uint64_t *l_693 = (void*)0;
        uint64_t *l_694 = (void*)0;
        uint64_t *l_695 = (void*)0;
        uint64_t *l_696[1][8][5] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
        int32_t **l_698 = (void*)0;
        int16_t *l_704 = (void*)0;
        int16_t *l_705 = &p_1544->g_706;
        VECTOR(uint64_t, 16) l_1075 = (VECTOR(uint64_t, 16))(18446744073709551612UL, (VECTOR(uint64_t, 4))(18446744073709551612UL, (VECTOR(uint64_t, 2))(18446744073709551612UL, 18446744073709551612UL), 18446744073709551612UL), 18446744073709551612UL, 18446744073709551612UL, 18446744073709551612UL, (VECTOR(uint64_t, 2))(18446744073709551612UL, 18446744073709551612UL), (VECTOR(uint64_t, 2))(18446744073709551612UL, 18446744073709551612UL), 18446744073709551612UL, 18446744073709551612UL, 18446744073709551612UL, 18446744073709551612UL);
        VECTOR(uint64_t, 8) l_1086 = (VECTOR(uint64_t, 8))(18446744073709551615UL, (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0x362287C09F8AE04AL), 0x362287C09F8AE04AL), 0x362287C09F8AE04AL, 18446744073709551615UL, 0x362287C09F8AE04AL);
        VECTOR(uint64_t, 16) l_1093 = (VECTOR(uint64_t, 16))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 18446744073709551615UL), 18446744073709551615UL), 18446744073709551615UL, 1UL, 18446744073709551615UL, (VECTOR(uint64_t, 2))(1UL, 18446744073709551615UL), (VECTOR(uint64_t, 2))(1UL, 18446744073709551615UL), 1UL, 18446744073709551615UL, 1UL, 18446744073709551615UL);
        struct S2 l_1105 = {0x2F98C926960F40F5L};
        uint8_t **l_1106 = &p_1544->g_642[0][1];
        uint32_t l_1108 = 4294967291UL;
        int64_t *l_1112 = &p_1544->g_223.f3;
        uint64_t l_1113 = 0UL;
        uint32_t *l_1114 = &l_1108;
        uint32_t *l_1115 = &p_1544->g_867;
        int i, j, k;
        if ((atomic_inc(&p_1544->g_atomic_input[93 * get_linear_group_id() + 11]) == 3))
        { /* block id: 7 */
            int8_t l_4[5];
            int32_t *l_5 = (void*)0;
            int32_t l_7 = 0L;
            int32_t *l_6 = &l_7;
            int8_t l_8 = 4L;
            uint32_t l_9[10][8][3] = {{{0xC3AE5071L,0xBBB66EFEL,3UL},{0xC3AE5071L,0xBBB66EFEL,3UL},{0xC3AE5071L,0xBBB66EFEL,3UL},{0xC3AE5071L,0xBBB66EFEL,3UL},{0xC3AE5071L,0xBBB66EFEL,3UL},{0xC3AE5071L,0xBBB66EFEL,3UL},{0xC3AE5071L,0xBBB66EFEL,3UL},{0xC3AE5071L,0xBBB66EFEL,3UL}},{{0xC3AE5071L,0xBBB66EFEL,3UL},{0xC3AE5071L,0xBBB66EFEL,3UL},{0xC3AE5071L,0xBBB66EFEL,3UL},{0xC3AE5071L,0xBBB66EFEL,3UL},{0xC3AE5071L,0xBBB66EFEL,3UL},{0xC3AE5071L,0xBBB66EFEL,3UL},{0xC3AE5071L,0xBBB66EFEL,3UL},{0xC3AE5071L,0xBBB66EFEL,3UL}},{{0xC3AE5071L,0xBBB66EFEL,3UL},{0xC3AE5071L,0xBBB66EFEL,3UL},{0xC3AE5071L,0xBBB66EFEL,3UL},{0xC3AE5071L,0xBBB66EFEL,3UL},{0xC3AE5071L,0xBBB66EFEL,3UL},{0xC3AE5071L,0xBBB66EFEL,3UL},{0xC3AE5071L,0xBBB66EFEL,3UL},{0xC3AE5071L,0xBBB66EFEL,3UL}},{{0xC3AE5071L,0xBBB66EFEL,3UL},{0xC3AE5071L,0xBBB66EFEL,3UL},{0xC3AE5071L,0xBBB66EFEL,3UL},{0xC3AE5071L,0xBBB66EFEL,3UL},{0xC3AE5071L,0xBBB66EFEL,3UL},{0xC3AE5071L,0xBBB66EFEL,3UL},{0xC3AE5071L,0xBBB66EFEL,3UL},{0xC3AE5071L,0xBBB66EFEL,3UL}},{{0xC3AE5071L,0xBBB66EFEL,3UL},{0xC3AE5071L,0xBBB66EFEL,3UL},{0xC3AE5071L,0xBBB66EFEL,3UL},{0xC3AE5071L,0xBBB66EFEL,3UL},{0xC3AE5071L,0xBBB66EFEL,3UL},{0xC3AE5071L,0xBBB66EFEL,3UL},{0xC3AE5071L,0xBBB66EFEL,3UL},{0xC3AE5071L,0xBBB66EFEL,3UL}},{{0xC3AE5071L,0xBBB66EFEL,3UL},{0xC3AE5071L,0xBBB66EFEL,3UL},{0xC3AE5071L,0xBBB66EFEL,3UL},{0xC3AE5071L,0xBBB66EFEL,3UL},{0xC3AE5071L,0xBBB66EFEL,3UL},{0xC3AE5071L,0xBBB66EFEL,3UL},{0xC3AE5071L,0xBBB66EFEL,3UL},{0xC3AE5071L,0xBBB66EFEL,3UL}},{{0xC3AE5071L,0xBBB66EFEL,3UL},{0xC3AE5071L,0xBBB66EFEL,3UL},{0xC3AE5071L,0xBBB66EFEL,3UL},{0xC3AE5071L,0xBBB66EFEL,3UL},{0xC3AE5071L,0xBBB66EFEL,3UL},{0xC3AE5071L,0xBBB66EFEL,3UL},{0xC3AE5071L,0xBBB66EFEL,3UL},{0xC3AE5071L,0xBBB66EFEL,3UL}},{{0xC3AE5071L,0xBBB66EFEL,3UL},{0xC3AE5071L,0xBBB66EFEL,3UL},{0xC3AE5071L,0xBBB66EFEL,3UL},{0xC3AE5071L,0xBBB66EFEL,3UL},{0xC3AE5071L,0xBBB66EFEL,3UL},{0xC3AE5071L,0xBBB66EFEL,3UL},{0xC3AE5071L,0xBBB66EFEL,3UL},{0xC3AE5071L,0xBBB66EFEL,3UL}},{{0xC3AE5071L,0xBBB66EFEL,3UL},{0xC3AE5071L,0xBBB66EFEL,3UL},{0xC3AE5071L,0xBBB66EFEL,3UL},{0xC3AE5071L,0xBBB66EFEL,3UL},{0xC3AE5071L,0xBBB66EFEL,3UL},{0xC3AE5071L,0xBBB66EFEL,3UL},{0xC3AE5071L,0xBBB66EFEL,3UL},{0xC3AE5071L,0xBBB66EFEL,3UL}},{{0xC3AE5071L,0xBBB66EFEL,3UL},{0xC3AE5071L,0xBBB66EFEL,3UL},{0xC3AE5071L,0xBBB66EFEL,3UL},{0xC3AE5071L,0xBBB66EFEL,3UL},{0xC3AE5071L,0xBBB66EFEL,3UL},{0xC3AE5071L,0xBBB66EFEL,3UL},{0xC3AE5071L,0xBBB66EFEL,3UL},{0xC3AE5071L,0xBBB66EFEL,3UL}}};
            int32_t l_10 = 0x38BE40E8L;
            int16_t l_11 = 0x1C4FL;
            int32_t l_12[1][2];
            struct S1 l_13[6][3] = {{{-1L,0x6302L,0x022C3E50L,0x4E5052DE1722BB76L,0L},{0L,1L,-2L,0L,4L},{-1L,0x6302L,0x022C3E50L,0x4E5052DE1722BB76L,0L}},{{-1L,0x6302L,0x022C3E50L,0x4E5052DE1722BB76L,0L},{0L,1L,-2L,0L,4L},{-1L,0x6302L,0x022C3E50L,0x4E5052DE1722BB76L,0L}},{{-1L,0x6302L,0x022C3E50L,0x4E5052DE1722BB76L,0L},{0L,1L,-2L,0L,4L},{-1L,0x6302L,0x022C3E50L,0x4E5052DE1722BB76L,0L}},{{-1L,0x6302L,0x022C3E50L,0x4E5052DE1722BB76L,0L},{0L,1L,-2L,0L,4L},{-1L,0x6302L,0x022C3E50L,0x4E5052DE1722BB76L,0L}},{{-1L,0x6302L,0x022C3E50L,0x4E5052DE1722BB76L,0L},{0L,1L,-2L,0L,4L},{-1L,0x6302L,0x022C3E50L,0x4E5052DE1722BB76L,0L}},{{-1L,0x6302L,0x022C3E50L,0x4E5052DE1722BB76L,0L},{0L,1L,-2L,0L,4L},{-1L,0x6302L,0x022C3E50L,0x4E5052DE1722BB76L,0L}}};
            uint8_t l_14 = 6UL;
            int i, j, k;
            for (i = 0; i < 5; i++)
                l_4[i] = 1L;
            for (i = 0; i < 1; i++)
            {
                for (j = 0; j < 2; j++)
                    l_12[i][j] = 0x4275799DL;
            }
            l_6 = (l_4[4] , (((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(0x1FL, 0x06L)).yxxxxyyx)).s67)).even , l_5));
            l_10 = (l_9[8][7][1] = l_8);
            if ((l_14 |= ((l_12[0][1] = l_11) , (l_13[0][2] , 8L))))
            { /* block id: 13 */
                int64_t l_15 = 0x6E4D501105CA7CEEL;
                int64_t l_16[9] = {0x3835292FD4AE77DDL,0x3835292FD4AE77DDL,0x3835292FD4AE77DDL,0x3835292FD4AE77DDL,0x3835292FD4AE77DDL,0x3835292FD4AE77DDL,0x3835292FD4AE77DDL,0x3835292FD4AE77DDL,0x3835292FD4AE77DDL};
                int i;
                if ((l_16[8] = l_15))
                { /* block id: 15 */
                    int32_t l_17 = 8L;
                    uint64_t l_25 = 4UL;
                    for (l_17 = 0; (l_17 != (-24)); l_17--)
                    { /* block id: 18 */
                        uint32_t l_20[6][8][5] = {{{1UL,0xBDD3DE95L,4294967286UL,1UL,1UL},{1UL,0xBDD3DE95L,4294967286UL,1UL,1UL},{1UL,0xBDD3DE95L,4294967286UL,1UL,1UL},{1UL,0xBDD3DE95L,4294967286UL,1UL,1UL},{1UL,0xBDD3DE95L,4294967286UL,1UL,1UL},{1UL,0xBDD3DE95L,4294967286UL,1UL,1UL},{1UL,0xBDD3DE95L,4294967286UL,1UL,1UL},{1UL,0xBDD3DE95L,4294967286UL,1UL,1UL}},{{1UL,0xBDD3DE95L,4294967286UL,1UL,1UL},{1UL,0xBDD3DE95L,4294967286UL,1UL,1UL},{1UL,0xBDD3DE95L,4294967286UL,1UL,1UL},{1UL,0xBDD3DE95L,4294967286UL,1UL,1UL},{1UL,0xBDD3DE95L,4294967286UL,1UL,1UL},{1UL,0xBDD3DE95L,4294967286UL,1UL,1UL},{1UL,0xBDD3DE95L,4294967286UL,1UL,1UL},{1UL,0xBDD3DE95L,4294967286UL,1UL,1UL}},{{1UL,0xBDD3DE95L,4294967286UL,1UL,1UL},{1UL,0xBDD3DE95L,4294967286UL,1UL,1UL},{1UL,0xBDD3DE95L,4294967286UL,1UL,1UL},{1UL,0xBDD3DE95L,4294967286UL,1UL,1UL},{1UL,0xBDD3DE95L,4294967286UL,1UL,1UL},{1UL,0xBDD3DE95L,4294967286UL,1UL,1UL},{1UL,0xBDD3DE95L,4294967286UL,1UL,1UL},{1UL,0xBDD3DE95L,4294967286UL,1UL,1UL}},{{1UL,0xBDD3DE95L,4294967286UL,1UL,1UL},{1UL,0xBDD3DE95L,4294967286UL,1UL,1UL},{1UL,0xBDD3DE95L,4294967286UL,1UL,1UL},{1UL,0xBDD3DE95L,4294967286UL,1UL,1UL},{1UL,0xBDD3DE95L,4294967286UL,1UL,1UL},{1UL,0xBDD3DE95L,4294967286UL,1UL,1UL},{1UL,0xBDD3DE95L,4294967286UL,1UL,1UL},{1UL,0xBDD3DE95L,4294967286UL,1UL,1UL}},{{1UL,0xBDD3DE95L,4294967286UL,1UL,1UL},{1UL,0xBDD3DE95L,4294967286UL,1UL,1UL},{1UL,0xBDD3DE95L,4294967286UL,1UL,1UL},{1UL,0xBDD3DE95L,4294967286UL,1UL,1UL},{1UL,0xBDD3DE95L,4294967286UL,1UL,1UL},{1UL,0xBDD3DE95L,4294967286UL,1UL,1UL},{1UL,0xBDD3DE95L,4294967286UL,1UL,1UL},{1UL,0xBDD3DE95L,4294967286UL,1UL,1UL}},{{1UL,0xBDD3DE95L,4294967286UL,1UL,1UL},{1UL,0xBDD3DE95L,4294967286UL,1UL,1UL},{1UL,0xBDD3DE95L,4294967286UL,1UL,1UL},{1UL,0xBDD3DE95L,4294967286UL,1UL,1UL},{1UL,0xBDD3DE95L,4294967286UL,1UL,1UL},{1UL,0xBDD3DE95L,4294967286UL,1UL,1UL},{1UL,0xBDD3DE95L,4294967286UL,1UL,1UL},{1UL,0xBDD3DE95L,4294967286UL,1UL,1UL}}};
                        struct S1 l_23[1] = {{-10L,8L,0x20A5F0D2L,0x69E1CF7F8006A596L,-5L}};
                        int64_t l_24 = 0x4F8C03821FDCAA39L;
                        int i, j, k;
                        ++l_20[5][1][0];
                        l_13[1][2] = l_23[0];
                        l_24 = (-1L);
                    }
                    l_10 &= l_25;
                }
                else
                { /* block id: 24 */
                    int32_t l_26 = 1L;
                    l_10 |= (l_7 = l_26);
                    for (l_26 = 14; (l_26 >= 4); l_26 = safe_sub_func_int64_t_s_s(l_26, 6))
                    { /* block id: 29 */
                        VECTOR(int32_t, 8) l_29 = (VECTOR(int32_t, 8))(0x2AFF43A5L, (VECTOR(int32_t, 4))(0x2AFF43A5L, (VECTOR(int32_t, 2))(0x2AFF43A5L, (-7L)), (-7L)), (-7L), 0x2AFF43A5L, (-7L));
                        VECTOR(int32_t, 2) l_30 = (VECTOR(int32_t, 2))(0L, 0x48A5E38BL);
                        VECTOR(int32_t, 4) l_31 = (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x3F0D6E72L), 0x3F0D6E72L);
                        VECTOR(uint16_t, 8) l_32 = (VECTOR(uint16_t, 8))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0xA931L), 0xA931L), 0xA931L, 1UL, 0xA931L);
                        struct S1 l_33 = {-8L,-4L,0x285EB113L,0x12C56C064F7A5021L,0x54L};/* VOLATILE GLOBAL l_33 */
                        uint32_t l_34 = 0UL;
                        VECTOR(int32_t, 2) l_35 = (VECTOR(int32_t, 2))(0x3CF271EEL, 0x4ED6D970L);
                        VECTOR(uint16_t, 16) l_36 = (VECTOR(uint16_t, 16))(0x510EL, (VECTOR(uint16_t, 4))(0x510EL, (VECTOR(uint16_t, 2))(0x510EL, 65535UL), 65535UL), 65535UL, 0x510EL, 65535UL, (VECTOR(uint16_t, 2))(0x510EL, 65535UL), (VECTOR(uint16_t, 2))(0x510EL, 65535UL), 0x510EL, 65535UL, 0x510EL, 65535UL);
                        VECTOR(int32_t, 2) l_37 = (VECTOR(int32_t, 2))(0x20E1B1DCL, 6L);
                        int8_t l_38 = (-1L);
                        uint16_t l_39 = 1UL;
                        struct S2 l_40[4][6] = {{{0xA38A8CD10D832770L},{0xA38A8CD10D832770L},{0x2A9C28C3218605C9L},{0xBA4E592539712D87L},{0UL},{0xBA4E592539712D87L}},{{0xA38A8CD10D832770L},{0xA38A8CD10D832770L},{0x2A9C28C3218605C9L},{0xBA4E592539712D87L},{0UL},{0xBA4E592539712D87L}},{{0xA38A8CD10D832770L},{0xA38A8CD10D832770L},{0x2A9C28C3218605C9L},{0xBA4E592539712D87L},{0UL},{0xBA4E592539712D87L}},{{0xA38A8CD10D832770L},{0xA38A8CD10D832770L},{0x2A9C28C3218605C9L},{0xBA4E592539712D87L},{0UL},{0xBA4E592539712D87L}}};
                        uint32_t l_41 = 0x895F91D9L;
                        VECTOR(int64_t, 2) l_42 = (VECTOR(int64_t, 2))(0x780BD77F32F3F1ECL, 0x5442DF10F9C02EF1L);
                        VECTOR(int64_t, 16) l_43 = (VECTOR(int64_t, 16))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 3L), 3L), 3L, (-1L), 3L, (VECTOR(int64_t, 2))((-1L), 3L), (VECTOR(int64_t, 2))((-1L), 3L), (-1L), 3L, (-1L), 3L);
                        VECTOR(int32_t, 16) l_44 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), (-8L)), (-8L)), (-8L), (-1L), (-8L), (VECTOR(int32_t, 2))((-1L), (-8L)), (VECTOR(int32_t, 2))((-1L), (-8L)), (-1L), (-8L), (-1L), (-8L));
                        VECTOR(uint32_t, 16) l_45 = (VECTOR(uint32_t, 16))(0xACFD07FAL, (VECTOR(uint32_t, 4))(0xACFD07FAL, (VECTOR(uint32_t, 2))(0xACFD07FAL, 0xCC10BF76L), 0xCC10BF76L), 0xCC10BF76L, 0xACFD07FAL, 0xCC10BF76L, (VECTOR(uint32_t, 2))(0xACFD07FAL, 0xCC10BF76L), (VECTOR(uint32_t, 2))(0xACFD07FAL, 0xCC10BF76L), 0xACFD07FAL, 0xCC10BF76L, 0xACFD07FAL, 0xCC10BF76L);
                        VECTOR(uint32_t, 4) l_46 = (VECTOR(uint32_t, 4))(5UL, (VECTOR(uint32_t, 2))(5UL, 0UL), 0UL);
                        VECTOR(uint32_t, 8) l_47 = (VECTOR(uint32_t, 8))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 0x78314121L), 0x78314121L), 0x78314121L, 1UL, 0x78314121L);
                        int32_t l_48[4][5][1] = {{{(-4L)},{(-4L)},{(-4L)},{(-4L)},{(-4L)}},{{(-4L)},{(-4L)},{(-4L)},{(-4L)},{(-4L)}},{{(-4L)},{(-4L)},{(-4L)},{(-4L)},{(-4L)}},{{(-4L)},{(-4L)},{(-4L)},{(-4L)},{(-4L)}}};
                        uint32_t l_49 = 0xCC7407BCL;
                        uint16_t l_50 = 0x8BF3L;
                        uint32_t l_51 = 2UL;
                        uint16_t l_52 = 1UL;
                        int64_t l_53 = 5L;
                        uint16_t l_54 = 0x5E4CL;
                        uint8_t l_55[8][3][5] = {{{247UL,5UL,0x29L,0x34L,1UL},{247UL,5UL,0x29L,0x34L,1UL},{247UL,5UL,0x29L,0x34L,1UL}},{{247UL,5UL,0x29L,0x34L,1UL},{247UL,5UL,0x29L,0x34L,1UL},{247UL,5UL,0x29L,0x34L,1UL}},{{247UL,5UL,0x29L,0x34L,1UL},{247UL,5UL,0x29L,0x34L,1UL},{247UL,5UL,0x29L,0x34L,1UL}},{{247UL,5UL,0x29L,0x34L,1UL},{247UL,5UL,0x29L,0x34L,1UL},{247UL,5UL,0x29L,0x34L,1UL}},{{247UL,5UL,0x29L,0x34L,1UL},{247UL,5UL,0x29L,0x34L,1UL},{247UL,5UL,0x29L,0x34L,1UL}},{{247UL,5UL,0x29L,0x34L,1UL},{247UL,5UL,0x29L,0x34L,1UL},{247UL,5UL,0x29L,0x34L,1UL}},{{247UL,5UL,0x29L,0x34L,1UL},{247UL,5UL,0x29L,0x34L,1UL},{247UL,5UL,0x29L,0x34L,1UL}},{{247UL,5UL,0x29L,0x34L,1UL},{247UL,5UL,0x29L,0x34L,1UL},{247UL,5UL,0x29L,0x34L,1UL}}};
                        int32_t *l_57 = (void*)0;
                        int32_t **l_56 = &l_57;
                        int32_t **l_58 = &l_57;
                        int i, j, k;
                        l_7 = ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(rhadd(((VECTOR(int32_t, 8))(l_29.s45172512)).even, ((VECTOR(int32_t, 16))(l_30.yxxxxxxyxxyxyyyy)).s59e7))), ((VECTOR(int32_t, 2))(sub_sat(((VECTOR(int32_t, 4))(l_31.yzxy)).hi, ((VECTOR(int32_t, 4))(mad_sat(((VECTOR(int32_t, 4))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 2))(upsample(((VECTOR(int16_t, 2))(8L, (-6L))), ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 16))(l_32.s2735051237311204)).hi)).lo)))).yzwwzwyy)).s46))).xxxy, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))((-2L), 0x69CA922CL)).yxyxxyyy)).s1, (-3L), 0L, 4L))))))), ((VECTOR(int32_t, 8))(safe_clamp_func(VECTOR(int32_t, 8),VECTOR(int32_t, 8),((VECTOR(int32_t, 8))(0x66290501L, (l_31.w |= (l_33 , l_34)), 0x6D1EE207L, 8L, ((VECTOR(int32_t, 2))(l_35.yx)), 0x6030EDB6L, (-1L))), ((VECTOR(int32_t, 2))(upsample(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(0x2231L, 0x0225L)).yyyyyxxy)).s66, ((VECTOR(uint16_t, 4))(l_36.s2b8e)).hi))).yxyyxxyx, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(l_37.xxyy)).even)))).xxyy)).ywyzxwyw))).hi, ((VECTOR(int32_t, 8))(0x52E2DA10L, 0x709C141FL, 8L, 1L, 0x1DDE94EDL, ((l_38 , (l_39 , l_40[2][1])) , l_41), 0x6A2DD672L, 1L)).hi))).even))).lo, (l_10 = ((l_53 = ((VECTOR(int64_t, 4))(mul_hi(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 4),((VECTOR(int64_t, 2))(sub_sat(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 2))(1L, 0x560AC8F595BA468DL)).yyyxxxyxxxxyyxxx)).s49, ((VECTOR(int64_t, 8))(l_42.yyxxyxyy)).s16))).xxyx, ((VECTOR(int64_t, 2))(l_43.s35)).yxyx, ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 16))(add_sat(((VECTOR(int64_t, 4))(upsample(((VECTOR(int32_t, 2))(l_44.s3b)).xxxx, ((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 16))(hadd(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))(l_45.s20)), ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(4294967294UL, 0xF7460F08L)).xyxy)), ((VECTOR(uint32_t, 2))(l_46.ww)), 4294967292UL, 0UL, ((VECTOR(uint32_t, 4))(0x80BEB2ABL, 0x7C52E31AL, 0x02985B24L, 9UL)), 0xC06C7073L, 0x935D89A0L)), ((VECTOR(uint32_t, 16))(safe_clamp_func(VECTOR(uint32_t, 16),uint32_t,((VECTOR(uint32_t, 8))(max(((VECTOR(uint32_t, 16))((((VECTOR(uint64_t, 2))(0xD5F4407CCE436C4CL, 18446744073709551607UL)).even , ((((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 4))(l_47.s1527)))))), 0xB1F07F58L, GROUP_DIVERGE(0, 1), l_48[2][2][0], 1UL, 4294967295UL, 0xB7073E97L, 0x1F52E6A1L, l_49, l_50, ((VECTOR(uint32_t, 2))(0xBADC3C1FL)), 4294967295UL)))).s3 , GROUP_DIVERGE(0, 1)) , 9UL)), ((VECTOR(uint32_t, 2))(7UL)), ((VECTOR(uint32_t, 2))(7UL)), ((VECTOR(uint32_t, 8))(0x177B9BCBL)), 4294967293UL, 4294967295UL, 0x8CC5C9A5L)).even, ((VECTOR(uint32_t, 8))(0x306FF473L))))).s5756157137414201, (uint32_t)GROUP_DIVERGE(0, 1), (uint32_t)l_51)))))))).saa09))).wyzwzwxxxzzxwwxw, ((VECTOR(int64_t, 16))((-1L)))))).sd94e))))), l_52, ((VECTOR(int64_t, 2))(0x1626AC7A9A96AD4EL)), 0x5E2C04EAD8C2D907L)).lo, ((VECTOR(int64_t, 4))(0x52E5DFB398794C97L))))).y) , l_54)), 1L, 0x0AF11E84L, ((VECTOR(int32_t, 2))(1L)), ((VECTOR(int32_t, 4))(0x0B5CC303L)), 1L, (-3L))).se;
                        l_30.x = 0x0D450DD3L;
                        l_29.s5 ^= l_55[1][0][3];
                        l_58 = (l_56 = l_56);
                    }
                    for (l_26 = 0; (l_26 <= 6); l_26 = safe_add_func_uint32_t_u_u(l_26, 5))
                    { /* block id: 41 */
                        struct S2 l_61 = {0xBA63EE4706FC5896L};
                        struct S2 l_62 = {0xE06CC3F753BD1B8EL};
                        int32_t l_64 = 1L;
                        int32_t *l_63 = &l_64;
                        struct S3 l_65 = {4294967291UL,0x98L,0x860EB3D4A04D2973L,4294967295UL};/* VOLATILE GLOBAL l_65 */
                        VECTOR(uint32_t, 8) l_66 = (VECTOR(uint32_t, 8))(0xB260D455L, (VECTOR(uint32_t, 4))(0xB260D455L, (VECTOR(uint32_t, 2))(0xB260D455L, 4294967286UL), 4294967286UL), 4294967286UL, 0xB260D455L, 4294967286UL);
                        VECTOR(uint32_t, 16) l_67 = (VECTOR(uint32_t, 16))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 0x8A188AF3L), 0x8A188AF3L), 0x8A188AF3L, 1UL, 0x8A188AF3L, (VECTOR(uint32_t, 2))(1UL, 0x8A188AF3L), (VECTOR(uint32_t, 2))(1UL, 0x8A188AF3L), 1UL, 0x8A188AF3L, 1UL, 0x8A188AF3L);
                        VECTOR(uint32_t, 8) l_68 = (VECTOR(uint32_t, 8))(4294967294UL, (VECTOR(uint32_t, 4))(4294967294UL, (VECTOR(uint32_t, 2))(4294967294UL, 0x910644F2L), 0x910644F2L), 0x910644F2L, 4294967294UL, 0x910644F2L);
                        VECTOR(uint32_t, 8) l_69 = (VECTOR(uint32_t, 8))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 4294967295UL), 4294967295UL), 4294967295UL, 0UL, 4294967295UL);
                        int i;
                        l_62 = l_61;
                        l_6 = l_63;
                        (*l_63) = (l_65 , (((VECTOR(uint32_t, 4))(mad_hi(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(rhadd(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 8))(l_66.s63205212)))).s46, ((VECTOR(uint32_t, 2))(0xA91B6E25L, 0UL))))), 1UL, ((VECTOR(uint32_t, 2))(0UL, 6UL)), ((VECTOR(uint32_t, 2))(l_67.s96)), 0xCF41E0E3L)).hi, ((VECTOR(uint32_t, 2))(l_68.s55)).yyxy, ((VECTOR(uint32_t, 16))(l_69.s6030606320767533)).s75ad))).w , (-1L)));
                    }
                }
            }
            else
            { /* block id: 47 */
                int32_t l_70 = (-8L);
                uint32_t l_71 = 0x582C1F30L;
                l_71++;
                for (l_71 = (-24); (l_71 == 41); l_71++)
                { /* block id: 51 */
                    struct S1 l_76[10][5] = {{{0x7D849581409FF84DL,0x0300L,-2L,7L,-1L},{0x11CDFF82CE327E5AL,-10L,-3L,0x01008DDBD3AB86DCL,-1L},{0x11CDFF82CE327E5AL,-10L,-3L,0x01008DDBD3AB86DCL,-1L},{0x7D849581409FF84DL,0x0300L,-2L,7L,-1L},{0L,0x2DC3L,0x19709B9CL,1L,0x62L}},{{0x7D849581409FF84DL,0x0300L,-2L,7L,-1L},{0x11CDFF82CE327E5AL,-10L,-3L,0x01008DDBD3AB86DCL,-1L},{0x11CDFF82CE327E5AL,-10L,-3L,0x01008DDBD3AB86DCL,-1L},{0x7D849581409FF84DL,0x0300L,-2L,7L,-1L},{0L,0x2DC3L,0x19709B9CL,1L,0x62L}},{{0x7D849581409FF84DL,0x0300L,-2L,7L,-1L},{0x11CDFF82CE327E5AL,-10L,-3L,0x01008DDBD3AB86DCL,-1L},{0x11CDFF82CE327E5AL,-10L,-3L,0x01008DDBD3AB86DCL,-1L},{0x7D849581409FF84DL,0x0300L,-2L,7L,-1L},{0L,0x2DC3L,0x19709B9CL,1L,0x62L}},{{0x7D849581409FF84DL,0x0300L,-2L,7L,-1L},{0x11CDFF82CE327E5AL,-10L,-3L,0x01008DDBD3AB86DCL,-1L},{0x11CDFF82CE327E5AL,-10L,-3L,0x01008DDBD3AB86DCL,-1L},{0x7D849581409FF84DL,0x0300L,-2L,7L,-1L},{0L,0x2DC3L,0x19709B9CL,1L,0x62L}},{{0x7D849581409FF84DL,0x0300L,-2L,7L,-1L},{0x11CDFF82CE327E5AL,-10L,-3L,0x01008DDBD3AB86DCL,-1L},{0x11CDFF82CE327E5AL,-10L,-3L,0x01008DDBD3AB86DCL,-1L},{0x7D849581409FF84DL,0x0300L,-2L,7L,-1L},{0L,0x2DC3L,0x19709B9CL,1L,0x62L}},{{0x7D849581409FF84DL,0x0300L,-2L,7L,-1L},{0x11CDFF82CE327E5AL,-10L,-3L,0x01008DDBD3AB86DCL,-1L},{0x11CDFF82CE327E5AL,-10L,-3L,0x01008DDBD3AB86DCL,-1L},{0x7D849581409FF84DL,0x0300L,-2L,7L,-1L},{0L,0x2DC3L,0x19709B9CL,1L,0x62L}},{{0x7D849581409FF84DL,0x0300L,-2L,7L,-1L},{0x11CDFF82CE327E5AL,-10L,-3L,0x01008DDBD3AB86DCL,-1L},{0x11CDFF82CE327E5AL,-10L,-3L,0x01008DDBD3AB86DCL,-1L},{0x7D849581409FF84DL,0x0300L,-2L,7L,-1L},{0L,0x2DC3L,0x19709B9CL,1L,0x62L}},{{0x7D849581409FF84DL,0x0300L,-2L,7L,-1L},{0x11CDFF82CE327E5AL,-10L,-3L,0x01008DDBD3AB86DCL,-1L},{0x11CDFF82CE327E5AL,-10L,-3L,0x01008DDBD3AB86DCL,-1L},{0x7D849581409FF84DL,0x0300L,-2L,7L,-1L},{0L,0x2DC3L,0x19709B9CL,1L,0x62L}},{{0x7D849581409FF84DL,0x0300L,-2L,7L,-1L},{0x11CDFF82CE327E5AL,-10L,-3L,0x01008DDBD3AB86DCL,-1L},{0x11CDFF82CE327E5AL,-10L,-3L,0x01008DDBD3AB86DCL,-1L},{0x7D849581409FF84DL,0x0300L,-2L,7L,-1L},{0L,0x2DC3L,0x19709B9CL,1L,0x62L}},{{0x7D849581409FF84DL,0x0300L,-2L,7L,-1L},{0x11CDFF82CE327E5AL,-10L,-3L,0x01008DDBD3AB86DCL,-1L},{0x11CDFF82CE327E5AL,-10L,-3L,0x01008DDBD3AB86DCL,-1L},{0x7D849581409FF84DL,0x0300L,-2L,7L,-1L},{0L,0x2DC3L,0x19709B9CL,1L,0x62L}}};
                    int8_t l_77 = (-9L);
                    uint32_t l_78 = 4UL;
                    int8_t l_79[5];
                    int16_t l_80[1][5];
                    VECTOR(uint16_t, 2) l_81 = (VECTOR(uint16_t, 2))(0x020DL, 2UL);
                    VECTOR(uint32_t, 8) l_82 = (VECTOR(uint32_t, 8))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 0xAC14F028L), 0xAC14F028L), 0xAC14F028L, 1UL, 0xAC14F028L);
                    VECTOR(uint32_t, 16) l_83 = (VECTOR(uint32_t, 16))(4294967288UL, (VECTOR(uint32_t, 4))(4294967288UL, (VECTOR(uint32_t, 2))(4294967288UL, 0x012672E0L), 0x012672E0L), 0x012672E0L, 4294967288UL, 0x012672E0L, (VECTOR(uint32_t, 2))(4294967288UL, 0x012672E0L), (VECTOR(uint32_t, 2))(4294967288UL, 0x012672E0L), 4294967288UL, 0x012672E0L, 4294967288UL, 0x012672E0L);
                    VECTOR(uint32_t, 4) l_84 = (VECTOR(uint32_t, 4))(0x216C94C7L, (VECTOR(uint32_t, 2))(0x216C94C7L, 0xCDFD70EAL), 0xCDFD70EAL);
                    VECTOR(uint32_t, 2) l_85 = (VECTOR(uint32_t, 2))(0xCCF639D2L, 5UL);
                    VECTOR(uint32_t, 4) l_86 = (VECTOR(uint32_t, 4))(0x778F2E37L, (VECTOR(uint32_t, 2))(0x778F2E37L, 0UL), 0UL);
                    VECTOR(uint32_t, 16) l_87 = (VECTOR(uint32_t, 16))(0xB4123FC9L, (VECTOR(uint32_t, 4))(0xB4123FC9L, (VECTOR(uint32_t, 2))(0xB4123FC9L, 0UL), 0UL), 0UL, 0xB4123FC9L, 0UL, (VECTOR(uint32_t, 2))(0xB4123FC9L, 0UL), (VECTOR(uint32_t, 2))(0xB4123FC9L, 0UL), 0xB4123FC9L, 0UL, 0xB4123FC9L, 0UL);
                    VECTOR(uint32_t, 2) l_88 = (VECTOR(uint32_t, 2))(4294967295UL, 0x2525884CL);
                    VECTOR(int32_t, 16) l_89 = (VECTOR(int32_t, 16))(0x26EC7818L, (VECTOR(int32_t, 4))(0x26EC7818L, (VECTOR(int32_t, 2))(0x26EC7818L, 0x6103A3FBL), 0x6103A3FBL), 0x6103A3FBL, 0x26EC7818L, 0x6103A3FBL, (VECTOR(int32_t, 2))(0x26EC7818L, 0x6103A3FBL), (VECTOR(int32_t, 2))(0x26EC7818L, 0x6103A3FBL), 0x26EC7818L, 0x6103A3FBL, 0x26EC7818L, 0x6103A3FBL);
                    int32_t l_90 = 0x16BE27C5L;
                    int16_t l_91 = 0x30C6L;
                    int32_t *l_92 = (void*)0;
                    int i, j;
                    for (i = 0; i < 5; i++)
                        l_79[i] = 0x42L;
                    for (i = 0; i < 1; i++)
                    {
                        for (j = 0; j < 5; j++)
                            l_80[i][j] = (-1L);
                    }
                    l_91 ^= (l_10 ^= (l_76[0][3] , (l_89.sd = (((VECTOR(uint16_t, 16))(65528UL, (l_78 = (l_77 ^= 0x0140L)), 0UL, 0UL, 65535UL, 0x8100L, 0UL, 6UL, l_79[1], l_80[0][2], 0x8656L, FAKE_DIVERGE(p_1544->local_1_offset, get_local_id(1), 10), ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(l_81.yx)).yxyx)))).s7 , ((((VECTOR(uint64_t, 2))(hadd(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 4))(0x1F4C7C6743E1014FL, 5UL, 1UL, 0x0F6B2B4994AC5463L)).zxyxzyxzxxzzyyxz)).s36, ((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 2))(3UL, 0x6FE3569C19102758L))))))))).lo , ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 8))(min(((VECTOR(uint32_t, 8))(safe_mad24_func_uint32_t_u_u_u(VECTOR(uint32_t, 8),((VECTOR(uint32_t, 4))(mad_hi(((VECTOR(uint32_t, 2))(l_82.s67)).yyxx, ((VECTOR(uint32_t, 4))(l_83.s3b34)), ((VECTOR(uint32_t, 4))(l_84.ywxz))))).yxwzxxyy, ((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))(mad_hi(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 8))(l_85.xxyyyxyy)).lo)).xyyyxwzw, ((VECTOR(uint32_t, 4))(l_86.wxwy)).zwwyyyzw, ((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))(rhadd(((VECTOR(uint32_t, 2))(l_87.s32)), ((VECTOR(uint32_t, 8))(l_88.xxyyyxyy)).s76))).yyyxxyxyyyxxyyyx)).odd))).s6754242240213140)).even, ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 16))(abs(((VECTOR(int32_t, 2))(l_89.s9e)).xxyyyyxyyyyyxxxx))).sd98c)).xwxywzzw))), ((VECTOR(uint32_t, 2))(5UL, 4294967289UL)).xyxyxyyx))).hi)))), 0xC0336B4EL, 0x86B51200L, 0xDFD0D3D2L, 2UL)).s4) , l_90)))));
                    l_10 &= 1L;
                    l_92 = l_92;
                }
            }
            unsigned int result = 0;
            int l_4_i0;
            for (l_4_i0 = 0; l_4_i0 < 5; l_4_i0++) {
                result += l_4[l_4_i0];
            }
            result += l_7;
            result += l_8;
            int l_9_i0, l_9_i1, l_9_i2;
            for (l_9_i0 = 0; l_9_i0 < 10; l_9_i0++) {
                for (l_9_i1 = 0; l_9_i1 < 8; l_9_i1++) {
                    for (l_9_i2 = 0; l_9_i2 < 3; l_9_i2++) {
                        result += l_9[l_9_i0][l_9_i1][l_9_i2];
                    }
                }
            }
            result += l_10;
            result += l_11;
            int l_12_i0, l_12_i1;
            for (l_12_i0 = 0; l_12_i0 < 1; l_12_i0++) {
                for (l_12_i1 = 0; l_12_i1 < 2; l_12_i1++) {
                    result += l_12[l_12_i0][l_12_i1];
                }
            }
            int l_13_i0, l_13_i1;
            for (l_13_i0 = 0; l_13_i0 < 6; l_13_i0++) {
                for (l_13_i1 = 0; l_13_i1 < 3; l_13_i1++) {
                    result += l_13[l_13_i0][l_13_i1].f0;
                    result += l_13[l_13_i0][l_13_i1].f1;
                    result += l_13[l_13_i0][l_13_i1].f2;
                    result += l_13[l_13_i0][l_13_i1].f3;
                    result += l_13[l_13_i0][l_13_i1].f4;
                }
            }
            result += l_14;
            atomic_add(&p_1544->g_special_values[93 * get_linear_group_id() + 11], result);
        }
        else
        { /* block id: 61 */
            (1 + 1);
        }
        p_1544->g_1034.sf &= func_93(func_97(func_99(((safe_rshift_func_int8_t_s_s(p_1544->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1544->tid, 2))], l_104)) , (((safe_sub_func_uint32_t_u_u(1UL, ((((((((*l_705) |= (func_107(((p_1544->g_697[8] &= ((func_111(p_1544->g_116, ((*p_1544->g_116) = func_119((safe_sub_func_uint32_t_u_u(((((((*l_452) = func_125(&p_1544->g_117, (safe_mul_func_int16_t_s_s(0x5B49L, (safe_add_func_uint32_t_u_u(p_1544->g_118[5][1][1], p_1544->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1544->tid, 2))])))), (safe_mul_func_uint8_t_u_u(((((((((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(0x70757414L, 0x304A777EL)).yyyxyyyy)).s7 , (-9L)) || GROUP_DIVERGE(1, 1)) , (void*)0) != l_137) ^ 0xD064CE6463C702A6L) > p_1544->g_2.x), FAKE_DIVERGE(p_1544->group_0_offset, get_group_id(0), 10))), p_1544->g_comm_values[p_1544->tid], p_1544->g_118[4][2][1], p_1544)) != &p_1544->g_247) < l_3.sb) != 0x20L) <= 1UL), l_454)), l_455, l_456[3][1], p_1544)), p_1544->g_116, l_104, p_1544) >= l_688[9]) | p_1544->g_365.f1)) , (*p_1544->g_116)), p_1544->g_445.s5, l_698, p_1544) || (**p_1544->g_116))) <= 65535UL) && (*l_137)) > 1L) == p_1544->g_650.x) , (void*)0) != l_707))) , GROUP_DIVERGE(2, 1)) == p_1544->g_209.f0)), p_1544->g_209.f0, p_1544), p_1544), p_1544->g_116, (*l_707), p_1544);
        (*p_1544->g_247) = (safe_rshift_func_int8_t_s_s((((VECTOR(uint64_t, 4))(l_1075.s2c1c)).y , (safe_sub_func_uint8_t_u_u((((*p_1544->g_170) ^ ((*l_1115) = ((*l_1114) = ((((VECTOR(int32_t, 16))(0x6852CE10L, ((((*l_137) = (((*l_705) = (0x9B4DD0AA43397616L != ((*l_1112) = (((safe_div_func_uint32_t_u_u(p_1544->g_605.s9, (safe_add_func_uint64_t_u_u((++p_1544->g_383.y), ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 4))(sub_sat(((VECTOR(uint64_t, 4))(0x96B198BB7284BC93L, 0x3363BE6884837880L, 18446744073709551611UL, 0x3A480D39EE09F6A8L)), ((VECTOR(uint64_t, 16))(abs_diff(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))(l_1086.s75622247)).s4073746512775304)), ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(mad_hi(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(0xFD49DBB6B5E40A12L, ((VECTOR(uint64_t, 2))(mad_hi(((VECTOR(uint64_t, 16))(0UL, 0xDA85C49338FE7210L, ((VECTOR(uint64_t, 4))(l_1087.s4217)), 0xD7B41CEC713BBCD0L, 2UL, 0x4BBA769E850CC3DDL, ((VECTOR(uint64_t, 2))(18446744073709551615UL, 0UL)), ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(p_1544->g_1088.yy)), 1UL, 0x8CCB6A9B1D371980L)), 1UL)).s8f, ((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 8))(l_1089.s3707384b)).s10)), ((VECTOR(uint64_t, 16))(rotate(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(l_1090.yy)), 1UL, ((VECTOR(uint64_t, 8))(p_1544->g_1091.yyyxyyxy)), ((VECTOR(uint64_t, 2))(0x435F0D31FEC9BED8L, 0x728E05FA67234C98L)), ((VECTOR(uint64_t, 2))(0x87EE0530F922FDC5L, 0UL)), 0x66D1640C6623499FL)), ((VECTOR(uint64_t, 2))(l_1092.sca)).yxyxxxyxyxxyxxxx))).s13))), 0x123D9E2C2361E3AEL)).ywzwxwzw)).s16, ((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 4))(l_1093.s3416)).hi)), ((VECTOR(uint64_t, 8))(min(((VECTOR(uint64_t, 4))(18446744073709551614UL, ((VECTOR(uint64_t, 8))(l_1094.s7d72dc48)).s1, 0xA88B660FDABD266CL, 0x852C675E27BDD76AL)).yyzwzyxx, (uint64_t)((safe_rshift_func_int8_t_s_s((((safe_div_func_uint8_t_u_u(((***p_1544->g_640) = (safe_div_func_uint32_t_u_u(((((VECTOR(uint8_t, 16))(l_1101.xxyxxxxyyxxyyyxx)).s9 & (((((VECTOR(uint32_t, 16))(p_1544->g_1102.s5527437032635441)).s6 & (((&p_1544->g_641 == (((safe_lshift_func_int16_t_s_s(((l_1105 , (*p_1544->g_640)) != (l_1107[6] = l_1106)), 1)) | (p_1544->g_650.y != FAKE_DIVERGE(p_1544->local_0_offset, get_local_id(0), 10))) , &p_1544->g_641)) ^ 0x00215847907722C0L) >= p_1544->g_165)) < 0x740DB022L) <= p_1544->g_744.sa)) , 4294967295UL), (*l_137)))), (*l_137))) ^ l_1108) == l_1109), l_1110)) < l_1111)))).s03))).xxyxxxxxxxyxyxxy))))).s2318))))).wzxzywxx)).s4)))) , (**p_1544->g_641)) | (-1L))))) | 0UL)) ^ p_1544->g_399.w) > l_1113), p_1544->g_171[2], (-1L), ((VECTOR(int32_t, 4))(0x408F0E0BL)), (-1L), ((VECTOR(int32_t, 2))((-1L))), ((VECTOR(int32_t, 4))(0L)), 8L)).sa != FAKE_DIVERGE(p_1544->local_1_offset, get_local_id(1), 10)) >= 0L)))) & p_1544->g_605.s4), (-6L)))), 5));
    }
    else
    { /* block id: 519 */
        int64_t l_1116 = 0x4DFC09F4CDB81BDEL;
        uint8_t l_1135 = 248UL;
        uint8_t **l_1291 = &p_1544->g_642[0][1];
        int32_t l_1301 = 0L;
        (*p_1544->g_117) |= l_1116;
        (**p_1544->g_116) = (*p_1544->g_117);
        for (p_1544->g_209.f1 = (-23); (p_1544->g_209.f1 < (-12)); p_1544->g_209.f1++)
        { /* block id: 524 */
            uint64_t l_1123 = 1UL;
            int8_t *l_1131 = (void*)0;
            int8_t *l_1132 = (void*)0;
            int32_t l_1133[9][10][2] = {{{(-9L),0x018192A8L},{(-9L),0x018192A8L},{(-9L),0x018192A8L},{(-9L),0x018192A8L},{(-9L),0x018192A8L},{(-9L),0x018192A8L},{(-9L),0x018192A8L},{(-9L),0x018192A8L},{(-9L),0x018192A8L},{(-9L),0x018192A8L}},{{(-9L),0x018192A8L},{(-9L),0x018192A8L},{(-9L),0x018192A8L},{(-9L),0x018192A8L},{(-9L),0x018192A8L},{(-9L),0x018192A8L},{(-9L),0x018192A8L},{(-9L),0x018192A8L},{(-9L),0x018192A8L},{(-9L),0x018192A8L}},{{(-9L),0x018192A8L},{(-9L),0x018192A8L},{(-9L),0x018192A8L},{(-9L),0x018192A8L},{(-9L),0x018192A8L},{(-9L),0x018192A8L},{(-9L),0x018192A8L},{(-9L),0x018192A8L},{(-9L),0x018192A8L},{(-9L),0x018192A8L}},{{(-9L),0x018192A8L},{(-9L),0x018192A8L},{(-9L),0x018192A8L},{(-9L),0x018192A8L},{(-9L),0x018192A8L},{(-9L),0x018192A8L},{(-9L),0x018192A8L},{(-9L),0x018192A8L},{(-9L),0x018192A8L},{(-9L),0x018192A8L}},{{(-9L),0x018192A8L},{(-9L),0x018192A8L},{(-9L),0x018192A8L},{(-9L),0x018192A8L},{(-9L),0x018192A8L},{(-9L),0x018192A8L},{(-9L),0x018192A8L},{(-9L),0x018192A8L},{(-9L),0x018192A8L},{(-9L),0x018192A8L}},{{(-9L),0x018192A8L},{(-9L),0x018192A8L},{(-9L),0x018192A8L},{(-9L),0x018192A8L},{(-9L),0x018192A8L},{(-9L),0x018192A8L},{(-9L),0x018192A8L},{(-9L),0x018192A8L},{(-9L),0x018192A8L},{(-9L),0x018192A8L}},{{(-9L),0x018192A8L},{(-9L),0x018192A8L},{(-9L),0x018192A8L},{(-9L),0x018192A8L},{(-9L),0x018192A8L},{(-9L),0x018192A8L},{(-9L),0x018192A8L},{(-9L),0x018192A8L},{(-9L),0x018192A8L},{(-9L),0x018192A8L}},{{(-9L),0x018192A8L},{(-9L),0x018192A8L},{(-9L),0x018192A8L},{(-9L),0x018192A8L},{(-9L),0x018192A8L},{(-9L),0x018192A8L},{(-9L),0x018192A8L},{(-9L),0x018192A8L},{(-9L),0x018192A8L},{(-9L),0x018192A8L}},{{(-9L),0x018192A8L},{(-9L),0x018192A8L},{(-9L),0x018192A8L},{(-9L),0x018192A8L},{(-9L),0x018192A8L},{(-9L),0x018192A8L},{(-9L),0x018192A8L},{(-9L),0x018192A8L},{(-9L),0x018192A8L},{(-9L),0x018192A8L}}};
            int32_t l_1136 = 0x75CFC930L;
            int32_t l_1137[3][4] = {{1L,0L,1L,1L},{1L,0L,1L,1L},{1L,0L,1L,1L}};
            uint64_t l_1285 = 0UL;
            int i, j, k;
            p_1544->g_171[5] &= ((safe_div_func_uint64_t_u_u(l_1116, (safe_mul_func_int8_t_s_s((~l_1123), ((l_1116 || ((**p_1544->g_966) , ((VECTOR(uint64_t, 16))(mul_hi(((VECTOR(uint64_t, 2))(p_1544->g_1124.zx)).xxyyxxxyyxyxyxxy, ((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 2))(18446744073709551615UL, 1UL)))).yxxyyyyxxxyxyyxx))).s3)) <= ((p_1544->g_268.s5 &= (**p_1544->g_116)) <= ((safe_mod_func_int16_t_s_s((p_1544->g_318.s1 = ((safe_rshift_func_int8_t_s_s((l_1137[1][1] = (l_1136 ^= (safe_sub_func_int8_t_s_s(((VECTOR(int8_t, 8))((l_1116 > (**p_1544->g_116)), (l_1133[0][0][0] = l_1123), ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 16))(clz(((VECTOR(int8_t, 16))(hadd(((VECTOR(int8_t, 16))(l_1133[0][0][0], l_1116, 0x14L, l_1134, 0x69L, l_1133[0][4][0], l_1135, ((VECTOR(int8_t, 4))(0x2BL)), l_1135, 0x03L, (-4L), 1L, 0x55L)), ((VECTOR(int8_t, 16))(0x01L)))))))).s29)))), (-3L), (-6L), 0x76L, (-1L))).s7, l_1123)))), l_1123)) == p_1544->g_649.s3)), (*p_1544->g_277))) | l_1123))))))) != p_1544->g_383.y);
            if ((atomic_inc(&p_1544->g_atomic_input[93 * get_linear_group_id() + 7]) == 0))
            { /* block id: 532 */
                VECTOR(int32_t, 16) l_1138 = (VECTOR(int32_t, 16))(0x37B5C1C3L, (VECTOR(int32_t, 4))(0x37B5C1C3L, (VECTOR(int32_t, 2))(0x37B5C1C3L, (-8L)), (-8L)), (-8L), 0x37B5C1C3L, (-8L), (VECTOR(int32_t, 2))(0x37B5C1C3L, (-8L)), (VECTOR(int32_t, 2))(0x37B5C1C3L, (-8L)), 0x37B5C1C3L, (-8L), 0x37B5C1C3L, (-8L));
                uint32_t l_1257 = 0UL;
                int8_t l_1260 = 0x25L;
                uint32_t l_1261 = 1UL;
                int32_t l_1264[6] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
                uint64_t l_1265 = 0x0CB818835A16AFB1L;
                uint16_t l_1266 = 0x0C87L;
                uint16_t l_1267 = 1UL;
                int32_t *l_1268 = &l_1264[3];
                int32_t *l_1269 = (void*)0;
                int i;
                if (((VECTOR(int32_t, 8))(l_1138.s355acc25)).s3)
                { /* block id: 533 */
                    uint32_t l_1139 = 4294967295UL;
                    uint16_t l_1140[1];
                    VECTOR(uint32_t, 16) l_1143 = (VECTOR(uint32_t, 16))(3UL, (VECTOR(uint32_t, 4))(3UL, (VECTOR(uint32_t, 2))(3UL, 1UL), 1UL), 1UL, 3UL, 1UL, (VECTOR(uint32_t, 2))(3UL, 1UL), (VECTOR(uint32_t, 2))(3UL, 1UL), 3UL, 1UL, 3UL, 1UL);
                    int32_t l_1144 = 1L;
                    int32_t l_1145[10][3][1] = {{{0x2A897985L},{0x2A897985L},{0x2A897985L}},{{0x2A897985L},{0x2A897985L},{0x2A897985L}},{{0x2A897985L},{0x2A897985L},{0x2A897985L}},{{0x2A897985L},{0x2A897985L},{0x2A897985L}},{{0x2A897985L},{0x2A897985L},{0x2A897985L}},{{0x2A897985L},{0x2A897985L},{0x2A897985L}},{{0x2A897985L},{0x2A897985L},{0x2A897985L}},{{0x2A897985L},{0x2A897985L},{0x2A897985L}},{{0x2A897985L},{0x2A897985L},{0x2A897985L}},{{0x2A897985L},{0x2A897985L},{0x2A897985L}}};
                    int32_t l_1146 = 0x3479AEE5L;
                    int32_t *l_1192[2][1];
                    int32_t *l_1193 = (void*)0;
                    int64_t l_1198 = 0L;
                    int i, j, k;
                    for (i = 0; i < 1; i++)
                        l_1140[i] = 0x2B33L;
                    for (i = 0; i < 2; i++)
                    {
                        for (j = 0; j < 1; j++)
                            l_1192[i][j] = &l_1146;
                    }
                    if (((l_1144 = (FAKE_DIVERGE(p_1544->group_0_offset, get_group_id(0), 10) , ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 16))((l_1140[0] |= l_1139), 4294967295UL, 0xFEA6DD0AL, (--l_1139), 4294967295UL, 0UL, 0UL, 4294967295UL, ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 16))(l_1143.s0695fe93cfd3147f)).s5e7a)), 0xDD23A14AL, 0x64FD198EL, 4294967292UL, 0x2BFB449FL)).scd)).xxyx)).odd)).hi)) , (l_1138.se = (l_1145[9][2][0] , l_1146))))
                    { /* block id: 538 */
                        int32_t l_1148 = 0x51D4CE84L;
                        int32_t *l_1147 = &l_1148;
                        int16_t l_1149 = 0x6D70L;
                        uint64_t l_1150 = 18446744073709551607UL;
                        int32_t *l_1153 = &l_1148;
                        l_1147 = l_1147;
                        ++l_1150;
                        l_1153 = (void*)0;
                    }
                    else
                    { /* block id: 542 */
                        int32_t l_1154[2];
                        int16_t l_1155 = 0L;
                        int16_t l_1156 = (-5L);
                        int16_t l_1157 = (-9L);
                        int16_t l_1158 = 0x05C5L;
                        uint8_t l_1159 = 1UL;
                        struct S0 l_1162 = {0x01C8L,0x1EE642C57E6A4E09L,65535UL,0x11204057L};/* VOLATILE GLOBAL l_1162 */
                        int32_t l_1163 = 0L;
                        struct S3 l_1164 = {0x9E23C353L,3UL,1UL,9UL};/* VOLATILE GLOBAL l_1164 */
                        VECTOR(uint32_t, 8) l_1165 = (VECTOR(uint32_t, 8))(4294967294UL, (VECTOR(uint32_t, 4))(4294967294UL, (VECTOR(uint32_t, 2))(4294967294UL, 0x7E841B0BL), 0x7E841B0BL), 0x7E841B0BL, 4294967294UL, 0x7E841B0BL);
                        VECTOR(uint32_t, 8) l_1166 = (VECTOR(uint32_t, 8))(4294967286UL, (VECTOR(uint32_t, 4))(4294967286UL, (VECTOR(uint32_t, 2))(4294967286UL, 4294967295UL), 4294967295UL), 4294967295UL, 4294967286UL, 4294967295UL);
                        VECTOR(uint32_t, 2) l_1167 = (VECTOR(uint32_t, 2))(0x238DC273L, 0x40C0CF3BL);
                        VECTOR(uint32_t, 8) l_1168 = (VECTOR(uint32_t, 8))(0xF526EBC9L, (VECTOR(uint32_t, 4))(0xF526EBC9L, (VECTOR(uint32_t, 2))(0xF526EBC9L, 7UL), 7UL), 7UL, 0xF526EBC9L, 7UL);
                        struct S1 l_1169 = {6L,8L,0x0A8B46B9L,0x64B90011E8A259F5L,-10L};/* VOLATILE GLOBAL l_1169 */
                        struct S1 l_1170 = {0x5953057021D1AF89L,0x1979L,0x42FB30DCL,-1L,0x78L};/* VOLATILE GLOBAL l_1170 */
                        uint32_t l_1171 = 4294967288UL;
                        int64_t l_1172 = 0x5C8E428F6E87F940L;
                        int32_t l_1173[8][2][3] = {{{(-1L),0x306AB8CCL,0x4E12A3F2L},{(-1L),0x306AB8CCL,0x4E12A3F2L}},{{(-1L),0x306AB8CCL,0x4E12A3F2L},{(-1L),0x306AB8CCL,0x4E12A3F2L}},{{(-1L),0x306AB8CCL,0x4E12A3F2L},{(-1L),0x306AB8CCL,0x4E12A3F2L}},{{(-1L),0x306AB8CCL,0x4E12A3F2L},{(-1L),0x306AB8CCL,0x4E12A3F2L}},{{(-1L),0x306AB8CCL,0x4E12A3F2L},{(-1L),0x306AB8CCL,0x4E12A3F2L}},{{(-1L),0x306AB8CCL,0x4E12A3F2L},{(-1L),0x306AB8CCL,0x4E12A3F2L}},{{(-1L),0x306AB8CCL,0x4E12A3F2L},{(-1L),0x306AB8CCL,0x4E12A3F2L}},{{(-1L),0x306AB8CCL,0x4E12A3F2L},{(-1L),0x306AB8CCL,0x4E12A3F2L}}};
                        VECTOR(int16_t, 8) l_1174 = (VECTOR(int16_t, 8))((-4L), (VECTOR(int16_t, 4))((-4L), (VECTOR(int16_t, 2))((-4L), 0x6777L), 0x6777L), 0x6777L, (-4L), 0x6777L);
                        int32_t l_1175[8];
                        int32_t l_1176 = 1L;
                        VECTOR(uint16_t, 16) l_1177 = (VECTOR(uint16_t, 16))(65533UL, (VECTOR(uint16_t, 4))(65533UL, (VECTOR(uint16_t, 2))(65533UL, 0x8002L), 0x8002L), 0x8002L, 65533UL, 0x8002L, (VECTOR(uint16_t, 2))(65533UL, 0x8002L), (VECTOR(uint16_t, 2))(65533UL, 0x8002L), 65533UL, 0x8002L, 65533UL, 0x8002L);
                        VECTOR(uint16_t, 4) l_1178 = (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0x6CA0L), 0x6CA0L);
                        int32_t l_1181 = 0x326A6D9AL;
                        VECTOR(uint16_t, 16) l_1182 = (VECTOR(uint16_t, 16))(0x2F3CL, (VECTOR(uint16_t, 4))(0x2F3CL, (VECTOR(uint16_t, 2))(0x2F3CL, 0x4964L), 0x4964L), 0x4964L, 0x2F3CL, 0x4964L, (VECTOR(uint16_t, 2))(0x2F3CL, 0x4964L), (VECTOR(uint16_t, 2))(0x2F3CL, 0x4964L), 0x2F3CL, 0x4964L, 0x2F3CL, 0x4964L);
                        struct S1 l_1183[10] = {{0L,0x3268L,0x4F76F778L,0x2FD7BFE813FD11BCL,-2L},{-10L,-1L,0x34D5667BL,0x78FA1CF1FE30D030L,3L},{0L,0x3268L,0x4F76F778L,0x2FD7BFE813FD11BCL,-2L},{0L,0x3268L,0x4F76F778L,0x2FD7BFE813FD11BCL,-2L},{-10L,-1L,0x34D5667BL,0x78FA1CF1FE30D030L,3L},{0L,0x3268L,0x4F76F778L,0x2FD7BFE813FD11BCL,-2L},{0L,0x3268L,0x4F76F778L,0x2FD7BFE813FD11BCL,-2L},{-10L,-1L,0x34D5667BL,0x78FA1CF1FE30D030L,3L},{0L,0x3268L,0x4F76F778L,0x2FD7BFE813FD11BCL,-2L},{0L,0x3268L,0x4F76F778L,0x2FD7BFE813FD11BCL,-2L}};
                        uint32_t l_1184 = 0UL;
                        int32_t l_1185 = (-3L);
                        int32_t l_1186 = 0x54087B12L;
                        struct S1 l_1187 = {-1L,0x6D4CL,0x37DEA093L,-9L,0x43L};/* VOLATILE GLOBAL l_1187 */
                        int16_t l_1188 = 4L;
                        uint16_t l_1189 = 0xCD2DL;
                        struct S3 l_1190 = {4294967295UL,250UL,1UL,0x2F6E8CF5L};/* VOLATILE GLOBAL l_1190 */
                        struct S3 l_1191[3] = {{0UL,0x7AL,0x82C399196EDDBF28L,4294967295UL},{0UL,0x7AL,0x82C399196EDDBF28L,4294967295UL},{0UL,0x7AL,0x82C399196EDDBF28L,4294967295UL}};
                        int i, j, k;
                        for (i = 0; i < 2; i++)
                            l_1154[i] = 1L;
                        for (i = 0; i < 8; i++)
                            l_1175[i] = 3L;
                        --l_1159;
                        l_1170 = ((l_1162 , l_1163) , (l_1164 , (((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 16))(mad_sat(((VECTOR(uint32_t, 8))(add_sat(((VECTOR(uint32_t, 2))(l_1165.s61)).xxyyxyxx, ((VECTOR(uint32_t, 4))(l_1166.s3526)).zxwzywxz))).s1141616245301142, ((VECTOR(uint32_t, 16))(abs(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(0UL, 4294967289UL)), 0UL, 0x6D0F831EL)), ((VECTOR(uint32_t, 4))(l_1167.xxyy)))).even)).yywyzwywzzxyzwxy))), ((VECTOR(uint32_t, 2))(l_1168.s76)).xxyyxxxyyyyyyyxy))))).lo)).s15)).even , l_1169)));
                        l_1173[4][0][0] = ((l_1172 = l_1171) , 7L);
                        l_1191[0] = (((VECTOR(int32_t, 2))(add_sat(((VECTOR(int32_t, 2))(1L, 0x3E9CEEA7L)), ((VECTOR(int32_t, 16))(sub_sat(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))((-1L), 7L)))))).xxxxyyyy)).s3127243027353062, ((VECTOR(int32_t, 8))(clz(((VECTOR(int32_t, 8))(upsample(((VECTOR(int16_t, 8))(l_1174.s75522227)), ((VECTOR(uint16_t, 16))(0xD876L, l_1175[7], ((VECTOR(uint16_t, 8))(mad_hi(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 8))(mul_hi(((VECTOR(uint16_t, 8))(l_1176, 0x1CECL, 0xA003L, ((VECTOR(uint16_t, 16))(sub_sat(((VECTOR(uint16_t, 8))(rhadd(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(add_sat(((VECTOR(uint16_t, 4))(l_1177.s6, ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 2))(safe_clamp_func(VECTOR(uint16_t, 2),uint16_t,((VECTOR(uint16_t, 2))(l_1178.yx)), (uint16_t)(l_1140[0]--), (uint16_t)0x405CL))))))), 0xAEF0L)).hi, ((VECTOR(uint16_t, 16))(mad_hi(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 16))(mul_hi(((VECTOR(uint16_t, 16))(l_1181, 0x97DDL, ((VECTOR(uint16_t, 8))(l_1182.saf01bf54)), (((l_1183[7] , (((VECTOR(uint64_t, 4))((l_1185 = l_1184), 18446744073709551615UL, 18446744073709551615UL, 1UL)).w , l_1186)) , l_1187) , 65535UL), l_1188, 0x8E3EL, 0xC988L, 0xE440L, 0x5E50L)), ((VECTOR(uint16_t, 16))(0x520CL))))))), ((VECTOR(uint16_t, 16))(9UL)), ((VECTOR(uint16_t, 16))(0xFF5EL))))).s39))).xyyy)).yxwzyzwx, ((VECTOR(uint16_t, 8))(1UL))))).s6637321524060070, ((VECTOR(uint16_t, 16))(0x6639L))))).sb, 65533UL, 0xB00DL, 1UL, 0xE3D7L)), ((VECTOR(uint16_t, 8))(65535UL))))).even)).wywxyyyy, ((VECTOR(uint16_t, 8))(65527UL)), ((VECTOR(uint16_t, 8))(0x6822L))))), l_1189, 0x5EC1L, 0xE379L, ((VECTOR(uint16_t, 2))(0xA7CEL)), 4UL)).odd)))))).s2651610331056241))).se5))).even , l_1190);
                    }
                    l_1193 = l_1192[0][0];
                    for (l_1140[0] = 0; (l_1140[0] >= 18); l_1140[0] = safe_add_func_int32_t_s_s(l_1140[0], 3))
                    { /* block id: 554 */
                        uint64_t l_1196[8] = {8UL,8UL,8UL,8UL,8UL,8UL,8UL,8UL};
                        int32_t l_1197 = 0x312136D3L;
                        int i;
                        (*l_1193) = (l_1197 &= l_1196[1]);
                    }
                    if (l_1198)
                    { /* block id: 558 */
                        VECTOR(int64_t, 2) l_1199 = (VECTOR(int64_t, 2))((-1L), 0x6B714C54F6DFB550L);
                        VECTOR(uint8_t, 4) l_1200 = (VECTOR(uint8_t, 4))(5UL, (VECTOR(uint8_t, 2))(5UL, 8UL), 8UL);
                        VECTOR(uint64_t, 16) l_1203 = (VECTOR(uint64_t, 16))(0UL, (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 0xF72283162A6BA13AL), 0xF72283162A6BA13AL), 0xF72283162A6BA13AL, 0UL, 0xF72283162A6BA13AL, (VECTOR(uint64_t, 2))(0UL, 0xF72283162A6BA13AL), (VECTOR(uint64_t, 2))(0UL, 0xF72283162A6BA13AL), 0UL, 0xF72283162A6BA13AL, 0UL, 0xF72283162A6BA13AL);
                        uint32_t l_1206 = 0x44C73BC3L;
                        int i;
                        ++l_1200.y;
                        --l_1203.se;
                        l_1206++;
                    }
                    else
                    { /* block id: 562 */
                        struct S1 l_1209 = {-3L,1L,-8L,0L,0x74L};/* VOLATILE GLOBAL l_1209 */
                        struct S1 l_1210 = {1L,0x10E3L,0x02A7BD4AL,0x3C465863C38D16DAL,3L};/* VOLATILE GLOBAL l_1210 */
                        l_1210 = l_1209;
                    }
                }
                else
                { /* block id: 565 */
                    int32_t l_1212 = (-6L);
                    int32_t *l_1211 = &l_1212;
                    int32_t *l_1213 = &l_1212;
                    int32_t *l_1214 = &l_1212;
                    int32_t *l_1215 = &l_1212;
                    int32_t *l_1216[6][4] = {{&l_1212,(void*)0,&l_1212,&l_1212},{&l_1212,(void*)0,&l_1212,&l_1212},{&l_1212,(void*)0,&l_1212,&l_1212},{&l_1212,(void*)0,&l_1212,&l_1212},{&l_1212,(void*)0,&l_1212,&l_1212},{&l_1212,(void*)0,&l_1212,&l_1212}};
                    uint32_t l_1217[10] = {0x0182F99FL,4294967294UL,4294967295UL,4294967294UL,0x0182F99FL,0x0182F99FL,4294967294UL,4294967295UL,4294967294UL,0x0182F99FL};
                    uint32_t l_1218 = 4294967295UL;
                    VECTOR(int64_t, 4) l_1219 = (VECTOR(int64_t, 4))((-8L), (VECTOR(int64_t, 2))((-8L), 0x64729276C11C9461L), 0x64729276C11C9461L);
                    VECTOR(int32_t, 4) l_1220 = (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 5L), 5L);
                    VECTOR(int32_t, 2) l_1221 = (VECTOR(int32_t, 2))(1L, 0L);
                    VECTOR(int32_t, 16) l_1222 = (VECTOR(int32_t, 16))(0x0430D859L, (VECTOR(int32_t, 4))(0x0430D859L, (VECTOR(int32_t, 2))(0x0430D859L, 0x21766C48L), 0x21766C48L), 0x21766C48L, 0x0430D859L, 0x21766C48L, (VECTOR(int32_t, 2))(0x0430D859L, 0x21766C48L), (VECTOR(int32_t, 2))(0x0430D859L, 0x21766C48L), 0x0430D859L, 0x21766C48L, 0x0430D859L, 0x21766C48L);
                    VECTOR(int32_t, 4) l_1223 = (VECTOR(int32_t, 4))((-5L), (VECTOR(int32_t, 2))((-5L), 0L), 0L);
                    VECTOR(int32_t, 16) l_1224 = (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x33122F0EL), 0x33122F0EL), 0x33122F0EL, 0L, 0x33122F0EL, (VECTOR(int32_t, 2))(0L, 0x33122F0EL), (VECTOR(int32_t, 2))(0L, 0x33122F0EL), 0L, 0x33122F0EL, 0L, 0x33122F0EL);
                    VECTOR(int32_t, 4) l_1225 = (VECTOR(int32_t, 4))(0x2756B5D2L, (VECTOR(int32_t, 2))(0x2756B5D2L, (-1L)), (-1L));
                    VECTOR(int32_t, 8) l_1226 = (VECTOR(int32_t, 8))(0x02EA76A9L, (VECTOR(int32_t, 4))(0x02EA76A9L, (VECTOR(int32_t, 2))(0x02EA76A9L, 1L), 1L), 1L, 0x02EA76A9L, 1L);
                    VECTOR(int32_t, 2) l_1227 = (VECTOR(int32_t, 2))(1L, 0x33F01DB0L);
                    VECTOR(int32_t, 2) l_1228 = (VECTOR(int32_t, 2))(0x60F71A2CL, 0x3E66A4F0L);
                    VECTOR(int32_t, 16) l_1229 = (VECTOR(int32_t, 16))(5L, (VECTOR(int32_t, 4))(5L, (VECTOR(int32_t, 2))(5L, 0x55041CE9L), 0x55041CE9L), 0x55041CE9L, 5L, 0x55041CE9L, (VECTOR(int32_t, 2))(5L, 0x55041CE9L), (VECTOR(int32_t, 2))(5L, 0x55041CE9L), 5L, 0x55041CE9L, 5L, 0x55041CE9L);
                    VECTOR(int32_t, 16) l_1230 = (VECTOR(int32_t, 16))((-8L), (VECTOR(int32_t, 4))((-8L), (VECTOR(int32_t, 2))((-8L), 0x7C8588FFL), 0x7C8588FFL), 0x7C8588FFL, (-8L), 0x7C8588FFL, (VECTOR(int32_t, 2))((-8L), 0x7C8588FFL), (VECTOR(int32_t, 2))((-8L), 0x7C8588FFL), (-8L), 0x7C8588FFL, (-8L), 0x7C8588FFL);
                    VECTOR(int32_t, 4) l_1231 = (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x28AF644BL), 0x28AF644BL);
                    VECTOR(int32_t, 16) l_1232 = (VECTOR(int32_t, 16))(0x04298386L, (VECTOR(int32_t, 4))(0x04298386L, (VECTOR(int32_t, 2))(0x04298386L, 0L), 0L), 0L, 0x04298386L, 0L, (VECTOR(int32_t, 2))(0x04298386L, 0L), (VECTOR(int32_t, 2))(0x04298386L, 0L), 0x04298386L, 0L, 0x04298386L, 0L);
                    uint64_t l_1233 = 0x368DD94D2CD154BBL;
                    int8_t l_1234[7][7][1] = {{{0x77L},{0x77L},{0x77L},{0x77L},{0x77L},{0x77L},{0x77L}},{{0x77L},{0x77L},{0x77L},{0x77L},{0x77L},{0x77L},{0x77L}},{{0x77L},{0x77L},{0x77L},{0x77L},{0x77L},{0x77L},{0x77L}},{{0x77L},{0x77L},{0x77L},{0x77L},{0x77L},{0x77L},{0x77L}},{{0x77L},{0x77L},{0x77L},{0x77L},{0x77L},{0x77L},{0x77L}},{{0x77L},{0x77L},{0x77L},{0x77L},{0x77L},{0x77L},{0x77L}},{{0x77L},{0x77L},{0x77L},{0x77L},{0x77L},{0x77L},{0x77L}}};
                    int8_t l_1235[3][6][4] = {{{0x6FL,(-5L),0x10L,(-7L)},{0x6FL,(-5L),0x10L,(-7L)},{0x6FL,(-5L),0x10L,(-7L)},{0x6FL,(-5L),0x10L,(-7L)},{0x6FL,(-5L),0x10L,(-7L)},{0x6FL,(-5L),0x10L,(-7L)}},{{0x6FL,(-5L),0x10L,(-7L)},{0x6FL,(-5L),0x10L,(-7L)},{0x6FL,(-5L),0x10L,(-7L)},{0x6FL,(-5L),0x10L,(-7L)},{0x6FL,(-5L),0x10L,(-7L)},{0x6FL,(-5L),0x10L,(-7L)}},{{0x6FL,(-5L),0x10L,(-7L)},{0x6FL,(-5L),0x10L,(-7L)},{0x6FL,(-5L),0x10L,(-7L)},{0x6FL,(-5L),0x10L,(-7L)},{0x6FL,(-5L),0x10L,(-7L)},{0x6FL,(-5L),0x10L,(-7L)}}};
                    int16_t l_1236 = 0x4BC8L;
                    int32_t l_1237 = (-1L);
                    VECTOR(int32_t, 8) l_1238 = (VECTOR(int32_t, 8))((-5L), (VECTOR(int32_t, 4))((-5L), (VECTOR(int32_t, 2))((-5L), 0L), 0L), 0L, (-5L), 0L);
                    int64_t l_1239 = 0x5C96D23A234AAD3EL;
                    VECTOR(int16_t, 8) l_1240 = (VECTOR(int16_t, 8))(0x0F75L, (VECTOR(int16_t, 4))(0x0F75L, (VECTOR(int16_t, 2))(0x0F75L, (-1L)), (-1L)), (-1L), 0x0F75L, (-1L));
                    VECTOR(int16_t, 4) l_1241 = (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 6L), 6L);
                    VECTOR(int16_t, 8) l_1242 = (VECTOR(int16_t, 8))(0x643CL, (VECTOR(int16_t, 4))(0x643CL, (VECTOR(int16_t, 2))(0x643CL, (-1L)), (-1L)), (-1L), 0x643CL, (-1L));
                    VECTOR(int16_t, 4) l_1243 = (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, (-1L)), (-1L));
                    VECTOR(int16_t, 2) l_1244 = (VECTOR(int16_t, 2))(0x602DL, 0x455FL);
                    VECTOR(int16_t, 4) l_1245 = (VECTOR(int16_t, 4))(6L, (VECTOR(int16_t, 2))(6L, 0x6A44L), 0x6A44L);
                    VECTOR(int16_t, 2) l_1246 = (VECTOR(int16_t, 2))(0x22E8L, 0L);
                    VECTOR(int16_t, 8) l_1247 = (VECTOR(int16_t, 8))(7L, (VECTOR(int16_t, 4))(7L, (VECTOR(int16_t, 2))(7L, 0x6668L), 0x6668L), 0x6668L, 7L, 0x6668L);
                    uint8_t l_1248[4];
                    uint32_t l_1249[7];
                    VECTOR(uint16_t, 16) l_1250 = (VECTOR(uint16_t, 16))(0xC5B4L, (VECTOR(uint16_t, 4))(0xC5B4L, (VECTOR(uint16_t, 2))(0xC5B4L, 0xB501L), 0xB501L), 0xB501L, 0xC5B4L, 0xB501L, (VECTOR(uint16_t, 2))(0xC5B4L, 0xB501L), (VECTOR(uint16_t, 2))(0xC5B4L, 0xB501L), 0xC5B4L, 0xB501L, 0xC5B4L, 0xB501L);
                    uint64_t l_1251 = 0x75A3343924463D10L;
                    int16_t l_1252 = 0x2E22L;
                    uint32_t l_1253 = 0x40DE0C41L;
                    int32_t l_1254 = 0x5A0059BEL;
                    uint16_t l_1255[1];
                    uint16_t l_1256[6] = {65535UL,65535UL,65535UL,65535UL,65535UL,65535UL};
                    int i, j, k;
                    for (i = 0; i < 4; i++)
                        l_1248[i] = 246UL;
                    for (i = 0; i < 7; i++)
                        l_1249[i] = 0x01A733CEL;
                    for (i = 0; i < 1; i++)
                        l_1255[i] = 2UL;
                    l_1213 = l_1211;
                    l_1216[0][1] = (l_1215 = l_1214);
                    l_1138.s4 &= l_1217[1];
                    l_1256[0] |= (l_1138.s8 = (((VECTOR(int64_t, 16))(l_1218, 5L, ((VECTOR(int64_t, 4))(add_sat(((VECTOR(int64_t, 2))(sub_sat(((VECTOR(int64_t, 2))(mul_hi(((VECTOR(int64_t, 4))(l_1219.xzww)).hi, ((VECTOR(int64_t, 8))(mad_sat(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 8))(mad_sat(((VECTOR(int64_t, 4))(upsample(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(min(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(0x0E6E8BD9L, 8L)).xxxy)))).wxxxyyyw)).s51, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(rotate(((VECTOR(int32_t, 2))(0x5892FD5BL, (-3L))).xyxx, ((VECTOR(int32_t, 16))(mul_hi(((VECTOR(int32_t, 2))(rotate(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(l_1220.zy)).even, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(rotate(((VECTOR(int32_t, 2))(l_1221.yy)).yxyy, ((VECTOR(int32_t, 4))(l_1222.s1151))))).odd)), ((VECTOR(int32_t, 8))(max(((VECTOR(int32_t, 16))(l_1223.ywyyzyyywyzxxzxx)).hi, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(0L, 1L)).xyyxyxyyxxyyyyxx)).lo))), ((VECTOR(int32_t, 2))(l_1224.s61)), ((VECTOR(int32_t, 2))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 16))(l_1225.xwyyzzwwyxwyyzyw)).sf5, ((VECTOR(int32_t, 16))(max(((VECTOR(int32_t, 16))(l_1226.s2450533576625253)), ((VECTOR(int32_t, 4))(l_1227.yxxx)).xzzzyxyyxwwzyxzw))).s61, ((VECTOR(int32_t, 2))(l_1228.xx))))), 0L)).s86, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))((-4L), 0x1E5B092EL)).yxxyxxyy)).s34))).xxxyxyyyxyyxyyyy, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(l_1229.s69394f65)).s14)).xyxyyxxyxyyxyxyx))).sfdc2))).yyyzzwxx)).s06))))), ((VECTOR(int32_t, 4))(safe_clamp_func(VECTOR(int32_t, 4),VECTOR(int32_t, 4),((VECTOR(int32_t, 2))(hadd(((VECTOR(int32_t, 8))(l_1230.sa8f304ea)).s52, ((VECTOR(int32_t, 16))(l_1231.yzxxxyzyyzzzyyzz)).s2f))).yyxx, ((VECTOR(int32_t, 8))(l_1232.s6135aa91)).even, ((VECTOR(int32_t, 8))(l_1233, 0x0D3F9C29L, ((VECTOR(int32_t, 16))(0x31A0E99EL, 0x7058C9E2L, (l_1234[1][3][0] , (l_1236 = l_1235[1][1][2])), (-1L), (l_1237 , 0L), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(l_1238.s43)).hi, ((VECTOR(int32_t, 4))(l_1239, (-1L), 0x0ADE618CL, 0x12731979L)), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(upsample(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(safe_clamp_func(VECTOR(int16_t, 8),VECTOR(int16_t, 8),((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(mad_sat(((VECTOR(int16_t, 2))(safe_clamp_func(VECTOR(int16_t, 2),int16_t,((VECTOR(int16_t, 16))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 16),((VECTOR(int16_t, 4))(rhadd(((VECTOR(int16_t, 2))(0x5E1EL, 1L)).yxxy, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 16))(l_1240.s7050142612631230)))).sa047))))).xzzyxzwzwzwzyzzz, ((VECTOR(int16_t, 4))(max(((VECTOR(int16_t, 4))(l_1241.xyww)), ((VECTOR(int16_t, 2))(mad_sat(((VECTOR(int16_t, 4))(mul_hi(((VECTOR(int16_t, 16))(0x37BEL, ((VECTOR(int16_t, 4))(l_1242.s0431)), ((VECTOR(int16_t, 8))(l_1243.zyyyzwww)), ((VECTOR(int16_t, 2))(clz(((VECTOR(int16_t, 16))(l_1244.yyxyxxyyxxxyyxxx)).s05))), (-2L))).sa47a, ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 4))(0x1D51L, 4L, 0x4860L, 0x24A9L)).odd)).xyxy))).even, ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 16))(l_1245.wxzyxzzzwzwwwwxw)).even)).s57, ((VECTOR(int16_t, 2))(l_1246.yx))))).xxxy))).wywwywyyxwwzxzxz, ((VECTOR(int16_t, 16))(clz(((VECTOR(int16_t, 8))(0x2D07L, 0x2633L, 0L, ((VECTOR(int16_t, 2))(l_1247.s21)), 3L, (-8L), 0x5D2AL)).s6751504017447640)))))).sbf, (int16_t)l_1248[0], (int16_t)l_1249[6]))), ((VECTOR(int16_t, 2))((-7L))), ((VECTOR(int16_t, 2))(1L))))), 1L, (-6L))).zxwwzzxx, ((VECTOR(int16_t, 8))(0x71DCL)), ((VECTOR(int16_t, 8))(1L))))).even)).wxzxxxxw, ((VECTOR(uint16_t, 8))(1UL))))).s20)).lo, ((VECTOR(int32_t, 4))(0x1A718BD4L)), l_1250.sb, (-5L), l_1251, ((VECTOR(int32_t, 2))(0L)), (-1L))).sa177)).odd)), ((VECTOR(int32_t, 4))(1L)), l_1252, 0x39E838B6L, 0x31D6132BL, 0L, (-1L))).sa, ((VECTOR(int32_t, 4))(1L)), (-1L))).even))), 0x3FC04463L, 0x529F0CA2L, l_1253, ((VECTOR(int32_t, 2))(9L)), l_1254, l_1255[0], 0x3EE450CCL, (-3L), (-7L))).s77a4, ((VECTOR(uint32_t, 4))(4294967295UL))))).yywwzwyw, ((VECTOR(int64_t, 8))((-8L))), ((VECTOR(int64_t, 8))(0x334977207A214941L))))).s1622033611514301)).lo, ((VECTOR(int64_t, 8))(0x2BCDDAAC4642C7E4L)), ((VECTOR(int64_t, 8))(0x5B2CEC93333CF5C7L))))).s46))), ((VECTOR(int64_t, 2))(0x64F7692551E0DA61L))))).xxyx, ((VECTOR(int64_t, 4))(0x320AA1EE928AFAFCL))))), ((VECTOR(int64_t, 2))(0L)), 0x67E66E6534EC451FL, ((VECTOR(int64_t, 4))(9L)), 0x0829B76F72E039C8L, 5L, 0x3E3525EC6CAC1CD7L)).s3 , 1L));
                }
                l_1257--;
                --l_1261;
                l_1269 = ((l_1267 &= (l_1266 |= (l_1264[1] , l_1265))) , l_1268);
                unsigned int result = 0;
                result += l_1138.sf;
                result += l_1138.se;
                result += l_1138.sd;
                result += l_1138.sc;
                result += l_1138.sb;
                result += l_1138.sa;
                result += l_1138.s9;
                result += l_1138.s8;
                result += l_1138.s7;
                result += l_1138.s6;
                result += l_1138.s5;
                result += l_1138.s4;
                result += l_1138.s3;
                result += l_1138.s2;
                result += l_1138.s1;
                result += l_1138.s0;
                result += l_1257;
                result += l_1260;
                result += l_1261;
                int l_1264_i0;
                for (l_1264_i0 = 0; l_1264_i0 < 6; l_1264_i0++) {
                    result += l_1264[l_1264_i0];
                }
                result += l_1265;
                result += l_1266;
                result += l_1267;
                atomic_add(&p_1544->g_special_values[93 * get_linear_group_id() + 7], result);
            }
            else
            { /* block id: 579 */
                (1 + 1);
            }
            (*p_1544->g_247) = l_1135;
            for (l_1109 = 0; (l_1109 <= 7); l_1109++)
            { /* block id: 585 */
                int8_t ***l_1279 = (void*)0;
                int8_t ***l_1280 = &p_1544->g_492;
                int32_t l_1290 = 5L;
                uint8_t ****l_1297 = (void*)0;
                uint8_t ****l_1298 = (void*)0;
                uint8_t ****l_1299[9][6] = {{&p_1544->g_640,(void*)0,&p_1544->g_640,(void*)0,&p_1544->g_640,(void*)0},{&p_1544->g_640,(void*)0,&p_1544->g_640,(void*)0,&p_1544->g_640,(void*)0},{&p_1544->g_640,(void*)0,&p_1544->g_640,(void*)0,&p_1544->g_640,(void*)0},{&p_1544->g_640,(void*)0,&p_1544->g_640,(void*)0,&p_1544->g_640,(void*)0},{&p_1544->g_640,(void*)0,&p_1544->g_640,(void*)0,&p_1544->g_640,(void*)0},{&p_1544->g_640,(void*)0,&p_1544->g_640,(void*)0,&p_1544->g_640,(void*)0},{&p_1544->g_640,(void*)0,&p_1544->g_640,(void*)0,&p_1544->g_640,(void*)0},{&p_1544->g_640,(void*)0,&p_1544->g_640,(void*)0,&p_1544->g_640,(void*)0},{&p_1544->g_640,(void*)0,&p_1544->g_640,(void*)0,&p_1544->g_640,(void*)0}};
                uint32_t l_1302 = 0xCF9C3428L;
                int i, j;
                (*p_1544->g_247) = (safe_mul_func_int16_t_s_s(3L, (safe_mod_func_int16_t_s_s(((safe_sub_func_int8_t_s_s(((((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(p_1544->g_1278.yx)), 0x1538L, 0UL)).y , ((*l_1280) = &p_1544->g_356)) == &p_1544->g_358), ((safe_rshift_func_uint8_t_u_s(((((FAKE_DIVERGE(p_1544->global_1_offset, get_global_id(1), 10) | (safe_sub_func_int8_t_s_s(l_1285, (~((safe_sub_func_uint8_t_u_u(((safe_rshift_func_int16_t_s_s(l_1290, 14)) & ((void*)0 == l_1291)), (0xBDD4C41C3505D65CL > ((safe_lshift_func_uint16_t_u_s((((VECTOR(int16_t, 4))(p_1544->g_1294.s7650)).w == ((*p_1544->g_277) &= (safe_mod_func_uint64_t_u_u((((p_1544->g_640 = &p_1544->g_641) == &p_1544->g_641) , p_1544->g_1300), 0x2C75362A108E0A04L)))), 7)) , p_1544->g_437.s8)))) <= p_1544->g_1037.s7))))) <= l_1116) ^ p_1544->g_118[1][1][1]) ^ (**p_1544->g_116)), 3)) , 0L))) != p_1544->g_318.s6), p_1544->g_118[6][2][2]))));
                if (l_1123)
                    break;
                (*p_1544->g_247) ^= l_1135;
                l_1302--;
            }
        }
        p_1544->g_1307 = p_1544->g_1305;
    }
    for (p_1544->g_458 = 0; (p_1544->g_458 != 21); p_1544->g_458++)
    { /* block id: 599 */
        uint16_t *l_1322 = (void*)0;
        int32_t l_1326 = 0L;
        VECTOR(int16_t, 4) l_1329 = (VECTOR(int16_t, 4))(0x650CL, (VECTOR(int16_t, 2))(0x650CL, (-4L)), (-4L));
        int8_t *l_1354 = (void*)0;
        int32_t l_1361[10][2] = {{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L}};
        uint8_t l_1386 = 0x5AL;
        int32_t l_1398 = 0x6C7A4EBAL;
        int8_t l_1402[7][9] = {{6L,0x78L,0x6FL,0x29L,4L,0x29L,0x6FL,0x78L,6L},{6L,0x78L,0x6FL,0x29L,4L,0x29L,0x6FL,0x78L,6L},{6L,0x78L,0x6FL,0x29L,4L,0x29L,0x6FL,0x78L,6L},{6L,0x78L,0x6FL,0x29L,4L,0x29L,0x6FL,0x78L,6L},{6L,0x78L,0x6FL,0x29L,4L,0x29L,0x6FL,0x78L,6L},{6L,0x78L,0x6FL,0x29L,4L,0x29L,0x6FL,0x78L,6L},{6L,0x78L,0x6FL,0x29L,4L,0x29L,0x6FL,0x78L,6L}};
        int i, j;
        for (p_1544->g_209.f1 = 0; (p_1544->g_209.f1 <= (-30)); p_1544->g_209.f1 = safe_sub_func_uint8_t_u_u(p_1544->g_209.f1, 9))
        { /* block id: 602 */
            VECTOR(uint16_t, 16) l_1313 = (VECTOR(uint16_t, 16))(0xBBBAL, (VECTOR(uint16_t, 4))(0xBBBAL, (VECTOR(uint16_t, 2))(0xBBBAL, 0xECA0L), 0xECA0L), 0xECA0L, 0xBBBAL, 0xECA0L, (VECTOR(uint16_t, 2))(0xBBBAL, 0xECA0L), (VECTOR(uint16_t, 2))(0xBBBAL, 0xECA0L), 0xBBBAL, 0xECA0L, 0xBBBAL, 0xECA0L);
            struct S3 *l_1317 = &p_1544->g_1318;
            struct S3 **l_1316 = &l_1317;
            struct S3 **l_1330 = &l_1317;
            VECTOR(int16_t, 8) l_1331 = (VECTOR(int16_t, 8))(0x287EL, (VECTOR(int16_t, 4))(0x287EL, (VECTOR(int16_t, 2))(0x287EL, (-1L)), (-1L)), (-1L), 0x287EL, (-1L));
            uint64_t *l_1332 = (void*)0;
            uint64_t *l_1333 = (void*)0;
            int8_t *l_1334 = &p_1544->g_517;
            int32_t l_1335 = (-1L);
            struct S2 *l_1339 = &p_1544->g_226[4][2][0];
            struct S2 *l_1340 = &l_1338;
            int32_t l_1362 = 0L;
            int32_t l_1377 = (-7L);
            int32_t l_1382 = 0x4C2F5FB9L;
            int32_t l_1383 = 0x3D8A3082L;
            int32_t l_1384[1];
            int16_t l_1385 = (-1L);
            struct S1 **l_1400 = (void*)0;
            struct S1 **l_1401[1][5] = {{&l_1399,&l_1399,&l_1399,&l_1399,&l_1399}};
            int32_t l_1403 = 0L;
            int32_t l_1404 = 3L;
            int i, j;
            for (i = 0; i < 1; i++)
                l_1384[i] = 0L;
            l_1335 ^= (p_1544->g_1312[1][3] >= (((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 4))(l_1313.sae12)))).x < ((*p_1544->g_277) = ((safe_mod_func_int8_t_s_s(((VECTOR(int8_t, 2))((-2L), 0x7DL)).odd, ((VECTOR(uint8_t, 8))(abs_diff(((VECTOR(int8_t, 8))(1L, ((VECTOR(int8_t, 2))(rhadd(((VECTOR(int8_t, 16))(0x4FL, 0x36L, (-5L), 8L, ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(((void*)0 == l_1316), ((VECTOR(int8_t, 2))(rotate(((VECTOR(int8_t, 16))(clz(((VECTOR(int8_t, 2))(0x09L, 1L)).xyyyxxxxyxyyxxyx))).se4, ((VECTOR(int8_t, 4))(((*l_1334) = ((l_1313.s2 , (safe_rshift_func_uint8_t_u_u(((VECTOR(uint8_t, 16))(p_1544->g_1321.xyyyyxxxxyxxyyxy)).s4, ((l_1322 == ((p_1544->g_1091.x = (safe_div_func_int16_t_s_s(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 4))(l_1325.wwzz)))), 0x22E0L, ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(add_sat(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 16))(l_1326, 0x15B6L, ((VECTOR(int16_t, 4))(sub_sat(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(8L, 7L)).yyxy)), 1L, ((VECTOR(int16_t, 2))(hadd(((VECTOR(int16_t, 4))(add_sat(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(p_1544->g_1327.wy)).yyxyyyyxyxyxyyxx)).sbc)), 5L, (-1L), (-1L), ((VECTOR(int16_t, 8))(p_1544->g_1328.xxxxyyxx)).s1, 0x5D3EL, 0x189AL)).hi, ((VECTOR(int16_t, 2))(safe_clamp_func(VECTOR(int16_t, 2),VECTOR(int16_t, 2),((VECTOR(int16_t, 2))(add_sat(((VECTOR(int16_t, 8))(l_1329.yxxyzzzz)).s30, ((VECTOR(int16_t, 4))(((void*)0 != l_1330), ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(0x5F2DL, 0x411DL)).xyyy)).even)), 0x755AL)).lo))), ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(l_1331.s0546)), ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 16))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 16),((VECTOR(int16_t, 2))(max(((VECTOR(int16_t, 8))(0x64D0L, p_1544->g_411.f0, ((VECTOR(int16_t, 2))(1L)), ((VECTOR(int16_t, 2))((-9L))), 0x635FL, (-3L))).s46, ((VECTOR(int16_t, 2))((-8L)))))).yxyyxxyxyxxxyyxy, ((VECTOR(int16_t, 16))((-9L))), ((VECTOR(int16_t, 16))(1L))))))).sbc78)), (-3L), 0x4553L, (-1L), ((VECTOR(int16_t, 4))(0x796DL)), 0x503CL)).s0d, ((VECTOR(int16_t, 2))(0x325EL))))).xxxy))).odd, ((VECTOR(int16_t, 2))(1L))))), 0L)).even)), ((VECTOR(int16_t, 4))(0x4C16L))))), 1L, 0x3DA5L, ((VECTOR(int16_t, 2))(0x473BL)), ((VECTOR(int16_t, 4))(1L)), 1L, 1L)))).s19, ((VECTOR(int16_t, 2))(8L))))))), 6L, 0x18F1L, 1L, 0x396FL, p_1544->g_1327.y, 1L, p_1544->g_226[4][2][0].f0, 0x364AL, 0x1047L)).s6, l_1313.sd))) , &p_1544->g_359)) ^ (*p_1544->g_277))))) && 0x79F5L)), ((VECTOR(int8_t, 2))((-1L))), 0x34L)).odd))), 0x56L)), 0x65L, 0L, 0x4AL, 0x7DL)).even)).wzzyxyxxwxzzxxzx)).s9, 0L, 0x3EL, ((VECTOR(int8_t, 2))(0x10L)), 0x61L, 1L, ((VECTOR(int8_t, 2))(0L)), 3L, 0x24L, (-1L))).s89, ((VECTOR(int8_t, 2))(0x1CL))))), p_1544->g_697[5], l_1331.s7, 0x7DL, 3L, (-10L))), ((VECTOR(int8_t, 8))((-1L)))))).s1)) < l_1313.s4))));
            if ((p_1544->g_188.s6 <= (safe_mod_func_int8_t_s_s(l_1329.y, ((((((*l_1340) = ((*l_1339) = l_1338)) , ((safe_lshift_func_uint16_t_u_u((l_1331.s6 <= (((safe_lshift_func_uint16_t_u_u((safe_add_func_int16_t_s_s((((safe_mul_func_int16_t_s_s((safe_sub_func_int64_t_s_s(((+(p_1544->g_1023.y |= (FAKE_DIVERGE(p_1544->local_2_offset, get_local_id(2), 10) != (safe_rshift_func_uint16_t_u_u((l_1329.x , (&p_1544->g_867 != &p_1544->g_867)), (p_1544->g_271.s7 , 65535UL)))))) & p_1544->g_483.f2), (-1L))), 0x37CEL)) < 0x697D7703L) >= p_1544->g_118[3][0][0]), p_1544->g_387.y)), 3)) > l_1329.w) , l_1313.s0)), 0)) , l_1353)) == l_1354) < (***p_1544->g_640)) ^ GROUP_DIVERGE(0, 1))))))
            { /* block id: 610 */
                uint32_t l_1355 = 0xDD4FDAA7L;
                l_1355--;
                if (l_1331.s3)
                    break;
            }
            else
            { /* block id: 613 */
                int8_t l_1358[3];
                int32_t l_1359 = 0L;
                int32_t l_1360[8] = {5L,5L,5L,5L,5L,5L,5L,5L};
                uint64_t l_1378 = 1UL;
                struct S1 *l_1394 = &p_1544->g_365;
                int i;
                for (i = 0; i < 3; i++)
                    l_1358[i] = 0x67L;
                p_1544->g_1363++;
                (*p_1544->g_170) = l_1358[2];
                if (((safe_div_func_int64_t_s_s(((void*)0 == l_1333), 0xA14669A9E8B7D49BL)) < 0xA3C3F66BDBC5B8B5L))
                { /* block id: 616 */
                    uint32_t l_1370 = 1UL;
                    int32_t l_1376 = 0x6CDC2F29L;
                    int32_t l_1381[6] = {0L,1L,0L,0L,1L,0L};
                    int i;
                    for (p_1544->g_950.f1 = 0; (p_1544->g_950.f1 < (-27)); --p_1544->g_950.f1)
                    { /* block id: 619 */
                        uint32_t l_1373[4][6] = {{4294967288UL,4294967288UL,9UL,4294967293UL,0x4D8827EEL,4294967293UL},{4294967288UL,4294967288UL,9UL,4294967293UL,0x4D8827EEL,4294967293UL},{4294967288UL,4294967288UL,9UL,4294967293UL,0x4D8827EEL,4294967293UL},{4294967288UL,4294967288UL,9UL,4294967293UL,0x4D8827EEL,4294967293UL}};
                        int i, j;
                        l_1370++;
                        if (l_1370)
                            break;
                        --l_1373[0][2];
                    }
                    l_1378--;
                    l_1386++;
                    (*l_1316) = l_1389;
                }
                else
                { /* block id: 627 */
                    (*p_1544->g_247) = (safe_sub_func_uint16_t_u_u(FAKE_DIVERGE(p_1544->global_0_offset, get_global_id(0), 10), l_1313.sa));
                    for (p_1544->g_143 = (-3); (p_1544->g_143 == 38); p_1544->g_143++)
                    { /* block id: 631 */
                        struct S1 **l_1397 = &p_1544->g_225;
                        (*l_1397) = l_1394;
                    }
                    atomic_or(&p_1544->l_atomic_reduction[0], (l_1398 = 0x68A63937L));
                    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                    if (get_linear_local_id() == 0)
                        p_1544->v_collective += p_1544->l_atomic_reduction[0];
                    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                }
            }
            l_1399 = ((*p_1544->g_224) = l_1399);
            ++l_1405;
        }
        if ((atomic_inc(&p_1544->g_atomic_input[93 * get_linear_group_id() + 14]) == 2))
        { /* block id: 643 */
            int32_t l_1408 = 0x33DE3993L;
            int64_t l_1487 = (-8L);
            int16_t l_1488[8] = {(-7L),(-7L),(-7L),(-7L),(-7L),(-7L),(-7L),(-7L)};
            uint8_t l_1510 = 0UL;
            int i;
            for (l_1408 = 0; (l_1408 == (-5)); l_1408 = safe_sub_func_int64_t_s_s(l_1408, 8))
            { /* block id: 646 */
                uint64_t l_1411 = 0x4CDFB5DF4BE5359EL;
                int32_t l_1412 = 0x3F3D1F10L;
                int32_t l_1413 = 0x787357E8L;
                uint32_t l_1414 = 4294967295UL;
                uint32_t l_1417[10][4] = {{0x97260DADL,0x97260DADL,0xF25BEB63L,4294967290UL},{0x97260DADL,0x97260DADL,0xF25BEB63L,4294967290UL},{0x97260DADL,0x97260DADL,0xF25BEB63L,4294967290UL},{0x97260DADL,0x97260DADL,0xF25BEB63L,4294967290UL},{0x97260DADL,0x97260DADL,0xF25BEB63L,4294967290UL},{0x97260DADL,0x97260DADL,0xF25BEB63L,4294967290UL},{0x97260DADL,0x97260DADL,0xF25BEB63L,4294967290UL},{0x97260DADL,0x97260DADL,0xF25BEB63L,4294967290UL},{0x97260DADL,0x97260DADL,0xF25BEB63L,4294967290UL},{0x97260DADL,0x97260DADL,0xF25BEB63L,4294967290UL}};
                uint8_t l_1418 = 0x03L;
                int i, j;
                l_1412 = l_1411;
                --l_1414;
                l_1418 = l_1417[4][1];
                for (l_1412 = 0; (l_1412 != (-15)); --l_1412)
                { /* block id: 652 */
                    uint32_t l_1421 = 0x6AEED12CL;
                    uint8_t l_1422 = 9UL;
                    VECTOR(int32_t, 2) l_1423 = (VECTOR(int32_t, 2))(0x2B5A6DD0L, 1L);
                    uint16_t l_1424 = 0xA77EL;
                    int32_t l_1437[5];
                    int i;
                    for (i = 0; i < 5; i++)
                        l_1437[i] = 0L;
                    if ((l_1424 = ((VECTOR(int32_t, 16))(0x24CE5F06L, l_1421, 0x7613EE3FL, 0x0279CE04L, l_1422, 0x6D764905L, 0L, ((VECTOR(int32_t, 8))(l_1423.xyxxyxyx)), 0x3F1642F0L)).s5))
                    { /* block id: 654 */
                        VECTOR(int32_t, 4) l_1425 = (VECTOR(int32_t, 4))(0x7CC36B0CL, (VECTOR(int32_t, 2))(0x7CC36B0CL, 0x7ACCC123L), 0x7ACCC123L);
                        VECTOR(int32_t, 8) l_1426 = (VECTOR(int32_t, 8))(0x2536051BL, (VECTOR(int32_t, 4))(0x2536051BL, (VECTOR(int32_t, 2))(0x2536051BL, 0x5D6A19BCL), 0x5D6A19BCL), 0x5D6A19BCL, 0x2536051BL, 0x5D6A19BCL);
                        VECTOR(int32_t, 16) l_1427 = (VECTOR(int32_t, 16))(0x5B88F650L, (VECTOR(int32_t, 4))(0x5B88F650L, (VECTOR(int32_t, 2))(0x5B88F650L, 5L), 5L), 5L, 0x5B88F650L, 5L, (VECTOR(int32_t, 2))(0x5B88F650L, 5L), (VECTOR(int32_t, 2))(0x5B88F650L, 5L), 0x5B88F650L, 5L, 0x5B88F650L, 5L);
                        int64_t l_1428 = 0x266792B455A150F0L;
                        int64_t l_1429 = 0x3E84E466240E9611L;
                        uint8_t l_1430 = 0UL;
                        int32_t l_1431[6];
                        int16_t l_1432 = (-1L);
                        int i;
                        for (i = 0; i < 6; i++)
                            l_1431[i] = 1L;
                        l_1423.x |= ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(l_1425.wy)), ((VECTOR(int32_t, 2))(l_1426.s11)), ((VECTOR(int32_t, 2))(l_1427.sb9)), ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(0x55F27B0EL, ((VECTOR(int32_t, 2))((-5L), 0x23999F8DL)), 0x08FBB23FL, 0x07D69D8CL, ((l_1428 , l_1429) , (l_1430 , 0x305EC459L)), (-10L), 0x0485AA71L)))).s5, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(0x41C89167L, 0x41ED5D6AL)), 6L, 6L)))), (l_1431[4] , (l_1431[4] = l_1432)), ((VECTOR(int32_t, 2))(0x578E5FF5L, 9L)), 0x29A6CF7AL, 0x76D05AFDL)).sa;
                    }
                    else
                    { /* block id: 657 */
                        int32_t l_1434[6] = {8L,8L,8L,8L,8L,8L};
                        int32_t *l_1433 = &l_1434[5];
                        int32_t *l_1435 = &l_1434[5];
                        int32_t *l_1436 = &l_1434[2];
                        int i;
                        l_1436 = (l_1435 = l_1433);
                    }
                    if (l_1437[3])
                    { /* block id: 661 */
                        VECTOR(int32_t, 2) l_1438 = (VECTOR(int32_t, 2))((-1L), 1L);
                        VECTOR(int32_t, 4) l_1439 = (VECTOR(int32_t, 4))(6L, (VECTOR(int32_t, 2))(6L, 0x6E9A2A64L), 0x6E9A2A64L);
                        VECTOR(int32_t, 8) l_1440 = (VECTOR(int32_t, 8))((-4L), (VECTOR(int32_t, 4))((-4L), (VECTOR(int32_t, 2))((-4L), 1L), 1L), 1L, (-4L), 1L);
                        VECTOR(int32_t, 8) l_1441 = (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 9L), 9L), 9L, 1L, 9L);
                        VECTOR(int32_t, 4) l_1442 = (VECTOR(int32_t, 4))(0x1FA03740L, (VECTOR(int32_t, 2))(0x1FA03740L, (-1L)), (-1L));
                        VECTOR(int32_t, 8) l_1443 = (VECTOR(int32_t, 8))(0x5B5BC3CCL, (VECTOR(int32_t, 4))(0x5B5BC3CCL, (VECTOR(int32_t, 2))(0x5B5BC3CCL, (-8L)), (-8L)), (-8L), 0x5B5BC3CCL, (-8L));
                        VECTOR(int32_t, 4) l_1444 = (VECTOR(int32_t, 4))(0x11CC2CF6L, (VECTOR(int32_t, 2))(0x11CC2CF6L, 0x55585CCFL), 0x55585CCFL);
                        VECTOR(int32_t, 8) l_1445 = (VECTOR(int32_t, 8))(4L, (VECTOR(int32_t, 4))(4L, (VECTOR(int32_t, 2))(4L, 0x24618068L), 0x24618068L), 0x24618068L, 4L, 0x24618068L);
                        VECTOR(int32_t, 8) l_1446 = (VECTOR(int32_t, 8))(0x335202D4L, (VECTOR(int32_t, 4))(0x335202D4L, (VECTOR(int32_t, 2))(0x335202D4L, 0x415F6B24L), 0x415F6B24L), 0x415F6B24L, 0x335202D4L, 0x415F6B24L);
                        VECTOR(int32_t, 8) l_1447 = (VECTOR(int32_t, 8))(0x252845ADL, (VECTOR(int32_t, 4))(0x252845ADL, (VECTOR(int32_t, 2))(0x252845ADL, (-8L)), (-8L)), (-8L), 0x252845ADL, (-8L));
                        struct S2 l_1448 = {18446744073709551615UL};
                        int8_t l_1449 = 0x4CL;
                        VECTOR(int32_t, 16) l_1450 = (VECTOR(int32_t, 16))(0x04A31449L, (VECTOR(int32_t, 4))(0x04A31449L, (VECTOR(int32_t, 2))(0x04A31449L, 0x11699E45L), 0x11699E45L), 0x11699E45L, 0x04A31449L, 0x11699E45L, (VECTOR(int32_t, 2))(0x04A31449L, 0x11699E45L), (VECTOR(int32_t, 2))(0x04A31449L, 0x11699E45L), 0x04A31449L, 0x11699E45L, 0x04A31449L, 0x11699E45L);
                        VECTOR(int32_t, 2) l_1451 = (VECTOR(int32_t, 2))(0x4D3B5DABL, 6L);
                        int8_t l_1452 = (-1L);
                        VECTOR(int32_t, 8) l_1453 = (VECTOR(int32_t, 8))(0x71B55991L, (VECTOR(int32_t, 4))(0x71B55991L, (VECTOR(int32_t, 2))(0x71B55991L, 1L), 1L), 1L, 0x71B55991L, 1L);
                        uint16_t l_1454[6][2][6] = {{{0xF7EAL,0x216BL,65535UL,0x77C3L,0x56ABL,0x77C3L},{0xF7EAL,0x216BL,65535UL,0x77C3L,0x56ABL,0x77C3L}},{{0xF7EAL,0x216BL,65535UL,0x77C3L,0x56ABL,0x77C3L},{0xF7EAL,0x216BL,65535UL,0x77C3L,0x56ABL,0x77C3L}},{{0xF7EAL,0x216BL,65535UL,0x77C3L,0x56ABL,0x77C3L},{0xF7EAL,0x216BL,65535UL,0x77C3L,0x56ABL,0x77C3L}},{{0xF7EAL,0x216BL,65535UL,0x77C3L,0x56ABL,0x77C3L},{0xF7EAL,0x216BL,65535UL,0x77C3L,0x56ABL,0x77C3L}},{{0xF7EAL,0x216BL,65535UL,0x77C3L,0x56ABL,0x77C3L},{0xF7EAL,0x216BL,65535UL,0x77C3L,0x56ABL,0x77C3L}},{{0xF7EAL,0x216BL,65535UL,0x77C3L,0x56ABL,0x77C3L},{0xF7EAL,0x216BL,65535UL,0x77C3L,0x56ABL,0x77C3L}}};
                        uint8_t l_1455 = 0x50L;
                        VECTOR(int16_t, 4) l_1456 = (VECTOR(int16_t, 4))(0x35DDL, (VECTOR(int16_t, 2))(0x35DDL, 0x3B51L), 0x3B51L);
                        int64_t l_1457 = 0x66567EE4798D2929L;
                        int32_t l_1458 = 0x08EF10DEL;
                        uint32_t l_1459 = 1UL;
                        uint32_t l_1460 = 4294967288UL;
                        int64_t l_1461 = (-1L);
                        uint32_t l_1462 = 0UL;
                        int32_t l_1463 = 0x71407910L;
                        uint32_t l_1464 = 0x35E1ACBBL;
                        int i, j, k;
                        l_1463 |= ((VECTOR(int32_t, 8))(safe_clamp_func(VECTOR(int32_t, 8),VECTOR(int32_t, 8),((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(l_1438.xyyy)).xxxyxxww)))), ((VECTOR(int32_t, 16))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 2))(l_1439.xy)).xxxxyxxyxyyyyxyy, ((VECTOR(int32_t, 2))(sub_sat(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(l_1440.s6001)).xxywxyxw)).s76, ((VECTOR(int32_t, 2))(l_1441.s40))))).xyxxxxyxyyxxxxyx, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(hadd(((VECTOR(int32_t, 16))(l_1442.wzxwxwxzxxyxwxzw)).s42, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(safe_clamp_func(VECTOR(int32_t, 2),VECTOR(int32_t, 2),((VECTOR(int32_t, 4))(l_1443.s7325)).hi, ((VECTOR(int32_t, 16))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(8L, 0x4E14CCE3L)))).yyyyyyxx)).s1272672602131424, ((VECTOR(int32_t, 8))(hadd(((VECTOR(int32_t, 2))(l_1444.xz)).xxyxxyyy, ((VECTOR(int32_t, 2))(l_1445.s64)).yxxxyyxy))).s1775323052605421, ((VECTOR(int32_t, 4))(l_1446.s7026)).yxxzzxzxzzyywzyx))).s10, ((VECTOR(int32_t, 2))(l_1447.s53))))).xxyyyxyxxxxyxyyy)).s2, (l_1423.y = 0L), (-4L), (l_1448 , 0x09921AD6L), (l_1423.y |= l_1449), ((VECTOR(int32_t, 2))(l_1450.s79)), 1L)).s01))), ((VECTOR(int32_t, 2))(max(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(0L, 0x6BE1F1E6L)))).xxxxyyyy)).s06)).xyxxxyxyxxxyyxxy, ((VECTOR(int32_t, 2))(l_1451.yx)).xyxyyyxyxxyyyyxy))))).s32, (int32_t)(l_1447.s7 = l_1452)))), ((VECTOR(int32_t, 2))(min(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(min(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(max(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 2))(l_1453.s67)).xyxyxxyx, ((VECTOR(int32_t, 8))(upsample(((VECTOR(int16_t, 4))(l_1454[2][1][5], (-9L), 2L, 5L)).xxzxxwyy, ((VECTOR(uint16_t, 16))(l_1455, (GROUP_DIVERGE(2, 1) , ((VECTOR(uint16_t, 16))(safe_clamp_func(VECTOR(uint16_t, 16),uint16_t,((VECTOR(uint16_t, 16))(abs(((VECTOR(int16_t, 8))(l_1456.xxyzwxwy)).s4520663555542214))), (uint16_t)l_1457, (uint16_t)((l_1459 = l_1458) , l_1460)))).s3), 65535UL, l_1461, 65535UL, 0xA488L, l_1462, 0xF316L, 1UL, 1UL, 1UL, 0x8AD1L, 65526UL, ((VECTOR(uint16_t, 2))(0x3370L)), 1UL)).even))), ((VECTOR(int32_t, 8))((-1L)))))), 4L, 0L, (-1L), ((VECTOR(int32_t, 4))(0x454A6205L)), 0x6574BCA2L)).s4dda)).hi, ((VECTOR(int32_t, 2))(0x2C034DA6L))))).yxyx)), ((VECTOR(int32_t, 4))(0x43FA0C2EL))))).lo)), ((VECTOR(int32_t, 2))(0x3BA17EBCL))))), 0x23F9EDDCL, 0L)).s5211117776255116))).even, ((VECTOR(int32_t, 8))(9L))))).s5;
                        l_1423.y &= l_1464;
                    }
                    else
                    { /* block id: 668 */
                        uint16_t l_1465 = 0UL;
                        int64_t l_1466 = (-10L);
                        l_1466 = (l_1423.x = l_1465);
                        l_1423.x = 0x14187DB9L;
                    }
                    for (l_1424 = 23; (l_1424 >= 26); l_1424++)
                    { /* block id: 675 */
                        int32_t *l_1469 = (void*)0;
                        struct S0 l_1470 = {7UL,4L,1UL,1L};/* VOLATILE GLOBAL l_1470 */
                        int32_t l_1471 = 0x4EDAFCF4L;
                        VECTOR(int8_t, 8) l_1472 = (VECTOR(int8_t, 8))(0x61L, (VECTOR(int8_t, 4))(0x61L, (VECTOR(int8_t, 2))(0x61L, 0L), 0L), 0L, 0x61L, 0L);
                        VECTOR(uint8_t, 16) l_1473 = (VECTOR(uint8_t, 16))(0x37L, (VECTOR(uint8_t, 4))(0x37L, (VECTOR(uint8_t, 2))(0x37L, 1UL), 1UL), 1UL, 0x37L, 1UL, (VECTOR(uint8_t, 2))(0x37L, 1UL), (VECTOR(uint8_t, 2))(0x37L, 1UL), 0x37L, 1UL, 0x37L, 1UL);
                        VECTOR(uint16_t, 4) l_1474 = (VECTOR(uint16_t, 4))(0x41A7L, (VECTOR(uint16_t, 2))(0x41A7L, 0UL), 0UL);
                        int64_t l_1475 = (-7L);
                        int32_t l_1476 = 0x14DD894BL;
                        uint32_t l_1477 = 4294967293UL;
                        int16_t l_1478 = 7L;
                        uint8_t l_1479 = 4UL;
                        VECTOR(uint8_t, 8) l_1482 = (VECTOR(uint8_t, 8))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 255UL), 255UL), 255UL, 255UL, 255UL);
                        int16_t l_1483 = (-6L);
                        uint32_t l_1484 = 4294967288UL;
                        struct S0 l_1485 = {65533UL,0x5B4D18F35810B0DEL,65529UL,0x3D00D1C7L};/* VOLATILE GLOBAL l_1485 */
                        struct S0 l_1486 = {0x4A27L,0x18BFB95FF514FBC4L,1UL,0x5E6B9CB1L};/* VOLATILE GLOBAL l_1486 */
                        int i;
                        l_1469 = (void*)0;
                        l_1486 = (l_1470 , (l_1471 , (((VECTOR(int16_t, 4))(upsample(((VECTOR(int8_t, 8))(l_1472.s07775204)).even, ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 16))(mad_hi(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 16))(0x0CL, ((VECTOR(uint8_t, 8))(l_1473.sb713f92b)), ((VECTOR(uint8_t, 2))(251UL, 0x8EL)), FAKE_DIVERGE(p_1544->group_1_offset, get_group_id(1), 10), 9UL, ((((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 2))(l_1474.wx)))).lo , (l_1476 = l_1475)) , (l_1418 = ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(0xB1L, 1UL)), ((VECTOR(uint8_t, 4))(abs_diff(((VECTOR(uint8_t, 2))(min(((VECTOR(uint8_t, 16))(l_1477, ((VECTOR(uint8_t, 8))(0x01L, ((l_1478 , l_1479) , (l_1422++)), 8UL, 0UL, 0xA9L, 0x18L, 4UL, 0xBDL)), ((VECTOR(uint8_t, 4))(l_1482.s0144)), 0x2AL, 254UL, 249UL)).s7e, (uint8_t)(l_1483 , l_1484)))).xyyx, ((VECTOR(uint8_t, 4))(0xA4L))))).z, 0x35L, ((VECTOR(uint8_t, 4))(8UL)))).s1)), 0UL, 0x68L)).se4)).xxyxyxyxyxxyxxyx)), ((VECTOR(uint8_t, 16))(0x94L)), ((VECTOR(uint8_t, 16))(1UL))))).odd)).hi))).y , l_1485)));
                    }
                }
            }
            l_1488[2] = l_1487;
            for (l_1488[7] = (-10); (l_1488[7] > (-11)); l_1488[7]--)
            { /* block id: 687 */
                int32_t l_1491[5][10][5] = {{{3L,3L,0x48D75ECEL,0x5728A941L,(-8L)},{3L,3L,0x48D75ECEL,0x5728A941L,(-8L)},{3L,3L,0x48D75ECEL,0x5728A941L,(-8L)},{3L,3L,0x48D75ECEL,0x5728A941L,(-8L)},{3L,3L,0x48D75ECEL,0x5728A941L,(-8L)},{3L,3L,0x48D75ECEL,0x5728A941L,(-8L)},{3L,3L,0x48D75ECEL,0x5728A941L,(-8L)},{3L,3L,0x48D75ECEL,0x5728A941L,(-8L)},{3L,3L,0x48D75ECEL,0x5728A941L,(-8L)},{3L,3L,0x48D75ECEL,0x5728A941L,(-8L)}},{{3L,3L,0x48D75ECEL,0x5728A941L,(-8L)},{3L,3L,0x48D75ECEL,0x5728A941L,(-8L)},{3L,3L,0x48D75ECEL,0x5728A941L,(-8L)},{3L,3L,0x48D75ECEL,0x5728A941L,(-8L)},{3L,3L,0x48D75ECEL,0x5728A941L,(-8L)},{3L,3L,0x48D75ECEL,0x5728A941L,(-8L)},{3L,3L,0x48D75ECEL,0x5728A941L,(-8L)},{3L,3L,0x48D75ECEL,0x5728A941L,(-8L)},{3L,3L,0x48D75ECEL,0x5728A941L,(-8L)},{3L,3L,0x48D75ECEL,0x5728A941L,(-8L)}},{{3L,3L,0x48D75ECEL,0x5728A941L,(-8L)},{3L,3L,0x48D75ECEL,0x5728A941L,(-8L)},{3L,3L,0x48D75ECEL,0x5728A941L,(-8L)},{3L,3L,0x48D75ECEL,0x5728A941L,(-8L)},{3L,3L,0x48D75ECEL,0x5728A941L,(-8L)},{3L,3L,0x48D75ECEL,0x5728A941L,(-8L)},{3L,3L,0x48D75ECEL,0x5728A941L,(-8L)},{3L,3L,0x48D75ECEL,0x5728A941L,(-8L)},{3L,3L,0x48D75ECEL,0x5728A941L,(-8L)},{3L,3L,0x48D75ECEL,0x5728A941L,(-8L)}},{{3L,3L,0x48D75ECEL,0x5728A941L,(-8L)},{3L,3L,0x48D75ECEL,0x5728A941L,(-8L)},{3L,3L,0x48D75ECEL,0x5728A941L,(-8L)},{3L,3L,0x48D75ECEL,0x5728A941L,(-8L)},{3L,3L,0x48D75ECEL,0x5728A941L,(-8L)},{3L,3L,0x48D75ECEL,0x5728A941L,(-8L)},{3L,3L,0x48D75ECEL,0x5728A941L,(-8L)},{3L,3L,0x48D75ECEL,0x5728A941L,(-8L)},{3L,3L,0x48D75ECEL,0x5728A941L,(-8L)},{3L,3L,0x48D75ECEL,0x5728A941L,(-8L)}},{{3L,3L,0x48D75ECEL,0x5728A941L,(-8L)},{3L,3L,0x48D75ECEL,0x5728A941L,(-8L)},{3L,3L,0x48D75ECEL,0x5728A941L,(-8L)},{3L,3L,0x48D75ECEL,0x5728A941L,(-8L)},{3L,3L,0x48D75ECEL,0x5728A941L,(-8L)},{3L,3L,0x48D75ECEL,0x5728A941L,(-8L)},{3L,3L,0x48D75ECEL,0x5728A941L,(-8L)},{3L,3L,0x48D75ECEL,0x5728A941L,(-8L)},{3L,3L,0x48D75ECEL,0x5728A941L,(-8L)},{3L,3L,0x48D75ECEL,0x5728A941L,(-8L)}}};
                uint16_t l_1507 = 65535UL;
                int i, j, k;
                for (l_1491[2][1][4] = 22; (l_1491[2][1][4] <= (-8)); l_1491[2][1][4] = safe_sub_func_int8_t_s_s(l_1491[2][1][4], 2))
                { /* block id: 690 */
                    if ((l_1408 = 0x5E3B065FL))
                    { /* block id: 692 */
                        struct S2 l_1494 = {0x031CD8BB9CEFB3BAL};
                        struct S2 l_1495 = {18446744073709551607UL};
                        l_1495 = l_1494;
                    }
                    else
                    { /* block id: 694 */
                        int8_t l_1496 = 0L;
                        int32_t l_1497 = 0x47F7135CL;
                        int16_t l_1498 = (-4L);
                        int32_t l_1499 = 0x72521A6EL;
                        int8_t l_1500 = 0x11L;
                        int16_t l_1501 = 1L;
                        int8_t l_1502 = (-7L);
                        uint32_t l_1503 = 0xEE0A8A89L;
                        int32_t l_1506 = 0x7F30032CL;
                        l_1497 = (l_1496 = 0x23360414L);
                        l_1499 |= l_1498;
                        l_1503++;
                        l_1408 = l_1506;
                    }
                }
                ++l_1507;
            }
            if (l_1510)
            { /* block id: 704 */
                uint8_t l_1511 = 251UL;
                l_1511++;
            }
            else
            { /* block id: 706 */
                int32_t l_1514 = 0x77CCB161L;
                for (l_1514 = 0; (l_1514 == (-23)); l_1514--)
                { /* block id: 709 */
                    l_1408 = 3L;
                }
                for (l_1514 = 17; (l_1514 > (-6)); l_1514 = safe_sub_func_uint16_t_u_u(l_1514, 5))
                { /* block id: 714 */
                    int32_t l_1519 = 0x10BCAE01L;
                    for (l_1519 = (-11); (l_1519 != (-4)); l_1519 = safe_add_func_int16_t_s_s(l_1519, 4))
                    { /* block id: 717 */
                        int32_t *l_1522 = (void*)0;
                        int32_t l_1524[9][8][2] = {{{0x2978F58BL,(-10L)},{0x2978F58BL,(-10L)},{0x2978F58BL,(-10L)},{0x2978F58BL,(-10L)},{0x2978F58BL,(-10L)},{0x2978F58BL,(-10L)},{0x2978F58BL,(-10L)},{0x2978F58BL,(-10L)}},{{0x2978F58BL,(-10L)},{0x2978F58BL,(-10L)},{0x2978F58BL,(-10L)},{0x2978F58BL,(-10L)},{0x2978F58BL,(-10L)},{0x2978F58BL,(-10L)},{0x2978F58BL,(-10L)},{0x2978F58BL,(-10L)}},{{0x2978F58BL,(-10L)},{0x2978F58BL,(-10L)},{0x2978F58BL,(-10L)},{0x2978F58BL,(-10L)},{0x2978F58BL,(-10L)},{0x2978F58BL,(-10L)},{0x2978F58BL,(-10L)},{0x2978F58BL,(-10L)}},{{0x2978F58BL,(-10L)},{0x2978F58BL,(-10L)},{0x2978F58BL,(-10L)},{0x2978F58BL,(-10L)},{0x2978F58BL,(-10L)},{0x2978F58BL,(-10L)},{0x2978F58BL,(-10L)},{0x2978F58BL,(-10L)}},{{0x2978F58BL,(-10L)},{0x2978F58BL,(-10L)},{0x2978F58BL,(-10L)},{0x2978F58BL,(-10L)},{0x2978F58BL,(-10L)},{0x2978F58BL,(-10L)},{0x2978F58BL,(-10L)},{0x2978F58BL,(-10L)}},{{0x2978F58BL,(-10L)},{0x2978F58BL,(-10L)},{0x2978F58BL,(-10L)},{0x2978F58BL,(-10L)},{0x2978F58BL,(-10L)},{0x2978F58BL,(-10L)},{0x2978F58BL,(-10L)},{0x2978F58BL,(-10L)}},{{0x2978F58BL,(-10L)},{0x2978F58BL,(-10L)},{0x2978F58BL,(-10L)},{0x2978F58BL,(-10L)},{0x2978F58BL,(-10L)},{0x2978F58BL,(-10L)},{0x2978F58BL,(-10L)},{0x2978F58BL,(-10L)}},{{0x2978F58BL,(-10L)},{0x2978F58BL,(-10L)},{0x2978F58BL,(-10L)},{0x2978F58BL,(-10L)},{0x2978F58BL,(-10L)},{0x2978F58BL,(-10L)},{0x2978F58BL,(-10L)},{0x2978F58BL,(-10L)}},{{0x2978F58BL,(-10L)},{0x2978F58BL,(-10L)},{0x2978F58BL,(-10L)},{0x2978F58BL,(-10L)},{0x2978F58BL,(-10L)},{0x2978F58BL,(-10L)},{0x2978F58BL,(-10L)},{0x2978F58BL,(-10L)}}};
                        int32_t *l_1523 = &l_1524[8][3][1];
                        int i, j, k;
                        l_1408 = (-8L);
                        l_1523 = l_1522;
                    }
                }
                for (l_1514 = (-20); (l_1514 == (-24)); --l_1514)
                { /* block id: 724 */
                    int8_t l_1527 = 0x4BL;
                    VECTOR(int64_t, 8) l_1528 = (VECTOR(int64_t, 8))(7L, (VECTOR(int64_t, 4))(7L, (VECTOR(int64_t, 2))(7L, (-8L)), (-8L)), (-8L), 7L, (-8L));
                    VECTOR(int64_t, 4) l_1529 = (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 2L), 2L);
                    uint32_t l_1530 = 0x38B33A6CL;
                    uint32_t l_1531 = 4294967294UL;
                    VECTOR(int64_t, 4) l_1532 = (VECTOR(int64_t, 4))(0x2153A648120DB43DL, (VECTOR(int64_t, 2))(0x2153A648120DB43DL, 1L), 1L);
                    VECTOR(int64_t, 8) l_1533 = (VECTOR(int64_t, 8))(0x0FC73E1D4B5F4D73L, (VECTOR(int64_t, 4))(0x0FC73E1D4B5F4D73L, (VECTOR(int64_t, 2))(0x0FC73E1D4B5F4D73L, (-1L)), (-1L)), (-1L), 0x0FC73E1D4B5F4D73L, (-1L));
                    VECTOR(int64_t, 8) l_1534 = (VECTOR(int64_t, 8))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 0L), 0L), 0L, (-1L), 0L);
                    int32_t l_1535[6] = {1L,1L,1L,1L,1L,1L};
                    VECTOR(uint64_t, 2) l_1536 = (VECTOR(uint64_t, 2))(0xFD1B554EDF78782FL, 18446744073709551615UL);
                    int16_t l_1537[7][8] = {{(-1L),0x4736L,(-1L),(-1L),0x4736L,(-1L),(-1L),0x4736L},{(-1L),0x4736L,(-1L),(-1L),0x4736L,(-1L),(-1L),0x4736L},{(-1L),0x4736L,(-1L),(-1L),0x4736L,(-1L),(-1L),0x4736L},{(-1L),0x4736L,(-1L),(-1L),0x4736L,(-1L),(-1L),0x4736L},{(-1L),0x4736L,(-1L),(-1L),0x4736L,(-1L),(-1L),0x4736L},{(-1L),0x4736L,(-1L),(-1L),0x4736L,(-1L),(-1L),0x4736L},{(-1L),0x4736L,(-1L),(-1L),0x4736L,(-1L),(-1L),0x4736L}};
                    VECTOR(uint64_t, 8) l_1538 = (VECTOR(uint64_t, 8))(18446744073709551615UL, (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0xC5534C5329BB0537L), 0xC5534C5329BB0537L), 0xC5534C5329BB0537L, 18446744073709551615UL, 0xC5534C5329BB0537L);
                    uint64_t l_1539 = 18446744073709551614UL;
                    int32_t *l_1540 = (void*)0;
                    int32_t *l_1541 = &l_1535[4];
                    int32_t *l_1542[10][3] = {{&l_1535[1],&l_1535[1],&l_1535[1]},{&l_1535[1],&l_1535[1],&l_1535[1]},{&l_1535[1],&l_1535[1],&l_1535[1]},{&l_1535[1],&l_1535[1],&l_1535[1]},{&l_1535[1],&l_1535[1],&l_1535[1]},{&l_1535[1],&l_1535[1],&l_1535[1]},{&l_1535[1],&l_1535[1],&l_1535[1]},{&l_1535[1],&l_1535[1],&l_1535[1]},{&l_1535[1],&l_1535[1],&l_1535[1]},{&l_1535[1],&l_1535[1],&l_1535[1]}};
                    int32_t *l_1543 = &l_1535[4];
                    int i, j;
                    l_1408 ^= (GROUP_DIVERGE(2, 1) , 1L);
                    l_1543 = (l_1542[9][0] = ((((VECTOR(int64_t, 16))(1L, l_1527, ((VECTOR(int64_t, 2))(l_1528.s45)), (l_1530 = ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 16))(l_1529.wwyzwxyxxxwxywyx)).s1f)).yxxyxyyy)).s65)).odd), l_1531, 2L, ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 4))(l_1532.yyzx)).hi)), ((VECTOR(int64_t, 4))(l_1533.s7314)), ((VECTOR(int64_t, 2))(0L, 0x6E663E54CE786EFDL)), 0L)).s1 , 0x494264A50E30C93CL) , (l_1541 = ((l_1539 = ((VECTOR(uint64_t, 4))(mad_sat(((VECTOR(uint64_t, 2))(abs_diff(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))((-3L), 0x7C90E7346EAF8306L)), 0x0044F16B14788422L, 0x785711EF043F510CL)).xwzwwwwx)).s12, ((VECTOR(int64_t, 2))(l_1534.s47))))).yyxx, ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 16))(l_1535[4], 0xA38F1245766BF135L, 2UL, ((VECTOR(uint64_t, 4))(l_1536.xxxy)), 0UL, (l_1537[0][6] = FAKE_DIVERGE(p_1544->local_0_offset, get_local_id(0), 10)), ((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 2))(l_1538.s13)))).hi, 18446744073709551610UL, 0xBC92A8F9A5DF9624L, 1UL, 18446744073709551611UL, 0xEDB839824FC0C14EL, 0xFA0624AF91A68CEAL)).sfa5b)), ((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 2))(18446744073709551606UL, 0x7F360B45C4652C0CL)))).yyyy))).x) , (l_1540 = (void*)0)))));
                }
            }
            unsigned int result = 0;
            result += l_1408;
            result += l_1487;
            int l_1488_i0;
            for (l_1488_i0 = 0; l_1488_i0 < 8; l_1488_i0++) {
                result += l_1488[l_1488_i0];
            }
            result += l_1510;
            atomic_add(&p_1544->g_special_values[93 * get_linear_group_id() + 14], result);
        }
        else
        { /* block id: 735 */
            (1 + 1);
        }
        return l_1402[0][7];
    }
    return p_1544->g_1363;
}


/* ------------------------------------------ */
/* 
 * reads : p_1544->g_415.f4 p_1544->g_641 p_1544->g_642 p_1544->g_411.f1 p_1544->g_228.f1 p_1544->g_228 p_1544->g_483.f0 p_1544->g_732.f0 p_1544->g_170 p_1544->g_171 p_1544->g_340 p_1544->g_116 p_1544->g_117 p_1544->g_854 p_1544->g_247 p_1544->g_463.f0 p_1544->g_640 p_1544->g_867 p_1544->g_881 p_1544->g_882 p_1544->g_884 p_1544->g_890 p_1544->g_277 p_1544->g_143 p_1544->g_248 p_1544->g_674 p_1544->g_950 p_1544->g_225 p_1544->g_966 p_1544->g_223.f3 p_1544->g_975 p_1544->g_411.f3 p_1544->g_732.f3
 * writes: p_1544->g_732.f0 p_1544->g_411.f1 p_1544->g_228.f1 p_1544->g_517 p_1544->g_223.f1 p_1544->g_171 p_1544->g_706 p_1544->g_365.f3 p_1544->g_463.f0 p_1544->g_117 p_1544->g_463.f3 p_1544->g_143 p_1544->g_854.f2 p_1544->g_223 p_1544->g_225 p_1544->g_210 p_1544->g_248 p_1544->g_209.f1 p_1544->g_411.f3 p_1544->g_228.f3
 */
int32_t  func_93(int32_t * p_94, int32_t ** p_95, int32_t * p_96, struct S4 * p_1544)
{ /* block id: 347 */
    uint8_t l_781[5][3] = {{0x20L,0x20L,0x07L},{0x20L,0x20L,0x07L},{0x20L,0x20L,0x07L},{0x20L,0x20L,0x07L},{0x20L,0x20L,0x07L}};
    struct S3 *l_789 = &p_1544->g_228;
    struct S3 **l_788 = &l_789;
    struct S2 l_790 = {7UL};
    uint16_t *l_791[8] = {&p_1544->g_404.f0,&p_1544->g_404.f0,&p_1544->g_404.f0,&p_1544->g_404.f0,&p_1544->g_404.f0,&p_1544->g_404.f0,&p_1544->g_404.f0,&p_1544->g_404.f0};
    uint16_t l_792 = 0x1E89L;
    int32_t l_793 = 0L;
    int32_t l_926 = (-1L);
    int32_t l_927 = 0x6A14E661L;
    int32_t l_928 = 0x6EE1E76AL;
    int32_t l_929 = (-7L);
    int32_t l_933[7];
    uint32_t l_934 = 0x50D6076CL;
    struct S2 l_943[2][8] = {{{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL}},{{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL},{18446744073709551606UL}}};
    uint8_t l_945 = 0xB1L;
    uint32_t *l_967 = &p_1544->g_228.f0;
    uint64_t l_981 = 0x1C6AA0644987713AL;
    int32_t l_992 = 0x6A61F618L;
    VECTOR(int8_t, 2) l_994 = (VECTOR(int8_t, 2))((-4L), (-1L));
    int8_t l_1006 = 0x50L;
    int i, j;
    for (i = 0; i < 7; i++)
        l_933[i] = 0L;
    if (((p_94 != (void*)0) == ((safe_mul_func_int16_t_s_s(l_781[3][1], (GROUP_DIVERGE(1, 1) == (safe_mod_func_uint64_t_u_u(p_1544->g_415.f4, 0x8794CBD5E717CEE0L))))) || (l_793 = ((safe_add_func_uint8_t_u_u((**p_1544->g_641), ((safe_lshift_func_int8_t_s_u((l_788 != (((*l_789) , p_1544->g_483.f0) , &l_789)), 0)) && l_781[3][1]))) , l_792)))))
    { /* block id: 349 */
        uint8_t ****l_794 = &p_1544->g_640;
        int32_t l_851 = 0x2F82E3B9L;
        VECTOR(int32_t, 16) l_858 = (VECTOR(int32_t, 16))(0x787EC50EL, (VECTOR(int32_t, 4))(0x787EC50EL, (VECTOR(int32_t, 2))(0x787EC50EL, 2L), 2L), 2L, 0x787EC50EL, 2L, (VECTOR(int32_t, 2))(0x787EC50EL, 2L), (VECTOR(int32_t, 2))(0x787EC50EL, 2L), 0x787EC50EL, 2L, 0x787EC50EL, 2L);
        VECTOR(int8_t, 8) l_880 = (VECTOR(int8_t, 8))(0x47L, (VECTOR(int8_t, 4))(0x47L, (VECTOR(int8_t, 2))(0x47L, 0x4DL), 0x4DL), 0x4DL, 0x47L, 0x4DL);
        struct S0 **l_944 = &p_1544->g_210;
        int64_t *l_948 = (void*)0;
        int64_t *l_949 = &p_1544->g_463.f0;
        int i;
        if (((void*)0 != l_794))
        { /* block id: 350 */
            int8_t *l_844 = (void*)0;
            int8_t *l_845 = &p_1544->g_517;
            uint64_t *l_846 = (void*)0;
            uint64_t *l_847 = (void*)0;
            uint64_t *l_848 = (void*)0;
            uint64_t *l_849 = (void*)0;
            uint64_t *l_850 = (void*)0;
            if ((atomic_inc(&p_1544->l_atomic_input[69]) == 1))
            { /* block id: 352 */
                int16_t l_795 = 0x6D59L;
                uint64_t l_837[7][8][4] = {{{9UL,7UL,18446744073709551609UL,0xB90ED224B4D5081EL},{9UL,7UL,18446744073709551609UL,0xB90ED224B4D5081EL},{9UL,7UL,18446744073709551609UL,0xB90ED224B4D5081EL},{9UL,7UL,18446744073709551609UL,0xB90ED224B4D5081EL},{9UL,7UL,18446744073709551609UL,0xB90ED224B4D5081EL},{9UL,7UL,18446744073709551609UL,0xB90ED224B4D5081EL},{9UL,7UL,18446744073709551609UL,0xB90ED224B4D5081EL},{9UL,7UL,18446744073709551609UL,0xB90ED224B4D5081EL}},{{9UL,7UL,18446744073709551609UL,0xB90ED224B4D5081EL},{9UL,7UL,18446744073709551609UL,0xB90ED224B4D5081EL},{9UL,7UL,18446744073709551609UL,0xB90ED224B4D5081EL},{9UL,7UL,18446744073709551609UL,0xB90ED224B4D5081EL},{9UL,7UL,18446744073709551609UL,0xB90ED224B4D5081EL},{9UL,7UL,18446744073709551609UL,0xB90ED224B4D5081EL},{9UL,7UL,18446744073709551609UL,0xB90ED224B4D5081EL},{9UL,7UL,18446744073709551609UL,0xB90ED224B4D5081EL}},{{9UL,7UL,18446744073709551609UL,0xB90ED224B4D5081EL},{9UL,7UL,18446744073709551609UL,0xB90ED224B4D5081EL},{9UL,7UL,18446744073709551609UL,0xB90ED224B4D5081EL},{9UL,7UL,18446744073709551609UL,0xB90ED224B4D5081EL},{9UL,7UL,18446744073709551609UL,0xB90ED224B4D5081EL},{9UL,7UL,18446744073709551609UL,0xB90ED224B4D5081EL},{9UL,7UL,18446744073709551609UL,0xB90ED224B4D5081EL},{9UL,7UL,18446744073709551609UL,0xB90ED224B4D5081EL}},{{9UL,7UL,18446744073709551609UL,0xB90ED224B4D5081EL},{9UL,7UL,18446744073709551609UL,0xB90ED224B4D5081EL},{9UL,7UL,18446744073709551609UL,0xB90ED224B4D5081EL},{9UL,7UL,18446744073709551609UL,0xB90ED224B4D5081EL},{9UL,7UL,18446744073709551609UL,0xB90ED224B4D5081EL},{9UL,7UL,18446744073709551609UL,0xB90ED224B4D5081EL},{9UL,7UL,18446744073709551609UL,0xB90ED224B4D5081EL},{9UL,7UL,18446744073709551609UL,0xB90ED224B4D5081EL}},{{9UL,7UL,18446744073709551609UL,0xB90ED224B4D5081EL},{9UL,7UL,18446744073709551609UL,0xB90ED224B4D5081EL},{9UL,7UL,18446744073709551609UL,0xB90ED224B4D5081EL},{9UL,7UL,18446744073709551609UL,0xB90ED224B4D5081EL},{9UL,7UL,18446744073709551609UL,0xB90ED224B4D5081EL},{9UL,7UL,18446744073709551609UL,0xB90ED224B4D5081EL},{9UL,7UL,18446744073709551609UL,0xB90ED224B4D5081EL},{9UL,7UL,18446744073709551609UL,0xB90ED224B4D5081EL}},{{9UL,7UL,18446744073709551609UL,0xB90ED224B4D5081EL},{9UL,7UL,18446744073709551609UL,0xB90ED224B4D5081EL},{9UL,7UL,18446744073709551609UL,0xB90ED224B4D5081EL},{9UL,7UL,18446744073709551609UL,0xB90ED224B4D5081EL},{9UL,7UL,18446744073709551609UL,0xB90ED224B4D5081EL},{9UL,7UL,18446744073709551609UL,0xB90ED224B4D5081EL},{9UL,7UL,18446744073709551609UL,0xB90ED224B4D5081EL},{9UL,7UL,18446744073709551609UL,0xB90ED224B4D5081EL}},{{9UL,7UL,18446744073709551609UL,0xB90ED224B4D5081EL},{9UL,7UL,18446744073709551609UL,0xB90ED224B4D5081EL},{9UL,7UL,18446744073709551609UL,0xB90ED224B4D5081EL},{9UL,7UL,18446744073709551609UL,0xB90ED224B4D5081EL},{9UL,7UL,18446744073709551609UL,0xB90ED224B4D5081EL},{9UL,7UL,18446744073709551609UL,0xB90ED224B4D5081EL},{9UL,7UL,18446744073709551609UL,0xB90ED224B4D5081EL},{9UL,7UL,18446744073709551609UL,0xB90ED224B4D5081EL}}};
                int i, j, k;
                l_795 = 0x59F7CF33L;
                for (l_795 = 0; (l_795 == (-29)); --l_795)
                { /* block id: 356 */
                    int32_t l_798 = 0x17CF2F30L;
                    uint8_t l_799 = 1UL;
                    int32_t *l_802 = &l_798;
                    int32_t *l_803 = &l_798;
                    l_798 ^= 0L;
                    --l_799;
                    l_803 = (l_802 = (void*)0);
                }
                for (l_795 = (-11); (l_795 >= (-23)); l_795 = safe_sub_func_uint16_t_u_u(l_795, 3))
                { /* block id: 364 */
                    int32_t l_806 = 0x7F583758L;
                    uint32_t l_824 = 4294967295UL;
                    if (l_806)
                    { /* block id: 365 */
                        uint16_t l_807 = 0x3264L;
                        uint32_t l_810[7][9] = {{7UL,7UL,0x625427B3L,1UL,0UL,1UL,0x625427B3L,7UL,7UL},{7UL,7UL,0x625427B3L,1UL,0UL,1UL,0x625427B3L,7UL,7UL},{7UL,7UL,0x625427B3L,1UL,0UL,1UL,0x625427B3L,7UL,7UL},{7UL,7UL,0x625427B3L,1UL,0UL,1UL,0x625427B3L,7UL,7UL},{7UL,7UL,0x625427B3L,1UL,0UL,1UL,0x625427B3L,7UL,7UL},{7UL,7UL,0x625427B3L,1UL,0UL,1UL,0x625427B3L,7UL,7UL},{7UL,7UL,0x625427B3L,1UL,0UL,1UL,0x625427B3L,7UL,7UL}};
                        uint8_t l_813 = 255UL;
                        int i, j;
                        l_806 = 0x2B477211L;
                        --l_807;
                        l_810[4][7]--;
                        l_813++;
                    }
                    else
                    { /* block id: 370 */
                        int16_t l_816 = 1L;
                        uint64_t l_817 = 0UL;
                        int16_t l_820 = 0x14FBL;
                        uint32_t l_821 = 4294967289UL;
                        struct S1 l_822 = {-1L,0x725FL,0L,-1L,0x0DL};/* VOLATILE GLOBAL l_822 */
                        struct S1 l_823 = {7L,0x6BD0L,0L,7L,0x1EL};/* VOLATILE GLOBAL l_823 */
                        l_817++;
                        l_821 = (l_806 = l_820);
                        l_823 = l_822;
                    }
                    if (l_824)
                    { /* block id: 376 */
                        VECTOR(int32_t, 8) l_826 = (VECTOR(int32_t, 8))(0x3D72DBCFL, (VECTOR(int32_t, 4))(0x3D72DBCFL, (VECTOR(int32_t, 2))(0x3D72DBCFL, (-3L)), (-3L)), (-3L), 0x3D72DBCFL, (-3L));
                        int32_t *l_825 = (void*)0;
                        int32_t *l_827 = (void*)0;
                        int32_t *l_828 = (void*)0;
                        int32_t l_829[8] = {1L,1L,1L,1L,1L,1L,1L,1L};
                        int i;
                        l_825 = (void*)0;
                        l_828 = l_827;
                        l_806 |= l_829[3];
                    }
                    else
                    { /* block id: 380 */
                        uint16_t l_830 = 0xD8E9L;
                        int64_t l_833 = (-6L);
                        int32_t l_835 = 0x178575B7L;
                        int32_t *l_834 = &l_835;
                        int32_t *l_836[4][6] = {{&l_835,&l_835,&l_835,&l_835,&l_835,&l_835},{&l_835,&l_835,&l_835,&l_835,&l_835,&l_835},{&l_835,&l_835,&l_835,&l_835,&l_835,&l_835},{&l_835,&l_835,&l_835,&l_835,&l_835,&l_835}};
                        int i, j;
                        l_830--;
                        l_834 = (l_833 , (void*)0);
                        l_836[2][3] = (void*)0;
                    }
                }
                l_837[2][1][0]++;
                unsigned int result = 0;
                result += l_795;
                int l_837_i0, l_837_i1, l_837_i2;
                for (l_837_i0 = 0; l_837_i0 < 7; l_837_i0++) {
                    for (l_837_i1 = 0; l_837_i1 < 8; l_837_i1++) {
                        for (l_837_i2 = 0; l_837_i2 < 4; l_837_i2++) {
                            result += l_837[l_837_i0][l_837_i1][l_837_i2];
                        }
                    }
                }
                atomic_add(&p_1544->l_special_values[69], result);
            }
            else
            { /* block id: 387 */
                (1 + 1);
            }
            for (p_1544->g_732.f0 = (-2); (p_1544->g_732.f0 <= 57); p_1544->g_732.f0 = safe_add_func_uint16_t_u_u(p_1544->g_732.f0, 3))
            { /* block id: 392 */
                return (*p_1544->g_170);
            }
            if ((p_1544->g_340.z && (l_851 = ((safe_add_func_uint8_t_u_u(((**p_1544->g_641) = 0x55L), ((*l_845) = (!4L)))) && ((((VECTOR(int64_t, 2))(0L, 7L)).odd , (void*)0) == &p_1544->g_116)))))
            { /* block id: 398 */
                return (**p_1544->g_116);
            }
            else
            { /* block id: 400 */
                int8_t l_855 = 1L;
                int16_t *l_861 = &p_1544->g_223.f1;
                uint32_t *l_864 = (void*)0;
                uint32_t *l_865[7];
                int32_t l_866 = 0x6440B67CL;
                int i;
                for (i = 0; i < 7; i++)
                    l_865[i] = &p_1544->g_228.f3;
                (*p_1544->g_116) = func_99(l_851, (safe_mul_func_int8_t_s_s((p_1544->g_854 , (((l_855 == ((l_855 == (((void*)0 != p_1544->g_247) && (safe_add_func_uint16_t_u_u(((l_866 = (l_851 & (((VECTOR(int32_t, 4))(max(((VECTOR(int32_t, 16))(l_858.s8db0833080af9ff0)).scc78, ((VECTOR(int32_t, 16))(((*p_94) = (safe_lshift_func_int16_t_s_u(((*l_861) = 0L), 15))), (safe_rshift_func_int8_t_s_u(((0L <= FAKE_DIVERGE(p_1544->group_1_offset, get_group_id(1), 10)) < (**p_95)), l_790.f0)), 0L, (-3L), 1L, 0x42B7569BL, 0L, 0L, (*p_1544->g_117), l_858.s3, ((VECTOR(int32_t, 2))(2L)), ((VECTOR(int32_t, 4))(0x48156C1BL)))).s4422))).y , 0x40L))) <= l_781[3][1]), 0x34EAL)))) == 1UL)) , 250UL) <= 0UL)), (-5L))), p_1544);
                return p_1544->g_867;
            }
        }
        else
        { /* block id: 407 */
            int8_t *l_872 = &p_1544->g_517;
            VECTOR(int8_t, 8) l_879 = (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, (-8L)), (-8L)), (-8L), 1L, (-8L));
            VECTOR(int8_t, 16) l_883 = (VECTOR(int8_t, 16))(0x24L, (VECTOR(int8_t, 4))(0x24L, (VECTOR(int8_t, 2))(0x24L, 0x0CL), 0x0CL), 0x0CL, 0x24L, 0x0CL, (VECTOR(int8_t, 2))(0x24L, 0x0CL), (VECTOR(int8_t, 2))(0x24L, 0x0CL), 0x24L, 0x0CL, 0x24L, 0x0CL);
            VECTOR(uint64_t, 16) l_887 = (VECTOR(uint64_t, 16))(0x48A93F62D4214E87L, (VECTOR(uint64_t, 4))(0x48A93F62D4214E87L, (VECTOR(uint64_t, 2))(0x48A93F62D4214E87L, 0xF8B84FBE3BCE2762L), 0xF8B84FBE3BCE2762L), 0xF8B84FBE3BCE2762L, 0x48A93F62D4214E87L, 0xF8B84FBE3BCE2762L, (VECTOR(uint64_t, 2))(0x48A93F62D4214E87L, 0xF8B84FBE3BCE2762L), (VECTOR(uint64_t, 2))(0x48A93F62D4214E87L, 0xF8B84FBE3BCE2762L), 0x48A93F62D4214E87L, 0xF8B84FBE3BCE2762L, 0x48A93F62D4214E87L, 0xF8B84FBE3BCE2762L);
            int32_t l_891 = (-1L);
            uint8_t **l_894 = &p_1544->g_642[2][1];
            struct S2 *l_908 = (void*)0;
            VECTOR(uint16_t, 4) l_915 = (VECTOR(uint16_t, 4))(0x58A3L, (VECTOR(uint16_t, 2))(0x58A3L, 0x0269L), 0x0269L);
            int32_t l_922 = (-1L);
            int32_t l_923 = 4L;
            int32_t l_924 = 0x087F95D3L;
            int32_t l_925 = (-6L);
            int32_t l_930 = (-7L);
            int32_t l_932[2][4];
            int i, j;
            for (i = 0; i < 2; i++)
            {
                for (j = 0; j < 4; j++)
                    l_932[i][j] = 0x26B5200DL;
            }
            if (((safe_div_func_uint64_t_u_u((safe_sub_func_int16_t_s_s(((((void*)0 == l_872) ^ (5UL ^ 3L)) || ((GROUP_DIVERGE(1, 1) > (safe_lshift_func_uint16_t_u_s((safe_lshift_func_uint16_t_u_u((l_792 & (+(p_1544->g_463.f3 = ((safe_rshift_func_int8_t_s_s(((*l_872) = ((VECTOR(int8_t, 16))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 16),((VECTOR(int8_t, 4))(mad_sat(((VECTOR(int8_t, 2))(0L, (-1L))).xxyx, ((VECTOR(int8_t, 2))(l_879.s14)).yyxy, ((VECTOR(int8_t, 8))(l_880.s03254251)).odd))).yzxyxxzyxyxxxxxz, ((VECTOR(int8_t, 2))(p_1544->g_881.s71)).xxyxxyxxyxyyxxxy, ((VECTOR(int8_t, 8))(rotate(((VECTOR(int8_t, 4))(0x08L, l_781[2][0], 6L, (-9L))).xwyzwywz, ((VECTOR(int8_t, 8))(0x6FL, ((VECTOR(int8_t, 2))(p_1544->g_882.yy)), ((VECTOR(int8_t, 2))(l_883.s29)), ((VECTOR(int8_t, 2))(p_1544->g_884.s4b)), 0x48L))))).s0373606700221451))).s4), 4)) || (safe_rshift_func_int16_t_s_s((((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 8))(l_887.sa8263fe7)).s36)))), 18446744073709551615UL, 0x707773A16212E84DL)).z != ((VECTOR(uint64_t, 8))(sub_sat(((VECTOR(uint64_t, 8))(((safe_rshift_func_int8_t_s_u((l_891 |= p_1544->g_890), ((****l_794) = ((safe_div_func_int8_t_s_s(((void*)0 == l_894), 1L)) > 0L)))) & GROUP_DIVERGE(1, 1)), 0xA417A39BA4DE114FL, 18446744073709551615UL, 0UL, 0x86BB591F988B6181L, ((VECTOR(uint64_t, 2))(1UL)), 0x47A931751264C35CL)), ((VECTOR(uint64_t, 8))(6UL))))).s0), 8)))))), l_880.s0)), l_883.s2))) && l_891)), (-1L))), 0x7E58556DBBEFB967L)) != l_793))
            { /* block id: 412 */
                uint32_t l_907[6][2][3] = {{{0UL,8UL,8UL},{0UL,8UL,8UL}},{{0UL,8UL,8UL},{0UL,8UL,8UL}},{{0UL,8UL,8UL},{0UL,8UL,8UL}},{{0UL,8UL,8UL},{0UL,8UL,8UL}},{{0UL,8UL,8UL},{0UL,8UL,8UL}},{{0UL,8UL,8UL},{0UL,8UL,8UL}}};
                struct S2 *l_916 = &l_790;
                int i, j, k;
                (**p_1544->g_116) = (((l_851 || (safe_add_func_uint16_t_u_u((++(*p_1544->g_277)), (((safe_add_func_uint16_t_u_u((safe_mod_func_int32_t_s_s(0L, ((safe_mul_func_int8_t_s_s(l_858.s2, 0x4BL)) || (safe_mul_func_int16_t_s_s((((*p_1544->g_170) <= l_907[1][1][2]) < (~(l_908 == ((((safe_lshift_func_int16_t_s_s(l_879.s0, (safe_mul_func_uint16_t_u_u((safe_add_func_uint16_t_u_u(((VECTOR(uint16_t, 16))(l_915.xzyzyywyyzwxwwwz)).sa, (((((l_879.s2 != 0L) || l_781[3][1]) , l_907[1][0][2]) , &p_1544->g_225) != (void*)0))), GROUP_DIVERGE(2, 1))))) < l_915.y) || l_793) , l_916)))), l_887.s7))))), 9L)) && l_879.s3) != 4294967295UL)))) && l_879.s7) >= (**p_1544->g_641));
            }
            else
            { /* block id: 415 */
                int32_t *l_917 = &l_851;
                int32_t *l_918 = (void*)0;
                int32_t *l_919 = &p_1544->g_118[1][3][2];
                int32_t *l_920 = &p_1544->g_171[5];
                int32_t *l_921[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                int16_t l_931 = (-1L);
                int i;
                l_934++;
                for (p_1544->g_854.f2 = 9; (p_1544->g_854.f2 >= 59); p_1544->g_854.f2 = safe_add_func_int32_t_s_s(p_1544->g_854.f2, 5))
                { /* block id: 419 */
                    if ((*p_1544->g_247))
                        break;
                    for (l_793 = 7; (l_793 <= 12); l_793++)
                    { /* block id: 423 */
                        return (*p_1544->g_247);
                    }
                    for (p_1544->g_411.f1 = 11; (p_1544->g_411.f1 < 56); ++p_1544->g_411.f1)
                    { /* block id: 428 */
                        return (*p_94);
                    }
                }
                (*p_1544->g_116) = ((l_943[1][4] , ((void*)0 != l_944)) , (*p_1544->g_116));
                l_945--;
            }
            (*p_94) ^= l_792;
        }
        (*p_1544->g_117) ^= (((*l_949) &= p_1544->g_674.sc) < GROUP_DIVERGE(0, 1));
        (*p_1544->g_225) = p_1544->g_950;
    }
    else
    { /* block id: 440 */
        struct S1 *l_965 = &p_1544->g_365;
        if ((atomic_inc(&p_1544->l_atomic_input[5]) == 5))
        { /* block id: 442 */
            struct S2 **l_951 = (void*)0;
            struct S2 l_954[1] = {{0x964F30F478D091CFL}};
            struct S2 *l_953 = &l_954[0];
            struct S2 **l_952 = &l_953;
            uint32_t l_959 = 0xC8B0C501L;
            uint8_t l_960 = 0x42L;
            VECTOR(int32_t, 4) l_961 = (VECTOR(int32_t, 4))((-8L), (VECTOR(int32_t, 2))((-8L), (-3L)), (-3L));
            uint32_t l_962 = 4UL;
            uint32_t l_963 = 1UL;
            uint32_t l_964 = 4294967291UL;
            int i;
            l_952 = l_951;
            for (l_954[0].f0 = 0; (l_954[0].f0 > 43); ++l_954[0].f0)
            { /* block id: 446 */
                struct S1 l_957 = {0x526A9E00F21EF272L,0L,0x2F65E0EEL,-8L,-5L};/* VOLATILE GLOBAL l_957 */
                struct S1 l_958[1][2][1] = {{{{0L,0x64FFL,1L,0x7D3C893307C5B8FDL,0x3EL}},{{0L,0x64FFL,1L,0x7D3C893307C5B8FDL,0x3EL}}}};
                int i, j, k;
                l_958[0][0][0] = l_957;
            }
            l_960 |= l_959;
            l_964 ^= (l_963 |= (l_962 = l_961.y));
            unsigned int result = 0;
            int l_954_i0;
            for (l_954_i0 = 0; l_954_i0 < 1; l_954_i0++) {
                result += l_954[l_954_i0].f0;
            }
            result += l_959;
            result += l_960;
            result += l_961.w;
            result += l_961.z;
            result += l_961.y;
            result += l_961.x;
            result += l_962;
            result += l_963;
            result += l_964;
            atomic_add(&p_1544->l_special_values[5], result);
        }
        else
        { /* block id: 453 */
            (1 + 1);
        }
        (*p_1544->g_966) = l_965;
    }
    atomic_max(&p_1544->g_atomic_reduction[get_linear_group_id()], (l_967 == (void*)0));
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (get_linear_local_id() == 0)
        p_1544->v_collective += p_1544->g_atomic_reduction[get_linear_group_id()];
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    for (p_1544->g_223.f3 = 0; (p_1544->g_223.f3 > (-21)); --p_1544->g_223.f3)
    { /* block id: 461 */
        struct S0 **l_970 = &p_1544->g_210;
        int32_t *l_971[8] = {&p_1544->g_458,&p_1544->g_458,&p_1544->g_458,&p_1544->g_458,&p_1544->g_458,&p_1544->g_458,&p_1544->g_458,&p_1544->g_458};
        VECTOR(uint8_t, 8) l_972 = (VECTOR(uint8_t, 8))(0x52L, (VECTOR(uint8_t, 4))(0x52L, (VECTOR(uint8_t, 2))(0x52L, 0x04L), 0x04L), 0x04L, 0x52L, 0x04L);
        VECTOR(uint8_t, 4) l_976 = (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 5UL), 5UL);
        uint64_t *l_982 = (void*)0;
        uint64_t *l_983 = (void*)0;
        uint64_t *l_984 = (void*)0;
        uint64_t *l_985 = (void*)0;
        uint64_t *l_986 = (void*)0;
        uint64_t *l_987 = (void*)0;
        uint32_t *l_988 = &p_1544->g_411.f3;
        int8_t *l_989 = &p_1544->g_270;
        int16_t *l_990 = (void*)0;
        int16_t *l_991 = (void*)0;
        int32_t *l_993 = &p_1544->g_564[4][1][2];
        VECTOR(int8_t, 2) l_995 = (VECTOR(int8_t, 2))(0x62L, (-6L));
        uint32_t l_1011 = 4294967295UL;
        uint64_t l_1048 = 0x3628B309D05C7A1DL;
        VECTOR(uint16_t, 4) l_1068 = (VECTOR(uint16_t, 4))(0x42B4L, (VECTOR(uint16_t, 2))(0x42B4L, 0x0E15L), 0x0E15L);
        struct S2 **l_1069 = &p_1544->g_776[2];
        int i;
        (*l_970) = (void*)0;
        (*p_1544->g_247) ^= (l_927 |= (l_928 |= (**p_95)));
        if (((((VECTOR(uint16_t, 16))(upsample(((VECTOR(uint8_t, 4))(l_972.s6721)).wzxyxywwwzwwxyyy, ((VECTOR(uint8_t, 2))(0xAEL, 1UL)).yxyyxyxxyxyxxxyx))).s2 ^ ((safe_mul_func_int16_t_s_s(((l_790.f0 , p_1544->g_975) != (((VECTOR(int32_t, 8))(0L, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(upsample(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 8))(rotate(((VECTOR(int16_t, 2))(min(((VECTOR(int16_t, 4))(hadd(((VECTOR(int16_t, 8))((p_1544->g_318.s1 = (((*l_989) = ((((VECTOR(uint8_t, 16))(((**p_1544->g_641) = (***p_1544->g_640)), ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 16))(l_976.xxwzwyxwzwxyyxzx)).sd5)).xxxx)), ((VECTOR(uint8_t, 8))((l_790.f0 > ((1L == 0x268A9F44L) <= ((**p_1544->g_116) = (*p_1544->g_117)))), (((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 4))(upsample(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(p_1544->g_977.sb5)), 0xE27FL, 0x2D2EL)), ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(0x4BF2L, 9UL, 0x8A96L, 0x4BB4L)).wzwzyzyw)).hi))))).y || ((safe_mul_func_int16_t_s_s(((VECTOR(int16_t, 16))(p_1544->g_980.s1cb948ad18fde025)).s6, GROUP_DIVERGE(2, 1))) >= ((*l_988) = ((l_929 |= l_981) == (GROUP_DIVERGE(2, 1) ^ (p_1544->g_383.y &= p_1544->g_297.x)))))), ((VECTOR(uint8_t, 4))(0x1CL)), 0x75L, 255UL)), ((VECTOR(uint8_t, 2))(0xE6L)), 247UL)).s5 <= l_934) < l_945)) < l_928)), 4L, ((VECTOR(int16_t, 2))(0x1406L)), 0x16E1L, (-10L), 0x5A20L, 0x4F30L)).even, ((VECTOR(int16_t, 4))(0x6CB5L))))).even, (int16_t)1L))).xxxxxxxx, ((VECTOR(int16_t, 8))(0x0D49L))))))).odd, ((VECTOR(uint16_t, 4))(0UL))))).odd)), ((VECTOR(int32_t, 4))(0x759CADDCL)), 0x0B2EAD00L)).s0 , (void*)0)), l_981)) == l_992)) , (*p_1544->g_247)))
        { /* block id: 473 */
            uint64_t *l_1000[8] = {&l_981,&l_981,&l_981,&l_981,&l_981,&l_981,&l_981,&l_981};
            int32_t l_1005 = 0x13C2C360L;
            uint64_t l_1044[4];
            int i;
            for (i = 0; i < 4; i++)
                l_1044[i] = 0xA72578D7F208324CL;
            atomic_and(&p_1544->l_atomic_reduction[0], (*p_1544->g_117) + get_linear_global_id());
            barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
            if (get_linear_local_id() == 0)
                p_1544->v_collective += p_1544->l_atomic_reduction[0];
            barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
            (**p_95) = ((l_993 == (void*)0) == ((VECTOR(int8_t, 8))(safe_clamp_func(VECTOR(int8_t, 8),VECTOR(int8_t, 8),((VECTOR(int8_t, 4))(1L, 0x4DL, (-3L), 0x29L)).wwxzyyzw, ((VECTOR(int8_t, 16))(l_994.yxyxxxxyxxxyxyyx)).even, ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(clz(((VECTOR(int8_t, 4))(1L, ((VECTOR(int8_t, 2))(l_995.yy)), 0x39L))))), (safe_mul_func_int8_t_s_s((safe_mod_func_uint64_t_u_u((GROUP_DIVERGE(0, 1) ^ (l_793 = FAKE_DIVERGE(p_1544->local_1_offset, get_local_id(1), 10))), ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))((-6L), (-7L))).yyyx)).y)), (safe_mul_func_int8_t_s_s(((safe_sub_func_uint8_t_u_u(0x66L, ((p_1544->g_347.y = 0x34E09206B680FA98L) ^ (l_1005 = (l_1005 & (l_1006 && ((safe_lshift_func_int8_t_s_s((safe_lshift_func_int16_t_s_s((((void*)0 == l_971[0]) | (l_1011 |= (*p_1544->g_277))), 0)), 5)) > l_1005))))))) , l_1005), 246UL)))), 0L, (-3L), (-1L))).s10)))).yyxxxyxx))).s3);
            for (p_1544->g_209.f1 = 16; (p_1544->g_209.f1 > 4); p_1544->g_209.f1 = safe_sub_func_uint64_t_u_u(p_1544->g_209.f1, 7))
            { /* block id: 482 */
                VECTOR(uint16_t, 4) l_1029 = (VECTOR(uint16_t, 4))(6UL, (VECTOR(uint16_t, 2))(6UL, 0x4D25L), 0x4D25L);
                int32_t l_1033 = 0x7935438DL;
                int32_t l_1045 = 0L;
                int i;
                for (l_992 = (-10); (l_992 > 13); l_992++)
                { /* block id: 485 */
                    int32_t l_1032 = 0L;
                    (*p_1544->g_117) ^= (-9L);
                    if ((atomic_inc(&p_1544->l_atomic_input[82]) == 8))
                    { /* block id: 488 */
                        struct S2 l_1016 = {1UL};
                        uint8_t l_1017 = 0x5CL;
                        VECTOR(int16_t, 2) l_1018 = (VECTOR(int16_t, 2))(0x39D2L, (-5L));
                        VECTOR(int32_t, 4) l_1019 = (VECTOR(int32_t, 4))(0x06ED4469L, (VECTOR(int32_t, 2))(0x06ED4469L, 0x1CE7A4D5L), 0x1CE7A4D5L);
                        int16_t l_1020[1];
                        struct S0 l_1021 = {0x0E59L,0L,65534UL,-3L};/* VOLATILE GLOBAL l_1021 */
                        struct S0 l_1022 = {0xFDFFL,0L,65527UL,1L};/* VOLATILE GLOBAL l_1022 */
                        int i;
                        for (i = 0; i < 1; i++)
                            l_1020[i] = 0x1A2DL;
                        l_1022 = (l_1016 , (((l_1017 = 1L) , ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))(l_1018.yyyyyxyy)).s66)).yxyxyyyyxxxyxxyy)))).s1) , (((VECTOR(int32_t, 2))(l_1019.wy)).odd , (l_1020[0] , l_1021))));
                        unsigned int result = 0;
                        result += l_1016.f0;
                        result += l_1017;
                        result += l_1018.y;
                        result += l_1018.x;
                        result += l_1019.w;
                        result += l_1019.z;
                        result += l_1019.y;
                        result += l_1019.x;
                        int l_1020_i0;
                        for (l_1020_i0 = 0; l_1020_i0 < 1; l_1020_i0++) {
                            result += l_1020[l_1020_i0];
                        }
                        result += l_1021.f0;
                        result += l_1021.f1;
                        result += l_1021.f2;
                        result += l_1021.f3;
                        result += l_1022.f0;
                        result += l_1022.f1;
                        result += l_1022.f2;
                        result += l_1022.f3;
                        atomic_add(&p_1544->l_special_values[82], result);
                    }
                    else
                    { /* block id: 491 */
                        (1 + 1);
                    }
                    l_1045 &= (+((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(0x4AFE4E21L, ((VECTOR(int32_t, 2))(upsample(((VECTOR(int16_t, 4))(mul_hi(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(p_1544->g_1023.yyxx)).zxwywzywxzwxzyzy)).odd)).odd, ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(rhadd(((VECTOR(int16_t, 2))(safe_clamp_func(VECTOR(int16_t, 2),VECTOR(int16_t, 2),((VECTOR(int16_t, 4))(0x108AL, (safe_add_func_int32_t_s_s(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(0L, 0x71258FB9L)), ((VECTOR(int32_t, 8))((**p_1544->g_116), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(p_1544->g_1026.s6571443140145654)).s6f)), ((**p_1544->g_116) = (((safe_mul_func_uint16_t_u_u(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(l_1029.zz)).yyxy)).even)), 0x2349L, 0xB787L)).z, (+(safe_sub_func_uint16_t_u_u((l_1032 != (!p_1544->g_318.s0)), ((l_1033 = ((*p_1544->g_619) != (void*)0)) & ((((VECTOR(uint32_t, 2))(1UL, 4294967295UL)).odd ^ ((VECTOR(uint32_t, 8))(max(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))(0x788828E2L, (((*p_94) , (&p_1544->g_247 == &p_94)) != ((l_929 = ((VECTOR(int32_t, 4))(p_1544->g_1034.s4e7a)).y) | (((((**p_1544->g_641) ^= (safe_mul_func_int16_t_s_s((((VECTOR(uint16_t, 16))(p_1544->g_1037.s1340760543156321)).se || (safe_div_func_uint16_t_u_u((((safe_lshift_func_uint16_t_u_s((((safe_div_func_uint16_t_u_u(l_1032, l_1044[3])) ^ l_1029.z) & p_1544->g_209.f1), 11)) >= 0x25L) , (*p_1544->g_277)), (-1L)))), (*p_1544->g_277)))) | l_1029.z) < p_1544->g_404.f1) | l_1032))), 0UL, l_1032, p_1544->g_209.f1, ((VECTOR(uint32_t, 2))(0UL)), 4294967295UL)), 0x9622A80AL, ((VECTOR(uint32_t, 2))(0x337084CAL)), 0x14F5F871L, ((VECTOR(uint32_t, 4))(1UL)))).hi, ((VECTOR(uint32_t, 8))(0xBA14D40DL))))).s3) & 0x234C5804L))))))) >= 65535UL) , (**p_1544->g_116))), 0x4AA1E7B0L, 0x1A1BE511L, 0x1FB711C9L, 0x2B80FD79L)), 0x1EAAB42FL, ((VECTOR(int32_t, 4))(8L)), 0x59DBF136L)).s936d)).w, (-3L))), 1L, 3L)).even, ((VECTOR(int16_t, 2))(0x277CL)), ((VECTOR(int16_t, 2))((-2L)))))), ((VECTOR(int16_t, 2))(0x6978L))))), 0x582DL, 0x5D3FL, l_1032, 0x7EB8L, (-1L), (-1L))).even))).even, ((VECTOR(uint16_t, 2))(1UL))))), ((VECTOR(int32_t, 4))(0x68AF112AL)), ((VECTOR(int32_t, 8))(0x1DDF5F6BL)), 0L)).sf8be)).w);
                }
            }
        }
        else
        { /* block id: 501 */
            uint8_t *l_1055 = (void*)0;
            int32_t l_1070 = 0x614AD6D5L;
            uint32_t *l_1071 = (void*)0;
            uint32_t *l_1072 = &p_1544->g_228.f3;
            atomic_add(&p_1544->g_atomic_reduction[get_linear_group_id()], (((VECTOR(uint16_t, 4))(1UL, 8UL, 0UL, 65535UL)).y > ((((safe_div_func_int32_t_s_s((((VECTOR(uint64_t, 2))(0x91B0629D71B05491L, 0xF5A51B43C58981BEL)).hi & l_1048), (safe_add_func_int8_t_s_s((0x140DL & ((!(safe_add_func_uint8_t_u_u((((void*)0 == l_1055) < (--(*l_988))), (safe_mod_func_uint32_t_u_u((safe_div_func_uint32_t_u_u(((*l_1072) = (safe_lshift_func_int8_t_s_u((((safe_add_func_int32_t_s_s((GROUP_DIVERGE(0, 1) || (safe_rshift_func_uint16_t_u_u(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(l_1068.wwyw)).zzyyzzwywwzywywy)).s4, 11))), ((~(((void*)0 != l_1069) < p_1544->g_732.f3)) <= l_793))) < ((p_1544->g_884.s1 >= FAKE_DIVERGE(p_1544->group_0_offset, get_group_id(0), 10)) != 1UL)) | l_1070), l_994.y))), l_928)), 0x4A469745L))))) != 65535UL)), l_1070)))) | 0x35L) ^ 0x0A87L) || l_1070)));
            barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
            if (get_linear_local_id() == 0)
                p_1544->v_collective += p_1544->g_atomic_reduction[get_linear_group_id()];
            barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        }
        (*p_1544->g_116) = &l_929;
    }
    return l_929;
}


/* ------------------------------------------ */
/* 
 * reads : p_1544->g_775 p_1544->g_619 p_1544->g_116 p_1544->g_117
 * writes: p_1544->g_776 p_1544->g_210
 */
int32_t * func_97(int32_t * p_98, struct S4 * p_1544)
{ /* block id: 343 */
    struct S0 *l_777 = (void*)0;
    struct S0 **l_778[10][5][5] = {{{(void*)0,(void*)0,&p_1544->g_210,&l_777,&l_777},{(void*)0,(void*)0,&p_1544->g_210,&l_777,&l_777},{(void*)0,(void*)0,&p_1544->g_210,&l_777,&l_777},{(void*)0,(void*)0,&p_1544->g_210,&l_777,&l_777},{(void*)0,(void*)0,&p_1544->g_210,&l_777,&l_777}},{{(void*)0,(void*)0,&p_1544->g_210,&l_777,&l_777},{(void*)0,(void*)0,&p_1544->g_210,&l_777,&l_777},{(void*)0,(void*)0,&p_1544->g_210,&l_777,&l_777},{(void*)0,(void*)0,&p_1544->g_210,&l_777,&l_777},{(void*)0,(void*)0,&p_1544->g_210,&l_777,&l_777}},{{(void*)0,(void*)0,&p_1544->g_210,&l_777,&l_777},{(void*)0,(void*)0,&p_1544->g_210,&l_777,&l_777},{(void*)0,(void*)0,&p_1544->g_210,&l_777,&l_777},{(void*)0,(void*)0,&p_1544->g_210,&l_777,&l_777},{(void*)0,(void*)0,&p_1544->g_210,&l_777,&l_777}},{{(void*)0,(void*)0,&p_1544->g_210,&l_777,&l_777},{(void*)0,(void*)0,&p_1544->g_210,&l_777,&l_777},{(void*)0,(void*)0,&p_1544->g_210,&l_777,&l_777},{(void*)0,(void*)0,&p_1544->g_210,&l_777,&l_777},{(void*)0,(void*)0,&p_1544->g_210,&l_777,&l_777}},{{(void*)0,(void*)0,&p_1544->g_210,&l_777,&l_777},{(void*)0,(void*)0,&p_1544->g_210,&l_777,&l_777},{(void*)0,(void*)0,&p_1544->g_210,&l_777,&l_777},{(void*)0,(void*)0,&p_1544->g_210,&l_777,&l_777},{(void*)0,(void*)0,&p_1544->g_210,&l_777,&l_777}},{{(void*)0,(void*)0,&p_1544->g_210,&l_777,&l_777},{(void*)0,(void*)0,&p_1544->g_210,&l_777,&l_777},{(void*)0,(void*)0,&p_1544->g_210,&l_777,&l_777},{(void*)0,(void*)0,&p_1544->g_210,&l_777,&l_777},{(void*)0,(void*)0,&p_1544->g_210,&l_777,&l_777}},{{(void*)0,(void*)0,&p_1544->g_210,&l_777,&l_777},{(void*)0,(void*)0,&p_1544->g_210,&l_777,&l_777},{(void*)0,(void*)0,&p_1544->g_210,&l_777,&l_777},{(void*)0,(void*)0,&p_1544->g_210,&l_777,&l_777},{(void*)0,(void*)0,&p_1544->g_210,&l_777,&l_777}},{{(void*)0,(void*)0,&p_1544->g_210,&l_777,&l_777},{(void*)0,(void*)0,&p_1544->g_210,&l_777,&l_777},{(void*)0,(void*)0,&p_1544->g_210,&l_777,&l_777},{(void*)0,(void*)0,&p_1544->g_210,&l_777,&l_777},{(void*)0,(void*)0,&p_1544->g_210,&l_777,&l_777}},{{(void*)0,(void*)0,&p_1544->g_210,&l_777,&l_777},{(void*)0,(void*)0,&p_1544->g_210,&l_777,&l_777},{(void*)0,(void*)0,&p_1544->g_210,&l_777,&l_777},{(void*)0,(void*)0,&p_1544->g_210,&l_777,&l_777},{(void*)0,(void*)0,&p_1544->g_210,&l_777,&l_777}},{{(void*)0,(void*)0,&p_1544->g_210,&l_777,&l_777},{(void*)0,(void*)0,&p_1544->g_210,&l_777,&l_777},{(void*)0,(void*)0,&p_1544->g_210,&l_777,&l_777},{(void*)0,(void*)0,&p_1544->g_210,&l_777,&l_777},{(void*)0,(void*)0,&p_1544->g_210,&l_777,&l_777}}};
    int i, j, k;
    (*p_1544->g_775) = &p_1544->g_226[5][3][0];
    (*p_1544->g_619) = l_777;
    return (*p_1544->g_116);
}


/* ------------------------------------------ */
/* 
 * reads : p_1544->g_706 p_1544->g_116 p_1544->g_117 p_1544->g_365.f3 p_1544->g_732 p_1544->g_171 p_1544->g_734 p_1544->g_118 p_1544->g_743 p_1544->g_744 p_1544->g_404.f0 p_1544->g_277 p_1544->g_143 p_1544->g_223.f3 p_1544->g_463.f0 p_1544->g_640 p_1544->g_641 p_1544->g_642 p_1544->g_411.f1 p_1544->g_228.f1
 * writes: p_1544->g_706 p_1544->g_365.f3 p_1544->g_463.f3 p_1544->g_463.f0 p_1544->g_117
 */
int32_t * func_99(uint64_t  p_100, int8_t  p_101, struct S4 * p_1544)
{ /* block id: 323 */
    int32_t *l_710 = &p_1544->g_118[1][3][1];
    int32_t l_717 = 5L;
    int32_t l_718 = 0x4AEEA915L;
    int32_t l_721 = 0x40A4498FL;
    int32_t l_723 = 0x525D98E5L;
    int16_t l_731 = 0x782EL;
    VECTOR(int16_t, 2) l_736 = (VECTOR(int16_t, 2))(0x1223L, 0x01ADL);
    uint16_t **l_739 = (void*)0;
    uint16_t ***l_738[1];
    VECTOR(int8_t, 2) l_740 = (VECTOR(int8_t, 2))(0x25L, 0x15L);
    uint64_t l_754 = 0xE54E800C9372B966L;
    struct S2 l_772 = {0xEE50F4C3F923D0E9L};
    int i;
    for (i = 0; i < 1; i++)
        l_738[i] = &l_739;
    for (p_1544->g_706 = (-10); (p_1544->g_706 != 26); p_1544->g_706 = safe_add_func_int16_t_s_s(p_1544->g_706, 1))
    { /* block id: 326 */
        int32_t l_713[2];
        int32_t l_716 = 1L;
        int32_t l_719 = 0x535BC346L;
        int32_t l_720 = 0x20C20DE4L;
        int32_t l_722[1];
        uint32_t l_724 = 0UL;
        VECTOR(int16_t, 4) l_733 = (VECTOR(int16_t, 4))(0x2F27L, (VECTOR(int16_t, 2))(0x2F27L, (-1L)), (-1L));
        VECTOR(int8_t, 4) l_741 = (VECTOR(int8_t, 4))(7L, (VECTOR(int8_t, 2))(7L, (-4L)), (-4L));
        VECTOR(int8_t, 2) l_742 = (VECTOR(int8_t, 2))(0x10L, (-2L));
        uint32_t l_750[10][6] = {{1UL,1UL,1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL,1UL,1UL}};
        int i, j;
        for (i = 0; i < 2; i++)
            l_713[i] = (-5L);
        for (i = 0; i < 1; i++)
            l_722[i] = 1L;
        l_710 = (*p_1544->g_116);
        for (p_1544->g_365.f3 = 0; (p_1544->g_365.f3 <= (-5)); p_1544->g_365.f3--)
        { /* block id: 330 */
            int32_t *l_714 = &p_1544->g_118[5][1][2];
            int32_t *l_715[8] = {&p_1544->g_118[1][1][1],&p_1544->g_118[1][1][1],&p_1544->g_118[1][1][1],&p_1544->g_118[1][1][1],&p_1544->g_118[1][1][1],&p_1544->g_118[1][1][1],&p_1544->g_118[1][1][1],&p_1544->g_118[1][1][1]};
            VECTOR(int16_t, 2) l_735 = (VECTOR(int16_t, 2))(0x1CF7L, 7L);
            VECTOR(int16_t, 16) l_737 = (VECTOR(int16_t, 16))(0x2D5DL, (VECTOR(int16_t, 4))(0x2D5DL, (VECTOR(int16_t, 2))(0x2D5DL, 0x37FEL), 0x37FEL), 0x37FEL, 0x2D5DL, 0x37FEL, (VECTOR(int16_t, 2))(0x2D5DL, 0x37FEL), (VECTOR(int16_t, 2))(0x2D5DL, 0x37FEL), 0x2D5DL, 0x37FEL, 0x2D5DL, 0x37FEL);
            int64_t *l_745 = &p_1544->g_463.f3;
            int8_t *l_751 = (void*)0;
            int8_t *l_752 = (void*)0;
            int8_t *l_753[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            uint64_t *l_755 = (void*)0;
            uint64_t *l_756 = (void*)0;
            uint64_t *l_757 = (void*)0;
            uint64_t *l_758 = (void*)0;
            uint64_t *l_759 = (void*)0;
            uint64_t *l_760 = (void*)0;
            uint64_t *l_761 = (void*)0;
            uint64_t *l_762 = (void*)0;
            uint64_t *l_763 = (void*)0;
            uint64_t *l_764 = (void*)0;
            uint64_t *l_765 = (void*)0;
            uint64_t *l_766[6][3][10] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
            int64_t *l_767 = &p_1544->g_463.f0;
            struct S3 *l_771 = (void*)0;
            struct S3 **l_770 = &l_771;
            int i, j, k;
            l_724--;
            l_721 |= (safe_sub_func_int16_t_s_s(((safe_mod_func_int64_t_s_s(((*l_767) &= (p_101 , (l_731 <= ((l_720 = ((VECTOR(uint64_t, 4))(mad_hi(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(abs(((VECTOR(int64_t, 2))(0x5AA1B4BEEC11C29FL, 0x7945E33860069941L))))), (p_1544->g_732 , ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 16))((((VECTOR(int16_t, 16))(hadd(((VECTOR(int16_t, 8))(0L, (*l_710), 5L, ((VECTOR(int16_t, 4))(l_733.zwzw)), (-8L))).s0466667407504554, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(hadd(((VECTOR(int16_t, 16))(p_1544->g_734.sd796abe62a681733)).s41, ((VECTOR(int16_t, 4))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 4),((VECTOR(int16_t, 2))(l_735.yy)).yyxy, ((VECTOR(int16_t, 4))(l_736.xxyx)), ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(l_737.se8)))).xyyxxxyy)).lo))).odd))).yyxy)).wwzzwzyzyzzxzwzy))).s8 ^ ((((l_738[0] != (void*)0) ^ ((VECTOR(int8_t, 4))(mul_hi(((VECTOR(int8_t, 8))(l_740.yyyxxxxx)).lo, ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 2),((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(l_741.zxyyzywywzwywzyz)).se646)).lo)), ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(0x1FL, (l_754 ^= ((VECTOR(int8_t, 8))((*l_714), ((VECTOR(int8_t, 2))(l_742.yx)), (((VECTOR(uint16_t, 16))(add_sat(((VECTOR(uint16_t, 4))(clz(((VECTOR(uint16_t, 8))(p_1544->g_743.sacf4e690)).even))).xyyyxzzywzwzyywy, ((VECTOR(uint16_t, 8))(mad_sat(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 16))(p_1544->g_744.s7b0d6ce210649f7a)).s73bb)).yxzxywyx, ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 4))(upsample(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 8))(max(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))((((*l_745) = p_1544->g_732.f0) && (((safe_rshift_func_int16_t_s_u((((safe_lshift_func_uint8_t_u_s((l_733.x < (*p_1544->g_117)), l_720)) ^ FAKE_DIVERGE(p_1544->global_0_offset, get_global_id(0), 10)) || p_1544->g_404.f0), l_733.y)) > l_750[6][3]) < FAKE_DIVERGE(p_1544->group_1_offset, get_group_id(1), 10))), ((VECTOR(uint8_t, 2))(0xB0L)), 0x83L)).lo)).yxyxyxyx, ((VECTOR(uint8_t, 8))(0xB0L))))))))).odd, ((VECTOR(uint8_t, 4))(1UL))))).odd)).yyxxxyyx, ((VECTOR(uint16_t, 8))(65535UL))))).s7712243777366447))).sa != (*p_1544->g_277)), ((VECTOR(int8_t, 4))(0L)))).s2), 0x25L, 1L)).zxxyxwywzyxzzwww)))).hi)).s72, ((VECTOR(int8_t, 2))((-2L)))))).yyyyxyyxyyyyyxyy)).s6c)).xxyy))).w) || p_101) , 8L)), (*l_710), 18446744073709551615UL, 0UL, ((VECTOR(uint64_t, 4))(0UL)), ((VECTOR(uint64_t, 8))(3UL)))).s450b)).x), p_1544->g_223.f3, 0xA8E0F6B2CA4BCBDFL, p_100, 1UL, ((VECTOR(uint64_t, 2))(0x91278258E0842E41L)), p_101, ((VECTOR(uint64_t, 2))(0UL)), 0x53580B0CF72752CCL, ((VECTOR(uint64_t, 2))(1UL)), 0x06BC1ADC68278B88L)).sc4)))).xyyx, ((VECTOR(uint64_t, 4))(0x84DBB7BA001FD563L)), ((VECTOR(uint64_t, 4))(0x671DBBE3C269F98AL))))).x) & (*l_710))))), l_741.x)) > (***p_1544->g_640)), (*l_710)));
            (*l_770) = &p_1544->g_228;
            l_772 = l_772;
        }
        (*p_1544->g_116) = (*p_1544->g_116);
    }
    return (*p_1544->g_116);
}


/* ------------------------------------------ */
/* 
 * reads : p_1544->g_116 p_1544->g_117 p_1544->g_483.f0 p_1544->g_387
 * writes: p_1544->g_117 p_1544->g_483.f0
 */
uint32_t  func_107(int32_t * p_108, int32_t  p_109, int32_t ** p_110, struct S4 * p_1544)
{ /* block id: 314 */
    uint64_t l_701 = 1UL;
    (*p_1544->g_116) = (*p_1544->g_116);
    for (p_1544->g_483.f0 = (-21); (p_1544->g_483.f0 != 44); p_1544->g_483.f0++)
    { /* block id: 318 */
        l_701--;
    }
    return p_1544->g_387.x;
}


/* ------------------------------------------ */
/* 
 * reads : p_1544->g_359 p_1544->g_247 p_1544->g_248 p_1544->g_411.f1 p_1544->g_117 p_1544->g_171 p_1544->g_116 p_1544->g_170 p_1544->g_463.f0 p_1544->g_674 p_1544->g_483.f2 p_1544->g_365.f1 p_1544->g_680 p_1544->g_681 p_1544->g_682 p_1544->g_277 p_1544->g_143 p_1544->g_445 p_1544->g_483.f1 p_1544->g_118
 * writes: p_1544->g_359 p_1544->g_248 p_1544->g_171 p_1544->g_492 p_1544->g_463.f0 p_1544->g_143 p_1544->g_118
 */
int64_t  func_111(int32_t ** p_112, int32_t * p_113, int32_t ** p_114, int32_t  p_115, struct S4 * p_1544)
{ /* block id: 204 */
    struct S1 *l_472[9][5] = {{&p_1544->g_463,&p_1544->g_463,&p_1544->g_463,&p_1544->g_463,&p_1544->g_365},{&p_1544->g_463,&p_1544->g_463,&p_1544->g_463,&p_1544->g_463,&p_1544->g_365},{&p_1544->g_463,&p_1544->g_463,&p_1544->g_463,&p_1544->g_463,&p_1544->g_365},{&p_1544->g_463,&p_1544->g_463,&p_1544->g_463,&p_1544->g_463,&p_1544->g_365},{&p_1544->g_463,&p_1544->g_463,&p_1544->g_463,&p_1544->g_463,&p_1544->g_365},{&p_1544->g_463,&p_1544->g_463,&p_1544->g_463,&p_1544->g_463,&p_1544->g_365},{&p_1544->g_463,&p_1544->g_463,&p_1544->g_463,&p_1544->g_463,&p_1544->g_365},{&p_1544->g_463,&p_1544->g_463,&p_1544->g_463,&p_1544->g_463,&p_1544->g_365},{&p_1544->g_463,&p_1544->g_463,&p_1544->g_463,&p_1544->g_463,&p_1544->g_365}};
    int32_t l_474 = 0x67159FCAL;
    VECTOR(int32_t, 2) l_512 = (VECTOR(int32_t, 2))(0x72A7F3C6L, 0x58988B7FL);
    int32_t *l_539 = (void*)0;
    int32_t *l_540 = (void*)0;
    int32_t *l_541[4][8][2] = {{{&p_1544->g_118[1][1][1],&p_1544->g_458},{&p_1544->g_118[1][1][1],&p_1544->g_458},{&p_1544->g_118[1][1][1],&p_1544->g_458},{&p_1544->g_118[1][1][1],&p_1544->g_458},{&p_1544->g_118[1][1][1],&p_1544->g_458},{&p_1544->g_118[1][1][1],&p_1544->g_458},{&p_1544->g_118[1][1][1],&p_1544->g_458},{&p_1544->g_118[1][1][1],&p_1544->g_458}},{{&p_1544->g_118[1][1][1],&p_1544->g_458},{&p_1544->g_118[1][1][1],&p_1544->g_458},{&p_1544->g_118[1][1][1],&p_1544->g_458},{&p_1544->g_118[1][1][1],&p_1544->g_458},{&p_1544->g_118[1][1][1],&p_1544->g_458},{&p_1544->g_118[1][1][1],&p_1544->g_458},{&p_1544->g_118[1][1][1],&p_1544->g_458},{&p_1544->g_118[1][1][1],&p_1544->g_458}},{{&p_1544->g_118[1][1][1],&p_1544->g_458},{&p_1544->g_118[1][1][1],&p_1544->g_458},{&p_1544->g_118[1][1][1],&p_1544->g_458},{&p_1544->g_118[1][1][1],&p_1544->g_458},{&p_1544->g_118[1][1][1],&p_1544->g_458},{&p_1544->g_118[1][1][1],&p_1544->g_458},{&p_1544->g_118[1][1][1],&p_1544->g_458},{&p_1544->g_118[1][1][1],&p_1544->g_458}},{{&p_1544->g_118[1][1][1],&p_1544->g_458},{&p_1544->g_118[1][1][1],&p_1544->g_458},{&p_1544->g_118[1][1][1],&p_1544->g_458},{&p_1544->g_118[1][1][1],&p_1544->g_458},{&p_1544->g_118[1][1][1],&p_1544->g_458},{&p_1544->g_118[1][1][1],&p_1544->g_458},{&p_1544->g_118[1][1][1],&p_1544->g_458},{&p_1544->g_118[1][1][1],&p_1544->g_458}}};
    int64_t l_542 = (-1L);
    uint64_t l_543 = 0x8AD5550676346C8FL;
    VECTOR(int8_t, 2) l_571 = (VECTOR(int8_t, 2))((-4L), 0x17L);
    VECTOR(uint32_t, 16) l_613 = (VECTOR(uint32_t, 16))(2UL, (VECTOR(uint32_t, 4))(2UL, (VECTOR(uint32_t, 2))(2UL, 4294967295UL), 4294967295UL), 4294967295UL, 2UL, 4294967295UL, (VECTOR(uint32_t, 2))(2UL, 4294967295UL), (VECTOR(uint32_t, 2))(2UL, 4294967295UL), 2UL, 4294967295UL, 2UL, 4294967295UL);
    struct S0 *l_618 = &p_1544->g_404;
    VECTOR(uint16_t, 16) l_620 = (VECTOR(uint16_t, 16))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 0x043EL), 0x043EL), 0x043EL, 65535UL, 0x043EL, (VECTOR(uint16_t, 2))(65535UL, 0x043EL), (VECTOR(uint16_t, 2))(65535UL, 0x043EL), 65535UL, 0x043EL, 65535UL, 0x043EL);
    uint8_t ***l_644[3];
    int32_t l_645 = 0x65A7328CL;
    int8_t *l_667 = (void*)0;
    VECTOR(uint8_t, 16) l_668 = (VECTOR(uint8_t, 16))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0x32L), 0x32L), 0x32L, 0UL, 0x32L, (VECTOR(uint8_t, 2))(0UL, 0x32L), (VECTOR(uint8_t, 2))(0UL, 0x32L), 0UL, 0x32L, 0UL, 0x32L);
    VECTOR(uint8_t, 8) l_673 = (VECTOR(uint8_t, 8))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 1UL), 1UL), 1UL, 255UL, 1UL);
    VECTOR(int64_t, 4) l_677 = (VECTOR(int64_t, 4))(0x3E39490ED9952E18L, (VECTOR(int64_t, 2))(0x3E39490ED9952E18L, 0x08445DFDFC70B423L), 0x08445DFDFC70B423L);
    uint32_t l_678 = 0UL;
    VECTOR(int16_t, 2) l_679 = (VECTOR(int16_t, 2))(0L, 7L);
    VECTOR(uint16_t, 8) l_683 = (VECTOR(uint16_t, 8))(0xE9A0L, (VECTOR(uint16_t, 4))(0xE9A0L, (VECTOR(uint16_t, 2))(0xE9A0L, 65529UL), 65529UL), 65529UL, 0xE9A0L, 65529UL);
    uint64_t *l_686 = &l_543;
    uint32_t l_687 = 4294967292UL;
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_644[i] = &p_1544->g_641;
    for (p_1544->g_359 = 0; (p_1544->g_359 >= 26); p_1544->g_359++)
    { /* block id: 207 */
        struct S1 **l_473 = &l_472[2][1];
        struct S2 l_488 = {0x4D35B60EA2C05424L};
        int8_t **l_490 = &p_1544->g_358;
        int32_t l_496 = 0x3649DC82L;
        int32_t l_511 = (-1L);
        int32_t l_513 = 4L;
        int32_t l_514 = (-7L);
        VECTOR(int32_t, 2) l_515 = (VECTOR(int32_t, 2))(1L, 0x02CB61CAL);
        int i;
        (*p_1544->g_247) ^= 0x1C5A8024L;
        (*l_473) = l_472[2][1];
        if (((((l_474 | (safe_mod_func_int32_t_s_s(((**p_112) ^= (((safe_lshift_func_int8_t_s_u((safe_add_func_int64_t_s_s((safe_sub_func_uint8_t_u_u(0xEAL, (((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))((-1L), (p_1544->g_446.s3 | ((p_1544->g_483 , FAKE_DIVERGE(p_1544->group_1_offset, get_group_id(1), 10)) || (safe_mod_func_uint64_t_u_u((safe_lshift_func_uint16_t_u_u((((*p_1544->g_277) ^= (l_488 , l_474)) ^ (safe_unary_minus_func_int16_t_s(((VECTOR(int16_t, 16))(mul_hi(((VECTOR(int16_t, 8))((p_115 && ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 16))(255UL, 0xE3L, p_115, 0x2FL, ((VECTOR(uint8_t, 8))(min(((VECTOR(uint8_t, 2))(hadd(((VECTOR(uint8_t, 4))((((*l_490) = &p_1544->g_270) != (void*)0), 254UL, 0xE0L, 0xFBL)).hi, ((VECTOR(uint8_t, 2))(255UL))))).yxxyyyyy, ((VECTOR(uint8_t, 8))(0UL))))), 0x90L, 0x80L, 0x4FL, 4UL)).s3e00)).w), 0x740AL, ((VECTOR(int16_t, 2))((-1L))), ((VECTOR(int16_t, 2))((-4L))), 0L, 0x6BC9L)).s2251634376025340, ((VECTOR(int16_t, 16))(0x4A42L))))).s4))), l_488.f0)), l_474)))), 2L, 0x40445F8CF4F9782BL)).zxywxzxyxwyxxzyx)).s8 | (-4L)))), GROUP_DIVERGE(1, 1))), p_1544->g_411.f1)) == p_115) ^ l_474)), l_474))) || 0x5CF1L) != p_115) || l_474))
        { /* block id: 213 */
            int8_t **l_491[4][6][9] = {{{(void*)0,&p_1544->g_356,(void*)0,&p_1544->g_356,&p_1544->g_356,&p_1544->g_356,(void*)0,&p_1544->g_356,(void*)0},{(void*)0,&p_1544->g_356,(void*)0,&p_1544->g_356,&p_1544->g_356,&p_1544->g_356,(void*)0,&p_1544->g_356,(void*)0},{(void*)0,&p_1544->g_356,(void*)0,&p_1544->g_356,&p_1544->g_356,&p_1544->g_356,(void*)0,&p_1544->g_356,(void*)0},{(void*)0,&p_1544->g_356,(void*)0,&p_1544->g_356,&p_1544->g_356,&p_1544->g_356,(void*)0,&p_1544->g_356,(void*)0},{(void*)0,&p_1544->g_356,(void*)0,&p_1544->g_356,&p_1544->g_356,&p_1544->g_356,(void*)0,&p_1544->g_356,(void*)0},{(void*)0,&p_1544->g_356,(void*)0,&p_1544->g_356,&p_1544->g_356,&p_1544->g_356,(void*)0,&p_1544->g_356,(void*)0}},{{(void*)0,&p_1544->g_356,(void*)0,&p_1544->g_356,&p_1544->g_356,&p_1544->g_356,(void*)0,&p_1544->g_356,(void*)0},{(void*)0,&p_1544->g_356,(void*)0,&p_1544->g_356,&p_1544->g_356,&p_1544->g_356,(void*)0,&p_1544->g_356,(void*)0},{(void*)0,&p_1544->g_356,(void*)0,&p_1544->g_356,&p_1544->g_356,&p_1544->g_356,(void*)0,&p_1544->g_356,(void*)0},{(void*)0,&p_1544->g_356,(void*)0,&p_1544->g_356,&p_1544->g_356,&p_1544->g_356,(void*)0,&p_1544->g_356,(void*)0},{(void*)0,&p_1544->g_356,(void*)0,&p_1544->g_356,&p_1544->g_356,&p_1544->g_356,(void*)0,&p_1544->g_356,(void*)0},{(void*)0,&p_1544->g_356,(void*)0,&p_1544->g_356,&p_1544->g_356,&p_1544->g_356,(void*)0,&p_1544->g_356,(void*)0}},{{(void*)0,&p_1544->g_356,(void*)0,&p_1544->g_356,&p_1544->g_356,&p_1544->g_356,(void*)0,&p_1544->g_356,(void*)0},{(void*)0,&p_1544->g_356,(void*)0,&p_1544->g_356,&p_1544->g_356,&p_1544->g_356,(void*)0,&p_1544->g_356,(void*)0},{(void*)0,&p_1544->g_356,(void*)0,&p_1544->g_356,&p_1544->g_356,&p_1544->g_356,(void*)0,&p_1544->g_356,(void*)0},{(void*)0,&p_1544->g_356,(void*)0,&p_1544->g_356,&p_1544->g_356,&p_1544->g_356,(void*)0,&p_1544->g_356,(void*)0},{(void*)0,&p_1544->g_356,(void*)0,&p_1544->g_356,&p_1544->g_356,&p_1544->g_356,(void*)0,&p_1544->g_356,(void*)0},{(void*)0,&p_1544->g_356,(void*)0,&p_1544->g_356,&p_1544->g_356,&p_1544->g_356,(void*)0,&p_1544->g_356,(void*)0}},{{(void*)0,&p_1544->g_356,(void*)0,&p_1544->g_356,&p_1544->g_356,&p_1544->g_356,(void*)0,&p_1544->g_356,(void*)0},{(void*)0,&p_1544->g_356,(void*)0,&p_1544->g_356,&p_1544->g_356,&p_1544->g_356,(void*)0,&p_1544->g_356,(void*)0},{(void*)0,&p_1544->g_356,(void*)0,&p_1544->g_356,&p_1544->g_356,&p_1544->g_356,(void*)0,&p_1544->g_356,(void*)0},{(void*)0,&p_1544->g_356,(void*)0,&p_1544->g_356,&p_1544->g_356,&p_1544->g_356,(void*)0,&p_1544->g_356,(void*)0},{(void*)0,&p_1544->g_356,(void*)0,&p_1544->g_356,&p_1544->g_356,&p_1544->g_356,(void*)0,&p_1544->g_356,(void*)0},{(void*)0,&p_1544->g_356,(void*)0,&p_1544->g_356,&p_1544->g_356,&p_1544->g_356,(void*)0,&p_1544->g_356,(void*)0}}};
            int32_t *l_493 = &l_474;
            int32_t *l_494 = (void*)0;
            int32_t *l_495 = &p_1544->g_118[1][1][1];
            int32_t *l_497 = &p_1544->g_118[1][2][1];
            int32_t *l_498 = &l_474;
            int32_t *l_499 = &p_1544->g_171[1];
            int32_t *l_500 = &p_1544->g_118[3][2][1];
            int32_t *l_501 = &p_1544->g_458;
            int32_t *l_502 = (void*)0;
            int32_t *l_503 = &p_1544->g_458;
            int32_t *l_504 = &p_1544->g_118[5][0][0];
            int32_t *l_505 = (void*)0;
            int32_t *l_506 = &p_1544->g_118[6][1][0];
            int32_t *l_507 = &p_1544->g_118[1][1][1];
            int32_t *l_508 = &p_1544->g_171[3];
            int32_t *l_509 = &p_1544->g_171[5];
            int32_t *l_510[4][6][6] = {{{&p_1544->g_118[1][1][1],&p_1544->g_118[0][0][2],(void*)0,&p_1544->g_118[1][1][1],(void*)0,(void*)0},{&p_1544->g_118[1][1][1],&p_1544->g_118[0][0][2],(void*)0,&p_1544->g_118[1][1][1],(void*)0,(void*)0},{&p_1544->g_118[1][1][1],&p_1544->g_118[0][0][2],(void*)0,&p_1544->g_118[1][1][1],(void*)0,(void*)0},{&p_1544->g_118[1][1][1],&p_1544->g_118[0][0][2],(void*)0,&p_1544->g_118[1][1][1],(void*)0,(void*)0},{&p_1544->g_118[1][1][1],&p_1544->g_118[0][0][2],(void*)0,&p_1544->g_118[1][1][1],(void*)0,(void*)0},{&p_1544->g_118[1][1][1],&p_1544->g_118[0][0][2],(void*)0,&p_1544->g_118[1][1][1],(void*)0,(void*)0}},{{&p_1544->g_118[1][1][1],&p_1544->g_118[0][0][2],(void*)0,&p_1544->g_118[1][1][1],(void*)0,(void*)0},{&p_1544->g_118[1][1][1],&p_1544->g_118[0][0][2],(void*)0,&p_1544->g_118[1][1][1],(void*)0,(void*)0},{&p_1544->g_118[1][1][1],&p_1544->g_118[0][0][2],(void*)0,&p_1544->g_118[1][1][1],(void*)0,(void*)0},{&p_1544->g_118[1][1][1],&p_1544->g_118[0][0][2],(void*)0,&p_1544->g_118[1][1][1],(void*)0,(void*)0},{&p_1544->g_118[1][1][1],&p_1544->g_118[0][0][2],(void*)0,&p_1544->g_118[1][1][1],(void*)0,(void*)0},{&p_1544->g_118[1][1][1],&p_1544->g_118[0][0][2],(void*)0,&p_1544->g_118[1][1][1],(void*)0,(void*)0}},{{&p_1544->g_118[1][1][1],&p_1544->g_118[0][0][2],(void*)0,&p_1544->g_118[1][1][1],(void*)0,(void*)0},{&p_1544->g_118[1][1][1],&p_1544->g_118[0][0][2],(void*)0,&p_1544->g_118[1][1][1],(void*)0,(void*)0},{&p_1544->g_118[1][1][1],&p_1544->g_118[0][0][2],(void*)0,&p_1544->g_118[1][1][1],(void*)0,(void*)0},{&p_1544->g_118[1][1][1],&p_1544->g_118[0][0][2],(void*)0,&p_1544->g_118[1][1][1],(void*)0,(void*)0},{&p_1544->g_118[1][1][1],&p_1544->g_118[0][0][2],(void*)0,&p_1544->g_118[1][1][1],(void*)0,(void*)0},{&p_1544->g_118[1][1][1],&p_1544->g_118[0][0][2],(void*)0,&p_1544->g_118[1][1][1],(void*)0,(void*)0}},{{&p_1544->g_118[1][1][1],&p_1544->g_118[0][0][2],(void*)0,&p_1544->g_118[1][1][1],(void*)0,(void*)0},{&p_1544->g_118[1][1][1],&p_1544->g_118[0][0][2],(void*)0,&p_1544->g_118[1][1][1],(void*)0,(void*)0},{&p_1544->g_118[1][1][1],&p_1544->g_118[0][0][2],(void*)0,&p_1544->g_118[1][1][1],(void*)0,(void*)0},{&p_1544->g_118[1][1][1],&p_1544->g_118[0][0][2],(void*)0,&p_1544->g_118[1][1][1],(void*)0,(void*)0},{&p_1544->g_118[1][1][1],&p_1544->g_118[0][0][2],(void*)0,&p_1544->g_118[1][1][1],(void*)0,(void*)0},{&p_1544->g_118[1][1][1],&p_1544->g_118[0][0][2],(void*)0,&p_1544->g_118[1][1][1],(void*)0,(void*)0}}};
            int64_t l_516 = 0x64D530674D2CC41BL;
            uint32_t l_518 = 0x56538BF7L;
            int i, j, k;
            (**p_1544->g_116) = (l_488.f0 || (l_491[2][5][3] != (p_1544->g_492 = l_491[1][2][0])));
            atomic_and(&p_1544->g_atomic_reduction[get_linear_group_id()], (*p_1544->g_170));
            barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
            if (get_linear_local_id() == 0)
                p_1544->v_collective += p_1544->g_atomic_reduction[get_linear_group_id()];
            barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
            ++l_518;
        }
        else
        { /* block id: 218 */
            int64_t l_538 = (-9L);
            if ((atomic_inc(&p_1544->g_atomic_input[93 * get_linear_group_id() + 40]) == 0))
            { /* block id: 220 */
                int32_t l_521[3];
                int16_t l_534[4];
                int64_t l_535 = 0x4DDAA6CF14F38F2EL;
                int32_t l_536 = 0x687B4F94L;
                uint32_t l_537 = 0xFA9D763BL;
                int i;
                for (i = 0; i < 3; i++)
                    l_521[i] = 0x68E6799CL;
                for (i = 0; i < 4; i++)
                    l_534[i] = 0x3771L;
                for (l_521[1] = 0; (l_521[1] == 12); ++l_521[1])
                { /* block id: 223 */
                    int32_t l_524 = 0L;
                    for (l_524 = 16; (l_524 <= 20); ++l_524)
                    { /* block id: 226 */
                        VECTOR(int32_t, 16) l_527 = (VECTOR(int32_t, 16))(0x0F1E5362L, (VECTOR(int32_t, 4))(0x0F1E5362L, (VECTOR(int32_t, 2))(0x0F1E5362L, 1L), 1L), 1L, 0x0F1E5362L, 1L, (VECTOR(int32_t, 2))(0x0F1E5362L, 1L), (VECTOR(int32_t, 2))(0x0F1E5362L, 1L), 0x0F1E5362L, 1L, 0x0F1E5362L, 1L);
                        uint32_t l_528 = 1UL;
                        uint16_t l_529 = 0xD088L;
                        uint32_t l_530 = 4294967295UL;
                        int32_t l_531 = 1L;
                        int32_t l_532 = 0x0EC55494L;
                        uint8_t l_533 = 0UL;
                        int i;
                        l_527.sf = ((VECTOR(int32_t, 2))(l_527.s78)).lo;
                        l_527.sc = l_528;
                        l_530 = l_529;
                        l_533 &= (l_527.s8 = (l_531 , l_532));
                    }
                }
                l_521[1] = ((l_534[1] , (l_537 = (l_536 &= (l_535 &= (-8L))))) , 0x2A246B6FL);
                unsigned int result = 0;
                int l_521_i0;
                for (l_521_i0 = 0; l_521_i0 < 3; l_521_i0++) {
                    result += l_521[l_521_i0];
                }
                int l_534_i0;
                for (l_534_i0 = 0; l_534_i0 < 4; l_534_i0++) {
                    result += l_534[l_534_i0];
                }
                result += l_535;
                result += l_536;
                result += l_537;
                atomic_add(&p_1544->g_special_values[93 * get_linear_group_id() + 40], result);
            }
            else
            { /* block id: 238 */
                (1 + 1);
            }
            if (l_538)
                break;
        }
    }
    l_543--;
    for (p_1544->g_463.f0 = (-20); (p_1544->g_463.f0 <= (-16)); p_1544->g_463.f0++)
    { /* block id: 247 */
        int32_t l_551 = 0x7EEB2DCBL;
        int32_t l_557 = 0x15FE9B7AL;
        int64_t l_575 = 0x413F9A142FEAB3BDL;
        int32_t l_576 = (-10L);
        int32_t l_578 = 0x6FB30F28L;
        int32_t l_580 = 0x2A164F4CL;
        int32_t l_582 = 1L;
        int32_t l_586 = (-6L);
        int32_t l_587[1][10] = {{0x6A7659DDL,0x6A7659DDL,0x6A7659DDL,0x6A7659DDL,0x6A7659DDL,0x6A7659DDL,0x6A7659DDL,0x6A7659DDL,0x6A7659DDL,0x6A7659DDL}};
        VECTOR(int64_t, 16) l_612 = (VECTOR(int64_t, 16))(0x5ADE6FDF1FB5AF61L, (VECTOR(int64_t, 4))(0x5ADE6FDF1FB5AF61L, (VECTOR(int64_t, 2))(0x5ADE6FDF1FB5AF61L, 0L), 0L), 0L, 0x5ADE6FDF1FB5AF61L, 0L, (VECTOR(int64_t, 2))(0x5ADE6FDF1FB5AF61L, 0L), (VECTOR(int64_t, 2))(0x5ADE6FDF1FB5AF61L, 0L), 0x5ADE6FDF1FB5AF61L, 0L, 0x5ADE6FDF1FB5AF61L, 0L);
        uint8_t *l_638[7][5] = {{&p_1544->g_411.f1,&p_1544->g_228.f1,&p_1544->g_411.f1,&p_1544->g_411.f1,&p_1544->g_411.f1},{&p_1544->g_411.f1,&p_1544->g_228.f1,&p_1544->g_411.f1,&p_1544->g_411.f1,&p_1544->g_411.f1},{&p_1544->g_411.f1,&p_1544->g_228.f1,&p_1544->g_411.f1,&p_1544->g_411.f1,&p_1544->g_411.f1},{&p_1544->g_411.f1,&p_1544->g_228.f1,&p_1544->g_411.f1,&p_1544->g_411.f1,&p_1544->g_411.f1},{&p_1544->g_411.f1,&p_1544->g_228.f1,&p_1544->g_411.f1,&p_1544->g_411.f1,&p_1544->g_411.f1},{&p_1544->g_411.f1,&p_1544->g_228.f1,&p_1544->g_411.f1,&p_1544->g_411.f1,&p_1544->g_411.f1},{&p_1544->g_411.f1,&p_1544->g_228.f1,&p_1544->g_411.f1,&p_1544->g_411.f1,&p_1544->g_411.f1}};
        uint8_t **l_637[9][4] = {{&l_638[5][3],&l_638[6][1],&l_638[6][1],&l_638[5][3]},{&l_638[5][3],&l_638[6][1],&l_638[6][1],&l_638[5][3]},{&l_638[5][3],&l_638[6][1],&l_638[6][1],&l_638[5][3]},{&l_638[5][3],&l_638[6][1],&l_638[6][1],&l_638[5][3]},{&l_638[5][3],&l_638[6][1],&l_638[6][1],&l_638[5][3]},{&l_638[5][3],&l_638[6][1],&l_638[6][1],&l_638[5][3]},{&l_638[5][3],&l_638[6][1],&l_638[6][1],&l_638[5][3]},{&l_638[5][3],&l_638[6][1],&l_638[6][1],&l_638[5][3]},{&l_638[5][3],&l_638[6][1],&l_638[6][1],&l_638[5][3]}};
        uint8_t ***l_636 = &l_637[8][3];
        uint8_t l_656 = 0x2DL;
        uint64_t *l_662 = (void*)0;
        int i, j;
        (1 + 1);
    }
    p_1544->g_118[1][1][1] |= (((VECTOR(uint8_t, 16))(l_668.s81caf26498263236)).sa & (safe_lshift_func_int16_t_s_u((safe_lshift_func_uint8_t_u_s(p_115, 2)), ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(upsample(((VECTOR(uint8_t, 16))(abs_diff(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(mul_hi(((VECTOR(uint8_t, 16))(255UL, ((VECTOR(uint8_t, 8))(rhadd(((VECTOR(uint8_t, 8))(mad_hi(((VECTOR(uint8_t, 2))(254UL, 0x3AL)).xxyyxxyx, ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(0x14L, ((VECTOR(uint8_t, 2))(hadd(((VECTOR(uint8_t, 16))(rotate(((VECTOR(uint8_t, 4))(l_673.s6371)).zzyyyywyxxyywwxw, ((VECTOR(uint8_t, 2))(add_sat(((VECTOR(uint8_t, 8))(1UL, ((VECTOR(uint8_t, 4))(max(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(p_1544->g_674.s3365)).hi)), 0x6BL, 6UL)), (uint8_t)(0x1126ABC2L | ((((safe_rshift_func_int8_t_s_u((p_1544->g_483.f2 < ((VECTOR(int64_t, 4))(mul_hi(((VECTOR(int64_t, 16))(l_677.xywxzzwyyyzxzyxx)).sc7f3, ((VECTOR(int64_t, 4))(upsample(((VECTOR(int32_t, 2))((-1L), 0x6D55B1DBL)).yyyx, ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))(0x9C91AC57L, ((p_1544->g_365.f1 >= l_678) | ((VECTOR(int16_t, 2))(l_679.xy)).hi), ((((VECTOR(uint16_t, 8))(rhadd(((VECTOR(uint16_t, 16))(max(((VECTOR(uint16_t, 4))(p_1544->g_680.s6421)).yzxwxzxwwxzyxxzw, ((VECTOR(uint16_t, 8))(sub_sat(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 16))(p_1544->g_681.xxxxzywyzxwyyxzx)))).odd, ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(p_1544->g_682.zx)).xyyxxxyy)).s11)), 0xAD28L, 65532UL)).xxzxxxyx))).s1261501516264401))).hi, ((VECTOR(uint16_t, 4))(mad_sat(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 8))(mad_sat(((VECTOR(uint16_t, 2))(0xEDE5L, 0xCADAL)).xyyyyxxy, ((VECTOR(uint16_t, 8))(l_683.s73577115)), ((VECTOR(uint16_t, 4))(0x8312L, 0UL, 3UL, 0x8C65L)).zzwwzxxw))).s55)).yxxx, ((VECTOR(uint16_t, 4))(safe_clamp_func(VECTOR(uint16_t, 4),VECTOR(uint16_t, 4),((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 8))(((*p_1544->g_277) = 65532UL), 65530UL, 0xE29BL, (*p_1544->g_277), 65535UL, ((++(*p_1544->g_277)) ^ (p_115 ^ ((((*l_686) = p_1544->g_445.s3) < p_115) != 0x2D25L))), 0xEC26L, 0xA826L)).s72)).yxyy, ((VECTOR(uint16_t, 4))(8UL)), ((VECTOR(uint16_t, 4))(0x5CECL))))), ((VECTOR(uint16_t, 4))(0x53D0L))))).xwxwzzwz))).s2 ^ l_687) > p_1544->g_483.f1), 4294967295UL, ((VECTOR(uint32_t, 4))(4294967288UL)))).s7521404730552376)).s4602)))))))).x), 1)) >= 0UL) > (*p_113)) == 1L))))), 0xFBL, 0UL, 0x3DL)).s01, ((VECTOR(uint8_t, 2))(1UL))))).yxyxxxyxyxxyyxyy))).s76, ((VECTOR(uint8_t, 2))(1UL))))), 0x57L)).ywyzxyxz)), ((VECTOR(uint8_t, 8))(0x76L))))), ((VECTOR(uint8_t, 8))(2UL))))), 0xDCL, GROUP_DIVERGE(2, 1), ((VECTOR(uint8_t, 2))(0UL)), 250UL, 255UL, 0xD7L)).s92c1, ((VECTOR(uint8_t, 4))(1UL))))).zxxzwwzz)).s0653620645463225, ((VECTOR(uint8_t, 16))(253UL))))).se0, ((VECTOR(uint8_t, 2))(0x4DL))))), 65535UL, 0xDCF6L, p_115, 7UL, 0x269EL, ((VECTOR(uint16_t, 4))(0xC1AEL)), p_115, 0xFD13L, 0x6275L, 5UL, 0x9426L)).s56)).xxyy)).y)));
    return p_1544->g_681.w;
}


/* ------------------------------------------ */
/* 
 * reads : p_1544->g_225 p_1544->g_223 p_1544->g_247 p_1544->g_248 p_1544->g_117 p_1544->g_463.f0 p_1544->g_116
 * writes: p_1544->g_463 p_1544->g_118 p_1544->g_171 p_1544->g_248
 */
int32_t * func_119(int64_t  p_120, uint16_t  p_121, int32_t ** p_122, struct S4 * p_1544)
{ /* block id: 191 */
    uint64_t *l_460 = (void*)0;
    uint64_t **l_459[2];
    uint64_t ***l_461[6];
    uint64_t **l_462[10] = {&l_460,&l_460,&l_460,&l_460,&l_460,&l_460,&l_460,&l_460,&l_460,&l_460};
    int32_t *l_469 = &p_1544->g_171[2];
    int i;
    for (i = 0; i < 2; i++)
        l_459[i] = &l_460;
    for (i = 0; i < 6; i++)
        l_461[i] = &l_459[1];
    l_462[7] = l_459[1];
    p_1544->g_463 = (*p_1544->g_225);
    (*p_1544->g_117) = (*p_1544->g_247);
    for (p_1544->g_463.f0 = (-20); (p_1544->g_463.f0 <= 19); p_1544->g_463.f0++)
    { /* block id: 197 */
        uint64_t l_466 = 0xA0D0AFB91178E9E6L;
        l_466--;
        (*p_1544->g_247) &= ((**p_1544->g_116) = (-1L));
    }
    return l_469;
}


/* ------------------------------------------ */
/* 
 * reads : p_1544->g_143 p_1544->g_comm_values p_1544->g_165 p_1544->g_2 p_1544->l_comm_values p_1544->g_117 p_1544->g_118 p_1544->g_170 p_1544->g_171 p_1544->g_195 p_1544->g_192 p_1544->g_224 p_1544->g_226 p_1544->g_228 p_1544->g_223.f1 p_1544->g_116 p_1544->g_247 p_1544->g_197 p_1544->g_318 p_1544->g_268 p_1544->g_209.f1 p_1544->g_270 p_1544->g_334 p_1544->g_339 p_1544->g_340 p_1544->g_342 p_1544->g_345 p_1544->g_347 p_1544->g_209.f0 p_1544->g_277 p_1544->g_223.f2 p_1544->g_356 p_1544->g_359 p_1544->g_271 p_1544->g_225 p_1544->g_209.f2 p_1544->g_376 p_1544->g_383 p_1544->g_223.f3 p_1544->g_387 p_1544->g_399 p_1544->g_365.f1 p_1544->g_411 p_1544->g_412 p_1544->g_248 p_1544->g_415 p_1544->g_223 p_1544->g_437 p_1544->g_445 p_1544->g_446
 * writes: p_1544->g_143 p_1544->g_165 p_1544->g_171 p_1544->g_192 p_1544->g_210 p_1544->g_118 p_1544->g_225 p_1544->g_226 p_1544->g_117 p_1544->g_170 p_1544->g_268 p_1544->g_270 p_1544->g_358 p_1544->g_271 p_1544->g_248 p_1544->g_223.f3 p_1544->g_223 p_1544->g_228.f0
 */
int32_t ** func_125(int32_t ** p_126, int8_t  p_127, uint32_t  p_128, int64_t  p_129, int16_t  p_130, struct S4 * p_1544)
{ /* block id: 64 */
    uint16_t *l_142[5][9][3] = {{{&p_1544->g_143,&p_1544->g_143,(void*)0},{&p_1544->g_143,&p_1544->g_143,(void*)0},{&p_1544->g_143,&p_1544->g_143,(void*)0},{&p_1544->g_143,&p_1544->g_143,(void*)0},{&p_1544->g_143,&p_1544->g_143,(void*)0},{&p_1544->g_143,&p_1544->g_143,(void*)0},{&p_1544->g_143,&p_1544->g_143,(void*)0},{&p_1544->g_143,&p_1544->g_143,(void*)0},{&p_1544->g_143,&p_1544->g_143,(void*)0}},{{&p_1544->g_143,&p_1544->g_143,(void*)0},{&p_1544->g_143,&p_1544->g_143,(void*)0},{&p_1544->g_143,&p_1544->g_143,(void*)0},{&p_1544->g_143,&p_1544->g_143,(void*)0},{&p_1544->g_143,&p_1544->g_143,(void*)0},{&p_1544->g_143,&p_1544->g_143,(void*)0},{&p_1544->g_143,&p_1544->g_143,(void*)0},{&p_1544->g_143,&p_1544->g_143,(void*)0},{&p_1544->g_143,&p_1544->g_143,(void*)0}},{{&p_1544->g_143,&p_1544->g_143,(void*)0},{&p_1544->g_143,&p_1544->g_143,(void*)0},{&p_1544->g_143,&p_1544->g_143,(void*)0},{&p_1544->g_143,&p_1544->g_143,(void*)0},{&p_1544->g_143,&p_1544->g_143,(void*)0},{&p_1544->g_143,&p_1544->g_143,(void*)0},{&p_1544->g_143,&p_1544->g_143,(void*)0},{&p_1544->g_143,&p_1544->g_143,(void*)0},{&p_1544->g_143,&p_1544->g_143,(void*)0}},{{&p_1544->g_143,&p_1544->g_143,(void*)0},{&p_1544->g_143,&p_1544->g_143,(void*)0},{&p_1544->g_143,&p_1544->g_143,(void*)0},{&p_1544->g_143,&p_1544->g_143,(void*)0},{&p_1544->g_143,&p_1544->g_143,(void*)0},{&p_1544->g_143,&p_1544->g_143,(void*)0},{&p_1544->g_143,&p_1544->g_143,(void*)0},{&p_1544->g_143,&p_1544->g_143,(void*)0},{&p_1544->g_143,&p_1544->g_143,(void*)0}},{{&p_1544->g_143,&p_1544->g_143,(void*)0},{&p_1544->g_143,&p_1544->g_143,(void*)0},{&p_1544->g_143,&p_1544->g_143,(void*)0},{&p_1544->g_143,&p_1544->g_143,(void*)0},{&p_1544->g_143,&p_1544->g_143,(void*)0},{&p_1544->g_143,&p_1544->g_143,(void*)0},{&p_1544->g_143,&p_1544->g_143,(void*)0},{&p_1544->g_143,&p_1544->g_143,(void*)0},{&p_1544->g_143,&p_1544->g_143,(void*)0}}};
    struct S2 l_157 = {0x043DCC804D94C7B3L};
    uint8_t *l_164 = &p_1544->g_165;
    VECTOR(uint32_t, 4) l_286 = (VECTOR(uint32_t, 4))(0xF7EF95CAL, (VECTOR(uint32_t, 2))(0xF7EF95CAL, 4294967293UL), 4294967293UL);
    VECTOR(uint32_t, 4) l_291 = (VECTOR(uint32_t, 4))(0x70FCD5E7L, (VECTOR(uint32_t, 2))(0x70FCD5E7L, 4294967289UL), 4294967289UL);
    int32_t *l_302 = &p_1544->g_171[5];
    uint8_t l_306 = 2UL;
    VECTOR(uint64_t, 2) l_307 = (VECTOR(uint64_t, 2))(0x7BF28113945B35E7L, 0xABB8BA3604DBCB9EL);
    VECTOR(int16_t, 2) l_319 = (VECTOR(int16_t, 2))((-9L), 0x218DL);
    int8_t *l_332 = (void*)0;
    int8_t *l_333 = &p_1544->g_270;
    VECTOR(int8_t, 16) l_335 = (VECTOR(int8_t, 16))(7L, (VECTOR(int8_t, 4))(7L, (VECTOR(int8_t, 2))(7L, 0x29L), 0x29L), 0x29L, 7L, 0x29L, (VECTOR(int8_t, 2))(7L, 0x29L), (VECTOR(int8_t, 2))(7L, 0x29L), 7L, 0x29L, 7L, 0x29L);
    VECTOR(int8_t, 16) l_336 = (VECTOR(int8_t, 16))(0x24L, (VECTOR(int8_t, 4))(0x24L, (VECTOR(int8_t, 2))(0x24L, 8L), 8L), 8L, 0x24L, 8L, (VECTOR(int8_t, 2))(0x24L, 8L), (VECTOR(int8_t, 2))(0x24L, 8L), 0x24L, 8L, 0x24L, 8L);
    VECTOR(int64_t, 2) l_341 = (VECTOR(int64_t, 2))((-1L), (-10L));
    VECTOR(int64_t, 2) l_343 = (VECTOR(int64_t, 2))(6L, (-1L));
    VECTOR(int64_t, 4) l_344 = (VECTOR(int64_t, 4))(0x0B975F80A275DAFDL, (VECTOR(int64_t, 2))(0x0B975F80A275DAFDL, (-1L)), (-1L));
    VECTOR(int64_t, 4) l_346 = (VECTOR(int64_t, 4))(0x003AE5473AB8DFB2L, (VECTOR(int64_t, 2))(0x003AE5473AB8DFB2L, 0x561B1F790AEDD278L), 0x561B1F790AEDD278L);
    VECTOR(int64_t, 16) l_348 = (VECTOR(int64_t, 16))(0x7959A93CC708BA00L, (VECTOR(int64_t, 4))(0x7959A93CC708BA00L, (VECTOR(int64_t, 2))(0x7959A93CC708BA00L, (-1L)), (-1L)), (-1L), 0x7959A93CC708BA00L, (-1L), (VECTOR(int64_t, 2))(0x7959A93CC708BA00L, (-1L)), (VECTOR(int64_t, 2))(0x7959A93CC708BA00L, (-1L)), 0x7959A93CC708BA00L, (-1L), 0x7959A93CC708BA00L, (-1L));
    uint64_t l_349[3];
    int8_t **l_357[3];
    int32_t *l_400 = &p_1544->g_118[3][2][0];
    VECTOR(uint32_t, 16) l_408 = (VECTOR(uint32_t, 16))(0xA097B807L, (VECTOR(uint32_t, 4))(0xA097B807L, (VECTOR(uint32_t, 2))(0xA097B807L, 4294967295UL), 4294967295UL), 4294967295UL, 0xA097B807L, 4294967295UL, (VECTOR(uint32_t, 2))(0xA097B807L, 4294967295UL), (VECTOR(uint32_t, 2))(0xA097B807L, 4294967295UL), 0xA097B807L, 4294967295UL, 0xA097B807L, 4294967295UL);
    int32_t l_420 = 0x123B36E4L;
    int32_t l_421 = 0x6AB23089L;
    int32_t l_422 = 5L;
    int32_t l_423 = (-10L);
    int32_t l_424 = 0L;
    int32_t l_425 = 0x5BA68786L;
    int32_t l_426 = 0x7914ECA7L;
    int32_t l_427 = 2L;
    int32_t l_428 = 0L;
    int32_t l_429[3][6][4] = {{{(-2L),0x42FA9EF6L,0x2576E8CAL,0x0624E9A7L},{(-2L),0x42FA9EF6L,0x2576E8CAL,0x0624E9A7L},{(-2L),0x42FA9EF6L,0x2576E8CAL,0x0624E9A7L},{(-2L),0x42FA9EF6L,0x2576E8CAL,0x0624E9A7L},{(-2L),0x42FA9EF6L,0x2576E8CAL,0x0624E9A7L},{(-2L),0x42FA9EF6L,0x2576E8CAL,0x0624E9A7L}},{{(-2L),0x42FA9EF6L,0x2576E8CAL,0x0624E9A7L},{(-2L),0x42FA9EF6L,0x2576E8CAL,0x0624E9A7L},{(-2L),0x42FA9EF6L,0x2576E8CAL,0x0624E9A7L},{(-2L),0x42FA9EF6L,0x2576E8CAL,0x0624E9A7L},{(-2L),0x42FA9EF6L,0x2576E8CAL,0x0624E9A7L},{(-2L),0x42FA9EF6L,0x2576E8CAL,0x0624E9A7L}},{{(-2L),0x42FA9EF6L,0x2576E8CAL,0x0624E9A7L},{(-2L),0x42FA9EF6L,0x2576E8CAL,0x0624E9A7L},{(-2L),0x42FA9EF6L,0x2576E8CAL,0x0624E9A7L},{(-2L),0x42FA9EF6L,0x2576E8CAL,0x0624E9A7L},{(-2L),0x42FA9EF6L,0x2576E8CAL,0x0624E9A7L},{(-2L),0x42FA9EF6L,0x2576E8CAL,0x0624E9A7L}}};
    VECTOR(int32_t, 2) l_440 = (VECTOR(int32_t, 2))(0x7DFE5AC8L, 2L);
    VECTOR(int8_t, 4) l_447 = (VECTOR(int8_t, 4))(0x25L, (VECTOR(int8_t, 2))(0x25L, 3L), 3L);
    uint32_t *l_450 = &p_1544->g_228.f0;
    int32_t *l_451 = &l_420;
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_349[i] = 0x1A8787C3A7301B06L;
    for (i = 0; i < 3; i++)
        l_357[i] = &l_332;
    if (((p_127 <= ((safe_rshift_func_uint8_t_u_u((safe_mod_func_uint16_t_u_u((p_1544->g_143--), p_1544->g_comm_values[p_1544->tid])), 7)) || (((*p_126) = func_146((p_128 , (func_152(l_157, ((((0xCA66A500L && ((safe_mul_func_int16_t_s_s((((safe_lshift_func_int8_t_s_u(p_128, (safe_lshift_func_uint8_t_u_u(((*l_164)--), p_1544->g_2.y)))) >= 0x5551144CL) & (safe_lshift_func_int8_t_s_u((0x0F53773B47B3EE37L | GROUP_DIVERGE(2, 1)), p_129))), p_128)) , 0x1A20042BL)) ^ p_1544->g_143) | p_1544->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1544->tid, 2))]) , l_142[0][5][1]), l_157.f0, p_129, p_1544) , &p_1544->g_192)), p_130, p_1544->g_223.f1, (*p_1544->g_116), l_142[0][5][1], p_1544)) != p_1544->g_247))) < 0UL))
    { /* block id: 109 */
        int64_t l_259 = (-1L);
        int32_t l_260[2];
        VECTOR(int64_t, 8) l_296 = (VECTOR(int64_t, 8))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, (-8L)), (-8L)), (-8L), 1L, (-8L));
        int32_t **l_301 = &p_1544->g_117;
        int i;
        for (i = 0; i < 2; i++)
            l_260[i] = 0x44B01157L;
        for (p_127 = 0; (p_127 <= (-6)); --p_127)
        { /* block id: 112 */
            uint32_t l_262 = 0xF2BAD14AL;
            VECTOR(int32_t, 16) l_300 = (VECTOR(int32_t, 16))(0x2D813F8EL, (VECTOR(int32_t, 4))(0x2D813F8EL, (VECTOR(int32_t, 2))(0x2D813F8EL, 0L), 0L), 0L, 0x2D813F8EL, 0L, (VECTOR(int32_t, 2))(0x2D813F8EL, 0L), (VECTOR(int32_t, 2))(0x2D813F8EL, 0L), 0x2D813F8EL, 0L, 0x2D813F8EL, 0L);
            int32_t *l_303 = &p_1544->g_171[4];
            int i;
            if ((safe_rshift_func_int16_t_s_u(((-1L) || 247UL), 3)))
            { /* block id: 113 */
                if (l_157.f0)
                    break;
                if (l_157.f0)
                    continue;
            }
            else
            { /* block id: 116 */
                struct S2 *l_254 = (void*)0;
                struct S2 **l_253 = &l_254;
                int64_t l_261 = 0x28C14D8FB2C9AD87L;
                uint16_t *l_278 = &p_1544->g_209.f0;
                VECTOR(uint32_t, 8) l_290 = (VECTOR(uint32_t, 8))(0xB1782176L, (VECTOR(uint32_t, 4))(0xB1782176L, (VECTOR(uint32_t, 2))(0xB1782176L, 0x3A9B56FAL), 0x3A9B56FAL), 0x3A9B56FAL, 0xB1782176L, 0x3A9B56FAL);
                int32_t l_299 = 0x171A9CFEL;
                int i;
                (*l_253) = &p_1544->g_226[4][2][0];
                for (p_1544->g_192 = 0; (p_1544->g_192 > 35); p_1544->g_192 = safe_add_func_int16_t_s_s(p_1544->g_192, 4))
                { /* block id: 120 */
                    int32_t l_257[7] = {0x2F57389EL,(-2L),0x2F57389EL,0x2F57389EL,(-2L),0x2F57389EL,0x2F57389EL};
                    int32_t *l_258[4][7][5] = {{{&p_1544->g_171[0],&p_1544->g_171[2],(void*)0,&p_1544->g_171[5],&p_1544->g_171[2]},{&p_1544->g_171[0],&p_1544->g_171[2],(void*)0,&p_1544->g_171[5],&p_1544->g_171[2]},{&p_1544->g_171[0],&p_1544->g_171[2],(void*)0,&p_1544->g_171[5],&p_1544->g_171[2]},{&p_1544->g_171[0],&p_1544->g_171[2],(void*)0,&p_1544->g_171[5],&p_1544->g_171[2]},{&p_1544->g_171[0],&p_1544->g_171[2],(void*)0,&p_1544->g_171[5],&p_1544->g_171[2]},{&p_1544->g_171[0],&p_1544->g_171[2],(void*)0,&p_1544->g_171[5],&p_1544->g_171[2]},{&p_1544->g_171[0],&p_1544->g_171[2],(void*)0,&p_1544->g_171[5],&p_1544->g_171[2]}},{{&p_1544->g_171[0],&p_1544->g_171[2],(void*)0,&p_1544->g_171[5],&p_1544->g_171[2]},{&p_1544->g_171[0],&p_1544->g_171[2],(void*)0,&p_1544->g_171[5],&p_1544->g_171[2]},{&p_1544->g_171[0],&p_1544->g_171[2],(void*)0,&p_1544->g_171[5],&p_1544->g_171[2]},{&p_1544->g_171[0],&p_1544->g_171[2],(void*)0,&p_1544->g_171[5],&p_1544->g_171[2]},{&p_1544->g_171[0],&p_1544->g_171[2],(void*)0,&p_1544->g_171[5],&p_1544->g_171[2]},{&p_1544->g_171[0],&p_1544->g_171[2],(void*)0,&p_1544->g_171[5],&p_1544->g_171[2]},{&p_1544->g_171[0],&p_1544->g_171[2],(void*)0,&p_1544->g_171[5],&p_1544->g_171[2]}},{{&p_1544->g_171[0],&p_1544->g_171[2],(void*)0,&p_1544->g_171[5],&p_1544->g_171[2]},{&p_1544->g_171[0],&p_1544->g_171[2],(void*)0,&p_1544->g_171[5],&p_1544->g_171[2]},{&p_1544->g_171[0],&p_1544->g_171[2],(void*)0,&p_1544->g_171[5],&p_1544->g_171[2]},{&p_1544->g_171[0],&p_1544->g_171[2],(void*)0,&p_1544->g_171[5],&p_1544->g_171[2]},{&p_1544->g_171[0],&p_1544->g_171[2],(void*)0,&p_1544->g_171[5],&p_1544->g_171[2]},{&p_1544->g_171[0],&p_1544->g_171[2],(void*)0,&p_1544->g_171[5],&p_1544->g_171[2]},{&p_1544->g_171[0],&p_1544->g_171[2],(void*)0,&p_1544->g_171[5],&p_1544->g_171[2]}},{{&p_1544->g_171[0],&p_1544->g_171[2],(void*)0,&p_1544->g_171[5],&p_1544->g_171[2]},{&p_1544->g_171[0],&p_1544->g_171[2],(void*)0,&p_1544->g_171[5],&p_1544->g_171[2]},{&p_1544->g_171[0],&p_1544->g_171[2],(void*)0,&p_1544->g_171[5],&p_1544->g_171[2]},{&p_1544->g_171[0],&p_1544->g_171[2],(void*)0,&p_1544->g_171[5],&p_1544->g_171[2]},{&p_1544->g_171[0],&p_1544->g_171[2],(void*)0,&p_1544->g_171[5],&p_1544->g_171[2]},{&p_1544->g_171[0],&p_1544->g_171[2],(void*)0,&p_1544->g_171[5],&p_1544->g_171[2]},{&p_1544->g_171[0],&p_1544->g_171[2],(void*)0,&p_1544->g_171[5],&p_1544->g_171[2]}}};
                    VECTOR(int64_t, 4) l_267 = (VECTOR(int64_t, 4))(0x5AAC8FB9A0D7941CL, (VECTOR(int64_t, 2))(0x5AAC8FB9A0D7941CL, (-1L)), (-1L));
                    int8_t *l_269[9][10][1] = {{{&p_1544->g_270},{&p_1544->g_270},{&p_1544->g_270},{&p_1544->g_270},{&p_1544->g_270},{&p_1544->g_270},{&p_1544->g_270},{&p_1544->g_270},{&p_1544->g_270},{&p_1544->g_270}},{{&p_1544->g_270},{&p_1544->g_270},{&p_1544->g_270},{&p_1544->g_270},{&p_1544->g_270},{&p_1544->g_270},{&p_1544->g_270},{&p_1544->g_270},{&p_1544->g_270},{&p_1544->g_270}},{{&p_1544->g_270},{&p_1544->g_270},{&p_1544->g_270},{&p_1544->g_270},{&p_1544->g_270},{&p_1544->g_270},{&p_1544->g_270},{&p_1544->g_270},{&p_1544->g_270},{&p_1544->g_270}},{{&p_1544->g_270},{&p_1544->g_270},{&p_1544->g_270},{&p_1544->g_270},{&p_1544->g_270},{&p_1544->g_270},{&p_1544->g_270},{&p_1544->g_270},{&p_1544->g_270},{&p_1544->g_270}},{{&p_1544->g_270},{&p_1544->g_270},{&p_1544->g_270},{&p_1544->g_270},{&p_1544->g_270},{&p_1544->g_270},{&p_1544->g_270},{&p_1544->g_270},{&p_1544->g_270},{&p_1544->g_270}},{{&p_1544->g_270},{&p_1544->g_270},{&p_1544->g_270},{&p_1544->g_270},{&p_1544->g_270},{&p_1544->g_270},{&p_1544->g_270},{&p_1544->g_270},{&p_1544->g_270},{&p_1544->g_270}},{{&p_1544->g_270},{&p_1544->g_270},{&p_1544->g_270},{&p_1544->g_270},{&p_1544->g_270},{&p_1544->g_270},{&p_1544->g_270},{&p_1544->g_270},{&p_1544->g_270},{&p_1544->g_270}},{{&p_1544->g_270},{&p_1544->g_270},{&p_1544->g_270},{&p_1544->g_270},{&p_1544->g_270},{&p_1544->g_270},{&p_1544->g_270},{&p_1544->g_270},{&p_1544->g_270},{&p_1544->g_270}},{{&p_1544->g_270},{&p_1544->g_270},{&p_1544->g_270},{&p_1544->g_270},{&p_1544->g_270},{&p_1544->g_270},{&p_1544->g_270},{&p_1544->g_270},{&p_1544->g_270},{&p_1544->g_270}}};
                    uint16_t **l_276[7][10] = {{(void*)0,(void*)0,&l_142[1][0][0],&l_142[3][0][2],&l_142[3][4][2],&l_142[3][0][2],&l_142[1][0][0],(void*)0,(void*)0,&l_142[1][0][0]},{(void*)0,(void*)0,&l_142[1][0][0],&l_142[3][0][2],&l_142[3][4][2],&l_142[3][0][2],&l_142[1][0][0],(void*)0,(void*)0,&l_142[1][0][0]},{(void*)0,(void*)0,&l_142[1][0][0],&l_142[3][0][2],&l_142[3][4][2],&l_142[3][0][2],&l_142[1][0][0],(void*)0,(void*)0,&l_142[1][0][0]},{(void*)0,(void*)0,&l_142[1][0][0],&l_142[3][0][2],&l_142[3][4][2],&l_142[3][0][2],&l_142[1][0][0],(void*)0,(void*)0,&l_142[1][0][0]},{(void*)0,(void*)0,&l_142[1][0][0],&l_142[3][0][2],&l_142[3][4][2],&l_142[3][0][2],&l_142[1][0][0],(void*)0,(void*)0,&l_142[1][0][0]},{(void*)0,(void*)0,&l_142[1][0][0],&l_142[3][0][2],&l_142[3][4][2],&l_142[3][0][2],&l_142[1][0][0],(void*)0,(void*)0,&l_142[1][0][0]},{(void*)0,(void*)0,&l_142[1][0][0],&l_142[3][0][2],&l_142[3][4][2],&l_142[3][0][2],&l_142[1][0][0],(void*)0,(void*)0,&l_142[1][0][0]}};
                    int i, j, k;
                    l_262--;
                }
                p_1544->g_170 = ((*p_1544->g_116) = l_303);
            }
        }
    }
    else
    { /* block id: 140 */
        int64_t l_312 = 0x4E392085BA5771FBL;
        int32_t *l_326 = (void*)0;
        int32_t *l_327 = (void*)0;
        int32_t *l_328 = (void*)0;
        uint64_t l_329 = 0x36F4A3E529422D7DL;
        (**p_1544->g_116) = (*l_302);
        (*l_302) = (((safe_mod_func_uint64_t_u_u(((+(l_306 = p_1544->g_197.s6)) != (((((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(l_307.xxyy)).xwzwxwzz)).s1 > (safe_lshift_func_int8_t_s_u((0xA05840F3L < (l_312 == ((safe_unary_minus_func_uint16_t_u((((safe_sub_func_uint32_t_u_u((7UL == (((safe_lshift_func_int16_t_s_u(((VECTOR(int16_t, 16))(p_1544->g_318.s4205730532243154)).s3, 14)) , p_130) >= p_128)), ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))((p_1544->g_268.s4 ^= ((((VECTOR(int16_t, 2))(l_319.yy)).lo || (safe_add_func_int8_t_s_s(((safe_mul_func_int16_t_s_s((safe_lshift_func_uint16_t_u_u(p_128, 2)), p_129)) && (**p_1544->g_116)), 1L))) <= 0xB2L)), ((VECTOR(int32_t, 2))(0x6BD89B40L)), 0x14CF8196L, ((VECTOR(int32_t, 4))((-1L))))).lo)).y)) && l_329) ^ (*l_302)))) != p_129))), 3))) && 1L) < (*l_302))), 1UL)) & p_1544->g_209.f1) ^ p_127);
    }
    if ((safe_lshift_func_int8_t_s_s(((*l_333) &= (*l_302)), (!((VECTOR(int8_t, 2))(mad_sat(((VECTOR(int8_t, 2))(hadd(((VECTOR(int8_t, 8))(mad_sat(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(p_1544->g_334.s45)), ((VECTOR(int8_t, 2))(clz(((VECTOR(int8_t, 8))(add_sat(((VECTOR(int8_t, 2))(0x0DL, 1L)).yxyyyyyx, ((VECTOR(int8_t, 2))(l_335.s6c)).yyxyyyxy))).s50))), (-1L), ((VECTOR(int8_t, 2))((-9L), 0x71L)), ((VECTOR(int8_t, 2))(0x70L, 1L)), ((VECTOR(int8_t, 2))(rhadd(((VECTOR(int8_t, 8))(rotate(((VECTOR(int8_t, 16))(l_336.se47427df7e95d466)).lo, ((VECTOR(int8_t, 8))(rhadd(((VECTOR(int8_t, 8))(0x22L, (p_1544->g_271.s7 ^= (safe_add_func_int64_t_s_s(((VECTOR(int64_t, 16))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 16),((VECTOR(int64_t, 4))(((VECTOR(int64_t, 4))(hadd(((VECTOR(int64_t, 8))(add_sat(((VECTOR(int64_t, 2))(safe_clamp_func(VECTOR(int64_t, 2),VECTOR(int64_t, 2),((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(p_1544->g_339.xxyy)).zwxwywxz)).s32, ((VECTOR(int64_t, 16))(add_sat(((VECTOR(int64_t, 4))(p_1544->g_340.wzzz)).wywwywzyzxyzwxwx, ((VECTOR(int64_t, 2))(mul_hi(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 2))(max(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 16))(hadd(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 16))(mad_sat(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 2))(safe_clamp_func(VECTOR(int64_t, 2),VECTOR(int64_t, 2),((VECTOR(int64_t, 8))(add_sat(((VECTOR(int64_t, 16))(l_341.yxyyxyyyxxxyyyyy)).odd, ((VECTOR(int64_t, 4))(p_1544->g_342.s1d39)).wwyxxyyx))).s10, ((VECTOR(int64_t, 8))(l_343.yyxyyxxx)).s50, ((VECTOR(int64_t, 4))(l_344.zxzz)).hi))))).yyyxxyyxxxxxxxxy, ((VECTOR(int64_t, 8))(add_sat(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 16))(p_1544->g_345.s57b4add87dcfb766)))).odd, ((VECTOR(int64_t, 8))(l_346.zxywzxzw))))).s4226737117213402, ((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))(sub_sat(((VECTOR(int64_t, 16))(p_1544->g_347.yywwyzyzyyzyxyxy)).s5ee4, ((VECTOR(int64_t, 16))((-1L), p_1544->g_209.f0, ((VECTOR(int64_t, 4))(min(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(l_348.s66e4)).zzzzyzyy)).hi, ((VECTOR(int64_t, 2))(0x5D5B797909ACC4F9L, 0x4D84ABE1116D29E5L)).xyyy))), 8L, 0x048EE19A43D3EC30L, 0x7401BF38B35FB31BL, (l_349[0] == ((safe_sub_func_uint16_t_u_u(p_127, (*p_1544->g_277))) != (safe_mul_func_int8_t_s_s((p_1544->g_223.f2 >= ((safe_sub_func_uint16_t_u_u((p_1544->g_356 == (p_1544->g_358 = p_1544->g_356)), (*p_1544->g_277))) <= p_1544->g_359)), 0UL)))), (-10L), ((VECTOR(int64_t, 4))(0x1DA927395B717DFBL)), 1L)).s77ce))).yzxxyyyxzzzzyzzw))))).odd)).s5704067166257744, ((VECTOR(int64_t, 16))((-1L)))))).even)).s23, (int64_t)(*l_302)))), p_1544->g_342.s8, ((VECTOR(int64_t, 4))(0x0D577884ACE62D61L)), ((VECTOR(int64_t, 2))(0x39A8504BD5C5098BL)), ((VECTOR(int64_t, 4))(0x53821B52B39CA8FAL)), 1L, (-4L), 1L)).lo)).s20, ((VECTOR(int64_t, 2))(9L))))).xyyxyyyyyyyxxxxx))).s9f, ((VECTOR(int64_t, 2))((-1L)))))).yxxxxyxy, ((VECTOR(int64_t, 8))(1L))))).even, ((VECTOR(int64_t, 4))(0x5F40FD9A0FDAE10BL))))))).wxxyxyzxyxzwxzyy, ((VECTOR(int64_t, 16))(1L)), ((VECTOR(int64_t, 16))(0x6D70E8C3949C6922L))))).sc, 3UL))), 0x73L, 0x11L, (*l_302), (*l_302), 0x76L, (-1L))), ((VECTOR(int8_t, 8))((-10L))))))))).s76, ((VECTOR(int8_t, 2))(0x05L))))), ((VECTOR(int8_t, 2))(1L)), (*l_302), 0x67L, (-6L))).hi, ((VECTOR(int8_t, 8))(0x43L)), ((VECTOR(int8_t, 8))(0x70L))))).s20, ((VECTOR(int8_t, 2))((-1L)))))), ((VECTOR(int8_t, 2))(0x0AL)), ((VECTOR(int8_t, 2))(0x40L))))).odd))))
    { /* block id: 149 */
        VECTOR(int32_t, 16) l_362 = (VECTOR(int32_t, 16))(0x18055757L, (VECTOR(int32_t, 4))(0x18055757L, (VECTOR(int32_t, 2))(0x18055757L, 8L), 8L), 8L, 0x18055757L, 8L, (VECTOR(int32_t, 2))(0x18055757L, 8L), (VECTOR(int32_t, 2))(0x18055757L, 8L), 0x18055757L, 8L, 0x18055757L, 8L);
        struct S1 *l_364 = &p_1544->g_365;
        uint16_t *l_398 = (void*)0;
        int i;
        for (p_129 = 0; (p_129 >= 9); p_129++)
        { /* block id: 152 */
            int32_t l_373 = 0x636EED26L;
            VECTOR(uint64_t, 8) l_384 = (VECTOR(uint64_t, 8))(6UL, (VECTOR(uint64_t, 4))(6UL, (VECTOR(uint64_t, 2))(6UL, 1UL), 1UL), 1UL, 6UL, 1UL);
            int32_t *l_397 = (void*)0;
            uint16_t *l_401 = &p_1544->g_209.f0;
            uint16_t **l_402 = &l_142[2][5][2];
            uint32_t l_405 = 0x7F549D7BL;
            int i;
            if (((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(l_362.sd3)), 0x396E8CDEL, 1L)).w)
            { /* block id: 153 */
                struct S1 **l_363 = &p_1544->g_225;
                (*p_1544->g_116) = ((((*l_363) = (*p_1544->g_224)) != l_364) , (*p_1544->g_116));
            }
            else
            { /* block id: 156 */
                uint64_t *l_370 = (void*)0;
                uint64_t *l_371 = (void*)0;
                uint64_t *l_372[7][8] = {{(void*)0,&l_349[1],(void*)0,(void*)0,&l_349[1],(void*)0,(void*)0,&l_349[1]},{(void*)0,&l_349[1],(void*)0,(void*)0,&l_349[1],(void*)0,(void*)0,&l_349[1]},{(void*)0,&l_349[1],(void*)0,(void*)0,&l_349[1],(void*)0,(void*)0,&l_349[1]},{(void*)0,&l_349[1],(void*)0,(void*)0,&l_349[1],(void*)0,(void*)0,&l_349[1]},{(void*)0,&l_349[1],(void*)0,(void*)0,&l_349[1],(void*)0,(void*)0,&l_349[1]},{(void*)0,&l_349[1],(void*)0,(void*)0,&l_349[1],(void*)0,(void*)0,&l_349[1]},{(void*)0,&l_349[1],(void*)0,(void*)0,&l_349[1],(void*)0,(void*)0,&l_349[1]}};
                uint16_t *l_377 = &p_1544->g_192;
                int32_t l_390[3];
                int32_t l_395 = (-1L);
                uint8_t **l_396 = &l_164;
                int i, j;
                for (i = 0; i < 3; i++)
                    l_390[i] = 0x1D9C8695L;
                (*p_1544->g_247) = ((p_1544->g_209.f2 | p_129) <= (l_373 = ((-4L) && ((0x2CC5DB2F02502A17L == (0x2AAE1BD1A7188E3EL && 0xBE3AFB8C85CB0032L)) || (safe_rshift_func_uint16_t_u_u((safe_sub_func_int64_t_s_s(p_127, GROUP_DIVERGE(2, 1))), 0))))));
                for (p_127 = (-29); (p_127 > 22); p_127++)
                { /* block id: 161 */
                    uint8_t l_378 = 255UL;
                    int64_t *l_385 = (void*)0;
                    int64_t *l_386 = &p_1544->g_223.f3;
                    VECTOR(uint8_t, 8) l_393 = (VECTOR(uint8_t, 8))(0x99L, (VECTOR(uint8_t, 4))(0x99L, (VECTOR(uint8_t, 2))(0x99L, 254UL), 254UL), 254UL, 0x99L, 254UL);
                    int i;
                    (*p_1544->g_116) = func_146((p_1544->g_376 , l_377), ((((l_378 = p_127) < (safe_lshift_func_int16_t_s_s((p_127 & ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 16))(sub_sat(((VECTOR(int64_t, 16))(mad_sat(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 16))(((*l_386) |= ((safe_rshift_func_uint16_t_u_s((0x35DD1BB5C42688E9L ^ (+((VECTOR(uint64_t, 8))(rotate(((VECTOR(uint64_t, 16))(p_1544->g_383.yyyyxyyxyxxyxyxy)).hi, ((VECTOR(uint64_t, 16))(l_384.s5337657316765310)).odd))).s1)), 7)) == (p_1544->g_228.f0 || 0x716EL))), 0x6AE89E46A2AC250FL, ((VECTOR(int64_t, 2))(p_1544->g_387.xx)), 6L, (((((safe_rshift_func_uint8_t_u_s((l_390[2] <= (safe_lshift_func_uint8_t_u_s(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 16))(l_393.s3635471640536721)))).s0, (l_395 = (safe_unary_minus_func_int64_t_s(p_1544->g_228.f3)))))), l_390[1])) , l_396) == p_1544->g_195) == l_393.s4) | p_128), 0x1A37B589032B6A94L, ((VECTOR(int64_t, 2))(0x6968C00933E713AFL)), (-3L), ((VECTOR(int64_t, 2))(0x7785277FD34036CAL)), 0L, 1L, (-4L), 0x6FB80693F713122BL)))), ((VECTOR(int64_t, 16))(0x2FAB9A82DE8E09D2L)), ((VECTOR(int64_t, 16))((-1L)))))), ((VECTOR(int64_t, 16))(0L))))).lo)))).s7), 0))) < 0x219653A8L) ^ (*l_302)), p_1544->g_387.y, l_397, l_398, p_1544);
                    (*p_126) = (((*l_164) ^= ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 2))(p_1544->g_399.xz)))).odd) , func_146(l_377, p_1544->g_365.f1, p_1544->g_209.f1, l_400, (p_130 , l_401), p_1544));
                }
            }
            (*p_126) = (p_1544->g_411 , (*p_1544->g_116));
            (*p_1544->g_225) = p_1544->g_412;
        }
    }
    else
    { /* block id: 176 */
        (*p_1544->g_247) = (*p_1544->g_247);
    }
    for (p_128 = 0; (p_128 == 24); p_128 = safe_add_func_uint16_t_u_u(p_128, 6))
    { /* block id: 181 */
        int32_t *l_416 = &p_1544->g_118[5][2][2];
        int32_t *l_417 = &p_1544->g_171[2];
        int32_t *l_418 = &p_1544->g_171[3];
        int32_t *l_419[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
        uint64_t l_430 = 1UL;
        int i;
        (*p_1544->g_225) = p_1544->g_415;
        (*p_1544->g_225) = (*p_1544->g_225);
        l_430--;
    }
    (*l_451) |= (safe_add_func_uint64_t_u_u((safe_add_func_uint8_t_u_u(((VECTOR(uint8_t, 16))(rotate(((VECTOR(uint8_t, 2))(0x7BL, 0x57L)).xxyyyyxyyxxyxxyy, ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 16))(p_1544->g_437.s2532a272170ef9ff)).sf035)).wwxzwzyxzzxzzwwz))).sa, (safe_add_func_uint16_t_u_u((0xBDF094ABL < ((VECTOR(int32_t, 16))(0x4C2ED97CL, ((VECTOR(int32_t, 4))(6L, ((VECTOR(int32_t, 2))(l_440.xy)), (-4L))), ((VECTOR(int32_t, 8))(0x52A105F0L, 1L, (((&l_306 == (l_164 = &l_306)) <= (p_1544->g_226[4][2][0].f0 < (((VECTOR(uint16_t, 2))(65535UL, 0x1D11L)).lo != (safe_sub_func_int32_t_s_s((safe_div_func_uint8_t_u_u(FAKE_DIVERGE(p_1544->group_1_offset, get_group_id(1), 10), p_130)), (((VECTOR(int64_t, 8))((((VECTOR(int8_t, 4))(rotate(((VECTOR(int8_t, 4))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 4),((VECTOR(int8_t, 2))(0L, 0x09L)).yyxy, ((VECTOR(int8_t, 4))(0x21L, p_127, 0x48L, 4L)), ((VECTOR(int8_t, 16))(rotate(((VECTOR(int8_t, 2))(p_1544->g_445.s63)).yxxxyyyxyyxxxyyx, ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(p_1544->g_446.s7336)).zxywwyxw)).s5750217276770215))).se197))), ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 16))(l_447.wywwzyzwxwyzyxzz)))).s0b2c))).y ^ (((((*l_450) = (((safe_rshift_func_int8_t_s_s(((l_157 , (*l_302)) , p_127), (*l_400))) >= 0L) , 0xE51AC914L)) , p_1544->g_209.f2) ^ 0xB76F890A241160B6L) || p_128)), p_1544->g_411.f1, 0x60BFEC0C2043F290L, p_1544->g_387.x, ((VECTOR(int64_t, 4))(0L)))).s7 , p_130)))))) != 0x3EL), 0x022B90B3L, ((VECTOR(int32_t, 2))(0x2A4DEAB3L)), 0x06E6DF0AL, 0x781C155FL)), 0x2B42017CL, (-1L), 0x2CD8B536L)).s9), p_1544->g_345.sa)))), p_1544->g_271.s4));
    return p_126;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t * func_146(uint16_t * p_147, int32_t  p_148, int32_t  p_149, int32_t * p_150, uint16_t * p_151, struct S4 * p_1544)
{ /* block id: 96 */
    int32_t *l_246 = &p_1544->g_171[5];
    if ((atomic_inc(&p_1544->g_atomic_input[93 * get_linear_group_id() + 34]) == 7))
    { /* block id: 98 */
        int64_t l_229 = 6L;
        struct S1 l_230 = {-3L,0x2585L,0x05B33355L,-1L,0L};/* VOLATILE GLOBAL l_230 */
        struct S0 l_231 = {65535UL,0L,0x9553L,2L};/* VOLATILE GLOBAL l_231 */
        struct S1 l_232 = {0x294EC9EB89612BCAL,-1L,0x083A2F60L,-1L,0L};/* VOLATILE GLOBAL l_232 */
        struct S1 l_233 = {0x11A3EE48320A03B9L,0L,-1L,0x67068786165B3B2AL,-7L};/* VOLATILE GLOBAL l_233 */
        int8_t l_234 = 0x42L;
        int64_t l_235 = 0x30AF15DCCE0515C3L;
        int32_t l_236[10][6] = {{4L,0x2E55C1E3L,0L,0x0C7AFC61L,2L,4L},{4L,0x2E55C1E3L,0L,0x0C7AFC61L,2L,4L},{4L,0x2E55C1E3L,0L,0x0C7AFC61L,2L,4L},{4L,0x2E55C1E3L,0L,0x0C7AFC61L,2L,4L},{4L,0x2E55C1E3L,0L,0x0C7AFC61L,2L,4L},{4L,0x2E55C1E3L,0L,0x0C7AFC61L,2L,4L},{4L,0x2E55C1E3L,0L,0x0C7AFC61L,2L,4L},{4L,0x2E55C1E3L,0L,0x0C7AFC61L,2L,4L},{4L,0x2E55C1E3L,0L,0x0C7AFC61L,2L,4L},{4L,0x2E55C1E3L,0L,0x0C7AFC61L,2L,4L}};
        VECTOR(uint64_t, 8) l_237 = (VECTOR(uint64_t, 8))(0x74619124565B4DB0L, (VECTOR(uint64_t, 4))(0x74619124565B4DB0L, (VECTOR(uint64_t, 2))(0x74619124565B4DB0L, 0UL), 0UL), 0UL, 0x74619124565B4DB0L, 0UL);
        struct S0 l_238 = {0x7949L,-2L,65526UL,0L};/* VOLATILE GLOBAL l_238 */
        int32_t *l_239 = &l_236[8][5];
        int32_t l_241[8] = {0x0DF3AD5FL,0x0DF3AD5FL,0x0DF3AD5FL,0x0DF3AD5FL,0x0DF3AD5FL,0x0DF3AD5FL,0x0DF3AD5FL,0x0DF3AD5FL};
        int32_t *l_240 = &l_241[6];
        VECTOR(int32_t, 16) l_242 = (VECTOR(int32_t, 16))(9L, (VECTOR(int32_t, 4))(9L, (VECTOR(int32_t, 2))(9L, (-4L)), (-4L)), (-4L), 9L, (-4L), (VECTOR(int32_t, 2))(9L, (-4L)), (VECTOR(int32_t, 2))(9L, (-4L)), 9L, (-4L), 9L, (-4L));
        int32_t l_243 = 0x7F951D92L;
        VECTOR(int32_t, 2) l_244 = (VECTOR(int32_t, 2))(0L, 0L);
        uint64_t l_245 = 0x36AF5C11B6E7ABCDL;
        int i, j;
        l_229 = 9L;
        l_240 = ((l_230 , l_231) , ((l_232 , (((l_233 , (l_236[8][5] = (l_235 = l_234))) , ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))(l_237.s56757556)).s7625765462154755)).se) , l_238)) , l_239));
        l_245 |= ((VECTOR(int32_t, 4))(hadd(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(l_242.sc8ea)).odd)).xyxy, ((VECTOR(int32_t, 8))(0x180521CBL, 0x336D74C5L, 0x29AE6BF3L, l_243, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(l_244.xxxyyyyy)).s52)), (-8L), 0L)).lo))).w;
        unsigned int result = 0;
        result += l_229;
        result += l_230.f0;
        result += l_230.f1;
        result += l_230.f2;
        result += l_230.f3;
        result += l_230.f4;
        result += l_231.f0;
        result += l_231.f1;
        result += l_231.f2;
        result += l_231.f3;
        result += l_232.f0;
        result += l_232.f1;
        result += l_232.f2;
        result += l_232.f3;
        result += l_232.f4;
        result += l_233.f0;
        result += l_233.f1;
        result += l_233.f2;
        result += l_233.f3;
        result += l_233.f4;
        result += l_234;
        result += l_235;
        int l_236_i0, l_236_i1;
        for (l_236_i0 = 0; l_236_i0 < 10; l_236_i0++) {
            for (l_236_i1 = 0; l_236_i1 < 6; l_236_i1++) {
                result += l_236[l_236_i0][l_236_i1];
            }
        }
        result += l_237.s7;
        result += l_237.s6;
        result += l_237.s5;
        result += l_237.s4;
        result += l_237.s3;
        result += l_237.s2;
        result += l_237.s1;
        result += l_237.s0;
        result += l_238.f0;
        result += l_238.f1;
        result += l_238.f2;
        result += l_238.f3;
        int l_241_i0;
        for (l_241_i0 = 0; l_241_i0 < 8; l_241_i0++) {
            result += l_241[l_241_i0];
        }
        result += l_242.sf;
        result += l_242.se;
        result += l_242.sd;
        result += l_242.sc;
        result += l_242.sb;
        result += l_242.sa;
        result += l_242.s9;
        result += l_242.s8;
        result += l_242.s7;
        result += l_242.s6;
        result += l_242.s5;
        result += l_242.s4;
        result += l_242.s3;
        result += l_242.s2;
        result += l_242.s1;
        result += l_242.s0;
        result += l_243;
        result += l_244.y;
        result += l_244.x;
        result += l_245;
        atomic_add(&p_1544->g_special_values[93 * get_linear_group_id() + 34], result);
    }
    else
    { /* block id: 104 */
        (1 + 1);
    }
    return l_246;
}


/* ------------------------------------------ */
/* 
 * reads : p_1544->g_117 p_1544->g_118 p_1544->g_170 p_1544->g_171 p_1544->l_comm_values p_1544->g_143 p_1544->g_2 p_1544->g_195 p_1544->g_192 p_1544->g_224 p_1544->g_226 p_1544->g_228
 * writes: p_1544->g_171 p_1544->g_192 p_1544->g_165 p_1544->g_210 p_1544->g_143 p_1544->g_118 p_1544->g_225 p_1544->g_226
 */
struct S3  func_152(struct S2  p_153, uint16_t * p_154, int16_t  p_155, uint64_t  p_156, struct S4 * p_1544)
{ /* block id: 67 */
    int32_t *l_172 = &p_1544->g_171[4];
    int32_t *l_173 = (void*)0;
    int32_t *l_174 = (void*)0;
    int32_t *l_175 = &p_1544->g_118[4][1][2];
    int32_t *l_176[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    uint8_t l_177 = 0xB0L;
    int16_t l_180 = 0x4CBBL;
    uint32_t l_181 = 4294967295UL;
    volatile uint8_t * volatile *l_200 = &p_1544->g_196;
    int i;
    (*p_1544->g_170) |= (*p_1544->g_117);
    ++l_177;
    l_181--;
    for (p_153.f0 = 22; (p_153.f0 <= 1); p_153.f0--)
    { /* block id: 73 */
        uint32_t *l_191 = (void*)0;
        int32_t l_193 = 3L;
        uint8_t *l_194 = &p_1544->g_165;
        int32_t l_203 = 0x3309AC77L;
        uint32_t l_205 = 1UL;
        struct S0 *l_208 = &p_1544->g_209;
        struct S1 *l_222 = &p_1544->g_223;
        if ((((((p_1544->g_192 = (safe_mul_func_int8_t_s_s(((VECTOR(int8_t, 16))(max(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 8))(max(((VECTOR(int8_t, 4))(p_1544->g_188.s3dc4)).wzxywyxx, ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(0x2EL, 0x2FL)).xyyyxxyyxxxyxxyy)).hi))))).s0245276623614441)), (int8_t)p_1544->g_comm_values[p_1544->tid]))).s4, (((p_156 , (safe_sub_func_int16_t_s_s((-5L), p_1544->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1544->tid, 2))]))) , &l_172) != &l_173)))) , p_1544->g_143) || (p_155 , ((*l_194) = (l_193 , FAKE_DIVERGE(p_1544->local_0_offset, get_local_id(0), 10))))) || p_1544->g_2.x) | l_193))
        { /* block id: 76 */
            int32_t l_201 = (-9L);
            int32_t l_202 = 0x78AED668L;
            int32_t l_204[8] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
            uint8_t **l_214 = &l_194;
            int32_t l_217 = 0L;
            int i;
            l_200 = p_1544->g_195;
            l_205++;
            p_1544->g_210 = l_208;
            for (p_1544->g_143 = 0; (p_1544->g_143 == 2); p_1544->g_143 = safe_add_func_int32_t_s_s(p_1544->g_143, 3))
            { /* block id: 82 */
                uint8_t **l_216 = &l_194;
                uint8_t ***l_215 = &l_216;
                int i, j;
                (*p_1544->g_117) = ((*p_1544->g_170) = (safe_unary_minus_func_uint32_t_u(((l_214 == ((*l_215) = l_214)) , l_217))));
                barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                p_1544->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 2)), permutations[(safe_mod_func_uint32_t_u_u(((safe_sub_func_int64_t_s_s(p_1544->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1544->tid, 2))], (safe_mod_func_int32_t_s_s(p_153.f0, 0x4758E080L)))) != (l_203 & ((p_1544->g_192 && (-4L)) > p_155))), 10))][(safe_mod_func_uint32_t_u_u(p_1544->tid, 2))]));
            }
        }
        else
        { /* block id: 90 */
            struct S2 *l_227 = &p_1544->g_226[0][1][0];
            (*p_1544->g_224) = l_222;
            (*l_227) = p_1544->g_226[4][2][0];
        }
    }
    return p_1544->g_228;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global volatile int *g_atomic_reduction, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[93];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 93; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[93];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 93; i++)
            l_special_values[i] = 0;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    __local int64_t l_comm_values[2];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 2; i++)
            l_comm_values[i] = 1;
    struct S4 c_1545;
    struct S4* p_1544 = &c_1545;
    struct S4 c_1546 = {
        (VECTOR(uint64_t, 2))(18446744073709551614UL, 0UL), // p_1544->g_2
        {{{0x4ED059BEL,6L,0x4E9A3B20L},{0x4ED059BEL,6L,0x4E9A3B20L},{0x4ED059BEL,6L,0x4E9A3B20L},{0x4ED059BEL,6L,0x4E9A3B20L}},{{0x4ED059BEL,6L,0x4E9A3B20L},{0x4ED059BEL,6L,0x4E9A3B20L},{0x4ED059BEL,6L,0x4E9A3B20L},{0x4ED059BEL,6L,0x4E9A3B20L}},{{0x4ED059BEL,6L,0x4E9A3B20L},{0x4ED059BEL,6L,0x4E9A3B20L},{0x4ED059BEL,6L,0x4E9A3B20L},{0x4ED059BEL,6L,0x4E9A3B20L}},{{0x4ED059BEL,6L,0x4E9A3B20L},{0x4ED059BEL,6L,0x4E9A3B20L},{0x4ED059BEL,6L,0x4E9A3B20L},{0x4ED059BEL,6L,0x4E9A3B20L}},{{0x4ED059BEL,6L,0x4E9A3B20L},{0x4ED059BEL,6L,0x4E9A3B20L},{0x4ED059BEL,6L,0x4E9A3B20L},{0x4ED059BEL,6L,0x4E9A3B20L}},{{0x4ED059BEL,6L,0x4E9A3B20L},{0x4ED059BEL,6L,0x4E9A3B20L},{0x4ED059BEL,6L,0x4E9A3B20L},{0x4ED059BEL,6L,0x4E9A3B20L}},{{0x4ED059BEL,6L,0x4E9A3B20L},{0x4ED059BEL,6L,0x4E9A3B20L},{0x4ED059BEL,6L,0x4E9A3B20L},{0x4ED059BEL,6L,0x4E9A3B20L}}}, // p_1544->g_118
        &p_1544->g_118[1][1][1], // p_1544->g_117
        &p_1544->g_117, // p_1544->g_116
        0x7150L, // p_1544->g_143
        0xE0L, // p_1544->g_165
        {0x6F78CEAEL,0x6F78CEAEL,0x6F78CEAEL,0x6F78CEAEL,0x6F78CEAEL,0x6F78CEAEL}, // p_1544->g_171
        &p_1544->g_171[5], // p_1544->g_170
        (VECTOR(int8_t, 16))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, (-8L)), (-8L)), (-8L), 1L, (-8L), (VECTOR(int8_t, 2))(1L, (-8L)), (VECTOR(int8_t, 2))(1L, (-8L)), 1L, (-8L), 1L, (-8L)), // p_1544->g_188
        0x069CL, // p_1544->g_192
        (VECTOR(uint8_t, 16))(0xCEL, (VECTOR(uint8_t, 4))(0xCEL, (VECTOR(uint8_t, 2))(0xCEL, 253UL), 253UL), 253UL, 0xCEL, 253UL, (VECTOR(uint8_t, 2))(0xCEL, 253UL), (VECTOR(uint8_t, 2))(0xCEL, 253UL), 0xCEL, 253UL, 0xCEL, 253UL), // p_1544->g_197
        (void*)0, // p_1544->g_196
        &p_1544->g_196, // p_1544->g_195
        (void*)0, // p_1544->g_198
        (void*)0, // p_1544->g_199
        {0xEC9CL,-1L,0x3395L,3L}, // p_1544->g_209
        (void*)0, // p_1544->g_210
        {0x37A1798669F6CD55L,-1L,0x4CC43AD8L,0x63799410EB92531FL,0x74L}, // p_1544->g_223
        &p_1544->g_223, // p_1544->g_225
        &p_1544->g_225, // p_1544->g_224
        {{{{1UL}},{{1UL}},{{1UL}},{{1UL}}},{{{1UL}},{{1UL}},{{1UL}},{{1UL}}},{{{1UL}},{{1UL}},{{1UL}},{{1UL}}},{{{1UL}},{{1UL}},{{1UL}},{{1UL}}},{{{1UL}},{{1UL}},{{1UL}},{{1UL}}},{{{1UL}},{{1UL}},{{1UL}},{{1UL}}},{{{1UL}},{{1UL}},{{1UL}},{{1UL}}}}, // p_1544->g_226
        {0x3D937E26L,255UL,0x60F2094E8B0BB53FL,0x6A5F42B4L}, // p_1544->g_228
        0x38821186L, // p_1544->g_248
        &p_1544->g_248, // p_1544->g_247
        (VECTOR(int32_t, 8))(0x5BBE2FEDL, (VECTOR(int32_t, 4))(0x5BBE2FEDL, (VECTOR(int32_t, 2))(0x5BBE2FEDL, 0x4ADA77C6L), 0x4ADA77C6L), 0x4ADA77C6L, 0x5BBE2FEDL, 0x4ADA77C6L), // p_1544->g_268
        2L, // p_1544->g_270
        (VECTOR(int8_t, 8))(0x7EL, (VECTOR(int8_t, 4))(0x7EL, (VECTOR(int8_t, 2))(0x7EL, 1L), 1L), 1L, 0x7EL, 1L), // p_1544->g_271
        &p_1544->g_143, // p_1544->g_277
        (VECTOR(int64_t, 2))((-5L), (-1L)), // p_1544->g_297
        (VECTOR(int16_t, 8))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x4350L), 0x4350L), 0x4350L, 0L, 0x4350L), // p_1544->g_318
        (VECTOR(int8_t, 8))(0x5EL, (VECTOR(int8_t, 4))(0x5EL, (VECTOR(int8_t, 2))(0x5EL, (-7L)), (-7L)), (-7L), 0x5EL, (-7L)), // p_1544->g_334
        (VECTOR(int64_t, 2))(0L, (-8L)), // p_1544->g_339
        (VECTOR(int64_t, 4))(4L, (VECTOR(int64_t, 2))(4L, (-1L)), (-1L)), // p_1544->g_340
        (VECTOR(int64_t, 16))(0x0D52681281C403D4L, (VECTOR(int64_t, 4))(0x0D52681281C403D4L, (VECTOR(int64_t, 2))(0x0D52681281C403D4L, 0L), 0L), 0L, 0x0D52681281C403D4L, 0L, (VECTOR(int64_t, 2))(0x0D52681281C403D4L, 0L), (VECTOR(int64_t, 2))(0x0D52681281C403D4L, 0L), 0x0D52681281C403D4L, 0L, 0x0D52681281C403D4L, 0L), // p_1544->g_342
        (VECTOR(int64_t, 16))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, (-1L)), (-1L)), (-1L), 1L, (-1L), (VECTOR(int64_t, 2))(1L, (-1L)), (VECTOR(int64_t, 2))(1L, (-1L)), 1L, (-1L), 1L, (-1L)), // p_1544->g_345
        (VECTOR(int64_t, 4))(0x68FF09D5741AE26AL, (VECTOR(int64_t, 2))(0x68FF09D5741AE26AL, 0x297CDD38A85D321FL), 0x297CDD38A85D321FL), // p_1544->g_347
        (void*)0, // p_1544->g_356
        (void*)0, // p_1544->g_358
        0xC2C8L, // p_1544->g_359
        {1L,0x28FFL,6L,0x6929217A6EE95873L,0x54L}, // p_1544->g_365
        {0xC1F6L,1L,0xBEA3L,0x3C7A2478L}, // p_1544->g_376
        (VECTOR(uint64_t, 2))(0x2F2CEDA1557BB6DEL, 18446744073709551615UL), // p_1544->g_383
        (VECTOR(int64_t, 2))((-6L), 0x675BC7EBA640A0F2L), // p_1544->g_387
        (VECTOR(uint8_t, 4))(0xA2L, (VECTOR(uint8_t, 2))(0xA2L, 255UL), 255UL), // p_1544->g_399
        {0x7300L,7L,65529UL,-1L}, // p_1544->g_404
        {0xE74353DBL,0x59L,0x32829D8D52754B3FL,0x2D524DE3L}, // p_1544->g_411
        {0L,1L,0L,7L,0x51L}, // p_1544->g_412
        {9L,0L,-1L,-3L,0x48L}, // p_1544->g_415
        (VECTOR(uint8_t, 16))(0x89L, (VECTOR(uint8_t, 4))(0x89L, (VECTOR(uint8_t, 2))(0x89L, 0x92L), 0x92L), 0x92L, 0x89L, 0x92L, (VECTOR(uint8_t, 2))(0x89L, 0x92L), (VECTOR(uint8_t, 2))(0x89L, 0x92L), 0x89L, 0x92L, 0x89L, 0x92L), // p_1544->g_437
        (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x38L), 0x38L), 0x38L, 1L, 0x38L), // p_1544->g_445
        (VECTOR(int8_t, 8))(0x3BL, (VECTOR(int8_t, 4))(0x3BL, (VECTOR(int8_t, 2))(0x3BL, (-1L)), (-1L)), (-1L), 0x3BL, (-1L)), // p_1544->g_446
        0x6C7CDB53L, // p_1544->g_458
        {0x7B4913EB669A90F6L,-9L,0L,1L,1L}, // p_1544->g_463
        {0x0872L,0x2DF36B078E373E9CL,65528UL,0x218C6283L}, // p_1544->g_483
        &p_1544->g_358, // p_1544->g_492
        0x65L, // p_1544->g_517
        {{{3L,0x71B54205L,0x308C6063L,0x4AE4A696L,0x38F7ED74L},{3L,0x71B54205L,0x308C6063L,0x4AE4A696L,0x38F7ED74L},{3L,0x71B54205L,0x308C6063L,0x4AE4A696L,0x38F7ED74L},{3L,0x71B54205L,0x308C6063L,0x4AE4A696L,0x38F7ED74L},{3L,0x71B54205L,0x308C6063L,0x4AE4A696L,0x38F7ED74L}},{{3L,0x71B54205L,0x308C6063L,0x4AE4A696L,0x38F7ED74L},{3L,0x71B54205L,0x308C6063L,0x4AE4A696L,0x38F7ED74L},{3L,0x71B54205L,0x308C6063L,0x4AE4A696L,0x38F7ED74L},{3L,0x71B54205L,0x308C6063L,0x4AE4A696L,0x38F7ED74L},{3L,0x71B54205L,0x308C6063L,0x4AE4A696L,0x38F7ED74L}},{{3L,0x71B54205L,0x308C6063L,0x4AE4A696L,0x38F7ED74L},{3L,0x71B54205L,0x308C6063L,0x4AE4A696L,0x38F7ED74L},{3L,0x71B54205L,0x308C6063L,0x4AE4A696L,0x38F7ED74L},{3L,0x71B54205L,0x308C6063L,0x4AE4A696L,0x38F7ED74L},{3L,0x71B54205L,0x308C6063L,0x4AE4A696L,0x38F7ED74L}},{{3L,0x71B54205L,0x308C6063L,0x4AE4A696L,0x38F7ED74L},{3L,0x71B54205L,0x308C6063L,0x4AE4A696L,0x38F7ED74L},{3L,0x71B54205L,0x308C6063L,0x4AE4A696L,0x38F7ED74L},{3L,0x71B54205L,0x308C6063L,0x4AE4A696L,0x38F7ED74L},{3L,0x71B54205L,0x308C6063L,0x4AE4A696L,0x38F7ED74L}},{{3L,0x71B54205L,0x308C6063L,0x4AE4A696L,0x38F7ED74L},{3L,0x71B54205L,0x308C6063L,0x4AE4A696L,0x38F7ED74L},{3L,0x71B54205L,0x308C6063L,0x4AE4A696L,0x38F7ED74L},{3L,0x71B54205L,0x308C6063L,0x4AE4A696L,0x38F7ED74L},{3L,0x71B54205L,0x308C6063L,0x4AE4A696L,0x38F7ED74L}},{{3L,0x71B54205L,0x308C6063L,0x4AE4A696L,0x38F7ED74L},{3L,0x71B54205L,0x308C6063L,0x4AE4A696L,0x38F7ED74L},{3L,0x71B54205L,0x308C6063L,0x4AE4A696L,0x38F7ED74L},{3L,0x71B54205L,0x308C6063L,0x4AE4A696L,0x38F7ED74L},{3L,0x71B54205L,0x308C6063L,0x4AE4A696L,0x38F7ED74L}},{{3L,0x71B54205L,0x308C6063L,0x4AE4A696L,0x38F7ED74L},{3L,0x71B54205L,0x308C6063L,0x4AE4A696L,0x38F7ED74L},{3L,0x71B54205L,0x308C6063L,0x4AE4A696L,0x38F7ED74L},{3L,0x71B54205L,0x308C6063L,0x4AE4A696L,0x38F7ED74L},{3L,0x71B54205L,0x308C6063L,0x4AE4A696L,0x38F7ED74L}},{{3L,0x71B54205L,0x308C6063L,0x4AE4A696L,0x38F7ED74L},{3L,0x71B54205L,0x308C6063L,0x4AE4A696L,0x38F7ED74L},{3L,0x71B54205L,0x308C6063L,0x4AE4A696L,0x38F7ED74L},{3L,0x71B54205L,0x308C6063L,0x4AE4A696L,0x38F7ED74L},{3L,0x71B54205L,0x308C6063L,0x4AE4A696L,0x38F7ED74L}},{{3L,0x71B54205L,0x308C6063L,0x4AE4A696L,0x38F7ED74L},{3L,0x71B54205L,0x308C6063L,0x4AE4A696L,0x38F7ED74L},{3L,0x71B54205L,0x308C6063L,0x4AE4A696L,0x38F7ED74L},{3L,0x71B54205L,0x308C6063L,0x4AE4A696L,0x38F7ED74L},{3L,0x71B54205L,0x308C6063L,0x4AE4A696L,0x38F7ED74L}}}, // p_1544->g_564
        (VECTOR(int8_t, 16))(0x11L, (VECTOR(int8_t, 4))(0x11L, (VECTOR(int8_t, 2))(0x11L, 0x1AL), 0x1AL), 0x1AL, 0x11L, 0x1AL, (VECTOR(int8_t, 2))(0x11L, 0x1AL), (VECTOR(int8_t, 2))(0x11L, 0x1AL), 0x11L, 0x1AL, 0x11L, 0x1AL), // p_1544->g_605
        &p_1544->g_210, // p_1544->g_619
        (VECTOR(uint16_t, 16))(0x4F83L, (VECTOR(uint16_t, 4))(0x4F83L, (VECTOR(uint16_t, 2))(0x4F83L, 0x52EDL), 0x52EDL), 0x52EDL, 0x4F83L, 0x52EDL, (VECTOR(uint16_t, 2))(0x4F83L, 0x52EDL), (VECTOR(uint16_t, 2))(0x4F83L, 0x52EDL), 0x4F83L, 0x52EDL, 0x4F83L, 0x52EDL), // p_1544->g_621
        {{&p_1544->g_411.f1,&p_1544->g_228.f1,&p_1544->g_411.f1,&p_1544->g_411.f1,&p_1544->g_228.f1},{&p_1544->g_411.f1,&p_1544->g_228.f1,&p_1544->g_411.f1,&p_1544->g_411.f1,&p_1544->g_228.f1},{&p_1544->g_411.f1,&p_1544->g_228.f1,&p_1544->g_411.f1,&p_1544->g_411.f1,&p_1544->g_228.f1}}, // p_1544->g_642
        &p_1544->g_642[1][0], // p_1544->g_641
        &p_1544->g_641, // p_1544->g_640
        (VECTOR(int8_t, 16))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 1L), 1L), 1L, 0L, 1L, (VECTOR(int8_t, 2))(0L, 1L), (VECTOR(int8_t, 2))(0L, 1L), 0L, 1L, 0L, 1L), // p_1544->g_649
        (VECTOR(uint64_t, 2))(0x44F896AAA687037FL, 3UL), // p_1544->g_650
        (VECTOR(uint8_t, 16))(2UL, (VECTOR(uint8_t, 4))(2UL, (VECTOR(uint8_t, 2))(2UL, 0UL), 0UL), 0UL, 2UL, 0UL, (VECTOR(uint8_t, 2))(2UL, 0UL), (VECTOR(uint8_t, 2))(2UL, 0UL), 2UL, 0UL, 2UL, 0UL), // p_1544->g_674
        (VECTOR(uint16_t, 8))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 65533UL), 65533UL), 65533UL, 65535UL, 65533UL), // p_1544->g_680
        (VECTOR(uint16_t, 4))(0x5BA5L, (VECTOR(uint16_t, 2))(0x5BA5L, 65535UL), 65535UL), // p_1544->g_681
        (VECTOR(uint16_t, 4))(7UL, (VECTOR(uint16_t, 2))(7UL, 1UL), 1UL), // p_1544->g_682
        {0x4172L,0x4172L,0x4172L,0x4172L,0x4172L,0x4172L,0x4172L,0x4172L,0x4172L}, // p_1544->g_697
        0x25B3L, // p_1544->g_706
        {0UL,-3L,65527UL,1L}, // p_1544->g_732
        (VECTOR(int16_t, 16))(0x18DCL, (VECTOR(int16_t, 4))(0x18DCL, (VECTOR(int16_t, 2))(0x18DCL, 0L), 0L), 0L, 0x18DCL, 0L, (VECTOR(int16_t, 2))(0x18DCL, 0L), (VECTOR(int16_t, 2))(0x18DCL, 0L), 0x18DCL, 0L, 0x18DCL, 0L), // p_1544->g_734
        (VECTOR(uint16_t, 16))(0x902BL, (VECTOR(uint16_t, 4))(0x902BL, (VECTOR(uint16_t, 2))(0x902BL, 0UL), 0UL), 0UL, 0x902BL, 0UL, (VECTOR(uint16_t, 2))(0x902BL, 0UL), (VECTOR(uint16_t, 2))(0x902BL, 0UL), 0x902BL, 0UL, 0x902BL, 0UL), // p_1544->g_743
        (VECTOR(uint16_t, 16))(65531UL, (VECTOR(uint16_t, 4))(65531UL, (VECTOR(uint16_t, 2))(65531UL, 7UL), 7UL), 7UL, 65531UL, 7UL, (VECTOR(uint16_t, 2))(65531UL, 7UL), (VECTOR(uint16_t, 2))(65531UL, 7UL), 65531UL, 7UL, 65531UL, 7UL), // p_1544->g_744
        (void*)0, // p_1544->g_768
        (void*)0, // p_1544->g_769
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_1544->g_773
        {{{&p_1544->g_226[4][2][0],&p_1544->g_226[4][2][0],(void*)0,&p_1544->g_226[4][2][0],&p_1544->g_226[4][1][0],&p_1544->g_226[4][2][0],&p_1544->g_226[4][2][0],(void*)0,(void*)0,&p_1544->g_226[4][2][0]},{&p_1544->g_226[4][2][0],&p_1544->g_226[4][2][0],(void*)0,&p_1544->g_226[4][2][0],&p_1544->g_226[4][1][0],&p_1544->g_226[4][2][0],&p_1544->g_226[4][2][0],(void*)0,(void*)0,&p_1544->g_226[4][2][0]},{&p_1544->g_226[4][2][0],&p_1544->g_226[4][2][0],(void*)0,&p_1544->g_226[4][2][0],&p_1544->g_226[4][1][0],&p_1544->g_226[4][2][0],&p_1544->g_226[4][2][0],(void*)0,(void*)0,&p_1544->g_226[4][2][0]},{&p_1544->g_226[4][2][0],&p_1544->g_226[4][2][0],(void*)0,&p_1544->g_226[4][2][0],&p_1544->g_226[4][1][0],&p_1544->g_226[4][2][0],&p_1544->g_226[4][2][0],(void*)0,(void*)0,&p_1544->g_226[4][2][0]},{&p_1544->g_226[4][2][0],&p_1544->g_226[4][2][0],(void*)0,&p_1544->g_226[4][2][0],&p_1544->g_226[4][1][0],&p_1544->g_226[4][2][0],&p_1544->g_226[4][2][0],(void*)0,(void*)0,&p_1544->g_226[4][2][0]},{&p_1544->g_226[4][2][0],&p_1544->g_226[4][2][0],(void*)0,&p_1544->g_226[4][2][0],&p_1544->g_226[4][1][0],&p_1544->g_226[4][2][0],&p_1544->g_226[4][2][0],(void*)0,(void*)0,&p_1544->g_226[4][2][0]}},{{&p_1544->g_226[4][2][0],&p_1544->g_226[4][2][0],(void*)0,&p_1544->g_226[4][2][0],&p_1544->g_226[4][1][0],&p_1544->g_226[4][2][0],&p_1544->g_226[4][2][0],(void*)0,(void*)0,&p_1544->g_226[4][2][0]},{&p_1544->g_226[4][2][0],&p_1544->g_226[4][2][0],(void*)0,&p_1544->g_226[4][2][0],&p_1544->g_226[4][1][0],&p_1544->g_226[4][2][0],&p_1544->g_226[4][2][0],(void*)0,(void*)0,&p_1544->g_226[4][2][0]},{&p_1544->g_226[4][2][0],&p_1544->g_226[4][2][0],(void*)0,&p_1544->g_226[4][2][0],&p_1544->g_226[4][1][0],&p_1544->g_226[4][2][0],&p_1544->g_226[4][2][0],(void*)0,(void*)0,&p_1544->g_226[4][2][0]},{&p_1544->g_226[4][2][0],&p_1544->g_226[4][2][0],(void*)0,&p_1544->g_226[4][2][0],&p_1544->g_226[4][1][0],&p_1544->g_226[4][2][0],&p_1544->g_226[4][2][0],(void*)0,(void*)0,&p_1544->g_226[4][2][0]},{&p_1544->g_226[4][2][0],&p_1544->g_226[4][2][0],(void*)0,&p_1544->g_226[4][2][0],&p_1544->g_226[4][1][0],&p_1544->g_226[4][2][0],&p_1544->g_226[4][2][0],(void*)0,(void*)0,&p_1544->g_226[4][2][0]},{&p_1544->g_226[4][2][0],&p_1544->g_226[4][2][0],(void*)0,&p_1544->g_226[4][2][0],&p_1544->g_226[4][1][0],&p_1544->g_226[4][2][0],&p_1544->g_226[4][2][0],(void*)0,(void*)0,&p_1544->g_226[4][2][0]}},{{&p_1544->g_226[4][2][0],&p_1544->g_226[4][2][0],(void*)0,&p_1544->g_226[4][2][0],&p_1544->g_226[4][1][0],&p_1544->g_226[4][2][0],&p_1544->g_226[4][2][0],(void*)0,(void*)0,&p_1544->g_226[4][2][0]},{&p_1544->g_226[4][2][0],&p_1544->g_226[4][2][0],(void*)0,&p_1544->g_226[4][2][0],&p_1544->g_226[4][1][0],&p_1544->g_226[4][2][0],&p_1544->g_226[4][2][0],(void*)0,(void*)0,&p_1544->g_226[4][2][0]},{&p_1544->g_226[4][2][0],&p_1544->g_226[4][2][0],(void*)0,&p_1544->g_226[4][2][0],&p_1544->g_226[4][1][0],&p_1544->g_226[4][2][0],&p_1544->g_226[4][2][0],(void*)0,(void*)0,&p_1544->g_226[4][2][0]},{&p_1544->g_226[4][2][0],&p_1544->g_226[4][2][0],(void*)0,&p_1544->g_226[4][2][0],&p_1544->g_226[4][1][0],&p_1544->g_226[4][2][0],&p_1544->g_226[4][2][0],(void*)0,(void*)0,&p_1544->g_226[4][2][0]},{&p_1544->g_226[4][2][0],&p_1544->g_226[4][2][0],(void*)0,&p_1544->g_226[4][2][0],&p_1544->g_226[4][1][0],&p_1544->g_226[4][2][0],&p_1544->g_226[4][2][0],(void*)0,(void*)0,&p_1544->g_226[4][2][0]},{&p_1544->g_226[4][2][0],&p_1544->g_226[4][2][0],(void*)0,&p_1544->g_226[4][2][0],&p_1544->g_226[4][1][0],&p_1544->g_226[4][2][0],&p_1544->g_226[4][2][0],(void*)0,(void*)0,&p_1544->g_226[4][2][0]}},{{&p_1544->g_226[4][2][0],&p_1544->g_226[4][2][0],(void*)0,&p_1544->g_226[4][2][0],&p_1544->g_226[4][1][0],&p_1544->g_226[4][2][0],&p_1544->g_226[4][2][0],(void*)0,(void*)0,&p_1544->g_226[4][2][0]},{&p_1544->g_226[4][2][0],&p_1544->g_226[4][2][0],(void*)0,&p_1544->g_226[4][2][0],&p_1544->g_226[4][1][0],&p_1544->g_226[4][2][0],&p_1544->g_226[4][2][0],(void*)0,(void*)0,&p_1544->g_226[4][2][0]},{&p_1544->g_226[4][2][0],&p_1544->g_226[4][2][0],(void*)0,&p_1544->g_226[4][2][0],&p_1544->g_226[4][1][0],&p_1544->g_226[4][2][0],&p_1544->g_226[4][2][0],(void*)0,(void*)0,&p_1544->g_226[4][2][0]},{&p_1544->g_226[4][2][0],&p_1544->g_226[4][2][0],(void*)0,&p_1544->g_226[4][2][0],&p_1544->g_226[4][1][0],&p_1544->g_226[4][2][0],&p_1544->g_226[4][2][0],(void*)0,(void*)0,&p_1544->g_226[4][2][0]},{&p_1544->g_226[4][2][0],&p_1544->g_226[4][2][0],(void*)0,&p_1544->g_226[4][2][0],&p_1544->g_226[4][1][0],&p_1544->g_226[4][2][0],&p_1544->g_226[4][2][0],(void*)0,(void*)0,&p_1544->g_226[4][2][0]},{&p_1544->g_226[4][2][0],&p_1544->g_226[4][2][0],(void*)0,&p_1544->g_226[4][2][0],&p_1544->g_226[4][1][0],&p_1544->g_226[4][2][0],&p_1544->g_226[4][2][0],(void*)0,(void*)0,&p_1544->g_226[4][2][0]}}}, // p_1544->g_774
        {&p_1544->g_226[4][2][0],&p_1544->g_226[4][2][0],&p_1544->g_226[4][2][0]}, // p_1544->g_776
        &p_1544->g_776[2], // p_1544->g_775
        {0xABF3L,-10L,0x33CBL,0x05AC896EL}, // p_1544->g_854
        4294967295UL, // p_1544->g_867
        (VECTOR(int8_t, 8))(0x32L, (VECTOR(int8_t, 4))(0x32L, (VECTOR(int8_t, 2))(0x32L, 0L), 0L), 0L, 0x32L, 0L), // p_1544->g_881
        (VECTOR(int8_t, 2))(0x16L, (-1L)), // p_1544->g_882
        (VECTOR(int8_t, 16))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x35L), 0x35L), 0x35L, 1L, 0x35L, (VECTOR(int8_t, 2))(1L, 0x35L), (VECTOR(int8_t, 2))(1L, 0x35L), 1L, 0x35L, 1L, 0x35L), // p_1544->g_884
        1L, // p_1544->g_890
        {0x6EECD2A88A1DE391L,0x2DC3L,0x17ADF32DL,0x7F6F1BBCDABE38B2L,-9L}, // p_1544->g_950
        &p_1544->g_225, // p_1544->g_966
        (void*)0, // p_1544->g_975
        (VECTOR(uint16_t, 16))(0x6540L, (VECTOR(uint16_t, 4))(0x6540L, (VECTOR(uint16_t, 2))(0x6540L, 1UL), 1UL), 1UL, 0x6540L, 1UL, (VECTOR(uint16_t, 2))(0x6540L, 1UL), (VECTOR(uint16_t, 2))(0x6540L, 1UL), 0x6540L, 1UL, 0x6540L, 1UL), // p_1544->g_977
        (VECTOR(int16_t, 16))(0x7AEBL, (VECTOR(int16_t, 4))(0x7AEBL, (VECTOR(int16_t, 2))(0x7AEBL, 0L), 0L), 0L, 0x7AEBL, 0L, (VECTOR(int16_t, 2))(0x7AEBL, 0L), (VECTOR(int16_t, 2))(0x7AEBL, 0L), 0x7AEBL, 0L, 0x7AEBL, 0L), // p_1544->g_980
        (VECTOR(int16_t, 2))(0x5D86L, 0x7B9DL), // p_1544->g_1023
        (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 3L), 3L), 3L, 1L, 3L), // p_1544->g_1026
        (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, (-8L)), (-8L)), (-8L), 0L, (-8L), (VECTOR(int32_t, 2))(0L, (-8L)), (VECTOR(int32_t, 2))(0L, (-8L)), 0L, (-8L), 0L, (-8L)), // p_1544->g_1034
        (VECTOR(uint16_t, 8))(0x8E82L, (VECTOR(uint16_t, 4))(0x8E82L, (VECTOR(uint16_t, 2))(0x8E82L, 0xE792L), 0xE792L), 0xE792L, 0x8E82L, 0xE792L), // p_1544->g_1037
        (VECTOR(uint64_t, 2))(0x70E1D6D1BCFDE6C6L, 18446744073709551606UL), // p_1544->g_1088
        (VECTOR(uint64_t, 2))(0x0C38645DA6FEFCD0L, 18446744073709551615UL), // p_1544->g_1091
        (VECTOR(uint32_t, 8))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 0x6CB08C9DL), 0x6CB08C9DL), 0x6CB08C9DL, 0UL, 0x6CB08C9DL), // p_1544->g_1102
        (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 0xFDFB0B133F3241A0L), 0xFDFB0B133F3241A0L), // p_1544->g_1124
        (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 5UL), 5UL), // p_1544->g_1278
        (VECTOR(int16_t, 8))((-6L), (VECTOR(int16_t, 4))((-6L), (VECTOR(int16_t, 2))((-6L), 0x3AA4L), 0x3AA4L), 0x3AA4L, (-6L), 0x3AA4L), // p_1544->g_1294
        3L, // p_1544->g_1300
        {0x3BC59BE4L,0x20L,0x0F707F534C2D8C90L,1UL}, // p_1544->g_1305
        (void*)0, // p_1544->g_1306
        {1UL,0x48L,0xA0404B0E1797EE9BL,4UL}, // p_1544->g_1307
        {{0x330861F60CE0C11DL,0x330861F60CE0C11DL,0x330861F60CE0C11DL,0x330861F60CE0C11DL},{0x330861F60CE0C11DL,0x330861F60CE0C11DL,0x330861F60CE0C11DL,0x330861F60CE0C11DL}}, // p_1544->g_1312
        {4294967295UL,253UL,18446744073709551615UL,0x750BBD16L}, // p_1544->g_1318
        (VECTOR(uint8_t, 2))(255UL, 0xCCL), // p_1544->g_1321
        (VECTOR(int16_t, 4))(0x7DC8L, (VECTOR(int16_t, 2))(0x7DC8L, 1L), 1L), // p_1544->g_1327
        (VECTOR(int16_t, 2))(0x7691L, 1L), // p_1544->g_1328
        0xEDL, // p_1544->g_1363
        (void*)0, // p_1544->g_1395
        {&p_1544->g_225,&p_1544->g_225,&p_1544->g_225,&p_1544->g_225,&p_1544->g_225,&p_1544->g_225,&p_1544->g_225,&p_1544->g_225}, // p_1544->g_1396
        0, // p_1544->v_collective
        sequence_input[get_global_id(0)], // p_1544->global_0_offset
        sequence_input[get_global_id(1)], // p_1544->global_1_offset
        sequence_input[get_global_id(2)], // p_1544->global_2_offset
        sequence_input[get_local_id(0)], // p_1544->local_0_offset
        sequence_input[get_local_id(1)], // p_1544->local_1_offset
        sequence_input[get_local_id(2)], // p_1544->local_2_offset
        sequence_input[get_group_id(0)], // p_1544->group_0_offset
        sequence_input[get_group_id(1)], // p_1544->group_1_offset
        sequence_input[get_group_id(2)], // p_1544->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 2)), permutations[0][get_linear_local_id()])), // p_1544->tid
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_1545 = c_1546;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1544);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1544->g_2.x, "p_1544->g_2.x", print_hash_value);
    transparent_crc(p_1544->g_2.y, "p_1544->g_2.y", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_1544->g_118[i][j][k], "p_1544->g_118[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1544->g_143, "p_1544->g_143", print_hash_value);
    transparent_crc(p_1544->g_165, "p_1544->g_165", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_1544->g_171[i], "p_1544->g_171[i]", print_hash_value);

    }
    transparent_crc(p_1544->g_188.s0, "p_1544->g_188.s0", print_hash_value);
    transparent_crc(p_1544->g_188.s1, "p_1544->g_188.s1", print_hash_value);
    transparent_crc(p_1544->g_188.s2, "p_1544->g_188.s2", print_hash_value);
    transparent_crc(p_1544->g_188.s3, "p_1544->g_188.s3", print_hash_value);
    transparent_crc(p_1544->g_188.s4, "p_1544->g_188.s4", print_hash_value);
    transparent_crc(p_1544->g_188.s5, "p_1544->g_188.s5", print_hash_value);
    transparent_crc(p_1544->g_188.s6, "p_1544->g_188.s6", print_hash_value);
    transparent_crc(p_1544->g_188.s7, "p_1544->g_188.s7", print_hash_value);
    transparent_crc(p_1544->g_188.s8, "p_1544->g_188.s8", print_hash_value);
    transparent_crc(p_1544->g_188.s9, "p_1544->g_188.s9", print_hash_value);
    transparent_crc(p_1544->g_188.sa, "p_1544->g_188.sa", print_hash_value);
    transparent_crc(p_1544->g_188.sb, "p_1544->g_188.sb", print_hash_value);
    transparent_crc(p_1544->g_188.sc, "p_1544->g_188.sc", print_hash_value);
    transparent_crc(p_1544->g_188.sd, "p_1544->g_188.sd", print_hash_value);
    transparent_crc(p_1544->g_188.se, "p_1544->g_188.se", print_hash_value);
    transparent_crc(p_1544->g_188.sf, "p_1544->g_188.sf", print_hash_value);
    transparent_crc(p_1544->g_192, "p_1544->g_192", print_hash_value);
    transparent_crc(p_1544->g_197.s0, "p_1544->g_197.s0", print_hash_value);
    transparent_crc(p_1544->g_197.s1, "p_1544->g_197.s1", print_hash_value);
    transparent_crc(p_1544->g_197.s2, "p_1544->g_197.s2", print_hash_value);
    transparent_crc(p_1544->g_197.s3, "p_1544->g_197.s3", print_hash_value);
    transparent_crc(p_1544->g_197.s4, "p_1544->g_197.s4", print_hash_value);
    transparent_crc(p_1544->g_197.s5, "p_1544->g_197.s5", print_hash_value);
    transparent_crc(p_1544->g_197.s6, "p_1544->g_197.s6", print_hash_value);
    transparent_crc(p_1544->g_197.s7, "p_1544->g_197.s7", print_hash_value);
    transparent_crc(p_1544->g_197.s8, "p_1544->g_197.s8", print_hash_value);
    transparent_crc(p_1544->g_197.s9, "p_1544->g_197.s9", print_hash_value);
    transparent_crc(p_1544->g_197.sa, "p_1544->g_197.sa", print_hash_value);
    transparent_crc(p_1544->g_197.sb, "p_1544->g_197.sb", print_hash_value);
    transparent_crc(p_1544->g_197.sc, "p_1544->g_197.sc", print_hash_value);
    transparent_crc(p_1544->g_197.sd, "p_1544->g_197.sd", print_hash_value);
    transparent_crc(p_1544->g_197.se, "p_1544->g_197.se", print_hash_value);
    transparent_crc(p_1544->g_197.sf, "p_1544->g_197.sf", print_hash_value);
    transparent_crc(p_1544->g_209.f0, "p_1544->g_209.f0", print_hash_value);
    transparent_crc(p_1544->g_209.f1, "p_1544->g_209.f1", print_hash_value);
    transparent_crc(p_1544->g_209.f2, "p_1544->g_209.f2", print_hash_value);
    transparent_crc(p_1544->g_209.f3, "p_1544->g_209.f3", print_hash_value);
    transparent_crc(p_1544->g_223.f0, "p_1544->g_223.f0", print_hash_value);
    transparent_crc(p_1544->g_223.f1, "p_1544->g_223.f1", print_hash_value);
    transparent_crc(p_1544->g_223.f2, "p_1544->g_223.f2", print_hash_value);
    transparent_crc(p_1544->g_223.f3, "p_1544->g_223.f3", print_hash_value);
    transparent_crc(p_1544->g_223.f4, "p_1544->g_223.f4", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 1; k++)
            {
                transparent_crc(p_1544->g_226[i][j][k].f0, "p_1544->g_226[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_1544->g_228.f0, "p_1544->g_228.f0", print_hash_value);
    transparent_crc(p_1544->g_228.f1, "p_1544->g_228.f1", print_hash_value);
    transparent_crc(p_1544->g_228.f2, "p_1544->g_228.f2", print_hash_value);
    transparent_crc(p_1544->g_228.f3, "p_1544->g_228.f3", print_hash_value);
    transparent_crc(p_1544->g_248, "p_1544->g_248", print_hash_value);
    transparent_crc(p_1544->g_268.s0, "p_1544->g_268.s0", print_hash_value);
    transparent_crc(p_1544->g_268.s1, "p_1544->g_268.s1", print_hash_value);
    transparent_crc(p_1544->g_268.s2, "p_1544->g_268.s2", print_hash_value);
    transparent_crc(p_1544->g_268.s3, "p_1544->g_268.s3", print_hash_value);
    transparent_crc(p_1544->g_268.s4, "p_1544->g_268.s4", print_hash_value);
    transparent_crc(p_1544->g_268.s5, "p_1544->g_268.s5", print_hash_value);
    transparent_crc(p_1544->g_268.s6, "p_1544->g_268.s6", print_hash_value);
    transparent_crc(p_1544->g_268.s7, "p_1544->g_268.s7", print_hash_value);
    transparent_crc(p_1544->g_270, "p_1544->g_270", print_hash_value);
    transparent_crc(p_1544->g_271.s0, "p_1544->g_271.s0", print_hash_value);
    transparent_crc(p_1544->g_271.s1, "p_1544->g_271.s1", print_hash_value);
    transparent_crc(p_1544->g_271.s2, "p_1544->g_271.s2", print_hash_value);
    transparent_crc(p_1544->g_271.s3, "p_1544->g_271.s3", print_hash_value);
    transparent_crc(p_1544->g_271.s4, "p_1544->g_271.s4", print_hash_value);
    transparent_crc(p_1544->g_271.s5, "p_1544->g_271.s5", print_hash_value);
    transparent_crc(p_1544->g_271.s6, "p_1544->g_271.s6", print_hash_value);
    transparent_crc(p_1544->g_271.s7, "p_1544->g_271.s7", print_hash_value);
    transparent_crc(p_1544->g_297.x, "p_1544->g_297.x", print_hash_value);
    transparent_crc(p_1544->g_297.y, "p_1544->g_297.y", print_hash_value);
    transparent_crc(p_1544->g_318.s0, "p_1544->g_318.s0", print_hash_value);
    transparent_crc(p_1544->g_318.s1, "p_1544->g_318.s1", print_hash_value);
    transparent_crc(p_1544->g_318.s2, "p_1544->g_318.s2", print_hash_value);
    transparent_crc(p_1544->g_318.s3, "p_1544->g_318.s3", print_hash_value);
    transparent_crc(p_1544->g_318.s4, "p_1544->g_318.s4", print_hash_value);
    transparent_crc(p_1544->g_318.s5, "p_1544->g_318.s5", print_hash_value);
    transparent_crc(p_1544->g_318.s6, "p_1544->g_318.s6", print_hash_value);
    transparent_crc(p_1544->g_318.s7, "p_1544->g_318.s7", print_hash_value);
    transparent_crc(p_1544->g_334.s0, "p_1544->g_334.s0", print_hash_value);
    transparent_crc(p_1544->g_334.s1, "p_1544->g_334.s1", print_hash_value);
    transparent_crc(p_1544->g_334.s2, "p_1544->g_334.s2", print_hash_value);
    transparent_crc(p_1544->g_334.s3, "p_1544->g_334.s3", print_hash_value);
    transparent_crc(p_1544->g_334.s4, "p_1544->g_334.s4", print_hash_value);
    transparent_crc(p_1544->g_334.s5, "p_1544->g_334.s5", print_hash_value);
    transparent_crc(p_1544->g_334.s6, "p_1544->g_334.s6", print_hash_value);
    transparent_crc(p_1544->g_334.s7, "p_1544->g_334.s7", print_hash_value);
    transparent_crc(p_1544->g_339.x, "p_1544->g_339.x", print_hash_value);
    transparent_crc(p_1544->g_339.y, "p_1544->g_339.y", print_hash_value);
    transparent_crc(p_1544->g_340.x, "p_1544->g_340.x", print_hash_value);
    transparent_crc(p_1544->g_340.y, "p_1544->g_340.y", print_hash_value);
    transparent_crc(p_1544->g_340.z, "p_1544->g_340.z", print_hash_value);
    transparent_crc(p_1544->g_340.w, "p_1544->g_340.w", print_hash_value);
    transparent_crc(p_1544->g_342.s0, "p_1544->g_342.s0", print_hash_value);
    transparent_crc(p_1544->g_342.s1, "p_1544->g_342.s1", print_hash_value);
    transparent_crc(p_1544->g_342.s2, "p_1544->g_342.s2", print_hash_value);
    transparent_crc(p_1544->g_342.s3, "p_1544->g_342.s3", print_hash_value);
    transparent_crc(p_1544->g_342.s4, "p_1544->g_342.s4", print_hash_value);
    transparent_crc(p_1544->g_342.s5, "p_1544->g_342.s5", print_hash_value);
    transparent_crc(p_1544->g_342.s6, "p_1544->g_342.s6", print_hash_value);
    transparent_crc(p_1544->g_342.s7, "p_1544->g_342.s7", print_hash_value);
    transparent_crc(p_1544->g_342.s8, "p_1544->g_342.s8", print_hash_value);
    transparent_crc(p_1544->g_342.s9, "p_1544->g_342.s9", print_hash_value);
    transparent_crc(p_1544->g_342.sa, "p_1544->g_342.sa", print_hash_value);
    transparent_crc(p_1544->g_342.sb, "p_1544->g_342.sb", print_hash_value);
    transparent_crc(p_1544->g_342.sc, "p_1544->g_342.sc", print_hash_value);
    transparent_crc(p_1544->g_342.sd, "p_1544->g_342.sd", print_hash_value);
    transparent_crc(p_1544->g_342.se, "p_1544->g_342.se", print_hash_value);
    transparent_crc(p_1544->g_342.sf, "p_1544->g_342.sf", print_hash_value);
    transparent_crc(p_1544->g_345.s0, "p_1544->g_345.s0", print_hash_value);
    transparent_crc(p_1544->g_345.s1, "p_1544->g_345.s1", print_hash_value);
    transparent_crc(p_1544->g_345.s2, "p_1544->g_345.s2", print_hash_value);
    transparent_crc(p_1544->g_345.s3, "p_1544->g_345.s3", print_hash_value);
    transparent_crc(p_1544->g_345.s4, "p_1544->g_345.s4", print_hash_value);
    transparent_crc(p_1544->g_345.s5, "p_1544->g_345.s5", print_hash_value);
    transparent_crc(p_1544->g_345.s6, "p_1544->g_345.s6", print_hash_value);
    transparent_crc(p_1544->g_345.s7, "p_1544->g_345.s7", print_hash_value);
    transparent_crc(p_1544->g_345.s8, "p_1544->g_345.s8", print_hash_value);
    transparent_crc(p_1544->g_345.s9, "p_1544->g_345.s9", print_hash_value);
    transparent_crc(p_1544->g_345.sa, "p_1544->g_345.sa", print_hash_value);
    transparent_crc(p_1544->g_345.sb, "p_1544->g_345.sb", print_hash_value);
    transparent_crc(p_1544->g_345.sc, "p_1544->g_345.sc", print_hash_value);
    transparent_crc(p_1544->g_345.sd, "p_1544->g_345.sd", print_hash_value);
    transparent_crc(p_1544->g_345.se, "p_1544->g_345.se", print_hash_value);
    transparent_crc(p_1544->g_345.sf, "p_1544->g_345.sf", print_hash_value);
    transparent_crc(p_1544->g_347.x, "p_1544->g_347.x", print_hash_value);
    transparent_crc(p_1544->g_347.y, "p_1544->g_347.y", print_hash_value);
    transparent_crc(p_1544->g_347.z, "p_1544->g_347.z", print_hash_value);
    transparent_crc(p_1544->g_347.w, "p_1544->g_347.w", print_hash_value);
    transparent_crc(p_1544->g_359, "p_1544->g_359", print_hash_value);
    transparent_crc(p_1544->g_365.f0, "p_1544->g_365.f0", print_hash_value);
    transparent_crc(p_1544->g_365.f1, "p_1544->g_365.f1", print_hash_value);
    transparent_crc(p_1544->g_365.f2, "p_1544->g_365.f2", print_hash_value);
    transparent_crc(p_1544->g_365.f3, "p_1544->g_365.f3", print_hash_value);
    transparent_crc(p_1544->g_365.f4, "p_1544->g_365.f4", print_hash_value);
    transparent_crc(p_1544->g_376.f0, "p_1544->g_376.f0", print_hash_value);
    transparent_crc(p_1544->g_376.f1, "p_1544->g_376.f1", print_hash_value);
    transparent_crc(p_1544->g_376.f2, "p_1544->g_376.f2", print_hash_value);
    transparent_crc(p_1544->g_376.f3, "p_1544->g_376.f3", print_hash_value);
    transparent_crc(p_1544->g_383.x, "p_1544->g_383.x", print_hash_value);
    transparent_crc(p_1544->g_383.y, "p_1544->g_383.y", print_hash_value);
    transparent_crc(p_1544->g_387.x, "p_1544->g_387.x", print_hash_value);
    transparent_crc(p_1544->g_387.y, "p_1544->g_387.y", print_hash_value);
    transparent_crc(p_1544->g_399.x, "p_1544->g_399.x", print_hash_value);
    transparent_crc(p_1544->g_399.y, "p_1544->g_399.y", print_hash_value);
    transparent_crc(p_1544->g_399.z, "p_1544->g_399.z", print_hash_value);
    transparent_crc(p_1544->g_399.w, "p_1544->g_399.w", print_hash_value);
    transparent_crc(p_1544->g_404.f0, "p_1544->g_404.f0", print_hash_value);
    transparent_crc(p_1544->g_404.f1, "p_1544->g_404.f1", print_hash_value);
    transparent_crc(p_1544->g_404.f2, "p_1544->g_404.f2", print_hash_value);
    transparent_crc(p_1544->g_404.f3, "p_1544->g_404.f3", print_hash_value);
    transparent_crc(p_1544->g_411.f0, "p_1544->g_411.f0", print_hash_value);
    transparent_crc(p_1544->g_411.f1, "p_1544->g_411.f1", print_hash_value);
    transparent_crc(p_1544->g_411.f2, "p_1544->g_411.f2", print_hash_value);
    transparent_crc(p_1544->g_411.f3, "p_1544->g_411.f3", print_hash_value);
    transparent_crc(p_1544->g_412.f0, "p_1544->g_412.f0", print_hash_value);
    transparent_crc(p_1544->g_412.f1, "p_1544->g_412.f1", print_hash_value);
    transparent_crc(p_1544->g_412.f2, "p_1544->g_412.f2", print_hash_value);
    transparent_crc(p_1544->g_412.f3, "p_1544->g_412.f3", print_hash_value);
    transparent_crc(p_1544->g_412.f4, "p_1544->g_412.f4", print_hash_value);
    transparent_crc(p_1544->g_415.f0, "p_1544->g_415.f0", print_hash_value);
    transparent_crc(p_1544->g_415.f1, "p_1544->g_415.f1", print_hash_value);
    transparent_crc(p_1544->g_415.f2, "p_1544->g_415.f2", print_hash_value);
    transparent_crc(p_1544->g_415.f3, "p_1544->g_415.f3", print_hash_value);
    transparent_crc(p_1544->g_415.f4, "p_1544->g_415.f4", print_hash_value);
    transparent_crc(p_1544->g_437.s0, "p_1544->g_437.s0", print_hash_value);
    transparent_crc(p_1544->g_437.s1, "p_1544->g_437.s1", print_hash_value);
    transparent_crc(p_1544->g_437.s2, "p_1544->g_437.s2", print_hash_value);
    transparent_crc(p_1544->g_437.s3, "p_1544->g_437.s3", print_hash_value);
    transparent_crc(p_1544->g_437.s4, "p_1544->g_437.s4", print_hash_value);
    transparent_crc(p_1544->g_437.s5, "p_1544->g_437.s5", print_hash_value);
    transparent_crc(p_1544->g_437.s6, "p_1544->g_437.s6", print_hash_value);
    transparent_crc(p_1544->g_437.s7, "p_1544->g_437.s7", print_hash_value);
    transparent_crc(p_1544->g_437.s8, "p_1544->g_437.s8", print_hash_value);
    transparent_crc(p_1544->g_437.s9, "p_1544->g_437.s9", print_hash_value);
    transparent_crc(p_1544->g_437.sa, "p_1544->g_437.sa", print_hash_value);
    transparent_crc(p_1544->g_437.sb, "p_1544->g_437.sb", print_hash_value);
    transparent_crc(p_1544->g_437.sc, "p_1544->g_437.sc", print_hash_value);
    transparent_crc(p_1544->g_437.sd, "p_1544->g_437.sd", print_hash_value);
    transparent_crc(p_1544->g_437.se, "p_1544->g_437.se", print_hash_value);
    transparent_crc(p_1544->g_437.sf, "p_1544->g_437.sf", print_hash_value);
    transparent_crc(p_1544->g_445.s0, "p_1544->g_445.s0", print_hash_value);
    transparent_crc(p_1544->g_445.s1, "p_1544->g_445.s1", print_hash_value);
    transparent_crc(p_1544->g_445.s2, "p_1544->g_445.s2", print_hash_value);
    transparent_crc(p_1544->g_445.s3, "p_1544->g_445.s3", print_hash_value);
    transparent_crc(p_1544->g_445.s4, "p_1544->g_445.s4", print_hash_value);
    transparent_crc(p_1544->g_445.s5, "p_1544->g_445.s5", print_hash_value);
    transparent_crc(p_1544->g_445.s6, "p_1544->g_445.s6", print_hash_value);
    transparent_crc(p_1544->g_445.s7, "p_1544->g_445.s7", print_hash_value);
    transparent_crc(p_1544->g_446.s0, "p_1544->g_446.s0", print_hash_value);
    transparent_crc(p_1544->g_446.s1, "p_1544->g_446.s1", print_hash_value);
    transparent_crc(p_1544->g_446.s2, "p_1544->g_446.s2", print_hash_value);
    transparent_crc(p_1544->g_446.s3, "p_1544->g_446.s3", print_hash_value);
    transparent_crc(p_1544->g_446.s4, "p_1544->g_446.s4", print_hash_value);
    transparent_crc(p_1544->g_446.s5, "p_1544->g_446.s5", print_hash_value);
    transparent_crc(p_1544->g_446.s6, "p_1544->g_446.s6", print_hash_value);
    transparent_crc(p_1544->g_446.s7, "p_1544->g_446.s7", print_hash_value);
    transparent_crc(p_1544->g_458, "p_1544->g_458", print_hash_value);
    transparent_crc(p_1544->g_463.f0, "p_1544->g_463.f0", print_hash_value);
    transparent_crc(p_1544->g_463.f1, "p_1544->g_463.f1", print_hash_value);
    transparent_crc(p_1544->g_463.f2, "p_1544->g_463.f2", print_hash_value);
    transparent_crc(p_1544->g_463.f3, "p_1544->g_463.f3", print_hash_value);
    transparent_crc(p_1544->g_463.f4, "p_1544->g_463.f4", print_hash_value);
    transparent_crc(p_1544->g_483.f0, "p_1544->g_483.f0", print_hash_value);
    transparent_crc(p_1544->g_483.f1, "p_1544->g_483.f1", print_hash_value);
    transparent_crc(p_1544->g_483.f2, "p_1544->g_483.f2", print_hash_value);
    transparent_crc(p_1544->g_483.f3, "p_1544->g_483.f3", print_hash_value);
    transparent_crc(p_1544->g_517, "p_1544->g_517", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 5; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_1544->g_564[i][j][k], "p_1544->g_564[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1544->g_605.s0, "p_1544->g_605.s0", print_hash_value);
    transparent_crc(p_1544->g_605.s1, "p_1544->g_605.s1", print_hash_value);
    transparent_crc(p_1544->g_605.s2, "p_1544->g_605.s2", print_hash_value);
    transparent_crc(p_1544->g_605.s3, "p_1544->g_605.s3", print_hash_value);
    transparent_crc(p_1544->g_605.s4, "p_1544->g_605.s4", print_hash_value);
    transparent_crc(p_1544->g_605.s5, "p_1544->g_605.s5", print_hash_value);
    transparent_crc(p_1544->g_605.s6, "p_1544->g_605.s6", print_hash_value);
    transparent_crc(p_1544->g_605.s7, "p_1544->g_605.s7", print_hash_value);
    transparent_crc(p_1544->g_605.s8, "p_1544->g_605.s8", print_hash_value);
    transparent_crc(p_1544->g_605.s9, "p_1544->g_605.s9", print_hash_value);
    transparent_crc(p_1544->g_605.sa, "p_1544->g_605.sa", print_hash_value);
    transparent_crc(p_1544->g_605.sb, "p_1544->g_605.sb", print_hash_value);
    transparent_crc(p_1544->g_605.sc, "p_1544->g_605.sc", print_hash_value);
    transparent_crc(p_1544->g_605.sd, "p_1544->g_605.sd", print_hash_value);
    transparent_crc(p_1544->g_605.se, "p_1544->g_605.se", print_hash_value);
    transparent_crc(p_1544->g_605.sf, "p_1544->g_605.sf", print_hash_value);
    transparent_crc(p_1544->g_621.s0, "p_1544->g_621.s0", print_hash_value);
    transparent_crc(p_1544->g_621.s1, "p_1544->g_621.s1", print_hash_value);
    transparent_crc(p_1544->g_621.s2, "p_1544->g_621.s2", print_hash_value);
    transparent_crc(p_1544->g_621.s3, "p_1544->g_621.s3", print_hash_value);
    transparent_crc(p_1544->g_621.s4, "p_1544->g_621.s4", print_hash_value);
    transparent_crc(p_1544->g_621.s5, "p_1544->g_621.s5", print_hash_value);
    transparent_crc(p_1544->g_621.s6, "p_1544->g_621.s6", print_hash_value);
    transparent_crc(p_1544->g_621.s7, "p_1544->g_621.s7", print_hash_value);
    transparent_crc(p_1544->g_621.s8, "p_1544->g_621.s8", print_hash_value);
    transparent_crc(p_1544->g_621.s9, "p_1544->g_621.s9", print_hash_value);
    transparent_crc(p_1544->g_621.sa, "p_1544->g_621.sa", print_hash_value);
    transparent_crc(p_1544->g_621.sb, "p_1544->g_621.sb", print_hash_value);
    transparent_crc(p_1544->g_621.sc, "p_1544->g_621.sc", print_hash_value);
    transparent_crc(p_1544->g_621.sd, "p_1544->g_621.sd", print_hash_value);
    transparent_crc(p_1544->g_621.se, "p_1544->g_621.se", print_hash_value);
    transparent_crc(p_1544->g_621.sf, "p_1544->g_621.sf", print_hash_value);
    transparent_crc(p_1544->g_649.s0, "p_1544->g_649.s0", print_hash_value);
    transparent_crc(p_1544->g_649.s1, "p_1544->g_649.s1", print_hash_value);
    transparent_crc(p_1544->g_649.s2, "p_1544->g_649.s2", print_hash_value);
    transparent_crc(p_1544->g_649.s3, "p_1544->g_649.s3", print_hash_value);
    transparent_crc(p_1544->g_649.s4, "p_1544->g_649.s4", print_hash_value);
    transparent_crc(p_1544->g_649.s5, "p_1544->g_649.s5", print_hash_value);
    transparent_crc(p_1544->g_649.s6, "p_1544->g_649.s6", print_hash_value);
    transparent_crc(p_1544->g_649.s7, "p_1544->g_649.s7", print_hash_value);
    transparent_crc(p_1544->g_649.s8, "p_1544->g_649.s8", print_hash_value);
    transparent_crc(p_1544->g_649.s9, "p_1544->g_649.s9", print_hash_value);
    transparent_crc(p_1544->g_649.sa, "p_1544->g_649.sa", print_hash_value);
    transparent_crc(p_1544->g_649.sb, "p_1544->g_649.sb", print_hash_value);
    transparent_crc(p_1544->g_649.sc, "p_1544->g_649.sc", print_hash_value);
    transparent_crc(p_1544->g_649.sd, "p_1544->g_649.sd", print_hash_value);
    transparent_crc(p_1544->g_649.se, "p_1544->g_649.se", print_hash_value);
    transparent_crc(p_1544->g_649.sf, "p_1544->g_649.sf", print_hash_value);
    transparent_crc(p_1544->g_650.x, "p_1544->g_650.x", print_hash_value);
    transparent_crc(p_1544->g_650.y, "p_1544->g_650.y", print_hash_value);
    transparent_crc(p_1544->g_674.s0, "p_1544->g_674.s0", print_hash_value);
    transparent_crc(p_1544->g_674.s1, "p_1544->g_674.s1", print_hash_value);
    transparent_crc(p_1544->g_674.s2, "p_1544->g_674.s2", print_hash_value);
    transparent_crc(p_1544->g_674.s3, "p_1544->g_674.s3", print_hash_value);
    transparent_crc(p_1544->g_674.s4, "p_1544->g_674.s4", print_hash_value);
    transparent_crc(p_1544->g_674.s5, "p_1544->g_674.s5", print_hash_value);
    transparent_crc(p_1544->g_674.s6, "p_1544->g_674.s6", print_hash_value);
    transparent_crc(p_1544->g_674.s7, "p_1544->g_674.s7", print_hash_value);
    transparent_crc(p_1544->g_674.s8, "p_1544->g_674.s8", print_hash_value);
    transparent_crc(p_1544->g_674.s9, "p_1544->g_674.s9", print_hash_value);
    transparent_crc(p_1544->g_674.sa, "p_1544->g_674.sa", print_hash_value);
    transparent_crc(p_1544->g_674.sb, "p_1544->g_674.sb", print_hash_value);
    transparent_crc(p_1544->g_674.sc, "p_1544->g_674.sc", print_hash_value);
    transparent_crc(p_1544->g_674.sd, "p_1544->g_674.sd", print_hash_value);
    transparent_crc(p_1544->g_674.se, "p_1544->g_674.se", print_hash_value);
    transparent_crc(p_1544->g_674.sf, "p_1544->g_674.sf", print_hash_value);
    transparent_crc(p_1544->g_680.s0, "p_1544->g_680.s0", print_hash_value);
    transparent_crc(p_1544->g_680.s1, "p_1544->g_680.s1", print_hash_value);
    transparent_crc(p_1544->g_680.s2, "p_1544->g_680.s2", print_hash_value);
    transparent_crc(p_1544->g_680.s3, "p_1544->g_680.s3", print_hash_value);
    transparent_crc(p_1544->g_680.s4, "p_1544->g_680.s4", print_hash_value);
    transparent_crc(p_1544->g_680.s5, "p_1544->g_680.s5", print_hash_value);
    transparent_crc(p_1544->g_680.s6, "p_1544->g_680.s6", print_hash_value);
    transparent_crc(p_1544->g_680.s7, "p_1544->g_680.s7", print_hash_value);
    transparent_crc(p_1544->g_681.x, "p_1544->g_681.x", print_hash_value);
    transparent_crc(p_1544->g_681.y, "p_1544->g_681.y", print_hash_value);
    transparent_crc(p_1544->g_681.z, "p_1544->g_681.z", print_hash_value);
    transparent_crc(p_1544->g_681.w, "p_1544->g_681.w", print_hash_value);
    transparent_crc(p_1544->g_682.x, "p_1544->g_682.x", print_hash_value);
    transparent_crc(p_1544->g_682.y, "p_1544->g_682.y", print_hash_value);
    transparent_crc(p_1544->g_682.z, "p_1544->g_682.z", print_hash_value);
    transparent_crc(p_1544->g_682.w, "p_1544->g_682.w", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1544->g_697[i], "p_1544->g_697[i]", print_hash_value);

    }
    transparent_crc(p_1544->g_706, "p_1544->g_706", print_hash_value);
    transparent_crc(p_1544->g_732.f0, "p_1544->g_732.f0", print_hash_value);
    transparent_crc(p_1544->g_732.f1, "p_1544->g_732.f1", print_hash_value);
    transparent_crc(p_1544->g_732.f2, "p_1544->g_732.f2", print_hash_value);
    transparent_crc(p_1544->g_732.f3, "p_1544->g_732.f3", print_hash_value);
    transparent_crc(p_1544->g_734.s0, "p_1544->g_734.s0", print_hash_value);
    transparent_crc(p_1544->g_734.s1, "p_1544->g_734.s1", print_hash_value);
    transparent_crc(p_1544->g_734.s2, "p_1544->g_734.s2", print_hash_value);
    transparent_crc(p_1544->g_734.s3, "p_1544->g_734.s3", print_hash_value);
    transparent_crc(p_1544->g_734.s4, "p_1544->g_734.s4", print_hash_value);
    transparent_crc(p_1544->g_734.s5, "p_1544->g_734.s5", print_hash_value);
    transparent_crc(p_1544->g_734.s6, "p_1544->g_734.s6", print_hash_value);
    transparent_crc(p_1544->g_734.s7, "p_1544->g_734.s7", print_hash_value);
    transparent_crc(p_1544->g_734.s8, "p_1544->g_734.s8", print_hash_value);
    transparent_crc(p_1544->g_734.s9, "p_1544->g_734.s9", print_hash_value);
    transparent_crc(p_1544->g_734.sa, "p_1544->g_734.sa", print_hash_value);
    transparent_crc(p_1544->g_734.sb, "p_1544->g_734.sb", print_hash_value);
    transparent_crc(p_1544->g_734.sc, "p_1544->g_734.sc", print_hash_value);
    transparent_crc(p_1544->g_734.sd, "p_1544->g_734.sd", print_hash_value);
    transparent_crc(p_1544->g_734.se, "p_1544->g_734.se", print_hash_value);
    transparent_crc(p_1544->g_734.sf, "p_1544->g_734.sf", print_hash_value);
    transparent_crc(p_1544->g_743.s0, "p_1544->g_743.s0", print_hash_value);
    transparent_crc(p_1544->g_743.s1, "p_1544->g_743.s1", print_hash_value);
    transparent_crc(p_1544->g_743.s2, "p_1544->g_743.s2", print_hash_value);
    transparent_crc(p_1544->g_743.s3, "p_1544->g_743.s3", print_hash_value);
    transparent_crc(p_1544->g_743.s4, "p_1544->g_743.s4", print_hash_value);
    transparent_crc(p_1544->g_743.s5, "p_1544->g_743.s5", print_hash_value);
    transparent_crc(p_1544->g_743.s6, "p_1544->g_743.s6", print_hash_value);
    transparent_crc(p_1544->g_743.s7, "p_1544->g_743.s7", print_hash_value);
    transparent_crc(p_1544->g_743.s8, "p_1544->g_743.s8", print_hash_value);
    transparent_crc(p_1544->g_743.s9, "p_1544->g_743.s9", print_hash_value);
    transparent_crc(p_1544->g_743.sa, "p_1544->g_743.sa", print_hash_value);
    transparent_crc(p_1544->g_743.sb, "p_1544->g_743.sb", print_hash_value);
    transparent_crc(p_1544->g_743.sc, "p_1544->g_743.sc", print_hash_value);
    transparent_crc(p_1544->g_743.sd, "p_1544->g_743.sd", print_hash_value);
    transparent_crc(p_1544->g_743.se, "p_1544->g_743.se", print_hash_value);
    transparent_crc(p_1544->g_743.sf, "p_1544->g_743.sf", print_hash_value);
    transparent_crc(p_1544->g_744.s0, "p_1544->g_744.s0", print_hash_value);
    transparent_crc(p_1544->g_744.s1, "p_1544->g_744.s1", print_hash_value);
    transparent_crc(p_1544->g_744.s2, "p_1544->g_744.s2", print_hash_value);
    transparent_crc(p_1544->g_744.s3, "p_1544->g_744.s3", print_hash_value);
    transparent_crc(p_1544->g_744.s4, "p_1544->g_744.s4", print_hash_value);
    transparent_crc(p_1544->g_744.s5, "p_1544->g_744.s5", print_hash_value);
    transparent_crc(p_1544->g_744.s6, "p_1544->g_744.s6", print_hash_value);
    transparent_crc(p_1544->g_744.s7, "p_1544->g_744.s7", print_hash_value);
    transparent_crc(p_1544->g_744.s8, "p_1544->g_744.s8", print_hash_value);
    transparent_crc(p_1544->g_744.s9, "p_1544->g_744.s9", print_hash_value);
    transparent_crc(p_1544->g_744.sa, "p_1544->g_744.sa", print_hash_value);
    transparent_crc(p_1544->g_744.sb, "p_1544->g_744.sb", print_hash_value);
    transparent_crc(p_1544->g_744.sc, "p_1544->g_744.sc", print_hash_value);
    transparent_crc(p_1544->g_744.sd, "p_1544->g_744.sd", print_hash_value);
    transparent_crc(p_1544->g_744.se, "p_1544->g_744.se", print_hash_value);
    transparent_crc(p_1544->g_744.sf, "p_1544->g_744.sf", print_hash_value);
    transparent_crc(p_1544->g_854.f0, "p_1544->g_854.f0", print_hash_value);
    transparent_crc(p_1544->g_854.f1, "p_1544->g_854.f1", print_hash_value);
    transparent_crc(p_1544->g_854.f2, "p_1544->g_854.f2", print_hash_value);
    transparent_crc(p_1544->g_854.f3, "p_1544->g_854.f3", print_hash_value);
    transparent_crc(p_1544->g_867, "p_1544->g_867", print_hash_value);
    transparent_crc(p_1544->g_881.s0, "p_1544->g_881.s0", print_hash_value);
    transparent_crc(p_1544->g_881.s1, "p_1544->g_881.s1", print_hash_value);
    transparent_crc(p_1544->g_881.s2, "p_1544->g_881.s2", print_hash_value);
    transparent_crc(p_1544->g_881.s3, "p_1544->g_881.s3", print_hash_value);
    transparent_crc(p_1544->g_881.s4, "p_1544->g_881.s4", print_hash_value);
    transparent_crc(p_1544->g_881.s5, "p_1544->g_881.s5", print_hash_value);
    transparent_crc(p_1544->g_881.s6, "p_1544->g_881.s6", print_hash_value);
    transparent_crc(p_1544->g_881.s7, "p_1544->g_881.s7", print_hash_value);
    transparent_crc(p_1544->g_882.x, "p_1544->g_882.x", print_hash_value);
    transparent_crc(p_1544->g_882.y, "p_1544->g_882.y", print_hash_value);
    transparent_crc(p_1544->g_884.s0, "p_1544->g_884.s0", print_hash_value);
    transparent_crc(p_1544->g_884.s1, "p_1544->g_884.s1", print_hash_value);
    transparent_crc(p_1544->g_884.s2, "p_1544->g_884.s2", print_hash_value);
    transparent_crc(p_1544->g_884.s3, "p_1544->g_884.s3", print_hash_value);
    transparent_crc(p_1544->g_884.s4, "p_1544->g_884.s4", print_hash_value);
    transparent_crc(p_1544->g_884.s5, "p_1544->g_884.s5", print_hash_value);
    transparent_crc(p_1544->g_884.s6, "p_1544->g_884.s6", print_hash_value);
    transparent_crc(p_1544->g_884.s7, "p_1544->g_884.s7", print_hash_value);
    transparent_crc(p_1544->g_884.s8, "p_1544->g_884.s8", print_hash_value);
    transparent_crc(p_1544->g_884.s9, "p_1544->g_884.s9", print_hash_value);
    transparent_crc(p_1544->g_884.sa, "p_1544->g_884.sa", print_hash_value);
    transparent_crc(p_1544->g_884.sb, "p_1544->g_884.sb", print_hash_value);
    transparent_crc(p_1544->g_884.sc, "p_1544->g_884.sc", print_hash_value);
    transparent_crc(p_1544->g_884.sd, "p_1544->g_884.sd", print_hash_value);
    transparent_crc(p_1544->g_884.se, "p_1544->g_884.se", print_hash_value);
    transparent_crc(p_1544->g_884.sf, "p_1544->g_884.sf", print_hash_value);
    transparent_crc(p_1544->g_890, "p_1544->g_890", print_hash_value);
    transparent_crc(p_1544->g_950.f0, "p_1544->g_950.f0", print_hash_value);
    transparent_crc(p_1544->g_950.f1, "p_1544->g_950.f1", print_hash_value);
    transparent_crc(p_1544->g_950.f2, "p_1544->g_950.f2", print_hash_value);
    transparent_crc(p_1544->g_950.f3, "p_1544->g_950.f3", print_hash_value);
    transparent_crc(p_1544->g_950.f4, "p_1544->g_950.f4", print_hash_value);
    transparent_crc(p_1544->g_977.s0, "p_1544->g_977.s0", print_hash_value);
    transparent_crc(p_1544->g_977.s1, "p_1544->g_977.s1", print_hash_value);
    transparent_crc(p_1544->g_977.s2, "p_1544->g_977.s2", print_hash_value);
    transparent_crc(p_1544->g_977.s3, "p_1544->g_977.s3", print_hash_value);
    transparent_crc(p_1544->g_977.s4, "p_1544->g_977.s4", print_hash_value);
    transparent_crc(p_1544->g_977.s5, "p_1544->g_977.s5", print_hash_value);
    transparent_crc(p_1544->g_977.s6, "p_1544->g_977.s6", print_hash_value);
    transparent_crc(p_1544->g_977.s7, "p_1544->g_977.s7", print_hash_value);
    transparent_crc(p_1544->g_977.s8, "p_1544->g_977.s8", print_hash_value);
    transparent_crc(p_1544->g_977.s9, "p_1544->g_977.s9", print_hash_value);
    transparent_crc(p_1544->g_977.sa, "p_1544->g_977.sa", print_hash_value);
    transparent_crc(p_1544->g_977.sb, "p_1544->g_977.sb", print_hash_value);
    transparent_crc(p_1544->g_977.sc, "p_1544->g_977.sc", print_hash_value);
    transparent_crc(p_1544->g_977.sd, "p_1544->g_977.sd", print_hash_value);
    transparent_crc(p_1544->g_977.se, "p_1544->g_977.se", print_hash_value);
    transparent_crc(p_1544->g_977.sf, "p_1544->g_977.sf", print_hash_value);
    transparent_crc(p_1544->g_980.s0, "p_1544->g_980.s0", print_hash_value);
    transparent_crc(p_1544->g_980.s1, "p_1544->g_980.s1", print_hash_value);
    transparent_crc(p_1544->g_980.s2, "p_1544->g_980.s2", print_hash_value);
    transparent_crc(p_1544->g_980.s3, "p_1544->g_980.s3", print_hash_value);
    transparent_crc(p_1544->g_980.s4, "p_1544->g_980.s4", print_hash_value);
    transparent_crc(p_1544->g_980.s5, "p_1544->g_980.s5", print_hash_value);
    transparent_crc(p_1544->g_980.s6, "p_1544->g_980.s6", print_hash_value);
    transparent_crc(p_1544->g_980.s7, "p_1544->g_980.s7", print_hash_value);
    transparent_crc(p_1544->g_980.s8, "p_1544->g_980.s8", print_hash_value);
    transparent_crc(p_1544->g_980.s9, "p_1544->g_980.s9", print_hash_value);
    transparent_crc(p_1544->g_980.sa, "p_1544->g_980.sa", print_hash_value);
    transparent_crc(p_1544->g_980.sb, "p_1544->g_980.sb", print_hash_value);
    transparent_crc(p_1544->g_980.sc, "p_1544->g_980.sc", print_hash_value);
    transparent_crc(p_1544->g_980.sd, "p_1544->g_980.sd", print_hash_value);
    transparent_crc(p_1544->g_980.se, "p_1544->g_980.se", print_hash_value);
    transparent_crc(p_1544->g_980.sf, "p_1544->g_980.sf", print_hash_value);
    transparent_crc(p_1544->g_1023.x, "p_1544->g_1023.x", print_hash_value);
    transparent_crc(p_1544->g_1023.y, "p_1544->g_1023.y", print_hash_value);
    transparent_crc(p_1544->g_1026.s0, "p_1544->g_1026.s0", print_hash_value);
    transparent_crc(p_1544->g_1026.s1, "p_1544->g_1026.s1", print_hash_value);
    transparent_crc(p_1544->g_1026.s2, "p_1544->g_1026.s2", print_hash_value);
    transparent_crc(p_1544->g_1026.s3, "p_1544->g_1026.s3", print_hash_value);
    transparent_crc(p_1544->g_1026.s4, "p_1544->g_1026.s4", print_hash_value);
    transparent_crc(p_1544->g_1026.s5, "p_1544->g_1026.s5", print_hash_value);
    transparent_crc(p_1544->g_1026.s6, "p_1544->g_1026.s6", print_hash_value);
    transparent_crc(p_1544->g_1026.s7, "p_1544->g_1026.s7", print_hash_value);
    transparent_crc(p_1544->g_1034.s0, "p_1544->g_1034.s0", print_hash_value);
    transparent_crc(p_1544->g_1034.s1, "p_1544->g_1034.s1", print_hash_value);
    transparent_crc(p_1544->g_1034.s2, "p_1544->g_1034.s2", print_hash_value);
    transparent_crc(p_1544->g_1034.s3, "p_1544->g_1034.s3", print_hash_value);
    transparent_crc(p_1544->g_1034.s4, "p_1544->g_1034.s4", print_hash_value);
    transparent_crc(p_1544->g_1034.s5, "p_1544->g_1034.s5", print_hash_value);
    transparent_crc(p_1544->g_1034.s6, "p_1544->g_1034.s6", print_hash_value);
    transparent_crc(p_1544->g_1034.s7, "p_1544->g_1034.s7", print_hash_value);
    transparent_crc(p_1544->g_1034.s8, "p_1544->g_1034.s8", print_hash_value);
    transparent_crc(p_1544->g_1034.s9, "p_1544->g_1034.s9", print_hash_value);
    transparent_crc(p_1544->g_1034.sa, "p_1544->g_1034.sa", print_hash_value);
    transparent_crc(p_1544->g_1034.sb, "p_1544->g_1034.sb", print_hash_value);
    transparent_crc(p_1544->g_1034.sc, "p_1544->g_1034.sc", print_hash_value);
    transparent_crc(p_1544->g_1034.sd, "p_1544->g_1034.sd", print_hash_value);
    transparent_crc(p_1544->g_1034.se, "p_1544->g_1034.se", print_hash_value);
    transparent_crc(p_1544->g_1034.sf, "p_1544->g_1034.sf", print_hash_value);
    transparent_crc(p_1544->g_1037.s0, "p_1544->g_1037.s0", print_hash_value);
    transparent_crc(p_1544->g_1037.s1, "p_1544->g_1037.s1", print_hash_value);
    transparent_crc(p_1544->g_1037.s2, "p_1544->g_1037.s2", print_hash_value);
    transparent_crc(p_1544->g_1037.s3, "p_1544->g_1037.s3", print_hash_value);
    transparent_crc(p_1544->g_1037.s4, "p_1544->g_1037.s4", print_hash_value);
    transparent_crc(p_1544->g_1037.s5, "p_1544->g_1037.s5", print_hash_value);
    transparent_crc(p_1544->g_1037.s6, "p_1544->g_1037.s6", print_hash_value);
    transparent_crc(p_1544->g_1037.s7, "p_1544->g_1037.s7", print_hash_value);
    transparent_crc(p_1544->g_1088.x, "p_1544->g_1088.x", print_hash_value);
    transparent_crc(p_1544->g_1088.y, "p_1544->g_1088.y", print_hash_value);
    transparent_crc(p_1544->g_1091.x, "p_1544->g_1091.x", print_hash_value);
    transparent_crc(p_1544->g_1091.y, "p_1544->g_1091.y", print_hash_value);
    transparent_crc(p_1544->g_1102.s0, "p_1544->g_1102.s0", print_hash_value);
    transparent_crc(p_1544->g_1102.s1, "p_1544->g_1102.s1", print_hash_value);
    transparent_crc(p_1544->g_1102.s2, "p_1544->g_1102.s2", print_hash_value);
    transparent_crc(p_1544->g_1102.s3, "p_1544->g_1102.s3", print_hash_value);
    transparent_crc(p_1544->g_1102.s4, "p_1544->g_1102.s4", print_hash_value);
    transparent_crc(p_1544->g_1102.s5, "p_1544->g_1102.s5", print_hash_value);
    transparent_crc(p_1544->g_1102.s6, "p_1544->g_1102.s6", print_hash_value);
    transparent_crc(p_1544->g_1102.s7, "p_1544->g_1102.s7", print_hash_value);
    transparent_crc(p_1544->g_1124.x, "p_1544->g_1124.x", print_hash_value);
    transparent_crc(p_1544->g_1124.y, "p_1544->g_1124.y", print_hash_value);
    transparent_crc(p_1544->g_1124.z, "p_1544->g_1124.z", print_hash_value);
    transparent_crc(p_1544->g_1124.w, "p_1544->g_1124.w", print_hash_value);
    transparent_crc(p_1544->g_1278.x, "p_1544->g_1278.x", print_hash_value);
    transparent_crc(p_1544->g_1278.y, "p_1544->g_1278.y", print_hash_value);
    transparent_crc(p_1544->g_1278.z, "p_1544->g_1278.z", print_hash_value);
    transparent_crc(p_1544->g_1278.w, "p_1544->g_1278.w", print_hash_value);
    transparent_crc(p_1544->g_1294.s0, "p_1544->g_1294.s0", print_hash_value);
    transparent_crc(p_1544->g_1294.s1, "p_1544->g_1294.s1", print_hash_value);
    transparent_crc(p_1544->g_1294.s2, "p_1544->g_1294.s2", print_hash_value);
    transparent_crc(p_1544->g_1294.s3, "p_1544->g_1294.s3", print_hash_value);
    transparent_crc(p_1544->g_1294.s4, "p_1544->g_1294.s4", print_hash_value);
    transparent_crc(p_1544->g_1294.s5, "p_1544->g_1294.s5", print_hash_value);
    transparent_crc(p_1544->g_1294.s6, "p_1544->g_1294.s6", print_hash_value);
    transparent_crc(p_1544->g_1294.s7, "p_1544->g_1294.s7", print_hash_value);
    transparent_crc(p_1544->g_1300, "p_1544->g_1300", print_hash_value);
    transparent_crc(p_1544->g_1305.f0, "p_1544->g_1305.f0", print_hash_value);
    transparent_crc(p_1544->g_1305.f1, "p_1544->g_1305.f1", print_hash_value);
    transparent_crc(p_1544->g_1305.f2, "p_1544->g_1305.f2", print_hash_value);
    transparent_crc(p_1544->g_1305.f3, "p_1544->g_1305.f3", print_hash_value);
    transparent_crc(p_1544->g_1307.f0, "p_1544->g_1307.f0", print_hash_value);
    transparent_crc(p_1544->g_1307.f1, "p_1544->g_1307.f1", print_hash_value);
    transparent_crc(p_1544->g_1307.f2, "p_1544->g_1307.f2", print_hash_value);
    transparent_crc(p_1544->g_1307.f3, "p_1544->g_1307.f3", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_1544->g_1312[i][j], "p_1544->g_1312[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1544->g_1318.f0, "p_1544->g_1318.f0", print_hash_value);
    transparent_crc(p_1544->g_1318.f1, "p_1544->g_1318.f1", print_hash_value);
    transparent_crc(p_1544->g_1318.f2, "p_1544->g_1318.f2", print_hash_value);
    transparent_crc(p_1544->g_1318.f3, "p_1544->g_1318.f3", print_hash_value);
    transparent_crc(p_1544->g_1321.x, "p_1544->g_1321.x", print_hash_value);
    transparent_crc(p_1544->g_1321.y, "p_1544->g_1321.y", print_hash_value);
    transparent_crc(p_1544->g_1327.x, "p_1544->g_1327.x", print_hash_value);
    transparent_crc(p_1544->g_1327.y, "p_1544->g_1327.y", print_hash_value);
    transparent_crc(p_1544->g_1327.z, "p_1544->g_1327.z", print_hash_value);
    transparent_crc(p_1544->g_1327.w, "p_1544->g_1327.w", print_hash_value);
    transparent_crc(p_1544->g_1328.x, "p_1544->g_1328.x", print_hash_value);
    transparent_crc(p_1544->g_1328.y, "p_1544->g_1328.y", print_hash_value);
    transparent_crc(p_1544->g_1363, "p_1544->g_1363", print_hash_value);
    transparent_crc(p_1544->v_collective, "p_1544->v_collective", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 93; i++)
            transparent_crc(p_1544->g_special_values[i + 93 * get_linear_group_id()], "p_1544->g_special_values[i + 93 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 93; i++)
            transparent_crc(p_1544->l_special_values[i], "p_1544->l_special_values[i]", print_hash_value);
    transparent_crc(p_1544->l_comm_values[get_linear_local_id()], "p_1544->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_1544->g_comm_values[get_linear_group_id() * 2 + get_linear_local_id()], "p_1544->g_comm_values[get_linear_group_id() * 2 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
