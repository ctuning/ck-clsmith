// ---fake_divergence ---inter_thread_comm -g 58,55,1 -l 2,1,1
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

// Seed: 59

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   uint64_t  f0;
   uint64_t  f1;
   volatile int64_t  f2;
};

union U1 {
   volatile uint64_t  f0;
};

struct S2 {
    volatile int32_t g_2;
    volatile int32_t g_3[10];
    int32_t g_4;
    int32_t g_9[4];
    struct S0 g_49;
    struct S0 *g_48[3];
    int32_t **g_70;
    struct S0 g_103;
    int64_t g_105;
    uint8_t g_117[1][3];
    int32_t g_125[3][9];
    int32_t *g_124;
    int16_t g_137;
    struct S0 g_157;
    uint16_t g_162;
    struct S0 g_199;
    struct S0 g_205;
    struct S0 g_208;
    uint32_t g_212;
    uint8_t g_225;
    int64_t *g_229;
    int64_t **g_228[10][10][2];
    union U1 g_239;
    union U1 g_241;
    union U1 *g_240;
    int8_t g_263[2];
    int8_t *g_262[1][7];
    int8_t *g_267;
    int64_t ***g_280;
    int32_t *g_292;
    struct S0 g_296;
    struct S0 g_315[1];
    int32_t *g_318;
    int32_t **g_320[7][8];
    struct S0 g_328;
    int16_t g_418;
    uint32_t g_511;
    volatile uint16_t g_527;
    volatile uint16_t *g_526;
    volatile uint16_t **g_525;
    int16_t g_531;
    uint32_t g_568;
    volatile int16_t g_669;
    struct S0 *g_679;
    struct S0 ** volatile g_678;
    int32_t * volatile g_701[3];
    int32_t * volatile g_702;
    int32_t * volatile g_728;
    uint32_t *g_773;
    uint32_t **g_772[3][8][2];
    int32_t * volatile g_779[1];
    int32_t ** volatile g_782;
    int32_t ** volatile g_789[2];
    int32_t ** volatile g_790;
    int32_t ** volatile g_791;
    struct S0 g_824[9][6][4];
    struct S0 **g_830;
    struct S0 g_855;
    union U1 g_868;
    union U1 g_873;
    union U1 g_875[6][6][6];
    struct S0 g_931;
    int32_t ** volatile g_978;
    union U1 g_996;
    int32_t * volatile * volatile g_1032;
    int64_t g_1043;
    struct S0 g_1044;
    volatile int32_t g_1089;
    struct S0 g_1150;
    struct S0 g_1182;
    struct S0 g_1186;
    int64_t g_1188;
    uint64_t *g_1207;
    volatile int64_t * volatile * volatile ** volatile g_1214;
    volatile int64_t * volatile * volatile ** volatile * volatile g_1213[8];
    uint8_t *g_1291;
    int32_t ***g_1309;
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
union U1  func_1(struct S2 * p_1314);
struct S0 * func_12(struct S0 * p_13, struct S2 * p_1314);
struct S0 * func_14(struct S0 * p_15, int16_t  p_16, struct S2 * p_1314);
struct S0 * func_17(int32_t  p_18, uint64_t  p_19, uint32_t  p_20, struct S2 * p_1314);
uint64_t  func_23(uint32_t  p_24, int64_t  p_25, int32_t ** p_26, int32_t  p_27, struct S2 * p_1314);
uint32_t  func_28(int32_t * p_29, struct S0 * p_30, struct S2 * p_1314);
uint64_t  func_31(int64_t  p_32, uint32_t  p_33, struct S0 * p_34, uint64_t  p_35, struct S2 * p_1314);
uint32_t  func_44(int32_t * p_45, struct S0 * p_46, int32_t  p_47, struct S2 * p_1314);
int32_t * func_52(struct S0 * p_53, struct S0 * p_54, struct S2 * p_1314);
struct S0 * func_55(uint32_t  p_56, int32_t  p_57, uint64_t  p_58, int32_t ** p_59, struct S2 * p_1314);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1314->g_4 p_1314->g_9 p_1314->g_1309 p_1314->g_70 p_1314->g_782 p_1314->g_124 p_1314->g_125 p_1314->g_240 p_1314->g_241
 * writes: p_1314->g_4 p_1314->g_9 p_1314->g_70 p_1314->g_1044.f0 p_1314->g_931.f0 p_1314->g_328.f1 p_1314->g_772
 */
union U1  func_1(struct S2 * p_1314)
{ /* block id: 4 */
    struct S0 *l_327 = &p_1314->g_328;
    int32_t l_1169[10][7] = {{0x40706C6DL,(-3L),4L,(-1L),0x243DF4BDL,0x2DC37FC2L,0x2DC37FC2L},{0x40706C6DL,(-3L),4L,(-1L),0x243DF4BDL,0x2DC37FC2L,0x2DC37FC2L},{0x40706C6DL,(-3L),4L,(-1L),0x243DF4BDL,0x2DC37FC2L,0x2DC37FC2L},{0x40706C6DL,(-3L),4L,(-1L),0x243DF4BDL,0x2DC37FC2L,0x2DC37FC2L},{0x40706C6DL,(-3L),4L,(-1L),0x243DF4BDL,0x2DC37FC2L,0x2DC37FC2L},{0x40706C6DL,(-3L),4L,(-1L),0x243DF4BDL,0x2DC37FC2L,0x2DC37FC2L},{0x40706C6DL,(-3L),4L,(-1L),0x243DF4BDL,0x2DC37FC2L,0x2DC37FC2L},{0x40706C6DL,(-3L),4L,(-1L),0x243DF4BDL,0x2DC37FC2L,0x2DC37FC2L},{0x40706C6DL,(-3L),4L,(-1L),0x243DF4BDL,0x2DC37FC2L,0x2DC37FC2L},{0x40706C6DL,(-3L),4L,(-1L),0x243DF4BDL,0x2DC37FC2L,0x2DC37FC2L}};
    uint64_t *l_1208 = &p_1314->g_855.f1;
    int8_t l_1228 = (-9L);
    int32_t l_1279 = (-5L);
    uint8_t l_1312 = 9UL;
    int32_t *l_1313 = &p_1314->g_125[2][2];
    int i, j;
    for (p_1314->g_4 = (-15); (p_1314->g_4 == 7); p_1314->g_4++)
    { /* block id: 7 */
        int32_t *l_8 = &p_1314->g_4;
        int32_t **l_7 = &l_8;
        uint32_t l_628 = 4UL;
        uint16_t *l_1153[2][9][6];
        uint16_t **l_1152 = &l_1153[1][6][4];
        uint16_t ***l_1151 = &l_1152;
        uint32_t l_1170 = 2UL;
        int64_t ****l_1194 = &p_1314->g_280;
        int64_t *****l_1193[6] = {&l_1194,(void*)0,&l_1194,&l_1194,(void*)0,&l_1194};
        uint64_t *l_1209 = &p_1314->g_1186.f1;
        int32_t l_1215[10][10][2] = {{{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL}},{{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL}},{{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL}},{{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL}},{{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL}},{{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL}},{{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL}},{{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL}},{{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL}},{{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL},{0x10588F2EL,0x2092263EL}}};
        uint32_t l_1235 = 0x7ACD62A0L;
        int i, j, k;
        for (i = 0; i < 2; i++)
        {
            for (j = 0; j < 9; j++)
            {
                for (k = 0; k < 6; k++)
                    l_1153[i][j][k] = &p_1314->g_162;
            }
        }
        (*l_7) = (void*)0;
        for (p_1314->g_9[3] = 0; (p_1314->g_9[3] != 13); p_1314->g_9[3]++)
        { /* block id: 11 */
            int32_t l_38 = 0x525BB5A2L;
            uint32_t *l_293 = (void*)0;
            uint32_t *l_294[3][6][6] = {{{&p_1314->g_212,&p_1314->g_212,&p_1314->g_212,&p_1314->g_212,&p_1314->g_212,&p_1314->g_212},{&p_1314->g_212,&p_1314->g_212,&p_1314->g_212,&p_1314->g_212,&p_1314->g_212,&p_1314->g_212},{&p_1314->g_212,&p_1314->g_212,&p_1314->g_212,&p_1314->g_212,&p_1314->g_212,&p_1314->g_212},{&p_1314->g_212,&p_1314->g_212,&p_1314->g_212,&p_1314->g_212,&p_1314->g_212,&p_1314->g_212},{&p_1314->g_212,&p_1314->g_212,&p_1314->g_212,&p_1314->g_212,&p_1314->g_212,&p_1314->g_212},{&p_1314->g_212,&p_1314->g_212,&p_1314->g_212,&p_1314->g_212,&p_1314->g_212,&p_1314->g_212}},{{&p_1314->g_212,&p_1314->g_212,&p_1314->g_212,&p_1314->g_212,&p_1314->g_212,&p_1314->g_212},{&p_1314->g_212,&p_1314->g_212,&p_1314->g_212,&p_1314->g_212,&p_1314->g_212,&p_1314->g_212},{&p_1314->g_212,&p_1314->g_212,&p_1314->g_212,&p_1314->g_212,&p_1314->g_212,&p_1314->g_212},{&p_1314->g_212,&p_1314->g_212,&p_1314->g_212,&p_1314->g_212,&p_1314->g_212,&p_1314->g_212},{&p_1314->g_212,&p_1314->g_212,&p_1314->g_212,&p_1314->g_212,&p_1314->g_212,&p_1314->g_212},{&p_1314->g_212,&p_1314->g_212,&p_1314->g_212,&p_1314->g_212,&p_1314->g_212,&p_1314->g_212}},{{&p_1314->g_212,&p_1314->g_212,&p_1314->g_212,&p_1314->g_212,&p_1314->g_212,&p_1314->g_212},{&p_1314->g_212,&p_1314->g_212,&p_1314->g_212,&p_1314->g_212,&p_1314->g_212,&p_1314->g_212},{&p_1314->g_212,&p_1314->g_212,&p_1314->g_212,&p_1314->g_212,&p_1314->g_212,&p_1314->g_212},{&p_1314->g_212,&p_1314->g_212,&p_1314->g_212,&p_1314->g_212,&p_1314->g_212,&p_1314->g_212},{&p_1314->g_212,&p_1314->g_212,&p_1314->g_212,&p_1314->g_212,&p_1314->g_212,&p_1314->g_212},{&p_1314->g_212,&p_1314->g_212,&p_1314->g_212,&p_1314->g_212,&p_1314->g_212,&p_1314->g_212}}};
            struct S0 *l_295 = &p_1314->g_296;
            int32_t **l_603 = &l_8;
            int64_t *l_608 = (void*)0;
            int64_t *l_609 = &p_1314->g_105;
            int16_t l_610[2][3];
            int32_t l_611 = 0x5762D21BL;
            struct S0 **l_1139 = &p_1314->g_679;
            int64_t *l_1156 = &p_1314->g_1043;
            int32_t l_1217 = (-1L);
            uint8_t l_1224[7] = {255UL,0x76L,255UL,255UL,0x76L,255UL,255UL};
            int32_t l_1261[6];
            int i, j, k;
            for (i = 0; i < 2; i++)
            {
                for (j = 0; j < 3; j++)
                    l_610[i][j] = 2L;
            }
            for (i = 0; i < 6; i++)
                l_1261[i] = 0x60A6F26EL;
            (1 + 1);
        }
        (*p_1314->g_1309) = (*p_1314->g_1309);
        if ((**p_1314->g_782))
            break;
    }
    for (p_1314->g_1044.f0 = 0; p_1314->g_1044.f0 < 3; p_1314->g_1044.f0 += 1)
    {
        for (p_1314->g_931.f0 = 0; p_1314->g_931.f0 < 8; p_1314->g_931.f0 += 1)
        {
            for (p_1314->g_328.f1 = 0; p_1314->g_328.f1 < 2; p_1314->g_328.f1 += 1)
            {
                p_1314->g_772[p_1314->g_1044.f0][p_1314->g_931.f0][p_1314->g_328.f1] = &p_1314->g_773;
            }
        }
    }
    return (*p_1314->g_240);
}


/* ------------------------------------------ */
/* 
 * reads : p_1314->g_678 p_1314->g_679
 * writes:
 */
struct S0 * func_12(struct S0 * p_13, struct S2 * p_1314)
{ /* block id: 524 */
    return (*p_1314->g_678);
}


/* ------------------------------------------ */
/* 
 * reads : p_1314->g_205.f1 p_1314->g_162 p_1314->g_3 p_1314->g_49.f0 p_1314->g_678 p_1314->g_157.f0 p_1314->g_679
 * writes: p_1314->g_205.f1 p_1314->g_205.f0 p_1314->g_162 p_1314->g_49.f0 p_1314->g_48 p_1314->g_679 p_1314->g_157.f0
 */
struct S0 * func_14(struct S0 * p_15, int16_t  p_16, struct S2 * p_1314)
{ /* block id: 272 */
    int16_t l_637 = 1L;
    int32_t l_642 = 0x0DD9F65BL;
    int32_t l_644 = 3L;
    int32_t l_645[4][6] = {{1L,0L,0L,1L,1L,0L},{1L,0L,0L,1L,1L,0L},{1L,0L,0L,1L,1L,0L},{1L,0L,0L,1L,1L,0L}};
    int8_t l_646[4][10][2] = {{{0L,0x55L},{0L,0x55L},{0L,0x55L},{0L,0x55L},{0L,0x55L},{0L,0x55L},{0L,0x55L},{0L,0x55L},{0L,0x55L},{0L,0x55L}},{{0L,0x55L},{0L,0x55L},{0L,0x55L},{0L,0x55L},{0L,0x55L},{0L,0x55L},{0L,0x55L},{0L,0x55L},{0L,0x55L},{0L,0x55L}},{{0L,0x55L},{0L,0x55L},{0L,0x55L},{0L,0x55L},{0L,0x55L},{0L,0x55L},{0L,0x55L},{0L,0x55L},{0L,0x55L},{0L,0x55L}},{{0L,0x55L},{0L,0x55L},{0L,0x55L},{0L,0x55L},{0L,0x55L},{0L,0x55L},{0L,0x55L},{0L,0x55L},{0L,0x55L},{0L,0x55L}}};
    int64_t l_647 = 0x437BAF4CF65042AAL;
    int64_t l_649 = 0L;
    int8_t l_672 = (-1L);
    uint16_t l_673 = 65535UL;
    uint64_t *l_680 = &p_1314->g_157.f0;
    int16_t l_691[2];
    struct S0 **l_699 = &p_1314->g_679;
    struct S0 ***l_698 = &l_699;
    uint64_t l_700[1];
    struct S0 *l_704 = (void*)0;
    uint32_t *l_755 = &p_1314->g_212;
    uint64_t *l_787 = &p_1314->g_199.f0;
    int32_t l_811 = 0x19F1F71EL;
    int8_t *l_848[4][6] = {{&l_646[3][8][1],&l_672,&l_646[3][8][1],&l_646[3][8][1],&l_672,&l_646[3][8][1]},{&l_646[3][8][1],&l_672,&l_646[3][8][1],&l_646[3][8][1],&l_672,&l_646[3][8][1]},{&l_646[3][8][1],&l_672,&l_646[3][8][1],&l_646[3][8][1],&l_672,&l_646[3][8][1]},{&l_646[3][8][1],&l_672,&l_646[3][8][1],&l_646[3][8][1],&l_672,&l_646[3][8][1]}};
    uint64_t l_906[3];
    int32_t **l_925 = &p_1314->g_318;
    int32_t l_928 = 0x2D736249L;
    int64_t **l_991 = &p_1314->g_229;
    uint32_t l_1029[2];
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_691[i] = (-1L);
    for (i = 0; i < 1; i++)
        l_700[i] = 1UL;
    for (i = 0; i < 3; i++)
        l_906[i] = 0x89F9D37AD3D9F3CBL;
    for (i = 0; i < 2; i++)
        l_1029[i] = 0xCE1E8AF7L;
    for (p_1314->g_205.f1 = (-13); (p_1314->g_205.f1 == 56); ++p_1314->g_205.f1)
    { /* block id: 275 */
        uint64_t *l_638 = &p_1314->g_205.f0;
        int32_t *l_641[4] = {&p_1314->g_125[2][2],&p_1314->g_125[2][2],&p_1314->g_125[2][2],&p_1314->g_125[2][2]};
        int16_t l_643 = (-6L);
        int32_t l_648 = (-10L);
        uint64_t l_650 = 1UL;
        int i;
        l_642 ^= ((safe_rshift_func_uint8_t_u_s((safe_lshift_func_uint8_t_u_s(0xCBL, 0)), p_16)) < (safe_sub_func_uint64_t_u_u(((*l_638) = l_637), ((safe_div_func_int32_t_s_s(p_16, 9UL)) != p_16))));
        l_642 = p_16;
        l_650++;
    }
    for (p_1314->g_162 = (-7); (p_1314->g_162 < 33); ++p_1314->g_162)
    { /* block id: 283 */
        int32_t *l_655 = &l_642;
        int32_t *l_656 = (void*)0;
        int32_t *l_657 = &l_645[3][0];
        int32_t *l_658 = &p_1314->g_125[2][2];
        int32_t *l_659 = &l_645[3][0];
        int32_t *l_660 = (void*)0;
        int32_t *l_661 = &l_645[3][0];
        int32_t *l_662 = (void*)0;
        int32_t *l_663 = &l_642;
        int32_t *l_664 = &l_642;
        int32_t *l_665 = &l_645[3][0];
        int32_t *l_666 = &l_645[2][0];
        int32_t *l_667 = (void*)0;
        int32_t *l_668[5] = {&p_1314->g_125[0][3],&p_1314->g_125[0][3],&p_1314->g_125[0][3],&p_1314->g_125[0][3],&p_1314->g_125[0][3]};
        int64_t l_670 = 1L;
        int32_t l_671 = 8L;
        int i;
        ++l_673;
        (*l_655) = (safe_div_func_uint32_t_u_u(p_1314->g_3[4], GROUP_DIVERGE(2, 1)));
        for (p_1314->g_49.f0 = 0; (p_1314->g_49.f0 <= 2); p_1314->g_49.f0 += 1)
        { /* block id: 288 */
            int i;
            (*p_1314->g_678) = (p_1314->g_48[p_1314->g_49.f0] = (void*)0);
            (*l_655) &= 2L;
        }
    }
    if (((++(*l_680)) != ((safe_rshift_func_uint8_t_u_s((safe_add_func_uint8_t_u_u(l_645[1][0], (p_16 & (safe_mod_func_int64_t_s_s(p_16, (safe_mul_func_int16_t_s_s(l_691[1], l_645[3][0]))))))), (safe_mul_func_uint8_t_u_u((safe_sub_func_uint16_t_u_u((+1UL), (safe_div_func_uint64_t_u_u(((&p_15 != ((*l_698) = &p_15)) <= ((&p_1314->g_228[6][6][1] == &p_1314->g_228[6][6][1]) < l_700[0])), p_1314->g_162)))), GROUP_DIVERGE(2, 1))))) ^ p_16)))
    { /* block id: 296 */
        int32_t *l_703 = &l_642;
        (*l_703) |= p_16;
    }
    else
    { /* block id: 298 */
        return l_704;
    }
    for (p_1314->g_49.f0 = 0; (p_1314->g_49.f0 < 4); p_1314->g_49.f0 = safe_add_func_uint64_t_u_u(p_1314->g_49.f0, 6))
    { /* block id: 303 */
        uint8_t *l_725 = &p_1314->g_225;
        int32_t l_742 = 2L;
        union U1 **l_810 = &p_1314->g_240;
        int64_t ****l_822 = (void*)0;
        uint32_t **l_849[9] = {&l_755,&l_755,&l_755,&l_755,&l_755,&l_755,&l_755,&l_755,&l_755};
        uint32_t l_850 = 0x5FF0BE13L;
        int16_t l_851 = 0L;
        uint16_t l_852 = 0x40D4L;
        uint64_t l_860[1];
        int32_t l_902 = 1L;
        int8_t **l_919 = &p_1314->g_262[0][2];
        uint32_t l_1010 = 0x99663F6FL;
        struct S0 *l_1011 = &p_1314->g_824[8][4][0];
        int32_t l_1055 = 0x68676CF3L;
        int32_t l_1056 = (-2L);
        int32_t l_1057 = 2L;
        int32_t l_1058 = 0x1DE07F6FL;
        int32_t **l_1115[3][10][1] = {{{&p_1314->g_124},{&p_1314->g_124},{&p_1314->g_124},{&p_1314->g_124},{&p_1314->g_124},{&p_1314->g_124},{&p_1314->g_124},{&p_1314->g_124},{&p_1314->g_124},{&p_1314->g_124}},{{&p_1314->g_124},{&p_1314->g_124},{&p_1314->g_124},{&p_1314->g_124},{&p_1314->g_124},{&p_1314->g_124},{&p_1314->g_124},{&p_1314->g_124},{&p_1314->g_124},{&p_1314->g_124}},{{&p_1314->g_124},{&p_1314->g_124},{&p_1314->g_124},{&p_1314->g_124},{&p_1314->g_124},{&p_1314->g_124},{&p_1314->g_124},{&p_1314->g_124},{&p_1314->g_124},{&p_1314->g_124}}};
        uint32_t **l_1116 = &p_1314->g_773;
        int i, j, k;
        for (i = 0; i < 1; i++)
            l_860[i] = 6UL;
        (1 + 1);
    }
    return (*p_1314->g_678);
}


/* ------------------------------------------ */
/* 
 * reads : p_1314->g_124 p_1314->g_9 p_1314->g_531 p_1314->g_328.f2
 * writes: p_1314->g_531 p_1314->g_137 p_1314->g_162
 */
struct S0 * func_17(int32_t  p_18, uint64_t  p_19, uint32_t  p_20, struct S2 * p_1314)
{ /* block id: 263 */
    uint16_t *l_615 = (void*)0;
    uint16_t **l_614 = &l_615;
    uint16_t *l_616[4][5] = {{&p_1314->g_162,&p_1314->g_162,&p_1314->g_162,&p_1314->g_162,&p_1314->g_162},{&p_1314->g_162,&p_1314->g_162,&p_1314->g_162,&p_1314->g_162,&p_1314->g_162},{&p_1314->g_162,&p_1314->g_162,&p_1314->g_162,&p_1314->g_162,&p_1314->g_162},{&p_1314->g_162,&p_1314->g_162,&p_1314->g_162,&p_1314->g_162,&p_1314->g_162}};
    int32_t l_619 = 2L;
    int16_t *l_620 = &p_1314->g_531;
    int32_t l_621 = (-1L);
    int16_t *l_622 = &p_1314->g_137;
    int32_t *l_625[8];
    uint32_t l_626 = 1UL;
    struct S0 *l_627 = &p_1314->g_328;
    int i, j;
    for (i = 0; i < 8; i++)
        l_625[i] = &p_1314->g_125[2][2];
    l_625[0] = (((*l_622) = (l_621 |= ((*l_620) ^= ((*p_1314->g_124) >= (((+FAKE_DIVERGE(p_1314->global_1_offset, get_global_id(1), 10)) ^ (((*l_614) = (void*)0) == l_616[1][1])) & (~(safe_add_func_int64_t_s_s(0L, l_619)))))))) , ((0x1485L | (p_1314->g_162 = (safe_div_func_int16_t_s_s((l_621 != p_19), p_1314->g_328.f2)))) , &l_619));
    l_626 = p_20;
    return l_627;
}


/* ------------------------------------------ */
/* 
 * reads : p_1314->g_125 p_1314->g_418
 * writes: p_1314->g_125 p_1314->g_418
 */
uint64_t  func_23(uint32_t  p_24, int64_t  p_25, int32_t ** p_26, int32_t  p_27, struct S2 * p_1314)
{ /* block id: 252 */
    int32_t *l_604 = &p_1314->g_125[1][0];
    (*l_604) ^= (-8L);
    for (p_1314->g_418 = 0; (p_1314->g_418 < 4); p_1314->g_418 = safe_add_func_uint32_t_u_u(p_1314->g_418, 1))
    { /* block id: 256 */
        uint32_t l_607 = 4294967287UL;
        if (l_607)
            break;
    }
    return (*l_604);
}


/* ------------------------------------------ */
/* 
 * reads : p_1314->g_225 p_1314->g_9 p_1314->g_315.f0 p_1314->g_49.f0 p_1314->g_208.f1 p_1314->g_212 p_1314->g_48 p_1314->g_199.f1 p_1314->g_103.f1 p_1314->g_205.f0 permutations p_1314->g_208.f0 p_1314->g_125 p_1314->g_205.f1 p_1314->g_124 p_1314->g_267 p_1314->g_263 p_1314->g_296.f1 p_1314->g_315.f1 p_1314->g_328.f1 p_1314->g_137 p_1314->g_162 p_1314->g_103.f0 p_1314->g_comm_values p_1314->g_117 p_1314->g_511 p_1314->g_318 p_1314->g_525 p_1314->g_531 p_1314->g_296.f0 p_1314->g_157.f0 p_1314->g_240
 * writes: p_1314->g_225 p_1314->g_137 p_1314->g_418 p_1314->g_199.f0 p_1314->g_103.f0 p_1314->g_262 p_1314->g_318 p_1314->g_296.f1 p_1314->g_48 p_1314->g_212 p_1314->g_511 p_1314->g_531 p_1314->g_296.f0 p_1314->g_568 p_1314->g_315.f0 p_1314->g_162
 */
uint32_t  func_28(int32_t * p_29, struct S0 * p_30, struct S2 * p_1314)
{ /* block id: 147 */
    int16_t l_342 = 1L;
    int32_t l_345 = 0x0625FB7EL;
    struct S0 *l_364 = (void*)0;
    int32_t l_376 = 0x2982184AL;
    int8_t l_381 = 0L;
    int32_t l_382 = 0x37497A88L;
    int32_t l_383 = 0L;
    int32_t l_391 = 1L;
    uint16_t *l_432 = &p_1314->g_162;
    int16_t *l_433 = &p_1314->g_137;
    uint32_t *l_493 = (void*)0;
    int8_t l_576 = 0x30L;
    for (p_1314->g_225 = (-15); (p_1314->g_225 != 50); ++p_1314->g_225)
    { /* block id: 150 */
        int32_t l_335[8][8] = {{0x1D7E116CL,3L,3L,0x1D7E116CL,0x3A69BA15L,0L,0L,0x3A69BA15L},{0x1D7E116CL,3L,3L,0x1D7E116CL,0x3A69BA15L,0L,0L,0x3A69BA15L},{0x1D7E116CL,3L,3L,0x1D7E116CL,0x3A69BA15L,0L,0L,0x3A69BA15L},{0x1D7E116CL,3L,3L,0x1D7E116CL,0x3A69BA15L,0L,0L,0x3A69BA15L},{0x1D7E116CL,3L,3L,0x1D7E116CL,0x3A69BA15L,0L,0L,0x3A69BA15L},{0x1D7E116CL,3L,3L,0x1D7E116CL,0x3A69BA15L,0L,0L,0x3A69BA15L},{0x1D7E116CL,3L,3L,0x1D7E116CL,0x3A69BA15L,0L,0L,0x3A69BA15L},{0x1D7E116CL,3L,3L,0x1D7E116CL,0x3A69BA15L,0L,0L,0x3A69BA15L}};
        int64_t *l_343 = (void*)0;
        int64_t *l_344[10][10][1] = {{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}}};
        uint8_t l_369 = 0x0DL;
        int32_t l_378 = 0x4F424DB9L;
        int32_t l_385 = 0x3FDEFD50L;
        int32_t l_386 = 0L;
        int32_t l_389 = (-1L);
        int32_t l_390 = 0x29618881L;
        int32_t l_395[4] = {0x022F6052L,0x022F6052L,0x022F6052L,0x022F6052L};
        int32_t *l_400 = (void*)0;
        int32_t *l_401 = (void*)0;
        int32_t *l_402 = &l_389;
        int32_t *l_403 = &p_1314->g_125[1][1];
        int32_t *l_404 = &l_382;
        int32_t *l_405 = &p_1314->g_125[2][2];
        int32_t *l_406 = &l_385;
        int32_t *l_407 = &l_395[1];
        int32_t *l_408[8][9] = {{&l_383,&l_395[1],&l_383,&l_383,&l_395[1],&l_383,&l_383,&l_395[1],&l_383},{&l_383,&l_395[1],&l_383,&l_383,&l_395[1],&l_383,&l_383,&l_395[1],&l_383},{&l_383,&l_395[1],&l_383,&l_383,&l_395[1],&l_383,&l_383,&l_395[1],&l_383},{&l_383,&l_395[1],&l_383,&l_383,&l_395[1],&l_383,&l_383,&l_395[1],&l_383},{&l_383,&l_395[1],&l_383,&l_383,&l_395[1],&l_383,&l_383,&l_395[1],&l_383},{&l_383,&l_395[1],&l_383,&l_383,&l_395[1],&l_383,&l_383,&l_395[1],&l_383},{&l_383,&l_395[1],&l_383,&l_383,&l_395[1],&l_383,&l_383,&l_395[1],&l_383},{&l_383,&l_395[1],&l_383,&l_383,&l_395[1],&l_383,&l_383,&l_395[1],&l_383}};
        uint32_t l_409 = 4294967295UL;
        int64_t ***l_414 = (void*)0;
        int16_t *l_415 = &l_342;
        int16_t *l_416 = &p_1314->g_137;
        int16_t *l_417 = &p_1314->g_418;
        uint64_t *l_421 = &p_1314->g_199.f0;
        int i, j, k;
        if ((safe_rshift_func_int8_t_s_u((safe_sub_func_int32_t_s_s((l_335[1][7] > (((((((safe_lshift_func_uint8_t_u_s((2UL && (((!l_335[6][4]) & (safe_div_func_int64_t_s_s((safe_sub_func_int64_t_s_s((l_345 = ((3L == l_342) | ((p_1314->g_9[3] , p_1314->g_315[0].f0) , (l_342 & (65534UL ^ 1L))))), p_1314->g_49.f0)), l_342))) && 0x3869F87D9EFAEA21L)), l_342)) | l_335[4][0]) || l_335[1][7]) == l_335[3][0]) && l_335[1][7]) && 0UL) ^ l_335[1][7])), 0UL)), l_342)))
        { /* block id: 152 */
            uint32_t l_358 = 6UL;
            int32_t l_377 = 1L;
            int32_t l_384 = 2L;
            int32_t l_387 = 1L;
            int32_t l_388 = 1L;
            int32_t l_392 = (-1L);
            int32_t l_393 = 0x5253CC1CL;
            uint8_t l_396 = 249UL;
            int i, j;
            barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
            p_1314->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 2)), permutations[(safe_mod_func_uint32_t_u_u(((safe_mul_func_int8_t_s_s((safe_mod_func_int32_t_s_s((safe_lshift_func_uint16_t_u_u((p_1314->g_208.f1 & (safe_add_func_int16_t_s_s(0x47FEL, (l_345 & (safe_add_func_int8_t_s_s(((((safe_add_func_int32_t_s_s(l_358, (((safe_mul_func_int8_t_s_s((safe_add_func_uint32_t_u_u(l_358, (&p_1314->g_267 == (void*)0))), (l_358 <= (((+((safe_unary_minus_func_uint8_t_u(p_1314->g_212)) != 18446744073709551606UL)) ^ l_358) < l_335[1][7])))) , p_1314->g_48[0]) != l_364))) == l_358) | GROUP_DIVERGE(0, 1)) , 0x04L), FAKE_DIVERGE(p_1314->global_0_offset, get_global_id(0), 10))))))), GROUP_DIVERGE(0, 1))), 1L)), p_1314->g_199.f1)) , p_1314->g_225), 10))][(safe_mod_func_uint32_t_u_u(p_1314->tid, 2))]));
            if ((l_378 = ((safe_rshift_func_uint8_t_u_s(p_1314->g_103.f1, (safe_div_func_int8_t_s_s(l_369, (safe_rshift_func_uint8_t_u_s(l_335[1][7], 0)))))) <= ((safe_mod_func_uint32_t_u_u(((p_1314->g_205.f0 > ((safe_rshift_func_int16_t_s_u(l_358, 4)) , (permutations[(safe_mod_func_uint32_t_u_u(((safe_mul_func_int8_t_s_s((safe_mod_func_int32_t_s_s((safe_lshift_func_uint16_t_u_u((p_1314->g_208.f1 & (safe_add_func_int16_t_s_s(0x47FEL, (l_345 & (safe_add_func_int8_t_s_s(((((safe_add_func_int32_t_s_s(l_358, (((safe_mul_func_int8_t_s_s((safe_add_func_uint32_t_u_u(l_358, (&p_1314->g_267 == (void*)0))), (l_358 <= (((+((safe_unary_minus_func_uint8_t_u(p_1314->g_212)) != 18446744073709551606UL)) ^ l_358) < l_335[1][7])))) , p_1314->g_48[0]) != l_364))) == l_358) | GROUP_DIVERGE(0, 1)) , 0x04L), FAKE_DIVERGE(p_1314->global_0_offset, get_global_id(0), 10))))))), GROUP_DIVERGE(0, 1))), 1L)), p_1314->g_199.f1)) , p_1314->g_225), 10))][(safe_mod_func_uint32_t_u_u(p_1314->tid, 2))] || l_345))) & ((l_345 >= (((1UL || p_1314->g_208.f0) || p_1314->g_125[1][4]) ^ l_376)) && l_369)), l_377)) || l_377))))
            { /* block id: 157 */
                return p_1314->g_103.f1;
            }
            else
            { /* block id: 159 */
                int32_t *l_379 = &l_377;
                int32_t *l_380[2][3] = {{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}};
                int32_t l_394 = 0x39A290A6L;
                int i, j;
                l_396++;
            }
            return p_1314->g_205.f1;
        }
        else
        { /* block id: 163 */
            int32_t *l_399 = &l_389;
            (*l_399) &= (*p_1314->g_124);
        }
        ++l_409;
        (*l_402) = (((*l_421) = (((*p_1314->g_267) & (~(safe_mul_func_uint16_t_u_u(p_1314->g_296.f1, ((*l_417) = ((*l_416) = ((*l_415) = (l_414 == (l_345 , &p_1314->g_228[5][3][0]))))))))) && (l_345 = (((l_383 ^ ((l_391 |= l_342) == ((p_1314->g_208.f0 > ((((safe_add_func_int8_t_s_s(l_376, FAKE_DIVERGE(p_1314->global_1_offset, get_global_id(1), 10))) != p_1314->g_315[0].f1) , 0x4FD4L) || l_342)) , l_382))) , p_1314->g_328.f1) != (*l_402))))) > l_382);
    }
    l_383 &= (-7L);
    l_345 ^= l_383;
    if ((safe_sub_func_int32_t_s_s(l_382, ((((safe_mul_func_int8_t_s_s(0x3FL, FAKE_DIVERGE(p_1314->group_0_offset, get_group_id(0), 10))) , (((!(((safe_rshift_func_int16_t_s_s((safe_add_func_uint64_t_u_u(GROUP_DIVERGE(1, 1), ((safe_mul_func_uint64_t_u_u(((l_432 = l_432) != (void*)0), ((((*l_433) &= (l_382 < 65535UL)) <= (l_383 | (4294967289UL >= (safe_rshift_func_int16_t_s_u((safe_sub_func_int64_t_s_s(((((((((safe_add_func_int64_t_s_s((safe_lshift_func_int16_t_s_u(l_391, l_391)), p_1314->g_263[0])) || l_391) ^ (*p_1314->g_267)) | l_376) == l_383) == l_342) , (-9L)) , 6L), l_342)), GROUP_DIVERGE(2, 1)))))) < l_345))) , p_1314->g_103.f1))), 13)) , l_345) & p_1314->g_263[0])) & (-5L)) | 0x602AL)) , l_345) > 18446744073709551615UL))))
    { /* block id: 179 */
        int32_t l_448 = (-1L);
        int32_t l_455 = 0x668F11CCL;
        uint64_t *l_464 = &p_1314->g_103.f0;
        int8_t **l_465 = &p_1314->g_262[0][0];
        int32_t **l_466 = &p_1314->g_318;
        l_448 = (safe_div_func_uint8_t_u_u((((safe_add_func_uint16_t_u_u((((*l_465) = (((safe_sub_func_int16_t_s_s((((~(l_342 == l_448)) != (((safe_sub_func_uint8_t_u_u((+((l_448 && (safe_mod_func_int32_t_s_s(((&p_1314->g_280 != &p_1314->g_280) < FAKE_DIVERGE(p_1314->global_2_offset, get_global_id(2), 10)), ((safe_lshift_func_int16_t_s_u(l_383, 6)) || (+(!l_455)))))) <= ((safe_lshift_func_uint8_t_u_u(((safe_mul_func_uint16_t_u_u((((((*l_464) |= (0x29EF3C7FL <= ((safe_lshift_func_uint16_t_u_u(FAKE_DIVERGE(p_1314->group_0_offset, get_group_id(0), 10), (safe_rshift_func_int16_t_s_s((l_376 <= l_391), p_1314->g_162)))) , FAKE_DIVERGE(p_1314->local_1_offset, get_local_id(1), 10)))) ^ l_448) <= l_455) != (-1L)), p_1314->g_comm_values[p_1314->tid])) <= p_1314->g_212), GROUP_DIVERGE(0, 1))) | l_448))), 1L)) , l_381) , 0x05A87CB3L)) , (-1L)), 0x3A4CL)) , 0x106454F9L) , (void*)0)) == (void*)0), l_448)) != l_391) , p_1314->g_199.f1), l_455));
        (*l_466) = &l_448;
        p_29 = p_29;
    }
    else
    { /* block id: 185 */
        int32_t *l_469[4][6] = {{&p_1314->g_125[2][2],&p_1314->g_125[2][2],&p_1314->g_125[0][2],&p_1314->g_125[2][2],&p_1314->g_9[1],&p_1314->g_125[2][2]},{&p_1314->g_125[2][2],&p_1314->g_125[2][2],&p_1314->g_125[0][2],&p_1314->g_125[2][2],&p_1314->g_9[1],&p_1314->g_125[2][2]},{&p_1314->g_125[2][2],&p_1314->g_125[2][2],&p_1314->g_125[0][2],&p_1314->g_125[2][2],&p_1314->g_9[1],&p_1314->g_125[2][2]},{&p_1314->g_125[2][2],&p_1314->g_125[2][2],&p_1314->g_125[0][2],&p_1314->g_125[2][2],&p_1314->g_9[1],&p_1314->g_125[2][2]}};
        uint16_t *l_521[1];
        uint64_t l_575 = 0xE26A32E214D462F7L;
        int64_t l_593 = 9L;
        int i, j;
        for (i = 0; i < 1; i++)
            l_521[i] = (void*)0;
        for (p_1314->g_296.f1 = 0; (p_1314->g_296.f1 < 31); p_1314->g_296.f1 = safe_add_func_int16_t_s_s(p_1314->g_296.f1, 3))
        { /* block id: 188 */
            int64_t l_476 = 0x3180407585D07C9BL;
            uint16_t l_494 = 65535UL;
            l_469[1][3] = (void*)0;
            l_391 ^= ((((((safe_rshift_func_uint16_t_u_s((((p_1314->g_315[0].f0 > (safe_lshift_func_uint16_t_u_s((FAKE_DIVERGE(p_1314->group_2_offset, get_group_id(2), 10) | (*p_1314->g_124)), 2))) < (safe_mul_func_int8_t_s_s(l_476, (((safe_div_func_uint16_t_u_u(((safe_lshift_func_uint8_t_u_s((p_1314->g_225 ^= (((!0x65AF964579260DD0L) >= ((l_383 >= (((safe_lshift_func_int16_t_s_u((0x62A1BF85L && 6L), 0)) && ((safe_mul_func_int16_t_s_s(((((safe_add_func_int8_t_s_s((safe_mod_func_int16_t_s_s(((safe_lshift_func_uint8_t_u_s((safe_lshift_func_uint16_t_u_s((l_469[2][4] == l_493), l_476)), l_494)) < 0x3EC3L), l_381)), 0x5FL)) , l_342) | p_1314->g_117[0][0]) == 9UL), 65535UL)) >= l_382)) , l_494)) < GROUP_DIVERGE(1, 1))) <= l_376)), 3)) & 0x5A0D0A1CC50CB6DBL), l_345)) > l_345) == l_476)))) == p_1314->g_9[2]), 3)) && 0x70A5L) <= l_342) , p_1314->g_199.f1) <= 0x40A3L) , (*p_1314->g_124));
        }
        for (l_383 = 0; (l_383 <= 0); l_383 += 1)
        { /* block id: 195 */
            int32_t l_495 = 0L;
            int32_t l_502 = 0x6CD0A4D0L;
            int32_t l_514 = 0x242B0973L;
            int i;
            p_1314->g_48[(l_383 + 2)] = p_30;
            for (l_376 = 0; (l_376 <= 3); l_376 += 1)
            { /* block id: 199 */
                int32_t **l_496[2][4][8] = {{{&l_469[3][0],&p_1314->g_124,&l_469[2][2],&l_469[(l_383 + 3)][(l_383 + 4)],&l_469[2][2],&p_1314->g_124,&l_469[3][0],&p_1314->g_124},{&l_469[3][0],&p_1314->g_124,&l_469[2][2],&l_469[(l_383 + 3)][(l_383 + 4)],&l_469[2][2],&p_1314->g_124,&l_469[3][0],&p_1314->g_124},{&l_469[3][0],&p_1314->g_124,&l_469[2][2],&l_469[(l_383 + 3)][(l_383 + 4)],&l_469[2][2],&p_1314->g_124,&l_469[3][0],&p_1314->g_124},{&l_469[3][0],&p_1314->g_124,&l_469[2][2],&l_469[(l_383 + 3)][(l_383 + 4)],&l_469[2][2],&p_1314->g_124,&l_469[3][0],&p_1314->g_124}},{{&l_469[3][0],&p_1314->g_124,&l_469[2][2],&l_469[(l_383 + 3)][(l_383 + 4)],&l_469[2][2],&p_1314->g_124,&l_469[3][0],&p_1314->g_124},{&l_469[3][0],&p_1314->g_124,&l_469[2][2],&l_469[(l_383 + 3)][(l_383 + 4)],&l_469[2][2],&p_1314->g_124,&l_469[3][0],&p_1314->g_124},{&l_469[3][0],&p_1314->g_124,&l_469[2][2],&l_469[(l_383 + 3)][(l_383 + 4)],&l_469[2][2],&p_1314->g_124,&l_469[3][0],&p_1314->g_124},{&l_469[3][0],&p_1314->g_124,&l_469[2][2],&l_469[(l_383 + 3)][(l_383 + 4)],&l_469[2][2],&p_1314->g_124,&l_469[3][0],&p_1314->g_124}}};
                uint32_t *l_499[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                uint32_t *l_509 = (void*)0;
                uint32_t *l_510 = &p_1314->g_511;
                int i, j, k;
                l_382 = (l_495 && 0x74CA6F72L);
                l_469[3][1] = l_469[(l_383 + 3)][(l_383 + 4)];
                l_514 = (((*l_433) ^= ((safe_mul_func_int16_t_s_s(((l_495 = l_391) & (p_1314->g_212--)), ((0x6328L <= ((l_502 = ((-6L) < (l_502 , l_342))) < (0x1C53491C5E827301L & ((safe_lshift_func_uint8_t_u_u(255UL, p_1314->g_117[0][1])) >= (!(safe_lshift_func_uint8_t_u_u((((*l_510)++) , FAKE_DIVERGE(p_1314->group_1_offset, get_group_id(1), 10)), ((l_514 <= 0x6723C44B6AA5F18EL) != 0x0D43L)))))))) >= l_514))) & p_1314->g_162)) != p_1314->g_9[3]);
                if ((*p_1314->g_318))
                    continue;
            }
        }
        for (p_1314->g_212 = (-28); (p_1314->g_212 > 1); ++p_1314->g_212)
        { /* block id: 213 */
            uint16_t **l_522 = &l_432;
            uint16_t *l_524 = &p_1314->g_162;
            uint16_t **l_523 = &l_524;
            int32_t l_528 = 0x30FF073BL;
            int32_t l_548 = 1L;
            uint8_t l_599 = 255UL;
            p_1314->g_531 &= (((safe_div_func_int32_t_s_s((((safe_lshift_func_uint8_t_u_u((((*l_522) = l_521[0]) == ((*l_523) = l_433)), p_1314->g_205.f0)) | ((p_1314->g_525 != (void*)0) || l_528)) > (l_528 || 0UL)), (((((p_30 != p_1314->g_48[0]) || l_383) | FAKE_DIVERGE(p_1314->global_1_offset, get_global_id(1), 10)) > 6L) & GROUP_DIVERGE(0, 1)))) ^ l_528) >= 65530UL);
            for (p_1314->g_296.f0 = (-17); (p_1314->g_296.f0 >= 22); p_1314->g_296.f0++)
            { /* block id: 219 */
                int64_t l_538 = 1L;
                int64_t *l_545[9][7] = {{&p_1314->g_105,&p_1314->g_105,&p_1314->g_105,&p_1314->g_105,&p_1314->g_105,&p_1314->g_105,&p_1314->g_105},{&p_1314->g_105,&p_1314->g_105,&p_1314->g_105,&p_1314->g_105,&p_1314->g_105,&p_1314->g_105,&p_1314->g_105},{&p_1314->g_105,&p_1314->g_105,&p_1314->g_105,&p_1314->g_105,&p_1314->g_105,&p_1314->g_105,&p_1314->g_105},{&p_1314->g_105,&p_1314->g_105,&p_1314->g_105,&p_1314->g_105,&p_1314->g_105,&p_1314->g_105,&p_1314->g_105},{&p_1314->g_105,&p_1314->g_105,&p_1314->g_105,&p_1314->g_105,&p_1314->g_105,&p_1314->g_105,&p_1314->g_105},{&p_1314->g_105,&p_1314->g_105,&p_1314->g_105,&p_1314->g_105,&p_1314->g_105,&p_1314->g_105,&p_1314->g_105},{&p_1314->g_105,&p_1314->g_105,&p_1314->g_105,&p_1314->g_105,&p_1314->g_105,&p_1314->g_105,&p_1314->g_105},{&p_1314->g_105,&p_1314->g_105,&p_1314->g_105,&p_1314->g_105,&p_1314->g_105,&p_1314->g_105,&p_1314->g_105},{&p_1314->g_105,&p_1314->g_105,&p_1314->g_105,&p_1314->g_105,&p_1314->g_105,&p_1314->g_105,&p_1314->g_105}};
                int32_t l_549 = 0x4C5C8D1BL;
                int32_t l_595 = 0L;
                int32_t l_597[8] = {0x22459B9CL,0x7ACDEC68L,0x22459B9CL,0x22459B9CL,0x7ACDEC68L,0x22459B9CL,0x22459B9CL,0x7ACDEC68L};
                int32_t *l_602 = (void*)0;
                int i, j;
                l_549 = (safe_mod_func_uint32_t_u_u((l_391 = (p_1314->g_212 | 0xBC4BL)), (safe_sub_func_uint32_t_u_u((l_538 & (((*p_1314->g_267) , 0x3EF6L) != (safe_rshift_func_uint8_t_u_u(((safe_div_func_int32_t_s_s(((l_528 = (safe_mul_func_uint8_t_u_u(0UL, (l_345 == p_1314->g_296.f0)))) >= (safe_div_func_int32_t_s_s(7L, p_1314->g_162))), l_548)) > 0x62L), 1)))), l_548))));
                if (l_548)
                { /* block id: 223 */
                    int16_t *l_556 = &p_1314->g_137;
                    int32_t l_559 = (-1L);
                    uint32_t *l_566 = (void*)0;
                    uint32_t *l_567 = &p_1314->g_568;
                    uint64_t *l_571 = &p_1314->g_315[0].f0;
                    if ((safe_mod_func_uint16_t_u_u((((((l_548 >= p_1314->g_263[0]) , (safe_div_func_uint8_t_u_u(FAKE_DIVERGE(p_1314->group_1_offset, get_group_id(1), 10), (safe_div_func_uint16_t_u_u(p_1314->g_137, 0x5530L))))) | ((((l_556 != ((l_549 , (safe_add_func_uint64_t_u_u((l_559 , ((safe_mul_func_int16_t_s_s((safe_lshift_func_int8_t_s_s((safe_sub_func_uint32_t_u_u(((*l_567) = GROUP_DIVERGE(0, 1)), (!(safe_add_func_uint64_t_u_u(((*l_571) ^= ((l_528 |= (p_1314->g_137 <= (&p_1314->g_511 == p_29))) != 0x5A79202957843202L)), 0x3AE4421EA41BF49EL))))), 5)), l_538)) > GROUP_DIVERGE(2, 1))), l_382))) , &p_1314->g_418)) > l_383) && 0L) | l_559)) == p_1314->g_531) ^ p_1314->g_225), 2L)))
                    { /* block id: 227 */
                        uint64_t l_572 = 0x4567D09328D4F515L;
                        l_572++;
                        return l_575;
                    }
                    else
                    { /* block id: 230 */
                        return l_549;
                    }
                }
                else
                { /* block id: 233 */
                    uint8_t l_577 = 0x64L;
                    int16_t *l_592 = &l_342;
                    int32_t l_596 = (-1L);
                    int32_t l_598 = 0x788FA732L;
                    --l_577;
                    if ((l_549 = (l_577 > ((((l_577 , ((safe_mod_func_int32_t_s_s(((l_528 = ((safe_lshift_func_uint16_t_u_u((((p_1314->g_162 = (((**l_523) = (p_1314->g_208.f1 ^ (safe_mod_func_int16_t_s_s((((-7L) & ((safe_lshift_func_uint16_t_u_u(l_577, 11)) ^ (((l_577 | (safe_add_func_uint16_t_u_u(l_577, (safe_rshift_func_uint8_t_u_s(((void*)0 == l_592), 0))))) | 0x141AD05D9683D928L) && (*p_1314->g_318)))) >= l_538), l_538)))) && 0UL)) == l_528) <= (-4L)), p_1314->g_157.f0)) > l_548)) & l_548), l_593)) <= 4294967290UL)) > GROUP_DIVERGE(2, 1)) > 0xF3A458B598C48805L) > p_1314->g_296.f1))))
                    { /* block id: 239 */
                        int32_t **l_594[3][4][3];
                        int i, j, k;
                        for (i = 0; i < 3; i++)
                        {
                            for (j = 0; j < 4; j++)
                            {
                                for (k = 0; k < 3; k++)
                                    l_594[i][j][k] = (void*)0;
                            }
                        }
                        p_29 = func_52(((p_1314->g_240 == (void*)0) , (void*)0), p_1314->g_48[0], p_1314);
                        ++l_599;
                    }
                    else
                    { /* block id: 242 */
                        if ((*p_1314->g_318))
                            break;
                    }
                    l_602 = &l_597[4];
                    if ((*p_1314->g_124))
                        break;
                }
            }
        }
    }
    return p_1314->g_137;
}


/* ------------------------------------------ */
/* 
 * reads : p_1314->g_137 p_1314->g_315.f0 p_1314->g_70
 * writes: p_1314->g_137 p_1314->g_318 p_1314->g_70 p_1314->g_320 p_1314->g_48 p_1314->g_292
 */
uint64_t  func_31(int64_t  p_32, uint32_t  p_33, struct S0 * p_34, uint64_t  p_35, struct S2 * p_1314)
{ /* block id: 134 */
    int32_t *l_297 = &p_1314->g_125[2][0];
    int32_t *l_298 = (void*)0;
    int32_t l_299 = (-10L);
    int32_t *l_300 = &l_299;
    int32_t l_301 = 0x78C08C1BL;
    int32_t *l_302 = (void*)0;
    int32_t l_303[8][3] = {{0L,1L,1L},{0L,1L,1L},{0L,1L,1L},{0L,1L,1L},{0L,1L,1L},{0L,1L,1L},{0L,1L,1L},{0L,1L,1L}};
    int32_t *l_304[4][7][9] = {{{&l_303[6][0],&p_1314->g_125[1][6],&l_301,&l_299,&l_301,&p_1314->g_125[1][6],&l_303[6][0],&p_1314->g_9[0],&p_1314->g_125[1][7]},{&l_303[6][0],&p_1314->g_125[1][6],&l_301,&l_299,&l_301,&p_1314->g_125[1][6],&l_303[6][0],&p_1314->g_9[0],&p_1314->g_125[1][7]},{&l_303[6][0],&p_1314->g_125[1][6],&l_301,&l_299,&l_301,&p_1314->g_125[1][6],&l_303[6][0],&p_1314->g_9[0],&p_1314->g_125[1][7]},{&l_303[6][0],&p_1314->g_125[1][6],&l_301,&l_299,&l_301,&p_1314->g_125[1][6],&l_303[6][0],&p_1314->g_9[0],&p_1314->g_125[1][7]},{&l_303[6][0],&p_1314->g_125[1][6],&l_301,&l_299,&l_301,&p_1314->g_125[1][6],&l_303[6][0],&p_1314->g_9[0],&p_1314->g_125[1][7]},{&l_303[6][0],&p_1314->g_125[1][6],&l_301,&l_299,&l_301,&p_1314->g_125[1][6],&l_303[6][0],&p_1314->g_9[0],&p_1314->g_125[1][7]},{&l_303[6][0],&p_1314->g_125[1][6],&l_301,&l_299,&l_301,&p_1314->g_125[1][6],&l_303[6][0],&p_1314->g_9[0],&p_1314->g_125[1][7]}},{{&l_303[6][0],&p_1314->g_125[1][6],&l_301,&l_299,&l_301,&p_1314->g_125[1][6],&l_303[6][0],&p_1314->g_9[0],&p_1314->g_125[1][7]},{&l_303[6][0],&p_1314->g_125[1][6],&l_301,&l_299,&l_301,&p_1314->g_125[1][6],&l_303[6][0],&p_1314->g_9[0],&p_1314->g_125[1][7]},{&l_303[6][0],&p_1314->g_125[1][6],&l_301,&l_299,&l_301,&p_1314->g_125[1][6],&l_303[6][0],&p_1314->g_9[0],&p_1314->g_125[1][7]},{&l_303[6][0],&p_1314->g_125[1][6],&l_301,&l_299,&l_301,&p_1314->g_125[1][6],&l_303[6][0],&p_1314->g_9[0],&p_1314->g_125[1][7]},{&l_303[6][0],&p_1314->g_125[1][6],&l_301,&l_299,&l_301,&p_1314->g_125[1][6],&l_303[6][0],&p_1314->g_9[0],&p_1314->g_125[1][7]},{&l_303[6][0],&p_1314->g_125[1][6],&l_301,&l_299,&l_301,&p_1314->g_125[1][6],&l_303[6][0],&p_1314->g_9[0],&p_1314->g_125[1][7]},{&l_303[6][0],&p_1314->g_125[1][6],&l_301,&l_299,&l_301,&p_1314->g_125[1][6],&l_303[6][0],&p_1314->g_9[0],&p_1314->g_125[1][7]}},{{&l_303[6][0],&p_1314->g_125[1][6],&l_301,&l_299,&l_301,&p_1314->g_125[1][6],&l_303[6][0],&p_1314->g_9[0],&p_1314->g_125[1][7]},{&l_303[6][0],&p_1314->g_125[1][6],&l_301,&l_299,&l_301,&p_1314->g_125[1][6],&l_303[6][0],&p_1314->g_9[0],&p_1314->g_125[1][7]},{&l_303[6][0],&p_1314->g_125[1][6],&l_301,&l_299,&l_301,&p_1314->g_125[1][6],&l_303[6][0],&p_1314->g_9[0],&p_1314->g_125[1][7]},{&l_303[6][0],&p_1314->g_125[1][6],&l_301,&l_299,&l_301,&p_1314->g_125[1][6],&l_303[6][0],&p_1314->g_9[0],&p_1314->g_125[1][7]},{&l_303[6][0],&p_1314->g_125[1][6],&l_301,&l_299,&l_301,&p_1314->g_125[1][6],&l_303[6][0],&p_1314->g_9[0],&p_1314->g_125[1][7]},{&l_303[6][0],&p_1314->g_125[1][6],&l_301,&l_299,&l_301,&p_1314->g_125[1][6],&l_303[6][0],&p_1314->g_9[0],&p_1314->g_125[1][7]},{&l_303[6][0],&p_1314->g_125[1][6],&l_301,&l_299,&l_301,&p_1314->g_125[1][6],&l_303[6][0],&p_1314->g_9[0],&p_1314->g_125[1][7]}},{{&l_303[6][0],&p_1314->g_125[1][6],&l_301,&l_299,&l_301,&p_1314->g_125[1][6],&l_303[6][0],&p_1314->g_9[0],&p_1314->g_125[1][7]},{&l_303[6][0],&p_1314->g_125[1][6],&l_301,&l_299,&l_301,&p_1314->g_125[1][6],&l_303[6][0],&p_1314->g_9[0],&p_1314->g_125[1][7]},{&l_303[6][0],&p_1314->g_125[1][6],&l_301,&l_299,&l_301,&p_1314->g_125[1][6],&l_303[6][0],&p_1314->g_9[0],&p_1314->g_125[1][7]},{&l_303[6][0],&p_1314->g_125[1][6],&l_301,&l_299,&l_301,&p_1314->g_125[1][6],&l_303[6][0],&p_1314->g_9[0],&p_1314->g_125[1][7]},{&l_303[6][0],&p_1314->g_125[1][6],&l_301,&l_299,&l_301,&p_1314->g_125[1][6],&l_303[6][0],&p_1314->g_9[0],&p_1314->g_125[1][7]},{&l_303[6][0],&p_1314->g_125[1][6],&l_301,&l_299,&l_301,&p_1314->g_125[1][6],&l_303[6][0],&p_1314->g_9[0],&p_1314->g_125[1][7]},{&l_303[6][0],&p_1314->g_125[1][6],&l_301,&l_299,&l_301,&p_1314->g_125[1][6],&l_303[6][0],&p_1314->g_9[0],&p_1314->g_125[1][7]}}};
    int32_t l_305 = 0x103E8C47L;
    int32_t l_306 = (-2L);
    int64_t l_307 = 0x03FAD3BB9674188EL;
    uint32_t l_308 = 4294967289UL;
    int i, j, k;
    l_308--;
    for (p_1314->g_137 = (-10); (p_1314->g_137 != 27); ++p_1314->g_137)
    { /* block id: 138 */
        int32_t *l_313 = &l_305;
        struct S0 *l_314 = &p_1314->g_315[0];
        int32_t **l_316[8][10][3] = {{{&p_1314->g_124,&l_304[1][6][8],(void*)0},{&p_1314->g_124,&l_304[1][6][8],(void*)0},{&p_1314->g_124,&l_304[1][6][8],(void*)0},{&p_1314->g_124,&l_304[1][6][8],(void*)0},{&p_1314->g_124,&l_304[1][6][8],(void*)0},{&p_1314->g_124,&l_304[1][6][8],(void*)0},{&p_1314->g_124,&l_304[1][6][8],(void*)0},{&p_1314->g_124,&l_304[1][6][8],(void*)0},{&p_1314->g_124,&l_304[1][6][8],(void*)0},{&p_1314->g_124,&l_304[1][6][8],(void*)0}},{{&p_1314->g_124,&l_304[1][6][8],(void*)0},{&p_1314->g_124,&l_304[1][6][8],(void*)0},{&p_1314->g_124,&l_304[1][6][8],(void*)0},{&p_1314->g_124,&l_304[1][6][8],(void*)0},{&p_1314->g_124,&l_304[1][6][8],(void*)0},{&p_1314->g_124,&l_304[1][6][8],(void*)0},{&p_1314->g_124,&l_304[1][6][8],(void*)0},{&p_1314->g_124,&l_304[1][6][8],(void*)0},{&p_1314->g_124,&l_304[1][6][8],(void*)0},{&p_1314->g_124,&l_304[1][6][8],(void*)0}},{{&p_1314->g_124,&l_304[1][6][8],(void*)0},{&p_1314->g_124,&l_304[1][6][8],(void*)0},{&p_1314->g_124,&l_304[1][6][8],(void*)0},{&p_1314->g_124,&l_304[1][6][8],(void*)0},{&p_1314->g_124,&l_304[1][6][8],(void*)0},{&p_1314->g_124,&l_304[1][6][8],(void*)0},{&p_1314->g_124,&l_304[1][6][8],(void*)0},{&p_1314->g_124,&l_304[1][6][8],(void*)0},{&p_1314->g_124,&l_304[1][6][8],(void*)0},{&p_1314->g_124,&l_304[1][6][8],(void*)0}},{{&p_1314->g_124,&l_304[1][6][8],(void*)0},{&p_1314->g_124,&l_304[1][6][8],(void*)0},{&p_1314->g_124,&l_304[1][6][8],(void*)0},{&p_1314->g_124,&l_304[1][6][8],(void*)0},{&p_1314->g_124,&l_304[1][6][8],(void*)0},{&p_1314->g_124,&l_304[1][6][8],(void*)0},{&p_1314->g_124,&l_304[1][6][8],(void*)0},{&p_1314->g_124,&l_304[1][6][8],(void*)0},{&p_1314->g_124,&l_304[1][6][8],(void*)0},{&p_1314->g_124,&l_304[1][6][8],(void*)0}},{{&p_1314->g_124,&l_304[1][6][8],(void*)0},{&p_1314->g_124,&l_304[1][6][8],(void*)0},{&p_1314->g_124,&l_304[1][6][8],(void*)0},{&p_1314->g_124,&l_304[1][6][8],(void*)0},{&p_1314->g_124,&l_304[1][6][8],(void*)0},{&p_1314->g_124,&l_304[1][6][8],(void*)0},{&p_1314->g_124,&l_304[1][6][8],(void*)0},{&p_1314->g_124,&l_304[1][6][8],(void*)0},{&p_1314->g_124,&l_304[1][6][8],(void*)0},{&p_1314->g_124,&l_304[1][6][8],(void*)0}},{{&p_1314->g_124,&l_304[1][6][8],(void*)0},{&p_1314->g_124,&l_304[1][6][8],(void*)0},{&p_1314->g_124,&l_304[1][6][8],(void*)0},{&p_1314->g_124,&l_304[1][6][8],(void*)0},{&p_1314->g_124,&l_304[1][6][8],(void*)0},{&p_1314->g_124,&l_304[1][6][8],(void*)0},{&p_1314->g_124,&l_304[1][6][8],(void*)0},{&p_1314->g_124,&l_304[1][6][8],(void*)0},{&p_1314->g_124,&l_304[1][6][8],(void*)0},{&p_1314->g_124,&l_304[1][6][8],(void*)0}},{{&p_1314->g_124,&l_304[1][6][8],(void*)0},{&p_1314->g_124,&l_304[1][6][8],(void*)0},{&p_1314->g_124,&l_304[1][6][8],(void*)0},{&p_1314->g_124,&l_304[1][6][8],(void*)0},{&p_1314->g_124,&l_304[1][6][8],(void*)0},{&p_1314->g_124,&l_304[1][6][8],(void*)0},{&p_1314->g_124,&l_304[1][6][8],(void*)0},{&p_1314->g_124,&l_304[1][6][8],(void*)0},{&p_1314->g_124,&l_304[1][6][8],(void*)0},{&p_1314->g_124,&l_304[1][6][8],(void*)0}},{{&p_1314->g_124,&l_304[1][6][8],(void*)0},{&p_1314->g_124,&l_304[1][6][8],(void*)0},{&p_1314->g_124,&l_304[1][6][8],(void*)0},{&p_1314->g_124,&l_304[1][6][8],(void*)0},{&p_1314->g_124,&l_304[1][6][8],(void*)0},{&p_1314->g_124,&l_304[1][6][8],(void*)0},{&p_1314->g_124,&l_304[1][6][8],(void*)0},{&p_1314->g_124,&l_304[1][6][8],(void*)0},{&p_1314->g_124,&l_304[1][6][8],(void*)0},{&p_1314->g_124,&l_304[1][6][8],(void*)0}}};
        int32_t *l_317[3][3] = {{(void*)0,&p_1314->g_4,(void*)0},{(void*)0,&p_1314->g_4,(void*)0},{(void*)0,&p_1314->g_4,(void*)0}};
        int32_t ***l_319 = &p_1314->g_70;
        struct S0 *l_323 = (void*)0;
        struct S0 **l_324[8] = {&l_323,&p_1314->g_48[0],&l_323,&l_323,&p_1314->g_48[0],&l_323,&l_323,&p_1314->g_48[0]};
        int i, j, k;
        p_1314->g_292 = (((l_313 == (p_1314->g_318 = (l_317[0][2] = func_52(p_34, l_314, p_1314)))) >= ((((*l_319) = &l_313) == (p_1314->g_320[5][2] = &p_1314->g_292)) , ((safe_add_func_uint8_t_u_u(((p_1314->g_48[0] = l_323) == ((safe_rshift_func_int8_t_s_s(((*l_313) >= (0xA9L > p_35)), p_32)) , (void*)0)), 0L)) , p_1314->g_315[0].f0))) , (*p_1314->g_70));
    }
    return p_33;
}


/* ------------------------------------------ */
/* 
 * reads : p_1314->g_9 p_1314->g_70 p_1314->g_48 p_1314->g_49.f0 p_1314->g_103.f1 p_1314->g_49.f1 p_1314->g_4 p_1314->g_103.f0 p_1314->g_105 p_1314->g_124
 * writes: p_1314->g_comm_values p_1314->g_105 p_1314->g_103.f1 p_1314->g_103.f0 p_1314->g_117 p_1314->g_124 p_1314->g_125 p_1314->g_292
 */
uint32_t  func_44(int32_t * p_45, struct S0 * p_46, int32_t  p_47, struct S2 * p_1314)
{ /* block id: 12 */
    uint32_t l_60 = 4294967295UL;
    int32_t **l_288 = &p_1314->g_124;
    int32_t **l_289 = (void*)0;
    int32_t *l_291[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int32_t **l_290[4];
    int i;
    for (i = 0; i < 4; i++)
        l_290[i] = &l_291[6];
    p_1314->g_292 = ((*l_288) = func_52(func_55((0x55BBB785AA1EDE5AL >= (l_60 , (l_60 < ((safe_mod_func_uint8_t_u_u(((p_1314->g_9[3] , l_60) >= 0UL), (safe_rshift_func_int16_t_s_u(0x1E97L, 5)))) != (safe_mod_func_int32_t_s_s(l_60, (safe_add_func_int64_t_s_s((safe_unary_minus_func_int8_t_s((p_47 , p_1314->g_9[2]))), FAKE_DIVERGE(p_1314->global_0_offset, get_global_id(0), 10))))))))), l_60, p_47, p_1314->g_70, p_1314), p_1314->g_48[1], p_1314));
    return p_47;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t * func_52(struct S0 * p_53, struct S0 * p_54, struct S2 * p_1314)
{ /* block id: 127 */
    uint32_t l_284 = 4UL;
    int32_t *l_287 = &p_1314->g_9[3];
    --l_284;
    return l_287;
}


/* ------------------------------------------ */
/* 
 * reads : p_1314->g_48 p_1314->g_49.f0 p_1314->g_103.f1 p_1314->g_9 p_1314->g_49.f1 p_1314->g_4 p_1314->g_103.f0 p_1314->g_105 p_1314->g_124
 * writes: p_1314->g_comm_values p_1314->g_105 p_1314->g_103.f1 p_1314->g_103.f0 p_1314->g_117 p_1314->g_124 p_1314->g_125
 */
struct S0 * func_55(uint32_t  p_56, int32_t  p_57, uint64_t  p_58, int32_t ** p_59, struct S2 * p_1314)
{ /* block id: 13 */
    int8_t l_94 = (-1L);
    int32_t l_106 = 0x0041AE35L;
    int32_t l_139 = 1L;
    int32_t l_141 = (-4L);
    int32_t l_143 = 0x7FA48941L;
    int32_t l_145 = 0x4425DF7EL;
    int32_t l_146 = 6L;
    int32_t l_147 = 2L;
    int32_t l_148 = 1L;
    int32_t l_149 = 0x4E42CD07L;
    int32_t l_150 = 0x3181F630L;
    struct S0 *l_207[4];
    uint32_t l_233 = 0xD7F7F05AL;
    union U1 *l_238 = &p_1314->g_239;
    int64_t ***l_278 = &p_1314->g_228[6][6][1];
    int32_t *l_282 = (void*)0;
    int32_t *l_283 = &l_148;
    int i;
    for (i = 0; i < 4; i++)
        l_207[i] = &p_1314->g_208;
    for (p_56 = 0; (p_56 <= 2); p_56 += 1)
    { /* block id: 16 */
        int32_t l_81 = 0x7EE22E7EL;
        int64_t *l_95 = (void*)0;
        int64_t *l_96 = (void*)0;
        int64_t *l_97 = (void*)0;
        int64_t *l_98 = (void*)0;
        int64_t *l_99 = (void*)0;
        int32_t l_100 = 0x70491844L;
        struct S0 *l_102 = &p_1314->g_103;
        struct S0 **l_101 = &l_102;
        int64_t *l_104 = &p_1314->g_105;
        int32_t l_138 = 0L;
        int32_t l_144[5][2][4] = {{{0x4D540B5EL,0L,0L,0x4D540B5EL},{0x4D540B5EL,0L,0L,0x4D540B5EL}},{{0x4D540B5EL,0L,0L,0x4D540B5EL},{0x4D540B5EL,0L,0L,0x4D540B5EL}},{{0x4D540B5EL,0L,0L,0x4D540B5EL},{0x4D540B5EL,0L,0L,0x4D540B5EL}},{{0x4D540B5EL,0L,0L,0x4D540B5EL},{0x4D540B5EL,0L,0L,0x4D540B5EL}},{{0x4D540B5EL,0L,0L,0x4D540B5EL},{0x4D540B5EL,0L,0L,0x4D540B5EL}}};
        uint64_t l_151 = 0x5C74EEC173A89DF1L;
        int i, j, k;
        l_106 ^= (safe_add_func_int64_t_s_s((((safe_rshift_func_int8_t_s_s((p_1314->g_48[p_56] == (void*)0), (safe_mod_func_int8_t_s_s(((safe_add_func_uint8_t_u_u((0UL >= p_57), p_1314->g_49.f0)) < (((((((safe_mod_func_int16_t_s_s(l_81, ((((*l_104) = (p_1314->g_comm_values[p_1314->tid] = ((l_81 <= (safe_lshift_func_int8_t_s_u(p_58, (((*l_101) = ((safe_mul_func_int8_t_s_s((safe_rshift_func_int16_t_s_s((safe_lshift_func_uint16_t_u_s((safe_mul_func_uint16_t_u_u((safe_rshift_func_int16_t_s_u((((l_100 ^= l_94) , GROUP_DIVERGE(1, 1)) ^ l_81), l_94)), p_58)), l_81)), 9)), FAKE_DIVERGE(p_1314->local_0_offset, get_local_id(0), 10))) , (void*)0)) == (void*)0)))) , l_81))) & l_94) , p_1314->g_103.f1))) == (-1L)) , p_58) > p_1314->g_9[1]) < 4294967293UL) == p_1314->g_49.f1) != p_1314->g_4)), p_1314->g_103.f0)))) , (void*)0) != (void*)0), p_1314->g_9[3]));
        for (p_1314->g_103.f1 = (-4); (p_1314->g_103.f1 == 11); p_1314->g_103.f1 = safe_add_func_uint8_t_u_u(p_1314->g_103.f1, 9))
        { /* block id: 24 */
            uint32_t l_119[1][1];
            int i, j;
            for (i = 0; i < 1; i++)
            {
                for (j = 0; j < 1; j++)
                    l_119[i][j] = 0UL;
            }
            if (p_1314->g_49.f0)
            { /* block id: 25 */
                for (p_1314->g_103.f0 = 0; (p_1314->g_103.f0 >= 32); p_1314->g_103.f0 = safe_add_func_uint16_t_u_u(p_1314->g_103.f0, 5))
                { /* block id: 28 */
                    struct S0 **l_115 = &l_102;
                    uint8_t *l_116 = &p_1314->g_117[0][0];
                    int32_t l_118 = 3L;
                    int32_t *l_120 = &l_106;
                    (*l_120) = (((-2L) <= (safe_rshift_func_int8_t_s_s(0x6FL, ((safe_rshift_func_int16_t_s_s(p_1314->g_105, 6)) >= p_1314->g_9[3])))) | (0x37C8A084L && ((((0x401D562FL >= p_1314->g_105) , (((((*l_116) = (((void*)0 != l_115) || p_1314->g_4)) <= 0x55L) && p_1314->g_105) , l_118)) >= l_119[0][0]) | p_1314->g_49.f1)));
                    for (l_100 = 0; (l_100 == (-6)); l_100 = safe_sub_func_int64_t_s_s(l_100, 7))
                    { /* block id: 33 */
                        int32_t **l_123[3][7][10] = {{{&l_120,(void*)0,&l_120,&l_120,&l_120,&l_120,&l_120,&l_120,&l_120,(void*)0},{&l_120,(void*)0,&l_120,&l_120,&l_120,&l_120,&l_120,&l_120,&l_120,(void*)0},{&l_120,(void*)0,&l_120,&l_120,&l_120,&l_120,&l_120,&l_120,&l_120,(void*)0},{&l_120,(void*)0,&l_120,&l_120,&l_120,&l_120,&l_120,&l_120,&l_120,(void*)0},{&l_120,(void*)0,&l_120,&l_120,&l_120,&l_120,&l_120,&l_120,&l_120,(void*)0},{&l_120,(void*)0,&l_120,&l_120,&l_120,&l_120,&l_120,&l_120,&l_120,(void*)0},{&l_120,(void*)0,&l_120,&l_120,&l_120,&l_120,&l_120,&l_120,&l_120,(void*)0}},{{&l_120,(void*)0,&l_120,&l_120,&l_120,&l_120,&l_120,&l_120,&l_120,(void*)0},{&l_120,(void*)0,&l_120,&l_120,&l_120,&l_120,&l_120,&l_120,&l_120,(void*)0},{&l_120,(void*)0,&l_120,&l_120,&l_120,&l_120,&l_120,&l_120,&l_120,(void*)0},{&l_120,(void*)0,&l_120,&l_120,&l_120,&l_120,&l_120,&l_120,&l_120,(void*)0},{&l_120,(void*)0,&l_120,&l_120,&l_120,&l_120,&l_120,&l_120,&l_120,(void*)0},{&l_120,(void*)0,&l_120,&l_120,&l_120,&l_120,&l_120,&l_120,&l_120,(void*)0},{&l_120,(void*)0,&l_120,&l_120,&l_120,&l_120,&l_120,&l_120,&l_120,(void*)0}},{{&l_120,(void*)0,&l_120,&l_120,&l_120,&l_120,&l_120,&l_120,&l_120,(void*)0},{&l_120,(void*)0,&l_120,&l_120,&l_120,&l_120,&l_120,&l_120,&l_120,(void*)0},{&l_120,(void*)0,&l_120,&l_120,&l_120,&l_120,&l_120,&l_120,&l_120,(void*)0},{&l_120,(void*)0,&l_120,&l_120,&l_120,&l_120,&l_120,&l_120,&l_120,(void*)0},{&l_120,(void*)0,&l_120,&l_120,&l_120,&l_120,&l_120,&l_120,&l_120,(void*)0},{&l_120,(void*)0,&l_120,&l_120,&l_120,&l_120,&l_120,&l_120,&l_120,(void*)0},{&l_120,(void*)0,&l_120,&l_120,&l_120,&l_120,&l_120,&l_120,&l_120,(void*)0}}};
                        int32_t l_126[2];
                        int i, j, k;
                        for (i = 0; i < 2; i++)
                            l_126[i] = 0x610B76DEL;
                        p_1314->g_124 = &l_106;
                        if (l_126[0])
                            continue;
                        p_1314->g_125[2][2] = ((*p_1314->g_124) |= 1L);
                    }
                }
            }
            else
            { /* block id: 40 */
                int32_t **l_127 = &p_1314->g_124;
                (*l_127) = &l_100;
            }
        }
    }
    (*l_283) &= (0x2F1FL <= GROUP_DIVERGE(0, 1));
    return l_207[1];
}


__kernel void entry(__global ulong *result, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local int64_t l_comm_values[2];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 2; i++)
            l_comm_values[i] = 1;
    struct S2 c_1315;
    struct S2* p_1314 = &c_1315;
    struct S2 c_1316 = {
        0x2888ADAEL, // p_1314->g_2
        {9L,9L,9L,9L,9L,9L,9L,9L,9L,9L}, // p_1314->g_3
        1L, // p_1314->g_4
        {0x4B24CE55L,0x4B24CE55L,0x4B24CE55L,0x4B24CE55L}, // p_1314->g_9
        {0x9DBE4FCD58F28D92L,0x79191D4D0043D4FCL,-2L}, // p_1314->g_49
        {&p_1314->g_49,&p_1314->g_49,&p_1314->g_49}, // p_1314->g_48
        (void*)0, // p_1314->g_70
        {3UL,1UL,0x49E8F9644A59A1FFL}, // p_1314->g_103
        3L, // p_1314->g_105
        {{0xD2L,0xD2L,0xD2L}}, // p_1314->g_117
        {{8L,8L,0x6C24A69BL,0x4BD5DFF9L,0x58D62C3EL,0x06533915L,0x6B2CF06DL,(-3L),0x6B2CF06DL},{8L,8L,0x6C24A69BL,0x4BD5DFF9L,0x58D62C3EL,0x06533915L,0x6B2CF06DL,(-3L),0x6B2CF06DL},{8L,8L,0x6C24A69BL,0x4BD5DFF9L,0x58D62C3EL,0x06533915L,0x6B2CF06DL,(-3L),0x6B2CF06DL}}, // p_1314->g_125
        &p_1314->g_125[2][2], // p_1314->g_124
        (-1L), // p_1314->g_137
        {18446744073709551615UL,18446744073709551615UL,0x4270E04CD86032ADL}, // p_1314->g_157
        0x9211L, // p_1314->g_162
        {18446744073709551614UL,7UL,1L}, // p_1314->g_199
        {0x6BA7CE9A38E781DFL,4UL,0x0F743DB380C51898L}, // p_1314->g_205
        {18446744073709551615UL,0x1B730C7F6F722B7FL,0x7A4616B117CF7601L}, // p_1314->g_208
        4294967288UL, // p_1314->g_212
        0x3FL, // p_1314->g_225
        (void*)0, // p_1314->g_229
        {{{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229}},{{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229}},{{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229}},{{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229}},{{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229}},{{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229}},{{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229}},{{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229}},{{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229}},{{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229},{&p_1314->g_229,&p_1314->g_229}}}, // p_1314->g_228
        {18446744073709551610UL}, // p_1314->g_239
        {0xE572F24EC86742A6L}, // p_1314->g_241
        &p_1314->g_241, // p_1314->g_240
        {1L,1L}, // p_1314->g_263
        {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}, // p_1314->g_262
        &p_1314->g_263[0], // p_1314->g_267
        &p_1314->g_228[6][6][1], // p_1314->g_280
        &p_1314->g_125[2][4], // p_1314->g_292
        {0UL,0xD4E44B14B88DAA91L,0x2787C15747386AE0L}, // p_1314->g_296
        {{0x405E7EDE4C4FB002L,0xAE1F2F56A073343AL,0x09333DFFFF5785DBL}}, // p_1314->g_315
        &p_1314->g_125[2][2], // p_1314->g_318
        {{&p_1314->g_124,&p_1314->g_124,(void*)0,&p_1314->g_124,&p_1314->g_124,&p_1314->g_124,(void*)0,&p_1314->g_124},{&p_1314->g_124,&p_1314->g_124,(void*)0,&p_1314->g_124,&p_1314->g_124,&p_1314->g_124,(void*)0,&p_1314->g_124},{&p_1314->g_124,&p_1314->g_124,(void*)0,&p_1314->g_124,&p_1314->g_124,&p_1314->g_124,(void*)0,&p_1314->g_124},{&p_1314->g_124,&p_1314->g_124,(void*)0,&p_1314->g_124,&p_1314->g_124,&p_1314->g_124,(void*)0,&p_1314->g_124},{&p_1314->g_124,&p_1314->g_124,(void*)0,&p_1314->g_124,&p_1314->g_124,&p_1314->g_124,(void*)0,&p_1314->g_124},{&p_1314->g_124,&p_1314->g_124,(void*)0,&p_1314->g_124,&p_1314->g_124,&p_1314->g_124,(void*)0,&p_1314->g_124},{&p_1314->g_124,&p_1314->g_124,(void*)0,&p_1314->g_124,&p_1314->g_124,&p_1314->g_124,(void*)0,&p_1314->g_124}}, // p_1314->g_320
        {0x1F85FD576F8DA45DL,0x28D7F765F64B87A5L,0x4239A254CA6F1A25L}, // p_1314->g_328
        0L, // p_1314->g_418
        4294967295UL, // p_1314->g_511
        0xA19FL, // p_1314->g_527
        &p_1314->g_527, // p_1314->g_526
        &p_1314->g_526, // p_1314->g_525
        0x6A2DL, // p_1314->g_531
        0x25520998L, // p_1314->g_568
        0x6473L, // p_1314->g_669
        &p_1314->g_296, // p_1314->g_679
        &p_1314->g_679, // p_1314->g_678
        {(void*)0,(void*)0,(void*)0}, // p_1314->g_701
        (void*)0, // p_1314->g_702
        &p_1314->g_125[1][8], // p_1314->g_728
        &p_1314->g_212, // p_1314->g_773
        {{{&p_1314->g_773,&p_1314->g_773},{&p_1314->g_773,&p_1314->g_773},{&p_1314->g_773,&p_1314->g_773},{&p_1314->g_773,&p_1314->g_773},{&p_1314->g_773,&p_1314->g_773},{&p_1314->g_773,&p_1314->g_773},{&p_1314->g_773,&p_1314->g_773},{&p_1314->g_773,&p_1314->g_773}},{{&p_1314->g_773,&p_1314->g_773},{&p_1314->g_773,&p_1314->g_773},{&p_1314->g_773,&p_1314->g_773},{&p_1314->g_773,&p_1314->g_773},{&p_1314->g_773,&p_1314->g_773},{&p_1314->g_773,&p_1314->g_773},{&p_1314->g_773,&p_1314->g_773},{&p_1314->g_773,&p_1314->g_773}},{{&p_1314->g_773,&p_1314->g_773},{&p_1314->g_773,&p_1314->g_773},{&p_1314->g_773,&p_1314->g_773},{&p_1314->g_773,&p_1314->g_773},{&p_1314->g_773,&p_1314->g_773},{&p_1314->g_773,&p_1314->g_773},{&p_1314->g_773,&p_1314->g_773},{&p_1314->g_773,&p_1314->g_773}}}, // p_1314->g_772
        {&p_1314->g_125[2][2]}, // p_1314->g_779
        &p_1314->g_124, // p_1314->g_782
        {&p_1314->g_292,&p_1314->g_292}, // p_1314->g_789
        (void*)0, // p_1314->g_790
        &p_1314->g_292, // p_1314->g_791
        {{{{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{0UL,0x57CDE896EF22D433L,-1L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L}},{{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{0UL,0x57CDE896EF22D433L,-1L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L}},{{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{0UL,0x57CDE896EF22D433L,-1L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L}},{{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{0UL,0x57CDE896EF22D433L,-1L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L}},{{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{0UL,0x57CDE896EF22D433L,-1L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L}},{{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{0UL,0x57CDE896EF22D433L,-1L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L}}},{{{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{0UL,0x57CDE896EF22D433L,-1L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L}},{{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{0UL,0x57CDE896EF22D433L,-1L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L}},{{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{0UL,0x57CDE896EF22D433L,-1L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L}},{{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{0UL,0x57CDE896EF22D433L,-1L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L}},{{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{0UL,0x57CDE896EF22D433L,-1L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L}},{{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{0UL,0x57CDE896EF22D433L,-1L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L}}},{{{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{0UL,0x57CDE896EF22D433L,-1L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L}},{{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{0UL,0x57CDE896EF22D433L,-1L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L}},{{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{0UL,0x57CDE896EF22D433L,-1L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L}},{{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{0UL,0x57CDE896EF22D433L,-1L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L}},{{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{0UL,0x57CDE896EF22D433L,-1L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L}},{{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{0UL,0x57CDE896EF22D433L,-1L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L}}},{{{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{0UL,0x57CDE896EF22D433L,-1L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L}},{{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{0UL,0x57CDE896EF22D433L,-1L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L}},{{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{0UL,0x57CDE896EF22D433L,-1L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L}},{{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{0UL,0x57CDE896EF22D433L,-1L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L}},{{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{0UL,0x57CDE896EF22D433L,-1L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L}},{{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{0UL,0x57CDE896EF22D433L,-1L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L}}},{{{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{0UL,0x57CDE896EF22D433L,-1L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L}},{{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{0UL,0x57CDE896EF22D433L,-1L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L}},{{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{0UL,0x57CDE896EF22D433L,-1L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L}},{{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{0UL,0x57CDE896EF22D433L,-1L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L}},{{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{0UL,0x57CDE896EF22D433L,-1L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L}},{{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{0UL,0x57CDE896EF22D433L,-1L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L}}},{{{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{0UL,0x57CDE896EF22D433L,-1L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L}},{{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{0UL,0x57CDE896EF22D433L,-1L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L}},{{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{0UL,0x57CDE896EF22D433L,-1L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L}},{{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{0UL,0x57CDE896EF22D433L,-1L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L}},{{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{0UL,0x57CDE896EF22D433L,-1L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L}},{{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{0UL,0x57CDE896EF22D433L,-1L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L}}},{{{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{0UL,0x57CDE896EF22D433L,-1L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L}},{{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{0UL,0x57CDE896EF22D433L,-1L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L}},{{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{0UL,0x57CDE896EF22D433L,-1L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L}},{{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{0UL,0x57CDE896EF22D433L,-1L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L}},{{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{0UL,0x57CDE896EF22D433L,-1L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L}},{{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{0UL,0x57CDE896EF22D433L,-1L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L}}},{{{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{0UL,0x57CDE896EF22D433L,-1L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L}},{{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{0UL,0x57CDE896EF22D433L,-1L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L}},{{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{0UL,0x57CDE896EF22D433L,-1L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L}},{{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{0UL,0x57CDE896EF22D433L,-1L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L}},{{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{0UL,0x57CDE896EF22D433L,-1L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L}},{{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{0UL,0x57CDE896EF22D433L,-1L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L}}},{{{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{0UL,0x57CDE896EF22D433L,-1L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L}},{{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{0UL,0x57CDE896EF22D433L,-1L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L}},{{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{0UL,0x57CDE896EF22D433L,-1L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L}},{{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{0UL,0x57CDE896EF22D433L,-1L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L}},{{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{0UL,0x57CDE896EF22D433L,-1L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L}},{{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{0UL,0x57CDE896EF22D433L,-1L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L},{2UL,18446744073709551615UL,0x0EB9F58EED6E4730L}}}}, // p_1314->g_824
        (void*)0, // p_1314->g_830
        {18446744073709551615UL,18446744073709551608UL,0x75F80BDF73D1BBA3L}, // p_1314->g_855
        {0x94A9C7B5608A0C2DL}, // p_1314->g_868
        {0x2454C5BD1B9AEA50L}, // p_1314->g_873
        {{{{0x20236C597FE9D4E3L},{1UL},{0xF84172C7567AA376L},{18446744073709551615UL},{9UL},{0x68FC26AB3E5B2F97L}},{{0x20236C597FE9D4E3L},{1UL},{0xF84172C7567AA376L},{18446744073709551615UL},{9UL},{0x68FC26AB3E5B2F97L}},{{0x20236C597FE9D4E3L},{1UL},{0xF84172C7567AA376L},{18446744073709551615UL},{9UL},{0x68FC26AB3E5B2F97L}},{{0x20236C597FE9D4E3L},{1UL},{0xF84172C7567AA376L},{18446744073709551615UL},{9UL},{0x68FC26AB3E5B2F97L}},{{0x20236C597FE9D4E3L},{1UL},{0xF84172C7567AA376L},{18446744073709551615UL},{9UL},{0x68FC26AB3E5B2F97L}},{{0x20236C597FE9D4E3L},{1UL},{0xF84172C7567AA376L},{18446744073709551615UL},{9UL},{0x68FC26AB3E5B2F97L}}},{{{0x20236C597FE9D4E3L},{1UL},{0xF84172C7567AA376L},{18446744073709551615UL},{9UL},{0x68FC26AB3E5B2F97L}},{{0x20236C597FE9D4E3L},{1UL},{0xF84172C7567AA376L},{18446744073709551615UL},{9UL},{0x68FC26AB3E5B2F97L}},{{0x20236C597FE9D4E3L},{1UL},{0xF84172C7567AA376L},{18446744073709551615UL},{9UL},{0x68FC26AB3E5B2F97L}},{{0x20236C597FE9D4E3L},{1UL},{0xF84172C7567AA376L},{18446744073709551615UL},{9UL},{0x68FC26AB3E5B2F97L}},{{0x20236C597FE9D4E3L},{1UL},{0xF84172C7567AA376L},{18446744073709551615UL},{9UL},{0x68FC26AB3E5B2F97L}},{{0x20236C597FE9D4E3L},{1UL},{0xF84172C7567AA376L},{18446744073709551615UL},{9UL},{0x68FC26AB3E5B2F97L}}},{{{0x20236C597FE9D4E3L},{1UL},{0xF84172C7567AA376L},{18446744073709551615UL},{9UL},{0x68FC26AB3E5B2F97L}},{{0x20236C597FE9D4E3L},{1UL},{0xF84172C7567AA376L},{18446744073709551615UL},{9UL},{0x68FC26AB3E5B2F97L}},{{0x20236C597FE9D4E3L},{1UL},{0xF84172C7567AA376L},{18446744073709551615UL},{9UL},{0x68FC26AB3E5B2F97L}},{{0x20236C597FE9D4E3L},{1UL},{0xF84172C7567AA376L},{18446744073709551615UL},{9UL},{0x68FC26AB3E5B2F97L}},{{0x20236C597FE9D4E3L},{1UL},{0xF84172C7567AA376L},{18446744073709551615UL},{9UL},{0x68FC26AB3E5B2F97L}},{{0x20236C597FE9D4E3L},{1UL},{0xF84172C7567AA376L},{18446744073709551615UL},{9UL},{0x68FC26AB3E5B2F97L}}},{{{0x20236C597FE9D4E3L},{1UL},{0xF84172C7567AA376L},{18446744073709551615UL},{9UL},{0x68FC26AB3E5B2F97L}},{{0x20236C597FE9D4E3L},{1UL},{0xF84172C7567AA376L},{18446744073709551615UL},{9UL},{0x68FC26AB3E5B2F97L}},{{0x20236C597FE9D4E3L},{1UL},{0xF84172C7567AA376L},{18446744073709551615UL},{9UL},{0x68FC26AB3E5B2F97L}},{{0x20236C597FE9D4E3L},{1UL},{0xF84172C7567AA376L},{18446744073709551615UL},{9UL},{0x68FC26AB3E5B2F97L}},{{0x20236C597FE9D4E3L},{1UL},{0xF84172C7567AA376L},{18446744073709551615UL},{9UL},{0x68FC26AB3E5B2F97L}},{{0x20236C597FE9D4E3L},{1UL},{0xF84172C7567AA376L},{18446744073709551615UL},{9UL},{0x68FC26AB3E5B2F97L}}},{{{0x20236C597FE9D4E3L},{1UL},{0xF84172C7567AA376L},{18446744073709551615UL},{9UL},{0x68FC26AB3E5B2F97L}},{{0x20236C597FE9D4E3L},{1UL},{0xF84172C7567AA376L},{18446744073709551615UL},{9UL},{0x68FC26AB3E5B2F97L}},{{0x20236C597FE9D4E3L},{1UL},{0xF84172C7567AA376L},{18446744073709551615UL},{9UL},{0x68FC26AB3E5B2F97L}},{{0x20236C597FE9D4E3L},{1UL},{0xF84172C7567AA376L},{18446744073709551615UL},{9UL},{0x68FC26AB3E5B2F97L}},{{0x20236C597FE9D4E3L},{1UL},{0xF84172C7567AA376L},{18446744073709551615UL},{9UL},{0x68FC26AB3E5B2F97L}},{{0x20236C597FE9D4E3L},{1UL},{0xF84172C7567AA376L},{18446744073709551615UL},{9UL},{0x68FC26AB3E5B2F97L}}},{{{0x20236C597FE9D4E3L},{1UL},{0xF84172C7567AA376L},{18446744073709551615UL},{9UL},{0x68FC26AB3E5B2F97L}},{{0x20236C597FE9D4E3L},{1UL},{0xF84172C7567AA376L},{18446744073709551615UL},{9UL},{0x68FC26AB3E5B2F97L}},{{0x20236C597FE9D4E3L},{1UL},{0xF84172C7567AA376L},{18446744073709551615UL},{9UL},{0x68FC26AB3E5B2F97L}},{{0x20236C597FE9D4E3L},{1UL},{0xF84172C7567AA376L},{18446744073709551615UL},{9UL},{0x68FC26AB3E5B2F97L}},{{0x20236C597FE9D4E3L},{1UL},{0xF84172C7567AA376L},{18446744073709551615UL},{9UL},{0x68FC26AB3E5B2F97L}},{{0x20236C597FE9D4E3L},{1UL},{0xF84172C7567AA376L},{18446744073709551615UL},{9UL},{0x68FC26AB3E5B2F97L}}}}, // p_1314->g_875
        {0x0C477DD0118B4404L,3UL,5L}, // p_1314->g_931
        (void*)0, // p_1314->g_978
        {2UL}, // p_1314->g_996
        &p_1314->g_728, // p_1314->g_1032
        1L, // p_1314->g_1043
        {0x1654957015913E1AL,0x5DA4F3DB47F2F9B3L,0x72E6672F974EC7E1L}, // p_1314->g_1044
        1L, // p_1314->g_1089
        {0x85801685665EA783L,0xBEFBFF4C1F090E4FL,-1L}, // p_1314->g_1150
        {0UL,9UL,0x6CCD8704CA7C9593L}, // p_1314->g_1182
        {0xCEC303D60AB951BDL,18446744073709551608UL,-1L}, // p_1314->g_1186
        1L, // p_1314->g_1188
        &p_1314->g_157.f1, // p_1314->g_1207
        (void*)0, // p_1314->g_1214
        {&p_1314->g_1214,&p_1314->g_1214,&p_1314->g_1214,&p_1314->g_1214,&p_1314->g_1214,&p_1314->g_1214,&p_1314->g_1214,&p_1314->g_1214}, // p_1314->g_1213
        &p_1314->g_117[0][1], // p_1314->g_1291
        &p_1314->g_70, // p_1314->g_1309
        sequence_input[get_global_id(0)], // p_1314->global_0_offset
        sequence_input[get_global_id(1)], // p_1314->global_1_offset
        sequence_input[get_global_id(2)], // p_1314->global_2_offset
        sequence_input[get_local_id(0)], // p_1314->local_0_offset
        sequence_input[get_local_id(1)], // p_1314->local_1_offset
        sequence_input[get_local_id(2)], // p_1314->local_2_offset
        sequence_input[get_group_id(0)], // p_1314->group_0_offset
        sequence_input[get_group_id(1)], // p_1314->group_1_offset
        sequence_input[get_group_id(2)], // p_1314->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 2)), permutations[0][get_linear_local_id()])), // p_1314->tid
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_1315 = c_1316;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1314);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1314->g_2, "p_1314->g_2", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1314->g_3[i], "p_1314->g_3[i]", print_hash_value);

    }
    transparent_crc(p_1314->g_4, "p_1314->g_4", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1314->g_9[i], "p_1314->g_9[i]", print_hash_value);

    }
    transparent_crc(p_1314->g_49.f0, "p_1314->g_49.f0", print_hash_value);
    transparent_crc(p_1314->g_49.f1, "p_1314->g_49.f1", print_hash_value);
    transparent_crc(p_1314->g_49.f2, "p_1314->g_49.f2", print_hash_value);
    transparent_crc(p_1314->g_103.f0, "p_1314->g_103.f0", print_hash_value);
    transparent_crc(p_1314->g_103.f1, "p_1314->g_103.f1", print_hash_value);
    transparent_crc(p_1314->g_103.f2, "p_1314->g_103.f2", print_hash_value);
    transparent_crc(p_1314->g_105, "p_1314->g_105", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 3; j++)
        {
            transparent_crc(p_1314->g_117[i][j], "p_1314->g_117[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_1314->g_125[i][j], "p_1314->g_125[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1314->g_137, "p_1314->g_137", print_hash_value);
    transparent_crc(p_1314->g_157.f0, "p_1314->g_157.f0", print_hash_value);
    transparent_crc(p_1314->g_157.f1, "p_1314->g_157.f1", print_hash_value);
    transparent_crc(p_1314->g_157.f2, "p_1314->g_157.f2", print_hash_value);
    transparent_crc(p_1314->g_162, "p_1314->g_162", print_hash_value);
    transparent_crc(p_1314->g_199.f0, "p_1314->g_199.f0", print_hash_value);
    transparent_crc(p_1314->g_199.f1, "p_1314->g_199.f1", print_hash_value);
    transparent_crc(p_1314->g_199.f2, "p_1314->g_199.f2", print_hash_value);
    transparent_crc(p_1314->g_205.f0, "p_1314->g_205.f0", print_hash_value);
    transparent_crc(p_1314->g_205.f1, "p_1314->g_205.f1", print_hash_value);
    transparent_crc(p_1314->g_205.f2, "p_1314->g_205.f2", print_hash_value);
    transparent_crc(p_1314->g_208.f0, "p_1314->g_208.f0", print_hash_value);
    transparent_crc(p_1314->g_208.f1, "p_1314->g_208.f1", print_hash_value);
    transparent_crc(p_1314->g_208.f2, "p_1314->g_208.f2", print_hash_value);
    transparent_crc(p_1314->g_212, "p_1314->g_212", print_hash_value);
    transparent_crc(p_1314->g_225, "p_1314->g_225", print_hash_value);
    transparent_crc(p_1314->g_239.f0, "p_1314->g_239.f0", print_hash_value);
    transparent_crc(p_1314->g_241.f0, "p_1314->g_241.f0", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1314->g_263[i], "p_1314->g_263[i]", print_hash_value);

    }
    transparent_crc(p_1314->g_296.f0, "p_1314->g_296.f0", print_hash_value);
    transparent_crc(p_1314->g_296.f1, "p_1314->g_296.f1", print_hash_value);
    transparent_crc(p_1314->g_296.f2, "p_1314->g_296.f2", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1314->g_315[i].f0, "p_1314->g_315[i].f0", print_hash_value);
        transparent_crc(p_1314->g_315[i].f1, "p_1314->g_315[i].f1", print_hash_value);
        transparent_crc(p_1314->g_315[i].f2, "p_1314->g_315[i].f2", print_hash_value);

    }
    transparent_crc(p_1314->g_328.f0, "p_1314->g_328.f0", print_hash_value);
    transparent_crc(p_1314->g_328.f1, "p_1314->g_328.f1", print_hash_value);
    transparent_crc(p_1314->g_328.f2, "p_1314->g_328.f2", print_hash_value);
    transparent_crc(p_1314->g_418, "p_1314->g_418", print_hash_value);
    transparent_crc(p_1314->g_511, "p_1314->g_511", print_hash_value);
    transparent_crc(p_1314->g_527, "p_1314->g_527", print_hash_value);
    transparent_crc(p_1314->g_531, "p_1314->g_531", print_hash_value);
    transparent_crc(p_1314->g_568, "p_1314->g_568", print_hash_value);
    transparent_crc(p_1314->g_669, "p_1314->g_669", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 6; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_1314->g_824[i][j][k].f0, "p_1314->g_824[i][j][k].f0", print_hash_value);
                transparent_crc(p_1314->g_824[i][j][k].f1, "p_1314->g_824[i][j][k].f1", print_hash_value);
                transparent_crc(p_1314->g_824[i][j][k].f2, "p_1314->g_824[i][j][k].f2", print_hash_value);

            }
        }
    }
    transparent_crc(p_1314->g_855.f0, "p_1314->g_855.f0", print_hash_value);
    transparent_crc(p_1314->g_855.f1, "p_1314->g_855.f1", print_hash_value);
    transparent_crc(p_1314->g_855.f2, "p_1314->g_855.f2", print_hash_value);
    transparent_crc(p_1314->g_868.f0, "p_1314->g_868.f0", print_hash_value);
    transparent_crc(p_1314->g_873.f0, "p_1314->g_873.f0", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 6; j++)
        {
            for (k = 0; k < 6; k++)
            {
                transparent_crc(p_1314->g_875[i][j][k].f0, "p_1314->g_875[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_1314->g_931.f0, "p_1314->g_931.f0", print_hash_value);
    transparent_crc(p_1314->g_931.f1, "p_1314->g_931.f1", print_hash_value);
    transparent_crc(p_1314->g_931.f2, "p_1314->g_931.f2", print_hash_value);
    transparent_crc(p_1314->g_996.f0, "p_1314->g_996.f0", print_hash_value);
    transparent_crc(p_1314->g_1043, "p_1314->g_1043", print_hash_value);
    transparent_crc(p_1314->g_1044.f0, "p_1314->g_1044.f0", print_hash_value);
    transparent_crc(p_1314->g_1044.f1, "p_1314->g_1044.f1", print_hash_value);
    transparent_crc(p_1314->g_1044.f2, "p_1314->g_1044.f2", print_hash_value);
    transparent_crc(p_1314->g_1089, "p_1314->g_1089", print_hash_value);
    transparent_crc(p_1314->g_1150.f0, "p_1314->g_1150.f0", print_hash_value);
    transparent_crc(p_1314->g_1150.f1, "p_1314->g_1150.f1", print_hash_value);
    transparent_crc(p_1314->g_1150.f2, "p_1314->g_1150.f2", print_hash_value);
    transparent_crc(p_1314->g_1182.f0, "p_1314->g_1182.f0", print_hash_value);
    transparent_crc(p_1314->g_1182.f1, "p_1314->g_1182.f1", print_hash_value);
    transparent_crc(p_1314->g_1182.f2, "p_1314->g_1182.f2", print_hash_value);
    transparent_crc(p_1314->g_1186.f0, "p_1314->g_1186.f0", print_hash_value);
    transparent_crc(p_1314->g_1186.f1, "p_1314->g_1186.f1", print_hash_value);
    transparent_crc(p_1314->g_1186.f2, "p_1314->g_1186.f2", print_hash_value);
    transparent_crc(p_1314->g_1188, "p_1314->g_1188", print_hash_value);
    transparent_crc(p_1314->l_comm_values[get_linear_local_id()], "p_1314->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_1314->g_comm_values[get_linear_group_id() * 2 + get_linear_local_id()], "p_1314->g_comm_values[get_linear_group_id() * 2 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
