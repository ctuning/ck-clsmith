// ---fake_divergence -g 93,11,9 -l 31,1,1
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


// Seed: 36

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    volatile int32_t g_2;
    volatile int32_t g_3;
    int32_t g_4;
    int32_t g_9;
    volatile uint8_t g_14;
    uint32_t g_23;
    int32_t * volatile *g_30;
    int32_t g_36;
    volatile uint64_t g_49;
    uint16_t g_115;
    int32_t *g_122[7];
    int8_t g_132;
    int16_t g_145;
    uint32_t **g_147;
    uint32_t *** volatile g_146;
    uint64_t g_167;
    uint16_t *g_179;
    uint16_t **g_178;
    uint64_t g_249;
    uint8_t g_258;
    int8_t * volatile g_309[6][7][6];
    volatile uint32_t g_319;
    int64_t g_341;
    uint32_t g_351;
    int8_t g_400;
    uint16_t ***g_439;
    uint64_t g_451[10][5][5];
    int32_t g_453;
    int32_t *g_485;
    int32_t **g_484[10];
    uint64_t g_523;
    uint16_t g_551;
    int64_t g_570;
    int32_t g_576;
    int32_t g_578;
    int32_t * volatile g_646;
    int16_t *g_716;
    uint32_t g_737[4][9][7];
    uint32_t g_740;
    volatile int32_t *** volatile g_752;
    volatile int32_t *** volatile * volatile g_751;
    volatile int32_t g_805;
    int32_t * volatile g_808;
    int32_t * volatile *g_807;
    int64_t g_830;
    int64_t g_851;
    uint16_t ****g_873[5][9][5];
    uint16_t *****g_872;
    volatile uint32_t ** volatile g_878;
    int32_t *g_888;
    int32_t **g_887;
    int32_t * volatile g_962[4];
    int32_t * volatile g_963[4];
    int32_t * volatile g_964;
    uint16_t ******g_1074;
    uint32_t g_1163;
    uint32_t g_1293;
    volatile int32_t * volatile ****g_1323;
    volatile int32_t * volatile ***** volatile g_1322;
    volatile uint8_t *g_1379;
    volatile uint8_t **g_1378[10][3];
    int64_t g_1415;
    int32_t g_1523;
    int64_t g_1613;
    int8_t *g_1715;
    int8_t **g_1714;
    uint16_t *g_1744;
    int32_t ** volatile * volatile **g_1770;
    volatile int32_t g_1781;
    volatile uint8_t g_1832[7];
    int8_t g_1914;
    int64_t g_1915;
    uint64_t g_1967;
    volatile uint64_t g_1982;
    uint64_t *g_2054[7];
    uint64_t **g_2053[5][8][6];
    uint64_t *** volatile g_2052;
    int64_t *g_2073[4][8];
    int64_t **g_2099;
    int64_t *** volatile g_2098[8][8];
    uint8_t g_2105;
    int32_t *g_2204[3][7][6];
    int32_t **g_2203;
    int32_t *** volatile g_2202;
    uint32_t g_2283;
    uint32_t *g_2282;
    uint32_t g_2286[8];
    int16_t g_2312;
    int32_t g_2313;
    volatile int16_t g_2354;
    uint16_t g_2436;
    int64_t g_2492;
    uint32_t *g_2505;
    uint32_t **g_2504[4];
    int32_t ** volatile g_2513;
    uint32_t * volatile * volatile g_2514;
    volatile uint32_t g_2609;
    int32_t ** volatile g_2634;
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
int64_t  func_1(struct S0 * p_2641);
int32_t * func_17(int16_t  p_18, int32_t * p_19, uint32_t  p_20, int32_t ** p_21, struct S0 * p_2641);
uint32_t  func_31(uint8_t  p_32, struct S0 * p_2641);
uint32_t  func_58(int32_t  p_59, int32_t * p_60, uint32_t * p_61, struct S0 * p_2641);
uint32_t * func_62(uint64_t  p_63, int64_t  p_64, int32_t * p_65, uint32_t * p_66, int64_t  p_67, struct S0 * p_2641);
uint64_t  func_72(int8_t  p_73, int16_t  p_74, struct S0 * p_2641);
uint32_t * func_75(uint32_t * p_76, int32_t ** p_77, struct S0 * p_2641);
uint32_t * func_78(int64_t  p_79, uint64_t  p_80, int32_t ** p_81, uint64_t  p_82, struct S0 * p_2641);
int16_t  func_93(uint32_t * p_94, int32_t  p_95, int32_t ** p_96, int32_t * p_97, struct S0 * p_2641);
uint16_t  func_98(int32_t  p_99, uint32_t  p_100, uint32_t * p_101, uint32_t  p_102, uint32_t  p_103, struct S0 * p_2641);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_2641->g_4 p_2641->g_3 p_2641->g_14 p_2641->g_9 p_2641->g_23 p_2641->g_30 p_2641->g_49 p_2641->g_716 p_2641->g_145 p_2641->g_178 p_2641->g_179 p_2641->g_115 p_2641->g_2312 p_2641->g_2282 p_2641->g_2283 p_2641->g_36 p_2641->g_1163 p_2641->g_964 p_2641->g_887 p_2641->g_888 p_2641->g_2 p_2641->g_646 p_2641->g_1714 p_2641->g_1715 p_2641->g_1915 p_2641->g_1832 p_2641->g_2436 p_2641->g_132 p_2641->g_258 p_2641->g_737 p_2641->g_451 p_2641->g_1293 p_2641->g_851 p_2641->g_2105 p_2641->g_2286 p_2641->g_523 p_2641->g_2492 p_2641->g_2504 p_2641->g_249 p_2641->g_551 p_2641->g_2513 p_2641->g_2514 p_2641->g_2052 p_2641->g_2053 p_2641->g_341 p_2641->g_578 p_2641->g_485 p_2641->g_453 p_2641->g_2354 p_2641->g_400 p_2641->g_2609 p_2641->g_2634
 * writes: p_2641->g_4 p_2641->g_14 p_2641->g_9 p_2641->g_23 p_2641->g_49 p_2641->g_36 p_2641->g_830 p_2641->g_115 p_2641->g_145 p_2641->g_167 p_2641->g_1163 p_2641->g_888 p_2641->g_1715 p_2641->g_258 p_2641->g_551 p_2641->g_2436 p_2641->g_132 p_2641->g_2283 p_2641->g_1915 p_2641->g_2105 p_2641->g_851 p_2641->g_2492 p_2641->g_2504 p_2641->g_122 p_2641->g_351 p_2641->g_2312 p_2641->g_453 p_2641->g_2609
 */
int64_t  func_1(struct S0 * p_2641)
{ /* block id: 4 */
    int32_t *l_8 = &p_2641->g_9;
    int32_t *l_11 = &p_2641->g_4;
    int32_t *l_12[1];
    int32_t l_13 = 0x7A831EB2L;
    int32_t ***l_2322[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    uint8_t *l_2391 = &p_2641->g_258;
    uint8_t **l_2390[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int32_t *l_2451[7] = {&p_2641->g_4,&p_2641->g_4,&p_2641->g_4,&p_2641->g_4,&p_2641->g_4,&p_2641->g_4,&p_2641->g_4};
    int32_t l_2457[2][4][8] = {{{1L,1L,0x5C59B987L,0L,0x3E0F8C88L,1L,1L,0x666711F3L},{1L,1L,0x5C59B987L,0L,0x3E0F8C88L,1L,1L,0x666711F3L},{1L,1L,0x5C59B987L,0L,0x3E0F8C88L,1L,1L,0x666711F3L},{1L,1L,0x5C59B987L,0L,0x3E0F8C88L,1L,1L,0x666711F3L}},{{1L,1L,0x5C59B987L,0L,0x3E0F8C88L,1L,1L,0x666711F3L},{1L,1L,0x5C59B987L,0L,0x3E0F8C88L,1L,1L,0x666711F3L},{1L,1L,0x5C59B987L,0L,0x3E0F8C88L,1L,1L,0x666711F3L},{1L,1L,0x5C59B987L,0L,0x3E0F8C88L,1L,1L,0x666711F3L}}};
    int16_t l_2518 = 0L;
    uint16_t l_2562 = 0xEC95L;
    int64_t l_2577 = 2L;
    int64_t **l_2580 = &p_2641->g_2073[0][5];
    int8_t l_2633 = (-10L);
    int16_t l_2637 = 0x1330L;
    uint16_t l_2638 = 0UL;
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_12[i] = &p_2641->g_9;
    for (p_2641->g_4 = (-30); (p_2641->g_4 == (-23)); p_2641->g_4 = safe_add_func_int32_t_s_s(p_2641->g_4, 7))
    { /* block id: 7 */
        int32_t *l_7 = &p_2641->g_4;
        int32_t **l_10 = &l_8;
        l_8 = l_7;
        (*l_10) = l_7;
        if (p_2641->g_3)
            continue;
    }
lbl_2615:
    p_2641->g_14++;
    for (p_2641->g_9 = 0; (p_2641->g_9 >= 0); p_2641->g_9 -= 1)
    { /* block id: 15 */
        int64_t l_2326 = 0L;
        uint32_t l_2412 = 4294967295UL;
        uint32_t *l_2456[5][8][6] = {{{(void*)0,&p_2641->g_1163,&p_2641->g_737[0][0][6],&p_2641->g_1163,(void*)0,(void*)0},{(void*)0,&p_2641->g_1163,&p_2641->g_737[0][0][6],&p_2641->g_1163,(void*)0,(void*)0},{(void*)0,&p_2641->g_1163,&p_2641->g_737[0][0][6],&p_2641->g_1163,(void*)0,(void*)0},{(void*)0,&p_2641->g_1163,&p_2641->g_737[0][0][6],&p_2641->g_1163,(void*)0,(void*)0},{(void*)0,&p_2641->g_1163,&p_2641->g_737[0][0][6],&p_2641->g_1163,(void*)0,(void*)0},{(void*)0,&p_2641->g_1163,&p_2641->g_737[0][0][6],&p_2641->g_1163,(void*)0,(void*)0},{(void*)0,&p_2641->g_1163,&p_2641->g_737[0][0][6],&p_2641->g_1163,(void*)0,(void*)0},{(void*)0,&p_2641->g_1163,&p_2641->g_737[0][0][6],&p_2641->g_1163,(void*)0,(void*)0}},{{(void*)0,&p_2641->g_1163,&p_2641->g_737[0][0][6],&p_2641->g_1163,(void*)0,(void*)0},{(void*)0,&p_2641->g_1163,&p_2641->g_737[0][0][6],&p_2641->g_1163,(void*)0,(void*)0},{(void*)0,&p_2641->g_1163,&p_2641->g_737[0][0][6],&p_2641->g_1163,(void*)0,(void*)0},{(void*)0,&p_2641->g_1163,&p_2641->g_737[0][0][6],&p_2641->g_1163,(void*)0,(void*)0},{(void*)0,&p_2641->g_1163,&p_2641->g_737[0][0][6],&p_2641->g_1163,(void*)0,(void*)0},{(void*)0,&p_2641->g_1163,&p_2641->g_737[0][0][6],&p_2641->g_1163,(void*)0,(void*)0},{(void*)0,&p_2641->g_1163,&p_2641->g_737[0][0][6],&p_2641->g_1163,(void*)0,(void*)0},{(void*)0,&p_2641->g_1163,&p_2641->g_737[0][0][6],&p_2641->g_1163,(void*)0,(void*)0}},{{(void*)0,&p_2641->g_1163,&p_2641->g_737[0][0][6],&p_2641->g_1163,(void*)0,(void*)0},{(void*)0,&p_2641->g_1163,&p_2641->g_737[0][0][6],&p_2641->g_1163,(void*)0,(void*)0},{(void*)0,&p_2641->g_1163,&p_2641->g_737[0][0][6],&p_2641->g_1163,(void*)0,(void*)0},{(void*)0,&p_2641->g_1163,&p_2641->g_737[0][0][6],&p_2641->g_1163,(void*)0,(void*)0},{(void*)0,&p_2641->g_1163,&p_2641->g_737[0][0][6],&p_2641->g_1163,(void*)0,(void*)0},{(void*)0,&p_2641->g_1163,&p_2641->g_737[0][0][6],&p_2641->g_1163,(void*)0,(void*)0},{(void*)0,&p_2641->g_1163,&p_2641->g_737[0][0][6],&p_2641->g_1163,(void*)0,(void*)0},{(void*)0,&p_2641->g_1163,&p_2641->g_737[0][0][6],&p_2641->g_1163,(void*)0,(void*)0}},{{(void*)0,&p_2641->g_1163,&p_2641->g_737[0][0][6],&p_2641->g_1163,(void*)0,(void*)0},{(void*)0,&p_2641->g_1163,&p_2641->g_737[0][0][6],&p_2641->g_1163,(void*)0,(void*)0},{(void*)0,&p_2641->g_1163,&p_2641->g_737[0][0][6],&p_2641->g_1163,(void*)0,(void*)0},{(void*)0,&p_2641->g_1163,&p_2641->g_737[0][0][6],&p_2641->g_1163,(void*)0,(void*)0},{(void*)0,&p_2641->g_1163,&p_2641->g_737[0][0][6],&p_2641->g_1163,(void*)0,(void*)0},{(void*)0,&p_2641->g_1163,&p_2641->g_737[0][0][6],&p_2641->g_1163,(void*)0,(void*)0},{(void*)0,&p_2641->g_1163,&p_2641->g_737[0][0][6],&p_2641->g_1163,(void*)0,(void*)0},{(void*)0,&p_2641->g_1163,&p_2641->g_737[0][0][6],&p_2641->g_1163,(void*)0,(void*)0}},{{(void*)0,&p_2641->g_1163,&p_2641->g_737[0][0][6],&p_2641->g_1163,(void*)0,(void*)0},{(void*)0,&p_2641->g_1163,&p_2641->g_737[0][0][6],&p_2641->g_1163,(void*)0,(void*)0},{(void*)0,&p_2641->g_1163,&p_2641->g_737[0][0][6],&p_2641->g_1163,(void*)0,(void*)0},{(void*)0,&p_2641->g_1163,&p_2641->g_737[0][0][6],&p_2641->g_1163,(void*)0,(void*)0},{(void*)0,&p_2641->g_1163,&p_2641->g_737[0][0][6],&p_2641->g_1163,(void*)0,(void*)0},{(void*)0,&p_2641->g_1163,&p_2641->g_737[0][0][6],&p_2641->g_1163,(void*)0,(void*)0},{(void*)0,&p_2641->g_1163,&p_2641->g_737[0][0][6],&p_2641->g_1163,(void*)0,(void*)0},{(void*)0,&p_2641->g_1163,&p_2641->g_737[0][0][6],&p_2641->g_1163,(void*)0,(void*)0}}};
        uint16_t l_2480 = 0x5568L;
        uint16_t **l_2496 = &p_2641->g_1744;
        int32_t l_2499[7][9][4] = {{{(-1L),(-1L),0x7B8722BAL,(-1L)},{(-1L),(-1L),0x7B8722BAL,(-1L)},{(-1L),(-1L),0x7B8722BAL,(-1L)},{(-1L),(-1L),0x7B8722BAL,(-1L)},{(-1L),(-1L),0x7B8722BAL,(-1L)},{(-1L),(-1L),0x7B8722BAL,(-1L)},{(-1L),(-1L),0x7B8722BAL,(-1L)},{(-1L),(-1L),0x7B8722BAL,(-1L)},{(-1L),(-1L),0x7B8722BAL,(-1L)}},{{(-1L),(-1L),0x7B8722BAL,(-1L)},{(-1L),(-1L),0x7B8722BAL,(-1L)},{(-1L),(-1L),0x7B8722BAL,(-1L)},{(-1L),(-1L),0x7B8722BAL,(-1L)},{(-1L),(-1L),0x7B8722BAL,(-1L)},{(-1L),(-1L),0x7B8722BAL,(-1L)},{(-1L),(-1L),0x7B8722BAL,(-1L)},{(-1L),(-1L),0x7B8722BAL,(-1L)},{(-1L),(-1L),0x7B8722BAL,(-1L)}},{{(-1L),(-1L),0x7B8722BAL,(-1L)},{(-1L),(-1L),0x7B8722BAL,(-1L)},{(-1L),(-1L),0x7B8722BAL,(-1L)},{(-1L),(-1L),0x7B8722BAL,(-1L)},{(-1L),(-1L),0x7B8722BAL,(-1L)},{(-1L),(-1L),0x7B8722BAL,(-1L)},{(-1L),(-1L),0x7B8722BAL,(-1L)},{(-1L),(-1L),0x7B8722BAL,(-1L)},{(-1L),(-1L),0x7B8722BAL,(-1L)}},{{(-1L),(-1L),0x7B8722BAL,(-1L)},{(-1L),(-1L),0x7B8722BAL,(-1L)},{(-1L),(-1L),0x7B8722BAL,(-1L)},{(-1L),(-1L),0x7B8722BAL,(-1L)},{(-1L),(-1L),0x7B8722BAL,(-1L)},{(-1L),(-1L),0x7B8722BAL,(-1L)},{(-1L),(-1L),0x7B8722BAL,(-1L)},{(-1L),(-1L),0x7B8722BAL,(-1L)},{(-1L),(-1L),0x7B8722BAL,(-1L)}},{{(-1L),(-1L),0x7B8722BAL,(-1L)},{(-1L),(-1L),0x7B8722BAL,(-1L)},{(-1L),(-1L),0x7B8722BAL,(-1L)},{(-1L),(-1L),0x7B8722BAL,(-1L)},{(-1L),(-1L),0x7B8722BAL,(-1L)},{(-1L),(-1L),0x7B8722BAL,(-1L)},{(-1L),(-1L),0x7B8722BAL,(-1L)},{(-1L),(-1L),0x7B8722BAL,(-1L)},{(-1L),(-1L),0x7B8722BAL,(-1L)}},{{(-1L),(-1L),0x7B8722BAL,(-1L)},{(-1L),(-1L),0x7B8722BAL,(-1L)},{(-1L),(-1L),0x7B8722BAL,(-1L)},{(-1L),(-1L),0x7B8722BAL,(-1L)},{(-1L),(-1L),0x7B8722BAL,(-1L)},{(-1L),(-1L),0x7B8722BAL,(-1L)},{(-1L),(-1L),0x7B8722BAL,(-1L)},{(-1L),(-1L),0x7B8722BAL,(-1L)},{(-1L),(-1L),0x7B8722BAL,(-1L)}},{{(-1L),(-1L),0x7B8722BAL,(-1L)},{(-1L),(-1L),0x7B8722BAL,(-1L)},{(-1L),(-1L),0x7B8722BAL,(-1L)},{(-1L),(-1L),0x7B8722BAL,(-1L)},{(-1L),(-1L),0x7B8722BAL,(-1L)},{(-1L),(-1L),0x7B8722BAL,(-1L)},{(-1L),(-1L),0x7B8722BAL,(-1L)},{(-1L),(-1L),0x7B8722BAL,(-1L)},{(-1L),(-1L),0x7B8722BAL,(-1L)}}};
        int32_t l_2523 = 0x3105EA8BL;
        uint32_t l_2524 = 0xE6FF5406L;
        int32_t l_2565 = (-8L);
        int64_t l_2572[10][8] = {{0x7605FA03297E084BL,0x6DCDEDACE96ACAB2L,0x6F05F0265C74CD9DL,0x6DCDEDACE96ACAB2L,0x7605FA03297E084BL,0x7605FA03297E084BL,0x6DCDEDACE96ACAB2L,0x6F05F0265C74CD9DL},{0x7605FA03297E084BL,0x6DCDEDACE96ACAB2L,0x6F05F0265C74CD9DL,0x6DCDEDACE96ACAB2L,0x7605FA03297E084BL,0x7605FA03297E084BL,0x6DCDEDACE96ACAB2L,0x6F05F0265C74CD9DL},{0x7605FA03297E084BL,0x6DCDEDACE96ACAB2L,0x6F05F0265C74CD9DL,0x6DCDEDACE96ACAB2L,0x7605FA03297E084BL,0x7605FA03297E084BL,0x6DCDEDACE96ACAB2L,0x6F05F0265C74CD9DL},{0x7605FA03297E084BL,0x6DCDEDACE96ACAB2L,0x6F05F0265C74CD9DL,0x6DCDEDACE96ACAB2L,0x7605FA03297E084BL,0x7605FA03297E084BL,0x6DCDEDACE96ACAB2L,0x6F05F0265C74CD9DL},{0x7605FA03297E084BL,0x6DCDEDACE96ACAB2L,0x6F05F0265C74CD9DL,0x6DCDEDACE96ACAB2L,0x7605FA03297E084BL,0x7605FA03297E084BL,0x6DCDEDACE96ACAB2L,0x6F05F0265C74CD9DL},{0x7605FA03297E084BL,0x6DCDEDACE96ACAB2L,0x6F05F0265C74CD9DL,0x6DCDEDACE96ACAB2L,0x7605FA03297E084BL,0x7605FA03297E084BL,0x6DCDEDACE96ACAB2L,0x6F05F0265C74CD9DL},{0x7605FA03297E084BL,0x6DCDEDACE96ACAB2L,0x6F05F0265C74CD9DL,0x6DCDEDACE96ACAB2L,0x7605FA03297E084BL,0x7605FA03297E084BL,0x6DCDEDACE96ACAB2L,0x6F05F0265C74CD9DL},{0x7605FA03297E084BL,0x6DCDEDACE96ACAB2L,0x6F05F0265C74CD9DL,0x6DCDEDACE96ACAB2L,0x7605FA03297E084BL,0x7605FA03297E084BL,0x6DCDEDACE96ACAB2L,0x6F05F0265C74CD9DL},{0x7605FA03297E084BL,0x6DCDEDACE96ACAB2L,0x6F05F0265C74CD9DL,0x6DCDEDACE96ACAB2L,0x7605FA03297E084BL,0x7605FA03297E084BL,0x6DCDEDACE96ACAB2L,0x6F05F0265C74CD9DL},{0x7605FA03297E084BL,0x6DCDEDACE96ACAB2L,0x6F05F0265C74CD9DL,0x6DCDEDACE96ACAB2L,0x7605FA03297E084BL,0x7605FA03297E084BL,0x6DCDEDACE96ACAB2L,0x6F05F0265C74CD9DL}};
        int32_t ****l_2574 = &l_2322[7];
        int8_t l_2579 = 2L;
        uint64_t l_2612[6] = {0x382FA953131A1F7BL,0x382FA953131A1F7BL,0x382FA953131A1F7BL,0x382FA953131A1F7BL,0x382FA953131A1F7BL,0x382FA953131A1F7BL};
        int i, j, k;
        for (l_13 = 0; (l_13 >= 0); l_13 -= 1)
        { /* block id: 18 */
            int32_t l_2325 = 0L;
            int32_t l_2437 = 0x0749576FL;
            uint16_t ****l_2450 = (void*)0;
            uint32_t *l_2487 = &p_2641->g_351;
            uint32_t **l_2486 = &l_2487;
            uint32_t ***l_2485[6] = {&l_2486,&l_2486,&l_2486,&l_2486,&l_2486,&l_2486};
            int i;
            l_12[p_2641->g_9] = (void*)0;
            for (p_2641->g_4 = 0; (p_2641->g_4 >= 0); p_2641->g_4 -= 1)
            { /* block id: 22 */
                uint32_t *l_22 = &p_2641->g_23;
                int32_t l_33 = 0x1D88C83BL;
                int32_t ***l_2324[8] = {&p_2641->g_2203,&p_2641->g_2203,&p_2641->g_2203,&p_2641->g_2203,&p_2641->g_2203,&p_2641->g_2203,&p_2641->g_2203,&p_2641->g_2203};
                int32_t ****l_2323 = &l_2324[0];
                int32_t l_2438 = 0x41E7D3BFL;
                int i;
                l_12[p_2641->g_4] = func_17(((++(*l_22)) , ((safe_lshift_func_uint16_t_u_u((((((safe_mul_func_int8_t_s_s(((void*)0 != p_2641->g_30), (p_2641->g_4 ^ GROUP_DIVERGE(2, 1)))) , func_31(l_33, p_2641)) >= (((safe_add_func_uint32_t_u_u(((((FAKE_DIVERGE(p_2641->global_1_offset, get_global_id(1), 10) || (0UL & (safe_lshift_func_int8_t_s_s(l_33, ((safe_lshift_func_int16_t_s_u((((l_2322[7] != ((*l_2323) = &p_2641->g_2203)) >= l_2325) , 0x72AEL), 4)) <= (*p_2641->g_716)))))) , (**p_2641->g_178)) & (*p_2641->g_716)) ^ p_2641->g_115), 0x5A97E8FBL)) ^ l_33) < l_33)) | 4294967295UL) && l_2326), 8)) > p_2641->g_2312)), &l_33, (*p_2641->g_2282), &l_8, p_2641);
                for (p_2641->g_167 = 2; (p_2641->g_167 <= 6); p_2641->g_167 += 1)
                { /* block id: 1150 */
                    int32_t l_2402 = 0L;
                    uint32_t *l_2419 = &p_2641->g_737[1][5][2];
                    int32_t l_2429 = 0x6F497AB6L;
                    for (p_2641->g_1163 = 0; (p_2641->g_1163 <= 6); p_2641->g_1163 += 1)
                    { /* block id: 1153 */
                        uint32_t l_2403 = 0x6545D270L;
                        int32_t *l_2406 = &p_2641->g_453;
                        int32_t l_2411 = 0x1C6FC6DAL;
                        uint32_t *l_2420 = &p_2641->g_737[0][3][3];
                        uint16_t *l_2434 = &p_2641->g_551;
                        uint16_t *l_2435 = &p_2641->g_2436;
                        l_33 = ((*p_2641->g_646) = (0x03L | ((l_2390[1] == &p_2641->g_1379) , (safe_sub_func_uint32_t_u_u((((safe_sub_func_uint32_t_u_u((safe_add_func_uint64_t_u_u(((safe_add_func_int64_t_s_s((l_2403 = (safe_rshift_func_int8_t_s_u(l_2402, 1))), (0xD0L || (safe_rshift_func_uint16_t_u_s((l_2406 == ((*p_2641->g_887) = (*p_2641->g_887))), (safe_lshift_func_int16_t_s_s(((-3L) == (0x26L >= 0L)), 5))))))) , 9UL), l_2411)), 1L)) > (-1L)) | p_2641->g_2), l_2412)))));
                        (*p_2641->g_646) = (safe_rshift_func_uint8_t_u_u(((safe_lshift_func_uint8_t_u_s(((*l_2391) = (l_2411 , (safe_rshift_func_int8_t_s_u((((*p_2641->g_1714) = (*p_2641->g_1714)) != (void*)0), 6)))), 3)) ^ ((l_2419 == l_2420) && ((l_2402 , (void*)0) != (void*)0))), ((((safe_add_func_uint16_t_u_u((**p_2641->g_178), (*p_2641->g_716))) | 0x6CL) , p_2641->g_1915) != p_2641->g_1832[1])));
                        l_2411 |= (safe_sub_func_uint32_t_u_u((((0x5E5FL != (safe_mod_func_int8_t_s_s((safe_mod_func_uint8_t_u_u(((((l_2429 = 254UL) == 0x31L) , 4294967295UL) , ((((!((safe_mod_func_uint16_t_u_u(l_2412, ((*l_2435) ^= (p_2641->g_3 , ((*l_2434) = ((*p_2641->g_179)++)))))) ^ p_2641->g_132)) == (p_2641->g_258 & l_2326)) ^ GROUP_DIVERGE(2, 1)) == l_2403)), l_2437)), p_2641->g_737[1][5][2]))) > 0UL) & l_2438), l_2403));
                    }
                    return l_2402;
                }
                return l_2412;
            }
            for (p_2641->g_132 = 0; (p_2641->g_132 >= 0); p_2641->g_132 -= 1)
            { /* block id: 1173 */
                uint16_t l_2448 = 0xBDE2L;
                int8_t l_2449 = 0L;
                for (p_2641->g_258 = 0; (p_2641->g_258 <= 0); p_2641->g_258 += 1)
                { /* block id: 1176 */
                    uint32_t l_2445 = 1UL;
                    int32_t l_2473 = 1L;
                    uint8_t l_2474[2];
                    uint32_t l_2477 = 4294967295UL;
                    uint32_t *l_2493 = &p_2641->g_1163;
                    int i;
                    for (i = 0; i < 2; i++)
                        l_2474[i] = 7UL;
                    for (p_2641->g_2283 = 0; (p_2641->g_2283 <= 4); p_2641->g_2283 += 1)
                    { /* block id: 1179 */
                        int i, j, k;
                        (*l_11) &= (safe_mod_func_uint32_t_u_u((p_2641->g_451[(p_2641->g_132 + 6)][(p_2641->g_9 + 4)][(p_2641->g_132 + 4)] >= ((safe_lshift_func_int8_t_s_s((safe_div_func_int8_t_s_s(l_2445, (((~p_2641->g_451[(p_2641->g_132 + 6)][(p_2641->g_9 + 4)][(p_2641->g_132 + 4)]) != (((safe_mul_func_int8_t_s_s(((5UL | (((l_2448 != l_2449) != (((*p_2641->g_716) = (*p_2641->g_716)) != ((((void*)0 != l_2450) | p_2641->g_1293) , p_2641->g_451[(p_2641->g_132 + 6)][(p_2641->g_9 + 4)][(p_2641->g_132 + 4)]))) , 3UL)) != 0L), (*p_2641->g_1715))) == (**p_2641->g_178)) & GROUP_DIVERGE(0, 1))) && 0x453A147EL))), 6)) ^ p_2641->g_451[(p_2641->g_132 + 6)][(p_2641->g_9 + 4)][(p_2641->g_132 + 4)])), l_2449));
                        l_12[p_2641->g_132] = l_2451[5];
                        if (p_2641->g_451[(p_2641->g_132 + 6)][(p_2641->g_9 + 4)][(p_2641->g_132 + 4)])
                            break;
                    }
                    (*l_11) = ((*p_2641->g_964) = ((safe_rshift_func_uint8_t_u_s((safe_mul_func_int16_t_s_s(((void*)0 != l_2456[1][7][2]), (l_2457[1][3][3] > (safe_sub_func_int32_t_s_s((*p_2641->g_646), (safe_add_func_uint64_t_u_u(((p_2641->g_2105 |= (safe_mul_func_int8_t_s_s((safe_unary_minus_func_int16_t_s((-1L))), ((((safe_sub_func_int64_t_s_s((((*p_2641->g_2282) = (safe_lshift_func_uint16_t_u_s(GROUP_DIVERGE(2, 1), (*p_2641->g_716)))) , (p_2641->g_1915 = ((l_2326 < (*l_11)) , ((safe_mod_func_uint8_t_u_u((safe_lshift_func_uint16_t_u_u(l_2448, 11)), l_2445)) <= l_2445)))), p_2641->g_851)) , (**p_2641->g_1714)) && FAKE_DIVERGE(p_2641->global_0_offset, get_global_id(0), 10)) > p_2641->g_4)))) > p_2641->g_2286[5]), 1UL))))))), 7)) , (-7L)));
                    for (p_2641->g_1163 = 0; (p_2641->g_1163 <= 0); p_2641->g_1163 += 1)
                    { /* block id: 1192 */
                        int i;
                        l_2474[1]--;
                    }
                    if ((l_2477 ^ (safe_div_func_uint16_t_u_u(FAKE_DIVERGE(p_2641->group_1_offset, get_group_id(1), 10), l_2325))))
                    { /* block id: 1195 */
                        return l_2480;
                    }
                    else
                    { /* block id: 1197 */
                        int64_t *l_2488 = &p_2641->g_851;
                        int32_t l_2489 = 0L;
                        int64_t *l_2490 = (void*)0;
                        int64_t *l_2491 = &p_2641->g_2492;
                        int32_t l_2508 = 0x3639962DL;
                        (*l_11) = (((safe_lshift_func_int8_t_s_u((safe_lshift_func_uint16_t_u_u((*p_2641->g_179), (((void*)0 != l_2485[1]) , (p_2641->g_523 | (p_2641->g_1915 | ((((l_2493 = func_78(((*l_2491) &= (l_2489 = ((*l_2488) &= 0x57428F566A4F26F2L))), l_2477, &p_2641->g_122[5], l_2473, p_2641)) != &p_2641->g_1163) & l_2448) >= 0x2DL)))))), l_2474[1])) || 0x0E400F61L) >= (-7L));
                        (*p_2641->g_964) ^= ((safe_div_func_uint16_t_u_u(((l_2496 == ((l_2489 |= 0x713436D9L) , l_2496)) | (((safe_rshift_func_uint8_t_u_s(l_2499[1][0][2], ((((((0xE8F308EB2A1A533BL == ((safe_rshift_func_int16_t_s_u((safe_lshift_func_int8_t_s_s((((p_2641->g_2504[2] = p_2641->g_2504[1]) == (void*)0) != (safe_mod_func_int64_t_s_s(l_2508, (((((((safe_sub_func_uint32_t_u_u((safe_sub_func_uint64_t_u_u((l_2474[1] && 0x56L), p_2641->g_249)), 0x0F6B4579L)) , p_2641->g_2436) && 18446744073709551611UL) || 0xBBL) != 0x5BL) & l_2448) && (*p_2641->g_716))))), l_2448)), 5)) || (*p_2641->g_716))) & 5L) == 2UL) != (**p_2641->g_1714)) < l_2477) < p_2641->g_551))) && (*p_2641->g_716)) ^ 0x1E31216EDB5D844AL)), GROUP_DIVERGE(1, 1))) > 0x5B74L);
                        (*p_2641->g_2513) = &l_2457[1][3][3];
                        if ((*p_2641->g_964))
                            continue;
                    }
                }
            }
            (*l_11) = (((void*)0 == p_2641->g_2514) && ((*l_2487) = (~l_2326)));
        }
        for (p_2641->g_2312 = 0; (p_2641->g_2312 <= 0); p_2641->g_2312 += 1)
        { /* block id: 1216 */
            int64_t l_2515[2];
            uint32_t *l_2521 = (void*)0;
            uint32_t *l_2522[1][3];
            int16_t l_2538 = 0x1EA3L;
            int32_t ***l_2559 = &p_2641->g_2203;
            int32_t l_2561 = 0L;
            int8_t l_2578 = 0x26L;
            int32_t ****l_2601 = &l_2322[0];
            uint64_t l_2635[5];
            int i, j;
            for (i = 0; i < 2; i++)
                l_2515[i] = 5L;
            for (i = 0; i < 1; i++)
            {
                for (j = 0; j < 3; j++)
                    l_2522[i][j] = &l_2412;
            }
            for (i = 0; i < 5; i++)
                l_2635[i] = 18446744073709551615UL;
            if (((((*p_2641->g_716) | (l_2515[0] && ((~(safe_mod_func_int32_t_s_s((((void*)0 != (*p_2641->g_2052)) < (!l_2518)), (safe_add_func_uint32_t_u_u((--l_2524), ((*l_11) = ((safe_lshift_func_int8_t_s_u((safe_mod_func_uint16_t_u_u((safe_div_func_int32_t_s_s(((safe_unary_minus_func_int8_t_s(((0xAEL != (!(((p_2641->g_2436 | 18446744073709551615UL) , (safe_lshift_func_uint16_t_u_s(((safe_rshift_func_uint16_t_u_u(((((!(-4L)) & p_2641->g_341) , l_2515[0]) != l_2499[0][6][1]), 0)) < 5UL), (*p_2641->g_716)))) < l_2538))) <= p_2641->g_578))) < (*p_2641->g_716)), l_2515[0])), (*p_2641->g_716))), (*l_8))) , (*p_2641->g_485)))))))) <= FAKE_DIVERGE(p_2641->local_0_offset, get_local_id(0), 10)))) , (*p_2641->g_179)) > 0x6CAAL))
            { /* block id: 1219 */
                int16_t l_2560 = (-1L);
                uint64_t *l_2563[3];
                uint32_t *l_2564 = &p_2641->g_1293;
                int32_t ****l_2573 = &l_2559;
                int64_t **l_2581 = &p_2641->g_2073[3][5];
                uint32_t l_2602 = 0x1A9166A3L;
                int32_t l_2604 = (-1L);
                int32_t l_2605[1];
                int8_t ***l_2618 = &p_2641->g_1714;
                int i;
                for (i = 0; i < 3; i++)
                    l_2563[i] = &p_2641->g_167;
                for (i = 0; i < 1; i++)
                    l_2605[i] = 0L;
                l_2565 = ((((safe_add_func_int16_t_s_s(((2UL != (((safe_div_func_int16_t_s_s(((l_2523 = ((safe_rshift_func_int16_t_s_s((safe_add_func_int32_t_s_s((safe_sub_func_int8_t_s_s((0x7C85E50BL || (safe_div_func_uint16_t_u_u((safe_mul_func_uint8_t_u_u((((**p_2641->g_887) |= (-8L)) , ((safe_sub_func_int32_t_s_s(((0xB9E8BBF6L <= (l_2538 , (l_2562 |= (l_2561 = (((safe_mul_func_uint8_t_u_u(((*l_2391) ^= (*l_11)), ((safe_lshift_func_int16_t_s_u((l_2538 || (l_2559 != (void*)0)), l_2560)) ^ (*p_2641->g_716)))) | (*p_2641->g_716)) > 251UL))))) , l_2561), GROUP_DIVERGE(2, 1))) & l_2560)), 0L)), 0xFE7AL))), l_2560)), l_2515[0])), 12)) | l_2524)) >= p_2641->g_2283), (*p_2641->g_716))) <= l_2326) && l_2561)) > 0x75F8L), 0xC013L)) , l_2456[1][7][2]) == l_2564) , 0L);
                if ((((l_2579 = (safe_mod_func_uint16_t_u_u(((((safe_rshift_func_int8_t_s_u((((*p_2641->g_1715) = (((*l_11) = (((safe_mod_func_int16_t_s_s((((!(l_2523 = (~l_2572[9][3]))) > l_2572[9][3]) >= (l_2573 != l_2574)), (safe_sub_func_uint16_t_u_u(l_2499[2][3][2], 0x10F8L)))) >= (-1L)) != (~l_2561))) != l_2480)) | l_2412), l_2577)) , (*p_2641->g_716)) && (*l_11)) < l_2578), 0x714DL))) , l_2580) == l_2581))
                { /* block id: 1230 */
                    return l_2560;
                }
                else
                { /* block id: 1232 */
                    int32_t l_2594[2][6][7] = {{{(-1L),(-1L),8L,(-10L),8L,(-1L),(-1L)},{(-1L),(-1L),8L,(-10L),8L,(-1L),(-1L)},{(-1L),(-1L),8L,(-10L),8L,(-1L),(-1L)},{(-1L),(-1L),8L,(-10L),8L,(-1L),(-1L)},{(-1L),(-1L),8L,(-10L),8L,(-1L),(-1L)},{(-1L),(-1L),8L,(-10L),8L,(-1L),(-1L)}},{{(-1L),(-1L),8L,(-10L),8L,(-1L),(-1L)},{(-1L),(-1L),8L,(-10L),8L,(-1L),(-1L)},{(-1L),(-1L),8L,(-10L),8L,(-1L),(-1L)},{(-1L),(-1L),8L,(-10L),8L,(-1L),(-1L)},{(-1L),(-1L),8L,(-10L),8L,(-1L),(-1L)},{(-1L),(-1L),8L,(-10L),8L,(-1L),(-1L)}}};
                    uint32_t **l_2597 = &p_2641->g_2282;
                    int16_t l_2603 = 0x3FF4L;
                    int8_t ****l_2619 = &l_2618;
                    int8_t ***l_2621[7][3] = {{&p_2641->g_1714,&p_2641->g_1714,&p_2641->g_1714},{&p_2641->g_1714,&p_2641->g_1714,&p_2641->g_1714},{&p_2641->g_1714,&p_2641->g_1714,&p_2641->g_1714},{&p_2641->g_1714,&p_2641->g_1714,&p_2641->g_1714},{&p_2641->g_1714,&p_2641->g_1714,&p_2641->g_1714},{&p_2641->g_1714,&p_2641->g_1714,&p_2641->g_1714},{&p_2641->g_1714,&p_2641->g_1714,&p_2641->g_1714}};
                    int8_t ****l_2620 = &l_2621[6][0];
                    int i, j, k;
                    for (p_2641->g_2436 = 17; (p_2641->g_2436 > 45); ++p_2641->g_2436)
                    { /* block id: 1235 */
                        int32_t *****l_2600 = &l_2574;
                        int32_t l_2606 = 0x51B594C0L;
                        int32_t l_2607 = 1L;
                        int32_t l_2608 = 1L;
                        l_2603 = (safe_div_func_uint8_t_u_u((safe_rshift_func_int8_t_s_u((safe_div_func_uint8_t_u_u(((safe_sub_func_int16_t_s_s(5L, (safe_div_func_int16_t_s_s(l_2594[0][1][5], (safe_div_func_int8_t_s_s(((((void*)0 == l_2597) > (0x8D88L < FAKE_DIVERGE(p_2641->global_1_offset, get_global_id(1), 10))) , ((p_2641->g_2354 || l_2499[6][4][2]) <= (safe_mod_func_int16_t_s_s((((((**l_2597) = ((65535UL <= (((*l_2600) = (void*)0) == l_2601)) , l_2561)) , (void*)0) != &l_2572[4][2]) <= 0x3FE8DC99761C7775L), l_2561)))), 5L)))))) , l_2602), p_2641->g_453)), 3)), p_2641->g_400));
                        --p_2641->g_2609;
                        l_2612[3]++;
                        if (l_2578)
                            goto lbl_2615;
                    }
                    (*p_2641->g_2634) = func_78(l_2594[0][2][0], ((safe_sub_func_uint16_t_u_u(((&p_2641->g_1714 == ((*l_2620) = ((*l_2619) = l_2618))) , (safe_unary_minus_func_int16_t_s(((4294967295UL != l_2603) , (safe_mul_func_int8_t_s_s((safe_add_func_uint16_t_u_u((((*p_2641->g_2282) = (((GROUP_DIVERGE(0, 1) & ((((safe_add_func_int8_t_s_s(((safe_add_func_uint16_t_u_u((p_2641->g_2286[4] > (0xBF96L <= (~((*p_2641->g_179) = ((l_2480 | 0x7531L) , l_2572[9][3]))))), (*p_2641->g_716))) , 0x76L), (*l_8))) ^ l_2605[0]) , p_2641->g_2286[3]) && 0x7B5D8A2948C01AFFL)) != GROUP_DIVERGE(0, 1)) | l_2633)) , 0xAB6FL), l_2561)), 0x81L)))))), 65535UL)) | 1UL), &p_2641->g_122[2], (*l_8), p_2641);
                    return l_2635[0];
                }
            }
            else
            { /* block id: 1250 */
                int8_t l_2636 = 0x6DL;
                if (p_2641->g_578)
                    goto lbl_2615;
                return l_2636;
            }
        }
    }
    l_2638++;
    return (*l_11);
}


/* ------------------------------------------ */
/* 
 * reads : p_2641->g_36 p_2641->g_178 p_2641->g_179 p_2641->g_115 p_2641->g_716 p_2641->g_145 p_2641->g_1163 p_2641->g_4 p_2641->g_9 p_2641->g_964
 * writes: p_2641->g_36 p_2641->g_830 p_2641->g_115 p_2641->g_145
 */
int32_t * func_17(int16_t  p_18, int32_t * p_19, uint32_t  p_20, int32_t ** p_21, struct S0 * p_2641)
{ /* block id: 1117 */
    int32_t l_2330 = (-1L);
    int32_t l_2331 = 0L;
    int32_t l_2332 = (-7L);
    int32_t l_2333 = 0x41003CE3L;
    int32_t l_2335 = 0x2A66C2CCL;
    int32_t l_2336 = (-7L);
    uint32_t l_2337 = 4294967293UL;
    int32_t l_2352 = (-1L);
    int32_t l_2355 = 6L;
    int32_t l_2357 = (-1L);
    int32_t l_2358 = 0x1C356EBAL;
    int32_t l_2359[9][7][4] = {{{0L,(-7L),0x73E5098EL,(-4L)},{0L,(-7L),0x73E5098EL,(-4L)},{0L,(-7L),0x73E5098EL,(-4L)},{0L,(-7L),0x73E5098EL,(-4L)},{0L,(-7L),0x73E5098EL,(-4L)},{0L,(-7L),0x73E5098EL,(-4L)},{0L,(-7L),0x73E5098EL,(-4L)}},{{0L,(-7L),0x73E5098EL,(-4L)},{0L,(-7L),0x73E5098EL,(-4L)},{0L,(-7L),0x73E5098EL,(-4L)},{0L,(-7L),0x73E5098EL,(-4L)},{0L,(-7L),0x73E5098EL,(-4L)},{0L,(-7L),0x73E5098EL,(-4L)},{0L,(-7L),0x73E5098EL,(-4L)}},{{0L,(-7L),0x73E5098EL,(-4L)},{0L,(-7L),0x73E5098EL,(-4L)},{0L,(-7L),0x73E5098EL,(-4L)},{0L,(-7L),0x73E5098EL,(-4L)},{0L,(-7L),0x73E5098EL,(-4L)},{0L,(-7L),0x73E5098EL,(-4L)},{0L,(-7L),0x73E5098EL,(-4L)}},{{0L,(-7L),0x73E5098EL,(-4L)},{0L,(-7L),0x73E5098EL,(-4L)},{0L,(-7L),0x73E5098EL,(-4L)},{0L,(-7L),0x73E5098EL,(-4L)},{0L,(-7L),0x73E5098EL,(-4L)},{0L,(-7L),0x73E5098EL,(-4L)},{0L,(-7L),0x73E5098EL,(-4L)}},{{0L,(-7L),0x73E5098EL,(-4L)},{0L,(-7L),0x73E5098EL,(-4L)},{0L,(-7L),0x73E5098EL,(-4L)},{0L,(-7L),0x73E5098EL,(-4L)},{0L,(-7L),0x73E5098EL,(-4L)},{0L,(-7L),0x73E5098EL,(-4L)},{0L,(-7L),0x73E5098EL,(-4L)}},{{0L,(-7L),0x73E5098EL,(-4L)},{0L,(-7L),0x73E5098EL,(-4L)},{0L,(-7L),0x73E5098EL,(-4L)},{0L,(-7L),0x73E5098EL,(-4L)},{0L,(-7L),0x73E5098EL,(-4L)},{0L,(-7L),0x73E5098EL,(-4L)},{0L,(-7L),0x73E5098EL,(-4L)}},{{0L,(-7L),0x73E5098EL,(-4L)},{0L,(-7L),0x73E5098EL,(-4L)},{0L,(-7L),0x73E5098EL,(-4L)},{0L,(-7L),0x73E5098EL,(-4L)},{0L,(-7L),0x73E5098EL,(-4L)},{0L,(-7L),0x73E5098EL,(-4L)},{0L,(-7L),0x73E5098EL,(-4L)}},{{0L,(-7L),0x73E5098EL,(-4L)},{0L,(-7L),0x73E5098EL,(-4L)},{0L,(-7L),0x73E5098EL,(-4L)},{0L,(-7L),0x73E5098EL,(-4L)},{0L,(-7L),0x73E5098EL,(-4L)},{0L,(-7L),0x73E5098EL,(-4L)},{0L,(-7L),0x73E5098EL,(-4L)}},{{0L,(-7L),0x73E5098EL,(-4L)},{0L,(-7L),0x73E5098EL,(-4L)},{0L,(-7L),0x73E5098EL,(-4L)},{0L,(-7L),0x73E5098EL,(-4L)},{0L,(-7L),0x73E5098EL,(-4L)},{0L,(-7L),0x73E5098EL,(-4L)},{0L,(-7L),0x73E5098EL,(-4L)}}};
    uint32_t **l_2368 = (void*)0;
    uint16_t **l_2384 = &p_2641->g_1744;
    int i, j, k;
    for (p_18 = 6; (p_18 <= (-27)); p_18--)
    { /* block id: 1120 */
        int32_t *l_2329[2];
        int64_t l_2334 = 0L;
        uint8_t l_2340[10][5][5] = {{{0x88L,0x33L,0x70L,0x33L,0x88L},{0x88L,0x33L,0x70L,0x33L,0x88L},{0x88L,0x33L,0x70L,0x33L,0x88L},{0x88L,0x33L,0x70L,0x33L,0x88L},{0x88L,0x33L,0x70L,0x33L,0x88L}},{{0x88L,0x33L,0x70L,0x33L,0x88L},{0x88L,0x33L,0x70L,0x33L,0x88L},{0x88L,0x33L,0x70L,0x33L,0x88L},{0x88L,0x33L,0x70L,0x33L,0x88L},{0x88L,0x33L,0x70L,0x33L,0x88L}},{{0x88L,0x33L,0x70L,0x33L,0x88L},{0x88L,0x33L,0x70L,0x33L,0x88L},{0x88L,0x33L,0x70L,0x33L,0x88L},{0x88L,0x33L,0x70L,0x33L,0x88L},{0x88L,0x33L,0x70L,0x33L,0x88L}},{{0x88L,0x33L,0x70L,0x33L,0x88L},{0x88L,0x33L,0x70L,0x33L,0x88L},{0x88L,0x33L,0x70L,0x33L,0x88L},{0x88L,0x33L,0x70L,0x33L,0x88L},{0x88L,0x33L,0x70L,0x33L,0x88L}},{{0x88L,0x33L,0x70L,0x33L,0x88L},{0x88L,0x33L,0x70L,0x33L,0x88L},{0x88L,0x33L,0x70L,0x33L,0x88L},{0x88L,0x33L,0x70L,0x33L,0x88L},{0x88L,0x33L,0x70L,0x33L,0x88L}},{{0x88L,0x33L,0x70L,0x33L,0x88L},{0x88L,0x33L,0x70L,0x33L,0x88L},{0x88L,0x33L,0x70L,0x33L,0x88L},{0x88L,0x33L,0x70L,0x33L,0x88L},{0x88L,0x33L,0x70L,0x33L,0x88L}},{{0x88L,0x33L,0x70L,0x33L,0x88L},{0x88L,0x33L,0x70L,0x33L,0x88L},{0x88L,0x33L,0x70L,0x33L,0x88L},{0x88L,0x33L,0x70L,0x33L,0x88L},{0x88L,0x33L,0x70L,0x33L,0x88L}},{{0x88L,0x33L,0x70L,0x33L,0x88L},{0x88L,0x33L,0x70L,0x33L,0x88L},{0x88L,0x33L,0x70L,0x33L,0x88L},{0x88L,0x33L,0x70L,0x33L,0x88L},{0x88L,0x33L,0x70L,0x33L,0x88L}},{{0x88L,0x33L,0x70L,0x33L,0x88L},{0x88L,0x33L,0x70L,0x33L,0x88L},{0x88L,0x33L,0x70L,0x33L,0x88L},{0x88L,0x33L,0x70L,0x33L,0x88L},{0x88L,0x33L,0x70L,0x33L,0x88L}},{{0x88L,0x33L,0x70L,0x33L,0x88L},{0x88L,0x33L,0x70L,0x33L,0x88L},{0x88L,0x33L,0x70L,0x33L,0x88L},{0x88L,0x33L,0x70L,0x33L,0x88L},{0x88L,0x33L,0x70L,0x33L,0x88L}}};
        int i, j, k;
        for (i = 0; i < 2; i++)
            l_2329[i] = &p_2641->g_36;
        --l_2337;
        ++l_2340[3][2][3];
    }
    for (p_2641->g_36 = 0; (p_2641->g_36 != 27); p_2641->g_36 = safe_add_func_uint32_t_u_u(p_2641->g_36, 3))
    { /* block id: 1126 */
        int32_t l_2348 = 0x105BAB74L;
        int32_t l_2349 = 0x2F92A93CL;
        int32_t l_2350 = 0x46C958F8L;
        int32_t l_2351[5][5] = {{0x5774B20BL,0x5774B20BL,0x5774B20BL,0x5774B20BL,0x5774B20BL},{0x5774B20BL,0x5774B20BL,0x5774B20BL,0x5774B20BL,0x5774B20BL},{0x5774B20BL,0x5774B20BL,0x5774B20BL,0x5774B20BL,0x5774B20BL},{0x5774B20BL,0x5774B20BL,0x5774B20BL,0x5774B20BL,0x5774B20BL},{0x5774B20BL,0x5774B20BL,0x5774B20BL,0x5774B20BL,0x5774B20BL}};
        uint16_t l_2360 = 0x4A9EL;
        int8_t ***l_2379 = &p_2641->g_1714;
        uint32_t l_2381 = 0UL;
        uint16_t **l_2383[4][7][9] = {{{&p_2641->g_179,&p_2641->g_179,&p_2641->g_1744,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179},{&p_2641->g_179,&p_2641->g_179,&p_2641->g_1744,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179},{&p_2641->g_179,&p_2641->g_179,&p_2641->g_1744,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179},{&p_2641->g_179,&p_2641->g_179,&p_2641->g_1744,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179},{&p_2641->g_179,&p_2641->g_179,&p_2641->g_1744,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179},{&p_2641->g_179,&p_2641->g_179,&p_2641->g_1744,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179},{&p_2641->g_179,&p_2641->g_179,&p_2641->g_1744,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179}},{{&p_2641->g_179,&p_2641->g_179,&p_2641->g_1744,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179},{&p_2641->g_179,&p_2641->g_179,&p_2641->g_1744,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179},{&p_2641->g_179,&p_2641->g_179,&p_2641->g_1744,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179},{&p_2641->g_179,&p_2641->g_179,&p_2641->g_1744,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179},{&p_2641->g_179,&p_2641->g_179,&p_2641->g_1744,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179},{&p_2641->g_179,&p_2641->g_179,&p_2641->g_1744,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179},{&p_2641->g_179,&p_2641->g_179,&p_2641->g_1744,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179}},{{&p_2641->g_179,&p_2641->g_179,&p_2641->g_1744,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179},{&p_2641->g_179,&p_2641->g_179,&p_2641->g_1744,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179},{&p_2641->g_179,&p_2641->g_179,&p_2641->g_1744,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179},{&p_2641->g_179,&p_2641->g_179,&p_2641->g_1744,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179},{&p_2641->g_179,&p_2641->g_179,&p_2641->g_1744,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179},{&p_2641->g_179,&p_2641->g_179,&p_2641->g_1744,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179},{&p_2641->g_179,&p_2641->g_179,&p_2641->g_1744,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179}},{{&p_2641->g_179,&p_2641->g_179,&p_2641->g_1744,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179},{&p_2641->g_179,&p_2641->g_179,&p_2641->g_1744,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179},{&p_2641->g_179,&p_2641->g_179,&p_2641->g_1744,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179},{&p_2641->g_179,&p_2641->g_179,&p_2641->g_1744,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179},{&p_2641->g_179,&p_2641->g_179,&p_2641->g_1744,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179},{&p_2641->g_179,&p_2641->g_179,&p_2641->g_1744,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179},{&p_2641->g_179,&p_2641->g_179,&p_2641->g_1744,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179}}};
        uint16_t **l_2385 = (void*)0;
        int i, j, k;
        for (p_2641->g_830 = (-19); (p_2641->g_830 >= (-9)); ++p_2641->g_830)
        { /* block id: 1129 */
            int32_t *l_2347[3][4][1] = {{{&l_2335},{&l_2335},{&l_2335},{&l_2335}},{{&l_2335},{&l_2335},{&l_2335},{&l_2335}},{{&l_2335},{&l_2335},{&l_2335},{&l_2335}}};
            int64_t l_2353 = 0x0FE45646F6AEB447L;
            int32_t l_2356 = 0x247E4D0FL;
            uint32_t **l_2367 = (void*)0;
            uint16_t *****l_2369 = &p_2641->g_873[2][2][1];
            int8_t l_2370 = 0L;
            uint32_t *l_2377 = (void*)0;
            uint32_t **l_2376 = &l_2377;
            int8_t ***l_2378 = &p_2641->g_1714;
            int8_t ****l_2380 = &l_2379;
            uint32_t *l_2382 = &l_2337;
            uint16_t ***l_2386[8] = {&p_2641->g_178,&l_2385,&p_2641->g_178,&p_2641->g_178,&l_2385,&p_2641->g_178,&p_2641->g_178,&l_2385};
            int32_t l_2389 = 0x40AE7506L;
            int i, j, k;
            l_2360++;
            if ((*p_19))
                break;
            (*p_19) = ((safe_lshift_func_int16_t_s_u((-2L), ((**p_2641->g_178) &= (safe_sub_func_uint64_t_u_u((0x2AEEC8F4L == (l_2367 != (p_18 , l_2368))), ((void*)0 == l_2369)))))) & (0UL > ((*p_2641->g_716) , l_2370)));
            l_2351[3][3] = ((*p_19) &= ((safe_add_func_int64_t_s_s((safe_lshift_func_uint16_t_u_u((safe_unary_minus_func_int16_t_s((((*l_2376) = l_2347[0][2][0]) != (((**p_2641->g_178) = ((l_2378 != ((*l_2380) = l_2379)) && l_2381)) , l_2382)))), (((*p_2641->g_716) &= 0x0E23L) , ((l_2384 = (l_2383[3][6][5] = l_2383[3][2][6])) == (l_2385 = l_2385))))), (safe_add_func_uint16_t_u_u((l_2389 >= p_2641->g_36), p_2641->g_1163)))) , (**p_21)));
        }
        (*p_19) = (*p_2641->g_964);
    }
    return (*p_21);
}


/* ------------------------------------------ */
/* 
 * reads : p_2641->g_23 p_2641->g_49
 * writes: p_2641->g_23 p_2641->g_49
 */
uint32_t  func_31(uint8_t  p_32, struct S0 * p_2641)
{ /* block id: 24 */
    uint64_t l_34[4];
    int32_t l_40 = 0x51F6657EL;
    int32_t l_41 = 0x5540778DL;
    int32_t l_42 = (-10L);
    int32_t l_43 = 0L;
    int32_t l_44 = 0L;
    int32_t l_45 = (-7L);
    int32_t l_46 = 1L;
    int32_t l_47 = 0x01006516L;
    int32_t l_48[6] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
    uint32_t *l_104 = (void*)0;
    int32_t **l_345 = (void*)0;
    int32_t *l_346[1];
    int i;
    for (i = 0; i < 4; i++)
        l_34[i] = 0x32F1EFAE07DF7DC2L;
    for (i = 0; i < 1; i++)
        l_346[i] = (void*)0;
    for (p_2641->g_23 = 0; (p_2641->g_23 <= 3); p_2641->g_23 += 1)
    { /* block id: 27 */
        int32_t *l_35 = &p_2641->g_36;
        int32_t *l_37 = (void*)0;
        int32_t *l_38 = &p_2641->g_36;
        int32_t *l_39[2];
        uint16_t l_482 = 1UL;
        uint16_t *l_1990[2][5] = {{&p_2641->g_551,&p_2641->g_551,&p_2641->g_551,&p_2641->g_551,&p_2641->g_551},{&p_2641->g_551,&p_2641->g_551,&p_2641->g_551,&p_2641->g_551,&p_2641->g_551}};
        uint8_t l_1991 = 255UL;
        uint32_t **l_2295 = &l_104;
        int16_t *l_2310 = (void*)0;
        int16_t *l_2311 = &p_2641->g_2312;
        int i, j;
        for (i = 0; i < 2; i++)
            l_39[i] = &p_2641->g_36;
        --p_2641->g_49;
    }
    return p_32;
}


/* ------------------------------------------ */
/* 
 * reads : p_2641->g_36 p_2641->g_2282 p_2641->g_2283
 * writes: p_2641->g_351 p_2641->g_36
 */
uint32_t  func_58(int32_t  p_59, int32_t * p_60, uint32_t * p_61, struct S0 * p_2641)
{ /* block id: 1107 */
    int32_t **l_2298 = &p_2641->g_122[0];
    uint32_t *l_2299 = &p_2641->g_351;
    int32_t *l_2300 = &p_2641->g_1523;
    int32_t *l_2301 = &p_2641->g_36;
    int32_t *l_2302 = &p_2641->g_1523;
    int32_t *l_2303[1][5] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
    int32_t l_2304 = 2L;
    int32_t l_2305[3];
    int16_t l_2306 = (-1L);
    uint16_t l_2307 = 0UL;
    int i, j;
    for (i = 0; i < 3; i++)
        l_2305[i] = 1L;
    (*p_60) &= (safe_sub_func_uint32_t_u_u(0xE98AF7B4L, ((*l_2299) = (4294967295UL && ((void*)0 != l_2298)))));
    l_2307--;
    return (*p_2641->g_2282);
}


/* ------------------------------------------ */
/* 
 * reads : p_2641->g_523 p_2641->g_36 p_2641->g_1715 p_2641->g_132 p_2641->g_1523 p_2641->g_1832 p_2641->g_2052 p_2641->g_646 p_2641->g_115 p_2641->g_1914 p_2641->g_258 p_2641->g_740
 * writes: p_2641->g_36 p_2641->g_740 p_2641->g_2053 p_2641->g_1967 p_2641->g_2073 p_2641->g_1523 p_2641->g_115 p_2641->g_132 p_2641->g_258 p_2641->g_2105 p_2641->g_485
 */
uint32_t * func_62(uint64_t  p_63, int64_t  p_64, int32_t * p_65, uint32_t * p_66, int64_t  p_67, struct S0 * p_2641)
{ /* block id: 964 */
    int16_t l_1992[6][5] = {{0x541AL,(-7L),0x541AL,0x541AL,(-7L)},{0x541AL,(-7L),0x541AL,0x541AL,(-7L)},{0x541AL,(-7L),0x541AL,0x541AL,(-7L)},{0x541AL,(-7L),0x541AL,0x541AL,(-7L)},{0x541AL,(-7L),0x541AL,0x541AL,(-7L)},{0x541AL,(-7L),0x541AL,0x541AL,(-7L)}};
    int32_t *l_1993 = &p_2641->g_1523;
    int32_t *l_1994 = &p_2641->g_36;
    int32_t *l_1995 = &p_2641->g_36;
    int32_t l_1996 = 0x1617DC94L;
    int32_t *l_1997 = &l_1996;
    int32_t *l_1998[8][10] = {{&p_2641->g_36,&p_2641->g_1523,&p_2641->g_4,&p_2641->g_36,&l_1996,(void*)0,&p_2641->g_36,&l_1996,&l_1996,&l_1996},{&p_2641->g_36,&p_2641->g_1523,&p_2641->g_4,&p_2641->g_36,&l_1996,(void*)0,&p_2641->g_36,&l_1996,&l_1996,&l_1996},{&p_2641->g_36,&p_2641->g_1523,&p_2641->g_4,&p_2641->g_36,&l_1996,(void*)0,&p_2641->g_36,&l_1996,&l_1996,&l_1996},{&p_2641->g_36,&p_2641->g_1523,&p_2641->g_4,&p_2641->g_36,&l_1996,(void*)0,&p_2641->g_36,&l_1996,&l_1996,&l_1996},{&p_2641->g_36,&p_2641->g_1523,&p_2641->g_4,&p_2641->g_36,&l_1996,(void*)0,&p_2641->g_36,&l_1996,&l_1996,&l_1996},{&p_2641->g_36,&p_2641->g_1523,&p_2641->g_4,&p_2641->g_36,&l_1996,(void*)0,&p_2641->g_36,&l_1996,&l_1996,&l_1996},{&p_2641->g_36,&p_2641->g_1523,&p_2641->g_4,&p_2641->g_36,&l_1996,(void*)0,&p_2641->g_36,&l_1996,&l_1996,&l_1996},{&p_2641->g_36,&p_2641->g_1523,&p_2641->g_4,&p_2641->g_36,&l_1996,(void*)0,&p_2641->g_36,&l_1996,&l_1996,&l_1996}};
    uint64_t l_1999[9][8][3] = {{{0x601CE15D2B62D89AL,18446744073709551615UL,0UL},{0x601CE15D2B62D89AL,18446744073709551615UL,0UL},{0x601CE15D2B62D89AL,18446744073709551615UL,0UL},{0x601CE15D2B62D89AL,18446744073709551615UL,0UL},{0x601CE15D2B62D89AL,18446744073709551615UL,0UL},{0x601CE15D2B62D89AL,18446744073709551615UL,0UL},{0x601CE15D2B62D89AL,18446744073709551615UL,0UL},{0x601CE15D2B62D89AL,18446744073709551615UL,0UL}},{{0x601CE15D2B62D89AL,18446744073709551615UL,0UL},{0x601CE15D2B62D89AL,18446744073709551615UL,0UL},{0x601CE15D2B62D89AL,18446744073709551615UL,0UL},{0x601CE15D2B62D89AL,18446744073709551615UL,0UL},{0x601CE15D2B62D89AL,18446744073709551615UL,0UL},{0x601CE15D2B62D89AL,18446744073709551615UL,0UL},{0x601CE15D2B62D89AL,18446744073709551615UL,0UL},{0x601CE15D2B62D89AL,18446744073709551615UL,0UL}},{{0x601CE15D2B62D89AL,18446744073709551615UL,0UL},{0x601CE15D2B62D89AL,18446744073709551615UL,0UL},{0x601CE15D2B62D89AL,18446744073709551615UL,0UL},{0x601CE15D2B62D89AL,18446744073709551615UL,0UL},{0x601CE15D2B62D89AL,18446744073709551615UL,0UL},{0x601CE15D2B62D89AL,18446744073709551615UL,0UL},{0x601CE15D2B62D89AL,18446744073709551615UL,0UL},{0x601CE15D2B62D89AL,18446744073709551615UL,0UL}},{{0x601CE15D2B62D89AL,18446744073709551615UL,0UL},{0x601CE15D2B62D89AL,18446744073709551615UL,0UL},{0x601CE15D2B62D89AL,18446744073709551615UL,0UL},{0x601CE15D2B62D89AL,18446744073709551615UL,0UL},{0x601CE15D2B62D89AL,18446744073709551615UL,0UL},{0x601CE15D2B62D89AL,18446744073709551615UL,0UL},{0x601CE15D2B62D89AL,18446744073709551615UL,0UL},{0x601CE15D2B62D89AL,18446744073709551615UL,0UL}},{{0x601CE15D2B62D89AL,18446744073709551615UL,0UL},{0x601CE15D2B62D89AL,18446744073709551615UL,0UL},{0x601CE15D2B62D89AL,18446744073709551615UL,0UL},{0x601CE15D2B62D89AL,18446744073709551615UL,0UL},{0x601CE15D2B62D89AL,18446744073709551615UL,0UL},{0x601CE15D2B62D89AL,18446744073709551615UL,0UL},{0x601CE15D2B62D89AL,18446744073709551615UL,0UL},{0x601CE15D2B62D89AL,18446744073709551615UL,0UL}},{{0x601CE15D2B62D89AL,18446744073709551615UL,0UL},{0x601CE15D2B62D89AL,18446744073709551615UL,0UL},{0x601CE15D2B62D89AL,18446744073709551615UL,0UL},{0x601CE15D2B62D89AL,18446744073709551615UL,0UL},{0x601CE15D2B62D89AL,18446744073709551615UL,0UL},{0x601CE15D2B62D89AL,18446744073709551615UL,0UL},{0x601CE15D2B62D89AL,18446744073709551615UL,0UL},{0x601CE15D2B62D89AL,18446744073709551615UL,0UL}},{{0x601CE15D2B62D89AL,18446744073709551615UL,0UL},{0x601CE15D2B62D89AL,18446744073709551615UL,0UL},{0x601CE15D2B62D89AL,18446744073709551615UL,0UL},{0x601CE15D2B62D89AL,18446744073709551615UL,0UL},{0x601CE15D2B62D89AL,18446744073709551615UL,0UL},{0x601CE15D2B62D89AL,18446744073709551615UL,0UL},{0x601CE15D2B62D89AL,18446744073709551615UL,0UL},{0x601CE15D2B62D89AL,18446744073709551615UL,0UL}},{{0x601CE15D2B62D89AL,18446744073709551615UL,0UL},{0x601CE15D2B62D89AL,18446744073709551615UL,0UL},{0x601CE15D2B62D89AL,18446744073709551615UL,0UL},{0x601CE15D2B62D89AL,18446744073709551615UL,0UL},{0x601CE15D2B62D89AL,18446744073709551615UL,0UL},{0x601CE15D2B62D89AL,18446744073709551615UL,0UL},{0x601CE15D2B62D89AL,18446744073709551615UL,0UL},{0x601CE15D2B62D89AL,18446744073709551615UL,0UL}},{{0x601CE15D2B62D89AL,18446744073709551615UL,0UL},{0x601CE15D2B62D89AL,18446744073709551615UL,0UL},{0x601CE15D2B62D89AL,18446744073709551615UL,0UL},{0x601CE15D2B62D89AL,18446744073709551615UL,0UL},{0x601CE15D2B62D89AL,18446744073709551615UL,0UL},{0x601CE15D2B62D89AL,18446744073709551615UL,0UL},{0x601CE15D2B62D89AL,18446744073709551615UL,0UL},{0x601CE15D2B62D89AL,18446744073709551615UL,0UL}}};
    int32_t l_2030 = 0x658F28B3L;
    int32_t ***l_2094[3][2][10] = {{{&p_2641->g_887,&p_2641->g_887,&p_2641->g_887,&p_2641->g_887,&p_2641->g_887,&p_2641->g_887,&p_2641->g_887,&p_2641->g_887,&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887,&p_2641->g_887,&p_2641->g_887,&p_2641->g_887,&p_2641->g_887,&p_2641->g_887,&p_2641->g_887,&p_2641->g_887,&p_2641->g_887}},{{&p_2641->g_887,&p_2641->g_887,&p_2641->g_887,&p_2641->g_887,&p_2641->g_887,&p_2641->g_887,&p_2641->g_887,&p_2641->g_887,&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887,&p_2641->g_887,&p_2641->g_887,&p_2641->g_887,&p_2641->g_887,&p_2641->g_887,&p_2641->g_887,&p_2641->g_887,&p_2641->g_887}},{{&p_2641->g_887,&p_2641->g_887,&p_2641->g_887,&p_2641->g_887,&p_2641->g_887,&p_2641->g_887,&p_2641->g_887,&p_2641->g_887,&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887,&p_2641->g_887,&p_2641->g_887,&p_2641->g_887,&p_2641->g_887,&p_2641->g_887,&p_2641->g_887,&p_2641->g_887,&p_2641->g_887}}};
    int32_t ****l_2093[5][5] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
    int16_t l_2096[8][10][3] = {{{0L,(-7L),(-9L)},{0L,(-7L),(-9L)},{0L,(-7L),(-9L)},{0L,(-7L),(-9L)},{0L,(-7L),(-9L)},{0L,(-7L),(-9L)},{0L,(-7L),(-9L)},{0L,(-7L),(-9L)},{0L,(-7L),(-9L)},{0L,(-7L),(-9L)}},{{0L,(-7L),(-9L)},{0L,(-7L),(-9L)},{0L,(-7L),(-9L)},{0L,(-7L),(-9L)},{0L,(-7L),(-9L)},{0L,(-7L),(-9L)},{0L,(-7L),(-9L)},{0L,(-7L),(-9L)},{0L,(-7L),(-9L)},{0L,(-7L),(-9L)}},{{0L,(-7L),(-9L)},{0L,(-7L),(-9L)},{0L,(-7L),(-9L)},{0L,(-7L),(-9L)},{0L,(-7L),(-9L)},{0L,(-7L),(-9L)},{0L,(-7L),(-9L)},{0L,(-7L),(-9L)},{0L,(-7L),(-9L)},{0L,(-7L),(-9L)}},{{0L,(-7L),(-9L)},{0L,(-7L),(-9L)},{0L,(-7L),(-9L)},{0L,(-7L),(-9L)},{0L,(-7L),(-9L)},{0L,(-7L),(-9L)},{0L,(-7L),(-9L)},{0L,(-7L),(-9L)},{0L,(-7L),(-9L)},{0L,(-7L),(-9L)}},{{0L,(-7L),(-9L)},{0L,(-7L),(-9L)},{0L,(-7L),(-9L)},{0L,(-7L),(-9L)},{0L,(-7L),(-9L)},{0L,(-7L),(-9L)},{0L,(-7L),(-9L)},{0L,(-7L),(-9L)},{0L,(-7L),(-9L)},{0L,(-7L),(-9L)}},{{0L,(-7L),(-9L)},{0L,(-7L),(-9L)},{0L,(-7L),(-9L)},{0L,(-7L),(-9L)},{0L,(-7L),(-9L)},{0L,(-7L),(-9L)},{0L,(-7L),(-9L)},{0L,(-7L),(-9L)},{0L,(-7L),(-9L)},{0L,(-7L),(-9L)}},{{0L,(-7L),(-9L)},{0L,(-7L),(-9L)},{0L,(-7L),(-9L)},{0L,(-7L),(-9L)},{0L,(-7L),(-9L)},{0L,(-7L),(-9L)},{0L,(-7L),(-9L)},{0L,(-7L),(-9L)},{0L,(-7L),(-9L)},{0L,(-7L),(-9L)}},{{0L,(-7L),(-9L)},{0L,(-7L),(-9L)},{0L,(-7L),(-9L)},{0L,(-7L),(-9L)},{0L,(-7L),(-9L)},{0L,(-7L),(-9L)},{0L,(-7L),(-9L)},{0L,(-7L),(-9L)},{0L,(-7L),(-9L)},{0L,(-7L),(-9L)}}};
    int64_t **l_2097[4];
    int64_t *l_2119 = &p_2641->g_1415;
    int64_t *l_2120 = &p_2641->g_851;
    uint16_t *****l_2134 = (void*)0;
    uint32_t ***l_2177 = &p_2641->g_147;
    uint32_t *l_2294 = &p_2641->g_23;
    int i, j, k;
    for (i = 0; i < 4; i++)
        l_2097[i] = &p_2641->g_2073[0][3];
lbl_2055:
    l_1999[5][5][2]--;
    (*l_1997) = ((*l_1995) = (p_2641->g_523 && 0xC872CCCB004A883AL));
    if (((*p_65) = (*l_1995)))
    { /* block id: 969 */
        int64_t l_2019 = 0x3E041EA4D76D0187L;
        int32_t l_2047 = (-3L);
        int64_t ***l_2100[7][3] = {{&l_2097[2],&l_2097[2],&l_2097[2]},{&l_2097[2],&l_2097[2],&l_2097[2]},{&l_2097[2],&l_2097[2],&l_2097[2]},{&l_2097[2],&l_2097[2],&l_2097[2]},{&l_2097[2],&l_2097[2],&l_2097[2]},{&l_2097[2],&l_2097[2],&l_2097[2]},{&l_2097[2],&l_2097[2],&l_2097[2]}};
        int i, j;
        for (p_2641->g_740 = 0; (p_2641->g_740 == 1); p_2641->g_740++)
        { /* block id: 972 */
            uint32_t l_2029 = 0x58D54C69L;
            int32_t l_2046 = 3L;
            uint64_t **l_2050 = (void*)0;
            (*l_1995) ^= (safe_unary_minus_func_int8_t_s((safe_mod_func_int8_t_s_s(0x56L, ((*l_1997) && (safe_rshift_func_uint16_t_u_u(((*p_2641->g_1715) , (safe_rshift_func_uint8_t_u_u((((((safe_mul_func_uint16_t_u_u((safe_div_func_uint64_t_u_u((((safe_mod_func_int8_t_s_s((safe_add_func_int64_t_s_s((l_2019 <= p_67), 18446744073709551615UL)), (safe_lshift_func_int16_t_s_u(((safe_rshift_func_uint8_t_u_u(p_67, 5)) , 0x445BL), 6)))) && (safe_unary_minus_func_int8_t_s((((safe_lshift_func_uint16_t_u_u(((safe_div_func_int16_t_s_s(p_67, 0x12FBL)) > l_2029), 4)) == l_2029) <= 0L)))) , l_2030), p_67)), l_2019)) , p_64) >= p_63) , l_2029) > 8UL), l_2029))), 12)))))));
            if (l_2029)
                break;
            for (p_2641->g_36 = 24; (p_2641->g_36 < (-6)); p_2641->g_36 = safe_sub_func_int64_t_s_s(p_2641->g_36, 8))
            { /* block id: 977 */
                uint32_t l_2033 = 0xC8FA31F7L;
                uint64_t ***l_2051 = (void*)0;
                uint16_t **l_2067 = &p_2641->g_1744;
                int32_t l_2068[3];
                int32_t ***l_2088[4] = {&p_2641->g_887,&p_2641->g_887,&p_2641->g_887,&p_2641->g_887};
                int32_t l_2095 = (-8L);
                int i;
                for (i = 0; i < 3; i++)
                    l_2068[i] = 0L;
                l_2033--;
                l_2047 ^= (safe_mod_func_int8_t_s_s((safe_lshift_func_int16_t_s_s(((safe_mod_func_int64_t_s_s((5L ^ (safe_mul_func_uint8_t_u_u(0x4CL, (p_63 || 65534UL)))), p_2641->g_36)) <= l_2029), (p_64 , ((1UL != (safe_sub_func_uint64_t_u_u((+(l_2046 ^ p_63)), p_2641->g_1523))) == p_2641->g_1832[3])))), (*l_1993)));
                (*p_2641->g_2052) = ((safe_rshift_func_int8_t_s_s(l_2047, (*p_2641->g_1715))) , l_2050);
                for (l_2047 = 1; (l_2047 <= 4); l_2047 += 1)
                { /* block id: 983 */
                    uint16_t l_2058 = 65533UL;
                    if (l_2019)
                        goto lbl_2055;
                    for (p_2641->g_1967 = 1; (p_2641->g_1967 <= 5); p_2641->g_1967 += 1)
                    { /* block id: 987 */
                        uint32_t *l_2063 = (void*)0;
                        int32_t l_2064[2][3];
                        int64_t *l_2072 = &p_2641->g_851;
                        int64_t **l_2071[5];
                        int16_t l_2074[5][6][4] = {{{(-1L),(-1L),(-7L),0x1092L},{(-1L),(-1L),(-7L),0x1092L},{(-1L),(-1L),(-7L),0x1092L},{(-1L),(-1L),(-7L),0x1092L},{(-1L),(-1L),(-7L),0x1092L},{(-1L),(-1L),(-7L),0x1092L}},{{(-1L),(-1L),(-7L),0x1092L},{(-1L),(-1L),(-7L),0x1092L},{(-1L),(-1L),(-7L),0x1092L},{(-1L),(-1L),(-7L),0x1092L},{(-1L),(-1L),(-7L),0x1092L},{(-1L),(-1L),(-7L),0x1092L}},{{(-1L),(-1L),(-7L),0x1092L},{(-1L),(-1L),(-7L),0x1092L},{(-1L),(-1L),(-7L),0x1092L},{(-1L),(-1L),(-7L),0x1092L},{(-1L),(-1L),(-7L),0x1092L},{(-1L),(-1L),(-7L),0x1092L}},{{(-1L),(-1L),(-7L),0x1092L},{(-1L),(-1L),(-7L),0x1092L},{(-1L),(-1L),(-7L),0x1092L},{(-1L),(-1L),(-7L),0x1092L},{(-1L),(-1L),(-7L),0x1092L},{(-1L),(-1L),(-7L),0x1092L}},{{(-1L),(-1L),(-7L),0x1092L},{(-1L),(-1L),(-7L),0x1092L},{(-1L),(-1L),(-7L),0x1092L},{(-1L),(-1L),(-7L),0x1092L},{(-1L),(-1L),(-7L),0x1092L},{(-1L),(-1L),(-7L),0x1092L}}};
                        int i, j, k;
                        for (i = 0; i < 2; i++)
                        {
                            for (j = 0; j < 3; j++)
                                l_2064[i][j] = 1L;
                        }
                        for (i = 0; i < 5; i++)
                            l_2071[i] = &l_2072;
                        (*l_1997) ^= 0L;
                        l_2068[0] &= ((safe_sub_func_uint64_t_u_u(((l_1992[l_2047][l_2047] <= (*p_2641->g_646)) < ((FAKE_DIVERGE(p_2641->group_2_offset, get_group_id(2), 10) , l_2029) , (l_2058 >= (safe_sub_func_uint32_t_u_u((l_2064[0][2] = (safe_mod_func_uint64_t_u_u((p_64 && FAKE_DIVERGE(p_2641->global_1_offset, get_global_id(1), 10)), p_2641->g_523))), (safe_rshift_func_int8_t_s_s(((void*)0 != l_2067), 4))))))), (*l_1995))) != 0x925AL);
                        (*l_1997) &= (safe_rshift_func_uint16_t_u_s(((p_64 , (void*)0) != (p_2641->g_2073[0][5] = &p_2641->g_851)), l_2074[4][5][1]));
                        (*l_1993) = 1L;
                    }
                    for (p_2641->g_115 = 0; (p_2641->g_115 <= 4); p_2641->g_115 += 1)
                    { /* block id: 997 */
                        int32_t ***l_2087[10][10][2] = {{{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887}},{{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887}},{{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887}},{{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887}},{{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887}},{{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887}},{{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887}},{{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887}},{{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887}},{{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887},{&p_2641->g_887,&p_2641->g_887}}};
                        uint32_t *l_2089 = &l_2033;
                        int64_t *l_2092[1][7][8] = {{{&p_2641->g_341,(void*)0,&p_2641->g_1915,(void*)0,&p_2641->g_341,&p_2641->g_341,(void*)0,&p_2641->g_1915},{&p_2641->g_341,(void*)0,&p_2641->g_1915,(void*)0,&p_2641->g_341,&p_2641->g_341,(void*)0,&p_2641->g_1915},{&p_2641->g_341,(void*)0,&p_2641->g_1915,(void*)0,&p_2641->g_341,&p_2641->g_341,(void*)0,&p_2641->g_1915},{&p_2641->g_341,(void*)0,&p_2641->g_1915,(void*)0,&p_2641->g_341,&p_2641->g_341,(void*)0,&p_2641->g_1915},{&p_2641->g_341,(void*)0,&p_2641->g_1915,(void*)0,&p_2641->g_341,&p_2641->g_341,(void*)0,&p_2641->g_1915},{&p_2641->g_341,(void*)0,&p_2641->g_1915,(void*)0,&p_2641->g_341,&p_2641->g_341,(void*)0,&p_2641->g_1915},{&p_2641->g_341,(void*)0,&p_2641->g_1915,(void*)0,&p_2641->g_341,&p_2641->g_341,(void*)0,&p_2641->g_1915}}};
                        int i, j, k;
                        l_2096[7][6][2] &= ((safe_sub_func_uint32_t_u_u(l_1992[p_2641->g_115][l_2047], (safe_add_func_int32_t_s_s((p_64 < (safe_mod_func_uint8_t_u_u(l_2019, (l_2095 = (safe_mul_func_uint16_t_u_u(l_1992[p_2641->g_115][l_2047], (safe_mul_func_int16_t_s_s(((0x61L && (l_1992[p_2641->g_115][l_2047] < ((*l_2089) = (l_2087[3][9][1] == l_2088[0])))) == (((safe_sub_func_int64_t_s_s((l_2068[1] |= ((((l_2047 > GROUP_DIVERGE(0, 1)) >= p_64) >= 255UL) & 18446744073709551613UL)), p_2641->g_1914)) , l_2093[3][3]) == (void*)0)), p_63)))))))), l_2058)))) != p_63);
                    }
                }
            }
        }
        l_2097[0] = l_2097[2];
    }
    else
    { /* block id: 1007 */
        uint8_t *l_2103 = &p_2641->g_258;
        uint8_t *l_2104 = &p_2641->g_2105;
        int32_t **l_2106 = &p_2641->g_485;
        int8_t l_2172[1][8] = {{8L,(-2L),8L,8L,(-2L),8L,8L,(-2L)}};
        int32_t l_2174[7];
        uint32_t ***l_2176 = &p_2641->g_147;
        uint16_t ******l_2198 = &l_2134;
        uint32_t *l_2199 = &p_2641->g_737[1][2][2];
        int32_t **l_2201 = (void*)0;
        int32_t ***l_2256 = &p_2641->g_2203;
        int32_t ****l_2255 = &l_2256;
        int32_t *****l_2254[8] = {&l_2255,&l_2255,&l_2255,&l_2255,&l_2255,&l_2255,&l_2255,&l_2255};
        int i, j;
        for (i = 0; i < 7; i++)
            l_2174[i] = 0x3A7B947FL;
        (*l_2106) = (((safe_rshift_func_int8_t_s_u(((*p_2641->g_1715) ^= p_64), 4)) >= ((*l_2104) = ((*l_2103) |= p_64))) , (void*)0);
    }
    return p_65;
}


/* ------------------------------------------ */
/* 
 * reads : p_2641->g_341 p_2641->g_1770 p_2641->g_115 p_2641->g_830 p_2641->g_453 p_2641->g_1715 p_2641->g_132 p_2641->g_1781 p_2641->g_551 p_2641->g_36 p_2641->g_716 p_2641->g_145 p_2641->g_523 p_2641->g_964 p_2641->g_576 p_2641->g_23 p_2641->g_1832 p_2641->g_451 p_2641->g_578 p_2641->g_4 p_2641->g_1914 p_2641->g_1613 p_2641->g_49 p_2641->g_1523 p_2641->g_1982 p_2641->g_646 p_2641->g_851
 * writes: p_2641->g_341 p_2641->g_145 p_2641->g_258 p_2641->g_740 p_2641->g_115 p_2641->g_453 p_2641->g_36 p_2641->g_1832 p_2641->g_551 p_2641->g_132 p_2641->g_1915 p_2641->g_1914 p_2641->g_1967 p_2641->g_1613 p_2641->g_888 p_2641->g_1982
 */
uint64_t  func_72(int8_t  p_73, int16_t  p_74, struct S0 * p_2641)
{ /* block id: 862 */
    int32_t l_1757[9][6] = {{0x63145E2AL,0x04A5F2CAL,0x53917C96L,0L,8L,0L},{0x63145E2AL,0x04A5F2CAL,0x53917C96L,0L,8L,0L},{0x63145E2AL,0x04A5F2CAL,0x53917C96L,0L,8L,0L},{0x63145E2AL,0x04A5F2CAL,0x53917C96L,0L,8L,0L},{0x63145E2AL,0x04A5F2CAL,0x53917C96L,0L,8L,0L},{0x63145E2AL,0x04A5F2CAL,0x53917C96L,0L,8L,0L},{0x63145E2AL,0x04A5F2CAL,0x53917C96L,0L,8L,0L},{0x63145E2AL,0x04A5F2CAL,0x53917C96L,0L,8L,0L},{0x63145E2AL,0x04A5F2CAL,0x53917C96L,0L,8L,0L}};
    int32_t l_1758 = 0L;
    uint32_t l_1780 = 4294967293UL;
    uint8_t l_1808 = 0x62L;
    uint32_t l_1849 = 0x8E6C6615L;
    int64_t l_1864 = 3L;
    uint8_t *l_1866 = &p_2641->g_258;
    uint8_t **l_1865[3];
    int32_t **l_1880 = &p_2641->g_888;
    int32_t *l_1985[10] = {&l_1757[7][0],&l_1757[7][0],&l_1757[7][0],&l_1757[7][0],&l_1757[7][0],&l_1757[7][0],&l_1757[7][0],&l_1757[7][0],&l_1757[7][0],&l_1757[7][0]};
    int i, j;
    for (i = 0; i < 3; i++)
        l_1865[i] = &l_1866;
    for (p_2641->g_341 = (-26); (p_2641->g_341 < 19); ++p_2641->g_341)
    { /* block id: 865 */
        int32_t *l_1755[1][3];
        int32_t **l_1756 = &l_1755[0][2];
        uint64_t l_1759 = 0x32007A0C130D0A04L;
        uint64_t l_1813 = 0UL;
        int64_t l_1875 = 0x7137552BDAD61334L;
        uint16_t **l_1879[7][10] = {{&p_2641->g_1744,&p_2641->g_1744,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_1744,&p_2641->g_1744,(void*)0,&p_2641->g_1744,&p_2641->g_1744},{&p_2641->g_1744,&p_2641->g_1744,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_1744,&p_2641->g_1744,(void*)0,&p_2641->g_1744,&p_2641->g_1744},{&p_2641->g_1744,&p_2641->g_1744,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_1744,&p_2641->g_1744,(void*)0,&p_2641->g_1744,&p_2641->g_1744},{&p_2641->g_1744,&p_2641->g_1744,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_1744,&p_2641->g_1744,(void*)0,&p_2641->g_1744,&p_2641->g_1744},{&p_2641->g_1744,&p_2641->g_1744,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_1744,&p_2641->g_1744,(void*)0,&p_2641->g_1744,&p_2641->g_1744},{&p_2641->g_1744,&p_2641->g_1744,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_1744,&p_2641->g_1744,(void*)0,&p_2641->g_1744,&p_2641->g_1744},{&p_2641->g_1744,&p_2641->g_1744,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_1744,&p_2641->g_1744,(void*)0,&p_2641->g_1744,&p_2641->g_1744}};
        uint8_t l_1916 = 0x10L;
        int16_t l_1930[6][5][3] = {{{(-1L),0x6803L,0x6803L},{(-1L),0x6803L,0x6803L},{(-1L),0x6803L,0x6803L},{(-1L),0x6803L,0x6803L},{(-1L),0x6803L,0x6803L}},{{(-1L),0x6803L,0x6803L},{(-1L),0x6803L,0x6803L},{(-1L),0x6803L,0x6803L},{(-1L),0x6803L,0x6803L},{(-1L),0x6803L,0x6803L}},{{(-1L),0x6803L,0x6803L},{(-1L),0x6803L,0x6803L},{(-1L),0x6803L,0x6803L},{(-1L),0x6803L,0x6803L},{(-1L),0x6803L,0x6803L}},{{(-1L),0x6803L,0x6803L},{(-1L),0x6803L,0x6803L},{(-1L),0x6803L,0x6803L},{(-1L),0x6803L,0x6803L},{(-1L),0x6803L,0x6803L}},{{(-1L),0x6803L,0x6803L},{(-1L),0x6803L,0x6803L},{(-1L),0x6803L,0x6803L},{(-1L),0x6803L,0x6803L},{(-1L),0x6803L,0x6803L}},{{(-1L),0x6803L,0x6803L},{(-1L),0x6803L,0x6803L},{(-1L),0x6803L,0x6803L},{(-1L),0x6803L,0x6803L},{(-1L),0x6803L,0x6803L}}};
        uint64_t l_1951 = 0xA8E2747AF82B879CL;
        int32_t l_1975 = (-1L);
        uint8_t l_1989 = 0x60L;
        int i, j, k;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 3; j++)
                l_1755[i][j] = &p_2641->g_4;
        }
        (*l_1756) = l_1755[0][2];
        l_1759--;
        for (p_2641->g_145 = 0; (p_2641->g_145 <= 14); p_2641->g_145 = safe_add_func_uint32_t_u_u(p_2641->g_145, 6))
        { /* block id: 870 */
            int32_t l_1777 = (-1L);
            uint8_t *l_1778 = &p_2641->g_258;
            int64_t l_1779 = 0x33F37D82E76C3B9CL;
            int32_t *l_1782[2][7][2] = {{{&p_2641->g_36,&p_2641->g_1523},{&p_2641->g_36,&p_2641->g_1523},{&p_2641->g_36,&p_2641->g_1523},{&p_2641->g_36,&p_2641->g_1523},{&p_2641->g_36,&p_2641->g_1523},{&p_2641->g_36,&p_2641->g_1523},{&p_2641->g_36,&p_2641->g_1523}},{{&p_2641->g_36,&p_2641->g_1523},{&p_2641->g_36,&p_2641->g_1523},{&p_2641->g_36,&p_2641->g_1523},{&p_2641->g_36,&p_2641->g_1523},{&p_2641->g_36,&p_2641->g_1523},{&p_2641->g_36,&p_2641->g_1523},{&p_2641->g_36,&p_2641->g_1523}}};
            int64_t l_1783 = (-1L);
            int16_t *l_1788[2];
            uint32_t *l_1795 = &p_2641->g_740;
            uint8_t l_1807 = 248UL;
            int32_t l_1839 = 0x1F6A715CL;
            int32_t l_1840 = 0x53526C71L;
            uint16_t **l_1876[9][7] = {{&p_2641->g_1744,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_1744,&p_2641->g_179},{&p_2641->g_1744,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_1744,&p_2641->g_179},{&p_2641->g_1744,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_1744,&p_2641->g_179},{&p_2641->g_1744,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_1744,&p_2641->g_179},{&p_2641->g_1744,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_1744,&p_2641->g_179},{&p_2641->g_1744,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_1744,&p_2641->g_179},{&p_2641->g_1744,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_1744,&p_2641->g_179},{&p_2641->g_1744,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_1744,&p_2641->g_179},{&p_2641->g_1744,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_1744,&p_2641->g_179}};
            int64_t l_1966[4];
            uint16_t *l_1973 = &p_2641->g_551;
            int i, j, k;
            for (i = 0; i < 2; i++)
                l_1788[i] = (void*)0;
            for (i = 0; i < 4; i++)
                l_1966[i] = 0x2A74E90BC4DB800EL;
            l_1783 |= ((safe_rshift_func_int16_t_s_s(((safe_unary_minus_func_int64_t_s((&l_1757[7][0] != ((*l_1756) = &l_1757[7][3])))) >= (p_73 >= (l_1759 || ((((safe_unary_minus_func_uint8_t_u((l_1757[5][0] = ((((safe_mul_func_uint8_t_u_u(p_73, (((((p_2641->g_1770 != (void*)0) || (safe_lshift_func_uint16_t_u_u(((safe_mul_func_uint8_t_u_u(((*l_1778) = ((safe_mul_func_uint16_t_u_u(((0xC6D309D38B3F0C91L >= p_2641->g_115) | p_2641->g_830), l_1777)) > 0x58EA3F81A406E713L)), l_1779)) != l_1779), p_74))) < p_74) , p_74) , l_1780))) != FAKE_DIVERGE(p_2641->group_1_offset, get_group_id(1), 10)) > p_2641->g_453) & p_74)))) == (*p_2641->g_1715)) >= 0x24ADL) , p_74)))), p_2641->g_1781)) <= 0x1F680FF4161A4657L);
            if ((((p_73 | p_2641->g_551) , (safe_div_func_int32_t_s_s((safe_mod_func_uint16_t_u_u(0x11E2L, (p_74 = l_1757[7][0]))), ((safe_add_func_uint32_t_u_u(p_2641->g_1781, p_2641->g_36)) | (safe_sub_func_int64_t_s_s((safe_mod_func_uint32_t_u_u(((*l_1795) = ((p_73 ^ ((void*)0 == l_1788[1])) > l_1757[0][4])), p_73)), 0x5C348165830514CEL)))))) == p_73))
            { /* block id: 877 */
                return p_74;
            }
            else
            { /* block id: 879 */
                uint16_t *l_1804 = &p_2641->g_115;
                int32_t l_1814[1][6] = {{0x4BD752A7L,0x4BD752A7L,0x4BD752A7L,0x4BD752A7L,0x4BD752A7L,0x4BD752A7L}};
                int i, j;
                if ((l_1814[0][3] = (safe_lshift_func_uint16_t_u_u(((l_1808 = (safe_mul_func_int8_t_s_s(1L, (safe_mul_func_uint16_t_u_u(0UL, (safe_mod_func_uint16_t_u_u((--(*l_1804)), l_1807))))))) == 0x5CL), (safe_lshift_func_int16_t_s_u((safe_lshift_func_int8_t_s_u(l_1813, p_74)), 4))))))
                { /* block id: 883 */
                    uint32_t l_1822 = 1UL;
                    int32_t *l_1823 = &p_2641->g_36;
                    for (p_2641->g_453 = 0; (p_2641->g_453 != (-25)); p_2641->g_453 = safe_sub_func_uint16_t_u_u(p_2641->g_453, 4))
                    { /* block id: 886 */
                        int64_t l_1821 = (-8L);
                        l_1821 = ((*p_2641->g_964) = ((0x774DL > (safe_add_func_int8_t_s_s(p_74, (safe_mul_func_uint16_t_u_u(65529UL, (p_73 ^ ((p_74 && GROUP_DIVERGE(0, 1)) <= ((*p_2641->g_716) >= p_73)))))))) == p_2641->g_523));
                    }
                    l_1823 = func_78(l_1822, p_2641->g_576, &l_1755[0][0], (l_1757[7][0] , 0x2E16256B6B0CED67L), p_2641);
                    l_1757[3][4] = (l_1814[0][2] ^ (safe_unary_minus_func_uint16_t_u((((*l_1823) & p_74) < (0L != FAKE_DIVERGE(p_2641->group_2_offset, get_group_id(2), 10))))));
                }
                else
                { /* block id: 892 */
                    uint64_t l_1829 = 0x38C29DC38B112026L;
                    int32_t l_1841 = 0x734E2E0FL;
                    int32_t l_1843 = 0x61B460D5L;
                    int32_t l_1845 = 0x22F747EAL;
                    int32_t l_1846[8] = {0x41AABB77L,0x41AABB77L,0x41AABB77L,0x41AABB77L,0x41AABB77L,0x41AABB77L,0x41AABB77L,0x41AABB77L};
                    int32_t l_1868 = 0L;
                    int i;
                    (*l_1756) = ((safe_sub_func_int16_t_s_s((safe_sub_func_int64_t_s_s((l_1829 , 1L), 18446744073709551609UL)), (safe_lshift_func_uint8_t_u_s(GROUP_DIVERGE(1, 1), (p_73 != (*p_2641->g_1715)))))) , l_1782[1][0][0]);
                    p_2641->g_1832[1]--;
                    if (p_74)
                    { /* block id: 895 */
                        int32_t l_1835[6] = {0x21F5A51AL,0x3AF57A3BL,0x21F5A51AL,0x21F5A51AL,0x3AF57A3BL,0x21F5A51AL};
                        int32_t l_1836 = (-1L);
                        int32_t l_1837 = 0x20C85CF4L;
                        int32_t l_1838 = 0x6C2E0CF5L;
                        int32_t l_1842 = 7L;
                        int32_t l_1844 = 0L;
                        int32_t l_1847 = (-8L);
                        int32_t l_1848[1];
                        int i;
                        for (i = 0; i < 1; i++)
                            l_1848[i] = 2L;
                        l_1757[7][0] = 0x0D0BBFAEL;
                        if (p_74)
                            break;
                        ++l_1849;
                        l_1846[7] = (0x99L & 1UL);
                    }
                    else
                    { /* block id: 900 */
                        uint16_t *l_1867 = &p_2641->g_551;
                        int32_t l_1869 = 0x2ADE4A58L;
                        int32_t l_1870 = 0L;
                        l_1870 = (l_1869 = (~(safe_mod_func_uint16_t_u_u(((*l_1804) = (p_74 & l_1845)), (((safe_sub_func_int64_t_s_s((safe_mod_func_uint16_t_u_u(((safe_lshift_func_uint16_t_u_s(p_74, 3)) , ((*l_1867) ^= (((safe_mul_func_uint8_t_u_u((safe_sub_func_int64_t_s_s((p_73 == l_1864), ((void*)0 == l_1865[1]))), (p_74 >= (((-2L) && p_2641->g_451[4][2][4]) > p_2641->g_578)))) != p_74) & p_2641->g_132))), l_1868)), 0x3D31FC3C61D2E95CL)) ^ p_74) , p_73)))));
                        (*p_2641->g_964) ^= (safe_add_func_int8_t_s_s((p_74 , 0x73L), (9L ^ 7UL)));
                    }
                }
            }
            for (l_1780 = 20; (l_1780 != 8); l_1780--)
            { /* block id: 911 */
                uint16_t ***l_1877 = (void*)0;
                uint16_t **l_1878 = &p_2641->g_1744;
                int32_t l_1896 = (-1L);
                uint8_t l_1897 = 0UL;
                int8_t l_1923 = 0x5FL;
                int32_t l_1976 = 0x1752C867L;
                int32_t l_1977 = (-1L);
                int32_t l_1978 = 0L;
                int32_t l_1979 = 0x00037EE5L;
                int32_t l_1980 = (-10L);
                int32_t l_1981 = 0x5DF82981L;
                int32_t *l_1986 = &l_1977;
                if (l_1875)
                    break;
                if (((l_1878 = l_1876[8][4]) == l_1879[1][8]))
                { /* block id: 914 */
                    uint64_t l_1883 = 18446744073709551615UL;
                    int32_t l_1895 = 1L;
                    if ((l_1880 == (void*)0))
                    { /* block id: 915 */
                        int32_t l_1890 = 0x0200D092L;
                        (*l_1756) = func_78((safe_mul_func_int8_t_s_s(l_1883, ((safe_add_func_uint32_t_u_u((0x881D67FE13056C78L != 0x04A808FE067558B3L), (((safe_mod_func_uint16_t_u_u((((!(safe_rshift_func_uint8_t_u_s(p_74, 3))) < (!l_1890)) != (l_1895 |= ((safe_add_func_int64_t_s_s(((safe_mod_func_int64_t_s_s(5L, p_2641->g_4)) < ((*p_2641->g_1715) = (p_73 = l_1758))), 0x58EC0103C393CDE9L)) > 18446744073709551606UL))), p_74)) >= l_1896) , 0x84DF7A92L))) > 0x2DC010D9DD1BAEC0L))), p_2641->g_523, &l_1782[0][1][1], l_1896, p_2641);
                        l_1897--;
                    }
                    else
                    { /* block id: 921 */
                        int64_t l_1924 = 1L;
                        (*p_2641->g_964) &= ((safe_add_func_uint32_t_u_u(((safe_mod_func_uint64_t_u_u((safe_sub_func_uint8_t_u_u(((safe_add_func_int32_t_s_s((safe_lshift_func_int8_t_s_s(0x33L, 4)), ((p_73 , 0xC5D9L) && ((0x52FCFA09L >= (safe_rshift_func_uint8_t_u_s((((safe_add_func_uint8_t_u_u(p_2641->g_1914, (((((((l_1916 ^= (l_1896 |= (p_2641->g_1915 = (0xE779DA6E5C4715A4L <= GROUP_DIVERGE(1, 1))))) | (safe_mod_func_int8_t_s_s(((p_73 && (p_73 >= (safe_div_func_int8_t_s_s((safe_lshift_func_int16_t_s_s((l_1895 = l_1757[7][0]), 3)), FAKE_DIVERGE(p_2641->group_1_offset, get_group_id(1), 10))))) & 0UL), p_74))) & p_73) , 65535UL) | l_1897) != GROUP_DIVERGE(1, 1)) , 1UL))) < 1L) && p_73), l_1923))) <= (*p_2641->g_716))))) == (-4L)), FAKE_DIVERGE(p_2641->global_0_offset, get_global_id(0), 10))), l_1924)) | 0UL), 8UL)) > GROUP_DIVERGE(0, 1));
                    }
                    for (l_1895 = 2; (l_1895 <= 6); l_1895 += 1)
                    { /* block id: 930 */
                        uint64_t l_1925 = 0xBC1B99DA1B10BFE3L;
                        l_1925++;
                        return p_73;
                    }
                    l_1895 = (safe_rshift_func_int8_t_s_s(((*p_2641->g_1715) &= l_1758), 7));
                }
                else
                { /* block id: 936 */
                    int8_t l_1948 = (-7L);
                    int32_t l_1949 = 0x58979476L;
                    l_1930[4][0][1] = (p_2641->g_551 <= 0x447B9E94D02D65ADL);
                    for (p_2641->g_1914 = (-22); (p_2641->g_1914 < (-24)); p_2641->g_1914 = safe_sub_func_uint16_t_u_u(p_2641->g_1914, 9))
                    { /* block id: 940 */
                        int32_t l_1947 = 0L;
                        int64_t *l_1950 = &l_1875;
                        uint8_t l_1952 = 1UL;
                        uint64_t *l_1953 = &l_1759;
                        int32_t **l_1974 = &p_2641->g_122[6];
                        l_1949 = (((safe_rshift_func_uint8_t_u_u(p_74, (safe_rshift_func_int16_t_s_u((*p_2641->g_716), 7)))) > (safe_lshift_func_int16_t_s_s((l_1896 || (safe_mod_func_uint64_t_u_u(((*l_1953) = ((((GROUP_DIVERGE(1, 1) || ((FAKE_DIVERGE(p_2641->global_1_offset, get_global_id(1), 10) <= l_1896) != ((safe_rshift_func_uint8_t_u_u((safe_add_func_uint8_t_u_u((((p_74 || ((l_1757[7][0] == (*p_2641->g_716)) != (((((*l_1950) |= (p_73 <= ((((((l_1948 = ((*p_2641->g_1715) ^= (safe_rshift_func_uint16_t_u_u((((0x08L != GROUP_DIVERGE(2, 1)) != l_1947) , 9UL), p_73)))) == 0x57L) < l_1923) , p_73) > l_1949) >= 0UL))) && 0L) , p_2641->g_1613) | p_73))) , 9UL) || l_1951), l_1849)), l_1949)) & l_1952))) , l_1923) < 2UL) & p_73)), 18446744073709551608UL))), 10))) , l_1780);
                        l_1949 |= ((safe_lshift_func_int16_t_s_s((p_2641->g_49 , (((safe_div_func_uint8_t_u_u((safe_lshift_func_uint8_t_u_u(((((+(l_1755[0][2] != ((*l_1880) = func_78(p_74, (safe_mul_func_uint16_t_u_u(((safe_add_func_uint16_t_u_u(((p_2641->g_1967 = (safe_div_func_int8_t_s_s(l_1966[3], (*p_2641->g_1715)))) >= ((p_2641->g_1613 |= (((((*l_1866) = (safe_unary_minus_func_int16_t_s(((~((0UL <= (safe_add_func_uint8_t_u_u(253UL, ((safe_lshift_func_int8_t_s_u(((((*p_2641->g_1715) != ((void*)0 != l_1973)) & p_2641->g_1523) < p_73), 3)) , p_73)))) & 0x4A67L)) <= p_73)))) ^ p_74) == l_1864) , 0x2B74988DB1DBA8B5L)) ^ 0x67AC453E1709528BL)), (*p_2641->g_716))) , l_1757[7][5]), GROUP_DIVERGE(1, 1))), l_1974, p_2641->g_551, p_2641)))) | (-6L)) < FAKE_DIVERGE(p_2641->local_2_offset, get_local_id(2), 10)) & p_73), 7)), p_73)) | l_1975) & 4294967295UL)), 10)) | p_2641->g_36);
                    }
                }
                p_2641->g_1982++;
                l_1986 = ((*l_1756) = l_1985[2]);
            }
            (*p_2641->g_646) = (safe_rshift_func_int8_t_s_u(p_74, p_73));
        }
        l_1989 = ((*p_2641->g_964) = p_74);
    }
    return p_2641->g_851;
}


/* ------------------------------------------ */
/* 
 * reads : p_2641->g_178 p_2641->g_179 p_2641->g_249 p_2641->g_145 p_2641->g_49 p_2641->g_485 p_2641->g_9 p_2641->g_132 p_2641->g_341 p_2641->g_115 p_2641->g_167 p_2641->g_400 p_2641->g_258 p_2641->g_451 p_2641->g_551 p_2641->g_570 p_2641->g_14 p_2641->g_146 p_2641->g_147 p_2641->g_578 p_2641->g_523 p_2641->g_453 p_2641->g_646 p_2641->g_36 p_2641->g_751 p_2641->g_716 p_2641->g_23 p_2641->g_351 p_2641->g_805 p_2641->g_807 p_2641->g_737 p_2641->g_851 p_2641->g_830 p_2641->g_878 p_2641->g_887 p_2641->g_740 p_2641->g_2 p_2641->g_964 p_2641->g_3 p_2641->g_1163 p_2641->g_1293 p_2641->g_1322 p_2641->g_319 p_2641->g_888 p_2641->g_4 p_2641->g_1378 p_2641->g_576 p_2641->g_1523 p_2641->g_1415 p_2641->g_1323 p_2641->g_1613
 * writes: p_2641->g_115 p_2641->g_145 p_2641->g_258 p_2641->g_451 p_2641->g_523 p_2641->g_132 p_2641->g_341 p_2641->g_551 p_2641->g_249 p_2641->g_578 p_2641->g_716 p_2641->g_485 p_2641->g_807 p_2641->g_36 p_2641->g_851 p_2641->g_167 p_2641->g_872 p_2641->g_878 p_2641->g_887 p_2641->g_179 p_2641->g_453 p_2641->g_1074 p_2641->g_740 p_2641->g_400 p_2641->g_1163 p_2641->g_830 p_2641->g_576 p_2641->g_1415 p_2641->g_122 p_2641->g_484 p_2641->g_1523 p_2641->g_351 p_2641->g_1714 p_2641->g_1744
 */
uint32_t * func_75(uint32_t * p_76, int32_t ** p_77, struct S0 * p_2641)
{ /* block id: 261 */
    int8_t *l_487[3][8] = {{&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132},{&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132},{&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132}};
    int8_t **l_486 = &l_487[2][1];
    int8_t *l_489 = &p_2641->g_132;
    int8_t **l_488 = &l_489;
    int32_t l_492 = 0L;
    int32_t l_497 = 0x65383A0AL;
    int16_t *l_506 = &p_2641->g_145;
    int32_t l_507 = 0x7A9FB95CL;
    int64_t l_508 = 0x6D5236CECE008DADL;
    uint8_t *l_509 = &p_2641->g_258;
    int32_t l_541 = 1L;
    uint32_t *l_545 = &p_2641->g_23;
    int8_t l_549 = 1L;
    int32_t l_550[4];
    uint64_t l_610 = 0xF873658DC2A1A3E3L;
    int16_t l_613 = 0x6A1BL;
    int32_t *l_659 = &p_2641->g_453;
    int32_t **l_658 = &l_659;
    int32_t ***l_657 = &l_658;
    int16_t l_793 = (-1L);
    uint16_t ****l_837 = &p_2641->g_439;
    uint16_t ****l_839 = (void*)0;
    uint32_t l_881 = 4294967295UL;
    int64_t l_903 = 0L;
    uint8_t l_947 = 0xECL;
    int32_t l_978 = 2L;
    uint64_t l_1130 = 2UL;
    int8_t l_1131 = 1L;
    int16_t l_1241[3][5] = {{1L,(-1L),1L,1L,(-1L)},{1L,(-1L),1L,1L,(-1L)},{1L,(-1L),1L,1L,(-1L)}};
    uint32_t ***l_1254 = (void*)0;
    int32_t **l_1307 = &p_2641->g_122[4];
    int64_t l_1326 = (-3L);
    uint16_t l_1383 = 0x3A45L;
    int32_t ****l_1438 = &l_657;
    int32_t *****l_1437[2][9] = {{&l_1438,&l_1438,&l_1438,&l_1438,&l_1438,&l_1438,&l_1438,&l_1438,&l_1438},{&l_1438,&l_1438,&l_1438,&l_1438,&l_1438,&l_1438,&l_1438,&l_1438,&l_1438}};
    int32_t ******l_1436 = &l_1437[1][0];
    int64_t l_1455 = 1L;
    uint16_t ****l_1478 = &p_2641->g_439;
    int64_t *l_1521 = &p_2641->g_851;
    uint8_t l_1526 = 0xF0L;
    uint16_t **l_1536[7][4][9] = {{{&p_2641->g_179,&p_2641->g_179,(void*)0,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,(void*)0,&p_2641->g_179},{&p_2641->g_179,&p_2641->g_179,(void*)0,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,(void*)0,&p_2641->g_179},{&p_2641->g_179,&p_2641->g_179,(void*)0,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,(void*)0,&p_2641->g_179},{&p_2641->g_179,&p_2641->g_179,(void*)0,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,(void*)0,&p_2641->g_179}},{{&p_2641->g_179,&p_2641->g_179,(void*)0,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,(void*)0,&p_2641->g_179},{&p_2641->g_179,&p_2641->g_179,(void*)0,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,(void*)0,&p_2641->g_179},{&p_2641->g_179,&p_2641->g_179,(void*)0,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,(void*)0,&p_2641->g_179},{&p_2641->g_179,&p_2641->g_179,(void*)0,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,(void*)0,&p_2641->g_179}},{{&p_2641->g_179,&p_2641->g_179,(void*)0,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,(void*)0,&p_2641->g_179},{&p_2641->g_179,&p_2641->g_179,(void*)0,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,(void*)0,&p_2641->g_179},{&p_2641->g_179,&p_2641->g_179,(void*)0,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,(void*)0,&p_2641->g_179},{&p_2641->g_179,&p_2641->g_179,(void*)0,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,(void*)0,&p_2641->g_179}},{{&p_2641->g_179,&p_2641->g_179,(void*)0,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,(void*)0,&p_2641->g_179},{&p_2641->g_179,&p_2641->g_179,(void*)0,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,(void*)0,&p_2641->g_179},{&p_2641->g_179,&p_2641->g_179,(void*)0,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,(void*)0,&p_2641->g_179},{&p_2641->g_179,&p_2641->g_179,(void*)0,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,(void*)0,&p_2641->g_179}},{{&p_2641->g_179,&p_2641->g_179,(void*)0,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,(void*)0,&p_2641->g_179},{&p_2641->g_179,&p_2641->g_179,(void*)0,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,(void*)0,&p_2641->g_179},{&p_2641->g_179,&p_2641->g_179,(void*)0,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,(void*)0,&p_2641->g_179},{&p_2641->g_179,&p_2641->g_179,(void*)0,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,(void*)0,&p_2641->g_179}},{{&p_2641->g_179,&p_2641->g_179,(void*)0,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,(void*)0,&p_2641->g_179},{&p_2641->g_179,&p_2641->g_179,(void*)0,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,(void*)0,&p_2641->g_179},{&p_2641->g_179,&p_2641->g_179,(void*)0,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,(void*)0,&p_2641->g_179},{&p_2641->g_179,&p_2641->g_179,(void*)0,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,(void*)0,&p_2641->g_179}},{{&p_2641->g_179,&p_2641->g_179,(void*)0,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,(void*)0,&p_2641->g_179},{&p_2641->g_179,&p_2641->g_179,(void*)0,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,(void*)0,&p_2641->g_179},{&p_2641->g_179,&p_2641->g_179,(void*)0,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,(void*)0,&p_2641->g_179},{&p_2641->g_179,&p_2641->g_179,(void*)0,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,&p_2641->g_179,(void*)0,&p_2641->g_179}}};
    int32_t l_1551 = (-10L);
    int32_t l_1564 = (-2L);
    uint32_t l_1593 = 4294967295UL;
    int32_t l_1638[2];
    uint16_t *l_1743 = &l_1383;
    uint64_t l_1750 = 3UL;
    int i, j, k;
    for (i = 0; i < 4; i++)
        l_550[i] = (-3L);
    for (i = 0; i < 2; i++)
        l_1638[i] = (-10L);
    if ((((*l_509) = (((*l_488) = ((*l_486) = &p_2641->g_132)) == (((safe_div_func_int64_t_s_s((((**p_2641->g_178) = l_492) ^ ((safe_div_func_int32_t_s_s((safe_mul_func_uint16_t_u_u((l_497 |= l_492), (safe_sub_func_int64_t_s_s((+((((l_507 = ((l_492 > (safe_add_func_int8_t_s_s((((*l_506) ^= ((safe_add_func_int8_t_s_s((safe_div_func_int32_t_s_s((5UL != 0x27L), p_2641->g_249)), 0x62L)) && (0x84DE8212L >= l_492))) && GROUP_DIVERGE(0, 1)), p_2641->g_49))) , (-10L))) > l_492) , GROUP_DIVERGE(1, 1)) ^ (-9L))), l_492)))), l_508)) , 0x68B6L)), l_508)) , FAKE_DIVERGE(p_2641->local_1_offset, get_local_id(1), 10)) , (void*)0))) || l_507))
    { /* block id: 269 */
        uint16_t l_518 = 0UL;
        uint64_t *l_521 = &p_2641->g_451[4][2][4];
        uint64_t *l_522 = &p_2641->g_523;
        uint16_t l_538 = 0xD766L;
        int64_t *l_539[8] = {&p_2641->g_341,&p_2641->g_341,&p_2641->g_341,&p_2641->g_341,&p_2641->g_341,&p_2641->g_341,&p_2641->g_341,&p_2641->g_341};
        int32_t *l_540[2];
        int i;
        for (i = 0; i < 2; i++)
            l_540[i] = (void*)0;
        l_541 = ((**p_77) || (((l_497 = ((((safe_add_func_int16_t_s_s((((safe_lshift_func_int16_t_s_u((safe_mod_func_int8_t_s_s((safe_mul_func_uint8_t_u_u(l_518, (safe_lshift_func_int16_t_s_u((((*l_522) = ((*l_521) = 1UL)) , ((l_492 ^= (l_507 = ((safe_add_func_uint64_t_u_u(18446744073709551615UL, (((safe_add_func_uint16_t_u_u(1UL, ((safe_add_func_int64_t_s_s((p_2641->g_341 |= (safe_div_func_int32_t_s_s((safe_mod_func_uint8_t_u_u((safe_sub_func_int16_t_s_s((((*l_489) |= (l_508 < ((p_2641->g_49 <= (safe_mul_func_uint16_t_u_u(l_538, l_538))) , l_538))) , l_518), 0x3490L)), FAKE_DIVERGE(p_2641->local_0_offset, get_local_id(0), 10))), (**p_77)))), l_518)) <= GROUP_DIVERGE(0, 1)))) | 4294967288UL) , l_508))) , l_538))) && 0xDF692B8BL)), (**p_2641->g_178))))), l_497)), l_497)) | 0x359B0A2AL) & 0xF7661EF798A2CE5AL), 1L)) && p_2641->g_167) , 255UL) >= 0x50L)) ^ FAKE_DIVERGE(p_2641->global_0_offset, get_global_id(0), 10)) <= p_2641->g_400));
    }
    else
    { /* block id: 278 */
        uint32_t l_544[8];
        int32_t *l_546 = &l_497;
        int32_t *l_547 = (void*)0;
        int32_t *l_548[2][5] = {{&p_2641->g_36,(void*)0,(void*)0,(void*)0,&p_2641->g_36},{&p_2641->g_36,(void*)0,(void*)0,(void*)0,&p_2641->g_36}};
        int i, j;
        for (i = 0; i < 8; i++)
            l_544[i] = 0xD34FABDDL;
        for (p_2641->g_258 = (-5); (p_2641->g_258 != 52); p_2641->g_258 = safe_add_func_int8_t_s_s(p_2641->g_258, 2))
        { /* block id: 281 */
            for (p_2641->g_341 = 5; (p_2641->g_341 >= 0); p_2641->g_341 -= 1)
            { /* block id: 284 */
                l_544[5] |= 0x7F5F17E1L;
                for (l_507 = 5; (l_507 >= 0); l_507 -= 1)
                { /* block id: 288 */
                    if ((**p_77))
                        break;
                    for (l_497 = 0; (l_497 <= 5); l_497 += 1)
                    { /* block id: 292 */
                        return p_76;
                    }
                    for (p_2641->g_145 = 1; (p_2641->g_145 <= 4); p_2641->g_145 += 1)
                    { /* block id: 297 */
                        int i, j, k;
                        if (p_2641->g_451[(l_507 + 4)][p_2641->g_145][p_2641->g_145])
                            break;
                        if (l_507)
                            continue;
                        return l_545;
                    }
                }
            }
        }
        p_2641->g_551--;
    }
    if ((**p_77))
    { /* block id: 307 */
        uint32_t l_554 = 0x041C6CAAL;
        uint32_t *l_579 = &p_2641->g_351;
        int32_t *l_593 = &l_507;
        int32_t ***l_661 = &l_658;
        uint64_t l_701 = 0UL;
        int32_t l_730 = 0x4F0A2202L;
        int32_t l_733 = 0L;
        int32_t l_736 = 0x387F5B92L;
        int32_t l_774 = 0x259D2164L;
        int32_t l_775 = 0L;
        int8_t **l_795 = &l_489;
        int16_t l_828 = 0x7576L;
        int32_t l_831 = 0x0435DEDBL;
        int32_t l_832 = 0L;
        int32_t l_833[6];
        uint16_t l_922 = 0xCE43L;
        int i;
        for (i = 0; i < 6; i++)
            l_833[i] = 0x6CD5D3C5L;
        for (l_508 = 7; (l_508 >= 0); l_508 -= 1)
        { /* block id: 310 */
            uint32_t *l_557 = &p_2641->g_23;
            --l_554;
            for (p_2641->g_258 = 0; (p_2641->g_258 <= 4); p_2641->g_258 += 1)
            { /* block id: 314 */
                return l_557;
            }
        }
        if ((l_554 || (safe_div_func_int32_t_s_s((l_554 < 0x3695L), ((safe_sub_func_uint32_t_u_u(4294967295UL, (((safe_lshift_func_int8_t_s_s((safe_mul_func_uint8_t_u_u(((safe_rshift_func_int8_t_s_s(((*l_489) |= l_554), 0)) < (safe_sub_func_int16_t_s_s(p_2641->g_570, ((*l_506) ^= (safe_sub_func_int16_t_s_s((l_554 > l_497), l_507)))))), l_554)), 1)) && p_2641->g_14) > 0x2EL))) , p_2641->g_249)))))
        { /* block id: 320 */
            int32_t l_584[5] = {(-4L),(-4L),(-4L),(-4L),(-4L)};
            uint8_t **l_592[6];
            uint8_t ***l_591 = &l_592[2];
            int16_t l_599 = 1L;
            int32_t *l_631 = (void*)0;
            int32_t **l_630 = &l_631;
            int32_t ***l_629 = &l_630;
            uint16_t **l_645 = &p_2641->g_179;
            int32_t l_656 = 0x4B29F8A6L;
            int32_t l_700 = 1L;
            int32_t l_703[4][8][7] = {{{1L,0x5245485FL,8L,0x3720CC9AL,1L,0L,0x159F4205L},{1L,0x5245485FL,8L,0x3720CC9AL,1L,0L,0x159F4205L},{1L,0x5245485FL,8L,0x3720CC9AL,1L,0L,0x159F4205L},{1L,0x5245485FL,8L,0x3720CC9AL,1L,0L,0x159F4205L},{1L,0x5245485FL,8L,0x3720CC9AL,1L,0L,0x159F4205L},{1L,0x5245485FL,8L,0x3720CC9AL,1L,0L,0x159F4205L},{1L,0x5245485FL,8L,0x3720CC9AL,1L,0L,0x159F4205L},{1L,0x5245485FL,8L,0x3720CC9AL,1L,0L,0x159F4205L}},{{1L,0x5245485FL,8L,0x3720CC9AL,1L,0L,0x159F4205L},{1L,0x5245485FL,8L,0x3720CC9AL,1L,0L,0x159F4205L},{1L,0x5245485FL,8L,0x3720CC9AL,1L,0L,0x159F4205L},{1L,0x5245485FL,8L,0x3720CC9AL,1L,0L,0x159F4205L},{1L,0x5245485FL,8L,0x3720CC9AL,1L,0L,0x159F4205L},{1L,0x5245485FL,8L,0x3720CC9AL,1L,0L,0x159F4205L},{1L,0x5245485FL,8L,0x3720CC9AL,1L,0L,0x159F4205L},{1L,0x5245485FL,8L,0x3720CC9AL,1L,0L,0x159F4205L}},{{1L,0x5245485FL,8L,0x3720CC9AL,1L,0L,0x159F4205L},{1L,0x5245485FL,8L,0x3720CC9AL,1L,0L,0x159F4205L},{1L,0x5245485FL,8L,0x3720CC9AL,1L,0L,0x159F4205L},{1L,0x5245485FL,8L,0x3720CC9AL,1L,0L,0x159F4205L},{1L,0x5245485FL,8L,0x3720CC9AL,1L,0L,0x159F4205L},{1L,0x5245485FL,8L,0x3720CC9AL,1L,0L,0x159F4205L},{1L,0x5245485FL,8L,0x3720CC9AL,1L,0L,0x159F4205L},{1L,0x5245485FL,8L,0x3720CC9AL,1L,0L,0x159F4205L}},{{1L,0x5245485FL,8L,0x3720CC9AL,1L,0L,0x159F4205L},{1L,0x5245485FL,8L,0x3720CC9AL,1L,0L,0x159F4205L},{1L,0x5245485FL,8L,0x3720CC9AL,1L,0L,0x159F4205L},{1L,0x5245485FL,8L,0x3720CC9AL,1L,0L,0x159F4205L},{1L,0x5245485FL,8L,0x3720CC9AL,1L,0L,0x159F4205L},{1L,0x5245485FL,8L,0x3720CC9AL,1L,0L,0x159F4205L},{1L,0x5245485FL,8L,0x3720CC9AL,1L,0L,0x159F4205L},{1L,0x5245485FL,8L,0x3720CC9AL,1L,0L,0x159F4205L}}};
            uint8_t l_756 = 255UL;
            uint32_t l_776 = 0xDCC3A614L;
            int8_t **l_785 = &l_487[2][4];
            uint64_t *l_802[10] = {&p_2641->g_523,&p_2641->g_451[4][2][4],&p_2641->g_523,&p_2641->g_523,&p_2641->g_451[4][2][4],&p_2641->g_523,&p_2641->g_523,&p_2641->g_451[4][2][4],&p_2641->g_523,&p_2641->g_523};
            uint32_t **l_804 = &l_579;
            int32_t * volatile **l_809 = &p_2641->g_807;
            int i, j, k;
            for (i = 0; i < 6; i++)
                l_592[i] = &l_509;
            for (p_2641->g_551 = 0; (p_2641->g_551 <= 4); p_2641->g_551 += 1)
            { /* block id: 323 */
                uint64_t l_594 = 18446744073709551614UL;
                int64_t *l_636 = &p_2641->g_570;
                int8_t **l_652[10] = {&l_489,&l_489,&l_489,&l_489,&l_489,&l_489,&l_489,&l_489,&l_489,&l_489};
                int32_t ****l_660 = &l_629;
                int32_t ***l_662 = &l_630;
                uint16_t l_702 = 0x1288L;
                int16_t *l_715 = &l_599;
                int32_t l_731 = 1L;
                int32_t l_732[2][9] = {{0L,(-1L),0L,0L,(-1L),0L,0L,(-1L),0L},{0L,(-1L),0L,0L,(-1L),0L,0L,(-1L),0L}};
                int i, j;
                for (p_2641->g_115 = 0; (p_2641->g_115 <= 4); p_2641->g_115 += 1)
                { /* block id: 326 */
                    int32_t *l_575 = &p_2641->g_576;
                    int32_t *l_577 = &p_2641->g_578;
                    uint32_t **l_580 = &l_579;
                    int32_t l_581 = 0L;
                    uint8_t l_611 = 246UL;
                    int32_t l_643[9] = {1L,1L,1L,1L,1L,1L,1L,1L,1L};
                    int32_t l_644 = 0x7A223983L;
                    uint64_t *l_651 = &p_2641->g_523;
                    int i;
                    for (p_2641->g_249 = 0; (p_2641->g_249 <= 4); p_2641->g_249 += 1)
                    { /* block id: 329 */
                        return p_76;
                    }
                }
                (*l_593) |= (((*l_660) = l_657) != (l_661 = (l_662 = l_661)));
                (*l_593) = ((*p_2641->g_146) != &p_76);
                for (p_2641->g_578 = 3; (p_2641->g_578 >= 0); p_2641->g_578 -= 1)
                { /* block id: 376 */
                    uint32_t l_667[2][10] = {{6UL,0xF8AA2D2DL,0xF8AA2D2DL,6UL,6UL,0xF8AA2D2DL,0xF8AA2D2DL,6UL,6UL,0xF8AA2D2DL},{6UL,0xF8AA2D2DL,0xF8AA2D2DL,6UL,6UL,0xF8AA2D2DL,0xF8AA2D2DL,6UL,6UL,0xF8AA2D2DL}};
                    uint16_t ***l_711 = &l_645;
                    int32_t l_724 = 1L;
                    int32_t l_734 = 0x505941A5L;
                    int32_t l_735 = 0x45FE3DC2L;
                    int i, j;
                    l_703[3][0][4] = ((safe_div_func_int64_t_s_s((safe_lshift_func_uint16_t_u_u(l_667[0][5], 8)), ((*l_593) && (-4L)))) > (safe_lshift_func_uint16_t_u_s(((safe_rshift_func_int16_t_s_s((safe_add_func_uint32_t_u_u((safe_mul_func_int8_t_s_s(l_584[1], (safe_div_func_uint32_t_u_u(((((!(((safe_lshift_func_uint8_t_u_s((safe_add_func_int8_t_s_s(((safe_mul_func_int16_t_s_s(((safe_mul_func_uint8_t_u_u(249UL, ((safe_div_func_uint64_t_u_u((0x13L < (safe_mod_func_uint16_t_u_u(FAKE_DIVERGE(p_2641->group_1_offset, get_group_id(1), 10), (safe_sub_func_uint64_t_u_u(GROUP_DIVERGE(2, 1), l_656))))), (-2L))) , (safe_lshift_func_int16_t_s_s(((safe_add_func_int16_t_s_s((((safe_mul_func_int16_t_s_s((((l_497 = (safe_mul_func_int8_t_s_s(((l_656 = ((*l_489) = ((void*)0 != &p_2641->g_309[1][4][3]))) , l_584[2]), FAKE_DIVERGE(p_2641->global_1_offset, get_global_id(1), 10)))) <= l_549) | p_2641->g_523), (*l_593))) | 18446744073709551613UL) , p_2641->g_453), l_594)) && l_508), 6))))) | (*p_2641->g_646)), l_594)) >= 3UL), 0x0EL)), l_667[1][6])) , l_667[1][7]) <= l_700)) != l_701) <= 1UL) & 1UL), l_700)))), l_584[1])), l_594)) >= l_594), l_702)));
                    (*l_593) = (safe_unary_minus_func_int32_t_s(((safe_mul_func_uint16_t_u_u(65535UL, (safe_div_func_uint8_t_u_u((safe_rshift_func_uint16_t_u_s(((*p_2641->g_179) |= (GROUP_DIVERGE(2, 1) || ((void*)0 != l_711))), 7)), p_2641->g_14)))) | ((safe_unary_minus_func_int64_t_s((safe_rshift_func_int16_t_s_s((0x2B5DL > (l_715 != (p_2641->g_716 = &p_2641->g_145))), ((*l_715) = ((*l_506) ^= 0x56B1L)))))) > (safe_sub_func_uint16_t_u_u(l_497, l_584[2]))))));
                }
            }
            if ((1L > l_507))
            { /* block id: 404 */
                uint32_t l_747 = 4294967291UL;
                uint32_t l_748 = 0x41448065L;
                int32_t ****l_750 = &l_657;
                int32_t *****l_749 = &l_750;
                uint64_t *l_753 = &l_610;
                int32_t *l_757 = &l_550[0];
                int32_t *l_758 = &l_736;
                int32_t *l_759 = &l_703[3][0][4];
                int32_t *l_760 = &l_730;
                int32_t *l_761 = &l_703[3][0][4];
                int32_t *l_762 = &l_733;
                int32_t *l_763 = &l_736;
                int32_t *l_764 = &l_733;
                int32_t *l_765 = (void*)0;
                int32_t *l_766 = &l_492;
                int32_t *l_767 = &l_730;
                int32_t *l_768 = (void*)0;
                int32_t *l_769 = (void*)0;
                int32_t *l_770 = &l_492;
                int32_t *l_771 = &l_736;
                int32_t *l_772[6] = {&l_550[3],&l_733,&l_550[3],&l_550[3],&l_733,&l_550[3]};
                int32_t l_773 = (-1L);
                int i;
                (*p_77) = &l_550[1];
                (*p_2641->g_485) = (((safe_rshift_func_uint8_t_u_u(l_584[1], ((safe_rshift_func_int8_t_s_u(l_599, ((safe_unary_minus_func_int64_t_s(((l_747 = ((***l_591) = 246UL)) == (FAKE_DIVERGE(p_2641->local_0_offset, get_local_id(0), 10) || (l_748 || (((*l_749) = &l_661) != p_2641->g_751)))))) <= (((*l_593) || (!(((((--(*l_753)) <= (l_541 >= 0x18L)) , GROUP_DIVERGE(2, 1)) , l_756) , 0UL))) & (*p_2641->g_716))))) ^ 0x667BL))) ^ p_2641->g_132) , 6L);
                --l_776;
            }
            else
            { /* block id: 412 */
                int32_t l_790 = (-3L);
                uint16_t *l_791 = &p_2641->g_551;
                int32_t ****l_792 = &l_661;
                int64_t *l_794 = &l_508;
                int32_t *l_796 = &l_733;
                int32_t l_797 = 0x33D6ABAEL;
                uint64_t *l_803 = &p_2641->g_451[8][4][4];
                (*l_593) &= (p_2641->g_23 & ((safe_lshift_func_uint8_t_u_s((l_584[1] & (0L != ((***l_591) = ((safe_add_func_int16_t_s_s(((safe_lshift_func_int8_t_s_s((l_785 == ((&l_630 != ((*l_792) = ((((*l_791) = ((*p_2641->g_179) = ((**p_77) , ((l_610 , (p_2641->g_551 <= ((safe_sub_func_int32_t_s_s((safe_div_func_int16_t_s_s((-1L), 65535UL)), 0x8054A44FL)) >= l_599))) >= l_790)))) <= l_703[1][3][0]) , (void*)0))) , (void*)0)), l_790)) > l_584[1]), (*p_2641->g_716))) && FAKE_DIVERGE(p_2641->group_1_offset, get_group_id(1), 10))))), l_793)) || 0x71D8L));
                if (l_508)
                    goto lbl_806;
                (*l_796) &= (p_2641->g_453 ^ (FAKE_DIVERGE(p_2641->local_1_offset, get_local_id(1), 10) ^ (GROUP_DIVERGE(2, 1) == ((((*l_593) ^= (((!((l_645 == l_645) , p_2641->g_351)) > (p_2641->g_570 , ((*l_794) = ((0UL > l_703[0][3][0]) >= l_584[2])))) != ((((l_795 == l_795) | (**p_77)) , &p_2641->g_752) != l_792))) | FAKE_DIVERGE(p_2641->global_2_offset, get_global_id(2), 10)) , 0x47F7EB556E30C1B2L))));
lbl_806:
                (*p_77) = func_78((l_797 >= (((safe_add_func_uint8_t_u_u((((safe_sub_func_int8_t_s_s(((*l_796) , (((l_803 = l_802[6]) != (void*)0) ^ ((void*)0 == &p_2641->g_178))), (((void*)0 != l_804) || ((((0x7325L ^ p_2641->g_805) < 0UL) >= FAKE_DIVERGE(p_2641->local_1_offset, get_local_id(1), 10)) , p_2641->g_115)))) != 65528UL) | (*p_2641->g_716)), (*l_593))) && (*p_2641->g_179)) < 0x7FD3L)), (*l_796), p_77, l_549, p_2641);
                l_796 = &l_656;
            }
            (*l_809) = p_2641->g_807;
        }
        else
        { /* block id: 427 */
            int64_t l_810[10][10] = {{0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L},{0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L},{0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L},{0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L},{0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L},{0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L},{0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L},{0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L},{0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L},{0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L,0x0322A56316E78A88L}};
            int32_t l_822 = 0L;
            int32_t l_825 = 0L;
            int32_t l_826 = (-2L);
            int32_t l_829[6] = {1L,1L,1L,1L,1L,1L};
            uint32_t *l_891 = &p_2641->g_23;
            uint32_t l_948[9] = {4294967294UL,4294967294UL,4294967294UL,4294967294UL,4294967294UL,4294967294UL,4294967294UL,4294967294UL,4294967294UL};
            int i, j;
            if ((l_810[1][8] <= (safe_mul_func_uint16_t_u_u((((((safe_mod_func_uint16_t_u_u(((*l_593) || (!18446744073709551610UL)), ((safe_lshift_func_int16_t_s_s(((*l_593) , l_497), (*l_593))) && ((((safe_mod_func_uint64_t_u_u(p_2641->g_453, p_2641->g_451[6][4][0])) ^ (*p_2641->g_716)) , (*l_593)) | GROUP_DIVERGE(1, 1))))) >= 0L) , 0x6DL) | 0x53L) <= p_2641->g_145), l_793))))
            { /* block id: 428 */
                int16_t l_823 = 0x7256L;
                int32_t l_824 = 0x12239F42L;
                int32_t l_827[6];
                uint16_t *****l_838[6][6][7] = {{{&l_837,&l_837,&l_837,&l_837,&l_837,(void*)0,&l_837},{&l_837,&l_837,&l_837,&l_837,&l_837,(void*)0,&l_837},{&l_837,&l_837,&l_837,&l_837,&l_837,(void*)0,&l_837},{&l_837,&l_837,&l_837,&l_837,&l_837,(void*)0,&l_837},{&l_837,&l_837,&l_837,&l_837,&l_837,(void*)0,&l_837},{&l_837,&l_837,&l_837,&l_837,&l_837,(void*)0,&l_837}},{{&l_837,&l_837,&l_837,&l_837,&l_837,(void*)0,&l_837},{&l_837,&l_837,&l_837,&l_837,&l_837,(void*)0,&l_837},{&l_837,&l_837,&l_837,&l_837,&l_837,(void*)0,&l_837},{&l_837,&l_837,&l_837,&l_837,&l_837,(void*)0,&l_837},{&l_837,&l_837,&l_837,&l_837,&l_837,(void*)0,&l_837},{&l_837,&l_837,&l_837,&l_837,&l_837,(void*)0,&l_837}},{{&l_837,&l_837,&l_837,&l_837,&l_837,(void*)0,&l_837},{&l_837,&l_837,&l_837,&l_837,&l_837,(void*)0,&l_837},{&l_837,&l_837,&l_837,&l_837,&l_837,(void*)0,&l_837},{&l_837,&l_837,&l_837,&l_837,&l_837,(void*)0,&l_837},{&l_837,&l_837,&l_837,&l_837,&l_837,(void*)0,&l_837},{&l_837,&l_837,&l_837,&l_837,&l_837,(void*)0,&l_837}},{{&l_837,&l_837,&l_837,&l_837,&l_837,(void*)0,&l_837},{&l_837,&l_837,&l_837,&l_837,&l_837,(void*)0,&l_837},{&l_837,&l_837,&l_837,&l_837,&l_837,(void*)0,&l_837},{&l_837,&l_837,&l_837,&l_837,&l_837,(void*)0,&l_837},{&l_837,&l_837,&l_837,&l_837,&l_837,(void*)0,&l_837},{&l_837,&l_837,&l_837,&l_837,&l_837,(void*)0,&l_837}},{{&l_837,&l_837,&l_837,&l_837,&l_837,(void*)0,&l_837},{&l_837,&l_837,&l_837,&l_837,&l_837,(void*)0,&l_837},{&l_837,&l_837,&l_837,&l_837,&l_837,(void*)0,&l_837},{&l_837,&l_837,&l_837,&l_837,&l_837,(void*)0,&l_837},{&l_837,&l_837,&l_837,&l_837,&l_837,(void*)0,&l_837},{&l_837,&l_837,&l_837,&l_837,&l_837,(void*)0,&l_837}},{{&l_837,&l_837,&l_837,&l_837,&l_837,(void*)0,&l_837},{&l_837,&l_837,&l_837,&l_837,&l_837,(void*)0,&l_837},{&l_837,&l_837,&l_837,&l_837,&l_837,(void*)0,&l_837},{&l_837,&l_837,&l_837,&l_837,&l_837,(void*)0,&l_837},{&l_837,&l_837,&l_837,&l_837,&l_837,(void*)0,&l_837},{&l_837,&l_837,&l_837,&l_837,&l_837,(void*)0,&l_837}}};
                int i, j, k;
                for (i = 0; i < 6; i++)
                    l_827[i] = 0x06BDF910L;
                for (l_793 = 0; (l_793 != (-1)); l_793 = safe_sub_func_int16_t_s_s(l_793, 5))
                { /* block id: 431 */
                    int32_t *l_821[5][7][2] = {{{&p_2641->g_4,&l_730},{&p_2641->g_4,&l_730},{&p_2641->g_4,&l_730},{&p_2641->g_4,&l_730},{&p_2641->g_4,&l_730},{&p_2641->g_4,&l_730},{&p_2641->g_4,&l_730}},{{&p_2641->g_4,&l_730},{&p_2641->g_4,&l_730},{&p_2641->g_4,&l_730},{&p_2641->g_4,&l_730},{&p_2641->g_4,&l_730},{&p_2641->g_4,&l_730},{&p_2641->g_4,&l_730}},{{&p_2641->g_4,&l_730},{&p_2641->g_4,&l_730},{&p_2641->g_4,&l_730},{&p_2641->g_4,&l_730},{&p_2641->g_4,&l_730},{&p_2641->g_4,&l_730},{&p_2641->g_4,&l_730}},{{&p_2641->g_4,&l_730},{&p_2641->g_4,&l_730},{&p_2641->g_4,&l_730},{&p_2641->g_4,&l_730},{&p_2641->g_4,&l_730},{&p_2641->g_4,&l_730},{&p_2641->g_4,&l_730}},{{&p_2641->g_4,&l_730},{&p_2641->g_4,&l_730},{&p_2641->g_4,&l_730},{&p_2641->g_4,&l_730},{&p_2641->g_4,&l_730},{&p_2641->g_4,&l_730},{&p_2641->g_4,&l_730}}};
                    uint64_t l_834 = 0x3CFA8209EF1F2608L;
                    int i, j, k;
                    l_834--;
                }
                if (((*l_593) = ((*p_2641->g_646) = (((l_839 = l_837) == ((((**l_488) = l_541) , FAKE_DIVERGE(p_2641->local_2_offset, get_local_id(2), 10)) , &p_2641->g_439)) != ((safe_lshift_func_int8_t_s_u((l_822 = (safe_rshift_func_uint8_t_u_u(((*l_593) , (p_2641->g_737[1][4][0] <= ((*l_593) ^ (safe_lshift_func_int8_t_s_u(((safe_lshift_func_int8_t_s_u(l_793, 5)) ^ ((**p_2641->g_178) | 5L)), p_2641->g_400))))), l_497))), 5)) , p_2641->g_451[9][1][3])))))
                { /* block id: 439 */
                    int64_t *l_850 = &p_2641->g_851;
                    int32_t l_856 = (-9L);
                    int32_t l_857 = 0x5E63BC18L;
                    int32_t *l_858 = (void*)0;
                    int32_t *l_859 = &l_829[2];
                    uint64_t *l_868 = (void*)0;
                    uint64_t *l_869 = &p_2641->g_167;
                    (*l_593) = (((*l_850) &= (((*l_593) && p_2641->g_578) == ((*l_489) ^= (safe_rshift_func_int8_t_s_s((-4L), 1))))) , (FAKE_DIVERGE(p_2641->local_1_offset, get_local_id(1), 10) & (FAKE_DIVERGE(p_2641->group_2_offset, get_group_id(2), 10) , (safe_lshift_func_int8_t_s_s((((safe_rshift_func_uint16_t_u_s((l_857 ^= (l_856 , (*l_593))), (((((*l_859) = ((*l_593) < l_829[0])) ^ l_825) , (safe_mod_func_int16_t_s_s((~(safe_mod_func_int64_t_s_s((~(safe_lshift_func_uint8_t_u_u(((safe_mul_func_uint8_t_u_u(p_2641->g_523, (*l_593))) >= l_823), 4))), p_2641->g_830))), (*l_593)))) , (*p_2641->g_716)))) || (*l_593)) , l_824), l_827[5])))));
                    (*l_859) = (7L != ((*l_593) | ((*l_869) = (*l_593))));
                    return l_545;
                }
                else
                { /* block id: 448 */
                    (*l_593) = (**p_77);
                }
                for (l_828 = 4; (l_828 >= 0); l_828 -= 1)
                { /* block id: 453 */
                    uint16_t *****l_870 = &l_837;
                    uint16_t ******l_871 = (void*)0;
                    (*p_77) = func_78(((p_2641->g_872 = l_870) != &p_2641->g_873[2][2][1]), p_2641->g_249, (((safe_mul_func_uint16_t_u_u((safe_add_func_int64_t_s_s((1UL & (*l_593)), p_2641->g_830)), GROUP_DIVERGE(0, 1))) ^ 1UL) , p_77), p_2641->g_737[3][6][2], p_2641);
                    if ((**p_77))
                        continue;
                }
            }
            else
            { /* block id: 458 */
                volatile uint32_t ** volatile *l_879 = (void*)0;
                volatile uint32_t ** volatile *l_880 = &p_2641->g_878;
                (*l_880) = p_2641->g_878;
            }
            --l_881;
            for (l_541 = 0; (l_541 <= 5); l_541 += 1)
            { /* block id: 464 */
                int32_t **l_886 = (void*)0;
                int i;
                if (l_833[l_541])
                    break;
                for (l_775 = 5; (l_775 >= 0); l_775 -= 1)
                { /* block id: 468 */
                    int32_t l_889 = 0x19F324CFL;
                    int64_t *l_890 = &l_810[1][8];
                    uint32_t ***l_900 = (void*)0;
                    if (((l_833[l_541] != ((safe_mul_func_uint16_t_u_u((((*l_657) = l_886) == (p_2641->g_887 = p_2641->g_887)), (*p_2641->g_716))) && (l_889 >= GROUP_DIVERGE(1, 1)))) > ((*l_890) = p_2641->g_451[9][0][4])))
                    { /* block id: 472 */
                        return l_891;
                    }
                    else
                    { /* block id: 474 */
                        int16_t *l_901[2][2];
                        int32_t l_902 = 9L;
                        int32_t *l_906 = &l_825;
                        int32_t *l_907 = &l_730;
                        int32_t *l_908 = &l_832;
                        int32_t *l_909 = &l_550[0];
                        int32_t *l_910 = &l_829[4];
                        int32_t *l_911 = &l_829[4];
                        int32_t *l_912 = &l_831;
                        int32_t *l_913 = &l_833[l_775];
                        int32_t *l_914 = &l_550[0];
                        int32_t *l_915 = &l_829[5];
                        int32_t *l_916 = &l_822;
                        int32_t *l_917 = &l_826;
                        int32_t *l_918 = &l_829[5];
                        int32_t *l_919 = &l_831;
                        int32_t *l_920 = &l_825;
                        int32_t *l_921 = (void*)0;
                        int i, j;
                        for (i = 0; i < 2; i++)
                        {
                            for (j = 0; j < 2; j++)
                                l_901[i][j] = &l_793;
                        }
                        (*p_77) = func_78(((((void*)0 == &p_2641->g_167) , (safe_rshift_func_uint16_t_u_u(0x7335L, 15))) != (((safe_sub_func_int64_t_s_s((safe_rshift_func_int16_t_s_s(((*l_506) = (l_902 ^= ((&p_2641->g_872 == (((safe_add_func_uint64_t_u_u((l_829[5] & ((l_900 != &p_2641->g_147) < 1UL)), l_810[6][9])) | (*l_593)) , (void*)0)) , (*p_2641->g_716)))), (*l_593))), p_2641->g_740)) && 8L) >= l_903)), (*l_593), p_77, l_822, p_2641);
                        l_833[l_775] |= (safe_rshift_func_uint16_t_u_s(FAKE_DIVERGE(p_2641->global_2_offset, get_global_id(2), 10), (l_891 != p_76)));
                        if ((**p_77))
                            continue;
                        --l_922;
                    }
                    (*p_77) = func_78(((l_822 > (safe_mul_func_int8_t_s_s(((**l_488) = l_810[1][8]), (safe_lshift_func_uint8_t_u_u((p_2641->g_2 && (safe_rshift_func_int16_t_s_u((l_613 , (((*p_2641->g_716) != ((((safe_rshift_func_int8_t_s_u((((p_2641->g_167 = (((safe_rshift_func_uint16_t_u_u(((safe_lshift_func_uint8_t_u_u(l_889, 2)) , ((**p_2641->g_178) ^= (safe_rshift_func_int16_t_s_s((safe_mod_func_uint8_t_u_u((safe_add_func_uint32_t_u_u((((safe_rshift_func_uint16_t_u_u((((((p_2641->g_341 == (l_829[5] , ((safe_div_func_uint8_t_u_u(0UL, l_822)) >= l_833[l_541]))) != l_881) | (*p_2641->g_716)) || l_903) > l_947), l_948[7])) | l_889) > (*p_2641->g_716)), (*p_2641->g_646))), l_948[7])), 14)))), FAKE_DIVERGE(p_2641->group_0_offset, get_group_id(0), 10))) | l_889) >= p_2641->g_830)) & FAKE_DIVERGE(p_2641->global_0_offset, get_global_id(0), 10)) & 0x2872EC06A603EFF8L), l_822)) || 0x9424L) & 8UL) ^ 18446744073709551615UL)) , l_889)), 3))), 0))))) > l_833[l_541]), (*l_593), p_77, p_2641->g_341, p_2641);
                    for (p_2641->g_167 = 0; (p_2641->g_167 <= 5); p_2641->g_167 += 1)
                    { /* block id: 488 */
                        return p_76;
                    }
                }
            }
            (*p_2641->g_646) |= ((*l_593) && (-5L));
        }
    }
    else
    { /* block id: 495 */
        uint16_t l_959 = 65528UL;
        uint64_t *l_965 = &p_2641->g_167;
        uint64_t *l_968 = (void*)0;
        uint64_t *l_969 = &p_2641->g_249;
        uint16_t ******l_974[7] = {&p_2641->g_872,&p_2641->g_872,&p_2641->g_872,&p_2641->g_872,&p_2641->g_872,&p_2641->g_872,&p_2641->g_872};
        int32_t *l_977 = &l_541;
        uint32_t **l_984 = (void*)0;
        uint32_t ***l_983 = &l_984;
        int8_t *l_1085 = &p_2641->g_400;
        uint8_t l_1097 = 0x71L;
        int32_t l_1151 = 1L;
        int32_t l_1161[5] = {1L,1L,1L,1L,1L};
        int16_t l_1214 = 1L;
        int32_t *l_1276 = (void*)0;
        int32_t **l_1275 = &l_1276;
        int32_t ***l_1274 = &l_1275;
        uint16_t l_1292 = 1UL;
        int8_t l_1295 = 9L;
        uint32_t l_1380 = 4294967291UL;
        uint8_t l_1412 = 5UL;
        int32_t **l_1432 = &l_659;
        uint32_t l_1433 = 0x8EFA3E7DL;
        int64_t *l_1435[9] = {&p_2641->g_851,&p_2641->g_851,&p_2641->g_851,&p_2641->g_851,&p_2641->g_851,&p_2641->g_851,&p_2641->g_851,&p_2641->g_851,&p_2641->g_851};
        int64_t **l_1434 = &l_1435[5];
        uint16_t ****l_1477 = &p_2641->g_439;
        uint8_t l_1507 = 0x18L;
        int i;
        if (((safe_rshift_func_int8_t_s_s(3L, 3)) , l_549))
        { /* block id: 496 */
            int64_t l_953 = (-2L);
            uint64_t l_955 = 1UL;
            int32_t **l_958[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            int i;
            for (p_2641->g_578 = 0; (p_2641->g_578 >= 13); p_2641->g_578 = safe_add_func_int16_t_s_s(p_2641->g_578, 8))
            { /* block id: 499 */
                uint64_t *l_954[7][2][6] = {{{&p_2641->g_249,&p_2641->g_249,&l_610,&l_610,&l_610,&p_2641->g_249},{&p_2641->g_249,&p_2641->g_249,&l_610,&l_610,&l_610,&p_2641->g_249}},{{&p_2641->g_249,&p_2641->g_249,&l_610,&l_610,&l_610,&p_2641->g_249},{&p_2641->g_249,&p_2641->g_249,&l_610,&l_610,&l_610,&p_2641->g_249}},{{&p_2641->g_249,&p_2641->g_249,&l_610,&l_610,&l_610,&p_2641->g_249},{&p_2641->g_249,&p_2641->g_249,&l_610,&l_610,&l_610,&p_2641->g_249}},{{&p_2641->g_249,&p_2641->g_249,&l_610,&l_610,&l_610,&p_2641->g_249},{&p_2641->g_249,&p_2641->g_249,&l_610,&l_610,&l_610,&p_2641->g_249}},{{&p_2641->g_249,&p_2641->g_249,&l_610,&l_610,&l_610,&p_2641->g_249},{&p_2641->g_249,&p_2641->g_249,&l_610,&l_610,&l_610,&p_2641->g_249}},{{&p_2641->g_249,&p_2641->g_249,&l_610,&l_610,&l_610,&p_2641->g_249},{&p_2641->g_249,&p_2641->g_249,&l_610,&l_610,&l_610,&p_2641->g_249}},{{&p_2641->g_249,&p_2641->g_249,&l_610,&l_610,&l_610,&p_2641->g_249},{&p_2641->g_249,&p_2641->g_249,&l_610,&l_610,&l_610,&p_2641->g_249}}};
                int i, j, k;
                (*p_77) = func_78(l_953, (++l_955), l_958[4], l_959, p_2641);
            }
            l_550[0] = (safe_mul_func_int16_t_s_s((-3L), l_959));
            return p_76;
        }
        else
        { /* block id: 505 */
lbl_1114:
            (*p_2641->g_964) = ((l_793 <= l_959) , (**p_77));
        }
        l_492 = (**p_77);
        if ((((*l_969) = ((*l_965)--)) != (safe_rshift_func_int8_t_s_s(((safe_sub_func_uint8_t_u_u(((((l_545 == ((0x4041L || (~(+l_497))) , p_76)) >= (0x15L || p_2641->g_523)) , l_974[4]) != ((l_610 >= (safe_mod_func_int32_t_s_s(((*l_977) ^= (**p_77)), l_978))) , (void*)0)), p_2641->g_551)) ^ l_549), 0))))
        { /* block id: 512 */
            uint64_t l_991 = 0xC06383042E47E19BL;
            uint32_t ***l_996 = (void*)0;
            int32_t l_997 = (-9L);
            uint16_t *l_1005 = &l_959;
            int64_t l_1057 = 0x32E5F0FE3F329355L;
            int32_t l_1095 = (-1L);
            int32_t l_1098 = 0x6A646E96L;
            int32_t l_1111 = 0x354DFCDDL;
            (*l_977) = ((l_997 &= (safe_mod_func_int64_t_s_s((safe_mod_func_uint32_t_u_u((l_983 == ((safe_rshift_func_int8_t_s_s((safe_div_func_int16_t_s_s((safe_mul_func_int8_t_s_s(((*l_977) != (GROUP_DIVERGE(2, 1) == ((**l_488) = l_991))), (((safe_mod_func_int64_t_s_s(0x231D24767C710CDDL, ((-1L) ^ (&l_903 != &p_2641->g_341)))) ^ 1UL) && GROUP_DIVERGE(1, 1)))), (-4L))), 7)) , l_996)), 0x68DFFD2DL)), p_2641->g_851))) ^ l_991);
            if ((*l_977))
            { /* block id: 516 */
                return l_545;
            }
            else
            { /* block id: 518 */
                int64_t l_1000 = 6L;
                uint32_t *l_1014 = &p_2641->g_351;
                int32_t l_1031 = 1L;
                uint16_t ***l_1055 = (void*)0;
                int32_t l_1056 = (-1L);
                int32_t ****l_1089 = &l_657;
                int32_t *****l_1088 = &l_1089;
                uint16_t ******l_1094 = &p_2641->g_872;
                int8_t l_1099 = 8L;
                (*l_977) = l_881;
                l_550[0] ^= ((((p_2641->g_249 , (+((*l_506) = (safe_rshift_func_int16_t_s_u((l_1000 == (safe_rshift_func_int8_t_s_s((safe_lshift_func_int16_t_s_s((((((*p_2641->g_178) = l_1005) == (((((safe_mod_func_int8_t_s_s((((((**p_77) > (safe_mul_func_int8_t_s_s((safe_add_func_uint64_t_u_u(l_991, ((((l_1014 = func_78(l_997, (l_991 != (safe_lshift_func_uint8_t_u_s(GROUP_DIVERGE(1, 1), ((0x05B0L && l_1000) , (*l_977))))), p_77, (*l_977), p_2641)) != (void*)0) & 0L) | p_2641->g_453))), 1L))) > (*l_977)) && FAKE_DIVERGE(p_2641->group_0_offset, get_group_id(0), 10)) || 255UL), GROUP_DIVERGE(2, 1))) >= p_2641->g_400) & 0x3E852AC0275BF39CL) || 0x6AL) , l_1005)) , GROUP_DIVERGE(1, 1)) <= p_2641->g_23), 6)), l_1000))), 8))))) <= l_1000) >= l_1000) | l_541);
                for (p_2641->g_453 = 0; (p_2641->g_453 > (-9)); p_2641->g_453 = safe_sub_func_int64_t_s_s(p_2641->g_453, 5))
                { /* block id: 526 */
                    uint64_t l_1025 = 2UL;
                    int32_t *****l_1092 = (void*)0;
                    int32_t l_1101 = 0x687DB774L;
                    int32_t l_1110[9] = {1L,1L,1L,1L,1L,1L,1L,1L,1L};
                    int i;
                    for (l_959 = 0; (l_959 <= 38); l_959++)
                    { /* block id: 529 */
                        uint32_t l_1026 = 0x1BCFE68AL;
                        l_997 = ((safe_lshift_func_int16_t_s_s(((!((**p_77) != (safe_sub_func_int64_t_s_s(((+((*l_977) = 0L)) ^ (0UL <= (safe_lshift_func_uint16_t_u_u((l_1025 & (l_1026 == (safe_rshift_func_int8_t_s_u((!1L), 1)))), (l_991 > p_2641->g_145))))), (((l_1031 = ((safe_rshift_func_int8_t_s_u(0x76L, 2)) | l_1000)) , (**p_77)) >= FAKE_DIVERGE(p_2641->local_0_offset, get_local_id(0), 10)))))) && l_1031), 6)) && l_541);
                    }
                    if ((((4294967295UL | (**p_77)) , (safe_unary_minus_func_uint64_t_u((*l_977)))) != ((((*p_2641->g_179) < (l_1031 = l_1025)) >= (GROUP_DIVERGE(2, 1) || (safe_mul_func_uint16_t_u_u(((safe_mod_func_uint64_t_u_u((safe_mod_func_uint8_t_u_u((safe_div_func_uint32_t_u_u((safe_lshift_func_uint16_t_u_u((((((safe_mul_func_uint8_t_u_u(252UL, (safe_mod_func_uint32_t_u_u(((*l_977) >= (l_1056 = (((((safe_sub_func_uint16_t_u_u((safe_mul_func_uint16_t_u_u((safe_div_func_int64_t_s_s(((6L >= (((*p_2641->g_716) = (safe_mul_func_int16_t_s_s(l_1000, 0x1D53L))) , (*p_2641->g_716))) , p_2641->g_737[2][2][1]), l_991)), 0x2633L)), 1L)) , (void*)0) == l_1055) , 0x5CL) & 247UL))), l_1057)))) > (*p_2641->g_485)) <= 0UL) | p_2641->g_258) <= 2L), GROUP_DIVERGE(1, 1))), l_793)), (*l_977))), p_2641->g_258)) == l_1025), 0x1E5AL)))) == 0L)))
                    { /* block id: 537 */
                        uint16_t l_1058 = 0x41E6L;
                        uint16_t *******l_1073[2];
                        int32_t ******l_1090 = (void*)0;
                        int32_t ******l_1091[8] = {&l_1088,&l_1088,&l_1088,&l_1088,&l_1088,&l_1088,&l_1088,&l_1088};
                        uint32_t *l_1093 = &p_2641->g_740;
                        int32_t *l_1096 = &p_2641->g_36;
                        int32_t *l_1100[2][1];
                        int i, j;
                        for (i = 0; i < 2; i++)
                            l_1073[i] = &l_974[4];
                        for (i = 0; i < 2; i++)
                        {
                            for (j = 0; j < 1; j++)
                                l_1100[i][j] = (void*)0;
                        }
                        ++l_1058;
                        l_1101 = (safe_div_func_uint16_t_u_u((l_1098 = ((safe_lshift_func_int8_t_s_u((safe_mul_func_uint16_t_u_u((((*l_977) = (safe_add_func_int32_t_s_s(((((p_2641->g_523 == (l_1058 ^ (((*l_1096) ^= (l_1095 = (safe_add_func_int16_t_s_s(((*p_2641->g_716) ^= (safe_div_func_uint32_t_u_u(((p_2641->g_1074 = l_974[4]) != ((safe_lshift_func_uint16_t_u_u(((((p_2641->g_167 |= ((l_997 |= l_1000) < (((safe_div_func_uint64_t_u_u((safe_mul_func_uint16_t_u_u(((safe_div_func_uint32_t_u_u(((*l_1093) = (0x74L || (((*l_488) = ((&l_974[0] == (void*)0) , l_1085)) == ((safe_div_func_int16_t_s_s(((l_1092 = l_1088) != &p_2641->g_751), 65527UL)) , &p_2641->g_132)))), GROUP_DIVERGE(1, 1))) > l_1025), l_1058)), p_2641->g_9)) , l_1058) | 0L))) && l_1025) , (*l_977)) || 0x795DF2A5L), (*l_977))) , l_1094)), l_1058))), (*p_2641->g_179))))) && 0UL))) , p_2641->g_3) | 18446744073709551615UL) != (*l_977)), p_2641->g_400))) & 4294967295UL), l_1000)), l_991)) ^ l_1097)), l_1099));
                        (*p_77) = func_78(l_1101, l_1056, &l_977, ((safe_div_func_uint16_t_u_u(l_1000, ((*l_506) &= l_978))) < ((safe_sub_func_int8_t_s_s((~(l_492 = (!(l_1031 = (safe_div_func_int8_t_s_s((((*l_489) = (*l_977)) || (l_1098 = (l_1110[3] = (l_1025 <= ((*l_977) == ((*l_1085) = (safe_mod_func_int8_t_s_s((*l_977), (-1L))))))))), 0x22L)))))), (*l_977))) || 18446744073709551615UL)), p_2641);
                        (*p_77) = l_977;
                    }
                    else
                    { /* block id: 560 */
                        (*p_77) = (*p_77);
                    }
                    return p_76;
                }
            }
            l_1111 |= (**p_77);
        }
        else
        { /* block id: 567 */
            int8_t *l_1113 = &p_2641->g_132;
            int32_t l_1115 = 0x79ED17CCL;
            int32_t l_1159 = (-1L);
            int64_t l_1160 = 1L;
            int32_t l_1162 = 0x5D4EA90BL;
            uint32_t l_1168 = 8UL;
            int32_t l_1198 = (-10L);
            int32_t l_1199 = (-1L);
            uint16_t l_1200 = 1UL;
            int32_t l_1212 = (-1L);
            int32_t l_1215 = 0x41273599L;
            int32_t l_1216 = 1L;
            int32_t l_1217 = 0x36DC83E2L;
            uint16_t l_1219 = 0xA3C5L;
            int32_t l_1267[10] = {0x689DCFB7L,(-3L),(-1L),(-3L),0x689DCFB7L,0x689DCFB7L,(-3L),(-1L),(-3L),0x689DCFB7L};
            int8_t *l_1269 = &l_1131;
            uint16_t ******l_1271 = &p_2641->g_872;
            uint16_t ******l_1272 = &p_2641->g_872;
            int32_t *l_1273 = &l_1267[9];
            int32_t ****l_1277 = &l_1274;
            int32_t **l_1294[6][5][8] = {{{(void*)0,(void*)0,&l_659,(void*)0,&p_2641->g_888,(void*)0,&l_659,(void*)0},{(void*)0,(void*)0,&l_659,(void*)0,&p_2641->g_888,(void*)0,&l_659,(void*)0},{(void*)0,(void*)0,&l_659,(void*)0,&p_2641->g_888,(void*)0,&l_659,(void*)0},{(void*)0,(void*)0,&l_659,(void*)0,&p_2641->g_888,(void*)0,&l_659,(void*)0},{(void*)0,(void*)0,&l_659,(void*)0,&p_2641->g_888,(void*)0,&l_659,(void*)0}},{{(void*)0,(void*)0,&l_659,(void*)0,&p_2641->g_888,(void*)0,&l_659,(void*)0},{(void*)0,(void*)0,&l_659,(void*)0,&p_2641->g_888,(void*)0,&l_659,(void*)0},{(void*)0,(void*)0,&l_659,(void*)0,&p_2641->g_888,(void*)0,&l_659,(void*)0},{(void*)0,(void*)0,&l_659,(void*)0,&p_2641->g_888,(void*)0,&l_659,(void*)0},{(void*)0,(void*)0,&l_659,(void*)0,&p_2641->g_888,(void*)0,&l_659,(void*)0}},{{(void*)0,(void*)0,&l_659,(void*)0,&p_2641->g_888,(void*)0,&l_659,(void*)0},{(void*)0,(void*)0,&l_659,(void*)0,&p_2641->g_888,(void*)0,&l_659,(void*)0},{(void*)0,(void*)0,&l_659,(void*)0,&p_2641->g_888,(void*)0,&l_659,(void*)0},{(void*)0,(void*)0,&l_659,(void*)0,&p_2641->g_888,(void*)0,&l_659,(void*)0},{(void*)0,(void*)0,&l_659,(void*)0,&p_2641->g_888,(void*)0,&l_659,(void*)0}},{{(void*)0,(void*)0,&l_659,(void*)0,&p_2641->g_888,(void*)0,&l_659,(void*)0},{(void*)0,(void*)0,&l_659,(void*)0,&p_2641->g_888,(void*)0,&l_659,(void*)0},{(void*)0,(void*)0,&l_659,(void*)0,&p_2641->g_888,(void*)0,&l_659,(void*)0},{(void*)0,(void*)0,&l_659,(void*)0,&p_2641->g_888,(void*)0,&l_659,(void*)0},{(void*)0,(void*)0,&l_659,(void*)0,&p_2641->g_888,(void*)0,&l_659,(void*)0}},{{(void*)0,(void*)0,&l_659,(void*)0,&p_2641->g_888,(void*)0,&l_659,(void*)0},{(void*)0,(void*)0,&l_659,(void*)0,&p_2641->g_888,(void*)0,&l_659,(void*)0},{(void*)0,(void*)0,&l_659,(void*)0,&p_2641->g_888,(void*)0,&l_659,(void*)0},{(void*)0,(void*)0,&l_659,(void*)0,&p_2641->g_888,(void*)0,&l_659,(void*)0},{(void*)0,(void*)0,&l_659,(void*)0,&p_2641->g_888,(void*)0,&l_659,(void*)0}},{{(void*)0,(void*)0,&l_659,(void*)0,&p_2641->g_888,(void*)0,&l_659,(void*)0},{(void*)0,(void*)0,&l_659,(void*)0,&p_2641->g_888,(void*)0,&l_659,(void*)0},{(void*)0,(void*)0,&l_659,(void*)0,&p_2641->g_888,(void*)0,&l_659,(void*)0},{(void*)0,(void*)0,&l_659,(void*)0,&p_2641->g_888,(void*)0,&l_659,(void*)0},{(void*)0,(void*)0,&l_659,(void*)0,&p_2641->g_888,(void*)0,&l_659,(void*)0}}};
            uint32_t l_1338 = 7UL;
            uint32_t l_1411 = 0x0AC14E80L;
            uint64_t *l_1440 = &p_2641->g_523;
            int64_t l_1471 = 1L;
            int i, j, k;
lbl_1203:
            (*p_77) = (*p_77);
            if ((safe_unary_minus_func_int8_t_s((l_1085 != l_1113))))
            { /* block id: 569 */
                int8_t *l_1120 = &l_549;
                int32_t l_1134[9];
                int32_t ****l_1135[7];
                int32_t l_1240[9][5] = {{0L,0x0121D1CAL,0x16B8D7B6L,0x338F0FB6L,0x6CC9018FL},{0L,0x0121D1CAL,0x16B8D7B6L,0x338F0FB6L,0x6CC9018FL},{0L,0x0121D1CAL,0x16B8D7B6L,0x338F0FB6L,0x6CC9018FL},{0L,0x0121D1CAL,0x16B8D7B6L,0x338F0FB6L,0x6CC9018FL},{0L,0x0121D1CAL,0x16B8D7B6L,0x338F0FB6L,0x6CC9018FL},{0L,0x0121D1CAL,0x16B8D7B6L,0x338F0FB6L,0x6CC9018FL},{0L,0x0121D1CAL,0x16B8D7B6L,0x338F0FB6L,0x6CC9018FL},{0L,0x0121D1CAL,0x16B8D7B6L,0x338F0FB6L,0x6CC9018FL},{0L,0x0121D1CAL,0x16B8D7B6L,0x338F0FB6L,0x6CC9018FL}};
                int32_t l_1249 = 1L;
                uint32_t ***l_1255 = &l_984;
                int i, j;
                for (i = 0; i < 9; i++)
                    l_1134[i] = 6L;
                for (i = 0; i < 7; i++)
                    l_1135[i] = &l_657;
                for (l_497 = 0; (l_497 <= 3); l_497 += 1)
                { /* block id: 572 */
                    uint64_t l_1125 = 0x9BC23B684451400CL;
                    int i;
                    if (p_2641->g_249)
                        goto lbl_1114;
                    if (l_1115)
                        break;
                    (*l_977) = ((((safe_lshift_func_uint8_t_u_u(GROUP_DIVERGE(1, 1), (++(*l_509)))) , l_1120) != ((*l_486) = l_1085)) | ((safe_sub_func_int8_t_s_s((safe_rshift_func_uint8_t_u_s(p_2641->g_132, ((l_1125 , (((*l_969)++) , ((safe_sub_func_uint16_t_u_u(0UL, l_1130)) == (-1L)))) , (((*p_2641->g_179) = 1UL) != ((*p_2641->g_716) = (0UL && 1L)))))), l_947)) & l_1131));
                    for (l_507 = 0; (l_507 <= 3); l_507 += 1)
                    { /* block id: 583 */
                        int32_t ****l_1136 = &l_657;
                        int32_t *l_1152 = &l_541;
                        int32_t *l_1153 = &l_550[3];
                        int32_t *l_1154 = (void*)0;
                        int32_t *l_1155 = (void*)0;
                        int32_t *l_1156 = &l_550[0];
                        int32_t *l_1157 = &l_492;
                        int32_t *l_1158[4][1][6];
                        int i, j, k;
                        for (i = 0; i < 4; i++)
                        {
                            for (j = 0; j < 1; j++)
                            {
                                for (k = 0; k < 6; k++)
                                    l_1158[i][j][k] = (void*)0;
                            }
                        }
                        l_1151 ^= ((safe_mod_func_uint16_t_u_u((l_1134[1] | ((l_1134[4] , ((((l_1135[2] = (void*)0) != l_1136) < l_947) , (((safe_add_func_int64_t_s_s((p_2641->g_523 && p_2641->g_258), (safe_mul_func_uint8_t_u_u(((safe_sub_func_uint8_t_u_u(((((safe_lshift_func_int16_t_s_u((*l_977), 2)) || (safe_rshift_func_uint16_t_u_u((safe_div_func_int16_t_s_s((((safe_rshift_func_uint16_t_u_u((!GROUP_DIVERGE(0, 1)), (l_1125 ^ l_1115))) <= l_550[1]) ^ 0x992013788F0672C4L), 0xFC0FL)), 13))) || 9UL) | p_2641->g_36), (-1L))) >= 0x42EEF36DL), (*l_977))))) && l_610) , p_2641->g_14))) == p_2641->g_523)), l_978)) | 9L);
                        p_2641->g_1163++;
                    }
                }
                for (l_1115 = 4; (l_1115 != 25); ++l_1115)
                { /* block id: 591 */
                    uint32_t l_1191 = 0x16724019L;
                    int32_t l_1194 = 0x3D375C5BL;
                    int32_t l_1196 = 0x4C4DFA12L;
                    int32_t l_1197[3];
                    int32_t ***l_1204 = (void*)0;
                    int32_t l_1213 = 0x5C463819L;
                    uint16_t ******l_1230 = &p_2641->g_872;
                    int64_t *l_1239 = &p_2641->g_851;
                    uint32_t ***l_1248 = &l_984;
                    int i;
                    for (i = 0; i < 3; i++)
                        l_1197[i] = (-9L);
                    l_1168 = (**p_77);
                    if ((safe_sub_func_int64_t_s_s(l_610, (safe_mul_func_int16_t_s_s((*l_977), (safe_add_func_int16_t_s_s(((*l_977) && (safe_mul_func_uint8_t_u_u((((safe_div_func_uint64_t_u_u(l_550[0], l_1162)) <= (safe_div_func_int8_t_s_s(l_1159, (safe_rshift_func_int8_t_s_u(((((*p_2641->g_716) = (l_1194 = ((safe_sub_func_int8_t_s_s((safe_div_func_int32_t_s_s((safe_lshift_func_uint16_t_u_s(FAKE_DIVERGE(p_2641->global_2_offset, get_global_id(2), 10), (((p_2641->g_570 && (safe_mul_func_uint16_t_u_u(((*p_2641->g_179) = ((l_1191 &= 0x67L) || ((safe_sub_func_uint32_t_u_u(GROUP_DIVERGE(2, 1), ((p_2641->g_805 == 4L) , l_1191))) || l_1115))), (*p_2641->g_716)))) || (*l_977)) >= l_549))), 0x3E0DDCFEL)), p_2641->g_830)) | FAKE_DIVERGE(p_2641->global_1_offset, get_global_id(1), 10)))) <= l_613) , 8L), 1))))) >= l_1168), 0xC9L))), l_1134[6])))))))
                    { /* block id: 597 */
                        int32_t *l_1195[8] = {&l_1162,&l_1134[8],&l_1162,&l_1162,&l_1134[8],&l_1162,&l_1162,&l_1134[8]};
                        int i;
                        (*l_977) = l_1194;
                        l_1200--;
                        if (p_2641->g_578)
                            goto lbl_1203;
                        (*l_977) ^= ((void*)0 != l_1204);
                    }
                    else
                    { /* block id: 602 */
                        int32_t *l_1207 = (void*)0;
                        int32_t *l_1208 = &l_1197[2];
                        (*l_1208) &= (p_2641->g_737[1][5][2] == (l_1196 ^ (safe_rshift_func_uint16_t_u_u((*l_977), 5))));
                    }
                    for (l_1191 = 0; (l_1191 <= 4); l_1191 += 1)
                    { /* block id: 607 */
                        int64_t l_1209 = 0x32877A96C6DE882DL;
                        int32_t *l_1210 = &l_1134[1];
                        int32_t *l_1211[9] = {(void*)0,&l_1198,(void*)0,(void*)0,&l_1198,(void*)0,(void*)0,&l_1198,(void*)0};
                        int32_t l_1218 = 0x1D22F81AL;
                        uint16_t *******l_1231 = &l_974[3];
                        uint16_t *******l_1232[9][3][6] = {{{&p_2641->g_1074,&p_2641->g_1074,(void*)0,&l_1230,&p_2641->g_1074,&l_1230},{&p_2641->g_1074,&p_2641->g_1074,(void*)0,&l_1230,&p_2641->g_1074,&l_1230},{&p_2641->g_1074,&p_2641->g_1074,(void*)0,&l_1230,&p_2641->g_1074,&l_1230}},{{&p_2641->g_1074,&p_2641->g_1074,(void*)0,&l_1230,&p_2641->g_1074,&l_1230},{&p_2641->g_1074,&p_2641->g_1074,(void*)0,&l_1230,&p_2641->g_1074,&l_1230},{&p_2641->g_1074,&p_2641->g_1074,(void*)0,&l_1230,&p_2641->g_1074,&l_1230}},{{&p_2641->g_1074,&p_2641->g_1074,(void*)0,&l_1230,&p_2641->g_1074,&l_1230},{&p_2641->g_1074,&p_2641->g_1074,(void*)0,&l_1230,&p_2641->g_1074,&l_1230},{&p_2641->g_1074,&p_2641->g_1074,(void*)0,&l_1230,&p_2641->g_1074,&l_1230}},{{&p_2641->g_1074,&p_2641->g_1074,(void*)0,&l_1230,&p_2641->g_1074,&l_1230},{&p_2641->g_1074,&p_2641->g_1074,(void*)0,&l_1230,&p_2641->g_1074,&l_1230},{&p_2641->g_1074,&p_2641->g_1074,(void*)0,&l_1230,&p_2641->g_1074,&l_1230}},{{&p_2641->g_1074,&p_2641->g_1074,(void*)0,&l_1230,&p_2641->g_1074,&l_1230},{&p_2641->g_1074,&p_2641->g_1074,(void*)0,&l_1230,&p_2641->g_1074,&l_1230},{&p_2641->g_1074,&p_2641->g_1074,(void*)0,&l_1230,&p_2641->g_1074,&l_1230}},{{&p_2641->g_1074,&p_2641->g_1074,(void*)0,&l_1230,&p_2641->g_1074,&l_1230},{&p_2641->g_1074,&p_2641->g_1074,(void*)0,&l_1230,&p_2641->g_1074,&l_1230},{&p_2641->g_1074,&p_2641->g_1074,(void*)0,&l_1230,&p_2641->g_1074,&l_1230}},{{&p_2641->g_1074,&p_2641->g_1074,(void*)0,&l_1230,&p_2641->g_1074,&l_1230},{&p_2641->g_1074,&p_2641->g_1074,(void*)0,&l_1230,&p_2641->g_1074,&l_1230},{&p_2641->g_1074,&p_2641->g_1074,(void*)0,&l_1230,&p_2641->g_1074,&l_1230}},{{&p_2641->g_1074,&p_2641->g_1074,(void*)0,&l_1230,&p_2641->g_1074,&l_1230},{&p_2641->g_1074,&p_2641->g_1074,(void*)0,&l_1230,&p_2641->g_1074,&l_1230},{&p_2641->g_1074,&p_2641->g_1074,(void*)0,&l_1230,&p_2641->g_1074,&l_1230}},{{&p_2641->g_1074,&p_2641->g_1074,(void*)0,&l_1230,&p_2641->g_1074,&l_1230},{&p_2641->g_1074,&p_2641->g_1074,(void*)0,&l_1230,&p_2641->g_1074,&l_1230},{&p_2641->g_1074,&p_2641->g_1074,(void*)0,&l_1230,&p_2641->g_1074,&l_1230}}};
                        int64_t *l_1238 = &p_2641->g_851;
                        int64_t **l_1237 = &l_1238;
                        int i, j, k;
                        (*l_977) &= (FAKE_DIVERGE(p_2641->local_1_offset, get_local_id(1), 10) , (-3L));
                        --l_1219;
                        (*l_977) |= (safe_add_func_uint16_t_u_u(((safe_add_func_uint16_t_u_u((l_1197[2] = (safe_div_func_uint64_t_u_u(((safe_div_func_uint64_t_u_u((!0UL), (((-4L) && ((l_1230 = ((*l_1231) = l_1230)) != (((((0UL > (l_881 >= (((p_2641->g_551 < (safe_mod_func_uint32_t_u_u((((safe_div_func_int32_t_s_s(((*l_1210) = ((l_550[1] >= (((*l_1237) = l_968) == l_1239)) > l_1217)), l_1240[2][2])) == (*p_2641->g_646)) > l_507), 0x5D6A3C97L))) , l_1130) < l_1241[0][1]))) , p_76) != (void*)0) , l_1215) , (void*)0))) && 0x3C70052A27668013L))) , p_2641->g_737[1][5][2]), l_1240[2][2]))), 0UL)) <= 0UL), l_1213));
                        l_1249 ^= ((((*l_506) = (safe_div_func_uint32_t_u_u(0xA674C3C7L, ((*l_1210) |= (*l_977))))) != (l_1197[2] > l_1240[7][3])) || (((((safe_rshift_func_uint8_t_u_s(((l_881 <= ((safe_lshift_func_int8_t_s_u((l_1248 == (void*)0), ((0x5039L > ((*p_2641->g_485) , 65528UL)) != (**p_77)))) <= l_1197[0])) || (*l_1210)), 5)) > l_1134[1]) , l_1197[1]) , 0xE6L) == l_903));
                    }
                    (*l_977) ^= (p_2641->g_145 & ((void*)0 != (*l_486)));
                }
                (*l_977) = ((((*l_509)++) , l_1254) != l_1255);
            }
            else
            { /* block id: 624 */
                int32_t l_1256 = (-3L);
                int64_t *l_1264 = &p_2641->g_830;
                int8_t *l_1268[1];
                uint16_t *******l_1270[5];
                int i;
                for (i = 0; i < 1; i++)
                    l_1268[i] = &l_549;
                for (i = 0; i < 5; i++)
                    l_1270[i] = &p_2641->g_1074;
                l_1273 = func_78(p_2641->g_9, l_1256, &p_2641->g_122[0], (safe_rshift_func_int16_t_s_u(((safe_add_func_uint64_t_u_u(0xC5F923D761E2D35CL, ((*l_1264) = (safe_lshift_func_int16_t_s_u((safe_unary_minus_func_int32_t_s((**p_77))), 11))))) < (((p_2641->g_1074 = (l_1271 = (((-1L) > (!((safe_rshift_func_int16_t_s_u((l_1267[5] || (((l_1268[0] == l_1269) <= (*l_977)) != (**p_2641->g_178))), (*l_977))) > (*l_977)))) , (void*)0))) == l_1272) >= l_1162)), (*l_977))), p_2641);
                if (l_613)
                    goto lbl_1203;
            }
            if ((((*l_1273) , ((((*l_1277) = l_1274) != (((safe_add_func_uint64_t_u_u((*l_1273), l_1241[0][1])) , ((safe_sub_func_int32_t_s_s(((((safe_add_func_uint64_t_u_u((&p_2641->g_888 == (((safe_sub_func_int8_t_s_s((((~(safe_sub_func_int64_t_s_s(((((*l_969) = ((*l_965) ^= (FAKE_DIVERGE(p_2641->group_0_offset, get_group_id(0), 10) & (safe_mul_func_int16_t_s_s(0x5D36L, 0x8B50L))))) | (safe_sub_func_uint64_t_u_u(l_1292, (p_2641->g_1293 ^ p_2641->g_400)))) | (*l_977)), (*l_977)))) & l_610) , (*l_977)), 255UL)) && (*p_2641->g_716)) , l_1294[4][0][3])), (*l_1273))) > l_1295) > p_2641->g_14) > (*l_1273)), (*l_1273))) ^ 0xC2342643L)) , &p_2641->g_807)) | (-5L))) >= l_610))
            { /* block id: 634 */
                uint32_t **l_1298 = &l_545;
                int32_t l_1305[9];
                int32_t ***l_1306 = &p_2641->g_887;
                int32_t *l_1324 = (void*)0;
                int32_t *l_1325 = &p_2641->g_36;
                int i;
                for (i = 0; i < 9; i++)
                    l_1305[i] = (-6L);
                l_1215 = ((**p_2641->g_178) && (safe_mod_func_uint8_t_u_u((p_76 == ((*l_1298) = p_76)), ((safe_mul_func_uint16_t_u_u(((**p_2641->g_178) = (p_2641->g_3 & (safe_mul_func_int8_t_s_s((safe_mod_func_uint16_t_u_u(((((l_1305[0] >= ((((((l_1294[3][3][7] != ((&p_2641->g_576 == (void*)0) , ((*l_1306) = ((*l_657) = (void*)0)))) , l_1131) & l_492) && p_2641->g_1293) , (void*)0) == l_1307)) < (*p_2641->g_485)) & (*l_1273)) && GROUP_DIVERGE(2, 1)), l_1305[0])), (*l_1273))))), 0x64EEL)) , (*l_1273)))));
                (*l_1325) ^= (safe_sub_func_uint64_t_u_u((safe_sub_func_int16_t_s_s(((p_2641->g_1163 && (((safe_add_func_uint64_t_u_u((*l_977), ((((((*p_2641->g_716) = (((*p_2641->g_179) = ((safe_div_func_uint8_t_u_u(((safe_lshift_func_int8_t_s_s((safe_add_func_int32_t_s_s(((*p_2641->g_716) == ((*l_1273) != p_2641->g_341)), 0xFC4DF1EBL)), (((safe_lshift_func_int16_t_s_u(0L, GROUP_DIVERGE(2, 1))) , p_2641->g_1322) == (void*)0))) != (*l_977)), l_1305[0])) , GROUP_DIVERGE(0, 1))) ^ (*p_2641->g_716))) < 0L) <= (-8L)) ^ p_2641->g_851) && (*l_977)))) != GROUP_DIVERGE(0, 1)) != (**p_77))) , 0x448DL), (*l_1273))), 0x057F7053F343BF7DL));
                l_1326 = (+((*l_1325) <= (((void*)0 == &l_657) , (1L < ((*l_965) ^= p_2641->g_319)))));
                (*l_977) = (~((*l_1325) = (p_2641->g_132 | p_2641->g_36)));
            }
            else
            { /* block id: 647 */
                int16_t l_1347[3];
                uint8_t **l_1369 = (void*)0;
                int i;
                for (i = 0; i < 3; i++)
                    l_1347[i] = 0x5D22L;
                l_1151 = ((*l_977) = (*p_2641->g_964));
                for (l_1326 = (-19); (l_1326 >= 13); ++l_1326)
                { /* block id: 652 */
                    int32_t l_1331 = 0x3539D4E1L;
                    int32_t l_1349 = 0x24FB967FL;
                    int8_t l_1381 = 0L;
                    int16_t *l_1382[3];
                    int i;
                    for (i = 0; i < 3; i++)
                        l_1382[i] = &l_1214;
                    for (l_497 = 16; (l_497 > (-7)); --l_497)
                    { /* block id: 655 */
                        if (l_1331)
                            break;
                    }
                    (*l_977) = (((*p_2641->g_888) &= (safe_sub_func_uint64_t_u_u(((*l_977) > 0x2A9320F8L), (((--(*l_969)) <= p_2641->g_9) > 1UL)))) , (((+(((*p_2641->g_716) & ((*l_977) , ((l_1254 != &p_2641->g_878) == (-8L)))) & 0x1407D506E33522B9L)) , (*p_2641->g_146)) == (void*)0));
                    for (l_549 = 0; (l_549 >= 12); l_549++)
                    { /* block id: 663 */
                        int64_t *l_1348 = &l_508;
                        l_1349 = ((*l_977) = ((p_2641->g_341 >= (*l_1273)) || (((*l_969) = ((((*p_77) != (void*)0) > ((*l_506) &= (l_1338 | (**p_77)))) ^ (((*l_1348) = (((safe_div_func_int16_t_s_s(((((((safe_mul_func_uint16_t_u_u(l_1331, (((safe_mod_func_uint8_t_u_u(p_2641->g_3, (~(safe_mod_func_int16_t_s_s(0L, (*l_1273)))))) ^ GROUP_DIVERGE(0, 1)) == 255UL))) == l_1347[2]) , 2L) && 1L) , 0xB657E616L) , l_1331), 0x5583L)) & (*l_1273)) , 1L)) & l_1347[2]))) | 0x4E3F06DCE9A85353L)));
                    }
                    l_1383 = (~(((+(l_541 = ((*l_977) , (safe_rshift_func_int16_t_s_s((-7L), (l_1349 = ((safe_mod_func_uint8_t_u_u((safe_sub_func_uint16_t_u_u((safe_div_func_int16_t_s_s(((*l_1273) < ((*l_489) = ((safe_rshift_func_int8_t_s_s(((safe_add_func_uint8_t_u_u((safe_mod_func_int8_t_s_s((safe_unary_minus_func_int16_t_s(((safe_sub_func_int64_t_s_s((((safe_lshift_func_int8_t_s_u((((l_1369 != (((((safe_rshift_func_int8_t_s_s(l_1347[0], (safe_mul_func_int16_t_s_s(((-9L) != (((safe_sub_func_uint32_t_u_u((safe_div_func_int16_t_s_s(((((-1L) ^ (0UL > ((*l_506) = (((p_2641->g_4 , (**p_77)) || (**p_77)) == p_2641->g_523)))) & l_1347[1]) || (**p_2641->g_178)), l_1347[1])), (*l_977))) < (-1L)) & l_1349)), (*l_1273))))) , (*l_1273)) , (-4L)) != 9L) , p_2641->g_1378[3][2])) , (*l_977)) < GROUP_DIVERGE(2, 1)), l_1380)) && 0x2B6881D5L) <= 0L), (*l_977))) | l_1347[2]))), (*l_1273))), 0x9EL)) && l_1381), 6)) , (-9L)))), (*l_977))), (*l_977))), 0x31L)) != (*p_2641->g_646)))))))) & l_1347[2]) | 0x40C60423ED55F403L));
                }
                for (l_497 = 0; (l_497 <= (-21)); l_497 = safe_sub_func_int8_t_s_s(l_497, 2))
                { /* block id: 678 */
                    l_507 = ((*l_977) = (*p_2641->g_646));
                }
                (*l_977) |= (p_2641->g_737[1][5][2] != (safe_sub_func_uint32_t_u_u((*l_1273), (safe_unary_minus_func_uint32_t_u((4UL & (safe_div_func_int16_t_s_s(1L, (*p_2641->g_716)))))))));
            }
            for (p_2641->g_576 = 0; (p_2641->g_576 != 21); ++p_2641->g_576)
            { /* block id: 686 */
                uint32_t l_1396 = 0x53005981L;
                uint16_t *****l_1416[5] = {&p_2641->g_873[2][2][1],&p_2641->g_873[2][2][1],&p_2641->g_873[2][2][1],&p_2641->g_873[2][2][1],&p_2641->g_873[2][2][1]};
                uint32_t *l_1417[6][6][6] = {{{&p_2641->g_23,&p_2641->g_23,(void*)0,(void*)0,(void*)0,&p_2641->g_23},{&p_2641->g_23,&p_2641->g_23,(void*)0,(void*)0,(void*)0,&p_2641->g_23},{&p_2641->g_23,&p_2641->g_23,(void*)0,(void*)0,(void*)0,&p_2641->g_23},{&p_2641->g_23,&p_2641->g_23,(void*)0,(void*)0,(void*)0,&p_2641->g_23},{&p_2641->g_23,&p_2641->g_23,(void*)0,(void*)0,(void*)0,&p_2641->g_23},{&p_2641->g_23,&p_2641->g_23,(void*)0,(void*)0,(void*)0,&p_2641->g_23}},{{&p_2641->g_23,&p_2641->g_23,(void*)0,(void*)0,(void*)0,&p_2641->g_23},{&p_2641->g_23,&p_2641->g_23,(void*)0,(void*)0,(void*)0,&p_2641->g_23},{&p_2641->g_23,&p_2641->g_23,(void*)0,(void*)0,(void*)0,&p_2641->g_23},{&p_2641->g_23,&p_2641->g_23,(void*)0,(void*)0,(void*)0,&p_2641->g_23},{&p_2641->g_23,&p_2641->g_23,(void*)0,(void*)0,(void*)0,&p_2641->g_23},{&p_2641->g_23,&p_2641->g_23,(void*)0,(void*)0,(void*)0,&p_2641->g_23}},{{&p_2641->g_23,&p_2641->g_23,(void*)0,(void*)0,(void*)0,&p_2641->g_23},{&p_2641->g_23,&p_2641->g_23,(void*)0,(void*)0,(void*)0,&p_2641->g_23},{&p_2641->g_23,&p_2641->g_23,(void*)0,(void*)0,(void*)0,&p_2641->g_23},{&p_2641->g_23,&p_2641->g_23,(void*)0,(void*)0,(void*)0,&p_2641->g_23},{&p_2641->g_23,&p_2641->g_23,(void*)0,(void*)0,(void*)0,&p_2641->g_23},{&p_2641->g_23,&p_2641->g_23,(void*)0,(void*)0,(void*)0,&p_2641->g_23}},{{&p_2641->g_23,&p_2641->g_23,(void*)0,(void*)0,(void*)0,&p_2641->g_23},{&p_2641->g_23,&p_2641->g_23,(void*)0,(void*)0,(void*)0,&p_2641->g_23},{&p_2641->g_23,&p_2641->g_23,(void*)0,(void*)0,(void*)0,&p_2641->g_23},{&p_2641->g_23,&p_2641->g_23,(void*)0,(void*)0,(void*)0,&p_2641->g_23},{&p_2641->g_23,&p_2641->g_23,(void*)0,(void*)0,(void*)0,&p_2641->g_23},{&p_2641->g_23,&p_2641->g_23,(void*)0,(void*)0,(void*)0,&p_2641->g_23}},{{&p_2641->g_23,&p_2641->g_23,(void*)0,(void*)0,(void*)0,&p_2641->g_23},{&p_2641->g_23,&p_2641->g_23,(void*)0,(void*)0,(void*)0,&p_2641->g_23},{&p_2641->g_23,&p_2641->g_23,(void*)0,(void*)0,(void*)0,&p_2641->g_23},{&p_2641->g_23,&p_2641->g_23,(void*)0,(void*)0,(void*)0,&p_2641->g_23},{&p_2641->g_23,&p_2641->g_23,(void*)0,(void*)0,(void*)0,&p_2641->g_23},{&p_2641->g_23,&p_2641->g_23,(void*)0,(void*)0,(void*)0,&p_2641->g_23}},{{&p_2641->g_23,&p_2641->g_23,(void*)0,(void*)0,(void*)0,&p_2641->g_23},{&p_2641->g_23,&p_2641->g_23,(void*)0,(void*)0,(void*)0,&p_2641->g_23},{&p_2641->g_23,&p_2641->g_23,(void*)0,(void*)0,(void*)0,&p_2641->g_23},{&p_2641->g_23,&p_2641->g_23,(void*)0,(void*)0,(void*)0,&p_2641->g_23},{&p_2641->g_23,&p_2641->g_23,(void*)0,(void*)0,(void*)0,&p_2641->g_23},{&p_2641->g_23,&p_2641->g_23,(void*)0,(void*)0,(void*)0,&p_2641->g_23}}};
                int32_t l_1418 = 0x01B66919L;
                int32_t l_1419 = 0x7C207150L;
                int32_t *l_1443 = (void*)0;
                int32_t ***l_1454 = &l_1275;
                int8_t l_1468 = (-1L);
                int32_t l_1469[10] = {(-1L),3L,(-1L),(-1L),3L,(-1L),(-1L),3L,(-1L),(-1L)};
                uint64_t l_1472 = 1UL;
                int i, j, k;
                for (p_2641->g_400 = 16; (p_2641->g_400 < 11); p_2641->g_400 = safe_sub_func_uint32_t_u_u(p_2641->g_400, 4))
                { /* block id: 689 */
                    int32_t *l_1395[9] = {&l_1151,&l_1151,&l_1151,&l_1151,&l_1151,&l_1151,&l_1151,&l_1151,&l_1151};
                    int32_t ******l_1439 = &l_1437[1][0];
                    int i;
                    ++l_1396;
                    if ((*p_2641->g_485))
                        break;
                    if (((l_969 != (((*l_977) | (p_2641->g_737[2][7][2] , (((safe_mul_func_uint8_t_u_u(250UL, (safe_add_func_uint32_t_u_u((safe_add_func_int64_t_s_s((&p_2641->g_873[2][2][1] != ((*l_1272) = (l_1416[3] = ((p_2641->g_1415 = ((*p_2641->g_888) |= (((**p_77) <= ((safe_sub_func_int64_t_s_s((0xB4L != (safe_add_func_int32_t_s_s((l_1412 = (safe_lshift_func_int8_t_s_u(l_1411, 3))), ((safe_sub_func_int8_t_s_s((*l_1273), 0x43L)) != p_2641->g_830)))), p_2641->g_115)) > p_2641->g_258)) , 0x4E0657CBL))) , (void*)0)))), l_1396)), 0UL)))) | (*l_1273)) , 0x7DE64EF9L))) , &p_2641->g_851)) ^ l_1396))
                    { /* block id: 697 */
                        return l_1417[5][2][4];
                    }
                    else
                    { /* block id: 699 */
                        uint64_t l_1420 = 0x306437D1B2607EFFL;
                        l_1420++;
                    }
                    (*l_1307) = func_78((*l_977), p_2641->g_740, &p_2641->g_122[0], ((*l_1273) , ((((safe_lshift_func_uint8_t_u_s((*l_977), 4)) , ((p_2641->g_830 = (((&p_76 != ((safe_add_func_int16_t_s_s(((((*l_977) != (l_1159 ^= ((((((((safe_mul_func_uint16_t_u_u((*l_977), (((safe_unary_minus_func_int64_t_s((((++p_2641->g_451[5][1][4]) , (*l_657)) == l_1432))) , (**p_77)) < l_1433))) , (void*)0) != l_1434) , FAKE_DIVERGE(p_2641->group_1_offset, get_group_id(1), 10)) , l_1436) == l_1439) && GROUP_DIVERGE(0, 1)) < GROUP_DIVERGE(2, 1)))) < p_2641->g_132) != (*l_1273)), (*l_977))) , (void*)0)) != l_1419) && (*l_977))) > (*l_1273))) , (void*)0) == l_1440)), p_2641);
                }
                for (l_1200 = 0; (l_1200 >= 16); l_1200++)
                { /* block id: 709 */
                    uint8_t l_1446 = 0x1CL;
                    uint32_t *l_1453 = &l_1380;
                    int32_t *l_1456 = &l_1216;
                    int32_t l_1460 = (-5L);
                    int32_t l_1463 = 5L;
                    int32_t l_1467[1];
                    int8_t *l_1506 = &p_2641->g_400;
                    int32_t *l_1508 = &l_1467[0];
                    int i;
                    for (i = 0; i < 1; i++)
                        l_1467[i] = 0x4B926F75L;
                    l_1443 = (*p_77);
                    if ((safe_mod_func_uint16_t_u_u((0x1504L && (((*l_1085) |= ((l_1446 > ((safe_div_func_int32_t_s_s(((*l_1456) ^= ((((safe_rshift_func_int8_t_s_s(((*l_977) >= (((((*l_1434) = &p_2641->g_851) == &p_2641->g_851) & (FAKE_DIVERGE(p_2641->global_2_offset, get_global_id(2), 10) | (*l_977))) || (((*l_1453) = 1UL) < (((l_1454 = (FAKE_DIVERGE(p_2641->global_1_offset, get_global_id(1), 10) , ((*l_1277) = &l_1275))) != &p_2641->g_807) < (*l_1443))))), l_1446)) != 3UL) , (*l_1273)) | l_1455)), (*l_977))) <= (*l_977))) == (*l_1443))) | 0L)), (*l_977))))
                    { /* block id: 717 */
                        int32_t *l_1457 = &l_1151;
                        int32_t *l_1458 = &l_1115;
                        int32_t *l_1459 = &l_1199;
                        int32_t *l_1461 = &l_1199;
                        int32_t *l_1462 = (void*)0;
                        int32_t *l_1464 = &l_507;
                        int32_t *l_1465 = (void*)0;
                        int32_t *l_1466[7][4][6] = {{{&l_541,&l_1151,(void*)0,&l_1151,&l_541,&l_550[0]},{&l_541,&l_1151,(void*)0,&l_1151,&l_541,&l_550[0]},{&l_541,&l_1151,(void*)0,&l_1151,&l_541,&l_550[0]},{&l_541,&l_1151,(void*)0,&l_1151,&l_541,&l_550[0]}},{{&l_541,&l_1151,(void*)0,&l_1151,&l_541,&l_550[0]},{&l_541,&l_1151,(void*)0,&l_1151,&l_541,&l_550[0]},{&l_541,&l_1151,(void*)0,&l_1151,&l_541,&l_550[0]},{&l_541,&l_1151,(void*)0,&l_1151,&l_541,&l_550[0]}},{{&l_541,&l_1151,(void*)0,&l_1151,&l_541,&l_550[0]},{&l_541,&l_1151,(void*)0,&l_1151,&l_541,&l_550[0]},{&l_541,&l_1151,(void*)0,&l_1151,&l_541,&l_550[0]},{&l_541,&l_1151,(void*)0,&l_1151,&l_541,&l_550[0]}},{{&l_541,&l_1151,(void*)0,&l_1151,&l_541,&l_550[0]},{&l_541,&l_1151,(void*)0,&l_1151,&l_541,&l_550[0]},{&l_541,&l_1151,(void*)0,&l_1151,&l_541,&l_550[0]},{&l_541,&l_1151,(void*)0,&l_1151,&l_541,&l_550[0]}},{{&l_541,&l_1151,(void*)0,&l_1151,&l_541,&l_550[0]},{&l_541,&l_1151,(void*)0,&l_1151,&l_541,&l_550[0]},{&l_541,&l_1151,(void*)0,&l_1151,&l_541,&l_550[0]},{&l_541,&l_1151,(void*)0,&l_1151,&l_541,&l_550[0]}},{{&l_541,&l_1151,(void*)0,&l_1151,&l_541,&l_550[0]},{&l_541,&l_1151,(void*)0,&l_1151,&l_541,&l_550[0]},{&l_541,&l_1151,(void*)0,&l_1151,&l_541,&l_550[0]},{&l_541,&l_1151,(void*)0,&l_1151,&l_541,&l_550[0]}},{{&l_541,&l_1151,(void*)0,&l_1151,&l_541,&l_550[0]},{&l_541,&l_1151,(void*)0,&l_1151,&l_541,&l_550[0]},{&l_541,&l_1151,(void*)0,&l_1151,&l_541,&l_550[0]},{&l_541,&l_1151,(void*)0,&l_1151,&l_541,&l_550[0]}}};
                        int64_t l_1470[8][4][2] = {{{0L,0x0F3C72259228C827L},{0L,0x0F3C72259228C827L},{0L,0x0F3C72259228C827L},{0L,0x0F3C72259228C827L}},{{0L,0x0F3C72259228C827L},{0L,0x0F3C72259228C827L},{0L,0x0F3C72259228C827L},{0L,0x0F3C72259228C827L}},{{0L,0x0F3C72259228C827L},{0L,0x0F3C72259228C827L},{0L,0x0F3C72259228C827L},{0L,0x0F3C72259228C827L}},{{0L,0x0F3C72259228C827L},{0L,0x0F3C72259228C827L},{0L,0x0F3C72259228C827L},{0L,0x0F3C72259228C827L}},{{0L,0x0F3C72259228C827L},{0L,0x0F3C72259228C827L},{0L,0x0F3C72259228C827L},{0L,0x0F3C72259228C827L}},{{0L,0x0F3C72259228C827L},{0L,0x0F3C72259228C827L},{0L,0x0F3C72259228C827L},{0L,0x0F3C72259228C827L}},{{0L,0x0F3C72259228C827L},{0L,0x0F3C72259228C827L},{0L,0x0F3C72259228C827L},{0L,0x0F3C72259228C827L}},{{0L,0x0F3C72259228C827L},{0L,0x0F3C72259228C827L},{0L,0x0F3C72259228C827L},{0L,0x0F3C72259228C827L}}};
                        int32_t ***l_1479 = &p_2641->g_484[2];
                        int i, j, k;
                        l_1472--;
                        (*l_1307) = func_78(p_2641->g_4, ((l_837 == (l_1478 = l_1477)) < ((void*)0 != &l_1396)), ((*l_1479) = &l_1456), ((*p_2641->g_716) | (safe_rshift_func_int8_t_s_u((*l_1273), (((*l_509) = (((void*)0 != &l_1467[0]) & (*l_1273))) ^ 0x68L)))), p_2641);
                    }
                    else
                    { /* block id: 723 */
                        (*l_977) = ((*l_1456) = (-1L));
                        (*l_977) = 0L;
                    }
                    (*l_1508) &= (safe_mul_func_uint16_t_u_u(((*l_977) = ((safe_rshift_func_int16_t_s_s(2L, (((*l_506) |= ((((safe_lshift_func_int16_t_s_u((((*l_1273) < (safe_sub_func_int64_t_s_s((+(safe_add_func_uint64_t_u_u(p_2641->g_14, (safe_mod_func_uint16_t_u_u((safe_rshift_func_uint8_t_u_u(((safe_div_func_int64_t_s_s(((((safe_sub_func_int32_t_s_s((*l_1273), (((safe_mul_func_int16_t_s_s((((safe_sub_func_int8_t_s_s((&p_2641->g_1379 != (void*)0), (((*l_1443) < (safe_mod_func_uint64_t_u_u(((*l_1443) , ((((*l_486) = l_1506) != l_1506) , (*l_1443))), FAKE_DIVERGE(p_2641->local_2_offset, get_local_id(2), 10)))) , 0x53L))) , (*l_1456)) && (*l_1443)), (*l_1273))) & (*l_1273)) ^ l_508))) >= FAKE_DIVERGE(p_2641->local_2_offset, get_local_id(2), 10)) < 0xC5817093L) , l_1507), 0x4768E04D4273A508L)) , (*l_1443)), 5)), (*l_977)))))), (*l_1456)))) ^ (*l_977)), 11)) | p_2641->g_551) && (*l_1443)) || FAKE_DIVERGE(p_2641->group_2_offset, get_group_id(2), 10))) <= 0L))) > (*l_977))), 0x6BC6L));
                }
            }
        }
        for (l_978 = 0; (l_978 >= (-26)); l_978 = safe_sub_func_uint8_t_u_u(l_978, 7))
        { /* block id: 737 */
            int64_t *l_1513 = &l_1455;
            int64_t *l_1514 = &p_2641->g_830;
            int32_t l_1522 = 0x27BED20EL;
            int32_t *l_1529 = &p_2641->g_1523;
            p_2641->g_1523 = (0x27D2E645L >= (((*l_659) = ((7L | ((**l_488) = ((((*l_1514) = ((*l_1513) = (FAKE_DIVERGE(p_2641->global_0_offset, get_global_id(0), 10) & (18446744073709551615UL < (+((*p_2641->g_716) && GROUP_DIVERGE(2, 1))))))) > (safe_div_func_uint8_t_u_u(GROUP_DIVERGE(0, 1), (*l_977)))) == 6UL))) , (((*l_977) > (((safe_add_func_uint64_t_u_u((((*l_1434) = l_1521) != ((*p_2641->g_716) , (void*)0)), 0x241FF0B90F24EA58L)) ^ 0UL) || l_1522)) <= (*l_977)))) , (*p_2641->g_485)));
            (*l_1529) |= (((safe_mul_func_int8_t_s_s(((*l_977) , 0x1AL), ((*l_509) ^= l_1522))) || (l_1526 & (safe_lshift_func_int8_t_s_u((p_2641->g_167 , 9L), 3)))) ^ p_2641->g_319);
        }
    }
    for (l_610 = 18; (l_610 != 53); l_610 = safe_add_func_uint16_t_u_u(l_610, 6))
    { /* block id: 750 */
        int64_t l_1539 = 0L;
        uint8_t l_1540 = 0UL;
        (*l_1307) = func_78((~(safe_div_func_uint8_t_u_u((safe_mul_func_int16_t_s_s(((void*)0 != l_1536[3][1][4]), (safe_add_func_int8_t_s_s((((p_76 != (void*)0) != (p_2641->g_258 , (+l_1539))) == 0x71AFL), ((l_1540 <= (((l_1539 > l_1540) , l_1539) == l_1539)) && GROUP_DIVERGE(1, 1)))))), l_1539))), p_2641->g_740, p_77, l_1540, p_2641);
        return p_76;
    }
    for (p_2641->g_453 = 0; (p_2641->g_453 <= 1); p_2641->g_453 += 1)
    { /* block id: 756 */
        uint16_t **l_1552 = (void*)0;
        uint16_t ****l_1553 = &p_2641->g_439;
        int32_t l_1556 = 0x18B73358L;
        uint64_t *l_1557[5] = {&l_610,&l_610,&l_610,&l_610,&l_610};
        int32_t l_1558 = 0x63CE74D3L;
        int32_t *l_1563[6][6][7] = {{{(void*)0,&p_2641->g_36,&p_2641->g_36,(void*)0,(void*)0,&p_2641->g_36,&p_2641->g_36},{(void*)0,&p_2641->g_36,&p_2641->g_36,(void*)0,(void*)0,&p_2641->g_36,&p_2641->g_36},{(void*)0,&p_2641->g_36,&p_2641->g_36,(void*)0,(void*)0,&p_2641->g_36,&p_2641->g_36},{(void*)0,&p_2641->g_36,&p_2641->g_36,(void*)0,(void*)0,&p_2641->g_36,&p_2641->g_36},{(void*)0,&p_2641->g_36,&p_2641->g_36,(void*)0,(void*)0,&p_2641->g_36,&p_2641->g_36},{(void*)0,&p_2641->g_36,&p_2641->g_36,(void*)0,(void*)0,&p_2641->g_36,&p_2641->g_36}},{{(void*)0,&p_2641->g_36,&p_2641->g_36,(void*)0,(void*)0,&p_2641->g_36,&p_2641->g_36},{(void*)0,&p_2641->g_36,&p_2641->g_36,(void*)0,(void*)0,&p_2641->g_36,&p_2641->g_36},{(void*)0,&p_2641->g_36,&p_2641->g_36,(void*)0,(void*)0,&p_2641->g_36,&p_2641->g_36},{(void*)0,&p_2641->g_36,&p_2641->g_36,(void*)0,(void*)0,&p_2641->g_36,&p_2641->g_36},{(void*)0,&p_2641->g_36,&p_2641->g_36,(void*)0,(void*)0,&p_2641->g_36,&p_2641->g_36},{(void*)0,&p_2641->g_36,&p_2641->g_36,(void*)0,(void*)0,&p_2641->g_36,&p_2641->g_36}},{{(void*)0,&p_2641->g_36,&p_2641->g_36,(void*)0,(void*)0,&p_2641->g_36,&p_2641->g_36},{(void*)0,&p_2641->g_36,&p_2641->g_36,(void*)0,(void*)0,&p_2641->g_36,&p_2641->g_36},{(void*)0,&p_2641->g_36,&p_2641->g_36,(void*)0,(void*)0,&p_2641->g_36,&p_2641->g_36},{(void*)0,&p_2641->g_36,&p_2641->g_36,(void*)0,(void*)0,&p_2641->g_36,&p_2641->g_36},{(void*)0,&p_2641->g_36,&p_2641->g_36,(void*)0,(void*)0,&p_2641->g_36,&p_2641->g_36},{(void*)0,&p_2641->g_36,&p_2641->g_36,(void*)0,(void*)0,&p_2641->g_36,&p_2641->g_36}},{{(void*)0,&p_2641->g_36,&p_2641->g_36,(void*)0,(void*)0,&p_2641->g_36,&p_2641->g_36},{(void*)0,&p_2641->g_36,&p_2641->g_36,(void*)0,(void*)0,&p_2641->g_36,&p_2641->g_36},{(void*)0,&p_2641->g_36,&p_2641->g_36,(void*)0,(void*)0,&p_2641->g_36,&p_2641->g_36},{(void*)0,&p_2641->g_36,&p_2641->g_36,(void*)0,(void*)0,&p_2641->g_36,&p_2641->g_36},{(void*)0,&p_2641->g_36,&p_2641->g_36,(void*)0,(void*)0,&p_2641->g_36,&p_2641->g_36},{(void*)0,&p_2641->g_36,&p_2641->g_36,(void*)0,(void*)0,&p_2641->g_36,&p_2641->g_36}},{{(void*)0,&p_2641->g_36,&p_2641->g_36,(void*)0,(void*)0,&p_2641->g_36,&p_2641->g_36},{(void*)0,&p_2641->g_36,&p_2641->g_36,(void*)0,(void*)0,&p_2641->g_36,&p_2641->g_36},{(void*)0,&p_2641->g_36,&p_2641->g_36,(void*)0,(void*)0,&p_2641->g_36,&p_2641->g_36},{(void*)0,&p_2641->g_36,&p_2641->g_36,(void*)0,(void*)0,&p_2641->g_36,&p_2641->g_36},{(void*)0,&p_2641->g_36,&p_2641->g_36,(void*)0,(void*)0,&p_2641->g_36,&p_2641->g_36},{(void*)0,&p_2641->g_36,&p_2641->g_36,(void*)0,(void*)0,&p_2641->g_36,&p_2641->g_36}},{{(void*)0,&p_2641->g_36,&p_2641->g_36,(void*)0,(void*)0,&p_2641->g_36,&p_2641->g_36},{(void*)0,&p_2641->g_36,&p_2641->g_36,(void*)0,(void*)0,&p_2641->g_36,&p_2641->g_36},{(void*)0,&p_2641->g_36,&p_2641->g_36,(void*)0,(void*)0,&p_2641->g_36,&p_2641->g_36},{(void*)0,&p_2641->g_36,&p_2641->g_36,(void*)0,(void*)0,&p_2641->g_36,&p_2641->g_36},{(void*)0,&p_2641->g_36,&p_2641->g_36,(void*)0,(void*)0,&p_2641->g_36,&p_2641->g_36},{(void*)0,&p_2641->g_36,&p_2641->g_36,(void*)0,(void*)0,&p_2641->g_36,&p_2641->g_36}}};
        int8_t **l_1611 = &l_487[1][1];
        int8_t **l_1612 = &l_487[2][0];
        uint8_t *l_1635 = (void*)0;
        int64_t l_1653 = (-1L);
        uint32_t l_1736 = 1UL;
        uint32_t l_1742[4] = {0x5E8E4453L,0x5E8E4453L,0x5E8E4453L,0x5E8E4453L};
        int i, j, k;
        if (((((((((safe_div_func_int32_t_s_s(((((p_2641->g_351 = (safe_add_func_uint8_t_u_u((safe_rshift_func_int8_t_s_u((safe_add_func_int8_t_s_s((((-1L) == (safe_rshift_func_int8_t_s_u(l_1551, ((l_1552 == l_1552) & ((void*)0 == l_1553))))) , ((safe_mod_func_int64_t_s_s(p_2641->g_523, (l_1558 = l_1556))) & (l_507 = ((safe_add_func_uint32_t_u_u(((safe_rshift_func_uint8_t_u_u(((void*)0 == &p_2641->g_962[2]), l_1556)) != p_2641->g_1415), l_550[3])) >= l_1556)))), l_613)), 5)), (-2L)))) < 0x424FE898L) , l_1564) && (**p_77)), 0x3A25E6B8L)) | p_2641->g_167) , 18446744073709551614UL) , p_2641->g_167) , 1L) < l_1455) , l_1552) == (void*)0))
        { /* block id: 760 */
            int32_t l_1565[10][6][4] = {{{0x6A7CF858L,(-1L),0x39C0EED7L,0x41E9321AL},{0x6A7CF858L,(-1L),0x39C0EED7L,0x41E9321AL},{0x6A7CF858L,(-1L),0x39C0EED7L,0x41E9321AL},{0x6A7CF858L,(-1L),0x39C0EED7L,0x41E9321AL},{0x6A7CF858L,(-1L),0x39C0EED7L,0x41E9321AL},{0x6A7CF858L,(-1L),0x39C0EED7L,0x41E9321AL}},{{0x6A7CF858L,(-1L),0x39C0EED7L,0x41E9321AL},{0x6A7CF858L,(-1L),0x39C0EED7L,0x41E9321AL},{0x6A7CF858L,(-1L),0x39C0EED7L,0x41E9321AL},{0x6A7CF858L,(-1L),0x39C0EED7L,0x41E9321AL},{0x6A7CF858L,(-1L),0x39C0EED7L,0x41E9321AL},{0x6A7CF858L,(-1L),0x39C0EED7L,0x41E9321AL}},{{0x6A7CF858L,(-1L),0x39C0EED7L,0x41E9321AL},{0x6A7CF858L,(-1L),0x39C0EED7L,0x41E9321AL},{0x6A7CF858L,(-1L),0x39C0EED7L,0x41E9321AL},{0x6A7CF858L,(-1L),0x39C0EED7L,0x41E9321AL},{0x6A7CF858L,(-1L),0x39C0EED7L,0x41E9321AL},{0x6A7CF858L,(-1L),0x39C0EED7L,0x41E9321AL}},{{0x6A7CF858L,(-1L),0x39C0EED7L,0x41E9321AL},{0x6A7CF858L,(-1L),0x39C0EED7L,0x41E9321AL},{0x6A7CF858L,(-1L),0x39C0EED7L,0x41E9321AL},{0x6A7CF858L,(-1L),0x39C0EED7L,0x41E9321AL},{0x6A7CF858L,(-1L),0x39C0EED7L,0x41E9321AL},{0x6A7CF858L,(-1L),0x39C0EED7L,0x41E9321AL}},{{0x6A7CF858L,(-1L),0x39C0EED7L,0x41E9321AL},{0x6A7CF858L,(-1L),0x39C0EED7L,0x41E9321AL},{0x6A7CF858L,(-1L),0x39C0EED7L,0x41E9321AL},{0x6A7CF858L,(-1L),0x39C0EED7L,0x41E9321AL},{0x6A7CF858L,(-1L),0x39C0EED7L,0x41E9321AL},{0x6A7CF858L,(-1L),0x39C0EED7L,0x41E9321AL}},{{0x6A7CF858L,(-1L),0x39C0EED7L,0x41E9321AL},{0x6A7CF858L,(-1L),0x39C0EED7L,0x41E9321AL},{0x6A7CF858L,(-1L),0x39C0EED7L,0x41E9321AL},{0x6A7CF858L,(-1L),0x39C0EED7L,0x41E9321AL},{0x6A7CF858L,(-1L),0x39C0EED7L,0x41E9321AL},{0x6A7CF858L,(-1L),0x39C0EED7L,0x41E9321AL}},{{0x6A7CF858L,(-1L),0x39C0EED7L,0x41E9321AL},{0x6A7CF858L,(-1L),0x39C0EED7L,0x41E9321AL},{0x6A7CF858L,(-1L),0x39C0EED7L,0x41E9321AL},{0x6A7CF858L,(-1L),0x39C0EED7L,0x41E9321AL},{0x6A7CF858L,(-1L),0x39C0EED7L,0x41E9321AL},{0x6A7CF858L,(-1L),0x39C0EED7L,0x41E9321AL}},{{0x6A7CF858L,(-1L),0x39C0EED7L,0x41E9321AL},{0x6A7CF858L,(-1L),0x39C0EED7L,0x41E9321AL},{0x6A7CF858L,(-1L),0x39C0EED7L,0x41E9321AL},{0x6A7CF858L,(-1L),0x39C0EED7L,0x41E9321AL},{0x6A7CF858L,(-1L),0x39C0EED7L,0x41E9321AL},{0x6A7CF858L,(-1L),0x39C0EED7L,0x41E9321AL}},{{0x6A7CF858L,(-1L),0x39C0EED7L,0x41E9321AL},{0x6A7CF858L,(-1L),0x39C0EED7L,0x41E9321AL},{0x6A7CF858L,(-1L),0x39C0EED7L,0x41E9321AL},{0x6A7CF858L,(-1L),0x39C0EED7L,0x41E9321AL},{0x6A7CF858L,(-1L),0x39C0EED7L,0x41E9321AL},{0x6A7CF858L,(-1L),0x39C0EED7L,0x41E9321AL}},{{0x6A7CF858L,(-1L),0x39C0EED7L,0x41E9321AL},{0x6A7CF858L,(-1L),0x39C0EED7L,0x41E9321AL},{0x6A7CF858L,(-1L),0x39C0EED7L,0x41E9321AL},{0x6A7CF858L,(-1L),0x39C0EED7L,0x41E9321AL},{0x6A7CF858L,(-1L),0x39C0EED7L,0x41E9321AL},{0x6A7CF858L,(-1L),0x39C0EED7L,0x41E9321AL}}};
            int32_t l_1568 = 1L;
            int32_t l_1569 = 0x5171C48FL;
            int32_t l_1571 = 0x2CF9A89AL;
            int32_t l_1572 = (-10L);
            int32_t l_1573 = 1L;
            int32_t l_1574 = 0x00F8AC6FL;
            int32_t l_1576 = (-5L);
            int8_t l_1577 = 6L;
            int32_t l_1578 = 0x1CF34152L;
            uint32_t l_1581 = 0xB3406777L;
            int32_t ****l_1592 = (void*)0;
            int64_t l_1606 = 0x17529503079246BBL;
            uint16_t ****l_1629 = &p_2641->g_439;
            uint64_t *l_1651 = &l_1130;
            int32_t *l_1659 = &l_1571;
            int32_t l_1677 = 0x14E05E0BL;
            int i, j, k;
            for (p_2641->g_576 = 3; (p_2641->g_576 >= 0); p_2641->g_576 -= 1)
            { /* block id: 763 */
                uint32_t ****l_1566 = &l_1254;
                int32_t l_1570 = 0L;
                int32_t l_1575 = 1L;
                int32_t l_1579 = (-2L);
                int32_t l_1580[7][7][5] = {{{(-7L),0x2B34A45AL,0x045896E4L,(-7L),0x67F79650L},{(-7L),0x2B34A45AL,0x045896E4L,(-7L),0x67F79650L},{(-7L),0x2B34A45AL,0x045896E4L,(-7L),0x67F79650L},{(-7L),0x2B34A45AL,0x045896E4L,(-7L),0x67F79650L},{(-7L),0x2B34A45AL,0x045896E4L,(-7L),0x67F79650L},{(-7L),0x2B34A45AL,0x045896E4L,(-7L),0x67F79650L},{(-7L),0x2B34A45AL,0x045896E4L,(-7L),0x67F79650L}},{{(-7L),0x2B34A45AL,0x045896E4L,(-7L),0x67F79650L},{(-7L),0x2B34A45AL,0x045896E4L,(-7L),0x67F79650L},{(-7L),0x2B34A45AL,0x045896E4L,(-7L),0x67F79650L},{(-7L),0x2B34A45AL,0x045896E4L,(-7L),0x67F79650L},{(-7L),0x2B34A45AL,0x045896E4L,(-7L),0x67F79650L},{(-7L),0x2B34A45AL,0x045896E4L,(-7L),0x67F79650L},{(-7L),0x2B34A45AL,0x045896E4L,(-7L),0x67F79650L}},{{(-7L),0x2B34A45AL,0x045896E4L,(-7L),0x67F79650L},{(-7L),0x2B34A45AL,0x045896E4L,(-7L),0x67F79650L},{(-7L),0x2B34A45AL,0x045896E4L,(-7L),0x67F79650L},{(-7L),0x2B34A45AL,0x045896E4L,(-7L),0x67F79650L},{(-7L),0x2B34A45AL,0x045896E4L,(-7L),0x67F79650L},{(-7L),0x2B34A45AL,0x045896E4L,(-7L),0x67F79650L},{(-7L),0x2B34A45AL,0x045896E4L,(-7L),0x67F79650L}},{{(-7L),0x2B34A45AL,0x045896E4L,(-7L),0x67F79650L},{(-7L),0x2B34A45AL,0x045896E4L,(-7L),0x67F79650L},{(-7L),0x2B34A45AL,0x045896E4L,(-7L),0x67F79650L},{(-7L),0x2B34A45AL,0x045896E4L,(-7L),0x67F79650L},{(-7L),0x2B34A45AL,0x045896E4L,(-7L),0x67F79650L},{(-7L),0x2B34A45AL,0x045896E4L,(-7L),0x67F79650L},{(-7L),0x2B34A45AL,0x045896E4L,(-7L),0x67F79650L}},{{(-7L),0x2B34A45AL,0x045896E4L,(-7L),0x67F79650L},{(-7L),0x2B34A45AL,0x045896E4L,(-7L),0x67F79650L},{(-7L),0x2B34A45AL,0x045896E4L,(-7L),0x67F79650L},{(-7L),0x2B34A45AL,0x045896E4L,(-7L),0x67F79650L},{(-7L),0x2B34A45AL,0x045896E4L,(-7L),0x67F79650L},{(-7L),0x2B34A45AL,0x045896E4L,(-7L),0x67F79650L},{(-7L),0x2B34A45AL,0x045896E4L,(-7L),0x67F79650L}},{{(-7L),0x2B34A45AL,0x045896E4L,(-7L),0x67F79650L},{(-7L),0x2B34A45AL,0x045896E4L,(-7L),0x67F79650L},{(-7L),0x2B34A45AL,0x045896E4L,(-7L),0x67F79650L},{(-7L),0x2B34A45AL,0x045896E4L,(-7L),0x67F79650L},{(-7L),0x2B34A45AL,0x045896E4L,(-7L),0x67F79650L},{(-7L),0x2B34A45AL,0x045896E4L,(-7L),0x67F79650L},{(-7L),0x2B34A45AL,0x045896E4L,(-7L),0x67F79650L}},{{(-7L),0x2B34A45AL,0x045896E4L,(-7L),0x67F79650L},{(-7L),0x2B34A45AL,0x045896E4L,(-7L),0x67F79650L},{(-7L),0x2B34A45AL,0x045896E4L,(-7L),0x67F79650L},{(-7L),0x2B34A45AL,0x045896E4L,(-7L),0x67F79650L},{(-7L),0x2B34A45AL,0x045896E4L,(-7L),0x67F79650L},{(-7L),0x2B34A45AL,0x045896E4L,(-7L),0x67F79650L},{(-7L),0x2B34A45AL,0x045896E4L,(-7L),0x67F79650L}}};
                int32_t *l_1588 = &p_2641->g_453;
                int32_t ***l_1591 = (void*)0;
                int32_t ****l_1590[4][6] = {{&l_1591,&l_1591,&l_1591,&l_1591,&l_1591,&l_1591},{&l_1591,&l_1591,&l_1591,&l_1591,&l_1591,&l_1591},{&l_1591,&l_1591,&l_1591,&l_1591,&l_1591,&l_1591},{&l_1591,&l_1591,&l_1591,&l_1591,&l_1591,&l_1591}};
                int32_t *****l_1589[10][4][6] = {{{&l_1590[2][2],&l_1590[2][3],&l_1590[3][3],&l_1590[2][2],&l_1590[1][0],(void*)0},{&l_1590[2][2],&l_1590[2][3],&l_1590[3][3],&l_1590[2][2],&l_1590[1][0],(void*)0},{&l_1590[2][2],&l_1590[2][3],&l_1590[3][3],&l_1590[2][2],&l_1590[1][0],(void*)0},{&l_1590[2][2],&l_1590[2][3],&l_1590[3][3],&l_1590[2][2],&l_1590[1][0],(void*)0}},{{&l_1590[2][2],&l_1590[2][3],&l_1590[3][3],&l_1590[2][2],&l_1590[1][0],(void*)0},{&l_1590[2][2],&l_1590[2][3],&l_1590[3][3],&l_1590[2][2],&l_1590[1][0],(void*)0},{&l_1590[2][2],&l_1590[2][3],&l_1590[3][3],&l_1590[2][2],&l_1590[1][0],(void*)0},{&l_1590[2][2],&l_1590[2][3],&l_1590[3][3],&l_1590[2][2],&l_1590[1][0],(void*)0}},{{&l_1590[2][2],&l_1590[2][3],&l_1590[3][3],&l_1590[2][2],&l_1590[1][0],(void*)0},{&l_1590[2][2],&l_1590[2][3],&l_1590[3][3],&l_1590[2][2],&l_1590[1][0],(void*)0},{&l_1590[2][2],&l_1590[2][3],&l_1590[3][3],&l_1590[2][2],&l_1590[1][0],(void*)0},{&l_1590[2][2],&l_1590[2][3],&l_1590[3][3],&l_1590[2][2],&l_1590[1][0],(void*)0}},{{&l_1590[2][2],&l_1590[2][3],&l_1590[3][3],&l_1590[2][2],&l_1590[1][0],(void*)0},{&l_1590[2][2],&l_1590[2][3],&l_1590[3][3],&l_1590[2][2],&l_1590[1][0],(void*)0},{&l_1590[2][2],&l_1590[2][3],&l_1590[3][3],&l_1590[2][2],&l_1590[1][0],(void*)0},{&l_1590[2][2],&l_1590[2][3],&l_1590[3][3],&l_1590[2][2],&l_1590[1][0],(void*)0}},{{&l_1590[2][2],&l_1590[2][3],&l_1590[3][3],&l_1590[2][2],&l_1590[1][0],(void*)0},{&l_1590[2][2],&l_1590[2][3],&l_1590[3][3],&l_1590[2][2],&l_1590[1][0],(void*)0},{&l_1590[2][2],&l_1590[2][3],&l_1590[3][3],&l_1590[2][2],&l_1590[1][0],(void*)0},{&l_1590[2][2],&l_1590[2][3],&l_1590[3][3],&l_1590[2][2],&l_1590[1][0],(void*)0}},{{&l_1590[2][2],&l_1590[2][3],&l_1590[3][3],&l_1590[2][2],&l_1590[1][0],(void*)0},{&l_1590[2][2],&l_1590[2][3],&l_1590[3][3],&l_1590[2][2],&l_1590[1][0],(void*)0},{&l_1590[2][2],&l_1590[2][3],&l_1590[3][3],&l_1590[2][2],&l_1590[1][0],(void*)0},{&l_1590[2][2],&l_1590[2][3],&l_1590[3][3],&l_1590[2][2],&l_1590[1][0],(void*)0}},{{&l_1590[2][2],&l_1590[2][3],&l_1590[3][3],&l_1590[2][2],&l_1590[1][0],(void*)0},{&l_1590[2][2],&l_1590[2][3],&l_1590[3][3],&l_1590[2][2],&l_1590[1][0],(void*)0},{&l_1590[2][2],&l_1590[2][3],&l_1590[3][3],&l_1590[2][2],&l_1590[1][0],(void*)0},{&l_1590[2][2],&l_1590[2][3],&l_1590[3][3],&l_1590[2][2],&l_1590[1][0],(void*)0}},{{&l_1590[2][2],&l_1590[2][3],&l_1590[3][3],&l_1590[2][2],&l_1590[1][0],(void*)0},{&l_1590[2][2],&l_1590[2][3],&l_1590[3][3],&l_1590[2][2],&l_1590[1][0],(void*)0},{&l_1590[2][2],&l_1590[2][3],&l_1590[3][3],&l_1590[2][2],&l_1590[1][0],(void*)0},{&l_1590[2][2],&l_1590[2][3],&l_1590[3][3],&l_1590[2][2],&l_1590[1][0],(void*)0}},{{&l_1590[2][2],&l_1590[2][3],&l_1590[3][3],&l_1590[2][2],&l_1590[1][0],(void*)0},{&l_1590[2][2],&l_1590[2][3],&l_1590[3][3],&l_1590[2][2],&l_1590[1][0],(void*)0},{&l_1590[2][2],&l_1590[2][3],&l_1590[3][3],&l_1590[2][2],&l_1590[1][0],(void*)0},{&l_1590[2][2],&l_1590[2][3],&l_1590[3][3],&l_1590[2][2],&l_1590[1][0],(void*)0}},{{&l_1590[2][2],&l_1590[2][3],&l_1590[3][3],&l_1590[2][2],&l_1590[1][0],(void*)0},{&l_1590[2][2],&l_1590[2][3],&l_1590[3][3],&l_1590[2][2],&l_1590[1][0],(void*)0},{&l_1590[2][2],&l_1590[2][3],&l_1590[3][3],&l_1590[2][2],&l_1590[1][0],(void*)0},{&l_1590[2][2],&l_1590[2][3],&l_1590[3][3],&l_1590[2][2],&l_1590[1][0],(void*)0}}};
                int32_t l_1594 = 0L;
                uint16_t *l_1599[9];
                uint16_t ****l_1630 = &p_2641->g_439;
                uint32_t l_1641 = 0xFBF5EE60L;
                uint32_t ***l_1644 = (void*)0;
                uint8_t l_1656 = 6UL;
                int i, j, k;
                for (i = 0; i < 9; i++)
                    l_1599[i] = (void*)0;
                (1 + 1);
            }
        }
        else
        { /* block id: 813 */
            uint16_t l_1682[1][1][10] = {{{0x8514L,0x8514L,0x8514L,0x8514L,0x8514L,0x8514L,0x8514L,0x8514L,0x8514L,0x8514L}}};
            int32_t l_1685 = 0x129CF6EEL;
            int32_t l_1687 = 0x63E6209CL;
            int32_t l_1688[6] = {(-10L),0x2ED495BBL,(-10L),(-10L),0x2ED495BBL,(-10L)};
            int8_t l_1703 = 0x31L;
            uint16_t ******l_1711 = (void*)0;
            uint64_t l_1712 = 1UL;
            int32_t l_1716 = 0x3ACFB94BL;
            int32_t *l_1735 = &l_1688[2];
            int i, j, k;
            for (l_1130 = 0; (l_1130 <= 4); l_1130 += 1)
            { /* block id: 816 */
                int32_t l_1680 = 0x11DD2371L;
                int32_t l_1681[8] = {(-3L),(-3L),(-3L),(-3L),(-3L),(-3L),(-3L),(-3L)};
                int8_t l_1705 = 0x28L;
                uint16_t l_1708 = 1UL;
                int32_t l_1734 = 2L;
                int i;
                --l_1682[0][0][1];
                for (l_1551 = 1; (l_1551 <= 4); l_1551 += 1)
                { /* block id: 820 */
                    int8_t l_1686[7];
                    int32_t l_1689 = (-7L);
                    int32_t l_1690 = 0L;
                    int32_t l_1691[7][2][3];
                    uint16_t l_1692 = 0x57DFL;
                    int i, j, k;
                    for (i = 0; i < 7; i++)
                        l_1686[i] = 0x51L;
                    for (i = 0; i < 7; i++)
                    {
                        for (j = 0; j < 2; j++)
                        {
                            for (k = 0; k < 3; k++)
                                l_1691[i][j][k] = 2L;
                        }
                    }
                    if ((**p_77))
                        break;
                    l_1692--;
                    (*l_1307) = func_78(((((void*)0 != &p_76) & (safe_lshift_func_uint16_t_u_u(FAKE_DIVERGE(p_2641->group_1_offset, get_group_id(1), 10), 0))) | (safe_lshift_func_uint8_t_u_s(((l_1682[0][0][6] || l_1681[4]) == (0x3CA7L <= (1L | (safe_sub_func_int64_t_s_s(((((void*)0 == (*p_2641->g_1322)) <= ((0x3D8602E8L == l_1690) == p_2641->g_4)) < 0x423C9EE08CCA72A8L), GROUP_DIVERGE(1, 1)))))), 2))), p_2641->g_737[2][5][4], &p_2641->g_122[6], p_2641->g_145, p_2641);
                }
                for (l_1558 = 4; (l_1558 >= 1); l_1558 -= 1)
                { /* block id: 827 */
                    int8_t l_1701 = 0x3CL;
                    int32_t l_1702 = (-1L);
                    int32_t l_1704 = 0L;
                    int32_t l_1706 = 0x5897FF22L;
                    int32_t l_1707[3];
                    int8_t ***l_1713[3];
                    uint32_t *l_1721 = &p_2641->g_351;
                    uint32_t l_1726 = 1UL;
                    uint32_t *l_1729 = &l_881;
                    int i;
                    for (i = 0; i < 3; i++)
                        l_1707[i] = 0x43F7A235L;
                    for (i = 0; i < 3; i++)
                        l_1713[i] = &l_1612;
                    --l_1708;
                    l_1681[4] = ((l_1682[0][0][1] != (((((l_1711 == (void*)0) || (l_1701 != ((l_1551 &= (l_1688[1] = (((l_1712 || ((p_2641->g_523 , &p_2641->g_309[1][4][3]) == (p_2641->g_1714 = (p_2641->g_9 , (void*)0)))) & l_1703) && 255UL))) | 0x1C107500L))) || p_2641->g_1613) , l_1716) , 0xE57FC389D9F35515L)) , l_1685);
                    l_1735 = func_78(((((safe_mod_func_int64_t_s_s(((safe_lshift_func_uint16_t_u_s((GROUP_DIVERGE(1, 1) >= l_1716), 0)) > (((*p_2641->g_716) = (-1L)) && ((l_1734 |= (((+(--(*l_1721))) | ((*p_77) != (((safe_sub_func_uint16_t_u_u(l_1726, ((safe_lshift_func_uint8_t_u_s(l_1707[0], 0)) <= (((*l_1729) = (l_1688[2] & 0xA753L)) && (safe_mul_func_uint16_t_u_u((safe_add_func_uint64_t_u_u(p_2641->g_145, (-1L))), l_1681[4])))))) || 0x4E09L) , (*p_77)))) || l_1703)) >= l_1702))), l_508)) > l_1707[0]) == l_1702) , l_1682[0][0][0]), l_1704, p_77, l_1704, p_2641);
                }
            }
        }
        l_1551 = 0x2ABC2D0FL;
        for (p_2641->g_115 = 0; (p_2641->g_115 <= 4); p_2641->g_115 += 1)
        { /* block id: 844 */
            uint16_t l_1737[7];
            uint16_t *l_1745 = &p_2641->g_551;
            int32_t l_1746 = 0x5EC3CC52L;
            int32_t l_1747 = 0x47D32123L;
            int32_t l_1748 = 0x1F5138D4L;
            int32_t l_1749[2][10][3] = {{{(-8L),0x3A97E893L,1L},{(-8L),0x3A97E893L,1L},{(-8L),0x3A97E893L,1L},{(-8L),0x3A97E893L,1L},{(-8L),0x3A97E893L,1L},{(-8L),0x3A97E893L,1L},{(-8L),0x3A97E893L,1L},{(-8L),0x3A97E893L,1L},{(-8L),0x3A97E893L,1L},{(-8L),0x3A97E893L,1L}},{{(-8L),0x3A97E893L,1L},{(-8L),0x3A97E893L,1L},{(-8L),0x3A97E893L,1L},{(-8L),0x3A97E893L,1L},{(-8L),0x3A97E893L,1L},{(-8L),0x3A97E893L,1L},{(-8L),0x3A97E893L,1L},{(-8L),0x3A97E893L,1L},{(-8L),0x3A97E893L,1L},{(-8L),0x3A97E893L,1L}}};
            int i, j, k;
            for (i = 0; i < 7; i++)
                l_1737[i] = 0x81B8L;
            l_1736 = (**p_77);
            l_1746 |= ((-5L) >= ((p_2641->g_1744 = ((((++l_1737[6]) <= ((safe_mod_func_uint64_t_u_u(l_1742[2], 0x1D9B4576A594D623L)) , (p_2641->g_167 = (0xD6L >= 0x73L)))) | 0L) , l_1743)) != (l_1745 = l_1745)));
            --l_1750;
            if (l_1747)
                break;
            for (p_2641->g_740 = 0; (p_2641->g_740 <= 4); p_2641->g_740 += 1)
            { /* block id: 855 */
                (*p_2641->g_964) = (*p_2641->g_964);
            }
        }
    }
    return p_76;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint32_t * func_78(int64_t  p_79, uint64_t  p_80, int32_t ** p_81, uint64_t  p_82, struct S0 * p_2641)
{ /* block id: 259 */
    uint32_t *l_483[4];
    int i;
    for (i = 0; i < 4; i++)
        l_483[i] = &p_2641->g_23;
    return l_483[0];
}


/* ------------------------------------------ */
/* 
 * reads : p_2641->g_351 p_2641->g_9 p_2641->g_23 p_2641->g_341 p_2641->g_249 p_2641->g_36 p_2641->g_2 p_2641->g_179 p_2641->g_115 p_2641->g_167 p_2641->g_132 p_2641->g_400 p_2641->g_3 p_2641->g_145 p_2641->g_258
 * writes: p_2641->g_351 p_2641->g_178 p_2641->g_145 p_2641->g_36 p_2641->g_115 p_2641->g_132 p_2641->g_249 p_2641->g_122 p_2641->g_400 p_2641->g_439 p_2641->g_451 p_2641->g_453 p_2641->g_167
 */
int16_t  func_93(uint32_t * p_94, int32_t  p_95, int32_t ** p_96, int32_t * p_97, struct S0 * p_2641)
{ /* block id: 172 */
    uint8_t l_349 = 0x0BL;
    uint32_t *l_350 = &p_2641->g_351;
    uint16_t **l_362 = &p_2641->g_179;
    uint16_t ***l_363 = &p_2641->g_178;
    int16_t *l_366 = &p_2641->g_145;
    int32_t *l_367 = &p_2641->g_36;
    uint16_t l_372 = 0x561DL;
    int32_t **l_375 = &l_367;
    uint32_t *l_387[3][10] = {{&p_2641->g_23,&p_2641->g_23,&p_2641->g_23,&p_2641->g_23,(void*)0,&p_2641->g_23,&p_2641->g_23,&p_2641->g_23,&p_2641->g_23,&p_2641->g_23},{&p_2641->g_23,&p_2641->g_23,&p_2641->g_23,&p_2641->g_23,(void*)0,&p_2641->g_23,&p_2641->g_23,&p_2641->g_23,&p_2641->g_23,&p_2641->g_23},{&p_2641->g_23,&p_2641->g_23,&p_2641->g_23,&p_2641->g_23,(void*)0,&p_2641->g_23,&p_2641->g_23,&p_2641->g_23,&p_2641->g_23,&p_2641->g_23}};
    uint32_t **l_386[4][1][6];
    int32_t l_391[8];
    int64_t l_392 = 0x38DC0A0A953E3AA3L;
    int32_t l_393 = 0x5989AD27L;
    int32_t l_422 = 0L;
    uint64_t *l_449 = (void*)0;
    int32_t l_461 = 0x6895BFC8L;
    uint64_t l_466 = 0x761255775F2979F3L;
    int32_t *l_470 = &p_2641->g_453;
    int32_t **l_469 = &l_470;
    uint16_t l_481 = 0xB694L;
    int i, j, k;
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 6; k++)
                l_386[i][j][k] = &l_387[2][6];
        }
    }
    for (i = 0; i < 8; i++)
        l_391[i] = 0x65FC8E73L;
    (*l_367) &= (((safe_mul_func_int8_t_s_s(l_349, ((++(*l_350)) == l_349))) && (p_2641->g_9 >= ((((*l_366) = ((p_2641->g_23 || (safe_sub_func_int32_t_s_s(((l_349 > (((safe_mul_func_int8_t_s_s((safe_rshift_func_uint8_t_u_u((safe_lshift_func_int16_t_s_s(((l_362 != ((*l_363) = &p_2641->g_179)) , p_95), 1)), (safe_mod_func_int64_t_s_s(p_2641->g_341, 0x07A445A750B496DEL)))), p_95)) == 0L) != p_95)) ^ p_2641->g_249), 0xAF1AD423L))) || l_349)) != l_349) <= l_349))) != l_349);
    l_367 = l_367;
    if (((*p_94) , (safe_lshift_func_uint16_t_u_u((safe_mod_func_uint16_t_u_u(((((*l_375) = ((++l_372) , &p_2641->g_4)) != ((safe_add_func_int16_t_s_s((+p_2641->g_249), ((((*l_366) = (safe_sub_func_uint8_t_u_u((p_95 != (safe_mod_func_int64_t_s_s(0x310EE9FE0C1EAA6CL, (18446744073709551606UL ^ p_2641->g_2)))), (255UL & (((((*p_2641->g_179)++) < ((((((safe_div_func_int16_t_s_s((l_386[2][0][3] != &l_387[0][3]), l_349)) == GROUP_DIVERGE(2, 1)) < (-5L)) | p_95) ^ (-9L)) < p_2641->g_36)) >= 1UL) >= 0x1A2A051C5BF27620L))))) | p_2641->g_36) , p_2641->g_249))) , &p_95)) <= 0x41L), p_95)), p_95))))
    { /* block id: 182 */
        for (p_2641->g_36 = 0; (p_2641->g_36 != (-26)); --p_2641->g_36)
        { /* block id: 185 */
            return p_2641->g_167;
        }
    }
    else
    { /* block id: 188 */
        int32_t *l_390[6][7][3] = {{{&p_2641->g_9,&p_2641->g_36,&p_2641->g_36},{&p_2641->g_9,&p_2641->g_36,&p_2641->g_36},{&p_2641->g_9,&p_2641->g_36,&p_2641->g_36},{&p_2641->g_9,&p_2641->g_36,&p_2641->g_36},{&p_2641->g_9,&p_2641->g_36,&p_2641->g_36},{&p_2641->g_9,&p_2641->g_36,&p_2641->g_36},{&p_2641->g_9,&p_2641->g_36,&p_2641->g_36}},{{&p_2641->g_9,&p_2641->g_36,&p_2641->g_36},{&p_2641->g_9,&p_2641->g_36,&p_2641->g_36},{&p_2641->g_9,&p_2641->g_36,&p_2641->g_36},{&p_2641->g_9,&p_2641->g_36,&p_2641->g_36},{&p_2641->g_9,&p_2641->g_36,&p_2641->g_36},{&p_2641->g_9,&p_2641->g_36,&p_2641->g_36},{&p_2641->g_9,&p_2641->g_36,&p_2641->g_36}},{{&p_2641->g_9,&p_2641->g_36,&p_2641->g_36},{&p_2641->g_9,&p_2641->g_36,&p_2641->g_36},{&p_2641->g_9,&p_2641->g_36,&p_2641->g_36},{&p_2641->g_9,&p_2641->g_36,&p_2641->g_36},{&p_2641->g_9,&p_2641->g_36,&p_2641->g_36},{&p_2641->g_9,&p_2641->g_36,&p_2641->g_36},{&p_2641->g_9,&p_2641->g_36,&p_2641->g_36}},{{&p_2641->g_9,&p_2641->g_36,&p_2641->g_36},{&p_2641->g_9,&p_2641->g_36,&p_2641->g_36},{&p_2641->g_9,&p_2641->g_36,&p_2641->g_36},{&p_2641->g_9,&p_2641->g_36,&p_2641->g_36},{&p_2641->g_9,&p_2641->g_36,&p_2641->g_36},{&p_2641->g_9,&p_2641->g_36,&p_2641->g_36},{&p_2641->g_9,&p_2641->g_36,&p_2641->g_36}},{{&p_2641->g_9,&p_2641->g_36,&p_2641->g_36},{&p_2641->g_9,&p_2641->g_36,&p_2641->g_36},{&p_2641->g_9,&p_2641->g_36,&p_2641->g_36},{&p_2641->g_9,&p_2641->g_36,&p_2641->g_36},{&p_2641->g_9,&p_2641->g_36,&p_2641->g_36},{&p_2641->g_9,&p_2641->g_36,&p_2641->g_36},{&p_2641->g_9,&p_2641->g_36,&p_2641->g_36}},{{&p_2641->g_9,&p_2641->g_36,&p_2641->g_36},{&p_2641->g_9,&p_2641->g_36,&p_2641->g_36},{&p_2641->g_9,&p_2641->g_36,&p_2641->g_36},{&p_2641->g_9,&p_2641->g_36,&p_2641->g_36},{&p_2641->g_9,&p_2641->g_36,&p_2641->g_36},{&p_2641->g_9,&p_2641->g_36,&p_2641->g_36},{&p_2641->g_9,&p_2641->g_36,&p_2641->g_36}}};
        uint16_t l_394 = 1UL;
        int32_t ***l_471 = &l_469;
        int i, j, k;
        ++l_394;
        for (p_2641->g_132 = 0; (p_2641->g_132 <= 7); p_2641->g_132 += 1)
        { /* block id: 192 */
            uint8_t *l_425 = (void*)0;
            uint8_t **l_424 = &l_425;
            uint32_t l_448 = 4294967295UL;
            int32_t l_460[3];
            int i;
            for (i = 0; i < 3; i++)
                l_460[i] = 0L;
            l_391[p_2641->g_132] = 0L;
            for (l_394 = 0; (l_394 <= 5); l_394 += 1)
            { /* block id: 196 */
                int8_t l_423 = 0x6EL;
                uint16_t ***l_438 = &p_2641->g_178;
                int32_t *l_457 = &l_391[0];
                int32_t l_462 = 0x4120BF92L;
                int32_t l_465 = 0x45F5D95BL;
                for (p_2641->g_145 = 0; (p_2641->g_145 <= 5); p_2641->g_145 += 1)
                { /* block id: 199 */
                    for (p_2641->g_249 = 1; (p_2641->g_249 <= 7); p_2641->g_249 += 1)
                    { /* block id: 202 */
                        int8_t *l_399 = &p_2641->g_400;
                        int32_t l_421 = (-5L);
                        uint8_t ***l_426 = &l_424;
                        int i, j, k;
                        p_2641->g_122[5] = &l_391[(l_394 + 1)];
                        (*l_426) = (l_391[p_2641->g_132] , ((safe_mul_func_int8_t_s_s(((*l_399) &= l_391[p_2641->g_132]), (((safe_sub_func_uint8_t_u_u(0UL, (safe_rshift_func_int16_t_s_u(((safe_sub_func_uint8_t_u_u((p_2641->g_351 != l_391[(l_394 + 1)]), l_391[(l_394 + 1)])) ^ (((safe_div_func_uint16_t_u_u((safe_rshift_func_int16_t_s_u((safe_mul_func_uint16_t_u_u(((safe_mul_func_int8_t_s_s(((safe_lshift_func_uint16_t_u_u(0UL, 13)) >= (safe_rshift_func_int8_t_s_u((p_95 , (l_421 = (safe_div_func_uint16_t_u_u((p_2641->g_23 , p_95), GROUP_DIVERGE(1, 1))))), p_2641->g_3))), 7UL)) <= p_2641->g_145), p_2641->g_341)), l_422)), l_391[p_2641->g_132])) > p_95) & l_423)), 5)))) == l_391[p_2641->g_132]) & p_2641->g_167))) , l_424));
                    }
                }
                for (l_422 = 8; (l_422 < (-12)); --l_422)
                { /* block id: 211 */
                    int32_t *l_429 = (void*)0;
                    uint16_t ***l_436 = (void*)0;
                    uint16_t ****l_437[5] = {&l_436,&l_436,&l_436,&l_436,&l_436};
                    uint64_t *l_450[9][9] = {{&p_2641->g_451[2][2][4],&p_2641->g_451[0][0][0],&p_2641->g_451[4][2][4],&p_2641->g_451[4][2][4],&p_2641->g_451[0][2][0],&p_2641->g_451[1][4][3],&p_2641->g_451[1][2][1],&p_2641->g_451[4][2][4],&p_2641->g_451[4][2][4]},{&p_2641->g_451[2][2][4],&p_2641->g_451[0][0][0],&p_2641->g_451[4][2][4],&p_2641->g_451[4][2][4],&p_2641->g_451[0][2][0],&p_2641->g_451[1][4][3],&p_2641->g_451[1][2][1],&p_2641->g_451[4][2][4],&p_2641->g_451[4][2][4]},{&p_2641->g_451[2][2][4],&p_2641->g_451[0][0][0],&p_2641->g_451[4][2][4],&p_2641->g_451[4][2][4],&p_2641->g_451[0][2][0],&p_2641->g_451[1][4][3],&p_2641->g_451[1][2][1],&p_2641->g_451[4][2][4],&p_2641->g_451[4][2][4]},{&p_2641->g_451[2][2][4],&p_2641->g_451[0][0][0],&p_2641->g_451[4][2][4],&p_2641->g_451[4][2][4],&p_2641->g_451[0][2][0],&p_2641->g_451[1][4][3],&p_2641->g_451[1][2][1],&p_2641->g_451[4][2][4],&p_2641->g_451[4][2][4]},{&p_2641->g_451[2][2][4],&p_2641->g_451[0][0][0],&p_2641->g_451[4][2][4],&p_2641->g_451[4][2][4],&p_2641->g_451[0][2][0],&p_2641->g_451[1][4][3],&p_2641->g_451[1][2][1],&p_2641->g_451[4][2][4],&p_2641->g_451[4][2][4]},{&p_2641->g_451[2][2][4],&p_2641->g_451[0][0][0],&p_2641->g_451[4][2][4],&p_2641->g_451[4][2][4],&p_2641->g_451[0][2][0],&p_2641->g_451[1][4][3],&p_2641->g_451[1][2][1],&p_2641->g_451[4][2][4],&p_2641->g_451[4][2][4]},{&p_2641->g_451[2][2][4],&p_2641->g_451[0][0][0],&p_2641->g_451[4][2][4],&p_2641->g_451[4][2][4],&p_2641->g_451[0][2][0],&p_2641->g_451[1][4][3],&p_2641->g_451[1][2][1],&p_2641->g_451[4][2][4],&p_2641->g_451[4][2][4]},{&p_2641->g_451[2][2][4],&p_2641->g_451[0][0][0],&p_2641->g_451[4][2][4],&p_2641->g_451[4][2][4],&p_2641->g_451[0][2][0],&p_2641->g_451[1][4][3],&p_2641->g_451[1][2][1],&p_2641->g_451[4][2][4],&p_2641->g_451[4][2][4]},{&p_2641->g_451[2][2][4],&p_2641->g_451[0][0][0],&p_2641->g_451[4][2][4],&p_2641->g_451[4][2][4],&p_2641->g_451[0][2][0],&p_2641->g_451[1][4][3],&p_2641->g_451[1][2][1],&p_2641->g_451[4][2][4],&p_2641->g_451[4][2][4]}};
                    int32_t *l_452 = &p_2641->g_453;
                    int32_t l_454 = 0x243C3185L;
                    int i, j;
                    (*l_375) = l_429;
                    l_454 &= (((*l_452) = ((p_2641->g_451[2][4][3] = ((((*l_366) |= ((((safe_sub_func_int64_t_s_s((safe_lshift_func_int16_t_s_u(l_391[p_2641->g_132], 1)), 0x0BE94F84AA7D7F79L)) >= ((safe_lshift_func_uint16_t_u_u(65531UL, ((((l_363 = (p_2641->g_439 = (l_438 = l_436))) != (void*)0) < (safe_mul_func_uint8_t_u_u((((((void*)0 != (*l_375)) != (safe_sub_func_int32_t_s_s(((safe_div_func_int16_t_s_s((p_95 > (safe_mod_func_uint64_t_u_u(((((l_448 == p_95) , (*p_94)) , p_2641->g_258) && p_95), 0x686B2E86ED72C7CAL))), 1L)) < GROUP_DIVERGE(1, 1)), 0L))) ^ p_95) == p_95), 0x7FL))) >= 1L))) , l_423)) , l_438) != (void*)0)) , l_449) != &p_2641->g_167)) , (-1L))) , (-5L));
                }
                for (p_2641->g_167 = 0; (p_2641->g_167 < 13); p_2641->g_167 = safe_add_func_uint8_t_u_u(p_2641->g_167, 4))
                { /* block id: 223 */
                    int8_t l_458 = (-1L);
                    int32_t l_459 = 0x3FA238B3L;
                    int32_t l_463 = (-6L);
                    int32_t l_464[4][4][7] = {{{(-1L),(-1L),(-1L),(-1L),(-4L),(-1L),0x7F4850D2L},{(-1L),(-1L),(-1L),(-1L),(-4L),(-1L),0x7F4850D2L},{(-1L),(-1L),(-1L),(-1L),(-4L),(-1L),0x7F4850D2L},{(-1L),(-1L),(-1L),(-1L),(-4L),(-1L),0x7F4850D2L}},{{(-1L),(-1L),(-1L),(-1L),(-4L),(-1L),0x7F4850D2L},{(-1L),(-1L),(-1L),(-1L),(-4L),(-1L),0x7F4850D2L},{(-1L),(-1L),(-1L),(-1L),(-4L),(-1L),0x7F4850D2L},{(-1L),(-1L),(-1L),(-1L),(-4L),(-1L),0x7F4850D2L}},{{(-1L),(-1L),(-1L),(-1L),(-4L),(-1L),0x7F4850D2L},{(-1L),(-1L),(-1L),(-1L),(-4L),(-1L),0x7F4850D2L},{(-1L),(-1L),(-1L),(-1L),(-4L),(-1L),0x7F4850D2L},{(-1L),(-1L),(-1L),(-1L),(-4L),(-1L),0x7F4850D2L}},{{(-1L),(-1L),(-1L),(-1L),(-4L),(-1L),0x7F4850D2L},{(-1L),(-1L),(-1L),(-1L),(-4L),(-1L),0x7F4850D2L},{(-1L),(-1L),(-1L),(-1L),(-4L),(-1L),0x7F4850D2L},{(-1L),(-1L),(-1L),(-1L),(-4L),(-1L),0x7F4850D2L}}};
                    int i, j, k;
                    for (l_392 = 0; (l_392 <= 2); l_392 += 1)
                    { /* block id: 226 */
                        int i, j, k;
                        l_390[l_394][l_394][l_392] = l_457;
                    }
                    for (l_448 = 2; (l_448 <= 6); l_448 += 1)
                    { /* block id: 231 */
                        int i;
                        (*l_457) = 9L;
                        (*l_457) ^= (-9L);
                        l_458 = (*l_457);
                    }
                    ++l_466;
                    (*l_375) = (void*)0;
                }
            }
        }
        (*l_471) = l_469;
        for (p_95 = 0; (p_95 == 7); ++p_95)
        { /* block id: 244 */
            uint64_t l_478 = 0x6FA7869CCB512BF8L;
            for (p_2641->g_249 = 0; (p_2641->g_249 == 49); p_2641->g_249 = safe_add_func_uint8_t_u_u(p_2641->g_249, 5))
            { /* block id: 247 */
                (*l_375) = &p_95;
            }
            for (l_422 = 0; (l_422 < 21); l_422 = safe_add_func_int32_t_s_s(l_422, 8))
            { /* block id: 252 */
                ++l_478;
            }
            if (p_95)
                continue;
        }
    }
    return l_481;
}


/* ------------------------------------------ */
/* 
 * reads : p_2641->g_36 p_2641->g_9
 * writes: p_2641->g_36
 */
uint16_t  func_98(int32_t  p_99, uint32_t  p_100, uint32_t * p_101, uint32_t  p_102, uint32_t  p_103, struct S0 * p_2641)
{ /* block id: 30 */
    int32_t **l_133 = &p_2641->g_122[3];
    int32_t l_169 = 0x7028F5B5L;
    int32_t *l_170 = (void*)0;
    uint16_t *l_175 = &p_2641->g_115;
    uint16_t **l_174 = &l_175;
    uint16_t **l_180[4] = {&l_175,&l_175,&l_175,&l_175};
    int32_t *l_217[10] = {&p_2641->g_9,&l_169,&p_2641->g_9,&p_2641->g_9,&l_169,&p_2641->g_9,&p_2641->g_9,&l_169,&p_2641->g_9,&p_2641->g_9};
    int16_t l_315 = (-1L);
    uint16_t l_344 = 8UL;
    int i;
    for (p_103 = (-20); (p_103 != 41); p_103 = safe_add_func_int32_t_s_s(p_103, 1))
    { /* block id: 33 */
        uint16_t *l_113 = (void*)0;
        uint16_t *l_114[5][3] = {{&p_2641->g_115,&p_2641->g_115,&p_2641->g_115},{&p_2641->g_115,&p_2641->g_115,&p_2641->g_115},{&p_2641->g_115,&p_2641->g_115,&p_2641->g_115},{&p_2641->g_115,&p_2641->g_115,&p_2641->g_115},{&p_2641->g_115,&p_2641->g_115,&p_2641->g_115}};
        int32_t *l_120[3][3] = {{&p_2641->g_4,&p_2641->g_4,&p_2641->g_4},{&p_2641->g_4,&p_2641->g_4,&p_2641->g_4},{&p_2641->g_4,&p_2641->g_4,&p_2641->g_4}};
        int32_t **l_121[1];
        int8_t *l_131 = &p_2641->g_132;
        int32_t l_134[1];
        uint32_t l_143 = 0xDEFFE84FL;
        int64_t l_194 = 0x7392A451E7E789F1L;
        uint64_t l_195 = 18446744073709551611UL;
        uint32_t l_220 = 0x7685B39BL;
        uint16_t l_225 = 0UL;
        uint32_t *l_240[6] = {&p_2641->g_23,&p_2641->g_23,&p_2641->g_23,&p_2641->g_23,&p_2641->g_23,&p_2641->g_23};
        uint32_t **l_239 = &l_240[2];
        int i, j;
        for (i = 0; i < 1; i++)
            l_121[i] = &l_120[1][1];
        for (i = 0; i < 1; i++)
            l_134[i] = (-1L);
        (1 + 1);
    }
    for (p_103 = 18; (p_103 <= 7); --p_103)
    { /* block id: 159 */
        int32_t l_326[6] = {0x07354037L,0x07354037L,0x07354037L,0x07354037L,0x07354037L,0x07354037L};
        int32_t l_329 = (-1L);
        int32_t l_331 = 0x585A9F62L;
        uint8_t l_332 = 1UL;
        int64_t *l_340[6] = {&p_2641->g_341,(void*)0,&p_2641->g_341,&p_2641->g_341,(void*)0,&p_2641->g_341};
        int i;
        for (p_2641->g_36 = 1; (p_2641->g_36 == 10); p_2641->g_36 = safe_add_func_uint64_t_u_u(p_2641->g_36, 1))
        { /* block id: 162 */
            int32_t l_327 = 0x06B53757L;
            int32_t l_328 = (-1L);
            int32_t l_330 = 1L;
            int64_t *l_337 = (void*)0;
            uint64_t l_342 = 0xB66839CFADB96242L;
            uint32_t l_343 = 0x0B2A8E6DL;
            l_332--;
            l_328 = p_99;
            l_343 |= (l_342 = (p_100 < (p_2641->g_9 == ((0x438856BD9A530B49L >= (((((p_102 || p_99) & (safe_rshift_func_int16_t_s_u((l_337 != ((safe_add_func_int32_t_s_s((l_330 & 0x0209L), p_100)) , l_340[5])), p_102))) == 1UL) || 0x08EC6FF2L) | 0x5DL)) & p_103))));
        }
    }
    return l_344;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S0 c_2642;
    struct S0* p_2641 = &c_2642;
    struct S0 c_2643 = {
        0L, // p_2641->g_2
        0x052061F6L, // p_2641->g_3
        9L, // p_2641->g_4
        0x022E6E7FL, // p_2641->g_9
        0xF7L, // p_2641->g_14
        0xB0420410L, // p_2641->g_23
        (void*)0, // p_2641->g_30
        0x0B01197BL, // p_2641->g_36
        0x32AF72DA61EB6136L, // p_2641->g_49
        1UL, // p_2641->g_115
        {&p_2641->g_36,&p_2641->g_36,&p_2641->g_36,&p_2641->g_36,&p_2641->g_36,&p_2641->g_36,&p_2641->g_36}, // p_2641->g_122
        (-1L), // p_2641->g_132
        0L, // p_2641->g_145
        (void*)0, // p_2641->g_147
        &p_2641->g_147, // p_2641->g_146
        0x0C0CC138C4916DE7L, // p_2641->g_167
        &p_2641->g_115, // p_2641->g_179
        &p_2641->g_179, // p_2641->g_178
        18446744073709551615UL, // p_2641->g_249
        0x96L, // p_2641->g_258
        {{{(void*)0,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132},{(void*)0,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132},{(void*)0,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132},{(void*)0,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132},{(void*)0,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132},{(void*)0,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132},{(void*)0,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132}},{{(void*)0,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132},{(void*)0,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132},{(void*)0,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132},{(void*)0,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132},{(void*)0,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132},{(void*)0,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132},{(void*)0,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132}},{{(void*)0,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132},{(void*)0,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132},{(void*)0,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132},{(void*)0,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132},{(void*)0,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132},{(void*)0,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132},{(void*)0,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132}},{{(void*)0,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132},{(void*)0,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132},{(void*)0,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132},{(void*)0,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132},{(void*)0,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132},{(void*)0,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132},{(void*)0,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132}},{{(void*)0,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132},{(void*)0,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132},{(void*)0,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132},{(void*)0,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132},{(void*)0,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132},{(void*)0,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132},{(void*)0,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132}},{{(void*)0,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132},{(void*)0,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132},{(void*)0,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132},{(void*)0,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132},{(void*)0,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132},{(void*)0,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132},{(void*)0,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132,&p_2641->g_132}}}, // p_2641->g_309
        0xDBE33949L, // p_2641->g_319
        0x623BDBF143CC1BD8L, // p_2641->g_341
        0xADD1B521L, // p_2641->g_351
        (-5L), // p_2641->g_400
        (void*)0, // p_2641->g_439
        {{{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L}},{{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L}},{{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L}},{{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L}},{{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L}},{{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L}},{{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L}},{{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L}},{{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L}},{{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L},{0x24C289670CD5B8D7L,0x136BE72DEEF42B54L,0x02ED027DDD9D562EL,0xFD61C10628BC0172L,0xBC517993B2F19849L}}}, // p_2641->g_451
        (-1L), // p_2641->g_453
        &p_2641->g_9, // p_2641->g_485
        {&p_2641->g_485,&p_2641->g_485,&p_2641->g_485,&p_2641->g_485,&p_2641->g_485,&p_2641->g_485,&p_2641->g_485,&p_2641->g_485,&p_2641->g_485,&p_2641->g_485}, // p_2641->g_484
        1UL, // p_2641->g_523
        65532UL, // p_2641->g_551
        0x5BC09765CB335A1FL, // p_2641->g_570
        (-1L), // p_2641->g_576
        (-4L), // p_2641->g_578
        &p_2641->g_36, // p_2641->g_646
        &p_2641->g_145, // p_2641->g_716
        {{{3UL,0x75BB6F2CL,0UL,4294967291UL,4294967295UL,4294967292UL,3UL},{3UL,0x75BB6F2CL,0UL,4294967291UL,4294967295UL,4294967292UL,3UL},{3UL,0x75BB6F2CL,0UL,4294967291UL,4294967295UL,4294967292UL,3UL},{3UL,0x75BB6F2CL,0UL,4294967291UL,4294967295UL,4294967292UL,3UL},{3UL,0x75BB6F2CL,0UL,4294967291UL,4294967295UL,4294967292UL,3UL},{3UL,0x75BB6F2CL,0UL,4294967291UL,4294967295UL,4294967292UL,3UL},{3UL,0x75BB6F2CL,0UL,4294967291UL,4294967295UL,4294967292UL,3UL},{3UL,0x75BB6F2CL,0UL,4294967291UL,4294967295UL,4294967292UL,3UL},{3UL,0x75BB6F2CL,0UL,4294967291UL,4294967295UL,4294967292UL,3UL}},{{3UL,0x75BB6F2CL,0UL,4294967291UL,4294967295UL,4294967292UL,3UL},{3UL,0x75BB6F2CL,0UL,4294967291UL,4294967295UL,4294967292UL,3UL},{3UL,0x75BB6F2CL,0UL,4294967291UL,4294967295UL,4294967292UL,3UL},{3UL,0x75BB6F2CL,0UL,4294967291UL,4294967295UL,4294967292UL,3UL},{3UL,0x75BB6F2CL,0UL,4294967291UL,4294967295UL,4294967292UL,3UL},{3UL,0x75BB6F2CL,0UL,4294967291UL,4294967295UL,4294967292UL,3UL},{3UL,0x75BB6F2CL,0UL,4294967291UL,4294967295UL,4294967292UL,3UL},{3UL,0x75BB6F2CL,0UL,4294967291UL,4294967295UL,4294967292UL,3UL},{3UL,0x75BB6F2CL,0UL,4294967291UL,4294967295UL,4294967292UL,3UL}},{{3UL,0x75BB6F2CL,0UL,4294967291UL,4294967295UL,4294967292UL,3UL},{3UL,0x75BB6F2CL,0UL,4294967291UL,4294967295UL,4294967292UL,3UL},{3UL,0x75BB6F2CL,0UL,4294967291UL,4294967295UL,4294967292UL,3UL},{3UL,0x75BB6F2CL,0UL,4294967291UL,4294967295UL,4294967292UL,3UL},{3UL,0x75BB6F2CL,0UL,4294967291UL,4294967295UL,4294967292UL,3UL},{3UL,0x75BB6F2CL,0UL,4294967291UL,4294967295UL,4294967292UL,3UL},{3UL,0x75BB6F2CL,0UL,4294967291UL,4294967295UL,4294967292UL,3UL},{3UL,0x75BB6F2CL,0UL,4294967291UL,4294967295UL,4294967292UL,3UL},{3UL,0x75BB6F2CL,0UL,4294967291UL,4294967295UL,4294967292UL,3UL}},{{3UL,0x75BB6F2CL,0UL,4294967291UL,4294967295UL,4294967292UL,3UL},{3UL,0x75BB6F2CL,0UL,4294967291UL,4294967295UL,4294967292UL,3UL},{3UL,0x75BB6F2CL,0UL,4294967291UL,4294967295UL,4294967292UL,3UL},{3UL,0x75BB6F2CL,0UL,4294967291UL,4294967295UL,4294967292UL,3UL},{3UL,0x75BB6F2CL,0UL,4294967291UL,4294967295UL,4294967292UL,3UL},{3UL,0x75BB6F2CL,0UL,4294967291UL,4294967295UL,4294967292UL,3UL},{3UL,0x75BB6F2CL,0UL,4294967291UL,4294967295UL,4294967292UL,3UL},{3UL,0x75BB6F2CL,0UL,4294967291UL,4294967295UL,4294967292UL,3UL},{3UL,0x75BB6F2CL,0UL,4294967291UL,4294967295UL,4294967292UL,3UL}}}, // p_2641->g_737
        0UL, // p_2641->g_740
        (void*)0, // p_2641->g_752
        &p_2641->g_752, // p_2641->g_751
        1L, // p_2641->g_805
        (void*)0, // p_2641->g_808
        &p_2641->g_808, // p_2641->g_807
        0x11853D63E5708AEBL, // p_2641->g_830
        1L, // p_2641->g_851
        {{{&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439},{&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439},{&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439},{&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439},{&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439},{&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439},{&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439},{&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439},{&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439}},{{&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439},{&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439},{&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439},{&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439},{&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439},{&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439},{&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439},{&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439},{&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439}},{{&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439},{&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439},{&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439},{&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439},{&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439},{&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439},{&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439},{&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439},{&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439}},{{&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439},{&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439},{&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439},{&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439},{&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439},{&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439},{&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439},{&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439},{&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439}},{{&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439},{&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439},{&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439},{&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439},{&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439},{&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439},{&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439},{&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439},{&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439,&p_2641->g_439}}}, // p_2641->g_873
        &p_2641->g_873[2][2][1], // p_2641->g_872
        (void*)0, // p_2641->g_878
        &p_2641->g_453, // p_2641->g_888
        &p_2641->g_888, // p_2641->g_887
        {&p_2641->g_36,&p_2641->g_36,&p_2641->g_36,&p_2641->g_36}, // p_2641->g_962
        {&p_2641->g_36,&p_2641->g_36,&p_2641->g_36,&p_2641->g_36}, // p_2641->g_963
        &p_2641->g_36, // p_2641->g_964
        (void*)0, // p_2641->g_1074
        0xDD52BE26L, // p_2641->g_1163
        1UL, // p_2641->g_1293
        (void*)0, // p_2641->g_1323
        &p_2641->g_1323, // p_2641->g_1322
        (void*)0, // p_2641->g_1379
        {{&p_2641->g_1379,&p_2641->g_1379,&p_2641->g_1379},{&p_2641->g_1379,&p_2641->g_1379,&p_2641->g_1379},{&p_2641->g_1379,&p_2641->g_1379,&p_2641->g_1379},{&p_2641->g_1379,&p_2641->g_1379,&p_2641->g_1379},{&p_2641->g_1379,&p_2641->g_1379,&p_2641->g_1379},{&p_2641->g_1379,&p_2641->g_1379,&p_2641->g_1379},{&p_2641->g_1379,&p_2641->g_1379,&p_2641->g_1379},{&p_2641->g_1379,&p_2641->g_1379,&p_2641->g_1379},{&p_2641->g_1379,&p_2641->g_1379,&p_2641->g_1379},{&p_2641->g_1379,&p_2641->g_1379,&p_2641->g_1379}}, // p_2641->g_1378
        0x4BB198383122A91AL, // p_2641->g_1415
        0x373971A2L, // p_2641->g_1523
        0x26DDFF3F19376F64L, // p_2641->g_1613
        &p_2641->g_132, // p_2641->g_1715
        &p_2641->g_1715, // p_2641->g_1714
        (void*)0, // p_2641->g_1744
        (void*)0, // p_2641->g_1770
        0x6F245F9CL, // p_2641->g_1781
        {255UL,0x51L,255UL,255UL,0x51L,255UL,255UL}, // p_2641->g_1832
        0x1CL, // p_2641->g_1914
        1L, // p_2641->g_1915
        0xA0B69C9188007250L, // p_2641->g_1967
        0xF87C41504BF91C61L, // p_2641->g_1982
        {&p_2641->g_451[4][2][4],&p_2641->g_451[4][2][4],&p_2641->g_451[4][2][4],&p_2641->g_451[4][2][4],&p_2641->g_451[4][2][4],&p_2641->g_451[4][2][4],&p_2641->g_451[4][2][4]}, // p_2641->g_2054
        {{{&p_2641->g_2054[1],&p_2641->g_2054[1],(void*)0,&p_2641->g_2054[0],(void*)0,&p_2641->g_2054[0]},{&p_2641->g_2054[1],&p_2641->g_2054[1],(void*)0,&p_2641->g_2054[0],(void*)0,&p_2641->g_2054[0]},{&p_2641->g_2054[1],&p_2641->g_2054[1],(void*)0,&p_2641->g_2054[0],(void*)0,&p_2641->g_2054[0]},{&p_2641->g_2054[1],&p_2641->g_2054[1],(void*)0,&p_2641->g_2054[0],(void*)0,&p_2641->g_2054[0]},{&p_2641->g_2054[1],&p_2641->g_2054[1],(void*)0,&p_2641->g_2054[0],(void*)0,&p_2641->g_2054[0]},{&p_2641->g_2054[1],&p_2641->g_2054[1],(void*)0,&p_2641->g_2054[0],(void*)0,&p_2641->g_2054[0]},{&p_2641->g_2054[1],&p_2641->g_2054[1],(void*)0,&p_2641->g_2054[0],(void*)0,&p_2641->g_2054[0]},{&p_2641->g_2054[1],&p_2641->g_2054[1],(void*)0,&p_2641->g_2054[0],(void*)0,&p_2641->g_2054[0]}},{{&p_2641->g_2054[1],&p_2641->g_2054[1],(void*)0,&p_2641->g_2054[0],(void*)0,&p_2641->g_2054[0]},{&p_2641->g_2054[1],&p_2641->g_2054[1],(void*)0,&p_2641->g_2054[0],(void*)0,&p_2641->g_2054[0]},{&p_2641->g_2054[1],&p_2641->g_2054[1],(void*)0,&p_2641->g_2054[0],(void*)0,&p_2641->g_2054[0]},{&p_2641->g_2054[1],&p_2641->g_2054[1],(void*)0,&p_2641->g_2054[0],(void*)0,&p_2641->g_2054[0]},{&p_2641->g_2054[1],&p_2641->g_2054[1],(void*)0,&p_2641->g_2054[0],(void*)0,&p_2641->g_2054[0]},{&p_2641->g_2054[1],&p_2641->g_2054[1],(void*)0,&p_2641->g_2054[0],(void*)0,&p_2641->g_2054[0]},{&p_2641->g_2054[1],&p_2641->g_2054[1],(void*)0,&p_2641->g_2054[0],(void*)0,&p_2641->g_2054[0]},{&p_2641->g_2054[1],&p_2641->g_2054[1],(void*)0,&p_2641->g_2054[0],(void*)0,&p_2641->g_2054[0]}},{{&p_2641->g_2054[1],&p_2641->g_2054[1],(void*)0,&p_2641->g_2054[0],(void*)0,&p_2641->g_2054[0]},{&p_2641->g_2054[1],&p_2641->g_2054[1],(void*)0,&p_2641->g_2054[0],(void*)0,&p_2641->g_2054[0]},{&p_2641->g_2054[1],&p_2641->g_2054[1],(void*)0,&p_2641->g_2054[0],(void*)0,&p_2641->g_2054[0]},{&p_2641->g_2054[1],&p_2641->g_2054[1],(void*)0,&p_2641->g_2054[0],(void*)0,&p_2641->g_2054[0]},{&p_2641->g_2054[1],&p_2641->g_2054[1],(void*)0,&p_2641->g_2054[0],(void*)0,&p_2641->g_2054[0]},{&p_2641->g_2054[1],&p_2641->g_2054[1],(void*)0,&p_2641->g_2054[0],(void*)0,&p_2641->g_2054[0]},{&p_2641->g_2054[1],&p_2641->g_2054[1],(void*)0,&p_2641->g_2054[0],(void*)0,&p_2641->g_2054[0]},{&p_2641->g_2054[1],&p_2641->g_2054[1],(void*)0,&p_2641->g_2054[0],(void*)0,&p_2641->g_2054[0]}},{{&p_2641->g_2054[1],&p_2641->g_2054[1],(void*)0,&p_2641->g_2054[0],(void*)0,&p_2641->g_2054[0]},{&p_2641->g_2054[1],&p_2641->g_2054[1],(void*)0,&p_2641->g_2054[0],(void*)0,&p_2641->g_2054[0]},{&p_2641->g_2054[1],&p_2641->g_2054[1],(void*)0,&p_2641->g_2054[0],(void*)0,&p_2641->g_2054[0]},{&p_2641->g_2054[1],&p_2641->g_2054[1],(void*)0,&p_2641->g_2054[0],(void*)0,&p_2641->g_2054[0]},{&p_2641->g_2054[1],&p_2641->g_2054[1],(void*)0,&p_2641->g_2054[0],(void*)0,&p_2641->g_2054[0]},{&p_2641->g_2054[1],&p_2641->g_2054[1],(void*)0,&p_2641->g_2054[0],(void*)0,&p_2641->g_2054[0]},{&p_2641->g_2054[1],&p_2641->g_2054[1],(void*)0,&p_2641->g_2054[0],(void*)0,&p_2641->g_2054[0]},{&p_2641->g_2054[1],&p_2641->g_2054[1],(void*)0,&p_2641->g_2054[0],(void*)0,&p_2641->g_2054[0]}},{{&p_2641->g_2054[1],&p_2641->g_2054[1],(void*)0,&p_2641->g_2054[0],(void*)0,&p_2641->g_2054[0]},{&p_2641->g_2054[1],&p_2641->g_2054[1],(void*)0,&p_2641->g_2054[0],(void*)0,&p_2641->g_2054[0]},{&p_2641->g_2054[1],&p_2641->g_2054[1],(void*)0,&p_2641->g_2054[0],(void*)0,&p_2641->g_2054[0]},{&p_2641->g_2054[1],&p_2641->g_2054[1],(void*)0,&p_2641->g_2054[0],(void*)0,&p_2641->g_2054[0]},{&p_2641->g_2054[1],&p_2641->g_2054[1],(void*)0,&p_2641->g_2054[0],(void*)0,&p_2641->g_2054[0]},{&p_2641->g_2054[1],&p_2641->g_2054[1],(void*)0,&p_2641->g_2054[0],(void*)0,&p_2641->g_2054[0]},{&p_2641->g_2054[1],&p_2641->g_2054[1],(void*)0,&p_2641->g_2054[0],(void*)0,&p_2641->g_2054[0]},{&p_2641->g_2054[1],&p_2641->g_2054[1],(void*)0,&p_2641->g_2054[0],(void*)0,&p_2641->g_2054[0]}}}, // p_2641->g_2053
        &p_2641->g_2053[4][5][3], // p_2641->g_2052
        {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}, // p_2641->g_2073
        &p_2641->g_2073[0][5], // p_2641->g_2099
        {{&p_2641->g_2099,&p_2641->g_2099,(void*)0,&p_2641->g_2099,(void*)0,&p_2641->g_2099,&p_2641->g_2099,(void*)0},{&p_2641->g_2099,&p_2641->g_2099,(void*)0,&p_2641->g_2099,(void*)0,&p_2641->g_2099,&p_2641->g_2099,(void*)0},{&p_2641->g_2099,&p_2641->g_2099,(void*)0,&p_2641->g_2099,(void*)0,&p_2641->g_2099,&p_2641->g_2099,(void*)0},{&p_2641->g_2099,&p_2641->g_2099,(void*)0,&p_2641->g_2099,(void*)0,&p_2641->g_2099,&p_2641->g_2099,(void*)0},{&p_2641->g_2099,&p_2641->g_2099,(void*)0,&p_2641->g_2099,(void*)0,&p_2641->g_2099,&p_2641->g_2099,(void*)0},{&p_2641->g_2099,&p_2641->g_2099,(void*)0,&p_2641->g_2099,(void*)0,&p_2641->g_2099,&p_2641->g_2099,(void*)0},{&p_2641->g_2099,&p_2641->g_2099,(void*)0,&p_2641->g_2099,(void*)0,&p_2641->g_2099,&p_2641->g_2099,(void*)0},{&p_2641->g_2099,&p_2641->g_2099,(void*)0,&p_2641->g_2099,(void*)0,&p_2641->g_2099,&p_2641->g_2099,(void*)0}}, // p_2641->g_2098
        0xBBL, // p_2641->g_2105
        {{{&p_2641->g_578,(void*)0,(void*)0,(void*)0,&p_2641->g_578,&p_2641->g_578},{&p_2641->g_578,(void*)0,(void*)0,(void*)0,&p_2641->g_578,&p_2641->g_578},{&p_2641->g_578,(void*)0,(void*)0,(void*)0,&p_2641->g_578,&p_2641->g_578},{&p_2641->g_578,(void*)0,(void*)0,(void*)0,&p_2641->g_578,&p_2641->g_578},{&p_2641->g_578,(void*)0,(void*)0,(void*)0,&p_2641->g_578,&p_2641->g_578},{&p_2641->g_578,(void*)0,(void*)0,(void*)0,&p_2641->g_578,&p_2641->g_578},{&p_2641->g_578,(void*)0,(void*)0,(void*)0,&p_2641->g_578,&p_2641->g_578}},{{&p_2641->g_578,(void*)0,(void*)0,(void*)0,&p_2641->g_578,&p_2641->g_578},{&p_2641->g_578,(void*)0,(void*)0,(void*)0,&p_2641->g_578,&p_2641->g_578},{&p_2641->g_578,(void*)0,(void*)0,(void*)0,&p_2641->g_578,&p_2641->g_578},{&p_2641->g_578,(void*)0,(void*)0,(void*)0,&p_2641->g_578,&p_2641->g_578},{&p_2641->g_578,(void*)0,(void*)0,(void*)0,&p_2641->g_578,&p_2641->g_578},{&p_2641->g_578,(void*)0,(void*)0,(void*)0,&p_2641->g_578,&p_2641->g_578},{&p_2641->g_578,(void*)0,(void*)0,(void*)0,&p_2641->g_578,&p_2641->g_578}},{{&p_2641->g_578,(void*)0,(void*)0,(void*)0,&p_2641->g_578,&p_2641->g_578},{&p_2641->g_578,(void*)0,(void*)0,(void*)0,&p_2641->g_578,&p_2641->g_578},{&p_2641->g_578,(void*)0,(void*)0,(void*)0,&p_2641->g_578,&p_2641->g_578},{&p_2641->g_578,(void*)0,(void*)0,(void*)0,&p_2641->g_578,&p_2641->g_578},{&p_2641->g_578,(void*)0,(void*)0,(void*)0,&p_2641->g_578,&p_2641->g_578},{&p_2641->g_578,(void*)0,(void*)0,(void*)0,&p_2641->g_578,&p_2641->g_578},{&p_2641->g_578,(void*)0,(void*)0,(void*)0,&p_2641->g_578,&p_2641->g_578}}}, // p_2641->g_2204
        &p_2641->g_2204[2][3][4], // p_2641->g_2203
        &p_2641->g_2203, // p_2641->g_2202
        4294967295UL, // p_2641->g_2283
        &p_2641->g_2283, // p_2641->g_2282
        {0x682F8797L,0x682F8797L,0x682F8797L,0x682F8797L,0x682F8797L,0x682F8797L,0x682F8797L,0x682F8797L}, // p_2641->g_2286
        7L, // p_2641->g_2312
        0x500CB61CL, // p_2641->g_2313
        (-2L), // p_2641->g_2354
        0UL, // p_2641->g_2436
        (-3L), // p_2641->g_2492
        (void*)0, // p_2641->g_2505
        {&p_2641->g_2505,&p_2641->g_2505,&p_2641->g_2505,&p_2641->g_2505}, // p_2641->g_2504
        &p_2641->g_122[0], // p_2641->g_2513
        (void*)0, // p_2641->g_2514
        0xE53155E3L, // p_2641->g_2609
        &p_2641->g_122[0], // p_2641->g_2634
        sequence_input[get_global_id(0)], // p_2641->global_0_offset
        sequence_input[get_global_id(1)], // p_2641->global_1_offset
        sequence_input[get_global_id(2)], // p_2641->global_2_offset
        sequence_input[get_local_id(0)], // p_2641->local_0_offset
        sequence_input[get_local_id(1)], // p_2641->local_1_offset
        sequence_input[get_local_id(2)], // p_2641->local_2_offset
        sequence_input[get_group_id(0)], // p_2641->group_0_offset
        sequence_input[get_group_id(1)], // p_2641->group_1_offset
        sequence_input[get_group_id(2)], // p_2641->group_2_offset
    };
    c_2642 = c_2643;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_2641);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_2641->g_2, "p_2641->g_2", print_hash_value);
    transparent_crc(p_2641->g_3, "p_2641->g_3", print_hash_value);
    transparent_crc(p_2641->g_4, "p_2641->g_4", print_hash_value);
    transparent_crc(p_2641->g_9, "p_2641->g_9", print_hash_value);
    transparent_crc(p_2641->g_14, "p_2641->g_14", print_hash_value);
    transparent_crc(p_2641->g_23, "p_2641->g_23", print_hash_value);
    transparent_crc(p_2641->g_36, "p_2641->g_36", print_hash_value);
    transparent_crc(p_2641->g_49, "p_2641->g_49", print_hash_value);
    transparent_crc(p_2641->g_115, "p_2641->g_115", print_hash_value);
    transparent_crc(p_2641->g_132, "p_2641->g_132", print_hash_value);
    transparent_crc(p_2641->g_145, "p_2641->g_145", print_hash_value);
    transparent_crc(p_2641->g_167, "p_2641->g_167", print_hash_value);
    transparent_crc(p_2641->g_249, "p_2641->g_249", print_hash_value);
    transparent_crc(p_2641->g_258, "p_2641->g_258", print_hash_value);
    transparent_crc(p_2641->g_319, "p_2641->g_319", print_hash_value);
    transparent_crc(p_2641->g_341, "p_2641->g_341", print_hash_value);
    transparent_crc(p_2641->g_351, "p_2641->g_351", print_hash_value);
    transparent_crc(p_2641->g_400, "p_2641->g_400", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 5; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_2641->g_451[i][j][k], "p_2641->g_451[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2641->g_453, "p_2641->g_453", print_hash_value);
    transparent_crc(p_2641->g_523, "p_2641->g_523", print_hash_value);
    transparent_crc(p_2641->g_551, "p_2641->g_551", print_hash_value);
    transparent_crc(p_2641->g_570, "p_2641->g_570", print_hash_value);
    transparent_crc(p_2641->g_576, "p_2641->g_576", print_hash_value);
    transparent_crc(p_2641->g_578, "p_2641->g_578", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 7; k++)
            {
                transparent_crc(p_2641->g_737[i][j][k], "p_2641->g_737[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2641->g_740, "p_2641->g_740", print_hash_value);
    transparent_crc(p_2641->g_805, "p_2641->g_805", print_hash_value);
    transparent_crc(p_2641->g_830, "p_2641->g_830", print_hash_value);
    transparent_crc(p_2641->g_851, "p_2641->g_851", print_hash_value);
    transparent_crc(p_2641->g_1163, "p_2641->g_1163", print_hash_value);
    transparent_crc(p_2641->g_1293, "p_2641->g_1293", print_hash_value);
    transparent_crc(p_2641->g_1415, "p_2641->g_1415", print_hash_value);
    transparent_crc(p_2641->g_1523, "p_2641->g_1523", print_hash_value);
    transparent_crc(p_2641->g_1613, "p_2641->g_1613", print_hash_value);
    transparent_crc(p_2641->g_1781, "p_2641->g_1781", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_2641->g_1832[i], "p_2641->g_1832[i]", print_hash_value);

    }
    transparent_crc(p_2641->g_1914, "p_2641->g_1914", print_hash_value);
    transparent_crc(p_2641->g_1915, "p_2641->g_1915", print_hash_value);
    transparent_crc(p_2641->g_1967, "p_2641->g_1967", print_hash_value);
    transparent_crc(p_2641->g_1982, "p_2641->g_1982", print_hash_value);
    transparent_crc(p_2641->g_2105, "p_2641->g_2105", print_hash_value);
    transparent_crc(p_2641->g_2283, "p_2641->g_2283", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_2641->g_2286[i], "p_2641->g_2286[i]", print_hash_value);

    }
    transparent_crc(p_2641->g_2312, "p_2641->g_2312", print_hash_value);
    transparent_crc(p_2641->g_2313, "p_2641->g_2313", print_hash_value);
    transparent_crc(p_2641->g_2354, "p_2641->g_2354", print_hash_value);
    transparent_crc(p_2641->g_2436, "p_2641->g_2436", print_hash_value);
    transparent_crc(p_2641->g_2492, "p_2641->g_2492", print_hash_value);
    transparent_crc(p_2641->g_2609, "p_2641->g_2609", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
