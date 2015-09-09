// ---atomic_reductions ---fake_divergence -g 1,47,77 -l 1,1,1
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


// Seed: 108

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   volatile int32_t  f0;
   uint64_t  f1;
};

union U1 {
   int32_t  f0;
   volatile int64_t  f1;
};

struct S2 {
    int8_t g_9;
    int32_t g_75;
    uint32_t g_76[4][9];
    int16_t g_85;
    volatile int16_t g_87;
    volatile int16_t * volatile g_86;
    int8_t g_91;
    int8_t *g_102[4][4];
    uint64_t g_116;
    union U1 g_119;
    volatile union U1 g_126[7][9][2];
    int32_t g_135[1];
    int32_t *g_134;
    uint16_t g_158;
    struct S0 g_162;
    struct S0 * volatile g_164[8];
    struct S0 g_166;
    uint32_t g_188;
    struct S0 *g_231;
    struct S0 ** volatile g_230;
    int8_t g_284;
    struct S0 g_287;
    struct S0 g_290[2][7][4];
    struct S0 ** volatile g_310;
    uint8_t g_319;
    union U1 g_345[4];
    struct S0 **g_361[6][10];
    int64_t g_366;
    int32_t ** volatile g_374;
    int32_t ** volatile g_383;
    int32_t ** volatile g_384;
    int32_t g_420[8][5];
    volatile struct S0 g_421;
    volatile struct S0 g_426;
    volatile struct S0 * volatile g_427;
    uint8_t g_458;
    uint8_t g_460[7][5];
    int32_t ** volatile g_488;
    union U1 g_522;
    uint16_t *g_531;
    uint16_t * volatile *g_530;
    uint16_t * volatile **g_529;
    uint64_t g_533;
    uint16_t **g_566;
    uint8_t *g_570;
    uint8_t * volatile *g_569;
    int32_t * volatile g_574;
    uint32_t g_575;
    int32_t *g_578;
    int32_t ** volatile g_577;
    volatile union U1 g_616;
    uint32_t g_618;
    uint32_t g_630;
    volatile struct S0 g_686[9][10][2];
    volatile struct S0 g_740;
    struct S0 g_743;
    volatile union U1 g_772;
    int32_t ** volatile g_803[5];
    int32_t ** volatile g_804;
    int32_t ** volatile g_805;
    int32_t ** volatile g_806;
    volatile uint16_t g_809[6];
    struct S0 ** volatile g_832;
    int32_t * volatile g_842;
    int64_t g_850;
    uint8_t g_871;
    volatile union U1 g_878;
    volatile int16_t g_889;
    volatile int16_t *g_888[7];
    volatile int16_t * volatile *g_887;
    int32_t * volatile g_894;
    int16_t g_912[2];
    uint64_t *g_934;
    int32_t g_952;
    int32_t g_959[3][9];
    union U1 *g_1004;
    volatile union U1 *g_1020;
    volatile uint32_t *g_1028;
    volatile uint32_t * volatile *g_1027;
    int8_t g_1064;
    int32_t * volatile g_1142;
    int8_t g_1185;
    uint16_t g_1191;
    struct S0 g_1200[6];
    int32_t * volatile g_1232;
    struct S0 g_1269;
    struct S0 g_1270;
    int32_t ** volatile g_1290;
    int64_t g_1338;
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
    __local volatile uint32_t *l_atomic_reduction;
    __global volatile uint32_t *g_atomic_reduction;
};


/* --- FORWARD DECLARATIONS --- */
uint16_t  func_1(struct S2 * p_1352);
uint32_t  func_4(int16_t  p_5, int8_t  p_6, struct S2 * p_1352);
uint16_t  func_10(uint32_t  p_11, uint8_t  p_12, struct S2 * p_1352);
int32_t  func_14(uint8_t  p_15, uint32_t  p_16, uint32_t  p_17, uint64_t  p_18, int64_t  p_19, struct S2 * p_1352);
uint32_t  func_21(int64_t  p_22, uint8_t  p_23, uint32_t  p_24, int32_t  p_25, int64_t  p_26, struct S2 * p_1352);
uint64_t  func_27(uint32_t  p_28, uint16_t  p_29, struct S2 * p_1352);
uint64_t  func_42(uint8_t  p_43, uint32_t  p_44, uint8_t  p_45, uint64_t  p_46, struct S2 * p_1352);
int64_t  func_49(uint64_t  p_50, uint8_t  p_51, int32_t  p_52, struct S2 * p_1352);
uint16_t  func_55(uint32_t  p_56, uint64_t  p_57, uint32_t  p_58, struct S2 * p_1352);
uint8_t  func_61(int32_t  p_62, int64_t  p_63, uint32_t  p_64, int64_t  p_65, struct S2 * p_1352);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint16_t  func_1(struct S2 * p_1352)
{ /* block id: 4 */
    uint8_t l_13 = 0xC7L;
    int32_t l_20 = (-1L);
    int32_t l_941 = 0x5CD2D6E8L;
    int16_t *l_942 = &p_1352->g_85;
    int32_t *l_958 = &p_1352->g_959[1][8];
    uint32_t l_973[9][2] = {{1UL,1UL},{1UL,1UL},{1UL,1UL},{1UL,1UL},{1UL,1UL},{1UL,1UL},{1UL,1UL},{1UL,1UL},{1UL,1UL}};
    int32_t l_983 = (-6L);
    uint32_t l_992 = 0xE4B35186L;
    uint16_t l_1007 = 0x4845L;
    uint64_t l_1015 = 0xA94D22DF305A1978L;
    union U1 **l_1056[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int64_t l_1111[9] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
    uint16_t l_1140 = 8UL;
    uint32_t *l_1272[10] = {&p_1352->g_618,&p_1352->g_188,&p_1352->g_618,&p_1352->g_618,&p_1352->g_188,&p_1352->g_618,&p_1352->g_618,&p_1352->g_188,&p_1352->g_618,&p_1352->g_618};
    uint32_t **l_1271[6][1][2] = {{{&l_1272[9],&l_1272[3]}},{{&l_1272[9],&l_1272[3]}},{{&l_1272[9],&l_1272[3]}},{{&l_1272[9],&l_1272[3]}},{{&l_1272[9],&l_1272[3]}},{{&l_1272[9],&l_1272[3]}}};
    struct S0 ***l_1319[10][7] = {{&p_1352->g_361[3][2],&p_1352->g_361[2][2],&p_1352->g_361[5][0],&p_1352->g_361[1][4],&p_1352->g_361[3][7],&p_1352->g_361[4][9],&p_1352->g_361[1][7]},{&p_1352->g_361[3][2],&p_1352->g_361[2][2],&p_1352->g_361[5][0],&p_1352->g_361[1][4],&p_1352->g_361[3][7],&p_1352->g_361[4][9],&p_1352->g_361[1][7]},{&p_1352->g_361[3][2],&p_1352->g_361[2][2],&p_1352->g_361[5][0],&p_1352->g_361[1][4],&p_1352->g_361[3][7],&p_1352->g_361[4][9],&p_1352->g_361[1][7]},{&p_1352->g_361[3][2],&p_1352->g_361[2][2],&p_1352->g_361[5][0],&p_1352->g_361[1][4],&p_1352->g_361[3][7],&p_1352->g_361[4][9],&p_1352->g_361[1][7]},{&p_1352->g_361[3][2],&p_1352->g_361[2][2],&p_1352->g_361[5][0],&p_1352->g_361[1][4],&p_1352->g_361[3][7],&p_1352->g_361[4][9],&p_1352->g_361[1][7]},{&p_1352->g_361[3][2],&p_1352->g_361[2][2],&p_1352->g_361[5][0],&p_1352->g_361[1][4],&p_1352->g_361[3][7],&p_1352->g_361[4][9],&p_1352->g_361[1][7]},{&p_1352->g_361[3][2],&p_1352->g_361[2][2],&p_1352->g_361[5][0],&p_1352->g_361[1][4],&p_1352->g_361[3][7],&p_1352->g_361[4][9],&p_1352->g_361[1][7]},{&p_1352->g_361[3][2],&p_1352->g_361[2][2],&p_1352->g_361[5][0],&p_1352->g_361[1][4],&p_1352->g_361[3][7],&p_1352->g_361[4][9],&p_1352->g_361[1][7]},{&p_1352->g_361[3][2],&p_1352->g_361[2][2],&p_1352->g_361[5][0],&p_1352->g_361[1][4],&p_1352->g_361[3][7],&p_1352->g_361[4][9],&p_1352->g_361[1][7]},{&p_1352->g_361[3][2],&p_1352->g_361[2][2],&p_1352->g_361[5][0],&p_1352->g_361[1][4],&p_1352->g_361[3][7],&p_1352->g_361[4][9],&p_1352->g_361[1][7]}};
    uint16_t l_1321[6] = {0xAA3AL,0xE9ABL,0xAA3AL,0xAA3AL,0xE9ABL,0xAA3AL};
    int32_t l_1341[2][3][6] = {{{0x320626B0L,(-1L),0x48F8343AL,1L,0x48F8343AL,(-1L)},{0x320626B0L,(-1L),0x48F8343AL,1L,0x48F8343AL,(-1L)},{0x320626B0L,(-1L),0x48F8343AL,1L,0x48F8343AL,(-1L)}},{{0x320626B0L,(-1L),0x48F8343AL,1L,0x48F8343AL,(-1L)},{0x320626B0L,(-1L),0x48F8343AL,1L,0x48F8343AL,(-1L)},{0x320626B0L,(-1L),0x48F8343AL,1L,0x48F8343AL,(-1L)}}};
    uint32_t l_1351 = 0xD01BE73BL;
    int i, j, k;
    return l_1351;
}


/* ------------------------------------------ */
/* 
 * reads : p_1352->g_135
 * writes:
 */
uint32_t  func_4(int16_t  p_5, int8_t  p_6, struct S2 * p_1352)
{ /* block id: 417 */
    int16_t l_943 = (-7L);
    int32_t l_944 = 1L;
    int32_t *l_945 = &p_1352->g_135[0];
    int32_t l_946 = 0x40F1E241L;
    int32_t *l_947 = &p_1352->g_135[0];
    int32_t *l_948 = &p_1352->g_135[0];
    int32_t *l_949[4][1] = {{&l_944},{&l_944},{&l_944},{&l_944}};
    int32_t l_950[6][3][9] = {{{0x33158D8BL,0x2A0E20C4L,0x5F86B45CL,0L,0x2A0E20C4L,0L,0x5F86B45CL,0x2A0E20C4L,0x33158D8BL},{0x33158D8BL,0x2A0E20C4L,0x5F86B45CL,0L,0x2A0E20C4L,0L,0x5F86B45CL,0x2A0E20C4L,0x33158D8BL},{0x33158D8BL,0x2A0E20C4L,0x5F86B45CL,0L,0x2A0E20C4L,0L,0x5F86B45CL,0x2A0E20C4L,0x33158D8BL}},{{0x33158D8BL,0x2A0E20C4L,0x5F86B45CL,0L,0x2A0E20C4L,0L,0x5F86B45CL,0x2A0E20C4L,0x33158D8BL},{0x33158D8BL,0x2A0E20C4L,0x5F86B45CL,0L,0x2A0E20C4L,0L,0x5F86B45CL,0x2A0E20C4L,0x33158D8BL},{0x33158D8BL,0x2A0E20C4L,0x5F86B45CL,0L,0x2A0E20C4L,0L,0x5F86B45CL,0x2A0E20C4L,0x33158D8BL}},{{0x33158D8BL,0x2A0E20C4L,0x5F86B45CL,0L,0x2A0E20C4L,0L,0x5F86B45CL,0x2A0E20C4L,0x33158D8BL},{0x33158D8BL,0x2A0E20C4L,0x5F86B45CL,0L,0x2A0E20C4L,0L,0x5F86B45CL,0x2A0E20C4L,0x33158D8BL},{0x33158D8BL,0x2A0E20C4L,0x5F86B45CL,0L,0x2A0E20C4L,0L,0x5F86B45CL,0x2A0E20C4L,0x33158D8BL}},{{0x33158D8BL,0x2A0E20C4L,0x5F86B45CL,0L,0x2A0E20C4L,0L,0x5F86B45CL,0x2A0E20C4L,0x33158D8BL},{0x33158D8BL,0x2A0E20C4L,0x5F86B45CL,0L,0x2A0E20C4L,0L,0x5F86B45CL,0x2A0E20C4L,0x33158D8BL},{0x33158D8BL,0x2A0E20C4L,0x5F86B45CL,0L,0x2A0E20C4L,0L,0x5F86B45CL,0x2A0E20C4L,0x33158D8BL}},{{0x33158D8BL,0x2A0E20C4L,0x5F86B45CL,0L,0x2A0E20C4L,0L,0x5F86B45CL,0x2A0E20C4L,0x33158D8BL},{0x33158D8BL,0x2A0E20C4L,0x5F86B45CL,0L,0x2A0E20C4L,0L,0x5F86B45CL,0x2A0E20C4L,0x33158D8BL},{0x33158D8BL,0x2A0E20C4L,0x5F86B45CL,0L,0x2A0E20C4L,0L,0x5F86B45CL,0x2A0E20C4L,0x33158D8BL}},{{0x33158D8BL,0x2A0E20C4L,0x5F86B45CL,0L,0x2A0E20C4L,0L,0x5F86B45CL,0x2A0E20C4L,0x33158D8BL},{0x33158D8BL,0x2A0E20C4L,0x5F86B45CL,0L,0x2A0E20C4L,0L,0x5F86B45CL,0x2A0E20C4L,0x33158D8BL},{0x33158D8BL,0x2A0E20C4L,0x5F86B45CL,0L,0x2A0E20C4L,0L,0x5F86B45CL,0x2A0E20C4L,0x33158D8BL}}};
    int32_t l_951[10][9] = {{0x19CA8CCCL,5L,0x1020942AL,0x2F3B8F4FL,5L,0x2F3B8F4FL,0x1020942AL,5L,0x19CA8CCCL},{0x19CA8CCCL,5L,0x1020942AL,0x2F3B8F4FL,5L,0x2F3B8F4FL,0x1020942AL,5L,0x19CA8CCCL},{0x19CA8CCCL,5L,0x1020942AL,0x2F3B8F4FL,5L,0x2F3B8F4FL,0x1020942AL,5L,0x19CA8CCCL},{0x19CA8CCCL,5L,0x1020942AL,0x2F3B8F4FL,5L,0x2F3B8F4FL,0x1020942AL,5L,0x19CA8CCCL},{0x19CA8CCCL,5L,0x1020942AL,0x2F3B8F4FL,5L,0x2F3B8F4FL,0x1020942AL,5L,0x19CA8CCCL},{0x19CA8CCCL,5L,0x1020942AL,0x2F3B8F4FL,5L,0x2F3B8F4FL,0x1020942AL,5L,0x19CA8CCCL},{0x19CA8CCCL,5L,0x1020942AL,0x2F3B8F4FL,5L,0x2F3B8F4FL,0x1020942AL,5L,0x19CA8CCCL},{0x19CA8CCCL,5L,0x1020942AL,0x2F3B8F4FL,5L,0x2F3B8F4FL,0x1020942AL,5L,0x19CA8CCCL},{0x19CA8CCCL,5L,0x1020942AL,0x2F3B8F4FL,5L,0x2F3B8F4FL,0x1020942AL,5L,0x19CA8CCCL},{0x19CA8CCCL,5L,0x1020942AL,0x2F3B8F4FL,5L,0x2F3B8F4FL,0x1020942AL,5L,0x19CA8CCCL}};
    int16_t l_953[5][4] = {{7L,0x70FAL,(-1L),0x70FAL},{7L,0x70FAL,(-1L),0x70FAL},{7L,0x70FAL,(-1L),0x70FAL},{7L,0x70FAL,(-1L),0x70FAL},{7L,0x70FAL,(-1L),0x70FAL}};
    int8_t l_954 = 0x77L;
    uint32_t l_955 = 0UL;
    int i, j, k;
    ++l_955;
    return (*l_945);
}


/* ------------------------------------------ */
/* 
 * reads : p_1352->g_894 p_1352->g_366 p_1352->g_809 p_1352->g_91 p_1352->g_460 p_1352->g_75 p_1352->g_158 p_1352->g_420 p_1352->g_135 p_1352->g_126 p_1352->g_458 p_1352->g_569 p_1352->g_570 p_1352->g_319 p_1352->g_934
 * writes: p_1352->g_135 p_1352->g_75 p_1352->g_366 p_1352->g_85 p_1352->g_912 p_1352->g_158 p_1352->g_319
 */
uint16_t  func_10(uint32_t  p_11, uint8_t  p_12, struct S2 * p_1352)
{ /* block id: 397 */
    uint32_t l_895 = 0x4E89C42FL;
    int32_t *l_896 = &p_1352->g_75;
    int32_t l_913 = 0x37E15BDBL;
    struct S0 ***l_933[1];
    int8_t l_936[5][1] = {{1L},{1L},{1L},{1L},{1L}};
    int32_t l_939 = 5L;
    int32_t l_940 = 1L;
    int i, j;
    for (i = 0; i < 1; i++)
        l_933[i] = &p_1352->g_361[4][3];
    (*p_1352->g_894) = p_12;
    (*l_896) = l_895;
    for (p_1352->g_366 = 5; (p_1352->g_366 >= 1); p_1352->g_366 -= 1)
    { /* block id: 402 */
        int16_t *l_898 = &p_1352->g_85;
        uint32_t *l_901[1];
        int32_t l_902 = 0x1FA6B6F2L;
        int16_t *l_911 = &p_1352->g_912[0];
        uint16_t *l_914 = &p_1352->g_158;
        int32_t *l_915[10][4] = {{&p_1352->g_420[3][2],&p_1352->g_420[3][2],&p_1352->g_75,&p_1352->g_420[4][3]},{&p_1352->g_420[3][2],&p_1352->g_420[3][2],&p_1352->g_75,&p_1352->g_420[4][3]},{&p_1352->g_420[3][2],&p_1352->g_420[3][2],&p_1352->g_75,&p_1352->g_420[4][3]},{&p_1352->g_420[3][2],&p_1352->g_420[3][2],&p_1352->g_75,&p_1352->g_420[4][3]},{&p_1352->g_420[3][2],&p_1352->g_420[3][2],&p_1352->g_75,&p_1352->g_420[4][3]},{&p_1352->g_420[3][2],&p_1352->g_420[3][2],&p_1352->g_75,&p_1352->g_420[4][3]},{&p_1352->g_420[3][2],&p_1352->g_420[3][2],&p_1352->g_75,&p_1352->g_420[4][3]},{&p_1352->g_420[3][2],&p_1352->g_420[3][2],&p_1352->g_75,&p_1352->g_420[4][3]},{&p_1352->g_420[3][2],&p_1352->g_420[3][2],&p_1352->g_75,&p_1352->g_420[4][3]},{&p_1352->g_420[3][2],&p_1352->g_420[3][2],&p_1352->g_75,&p_1352->g_420[4][3]}};
        int16_t l_918 = 0x21C9L;
        uint64_t *l_925 = (void*)0;
        struct S0 ***l_932[7][8] = {{&p_1352->g_361[2][5],&p_1352->g_361[3][1],&p_1352->g_361[4][3],&p_1352->g_361[5][7],&p_1352->g_361[3][1],&p_1352->g_361[5][7],&p_1352->g_361[4][3],&p_1352->g_361[3][1]},{&p_1352->g_361[2][5],&p_1352->g_361[3][1],&p_1352->g_361[4][3],&p_1352->g_361[5][7],&p_1352->g_361[3][1],&p_1352->g_361[5][7],&p_1352->g_361[4][3],&p_1352->g_361[3][1]},{&p_1352->g_361[2][5],&p_1352->g_361[3][1],&p_1352->g_361[4][3],&p_1352->g_361[5][7],&p_1352->g_361[3][1],&p_1352->g_361[5][7],&p_1352->g_361[4][3],&p_1352->g_361[3][1]},{&p_1352->g_361[2][5],&p_1352->g_361[3][1],&p_1352->g_361[4][3],&p_1352->g_361[5][7],&p_1352->g_361[3][1],&p_1352->g_361[5][7],&p_1352->g_361[4][3],&p_1352->g_361[3][1]},{&p_1352->g_361[2][5],&p_1352->g_361[3][1],&p_1352->g_361[4][3],&p_1352->g_361[5][7],&p_1352->g_361[3][1],&p_1352->g_361[5][7],&p_1352->g_361[4][3],&p_1352->g_361[3][1]},{&p_1352->g_361[2][5],&p_1352->g_361[3][1],&p_1352->g_361[4][3],&p_1352->g_361[5][7],&p_1352->g_361[3][1],&p_1352->g_361[5][7],&p_1352->g_361[4][3],&p_1352->g_361[3][1]},{&p_1352->g_361[2][5],&p_1352->g_361[3][1],&p_1352->g_361[4][3],&p_1352->g_361[5][7],&p_1352->g_361[3][1],&p_1352->g_361[5][7],&p_1352->g_361[4][3],&p_1352->g_361[3][1]}};
        int32_t ***l_935 = (void*)0;
        uint16_t l_937 = 0xEEEDL;
        int16_t l_938 = 4L;
        int i, j;
        for (i = 0; i < 1; i++)
            l_901[i] = (void*)0;
        p_1352->g_135[0] &= ((p_1352->g_809[p_1352->g_366] | (((*l_914) |= ((((safe_unary_minus_func_int16_t_s(((*l_898) = 0x74F3L))) != (p_12 = (safe_div_func_uint32_t_u_u((l_902 |= (p_11 , (&p_1352->g_231 == (void*)0))), (safe_add_func_uint32_t_u_u((safe_sub_func_uint32_t_u_u(((safe_rshift_func_int16_t_s_s(((safe_div_func_uint16_t_u_u(0UL, (~((*l_911) = ((!(&p_1352->g_420[3][2] == ((p_1352->g_91 ^ (0x9B89L ^ p_12)) , (void*)0))) || GROUP_DIVERGE(2, 1)))))) != 0x178DL), p_1352->g_460[5][0])) >= (*l_896)), 4294967295UL)), l_913)))))) ^ (*l_896)) , l_902)) <= p_1352->g_420[3][2])) & (*l_896));
        l_940 = (l_939 = (((p_1352->g_126[4][5][0] , (safe_mod_func_int8_t_s_s((((p_11 > l_918) ^ p_1352->g_458) & (((safe_mod_func_int64_t_s_s(((safe_rshift_func_uint16_t_u_s(0x7405L, 6)) , (((+(((safe_sub_func_uint16_t_u_u(1UL, (((l_925 != ((~((((*l_896) = (safe_rshift_func_int8_t_s_s((((--(**p_1352->g_569)) | (((((((p_11 || (p_11 > p_11)) < (*l_896)) > (-3L)) , l_932[2][2]) == l_933[0]) , 0UL) != p_12)) , p_12), p_12))) , (void*)0) != (void*)0)) , p_1352->g_934)) , l_935) == (void*)0))) > l_936[0][0]) <= l_936[0][0])) >= p_11) ^ l_937)), p_12)) ^ 249UL) == p_11)), 0x12L))) <= 0x6257L) <= l_938));
    }
    return (*l_896);
}


/* ------------------------------------------ */
/* 
 * reads : p_1352->g_832 p_1352->g_366 p_1352->g_569 p_1352->g_570 p_1352->g_319 p_1352->g_842 p_1352->g_135 p_1352->g_618 p_1352->g_119.f0 p_1352->g_630 p_1352->g_850 p_1352->g_86 p_1352->g_87 p_1352->g_85 p_1352->g_574 p_1352->g_75 p_1352->g_116 p_1352->g_284 p_1352->g_878 p_1352->g_158 p_1352->g_91 p_1352->g_887
 * writes: p_1352->g_231 p_1352->g_366 p_1352->g_135 p_1352->g_618 p_1352->g_119.f0 p_1352->g_630 p_1352->g_850 p_1352->g_85 p_1352->g_871 p_1352->g_284 p_1352->g_158 p_1352->g_319
 */
int32_t  func_14(uint8_t  p_15, uint32_t  p_16, uint32_t  p_17, uint64_t  p_18, int64_t  p_19, struct S2 * p_1352)
{ /* block id: 364 */
    struct S0 *l_831 = &p_1352->g_290[0][6][0];
    int32_t l_853 = 0x0B9C1451L;
    (*p_1352->g_832) = l_831;
    for (p_1352->g_366 = (-20); (p_1352->g_366 != (-17)); p_1352->g_366++)
    { /* block id: 368 */
        int32_t *l_841 = (void*)0;
        uint16_t *l_879 = &p_1352->g_158;
        int16_t *l_882 = &p_1352->g_85;
        int8_t *l_890 = &p_1352->g_284;
        uint32_t l_891 = 8UL;
        int32_t *l_892 = (void*)0;
        int32_t *l_893 = &l_853;
        (*p_1352->g_842) ^= ((safe_mod_func_uint16_t_u_u((safe_mul_func_uint8_t_u_u((safe_lshift_func_uint8_t_u_u((0x5AL > (**p_1352->g_569)), (&p_1352->g_804 == (void*)0))), (9UL >= ((&p_1352->g_134 != (void*)0) < 1UL)))), p_18)) == 0xA461F92074D72384L);
        for (p_1352->g_618 = 0; (p_1352->g_618 <= 1); p_1352->g_618 += 1)
        { /* block id: 372 */
            int64_t l_869 = 0x7210BC8588C4A939L;
            for (p_1352->g_119.f0 = 0; (p_1352->g_119.f0 <= 1); p_1352->g_119.f0 += 1)
            { /* block id: 375 */
                return p_18;
            }
            for (p_1352->g_630 = 0; (p_1352->g_630 <= 1); p_1352->g_630 += 1)
            { /* block id: 380 */
                int32_t l_847[7][9] = {{(-1L),(-1L),1L,0x04B404D7L,3L,0x04B404D7L,1L,(-1L),(-1L)},{(-1L),(-1L),1L,0x04B404D7L,3L,0x04B404D7L,1L,(-1L),(-1L)},{(-1L),(-1L),1L,0x04B404D7L,3L,0x04B404D7L,1L,(-1L),(-1L)},{(-1L),(-1L),1L,0x04B404D7L,3L,0x04B404D7L,1L,(-1L),(-1L)},{(-1L),(-1L),1L,0x04B404D7L,3L,0x04B404D7L,1L,(-1L),(-1L)},{(-1L),(-1L),1L,0x04B404D7L,3L,0x04B404D7L,1L,(-1L),(-1L)},{(-1L),(-1L),1L,0x04B404D7L,3L,0x04B404D7L,1L,(-1L),(-1L)}};
                int64_t *l_849 = &p_1352->g_850;
                int8_t l_868 = (-10L);
                int16_t *l_870[9][9] = {{(void*)0,&p_1352->g_85,&p_1352->g_85,&p_1352->g_85,&p_1352->g_85,&p_1352->g_85,&p_1352->g_85,&p_1352->g_85,(void*)0},{(void*)0,&p_1352->g_85,&p_1352->g_85,&p_1352->g_85,&p_1352->g_85,&p_1352->g_85,&p_1352->g_85,&p_1352->g_85,(void*)0},{(void*)0,&p_1352->g_85,&p_1352->g_85,&p_1352->g_85,&p_1352->g_85,&p_1352->g_85,&p_1352->g_85,&p_1352->g_85,(void*)0},{(void*)0,&p_1352->g_85,&p_1352->g_85,&p_1352->g_85,&p_1352->g_85,&p_1352->g_85,&p_1352->g_85,&p_1352->g_85,(void*)0},{(void*)0,&p_1352->g_85,&p_1352->g_85,&p_1352->g_85,&p_1352->g_85,&p_1352->g_85,&p_1352->g_85,&p_1352->g_85,(void*)0},{(void*)0,&p_1352->g_85,&p_1352->g_85,&p_1352->g_85,&p_1352->g_85,&p_1352->g_85,&p_1352->g_85,&p_1352->g_85,(void*)0},{(void*)0,&p_1352->g_85,&p_1352->g_85,&p_1352->g_85,&p_1352->g_85,&p_1352->g_85,&p_1352->g_85,&p_1352->g_85,(void*)0},{(void*)0,&p_1352->g_85,&p_1352->g_85,&p_1352->g_85,&p_1352->g_85,&p_1352->g_85,&p_1352->g_85,&p_1352->g_85,(void*)0},{(void*)0,&p_1352->g_85,&p_1352->g_85,&p_1352->g_85,&p_1352->g_85,&p_1352->g_85,&p_1352->g_85,&p_1352->g_85,(void*)0}};
                int8_t *l_872 = &p_1352->g_284;
                int32_t l_873 = 0x495347C9L;
                int i, j;
                l_873 ^= (safe_lshift_func_int8_t_s_s(((*l_872) |= ((((safe_add_func_int8_t_s_s((l_853 = (+(+((l_847[1][1] <= ((*l_849) &= (safe_unary_minus_func_int16_t_s(p_18)))) != ((((safe_sub_func_int8_t_s_s(l_853, (((((safe_mul_func_int16_t_s_s((p_1352->g_871 = (p_1352->g_85 &= ((p_17 , ((safe_unary_minus_func_uint32_t_u((safe_lshift_func_int16_t_s_u(((((safe_sub_func_int32_t_s_s(((safe_unary_minus_func_uint32_t_u((p_16 <= p_19))) != (((**p_1352->g_569) != (safe_sub_func_int32_t_s_s((~(3L && (((safe_div_func_uint16_t_u_u((l_847[1][1] != 0xEAFEL), p_15)) | (*p_1352->g_86)) >= p_19))), p_15))) >= l_853)), p_15)) , l_847[1][1]) ^ l_868) & 0x6D9BD35A9EBA6739L), p_19)))) != l_869)) > l_869))), l_853)) >= 1L) == l_847[1][1]) ^ 0L) && (*p_1352->g_574)))) , l_853) > l_853) , p_19))))), (-1L))) | 0L) ^ p_1352->g_116) , l_869)), 0));
            }
        }
        (*l_893) = (((p_18 != (safe_lshift_func_uint8_t_u_s(p_18, ((*l_890) ^= (safe_div_func_uint64_t_u_u((((p_1352->g_878 , (void*)0) == l_879) >= ((safe_mul_func_uint8_t_u_u(((*p_1352->g_570) = ((((((*l_882) |= p_1352->g_366) <= (((safe_mul_func_uint16_t_u_u((((*l_879)--) | p_17), ((p_1352->g_91 , 0x4557EA7D866C4FE4L) != p_1352->g_75))) || l_853) , l_853)) , p_1352->g_887) == (void*)0) | FAKE_DIVERGE(p_1352->global_1_offset, get_global_id(1), 10))), l_853)) < p_19)), l_853)))))) ^ l_891) , 0L);
    }
    return l_853;
}


/* ------------------------------------------ */
/* 
 * reads : p_1352->g_772 p_1352->g_284 p_1352->g_158 p_1352->g_569 p_1352->g_570 p_1352->g_319 p_1352->g_86 p_1352->g_87 p_1352->g_134 p_1352->g_135 p_1352->g_166.f1 p_1352->g_804 p_1352->g_805 p_1352->g_806 p_1352->g_85 p_1352->g_809 p_1352->g_119.f0
 * writes: p_1352->g_158 p_1352->g_135 p_1352->g_166.f1 p_1352->g_134 p_1352->g_578 p_1352->g_85 p_1352->g_809 p_1352->g_119.f0
 */
uint32_t  func_21(int64_t  p_22, uint8_t  p_23, uint32_t  p_24, int32_t  p_25, int64_t  p_26, struct S2 * p_1352)
{ /* block id: 335 */
    uint32_t l_769 = 4294967295UL;
    int32_t l_775 = (-2L);
    int32_t l_780 = 0x6C622FD4L;
    int32_t l_781 = 1L;
    int32_t l_825 = (-1L);
    int32_t l_826 = 0x3FF1C627L;
    int32_t l_827[1];
    int i;
    for (i = 0; i < 1; i++)
        l_827[i] = 0x619AF56CL;
    if ((safe_lshift_func_uint16_t_u_s((l_775 = (safe_lshift_func_int8_t_s_u((l_769 <= ((~(safe_mod_func_uint64_t_u_u(p_24, ((((l_769 , p_24) & 0L) , p_1352->g_772) , (p_22 & (p_23 < (safe_mul_func_int16_t_s_s(0x1BADL, l_769)))))))) , p_1352->g_284)), p_24))), l_769)))
    { /* block id: 337 */
        int16_t l_778 = 0x47EFL;
        uint16_t *l_779[1];
        int32_t l_798 = (-1L);
        uint16_t l_799[10][9] = {{0xB43BL,65535UL,0x9247L,0x1CD1L,0x9247L,65535UL,0xB43BL,0x51D6L,0xE4B0L},{0xB43BL,65535UL,0x9247L,0x1CD1L,0x9247L,65535UL,0xB43BL,0x51D6L,0xE4B0L},{0xB43BL,65535UL,0x9247L,0x1CD1L,0x9247L,65535UL,0xB43BL,0x51D6L,0xE4B0L},{0xB43BL,65535UL,0x9247L,0x1CD1L,0x9247L,65535UL,0xB43BL,0x51D6L,0xE4B0L},{0xB43BL,65535UL,0x9247L,0x1CD1L,0x9247L,65535UL,0xB43BL,0x51D6L,0xE4B0L},{0xB43BL,65535UL,0x9247L,0x1CD1L,0x9247L,65535UL,0xB43BL,0x51D6L,0xE4B0L},{0xB43BL,65535UL,0x9247L,0x1CD1L,0x9247L,65535UL,0xB43BL,0x51D6L,0xE4B0L},{0xB43BL,65535UL,0x9247L,0x1CD1L,0x9247L,65535UL,0xB43BL,0x51D6L,0xE4B0L},{0xB43BL,65535UL,0x9247L,0x1CD1L,0x9247L,65535UL,0xB43BL,0x51D6L,0xE4B0L},{0xB43BL,65535UL,0x9247L,0x1CD1L,0x9247L,65535UL,0xB43BL,0x51D6L,0xE4B0L}};
        int i, j;
        for (i = 0; i < 1; i++)
            l_779[i] = (void*)0;
        (*p_1352->g_134) &= (safe_mul_func_uint16_t_u_u((++p_1352->g_158), ((((void*)0 == &l_780) | p_23) == ((-1L) >= ((l_780 ^ (safe_rshift_func_uint8_t_u_s((safe_lshift_func_uint8_t_u_s((safe_sub_func_uint64_t_u_u(((**p_1352->g_569) || ((safe_div_func_int16_t_s_s((*p_1352->g_86), (safe_lshift_func_int8_t_s_u((GROUP_DIVERGE(1, 1) , (safe_add_func_uint16_t_u_u((0x2D48L & (~(safe_mod_func_uint16_t_u_u((l_798 |= p_25), FAKE_DIVERGE(p_1352->group_2_offset, get_group_id(2), 10))))), l_799[4][2]))), l_778)))) < l_769)), 0x5BC636576FE423F2L)), l_799[4][2])), p_24))) <= GROUP_DIVERGE(1, 1))))));
        for (p_1352->g_166.f1 = 0; (p_1352->g_166.f1 == 19); p_1352->g_166.f1++)
        { /* block id: 343 */
            int32_t *l_802 = (void*)0;
            (*p_1352->g_804) = l_802;
        }
        (*p_1352->g_805) = &l_775;
        (*p_1352->g_806) = (*p_1352->g_804);
    }
    else
    { /* block id: 348 */
        int32_t **l_807 = &p_1352->g_134;
        int32_t l_812 = 0x0D0C17E6L;
        int32_t l_813 = (-3L);
        int32_t l_814 = 1L;
        uint32_t l_815 = 0xE31F5BD1L;
        (*l_807) = &l_781;
        for (p_1352->g_85 = 0; (p_1352->g_85 <= 7); p_1352->g_85 += 1)
        { /* block id: 352 */
            int32_t *l_808[3];
            int i;
            for (i = 0; i < 3; i++)
                l_808[i] = &l_781;
            p_1352->g_809[3]--;
            l_815--;
        }
    }
    for (p_1352->g_119.f0 = (-14); (p_1352->g_119.f0 < 11); ++p_1352->g_119.f0)
    { /* block id: 359 */
        int32_t *l_820 = &l_775;
        int32_t *l_821[2][4] = {{&l_781,&l_781,&l_781,&l_781},{&l_781,&l_781,&l_781,&l_781}};
        uint64_t l_822[4] = {0x3F0201A880AA1872L,0x3F0201A880AA1872L,0x3F0201A880AA1872L,0x3F0201A880AA1872L};
        uint32_t l_828[4];
        int i, j;
        for (i = 0; i < 4; i++)
            l_828[i] = 9UL;
        l_822[0]++;
        l_828[3]++;
    }
    return l_826;
}


/* ------------------------------------------ */
/* 
 * reads : p_1352->g_427 p_1352->g_426 p_1352->g_162.f1 p_1352->g_743 p_1352->g_421.f1 p_1352->g_420 p_1352->g_91 p_1352->g_319 p_1352->g_134 p_1352->g_135 p_1352->g_374 p_1352->g_578 p_1352->g_287.f0
 * writes: p_1352->g_740 p_1352->g_162.f1 p_1352->g_366 p_1352->g_135 p_1352->g_420
 */
uint64_t  func_27(uint32_t  p_28, uint16_t  p_29, struct S2 * p_1352)
{ /* block id: 322 */
    uint16_t l_748[9] = {0xEC71L,65533UL,0xEC71L,0xEC71L,65533UL,0xEC71L,0xEC71L,65533UL,0xEC71L};
    int32_t l_761 = 0x5BB36C4BL;
    int16_t **l_762[3];
    int i;
    for (i = 0; i < 3; i++)
        l_762[i] = (void*)0;
    p_1352->g_740 = (*p_1352->g_427);
    for (p_1352->g_162.f1 = 0; (p_1352->g_162.f1 == 4); p_1352->g_162.f1 = safe_add_func_int32_t_s_s(p_1352->g_162.f1, 3))
    { /* block id: 326 */
        int64_t *l_746 = &p_1352->g_366;
        uint32_t *l_747[2];
        int32_t l_760 = (-4L);
        int16_t *l_764 = &p_1352->g_85;
        int16_t **l_763 = &l_764;
        int i;
        for (i = 0; i < 2; i++)
            l_747[i] = &p_1352->g_618;
        (*p_1352->g_134) &= (p_1352->g_743 , ((safe_lshift_func_int8_t_s_u(p_29, ((((l_748[5] = (p_1352->g_421.f1 , ((-1L) >= ((*l_746) = (-1L))))) >= ((((safe_mul_func_uint8_t_u_u((+(safe_add_func_int64_t_s_s(((0x033F8B7CL || (0x38L == (((p_1352->g_420[1][3] != (safe_div_func_uint8_t_u_u(FAKE_DIVERGE(p_1352->global_1_offset, get_global_id(1), 10), (safe_add_func_uint16_t_u_u((safe_unary_minus_func_int8_t_s((((safe_rshift_func_int8_t_s_s((p_1352->g_91 ^ 0x221BCD7E284F1EA7L), l_760)) | p_1352->g_319) > l_761))), GROUP_DIVERGE(1, 1)))))) , 0x32L) < l_761))) < l_760), FAKE_DIVERGE(p_1352->group_1_offset, get_group_id(1), 10)))), p_29)) || 0x58F54CC1L) , &p_1352->g_420[3][2]) != &l_760)) & l_760) && FAKE_DIVERGE(p_1352->local_2_offset, get_local_id(2), 10)))) == 0xCDE9L));
        (*p_1352->g_578) = (**p_1352->g_374);
        if ((*p_1352->g_134))
            break;
        l_763 = l_762[2];
    }
    return p_1352->g_287.f0;
}


/* ------------------------------------------ */
/* 
 * reads : p_1352->g_426.f0 p_1352->g_91 p_1352->g_287.f1 p_1352->g_75 p_1352->g_319 p_1352->g_578 p_1352->g_420 p_1352->g_618 p_1352->g_158 p_1352->g_85 p_1352->g_284
 * writes: p_1352->g_158 p_1352->g_420 p_1352->g_618 p_1352->g_319 p_1352->g_85
 */
uint64_t  func_42(uint8_t  p_43, uint32_t  p_44, uint8_t  p_45, uint64_t  p_46, struct S2 * p_1352)
{ /* block id: 303 */
    int32_t l_725 = 0x430C919DL;
    uint16_t *l_726 = &p_1352->g_158;
    int32_t l_727 = 0x72CE8574L;
    int32_t l_728 = 0x52D7D8E7L;
    (*p_1352->g_578) |= ((safe_mod_func_uint16_t_u_u((safe_add_func_int8_t_s_s((safe_mul_func_uint8_t_u_u((((-5L) || ((0x799DL != (safe_div_func_uint16_t_u_u((l_727 = (safe_lshift_func_int8_t_s_s((((safe_unary_minus_func_int32_t_s((safe_rshift_func_int16_t_s_s((((1UL == ((((((void*)0 != &p_1352->g_102[0][0]) <= (safe_div_func_int32_t_s_s((safe_div_func_int8_t_s_s((safe_div_func_uint32_t_u_u(((p_1352->g_426.f0 || ((0xCF4CF723L == ((safe_rshift_func_uint16_t_u_u(((*l_726) = (l_725 = FAKE_DIVERGE(p_1352->global_0_offset, get_global_id(0), 10))), 7)) > 0x6BL)) && (((0x9F4CL <= p_43) <= p_44) & p_1352->g_91))) && l_725), l_727)), 0x4DL)), l_727))) <= l_727) && l_727) != 0x7C2C35102C4B7CD0L)) & p_45) < 0x7D2626C4F837703CL), 11)))) ^ p_43) ^ p_1352->g_287.f1), 2))), 65527UL))) | (-1L))) != p_1352->g_75), p_45)), l_728)), p_45)) < p_1352->g_319);
    for (p_1352->g_618 = 0; (p_1352->g_618 <= 3); p_1352->g_618 += 1)
    { /* block id: 310 */
        uint16_t l_729 = 65535UL;
        int32_t l_739 = (-10L);
        --l_729;
        for (p_1352->g_319 = 0; (p_1352->g_319 <= 3); p_1352->g_319 += 1)
        { /* block id: 314 */
            int16_t *l_738 = &p_1352->g_85;
            int i, j;
            l_739 = ((safe_rshift_func_uint16_t_u_u((((*l_738) |= (safe_lshift_func_uint16_t_u_s((++(*l_726)), 9))) && (p_43 || p_44)), 3)) >= p_46);
            return l_725;
        }
    }
    return p_1352->g_284;
}


/* ------------------------------------------ */
/* 
 * reads : p_1352->g_618 p_1352->g_421.f1 p_1352->g_569 p_1352->g_570 p_1352->g_319 p_1352->g_134
 * writes: p_1352->g_284 p_1352->g_135
 */
int64_t  func_49(uint64_t  p_50, uint8_t  p_51, int32_t  p_52, struct S2 * p_1352)
{ /* block id: 6 */
    uint32_t l_67 = 0x2097756EL;
    uint32_t l_695 = 0xF9784323L;
    int8_t *l_696 = &p_1352->g_284;
    int32_t *l_697 = &p_1352->g_420[3][2];
    int32_t *l_698[1];
    int8_t l_699 = (-4L);
    uint64_t l_700 = 18446744073709551611UL;
    struct S0 **l_703 = &p_1352->g_231;
    int i;
    for (i = 0; i < 1; i++)
        l_698[i] = &p_1352->g_75;
    for (p_50 = 0; (p_50 < 2); p_50++)
    { /* block id: 9 */
        int32_t l_66[8];
        uint64_t l_72 = 7UL;
        int32_t *l_73 = (void*)0;
        int32_t *l_74 = &p_1352->g_75;
        int i;
        for (i = 0; i < 8; i++)
            l_66[i] = 0x772BE76DL;
        (1 + 1);
    }
    (*p_1352->g_134) = (((p_1352->g_618 , (l_67 < (safe_div_func_int8_t_s_s((safe_mod_func_uint8_t_u_u((p_50 & (safe_add_func_int8_t_s_s((p_50 && p_1352->g_421.f1), ((*l_696) = ((l_695 > 0x9923376EL) && l_695))))), p_50)), (**p_1352->g_569))))) > p_51) == 0xA5DE775AL);
    l_700++;
    (*p_1352->g_134) = (l_703 != &p_1352->g_427);
    return p_51;
}


/* ------------------------------------------ */
/* 
 * reads : p_1352->g_230 p_1352->g_231 p_1352->g_86 p_1352->g_87 p_1352->g_75 p_1352->g_116 p_1352->g_91 p_1352->g_135 p_1352->g_345 p_1352->g_158 p_1352->g_162.f1 p_1352->g_85 p_1352->g_287.f1 p_1352->g_374 p_1352->g_319 p_1352->g_384 p_1352->g_287.f0 p_1352->g_345.f0 p_1352->g_420 p_1352->g_421 p_1352->g_426 p_1352->g_427 p_1352->g_134 p_1352->g_166.f0 p_1352->g_458 p_1352->g_188 p_1352->g_284 p_1352->g_522 p_1352->g_529 p_1352->g_569 p_1352->g_570 p_1352->g_686 p_1352->g_577 p_1352->g_578
 * writes: p_1352->g_231 p_1352->g_290.f1 p_1352->g_135 p_1352->g_361 p_1352->g_158 p_1352->g_319 p_1352->g_366 p_1352->g_85 p_1352->g_134 p_1352->g_162.f1 p_1352->g_75 p_1352->g_420 p_1352->g_421 p_1352->g_284 p_1352->g_116 p_1352->g_426 p_1352->g_102 p_1352->g_458 p_1352->g_460 p_1352->g_188 p_1352->g_162
 */
uint16_t  func_55(uint32_t  p_56, uint64_t  p_57, uint32_t  p_58, struct S2 * p_1352)
{ /* block id: 131 */
    struct S0 **l_311 = &p_1352->g_231;
    int16_t *l_316 = (void*)0;
    int32_t l_336[8];
    uint64_t *l_346 = &p_1352->g_116;
    struct S0 **l_360 = &p_1352->g_231;
    uint16_t *l_404 = (void*)0;
    uint16_t **l_403 = &l_404;
    int16_t l_442 = 0x5B74L;
    int32_t *l_484 = &p_1352->g_420[6][0];
    uint32_t l_519 = 0x45671FF4L;
    int8_t **l_544 = (void*)0;
    uint32_t l_636 = 4294967295UL;
    int i;
    for (i = 0; i < 8; i++)
        l_336[i] = (-6L);
    (*l_311) = (*p_1352->g_230);
    if ((safe_lshift_func_int8_t_s_s(0x6CL, 7)))
    { /* block id: 133 */
        uint64_t *l_317 = &p_1352->g_290[0][6][0].f1;
        uint8_t *l_318[5][2][6] = {{{&p_1352->g_319,&p_1352->g_319,&p_1352->g_319,&p_1352->g_319,&p_1352->g_319,&p_1352->g_319},{&p_1352->g_319,&p_1352->g_319,&p_1352->g_319,&p_1352->g_319,&p_1352->g_319,&p_1352->g_319}},{{&p_1352->g_319,&p_1352->g_319,&p_1352->g_319,&p_1352->g_319,&p_1352->g_319,&p_1352->g_319},{&p_1352->g_319,&p_1352->g_319,&p_1352->g_319,&p_1352->g_319,&p_1352->g_319,&p_1352->g_319}},{{&p_1352->g_319,&p_1352->g_319,&p_1352->g_319,&p_1352->g_319,&p_1352->g_319,&p_1352->g_319},{&p_1352->g_319,&p_1352->g_319,&p_1352->g_319,&p_1352->g_319,&p_1352->g_319,&p_1352->g_319}},{{&p_1352->g_319,&p_1352->g_319,&p_1352->g_319,&p_1352->g_319,&p_1352->g_319,&p_1352->g_319},{&p_1352->g_319,&p_1352->g_319,&p_1352->g_319,&p_1352->g_319,&p_1352->g_319,&p_1352->g_319}},{{&p_1352->g_319,&p_1352->g_319,&p_1352->g_319,&p_1352->g_319,&p_1352->g_319,&p_1352->g_319},{&p_1352->g_319,&p_1352->g_319,&p_1352->g_319,&p_1352->g_319,&p_1352->g_319,&p_1352->g_319}}};
        int32_t l_337 = 0x714AEFDDL;
        int8_t *l_338 = (void*)0;
        int32_t l_339 = (-8L);
        int32_t *l_340 = &p_1352->g_135[0];
        struct S0 ***l_359 = &l_311;
        uint16_t *l_364 = &p_1352->g_158;
        int64_t *l_365 = &p_1352->g_366;
        int16_t *l_367 = &p_1352->g_85;
        int32_t *l_368 = &l_339;
        int32_t **l_372 = &l_340;
        int32_t ***l_371 = &l_372;
        int i, j, k;
        (*l_340) |= (~((safe_mul_func_int16_t_s_s((((*l_317) = ((void*)0 != l_316)) , (*p_1352->g_86)), ((l_318[3][0][5] != (void*)0) & (l_339 &= ((safe_mod_func_int8_t_s_s((safe_add_func_uint16_t_u_u((safe_rshift_func_uint16_t_u_s((safe_rshift_func_uint8_t_u_u((safe_lshift_func_int16_t_s_u((p_1352->g_75 != ((safe_mod_func_int64_t_s_s((safe_mul_func_int16_t_s_s((!p_1352->g_116), l_336[5])), (l_337 = 0xFC43C31ED0AED94CL))) != p_1352->g_91)), 13)), l_336[5])), 3)), p_1352->g_91)), p_56)) , p_58))))) != p_57));
        (*l_368) |= (safe_rshift_func_int8_t_s_s((safe_add_func_uint64_t_u_u(((((*l_367) ^= ((((((p_1352->g_345[0] , (((l_346 != (((safe_mod_func_int32_t_s_s(((*l_340) = p_56), (safe_add_func_int64_t_s_s((((*l_365) = ((((safe_add_func_int64_t_s_s(0L, ((safe_mul_func_int16_t_s_s((4UL && (safe_mul_func_int8_t_s_s((((((p_58 ^ ((p_1352->g_319 = (safe_mul_func_int16_t_s_s((((*l_359) = l_311) == (p_1352->g_361[4][3] = l_360)), ((*l_364) &= (safe_lshift_func_int8_t_s_s(p_58, p_57)))))) & p_1352->g_75)) < 0x6C2AL) <= (-1L)) , 1UL) != 1UL), l_336[6]))), p_1352->g_91)) || 0x202D725EL))) | p_57) , 0x36825E6CL) == 4294967295UL)) < p_1352->g_162.f1), l_336[2])))) ^ l_336[3]) , (void*)0)) >= 0x63L) | 1UL)) < p_1352->g_75) , p_58) != p_56) && p_58) >= p_58)) | p_56) , p_1352->g_287.f1), l_336[5])), 7));
        (*l_340) &= (safe_mul_func_int16_t_s_s(0x3850L, ((!(&p_1352->g_134 != ((*l_371) = &p_1352->g_134))) == (0x190EC427L != 1UL))));
    }
    else
    { /* block id: 148 */
        int32_t *l_373 = &p_1352->g_135[0];
        (*p_1352->g_374) = l_373;
    }
    for (p_1352->g_319 = 0; (p_1352->g_319 <= 16); ++p_1352->g_319)
    { /* block id: 153 */
        uint16_t l_382 = 0xD1B3L;
        uint64_t *l_417[3];
        int32_t l_434 = 0x27586316L;
        int32_t l_435 = (-4L);
        int8_t *l_451 = &p_1352->g_9;
        int32_t l_476 = 4L;
        int32_t l_477[10] = {0x0B50C69EL,(-1L),0x0B50C69EL,0x0B50C69EL,(-1L),0x0B50C69EL,0x0B50C69EL,(-1L),0x0B50C69EL,0x0B50C69EL};
        uint32_t l_478 = 4294967295UL;
        int64_t l_495 = 0x5276F7462146B111L;
        int16_t **l_527 = (void*)0;
        int16_t **l_528 = &l_316;
        uint64_t *l_532[7];
        uint16_t **l_565 = &p_1352->g_531;
        int i;
        for (i = 0; i < 3; i++)
            l_417[i] = &p_1352->g_162.f1;
        for (i = 0; i < 7; i++)
            l_532[i] = &p_1352->g_533;
        for (p_1352->g_162.f1 = 8; (p_1352->g_162.f1 != 32); p_1352->g_162.f1 = safe_add_func_uint32_t_u_u(p_1352->g_162.f1, 2))
        { /* block id: 156 */
            int32_t *l_381 = &p_1352->g_75;
            uint16_t *l_391 = (void*)0;
            uint16_t *l_392 = &l_382;
            int32_t l_436 = 6L;
            int8_t *l_449 = &p_1352->g_284;
            int32_t l_467 = 0L;
            int32_t l_471 = (-1L);
            int32_t l_472 = 0x22B0D939L;
            int32_t l_473 = 0x31DCF6FDL;
            int32_t l_474 = 0x304A4382L;
            int32_t l_475 = 0L;
            uint16_t *l_512 = &l_382;
            (*l_381) = (safe_lshift_func_int8_t_s_u(p_57, 3));
            atomic_add(&p_1352->g_atomic_reduction[get_linear_group_id()], l_382);
            barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
            if (get_linear_local_id() == 0)
                p_1352->v_collective += p_1352->g_atomic_reduction[get_linear_group_id()];
            barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
            (*p_1352->g_384) = &l_336[0];
            if (((((safe_sub_func_int8_t_s_s(0x14L, ((p_1352->g_91 , (((l_336[0] & (safe_sub_func_int64_t_s_s((safe_rshift_func_uint8_t_u_s(((++(*l_392)) <= l_336[1]), p_57)), ((safe_add_func_uint32_t_u_u((p_1352->g_75 & 1L), (GROUP_DIVERGE(1, 1) < (0x9840L | p_56)))) < 0x0D242C8DAD5CA503L)))) , l_336[0]) , &p_1352->g_87)) != l_392))) == p_1352->g_116) < p_1352->g_287.f0) || p_58))
            { /* block id: 161 */
                int64_t l_418 = 0x782EF53F30087316L;
                int32_t *l_428 = (void*)0;
                int32_t l_444 = (-1L);
                int8_t **l_450 = &p_1352->g_102[2][1];
                int16_t *l_456 = &l_442;
                uint8_t *l_457 = &p_1352->g_458;
                uint8_t *l_459 = &p_1352->g_460[5][0];
                int32_t **l_461 = &p_1352->g_134;
                for (l_382 = 0; (l_382 < 10); ++l_382)
                { /* block id: 164 */
                    uint16_t **l_402 = (void*)0;
                    uint16_t ***l_401 = &l_402;
                    uint16_t ***l_405 = &l_403;
                    int64_t *l_408[10][4][3];
                    int32_t *l_419 = &p_1352->g_420[3][2];
                    volatile struct S0 *l_422 = &p_1352->g_421;
                    int32_t **l_423 = &l_419;
                    int i, j, k;
                    for (i = 0; i < 10; i++)
                    {
                        for (j = 0; j < 4; j++)
                        {
                            for (k = 0; k < 3; k++)
                                l_408[i][j][k] = &p_1352->g_366;
                        }
                    }
                    (*l_419) ^= (((((+l_382) , ((safe_sub_func_int16_t_s_s((((*l_401) = &l_391) != ((*l_405) = l_403)), (0L || 1UL))) , (((safe_mod_func_uint32_t_u_u(p_1352->g_91, ((p_1352->g_366 = (-3L)) && ((((((safe_sub_func_uint64_t_u_u(((((safe_lshift_func_uint16_t_u_u(((((safe_rshift_func_int8_t_s_s((!(p_1352->g_75 & ((safe_mod_func_int16_t_s_s((((&p_57 == l_417[2]) <= p_1352->g_287.f1) || GROUP_DIVERGE(1, 1)), (*p_1352->g_86))) || l_336[5]))), 6)) >= p_57) , p_56) > p_1352->g_135[0]), 3)) != 0x2DL) , (void*)0) == &p_1352->g_158), 18446744073709551615UL)) >= p_58) , p_57) >= p_1352->g_345[0].f0) & l_418) > p_1352->g_287.f1)))) ^ (-1L)) >= p_1352->g_319))) > l_382) || 5L) & FAKE_DIVERGE(p_1352->local_0_offset, get_local_id(0), 10));
                    (*l_422) = p_1352->g_421;
                    (*l_423) = l_381;
                }
                for (p_1352->g_284 = 0; (p_1352->g_284 == (-5)); p_1352->g_284 = safe_sub_func_int32_t_s_s(p_1352->g_284, 8))
                { /* block id: 174 */
                    int32_t *l_443[5];
                    int i;
                    for (i = 0; i < 5; i++)
                        l_443[i] = &p_1352->g_420[3][3];
                    for (p_1352->g_116 = 0; (p_1352->g_116 <= 2); p_1352->g_116 += 1)
                    { /* block id: 177 */
                        int32_t **l_429 = &l_381;
                        (*l_360) = (*p_1352->g_230);
                        (*p_1352->g_427) = p_1352->g_426;
                        (*l_429) = l_428;
                    }
                    for (p_56 = 7; (p_56 < 57); p_56 = safe_add_func_int8_t_s_s(p_56, 9))
                    { /* block id: 184 */
                        int32_t **l_432 = &l_381;
                        int32_t *l_433[3][2][2] = {{{&l_336[5],&l_336[5]},{&l_336[5],&l_336[5]}},{{&l_336[5],&l_336[5]},{&l_336[5],&l_336[5]}},{{&l_336[5],&l_336[5]},{&l_336[5],&l_336[5]}}};
                        uint32_t l_437[3][7];
                        int i, j, k;
                        for (i = 0; i < 3; i++)
                        {
                            for (j = 0; j < 7; j++)
                                l_437[i][j] = 0x76B3F47CL;
                        }
                        (*l_432) = (void*)0;
                        l_437[0][6]--;
                    }
                    l_444 = (((*p_1352->g_134) = (l_435 = (safe_lshift_func_int8_t_s_u(l_442, 5)))) , l_435);
                }
                l_461 = (((&p_1352->g_9 == &p_1352->g_284) , (0x94AA1D81L > ((safe_mod_func_uint8_t_u_u((safe_add_func_uint8_t_u_u(((*l_459) = ((*l_457) &= (((p_57 && (((*l_450) = l_449) == l_451)) | (((*l_456) = (((*p_1352->g_86) || ((safe_add_func_uint16_t_u_u(FAKE_DIVERGE(p_1352->local_0_offset, get_local_id(0), 10), (((0x1CD4L | (safe_mod_func_uint8_t_u_u((~((p_1352->g_116 > p_1352->g_166.f0) || 0x7364L)), p_1352->g_420[3][4]))) | p_1352->g_135[0]) , l_382))) , (*p_1352->g_86))) & FAKE_DIVERGE(p_1352->global_1_offset, get_global_id(1), 10))) && (*p_1352->g_86))) || (-1L)))), p_1352->g_116)), p_57)) && 18446744073709551615UL))) , (void*)0);
            }
            else
            { /* block id: 197 */
                int32_t *l_462 = &p_1352->g_420[3][2];
                int32_t *l_463 = &l_336[1];
                int32_t *l_464 = &p_1352->g_135[0];
                int32_t *l_465 = &l_435;
                int32_t *l_466 = (void*)0;
                int32_t *l_468 = &l_467;
                int32_t *l_469 = (void*)0;
                int32_t *l_470[1];
                int i;
                for (i = 0; i < 1; i++)
                    l_470[i] = &p_1352->g_75;
                ++l_478;
                for (p_57 = 0; (p_57 < 26); p_57 = safe_add_func_uint64_t_u_u(p_57, 4))
                { /* block id: 201 */
                    int32_t **l_483[1][5] = {{&l_470[0],&l_470[0],&l_470[0],&l_470[0],&l_470[0]}};
                    int i, j;
                    l_484 = l_464;
                }
                for (p_1352->g_85 = (-16); (p_1352->g_85 == 24); p_1352->g_85 = safe_add_func_uint8_t_u_u(p_1352->g_85, 8))
                { /* block id: 206 */
                    int64_t l_491 = 6L;
                    int32_t l_494 = 0x3221DBCCL;
                    int32_t l_496 = 0x4DAB4019L;
                    int32_t l_497 = 0x62A44E82L;
                    int32_t l_498 = 0x2C0118D3L;
                    int32_t l_499[5][4][8] = {{{0x184E6240L,0x185DE2BAL,0L,5L,0x742935A7L,0x184E6240L,5L,0x23F61947L},{0x184E6240L,0x185DE2BAL,0L,5L,0x742935A7L,0x184E6240L,5L,0x23F61947L},{0x184E6240L,0x185DE2BAL,0L,5L,0x742935A7L,0x184E6240L,5L,0x23F61947L},{0x184E6240L,0x185DE2BAL,0L,5L,0x742935A7L,0x184E6240L,5L,0x23F61947L}},{{0x184E6240L,0x185DE2BAL,0L,5L,0x742935A7L,0x184E6240L,5L,0x23F61947L},{0x184E6240L,0x185DE2BAL,0L,5L,0x742935A7L,0x184E6240L,5L,0x23F61947L},{0x184E6240L,0x185DE2BAL,0L,5L,0x742935A7L,0x184E6240L,5L,0x23F61947L},{0x184E6240L,0x185DE2BAL,0L,5L,0x742935A7L,0x184E6240L,5L,0x23F61947L}},{{0x184E6240L,0x185DE2BAL,0L,5L,0x742935A7L,0x184E6240L,5L,0x23F61947L},{0x184E6240L,0x185DE2BAL,0L,5L,0x742935A7L,0x184E6240L,5L,0x23F61947L},{0x184E6240L,0x185DE2BAL,0L,5L,0x742935A7L,0x184E6240L,5L,0x23F61947L},{0x184E6240L,0x185DE2BAL,0L,5L,0x742935A7L,0x184E6240L,5L,0x23F61947L}},{{0x184E6240L,0x185DE2BAL,0L,5L,0x742935A7L,0x184E6240L,5L,0x23F61947L},{0x184E6240L,0x185DE2BAL,0L,5L,0x742935A7L,0x184E6240L,5L,0x23F61947L},{0x184E6240L,0x185DE2BAL,0L,5L,0x742935A7L,0x184E6240L,5L,0x23F61947L},{0x184E6240L,0x185DE2BAL,0L,5L,0x742935A7L,0x184E6240L,5L,0x23F61947L}},{{0x184E6240L,0x185DE2BAL,0L,5L,0x742935A7L,0x184E6240L,5L,0x23F61947L},{0x184E6240L,0x185DE2BAL,0L,5L,0x742935A7L,0x184E6240L,5L,0x23F61947L},{0x184E6240L,0x185DE2BAL,0L,5L,0x742935A7L,0x184E6240L,5L,0x23F61947L},{0x184E6240L,0x185DE2BAL,0L,5L,0x742935A7L,0x184E6240L,5L,0x23F61947L}}};
                    uint32_t l_500 = 0x2023EC3BL;
                    uint32_t *l_509 = &p_1352->g_188;
                    int i, j, k;
                    if ((0xA74014ECL ^ p_1352->g_458))
                    { /* block id: 207 */
                        (*l_381) ^= (0xA1E71ED8L <= ((-5L) > 3UL));
                        if ((**p_1352->g_384))
                            continue;
                    }
                    else
                    { /* block id: 210 */
                        int32_t *l_487 = &p_1352->g_420[3][2];
                        int32_t **l_489 = &l_468;
                        int32_t l_490 = 0x32522DACL;
                        int32_t l_492 = (-1L);
                        int32_t l_493[7][10] = {{0L,(-7L),0x14A1338BL,0x25247420L,0x02A99E1FL,0x25247420L,0x14A1338BL,(-7L),0L,0x14A1338BL},{0L,(-7L),0x14A1338BL,0x25247420L,0x02A99E1FL,0x25247420L,0x14A1338BL,(-7L),0L,0x14A1338BL},{0L,(-7L),0x14A1338BL,0x25247420L,0x02A99E1FL,0x25247420L,0x14A1338BL,(-7L),0L,0x14A1338BL},{0L,(-7L),0x14A1338BL,0x25247420L,0x02A99E1FL,0x25247420L,0x14A1338BL,(-7L),0L,0x14A1338BL},{0L,(-7L),0x14A1338BL,0x25247420L,0x02A99E1FL,0x25247420L,0x14A1338BL,(-7L),0L,0x14A1338BL},{0L,(-7L),0x14A1338BL,0x25247420L,0x02A99E1FL,0x25247420L,0x14A1338BL,(-7L),0L,0x14A1338BL},{0L,(-7L),0x14A1338BL,0x25247420L,0x02A99E1FL,0x25247420L,0x14A1338BL,(-7L),0L,0x14A1338BL}};
                        int i, j;
                        (*p_1352->g_134) = (*l_381);
                        (*l_489) = l_487;
                        l_500--;
                    }
                    (*l_468) = (safe_sub_func_uint16_t_u_u((safe_lshift_func_uint8_t_u_u(((safe_div_func_int32_t_s_s((((--(*l_509)) < 0x05BAA7D6L) , p_56), (0x3F84F4D9L | (((void*)0 == l_512) < p_1352->g_284)))) > (safe_sub_func_int8_t_s_s((safe_rshift_func_uint8_t_u_s((safe_sub_func_int8_t_s_s((((*l_381) = l_519) || 0x00L), FAKE_DIVERGE(p_1352->local_1_offset, get_local_id(1), 10))), (safe_mul_func_uint16_t_u_u((*l_484), (*l_484))))), FAKE_DIVERGE(p_1352->local_0_offset, get_local_id(0), 10)))), p_1352->g_116)), (*p_1352->g_86)));
                }
            }
        }
        atomic_max(&p_1352->l_atomic_reduction[0], ((l_477[2] = (p_1352->g_522 , (l_495 , (((&l_495 != l_346) , (-1L)) < (l_476 ^= ((*l_346) = (safe_rshift_func_int8_t_s_u((safe_sub_func_int16_t_s_s(0x4E20L, ((&p_1352->g_87 != ((*l_528) = &l_442)) || ((((*l_484) , p_1352->g_529) == &p_1352->g_530) && p_1352->g_188)))), 6)))))))) > p_57));
        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        if (get_linear_local_id() == 0)
            p_1352->v_collective += p_1352->l_atomic_reduction[0];
        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    }
    for (p_58 = 0; (p_58 == 56); p_58++)
    { /* block id: 281 */
        int32_t *l_656[9] = {&l_336[5],&l_336[5],&l_336[5],&l_336[5],&l_336[5],&l_336[5],&l_336[5],&l_336[5],&l_336[5]};
        uint64_t l_679 = 0x25A58B6C9D207CD3L;
        uint16_t **l_684[7][4][8] = {{{&p_1352->g_531,&p_1352->g_531,&p_1352->g_531,&l_404,(void*)0,&l_404,&p_1352->g_531,&p_1352->g_531},{&p_1352->g_531,&p_1352->g_531,&p_1352->g_531,&l_404,(void*)0,&l_404,&p_1352->g_531,&p_1352->g_531},{&p_1352->g_531,&p_1352->g_531,&p_1352->g_531,&l_404,(void*)0,&l_404,&p_1352->g_531,&p_1352->g_531},{&p_1352->g_531,&p_1352->g_531,&p_1352->g_531,&l_404,(void*)0,&l_404,&p_1352->g_531,&p_1352->g_531}},{{&p_1352->g_531,&p_1352->g_531,&p_1352->g_531,&l_404,(void*)0,&l_404,&p_1352->g_531,&p_1352->g_531},{&p_1352->g_531,&p_1352->g_531,&p_1352->g_531,&l_404,(void*)0,&l_404,&p_1352->g_531,&p_1352->g_531},{&p_1352->g_531,&p_1352->g_531,&p_1352->g_531,&l_404,(void*)0,&l_404,&p_1352->g_531,&p_1352->g_531},{&p_1352->g_531,&p_1352->g_531,&p_1352->g_531,&l_404,(void*)0,&l_404,&p_1352->g_531,&p_1352->g_531}},{{&p_1352->g_531,&p_1352->g_531,&p_1352->g_531,&l_404,(void*)0,&l_404,&p_1352->g_531,&p_1352->g_531},{&p_1352->g_531,&p_1352->g_531,&p_1352->g_531,&l_404,(void*)0,&l_404,&p_1352->g_531,&p_1352->g_531},{&p_1352->g_531,&p_1352->g_531,&p_1352->g_531,&l_404,(void*)0,&l_404,&p_1352->g_531,&p_1352->g_531},{&p_1352->g_531,&p_1352->g_531,&p_1352->g_531,&l_404,(void*)0,&l_404,&p_1352->g_531,&p_1352->g_531}},{{&p_1352->g_531,&p_1352->g_531,&p_1352->g_531,&l_404,(void*)0,&l_404,&p_1352->g_531,&p_1352->g_531},{&p_1352->g_531,&p_1352->g_531,&p_1352->g_531,&l_404,(void*)0,&l_404,&p_1352->g_531,&p_1352->g_531},{&p_1352->g_531,&p_1352->g_531,&p_1352->g_531,&l_404,(void*)0,&l_404,&p_1352->g_531,&p_1352->g_531},{&p_1352->g_531,&p_1352->g_531,&p_1352->g_531,&l_404,(void*)0,&l_404,&p_1352->g_531,&p_1352->g_531}},{{&p_1352->g_531,&p_1352->g_531,&p_1352->g_531,&l_404,(void*)0,&l_404,&p_1352->g_531,&p_1352->g_531},{&p_1352->g_531,&p_1352->g_531,&p_1352->g_531,&l_404,(void*)0,&l_404,&p_1352->g_531,&p_1352->g_531},{&p_1352->g_531,&p_1352->g_531,&p_1352->g_531,&l_404,(void*)0,&l_404,&p_1352->g_531,&p_1352->g_531},{&p_1352->g_531,&p_1352->g_531,&p_1352->g_531,&l_404,(void*)0,&l_404,&p_1352->g_531,&p_1352->g_531}},{{&p_1352->g_531,&p_1352->g_531,&p_1352->g_531,&l_404,(void*)0,&l_404,&p_1352->g_531,&p_1352->g_531},{&p_1352->g_531,&p_1352->g_531,&p_1352->g_531,&l_404,(void*)0,&l_404,&p_1352->g_531,&p_1352->g_531},{&p_1352->g_531,&p_1352->g_531,&p_1352->g_531,&l_404,(void*)0,&l_404,&p_1352->g_531,&p_1352->g_531},{&p_1352->g_531,&p_1352->g_531,&p_1352->g_531,&l_404,(void*)0,&l_404,&p_1352->g_531,&p_1352->g_531}},{{&p_1352->g_531,&p_1352->g_531,&p_1352->g_531,&l_404,(void*)0,&l_404,&p_1352->g_531,&p_1352->g_531},{&p_1352->g_531,&p_1352->g_531,&p_1352->g_531,&l_404,(void*)0,&l_404,&p_1352->g_531,&p_1352->g_531},{&p_1352->g_531,&p_1352->g_531,&p_1352->g_531,&l_404,(void*)0,&l_404,&p_1352->g_531,&p_1352->g_531},{&p_1352->g_531,&p_1352->g_531,&p_1352->g_531,&l_404,(void*)0,&l_404,&p_1352->g_531,&p_1352->g_531}}};
        int16_t *l_685 = &l_442;
        int i, j, k;
        (*p_1352->g_374) = &l_336[5];
        l_656[2] = &l_336[5];
        (**l_360) = ((safe_sub_func_int8_t_s_s(((*l_484) && (((&l_442 != (((((safe_add_func_int16_t_s_s(((*l_685) &= (safe_add_func_int16_t_s_s((safe_mul_func_uint8_t_u_u((safe_mod_func_uint64_t_u_u((safe_div_func_int16_t_s_s((safe_mul_func_int8_t_s_s((!(safe_sub_func_uint8_t_u_u(255UL, (safe_rshift_func_int16_t_s_u((safe_mul_func_uint16_t_u_u(l_679, (((*l_484) = ((safe_mod_func_int8_t_s_s(((+0UL) < (l_684[2][1][1] == l_684[0][2][7])), GROUP_DIVERGE(0, 1))) == p_57)) > p_58))), 15))))), 247UL)), p_56)), 18446744073709551615UL)), (**p_1352->g_569))), (-1L)))), (*p_1352->g_86))) , p_1352->g_287.f0) , p_56) || (*l_484)) , l_685)) > (**p_1352->g_569)) == 0L)), p_57)) , p_1352->g_686[0][4][1]);
        (**p_1352->g_577) = 0x7EB7743CL;
    }
    return p_57;
}


/* ------------------------------------------ */
/* 
 * reads : p_1352->g_75 p_1352->g_85 p_1352->g_86 p_1352->g_91 p_1352->g_76 p_1352->g_9 p_1352->g_87 p_1352->g_102 p_1352->g_116 p_1352->g_119 p_1352->g_126 p_1352->g_134 p_1352->g_135 p_1352->g_230 p_1352->g_158 p_1352->g_287 p_1352->g_231 p_1352->g_290 p_1352->g_284
 * writes: p_1352->g_85 p_1352->g_91 p_1352->g_75 p_1352->g_116 p_1352->g_134 p_1352->g_231 p_1352->g_135 p_1352->g_284 p_1352->g_162 p_1352->g_158
 */
uint8_t  func_61(int32_t  p_62, int64_t  p_63, uint32_t  p_64, int64_t  p_65, struct S2 * p_1352)
{ /* block id: 11 */
    int32_t *l_79 = &p_1352->g_75;
    uint32_t l_129[8];
    int32_t l_130 = 1L;
    uint8_t l_175 = 0x07L;
    int32_t l_197 = 0L;
    int32_t l_198 = (-3L);
    int32_t l_199 = 0x22A015E9L;
    int32_t l_200[7][5] = {{1L,0L,0L,1L,0L},{1L,0L,0L,1L,0L},{1L,0L,0L,1L,0L},{1L,0L,0L,1L,0L},{1L,0L,0L,1L,0L},{1L,0L,0L,1L,0L},{1L,0L,0L,1L,0L}};
    int8_t l_227 = 1L;
    uint8_t l_255 = 0xA8L;
    uint16_t *l_271 = (void*)0;
    int i, j;
    for (i = 0; i < 8; i++)
        l_129[i] = 8UL;
    for (p_65 = 3; (p_65 >= 0); p_65 -= 1)
    { /* block id: 14 */
        int32_t *l_81[5];
        int32_t **l_80 = &l_81[1];
        int32_t *l_83 = (void*)0;
        int32_t **l_82 = &l_83;
        int16_t *l_84 = &p_1352->g_85;
        int8_t *l_90 = &p_1352->g_91;
        int i;
        for (i = 0; i < 5; i++)
            l_81[i] = (void*)0;
        atomic_or(&p_1352->g_atomic_reduction[get_linear_group_id()], (((safe_div_func_int16_t_s_s(((*l_84) |= (l_79 != ((*l_82) = ((*l_80) = (p_1352->g_75 , &p_1352->g_75))))), p_64)) | 8UL) > ((!((void*)0 != p_1352->g_86)) <= ((((safe_add_func_int8_t_s_s(((*l_90) |= p_62), ((safe_mul_func_uint16_t_u_u((((p_1352->g_76[0][5] && p_63) < 18446744073709551611UL) , p_1352->g_9), p_1352->g_9)) || 0L))) | (-6L)) && p_64) & GROUP_DIVERGE(2, 1)))));
        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        if (get_linear_local_id() == 0)
            p_1352->v_collective += p_1352->g_atomic_reduction[get_linear_group_id()];
        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        return p_65;
    }
    for (p_1352->g_75 = 0; (p_1352->g_75 >= 4); p_1352->g_75++)
    { /* block id: 24 */
        int8_t *l_104 = (void*)0;
        int8_t **l_103 = &l_104;
        int32_t l_114 = (-10L);
        uint8_t l_115 = 0xCEL;
        int32_t l_191 = (-9L);
        int32_t l_194[10][4] = {{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L},{0L,0L,0L,0L}};
        int32_t l_206 = 0x1726EC9FL;
        int16_t l_228 = 0x759FL;
        int32_t l_256 = (-8L);
        int i, j;
        p_1352->g_116 ^= ((0x3FDF2DC13529C6F6L > p_1352->g_87) == ((p_65 , (safe_mod_func_uint8_t_u_u((((safe_mod_func_uint8_t_u_u((((p_1352->g_102[2][1] == ((*l_103) = &p_1352->g_91)) && ((safe_div_func_int64_t_s_s((safe_sub_func_uint16_t_u_u(((FAKE_DIVERGE(p_1352->group_0_offset, get_group_id(0), 10) , (safe_lshift_func_uint16_t_u_s((&l_104 == ((safe_rshift_func_uint16_t_u_u((safe_unary_minus_func_int32_t_s(l_114)), (p_1352->g_9 , (~(((((p_63 , p_1352->g_85) == (-6L)) , (*l_79)) , 0x7D2AL) >= 0xDC16L))))) , &l_104)), 1))) <= p_65), l_115)), p_1352->g_85)) , p_64)) || l_115), 253UL)) != 0x5BL) || 0L), 0xF3L))) != p_64));
        for (p_1352->g_91 = 0; (p_1352->g_91 == 24); ++p_1352->g_91)
        { /* block id: 29 */
            int16_t l_122[2][6][6] = {{{0x627CL,0x627CL,0x627CL,0x627CL,0x627CL,0x627CL},{0x627CL,0x627CL,0x627CL,0x627CL,0x627CL,0x627CL},{0x627CL,0x627CL,0x627CL,0x627CL,0x627CL,0x627CL},{0x627CL,0x627CL,0x627CL,0x627CL,0x627CL,0x627CL},{0x627CL,0x627CL,0x627CL,0x627CL,0x627CL,0x627CL},{0x627CL,0x627CL,0x627CL,0x627CL,0x627CL,0x627CL}},{{0x627CL,0x627CL,0x627CL,0x627CL,0x627CL,0x627CL},{0x627CL,0x627CL,0x627CL,0x627CL,0x627CL,0x627CL},{0x627CL,0x627CL,0x627CL,0x627CL,0x627CL,0x627CL},{0x627CL,0x627CL,0x627CL,0x627CL,0x627CL,0x627CL},{0x627CL,0x627CL,0x627CL,0x627CL,0x627CL,0x627CL},{0x627CL,0x627CL,0x627CL,0x627CL,0x627CL,0x627CL}}};
            uint64_t l_123 = 7UL;
            int32_t *l_127 = &p_1352->g_75;
            int32_t **l_128[6] = {&l_79,&l_79,&l_79,&l_79,&l_79,&l_79};
            uint16_t l_211 = 0UL;
            int8_t *l_223 = &p_1352->g_9;
            uint8_t l_233[1][10][2] = {{{1UL,0xCFL},{1UL,0xCFL},{1UL,0xCFL},{1UL,0xCFL},{1UL,0xCFL},{1UL,0xCFL},{1UL,0xCFL},{1UL,0xCFL},{1UL,0xCFL},{1UL,0xCFL}}};
            int i, j, k;
            l_130 ^= (+((p_1352->g_119 , (((safe_lshift_func_uint16_t_u_s((l_122[1][2][0] ^= (+FAKE_DIVERGE(p_1352->local_1_offset, get_local_id(1), 10))), 15)) == ((((l_123 , (safe_mul_func_int16_t_s_s(((p_1352->g_126[5][7][0] , l_127) != (l_79 = &p_1352->g_75)), ((l_129[6] < p_63) <= ((-4L) > p_1352->g_9))))) , 0x418A4649L) | p_1352->g_116) || 1L)) , 0x1CL)) , p_1352->g_76[3][7]));
            for (p_1352->g_85 = 0; (p_1352->g_85 != (-20)); p_1352->g_85 = safe_sub_func_int32_t_s_s(p_1352->g_85, 4))
            { /* block id: 35 */
                int16_t l_161[2];
                struct S0 *l_178 = (void*)0;
                int32_t l_189 = 1L;
                int32_t l_192 = 0x6E5673ACL;
                int32_t l_193 = 3L;
                int32_t l_195 = 0x0CF9BFE5L;
                uint32_t l_201 = 4294967292UL;
                int32_t l_208 = 0L;
                int32_t l_209 = 9L;
                int32_t l_210[4] = {(-1L),(-1L),(-1L),(-1L)};
                int8_t *l_224[10] = {&p_1352->g_9,&p_1352->g_9,&p_1352->g_9,&p_1352->g_9,&p_1352->g_9,&p_1352->g_9,&p_1352->g_9,&p_1352->g_9,&p_1352->g_9,&p_1352->g_9};
                uint16_t *l_229 = &l_211;
                int i;
                for (i = 0; i < 2; i++)
                    l_161[i] = 1L;
                for (p_63 = 0; (p_63 <= 5); p_63 += 1)
                { /* block id: 38 */
                    for (l_130 = 4; (l_130 >= 0); l_130 -= 1)
                    { /* block id: 41 */
                        int32_t *l_133 = &l_130;
                        int i;
                        p_1352->g_134 = l_133;
                        if (p_65)
                            continue;
                    }
                }
                for (p_62 = 13; (p_62 != 15); p_62 = safe_add_func_int16_t_s_s(p_62, 6))
                { /* block id: 48 */
                    int16_t *l_144 = &p_1352->g_85;
                    int32_t **l_149 = &p_1352->g_134;
                    int32_t ***l_150 = (void*)0;
                    int32_t ***l_151 = &l_128[1];
                    uint8_t *l_152 = &l_115;
                    uint16_t *l_157 = &p_1352->g_158;
                    int32_t l_196[2];
                    int32_t l_207 = 0x7F03833BL;
                    int i;
                    for (i = 0; i < 2; i++)
                        l_196[i] = 0L;
                    (1 + 1);
                }
                l_198 = (safe_div_func_uint8_t_u_u(((0x0CL ^ (-10L)) | (p_1352->g_116 = 0x1C1D8338CC7A9075L)), (safe_add_func_int32_t_s_s((safe_add_func_uint16_t_u_u(((((((0xEFL < ((safe_unary_minus_func_uint64_t_u((safe_mul_func_int8_t_s_s(((GROUP_DIVERGE(1, 1) >= ((l_206 , l_191) ^ (l_223 == l_224[2]))) , (safe_mod_func_uint16_t_u_u(((*l_229) ^= ((((-1L) ^ p_65) ^ l_227) >= l_228)), 0x1925L))), l_208)))) < 7UL)) > l_114) || p_1352->g_87) , (*p_1352->g_134)) == l_115) <= (-5L)), l_191)), 0UL))));
                (*p_1352->g_230) = &p_1352->g_162;
            }
            if (l_206)
            { /* block id: 79 */
                int32_t l_232 = 0x13AA1A88L;
                if ((*l_127))
                    break;
                ++l_233[0][1][1];
                (*p_1352->g_134) &= (l_191 = (safe_mul_func_int8_t_s_s(0x20L, p_64)));
            }
            else
            { /* block id: 84 */
                int32_t l_246 = (-2L);
                int16_t *l_247 = &l_122[1][2][0];
                int16_t *l_252 = &l_228;
                uint16_t l_258 = 0x783EL;
                for (l_206 = 28; (l_206 > (-4)); l_206 = safe_sub_func_int8_t_s_s(l_206, 7))
                { /* block id: 87 */
                    for (p_65 = 15; (p_65 > 4); p_65 = safe_sub_func_uint64_t_u_u(p_65, 8))
                    { /* block id: 90 */
                        return p_1352->g_76[0][4];
                    }
                }
                if ((safe_rshift_func_uint8_t_u_s(((((safe_div_func_int32_t_s_s((((*p_1352->g_134) = ((((((*l_247) ^= l_246) < (0x0934L >= (safe_mod_func_uint32_t_u_u(p_1352->g_158, (safe_div_func_int64_t_s_s((((*l_252) = p_65) , l_246), (safe_rshift_func_uint16_t_u_u(l_255, (l_256 , 65535UL))))))))) <= (((p_1352->g_158 , &p_1352->g_75) == &p_1352->g_135[0]) > (*l_127))) <= 0x202F784CL) & FAKE_DIVERGE(p_1352->group_2_offset, get_group_id(2), 10))) && (*l_79)), l_256)) , GROUP_DIVERGE(1, 1)) , p_62) || p_62), p_63)))
                { /* block id: 97 */
                    int32_t l_257 = 1L;
                    uint64_t *l_267 = (void*)0;
                    uint64_t *l_268[4][5] = {{&p_1352->g_116,&p_1352->g_116,(void*)0,(void*)0,&p_1352->g_116},{&p_1352->g_116,&p_1352->g_116,(void*)0,(void*)0,&p_1352->g_116},{&p_1352->g_116,&p_1352->g_116,(void*)0,(void*)0,&p_1352->g_116},{&p_1352->g_116,&p_1352->g_116,(void*)0,(void*)0,&p_1352->g_116}};
                    uint16_t *l_269[6][8][5] = {{{&p_1352->g_158,&p_1352->g_158,&l_258,&p_1352->g_158,&l_211},{&p_1352->g_158,&p_1352->g_158,&l_258,&p_1352->g_158,&l_211},{&p_1352->g_158,&p_1352->g_158,&l_258,&p_1352->g_158,&l_211},{&p_1352->g_158,&p_1352->g_158,&l_258,&p_1352->g_158,&l_211},{&p_1352->g_158,&p_1352->g_158,&l_258,&p_1352->g_158,&l_211},{&p_1352->g_158,&p_1352->g_158,&l_258,&p_1352->g_158,&l_211},{&p_1352->g_158,&p_1352->g_158,&l_258,&p_1352->g_158,&l_211},{&p_1352->g_158,&p_1352->g_158,&l_258,&p_1352->g_158,&l_211}},{{&p_1352->g_158,&p_1352->g_158,&l_258,&p_1352->g_158,&l_211},{&p_1352->g_158,&p_1352->g_158,&l_258,&p_1352->g_158,&l_211},{&p_1352->g_158,&p_1352->g_158,&l_258,&p_1352->g_158,&l_211},{&p_1352->g_158,&p_1352->g_158,&l_258,&p_1352->g_158,&l_211},{&p_1352->g_158,&p_1352->g_158,&l_258,&p_1352->g_158,&l_211},{&p_1352->g_158,&p_1352->g_158,&l_258,&p_1352->g_158,&l_211},{&p_1352->g_158,&p_1352->g_158,&l_258,&p_1352->g_158,&l_211},{&p_1352->g_158,&p_1352->g_158,&l_258,&p_1352->g_158,&l_211}},{{&p_1352->g_158,&p_1352->g_158,&l_258,&p_1352->g_158,&l_211},{&p_1352->g_158,&p_1352->g_158,&l_258,&p_1352->g_158,&l_211},{&p_1352->g_158,&p_1352->g_158,&l_258,&p_1352->g_158,&l_211},{&p_1352->g_158,&p_1352->g_158,&l_258,&p_1352->g_158,&l_211},{&p_1352->g_158,&p_1352->g_158,&l_258,&p_1352->g_158,&l_211},{&p_1352->g_158,&p_1352->g_158,&l_258,&p_1352->g_158,&l_211},{&p_1352->g_158,&p_1352->g_158,&l_258,&p_1352->g_158,&l_211},{&p_1352->g_158,&p_1352->g_158,&l_258,&p_1352->g_158,&l_211}},{{&p_1352->g_158,&p_1352->g_158,&l_258,&p_1352->g_158,&l_211},{&p_1352->g_158,&p_1352->g_158,&l_258,&p_1352->g_158,&l_211},{&p_1352->g_158,&p_1352->g_158,&l_258,&p_1352->g_158,&l_211},{&p_1352->g_158,&p_1352->g_158,&l_258,&p_1352->g_158,&l_211},{&p_1352->g_158,&p_1352->g_158,&l_258,&p_1352->g_158,&l_211},{&p_1352->g_158,&p_1352->g_158,&l_258,&p_1352->g_158,&l_211},{&p_1352->g_158,&p_1352->g_158,&l_258,&p_1352->g_158,&l_211},{&p_1352->g_158,&p_1352->g_158,&l_258,&p_1352->g_158,&l_211}},{{&p_1352->g_158,&p_1352->g_158,&l_258,&p_1352->g_158,&l_211},{&p_1352->g_158,&p_1352->g_158,&l_258,&p_1352->g_158,&l_211},{&p_1352->g_158,&p_1352->g_158,&l_258,&p_1352->g_158,&l_211},{&p_1352->g_158,&p_1352->g_158,&l_258,&p_1352->g_158,&l_211},{&p_1352->g_158,&p_1352->g_158,&l_258,&p_1352->g_158,&l_211},{&p_1352->g_158,&p_1352->g_158,&l_258,&p_1352->g_158,&l_211},{&p_1352->g_158,&p_1352->g_158,&l_258,&p_1352->g_158,&l_211},{&p_1352->g_158,&p_1352->g_158,&l_258,&p_1352->g_158,&l_211}},{{&p_1352->g_158,&p_1352->g_158,&l_258,&p_1352->g_158,&l_211},{&p_1352->g_158,&p_1352->g_158,&l_258,&p_1352->g_158,&l_211},{&p_1352->g_158,&p_1352->g_158,&l_258,&p_1352->g_158,&l_211},{&p_1352->g_158,&p_1352->g_158,&l_258,&p_1352->g_158,&l_211},{&p_1352->g_158,&p_1352->g_158,&l_258,&p_1352->g_158,&l_211},{&p_1352->g_158,&p_1352->g_158,&l_258,&p_1352->g_158,&l_211},{&p_1352->g_158,&p_1352->g_158,&l_258,&p_1352->g_158,&l_211},{&p_1352->g_158,&p_1352->g_158,&l_258,&p_1352->g_158,&l_211}}};
                    uint16_t **l_270[10][10] = {{(void*)0,(void*)0,&l_269[3][1][2],&l_269[2][6][3],&l_269[4][4][0],&l_269[4][4][0],&l_269[4][4][0],&l_269[4][0][3],&l_269[4][0][3],&l_269[4][4][0]},{(void*)0,(void*)0,&l_269[3][1][2],&l_269[2][6][3],&l_269[4][4][0],&l_269[4][4][0],&l_269[4][4][0],&l_269[4][0][3],&l_269[4][0][3],&l_269[4][4][0]},{(void*)0,(void*)0,&l_269[3][1][2],&l_269[2][6][3],&l_269[4][4][0],&l_269[4][4][0],&l_269[4][4][0],&l_269[4][0][3],&l_269[4][0][3],&l_269[4][4][0]},{(void*)0,(void*)0,&l_269[3][1][2],&l_269[2][6][3],&l_269[4][4][0],&l_269[4][4][0],&l_269[4][4][0],&l_269[4][0][3],&l_269[4][0][3],&l_269[4][4][0]},{(void*)0,(void*)0,&l_269[3][1][2],&l_269[2][6][3],&l_269[4][4][0],&l_269[4][4][0],&l_269[4][4][0],&l_269[4][0][3],&l_269[4][0][3],&l_269[4][4][0]},{(void*)0,(void*)0,&l_269[3][1][2],&l_269[2][6][3],&l_269[4][4][0],&l_269[4][4][0],&l_269[4][4][0],&l_269[4][0][3],&l_269[4][0][3],&l_269[4][4][0]},{(void*)0,(void*)0,&l_269[3][1][2],&l_269[2][6][3],&l_269[4][4][0],&l_269[4][4][0],&l_269[4][4][0],&l_269[4][0][3],&l_269[4][0][3],&l_269[4][4][0]},{(void*)0,(void*)0,&l_269[3][1][2],&l_269[2][6][3],&l_269[4][4][0],&l_269[4][4][0],&l_269[4][4][0],&l_269[4][0][3],&l_269[4][0][3],&l_269[4][4][0]},{(void*)0,(void*)0,&l_269[3][1][2],&l_269[2][6][3],&l_269[4][4][0],&l_269[4][4][0],&l_269[4][4][0],&l_269[4][0][3],&l_269[4][0][3],&l_269[4][4][0]},{(void*)0,(void*)0,&l_269[3][1][2],&l_269[2][6][3],&l_269[4][4][0],&l_269[4][4][0],&l_269[4][4][0],&l_269[4][0][3],&l_269[4][0][3],&l_269[4][4][0]}};
                    uint8_t *l_274 = &l_233[0][9][0];
                    uint8_t **l_273 = &l_274;
                    uint8_t *l_276 = (void*)0;
                    uint8_t **l_275 = &l_276;
                    int i, j, k;
                    l_258--;
                    (*p_1352->g_134) &= (-1L);
                    (*p_1352->g_134) &= ((safe_mod_func_uint32_t_u_u(p_63, (safe_sub_func_int32_t_s_s((0x29L <= ((p_1352->g_116 &= (safe_mod_func_int16_t_s_s((*l_79), ((*l_252) = (*p_1352->g_86))))) & (l_269[4][4][0] != (l_271 = &p_1352->g_158)))), ((((*l_273) = ((safe_unary_minus_func_uint8_t_u(GROUP_DIVERGE(1, 1))) , p_1352->g_102[2][1])) != ((*l_275) = &l_233[0][2][0])) > ((safe_add_func_int64_t_s_s((p_1352->g_284 = (safe_unary_minus_func_uint8_t_u((safe_mod_func_int16_t_s_s(((safe_lshift_func_uint16_t_u_u(((l_194[7][3] < (*l_79)) > 0UL), 11)) && p_62), 8L))))), p_1352->g_9)) > p_63)))))) , 0x75260697L);
                }
                else
                { /* block id: 107 */
                    int32_t l_295 = 0x5E3D5871L;
                    for (l_197 = (-9); (l_197 >= (-14)); --l_197)
                    { /* block id: 110 */
                        (*p_1352->g_231) = p_1352->g_287;
                    }
                    for (l_258 = 26; (l_258 < 4); l_258--)
                    { /* block id: 115 */
                        (*p_1352->g_231) = p_1352->g_290[0][6][0];
                        l_200[5][4] ^= ((*p_1352->g_134) ^= (safe_sub_func_int8_t_s_s((*l_79), (((p_64 , (safe_lshift_func_uint16_t_u_u(1UL, 7))) < (p_1352->g_158 = p_64)) < ((l_295 < (safe_lshift_func_int8_t_s_s((-1L), (safe_add_func_uint16_t_u_u((&p_1352->g_231 == &p_1352->g_164[6]), (safe_div_func_uint32_t_u_u((((safe_lshift_func_uint16_t_u_u((safe_rshift_func_uint8_t_u_u((safe_rshift_func_int16_t_s_u((((p_1352->g_85 , p_1352->g_284) >= l_246) <= (-1L)), 12)), FAKE_DIVERGE(p_1352->group_1_offset, get_group_id(1), 10))), 7)) , l_246) >= p_62), l_258))))))) <= p_62)))));
                    }
                }
                for (p_63 = (-16); (p_63 > 5); p_63++)
                { /* block id: 124 */
                    if ((*p_1352->g_134))
                        break;
                }
            }
        }
    }
    return p_62;
}


__kernel void entry(__global ulong *result, __global volatile int *g_atomic_reduction, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    struct S2 c_1353;
    struct S2* p_1352 = &c_1353;
    struct S2 c_1354 = {
        (-1L), // p_1352->g_9
        0x5E2E4BCBL, // p_1352->g_75
        {{0x0411BC31L,0x41D66485L,2UL,1UL,2UL,0x41D66485L,0x0411BC31L,1UL,0xDC0BF288L},{0x0411BC31L,0x41D66485L,2UL,1UL,2UL,0x41D66485L,0x0411BC31L,1UL,0xDC0BF288L},{0x0411BC31L,0x41D66485L,2UL,1UL,2UL,0x41D66485L,0x0411BC31L,1UL,0xDC0BF288L},{0x0411BC31L,0x41D66485L,2UL,1UL,2UL,0x41D66485L,0x0411BC31L,1UL,0xDC0BF288L}}, // p_1352->g_76
        (-1L), // p_1352->g_85
        6L, // p_1352->g_87
        &p_1352->g_87, // p_1352->g_86
        3L, // p_1352->g_91
        {{&p_1352->g_91,&p_1352->g_91,&p_1352->g_91,&p_1352->g_91},{&p_1352->g_91,&p_1352->g_91,&p_1352->g_91,&p_1352->g_91},{&p_1352->g_91,&p_1352->g_91,&p_1352->g_91,&p_1352->g_91},{&p_1352->g_91,&p_1352->g_91,&p_1352->g_91,&p_1352->g_91}}, // p_1352->g_102
        0xC97A6105BDF17F54L, // p_1352->g_116
        {0L}, // p_1352->g_119
        {{{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}}},{{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}}},{{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}}},{{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}}},{{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}}},{{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}}},{{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}},{{0x0B857EB2L},{-9L}}}}, // p_1352->g_126
        {(-1L)}, // p_1352->g_135
        &p_1352->g_135[0], // p_1352->g_134
        3UL, // p_1352->g_158
        {-2L,0UL}, // p_1352->g_162
        {&p_1352->g_162,&p_1352->g_162,&p_1352->g_162,&p_1352->g_162,&p_1352->g_162,&p_1352->g_162,&p_1352->g_162,&p_1352->g_162}, // p_1352->g_164
        {0x7BAA5094L,18446744073709551607UL}, // p_1352->g_166
        0x6AC008CEL, // p_1352->g_188
        &p_1352->g_162, // p_1352->g_231
        &p_1352->g_231, // p_1352->g_230
        0L, // p_1352->g_284
        {-7L,1UL}, // p_1352->g_287
        {{{{0x31608D3CL,0UL},{0L,1UL},{-1L,18446744073709551615UL},{0L,1UL}},{{0x31608D3CL,0UL},{0L,1UL},{-1L,18446744073709551615UL},{0L,1UL}},{{0x31608D3CL,0UL},{0L,1UL},{-1L,18446744073709551615UL},{0L,1UL}},{{0x31608D3CL,0UL},{0L,1UL},{-1L,18446744073709551615UL},{0L,1UL}},{{0x31608D3CL,0UL},{0L,1UL},{-1L,18446744073709551615UL},{0L,1UL}},{{0x31608D3CL,0UL},{0L,1UL},{-1L,18446744073709551615UL},{0L,1UL}},{{0x31608D3CL,0UL},{0L,1UL},{-1L,18446744073709551615UL},{0L,1UL}}},{{{0x31608D3CL,0UL},{0L,1UL},{-1L,18446744073709551615UL},{0L,1UL}},{{0x31608D3CL,0UL},{0L,1UL},{-1L,18446744073709551615UL},{0L,1UL}},{{0x31608D3CL,0UL},{0L,1UL},{-1L,18446744073709551615UL},{0L,1UL}},{{0x31608D3CL,0UL},{0L,1UL},{-1L,18446744073709551615UL},{0L,1UL}},{{0x31608D3CL,0UL},{0L,1UL},{-1L,18446744073709551615UL},{0L,1UL}},{{0x31608D3CL,0UL},{0L,1UL},{-1L,18446744073709551615UL},{0L,1UL}},{{0x31608D3CL,0UL},{0L,1UL},{-1L,18446744073709551615UL},{0L,1UL}}}}, // p_1352->g_290
        (void*)0, // p_1352->g_310
        0x86L, // p_1352->g_319
        {{0x57602EC6L},{0x57602EC6L},{0x57602EC6L},{0x57602EC6L}}, // p_1352->g_345
        {{&p_1352->g_231,&p_1352->g_231,&p_1352->g_231,&p_1352->g_231,&p_1352->g_231,&p_1352->g_231,&p_1352->g_231,&p_1352->g_231,&p_1352->g_231,&p_1352->g_231},{&p_1352->g_231,&p_1352->g_231,&p_1352->g_231,&p_1352->g_231,&p_1352->g_231,&p_1352->g_231,&p_1352->g_231,&p_1352->g_231,&p_1352->g_231,&p_1352->g_231},{&p_1352->g_231,&p_1352->g_231,&p_1352->g_231,&p_1352->g_231,&p_1352->g_231,&p_1352->g_231,&p_1352->g_231,&p_1352->g_231,&p_1352->g_231,&p_1352->g_231},{&p_1352->g_231,&p_1352->g_231,&p_1352->g_231,&p_1352->g_231,&p_1352->g_231,&p_1352->g_231,&p_1352->g_231,&p_1352->g_231,&p_1352->g_231,&p_1352->g_231},{&p_1352->g_231,&p_1352->g_231,&p_1352->g_231,&p_1352->g_231,&p_1352->g_231,&p_1352->g_231,&p_1352->g_231,&p_1352->g_231,&p_1352->g_231,&p_1352->g_231},{&p_1352->g_231,&p_1352->g_231,&p_1352->g_231,&p_1352->g_231,&p_1352->g_231,&p_1352->g_231,&p_1352->g_231,&p_1352->g_231,&p_1352->g_231,&p_1352->g_231}}, // p_1352->g_361
        (-10L), // p_1352->g_366
        &p_1352->g_134, // p_1352->g_374
        (void*)0, // p_1352->g_383
        &p_1352->g_134, // p_1352->g_384
        {{0x05380D96L,(-1L),0x7843F08FL,(-1L),0x05380D96L},{0x05380D96L,(-1L),0x7843F08FL,(-1L),0x05380D96L},{0x05380D96L,(-1L),0x7843F08FL,(-1L),0x05380D96L},{0x05380D96L,(-1L),0x7843F08FL,(-1L),0x05380D96L},{0x05380D96L,(-1L),0x7843F08FL,(-1L),0x05380D96L},{0x05380D96L,(-1L),0x7843F08FL,(-1L),0x05380D96L},{0x05380D96L,(-1L),0x7843F08FL,(-1L),0x05380D96L},{0x05380D96L,(-1L),0x7843F08FL,(-1L),0x05380D96L}}, // p_1352->g_420
        {0x09D9BE23L,0x26E50C411E09D33EL}, // p_1352->g_421
        {0x3A25EF68L,1UL}, // p_1352->g_426
        &p_1352->g_426, // p_1352->g_427
        254UL, // p_1352->g_458
        {{0UL,246UL,9UL,1UL,9UL},{0UL,246UL,9UL,1UL,9UL},{0UL,246UL,9UL,1UL,9UL},{0UL,246UL,9UL,1UL,9UL},{0UL,246UL,9UL,1UL,9UL},{0UL,246UL,9UL,1UL,9UL},{0UL,246UL,9UL,1UL,9UL}}, // p_1352->g_460
        (void*)0, // p_1352->g_488
        {0x717D9985L}, // p_1352->g_522
        (void*)0, // p_1352->g_531
        &p_1352->g_531, // p_1352->g_530
        &p_1352->g_530, // p_1352->g_529
        0x90D1874F25BF8AD4L, // p_1352->g_533
        &p_1352->g_531, // p_1352->g_566
        &p_1352->g_319, // p_1352->g_570
        &p_1352->g_570, // p_1352->g_569
        &p_1352->g_75, // p_1352->g_574
        4294967292UL, // p_1352->g_575
        &p_1352->g_420[7][0], // p_1352->g_578
        &p_1352->g_578, // p_1352->g_577
        {0L}, // p_1352->g_616
        0UL, // p_1352->g_618
        5UL, // p_1352->g_630
        {{{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}}},{{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}}},{{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}}},{{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}}},{{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}}},{{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}}},{{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}}},{{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}}},{{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}},{{2L,1UL},{0x19EA393DL,1UL}}}}, // p_1352->g_686
        {0x3337A8E7L,0x0E6053818E1B605EL}, // p_1352->g_740
        {-1L,0x4327EA1FCDFE9B46L}, // p_1352->g_743
        {0x2B8A1A6BL}, // p_1352->g_772
        {&p_1352->g_134,&p_1352->g_134,&p_1352->g_134,&p_1352->g_134,&p_1352->g_134}, // p_1352->g_803
        &p_1352->g_134, // p_1352->g_804
        &p_1352->g_578, // p_1352->g_805
        &p_1352->g_134, // p_1352->g_806
        {0x0C7EL,0x0C7EL,0x0C7EL,0x0C7EL,0x0C7EL,0x0C7EL}, // p_1352->g_809
        &p_1352->g_231, // p_1352->g_832
        &p_1352->g_135[0], // p_1352->g_842
        1L, // p_1352->g_850
        254UL, // p_1352->g_871
        {0x5E27E296L}, // p_1352->g_878
        1L, // p_1352->g_889
        {&p_1352->g_889,&p_1352->g_889,&p_1352->g_889,&p_1352->g_889,&p_1352->g_889,&p_1352->g_889,&p_1352->g_889}, // p_1352->g_888
        &p_1352->g_888[5], // p_1352->g_887
        &p_1352->g_135[0], // p_1352->g_894
        {1L,1L}, // p_1352->g_912
        &p_1352->g_290[0][6][0].f1, // p_1352->g_934
        0L, // p_1352->g_952
        {{(-9L),(-9L),(-9L),(-9L),(-9L),(-9L),(-9L),(-9L),(-9L)},{(-9L),(-9L),(-9L),(-9L),(-9L),(-9L),(-9L),(-9L),(-9L)},{(-9L),(-9L),(-9L),(-9L),(-9L),(-9L),(-9L),(-9L),(-9L)}}, // p_1352->g_959
        (void*)0, // p_1352->g_1004
        &p_1352->g_126[1][3][0], // p_1352->g_1020
        (void*)0, // p_1352->g_1028
        &p_1352->g_1028, // p_1352->g_1027
        0L, // p_1352->g_1064
        &p_1352->g_135[0], // p_1352->g_1142
        (-1L), // p_1352->g_1185
        0xC9A2L, // p_1352->g_1191
        {{0x29776B92L,0xDCFD3643B6262AE6L},{0x29776B92L,0xDCFD3643B6262AE6L},{0x29776B92L,0xDCFD3643B6262AE6L},{0x29776B92L,0xDCFD3643B6262AE6L},{0x29776B92L,0xDCFD3643B6262AE6L},{0x29776B92L,0xDCFD3643B6262AE6L}}, // p_1352->g_1200
        (void*)0, // p_1352->g_1232
        {0x3465CD12L,18446744073709551608UL}, // p_1352->g_1269
        {0x3964143FL,1UL}, // p_1352->g_1270
        &p_1352->g_134, // p_1352->g_1290
        0x7CA5137947D3CAE4L, // p_1352->g_1338
        0, // p_1352->v_collective
        sequence_input[get_global_id(0)], // p_1352->global_0_offset
        sequence_input[get_global_id(1)], // p_1352->global_1_offset
        sequence_input[get_global_id(2)], // p_1352->global_2_offset
        sequence_input[get_local_id(0)], // p_1352->local_0_offset
        sequence_input[get_local_id(1)], // p_1352->local_1_offset
        sequence_input[get_local_id(2)], // p_1352->local_2_offset
        sequence_input[get_group_id(0)], // p_1352->group_0_offset
        sequence_input[get_group_id(1)], // p_1352->group_1_offset
        sequence_input[get_group_id(2)], // p_1352->group_2_offset
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
    };
    c_1353 = c_1354;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1352);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1352->g_9, "p_1352->g_9", print_hash_value);
    transparent_crc(p_1352->g_75, "p_1352->g_75", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_1352->g_76[i][j], "p_1352->g_76[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1352->g_85, "p_1352->g_85", print_hash_value);
    transparent_crc(p_1352->g_87, "p_1352->g_87", print_hash_value);
    transparent_crc(p_1352->g_91, "p_1352->g_91", print_hash_value);
    transparent_crc(p_1352->g_116, "p_1352->g_116", print_hash_value);
    transparent_crc(p_1352->g_119.f0, "p_1352->g_119.f0", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_1352->g_126[i][j][k].f0, "p_1352->g_126[i][j][k].f0", print_hash_value);

            }
        }
    }
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1352->g_135[i], "p_1352->g_135[i]", print_hash_value);

    }
    transparent_crc(p_1352->g_158, "p_1352->g_158", print_hash_value);
    transparent_crc(p_1352->g_162.f0, "p_1352->g_162.f0", print_hash_value);
    transparent_crc(p_1352->g_162.f1, "p_1352->g_162.f1", print_hash_value);
    transparent_crc(p_1352->g_166.f0, "p_1352->g_166.f0", print_hash_value);
    transparent_crc(p_1352->g_166.f1, "p_1352->g_166.f1", print_hash_value);
    transparent_crc(p_1352->g_188, "p_1352->g_188", print_hash_value);
    transparent_crc(p_1352->g_284, "p_1352->g_284", print_hash_value);
    transparent_crc(p_1352->g_287.f0, "p_1352->g_287.f0", print_hash_value);
    transparent_crc(p_1352->g_287.f1, "p_1352->g_287.f1", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 7; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_1352->g_290[i][j][k].f0, "p_1352->g_290[i][j][k].f0", print_hash_value);
                transparent_crc(p_1352->g_290[i][j][k].f1, "p_1352->g_290[i][j][k].f1", print_hash_value);

            }
        }
    }
    transparent_crc(p_1352->g_319, "p_1352->g_319", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1352->g_345[i].f0, "p_1352->g_345[i].f0", print_hash_value);

    }
    transparent_crc(p_1352->g_366, "p_1352->g_366", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_1352->g_420[i][j], "p_1352->g_420[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1352->g_421.f0, "p_1352->g_421.f0", print_hash_value);
    transparent_crc(p_1352->g_421.f1, "p_1352->g_421.f1", print_hash_value);
    transparent_crc(p_1352->g_426.f0, "p_1352->g_426.f0", print_hash_value);
    transparent_crc(p_1352->g_426.f1, "p_1352->g_426.f1", print_hash_value);
    transparent_crc(p_1352->g_458, "p_1352->g_458", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_1352->g_460[i][j], "p_1352->g_460[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1352->g_522.f0, "p_1352->g_522.f0", print_hash_value);
    transparent_crc(p_1352->g_533, "p_1352->g_533", print_hash_value);
    transparent_crc(p_1352->g_575, "p_1352->g_575", print_hash_value);
    transparent_crc(p_1352->g_616.f0, "p_1352->g_616.f0", print_hash_value);
    transparent_crc(p_1352->g_618, "p_1352->g_618", print_hash_value);
    transparent_crc(p_1352->g_630, "p_1352->g_630", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 10; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_1352->g_686[i][j][k].f0, "p_1352->g_686[i][j][k].f0", print_hash_value);
                transparent_crc(p_1352->g_686[i][j][k].f1, "p_1352->g_686[i][j][k].f1", print_hash_value);

            }
        }
    }
    transparent_crc(p_1352->g_740.f0, "p_1352->g_740.f0", print_hash_value);
    transparent_crc(p_1352->g_740.f1, "p_1352->g_740.f1", print_hash_value);
    transparent_crc(p_1352->g_743.f0, "p_1352->g_743.f0", print_hash_value);
    transparent_crc(p_1352->g_743.f1, "p_1352->g_743.f1", print_hash_value);
    transparent_crc(p_1352->g_772.f0, "p_1352->g_772.f0", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_1352->g_809[i], "p_1352->g_809[i]", print_hash_value);

    }
    transparent_crc(p_1352->g_850, "p_1352->g_850", print_hash_value);
    transparent_crc(p_1352->g_871, "p_1352->g_871", print_hash_value);
    transparent_crc(p_1352->g_878.f0, "p_1352->g_878.f0", print_hash_value);
    transparent_crc(p_1352->g_889, "p_1352->g_889", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1352->g_912[i], "p_1352->g_912[i]", print_hash_value);

    }
    transparent_crc(p_1352->g_952, "p_1352->g_952", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_1352->g_959[i][j], "p_1352->g_959[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1352->g_1064, "p_1352->g_1064", print_hash_value);
    transparent_crc(p_1352->g_1185, "p_1352->g_1185", print_hash_value);
    transparent_crc(p_1352->g_1191, "p_1352->g_1191", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_1352->g_1200[i].f0, "p_1352->g_1200[i].f0", print_hash_value);
        transparent_crc(p_1352->g_1200[i].f1, "p_1352->g_1200[i].f1", print_hash_value);

    }
    transparent_crc(p_1352->g_1269.f0, "p_1352->g_1269.f0", print_hash_value);
    transparent_crc(p_1352->g_1269.f1, "p_1352->g_1269.f1", print_hash_value);
    transparent_crc(p_1352->g_1270.f0, "p_1352->g_1270.f0", print_hash_value);
    transparent_crc(p_1352->g_1270.f1, "p_1352->g_1270.f1", print_hash_value);
    transparent_crc(p_1352->g_1338, "p_1352->g_1338", print_hash_value);
    transparent_crc(p_1352->v_collective, "p_1352->v_collective", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
