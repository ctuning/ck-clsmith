// ---fake_divergence -g 102,1,67 -l 102,1,1
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


// Seed: 85

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   volatile int32_t  f0;
   int8_t  f1;
   int64_t  f2;
   volatile uint8_t  f3;
   uint32_t  f4;
};

struct S1 {
    int32_t g_2;
    volatile int32_t g_7;
    volatile int32_t g_8[5][6];
    volatile int32_t g_9;
    int32_t g_10;
    volatile int32_t g_11;
    volatile int32_t g_12;
    int32_t g_13;
    uint64_t g_15;
    uint64_t g_21[7];
    uint64_t *g_27;
    int16_t g_36;
    int16_t g_49;
    uint64_t g_75[7];
    uint32_t g_90;
    int32_t g_95;
    int16_t g_114;
    uint64_t *g_137;
    uint64_t **g_136;
    uint32_t g_139;
    uint16_t g_142;
    int32_t g_144[5];
    int32_t g_159;
    int32_t g_161;
    uint16_t g_167[3];
    volatile uint64_t g_173;
    volatile uint64_t * volatile g_172;
    volatile uint64_t * volatile *g_171;
    volatile uint64_t * volatile * volatile *g_170;
    int32_t *g_203;
    int32_t **g_202;
    uint8_t g_214;
    int8_t g_242[6];
    uint64_t ***g_246;
    int32_t *g_247;
    int8_t g_262;
    int64_t g_263;
    uint32_t g_267;
    int32_t g_326;
    int16_t *g_406;
    uint16_t g_412;
    uint32_t g_439;
    volatile int32_t * volatile **g_511;
    int32_t *g_548;
    int32_t *g_551;
    struct S0 *g_580;
    int32_t g_584;
    uint16_t g_585;
    int32_t ***g_611;
    int64_t g_631;
    uint8_t g_632[1][1];
    int8_t g_650;
    int32_t g_653;
    uint8_t g_654;
    uint32_t g_724;
    uint16_t g_730;
    uint64_t ****g_746;
    uint64_t *****g_745[4];
    uint32_t g_782;
    uint8_t *g_823;
    uint8_t * volatile *g_822[6];
    int32_t g_837;
    uint32_t g_838;
    uint32_t *g_899;
    uint32_t **g_898;
    volatile struct S0 g_910;
    volatile struct S0 * volatile g_913;
    volatile struct S0 g_926;
    int32_t g_935;
    int32_t ** volatile g_946;
    struct S0 g_963;
    int32_t ****g_999;
    int32_t *****g_998;
    int32_t ******g_997[10][9];
    volatile struct S0 g_1025;
    int64_t **g_1051;
    int16_t g_1053[5];
    int16_t g_1055[2][1];
    uint64_t g_1141;
    volatile struct S0 g_1176;
    int16_t g_1183;
    int32_t * volatile g_1230;
    uint16_t * volatile *g_1242;
    volatile struct S0 g_1255;
    volatile struct S0 g_1274;
    volatile int8_t g_1292;
    volatile struct S0 * volatile g_1306;
    uint32_t g_1342[10];
    struct S0 **g_1344[3][10][1];
    struct S0 ***g_1343;
    int32_t ** volatile g_1346;
    volatile struct S0 g_1347[1];
    volatile struct S0 * volatile g_1348;
    volatile struct S0 g_1444;
    struct S0 g_1460;
    int16_t g_1479;
    volatile struct S0 g_1481;
    volatile struct S0 g_1495;
    volatile struct S0 g_1496;
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
uint32_t  func_1(struct S1 * p_1498);
uint16_t  func_18(uint64_t * p_19, struct S1 * p_1498);
int32_t  func_22(uint64_t * p_23, uint64_t * p_24, uint64_t  p_25, uint64_t * p_26, struct S1 * p_1498);
int32_t  func_41(uint16_t  p_42, uint32_t  p_43, int16_t * p_44, uint8_t  p_45, struct S1 * p_1498);
int32_t  func_57(int32_t * p_58, int32_t  p_59, int8_t  p_60, uint64_t ** p_61, uint32_t  p_62, struct S1 * p_1498);
uint32_t  func_67(uint64_t * p_68, uint32_t  p_69, struct S1 * p_1498);
int16_t  func_80(uint32_t  p_81, int32_t  p_82, struct S1 * p_1498);
int32_t * func_97(int32_t  p_98, struct S1 * p_1498);
uint8_t  func_101(int32_t  p_102, uint64_t * p_103, uint64_t * p_104, int16_t  p_105, uint32_t * p_106, struct S1 * p_1498);
int32_t  func_115(int32_t  p_116, int32_t * p_117, uint32_t  p_118, struct S1 * p_1498);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1498->g_2 p_1498->g_10 p_1498->g_8 p_1498->g_263 p_1498->g_551 p_1498->g_631 p_1498->g_724 p_1498->g_242 p_1498->g_898 p_1498->g_913 p_1498->g_910 p_1498->g_21 p_1498->g_1025.f3 p_1498->g_262 p_1498->g_203 p_1498->g_326 p_1498->g_159 p_1498->g_95 p_1498->g_75 p_1498->g_49 p_1498->g_114 p_1498->g_136 p_1498->g_139 p_1498->g_142 p_1498->g_144 p_1498->g_161 p_1498->g_170 p_1498->g_90 p_1498->g_137 p_1498->g_202 p_1498->g_1183 p_1498->g_1306 p_1498->g_1176 p_1498->g_1495 p_1498->g_1346 p_1498->g_548
 * writes: p_1498->g_2 p_1498->g_10 p_1498->g_9 p_1498->g_7 p_1498->g_8 p_1498->g_263 p_1498->g_631 p_1498->g_724 p_1498->g_899 p_1498->g_1481 p_1498->g_242 p_1498->g_326 p_1498->g_159 p_1498->g_1460.f3 p_1498->g_1460.f0 p_1498->g_90 p_1498->g_1344 p_1498->g_963.f4 p_1498->g_95 p_1498->g_114 p_1498->g_136 p_1498->g_142 p_1498->g_144 p_1498->g_161 p_1498->g_167 p_1498->g_203 p_1498->g_1183 p_1498->g_910 p_1498->g_1496
 */
uint32_t  func_1(struct S1 * p_1498)
{ /* block id: 4 */
    int32_t l_6[8][2][1] = {{{0x1D8B9DBEL},{0x1D8B9DBEL}},{{0x1D8B9DBEL},{0x1D8B9DBEL}},{{0x1D8B9DBEL},{0x1D8B9DBEL}},{{0x1D8B9DBEL},{0x1D8B9DBEL}},{{0x1D8B9DBEL},{0x1D8B9DBEL}},{{0x1D8B9DBEL},{0x1D8B9DBEL}},{{0x1D8B9DBEL},{0x1D8B9DBEL}},{{0x1D8B9DBEL},{0x1D8B9DBEL}}};
    uint64_t *l_20[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    uint64_t ****l_1261 = &p_1498->g_246;
    int16_t l_1313[4];
    uint64_t l_1315[7][6] = {{0x5EE225564CF1C301L,6UL,18446744073709551614UL,1UL,6UL,1UL},{0x5EE225564CF1C301L,6UL,18446744073709551614UL,1UL,6UL,1UL},{0x5EE225564CF1C301L,6UL,18446744073709551614UL,1UL,6UL,1UL},{0x5EE225564CF1C301L,6UL,18446744073709551614UL,1UL,6UL,1UL},{0x5EE225564CF1C301L,6UL,18446744073709551614UL,1UL,6UL,1UL},{0x5EE225564CF1C301L,6UL,18446744073709551614UL,1UL,6UL,1UL},{0x5EE225564CF1C301L,6UL,18446744073709551614UL,1UL,6UL,1UL}};
    struct S0 *l_1356[1];
    int64_t l_1388 = 0L;
    uint64_t ***l_1469 = &p_1498->g_136;
    uint32_t *l_1480 = &p_1498->g_1342[0];
    int i, j, k;
    for (i = 0; i < 4; i++)
        l_1313[i] = 0x6C06L;
    for (i = 0; i < 1; i++)
        l_1356[i] = &p_1498->g_963;
lbl_1300:
    for (p_1498->g_2 = 1; (p_1498->g_2 != 1); p_1498->g_2++)
    { /* block id: 7 */
        int32_t l_5 = 0x2FC37186L;
        return l_5;
    }
    for (p_1498->g_2 = 0; (p_1498->g_2 >= 0); p_1498->g_2 -= 1)
    { /* block id: 12 */
        int32_t l_1253[9];
        int32_t ******l_1273 = &p_1498->g_998;
        uint64_t l_1303[9] = {0x42285FB0A1C10EF4L,1UL,0x42285FB0A1C10EF4L,0x42285FB0A1C10EF4L,1UL,0x42285FB0A1C10EF4L,0x42285FB0A1C10EF4L,1UL,0x42285FB0A1C10EF4L};
        int32_t *l_1308[4][4][1] = {{{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0}}};
        int32_t **l_1307 = &l_1308[3][2][0];
        int32_t l_1314[8] = {0x39AD8670L,0x39AD8670L,0x39AD8670L,0x39AD8670L,0x39AD8670L,0x39AD8670L,0x39AD8670L,0x39AD8670L};
        uint16_t l_1385 = 65535UL;
        int32_t *l_1389 = &p_1498->g_653;
        int64_t l_1395 = 0x501DFDAD8BD1B467L;
        struct S0 *l_1415 = &p_1498->g_963;
        uint16_t l_1456 = 65532UL;
        int16_t l_1474 = 0x528AL;
        int i, j, k;
        for (i = 0; i < 9; i++)
            l_1253[i] = 0x4728A858L;
        for (p_1498->g_10 = 0; (p_1498->g_10 <= 0); p_1498->g_10 += 1)
        { /* block id: 15 */
            return p_1498->g_8[3][3];
        }
        if (l_6[7][1][0])
            continue;
        for (p_1498->g_10 = 0; (p_1498->g_10 >= 0); p_1498->g_10 -= 1)
        { /* block id: 21 */
            uint32_t l_1291 = 4294967292UL;
            uint32_t l_1293 = 0xDCF87E49L;
            int32_t l_1312[2];
            int i;
            for (i = 0; i < 2; i++)
                l_1312[i] = 0x603D1541L;
            for (p_1498->g_9 = 0; p_1498->g_9 < 5; p_1498->g_9 += 1)
            {
                for (p_1498->g_7 = 0; p_1498->g_7 < 6; p_1498->g_7 += 1)
                {
                    p_1498->g_8[p_1498->g_9][p_1498->g_7] = 1L;
                }
            }
        }
        for (p_1498->g_263 = 0; (p_1498->g_263 >= 0); p_1498->g_263 -= 1)
        { /* block id: 613 */
            int16_t l_1390 = (-1L);
            int32_t l_1396 = 1L;
            int8_t l_1397 = 1L;
            uint32_t l_1429 = 0xD8058D1EL;
            uint64_t **l_1431 = (void*)0;
            int16_t l_1465 = 0x1670L;
            int16_t l_1475 = 1L;
            for (p_1498->g_631 = 0; (p_1498->g_631 >= 0); p_1498->g_631 -= 1)
            { /* block id: 616 */
                int32_t *l_1384[6][1][9] = {{{&p_1498->g_161,&p_1498->g_326,&p_1498->g_326,&p_1498->g_161,&p_1498->g_10,(void*)0,(void*)0,&p_1498->g_10,&p_1498->g_161}},{{&p_1498->g_161,&p_1498->g_326,&p_1498->g_326,&p_1498->g_161,&p_1498->g_10,(void*)0,(void*)0,&p_1498->g_10,&p_1498->g_161}},{{&p_1498->g_161,&p_1498->g_326,&p_1498->g_326,&p_1498->g_161,&p_1498->g_10,(void*)0,(void*)0,&p_1498->g_10,&p_1498->g_161}},{{&p_1498->g_161,&p_1498->g_326,&p_1498->g_326,&p_1498->g_161,&p_1498->g_10,(void*)0,(void*)0,&p_1498->g_10,&p_1498->g_161}},{{&p_1498->g_161,&p_1498->g_326,&p_1498->g_326,&p_1498->g_161,&p_1498->g_10,(void*)0,(void*)0,&p_1498->g_10,&p_1498->g_161}},{{&p_1498->g_161,&p_1498->g_326,&p_1498->g_326,&p_1498->g_161,&p_1498->g_10,(void*)0,(void*)0,&p_1498->g_10,&p_1498->g_161}}};
                int i, j, k;
                (*p_1498->g_551) |= (+(-6L));
                if (p_1498->g_631)
                    goto lbl_1300;
                if (l_6[(p_1498->g_631 + 5)][(p_1498->g_263 + 1)][p_1498->g_2])
                    continue;
                l_1385--;
            }
        }
    }
    for (p_1498->g_724 = 0; (p_1498->g_724 <= 0); p_1498->g_724 += 1)
    { /* block id: 681 */
        uint8_t l_1486 = 0xB5L;
        int8_t *l_1487 = &p_1498->g_242[4];
        int32_t *l_1497 = &p_1498->g_326;
        int i;
        p_1498->g_1481 = ((p_1498->g_242[(p_1498->g_724 + 1)] > (((*p_1498->g_898) = l_1480) == l_1480)) , (*p_1498->g_913));
        (*p_1498->g_203) &= (safe_rshift_func_int8_t_s_u((((safe_div_func_int32_t_s_s(0x076D4F36L, 4294967287UL)) , (p_1498->g_21[p_1498->g_724] , l_1486)) != (((*l_1487) = p_1498->g_21[p_1498->g_724]) < (((0x2E851B42L <= (safe_rshift_func_uint16_t_u_s((p_1498->g_1025.f3 , p_1498->g_262), (safe_add_func_int32_t_s_s((safe_mod_func_uint8_t_u_u(l_1315[2][1], 0xF2L)), 1UL))))) == 0UL) < 4294967295UL))), 3));
        for (p_1498->g_1460.f3 = 0; p_1498->g_1460.f3 < 3; p_1498->g_1460.f3 += 1)
        {
            for (p_1498->g_1460.f0 = 0; p_1498->g_1460.f0 < 10; p_1498->g_1460.f0 += 1)
            {
                for (p_1498->g_90 = 0; p_1498->g_90 < 1; p_1498->g_90 += 1)
                {
                    p_1498->g_1344[p_1498->g_1460.f3][p_1498->g_1460.f0][p_1498->g_90] = &p_1498->g_580;
                }
            }
        }
        for (p_1498->g_963.f4 = 0; (p_1498->g_963.f4 <= 0); p_1498->g_963.f4 += 1)
        { /* block id: 689 */
            uint32_t l_1494 = 0x5B2323ABL;
            (*p_1498->g_202) = func_97((l_6[2][1][0] , l_1494), p_1498);
            for (p_1498->g_1183 = 0; (p_1498->g_1183 <= 0); p_1498->g_1183 += 1)
            { /* block id: 693 */
                (*p_1498->g_913) = (*p_1498->g_1306);
                p_1498->g_1496 = p_1498->g_1495;
                (*p_1498->g_202) = l_1497;
                (*p_1498->g_548) &= (**p_1498->g_1346);
            }
        }
    }
    return l_1315[2][1];
}


/* ------------------------------------------ */
/* 
 * reads : p_1498->g_12 p_1498->g_36 p_1498->g_2 p_1498->g_49 p_1498->g_21 p_1498->g_13 p_1498->g_90 p_1498->g_95 p_1498->g_10 p_1498->g_75 p_1498->g_114 p_1498->g_136 p_1498->g_139 p_1498->g_142 p_1498->g_144 p_1498->g_161 p_1498->g_170 p_1498->g_137 p_1498->g_159 p_1498->g_203 p_1498->g_551 p_1498->g_242 p_1498->g_167 p_1498->g_548 p_1498->g_202 p_1498->g_263 p_1498->g_580 p_1498->g_585 p_1498->g_439 p_1498->g_326 p_1498->g_898 p_1498->g_214 p_1498->g_782 p_1498->g_910 p_1498->g_913 p_1498->g_926 p_1498->g_724 p_1498->g_935 p_1498->g_1051 p_1498->g_173 p_1498->g_632 p_1498->g_1053 p_1498->g_1055 p_1498->g_650 p_1498->g_730 p_1498->g_8 p_1498->g_963.f1 p_1498->g_746 p_1498->g_246 p_1498->g_654 p_1498->g_9 p_1498->g_1176 p_1498->g_1183 p_1498->g_1025.f0 p_1498->g_631 p_1498->g_1230 p_1498->g_1242
 * writes: p_1498->g_27 p_1498->g_36 p_1498->g_49 p_1498->g_75 p_1498->g_90 p_1498->g_95 p_1498->g_114 p_1498->g_136 p_1498->g_142 p_1498->g_144 p_1498->g_159 p_1498->g_161 p_1498->g_167 p_1498->g_203 p_1498->g_412 p_1498->g_214 p_1498->g_242 p_1498->g_263 p_1498->g_580 p_1498->g_585 p_1498->g_439 p_1498->g_782 p_1498->g_910 p_1498->g_926.f4 p_1498->g_935 p_1498->g_730 p_1498->g_963.f2 p_1498->g_1141 p_1498->g_632 p_1498->g_899 p_1498->g_139 p_1498->g_1242
 */
uint16_t  func_18(uint64_t * p_19, struct S1 * p_1498)
{ /* block id: 28 */
    uint64_t **l_28 = (void*)0;
    uint64_t **l_29 = (void*)0;
    int32_t l_34 = 0x0D8AC507L;
    int16_t *l_35 = &p_1498->g_36;
    int64_t l_851 = 0x63C1BEF3FB5BFC97L;
    uint32_t l_852 = 0UL;
    uint64_t *l_853 = (void*)0;
    int32_t l_877 = 0x06E4E0A0L;
    uint32_t l_901 = 0xC7C9372DL;
    struct S0 *l_962 = &p_1498->g_963;
    uint64_t l_1007 = 8UL;
    uint32_t l_1027 = 0UL;
    int32_t *l_1045 = &p_1498->g_159;
    int32_t l_1072 = (-1L);
    int32_t l_1074 = 0x36BEE873L;
    int32_t l_1075 = 0x4F5C163AL;
    int32_t l_1076 = (-1L);
    int32_t l_1077 = 0x325A9649L;
    int32_t l_1078 = (-9L);
    int32_t l_1080 = 0x691C4A71L;
    int32_t l_1081 = 2L;
    int32_t l_1082[5] = {(-1L),(-1L),(-1L),(-1L),(-1L)};
    uint64_t ****l_1197 = &p_1498->g_246;
    int8_t l_1249 = 0x0BL;
    uint8_t l_1250[3];
    int i;
    for (i = 0; i < 3; i++)
        l_1250[i] = 248UL;
    if ((func_22((p_19 = (p_1498->g_27 = (void*)0)), &p_1498->g_21[0], (0UL > ((safe_lshift_func_int16_t_s_u((safe_mul_func_int16_t_s_s(l_34, ((*l_35) ^= p_1498->g_12))), ((safe_div_func_int8_t_s_s(l_34, ((safe_rshift_func_uint8_t_u_s((func_41(l_34, l_34, l_35, l_34, p_1498) , 0x9BL), l_34)) , l_851))) , p_1498->g_2))) && l_852)), l_853, p_1498) | l_852))
    { /* block id: 378 */
        uint8_t *l_873[9];
        int32_t l_874 = 0x2DCD3EA3L;
        int32_t l_875 = 0x587C9545L;
        int32_t l_876[2][9] = {{(-7L),(-7L),(-7L),(-7L),(-7L),(-7L),(-7L),(-7L),(-7L)},{(-7L),(-7L),(-7L),(-7L),(-7L),(-7L),(-7L),(-7L),(-7L)}};
        uint32_t l_878[7][3][9] = {{{4294967290UL,1UL,1UL,1UL,1UL,4294967290UL,4294967293UL,0x983C84BBL,0x210B3DF4L},{4294967290UL,1UL,1UL,1UL,1UL,4294967290UL,4294967293UL,0x983C84BBL,0x210B3DF4L},{4294967290UL,1UL,1UL,1UL,1UL,4294967290UL,4294967293UL,0x983C84BBL,0x210B3DF4L}},{{4294967290UL,1UL,1UL,1UL,1UL,4294967290UL,4294967293UL,0x983C84BBL,0x210B3DF4L},{4294967290UL,1UL,1UL,1UL,1UL,4294967290UL,4294967293UL,0x983C84BBL,0x210B3DF4L},{4294967290UL,1UL,1UL,1UL,1UL,4294967290UL,4294967293UL,0x983C84BBL,0x210B3DF4L}},{{4294967290UL,1UL,1UL,1UL,1UL,4294967290UL,4294967293UL,0x983C84BBL,0x210B3DF4L},{4294967290UL,1UL,1UL,1UL,1UL,4294967290UL,4294967293UL,0x983C84BBL,0x210B3DF4L},{4294967290UL,1UL,1UL,1UL,1UL,4294967290UL,4294967293UL,0x983C84BBL,0x210B3DF4L}},{{4294967290UL,1UL,1UL,1UL,1UL,4294967290UL,4294967293UL,0x983C84BBL,0x210B3DF4L},{4294967290UL,1UL,1UL,1UL,1UL,4294967290UL,4294967293UL,0x983C84BBL,0x210B3DF4L},{4294967290UL,1UL,1UL,1UL,1UL,4294967290UL,4294967293UL,0x983C84BBL,0x210B3DF4L}},{{4294967290UL,1UL,1UL,1UL,1UL,4294967290UL,4294967293UL,0x983C84BBL,0x210B3DF4L},{4294967290UL,1UL,1UL,1UL,1UL,4294967290UL,4294967293UL,0x983C84BBL,0x210B3DF4L},{4294967290UL,1UL,1UL,1UL,1UL,4294967290UL,4294967293UL,0x983C84BBL,0x210B3DF4L}},{{4294967290UL,1UL,1UL,1UL,1UL,4294967290UL,4294967293UL,0x983C84BBL,0x210B3DF4L},{4294967290UL,1UL,1UL,1UL,1UL,4294967290UL,4294967293UL,0x983C84BBL,0x210B3DF4L},{4294967290UL,1UL,1UL,1UL,1UL,4294967290UL,4294967293UL,0x983C84BBL,0x210B3DF4L}},{{4294967290UL,1UL,1UL,1UL,1UL,4294967290UL,4294967293UL,0x983C84BBL,0x210B3DF4L},{4294967290UL,1UL,1UL,1UL,1UL,4294967290UL,4294967293UL,0x983C84BBL,0x210B3DF4L},{4294967290UL,1UL,1UL,1UL,1UL,4294967290UL,4294967293UL,0x983C84BBL,0x210B3DF4L}}};
        uint64_t l_896 = 0x2EA3A19472EA3F6AL;
        int32_t l_897 = (-10L);
        uint32_t **l_900 = &p_1498->g_899;
        uint16_t *l_902 = &p_1498->g_167[0];
        int64_t *l_903[8] = {&l_851,&l_851,&l_851,&l_851,&l_851,&l_851,&l_851,&l_851};
        int i, j, k;
        for (i = 0; i < 9; i++)
            l_873[i] = &p_1498->g_632[0][0];
        (*p_1498->g_203) = (safe_sub_func_uint64_t_u_u(GROUP_DIVERGE(1, 1), (l_876[0][3] = (safe_mod_func_uint16_t_u_u(((*l_902) &= (((safe_sub_func_uint8_t_u_u((l_874 = (++l_878[4][0][0])), (safe_mul_func_int8_t_s_s((safe_mul_func_uint16_t_u_u((((void*)0 != l_35) >= l_852), l_875)), (((safe_lshift_func_uint16_t_u_u(((safe_div_func_uint8_t_u_u(((l_852 , (l_852 <= ((safe_unary_minus_func_uint16_t_u(((((safe_mul_func_int16_t_s_s(l_876[0][5], ((safe_sub_func_uint64_t_u_u((((l_897 ^= (((safe_lshift_func_int8_t_s_s(l_896, (l_876[0][5] != l_876[0][2]))) <= l_34) || 1L)) <= 0x59L) | l_851), 0x9CCC789DCFA11BFBL)) & l_896))) , 0x7C5EL) , p_1498->g_898) != l_900))) , p_1498->g_10))) == 0x3A3122A081F16F7EL), l_876[1][4])) < p_1498->g_161), l_876[1][4])) , p_1498->g_10) > l_875))))) ^ l_876[1][3]) != l_901)), p_1498->g_144[4])))));
        return l_877;
    }
    else
    { /* block id: 386 */
        int8_t l_933 = 1L;
        int32_t *l_945 = &p_1498->g_144[3];
        int32_t **l_944 = &l_945;
        uint32_t l_956 = 4294967287UL;
        int16_t l_973 = (-10L);
        int32_t l_1008 = 1L;
        int32_t l_1021 = 0x15419A8FL;
        uint64_t **l_1037 = &l_853;
        uint8_t l_1046 = 1UL;
        int32_t ****l_1048 = &p_1498->g_611;
        int32_t l_1052 = 1L;
        int32_t l_1066 = 0L;
        int32_t l_1067 = 0x7D69485FL;
        int32_t l_1069 = 0x356C50ABL;
        int32_t l_1071 = 1L;
        int32_t l_1073[1];
        uint32_t l_1083[3];
        int16_t l_1129 = (-3L);
        uint32_t *l_1159 = &p_1498->g_139;
        uint32_t **l_1158 = &l_1159;
        int32_t l_1239 = 0L;
        int32_t *l_1247 = &l_1082[1];
        int32_t *l_1248[6] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int i;
        for (i = 0; i < 1; i++)
            l_1073[i] = 0x5DB1A642L;
        for (i = 0; i < 3; i++)
            l_1083[i] = 0xB216F05FL;
        for (p_1498->g_214 = 0; (p_1498->g_214 == 26); p_1498->g_214++)
        { /* block id: 389 */
            uint32_t l_922 = 0x6D36072CL;
            for (p_1498->g_263 = 0; (p_1498->g_263 != 9); ++p_1498->g_263)
            { /* block id: 392 */
                int16_t l_923 = 0x764BL;
                int32_t *l_934[1][6] = {{&p_1498->g_653,&p_1498->g_653,&p_1498->g_653,&p_1498->g_653,&p_1498->g_653,&p_1498->g_653}};
                int i, j;
                for (p_1498->g_782 = 0; (p_1498->g_782 >= 59); p_1498->g_782 = safe_add_func_int64_t_s_s(p_1498->g_782, 3))
                { /* block id: 395 */
                    volatile struct S0 *l_911 = (void*)0;
                    volatile struct S0 *l_912 = (void*)0;
                    (*p_1498->g_913) = p_1498->g_910;
                }
                (**p_1498->g_202) = ((safe_sub_func_uint8_t_u_u(((safe_mul_func_int16_t_s_s(((safe_mul_func_int8_t_s_s((safe_lshift_func_uint16_t_u_u((((l_34 = (((8L >= (l_922 > (l_923 > l_922))) <= (safe_add_func_int32_t_s_s((p_1498->g_926 , (safe_lshift_func_uint8_t_u_u(l_923, 2))), l_923))) >= (((safe_sub_func_uint64_t_u_u(((!1L) > (safe_add_func_uint32_t_u_u(0x49364898L, (**p_1498->g_202)))), 0L)) || p_1498->g_724) > l_933))) , l_877) < p_1498->g_242[4]), 0)), 0x5DL)) > 8UL), l_922)) & 7UL), p_1498->g_935)) >= l_933);
            }
        }
        for (p_1498->g_263 = 20; (p_1498->g_263 > (-7)); --p_1498->g_263)
        { /* block id: 404 */
            uint8_t *l_943 = &p_1498->g_214;
            int32_t l_947 = 0x49D127F8L;
            struct S0 **l_949 = &p_1498->g_580;
            struct S0 ***l_948 = &l_949;
            struct S0 ***l_951 = &l_949;
            struct S0 ****l_950 = &l_951;
            uint16_t *l_957 = &p_1498->g_142;
            uint32_t *l_959 = &p_1498->g_267;
            uint32_t **l_958 = &l_959;
            uint64_t **l_1038[3];
            int i;
            for (i = 0; i < 3; i++)
                l_1038[i] = (void*)0;
            (1 + 1);
        }
        if (l_1046)
        { /* block id: 479 */
            int32_t ****l_1047 = (void*)0;
            uint32_t *l_1054[9];
            int32_t l_1065 = 0x4174ADB8L;
            int32_t l_1068 = 0L;
            int32_t l_1070[3];
            int8_t l_1079 = 0x3CL;
            int i;
            for (i = 0; i < 9; i++)
                l_1054[i] = &p_1498->g_267;
            for (i = 0; i < 3; i++)
                l_1070[i] = 0x3614E1DBL;
            if (((l_1008 = ((l_1047 != ((*l_1045) , l_1048)) , (safe_add_func_uint16_t_u_u(p_1498->g_724, (((((p_1498->g_1051 != p_1498->g_1051) || ((l_1052 < p_1498->g_173) < (((*l_1045) || p_1498->g_632[0][0]) , 1L))) || (*l_1045)) >= l_973) , p_1498->g_1053[4]))))) > p_1498->g_1055[1][0]))
            { /* block id: 481 */
                int32_t *l_1056 = &p_1498->g_935;
                int32_t *l_1057 = &l_877;
                int32_t *l_1058 = &p_1498->g_935;
                int32_t *l_1059 = &p_1498->g_159;
                int32_t *l_1060 = (void*)0;
                int32_t *l_1061 = &p_1498->g_935;
                int32_t *l_1062 = &p_1498->g_935;
                int32_t *l_1063 = &p_1498->g_935;
                int32_t *l_1064[4][5] = {{&p_1498->g_326,&p_1498->g_2,&p_1498->g_326,&p_1498->g_326,&p_1498->g_2},{&p_1498->g_326,&p_1498->g_2,&p_1498->g_326,&p_1498->g_326,&p_1498->g_2},{&p_1498->g_326,&p_1498->g_2,&p_1498->g_326,&p_1498->g_326,&p_1498->g_2},{&p_1498->g_326,&p_1498->g_2,&p_1498->g_326,&p_1498->g_326,&p_1498->g_2}};
                uint16_t *l_1100 = (void*)0;
                uint16_t *l_1101[3];
                int64_t *l_1112[7][4] = {{&l_851,&p_1498->g_263,&l_851,&l_851},{&l_851,&p_1498->g_263,&l_851,&l_851},{&l_851,&p_1498->g_263,&l_851,&l_851},{&l_851,&p_1498->g_263,&l_851,&l_851},{&l_851,&p_1498->g_263,&l_851,&l_851},{&l_851,&p_1498->g_263,&l_851,&l_851},{&l_851,&p_1498->g_263,&l_851,&l_851}};
                int i, j;
                for (i = 0; i < 3; i++)
                    l_1101[i] = &p_1498->g_730;
                (*p_1498->g_202) = l_1056;
                --l_1083[0];
                for (p_1498->g_926.f4 = 0; p_1498->g_926.f4 < 5; p_1498->g_926.f4 += 1)
                {
                    p_1498->g_144[p_1498->g_926.f4] = 8L;
                }
                l_1067 &= ((*l_1057) = ((*l_1045) , ((l_1008 &= (safe_mod_func_int32_t_s_s((safe_sub_func_uint8_t_u_u((safe_sub_func_uint32_t_u_u(0x7B529256L, (p_1498->g_650 , ((*p_1498->g_548) = (safe_div_func_uint32_t_u_u((safe_sub_func_int32_t_s_s(((**p_1498->g_202) = 0L), (safe_sub_func_uint32_t_u_u((((*l_1045) = (safe_mul_func_uint16_t_u_u((p_1498->g_142 = (--p_1498->g_730)), (GROUP_DIVERGE(1, 1) || ((l_1045 == (void*)0) , (p_1498->g_963.f2 = (safe_mul_func_int8_t_s_s((l_1073[0] , ((safe_rshift_func_int8_t_s_s((l_1069 > FAKE_DIVERGE(p_1498->global_1_offset, get_global_id(1), 10)), ((safe_sub_func_uint16_t_u_u(((*p_1498->g_548) || 0UL), 0x09F8L)) & 0UL))) || 18446744073709551609UL)), p_1498->g_8[4][4])))))))) < p_1498->g_963.f1), (-5L))))), (*p_1498->g_548))))))), p_1498->g_632[0][0])), GROUP_DIVERGE(2, 1)))) > 1L)));
            }
            else
            { /* block id: 494 */
                int8_t *l_1119[9][7] = {{&l_933,&p_1498->g_650,(void*)0,&p_1498->g_650,&l_933,&l_933,&p_1498->g_650},{&l_933,&p_1498->g_650,(void*)0,&p_1498->g_650,&l_933,&l_933,&p_1498->g_650},{&l_933,&p_1498->g_650,(void*)0,&p_1498->g_650,&l_933,&l_933,&p_1498->g_650},{&l_933,&p_1498->g_650,(void*)0,&p_1498->g_650,&l_933,&l_933,&p_1498->g_650},{&l_933,&p_1498->g_650,(void*)0,&p_1498->g_650,&l_933,&l_933,&p_1498->g_650},{&l_933,&p_1498->g_650,(void*)0,&p_1498->g_650,&l_933,&l_933,&p_1498->g_650},{&l_933,&p_1498->g_650,(void*)0,&p_1498->g_650,&l_933,&l_933,&p_1498->g_650},{&l_933,&p_1498->g_650,(void*)0,&p_1498->g_650,&l_933,&l_933,&p_1498->g_650},{&l_933,&p_1498->g_650,(void*)0,&p_1498->g_650,&l_933,&l_933,&p_1498->g_650}};
                int32_t l_1120 = 0x01E1B64BL;
                int32_t l_1126 = 0x5B02FDE9L;
                uint16_t *l_1134 = &p_1498->g_730;
                uint64_t *l_1140 = &p_1498->g_1141;
                int16_t l_1186[3][2] = {{0L,1L},{0L,1L},{0L,1L}};
                struct S0 ***l_1206 = (void*)0;
                int i, j;
                if ((p_1498->g_75[1] ^ ((safe_div_func_int8_t_s_s((safe_rshift_func_int8_t_s_s(((safe_lshift_func_uint16_t_u_u((p_1498->g_142 &= (((*l_1140) = ((((*l_1045) ^ (l_1120 = p_1498->g_13)) & (safe_unary_minus_func_uint32_t_u((safe_lshift_func_int8_t_s_u((safe_sub_func_int64_t_s_s(((l_1126 || ((safe_rshift_func_int8_t_s_u(((l_1129 , ((safe_mul_func_int8_t_s_s(l_1126, FAKE_DIVERGE(p_1498->global_0_offset, get_global_id(0), 10))) == (safe_rshift_func_uint16_t_u_s((--(*l_1134)), 13)))) > l_1126), ((safe_rshift_func_uint8_t_u_u(((*p_1498->g_746) == (((safe_unary_minus_func_uint16_t_u((((p_1498->g_263 == 0x47568E87FA1492EAL) , 0xE8655572L) >= 0xD84AA598L))) > p_1498->g_926.f4) , &l_29)), (*l_1045))) , GROUP_DIVERGE(0, 1)))) , GROUP_DIVERGE(1, 1))) , (-7L)), p_1498->g_654)), l_1126))))) > (**p_1498->g_136))) , (*l_1045))), l_1126)) , (-6L)), p_1498->g_49)), p_1498->g_13)) <= p_1498->g_144[1])))
                { /* block id: 499 */
                    uint8_t *l_1146 = &p_1498->g_632[0][0];
                    int32_t l_1147 = 0x5A4C350EL;
                    if (((safe_sub_func_int16_t_s_s((safe_div_func_int64_t_s_s((FAKE_DIVERGE(p_1498->group_0_offset, get_group_id(0), 10) , (((*l_1146) = (l_1045 == &p_1498->g_584)) | l_1126)), l_1147)), (safe_rshift_func_uint8_t_u_u(((safe_add_func_int32_t_s_s((safe_mul_func_uint8_t_u_u(GROUP_DIVERGE(1, 1), l_1120)), (safe_mul_func_uint16_t_u_u(FAKE_DIVERGE(p_1498->global_0_offset, get_global_id(0), 10), (safe_mul_func_uint16_t_u_u((l_1158 != (void*)0), p_1498->g_9)))))) && GROUP_DIVERGE(2, 1)), ((((safe_rshift_func_int16_t_s_s((safe_add_func_uint64_t_u_u((**p_1498->g_136), l_1066)), l_1120)) , l_1126) > l_1079) != 0x36L))))) > 0x24L))
                    { /* block id: 501 */
                        uint32_t l_1164[4][3] = {{0x14948BA3L,0x5FF66AC8L,0x4CC12CC6L},{0x14948BA3L,0x5FF66AC8L,0x4CC12CC6L},{0x14948BA3L,0x5FF66AC8L,0x4CC12CC6L},{0x14948BA3L,0x5FF66AC8L,0x4CC12CC6L}};
                        int i, j;
                        ++l_1164[3][2];
                    }
                    else
                    { /* block id: 503 */
                        uint16_t l_1167[7] = {0xD3DBL,0x8D36L,0xD3DBL,0xD3DBL,0x8D36L,0xD3DBL,0xD3DBL};
                        int i;
                        ++l_1167[1];
                        l_1071 ^= (safe_rshift_func_int16_t_s_u(((l_1054[4] != ((*p_1498->g_898) = func_97(l_1147, p_1498))) , ((*l_35) = ((safe_mod_func_int8_t_s_s((safe_lshift_func_uint8_t_u_s(l_1120, (p_1498->g_10 <= (((p_1498->g_1176 , (safe_div_func_int16_t_s_s((!(0x43400A4A53B4CAB0L & (safe_sub_func_uint64_t_u_u((((l_1147 & (safe_mod_func_int8_t_s_s((+(((((18446744073709551615UL <= p_1498->g_926.f0) || 0x6EB2L) >= GROUP_DIVERGE(1, 1)) || 0UL) , p_1498->g_910.f1)), l_1167[5]))) == 1L) || l_1120), 5UL)))), (*l_1045)))) ^ p_1498->g_1183) && l_1167[1])))), l_1126)) == l_1147))), p_1498->g_1053[2]));
                    }
                    for (l_1066 = 0; (l_1066 >= 13); ++l_1066)
                    { /* block id: 511 */
                        if (l_1126)
                            break;
                        (*p_1498->g_202) = &l_1147;
                    }
                    (*p_1498->g_548) |= ((l_1147 , (((l_1186[2][0] > (p_1498->g_439 &= ((*l_1159) = FAKE_DIVERGE(p_1498->group_0_offset, get_group_id(0), 10)))) ^ (safe_add_func_int16_t_s_s((((((safe_add_func_int16_t_s_s(l_1147, ((0x0704D7CCL >= (((safe_rshift_func_uint16_t_u_s((safe_rshift_func_uint8_t_u_u((l_1147 , (0x1A7CL < (l_1147 , p_1498->g_1025.f0))), l_1147)), (*l_1045))) | l_1186[1][1]) >= l_1147)) , 0x2735L))) , (void*)0) != l_1197) > (*l_1045)) | 0x547641412EC5B731L), l_1126))) <= p_1498->g_1183)) && p_1498->g_963.f1);
                }
                else
                { /* block id: 518 */
                    int32_t l_1209[10][7][3] = {{{0x7C7B5A61L,0L,0x748E7F31L},{0x7C7B5A61L,0L,0x748E7F31L},{0x7C7B5A61L,0L,0x748E7F31L},{0x7C7B5A61L,0L,0x748E7F31L},{0x7C7B5A61L,0L,0x748E7F31L},{0x7C7B5A61L,0L,0x748E7F31L},{0x7C7B5A61L,0L,0x748E7F31L}},{{0x7C7B5A61L,0L,0x748E7F31L},{0x7C7B5A61L,0L,0x748E7F31L},{0x7C7B5A61L,0L,0x748E7F31L},{0x7C7B5A61L,0L,0x748E7F31L},{0x7C7B5A61L,0L,0x748E7F31L},{0x7C7B5A61L,0L,0x748E7F31L},{0x7C7B5A61L,0L,0x748E7F31L}},{{0x7C7B5A61L,0L,0x748E7F31L},{0x7C7B5A61L,0L,0x748E7F31L},{0x7C7B5A61L,0L,0x748E7F31L},{0x7C7B5A61L,0L,0x748E7F31L},{0x7C7B5A61L,0L,0x748E7F31L},{0x7C7B5A61L,0L,0x748E7F31L},{0x7C7B5A61L,0L,0x748E7F31L}},{{0x7C7B5A61L,0L,0x748E7F31L},{0x7C7B5A61L,0L,0x748E7F31L},{0x7C7B5A61L,0L,0x748E7F31L},{0x7C7B5A61L,0L,0x748E7F31L},{0x7C7B5A61L,0L,0x748E7F31L},{0x7C7B5A61L,0L,0x748E7F31L},{0x7C7B5A61L,0L,0x748E7F31L}},{{0x7C7B5A61L,0L,0x748E7F31L},{0x7C7B5A61L,0L,0x748E7F31L},{0x7C7B5A61L,0L,0x748E7F31L},{0x7C7B5A61L,0L,0x748E7F31L},{0x7C7B5A61L,0L,0x748E7F31L},{0x7C7B5A61L,0L,0x748E7F31L},{0x7C7B5A61L,0L,0x748E7F31L}},{{0x7C7B5A61L,0L,0x748E7F31L},{0x7C7B5A61L,0L,0x748E7F31L},{0x7C7B5A61L,0L,0x748E7F31L},{0x7C7B5A61L,0L,0x748E7F31L},{0x7C7B5A61L,0L,0x748E7F31L},{0x7C7B5A61L,0L,0x748E7F31L},{0x7C7B5A61L,0L,0x748E7F31L}},{{0x7C7B5A61L,0L,0x748E7F31L},{0x7C7B5A61L,0L,0x748E7F31L},{0x7C7B5A61L,0L,0x748E7F31L},{0x7C7B5A61L,0L,0x748E7F31L},{0x7C7B5A61L,0L,0x748E7F31L},{0x7C7B5A61L,0L,0x748E7F31L},{0x7C7B5A61L,0L,0x748E7F31L}},{{0x7C7B5A61L,0L,0x748E7F31L},{0x7C7B5A61L,0L,0x748E7F31L},{0x7C7B5A61L,0L,0x748E7F31L},{0x7C7B5A61L,0L,0x748E7F31L},{0x7C7B5A61L,0L,0x748E7F31L},{0x7C7B5A61L,0L,0x748E7F31L},{0x7C7B5A61L,0L,0x748E7F31L}},{{0x7C7B5A61L,0L,0x748E7F31L},{0x7C7B5A61L,0L,0x748E7F31L},{0x7C7B5A61L,0L,0x748E7F31L},{0x7C7B5A61L,0L,0x748E7F31L},{0x7C7B5A61L,0L,0x748E7F31L},{0x7C7B5A61L,0L,0x748E7F31L},{0x7C7B5A61L,0L,0x748E7F31L}},{{0x7C7B5A61L,0L,0x748E7F31L},{0x7C7B5A61L,0L,0x748E7F31L},{0x7C7B5A61L,0L,0x748E7F31L},{0x7C7B5A61L,0L,0x748E7F31L},{0x7C7B5A61L,0L,0x748E7F31L},{0x7C7B5A61L,0L,0x748E7F31L},{0x7C7B5A61L,0L,0x748E7F31L}}};
                    int64_t l_1213 = 0x5E837F94A4D41EC0L;
                    int32_t l_1214 = 0x68FA6788L;
                    int32_t l_1215 = 0x145F7079L;
                    int32_t l_1216[6] = {0x11BD0440L,0x11BD0440L,0x11BD0440L,0x11BD0440L,0x11BD0440L,0x11BD0440L};
                    uint64_t l_1217 = 18446744073709551606UL;
                    int i, j, k;
                    for (p_1498->g_782 = 8; (p_1498->g_782 >= 20); ++p_1498->g_782)
                    { /* block id: 521 */
                        uint8_t *l_1210 = &p_1498->g_214;
                        int32_t l_1211 = 0x6822758FL;
                        int32_t *l_1212[7];
                        int i;
                        for (i = 0; i < 7; i++)
                            l_1212[i] = &l_1073[0];
                        (*p_1498->g_548) |= ((safe_sub_func_uint16_t_u_u(((6UL < (safe_lshift_func_int16_t_s_u((((safe_mod_func_uint32_t_u_u(((*l_1045) ^ (((*l_1134) = 7UL) > ((0x081F086201EB1E7BL & (((((void*)0 != l_1206) > (p_1498->g_49 , 0x10L)) < (safe_lshift_func_uint16_t_u_u((((*l_1210) = (l_1209[4][3][1] > 3UL)) <= FAKE_DIVERGE(p_1498->group_1_offset, get_group_id(1), 10)), p_1498->g_631))) , 0x7F53E619009FA6E9L)) >= l_1070[1]))), 1L)) == GROUP_DIVERGE(2, 1)) != l_1209[5][5][0]), 3))) != 0L), p_1498->g_1025.f0)) || 0x35886AAAL);
                        l_1217++;
                        (*p_1498->g_548) ^= 1L;
                    }
                    l_1070[1] &= (*l_1045);
                }
            }
        }
        else
        { /* block id: 531 */
            uint8_t l_1220 = 0UL;
            int8_t l_1229 = 0x13L;
            uint16_t *l_1240 = (void*)0;
            uint16_t *l_1241 = &p_1498->g_730;
            uint16_t * volatile **l_1243 = &p_1498->g_1242;
            (*p_1498->g_1230) ^= ((*p_1498->g_548) = ((+(l_1220 == (l_1220 & (((**p_1498->g_202) = ((void*)0 == &p_1498->g_746)) | (safe_add_func_uint16_t_u_u(((safe_div_func_uint8_t_u_u((safe_rshift_func_uint8_t_u_s(8UL, (safe_mod_func_int64_t_s_s(0x0F367E09587245B9L, l_877)))), 0x0CL)) || p_1498->g_95), l_1229)))))) & (**p_1498->g_136)));
            (*p_1498->g_548) ^= (safe_mod_func_uint16_t_u_u(((*l_1241) = (safe_add_func_uint64_t_u_u(l_1220, ((((*l_1197) != (void*)0) && ((safe_mul_func_int8_t_s_s((p_1498->g_144[3] & (((((-1L) > ((--(**l_1158)) <= (1L || (l_1229 | ((*l_1045) && 0x3508L))))) || (-8L)) , (*l_1045)) & l_1239)), 0x17L)) == GROUP_DIVERGE(1, 1))) | l_1083[0])))), l_1129));
            (*l_1243) = p_1498->g_1242;
            for (l_1074 = 0; (l_1074 < 17); l_1074++)
            { /* block id: 541 */
                uint64_t l_1246 = 0x467E3AF4D9594C88L;
                (*p_1498->g_202) = func_97(l_1246, p_1498);
            }
        }
        ++l_1250[1];
    }
    return (*l_1045);
}


/* ------------------------------------------ */
/* 
 * reads : p_1498->g_326
 * writes:
 */
int32_t  func_22(uint64_t * p_23, uint64_t * p_24, uint64_t  p_25, uint64_t * p_26, struct S1 * p_1498)
{ /* block id: 375 */
    int32_t *l_854 = &p_1498->g_837;
    int32_t *l_855 = &p_1498->g_326;
    int32_t l_856 = 0x6453AD4AL;
    int32_t *l_857 = &p_1498->g_95;
    int32_t l_858 = (-7L);
    int32_t *l_859 = &p_1498->g_326;
    int32_t *l_860 = &l_858;
    int32_t *l_861 = &p_1498->g_837;
    int32_t *l_862 = &p_1498->g_95;
    int32_t *l_863[2];
    uint64_t l_864[7];
    int i;
    for (i = 0; i < 2; i++)
        l_863[i] = &p_1498->g_161;
    for (i = 0; i < 7; i++)
        l_864[i] = 1UL;
    ++l_864[5];
    return (*l_855);
}


/* ------------------------------------------ */
/* 
 * reads : p_1498->g_2 p_1498->g_49 p_1498->g_21 p_1498->g_13 p_1498->g_90 p_1498->g_95 p_1498->g_10 p_1498->g_75 p_1498->g_114 p_1498->g_136 p_1498->g_139 p_1498->g_142 p_1498->g_144 p_1498->g_161 p_1498->g_170 p_1498->g_137 p_1498->g_159 p_1498->g_203 p_1498->g_551 p_1498->g_242 p_1498->g_167 p_1498->g_548 p_1498->g_202 p_1498->g_263 p_1498->g_580 p_1498->g_585 p_1498->g_439
 * writes: p_1498->g_49 p_1498->g_75 p_1498->g_90 p_1498->g_95 p_1498->g_114 p_1498->g_136 p_1498->g_142 p_1498->g_144 p_1498->g_159 p_1498->g_161 p_1498->g_167 p_1498->g_203 p_1498->g_412 p_1498->g_214 p_1498->g_242 p_1498->g_263 p_1498->g_580 p_1498->g_585 p_1498->g_439
 */
int32_t  func_41(uint16_t  p_42, uint32_t  p_43, int16_t * p_44, uint8_t  p_45, struct S1 * p_1498)
{ /* block id: 32 */
    int32_t l_48 = 7L;
    int32_t *l_592 = &p_1498->g_144[3];
    int32_t **l_591[8];
    int32_t ***l_590[1][5][5] = {{{&l_591[6],&l_591[1],&l_591[0],&l_591[1],&l_591[6]},{&l_591[6],&l_591[1],&l_591[0],&l_591[1],&l_591[6]},{&l_591[6],&l_591[1],&l_591[0],&l_591[1],&l_591[6]},{&l_591[6],&l_591[1],&l_591[0],&l_591[1],&l_591[6]},{&l_591[6],&l_591[1],&l_591[0],&l_591[1],&l_591[6]}}};
    int32_t ***l_610 = &p_1498->g_202;
    int64_t l_628 = (-2L);
    int32_t l_630[5][3][10] = {{{0L,0L,0x79347631L,0x0DDE3EEFL,8L,0x0DDE3EEFL,0x79347631L,0L,0L,0x79347631L},{0L,0L,0x79347631L,0x0DDE3EEFL,8L,0x0DDE3EEFL,0x79347631L,0L,0L,0x79347631L},{0L,0L,0x79347631L,0x0DDE3EEFL,8L,0x0DDE3EEFL,0x79347631L,0L,0L,0x79347631L}},{{0L,0L,0x79347631L,0x0DDE3EEFL,8L,0x0DDE3EEFL,0x79347631L,0L,0L,0x79347631L},{0L,0L,0x79347631L,0x0DDE3EEFL,8L,0x0DDE3EEFL,0x79347631L,0L,0L,0x79347631L},{0L,0L,0x79347631L,0x0DDE3EEFL,8L,0x0DDE3EEFL,0x79347631L,0L,0L,0x79347631L}},{{0L,0L,0x79347631L,0x0DDE3EEFL,8L,0x0DDE3EEFL,0x79347631L,0L,0L,0x79347631L},{0L,0L,0x79347631L,0x0DDE3EEFL,8L,0x0DDE3EEFL,0x79347631L,0L,0L,0x79347631L},{0L,0L,0x79347631L,0x0DDE3EEFL,8L,0x0DDE3EEFL,0x79347631L,0L,0L,0x79347631L}},{{0L,0L,0x79347631L,0x0DDE3EEFL,8L,0x0DDE3EEFL,0x79347631L,0L,0L,0x79347631L},{0L,0L,0x79347631L,0x0DDE3EEFL,8L,0x0DDE3EEFL,0x79347631L,0L,0L,0x79347631L},{0L,0L,0x79347631L,0x0DDE3EEFL,8L,0x0DDE3EEFL,0x79347631L,0L,0L,0x79347631L}},{{0L,0L,0x79347631L,0x0DDE3EEFL,8L,0x0DDE3EEFL,0x79347631L,0L,0L,0x79347631L},{0L,0L,0x79347631L,0x0DDE3EEFL,8L,0x0DDE3EEFL,0x79347631L,0L,0L,0x79347631L},{0L,0L,0x79347631L,0x0DDE3EEFL,8L,0x0DDE3EEFL,0x79347631L,0L,0L,0x79347631L}}};
    int32_t l_691 = 1L;
    uint16_t *l_695 = &p_1498->g_167[2];
    int32_t l_751 = 1L;
    uint8_t *l_821 = &p_1498->g_632[0][0];
    uint8_t **l_820 = &l_821;
    int i, j, k;
    for (i = 0; i < 8; i++)
        l_591[i] = &l_592;
    l_48 = (safe_add_func_uint8_t_u_u(l_48, (p_1498->g_49 |= p_1498->g_2)));
    for (p_42 = 0; (p_42 <= 16); p_42++)
    { /* block id: 37 */
        int32_t *l_52[4];
        int i;
        for (i = 0; i < 4; i++)
            l_52[i] = &l_48;
        if ((l_48 = 0x22F747EAL))
        { /* block id: 39 */
            uint64_t l_91 = 18446744073709551615UL;
            int32_t l_575 = 0L;
            for (p_1498->g_49 = 29; (p_1498->g_49 != (-10)); p_1498->g_49 = safe_sub_func_int8_t_s_s(p_1498->g_49, 4))
            { /* block id: 42 */
                uint64_t *l_71 = &p_1498->g_21[5];
                uint64_t **l_70 = &l_71;
                uint64_t *l_74[1][4];
                uint32_t *l_89 = &p_1498->g_90;
                uint16_t *l_553 = (void*)0;
                uint16_t *l_554 = &p_1498->g_412;
                uint16_t *l_555 = &p_1498->g_167[0];
                int i, j;
                for (i = 0; i < 1; i++)
                {
                    for (j = 0; j < 4; j++)
                        l_74[i][j] = &p_1498->g_75[3];
                }
                l_575 = (safe_mul_func_int16_t_s_s(p_1498->g_21[5], ((p_1498->g_13 , ((*p_1498->g_548) = func_57(&p_1498->g_13, p_42, (((-5L) ^ (1L > (safe_sub_func_uint16_t_u_u(((*l_555) = ((*l_554) = (safe_sub_func_uint32_t_u_u(func_67(((*l_70) = (void*)0), ((safe_div_func_int64_t_s_s(((!(p_1498->g_75[3] = p_1498->g_21[4])) & (safe_sub_func_int16_t_s_s((((safe_lshift_func_int16_t_s_s(func_80(((*l_89) ^= ((safe_div_func_int64_t_s_s((safe_lshift_func_uint16_t_u_u((safe_sub_func_int8_t_s_s((-1L), 7L)), p_43)), p_45)) < p_42)), l_91, p_1498), p_1498->g_10)) && 3UL) == p_1498->g_21[0]), p_1498->g_10))), p_42)) || GROUP_DIVERGE(1, 1)), p_1498), l_91)))), p_1498->g_2)))) >= p_43), &l_74[0][0], p_1498->g_10, p_1498))) >= (-7L))));
            }
        }
        else
        { /* block id: 256 */
            l_48 |= ((**p_1498->g_202) &= ((((void*)0 == &p_1498->g_412) || (*p_1498->g_548)) >= (safe_rshift_func_int8_t_s_u(0x16L, 7))));
        }
    }
    for (p_1498->g_263 = 0; (p_1498->g_263 < (-17)); --p_1498->g_263)
    { /* block id: 263 */
        struct S0 **l_581 = &p_1498->g_580;
        int32_t *l_582 = &l_48;
        int32_t *l_583[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
        uint64_t ***l_624 = &p_1498->g_136;
        uint32_t l_644 = 1UL;
        uint64_t l_684 = 0x862A90B66AAAF8EAL;
        int16_t l_698 = 0x3505L;
        int i;
        (*p_1498->g_548) = (p_42 != (-7L));
        (*l_581) = p_1498->g_580;
        ++p_1498->g_585;
        for (p_1498->g_90 = 0; (p_1498->g_90 <= 4); p_1498->g_90 += 1)
        { /* block id: 269 */
            int32_t ***l_593 = &l_591[7];
            int32_t ***l_604[8][10] = {{&p_1498->g_202,&p_1498->g_202,&p_1498->g_202,&p_1498->g_202,(void*)0,&p_1498->g_202,&p_1498->g_202,(void*)0,&p_1498->g_202,&p_1498->g_202},{&p_1498->g_202,&p_1498->g_202,&p_1498->g_202,&p_1498->g_202,(void*)0,&p_1498->g_202,&p_1498->g_202,(void*)0,&p_1498->g_202,&p_1498->g_202},{&p_1498->g_202,&p_1498->g_202,&p_1498->g_202,&p_1498->g_202,(void*)0,&p_1498->g_202,&p_1498->g_202,(void*)0,&p_1498->g_202,&p_1498->g_202},{&p_1498->g_202,&p_1498->g_202,&p_1498->g_202,&p_1498->g_202,(void*)0,&p_1498->g_202,&p_1498->g_202,(void*)0,&p_1498->g_202,&p_1498->g_202},{&p_1498->g_202,&p_1498->g_202,&p_1498->g_202,&p_1498->g_202,(void*)0,&p_1498->g_202,&p_1498->g_202,(void*)0,&p_1498->g_202,&p_1498->g_202},{&p_1498->g_202,&p_1498->g_202,&p_1498->g_202,&p_1498->g_202,(void*)0,&p_1498->g_202,&p_1498->g_202,(void*)0,&p_1498->g_202,&p_1498->g_202},{&p_1498->g_202,&p_1498->g_202,&p_1498->g_202,&p_1498->g_202,(void*)0,&p_1498->g_202,&p_1498->g_202,(void*)0,&p_1498->g_202,&p_1498->g_202},{&p_1498->g_202,&p_1498->g_202,&p_1498->g_202,&p_1498->g_202,(void*)0,&p_1498->g_202,&p_1498->g_202,(void*)0,&p_1498->g_202,&p_1498->g_202}};
            int32_t ****l_605 = &l_604[3][0];
            int32_t ****l_606 = (void*)0;
            int32_t ****l_607 = (void*)0;
            int32_t ***l_609 = &p_1498->g_202;
            int32_t ****l_608[10];
            uint32_t l_625[5];
            uint16_t *l_692 = &p_1498->g_585;
            int i, j;
            for (i = 0; i < 10; i++)
                l_608[i] = &l_609;
            for (i = 0; i < 5; i++)
                l_625[i] = 0UL;
            (1 + 1);
        }
    }
    for (p_1498->g_439 = 0; (p_1498->g_439 <= 2); p_1498->g_439 += 1)
    { /* block id: 314 */
        int64_t l_704[6] = {6L,0x0FAC5BA30A4B54BDL,6L,6L,0x0FAC5BA30A4B54BDL,6L};
        int32_t l_705[9] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
        uint8_t *l_706 = (void*)0;
        uint8_t *l_707 = (void*)0;
        uint8_t *l_708[8] = {&p_1498->g_654,&p_1498->g_654,&p_1498->g_654,&p_1498->g_654,&p_1498->g_654,&p_1498->g_654,&p_1498->g_654,&p_1498->g_654};
        int32_t ***l_749 = &p_1498->g_202;
        uint8_t l_773 = 8UL;
        uint64_t l_818[5] = {0xFFEA1DAC1B71D3D7L,0xFFEA1DAC1B71D3D7L,0xFFEA1DAC1B71D3D7L,0xFFEA1DAC1B71D3D7L,0xFFEA1DAC1B71D3D7L};
        uint64_t ***l_819 = &p_1498->g_136;
        int i;
        (1 + 1);
    }
    return p_43;
}


/* ------------------------------------------ */
/* 
 * reads : p_1498->g_242 p_1498->g_136 p_1498->g_137 p_1498->g_21 p_1498->g_75 p_1498->g_167 p_1498->g_203 p_1498->g_159 p_1498->g_13 p_1498->g_548 p_1498->g_95
 * writes: p_1498->g_214 p_1498->g_242 p_1498->g_159 p_1498->g_95
 */
int32_t  func_57(int32_t * p_58, int32_t  p_59, int8_t  p_60, uint64_t ** p_61, uint32_t  p_62, struct S1 * p_1498)
{ /* block id: 245 */
    int8_t l_558 = (-5L);
    uint8_t *l_559 = &p_1498->g_214;
    int8_t *l_564 = &p_1498->g_242[5];
    (*p_1498->g_548) = (((*p_1498->g_203) |= ((l_558 , (((*l_559) = 255UL) || (safe_lshift_func_int8_t_s_u((safe_lshift_func_int8_t_s_u(((*l_564) ^= (-1L)), 2)), ((*l_559) = l_558))))) < (1UL > (safe_mul_func_int16_t_s_s((~0x2F28L), (l_558 <= ((((((safe_mul_func_uint16_t_u_u(((safe_lshift_func_int16_t_s_s(((safe_rshift_func_uint16_t_u_s((p_60 >= ((l_558 , 4UL) & (**p_1498->g_136))), l_558)) & 0x6C615A6BB1EE93A6L), 0)) > 0xA3FAL), l_558)) >= (**p_61)) > p_1498->g_167[0]) , (void*)0) == (void*)0) ^ p_62))))))) & (*p_58));
    (*p_1498->g_548) &= (safe_lshift_func_uint16_t_u_s(p_60, l_558));
    return (*p_58);
}


/* ------------------------------------------ */
/* 
 * reads : p_1498->g_95 p_1498->g_75 p_1498->g_49 p_1498->g_21 p_1498->g_114 p_1498->g_136 p_1498->g_139 p_1498->g_142 p_1498->g_144 p_1498->g_2 p_1498->g_161 p_1498->g_170 p_1498->g_90 p_1498->g_10 p_1498->g_137 p_1498->g_159 p_1498->g_203 p_1498->g_551
 * writes: p_1498->g_95 p_1498->g_114 p_1498->g_136 p_1498->g_142 p_1498->g_144 p_1498->g_159 p_1498->g_161 p_1498->g_167 p_1498->g_203
 */
uint32_t  func_67(uint64_t * p_68, uint32_t  p_69, struct S1 * p_1498)
{ /* block id: 49 */
    int32_t *l_552 = &p_1498->g_159;
    l_552 = func_97(p_69, p_1498);
    return (*l_552);
}


/* ------------------------------------------ */
/* 
 * reads : p_1498->g_49 p_1498->g_95
 * writes: p_1498->g_95
 */
int16_t  func_80(uint32_t  p_81, int32_t  p_82, struct S1 * p_1498)
{ /* block id: 46 */
    uint32_t l_93 = 0xBFF831C2L;
    int32_t *l_94 = &p_1498->g_95;
    uint8_t l_96 = 4UL;
    (*l_94) ^= ((safe_unary_minus_func_uint16_t_u(p_1498->g_49)) | ((&p_1498->g_10 == &p_1498->g_10) == l_93));
    return l_96;
}


/* ------------------------------------------ */
/* 
 * reads : p_1498->g_95 p_1498->g_75 p_1498->g_49 p_1498->g_21 p_1498->g_114 p_1498->g_136 p_1498->g_139 p_1498->g_142 p_1498->g_144 p_1498->g_2 p_1498->g_161 p_1498->g_170 p_1498->g_90 p_1498->g_10 p_1498->g_137 p_1498->g_159 p_1498->g_203 p_1498->g_551
 * writes: p_1498->g_95 p_1498->g_114 p_1498->g_136 p_1498->g_142 p_1498->g_144 p_1498->g_159 p_1498->g_161 p_1498->g_167 p_1498->g_203
 */
int32_t * func_97(int32_t  p_98, struct S1 * p_1498)
{ /* block id: 50 */
    uint64_t l_112 = 0xDE8DED04CED5A68FL;
    int16_t *l_113 = &p_1498->g_114;
    int32_t *l_183 = &p_1498->g_144[3];
    int32_t **l_204 = &p_1498->g_203;
    int32_t l_254 = 0x60EA1D60L;
    int32_t l_266 = 1L;
    int32_t l_271 = (-7L);
    int32_t l_305[6][7] = {{0x4E412BC6L,0x21A30916L,0x29686D66L,0x34B923ABL,1L,0x4E412BC6L,0x34B923ABL},{0x4E412BC6L,0x21A30916L,0x29686D66L,0x34B923ABL,1L,0x4E412BC6L,0x34B923ABL},{0x4E412BC6L,0x21A30916L,0x29686D66L,0x34B923ABL,1L,0x4E412BC6L,0x34B923ABL},{0x4E412BC6L,0x21A30916L,0x29686D66L,0x34B923ABL,1L,0x4E412BC6L,0x34B923ABL},{0x4E412BC6L,0x21A30916L,0x29686D66L,0x34B923ABL,1L,0x4E412BC6L,0x34B923ABL},{0x4E412BC6L,0x21A30916L,0x29686D66L,0x34B923ABL,1L,0x4E412BC6L,0x34B923ABL}};
    uint64_t ****l_473[6] = {&p_1498->g_246,&p_1498->g_246,&p_1498->g_246,&p_1498->g_246,&p_1498->g_246,&p_1498->g_246};
    uint64_t l_480[10] = {0xC839E66F8DE00E42L,18446744073709551611UL,0x3750173537218091L,18446744073709551611UL,0xC839E66F8DE00E42L,0xC839E66F8DE00E42L,18446744073709551611UL,0x3750173537218091L,18446744073709551611UL,0xC839E66F8DE00E42L};
    int i, j;
    if (((safe_div_func_uint8_t_u_u(((func_101(((((((((GROUP_DIVERGE(2, 1) == p_98) < p_1498->g_95) > FAKE_DIVERGE(p_1498->group_2_offset, get_group_id(2), 10)) , (safe_unary_minus_func_int16_t_s((safe_lshift_func_int16_t_s_s((((-2L) < 0x0858L) < func_80((safe_rshift_func_int16_t_s_s(((*l_113) = (func_80(l_112, (((p_1498->g_75[3] > p_98) <= (p_98 , ((0xA8206D70L >= l_112) & 0x417BL))) < 0x2AC1EF8B30EBBFACL), p_1498) == 6UL)), p_98)), p_1498->g_75[6], p_1498)), 12))))) < p_1498->g_21[4]) , p_1498->g_114) || 0x0617L) , p_98), &p_1498->g_21[1], &p_1498->g_21[1], l_112, &p_1498->g_90, p_1498) & l_112) || 0x6473L), p_1498->g_10)) , p_1498->g_144[0]))
    { /* block id: 76 */
        int32_t **l_178 = (void*)0;
        int32_t *l_180 = &p_1498->g_2;
        int32_t **l_179 = &l_180;
        (*l_179) = &p_1498->g_95;
    }
    else
    { /* block id: 78 */
        int32_t **l_184 = &l_183;
        int32_t *l_185 = &p_1498->g_161;
        uint16_t *l_186 = &p_1498->g_142;
        int32_t *l_191 = &p_1498->g_159;
        uint8_t *l_239 = &p_1498->g_214;
        uint64_t ***l_243 = &p_1498->g_136;
        int32_t l_264 = 8L;
        int32_t l_265 = 3L;
        uint8_t l_284 = 1UL;
        uint8_t l_514 = 1UL;
        p_1498->g_95 = (safe_add_func_int16_t_s_s(((+(p_1498->g_90 < ((((((((*l_185) = ((&p_98 == ((*l_184) = l_183)) & (**p_1498->g_136))) < ((((*l_186) = p_98) | 0xD32DL) , ((*l_191) = ((5L || ((safe_sub_func_uint32_t_u_u((safe_sub_func_uint32_t_u_u(l_112, p_1498->g_75[3])), p_1498->g_49)) == p_1498->g_159)) > p_98)))) < FAKE_DIVERGE(p_1498->global_2_offset, get_global_id(2), 10)) <= l_112) <= 7UL) == p_98) | 0L))) != 0x1EL), p_98));
        (*l_191) |= 0x435A66D9L;
        for (p_98 = 29; (p_98 < 20); p_98 = safe_sub_func_int64_t_s_s(p_98, 6))
        { /* block id: 87 */
            int32_t *l_196 = &p_1498->g_161;
            uint64_t l_199 = 8UL;
            uint8_t *l_213 = &p_1498->g_214;
            uint16_t *l_225 = &p_1498->g_167[1];
            int32_t l_253 = 0x1FBD7E93L;
            int32_t l_270 = 0L;
            uint32_t l_272 = 0x431FDB0AL;
            int32_t *l_320 = &p_1498->g_95;
            uint32_t *l_321 = (void*)0;
            uint32_t *l_322[7] = {&p_1498->g_90,&p_1498->g_90,&p_1498->g_90,&p_1498->g_90,&p_1498->g_90,&p_1498->g_90,&p_1498->g_90};
            int64_t *l_323[9][2] = {{&p_1498->g_263,&p_1498->g_263},{&p_1498->g_263,&p_1498->g_263},{&p_1498->g_263,&p_1498->g_263},{&p_1498->g_263,&p_1498->g_263},{&p_1498->g_263,&p_1498->g_263},{&p_1498->g_263,&p_1498->g_263},{&p_1498->g_263,&p_1498->g_263},{&p_1498->g_263,&p_1498->g_263},{&p_1498->g_263,&p_1498->g_263}};
            uint64_t l_374 = 0xD695708A3DC93ED5L;
            uint64_t **l_375 = &p_1498->g_137;
            int8_t l_398[9];
            int32_t **l_545 = &l_183;
            int i, j;
            for (i = 0; i < 9; i++)
                l_398[i] = 0x59L;
            for (l_112 = 0; (l_112 > 5); l_112++)
            { /* block id: 90 */
                (1 + 1);
            }
        }
    }
    (*l_204) = (*l_204);
    return p_1498->g_551;
}


/* ------------------------------------------ */
/* 
 * reads : p_1498->g_21 p_1498->g_136 p_1498->g_139 p_1498->g_142 p_1498->g_144 p_1498->g_95 p_1498->g_2 p_1498->g_161 p_1498->g_170 p_1498->g_75 p_1498->g_90 p_1498->g_49
 * writes: p_1498->g_136 p_1498->g_142 p_1498->g_144 p_1498->g_95 p_1498->g_159 p_1498->g_161 p_1498->g_167
 */
uint8_t  func_101(int32_t  p_102, uint64_t * p_103, uint64_t * p_104, int16_t  p_105, uint32_t * p_106, struct S1 * p_1498)
{ /* block id: 52 */
    uint8_t l_119[9][3][9] = {{{0UL,0UL,0xCDL,0x42L,0x09L,0x9BL,255UL,0x00L,255UL},{0UL,0UL,0xCDL,0x42L,0x09L,0x9BL,255UL,0x00L,255UL},{0UL,0UL,0xCDL,0x42L,0x09L,0x9BL,255UL,0x00L,255UL}},{{0UL,0UL,0xCDL,0x42L,0x09L,0x9BL,255UL,0x00L,255UL},{0UL,0UL,0xCDL,0x42L,0x09L,0x9BL,255UL,0x00L,255UL},{0UL,0UL,0xCDL,0x42L,0x09L,0x9BL,255UL,0x00L,255UL}},{{0UL,0UL,0xCDL,0x42L,0x09L,0x9BL,255UL,0x00L,255UL},{0UL,0UL,0xCDL,0x42L,0x09L,0x9BL,255UL,0x00L,255UL},{0UL,0UL,0xCDL,0x42L,0x09L,0x9BL,255UL,0x00L,255UL}},{{0UL,0UL,0xCDL,0x42L,0x09L,0x9BL,255UL,0x00L,255UL},{0UL,0UL,0xCDL,0x42L,0x09L,0x9BL,255UL,0x00L,255UL},{0UL,0UL,0xCDL,0x42L,0x09L,0x9BL,255UL,0x00L,255UL}},{{0UL,0UL,0xCDL,0x42L,0x09L,0x9BL,255UL,0x00L,255UL},{0UL,0UL,0xCDL,0x42L,0x09L,0x9BL,255UL,0x00L,255UL},{0UL,0UL,0xCDL,0x42L,0x09L,0x9BL,255UL,0x00L,255UL}},{{0UL,0UL,0xCDL,0x42L,0x09L,0x9BL,255UL,0x00L,255UL},{0UL,0UL,0xCDL,0x42L,0x09L,0x9BL,255UL,0x00L,255UL},{0UL,0UL,0xCDL,0x42L,0x09L,0x9BL,255UL,0x00L,255UL}},{{0UL,0UL,0xCDL,0x42L,0x09L,0x9BL,255UL,0x00L,255UL},{0UL,0UL,0xCDL,0x42L,0x09L,0x9BL,255UL,0x00L,255UL},{0UL,0UL,0xCDL,0x42L,0x09L,0x9BL,255UL,0x00L,255UL}},{{0UL,0UL,0xCDL,0x42L,0x09L,0x9BL,255UL,0x00L,255UL},{0UL,0UL,0xCDL,0x42L,0x09L,0x9BL,255UL,0x00L,255UL},{0UL,0UL,0xCDL,0x42L,0x09L,0x9BL,255UL,0x00L,255UL}},{{0UL,0UL,0xCDL,0x42L,0x09L,0x9BL,255UL,0x00L,255UL},{0UL,0UL,0xCDL,0x42L,0x09L,0x9BL,255UL,0x00L,255UL},{0UL,0UL,0xCDL,0x42L,0x09L,0x9BL,255UL,0x00L,255UL}}};
    uint64_t ***l_138[4] = {&p_1498->g_136,&p_1498->g_136,&p_1498->g_136,&p_1498->g_136};
    uint16_t *l_140 = (void*)0;
    uint16_t *l_141 = &p_1498->g_142;
    int32_t *l_143 = &p_1498->g_144[3];
    int32_t *l_160 = &p_1498->g_161;
    int i, j, k;
    (*l_160) &= func_115(((*l_143) &= (&p_1498->g_13 == (((*l_141) ^= (+(l_119[0][2][2] >= (p_102 <= (!(safe_mul_func_int8_t_s_s((safe_lshift_func_int8_t_s_u(p_105, l_119[0][2][4])), ((*p_103) & (safe_sub_func_uint8_t_u_u((safe_rshift_func_uint8_t_u_u((safe_add_func_uint64_t_u_u(((void*)0 != p_106), (GROUP_DIVERGE(0, 1) > (((safe_mul_func_uint8_t_u_u(((safe_sub_func_int8_t_s_s(((safe_lshift_func_int16_t_s_u(((p_1498->g_136 = p_1498->g_136) != &p_1498->g_137), l_119[0][0][5])) && p_1498->g_139), p_105)) , l_119[2][1][6]), l_119[0][0][5])) || 0UL) <= p_105)))), GROUP_DIVERGE(1, 1))), 0x1FL)))))))))) , (void*)0))), l_143, p_105, p_1498);
    for (p_1498->g_142 = 0; (p_1498->g_142 != 28); p_1498->g_142 = safe_add_func_uint8_t_u_u(p_1498->g_142, 6))
    { /* block id: 67 */
        uint16_t *l_166 = &p_1498->g_167[0];
        uint8_t *l_176 = &l_119[0][2][2];
        int32_t *l_177 = &p_1498->g_95;
        (*l_177) = (safe_sub_func_int64_t_s_s(p_1498->g_21[6], (0x05B5L > ((((*l_160) = ((p_1498->g_159 = (((*l_166) = GROUP_DIVERGE(1, 1)) >= (p_105 | ((void*)0 != p_1498->g_170)))) | (safe_add_func_int32_t_s_s(0L, (((*l_176) &= p_1498->g_75[6]) , 0xC786B904L))))) ^ (~(p_103 == (void*)0))) <= p_1498->g_90))));
        (*l_160) = (*l_177);
    }
    return p_1498->g_49;
}


/* ------------------------------------------ */
/* 
 * reads : p_1498->g_95 p_1498->g_2 p_1498->g_21 p_1498->g_139
 * writes: p_1498->g_144 p_1498->g_95 p_1498->g_159
 */
int32_t  func_115(int32_t  p_116, int32_t * p_117, uint32_t  p_118, struct S1 * p_1498)
{ /* block id: 56 */
    int16_t l_145 = 0x4056L;
    int32_t *l_147 = (void*)0;
    int32_t **l_146 = &l_147;
    int32_t *l_149 = &p_1498->g_95;
    int32_t **l_148 = &l_149;
    int64_t *l_150[6];
    uint32_t l_151[8] = {0x0B283B51L,0x0B283B51L,0x0B283B51L,0x0B283B51L,0x0B283B51L,0x0B283B51L,0x0B283B51L,0x0B283B51L};
    int32_t *l_158[5];
    int i;
    for (i = 0; i < 6; i++)
        l_150[i] = (void*)0;
    for (i = 0; i < 5; i++)
        l_158[i] = &p_1498->g_159;
    (*l_148) = ((p_1498->g_95 , (p_1498->g_2 ^ (65535UL >= l_145))) , ((*l_146) = &p_1498->g_95));
    p_1498->g_159 = (p_1498->g_95 = ((l_151[4] = 0x003FA2AEE08D7298L) || (safe_mul_func_int16_t_s_s(((safe_mod_func_int16_t_s_s((((*l_147) , (((((((*p_117) = (&p_1498->g_90 == &p_1498->g_90)) > 0xC9008584L) | (0UL >= p_1498->g_21[1])) , (8L != ((+(safe_lshift_func_uint16_t_u_s(3UL, 4))) || p_118))) , 0x2A36D6AEL) <= FAKE_DIVERGE(p_1498->global_2_offset, get_global_id(2), 10))) != p_118), p_118)) > (-10L)), 0x1CA5L))));
    return p_1498->g_139;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S1 c_1499;
    struct S1* p_1498 = &c_1499;
    struct S1 c_1500 = {
        0L, // p_1498->g_2
        0x5CC48B16L, // p_1498->g_7
        {{0x72BA29F5L,(-1L),(-1L),(-1L),(-1L),(-1L)},{0x72BA29F5L,(-1L),(-1L),(-1L),(-1L),(-1L)},{0x72BA29F5L,(-1L),(-1L),(-1L),(-1L),(-1L)},{0x72BA29F5L,(-1L),(-1L),(-1L),(-1L),(-1L)},{0x72BA29F5L,(-1L),(-1L),(-1L),(-1L),(-1L)}}, // p_1498->g_8
        0x2B82C447L, // p_1498->g_9
        0L, // p_1498->g_10
        0x153413F0L, // p_1498->g_11
        1L, // p_1498->g_12
        0x22A0C0E0L, // p_1498->g_13
        0x64DE8CC19583E358L, // p_1498->g_15
        {2UL,2UL,2UL,2UL,2UL,2UL,2UL}, // p_1498->g_21
        (void*)0, // p_1498->g_27
        (-1L), // p_1498->g_36
        (-1L), // p_1498->g_49
        {1UL,1UL,1UL,1UL,1UL,1UL,1UL}, // p_1498->g_75
        4294967294UL, // p_1498->g_90
        0x10476CE5L, // p_1498->g_95
        0x1801L, // p_1498->g_114
        &p_1498->g_21[4], // p_1498->g_137
        &p_1498->g_137, // p_1498->g_136
        4294967290UL, // p_1498->g_139
        2UL, // p_1498->g_142
        {0x48868315L,0x48868315L,0x48868315L,0x48868315L,0x48868315L}, // p_1498->g_144
        (-1L), // p_1498->g_159
        (-3L), // p_1498->g_161
        {65535UL,65535UL,65535UL}, // p_1498->g_167
        0x646FAD07B9CB312FL, // p_1498->g_173
        &p_1498->g_173, // p_1498->g_172
        &p_1498->g_172, // p_1498->g_171
        &p_1498->g_171, // p_1498->g_170
        &p_1498->g_159, // p_1498->g_203
        &p_1498->g_203, // p_1498->g_202
        0xC1L, // p_1498->g_214
        {0L,0L,0L,0L,0L,0L}, // p_1498->g_242
        (void*)0, // p_1498->g_246
        (void*)0, // p_1498->g_247
        (-4L), // p_1498->g_262
        0x555E0BBD19619D59L, // p_1498->g_263
        0xBB9006ACL, // p_1498->g_267
        6L, // p_1498->g_326
        (void*)0, // p_1498->g_406
        4UL, // p_1498->g_412
        0UL, // p_1498->g_439
        (void*)0, // p_1498->g_511
        &p_1498->g_95, // p_1498->g_548
        &p_1498->g_10, // p_1498->g_551
        (void*)0, // p_1498->g_580
        0x3D46DA70L, // p_1498->g_584
        0UL, // p_1498->g_585
        (void*)0, // p_1498->g_611
        0x2610CF9144AA7BD9L, // p_1498->g_631
        {{2UL}}, // p_1498->g_632
        1L, // p_1498->g_650
        1L, // p_1498->g_653
        0xA2L, // p_1498->g_654
        0x22DD3A44L, // p_1498->g_724
        5UL, // p_1498->g_730
        &p_1498->g_246, // p_1498->g_746
        {&p_1498->g_746,&p_1498->g_746,&p_1498->g_746,&p_1498->g_746}, // p_1498->g_745
        1UL, // p_1498->g_782
        (void*)0, // p_1498->g_823
        {&p_1498->g_823,&p_1498->g_823,&p_1498->g_823,&p_1498->g_823,&p_1498->g_823,&p_1498->g_823}, // p_1498->g_822
        1L, // p_1498->g_837
        0x2A3C3451L, // p_1498->g_838
        &p_1498->g_724, // p_1498->g_899
        &p_1498->g_899, // p_1498->g_898
        {-1L,0x3AL,0x4FEA01CF49B776F8L,0xD2L,0x131017D0L}, // p_1498->g_910
        &p_1498->g_910, // p_1498->g_913
        {0x500F02FEL,0x59L,0L,0UL,0UL}, // p_1498->g_926
        (-7L), // p_1498->g_935
        (void*)0, // p_1498->g_946
        {0x0E2C2DF0L,-1L,0x0836F497AB6A645BL,0xD0L,9UL}, // p_1498->g_963
        &p_1498->g_611, // p_1498->g_999
        &p_1498->g_999, // p_1498->g_998
        {{(void*)0,(void*)0,(void*)0,(void*)0,&p_1498->g_998,(void*)0,(void*)0,&p_1498->g_998,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,&p_1498->g_998,(void*)0,(void*)0,&p_1498->g_998,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,&p_1498->g_998,(void*)0,(void*)0,&p_1498->g_998,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,&p_1498->g_998,(void*)0,(void*)0,&p_1498->g_998,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,&p_1498->g_998,(void*)0,(void*)0,&p_1498->g_998,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,&p_1498->g_998,(void*)0,(void*)0,&p_1498->g_998,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,&p_1498->g_998,(void*)0,(void*)0,&p_1498->g_998,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,&p_1498->g_998,(void*)0,(void*)0,&p_1498->g_998,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,&p_1498->g_998,(void*)0,(void*)0,&p_1498->g_998,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,&p_1498->g_998,(void*)0,(void*)0,&p_1498->g_998,(void*)0}}, // p_1498->g_997
        {0x30C359BBL,0x24L,-5L,252UL,0xFDF921DCL}, // p_1498->g_1025
        (void*)0, // p_1498->g_1051
        {0L,0L,0L,0L,0L}, // p_1498->g_1053
        {{0x0A3BL},{0x0A3BL}}, // p_1498->g_1055
        0UL, // p_1498->g_1141
        {0x2EF66628L,-1L,0L,0x77L,0xD05E2952L}, // p_1498->g_1176
        0x0444L, // p_1498->g_1183
        &p_1498->g_161, // p_1498->g_1230
        (void*)0, // p_1498->g_1242
        {0L,0x7BL,0L,0x46L,1UL}, // p_1498->g_1255
        {0x0A52BC60L,0x7BL,1L,255UL,0UL}, // p_1498->g_1274
        (-9L), // p_1498->g_1292
        &p_1498->g_1176, // p_1498->g_1306
        {4294967294UL,4294967294UL,4294967294UL,4294967294UL,4294967294UL,4294967294UL,4294967294UL,4294967294UL,4294967294UL,4294967294UL}, // p_1498->g_1342
        {{{&p_1498->g_580},{&p_1498->g_580},{&p_1498->g_580},{&p_1498->g_580},{&p_1498->g_580},{&p_1498->g_580},{&p_1498->g_580},{&p_1498->g_580},{&p_1498->g_580},{&p_1498->g_580}},{{&p_1498->g_580},{&p_1498->g_580},{&p_1498->g_580},{&p_1498->g_580},{&p_1498->g_580},{&p_1498->g_580},{&p_1498->g_580},{&p_1498->g_580},{&p_1498->g_580},{&p_1498->g_580}},{{&p_1498->g_580},{&p_1498->g_580},{&p_1498->g_580},{&p_1498->g_580},{&p_1498->g_580},{&p_1498->g_580},{&p_1498->g_580},{&p_1498->g_580},{&p_1498->g_580},{&p_1498->g_580}}}, // p_1498->g_1344
        &p_1498->g_1344[2][3][0], // p_1498->g_1343
        &p_1498->g_551, // p_1498->g_1346
        {{0x5B210ABAL,-6L,3L,0xC9L,4294967290UL}}, // p_1498->g_1347
        (void*)0, // p_1498->g_1348
        {-1L,1L,-4L,0UL,0x98353079L}, // p_1498->g_1444
        {0x004AC3C2L,0x64L,-4L,255UL,1UL}, // p_1498->g_1460
        0x2F2DL, // p_1498->g_1479
        {-10L,0x21L,-9L,7UL,4294967295UL}, // p_1498->g_1481
        {0x574FF392L,0x72L,0x7CA4C489E41AC4AFL,0x5AL,0xD6ED7275L}, // p_1498->g_1495
        {-7L,1L,0x40491697E926F15BL,0x75L,0xD309C651L}, // p_1498->g_1496
        sequence_input[get_global_id(0)], // p_1498->global_0_offset
        sequence_input[get_global_id(1)], // p_1498->global_1_offset
        sequence_input[get_global_id(2)], // p_1498->global_2_offset
        sequence_input[get_local_id(0)], // p_1498->local_0_offset
        sequence_input[get_local_id(1)], // p_1498->local_1_offset
        sequence_input[get_local_id(2)], // p_1498->local_2_offset
        sequence_input[get_group_id(0)], // p_1498->group_0_offset
        sequence_input[get_group_id(1)], // p_1498->group_1_offset
        sequence_input[get_group_id(2)], // p_1498->group_2_offset
    };
    c_1499 = c_1500;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1498);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1498->g_2, "p_1498->g_2", print_hash_value);
    transparent_crc(p_1498->g_7, "p_1498->g_7", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 6; j++)
        {
            transparent_crc(p_1498->g_8[i][j], "p_1498->g_8[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1498->g_9, "p_1498->g_9", print_hash_value);
    transparent_crc(p_1498->g_10, "p_1498->g_10", print_hash_value);
    transparent_crc(p_1498->g_11, "p_1498->g_11", print_hash_value);
    transparent_crc(p_1498->g_12, "p_1498->g_12", print_hash_value);
    transparent_crc(p_1498->g_13, "p_1498->g_13", print_hash_value);
    transparent_crc(p_1498->g_15, "p_1498->g_15", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1498->g_21[i], "p_1498->g_21[i]", print_hash_value);

    }
    transparent_crc(p_1498->g_36, "p_1498->g_36", print_hash_value);
    transparent_crc(p_1498->g_49, "p_1498->g_49", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1498->g_75[i], "p_1498->g_75[i]", print_hash_value);

    }
    transparent_crc(p_1498->g_90, "p_1498->g_90", print_hash_value);
    transparent_crc(p_1498->g_95, "p_1498->g_95", print_hash_value);
    transparent_crc(p_1498->g_114, "p_1498->g_114", print_hash_value);
    transparent_crc(p_1498->g_139, "p_1498->g_139", print_hash_value);
    transparent_crc(p_1498->g_142, "p_1498->g_142", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_1498->g_144[i], "p_1498->g_144[i]", print_hash_value);

    }
    transparent_crc(p_1498->g_159, "p_1498->g_159", print_hash_value);
    transparent_crc(p_1498->g_161, "p_1498->g_161", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_1498->g_167[i], "p_1498->g_167[i]", print_hash_value);

    }
    transparent_crc(p_1498->g_173, "p_1498->g_173", print_hash_value);
    transparent_crc(p_1498->g_214, "p_1498->g_214", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_1498->g_242[i], "p_1498->g_242[i]", print_hash_value);

    }
    transparent_crc(p_1498->g_262, "p_1498->g_262", print_hash_value);
    transparent_crc(p_1498->g_263, "p_1498->g_263", print_hash_value);
    transparent_crc(p_1498->g_267, "p_1498->g_267", print_hash_value);
    transparent_crc(p_1498->g_326, "p_1498->g_326", print_hash_value);
    transparent_crc(p_1498->g_412, "p_1498->g_412", print_hash_value);
    transparent_crc(p_1498->g_439, "p_1498->g_439", print_hash_value);
    transparent_crc(p_1498->g_584, "p_1498->g_584", print_hash_value);
    transparent_crc(p_1498->g_585, "p_1498->g_585", print_hash_value);
    transparent_crc(p_1498->g_631, "p_1498->g_631", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 1; j++)
        {
            transparent_crc(p_1498->g_632[i][j], "p_1498->g_632[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1498->g_650, "p_1498->g_650", print_hash_value);
    transparent_crc(p_1498->g_653, "p_1498->g_653", print_hash_value);
    transparent_crc(p_1498->g_654, "p_1498->g_654", print_hash_value);
    transparent_crc(p_1498->g_724, "p_1498->g_724", print_hash_value);
    transparent_crc(p_1498->g_730, "p_1498->g_730", print_hash_value);
    transparent_crc(p_1498->g_782, "p_1498->g_782", print_hash_value);
    transparent_crc(p_1498->g_837, "p_1498->g_837", print_hash_value);
    transparent_crc(p_1498->g_838, "p_1498->g_838", print_hash_value);
    transparent_crc(p_1498->g_910.f0, "p_1498->g_910.f0", print_hash_value);
    transparent_crc(p_1498->g_910.f1, "p_1498->g_910.f1", print_hash_value);
    transparent_crc(p_1498->g_910.f2, "p_1498->g_910.f2", print_hash_value);
    transparent_crc(p_1498->g_910.f3, "p_1498->g_910.f3", print_hash_value);
    transparent_crc(p_1498->g_910.f4, "p_1498->g_910.f4", print_hash_value);
    transparent_crc(p_1498->g_926.f0, "p_1498->g_926.f0", print_hash_value);
    transparent_crc(p_1498->g_926.f1, "p_1498->g_926.f1", print_hash_value);
    transparent_crc(p_1498->g_926.f2, "p_1498->g_926.f2", print_hash_value);
    transparent_crc(p_1498->g_926.f3, "p_1498->g_926.f3", print_hash_value);
    transparent_crc(p_1498->g_926.f4, "p_1498->g_926.f4", print_hash_value);
    transparent_crc(p_1498->g_935, "p_1498->g_935", print_hash_value);
    transparent_crc(p_1498->g_963.f0, "p_1498->g_963.f0", print_hash_value);
    transparent_crc(p_1498->g_963.f1, "p_1498->g_963.f1", print_hash_value);
    transparent_crc(p_1498->g_963.f2, "p_1498->g_963.f2", print_hash_value);
    transparent_crc(p_1498->g_963.f3, "p_1498->g_963.f3", print_hash_value);
    transparent_crc(p_1498->g_963.f4, "p_1498->g_963.f4", print_hash_value);
    transparent_crc(p_1498->g_1025.f0, "p_1498->g_1025.f0", print_hash_value);
    transparent_crc(p_1498->g_1025.f1, "p_1498->g_1025.f1", print_hash_value);
    transparent_crc(p_1498->g_1025.f2, "p_1498->g_1025.f2", print_hash_value);
    transparent_crc(p_1498->g_1025.f3, "p_1498->g_1025.f3", print_hash_value);
    transparent_crc(p_1498->g_1025.f4, "p_1498->g_1025.f4", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_1498->g_1053[i], "p_1498->g_1053[i]", print_hash_value);

    }
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 1; j++)
        {
            transparent_crc(p_1498->g_1055[i][j], "p_1498->g_1055[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1498->g_1141, "p_1498->g_1141", print_hash_value);
    transparent_crc(p_1498->g_1176.f0, "p_1498->g_1176.f0", print_hash_value);
    transparent_crc(p_1498->g_1176.f1, "p_1498->g_1176.f1", print_hash_value);
    transparent_crc(p_1498->g_1176.f2, "p_1498->g_1176.f2", print_hash_value);
    transparent_crc(p_1498->g_1176.f3, "p_1498->g_1176.f3", print_hash_value);
    transparent_crc(p_1498->g_1176.f4, "p_1498->g_1176.f4", print_hash_value);
    transparent_crc(p_1498->g_1183, "p_1498->g_1183", print_hash_value);
    transparent_crc(p_1498->g_1255.f0, "p_1498->g_1255.f0", print_hash_value);
    transparent_crc(p_1498->g_1255.f1, "p_1498->g_1255.f1", print_hash_value);
    transparent_crc(p_1498->g_1255.f2, "p_1498->g_1255.f2", print_hash_value);
    transparent_crc(p_1498->g_1255.f3, "p_1498->g_1255.f3", print_hash_value);
    transparent_crc(p_1498->g_1255.f4, "p_1498->g_1255.f4", print_hash_value);
    transparent_crc(p_1498->g_1274.f0, "p_1498->g_1274.f0", print_hash_value);
    transparent_crc(p_1498->g_1274.f1, "p_1498->g_1274.f1", print_hash_value);
    transparent_crc(p_1498->g_1274.f2, "p_1498->g_1274.f2", print_hash_value);
    transparent_crc(p_1498->g_1274.f3, "p_1498->g_1274.f3", print_hash_value);
    transparent_crc(p_1498->g_1274.f4, "p_1498->g_1274.f4", print_hash_value);
    transparent_crc(p_1498->g_1292, "p_1498->g_1292", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1498->g_1342[i], "p_1498->g_1342[i]", print_hash_value);

    }
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1498->g_1347[i].f0, "p_1498->g_1347[i].f0", print_hash_value);
        transparent_crc(p_1498->g_1347[i].f1, "p_1498->g_1347[i].f1", print_hash_value);
        transparent_crc(p_1498->g_1347[i].f2, "p_1498->g_1347[i].f2", print_hash_value);
        transparent_crc(p_1498->g_1347[i].f3, "p_1498->g_1347[i].f3", print_hash_value);
        transparent_crc(p_1498->g_1347[i].f4, "p_1498->g_1347[i].f4", print_hash_value);

    }
    transparent_crc(p_1498->g_1444.f0, "p_1498->g_1444.f0", print_hash_value);
    transparent_crc(p_1498->g_1444.f1, "p_1498->g_1444.f1", print_hash_value);
    transparent_crc(p_1498->g_1444.f2, "p_1498->g_1444.f2", print_hash_value);
    transparent_crc(p_1498->g_1444.f3, "p_1498->g_1444.f3", print_hash_value);
    transparent_crc(p_1498->g_1444.f4, "p_1498->g_1444.f4", print_hash_value);
    transparent_crc(p_1498->g_1460.f0, "p_1498->g_1460.f0", print_hash_value);
    transparent_crc(p_1498->g_1460.f1, "p_1498->g_1460.f1", print_hash_value);
    transparent_crc(p_1498->g_1460.f2, "p_1498->g_1460.f2", print_hash_value);
    transparent_crc(p_1498->g_1460.f3, "p_1498->g_1460.f3", print_hash_value);
    transparent_crc(p_1498->g_1460.f4, "p_1498->g_1460.f4", print_hash_value);
    transparent_crc(p_1498->g_1479, "p_1498->g_1479", print_hash_value);
    transparent_crc(p_1498->g_1481.f0, "p_1498->g_1481.f0", print_hash_value);
    transparent_crc(p_1498->g_1481.f1, "p_1498->g_1481.f1", print_hash_value);
    transparent_crc(p_1498->g_1481.f2, "p_1498->g_1481.f2", print_hash_value);
    transparent_crc(p_1498->g_1481.f3, "p_1498->g_1481.f3", print_hash_value);
    transparent_crc(p_1498->g_1481.f4, "p_1498->g_1481.f4", print_hash_value);
    transparent_crc(p_1498->g_1495.f0, "p_1498->g_1495.f0", print_hash_value);
    transparent_crc(p_1498->g_1495.f1, "p_1498->g_1495.f1", print_hash_value);
    transparent_crc(p_1498->g_1495.f2, "p_1498->g_1495.f2", print_hash_value);
    transparent_crc(p_1498->g_1495.f3, "p_1498->g_1495.f3", print_hash_value);
    transparent_crc(p_1498->g_1495.f4, "p_1498->g_1495.f4", print_hash_value);
    transparent_crc(p_1498->g_1496.f0, "p_1498->g_1496.f0", print_hash_value);
    transparent_crc(p_1498->g_1496.f1, "p_1498->g_1496.f1", print_hash_value);
    transparent_crc(p_1498->g_1496.f2, "p_1498->g_1496.f2", print_hash_value);
    transparent_crc(p_1498->g_1496.f3, "p_1498->g_1496.f3", print_hash_value);
    transparent_crc(p_1498->g_1496.f4, "p_1498->g_1496.f4", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
