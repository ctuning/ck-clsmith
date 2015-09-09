// --atomics 37 ---fake_divergence -g 64,22,2 -l 2,22,2
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


// Seed: 42

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   volatile int32_t  f0;
   uint32_t  f1;
};

union U1 {
   volatile int64_t  f0;
   uint32_t  f1;
   int64_t  f2;
};

union U2 {
   int64_t  f0;
   uint64_t  f1;
   int32_t  f2;
   volatile uint8_t  f3;
};

struct S3 {
    volatile uint16_t g_5;
    uint8_t g_7[6][9][4];
    int32_t g_25;
    volatile int64_t g_26;
    uint8_t g_27;
    volatile union U0 g_43;
    uint8_t *g_57[3][5][8];
    int32_t ** volatile g_71;
    uint8_t *g_90;
    uint32_t g_92[8][4];
    uint8_t *g_113[6];
    int64_t g_115;
    int32_t g_116;
    union U2 g_120;
    int32_t *g_201;
    int32_t ** volatile g_204;
    uint16_t g_253;
    int16_t g_258;
    int32_t g_263[2];
    int32_t * volatile g_278[5][3];
    int8_t g_297;
    int32_t g_317;
    int32_t ** volatile g_319;
    int16_t g_350;
    int16_t g_356;
    uint32_t g_373;
    volatile union U2 *g_380;
    volatile union U2 ** volatile g_379;
    volatile int32_t g_385;
    volatile union U0 g_403[3][1];
    uint64_t g_447[7][4];
    int32_t ** volatile g_496;
    int32_t ** volatile g_497;
    union U2 g_517;
    int64_t g_520;
    uint32_t *g_543;
    volatile int32_t g_544;
    volatile union U0 g_548;
    union U1 g_550;
    union U1 *g_552;
    int32_t ** volatile g_611;
    int32_t ** volatile g_612[7];
    union U2 g_628;
    union U0 g_630;
    union U0 *g_632;
    union U0 ** volatile g_631;
    int8_t g_712;
    int64_t *g_740;
    uint32_t g_744;
    int32_t ** volatile g_745;
    union U0 **g_764;
    union U0 *** volatile g_763;
    union U0 g_787;
    int32_t ** volatile g_793;
    int32_t ** volatile g_794;
    int32_t **g_817;
    int32_t ***g_816;
    volatile int8_t g_857;
    union U1 g_885[5][9][5];
    union U2 *g_936[10];
    union U2 ** volatile g_935;
    uint64_t global_0_offset;
    uint64_t global_1_offset;
    uint64_t global_2_offset;
    uint64_t local_0_offset;
    uint64_t local_1_offset;
    uint64_t local_2_offset;
    uint64_t group_0_offset;
    uint64_t group_1_offset;
    uint64_t group_2_offset;
    __local volatile uint32_t *l_atomic_input;
    __local volatile uint32_t *l_special_values;
};


/* --- FORWARD DECLARATIONS --- */
uint64_t  func_1(struct S3 * p_965);
union U2  func_2(int16_t  p_3, int32_t  p_4, struct S3 * p_965);
int32_t * func_11(uint8_t * p_12, int16_t  p_13, int32_t * p_14, struct S3 * p_965);
int16_t  func_16(uint8_t * p_17, struct S3 * p_965);
uint8_t * func_18(int16_t  p_19, struct S3 * p_965);
int16_t  func_20(int32_t  p_21, uint16_t  p_22, struct S3 * p_965);
int32_t  func_34(uint8_t * p_35, struct S3 * p_965);
uint8_t * func_58(uint32_t  p_59, struct S3 * p_965);
uint8_t * func_62(uint32_t  p_63, int64_t  p_64, uint8_t * p_65, uint32_t  p_66, int32_t * p_67, struct S3 * p_965);
uint16_t  func_78(int32_t ** p_79, int64_t  p_80, int32_t ** p_81, uint8_t ** p_82, uint8_t * p_83, struct S3 * p_965);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_965->g_5 p_965->g_7 p_965->g_27 p_965->g_25 p_965->g_43 p_965->g_116 p_965->g_115 p_965->g_120 p_965->g_90 p_965->g_120.f0 p_965->g_92 p_965->g_113 p_965->g_26 p_965->g_258 p_965->g_263 p_965->g_253 p_965->g_317 p_965->g_319 p_965->g_278 p_965->g_548 p_965->g_543 p_965->g_744 p_965->g_297 p_965->g_763 p_965->g_740 p_965->g_520 p_965->g_787 p_965->g_517.f0 p_965->g_794 p_965->g_373 p_965->g_544 p_965->g_356 p_965->g_712 p_965->g_385 p_965->g_816 p_965->g_548.f0 p_965->g_857 p_965->g_552 p_965->g_550 p_965->g_630.f1 p_965->g_817 p_965->g_764 p_965->g_632 p_965->g_350 p_965->g_630 p_965->g_935 p_965->g_447
 * writes: p_965->g_7 p_965->g_27 p_965->g_25 p_965->g_57 p_965->g_90 p_965->g_92 p_965->g_113 p_965->g_115 p_965->g_201 p_965->g_120.f0 p_965->g_253 p_965->g_258 p_965->g_263 p_965->g_297 p_965->g_317 p_965->g_278 p_965->g_552 p_965->g_740 p_965->g_764 p_965->g_520 p_965->g_712 p_965->g_630.f1 p_965->g_628.f2 p_965->g_447 p_965->g_116 p_965->g_744 p_965->g_350 p_965->g_936 p_965->g_787.f1
 */
uint64_t  func_1(struct S3 * p_965)
{ /* block id: 4 */
    uint8_t *l_6 = &p_965->g_7[5][8][3];
    int32_t l_10 = 0x5B0FF846L;
    uint32_t l_209 = 7UL;
    int32_t *l_210 = &l_10;
    union U2 **l_302 = (void*)0;
    uint32_t l_315[3][7] = {{0x2458ECA6L,0x149EEACDL,0x2458ECA6L,0x2458ECA6L,0x149EEACDL,0x2458ECA6L,0x2458ECA6L},{0x2458ECA6L,0x149EEACDL,0x2458ECA6L,0x2458ECA6L,0x149EEACDL,0x2458ECA6L,0x2458ECA6L},{0x2458ECA6L,0x149EEACDL,0x2458ECA6L,0x2458ECA6L,0x149EEACDL,0x2458ECA6L,0x2458ECA6L}};
    uint16_t l_393 = 65535UL;
    int64_t l_432 = 0L;
    uint8_t l_433 = 0x77L;
    uint8_t l_477[2];
    int64_t l_522 = 0x13DF5487C410F8ABL;
    int32_t l_527 = 0L;
    int32_t l_677 = 1L;
    int32_t l_690 = 0x7BC11E2FL;
    int32_t l_691[3];
    int64_t *l_741[6] = {(void*)0,&p_965->g_120.f0,(void*)0,(void*)0,&p_965->g_120.f0,(void*)0};
    uint32_t l_789[2];
    uint16_t l_842 = 1UL;
    union U1 *l_884 = &p_965->g_885[4][2][3];
    union U1 **l_883 = &l_884;
    int64_t l_937 = 8L;
    int64_t l_942[7][5][3] = {{{0x6B0D3DB1E27193A3L,0x74F1A064030C2409L,0x6B0D3DB1E27193A3L},{0x6B0D3DB1E27193A3L,0x74F1A064030C2409L,0x6B0D3DB1E27193A3L},{0x6B0D3DB1E27193A3L,0x74F1A064030C2409L,0x6B0D3DB1E27193A3L},{0x6B0D3DB1E27193A3L,0x74F1A064030C2409L,0x6B0D3DB1E27193A3L},{0x6B0D3DB1E27193A3L,0x74F1A064030C2409L,0x6B0D3DB1E27193A3L}},{{0x6B0D3DB1E27193A3L,0x74F1A064030C2409L,0x6B0D3DB1E27193A3L},{0x6B0D3DB1E27193A3L,0x74F1A064030C2409L,0x6B0D3DB1E27193A3L},{0x6B0D3DB1E27193A3L,0x74F1A064030C2409L,0x6B0D3DB1E27193A3L},{0x6B0D3DB1E27193A3L,0x74F1A064030C2409L,0x6B0D3DB1E27193A3L},{0x6B0D3DB1E27193A3L,0x74F1A064030C2409L,0x6B0D3DB1E27193A3L}},{{0x6B0D3DB1E27193A3L,0x74F1A064030C2409L,0x6B0D3DB1E27193A3L},{0x6B0D3DB1E27193A3L,0x74F1A064030C2409L,0x6B0D3DB1E27193A3L},{0x6B0D3DB1E27193A3L,0x74F1A064030C2409L,0x6B0D3DB1E27193A3L},{0x6B0D3DB1E27193A3L,0x74F1A064030C2409L,0x6B0D3DB1E27193A3L},{0x6B0D3DB1E27193A3L,0x74F1A064030C2409L,0x6B0D3DB1E27193A3L}},{{0x6B0D3DB1E27193A3L,0x74F1A064030C2409L,0x6B0D3DB1E27193A3L},{0x6B0D3DB1E27193A3L,0x74F1A064030C2409L,0x6B0D3DB1E27193A3L},{0x6B0D3DB1E27193A3L,0x74F1A064030C2409L,0x6B0D3DB1E27193A3L},{0x6B0D3DB1E27193A3L,0x74F1A064030C2409L,0x6B0D3DB1E27193A3L},{0x6B0D3DB1E27193A3L,0x74F1A064030C2409L,0x6B0D3DB1E27193A3L}},{{0x6B0D3DB1E27193A3L,0x74F1A064030C2409L,0x6B0D3DB1E27193A3L},{0x6B0D3DB1E27193A3L,0x74F1A064030C2409L,0x6B0D3DB1E27193A3L},{0x6B0D3DB1E27193A3L,0x74F1A064030C2409L,0x6B0D3DB1E27193A3L},{0x6B0D3DB1E27193A3L,0x74F1A064030C2409L,0x6B0D3DB1E27193A3L},{0x6B0D3DB1E27193A3L,0x74F1A064030C2409L,0x6B0D3DB1E27193A3L}},{{0x6B0D3DB1E27193A3L,0x74F1A064030C2409L,0x6B0D3DB1E27193A3L},{0x6B0D3DB1E27193A3L,0x74F1A064030C2409L,0x6B0D3DB1E27193A3L},{0x6B0D3DB1E27193A3L,0x74F1A064030C2409L,0x6B0D3DB1E27193A3L},{0x6B0D3DB1E27193A3L,0x74F1A064030C2409L,0x6B0D3DB1E27193A3L},{0x6B0D3DB1E27193A3L,0x74F1A064030C2409L,0x6B0D3DB1E27193A3L}},{{0x6B0D3DB1E27193A3L,0x74F1A064030C2409L,0x6B0D3DB1E27193A3L},{0x6B0D3DB1E27193A3L,0x74F1A064030C2409L,0x6B0D3DB1E27193A3L},{0x6B0D3DB1E27193A3L,0x74F1A064030C2409L,0x6B0D3DB1E27193A3L},{0x6B0D3DB1E27193A3L,0x74F1A064030C2409L,0x6B0D3DB1E27193A3L},{0x6B0D3DB1E27193A3L,0x74F1A064030C2409L,0x6B0D3DB1E27193A3L}}};
    uint64_t l_948[8][3] = {{8UL,1UL,18446744073709551613UL},{8UL,1UL,18446744073709551613UL},{8UL,1UL,18446744073709551613UL},{8UL,1UL,18446744073709551613UL},{8UL,1UL,18446744073709551613UL},{8UL,1UL,18446744073709551613UL},{8UL,1UL,18446744073709551613UL},{8UL,1UL,18446744073709551613UL}};
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_477[i] = 4UL;
    for (i = 0; i < 3; i++)
        l_691[i] = 0x6B5DE589L;
    for (i = 0; i < 2; i++)
        l_789[i] = 0xE18E46D1L;
    (*l_210) = (func_2((GROUP_DIVERGE(2, 1) ^ (p_965->g_5 , (++(*l_6)))), (l_10 | l_10), p_965) , ((((*p_965->g_90) &= ((safe_add_func_int16_t_s_s(l_209, ((void*)0 != l_210))) || (&p_965->g_43 != &p_965->g_43))) > 0x1AL) == (*l_210)));
    for (p_965->g_120.f0 = 0; (p_965->g_120.f0 > 1); ++p_965->g_120.f0)
    { /* block id: 161 */
        int32_t **l_264 = &p_965->g_201;
        int64_t l_275[3][1][9];
        int32_t *l_286 = (void*)0;
        int8_t *l_296 = &p_965->g_297;
        union U2 *l_301 = &p_965->g_120;
        union U2 **l_300 = &l_301;
        union U2 ***l_303 = &l_302;
        uint16_t *l_314[3];
        int32_t *l_316 = &p_965->g_317;
        int i, j, k;
        for (i = 0; i < 3; i++)
        {
            for (j = 0; j < 1; j++)
            {
                for (k = 0; k < 9; k++)
                    l_275[i][j][k] = 0x532BE164FB726377L;
            }
        }
        for (i = 0; i < 3; i++)
            l_314[i] = (void*)0;
        for (p_965->g_115 = 3; (p_965->g_115 >= 0); p_965->g_115 -= 1)
        { /* block id: 164 */
            uint32_t l_241 = 0x3B070FD1L;
            int32_t l_254 = 0x7B6F9F12L;
            for (l_10 = 0; (l_10 <= 5); l_10 += 1)
            { /* block id: 167 */
                int32_t *l_213 = &p_965->g_25;
                int32_t *l_214 = &p_965->g_25;
                int32_t *l_215 = &p_965->g_25;
                int32_t l_216 = 6L;
                int32_t *l_217 = &p_965->g_25;
                int32_t *l_218 = &p_965->g_116;
                int32_t *l_219 = &l_216;
                int32_t *l_220 = (void*)0;
                int32_t *l_221 = &p_965->g_116;
                int32_t *l_222 = &p_965->g_25;
                int32_t *l_223 = &p_965->g_116;
                int32_t *l_224 = &p_965->g_116;
                int32_t *l_225 = &p_965->g_25;
                int32_t *l_226 = (void*)0;
                int32_t *l_227 = &p_965->g_116;
                int32_t *l_228 = &p_965->g_116;
                int32_t *l_229 = &p_965->g_116;
                int32_t *l_230 = &l_216;
                int32_t *l_231 = &p_965->g_25;
                int32_t *l_232 = &l_216;
                int32_t *l_233 = (void*)0;
                int32_t *l_234 = &p_965->g_25;
                int32_t *l_235 = &p_965->g_25;
                int32_t *l_236 = &l_216;
                int32_t *l_237 = &p_965->g_116;
                int32_t *l_238 = &p_965->g_25;
                int32_t *l_239 = (void*)0;
                int32_t *l_240[4][2][7] = {{{&l_216,&p_965->g_25,&l_216,&l_216,&l_216,&p_965->g_25,&l_10},{&l_216,&p_965->g_25,&l_216,&l_216,&l_216,&p_965->g_25,&l_10}},{{&l_216,&p_965->g_25,&l_216,&l_216,&l_216,&p_965->g_25,&l_10},{&l_216,&p_965->g_25,&l_216,&l_216,&l_216,&p_965->g_25,&l_10}},{{&l_216,&p_965->g_25,&l_216,&l_216,&l_216,&p_965->g_25,&l_10},{&l_216,&p_965->g_25,&l_216,&l_216,&l_216,&p_965->g_25,&l_10}},{{&l_216,&p_965->g_25,&l_216,&l_216,&l_216,&p_965->g_25,&l_10},{&l_216,&p_965->g_25,&l_216,&l_216,&l_216,&p_965->g_25,&l_10}}};
                int i, j, k;
                if (p_965->g_92[(p_965->g_115 + 3)][p_965->g_115])
                    break;
                l_241--;
            }
            for (l_10 = 0; (l_10 <= 3); l_10 += 1)
            { /* block id: 173 */
                uint16_t *l_252[9][4][7] = {{{(void*)0,(void*)0,&p_965->g_253,&p_965->g_253,&p_965->g_253,(void*)0,(void*)0},{(void*)0,(void*)0,&p_965->g_253,&p_965->g_253,&p_965->g_253,(void*)0,(void*)0},{(void*)0,(void*)0,&p_965->g_253,&p_965->g_253,&p_965->g_253,(void*)0,(void*)0},{(void*)0,(void*)0,&p_965->g_253,&p_965->g_253,&p_965->g_253,(void*)0,(void*)0}},{{(void*)0,(void*)0,&p_965->g_253,&p_965->g_253,&p_965->g_253,(void*)0,(void*)0},{(void*)0,(void*)0,&p_965->g_253,&p_965->g_253,&p_965->g_253,(void*)0,(void*)0},{(void*)0,(void*)0,&p_965->g_253,&p_965->g_253,&p_965->g_253,(void*)0,(void*)0},{(void*)0,(void*)0,&p_965->g_253,&p_965->g_253,&p_965->g_253,(void*)0,(void*)0}},{{(void*)0,(void*)0,&p_965->g_253,&p_965->g_253,&p_965->g_253,(void*)0,(void*)0},{(void*)0,(void*)0,&p_965->g_253,&p_965->g_253,&p_965->g_253,(void*)0,(void*)0},{(void*)0,(void*)0,&p_965->g_253,&p_965->g_253,&p_965->g_253,(void*)0,(void*)0},{(void*)0,(void*)0,&p_965->g_253,&p_965->g_253,&p_965->g_253,(void*)0,(void*)0}},{{(void*)0,(void*)0,&p_965->g_253,&p_965->g_253,&p_965->g_253,(void*)0,(void*)0},{(void*)0,(void*)0,&p_965->g_253,&p_965->g_253,&p_965->g_253,(void*)0,(void*)0},{(void*)0,(void*)0,&p_965->g_253,&p_965->g_253,&p_965->g_253,(void*)0,(void*)0},{(void*)0,(void*)0,&p_965->g_253,&p_965->g_253,&p_965->g_253,(void*)0,(void*)0}},{{(void*)0,(void*)0,&p_965->g_253,&p_965->g_253,&p_965->g_253,(void*)0,(void*)0},{(void*)0,(void*)0,&p_965->g_253,&p_965->g_253,&p_965->g_253,(void*)0,(void*)0},{(void*)0,(void*)0,&p_965->g_253,&p_965->g_253,&p_965->g_253,(void*)0,(void*)0},{(void*)0,(void*)0,&p_965->g_253,&p_965->g_253,&p_965->g_253,(void*)0,(void*)0}},{{(void*)0,(void*)0,&p_965->g_253,&p_965->g_253,&p_965->g_253,(void*)0,(void*)0},{(void*)0,(void*)0,&p_965->g_253,&p_965->g_253,&p_965->g_253,(void*)0,(void*)0},{(void*)0,(void*)0,&p_965->g_253,&p_965->g_253,&p_965->g_253,(void*)0,(void*)0},{(void*)0,(void*)0,&p_965->g_253,&p_965->g_253,&p_965->g_253,(void*)0,(void*)0}},{{(void*)0,(void*)0,&p_965->g_253,&p_965->g_253,&p_965->g_253,(void*)0,(void*)0},{(void*)0,(void*)0,&p_965->g_253,&p_965->g_253,&p_965->g_253,(void*)0,(void*)0},{(void*)0,(void*)0,&p_965->g_253,&p_965->g_253,&p_965->g_253,(void*)0,(void*)0},{(void*)0,(void*)0,&p_965->g_253,&p_965->g_253,&p_965->g_253,(void*)0,(void*)0}},{{(void*)0,(void*)0,&p_965->g_253,&p_965->g_253,&p_965->g_253,(void*)0,(void*)0},{(void*)0,(void*)0,&p_965->g_253,&p_965->g_253,&p_965->g_253,(void*)0,(void*)0},{(void*)0,(void*)0,&p_965->g_253,&p_965->g_253,&p_965->g_253,(void*)0,(void*)0},{(void*)0,(void*)0,&p_965->g_253,&p_965->g_253,&p_965->g_253,(void*)0,(void*)0}},{{(void*)0,(void*)0,&p_965->g_253,&p_965->g_253,&p_965->g_253,(void*)0,(void*)0},{(void*)0,(void*)0,&p_965->g_253,&p_965->g_253,&p_965->g_253,(void*)0,(void*)0},{(void*)0,(void*)0,&p_965->g_253,&p_965->g_253,&p_965->g_253,(void*)0,(void*)0},{(void*)0,(void*)0,&p_965->g_253,&p_965->g_253,&p_965->g_253,(void*)0,(void*)0}}};
                int16_t *l_257 = &p_965->g_258;
                int32_t l_276 = (-1L);
                int32_t l_277[7] = {(-4L),(-4L),(-4L),(-4L),(-4L),(-4L),(-4L)};
                int32_t *l_279 = &p_965->g_25;
                int i, j, k;
                (*l_279) = (safe_lshift_func_uint16_t_u_u((safe_rshift_func_uint16_t_u_s((safe_lshift_func_uint16_t_u_u((safe_lshift_func_int16_t_s_s(((*l_257) = ((l_254 ^= (p_965->g_253 = p_965->g_25)) ^ ((p_965->g_92[(l_10 + 1)][l_10]--) & 4294967295UL))), 4)), 3)), (((l_277[5] |= (safe_rshift_func_int8_t_s_s(((p_965->g_263[1] = (safe_add_func_uint8_t_u_u(0x56L, (2UL <= 1L)))) && ((void*)0 != l_264)), ((safe_sub_func_int64_t_s_s((((safe_mul_func_int8_t_s_s(((safe_rshift_func_int16_t_s_s((safe_rshift_func_int16_t_s_s(l_241, (((safe_add_func_uint8_t_u_u((((void*)0 != p_965->g_113[(p_965->g_115 + 2)]) ^ (*p_965->g_90)), p_965->g_115)) != l_241) & p_965->g_5))), 10)) == GROUP_DIVERGE(2, 1)), 0x2CL)) > l_275[0][0][2]) == l_276), 7UL)) != (-2L))))) || 2UL) ^ l_276))), 1));
                (*l_279) ^= (255UL || (*p_965->g_90));
            }
            for (p_965->g_27 = 0; (p_965->g_27 <= 3); p_965->g_27 += 1)
            { /* block id: 185 */
                int32_t *l_280 = &l_10;
                int32_t *l_281 = (void*)0;
                int32_t *l_282[1];
                uint32_t l_283 = 0UL;
                int i;
                for (i = 0; i < 1; i++)
                    l_282[i] = &p_965->g_25;
                ++l_283;
                for (l_254 = 0; (l_254 <= 3); l_254 += 1)
                { /* block id: 189 */
                    int32_t *l_287[8][5] = {{&l_10,&p_965->g_25,(void*)0,&l_254,(void*)0},{&l_10,&p_965->g_25,(void*)0,&l_254,(void*)0},{&l_10,&p_965->g_25,(void*)0,&l_254,(void*)0},{&l_10,&p_965->g_25,(void*)0,&l_254,(void*)0},{&l_10,&p_965->g_25,(void*)0,&l_254,(void*)0},{&l_10,&p_965->g_25,(void*)0,&l_254,(void*)0},{&l_10,&p_965->g_25,(void*)0,&l_254,(void*)0},{&l_10,&p_965->g_25,(void*)0,&l_254,(void*)0}};
                    int i, j;
                    l_287[4][3] = l_286;
                }
            }
        }
        (*l_316) &= (((*l_210) , (((safe_rshift_func_int16_t_s_u((safe_mod_func_int32_t_s_s((safe_div_func_uint32_t_u_u((safe_mul_func_int8_t_s_s(((*l_296) = p_965->g_120.f0), (func_2((safe_sub_func_int64_t_s_s(((l_300 == ((*l_303) = l_302)) , ((safe_add_func_int16_t_s_s((((*l_210) > ((safe_mul_func_uint16_t_u_u(((safe_sub_func_int16_t_s_s((safe_lshift_func_int8_t_s_u(p_965->g_26, 6)), (safe_add_func_uint32_t_u_u(((&l_286 != &l_210) & (l_315[1][3] = (&l_10 != (void*)0))), (*l_210))))) <= 1UL), 0x6195L)) , (*l_210))) == p_965->g_258), 0x275DL)) , 7L)), 0x5B669D97F4BBE486L)), p_965->g_263[1], p_965) , (*l_210)))), p_965->g_263[0])), (*l_210))), l_275[2][0][6])) == p_965->g_253) <= p_965->g_7[5][8][3])) == p_965->g_263[1]);
    }
    if ((*l_210))
    { /* block id: 199 */
        int32_t **l_318 = (void*)0;
        (*p_965->g_319) = &l_10;
    }
    else
    { /* block id: 201 */
        int64_t l_352 = (-10L);
        uint32_t l_353 = 4294967288UL;
        int32_t l_354 = 1L;
        int32_t l_357 = 0x589104F7L;
        int64_t l_390 = 0x5CADD11AE85B0919L;
        uint8_t *l_430[5];
        uint32_t l_431[9] = {1UL,0x5A11AED3L,1UL,1UL,0x5A11AED3L,1UL,1UL,0x5A11AED3L,1UL};
        int16_t l_526[8][8] = {{1L,1L,7L,7L,1L,1L,0x7142L,0x1EB6L},{1L,1L,7L,7L,1L,1L,0x7142L,0x1EB6L},{1L,1L,7L,7L,1L,1L,0x7142L,0x1EB6L},{1L,1L,7L,7L,1L,1L,0x7142L,0x1EB6L},{1L,1L,7L,7L,1L,1L,0x7142L,0x1EB6L},{1L,1L,7L,7L,1L,1L,0x7142L,0x1EB6L},{1L,1L,7L,7L,1L,1L,0x7142L,0x1EB6L},{1L,1L,7L,7L,1L,1L,0x7142L,0x1EB6L}};
        int32_t l_528[6][4][8] = {{{0L,0x6478491EL,0x399FCCAAL,0x7B5F45A7L,0x7B5F45A7L,0x399FCCAAL,0x6478491EL,0L},{0L,0x6478491EL,0x399FCCAAL,0x7B5F45A7L,0x7B5F45A7L,0x399FCCAAL,0x6478491EL,0L},{0L,0x6478491EL,0x399FCCAAL,0x7B5F45A7L,0x7B5F45A7L,0x399FCCAAL,0x6478491EL,0L},{0L,0x6478491EL,0x399FCCAAL,0x7B5F45A7L,0x7B5F45A7L,0x399FCCAAL,0x6478491EL,0L}},{{0L,0x6478491EL,0x399FCCAAL,0x7B5F45A7L,0x7B5F45A7L,0x399FCCAAL,0x6478491EL,0L},{0L,0x6478491EL,0x399FCCAAL,0x7B5F45A7L,0x7B5F45A7L,0x399FCCAAL,0x6478491EL,0L},{0L,0x6478491EL,0x399FCCAAL,0x7B5F45A7L,0x7B5F45A7L,0x399FCCAAL,0x6478491EL,0L},{0L,0x6478491EL,0x399FCCAAL,0x7B5F45A7L,0x7B5F45A7L,0x399FCCAAL,0x6478491EL,0L}},{{0L,0x6478491EL,0x399FCCAAL,0x7B5F45A7L,0x7B5F45A7L,0x399FCCAAL,0x6478491EL,0L},{0L,0x6478491EL,0x399FCCAAL,0x7B5F45A7L,0x7B5F45A7L,0x399FCCAAL,0x6478491EL,0L},{0L,0x6478491EL,0x399FCCAAL,0x7B5F45A7L,0x7B5F45A7L,0x399FCCAAL,0x6478491EL,0L},{0L,0x6478491EL,0x399FCCAAL,0x7B5F45A7L,0x7B5F45A7L,0x399FCCAAL,0x6478491EL,0L}},{{0L,0x6478491EL,0x399FCCAAL,0x7B5F45A7L,0x7B5F45A7L,0x399FCCAAL,0x6478491EL,0L},{0L,0x6478491EL,0x399FCCAAL,0x7B5F45A7L,0x7B5F45A7L,0x399FCCAAL,0x6478491EL,0L},{0L,0x6478491EL,0x399FCCAAL,0x7B5F45A7L,0x7B5F45A7L,0x399FCCAAL,0x6478491EL,0L},{0L,0x6478491EL,0x399FCCAAL,0x7B5F45A7L,0x7B5F45A7L,0x399FCCAAL,0x6478491EL,0L}},{{0L,0x6478491EL,0x399FCCAAL,0x7B5F45A7L,0x7B5F45A7L,0x399FCCAAL,0x6478491EL,0L},{0L,0x6478491EL,0x399FCCAAL,0x7B5F45A7L,0x7B5F45A7L,0x399FCCAAL,0x6478491EL,0L},{0L,0x6478491EL,0x399FCCAAL,0x7B5F45A7L,0x7B5F45A7L,0x399FCCAAL,0x6478491EL,0L},{0L,0x6478491EL,0x399FCCAAL,0x7B5F45A7L,0x7B5F45A7L,0x399FCCAAL,0x6478491EL,0L}},{{0L,0x6478491EL,0x399FCCAAL,0x7B5F45A7L,0x7B5F45A7L,0x399FCCAAL,0x6478491EL,0L},{0L,0x6478491EL,0x399FCCAAL,0x7B5F45A7L,0x7B5F45A7L,0x399FCCAAL,0x6478491EL,0L},{0L,0x6478491EL,0x399FCCAAL,0x7B5F45A7L,0x7B5F45A7L,0x399FCCAAL,0x6478491EL,0L},{0L,0x6478491EL,0x399FCCAAL,0x7B5F45A7L,0x7B5F45A7L,0x399FCCAAL,0x6478491EL,0L}}};
        union U1 *l_649 = (void*)0;
        uint8_t l_662 = 7UL;
        uint64_t l_735[7] = {0xE29B2F83FB655FB7L,0xE29B2F83FB655FB7L,0xE29B2F83FB655FB7L,0xE29B2F83FB655FB7L,0xE29B2F83FB655FB7L,0xE29B2F83FB655FB7L,0xE29B2F83FB655FB7L};
        int i, j, k;
        for (i = 0; i < 5; i++)
            l_430[i] = &p_965->g_7[3][3][1];
        for (p_965->g_317 = 2; (p_965->g_317 >= 0); p_965->g_317 -= 1)
        { /* block id: 204 */
            uint32_t l_344 = 0x992E8C8DL;
            int32_t l_358 = 0x099D6D3EL;
            int32_t l_384 = 0x52D91674L;
            int32_t l_388 = 0x07E1623BL;
            int32_t l_391[5][10][4] = {{{(-9L),(-10L),0x73D6430BL,(-10L)},{(-9L),(-10L),0x73D6430BL,(-10L)},{(-9L),(-10L),0x73D6430BL,(-10L)},{(-9L),(-10L),0x73D6430BL,(-10L)},{(-9L),(-10L),0x73D6430BL,(-10L)},{(-9L),(-10L),0x73D6430BL,(-10L)},{(-9L),(-10L),0x73D6430BL,(-10L)},{(-9L),(-10L),0x73D6430BL,(-10L)},{(-9L),(-10L),0x73D6430BL,(-10L)},{(-9L),(-10L),0x73D6430BL,(-10L)}},{{(-9L),(-10L),0x73D6430BL,(-10L)},{(-9L),(-10L),0x73D6430BL,(-10L)},{(-9L),(-10L),0x73D6430BL,(-10L)},{(-9L),(-10L),0x73D6430BL,(-10L)},{(-9L),(-10L),0x73D6430BL,(-10L)},{(-9L),(-10L),0x73D6430BL,(-10L)},{(-9L),(-10L),0x73D6430BL,(-10L)},{(-9L),(-10L),0x73D6430BL,(-10L)},{(-9L),(-10L),0x73D6430BL,(-10L)},{(-9L),(-10L),0x73D6430BL,(-10L)}},{{(-9L),(-10L),0x73D6430BL,(-10L)},{(-9L),(-10L),0x73D6430BL,(-10L)},{(-9L),(-10L),0x73D6430BL,(-10L)},{(-9L),(-10L),0x73D6430BL,(-10L)},{(-9L),(-10L),0x73D6430BL,(-10L)},{(-9L),(-10L),0x73D6430BL,(-10L)},{(-9L),(-10L),0x73D6430BL,(-10L)},{(-9L),(-10L),0x73D6430BL,(-10L)},{(-9L),(-10L),0x73D6430BL,(-10L)},{(-9L),(-10L),0x73D6430BL,(-10L)}},{{(-9L),(-10L),0x73D6430BL,(-10L)},{(-9L),(-10L),0x73D6430BL,(-10L)},{(-9L),(-10L),0x73D6430BL,(-10L)},{(-9L),(-10L),0x73D6430BL,(-10L)},{(-9L),(-10L),0x73D6430BL,(-10L)},{(-9L),(-10L),0x73D6430BL,(-10L)},{(-9L),(-10L),0x73D6430BL,(-10L)},{(-9L),(-10L),0x73D6430BL,(-10L)},{(-9L),(-10L),0x73D6430BL,(-10L)},{(-9L),(-10L),0x73D6430BL,(-10L)}},{{(-9L),(-10L),0x73D6430BL,(-10L)},{(-9L),(-10L),0x73D6430BL,(-10L)},{(-9L),(-10L),0x73D6430BL,(-10L)},{(-9L),(-10L),0x73D6430BL,(-10L)},{(-9L),(-10L),0x73D6430BL,(-10L)},{(-9L),(-10L),0x73D6430BL,(-10L)},{(-9L),(-10L),0x73D6430BL,(-10L)},{(-9L),(-10L),0x73D6430BL,(-10L)},{(-9L),(-10L),0x73D6430BL,(-10L)},{(-9L),(-10L),0x73D6430BL,(-10L)}}};
            int32_t l_392 = 0x25DBFB53L;
            uint8_t l_529[1];
            int32_t **l_532 = &l_210;
            int i, j, k;
            for (i = 0; i < 1; i++)
                l_529[i] = 255UL;
            for (p_965->g_258 = 2; (p_965->g_258 >= 0); p_965->g_258 -= 1)
            { /* block id: 207 */
                int32_t l_332 = 1L;
                uint32_t *l_335 = &p_965->g_92[2][2];
                int16_t *l_349 = &p_965->g_350;
                int32_t *l_351 = &p_965->g_25;
                int16_t *l_355 = &p_965->g_356;
                int i, j;
                (1 + 1);
            }
            for (l_358 = 2; (l_358 >= 0); l_358 -= 1)
            { /* block id: 234 */
                int32_t l_386[4];
                uint16_t *l_402 = &l_393;
                int16_t *l_434 = &p_965->g_350;
                int32_t l_448 = (-1L);
                uint8_t **l_495 = &p_965->g_90;
                int32_t **l_534 = &p_965->g_201;
                int32_t ***l_533 = &l_534;
                int32_t *l_545 = &l_354;
                int i, j;
                for (i = 0; i < 4; i++)
                    l_386[i] = (-10L);
                p_965->g_278[l_358][p_965->g_317] = p_965->g_278[(p_965->g_317 + 2)][p_965->g_317];
            }
        }
        for (p_965->g_258 = (-21); (p_965->g_258 == (-20)); p_965->g_258 = safe_add_func_uint64_t_u_u(p_965->g_258, 1))
        { /* block id: 299 */
            union U1 *l_549 = &p_965->g_550;
            union U1 **l_551 = (void*)0;
            int32_t l_556 = (-1L);
            int32_t *l_610 = &p_965->g_317;
            uint16_t l_683 = 65530UL;
            int32_t l_689 = 2L;
            int32_t l_692 = 0x48E34DE5L;
            int32_t l_693[1];
            int i;
            for (i = 0; i < 1; i++)
                l_693[i] = 0x2EE77340L;
            p_965->g_552 = (p_965->g_548 , l_549);
            for (p_965->g_25 = 0; (p_965->g_25 >= 5); p_965->g_25++)
            { /* block id: 303 */
                uint32_t l_555 = 4294967295UL;
                if (l_555)
                    break;
            }
        }
        if (((safe_mod_func_int64_t_s_s((((0xB0E7L < (0x36FDL || p_965->g_258)) | (((0x084BL < (6L >= (safe_add_func_uint32_t_u_u(((*l_210) && (l_526[2][5] && p_965->g_115)), ((*p_965->g_543) | 0x81464E73L))))) < p_965->g_263[0]) == 0x4BL)) >= l_353), p_965->g_92[2][2])) , 0x197BFC89L))
        { /* block id: 393 */
            int32_t *l_717 = &l_10;
            int32_t *l_718 = &l_691[2];
            int32_t *l_719 = &l_357;
            int32_t *l_720 = &p_965->g_25;
            int32_t *l_721 = &l_690;
            int32_t *l_722 = (void*)0;
            int32_t *l_723 = &l_354;
            int32_t *l_724 = &l_528[2][0][3];
            int32_t *l_725 = &l_691[2];
            int32_t *l_726 = &l_528[0][2][6];
            int32_t *l_727 = (void*)0;
            int32_t *l_728 = &p_965->g_317;
            int32_t *l_729 = &l_528[0][2][6];
            int32_t l_730 = (-1L);
            int32_t *l_731 = &p_965->g_25;
            int32_t *l_732 = &l_528[0][2][6];
            int32_t *l_733 = (void*)0;
            int32_t *l_734[3];
            int64_t *l_739 = &p_965->g_520;
            int64_t **l_738[8] = {&l_739,(void*)0,&l_739,&l_739,(void*)0,&l_739,&l_739,(void*)0};
            int i;
            for (i = 0; i < 3; i++)
                l_734[i] = (void*)0;
            (*l_210) &= l_357;
            l_735[1]--;
            (*l_719) = ((*l_717) = (&p_965->g_520 == (l_741[2] = (p_965->g_740 = &l_432))));
            for (l_677 = 0; (l_677 <= (-8)); l_677 = safe_sub_func_uint8_t_u_u(l_677, 1))
            { /* block id: 402 */
                return p_965->g_744;
            }
        }
        else
        { /* block id: 405 */
            int32_t *l_746[4];
            int i;
            for (i = 0; i < 4; i++)
                l_746[i] = &l_354;
            l_746[3] = &l_691[2];
        }
        (*l_210) = 8L;
    }
    for (p_965->g_297 = 0; (p_965->g_297 > 26); p_965->g_297 = safe_add_func_int32_t_s_s(p_965->g_297, 7))
    { /* block id: 412 */
        uint64_t l_760 = 4UL;
        int32_t *l_792 = &l_677;
        uint32_t l_861[10] = {4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL};
        int32_t l_895 = (-10L);
        int32_t l_896 = 0x125C8F20L;
        int32_t l_898 = 0x5BA94AE7L;
        uint32_t l_899 = 0xA85D25D5L;
        uint16_t l_908 = 5UL;
        int32_t l_943 = 0x1DFABD81L;
        int32_t l_945 = 0x0867C6A0L;
        int32_t l_947[6][6][4] = {{{(-1L),(-8L),0x74C3AC9FL,0x641BB1AEL},{(-1L),(-8L),0x74C3AC9FL,0x641BB1AEL},{(-1L),(-8L),0x74C3AC9FL,0x641BB1AEL},{(-1L),(-8L),0x74C3AC9FL,0x641BB1AEL},{(-1L),(-8L),0x74C3AC9FL,0x641BB1AEL},{(-1L),(-8L),0x74C3AC9FL,0x641BB1AEL}},{{(-1L),(-8L),0x74C3AC9FL,0x641BB1AEL},{(-1L),(-8L),0x74C3AC9FL,0x641BB1AEL},{(-1L),(-8L),0x74C3AC9FL,0x641BB1AEL},{(-1L),(-8L),0x74C3AC9FL,0x641BB1AEL},{(-1L),(-8L),0x74C3AC9FL,0x641BB1AEL},{(-1L),(-8L),0x74C3AC9FL,0x641BB1AEL}},{{(-1L),(-8L),0x74C3AC9FL,0x641BB1AEL},{(-1L),(-8L),0x74C3AC9FL,0x641BB1AEL},{(-1L),(-8L),0x74C3AC9FL,0x641BB1AEL},{(-1L),(-8L),0x74C3AC9FL,0x641BB1AEL},{(-1L),(-8L),0x74C3AC9FL,0x641BB1AEL},{(-1L),(-8L),0x74C3AC9FL,0x641BB1AEL}},{{(-1L),(-8L),0x74C3AC9FL,0x641BB1AEL},{(-1L),(-8L),0x74C3AC9FL,0x641BB1AEL},{(-1L),(-8L),0x74C3AC9FL,0x641BB1AEL},{(-1L),(-8L),0x74C3AC9FL,0x641BB1AEL},{(-1L),(-8L),0x74C3AC9FL,0x641BB1AEL},{(-1L),(-8L),0x74C3AC9FL,0x641BB1AEL}},{{(-1L),(-8L),0x74C3AC9FL,0x641BB1AEL},{(-1L),(-8L),0x74C3AC9FL,0x641BB1AEL},{(-1L),(-8L),0x74C3AC9FL,0x641BB1AEL},{(-1L),(-8L),0x74C3AC9FL,0x641BB1AEL},{(-1L),(-8L),0x74C3AC9FL,0x641BB1AEL},{(-1L),(-8L),0x74C3AC9FL,0x641BB1AEL}},{{(-1L),(-8L),0x74C3AC9FL,0x641BB1AEL},{(-1L),(-8L),0x74C3AC9FL,0x641BB1AEL},{(-1L),(-8L),0x74C3AC9FL,0x641BB1AEL},{(-1L),(-8L),0x74C3AC9FL,0x641BB1AEL},{(-1L),(-8L),0x74C3AC9FL,0x641BB1AEL},{(-1L),(-8L),0x74C3AC9FL,0x641BB1AEL}}};
        uint32_t l_952 = 0xD4B19BC7L;
        int i, j, k;
        for (p_965->g_253 = 0; (p_965->g_253 < 36); p_965->g_253++)
        { /* block id: 415 */
            int32_t *l_751 = &p_965->g_317;
            int32_t *l_752 = &l_691[0];
            int32_t *l_753 = &p_965->g_317;
            int32_t *l_754 = &p_965->g_116;
            int32_t *l_755 = &l_677;
            int32_t *l_756 = &l_691[0];
            int32_t *l_757 = &p_965->g_116;
            int32_t *l_758 = &l_677;
            int32_t *l_759[7];
            int32_t ***l_819[5][7][7] = {{{&p_965->g_817,(void*)0,&p_965->g_817,&p_965->g_817,&p_965->g_817,(void*)0,&p_965->g_817},{&p_965->g_817,(void*)0,&p_965->g_817,&p_965->g_817,&p_965->g_817,(void*)0,&p_965->g_817},{&p_965->g_817,(void*)0,&p_965->g_817,&p_965->g_817,&p_965->g_817,(void*)0,&p_965->g_817},{&p_965->g_817,(void*)0,&p_965->g_817,&p_965->g_817,&p_965->g_817,(void*)0,&p_965->g_817},{&p_965->g_817,(void*)0,&p_965->g_817,&p_965->g_817,&p_965->g_817,(void*)0,&p_965->g_817},{&p_965->g_817,(void*)0,&p_965->g_817,&p_965->g_817,&p_965->g_817,(void*)0,&p_965->g_817},{&p_965->g_817,(void*)0,&p_965->g_817,&p_965->g_817,&p_965->g_817,(void*)0,&p_965->g_817}},{{&p_965->g_817,(void*)0,&p_965->g_817,&p_965->g_817,&p_965->g_817,(void*)0,&p_965->g_817},{&p_965->g_817,(void*)0,&p_965->g_817,&p_965->g_817,&p_965->g_817,(void*)0,&p_965->g_817},{&p_965->g_817,(void*)0,&p_965->g_817,&p_965->g_817,&p_965->g_817,(void*)0,&p_965->g_817},{&p_965->g_817,(void*)0,&p_965->g_817,&p_965->g_817,&p_965->g_817,(void*)0,&p_965->g_817},{&p_965->g_817,(void*)0,&p_965->g_817,&p_965->g_817,&p_965->g_817,(void*)0,&p_965->g_817},{&p_965->g_817,(void*)0,&p_965->g_817,&p_965->g_817,&p_965->g_817,(void*)0,&p_965->g_817},{&p_965->g_817,(void*)0,&p_965->g_817,&p_965->g_817,&p_965->g_817,(void*)0,&p_965->g_817}},{{&p_965->g_817,(void*)0,&p_965->g_817,&p_965->g_817,&p_965->g_817,(void*)0,&p_965->g_817},{&p_965->g_817,(void*)0,&p_965->g_817,&p_965->g_817,&p_965->g_817,(void*)0,&p_965->g_817},{&p_965->g_817,(void*)0,&p_965->g_817,&p_965->g_817,&p_965->g_817,(void*)0,&p_965->g_817},{&p_965->g_817,(void*)0,&p_965->g_817,&p_965->g_817,&p_965->g_817,(void*)0,&p_965->g_817},{&p_965->g_817,(void*)0,&p_965->g_817,&p_965->g_817,&p_965->g_817,(void*)0,&p_965->g_817},{&p_965->g_817,(void*)0,&p_965->g_817,&p_965->g_817,&p_965->g_817,(void*)0,&p_965->g_817},{&p_965->g_817,(void*)0,&p_965->g_817,&p_965->g_817,&p_965->g_817,(void*)0,&p_965->g_817}},{{&p_965->g_817,(void*)0,&p_965->g_817,&p_965->g_817,&p_965->g_817,(void*)0,&p_965->g_817},{&p_965->g_817,(void*)0,&p_965->g_817,&p_965->g_817,&p_965->g_817,(void*)0,&p_965->g_817},{&p_965->g_817,(void*)0,&p_965->g_817,&p_965->g_817,&p_965->g_817,(void*)0,&p_965->g_817},{&p_965->g_817,(void*)0,&p_965->g_817,&p_965->g_817,&p_965->g_817,(void*)0,&p_965->g_817},{&p_965->g_817,(void*)0,&p_965->g_817,&p_965->g_817,&p_965->g_817,(void*)0,&p_965->g_817},{&p_965->g_817,(void*)0,&p_965->g_817,&p_965->g_817,&p_965->g_817,(void*)0,&p_965->g_817},{&p_965->g_817,(void*)0,&p_965->g_817,&p_965->g_817,&p_965->g_817,(void*)0,&p_965->g_817}},{{&p_965->g_817,(void*)0,&p_965->g_817,&p_965->g_817,&p_965->g_817,(void*)0,&p_965->g_817},{&p_965->g_817,(void*)0,&p_965->g_817,&p_965->g_817,&p_965->g_817,(void*)0,&p_965->g_817},{&p_965->g_817,(void*)0,&p_965->g_817,&p_965->g_817,&p_965->g_817,(void*)0,&p_965->g_817},{&p_965->g_817,(void*)0,&p_965->g_817,&p_965->g_817,&p_965->g_817,(void*)0,&p_965->g_817},{&p_965->g_817,(void*)0,&p_965->g_817,&p_965->g_817,&p_965->g_817,(void*)0,&p_965->g_817},{&p_965->g_817,(void*)0,&p_965->g_817,&p_965->g_817,&p_965->g_817,(void*)0,&p_965->g_817},{&p_965->g_817,(void*)0,&p_965->g_817,&p_965->g_817,&p_965->g_817,(void*)0,&p_965->g_817}}};
            int64_t l_830 = 0L;
            union U1 **l_886 = (void*)0;
            uint8_t l_921 = 1UL;
            int16_t l_932 = 0x7D23L;
            union U2 *l_934[4][3];
            int i, j, k;
            for (i = 0; i < 7; i++)
                l_759[i] = &l_10;
            for (i = 0; i < 4; i++)
            {
                for (j = 0; j < 3; j++)
                    l_934[i][j] = &p_965->g_517;
            }
            ++l_760;
            (*p_965->g_763) = &p_965->g_632;
            if (((safe_rshift_func_uint16_t_u_s((!l_760), ((*p_965->g_543) != (*p_965->g_543)))) && p_965->g_7[5][8][3]))
            { /* block id: 418 */
                int64_t l_790 = (-6L);
                int32_t l_791[9];
                int i;
                for (i = 0; i < 9; i++)
                    l_791[i] = 1L;
                for (p_965->g_520 = (-30); (p_965->g_520 > (-20)); ++p_965->g_520)
                { /* block id: 421 */
                    int32_t l_771[7][7][4] = {{{(-10L),4L,0x718DD9C0L,9L},{(-10L),4L,0x718DD9C0L,9L},{(-10L),4L,0x718DD9C0L,9L},{(-10L),4L,0x718DD9C0L,9L},{(-10L),4L,0x718DD9C0L,9L},{(-10L),4L,0x718DD9C0L,9L},{(-10L),4L,0x718DD9C0L,9L}},{{(-10L),4L,0x718DD9C0L,9L},{(-10L),4L,0x718DD9C0L,9L},{(-10L),4L,0x718DD9C0L,9L},{(-10L),4L,0x718DD9C0L,9L},{(-10L),4L,0x718DD9C0L,9L},{(-10L),4L,0x718DD9C0L,9L},{(-10L),4L,0x718DD9C0L,9L}},{{(-10L),4L,0x718DD9C0L,9L},{(-10L),4L,0x718DD9C0L,9L},{(-10L),4L,0x718DD9C0L,9L},{(-10L),4L,0x718DD9C0L,9L},{(-10L),4L,0x718DD9C0L,9L},{(-10L),4L,0x718DD9C0L,9L},{(-10L),4L,0x718DD9C0L,9L}},{{(-10L),4L,0x718DD9C0L,9L},{(-10L),4L,0x718DD9C0L,9L},{(-10L),4L,0x718DD9C0L,9L},{(-10L),4L,0x718DD9C0L,9L},{(-10L),4L,0x718DD9C0L,9L},{(-10L),4L,0x718DD9C0L,9L},{(-10L),4L,0x718DD9C0L,9L}},{{(-10L),4L,0x718DD9C0L,9L},{(-10L),4L,0x718DD9C0L,9L},{(-10L),4L,0x718DD9C0L,9L},{(-10L),4L,0x718DD9C0L,9L},{(-10L),4L,0x718DD9C0L,9L},{(-10L),4L,0x718DD9C0L,9L},{(-10L),4L,0x718DD9C0L,9L}},{{(-10L),4L,0x718DD9C0L,9L},{(-10L),4L,0x718DD9C0L,9L},{(-10L),4L,0x718DD9C0L,9L},{(-10L),4L,0x718DD9C0L,9L},{(-10L),4L,0x718DD9C0L,9L},{(-10L),4L,0x718DD9C0L,9L},{(-10L),4L,0x718DD9C0L,9L}},{{(-10L),4L,0x718DD9C0L,9L},{(-10L),4L,0x718DD9C0L,9L},{(-10L),4L,0x718DD9C0L,9L},{(-10L),4L,0x718DD9C0L,9L},{(-10L),4L,0x718DD9C0L,9L},{(-10L),4L,0x718DD9C0L,9L},{(-10L),4L,0x718DD9C0L,9L}}};
                    int8_t *l_809[10][7][1] = {{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}}};
                    int i, j, k;
                    for (l_522 = 0; (l_522 != (-25)); l_522 = safe_sub_func_int8_t_s_s(l_522, 9))
                    { /* block id: 424 */
                        int16_t *l_786 = &p_965->g_258;
                        int32_t l_788 = 0x3B808549L;
                        (*l_751) = (l_771[2][5][2] == (l_791[8] = ((((0x764BL || ((safe_lshift_func_uint16_t_u_s(((((((((*l_210) = 0x0A213378L) >= (((l_771[2][5][2] >= (((safe_div_func_int64_t_s_s((*p_965->g_740), (l_771[2][5][2] ^ ((safe_add_func_uint16_t_u_u(GROUP_DIVERGE(1, 1), (0x0B3428A6DAAB51D4L & (safe_mul_func_int8_t_s_s((safe_add_func_int32_t_s_s((((safe_div_func_int16_t_s_s(((*l_786) = (((*l_751) && l_771[2][3][2]) == FAKE_DIVERGE(p_965->group_2_offset, get_group_id(2), 10))), l_771[2][5][2])) >= l_760) <= p_965->g_92[2][2]), 0x89A91EC2L)), p_965->g_7[5][8][3]))))) == l_760)))) >= 3UL) > p_965->g_263[1])) , p_965->g_787) , l_788)) , l_771[3][3][3]) || l_771[2][4][1]) == 0xFED2F3177EF38B9AL) & (*l_754)) , 65529UL), p_965->g_517.f0)) & l_789[1])) , (-1L)) , l_790) & l_771[2][5][2])));
                        (*p_965->g_794) = l_792;
                        return p_965->g_373;
                    }
                    (*l_751) &= (safe_mul_func_int8_t_s_s((safe_rshift_func_int16_t_s_s((((p_965->g_712 ^= ((l_771[6][0][3] & (((safe_add_func_uint16_t_u_u(0xE216L, ((safe_mod_func_int64_t_s_s(0x16F7DF811549A08EL, (safe_sub_func_uint16_t_u_u((*l_792), (((void*)0 == &l_10) && (safe_mul_func_uint8_t_u_u(l_791[4], ((((safe_div_func_uint16_t_u_u(l_791[8], 0x4217L)) > p_965->g_544) < FAKE_DIVERGE(p_965->global_2_offset, get_global_id(2), 10)) && (-1L))))))))) ^ (*p_965->g_740)))) , FAKE_DIVERGE(p_965->local_0_offset, get_local_id(0), 10)) & p_965->g_258)) != p_965->g_356)) | p_965->g_7[4][8][2]) & (*l_792)), l_771[2][5][2])), l_771[5][2][3]));
                }
                for (p_965->g_630.f1 = 0; (p_965->g_630.f1 == 17); p_965->g_630.f1 = safe_add_func_int64_t_s_s(p_965->g_630.f1, 5))
                { /* block id: 437 */
                    int32_t ****l_818[9];
                    int8_t *l_841 = &p_965->g_712;
                    int32_t l_852 = (-2L);
                    uint8_t l_858[2];
                    int i;
                    for (i = 0; i < 9; i++)
                        l_818[i] = &p_965->g_816;
                    for (i = 0; i < 2; i++)
                        l_858[i] = 0UL;
                    for (p_965->g_628.f2 = 0; (p_965->g_628.f2 < 16); ++p_965->g_628.f2)
                    { /* block id: 440 */
                        return p_965->g_385;
                    }
                    if ((safe_mul_func_uint16_t_u_u(((l_819[4][3][3] = p_965->g_816) != (void*)0), (safe_lshift_func_uint16_t_u_s(((safe_mod_func_uint32_t_u_u(((safe_add_func_uint16_t_u_u((safe_rshift_func_int16_t_s_u(((void*)0 == &p_965->g_380), p_965->g_548.f0)), ((*l_792) >= (safe_add_func_uint8_t_u_u(((l_830 || (safe_rshift_func_int8_t_s_s(((*l_841) = ((((safe_add_func_uint16_t_u_u((((safe_add_func_uint8_t_u_u((safe_rshift_func_int16_t_s_s((safe_add_func_int32_t_s_s((((l_753 = &p_965->g_116) != (l_210 = l_759[3])) , (*l_210)), (*p_965->g_543))), p_965->g_25)), FAKE_DIVERGE(p_965->local_0_offset, get_local_id(0), 10))) , p_965->g_25) == FAKE_DIVERGE(p_965->local_1_offset, get_local_id(1), 10)), p_965->g_297)) == (*p_965->g_543)) <= 1L) | 0x31L)), l_842))) >= p_965->g_744), 0L))))) != (*l_792)), (*l_757))) , 65532UL), (*l_755))))))
                    { /* block id: 447 */
                        int32_t *****l_864 = &l_818[5];
                        int16_t *l_865 = &p_965->g_258;
                        (*l_754) ^= ((safe_mul_func_uint8_t_u_u((((safe_sub_func_uint16_t_u_u((safe_unary_minus_func_uint8_t_u(((*p_965->g_740) > (p_965->g_115 = (safe_sub_func_int8_t_s_s((-4L), (((((((p_965->g_447[0][0] = 0x6795D8349AFAE8C9L) , (l_791[0] = (safe_mul_func_int8_t_s_s(l_852, 0x4BL)))) >= (*l_792)) || (((((safe_mul_func_int16_t_s_s((0x35L >= (safe_mul_func_uint16_t_u_u(0UL, p_965->g_857))), 4L)) >= l_791[4]) , p_965->g_92[7][2]) | 0x4B8EL) || (*l_752))) < FAKE_DIVERGE(p_965->local_2_offset, get_local_id(2), 10)) >= 0xA0L) <= (*l_792)))))))), l_858[1])) , p_965->g_356) , l_791[4]), (*p_965->g_90))) == 0x0DD44122L);
                        (*l_792) = (255UL & (((0xF575L >= ((*l_865) = (safe_sub_func_uint8_t_u_u(l_861[2], ((*l_841) = (safe_rshift_func_int8_t_s_s(((((*l_864) = &p_965->g_816) == &p_965->g_816) || FAKE_DIVERGE(p_965->group_0_offset, get_group_id(0), 10)), 5))))))) != (safe_sub_func_int32_t_s_s((-1L), (safe_rshift_func_uint8_t_u_s((((safe_mul_func_int8_t_s_s(((((*l_210) >= (&l_791[6] == &l_677)) == l_858[1]) || 0x027EL), (*l_752))) ^ 1L) == 5UL), 7))))) && 0x2FA2DAD3077710B3L));
                        if ((*l_792))
                            continue;
                        if ((*l_758))
                            continue;
                    }
                    else
                    { /* block id: 458 */
                        union U1 ***l_880 = (void*)0;
                        union U1 **l_882[7] = {&p_965->g_552,&p_965->g_552,&p_965->g_552,&p_965->g_552,&p_965->g_552,&p_965->g_552,&p_965->g_552};
                        union U1 ***l_881 = &l_882[2];
                        uint32_t *l_891 = (void*)0;
                        uint32_t *l_892 = &p_965->g_744;
                        int16_t *l_893 = &p_965->g_350;
                        int32_t l_894 = 0x321AE029L;
                        int32_t l_897 = (-7L);
                        int i;
                        (*l_758) = (safe_mul_func_uint16_t_u_u((~(((((*p_965->g_552) , &l_393) == &p_965->g_253) || l_790) == (safe_lshift_func_uint8_t_u_s(((*p_965->g_90) = (safe_sub_func_int16_t_s_s((safe_lshift_func_int16_t_s_s(7L, ((p_965->g_263[1] , p_965->g_517.f0) , ((((l_883 = ((*l_881) = &p_965->g_552)) == l_886) >= (*l_753)) == (*l_751))))), (-1L)))), (*l_752))))), p_965->g_630.f1));
                        (**p_965->g_816) = func_11(func_58((safe_add_func_int8_t_s_s(p_965->g_116, (safe_mul_func_uint8_t_u_u((((*l_792) != (((-2L) == ((*l_892) |= (!((*p_965->g_543) = FAKE_DIVERGE(p_965->global_1_offset, get_global_id(1), 10))))) & 0x76L)) & ((*l_893) = (-1L))), 1UL)))), p_965), p_965->g_263[1], l_792, p_965);
                        l_899--;
                    }
                    (*l_754) &= l_790;
                    if ((*l_210))
                        continue;
                }
                return p_965->g_517.f0;
            }
            else
            { /* block id: 473 */
                int8_t l_919[2];
                int32_t l_938 = 0x65DC22B8L;
                int32_t l_946 = 3L;
                int32_t l_951 = 0x3CE20C32L;
                int i;
                for (i = 0; i < 2; i++)
                    l_919[i] = 0x26L;
                if (((safe_mul_func_int8_t_s_s((safe_lshift_func_int8_t_s_u((*l_752), FAKE_DIVERGE(p_965->group_0_offset, get_group_id(0), 10))), ((void*)0 != &p_965->g_816))) == 0x76L))
                { /* block id: 474 */
                    int64_t l_922 = 9L;
                    for (l_677 = (-27); (l_677 >= (-17)); l_677 = safe_add_func_uint64_t_u_u(l_677, 9))
                    { /* block id: 477 */
                        uint16_t *l_920[1];
                        int32_t l_923 = (-1L);
                        int16_t *l_933[10][2][7] = {{{(void*)0,&p_965->g_350,(void*)0,(void*)0,&p_965->g_350,&p_965->g_350,&p_965->g_350},{(void*)0,&p_965->g_350,(void*)0,(void*)0,&p_965->g_350,&p_965->g_350,&p_965->g_350}},{{(void*)0,&p_965->g_350,(void*)0,(void*)0,&p_965->g_350,&p_965->g_350,&p_965->g_350},{(void*)0,&p_965->g_350,(void*)0,(void*)0,&p_965->g_350,&p_965->g_350,&p_965->g_350}},{{(void*)0,&p_965->g_350,(void*)0,(void*)0,&p_965->g_350,&p_965->g_350,&p_965->g_350},{(void*)0,&p_965->g_350,(void*)0,(void*)0,&p_965->g_350,&p_965->g_350,&p_965->g_350}},{{(void*)0,&p_965->g_350,(void*)0,(void*)0,&p_965->g_350,&p_965->g_350,&p_965->g_350},{(void*)0,&p_965->g_350,(void*)0,(void*)0,&p_965->g_350,&p_965->g_350,&p_965->g_350}},{{(void*)0,&p_965->g_350,(void*)0,(void*)0,&p_965->g_350,&p_965->g_350,&p_965->g_350},{(void*)0,&p_965->g_350,(void*)0,(void*)0,&p_965->g_350,&p_965->g_350,&p_965->g_350}},{{(void*)0,&p_965->g_350,(void*)0,(void*)0,&p_965->g_350,&p_965->g_350,&p_965->g_350},{(void*)0,&p_965->g_350,(void*)0,(void*)0,&p_965->g_350,&p_965->g_350,&p_965->g_350}},{{(void*)0,&p_965->g_350,(void*)0,(void*)0,&p_965->g_350,&p_965->g_350,&p_965->g_350},{(void*)0,&p_965->g_350,(void*)0,(void*)0,&p_965->g_350,&p_965->g_350,&p_965->g_350}},{{(void*)0,&p_965->g_350,(void*)0,(void*)0,&p_965->g_350,&p_965->g_350,&p_965->g_350},{(void*)0,&p_965->g_350,(void*)0,(void*)0,&p_965->g_350,&p_965->g_350,&p_965->g_350}},{{(void*)0,&p_965->g_350,(void*)0,(void*)0,&p_965->g_350,&p_965->g_350,&p_965->g_350},{(void*)0,&p_965->g_350,(void*)0,(void*)0,&p_965->g_350,&p_965->g_350,&p_965->g_350}},{{(void*)0,&p_965->g_350,(void*)0,(void*)0,&p_965->g_350,&p_965->g_350,&p_965->g_350},{(void*)0,&p_965->g_350,(void*)0,(void*)0,&p_965->g_350,&p_965->g_350,&p_965->g_350}}};
                        int i, j, k;
                        for (i = 0; i < 1; i++)
                            l_920[i] = &l_393;
                        l_908 ^= ((*l_757) = 0L);
                        (*l_756) ^= (safe_mul_func_int8_t_s_s((safe_add_func_int64_t_s_s(((safe_mod_func_uint16_t_u_u((((((*l_210) = 0UL) >= (*p_965->g_543)) & ((safe_lshift_func_uint8_t_u_s(((((l_921 = ((safe_mod_func_int16_t_s_s(((*p_965->g_543) , ((((**p_965->g_763) != (void*)0) >= ((&l_760 != &p_965->g_447[2][3]) | (*l_792))) >= (((*p_965->g_740) , l_919[1]) , (-10L)))), p_965->g_350)) != 0x4875L)) > p_965->g_263[0]) || 0x7AB19C1E0B520B04L) > 0xD158B9D34F9D395AL), 6)) , 0x76L)) , l_922), p_965->g_297)) && GROUP_DIVERGE(0, 1)), l_922)), l_789[1]));
                        (*p_965->g_935) = ((***p_965->g_763) , ((((((*l_752) = 2L) || ((l_923 || ((~(p_965->g_258 , 0x61347C541DB2BDC2L)) != ((safe_rshift_func_uint16_t_u_u(GROUP_DIVERGE(1, 1), 7)) == (*p_965->g_543)))) != (1UL > (((safe_lshift_func_int8_t_s_u(((safe_rshift_func_uint16_t_u_s((~65534UL), (p_965->g_350 |= (safe_mod_func_int8_t_s_s((l_922 , (*l_792)), l_932))))) & 0UL), 7)) , p_965->g_356) > l_919[1])))) | 0x41E9EC85D8F8300DL) , l_923) , l_934[2][1]));
                    }
                    for (l_908 = 1; (l_908 <= 5); l_908 += 1)
                    { /* block id: 489 */
                        (*l_792) = ((void*)0 == &p_965->g_90);
                    }
                    (*l_757) = l_937;
                }
                else
                { /* block id: 493 */
                    uint16_t l_939 = 0x6285L;
                    int32_t l_944[10];
                    int i;
                    for (i = 0; i < 10; i++)
                        l_944[i] = 0x01B339F9L;
                    ++l_939;
                    l_948[3][2]++;
                    l_952--;
                }
                for (l_921 = 15; (l_921 != 52); l_921 = safe_add_func_int32_t_s_s(l_921, 8))
                { /* block id: 500 */
                    return p_965->g_7[5][0][2];
                }
            }
        }
        for (l_937 = 21; (l_937 > 5); l_937 = safe_sub_func_int64_t_s_s(l_937, 6))
        { /* block id: 507 */
            int8_t l_964 = (-1L);
            for (p_965->g_787.f1 = 0; (p_965->g_787.f1 <= 34); p_965->g_787.f1++)
            { /* block id: 510 */
                int32_t *l_963 = &l_895;
                for (p_965->g_628.f2 = 23; (p_965->g_628.f2 == (-25)); p_965->g_628.f2--)
                { /* block id: 513 */
                    (*p_965->g_817) = l_963;
                    return p_965->g_447[6][3];
                }
            }
            if ((*l_210))
                continue;
            return l_964;
        }
    }
    return p_965->g_7[5][2][0];
}


/* ------------------------------------------ */
/* 
 * reads : p_965->g_27 p_965->g_25 p_965->g_7 p_965->g_43 p_965->g_5 p_965->g_116 p_965->g_115 p_965->g_120
 * writes: p_965->g_27 p_965->g_25 p_965->g_57 p_965->g_90 p_965->g_92 p_965->g_113 p_965->g_115 p_965->g_201
 */
union U2  func_2(int16_t  p_3, int32_t  p_4, struct S3 * p_965)
{ /* block id: 6 */
    uint8_t *l_15 = &p_965->g_7[5][8][3];
    int32_t l_23 = (-1L);
    int32_t **l_203 = &p_965->g_201;
    int32_t *l_206[8] = {&p_965->g_116,&p_965->g_116,&p_965->g_116,&p_965->g_116,&p_965->g_116,&p_965->g_116,&p_965->g_116,&p_965->g_116};
    int32_t **l_205 = &l_206[6];
    int i;
    (*l_205) = ((*l_203) = func_11(l_15, func_16(func_18(func_20(p_4, l_23, p_965), p_965), p_965), ((((safe_mul_func_int8_t_s_s((-1L), p_4)) <= (safe_sub_func_int8_t_s_s(((void*)0 != &l_23), 0x46L))) & l_23) , &l_23), p_965));
    return p_965->g_120;
}


/* ------------------------------------------ */
/* 
 * reads : p_965->g_43 p_965->g_27 p_965->g_7 p_965->g_25 p_965->g_5 p_965->g_116 p_965->g_115
 * writes: p_965->g_57 p_965->g_25 p_965->g_90 p_965->g_92 p_965->g_113 p_965->g_115 p_965->g_201
 */
int32_t * func_11(uint8_t * p_12, int16_t  p_13, int32_t * p_14, struct S3 * p_965)
{ /* block id: 24 */
    uint8_t *l_52[10];
    uint8_t *l_56 = &p_965->g_7[4][1][1];
    uint8_t **l_55[2];
    int32_t *l_68 = &p_965->g_25;
    uint32_t *l_91 = &p_965->g_92[2][2];
    int32_t l_93[3];
    int64_t *l_114 = &p_965->g_115;
    int32_t **l_200[3];
    int32_t *l_202 = &l_93[2];
    int i;
    for (i = 0; i < 10; i++)
        l_52[i] = &p_965->g_7[5][8][3];
    for (i = 0; i < 2; i++)
        l_55[i] = &l_56;
    for (i = 0; i < 3; i++)
        l_93[i] = (-1L);
    for (i = 0; i < 3; i++)
        l_200[i] = (void*)0;
    if (((p_13 & (((void*)0 != p_12) | (~(p_965->g_43 , (safe_lshift_func_uint8_t_u_s(((safe_lshift_func_int8_t_s_u(((p_965->g_27 & (safe_mul_func_uint16_t_u_u(((safe_rshift_func_int8_t_s_u(func_34(l_52[5], p_965), 1)) | ((((*l_114) = (func_16(func_18(((GROUP_DIVERGE(2, 1) , ((((safe_rshift_func_uint16_t_u_u((((p_965->g_57[0][4][0] = (void*)0) != (p_965->g_113[1] = func_58((safe_mul_func_uint8_t_u_u((((*l_91) = ((p_965->g_90 = func_62(p_965->g_27, p_965->g_27, p_12, p_965->g_7[5][8][3], l_68, p_965)) == p_12)) >= 0x6C34CEF8L), l_93[2])), p_965))) || 0x7F8BE070EAEF02C8L), p_965->g_27)) || 5L) && (*p_12)) || GROUP_DIVERGE(2, 1))) , p_13), p_965), p_965) ^ p_13)) != p_13) | 6L)), p_965->g_5))) != p_965->g_27), 2)) ^ (*p_14)), p_965->g_27)))))) & p_965->g_116))
    { /* block id: 49 */
        union U2 *l_119 = &p_965->g_120;
        for (p_965->g_115 = (-21); (p_965->g_115 != 1); p_965->g_115++)
        { /* block id: 52 */
            union U2 **l_121 = &l_119;
            (*l_121) = l_119;
        }
        if ((atomic_inc(&p_965->l_atomic_input[23]) == 8))
        { /* block id: 56 */
            int8_t l_122[2][1][5] = {{{0L,0L,0L,0L,0L}},{{0L,0L,0L,0L,0L}}};
            int32_t l_123 = 0L;
            uint32_t l_124 = 0x47E6CF93L;
            uint64_t l_125 = 2UL;
            int8_t l_126 = 0x78L;
            uint32_t l_127 = 0x04AF86A2L;
            int32_t l_129 = 0L;
            int32_t *l_128 = &l_129;
            int i, j, k;
            l_123 = (l_122[1][0][4] , 1L);
            l_127 = (l_126 = (l_125 = (l_124 |= 3L)));
            l_128 = (void*)0;
            unsigned int result = 0;
            int l_122_i0, l_122_i1, l_122_i2;
            for (l_122_i0 = 0; l_122_i0 < 2; l_122_i0++) {
                for (l_122_i1 = 0; l_122_i1 < 1; l_122_i1++) {
                    for (l_122_i2 = 0; l_122_i2 < 5; l_122_i2++) {
                        result += l_122[l_122_i0][l_122_i1][l_122_i2];
                    }
                }
            }
            result += l_123;
            result += l_124;
            result += l_125;
            result += l_126;
            result += l_127;
            result += l_129;
            atomic_add(&p_965->l_special_values[23], result);
        }
        else
        { /* block id: 63 */
            (1 + 1);
        }
        if ((atomic_inc(&p_965->l_atomic_input[18]) == 5))
        { /* block id: 67 */
            int32_t l_130 = 0x69B51010L;
            uint64_t l_199 = 0xCA9DBBE3BBB77870L;
            for (l_130 = 0; (l_130 <= 2); l_130 += 1)
            { /* block id: 70 */
                int16_t l_131 = 0x2922L;
                int32_t l_132 = (-4L);
                uint32_t l_133[5];
                int16_t l_134 = 0x7BDAL;
                int32_t l_135[4][5][7] = {{{0x2151E35FL,1L,1L,1L,0x2151E35FL,0x2151E35FL,1L},{0x2151E35FL,1L,1L,1L,0x2151E35FL,0x2151E35FL,1L},{0x2151E35FL,1L,1L,1L,0x2151E35FL,0x2151E35FL,1L},{0x2151E35FL,1L,1L,1L,0x2151E35FL,0x2151E35FL,1L},{0x2151E35FL,1L,1L,1L,0x2151E35FL,0x2151E35FL,1L}},{{0x2151E35FL,1L,1L,1L,0x2151E35FL,0x2151E35FL,1L},{0x2151E35FL,1L,1L,1L,0x2151E35FL,0x2151E35FL,1L},{0x2151E35FL,1L,1L,1L,0x2151E35FL,0x2151E35FL,1L},{0x2151E35FL,1L,1L,1L,0x2151E35FL,0x2151E35FL,1L},{0x2151E35FL,1L,1L,1L,0x2151E35FL,0x2151E35FL,1L}},{{0x2151E35FL,1L,1L,1L,0x2151E35FL,0x2151E35FL,1L},{0x2151E35FL,1L,1L,1L,0x2151E35FL,0x2151E35FL,1L},{0x2151E35FL,1L,1L,1L,0x2151E35FL,0x2151E35FL,1L},{0x2151E35FL,1L,1L,1L,0x2151E35FL,0x2151E35FL,1L},{0x2151E35FL,1L,1L,1L,0x2151E35FL,0x2151E35FL,1L}},{{0x2151E35FL,1L,1L,1L,0x2151E35FL,0x2151E35FL,1L},{0x2151E35FL,1L,1L,1L,0x2151E35FL,0x2151E35FL,1L},{0x2151E35FL,1L,1L,1L,0x2151E35FL,0x2151E35FL,1L},{0x2151E35FL,1L,1L,1L,0x2151E35FL,0x2151E35FL,1L},{0x2151E35FL,1L,1L,1L,0x2151E35FL,0x2151E35FL,1L}}};
                int32_t l_136 = 3L;
                int32_t l_172 = 9L;
                int64_t l_173 = 0x3B3311CE538C8CD2L;
                int32_t *l_197 = &l_135[0][0][4];
                int32_t *l_198 = &l_172;
                int i, j, k;
                for (i = 0; i < 5; i++)
                    l_133[i] = 0x39F508D5L;
                l_134 |= (l_133[1] &= (l_132 = (l_93[l_130] , l_131)));
                if ((l_136 = l_135[0][2][4]))
                { /* block id: 75 */
                    int32_t l_137 = 6L;
                    int64_t l_145 = 0x5AE833BBF8E7FB40L;
                    uint32_t l_146 = 0xC5FBAF3FL;
                    for (l_137 = (-3); (l_137 <= 0); l_137 = safe_add_func_int32_t_s_s(l_137, 1))
                    { /* block id: 78 */
                        int8_t l_140[3];
                        int64_t l_141 = 0x75F8867BC28BBEDEL;
                        uint32_t l_142[9][3] = {{0x43DCC97FL,0xD776FE5EL,0x43DCC97FL},{0x43DCC97FL,0xD776FE5EL,0x43DCC97FL},{0x43DCC97FL,0xD776FE5EL,0x43DCC97FL},{0x43DCC97FL,0xD776FE5EL,0x43DCC97FL},{0x43DCC97FL,0xD776FE5EL,0x43DCC97FL},{0x43DCC97FL,0xD776FE5EL,0x43DCC97FL},{0x43DCC97FL,0xD776FE5EL,0x43DCC97FL},{0x43DCC97FL,0xD776FE5EL,0x43DCC97FL},{0x43DCC97FL,0xD776FE5EL,0x43DCC97FL}};
                        int i, j;
                        for (i = 0; i < 3; i++)
                            l_140[i] = 0x40L;
                        l_142[3][1]++;
                    }
                    ++l_146;
                    for (l_137 = 0; (l_137 > 17); l_137 = safe_add_func_uint32_t_u_u(l_137, 3))
                    { /* block id: 84 */
                        int64_t l_151 = 0x36C2B63071900071L;
                        uint8_t l_152 = 0x45L;
                        l_93[l_130] = l_151;
                        ++l_152;
                    }
                    for (l_146 = 0; (l_146 == 2); l_146++)
                    { /* block id: 90 */
                        l_137 = (l_93[l_130] = (l_135[0][2][4] ^= (-2L)));
                    }
                }
                else
                { /* block id: 95 */
                    int32_t l_157 = 0x604F2ECFL;
                    uint32_t l_163 = 4294967294UL;
                    int64_t l_164 = 1L;
                    int32_t *l_165 = &l_157;
                    int32_t *l_166 = &l_157;
                    uint64_t l_167 = 1UL;
                    union U2 l_168 = {0x132948FFD3BA7024L};/* VOLATILE GLOBAL l_168 */
                    int32_t l_169[4] = {(-1L),(-1L),(-1L),(-1L)};
                    int32_t *l_170[4][5][8] = {{{&l_157,(void*)0,&l_157,&l_169[2],&l_169[0],&l_169[0],&l_169[1],&l_169[2]},{&l_157,(void*)0,&l_157,&l_169[2],&l_169[0],&l_169[0],&l_169[1],&l_169[2]},{&l_157,(void*)0,&l_157,&l_169[2],&l_169[0],&l_169[0],&l_169[1],&l_169[2]},{&l_157,(void*)0,&l_157,&l_169[2],&l_169[0],&l_169[0],&l_169[1],&l_169[2]},{&l_157,(void*)0,&l_157,&l_169[2],&l_169[0],&l_169[0],&l_169[1],&l_169[2]}},{{&l_157,(void*)0,&l_157,&l_169[2],&l_169[0],&l_169[0],&l_169[1],&l_169[2]},{&l_157,(void*)0,&l_157,&l_169[2],&l_169[0],&l_169[0],&l_169[1],&l_169[2]},{&l_157,(void*)0,&l_157,&l_169[2],&l_169[0],&l_169[0],&l_169[1],&l_169[2]},{&l_157,(void*)0,&l_157,&l_169[2],&l_169[0],&l_169[0],&l_169[1],&l_169[2]},{&l_157,(void*)0,&l_157,&l_169[2],&l_169[0],&l_169[0],&l_169[1],&l_169[2]}},{{&l_157,(void*)0,&l_157,&l_169[2],&l_169[0],&l_169[0],&l_169[1],&l_169[2]},{&l_157,(void*)0,&l_157,&l_169[2],&l_169[0],&l_169[0],&l_169[1],&l_169[2]},{&l_157,(void*)0,&l_157,&l_169[2],&l_169[0],&l_169[0],&l_169[1],&l_169[2]},{&l_157,(void*)0,&l_157,&l_169[2],&l_169[0],&l_169[0],&l_169[1],&l_169[2]},{&l_157,(void*)0,&l_157,&l_169[2],&l_169[0],&l_169[0],&l_169[1],&l_169[2]}},{{&l_157,(void*)0,&l_157,&l_169[2],&l_169[0],&l_169[0],&l_169[1],&l_169[2]},{&l_157,(void*)0,&l_157,&l_169[2],&l_169[0],&l_169[0],&l_169[1],&l_169[2]},{&l_157,(void*)0,&l_157,&l_169[2],&l_169[0],&l_169[0],&l_169[1],&l_169[2]},{&l_157,(void*)0,&l_157,&l_169[2],&l_169[0],&l_169[0],&l_169[1],&l_169[2]},{&l_157,(void*)0,&l_157,&l_169[2],&l_169[0],&l_169[0],&l_169[1],&l_169[2]}}};
                    int32_t *l_171 = (void*)0;
                    int i, j, k;
                    for (l_157 = 0; (l_157 != (-4)); l_157--)
                    { /* block id: 98 */
                        int32_t l_161 = (-1L);
                        int32_t *l_160 = &l_161;
                        int8_t l_162 = (-1L);
                        l_160 = (void*)0;
                        l_135[0][2][4] = l_162;
                    }
                    l_164 = (l_157 ^= (l_163 = (l_135[0][2][4] ^= (l_93[l_130] = 0x5B72AD15L))));
                    l_166 = l_165;
                    l_171 = ((l_167 = 0x0559AC6BCD61EF54L) , (l_170[1][2][0] = ((l_168 , l_169[0]) , (void*)0)));
                }
                if ((l_172 , (l_173 &= 0L)))
                { /* block id: 113 */
                    int32_t l_174[2][3][5] = {{{0x084F1EB2L,(-10L),0x084F1EB2L,0x084F1EB2L,(-10L)},{0x084F1EB2L,(-10L),0x084F1EB2L,0x084F1EB2L,(-10L)},{0x084F1EB2L,(-10L),0x084F1EB2L,0x084F1EB2L,(-10L)}},{{0x084F1EB2L,(-10L),0x084F1EB2L,0x084F1EB2L,(-10L)},{0x084F1EB2L,(-10L),0x084F1EB2L,0x084F1EB2L,(-10L)},{0x084F1EB2L,(-10L),0x084F1EB2L,0x084F1EB2L,(-10L)}}};
                    int i, j, k;
                    for (l_174[0][0][2] = 2; (l_174[0][0][2] >= 0); l_174[0][0][2] -= 1)
                    { /* block id: 116 */
                        int i;
                        l_135[2][2][5] &= 0L;
                        l_93[l_130] ^= l_133[(l_130 + 1)];
                    }
                }
                else
                { /* block id: 120 */
                    int32_t l_175 = (-1L);
                    uint64_t l_196[6][1];
                    int i, j;
                    for (i = 0; i < 6; i++)
                    {
                        for (j = 0; j < 1; j++)
                            l_196[i][j] = 18446744073709551615UL;
                    }
                    for (l_175 = (-24); (l_175 >= 16); ++l_175)
                    { /* block id: 123 */
                        int64_t l_178 = 0x4A109FDD9FC757FEL;
                        union U0 l_180 = {0x73432FECL};/* VOLATILE GLOBAL l_180 */
                        union U0 *l_179 = &l_180;
                        union U0 *l_181 = &l_180;
                        union U0 *l_182[3][5] = {{(void*)0,(void*)0,&l_180,&l_180,&l_180},{(void*)0,(void*)0,&l_180,&l_180,&l_180},{(void*)0,(void*)0,&l_180,&l_180,&l_180}};
                        int32_t l_183 = (-6L);
                        uint8_t l_184[6] = {0x97L,0x97L,0x97L,0x97L,0x97L,0x97L};
                        int32_t l_185 = 0x5F4C982EL;
                        int i, j;
                        l_135[2][2][6] = l_178;
                        l_93[l_130] |= (FAKE_DIVERGE(p_965->global_1_offset, get_global_id(1), 10) , 0x395A3B43L);
                        l_182[0][1] = (l_181 = l_179);
                        l_135[0][2][4] ^= (l_183 , (l_184[2] , l_185));
                    }
                    for (l_175 = 0; (l_175 >= 21); l_175 = safe_add_func_uint64_t_u_u(l_175, 4))
                    { /* block id: 132 */
                        int32_t l_188 = 0x5383916AL;
                        int8_t l_189 = 0x50L;
                        int16_t l_190 = (-10L);
                        uint16_t l_191 = 3UL;
                        int32_t l_194 = 0x724154FCL;
                        uint8_t l_195 = 0xACL;
                        --l_191;
                        l_135[1][4][1] &= l_194;
                        l_135[0][2][4] |= (l_172 = l_195);
                    }
                    l_135[0][2][4] &= (l_175 = l_196[2][0]);
                }
                l_198 = (l_197 = l_197);
            }
            l_199 &= 0x7E4DA927L;
            unsigned int result = 0;
            result += l_130;
            result += l_199;
            atomic_add(&p_965->l_special_values[18], result);
        }
        else
        { /* block id: 145 */
            (1 + 1);
        }
    }
    else
    { /* block id: 148 */
        return p_14;
    }
    (*l_68) |= (!(*p_14));
    p_965->g_201 = &l_93[1];
    return p_14;
}


/* ------------------------------------------ */
/* 
 * reads : p_965->g_25
 * writes: p_965->g_25
 */
int16_t  func_16(uint8_t * p_17, struct S3 * p_965)
{ /* block id: 14 */
    int32_t *l_37 = (void*)0;
    int32_t *l_38 = &p_965->g_25;
    for (p_965->g_25 = 0; (p_965->g_25 <= (-19)); p_965->g_25--)
    { /* block id: 17 */
        uint64_t l_33[9] = {0x57941993E3674DCCL,0x57941993E3674DCCL,0x57941993E3674DCCL,0x57941993E3674DCCL,0x57941993E3674DCCL,0x57941993E3674DCCL,0x57941993E3674DCCL,0x57941993E3674DCCL,0x57941993E3674DCCL};
        int i;
        return l_33[0];
    }
    (*l_38) |= func_34(&p_965->g_7[5][8][3], p_965);
    return (*l_38);
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint8_t * func_18(int16_t  p_19, struct S3 * p_965)
{ /* block id: 12 */
    uint8_t *l_30 = &p_965->g_7[5][8][3];
    return l_30;
}


/* ------------------------------------------ */
/* 
 * reads : p_965->g_27 p_965->g_25 p_965->g_7
 * writes: p_965->g_27 p_965->g_25
 */
int16_t  func_20(int32_t  p_21, uint16_t  p_22, struct S3 * p_965)
{ /* block id: 7 */
    int32_t *l_24[1][6] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
    int i, j;
    p_965->g_27++;
    p_21 ^= 1L;
    p_965->g_25 |= p_965->g_27;
    return p_965->g_7[5][2][3];
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t  func_34(uint8_t * p_35, struct S3 * p_965)
{ /* block id: 20 */
    int16_t l_36 = 1L;
    return l_36;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint8_t * func_58(uint32_t  p_59, struct S3 * p_965)
{ /* block id: 44 */
    int32_t *l_94 = &p_965->g_25;
    int32_t *l_95 = &p_965->g_25;
    int32_t *l_96 = &p_965->g_25;
    int32_t *l_97 = &p_965->g_25;
    int32_t *l_98 = &p_965->g_25;
    int32_t *l_99 = &p_965->g_25;
    int32_t *l_100 = &p_965->g_25;
    int32_t *l_101 = &p_965->g_25;
    int32_t l_102 = (-3L);
    int32_t l_103 = 4L;
    int32_t l_104 = (-8L);
    int32_t *l_105 = &l_104;
    int32_t *l_106 = &l_104;
    int32_t *l_107 = (void*)0;
    int32_t *l_108[3];
    uint32_t l_109 = 4294967289UL;
    uint8_t *l_112 = &p_965->g_7[5][8][3];
    int i;
    for (i = 0; i < 3; i++)
        l_108[i] = &l_103;
    l_109++;
    return l_112;
}


/* ------------------------------------------ */
/* 
 * reads : p_965->g_25
 * writes: p_965->g_25
 */
uint8_t * func_62(uint32_t  p_63, int64_t  p_64, uint8_t * p_65, uint32_t  p_66, int32_t * p_67, struct S3 * p_965)
{ /* block id: 26 */
    int32_t *l_72 = &p_965->g_25;
    uint8_t *l_86[4];
    uint8_t **l_85 = &l_86[0];
    int i;
    for (i = 0; i < 4; i++)
        l_86[i] = &p_965->g_27;
    for (p_965->g_25 = 0; (p_965->g_25 < (-6)); p_965->g_25 = safe_sub_func_uint8_t_u_u(p_965->g_25, 9))
    { /* block id: 29 */
        return &p_965->g_7[5][8][3];
    }
    l_72 = p_67;
    for (p_64 = 0; (p_64 >= 12); ++p_64)
    { /* block id: 35 */
        int8_t l_75 = 0L;
        int32_t **l_84 = &l_72;
        uint8_t *l_87 = &p_965->g_7[0][7][0];
        (*p_67) = (l_75 , ((safe_mod_func_int32_t_s_s((func_78(l_84, (**l_84), l_84, l_85, l_87, p_965) , (((safe_mul_func_uint8_t_u_u((l_87 == ((*l_72) , &p_965->g_27)), p_63)) > 0x01EEL) != (**l_84))), 0x251B451AL)) < (**l_84)));
        (*l_72) = (FAKE_DIVERGE(p_965->local_0_offset, get_local_id(0), 10) , 0x2BB53033L);
    }
    return &p_965->g_7[1][8][0];
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint16_t  func_78(int32_t ** p_79, int64_t  p_80, int32_t ** p_81, uint8_t ** p_82, uint8_t * p_83, struct S3 * p_965)
{ /* block id: 36 */
    return p_80;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[37];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 37; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[37];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 37; i++)
            l_special_values[i] = 0;
    struct S3 c_966;
    struct S3* p_965 = &c_966;
    struct S3 c_967 = {
        1UL, // p_965->g_5
        {{{0x5DL,0x65L,255UL,0xD2L},{0x5DL,0x65L,255UL,0xD2L},{0x5DL,0x65L,255UL,0xD2L},{0x5DL,0x65L,255UL,0xD2L},{0x5DL,0x65L,255UL,0xD2L},{0x5DL,0x65L,255UL,0xD2L},{0x5DL,0x65L,255UL,0xD2L},{0x5DL,0x65L,255UL,0xD2L},{0x5DL,0x65L,255UL,0xD2L}},{{0x5DL,0x65L,255UL,0xD2L},{0x5DL,0x65L,255UL,0xD2L},{0x5DL,0x65L,255UL,0xD2L},{0x5DL,0x65L,255UL,0xD2L},{0x5DL,0x65L,255UL,0xD2L},{0x5DL,0x65L,255UL,0xD2L},{0x5DL,0x65L,255UL,0xD2L},{0x5DL,0x65L,255UL,0xD2L},{0x5DL,0x65L,255UL,0xD2L}},{{0x5DL,0x65L,255UL,0xD2L},{0x5DL,0x65L,255UL,0xD2L},{0x5DL,0x65L,255UL,0xD2L},{0x5DL,0x65L,255UL,0xD2L},{0x5DL,0x65L,255UL,0xD2L},{0x5DL,0x65L,255UL,0xD2L},{0x5DL,0x65L,255UL,0xD2L},{0x5DL,0x65L,255UL,0xD2L},{0x5DL,0x65L,255UL,0xD2L}},{{0x5DL,0x65L,255UL,0xD2L},{0x5DL,0x65L,255UL,0xD2L},{0x5DL,0x65L,255UL,0xD2L},{0x5DL,0x65L,255UL,0xD2L},{0x5DL,0x65L,255UL,0xD2L},{0x5DL,0x65L,255UL,0xD2L},{0x5DL,0x65L,255UL,0xD2L},{0x5DL,0x65L,255UL,0xD2L},{0x5DL,0x65L,255UL,0xD2L}},{{0x5DL,0x65L,255UL,0xD2L},{0x5DL,0x65L,255UL,0xD2L},{0x5DL,0x65L,255UL,0xD2L},{0x5DL,0x65L,255UL,0xD2L},{0x5DL,0x65L,255UL,0xD2L},{0x5DL,0x65L,255UL,0xD2L},{0x5DL,0x65L,255UL,0xD2L},{0x5DL,0x65L,255UL,0xD2L},{0x5DL,0x65L,255UL,0xD2L}},{{0x5DL,0x65L,255UL,0xD2L},{0x5DL,0x65L,255UL,0xD2L},{0x5DL,0x65L,255UL,0xD2L},{0x5DL,0x65L,255UL,0xD2L},{0x5DL,0x65L,255UL,0xD2L},{0x5DL,0x65L,255UL,0xD2L},{0x5DL,0x65L,255UL,0xD2L},{0x5DL,0x65L,255UL,0xD2L},{0x5DL,0x65L,255UL,0xD2L}}}, // p_965->g_7
        (-6L), // p_965->g_25
        0L, // p_965->g_26
        0xE2L, // p_965->g_27
        {0x22468F5BL}, // p_965->g_43
        {{{&p_965->g_27,(void*)0,(void*)0,&p_965->g_7[5][8][3],&p_965->g_7[4][1][2],&p_965->g_27,&p_965->g_7[5][8][3],(void*)0},{&p_965->g_27,(void*)0,(void*)0,&p_965->g_7[5][8][3],&p_965->g_7[4][1][2],&p_965->g_27,&p_965->g_7[5][8][3],(void*)0},{&p_965->g_27,(void*)0,(void*)0,&p_965->g_7[5][8][3],&p_965->g_7[4][1][2],&p_965->g_27,&p_965->g_7[5][8][3],(void*)0},{&p_965->g_27,(void*)0,(void*)0,&p_965->g_7[5][8][3],&p_965->g_7[4][1][2],&p_965->g_27,&p_965->g_7[5][8][3],(void*)0},{&p_965->g_27,(void*)0,(void*)0,&p_965->g_7[5][8][3],&p_965->g_7[4][1][2],&p_965->g_27,&p_965->g_7[5][8][3],(void*)0}},{{&p_965->g_27,(void*)0,(void*)0,&p_965->g_7[5][8][3],&p_965->g_7[4][1][2],&p_965->g_27,&p_965->g_7[5][8][3],(void*)0},{&p_965->g_27,(void*)0,(void*)0,&p_965->g_7[5][8][3],&p_965->g_7[4][1][2],&p_965->g_27,&p_965->g_7[5][8][3],(void*)0},{&p_965->g_27,(void*)0,(void*)0,&p_965->g_7[5][8][3],&p_965->g_7[4][1][2],&p_965->g_27,&p_965->g_7[5][8][3],(void*)0},{&p_965->g_27,(void*)0,(void*)0,&p_965->g_7[5][8][3],&p_965->g_7[4][1][2],&p_965->g_27,&p_965->g_7[5][8][3],(void*)0},{&p_965->g_27,(void*)0,(void*)0,&p_965->g_7[5][8][3],&p_965->g_7[4][1][2],&p_965->g_27,&p_965->g_7[5][8][3],(void*)0}},{{&p_965->g_27,(void*)0,(void*)0,&p_965->g_7[5][8][3],&p_965->g_7[4][1][2],&p_965->g_27,&p_965->g_7[5][8][3],(void*)0},{&p_965->g_27,(void*)0,(void*)0,&p_965->g_7[5][8][3],&p_965->g_7[4][1][2],&p_965->g_27,&p_965->g_7[5][8][3],(void*)0},{&p_965->g_27,(void*)0,(void*)0,&p_965->g_7[5][8][3],&p_965->g_7[4][1][2],&p_965->g_27,&p_965->g_7[5][8][3],(void*)0},{&p_965->g_27,(void*)0,(void*)0,&p_965->g_7[5][8][3],&p_965->g_7[4][1][2],&p_965->g_27,&p_965->g_7[5][8][3],(void*)0},{&p_965->g_27,(void*)0,(void*)0,&p_965->g_7[5][8][3],&p_965->g_7[4][1][2],&p_965->g_27,&p_965->g_7[5][8][3],(void*)0}}}, // p_965->g_57
        (void*)0, // p_965->g_71
        &p_965->g_7[4][7][2], // p_965->g_90
        {{0x2EBA3859L,0x2EBA3859L,0x2EBA3859L,0x2EBA3859L},{0x2EBA3859L,0x2EBA3859L,0x2EBA3859L,0x2EBA3859L},{0x2EBA3859L,0x2EBA3859L,0x2EBA3859L,0x2EBA3859L},{0x2EBA3859L,0x2EBA3859L,0x2EBA3859L,0x2EBA3859L},{0x2EBA3859L,0x2EBA3859L,0x2EBA3859L,0x2EBA3859L},{0x2EBA3859L,0x2EBA3859L,0x2EBA3859L,0x2EBA3859L},{0x2EBA3859L,0x2EBA3859L,0x2EBA3859L,0x2EBA3859L},{0x2EBA3859L,0x2EBA3859L,0x2EBA3859L,0x2EBA3859L}}, // p_965->g_92
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_965->g_113
        0x5B13CF297919FD84L, // p_965->g_115
        0x46D30B3EL, // p_965->g_116
        {-1L}, // p_965->g_120
        &p_965->g_116, // p_965->g_201
        (void*)0, // p_965->g_204
        0UL, // p_965->g_253
        0x18DBL, // p_965->g_258
        {(-4L),(-4L)}, // p_965->g_263
        {{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}}, // p_965->g_278
        1L, // p_965->g_297
        0x39AC4197L, // p_965->g_317
        &p_965->g_201, // p_965->g_319
        0x1B56L, // p_965->g_350
        0x1A8EL, // p_965->g_356
        0x9E86540BL, // p_965->g_373
        (void*)0, // p_965->g_380
        &p_965->g_380, // p_965->g_379
        3L, // p_965->g_385
        {{{0x269F62E9L}},{{0x269F62E9L}},{{0x269F62E9L}}}, // p_965->g_403
        {{18446744073709551615UL,0x8894D6FB67A11B7BL,0x34CA72E6DC1A55DFL,0x8894D6FB67A11B7BL},{18446744073709551615UL,0x8894D6FB67A11B7BL,0x34CA72E6DC1A55DFL,0x8894D6FB67A11B7BL},{18446744073709551615UL,0x8894D6FB67A11B7BL,0x34CA72E6DC1A55DFL,0x8894D6FB67A11B7BL},{18446744073709551615UL,0x8894D6FB67A11B7BL,0x34CA72E6DC1A55DFL,0x8894D6FB67A11B7BL},{18446744073709551615UL,0x8894D6FB67A11B7BL,0x34CA72E6DC1A55DFL,0x8894D6FB67A11B7BL},{18446744073709551615UL,0x8894D6FB67A11B7BL,0x34CA72E6DC1A55DFL,0x8894D6FB67A11B7BL},{18446744073709551615UL,0x8894D6FB67A11B7BL,0x34CA72E6DC1A55DFL,0x8894D6FB67A11B7BL}}, // p_965->g_447
        &p_965->g_201, // p_965->g_496
        &p_965->g_201, // p_965->g_497
        {1L}, // p_965->g_517
        0x0419544F442A5BF1L, // p_965->g_520
        &p_965->g_92[3][2], // p_965->g_543
        0x7C8DBF9AL, // p_965->g_544
        {0x67524BDFL}, // p_965->g_548
        {-1L}, // p_965->g_550
        &p_965->g_550, // p_965->g_552
        (void*)0, // p_965->g_611
        {&p_965->g_201,&p_965->g_201,&p_965->g_201,&p_965->g_201,&p_965->g_201,&p_965->g_201,&p_965->g_201}, // p_965->g_612
        {0x72A1ACE5FA4010B8L}, // p_965->g_628
        {0x4C7AADBEL}, // p_965->g_630
        &p_965->g_630, // p_965->g_632
        &p_965->g_632, // p_965->g_631
        0L, // p_965->g_712
        &p_965->g_520, // p_965->g_740
        5UL, // p_965->g_744
        (void*)0, // p_965->g_745
        &p_965->g_632, // p_965->g_764
        &p_965->g_764, // p_965->g_763
        {0x3ACCC940L}, // p_965->g_787
        (void*)0, // p_965->g_793
        &p_965->g_201, // p_965->g_794
        &p_965->g_201, // p_965->g_817
        &p_965->g_817, // p_965->g_816
        (-4L), // p_965->g_857
        {{{{-8L},{0x58F2748BFC8358D5L},{-1L},{0x2E7BE77948E1FD13L},{0x6B8721433354E299L}},{{-8L},{0x58F2748BFC8358D5L},{-1L},{0x2E7BE77948E1FD13L},{0x6B8721433354E299L}},{{-8L},{0x58F2748BFC8358D5L},{-1L},{0x2E7BE77948E1FD13L},{0x6B8721433354E299L}},{{-8L},{0x58F2748BFC8358D5L},{-1L},{0x2E7BE77948E1FD13L},{0x6B8721433354E299L}},{{-8L},{0x58F2748BFC8358D5L},{-1L},{0x2E7BE77948E1FD13L},{0x6B8721433354E299L}},{{-8L},{0x58F2748BFC8358D5L},{-1L},{0x2E7BE77948E1FD13L},{0x6B8721433354E299L}},{{-8L},{0x58F2748BFC8358D5L},{-1L},{0x2E7BE77948E1FD13L},{0x6B8721433354E299L}},{{-8L},{0x58F2748BFC8358D5L},{-1L},{0x2E7BE77948E1FD13L},{0x6B8721433354E299L}},{{-8L},{0x58F2748BFC8358D5L},{-1L},{0x2E7BE77948E1FD13L},{0x6B8721433354E299L}}},{{{-8L},{0x58F2748BFC8358D5L},{-1L},{0x2E7BE77948E1FD13L},{0x6B8721433354E299L}},{{-8L},{0x58F2748BFC8358D5L},{-1L},{0x2E7BE77948E1FD13L},{0x6B8721433354E299L}},{{-8L},{0x58F2748BFC8358D5L},{-1L},{0x2E7BE77948E1FD13L},{0x6B8721433354E299L}},{{-8L},{0x58F2748BFC8358D5L},{-1L},{0x2E7BE77948E1FD13L},{0x6B8721433354E299L}},{{-8L},{0x58F2748BFC8358D5L},{-1L},{0x2E7BE77948E1FD13L},{0x6B8721433354E299L}},{{-8L},{0x58F2748BFC8358D5L},{-1L},{0x2E7BE77948E1FD13L},{0x6B8721433354E299L}},{{-8L},{0x58F2748BFC8358D5L},{-1L},{0x2E7BE77948E1FD13L},{0x6B8721433354E299L}},{{-8L},{0x58F2748BFC8358D5L},{-1L},{0x2E7BE77948E1FD13L},{0x6B8721433354E299L}},{{-8L},{0x58F2748BFC8358D5L},{-1L},{0x2E7BE77948E1FD13L},{0x6B8721433354E299L}}},{{{-8L},{0x58F2748BFC8358D5L},{-1L},{0x2E7BE77948E1FD13L},{0x6B8721433354E299L}},{{-8L},{0x58F2748BFC8358D5L},{-1L},{0x2E7BE77948E1FD13L},{0x6B8721433354E299L}},{{-8L},{0x58F2748BFC8358D5L},{-1L},{0x2E7BE77948E1FD13L},{0x6B8721433354E299L}},{{-8L},{0x58F2748BFC8358D5L},{-1L},{0x2E7BE77948E1FD13L},{0x6B8721433354E299L}},{{-8L},{0x58F2748BFC8358D5L},{-1L},{0x2E7BE77948E1FD13L},{0x6B8721433354E299L}},{{-8L},{0x58F2748BFC8358D5L},{-1L},{0x2E7BE77948E1FD13L},{0x6B8721433354E299L}},{{-8L},{0x58F2748BFC8358D5L},{-1L},{0x2E7BE77948E1FD13L},{0x6B8721433354E299L}},{{-8L},{0x58F2748BFC8358D5L},{-1L},{0x2E7BE77948E1FD13L},{0x6B8721433354E299L}},{{-8L},{0x58F2748BFC8358D5L},{-1L},{0x2E7BE77948E1FD13L},{0x6B8721433354E299L}}},{{{-8L},{0x58F2748BFC8358D5L},{-1L},{0x2E7BE77948E1FD13L},{0x6B8721433354E299L}},{{-8L},{0x58F2748BFC8358D5L},{-1L},{0x2E7BE77948E1FD13L},{0x6B8721433354E299L}},{{-8L},{0x58F2748BFC8358D5L},{-1L},{0x2E7BE77948E1FD13L},{0x6B8721433354E299L}},{{-8L},{0x58F2748BFC8358D5L},{-1L},{0x2E7BE77948E1FD13L},{0x6B8721433354E299L}},{{-8L},{0x58F2748BFC8358D5L},{-1L},{0x2E7BE77948E1FD13L},{0x6B8721433354E299L}},{{-8L},{0x58F2748BFC8358D5L},{-1L},{0x2E7BE77948E1FD13L},{0x6B8721433354E299L}},{{-8L},{0x58F2748BFC8358D5L},{-1L},{0x2E7BE77948E1FD13L},{0x6B8721433354E299L}},{{-8L},{0x58F2748BFC8358D5L},{-1L},{0x2E7BE77948E1FD13L},{0x6B8721433354E299L}},{{-8L},{0x58F2748BFC8358D5L},{-1L},{0x2E7BE77948E1FD13L},{0x6B8721433354E299L}}},{{{-8L},{0x58F2748BFC8358D5L},{-1L},{0x2E7BE77948E1FD13L},{0x6B8721433354E299L}},{{-8L},{0x58F2748BFC8358D5L},{-1L},{0x2E7BE77948E1FD13L},{0x6B8721433354E299L}},{{-8L},{0x58F2748BFC8358D5L},{-1L},{0x2E7BE77948E1FD13L},{0x6B8721433354E299L}},{{-8L},{0x58F2748BFC8358D5L},{-1L},{0x2E7BE77948E1FD13L},{0x6B8721433354E299L}},{{-8L},{0x58F2748BFC8358D5L},{-1L},{0x2E7BE77948E1FD13L},{0x6B8721433354E299L}},{{-8L},{0x58F2748BFC8358D5L},{-1L},{0x2E7BE77948E1FD13L},{0x6B8721433354E299L}},{{-8L},{0x58F2748BFC8358D5L},{-1L},{0x2E7BE77948E1FD13L},{0x6B8721433354E299L}},{{-8L},{0x58F2748BFC8358D5L},{-1L},{0x2E7BE77948E1FD13L},{0x6B8721433354E299L}},{{-8L},{0x58F2748BFC8358D5L},{-1L},{0x2E7BE77948E1FD13L},{0x6B8721433354E299L}}}}, // p_965->g_885
        {&p_965->g_517,&p_965->g_517,&p_965->g_517,&p_965->g_517,&p_965->g_517,&p_965->g_517,&p_965->g_517,&p_965->g_517,&p_965->g_517,&p_965->g_517}, // p_965->g_936
        &p_965->g_936[7], // p_965->g_935
        sequence_input[get_global_id(0)], // p_965->global_0_offset
        sequence_input[get_global_id(1)], // p_965->global_1_offset
        sequence_input[get_global_id(2)], // p_965->global_2_offset
        sequence_input[get_local_id(0)], // p_965->local_0_offset
        sequence_input[get_local_id(1)], // p_965->local_1_offset
        sequence_input[get_local_id(2)], // p_965->local_2_offset
        sequence_input[get_group_id(0)], // p_965->group_0_offset
        sequence_input[get_group_id(1)], // p_965->group_1_offset
        sequence_input[get_group_id(2)], // p_965->group_2_offset
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
    };
    c_966 = c_967;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_965);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_965->g_5, "p_965->g_5", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_965->g_7[i][j][k], "p_965->g_7[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_965->g_25, "p_965->g_25", print_hash_value);
    transparent_crc(p_965->g_26, "p_965->g_26", print_hash_value);
    transparent_crc(p_965->g_27, "p_965->g_27", print_hash_value);
    transparent_crc(p_965->g_43.f0, "p_965->g_43.f0", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_965->g_92[i][j], "p_965->g_92[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_965->g_115, "p_965->g_115", print_hash_value);
    transparent_crc(p_965->g_116, "p_965->g_116", print_hash_value);
    transparent_crc(p_965->g_120.f0, "p_965->g_120.f0", print_hash_value);
    transparent_crc(p_965->g_253, "p_965->g_253", print_hash_value);
    transparent_crc(p_965->g_258, "p_965->g_258", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_965->g_263[i], "p_965->g_263[i]", print_hash_value);

    }
    transparent_crc(p_965->g_297, "p_965->g_297", print_hash_value);
    transparent_crc(p_965->g_317, "p_965->g_317", print_hash_value);
    transparent_crc(p_965->g_350, "p_965->g_350", print_hash_value);
    transparent_crc(p_965->g_356, "p_965->g_356", print_hash_value);
    transparent_crc(p_965->g_373, "p_965->g_373", print_hash_value);
    transparent_crc(p_965->g_385, "p_965->g_385", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 1; j++)
        {
            transparent_crc(p_965->g_403[i][j].f0, "p_965->g_403[i][j].f0", print_hash_value);

        }
    }
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_965->g_447[i][j], "p_965->g_447[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_965->g_517.f0, "p_965->g_517.f0", print_hash_value);
    transparent_crc(p_965->g_520, "p_965->g_520", print_hash_value);
    transparent_crc(p_965->g_544, "p_965->g_544", print_hash_value);
    transparent_crc(p_965->g_548.f0, "p_965->g_548.f0", print_hash_value);
    transparent_crc(p_965->g_550.f0, "p_965->g_550.f0", print_hash_value);
    transparent_crc(p_965->g_712, "p_965->g_712", print_hash_value);
    transparent_crc(p_965->g_744, "p_965->g_744", print_hash_value);
    transparent_crc(p_965->g_857, "p_965->g_857", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_965->g_885[i][j][k].f0, "p_965->g_885[i][j][k].f0", print_hash_value);

            }
        }
    }
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 37; i++)
            transparent_crc(p_965->l_special_values[i], "p_965->l_special_values[i]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
