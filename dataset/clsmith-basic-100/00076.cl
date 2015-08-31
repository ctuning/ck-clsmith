// ---fake_divergence -g 1,48,37 -l 1,1,1
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


// Seed: 76

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    uint32_t g_17[4][8][8];
    volatile int32_t g_20;
    int32_t g_21;
    int32_t g_22;
    uint32_t g_35;
    int8_t g_42;
    uint32_t g_61;
    int32_t g_63;
    volatile int32_t g_73[4];
    volatile uint32_t g_74;
    volatile int32_t g_81[6][9][4];
    int32_t *g_111[5];
    int32_t **g_110;
    uint8_t g_128;
    uint8_t g_131;
    uint64_t g_140;
    int16_t g_141;
    int32_t g_144[2][4];
    int8_t g_178;
    volatile int8_t *g_181;
    int32_t * volatile g_189;
    int8_t *g_208;
    uint8_t **g_241;
    uint64_t g_265[9][9][3];
    int16_t g_281[7];
    int16_t g_298;
    int32_t * volatile g_340;
    uint64_t *g_360;
    uint16_t g_414;
    int32_t g_424;
    uint8_t ***g_436;
    uint8_t *** volatile *g_435;
    int64_t g_438;
    int16_t *g_491;
    volatile int16_t g_507;
    uint8_t g_514;
    uint8_t g_551[7][1];
    volatile uint8_t g_572;
    uint16_t g_602;
    uint16_t g_604;
    uint32_t g_664;
    uint32_t g_675[10];
    volatile uint32_t g_685;
    int8_t g_748;
    int64_t *g_767;
    int64_t * volatile * volatile g_766[10][7][3];
    int64_t *g_789;
    int32_t * volatile g_811;
    uint32_t g_836;
    int32_t g_854;
    int32_t * volatile g_853;
    int32_t *g_881;
    int32_t ** volatile g_880;
    uint8_t ****g_913;
    uint8_t *****g_912;
    volatile int16_t *g_918;
    volatile int16_t **g_917;
    volatile int16_t *** volatile g_916;
    int16_t g_1097[9][9];
    int8_t g_1128;
    volatile int8_t g_1161;
    uint64_t g_1174;
    int64_t g_1211;
    int32_t ** volatile g_1242;
    int32_t ** volatile g_1292;
    int64_t g_1408;
    int8_t *g_1449;
    int8_t **g_1448[3];
    int32_t g_1452[9];
    uint64_t **g_1474;
    int32_t *g_1594;
    int32_t ** volatile g_1593[9][10];
    int32_t **g_1596;
    int32_t g_1667;
    uint64_t g_1694;
    volatile int32_t g_1698;
    int32_t g_1701[3];
    uint64_t ***g_1739[6][7];
    uint16_t *g_1756[6];
    uint16_t **g_1755;
    uint8_t ***g_1825;
    int32_t * volatile *g_1847;
    int32_t * volatile **g_1846;
    int32_t * volatile ***g_1845;
    uint32_t g_1865;
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
uint32_t  func_1(struct S0 * p_1868);
int8_t  func_4(int32_t  p_5, uint32_t  p_6, int8_t  p_7, int64_t  p_8, struct S0 * p_1868);
uint32_t  func_10(uint64_t  p_11, uint16_t  p_12, uint32_t  p_13, uint64_t  p_14, struct S0 * p_1868);
uint64_t  func_15(uint32_t  p_16, struct S0 * p_1868);
uint8_t  func_27(uint32_t  p_28, uint64_t  p_29, int16_t  p_30, uint32_t  p_31, struct S0 * p_1868);
int8_t * func_45(uint32_t * p_46, int8_t * p_47, uint32_t * p_48, int8_t  p_49, int64_t  p_50, struct S0 * p_1868);
int32_t  func_51(int8_t * p_52, uint32_t * p_53, struct S0 * p_1868);
int8_t * func_54(uint32_t  p_55, struct S0 * p_1868);
int32_t  func_101(uint8_t  p_102, uint8_t  p_103, int32_t ** p_104, uint32_t  p_105, struct S0 * p_1868);
uint8_t  func_106(int32_t ** p_107, uint32_t * p_108, int32_t  p_109, struct S0 * p_1868);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1868->g_17 p_1868->g_360 p_1868->g_140 p_1868->g_208 p_1868->g_178 p_1868->g_20 p_1868->g_128 p_1868->g_685 p_1868->g_789 p_1868->g_748 p_1868->g_35 p_1868->g_21 p_1868->g_414 p_1868->g_1242 p_1868->g_111 p_1868->g_110 p_1868->g_74 p_1868->g_916 p_1868->g_917 p_1868->g_918 p_1868->g_507 p_1868->g_22 p_1868->g_63 p_1868->g_767 p_1868->g_438 p_1868->g_141 p_1868->g_189 p_1868->g_1292 p_1868->g_881 p_1868->g_1128 p_1868->g_514 p_1868->g_81 p_1868->g_424 p_1868->g_1174 p_1868->g_602 p_1868->g_1452 p_1868->g_854 p_1868->g_604 p_1868->g_675 p_1868->g_880 p_1868->g_144 p_1868->g_1449 p_1868->g_1474 p_1868->g_664 p_1868->g_42 p_1868->g_1701 p_1868->g_1847 p_1868->g_1865
 * writes: p_1868->g_21 p_1868->g_22 p_1868->g_128 p_1868->g_438 p_1868->g_748 p_1868->g_61 p_1868->g_111 p_1868->g_63 p_1868->g_141 p_1868->g_836 p_1868->g_178 p_1868->g_1128 p_1868->g_35 p_1868->g_424 p_1868->g_551 p_1868->g_1408 p_1868->g_602 p_1868->g_1448 p_1868->g_854 p_1868->g_281 p_1868->g_604 p_1868->g_1474 p_1868->g_414 p_1868->g_42 p_1868->g_514 p_1868->g_140
 */
uint32_t  func_1(struct S0 * p_1868)
{ /* block id: 4 */
    uint16_t l_9 = 1UL;
    uint16_t *l_1430 = &p_1868->g_602;
    int8_t l_1433 = 0x66L;
    int16_t **l_1443 = &p_1868->g_491;
    int16_t ***l_1442 = &l_1443;
    int16_t ***l_1444 = &l_1443;
    int64_t *l_1445 = (void*)0;
    int64_t *l_1446[4][1][4] = {{{&p_1868->g_1211,(void*)0,(void*)0,&p_1868->g_1211}},{{&p_1868->g_1211,(void*)0,(void*)0,&p_1868->g_1211}},{{&p_1868->g_1211,(void*)0,(void*)0,&p_1868->g_1211}},{{&p_1868->g_1211,(void*)0,(void*)0,&p_1868->g_1211}}};
    int16_t l_1447 = 0x1B1DL;
    int8_t **l_1450[6];
    uint32_t l_1451 = 0x998C30AEL;
    int32_t l_1866 = 0x38D4E15FL;
    int32_t l_1867 = 0x27E8C2ACL;
    int i, j, k;
    for (i = 0; i < 6; i++)
        l_1450[i] = &p_1868->g_1449;
    (*p_1868->g_189) = (l_1867 = (l_1866 = ((safe_rshift_func_uint8_t_u_s((func_4((l_9 == (func_10(func_15(p_1868->g_17[1][7][0], p_1868), p_1868->g_1174, (((((safe_sub_func_uint8_t_u_u(l_9, (safe_mul_func_uint16_t_u_u((((++(*l_1430)) , l_1433) < ((safe_sub_func_uint64_t_u_u((l_9 & 5L), (((safe_sub_func_int64_t_s_s(((p_1868->g_1448[2] = (((~(l_1447 = (safe_mul_func_uint8_t_u_u((safe_div_func_uint32_t_u_u((l_1442 != l_1444), p_1868->g_1174)), (-1L))))) < l_9) , &p_1868->g_208)) == l_1450[3]), l_1451)) <= p_1868->g_1452[4]) != 9UL))) & (*p_1868->g_360))), l_1451)))) <= l_9) && 0x718D3A0A4F31B6CEL) <= 4UL) >= l_1433), (*p_1868->g_360), p_1868) , l_1451)), p_1868->g_144[0][3], l_1433, p_1868->g_1701[0], p_1868) | p_1868->g_1865), 0)) >= l_9)));
    return l_1867;
}


/* ------------------------------------------ */
/* 
 * reads : p_1868->g_1847 p_1868->g_111
 * writes: p_1868->g_22 p_1868->g_63
 */
int8_t  func_4(int32_t  p_5, uint32_t  p_6, int8_t  p_7, int64_t  p_8, struct S0 * p_1868)
{ /* block id: 888 */
    uint16_t l_1864[10] = {0UL,0xDAA4L,1UL,0xDAA4L,0UL,0UL,0xDAA4L,1UL,0xDAA4L,0UL};
    int i;
    (**p_1868->g_1847) = (p_6 || l_1864[8]);
    return p_5;
}


/* ------------------------------------------ */
/* 
 * reads : p_1868->g_110 p_1868->g_111 p_1868->g_22 p_1868->g_63 p_1868->g_916 p_1868->g_917 p_1868->g_918 p_1868->g_507 p_1868->g_208 p_1868->g_604 p_1868->g_675 p_1868->g_424 p_1868->g_880 p_1868->g_881 p_1868->g_144 p_1868->g_178 p_1868->g_360 p_1868->g_1449 p_1868->g_514 p_1868->g_1474 p_1868->g_140 p_1868->g_664 p_1868->g_414 p_1868->g_1242 p_1868->g_42 p_1868->g_767 p_1868->g_438 p_1868->g_81 p_1868->g_854
 * writes: p_1868->g_22 p_1868->g_63 p_1868->g_854 p_1868->g_281 p_1868->g_178 p_1868->g_604 p_1868->g_128 p_1868->g_1474 p_1868->g_414 p_1868->g_42 p_1868->g_514 p_1868->g_111 p_1868->g_140
 */
uint32_t  func_10(uint64_t  p_11, uint16_t  p_12, uint32_t  p_13, uint64_t  p_14, struct S0 * p_1868)
{ /* block id: 724 */
    int8_t **l_1453[1][7] = {{&p_1868->g_1449,&p_1868->g_1449,&p_1868->g_1449,&p_1868->g_1449,&p_1868->g_1449,&p_1868->g_1449,&p_1868->g_1449}};
    uint64_t **l_1473 = &p_1868->g_360;
    int32_t l_1507 = 0x6C7CA6A9L;
    int32_t *l_1540 = &p_1868->g_1452[4];
    int32_t ***l_1555 = &p_1868->g_110;
    int32_t ***l_1557 = (void*)0;
    uint16_t l_1564 = 0x6166L;
    int32_t **l_1595 = &p_1868->g_1594;
    int32_t l_1668[10];
    uint8_t l_1693 = 7UL;
    uint8_t ****l_1722 = &p_1868->g_436;
    int64_t l_1726 = 0x54B51B017DB02123L;
    uint8_t ******l_1747 = &p_1868->g_912;
    uint16_t *l_1754 = (void*)0;
    uint16_t **l_1753[5][4][8] = {{{&l_1754,(void*)0,&l_1754,(void*)0,&l_1754,(void*)0,&l_1754,&l_1754},{&l_1754,(void*)0,&l_1754,(void*)0,&l_1754,(void*)0,&l_1754,&l_1754},{&l_1754,(void*)0,&l_1754,(void*)0,&l_1754,(void*)0,&l_1754,&l_1754},{&l_1754,(void*)0,&l_1754,(void*)0,&l_1754,(void*)0,&l_1754,&l_1754}},{{&l_1754,(void*)0,&l_1754,(void*)0,&l_1754,(void*)0,&l_1754,&l_1754},{&l_1754,(void*)0,&l_1754,(void*)0,&l_1754,(void*)0,&l_1754,&l_1754},{&l_1754,(void*)0,&l_1754,(void*)0,&l_1754,(void*)0,&l_1754,&l_1754},{&l_1754,(void*)0,&l_1754,(void*)0,&l_1754,(void*)0,&l_1754,&l_1754}},{{&l_1754,(void*)0,&l_1754,(void*)0,&l_1754,(void*)0,&l_1754,&l_1754},{&l_1754,(void*)0,&l_1754,(void*)0,&l_1754,(void*)0,&l_1754,&l_1754},{&l_1754,(void*)0,&l_1754,(void*)0,&l_1754,(void*)0,&l_1754,&l_1754},{&l_1754,(void*)0,&l_1754,(void*)0,&l_1754,(void*)0,&l_1754,&l_1754}},{{&l_1754,(void*)0,&l_1754,(void*)0,&l_1754,(void*)0,&l_1754,&l_1754},{&l_1754,(void*)0,&l_1754,(void*)0,&l_1754,(void*)0,&l_1754,&l_1754},{&l_1754,(void*)0,&l_1754,(void*)0,&l_1754,(void*)0,&l_1754,&l_1754},{&l_1754,(void*)0,&l_1754,(void*)0,&l_1754,(void*)0,&l_1754,&l_1754}},{{&l_1754,(void*)0,&l_1754,(void*)0,&l_1754,(void*)0,&l_1754,&l_1754},{&l_1754,(void*)0,&l_1754,(void*)0,&l_1754,(void*)0,&l_1754,&l_1754},{&l_1754,(void*)0,&l_1754,(void*)0,&l_1754,(void*)0,&l_1754,&l_1754},{&l_1754,(void*)0,&l_1754,(void*)0,&l_1754,(void*)0,&l_1754,&l_1754}}};
    int16_t ***l_1857 = (void*)0;
    int i, j, k;
    for (i = 0; i < 10; i++)
        l_1668[i] = 0x6D3EFAB1L;
lbl_1458:
    (**p_1868->g_110) |= (l_1453[0][5] != (void*)0);
    for (p_13 = 0; (p_13 > 26); p_13 = safe_add_func_int64_t_s_s(p_13, 8))
    { /* block id: 728 */
        uint64_t l_1461 = 0x111CF1AEEBBD157BL;
        int16_t *l_1462 = &p_1868->g_281[1];
        int32_t l_1465 = 0x59E5C0E5L;
        uint64_t *l_1471 = &l_1461;
        int32_t *l_1529[10][6][4] = {{{(void*)0,(void*)0,&p_1868->g_22,&p_1868->g_854},{(void*)0,(void*)0,&p_1868->g_22,&p_1868->g_854},{(void*)0,(void*)0,&p_1868->g_22,&p_1868->g_854},{(void*)0,(void*)0,&p_1868->g_22,&p_1868->g_854},{(void*)0,(void*)0,&p_1868->g_22,&p_1868->g_854},{(void*)0,(void*)0,&p_1868->g_22,&p_1868->g_854}},{{(void*)0,(void*)0,&p_1868->g_22,&p_1868->g_854},{(void*)0,(void*)0,&p_1868->g_22,&p_1868->g_854},{(void*)0,(void*)0,&p_1868->g_22,&p_1868->g_854},{(void*)0,(void*)0,&p_1868->g_22,&p_1868->g_854},{(void*)0,(void*)0,&p_1868->g_22,&p_1868->g_854},{(void*)0,(void*)0,&p_1868->g_22,&p_1868->g_854}},{{(void*)0,(void*)0,&p_1868->g_22,&p_1868->g_854},{(void*)0,(void*)0,&p_1868->g_22,&p_1868->g_854},{(void*)0,(void*)0,&p_1868->g_22,&p_1868->g_854},{(void*)0,(void*)0,&p_1868->g_22,&p_1868->g_854},{(void*)0,(void*)0,&p_1868->g_22,&p_1868->g_854},{(void*)0,(void*)0,&p_1868->g_22,&p_1868->g_854}},{{(void*)0,(void*)0,&p_1868->g_22,&p_1868->g_854},{(void*)0,(void*)0,&p_1868->g_22,&p_1868->g_854},{(void*)0,(void*)0,&p_1868->g_22,&p_1868->g_854},{(void*)0,(void*)0,&p_1868->g_22,&p_1868->g_854},{(void*)0,(void*)0,&p_1868->g_22,&p_1868->g_854},{(void*)0,(void*)0,&p_1868->g_22,&p_1868->g_854}},{{(void*)0,(void*)0,&p_1868->g_22,&p_1868->g_854},{(void*)0,(void*)0,&p_1868->g_22,&p_1868->g_854},{(void*)0,(void*)0,&p_1868->g_22,&p_1868->g_854},{(void*)0,(void*)0,&p_1868->g_22,&p_1868->g_854},{(void*)0,(void*)0,&p_1868->g_22,&p_1868->g_854},{(void*)0,(void*)0,&p_1868->g_22,&p_1868->g_854}},{{(void*)0,(void*)0,&p_1868->g_22,&p_1868->g_854},{(void*)0,(void*)0,&p_1868->g_22,&p_1868->g_854},{(void*)0,(void*)0,&p_1868->g_22,&p_1868->g_854},{(void*)0,(void*)0,&p_1868->g_22,&p_1868->g_854},{(void*)0,(void*)0,&p_1868->g_22,&p_1868->g_854},{(void*)0,(void*)0,&p_1868->g_22,&p_1868->g_854}},{{(void*)0,(void*)0,&p_1868->g_22,&p_1868->g_854},{(void*)0,(void*)0,&p_1868->g_22,&p_1868->g_854},{(void*)0,(void*)0,&p_1868->g_22,&p_1868->g_854},{(void*)0,(void*)0,&p_1868->g_22,&p_1868->g_854},{(void*)0,(void*)0,&p_1868->g_22,&p_1868->g_854},{(void*)0,(void*)0,&p_1868->g_22,&p_1868->g_854}},{{(void*)0,(void*)0,&p_1868->g_22,&p_1868->g_854},{(void*)0,(void*)0,&p_1868->g_22,&p_1868->g_854},{(void*)0,(void*)0,&p_1868->g_22,&p_1868->g_854},{(void*)0,(void*)0,&p_1868->g_22,&p_1868->g_854},{(void*)0,(void*)0,&p_1868->g_22,&p_1868->g_854},{(void*)0,(void*)0,&p_1868->g_22,&p_1868->g_854}},{{(void*)0,(void*)0,&p_1868->g_22,&p_1868->g_854},{(void*)0,(void*)0,&p_1868->g_22,&p_1868->g_854},{(void*)0,(void*)0,&p_1868->g_22,&p_1868->g_854},{(void*)0,(void*)0,&p_1868->g_22,&p_1868->g_854},{(void*)0,(void*)0,&p_1868->g_22,&p_1868->g_854},{(void*)0,(void*)0,&p_1868->g_22,&p_1868->g_854}},{{(void*)0,(void*)0,&p_1868->g_22,&p_1868->g_854},{(void*)0,(void*)0,&p_1868->g_22,&p_1868->g_854},{(void*)0,(void*)0,&p_1868->g_22,&p_1868->g_854},{(void*)0,(void*)0,&p_1868->g_22,&p_1868->g_854},{(void*)0,(void*)0,&p_1868->g_22,&p_1868->g_854},{(void*)0,(void*)0,&p_1868->g_22,&p_1868->g_854}}};
        uint8_t l_1530 = 3UL;
        int16_t **l_1605 = &l_1462;
        int16_t ***l_1604 = &l_1605;
        uint64_t ***l_1692 = &p_1868->g_1474;
        int16_t l_1721 = 0x5833L;
        uint64_t ***l_1741 = &p_1868->g_1474;
        uint8_t ***l_1802 = &p_1868->g_241;
        int i, j, k;
        for (p_1868->g_854 = 5; (p_1868->g_854 > 21); p_1868->g_854 = safe_add_func_uint16_t_u_u(p_1868->g_854, 8))
        { /* block id: 731 */
            if (p_13)
                goto lbl_1458;
        }
        l_1465 = (&p_1868->g_675[9] != (((safe_rshift_func_int8_t_s_u(((+l_1461) < p_14), 2)) < (p_11 , (l_1461 & ((***p_1868->g_916) , (((*l_1462) = (***p_1868->g_916)) && ((*l_1462) = (((*p_1868->g_208) = (safe_div_func_uint16_t_u_u(((void*)0 == &p_1868->g_917), 0x1DC4L))) == p_13))))))) , (void*)0));
        for (p_1868->g_604 = 26; (p_1868->g_604 >= 49); p_1868->g_604++)
        { /* block id: 740 */
            uint32_t l_1490[1][6] = {{0UL,0UL,0UL,0UL,0UL,0UL}};
            uint64_t **l_1491[4][5][10] = {{{(void*)0,(void*)0,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,(void*)0,(void*)0,&p_1868->g_360,(void*)0,&p_1868->g_360},{(void*)0,(void*)0,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,(void*)0,(void*)0,&p_1868->g_360,(void*)0,&p_1868->g_360},{(void*)0,(void*)0,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,(void*)0,(void*)0,&p_1868->g_360,(void*)0,&p_1868->g_360},{(void*)0,(void*)0,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,(void*)0,(void*)0,&p_1868->g_360,(void*)0,&p_1868->g_360},{(void*)0,(void*)0,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,(void*)0,(void*)0,&p_1868->g_360,(void*)0,&p_1868->g_360}},{{(void*)0,(void*)0,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,(void*)0,(void*)0,&p_1868->g_360,(void*)0,&p_1868->g_360},{(void*)0,(void*)0,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,(void*)0,(void*)0,&p_1868->g_360,(void*)0,&p_1868->g_360},{(void*)0,(void*)0,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,(void*)0,(void*)0,&p_1868->g_360,(void*)0,&p_1868->g_360},{(void*)0,(void*)0,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,(void*)0,(void*)0,&p_1868->g_360,(void*)0,&p_1868->g_360},{(void*)0,(void*)0,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,(void*)0,(void*)0,&p_1868->g_360,(void*)0,&p_1868->g_360}},{{(void*)0,(void*)0,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,(void*)0,(void*)0,&p_1868->g_360,(void*)0,&p_1868->g_360},{(void*)0,(void*)0,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,(void*)0,(void*)0,&p_1868->g_360,(void*)0,&p_1868->g_360},{(void*)0,(void*)0,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,(void*)0,(void*)0,&p_1868->g_360,(void*)0,&p_1868->g_360},{(void*)0,(void*)0,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,(void*)0,(void*)0,&p_1868->g_360,(void*)0,&p_1868->g_360},{(void*)0,(void*)0,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,(void*)0,(void*)0,&p_1868->g_360,(void*)0,&p_1868->g_360}},{{(void*)0,(void*)0,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,(void*)0,(void*)0,&p_1868->g_360,(void*)0,&p_1868->g_360},{(void*)0,(void*)0,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,(void*)0,(void*)0,&p_1868->g_360,(void*)0,&p_1868->g_360},{(void*)0,(void*)0,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,(void*)0,(void*)0,&p_1868->g_360,(void*)0,&p_1868->g_360},{(void*)0,(void*)0,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,(void*)0,(void*)0,&p_1868->g_360,(void*)0,&p_1868->g_360},{(void*)0,(void*)0,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,(void*)0,(void*)0,&p_1868->g_360,(void*)0,&p_1868->g_360}}};
            int32_t l_1518 = 3L;
            int8_t l_1519 = 1L;
            int i, j, k;
            (**p_1868->g_110) = (l_1465 = p_13);
            for (p_1868->g_128 = 9; (p_1868->g_128 >= 31); p_1868->g_128++)
            { /* block id: 745 */
                uint64_t **l_1470[1][6][5] = {{{&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360},{&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360},{&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360},{&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360},{&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360},{&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360}}};
                uint64_t ***l_1472[10] = {(void*)0,&l_1470[0][0][1],(void*)0,(void*)0,&l_1470[0][0][1],(void*)0,(void*)0,&l_1470[0][0][1],(void*)0,(void*)0};
                uint16_t *l_1489 = &p_1868->g_414;
                int32_t l_1508[1][9][4];
                int i, j, k;
                for (i = 0; i < 1; i++)
                {
                    for (j = 0; j < 9; j++)
                    {
                        for (k = 0; k < 4; k++)
                            l_1508[i][j][k] = (-6L);
                    }
                }
                if (p_1868->g_604)
                    goto lbl_1458;
                if ((l_1465 >= ((l_1471 = &p_1868->g_265[5][0][1]) != (((*p_1868->g_208) = ((p_1868->g_1474 = (l_1473 = (p_1868->g_675[4] , &p_1868->g_360))) != (((((((((FAKE_DIVERGE(p_1868->group_2_offset, get_group_id(2), 10) || (safe_lshift_func_uint16_t_u_s(((*l_1489) = (((*l_1462) = ((((safe_rshift_func_int8_t_s_u(p_14, 5)) , ((safe_rshift_func_int8_t_s_u((safe_add_func_int64_t_s_s((safe_rshift_func_int8_t_s_s((safe_mod_func_int32_t_s_s((((safe_lshift_func_uint8_t_u_s((p_1868->g_424 <= p_14), 3)) , (void*)0) != (*p_1868->g_880)), p_14)), 1)), p_12)), p_14)) & 0x3BD016A96B06542CL)) >= p_1868->g_144[1][0]) > FAKE_DIVERGE(p_1868->local_2_offset, get_local_id(2), 10))) <= 0x3779L)), 7))) , p_12) && 0x0EL) & (-1L)) , 7UL) ^ l_1490[0][1]) >= 3L) , (*p_1868->g_208)) , l_1491[0][1][8]))) , (*l_1473)))))
                { /* block id: 753 */
                    uint8_t *l_1511 = &p_1868->g_514;
                    (**p_1868->g_110) ^= ((safe_add_func_int16_t_s_s(((p_14 != (-1L)) | (0x56E7563C151642A5L > ((safe_mod_func_uint8_t_u_u((safe_mod_func_uint8_t_u_u(((safe_rshift_func_int8_t_s_s((safe_unary_minus_func_uint8_t_u((safe_lshift_func_uint8_t_u_u(((-1L) == (safe_mul_func_int8_t_s_s(((*p_1868->g_1449) = (safe_rshift_func_uint8_t_u_u(l_1507, 2))), (l_1508[0][4][0] || (l_1518 &= ((*p_1868->g_208) = ((safe_mod_func_uint16_t_u_u((1UL >= ((p_12 , (((*l_1511)++) && (safe_rshift_func_int8_t_s_s((((((safe_mul_func_int16_t_s_s((***p_1868->g_916), p_1868->g_675[4])) != 0x339B2F74BE683D60L) && l_1490[0][1]) | 0xC9C3L) == (**p_1868->g_1474)), 2)))) , p_11)), l_1461)) ^ p_1868->g_664))))))), p_11)))), 0)) >= 18446744073709551615UL), l_1490[0][5])), l_1519)) , p_12))), p_1868->g_414)) , (-6L));
                    (*p_1868->g_110) = (*p_1868->g_1242);
                    if ((((*p_1868->g_1449) > (safe_sub_func_uint64_t_u_u((safe_lshift_func_int16_t_s_s(((0x14L || (safe_add_func_uint32_t_u_u(0x06764096L, GROUP_DIVERGE(2, 1)))) < (safe_sub_func_uint64_t_u_u((!(l_1465 == (*p_1868->g_767))), 0x31544A1B34C423C1L))), 11)), 0x4320B379EB8F3A19L))) || ((l_1507 = ((p_13 >= l_1507) && 65535UL)) && FAKE_DIVERGE(p_1868->group_0_offset, get_group_id(0), 10))))
                    { /* block id: 761 */
                        int32_t *l_1528[3][5][5];
                        int i, j, k;
                        for (i = 0; i < 3; i++)
                        {
                            for (j = 0; j < 5; j++)
                            {
                                for (k = 0; k < 5; k++)
                                    l_1528[i][j][k] = &l_1508[0][8][0];
                            }
                        }
                        l_1529[1][5][3] = l_1528[1][4][0];
                        l_1530++;
                        if (p_12)
                            continue;
                    }
                    else
                    { /* block id: 765 */
                        (**p_1868->g_110) = ((safe_mod_func_int32_t_s_s(0x3034F0B9L, p_14)) & 1UL);
                    }
                }
                else
                { /* block id: 768 */
                    int32_t l_1539 = (-1L);
                    for (l_1518 = 0; (l_1518 <= (-29)); l_1518 = safe_sub_func_uint8_t_u_u(l_1518, 6))
                    { /* block id: 771 */
                        l_1540 = (((safe_add_func_uint32_t_u_u(l_1539, ((**p_1868->g_110) = 0x7CFEA88FL))) <= 253UL) , &l_1518);
                        l_1508[0][4][0] = l_1518;
                    }
                }
            }
        }
        for (p_1868->g_140 = 0; (p_1868->g_140 <= 8); p_1868->g_140 += 1)
        { /* block id: 781 */
            int32_t ****l_1556 = &l_1555;
            int32_t ****l_1558 = (void*)0;
            int32_t ***l_1559 = &p_1868->g_110;
            int16_t l_1583 = 0x0478L;
            int32_t l_1617 = 0x0A732A6AL;
            int32_t l_1673 = 0x26689564L;
            int16_t l_1674[5][1];
            uint32_t l_1675[3][1][2] = {{{4294967295UL,4294967295UL}},{{4294967295UL,4294967295UL}},{{4294967295UL,4294967295UL}}};
            uint8_t ****l_1723 = (void*)0;
            uint8_t ******l_1748 = &p_1868->g_912;
            int32_t l_1777 = 0x2F375C68L;
            uint32_t l_1815 = 0UL;
            int i, j, k;
            for (i = 0; i < 5; i++)
            {
                for (j = 0; j < 1; j++)
                    l_1674[i][j] = 0x772EL;
            }
            (1 + 1);
        }
    }
    return p_1868->g_81[4][8][3];
}


/* ------------------------------------------ */
/* 
 * reads : p_1868->g_360 p_1868->g_140 p_1868->g_208 p_1868->g_178 p_1868->g_20 p_1868->g_128 p_1868->g_685 p_1868->g_789 p_1868->g_748 p_1868->g_35 p_1868->g_21 p_1868->g_414 p_1868->g_1242 p_1868->g_111 p_1868->g_110 p_1868->g_74 p_1868->g_916 p_1868->g_917 p_1868->g_918 p_1868->g_507 p_1868->g_22 p_1868->g_63 p_1868->g_767 p_1868->g_438 p_1868->g_141 p_1868->g_17 p_1868->g_189 p_1868->g_1292 p_1868->g_881 p_1868->g_1128 p_1868->g_514 p_1868->g_81 p_1868->g_424
 * writes: p_1868->g_21 p_1868->g_22 p_1868->g_128 p_1868->g_438 p_1868->g_748 p_1868->g_61 p_1868->g_111 p_1868->g_63 p_1868->g_141 p_1868->g_836 p_1868->g_178 p_1868->g_1128 p_1868->g_35 p_1868->g_424 p_1868->g_551 p_1868->g_1408
 */
uint64_t  func_15(uint32_t  p_16, struct S0 * p_1868)
{ /* block id: 5 */
    int8_t *l_1127 = &p_1868->g_1128;
    int32_t l_1129[2][8] = {{0x414F4ACEL,9L,0x414F4ACEL,0x414F4ACEL,9L,0x414F4ACEL,0x414F4ACEL,9L},{0x414F4ACEL,9L,0x414F4ACEL,0x414F4ACEL,9L,0x414F4ACEL,0x414F4ACEL,9L}};
    uint32_t l_1132 = 0xBE746203L;
    uint32_t l_1263 = 4294967291UL;
    uint8_t ****l_1275 = &p_1868->g_436;
    uint16_t *l_1277 = &p_1868->g_414;
    uint8_t *l_1396 = &p_1868->g_128;
    uint8_t **l_1395 = &l_1396;
    int32_t l_1422 = (-1L);
    uint64_t l_1423[9] = {1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL};
    int i, j;
    for (p_16 = 23; (p_16 >= 9); p_16 = safe_sub_func_uint16_t_u_u(p_16, 1))
    { /* block id: 8 */
        int8_t *l_747 = &p_1868->g_748;
        int32_t l_1139 = 0x355B306BL;
        uint32_t l_1152 = 0xAF6428BEL;
        uint32_t l_1173[3][8] = {{4294967290UL,4294967290UL,4294967290UL,4294967290UL,4294967290UL,4294967290UL,4294967290UL,4294967290UL},{4294967290UL,4294967290UL,4294967290UL,4294967290UL,4294967290UL,4294967290UL,4294967290UL,4294967290UL},{4294967290UL,4294967290UL,4294967290UL,4294967290UL,4294967290UL,4294967290UL,4294967290UL,4294967290UL}};
        int16_t *l_1184 = &p_1868->g_141;
        int32_t l_1231 = 0x5116B482L;
        int32_t l_1236 = 5L;
        int32_t l_1284[9][4][7] = {{{0x3BFF5F6DL,0x0D966D12L,(-1L),0x60BF632EL,(-1L),0x0D966D12L,0x3BFF5F6DL},{0x3BFF5F6DL,0x0D966D12L,(-1L),0x60BF632EL,(-1L),0x0D966D12L,0x3BFF5F6DL},{0x3BFF5F6DL,0x0D966D12L,(-1L),0x60BF632EL,(-1L),0x0D966D12L,0x3BFF5F6DL},{0x3BFF5F6DL,0x0D966D12L,(-1L),0x60BF632EL,(-1L),0x0D966D12L,0x3BFF5F6DL}},{{0x3BFF5F6DL,0x0D966D12L,(-1L),0x60BF632EL,(-1L),0x0D966D12L,0x3BFF5F6DL},{0x3BFF5F6DL,0x0D966D12L,(-1L),0x60BF632EL,(-1L),0x0D966D12L,0x3BFF5F6DL},{0x3BFF5F6DL,0x0D966D12L,(-1L),0x60BF632EL,(-1L),0x0D966D12L,0x3BFF5F6DL},{0x3BFF5F6DL,0x0D966D12L,(-1L),0x60BF632EL,(-1L),0x0D966D12L,0x3BFF5F6DL}},{{0x3BFF5F6DL,0x0D966D12L,(-1L),0x60BF632EL,(-1L),0x0D966D12L,0x3BFF5F6DL},{0x3BFF5F6DL,0x0D966D12L,(-1L),0x60BF632EL,(-1L),0x0D966D12L,0x3BFF5F6DL},{0x3BFF5F6DL,0x0D966D12L,(-1L),0x60BF632EL,(-1L),0x0D966D12L,0x3BFF5F6DL},{0x3BFF5F6DL,0x0D966D12L,(-1L),0x60BF632EL,(-1L),0x0D966D12L,0x3BFF5F6DL}},{{0x3BFF5F6DL,0x0D966D12L,(-1L),0x60BF632EL,(-1L),0x0D966D12L,0x3BFF5F6DL},{0x3BFF5F6DL,0x0D966D12L,(-1L),0x60BF632EL,(-1L),0x0D966D12L,0x3BFF5F6DL},{0x3BFF5F6DL,0x0D966D12L,(-1L),0x60BF632EL,(-1L),0x0D966D12L,0x3BFF5F6DL},{0x3BFF5F6DL,0x0D966D12L,(-1L),0x60BF632EL,(-1L),0x0D966D12L,0x3BFF5F6DL}},{{0x3BFF5F6DL,0x0D966D12L,(-1L),0x60BF632EL,(-1L),0x0D966D12L,0x3BFF5F6DL},{0x3BFF5F6DL,0x0D966D12L,(-1L),0x60BF632EL,(-1L),0x0D966D12L,0x3BFF5F6DL},{0x3BFF5F6DL,0x0D966D12L,(-1L),0x60BF632EL,(-1L),0x0D966D12L,0x3BFF5F6DL},{0x3BFF5F6DL,0x0D966D12L,(-1L),0x60BF632EL,(-1L),0x0D966D12L,0x3BFF5F6DL}},{{0x3BFF5F6DL,0x0D966D12L,(-1L),0x60BF632EL,(-1L),0x0D966D12L,0x3BFF5F6DL},{0x3BFF5F6DL,0x0D966D12L,(-1L),0x60BF632EL,(-1L),0x0D966D12L,0x3BFF5F6DL},{0x3BFF5F6DL,0x0D966D12L,(-1L),0x60BF632EL,(-1L),0x0D966D12L,0x3BFF5F6DL},{0x3BFF5F6DL,0x0D966D12L,(-1L),0x60BF632EL,(-1L),0x0D966D12L,0x3BFF5F6DL}},{{0x3BFF5F6DL,0x0D966D12L,(-1L),0x60BF632EL,(-1L),0x0D966D12L,0x3BFF5F6DL},{0x3BFF5F6DL,0x0D966D12L,(-1L),0x60BF632EL,(-1L),0x0D966D12L,0x3BFF5F6DL},{0x3BFF5F6DL,0x0D966D12L,(-1L),0x60BF632EL,(-1L),0x0D966D12L,0x3BFF5F6DL},{0x3BFF5F6DL,0x0D966D12L,(-1L),0x60BF632EL,(-1L),0x0D966D12L,0x3BFF5F6DL}},{{0x3BFF5F6DL,0x0D966D12L,(-1L),0x60BF632EL,(-1L),0x0D966D12L,0x3BFF5F6DL},{0x3BFF5F6DL,0x0D966D12L,(-1L),0x60BF632EL,(-1L),0x0D966D12L,0x3BFF5F6DL},{0x3BFF5F6DL,0x0D966D12L,(-1L),0x60BF632EL,(-1L),0x0D966D12L,0x3BFF5F6DL},{0x3BFF5F6DL,0x0D966D12L,(-1L),0x60BF632EL,(-1L),0x0D966D12L,0x3BFF5F6DL}},{{0x3BFF5F6DL,0x0D966D12L,(-1L),0x60BF632EL,(-1L),0x0D966D12L,0x3BFF5F6DL},{0x3BFF5F6DL,0x0D966D12L,(-1L),0x60BF632EL,(-1L),0x0D966D12L,0x3BFF5F6DL},{0x3BFF5F6DL,0x0D966D12L,(-1L),0x60BF632EL,(-1L),0x0D966D12L,0x3BFF5F6DL},{0x3BFF5F6DL,0x0D966D12L,(-1L),0x60BF632EL,(-1L),0x0D966D12L,0x3BFF5F6DL}}};
        uint16_t l_1289 = 65533UL;
        int64_t **l_1303 = &p_1868->g_789;
        uint8_t *l_1325 = &p_1868->g_128;
        int16_t **l_1356 = &l_1184;
        int16_t ***l_1355 = &l_1356;
        int32_t *l_1418 = &p_1868->g_22;
        int32_t *l_1419 = (void*)0;
        int32_t *l_1420[5][2] = {{&l_1129[0][4],&l_1129[0][4]},{&l_1129[0][4],&l_1129[0][4]},{&l_1129[0][4],&l_1129[0][4]},{&l_1129[0][4],&l_1129[0][4]},{&l_1129[0][4],&l_1129[0][4]}};
        int64_t l_1421 = 0L;
        int i, j, k;
        for (p_1868->g_21 = 3; (p_1868->g_21 >= 0); p_1868->g_21 -= 1)
        { /* block id: 11 */
            uint16_t l_38 = 65535UL;
            int32_t l_749 = 6L;
            uint64_t l_1133 = 0x636696D8ECB02CD5L;
            int16_t **l_1216 = (void*)0;
            int16_t **l_1219 = &l_1184;
            int32_t l_1232 = 1L;
            int32_t l_1235 = (-1L);
            int32_t l_1238 = (-1L);
            uint8_t ****l_1274[3][4] = {{&p_1868->g_436,&p_1868->g_436,&p_1868->g_436,&p_1868->g_436},{&p_1868->g_436,&p_1868->g_436,&p_1868->g_436,&p_1868->g_436},{&p_1868->g_436,&p_1868->g_436,&p_1868->g_436,&p_1868->g_436}};
            int32_t l_1282 = 0x304BD297L;
            int32_t l_1283[9] = {0x7998D445L,1L,0x7998D445L,0x7998D445L,1L,0x7998D445L,0x7998D445L,1L,0x7998D445L};
            uint32_t l_1285 = 0UL;
            int i, j;
            for (p_1868->g_22 = 0; (p_1868->g_22 <= 3); p_1868->g_22 += 1)
            { /* block id: 14 */
                uint32_t *l_34 = &p_1868->g_35;
                int8_t *l_41 = &p_1868->g_42;
                uint32_t *l_60 = &p_1868->g_61;
                int8_t **l_1124 = (void*)0;
                int8_t **l_1125 = (void*)0;
                int8_t **l_1126 = &l_747;
                int32_t *l_1131 = &l_1129[0][4];
                int32_t l_1134 = 0x039E826EL;
                int32_t l_1151 = 0x59C039B0L;
                int16_t ***l_1217 = (void*)0;
                int16_t ***l_1218[9][5][5] = {{{(void*)0,(void*)0,&l_1216,&l_1216,(void*)0},{(void*)0,(void*)0,&l_1216,&l_1216,(void*)0},{(void*)0,(void*)0,&l_1216,&l_1216,(void*)0},{(void*)0,(void*)0,&l_1216,&l_1216,(void*)0},{(void*)0,(void*)0,&l_1216,&l_1216,(void*)0}},{{(void*)0,(void*)0,&l_1216,&l_1216,(void*)0},{(void*)0,(void*)0,&l_1216,&l_1216,(void*)0},{(void*)0,(void*)0,&l_1216,&l_1216,(void*)0},{(void*)0,(void*)0,&l_1216,&l_1216,(void*)0},{(void*)0,(void*)0,&l_1216,&l_1216,(void*)0}},{{(void*)0,(void*)0,&l_1216,&l_1216,(void*)0},{(void*)0,(void*)0,&l_1216,&l_1216,(void*)0},{(void*)0,(void*)0,&l_1216,&l_1216,(void*)0},{(void*)0,(void*)0,&l_1216,&l_1216,(void*)0},{(void*)0,(void*)0,&l_1216,&l_1216,(void*)0}},{{(void*)0,(void*)0,&l_1216,&l_1216,(void*)0},{(void*)0,(void*)0,&l_1216,&l_1216,(void*)0},{(void*)0,(void*)0,&l_1216,&l_1216,(void*)0},{(void*)0,(void*)0,&l_1216,&l_1216,(void*)0},{(void*)0,(void*)0,&l_1216,&l_1216,(void*)0}},{{(void*)0,(void*)0,&l_1216,&l_1216,(void*)0},{(void*)0,(void*)0,&l_1216,&l_1216,(void*)0},{(void*)0,(void*)0,&l_1216,&l_1216,(void*)0},{(void*)0,(void*)0,&l_1216,&l_1216,(void*)0},{(void*)0,(void*)0,&l_1216,&l_1216,(void*)0}},{{(void*)0,(void*)0,&l_1216,&l_1216,(void*)0},{(void*)0,(void*)0,&l_1216,&l_1216,(void*)0},{(void*)0,(void*)0,&l_1216,&l_1216,(void*)0},{(void*)0,(void*)0,&l_1216,&l_1216,(void*)0},{(void*)0,(void*)0,&l_1216,&l_1216,(void*)0}},{{(void*)0,(void*)0,&l_1216,&l_1216,(void*)0},{(void*)0,(void*)0,&l_1216,&l_1216,(void*)0},{(void*)0,(void*)0,&l_1216,&l_1216,(void*)0},{(void*)0,(void*)0,&l_1216,&l_1216,(void*)0},{(void*)0,(void*)0,&l_1216,&l_1216,(void*)0}},{{(void*)0,(void*)0,&l_1216,&l_1216,(void*)0},{(void*)0,(void*)0,&l_1216,&l_1216,(void*)0},{(void*)0,(void*)0,&l_1216,&l_1216,(void*)0},{(void*)0,(void*)0,&l_1216,&l_1216,(void*)0},{(void*)0,(void*)0,&l_1216,&l_1216,(void*)0}},{{(void*)0,(void*)0,&l_1216,&l_1216,(void*)0},{(void*)0,(void*)0,&l_1216,&l_1216,(void*)0},{(void*)0,(void*)0,&l_1216,&l_1216,(void*)0},{(void*)0,(void*)0,&l_1216,&l_1216,(void*)0},{(void*)0,(void*)0,&l_1216,&l_1216,(void*)0}}};
                int32_t l_1234[10][4] = {{0x6341F3FFL,0x0FF6C726L,0x0FF6C726L,0x6341F3FFL},{0x6341F3FFL,0x0FF6C726L,0x0FF6C726L,0x6341F3FFL},{0x6341F3FFL,0x0FF6C726L,0x0FF6C726L,0x6341F3FFL},{0x6341F3FFL,0x0FF6C726L,0x0FF6C726L,0x6341F3FFL},{0x6341F3FFL,0x0FF6C726L,0x0FF6C726L,0x6341F3FFL},{0x6341F3FFL,0x0FF6C726L,0x0FF6C726L,0x6341F3FFL},{0x6341F3FFL,0x0FF6C726L,0x0FF6C726L,0x6341F3FFL},{0x6341F3FFL,0x0FF6C726L,0x0FF6C726L,0x6341F3FFL},{0x6341F3FFL,0x0FF6C726L,0x0FF6C726L,0x6341F3FFL},{0x6341F3FFL,0x0FF6C726L,0x0FF6C726L,0x6341F3FFL}};
                uint32_t l_1262 = 0x830C9579L;
                int32_t l_1288 = 0x22DD698CL;
                int i, j, k;
                (1 + 1);
            }
            return (*p_1868->g_360);
        }
        if ((((*p_1868->g_208) > (l_1139 |= ((p_1868->g_20 , (((safe_div_func_int32_t_s_s(((--(*l_1325)) || (((((safe_add_func_int32_t_s_s((safe_mod_func_int32_t_s_s(((p_16 && (safe_rshift_func_uint16_t_u_u((safe_div_func_uint64_t_u_u(l_1132, l_1263)), 15))) > (p_16 | ((((**l_1303) = (p_1868->g_685 , p_16)) >= ((safe_add_func_uint32_t_u_u((safe_mod_func_int8_t_s_s(((*l_747) &= 0x1DL), 0x9FL)), p_1868->g_35)) < 1UL)) & 1UL))), p_1868->g_21)), p_16)) & l_1132) ^ (-3L)) > p_1868->g_414) ^ l_1284[8][0][5])), l_1173[0][0])) != p_16) & (-1L))) , GROUP_DIVERGE(2, 1)))) | l_1263))
        { /* block id: 652 */
            return (*p_1868->g_360);
        }
        else
        { /* block id: 654 */
            uint64_t l_1364 = 1UL;
            uint8_t *l_1385 = &p_1868->g_551[1][0];
            int64_t ***l_1386 = &l_1303;
            uint32_t l_1404 = 0UL;
            int64_t *l_1407 = &p_1868->g_1408;
            uint16_t *l_1415 = &p_1868->g_414;
            uint16_t **l_1416 = (void*)0;
            uint16_t **l_1417 = &l_1415;
            for (l_1139 = 10; (l_1139 > 14); l_1139 = safe_add_func_int32_t_s_s(l_1139, 3))
            { /* block id: 657 */
                int64_t l_1346 = 0x69D66C0C6BC491F3L;
                int32_t ***l_1361[1];
                uint32_t *l_1373[4];
                int i;
                for (i = 0; i < 1; i++)
                    l_1361[i] = &p_1868->g_110;
                for (i = 0; i < 4; i++)
                    l_1373[i] = (void*)0;
                for (p_1868->g_61 = 0; (p_1868->g_61 <= 55); p_1868->g_61++)
                { /* block id: 660 */
                    int16_t **l_1354[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                    int16_t ***l_1353 = &l_1354[4];
                    uint32_t *l_1363 = &l_1152;
                    int32_t l_1366 = 0x632ED6CDL;
                    int i;
                    (*p_1868->g_110) = (*p_1868->g_1242);
                    (**p_1868->g_110) &= (p_16 , (((0x4DL != (l_1346 > (((l_1346 ^ 0xB6AB475316206A8EL) != ((p_1868->g_74 , (safe_mul_func_uint16_t_u_u((safe_sub_func_uint16_t_u_u((safe_add_func_int16_t_s_s((***p_1868->g_916), ((l_1353 = l_1353) != l_1355))), 65535UL)), p_16))) == p_16)) , l_1132))) , 8L) & p_16));
                    if (((safe_sub_func_int16_t_s_s(((*l_1184) &= ((*p_1868->g_767) == (l_1173[1][2] > 18446744073709551608UL))), (((p_1868->g_836 = (safe_add_func_uint64_t_u_u((l_1361[0] == &p_1868->g_880), (0x56C6L ^ 0L)))) , (l_1364 = ((((*p_1868->g_208) = 0x37L) != (safe_unary_minus_func_uint32_t_u(((*l_1363) = p_1868->g_17[1][7][0])))) ^ p_16))) <= (*p_1868->g_360)))) | 0x4E4C56B4L))
                    { /* block id: 669 */
                        int32_t l_1365[8][6] = {{0x28C24738L,0x1761BB4EL,(-10L),1L,(-10L),0x1761BB4EL},{0x28C24738L,0x1761BB4EL,(-10L),1L,(-10L),0x1761BB4EL},{0x28C24738L,0x1761BB4EL,(-10L),1L,(-10L),0x1761BB4EL},{0x28C24738L,0x1761BB4EL,(-10L),1L,(-10L),0x1761BB4EL},{0x28C24738L,0x1761BB4EL,(-10L),1L,(-10L),0x1761BB4EL},{0x28C24738L,0x1761BB4EL,(-10L),1L,(-10L),0x1761BB4EL},{0x28C24738L,0x1761BB4EL,(-10L),1L,(-10L),0x1761BB4EL},{0x28C24738L,0x1761BB4EL,(-10L),1L,(-10L),0x1761BB4EL}};
                        int i, j;
                        l_1365[6][0] ^= (*p_1868->g_189);
                    }
                    else
                    { /* block id: 671 */
                        return (*p_1868->g_360);
                    }
                    l_1366 = l_1231;
                }
                if (((safe_sub_func_int8_t_s_s((safe_add_func_int8_t_s_s(((*p_1868->g_208) | ((void*)0 != (*p_1868->g_1292))), ((void*)0 != &l_1127))), (*p_1868->g_208))) > (((l_1284[6][0][6] = ((safe_mul_func_uint8_t_u_u(FAKE_DIVERGE(p_1868->global_2_offset, get_global_id(2), 10), ((*l_1127) ^= l_1284[6][0][6]))) >= (~p_16))) , ((safe_mod_func_int16_t_s_s(((***l_1355) = p_1868->g_514), 0x2A93L)) | (*p_1868->g_789))) > (*p_1868->g_360))))
                { /* block id: 679 */
                    uint64_t l_1376 = 0x08723838EDFBC369L;
                    l_1376++;
                }
                else
                { /* block id: 681 */
                    for (l_1152 = 0; (l_1152 <= 3); l_1152 += 1)
                    { /* block id: 684 */
                        (**p_1868->g_110) &= p_16;
                        (**p_1868->g_110) = 4L;
                    }
                }
                for (p_1868->g_63 = (-3); (p_1868->g_63 > (-13)); p_1868->g_63 = safe_sub_func_int16_t_s_s(p_1868->g_63, 9))
                { /* block id: 691 */
                    int16_t l_1393 = 0x303EL;
                    for (p_1868->g_35 = (-28); (p_1868->g_35 == 34); ++p_1868->g_35)
                    { /* block id: 694 */
                        uint64_t l_1394[9][8] = {{0xD2496F37CE847FA3L,0xD2496F37CE847FA3L,18446744073709551615UL,0x58EE14E93C4A70F3L,0xDDDDFDF2B0510C0DL,0x1B310290F9F23B23L,0x34C94E020C4FE157L,0x8AC30720D2CBA672L},{0xD2496F37CE847FA3L,0xD2496F37CE847FA3L,18446744073709551615UL,0x58EE14E93C4A70F3L,0xDDDDFDF2B0510C0DL,0x1B310290F9F23B23L,0x34C94E020C4FE157L,0x8AC30720D2CBA672L},{0xD2496F37CE847FA3L,0xD2496F37CE847FA3L,18446744073709551615UL,0x58EE14E93C4A70F3L,0xDDDDFDF2B0510C0DL,0x1B310290F9F23B23L,0x34C94E020C4FE157L,0x8AC30720D2CBA672L},{0xD2496F37CE847FA3L,0xD2496F37CE847FA3L,18446744073709551615UL,0x58EE14E93C4A70F3L,0xDDDDFDF2B0510C0DL,0x1B310290F9F23B23L,0x34C94E020C4FE157L,0x8AC30720D2CBA672L},{0xD2496F37CE847FA3L,0xD2496F37CE847FA3L,18446744073709551615UL,0x58EE14E93C4A70F3L,0xDDDDFDF2B0510C0DL,0x1B310290F9F23B23L,0x34C94E020C4FE157L,0x8AC30720D2CBA672L},{0xD2496F37CE847FA3L,0xD2496F37CE847FA3L,18446744073709551615UL,0x58EE14E93C4A70F3L,0xDDDDFDF2B0510C0DL,0x1B310290F9F23B23L,0x34C94E020C4FE157L,0x8AC30720D2CBA672L},{0xD2496F37CE847FA3L,0xD2496F37CE847FA3L,18446744073709551615UL,0x58EE14E93C4A70F3L,0xDDDDFDF2B0510C0DL,0x1B310290F9F23B23L,0x34C94E020C4FE157L,0x8AC30720D2CBA672L},{0xD2496F37CE847FA3L,0xD2496F37CE847FA3L,18446744073709551615UL,0x58EE14E93C4A70F3L,0xDDDDFDF2B0510C0DL,0x1B310290F9F23B23L,0x34C94E020C4FE157L,0x8AC30720D2CBA672L},{0xD2496F37CE847FA3L,0xD2496F37CE847FA3L,18446744073709551615UL,0x58EE14E93C4A70F3L,0xDDDDFDF2B0510C0DL,0x1B310290F9F23B23L,0x34C94E020C4FE157L,0x8AC30720D2CBA672L}};
                        int i, j;
                        l_1394[1][6] &= (safe_mul_func_int8_t_s_s(((*l_1127) |= (&p_1868->g_766[8][6][1] != (((void*)0 == l_1385) , l_1386))), ((safe_rshift_func_int8_t_s_u(((((safe_add_func_uint8_t_u_u((((safe_sub_func_int64_t_s_s(p_16, (p_16 ^ 0x1AL))) <= p_16) , (((((l_1364 , p_1868->g_81[0][1][1]) , (**p_1868->g_916)) == (void*)0) < p_1868->g_424) != l_1364)), l_1393)) == 0L) , 0x35398B07L) || p_16), 5)) , p_16)));
                    }
                    if (p_16)
                        continue;
                }
                l_1395 = &l_1385;
            }
            for (p_1868->g_424 = 0; (p_1868->g_424 == 19); ++p_1868->g_424)
            { /* block id: 704 */
                for (l_1364 = (-25); (l_1364 != 59); l_1364++)
                { /* block id: 707 */
                    int8_t l_1401 = (-5L);
                    if (l_1401)
                        break;
                }
            }
            (**p_1868->g_110) = (((safe_lshift_func_uint8_t_u_u(((*l_1385) = l_1404), 2)) , p_16) && (p_1868->g_514 , l_1132));
            (**p_1868->g_110) &= ((((safe_rshift_func_int8_t_s_s((l_1385 != (void*)0), 1)) != ((((*l_1407) = 0x333B6F1828A598E5L) , (p_16 <= p_16)) != (safe_lshift_func_int16_t_s_u((safe_rshift_func_int16_t_s_u(0x66EAL, 6)), 8)))) || (safe_mul_func_int8_t_s_s((((*l_1417) = (l_1277 = l_1415)) == &p_1868->g_602), p_16))) ^ p_16);
        }
        l_1423[1]++;
    }
    return (*p_1868->g_360);
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint8_t  func_27(uint32_t  p_28, uint64_t  p_29, int16_t  p_30, uint32_t  p_31, struct S0 * p_1868)
{ /* block id: 566 */
    uint32_t l_1130 = 0UL;
    return l_1130;
}


/* ------------------------------------------ */
/* 
 * reads : p_1868->g_604 p_1868->g_63 p_1868->g_208 p_1868->g_178 p_1868->g_17 p_1868->g_265 p_1868->g_836 p_1868->g_74 p_1868->g_602 p_1868->g_414 p_1868->g_435 p_1868->g_436 p_1868->g_748 p_1868->g_21 p_1868->g_853 p_1868->g_360 p_1868->g_140 p_1868->g_144 p_1868->g_789 p_1868->g_854 p_1868->g_111 p_1868->g_110 p_1868->g_880 p_1868->g_73 p_1868->g_438 p_1868->g_551 p_1868->g_767 p_1868->g_916 p_1868->g_917 p_1868->g_918 p_1868->g_507 p_1868->g_61 p_1868->g_141 p_1868->g_514 p_1868->g_128 p_1868->g_189 p_1868->g_1097 p_1868->g_881
 * writes: p_1868->g_604 p_1868->g_602 p_1868->g_63 p_1868->g_140 p_1868->g_265 p_1868->g_836 p_1868->g_111 p_1868->g_414 p_1868->g_854 p_1868->g_436 p_1868->g_438 p_1868->g_881 p_1868->g_748 p_1868->g_110 p_1868->g_664 p_1868->g_128 p_1868->g_912 p_1868->g_61 p_1868->g_141 p_1868->g_514 p_1868->g_1097
 */
int8_t * func_45(uint32_t * p_46, int8_t * p_47, uint32_t * p_48, int8_t  p_49, int64_t  p_50, struct S0 * p_1868)
{ /* block id: 361 */
    int32_t *l_757 = &p_1868->g_63;
    int16_t l_810[7][7][5] = {{{(-1L),0L,0L,(-1L),(-8L)},{(-1L),0L,0L,(-1L),(-8L)},{(-1L),0L,0L,(-1L),(-8L)},{(-1L),0L,0L,(-1L),(-8L)},{(-1L),0L,0L,(-1L),(-8L)},{(-1L),0L,0L,(-1L),(-8L)},{(-1L),0L,0L,(-1L),(-8L)}},{{(-1L),0L,0L,(-1L),(-8L)},{(-1L),0L,0L,(-1L),(-8L)},{(-1L),0L,0L,(-1L),(-8L)},{(-1L),0L,0L,(-1L),(-8L)},{(-1L),0L,0L,(-1L),(-8L)},{(-1L),0L,0L,(-1L),(-8L)},{(-1L),0L,0L,(-1L),(-8L)}},{{(-1L),0L,0L,(-1L),(-8L)},{(-1L),0L,0L,(-1L),(-8L)},{(-1L),0L,0L,(-1L),(-8L)},{(-1L),0L,0L,(-1L),(-8L)},{(-1L),0L,0L,(-1L),(-8L)},{(-1L),0L,0L,(-1L),(-8L)},{(-1L),0L,0L,(-1L),(-8L)}},{{(-1L),0L,0L,(-1L),(-8L)},{(-1L),0L,0L,(-1L),(-8L)},{(-1L),0L,0L,(-1L),(-8L)},{(-1L),0L,0L,(-1L),(-8L)},{(-1L),0L,0L,(-1L),(-8L)},{(-1L),0L,0L,(-1L),(-8L)},{(-1L),0L,0L,(-1L),(-8L)}},{{(-1L),0L,0L,(-1L),(-8L)},{(-1L),0L,0L,(-1L),(-8L)},{(-1L),0L,0L,(-1L),(-8L)},{(-1L),0L,0L,(-1L),(-8L)},{(-1L),0L,0L,(-1L),(-8L)},{(-1L),0L,0L,(-1L),(-8L)},{(-1L),0L,0L,(-1L),(-8L)}},{{(-1L),0L,0L,(-1L),(-8L)},{(-1L),0L,0L,(-1L),(-8L)},{(-1L),0L,0L,(-1L),(-8L)},{(-1L),0L,0L,(-1L),(-8L)},{(-1L),0L,0L,(-1L),(-8L)},{(-1L),0L,0L,(-1L),(-8L)},{(-1L),0L,0L,(-1L),(-8L)}},{{(-1L),0L,0L,(-1L),(-8L)},{(-1L),0L,0L,(-1L),(-8L)},{(-1L),0L,0L,(-1L),(-8L)},{(-1L),0L,0L,(-1L),(-8L)},{(-1L),0L,0L,(-1L),(-8L)},{(-1L),0L,0L,(-1L),(-8L)},{(-1L),0L,0L,(-1L),(-8L)}}};
    int64_t **l_814 = &p_1868->g_789;
    int64_t l_841 = 0L;
    int32_t l_859 = 0x279D3E83L;
    int8_t *l_879 = (void*)0;
    uint8_t ****l_911[7] = {&p_1868->g_436,&p_1868->g_436,&p_1868->g_436,&p_1868->g_436,&p_1868->g_436,&p_1868->g_436,&p_1868->g_436};
    uint8_t *****l_910 = &l_911[5];
    int32_t l_932[8];
    int32_t l_941 = 0L;
    uint32_t l_1020 = 0x1842300CL;
    int16_t l_1076 = 0x67BEL;
    int8_t l_1077 = (-3L);
    uint16_t *l_1121[9][1];
    int32_t l_1122 = 0x5B7A9CFAL;
    int i, j, k;
    for (i = 0; i < 8; i++)
        l_932[i] = 0x18B286B0L;
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 1; j++)
            l_1121[i][j] = &p_1868->g_604;
    }
    if (p_50)
    { /* block id: 362 */
        int16_t **l_775 = &p_1868->g_491;
        int64_t *l_788 = &p_1868->g_438;
        uint8_t ****l_794 = &p_1868->g_436;
        int32_t l_825 = 1L;
        for (p_1868->g_604 = 27; (p_1868->g_604 != 56); ++p_1868->g_604)
        { /* block id: 365 */
            uint16_t l_770 = 0xD620L;
            uint8_t ***l_778 = &p_1868->g_241;
            int32_t l_800 = 1L;
            int32_t l_838 = (-1L);
            int32_t l_852[6] = {1L,1L,1L,1L,1L,1L};
            int8_t **l_864[7] = {&p_1868->g_208,&p_1868->g_208,&p_1868->g_208,&p_1868->g_208,&p_1868->g_208,&p_1868->g_208,&p_1868->g_208};
            int64_t l_878 = 0x6EAD1F944D1F2AD7L;
            int i;
            for (p_49 = 0; (p_49 <= 6); p_49 += 1)
            { /* block id: 368 */
                int8_t **l_752 = (void*)0;
                uint8_t ****l_795 = &p_1868->g_436;
                int32_t l_803 = 0x6EC5BFD7L;
                int64_t **l_816 = &l_788;
                int64_t ***l_815 = &l_816;
                for (p_1868->g_602 = 1; (p_1868->g_602 <= 4); p_1868->g_602 += 1)
                { /* block id: 371 */
                    int64_t *l_753 = &p_1868->g_438;
                    int64_t **l_769 = (void*)0;
                    int32_t l_771 = (-4L);
                    uint8_t *****l_808 = (void*)0;
                    int32_t l_809 = 0x39B3D627L;
                    (1 + 1);
                }
                (*l_757) = (p_49 | (safe_sub_func_uint32_t_u_u(7UL, (((p_46 = &p_1868->g_17[1][7][0]) == p_48) < (l_814 != ((*l_815) = &l_788))))));
                for (p_1868->g_602 = 0; (p_1868->g_602 <= 4); p_1868->g_602 += 1)
                { /* block id: 402 */
                    int16_t *l_830[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                    int32_t l_837 = 1L;
                    uint16_t *l_842[3][6][9] = {{{&p_1868->g_414,&p_1868->g_604,&p_1868->g_414,&l_770,&l_770,&p_1868->g_604,&p_1868->g_414,&p_1868->g_414,&p_1868->g_604},{&p_1868->g_414,&p_1868->g_604,&p_1868->g_414,&l_770,&l_770,&p_1868->g_604,&p_1868->g_414,&p_1868->g_414,&p_1868->g_604},{&p_1868->g_414,&p_1868->g_604,&p_1868->g_414,&l_770,&l_770,&p_1868->g_604,&p_1868->g_414,&p_1868->g_414,&p_1868->g_604},{&p_1868->g_414,&p_1868->g_604,&p_1868->g_414,&l_770,&l_770,&p_1868->g_604,&p_1868->g_414,&p_1868->g_414,&p_1868->g_604},{&p_1868->g_414,&p_1868->g_604,&p_1868->g_414,&l_770,&l_770,&p_1868->g_604,&p_1868->g_414,&p_1868->g_414,&p_1868->g_604},{&p_1868->g_414,&p_1868->g_604,&p_1868->g_414,&l_770,&l_770,&p_1868->g_604,&p_1868->g_414,&p_1868->g_414,&p_1868->g_604}},{{&p_1868->g_414,&p_1868->g_604,&p_1868->g_414,&l_770,&l_770,&p_1868->g_604,&p_1868->g_414,&p_1868->g_414,&p_1868->g_604},{&p_1868->g_414,&p_1868->g_604,&p_1868->g_414,&l_770,&l_770,&p_1868->g_604,&p_1868->g_414,&p_1868->g_414,&p_1868->g_604},{&p_1868->g_414,&p_1868->g_604,&p_1868->g_414,&l_770,&l_770,&p_1868->g_604,&p_1868->g_414,&p_1868->g_414,&p_1868->g_604},{&p_1868->g_414,&p_1868->g_604,&p_1868->g_414,&l_770,&l_770,&p_1868->g_604,&p_1868->g_414,&p_1868->g_414,&p_1868->g_604},{&p_1868->g_414,&p_1868->g_604,&p_1868->g_414,&l_770,&l_770,&p_1868->g_604,&p_1868->g_414,&p_1868->g_414,&p_1868->g_604},{&p_1868->g_414,&p_1868->g_604,&p_1868->g_414,&l_770,&l_770,&p_1868->g_604,&p_1868->g_414,&p_1868->g_414,&p_1868->g_604}},{{&p_1868->g_414,&p_1868->g_604,&p_1868->g_414,&l_770,&l_770,&p_1868->g_604,&p_1868->g_414,&p_1868->g_414,&p_1868->g_604},{&p_1868->g_414,&p_1868->g_604,&p_1868->g_414,&l_770,&l_770,&p_1868->g_604,&p_1868->g_414,&p_1868->g_414,&p_1868->g_604},{&p_1868->g_414,&p_1868->g_604,&p_1868->g_414,&l_770,&l_770,&p_1868->g_604,&p_1868->g_414,&p_1868->g_414,&p_1868->g_604},{&p_1868->g_414,&p_1868->g_604,&p_1868->g_414,&l_770,&l_770,&p_1868->g_604,&p_1868->g_414,&p_1868->g_414,&p_1868->g_604},{&p_1868->g_414,&p_1868->g_604,&p_1868->g_414,&l_770,&l_770,&p_1868->g_604,&p_1868->g_414,&p_1868->g_414,&p_1868->g_604},{&p_1868->g_414,&p_1868->g_604,&p_1868->g_414,&l_770,&l_770,&p_1868->g_604,&p_1868->g_414,&p_1868->g_414,&p_1868->g_604}}};
                    uint32_t l_845 = 0x6055D49AL;
                    uint8_t ***l_855 = &p_1868->g_241;
                    int8_t **l_863[7][3][1];
                    int i, j, k;
                    for (i = 0; i < 7; i++)
                    {
                        for (j = 0; j < 3; j++)
                        {
                            for (k = 0; k < 1; k++)
                                l_863[i][j][k] = &p_1868->g_208;
                        }
                    }
                    for (p_1868->g_140 = 0; (p_1868->g_140 <= 4); p_1868->g_140 += 1)
                    { /* block id: 405 */
                        uint64_t *l_835[2][6] = {{&p_1868->g_265[5][4][2],(void*)0,(void*)0,(void*)0,&p_1868->g_265[5][4][2],&p_1868->g_265[5][4][2]},{&p_1868->g_265[5][4][2],(void*)0,(void*)0,(void*)0,&p_1868->g_265[5][4][2],&p_1868->g_265[5][4][2]}};
                        int i, j;
                        if ((*l_757))
                            break;
                        l_838 &= ((((safe_rshift_func_int8_t_s_u((safe_rshift_func_int16_t_s_u(5L, (safe_mul_func_int8_t_s_s((safe_sub_func_int64_t_s_s(l_825, (l_837 = (((*p_1868->g_208) > (safe_add_func_uint64_t_u_u(((safe_mod_func_int8_t_s_s(l_800, l_800)) == ((p_1868->g_836 &= (p_1868->g_265[5][4][2] |= ((p_1868->g_17[1][6][6] , (l_830[0] != &p_1868->g_141)) , (+((safe_rshift_func_int16_t_s_s((safe_div_func_uint8_t_u_u(((*p_46) && l_800), (*p_1868->g_208))), p_50)) & (*p_46)))))) == 0x92C5B494DAFE08E8L)), p_49))) , 0x589756E330F768EBL)))), 0x19L)))), p_50)) , 0x55C9L) >= p_1868->g_74) != p_50);
                        p_1868->g_111[p_1868->g_602] = p_46;
                        if (p_50)
                            continue;
                    }
                    (*l_757) = 0x25DF32EEL;
                    (*p_1868->g_853) = ((*l_757) = ((safe_lshift_func_uint8_t_u_s((((l_841 && ((++p_1868->g_414) <= l_845)) & (((safe_add_func_uint32_t_u_u(4UL, l_803)) == (l_825 = p_1868->g_604)) & (safe_lshift_func_uint16_t_u_s(((safe_add_func_uint16_t_u_u(((*p_1868->g_435) == (*p_1868->g_435)), p_49)) , 0xBBD9L), l_803)))) == (*p_47)), l_852[2])) ^ p_1868->g_21));
                    for (p_1868->g_854 = 4; (p_1868->g_854 >= 1); p_1868->g_854 -= 1)
                    { /* block id: 421 */
                        int32_t *l_856 = &l_803;
                        int32_t *l_857 = &l_838;
                        int32_t *l_858[7] = {&l_803,&l_803,&l_803,&l_803,&l_803,&l_803,&l_803};
                        uint64_t l_860 = 0UL;
                        uint8_t ****l_867 = &l_855;
                        int i;
                        l_825 |= (l_855 != (*l_794));
                        l_860--;
                        l_864[6] = l_863[1][2][0];
                        (*l_757) = (((((safe_mul_func_uint16_t_u_u((((*l_794) = (void*)0) == ((*l_867) = &p_1868->g_241)), 0xA9E5L)) < (safe_add_func_int8_t_s_s((safe_lshift_func_uint16_t_u_s(((1UL != ((*p_1868->g_360) < 0x3F7B2B286FB82C16L)) <= (safe_div_func_int8_t_s_s((((**l_814) = (safe_div_func_int8_t_s_s((p_49 ^ (p_50 == (((((safe_mul_func_uint16_t_u_u((p_1868->g_144[0][3] && GROUP_DIVERGE(2, 1)), p_50)) , &p_47) != l_864[4]) , FAKE_DIVERGE(p_1868->group_0_offset, get_group_id(0), 10)) <= FAKE_DIVERGE(p_1868->global_2_offset, get_global_id(2), 10)))), (-1L)))) | GROUP_DIVERGE(2, 1)), GROUP_DIVERGE(2, 1)))), p_50)), (*l_757)))) , p_1868->g_111[p_1868->g_854]) != &p_1868->g_17[0][1][1]) < (*p_47));
                    }
                }
                (*p_1868->g_110) = &l_859;
            }
            if (l_878)
                continue;
            return l_879;
        }
        (*p_1868->g_880) = ((*p_1868->g_110) = (*p_1868->g_110));
        return &p_1868->g_178;
    }
    else
    { /* block id: 439 */
        uint32_t l_895 = 0xA05A6A5FL;
        int32_t l_896 = 0x0A435643L;
        int32_t l_897 = (-8L);
        int64_t **l_919 = &p_1868->g_767;
        int32_t l_938 = 2L;
        int32_t l_939 = 9L;
        int32_t l_940 = 0x6B34B876L;
        int32_t l_942 = 0x48457BD9L;
        int32_t l_943[4] = {0x39F37D0AL,0x39F37D0AL,0x39F37D0AL,0x39F37D0AL};
        int32_t ***l_968 = (void*)0;
        int16_t *l_974 = &p_1868->g_298;
        uint8_t *****l_991 = &p_1868->g_913;
        int8_t *l_1005 = &p_1868->g_42;
        int i;
        (*p_1868->g_110) = &l_859;
        (*l_757) = 0x0D9ED8D8L;
        for (p_1868->g_748 = 0; (p_1868->g_748 == 18); p_1868->g_748 = safe_add_func_int16_t_s_s(p_1868->g_748, 1))
        { /* block id: 444 */
            int32_t ***l_888 = &p_1868->g_110;
            uint8_t *l_890 = &p_1868->g_128;
            int32_t l_898 = 0L;
            if ((safe_add_func_int64_t_s_s((safe_lshift_func_uint16_t_u_s(((((p_1868->g_664 = (((*l_888) = &p_1868->g_881) != (void*)0)) , ((((l_897 &= (l_896 = ((((p_1868->g_73[1] , (*p_47)) && ((+((((((safe_unary_minus_func_uint64_t_u((*p_1868->g_360))) | (0xCCL > ((*l_890) = 1UL))) ^ (safe_rshift_func_int8_t_s_u((safe_add_func_int64_t_s_s(p_50, (*p_1868->g_360))), 2))) | l_895) , p_1868->g_602) && p_1868->g_836)) != 0x4F8B82A6L)) != p_1868->g_438) & 0xFAE3L))) == l_898) & (*l_757)) & p_1868->g_551[1][0])) & (*p_1868->g_767)) != (-5L)), p_49)), p_49)))
            { /* block id: 450 */
                uint8_t l_903[10] = {1UL,0x62L,0xE2L,0x62L,1UL,1UL,0x62L,0xE2L,0x62L,1UL};
                uint16_t *l_908 = (void*)0;
                uint16_t *l_909[6] = {&p_1868->g_604,&p_1868->g_604,&p_1868->g_604,&p_1868->g_604,&p_1868->g_604,&p_1868->g_604};
                int32_t *l_920 = (void*)0;
                int32_t *l_921 = &p_1868->g_854;
                int i;
                (*l_921) |= ((FAKE_DIVERGE(p_1868->local_1_offset, get_local_id(1), 10) , (safe_mod_func_uint32_t_u_u(((((safe_mod_func_uint16_t_u_u((l_898 ^= (l_903[1] ^ ((safe_add_func_int8_t_s_s((safe_rshift_func_int8_t_s_s(((((p_49 <= (p_1868->g_414 = 0x2A27L)) != (0x7096L == ((p_1868->g_912 = l_910) == &p_1868->g_913))) == (safe_div_func_int32_t_s_s((p_1868->g_916 != (((((l_919 != (void*)0) < (*l_757)) >= p_50) > p_1868->g_748) , (void*)0)), (-8L)))) > 0x2039L), 4)), 0x45L)) ^ (*l_757)))), 0x5CC4L)) , p_1868->g_144[0][1]) || (**p_1868->g_917)) > p_1868->g_21), 4294967295UL))) , p_50);
            }
            else
            { /* block id: 455 */
                (*l_757) = 0L;
            }
        }
        if ((*p_1868->g_853))
        { /* block id: 459 */
            int32_t l_931 = (-6L);
            int32_t l_934 = 0x78C5B76CL;
            int32_t l_935 = 0x29FBFB7CL;
            int32_t l_936 = 0x4C39FE1EL;
            int32_t l_937[10][2][1] = {{{0L},{0L}},{{0L},{0L}},{{0L},{0L}},{{0L},{0L}},{{0L},{0L}},{{0L},{0L}},{{0L},{0L}},{{0L},{0L}},{{0L},{0L}},{{0L},{0L}}};
            int i, j, k;
            for (p_1868->g_854 = (-23); (p_1868->g_854 == 1); p_1868->g_854 = safe_add_func_uint64_t_u_u(p_1868->g_854, 8))
            { /* block id: 462 */
                uint32_t l_927 = 0UL;
                int32_t l_930[9][3][7] = {{{0x24E17B6AL,0x7C27376CL,0x7C27376CL,0x24E17B6AL,0x3AD4624EL,(-8L),0x392F3BFDL},{0x24E17B6AL,0x7C27376CL,0x7C27376CL,0x24E17B6AL,0x3AD4624EL,(-8L),0x392F3BFDL},{0x24E17B6AL,0x7C27376CL,0x7C27376CL,0x24E17B6AL,0x3AD4624EL,(-8L),0x392F3BFDL}},{{0x24E17B6AL,0x7C27376CL,0x7C27376CL,0x24E17B6AL,0x3AD4624EL,(-8L),0x392F3BFDL},{0x24E17B6AL,0x7C27376CL,0x7C27376CL,0x24E17B6AL,0x3AD4624EL,(-8L),0x392F3BFDL},{0x24E17B6AL,0x7C27376CL,0x7C27376CL,0x24E17B6AL,0x3AD4624EL,(-8L),0x392F3BFDL}},{{0x24E17B6AL,0x7C27376CL,0x7C27376CL,0x24E17B6AL,0x3AD4624EL,(-8L),0x392F3BFDL},{0x24E17B6AL,0x7C27376CL,0x7C27376CL,0x24E17B6AL,0x3AD4624EL,(-8L),0x392F3BFDL},{0x24E17B6AL,0x7C27376CL,0x7C27376CL,0x24E17B6AL,0x3AD4624EL,(-8L),0x392F3BFDL}},{{0x24E17B6AL,0x7C27376CL,0x7C27376CL,0x24E17B6AL,0x3AD4624EL,(-8L),0x392F3BFDL},{0x24E17B6AL,0x7C27376CL,0x7C27376CL,0x24E17B6AL,0x3AD4624EL,(-8L),0x392F3BFDL},{0x24E17B6AL,0x7C27376CL,0x7C27376CL,0x24E17B6AL,0x3AD4624EL,(-8L),0x392F3BFDL}},{{0x24E17B6AL,0x7C27376CL,0x7C27376CL,0x24E17B6AL,0x3AD4624EL,(-8L),0x392F3BFDL},{0x24E17B6AL,0x7C27376CL,0x7C27376CL,0x24E17B6AL,0x3AD4624EL,(-8L),0x392F3BFDL},{0x24E17B6AL,0x7C27376CL,0x7C27376CL,0x24E17B6AL,0x3AD4624EL,(-8L),0x392F3BFDL}},{{0x24E17B6AL,0x7C27376CL,0x7C27376CL,0x24E17B6AL,0x3AD4624EL,(-8L),0x392F3BFDL},{0x24E17B6AL,0x7C27376CL,0x7C27376CL,0x24E17B6AL,0x3AD4624EL,(-8L),0x392F3BFDL},{0x24E17B6AL,0x7C27376CL,0x7C27376CL,0x24E17B6AL,0x3AD4624EL,(-8L),0x392F3BFDL}},{{0x24E17B6AL,0x7C27376CL,0x7C27376CL,0x24E17B6AL,0x3AD4624EL,(-8L),0x392F3BFDL},{0x24E17B6AL,0x7C27376CL,0x7C27376CL,0x24E17B6AL,0x3AD4624EL,(-8L),0x392F3BFDL},{0x24E17B6AL,0x7C27376CL,0x7C27376CL,0x24E17B6AL,0x3AD4624EL,(-8L),0x392F3BFDL}},{{0x24E17B6AL,0x7C27376CL,0x7C27376CL,0x24E17B6AL,0x3AD4624EL,(-8L),0x392F3BFDL},{0x24E17B6AL,0x7C27376CL,0x7C27376CL,0x24E17B6AL,0x3AD4624EL,(-8L),0x392F3BFDL},{0x24E17B6AL,0x7C27376CL,0x7C27376CL,0x24E17B6AL,0x3AD4624EL,(-8L),0x392F3BFDL}},{{0x24E17B6AL,0x7C27376CL,0x7C27376CL,0x24E17B6AL,0x3AD4624EL,(-8L),0x392F3BFDL},{0x24E17B6AL,0x7C27376CL,0x7C27376CL,0x24E17B6AL,0x3AD4624EL,(-8L),0x392F3BFDL},{0x24E17B6AL,0x7C27376CL,0x7C27376CL,0x24E17B6AL,0x3AD4624EL,(-8L),0x392F3BFDL}}};
                int16_t l_933 = 0L;
                int i, j, k;
                for (p_1868->g_61 = 0; (p_1868->g_61 <= 6); p_1868->g_61 += 1)
                { /* block id: 465 */
                    int32_t *l_924 = (void*)0;
                    int32_t *l_925 = &l_896;
                    int32_t *l_926[1][7] = {{&p_1868->g_63,&p_1868->g_63,&p_1868->g_63,&p_1868->g_63,&p_1868->g_63,&p_1868->g_63,&p_1868->g_63}};
                    uint32_t l_944 = 0x5B630CB7L;
                    int8_t *l_947 = &p_1868->g_748;
                    int i, j;
                    ++l_927;
                    l_944--;
                    return l_947;
                }
                for (p_1868->g_141 = 24; (p_1868->g_141 < 19); p_1868->g_141--)
                { /* block id: 472 */
                    uint8_t l_955 = 0x79L;
                    int8_t *l_969 = &p_1868->g_178;
                    for (l_940 = (-17); (l_940 < (-29)); l_940 = safe_sub_func_uint8_t_u_u(l_940, 2))
                    { /* block id: 475 */
                        return &p_1868->g_178;
                    }
                    (*l_757) = (FAKE_DIVERGE(p_1868->group_2_offset, get_group_id(2), 10) ^ ((safe_unary_minus_func_int64_t_s((safe_div_func_uint16_t_u_u((*l_757), ((((l_934 = ((((p_49 >= l_955) | ((safe_mod_func_uint16_t_u_u(l_927, l_935)) || p_49)) <= ((safe_rshift_func_int16_t_s_u((safe_sub_func_int64_t_s_s(l_955, (safe_lshift_func_int8_t_s_s(((safe_lshift_func_int16_t_s_s(l_930[5][2][5], (((safe_lshift_func_int16_t_s_s(l_930[4][1][3], (**p_1868->g_917))) , (void*)0) == l_968))) || (-7L)), (*p_47))))), p_50)) <= 1UL)) < (*p_1868->g_767))) ^ p_49) >= p_50) || FAKE_DIVERGE(p_1868->group_2_offset, get_group_id(2), 10)))))) > p_50));
                    return l_969;
                }
                if (p_49)
                    continue;
            }
            (*p_1868->g_110) = p_46;
            return &p_1868->g_178;
        }
        else
        { /* block id: 486 */
            uint16_t *l_970 = (void*)0;
            uint16_t *l_971[8] = {&p_1868->g_604,&p_1868->g_414,&p_1868->g_604,&p_1868->g_604,&p_1868->g_414,&p_1868->g_604,&p_1868->g_604,&p_1868->g_414};
            int32_t l_977 = (-2L);
            int32_t *l_980 = &l_941;
            int i;
            (*l_980) ^= ((*l_757) = (((((0x3B693B5AL <= p_50) >= (*p_1868->g_360)) , (p_1868->g_73[2] <= ((p_1868->g_414++) || ((p_1868->g_514 , (*p_1868->g_917)) == l_974)))) , ((safe_div_func_int8_t_s_s((l_977 == (safe_mod_func_int64_t_s_s(p_50, 0x7A226E5197BCCD7AL))), (*p_1868->g_208))) == l_977)) & p_49));
            (*l_980) ^= (safe_lshift_func_uint16_t_u_u(1UL, 11));
            for (p_1868->g_836 = 0; (p_1868->g_836 <= 2); p_1868->g_836 += 1)
            { /* block id: 493 */
                int32_t l_992 = 0x3C2F5208L;
                int64_t *l_997 = &l_841;
                uint32_t *l_998 = (void*)0;
                uint32_t *l_999 = (void*)0;
                uint32_t *l_1000[10][10] = {{(void*)0,&p_1868->g_675[9],&p_1868->g_17[2][3][2],(void*)0,(void*)0,(void*)0,(void*)0,&p_1868->g_17[1][3][7],(void*)0,(void*)0},{(void*)0,&p_1868->g_675[9],&p_1868->g_17[2][3][2],(void*)0,(void*)0,(void*)0,(void*)0,&p_1868->g_17[1][3][7],(void*)0,(void*)0},{(void*)0,&p_1868->g_675[9],&p_1868->g_17[2][3][2],(void*)0,(void*)0,(void*)0,(void*)0,&p_1868->g_17[1][3][7],(void*)0,(void*)0},{(void*)0,&p_1868->g_675[9],&p_1868->g_17[2][3][2],(void*)0,(void*)0,(void*)0,(void*)0,&p_1868->g_17[1][3][7],(void*)0,(void*)0},{(void*)0,&p_1868->g_675[9],&p_1868->g_17[2][3][2],(void*)0,(void*)0,(void*)0,(void*)0,&p_1868->g_17[1][3][7],(void*)0,(void*)0},{(void*)0,&p_1868->g_675[9],&p_1868->g_17[2][3][2],(void*)0,(void*)0,(void*)0,(void*)0,&p_1868->g_17[1][3][7],(void*)0,(void*)0},{(void*)0,&p_1868->g_675[9],&p_1868->g_17[2][3][2],(void*)0,(void*)0,(void*)0,(void*)0,&p_1868->g_17[1][3][7],(void*)0,(void*)0},{(void*)0,&p_1868->g_675[9],&p_1868->g_17[2][3][2],(void*)0,(void*)0,(void*)0,(void*)0,&p_1868->g_17[1][3][7],(void*)0,(void*)0},{(void*)0,&p_1868->g_675[9],&p_1868->g_17[2][3][2],(void*)0,(void*)0,(void*)0,(void*)0,&p_1868->g_17[1][3][7],(void*)0,(void*)0},{(void*)0,&p_1868->g_675[9],&p_1868->g_17[2][3][2],(void*)0,(void*)0,(void*)0,(void*)0,&p_1868->g_17[1][3][7],(void*)0,(void*)0}};
                int32_t l_1001[6] = {0x07AC4D89L,0x7BB94881L,0x07AC4D89L,0x07AC4D89L,0x7BB94881L,0x07AC4D89L};
                int i, j;
                (*l_980) = (safe_lshift_func_int8_t_s_s((safe_div_func_uint32_t_u_u((*p_48), (safe_mod_func_uint8_t_u_u(((p_50 && (p_50 , (((*p_1868->g_789) && (safe_lshift_func_uint16_t_u_u(FAKE_DIVERGE(p_1868->local_1_offset, get_local_id(1), 10), p_50))) | (l_1001[3] |= ((((p_49 || (l_991 != &p_1868->g_435)) < (!((((p_1868->g_128--) <= ((((*l_757) = (safe_mod_func_int8_t_s_s(((((((*l_997) = (((l_992 , (*p_47)) && GROUP_DIVERGE(1, 1)) , 0x65FA36AD9725474BL)) || (*p_1868->g_767)) ^ (-1L)) || 0x4DB4C402L) > (*l_980)), l_992))) & (*l_980)) >= p_1868->g_748)) > FAKE_DIVERGE(p_1868->group_0_offset, get_group_id(0), 10)) ^ p_50))) > 0x5BE8696EL) <= (*p_1868->g_918)))))) | p_50), (*l_980))))), (*p_47)));
                l_980 = &l_977;
                for (l_977 = 2; (l_977 >= 0); l_977 -= 1)
                { /* block id: 502 */
                    uint32_t l_1002 = 0UL;
                    l_1002--;
                    if ((*p_1868->g_189))
                        break;
                    for (p_1868->g_128 = 0; (p_1868->g_128 <= 2); p_1868->g_128 += 1)
                    { /* block id: 507 */
                        (*l_757) &= p_50;
                        return l_1005;
                    }
                }
            }
        }
    }
    for (p_1868->g_514 = 0; (p_1868->g_514 == 18); p_1868->g_514++)
    { /* block id: 517 */
        int32_t *l_1008 = (void*)0;
        int32_t *l_1009 = &l_859;
        int32_t *l_1010 = &p_1868->g_63;
        int32_t *l_1011 = &p_1868->g_63;
        int32_t *l_1012 = &p_1868->g_63;
        int32_t *l_1013 = &l_932[7];
        int32_t *l_1014 = &l_932[2];
        int32_t *l_1015 = &p_1868->g_63;
        int32_t *l_1016 = &p_1868->g_854;
        int32_t *l_1017 = &l_859;
        int32_t *l_1018[3][4][8] = {{{&l_859,&p_1868->g_854,&p_1868->g_854,&l_859,(void*)0,&l_859,&l_859,(void*)0},{&l_859,&p_1868->g_854,&p_1868->g_854,&l_859,(void*)0,&l_859,&l_859,(void*)0},{&l_859,&p_1868->g_854,&p_1868->g_854,&l_859,(void*)0,&l_859,&l_859,(void*)0},{&l_859,&p_1868->g_854,&p_1868->g_854,&l_859,(void*)0,&l_859,&l_859,(void*)0}},{{&l_859,&p_1868->g_854,&p_1868->g_854,&l_859,(void*)0,&l_859,&l_859,(void*)0},{&l_859,&p_1868->g_854,&p_1868->g_854,&l_859,(void*)0,&l_859,&l_859,(void*)0},{&l_859,&p_1868->g_854,&p_1868->g_854,&l_859,(void*)0,&l_859,&l_859,(void*)0},{&l_859,&p_1868->g_854,&p_1868->g_854,&l_859,(void*)0,&l_859,&l_859,(void*)0}},{{&l_859,&p_1868->g_854,&p_1868->g_854,&l_859,(void*)0,&l_859,&l_859,(void*)0},{&l_859,&p_1868->g_854,&p_1868->g_854,&l_859,(void*)0,&l_859,&l_859,(void*)0},{&l_859,&p_1868->g_854,&p_1868->g_854,&l_859,(void*)0,&l_859,&l_859,(void*)0},{&l_859,&p_1868->g_854,&p_1868->g_854,&l_859,(void*)0,&l_859,&l_859,(void*)0}}};
        int16_t l_1019 = 0x038FL;
        uint16_t *l_1041[5];
        uint32_t l_1054 = 0xDD260133L;
        int i, j, k;
        for (i = 0; i < 5; i++)
            l_1041[i] = &p_1868->g_602;
        --l_1020;
        (*l_1013) &= ((*l_757) != (FAKE_DIVERGE(p_1868->group_0_offset, get_group_id(0), 10) ^ ((p_50 == FAKE_DIVERGE(p_1868->group_1_offset, get_group_id(1), 10)) ^ ((((safe_add_func_int8_t_s_s((safe_mul_func_uint8_t_u_u((safe_sub_func_int16_t_s_s((((safe_sub_func_uint32_t_u_u((((safe_rshift_func_uint8_t_u_u((safe_sub_func_int8_t_s_s((*p_47), (safe_mod_func_uint8_t_u_u(p_49, (*p_47))))), 4)) >= (safe_mod_func_uint8_t_u_u((safe_mod_func_uint16_t_u_u(((*l_1016) = 5UL), p_1868->g_144[1][2])), 255UL))) >= (safe_sub_func_uint32_t_u_u((safe_div_func_int16_t_s_s((safe_sub_func_uint8_t_u_u(((((safe_sub_func_int16_t_s_s((safe_sub_func_int8_t_s_s((((safe_lshift_func_uint16_t_u_s(0UL, p_49)) > 18446744073709551615UL) || p_49), (*p_1868->g_208))), (*l_757))) < FAKE_DIVERGE(p_1868->group_2_offset, get_group_id(2), 10)) , (***p_1868->g_916)) ^ 1L), (*p_1868->g_208))), l_1054)), 0x00CDE481L))), (*l_757))) & 1UL) > 0x46L), p_50)), (*p_1868->g_208))), (*l_757))) || p_50) < 4294967295UL) | (*p_1868->g_208)))));
    }
    for (p_1868->g_602 = 0; (p_1868->g_602 <= 2); p_1868->g_602 += 1)
    { /* block id: 524 */
        int32_t *l_1055 = (void*)0;
        int32_t ***l_1061 = &p_1868->g_110;
        int64_t **l_1062 = &p_1868->g_767;
        int32_t l_1068 = 0x3DB6B517L;
        int32_t *l_1074[6] = {&l_859,&l_859,&l_859,&l_859,&l_859,&l_859};
        int32_t l_1075[2][8][1];
        uint8_t l_1078 = 0xC1L;
        int i, j, k;
        for (i = 0; i < 2; i++)
        {
            for (j = 0; j < 8; j++)
            {
                for (k = 0; k < 1; k++)
                    l_1075[i][j][k] = 0x435B4C88L;
            }
        }
        (*p_1868->g_880) = l_1055;
        for (p_1868->g_438 = 0; (p_1868->g_438 <= 0); p_1868->g_438 += 1)
        { /* block id: 528 */
            int64_t **l_1056[6] = {&p_1868->g_789,&p_1868->g_789,&p_1868->g_789,&p_1868->g_789,&p_1868->g_789,&p_1868->g_789};
            int64_t ***l_1057 = &l_814;
            int32_t ***l_1059 = &p_1868->g_110;
            uint8_t *l_1060 = &p_1868->g_131;
            int i, j;
            l_757 = ((65529UL < (p_1868->g_551[(p_1868->g_602 + 2)][p_1868->g_438] , ((((((*l_1057) = l_1056[3]) != ((safe_unary_minus_func_uint8_t_u((&p_1868->g_880 == ((*p_1868->g_360) , ((((~((l_1060 = ((((*l_1059) = &p_1868->g_111[4]) == (void*)0) , p_47)) != &p_1868->g_551[(p_1868->g_602 + 2)][p_1868->g_438])) <= 0xFD619E73L) > FAKE_DIVERGE(p_1868->local_0_offset, get_local_id(0), 10)) , l_1061))))) , l_1062)) | 1UL) <= p_49) , 0x5C09L))) , &l_941);
            for (p_1868->g_63 = 9; (p_1868->g_63 >= 2); p_1868->g_63 -= 1)
            { /* block id: 535 */
                int32_t *l_1063 = &l_859;
                int32_t *l_1064 = &l_932[2];
                int32_t *l_1065 = &l_941;
                int32_t *l_1066 = (void*)0;
                int32_t *l_1067 = &l_941;
                int32_t *l_1069 = (void*)0;
                int32_t *l_1070[4][10] = {{&p_1868->g_63,&p_1868->g_21,&l_941,(void*)0,&p_1868->g_21,(void*)0,&l_941,&p_1868->g_21,&p_1868->g_63,&p_1868->g_63},{&p_1868->g_63,&p_1868->g_21,&l_941,(void*)0,&p_1868->g_21,(void*)0,&l_941,&p_1868->g_21,&p_1868->g_63,&p_1868->g_63},{&p_1868->g_63,&p_1868->g_21,&l_941,(void*)0,&p_1868->g_21,(void*)0,&l_941,&p_1868->g_21,&p_1868->g_63,&p_1868->g_63},{&p_1868->g_63,&p_1868->g_21,&l_941,(void*)0,&p_1868->g_21,(void*)0,&l_941,&p_1868->g_21,&p_1868->g_63,&p_1868->g_63}};
                uint32_t l_1071 = 0UL;
                int i, j;
                --l_1071;
            }
            return &p_1868->g_178;
        }
        l_1078++;
        for (l_841 = 0; (l_841 >= 0); l_841 -= 1)
        { /* block id: 543 */
            int32_t l_1096 = 4L;
            uint32_t l_1107 = 8UL;
            int i, j;
            l_1096 &= (safe_sub_func_uint64_t_u_u((0x47L & (safe_mod_func_int16_t_s_s(((p_1868->g_551[(p_1868->g_602 + 1)][l_841] > (*l_757)) | ((*p_1868->g_360) >= (0x58B9B9DC208DB656L && (((safe_rshift_func_uint8_t_u_s((safe_unary_minus_func_uint32_t_u((*p_48))), (safe_lshift_func_int16_t_s_s((safe_rshift_func_uint8_t_u_u(p_49, ((+(safe_mul_func_int16_t_s_s((safe_rshift_func_uint8_t_u_s(p_49, ((*p_47) ^= (p_50 ^ 0x3DL)))), 0x1173L))) <= p_49))), 14)))) & p_50) != 3L)))), (*l_757)))), p_1868->g_551[(p_1868->g_602 + 1)][l_841]));
            p_1868->g_1097[8][7] &= ((p_47 != p_47) , (*l_757));
            for (p_50 = 0; (p_50 <= 2); p_50 += 1)
            { /* block id: 549 */
                int16_t *l_1106[2];
                int32_t l_1116 = 0L;
                uint16_t *l_1120[6];
                uint16_t **l_1119 = &l_1120[0];
                int32_t **l_1123 = &l_1074[0];
                int i, j, k;
                for (i = 0; i < 2; i++)
                    l_1106[i] = &p_1868->g_281[2];
                for (i = 0; i < 6; i++)
                    l_1120[i] = &p_1868->g_602;
                (*l_1123) = ((safe_add_func_int32_t_s_s((safe_lshift_func_uint8_t_u_u(((safe_lshift_func_int8_t_s_s(((*p_47) = (safe_div_func_uint16_t_u_u((((l_1107 = (&p_1868->g_189 != (p_1868->g_110 = (void*)0))) <= (((safe_rshift_func_int16_t_s_s((((((safe_mod_func_int64_t_s_s((*p_1868->g_767), (safe_sub_func_uint32_t_u_u(p_1868->g_265[5][4][2], ((p_49 >= (safe_add_func_int32_t_s_s((((*l_757) = p_49) | (((l_1116 = p_1868->g_73[0]) == (safe_sub_func_uint32_t_u_u(((l_1096 ^= p_49) , (p_1868->g_61 = (((*l_1119) = l_1106[1]) == l_1121[6][0]))), p_49))) | 0xAF65L)), 4294967295UL))) , 0x4BC2CAD4L))))) || p_50) && l_1116) , FAKE_DIVERGE(p_1868->local_2_offset, get_local_id(2), 10)) , (-1L)), p_1868->g_414)) , l_1096) == 0x9866F0B5C759B1C6L)) || (-1L)), l_1122))), (*p_1868->g_208))) | 1L), p_50)), (*p_48))) , (*p_1868->g_880));
            }
        }
    }
    return &p_1868->g_178;
}


/* ------------------------------------------ */
/* 
 * reads : p_1868->g_514 p_1868->g_602 p_1868->g_61 p_1868->g_42 p_1868->g_265 p_1868->g_604 p_1868->g_110 p_1868->g_111
 * writes: p_1868->g_514 p_1868->g_602 p_1868->g_61 p_1868->g_42 p_1868->g_111
 */
int32_t  func_51(int8_t * p_52, uint32_t * p_53, struct S0 * p_1868)
{ /* block id: 329 */
    uint8_t l_721 = 6UL;
    int32_t l_733[6][8][5] = {{{8L,(-10L),0x09524EBBL,0x09524EBBL,(-10L)},{8L,(-10L),0x09524EBBL,0x09524EBBL,(-10L)},{8L,(-10L),0x09524EBBL,0x09524EBBL,(-10L)},{8L,(-10L),0x09524EBBL,0x09524EBBL,(-10L)},{8L,(-10L),0x09524EBBL,0x09524EBBL,(-10L)},{8L,(-10L),0x09524EBBL,0x09524EBBL,(-10L)},{8L,(-10L),0x09524EBBL,0x09524EBBL,(-10L)},{8L,(-10L),0x09524EBBL,0x09524EBBL,(-10L)}},{{8L,(-10L),0x09524EBBL,0x09524EBBL,(-10L)},{8L,(-10L),0x09524EBBL,0x09524EBBL,(-10L)},{8L,(-10L),0x09524EBBL,0x09524EBBL,(-10L)},{8L,(-10L),0x09524EBBL,0x09524EBBL,(-10L)},{8L,(-10L),0x09524EBBL,0x09524EBBL,(-10L)},{8L,(-10L),0x09524EBBL,0x09524EBBL,(-10L)},{8L,(-10L),0x09524EBBL,0x09524EBBL,(-10L)},{8L,(-10L),0x09524EBBL,0x09524EBBL,(-10L)}},{{8L,(-10L),0x09524EBBL,0x09524EBBL,(-10L)},{8L,(-10L),0x09524EBBL,0x09524EBBL,(-10L)},{8L,(-10L),0x09524EBBL,0x09524EBBL,(-10L)},{8L,(-10L),0x09524EBBL,0x09524EBBL,(-10L)},{8L,(-10L),0x09524EBBL,0x09524EBBL,(-10L)},{8L,(-10L),0x09524EBBL,0x09524EBBL,(-10L)},{8L,(-10L),0x09524EBBL,0x09524EBBL,(-10L)},{8L,(-10L),0x09524EBBL,0x09524EBBL,(-10L)}},{{8L,(-10L),0x09524EBBL,0x09524EBBL,(-10L)},{8L,(-10L),0x09524EBBL,0x09524EBBL,(-10L)},{8L,(-10L),0x09524EBBL,0x09524EBBL,(-10L)},{8L,(-10L),0x09524EBBL,0x09524EBBL,(-10L)},{8L,(-10L),0x09524EBBL,0x09524EBBL,(-10L)},{8L,(-10L),0x09524EBBL,0x09524EBBL,(-10L)},{8L,(-10L),0x09524EBBL,0x09524EBBL,(-10L)},{8L,(-10L),0x09524EBBL,0x09524EBBL,(-10L)}},{{8L,(-10L),0x09524EBBL,0x09524EBBL,(-10L)},{8L,(-10L),0x09524EBBL,0x09524EBBL,(-10L)},{8L,(-10L),0x09524EBBL,0x09524EBBL,(-10L)},{8L,(-10L),0x09524EBBL,0x09524EBBL,(-10L)},{8L,(-10L),0x09524EBBL,0x09524EBBL,(-10L)},{8L,(-10L),0x09524EBBL,0x09524EBBL,(-10L)},{8L,(-10L),0x09524EBBL,0x09524EBBL,(-10L)},{8L,(-10L),0x09524EBBL,0x09524EBBL,(-10L)}},{{8L,(-10L),0x09524EBBL,0x09524EBBL,(-10L)},{8L,(-10L),0x09524EBBL,0x09524EBBL,(-10L)},{8L,(-10L),0x09524EBBL,0x09524EBBL,(-10L)},{8L,(-10L),0x09524EBBL,0x09524EBBL,(-10L)},{8L,(-10L),0x09524EBBL,0x09524EBBL,(-10L)},{8L,(-10L),0x09524EBBL,0x09524EBBL,(-10L)},{8L,(-10L),0x09524EBBL,0x09524EBBL,(-10L)},{8L,(-10L),0x09524EBBL,0x09524EBBL,(-10L)}}};
    int i, j, k;
    for (p_1868->g_514 = 0; (p_1868->g_514 == 9); p_1868->g_514++)
    { /* block id: 332 */
        uint64_t l_737 = 1UL;
        for (p_1868->g_602 = 0; (p_1868->g_602 <= 28); p_1868->g_602 = safe_add_func_int8_t_s_s(p_1868->g_602, 2))
        { /* block id: 335 */
            uint8_t l_724 = 0x84L;
            int32_t *l_728 = &p_1868->g_144[1][1];
            int32_t **l_727 = &l_728;
            int32_t l_732[8][8];
            int32_t l_736 = (-1L);
            int i, j;
            for (i = 0; i < 8; i++)
            {
                for (j = 0; j < 8; j++)
                    l_732[i][j] = 0L;
            }
            for (p_1868->g_61 = 0; (p_1868->g_61 == 58); p_1868->g_61++)
            { /* block id: 338 */
                int32_t *l_720 = (void*)0;
                int32_t l_729 = 0x00687986L;
                l_721 ^= 0x37007AC0L;
                for (p_1868->g_42 = 0; (p_1868->g_42 == (-13)); p_1868->g_42 = safe_sub_func_uint32_t_u_u(p_1868->g_42, 3))
                { /* block id: 342 */
                    ++l_724;
                    if ((l_727 == (void*)0))
                    { /* block id: 344 */
                        return p_1868->g_265[8][8][0];
                    }
                    else
                    { /* block id: 346 */
                        int32_t *l_730 = &p_1868->g_63;
                        int32_t *l_731 = (void*)0;
                        int32_t *l_734 = &l_732[4][6];
                        int32_t *l_735[3];
                        int i;
                        for (i = 0; i < 3; i++)
                            l_735[i] = (void*)0;
                        l_737++;
                    }
                }
                return p_1868->g_604;
            }
            for (l_737 = 0; (l_737 != 41); l_737++)
            { /* block id: 354 */
                int32_t *l_746 = &l_732[6][7];
                (*l_746) = (safe_lshift_func_uint8_t_u_s((safe_rshift_func_uint8_t_u_s(l_721, 2)), 3));
                (*p_1868->g_110) = (*p_1868->g_110);
            }
        }
    }
    return l_733[4][6][2];
}


/* ------------------------------------------ */
/* 
 * reads : p_1868->g_74 p_1868->g_63 p_1868->g_110 p_1868->g_111 p_1868->g_73 p_1868->g_17 p_1868->g_131 p_1868->g_22 p_1868->g_61 p_1868->g_141 p_1868->g_42 p_1868->g_178 p_1868->g_181 p_1868->g_128 p_1868->g_189 p_1868->g_208 p_1868->g_140 p_1868->g_241 p_1868->g_21 p_1868->g_265 p_1868->g_81 p_1868->g_281 p_1868->g_298 p_1868->g_360 p_1868->g_414 p_1868->g_424 p_1868->g_572 p_1868->g_551 p_1868->g_435 p_1868->g_436 p_1868->g_604 p_1868->g_20 p_1868->g_514 p_1868->g_144 p_1868->g_675 p_1868->g_685
 * writes: p_1868->g_74 p_1868->g_63 p_1868->g_61 p_1868->g_111 p_1868->g_128 p_1868->g_131 p_1868->g_140 p_1868->g_141 p_1868->g_42 p_1868->g_178 p_1868->g_241 p_1868->g_265 p_1868->g_281 p_1868->g_414 p_1868->g_298 p_1868->g_551 p_1868->g_602 p_1868->g_604 p_1868->g_664 p_1868->g_675 p_1868->g_685 p_1868->g_436 p_1868->g_438
 */
int8_t * func_54(uint32_t  p_55, struct S0 * p_1868)
{ /* block id: 19 */
    int32_t *l_62 = &p_1868->g_63;
    int32_t l_64 = (-3L);
    int32_t *l_65 = &p_1868->g_63;
    int32_t l_66 = 0x32933530L;
    int32_t *l_67 = &l_64;
    int32_t *l_68 = &p_1868->g_63;
    int32_t *l_69 = &l_66;
    int32_t *l_70[7] = {&l_64,&l_64,&l_64,&l_64,&l_64,&l_64,&l_64};
    int32_t l_71 = (-10L);
    int8_t l_72 = 0L;
    int32_t l_85 = 0x7D5F2590L;
    int16_t l_87 = 8L;
    int16_t l_89 = 7L;
    volatile int32_t *l_94 = &p_1868->g_81[4][7][1];
    int8_t l_95 = 0x1BL;
    uint8_t l_96 = 0xE7L;
    int16_t l_660 = (-1L);
    int i;
    --p_1868->g_74;
    for (p_1868->g_63 = 0; (p_1868->g_63 == (-25)); --p_1868->g_63)
    { /* block id: 23 */
        int32_t l_79 = 1L;
        int32_t l_80 = 0x365B212FL;
        int32_t l_82 = (-1L);
        int32_t l_83 = 0x2DC13529L;
        int32_t l_84[5];
        int32_t l_86[4][4] = {{4L,4L,5L,(-6L)},{4L,4L,5L,(-6L)},{4L,4L,5L,(-6L)},{4L,4L,5L,(-6L)}};
        int32_t l_88[4];
        uint32_t l_90 = 7UL;
        volatile int32_t **l_93 = (void*)0;
        int i, j;
        for (i = 0; i < 5; i++)
            l_84[i] = 0x7D598C55L;
        for (i = 0; i < 4; i++)
            l_88[i] = 0x44C23B8DL;
        --l_90;
        l_94 = &p_1868->g_81[2][6][1];
    }
    l_96--;
    for (l_66 = 0; (l_66 != 27); l_66++)
    { /* block id: 30 */
        uint32_t *l_663 = &p_1868->g_664;
        int8_t *l_665 = (void*)0;
        int8_t *l_666 = &l_72;
        int32_t l_667[8][7][4] = {{{1L,0x79E5F15BL,0x099581D2L,(-5L)},{1L,0x79E5F15BL,0x099581D2L,(-5L)},{1L,0x79E5F15BL,0x099581D2L,(-5L)},{1L,0x79E5F15BL,0x099581D2L,(-5L)},{1L,0x79E5F15BL,0x099581D2L,(-5L)},{1L,0x79E5F15BL,0x099581D2L,(-5L)},{1L,0x79E5F15BL,0x099581D2L,(-5L)}},{{1L,0x79E5F15BL,0x099581D2L,(-5L)},{1L,0x79E5F15BL,0x099581D2L,(-5L)},{1L,0x79E5F15BL,0x099581D2L,(-5L)},{1L,0x79E5F15BL,0x099581D2L,(-5L)},{1L,0x79E5F15BL,0x099581D2L,(-5L)},{1L,0x79E5F15BL,0x099581D2L,(-5L)},{1L,0x79E5F15BL,0x099581D2L,(-5L)}},{{1L,0x79E5F15BL,0x099581D2L,(-5L)},{1L,0x79E5F15BL,0x099581D2L,(-5L)},{1L,0x79E5F15BL,0x099581D2L,(-5L)},{1L,0x79E5F15BL,0x099581D2L,(-5L)},{1L,0x79E5F15BL,0x099581D2L,(-5L)},{1L,0x79E5F15BL,0x099581D2L,(-5L)},{1L,0x79E5F15BL,0x099581D2L,(-5L)}},{{1L,0x79E5F15BL,0x099581D2L,(-5L)},{1L,0x79E5F15BL,0x099581D2L,(-5L)},{1L,0x79E5F15BL,0x099581D2L,(-5L)},{1L,0x79E5F15BL,0x099581D2L,(-5L)},{1L,0x79E5F15BL,0x099581D2L,(-5L)},{1L,0x79E5F15BL,0x099581D2L,(-5L)},{1L,0x79E5F15BL,0x099581D2L,(-5L)}},{{1L,0x79E5F15BL,0x099581D2L,(-5L)},{1L,0x79E5F15BL,0x099581D2L,(-5L)},{1L,0x79E5F15BL,0x099581D2L,(-5L)},{1L,0x79E5F15BL,0x099581D2L,(-5L)},{1L,0x79E5F15BL,0x099581D2L,(-5L)},{1L,0x79E5F15BL,0x099581D2L,(-5L)},{1L,0x79E5F15BL,0x099581D2L,(-5L)}},{{1L,0x79E5F15BL,0x099581D2L,(-5L)},{1L,0x79E5F15BL,0x099581D2L,(-5L)},{1L,0x79E5F15BL,0x099581D2L,(-5L)},{1L,0x79E5F15BL,0x099581D2L,(-5L)},{1L,0x79E5F15BL,0x099581D2L,(-5L)},{1L,0x79E5F15BL,0x099581D2L,(-5L)},{1L,0x79E5F15BL,0x099581D2L,(-5L)}},{{1L,0x79E5F15BL,0x099581D2L,(-5L)},{1L,0x79E5F15BL,0x099581D2L,(-5L)},{1L,0x79E5F15BL,0x099581D2L,(-5L)},{1L,0x79E5F15BL,0x099581D2L,(-5L)},{1L,0x79E5F15BL,0x099581D2L,(-5L)},{1L,0x79E5F15BL,0x099581D2L,(-5L)},{1L,0x79E5F15BL,0x099581D2L,(-5L)}},{{1L,0x79E5F15BL,0x099581D2L,(-5L)},{1L,0x79E5F15BL,0x099581D2L,(-5L)},{1L,0x79E5F15BL,0x099581D2L,(-5L)},{1L,0x79E5F15BL,0x099581D2L,(-5L)},{1L,0x79E5F15BL,0x099581D2L,(-5L)},{1L,0x79E5F15BL,0x099581D2L,(-5L)},{1L,0x79E5F15BL,0x099581D2L,(-5L)}}};
        uint32_t l_668 = 4294967293UL;
        int32_t l_713 = 8L;
        int i, j, k;
        l_713 |= func_101(func_106(p_1868->g_110, &p_1868->g_17[1][1][3], ((*l_67) = (-1L)), p_1868), (((p_55 , 0L) || GROUP_DIVERGE(2, 1)) > ((safe_sub_func_int16_t_s_s(((safe_add_func_int32_t_s_s((safe_unary_minus_func_uint32_t_u((safe_sub_func_uint8_t_u_u((safe_div_func_uint16_t_u_u((((8UL >= ((safe_div_func_int32_t_s_s(l_660, (safe_lshift_func_int16_t_s_s((((((*l_666) = (+(((*l_663) = ((p_55 <= p_1868->g_514) , p_55)) , 1L))) & FAKE_DIVERGE(p_1868->global_1_offset, get_global_id(1), 10)) <= p_55) < p_1868->g_22), p_1868->g_17[2][4][4])))) == (*l_69))) & p_1868->g_144[0][0]) >= p_55), 0x58E2L)), p_1868->g_144[0][3])))), p_55)) > 0x0B7CE9BBF40C051BL), l_667[6][1][1])) , p_1868->g_17[1][7][0])), &l_65, l_668, p_1868);
    }
    return &p_1868->g_42;
}


/* ------------------------------------------ */
/* 
 * reads : p_1868->g_675 p_1868->g_63 p_1868->g_685 p_1868->g_81 p_1868->g_360 p_1868->g_140 p_1868->g_141 p_1868->g_208 p_1868->g_178 p_1868->g_22
 * writes: p_1868->g_675 p_1868->g_685 p_1868->g_63 p_1868->g_436 p_1868->g_141 p_1868->g_438 p_1868->g_178
 */
int32_t  func_101(uint8_t  p_102, uint8_t  p_103, int32_t ** p_104, uint32_t  p_105, struct S0 * p_1868)
{ /* block id: 305 */
    int32_t *l_669 = &p_1868->g_63;
    int32_t *l_670 = (void*)0;
    int32_t *l_671 = &p_1868->g_63;
    int32_t *l_672 = &p_1868->g_63;
    int32_t *l_673[5][4] = {{&p_1868->g_63,&p_1868->g_22,&p_1868->g_63,&p_1868->g_63},{&p_1868->g_63,&p_1868->g_22,&p_1868->g_63,&p_1868->g_63},{&p_1868->g_63,&p_1868->g_22,&p_1868->g_63,&p_1868->g_63},{&p_1868->g_63,&p_1868->g_22,&p_1868->g_63,&p_1868->g_63},{&p_1868->g_63,&p_1868->g_22,&p_1868->g_63,&p_1868->g_63}};
    int32_t l_674 = 2L;
    uint64_t **l_709 = (void*)0;
    int16_t *l_710 = &p_1868->g_141;
    int64_t *l_711 = &p_1868->g_438;
    int8_t l_712 = (-1L);
    int i, j;
    p_1868->g_675[9]++;
    if ((0x47L == (*l_671)))
    { /* block id: 307 */
        int32_t *l_678 = &p_1868->g_22;
        (*p_104) = &l_674;
        (*p_104) = l_678;
        for (p_102 = 0; (p_102 == 14); p_102 = safe_add_func_uint32_t_u_u(p_102, 8))
        { /* block id: 312 */
            int32_t l_681 = 0x2DF0F040L;
            int32_t l_682 = (-9L);
            int32_t l_683 = 0L;
            int32_t l_684[5][7][7] = {{{0x6FF60E23L,0x0D11BE8EL,0x1959F33CL,0x6FF60E23L,0x24D9D386L,0x65BC6365L,0x0B2F128BL},{0x6FF60E23L,0x0D11BE8EL,0x1959F33CL,0x6FF60E23L,0x24D9D386L,0x65BC6365L,0x0B2F128BL},{0x6FF60E23L,0x0D11BE8EL,0x1959F33CL,0x6FF60E23L,0x24D9D386L,0x65BC6365L,0x0B2F128BL},{0x6FF60E23L,0x0D11BE8EL,0x1959F33CL,0x6FF60E23L,0x24D9D386L,0x65BC6365L,0x0B2F128BL},{0x6FF60E23L,0x0D11BE8EL,0x1959F33CL,0x6FF60E23L,0x24D9D386L,0x65BC6365L,0x0B2F128BL},{0x6FF60E23L,0x0D11BE8EL,0x1959F33CL,0x6FF60E23L,0x24D9D386L,0x65BC6365L,0x0B2F128BL},{0x6FF60E23L,0x0D11BE8EL,0x1959F33CL,0x6FF60E23L,0x24D9D386L,0x65BC6365L,0x0B2F128BL}},{{0x6FF60E23L,0x0D11BE8EL,0x1959F33CL,0x6FF60E23L,0x24D9D386L,0x65BC6365L,0x0B2F128BL},{0x6FF60E23L,0x0D11BE8EL,0x1959F33CL,0x6FF60E23L,0x24D9D386L,0x65BC6365L,0x0B2F128BL},{0x6FF60E23L,0x0D11BE8EL,0x1959F33CL,0x6FF60E23L,0x24D9D386L,0x65BC6365L,0x0B2F128BL},{0x6FF60E23L,0x0D11BE8EL,0x1959F33CL,0x6FF60E23L,0x24D9D386L,0x65BC6365L,0x0B2F128BL},{0x6FF60E23L,0x0D11BE8EL,0x1959F33CL,0x6FF60E23L,0x24D9D386L,0x65BC6365L,0x0B2F128BL},{0x6FF60E23L,0x0D11BE8EL,0x1959F33CL,0x6FF60E23L,0x24D9D386L,0x65BC6365L,0x0B2F128BL},{0x6FF60E23L,0x0D11BE8EL,0x1959F33CL,0x6FF60E23L,0x24D9D386L,0x65BC6365L,0x0B2F128BL}},{{0x6FF60E23L,0x0D11BE8EL,0x1959F33CL,0x6FF60E23L,0x24D9D386L,0x65BC6365L,0x0B2F128BL},{0x6FF60E23L,0x0D11BE8EL,0x1959F33CL,0x6FF60E23L,0x24D9D386L,0x65BC6365L,0x0B2F128BL},{0x6FF60E23L,0x0D11BE8EL,0x1959F33CL,0x6FF60E23L,0x24D9D386L,0x65BC6365L,0x0B2F128BL},{0x6FF60E23L,0x0D11BE8EL,0x1959F33CL,0x6FF60E23L,0x24D9D386L,0x65BC6365L,0x0B2F128BL},{0x6FF60E23L,0x0D11BE8EL,0x1959F33CL,0x6FF60E23L,0x24D9D386L,0x65BC6365L,0x0B2F128BL},{0x6FF60E23L,0x0D11BE8EL,0x1959F33CL,0x6FF60E23L,0x24D9D386L,0x65BC6365L,0x0B2F128BL},{0x6FF60E23L,0x0D11BE8EL,0x1959F33CL,0x6FF60E23L,0x24D9D386L,0x65BC6365L,0x0B2F128BL}},{{0x6FF60E23L,0x0D11BE8EL,0x1959F33CL,0x6FF60E23L,0x24D9D386L,0x65BC6365L,0x0B2F128BL},{0x6FF60E23L,0x0D11BE8EL,0x1959F33CL,0x6FF60E23L,0x24D9D386L,0x65BC6365L,0x0B2F128BL},{0x6FF60E23L,0x0D11BE8EL,0x1959F33CL,0x6FF60E23L,0x24D9D386L,0x65BC6365L,0x0B2F128BL},{0x6FF60E23L,0x0D11BE8EL,0x1959F33CL,0x6FF60E23L,0x24D9D386L,0x65BC6365L,0x0B2F128BL},{0x6FF60E23L,0x0D11BE8EL,0x1959F33CL,0x6FF60E23L,0x24D9D386L,0x65BC6365L,0x0B2F128BL},{0x6FF60E23L,0x0D11BE8EL,0x1959F33CL,0x6FF60E23L,0x24D9D386L,0x65BC6365L,0x0B2F128BL},{0x6FF60E23L,0x0D11BE8EL,0x1959F33CL,0x6FF60E23L,0x24D9D386L,0x65BC6365L,0x0B2F128BL}},{{0x6FF60E23L,0x0D11BE8EL,0x1959F33CL,0x6FF60E23L,0x24D9D386L,0x65BC6365L,0x0B2F128BL},{0x6FF60E23L,0x0D11BE8EL,0x1959F33CL,0x6FF60E23L,0x24D9D386L,0x65BC6365L,0x0B2F128BL},{0x6FF60E23L,0x0D11BE8EL,0x1959F33CL,0x6FF60E23L,0x24D9D386L,0x65BC6365L,0x0B2F128BL},{0x6FF60E23L,0x0D11BE8EL,0x1959F33CL,0x6FF60E23L,0x24D9D386L,0x65BC6365L,0x0B2F128BL},{0x6FF60E23L,0x0D11BE8EL,0x1959F33CL,0x6FF60E23L,0x24D9D386L,0x65BC6365L,0x0B2F128BL},{0x6FF60E23L,0x0D11BE8EL,0x1959F33CL,0x6FF60E23L,0x24D9D386L,0x65BC6365L,0x0B2F128BL},{0x6FF60E23L,0x0D11BE8EL,0x1959F33CL,0x6FF60E23L,0x24D9D386L,0x65BC6365L,0x0B2F128BL}}};
            int i, j, k;
            ++p_1868->g_685;
            (*l_669) = (-1L);
        }
    }
    else
    { /* block id: 316 */
        uint32_t l_688 = 0x98EE59B8L;
        l_688--;
    }
    l_712 &= (safe_lshift_func_int16_t_s_u((safe_unary_minus_func_uint8_t_u(p_1868->g_81[4][7][1])), (safe_lshift_func_uint8_t_u_u((&p_1868->g_360 == &p_1868->g_360), (safe_div_func_int16_t_s_s(((safe_mod_func_int8_t_s_s(((*p_1868->g_208) |= (0x134942881E69E894L | ((*l_711) = (safe_lshift_func_uint16_t_u_s((safe_unary_minus_func_uint8_t_u((p_102++))), ((*l_710) ^= (safe_lshift_func_uint8_t_u_u((safe_mul_func_int16_t_s_s((*l_672), (((((&p_1868->g_241 == (p_1868->g_436 = &p_1868->g_241)) >= (l_709 != (void*)0)) > (*p_1868->g_360)) | p_103) == 0x53C1L))), 4)))))))), p_105)) || (-1L)), (*l_669)))))));
    return (**p_104);
}


/* ------------------------------------------ */
/* 
 * reads : p_1868->g_61 p_1868->g_110 p_1868->g_111 p_1868->g_73 p_1868->g_17 p_1868->g_131 p_1868->g_22 p_1868->g_63 p_1868->g_141 p_1868->g_128 p_1868->g_42 p_1868->g_178 p_1868->g_181 p_1868->g_189 p_1868->g_140 p_1868->g_208 p_1868->g_241 p_1868->g_21 p_1868->g_265 p_1868->g_81 p_1868->g_281 p_1868->g_298 p_1868->g_360 p_1868->g_414 p_1868->g_424 p_1868->g_572 p_1868->g_74 p_1868->g_551 p_1868->g_435 p_1868->g_436 p_1868->g_604 p_1868->g_20
 * writes: p_1868->g_61 p_1868->g_111 p_1868->g_128 p_1868->g_131 p_1868->g_140 p_1868->g_141 p_1868->g_42 p_1868->g_178 p_1868->g_63 p_1868->g_241 p_1868->g_265 p_1868->g_281 p_1868->g_414 p_1868->g_298 p_1868->g_551 p_1868->g_602 p_1868->g_604
 */
uint8_t  func_106(int32_t ** p_107, uint32_t * p_108, int32_t  p_109, struct S0 * p_1868)
{ /* block id: 32 */
    uint16_t l_118 = 7UL;
    uint8_t *l_127 = &p_1868->g_128;
    uint8_t *l_129 = (void*)0;
    uint8_t *l_130 = &p_1868->g_131;
    int32_t l_145[2][5][2] = {{{0x044EA995L,0x044EA995L},{0x044EA995L,0x044EA995L},{0x044EA995L,0x044EA995L},{0x044EA995L,0x044EA995L},{0x044EA995L,0x044EA995L}},{{0x044EA995L,0x044EA995L},{0x044EA995L,0x044EA995L},{0x044EA995L,0x044EA995L},{0x044EA995L,0x044EA995L},{0x044EA995L,0x044EA995L}}};
    int32_t l_171[6][7] = {{(-1L),0L,(-1L),(-1L),0L,(-1L),(-1L)},{(-1L),0L,(-1L),(-1L),0L,(-1L),(-1L)},{(-1L),0L,(-1L),(-1L),0L,(-1L),(-1L)},{(-1L),0L,(-1L),(-1L),0L,(-1L),(-1L)},{(-1L),0L,(-1L),(-1L),0L,(-1L),(-1L)},{(-1L),0L,(-1L),(-1L),0L,(-1L),(-1L)}};
    uint8_t l_202 = 1UL;
    uint32_t l_268[8] = {6UL,6UL,6UL,6UL,6UL,6UL,6UL,6UL};
    int32_t l_329 = 0x2B7ACE29L;
    int8_t l_336 = 0x29L;
    int32_t l_380 = 0x0D9DC638L;
    int8_t l_385 = 1L;
    int32_t *l_452 = &p_1868->g_63;
    int64_t l_479 = 0x4DE539CD804A2650L;
    int16_t *l_488 = &p_1868->g_298;
    uint64_t **l_515[9][8] = {{&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360},{&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360},{&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360},{&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360},{&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360},{&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360},{&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360},{&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360},{&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360,&p_1868->g_360}};
    int16_t l_525 = 0x781BL;
    int32_t *l_587[10][5] = {{&p_1868->g_144[1][3],&p_1868->g_144[0][3],&p_1868->g_144[0][3],&p_1868->g_144[1][1],&p_1868->g_144[0][3]},{&p_1868->g_144[1][3],&p_1868->g_144[0][3],&p_1868->g_144[0][3],&p_1868->g_144[1][1],&p_1868->g_144[0][3]},{&p_1868->g_144[1][3],&p_1868->g_144[0][3],&p_1868->g_144[0][3],&p_1868->g_144[1][1],&p_1868->g_144[0][3]},{&p_1868->g_144[1][3],&p_1868->g_144[0][3],&p_1868->g_144[0][3],&p_1868->g_144[1][1],&p_1868->g_144[0][3]},{&p_1868->g_144[1][3],&p_1868->g_144[0][3],&p_1868->g_144[0][3],&p_1868->g_144[1][1],&p_1868->g_144[0][3]},{&p_1868->g_144[1][3],&p_1868->g_144[0][3],&p_1868->g_144[0][3],&p_1868->g_144[1][1],&p_1868->g_144[0][3]},{&p_1868->g_144[1][3],&p_1868->g_144[0][3],&p_1868->g_144[0][3],&p_1868->g_144[1][1],&p_1868->g_144[0][3]},{&p_1868->g_144[1][3],&p_1868->g_144[0][3],&p_1868->g_144[0][3],&p_1868->g_144[1][1],&p_1868->g_144[0][3]},{&p_1868->g_144[1][3],&p_1868->g_144[0][3],&p_1868->g_144[0][3],&p_1868->g_144[1][1],&p_1868->g_144[0][3]},{&p_1868->g_144[1][3],&p_1868->g_144[0][3],&p_1868->g_144[0][3],&p_1868->g_144[1][1],&p_1868->g_144[0][3]}};
    int i, j, k;
lbl_132:
    for (p_1868->g_61 = 0; (p_1868->g_61 < 25); p_1868->g_61 = safe_add_func_int64_t_s_s(p_1868->g_61, 4))
    { /* block id: 35 */
        int32_t *l_114 = &p_1868->g_63;
        int32_t *l_115 = &p_1868->g_63;
        int32_t *l_116 = &p_1868->g_63;
        int32_t *l_117[4] = {&p_1868->g_63,&p_1868->g_63,&p_1868->g_63,&p_1868->g_63};
        int i;
        l_118++;
        (*p_1868->g_110) = (*p_1868->g_110);
    }
    if (((p_1868->g_73[2] & (safe_lshift_func_uint8_t_u_s(((*l_127) = (safe_sub_func_int8_t_s_s((safe_add_func_uint32_t_u_u((*p_108), p_1868->g_17[0][4][2])), p_1868->g_17[1][7][0]))), p_1868->g_17[0][2][5]))) < ((*l_130) |= (&p_1868->g_111[1] != (void*)0))))
    { /* block id: 41 */
        int32_t l_133 = (-9L);
        uint8_t *l_154 = &p_1868->g_131;
        uint32_t *l_183 = &p_1868->g_17[1][7][0];
        int64_t l_194[5] = {(-7L),(-7L),(-7L),(-7L),(-7L)};
        int32_t l_196 = 4L;
        int32_t l_197 = (-5L);
        int32_t l_198 = 0x5EB18E8DL;
        int32_t l_199[7] = {0L,0L,0L,0L,0L,0L,0L};
        int32_t l_201 = 0x51D1B7C7L;
        uint64_t l_223[4] = {0UL,0UL,0UL,0UL};
        uint32_t l_277[7][8][4] = {{{1UL,0xCA352F5BL,1UL,4294967291UL},{1UL,0xCA352F5BL,1UL,4294967291UL},{1UL,0xCA352F5BL,1UL,4294967291UL},{1UL,0xCA352F5BL,1UL,4294967291UL},{1UL,0xCA352F5BL,1UL,4294967291UL},{1UL,0xCA352F5BL,1UL,4294967291UL},{1UL,0xCA352F5BL,1UL,4294967291UL},{1UL,0xCA352F5BL,1UL,4294967291UL}},{{1UL,0xCA352F5BL,1UL,4294967291UL},{1UL,0xCA352F5BL,1UL,4294967291UL},{1UL,0xCA352F5BL,1UL,4294967291UL},{1UL,0xCA352F5BL,1UL,4294967291UL},{1UL,0xCA352F5BL,1UL,4294967291UL},{1UL,0xCA352F5BL,1UL,4294967291UL},{1UL,0xCA352F5BL,1UL,4294967291UL},{1UL,0xCA352F5BL,1UL,4294967291UL}},{{1UL,0xCA352F5BL,1UL,4294967291UL},{1UL,0xCA352F5BL,1UL,4294967291UL},{1UL,0xCA352F5BL,1UL,4294967291UL},{1UL,0xCA352F5BL,1UL,4294967291UL},{1UL,0xCA352F5BL,1UL,4294967291UL},{1UL,0xCA352F5BL,1UL,4294967291UL},{1UL,0xCA352F5BL,1UL,4294967291UL},{1UL,0xCA352F5BL,1UL,4294967291UL}},{{1UL,0xCA352F5BL,1UL,4294967291UL},{1UL,0xCA352F5BL,1UL,4294967291UL},{1UL,0xCA352F5BL,1UL,4294967291UL},{1UL,0xCA352F5BL,1UL,4294967291UL},{1UL,0xCA352F5BL,1UL,4294967291UL},{1UL,0xCA352F5BL,1UL,4294967291UL},{1UL,0xCA352F5BL,1UL,4294967291UL},{1UL,0xCA352F5BL,1UL,4294967291UL}},{{1UL,0xCA352F5BL,1UL,4294967291UL},{1UL,0xCA352F5BL,1UL,4294967291UL},{1UL,0xCA352F5BL,1UL,4294967291UL},{1UL,0xCA352F5BL,1UL,4294967291UL},{1UL,0xCA352F5BL,1UL,4294967291UL},{1UL,0xCA352F5BL,1UL,4294967291UL},{1UL,0xCA352F5BL,1UL,4294967291UL},{1UL,0xCA352F5BL,1UL,4294967291UL}},{{1UL,0xCA352F5BL,1UL,4294967291UL},{1UL,0xCA352F5BL,1UL,4294967291UL},{1UL,0xCA352F5BL,1UL,4294967291UL},{1UL,0xCA352F5BL,1UL,4294967291UL},{1UL,0xCA352F5BL,1UL,4294967291UL},{1UL,0xCA352F5BL,1UL,4294967291UL},{1UL,0xCA352F5BL,1UL,4294967291UL},{1UL,0xCA352F5BL,1UL,4294967291UL}},{{1UL,0xCA352F5BL,1UL,4294967291UL},{1UL,0xCA352F5BL,1UL,4294967291UL},{1UL,0xCA352F5BL,1UL,4294967291UL},{1UL,0xCA352F5BL,1UL,4294967291UL},{1UL,0xCA352F5BL,1UL,4294967291UL},{1UL,0xCA352F5BL,1UL,4294967291UL},{1UL,0xCA352F5BL,1UL,4294967291UL},{1UL,0xCA352F5BL,1UL,4294967291UL}}};
        int i, j, k;
        if (l_118)
            goto lbl_132;
        if (l_133)
        { /* block id: 43 */
            int8_t l_136 = 0x71L;
            uint64_t *l_139 = &p_1868->g_140;
            int32_t *l_143[3];
            int32_t l_146[6][7][6] = {{{0x12570141L,(-1L),0x179A64F9L,1L,(-5L),1L},{0x12570141L,(-1L),0x179A64F9L,1L,(-5L),1L},{0x12570141L,(-1L),0x179A64F9L,1L,(-5L),1L},{0x12570141L,(-1L),0x179A64F9L,1L,(-5L),1L},{0x12570141L,(-1L),0x179A64F9L,1L,(-5L),1L},{0x12570141L,(-1L),0x179A64F9L,1L,(-5L),1L},{0x12570141L,(-1L),0x179A64F9L,1L,(-5L),1L}},{{0x12570141L,(-1L),0x179A64F9L,1L,(-5L),1L},{0x12570141L,(-1L),0x179A64F9L,1L,(-5L),1L},{0x12570141L,(-1L),0x179A64F9L,1L,(-5L),1L},{0x12570141L,(-1L),0x179A64F9L,1L,(-5L),1L},{0x12570141L,(-1L),0x179A64F9L,1L,(-5L),1L},{0x12570141L,(-1L),0x179A64F9L,1L,(-5L),1L},{0x12570141L,(-1L),0x179A64F9L,1L,(-5L),1L}},{{0x12570141L,(-1L),0x179A64F9L,1L,(-5L),1L},{0x12570141L,(-1L),0x179A64F9L,1L,(-5L),1L},{0x12570141L,(-1L),0x179A64F9L,1L,(-5L),1L},{0x12570141L,(-1L),0x179A64F9L,1L,(-5L),1L},{0x12570141L,(-1L),0x179A64F9L,1L,(-5L),1L},{0x12570141L,(-1L),0x179A64F9L,1L,(-5L),1L},{0x12570141L,(-1L),0x179A64F9L,1L,(-5L),1L}},{{0x12570141L,(-1L),0x179A64F9L,1L,(-5L),1L},{0x12570141L,(-1L),0x179A64F9L,1L,(-5L),1L},{0x12570141L,(-1L),0x179A64F9L,1L,(-5L),1L},{0x12570141L,(-1L),0x179A64F9L,1L,(-5L),1L},{0x12570141L,(-1L),0x179A64F9L,1L,(-5L),1L},{0x12570141L,(-1L),0x179A64F9L,1L,(-5L),1L},{0x12570141L,(-1L),0x179A64F9L,1L,(-5L),1L}},{{0x12570141L,(-1L),0x179A64F9L,1L,(-5L),1L},{0x12570141L,(-1L),0x179A64F9L,1L,(-5L),1L},{0x12570141L,(-1L),0x179A64F9L,1L,(-5L),1L},{0x12570141L,(-1L),0x179A64F9L,1L,(-5L),1L},{0x12570141L,(-1L),0x179A64F9L,1L,(-5L),1L},{0x12570141L,(-1L),0x179A64F9L,1L,(-5L),1L},{0x12570141L,(-1L),0x179A64F9L,1L,(-5L),1L}},{{0x12570141L,(-1L),0x179A64F9L,1L,(-5L),1L},{0x12570141L,(-1L),0x179A64F9L,1L,(-5L),1L},{0x12570141L,(-1L),0x179A64F9L,1L,(-5L),1L},{0x12570141L,(-1L),0x179A64F9L,1L,(-5L),1L},{0x12570141L,(-1L),0x179A64F9L,1L,(-5L),1L},{0x12570141L,(-1L),0x179A64F9L,1L,(-5L),1L},{0x12570141L,(-1L),0x179A64F9L,1L,(-5L),1L}}};
            int i, j, k;
            for (i = 0; i < 3; i++)
                l_143[i] = &p_1868->g_144[0][3];
            l_146[2][5][4] = ((p_109 ^ ((*l_130) = p_109)) >= (+((l_145[0][4][1] = ((safe_sub_func_uint8_t_u_u(((*l_127) = ((p_1868->g_141 = (((**p_107) ^ (p_1868->g_61 < l_136)) , ((*l_139) = ((~(-3L)) > (safe_add_func_int32_t_s_s(0x6AC008CEL, 1L)))))) != (((safe_unary_minus_func_int16_t_s(0x28CDL)) != p_1868->g_73[2]) ^ 0UL))), p_109)) != l_133)) , l_133)));
            for (p_1868->g_141 = 0; (p_1868->g_141 != (-19)); p_1868->g_141 = safe_sub_func_uint8_t_u_u(p_1868->g_141, 9))
            { /* block id: 52 */
                int64_t l_149 = 1L;
                if (l_149)
                { /* block id: 53 */
                    for (p_1868->g_128 = (-5); (p_1868->g_128 <= 4); ++p_1868->g_128)
                    { /* block id: 56 */
                        return p_1868->g_61;
                    }
                }
                else
                { /* block id: 59 */
                    int32_t l_152 = 0x75F73016L;
                    uint8_t **l_153 = &l_129;
                    int32_t l_155 = 0L;
                    l_145[0][4][0] = l_152;
                    l_155 = (((*l_153) = (void*)0) == l_154);
                }
                return l_133;
            }
        }
        else
        { /* block id: 66 */
            int8_t l_156 = 0L;
            int8_t *l_176 = &p_1868->g_42;
            int8_t *l_177 = &p_1868->g_178;
            int64_t l_179 = (-2L);
            int8_t **l_180 = &l_177;
            int32_t *l_182 = &l_145[1][3][1];
            int32_t l_195[9][3][4] = {{{(-1L),(-1L),(-9L),(-3L)},{(-1L),(-1L),(-9L),(-3L)},{(-1L),(-1L),(-9L),(-3L)}},{{(-1L),(-1L),(-9L),(-3L)},{(-1L),(-1L),(-9L),(-3L)},{(-1L),(-1L),(-9L),(-3L)}},{{(-1L),(-1L),(-9L),(-3L)},{(-1L),(-1L),(-9L),(-3L)},{(-1L),(-1L),(-9L),(-3L)}},{{(-1L),(-1L),(-9L),(-3L)},{(-1L),(-1L),(-9L),(-3L)},{(-1L),(-1L),(-9L),(-3L)}},{{(-1L),(-1L),(-9L),(-3L)},{(-1L),(-1L),(-9L),(-3L)},{(-1L),(-1L),(-9L),(-3L)}},{{(-1L),(-1L),(-9L),(-3L)},{(-1L),(-1L),(-9L),(-3L)},{(-1L),(-1L),(-9L),(-3L)}},{{(-1L),(-1L),(-9L),(-3L)},{(-1L),(-1L),(-9L),(-3L)},{(-1L),(-1L),(-9L),(-3L)}},{{(-1L),(-1L),(-9L),(-3L)},{(-1L),(-1L),(-9L),(-3L)},{(-1L),(-1L),(-9L),(-3L)}},{{(-1L),(-1L),(-9L),(-3L)},{(-1L),(-1L),(-9L),(-3L)},{(-1L),(-1L),(-9L),(-3L)}}};
            int64_t l_222[9] = {0x3620D7AD1C5595F8L,0x3620D7AD1C5595F8L,0x3620D7AD1C5595F8L,0x3620D7AD1C5595F8L,0x3620D7AD1C5595F8L,0x3620D7AD1C5595F8L,0x3620D7AD1C5595F8L,0x3620D7AD1C5595F8L,0x3620D7AD1C5595F8L};
            uint8_t **l_240 = &l_154;
            int64_t *l_280[6][9][4] = {{{&l_194[0],&l_194[0],&l_194[0],&l_179},{&l_194[0],&l_194[0],&l_194[0],&l_179},{&l_194[0],&l_194[0],&l_194[0],&l_179},{&l_194[0],&l_194[0],&l_194[0],&l_179},{&l_194[0],&l_194[0],&l_194[0],&l_179},{&l_194[0],&l_194[0],&l_194[0],&l_179},{&l_194[0],&l_194[0],&l_194[0],&l_179},{&l_194[0],&l_194[0],&l_194[0],&l_179},{&l_194[0],&l_194[0],&l_194[0],&l_179}},{{&l_194[0],&l_194[0],&l_194[0],&l_179},{&l_194[0],&l_194[0],&l_194[0],&l_179},{&l_194[0],&l_194[0],&l_194[0],&l_179},{&l_194[0],&l_194[0],&l_194[0],&l_179},{&l_194[0],&l_194[0],&l_194[0],&l_179},{&l_194[0],&l_194[0],&l_194[0],&l_179},{&l_194[0],&l_194[0],&l_194[0],&l_179},{&l_194[0],&l_194[0],&l_194[0],&l_179},{&l_194[0],&l_194[0],&l_194[0],&l_179}},{{&l_194[0],&l_194[0],&l_194[0],&l_179},{&l_194[0],&l_194[0],&l_194[0],&l_179},{&l_194[0],&l_194[0],&l_194[0],&l_179},{&l_194[0],&l_194[0],&l_194[0],&l_179},{&l_194[0],&l_194[0],&l_194[0],&l_179},{&l_194[0],&l_194[0],&l_194[0],&l_179},{&l_194[0],&l_194[0],&l_194[0],&l_179},{&l_194[0],&l_194[0],&l_194[0],&l_179},{&l_194[0],&l_194[0],&l_194[0],&l_179}},{{&l_194[0],&l_194[0],&l_194[0],&l_179},{&l_194[0],&l_194[0],&l_194[0],&l_179},{&l_194[0],&l_194[0],&l_194[0],&l_179},{&l_194[0],&l_194[0],&l_194[0],&l_179},{&l_194[0],&l_194[0],&l_194[0],&l_179},{&l_194[0],&l_194[0],&l_194[0],&l_179},{&l_194[0],&l_194[0],&l_194[0],&l_179},{&l_194[0],&l_194[0],&l_194[0],&l_179},{&l_194[0],&l_194[0],&l_194[0],&l_179}},{{&l_194[0],&l_194[0],&l_194[0],&l_179},{&l_194[0],&l_194[0],&l_194[0],&l_179},{&l_194[0],&l_194[0],&l_194[0],&l_179},{&l_194[0],&l_194[0],&l_194[0],&l_179},{&l_194[0],&l_194[0],&l_194[0],&l_179},{&l_194[0],&l_194[0],&l_194[0],&l_179},{&l_194[0],&l_194[0],&l_194[0],&l_179},{&l_194[0],&l_194[0],&l_194[0],&l_179},{&l_194[0],&l_194[0],&l_194[0],&l_179}},{{&l_194[0],&l_194[0],&l_194[0],&l_179},{&l_194[0],&l_194[0],&l_194[0],&l_179},{&l_194[0],&l_194[0],&l_194[0],&l_179},{&l_194[0],&l_194[0],&l_194[0],&l_179},{&l_194[0],&l_194[0],&l_194[0],&l_179},{&l_194[0],&l_194[0],&l_194[0],&l_179},{&l_194[0],&l_194[0],&l_194[0],&l_179},{&l_194[0],&l_194[0],&l_194[0],&l_179},{&l_194[0],&l_194[0],&l_194[0],&l_179}}};
            int i, j, k;
            if ((p_1868->g_61 > (((((l_156 == (safe_add_func_uint64_t_u_u((65527UL | (safe_mul_func_uint8_t_u_u((safe_mod_func_uint8_t_u_u((safe_add_func_int32_t_s_s((safe_add_func_uint8_t_u_u(((((((safe_mod_func_uint8_t_u_u((0xBB82BABF4834D8CAL && l_171[2][3]), 0xFFL)) ^ (p_1868->g_141 >= (!(safe_mod_func_int32_t_s_s(((*l_182) = (((*l_180) = (((((((*l_177) ^= ((*l_176) &= p_1868->g_22)) == (p_1868->g_73[0] && p_1868->g_22)) , p_109) ^ 65535UL) < l_179) , l_129)) == p_1868->g_181)), l_133))))) != l_133) > p_1868->g_63) , (void*)0) == l_183), 0x25L)), (**p_107))), 1L)), FAKE_DIVERGE(p_1868->group_1_offset, get_group_id(1), 10)))), GROUP_DIVERGE(2, 1)))) < p_109) >= 4294967289UL) , 1L) | l_133)))
            { /* block id: 71 */
                int64_t *l_184 = (void*)0;
                int64_t *l_185[1];
                int32_t l_186[2][1];
                int8_t *l_209 = (void*)0;
                int i, j;
                for (i = 0; i < 1; i++)
                    l_185[i] = &l_179;
                for (i = 0; i < 2; i++)
                {
                    for (j = 0; j < 1; j++)
                        l_186[i][j] = 0x1CA37C21L;
                }
                (*p_1868->g_189) = ((l_186[1][0] |= (l_145[1][4][0] ^= p_1868->g_128)) && (safe_rshift_func_int8_t_s_u((*l_182), 3)));
                for (p_1868->g_140 = 0; (p_1868->g_140 == 14); ++p_1868->g_140)
                { /* block id: 77 */
                    int32_t *l_192 = &p_1868->g_63;
                    int32_t *l_193[6][8][5] = {{{(void*)0,&p_1868->g_63,&p_1868->g_21,&p_1868->g_63,&p_1868->g_21},{(void*)0,&p_1868->g_63,&p_1868->g_21,&p_1868->g_63,&p_1868->g_21},{(void*)0,&p_1868->g_63,&p_1868->g_21,&p_1868->g_63,&p_1868->g_21},{(void*)0,&p_1868->g_63,&p_1868->g_21,&p_1868->g_63,&p_1868->g_21},{(void*)0,&p_1868->g_63,&p_1868->g_21,&p_1868->g_63,&p_1868->g_21},{(void*)0,&p_1868->g_63,&p_1868->g_21,&p_1868->g_63,&p_1868->g_21},{(void*)0,&p_1868->g_63,&p_1868->g_21,&p_1868->g_63,&p_1868->g_21},{(void*)0,&p_1868->g_63,&p_1868->g_21,&p_1868->g_63,&p_1868->g_21}},{{(void*)0,&p_1868->g_63,&p_1868->g_21,&p_1868->g_63,&p_1868->g_21},{(void*)0,&p_1868->g_63,&p_1868->g_21,&p_1868->g_63,&p_1868->g_21},{(void*)0,&p_1868->g_63,&p_1868->g_21,&p_1868->g_63,&p_1868->g_21},{(void*)0,&p_1868->g_63,&p_1868->g_21,&p_1868->g_63,&p_1868->g_21},{(void*)0,&p_1868->g_63,&p_1868->g_21,&p_1868->g_63,&p_1868->g_21},{(void*)0,&p_1868->g_63,&p_1868->g_21,&p_1868->g_63,&p_1868->g_21},{(void*)0,&p_1868->g_63,&p_1868->g_21,&p_1868->g_63,&p_1868->g_21},{(void*)0,&p_1868->g_63,&p_1868->g_21,&p_1868->g_63,&p_1868->g_21}},{{(void*)0,&p_1868->g_63,&p_1868->g_21,&p_1868->g_63,&p_1868->g_21},{(void*)0,&p_1868->g_63,&p_1868->g_21,&p_1868->g_63,&p_1868->g_21},{(void*)0,&p_1868->g_63,&p_1868->g_21,&p_1868->g_63,&p_1868->g_21},{(void*)0,&p_1868->g_63,&p_1868->g_21,&p_1868->g_63,&p_1868->g_21},{(void*)0,&p_1868->g_63,&p_1868->g_21,&p_1868->g_63,&p_1868->g_21},{(void*)0,&p_1868->g_63,&p_1868->g_21,&p_1868->g_63,&p_1868->g_21},{(void*)0,&p_1868->g_63,&p_1868->g_21,&p_1868->g_63,&p_1868->g_21},{(void*)0,&p_1868->g_63,&p_1868->g_21,&p_1868->g_63,&p_1868->g_21}},{{(void*)0,&p_1868->g_63,&p_1868->g_21,&p_1868->g_63,&p_1868->g_21},{(void*)0,&p_1868->g_63,&p_1868->g_21,&p_1868->g_63,&p_1868->g_21},{(void*)0,&p_1868->g_63,&p_1868->g_21,&p_1868->g_63,&p_1868->g_21},{(void*)0,&p_1868->g_63,&p_1868->g_21,&p_1868->g_63,&p_1868->g_21},{(void*)0,&p_1868->g_63,&p_1868->g_21,&p_1868->g_63,&p_1868->g_21},{(void*)0,&p_1868->g_63,&p_1868->g_21,&p_1868->g_63,&p_1868->g_21},{(void*)0,&p_1868->g_63,&p_1868->g_21,&p_1868->g_63,&p_1868->g_21},{(void*)0,&p_1868->g_63,&p_1868->g_21,&p_1868->g_63,&p_1868->g_21}},{{(void*)0,&p_1868->g_63,&p_1868->g_21,&p_1868->g_63,&p_1868->g_21},{(void*)0,&p_1868->g_63,&p_1868->g_21,&p_1868->g_63,&p_1868->g_21},{(void*)0,&p_1868->g_63,&p_1868->g_21,&p_1868->g_63,&p_1868->g_21},{(void*)0,&p_1868->g_63,&p_1868->g_21,&p_1868->g_63,&p_1868->g_21},{(void*)0,&p_1868->g_63,&p_1868->g_21,&p_1868->g_63,&p_1868->g_21},{(void*)0,&p_1868->g_63,&p_1868->g_21,&p_1868->g_63,&p_1868->g_21},{(void*)0,&p_1868->g_63,&p_1868->g_21,&p_1868->g_63,&p_1868->g_21},{(void*)0,&p_1868->g_63,&p_1868->g_21,&p_1868->g_63,&p_1868->g_21}},{{(void*)0,&p_1868->g_63,&p_1868->g_21,&p_1868->g_63,&p_1868->g_21},{(void*)0,&p_1868->g_63,&p_1868->g_21,&p_1868->g_63,&p_1868->g_21},{(void*)0,&p_1868->g_63,&p_1868->g_21,&p_1868->g_63,&p_1868->g_21},{(void*)0,&p_1868->g_63,&p_1868->g_21,&p_1868->g_63,&p_1868->g_21},{(void*)0,&p_1868->g_63,&p_1868->g_21,&p_1868->g_63,&p_1868->g_21},{(void*)0,&p_1868->g_63,&p_1868->g_21,&p_1868->g_63,&p_1868->g_21},{(void*)0,&p_1868->g_63,&p_1868->g_21,&p_1868->g_63,&p_1868->g_21},{(void*)0,&p_1868->g_63,&p_1868->g_21,&p_1868->g_63,&p_1868->g_21}}};
                    int8_t l_200[3][5] = {{0x7AL,0x7AL,0x7AL,0x7AL,0x7AL},{0x7AL,0x7AL,0x7AL,0x7AL,0x7AL},{0x7AL,0x7AL,0x7AL,0x7AL,0x7AL}};
                    int i, j, k;
                    ++l_202;
                }
                for (p_109 = 0; (p_109 > 21); ++p_109)
                { /* block id: 82 */
                    int8_t l_216[1];
                    int32_t l_220 = 1L;
                    int32_t l_221[6];
                    int32_t l_252[6][4];
                    int i, j;
                    for (i = 0; i < 1; i++)
                        l_216[i] = 1L;
                    for (i = 0; i < 6; i++)
                        l_221[i] = 2L;
                    for (i = 0; i < 6; i++)
                    {
                        for (j = 0; j < 4; j++)
                            l_252[i][j] = 0x594CEC3EL;
                    }
                    if ((safe_unary_minus_func_uint16_t_u((((*l_180) = p_1868->g_208) == l_209))))
                    { /* block id: 84 */
                        uint8_t l_210 = 249UL;
                        int32_t *l_213 = &l_198;
                        int32_t *l_214 = &l_195[5][2][0];
                        int32_t *l_215[1][3][1];
                        uint8_t l_217 = 251UL;
                        int i, j, k;
                        for (i = 0; i < 1; i++)
                        {
                            for (j = 0; j < 3; j++)
                            {
                                for (k = 0; k < 1; k++)
                                    l_215[i][j][k] = &l_145[0][4][1];
                            }
                        }
                        (*p_107) = (*p_1868->g_110);
                        ++l_210;
                        ++l_217;
                        --l_223[3];
                    }
                    else
                    { /* block id: 89 */
                        uint8_t ***l_242 = &p_1868->g_241;
                        int32_t l_251[5];
                        int32_t l_253[6] = {(-1L),0x5174AD92L,(-1L),(-1L),0x5174AD92L,(-1L)};
                        int i;
                        for (i = 0; i < 5; i++)
                            l_251[i] = (-1L);
                        if ((*p_1868->g_189))
                            break;
                        (*l_182) = (safe_lshift_func_int8_t_s_u((l_253[0] ^= (safe_rshift_func_uint16_t_u_s((((*p_1868->g_189) == (((+p_1868->g_140) & (safe_div_func_int32_t_s_s((((FAKE_DIVERGE(p_1868->group_2_offset, get_group_id(2), 10) < (0L ^ (safe_rshift_func_int16_t_s_u((p_1868->g_128 ^ (l_252[4][2] ^= (safe_lshift_func_int16_t_s_s(l_221[4], (safe_sub_func_int8_t_s_s(((safe_rshift_func_uint16_t_u_s(((l_240 == ((*l_242) = p_1868->g_241)) && (0x69L & (safe_rshift_func_uint16_t_u_u((safe_rshift_func_uint8_t_u_u(((safe_sub_func_int32_t_s_s(((((safe_mul_func_uint8_t_u_u(l_251[3], l_220)) >= 251UL) <= l_145[1][4][1]) , 1L), (*p_108))) , 0xDCL), 6)), 12)))), p_1868->g_42)) ^ 4L), p_1868->g_21)))))), 13)))) , (void*)0) == &p_1868->g_181), l_251[4]))) == l_251[3])) ^ 0x8E3DL), 1))), GROUP_DIVERGE(1, 1)));
                        if ((*p_1868->g_189))
                            break;
                    }
                }
            }
            else
            { /* block id: 98 */
                uint16_t *l_264[10];
                int i;
                for (i = 0; i < 10; i++)
                    l_264[i] = &l_118;
                l_277[3][0][0] = ((safe_mod_func_uint16_t_u_u(0xC1C0L, (safe_mul_func_int16_t_s_s((GROUP_DIVERGE(1, 1) && ((safe_add_func_uint16_t_u_u(((safe_lshift_func_uint16_t_u_s((safe_div_func_int64_t_s_s(l_199[1], p_109)), 14)) | 0x5E05E85FD5CD2B4CL), (++p_1868->g_265[5][4][2]))) != p_109)), (l_268[2] > (safe_rshift_func_int16_t_s_s(p_1868->g_178, 7))))))) > ((safe_rshift_func_int8_t_s_s(((*l_176) = ((safe_lshift_func_uint8_t_u_s(((safe_lshift_func_uint16_t_u_s((l_145[0][4][1] = ((((*p_1868->g_189) < (-9L)) , GROUP_DIVERGE(2, 1)) & p_109)), p_109)) > (-1L)), l_179)) & 0L)), 2)) == 4UL));
                (*p_1868->g_110) = (*p_107);
            }
            (*l_182) = (safe_add_func_int64_t_s_s((p_1868->g_281[1] = (&l_222[2] == (void*)0)), p_1868->g_17[1][7][0]));
        }
        l_199[2] = ((1L && p_1868->g_42) < 0x20L);
        for (l_198 = (-12); (l_198 != 22); l_198 = safe_add_func_uint64_t_u_u(l_198, 1))
        { /* block id: 111 */
            uint64_t l_312 = 0xCB8FEE07C89B16D8L;
            int32_t l_323 = 8L;
            (*p_107) = (*p_1868->g_110);
            if ((**p_107))
                continue;
            for (l_201 = 12; (l_201 > 25); ++l_201)
            { /* block id: 116 */
                for (l_196 = 0; (l_196 == (-9)); l_196 = safe_sub_func_int16_t_s_s(l_196, 3))
                { /* block id: 119 */
                    int32_t l_296 = 0x4B26E2E9L;
                    int32_t l_299 = 6L;
                    int32_t l_300 = (-8L);
                    int32_t l_301 = 4L;
                    int32_t l_302 = 6L;
                    int32_t l_303 = 5L;
                    int32_t l_304[5];
                    uint64_t l_305 = 18446744073709551615UL;
                    int i;
                    for (i = 0; i < 5; i++)
                        l_304[i] = (-1L);
                    for (p_1868->g_140 = (-14); (p_1868->g_140 <= 21); p_1868->g_140++)
                    { /* block id: 122 */
                        int32_t *l_290 = &l_145[1][0][1];
                        int32_t *l_291 = &l_197;
                        int32_t *l_292 = &p_1868->g_63;
                        int32_t l_293[7] = {1L,0x478E6184L,1L,1L,0x478E6184L,1L,1L};
                        int32_t *l_294 = &l_293[4];
                        int32_t *l_295[1];
                        int32_t l_297 = 0L;
                        int i;
                        for (i = 0; i < 1; i++)
                            l_295[i] = &p_1868->g_63;
                        ++l_305;
                    }
                }
            }
            if (((safe_rshift_func_uint8_t_u_s((safe_rshift_func_int8_t_s_s(l_312, ((safe_sub_func_int64_t_s_s((safe_lshift_func_int16_t_s_u(1L, 14)), (~p_109))) == (safe_add_func_uint64_t_u_u((safe_rshift_func_int8_t_s_u(0L, 3)), p_1868->g_81[4][7][1]))))), ((*p_1868->g_208) = ((safe_rshift_func_int16_t_s_u(((((l_199[0] = ((l_323 = 0xFB4B6336E1642DF2L) | ((((((l_145[0][3][0] != (((safe_unary_minus_func_uint8_t_u(1UL)) , ((l_329 ^= (((safe_mul_func_int16_t_s_s(((safe_sub_func_uint16_t_u_u((((p_1868->g_241 != &l_129) < (*p_1868->g_208)) && 0xBE23026EL), p_1868->g_17[1][7][0])) , l_171[2][6]), p_109)) > 0x6B7AL) > p_1868->g_178)) == l_171[5][4])) , (-1L))) , &l_129) != &l_154) || p_109) , l_199[6]) == FAKE_DIVERGE(p_1868->group_2_offset, get_group_id(2), 10)))) , p_1868->g_17[0][7][3]) <= 0x02L) <= (**p_1868->g_110)), p_109)) == (**p_1868->g_110))))) != 8L))
            { /* block id: 131 */
                int32_t *l_330 = (void*)0;
                int32_t *l_331 = &l_145[0][3][0];
                (*l_331) ^= (**p_107);
            }
            else
            { /* block id: 133 */
                (*p_1868->g_110) = (*p_1868->g_110);
            }
        }
    }
    else
    { /* block id: 137 */
        uint16_t l_337 = 1UL;
        int32_t *l_341 = &l_145[0][4][1];
        uint64_t *l_356 = &p_1868->g_140;
        int32_t l_366 = (-3L);
        int32_t l_382 = 0x6F2E98F4L;
        int32_t l_383 = 2L;
        int32_t l_384 = 0x63DEA15CL;
        int32_t l_390 = 0x4A99CD74L;
        int32_t l_391 = 0x26100C7DL;
        int8_t l_392 = 7L;
        uint8_t ***l_423 = &p_1868->g_241;
        (*l_341) = (safe_rshift_func_int16_t_s_u(((safe_sub_func_uint8_t_u_u(p_109, p_109)) , 0L), (((0UL ^ (*p_108)) , l_336) | (l_337 ^ (safe_mul_func_uint16_t_u_u(0x3DAFL, 0x6E3BL))))));
        for (l_337 = (-21); (l_337 >= 13); l_337 = safe_add_func_uint64_t_u_u(l_337, 1))
        { /* block id: 141 */
            uint64_t **l_357 = &l_356;
            uint64_t *l_359 = &p_1868->g_265[5][4][2];
            uint64_t **l_358[9][10] = {{&l_359,&l_359,&l_359,(void*)0,&l_359,&l_359,(void*)0,&l_359,(void*)0,&l_359},{&l_359,&l_359,&l_359,(void*)0,&l_359,&l_359,(void*)0,&l_359,(void*)0,&l_359},{&l_359,&l_359,&l_359,(void*)0,&l_359,&l_359,(void*)0,&l_359,(void*)0,&l_359},{&l_359,&l_359,&l_359,(void*)0,&l_359,&l_359,(void*)0,&l_359,(void*)0,&l_359},{&l_359,&l_359,&l_359,(void*)0,&l_359,&l_359,(void*)0,&l_359,(void*)0,&l_359},{&l_359,&l_359,&l_359,(void*)0,&l_359,&l_359,(void*)0,&l_359,(void*)0,&l_359},{&l_359,&l_359,&l_359,(void*)0,&l_359,&l_359,(void*)0,&l_359,(void*)0,&l_359},{&l_359,&l_359,&l_359,(void*)0,&l_359,&l_359,(void*)0,&l_359,(void*)0,&l_359},{&l_359,&l_359,&l_359,(void*)0,&l_359,&l_359,(void*)0,&l_359,(void*)0,&l_359}};
            int32_t l_363 = (-1L);
            int32_t l_364 = 0x37D46871L;
            int32_t *l_365 = &l_364;
            int32_t l_375[6] = {0x0EF12239L,0x0EF12239L,0x0EF12239L,0x0EF12239L,0x0EF12239L,0x0EF12239L};
            int64_t l_440 = 9L;
            int i, j;
            (1 + 1);
        }
    }
    for (l_118 = 0; (l_118 <= 3); l_118 += 1)
    { /* block id: 183 */
        int32_t *l_451 = &p_1868->g_22;
        int32_t **l_450[3][4];
        int8_t **l_477 = &p_1868->g_208;
        int32_t l_478 = 0x7AA47D2EL;
        uint8_t *l_480 = &l_202;
        uint8_t ***l_512 = &p_1868->g_241;
        int i, j;
        for (i = 0; i < 3; i++)
        {
            for (j = 0; j < 4; j++)
                l_450[i][j] = &l_451;
        }
        (*p_1868->g_189) = (safe_rshift_func_uint16_t_u_u(0x3148L, 8));
        l_145[1][2][1] = (safe_rshift_func_int8_t_s_s(((((safe_unary_minus_func_uint32_t_u((safe_add_func_int8_t_s_s((+0x3CL), ((*p_1868->g_110) != (l_452 = (*p_107))))))) >= (safe_div_func_int8_t_s_s((((safe_mul_func_uint16_t_u_u((safe_sub_func_uint8_t_u_u(((0UL < ((*l_480) &= (safe_sub_func_int16_t_s_s((((((*l_127) &= ((p_1868->g_73[l_118] || p_109) ^ (-5L))) & (safe_rshift_func_int16_t_s_u((safe_lshift_func_int8_t_s_u((safe_mod_func_uint64_t_u_u((safe_div_func_int8_t_s_s(((safe_mul_func_int16_t_s_s((((safe_mul_func_uint8_t_u_u(p_109, (safe_mul_func_int16_t_s_s(((safe_div_func_uint16_t_u_u((&p_1868->g_181 == l_477), l_478)) & 0L), FAKE_DIVERGE(p_1868->local_1_offset, get_local_id(1), 10))))) , 0x38C9L) && (*l_451)), p_109)) , p_109), (*p_1868->g_208))), p_1868->g_42)), 2)), l_479))) < 0x0D25C6EDAE6873DCL) < 1UL), p_1868->g_131)))) & 1UL), (-9L))), p_1868->g_281[1])) <= p_1868->g_131) == l_329), p_109))) | 0x99L) >= p_109), (*l_451)));
    }
    for (l_336 = 1; (l_336 >= 0); l_336 -= 1)
    { /* block id: 219 */
        int32_t l_530[4] = {3L,3L,3L,3L};
        uint64_t **l_531 = &p_1868->g_360;
        int32_t *l_532 = &l_380;
        int8_t **l_552 = (void*)0;
        int i;
        (*l_532) |= (l_515[5][6] == ((safe_unary_minus_func_uint32_t_u(0x8FCD13F8L)) , (l_531 = ((((l_530[2] = ((l_268[l_336] && (l_268[(l_336 + 6)] , ((((p_109 >= ((safe_add_func_int64_t_s_s(p_109, (((*l_452) ^ (safe_sub_func_int16_t_s_s((safe_add_func_uint8_t_u_u((FAKE_DIVERGE(p_1868->local_0_offset, get_local_id(0), 10) ^ l_525), (safe_mod_func_uint64_t_u_u((((FAKE_DIVERGE(p_1868->global_0_offset, get_global_id(0), 10) , ((((*p_1868->g_360) = (((safe_sub_func_int64_t_s_s((*l_452), p_1868->g_298)) , 0xE6A83AA1088CE8F4L) , 1UL)) ^ 0xA2BFFFA3E8ADD36BL) | p_109)) , 65526UL) & GROUP_DIVERGE(0, 1)), GROUP_DIVERGE(2, 1))))), p_109))) > l_268[l_336]))) , p_1868->g_281[0])) ^ (-5L)) == 0x65L) > 0x32L))) <= p_109)) > (-1L)) ^ 0x4260C805L) , (void*)0))));
        for (p_1868->g_414 = 0; (p_1868->g_414 <= 1); p_1868->g_414 += 1)
        { /* block id: 226 */
            uint32_t l_533 = 7UL;
            int32_t l_577 = 1L;
            int32_t l_592 = 0x6B129EF4L;
            for (p_1868->g_140 = 0; (p_1868->g_140 <= 1); p_1868->g_140 += 1)
            { /* block id: 229 */
                uint8_t *l_534 = &p_1868->g_131;
                int32_t l_550 = 0x7F056E82L;
                int8_t **l_553 = &p_1868->g_208;
                int i, j, k;
                (*l_532) = (l_145[l_336][(p_1868->g_140 + 3)][p_1868->g_414] ^= (-1L));
                (*l_532) = (((l_533 ^ ((((void*)0 == l_534) > ((~p_1868->g_17[2][1][5]) , (safe_sub_func_int32_t_s_s((((safe_mod_func_int64_t_s_s(((0x6C9DL > ((*l_488) = 0x1783L)) , p_109), ((p_1868->g_551[1][0] = (safe_add_func_int64_t_s_s((safe_sub_func_int8_t_s_s(((safe_rshift_func_uint8_t_u_s(((safe_lshift_func_int16_t_s_s((safe_rshift_func_uint8_t_u_s((p_109 && ((safe_unary_minus_func_uint32_t_u((l_550 < 0L))) <= (-1L))), (*l_532))), p_109)) && FAKE_DIVERGE(p_1868->local_0_offset, get_local_id(0), 10)), 6)) > (*l_452)), 252UL)), p_1868->g_265[5][4][2]))) | p_1868->g_414))) <= p_1868->g_424) ^ 0x491A4AD8L), (**p_107))))) && p_109)) , l_552) == l_553);
            }
            for (l_385 = 6; (l_385 >= 1); l_385 -= 1)
            { /* block id: 238 */
                int i;
                for (l_533 = 0; l_533 < 6; l_533 += 1)
                {
                    for (l_329 = 0; l_329 < 7; l_329 += 1)
                    {
                        l_171[l_533][l_329] = 0x6B73B2E8L;
                    }
                }
                return p_1868->g_281[(p_1868->g_414 + 3)];
            }
            (*l_532) = (safe_lshift_func_int8_t_s_u((-9L), 2));
            for (p_1868->g_140 = 0; (p_1868->g_140 <= 5); p_1868->g_140 += 1)
            { /* block id: 245 */
                int32_t **l_588 = &l_587[6][2];
                int64_t *l_589[3][9][9] = {{{&p_1868->g_438,&p_1868->g_438,(void*)0,&p_1868->g_438,&p_1868->g_438,&l_479,(void*)0,&p_1868->g_438,(void*)0},{&p_1868->g_438,&p_1868->g_438,(void*)0,&p_1868->g_438,&p_1868->g_438,&l_479,(void*)0,&p_1868->g_438,(void*)0},{&p_1868->g_438,&p_1868->g_438,(void*)0,&p_1868->g_438,&p_1868->g_438,&l_479,(void*)0,&p_1868->g_438,(void*)0},{&p_1868->g_438,&p_1868->g_438,(void*)0,&p_1868->g_438,&p_1868->g_438,&l_479,(void*)0,&p_1868->g_438,(void*)0},{&p_1868->g_438,&p_1868->g_438,(void*)0,&p_1868->g_438,&p_1868->g_438,&l_479,(void*)0,&p_1868->g_438,(void*)0},{&p_1868->g_438,&p_1868->g_438,(void*)0,&p_1868->g_438,&p_1868->g_438,&l_479,(void*)0,&p_1868->g_438,(void*)0},{&p_1868->g_438,&p_1868->g_438,(void*)0,&p_1868->g_438,&p_1868->g_438,&l_479,(void*)0,&p_1868->g_438,(void*)0},{&p_1868->g_438,&p_1868->g_438,(void*)0,&p_1868->g_438,&p_1868->g_438,&l_479,(void*)0,&p_1868->g_438,(void*)0},{&p_1868->g_438,&p_1868->g_438,(void*)0,&p_1868->g_438,&p_1868->g_438,&l_479,(void*)0,&p_1868->g_438,(void*)0}},{{&p_1868->g_438,&p_1868->g_438,(void*)0,&p_1868->g_438,&p_1868->g_438,&l_479,(void*)0,&p_1868->g_438,(void*)0},{&p_1868->g_438,&p_1868->g_438,(void*)0,&p_1868->g_438,&p_1868->g_438,&l_479,(void*)0,&p_1868->g_438,(void*)0},{&p_1868->g_438,&p_1868->g_438,(void*)0,&p_1868->g_438,&p_1868->g_438,&l_479,(void*)0,&p_1868->g_438,(void*)0},{&p_1868->g_438,&p_1868->g_438,(void*)0,&p_1868->g_438,&p_1868->g_438,&l_479,(void*)0,&p_1868->g_438,(void*)0},{&p_1868->g_438,&p_1868->g_438,(void*)0,&p_1868->g_438,&p_1868->g_438,&l_479,(void*)0,&p_1868->g_438,(void*)0},{&p_1868->g_438,&p_1868->g_438,(void*)0,&p_1868->g_438,&p_1868->g_438,&l_479,(void*)0,&p_1868->g_438,(void*)0},{&p_1868->g_438,&p_1868->g_438,(void*)0,&p_1868->g_438,&p_1868->g_438,&l_479,(void*)0,&p_1868->g_438,(void*)0},{&p_1868->g_438,&p_1868->g_438,(void*)0,&p_1868->g_438,&p_1868->g_438,&l_479,(void*)0,&p_1868->g_438,(void*)0},{&p_1868->g_438,&p_1868->g_438,(void*)0,&p_1868->g_438,&p_1868->g_438,&l_479,(void*)0,&p_1868->g_438,(void*)0}},{{&p_1868->g_438,&p_1868->g_438,(void*)0,&p_1868->g_438,&p_1868->g_438,&l_479,(void*)0,&p_1868->g_438,(void*)0},{&p_1868->g_438,&p_1868->g_438,(void*)0,&p_1868->g_438,&p_1868->g_438,&l_479,(void*)0,&p_1868->g_438,(void*)0},{&p_1868->g_438,&p_1868->g_438,(void*)0,&p_1868->g_438,&p_1868->g_438,&l_479,(void*)0,&p_1868->g_438,(void*)0},{&p_1868->g_438,&p_1868->g_438,(void*)0,&p_1868->g_438,&p_1868->g_438,&l_479,(void*)0,&p_1868->g_438,(void*)0},{&p_1868->g_438,&p_1868->g_438,(void*)0,&p_1868->g_438,&p_1868->g_438,&l_479,(void*)0,&p_1868->g_438,(void*)0},{&p_1868->g_438,&p_1868->g_438,(void*)0,&p_1868->g_438,&p_1868->g_438,&l_479,(void*)0,&p_1868->g_438,(void*)0},{&p_1868->g_438,&p_1868->g_438,(void*)0,&p_1868->g_438,&p_1868->g_438,&l_479,(void*)0,&p_1868->g_438,(void*)0},{&p_1868->g_438,&p_1868->g_438,(void*)0,&p_1868->g_438,&p_1868->g_438,&l_479,(void*)0,&p_1868->g_438,(void*)0},{&p_1868->g_438,&p_1868->g_438,(void*)0,&p_1868->g_438,&p_1868->g_438,&l_479,(void*)0,&p_1868->g_438,(void*)0}}};
                int64_t l_590 = 0x51199B03CD82424EL;
                uint32_t *l_591 = &l_268[(l_336 + 6)];
                int i, j, k;
                l_329 ^= (safe_div_func_uint64_t_u_u(((((safe_add_func_uint64_t_u_u((safe_div_func_int16_t_s_s(((safe_sub_func_int16_t_s_s(((l_592 &= (safe_div_func_int8_t_s_s((p_1868->g_281[(p_1868->g_414 + 3)] || (((((*l_488) |= ((safe_add_func_int32_t_s_s((((p_1868->g_265[4][6][0] &= (safe_sub_func_int8_t_s_s(((safe_lshift_func_uint8_t_u_s((p_1868->g_572 >= (*p_108)), 2)) || (((safe_mul_func_uint8_t_u_u(250UL, ((safe_rshift_func_uint16_t_u_s((p_109 ^ (--(*l_130))), ((safe_mul_func_int8_t_s_s((((-1L) == (safe_div_func_int8_t_s_s((((*l_591) = ((safe_unary_minus_func_uint8_t_u((safe_lshift_func_int16_t_s_u((((((*l_588) = l_587[7][4]) == (void*)0) >= (l_577 = p_109)) | l_533), 4)))) & l_590)) && 0UL), p_109))) & p_1868->g_74), (*l_532))) != p_109))) < l_533))) & 0x20FC2177L) , p_1868->g_178)), p_1868->g_281[(p_1868->g_414 + 3)]))) ^ (*l_452)) >= (*l_532)), (**p_107))) < p_1868->g_281[(p_1868->g_414 + 3)])) ^ (*l_532)) & p_1868->g_21) < p_109)), p_109))) || (*l_532)), (*l_452))) == (-1L)), GROUP_DIVERGE(2, 1))), p_1868->g_551[1][0])) == p_109) <= (*p_1868->g_360)) , l_590), p_109));
            }
        }
        l_145[0][4][1] = (FAKE_DIVERGE(p_1868->group_1_offset, get_group_id(1), 10) , ((*l_452) ^ 1UL));
        for (l_118 = 0; (l_118 <= 1); l_118 += 1)
        { /* block id: 259 */
            uint8_t l_610 = 0x5DL;
            uint64_t *l_623 = &p_1868->g_265[2][6][0];
            for (p_1868->g_131 = 0; (p_1868->g_131 <= 1); p_1868->g_131 += 1)
            { /* block id: 262 */
                for (l_479 = 0; (l_479 <= 0); l_479 += 1)
                { /* block id: 265 */
                    int i, j, k;
                    return l_145[l_336][(l_336 + 3)][l_118];
                }
            }
            (*p_1868->g_110) = (*p_107);
            for (p_1868->g_131 = 0; (p_1868->g_131 <= 7); p_1868->g_131 += 1)
            { /* block id: 272 */
                uint16_t *l_600 = &p_1868->g_414;
                uint16_t *l_601 = &p_1868->g_602;
                uint16_t *l_603 = &p_1868->g_604;
                int32_t l_609 = 4L;
                int16_t ***l_611 = (void*)0;
                int16_t **l_612 = &l_488;
                int32_t ***l_615[3];
                int8_t *l_628 = (void*)0;
                int8_t *l_629 = (void*)0;
                int8_t *l_630 = (void*)0;
                int8_t *l_631 = &l_385;
                int8_t *l_632 = &p_1868->g_42;
                int i, j, k;
                for (i = 0; i < 3; i++)
                    l_615[i] = &p_1868->g_110;
                l_612 = (((((*p_1868->g_208) = (0x22107735L == l_268[p_1868->g_131])) , ((safe_unary_minus_func_uint64_t_u(((safe_rshift_func_int16_t_s_u(((*l_488) = 8L), (safe_mod_func_uint16_t_u_u(p_1868->g_81[4][7][1], ((*l_603) = ((*l_601) = (safe_lshift_func_int16_t_s_u(p_1868->g_140, ((*l_600) ^= ((*l_532) ^ 0x78DDFC343078D3A6L)))))))))) && (safe_mod_func_uint8_t_u_u((safe_add_func_int16_t_s_s((l_609 = (0xB1C8L != (*l_532))), l_610)), l_610))))) , (*p_1868->g_435))) != (void*)0) , (void*)0);
                l_145[l_118][(l_118 + 3)][l_336] ^= (safe_lshift_func_int8_t_s_u((((&p_1868->g_189 != (p_107 = &p_1868->g_111[3])) > (*l_532)) < ((safe_add_func_uint64_t_u_u(0x55B2405DBCEA74A4L, (safe_unary_minus_func_uint64_t_u(l_610)))) ^ (safe_lshift_func_int16_t_s_s((+(((safe_mod_func_int8_t_s_s(((*p_1868->g_208) = ((void*)0 == l_623)), (p_109 , ((*l_632) = (((((safe_mul_func_uint16_t_u_u((safe_mul_func_int8_t_s_s(((*l_631) ^= ((-1L) == p_109)), p_109)), FAKE_DIVERGE(p_1868->global_1_offset, get_global_id(1), 10))) , 0x93L) , FAKE_DIVERGE(p_1868->local_2_offset, get_local_id(2), 10)) >= p_1868->g_265[5][2][2]) & 0xDB30L))))) || p_109) | p_1868->g_73[2])), p_109)))), p_109));
                for (l_610 = 0; (l_610 <= 4); l_610 += 1)
                { /* block id: 287 */
                    uint8_t **l_647 = (void*)0;
                    int i, j, k;
                    (*p_107) = ((safe_add_func_int16_t_s_s(((safe_div_func_int64_t_s_s(((safe_add_func_int32_t_s_s((p_109 , (**p_107)), ((safe_mul_func_int16_t_s_s(((safe_mod_func_int32_t_s_s(((1UL <= (((safe_add_func_int32_t_s_s((safe_sub_func_uint64_t_u_u((*p_1868->g_360), (*p_1868->g_360))), (p_109 , (l_647 == (void*)0)))) == ((p_109 == (*p_1868->g_208)) || FAKE_DIVERGE(p_1868->local_0_offset, get_local_id(0), 10))) < p_109)) < p_109), 0x1C338857L)) && 1UL), p_1868->g_604)) > p_109))) != (*l_532)), p_1868->g_281[5])) && p_109), (-8L))) , (*p_1868->g_110));
                    (*l_532) &= (~(l_145[l_336][(l_336 + 3)][l_118] = 0L));
                    (*l_532) &= (**p_107);
                }
            }
            for (l_385 = 5; (l_385 >= 0); l_385 -= 1)
            { /* block id: 296 */
                int64_t *l_648 = &l_479;
                int i, j, k;
                l_145[l_118][(l_118 + 3)][l_336] = (p_1868->g_20 >= ((-1L) | ((*l_648) |= (p_109 || (l_610 < 0L)))));
            }
        }
    }
    return (*l_452);
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S0 c_1869;
    struct S0* p_1868 = &c_1869;
    struct S0 c_1870 = {
        {{{0x08905154L,4294967292UL,0UL,0x93BD5DE1L,0UL,4294967292UL,0x08905154L,4294967295UL},{0x08905154L,4294967292UL,0UL,0x93BD5DE1L,0UL,4294967292UL,0x08905154L,4294967295UL},{0x08905154L,4294967292UL,0UL,0x93BD5DE1L,0UL,4294967292UL,0x08905154L,4294967295UL},{0x08905154L,4294967292UL,0UL,0x93BD5DE1L,0UL,4294967292UL,0x08905154L,4294967295UL},{0x08905154L,4294967292UL,0UL,0x93BD5DE1L,0UL,4294967292UL,0x08905154L,4294967295UL},{0x08905154L,4294967292UL,0UL,0x93BD5DE1L,0UL,4294967292UL,0x08905154L,4294967295UL},{0x08905154L,4294967292UL,0UL,0x93BD5DE1L,0UL,4294967292UL,0x08905154L,4294967295UL},{0x08905154L,4294967292UL,0UL,0x93BD5DE1L,0UL,4294967292UL,0x08905154L,4294967295UL}},{{0x08905154L,4294967292UL,0UL,0x93BD5DE1L,0UL,4294967292UL,0x08905154L,4294967295UL},{0x08905154L,4294967292UL,0UL,0x93BD5DE1L,0UL,4294967292UL,0x08905154L,4294967295UL},{0x08905154L,4294967292UL,0UL,0x93BD5DE1L,0UL,4294967292UL,0x08905154L,4294967295UL},{0x08905154L,4294967292UL,0UL,0x93BD5DE1L,0UL,4294967292UL,0x08905154L,4294967295UL},{0x08905154L,4294967292UL,0UL,0x93BD5DE1L,0UL,4294967292UL,0x08905154L,4294967295UL},{0x08905154L,4294967292UL,0UL,0x93BD5DE1L,0UL,4294967292UL,0x08905154L,4294967295UL},{0x08905154L,4294967292UL,0UL,0x93BD5DE1L,0UL,4294967292UL,0x08905154L,4294967295UL},{0x08905154L,4294967292UL,0UL,0x93BD5DE1L,0UL,4294967292UL,0x08905154L,4294967295UL}},{{0x08905154L,4294967292UL,0UL,0x93BD5DE1L,0UL,4294967292UL,0x08905154L,4294967295UL},{0x08905154L,4294967292UL,0UL,0x93BD5DE1L,0UL,4294967292UL,0x08905154L,4294967295UL},{0x08905154L,4294967292UL,0UL,0x93BD5DE1L,0UL,4294967292UL,0x08905154L,4294967295UL},{0x08905154L,4294967292UL,0UL,0x93BD5DE1L,0UL,4294967292UL,0x08905154L,4294967295UL},{0x08905154L,4294967292UL,0UL,0x93BD5DE1L,0UL,4294967292UL,0x08905154L,4294967295UL},{0x08905154L,4294967292UL,0UL,0x93BD5DE1L,0UL,4294967292UL,0x08905154L,4294967295UL},{0x08905154L,4294967292UL,0UL,0x93BD5DE1L,0UL,4294967292UL,0x08905154L,4294967295UL},{0x08905154L,4294967292UL,0UL,0x93BD5DE1L,0UL,4294967292UL,0x08905154L,4294967295UL}},{{0x08905154L,4294967292UL,0UL,0x93BD5DE1L,0UL,4294967292UL,0x08905154L,4294967295UL},{0x08905154L,4294967292UL,0UL,0x93BD5DE1L,0UL,4294967292UL,0x08905154L,4294967295UL},{0x08905154L,4294967292UL,0UL,0x93BD5DE1L,0UL,4294967292UL,0x08905154L,4294967295UL},{0x08905154L,4294967292UL,0UL,0x93BD5DE1L,0UL,4294967292UL,0x08905154L,4294967295UL},{0x08905154L,4294967292UL,0UL,0x93BD5DE1L,0UL,4294967292UL,0x08905154L,4294967295UL},{0x08905154L,4294967292UL,0UL,0x93BD5DE1L,0UL,4294967292UL,0x08905154L,4294967295UL},{0x08905154L,4294967292UL,0UL,0x93BD5DE1L,0UL,4294967292UL,0x08905154L,4294967295UL},{0x08905154L,4294967292UL,0UL,0x93BD5DE1L,0UL,4294967292UL,0x08905154L,4294967295UL}}}, // p_1868->g_17
        0x205D7627L, // p_1868->g_20
        0x2D53A38DL, // p_1868->g_21
        0x04EDC022L, // p_1868->g_22
        4294967288UL, // p_1868->g_35
        8L, // p_1868->g_42
        4294967295UL, // p_1868->g_61
        1L, // p_1868->g_63
        {0x780411BCL,0x780411BCL,0x780411BCL,0x780411BCL}, // p_1868->g_73
        0x343DEF57L, // p_1868->g_74
        {{{0x64941AE2L,2L,7L,(-6L)},{0x64941AE2L,2L,7L,(-6L)},{0x64941AE2L,2L,7L,(-6L)},{0x64941AE2L,2L,7L,(-6L)},{0x64941AE2L,2L,7L,(-6L)},{0x64941AE2L,2L,7L,(-6L)},{0x64941AE2L,2L,7L,(-6L)},{0x64941AE2L,2L,7L,(-6L)},{0x64941AE2L,2L,7L,(-6L)}},{{0x64941AE2L,2L,7L,(-6L)},{0x64941AE2L,2L,7L,(-6L)},{0x64941AE2L,2L,7L,(-6L)},{0x64941AE2L,2L,7L,(-6L)},{0x64941AE2L,2L,7L,(-6L)},{0x64941AE2L,2L,7L,(-6L)},{0x64941AE2L,2L,7L,(-6L)},{0x64941AE2L,2L,7L,(-6L)},{0x64941AE2L,2L,7L,(-6L)}},{{0x64941AE2L,2L,7L,(-6L)},{0x64941AE2L,2L,7L,(-6L)},{0x64941AE2L,2L,7L,(-6L)},{0x64941AE2L,2L,7L,(-6L)},{0x64941AE2L,2L,7L,(-6L)},{0x64941AE2L,2L,7L,(-6L)},{0x64941AE2L,2L,7L,(-6L)},{0x64941AE2L,2L,7L,(-6L)},{0x64941AE2L,2L,7L,(-6L)}},{{0x64941AE2L,2L,7L,(-6L)},{0x64941AE2L,2L,7L,(-6L)},{0x64941AE2L,2L,7L,(-6L)},{0x64941AE2L,2L,7L,(-6L)},{0x64941AE2L,2L,7L,(-6L)},{0x64941AE2L,2L,7L,(-6L)},{0x64941AE2L,2L,7L,(-6L)},{0x64941AE2L,2L,7L,(-6L)},{0x64941AE2L,2L,7L,(-6L)}},{{0x64941AE2L,2L,7L,(-6L)},{0x64941AE2L,2L,7L,(-6L)},{0x64941AE2L,2L,7L,(-6L)},{0x64941AE2L,2L,7L,(-6L)},{0x64941AE2L,2L,7L,(-6L)},{0x64941AE2L,2L,7L,(-6L)},{0x64941AE2L,2L,7L,(-6L)},{0x64941AE2L,2L,7L,(-6L)},{0x64941AE2L,2L,7L,(-6L)}},{{0x64941AE2L,2L,7L,(-6L)},{0x64941AE2L,2L,7L,(-6L)},{0x64941AE2L,2L,7L,(-6L)},{0x64941AE2L,2L,7L,(-6L)},{0x64941AE2L,2L,7L,(-6L)},{0x64941AE2L,2L,7L,(-6L)},{0x64941AE2L,2L,7L,(-6L)},{0x64941AE2L,2L,7L,(-6L)},{0x64941AE2L,2L,7L,(-6L)}}}, // p_1868->g_81
        {&p_1868->g_63,&p_1868->g_63,&p_1868->g_63,&p_1868->g_63,&p_1868->g_63}, // p_1868->g_111
        &p_1868->g_111[4], // p_1868->g_110
        247UL, // p_1868->g_128
        0x22L, // p_1868->g_131
        0xB59A663178527E74L, // p_1868->g_140
        (-1L), // p_1868->g_141
        {{0x451E81E1L,(-1L),0x451E81E1L,0x451E81E1L},{0x451E81E1L,(-1L),0x451E81E1L,0x451E81E1L}}, // p_1868->g_144
        0L, // p_1868->g_178
        (void*)0, // p_1868->g_181
        &p_1868->g_63, // p_1868->g_189
        &p_1868->g_178, // p_1868->g_208
        (void*)0, // p_1868->g_241
        {{{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL},{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL},{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL},{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL},{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL},{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL},{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL},{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL},{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL}},{{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL},{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL},{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL},{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL},{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL},{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL},{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL},{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL},{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL}},{{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL},{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL},{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL},{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL},{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL},{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL},{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL},{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL},{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL}},{{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL},{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL},{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL},{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL},{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL},{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL},{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL},{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL},{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL}},{{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL},{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL},{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL},{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL},{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL},{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL},{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL},{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL},{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL}},{{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL},{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL},{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL},{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL},{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL},{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL},{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL},{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL},{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL}},{{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL},{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL},{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL},{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL},{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL},{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL},{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL},{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL},{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL}},{{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL},{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL},{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL},{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL},{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL},{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL},{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL},{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL},{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL}},{{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL},{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL},{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL},{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL},{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL},{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL},{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL},{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL},{18446744073709551615UL,18446744073709551615UL,0xD464D603F32B09EAL}}}, // p_1868->g_265
        {1L,1L,1L,1L,1L,1L,1L}, // p_1868->g_281
        (-8L), // p_1868->g_298
        (void*)0, // p_1868->g_340
        &p_1868->g_140, // p_1868->g_360
        0xAB53L, // p_1868->g_414
        0x6E4522F5L, // p_1868->g_424
        (void*)0, // p_1868->g_436
        &p_1868->g_436, // p_1868->g_435
        0x3F8AD4E4D2FAC505L, // p_1868->g_438
        (void*)0, // p_1868->g_491
        0x5203L, // p_1868->g_507
        1UL, // p_1868->g_514
        {{0UL},{0UL},{0UL},{0UL},{0UL},{0UL},{0UL}}, // p_1868->g_551
        0x9AL, // p_1868->g_572
        6UL, // p_1868->g_602
        0xC140L, // p_1868->g_604
        4294967289UL, // p_1868->g_664
        {1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL}, // p_1868->g_675
        0UL, // p_1868->g_685
        0x6AL, // p_1868->g_748
        &p_1868->g_438, // p_1868->g_767
        {{{&p_1868->g_767,&p_1868->g_767,&p_1868->g_767},{&p_1868->g_767,&p_1868->g_767,&p_1868->g_767},{&p_1868->g_767,&p_1868->g_767,&p_1868->g_767},{&p_1868->g_767,&p_1868->g_767,&p_1868->g_767},{&p_1868->g_767,&p_1868->g_767,&p_1868->g_767},{&p_1868->g_767,&p_1868->g_767,&p_1868->g_767},{&p_1868->g_767,&p_1868->g_767,&p_1868->g_767}},{{&p_1868->g_767,&p_1868->g_767,&p_1868->g_767},{&p_1868->g_767,&p_1868->g_767,&p_1868->g_767},{&p_1868->g_767,&p_1868->g_767,&p_1868->g_767},{&p_1868->g_767,&p_1868->g_767,&p_1868->g_767},{&p_1868->g_767,&p_1868->g_767,&p_1868->g_767},{&p_1868->g_767,&p_1868->g_767,&p_1868->g_767},{&p_1868->g_767,&p_1868->g_767,&p_1868->g_767}},{{&p_1868->g_767,&p_1868->g_767,&p_1868->g_767},{&p_1868->g_767,&p_1868->g_767,&p_1868->g_767},{&p_1868->g_767,&p_1868->g_767,&p_1868->g_767},{&p_1868->g_767,&p_1868->g_767,&p_1868->g_767},{&p_1868->g_767,&p_1868->g_767,&p_1868->g_767},{&p_1868->g_767,&p_1868->g_767,&p_1868->g_767},{&p_1868->g_767,&p_1868->g_767,&p_1868->g_767}},{{&p_1868->g_767,&p_1868->g_767,&p_1868->g_767},{&p_1868->g_767,&p_1868->g_767,&p_1868->g_767},{&p_1868->g_767,&p_1868->g_767,&p_1868->g_767},{&p_1868->g_767,&p_1868->g_767,&p_1868->g_767},{&p_1868->g_767,&p_1868->g_767,&p_1868->g_767},{&p_1868->g_767,&p_1868->g_767,&p_1868->g_767},{&p_1868->g_767,&p_1868->g_767,&p_1868->g_767}},{{&p_1868->g_767,&p_1868->g_767,&p_1868->g_767},{&p_1868->g_767,&p_1868->g_767,&p_1868->g_767},{&p_1868->g_767,&p_1868->g_767,&p_1868->g_767},{&p_1868->g_767,&p_1868->g_767,&p_1868->g_767},{&p_1868->g_767,&p_1868->g_767,&p_1868->g_767},{&p_1868->g_767,&p_1868->g_767,&p_1868->g_767},{&p_1868->g_767,&p_1868->g_767,&p_1868->g_767}},{{&p_1868->g_767,&p_1868->g_767,&p_1868->g_767},{&p_1868->g_767,&p_1868->g_767,&p_1868->g_767},{&p_1868->g_767,&p_1868->g_767,&p_1868->g_767},{&p_1868->g_767,&p_1868->g_767,&p_1868->g_767},{&p_1868->g_767,&p_1868->g_767,&p_1868->g_767},{&p_1868->g_767,&p_1868->g_767,&p_1868->g_767},{&p_1868->g_767,&p_1868->g_767,&p_1868->g_767}},{{&p_1868->g_767,&p_1868->g_767,&p_1868->g_767},{&p_1868->g_767,&p_1868->g_767,&p_1868->g_767},{&p_1868->g_767,&p_1868->g_767,&p_1868->g_767},{&p_1868->g_767,&p_1868->g_767,&p_1868->g_767},{&p_1868->g_767,&p_1868->g_767,&p_1868->g_767},{&p_1868->g_767,&p_1868->g_767,&p_1868->g_767},{&p_1868->g_767,&p_1868->g_767,&p_1868->g_767}},{{&p_1868->g_767,&p_1868->g_767,&p_1868->g_767},{&p_1868->g_767,&p_1868->g_767,&p_1868->g_767},{&p_1868->g_767,&p_1868->g_767,&p_1868->g_767},{&p_1868->g_767,&p_1868->g_767,&p_1868->g_767},{&p_1868->g_767,&p_1868->g_767,&p_1868->g_767},{&p_1868->g_767,&p_1868->g_767,&p_1868->g_767},{&p_1868->g_767,&p_1868->g_767,&p_1868->g_767}},{{&p_1868->g_767,&p_1868->g_767,&p_1868->g_767},{&p_1868->g_767,&p_1868->g_767,&p_1868->g_767},{&p_1868->g_767,&p_1868->g_767,&p_1868->g_767},{&p_1868->g_767,&p_1868->g_767,&p_1868->g_767},{&p_1868->g_767,&p_1868->g_767,&p_1868->g_767},{&p_1868->g_767,&p_1868->g_767,&p_1868->g_767},{&p_1868->g_767,&p_1868->g_767,&p_1868->g_767}},{{&p_1868->g_767,&p_1868->g_767,&p_1868->g_767},{&p_1868->g_767,&p_1868->g_767,&p_1868->g_767},{&p_1868->g_767,&p_1868->g_767,&p_1868->g_767},{&p_1868->g_767,&p_1868->g_767,&p_1868->g_767},{&p_1868->g_767,&p_1868->g_767,&p_1868->g_767},{&p_1868->g_767,&p_1868->g_767,&p_1868->g_767},{&p_1868->g_767,&p_1868->g_767,&p_1868->g_767}}}, // p_1868->g_766
        &p_1868->g_438, // p_1868->g_789
        (void*)0, // p_1868->g_811
        0x7DB41943L, // p_1868->g_836
        (-6L), // p_1868->g_854
        &p_1868->g_854, // p_1868->g_853
        (void*)0, // p_1868->g_881
        &p_1868->g_881, // p_1868->g_880
        &p_1868->g_436, // p_1868->g_913
        &p_1868->g_913, // p_1868->g_912
        &p_1868->g_507, // p_1868->g_918
        &p_1868->g_918, // p_1868->g_917
        &p_1868->g_917, // p_1868->g_916
        {{0x0780L,0x3B29L,0L,0x09E6L,1L,(-3L),(-3L),1L,0x09E6L},{0x0780L,0x3B29L,0L,0x09E6L,1L,(-3L),(-3L),1L,0x09E6L},{0x0780L,0x3B29L,0L,0x09E6L,1L,(-3L),(-3L),1L,0x09E6L},{0x0780L,0x3B29L,0L,0x09E6L,1L,(-3L),(-3L),1L,0x09E6L},{0x0780L,0x3B29L,0L,0x09E6L,1L,(-3L),(-3L),1L,0x09E6L},{0x0780L,0x3B29L,0L,0x09E6L,1L,(-3L),(-3L),1L,0x09E6L},{0x0780L,0x3B29L,0L,0x09E6L,1L,(-3L),(-3L),1L,0x09E6L},{0x0780L,0x3B29L,0L,0x09E6L,1L,(-3L),(-3L),1L,0x09E6L},{0x0780L,0x3B29L,0L,0x09E6L,1L,(-3L),(-3L),1L,0x09E6L}}, // p_1868->g_1097
        0x0AL, // p_1868->g_1128
        0x2DL, // p_1868->g_1161
        0xFED1A5282B3A7565L, // p_1868->g_1174
        0x248BB23EC73C34ECL, // p_1868->g_1211
        &p_1868->g_111[4], // p_1868->g_1242
        &p_1868->g_881, // p_1868->g_1292
        (-5L), // p_1868->g_1408
        &p_1868->g_42, // p_1868->g_1449
        {&p_1868->g_1449,&p_1868->g_1449,&p_1868->g_1449}, // p_1868->g_1448
        {0x3F24BDCDL,0x3F24BDCDL,0x3F24BDCDL,0x3F24BDCDL,0x3F24BDCDL,0x3F24BDCDL,0x3F24BDCDL,0x3F24BDCDL,0x3F24BDCDL}, // p_1868->g_1452
        &p_1868->g_360, // p_1868->g_1474
        &p_1868->g_144[0][3], // p_1868->g_1594
        {{&p_1868->g_1594,&p_1868->g_1594,&p_1868->g_1594,&p_1868->g_1594,&p_1868->g_1594,&p_1868->g_1594,&p_1868->g_1594,&p_1868->g_1594,&p_1868->g_1594,&p_1868->g_1594},{&p_1868->g_1594,&p_1868->g_1594,&p_1868->g_1594,&p_1868->g_1594,&p_1868->g_1594,&p_1868->g_1594,&p_1868->g_1594,&p_1868->g_1594,&p_1868->g_1594,&p_1868->g_1594},{&p_1868->g_1594,&p_1868->g_1594,&p_1868->g_1594,&p_1868->g_1594,&p_1868->g_1594,&p_1868->g_1594,&p_1868->g_1594,&p_1868->g_1594,&p_1868->g_1594,&p_1868->g_1594},{&p_1868->g_1594,&p_1868->g_1594,&p_1868->g_1594,&p_1868->g_1594,&p_1868->g_1594,&p_1868->g_1594,&p_1868->g_1594,&p_1868->g_1594,&p_1868->g_1594,&p_1868->g_1594},{&p_1868->g_1594,&p_1868->g_1594,&p_1868->g_1594,&p_1868->g_1594,&p_1868->g_1594,&p_1868->g_1594,&p_1868->g_1594,&p_1868->g_1594,&p_1868->g_1594,&p_1868->g_1594},{&p_1868->g_1594,&p_1868->g_1594,&p_1868->g_1594,&p_1868->g_1594,&p_1868->g_1594,&p_1868->g_1594,&p_1868->g_1594,&p_1868->g_1594,&p_1868->g_1594,&p_1868->g_1594},{&p_1868->g_1594,&p_1868->g_1594,&p_1868->g_1594,&p_1868->g_1594,&p_1868->g_1594,&p_1868->g_1594,&p_1868->g_1594,&p_1868->g_1594,&p_1868->g_1594,&p_1868->g_1594},{&p_1868->g_1594,&p_1868->g_1594,&p_1868->g_1594,&p_1868->g_1594,&p_1868->g_1594,&p_1868->g_1594,&p_1868->g_1594,&p_1868->g_1594,&p_1868->g_1594,&p_1868->g_1594},{&p_1868->g_1594,&p_1868->g_1594,&p_1868->g_1594,&p_1868->g_1594,&p_1868->g_1594,&p_1868->g_1594,&p_1868->g_1594,&p_1868->g_1594,&p_1868->g_1594,&p_1868->g_1594}}, // p_1868->g_1593
        &p_1868->g_1594, // p_1868->g_1596
        0x485D0E5BL, // p_1868->g_1667
        0xBF3EBBB424139EC3L, // p_1868->g_1694
        0x4BE55AE5L, // p_1868->g_1698
        {0x6A31540FL,0x6A31540FL,0x6A31540FL}, // p_1868->g_1701
        {{&p_1868->g_1474,&p_1868->g_1474,&p_1868->g_1474,&p_1868->g_1474,&p_1868->g_1474,&p_1868->g_1474,&p_1868->g_1474},{&p_1868->g_1474,&p_1868->g_1474,&p_1868->g_1474,&p_1868->g_1474,&p_1868->g_1474,&p_1868->g_1474,&p_1868->g_1474},{&p_1868->g_1474,&p_1868->g_1474,&p_1868->g_1474,&p_1868->g_1474,&p_1868->g_1474,&p_1868->g_1474,&p_1868->g_1474},{&p_1868->g_1474,&p_1868->g_1474,&p_1868->g_1474,&p_1868->g_1474,&p_1868->g_1474,&p_1868->g_1474,&p_1868->g_1474},{&p_1868->g_1474,&p_1868->g_1474,&p_1868->g_1474,&p_1868->g_1474,&p_1868->g_1474,&p_1868->g_1474,&p_1868->g_1474},{&p_1868->g_1474,&p_1868->g_1474,&p_1868->g_1474,&p_1868->g_1474,&p_1868->g_1474,&p_1868->g_1474,&p_1868->g_1474}}, // p_1868->g_1739
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_1868->g_1756
        &p_1868->g_1756[2], // p_1868->g_1755
        (void*)0, // p_1868->g_1825
        &p_1868->g_111[4], // p_1868->g_1847
        &p_1868->g_1847, // p_1868->g_1846
        &p_1868->g_1846, // p_1868->g_1845
        0xE8C38DDAL, // p_1868->g_1865
        sequence_input[get_global_id(0)], // p_1868->global_0_offset
        sequence_input[get_global_id(1)], // p_1868->global_1_offset
        sequence_input[get_global_id(2)], // p_1868->global_2_offset
        sequence_input[get_local_id(0)], // p_1868->local_0_offset
        sequence_input[get_local_id(1)], // p_1868->local_1_offset
        sequence_input[get_local_id(2)], // p_1868->local_2_offset
        sequence_input[get_group_id(0)], // p_1868->group_0_offset
        sequence_input[get_group_id(1)], // p_1868->group_1_offset
        sequence_input[get_group_id(2)], // p_1868->group_2_offset
    };
    c_1869 = c_1870;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1868);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 8; j++)
        {
            for (k = 0; k < 8; k++)
            {
                transparent_crc(p_1868->g_17[i][j][k], "p_1868->g_17[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1868->g_20, "p_1868->g_20", print_hash_value);
    transparent_crc(p_1868->g_21, "p_1868->g_21", print_hash_value);
    transparent_crc(p_1868->g_22, "p_1868->g_22", print_hash_value);
    transparent_crc(p_1868->g_35, "p_1868->g_35", print_hash_value);
    transparent_crc(p_1868->g_42, "p_1868->g_42", print_hash_value);
    transparent_crc(p_1868->g_61, "p_1868->g_61", print_hash_value);
    transparent_crc(p_1868->g_63, "p_1868->g_63", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1868->g_73[i], "p_1868->g_73[i]", print_hash_value);

    }
    transparent_crc(p_1868->g_74, "p_1868->g_74", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_1868->g_81[i][j][k], "p_1868->g_81[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1868->g_128, "p_1868->g_128", print_hash_value);
    transparent_crc(p_1868->g_131, "p_1868->g_131", print_hash_value);
    transparent_crc(p_1868->g_140, "p_1868->g_140", print_hash_value);
    transparent_crc(p_1868->g_141, "p_1868->g_141", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_1868->g_144[i][j], "p_1868->g_144[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1868->g_178, "p_1868->g_178", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_1868->g_265[i][j][k], "p_1868->g_265[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1868->g_281[i], "p_1868->g_281[i]", print_hash_value);

    }
    transparent_crc(p_1868->g_298, "p_1868->g_298", print_hash_value);
    transparent_crc(p_1868->g_414, "p_1868->g_414", print_hash_value);
    transparent_crc(p_1868->g_424, "p_1868->g_424", print_hash_value);
    transparent_crc(p_1868->g_438, "p_1868->g_438", print_hash_value);
    transparent_crc(p_1868->g_507, "p_1868->g_507", print_hash_value);
    transparent_crc(p_1868->g_514, "p_1868->g_514", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 1; j++)
        {
            transparent_crc(p_1868->g_551[i][j], "p_1868->g_551[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1868->g_572, "p_1868->g_572", print_hash_value);
    transparent_crc(p_1868->g_602, "p_1868->g_602", print_hash_value);
    transparent_crc(p_1868->g_604, "p_1868->g_604", print_hash_value);
    transparent_crc(p_1868->g_664, "p_1868->g_664", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1868->g_675[i], "p_1868->g_675[i]", print_hash_value);

    }
    transparent_crc(p_1868->g_685, "p_1868->g_685", print_hash_value);
    transparent_crc(p_1868->g_748, "p_1868->g_748", print_hash_value);
    transparent_crc(p_1868->g_836, "p_1868->g_836", print_hash_value);
    transparent_crc(p_1868->g_854, "p_1868->g_854", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_1868->g_1097[i][j], "p_1868->g_1097[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1868->g_1128, "p_1868->g_1128", print_hash_value);
    transparent_crc(p_1868->g_1161, "p_1868->g_1161", print_hash_value);
    transparent_crc(p_1868->g_1174, "p_1868->g_1174", print_hash_value);
    transparent_crc(p_1868->g_1211, "p_1868->g_1211", print_hash_value);
    transparent_crc(p_1868->g_1408, "p_1868->g_1408", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1868->g_1452[i], "p_1868->g_1452[i]", print_hash_value);

    }
    transparent_crc(p_1868->g_1667, "p_1868->g_1667", print_hash_value);
    transparent_crc(p_1868->g_1694, "p_1868->g_1694", print_hash_value);
    transparent_crc(p_1868->g_1698, "p_1868->g_1698", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_1868->g_1701[i], "p_1868->g_1701[i]", print_hash_value);

    }
    transparent_crc(p_1868->g_1865, "p_1868->g_1865", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
