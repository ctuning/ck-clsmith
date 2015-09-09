// --atomics 24 ---fake_divergence -g 23,40,6 -l 1,10,3
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


// Seed: 77

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    uint8_t g_4;
    uint16_t g_10;
    volatile uint8_t g_18;
    volatile uint8_t * volatile g_17;
    uint8_t g_25;
    uint8_t *g_24[9][9];
    int32_t g_76[5][5][7];
    uint8_t *g_136;
    uint32_t g_143;
    uint16_t g_145;
    uint32_t g_150[2][2][5];
    uint32_t g_212;
    uint64_t g_217;
    int8_t g_219;
    int64_t g_278[4];
    int32_t g_327;
    uint64_t g_365[9][6][2];
    uint64_t g_368;
    int32_t *g_371;
    uint32_t g_373[3];
    uint16_t g_389;
    volatile uint8_t ***g_395;
    uint8_t **g_448[10];
    uint8_t ***g_447;
    uint8_t ***g_450[2][7];
    int8_t g_504;
    int32_t g_568;
    uint16_t g_612[5];
    int16_t g_628[10];
    uint16_t g_630;
    int32_t g_646;
    uint32_t g_681[4];
    int64_t g_684;
    int32_t g_686;
    uint64_t g_698;
    volatile int64_t *g_719;
    volatile int64_t * volatile *g_718;
    volatile int32_t g_731;
    int16_t g_768;
    uint8_t g_795;
    int32_t * volatile g_827;
    int32_t * volatile g_837[2];
    int32_t * volatile g_838;
    int32_t ** volatile g_1081;
    int16_t **g_1099;
    int16_t ***g_1098;
    uint64_t g_1203;
    uint64_t *g_1275[7];
    uint64_t **g_1274;
    uint16_t g_1305;
    int8_t *g_1401;
    uint64_t g_1404;
    int8_t g_1431;
    int64_t *g_1488[5];
    int64_t **g_1487[5];
    int32_t * volatile g_1527;
    int32_t * volatile g_1528;
    int16_t g_1591;
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
    __global volatile uint32_t *g_atomic_input;
    __global volatile uint32_t *g_special_values;
};


/* --- FORWARD DECLARATIONS --- */
int32_t  func_1(struct S0 * p_1614);
uint32_t  func_6(uint64_t  p_7, uint16_t  p_8, uint8_t * p_9, struct S0 * p_1614);
int64_t  func_11(int8_t  p_12, int32_t  p_13, struct S0 * p_1614);
int64_t  func_14(uint8_t  p_15, uint8_t * p_16, struct S0 * p_1614);
uint8_t * func_19(uint64_t  p_20, uint8_t * p_21, struct S0 * p_1614);
uint8_t * func_22(uint8_t * p_23, struct S0 * p_1614);
uint8_t ** func_37(uint64_t  p_38, struct S0 * p_1614);
uint8_t  func_44(uint32_t  p_45, int64_t  p_46, uint32_t  p_47, struct S0 * p_1614);
uint32_t  func_49(uint32_t  p_50, int64_t  p_51, int32_t  p_52, struct S0 * p_1614);
int32_t  func_55(uint8_t ** p_56, struct S0 * p_1614);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1614->g_10 p_1614->g_17 p_1614->g_24 p_1614->g_25 p_1614->g_76 p_1614->g_150 p_1614->g_217 p_1614->g_278 p_1614->g_371 p_1614->g_373 p_1614->g_145 p_1614->g_395 p_1614->g_389 p_1614->g_368 p_1614->g_327 p_1614->g_219 p_1614->g_447 p_1614->g_365 p_1614->g_136 p_1614->g_448 p_1614->g_143 p_1614->g_212 p_1614->g_504 p_1614->g_612 p_1614->g_630 p_1614->g_646 p_1614->g_568 p_1614->g_18 p_1614->g_686 p_1614->g_684 p_1614->g_681 p_1614->g_731 p_1614->g_698 p_1614->g_838 p_1614->g_837 p_1614->g_768 p_1614->g_628 p_1614->g_795 p_1614->g_1203 p_1614->g_1274 p_1614->g_1305 p_1614->g_1275 p_1614->g_1404 p_1614->g_1401 p_1614->g_1431 p_1614->g_1487 p_1614->g_1528 p_1614->g_4
 * writes: p_1614->g_4 p_1614->g_25 p_1614->g_217 p_1614->g_365 p_1614->g_368 p_1614->g_371 p_1614->g_76 p_1614->g_145 p_1614->g_389 p_1614->g_327 p_1614->g_278 p_1614->g_212 p_1614->g_219 p_1614->g_450 p_1614->g_143 p_1614->g_448 p_1614->g_612 p_1614->g_630 p_1614->g_136 p_1614->g_646 p_1614->g_684 p_1614->g_686 p_1614->g_681 p_1614->g_768 p_1614->g_504 p_1614->g_24 p_1614->g_568 p_1614->g_698 p_1614->g_795 p_1614->g_1098 p_1614->g_150 p_1614->g_1203 p_1614->g_1305 p_1614->g_1274 p_1614->g_1401 p_1614->g_628 p_1614->g_1591 p_1614->g_1487
 */
int32_t  func_1(struct S0 * p_1614)
{ /* block id: 4 */
    int8_t l_2 = 0x42L;
    uint8_t *l_3 = &p_1614->g_4;
    int8_t l_5 = 0x6BL;
    uint8_t **l_634 = &p_1614->g_136;
    uint32_t *l_1529 = &p_1614->g_212;
    uint8_t *l_1589 = (void*)0;
    if ((((*l_3) = ((0xA1E94870L & l_2) > GROUP_DIVERGE(2, 1))) ^ (l_5 , (((*l_1529) = func_6(((p_1614->g_10 > ((+p_1614->g_10) , (func_11(l_5, (func_14(((((p_1614->g_17 != ((*l_634) = func_19(l_2, func_22(p_1614->g_24[3][1], p_1614), p_1614))) , 0x2FFCDBB9L) > l_2) <= p_1614->g_10), p_1614->g_24[3][1], p_1614) == 18446744073709551606UL), p_1614) , FAKE_DIVERGE(p_1614->global_2_offset, get_global_id(2), 10)))) <= 3UL), p_1614->g_10, l_3, p_1614)) , l_5))))
    { /* block id: 839 */
        uint64_t l_1588 = 18446744073709551610UL;
        uint8_t *l_1590[10] = {&p_1614->g_25,&p_1614->g_25,&p_1614->g_25,&p_1614->g_25,&p_1614->g_25,&p_1614->g_25,&p_1614->g_25,&p_1614->g_25,&p_1614->g_25,&p_1614->g_25};
        int i;
        for (p_1614->g_686 = 3; (p_1614->g_686 >= 1); p_1614->g_686 -= 1)
        { /* block id: 842 */
            int32_t *l_1530 = (void*)0;
            for (p_1614->g_684 = 0; (p_1614->g_684 <= 4); p_1614->g_684 += 1)
            { /* block id: 845 */
                int32_t *l_1531 = &p_1614->g_76[1][4][1];
                l_1531 = l_1530;
            }
            if ((atomic_inc(&p_1614->g_atomic_input[24 * get_linear_group_id() + 17]) == 3))
            { /* block id: 849 */
                int32_t l_1532 = (-4L);
                int32_t l_1574 = 0x72EC3023L;
                int32_t l_1575 = 0x76653035L;
                int8_t l_1576 = 0x48L;
                uint16_t l_1577 = 65535UL;
                int8_t l_1578 = 0x7BL;
                uint64_t l_1579 = 18446744073709551615UL;
                int8_t l_1580 = 1L;
                int16_t l_1581[4] = {(-10L),(-10L),(-10L),(-10L)};
                uint32_t l_1582 = 0x2919D5DEL;
                uint8_t l_1583 = 0xE7L;
                int32_t l_1584[10];
                int16_t l_1585 = 0x5349L;
                int32_t *l_1586 = &l_1532;
                int32_t *l_1587 = &l_1532;
                int i;
                for (i = 0; i < 10; i++)
                    l_1584[i] = 0L;
                for (l_1532 = 0; (l_1532 <= 4); l_1532 += 1)
                { /* block id: 852 */
                    int32_t l_1533 = 0x04717B9EL;
                    uint64_t l_1534[5][4][8] = {{{0x6211490865A1DC17L,0x9EB8D73BE2AAD49AL,0x66EFF7EAD5A93C5CL,0x10B5615B3DF2B36FL,0UL,18446744073709551613UL,0x9D2A8F4D57279C7AL,0x34450883F40323C0L},{0x6211490865A1DC17L,0x9EB8D73BE2AAD49AL,0x66EFF7EAD5A93C5CL,0x10B5615B3DF2B36FL,0UL,18446744073709551613UL,0x9D2A8F4D57279C7AL,0x34450883F40323C0L},{0x6211490865A1DC17L,0x9EB8D73BE2AAD49AL,0x66EFF7EAD5A93C5CL,0x10B5615B3DF2B36FL,0UL,18446744073709551613UL,0x9D2A8F4D57279C7AL,0x34450883F40323C0L},{0x6211490865A1DC17L,0x9EB8D73BE2AAD49AL,0x66EFF7EAD5A93C5CL,0x10B5615B3DF2B36FL,0UL,18446744073709551613UL,0x9D2A8F4D57279C7AL,0x34450883F40323C0L}},{{0x6211490865A1DC17L,0x9EB8D73BE2AAD49AL,0x66EFF7EAD5A93C5CL,0x10B5615B3DF2B36FL,0UL,18446744073709551613UL,0x9D2A8F4D57279C7AL,0x34450883F40323C0L},{0x6211490865A1DC17L,0x9EB8D73BE2AAD49AL,0x66EFF7EAD5A93C5CL,0x10B5615B3DF2B36FL,0UL,18446744073709551613UL,0x9D2A8F4D57279C7AL,0x34450883F40323C0L},{0x6211490865A1DC17L,0x9EB8D73BE2AAD49AL,0x66EFF7EAD5A93C5CL,0x10B5615B3DF2B36FL,0UL,18446744073709551613UL,0x9D2A8F4D57279C7AL,0x34450883F40323C0L},{0x6211490865A1DC17L,0x9EB8D73BE2AAD49AL,0x66EFF7EAD5A93C5CL,0x10B5615B3DF2B36FL,0UL,18446744073709551613UL,0x9D2A8F4D57279C7AL,0x34450883F40323C0L}},{{0x6211490865A1DC17L,0x9EB8D73BE2AAD49AL,0x66EFF7EAD5A93C5CL,0x10B5615B3DF2B36FL,0UL,18446744073709551613UL,0x9D2A8F4D57279C7AL,0x34450883F40323C0L},{0x6211490865A1DC17L,0x9EB8D73BE2AAD49AL,0x66EFF7EAD5A93C5CL,0x10B5615B3DF2B36FL,0UL,18446744073709551613UL,0x9D2A8F4D57279C7AL,0x34450883F40323C0L},{0x6211490865A1DC17L,0x9EB8D73BE2AAD49AL,0x66EFF7EAD5A93C5CL,0x10B5615B3DF2B36FL,0UL,18446744073709551613UL,0x9D2A8F4D57279C7AL,0x34450883F40323C0L},{0x6211490865A1DC17L,0x9EB8D73BE2AAD49AL,0x66EFF7EAD5A93C5CL,0x10B5615B3DF2B36FL,0UL,18446744073709551613UL,0x9D2A8F4D57279C7AL,0x34450883F40323C0L}},{{0x6211490865A1DC17L,0x9EB8D73BE2AAD49AL,0x66EFF7EAD5A93C5CL,0x10B5615B3DF2B36FL,0UL,18446744073709551613UL,0x9D2A8F4D57279C7AL,0x34450883F40323C0L},{0x6211490865A1DC17L,0x9EB8D73BE2AAD49AL,0x66EFF7EAD5A93C5CL,0x10B5615B3DF2B36FL,0UL,18446744073709551613UL,0x9D2A8F4D57279C7AL,0x34450883F40323C0L},{0x6211490865A1DC17L,0x9EB8D73BE2AAD49AL,0x66EFF7EAD5A93C5CL,0x10B5615B3DF2B36FL,0UL,18446744073709551613UL,0x9D2A8F4D57279C7AL,0x34450883F40323C0L},{0x6211490865A1DC17L,0x9EB8D73BE2AAD49AL,0x66EFF7EAD5A93C5CL,0x10B5615B3DF2B36FL,0UL,18446744073709551613UL,0x9D2A8F4D57279C7AL,0x34450883F40323C0L}},{{0x6211490865A1DC17L,0x9EB8D73BE2AAD49AL,0x66EFF7EAD5A93C5CL,0x10B5615B3DF2B36FL,0UL,18446744073709551613UL,0x9D2A8F4D57279C7AL,0x34450883F40323C0L},{0x6211490865A1DC17L,0x9EB8D73BE2AAD49AL,0x66EFF7EAD5A93C5CL,0x10B5615B3DF2B36FL,0UL,18446744073709551613UL,0x9D2A8F4D57279C7AL,0x34450883F40323C0L},{0x6211490865A1DC17L,0x9EB8D73BE2AAD49AL,0x66EFF7EAD5A93C5CL,0x10B5615B3DF2B36FL,0UL,18446744073709551613UL,0x9D2A8F4D57279C7AL,0x34450883F40323C0L},{0x6211490865A1DC17L,0x9EB8D73BE2AAD49AL,0x66EFF7EAD5A93C5CL,0x10B5615B3DF2B36FL,0UL,18446744073709551613UL,0x9D2A8F4D57279C7AL,0x34450883F40323C0L}}};
                    uint16_t l_1542 = 65535UL;
                    uint16_t l_1543 = 0x1274L;
                    uint64_t l_1544[7][7] = {{18446744073709551608UL,0x629EE4F71F52F3EBL,18446744073709551608UL,18446744073709551608UL,0x629EE4F71F52F3EBL,18446744073709551608UL,18446744073709551608UL},{18446744073709551608UL,0x629EE4F71F52F3EBL,18446744073709551608UL,18446744073709551608UL,0x629EE4F71F52F3EBL,18446744073709551608UL,18446744073709551608UL},{18446744073709551608UL,0x629EE4F71F52F3EBL,18446744073709551608UL,18446744073709551608UL,0x629EE4F71F52F3EBL,18446744073709551608UL,18446744073709551608UL},{18446744073709551608UL,0x629EE4F71F52F3EBL,18446744073709551608UL,18446744073709551608UL,0x629EE4F71F52F3EBL,18446744073709551608UL,18446744073709551608UL},{18446744073709551608UL,0x629EE4F71F52F3EBL,18446744073709551608UL,18446744073709551608UL,0x629EE4F71F52F3EBL,18446744073709551608UL,18446744073709551608UL},{18446744073709551608UL,0x629EE4F71F52F3EBL,18446744073709551608UL,18446744073709551608UL,0x629EE4F71F52F3EBL,18446744073709551608UL,18446744073709551608UL},{18446744073709551608UL,0x629EE4F71F52F3EBL,18446744073709551608UL,18446744073709551608UL,0x629EE4F71F52F3EBL,18446744073709551608UL,18446744073709551608UL}};
                    uint16_t l_1545 = 0x95B4L;
                    int32_t l_1547[8] = {0x67A79E66L,0x67A79E66L,0x67A79E66L,0x67A79E66L,0x67A79E66L,0x67A79E66L,0x67A79E66L,0x67A79E66L};
                    int32_t *l_1546[9][4] = {{&l_1547[6],(void*)0,&l_1547[4],(void*)0},{&l_1547[6],(void*)0,&l_1547[4],(void*)0},{&l_1547[6],(void*)0,&l_1547[4],(void*)0},{&l_1547[6],(void*)0,&l_1547[4],(void*)0},{&l_1547[6],(void*)0,&l_1547[4],(void*)0},{&l_1547[6],(void*)0,&l_1547[4],(void*)0},{&l_1547[6],(void*)0,&l_1547[4],(void*)0},{&l_1547[6],(void*)0,&l_1547[4],(void*)0},{&l_1547[6],(void*)0,&l_1547[4],(void*)0}};
                    int32_t *l_1548 = &l_1547[5];
                    int32_t *l_1549 = &l_1547[5];
                    int i, j, k;
                    if ((l_1534[4][0][7] = l_1533))
                    { /* block id: 854 */
                        int16_t l_1535 = 0x7943L;
                        uint32_t l_1536 = 4294967294UL;
                        int32_t l_1537[2][10] = {{0x019380D0L,1L,0L,1L,0x019380D0L,0x019380D0L,1L,0L,1L,0x019380D0L},{0x019380D0L,1L,0L,1L,0x019380D0L,0x019380D0L,1L,0L,1L,0x019380D0L}};
                        uint32_t l_1538 = 0xCD8F8216L;
                        int i, j;
                        l_1536 &= l_1535;
                        l_1538 &= l_1537[0][5];
                    }
                    else
                    { /* block id: 857 */
                        uint8_t l_1539 = 246UL;
                        uint32_t l_1540 = 0x95373906L;
                        int32_t *l_1541 = (void*)0;
                        l_1540 &= l_1539;
                        l_1541 = (void*)0;
                    }
                    l_1542 = 0x62428F98L;
                    l_1545 = (GROUP_DIVERGE(0, 1) , (l_1544[4][6] = l_1543));
                    l_1549 = (l_1548 = l_1546[2][0]);
                }
                for (l_1532 = 1; (l_1532 <= 4); l_1532 += 1)
                { /* block id: 869 */
                    int64_t l_1550 = 0x2FBBD752CD3659F7L;
                    uint64_t l_1551 = 18446744073709551608UL;
                    uint64_t l_1552 = 0x7DA1C8450C7D7F1FL;
                    l_1552 = (l_1550 , l_1551);
                    for (l_1552 = 0; (l_1552 <= 4); l_1552 += 1)
                    { /* block id: 873 */
                        uint32_t l_1553 = 0x9218C1BCL;
                        int64_t l_1556 = 0x7403E395387ACC0CL;
                        int8_t l_1557 = 0x57L;
                        int16_t l_1558 = 0x6563L;
                        int8_t l_1559 = (-7L);
                        int32_t l_1560 = 0x68BF46C8L;
                        int32_t l_1561[7] = {0x5F1AC73BL,0x5F1AC73BL,0x5F1AC73BL,0x5F1AC73BL,0x5F1AC73BL,0x5F1AC73BL,0x5F1AC73BL};
                        uint64_t l_1562 = 0x11D6427DEBBFAE78L;
                        uint32_t l_1565 = 0x291F6419L;
                        uint32_t l_1566 = 0xA6B59F27L;
                        int32_t l_1567 = 4L;
                        int32_t l_1568[2][5] = {{1L,1L,1L,1L,1L},{1L,1L,1L,1L,1L}};
                        int32_t l_1571 = 0x54FD8107L;
                        int32_t *l_1572 = &l_1561[3];
                        int32_t *l_1573 = (void*)0;
                        int i, j;
                        ++l_1553;
                        ++l_1562;
                        l_1565 |= 0x05A32F70L;
                        l_1573 = ((((((l_1567 = l_1566) , 0x748530CFL) , l_1568[0][1]) , (l_1551--)) , (l_1571 , 0x0F1CA33BL)) , l_1572);
                    }
                }
                l_1580 = ((l_1574 , (l_1577 = (l_1575 , l_1576))) , (l_1578 , l_1579));
                l_1587 = ((l_1585 = ((l_1582 = l_1581[2]) , ((l_1584[5] |= l_1583) , 0x70094C29L))) , (l_1586 = (void*)0));
                unsigned int result = 0;
                result += l_1532;
                result += l_1574;
                result += l_1575;
                result += l_1576;
                result += l_1577;
                result += l_1578;
                result += l_1579;
                result += l_1580;
                int l_1581_i0;
                for (l_1581_i0 = 0; l_1581_i0 < 4; l_1581_i0++) {
                    result += l_1581[l_1581_i0];
                }
                result += l_1582;
                result += l_1583;
                int l_1584_i0;
                for (l_1584_i0 = 0; l_1584_i0 < 10; l_1584_i0++) {
                    result += l_1584[l_1584_i0];
                }
                result += l_1585;
                atomic_add(&p_1614->g_special_values[24 * get_linear_group_id() + 17], result);
            }
            else
            { /* block id: 889 */
                (1 + 1);
            }
            p_1614->g_1591 = ((l_1588 , l_1590[7]) != l_1590[7]);
        }
    }
    else
    { /* block id: 894 */
        uint64_t l_1598 = 0UL;
        int64_t **l_1599 = (void*)0;
        int64_t ***l_1600 = (void*)0;
        int64_t ***l_1601 = &p_1614->g_1487[3];
        int32_t l_1610 = (-7L);
        int32_t l_1611 = 0x09BE5952L;
        volatile int64_t **l_1613 = &p_1614->g_719;
        volatile int64_t ***l_1612 = &l_1613;
        l_1611 = (l_1610 = ((((safe_sub_func_int8_t_s_s((safe_div_func_int64_t_s_s(((safe_add_func_uint8_t_u_u(0x41L, l_1598)) <= (((*l_1601) = l_1599) == ((safe_sub_func_int32_t_s_s((l_1598 != (safe_mul_func_int16_t_s_s(l_2, (-1L)))), (GROUP_DIVERGE(2, 1) , (safe_mul_func_uint8_t_u_u(254UL, ((((safe_add_func_uint8_t_u_u(0x43L, (p_1614->g_504 , l_2))) , l_5) & p_1614->g_1203) ^ p_1614->g_4)))))) , (void*)0))), (**p_1614->g_1274))), FAKE_DIVERGE(p_1614->group_1_offset, get_group_id(1), 10))) != l_2) != l_1598) == (-6L)));
        (*p_1614->g_1528) = (-6L);
        (*l_1612) = &p_1614->g_719;
    }
    return (*p_1614->g_838);
}


/* ------------------------------------------ */
/* 
 * reads : p_1614->g_371 p_1614->g_76 p_1614->g_143 p_1614->g_327 p_1614->g_628 p_1614->g_698 p_1614->g_630 p_1614->g_768 p_1614->g_365 p_1614->g_219 p_1614->g_646 p_1614->g_684 p_1614->g_212 p_1614->g_373 p_1614->g_686 p_1614->g_389 p_1614->g_368 p_1614->g_25 p_1614->g_795 p_1614->g_447 p_1614->g_1203 p_1614->g_681 p_1614->g_612 p_1614->g_1274 p_1614->g_150 p_1614->g_17 p_1614->g_18 p_1614->g_1305 p_1614->g_1275 p_1614->g_217 p_1614->g_504 p_1614->g_838 p_1614->g_1404 p_1614->g_278 p_1614->g_1401 p_1614->g_1431 p_1614->g_145 p_1614->g_1487 p_1614->g_1528
 * writes: p_1614->g_371 p_1614->g_76 p_1614->g_768 p_1614->g_1098 p_1614->g_612 p_1614->g_25 p_1614->g_368 p_1614->g_684 p_1614->g_278 p_1614->g_150 p_1614->g_698 p_1614->g_795 p_1614->g_448 p_1614->g_686 p_1614->g_1203 p_1614->g_389 p_1614->g_681 p_1614->g_212 p_1614->g_504 p_1614->g_1305 p_1614->g_646 p_1614->g_1274 p_1614->g_1401 p_1614->g_628
 */
uint32_t  func_6(uint64_t  p_7, uint16_t  p_8, uint8_t * p_9, struct S0 * p_1614)
{ /* block id: 658 */
    int32_t *l_1080 = &p_1614->g_76[0][1][2];
    int32_t **l_1082 = &p_1614->g_371;
    int64_t *l_1084 = &p_1614->g_684;
    int64_t **l_1083 = &l_1084;
    int16_t *l_1087[1][6] = {{&p_1614->g_768,&p_1614->g_768,&p_1614->g_768,&p_1614->g_768,&p_1614->g_768,&p_1614->g_768}};
    int8_t l_1094 = 0L;
    int16_t **l_1096 = &l_1087[0][1];
    int16_t ***l_1095 = &l_1096;
    int16_t ****l_1097 = (void*)0;
    uint16_t *l_1100 = &p_1614->g_612[0];
    uint8_t *l_1134 = (void*)0;
    int32_t l_1166[9][10] = {{0x37797232L,0x6D120D6DL,0L,0x627D914DL,0L,0x6D120D6DL,0x37797232L,5L,1L,0x038E8F67L},{0x37797232L,0x6D120D6DL,0L,0x627D914DL,0L,0x6D120D6DL,0x37797232L,5L,1L,0x038E8F67L},{0x37797232L,0x6D120D6DL,0L,0x627D914DL,0L,0x6D120D6DL,0x37797232L,5L,1L,0x038E8F67L},{0x37797232L,0x6D120D6DL,0L,0x627D914DL,0L,0x6D120D6DL,0x37797232L,5L,1L,0x038E8F67L},{0x37797232L,0x6D120D6DL,0L,0x627D914DL,0L,0x6D120D6DL,0x37797232L,5L,1L,0x038E8F67L},{0x37797232L,0x6D120D6DL,0L,0x627D914DL,0L,0x6D120D6DL,0x37797232L,5L,1L,0x038E8F67L},{0x37797232L,0x6D120D6DL,0L,0x627D914DL,0L,0x6D120D6DL,0x37797232L,5L,1L,0x038E8F67L},{0x37797232L,0x6D120D6DL,0L,0x627D914DL,0L,0x6D120D6DL,0x37797232L,5L,1L,0x038E8F67L},{0x37797232L,0x6D120D6DL,0L,0x627D914DL,0L,0x6D120D6DL,0x37797232L,5L,1L,0x038E8F67L}};
    uint64_t l_1329 = 0x6BFD9A305B08D2D4L;
    int16_t l_1367 = 0x317BL;
    uint64_t l_1398 = 0x511832B24A1FBA5DL;
    int64_t l_1403 = 3L;
    int8_t **l_1427[3];
    int16_t l_1429 = 0x21B2L;
    int8_t l_1455 = 0x2AL;
    int32_t l_1473 = 0L;
    uint32_t l_1476 = 0x7056FE74L;
    uint16_t l_1509 = 0x9C0FL;
    int i, j;
    for (i = 0; i < 3; i++)
        l_1427[i] = &p_1614->g_1401;
    (*l_1082) = l_1080;
    if (((l_1083 != &p_1614->g_719) && ((((**l_1082) = (**l_1082)) != (safe_add_func_int64_t_s_s(1L, p_8))) , ((p_1614->g_768 = (**l_1082)) >= ((*l_1100) = ((p_1614->g_1098 = ((((safe_mul_func_int8_t_s_s((safe_lshift_func_uint8_t_u_s((!(*l_1080)), 1)), ((GROUP_DIVERGE(2, 1) | ((safe_div_func_int16_t_s_s((p_1614->g_143 , ((((*l_1080) <= (-1L)) > (**l_1082)) | (*l_1080))), p_8)) != l_1094)) | 1L))) >= p_7) || GROUP_DIVERGE(1, 1)) , l_1095)) == &p_1614->g_1099))))))
    { /* block id: 664 */
        uint8_t *l_1103 = &p_1614->g_25;
        int32_t l_1110 = 1L;
        uint64_t *l_1122 = &p_1614->g_368;
        int16_t *l_1142[10] = {&p_1614->g_628[2],&p_1614->g_628[2],&p_1614->g_628[2],&p_1614->g_628[2],&p_1614->g_628[2],&p_1614->g_628[2],&p_1614->g_628[2],&p_1614->g_628[2],&p_1614->g_628[2],&p_1614->g_628[2]};
        int32_t l_1146 = 0x1E85E49CL;
        int8_t l_1165 = 1L;
        int16_t l_1184 = 0x422EL;
        uint16_t l_1189 = 0x359EL;
        int32_t *l_1216 = &l_1110;
        int16_t l_1239[9][4][5] = {{{0x3133L,0x111DL,0x2D59L,0L,0x5DA0L},{0x3133L,0x111DL,0x2D59L,0L,0x5DA0L},{0x3133L,0x111DL,0x2D59L,0L,0x5DA0L},{0x3133L,0x111DL,0x2D59L,0L,0x5DA0L}},{{0x3133L,0x111DL,0x2D59L,0L,0x5DA0L},{0x3133L,0x111DL,0x2D59L,0L,0x5DA0L},{0x3133L,0x111DL,0x2D59L,0L,0x5DA0L},{0x3133L,0x111DL,0x2D59L,0L,0x5DA0L}},{{0x3133L,0x111DL,0x2D59L,0L,0x5DA0L},{0x3133L,0x111DL,0x2D59L,0L,0x5DA0L},{0x3133L,0x111DL,0x2D59L,0L,0x5DA0L},{0x3133L,0x111DL,0x2D59L,0L,0x5DA0L}},{{0x3133L,0x111DL,0x2D59L,0L,0x5DA0L},{0x3133L,0x111DL,0x2D59L,0L,0x5DA0L},{0x3133L,0x111DL,0x2D59L,0L,0x5DA0L},{0x3133L,0x111DL,0x2D59L,0L,0x5DA0L}},{{0x3133L,0x111DL,0x2D59L,0L,0x5DA0L},{0x3133L,0x111DL,0x2D59L,0L,0x5DA0L},{0x3133L,0x111DL,0x2D59L,0L,0x5DA0L},{0x3133L,0x111DL,0x2D59L,0L,0x5DA0L}},{{0x3133L,0x111DL,0x2D59L,0L,0x5DA0L},{0x3133L,0x111DL,0x2D59L,0L,0x5DA0L},{0x3133L,0x111DL,0x2D59L,0L,0x5DA0L},{0x3133L,0x111DL,0x2D59L,0L,0x5DA0L}},{{0x3133L,0x111DL,0x2D59L,0L,0x5DA0L},{0x3133L,0x111DL,0x2D59L,0L,0x5DA0L},{0x3133L,0x111DL,0x2D59L,0L,0x5DA0L},{0x3133L,0x111DL,0x2D59L,0L,0x5DA0L}},{{0x3133L,0x111DL,0x2D59L,0L,0x5DA0L},{0x3133L,0x111DL,0x2D59L,0L,0x5DA0L},{0x3133L,0x111DL,0x2D59L,0L,0x5DA0L},{0x3133L,0x111DL,0x2D59L,0L,0x5DA0L}},{{0x3133L,0x111DL,0x2D59L,0L,0x5DA0L},{0x3133L,0x111DL,0x2D59L,0L,0x5DA0L},{0x3133L,0x111DL,0x2D59L,0L,0x5DA0L},{0x3133L,0x111DL,0x2D59L,0L,0x5DA0L}}};
        uint64_t l_1282 = 0UL;
        uint64_t l_1295 = 9UL;
        int32_t l_1302 = (-4L);
        int32_t l_1303 = (-8L);
        int32_t l_1304 = 0x65B4BF01L;
        int32_t l_1327 = 0L;
        int32_t l_1328[4][4] = {{1L,1L,0x43CAE30DL,0L},{1L,1L,0x43CAE30DL,0L},{1L,1L,0x43CAE30DL,0L},{1L,1L,0x43CAE30DL,0L}};
        int64_t ***l_1340 = &l_1083;
        uint16_t l_1373 = 0x4514L;
        uint8_t l_1456 = 1UL;
        int32_t l_1472[10] = {0x1A664BF1L,1L,0L,1L,0x1A664BF1L,0x1A664BF1L,1L,0L,1L,0x1A664BF1L};
        int32_t l_1475[7];
        int32_t *l_1497 = &p_1614->g_646;
        int32_t *l_1498 = &l_1304;
        int32_t *l_1499 = &l_1302;
        int32_t *l_1500 = &l_1166[0][6];
        int32_t *l_1501 = &l_1328[0][3];
        int32_t *l_1502 = &l_1110;
        int32_t *l_1503 = (void*)0;
        int32_t *l_1504 = &p_1614->g_686;
        int32_t *l_1505 = &l_1475[3];
        int32_t *l_1506 = &l_1303;
        int32_t *l_1507 = &p_1614->g_686;
        int32_t *l_1508[7][4] = {{&l_1328[3][3],&l_1328[3][3],&p_1614->g_646,&l_1166[7][5]},{&l_1328[3][3],&l_1328[3][3],&p_1614->g_646,&l_1166[7][5]},{&l_1328[3][3],&l_1328[3][3],&p_1614->g_646,&l_1166[7][5]},{&l_1328[3][3],&l_1328[3][3],&p_1614->g_646,&l_1166[7][5]},{&l_1328[3][3],&l_1328[3][3],&p_1614->g_646,&l_1166[7][5]},{&l_1328[3][3],&l_1328[3][3],&p_1614->g_646,&l_1166[7][5]},{&l_1328[3][3],&l_1328[3][3],&p_1614->g_646,&l_1166[7][5]}};
        int i, j, k;
        for (i = 0; i < 7; i++)
            l_1475[i] = 0x6E065CAAL;
        if ((((safe_lshift_func_uint8_t_u_s(((*l_1103) = 0xBAL), ((*l_1080) & (safe_lshift_func_int8_t_s_s((2UL == (l_1110 = (safe_add_func_uint32_t_u_u((~((safe_mul_func_int8_t_s_s(l_1110, (((p_8 || (safe_rshift_func_int8_t_s_s(((((**l_1083) = (safe_sub_func_int64_t_s_s((safe_rshift_func_uint16_t_u_u((safe_mod_func_uint8_t_u_u((safe_mul_func_uint16_t_u_u((safe_unary_minus_func_uint64_t_u(((*l_1122) = p_1614->g_327))), ((p_7 && p_1614->g_628[9]) || (((p_7 >= l_1110) <= p_7) > p_1614->g_698)))), l_1110)), p_7)), p_1614->g_630))) > p_7) != p_1614->g_768), 7))) , 0xE4515E2FA49FDF76L) ^ p_1614->g_365[0][5][1]))) , GROUP_DIVERGE(2, 1))), l_1110)))), 7))))) || 0xCCACA8294731069EL) != 1L))
        { /* block id: 669 */
            int32_t l_1131 = (-1L);
            int16_t *l_1141[10] = {&p_1614->g_628[4],(void*)0,&p_1614->g_628[4],&p_1614->g_628[4],(void*)0,&p_1614->g_628[4],&p_1614->g_628[4],(void*)0,&p_1614->g_628[4],&p_1614->g_628[4]};
            int64_t *l_1143 = &p_1614->g_278[0];
            uint32_t *l_1144 = &p_1614->g_150[1][0][2];
            uint32_t *l_1145 = (void*)0;
            int32_t l_1178 = 1L;
            int32_t l_1182 = 1L;
            int32_t l_1183 = 0x3D47ABC7L;
            int32_t l_1185 = (-1L);
            int32_t l_1186 = 0x4F278A08L;
            int32_t l_1187 = 0x490800A7L;
            int32_t l_1188 = (-1L);
            int16_t l_1277[7][6] = {{0L,0L,0x4F35L,0x5ADDL,0x17B2L,0x5ADDL},{0L,0L,0x4F35L,0x5ADDL,0x17B2L,0x5ADDL},{0L,0L,0x4F35L,0x5ADDL,0x17B2L,0x5ADDL},{0L,0L,0x4F35L,0x5ADDL,0x17B2L,0x5ADDL},{0L,0L,0x4F35L,0x5ADDL,0x17B2L,0x5ADDL},{0L,0L,0x4F35L,0x5ADDL,0x17B2L,0x5ADDL},{0L,0L,0x4F35L,0x5ADDL,0x17B2L,0x5ADDL}};
            uint64_t l_1279 = 0x906887D9D790F8FDL;
            int32_t l_1321 = (-1L);
            int i, j;
            if (((((**l_1082) &= (safe_div_func_uint16_t_u_u((safe_div_func_uint8_t_u_u(FAKE_DIVERGE(p_1614->group_2_offset, get_group_id(2), 10), (p_1614->g_219 || (l_1146 ^= (((safe_div_func_uint32_t_u_u(p_1614->g_646, (safe_add_func_int64_t_s_s(((**l_1083) &= l_1131), (safe_div_func_int8_t_s_s(((p_9 = l_1134) == (void*)0), (safe_mul_func_uint8_t_u_u((((*l_1144) = ((l_1110 , (+(safe_mul_func_int8_t_s_s((p_7 , ((!((safe_sub_func_uint64_t_u_u(p_1614->g_212, ((((+((((*l_1143) = (((((*l_1096) = l_1141[5]) != l_1142[2]) && p_1614->g_373[1]) < p_7)) == 18446744073709551607UL) < p_7)) | p_1614->g_686) || 1UL) > 1L))) ^ l_1110)) | p_8)), p_7)))) ^ p_7)) , l_1131), p_8)))))))) < p_8) || l_1131))))), 6L))) < 0x7DF3L) > 0x6A7AC566925B385FL))
            { /* block id: 677 */
                int64_t l_1157 = 0x74F986B0038E27BDL;
                int32_t l_1168 = 0L;
                int32_t l_1177 = 0x012E52FDL;
                int32_t l_1180[6] = {0x6DA3C36BL,0x6DA3C36BL,0x6DA3C36BL,0x6DA3C36BL,0x6DA3C36BL,0x6DA3C36BL};
                int i;
                for (p_1614->g_698 = (-19); (p_1614->g_698 <= 28); p_1614->g_698 = safe_add_func_uint8_t_u_u(p_1614->g_698, 7))
                { /* block id: 680 */
                    int32_t l_1153[2];
                    uint8_t *l_1154 = &p_1614->g_795;
                    int32_t l_1164 = (-9L);
                    int32_t *l_1167 = &l_1110;
                    int32_t *l_1169 = &l_1131;
                    int32_t *l_1170 = &l_1168;
                    int32_t *l_1171 = &l_1166[2][6];
                    int32_t *l_1172 = &p_1614->g_327;
                    int32_t *l_1173 = &l_1166[0][8];
                    int32_t *l_1174 = &l_1166[2][4];
                    int32_t *l_1175 = &p_1614->g_327;
                    int32_t *l_1176 = &l_1166[0][6];
                    int32_t *l_1179 = (void*)0;
                    int32_t *l_1181[8][7] = {{&l_1146,&l_1178,&l_1180[1],&p_1614->g_76[0][3][1],(void*)0,&p_1614->g_76[0][3][1],&l_1180[1]},{&l_1146,&l_1178,&l_1180[1],&p_1614->g_76[0][3][1],(void*)0,&p_1614->g_76[0][3][1],&l_1180[1]},{&l_1146,&l_1178,&l_1180[1],&p_1614->g_76[0][3][1],(void*)0,&p_1614->g_76[0][3][1],&l_1180[1]},{&l_1146,&l_1178,&l_1180[1],&p_1614->g_76[0][3][1],(void*)0,&p_1614->g_76[0][3][1],&l_1180[1]},{&l_1146,&l_1178,&l_1180[1],&p_1614->g_76[0][3][1],(void*)0,&p_1614->g_76[0][3][1],&l_1180[1]},{&l_1146,&l_1178,&l_1180[1],&p_1614->g_76[0][3][1],(void*)0,&p_1614->g_76[0][3][1],&l_1180[1]},{&l_1146,&l_1178,&l_1180[1],&p_1614->g_76[0][3][1],(void*)0,&p_1614->g_76[0][3][1],&l_1180[1]},{&l_1146,&l_1178,&l_1180[1],&p_1614->g_76[0][3][1],(void*)0,&p_1614->g_76[0][3][1],&l_1180[1]}};
                    int i, j;
                    for (i = 0; i < 2; i++)
                        l_1153[i] = 1L;
                    (*l_1080) |= (safe_mod_func_int16_t_s_s(l_1146, (l_1165 = ((p_1614->g_389 <= (p_1614->g_368 , ((((l_1153[0] = (++(*l_1103))) ^ (++(*l_1154))) < 0x0CA3D0C9L) == (l_1157 >= (0x6F5DD417L >= ((((safe_lshift_func_int16_t_s_u((safe_div_func_int8_t_s_s((FAKE_DIVERGE(p_1614->local_0_offset, get_local_id(0), 10) == (safe_mod_func_uint16_t_u_u(l_1146, (8UL ^ (((*p_1614->g_447) = (void*)0) == &l_1154))))), l_1131)), 6)) >= l_1164) , l_1146) , l_1131)))))) || p_8))));
                    --l_1189;
                    (*l_1082) = &l_1110;
                }
                l_1168 = l_1183;
                for (p_1614->g_686 = 0; (p_1614->g_686 <= 22); ++p_1614->g_686)
                { /* block id: 693 */
                    int32_t *l_1194 = &l_1131;
                    int32_t *l_1195 = &p_1614->g_646;
                    int32_t *l_1196 = &l_1177;
                    int32_t *l_1197 = (void*)0;
                    int32_t *l_1198 = &l_1166[0][6];
                    int32_t *l_1199 = &l_1168;
                    int32_t *l_1200 = &p_1614->g_76[0][1][2];
                    int32_t *l_1201 = &l_1183;
                    int32_t *l_1202 = &l_1166[5][6];
                    uint32_t l_1209[10][8] = {{4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL},{4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL},{4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL},{4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL},{4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL},{4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL},{4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL},{4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL},{4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL},{4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL}};
                    int i, j;
                    ++p_1614->g_1203;
                    for (p_1614->g_1203 = (-29); (p_1614->g_1203 > 50); ++p_1614->g_1203)
                    { /* block id: 697 */
                        int32_t *l_1208[3];
                        uint8_t l_1212 = 249UL;
                        int i;
                        for (i = 0; i < 3; i++)
                            l_1208[i] = (void*)0;
                        ++l_1209[4][2];
                        l_1212++;
                    }
                }
                (**l_1082) ^= p_8;
            }
            else
            { /* block id: 703 */
                int32_t *l_1215 = &l_1186;
                int8_t *l_1231 = (void*)0;
                int8_t **l_1230 = &l_1231;
                int32_t l_1238[3];
                int64_t **l_1254 = &l_1084;
                int i;
                for (i = 0; i < 3; i++)
                    l_1238[i] = 0x6D93BEC2L;
                l_1216 = l_1215;
                (*l_1082) = (void*)0;
                if ((safe_rshift_func_int8_t_s_u((safe_lshift_func_uint16_t_u_u((*l_1216), 1)), (safe_lshift_func_int8_t_s_s((p_1614->g_368 > (GROUP_DIVERGE(0, 1) , ((((((((safe_sub_func_int16_t_s_s((safe_lshift_func_int8_t_s_u((safe_unary_minus_func_int8_t_s((0L >= (safe_lshift_func_int8_t_s_u((((*l_1230) = p_9) != (void*)0), 6))))), 2)), ((((safe_lshift_func_uint8_t_u_u(l_1178, l_1188)) ^ (safe_add_func_uint64_t_u_u(p_1614->g_630, (safe_mul_func_int16_t_s_s(((+l_1238[1]) ^ p_8), (-1L)))))) , (void*)0) == (void*)0))) || p_8) | (-5L)) | l_1239[6][1][0]) <= 18446744073709551612UL) < (*l_1080)) , p_7) != p_8))), p_1614->g_1203)))))
                { /* block id: 707 */
                    for (p_1614->g_389 = 0; (p_1614->g_389 > 41); ++p_1614->g_389)
                    { /* block id: 710 */
                        (*l_1082) = l_1215;
                        (*l_1080) = l_1187;
                        if ((*l_1215))
                            break;
                    }
                }
                else
                { /* block id: 715 */
                    uint32_t *l_1258 = &p_1614->g_681[2];
                    uint32_t *l_1261[6] = {&p_1614->g_212,&p_1614->g_212,&p_1614->g_212,&p_1614->g_212,&p_1614->g_212,&p_1614->g_212};
                    int8_t *l_1276 = &l_1165;
                    int8_t *l_1278[3][3][1] = {{{&l_1094},{&l_1094},{&l_1094}},{{&l_1094},{&l_1094},{&l_1094}},{{&l_1094},{&l_1094},{&l_1094}}};
                    int32_t l_1280[2];
                    int32_t *l_1281 = &l_1131;
                    int i, j, k;
                    for (i = 0; i < 2; i++)
                        l_1280[i] = 0x37B8D666L;
                    for (p_1614->g_686 = 0; (p_1614->g_686 <= 3); p_1614->g_686 += 1)
                    { /* block id: 718 */
                        int i;
                        (*l_1215) = p_1614->g_681[p_1614->g_686];
                    }
                    (*l_1281) |= (safe_mul_func_int16_t_s_s((safe_add_func_uint16_t_u_u((((((*l_1103) |= ((*l_1215) < ((**l_1254) |= ((p_1614->g_504 = ((safe_sub_func_int64_t_s_s(((((*l_1276) = (((((safe_div_func_uint32_t_u_u((((safe_div_func_uint32_t_u_u((((safe_lshift_func_uint8_t_u_u((l_1254 != &p_1614->g_719), 0)) != ((p_1614->g_628[5] < 0L) | (safe_div_func_int32_t_s_s(((((safe_unary_minus_func_uint8_t_u(GROUP_DIVERGE(1, 1))) , ((!((((((*l_1258)--) & (((p_1614->g_212 = 4294967286UL) && (safe_sub_func_uint64_t_u_u(((((safe_lshift_func_uint16_t_u_s(((*l_1100)--), 11)) | (safe_mod_func_uint8_t_u_u((safe_add_func_uint32_t_u_u(0x32A723A0L, ((((safe_div_func_uint8_t_u_u((p_8 <= ((!(p_7 , p_1614->g_76[2][3][6])) | GROUP_DIVERGE(1, 1))), 0x5CL)) >= l_1188) , p_1614->g_1274) == (void*)0))), l_1186))) <= 1UL) <= (*l_1216)), 18446744073709551612UL))) | (*l_1216))) > p_1614->g_365[3][2][1]) | (*l_1216)) >= l_1182)) | 0x3233C2DAL)) != p_7) , 0x5A9D7BB4L), p_8)))) != p_1614->g_143), 8L)) && 0UL) , p_1614->g_150[1][0][0]), p_8)) , (void*)0) == &p_1614->g_837[0]) | p_1614->g_630) & GROUP_DIVERGE(1, 1))) | 0x40L) , p_7), p_8)) > l_1277[2][1])) , (*l_1216))))) ^ FAKE_DIVERGE(p_1614->group_2_offset, get_group_id(2), 10)) != (*l_1080)) , l_1279), p_8)), l_1280[1]));
                    return l_1282;
                }
            }
            for (l_1183 = 6; (l_1183 >= 5); l_1183 = safe_sub_func_int64_t_s_s(l_1183, 1))
            { /* block id: 734 */
                uint16_t l_1285[4][1][3] = {{{0x560EL,0x560EL,0x560EL}},{{0x560EL,0x560EL,0x560EL}},{{0x560EL,0x560EL,0x560EL}},{{0x560EL,0x560EL,0x560EL}}};
                int i, j, k;
                l_1285[0][0][1] &= (p_8 == (*l_1216));
            }
            if ((p_7 , (&p_1614->g_681[2] == l_1216)))
            { /* block id: 737 */
                uint8_t l_1294 = 0xB5L;
                int32_t *l_1296 = &p_1614->g_646;
                int32_t *l_1297 = &l_1185;
                int32_t *l_1298 = &l_1187;
                int32_t *l_1299 = &l_1187;
                int32_t *l_1300 = (void*)0;
                int32_t *l_1301[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                int i;
                l_1295 &= ((((&p_1614->g_371 != ((((p_1614->g_628[9] || (((safe_lshift_func_int16_t_s_u(0x00A4L, 8)) & ((((*l_1216) , ((*l_1216) = (((((*l_1103) = (p_8 || ((safe_sub_func_int8_t_s_s((safe_mul_func_int16_t_s_s(((safe_add_func_uint32_t_u_u(4294967291UL, (l_1294 &= ((p_1614->g_368 , 0x898F1F5FL) , p_8)))) ^ p_7), p_7)), 0x43L)) && 0x653AL))) <= 4L) , l_1294) == 0x53765E2202C6769EL))) , l_1187) ^ p_7)) , p_8)) | 0L) > 0x6EF6E01BB5231082L) , &l_1080)) < (*p_1614->g_17)) , l_1188) && l_1277[2][1]);
                p_1614->g_1305++;
                if ((safe_lshift_func_int16_t_s_s((safe_mul_func_int16_t_s_s((p_7 <= 0L), p_1614->g_698)), 6)))
                { /* block id: 743 */
                    uint32_t l_1314 = 0x69328933L;
                    (*l_1216) = ((**p_1614->g_1274) != (safe_div_func_uint64_t_u_u(p_7, (*l_1298))));
                    return l_1314;
                }
                else
                { /* block id: 746 */
                    int64_t l_1320 = (-9L);
                    for (p_1614->g_646 = 24; (p_1614->g_646 >= (-19)); p_1614->g_646--)
                    { /* block id: 749 */
                        int32_t **l_1319[4] = {&l_1301[3],&l_1301[3],&l_1301[3],&l_1301[3]};
                        int i;
                        (*l_1298) = ((((((safe_div_func_int8_t_s_s((((void*)0 == l_1319[3]) && (*l_1298)), 0x4FL)) <= l_1320) >= (*l_1299)) & (p_1614->g_76[2][3][2] > p_1614->g_373[2])) < p_1614->g_25) ^ l_1321);
                    }
                }
                for (l_1279 = (-24); (l_1279 == 25); ++l_1279)
                { /* block id: 755 */
                    return (*l_1080);
                }
            }
            else
            { /* block id: 758 */
                for (l_1146 = 0; (l_1146 != (-23)); l_1146--)
                { /* block id: 761 */
                    (*l_1080) = 0x6E2036ECL;
                }
            }
        }
        else
        { /* block id: 765 */
            int32_t *l_1326[7][4] = {{&l_1146,&p_1614->g_76[0][1][2],&l_1303,&p_1614->g_76[0][1][2]},{&l_1146,&p_1614->g_76[0][1][2],&l_1303,&p_1614->g_76[0][1][2]},{&l_1146,&p_1614->g_76[0][1][2],&l_1303,&p_1614->g_76[0][1][2]},{&l_1146,&p_1614->g_76[0][1][2],&l_1303,&p_1614->g_76[0][1][2]},{&l_1146,&p_1614->g_76[0][1][2],&l_1303,&p_1614->g_76[0][1][2]},{&l_1146,&p_1614->g_76[0][1][2],&l_1303,&p_1614->g_76[0][1][2]},{&l_1146,&p_1614->g_76[0][1][2],&l_1303,&p_1614->g_76[0][1][2]}};
            int32_t l_1337 = (-1L);
            uint64_t ***l_1345 = (void*)0;
            int64_t l_1346 = 0x2ADBD252B38E0413L;
            int64_t *l_1357 = (void*)0;
            int8_t *l_1358 = &p_1614->g_504;
            int i, j;
            --l_1329;
            (*l_1216) = ((safe_add_func_uint8_t_u_u(p_8, ((safe_unary_minus_func_int32_t_s((p_8 & (safe_mod_func_uint32_t_u_u(((p_1614->g_365[0][5][1] == ((*l_1216) & (**p_1614->g_1274))) , l_1337), ((+((void*)0 != l_1340)) | (0x51L > (*p_1614->g_17)))))))) != p_1614->g_504))) | p_1614->g_219);
            l_1327 |= (safe_mul_func_int16_t_s_s((safe_sub_func_int16_t_s_s((((*l_1216) && ((0x7CA69D31D6ABB8ABL >= ((p_1614->g_1274 = (GROUP_DIVERGE(1, 1) , &p_1614->g_1275[5])) == (void*)0)) , ((p_8 > ((((l_1346 , p_7) || (((safe_add_func_int8_t_s_s((safe_sub_func_uint32_t_u_u(0x441FB8C3L, ((-7L) || p_8))), 9UL)) , p_7) || (**l_1082))) >= p_1614->g_628[9]) , 0UL)) != 65530UL))) | 0xAA2AE06DL), (*l_1216))), 0x01A8L));
            (*l_1216) = ((~((safe_rshift_func_uint16_t_u_u(((*l_1100) = (safe_rshift_func_uint8_t_u_s((p_8 & ((((*l_1080) = (safe_lshift_func_int16_t_s_u((((*l_1080) != 0x31L) > (p_1614->g_628[2] > ((void*)0 != &p_7))), 8))) , (((void*)0 != &p_1614->g_698) || ((*l_1358) |= ((void*)0 == &p_1614->g_719)))) , p_8)), p_1614->g_612[3]))), 13)) < (-1L))) , (*l_1080));
        }
        if (((safe_mod_func_uint16_t_u_u((1L == (p_8 ^ ((*l_1080) = ((4294967295UL != ((safe_mul_func_uint8_t_u_u((((((((((0x298DL <= ((p_7 > ((*l_1103) = (~(p_1614->g_150[1][1][2] , (safe_add_func_uint8_t_u_u(p_7, (-2L))))))) | ((safe_lshift_func_int16_t_s_u(((*p_1614->g_838) & 0x92B97679L), 14)) == (-8L)))) | (*l_1080)) | l_1367) >= p_7) & p_7) > 0x3EL) <= p_7) , p_7) | p_7), 0xD1L)) && p_8)) ^ p_7)))), 8UL)) & p_7))
        { /* block id: 777 */
            int8_t l_1371 = 0x0DL;
            int32_t *l_1372[3];
            int16_t ****l_1430 = &l_1095;
            uint64_t *l_1444 = &p_1614->g_698;
            int64_t l_1457[9][8] = {{(-1L),(-2L),0x147F4C9DA2E9AA58L,0x5D2C8EA0B04F07EDL,(-3L),0x2F17980A009BDB40L,(-1L),0L},{(-1L),(-2L),0x147F4C9DA2E9AA58L,0x5D2C8EA0B04F07EDL,(-3L),0x2F17980A009BDB40L,(-1L),0L},{(-1L),(-2L),0x147F4C9DA2E9AA58L,0x5D2C8EA0B04F07EDL,(-3L),0x2F17980A009BDB40L,(-1L),0L},{(-1L),(-2L),0x147F4C9DA2E9AA58L,0x5D2C8EA0B04F07EDL,(-3L),0x2F17980A009BDB40L,(-1L),0L},{(-1L),(-2L),0x147F4C9DA2E9AA58L,0x5D2C8EA0B04F07EDL,(-3L),0x2F17980A009BDB40L,(-1L),0L},{(-1L),(-2L),0x147F4C9DA2E9AA58L,0x5D2C8EA0B04F07EDL,(-3L),0x2F17980A009BDB40L,(-1L),0L},{(-1L),(-2L),0x147F4C9DA2E9AA58L,0x5D2C8EA0B04F07EDL,(-3L),0x2F17980A009BDB40L,(-1L),0L},{(-1L),(-2L),0x147F4C9DA2E9AA58L,0x5D2C8EA0B04F07EDL,(-3L),0x2F17980A009BDB40L,(-1L),0L},{(-1L),(-2L),0x147F4C9DA2E9AA58L,0x5D2C8EA0B04F07EDL,(-3L),0x2F17980A009BDB40L,(-1L),0L}};
            int i, j;
            for (i = 0; i < 3; i++)
                l_1372[i] = &l_1302;
            for (l_1165 = 0; (l_1165 == (-4)); --l_1165)
            { /* block id: 780 */
                int8_t l_1370 = 0L;
                (*l_1082) = &l_1110;
                return l_1370;
            }
            ++l_1373;
            for (l_1094 = (-17); (l_1094 > (-12)); l_1094++)
            { /* block id: 787 */
                uint64_t l_1384 = 0x4733C988FBC0C410L;
                uint64_t *l_1395 = &p_1614->g_698;
                uint64_t ***l_1399 = &p_1614->g_1274;
                int8_t **l_1400[1][6];
                int32_t l_1402 = 0x79F2752FL;
                int32_t l_1428[2];
                int i, j;
                for (i = 0; i < 1; i++)
                {
                    for (j = 0; j < 6; j++)
                        l_1400[i][j] = (void*)0;
                }
                for (i = 0; i < 2; i++)
                    l_1428[i] = 0x796EE315L;
                (*l_1080) = ((safe_lshift_func_int16_t_s_s((safe_div_func_int64_t_s_s((((*l_1084) = 4L) | (safe_rshift_func_uint16_t_u_s(FAKE_DIVERGE(p_1614->group_1_offset, get_group_id(1), 10), (((!(+((((0xF9169A02286EC5C7L != (p_1614->g_628[9] , (((l_1384 >= ((p_8 && ((GROUP_DIVERGE(0, 1) < (((safe_lshift_func_uint16_t_u_s((safe_rshift_func_uint8_t_u_u(((*l_1103) = (safe_rshift_func_uint16_t_u_u((safe_div_func_int8_t_s_s((safe_rshift_func_uint16_t_u_u((((*l_1395)++) , ((((l_1402 = ((p_1614->g_1401 = &p_1614->g_504) != (void*)0)) && 1UL) | l_1403) ^ (*l_1080))), 6)), p_1614->g_686)), p_1614->g_1305))), l_1384)), 9)) >= 0x011EL) | (*l_1080))) >= p_1614->g_1404)) > p_7)) , p_7) | p_7))) , l_1402) & p_7) , p_8))) <= p_8) != FAKE_DIVERGE(p_1614->local_1_offset, get_local_id(1), 10))))), l_1384)), 12)) >= GROUP_DIVERGE(0, 1));
                l_1327 = (safe_add_func_int64_t_s_s(((((0L > (safe_mul_func_uint8_t_u_u(((safe_lshift_func_int16_t_s_s(((*l_1080) &= p_1614->g_1305), 3)) && ((18446744073709551615UL < (safe_lshift_func_uint8_t_u_u(l_1402, 3))) ^ (((safe_rshift_func_int16_t_s_u((*l_1080), 13)) , (l_1429 = (safe_add_func_int16_t_s_s((l_1428[1] &= ((safe_mul_func_uint16_t_u_u((((((((safe_lshift_func_int8_t_s_s(((((+(l_1402 ^ ((safe_mod_func_int8_t_s_s((65532UL <= p_8), (safe_rshift_func_uint16_t_u_s((safe_div_func_int32_t_s_s(p_8, (-8L))), 13)))) | GROUP_DIVERGE(0, 1)))) == l_1384) , p_1614->g_278[0]) , 0L), (*p_1614->g_1401))) , p_8) || (*l_1080)) , p_1614->g_76[0][1][2]) & p_1614->g_365[8][3][1]) , l_1427[0]) != (void*)0), 0x23F5L)) , (*l_1080))), p_1614->g_373[1])))) != (**p_1614->g_1274)))), (*p_1614->g_17)))) , l_1430) == &p_1614->g_1098) & p_1614->g_1431), p_8));
                l_1428[0] = (((*l_1103) = 3UL) ^ ((safe_mod_func_uint64_t_u_u(((*l_1122)++), (*l_1080))) ^ (*p_1614->g_1401)));
                (*l_1082) = &l_1328[3][3];
            }
            (*l_1080) = (safe_rshift_func_uint16_t_u_u(((safe_sub_func_uint16_t_u_u(((safe_mul_func_int8_t_s_s((safe_sub_func_uint8_t_u_u(0x25L, ((*p_1614->g_1401) = (((p_8 < (((((((l_1444 == ((((l_1456 = (safe_add_func_uint32_t_u_u((safe_lshift_func_int16_t_s_s(((safe_lshift_func_int16_t_s_s((p_1614->g_768 &= (p_1614->g_628[4] = p_7)), (safe_rshift_func_uint16_t_u_u(((*l_1100) &= ((safe_mul_func_int8_t_s_s(0x1CL, 0x20L)) != 4294967286UL)), 8)))) && (((5UL != p_7) , (-1L)) && 0x4D7DCFFDL)), 11)), l_1455))) | FAKE_DIVERGE(p_1614->global_1_offset, get_global_id(1), 10)) >= 0x3C22L) , &p_1614->g_698)) != 0x7033EC0FEA5F8D35L) <= FAKE_DIVERGE(p_1614->local_0_offset, get_local_id(0), 10)) < (*p_1614->g_17)) && p_7) & 0xE0216242L) == p_7)) & p_8) >= 9L)))), FAKE_DIVERGE(p_1614->local_2_offset, get_local_id(2), 10))) < 0x28ABB768142D513DL), 65534UL)) >= l_1457[6][1]), GROUP_DIVERGE(1, 1)));
        }
        else
        { /* block id: 811 */
            int32_t l_1474 = 0L;
            for (p_1614->g_504 = 13; (p_1614->g_504 < 5); p_1614->g_504 = safe_sub_func_int64_t_s_s(p_1614->g_504, 6))
            { /* block id: 814 */
                (*l_1082) = &l_1328[3][3];
            }
            (*l_1080) = (safe_mod_func_uint16_t_u_u((safe_unary_minus_func_int16_t_s((l_1476 = (safe_rshift_func_int8_t_s_u((safe_unary_minus_func_uint16_t_u(p_1614->g_145)), (safe_rshift_func_uint8_t_u_s(((*l_1103) = (safe_rshift_func_uint16_t_u_u(((*l_1080) && ((safe_sub_func_uint16_t_u_u(0UL, (l_1472[5] ^ p_8))) > (p_1614->g_612[0] = (l_1473 , ((((l_1474 == (0x4755L & l_1474)) || l_1474) > FAKE_DIVERGE(p_1614->group_2_offset, get_group_id(2), 10)) >= l_1475[3]))))), FAKE_DIVERGE(p_1614->global_2_offset, get_global_id(2), 10)))), p_8))))))), l_1474));
        }
        (*l_1080) = (safe_lshift_func_uint8_t_u_u((((((safe_rshift_func_uint8_t_u_u(((safe_mul_func_int16_t_s_s((safe_mul_func_int8_t_s_s(((*p_1614->g_1401) = ((void*)0 != &p_1614->g_1099)), (p_7 || (((*l_1080) && (safe_mul_func_int16_t_s_s(p_8, p_7))) < ((((*l_1340) = p_1614->g_1487[3]) == (void*)0) & ((safe_mod_func_int32_t_s_s(((((safe_mul_func_uint16_t_u_u((GROUP_DIVERGE(1, 1) | ((safe_div_func_int32_t_s_s((l_1166[0][6] = (((*l_1497) = (safe_rshift_func_uint16_t_u_s(((0x09CC8DBAL ^ (*l_1080)) & (*p_1614->g_838)), p_1614->g_1431))) | p_1614->g_684)), GROUP_DIVERGE(2, 1))) <= 1L)), p_7)) <= (*l_1080)) >= (*l_1080)) & 1UL), 0x85156685L)) <= p_8)))))), p_7)) , p_7), p_8)) && (*l_1497)) , 0L) == p_7) > 0xE4L), GROUP_DIVERGE(2, 1)));
        ++l_1509;
    }
    else
    { /* block id: 828 */
        int16_t ***l_1514 = &p_1614->g_1099;
        uint64_t l_1523 = 0UL;
        uint8_t *l_1524 = &p_1614->g_25;
        int32_t l_1525[7][9] = {{0x1CAB904DL,(-1L),0x4741979AL,0x4741979AL,(-1L),0x1CAB904DL,0x6FA34B10L,0x516D9CFBL,7L},{0x1CAB904DL,(-1L),0x4741979AL,0x4741979AL,(-1L),0x1CAB904DL,0x6FA34B10L,0x516D9CFBL,7L},{0x1CAB904DL,(-1L),0x4741979AL,0x4741979AL,(-1L),0x1CAB904DL,0x6FA34B10L,0x516D9CFBL,7L},{0x1CAB904DL,(-1L),0x4741979AL,0x4741979AL,(-1L),0x1CAB904DL,0x6FA34B10L,0x516D9CFBL,7L},{0x1CAB904DL,(-1L),0x4741979AL,0x4741979AL,(-1L),0x1CAB904DL,0x6FA34B10L,0x516D9CFBL,7L},{0x1CAB904DL,(-1L),0x4741979AL,0x4741979AL,(-1L),0x1CAB904DL,0x6FA34B10L,0x516D9CFBL,7L},{0x1CAB904DL,(-1L),0x4741979AL,0x4741979AL,(-1L),0x1CAB904DL,0x6FA34B10L,0x516D9CFBL,7L}};
        int32_t l_1526 = 2L;
        int i, j;
        (*p_1614->g_1528) ^= ((!((((**l_1096) = (~(**l_1082))) < (&p_1614->g_1099 == (p_1614->g_1098 = l_1514))) || (*l_1080))) | (((safe_mod_func_int16_t_s_s((l_1525[4][2] = (((((*l_1524) |= (safe_sub_func_int64_t_s_s(0x6CA2C4DAAEDED4BBL, ((safe_add_func_uint8_t_u_u(((+p_7) != (l_1523 = (((*l_1080) && (safe_sub_func_uint8_t_u_u((0x388FL & (**l_1082)), 6L))) | p_7))), p_8)) < p_8)))) != p_8) >= (*l_1080)) ^ 1L)), l_1526)) || GROUP_DIVERGE(1, 1)) != p_7));
        (*l_1082) = (*l_1082);
    }
    return p_1614->g_646;
}


/* ------------------------------------------ */
/* 
 * reads : p_1614->g_681 p_1614->g_837 p_1614->g_768 p_1614->g_612 p_1614->g_838 p_1614->g_686 p_1614->g_628 p_1614->g_327 p_1614->g_212 p_1614->g_145 p_1614->g_143 p_1614->g_698 p_1614->g_25 p_1614->g_568 p_1614->g_76 p_1614->g_373 p_1614->g_504 p_1614->g_10 p_1614->g_684 p_1614->g_368 p_1614->g_278
 * writes: p_1614->g_768 p_1614->g_504 p_1614->g_24 p_1614->g_612 p_1614->g_327 p_1614->g_212 p_1614->g_568 p_1614->g_145 p_1614->g_630 p_1614->g_698 p_1614->g_684 p_1614->g_76 p_1614->g_795
 */
int64_t  func_11(int8_t  p_12, int32_t  p_13, struct S0 * p_1614)
{ /* block id: 467 */
    int32_t *l_968 = &p_1614->g_327;
    int32_t *l_969 = (void*)0;
    int32_t *l_970[5][4][1];
    int32_t l_971 = 0x707404BEL;
    int8_t l_972 = 0x76L;
    int64_t l_973 = 0x01F948911A4DCC86L;
    int8_t l_974 = 1L;
    uint32_t l_975 = 4294967291UL;
    uint64_t *l_990 = &p_1614->g_698;
    int16_t l_998 = 0x591FL;
    uint32_t *l_1001 = &p_1614->g_212;
    uint16_t *l_1023 = &p_1614->g_145;
    int16_t l_1066 = 0x44BFL;
    int16_t l_1072[4] = {0L,0L,0L,0L};
    uint32_t l_1074 = 0xF83ED425L;
    int i, j, k;
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 1; k++)
                l_970[i][j][k] = &p_1614->g_327;
        }
    }
    if ((atomic_inc(&p_1614->g_atomic_input[24 * get_linear_group_id() + 22]) == 8))
    { /* block id: 469 */
        int32_t l_840[10][5][5] = {{{1L,1L,0L,0x70AB29F4L,1L},{1L,1L,0L,0x70AB29F4L,1L},{1L,1L,0L,0x70AB29F4L,1L},{1L,1L,0L,0x70AB29F4L,1L},{1L,1L,0L,0x70AB29F4L,1L}},{{1L,1L,0L,0x70AB29F4L,1L},{1L,1L,0L,0x70AB29F4L,1L},{1L,1L,0L,0x70AB29F4L,1L},{1L,1L,0L,0x70AB29F4L,1L},{1L,1L,0L,0x70AB29F4L,1L}},{{1L,1L,0L,0x70AB29F4L,1L},{1L,1L,0L,0x70AB29F4L,1L},{1L,1L,0L,0x70AB29F4L,1L},{1L,1L,0L,0x70AB29F4L,1L},{1L,1L,0L,0x70AB29F4L,1L}},{{1L,1L,0L,0x70AB29F4L,1L},{1L,1L,0L,0x70AB29F4L,1L},{1L,1L,0L,0x70AB29F4L,1L},{1L,1L,0L,0x70AB29F4L,1L},{1L,1L,0L,0x70AB29F4L,1L}},{{1L,1L,0L,0x70AB29F4L,1L},{1L,1L,0L,0x70AB29F4L,1L},{1L,1L,0L,0x70AB29F4L,1L},{1L,1L,0L,0x70AB29F4L,1L},{1L,1L,0L,0x70AB29F4L,1L}},{{1L,1L,0L,0x70AB29F4L,1L},{1L,1L,0L,0x70AB29F4L,1L},{1L,1L,0L,0x70AB29F4L,1L},{1L,1L,0L,0x70AB29F4L,1L},{1L,1L,0L,0x70AB29F4L,1L}},{{1L,1L,0L,0x70AB29F4L,1L},{1L,1L,0L,0x70AB29F4L,1L},{1L,1L,0L,0x70AB29F4L,1L},{1L,1L,0L,0x70AB29F4L,1L},{1L,1L,0L,0x70AB29F4L,1L}},{{1L,1L,0L,0x70AB29F4L,1L},{1L,1L,0L,0x70AB29F4L,1L},{1L,1L,0L,0x70AB29F4L,1L},{1L,1L,0L,0x70AB29F4L,1L},{1L,1L,0L,0x70AB29F4L,1L}},{{1L,1L,0L,0x70AB29F4L,1L},{1L,1L,0L,0x70AB29F4L,1L},{1L,1L,0L,0x70AB29F4L,1L},{1L,1L,0L,0x70AB29F4L,1L},{1L,1L,0L,0x70AB29F4L,1L}},{{1L,1L,0L,0x70AB29F4L,1L},{1L,1L,0L,0x70AB29F4L,1L},{1L,1L,0L,0x70AB29F4L,1L},{1L,1L,0L,0x70AB29F4L,1L},{1L,1L,0L,0x70AB29F4L,1L}}};
        int32_t *l_967 = &l_840[5][1][0];
        int i, j, k;
        for (l_840[8][4][3] = 0; (l_840[8][4][3] == 27); l_840[8][4][3]++)
        { /* block id: 472 */
            int32_t l_843 = 0x75593D57L;
            int8_t l_950 = 0x0CL;
            int8_t l_951 = 0x2EL;
            uint64_t l_952 = 0x439948A6CE343EE3L;
            uint32_t l_953 = 0xB95FB50FL;
            uint8_t l_954 = 5UL;
            uint64_t *l_956 = (void*)0;
            uint64_t **l_955 = &l_956;
            for (l_843 = 0; (l_843 <= 1); l_843 += 1)
            { /* block id: 475 */
                int32_t l_845 = 0x54D61EE7L;
                int32_t *l_844[5] = {&l_845,&l_845,&l_845,&l_845,&l_845};
                int32_t *l_846[4] = {&l_845,&l_845,&l_845,&l_845};
                int i;
                l_846[0] = l_844[0];
                for (l_845 = 1; (l_845 >= 0); l_845 -= 1)
                { /* block id: 479 */
                    int32_t l_848 = 0x7E6EC1E2L;
                    int32_t *l_847[2];
                    uint32_t l_849 = 0xF9B8DDCDL;
                    uint32_t l_852 = 0x1D94BA9BL;
                    uint8_t l_853[1][8][4] = {{{255UL,0xF4L,0xEAL,0x7FL},{255UL,0xF4L,0xEAL,0x7FL},{255UL,0xF4L,0xEAL,0x7FL},{255UL,0xF4L,0xEAL,0x7FL},{255UL,0xF4L,0xEAL,0x7FL},{255UL,0xF4L,0xEAL,0x7FL},{255UL,0xF4L,0xEAL,0x7FL},{255UL,0xF4L,0xEAL,0x7FL}}};
                    int16_t l_854[10] = {6L,0x08E6L,6L,6L,0x08E6L,6L,6L,0x08E6L,6L,6L};
                    int8_t l_855 = 0x7AL;
                    int32_t l_856[3];
                    int16_t l_857[5];
                    uint8_t l_858 = 253UL;
                    uint64_t l_859 = 1UL;
                    int8_t l_860 = 2L;
                    int32_t l_861 = 0x4DFDB0F0L;
                    int16_t l_881 = 0x331BL;
                    int16_t l_882 = 0L;
                    int i, j, k;
                    for (i = 0; i < 2; i++)
                        l_847[i] = &l_848;
                    for (i = 0; i < 3; i++)
                        l_856[i] = (-1L);
                    for (i = 0; i < 5; i++)
                        l_857[i] = 0x313AL;
                    l_846[0] = l_847[1];
                    if ((l_861 = (l_860 = (p_1614->g_681[(l_843 + 1)] , (l_859 ^= (((++l_849) , l_852) , (l_853[0][1][1] , (l_858 = (l_857[4] ^= ((l_854[0] , (l_855 = GROUP_DIVERGE(2, 1))) , l_856[0]))))))))))
                    { /* block id: 488 */
                        uint32_t l_862 = 0xD5FA8784L;
                        uint32_t l_865[1][8] = {{0x5B20F5F7L,7UL,0x5B20F5F7L,0x5B20F5F7L,7UL,0x5B20F5F7L,0x5B20F5F7L,7UL}};
                        int16_t l_866 = 1L;
                        uint16_t l_867[1][9] = {{0x63BFL,0x63BFL,0x63BFL,0x63BFL,0x63BFL,0x63BFL,0x63BFL,0x63BFL,0x63BFL}};
                        uint16_t l_868 = 0xC03AL;
                        int64_t l_871 = 0x5684A50116A36D2AL;
                        int64_t *l_870 = &l_871;
                        int64_t **l_869 = &l_870;
                        int64_t **l_872 = &l_870;
                        int64_t **l_873 = &l_870;
                        int i, j;
                        l_862--;
                        l_873 = ((l_866 &= l_865[0][4]) , (l_872 = (l_869 = ((l_867[0][1] , (l_858 = l_868)) , (void*)0))));
                    }
                    else
                    { /* block id: 495 */
                        uint16_t l_874 = 0xF68FL;
                        int64_t l_875 = 3L;
                        uint32_t l_876 = 4294967290UL;
                        uint32_t l_877 = 4UL;
                        uint32_t l_878 = 4294967289UL;
                        int8_t l_879 = 0x15L;
                        int64_t l_880 = 0x69ECB548DA89919CL;
                        l_875 = l_874;
                        l_877 = l_876;
                        l_880 ^= (l_878 , l_879);
                    }
                    l_882 ^= l_881;
                }
            }
            for (l_843 = 0; (l_843 <= 1); l_843 += 1)
            { /* block id: 505 */
                uint32_t l_883 = 3UL;
                uint32_t l_884 = 4294967293UL;
                if (((l_883 , l_884) , 0x12F6566DL))
                { /* block id: 506 */
                    int32_t l_885 = 5L;
                    int32_t l_890 = (-1L);
                    int8_t l_891 = 0x43L;
                    int16_t l_892[6] = {(-7L),(-7L),(-7L),(-7L),(-7L),(-7L)};
                    int32_t l_893 = (-8L);
                    int8_t l_894 = 0x6EL;
                    int16_t l_895 = 1L;
                    uint16_t l_896 = 65530UL;
                    int32_t l_899 = 0L;
                    uint16_t l_900[8] = {1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL};
                    int i;
                    for (l_885 = 9; (l_885 >= 0); l_885 -= 1)
                    { /* block id: 509 */
                        int32_t l_887[3];
                        int32_t * volatile l_886 = &l_887[0];/* VOLATILE GLOBAL l_886 */
                        int16_t l_888 = 4L;
                        int32_t l_889 = 5L;
                        int i;
                        for (i = 0; i < 3; i++)
                            l_887[i] = 0x7AA3B24DL;
                        l_886 = p_1614->g_837[l_843];
                        l_889 = l_888;
                    }
                    l_893 ^= ((l_891 = l_890) , l_892[1]);
                    l_896--;
                    l_900[4] ^= l_899;
                }
                else
                { /* block id: 517 */
                    uint32_t l_901 = 0x50F24C0EL;
                    uint64_t l_902 = 18446744073709551612UL;
                    int64_t l_921[8] = {0x72EE0BBC9886FBA9L,0x72EE0BBC9886FBA9L,0x72EE0BBC9886FBA9L,0x72EE0BBC9886FBA9L,0x72EE0BBC9886FBA9L,0x72EE0BBC9886FBA9L,0x72EE0BBC9886FBA9L,0x72EE0BBC9886FBA9L};
                    int32_t l_922 = 1L;
                    int16_t l_923 = 0x0C89L;
                    uint32_t l_924 = 1UL;
                    int i;
                    if ((l_902 = l_901))
                    { /* block id: 519 */
                        uint16_t l_903 = 0x2E7CL;
                        int8_t l_904[3][2] = {{0x3EL,(-1L)},{0x3EL,(-1L)},{0x3EL,(-1L)}};
                        uint32_t l_905 = 0x0FC9FE30L;
                        uint64_t l_906[10][9] = {{0xCADEB0A61D8399BDL,18446744073709551611UL,18446744073709551608UL,0xD784F1B8F91675BBL,18446744073709551608UL,18446744073709551611UL,0xCADEB0A61D8399BDL,18446744073709551614UL,1UL},{0xCADEB0A61D8399BDL,18446744073709551611UL,18446744073709551608UL,0xD784F1B8F91675BBL,18446744073709551608UL,18446744073709551611UL,0xCADEB0A61D8399BDL,18446744073709551614UL,1UL},{0xCADEB0A61D8399BDL,18446744073709551611UL,18446744073709551608UL,0xD784F1B8F91675BBL,18446744073709551608UL,18446744073709551611UL,0xCADEB0A61D8399BDL,18446744073709551614UL,1UL},{0xCADEB0A61D8399BDL,18446744073709551611UL,18446744073709551608UL,0xD784F1B8F91675BBL,18446744073709551608UL,18446744073709551611UL,0xCADEB0A61D8399BDL,18446744073709551614UL,1UL},{0xCADEB0A61D8399BDL,18446744073709551611UL,18446744073709551608UL,0xD784F1B8F91675BBL,18446744073709551608UL,18446744073709551611UL,0xCADEB0A61D8399BDL,18446744073709551614UL,1UL},{0xCADEB0A61D8399BDL,18446744073709551611UL,18446744073709551608UL,0xD784F1B8F91675BBL,18446744073709551608UL,18446744073709551611UL,0xCADEB0A61D8399BDL,18446744073709551614UL,1UL},{0xCADEB0A61D8399BDL,18446744073709551611UL,18446744073709551608UL,0xD784F1B8F91675BBL,18446744073709551608UL,18446744073709551611UL,0xCADEB0A61D8399BDL,18446744073709551614UL,1UL},{0xCADEB0A61D8399BDL,18446744073709551611UL,18446744073709551608UL,0xD784F1B8F91675BBL,18446744073709551608UL,18446744073709551611UL,0xCADEB0A61D8399BDL,18446744073709551614UL,1UL},{0xCADEB0A61D8399BDL,18446744073709551611UL,18446744073709551608UL,0xD784F1B8F91675BBL,18446744073709551608UL,18446744073709551611UL,0xCADEB0A61D8399BDL,18446744073709551614UL,1UL},{0xCADEB0A61D8399BDL,18446744073709551611UL,18446744073709551608UL,0xD784F1B8F91675BBL,18446744073709551608UL,18446744073709551611UL,0xCADEB0A61D8399BDL,18446744073709551614UL,1UL}};
                        uint64_t l_907 = 1UL;
                        int8_t l_908 = 4L;
                        int64_t l_909[1];
                        uint32_t l_910 = 4294967295UL;
                        int i, j;
                        for (i = 0; i < 1; i++)
                            l_909[i] = (-7L);
                        l_904[2][0] = l_903;
                        l_906[2][1] = l_905;
                        l_908 = l_907;
                        ++l_910;
                    }
                    else
                    { /* block id: 524 */
                        uint32_t l_913 = 1UL;
                        int64_t l_914 = 0x5485E9D9F9C116D4L;
                        int32_t l_915 = 0L;
                        uint8_t l_916 = 0xDBL;
                        int32_t l_917[5][2][10] = {{{0x72C5D151L,0x1B2EE012L,0x1073E384L,0x1B2EE012L,0x72C5D151L,0x72C5D151L,0x1B2EE012L,0x1073E384L,0x1B2EE012L,0x72C5D151L},{0x72C5D151L,0x1B2EE012L,0x1073E384L,0x1B2EE012L,0x72C5D151L,0x72C5D151L,0x1B2EE012L,0x1073E384L,0x1B2EE012L,0x72C5D151L}},{{0x72C5D151L,0x1B2EE012L,0x1073E384L,0x1B2EE012L,0x72C5D151L,0x72C5D151L,0x1B2EE012L,0x1073E384L,0x1B2EE012L,0x72C5D151L},{0x72C5D151L,0x1B2EE012L,0x1073E384L,0x1B2EE012L,0x72C5D151L,0x72C5D151L,0x1B2EE012L,0x1073E384L,0x1B2EE012L,0x72C5D151L}},{{0x72C5D151L,0x1B2EE012L,0x1073E384L,0x1B2EE012L,0x72C5D151L,0x72C5D151L,0x1B2EE012L,0x1073E384L,0x1B2EE012L,0x72C5D151L},{0x72C5D151L,0x1B2EE012L,0x1073E384L,0x1B2EE012L,0x72C5D151L,0x72C5D151L,0x1B2EE012L,0x1073E384L,0x1B2EE012L,0x72C5D151L}},{{0x72C5D151L,0x1B2EE012L,0x1073E384L,0x1B2EE012L,0x72C5D151L,0x72C5D151L,0x1B2EE012L,0x1073E384L,0x1B2EE012L,0x72C5D151L},{0x72C5D151L,0x1B2EE012L,0x1073E384L,0x1B2EE012L,0x72C5D151L,0x72C5D151L,0x1B2EE012L,0x1073E384L,0x1B2EE012L,0x72C5D151L}},{{0x72C5D151L,0x1B2EE012L,0x1073E384L,0x1B2EE012L,0x72C5D151L,0x72C5D151L,0x1B2EE012L,0x1073E384L,0x1B2EE012L,0x72C5D151L},{0x72C5D151L,0x1B2EE012L,0x1073E384L,0x1B2EE012L,0x72C5D151L,0x72C5D151L,0x1B2EE012L,0x1073E384L,0x1B2EE012L,0x72C5D151L}}};
                        int i, j, k;
                        l_917[4][0][9] = (l_913 , ((l_915 = l_914) , l_916));
                    }
                    for (l_901 = 0; (l_901 <= 4); l_901 += 1)
                    { /* block id: 530 */
                        uint64_t l_918 = 0x2773FE028FD76D54L;
                        l_918++;
                    }
                    l_922 ^= l_921[0];
                    l_924 = l_923;
                }
                for (l_883 = 0; (l_883 <= 1); l_883 += 1)
                { /* block id: 538 */
                    int32_t l_925 = 1L;
                    uint32_t l_937 = 0xB966ACC1L;
                    int32_t l_949[5][3] = {{0x6E3850DFL,0x6E3850DFL,3L},{0x6E3850DFL,0x6E3850DFL,3L},{0x6E3850DFL,0x6E3850DFL,3L},{0x6E3850DFL,0x6E3850DFL,3L},{0x6E3850DFL,0x6E3850DFL,3L}};
                    int i, j;
                    for (l_925 = 0; (l_925 <= 4); l_925 += 1)
                    { /* block id: 541 */
                        int32_t l_926 = 0x1E720940L;
                        uint16_t l_927 = 65535UL;
                        int32_t l_930[3];
                        int32_t l_932 = 0x3F8EC785L;
                        int32_t *l_931 = &l_932;
                        int32_t *l_933[9][5] = {{&l_932,(void*)0,&l_932,&l_932,(void*)0},{&l_932,(void*)0,&l_932,&l_932,(void*)0},{&l_932,(void*)0,&l_932,&l_932,(void*)0},{&l_932,(void*)0,&l_932,&l_932,(void*)0},{&l_932,(void*)0,&l_932,&l_932,(void*)0},{&l_932,(void*)0,&l_932,&l_932,(void*)0},{&l_932,(void*)0,&l_932,&l_932,(void*)0},{&l_932,(void*)0,&l_932,&l_932,(void*)0},{&l_932,(void*)0,&l_932,&l_932,(void*)0}};
                        int i, j;
                        for (i = 0; i < 3; i++)
                            l_930[i] = (-1L);
                        l_927--;
                        l_933[5][2] = (l_930[0] , l_931);
                    }
                    for (l_925 = 1; (l_925 >= 0); l_925 -= 1)
                    { /* block id: 547 */
                        uint64_t l_934 = 18446744073709551607UL;
                        ++l_934;
                    }
                    if (l_937)
                    { /* block id: 550 */
                        int32_t l_938 = 5L;
                        int16_t l_939 = 0x259CL;
                        int32_t l_940 = 7L;
                        int32_t l_941[1][3];
                        uint32_t l_942[6];
                        int32_t *l_943 = &l_941[0][1];
                        int32_t *l_944[10];
                        int i, j;
                        for (i = 0; i < 1; i++)
                        {
                            for (j = 0; j < 3; j++)
                                l_941[i][j] = 0x62205688L;
                        }
                        for (i = 0; i < 6; i++)
                            l_942[i] = 4294967291UL;
                        for (i = 0; i < 10; i++)
                            l_944[i] = &l_941[0][0];
                        l_944[1] = ((l_940 = ((l_938 = 1L) , l_939)) , (l_941[0][0] , (l_942[1] , l_943)));
                    }
                    else
                    { /* block id: 554 */
                        int32_t l_946 = (-10L);
                        int32_t *l_945[3][8][2];
                        int32_t *l_947 = &l_946;
                        int32_t *l_948 = &l_946;
                        int i, j, k;
                        for (i = 0; i < 3; i++)
                        {
                            for (j = 0; j < 8; j++)
                            {
                                for (k = 0; k < 2; k++)
                                    l_945[i][j][k] = &l_946;
                            }
                        }
                        l_945[2][7][1] = (void*)0;
                        l_948 = l_947;
                    }
                    l_949[3][0] = 0x5D850443L;
                }
            }
            l_954 = (l_953 = (l_843 = (l_952 = (l_950 , l_951))));
            l_955 = l_955;
        }
        for (l_840[1][0][0] = 0; (l_840[1][0][0] != (-25)); l_840[1][0][0] = safe_sub_func_int32_t_s_s(l_840[1][0][0], 5))
        { /* block id: 569 */
            int64_t l_959 = 0x2474148122982C2EL;
            uint64_t l_960 = 0x8FE316A390060548L;
            int32_t l_961 = 0x5EC6F90DL;
            uint8_t l_962 = 0x11L;
            uint32_t l_963 = 4294967292UL;
            uint64_t l_964[4][5][6] = {{{1UL,0xBBAB1F872DE92F30L,0xD9017A23732B7323L,0xBBAB1F872DE92F30L,1UL,5UL},{1UL,0xBBAB1F872DE92F30L,0xD9017A23732B7323L,0xBBAB1F872DE92F30L,1UL,5UL},{1UL,0xBBAB1F872DE92F30L,0xD9017A23732B7323L,0xBBAB1F872DE92F30L,1UL,5UL},{1UL,0xBBAB1F872DE92F30L,0xD9017A23732B7323L,0xBBAB1F872DE92F30L,1UL,5UL},{1UL,0xBBAB1F872DE92F30L,0xD9017A23732B7323L,0xBBAB1F872DE92F30L,1UL,5UL}},{{1UL,0xBBAB1F872DE92F30L,0xD9017A23732B7323L,0xBBAB1F872DE92F30L,1UL,5UL},{1UL,0xBBAB1F872DE92F30L,0xD9017A23732B7323L,0xBBAB1F872DE92F30L,1UL,5UL},{1UL,0xBBAB1F872DE92F30L,0xD9017A23732B7323L,0xBBAB1F872DE92F30L,1UL,5UL},{1UL,0xBBAB1F872DE92F30L,0xD9017A23732B7323L,0xBBAB1F872DE92F30L,1UL,5UL},{1UL,0xBBAB1F872DE92F30L,0xD9017A23732B7323L,0xBBAB1F872DE92F30L,1UL,5UL}},{{1UL,0xBBAB1F872DE92F30L,0xD9017A23732B7323L,0xBBAB1F872DE92F30L,1UL,5UL},{1UL,0xBBAB1F872DE92F30L,0xD9017A23732B7323L,0xBBAB1F872DE92F30L,1UL,5UL},{1UL,0xBBAB1F872DE92F30L,0xD9017A23732B7323L,0xBBAB1F872DE92F30L,1UL,5UL},{1UL,0xBBAB1F872DE92F30L,0xD9017A23732B7323L,0xBBAB1F872DE92F30L,1UL,5UL},{1UL,0xBBAB1F872DE92F30L,0xD9017A23732B7323L,0xBBAB1F872DE92F30L,1UL,5UL}},{{1UL,0xBBAB1F872DE92F30L,0xD9017A23732B7323L,0xBBAB1F872DE92F30L,1UL,5UL},{1UL,0xBBAB1F872DE92F30L,0xD9017A23732B7323L,0xBBAB1F872DE92F30L,1UL,5UL},{1UL,0xBBAB1F872DE92F30L,0xD9017A23732B7323L,0xBBAB1F872DE92F30L,1UL,5UL},{1UL,0xBBAB1F872DE92F30L,0xD9017A23732B7323L,0xBBAB1F872DE92F30L,1UL,5UL},{1UL,0xBBAB1F872DE92F30L,0xD9017A23732B7323L,0xBBAB1F872DE92F30L,1UL,5UL}}};
            uint32_t l_965 = 4294967295UL;
            int16_t l_966 = 0L;
            int i, j, k;
            l_966 = ((l_959 = (-1L)) , (((((l_960 , l_961) , 0x61B7L) , (l_963 = l_962)) , (l_964[3][2][3] , 0xBBEC1F3EL)) , l_965));
        }
        l_967 = l_967;
        unsigned int result = 0;
        int l_840_i0, l_840_i1, l_840_i2;
        for (l_840_i0 = 0; l_840_i0 < 10; l_840_i0++) {
            for (l_840_i1 = 0; l_840_i1 < 5; l_840_i1++) {
                for (l_840_i2 = 0; l_840_i2 < 5; l_840_i2++) {
                    result += l_840[l_840_i0][l_840_i1][l_840_i2];
                }
            }
        }
        atomic_add(&p_1614->g_special_values[24 * get_linear_group_id() + 22], result);
    }
    else
    { /* block id: 575 */
        (1 + 1);
    }
    l_975--;
    for (p_1614->g_768 = 0; (p_1614->g_768 >= 14); ++p_1614->g_768)
    { /* block id: 581 */
        uint16_t l_982 = 1UL;
        int32_t l_983 = (-1L);
        int8_t *l_984 = &p_1614->g_504;
        uint8_t **l_987 = &p_1614->g_24[8][7];
        uint8_t *l_988 = &p_1614->g_795;
        uint16_t *l_989[7];
        int8_t *l_991 = (void*)0;
        int8_t *l_992 = &l_974;
        int32_t l_993 = (-4L);
        int i;
        for (i = 0; i < 7; i++)
            l_989[i] = &p_1614->g_612[0];
        l_993 = ((*l_968) = (((((*l_992) = (((l_983 = l_982) , ((*l_984) = l_982)) ^ (0x0B2D276BL && ((safe_rshift_func_int16_t_s_u(((l_988 = ((*l_987) = l_984)) == l_984), (p_13 , (p_1614->g_612[1] ^= 1UL)))) , ((*p_1614->g_838) >= (+((l_990 == &p_1614->g_698) <= p_13))))))) == 0L) , p_1614->g_628[9]) <= p_1614->g_327));
    }
    if (((safe_mul_func_uint8_t_u_u(p_12, ((void*)0 == &l_968))) , (((*l_1001) = (safe_mul_func_int16_t_s_s(0x789AL, (l_998 ^ (!(safe_rshift_func_int16_t_s_u(1L, 8))))))) == 0x7C423BF4L)))
    { /* block id: 592 */
        int16_t *l_1003 = &p_1614->g_768;
        int16_t **l_1002 = &l_1003;
        int16_t ***l_1004 = (void*)0;
        int16_t ***l_1005 = &l_1002;
        int16_t **l_1007 = &l_1003;
        int16_t ***l_1006 = &l_1007;
        (*l_1006) = ((*l_1005) = l_1002);
    }
    else
    { /* block id: 595 */
        uint8_t l_1026 = 1UL;
        int32_t l_1052 = 1L;
        int32_t l_1067 = 0x668FFC85L;
        int32_t l_1068[4][5] = {{0L,0L,0x36CBDE06L,0L,0L},{0L,0L,0x36CBDE06L,0L,0L},{0L,0L,0x36CBDE06L,0L,0L},{0L,0L,0x36CBDE06L,0L,0L}};
        uint16_t l_1077 = 65535UL;
        int i, j;
        for (p_13 = (-23); (p_13 > (-11)); p_13++)
        { /* block id: 598 */
            uint16_t *l_1020 = &p_1614->g_612[0];
            uint16_t *l_1024 = &p_1614->g_630;
            int32_t l_1025 = 7L;
            l_1025 = ((safe_rshift_func_int16_t_s_s((((((p_1614->g_568 = (((*l_1001) &= p_12) >= 0x4D9E08B6L)) , (safe_lshift_func_uint16_t_u_u(GROUP_DIVERGE(0, 1), (((((*l_968) = (*p_1614->g_838)) > (0x7EFAL <= ((*l_1024) = (safe_div_func_uint8_t_u_u((safe_mul_func_int8_t_s_s(p_1614->g_212, p_12)), ((safe_rshift_func_uint16_t_u_s((++(*l_1020)), ((void*)0 == l_1023))) & ((((*l_1023) ^= (p_13 || 2UL)) ^ p_1614->g_143) , p_12))))))) != l_1025) <= p_1614->g_698)))) <= l_1026) , p_1614->g_25) , p_1614->g_568), 1)) < GROUP_DIVERGE(2, 1));
            return p_12;
        }
        for (p_1614->g_698 = 0; (p_1614->g_698 <= 4); p_1614->g_698++)
        { /* block id: 610 */
            int64_t *l_1048 = &p_1614->g_278[0];
            int64_t **l_1047 = &l_1048;
            int32_t l_1049 = 1L;
            int32_t l_1070[5][5][3] = {{{2L,2L,(-1L)},{2L,2L,(-1L)},{2L,2L,(-1L)},{2L,2L,(-1L)},{2L,2L,(-1L)}},{{2L,2L,(-1L)},{2L,2L,(-1L)},{2L,2L,(-1L)},{2L,2L,(-1L)},{2L,2L,(-1L)}},{{2L,2L,(-1L)},{2L,2L,(-1L)},{2L,2L,(-1L)},{2L,2L,(-1L)},{2L,2L,(-1L)}},{{2L,2L,(-1L)},{2L,2L,(-1L)},{2L,2L,(-1L)},{2L,2L,(-1L)},{2L,2L,(-1L)}},{{2L,2L,(-1L)},{2L,2L,(-1L)},{2L,2L,(-1L)},{2L,2L,(-1L)},{2L,2L,(-1L)}}};
            int i, j, k;
            for (p_1614->g_504 = 4; (p_1614->g_504 >= 0); p_1614->g_504 -= 1)
            { /* block id: 613 */
                int32_t *l_1029 = &p_1614->g_76[0][1][2];
                l_1029 = l_1029;
                if ((*l_1029))
                    continue;
                for (p_1614->g_684 = 0; (p_1614->g_684 <= 4); p_1614->g_684 += 1)
                { /* block id: 618 */
                    uint32_t l_1051 = 4294967287UL;
                    int64_t l_1053[9][2] = {{0x7A448E2F23F4A42EL,0x7A448E2F23F4A42EL},{0x7A448E2F23F4A42EL,0x7A448E2F23F4A42EL},{0x7A448E2F23F4A42EL,0x7A448E2F23F4A42EL},{0x7A448E2F23F4A42EL,0x7A448E2F23F4A42EL},{0x7A448E2F23F4A42EL,0x7A448E2F23F4A42EL},{0x7A448E2F23F4A42EL,0x7A448E2F23F4A42EL},{0x7A448E2F23F4A42EL,0x7A448E2F23F4A42EL},{0x7A448E2F23F4A42EL,0x7A448E2F23F4A42EL},{0x7A448E2F23F4A42EL,0x7A448E2F23F4A42EL}};
                    int i, j;
                    for (l_975 = 1; (l_975 <= 4); l_975 += 1)
                    { /* block id: 621 */
                        int32_t l_1050 = 0x683D6A8EL;
                        int i;
                        l_1050 &= ((l_1026 || (safe_add_func_int32_t_s_s((((p_1614->g_373[2] || (safe_sub_func_int32_t_s_s(((((safe_mul_func_int16_t_s_s(((safe_div_func_int8_t_s_s((safe_unary_minus_func_int8_t_s(((((!((((safe_add_func_uint16_t_u_u(p_1614->g_504, p_1614->g_327)) <= 4294967295UL) < (p_1614->g_10 > 0x20L)) == (safe_mul_func_uint16_t_u_u((p_1614->g_612[p_1614->g_684]--), ((((+p_1614->g_568) , l_1047) == (void*)0) , p_1614->g_684))))) , (void*)0) != &p_1614->g_365[0][5][1]) | p_12))), 0x46L)) && p_1614->g_368), p_1614->g_278[2])) ^ p_12) , (void*)0) == (void*)0), l_1026))) ^ p_12) & 1UL), l_1049))) & 0x4AAB962F35CFBA61L);
                        (*l_968) = (l_1051 || (l_1052 = (251UL & p_13)));
                        l_1053[4][0] = ((*l_968) = (p_13 = p_12));
                        (*l_1029) = (p_13 , (safe_sub_func_uint64_t_u_u(p_12, 0x896A16334E525BE0L)));
                    }
                }
            }
            for (p_1614->g_795 = (-19); (p_1614->g_795 > 26); p_1614->g_795 = safe_add_func_uint8_t_u_u(p_1614->g_795, 9))
            { /* block id: 635 */
                int32_t l_1065 = (-7L);
                int32_t l_1069 = 1L;
                int32_t l_1071 = (-1L);
                int32_t l_1073 = (-6L);
                for (l_998 = 27; (l_998 >= (-10)); l_998--)
                { /* block id: 638 */
                    int32_t **l_1062 = &l_970[0][1][0];
                    for (p_1614->g_630 = 0; (p_1614->g_630 < 29); p_1614->g_630 = safe_add_func_int64_t_s_s(p_1614->g_630, 9))
                    { /* block id: 641 */
                        return p_12;
                    }
                    (*l_1062) = &p_1614->g_76[0][1][2];
                    for (p_1614->g_768 = (-11); (p_1614->g_768 >= 17); p_1614->g_768 = safe_add_func_uint32_t_u_u(p_1614->g_768, 5))
                    { /* block id: 647 */
                        if (l_1065)
                            break;
                    }
                }
                --l_1074;
                l_1067 &= 0L;
            }
            --l_1077;
        }
    }
    return p_13;
}


/* ------------------------------------------ */
/* 
 * reads : p_1614->g_373 p_1614->g_612 p_1614->g_278 p_1614->g_371 p_1614->g_646 p_1614->g_219 p_1614->g_217 p_1614->g_212 p_1614->g_630 p_1614->g_76 p_1614->g_568 p_1614->g_327 p_1614->g_18 p_1614->g_686 p_1614->g_389 p_1614->g_25 p_1614->g_17 p_1614->g_684 p_1614->g_365 p_1614->g_681 p_1614->g_731 p_1614->g_150 p_1614->g_698 p_1614->g_838
 * writes: p_1614->g_612 p_1614->g_76 p_1614->g_327 p_1614->g_646 p_1614->g_219 p_1614->g_368 p_1614->g_684 p_1614->g_686 p_1614->g_389 p_1614->g_371 p_1614->g_365 p_1614->g_681 p_1614->g_212
 */
int64_t  func_14(uint8_t  p_15, uint8_t * p_16, struct S0 * p_1614)
{ /* block id: 371 */
    int16_t l_637 = 0x178FL;
    uint16_t *l_638 = &p_1614->g_612[4];
    uint16_t *l_641[7][6] = {{&p_1614->g_389,&p_1614->g_389,&p_1614->g_10,&p_1614->g_389,&p_1614->g_389,&p_1614->g_389},{&p_1614->g_389,&p_1614->g_389,&p_1614->g_10,&p_1614->g_389,&p_1614->g_389,&p_1614->g_389},{&p_1614->g_389,&p_1614->g_389,&p_1614->g_10,&p_1614->g_389,&p_1614->g_389,&p_1614->g_389},{&p_1614->g_389,&p_1614->g_389,&p_1614->g_10,&p_1614->g_389,&p_1614->g_389,&p_1614->g_389},{&p_1614->g_389,&p_1614->g_389,&p_1614->g_10,&p_1614->g_389,&p_1614->g_389,&p_1614->g_389},{&p_1614->g_389,&p_1614->g_389,&p_1614->g_10,&p_1614->g_389,&p_1614->g_389,&p_1614->g_389},{&p_1614->g_389,&p_1614->g_389,&p_1614->g_10,&p_1614->g_389,&p_1614->g_389,&p_1614->g_389}};
    int32_t l_642 = 0L;
    int32_t l_644[2][6] = {{(-9L),0x38F4C7C7L,(-9L),(-9L),0x38F4C7C7L,(-9L)},{(-9L),0x38F4C7C7L,(-9L),(-9L),0x38F4C7C7L,(-9L)}};
    int8_t l_682 = 0x7BL;
    uint16_t l_700 = 0x0C2BL;
    int32_t **l_704 = &p_1614->g_371;
    uint8_t **l_713[8] = {&p_1614->g_24[2][0],&p_1614->g_24[2][0],&p_1614->g_24[2][0],&p_1614->g_24[2][0],&p_1614->g_24[2][0],&p_1614->g_24[2][0],&p_1614->g_24[2][0],&p_1614->g_24[2][0]};
    int64_t **l_720 = (void*)0;
    int32_t l_732 = 0x3419200AL;
    uint16_t l_766 = 0x87E9L;
    uint32_t *l_826 = &p_1614->g_150[1][0][2];
    int8_t *l_835[1][8][1] = {{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}}};
    uint64_t l_836 = 0x3FEF8A501623E16EL;
    uint64_t l_839 = 0x3A30417FCC25E049L;
    int i, j, k;
    if ((safe_sub_func_int16_t_s_s((p_1614->g_373[1] ^ l_637), (l_642 = ((*l_638)++)))))
    { /* block id: 374 */
        return p_15;
    }
    else
    { /* block id: 376 */
        int64_t l_647 = 0L;
        int32_t *l_703 = &p_1614->g_327;
        int32_t l_727 = (-10L);
        int32_t l_730[3];
        uint16_t l_734 = 0xE3BAL;
        uint32_t *l_821 = &p_1614->g_681[2];
        uint64_t l_824 = 18446744073709551613UL;
        uint32_t *l_825 = &p_1614->g_212;
        int32_t *l_828[2];
        int i;
        for (i = 0; i < 3; i++)
            l_730[i] = 0x276873BFL;
        for (i = 0; i < 2; i++)
            l_828[i] = &p_1614->g_686;
        for (l_637 = 3; (l_637 >= 0); l_637 -= 1)
        { /* block id: 379 */
            int32_t *l_643 = &l_642;
            int32_t *l_645 = &p_1614->g_646;
            int8_t *l_672 = &p_1614->g_219;
            uint64_t *l_678 = &p_1614->g_368;
            uint64_t l_679 = 1UL;
            uint32_t *l_680[3];
            int64_t *l_683 = &p_1614->g_684;
            int32_t *l_685 = &p_1614->g_686;
            uint8_t **l_712 = &p_1614->g_24[3][0];
            uint8_t **l_716[2][7];
            int32_t l_729 = 9L;
            int i, j;
            for (i = 0; i < 3; i++)
                l_680[i] = &p_1614->g_681[2];
            for (i = 0; i < 2; i++)
            {
                for (j = 0; j < 7; j++)
                    l_716[i][j] = (void*)0;
            }
            (*l_685) &= ((p_1614->g_278[l_637] ^ ((*l_683) = ((l_682 &= ((((((*l_643) = (~((*p_1614->g_371) = p_15))) & (l_647 = ((*l_645) |= l_644[0][1]))) , (safe_mul_func_int8_t_s_s(((1L || (safe_sub_func_uint32_t_u_u(((~(safe_add_func_uint16_t_u_u(65531UL, (safe_mul_func_int16_t_s_s((((safe_rshift_func_int8_t_s_s((safe_rshift_func_uint16_t_u_s((safe_div_func_int64_t_s_s(((safe_rshift_func_int16_t_s_s((((safe_mod_func_int16_t_s_s((l_644[0][1] | (((*l_678) = ((safe_mul_func_int8_t_s_s((safe_mul_func_uint16_t_u_u((((safe_lshift_func_uint8_t_u_u(((((*l_672) ^= p_15) | ((safe_unary_minus_func_int16_t_s(0x2B9EL)) , (((((((safe_mul_func_uint8_t_u_u(((safe_rshift_func_uint8_t_u_s((*l_643), 5)) <= (-1L)), GROUP_DIVERGE(1, 1))) >= p_1614->g_217) != p_15) & p_1614->g_212) , p_1614->g_630) , l_644[0][1]) | (-1L)))) <= 3UL), 6)) && p_1614->g_76[0][1][2]) | p_15), (-8L))), 1UL)) | 0x7E712891L)) == 6L)), 0xDD79L)) , p_15) != 2L), l_679)) && GROUP_DIVERGE(1, 1)), p_15)), 10)), p_15)) != (*l_643)) , p_15), p_1614->g_568))))) >= 0L), (*p_1614->g_371)))) , l_644[0][4]), 1L))) , p_15) || 0x26677A18L)) == p_1614->g_18))) ^ p_1614->g_373[1]);
            (*l_685) ^= l_644[0][1];
            for (p_1614->g_389 = 0; (p_1614->g_389 <= 8); p_1614->g_389 += 1)
            { /* block id: 392 */
                int32_t **l_687 = &l_645;
                uint64_t *l_697 = &p_1614->g_698;
                uint64_t *l_699 = (void*)0;
                uint8_t **l_714 = &p_1614->g_24[7][6];
                int32_t l_728 = 0x49B59978L;
                int32_t l_733 = 0x4E03DD86L;
                uint32_t *l_756 = &p_1614->g_681[2];
                (*l_687) = &l_642;
            }
        }
        for (l_727 = 12; (l_727 == (-8)); l_727 = safe_sub_func_int16_t_s_s(l_727, 5))
        { /* block id: 446 */
            uint32_t l_785 = 4294967295UL;
            uint8_t *l_794 = &p_1614->g_795;
            int32_t l_796 = (-5L);
            int32_t l_801 = 0x4677F4BAL;
            uint64_t *l_802 = &p_1614->g_365[0][5][1];
            int32_t *l_803 = &l_642;
            (*l_704) = &p_1614->g_646;
            (*l_803) |= ((safe_sub_func_int64_t_s_s((-1L), (safe_div_func_uint16_t_u_u((safe_add_func_uint32_t_u_u((((((p_1614->g_217 && (safe_add_func_uint8_t_u_u((((((p_1614->g_76[1][3][4] != (l_785 = (*p_16))) >= (((safe_sub_func_int8_t_s_s((safe_lshift_func_uint16_t_u_u((safe_div_func_uint8_t_u_u((safe_rshift_func_uint16_t_u_u((l_796 = ((*l_638) = (&p_15 != (l_794 = (void*)0)))), (p_1614->g_389 |= 65535UL))), ((((*l_802) = ((+(((safe_div_func_uint8_t_u_u((safe_sub_func_uint64_t_u_u((&p_1614->g_768 != (((((**l_704) , p_1614->g_25) == 0x71E7L) <= l_801) , (void*)0)), l_801)), p_1614->g_278[0])) , p_1614->g_568) != p_15)) != FAKE_DIVERGE(p_1614->local_1_offset, get_local_id(1), 10))) | p_15) & p_1614->g_76[0][0][6]))), 5)), (*p_1614->g_17))) >= p_15) == 0x2059DB46L)) , &p_1614->g_371) != &p_1614->g_371) <= p_1614->g_684), 0UL))) > (*p_16)) && (*p_16)) && 0L) <= (*l_703)), GROUP_DIVERGE(0, 1))), p_1614->g_568)))) > 0x8BA7F2F1L);
        }
        p_1614->g_686 ^= (l_730[1] |= (p_15 , (((void*)0 == &l_647) != (safe_sub_func_uint8_t_u_u(((FAKE_DIVERGE(p_1614->global_1_offset, get_global_id(1), 10) <= (((safe_add_func_int32_t_s_s(((safe_unary_minus_func_uint8_t_u((safe_add_func_uint8_t_u_u((safe_add_func_uint8_t_u_u((safe_mul_func_int16_t_s_s((((((*l_825) = ((((--p_1614->g_365[7][5][1]) <= (((safe_lshift_func_int8_t_s_u((1UL || (*l_703)), 1)) , (--(*l_821))) != 4294967295UL)) || (*p_16)) != (((l_824 >= ((*p_1614->g_371) != 1L)) && 0x9E70L) <= p_15))) | p_15) == p_15) , 0x7B63L), (*l_703))), GROUP_DIVERGE(2, 1))), (**l_704))))) > 1L), p_15)) , l_826) == l_825)) < (**l_704)), (*p_16))))));
    }
    (*p_1614->g_371) = 0x0C23CD27L;
    (*p_1614->g_838) = (((((((*l_704) = (void*)0) == (p_1614->g_731 , &p_1614->g_686)) < ((void*)0 != &l_720)) ^ 4L) | ((((((safe_rshift_func_uint16_t_u_u((p_15 ^ ((safe_rshift_func_int16_t_s_u((safe_mul_func_int8_t_s_s((p_1614->g_219 = p_1614->g_684), 0x3CL)), p_1614->g_150[0][0][0])) | p_1614->g_698)), 4)) ^ 0x2D9BL) | l_836) || l_836) | p_1614->g_686) == p_1614->g_646)) >= (-1L));
    return l_839;
}


/* ------------------------------------------ */
/* 
 * reads : p_1614->g_212 p_1614->g_143 p_1614->g_368 p_1614->g_278 p_1614->g_327 p_1614->g_25 p_1614->g_504 p_1614->g_76 p_1614->g_219 p_1614->g_145 p_1614->g_389 p_1614->g_371 p_1614->g_150 p_1614->g_136 p_1614->g_217 p_1614->g_365 p_1614->g_373 p_1614->g_612 p_1614->g_630
 * writes: p_1614->g_212 p_1614->g_143 p_1614->g_368 p_1614->g_327 p_1614->g_371 p_1614->g_25 p_1614->g_76 p_1614->g_389 p_1614->g_217 p_1614->g_612 p_1614->g_630
 */
uint8_t * func_19(uint64_t  p_20, uint8_t * p_21, struct S0 * p_1614)
{ /* block id: 314 */
    uint64_t l_519[8];
    int32_t *l_581 = &p_1614->g_76[1][1][3];
    uint64_t l_599 = 0x6278AFAC0C11730DL;
    int16_t l_610 = 0x07DDL;
    int64_t l_611 = 0x2C381D76D5AB3F12L;
    int32_t l_614 = (-6L);
    int32_t l_615[4];
    int64_t l_621 = 0x0DE882BD050476F7L;
    int32_t *l_625 = (void*)0;
    int32_t *l_626 = (void*)0;
    int32_t *l_627[8];
    int8_t l_629[6][2] = {{0x10L,0x52L},{0x10L,0x52L},{0x10L,0x52L},{0x10L,0x52L},{0x10L,0x52L},{0x10L,0x52L}};
    uint8_t *l_633 = &p_1614->g_25;
    int i, j;
    for (i = 0; i < 8; i++)
        l_519[i] = 0x29F59C99F7C7B3CDL;
    for (i = 0; i < 4; i++)
        l_615[i] = 0L;
    for (i = 0; i < 8; i++)
        l_627[i] = &p_1614->g_76[0][1][2];
    for (p_1614->g_212 = 13; (p_1614->g_212 != 31); p_1614->g_212++)
    { /* block id: 317 */
        int16_t l_490 = (-10L);
        int32_t l_507[10] = {0x60309815L,0x60309815L,0x60309815L,0x60309815L,0x60309815L,0x60309815L,0x60309815L,0x60309815L,0x60309815L,0x60309815L};
        int i;
        l_490 |= p_20;
        for (p_1614->g_143 = 3; (p_1614->g_143 <= 8); p_1614->g_143 += 1)
        { /* block id: 321 */
            int16_t l_494 = 0x18D3L;
            int32_t l_498 = 0x45A86475L;
            uint16_t l_548 = 3UL;
            uint64_t l_561 = 0x8FE78B8112E617C0L;
            int32_t l_572[6] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
            int i;
            for (p_1614->g_368 = 0; (p_1614->g_368 <= 3); p_1614->g_368 += 1)
            { /* block id: 324 */
                int32_t l_506 = (-3L);
                int i;
                if (p_1614->g_278[p_1614->g_368])
                { /* block id: 325 */
                    uint16_t l_549 = 0xB255L;
                    uint64_t l_550[3];
                    int i;
                    for (i = 0; i < 3; i++)
                        l_550[i] = 0xBD0839B2130E4B12L;
                    for (p_1614->g_327 = 0; (p_1614->g_327 <= 8); p_1614->g_327 += 1)
                    { /* block id: 328 */
                        int32_t **l_491 = (void*)0;
                        int8_t *l_497[7][9][4] = {{{(void*)0,&p_1614->g_219,&p_1614->g_219,&p_1614->g_219},{(void*)0,&p_1614->g_219,&p_1614->g_219,&p_1614->g_219},{(void*)0,&p_1614->g_219,&p_1614->g_219,&p_1614->g_219},{(void*)0,&p_1614->g_219,&p_1614->g_219,&p_1614->g_219},{(void*)0,&p_1614->g_219,&p_1614->g_219,&p_1614->g_219},{(void*)0,&p_1614->g_219,&p_1614->g_219,&p_1614->g_219},{(void*)0,&p_1614->g_219,&p_1614->g_219,&p_1614->g_219},{(void*)0,&p_1614->g_219,&p_1614->g_219,&p_1614->g_219},{(void*)0,&p_1614->g_219,&p_1614->g_219,&p_1614->g_219}},{{(void*)0,&p_1614->g_219,&p_1614->g_219,&p_1614->g_219},{(void*)0,&p_1614->g_219,&p_1614->g_219,&p_1614->g_219},{(void*)0,&p_1614->g_219,&p_1614->g_219,&p_1614->g_219},{(void*)0,&p_1614->g_219,&p_1614->g_219,&p_1614->g_219},{(void*)0,&p_1614->g_219,&p_1614->g_219,&p_1614->g_219},{(void*)0,&p_1614->g_219,&p_1614->g_219,&p_1614->g_219},{(void*)0,&p_1614->g_219,&p_1614->g_219,&p_1614->g_219},{(void*)0,&p_1614->g_219,&p_1614->g_219,&p_1614->g_219},{(void*)0,&p_1614->g_219,&p_1614->g_219,&p_1614->g_219}},{{(void*)0,&p_1614->g_219,&p_1614->g_219,&p_1614->g_219},{(void*)0,&p_1614->g_219,&p_1614->g_219,&p_1614->g_219},{(void*)0,&p_1614->g_219,&p_1614->g_219,&p_1614->g_219},{(void*)0,&p_1614->g_219,&p_1614->g_219,&p_1614->g_219},{(void*)0,&p_1614->g_219,&p_1614->g_219,&p_1614->g_219},{(void*)0,&p_1614->g_219,&p_1614->g_219,&p_1614->g_219},{(void*)0,&p_1614->g_219,&p_1614->g_219,&p_1614->g_219},{(void*)0,&p_1614->g_219,&p_1614->g_219,&p_1614->g_219},{(void*)0,&p_1614->g_219,&p_1614->g_219,&p_1614->g_219}},{{(void*)0,&p_1614->g_219,&p_1614->g_219,&p_1614->g_219},{(void*)0,&p_1614->g_219,&p_1614->g_219,&p_1614->g_219},{(void*)0,&p_1614->g_219,&p_1614->g_219,&p_1614->g_219},{(void*)0,&p_1614->g_219,&p_1614->g_219,&p_1614->g_219},{(void*)0,&p_1614->g_219,&p_1614->g_219,&p_1614->g_219},{(void*)0,&p_1614->g_219,&p_1614->g_219,&p_1614->g_219},{(void*)0,&p_1614->g_219,&p_1614->g_219,&p_1614->g_219},{(void*)0,&p_1614->g_219,&p_1614->g_219,&p_1614->g_219},{(void*)0,&p_1614->g_219,&p_1614->g_219,&p_1614->g_219}},{{(void*)0,&p_1614->g_219,&p_1614->g_219,&p_1614->g_219},{(void*)0,&p_1614->g_219,&p_1614->g_219,&p_1614->g_219},{(void*)0,&p_1614->g_219,&p_1614->g_219,&p_1614->g_219},{(void*)0,&p_1614->g_219,&p_1614->g_219,&p_1614->g_219},{(void*)0,&p_1614->g_219,&p_1614->g_219,&p_1614->g_219},{(void*)0,&p_1614->g_219,&p_1614->g_219,&p_1614->g_219},{(void*)0,&p_1614->g_219,&p_1614->g_219,&p_1614->g_219},{(void*)0,&p_1614->g_219,&p_1614->g_219,&p_1614->g_219},{(void*)0,&p_1614->g_219,&p_1614->g_219,&p_1614->g_219}},{{(void*)0,&p_1614->g_219,&p_1614->g_219,&p_1614->g_219},{(void*)0,&p_1614->g_219,&p_1614->g_219,&p_1614->g_219},{(void*)0,&p_1614->g_219,&p_1614->g_219,&p_1614->g_219},{(void*)0,&p_1614->g_219,&p_1614->g_219,&p_1614->g_219},{(void*)0,&p_1614->g_219,&p_1614->g_219,&p_1614->g_219},{(void*)0,&p_1614->g_219,&p_1614->g_219,&p_1614->g_219},{(void*)0,&p_1614->g_219,&p_1614->g_219,&p_1614->g_219},{(void*)0,&p_1614->g_219,&p_1614->g_219,&p_1614->g_219},{(void*)0,&p_1614->g_219,&p_1614->g_219,&p_1614->g_219}},{{(void*)0,&p_1614->g_219,&p_1614->g_219,&p_1614->g_219},{(void*)0,&p_1614->g_219,&p_1614->g_219,&p_1614->g_219},{(void*)0,&p_1614->g_219,&p_1614->g_219,&p_1614->g_219},{(void*)0,&p_1614->g_219,&p_1614->g_219,&p_1614->g_219},{(void*)0,&p_1614->g_219,&p_1614->g_219,&p_1614->g_219},{(void*)0,&p_1614->g_219,&p_1614->g_219,&p_1614->g_219},{(void*)0,&p_1614->g_219,&p_1614->g_219,&p_1614->g_219},{(void*)0,&p_1614->g_219,&p_1614->g_219,&p_1614->g_219},{(void*)0,&p_1614->g_219,&p_1614->g_219,&p_1614->g_219}}};
                        int32_t l_505 = 0x235AF570L;
                        int32_t *l_508 = (void*)0;
                        int32_t *l_509 = &p_1614->g_76[3][4][6];
                        int32_t *l_510 = (void*)0;
                        int32_t *l_511 = &l_505;
                        int32_t *l_512 = (void*)0;
                        int32_t *l_513 = &l_505;
                        int32_t *l_514 = &p_1614->g_76[0][1][2];
                        int32_t *l_515 = &p_1614->g_76[0][1][2];
                        int32_t *l_516 = &l_507[4];
                        int32_t *l_517 = (void*)0;
                        int32_t *l_518 = &l_506;
                        int i, j, k;
                        p_1614->g_371 = &p_1614->g_327;
                        l_505 |= ((((((((((*p_21) | (safe_rshift_func_uint8_t_u_s(l_494, 2))) <= (+((safe_rshift_func_int8_t_s_u(p_20, 2)) || (l_498 &= p_1614->g_368)))) < ((safe_sub_func_int8_t_s_s(0x4CL, (safe_div_func_int32_t_s_s(0x00685EB8L, (safe_unary_minus_func_uint64_t_u(((*p_21) | (p_20 == (p_1614->g_504 || l_490))))))))) || 7UL)) || p_20) ^ p_20) || 6L) , 3L) | 4294967295UL) <= p_20);
                        l_519[3]++;
                    }
                    if (p_20)
                        continue;
                    p_1614->g_327 ^= ((safe_rshift_func_int8_t_s_s((((safe_sub_func_uint16_t_u_u((safe_rshift_func_int8_t_s_u(p_20, ((((safe_add_func_uint64_t_u_u(FAKE_DIVERGE(p_1614->local_0_offset, get_local_id(0), 10), (((p_20 && (+(safe_lshift_func_uint16_t_u_s(GROUP_DIVERGE(1, 1), 8)))) , (~(safe_mul_func_int16_t_s_s((FAKE_DIVERGE(p_1614->local_2_offset, get_local_id(2), 10) >= (((((--(*p_21)) , (safe_mul_func_int8_t_s_s(p_1614->g_76[3][4][3], (7L > p_1614->g_278[p_1614->g_368])))) && 7L) != p_20) <= (safe_sub_func_int16_t_s_s((safe_lshift_func_uint16_t_u_u((safe_lshift_func_int8_t_s_s((((safe_sub_func_int64_t_s_s((FAKE_DIVERGE(p_1614->local_1_offset, get_local_id(1), 10) > ((safe_mul_func_uint8_t_u_u(l_548, (l_507[2] = l_549))) , p_1614->g_219)), l_519[3])) || p_20) , p_1614->g_145), 5)), p_1614->g_504)), 0x5FD9L)))), 0xCCE6L)))) && p_20))) > 18446744073709551615UL) ^ l_519[3]) <= 3L))), l_490)) ^ 0x24E5L) > 0xA0B1L), p_1614->g_389)) != l_550[0]);
                }
                else
                { /* block id: 338 */
                    uint32_t l_552 = 0xC32D7A43L;
                    int32_t *l_562 = &l_507[4];
                    uint16_t *l_563[3][9] = {{&p_1614->g_389,&p_1614->g_389,&p_1614->g_389,&p_1614->g_389,&p_1614->g_389,&p_1614->g_389,&p_1614->g_389,&p_1614->g_389,&p_1614->g_389},{&p_1614->g_389,&p_1614->g_389,&p_1614->g_389,&p_1614->g_389,&p_1614->g_389,&p_1614->g_389,&p_1614->g_389,&p_1614->g_389,&p_1614->g_389},{&p_1614->g_389,&p_1614->g_389,&p_1614->g_389,&p_1614->g_389,&p_1614->g_389,&p_1614->g_389,&p_1614->g_389,&p_1614->g_389,&p_1614->g_389}};
                    int32_t *l_564 = &l_506;
                    int32_t *l_565 = &l_507[4];
                    int32_t *l_566 = &p_1614->g_76[0][0][2];
                    int32_t *l_567 = &l_507[1];
                    int32_t *l_569 = &l_506;
                    int32_t *l_570 = &p_1614->g_76[0][1][2];
                    int32_t *l_571[1][7][3] = {{{&l_506,&l_506,&l_506},{&l_506,&l_506,&l_506},{&l_506,&l_506,&l_506},{&l_506,&l_506,&l_506},{&l_506,&l_506,&l_506},{&l_506,&l_506,&l_506},{&l_506,&l_506,&l_506}}};
                    uint16_t l_573 = 65535UL;
                    uint8_t *l_576 = (void*)0;
                    int i, j, k;
                    (*l_564) |= (4294967295UL <= (((safe_unary_minus_func_int8_t_s(l_519[3])) >= (((p_1614->g_278[p_1614->g_368] <= ((((0x5CL ^ ((p_1614->g_389 = (l_552 || ((*l_562) &= (((*p_1614->g_371) = p_20) , ((safe_rshift_func_int16_t_s_s((safe_mod_func_uint64_t_u_u((((((safe_mul_func_int8_t_s_s((0x54C2L != (safe_mul_func_uint8_t_u_u(0x5CL, (p_20 <= 0x7351L)))), p_20)) <= p_1614->g_150[1][0][2]) <= FAKE_DIVERGE(p_1614->global_0_offset, get_global_id(0), 10)) >= l_561) , 1UL), p_1614->g_150[0][0][1])), 6)) , l_561))))) == GROUP_DIVERGE(2, 1))) < l_519[2]) >= p_20) <= l_494)) , (*p_1614->g_136)) >= 0x21L)) , l_494));
                    ++l_573;
                    for (l_552 = 3; (l_552 <= 8); l_552 += 1)
                    { /* block id: 346 */
                        return l_576;
                    }
                }
            }
        }
        for (p_1614->g_389 = 24; (p_1614->g_389 >= 9); p_1614->g_389 = safe_sub_func_uint8_t_u_u(p_1614->g_389, 3))
        { /* block id: 354 */
            int32_t *l_579 = &p_1614->g_76[0][1][2];
            int32_t **l_580[8] = {&p_1614->g_371,&p_1614->g_371,&p_1614->g_371,&p_1614->g_371,&p_1614->g_371,&p_1614->g_371,&p_1614->g_371,&p_1614->g_371};
            int i;
            l_581 = l_579;
            (*p_1614->g_371) = (*p_1614->g_371);
        }
        if ((*p_1614->g_371))
            continue;
    }
    for (p_1614->g_217 = (-21); (p_1614->g_217 > 32); p_1614->g_217++)
    { /* block id: 362 */
        uint64_t l_584 = 3UL;
        int32_t *l_613[10][7][1] = {{{&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2]}},{{&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2]}},{{&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2]}},{{&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2]}},{{&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2]}},{{&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2]}},{{&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2]}},{{&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2]}},{{&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2]}},{{&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2]}}};
        uint8_t l_616 = 246UL;
        int32_t l_619[6] = {0x3803B494L,0x3803B494L,0x3803B494L,0x3803B494L,0x3803B494L,0x3803B494L};
        int64_t l_620[7][1][2];
        uint8_t l_622 = 0xE4L;
        int i, j, k;
        for (i = 0; i < 7; i++)
        {
            for (j = 0; j < 1; j++)
            {
                for (k = 0; k < 2; k++)
                    l_620[i][j][k] = 0x729B5EB439595B7EL;
            }
        }
        p_1614->g_612[0] ^= ((((*p_1614->g_371) = (+(FAKE_DIVERGE(p_1614->group_1_offset, get_group_id(1), 10) & l_584))) , (safe_mul_func_int8_t_s_s(((safe_sub_func_int64_t_s_s(0x623071EE42556337L, (safe_sub_func_int64_t_s_s((((*l_581) , (safe_div_func_uint16_t_u_u((safe_div_func_int32_t_s_s((l_584 >= (safe_rshift_func_uint16_t_u_s((safe_sub_func_uint64_t_u_u(p_1614->g_327, ((-6L) > l_599))), 7))), (safe_lshift_func_int8_t_s_s((safe_mul_func_uint16_t_u_u((safe_sub_func_uint64_t_u_u(((safe_div_func_uint64_t_u_u(((safe_mul_func_uint8_t_u_u((255UL == p_1614->g_278[3]), p_1614->g_365[0][5][1])) == p_1614->g_368), l_584)) < (-1L)), l_584)), l_610)), 5)))), p_20))) ^ p_1614->g_373[1]), p_20)))) , (-7L)), (*p_21)))) <= l_611);
        l_616--;
        l_622--;
    }
    ++p_1614->g_630;
    return l_633;
}


/* ------------------------------------------ */
/* 
 * reads : p_1614->g_25 p_1614->g_10 p_1614->g_76 p_1614->g_150 p_1614->g_217 p_1614->g_278 p_1614->g_371 p_1614->g_373 p_1614->g_145 p_1614->g_395 p_1614->g_389 p_1614->g_368 p_1614->g_327 p_1614->g_219 p_1614->g_447 p_1614->g_365 p_1614->g_136 p_1614->g_448 p_1614->g_143
 * writes: p_1614->g_25 p_1614->g_217 p_1614->g_365 p_1614->g_368 p_1614->g_371 p_1614->g_76 p_1614->g_145 p_1614->g_389 p_1614->g_327 p_1614->g_278 p_1614->g_212 p_1614->g_219 p_1614->g_450 p_1614->g_143 p_1614->g_448
 */
uint8_t * func_22(uint8_t * p_23, struct S0 * p_1614)
{ /* block id: 6 */
    uint32_t l_43 = 0xE1F230B5L;
    int64_t l_48[4][10] = {{0x34373C94681C37F5L,0x34373C94681C37F5L,0x34373C94681C37F5L,0x34373C94681C37F5L,0x34373C94681C37F5L,0x34373C94681C37F5L,0x34373C94681C37F5L,0x34373C94681C37F5L,0x34373C94681C37F5L,0x34373C94681C37F5L},{0x34373C94681C37F5L,0x34373C94681C37F5L,0x34373C94681C37F5L,0x34373C94681C37F5L,0x34373C94681C37F5L,0x34373C94681C37F5L,0x34373C94681C37F5L,0x34373C94681C37F5L,0x34373C94681C37F5L,0x34373C94681C37F5L},{0x34373C94681C37F5L,0x34373C94681C37F5L,0x34373C94681C37F5L,0x34373C94681C37F5L,0x34373C94681C37F5L,0x34373C94681C37F5L,0x34373C94681C37F5L,0x34373C94681C37F5L,0x34373C94681C37F5L,0x34373C94681C37F5L},{0x34373C94681C37F5L,0x34373C94681C37F5L,0x34373C94681C37F5L,0x34373C94681C37F5L,0x34373C94681C37F5L,0x34373C94681C37F5L,0x34373C94681C37F5L,0x34373C94681C37F5L,0x34373C94681C37F5L,0x34373C94681C37F5L}};
    uint8_t **l_57 = &p_1614->g_24[2][0];
    uint8_t *l_487 = &p_1614->g_25;
    int i, j;
    if ((atomic_inc(&p_1614->l_atomic_input[14]) == 7))
    { /* block id: 8 */
        int32_t l_26 = 0x37C39C9DL;
        for (l_26 = (-26); (l_26 != 2); l_26 = safe_add_func_uint64_t_u_u(l_26, 1))
        { /* block id: 11 */
            uint16_t l_29 = 65528UL;
            int32_t l_30 = 0x14FAF141L;
            int8_t l_31 = 0x1DL;
            int16_t l_32[6];
            int8_t l_33 = 4L;
            uint8_t l_34 = 8UL;
            int i;
            for (i = 0; i < 6; i++)
                l_32[i] = 0x5793L;
            l_30 ^= l_29;
            l_32[0] = l_31;
            --l_34;
        }
        unsigned int result = 0;
        result += l_26;
        atomic_add(&p_1614->l_special_values[14], result);
    }
    else
    { /* block id: 16 */
        (1 + 1);
    }
    (*p_1614->g_447) = func_37((safe_div_func_int32_t_s_s((-5L), (safe_add_func_int32_t_s_s((((l_43 >= l_43) & func_44(l_43, (l_48[3][3] = 1L), (~func_49(((func_55(l_57, p_1614) , ((*p_23) <= (safe_sub_func_uint32_t_u_u(l_43, l_43)))) || 0UL), l_43, l_43, p_1614)), p_1614)) == 0x7798C615B3E5DDB7L), p_1614->g_150[1][0][2])))), p_1614);
    (*p_1614->g_371) ^= (safe_unary_minus_func_uint8_t_u(0xD0L));
    return l_487;
}


/* ------------------------------------------ */
/* 
 * reads : p_1614->g_371 p_1614->g_76 p_1614->g_327 p_1614->g_278 p_1614->g_145 p_1614->g_136 p_1614->g_25 p_1614->g_150 p_1614->g_447 p_1614->g_448 p_1614->g_143
 * writes: p_1614->g_76 p_1614->g_327 p_1614->g_145 p_1614->g_143
 */
uint8_t ** func_37(uint64_t  p_38, struct S0 * p_1614)
{ /* block id: 296 */
    int32_t l_472 = 0x5F524C8DL;
    uint8_t **l_485 = &p_1614->g_24[0][6];
    (*p_1614->g_371) = (safe_mul_func_uint8_t_u_u(((*p_1614->g_371) != 0x001CB4D9L), p_1614->g_278[3]));
    for (p_1614->g_145 = 3; (p_1614->g_145 <= 38); ++p_1614->g_145)
    { /* block id: 300 */
        int16_t l_477 = 0L;
        (*p_1614->g_371) = ((((safe_add_func_int64_t_s_s((l_472 != (((((safe_div_func_uint8_t_u_u(l_472, 7UL)) < p_38) , (safe_mul_func_uint16_t_u_u(l_477, p_1614->g_327))) != (safe_add_func_uint32_t_u_u(((safe_lshift_func_int8_t_s_u(p_38, 5)) && ((*p_1614->g_136) == (!(safe_lshift_func_uint8_t_u_u(((l_477 != FAKE_DIVERGE(p_1614->global_0_offset, get_global_id(0), 10)) ^ p_1614->g_150[1][0][2]), 6))))), 1UL))) , FAKE_DIVERGE(p_1614->group_0_offset, get_group_id(0), 10))), p_1614->g_76[0][1][2])) , p_38) >= p_1614->g_278[0]) != 0x1A2D354B73870A89L);
        return (*p_1614->g_447);
    }
    for (p_1614->g_143 = 0; (p_1614->g_143 <= 4); p_1614->g_143 += 1)
    { /* block id: 306 */
        uint8_t **l_484[6][10] = {{&p_1614->g_136,&p_1614->g_24[6][0],&p_1614->g_24[3][1],&p_1614->g_24[1][1],&p_1614->g_24[6][0],&p_1614->g_24[1][1],&p_1614->g_24[3][1],&p_1614->g_24[6][0],&p_1614->g_136,&p_1614->g_136},{&p_1614->g_136,&p_1614->g_24[6][0],&p_1614->g_24[3][1],&p_1614->g_24[1][1],&p_1614->g_24[6][0],&p_1614->g_24[1][1],&p_1614->g_24[3][1],&p_1614->g_24[6][0],&p_1614->g_136,&p_1614->g_136},{&p_1614->g_136,&p_1614->g_24[6][0],&p_1614->g_24[3][1],&p_1614->g_24[1][1],&p_1614->g_24[6][0],&p_1614->g_24[1][1],&p_1614->g_24[3][1],&p_1614->g_24[6][0],&p_1614->g_136,&p_1614->g_136},{&p_1614->g_136,&p_1614->g_24[6][0],&p_1614->g_24[3][1],&p_1614->g_24[1][1],&p_1614->g_24[6][0],&p_1614->g_24[1][1],&p_1614->g_24[3][1],&p_1614->g_24[6][0],&p_1614->g_136,&p_1614->g_136},{&p_1614->g_136,&p_1614->g_24[6][0],&p_1614->g_24[3][1],&p_1614->g_24[1][1],&p_1614->g_24[6][0],&p_1614->g_24[1][1],&p_1614->g_24[3][1],&p_1614->g_24[6][0],&p_1614->g_136,&p_1614->g_136},{&p_1614->g_136,&p_1614->g_24[6][0],&p_1614->g_24[3][1],&p_1614->g_24[1][1],&p_1614->g_24[6][0],&p_1614->g_24[1][1],&p_1614->g_24[3][1],&p_1614->g_24[6][0],&p_1614->g_136,&p_1614->g_136}};
        int i, j;
        (*p_1614->g_371) = 0x10B8D289L;
        return l_484[1][9];
    }
    return l_485;
}


/* ------------------------------------------ */
/* 
 * reads : p_1614->g_389 p_1614->g_278 p_1614->g_368 p_1614->g_373 p_1614->g_327 p_1614->g_219 p_1614->g_395 p_1614->g_150 p_1614->g_145 p_1614->g_76 p_1614->g_447 p_1614->g_365 p_1614->g_136 p_1614->g_25
 * writes: p_1614->g_278 p_1614->g_212 p_1614->g_327 p_1614->g_219 p_1614->g_217 p_1614->g_389 p_1614->g_368 p_1614->g_371 p_1614->g_450 p_1614->g_76
 */
uint8_t  func_44(uint32_t  p_45, int64_t  p_46, uint32_t  p_47, struct S0 * p_1614)
{ /* block id: 250 */
    int16_t l_400 = 0x1F54L;
    uint16_t *l_403 = &p_1614->g_145;
    uint8_t **l_404 = &p_1614->g_24[3][1];
    int8_t *l_409[1][8];
    int32_t l_410 = 0x6D6EE752L;
    int64_t *l_411 = &p_1614->g_278[1];
    int32_t *l_412 = &p_1614->g_327;
    int32_t **l_413[9][8] = {{&p_1614->g_371,&p_1614->g_371,&l_412,&l_412,(void*)0,&p_1614->g_371,&l_412,&l_412},{&p_1614->g_371,&p_1614->g_371,&l_412,&l_412,(void*)0,&p_1614->g_371,&l_412,&l_412},{&p_1614->g_371,&p_1614->g_371,&l_412,&l_412,(void*)0,&p_1614->g_371,&l_412,&l_412},{&p_1614->g_371,&p_1614->g_371,&l_412,&l_412,(void*)0,&p_1614->g_371,&l_412,&l_412},{&p_1614->g_371,&p_1614->g_371,&l_412,&l_412,(void*)0,&p_1614->g_371,&l_412,&l_412},{&p_1614->g_371,&p_1614->g_371,&l_412,&l_412,(void*)0,&p_1614->g_371,&l_412,&l_412},{&p_1614->g_371,&p_1614->g_371,&l_412,&l_412,(void*)0,&p_1614->g_371,&l_412,&l_412},{&p_1614->g_371,&p_1614->g_371,&l_412,&l_412,(void*)0,&p_1614->g_371,&l_412,&l_412},{&p_1614->g_371,&p_1614->g_371,&l_412,&l_412,(void*)0,&p_1614->g_371,&l_412,&l_412}};
    int32_t *l_414 = &p_1614->g_76[0][1][2];
    int32_t l_442 = 0x73664B41L;
    uint8_t ***l_451 = (void*)0;
    int64_t l_460 = 0L;
    int i, j;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 8; j++)
            l_409[i][j] = (void*)0;
    }
    (*l_412) &= (l_400 , (safe_add_func_int32_t_s_s(((((p_1614->g_212 = ((((l_400 != l_400) && ((*l_411) |= (((((&p_1614->g_10 == l_403) < l_400) , l_404) == (void*)0) > (((l_410 = ((safe_rshift_func_int16_t_s_s((FAKE_DIVERGE(p_1614->local_1_offset, get_local_id(1), 10) < ((safe_lshift_func_int8_t_s_u((p_45 >= p_47), 0)) | p_1614->g_389)), l_400)) , p_45)) & 251UL) , l_400)))) > p_1614->g_368) < 1UL)) != l_400) || p_1614->g_373[1]) || l_400), 0xAA9F2933L)));
    l_414 = &p_1614->g_76[2][2][2];
    for (p_1614->g_219 = (-2); (p_1614->g_219 <= 23); p_1614->g_219 = safe_add_func_uint8_t_u_u(p_1614->g_219, 2))
    { /* block id: 258 */
        uint16_t l_419 = 65535UL;
        int32_t *l_457 = &p_1614->g_76[0][1][2];
        for (p_1614->g_217 = 0; (p_1614->g_217 > 10); p_1614->g_217 = safe_add_func_int32_t_s_s(p_1614->g_217, 1))
        { /* block id: 261 */
            uint8_t ****l_449[2][4] = {{&p_1614->g_447,&p_1614->g_447,&p_1614->g_447,&p_1614->g_447},{&p_1614->g_447,&p_1614->g_447,&p_1614->g_447,&p_1614->g_447}};
            int32_t *l_456 = &p_1614->g_76[3][4][2];
            int8_t *l_458[8][1][2] = {{{&p_1614->g_219,&p_1614->g_219}},{{&p_1614->g_219,&p_1614->g_219}},{{&p_1614->g_219,&p_1614->g_219}},{{&p_1614->g_219,&p_1614->g_219}},{{&p_1614->g_219,&p_1614->g_219}},{{&p_1614->g_219,&p_1614->g_219}},{{&p_1614->g_219,&p_1614->g_219}},{{&p_1614->g_219,&p_1614->g_219}}};
            int16_t *l_459 = &l_400;
            int32_t l_463 = (-4L);
            int64_t **l_464 = &l_411;
            int i, j, k;
            for (p_1614->g_389 = 0; (p_1614->g_389 <= 1); p_1614->g_389 += 1)
            { /* block id: 264 */
                int32_t *l_443 = &p_1614->g_76[0][1][2];
                for (p_1614->g_368 = 0; (p_1614->g_368 <= 1); p_1614->g_368 += 1)
                { /* block id: 267 */
                    int16_t *l_440 = (void*)0;
                    int16_t *l_441 = &l_400;
                    int i, j, k;
                    l_419 = (-1L);
                    l_442 |= ((safe_add_func_int32_t_s_s((((((safe_rshift_func_int16_t_s_u((safe_mod_func_int16_t_s_s(((void*)0 != p_1614->g_395), ((*l_441) ^= ((p_1614->g_327 = (((safe_lshift_func_int8_t_s_u((safe_lshift_func_int8_t_s_u(((safe_rshift_func_uint16_t_u_s(p_1614->g_150[p_1614->g_389][p_1614->g_389][p_1614->g_368], (&p_1614->g_212 != &p_47))) <= (safe_mod_func_int64_t_s_s(((safe_add_func_uint16_t_u_u((safe_rshift_func_uint16_t_u_u((safe_mul_func_int8_t_s_s(p_1614->g_373[(p_1614->g_389 + 1)], p_45)), 10)), p_1614->g_373[1])) , 0x5D5E2A941CB444F9L), 1UL))), 3)), p_46)) , l_404) != &p_1614->g_24[(p_1614->g_389 + 6)][(p_1614->g_389 + 1)])) < p_1614->g_145)))), 11)) ^ p_46) || GROUP_DIVERGE(0, 1)) >= p_1614->g_145) != 0x3CD66B01D89219C1L), (*l_414))) , p_46);
                }
                if (p_45)
                    break;
                p_1614->g_371 = l_443;
                for (p_1614->g_368 = 0; (p_1614->g_368 <= 2); p_1614->g_368 += 1)
                { /* block id: 277 */
                    return p_47;
                }
            }
            (*l_457) = (safe_unary_minus_func_uint16_t_u(((((*l_459) ^= ((safe_lshift_func_int8_t_s_u(((((p_1614->g_450[0][4] = p_1614->g_447) != (l_451 = &p_1614->g_448[0])) , &p_1614->g_219) != ((safe_lshift_func_int16_t_s_u((safe_mul_func_int16_t_s_s(0x1CE1L, 2UL)), (l_456 != l_457))) , l_458[2][0][0])), 0)) , p_46)) , (-3L)) == p_1614->g_365[0][5][1])));
            if (l_460)
                continue;
            if ((safe_add_func_int16_t_s_s(p_47, (0x665F2EECL || ((!((*l_456) |= 0x42DA7C67L)) < (p_47 == p_47))))))
            { /* block id: 287 */
                l_463 ^= (*l_457);
            }
            else
            { /* block id: 289 */
                int64_t ***l_465 = &l_464;
                (*l_465) = l_464;
            }
        }
    }
    p_1614->g_371 = &p_1614->g_327;
    return (*p_1614->g_136);
}


/* ------------------------------------------ */
/* 
 * reads : p_1614->g_25 p_1614->g_10 p_1614->g_76 p_1614->g_150 p_1614->g_217 p_1614->g_278 p_1614->g_371 p_1614->g_373 p_1614->g_145 p_1614->g_395
 * writes: p_1614->g_25 p_1614->g_217 p_1614->g_365 p_1614->g_368 p_1614->g_371 p_1614->g_76 p_1614->g_145 p_1614->g_389 p_1614->g_327
 */
uint32_t  func_49(uint32_t  p_50, int64_t  p_51, int32_t  p_52, struct S0 * p_1614)
{ /* block id: 22 */
    int32_t *l_75[7][10][3] = {{{&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2]}},{{&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2]}},{{&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2]}},{{&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2]}},{{&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2]}},{{&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2]}},{{&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2]},{&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2],&p_1614->g_76[0][1][2]}}};
    int8_t l_85 = (-1L);
    int16_t l_97 = 0x6811L;
    int8_t l_112 = (-1L);
    int16_t l_120 = 0x1E29L;
    int64_t l_121 = 1L;
    int32_t l_122 = 2L;
    int32_t l_123 = 0x1A28457BL;
    uint8_t *l_148 = &p_1614->g_25;
    uint8_t **l_204 = &l_148;
    uint8_t ***l_203 = &l_204;
    uint64_t *l_272 = (void*)0;
    int32_t l_279 = 0x47EE2F9BL;
    uint8_t **l_392[5];
    int16_t l_397[3];
    int i, j, k;
    for (i = 0; i < 5; i++)
        l_392[i] = &p_1614->g_24[3][1];
    for (i = 0; i < 3; i++)
        l_397[i] = (-1L);
    for (p_52 = (-19); (p_52 != (-20)); p_52--)
    { /* block id: 25 */
        uint8_t **l_65 = &p_1614->g_24[3][1];
        int32_t l_84 = (-1L);
        int32_t l_88[6][2] = {{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L}};
        int32_t l_91 = 1L;
        uint32_t l_113 = 4294967289UL;
        int32_t l_116 = (-6L);
        uint16_t l_124[2][10][9] = {{{0x2CEEL,0UL,1UL,0UL,0x5642L,1UL,9UL,0xB6FDL,65535UL},{0x2CEEL,0UL,1UL,0UL,0x5642L,1UL,9UL,0xB6FDL,65535UL},{0x2CEEL,0UL,1UL,0UL,0x5642L,1UL,9UL,0xB6FDL,65535UL},{0x2CEEL,0UL,1UL,0UL,0x5642L,1UL,9UL,0xB6FDL,65535UL},{0x2CEEL,0UL,1UL,0UL,0x5642L,1UL,9UL,0xB6FDL,65535UL},{0x2CEEL,0UL,1UL,0UL,0x5642L,1UL,9UL,0xB6FDL,65535UL},{0x2CEEL,0UL,1UL,0UL,0x5642L,1UL,9UL,0xB6FDL,65535UL},{0x2CEEL,0UL,1UL,0UL,0x5642L,1UL,9UL,0xB6FDL,65535UL},{0x2CEEL,0UL,1UL,0UL,0x5642L,1UL,9UL,0xB6FDL,65535UL},{0x2CEEL,0UL,1UL,0UL,0x5642L,1UL,9UL,0xB6FDL,65535UL}},{{0x2CEEL,0UL,1UL,0UL,0x5642L,1UL,9UL,0xB6FDL,65535UL},{0x2CEEL,0UL,1UL,0UL,0x5642L,1UL,9UL,0xB6FDL,65535UL},{0x2CEEL,0UL,1UL,0UL,0x5642L,1UL,9UL,0xB6FDL,65535UL},{0x2CEEL,0UL,1UL,0UL,0x5642L,1UL,9UL,0xB6FDL,65535UL},{0x2CEEL,0UL,1UL,0UL,0x5642L,1UL,9UL,0xB6FDL,65535UL},{0x2CEEL,0UL,1UL,0UL,0x5642L,1UL,9UL,0xB6FDL,65535UL},{0x2CEEL,0UL,1UL,0UL,0x5642L,1UL,9UL,0xB6FDL,65535UL},{0x2CEEL,0UL,1UL,0UL,0x5642L,1UL,9UL,0xB6FDL,65535UL},{0x2CEEL,0UL,1UL,0UL,0x5642L,1UL,9UL,0xB6FDL,65535UL},{0x2CEEL,0UL,1UL,0UL,0x5642L,1UL,9UL,0xB6FDL,65535UL}}};
        int i, j, k;
        for (p_1614->g_25 = 0; (p_1614->g_25 < 8); p_1614->g_25++)
        { /* block id: 28 */
            uint8_t ***l_66 = &l_65;
            int32_t l_67 = 0x6BA99949L;
            int32_t *l_68 = &l_67;
            int32_t l_79 = 0L;
            int32_t l_89[4][1][6] = {{{1L,(-7L),1L,(-7L),1L,1L}},{{1L,(-7L),1L,(-7L),1L,1L}},{{1L,(-7L),1L,(-7L),1L,1L}},{{1L,(-7L),1L,(-7L),1L,1L}}};
            int32_t l_102[1];
            int32_t l_105 = (-1L);
            uint32_t l_117[8] = {4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL};
            int i, j, k;
            for (i = 0; i < 1; i++)
                l_102[i] = 1L;
            (*l_66) = l_65;
            (*l_68) = l_67;
            for (p_50 = 0; (p_50 <= 32); ++p_50)
            { /* block id: 33 */
                uint64_t l_80 = 18446744073709551610UL;
                int32_t l_83 = (-10L);
                int32_t l_90 = (-5L);
                int32_t l_93 = 0x6C4145F5L;
                int32_t l_98 = 0x22966C64L;
                int32_t l_99 = (-1L);
                int32_t l_103 = 0x6BE2EA70L;
                int32_t l_106 = 0x33A0AE14L;
                int32_t l_107[9] = {6L,(-2L),6L,6L,(-2L),6L,6L,(-2L),6L};
                int i;
                for (l_67 = 6; (l_67 == 15); l_67 = safe_add_func_int8_t_s_s(l_67, 6))
                { /* block id: 36 */
                    int32_t *l_78 = &p_1614->g_76[0][1][2];
                    int32_t l_86 = 0x3B4FD8EDL;
                    int32_t l_87 = 0x28A1E48BL;
                    int32_t l_92 = 0x5F95DF25L;
                    int32_t l_94 = 0x33021B5AL;
                    int32_t l_95 = 1L;
                    int32_t l_96 = 1L;
                    int32_t l_100 = 0x517461B6L;
                    int32_t l_101 = (-6L);
                    int32_t l_104 = 7L;
                    int32_t l_108 = 1L;
                    int32_t l_109 = (-1L);
                    int32_t l_110 = 0x5ADCECC9L;
                    int32_t l_111[4][8][1];
                    int i, j, k;
                    for (i = 0; i < 4; i++)
                    {
                        for (j = 0; j < 8; j++)
                        {
                            for (k = 0; k < 1; k++)
                                l_111[i][j][k] = 0L;
                        }
                    }
                    if ((p_52 < (p_1614->g_10 & (safe_mul_func_uint8_t_u_u(1UL, 0x71L)))))
                    { /* block id: 37 */
                        int32_t **l_77[4] = {&l_75[1][3][0],&l_75[1][3][0],&l_75[1][3][0],&l_75[1][3][0]};
                        int i;
                        l_78 = l_75[2][1][0];
                        return p_1614->g_76[0][1][2];
                    }
                    else
                    { /* block id: 40 */
                        l_80++;
                    }
                    l_113++;
                }
                l_117[2]--;
            }
        }
        --l_124[0][8][3];
    }
    for (l_123 = 2; (l_123 >= 0); l_123 -= 1)
    { /* block id: 52 */
        uint8_t *l_137 = &p_1614->g_25;
        int32_t l_140 = 0x3EBAA8C9L;
        uint64_t l_191 = 0xF1799DDAC78B865EL;
        int32_t l_236[6] = {(-3L),(-3L),(-3L),(-3L),(-3L),(-3L)};
        uint8_t l_248 = 0xD9L;
        int32_t *l_257 = (void*)0;
        uint32_t *l_276 = &p_1614->g_212;
        int16_t *l_277[3];
        int32_t l_289 = (-6L);
        int64_t *l_346 = &l_121;
        uint32_t l_352 = 0x32C712BBL;
        int i;
        for (i = 0; i < 3; i++)
            l_277[i] = (void*)0;
        (1 + 1);
    }
    for (p_52 = 0; (p_52 <= 3); p_52 += 1)
    { /* block id: 208 */
        uint16_t *l_361 = &p_1614->g_145;
        int32_t *l_369 = &p_1614->g_76[2][1][2];
        uint16_t *l_388 = &p_1614->g_389;
        uint8_t **l_391 = &l_148;
        uint8_t ***l_390[3];
        uint8_t ***l_396 = &l_391;
        int32_t l_398 = 0x1B18BC2DL;
        uint64_t *l_399 = &p_1614->g_217;
        int i;
        for (i = 0; i < 3; i++)
            l_390[i] = &l_391;
        for (l_279 = 1; (l_279 >= 0); l_279 -= 1)
        { /* block id: 211 */
            for (l_120 = 1; (l_120 >= 0); l_120 -= 1)
            { /* block id: 214 */
                uint8_t *l_357 = (void*)0;
                uint16_t *l_362 = &p_1614->g_10;
                int32_t l_372[4][1] = {{0L},{0L},{0L},{0L}};
                int i, j;
                for (p_1614->g_217 = 0; (p_1614->g_217 <= 1); p_1614->g_217 += 1)
                { /* block id: 217 */
                    uint64_t *l_363 = (void*)0;
                    uint64_t *l_364 = &p_1614->g_365[0][5][1];
                    uint32_t l_366 = 8UL;
                    uint64_t *l_367[9][9][2] = {{{&p_1614->g_217,(void*)0},{&p_1614->g_217,(void*)0},{&p_1614->g_217,(void*)0},{&p_1614->g_217,(void*)0},{&p_1614->g_217,(void*)0},{&p_1614->g_217,(void*)0},{&p_1614->g_217,(void*)0},{&p_1614->g_217,(void*)0},{&p_1614->g_217,(void*)0}},{{&p_1614->g_217,(void*)0},{&p_1614->g_217,(void*)0},{&p_1614->g_217,(void*)0},{&p_1614->g_217,(void*)0},{&p_1614->g_217,(void*)0},{&p_1614->g_217,(void*)0},{&p_1614->g_217,(void*)0},{&p_1614->g_217,(void*)0},{&p_1614->g_217,(void*)0}},{{&p_1614->g_217,(void*)0},{&p_1614->g_217,(void*)0},{&p_1614->g_217,(void*)0},{&p_1614->g_217,(void*)0},{&p_1614->g_217,(void*)0},{&p_1614->g_217,(void*)0},{&p_1614->g_217,(void*)0},{&p_1614->g_217,(void*)0},{&p_1614->g_217,(void*)0}},{{&p_1614->g_217,(void*)0},{&p_1614->g_217,(void*)0},{&p_1614->g_217,(void*)0},{&p_1614->g_217,(void*)0},{&p_1614->g_217,(void*)0},{&p_1614->g_217,(void*)0},{&p_1614->g_217,(void*)0},{&p_1614->g_217,(void*)0},{&p_1614->g_217,(void*)0}},{{&p_1614->g_217,(void*)0},{&p_1614->g_217,(void*)0},{&p_1614->g_217,(void*)0},{&p_1614->g_217,(void*)0},{&p_1614->g_217,(void*)0},{&p_1614->g_217,(void*)0},{&p_1614->g_217,(void*)0},{&p_1614->g_217,(void*)0},{&p_1614->g_217,(void*)0}},{{&p_1614->g_217,(void*)0},{&p_1614->g_217,(void*)0},{&p_1614->g_217,(void*)0},{&p_1614->g_217,(void*)0},{&p_1614->g_217,(void*)0},{&p_1614->g_217,(void*)0},{&p_1614->g_217,(void*)0},{&p_1614->g_217,(void*)0},{&p_1614->g_217,(void*)0}},{{&p_1614->g_217,(void*)0},{&p_1614->g_217,(void*)0},{&p_1614->g_217,(void*)0},{&p_1614->g_217,(void*)0},{&p_1614->g_217,(void*)0},{&p_1614->g_217,(void*)0},{&p_1614->g_217,(void*)0},{&p_1614->g_217,(void*)0},{&p_1614->g_217,(void*)0}},{{&p_1614->g_217,(void*)0},{&p_1614->g_217,(void*)0},{&p_1614->g_217,(void*)0},{&p_1614->g_217,(void*)0},{&p_1614->g_217,(void*)0},{&p_1614->g_217,(void*)0},{&p_1614->g_217,(void*)0},{&p_1614->g_217,(void*)0},{&p_1614->g_217,(void*)0}},{{&p_1614->g_217,(void*)0},{&p_1614->g_217,(void*)0},{&p_1614->g_217,(void*)0},{&p_1614->g_217,(void*)0},{&p_1614->g_217,(void*)0},{&p_1614->g_217,(void*)0},{&p_1614->g_217,(void*)0},{&p_1614->g_217,(void*)0},{&p_1614->g_217,(void*)0}}};
                    int32_t **l_370[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
                    int i, j, k;
                    if ((atomic_inc(&p_1614->l_atomic_input[0]) == 3))
                    { /* block id: 219 */
                        int32_t l_354[10] = {0x2EE63EDAL,0x000C3181L,0x2EE63EDAL,0x2EE63EDAL,0x000C3181L,0x2EE63EDAL,0x2EE63EDAL,0x000C3181L,0x2EE63EDAL,0x2EE63EDAL};
                        int i, j, k;
                        l_354[1] = p_1614->g_150[l_279][l_279][(l_279 + 2)];
                        unsigned int result = 0;
                        int l_354_i0;
                        for (l_354_i0 = 0; l_354_i0 < 10; l_354_i0++) {
                            result += l_354[l_354_i0];
                        }
                        atomic_add(&p_1614->l_special_values[0], result);
                    }
                    else
                    { /* block id: 221 */
                        (1 + 1);
                    }
                    p_1614->g_371 = (((p_1614->g_368 = (safe_rshift_func_int8_t_s_s(((0x24126B59L | p_1614->g_150[l_120][l_279][(p_1614->g_217 + 2)]) <= ((((void*)0 != l_357) && ((*l_364) = ((safe_unary_minus_func_uint8_t_u(p_1614->g_150[l_120][p_1614->g_217][p_52])) < (0x18C7L == ((safe_add_func_uint32_t_u_u(((p_1614->g_150[p_1614->g_217][l_279][l_279] <= (1L && ((l_361 != l_362) , 4294967295UL))) , p_1614->g_278[l_120]), GROUP_DIVERGE(2, 1))) > 0x1967288D9B03651AL))))) | p_1614->g_278[p_52])), l_366))) , p_1614->g_278[1]) , l_369);
                    for (l_122 = 0; (l_122 <= 1); l_122 += 1)
                    { /* block id: 229 */
                        int i, j, k;
                        p_1614->g_76[l_279][(p_1614->g_217 + 3)][(p_1614->g_217 + 1)] = (!p_1614->g_278[p_52]);
                        (*p_1614->g_371) = p_1614->g_150[l_279][p_1614->g_217][(p_1614->g_217 + 2)];
                    }
                }
                (*l_369) = l_372[2][0];
                return l_372[1][0];
            }
            if (p_1614->g_373[1])
                continue;
            (*l_369) = p_50;
        }
        (*l_369) = (safe_mod_func_uint64_t_u_u((safe_div_func_uint64_t_u_u(p_51, (((*l_399) &= ((safe_rshift_func_uint16_t_u_s((+p_51), p_51)) | (safe_add_func_int8_t_s_s((safe_rshift_func_int16_t_s_u((safe_add_func_uint16_t_u_u(((*l_388) = ((*l_361)--)), (*l_369))), (+((l_392[3] = ((*l_203) = (p_50 , (*l_203)))) != &p_1614->g_24[3][1])))), (safe_mod_func_uint32_t_u_u(((l_398 = ((((((p_1614->g_395 != l_396) , &p_1614->g_25) != (**l_396)) != (*l_369)) || l_397[0]) ^ (*l_369))) == GROUP_DIVERGE(1, 1)), p_1614->g_278[0])))))) && p_50))), 0x0E22BC4BE7EAE31CL));
    }
    p_1614->g_327 = p_50;
    return p_1614->g_76[2][0][6];
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t  func_55(uint8_t ** p_56, struct S0 * p_1614)
{ /* block id: 20 */
    int32_t l_58 = 0x2E510B2DL;
    return l_58;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[24];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 24; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[24];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 24; i++)
            l_special_values[i] = 0;
    struct S0 c_1615;
    struct S0* p_1614 = &c_1615;
    struct S0 c_1616 = {
        246UL, // p_1614->g_4
        1UL, // p_1614->g_10
        0x6DL, // p_1614->g_18
        &p_1614->g_18, // p_1614->g_17
        3UL, // p_1614->g_25
        {{&p_1614->g_25,&p_1614->g_25,&p_1614->g_25,&p_1614->g_25,&p_1614->g_25,&p_1614->g_25,&p_1614->g_25,&p_1614->g_25,&p_1614->g_25},{&p_1614->g_25,&p_1614->g_25,&p_1614->g_25,&p_1614->g_25,&p_1614->g_25,&p_1614->g_25,&p_1614->g_25,&p_1614->g_25,&p_1614->g_25},{&p_1614->g_25,&p_1614->g_25,&p_1614->g_25,&p_1614->g_25,&p_1614->g_25,&p_1614->g_25,&p_1614->g_25,&p_1614->g_25,&p_1614->g_25},{&p_1614->g_25,&p_1614->g_25,&p_1614->g_25,&p_1614->g_25,&p_1614->g_25,&p_1614->g_25,&p_1614->g_25,&p_1614->g_25,&p_1614->g_25},{&p_1614->g_25,&p_1614->g_25,&p_1614->g_25,&p_1614->g_25,&p_1614->g_25,&p_1614->g_25,&p_1614->g_25,&p_1614->g_25,&p_1614->g_25},{&p_1614->g_25,&p_1614->g_25,&p_1614->g_25,&p_1614->g_25,&p_1614->g_25,&p_1614->g_25,&p_1614->g_25,&p_1614->g_25,&p_1614->g_25},{&p_1614->g_25,&p_1614->g_25,&p_1614->g_25,&p_1614->g_25,&p_1614->g_25,&p_1614->g_25,&p_1614->g_25,&p_1614->g_25,&p_1614->g_25},{&p_1614->g_25,&p_1614->g_25,&p_1614->g_25,&p_1614->g_25,&p_1614->g_25,&p_1614->g_25,&p_1614->g_25,&p_1614->g_25,&p_1614->g_25},{&p_1614->g_25,&p_1614->g_25,&p_1614->g_25,&p_1614->g_25,&p_1614->g_25,&p_1614->g_25,&p_1614->g_25,&p_1614->g_25,&p_1614->g_25}}, // p_1614->g_24
        {{{0x6A21F9F6L,0x3370C164L,0x4202D2A5L,0x04094784L,0x197FBCB1L,0x04094784L,0x4202D2A5L},{0x6A21F9F6L,0x3370C164L,0x4202D2A5L,0x04094784L,0x197FBCB1L,0x04094784L,0x4202D2A5L},{0x6A21F9F6L,0x3370C164L,0x4202D2A5L,0x04094784L,0x197FBCB1L,0x04094784L,0x4202D2A5L},{0x6A21F9F6L,0x3370C164L,0x4202D2A5L,0x04094784L,0x197FBCB1L,0x04094784L,0x4202D2A5L},{0x6A21F9F6L,0x3370C164L,0x4202D2A5L,0x04094784L,0x197FBCB1L,0x04094784L,0x4202D2A5L}},{{0x6A21F9F6L,0x3370C164L,0x4202D2A5L,0x04094784L,0x197FBCB1L,0x04094784L,0x4202D2A5L},{0x6A21F9F6L,0x3370C164L,0x4202D2A5L,0x04094784L,0x197FBCB1L,0x04094784L,0x4202D2A5L},{0x6A21F9F6L,0x3370C164L,0x4202D2A5L,0x04094784L,0x197FBCB1L,0x04094784L,0x4202D2A5L},{0x6A21F9F6L,0x3370C164L,0x4202D2A5L,0x04094784L,0x197FBCB1L,0x04094784L,0x4202D2A5L},{0x6A21F9F6L,0x3370C164L,0x4202D2A5L,0x04094784L,0x197FBCB1L,0x04094784L,0x4202D2A5L}},{{0x6A21F9F6L,0x3370C164L,0x4202D2A5L,0x04094784L,0x197FBCB1L,0x04094784L,0x4202D2A5L},{0x6A21F9F6L,0x3370C164L,0x4202D2A5L,0x04094784L,0x197FBCB1L,0x04094784L,0x4202D2A5L},{0x6A21F9F6L,0x3370C164L,0x4202D2A5L,0x04094784L,0x197FBCB1L,0x04094784L,0x4202D2A5L},{0x6A21F9F6L,0x3370C164L,0x4202D2A5L,0x04094784L,0x197FBCB1L,0x04094784L,0x4202D2A5L},{0x6A21F9F6L,0x3370C164L,0x4202D2A5L,0x04094784L,0x197FBCB1L,0x04094784L,0x4202D2A5L}},{{0x6A21F9F6L,0x3370C164L,0x4202D2A5L,0x04094784L,0x197FBCB1L,0x04094784L,0x4202D2A5L},{0x6A21F9F6L,0x3370C164L,0x4202D2A5L,0x04094784L,0x197FBCB1L,0x04094784L,0x4202D2A5L},{0x6A21F9F6L,0x3370C164L,0x4202D2A5L,0x04094784L,0x197FBCB1L,0x04094784L,0x4202D2A5L},{0x6A21F9F6L,0x3370C164L,0x4202D2A5L,0x04094784L,0x197FBCB1L,0x04094784L,0x4202D2A5L},{0x6A21F9F6L,0x3370C164L,0x4202D2A5L,0x04094784L,0x197FBCB1L,0x04094784L,0x4202D2A5L}},{{0x6A21F9F6L,0x3370C164L,0x4202D2A5L,0x04094784L,0x197FBCB1L,0x04094784L,0x4202D2A5L},{0x6A21F9F6L,0x3370C164L,0x4202D2A5L,0x04094784L,0x197FBCB1L,0x04094784L,0x4202D2A5L},{0x6A21F9F6L,0x3370C164L,0x4202D2A5L,0x04094784L,0x197FBCB1L,0x04094784L,0x4202D2A5L},{0x6A21F9F6L,0x3370C164L,0x4202D2A5L,0x04094784L,0x197FBCB1L,0x04094784L,0x4202D2A5L},{0x6A21F9F6L,0x3370C164L,0x4202D2A5L,0x04094784L,0x197FBCB1L,0x04094784L,0x4202D2A5L}}}, // p_1614->g_76
        &p_1614->g_25, // p_1614->g_136
        0x50EB9A2FL, // p_1614->g_143
        0x3314L, // p_1614->g_145
        {{{7UL,7UL,7UL,7UL,7UL},{7UL,7UL,7UL,7UL,7UL}},{{7UL,7UL,7UL,7UL,7UL},{7UL,7UL,7UL,7UL,7UL}}}, // p_1614->g_150
        0x1EBA4C44L, // p_1614->g_212
        0x8DFB0274BA769C1AL, // p_1614->g_217
        0x0FL, // p_1614->g_219
        {(-9L),(-9L),(-9L),(-9L)}, // p_1614->g_278
        1L, // p_1614->g_327
        {{{0xDBBBE6B68F270C1EL,0xDBBBE6B68F270C1EL},{0xDBBBE6B68F270C1EL,0xDBBBE6B68F270C1EL},{0xDBBBE6B68F270C1EL,0xDBBBE6B68F270C1EL},{0xDBBBE6B68F270C1EL,0xDBBBE6B68F270C1EL},{0xDBBBE6B68F270C1EL,0xDBBBE6B68F270C1EL},{0xDBBBE6B68F270C1EL,0xDBBBE6B68F270C1EL}},{{0xDBBBE6B68F270C1EL,0xDBBBE6B68F270C1EL},{0xDBBBE6B68F270C1EL,0xDBBBE6B68F270C1EL},{0xDBBBE6B68F270C1EL,0xDBBBE6B68F270C1EL},{0xDBBBE6B68F270C1EL,0xDBBBE6B68F270C1EL},{0xDBBBE6B68F270C1EL,0xDBBBE6B68F270C1EL},{0xDBBBE6B68F270C1EL,0xDBBBE6B68F270C1EL}},{{0xDBBBE6B68F270C1EL,0xDBBBE6B68F270C1EL},{0xDBBBE6B68F270C1EL,0xDBBBE6B68F270C1EL},{0xDBBBE6B68F270C1EL,0xDBBBE6B68F270C1EL},{0xDBBBE6B68F270C1EL,0xDBBBE6B68F270C1EL},{0xDBBBE6B68F270C1EL,0xDBBBE6B68F270C1EL},{0xDBBBE6B68F270C1EL,0xDBBBE6B68F270C1EL}},{{0xDBBBE6B68F270C1EL,0xDBBBE6B68F270C1EL},{0xDBBBE6B68F270C1EL,0xDBBBE6B68F270C1EL},{0xDBBBE6B68F270C1EL,0xDBBBE6B68F270C1EL},{0xDBBBE6B68F270C1EL,0xDBBBE6B68F270C1EL},{0xDBBBE6B68F270C1EL,0xDBBBE6B68F270C1EL},{0xDBBBE6B68F270C1EL,0xDBBBE6B68F270C1EL}},{{0xDBBBE6B68F270C1EL,0xDBBBE6B68F270C1EL},{0xDBBBE6B68F270C1EL,0xDBBBE6B68F270C1EL},{0xDBBBE6B68F270C1EL,0xDBBBE6B68F270C1EL},{0xDBBBE6B68F270C1EL,0xDBBBE6B68F270C1EL},{0xDBBBE6B68F270C1EL,0xDBBBE6B68F270C1EL},{0xDBBBE6B68F270C1EL,0xDBBBE6B68F270C1EL}},{{0xDBBBE6B68F270C1EL,0xDBBBE6B68F270C1EL},{0xDBBBE6B68F270C1EL,0xDBBBE6B68F270C1EL},{0xDBBBE6B68F270C1EL,0xDBBBE6B68F270C1EL},{0xDBBBE6B68F270C1EL,0xDBBBE6B68F270C1EL},{0xDBBBE6B68F270C1EL,0xDBBBE6B68F270C1EL},{0xDBBBE6B68F270C1EL,0xDBBBE6B68F270C1EL}},{{0xDBBBE6B68F270C1EL,0xDBBBE6B68F270C1EL},{0xDBBBE6B68F270C1EL,0xDBBBE6B68F270C1EL},{0xDBBBE6B68F270C1EL,0xDBBBE6B68F270C1EL},{0xDBBBE6B68F270C1EL,0xDBBBE6B68F270C1EL},{0xDBBBE6B68F270C1EL,0xDBBBE6B68F270C1EL},{0xDBBBE6B68F270C1EL,0xDBBBE6B68F270C1EL}},{{0xDBBBE6B68F270C1EL,0xDBBBE6B68F270C1EL},{0xDBBBE6B68F270C1EL,0xDBBBE6B68F270C1EL},{0xDBBBE6B68F270C1EL,0xDBBBE6B68F270C1EL},{0xDBBBE6B68F270C1EL,0xDBBBE6B68F270C1EL},{0xDBBBE6B68F270C1EL,0xDBBBE6B68F270C1EL},{0xDBBBE6B68F270C1EL,0xDBBBE6B68F270C1EL}},{{0xDBBBE6B68F270C1EL,0xDBBBE6B68F270C1EL},{0xDBBBE6B68F270C1EL,0xDBBBE6B68F270C1EL},{0xDBBBE6B68F270C1EL,0xDBBBE6B68F270C1EL},{0xDBBBE6B68F270C1EL,0xDBBBE6B68F270C1EL},{0xDBBBE6B68F270C1EL,0xDBBBE6B68F270C1EL},{0xDBBBE6B68F270C1EL,0xDBBBE6B68F270C1EL}}}, // p_1614->g_365
        0xD2E0B3E10DE8473CL, // p_1614->g_368
        (void*)0, // p_1614->g_371
        {1UL,1UL,1UL}, // p_1614->g_373
        0x6FC7L, // p_1614->g_389
        (void*)0, // p_1614->g_395
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_1614->g_448
        &p_1614->g_448[0], // p_1614->g_447
        {{&p_1614->g_448[0],&p_1614->g_448[0],&p_1614->g_448[0],&p_1614->g_448[0],&p_1614->g_448[0],&p_1614->g_448[0],&p_1614->g_448[0]},{&p_1614->g_448[0],&p_1614->g_448[0],&p_1614->g_448[0],&p_1614->g_448[0],&p_1614->g_448[0],&p_1614->g_448[0],&p_1614->g_448[0]}}, // p_1614->g_450
        0L, // p_1614->g_504
        0x46B25B68L, // p_1614->g_568
        {6UL,6UL,6UL,6UL,6UL}, // p_1614->g_612
        {0x40FDL,0x40FDL,0x40FDL,0x40FDL,0x40FDL,0x40FDL,0x40FDL,0x40FDL,0x40FDL,0x40FDL}, // p_1614->g_628
        0xDC4DL, // p_1614->g_630
        0x541D1F4CL, // p_1614->g_646
        {0UL,0UL,0UL,0UL}, // p_1614->g_681
        0x246F1A75967D7B5EL, // p_1614->g_684
        0x21EE4B7EL, // p_1614->g_686
        0x9634490C4EF975DDL, // p_1614->g_698
        (void*)0, // p_1614->g_719
        &p_1614->g_719, // p_1614->g_718
        2L, // p_1614->g_731
        3L, // p_1614->g_768
        0x75L, // p_1614->g_795
        (void*)0, // p_1614->g_827
        {(void*)0,(void*)0}, // p_1614->g_837
        &p_1614->g_686, // p_1614->g_838
        (void*)0, // p_1614->g_1081
        (void*)0, // p_1614->g_1099
        &p_1614->g_1099, // p_1614->g_1098
        0x2D7D68C518A50235L, // p_1614->g_1203
        {&p_1614->g_217,&p_1614->g_1203,&p_1614->g_217,&p_1614->g_217,&p_1614->g_1203,&p_1614->g_217,&p_1614->g_217}, // p_1614->g_1275
        &p_1614->g_1275[5], // p_1614->g_1274
        65535UL, // p_1614->g_1305
        &p_1614->g_504, // p_1614->g_1401
        0x0A4B8740B0CDDC4EL, // p_1614->g_1404
        2L, // p_1614->g_1431
        {&p_1614->g_278[1],&p_1614->g_278[1],&p_1614->g_278[1],&p_1614->g_278[1],&p_1614->g_278[1]}, // p_1614->g_1488
        {&p_1614->g_1488[3],&p_1614->g_1488[3],&p_1614->g_1488[3],&p_1614->g_1488[3],&p_1614->g_1488[3]}, // p_1614->g_1487
        (void*)0, // p_1614->g_1527
        &p_1614->g_646, // p_1614->g_1528
        (-2L), // p_1614->g_1591
        sequence_input[get_global_id(0)], // p_1614->global_0_offset
        sequence_input[get_global_id(1)], // p_1614->global_1_offset
        sequence_input[get_global_id(2)], // p_1614->global_2_offset
        sequence_input[get_local_id(0)], // p_1614->local_0_offset
        sequence_input[get_local_id(1)], // p_1614->local_1_offset
        sequence_input[get_local_id(2)], // p_1614->local_2_offset
        sequence_input[get_group_id(0)], // p_1614->group_0_offset
        sequence_input[get_group_id(1)], // p_1614->group_1_offset
        sequence_input[get_group_id(2)], // p_1614->group_2_offset
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
    };
    c_1615 = c_1616;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1614);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1614->g_4, "p_1614->g_4", print_hash_value);
    transparent_crc(p_1614->g_10, "p_1614->g_10", print_hash_value);
    transparent_crc(p_1614->g_18, "p_1614->g_18", print_hash_value);
    transparent_crc(p_1614->g_25, "p_1614->g_25", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 5; j++)
        {
            for (k = 0; k < 7; k++)
            {
                transparent_crc(p_1614->g_76[i][j][k], "p_1614->g_76[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1614->g_143, "p_1614->g_143", print_hash_value);
    transparent_crc(p_1614->g_145, "p_1614->g_145", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_1614->g_150[i][j][k], "p_1614->g_150[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1614->g_212, "p_1614->g_212", print_hash_value);
    transparent_crc(p_1614->g_217, "p_1614->g_217", print_hash_value);
    transparent_crc(p_1614->g_219, "p_1614->g_219", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1614->g_278[i], "p_1614->g_278[i]", print_hash_value);

    }
    transparent_crc(p_1614->g_327, "p_1614->g_327", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 6; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_1614->g_365[i][j][k], "p_1614->g_365[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1614->g_368, "p_1614->g_368", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_1614->g_373[i], "p_1614->g_373[i]", print_hash_value);

    }
    transparent_crc(p_1614->g_389, "p_1614->g_389", print_hash_value);
    transparent_crc(p_1614->g_504, "p_1614->g_504", print_hash_value);
    transparent_crc(p_1614->g_568, "p_1614->g_568", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_1614->g_612[i], "p_1614->g_612[i]", print_hash_value);

    }
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1614->g_628[i], "p_1614->g_628[i]", print_hash_value);

    }
    transparent_crc(p_1614->g_630, "p_1614->g_630", print_hash_value);
    transparent_crc(p_1614->g_646, "p_1614->g_646", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1614->g_681[i], "p_1614->g_681[i]", print_hash_value);

    }
    transparent_crc(p_1614->g_684, "p_1614->g_684", print_hash_value);
    transparent_crc(p_1614->g_686, "p_1614->g_686", print_hash_value);
    transparent_crc(p_1614->g_698, "p_1614->g_698", print_hash_value);
    transparent_crc(p_1614->g_731, "p_1614->g_731", print_hash_value);
    transparent_crc(p_1614->g_768, "p_1614->g_768", print_hash_value);
    transparent_crc(p_1614->g_795, "p_1614->g_795", print_hash_value);
    transparent_crc(p_1614->g_1203, "p_1614->g_1203", print_hash_value);
    transparent_crc(p_1614->g_1305, "p_1614->g_1305", print_hash_value);
    transparent_crc(p_1614->g_1404, "p_1614->g_1404", print_hash_value);
    transparent_crc(p_1614->g_1431, "p_1614->g_1431", print_hash_value);
    transparent_crc(p_1614->g_1591, "p_1614->g_1591", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 24; i++)
            transparent_crc(p_1614->g_special_values[i + 24 * get_linear_group_id()], "p_1614->g_special_values[i + 24 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 24; i++)
            transparent_crc(p_1614->l_special_values[i], "p_1614->l_special_values[i]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
