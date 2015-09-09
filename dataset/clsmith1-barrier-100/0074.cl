// ---fake_divergence ---inter_thread_comm -g 12,82,10 -l 12,1,2
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

__constant uint32_t permutations[10][24] = {
{21,5,6,11,2,16,0,17,4,14,15,13,20,19,10,12,7,23,8,9,22,1,18,3}, // permutation 0
{19,22,14,12,11,5,7,13,0,4,8,23,3,2,6,9,15,16,20,21,18,17,10,1}, // permutation 1
{18,6,4,0,10,14,17,3,11,1,9,22,15,8,21,13,23,7,2,19,16,20,12,5}, // permutation 2
{22,0,20,18,17,19,5,15,13,12,14,8,16,4,1,10,6,11,3,7,9,23,21,2}, // permutation 3
{15,20,23,5,19,4,0,3,22,9,18,13,7,6,11,12,21,10,14,1,17,2,8,16}, // permutation 4
{9,8,2,0,5,18,1,3,14,6,23,11,22,17,10,7,20,12,13,16,21,4,19,15}, // permutation 5
{4,13,2,5,16,12,11,18,10,19,0,23,22,7,21,17,3,14,8,20,9,1,6,15}, // permutation 6
{6,5,22,9,16,3,20,23,10,12,0,1,2,17,15,14,4,7,18,8,11,21,19,13}, // permutation 7
{14,0,15,9,13,22,17,11,10,1,21,4,6,19,23,12,2,3,16,8,20,18,7,5}, // permutation 8
{5,13,22,8,21,23,4,9,0,16,2,20,3,18,6,7,14,11,19,12,15,17,10,1} // permutation 9
};

// Seed: 74

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    int32_t g_3;
    uint16_t g_11;
    int32_t g_50[5][10];
    uint16_t g_87;
    int32_t g_92;
    int32_t g_112;
    volatile int32_t g_115;
    volatile uint8_t g_116;
    uint8_t g_122[6];
    uint16_t g_127;
    uint32_t g_128;
    uint32_t g_130;
    int8_t g_157[8];
    uint16_t g_158;
    int32_t * volatile g_163[10];
    uint64_t g_192;
    uint32_t g_200;
    int32_t *g_205[4];
    int32_t ** volatile g_204;
    int64_t g_257;
    int16_t g_282;
    int64_t *g_285[3][4][4];
    int64_t ** volatile g_284;
    int16_t *g_352;
    int32_t * volatile g_356[7];
    int32_t * volatile g_357;
    uint32_t **g_360;
    uint16_t g_395;
    volatile uint32_t g_465[9];
    int32_t ** volatile g_478;
    volatile int8_t g_523;
    uint8_t *g_572;
    uint8_t ** volatile g_571;
    int8_t *g_576;
    int8_t **g_575;
    int32_t ** volatile g_580;
    int32_t ** volatile g_582[3];
    int32_t ** volatile g_583;
    int64_t *g_617;
    int32_t ** volatile g_653[7][3];
    int32_t ** volatile g_654;
    volatile uint32_t g_680;
    volatile uint32_t *g_679;
    volatile uint32_t **g_678;
    uint32_t g_682;
    int16_t g_685;
    int32_t ** volatile g_690;
    int16_t **g_703[9][9][1];
    int16_t g_712;
    int64_t **g_810[1];
    int64_t *** volatile g_809;
    volatile uint8_t g_822;
    int32_t * volatile g_866;
    int32_t * volatile g_923;
    int32_t * volatile g_925;
    uint8_t **g_931;
    uint16_t g_956;
    int32_t g_959;
    volatile uint64_t *g_974;
    volatile uint64_t * volatile * volatile g_973;
    int8_t g_980;
    uint32_t g_981[8][5][6];
    int16_t * volatile * volatile g_1003;
    int32_t ** volatile g_1047;
    uint8_t g_1049;
    volatile uint32_t * volatile *g_1066;
    volatile uint32_t * volatile **g_1065;
    volatile uint32_t * volatile *** volatile g_1064[7];
    uint32_t *g_1162;
    uint32_t **g_1161;
    uint32_t ***g_1160;
    int16_t g_1182;
    volatile int64_t g_1284;
    int32_t * volatile g_1292;
    int32_t * volatile *g_1291[7];
    int32_t * volatile ** volatile g_1293;
    int32_t g_1454[1][3];
    uint8_t g_1536;
    int32_t ** volatile g_1538;
    volatile int32_t g_1609;
    int32_t ** volatile g_1629;
    volatile uint32_t g_1654;
    volatile uint32_t * volatile ***g_1681;
    volatile uint32_t * volatile ****g_1680;
    int32_t ** volatile g_1685;
    int32_t ** volatile g_1717;
    int64_t g_1724;
    volatile int64_t g_1815[7][3][7];
    uint32_t g_1872;
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
int64_t  func_1(struct S0 * p_1908);
int32_t * func_20(int64_t  p_21, int32_t  p_22, int64_t  p_23, int32_t  p_24, struct S0 * p_1908);
int32_t * func_25(int32_t  p_26, int32_t * p_27, int32_t * p_28, int32_t * p_29, struct S0 * p_1908);
uint8_t  func_34(int32_t  p_35, int16_t  p_36, int32_t * p_37, int32_t * p_38, int32_t  p_39, struct S0 * p_1908);
int64_t  func_41(uint64_t  p_42, uint64_t  p_43, struct S0 * p_1908);
int32_t  func_72(uint64_t  p_73, int32_t * p_74, int32_t * p_75, uint64_t  p_76, int32_t  p_77, struct S0 * p_1908);
int32_t * func_78(int32_t * p_79, int32_t  p_80, struct S0 * p_1908);
int32_t * func_81(uint16_t  p_82, int32_t * p_83, struct S0 * p_1908);
int8_t  func_97(int32_t * p_98, uint64_t  p_99, int64_t  p_100, uint16_t * p_101, struct S0 * p_1908);
uint8_t  func_103(int64_t  p_104, uint16_t  p_105, int16_t  p_106, struct S0 * p_1908);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1908->g_11 p_1908->g_3 p_1908->g_1182
 * writes: p_1908->g_11 p_1908->g_3
 */
int64_t  func_1(struct S0 * p_1908)
{ /* block id: 4 */
    int32_t *l_2 = &p_1908->g_3;
    int32_t *l_4 = (void*)0;
    int32_t *l_5 = &p_1908->g_3;
    int32_t *l_6 = &p_1908->g_3;
    int32_t *l_7 = (void*)0;
    int32_t *l_8 = &p_1908->g_3;
    int32_t l_9 = 0x22A149CEL;
    int32_t *l_10[5][6] = {{&l_9,&p_1908->g_3,&p_1908->g_3,&l_9,&l_9,&p_1908->g_3},{&l_9,&p_1908->g_3,&p_1908->g_3,&l_9,&l_9,&p_1908->g_3},{&l_9,&p_1908->g_3,&p_1908->g_3,&l_9,&l_9,&p_1908->g_3},{&l_9,&p_1908->g_3,&p_1908->g_3,&l_9,&l_9,&p_1908->g_3},{&l_9,&p_1908->g_3,&p_1908->g_3,&l_9,&l_9,&p_1908->g_3}};
    int64_t l_44 = 0L;
    uint32_t l_1652 = 1UL;
    uint64_t l_1708 = 0x57E56CA9281C335CL;
    uint64_t l_1713 = 0x5B5FC5D0DC284A1BL;
    int8_t l_1714 = 0x4FL;
    uint64_t l_1742 = 18446744073709551615UL;
    uint32_t **l_1745 = (void*)0;
    int8_t ***l_1757 = &p_1908->g_575;
    int8_t ****l_1756[1][3][10] = {{{(void*)0,(void*)0,&l_1757,(void*)0,(void*)0,(void*)0,(void*)0,&l_1757,(void*)0,(void*)0},{(void*)0,(void*)0,&l_1757,(void*)0,(void*)0,(void*)0,(void*)0,&l_1757,(void*)0,(void*)0},{(void*)0,(void*)0,&l_1757,(void*)0,(void*)0,(void*)0,(void*)0,&l_1757,(void*)0,(void*)0}}};
    int8_t l_1778 = 0x01L;
    int16_t l_1785 = 0x6549L;
    uint32_t l_1791 = 0xF9F80FF5L;
    uint8_t ***l_1845 = (void*)0;
    uint8_t *l_1884 = &p_1908->g_1536;
    uint16_t l_1901 = 65535UL;
    int32_t l_1903 = 0x695E94A5L;
    int16_t l_1904 = 0L;
    int32_t l_1905 = (-8L);
    int i, j, k;
    ++p_1908->g_11;
    for (p_1908->g_3 = 23; (p_1908->g_3 < 29); p_1908->g_3 = safe_add_func_uint8_t_u_u(p_1908->g_3, 6))
    { /* block id: 8 */
        uint16_t l_40[5][9][1] = {{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL},{1UL}}};
        uint32_t ***l_1647 = (void*)0;
        int32_t l_1658 = 1L;
        int8_t **l_1679 = (void*)0;
        int8_t l_1683 = 0x0CL;
        int32_t l_1684 = 0x679CC1C4L;
        int64_t *l_1723 = &p_1908->g_1724;
        uint8_t l_1727 = 0x8AL;
        uint32_t l_1740 = 0xFFE82A57L;
        int8_t **l_1741 = &p_1908->g_576;
        int32_t *l_1751[3];
        uint32_t **l_1789 = &p_1908->g_1162;
        int32_t l_1811 = 0x20A8692EL;
        uint8_t l_1812 = 0x2FL;
        uint64_t l_1817[2];
        uint32_t l_1874 = 0UL;
        uint32_t ****l_1907 = &l_1647;
        uint32_t *****l_1906 = &l_1907;
        int i, j, k;
        for (i = 0; i < 3; i++)
            l_1751[i] = (void*)0;
        for (i = 0; i < 2; i++)
            l_1817[i] = 0UL;
        for (p_1908->g_11 = (-14); (p_1908->g_11 > 1); p_1908->g_11++)
        { /* block id: 11 */
            int32_t *l_966[7];
            int64_t l_1290[7][6][1] = {{{0x2B4DF30CEC503854L},{0x2B4DF30CEC503854L},{0x2B4DF30CEC503854L},{0x2B4DF30CEC503854L},{0x2B4DF30CEC503854L},{0x2B4DF30CEC503854L}},{{0x2B4DF30CEC503854L},{0x2B4DF30CEC503854L},{0x2B4DF30CEC503854L},{0x2B4DF30CEC503854L},{0x2B4DF30CEC503854L},{0x2B4DF30CEC503854L}},{{0x2B4DF30CEC503854L},{0x2B4DF30CEC503854L},{0x2B4DF30CEC503854L},{0x2B4DF30CEC503854L},{0x2B4DF30CEC503854L},{0x2B4DF30CEC503854L}},{{0x2B4DF30CEC503854L},{0x2B4DF30CEC503854L},{0x2B4DF30CEC503854L},{0x2B4DF30CEC503854L},{0x2B4DF30CEC503854L},{0x2B4DF30CEC503854L}},{{0x2B4DF30CEC503854L},{0x2B4DF30CEC503854L},{0x2B4DF30CEC503854L},{0x2B4DF30CEC503854L},{0x2B4DF30CEC503854L},{0x2B4DF30CEC503854L}},{{0x2B4DF30CEC503854L},{0x2B4DF30CEC503854L},{0x2B4DF30CEC503854L},{0x2B4DF30CEC503854L},{0x2B4DF30CEC503854L},{0x2B4DF30CEC503854L}},{{0x2B4DF30CEC503854L},{0x2B4DF30CEC503854L},{0x2B4DF30CEC503854L},{0x2B4DF30CEC503854L},{0x2B4DF30CEC503854L},{0x2B4DF30CEC503854L}}};
            int32_t **l_1295 = &l_10[4][4];
            uint32_t l_1296 = 1UL;
            int i, j, k;
            for (i = 0; i < 7; i++)
                l_966[i] = (void*)0;
            (1 + 1);
        }
    }
    return p_1908->g_1182;
}


/* ------------------------------------------ */
/* 
 * reads : p_1908->g_575 p_1908->g_576 p_1908->g_712 p_1908->g_92 p_1908->g_931 p_1908->g_572 p_1908->g_122 p_1908->g_1162 p_1908->g_192 p_1908->g_1161 p_1908->g_130 p_1908->g_1160 p_1908->g_682 p_1908->l_comm_values p_1908->g_685 p_1908->g_352 p_1908->g_257 p_1908->g_956 p_1908->g_980 p_1908->g_866 p_1908->g_50 p_1908->g_925 p_1908->g_157 p_1908->g_809 p_1908->g_810 p_1908->g_617 p_1908->g_580 p_1908->g_205 p_1908->g_395 p_1908->g_465 p_1908->g_200 p_1908->g_282 p_1908->g_973 p_1908->g_974 p_1908->g_690 p_1908->g_1536 p_1908->g_981 p_1908->g_654 p_1908->g_112 p_1908->g_523 p_1908->g_678 p_1908->g_3 p_1908->g_11 p_1908->g_87 p_1908->g_127 p_1908->g_357 p_1908->g_571 p_1908->g_680 p_1908->g_822 p_1908->g_1538 p_1908->g_1047 p_1908->g_1182 p_1908->g_1609
 * writes: p_1908->g_712 p_1908->g_92 p_1908->g_122 p_1908->g_130 p_1908->g_682 p_1908->g_87 p_1908->g_685 p_1908->g_282 p_1908->g_50 p_1908->g_257 p_1908->g_956 p_1908->g_192 p_1908->g_1454 p_1908->g_395 p_1908->g_980 p_1908->g_1162 p_1908->g_205 p_1908->g_112 p_1908->g_158 p_1908->g_703 p_1908->g_157 p_1908->g_572 p_1908->g_127 p_1908->g_810 p_1908->g_1161 p_1908->g_576
 */
int32_t * func_20(int64_t  p_21, int32_t  p_22, int64_t  p_23, int32_t  p_24, struct S0 * p_1908)
{ /* block id: 629 */
    uint8_t l_1303 = 248UL;
    int16_t l_1306[3];
    int32_t *l_1312[7] = {&p_1908->g_112,(void*)0,&p_1908->g_112,&p_1908->g_112,(void*)0,&p_1908->g_112,&p_1908->g_112};
    int16_t **l_1339 = (void*)0;
    uint64_t l_1370 = 0x364C0E855DF3B52BL;
    int8_t ***l_1424 = &p_1908->g_575;
    int16_t *l_1434[4] = {&l_1306[0],&l_1306[0],&l_1306[0],&l_1306[0]};
    uint8_t l_1464[6][9][4] = {{{9UL,255UL,0x1FL,0x5BL},{9UL,255UL,0x1FL,0x5BL},{9UL,255UL,0x1FL,0x5BL},{9UL,255UL,0x1FL,0x5BL},{9UL,255UL,0x1FL,0x5BL},{9UL,255UL,0x1FL,0x5BL},{9UL,255UL,0x1FL,0x5BL},{9UL,255UL,0x1FL,0x5BL},{9UL,255UL,0x1FL,0x5BL}},{{9UL,255UL,0x1FL,0x5BL},{9UL,255UL,0x1FL,0x5BL},{9UL,255UL,0x1FL,0x5BL},{9UL,255UL,0x1FL,0x5BL},{9UL,255UL,0x1FL,0x5BL},{9UL,255UL,0x1FL,0x5BL},{9UL,255UL,0x1FL,0x5BL},{9UL,255UL,0x1FL,0x5BL},{9UL,255UL,0x1FL,0x5BL}},{{9UL,255UL,0x1FL,0x5BL},{9UL,255UL,0x1FL,0x5BL},{9UL,255UL,0x1FL,0x5BL},{9UL,255UL,0x1FL,0x5BL},{9UL,255UL,0x1FL,0x5BL},{9UL,255UL,0x1FL,0x5BL},{9UL,255UL,0x1FL,0x5BL},{9UL,255UL,0x1FL,0x5BL},{9UL,255UL,0x1FL,0x5BL}},{{9UL,255UL,0x1FL,0x5BL},{9UL,255UL,0x1FL,0x5BL},{9UL,255UL,0x1FL,0x5BL},{9UL,255UL,0x1FL,0x5BL},{9UL,255UL,0x1FL,0x5BL},{9UL,255UL,0x1FL,0x5BL},{9UL,255UL,0x1FL,0x5BL},{9UL,255UL,0x1FL,0x5BL},{9UL,255UL,0x1FL,0x5BL}},{{9UL,255UL,0x1FL,0x5BL},{9UL,255UL,0x1FL,0x5BL},{9UL,255UL,0x1FL,0x5BL},{9UL,255UL,0x1FL,0x5BL},{9UL,255UL,0x1FL,0x5BL},{9UL,255UL,0x1FL,0x5BL},{9UL,255UL,0x1FL,0x5BL},{9UL,255UL,0x1FL,0x5BL},{9UL,255UL,0x1FL,0x5BL}},{{9UL,255UL,0x1FL,0x5BL},{9UL,255UL,0x1FL,0x5BL},{9UL,255UL,0x1FL,0x5BL},{9UL,255UL,0x1FL,0x5BL},{9UL,255UL,0x1FL,0x5BL},{9UL,255UL,0x1FL,0x5BL},{9UL,255UL,0x1FL,0x5BL},{9UL,255UL,0x1FL,0x5BL},{9UL,255UL,0x1FL,0x5BL}}};
    uint16_t l_1535 = 65527UL;
    uint16_t l_1549 = 0x4DD1L;
    uint8_t ***l_1587 = &p_1908->g_931;
    uint64_t l_1595 = 0xA4AF3D601D3B2079L;
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_1306[i] = (-6L);
    if ((safe_mod_func_int32_t_s_s(0x57EE381AL, ((safe_sub_func_uint16_t_u_u((safe_rshift_func_int8_t_s_s((p_24 == (l_1303 , p_24)), 3)), (safe_sub_func_uint16_t_u_u(FAKE_DIVERGE(p_1908->global_2_offset, get_global_id(2), 10), ((void*)0 == (*p_1908->g_575)))))) && (((l_1306[0] != p_23) , &p_1908->g_974) != (void*)0)))))
    { /* block id: 630 */
        uint32_t l_1311 = 0xC1BF93ABL;
        for (p_1908->g_712 = 0; (p_1908->g_712 > 6); p_1908->g_712 = safe_add_func_uint32_t_u_u(p_1908->g_712, 2))
        { /* block id: 633 */
            int32_t *l_1309 = (void*)0;
            int32_t *l_1310[10] = {&p_1908->g_50[0][4],&p_1908->g_50[0][4],&p_1908->g_50[0][4],&p_1908->g_50[0][4],&p_1908->g_50[0][4],&p_1908->g_50[0][4],&p_1908->g_50[0][4],&p_1908->g_50[0][4],&p_1908->g_50[0][4],&p_1908->g_50[0][4]};
            int i;
            l_1311 ^= p_21;
        }
    }
    else
    { /* block id: 636 */
        int8_t l_1313 = 0x70L;
        int32_t l_1349 = 0x5BD0721EL;
        int16_t *l_1366 = &p_1908->g_685;
        uint32_t l_1396[4];
        uint32_t l_1430 = 0UL;
        int8_t ***l_1436 = (void*)0;
        int8_t l_1441[5][9][5] = {{{0x62L,(-8L),(-1L),1L,(-4L)},{0x62L,(-8L),(-1L),1L,(-4L)},{0x62L,(-8L),(-1L),1L,(-4L)},{0x62L,(-8L),(-1L),1L,(-4L)},{0x62L,(-8L),(-1L),1L,(-4L)},{0x62L,(-8L),(-1L),1L,(-4L)},{0x62L,(-8L),(-1L),1L,(-4L)},{0x62L,(-8L),(-1L),1L,(-4L)},{0x62L,(-8L),(-1L),1L,(-4L)}},{{0x62L,(-8L),(-1L),1L,(-4L)},{0x62L,(-8L),(-1L),1L,(-4L)},{0x62L,(-8L),(-1L),1L,(-4L)},{0x62L,(-8L),(-1L),1L,(-4L)},{0x62L,(-8L),(-1L),1L,(-4L)},{0x62L,(-8L),(-1L),1L,(-4L)},{0x62L,(-8L),(-1L),1L,(-4L)},{0x62L,(-8L),(-1L),1L,(-4L)},{0x62L,(-8L),(-1L),1L,(-4L)}},{{0x62L,(-8L),(-1L),1L,(-4L)},{0x62L,(-8L),(-1L),1L,(-4L)},{0x62L,(-8L),(-1L),1L,(-4L)},{0x62L,(-8L),(-1L),1L,(-4L)},{0x62L,(-8L),(-1L),1L,(-4L)},{0x62L,(-8L),(-1L),1L,(-4L)},{0x62L,(-8L),(-1L),1L,(-4L)},{0x62L,(-8L),(-1L),1L,(-4L)},{0x62L,(-8L),(-1L),1L,(-4L)}},{{0x62L,(-8L),(-1L),1L,(-4L)},{0x62L,(-8L),(-1L),1L,(-4L)},{0x62L,(-8L),(-1L),1L,(-4L)},{0x62L,(-8L),(-1L),1L,(-4L)},{0x62L,(-8L),(-1L),1L,(-4L)},{0x62L,(-8L),(-1L),1L,(-4L)},{0x62L,(-8L),(-1L),1L,(-4L)},{0x62L,(-8L),(-1L),1L,(-4L)},{0x62L,(-8L),(-1L),1L,(-4L)}},{{0x62L,(-8L),(-1L),1L,(-4L)},{0x62L,(-8L),(-1L),1L,(-4L)},{0x62L,(-8L),(-1L),1L,(-4L)},{0x62L,(-8L),(-1L),1L,(-4L)},{0x62L,(-8L),(-1L),1L,(-4L)},{0x62L,(-8L),(-1L),1L,(-4L)},{0x62L,(-8L),(-1L),1L,(-4L)},{0x62L,(-8L),(-1L),1L,(-4L)},{0x62L,(-8L),(-1L),1L,(-4L)}}};
        int32_t l_1455 = 0L;
        int32_t l_1458 = (-10L);
        int32_t l_1459 = 0L;
        int32_t l_1460 = 0L;
        int32_t l_1461[1];
        int32_t *l_1502 = (void*)0;
        int32_t **l_1501 = &l_1502;
        int32_t ***l_1500 = &l_1501;
        uint32_t ***l_1521 = &p_1908->g_360;
        uint16_t *l_1537 = &l_1535;
        int i, j, k;
        for (i = 0; i < 4; i++)
            l_1396[i] = 0x3525032EL;
        for (i = 0; i < 1; i++)
            l_1461[i] = (-6L);
        l_1312[3] = &p_24;
        p_24 = (l_1313 = 0x3EF43C69L);
        for (p_1908->g_92 = 8; (p_1908->g_92 < 2); p_1908->g_92--)
        { /* block id: 642 */
            int32_t *l_1331 = &p_1908->g_959;
            int32_t l_1332[3][7][6] = {{{0x50E8FD67L,0x5707274CL,0x1F37639CL,0x19F976A5L,0x575952D2L,0x50E8FD67L},{0x50E8FD67L,0x5707274CL,0x1F37639CL,0x19F976A5L,0x575952D2L,0x50E8FD67L},{0x50E8FD67L,0x5707274CL,0x1F37639CL,0x19F976A5L,0x575952D2L,0x50E8FD67L},{0x50E8FD67L,0x5707274CL,0x1F37639CL,0x19F976A5L,0x575952D2L,0x50E8FD67L},{0x50E8FD67L,0x5707274CL,0x1F37639CL,0x19F976A5L,0x575952D2L,0x50E8FD67L},{0x50E8FD67L,0x5707274CL,0x1F37639CL,0x19F976A5L,0x575952D2L,0x50E8FD67L},{0x50E8FD67L,0x5707274CL,0x1F37639CL,0x19F976A5L,0x575952D2L,0x50E8FD67L}},{{0x50E8FD67L,0x5707274CL,0x1F37639CL,0x19F976A5L,0x575952D2L,0x50E8FD67L},{0x50E8FD67L,0x5707274CL,0x1F37639CL,0x19F976A5L,0x575952D2L,0x50E8FD67L},{0x50E8FD67L,0x5707274CL,0x1F37639CL,0x19F976A5L,0x575952D2L,0x50E8FD67L},{0x50E8FD67L,0x5707274CL,0x1F37639CL,0x19F976A5L,0x575952D2L,0x50E8FD67L},{0x50E8FD67L,0x5707274CL,0x1F37639CL,0x19F976A5L,0x575952D2L,0x50E8FD67L},{0x50E8FD67L,0x5707274CL,0x1F37639CL,0x19F976A5L,0x575952D2L,0x50E8FD67L},{0x50E8FD67L,0x5707274CL,0x1F37639CL,0x19F976A5L,0x575952D2L,0x50E8FD67L}},{{0x50E8FD67L,0x5707274CL,0x1F37639CL,0x19F976A5L,0x575952D2L,0x50E8FD67L},{0x50E8FD67L,0x5707274CL,0x1F37639CL,0x19F976A5L,0x575952D2L,0x50E8FD67L},{0x50E8FD67L,0x5707274CL,0x1F37639CL,0x19F976A5L,0x575952D2L,0x50E8FD67L},{0x50E8FD67L,0x5707274CL,0x1F37639CL,0x19F976A5L,0x575952D2L,0x50E8FD67L},{0x50E8FD67L,0x5707274CL,0x1F37639CL,0x19F976A5L,0x575952D2L,0x50E8FD67L},{0x50E8FD67L,0x5707274CL,0x1F37639CL,0x19F976A5L,0x575952D2L,0x50E8FD67L},{0x50E8FD67L,0x5707274CL,0x1F37639CL,0x19F976A5L,0x575952D2L,0x50E8FD67L}}};
            int32_t l_1389 = 0x53AFF376L;
            uint16_t *l_1394 = &p_1908->g_956;
            uint16_t **l_1393 = &l_1394;
            uint8_t l_1395 = 2UL;
            uint32_t l_1476 = 4294967295UL;
            int32_t ***l_1497 = (void*)0;
            uint64_t *l_1510[8] = {&l_1370,(void*)0,&l_1370,&l_1370,(void*)0,&l_1370,&l_1370,(void*)0};
            uint32_t ***l_1520 = &p_1908->g_360;
            uint32_t l_1522 = 1UL;
            int i, j, k;
            if ((safe_lshift_func_int8_t_s_s((safe_sub_func_uint64_t_u_u(p_21, (0x49E7F458L <= GROUP_DIVERGE(1, 1)))), (safe_add_func_int8_t_s_s((safe_mod_func_uint16_t_u_u((((safe_mul_func_uint8_t_u_u(((safe_lshift_func_uint8_t_u_u(((**p_1908->g_931) |= ((void*)0 != &p_24)), GROUP_DIVERGE(2, 1))) & ((p_21 || (!((*p_1908->g_1162) = (((0L > 255UL) | (safe_add_func_uint64_t_u_u(((((safe_unary_minus_func_int64_t_s(((void*)0 != l_1331))) ^ p_23) , 4L) < p_21), p_22))) >= 4294967286UL)))) <= p_23)), l_1332[1][6][5])) > 0UL) , FAKE_DIVERGE(p_1908->global_1_offset, get_global_id(1), 10)), p_24)), l_1313)))))
            { /* block id: 645 */
                uint16_t l_1344 = 0x8816L;
                int32_t l_1350 = 0x47DDDAA8L;
                uint8_t ***l_1419 = &p_1908->g_931;
                int8_t ***l_1426 = &p_1908->g_575;
                int8_t ***l_1427 = &p_1908->g_575;
                int64_t *l_1444 = &p_1908->g_257;
                int32_t l_1456 = 2L;
                int32_t l_1462 = 0L;
                if ((safe_lshift_func_int16_t_s_s(((safe_lshift_func_int8_t_s_s((safe_sub_func_uint8_t_u_u((((l_1350 = ((l_1339 == &p_1908->g_352) && (l_1349 = ((0x62807FC2L < p_21) && (p_1908->g_192 , (safe_mod_func_int64_t_s_s(l_1332[1][6][5], ((!l_1344) & ((--(**p_1908->g_1161)) > (safe_add_func_uint32_t_u_u(p_23, (l_1332[1][5][4] < p_24)))))))))))) || (-2L)) ^ p_21), 0x45L)), p_21)) > 0L), 0)))
                { /* block id: 649 */
                    uint32_t *l_1361 = &p_1908->g_682;
                    uint16_t *l_1371 = &p_1908->g_87;
                    int32_t l_1388 = 0x13296A0DL;
                    l_1332[1][6][5] ^= (safe_div_func_uint64_t_u_u((safe_mul_func_int8_t_s_s((+(((safe_lshift_func_uint8_t_u_s(p_22, p_22)) , 4294967295UL) || (((safe_mul_func_uint8_t_u_u((safe_sub_func_uint32_t_u_u((***p_1908->g_1160), (--(*l_1361)))), (l_1349 = (p_24 , (((*l_1371) = ((((18446744073709551609UL != (safe_add_func_uint8_t_u_u(((*p_1908->g_572) = (l_1366 == ((safe_unary_minus_func_uint8_t_u((((safe_lshift_func_int8_t_s_s(2L, 1)) , l_1370) < 1L))) , (void*)0))), l_1344))) ^ 8UL) & l_1344) >= p_21)) != (-1L)))))) < 0x2CD2L) , (**p_1908->g_1161)))), 0x4FL)), p_1908->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1908->tid, 24))]));
                    l_1389 &= (((safe_rshift_func_uint16_t_u_s(l_1350, 2)) , ((((safe_mul_func_int8_t_s_s((((*p_1908->g_866) = ((safe_sub_func_int64_t_s_s(((safe_add_func_uint8_t_u_u(((safe_mul_func_int16_t_s_s(((+FAKE_DIVERGE(p_1908->global_1_offset, get_global_id(1), 10)) != (p_22 != ((safe_rshift_func_int16_t_s_s((((l_1349 >= (((0x9E10FAA3L || (((*p_1908->g_572) ^= p_24) > (safe_div_func_int32_t_s_s(0x559F5230L, (***p_1908->g_1160))))) & (safe_rshift_func_int16_t_s_s((~(0x3A29L >= ((*p_1908->g_352) = ((*l_1366) |= p_23)))), p_22))) | l_1332[1][0][0])) , FAKE_DIVERGE(p_1908->group_0_offset, get_group_id(0), 10)) , p_21), 13)) > p_24))), p_1908->g_257)) == p_1908->g_956), p_24)) >= p_1908->g_980), p_22)) != 0x25L)) > 3L), GROUP_DIVERGE(0, 1))) || l_1349) || 1UL) ^ l_1388)) >= l_1332[2][1][2]);
                }
                else
                { /* block id: 660 */
                    int64_t l_1392 = 0x76703597A4D0A3B8L;
                    uint64_t *l_1420 = &l_1370;
                    int64_t *l_1421 = &p_1908->g_257;
                    for (p_1908->g_130 = 1; (p_1908->g_130 <= 4); p_1908->g_130 += 1)
                    { /* block id: 663 */
                        int i, j;
                        p_1908->g_50[p_1908->g_130][(p_1908->g_130 + 2)] ^= 0L;
                    }
                    l_1332[1][4][0] = (l_1389 |= (((*p_1908->g_1162) == (+(p_24 = (((p_24 == (((((safe_add_func_uint32_t_u_u((((l_1392 , 0UL) , p_24) , (0L || (l_1350 < 0x3088L))), (l_1393 == (void*)0))) ^ 0xD869DA39L) || l_1332[1][2][2]) > 0x2DD3D5668FCC2B16L) < (*p_1908->g_925))) & p_1908->g_130) > l_1395)))) < l_1396[1]));
                    p_24 |= (((safe_div_func_uint64_t_u_u((safe_add_func_uint32_t_u_u((safe_mul_func_int8_t_s_s((safe_lshift_func_uint8_t_u_u(GROUP_DIVERGE(0, 1), 4)), ((safe_mod_func_uint16_t_u_u(0x5923L, l_1350)) <= ((GROUP_DIVERGE(1, 1) != ((**l_1393) = (((0x1803A875D30AE2C7L == (safe_rshift_func_uint8_t_u_u((safe_rshift_func_uint8_t_u_u(((p_1908->g_157[4] <= l_1392) | l_1395), (safe_sub_func_int8_t_s_s((safe_mul_func_int16_t_s_s((safe_div_func_int16_t_s_s((~(((*l_1420) = ((void*)0 == l_1419)) | ((*l_1421) = l_1344))), l_1389)), p_22)), 0x28L)))), 4))) ^ 0x1136L) <= 1UL))) <= p_1908->g_685)))), FAKE_DIVERGE(p_1908->group_1_offset, get_group_id(1), 10))), 1UL)) < p_21) != p_21);
                }
                for (p_1908->g_192 = 7; (p_1908->g_192 < 17); p_1908->g_192 = safe_add_func_uint8_t_u_u(p_1908->g_192, 6))
                { /* block id: 676 */
                    int8_t ****l_1425[5];
                    int32_t l_1433[5] = {0L,0L,0L,0L,0L};
                    int16_t *l_1435 = &p_1908->g_282;
                    uint32_t *l_1442 = &p_1908->g_682;
                    int64_t **l_1443[6][5][4] = {{{&p_1908->g_617,&p_1908->g_617,(void*)0,(void*)0},{&p_1908->g_617,&p_1908->g_617,(void*)0,(void*)0},{&p_1908->g_617,&p_1908->g_617,(void*)0,(void*)0},{&p_1908->g_617,&p_1908->g_617,(void*)0,(void*)0},{&p_1908->g_617,&p_1908->g_617,(void*)0,(void*)0}},{{&p_1908->g_617,&p_1908->g_617,(void*)0,(void*)0},{&p_1908->g_617,&p_1908->g_617,(void*)0,(void*)0},{&p_1908->g_617,&p_1908->g_617,(void*)0,(void*)0},{&p_1908->g_617,&p_1908->g_617,(void*)0,(void*)0},{&p_1908->g_617,&p_1908->g_617,(void*)0,(void*)0}},{{&p_1908->g_617,&p_1908->g_617,(void*)0,(void*)0},{&p_1908->g_617,&p_1908->g_617,(void*)0,(void*)0},{&p_1908->g_617,&p_1908->g_617,(void*)0,(void*)0},{&p_1908->g_617,&p_1908->g_617,(void*)0,(void*)0},{&p_1908->g_617,&p_1908->g_617,(void*)0,(void*)0}},{{&p_1908->g_617,&p_1908->g_617,(void*)0,(void*)0},{&p_1908->g_617,&p_1908->g_617,(void*)0,(void*)0},{&p_1908->g_617,&p_1908->g_617,(void*)0,(void*)0},{&p_1908->g_617,&p_1908->g_617,(void*)0,(void*)0},{&p_1908->g_617,&p_1908->g_617,(void*)0,(void*)0}},{{&p_1908->g_617,&p_1908->g_617,(void*)0,(void*)0},{&p_1908->g_617,&p_1908->g_617,(void*)0,(void*)0},{&p_1908->g_617,&p_1908->g_617,(void*)0,(void*)0},{&p_1908->g_617,&p_1908->g_617,(void*)0,(void*)0},{&p_1908->g_617,&p_1908->g_617,(void*)0,(void*)0}},{{&p_1908->g_617,&p_1908->g_617,(void*)0,(void*)0},{&p_1908->g_617,&p_1908->g_617,(void*)0,(void*)0},{&p_1908->g_617,&p_1908->g_617,(void*)0,(void*)0},{&p_1908->g_617,&p_1908->g_617,(void*)0,(void*)0},{&p_1908->g_617,&p_1908->g_617,(void*)0,(void*)0}}};
                    int32_t *l_1453 = &p_1908->g_1454[0][0];
                    int32_t l_1457[3][1];
                    int i, j, k;
                    for (i = 0; i < 5; i++)
                        l_1425[i] = &l_1424;
                    for (i = 0; i < 3; i++)
                    {
                        for (j = 0; j < 1; j++)
                            l_1457[i][j] = 0x2730F4ACL;
                    }
                    l_1389 |= ((l_1427 = (l_1426 = l_1424)) == ((safe_mul_func_int16_t_s_s(l_1430, (((safe_add_func_uint64_t_u_u(p_23, l_1433[2])) , l_1434[0]) == l_1435))) , l_1436));
                    if (((((safe_sub_func_int64_t_s_s((safe_lshift_func_uint16_t_u_s(((0x67L <= l_1441[3][3][2]) < ((*l_1442) |= (***p_1908->g_1160))), 8)), ((l_1444 = (**p_1908->g_809)) != (void*)0))) == (((safe_sub_func_int8_t_s_s((safe_rshift_func_uint8_t_u_u((*p_1908->g_572), 1)), (l_1350 &= (p_24 & l_1433[2])))) > (safe_add_func_uint64_t_u_u((((!((*l_1453) = ((l_1349 = (safe_lshift_func_int8_t_s_s(l_1396[2], p_23))) | 6L))) , l_1389) == 253UL), l_1389))) | p_1908->g_50[0][7])) || l_1344) , p_24))
                    { /* block id: 685 */
                        int64_t l_1463 = 0L;
                        ++l_1464[0][4][0];
                        p_24 &= 0L;
                    }
                    else
                    { /* block id: 688 */
                        return (*p_1908->g_580);
                    }
                }
                for (p_1908->g_395 = (-28); (p_1908->g_395 >= 32); p_1908->g_395++)
                { /* block id: 694 */
                    uint16_t l_1481 = 65535UL;
                    int32_t l_1503 = (-1L);
                    for (l_1389 = 0; (l_1389 <= (-21)); l_1389 = safe_sub_func_int8_t_s_s(l_1389, 8))
                    { /* block id: 697 */
                        l_1462 = (safe_rshift_func_uint8_t_u_u(1UL, ((safe_unary_minus_func_uint8_t_u((safe_rshift_func_int16_t_s_s(0x65DFL, 14)))) == p_21)));
                    }
                    if (l_1396[1])
                        continue;
                    l_1476--;
                    for (p_1908->g_980 = 8; (p_1908->g_980 >= 2); p_1908->g_980 -= 1)
                    { /* block id: 704 */
                        int32_t l_1479 = 0x1520FD34L;
                        int32_t l_1480 = 0x047A3E0EL;
                        int i;
                        if (p_1908->g_465[p_1908->g_980])
                            break;
                        l_1481++;
                        l_1332[1][6][5] = (!(((safe_mul_func_int16_t_s_s((l_1503 |= ((safe_mod_func_uint32_t_u_u((safe_div_func_uint8_t_u_u((0x76L ^ ((((p_24 = (safe_add_func_int32_t_s_s((-10L), ((**p_1908->g_1161) |= 0xAEF04337L)))) > GROUP_DIVERGE(0, 1)) , (((*p_1908->g_352) = (((safe_mod_func_uint64_t_u_u((safe_unary_minus_func_int8_t_s((0x48DBCDACL > ((safe_mul_func_int8_t_s_s((l_1497 == ((safe_rshift_func_uint8_t_u_u(0UL, (((**p_1908->g_1160) = (**p_1908->g_1160)) == (void*)0))) , (p_1908->g_465[p_1908->g_980] , l_1500))), 0L)) != p_24)))), p_24)) ^ FAKE_DIVERGE(p_1908->local_0_offset, get_local_id(0), 10)) < p_1908->g_92)) != p_22)) , 0x35L)), p_1908->g_200)), p_23)) , (*p_1908->g_352))), p_21)) ^ 0x2514590CL) > GROUP_DIVERGE(2, 1)));
                        p_24 = ((safe_add_func_int8_t_s_s((l_1503 = 0x03L), (l_1479 = 0x3FL))) , (*p_1908->g_925));
                    }
                }
            }
            else
            { /* block id: 718 */
                uint64_t **l_1511 = (void*)0;
                uint64_t **l_1512 = &l_1510[1];
                int32_t l_1513[3][6];
                uint32_t ***l_1519 = &p_1908->g_360;
                uint32_t ****l_1518[7][10] = {{&l_1519,(void*)0,(void*)0,&l_1519,(void*)0,(void*)0,&l_1519,&l_1519,&l_1519,&l_1519},{&l_1519,(void*)0,(void*)0,&l_1519,(void*)0,(void*)0,&l_1519,&l_1519,&l_1519,&l_1519},{&l_1519,(void*)0,(void*)0,&l_1519,(void*)0,(void*)0,&l_1519,&l_1519,&l_1519,&l_1519},{&l_1519,(void*)0,(void*)0,&l_1519,(void*)0,(void*)0,&l_1519,&l_1519,&l_1519,&l_1519},{&l_1519,(void*)0,(void*)0,&l_1519,(void*)0,(void*)0,&l_1519,&l_1519,&l_1519,&l_1519},{&l_1519,(void*)0,(void*)0,&l_1519,(void*)0,(void*)0,&l_1519,&l_1519,&l_1519,&l_1519},{&l_1519,(void*)0,(void*)0,&l_1519,(void*)0,(void*)0,&l_1519,&l_1519,&l_1519,&l_1519}};
                int32_t l_1523 = 3L;
                int i, j;
                for (i = 0; i < 3; i++)
                {
                    for (j = 0; j < 6; j++)
                        l_1513[i][j] = 4L;
                }
                l_1459 = (((l_1461[0] ^ GROUP_DIVERGE(0, 1)) & (((0x0DFB27CB126E72CBL ^ ((safe_div_func_int16_t_s_s((safe_add_func_int16_t_s_s((((*p_1908->g_973) == (p_22 , ((*l_1512) = l_1510[3]))) < (l_1522 &= ((1L | (((l_1513[2][1] = (l_1513[2][1] ^ (safe_mod_func_int8_t_s_s((safe_mul_func_int16_t_s_s(((l_1520 = (void*)0) == l_1521), p_21)), l_1513[2][3])))) , l_1459) <= 0x342C9C9E6533D7F9L)) >= p_21))), 0UL)), p_22)) && GROUP_DIVERGE(0, 1))) , l_1461[0]) , (*p_1908->g_866))) >= l_1523);
            }
        }
        (*p_1908->g_1538) = func_78((*p_1908->g_690), (p_23 || (safe_mul_func_uint16_t_u_u((safe_mul_func_uint8_t_u_u(((*p_1908->g_572) ^= (safe_lshift_func_uint8_t_u_s(((safe_unary_minus_func_int32_t_s(((safe_add_func_int64_t_s_s(((p_24 | ((((l_1455 = l_1349) & (safe_add_func_uint16_t_u_u((l_1460 , (l_1535 || ((p_1908->g_1536 ^ 9UL) && (((*l_1537) ^= 65535UL) >= 65529UL)))), (-3L)))) <= 0xD64F7E4BL) || p_24)) <= (*p_1908->g_352)), l_1460)) <= l_1313))) <= GROUP_DIVERGE(2, 1)), 6))), (-3L))), p_1908->g_981[2][2][1]))), p_1908);
    }
    for (p_24 = (-13); (p_24 != 2); p_24 = safe_add_func_uint8_t_u_u(p_24, 8))
    { /* block id: 733 */
        uint32_t l_1541[5][6];
        int i, j;
        for (i = 0; i < 5; i++)
        {
            for (j = 0; j < 6; j++)
                l_1541[i][j] = 1UL;
        }
        if (p_24)
            break;
        if ((*p_1908->g_925))
            continue;
        l_1541[4][0] = 0L;
        l_1312[5] = &p_24;
    }
    for (l_1535 = 0; (l_1535 < 49); ++l_1535)
    { /* block id: 741 */
        uint32_t l_1546[5] = {0x6F9DDA4FL,0x6F9DDA4FL,0x6F9DDA4FL,0x6F9DDA4FL,0x6F9DDA4FL};
        int8_t *l_1552 = &p_1908->g_980;
        uint32_t **l_1569[6][2][8] = {{{&p_1908->g_1162,&p_1908->g_1162,&p_1908->g_1162,&p_1908->g_1162,&p_1908->g_1162,(void*)0,&p_1908->g_1162,&p_1908->g_1162},{&p_1908->g_1162,&p_1908->g_1162,&p_1908->g_1162,&p_1908->g_1162,&p_1908->g_1162,(void*)0,&p_1908->g_1162,&p_1908->g_1162}},{{&p_1908->g_1162,&p_1908->g_1162,&p_1908->g_1162,&p_1908->g_1162,&p_1908->g_1162,(void*)0,&p_1908->g_1162,&p_1908->g_1162},{&p_1908->g_1162,&p_1908->g_1162,&p_1908->g_1162,&p_1908->g_1162,&p_1908->g_1162,(void*)0,&p_1908->g_1162,&p_1908->g_1162}},{{&p_1908->g_1162,&p_1908->g_1162,&p_1908->g_1162,&p_1908->g_1162,&p_1908->g_1162,(void*)0,&p_1908->g_1162,&p_1908->g_1162},{&p_1908->g_1162,&p_1908->g_1162,&p_1908->g_1162,&p_1908->g_1162,&p_1908->g_1162,(void*)0,&p_1908->g_1162,&p_1908->g_1162}},{{&p_1908->g_1162,&p_1908->g_1162,&p_1908->g_1162,&p_1908->g_1162,&p_1908->g_1162,(void*)0,&p_1908->g_1162,&p_1908->g_1162},{&p_1908->g_1162,&p_1908->g_1162,&p_1908->g_1162,&p_1908->g_1162,&p_1908->g_1162,(void*)0,&p_1908->g_1162,&p_1908->g_1162}},{{&p_1908->g_1162,&p_1908->g_1162,&p_1908->g_1162,&p_1908->g_1162,&p_1908->g_1162,(void*)0,&p_1908->g_1162,&p_1908->g_1162},{&p_1908->g_1162,&p_1908->g_1162,&p_1908->g_1162,&p_1908->g_1162,&p_1908->g_1162,(void*)0,&p_1908->g_1162,&p_1908->g_1162}},{{&p_1908->g_1162,&p_1908->g_1162,&p_1908->g_1162,&p_1908->g_1162,&p_1908->g_1162,(void*)0,&p_1908->g_1162,&p_1908->g_1162},{&p_1908->g_1162,&p_1908->g_1162,&p_1908->g_1162,&p_1908->g_1162,&p_1908->g_1162,(void*)0,&p_1908->g_1162,&p_1908->g_1162}}};
        uint8_t ***l_1586 = &p_1908->g_931;
        int8_t l_1589 = 1L;
        int16_t l_1590 = (-3L);
        int32_t l_1591 = (-5L);
        int32_t l_1593[10] = {(-2L),0x77D29917L,(-2L),(-2L),0x77D29917L,(-2L),(-2L),0x77D29917L,(-2L),(-2L)};
        int i, j, k;
        for (p_1908->g_87 = 4; (p_1908->g_87 != 6); ++p_1908->g_87)
        { /* block id: 744 */
            return (*p_1908->g_1047);
        }
        if (l_1546[4])
            break;
        if (p_24)
            break;
        if ((safe_rshift_func_uint16_t_u_s((0x4FL < (l_1549 < ((*l_1552) = ((safe_lshift_func_uint8_t_u_u((p_21 <= l_1546[4]), 0)) <= p_21)))), ((safe_rshift_func_int8_t_s_u((safe_rshift_func_uint16_t_u_s(((p_23 = p_24) | (((p_24 , (p_24 , l_1424)) != l_1424) && p_22)), p_22)), 3)) | 0xA7A2CF79L))))
        { /* block id: 751 */
            int8_t l_1559 = 5L;
            uint32_t **l_1568[3][1][2];
            uint32_t ***l_1570 = &l_1569[3][0][5];
            int32_t l_1588 = (-1L);
            int32_t l_1592[3][5] = {{1L,1L,0x26FBC8F6L,0L,(-1L)},{1L,1L,0x26FBC8F6L,0L,(-1L)},{1L,1L,0x26FBC8F6L,0L,(-1L)}};
            int32_t l_1594 = 0x59483E14L;
            int i, j, k;
            for (i = 0; i < 3; i++)
            {
                for (j = 0; j < 1; j++)
                {
                    for (k = 0; k < 2; k++)
                        l_1568[i][j][k] = &p_1908->g_1162;
                }
            }
            p_24 = (((((safe_mod_func_int16_t_s_s((l_1559 & (safe_mod_func_int64_t_s_s((p_24 , (safe_lshift_func_uint8_t_u_s(((l_1588 = (safe_mod_func_uint64_t_u_u((p_22 && (safe_mod_func_int8_t_s_s(((((((*p_1908->g_1160) = l_1568[2][0][0]) == ((*l_1570) = l_1569[3][0][5])) || (safe_lshift_func_uint8_t_u_s(((safe_sub_func_int16_t_s_s((safe_mul_func_uint8_t_u_u((0x26L || ((((safe_mod_func_uint64_t_u_u((safe_rshift_func_uint8_t_u_u((((safe_unary_minus_func_uint64_t_u(p_22)) < ((*l_1552) ^= (safe_sub_func_uint16_t_u_u((safe_lshift_func_int16_t_s_s(0x6AC5L, 7)), (l_1586 == l_1587))))) & l_1559), 3)), p_22)) == p_21) , 0x50186129L) , GROUP_DIVERGE(1, 1))), p_22)), p_1908->g_1182)) , l_1546[0]), l_1559))) , l_1559) , l_1559), GROUP_DIVERGE(2, 1)))), 1UL))) > 0x256B0399L), 0))), 0xEB0FA33694A531A2L))), l_1559)) , p_23) > 1L) == l_1589) >= p_1908->g_92);
            ++l_1595;
            p_24 = p_23;
        }
        else
        { /* block id: 759 */
            int16_t l_1604[4] = {0x43AAL,0x43AAL,0x43AAL,0x43AAL};
            uint64_t *l_1610 = (void*)0;
            uint64_t *l_1611 = &l_1595;
            int8_t *l_1626[2];
            int32_t **l_1627 = (void*)0;
            int32_t **l_1628 = &l_1312[3];
            int32_t **l_1630 = (void*)0;
            int32_t **l_1631 = &p_1908->g_205[3];
            int i;
            for (i = 0; i < 2; i++)
                l_1626[i] = &p_1908->g_980;
            (*p_1908->g_866) = (safe_rshift_func_uint8_t_u_u(0UL, (safe_mod_func_int32_t_s_s((safe_mul_func_uint16_t_u_u(l_1590, ((l_1604[0] , (safe_div_func_int64_t_s_s(p_22, (safe_mod_func_int32_t_s_s(((l_1604[0] >= (p_23 ^ l_1546[3])) != ((*l_1611) = (p_21 >= (!p_1908->g_1609)))), 0x292D31B0L))))) != p_1908->g_981[3][4][3]))), 0x9F1A6F55L))));
            (*l_1631) = ((*l_1628) = ((((*p_1908->g_1160) == (((p_23 & (((safe_lshift_func_uint16_t_u_u((safe_sub_func_int64_t_s_s((safe_add_func_uint32_t_u_u(p_23, p_23)), (((safe_div_func_uint8_t_u_u((((safe_sub_func_uint32_t_u_u(((safe_add_func_int8_t_s_s(0x5CL, (safe_sub_func_int16_t_s_s(0x48B4L, 0xBC1CL)))) & ((l_1626[1] = &l_1589) != ((*p_1908->g_575) = (*p_1908->g_575)))), p_21)) > 1UL) ^ p_21), p_22)) ^ 0xBB9CC2E2L) == p_22))), 7)) | 65535UL) <= 18446744073709551614UL)) || l_1590) , (*p_1908->g_1160))) && l_1593[1]) , (void*)0));
            if ((*p_1908->g_925))
                continue;
        }
    }
    return (*p_1908->g_1538);
}


/* ------------------------------------------ */
/* 
 * reads : p_1908->g_1291 p_1908->g_1293
 * writes: p_1908->g_1291
 */
int32_t * func_25(int32_t  p_26, int32_t * p_27, int32_t * p_28, int32_t * p_29, struct S0 * p_1908)
{ /* block id: 625 */
    int32_t *l_1294 = (void*)0;
    (*p_1908->g_1293) = p_1908->g_1291[5];
    return l_1294;
}


/* ------------------------------------------ */
/* 
 * reads : p_1908->g_712 p_1908->g_357 p_1908->g_92 p_1908->g_112 p_1908->g_1162 p_1908->g_130 p_1908->g_931 p_1908->g_572 p_1908->g_122 p_1908->g_1049 p_1908->g_1284
 * writes: p_1908->g_712 p_1908->g_92 p_1908->g_112 p_1908->g_122 p_1908->g_1049 p_1908->g_981
 */
uint8_t  func_34(int32_t  p_35, int16_t  p_36, int32_t * p_37, int32_t * p_38, int32_t  p_39, struct S0 * p_1908)
{ /* block id: 467 */
    int32_t *l_971 = (void*)0;
    int32_t l_977 = 7L;
    uint8_t ***l_989 = &p_1908->g_931;
    int16_t **l_1002 = &p_1908->g_352;
    uint32_t *l_1054 = &p_1908->g_200;
    uint32_t **l_1053 = &l_1054;
    int64_t l_1122[2][3][2] = {{{0x47C8EAC984DAA72CL,0x1863949326CFA484L},{0x47C8EAC984DAA72CL,0x1863949326CFA484L},{0x47C8EAC984DAA72CL,0x1863949326CFA484L}},{{0x47C8EAC984DAA72CL,0x1863949326CFA484L},{0x47C8EAC984DAA72CL,0x1863949326CFA484L},{0x47C8EAC984DAA72CL,0x1863949326CFA484L}}};
    int8_t **l_1201 = &p_1908->g_576;
    int32_t l_1241 = (-1L);
    int32_t l_1243 = (-1L);
    int32_t l_1244 = 1L;
    int32_t l_1245 = (-4L);
    int32_t l_1246 = 0L;
    uint64_t l_1247 = 0x6966460B16FBA905L;
    int16_t *l_1263[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    uint8_t *l_1270 = &p_1908->g_1049;
    uint32_t l_1277 = 4294967295UL;
    int32_t l_1285 = 0x18B83A87L;
    uint64_t *l_1286 = &l_1247;
    uint32_t *l_1287 = (void*)0;
    uint32_t *l_1288 = &p_1908->g_981[2][2][1];
    uint8_t l_1289 = 0x80L;
    int i, j, k;
    for (p_1908->g_712 = 0; (p_1908->g_712 > 0); p_1908->g_712++)
    { /* block id: 470 */
        uint16_t *l_1020 = &p_1908->g_127;
        int16_t l_1021 = 0x48AEL;
        int32_t *l_1022 = &p_1908->g_959;
        uint32_t *l_1031 = &p_1908->g_981[2][2][1];
        int16_t *l_1038 = &p_1908->g_685;
        int32_t l_1039 = 0x05651113L;
        int32_t l_1063[3][4] = {{0x4DD2D808L,1L,(-1L),1L},{0x4DD2D808L,1L,(-1L),1L},{0x4DD2D808L,1L,(-1L),1L}};
        uint32_t ***l_1068[3][8][10] = {{{&l_1053,&l_1053,&p_1908->g_360,&l_1053,&p_1908->g_360,&p_1908->g_360,&l_1053,&p_1908->g_360,&l_1053,&l_1053},{&l_1053,&l_1053,&p_1908->g_360,&l_1053,&p_1908->g_360,&p_1908->g_360,&l_1053,&p_1908->g_360,&l_1053,&l_1053},{&l_1053,&l_1053,&p_1908->g_360,&l_1053,&p_1908->g_360,&p_1908->g_360,&l_1053,&p_1908->g_360,&l_1053,&l_1053},{&l_1053,&l_1053,&p_1908->g_360,&l_1053,&p_1908->g_360,&p_1908->g_360,&l_1053,&p_1908->g_360,&l_1053,&l_1053},{&l_1053,&l_1053,&p_1908->g_360,&l_1053,&p_1908->g_360,&p_1908->g_360,&l_1053,&p_1908->g_360,&l_1053,&l_1053},{&l_1053,&l_1053,&p_1908->g_360,&l_1053,&p_1908->g_360,&p_1908->g_360,&l_1053,&p_1908->g_360,&l_1053,&l_1053},{&l_1053,&l_1053,&p_1908->g_360,&l_1053,&p_1908->g_360,&p_1908->g_360,&l_1053,&p_1908->g_360,&l_1053,&l_1053},{&l_1053,&l_1053,&p_1908->g_360,&l_1053,&p_1908->g_360,&p_1908->g_360,&l_1053,&p_1908->g_360,&l_1053,&l_1053}},{{&l_1053,&l_1053,&p_1908->g_360,&l_1053,&p_1908->g_360,&p_1908->g_360,&l_1053,&p_1908->g_360,&l_1053,&l_1053},{&l_1053,&l_1053,&p_1908->g_360,&l_1053,&p_1908->g_360,&p_1908->g_360,&l_1053,&p_1908->g_360,&l_1053,&l_1053},{&l_1053,&l_1053,&p_1908->g_360,&l_1053,&p_1908->g_360,&p_1908->g_360,&l_1053,&p_1908->g_360,&l_1053,&l_1053},{&l_1053,&l_1053,&p_1908->g_360,&l_1053,&p_1908->g_360,&p_1908->g_360,&l_1053,&p_1908->g_360,&l_1053,&l_1053},{&l_1053,&l_1053,&p_1908->g_360,&l_1053,&p_1908->g_360,&p_1908->g_360,&l_1053,&p_1908->g_360,&l_1053,&l_1053},{&l_1053,&l_1053,&p_1908->g_360,&l_1053,&p_1908->g_360,&p_1908->g_360,&l_1053,&p_1908->g_360,&l_1053,&l_1053},{&l_1053,&l_1053,&p_1908->g_360,&l_1053,&p_1908->g_360,&p_1908->g_360,&l_1053,&p_1908->g_360,&l_1053,&l_1053},{&l_1053,&l_1053,&p_1908->g_360,&l_1053,&p_1908->g_360,&p_1908->g_360,&l_1053,&p_1908->g_360,&l_1053,&l_1053}},{{&l_1053,&l_1053,&p_1908->g_360,&l_1053,&p_1908->g_360,&p_1908->g_360,&l_1053,&p_1908->g_360,&l_1053,&l_1053},{&l_1053,&l_1053,&p_1908->g_360,&l_1053,&p_1908->g_360,&p_1908->g_360,&l_1053,&p_1908->g_360,&l_1053,&l_1053},{&l_1053,&l_1053,&p_1908->g_360,&l_1053,&p_1908->g_360,&p_1908->g_360,&l_1053,&p_1908->g_360,&l_1053,&l_1053},{&l_1053,&l_1053,&p_1908->g_360,&l_1053,&p_1908->g_360,&p_1908->g_360,&l_1053,&p_1908->g_360,&l_1053,&l_1053},{&l_1053,&l_1053,&p_1908->g_360,&l_1053,&p_1908->g_360,&p_1908->g_360,&l_1053,&p_1908->g_360,&l_1053,&l_1053},{&l_1053,&l_1053,&p_1908->g_360,&l_1053,&p_1908->g_360,&p_1908->g_360,&l_1053,&p_1908->g_360,&l_1053,&l_1053},{&l_1053,&l_1053,&p_1908->g_360,&l_1053,&p_1908->g_360,&p_1908->g_360,&l_1053,&p_1908->g_360,&l_1053,&l_1053},{&l_1053,&l_1053,&p_1908->g_360,&l_1053,&p_1908->g_360,&p_1908->g_360,&l_1053,&p_1908->g_360,&l_1053,&l_1053}}};
        uint32_t ****l_1067[2][8] = {{&l_1068[2][2][0],&l_1068[2][2][0],&l_1068[2][2][0],&l_1068[2][2][0],&l_1068[2][2][0],&l_1068[2][2][0],&l_1068[2][2][0],&l_1068[2][2][0]},{&l_1068[2][2][0],&l_1068[2][2][0],&l_1068[2][2][0],&l_1068[2][2][0],&l_1068[2][2][0],&l_1068[2][2][0],&l_1068[2][2][0],&l_1068[2][2][0]}};
        uint64_t *l_1080 = &p_1908->g_192;
        uint64_t **l_1079 = &l_1080;
        int32_t l_1092 = 6L;
        uint16_t *l_1098[3][1][4] = {{{&p_1908->g_956,&p_1908->g_11,&p_1908->g_956,&p_1908->g_956}},{{&p_1908->g_956,&p_1908->g_11,&p_1908->g_956,&p_1908->g_956}},{{&p_1908->g_956,&p_1908->g_11,&p_1908->g_956,&p_1908->g_956}}};
        uint8_t *l_1099[1];
        int32_t *l_1209 = &p_1908->g_50[1][4];
        uint32_t l_1225 = 4294967286UL;
        int i, j, k;
        for (i = 0; i < 1; i++)
            l_1099[i] = (void*)0;
        (1 + 1);
    }
    (*p_1908->g_357) |= 0x745FC750L;
    (*p_38) ^= (*p_1908->g_357);
    (*p_38) = ((*p_1908->g_1162) > ((l_1246 ^ ((safe_lshift_func_uint8_t_u_s((++(**p_1908->g_931)), ((((((*l_1270)++) <= (safe_add_func_uint64_t_u_u(GROUP_DIVERGE(0, 1), p_36))) | ((*l_1288) = ((safe_add_func_uint64_t_u_u(18446744073709551606UL, l_1277)) | (p_36 & (safe_rshift_func_uint8_t_u_s((safe_sub_func_int64_t_s_s((safe_add_func_int32_t_s_s(p_1908->g_1284, GROUP_DIVERGE(2, 1))), ((*l_1286) = (l_1285 ^ (FAKE_DIVERGE(p_1908->local_2_offset, get_local_id(2), 10) >= p_39))))), 4)))))) , 0x1275L) && GROUP_DIVERGE(2, 1)))) , l_1289)) == 18446744073709551606UL));
    return (*p_1908->g_572);
}


/* ------------------------------------------ */
/* 
 * reads : p_1908->g_690 p_1908->g_50
 * writes: p_1908->g_205
 */
int64_t  func_41(uint64_t  p_42, uint64_t  p_43, struct S0 * p_1908)
{ /* block id: 12 */
    int32_t *l_49 = &p_1908->g_50[0][4];
    int32_t *l_51 = &p_1908->g_50[4][4];
    int32_t *l_52 = &p_1908->g_50[0][4];
    int32_t *l_53 = &p_1908->g_50[0][4];
    int32_t *l_54 = &p_1908->g_50[0][4];
    int32_t *l_55[3][7] = {{(void*)0,&p_1908->g_50[0][4],(void*)0,(void*)0,&p_1908->g_50[0][4],(void*)0,(void*)0},{(void*)0,&p_1908->g_50[0][4],(void*)0,(void*)0,&p_1908->g_50[0][4],(void*)0,(void*)0},{(void*)0,&p_1908->g_50[0][4],(void*)0,(void*)0,&p_1908->g_50[0][4],(void*)0,(void*)0}};
    int64_t l_56[1][10][7] = {{{0x0828597010273394L,0L,0x18A7B986AF205A4AL,1L,0x18A7B986AF205A4AL,0L,0x0828597010273394L},{0x0828597010273394L,0L,0x18A7B986AF205A4AL,1L,0x18A7B986AF205A4AL,0L,0x0828597010273394L},{0x0828597010273394L,0L,0x18A7B986AF205A4AL,1L,0x18A7B986AF205A4AL,0L,0x0828597010273394L},{0x0828597010273394L,0L,0x18A7B986AF205A4AL,1L,0x18A7B986AF205A4AL,0L,0x0828597010273394L},{0x0828597010273394L,0L,0x18A7B986AF205A4AL,1L,0x18A7B986AF205A4AL,0L,0x0828597010273394L},{0x0828597010273394L,0L,0x18A7B986AF205A4AL,1L,0x18A7B986AF205A4AL,0L,0x0828597010273394L},{0x0828597010273394L,0L,0x18A7B986AF205A4AL,1L,0x18A7B986AF205A4AL,0L,0x0828597010273394L},{0x0828597010273394L,0L,0x18A7B986AF205A4AL,1L,0x18A7B986AF205A4AL,0L,0x0828597010273394L},{0x0828597010273394L,0L,0x18A7B986AF205A4AL,1L,0x18A7B986AF205A4AL,0L,0x0828597010273394L},{0x0828597010273394L,0L,0x18A7B986AF205A4AL,1L,0x18A7B986AF205A4AL,0L,0x0828597010273394L}}};
    uint32_t l_57 = 0xF24A8208L;
    int16_t l_65 = 0x4155L;
    int64_t l_66 = 0x7EE8902DFE65A55BL;
    uint8_t **l_930 = &p_1908->g_572;
    uint8_t ***l_929[9][3][2] = {{{&l_930,&l_930},{&l_930,&l_930},{&l_930,&l_930}},{{&l_930,&l_930},{&l_930,&l_930},{&l_930,&l_930}},{{&l_930,&l_930},{&l_930,&l_930},{&l_930,&l_930}},{{&l_930,&l_930},{&l_930,&l_930},{&l_930,&l_930}},{{&l_930,&l_930},{&l_930,&l_930},{&l_930,&l_930}},{{&l_930,&l_930},{&l_930,&l_930},{&l_930,&l_930}},{{&l_930,&l_930},{&l_930,&l_930},{&l_930,&l_930}},{{&l_930,&l_930},{&l_930,&l_930},{&l_930,&l_930}},{{&l_930,&l_930},{&l_930,&l_930},{&l_930,&l_930}}};
    uint32_t ****l_932 = (void*)0;
    uint32_t *****l_933 = &l_932;
    uint32_t ***l_936 = &p_1908->g_360;
    uint32_t ****l_935 = &l_936;
    uint32_t *****l_934 = &l_935;
    uint64_t *l_941[3];
    int64_t l_957 = 0x20060B7D33789080L;
    int32_t *l_958 = (void*)0;
    int64_t l_960[10];
    int32_t **l_961[7];
    int64_t l_962 = 0x34AE393E56F659FDL;
    uint64_t l_963 = 2UL;
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_941[i] = &p_1908->g_192;
    for (i = 0; i < 10; i++)
        l_960[i] = 3L;
    for (i = 0; i < 7; i++)
        l_961[i] = &p_1908->g_205[0];
    --l_57;
    for (p_42 = 0; (p_42 >= 60); p_42 = safe_add_func_int16_t_s_s(p_42, 1))
    { /* block id: 16 */
        int8_t l_62[10][4][4] = {{{7L,1L,1L,0x1AL},{7L,1L,1L,0x1AL},{7L,1L,1L,0x1AL},{7L,1L,1L,0x1AL}},{{7L,1L,1L,0x1AL},{7L,1L,1L,0x1AL},{7L,1L,1L,0x1AL},{7L,1L,1L,0x1AL}},{{7L,1L,1L,0x1AL},{7L,1L,1L,0x1AL},{7L,1L,1L,0x1AL},{7L,1L,1L,0x1AL}},{{7L,1L,1L,0x1AL},{7L,1L,1L,0x1AL},{7L,1L,1L,0x1AL},{7L,1L,1L,0x1AL}},{{7L,1L,1L,0x1AL},{7L,1L,1L,0x1AL},{7L,1L,1L,0x1AL},{7L,1L,1L,0x1AL}},{{7L,1L,1L,0x1AL},{7L,1L,1L,0x1AL},{7L,1L,1L,0x1AL},{7L,1L,1L,0x1AL}},{{7L,1L,1L,0x1AL},{7L,1L,1L,0x1AL},{7L,1L,1L,0x1AL},{7L,1L,1L,0x1AL}},{{7L,1L,1L,0x1AL},{7L,1L,1L,0x1AL},{7L,1L,1L,0x1AL},{7L,1L,1L,0x1AL}},{{7L,1L,1L,0x1AL},{7L,1L,1L,0x1AL},{7L,1L,1L,0x1AL},{7L,1L,1L,0x1AL}},{{7L,1L,1L,0x1AL},{7L,1L,1L,0x1AL},{7L,1L,1L,0x1AL},{7L,1L,1L,0x1AL}}};
        int32_t l_63 = 1L;
        int32_t l_64[4][8] = {{0x6F870AB7L,(-1L),0x6F870AB7L,0x6F870AB7L,(-1L),0x6F870AB7L,0x6F870AB7L,(-1L)},{0x6F870AB7L,(-1L),0x6F870AB7L,0x6F870AB7L,(-1L),0x6F870AB7L,0x6F870AB7L,(-1L)},{0x6F870AB7L,(-1L),0x6F870AB7L,0x6F870AB7L,(-1L),0x6F870AB7L,0x6F870AB7L,(-1L)},{0x6F870AB7L,(-1L),0x6F870AB7L,0x6F870AB7L,(-1L),0x6F870AB7L,0x6F870AB7L,(-1L)}};
        int16_t l_67[6] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
        int32_t l_68[6][8][3] = {{{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L}},{{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L}},{{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L}},{{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L}},{{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L}},{{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L},{0x7E4DA927L,0x0541AD1FL,1L}}};
        uint64_t l_69 = 0xE9916C91CB4C1B82L;
        uint16_t *l_86 = &p_1908->g_87;
        int32_t **l_102 = &l_49;
        uint64_t *l_109 = &l_69;
        int8_t l_167 = 0x66L;
        int i, j, k;
        l_69++;
    }
    (*p_1908->g_690) = l_49;
    ++l_963;
    return (*l_51);
}


/* ------------------------------------------ */
/* 
 * reads : p_1908->g_200 p_1908->g_192 p_1908->g_866 p_1908->g_157 p_1908->g_50 p_1908->g_92 p_1908->g_3 p_1908->g_923 p_1908->g_925 p_1908->g_257
 * writes: p_1908->g_200 p_1908->g_257 p_1908->g_192 p_1908->g_50 p_1908->g_395 p_1908->g_685 p_1908->g_157 p_1908->g_92 p_1908->g_205 p_1908->g_112 p_1908->g_158
 */
int32_t  func_72(uint64_t  p_73, int32_t * p_74, int32_t * p_75, uint64_t  p_76, int32_t  p_77, struct S0 * p_1908)
{ /* block id: 404 */
    uint32_t ***l_838 = &p_1908->g_360;
    int64_t **l_841 = &p_1908->g_617;
    int32_t l_854 = (-9L);
    int32_t l_915 = 0x4DFA03EFL;
    int32_t l_918[7][5][6] = {{{4L,0x17B71FE9L,0x7F9B06BBL,0x22DCA22AL,0x3A9853DDL,0L},{4L,0x17B71FE9L,0x7F9B06BBL,0x22DCA22AL,0x3A9853DDL,0L},{4L,0x17B71FE9L,0x7F9B06BBL,0x22DCA22AL,0x3A9853DDL,0L},{4L,0x17B71FE9L,0x7F9B06BBL,0x22DCA22AL,0x3A9853DDL,0L},{4L,0x17B71FE9L,0x7F9B06BBL,0x22DCA22AL,0x3A9853DDL,0L}},{{4L,0x17B71FE9L,0x7F9B06BBL,0x22DCA22AL,0x3A9853DDL,0L},{4L,0x17B71FE9L,0x7F9B06BBL,0x22DCA22AL,0x3A9853DDL,0L},{4L,0x17B71FE9L,0x7F9B06BBL,0x22DCA22AL,0x3A9853DDL,0L},{4L,0x17B71FE9L,0x7F9B06BBL,0x22DCA22AL,0x3A9853DDL,0L},{4L,0x17B71FE9L,0x7F9B06BBL,0x22DCA22AL,0x3A9853DDL,0L}},{{4L,0x17B71FE9L,0x7F9B06BBL,0x22DCA22AL,0x3A9853DDL,0L},{4L,0x17B71FE9L,0x7F9B06BBL,0x22DCA22AL,0x3A9853DDL,0L},{4L,0x17B71FE9L,0x7F9B06BBL,0x22DCA22AL,0x3A9853DDL,0L},{4L,0x17B71FE9L,0x7F9B06BBL,0x22DCA22AL,0x3A9853DDL,0L},{4L,0x17B71FE9L,0x7F9B06BBL,0x22DCA22AL,0x3A9853DDL,0L}},{{4L,0x17B71FE9L,0x7F9B06BBL,0x22DCA22AL,0x3A9853DDL,0L},{4L,0x17B71FE9L,0x7F9B06BBL,0x22DCA22AL,0x3A9853DDL,0L},{4L,0x17B71FE9L,0x7F9B06BBL,0x22DCA22AL,0x3A9853DDL,0L},{4L,0x17B71FE9L,0x7F9B06BBL,0x22DCA22AL,0x3A9853DDL,0L},{4L,0x17B71FE9L,0x7F9B06BBL,0x22DCA22AL,0x3A9853DDL,0L}},{{4L,0x17B71FE9L,0x7F9B06BBL,0x22DCA22AL,0x3A9853DDL,0L},{4L,0x17B71FE9L,0x7F9B06BBL,0x22DCA22AL,0x3A9853DDL,0L},{4L,0x17B71FE9L,0x7F9B06BBL,0x22DCA22AL,0x3A9853DDL,0L},{4L,0x17B71FE9L,0x7F9B06BBL,0x22DCA22AL,0x3A9853DDL,0L},{4L,0x17B71FE9L,0x7F9B06BBL,0x22DCA22AL,0x3A9853DDL,0L}},{{4L,0x17B71FE9L,0x7F9B06BBL,0x22DCA22AL,0x3A9853DDL,0L},{4L,0x17B71FE9L,0x7F9B06BBL,0x22DCA22AL,0x3A9853DDL,0L},{4L,0x17B71FE9L,0x7F9B06BBL,0x22DCA22AL,0x3A9853DDL,0L},{4L,0x17B71FE9L,0x7F9B06BBL,0x22DCA22AL,0x3A9853DDL,0L},{4L,0x17B71FE9L,0x7F9B06BBL,0x22DCA22AL,0x3A9853DDL,0L}},{{4L,0x17B71FE9L,0x7F9B06BBL,0x22DCA22AL,0x3A9853DDL,0L},{4L,0x17B71FE9L,0x7F9B06BBL,0x22DCA22AL,0x3A9853DDL,0L},{4L,0x17B71FE9L,0x7F9B06BBL,0x22DCA22AL,0x3A9853DDL,0L},{4L,0x17B71FE9L,0x7F9B06BBL,0x22DCA22AL,0x3A9853DDL,0L},{4L,0x17B71FE9L,0x7F9B06BBL,0x22DCA22AL,0x3A9853DDL,0L}}};
    uint32_t *l_924 = &p_1908->g_200;
    int i, j, k;
    for (p_1908->g_200 = 22; (p_1908->g_200 != 43); ++p_1908->g_200)
    { /* block id: 407 */
        uint8_t l_859 = 4UL;
        uint32_t ***l_861 = &p_1908->g_360;
        int32_t l_895 = (-1L);
        int32_t l_897 = (-1L);
        int32_t l_919[4] = {0x43016AFDL,0x43016AFDL,0x43016AFDL,0x43016AFDL};
        uint64_t l_920 = 0x9E52588C39FC78E5L;
        int i;
        for (p_1908->g_257 = 17; (p_1908->g_257 > 20); p_1908->g_257++)
        { /* block id: 410 */
            uint32_t ****l_835 = (void*)0;
            uint32_t ***l_837 = &p_1908->g_360;
            uint32_t ****l_836[9] = {&l_837,&l_837,&l_837,&l_837,&l_837,&l_837,&l_837,&l_837,&l_837};
            uint64_t *l_846[1][7][10] = {{{&p_1908->g_192,&p_1908->g_192,&p_1908->g_192,&p_1908->g_192,&p_1908->g_192,&p_1908->g_192,&p_1908->g_192,&p_1908->g_192,&p_1908->g_192,&p_1908->g_192},{&p_1908->g_192,&p_1908->g_192,&p_1908->g_192,&p_1908->g_192,&p_1908->g_192,&p_1908->g_192,&p_1908->g_192,&p_1908->g_192,&p_1908->g_192,&p_1908->g_192},{&p_1908->g_192,&p_1908->g_192,&p_1908->g_192,&p_1908->g_192,&p_1908->g_192,&p_1908->g_192,&p_1908->g_192,&p_1908->g_192,&p_1908->g_192,&p_1908->g_192},{&p_1908->g_192,&p_1908->g_192,&p_1908->g_192,&p_1908->g_192,&p_1908->g_192,&p_1908->g_192,&p_1908->g_192,&p_1908->g_192,&p_1908->g_192,&p_1908->g_192},{&p_1908->g_192,&p_1908->g_192,&p_1908->g_192,&p_1908->g_192,&p_1908->g_192,&p_1908->g_192,&p_1908->g_192,&p_1908->g_192,&p_1908->g_192,&p_1908->g_192},{&p_1908->g_192,&p_1908->g_192,&p_1908->g_192,&p_1908->g_192,&p_1908->g_192,&p_1908->g_192,&p_1908->g_192,&p_1908->g_192,&p_1908->g_192,&p_1908->g_192},{&p_1908->g_192,&p_1908->g_192,&p_1908->g_192,&p_1908->g_192,&p_1908->g_192,&p_1908->g_192,&p_1908->g_192,&p_1908->g_192,&p_1908->g_192,&p_1908->g_192}}};
            uint64_t **l_847 = &l_846[0][2][6];
            uint64_t *l_857 = &p_1908->g_192;
            int32_t l_858 = 0x2315D6B7L;
            int64_t **l_860 = &p_1908->g_285[2][1][1];
            int32_t l_913 = 0x7D12B3B0L;
            int32_t l_914[2];
            int i, j, k;
            for (i = 0; i < 2; i++)
                l_914[i] = (-10L);
            if ((((((l_838 = (void*)0) == (((safe_div_func_uint32_t_u_u((l_841 != ((safe_mul_func_uint8_t_u_u((safe_sub_func_uint8_t_u_u(((((*l_847) = l_846[0][2][6]) != &p_76) | (safe_rshift_func_uint8_t_u_u(((((safe_mul_func_uint8_t_u_u((((safe_div_func_uint8_t_u_u(l_854, (0x0EL | (0x33L != 1L)))) & ((+((safe_lshift_func_uint8_t_u_u(FAKE_DIVERGE(p_1908->group_2_offset, get_group_id(2), 10), 4)) && 18446744073709551614UL)) ^ l_854)) && GROUP_DIVERGE(1, 1)), 0x7FL)) , (void*)0) != l_857) > l_858), 4))), p_77)), l_859)) , l_860)), l_854)) != p_73) , l_861)) , l_859) | l_854) , l_859))
            { /* block id: 413 */
                uint64_t l_876 = 0xF03D8F39527860C3L;
                int32_t **l_878 = &p_1908->g_205[1];
                uint16_t *l_894[5][1][2];
                int64_t *l_896 = (void*)0;
                int i, j, k;
                for (i = 0; i < 5; i++)
                {
                    for (j = 0; j < 1; j++)
                    {
                        for (k = 0; k < 2; k++)
                            l_894[i][j][k] = &p_1908->g_87;
                    }
                }
                (*p_1908->g_866) = (safe_div_func_uint64_t_u_u(l_854, ((*l_857)++)));
                for (p_1908->g_395 = 27; (p_1908->g_395 < 59); ++p_1908->g_395)
                { /* block id: 418 */
                    int32_t *l_871[7] = {&p_1908->g_92,&p_1908->g_92,&p_1908->g_92,&p_1908->g_92,&p_1908->g_92,&p_1908->g_92,&p_1908->g_92};
                    int32_t *l_873 = &l_858;
                    int8_t *l_877[10][6][4] = {{{(void*)0,&p_1908->g_157[7],&p_1908->g_157[7],(void*)0},{(void*)0,&p_1908->g_157[7],&p_1908->g_157[7],(void*)0},{(void*)0,&p_1908->g_157[7],&p_1908->g_157[7],(void*)0},{(void*)0,&p_1908->g_157[7],&p_1908->g_157[7],(void*)0},{(void*)0,&p_1908->g_157[7],&p_1908->g_157[7],(void*)0},{(void*)0,&p_1908->g_157[7],&p_1908->g_157[7],(void*)0}},{{(void*)0,&p_1908->g_157[7],&p_1908->g_157[7],(void*)0},{(void*)0,&p_1908->g_157[7],&p_1908->g_157[7],(void*)0},{(void*)0,&p_1908->g_157[7],&p_1908->g_157[7],(void*)0},{(void*)0,&p_1908->g_157[7],&p_1908->g_157[7],(void*)0},{(void*)0,&p_1908->g_157[7],&p_1908->g_157[7],(void*)0},{(void*)0,&p_1908->g_157[7],&p_1908->g_157[7],(void*)0}},{{(void*)0,&p_1908->g_157[7],&p_1908->g_157[7],(void*)0},{(void*)0,&p_1908->g_157[7],&p_1908->g_157[7],(void*)0},{(void*)0,&p_1908->g_157[7],&p_1908->g_157[7],(void*)0},{(void*)0,&p_1908->g_157[7],&p_1908->g_157[7],(void*)0},{(void*)0,&p_1908->g_157[7],&p_1908->g_157[7],(void*)0},{(void*)0,&p_1908->g_157[7],&p_1908->g_157[7],(void*)0}},{{(void*)0,&p_1908->g_157[7],&p_1908->g_157[7],(void*)0},{(void*)0,&p_1908->g_157[7],&p_1908->g_157[7],(void*)0},{(void*)0,&p_1908->g_157[7],&p_1908->g_157[7],(void*)0},{(void*)0,&p_1908->g_157[7],&p_1908->g_157[7],(void*)0},{(void*)0,&p_1908->g_157[7],&p_1908->g_157[7],(void*)0},{(void*)0,&p_1908->g_157[7],&p_1908->g_157[7],(void*)0}},{{(void*)0,&p_1908->g_157[7],&p_1908->g_157[7],(void*)0},{(void*)0,&p_1908->g_157[7],&p_1908->g_157[7],(void*)0},{(void*)0,&p_1908->g_157[7],&p_1908->g_157[7],(void*)0},{(void*)0,&p_1908->g_157[7],&p_1908->g_157[7],(void*)0},{(void*)0,&p_1908->g_157[7],&p_1908->g_157[7],(void*)0},{(void*)0,&p_1908->g_157[7],&p_1908->g_157[7],(void*)0}},{{(void*)0,&p_1908->g_157[7],&p_1908->g_157[7],(void*)0},{(void*)0,&p_1908->g_157[7],&p_1908->g_157[7],(void*)0},{(void*)0,&p_1908->g_157[7],&p_1908->g_157[7],(void*)0},{(void*)0,&p_1908->g_157[7],&p_1908->g_157[7],(void*)0},{(void*)0,&p_1908->g_157[7],&p_1908->g_157[7],(void*)0},{(void*)0,&p_1908->g_157[7],&p_1908->g_157[7],(void*)0}},{{(void*)0,&p_1908->g_157[7],&p_1908->g_157[7],(void*)0},{(void*)0,&p_1908->g_157[7],&p_1908->g_157[7],(void*)0},{(void*)0,&p_1908->g_157[7],&p_1908->g_157[7],(void*)0},{(void*)0,&p_1908->g_157[7],&p_1908->g_157[7],(void*)0},{(void*)0,&p_1908->g_157[7],&p_1908->g_157[7],(void*)0},{(void*)0,&p_1908->g_157[7],&p_1908->g_157[7],(void*)0}},{{(void*)0,&p_1908->g_157[7],&p_1908->g_157[7],(void*)0},{(void*)0,&p_1908->g_157[7],&p_1908->g_157[7],(void*)0},{(void*)0,&p_1908->g_157[7],&p_1908->g_157[7],(void*)0},{(void*)0,&p_1908->g_157[7],&p_1908->g_157[7],(void*)0},{(void*)0,&p_1908->g_157[7],&p_1908->g_157[7],(void*)0},{(void*)0,&p_1908->g_157[7],&p_1908->g_157[7],(void*)0}},{{(void*)0,&p_1908->g_157[7],&p_1908->g_157[7],(void*)0},{(void*)0,&p_1908->g_157[7],&p_1908->g_157[7],(void*)0},{(void*)0,&p_1908->g_157[7],&p_1908->g_157[7],(void*)0},{(void*)0,&p_1908->g_157[7],&p_1908->g_157[7],(void*)0},{(void*)0,&p_1908->g_157[7],&p_1908->g_157[7],(void*)0},{(void*)0,&p_1908->g_157[7],&p_1908->g_157[7],(void*)0}},{{(void*)0,&p_1908->g_157[7],&p_1908->g_157[7],(void*)0},{(void*)0,&p_1908->g_157[7],&p_1908->g_157[7],(void*)0},{(void*)0,&p_1908->g_157[7],&p_1908->g_157[7],(void*)0},{(void*)0,&p_1908->g_157[7],&p_1908->g_157[7],(void*)0},{(void*)0,&p_1908->g_157[7],&p_1908->g_157[7],(void*)0},{(void*)0,&p_1908->g_157[7],&p_1908->g_157[7],(void*)0}}};
                    int i, j, k;
                    for (p_1908->g_685 = 9; (p_1908->g_685 >= 0); p_1908->g_685 -= 1)
                    { /* block id: 421 */
                        return l_859;
                    }
                    for (p_76 = (-13); (p_76 != 44); p_76 = safe_add_func_uint8_t_u_u(p_76, 7))
                    { /* block id: 426 */
                        int32_t **l_872[2];
                        int i;
                        for (i = 0; i < 2; i++)
                            l_872[i] = &l_871[5];
                        l_873 = (p_75 = l_871[5]);
                        if (p_73)
                            goto lbl_926;
                    }
                    (*l_873) ^= (~(~(safe_add_func_int8_t_s_s((p_1908->g_157[1] |= l_876), 0x3AL))));
                }
                (*l_878) = p_74;
            }
            else
            { /* block id: 438 */
                uint8_t l_898[6] = {1UL,1UL,1UL,1UL,1UL,1UL};
                int32_t *l_899 = &p_1908->g_112;
                int32_t l_902 = 0x6B8D89FDL;
                int32_t l_916 = 0x256239D3L;
                int32_t l_917 = 0x22AD701EL;
                int i;
                (*l_899) = (((*p_75) ^ p_1908->g_92) , l_898[2]);
                for (p_1908->g_158 = 0; (p_1908->g_158 < 33); p_1908->g_158 = safe_add_func_uint64_t_u_u(p_1908->g_158, 6))
                { /* block id: 442 */
                    int32_t *l_903 = &p_1908->g_50[3][9];
                    int32_t *l_904 = &p_1908->g_112;
                    int32_t *l_905 = &p_1908->g_50[4][6];
                    int32_t *l_906 = (void*)0;
                    int32_t *l_907 = &p_1908->g_92;
                    int32_t *l_908 = &l_897;
                    int32_t *l_909 = &p_1908->g_92;
                    int32_t *l_910 = &p_1908->g_50[0][4];
                    int32_t *l_911 = &l_858;
                    int32_t *l_912[7] = {&l_902,&l_902,&l_902,&l_902,&l_902,&l_902,&l_902};
                    int i;
                    l_920--;
                }
            }
            (*p_1908->g_923) = (&p_1908->g_576 == (void*)0);
        }
    }
lbl_926:
    (*p_1908->g_925) ^= ((!(l_924 == p_74)) && p_77);
    return (*p_75);
}


/* ------------------------------------------ */
/* 
 * reads : p_1908->g_654 p_1908->g_112 p_1908->g_157 p_1908->g_572 p_1908->g_523 p_1908->g_678 p_1908->g_3 p_1908->g_682 p_1908->g_685 p_1908->g_352 p_1908->g_11 p_1908->g_282 p_1908->g_87 p_1908->g_690 p_1908->g_50 p_1908->g_122 p_1908->g_127 p_1908->g_712 p_1908->g_395 p_1908->g_192 p_1908->g_357 p_1908->g_92 p_1908->g_571 p_1908->g_465 p_1908->g_680 p_1908->g_809 p_1908->g_822
 * writes: p_1908->g_205 p_1908->g_130 p_1908->g_192 p_1908->g_112 p_1908->g_158 p_1908->g_282 p_1908->g_122 p_1908->g_682 p_1908->g_685 p_1908->g_703 p_1908->g_157 p_1908->g_395 p_1908->g_92 p_1908->g_572 p_1908->g_127 p_1908->g_810
 */
int32_t * func_78(int32_t * p_79, int32_t  p_80, struct S0 * p_1908)
{ /* block id: 307 */
    uint64_t l_662 = 0UL;
    int32_t *l_697[6][3][3] = {{{&p_1908->g_92,&p_1908->g_92,&p_1908->g_50[4][2]},{&p_1908->g_92,&p_1908->g_92,&p_1908->g_50[4][2]},{&p_1908->g_92,&p_1908->g_92,&p_1908->g_50[4][2]}},{{&p_1908->g_92,&p_1908->g_92,&p_1908->g_50[4][2]},{&p_1908->g_92,&p_1908->g_92,&p_1908->g_50[4][2]},{&p_1908->g_92,&p_1908->g_92,&p_1908->g_50[4][2]}},{{&p_1908->g_92,&p_1908->g_92,&p_1908->g_50[4][2]},{&p_1908->g_92,&p_1908->g_92,&p_1908->g_50[4][2]},{&p_1908->g_92,&p_1908->g_92,&p_1908->g_50[4][2]}},{{&p_1908->g_92,&p_1908->g_92,&p_1908->g_50[4][2]},{&p_1908->g_92,&p_1908->g_92,&p_1908->g_50[4][2]},{&p_1908->g_92,&p_1908->g_92,&p_1908->g_50[4][2]}},{{&p_1908->g_92,&p_1908->g_92,&p_1908->g_50[4][2]},{&p_1908->g_92,&p_1908->g_92,&p_1908->g_50[4][2]},{&p_1908->g_92,&p_1908->g_92,&p_1908->g_50[4][2]}},{{&p_1908->g_92,&p_1908->g_92,&p_1908->g_50[4][2]},{&p_1908->g_92,&p_1908->g_92,&p_1908->g_50[4][2]},{&p_1908->g_92,&p_1908->g_92,&p_1908->g_50[4][2]}}};
    int16_t **l_704 = (void*)0;
    uint8_t l_719 = 0UL;
    uint8_t l_775[9][10] = {{251UL,0xF9L,0xABL,0xADL,0xABL,0xF9L,251UL,0x85L,1UL,0UL},{251UL,0xF9L,0xABL,0xADL,0xABL,0xF9L,251UL,0x85L,1UL,0UL},{251UL,0xF9L,0xABL,0xADL,0xABL,0xF9L,251UL,0x85L,1UL,0UL},{251UL,0xF9L,0xABL,0xADL,0xABL,0xF9L,251UL,0x85L,1UL,0UL},{251UL,0xF9L,0xABL,0xADL,0xABL,0xF9L,251UL,0x85L,1UL,0UL},{251UL,0xF9L,0xABL,0xADL,0xABL,0xF9L,251UL,0x85L,1UL,0UL},{251UL,0xF9L,0xABL,0xADL,0xABL,0xF9L,251UL,0x85L,1UL,0UL},{251UL,0xF9L,0xABL,0xADL,0xABL,0xF9L,251UL,0x85L,1UL,0UL},{251UL,0xF9L,0xABL,0xADL,0xABL,0xF9L,251UL,0x85L,1UL,0UL}};
    uint32_t *l_798 = &p_1908->g_200;
    uint32_t **l_797 = &l_798;
    int64_t **l_805 = &p_1908->g_285[0][0][3];
    int32_t l_815 = (-1L);
    int i, j, k;
    for (p_80 = 0; (p_80 <= 2); p_80 += 1)
    { /* block id: 310 */
        int32_t *l_652 = &p_1908->g_112;
        uint32_t l_686 = 0xA765FBCFL;
        int16_t **l_702 = (void*)0;
        uint64_t *l_743 = &p_1908->g_192;
        int16_t l_749 = 0x08DEL;
        uint8_t *l_757 = &l_719;
        uint32_t l_819 = 0x38BDC7E4L;
        int i;
        (*p_1908->g_654) = l_652;
        for (p_1908->g_130 = 0; (p_1908->g_130 <= 2); p_1908->g_130 += 1)
        { /* block id: 314 */
            int8_t l_687[9];
            int32_t *l_691 = &p_1908->g_50[0][0];
            int32_t l_714[1];
            uint8_t *l_756 = (void*)0;
            int i;
            for (i = 0; i < 9; i++)
                l_687[i] = 0x01L;
            for (i = 0; i < 1; i++)
                l_714[i] = 0L;
            for (p_1908->g_192 = 0; (p_1908->g_192 <= 2); p_1908->g_192 += 1)
            { /* block id: 317 */
                int64_t l_688 = 0x1B49ABD0C01F76D7L;
                int16_t *l_713[4] = {&p_1908->g_282,&p_1908->g_282,&p_1908->g_282,&p_1908->g_282};
                uint32_t l_762[8] = {4294967289UL,4294967289UL,4294967289UL,4294967289UL,4294967289UL,4294967289UL,4294967289UL,4294967289UL};
                uint32_t l_777 = 0xFDA56A7BL;
                int i;
                for (p_1908->g_112 = 6; (p_1908->g_112 >= 0); p_1908->g_112 -= 1)
                { /* block id: 320 */
                    uint32_t l_655[8] = {1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL};
                    int i;
                    if (p_1908->g_157[(p_1908->g_112 + 1)])
                        break;
                    if (l_655[3])
                        continue;
                }
                (*l_652) |= p_1908->g_157[(p_80 + 5)];
                for (p_1908->g_158 = 0; (p_1908->g_158 <= 2); p_1908->g_158 += 1)
                { /* block id: 327 */
                    int32_t l_656 = (-1L);
                    int32_t **l_692 = &l_691;
                    for (p_1908->g_282 = 2; (p_1908->g_282 >= 0); p_1908->g_282 -= 1)
                    { /* block id: 330 */
                        uint64_t *l_657 = (void*)0;
                        uint32_t *l_681 = &p_1908->g_682;
                        int16_t *l_683 = (void*)0;
                        int16_t *l_684 = &p_1908->g_685;
                        if (l_656)
                            break;
                        (*l_652) |= (FAKE_DIVERGE(p_1908->group_2_offset, get_group_id(2), 10) & (+((void*)0 != l_657)));
                        l_688 |= (safe_mul_func_uint8_t_u_u(((*p_1908->g_572) = (safe_mod_func_int16_t_s_s(l_662, 0x0E45L))), (safe_mod_func_uint32_t_u_u(((+(safe_div_func_int8_t_s_s((((safe_div_func_uint16_t_u_u(((safe_sub_func_int16_t_s_s(((*l_684) ^= (safe_rshift_func_int16_t_s_s((safe_sub_func_int64_t_s_s((safe_lshift_func_int8_t_s_s((p_1908->g_523 & (safe_unary_minus_func_int32_t_s(p_80))), (p_1908->g_678 != &p_1908->g_679))), (((*l_681) |= p_1908->g_3) >= ((*l_652) && 0x3BL)))), 15))), (*p_1908->g_352))) | l_686), p_1908->g_11)) == (*p_1908->g_352)) && p_80), l_687[6]))) == 18446744073709551615UL), p_1908->g_87))));
                    }
                    for (p_1908->g_112 = 7; (p_1908->g_112 >= 1); p_1908->g_112 -= 1)
                    { /* block id: 340 */
                        int32_t *l_689 = (void*)0;
                        if ((*l_652))
                            break;
                        (*p_1908->g_690) = l_689;
                        if (l_687[6])
                            break;
                    }
                    (*l_692) = l_691;
                    for (p_1908->g_282 = 2; (p_1908->g_282 >= 0); p_1908->g_282 -= 1)
                    { /* block id: 348 */
                        (*l_652) = (safe_mul_func_uint8_t_u_u(((l_662 > (safe_add_func_uint64_t_u_u((0x23L >= 4L), (*l_691)))) > p_1908->g_157[5]), ((~((void*)0 == l_697[2][2][1])) , ((**l_692) & ((safe_sub_func_int16_t_s_s((*p_1908->g_352), 0xB14CL)) || (*p_1908->g_572))))));
                    }
                }
                if (((p_1908->g_127 , (((safe_add_func_int8_t_s_s(((p_1908->g_703[0][1][0] = l_702) != &p_1908->g_352), p_80)) && (l_704 == (void*)0)) < (safe_lshift_func_uint16_t_u_s((!(safe_lshift_func_uint16_t_u_u((safe_unary_minus_func_int64_t_s((safe_mod_func_int16_t_s_s((l_714[0] |= (((l_688 | 0xB5L) | (p_1908->g_712 <= GROUP_DIVERGE(2, 1))) | p_80)), (*p_1908->g_352))))), p_1908->g_122[1]))), (*p_1908->g_352))))) < GROUP_DIVERGE(0, 1)))
                { /* block id: 354 */
                    int32_t **l_715 = &p_1908->g_205[2];
                    int32_t **l_716[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                    uint8_t **l_758 = &p_1908->g_572;
                    uint16_t *l_759 = &p_1908->g_127;
                    int i;
                    (*l_715) = ((l_697[0][2][2] == (p_79 = p_79)) , p_79);
                    for (l_662 = 0; (l_662 <= 2); l_662 += 1)
                    { /* block id: 359 */
                        int32_t l_744 = 0x2D1DC124L;
                        uint16_t *l_745 = &p_1908->g_395;
                        int8_t *l_746 = (void*)0;
                        int8_t *l_747 = (void*)0;
                        int8_t *l_748 = &l_687[6];
                        int i;
                        (*p_1908->g_357) ^= (l_744 = ((*l_652) = (safe_mod_func_int8_t_s_s(((*l_748) = (((l_719 <= 0UL) <= (safe_rshift_func_uint8_t_u_u(((safe_mul_func_uint8_t_u_u((safe_rshift_func_uint8_t_u_s((safe_add_func_int64_t_s_s(((safe_mul_func_uint16_t_u_u(0x303DL, (safe_add_func_int32_t_s_s((((*l_745) |= (safe_lshift_func_int16_t_s_u((safe_mul_func_uint8_t_u_u((*p_1908->g_572), ((0x1AL == (p_1908->g_157[7] = (safe_unary_minus_func_uint64_t_u((((safe_lshift_func_int16_t_s_s((safe_lshift_func_int8_t_s_s(p_80, (((0x88ED56FB844EBE79L || (safe_sub_func_uint32_t_u_u((l_743 == ((((~((-7L) | 0x299E5AF02EA0CB12L)) , 4L) & p_80) , (void*)0)), l_744))) >= (*l_691)) < FAKE_DIVERGE(p_1908->group_2_offset, get_group_id(2), 10)))), 8)) || p_80) , 0xF4C875BD73C679BEL))))) == 0UL))), 12))) <= p_80), p_1908->g_192)))) , 1L), 7UL)), 3)), p_1908->g_682)) <= 65535UL), FAKE_DIVERGE(p_1908->group_0_offset, get_group_id(0), 10)))) | 0xC2AE47B5L)), 0xFCL))));
                        l_749 &= 0x72A0E177L;
                    }
                    p_79 = p_79;
                    (*l_652) = (safe_rshift_func_uint16_t_u_u((((safe_lshift_func_uint16_t_u_u(p_80, 10)) && (l_756 == ((*l_758) = l_757))) | (*l_691)), ((*l_759) = 0UL)));
                }
                else
                { /* block id: 372 */
                    uint64_t *l_763 = &l_662;
                    uint64_t *l_776[6] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                    int32_t l_788 = (-1L);
                    int32_t l_789 = 2L;
                    int i;
                    if ((*l_652))
                        break;
                    (*l_652) = 9L;
                    if (p_80)
                        break;
                    l_789 ^= (((safe_sub_func_uint64_t_u_u((l_762[2] , ((*l_763) = p_1908->g_122[2])), (((((safe_rshift_func_int8_t_s_u((safe_lshift_func_int16_t_s_s(((safe_sub_func_int16_t_s_s((safe_mod_func_int16_t_s_s(0x4BB4L, (safe_lshift_func_uint16_t_u_u(((safe_unary_minus_func_int16_t_s((*l_691))) == (l_777 = (p_80 && l_775[8][8]))), (safe_add_func_int16_t_s_s(p_80, (*l_652))))))), (safe_mod_func_int16_t_s_s(((safe_sub_func_int8_t_s_s((((safe_rshift_func_uint8_t_u_s((((safe_mul_func_int8_t_s_s((+p_80), 0x7EL)) ^ p_80) == p_1908->g_282), 2)) <= p_80) , p_80), p_80)) <= (*l_691)), p_80)))) == l_788), 11)), 7)) <= p_80) , 0x8A5B45A6L) && p_1908->g_282) > p_80))) , (**p_1908->g_571)) != GROUP_DIVERGE(0, 1));
                }
            }
        }
        if ((*l_652))
            continue;
        if (p_80)
        { /* block id: 383 */
            int8_t l_790 = 0x75L;
            if (l_790)
                break;
        }
        else
        { /* block id: 385 */
            int32_t l_801 = 0x13463A2DL;
            uint8_t l_804 = 1UL;
            int64_t ***l_806 = &l_805;
            int64_t **l_808 = &p_1908->g_617;
            int64_t ***l_807 = &l_808;
            int32_t l_816 = 1L;
            (*l_652) ^= 1L;
            (*p_1908->g_809) = ((*l_807) = ((*l_806) = ((safe_mod_func_int8_t_s_s(p_80, (safe_add_func_int16_t_s_s(((safe_add_func_int64_t_s_s((p_80 > p_80), ((p_80 || (((&p_1908->g_679 != l_797) && ((((safe_div_func_int16_t_s_s((l_801 = ((*p_1908->g_352) <= (*p_1908->g_352))), (safe_div_func_int8_t_s_s(p_80, p_80)))) && FAKE_DIVERGE(p_1908->global_0_offset, get_global_id(0), 10)) , p_1908->g_465[5]) == l_804)) && p_1908->g_680)) , 0x0CA46340F21C6625L))) == 1UL), (*l_652))))) , l_805)));
            for (l_749 = 0; (l_749 >= 4); l_749 = safe_add_func_int32_t_s_s(l_749, 3))
            { /* block id: 393 */
                int16_t l_813 = 7L;
                int32_t l_814 = 0x1B2D6014L;
                int32_t l_817 = (-1L);
                int32_t l_818 = (-9L);
                (*l_652) = l_813;
                l_819++;
                (*l_652) = l_817;
                if (p_1908->g_822)
                    continue;
            }
            (*p_1908->g_357) = (safe_sub_func_int8_t_s_s(l_801, (safe_add_func_uint32_t_u_u((((p_1908->g_11 < l_804) , (safe_mul_func_uint16_t_u_u((safe_add_func_int64_t_s_s(((p_79 != &p_1908->g_465[5]) <= 0x600FL), p_80)), (l_816 ^ (((*l_652) = p_80) ^ 0xF674A64CL))))) != p_1908->g_680), l_816))));
        }
    }
    return l_697[2][2][1];
}


/* ------------------------------------------ */
/* 
 * reads : p_1908->g_50 p_1908->g_comm_values p_1908->g_3 p_1908->g_130 p_1908->g_112 p_1908->g_157 p_1908->g_204 p_1908->l_comm_values p_1908->g_115 p_1908->g_205 p_1908->g_127 p_1908->g_192 p_1908->g_116 p_1908->g_284 p_1908->g_282 p_1908->g_158 p_1908->g_128 p_1908->g_122 p_1908->g_11 p_1908->g_357 p_1908->g_87 p_1908->g_285 p_1908->g_92 p_1908->g_395 p_1908->g_257 p_1908->g_352 p_1908->g_200 p_1908->g_465 p_1908->g_478 p_1908->g_523 p_1908->g_571 p_1908->g_575 p_1908->g_572 p_1908->g_580 p_1908->g_583 p_1908->g_360
 * writes: p_1908->g_127 p_1908->g_comm_values p_1908->g_200 p_1908->g_157 p_1908->g_122 p_1908->g_205 p_1908->g_130 p_1908->g_112 p_1908->g_352 p_1908->g_92 p_1908->g_360 p_1908->g_87 p_1908->g_395 p_1908->g_128 p_1908->g_282 p_1908->g_192 p_1908->g_575 p_1908->g_285 p_1908->g_617
 */
int32_t * func_81(uint16_t  p_82, int32_t * p_83, struct S0 * p_1908)
{ /* block id: 48 */
    int64_t l_171 = 0L;
    int32_t l_183 = (-1L);
    uint16_t *l_186 = &p_1908->g_11;
    int32_t l_190 = 0L;
    uint64_t *l_191[1];
    int64_t **l_197 = (void*)0;
    int64_t *l_198 = &l_171;
    uint32_t *l_199 = &p_1908->g_200;
    int8_t *l_201 = &p_1908->g_157[7];
    uint8_t *l_202[5][1][1];
    uint8_t l_230 = 255UL;
    int32_t l_251[7] = {0x6069A611L,0x6069A611L,0x6069A611L,0x6069A611L,0x6069A611L,0x6069A611L,0x6069A611L};
    int32_t l_258[1];
    uint64_t l_265 = 0x080BFE1B017B55F8L;
    int64_t l_286 = 0x655FAAF14233DAA1L;
    uint8_t l_326[4][9] = {{0x89L,0xADL,4UL,1UL,1UL,0x89L,1UL,1UL,1UL},{0x89L,0xADL,4UL,1UL,1UL,0x89L,1UL,1UL,1UL},{0x89L,0xADL,4UL,1UL,1UL,0x89L,1UL,1UL,1UL},{0x89L,0xADL,4UL,1UL,1UL,0x89L,1UL,1UL,1UL}};
    uint16_t l_439 = 0x1EDEL;
    int8_t *l_562 = (void*)0;
    uint8_t l_639[1];
    int32_t *l_650 = &l_190;
    int32_t *l_651 = &p_1908->g_50[0][5];
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_191[i] = &p_1908->g_192;
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 1; k++)
                l_202[i][j][k] = (void*)0;
        }
    }
    for (i = 0; i < 1; i++)
        l_258[i] = 1L;
    for (i = 0; i < 1; i++)
        l_639[i] = 0x90L;
lbl_287:
    for (p_1908->g_127 = 0; (p_1908->g_127 >= 19); p_1908->g_127 = safe_add_func_int16_t_s_s(p_1908->g_127, 1))
    { /* block id: 51 */
        int32_t *l_170[10][9][2] = {{{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112}},{{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112}},{{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112}},{{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112}},{{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112}},{{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112}},{{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112}},{{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112}},{{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112}},{{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112},{&p_1908->g_50[0][3],&p_1908->g_112}}};
        uint16_t *l_182[8] = {&p_1908->g_87,&p_1908->g_87,&p_1908->g_87,&p_1908->g_87,&p_1908->g_87,&p_1908->g_87,&p_1908->g_87,&p_1908->g_87};
        int64_t *l_189[10][8][3] = {{{&l_171,(void*)0,&l_171},{&l_171,(void*)0,&l_171},{&l_171,(void*)0,&l_171},{&l_171,(void*)0,&l_171},{&l_171,(void*)0,&l_171},{&l_171,(void*)0,&l_171},{&l_171,(void*)0,&l_171},{&l_171,(void*)0,&l_171}},{{&l_171,(void*)0,&l_171},{&l_171,(void*)0,&l_171},{&l_171,(void*)0,&l_171},{&l_171,(void*)0,&l_171},{&l_171,(void*)0,&l_171},{&l_171,(void*)0,&l_171},{&l_171,(void*)0,&l_171},{&l_171,(void*)0,&l_171}},{{&l_171,(void*)0,&l_171},{&l_171,(void*)0,&l_171},{&l_171,(void*)0,&l_171},{&l_171,(void*)0,&l_171},{&l_171,(void*)0,&l_171},{&l_171,(void*)0,&l_171},{&l_171,(void*)0,&l_171},{&l_171,(void*)0,&l_171}},{{&l_171,(void*)0,&l_171},{&l_171,(void*)0,&l_171},{&l_171,(void*)0,&l_171},{&l_171,(void*)0,&l_171},{&l_171,(void*)0,&l_171},{&l_171,(void*)0,&l_171},{&l_171,(void*)0,&l_171},{&l_171,(void*)0,&l_171}},{{&l_171,(void*)0,&l_171},{&l_171,(void*)0,&l_171},{&l_171,(void*)0,&l_171},{&l_171,(void*)0,&l_171},{&l_171,(void*)0,&l_171},{&l_171,(void*)0,&l_171},{&l_171,(void*)0,&l_171},{&l_171,(void*)0,&l_171}},{{&l_171,(void*)0,&l_171},{&l_171,(void*)0,&l_171},{&l_171,(void*)0,&l_171},{&l_171,(void*)0,&l_171},{&l_171,(void*)0,&l_171},{&l_171,(void*)0,&l_171},{&l_171,(void*)0,&l_171},{&l_171,(void*)0,&l_171}},{{&l_171,(void*)0,&l_171},{&l_171,(void*)0,&l_171},{&l_171,(void*)0,&l_171},{&l_171,(void*)0,&l_171},{&l_171,(void*)0,&l_171},{&l_171,(void*)0,&l_171},{&l_171,(void*)0,&l_171},{&l_171,(void*)0,&l_171}},{{&l_171,(void*)0,&l_171},{&l_171,(void*)0,&l_171},{&l_171,(void*)0,&l_171},{&l_171,(void*)0,&l_171},{&l_171,(void*)0,&l_171},{&l_171,(void*)0,&l_171},{&l_171,(void*)0,&l_171},{&l_171,(void*)0,&l_171}},{{&l_171,(void*)0,&l_171},{&l_171,(void*)0,&l_171},{&l_171,(void*)0,&l_171},{&l_171,(void*)0,&l_171},{&l_171,(void*)0,&l_171},{&l_171,(void*)0,&l_171},{&l_171,(void*)0,&l_171},{&l_171,(void*)0,&l_171}},{{&l_171,(void*)0,&l_171},{&l_171,(void*)0,&l_171},{&l_171,(void*)0,&l_171},{&l_171,(void*)0,&l_171},{&l_171,(void*)0,&l_171},{&l_171,(void*)0,&l_171},{&l_171,(void*)0,&l_171},{&l_171,(void*)0,&l_171}}};
        int i, j, k;
        l_171 ^= (*p_83);
        l_190 = (safe_mod_func_uint32_t_u_u((safe_sub_func_uint16_t_u_u((safe_sub_func_uint64_t_u_u(18446744073709551613UL, (safe_add_func_uint8_t_u_u((safe_lshift_func_uint8_t_u_s((l_171 != (l_183 = (p_1908->g_50[0][4] != l_171))), 4)), ((safe_mul_func_int8_t_s_s(((((p_82 , (-1L)) , (void*)0) == l_186) , ((p_1908->g_comm_values[p_1908->tid] ^= (safe_lshift_func_uint16_t_u_s(0UL, p_82))) != 0xE6D5AF62C8C59DEAL)), p_82)) | p_82))))), p_1908->g_3)), 0x6BA593C7L));
        (*p_83) ^= l_190;
    }
    if (((l_191[0] != l_191[0]) && ((safe_rshift_func_uint8_t_u_u((p_1908->g_130 | (p_1908->g_122[2] = (safe_sub_func_int8_t_s_s(((p_1908->g_112 < (((&l_171 == (l_198 = &l_171)) , l_171) & (*p_83))) , ((*l_201) ^= (((((*l_199) = FAKE_DIVERGE(p_1908->group_1_offset, get_group_id(1), 10)) , l_199) != l_199) >= p_82))), 0x07L)))), l_183)) & p_82)))
    { /* block id: 62 */
        int32_t *l_203[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int i;
        return l_203[7];
    }
    else
    { /* block id: 64 */
        uint32_t l_214 = 0x23BF89DEL;
        int32_t l_232 = (-1L);
        uint32_t l_233[1];
        int32_t *l_253 = (void*)0;
        int32_t l_262 = 0x3562F081L;
        int64_t l_268[2][1][2] = {{{1L,1L}},{{1L,1L}}};
        uint64_t *l_313[9];
        uint16_t l_346 = 65535UL;
        int16_t l_347 = 0x7C41L;
        int32_t l_379 = 0x17F483C6L;
        int32_t l_381 = 0x2540F615L;
        int32_t l_384 = (-1L);
        int32_t l_386 = 5L;
        int32_t l_387 = 0x3C356E12L;
        int32_t l_390 = 0x7701B571L;
        int32_t *l_527[7] = {&l_258[0],&l_258[0],&l_258[0],&l_258[0],&l_258[0],&l_258[0],&l_258[0]};
        uint8_t **l_573 = &l_202[1][0][0];
        int i, j, k;
        for (i = 0; i < 1; i++)
            l_233[i] = 0xAE4B5D24L;
        for (i = 0; i < 9; i++)
            l_313[i] = (void*)0;
        if (((void*)0 != &p_83))
        { /* block id: 65 */
            int64_t l_219 = 1L;
            uint32_t *l_231 = &p_1908->g_130;
            int32_t *l_239 = (void*)0;
            int32_t l_256 = 6L;
            int32_t l_259 = 0L;
            int32_t l_260 = 1L;
            int32_t l_261 = 8L;
            int32_t l_263 = 0x37A764B2L;
            int32_t l_264 = 0x6B0DE3ACL;
            int64_t **l_420 = &p_1908->g_285[1][3][1];
            uint32_t **l_460 = &l_199;
            int64_t l_522 = 0x3D0278A24DA53F6CL;
            int32_t *l_528 = &p_1908->g_92;
            int16_t l_552 = (-1L);
            (*p_1908->g_204) = p_83;
            if ((safe_mod_func_int32_t_s_s(((*p_83) = (safe_rshift_func_uint8_t_u_u(p_1908->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1908->tid, 24))], (safe_mod_func_int16_t_s_s(p_1908->g_157[7], ((((*l_231) = (safe_lshift_func_int8_t_s_s((l_214 <= (safe_rshift_func_uint16_t_u_s((((safe_lshift_func_uint8_t_u_s((l_214 & (l_219 > 7UL)), 4)) <= (safe_add_func_uint8_t_u_u((safe_mul_func_uint8_t_u_u(1UL, ((safe_div_func_int8_t_s_s((safe_add_func_int64_t_s_s(((*l_198) = (((safe_lshift_func_uint8_t_u_s((p_82 <= p_82), p_1908->g_115)) >= (*p_83)) & l_230)), (-5L))), p_82)) , 0x18L))), 0x0AL))) <= GROUP_DIVERGE(1, 1)), 2))), l_183))) ^ l_232) & l_233[0])))))), 4294967295UL)))
            { /* block id: 70 */
                int32_t l_250 = 2L;
                int32_t l_252 = 0x6DA14404L;
                int32_t l_254[7][9] = {{0x51BD9DFEL,(-2L),1L,(-2L),0x51BD9DFEL,0x51BD9DFEL,(-2L),1L,(-2L)},{0x51BD9DFEL,(-2L),1L,(-2L),0x51BD9DFEL,0x51BD9DFEL,(-2L),1L,(-2L)},{0x51BD9DFEL,(-2L),1L,(-2L),0x51BD9DFEL,0x51BD9DFEL,(-2L),1L,(-2L)},{0x51BD9DFEL,(-2L),1L,(-2L),0x51BD9DFEL,0x51BD9DFEL,(-2L),1L,(-2L)},{0x51BD9DFEL,(-2L),1L,(-2L),0x51BD9DFEL,0x51BD9DFEL,(-2L),1L,(-2L)},{0x51BD9DFEL,(-2L),1L,(-2L),0x51BD9DFEL,0x51BD9DFEL,(-2L),1L,(-2L)},{0x51BD9DFEL,(-2L),1L,(-2L),0x51BD9DFEL,0x51BD9DFEL,(-2L),1L,(-2L)}};
                int32_t l_255 = 0L;
                uint64_t *l_304 = &l_265;
                int i, j;
                for (l_230 = 0; (l_230 <= 0); l_230 += 1)
                { /* block id: 73 */
                    int32_t **l_236 = (void*)0;
                    int32_t *l_238 = &p_1908->g_112;
                    int32_t **l_237[2];
                    int16_t *l_281[1][2][8] = {{{&p_1908->g_282,&p_1908->g_282,&p_1908->g_282,&p_1908->g_282,&p_1908->g_282,&p_1908->g_282,&p_1908->g_282,&p_1908->g_282},{&p_1908->g_282,&p_1908->g_282,&p_1908->g_282,&p_1908->g_282,&p_1908->g_282,&p_1908->g_282,&p_1908->g_282,&p_1908->g_282}}};
                    int64_t *l_283 = &l_219;
                    uint32_t l_288 = 1UL;
                    int i, j, k;
                    for (i = 0; i < 2; i++)
                        l_237[i] = &l_238;
                    (*p_83) ^= (((*l_201) = p_82) >= l_219);
                    l_253 = ((safe_lshift_func_uint8_t_u_s((l_190 ^= (0L < 0x71B6A7E92C8F0828L)), 3)) , ((((((p_1908->g_205[l_230] != (l_239 = p_83)) , ((*l_239) >= (safe_mul_func_int8_t_s_s(((safe_unary_minus_func_uint8_t_u((*l_238))) || (safe_add_func_int32_t_s_s(((l_183 = (safe_unary_minus_func_uint64_t_u(((safe_rshift_func_uint8_t_u_u((+(0x57CA6B27L & (safe_mul_func_int8_t_s_s(((l_250 = p_1908->g_127) && ((l_251[0] , 4UL) & (-1L))), l_190)))), l_252)) , p_82)))) && 65527UL), 8UL))), 0xFEL)))) == 4L) , (void*)0) == l_231) , (*p_1908->g_204)));
                    --l_265;
                    if ((l_268[0][0][1] | ((safe_mod_func_int64_t_s_s(((((*l_238) = (*l_239)) && (safe_mul_func_uint8_t_u_u((l_183 = ((*l_239) = (((safe_mod_func_int16_t_s_s(l_251[5], (safe_rshift_func_int16_t_s_s(8L, (+p_1908->g_192))))) == ((safe_lshift_func_uint8_t_u_s(((l_255 &= (safe_add_func_uint16_t_u_u(((((((!((*l_198) |= (0x93757472L <= ((l_190 = p_82) , 1UL)))) >= ((*l_283) = p_1908->g_116)) & l_250) < p_82) , p_1908->g_284) != &p_1908->g_285[2][3][0]), l_286))) != p_82), 4)) < p_82)) , 0xC0L))), p_82))) | l_258[0]), 0x5864D8F0F17592A3L)) || 0x116B99E8AA237366L)))
                    { /* block id: 89 */
                        if ((*p_83))
                            break;
                    }
                    else
                    { /* block id: 91 */
                        int8_t l_299 = 0x7AL;
                        if (l_219)
                            goto lbl_287;
                        (*p_1908->g_204) = (*p_1908->g_204);
                        l_288--;
                        (*l_239) = (safe_div_func_int16_t_s_s((0L >= ((p_1908->g_282 , (((safe_div_func_uint64_t_u_u(((GROUP_DIVERGE(2, 1) && (((((0x46FF8D6F02563EA5L <= p_1908->g_50[0][4]) > (safe_add_func_uint64_t_u_u((0x7BE9L == l_299), 0xFD42F38CA8310C79L))) == FAKE_DIVERGE(p_1908->local_1_offset, get_local_id(1), 10)) < l_230) >= (~0UL))) || 0x5A935A54L), p_1908->g_116)) >= 0x726017B8L) <= p_82)) != 65535UL)), 0x0619L));
                    }
                    for (l_252 = 0; (l_252 >= 0); l_252 -= 1)
                    { /* block id: 99 */
                        uint32_t l_310 = 0x87C5DDD1L;
                        (*l_238) |= ((safe_mod_func_uint16_t_u_u(((p_1908->g_130 || p_1908->g_158) < ((void*)0 == &p_1908->g_205[3])), p_1908->g_128)) >= ((l_304 == ((safe_mod_func_uint16_t_u_u(0x1FA5L, ((safe_unary_minus_func_int16_t_s((l_310 = 0x4D5EL))) || (FAKE_DIVERGE(p_1908->group_1_offset, get_group_id(1), 10) == (l_232 &= ((safe_mod_func_uint16_t_u_u(p_1908->g_157[7], p_1908->g_158)) == p_1908->g_282)))))) , l_313[7])) != (*l_239)));
                    }
                }
            }
            else
            { /* block id: 105 */
                int32_t l_329 = 0x0BB182D7L;
                int32_t l_378 = 0x47A3887CL;
                int32_t l_380 = 4L;
                int32_t l_382 = 0L;
                int32_t l_383 = (-1L);
                int32_t l_388 = 1L;
                int32_t l_389 = (-1L);
                int32_t l_391[10] = {0x0953721FL,(-1L),0x0953721FL,0x0953721FL,(-1L),0x0953721FL,0x0953721FL,(-1L),0x0953721FL,0x0953721FL};
                int32_t *l_399 = &l_232;
                uint32_t **l_455 = (void*)0;
                uint8_t *l_458 = &l_326[3][0];
                int16_t **l_476 = &p_1908->g_352;
                int64_t **l_477 = &p_1908->g_285[1][1][3];
                int i;
                for (l_190 = 0; (l_190 > (-7)); l_190 = safe_sub_func_uint16_t_u_u(l_190, 1))
                { /* block id: 108 */
                    uint64_t l_343 = 18446744073709551615UL;
                    for (p_1908->g_112 = 3; (p_1908->g_112 != (-4)); p_1908->g_112 = safe_sub_func_int32_t_s_s(p_1908->g_112, 4))
                    { /* block id: 111 */
                        uint64_t l_338 = 18446744073709551615UL;
                        int16_t *l_351 = &p_1908->g_282;
                        int16_t **l_350[8];
                        int32_t l_355[1][7];
                        int i, j;
                        for (i = 0; i < 8; i++)
                            l_350[i] = &l_351;
                        for (i = 0; i < 1; i++)
                        {
                            for (j = 0; j < 7; j++)
                                l_355[i][j] = 1L;
                        }
                        (*p_83) = ((safe_sub_func_int64_t_s_s((safe_add_func_uint16_t_u_u((safe_div_func_uint64_t_u_u((safe_mod_func_int8_t_s_s(((l_326[3][0] | (safe_sub_func_uint16_t_u_u(p_1908->g_122[5], l_329))) >= (((l_313[7] == &p_1908->g_192) , (safe_rshift_func_int16_t_s_s((((safe_mul_func_uint16_t_u_u(((safe_lshift_func_int8_t_s_s((safe_mod_func_uint16_t_u_u(l_338, (safe_add_func_uint32_t_u_u(p_82, (safe_mul_func_uint8_t_u_u(((((l_343 < (safe_lshift_func_int16_t_s_u(0x618DL, l_343))) && l_171) < l_346) | l_343), l_343)))))), l_258[0])) > (*p_83)), p_1908->g_50[1][8])) > 0x5EA59471L) && 0x4CL), 1))) == p_1908->g_11)), GROUP_DIVERGE(2, 1))), 0x53623D507DC01088L)), l_343)), l_347)) , l_329);
                        (*p_1908->g_357) = ((((*p_83) &= (safe_lshift_func_uint16_t_u_s((&p_1908->g_282 == (p_1908->g_352 = l_186)), 12))) , ((((((0x09478803L < (l_329 != (l_329 & p_82))) ^ (*p_83)) >= (l_355[0][4] = (safe_sub_func_int32_t_s_s(((void*)0 != &p_1908->g_285[2][1][1]), p_1908->g_115)))) != l_338) && 0x6988L) , 1L)) & p_82);
                        return (*p_1908->g_204);
                    }
                    if ((*p_83))
                        continue;
                    for (l_286 = 0; (l_286 <= 9); l_286 += 1)
                    { /* block id: 122 */
                        uint32_t **l_358 = &l_199;
                        uint32_t ***l_359[7] = {&l_358,&l_358,&l_358,&l_358,&l_358,&l_358,&l_358};
                        int i;
                        p_1908->g_360 = l_358;
                    }
                }
                for (l_230 = 2; (l_230 <= 7); l_230 += 1)
                { /* block id: 128 */
                    int32_t *l_361 = &p_1908->g_92;
                    uint16_t *l_364 = (void*)0;
                    uint16_t *l_365[9];
                    int32_t l_377 = 0L;
                    int32_t l_385 = 9L;
                    int i;
                    for (i = 0; i < 9; i++)
                        l_365[i] = &l_346;
                    for (l_347 = 0; (l_347 <= 3); l_347 += 1)
                    { /* block id: 131 */
                        return l_361;
                    }
                    if ((65535UL > (safe_rshift_func_uint16_t_u_u((--p_1908->g_87), 15))))
                    { /* block id: 135 */
                        int i;
                        (*p_83) = (~(+p_1908->g_157[l_230]));
                    }
                    else
                    { /* block id: 137 */
                        int32_t **l_368 = &p_1908->g_205[2];
                        p_83 = ((*l_368) = &l_329);
                        (*p_83) = (safe_lshift_func_int8_t_s_u(0x5FL, 1));
                        (*l_368) = (void*)0;
                    }
                    if (((void*)0 != (*p_1908->g_284)))
                    { /* block id: 143 */
                        int32_t *l_373 = &l_258[0];
                        int32_t *l_374 = &l_232;
                        int32_t *l_375 = &l_329;
                        int32_t *l_376[9];
                        uint8_t l_392 = 0xA6L;
                        int i;
                        for (i = 0; i < 9; i++)
                            l_376[i] = &l_263;
                        (*l_373) ^= (safe_mod_func_int8_t_s_s(p_82, (p_1908->g_122[2] = (((l_329 >= ((*l_231) ^= ((((*l_361) ^= ((~0x372A3292C3D8E2B2L) ^ p_82)) , (*p_1908->g_204)) == &l_183))) || (*p_83)) , p_1908->g_comm_values[p_1908->tid]))));
                        if ((*p_83))
                            break;
                        --l_392;
                    }
                    else
                    { /* block id: 150 */
                        p_1908->g_395 ^= (*p_83);
                    }
                    for (l_346 = 0; (l_346 <= 3); l_346 += 1)
                    { /* block id: 155 */
                        int i, j;
                        (*p_83) &= ((*l_361) ^= l_326[l_346][(l_346 + 2)]);
                    }
                }
                for (p_1908->g_128 = 0; (p_1908->g_128 != 19); p_1908->g_128++)
                { /* block id: 162 */
                    for (l_256 = 6; (l_256 >= 2); l_256 -= 1)
                    { /* block id: 165 */
                        int32_t **l_398 = &p_1908->g_205[3];
                        int i;
                        if ((*p_83))
                            break;
                        (*l_398) = (*p_1908->g_204);
                        l_391[(l_256 + 1)] = ((void*)0 != &p_1908->g_285[2][1][1]);
                    }
                }
                if ((p_82 , ((*l_399) |= (*p_83))))
                { /* block id: 172 */
                    int8_t l_411[7] = {(-4L),(-4L),(-4L),(-4L),(-4L),(-4L),(-4L)};
                    uint8_t l_421[5][5][9] = {{{0x45L,6UL,9UL,1UL,255UL,1UL,9UL,6UL,0x45L},{0x45L,6UL,9UL,1UL,255UL,1UL,9UL,6UL,0x45L},{0x45L,6UL,9UL,1UL,255UL,1UL,9UL,6UL,0x45L},{0x45L,6UL,9UL,1UL,255UL,1UL,9UL,6UL,0x45L},{0x45L,6UL,9UL,1UL,255UL,1UL,9UL,6UL,0x45L}},{{0x45L,6UL,9UL,1UL,255UL,1UL,9UL,6UL,0x45L},{0x45L,6UL,9UL,1UL,255UL,1UL,9UL,6UL,0x45L},{0x45L,6UL,9UL,1UL,255UL,1UL,9UL,6UL,0x45L},{0x45L,6UL,9UL,1UL,255UL,1UL,9UL,6UL,0x45L},{0x45L,6UL,9UL,1UL,255UL,1UL,9UL,6UL,0x45L}},{{0x45L,6UL,9UL,1UL,255UL,1UL,9UL,6UL,0x45L},{0x45L,6UL,9UL,1UL,255UL,1UL,9UL,6UL,0x45L},{0x45L,6UL,9UL,1UL,255UL,1UL,9UL,6UL,0x45L},{0x45L,6UL,9UL,1UL,255UL,1UL,9UL,6UL,0x45L},{0x45L,6UL,9UL,1UL,255UL,1UL,9UL,6UL,0x45L}},{{0x45L,6UL,9UL,1UL,255UL,1UL,9UL,6UL,0x45L},{0x45L,6UL,9UL,1UL,255UL,1UL,9UL,6UL,0x45L},{0x45L,6UL,9UL,1UL,255UL,1UL,9UL,6UL,0x45L},{0x45L,6UL,9UL,1UL,255UL,1UL,9UL,6UL,0x45L},{0x45L,6UL,9UL,1UL,255UL,1UL,9UL,6UL,0x45L}},{{0x45L,6UL,9UL,1UL,255UL,1UL,9UL,6UL,0x45L},{0x45L,6UL,9UL,1UL,255UL,1UL,9UL,6UL,0x45L},{0x45L,6UL,9UL,1UL,255UL,1UL,9UL,6UL,0x45L},{0x45L,6UL,9UL,1UL,255UL,1UL,9UL,6UL,0x45L},{0x45L,6UL,9UL,1UL,255UL,1UL,9UL,6UL,0x45L}}};
                    int16_t *l_424 = (void*)0;
                    int i, j, k;
                    for (l_382 = 6; (l_382 != 12); l_382 = safe_add_func_uint8_t_u_u(l_382, 1))
                    { /* block id: 175 */
                        int64_t l_402 = 0x487C8DBF9AE201B8L;
                        int32_t l_425 = 0x5D8CF302L;
                        int16_t *l_426 = &l_347;
                        (*l_399) ^= ((l_402 | p_82) == (((p_82 , ((((l_402 == (safe_rshift_func_int8_t_s_u(0L, 5))) <= (p_1908->g_11 || (safe_sub_func_int64_t_s_s((safe_lshift_func_uint8_t_u_s(0UL, 5)), ((((safe_rshift_func_int8_t_s_u(((*l_201) = (((&p_1908->g_116 == (void*)0) <= p_1908->g_116) ^ (-1L))), 2)) , (void*)0) != (void*)0) == p_82))))) > p_1908->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1908->tid, 24))]) || p_1908->g_257)) >= l_411[2]) < p_1908->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1908->tid, 24))]));
                        (*p_83) &= (~((((safe_sub_func_uint8_t_u_u((p_1908->g_122[3] = (((!((safe_div_func_int64_t_s_s(((((GROUP_DIVERGE(0, 1) , (safe_lshift_func_uint8_t_u_u((~((((*l_426) ^= ((*l_399) & (((((((((((safe_sub_func_uint64_t_u_u(18446744073709551615UL, ((void*)0 == l_420))) | l_421[0][2][5]) <= p_1908->g_122[3]) | l_251[0]) , ((l_425 |= (safe_add_func_int16_t_s_s(((0x5CL & (&l_347 == l_424)) >= l_286), (*l_399)))) & 65533UL)) > (*p_1908->g_352)) , p_1908->g_200) ^ p_82) == p_1908->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1908->tid, 24))]) , l_421[0][2][5]) || 0x640A203AL))) , GROUP_DIVERGE(2, 1)) < (-1L))), 7))) & l_411[2]) == p_82) != (*p_1908->g_357)), p_82)) , p_82)) == 0L) , p_82)), p_1908->g_92)) , p_82) , p_82) , 0L));
                    }
                    (*l_399) = (safe_div_func_int32_t_s_s((*p_83), (l_233[0] , ((*l_231) = p_82))));
                    l_260 ^= ((safe_mul_func_int32_t_s_s((safe_div_func_uint32_t_u_u((safe_add_func_uint32_t_u_u(p_1908->g_50[0][1], p_82)), (*p_83))), (&p_1908->g_122[3] != ((safe_lshift_func_uint8_t_u_u(p_82, 3)) , &l_421[1][0][3])))) | (safe_lshift_func_int16_t_s_s(((*p_1908->g_352) < (((*l_198) = l_439) > 0x0AE53D707F3B901BL)), 0)));
                }
                else
                { /* block id: 187 */
                    int32_t l_448 = 0x24010B8CL;
                    uint16_t *l_459 = &p_1908->g_395;
                    (*p_1908->g_357) &= (((((((safe_div_func_int8_t_s_s((((p_1908->g_3 || ((safe_add_func_uint64_t_u_u((((((!((l_202[4][0][0] == &p_1908->g_157[7]) , ((safe_rshift_func_uint16_t_u_u(((safe_lshift_func_int8_t_s_u(p_82, 4)) & ((*l_231) = p_1908->g_122[2])), 5)) | (((*l_399) || p_82) , p_1908->g_122[1])))) && l_265) != p_82) || l_448) ^ l_448), 0x4F7C43971DA2BB63L)) , (*p_83))) < l_326[3][0]) || (-6L)), 252UL)) != p_1908->g_127) > 65535UL) , p_82) ^ 0x41L) , (void*)0) == (void*)0);
                    (*p_83) = l_326[0][7];
                    if (((((p_1908->g_127 < (safe_lshift_func_int16_t_s_u(((safe_sub_func_int16_t_s_s((((safe_add_func_uint8_t_u_u((l_455 == (((((((*l_459) &= (p_1908->g_127 > (0x71F0L < (safe_add_func_int16_t_s_s(p_82, ((p_82 , &p_1908->g_122[2]) == l_458)))))) != (*p_1908->g_352)) ^ (*l_399)) , p_1908->g_158) , 1L) , l_460)), 0x50L)) && p_82) , p_82), (*p_1908->g_352))) & 4294967292UL), p_1908->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1908->tid, 24))]))) , 1L) >= (*p_83)) < p_82))
                    { /* block id: 192 */
                        int32_t **l_474[3];
                        int16_t *l_475 = &l_347;
                        int i;
                        for (i = 0; i < 3; i++)
                            l_474[i] = &l_399;
                        (*l_399) = (safe_mod_func_int8_t_s_s(((safe_mod_func_uint64_t_u_u((((*p_83) || ((*l_231) = ((!18446744073709551615UL) , ((((*p_1908->g_352) = 6L) ^ (p_1908->g_465[0] , (safe_mod_func_int8_t_s_s(((((p_1908->g_comm_values[p_1908->tid] == (safe_lshift_func_int16_t_s_u((safe_lshift_func_int16_t_s_s((((((p_1908->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1908->tid, 24))] ^ (safe_rshift_func_int16_t_s_u(((*l_475) = (((((p_83 = (p_82 , p_83)) != (void*)0) && (*p_83)) < p_1908->g_158) ^ l_190)), 10))) >= l_448) != (*l_399)) < p_82) ^ l_448), 7)), 3))) || 1L) , l_476) != (void*)0), l_448)))) < 1UL)))) != (*l_399)), 0x28042EF43C802DC0L)) == l_251[0]), 0x10L));
                        (*p_1908->g_204) = p_83;
                    }
                    else
                    { /* block id: 199 */
                        (*l_399) &= ((l_477 == &l_198) | p_1908->g_158);
                        (*p_1908->g_478) = &l_386;
                    }
                    (*l_399) &= (*p_83);
                }
            }
            if (p_82)
            { /* block id: 206 */
                int8_t l_486 = (-1L);
                int32_t l_487 = 0L;
                int32_t l_488 = 7L;
                int32_t l_491 = 5L;
                for (l_265 = (-16); (l_265 < 4); ++l_265)
                { /* block id: 209 */
                    int32_t l_484 = (-9L);
                    int32_t l_489 = 0x6ED34C43L;
                    int32_t l_490 = 0L;
                    for (p_1908->g_395 = 0; (p_1908->g_395 >= 17); p_1908->g_395 = safe_add_func_uint16_t_u_u(p_1908->g_395, 3))
                    { /* block id: 212 */
                        int32_t *l_483 = (void*)0;
                        int32_t *l_485[1][6] = {{&l_259,&l_259,&l_259,&l_259,&l_259,&l_259}};
                        uint64_t l_492[8][6] = {{18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,0xC6B302583626C502L,18446744073709551615UL},{18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,0xC6B302583626C502L,18446744073709551615UL},{18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,0xC6B302583626C502L,18446744073709551615UL},{18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,0xC6B302583626C502L,18446744073709551615UL},{18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,0xC6B302583626C502L,18446744073709551615UL},{18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,0xC6B302583626C502L,18446744073709551615UL},{18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,0xC6B302583626C502L,18446744073709551615UL},{18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,18446744073709551615UL,0xC6B302583626C502L,18446744073709551615UL}};
                        int i, j;
                        l_492[7][1]--;
                    }
                    for (l_384 = 0; (l_384 >= 0); l_384 -= 1)
                    { /* block id: 217 */
                        int32_t *l_495 = &l_381;
                        uint32_t l_500 = 0UL;
                        uint16_t *l_521[6] = {&l_346,&l_346,&l_346,&l_346,&l_346,&l_346};
                        int32_t *l_524 = (void*)0;
                        int32_t *l_525 = &p_1908->g_92;
                        int32_t *l_526 = &l_259;
                        int i;
                        (*l_495) |= (l_258[l_384] , (&l_381 == &l_183));
                        (*l_526) ^= ((*l_525) ^= (l_190 &= ((!((p_1908->g_395 &= (l_251[(l_384 + 5)] >= (safe_rshift_func_uint16_t_u_s((((++p_1908->g_192) , l_500) , (l_183 ^= (p_1908->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1908->tid, 24))] | ((((safe_mod_func_uint64_t_u_u((p_1908->g_comm_values[p_1908->tid] , (p_1908->g_192 &= (safe_rshift_func_int16_t_s_s((safe_div_func_int16_t_s_s((((safe_lshift_func_int8_t_s_u(l_484, (*l_495))) ^ (safe_mod_func_int64_t_s_s((l_439 >= (safe_mod_func_uint32_t_u_u(((safe_mul_func_uint16_t_u_u(((p_1908->g_122[4]++) < 0L), ((safe_mod_func_int8_t_s_s(p_1908->g_3, p_1908->g_257)) < p_1908->g_127))) != (*l_495)), p_82))), p_1908->g_128))) >= p_82), 0x7CD4L)), 5)))), (-8L))) , p_82) | 0x5095ECB7L) & 1UL)))), l_522)))) , l_490)) > p_1908->g_523)));
                        return l_528;
                    }
                    for (l_490 = 0; (l_490 <= 0); l_490 += 1)
                    { /* block id: 231 */
                        uint64_t l_529 = 18446744073709551612UL;
                        (*l_528) |= l_529;
                    }
                }
            }
            else
            { /* block id: 235 */
                uint8_t **l_540 = (void*)0;
                uint8_t **l_541 = &l_202[1][0][0];
                int32_t l_542[6];
                int32_t l_543 = 0x2E6F12E9L;
                int i;
                for (i = 0; i < 6; i++)
                    l_542[i] = 0x26646C6EL;
                l_259 &= ((safe_mod_func_uint16_t_u_u((safe_rshift_func_uint8_t_u_s(((((l_258[0] = (safe_sub_func_int32_t_s_s((p_82 | (((safe_sub_func_uint16_t_u_u(FAKE_DIVERGE(p_1908->local_2_offset, get_local_id(2), 10), ((*p_1908->g_352) = 0x228AL))) <= (0x07705C02L != (0x62AD9EB2L ^ ((safe_add_func_uint16_t_u_u((((*l_541) = &p_1908->g_122[0]) == (void*)0), ((l_543 &= l_542[4]) != (FAKE_DIVERGE(p_1908->group_1_offset, get_group_id(1), 10) < (safe_sub_func_uint8_t_u_u(p_1908->g_157[7], (safe_mod_func_int8_t_s_s((safe_mul_func_int16_t_s_s((+((safe_lshift_func_int16_t_s_s(2L, 10)) , 0x26C5L)), l_251[0])), p_1908->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1908->tid, 24))])))))))) ^ (*l_528))))) | 65530UL)), GROUP_DIVERGE(0, 1)))) , p_82) & p_1908->g_92) == p_82), 0)), l_265)) > l_552);
            }
        }
        else
        { /* block id: 242 */
            uint64_t l_553 = 18446744073709551615UL;
            int8_t **l_574[5] = {&l_201,&l_201,&l_201,&l_201,&l_201};
            int32_t l_584[4][5] = {{(-7L),0x5B5B4E10L,(-1L),0x5B5B4E10L,(-7L)},{(-7L),0x5B5B4E10L,(-1L),0x5B5B4E10L,(-7L)},{(-7L),0x5B5B4E10L,(-1L),0x5B5B4E10L,(-7L)},{(-7L),0x5B5B4E10L,(-1L),0x5B5B4E10L,(-7L)}};
            int32_t l_646 = 0x5897484EL;
            uint32_t l_647 = 0x9E588E4EL;
            int i, j;
            ++l_553;
            for (p_1908->g_128 = 0; (p_1908->g_128 <= 0); p_1908->g_128 += 1)
            { /* block id: 246 */
                int8_t **l_560 = &l_201;
                int8_t **l_561 = (void*)0;
                int32_t l_585 = 0L;
                int32_t l_591 = 0x50814012L;
                int32_t l_592 = 1L;
                int32_t l_596 = 0x21B0F504L;
                int32_t l_599 = 0x51DE91D8L;
                uint8_t l_601 = 255UL;
                int64_t *l_615[7] = {&l_268[1][0][1],&l_268[0][0][1],&l_268[1][0][1],&l_268[1][0][1],&l_268[0][0][1],&l_268[1][0][1],&l_268[1][0][1]};
                uint8_t l_618 = 0x30L;
                int32_t l_632[6][4] = {{0x72842176L,(-1L),0x0ADFBCCBL,(-1L)},{0x72842176L,(-1L),0x0ADFBCCBL,(-1L)},{0x72842176L,(-1L),0x0ADFBCCBL,(-1L)},{0x72842176L,(-1L),0x0ADFBCCBL,(-1L)},{0x72842176L,(-1L),0x0ADFBCCBL,(-1L)},{0x72842176L,(-1L),0x0ADFBCCBL,(-1L)}};
                int i, j;
                barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                p_1908->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 24)), permutations[(safe_mod_func_uint32_t_u_u((p_1908->g_130 = ((safe_sub_func_uint64_t_u_u(((safe_sub_func_int64_t_s_s(((*l_198) = ((void*)0 != (*p_1908->g_204))), l_183)) < (p_1908->g_122[2] & p_1908->g_50[2][8])), 0L)) || ((*l_198) = ((((*l_560) = l_202[3][0][0]) != (l_562 = &p_1908->g_157[1])) >= (safe_rshift_func_uint16_t_u_s(p_82, l_553)))))), 10))][(safe_mod_func_uint32_t_u_u(p_1908->tid, 24))]));
                for (p_1908->g_200 = 0; (p_1908->g_200 <= 8); p_1908->g_200 += 1)
                { /* block id: 257 */
                    int16_t l_587 = 0x386CL;
                    int32_t l_593 = 6L;
                    int32_t l_594 = 0x093B6DEAL;
                    int32_t l_597 = 0L;
                    int32_t **l_604 = &l_527[1];
                    for (l_346 = 0; (l_346 <= 8); l_346 += 1)
                    { /* block id: 260 */
                        int8_t ***l_577 = &p_1908->g_575;
                        int32_t *l_581 = &l_384;
                        int32_t l_586 = 0x14E8C02EL;
                        int32_t l_588 = (-1L);
                        int32_t l_589 = 0x6B02B77DL;
                        int32_t l_590 = 1L;
                        int32_t l_595 = 0L;
                        int32_t l_598 = (-1L);
                        int32_t l_600 = 0x760943B1L;
                        int i, j, k;
                        (*p_83) = (l_268[p_1908->g_128][p_1908->g_128][(p_1908->g_128 + 1)] > ((safe_lshift_func_uint8_t_u_s(((p_82 = (safe_lshift_func_int16_t_s_u((0UL & (p_1908->g_571 == l_573)), 13))) ^ (l_574[2] != ((*l_577) = p_1908->g_575))), 7)) | (+((*l_198) ^= (safe_rshift_func_uint8_t_u_u(((*p_1908->g_572) = (*p_1908->g_572)), 0))))));
                        (*p_1908->g_580) = (GROUP_DIVERGE(1, 1) , (*p_1908->g_204));
                        (*p_1908->g_583) = l_581;
                        --l_601;
                    }
                    (*l_604) = &l_190;
                    for (l_384 = 1; (l_384 <= 8); l_384 += 1)
                    { /* block id: 273 */
                        uint32_t ***l_605[8];
                        int i;
                        for (i = 0; i < 8; i++)
                            l_605[i] = &p_1908->g_360;
                        p_1908->g_360 = p_1908->g_360;
                    }
                }
                for (p_1908->g_192 = 0; (p_1908->g_192 <= 0); p_1908->g_192 += 1)
                { /* block id: 279 */
                    uint16_t l_608 = 0x0018L;
                    int32_t l_638 = 1L;
                    int32_t l_642 = 0x47BEE00AL;
                    int32_t l_643 = 1L;
                    int32_t l_644 = 1L;
                    int32_t l_645 = 0x4A3E3336L;
                    for (l_381 = 0; (l_381 <= 0); l_381 += 1)
                    { /* block id: 282 */
                        int32_t *l_606 = &l_262;
                        int32_t **l_607 = &l_527[0];
                        int i, j, k;
                        (*l_607) = l_606;
                        (*l_607) = (*l_607);
                        l_608 = ((*p_83) = l_268[p_1908->g_192][p_1908->g_128][(p_1908->g_192 + 1)]);
                        (*l_607) = p_83;
                    }
                    for (l_596 = 0; (l_596 <= 0); l_596 += 1)
                    { /* block id: 291 */
                        int64_t **l_616[6][2] = {{&p_1908->g_285[0][0][2],&l_615[5]},{&p_1908->g_285[0][0][2],&l_615[5]},{&p_1908->g_285[0][0][2],&l_615[5]},{&p_1908->g_285[0][0][2],&l_615[5]},{&p_1908->g_285[0][0][2],&l_615[5]},{&p_1908->g_285[0][0][2],&l_615[5]}};
                        uint16_t *l_633 = &l_346;
                        int16_t l_634[1][3][6] = {{{1L,1L,(-1L),0x1440L,4L,0x1440L},{1L,1L,(-1L),0x1440L,4L,0x1440L},{1L,1L,(-1L),0x1440L,4L,0x1440L}}};
                        uint16_t *l_635 = &p_1908->g_127;
                        int32_t l_636 = 9L;
                        int32_t l_637[6];
                        int i, j, k;
                        for (i = 0; i < 6; i++)
                            l_637[i] = (-8L);
                        l_258[0] = ((((safe_mul_func_uint16_t_u_u(((*l_635) |= ((safe_mod_func_uint16_t_u_u((p_82 != (safe_mul_func_int16_t_s_s((((*p_1908->g_284) = l_615[1]) == (p_1908->g_617 = &p_1908->g_257)), ((*l_633) = ((((((*p_83) = l_618) <= (safe_mul_func_int16_t_s_s((safe_unary_minus_func_uint32_t_u(1UL)), p_82))) || (((((((safe_add_func_int8_t_s_s((((safe_rshift_func_uint16_t_u_u((((((safe_sub_func_uint32_t_u_u((safe_add_func_uint16_t_u_u((((safe_lshift_func_int8_t_s_s(p_82, l_265)) && l_258[0]) <= l_258[0]), 0x48C3L)), p_1908->g_92)) , 0UL) , (-7L)) , &p_1908->g_158) != &p_82), 8)) , 0x41L) ^ (*p_1908->g_572)), l_618)) | p_82) < p_1908->g_122[0]) , 65528UL) & 0x6115L) , l_632[1][0]) || p_82)) == l_608) | l_258[0]))))), l_634[0][0][4])) > GROUP_DIVERGE(2, 1))), (*p_1908->g_352))) & p_1908->g_128) ^ 0x7D8D5A3BL) , (*p_83));
                        --l_639[0];
                        l_647++;
                    }
                }
            }
        }
    }
    return l_651;
}


/* ------------------------------------------ */
/* 
 * reads : p_1908->g_50
 * writes: p_1908->g_163
 */
int8_t  func_97(int32_t * p_98, uint64_t  p_99, int64_t  p_100, uint16_t * p_101, struct S0 * p_1908)
{ /* block id: 41 */
    int32_t *l_162 = &p_1908->g_3;
    int32_t **l_161[2];
    int32_t *l_164[8][10] = {{&p_1908->g_3,&p_1908->g_50[3][3],&p_1908->g_3,(void*)0,&p_1908->g_3,&p_1908->g_112,&p_1908->g_50[3][3],&p_1908->g_112,(void*)0,&p_1908->g_112},{&p_1908->g_3,&p_1908->g_50[3][3],&p_1908->g_3,(void*)0,&p_1908->g_3,&p_1908->g_112,&p_1908->g_50[3][3],&p_1908->g_112,(void*)0,&p_1908->g_112},{&p_1908->g_3,&p_1908->g_50[3][3],&p_1908->g_3,(void*)0,&p_1908->g_3,&p_1908->g_112,&p_1908->g_50[3][3],&p_1908->g_112,(void*)0,&p_1908->g_112},{&p_1908->g_3,&p_1908->g_50[3][3],&p_1908->g_3,(void*)0,&p_1908->g_3,&p_1908->g_112,&p_1908->g_50[3][3],&p_1908->g_112,(void*)0,&p_1908->g_112},{&p_1908->g_3,&p_1908->g_50[3][3],&p_1908->g_3,(void*)0,&p_1908->g_3,&p_1908->g_112,&p_1908->g_50[3][3],&p_1908->g_112,(void*)0,&p_1908->g_112},{&p_1908->g_3,&p_1908->g_50[3][3],&p_1908->g_3,(void*)0,&p_1908->g_3,&p_1908->g_112,&p_1908->g_50[3][3],&p_1908->g_112,(void*)0,&p_1908->g_112},{&p_1908->g_3,&p_1908->g_50[3][3],&p_1908->g_3,(void*)0,&p_1908->g_3,&p_1908->g_112,&p_1908->g_50[3][3],&p_1908->g_112,(void*)0,&p_1908->g_112},{&p_1908->g_3,&p_1908->g_50[3][3],&p_1908->g_3,(void*)0,&p_1908->g_3,&p_1908->g_112,&p_1908->g_50[3][3],&p_1908->g_112,(void*)0,&p_1908->g_112}};
    int32_t l_165 = (-1L);
    int i, j;
    for (i = 0; i < 2; i++)
        l_161[i] = &l_162;
    p_1908->g_163[4] = (void*)0;
lbl_166:
    l_164[3][2] = p_98;
    l_165 ^= (*p_98);
    if (l_165)
        goto lbl_166;
    return p_99;
}


/* ------------------------------------------ */
/* 
 * reads : p_1908->g_116 p_1908->l_comm_values p_1908->g_50 p_1908->g_130 p_1908->g_122 p_1908->g_112 p_1908->g_3 p_1908->g_157 p_1908->g_158
 * writes: p_1908->g_116 p_1908->g_122 p_1908->g_127 p_1908->g_128 p_1908->g_130 p_1908->g_112 p_1908->g_comm_values p_1908->g_157 p_1908->g_158
 */
uint8_t  func_103(int64_t  p_104, uint16_t  p_105, int16_t  p_106, struct S0 * p_1908)
{ /* block id: 22 */
    int64_t l_110 = 0x5B74E30DE83DB493L;
    int32_t *l_111 = &p_1908->g_112;
    int32_t *l_113 = &p_1908->g_112;
    int32_t *l_114[7] = {&p_1908->g_112,&p_1908->g_112,&p_1908->g_112,&p_1908->g_112,&p_1908->g_112,&p_1908->g_112,&p_1908->g_112};
    uint64_t l_145 = 18446744073709551615UL;
    int i;
    p_1908->g_116++;
    for (p_106 = 6; (p_106 >= 0); p_106 -= 1)
    { /* block id: 26 */
        uint8_t *l_121 = &p_1908->g_122[2];
        uint16_t *l_126 = &p_1908->g_127;
        uint32_t *l_129 = &p_1908->g_130;
        int64_t *l_154 = (void*)0;
        int64_t *l_155[1][10][7] = {{{(void*)0,(void*)0,(void*)0,&l_110,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&l_110,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&l_110,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&l_110,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&l_110,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&l_110,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&l_110,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&l_110,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&l_110,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&l_110,(void*)0,(void*)0,(void*)0}}};
        int8_t *l_156 = &p_1908->g_157[7];
        int i, j, k;
        if (p_104)
            break;
        (*l_111) = ((((*l_129) |= (safe_div_func_uint8_t_u_u(((((*l_121) = 9UL) >= 0x39L) | 0x6BL), (p_1908->g_128 = (safe_mod_func_int16_t_s_s(((((void*)0 != &p_1908->g_50[0][4]) && (safe_unary_minus_func_uint8_t_u((((((*l_126) = 0x63ADL) , (-4L)) >= ((((void*)0 == &p_1908->g_11) , (-2L)) > 0x0AA8L)) != 0xF8876A3BL)))) || p_1908->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1908->tid, 24))]), p_1908->g_50[3][3])))))) < p_104) == GROUP_DIVERGE(2, 1));
        l_114[p_106] = (((((*l_121)--) & ((*l_156) &= (safe_mod_func_int64_t_s_s(((safe_mul_func_int8_t_s_s(((*l_113) != (p_105 <= ((*l_126) = 0x4566L))), p_106)) , (p_1908->g_comm_values[p_1908->tid] = (safe_div_func_int16_t_s_s(((((safe_sub_func_uint8_t_u_u((safe_add_func_uint32_t_u_u(p_105, l_145)), (safe_rshift_func_uint8_t_u_s((safe_lshift_func_int8_t_s_s(4L, (safe_lshift_func_uint8_t_u_s((safe_mul_func_int16_t_s_s((((0UL <= 0x34L) , p_1908->g_130) < 1UL), p_1908->g_3)), 4)))), p_104)))) || p_106) , p_1908->g_3) <= p_105), 0xDB8CL)))), FAKE_DIVERGE(p_1908->group_1_offset, get_group_id(1), 10))))) ^ p_1908->l_comm_values[(safe_mod_func_uint32_t_u_u(p_1908->tid, 24))]) , l_129);
        ++p_1908->g_158;
    }
    return (*l_113);
}


__kernel void entry(__global ulong *result, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local int64_t l_comm_values[24];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 24; i++)
            l_comm_values[i] = 1;
    struct S0 c_1909;
    struct S0* p_1908 = &c_1909;
    struct S0 c_1910 = {
        4L, // p_1908->g_3
        0xD915L, // p_1908->g_11
        {{1L,0x5175D1B3L,0x3293C34FL,(-1L),0x3293C34FL,0x5175D1B3L,1L,0x1802EEDAL,0L,0L},{1L,0x5175D1B3L,0x3293C34FL,(-1L),0x3293C34FL,0x5175D1B3L,1L,0x1802EEDAL,0L,0L},{1L,0x5175D1B3L,0x3293C34FL,(-1L),0x3293C34FL,0x5175D1B3L,1L,0x1802EEDAL,0L,0L},{1L,0x5175D1B3L,0x3293C34FL,(-1L),0x3293C34FL,0x5175D1B3L,1L,0x1802EEDAL,0L,0L},{1L,0x5175D1B3L,0x3293C34FL,(-1L),0x3293C34FL,0x5175D1B3L,1L,0x1802EEDAL,0L,0L}}, // p_1908->g_50
        0x2BEFL, // p_1908->g_87
        (-1L), // p_1908->g_92
        (-3L), // p_1908->g_112
        0x56B4D16BL, // p_1908->g_115
        0x2CL, // p_1908->g_116
        {246UL,0UL,246UL,246UL,0UL,246UL}, // p_1908->g_122
        0x2849L, // p_1908->g_127
        0x7765BBCBL, // p_1908->g_128
        4294967295UL, // p_1908->g_130
        {1L,1L,1L,1L,1L,1L,1L,1L}, // p_1908->g_157
        0x0086L, // p_1908->g_158
        {&p_1908->g_50[0][4],(void*)0,&p_1908->g_112,(void*)0,&p_1908->g_50[0][4],&p_1908->g_50[0][4],(void*)0,&p_1908->g_112,(void*)0,&p_1908->g_50[0][4]}, // p_1908->g_163
        0x01F53EBCDE80103DL, // p_1908->g_192
        1UL, // p_1908->g_200
        {(void*)0,(void*)0,(void*)0,(void*)0}, // p_1908->g_205
        &p_1908->g_205[3], // p_1908->g_204
        0x6F0FA86CC8516D39L, // p_1908->g_257
        7L, // p_1908->g_282
        {{{&p_1908->g_257,(void*)0,&p_1908->g_257,(void*)0},{&p_1908->g_257,(void*)0,&p_1908->g_257,(void*)0},{&p_1908->g_257,(void*)0,&p_1908->g_257,(void*)0},{&p_1908->g_257,(void*)0,&p_1908->g_257,(void*)0}},{{&p_1908->g_257,(void*)0,&p_1908->g_257,(void*)0},{&p_1908->g_257,(void*)0,&p_1908->g_257,(void*)0},{&p_1908->g_257,(void*)0,&p_1908->g_257,(void*)0},{&p_1908->g_257,(void*)0,&p_1908->g_257,(void*)0}},{{&p_1908->g_257,(void*)0,&p_1908->g_257,(void*)0},{&p_1908->g_257,(void*)0,&p_1908->g_257,(void*)0},{&p_1908->g_257,(void*)0,&p_1908->g_257,(void*)0},{&p_1908->g_257,(void*)0,&p_1908->g_257,(void*)0}}}, // p_1908->g_285
        &p_1908->g_285[2][1][1], // p_1908->g_284
        &p_1908->g_282, // p_1908->g_352
        {(void*)0,&p_1908->g_112,(void*)0,(void*)0,&p_1908->g_112,(void*)0,(void*)0}, // p_1908->g_356
        &p_1908->g_92, // p_1908->g_357
        (void*)0, // p_1908->g_360
        0xE055L, // p_1908->g_395
        {4294967288UL,4294967288UL,4294967288UL,4294967288UL,4294967288UL,4294967288UL,4294967288UL,4294967288UL,4294967288UL}, // p_1908->g_465
        &p_1908->g_205[3], // p_1908->g_478
        0L, // p_1908->g_523
        &p_1908->g_122[2], // p_1908->g_572
        &p_1908->g_572, // p_1908->g_571
        (void*)0, // p_1908->g_576
        &p_1908->g_576, // p_1908->g_575
        &p_1908->g_205[3], // p_1908->g_580
        {&p_1908->g_205[1],&p_1908->g_205[1],&p_1908->g_205[1]}, // p_1908->g_582
        &p_1908->g_205[3], // p_1908->g_583
        (void*)0, // p_1908->g_617
        {{(void*)0,&p_1908->g_205[3],&p_1908->g_205[0]},{(void*)0,&p_1908->g_205[3],&p_1908->g_205[0]},{(void*)0,&p_1908->g_205[3],&p_1908->g_205[0]},{(void*)0,&p_1908->g_205[3],&p_1908->g_205[0]},{(void*)0,&p_1908->g_205[3],&p_1908->g_205[0]},{(void*)0,&p_1908->g_205[3],&p_1908->g_205[0]},{(void*)0,&p_1908->g_205[3],&p_1908->g_205[0]}}, // p_1908->g_653
        &p_1908->g_205[1], // p_1908->g_654
        0x67726F35L, // p_1908->g_680
        &p_1908->g_680, // p_1908->g_679
        &p_1908->g_679, // p_1908->g_678
        0x8E99A435L, // p_1908->g_682
        0x0B1FL, // p_1908->g_685
        &p_1908->g_205[1], // p_1908->g_690
        {{{&p_1908->g_352},{&p_1908->g_352},{&p_1908->g_352},{&p_1908->g_352},{&p_1908->g_352},{&p_1908->g_352},{&p_1908->g_352},{&p_1908->g_352},{&p_1908->g_352}},{{&p_1908->g_352},{&p_1908->g_352},{&p_1908->g_352},{&p_1908->g_352},{&p_1908->g_352},{&p_1908->g_352},{&p_1908->g_352},{&p_1908->g_352},{&p_1908->g_352}},{{&p_1908->g_352},{&p_1908->g_352},{&p_1908->g_352},{&p_1908->g_352},{&p_1908->g_352},{&p_1908->g_352},{&p_1908->g_352},{&p_1908->g_352},{&p_1908->g_352}},{{&p_1908->g_352},{&p_1908->g_352},{&p_1908->g_352},{&p_1908->g_352},{&p_1908->g_352},{&p_1908->g_352},{&p_1908->g_352},{&p_1908->g_352},{&p_1908->g_352}},{{&p_1908->g_352},{&p_1908->g_352},{&p_1908->g_352},{&p_1908->g_352},{&p_1908->g_352},{&p_1908->g_352},{&p_1908->g_352},{&p_1908->g_352},{&p_1908->g_352}},{{&p_1908->g_352},{&p_1908->g_352},{&p_1908->g_352},{&p_1908->g_352},{&p_1908->g_352},{&p_1908->g_352},{&p_1908->g_352},{&p_1908->g_352},{&p_1908->g_352}},{{&p_1908->g_352},{&p_1908->g_352},{&p_1908->g_352},{&p_1908->g_352},{&p_1908->g_352},{&p_1908->g_352},{&p_1908->g_352},{&p_1908->g_352},{&p_1908->g_352}},{{&p_1908->g_352},{&p_1908->g_352},{&p_1908->g_352},{&p_1908->g_352},{&p_1908->g_352},{&p_1908->g_352},{&p_1908->g_352},{&p_1908->g_352},{&p_1908->g_352}},{{&p_1908->g_352},{&p_1908->g_352},{&p_1908->g_352},{&p_1908->g_352},{&p_1908->g_352},{&p_1908->g_352},{&p_1908->g_352},{&p_1908->g_352},{&p_1908->g_352}}}, // p_1908->g_703
        0x51F4L, // p_1908->g_712
        {&p_1908->g_617}, // p_1908->g_810
        &p_1908->g_810[0], // p_1908->g_809
        1UL, // p_1908->g_822
        &p_1908->g_50[0][4], // p_1908->g_866
        &p_1908->g_112, // p_1908->g_923
        &p_1908->g_50[3][4], // p_1908->g_925
        &p_1908->g_572, // p_1908->g_931
        0x848BL, // p_1908->g_956
        0x53572D8CL, // p_1908->g_959
        (void*)0, // p_1908->g_974
        &p_1908->g_974, // p_1908->g_973
        (-1L), // p_1908->g_980
        {{{4294967286UL,4294967286UL,8UL,0x5CA64DB3L,0xE349AC0DL,4294967289UL},{4294967286UL,4294967286UL,8UL,0x5CA64DB3L,0xE349AC0DL,4294967289UL},{4294967286UL,4294967286UL,8UL,0x5CA64DB3L,0xE349AC0DL,4294967289UL},{4294967286UL,4294967286UL,8UL,0x5CA64DB3L,0xE349AC0DL,4294967289UL},{4294967286UL,4294967286UL,8UL,0x5CA64DB3L,0xE349AC0DL,4294967289UL}},{{4294967286UL,4294967286UL,8UL,0x5CA64DB3L,0xE349AC0DL,4294967289UL},{4294967286UL,4294967286UL,8UL,0x5CA64DB3L,0xE349AC0DL,4294967289UL},{4294967286UL,4294967286UL,8UL,0x5CA64DB3L,0xE349AC0DL,4294967289UL},{4294967286UL,4294967286UL,8UL,0x5CA64DB3L,0xE349AC0DL,4294967289UL},{4294967286UL,4294967286UL,8UL,0x5CA64DB3L,0xE349AC0DL,4294967289UL}},{{4294967286UL,4294967286UL,8UL,0x5CA64DB3L,0xE349AC0DL,4294967289UL},{4294967286UL,4294967286UL,8UL,0x5CA64DB3L,0xE349AC0DL,4294967289UL},{4294967286UL,4294967286UL,8UL,0x5CA64DB3L,0xE349AC0DL,4294967289UL},{4294967286UL,4294967286UL,8UL,0x5CA64DB3L,0xE349AC0DL,4294967289UL},{4294967286UL,4294967286UL,8UL,0x5CA64DB3L,0xE349AC0DL,4294967289UL}},{{4294967286UL,4294967286UL,8UL,0x5CA64DB3L,0xE349AC0DL,4294967289UL},{4294967286UL,4294967286UL,8UL,0x5CA64DB3L,0xE349AC0DL,4294967289UL},{4294967286UL,4294967286UL,8UL,0x5CA64DB3L,0xE349AC0DL,4294967289UL},{4294967286UL,4294967286UL,8UL,0x5CA64DB3L,0xE349AC0DL,4294967289UL},{4294967286UL,4294967286UL,8UL,0x5CA64DB3L,0xE349AC0DL,4294967289UL}},{{4294967286UL,4294967286UL,8UL,0x5CA64DB3L,0xE349AC0DL,4294967289UL},{4294967286UL,4294967286UL,8UL,0x5CA64DB3L,0xE349AC0DL,4294967289UL},{4294967286UL,4294967286UL,8UL,0x5CA64DB3L,0xE349AC0DL,4294967289UL},{4294967286UL,4294967286UL,8UL,0x5CA64DB3L,0xE349AC0DL,4294967289UL},{4294967286UL,4294967286UL,8UL,0x5CA64DB3L,0xE349AC0DL,4294967289UL}},{{4294967286UL,4294967286UL,8UL,0x5CA64DB3L,0xE349AC0DL,4294967289UL},{4294967286UL,4294967286UL,8UL,0x5CA64DB3L,0xE349AC0DL,4294967289UL},{4294967286UL,4294967286UL,8UL,0x5CA64DB3L,0xE349AC0DL,4294967289UL},{4294967286UL,4294967286UL,8UL,0x5CA64DB3L,0xE349AC0DL,4294967289UL},{4294967286UL,4294967286UL,8UL,0x5CA64DB3L,0xE349AC0DL,4294967289UL}},{{4294967286UL,4294967286UL,8UL,0x5CA64DB3L,0xE349AC0DL,4294967289UL},{4294967286UL,4294967286UL,8UL,0x5CA64DB3L,0xE349AC0DL,4294967289UL},{4294967286UL,4294967286UL,8UL,0x5CA64DB3L,0xE349AC0DL,4294967289UL},{4294967286UL,4294967286UL,8UL,0x5CA64DB3L,0xE349AC0DL,4294967289UL},{4294967286UL,4294967286UL,8UL,0x5CA64DB3L,0xE349AC0DL,4294967289UL}},{{4294967286UL,4294967286UL,8UL,0x5CA64DB3L,0xE349AC0DL,4294967289UL},{4294967286UL,4294967286UL,8UL,0x5CA64DB3L,0xE349AC0DL,4294967289UL},{4294967286UL,4294967286UL,8UL,0x5CA64DB3L,0xE349AC0DL,4294967289UL},{4294967286UL,4294967286UL,8UL,0x5CA64DB3L,0xE349AC0DL,4294967289UL},{4294967286UL,4294967286UL,8UL,0x5CA64DB3L,0xE349AC0DL,4294967289UL}}}, // p_1908->g_981
        (void*)0, // p_1908->g_1003
        &p_1908->g_205[0], // p_1908->g_1047
        0xEFL, // p_1908->g_1049
        &p_1908->g_679, // p_1908->g_1066
        &p_1908->g_1066, // p_1908->g_1065
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_1908->g_1064
        &p_1908->g_130, // p_1908->g_1162
        &p_1908->g_1162, // p_1908->g_1161
        &p_1908->g_1161, // p_1908->g_1160
        0x317CL, // p_1908->g_1182
        0x78A8AB59E5735121L, // p_1908->g_1284
        &p_1908->g_959, // p_1908->g_1292
        {(void*)0,&p_1908->g_1292,(void*)0,(void*)0,&p_1908->g_1292,(void*)0,(void*)0}, // p_1908->g_1291
        &p_1908->g_1291[5], // p_1908->g_1293
        {{0x4D81E0D6L,0x4D81E0D6L,0x4D81E0D6L}}, // p_1908->g_1454
        0xFAL, // p_1908->g_1536
        &p_1908->g_205[2], // p_1908->g_1538
        0x628A565FL, // p_1908->g_1609
        (void*)0, // p_1908->g_1629
        4294967295UL, // p_1908->g_1654
        &p_1908->g_1065, // p_1908->g_1681
        &p_1908->g_1681, // p_1908->g_1680
        &p_1908->g_205[3], // p_1908->g_1685
        (void*)0, // p_1908->g_1717
        (-1L), // p_1908->g_1724
        {{{0x184F7B30E631FF84L,0x4F9E7EC04A775871L,7L,0x4734D4E3AC5D9A7BL,7L,0x4F9E7EC04A775871L,0x184F7B30E631FF84L},{0x184F7B30E631FF84L,0x4F9E7EC04A775871L,7L,0x4734D4E3AC5D9A7BL,7L,0x4F9E7EC04A775871L,0x184F7B30E631FF84L},{0x184F7B30E631FF84L,0x4F9E7EC04A775871L,7L,0x4734D4E3AC5D9A7BL,7L,0x4F9E7EC04A775871L,0x184F7B30E631FF84L}},{{0x184F7B30E631FF84L,0x4F9E7EC04A775871L,7L,0x4734D4E3AC5D9A7BL,7L,0x4F9E7EC04A775871L,0x184F7B30E631FF84L},{0x184F7B30E631FF84L,0x4F9E7EC04A775871L,7L,0x4734D4E3AC5D9A7BL,7L,0x4F9E7EC04A775871L,0x184F7B30E631FF84L},{0x184F7B30E631FF84L,0x4F9E7EC04A775871L,7L,0x4734D4E3AC5D9A7BL,7L,0x4F9E7EC04A775871L,0x184F7B30E631FF84L}},{{0x184F7B30E631FF84L,0x4F9E7EC04A775871L,7L,0x4734D4E3AC5D9A7BL,7L,0x4F9E7EC04A775871L,0x184F7B30E631FF84L},{0x184F7B30E631FF84L,0x4F9E7EC04A775871L,7L,0x4734D4E3AC5D9A7BL,7L,0x4F9E7EC04A775871L,0x184F7B30E631FF84L},{0x184F7B30E631FF84L,0x4F9E7EC04A775871L,7L,0x4734D4E3AC5D9A7BL,7L,0x4F9E7EC04A775871L,0x184F7B30E631FF84L}},{{0x184F7B30E631FF84L,0x4F9E7EC04A775871L,7L,0x4734D4E3AC5D9A7BL,7L,0x4F9E7EC04A775871L,0x184F7B30E631FF84L},{0x184F7B30E631FF84L,0x4F9E7EC04A775871L,7L,0x4734D4E3AC5D9A7BL,7L,0x4F9E7EC04A775871L,0x184F7B30E631FF84L},{0x184F7B30E631FF84L,0x4F9E7EC04A775871L,7L,0x4734D4E3AC5D9A7BL,7L,0x4F9E7EC04A775871L,0x184F7B30E631FF84L}},{{0x184F7B30E631FF84L,0x4F9E7EC04A775871L,7L,0x4734D4E3AC5D9A7BL,7L,0x4F9E7EC04A775871L,0x184F7B30E631FF84L},{0x184F7B30E631FF84L,0x4F9E7EC04A775871L,7L,0x4734D4E3AC5D9A7BL,7L,0x4F9E7EC04A775871L,0x184F7B30E631FF84L},{0x184F7B30E631FF84L,0x4F9E7EC04A775871L,7L,0x4734D4E3AC5D9A7BL,7L,0x4F9E7EC04A775871L,0x184F7B30E631FF84L}},{{0x184F7B30E631FF84L,0x4F9E7EC04A775871L,7L,0x4734D4E3AC5D9A7BL,7L,0x4F9E7EC04A775871L,0x184F7B30E631FF84L},{0x184F7B30E631FF84L,0x4F9E7EC04A775871L,7L,0x4734D4E3AC5D9A7BL,7L,0x4F9E7EC04A775871L,0x184F7B30E631FF84L},{0x184F7B30E631FF84L,0x4F9E7EC04A775871L,7L,0x4734D4E3AC5D9A7BL,7L,0x4F9E7EC04A775871L,0x184F7B30E631FF84L}},{{0x184F7B30E631FF84L,0x4F9E7EC04A775871L,7L,0x4734D4E3AC5D9A7BL,7L,0x4F9E7EC04A775871L,0x184F7B30E631FF84L},{0x184F7B30E631FF84L,0x4F9E7EC04A775871L,7L,0x4734D4E3AC5D9A7BL,7L,0x4F9E7EC04A775871L,0x184F7B30E631FF84L},{0x184F7B30E631FF84L,0x4F9E7EC04A775871L,7L,0x4734D4E3AC5D9A7BL,7L,0x4F9E7EC04A775871L,0x184F7B30E631FF84L}}}, // p_1908->g_1815
        0x1475E227L, // p_1908->g_1872
        sequence_input[get_global_id(0)], // p_1908->global_0_offset
        sequence_input[get_global_id(1)], // p_1908->global_1_offset
        sequence_input[get_global_id(2)], // p_1908->global_2_offset
        sequence_input[get_local_id(0)], // p_1908->local_0_offset
        sequence_input[get_local_id(1)], // p_1908->local_1_offset
        sequence_input[get_local_id(2)], // p_1908->local_2_offset
        sequence_input[get_group_id(0)], // p_1908->group_0_offset
        sequence_input[get_group_id(1)], // p_1908->group_1_offset
        sequence_input[get_group_id(2)], // p_1908->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 24)), permutations[0][get_linear_local_id()])), // p_1908->tid
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_1909 = c_1910;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1908);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1908->g_3, "p_1908->g_3", print_hash_value);
    transparent_crc(p_1908->g_11, "p_1908->g_11", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_1908->g_50[i][j], "p_1908->g_50[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1908->g_87, "p_1908->g_87", print_hash_value);
    transparent_crc(p_1908->g_92, "p_1908->g_92", print_hash_value);
    transparent_crc(p_1908->g_112, "p_1908->g_112", print_hash_value);
    transparent_crc(p_1908->g_115, "p_1908->g_115", print_hash_value);
    transparent_crc(p_1908->g_116, "p_1908->g_116", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_1908->g_122[i], "p_1908->g_122[i]", print_hash_value);

    }
    transparent_crc(p_1908->g_127, "p_1908->g_127", print_hash_value);
    transparent_crc(p_1908->g_128, "p_1908->g_128", print_hash_value);
    transparent_crc(p_1908->g_130, "p_1908->g_130", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1908->g_157[i], "p_1908->g_157[i]", print_hash_value);

    }
    transparent_crc(p_1908->g_158, "p_1908->g_158", print_hash_value);
    transparent_crc(p_1908->g_192, "p_1908->g_192", print_hash_value);
    transparent_crc(p_1908->g_200, "p_1908->g_200", print_hash_value);
    transparent_crc(p_1908->g_257, "p_1908->g_257", print_hash_value);
    transparent_crc(p_1908->g_282, "p_1908->g_282", print_hash_value);
    transparent_crc(p_1908->g_395, "p_1908->g_395", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1908->g_465[i], "p_1908->g_465[i]", print_hash_value);

    }
    transparent_crc(p_1908->g_523, "p_1908->g_523", print_hash_value);
    transparent_crc(p_1908->g_680, "p_1908->g_680", print_hash_value);
    transparent_crc(p_1908->g_682, "p_1908->g_682", print_hash_value);
    transparent_crc(p_1908->g_685, "p_1908->g_685", print_hash_value);
    transparent_crc(p_1908->g_712, "p_1908->g_712", print_hash_value);
    transparent_crc(p_1908->g_822, "p_1908->g_822", print_hash_value);
    transparent_crc(p_1908->g_956, "p_1908->g_956", print_hash_value);
    transparent_crc(p_1908->g_959, "p_1908->g_959", print_hash_value);
    transparent_crc(p_1908->g_980, "p_1908->g_980", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 5; j++)
        {
            for (k = 0; k < 6; k++)
            {
                transparent_crc(p_1908->g_981[i][j][k], "p_1908->g_981[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1908->g_1049, "p_1908->g_1049", print_hash_value);
    transparent_crc(p_1908->g_1182, "p_1908->g_1182", print_hash_value);
    transparent_crc(p_1908->g_1284, "p_1908->g_1284", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 3; j++)
        {
            transparent_crc(p_1908->g_1454[i][j], "p_1908->g_1454[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1908->g_1536, "p_1908->g_1536", print_hash_value);
    transparent_crc(p_1908->g_1609, "p_1908->g_1609", print_hash_value);
    transparent_crc(p_1908->g_1654, "p_1908->g_1654", print_hash_value);
    transparent_crc(p_1908->g_1724, "p_1908->g_1724", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 3; j++)
        {
            for (k = 0; k < 7; k++)
            {
                transparent_crc(p_1908->g_1815[i][j][k], "p_1908->g_1815[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1908->g_1872, "p_1908->g_1872", print_hash_value);
    transparent_crc(p_1908->l_comm_values[get_linear_local_id()], "p_1908->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_1908->g_comm_values[get_linear_group_id() * 24 + get_linear_local_id()], "p_1908->g_comm_values[get_linear_group_id() * 24 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
