// ---fake_divergence -g 98,3,9 -l 1,1,1
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


// Seed: 93

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   volatile int32_t  f0;
   volatile int16_t  f1;
   int32_t  f2;
   volatile uint32_t  f3;
   volatile uint8_t  f4;
   int64_t  f5;
   volatile int64_t  f6;
   uint32_t  f7;
   int32_t  f8;
   volatile uint8_t  f9;
};

union U1 {
   struct S0  f0;
   int8_t  f1;
   volatile int32_t  f2;
};

union U2 {
   uint32_t  f0;
   int64_t  f1;
};

union U3 {
   volatile struct S0  f0;
};

union U4 {
   uint32_t  f0;
   struct S0  f1;
   volatile uint64_t  f2;
   uint32_t  f3;
   int16_t  f4;
};

struct S5 {
    int32_t g_3;
    volatile int64_t g_6;
    volatile uint8_t g_9;
    uint64_t g_12[8][4][2];
    int32_t g_13;
    int8_t g_14;
    int64_t g_34;
    union U4 g_43;
    union U1 g_78;
    volatile union U3 g_79;
    int32_t *g_89;
    int32_t ** volatile g_88;
    uint16_t g_109;
    uint8_t g_115[3][5];
    uint64_t g_118;
    volatile union U3 g_127;
    volatile uint8_t g_152;
    volatile uint8_t *g_151;
    volatile uint8_t g_173;
    int8_t g_205;
    uint8_t g_214[7][3];
    volatile struct S0 * volatile g_215[3];
    volatile struct S0 * volatile g_216;
    volatile struct S0 * volatile g_217;
    volatile struct S0 g_219;
    uint16_t *g_247;
    volatile uint64_t g_249;
    int64_t g_252;
    volatile uint32_t g_264;
    int8_t *g_283;
    int32_t *g_287;
    int32_t ** volatile g_286;
    int32_t g_295[9];
    int32_t g_296[6];
    union U2 g_325[1];
    int32_t * volatile g_331;
    uint32_t g_363[4];
    volatile union U4 g_393;
    uint32_t g_403;
    volatile uint16_t g_406;
    volatile uint16_t * volatile g_405[1][4][6];
    uint8_t *g_410[7];
    uint8_t **g_409[6][5];
    volatile int8_t g_422;
    volatile int8_t * volatile g_421;
    volatile int8_t * volatile * volatile g_420;
    volatile int8_t * volatile * volatile *g_419;
    uint32_t g_423;
    int32_t * volatile g_471;
    volatile struct S0 g_472;
    volatile struct S0 * volatile g_473[1];
    volatile struct S0 * volatile g_474;
    volatile struct S0 * volatile g_477;
    volatile struct S0 g_499;
    volatile struct S0 * volatile g_501[5];
    volatile struct S0 g_502;
    volatile struct S0 g_520;
    volatile struct S0 * volatile g_521;
    volatile int16_t * volatile g_523;
    volatile int16_t * volatile *g_522[5][10];
    volatile int16_t * volatile ** volatile g_524;
    union U1 g_537;
    int32_t **g_555;
    int32_t ***g_554[3];
    union U1 g_558;
    uint32_t *g_561;
    uint32_t **g_560;
    volatile int16_t g_566;
    union U3 g_649;
    union U3 g_652;
    union U3 *g_651;
    union U3 **g_650;
    volatile union U4 g_678[1][8][1];
    int16_t *g_688;
    int16_t **g_687;
    int16_t ***g_686;
    union U2 *g_695[4];
    uint8_t g_724;
    volatile struct S0 g_745[9];
    uint64_t g_760;
    volatile struct S0 g_764;
    volatile struct S0 * volatile g_765;
    volatile struct S0 * volatile g_766[7][6][2];
    volatile struct S0 * volatile g_767;
    struct S0 g_772;
    struct S0 g_774;
    volatile struct S0 g_796;
    union U4 g_798;
    volatile union U1 g_813;
    volatile struct S0 g_852;
    uint32_t g_887;
    volatile uint32_t g_898;
    struct S0 g_901;
    struct S0 * volatile g_902;
    volatile struct S0 g_950;
    union U3 g_951;
    struct S0 * volatile g_991;
    int8_t **g_996;
    int8_t ***g_995;
    union U3 g_1003;
    int32_t g_1005;
    volatile union U4 *g_1029;
    volatile union U4 ** volatile g_1028[4][4][9];
    volatile union U4 ** volatile g_1030[4][4][2];
    uint8_t ***g_1059;
    uint8_t ****g_1058[2][6];
    union U1 g_1112;
    uint8_t g_1119[6];
    int32_t ** volatile g_1120;
    union U4 *g_1155;
    union U4 **g_1154;
    union U4 g_1164;
    volatile int64_t * volatile g_1171;
    volatile int64_t * volatile *g_1170;
    union U4 g_1217;
    struct S0 g_1248;
    uint8_t g_1249;
    int8_t g_1253;
    int32_t g_1276;
    int64_t g_1308;
    union U4 *** volatile g_1398;
    union U4 *** volatile *g_1397[9];
    uint64_t global_0_offset;
    uint64_t global_1_offset;
    uint64_t global_2_offset;
    uint64_t local_0_offset;
    uint64_t local_1_offset;
    uint64_t local_2_offset;
    uint64_t group_0_offset;
    uint64_t group_1_offset;
    uint64_t group_2_offset;
};


/* --- FORWARD DECLARATIONS --- */
int32_t  func_1(struct S5 * p_1402);
uint32_t  func_22(uint16_t  p_23, int64_t  p_24, int32_t * p_25, struct S5 * p_1402);
int32_t * func_40(int32_t  p_41, uint64_t  p_42, struct S5 * p_1402);
union U3  func_45(int32_t * p_46, int32_t * p_47, int64_t * p_48, int32_t  p_49, struct S5 * p_1402);
int64_t * func_51(int32_t * p_52, int64_t * p_53, struct S5 * p_1402);
int32_t * func_54(uint32_t  p_55, int32_t  p_56, int32_t * p_57, int32_t  p_58, struct S5 * p_1402);
uint32_t  func_60(int64_t * p_61, uint64_t  p_62, uint32_t  p_63, uint16_t  p_64, int32_t * p_65, struct S5 * p_1402);
int64_t * func_66(uint16_t  p_67, struct S5 * p_1402);
int64_t  func_70(int32_t * p_71, int32_t  p_72, int64_t * p_73, int64_t * p_74, struct S5 * p_1402);
int32_t * func_75(int32_t * p_76, int8_t  p_77, struct S5 * p_1402);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1402->g_3 p_1402->g_9 p_1402->g_6 p_1402->g_14 p_1402->g_13 p_1402->g_12 p_1402->g_555 p_1402->g_89 p_1402->g_1058 p_1402->g_950 p_1402->g_951 p_1402->g_247 p_1402->g_724 p_1402->g_772.f8 p_1402->g_813.f0.f4 p_1402->g_523 p_1402->g_520.f1 p_1402->g_127.f0.f9 p_1402->g_537.f0.f8 p_1402->g_109 p_1402->g_774.f7 p_1402->g_286 p_1402->g_287 p_1402->g_902 p_1402->g_774 p_1402->g_991 p_1402->g_471 p_1402->g_296 p_1402->g_88 p_1402->g_34 p_1402->g_764.f3 p_1402->g_1217 p_1402->g_1112.f0.f7 p_1402->g_472.f1 p_1402->g_295 p_1402->g_901.f2 p_1402->g_1248 p_1402->g_1154 p_1402->g_1029 p_1402->g_393 p_1402->g_1249 p_1402->g_252 p_1402->g_1253 p_1402->g_1120 p_1402->g_472.f3 p_1402->g_1164.f0 p_1402->g_78.f1 p_1402->g_813.f0.f2 p_1402->g_1308 p_1402->g_1217.f0 p_1402->g_537.f1 p_1402->g_1164.f1.f2 p_1402->g_127.f0.f8
 * writes: p_1402->g_3 p_1402->g_9 p_1402->g_12 p_1402->g_13 p_1402->g_14 p_1402->g_34 p_1402->g_109 p_1402->g_89 p_1402->g_78.f0 p_1402->g_287 p_1402->g_537.f0.f8 p_1402->g_1112.f0.f7 p_1402->g_252 p_1402->g_774.f5 p_1402->g_901.f2 p_1402->g_296 p_1402->g_724 p_1402->g_1155 p_1402->g_1253 p_1402->g_798.f4 p_1402->g_1164.f0 p_1402->g_1112.f1 p_1402->g_78.f1 p_1402->g_43.f1.f8 p_1402->g_1248.f7 p_1402->g_772.f8 p_1402->g_1217.f0 p_1402->g_1112.f0.f8 p_1402->g_537.f1 p_1402->g_1164.f1.f2
 */
int32_t  func_1(struct S5 * p_1402)
{ /* block id: 4 */
    int32_t l_2[5] = {0x56F1860EL,0x56F1860EL,0x56F1860EL,0x56F1860EL,0x56F1860EL};
    int32_t l_1239 = 1L;
    int64_t *l_1267 = &p_1402->g_34;
    int32_t l_1271[5] = {2L,2L,2L,2L,2L};
    int32_t l_1277 = 6L;
    uint64_t *l_1282 = (void*)0;
    uint64_t *l_1283 = &p_1402->g_12[0][1][1];
    int8_t *l_1284 = &p_1402->g_1112.f1;
    uint32_t l_1293[2];
    uint8_t l_1305[8] = {0x0CL,4UL,0x0CL,0x0CL,4UL,0x0CL,0x0CL,4UL};
    int32_t l_1306 = 0x4E9618ACL;
    int32_t l_1307 = (-9L);
    int32_t l_1313 = 0x6B9BCCA1L;
    uint32_t l_1329[2];
    union U2 l_1341 = {0x632A3A80L};
    union U3 *l_1348 = &p_1402->g_652;
    uint8_t ****l_1351 = (void*)0;
    uint8_t ****l_1353 = (void*)0;
    uint64_t l_1358 = 0UL;
    int16_t l_1365 = 0x152BL;
    uint32_t l_1372 = 4294967290UL;
    union U4 ***l_1385 = &p_1402->g_1154;
    uint8_t l_1400[2];
    int i;
    for (i = 0; i < 2; i++)
        l_1293[i] = 0xD323380AL;
    for (i = 0; i < 2; i++)
        l_1329[i] = 1UL;
    for (i = 0; i < 2; i++)
        l_1400[i] = 1UL;
    for (p_1402->g_3 = 4; (p_1402->g_3 >= 0); p_1402->g_3 -= 1)
    { /* block id: 7 */
        int32_t *l_4 = &l_2[p_1402->g_3];
        int32_t *l_5 = &l_2[p_1402->g_3];
        int32_t *l_7 = &l_2[p_1402->g_3];
        int32_t *l_8[1][3][8] = {{{&l_2[p_1402->g_3],&l_2[p_1402->g_3],&l_2[p_1402->g_3],&l_2[p_1402->g_3],&l_2[p_1402->g_3],&l_2[p_1402->g_3],&l_2[p_1402->g_3],&l_2[p_1402->g_3]},{&l_2[p_1402->g_3],&l_2[p_1402->g_3],&l_2[p_1402->g_3],&l_2[p_1402->g_3],&l_2[p_1402->g_3],&l_2[p_1402->g_3],&l_2[p_1402->g_3],&l_2[p_1402->g_3]},{&l_2[p_1402->g_3],&l_2[p_1402->g_3],&l_2[p_1402->g_3],&l_2[p_1402->g_3],&l_2[p_1402->g_3],&l_2[p_1402->g_3],&l_2[p_1402->g_3],&l_2[p_1402->g_3]}}};
        int i, j, k;
        ++p_1402->g_9;
        p_1402->g_12[0][1][1] = ((*l_4) &= 0x0B597857L);
        for (p_1402->g_13 = 0; (p_1402->g_13 <= 0); p_1402->g_13 += 1)
        { /* block id: 13 */
            uint8_t l_15 = 0xA5L;
            int32_t *l_1254[4][1];
            int i, j;
            for (i = 0; i < 4; i++)
            {
                for (j = 0; j < 1; j++)
                    l_1254[i][j] = &p_1402->g_772.f8;
            }
            ++l_15;
            for (p_1402->g_14 = 0; (p_1402->g_14 >= 0); p_1402->g_14 -= 1)
            { /* block id: 17 */
                int32_t l_1238[6][8][5] = {{{0x7C72C33FL,0x76410FF6L,0x2E1399A6L,0x0EA894DDL,0x45B90247L},{0x7C72C33FL,0x76410FF6L,0x2E1399A6L,0x0EA894DDL,0x45B90247L},{0x7C72C33FL,0x76410FF6L,0x2E1399A6L,0x0EA894DDL,0x45B90247L},{0x7C72C33FL,0x76410FF6L,0x2E1399A6L,0x0EA894DDL,0x45B90247L},{0x7C72C33FL,0x76410FF6L,0x2E1399A6L,0x0EA894DDL,0x45B90247L},{0x7C72C33FL,0x76410FF6L,0x2E1399A6L,0x0EA894DDL,0x45B90247L},{0x7C72C33FL,0x76410FF6L,0x2E1399A6L,0x0EA894DDL,0x45B90247L},{0x7C72C33FL,0x76410FF6L,0x2E1399A6L,0x0EA894DDL,0x45B90247L}},{{0x7C72C33FL,0x76410FF6L,0x2E1399A6L,0x0EA894DDL,0x45B90247L},{0x7C72C33FL,0x76410FF6L,0x2E1399A6L,0x0EA894DDL,0x45B90247L},{0x7C72C33FL,0x76410FF6L,0x2E1399A6L,0x0EA894DDL,0x45B90247L},{0x7C72C33FL,0x76410FF6L,0x2E1399A6L,0x0EA894DDL,0x45B90247L},{0x7C72C33FL,0x76410FF6L,0x2E1399A6L,0x0EA894DDL,0x45B90247L},{0x7C72C33FL,0x76410FF6L,0x2E1399A6L,0x0EA894DDL,0x45B90247L},{0x7C72C33FL,0x76410FF6L,0x2E1399A6L,0x0EA894DDL,0x45B90247L},{0x7C72C33FL,0x76410FF6L,0x2E1399A6L,0x0EA894DDL,0x45B90247L}},{{0x7C72C33FL,0x76410FF6L,0x2E1399A6L,0x0EA894DDL,0x45B90247L},{0x7C72C33FL,0x76410FF6L,0x2E1399A6L,0x0EA894DDL,0x45B90247L},{0x7C72C33FL,0x76410FF6L,0x2E1399A6L,0x0EA894DDL,0x45B90247L},{0x7C72C33FL,0x76410FF6L,0x2E1399A6L,0x0EA894DDL,0x45B90247L},{0x7C72C33FL,0x76410FF6L,0x2E1399A6L,0x0EA894DDL,0x45B90247L},{0x7C72C33FL,0x76410FF6L,0x2E1399A6L,0x0EA894DDL,0x45B90247L},{0x7C72C33FL,0x76410FF6L,0x2E1399A6L,0x0EA894DDL,0x45B90247L},{0x7C72C33FL,0x76410FF6L,0x2E1399A6L,0x0EA894DDL,0x45B90247L}},{{0x7C72C33FL,0x76410FF6L,0x2E1399A6L,0x0EA894DDL,0x45B90247L},{0x7C72C33FL,0x76410FF6L,0x2E1399A6L,0x0EA894DDL,0x45B90247L},{0x7C72C33FL,0x76410FF6L,0x2E1399A6L,0x0EA894DDL,0x45B90247L},{0x7C72C33FL,0x76410FF6L,0x2E1399A6L,0x0EA894DDL,0x45B90247L},{0x7C72C33FL,0x76410FF6L,0x2E1399A6L,0x0EA894DDL,0x45B90247L},{0x7C72C33FL,0x76410FF6L,0x2E1399A6L,0x0EA894DDL,0x45B90247L},{0x7C72C33FL,0x76410FF6L,0x2E1399A6L,0x0EA894DDL,0x45B90247L},{0x7C72C33FL,0x76410FF6L,0x2E1399A6L,0x0EA894DDL,0x45B90247L}},{{0x7C72C33FL,0x76410FF6L,0x2E1399A6L,0x0EA894DDL,0x45B90247L},{0x7C72C33FL,0x76410FF6L,0x2E1399A6L,0x0EA894DDL,0x45B90247L},{0x7C72C33FL,0x76410FF6L,0x2E1399A6L,0x0EA894DDL,0x45B90247L},{0x7C72C33FL,0x76410FF6L,0x2E1399A6L,0x0EA894DDL,0x45B90247L},{0x7C72C33FL,0x76410FF6L,0x2E1399A6L,0x0EA894DDL,0x45B90247L},{0x7C72C33FL,0x76410FF6L,0x2E1399A6L,0x0EA894DDL,0x45B90247L},{0x7C72C33FL,0x76410FF6L,0x2E1399A6L,0x0EA894DDL,0x45B90247L},{0x7C72C33FL,0x76410FF6L,0x2E1399A6L,0x0EA894DDL,0x45B90247L}},{{0x7C72C33FL,0x76410FF6L,0x2E1399A6L,0x0EA894DDL,0x45B90247L},{0x7C72C33FL,0x76410FF6L,0x2E1399A6L,0x0EA894DDL,0x45B90247L},{0x7C72C33FL,0x76410FF6L,0x2E1399A6L,0x0EA894DDL,0x45B90247L},{0x7C72C33FL,0x76410FF6L,0x2E1399A6L,0x0EA894DDL,0x45B90247L},{0x7C72C33FL,0x76410FF6L,0x2E1399A6L,0x0EA894DDL,0x45B90247L},{0x7C72C33FL,0x76410FF6L,0x2E1399A6L,0x0EA894DDL,0x45B90247L},{0x7C72C33FL,0x76410FF6L,0x2E1399A6L,0x0EA894DDL,0x45B90247L},{0x7C72C33FL,0x76410FF6L,0x2E1399A6L,0x0EA894DDL,0x45B90247L}}};
                int i, j, k;
                for (l_15 = 0; (l_15 <= 4); l_15 += 1)
                { /* block id: 20 */
                    int64_t *l_32 = (void*)0;
                    int64_t *l_33[1][9][8] = {{{&p_1402->g_34,&p_1402->g_34,&p_1402->g_34,&p_1402->g_34,&p_1402->g_34,&p_1402->g_34,&p_1402->g_34,&p_1402->g_34},{&p_1402->g_34,&p_1402->g_34,&p_1402->g_34,&p_1402->g_34,&p_1402->g_34,&p_1402->g_34,&p_1402->g_34,&p_1402->g_34},{&p_1402->g_34,&p_1402->g_34,&p_1402->g_34,&p_1402->g_34,&p_1402->g_34,&p_1402->g_34,&p_1402->g_34,&p_1402->g_34},{&p_1402->g_34,&p_1402->g_34,&p_1402->g_34,&p_1402->g_34,&p_1402->g_34,&p_1402->g_34,&p_1402->g_34,&p_1402->g_34},{&p_1402->g_34,&p_1402->g_34,&p_1402->g_34,&p_1402->g_34,&p_1402->g_34,&p_1402->g_34,&p_1402->g_34,&p_1402->g_34},{&p_1402->g_34,&p_1402->g_34,&p_1402->g_34,&p_1402->g_34,&p_1402->g_34,&p_1402->g_34,&p_1402->g_34,&p_1402->g_34},{&p_1402->g_34,&p_1402->g_34,&p_1402->g_34,&p_1402->g_34,&p_1402->g_34,&p_1402->g_34,&p_1402->g_34,&p_1402->g_34},{&p_1402->g_34,&p_1402->g_34,&p_1402->g_34,&p_1402->g_34,&p_1402->g_34,&p_1402->g_34,&p_1402->g_34,&p_1402->g_34},{&p_1402->g_34,&p_1402->g_34,&p_1402->g_34,&p_1402->g_34,&p_1402->g_34,&p_1402->g_34,&p_1402->g_34,&p_1402->g_34}}};
                    int32_t l_37 = 0x5D89F82AL;
                    int32_t *l_1235 = (void*)0;
                    int i, j, k;
                    (*l_5) &= (-6L);
                    (*l_5) = (safe_rshift_func_uint16_t_u_u((safe_mod_func_int8_t_s_s(l_2[l_15], p_1402->g_6)), 6));
                    l_1239 &= ((*p_1402->g_471) = (func_22((!(safe_mod_func_uint16_t_u_u((safe_add_func_uint64_t_u_u((p_1402->g_12[(p_1402->g_3 + 2)][(p_1402->g_14 + 2)][(p_1402->g_13 + 1)]--), (l_2[l_15] = (-8L)))), (safe_mul_func_int8_t_s_s(0x72L, p_1402->g_13))))), l_37, l_8[p_1402->g_14][p_1402->g_13][(p_1402->g_3 + 1)], p_1402) , ((*l_7) = ((p_1402->g_901.f2 &= ((void*)0 == &p_1402->g_560)) , (safe_add_func_uint16_t_u_u(l_1238[2][6][4], GROUP_DIVERGE(1, 1)))))));
                    for (p_1402->g_724 = 0; (p_1402->g_724 <= 52); p_1402->g_724++)
                    { /* block id: 667 */
                        uint32_t l_1252 = 0UL;
                        p_1402->g_1253 &= (safe_lshift_func_uint16_t_u_u(((safe_add_func_uint8_t_u_u((l_1238[2][6][4] <= (-1L)), (safe_sub_func_uint32_t_u_u((((p_1402->g_1248 , ((*l_7) = (((*p_1402->g_1154) = (void*)0) == (((((*p_1402->g_1029) , 0xFEL) >= p_1402->g_1249) >= (((safe_sub_func_uint64_t_u_u((*l_7), p_1402->g_252)) != (*p_1402->g_247)) >= l_1252)) , (void*)0)))) & l_1239) , 0x9377D56AL), (*p_1402->g_287))))) || (*p_1402->g_471)), 10));
                        return p_1402->g_724;
                    }
                }
                if ((**p_1402->g_1120))
                    continue;
                (*p_1402->g_555) = l_1254[2][0];
            }
            for (p_1402->g_798.f4 = 1; (p_1402->g_798.f4 >= 0); p_1402->g_798.f4 -= 1)
            { /* block id: 679 */
                int16_t l_1270 = 0x3A2AL;
                (*l_5) ^= 0x4A5BB000L;
            }
        }
    }
    (*p_1402->g_555) = func_75(&l_1271[4], (((l_1277 &= (-1L)) ^ ((((0x6307L & l_2[0]) < ((((*l_1284) = (l_1239 >= ((p_1402->g_1164.f0 ^= ((safe_mul_func_int16_t_s_s((-1L), ((0x452B0833L || p_1402->g_472.f3) != (safe_div_func_uint64_t_u_u(((*l_1283) = ((l_1271[4] & 0x64L) > FAKE_DIVERGE(p_1402->local_1_offset, get_local_id(1), 10))), 1L))))) | l_1239)) >= l_1239))) >= l_1239) != FAKE_DIVERGE(p_1402->global_0_offset, get_global_id(0), 10))) && FAKE_DIVERGE(p_1402->global_0_offset, get_global_id(0), 10)) || (*p_1402->g_471))) , 0x05L), p_1402);
    if ((safe_rshift_func_uint8_t_u_s((safe_lshift_func_int8_t_s_s(((((safe_mul_func_int8_t_s_s((safe_mul_func_uint16_t_u_u(1UL, ((((l_1293[1] && ((safe_rshift_func_int8_t_s_s((safe_add_func_int64_t_s_s(((p_1402->g_813.f0.f2 || GROUP_DIVERGE(2, 1)) & (FAKE_DIVERGE(p_1402->global_1_offset, get_global_id(1), 10) == (safe_add_func_int32_t_s_s(l_1239, (((safe_rshift_func_uint8_t_u_u((l_1271[0] , 0x66L), (18446744073709551615UL & (safe_rshift_func_int8_t_s_s((safe_unary_minus_func_int8_t_s((~(FAKE_DIVERGE(p_1402->group_1_offset, get_group_id(1), 10) < (((*l_1283) = (~((l_1277 = (((0x1FL & (0x7D4D9DA5E260C856L > l_1293[1])) && 0L) ^ l_1293[1])) , 18446744073709551615UL))) != 0x75B7ECF7E7D55C9FL))))), l_1293[1]))))) >= 0x2D928B9AL) && l_1305[1]))))), p_1402->g_774.f5)), 7)) <= 0L)) ^ 0x29L) ^ l_1306) , (*p_1402->g_523)))), l_1307)) != p_1402->g_1308) >= 0x7709L) ^ l_1307), 7)), 5)))
    { /* block id: 705 */
        uint32_t *l_1309 = (void*)0;
        uint32_t *l_1310 = &p_1402->g_1248.f7;
        (**p_1402->g_555) |= (((*l_1310)--) > l_1313);
    }
    else
    { /* block id: 708 */
        int32_t *l_1314 = &p_1402->g_1217.f1.f8;
        int32_t *l_1315 = &p_1402->g_1164.f1.f8;
        int32_t l_1316 = 0x46716DC4L;
        int32_t *l_1317 = &p_1402->g_296[5];
        int32_t *l_1318 = (void*)0;
        int32_t *l_1319 = &l_1306;
        int32_t *l_1320 = &p_1402->g_537.f0.f8;
        int32_t *l_1321 = &l_1271[0];
        int32_t l_1322 = 1L;
        int64_t l_1323 = (-7L);
        int32_t *l_1324 = &p_1402->g_1164.f1.f8;
        int32_t *l_1325 = &p_1402->g_13;
        int32_t *l_1326 = &l_1322;
        int32_t *l_1327 = &p_1402->g_901.f8;
        int32_t *l_1328[7][6] = {{&l_1316,&l_1313,&l_1306,&l_1313,&l_1316,&l_1316},{&l_1316,&l_1313,&l_1306,&l_1313,&l_1316,&l_1316},{&l_1316,&l_1313,&l_1306,&l_1313,&l_1316,&l_1316},{&l_1316,&l_1313,&l_1306,&l_1313,&l_1316,&l_1316},{&l_1316,&l_1313,&l_1306,&l_1313,&l_1316,&l_1316},{&l_1316,&l_1313,&l_1306,&l_1313,&l_1316,&l_1316},{&l_1316,&l_1313,&l_1306,&l_1313,&l_1316,&l_1316}};
        int64_t l_1337 = 1L;
        int8_t *l_1349[5] = {&p_1402->g_1253,&p_1402->g_1253,&p_1402->g_1253,&p_1402->g_1253,&p_1402->g_1253};
        uint8_t *****l_1352 = &p_1402->g_1058[1][5];
        int64_t **l_1357 = &l_1267;
        int64_t ***l_1356 = &l_1357;
        int32_t l_1362[4][9] = {{0x7B0B1AA5L,0x7B0B1AA5L,0x2ECC44AEL,0x517739E5L,1L,0x1B4E87CFL,4L,0x6A8F53DEL,4L},{0x7B0B1AA5L,0x7B0B1AA5L,0x2ECC44AEL,0x517739E5L,1L,0x1B4E87CFL,4L,0x6A8F53DEL,4L},{0x7B0B1AA5L,0x7B0B1AA5L,0x2ECC44AEL,0x517739E5L,1L,0x1B4E87CFL,4L,0x6A8F53DEL,4L},{0x7B0B1AA5L,0x7B0B1AA5L,0x2ECC44AEL,0x517739E5L,1L,0x1B4E87CFL,4L,0x6A8F53DEL,4L}};
        int32_t *l_1401[10][3][2] = {{{&l_1313,&l_1316},{&l_1313,&l_1316},{&l_1313,&l_1316}},{{&l_1313,&l_1316},{&l_1313,&l_1316},{&l_1313,&l_1316}},{{&l_1313,&l_1316},{&l_1313,&l_1316},{&l_1313,&l_1316}},{{&l_1313,&l_1316},{&l_1313,&l_1316},{&l_1313,&l_1316}},{{&l_1313,&l_1316},{&l_1313,&l_1316},{&l_1313,&l_1316}},{{&l_1313,&l_1316},{&l_1313,&l_1316},{&l_1313,&l_1316}},{{&l_1313,&l_1316},{&l_1313,&l_1316},{&l_1313,&l_1316}},{{&l_1313,&l_1316},{&l_1313,&l_1316},{&l_1313,&l_1316}},{{&l_1313,&l_1316},{&l_1313,&l_1316},{&l_1313,&l_1316}},{{&l_1313,&l_1316},{&l_1313,&l_1316},{&l_1313,&l_1316}}};
        int i, j, k;
lbl_1334:
        l_1329[1]++;
        for (p_1402->g_1217.f0 = 0; (p_1402->g_1217.f0 == 25); p_1402->g_1217.f0 = safe_add_func_uint16_t_u_u(p_1402->g_1217.f0, 2))
        { /* block id: 712 */
            if (p_1402->g_901.f2)
                goto lbl_1334;
            for (p_1402->g_1112.f0.f8 = (-30); (p_1402->g_1112.f0.f8 > 5); ++p_1402->g_1112.f0.f8)
            { /* block id: 716 */
                uint8_t l_1338[9][3] = {{8UL,0xBAL,1UL},{8UL,0xBAL,1UL},{8UL,0xBAL,1UL},{8UL,0xBAL,1UL},{8UL,0xBAL,1UL},{8UL,0xBAL,1UL},{8UL,0xBAL,1UL},{8UL,0xBAL,1UL},{8UL,0xBAL,1UL}};
                int i, j;
                (*p_1402->g_1120) = &l_1322;
                --l_1338[3][1];
                if (p_1402->g_1217.f0)
                    goto lbl_1334;
            }
        }
        (*p_1402->g_555) = (*p_1402->g_555);
        for (p_1402->g_537.f1 = (-5); (p_1402->g_537.f1 <= (-1)); p_1402->g_537.f1++)
        { /* block id: 729 */
            int64_t l_1363[6];
            int32_t l_1366 = 0x2CCC1FFEL;
            int32_t l_1367 = (-9L);
            int64_t l_1368[7] = {0x277931FE51B364A1L,0x277931FE51B364A1L,0x277931FE51B364A1L,0x277931FE51B364A1L,0x277931FE51B364A1L,0x277931FE51B364A1L,0x277931FE51B364A1L};
            union U4 ***l_1387 = &p_1402->g_1154;
            union U4 ****l_1386 = &l_1387;
            uint32_t *l_1390 = &l_1293[1];
            uint32_t *l_1399[9][4][3] = {{{&p_1402->g_558.f0.f7,(void*)0,(void*)0},{&p_1402->g_558.f0.f7,(void*)0,(void*)0},{&p_1402->g_558.f0.f7,(void*)0,(void*)0},{&p_1402->g_558.f0.f7,(void*)0,(void*)0}},{{&p_1402->g_558.f0.f7,(void*)0,(void*)0},{&p_1402->g_558.f0.f7,(void*)0,(void*)0},{&p_1402->g_558.f0.f7,(void*)0,(void*)0},{&p_1402->g_558.f0.f7,(void*)0,(void*)0}},{{&p_1402->g_558.f0.f7,(void*)0,(void*)0},{&p_1402->g_558.f0.f7,(void*)0,(void*)0},{&p_1402->g_558.f0.f7,(void*)0,(void*)0},{&p_1402->g_558.f0.f7,(void*)0,(void*)0}},{{&p_1402->g_558.f0.f7,(void*)0,(void*)0},{&p_1402->g_558.f0.f7,(void*)0,(void*)0},{&p_1402->g_558.f0.f7,(void*)0,(void*)0},{&p_1402->g_558.f0.f7,(void*)0,(void*)0}},{{&p_1402->g_558.f0.f7,(void*)0,(void*)0},{&p_1402->g_558.f0.f7,(void*)0,(void*)0},{&p_1402->g_558.f0.f7,(void*)0,(void*)0},{&p_1402->g_558.f0.f7,(void*)0,(void*)0}},{{&p_1402->g_558.f0.f7,(void*)0,(void*)0},{&p_1402->g_558.f0.f7,(void*)0,(void*)0},{&p_1402->g_558.f0.f7,(void*)0,(void*)0},{&p_1402->g_558.f0.f7,(void*)0,(void*)0}},{{&p_1402->g_558.f0.f7,(void*)0,(void*)0},{&p_1402->g_558.f0.f7,(void*)0,(void*)0},{&p_1402->g_558.f0.f7,(void*)0,(void*)0},{&p_1402->g_558.f0.f7,(void*)0,(void*)0}},{{&p_1402->g_558.f0.f7,(void*)0,(void*)0},{&p_1402->g_558.f0.f7,(void*)0,(void*)0},{&p_1402->g_558.f0.f7,(void*)0,(void*)0},{&p_1402->g_558.f0.f7,(void*)0,(void*)0}},{{&p_1402->g_558.f0.f7,(void*)0,(void*)0},{&p_1402->g_558.f0.f7,(void*)0,(void*)0},{&p_1402->g_558.f0.f7,(void*)0,(void*)0},{&p_1402->g_558.f0.f7,(void*)0,(void*)0}}};
            int i, j, k;
            for (i = 0; i < 6; i++)
                l_1363[i] = 4L;
            for (p_1402->g_1164.f1.f2 = 0; (p_1402->g_1164.f1.f2 <= 2); p_1402->g_1164.f1.f2 += 1)
            { /* block id: 732 */
                int32_t l_1361 = 0x568CC750L;
                int32_t l_1364[8] = {0x4A84B3B0L,(-10L),0x4A84B3B0L,0x4A84B3B0L,(-10L),0x4A84B3B0L,0x4A84B3B0L,(-10L)};
                uint32_t l_1369[9][9] = {{1UL,0x4E2DE29AL,0x4E2DE29AL,1UL,0x2089B672L,3UL,9UL,4294967295UL,0x3B246A1FL},{1UL,0x4E2DE29AL,0x4E2DE29AL,1UL,0x2089B672L,3UL,9UL,4294967295UL,0x3B246A1FL},{1UL,0x4E2DE29AL,0x4E2DE29AL,1UL,0x2089B672L,3UL,9UL,4294967295UL,0x3B246A1FL},{1UL,0x4E2DE29AL,0x4E2DE29AL,1UL,0x2089B672L,3UL,9UL,4294967295UL,0x3B246A1FL},{1UL,0x4E2DE29AL,0x4E2DE29AL,1UL,0x2089B672L,3UL,9UL,4294967295UL,0x3B246A1FL},{1UL,0x4E2DE29AL,0x4E2DE29AL,1UL,0x2089B672L,3UL,9UL,4294967295UL,0x3B246A1FL},{1UL,0x4E2DE29AL,0x4E2DE29AL,1UL,0x2089B672L,3UL,9UL,4294967295UL,0x3B246A1FL},{1UL,0x4E2DE29AL,0x4E2DE29AL,1UL,0x2089B672L,3UL,9UL,4294967295UL,0x3B246A1FL},{1UL,0x4E2DE29AL,0x4E2DE29AL,1UL,0x2089B672L,3UL,9UL,4294967295UL,0x3B246A1FL}};
                int i, j;
                (*l_1321) = ((*l_1326) = l_1361);
                if (l_1361)
                    continue;
                l_1369[2][5]--;
            }
            l_1372++;
            (*p_1402->g_555) = &l_1271[4];
        }
    }
    return p_1402->g_127.f0.f8;
}


/* ------------------------------------------ */
/* 
 * reads : p_1402->g_34 p_1402->g_555 p_1402->g_89 p_1402->g_1058 p_1402->g_950 p_1402->g_951 p_1402->g_247 p_1402->g_724 p_1402->g_13 p_1402->g_813.f0.f4 p_1402->g_523 p_1402->g_520.f1 p_1402->g_127.f0.f9 p_1402->g_12 p_1402->g_537.f0.f8 p_1402->g_109 p_1402->g_774.f7 p_1402->g_286 p_1402->g_287 p_1402->g_902 p_1402->g_774 p_1402->g_991 p_1402->g_471 p_1402->g_296 p_1402->g_88 p_1402->g_772.f8 p_1402->g_764.f3 p_1402->g_3 p_1402->g_1217 p_1402->g_1112.f0.f7 p_1402->g_472.f1 p_1402->g_295
 * writes: p_1402->g_34 p_1402->g_109 p_1402->g_89 p_1402->g_12 p_1402->g_78.f0 p_1402->g_287 p_1402->g_537.f0.f8 p_1402->g_1112.f0.f7 p_1402->g_252 p_1402->g_774.f5
 */
uint32_t  func_22(uint16_t  p_23, int64_t  p_24, int32_t * p_25, struct S5 * p_1402)
{ /* block id: 25 */
    int64_t l_38[4][2][6] = {{{9L,9L,0x3F156DE04B380B77L,0x4F0CDBBF849EC59CL,0x773439D6F4693715L,0x4F0CDBBF849EC59CL},{9L,9L,0x3F156DE04B380B77L,0x4F0CDBBF849EC59CL,0x773439D6F4693715L,0x4F0CDBBF849EC59CL}},{{9L,9L,0x3F156DE04B380B77L,0x4F0CDBBF849EC59CL,0x773439D6F4693715L,0x4F0CDBBF849EC59CL},{9L,9L,0x3F156DE04B380B77L,0x4F0CDBBF849EC59CL,0x773439D6F4693715L,0x4F0CDBBF849EC59CL}},{{9L,9L,0x3F156DE04B380B77L,0x4F0CDBBF849EC59CL,0x773439D6F4693715L,0x4F0CDBBF849EC59CL},{9L,9L,0x3F156DE04B380B77L,0x4F0CDBBF849EC59CL,0x773439D6F4693715L,0x4F0CDBBF849EC59CL}},{{9L,9L,0x3F156DE04B380B77L,0x4F0CDBBF849EC59CL,0x773439D6F4693715L,0x4F0CDBBF849EC59CL},{9L,9L,0x3F156DE04B380B77L,0x4F0CDBBF849EC59CL,0x773439D6F4693715L,0x4F0CDBBF849EC59CL}}};
    int32_t l_1007 = 0x581F28B3L;
    int32_t l_1020 = 0x7E1BB516L;
    int32_t l_1021 = (-1L);
    int32_t l_1023 = (-1L);
    uint64_t l_1083 = 0x5047D49FDB8B76D5L;
    int8_t l_1118 = 0x2EL;
    uint32_t l_1135[10] = {0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL};
    union U2 *l_1142[9];
    int32_t **l_1145 = &p_1402->g_89;
    int32_t *l_1148 = (void*)0;
    int64_t l_1188[2][10][7] = {{{1L,(-5L),(-4L),0x47D2B9C1E9238188L,0x35DB3F6837115943L,0x50D51F8935437778L,0L},{1L,(-5L),(-4L),0x47D2B9C1E9238188L,0x35DB3F6837115943L,0x50D51F8935437778L,0L},{1L,(-5L),(-4L),0x47D2B9C1E9238188L,0x35DB3F6837115943L,0x50D51F8935437778L,0L},{1L,(-5L),(-4L),0x47D2B9C1E9238188L,0x35DB3F6837115943L,0x50D51F8935437778L,0L},{1L,(-5L),(-4L),0x47D2B9C1E9238188L,0x35DB3F6837115943L,0x50D51F8935437778L,0L},{1L,(-5L),(-4L),0x47D2B9C1E9238188L,0x35DB3F6837115943L,0x50D51F8935437778L,0L},{1L,(-5L),(-4L),0x47D2B9C1E9238188L,0x35DB3F6837115943L,0x50D51F8935437778L,0L},{1L,(-5L),(-4L),0x47D2B9C1E9238188L,0x35DB3F6837115943L,0x50D51F8935437778L,0L},{1L,(-5L),(-4L),0x47D2B9C1E9238188L,0x35DB3F6837115943L,0x50D51F8935437778L,0L},{1L,(-5L),(-4L),0x47D2B9C1E9238188L,0x35DB3F6837115943L,0x50D51F8935437778L,0L}},{{1L,(-5L),(-4L),0x47D2B9C1E9238188L,0x35DB3F6837115943L,0x50D51F8935437778L,0L},{1L,(-5L),(-4L),0x47D2B9C1E9238188L,0x35DB3F6837115943L,0x50D51F8935437778L,0L},{1L,(-5L),(-4L),0x47D2B9C1E9238188L,0x35DB3F6837115943L,0x50D51F8935437778L,0L},{1L,(-5L),(-4L),0x47D2B9C1E9238188L,0x35DB3F6837115943L,0x50D51F8935437778L,0L},{1L,(-5L),(-4L),0x47D2B9C1E9238188L,0x35DB3F6837115943L,0x50D51F8935437778L,0L},{1L,(-5L),(-4L),0x47D2B9C1E9238188L,0x35DB3F6837115943L,0x50D51F8935437778L,0L},{1L,(-5L),(-4L),0x47D2B9C1E9238188L,0x35DB3F6837115943L,0x50D51F8935437778L,0L},{1L,(-5L),(-4L),0x47D2B9C1E9238188L,0x35DB3F6837115943L,0x50D51F8935437778L,0L},{1L,(-5L),(-4L),0x47D2B9C1E9238188L,0x35DB3F6837115943L,0x50D51F8935437778L,0L},{1L,(-5L),(-4L),0x47D2B9C1E9238188L,0x35DB3F6837115943L,0x50D51F8935437778L,0L}}};
    int32_t l_1231 = (-1L);
    int i, j, k;
    for (i = 0; i < 9; i++)
        l_1142[i] = &p_1402->g_325[0];
    for (p_1402->g_34 = 1; (p_1402->g_34 >= 0); p_1402->g_34 -= 1)
    { /* block id: 28 */
        int64_t *l_39[6] = {&l_38[3][1][5],&l_38[3][1][5],&l_38[3][1][5],&l_38[3][1][5],&l_38[3][1][5],&l_38[3][1][5]};
        int32_t l_1017[2];
        uint8_t ***l_1056 = &p_1402->g_409[0][1];
        uint8_t ****l_1055 = &l_1056;
        uint8_t ****l_1063 = &l_1056;
        int32_t l_1064 = 1L;
        int32_t l_1117 = 0x0F5B22F0L;
        int32_t l_1165 = 9L;
        int i;
        for (i = 0; i < 2; i++)
            l_1017[i] = 9L;
        if (l_38[3][0][1])
            break;
        if ((l_39[0] == (void*)0))
        { /* block id: 30 */
            uint16_t l_44 = 6UL;
            int32_t l_1015 = 0x0640FA6DL;
            int32_t l_1016 = 0x3AB2D32BL;
            int32_t l_1018 = 6L;
            int32_t l_1019 = 0x2AFAF7FEL;
            int32_t l_1022 = 0x1F0E3858L;
            uint8_t *****l_1057 = &l_1055;
            uint8_t *****l_1060 = (void*)0;
            uint8_t *****l_1061 = (void*)0;
            uint8_t *****l_1062[10][10][2] = {{{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0}},{{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0}},{{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0}},{{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0}},{{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0}},{{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0}},{{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0}},{{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0}},{{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0}},{{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0},{&p_1402->g_1058[1][5],(void*)0}}};
            int i, j, k;
            for (p_23 = 0; (p_23 <= 1); p_23 += 1)
            { /* block id: 33 */
                int16_t l_1008 = 3L;
                int32_t *l_1009 = &p_1402->g_296[5];
                int32_t *l_1010 = &l_1007;
                int32_t *l_1011 = &p_1402->g_901.f8;
                int32_t *l_1012 = &p_1402->g_43.f1.f8;
                int32_t *l_1013 = &p_1402->g_296[3];
                int32_t *l_1014[7] = {&p_1402->g_774.f8,&p_1402->g_774.f8,&p_1402->g_774.f8,&p_1402->g_774.f8,&p_1402->g_774.f8,&p_1402->g_774.f8,&p_1402->g_774.f8};
                uint32_t l_1024[1];
                int i;
                for (i = 0; i < 1; i++)
                    l_1024[i] = 4294967295UL;
                (1 + 1);
            }
            (*p_1402->g_286) = func_54((safe_rshift_func_uint16_t_u_u((&p_1402->g_651 != (void*)0), p_24)), l_38[3][0][1], (*p_1402->g_555), ((GROUP_DIVERGE(2, 1) || p_23) != ((l_1064 = (l_1017[1] = ((safe_rshift_func_uint16_t_u_s(0UL, 13)) & ((safe_mul_func_int32_t_s_s(((((*l_1057) = l_1055) == (l_1063 = p_1402->g_1058[1][5])) , 2L), 0UL)) && p_24)))) > l_38[3][0][1])), p_1402);
        }
        else
        { /* block id: 568 */
            int32_t l_1065 = 0x7993D2A4L;
            l_1065 = (**p_1402->g_555);
            if ((*p_1402->g_471))
                break;
        }
        for (p_1402->g_537.f0.f8 = 1; (p_1402->g_537.f0.f8 >= 0); p_1402->g_537.f0.f8 -= 1)
        { /* block id: 574 */
            union U2 l_1084[1][5] = {{{0xF4632377L},{0xF4632377L},{0xF4632377L},{0xF4632377L},{0xF4632377L}}};
            int16_t ****l_1089[8][10] = {{(void*)0,(void*)0,(void*)0,&p_1402->g_686,(void*)0,&p_1402->g_686,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1402->g_686,(void*)0,&p_1402->g_686,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1402->g_686,(void*)0,&p_1402->g_686,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1402->g_686,(void*)0,&p_1402->g_686,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1402->g_686,(void*)0,&p_1402->g_686,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1402->g_686,(void*)0,&p_1402->g_686,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1402->g_686,(void*)0,&p_1402->g_686,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1402->g_686,(void*)0,&p_1402->g_686,(void*)0,(void*)0,(void*)0,(void*)0}};
            uint32_t l_1096 = 0x57BFAB36L;
            uint8_t *l_1132 = &p_1402->g_1119[1];
            int32_t l_1185 = 0x0466D82DL;
            int32_t l_1186 = 1L;
            int32_t l_1187 = 0x4038E8C2L;
            uint8_t l_1193 = 0UL;
            uint8_t l_1229 = 250UL;
            int64_t l_1232 = 0x69BDC60C5906B47FL;
            int i, j;
            for (p_24 = 0; (p_24 <= 1); p_24 += 1)
            { /* block id: 577 */
                int32_t l_1134 = 0x09C3CD57L;
                int32_t l_1138[8] = {0x76F81751L,0x76F81751L,0x76F81751L,0x76F81751L,0x76F81751L,0x76F81751L,0x76F81751L,0x76F81751L};
                int32_t **l_1146 = &p_1402->g_287;
                union U2 l_1150[7] = {{0x7DEF0723L},{0x7DEF0723L},{0x7DEF0723L},{0x7DEF0723L},{0x7DEF0723L},{0x7DEF0723L},{0x7DEF0723L}};
                uint16_t l_1189 = 0xADF2L;
                int i, j, k;
                l_1064 = (safe_mod_func_uint32_t_u_u((safe_add_func_int32_t_s_s((safe_mul_func_int8_t_s_s(p_1402->g_12[(p_24 + 2)][p_24][p_1402->g_537.f0.f8], ((((safe_rshift_func_int8_t_s_u(1L, ((+((l_38[(p_24 + 2)][p_24][(p_1402->g_34 + 3)] = ((safe_add_func_uint16_t_u_u(l_1017[0], 7L)) && ((safe_rshift_func_uint16_t_u_s((((((safe_sub_func_int32_t_s_s(0x3C307764L, (safe_unary_minus_func_uint16_t_u(((*p_1402->g_247) = GROUP_DIVERGE(1, 1)))))) ^ (safe_rshift_func_int16_t_s_s((-1L), 6))) , (p_24 > ((l_1083 = (**p_1402->g_88)) && l_38[3][0][1]))) , l_1084[0][3]) , 0x486FL), p_23)) , p_24))) < p_24)) , l_1064))) , 1L) , l_1084[0][3].f0) && FAKE_DIVERGE(p_1402->global_1_offset, get_global_id(1), 10)))), l_1084[0][3].f0)), l_1084[0][3].f0));
            }
            if ((((safe_rshift_func_uint8_t_u_s((0x4DA27034897192D2L < ((safe_sub_func_uint64_t_u_u(((safe_add_func_uint64_t_u_u(((safe_unary_minus_func_int64_t_s((&p_1402->g_118 != &p_1402->g_118))) , (((safe_rshift_func_uint16_t_u_u(((safe_rshift_func_int8_t_s_s((((p_23 | (safe_mod_func_int8_t_s_s(((!GROUP_DIVERGE(0, 1)) <= ((0x05L <= (safe_sub_func_int32_t_s_s((p_23 < (safe_rshift_func_int8_t_s_s(l_1185, (p_23 >= (l_1186 <= p_23))))), p_24))) < p_23)), 0x72L))) >= p_1402->g_772.f8) < l_1017[1]), 3)) & 0x6A7D1A44D72A27D3L), p_23)) == 1UL) ^ 0x3EL)), GROUP_DIVERGE(1, 1))) >= 0x62L), p_1402->g_764.f3)) != p_24)), 1)) & 0x75C7L) != p_24))
            { /* block id: 640 */
                if ((**p_1402->g_286))
                    break;
                return p_1402->g_813.f0.f4;
            }
            else
            { /* block id: 643 */
                uint32_t *l_1226 = &p_1402->g_1112.f0.f7;
                int32_t l_1230 = (-1L);
                l_1020 &= ((safe_div_func_uint16_t_u_u((safe_div_func_uint32_t_u_u(7UL, (((p_1402->g_1217 , (((-1L) || (((safe_sub_func_uint64_t_u_u(((p_1402->g_252 = (l_1230 = (((*p_1402->g_247) = (safe_sub_func_uint32_t_u_u((((+(l_1017[1] ^= l_1185)) == (safe_div_func_int32_t_s_s(((FAKE_DIVERGE(p_1402->local_0_offset, get_local_id(0), 10) > l_1187) & p_23), (safe_mod_func_int32_t_s_s((!(0x4DCA310CL != (++(*l_1226)))), GROUP_DIVERGE(0, 1)))))) | ((l_1084[0][1] , (**l_1145)) , p_23)), l_1229))) && 0x0C83L))) | p_23), p_1402->g_472.f1)) > p_23) != p_1402->g_295[3])) && p_24)) & 18446744073709551615UL) || p_24))), l_1231)) ^ l_1165);
                (*p_1402->g_555) = (*p_1402->g_286);
            }
            return l_1232;
        }
    }
    for (p_1402->g_774.f5 = 12; (p_1402->g_774.f5 == 18); p_1402->g_774.f5 = safe_add_func_uint16_t_u_u(p_1402->g_774.f5, 7))
    { /* block id: 657 */
        if ((*p_1402->g_89))
            break;
    }
    return (**l_1145);
}


/* ------------------------------------------ */
/* 
 * reads : p_1402->g_3 p_1402->g_78 p_1402->g_79 p_1402->g_78.f1 p_1402->g_88 p_1402->g_89 p_1402->g_12 p_1402->g_78.f0.f5 p_1402->g_109 p_1402->g_115 p_1402->g_118 p_1402->g_79.f0.f7 p_1402->g_13 p_1402->g_127 p_1402->g_127.f0.f2 p_1402->g_151 p_1402->g_34 p_1402->g_43.f0 p_1402->g_173 p_1402->g_152 p_1402->g_14 p_1402->g_43.f1.f8 p_1402->g_249 p_1402->g_214 p_1402->g_252 p_1402->g_264 p_1402->g_325 p_1402->g_127.f0.f6 p_1402->g_331 p_1402->g_127.f0.f7 p_1402->g_247 p_1402->g_325.f0 p_1402->g_296 p_1402->g_363 p_1402->g_286 p_1402->g_287 p_1402->g_393 p_1402->g_405 p_1402->g_419 p_1402->g_423 p_1402->g_79.f0.f5 p_1402->g_219.f2 p_1402->g_393.f0 p_1402->g_471 p_1402->g_472 p_1402->g_477 p_1402->g_403 p_1402->g_499 p_1402->g_520 p_1402->g_521 p_1402->g_522 p_1402->g_524 p_1402->g_537 p_1402->g_537.f0.f8 p_1402->g_127.f0.f8 p_1402->g_554 p_1402->g_420 p_1402->g_421 p_1402->g_422 p_1402->g_558 p_1402->g_537.f0.f5 p_1402->g_523 p_1402->g_745 p_1402->g_760 p_1402->g_764 p_1402->g_767 p_1402->g_772 p_1402->g_724 p_1402->g_887 p_1402->g_650 p_1402->g_651 p_1402->g_652 p_1402->g_295 p_1402->g_898 p_1402->g_901 p_1402->g_902 p_1402->g_798.f0 p_1402->g_558.f0.f8 p_1402->g_555 p_1402->g_798.f1.f5 p_1402->g_950 p_1402->g_951 p_1402->g_813.f0.f4 p_1402->g_127.f0.f9 p_1402->g_774.f7 p_1402->g_774 p_1402->g_991 p_1402->g_995 p_1402->g_951.f0.f3 p_1402->g_1003
 * writes: p_1402->g_78.f1 p_1402->g_89 p_1402->g_43.f1.f8 p_1402->g_78.f0.f5 p_1402->g_109 p_1402->g_115 p_1402->g_118 p_1402->g_43.f0 p_1402->g_173 p_1402->g_214 p_1402->g_247 p_1402->g_252 p_1402->g_43.f4 p_1402->g_264 p_1402->g_296 p_1402->g_205 p_1402->g_363 p_1402->g_409 p_1402->g_423 p_1402->g_393.f1.f5 p_1402->g_43.f1.f7 p_1402->g_403 p_1402->g_472 p_1402->g_502 p_1402->g_219 p_1402->g_522 p_1402->g_560 p_1402->g_774 p_1402->g_772.f7 p_1402->g_537.f0.f5 p_1402->g_78.f0.f0 p_1402->g_649.f0.f8 p_1402->g_724 p_1402->g_78.f0.f8 p_1402->g_898 p_1402->g_12 p_1402->g_760 p_1402->g_798.f1.f5 p_1402->g_78.f0 p_1402->g_995
 */
int32_t * func_40(int32_t  p_41, uint64_t  p_42, struct S5 * p_1402)
{ /* block id: 34 */
    int32_t *l_50 = &p_1402->g_3;
    int64_t *l_59 = &p_1402->g_34;
    int32_t *l_82 = &p_1402->g_43.f1.f8;
    int32_t *l_83 = &p_1402->g_43.f1.f8;
    int32_t *l_84 = &p_1402->g_43.f1.f8;
    int32_t l_85 = (-6L);
    int32_t *l_1004[6] = {&p_1402->g_1005,&p_1402->g_1005,&p_1402->g_1005,&p_1402->g_1005,&p_1402->g_1005,&p_1402->g_1005};
    int8_t l_1006[3];
    int i;
    for (i = 0; i < 3; i++)
        l_1006[i] = 0x43L;
    l_1006[0] |= (func_45(l_50, l_50, func_51(func_54(((((void*)0 != l_59) <= ((func_60(func_66((safe_mul_func_int16_t_s_s((*l_50), (func_70(func_75(l_50, ((l_85 &= (p_1402->g_78 , ((p_1402->g_79 , (safe_mod_func_int64_t_s_s(0x293D2D6DA1B12C12L, 0x5F469F5ED801979DL))) <= 0x62E6BC3FL))) >= p_42), p_1402), p_1402->g_12[0][1][1], &p_1402->g_34, &p_1402->g_34, p_1402) , p_1402->g_760))), p_1402), p_42, p_1402->g_798.f0, p_1402->g_558.f0.f8, l_84, p_1402) | (*l_50)) || 0x02L)) == p_41), p_1402->g_295[3], l_84, p_41, p_1402), l_59, p_1402), p_41, p_1402) , 7L);
    (*p_1402->g_331) = ((*l_83) = p_41);
    return (*p_1402->g_555);
}


/* ------------------------------------------ */
/* 
 * reads : p_1402->g_1003
 * writes:
 */
union U3  func_45(int32_t * p_46, int32_t * p_47, int64_t * p_48, int32_t  p_49, struct S5 * p_1402)
{ /* block id: 533 */
    return p_1402->g_1003;
}


/* ------------------------------------------ */
/* 
 * reads : p_1402->g_995 p_1402->g_951.f0.f3
 * writes: p_1402->g_995
 */
int64_t * func_51(int32_t * p_52, int64_t * p_53, struct S5 * p_1402)
{ /* block id: 529 */
    int8_t **l_994 = &p_1402->g_283;
    int8_t ***l_993 = &l_994;
    int8_t ****l_997 = &p_1402->g_995;
    int32_t l_998 = 0x6B66386DL;
    uint64_t *l_1001 = (void*)0;
    int32_t *l_1002 = &l_998;
    (*l_1002) = (((((l_993 != ((*l_997) = p_1402->g_995)) , (~0x2892D7574D4E5328L)) , (((&l_993 != (void*)0) >= (((!(l_998 | p_1402->g_951.f0.f3)) == (safe_lshift_func_int8_t_s_s((((((void*)0 == l_1001) && 0x66D5L) <= l_998) , l_998), 0))) && 0x157CL)) && l_998)) != 0x5C18L) & l_998);
    return p_53;
}


/* ------------------------------------------ */
/* 
 * reads : p_1402->g_950 p_1402->g_951 p_1402->g_247 p_1402->g_724 p_1402->g_89 p_1402->g_296 p_1402->g_3 p_1402->g_13 p_1402->g_813.f0.f4 p_1402->g_523 p_1402->g_520.f1 p_1402->g_555 p_1402->g_127.f0.f9 p_1402->g_12 p_1402->g_537.f0.f8 p_1402->g_109 p_1402->g_774.f7 p_1402->g_286 p_1402->g_287 p_1402->g_902 p_1402->g_774 p_1402->g_991 p_1402->g_772.f8
 * writes: p_1402->g_109 p_1402->g_89 p_1402->g_12 p_1402->g_78.f0
 */
int32_t * func_54(uint32_t  p_55, int32_t  p_56, int32_t * p_57, int32_t  p_58, struct S5 * p_1402)
{ /* block id: 515 */
    int8_t l_960 = 0x15L;
    int32_t l_990 = 4L;
    if ((+((p_1402->g_950 , p_1402->g_951) , (safe_rshift_func_uint8_t_u_u(((safe_div_func_uint64_t_u_u(((~(safe_lshift_func_uint16_t_u_u(((*p_1402->g_247) = 0xA54BL), 12))) , (safe_add_func_int32_t_s_s(((p_1402->g_724 > l_960) && 0x746BL), ((safe_mul_func_uint8_t_u_u(((safe_rshift_func_int16_t_s_u(0x0EA2L, (safe_lshift_func_uint8_t_u_u((safe_lshift_func_int16_t_s_u((safe_add_func_int32_t_s_s((*p_1402->g_89), ((safe_mul_func_int16_t_s_s((p_55 <= l_960), l_960)) , p_55))), 11)), GROUP_DIVERGE(1, 1))))) && p_1402->g_813.f0.f4), l_960)) || (*p_1402->g_523))))), l_960)) != p_55), 3)))))
    { /* block id: 517 */
        uint64_t *l_977 = &p_1402->g_12[0][1][1];
        int32_t l_986 = 0x3E34D5A8L;
        int32_t *l_987 = (void*)0;
        int32_t l_988[1][3][10] = {{{(-1L),(-10L),(-1L),(-1L),(-10L),(-1L),(-1L),(-10L),(-1L),(-1L)},{(-1L),(-10L),(-1L),(-1L),(-10L),(-1L),(-1L),(-10L),(-1L),(-1L)},{(-1L),(-10L),(-1L),(-1L),(-10L),(-1L),(-1L),(-10L),(-1L),(-1L)}}};
        int32_t ***l_989 = (void*)0;
        int i, j, k;
        (*p_1402->g_555) = p_57;
        l_988[0][2][0] &= ((safe_lshift_func_int8_t_s_u((((safe_mul_func_int8_t_s_s((&p_1402->g_403 == p_57), (3UL | p_1402->g_127.f0.f9))) | ((((*l_977)--) < 18446744073709551615UL) , ((0xD2L >= (p_56 | (((((*l_977) &= (safe_add_func_uint32_t_u_u((safe_mul_func_uint8_t_u_u(0x06L, ((GROUP_DIVERGE(0, 1) , (safe_mod_func_int16_t_s_s((((((p_1402->g_537.f0.f8 && 1UL) && p_56) | l_986) ^ l_960) , p_58), 0x6A51L))) || p_58))), 1L))) > p_56) ^ (*p_1402->g_247)) , 18446744073709551609UL))) > p_1402->g_774.f7))) & GROUP_DIVERGE(0, 1)), 2)) & 4L);
        l_990 ^= (l_989 == &p_1402->g_555);
        return (*p_1402->g_286);
    }
    else
    { /* block id: 524 */
        uint32_t l_992 = 1UL;
        (*p_1402->g_991) = (*p_1402->g_902);
        l_992 ^= l_990;
        return p_57;
    }
}


/* ------------------------------------------ */
/* 
 * reads : p_1402->g_555 p_1402->g_89 p_1402->g_760 p_1402->g_331 p_1402->g_88 p_1402->g_78.f1 p_1402->g_296 p_1402->g_3 p_1402->g_13 p_1402->g_798.f1.f5
 * writes: p_1402->g_12 p_1402->g_760 p_1402->g_78.f1 p_1402->g_89 p_1402->g_43.f1.f8 p_1402->g_798.f1.f5
 */
uint32_t  func_60(int64_t * p_61, uint64_t  p_62, uint32_t  p_63, uint16_t  p_64, int32_t * p_65, struct S5 * p_1402)
{ /* block id: 503 */
    uint64_t *l_935 = &p_1402->g_12[7][0][0];
    int32_t l_936[6] = {0x36A35B6EL,0x4F53A880L,0x36A35B6EL,0x36A35B6EL,0x4F53A880L,0x36A35B6EL};
    uint64_t *l_937 = &p_1402->g_760;
    uint32_t *l_940 = &p_1402->g_325[0].f0;
    int32_t ***l_941 = &p_1402->g_555;
    int i;
    (**l_941) = func_75((*p_1402->g_555), ((!((safe_sub_func_int32_t_s_s((~(safe_sub_func_uint64_t_u_u(((*l_935) = p_64), (++(*l_937))))), ((void*)0 != &p_1402->g_695[0]))) != ((l_940 == p_1402->g_331) > (p_64 && ((void*)0 != l_941))))) , 0x52L), p_1402);
    for (p_1402->g_798.f1.f5 = 0; (p_1402->g_798.f1.f5 >= (-22)); p_1402->g_798.f1.f5 = safe_sub_func_int8_t_s_s(p_1402->g_798.f1.f5, 4))
    { /* block id: 509 */
        int32_t *l_946 = &p_1402->g_43.f1.f8;
        int32_t *l_947[7][9][1] = {{{&p_1402->g_558.f0.f8},{&p_1402->g_558.f0.f8},{&p_1402->g_558.f0.f8},{&p_1402->g_558.f0.f8},{&p_1402->g_558.f0.f8},{&p_1402->g_558.f0.f8},{&p_1402->g_558.f0.f8},{&p_1402->g_558.f0.f8},{&p_1402->g_558.f0.f8}},{{&p_1402->g_558.f0.f8},{&p_1402->g_558.f0.f8},{&p_1402->g_558.f0.f8},{&p_1402->g_558.f0.f8},{&p_1402->g_558.f0.f8},{&p_1402->g_558.f0.f8},{&p_1402->g_558.f0.f8},{&p_1402->g_558.f0.f8},{&p_1402->g_558.f0.f8}},{{&p_1402->g_558.f0.f8},{&p_1402->g_558.f0.f8},{&p_1402->g_558.f0.f8},{&p_1402->g_558.f0.f8},{&p_1402->g_558.f0.f8},{&p_1402->g_558.f0.f8},{&p_1402->g_558.f0.f8},{&p_1402->g_558.f0.f8},{&p_1402->g_558.f0.f8}},{{&p_1402->g_558.f0.f8},{&p_1402->g_558.f0.f8},{&p_1402->g_558.f0.f8},{&p_1402->g_558.f0.f8},{&p_1402->g_558.f0.f8},{&p_1402->g_558.f0.f8},{&p_1402->g_558.f0.f8},{&p_1402->g_558.f0.f8},{&p_1402->g_558.f0.f8}},{{&p_1402->g_558.f0.f8},{&p_1402->g_558.f0.f8},{&p_1402->g_558.f0.f8},{&p_1402->g_558.f0.f8},{&p_1402->g_558.f0.f8},{&p_1402->g_558.f0.f8},{&p_1402->g_558.f0.f8},{&p_1402->g_558.f0.f8},{&p_1402->g_558.f0.f8}},{{&p_1402->g_558.f0.f8},{&p_1402->g_558.f0.f8},{&p_1402->g_558.f0.f8},{&p_1402->g_558.f0.f8},{&p_1402->g_558.f0.f8},{&p_1402->g_558.f0.f8},{&p_1402->g_558.f0.f8},{&p_1402->g_558.f0.f8},{&p_1402->g_558.f0.f8}},{{&p_1402->g_558.f0.f8},{&p_1402->g_558.f0.f8},{&p_1402->g_558.f0.f8},{&p_1402->g_558.f0.f8},{&p_1402->g_558.f0.f8},{&p_1402->g_558.f0.f8},{&p_1402->g_558.f0.f8},{&p_1402->g_558.f0.f8},{&p_1402->g_558.f0.f8}}};
        int i, j, k;
        (*l_946) = (safe_mod_func_int32_t_s_s((l_936[5] |= (***l_941)), (safe_lshift_func_uint8_t_u_u(p_64, p_62))));
        (**l_941) = (*p_1402->g_555);
    }
    return (***l_941);
}


/* ------------------------------------------ */
/* 
 * reads : p_1402->g_287 p_1402->g_3 p_1402->g_764 p_1402->g_767 p_1402->g_772 p_1402->g_471 p_1402->g_296 p_1402->g_537.f0.f5 p_1402->g_724 p_1402->g_887 p_1402->g_650 p_1402->g_651 p_1402->g_652 p_1402->g_295 p_1402->g_898 p_1402->g_901 p_1402->g_902 l_1322 p_1402->g_13
 * writes: p_1402->g_472 p_1402->g_774 p_1402->g_296 p_1402->g_772.f7 p_1402->g_537.f0.f5 p_1402->g_78.f0.f0 p_1402->g_649.f0.f8 p_1402->g_724 p_1402->g_78.f0.f8 p_1402->g_898
 */
int64_t * func_66(uint16_t  p_67, struct S5 * p_1402)
{ /* block id: 419 */
    uint32_t l_761 = 0xDF89C461L;
    int32_t **l_768[1][9] = {{&p_1402->g_287,&p_1402->g_287,&p_1402->g_287,&p_1402->g_287,&p_1402->g_287,&p_1402->g_287,&p_1402->g_287,&p_1402->g_287,&p_1402->g_287}};
    int16_t ***l_771 = (void*)0;
    uint8_t **l_810 = (void*)0;
    int32_t l_828[7][7] = {{0x411A6BC9L,0x23368C88L,0x17D570C4L,8L,0x17D570C4L,0x23368C88L,0x411A6BC9L},{0x411A6BC9L,0x23368C88L,0x17D570C4L,8L,0x17D570C4L,0x23368C88L,0x411A6BC9L},{0x411A6BC9L,0x23368C88L,0x17D570C4L,8L,0x17D570C4L,0x23368C88L,0x411A6BC9L},{0x411A6BC9L,0x23368C88L,0x17D570C4L,8L,0x17D570C4L,0x23368C88L,0x411A6BC9L},{0x411A6BC9L,0x23368C88L,0x17D570C4L,8L,0x17D570C4L,0x23368C88L,0x411A6BC9L},{0x411A6BC9L,0x23368C88L,0x17D570C4L,8L,0x17D570C4L,0x23368C88L,0x411A6BC9L},{0x411A6BC9L,0x23368C88L,0x17D570C4L,8L,0x17D570C4L,0x23368C88L,0x411A6BC9L}};
    int32_t l_877 = 0L;
    int64_t l_880 = (-9L);
    int32_t l_897[9][7][1] = {{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}},{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}},{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}},{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}},{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}},{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}},{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}},{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}},{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}}};
    union U3 *l_928 = &p_1402->g_652;
    int i, j, k;
    l_761 = (*p_1402->g_287);
    for (p_67 = 19; (p_67 == 54); ++p_67)
    { /* block id: 423 */
        int32_t **l_769 = &p_1402->g_89;
        int32_t l_770 = (-7L);
        struct S0 *l_773[8] = {&p_1402->g_772,&p_1402->g_772,&p_1402->g_772,&p_1402->g_772,&p_1402->g_772,&p_1402->g_772,&p_1402->g_772,&p_1402->g_772};
        int i;
        (*p_1402->g_767) = p_1402->g_764;
        p_1402->g_774 = ((((l_768[0][8] == l_769) || p_67) , (l_770 <= (l_771 == (void*)0))) , p_1402->g_772);
        (*p_1402->g_471) ^= 0x03E27DA3L;
    }
    for (p_1402->g_772.f7 = 0; (p_1402->g_772.f7 <= 24); p_1402->g_772.f7 = safe_add_func_int8_t_s_s(p_1402->g_772.f7, 3))
    { /* block id: 430 */
        int16_t *l_779[2];
        int32_t l_782[3][9][9] = {{{(-1L),(-8L),0x1FB01AD6L,0x20CE03EAL,(-1L),0x52D46A1EL,0x2C3577B1L,8L,0x7785EC71L},{(-1L),(-8L),0x1FB01AD6L,0x20CE03EAL,(-1L),0x52D46A1EL,0x2C3577B1L,8L,0x7785EC71L},{(-1L),(-8L),0x1FB01AD6L,0x20CE03EAL,(-1L),0x52D46A1EL,0x2C3577B1L,8L,0x7785EC71L},{(-1L),(-8L),0x1FB01AD6L,0x20CE03EAL,(-1L),0x52D46A1EL,0x2C3577B1L,8L,0x7785EC71L},{(-1L),(-8L),0x1FB01AD6L,0x20CE03EAL,(-1L),0x52D46A1EL,0x2C3577B1L,8L,0x7785EC71L},{(-1L),(-8L),0x1FB01AD6L,0x20CE03EAL,(-1L),0x52D46A1EL,0x2C3577B1L,8L,0x7785EC71L},{(-1L),(-8L),0x1FB01AD6L,0x20CE03EAL,(-1L),0x52D46A1EL,0x2C3577B1L,8L,0x7785EC71L},{(-1L),(-8L),0x1FB01AD6L,0x20CE03EAL,(-1L),0x52D46A1EL,0x2C3577B1L,8L,0x7785EC71L},{(-1L),(-8L),0x1FB01AD6L,0x20CE03EAL,(-1L),0x52D46A1EL,0x2C3577B1L,8L,0x7785EC71L}},{{(-1L),(-8L),0x1FB01AD6L,0x20CE03EAL,(-1L),0x52D46A1EL,0x2C3577B1L,8L,0x7785EC71L},{(-1L),(-8L),0x1FB01AD6L,0x20CE03EAL,(-1L),0x52D46A1EL,0x2C3577B1L,8L,0x7785EC71L},{(-1L),(-8L),0x1FB01AD6L,0x20CE03EAL,(-1L),0x52D46A1EL,0x2C3577B1L,8L,0x7785EC71L},{(-1L),(-8L),0x1FB01AD6L,0x20CE03EAL,(-1L),0x52D46A1EL,0x2C3577B1L,8L,0x7785EC71L},{(-1L),(-8L),0x1FB01AD6L,0x20CE03EAL,(-1L),0x52D46A1EL,0x2C3577B1L,8L,0x7785EC71L},{(-1L),(-8L),0x1FB01AD6L,0x20CE03EAL,(-1L),0x52D46A1EL,0x2C3577B1L,8L,0x7785EC71L},{(-1L),(-8L),0x1FB01AD6L,0x20CE03EAL,(-1L),0x52D46A1EL,0x2C3577B1L,8L,0x7785EC71L},{(-1L),(-8L),0x1FB01AD6L,0x20CE03EAL,(-1L),0x52D46A1EL,0x2C3577B1L,8L,0x7785EC71L},{(-1L),(-8L),0x1FB01AD6L,0x20CE03EAL,(-1L),0x52D46A1EL,0x2C3577B1L,8L,0x7785EC71L}},{{(-1L),(-8L),0x1FB01AD6L,0x20CE03EAL,(-1L),0x52D46A1EL,0x2C3577B1L,8L,0x7785EC71L},{(-1L),(-8L),0x1FB01AD6L,0x20CE03EAL,(-1L),0x52D46A1EL,0x2C3577B1L,8L,0x7785EC71L},{(-1L),(-8L),0x1FB01AD6L,0x20CE03EAL,(-1L),0x52D46A1EL,0x2C3577B1L,8L,0x7785EC71L},{(-1L),(-8L),0x1FB01AD6L,0x20CE03EAL,(-1L),0x52D46A1EL,0x2C3577B1L,8L,0x7785EC71L},{(-1L),(-8L),0x1FB01AD6L,0x20CE03EAL,(-1L),0x52D46A1EL,0x2C3577B1L,8L,0x7785EC71L},{(-1L),(-8L),0x1FB01AD6L,0x20CE03EAL,(-1L),0x52D46A1EL,0x2C3577B1L,8L,0x7785EC71L},{(-1L),(-8L),0x1FB01AD6L,0x20CE03EAL,(-1L),0x52D46A1EL,0x2C3577B1L,8L,0x7785EC71L},{(-1L),(-8L),0x1FB01AD6L,0x20CE03EAL,(-1L),0x52D46A1EL,0x2C3577B1L,8L,0x7785EC71L},{(-1L),(-8L),0x1FB01AD6L,0x20CE03EAL,(-1L),0x52D46A1EL,0x2C3577B1L,8L,0x7785EC71L}}};
        uint64_t *l_791 = &p_1402->g_12[0][1][1];
        union U4 *l_797 = &p_1402->g_798;
        union U4 *l_800 = &p_1402->g_798;
        union U4 **l_799 = &l_800;
        int32_t l_811 = 1L;
        uint16_t l_812 = 0x123DL;
        union U2 l_845 = {2UL};
        int i, j, k;
        for (i = 0; i < 2; i++)
            l_779[i] = &p_1402->g_43.f4;
        (1 + 1);
    }
    for (p_1402->g_537.f0.f5 = 0; (p_1402->g_537.f0.f5 <= 2); p_1402->g_537.f0.f5 += 1)
    { /* block id: 460 */
        uint8_t l_862 = 2UL;
        int32_t l_865 = 3L;
        int32_t l_868 = 0x57C7D1ACL;
        int32_t l_869 = 0x12B4828DL;
        int32_t l_870 = 0x39F664FEL;
        int32_t l_872 = 0x21E03533L;
        int32_t l_874 = 0L;
        int32_t l_875[7][5] = {{0x2276F892L,2L,0x43281D72L,2L,0x2276F892L},{0x2276F892L,2L,0x43281D72L,2L,0x2276F892L},{0x2276F892L,2L,0x43281D72L,2L,0x2276F892L},{0x2276F892L,2L,0x43281D72L,2L,0x2276F892L},{0x2276F892L,2L,0x43281D72L,2L,0x2276F892L},{0x2276F892L,2L,0x43281D72L,2L,0x2276F892L},{0x2276F892L,2L,0x43281D72L,2L,0x2276F892L}};
        uint32_t l_907[5][1];
        int64_t *l_910 = &p_1402->g_252;
        int32_t *l_927 = &l_868;
        int i, j;
        for (i = 0; i < 5; i++)
        {
            for (j = 0; j < 1; j++)
                l_907[i][j] = 4294967295UL;
        }
        for (p_1402->g_78.f0.f0 = 0; p_1402->g_78.f0.f0 < 1; p_1402->g_78.f0.f0 += 1)
        {
            for (p_1402->g_649.f0.f8 = 0; p_1402->g_649.f0.f8 < 9; p_1402->g_649.f0.f8 += 1)
            {
                l_768[p_1402->g_78.f0.f0][p_1402->g_649.f0.f8] = &p_1402->g_89;
            }
        }
        for (p_1402->g_724 = 0; (p_1402->g_724 <= 2); p_1402->g_724 += 1)
        { /* block id: 464 */
            int32_t l_866 = 0x692512F1L;
            int32_t l_867 = 1L;
            int32_t l_871 = 0x3FEA7C48L;
            int32_t l_873 = 0x1CA148D4L;
            int32_t l_876 = 0L;
            int32_t l_878 = (-1L);
            int32_t l_879[3];
            uint64_t l_881[9] = {0x19B04218D10EEB9FL,0x53C9288579B4AF92L,0x19B04218D10EEB9FL,0x19B04218D10EEB9FL,0x53C9288579B4AF92L,0x19B04218D10EEB9FL,0x19B04218D10EEB9FL,0x53C9288579B4AF92L,0x19B04218D10EEB9FL};
            union U4 *l_903 = &p_1402->g_43;
            int64_t *l_930 = &p_1402->g_34;
            int i, j;
            for (i = 0; i < 3; i++)
                l_879[i] = (-4L);
            l_862--;
            ++l_881[6];
            if (l_828[(p_1402->g_537.f0.f5 + 2)][(p_1402->g_537.f0.f5 + 2)])
            { /* block id: 467 */
                uint8_t l_888 = 6UL;
                int32_t l_891 = 0x49A38707L;
                union U4 *l_905 = &p_1402->g_798;
                if (((((void*)0 == &p_1402->g_651) >= (safe_unary_minus_func_uint32_t_u(p_1402->g_887))) == (((l_888 = ((**p_1402->g_650) , (-6L))) | (l_865 & (p_67 | 0x0804084CL))) , ((void*)0 != l_810))))
                { /* block id: 469 */
                    int32_t l_889 = (-1L);
                    int32_t l_890 = 0x785258F2L;
                    uint32_t l_893[4] = {0x0C85D750L,0x0C85D750L,0x0C85D750L,0x0C85D750L};
                    int i;
                    for (p_1402->g_78.f0.f8 = 0; (p_1402->g_78.f0.f8 <= 2); p_1402->g_78.f0.f8 += 1)
                    { /* block id: 472 */
                        int32_t l_892 = 3L;
                        int64_t l_896[9] = {(-7L),(-7L),(-7L),(-7L),(-7L),(-7L),(-7L),(-7L),(-7L)};
                        int i;
                        if (p_1402->g_295[(p_1402->g_537.f0.f5 + 6)])
                            break;
                        l_893[1]--;
                        l_897[8][4][0] = (l_896[3] &= p_67);
                    }
                    if (l_871)
                        continue;
                    --p_1402->g_898;
                }
                else
                { /* block id: 480 */
                    union U4 **l_904[7] = {&l_903,&l_903,&l_903,&l_903,&l_903,&l_903,&l_903};
                    int32_t l_906[6];
                    int i;
                    for (i = 0; i < 6; i++)
                        l_906[i] = 1L;
                    (*p_1402->g_902) = p_1402->g_901;
                    l_905 = l_903;
                    l_907[3][0]--;
                    if (p_67)
                        break;
                }
                return l_910;
            }
            else
            { /* block id: 487 */
                l_868 &= ((safe_sub_func_uint32_t_u_u(FAKE_DIVERGE(p_1402->local_2_offset, get_local_id(2), 10), p_67)) || p_67);
            }
        }
    }
    return &p_1402->g_252;
}


/* ------------------------------------------ */
/* 
 * reads : p_1402->g_78.f0.f5 p_1402->g_109 p_1402->g_115 p_1402->g_118 p_1402->g_79.f0.f7 p_1402->g_3 p_1402->g_13 p_1402->g_127 p_1402->g_127.f0.f2 p_1402->g_151 p_1402->g_89 p_1402->g_34 p_1402->g_12 p_1402->g_43.f0 p_1402->g_173 p_1402->g_152 p_1402->g_14 p_1402->g_43.f1.f8 p_1402->g_88 p_1402->g_249 p_1402->g_214 p_1402->g_252 p_1402->g_264 p_1402->g_325 p_1402->g_127.f0.f6 p_1402->g_331 p_1402->g_127.f0.f7 p_1402->g_247 p_1402->g_325.f0 p_1402->g_296 p_1402->g_363 p_1402->g_286 p_1402->g_287 p_1402->g_393 p_1402->g_405 p_1402->g_419 p_1402->g_423 p_1402->g_78.f1 p_1402->g_79.f0.f5 p_1402->g_219.f2 p_1402->g_393.f0 p_1402->g_471 p_1402->g_472 p_1402->g_477 p_1402->g_403 p_1402->g_499 p_1402->g_520 p_1402->g_521 p_1402->g_522 p_1402->g_524 p_1402->g_537 p_1402->g_537.f0.f8 p_1402->g_127.f0.f8 p_1402->g_554 p_1402->g_420 p_1402->g_421 p_1402->g_422 p_1402->g_558 p_1402->g_537.f0.f5 p_1402->g_523 p_1402->g_745 l_1271 p_1402->g_772.f8 l_1322
 * writes: p_1402->g_78.f0.f5 p_1402->g_109 p_1402->g_115 p_1402->g_118 p_1402->g_43.f1.f8 p_1402->g_43.f0 p_1402->g_173 p_1402->g_214 p_1402->g_247 p_1402->g_252 p_1402->g_43.f4 p_1402->g_264 p_1402->g_89 p_1402->g_296 p_1402->g_205 p_1402->g_363 p_1402->g_409 p_1402->g_423 p_1402->g_393.f1.f5 p_1402->g_43.f1.f7 p_1402->g_403 p_1402->g_472 p_1402->g_502 p_1402->g_219 p_1402->g_522 p_1402->g_560
 */
int64_t  func_70(int32_t * p_71, int32_t  p_72, int64_t * p_73, int64_t * p_74, struct S5 * p_1402)
{ /* block id: 48 */
    int8_t l_105 = 1L;
    int32_t **l_133 = &p_1402->g_89;
    int32_t ***l_132 = &l_133;
    int32_t l_168 = (-1L);
    uint32_t l_176 = 4294967287UL;
    uint64_t l_206 = 0x5DA560F88FCEB201L;
    int8_t *l_211 = &p_1402->g_78.f1;
    uint16_t *l_246[9] = {&p_1402->g_109,&p_1402->g_109,&p_1402->g_109,&p_1402->g_109,&p_1402->g_109,&p_1402->g_109,&p_1402->g_109,&p_1402->g_109,&p_1402->g_109};
    int32_t l_294 = 9L;
    int32_t l_297 = 0x24C8CDCFL;
    int32_t l_303[9] = {(-9L),(-9L),(-9L),(-9L),(-9L),(-9L),(-9L),(-9L),(-9L)};
    int32_t l_481 = (-7L);
    uint32_t *l_485 = &p_1402->g_423;
    uint32_t *l_489 = (void*)0;
    uint32_t l_567 = 0x92DBC0ADL;
    int32_t ****l_662 = &p_1402->g_554[2];
    int16_t ****l_748 = (void*)0;
    int i;
    for (p_1402->g_78.f0.f5 = 4; (p_1402->g_78.f0.f5 >= 11); ++p_1402->g_78.f0.f5)
    { /* block id: 51 */
        uint16_t *l_108 = &p_1402->g_109;
        int32_t l_112 = 0x7310FB7AL;
        uint8_t *l_113 = (void*)0;
        uint8_t *l_114 = &p_1402->g_115[0][3];
        int32_t **l_248 = (void*)0;
        int32_t l_256[6][9] = {{7L,7L,7L,7L,7L,7L,7L,7L,7L},{7L,7L,7L,7L,7L,7L,7L,7L,7L},{7L,7L,7L,7L,7L,7L,7L,7L,7L},{7L,7L,7L,7L,7L,7L,7L,7L,7L},{7L,7L,7L,7L,7L,7L,7L,7L,7L},{7L,7L,7L,7L,7L,7L,7L,7L,7L}};
        int64_t l_306 = 0x61E20A6ADBB8262DL;
        uint64_t l_358 = 0x1FB62C209327271CL;
        uint64_t l_359 = 0UL;
        int32_t l_360[3];
        int32_t l_361 = 8L;
        int8_t *l_362 = &p_1402->g_205;
        int8_t **l_435 = &p_1402->g_283;
        uint64_t l_516 = 0x2BC0E8463A53635BL;
        int32_t ***l_557[9][2] = {{&l_133,&l_133},{&l_133,&l_133},{&l_133,&l_133},{&l_133,&l_133},{&l_133,&l_133},{&l_133,&l_133},{&l_133,&l_133},{&l_133,&l_133},{&l_133,&l_133}};
        uint16_t l_617 = 1UL;
        uint32_t ***l_669 = (void*)0;
        int32_t l_725[8];
        int i, j;
        for (i = 0; i < 3; i++)
            l_360[i] = 0x752205FFL;
        for (i = 0; i < 8; i++)
            l_725[i] = 9L;
        if ((safe_mul_func_int8_t_s_s((safe_sub_func_int64_t_s_s((p_72 && (safe_sub_func_int16_t_s_s(l_105, 0x7241L))), ((safe_lshift_func_int16_t_s_u(((p_1402->g_118 ^= (((--(*l_108)) , (l_112 == ((((*l_114) |= p_72) == (safe_rshift_func_uint8_t_u_u(p_72, 6))) || (((&p_1402->g_115[0][3] != &p_1402->g_115[0][3]) <= (0UL >= p_72)) ^ l_105)))) && 0x4AA6C347L)) <= 4L), 8)) , p_1402->g_79.f0.f7))), l_105)))
        { /* block id: 55 */
            int32_t ***l_128 = (void*)0;
            int32_t **l_129 = &p_1402->g_89;
            int32_t **l_130 = (void*)0;
            int32_t ***l_131 = &l_130;
            int32_t *l_136 = &p_1402->g_43.f1.f8;
            uint8_t **l_153 = (void*)0;
            uint8_t **l_154 = &l_113;
            int8_t *l_155 = &l_105;
            int32_t l_169[5][6][4] = {{{0x0E5E2DEFL,0x4FB355C9L,6L,0x44ECFE5FL},{0x0E5E2DEFL,0x4FB355C9L,6L,0x44ECFE5FL},{0x0E5E2DEFL,0x4FB355C9L,6L,0x44ECFE5FL},{0x0E5E2DEFL,0x4FB355C9L,6L,0x44ECFE5FL},{0x0E5E2DEFL,0x4FB355C9L,6L,0x44ECFE5FL},{0x0E5E2DEFL,0x4FB355C9L,6L,0x44ECFE5FL}},{{0x0E5E2DEFL,0x4FB355C9L,6L,0x44ECFE5FL},{0x0E5E2DEFL,0x4FB355C9L,6L,0x44ECFE5FL},{0x0E5E2DEFL,0x4FB355C9L,6L,0x44ECFE5FL},{0x0E5E2DEFL,0x4FB355C9L,6L,0x44ECFE5FL},{0x0E5E2DEFL,0x4FB355C9L,6L,0x44ECFE5FL},{0x0E5E2DEFL,0x4FB355C9L,6L,0x44ECFE5FL}},{{0x0E5E2DEFL,0x4FB355C9L,6L,0x44ECFE5FL},{0x0E5E2DEFL,0x4FB355C9L,6L,0x44ECFE5FL},{0x0E5E2DEFL,0x4FB355C9L,6L,0x44ECFE5FL},{0x0E5E2DEFL,0x4FB355C9L,6L,0x44ECFE5FL},{0x0E5E2DEFL,0x4FB355C9L,6L,0x44ECFE5FL},{0x0E5E2DEFL,0x4FB355C9L,6L,0x44ECFE5FL}},{{0x0E5E2DEFL,0x4FB355C9L,6L,0x44ECFE5FL},{0x0E5E2DEFL,0x4FB355C9L,6L,0x44ECFE5FL},{0x0E5E2DEFL,0x4FB355C9L,6L,0x44ECFE5FL},{0x0E5E2DEFL,0x4FB355C9L,6L,0x44ECFE5FL},{0x0E5E2DEFL,0x4FB355C9L,6L,0x44ECFE5FL},{0x0E5E2DEFL,0x4FB355C9L,6L,0x44ECFE5FL}},{{0x0E5E2DEFL,0x4FB355C9L,6L,0x44ECFE5FL},{0x0E5E2DEFL,0x4FB355C9L,6L,0x44ECFE5FL},{0x0E5E2DEFL,0x4FB355C9L,6L,0x44ECFE5FL},{0x0E5E2DEFL,0x4FB355C9L,6L,0x44ECFE5FL},{0x0E5E2DEFL,0x4FB355C9L,6L,0x44ECFE5FL},{0x0E5E2DEFL,0x4FB355C9L,6L,0x44ECFE5FL}}};
            int i, j, k;
            if ((*p_71))
                break;
            (*l_136) = (safe_add_func_uint8_t_u_u(((~(safe_sub_func_uint16_t_u_u((safe_rshift_func_int16_t_s_u((p_72 <= ((p_1402->g_127 , (l_129 = &p_1402->g_89)) == ((*l_131) = l_130))), 10)), p_72))) , ((l_132 != (void*)0) < (l_112 = ((-3L) & (safe_lshift_func_uint16_t_u_s(l_112, p_72)))))), p_1402->g_118));
            if ((((*l_155) = (safe_add_func_int8_t_s_s((p_72 <= (safe_add_func_int8_t_s_s((safe_lshift_func_int16_t_s_s(l_112, ((p_1402->g_13 >= (((safe_sub_func_uint64_t_u_u(((((*l_114) = (safe_mul_func_uint16_t_u_u((p_1402->g_109 = p_72), p_72))) ^ p_1402->g_127.f0.f2) == (safe_sub_func_uint64_t_u_u((safe_rshift_func_int8_t_s_u((l_112 | (((((p_1402->g_151 != ((*l_154) = l_114)) <= 0x527B815EE981B57BL) != p_72) , (-10L)) && 1UL)), 0)), p_1402->g_13))), (-8L))) , (**l_133)) || l_112)) != 0UL))), p_1402->g_34))), p_1402->g_12[0][1][1]))) ^ p_72))
            { /* block id: 65 */
                int32_t *l_156 = &p_1402->g_43.f1.f8;
                int32_t *l_157 = &l_112;
                int32_t l_167 = 1L;
                int32_t l_170 = 0x5F879EAAL;
                int32_t l_171 = 0x3D064BBAL;
                int32_t l_172 = 0x370BDD84L;
                if ((***l_132))
                    break;
                (*l_157) &= 0L;
                for (p_1402->g_43.f0 = 0; (p_1402->g_43.f0 <= 43); ++p_1402->g_43.f0)
                { /* block id: 70 */
                    int32_t *l_160 = &l_112;
                    int32_t *l_161 = &l_112;
                    int32_t *l_162 = &l_112;
                    int32_t *l_163 = &l_112;
                    int32_t *l_164 = (void*)0;
                    int32_t *l_165 = &l_112;
                    int32_t *l_166[1];
                    int i;
                    for (i = 0; i < 1; i++)
                        l_166[i] = &l_112;
                    p_1402->g_173--;
                    --l_176;
                }
                for (p_1402->g_118 = (-11); (p_1402->g_118 <= 52); p_1402->g_118++)
                { /* block id: 76 */
                    int64_t l_199 = 0x454C0729605C3BE2L;
                    int32_t l_212 = (-9L);
                    for (p_1402->g_43.f0 = (-7); (p_1402->g_43.f0 >= 56); p_1402->g_43.f0++)
                    { /* block id: 79 */
                        int8_t *l_204[3];
                        int32_t l_213[7][2] = {{4L,4L},{4L,4L},{4L,4L},{4L,4L},{4L,4L},{4L,4L},{4L,4L}};
                        int i, j;
                        for (i = 0; i < 3; i++)
                            l_204[i] = &p_1402->g_205;
                        (*l_157) = (*l_157);
                        p_1402->g_214[1][0] = (l_168 = (safe_rshift_func_uint8_t_u_u((0x65D7B44CL == ((safe_div_func_uint8_t_u_u(0xDDL, (safe_sub_func_uint32_t_u_u(0x3D5C9858L, ((*p_73) < (safe_rshift_func_uint8_t_u_u(((**l_154) = ((safe_sub_func_uint32_t_u_u(((safe_mul_func_int8_t_s_s((safe_mul_func_uint8_t_u_u((*p_1402->g_151), (**l_133))), ((safe_mul_func_int8_t_s_s(((l_199 >= ((safe_lshift_func_uint16_t_u_u((safe_add_func_int8_t_s_s((l_206 ^= ((*l_155) &= p_72)), (l_212 = (safe_mod_func_uint32_t_u_u(((((safe_mul_func_int16_t_s_s((0x95L || p_72), p_72)) != (*p_73)) , l_211) != &p_1402->g_205), (-6L)))))), 10)) < l_213[3][0])) | p_72), p_72)) <= (*p_71)))) <= (-3L)), (*p_1402->g_89))) > FAKE_DIVERGE(p_1402->local_0_offset, get_local_id(0), 10))), p_1402->g_14))))))) >= p_1402->g_43.f0)), (***l_132))));
                    }
                    for (p_1402->g_43.f1.f8 = 2; (p_1402->g_43.f1.f8 >= 0); p_1402->g_43.f1.f8 -= 1)
                    { /* block id: 90 */
                        volatile struct S0 *l_218[3];
                        int i;
                        for (i = 0; i < 3; i++)
                            l_218[i] = (void*)0;
                        (1 + 1);
                    }
                }
            }
            else
            { /* block id: 98 */
                int64_t *l_250 = (void*)0;
                int64_t *l_251 = &p_1402->g_252;
                int16_t *l_253 = &p_1402->g_43.f4;
                int32_t l_254 = 0x1B23E1FFL;
                int32_t *l_255 = &l_169[0][1][1];
                int32_t *l_257 = &p_1402->g_43.f1.f8;
                int32_t *l_258 = &l_256[2][7];
                int32_t *l_259 = &l_254;
                int32_t *l_260 = (void*)0;
                int32_t *l_261 = &l_169[2][4][0];
                int32_t *l_262 = &l_168;
                int32_t *l_263[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                int i;
                (*l_255) = (l_254 = (safe_mod_func_int16_t_s_s((GROUP_DIVERGE(0, 1) >= 0x51L), (safe_mul_func_int16_t_s_s(((*l_253) = (safe_add_func_uint64_t_u_u(p_72, (((safe_mod_func_int8_t_s_s((&p_1402->g_88 == (void*)0), ((((*l_251) &= (safe_add_func_int16_t_s_s((p_72 | ((**l_133) ^ (safe_mul_func_uint16_t_u_u(((((*l_131) = ((&p_1402->g_152 != ((safe_sub_func_int8_t_s_s(((*l_155) = (safe_rshift_func_int16_t_s_s((safe_mod_func_uint64_t_u_u(((((safe_rshift_func_uint16_t_u_s((+((safe_div_func_uint8_t_u_u((~(safe_sub_func_int64_t_s_s((((safe_rshift_func_uint16_t_u_s((1UL ^ (((p_1402->g_247 = l_246[7]) != (void*)0) ^ (***l_132))), 4)) || (*p_1402->g_151)) && (**p_1402->g_88)), (***l_132)))), p_1402->g_34)) | l_112)), 6)) & 0x5B2B27AC2C4E39F2L) , 249UL) , (***l_132)), (***l_132))), 8))), p_72)) , l_114)) , &p_1402->g_89)) != l_248) , p_1402->g_249), (-1L))))), p_1402->g_214[1][1]))) , p_72) , (*p_1402->g_151)))) < (-6L)) & p_1402->g_43.f0)))), p_72)))));
                (*l_255) &= (*p_1402->g_89);
                p_1402->g_264++;
            }
        }
        else
        { /* block id: 109 */
            int8_t *l_284 = &p_1402->g_14;
            int32_t l_299 = 0L;
            int32_t l_305 = 0x66082E55L;
            int32_t l_307 = 0x158D9349L;
            int32_t l_308 = 0x3107CD17L;
            int32_t l_309 = 0x33A3F084L;
            uint64_t l_310 = 18446744073709551614UL;
            int64_t l_328 = 0x59A5C299DAF1052CL;
            uint8_t l_329[9][6] = {{0xA3L,246UL,0xDDL,0xA3L,0UL,0xDDL},{0xA3L,246UL,0xDDL,0xA3L,0UL,0xDDL},{0xA3L,246UL,0xDDL,0xA3L,0UL,0xDDL},{0xA3L,246UL,0xDDL,0xA3L,0UL,0xDDL},{0xA3L,246UL,0xDDL,0xA3L,0UL,0xDDL},{0xA3L,246UL,0xDDL,0xA3L,0UL,0xDDL},{0xA3L,246UL,0xDDL,0xA3L,0UL,0xDDL},{0xA3L,246UL,0xDDL,0xA3L,0UL,0xDDL},{0xA3L,246UL,0xDDL,0xA3L,0UL,0xDDL}};
            uint64_t l_330[10][9][1] = {{{18446744073709551613UL},{18446744073709551613UL},{18446744073709551613UL},{18446744073709551613UL},{18446744073709551613UL},{18446744073709551613UL},{18446744073709551613UL},{18446744073709551613UL},{18446744073709551613UL}},{{18446744073709551613UL},{18446744073709551613UL},{18446744073709551613UL},{18446744073709551613UL},{18446744073709551613UL},{18446744073709551613UL},{18446744073709551613UL},{18446744073709551613UL},{18446744073709551613UL}},{{18446744073709551613UL},{18446744073709551613UL},{18446744073709551613UL},{18446744073709551613UL},{18446744073709551613UL},{18446744073709551613UL},{18446744073709551613UL},{18446744073709551613UL},{18446744073709551613UL}},{{18446744073709551613UL},{18446744073709551613UL},{18446744073709551613UL},{18446744073709551613UL},{18446744073709551613UL},{18446744073709551613UL},{18446744073709551613UL},{18446744073709551613UL},{18446744073709551613UL}},{{18446744073709551613UL},{18446744073709551613UL},{18446744073709551613UL},{18446744073709551613UL},{18446744073709551613UL},{18446744073709551613UL},{18446744073709551613UL},{18446744073709551613UL},{18446744073709551613UL}},{{18446744073709551613UL},{18446744073709551613UL},{18446744073709551613UL},{18446744073709551613UL},{18446744073709551613UL},{18446744073709551613UL},{18446744073709551613UL},{18446744073709551613UL},{18446744073709551613UL}},{{18446744073709551613UL},{18446744073709551613UL},{18446744073709551613UL},{18446744073709551613UL},{18446744073709551613UL},{18446744073709551613UL},{18446744073709551613UL},{18446744073709551613UL},{18446744073709551613UL}},{{18446744073709551613UL},{18446744073709551613UL},{18446744073709551613UL},{18446744073709551613UL},{18446744073709551613UL},{18446744073709551613UL},{18446744073709551613UL},{18446744073709551613UL},{18446744073709551613UL}},{{18446744073709551613UL},{18446744073709551613UL},{18446744073709551613UL},{18446744073709551613UL},{18446744073709551613UL},{18446744073709551613UL},{18446744073709551613UL},{18446744073709551613UL},{18446744073709551613UL}},{{18446744073709551613UL},{18446744073709551613UL},{18446744073709551613UL},{18446744073709551613UL},{18446744073709551613UL},{18446744073709551613UL},{18446744073709551613UL},{18446744073709551613UL},{18446744073709551613UL}}};
            int i, j, k;
            for (p_1402->g_252 = (-16); (p_1402->g_252 == 11); p_1402->g_252 = safe_add_func_int64_t_s_s(p_1402->g_252, 4))
            { /* block id: 112 */
                uint16_t *l_279 = &p_1402->g_109;
                int32_t l_292 = 0x0290221DL;
                int32_t l_293 = 4L;
                int32_t l_298 = 5L;
                int32_t l_301 = 0x06B0F98DL;
                int32_t l_302 = 0x0A62B8CCL;
                int32_t l_304[7][7][5] = {{{7L,0x22554C3AL,(-8L),0x0DA037CBL,(-4L)},{7L,0x22554C3AL,(-8L),0x0DA037CBL,(-4L)},{7L,0x22554C3AL,(-8L),0x0DA037CBL,(-4L)},{7L,0x22554C3AL,(-8L),0x0DA037CBL,(-4L)},{7L,0x22554C3AL,(-8L),0x0DA037CBL,(-4L)},{7L,0x22554C3AL,(-8L),0x0DA037CBL,(-4L)},{7L,0x22554C3AL,(-8L),0x0DA037CBL,(-4L)}},{{7L,0x22554C3AL,(-8L),0x0DA037CBL,(-4L)},{7L,0x22554C3AL,(-8L),0x0DA037CBL,(-4L)},{7L,0x22554C3AL,(-8L),0x0DA037CBL,(-4L)},{7L,0x22554C3AL,(-8L),0x0DA037CBL,(-4L)},{7L,0x22554C3AL,(-8L),0x0DA037CBL,(-4L)},{7L,0x22554C3AL,(-8L),0x0DA037CBL,(-4L)},{7L,0x22554C3AL,(-8L),0x0DA037CBL,(-4L)}},{{7L,0x22554C3AL,(-8L),0x0DA037CBL,(-4L)},{7L,0x22554C3AL,(-8L),0x0DA037CBL,(-4L)},{7L,0x22554C3AL,(-8L),0x0DA037CBL,(-4L)},{7L,0x22554C3AL,(-8L),0x0DA037CBL,(-4L)},{7L,0x22554C3AL,(-8L),0x0DA037CBL,(-4L)},{7L,0x22554C3AL,(-8L),0x0DA037CBL,(-4L)},{7L,0x22554C3AL,(-8L),0x0DA037CBL,(-4L)}},{{7L,0x22554C3AL,(-8L),0x0DA037CBL,(-4L)},{7L,0x22554C3AL,(-8L),0x0DA037CBL,(-4L)},{7L,0x22554C3AL,(-8L),0x0DA037CBL,(-4L)},{7L,0x22554C3AL,(-8L),0x0DA037CBL,(-4L)},{7L,0x22554C3AL,(-8L),0x0DA037CBL,(-4L)},{7L,0x22554C3AL,(-8L),0x0DA037CBL,(-4L)},{7L,0x22554C3AL,(-8L),0x0DA037CBL,(-4L)}},{{7L,0x22554C3AL,(-8L),0x0DA037CBL,(-4L)},{7L,0x22554C3AL,(-8L),0x0DA037CBL,(-4L)},{7L,0x22554C3AL,(-8L),0x0DA037CBL,(-4L)},{7L,0x22554C3AL,(-8L),0x0DA037CBL,(-4L)},{7L,0x22554C3AL,(-8L),0x0DA037CBL,(-4L)},{7L,0x22554C3AL,(-8L),0x0DA037CBL,(-4L)},{7L,0x22554C3AL,(-8L),0x0DA037CBL,(-4L)}},{{7L,0x22554C3AL,(-8L),0x0DA037CBL,(-4L)},{7L,0x22554C3AL,(-8L),0x0DA037CBL,(-4L)},{7L,0x22554C3AL,(-8L),0x0DA037CBL,(-4L)},{7L,0x22554C3AL,(-8L),0x0DA037CBL,(-4L)},{7L,0x22554C3AL,(-8L),0x0DA037CBL,(-4L)},{7L,0x22554C3AL,(-8L),0x0DA037CBL,(-4L)},{7L,0x22554C3AL,(-8L),0x0DA037CBL,(-4L)}},{{7L,0x22554C3AL,(-8L),0x0DA037CBL,(-4L)},{7L,0x22554C3AL,(-8L),0x0DA037CBL,(-4L)},{7L,0x22554C3AL,(-8L),0x0DA037CBL,(-4L)},{7L,0x22554C3AL,(-8L),0x0DA037CBL,(-4L)},{7L,0x22554C3AL,(-8L),0x0DA037CBL,(-4L)},{7L,0x22554C3AL,(-8L),0x0DA037CBL,(-4L)},{7L,0x22554C3AL,(-8L),0x0DA037CBL,(-4L)}}};
                int64_t l_323 = 8L;
                int i, j, k;
                for (l_176 = 0; (l_176 > 2); l_176 = safe_add_func_uint64_t_u_u(l_176, 9))
                { /* block id: 115 */
                    int32_t ***l_271 = &l_248;
                    uint16_t *l_278 = &p_1402->g_109;
                    int8_t **l_282[10][1] = {{&l_211},{&l_211},{&l_211},{&l_211},{&l_211},{&l_211},{&l_211},{&l_211},{&l_211},{&l_211}};
                    int32_t l_285 = (-7L);
                    int i, j;
                    (**l_132) = (*l_133);
                }
                for (l_112 = 0; (l_112 > (-2)); l_112 = safe_sub_func_uint16_t_u_u(l_112, 4))
                { /* block id: 129 */
                    int32_t *l_290 = &l_256[1][6];
                    int32_t *l_291[5];
                    int64_t l_300 = (-3L);
                    volatile union U3 *l_314 = &p_1402->g_79;
                    volatile union U3 **l_313 = &l_314;
                    int i;
                    for (i = 0; i < 5; i++)
                        l_291[i] = &p_1402->g_43.f1.f8;
                    --l_310;
                    (*l_313) = (((*l_114) = p_72) , &p_1402->g_127);
                    l_294 = (18446744073709551615UL == (safe_div_func_uint8_t_u_u(((*l_114) &= (18446744073709551615UL ^ ((safe_mul_func_uint8_t_u_u(((void*)0 == &p_1402->g_127), (*p_1402->g_151))) , ((safe_rshift_func_uint8_t_u_u((l_309 ^ ((safe_sub_func_int16_t_s_s(p_72, ((((((FAKE_DIVERGE(p_1402->group_2_offset, get_group_id(2), 10) > p_72) , &p_1402->g_6) == &p_1402->g_6) >= 255UL) < (*p_1402->g_151)) < l_323))) && p_72)), GROUP_DIVERGE(1, 1))) > l_307)))), p_72)));
                }
                (*p_1402->g_331) = (((safe_unary_minus_func_uint8_t_u((**l_133))) <= (p_1402->g_127 , (((FAKE_DIVERGE(p_1402->local_0_offset, get_local_id(0), 10) >= 0xDE77CC95L) != ((void*)0 != p_71)) != ((((p_1402->g_325[0] , l_308) , 6UL) || (safe_mul_func_uint8_t_u_u((p_72 == p_1402->g_127.f0.f6), l_328))) , l_329[0][1])))) <= l_330[3][1][0]);
            }
            return p_1402->g_264;
        }
        if (((((safe_mod_func_int16_t_s_s((0x58L > (((safe_sub_func_uint16_t_u_u((p_1402->g_363[0] = ((***l_132) , (safe_sub_func_uint16_t_u_u(((*p_1402->g_247) = (p_1402->g_118 || p_1402->g_127.f0.f7)), (safe_add_func_int8_t_s_s((((safe_mod_func_int32_t_s_s((((*l_114) = ((((safe_mod_func_int64_t_s_s((((safe_mod_func_uint32_t_u_u((safe_div_func_int8_t_s_s(((*l_362) = (safe_mod_func_uint64_t_u_u((((l_361 ^= (l_360[2] = (l_112 |= (safe_lshift_func_int16_t_s_s((((safe_lshift_func_int8_t_s_s((+((p_72 > (-1L)) >= (((l_256[0][1] ^= ((p_72 & p_72) || (((safe_mod_func_uint8_t_u_u((safe_lshift_func_int8_t_s_s(3L, p_72)), (-1L))) < l_358) | (-9L)))) != 4294967295UL) | GROUP_DIVERGE(2, 1)))), l_359)) , 0x440B6AFEL) != p_72), l_306))))) != p_1402->g_115[0][3]) < p_1402->g_118), 0x17723F62D744C248L))), p_1402->g_325[0].f0)), 2UL)) || p_72) | 0x62EE016AD1CE2065L), p_72)) | 0UL) , 0x6FE2L) , p_72)) && p_72), l_359)) != l_359) > p_1402->g_14), p_1402->g_214[1][0])))))), FAKE_DIVERGE(p_1402->global_2_offset, get_global_id(2), 10))) >= 0xA0DFL) , (**l_133))), 0xCD86L)) && p_1402->g_12[0][1][1]) <= 0xF74BL) >= l_306))
        { /* block id: 148 */
            if ((*p_71))
                break;
        }
        else
        { /* block id: 150 */
            uint8_t l_364 = 8UL;
            int32_t *l_365 = &l_303[5];
            uint8_t **l_407 = &l_113;
            uint32_t l_433 = 0xD55A148DL;
            int8_t **l_434[10][6] = {{(void*)0,&l_362,&l_362,&p_1402->g_283,&l_362,&l_362},{(void*)0,&l_362,&l_362,&p_1402->g_283,&l_362,&l_362},{(void*)0,&l_362,&l_362,&p_1402->g_283,&l_362,&l_362},{(void*)0,&l_362,&l_362,&p_1402->g_283,&l_362,&l_362},{(void*)0,&l_362,&l_362,&p_1402->g_283,&l_362,&l_362},{(void*)0,&l_362,&l_362,&p_1402->g_283,&l_362,&l_362},{(void*)0,&l_362,&l_362,&p_1402->g_283,&l_362,&l_362},{(void*)0,&l_362,&l_362,&p_1402->g_283,&l_362,&l_362},{(void*)0,&l_362,&l_362,&p_1402->g_283,&l_362,&l_362},{(void*)0,&l_362,&l_362,&p_1402->g_283,&l_362,&l_362}};
            int8_t **l_437 = &l_362;
            int8_t ***l_436 = &l_437;
            union U2 *l_439 = (void*)0;
            union U2 **l_438 = &l_439;
            int i, j;
            (*l_365) = l_364;
            for (l_361 = 17; (l_361 > (-26)); l_361 = safe_sub_func_uint64_t_u_u(l_361, 9))
            { /* block id: 154 */
                int64_t l_382[5];
                int64_t l_383 = 1L;
                int32_t l_390 = 0x0C64D308L;
                int16_t *l_398 = (void*)0;
                uint16_t l_404 = 0x0B8DL;
                int32_t **l_427 = &p_1402->g_89;
                int i;
                for (i = 0; i < 5; i++)
                    l_382[i] = 0x0B89D67758D9DD19L;
                for (l_306 = 0; (l_306 != (-5)); l_306 = safe_sub_func_int64_t_s_s(l_306, 1))
                { /* block id: 157 */
                    int8_t **l_377 = (void*)0;
                    int8_t ***l_376 = &l_377;
                    int32_t l_384 = (-1L);
                    int32_t l_385 = 0x2B9A9A63L;
                    int32_t l_386 = 0x256B3075L;
                    uint8_t *l_387 = &p_1402->g_214[2][1];
                    uint32_t *l_401 = &p_1402->g_43.f0;
                    uint32_t *l_402[5][4] = {{&p_1402->g_403,&p_1402->g_403,&p_1402->g_403,&p_1402->g_403},{&p_1402->g_403,&p_1402->g_403,&p_1402->g_403,&p_1402->g_403},{&p_1402->g_403,&p_1402->g_403,&p_1402->g_403,&p_1402->g_403},{&p_1402->g_403,&p_1402->g_403,&p_1402->g_403,&p_1402->g_403},{&p_1402->g_403,&p_1402->g_403,&p_1402->g_403,&p_1402->g_403}};
                    uint8_t **l_411 = (void*)0;
                    int i, j;
                    (*l_133) = p_71;
                    l_365 = l_365;
                    if ((((*p_1402->g_331) || ((((*l_365) = (+(safe_add_func_int64_t_s_s((safe_add_func_uint8_t_u_u((((*l_376) = &p_1402->g_283) != ((safe_add_func_int8_t_s_s((((*l_114) = l_382[0]) < ((l_384 = l_383) < l_385)), p_1402->g_296[5])) , (void*)0)), (++(*l_387)))), (l_390 |= p_72))))) == 0x578CCDA2D8EEE6A2L) < p_1402->g_363[0])) > p_72))
                    { /* block id: 166 */
                        (*l_133) = (*p_1402->g_286);
                        l_390 = (*p_1402->g_331);
                    }
                    else
                    { /* block id: 169 */
                        return p_1402->g_13;
                    }
                    if ((safe_mul_func_uint8_t_u_u((p_1402->g_393 , FAKE_DIVERGE(p_1402->local_2_offset, get_local_id(2), 10)), (safe_rshift_func_uint8_t_u_s((((safe_sub_func_int32_t_s_s(((0x03L == (l_398 == (void*)0)) && 0L), (l_384 |= ((*l_401) = (safe_sub_func_int8_t_s_s(((*l_362) = (*l_365)), p_72)))))) ^ (255UL & ((l_404 < l_386) | 6UL))) || 0xCDE66153L), 4)))))
                    { /* block id: 175 */
                        uint8_t ***l_408[1][6][1] = {{{&l_407},{&l_407},{&l_407},{&l_407},{&l_407},{&l_407}}};
                        int8_t ***l_418[10] = {&l_377,(void*)0,&l_377,&l_377,(void*)0,&l_377,&l_377,(void*)0,&l_377,&l_377};
                        int64_t *l_424 = (void*)0;
                        int64_t *l_425 = &p_1402->g_252;
                        int32_t *l_426 = &l_386;
                        int i, j, k;
                        (*l_426) = ((((*p_1402->g_331) = ((1L > 0x62525DA0L) == ((*l_365) = ((&p_1402->g_109 != p_1402->g_405[0][3][4]) > (((p_1402->g_409[0][0] = l_407) != (l_411 = l_407)) <= (((*l_425) = (p_1402->g_423 &= (safe_lshift_func_uint16_t_u_s((safe_mul_func_uint8_t_u_u(1UL, (safe_add_func_uint64_t_u_u((((((l_418[4] == p_1402->g_419) , l_382[0]) , p_1402->g_252) <= (*l_365)) == (*l_365)), (*p_73))))), p_1402->g_14)))) , p_1402->g_78.f1)))))) != (-6L)) >= p_72);
                    }
                    else
                    { /* block id: 183 */
                        uint32_t l_430 = 0UL;
                        (*l_365) |= (l_427 != (void*)0);
                        (*l_365) = (((*l_387) = ((*l_113) |= (*p_1402->g_151))) , (safe_rshift_func_int8_t_s_s((0x830CL && 8UL), 6)));
                        l_430--;
                        return l_433;
                    }
                }
                if ((*p_1402->g_287))
                    continue;
                (*l_365) |= (*p_1402->g_331);
            }
            if ((*p_71))
                break;
            (*l_438) = (((l_435 = l_434[0][3]) == ((*l_436) = &p_1402->g_283)) , (void*)0);
        }
        for (l_361 = 0; (l_361 <= 6); l_361 += 1)
        { /* block id: 202 */
            int64_t l_464 = 0x46803B651F8D1690L;
            int32_t l_469 = 0L;
            int32_t l_510 = 0x02E5B2A7L;
            int32_t l_511 = 5L;
            int32_t l_512 = 0x64DF8248L;
            int32_t l_513 = (-4L);
            int32_t l_514 = 0L;
            int32_t l_515 = 1L;
            int8_t *l_634 = &p_1402->g_205;
            int16_t **l_685 = (void*)0;
            int16_t ***l_684 = &l_685;
            uint16_t *l_722 = (void*)0;
            int32_t l_732 = 0x62188833L;
            int32_t l_733 = 0x59181535L;
            int32_t l_734[3][3] = {{8L,0L,8L},{8L,0L,8L},{8L,0L,8L}};
            int i, j;
            if ((*p_1402->g_89))
            { /* block id: 203 */
                for (p_1402->g_393.f1.f5 = 0; p_1402->g_393.f1.f5 < 3; p_1402->g_393.f1.f5 += 1)
                {
                    l_360[p_1402->g_393.f1.f5] = 0x2BD500A6L;
                }
                (**l_132) = (*p_1402->g_286);
            }
            else
            { /* block id: 206 */
                uint32_t l_461 = 0xD5EF3E9BL;
                if ((*p_1402->g_287))
                { /* block id: 207 */
                    uint32_t *l_455 = &p_1402->g_403;
                    uint32_t **l_454 = &l_455;
                    int32_t l_456 = 0x725DF65DL;
                    uint32_t *l_457 = &p_1402->g_43.f1.f7;
                    int32_t l_458 = 0L;
                    int32_t *l_459 = &l_360[1];
                    int32_t *l_460[9];
                    int i;
                    for (i = 0; i < 9; i++)
                        l_460[i] = (void*)0;
                    l_294 |= (l_303[8] ^= (((safe_mod_func_int32_t_s_s(((*l_459) = (7UL & ((safe_lshift_func_int8_t_s_s(p_72, 2)) <= ((((((safe_mul_func_int8_t_s_s(((*l_362) = ((safe_lshift_func_int16_t_s_s(((((((*l_457) = (((l_456 = (safe_add_func_int64_t_s_s((safe_sub_func_uint16_t_u_u(0xA850L, (&p_1402->g_423 != ((*l_454) = (void*)0)))), ((**p_1402->g_88) ^ ((0x5096L >= ((*l_108) = (p_72 | 1L))) | p_1402->g_3))))) == 1L) , 4294967288UL)) ^ (*p_1402->g_287)) ^ p_72) != 0xDAL) != 0xC373L), p_1402->g_296[5])) != FAKE_DIVERGE(p_1402->global_0_offset, get_global_id(0), 10))), GROUP_DIVERGE(2, 1))) ^ (*p_1402->g_287)) > GROUP_DIVERGE(1, 1)) != p_72) || 0x77234B16F6DAA739L) >= l_458)))), p_1402->g_118)) , (-1L)) || 0x27L));
                    ++l_461;
                }
                else
                { /* block id: 217 */
                    uint8_t ***l_467[1];
                    uint8_t ****l_468 = &l_467[0];
                    int i;
                    for (i = 0; i < 1; i++)
                        l_467[i] = &p_1402->g_409[4][1];
                    l_256[4][3] |= ((l_248 = (l_464 , &p_1402->g_287)) != (void*)0);
                    l_469 &= ((p_1402->g_79.f0.f5 && (safe_sub_func_int32_t_s_s((!(0x13L != p_72)), p_1402->g_219.f2))) | (((*l_468) = l_467[0]) == (void*)0));
                }
                for (p_1402->g_403 = 0; (p_1402->g_403 <= 0); p_1402->g_403 += 1)
                { /* block id: 225 */
                    for (l_176 = 1; (l_176 <= 6); l_176 += 1)
                    { /* block id: 228 */
                        return (*p_73);
                    }
                    return (*p_74);
                }
                for (l_306 = 2; (l_306 >= 0); l_306 -= 1)
                { /* block id: 235 */
                    volatile struct S0 *l_475 = (void*)0;
                    volatile struct S0 *l_476 = (void*)0;
                    for (p_1402->g_43.f1.f8 = 2; (p_1402->g_43.f1.f8 >= 0); p_1402->g_43.f1.f8 -= 1)
                    { /* block id: 238 */
                        uint16_t l_470 = 5UL;
                        l_470 ^= ((*p_73) & p_1402->g_393.f0);
                        (*p_1402->g_471) ^= (*p_71);
                        return (*p_73);
                    }
                    for (p_1402->g_109 = 0; (p_1402->g_109 <= 6); p_1402->g_109 += 1)
                    { /* block id: 245 */
                        return p_1402->g_252;
                    }
                    (*p_1402->g_477) = p_1402->g_472;
                    if ((*p_71))
                        continue;
                }
            }
            for (l_105 = 0; (l_105 <= 2); l_105 += 1)
            { /* block id: 254 */
                int32_t l_492 = 0L;
                int32_t l_508 = (-1L);
                int32_t l_509[6][3] = {{0x40721D79L,8L,0x40721D79L},{0x40721D79L,8L,0x40721D79L},{0x40721D79L,8L,0x40721D79L},{0x40721D79L,8L,0x40721D79L},{0x40721D79L,8L,0x40721D79L},{0x40721D79L,8L,0x40721D79L}};
                uint64_t *l_519 = &l_516;
                union U2 l_552 = {1UL};
                union U3 *l_565 = (void*)0;
                uint32_t l_596 = 0x6872C7F6L;
                uint8_t l_603[4] = {255UL,255UL,255UL,255UL};
                int32_t l_620[5];
                int16_t l_625 = (-8L);
                uint32_t l_628[4] = {0x61DC2DA8L,0x61DC2DA8L,0x61DC2DA8L,0x61DC2DA8L};
                int i, j;
                for (i = 0; i < 5; i++)
                    l_620[i] = 0x17593302L;
                for (l_206 = 0; (l_206 <= 0); l_206 += 1)
                { /* block id: 257 */
                    return l_464;
                }
                for (l_359 = 1; (l_359 <= 6); l_359 += 1)
                { /* block id: 262 */
                    int32_t *l_503 = &l_303[6];
                    int32_t *l_504 = (void*)0;
                    int32_t *l_505 = &l_360[l_105];
                    int32_t *l_506 = &l_360[2];
                    int32_t *l_507[4];
                    int i;
                    for (i = 0; i < 4; i++)
                        l_507[i] = (void*)0;
                    for (l_306 = 0; (l_306 <= 4); l_306 += 1)
                    { /* block id: 265 */
                        int32_t *l_478 = &l_256[4][2];
                        int i;
                        (**l_132) = &p_1402->g_296[(l_105 + 2)];
                        (*l_478) |= p_1402->g_296[(l_306 + 1)];
                    }
                    if (l_360[l_105])
                        break;
                    for (l_306 = 0; (l_306 >= 0); l_306 -= 1)
                    { /* block id: 272 */
                        uint32_t *l_484 = &p_1402->g_423;
                        uint32_t **l_486 = &l_484;
                        uint32_t *l_488 = &p_1402->g_423;
                        uint32_t **l_487[9] = {&l_488,(void*)0,&l_488,&l_488,(void*)0,&l_488,&l_488,(void*)0,&l_488};
                        volatile struct S0 *l_500 = (void*)0;
                        int i, j, k;
                        if ((*p_71))
                            break;
                        l_360[l_105] &= (safe_div_func_uint16_t_u_u((l_481 , ((*l_108) ^= (safe_add_func_int8_t_s_s(((*l_362) = (((4294967288UL < (((*l_486) = (l_485 = l_484)) == (l_489 = p_71))) && p_72) ^ ((-1L) != ((safe_sub_func_int8_t_s_s((((~l_492) , (safe_sub_func_uint8_t_u_u(((+(((~p_72) == (((((safe_mod_func_int64_t_s_s(9L, l_492)) && p_1402->g_127.f0.f2) , p_1402->g_472.f1) && 0xD8803E8A4BB95EE2L) <= (*p_71))) && 0x7E5F3751F69EAADBL)) < p_72), l_469))) < 65535UL), p_1402->g_403)) , (**l_133))))), 0x8DL)))), l_464));
                        p_1402->g_502 = p_1402->g_499;
                    }
                    l_516--;
                }
                if ((((*l_519) = p_72) > (*p_74)))
                { /* block id: 285 */
                    for (p_1402->g_252 = 4; (p_1402->g_252 >= 2); p_1402->g_252 -= 1)
                    { /* block id: 288 */
                        (*p_1402->g_521) = p_1402->g_520;
                        (*p_1402->g_524) = p_1402->g_522[4][6];
                    }
                }
                else
                { /* block id: 292 */
                    uint8_t l_540 = 249UL;
                    int32_t l_543 = 0x212F5BA3L;
                    if ((safe_mul_func_uint8_t_u_u((safe_mod_func_int64_t_s_s((((!(*p_1402->g_151)) , ((*p_1402->g_247) || (safe_sub_func_uint8_t_u_u(((***l_132) >= (&p_1402->g_331 != &p_1402->g_471)), (safe_add_func_uint64_t_u_u((safe_add_func_int64_t_s_s((safe_rshift_func_int8_t_s_u((((-5L) > (p_1402->g_537 , (((((safe_lshift_func_int16_t_s_u(((((GROUP_DIVERGE(0, 1) ^ (((l_540 = 0x6EL) , (safe_rshift_func_int8_t_s_s(((*l_362) = 0x77L), (**l_133)))) <= l_543)) != p_72) > (**p_1402->g_286)) != (***l_132)), FAKE_DIVERGE(p_1402->global_2_offset, get_global_id(2), 10))) , p_72) & l_543) , (void*)0) != p_71))) , 0x1FL), GROUP_DIVERGE(0, 1))), 18446744073709551615UL)), p_1402->g_537.f0.f8)))))) > 0x4D46BF9CL), 7L)), p_72)))
                    { /* block id: 295 */
                        if (l_513)
                            break;
                    }
                    else
                    { /* block id: 297 */
                        int32_t ****l_556[4] = {&p_1402->g_554[2],&p_1402->g_554[2],&p_1402->g_554[2],&p_1402->g_554[2]};
                        uint32_t **l_559 = &l_485;
                        uint32_t ***l_562 = (void*)0;
                        uint32_t **l_564 = (void*)0;
                        uint32_t ***l_563 = &l_564;
                        int i;
                        if ((*p_1402->g_471))
                            break;
                        l_509[5][2] |= (((safe_mod_func_int64_t_s_s(((((safe_mul_func_uint16_t_u_u(((safe_mul_func_uint8_t_u_u((((*l_362) = (p_1402->g_472.f3 , (safe_sub_func_int16_t_s_s(((0x7703838F774A695DL && p_1402->g_127.f0.f8) == (*p_1402->g_287)), (l_552 , (p_1402->g_252 != (((-1L) == (safe_unary_minus_func_int8_t_s((&l_133 != (l_557[7][1] = p_1402->g_554[1]))))) || 1L))))))) && l_515), 7UL)) >= 1UL), p_72)) == 6UL) | 1UL) , 0x54F80312C5FF0589L), GROUP_DIVERGE(1, 1))) != p_72) >= GROUP_DIVERGE(2, 1));
                        l_508 &= (((*p_73) <= p_72) & ((~(**p_1402->g_420)) || (((l_540 , p_1402->g_558) , (((((p_1402->g_560 = (p_1402->g_325[0] , l_559)) == ((*l_563) = &l_489)) <= (l_565 != l_565)) && (*p_1402->g_471)) == p_1402->g_109)) == p_72)));
                        ++l_567;
                    }
                    if ((*p_71))
                        continue;
                }
                if ((*p_1402->g_89))
                { /* block id: 309 */
                    int16_t l_582 = 0x0012L;
                    int16_t *l_595 = &p_1402->g_43.f4;
                    if ((safe_add_func_int8_t_s_s((safe_div_func_uint16_t_u_u((0x36BCL && (safe_div_func_int16_t_s_s(((*l_595) = ((safe_add_func_int64_t_s_s((safe_mod_func_int32_t_s_s((l_514 = ((p_72 == (safe_lshift_func_uint8_t_u_s((((***p_1402->g_419) > (((*l_519) = (0x94F97356L && (((*l_114) ^= (l_582 = l_515)) & l_512))) > ((safe_lshift_func_uint16_t_u_s(((safe_mod_func_uint32_t_u_u((safe_sub_func_int16_t_s_s((safe_mul_func_int16_t_s_s(p_1402->g_13, (p_1402->g_34 , (((safe_mod_func_int64_t_s_s((((safe_add_func_uint64_t_u_u(p_72, (*p_74))) >= p_72) || FAKE_DIVERGE(p_1402->group_2_offset, get_group_id(2), 10)), (-9L))) | 0L) == 249UL)))), p_1402->g_537.f0.f5)), p_72)) | l_515), (**l_133))) , (*p_74)))) >= GROUP_DIVERGE(1, 1)), 4))) != 8L)), l_511)), p_1402->g_214[2][2])) || p_72)), p_72))), p_72)), 0x68L)))
                    { /* block id: 315 */
                        uint32_t ***l_608 = &p_1402->g_560;
                        uint32_t *l_609 = &l_552.f0;
                        uint64_t l_612 = 4UL;
                        int32_t l_613 = 0L;
                        uint8_t l_614 = 255UL;
                        ++l_596;
                        l_613 |= (((safe_mod_func_int64_t_s_s(((safe_lshift_func_int16_t_s_u(l_512, l_603[2])) && (**l_133)), (safe_sub_func_int8_t_s_s((**p_1402->g_420), ((safe_sub_func_uint16_t_u_u(l_464, (((*l_608) = &p_1402->g_561) != (((*l_609) = ((+((l_511 |= GROUP_DIVERGE(1, 1)) <= GROUP_DIVERGE(0, 1))) | FAKE_DIVERGE(p_1402->group_1_offset, get_group_id(1), 10))) , &p_1402->g_561)))) , p_72))))) , ((safe_rshift_func_int8_t_s_u(0L, l_612)) == 0UL)) == 0UL);
                        ++l_614;
                    }
                    else
                    { /* block id: 322 */
                        return p_1402->g_499.f5;
                    }
                    l_509[5][2] = (((l_617 < ((safe_div_func_int64_t_s_s((***l_132), (l_620[1] &= (p_72 >= l_492)))) <= (safe_sub_func_uint16_t_u_u(65528UL, (*p_1402->g_523))))) <= (safe_rshift_func_uint16_t_u_s(l_625, (((((safe_lshift_func_int16_t_s_s(p_72, p_1402->g_296[2])) != p_72) == p_72) , p_1402->g_537.f0.f5) != l_628[2])))) || (***p_1402->g_419));
                    if (l_510)
                    { /* block id: 327 */
                        union U4 *l_630 = (void*)0;
                        union U4 **l_629 = &l_630;
                        (*l_629) = (void*)0;
                        l_511 &= (-1L);
                    }
                    else
                    { /* block id: 330 */
                        uint32_t l_631 = 0x5E2887FAL;
                        l_631 |= (l_297 = (l_469 ^ 6UL));
                        (*l_133) = p_71;
                    }
                    (*p_1402->g_331) = 0L;
                }
                else
                { /* block id: 336 */
                    l_508 &= (**p_1402->g_88);
                }
            }
            for (l_176 = 0; (l_176 <= 6); l_176 += 1)
            { /* block id: 342 */
                union U2 l_635 = {0x1197610BL};
                int32_t l_656 = (-6L);
                int32_t l_682[10] = {(-5L),(-10L),(-5L),(-5L),(-10L),(-5L),(-5L),(-10L),(-5L),(-5L)};
                union U2 *l_696[1][5][1];
                int16_t l_736 = (-1L);
                int32_t l_737 = 0x4B357A97L;
                int16_t *****l_749[5] = {&l_748,&l_748,&l_748,&l_748,&l_748};
                int16_t ****l_750[3];
                int i, j, k;
                for (i = 0; i < 1; i++)
                {
                    for (j = 0; j < 5; j++)
                    {
                        for (k = 0; k < 1; k++)
                            l_696[i][j][k] = (void*)0;
                    }
                }
                for (i = 0; i < 3; i++)
                    l_750[i] = &l_684;
                for (p_1402->g_43.f0 = 0; (p_1402->g_43.f0 <= 6); p_1402->g_43.f0 += 1)
                { /* block id: 345 */
                    uint32_t l_653 = 4294967291UL;
                    int32_t l_657[2];
                    int i;
                    for (i = 0; i < 2; i++)
                        l_657[i] = (-1L);
                    (1 + 1);
                }
                for (l_297 = 0; (l_297 <= 0); l_297 += 1)
                { /* block id: 378 */
                    union U3 **l_679 = &p_1402->g_651;
                    int32_t l_683 = 5L;
                    int8_t l_719[6][8];
                    uint16_t *l_723 = &p_1402->g_109;
                    int32_t l_728 = 9L;
                    int32_t l_729 = 0x1BCB901AL;
                    int32_t l_730[4] = {0x238E803AL,0x238E803AL,0x238E803AL,0x238E803AL};
                    int8_t l_731 = 0x0DL;
                    uint16_t l_738 = 0xA0F5L;
                    int i, j;
                    for (i = 0; i < 6; i++)
                    {
                        for (j = 0; j < 8; j++)
                            l_719[i][j] = (-9L);
                    }
                    (1 + 1);
                }
                l_682[6] ^= (l_469 = (((safe_rshift_func_int8_t_s_u((safe_lshift_func_uint8_t_u_u(((*l_114) = (p_1402->g_745[5] , 0x38L)), 5)), 1)) > (l_515 = (l_732 &= (*p_1402->g_89)))) & (((safe_div_func_uint16_t_u_u((0x4EF675909A6D5595L & ((l_748 = l_748) != l_750[2])), l_510)) <= ((safe_mul_func_int16_t_s_s(0x392AL, ((((*l_362) = 0x55L) , (void*)0) == &p_1402->g_409[0][0]))) == 4UL)) >= 0x64L)));
                l_656 = (**p_1402->g_88);
            }
        }
        return (**l_133);
    }
    l_294 &= (0x3E9D5DFCL | 0x86858BB5L);
    for (p_1402->g_403 = (-1); (p_1402->g_403 < 53); p_1402->g_403 = safe_add_func_int16_t_s_s(p_1402->g_403, 1))
    { /* block id: 415 */
        int32_t *l_755 = &l_168;
        int32_t *l_756[4] = {&p_1402->g_296[5],&p_1402->g_296[5],&p_1402->g_296[5],&p_1402->g_296[5]};
        uint32_t l_757[4][5] = {{0x2BEB55EBL,0x2BEB55EBL,0x2BEB55EBL,0x2BEB55EBL,0x2BEB55EBL},{0x2BEB55EBL,0x2BEB55EBL,0x2BEB55EBL,0x2BEB55EBL,0x2BEB55EBL},{0x2BEB55EBL,0x2BEB55EBL,0x2BEB55EBL,0x2BEB55EBL,0x2BEB55EBL},{0x2BEB55EBL,0x2BEB55EBL,0x2BEB55EBL,0x2BEB55EBL,0x2BEB55EBL}};
        int i, j;
        l_757[3][0]++;
    }
    return p_1402->g_537.f0.f5;
}


/* ------------------------------------------ */
/* 
 * reads : p_1402->g_88 p_1402->g_89 p_1402->g_3 p_1402->g_78.f1 p_1402->g_296 p_1402->g_13
 * writes: p_1402->g_78.f1 p_1402->g_89 p_1402->g_43.f1.f8
 */
int32_t * func_75(int32_t * p_76, int8_t  p_77, struct S5 * p_1402)
{ /* block id: 36 */
    int32_t *l_91 = &p_1402->g_43.f1.f8;
    int32_t l_92 = (-1L);
    int32_t *l_93 = &p_1402->g_78.f0.f8;
    int32_t *l_94 = &p_1402->g_78.f0.f8;
    int32_t *l_95 = &p_1402->g_43.f1.f8;
    int32_t l_96 = 0x4FB6DD93L;
lbl_90:
    for (p_1402->g_78.f1 = 0; (p_1402->g_78.f1 != 1); p_1402->g_78.f1 = safe_add_func_int8_t_s_s(p_1402->g_78.f1, 9))
    { /* block id: 39 */
        (*p_1402->g_88) = p_76;
        if (p_1402->g_78.f1)
            goto lbl_90;
        if ((*p_1402->g_89))
            continue;
    }
    (*l_95) = (l_96 |= (l_92 ^= 0x14CEA6EDL));
    return (*p_1402->g_88);
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S5 c_1403;
    struct S5* p_1402 = &c_1403;
    struct S5 c_1404 = {
        0x008CF5A8L, // p_1402->g_3
        0x44142B9193C1DE6FL, // p_1402->g_6
        5UL, // p_1402->g_9
        {{{0x4ABF0A644184EB30L,0UL},{0x4ABF0A644184EB30L,0UL},{0x4ABF0A644184EB30L,0UL},{0x4ABF0A644184EB30L,0UL}},{{0x4ABF0A644184EB30L,0UL},{0x4ABF0A644184EB30L,0UL},{0x4ABF0A644184EB30L,0UL},{0x4ABF0A644184EB30L,0UL}},{{0x4ABF0A644184EB30L,0UL},{0x4ABF0A644184EB30L,0UL},{0x4ABF0A644184EB30L,0UL},{0x4ABF0A644184EB30L,0UL}},{{0x4ABF0A644184EB30L,0UL},{0x4ABF0A644184EB30L,0UL},{0x4ABF0A644184EB30L,0UL},{0x4ABF0A644184EB30L,0UL}},{{0x4ABF0A644184EB30L,0UL},{0x4ABF0A644184EB30L,0UL},{0x4ABF0A644184EB30L,0UL},{0x4ABF0A644184EB30L,0UL}},{{0x4ABF0A644184EB30L,0UL},{0x4ABF0A644184EB30L,0UL},{0x4ABF0A644184EB30L,0UL},{0x4ABF0A644184EB30L,0UL}},{{0x4ABF0A644184EB30L,0UL},{0x4ABF0A644184EB30L,0UL},{0x4ABF0A644184EB30L,0UL},{0x4ABF0A644184EB30L,0UL}},{{0x4ABF0A644184EB30L,0UL},{0x4ABF0A644184EB30L,0UL},{0x4ABF0A644184EB30L,0UL},{0x4ABF0A644184EB30L,0UL}}}, // p_1402->g_12
        (-1L), // p_1402->g_13
        1L, // p_1402->g_14
        1L, // p_1402->g_34
        {4294967295UL}, // p_1402->g_43
        {{-1L,0x55E9L,7L,0x39EB3E32L,0x72L,-5L,0x02E35A6FF1AB120DL,0x2E755E18L,0x356EC41CL,0x60L}}, // p_1402->g_78
        {{1L,-7L,0x3BB087A7L,1UL,0xD5L,0x2D53B930988C8CF6L,0x0DA2FB924F1449E4L,0x9CD7D838L,-10L,255UL}}, // p_1402->g_79
        &p_1402->g_13, // p_1402->g_89
        &p_1402->g_89, // p_1402->g_88
        65535UL, // p_1402->g_109
        {{255UL,255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL,255UL},{255UL,255UL,255UL,255UL,255UL}}, // p_1402->g_115
        1UL, // p_1402->g_118
        {{0x2CD8C260L,0x7267L,-1L,0x896F4A54L,1UL,-1L,0x25344571AEE78B5EL,0x6A62F802L,0L,6UL}}, // p_1402->g_127
        1UL, // p_1402->g_152
        &p_1402->g_152, // p_1402->g_151
        0xF9L, // p_1402->g_173
        0x15L, // p_1402->g_205
        {{0x3AL,0x3AL,0x3AL},{0x3AL,0x3AL,0x3AL},{0x3AL,0x3AL,0x3AL},{0x3AL,0x3AL,0x3AL},{0x3AL,0x3AL,0x3AL},{0x3AL,0x3AL,0x3AL},{0x3AL,0x3AL,0x3AL}}, // p_1402->g_214
        {&p_1402->g_79.f0,&p_1402->g_79.f0,&p_1402->g_79.f0}, // p_1402->g_215
        &p_1402->g_79.f0, // p_1402->g_216
        (void*)0, // p_1402->g_217
        {0L,-1L,-10L,0x0455E828L,247UL,0x14B5413A09A50845L,0x58AAF875AC5E7A40L,0x4C64F2D8L,0x73B3AB43L,0UL}, // p_1402->g_219
        &p_1402->g_109, // p_1402->g_247
        1UL, // p_1402->g_249
        0L, // p_1402->g_252
        0xA7E5032BL, // p_1402->g_264
        (void*)0, // p_1402->g_283
        &p_1402->g_3, // p_1402->g_287
        &p_1402->g_287, // p_1402->g_286
        {0x66925690L,0x66925690L,0x66925690L,0x66925690L,0x66925690L,0x66925690L,0x66925690L,0x66925690L,0x66925690L}, // p_1402->g_295
        {0x1CE2FE36L,0x1EF089A8L,0x1CE2FE36L,0x1CE2FE36L,0x1EF089A8L,0x1CE2FE36L}, // p_1402->g_296
        {{0UL}}, // p_1402->g_325
        &p_1402->g_296[5], // p_1402->g_331
        {0xDC4A6E4DL,0xDC4A6E4DL,0xDC4A6E4DL,0xDC4A6E4DL}, // p_1402->g_363
        {0xC48167D8L}, // p_1402->g_393
        4294967295UL, // p_1402->g_403
        0x588AL, // p_1402->g_406
        {{{&p_1402->g_406,&p_1402->g_406,&p_1402->g_406,&p_1402->g_406,&p_1402->g_406,&p_1402->g_406},{&p_1402->g_406,&p_1402->g_406,&p_1402->g_406,&p_1402->g_406,&p_1402->g_406,&p_1402->g_406},{&p_1402->g_406,&p_1402->g_406,&p_1402->g_406,&p_1402->g_406,&p_1402->g_406,&p_1402->g_406},{&p_1402->g_406,&p_1402->g_406,&p_1402->g_406,&p_1402->g_406,&p_1402->g_406,&p_1402->g_406}}}, // p_1402->g_405
        {&p_1402->g_115[0][3],&p_1402->g_115[0][3],&p_1402->g_115[0][3],&p_1402->g_115[0][3],&p_1402->g_115[0][3],&p_1402->g_115[0][3],&p_1402->g_115[0][3]}, // p_1402->g_410
        {{&p_1402->g_410[2],&p_1402->g_410[6],&p_1402->g_410[2],&p_1402->g_410[2],&p_1402->g_410[6]},{&p_1402->g_410[2],&p_1402->g_410[6],&p_1402->g_410[2],&p_1402->g_410[2],&p_1402->g_410[6]},{&p_1402->g_410[2],&p_1402->g_410[6],&p_1402->g_410[2],&p_1402->g_410[2],&p_1402->g_410[6]},{&p_1402->g_410[2],&p_1402->g_410[6],&p_1402->g_410[2],&p_1402->g_410[2],&p_1402->g_410[6]},{&p_1402->g_410[2],&p_1402->g_410[6],&p_1402->g_410[2],&p_1402->g_410[2],&p_1402->g_410[6]},{&p_1402->g_410[2],&p_1402->g_410[6],&p_1402->g_410[2],&p_1402->g_410[2],&p_1402->g_410[6]}}, // p_1402->g_409
        (-1L), // p_1402->g_422
        &p_1402->g_422, // p_1402->g_421
        &p_1402->g_421, // p_1402->g_420
        &p_1402->g_420, // p_1402->g_419
        7UL, // p_1402->g_423
        &p_1402->g_296[5], // p_1402->g_471
        {-1L,0x632CL,0x3F9AF414L,4294967295UL,0xFEL,-4L,0x69142EFFDA5807A0L,2UL,-3L,4UL}, // p_1402->g_472
        {&p_1402->g_127.f0}, // p_1402->g_473
        (void*)0, // p_1402->g_474
        &p_1402->g_472, // p_1402->g_477
        {9L,0x0B39L,1L,0UL,0UL,0x52806A0478371074L,-4L,4UL,0L,2UL}, // p_1402->g_499
        {&p_1402->g_219,&p_1402->g_219,&p_1402->g_219,&p_1402->g_219,&p_1402->g_219}, // p_1402->g_501
        {0x4EB2C2EBL,0x3DB4L,-8L,0xC19314B4L,0x13L,1L,0x6CE2DFA87B828485L,6UL,0L,8UL}, // p_1402->g_502
        {-1L,0x153BL,0x7B535D5DL,0x75E51037L,0x03L,0L,1L,4294967295UL,0x06763E10L,255UL}, // p_1402->g_520
        &p_1402->g_219, // p_1402->g_521
        &p_1402->g_520.f1, // p_1402->g_523
        {{&p_1402->g_523,&p_1402->g_523,&p_1402->g_523,&p_1402->g_523,&p_1402->g_523,&p_1402->g_523,&p_1402->g_523,&p_1402->g_523,&p_1402->g_523,&p_1402->g_523},{&p_1402->g_523,&p_1402->g_523,&p_1402->g_523,&p_1402->g_523,&p_1402->g_523,&p_1402->g_523,&p_1402->g_523,&p_1402->g_523,&p_1402->g_523,&p_1402->g_523},{&p_1402->g_523,&p_1402->g_523,&p_1402->g_523,&p_1402->g_523,&p_1402->g_523,&p_1402->g_523,&p_1402->g_523,&p_1402->g_523,&p_1402->g_523,&p_1402->g_523},{&p_1402->g_523,&p_1402->g_523,&p_1402->g_523,&p_1402->g_523,&p_1402->g_523,&p_1402->g_523,&p_1402->g_523,&p_1402->g_523,&p_1402->g_523,&p_1402->g_523},{&p_1402->g_523,&p_1402->g_523,&p_1402->g_523,&p_1402->g_523,&p_1402->g_523,&p_1402->g_523,&p_1402->g_523,&p_1402->g_523,&p_1402->g_523,&p_1402->g_523}}, // p_1402->g_522
        &p_1402->g_522[1][1], // p_1402->g_524
        {{0x33073425L,1L,0x0FBC24D6L,4294967295UL,0UL,0x150B703F0452EC9BL,0x7EA3C22BB233CD8EL,0x7A1D8F29L,0x3E0619F5L,248UL}}, // p_1402->g_537
        &p_1402->g_89, // p_1402->g_555
        {&p_1402->g_555,&p_1402->g_555,&p_1402->g_555}, // p_1402->g_554
        {{-1L,5L,1L,4294967294UL,1UL,0x4E8F98F18FE7F3ABL,-4L,4UL,0x5C12EF96L,0UL}}, // p_1402->g_558
        (void*)0, // p_1402->g_561
        &p_1402->g_561, // p_1402->g_560
        (-1L), // p_1402->g_566
        {{0x0AD0D633L,-1L,0x1602DDC9L,0xC1AD5DCAL,0x8DL,0L,0x20CB0A0D9C3C4F3CL,0x982AB8B0L,0L,255UL}}, // p_1402->g_649
        {{-1L,-1L,0x5083569AL,4294967295UL,0xB3L,0L,0x2E51E05FB5171BB8L,0x64F30615L,6L,254UL}}, // p_1402->g_652
        &p_1402->g_652, // p_1402->g_651
        &p_1402->g_651, // p_1402->g_650
        {{{{4294967294UL}},{{4294967294UL}},{{4294967294UL}},{{4294967294UL}},{{4294967294UL}},{{4294967294UL}},{{4294967294UL}},{{4294967294UL}}}}, // p_1402->g_678
        (void*)0, // p_1402->g_688
        &p_1402->g_688, // p_1402->g_687
        &p_1402->g_687, // p_1402->g_686
        {&p_1402->g_325[0],&p_1402->g_325[0],&p_1402->g_325[0],&p_1402->g_325[0]}, // p_1402->g_695
        2UL, // p_1402->g_724
        {{0x4C327D53L,0L,0x629B3973L,0UL,0x8EL,-9L,0x27135494873E7B87L,4294967292UL,0x62852B0FL,8UL},{0x4C327D53L,0L,0x629B3973L,0UL,0x8EL,-9L,0x27135494873E7B87L,4294967292UL,0x62852B0FL,8UL},{0x4C327D53L,0L,0x629B3973L,0UL,0x8EL,-9L,0x27135494873E7B87L,4294967292UL,0x62852B0FL,8UL},{0x4C327D53L,0L,0x629B3973L,0UL,0x8EL,-9L,0x27135494873E7B87L,4294967292UL,0x62852B0FL,8UL},{0x4C327D53L,0L,0x629B3973L,0UL,0x8EL,-9L,0x27135494873E7B87L,4294967292UL,0x62852B0FL,8UL},{0x4C327D53L,0L,0x629B3973L,0UL,0x8EL,-9L,0x27135494873E7B87L,4294967292UL,0x62852B0FL,8UL},{0x4C327D53L,0L,0x629B3973L,0UL,0x8EL,-9L,0x27135494873E7B87L,4294967292UL,0x62852B0FL,8UL},{0x4C327D53L,0L,0x629B3973L,0UL,0x8EL,-9L,0x27135494873E7B87L,4294967292UL,0x62852B0FL,8UL},{0x4C327D53L,0L,0x629B3973L,0UL,0x8EL,-9L,0x27135494873E7B87L,4294967292UL,0x62852B0FL,8UL}}, // p_1402->g_745
        0UL, // p_1402->g_760
        {-3L,0x0045L,-1L,0x8A3FDA11L,0xF0L,4L,0x2903F05168779440L,0x399EF90FL,0x6808F8BFL,255UL}, // p_1402->g_764
        (void*)0, // p_1402->g_765
        {{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}}}, // p_1402->g_766
        &p_1402->g_472, // p_1402->g_767
        {8L,0x3797L,-3L,4294967291UL,1UL,-1L,0x18BF96D69A6C2018L,4294967295UL,3L,5UL}, // p_1402->g_772
        {-7L,0x3E86L,0x6026DFDCL,4294967295UL,0x21L,-9L,0x3CA3FF57C062E567L,0xE948F3CFL,0L,0x7CL}, // p_1402->g_774
        {0x3C923CD6L,0x4E71L,-10L,8UL,0x3DL,0L,1L,0x483828B8L,7L,0x4AL}, // p_1402->g_796
        {4294967295UL}, // p_1402->g_798
        {{0x6D96E751L,0x6501L,0x47C63ED9L,0x575E53BFL,0UL,4L,-7L,2UL,-1L,0UL}}, // p_1402->g_813
        {-7L,0x42B3L,0x50D1B9EAL,0x06D9FD1CL,248UL,-7L,-9L,0x0594B07CL,1L,1UL}, // p_1402->g_852
        4294967293UL, // p_1402->g_887
        4294967291UL, // p_1402->g_898
        {0x49191BD3L,1L,0x19CA6269L,0x95424768L,0x9EL,0x6F76646FEEC4DCB3L,0x0667319B97982AB3L,8UL,-2L,0x7BL}, // p_1402->g_901
        &p_1402->g_774, // p_1402->g_902
        {4L,1L,0x5495DDA4L,0x238353C1L,0UL,0L,0x279B176135369798L,0UL,-4L,0xE2L}, // p_1402->g_950
        {{0x46F66DF8L,1L,-1L,2UL,1UL,8L,0x60552DAF082E63ACL,4294967287UL,-4L,2UL}}, // p_1402->g_951
        &p_1402->g_78.f0, // p_1402->g_991
        (void*)0, // p_1402->g_996
        &p_1402->g_996, // p_1402->g_995
        {{1L,2L,1L,0x5D282D62L,0UL,-9L,0x3236EF19A7460433L,1UL,5L,0x8CL}}, // p_1402->g_1003
        0x00C19030L, // p_1402->g_1005
        &p_1402->g_393, // p_1402->g_1029
        {{{&p_1402->g_1029,(void*)0,&p_1402->g_1029,(void*)0,&p_1402->g_1029,&p_1402->g_1029,&p_1402->g_1029,&p_1402->g_1029,&p_1402->g_1029},{&p_1402->g_1029,(void*)0,&p_1402->g_1029,(void*)0,&p_1402->g_1029,&p_1402->g_1029,&p_1402->g_1029,&p_1402->g_1029,&p_1402->g_1029},{&p_1402->g_1029,(void*)0,&p_1402->g_1029,(void*)0,&p_1402->g_1029,&p_1402->g_1029,&p_1402->g_1029,&p_1402->g_1029,&p_1402->g_1029},{&p_1402->g_1029,(void*)0,&p_1402->g_1029,(void*)0,&p_1402->g_1029,&p_1402->g_1029,&p_1402->g_1029,&p_1402->g_1029,&p_1402->g_1029}},{{&p_1402->g_1029,(void*)0,&p_1402->g_1029,(void*)0,&p_1402->g_1029,&p_1402->g_1029,&p_1402->g_1029,&p_1402->g_1029,&p_1402->g_1029},{&p_1402->g_1029,(void*)0,&p_1402->g_1029,(void*)0,&p_1402->g_1029,&p_1402->g_1029,&p_1402->g_1029,&p_1402->g_1029,&p_1402->g_1029},{&p_1402->g_1029,(void*)0,&p_1402->g_1029,(void*)0,&p_1402->g_1029,&p_1402->g_1029,&p_1402->g_1029,&p_1402->g_1029,&p_1402->g_1029},{&p_1402->g_1029,(void*)0,&p_1402->g_1029,(void*)0,&p_1402->g_1029,&p_1402->g_1029,&p_1402->g_1029,&p_1402->g_1029,&p_1402->g_1029}},{{&p_1402->g_1029,(void*)0,&p_1402->g_1029,(void*)0,&p_1402->g_1029,&p_1402->g_1029,&p_1402->g_1029,&p_1402->g_1029,&p_1402->g_1029},{&p_1402->g_1029,(void*)0,&p_1402->g_1029,(void*)0,&p_1402->g_1029,&p_1402->g_1029,&p_1402->g_1029,&p_1402->g_1029,&p_1402->g_1029},{&p_1402->g_1029,(void*)0,&p_1402->g_1029,(void*)0,&p_1402->g_1029,&p_1402->g_1029,&p_1402->g_1029,&p_1402->g_1029,&p_1402->g_1029},{&p_1402->g_1029,(void*)0,&p_1402->g_1029,(void*)0,&p_1402->g_1029,&p_1402->g_1029,&p_1402->g_1029,&p_1402->g_1029,&p_1402->g_1029}},{{&p_1402->g_1029,(void*)0,&p_1402->g_1029,(void*)0,&p_1402->g_1029,&p_1402->g_1029,&p_1402->g_1029,&p_1402->g_1029,&p_1402->g_1029},{&p_1402->g_1029,(void*)0,&p_1402->g_1029,(void*)0,&p_1402->g_1029,&p_1402->g_1029,&p_1402->g_1029,&p_1402->g_1029,&p_1402->g_1029},{&p_1402->g_1029,(void*)0,&p_1402->g_1029,(void*)0,&p_1402->g_1029,&p_1402->g_1029,&p_1402->g_1029,&p_1402->g_1029,&p_1402->g_1029},{&p_1402->g_1029,(void*)0,&p_1402->g_1029,(void*)0,&p_1402->g_1029,&p_1402->g_1029,&p_1402->g_1029,&p_1402->g_1029,&p_1402->g_1029}}}, // p_1402->g_1028
        {{{&p_1402->g_1029,(void*)0},{&p_1402->g_1029,(void*)0},{&p_1402->g_1029,(void*)0},{&p_1402->g_1029,(void*)0}},{{&p_1402->g_1029,(void*)0},{&p_1402->g_1029,(void*)0},{&p_1402->g_1029,(void*)0},{&p_1402->g_1029,(void*)0}},{{&p_1402->g_1029,(void*)0},{&p_1402->g_1029,(void*)0},{&p_1402->g_1029,(void*)0},{&p_1402->g_1029,(void*)0}},{{&p_1402->g_1029,(void*)0},{&p_1402->g_1029,(void*)0},{&p_1402->g_1029,(void*)0},{&p_1402->g_1029,(void*)0}}}, // p_1402->g_1030
        &p_1402->g_409[1][2], // p_1402->g_1059
        {{&p_1402->g_1059,&p_1402->g_1059,&p_1402->g_1059,&p_1402->g_1059,&p_1402->g_1059,&p_1402->g_1059},{&p_1402->g_1059,&p_1402->g_1059,&p_1402->g_1059,&p_1402->g_1059,&p_1402->g_1059,&p_1402->g_1059}}, // p_1402->g_1058
        {{0x5E2F33AEL,-10L,0L,0x94811F1FL,253UL,0x003E7D11FB801013L,0x15EC78FC8C36148BL,0x6D3DB6A7L,0x46CE11BAL,0x75L}}, // p_1402->g_1112
        {253UL,253UL,253UL,253UL,253UL,253UL}, // p_1402->g_1119
        &p_1402->g_287, // p_1402->g_1120
        &p_1402->g_798, // p_1402->g_1155
        &p_1402->g_1155, // p_1402->g_1154
        {4294967289UL}, // p_1402->g_1164
        (void*)0, // p_1402->g_1171
        &p_1402->g_1171, // p_1402->g_1170
        {0x09E51CA7L}, // p_1402->g_1217
        {-1L,0x2E9DL,2L,0UL,0UL,5L,0x15EC7525EE02D3E7L,0UL,0x48FE4A5AL,251UL}, // p_1402->g_1248
        0x5CL, // p_1402->g_1249
        3L, // p_1402->g_1253
        0x1E38FAF3L, // p_1402->g_1276
        (-4L), // p_1402->g_1308
        (void*)0, // p_1402->g_1398
        {&p_1402->g_1398,&p_1402->g_1398,&p_1402->g_1398,&p_1402->g_1398,&p_1402->g_1398,&p_1402->g_1398,&p_1402->g_1398,&p_1402->g_1398,&p_1402->g_1398}, // p_1402->g_1397
        sequence_input[get_global_id(0)], // p_1402->global_0_offset
        sequence_input[get_global_id(1)], // p_1402->global_1_offset
        sequence_input[get_global_id(2)], // p_1402->global_2_offset
        sequence_input[get_local_id(0)], // p_1402->local_0_offset
        sequence_input[get_local_id(1)], // p_1402->local_1_offset
        sequence_input[get_local_id(2)], // p_1402->local_2_offset
        sequence_input[get_group_id(0)], // p_1402->group_0_offset
        sequence_input[get_group_id(1)], // p_1402->group_1_offset
        sequence_input[get_group_id(2)], // p_1402->group_2_offset
    };
    c_1403 = c_1404;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1402);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1402->g_3, "p_1402->g_3", print_hash_value);
    transparent_crc(p_1402->g_6, "p_1402->g_6", print_hash_value);
    transparent_crc(p_1402->g_9, "p_1402->g_9", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_1402->g_12[i][j][k], "p_1402->g_12[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1402->g_13, "p_1402->g_13", print_hash_value);
    transparent_crc(p_1402->g_14, "p_1402->g_14", print_hash_value);
    transparent_crc(p_1402->g_34, "p_1402->g_34", print_hash_value);
    transparent_crc(p_1402->g_43.f0, "p_1402->g_43.f0", print_hash_value);
    transparent_crc(p_1402->g_79.f0.f0, "p_1402->g_79.f0.f0", print_hash_value);
    transparent_crc(p_1402->g_79.f0.f1, "p_1402->g_79.f0.f1", print_hash_value);
    transparent_crc(p_1402->g_79.f0.f2, "p_1402->g_79.f0.f2", print_hash_value);
    transparent_crc(p_1402->g_79.f0.f3, "p_1402->g_79.f0.f3", print_hash_value);
    transparent_crc(p_1402->g_79.f0.f4, "p_1402->g_79.f0.f4", print_hash_value);
    transparent_crc(p_1402->g_79.f0.f5, "p_1402->g_79.f0.f5", print_hash_value);
    transparent_crc(p_1402->g_79.f0.f6, "p_1402->g_79.f0.f6", print_hash_value);
    transparent_crc(p_1402->g_79.f0.f7, "p_1402->g_79.f0.f7", print_hash_value);
    transparent_crc(p_1402->g_79.f0.f8, "p_1402->g_79.f0.f8", print_hash_value);
    transparent_crc(p_1402->g_79.f0.f9, "p_1402->g_79.f0.f9", print_hash_value);
    transparent_crc(p_1402->g_109, "p_1402->g_109", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_1402->g_115[i][j], "p_1402->g_115[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1402->g_118, "p_1402->g_118", print_hash_value);
    transparent_crc(p_1402->g_127.f0.f0, "p_1402->g_127.f0.f0", print_hash_value);
    transparent_crc(p_1402->g_127.f0.f1, "p_1402->g_127.f0.f1", print_hash_value);
    transparent_crc(p_1402->g_127.f0.f2, "p_1402->g_127.f0.f2", print_hash_value);
    transparent_crc(p_1402->g_127.f0.f3, "p_1402->g_127.f0.f3", print_hash_value);
    transparent_crc(p_1402->g_127.f0.f4, "p_1402->g_127.f0.f4", print_hash_value);
    transparent_crc(p_1402->g_127.f0.f5, "p_1402->g_127.f0.f5", print_hash_value);
    transparent_crc(p_1402->g_127.f0.f6, "p_1402->g_127.f0.f6", print_hash_value);
    transparent_crc(p_1402->g_127.f0.f7, "p_1402->g_127.f0.f7", print_hash_value);
    transparent_crc(p_1402->g_127.f0.f8, "p_1402->g_127.f0.f8", print_hash_value);
    transparent_crc(p_1402->g_127.f0.f9, "p_1402->g_127.f0.f9", print_hash_value);
    transparent_crc(p_1402->g_152, "p_1402->g_152", print_hash_value);
    transparent_crc(p_1402->g_173, "p_1402->g_173", print_hash_value);
    transparent_crc(p_1402->g_205, "p_1402->g_205", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 3; j++)
        {
            transparent_crc(p_1402->g_214[i][j], "p_1402->g_214[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1402->g_219.f0, "p_1402->g_219.f0", print_hash_value);
    transparent_crc(p_1402->g_219.f1, "p_1402->g_219.f1", print_hash_value);
    transparent_crc(p_1402->g_219.f2, "p_1402->g_219.f2", print_hash_value);
    transparent_crc(p_1402->g_219.f3, "p_1402->g_219.f3", print_hash_value);
    transparent_crc(p_1402->g_219.f4, "p_1402->g_219.f4", print_hash_value);
    transparent_crc(p_1402->g_219.f5, "p_1402->g_219.f5", print_hash_value);
    transparent_crc(p_1402->g_219.f6, "p_1402->g_219.f6", print_hash_value);
    transparent_crc(p_1402->g_219.f7, "p_1402->g_219.f7", print_hash_value);
    transparent_crc(p_1402->g_219.f8, "p_1402->g_219.f8", print_hash_value);
    transparent_crc(p_1402->g_219.f9, "p_1402->g_219.f9", print_hash_value);
    transparent_crc(p_1402->g_249, "p_1402->g_249", print_hash_value);
    transparent_crc(p_1402->g_252, "p_1402->g_252", print_hash_value);
    transparent_crc(p_1402->g_264, "p_1402->g_264", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1402->g_295[i], "p_1402->g_295[i]", print_hash_value);

    }
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_1402->g_296[i], "p_1402->g_296[i]", print_hash_value);

    }
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1402->g_325[i].f0, "p_1402->g_325[i].f0", print_hash_value);

    }
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1402->g_363[i], "p_1402->g_363[i]", print_hash_value);

    }
    transparent_crc(p_1402->g_393.f0, "p_1402->g_393.f0", print_hash_value);
    transparent_crc(p_1402->g_403, "p_1402->g_403", print_hash_value);
    transparent_crc(p_1402->g_406, "p_1402->g_406", print_hash_value);
    transparent_crc(p_1402->g_422, "p_1402->g_422", print_hash_value);
    transparent_crc(p_1402->g_423, "p_1402->g_423", print_hash_value);
    transparent_crc(p_1402->g_472.f0, "p_1402->g_472.f0", print_hash_value);
    transparent_crc(p_1402->g_472.f1, "p_1402->g_472.f1", print_hash_value);
    transparent_crc(p_1402->g_472.f2, "p_1402->g_472.f2", print_hash_value);
    transparent_crc(p_1402->g_472.f3, "p_1402->g_472.f3", print_hash_value);
    transparent_crc(p_1402->g_472.f4, "p_1402->g_472.f4", print_hash_value);
    transparent_crc(p_1402->g_472.f5, "p_1402->g_472.f5", print_hash_value);
    transparent_crc(p_1402->g_472.f6, "p_1402->g_472.f6", print_hash_value);
    transparent_crc(p_1402->g_472.f7, "p_1402->g_472.f7", print_hash_value);
    transparent_crc(p_1402->g_472.f8, "p_1402->g_472.f8", print_hash_value);
    transparent_crc(p_1402->g_472.f9, "p_1402->g_472.f9", print_hash_value);
    transparent_crc(p_1402->g_499.f0, "p_1402->g_499.f0", print_hash_value);
    transparent_crc(p_1402->g_499.f1, "p_1402->g_499.f1", print_hash_value);
    transparent_crc(p_1402->g_499.f2, "p_1402->g_499.f2", print_hash_value);
    transparent_crc(p_1402->g_499.f3, "p_1402->g_499.f3", print_hash_value);
    transparent_crc(p_1402->g_499.f4, "p_1402->g_499.f4", print_hash_value);
    transparent_crc(p_1402->g_499.f5, "p_1402->g_499.f5", print_hash_value);
    transparent_crc(p_1402->g_499.f6, "p_1402->g_499.f6", print_hash_value);
    transparent_crc(p_1402->g_499.f7, "p_1402->g_499.f7", print_hash_value);
    transparent_crc(p_1402->g_499.f8, "p_1402->g_499.f8", print_hash_value);
    transparent_crc(p_1402->g_499.f9, "p_1402->g_499.f9", print_hash_value);
    transparent_crc(p_1402->g_502.f0, "p_1402->g_502.f0", print_hash_value);
    transparent_crc(p_1402->g_502.f1, "p_1402->g_502.f1", print_hash_value);
    transparent_crc(p_1402->g_502.f2, "p_1402->g_502.f2", print_hash_value);
    transparent_crc(p_1402->g_502.f3, "p_1402->g_502.f3", print_hash_value);
    transparent_crc(p_1402->g_502.f4, "p_1402->g_502.f4", print_hash_value);
    transparent_crc(p_1402->g_502.f5, "p_1402->g_502.f5", print_hash_value);
    transparent_crc(p_1402->g_502.f6, "p_1402->g_502.f6", print_hash_value);
    transparent_crc(p_1402->g_502.f7, "p_1402->g_502.f7", print_hash_value);
    transparent_crc(p_1402->g_502.f8, "p_1402->g_502.f8", print_hash_value);
    transparent_crc(p_1402->g_502.f9, "p_1402->g_502.f9", print_hash_value);
    transparent_crc(p_1402->g_520.f0, "p_1402->g_520.f0", print_hash_value);
    transparent_crc(p_1402->g_520.f1, "p_1402->g_520.f1", print_hash_value);
    transparent_crc(p_1402->g_520.f2, "p_1402->g_520.f2", print_hash_value);
    transparent_crc(p_1402->g_520.f3, "p_1402->g_520.f3", print_hash_value);
    transparent_crc(p_1402->g_520.f4, "p_1402->g_520.f4", print_hash_value);
    transparent_crc(p_1402->g_520.f5, "p_1402->g_520.f5", print_hash_value);
    transparent_crc(p_1402->g_520.f6, "p_1402->g_520.f6", print_hash_value);
    transparent_crc(p_1402->g_520.f7, "p_1402->g_520.f7", print_hash_value);
    transparent_crc(p_1402->g_520.f8, "p_1402->g_520.f8", print_hash_value);
    transparent_crc(p_1402->g_520.f9, "p_1402->g_520.f9", print_hash_value);
    transparent_crc(p_1402->g_558.f0.f0, "p_1402->g_558.f0.f0", print_hash_value);
    transparent_crc(p_1402->g_558.f0.f1, "p_1402->g_558.f0.f1", print_hash_value);
    transparent_crc(p_1402->g_558.f0.f2, "p_1402->g_558.f0.f2", print_hash_value);
    transparent_crc(p_1402->g_558.f0.f3, "p_1402->g_558.f0.f3", print_hash_value);
    transparent_crc(p_1402->g_558.f0.f4, "p_1402->g_558.f0.f4", print_hash_value);
    transparent_crc(p_1402->g_558.f0.f5, "p_1402->g_558.f0.f5", print_hash_value);
    transparent_crc(p_1402->g_558.f0.f6, "p_1402->g_558.f0.f6", print_hash_value);
    transparent_crc(p_1402->g_558.f0.f7, "p_1402->g_558.f0.f7", print_hash_value);
    transparent_crc(p_1402->g_558.f0.f8, "p_1402->g_558.f0.f8", print_hash_value);
    transparent_crc(p_1402->g_558.f0.f9, "p_1402->g_558.f0.f9", print_hash_value);
    transparent_crc(p_1402->g_566, "p_1402->g_566", print_hash_value);
    transparent_crc(p_1402->g_649.f0.f0, "p_1402->g_649.f0.f0", print_hash_value);
    transparent_crc(p_1402->g_649.f0.f1, "p_1402->g_649.f0.f1", print_hash_value);
    transparent_crc(p_1402->g_649.f0.f2, "p_1402->g_649.f0.f2", print_hash_value);
    transparent_crc(p_1402->g_649.f0.f3, "p_1402->g_649.f0.f3", print_hash_value);
    transparent_crc(p_1402->g_649.f0.f4, "p_1402->g_649.f0.f4", print_hash_value);
    transparent_crc(p_1402->g_649.f0.f5, "p_1402->g_649.f0.f5", print_hash_value);
    transparent_crc(p_1402->g_649.f0.f6, "p_1402->g_649.f0.f6", print_hash_value);
    transparent_crc(p_1402->g_649.f0.f7, "p_1402->g_649.f0.f7", print_hash_value);
    transparent_crc(p_1402->g_649.f0.f8, "p_1402->g_649.f0.f8", print_hash_value);
    transparent_crc(p_1402->g_649.f0.f9, "p_1402->g_649.f0.f9", print_hash_value);
    transparent_crc(p_1402->g_652.f0.f0, "p_1402->g_652.f0.f0", print_hash_value);
    transparent_crc(p_1402->g_652.f0.f1, "p_1402->g_652.f0.f1", print_hash_value);
    transparent_crc(p_1402->g_652.f0.f2, "p_1402->g_652.f0.f2", print_hash_value);
    transparent_crc(p_1402->g_652.f0.f3, "p_1402->g_652.f0.f3", print_hash_value);
    transparent_crc(p_1402->g_652.f0.f4, "p_1402->g_652.f0.f4", print_hash_value);
    transparent_crc(p_1402->g_652.f0.f5, "p_1402->g_652.f0.f5", print_hash_value);
    transparent_crc(p_1402->g_652.f0.f6, "p_1402->g_652.f0.f6", print_hash_value);
    transparent_crc(p_1402->g_652.f0.f7, "p_1402->g_652.f0.f7", print_hash_value);
    transparent_crc(p_1402->g_652.f0.f8, "p_1402->g_652.f0.f8", print_hash_value);
    transparent_crc(p_1402->g_652.f0.f9, "p_1402->g_652.f0.f9", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 8; j++)
        {
            for (k = 0; k < 1; k++)
            {
                transparent_crc(p_1402->g_678[i][j][k].f0, "p_1402->g_678[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_1402->g_724, "p_1402->g_724", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1402->g_745[i].f0, "p_1402->g_745[i].f0", print_hash_value);
        transparent_crc(p_1402->g_745[i].f1, "p_1402->g_745[i].f1", print_hash_value);
        transparent_crc(p_1402->g_745[i].f2, "p_1402->g_745[i].f2", print_hash_value);
        transparent_crc(p_1402->g_745[i].f3, "p_1402->g_745[i].f3", print_hash_value);
        transparent_crc(p_1402->g_745[i].f4, "p_1402->g_745[i].f4", print_hash_value);
        transparent_crc(p_1402->g_745[i].f5, "p_1402->g_745[i].f5", print_hash_value);
        transparent_crc(p_1402->g_745[i].f6, "p_1402->g_745[i].f6", print_hash_value);
        transparent_crc(p_1402->g_745[i].f7, "p_1402->g_745[i].f7", print_hash_value);
        transparent_crc(p_1402->g_745[i].f8, "p_1402->g_745[i].f8", print_hash_value);
        transparent_crc(p_1402->g_745[i].f9, "p_1402->g_745[i].f9", print_hash_value);

    }
    transparent_crc(p_1402->g_760, "p_1402->g_760", print_hash_value);
    transparent_crc(p_1402->g_764.f0, "p_1402->g_764.f0", print_hash_value);
    transparent_crc(p_1402->g_764.f1, "p_1402->g_764.f1", print_hash_value);
    transparent_crc(p_1402->g_764.f2, "p_1402->g_764.f2", print_hash_value);
    transparent_crc(p_1402->g_764.f3, "p_1402->g_764.f3", print_hash_value);
    transparent_crc(p_1402->g_764.f4, "p_1402->g_764.f4", print_hash_value);
    transparent_crc(p_1402->g_764.f5, "p_1402->g_764.f5", print_hash_value);
    transparent_crc(p_1402->g_764.f6, "p_1402->g_764.f6", print_hash_value);
    transparent_crc(p_1402->g_764.f7, "p_1402->g_764.f7", print_hash_value);
    transparent_crc(p_1402->g_764.f8, "p_1402->g_764.f8", print_hash_value);
    transparent_crc(p_1402->g_764.f9, "p_1402->g_764.f9", print_hash_value);
    transparent_crc(p_1402->g_772.f0, "p_1402->g_772.f0", print_hash_value);
    transparent_crc(p_1402->g_772.f1, "p_1402->g_772.f1", print_hash_value);
    transparent_crc(p_1402->g_772.f2, "p_1402->g_772.f2", print_hash_value);
    transparent_crc(p_1402->g_772.f3, "p_1402->g_772.f3", print_hash_value);
    transparent_crc(p_1402->g_772.f4, "p_1402->g_772.f4", print_hash_value);
    transparent_crc(p_1402->g_772.f5, "p_1402->g_772.f5", print_hash_value);
    transparent_crc(p_1402->g_772.f6, "p_1402->g_772.f6", print_hash_value);
    transparent_crc(p_1402->g_772.f7, "p_1402->g_772.f7", print_hash_value);
    transparent_crc(p_1402->g_772.f8, "p_1402->g_772.f8", print_hash_value);
    transparent_crc(p_1402->g_772.f9, "p_1402->g_772.f9", print_hash_value);
    transparent_crc(p_1402->g_774.f0, "p_1402->g_774.f0", print_hash_value);
    transparent_crc(p_1402->g_774.f1, "p_1402->g_774.f1", print_hash_value);
    transparent_crc(p_1402->g_774.f2, "p_1402->g_774.f2", print_hash_value);
    transparent_crc(p_1402->g_774.f3, "p_1402->g_774.f3", print_hash_value);
    transparent_crc(p_1402->g_774.f4, "p_1402->g_774.f4", print_hash_value);
    transparent_crc(p_1402->g_774.f5, "p_1402->g_774.f5", print_hash_value);
    transparent_crc(p_1402->g_774.f6, "p_1402->g_774.f6", print_hash_value);
    transparent_crc(p_1402->g_774.f7, "p_1402->g_774.f7", print_hash_value);
    transparent_crc(p_1402->g_774.f8, "p_1402->g_774.f8", print_hash_value);
    transparent_crc(p_1402->g_774.f9, "p_1402->g_774.f9", print_hash_value);
    transparent_crc(p_1402->g_796.f0, "p_1402->g_796.f0", print_hash_value);
    transparent_crc(p_1402->g_796.f1, "p_1402->g_796.f1", print_hash_value);
    transparent_crc(p_1402->g_796.f2, "p_1402->g_796.f2", print_hash_value);
    transparent_crc(p_1402->g_796.f3, "p_1402->g_796.f3", print_hash_value);
    transparent_crc(p_1402->g_796.f4, "p_1402->g_796.f4", print_hash_value);
    transparent_crc(p_1402->g_796.f5, "p_1402->g_796.f5", print_hash_value);
    transparent_crc(p_1402->g_796.f6, "p_1402->g_796.f6", print_hash_value);
    transparent_crc(p_1402->g_796.f7, "p_1402->g_796.f7", print_hash_value);
    transparent_crc(p_1402->g_796.f8, "p_1402->g_796.f8", print_hash_value);
    transparent_crc(p_1402->g_796.f9, "p_1402->g_796.f9", print_hash_value);
    transparent_crc(p_1402->g_813.f0.f0, "p_1402->g_813.f0.f0", print_hash_value);
    transparent_crc(p_1402->g_813.f0.f1, "p_1402->g_813.f0.f1", print_hash_value);
    transparent_crc(p_1402->g_813.f0.f2, "p_1402->g_813.f0.f2", print_hash_value);
    transparent_crc(p_1402->g_813.f0.f3, "p_1402->g_813.f0.f3", print_hash_value);
    transparent_crc(p_1402->g_813.f0.f4, "p_1402->g_813.f0.f4", print_hash_value);
    transparent_crc(p_1402->g_813.f0.f5, "p_1402->g_813.f0.f5", print_hash_value);
    transparent_crc(p_1402->g_813.f0.f6, "p_1402->g_813.f0.f6", print_hash_value);
    transparent_crc(p_1402->g_813.f0.f7, "p_1402->g_813.f0.f7", print_hash_value);
    transparent_crc(p_1402->g_813.f0.f8, "p_1402->g_813.f0.f8", print_hash_value);
    transparent_crc(p_1402->g_813.f0.f9, "p_1402->g_813.f0.f9", print_hash_value);
    transparent_crc(p_1402->g_852.f0, "p_1402->g_852.f0", print_hash_value);
    transparent_crc(p_1402->g_852.f1, "p_1402->g_852.f1", print_hash_value);
    transparent_crc(p_1402->g_852.f2, "p_1402->g_852.f2", print_hash_value);
    transparent_crc(p_1402->g_852.f3, "p_1402->g_852.f3", print_hash_value);
    transparent_crc(p_1402->g_852.f4, "p_1402->g_852.f4", print_hash_value);
    transparent_crc(p_1402->g_852.f5, "p_1402->g_852.f5", print_hash_value);
    transparent_crc(p_1402->g_852.f6, "p_1402->g_852.f6", print_hash_value);
    transparent_crc(p_1402->g_852.f7, "p_1402->g_852.f7", print_hash_value);
    transparent_crc(p_1402->g_852.f8, "p_1402->g_852.f8", print_hash_value);
    transparent_crc(p_1402->g_852.f9, "p_1402->g_852.f9", print_hash_value);
    transparent_crc(p_1402->g_887, "p_1402->g_887", print_hash_value);
    transparent_crc(p_1402->g_898, "p_1402->g_898", print_hash_value);
    transparent_crc(p_1402->g_901.f0, "p_1402->g_901.f0", print_hash_value);
    transparent_crc(p_1402->g_901.f1, "p_1402->g_901.f1", print_hash_value);
    transparent_crc(p_1402->g_901.f2, "p_1402->g_901.f2", print_hash_value);
    transparent_crc(p_1402->g_901.f3, "p_1402->g_901.f3", print_hash_value);
    transparent_crc(p_1402->g_901.f4, "p_1402->g_901.f4", print_hash_value);
    transparent_crc(p_1402->g_901.f5, "p_1402->g_901.f5", print_hash_value);
    transparent_crc(p_1402->g_901.f6, "p_1402->g_901.f6", print_hash_value);
    transparent_crc(p_1402->g_901.f7, "p_1402->g_901.f7", print_hash_value);
    transparent_crc(p_1402->g_901.f8, "p_1402->g_901.f8", print_hash_value);
    transparent_crc(p_1402->g_901.f9, "p_1402->g_901.f9", print_hash_value);
    transparent_crc(p_1402->g_950.f0, "p_1402->g_950.f0", print_hash_value);
    transparent_crc(p_1402->g_950.f1, "p_1402->g_950.f1", print_hash_value);
    transparent_crc(p_1402->g_950.f2, "p_1402->g_950.f2", print_hash_value);
    transparent_crc(p_1402->g_950.f3, "p_1402->g_950.f3", print_hash_value);
    transparent_crc(p_1402->g_950.f4, "p_1402->g_950.f4", print_hash_value);
    transparent_crc(p_1402->g_950.f5, "p_1402->g_950.f5", print_hash_value);
    transparent_crc(p_1402->g_950.f6, "p_1402->g_950.f6", print_hash_value);
    transparent_crc(p_1402->g_950.f7, "p_1402->g_950.f7", print_hash_value);
    transparent_crc(p_1402->g_950.f8, "p_1402->g_950.f8", print_hash_value);
    transparent_crc(p_1402->g_950.f9, "p_1402->g_950.f9", print_hash_value);
    transparent_crc(p_1402->g_951.f0.f0, "p_1402->g_951.f0.f0", print_hash_value);
    transparent_crc(p_1402->g_951.f0.f1, "p_1402->g_951.f0.f1", print_hash_value);
    transparent_crc(p_1402->g_951.f0.f2, "p_1402->g_951.f0.f2", print_hash_value);
    transparent_crc(p_1402->g_951.f0.f3, "p_1402->g_951.f0.f3", print_hash_value);
    transparent_crc(p_1402->g_951.f0.f4, "p_1402->g_951.f0.f4", print_hash_value);
    transparent_crc(p_1402->g_951.f0.f5, "p_1402->g_951.f0.f5", print_hash_value);
    transparent_crc(p_1402->g_951.f0.f6, "p_1402->g_951.f0.f6", print_hash_value);
    transparent_crc(p_1402->g_951.f0.f7, "p_1402->g_951.f0.f7", print_hash_value);
    transparent_crc(p_1402->g_951.f0.f8, "p_1402->g_951.f0.f8", print_hash_value);
    transparent_crc(p_1402->g_951.f0.f9, "p_1402->g_951.f0.f9", print_hash_value);
    transparent_crc(p_1402->g_1003.f0.f0, "p_1402->g_1003.f0.f0", print_hash_value);
    transparent_crc(p_1402->g_1003.f0.f1, "p_1402->g_1003.f0.f1", print_hash_value);
    transparent_crc(p_1402->g_1003.f0.f2, "p_1402->g_1003.f0.f2", print_hash_value);
    transparent_crc(p_1402->g_1003.f0.f3, "p_1402->g_1003.f0.f3", print_hash_value);
    transparent_crc(p_1402->g_1003.f0.f4, "p_1402->g_1003.f0.f4", print_hash_value);
    transparent_crc(p_1402->g_1003.f0.f5, "p_1402->g_1003.f0.f5", print_hash_value);
    transparent_crc(p_1402->g_1003.f0.f6, "p_1402->g_1003.f0.f6", print_hash_value);
    transparent_crc(p_1402->g_1003.f0.f7, "p_1402->g_1003.f0.f7", print_hash_value);
    transparent_crc(p_1402->g_1003.f0.f8, "p_1402->g_1003.f0.f8", print_hash_value);
    transparent_crc(p_1402->g_1003.f0.f9, "p_1402->g_1003.f0.f9", print_hash_value);
    transparent_crc(p_1402->g_1005, "p_1402->g_1005", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_1402->g_1119[i], "p_1402->g_1119[i]", print_hash_value);

    }
    transparent_crc(p_1402->g_1164.f0, "p_1402->g_1164.f0", print_hash_value);
    transparent_crc(p_1402->g_1217.f0, "p_1402->g_1217.f0", print_hash_value);
    transparent_crc(p_1402->g_1248.f0, "p_1402->g_1248.f0", print_hash_value);
    transparent_crc(p_1402->g_1248.f1, "p_1402->g_1248.f1", print_hash_value);
    transparent_crc(p_1402->g_1248.f2, "p_1402->g_1248.f2", print_hash_value);
    transparent_crc(p_1402->g_1248.f3, "p_1402->g_1248.f3", print_hash_value);
    transparent_crc(p_1402->g_1248.f4, "p_1402->g_1248.f4", print_hash_value);
    transparent_crc(p_1402->g_1248.f5, "p_1402->g_1248.f5", print_hash_value);
    transparent_crc(p_1402->g_1248.f6, "p_1402->g_1248.f6", print_hash_value);
    transparent_crc(p_1402->g_1248.f7, "p_1402->g_1248.f7", print_hash_value);
    transparent_crc(p_1402->g_1248.f8, "p_1402->g_1248.f8", print_hash_value);
    transparent_crc(p_1402->g_1248.f9, "p_1402->g_1248.f9", print_hash_value);
    transparent_crc(p_1402->g_1249, "p_1402->g_1249", print_hash_value);
    transparent_crc(p_1402->g_1253, "p_1402->g_1253", print_hash_value);
    transparent_crc(p_1402->g_1276, "p_1402->g_1276", print_hash_value);
    transparent_crc(p_1402->g_1308, "p_1402->g_1308", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
