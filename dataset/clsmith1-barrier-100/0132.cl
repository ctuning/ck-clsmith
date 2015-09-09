// ---fake_divergence ---inter_thread_comm -g 37,43,5 -l 37,1,1
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

__constant uint32_t permutations[10][37] = {
{19,25,27,5,23,33,17,1,22,6,31,26,12,4,20,8,0,7,35,9,36,2,18,16,14,21,3,13,10,32,28,30,34,11,15,24,29}, // permutation 0
{15,12,5,30,13,24,36,14,2,21,32,8,6,11,16,9,31,25,29,33,0,34,19,28,20,22,3,10,18,4,26,23,7,1,17,35,27}, // permutation 1
{30,13,21,11,28,25,17,35,9,10,5,36,27,12,1,22,23,7,15,19,31,2,3,33,14,24,6,20,32,4,34,29,26,0,8,16,18}, // permutation 2
{2,0,26,21,30,34,31,8,3,9,24,11,17,18,36,23,4,13,7,6,1,10,27,29,16,20,35,28,32,15,5,25,22,19,14,12,33}, // permutation 3
{7,23,18,21,24,12,17,15,32,36,3,19,10,35,28,31,11,2,27,8,1,13,22,26,14,6,16,29,20,30,5,4,0,9,25,34,33}, // permutation 4
{19,10,5,7,25,16,1,29,17,18,23,22,15,30,35,4,2,24,3,32,8,13,33,0,27,12,28,34,36,21,11,20,6,31,26,14,9}, // permutation 5
{31,36,0,25,26,4,27,11,21,6,5,18,7,35,33,17,8,30,15,22,14,24,20,32,23,3,1,10,13,9,12,16,28,29,19,34,2}, // permutation 6
{18,8,12,30,28,31,13,10,2,16,35,23,0,7,17,19,24,34,9,27,29,26,22,32,25,6,4,1,14,33,3,15,5,21,36,20,11}, // permutation 7
{17,5,32,31,22,34,27,36,25,28,26,23,14,7,35,4,6,19,1,11,18,29,8,20,16,0,21,10,12,33,2,9,24,15,30,3,13}, // permutation 8
{14,20,5,31,27,33,2,3,15,19,36,8,10,25,6,18,7,22,34,13,32,17,16,35,24,9,21,11,4,0,1,23,29,30,26,12,28} // permutation 9
};

// Seed: 132

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    int32_t g_2;
    volatile int32_t g_5;
    volatile int32_t g_6;
    volatile int32_t g_7[8];
    volatile int32_t g_8[4];
    int32_t g_9;
    int32_t g_29;
    uint8_t g_31[7];
    int16_t g_65;
    int32_t g_74[3];
    uint32_t g_97;
    int32_t g_109;
    int32_t *g_111;
    int32_t **g_110;
    int32_t *g_118[5][9][3];
    volatile int32_t g_123;
    volatile int32_t *g_122;
    volatile int32_t **g_121;
    uint16_t g_152;
    int32_t g_154;
    int8_t g_169;
    uint64_t g_179;
    uint16_t g_203;
    uint64_t g_208;
    uint8_t g_269;
    int8_t g_305;
    int32_t g_325;
    uint16_t g_369;
    uint64_t g_373;
    int64_t *g_456;
    int32_t g_492;
    uint32_t * volatile **g_514;
    uint32_t g_549;
    int16_t g_553[10];
    uint32_t g_602;
    int32_t **g_604[5][10];
    int32_t ***g_603;
    int32_t ***g_606;
    uint32_t *g_657;
    uint32_t **g_656;
    uint16_t *g_714;
    uint16_t **g_713;
    uint16_t g_739;
    uint64_t g_790[7];
    volatile uint64_t * volatile g_847;
    volatile uint64_t * volatile *g_846;
    uint8_t g_964;
    uint32_t g_1005;
    int16_t *g_1064;
    int16_t **g_1063;
    uint32_t g_1075;
    int32_t g_1156;
    int8_t g_1164;
    int32_t g_1171;
    uint64_t g_1175;
    volatile int16_t g_1220;
    uint32_t g_1230;
    uint32_t g_1289;
    uint8_t *g_1295;
    uint8_t **g_1294;
    uint8_t *** volatile g_1293[8];
    int32_t * volatile g_1317;
    int64_t **g_1372;
    uint64_t *g_1377;
    uint64_t **g_1376;
    int8_t g_1459;
    int32_t ****g_1470;
    uint8_t g_1497;
    volatile uint64_t * volatile ** volatile g_1525;
    volatile int64_t g_1540;
    volatile int32_t g_1564;
    int8_t g_1658;
    int32_t * volatile g_1659;
    int16_t g_1708[2];
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
uint16_t  func_1(struct S0 * p_1734);
uint16_t  func_18(uint32_t  p_19, int64_t  p_20, int32_t  p_21, uint64_t  p_22, int8_t  p_23, struct S0 * p_1734);
uint16_t  func_25(int32_t * p_26, struct S0 * p_1734);
int64_t  func_34(int32_t * p_35, uint32_t  p_36, uint32_t  p_37, uint8_t  p_38, struct S0 * p_1734);
int64_t  func_46(uint8_t * p_47, int64_t  p_48, uint64_t  p_49, uint32_t  p_50, struct S0 * p_1734);
uint8_t * func_51(uint8_t  p_52, uint32_t  p_53, int32_t  p_54, struct S0 * p_1734);
int8_t  func_57(int32_t * p_58, uint8_t * p_59, uint8_t * p_60, struct S0 * p_1734);
uint8_t * func_62(int32_t * p_63, uint64_t  p_64, struct S0 * p_1734);
int8_t  func_88(uint32_t  p_89, struct S0 * p_1734);
int16_t  func_92(uint8_t * p_93, int32_t  p_94, int32_t ** p_95, int64_t  p_96, struct S0 * p_1734);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1734->g_2 p_1734->g_9 p_1734->g_110 p_1734->g_111 p_1734->g_606 p_1734->g_604 p_1734->g_603 p_1734->g_1063 p_1734->g_1064 p_1734->g_65 p_1734->g_97 p_1734->g_208 p_1734->g_1317 p_1734->g_74 p_1734->g_1459 p_1734->g_1294 p_1734->g_1295 p_1734->g_964 p_1734->g_369 p_1734->g_1658 p_1734->g_739 p_1734->g_31 p_1734->g_549 p_1734->g_657 p_1734->g_602 p_1734->g_492 p_1734->g_152 p_1734->g_790 p_1734->g_656 p_1734->g_1156 p_1734->g_1497
 * writes: p_1734->g_2 p_1734->g_9 p_1734->g_111 p_1734->g_1372 p_1734->g_373 p_1734->g_1156 p_1734->g_269 p_1734->g_208 p_1734->g_74 p_1734->g_31 p_1734->g_369 p_1734->g_1459 p_1734->g_739 p_1734->g_549 p_1734->g_553 p_1734->g_1708 p_1734->g_602
 */
uint16_t  func_1(struct S0 * p_1734)
{ /* block id: 4 */
    int32_t l_12 = 0L;
    int32_t l_1489 = 1L;
    int32_t l_1490 = 6L;
    int32_t l_1491 = 1L;
    int32_t l_1492[5] = {9L,9L,9L,9L,9L};
    int16_t *l_1502 = &p_1734->g_553[3];
    uint8_t l_1607[8][4] = {{0UL,0UL,0UL,1UL},{0UL,0UL,0UL,1UL},{0UL,0UL,0UL,1UL},{0UL,0UL,0UL,1UL},{0UL,0UL,0UL,1UL},{0UL,0UL,0UL,1UL},{0UL,0UL,0UL,1UL},{0UL,0UL,0UL,1UL}};
    int32_t ****l_1612 = &p_1734->g_606;
    uint64_t l_1619 = 0x0A5ACAC4FEE866F8L;
    uint32_t l_1626 = 0UL;
    int64_t l_1669[10];
    uint32_t l_1686 = 4294967294UL;
    int64_t l_1730 = 2L;
    int32_t *l_1733 = &p_1734->g_154;
    int i, j;
    for (i = 0; i < 10; i++)
        l_1669[i] = (-2L);
    for (p_1734->g_2 = 21; (p_1734->g_2 < (-5)); p_1734->g_2 = safe_sub_func_uint16_t_u_u(p_1734->g_2, 2))
    { /* block id: 7 */
        uint64_t l_15 = 0x729694D2B5F7919AL;
        int32_t *l_24 = &l_12;
        int32_t *l_1172 = (void*)0;
        int32_t l_1486[4][4][5] = {{{0x7DDBC42DL,0x7DDBC42DL,0x7DDBC42DL,0x7DDBC42DL,0x7DDBC42DL},{0x7DDBC42DL,0x7DDBC42DL,0x7DDBC42DL,0x7DDBC42DL,0x7DDBC42DL},{0x7DDBC42DL,0x7DDBC42DL,0x7DDBC42DL,0x7DDBC42DL,0x7DDBC42DL},{0x7DDBC42DL,0x7DDBC42DL,0x7DDBC42DL,0x7DDBC42DL,0x7DDBC42DL}},{{0x7DDBC42DL,0x7DDBC42DL,0x7DDBC42DL,0x7DDBC42DL,0x7DDBC42DL},{0x7DDBC42DL,0x7DDBC42DL,0x7DDBC42DL,0x7DDBC42DL,0x7DDBC42DL},{0x7DDBC42DL,0x7DDBC42DL,0x7DDBC42DL,0x7DDBC42DL,0x7DDBC42DL},{0x7DDBC42DL,0x7DDBC42DL,0x7DDBC42DL,0x7DDBC42DL,0x7DDBC42DL}},{{0x7DDBC42DL,0x7DDBC42DL,0x7DDBC42DL,0x7DDBC42DL,0x7DDBC42DL},{0x7DDBC42DL,0x7DDBC42DL,0x7DDBC42DL,0x7DDBC42DL,0x7DDBC42DL},{0x7DDBC42DL,0x7DDBC42DL,0x7DDBC42DL,0x7DDBC42DL,0x7DDBC42DL},{0x7DDBC42DL,0x7DDBC42DL,0x7DDBC42DL,0x7DDBC42DL,0x7DDBC42DL}},{{0x7DDBC42DL,0x7DDBC42DL,0x7DDBC42DL,0x7DDBC42DL,0x7DDBC42DL},{0x7DDBC42DL,0x7DDBC42DL,0x7DDBC42DL,0x7DDBC42DL,0x7DDBC42DL},{0x7DDBC42DL,0x7DDBC42DL,0x7DDBC42DL,0x7DDBC42DL,0x7DDBC42DL},{0x7DDBC42DL,0x7DDBC42DL,0x7DDBC42DL,0x7DDBC42DL,0x7DDBC42DL}}};
        uint8_t l_1494 = 0x07L;
        int32_t l_1541 = 0x3D8602E8L;
        uint16_t *l_1576 = &p_1734->g_739;
        uint32_t **l_1584 = &p_1734->g_657;
        int32_t *l_1597 = &l_12;
        int32_t *l_1598 = &p_1734->g_29;
        int32_t *l_1599 = (void*)0;
        int32_t *l_1600 = &l_1486[0][1][4];
        int32_t *l_1601 = &l_1491;
        int32_t *l_1602 = &l_1489;
        int32_t *l_1603 = (void*)0;
        int32_t *l_1604 = &p_1734->g_1156;
        int32_t *l_1605 = &l_12;
        int32_t *l_1606[9] = {&p_1734->g_29,&l_1486[2][2][1],&p_1734->g_29,&p_1734->g_29,&l_1486[2][2][1],&p_1734->g_29,&p_1734->g_29,&l_1486[2][2][1],&p_1734->g_29};
        int i, j, k;
        for (p_1734->g_9 = 0; (p_1734->g_9 <= (-21)); --p_1734->g_9)
        { /* block id: 10 */
            uint64_t l_13 = 18446744073709551615UL;
            int32_t *l_27 = &l_12;
            int32_t l_1488 = 0x5056519BL;
            int32_t l_1493[6][9] = {{0x7B716CF0L,0x6470941CL,0x6470941CL,0x7B716CF0L,0x7B716CF0L,0x6470941CL,0x6470941CL,0x7B716CF0L,0x7B716CF0L},{0x7B716CF0L,0x6470941CL,0x6470941CL,0x7B716CF0L,0x7B716CF0L,0x6470941CL,0x6470941CL,0x7B716CF0L,0x7B716CF0L},{0x7B716CF0L,0x6470941CL,0x6470941CL,0x7B716CF0L,0x7B716CF0L,0x6470941CL,0x6470941CL,0x7B716CF0L,0x7B716CF0L},{0x7B716CF0L,0x6470941CL,0x6470941CL,0x7B716CF0L,0x7B716CF0L,0x6470941CL,0x6470941CL,0x7B716CF0L,0x7B716CF0L},{0x7B716CF0L,0x6470941CL,0x6470941CL,0x7B716CF0L,0x7B716CF0L,0x6470941CL,0x6470941CL,0x7B716CF0L,0x7B716CF0L},{0x7B716CF0L,0x6470941CL,0x6470941CL,0x7B716CF0L,0x7B716CF0L,0x6470941CL,0x6470941CL,0x7B716CF0L,0x7B716CF0L}};
            uint16_t l_1519 = 8UL;
            int32_t l_1551 = (-1L);
            uint32_t l_1571 = 0xCD27F22CL;
            int i, j;
            (1 + 1);
        }
        l_1607[2][1]--;
        (*p_1734->g_110) = (*p_1734->g_110);
    }
lbl_1638:
    p_1734->g_1372 = &p_1734->g_456;
    if (((safe_mod_func_uint64_t_u_u((((void*)0 == l_1612) , (safe_add_func_uint16_t_u_u(l_1491, ((safe_add_func_uint64_t_u_u((safe_mul_func_uint8_t_u_u((0xEF37C1CEA6058926L & l_1619), (safe_div_func_int8_t_s_s((safe_lshift_func_uint16_t_u_u(((((p_1734->g_373 = (((*p_1734->g_606) == (*p_1734->g_603)) , l_1619)) & (safe_mul_func_uint8_t_u_u(1UL, 0xB7L))) >= (**p_1734->g_1063)) , l_12), l_1491)), l_12)))), p_1734->g_97)) && l_1619)))), l_1626)) || l_12))
    { /* block id: 831 */
        uint8_t *l_1646 = &l_1607[2][1];
        int32_t l_1649 = 0L;
        for (p_1734->g_1156 = 0; (p_1734->g_1156 >= 18); p_1734->g_1156 = safe_add_func_uint16_t_u_u(p_1734->g_1156, 3))
        { /* block id: 834 */
            int32_t *l_1631 = &l_1492[3];
            int32_t *l_1660 = &l_1489;
            for (p_1734->g_269 = 10; (p_1734->g_269 == 19); p_1734->g_269 = safe_add_func_int64_t_s_s(p_1734->g_269, 7))
            { /* block id: 837 */
                (*p_1734->g_110) = l_1631;
            }
            for (p_1734->g_208 = 0; (p_1734->g_208 <= 6); p_1734->g_208 += 1)
            { /* block id: 842 */
                int16_t l_1650 = 0x6E75L;
                int8_t l_1657 = 0x4DL;
                for (p_1734->g_2 = 2; (p_1734->g_2 >= 0); p_1734->g_2 -= 1)
                { /* block id: 845 */
                    int i;
                    l_1631 = &p_1734->g_74[p_1734->g_2];
                    p_1734->g_74[p_1734->g_2] = (safe_mul_func_uint8_t_u_u((safe_rshift_func_uint16_t_u_s(((*p_1734->g_1317) > 0x69149EC7L), 1)), p_1734->g_1459));
                }
                (*p_1734->g_110) = (*p_1734->g_110);
                if (((*p_1734->g_111) = (**p_1734->g_110)))
                { /* block id: 851 */
                    int32_t **l_1636 = (void*)0;
                    int32_t **l_1637 = &l_1631;
                    (*l_1637) = ((*p_1734->g_110) = (*p_1734->g_110));
                    if (p_1734->g_9)
                        goto lbl_1638;
                }
                else
                { /* block id: 855 */
                    int64_t l_1639[7][10] = {{(-10L),1L,0x4EDB3C81F2C7E6B2L,0x48AE779E0072F004L,0x4EDB3C81F2C7E6B2L,1L,(-10L),0x1DEBB7E9314DC960L,(-8L),(-8L)},{(-10L),1L,0x4EDB3C81F2C7E6B2L,0x48AE779E0072F004L,0x4EDB3C81F2C7E6B2L,1L,(-10L),0x1DEBB7E9314DC960L,(-8L),(-8L)},{(-10L),1L,0x4EDB3C81F2C7E6B2L,0x48AE779E0072F004L,0x4EDB3C81F2C7E6B2L,1L,(-10L),0x1DEBB7E9314DC960L,(-8L),(-8L)},{(-10L),1L,0x4EDB3C81F2C7E6B2L,0x48AE779E0072F004L,0x4EDB3C81F2C7E6B2L,1L,(-10L),0x1DEBB7E9314DC960L,(-8L),(-8L)},{(-10L),1L,0x4EDB3C81F2C7E6B2L,0x48AE779E0072F004L,0x4EDB3C81F2C7E6B2L,1L,(-10L),0x1DEBB7E9314DC960L,(-8L),(-8L)},{(-10L),1L,0x4EDB3C81F2C7E6B2L,0x48AE779E0072F004L,0x4EDB3C81F2C7E6B2L,1L,(-10L),0x1DEBB7E9314DC960L,(-8L),(-8L)},{(-10L),1L,0x4EDB3C81F2C7E6B2L,0x48AE779E0072F004L,0x4EDB3C81F2C7E6B2L,1L,(-10L),0x1DEBB7E9314DC960L,(-8L),(-8L)}};
                    int64_t *l_1651 = (void*)0;
                    int64_t *l_1652 = (void*)0;
                    int64_t *l_1653[5][6][4] = {{{(void*)0,(void*)0,(void*)0,&l_1639[2][5]},{(void*)0,(void*)0,(void*)0,&l_1639[2][5]},{(void*)0,(void*)0,(void*)0,&l_1639[2][5]},{(void*)0,(void*)0,(void*)0,&l_1639[2][5]},{(void*)0,(void*)0,(void*)0,&l_1639[2][5]},{(void*)0,(void*)0,(void*)0,&l_1639[2][5]}},{{(void*)0,(void*)0,(void*)0,&l_1639[2][5]},{(void*)0,(void*)0,(void*)0,&l_1639[2][5]},{(void*)0,(void*)0,(void*)0,&l_1639[2][5]},{(void*)0,(void*)0,(void*)0,&l_1639[2][5]},{(void*)0,(void*)0,(void*)0,&l_1639[2][5]},{(void*)0,(void*)0,(void*)0,&l_1639[2][5]}},{{(void*)0,(void*)0,(void*)0,&l_1639[2][5]},{(void*)0,(void*)0,(void*)0,&l_1639[2][5]},{(void*)0,(void*)0,(void*)0,&l_1639[2][5]},{(void*)0,(void*)0,(void*)0,&l_1639[2][5]},{(void*)0,(void*)0,(void*)0,&l_1639[2][5]},{(void*)0,(void*)0,(void*)0,&l_1639[2][5]}},{{(void*)0,(void*)0,(void*)0,&l_1639[2][5]},{(void*)0,(void*)0,(void*)0,&l_1639[2][5]},{(void*)0,(void*)0,(void*)0,&l_1639[2][5]},{(void*)0,(void*)0,(void*)0,&l_1639[2][5]},{(void*)0,(void*)0,(void*)0,&l_1639[2][5]},{(void*)0,(void*)0,(void*)0,&l_1639[2][5]}},{{(void*)0,(void*)0,(void*)0,&l_1639[2][5]},{(void*)0,(void*)0,(void*)0,&l_1639[2][5]},{(void*)0,(void*)0,(void*)0,&l_1639[2][5]},{(void*)0,(void*)0,(void*)0,&l_1639[2][5]},{(void*)0,(void*)0,(void*)0,&l_1639[2][5]},{(void*)0,(void*)0,(void*)0,&l_1639[2][5]}}};
                    int32_t l_1654[8][9] = {{(-1L),0x7A42C105L,3L,0x7A42C105L,(-1L),(-1L),0x7A42C105L,3L,0x7A42C105L},{(-1L),0x7A42C105L,3L,0x7A42C105L,(-1L),(-1L),0x7A42C105L,3L,0x7A42C105L},{(-1L),0x7A42C105L,3L,0x7A42C105L,(-1L),(-1L),0x7A42C105L,3L,0x7A42C105L},{(-1L),0x7A42C105L,3L,0x7A42C105L,(-1L),(-1L),0x7A42C105L,3L,0x7A42C105L},{(-1L),0x7A42C105L,3L,0x7A42C105L,(-1L),(-1L),0x7A42C105L,3L,0x7A42C105L},{(-1L),0x7A42C105L,3L,0x7A42C105L,(-1L),(-1L),0x7A42C105L,3L,0x7A42C105L},{(-1L),0x7A42C105L,3L,0x7A42C105L,(-1L),(-1L),0x7A42C105L,3L,0x7A42C105L},{(-1L),0x7A42C105L,3L,0x7A42C105L,(-1L),(-1L),0x7A42C105L,3L,0x7A42C105L}};
                    uint16_t *l_1655 = (void*)0;
                    uint16_t *l_1656 = &p_1734->g_369;
                    int i, j, k;
                    if (l_1639[4][9])
                        break;
                    (*p_1734->g_111) = (safe_lshift_func_uint16_t_u_u(((GROUP_DIVERGE(0, 1) , (*l_1631)) ^ (safe_lshift_func_uint16_t_u_u((((*l_1656) &= (safe_mod_func_uint8_t_u_u(((l_1639[4][9] & (l_1654[3][0] = ((((l_1646 == (*p_1734->g_1294)) & (0xDE523F54DBFA0798L > l_1639[5][7])) , ((*l_1646) = ((0x1176E43CL || (safe_add_func_uint8_t_u_u(((l_1649 , (p_1734->g_31[p_1734->g_208] = l_1649)) , (*p_1734->g_1295)), l_1639[0][6]))) <= l_1650))) == l_1639[0][9]))) && (**p_1734->g_1063)), p_1734->g_1459))) && 0x1C1DL), l_1657))), p_1734->g_1658));
                }
            }
            (*l_1660) &= (l_1491 |= ((*l_1631) = 4L));
            (**p_1734->g_110) &= (*l_1660);
        }
    }
    else
    { /* block id: 869 */
        int32_t *l_1661 = &l_1489;
        int32_t *l_1662 = &p_1734->g_74[1];
        int32_t *l_1663 = (void*)0;
        int32_t *l_1664 = &p_1734->g_1156;
        int32_t *l_1665 = &l_1491;
        int32_t *l_1666 = (void*)0;
        int32_t *l_1667[10][4][1] = {{{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0}}};
        int32_t l_1668 = 5L;
        uint32_t l_1670 = 0UL;
        int i, j, k;
        l_1670--;
        for (l_1670 = 0; (l_1670 <= 6); l_1670 += 1)
        { /* block id: 873 */
            int32_t *l_1673 = &l_1489;
            int64_t l_1706 = 4L;
            int32_t *l_1725 = (void*)0;
            int16_t l_1732 = (-3L);
            (*p_1734->g_110) = l_1673;
            for (p_1734->g_1459 = 9; (p_1734->g_1459 >= 0); p_1734->g_1459 -= 1)
            { /* block id: 877 */
                int32_t l_1684 = 5L;
                int32_t l_1721 = (-4L);
                int32_t *l_1723 = &p_1734->g_29;
                for (p_1734->g_739 = 0; (p_1734->g_739 <= 3); p_1734->g_739 += 1)
                { /* block id: 880 */
                    int i;
                    (*l_1673) &= (((-1L) >= 0x6AE71ED6280C77C9L) && p_1734->g_31[(p_1734->g_739 + 1)]);
                }
                for (p_1734->g_549 = 2; (p_1734->g_549 <= 6); p_1734->g_549 += 1)
                { /* block id: 885 */
                    int32_t l_1680[5];
                    uint64_t l_1683 = 0xABD35F1C574859FBL;
                    uint32_t l_1685 = 1UL;
                    int8_t *l_1705[10][7] = {{&p_1734->g_1459,(void*)0,(void*)0,&p_1734->g_1459,&p_1734->g_1164,(void*)0,(void*)0},{&p_1734->g_1459,(void*)0,(void*)0,&p_1734->g_1459,&p_1734->g_1164,(void*)0,(void*)0},{&p_1734->g_1459,(void*)0,(void*)0,&p_1734->g_1459,&p_1734->g_1164,(void*)0,(void*)0},{&p_1734->g_1459,(void*)0,(void*)0,&p_1734->g_1459,&p_1734->g_1164,(void*)0,(void*)0},{&p_1734->g_1459,(void*)0,(void*)0,&p_1734->g_1459,&p_1734->g_1164,(void*)0,(void*)0},{&p_1734->g_1459,(void*)0,(void*)0,&p_1734->g_1459,&p_1734->g_1164,(void*)0,(void*)0},{&p_1734->g_1459,(void*)0,(void*)0,&p_1734->g_1459,&p_1734->g_1164,(void*)0,(void*)0},{&p_1734->g_1459,(void*)0,(void*)0,&p_1734->g_1459,&p_1734->g_1164,(void*)0,(void*)0},{&p_1734->g_1459,(void*)0,(void*)0,&p_1734->g_1459,&p_1734->g_1164,(void*)0,(void*)0},{&p_1734->g_1459,(void*)0,(void*)0,&p_1734->g_1459,&p_1734->g_1164,(void*)0,(void*)0}};
                    int16_t *l_1707 = &p_1734->g_1708[1];
                    uint32_t l_1724[2][4][9] = {{{0xFE8F2396L,1UL,0x6D4410AFL,1UL,0xFE8F2396L,0xFE8F2396L,1UL,0x6D4410AFL,1UL},{0xFE8F2396L,1UL,0x6D4410AFL,1UL,0xFE8F2396L,0xFE8F2396L,1UL,0x6D4410AFL,1UL},{0xFE8F2396L,1UL,0x6D4410AFL,1UL,0xFE8F2396L,0xFE8F2396L,1UL,0x6D4410AFL,1UL},{0xFE8F2396L,1UL,0x6D4410AFL,1UL,0xFE8F2396L,0xFE8F2396L,1UL,0x6D4410AFL,1UL}},{{0xFE8F2396L,1UL,0x6D4410AFL,1UL,0xFE8F2396L,0xFE8F2396L,1UL,0x6D4410AFL,1UL},{0xFE8F2396L,1UL,0x6D4410AFL,1UL,0xFE8F2396L,0xFE8F2396L,1UL,0x6D4410AFL,1UL},{0xFE8F2396L,1UL,0x6D4410AFL,1UL,0xFE8F2396L,0xFE8F2396L,1UL,0x6D4410AFL,1UL},{0xFE8F2396L,1UL,0x6D4410AFL,1UL,0xFE8F2396L,0xFE8F2396L,1UL,0x6D4410AFL,1UL}}};
                    int i, j, k;
                    for (i = 0; i < 5; i++)
                        l_1680[i] = 0L;
                    l_1686 |= (((l_1669[l_1670] = (safe_div_func_uint16_t_u_u(p_1734->g_31[l_1670], (safe_mul_func_int8_t_s_s(((safe_rshift_func_int8_t_s_s((3UL != p_1734->g_31[l_1670]), 3)) != ((l_1680[0] = 0L) & l_1669[(l_1670 + 2)])), ((*l_1665) && ((((safe_lshift_func_uint8_t_u_u(((*l_1661) | l_1683), (+(p_1734->g_31[l_1670] < (*l_1665))))) > l_1684) <= (*l_1673)) , 8UL))))))) & l_1685) >= p_1734->g_31[l_1670]);
                    l_1680[3] |= ((*p_1734->g_1064) != ((&p_1734->g_1075 != (void*)0) > ((safe_sub_func_uint16_t_u_u(GROUP_DIVERGE(0, 1), ((*l_1707) = ((safe_mul_func_int8_t_s_s(7L, ((safe_div_func_int16_t_s_s(((safe_lshift_func_uint8_t_u_s((*p_1734->g_1295), 5)) > (safe_add_func_int8_t_s_s(((*p_1734->g_657) == (*p_1734->g_657)), (l_1492[3] = (safe_sub_func_int32_t_s_s(((safe_rshift_func_uint16_t_u_s(0UL, (!((((((safe_mul_func_int16_t_s_s((((((*l_1502) = (safe_rshift_func_int16_t_s_u(l_1684, 8))) && (*l_1673)) , 4L) != 0xA231A31639D31406L), p_1734->g_492)) & 1UL) ^ 0x02EBDB1A595DB4F6L) , (*l_1673)) & l_1683) == (*p_1734->g_1317))))) >= (*l_1673)), l_1684)))))), p_1734->g_152)) >= l_1706))) && (*l_1673))))) == 18446744073709551607UL)));
                    if (((*l_1664) = ((((safe_lshift_func_uint8_t_u_s((FAKE_DIVERGE(p_1734->global_1_offset, get_global_id(1), 10) , ((safe_div_func_int32_t_s_s((safe_div_func_int8_t_s_s(((**p_1734->g_110) > (((((safe_mul_func_int8_t_s_s(l_1607[2][1], (p_1734->g_31[5] & (*l_1673)))) , (safe_div_func_uint32_t_u_u(((safe_lshift_func_uint8_t_u_u(l_1683, 7)) , (l_1684 = ((*p_1734->g_110) != ((l_1684 | l_1684) , (*p_1734->g_110))))), 0x1B5DFDD7L))) | p_1734->g_790[4]) & 0x2B13L) >= l_1721)), (*p_1734->g_1295))), l_1626)) ^ p_1734->g_74[0])), l_1686)) != l_1680[0]) & p_1734->g_31[l_1670]) == (**p_1734->g_656))))
                    { /* block id: 895 */
                        int32_t *l_1722 = (void*)0;
                        (*p_1734->g_110) = (*p_1734->g_110);
                        (*p_1734->g_110) = l_1673;
                        l_1723 = l_1722;
                        return l_1724[0][2][5];
                    }
                    else
                    { /* block id: 900 */
                        int32_t l_1731 = 1L;
                        (*p_1734->g_110) = l_1725;
                        (*l_1662) ^= (safe_div_func_int32_t_s_s((l_1732 = (safe_sub_func_uint32_t_u_u(((FAKE_DIVERGE(p_1734->group_2_offset, get_group_id(2), 10) == l_1730) | (((*p_1734->g_657) = ((p_1734->g_1156 > l_1731) , (*l_1664))) >= 0x57366BF4L)), (*l_1664)))), p_1734->g_152));
                        (*p_1734->g_110) = (void*)0;
                        return p_1734->g_1497;
                    }
                }
            }
        }
    }
    l_1733 = ((*p_1734->g_110) = (*p_1734->g_110));
    return p_1734->g_97;
}


/* ------------------------------------------ */
/* 
 * reads : p_1734->g_110 p_1734->g_1156 p_1734->g_152 p_1734->g_1171 p_1734->g_203 p_1734->g_1064 p_1734->g_65 p_1734->g_111 p_1734->g_74 p_1734->g_1220 p_1734->g_657 p_1734->g_29 p_1734->g_1230 p_1734->g_1063 p_1734->g_369 p_1734->g_154 p_1734->g_1294 p_1734->g_1295 p_1734->g_964
 * writes: p_1734->g_111 p_1734->g_269 p_1734->g_602 p_1734->g_1156 p_1734->g_29 p_1734->g_74 p_1734->g_1230 p_1734->g_118 p_1734->g_65 p_1734->g_369 p_1734->g_1470 p_1734->g_1064 p_1734->g_964
 */
uint16_t  func_18(uint32_t  p_19, int64_t  p_20, int32_t  p_21, uint64_t  p_22, int8_t  p_23, struct S0 * p_1734)
{ /* block id: 587 */
    uint32_t l_1216 = 0UL;
    uint32_t *l_1249 = &p_1734->g_1075;
    uint8_t *l_1262 = (void*)0;
    int32_t l_1273 = (-1L);
    int32_t l_1276[9][9][1] = {{{0x38CEF2E2L},{0x38CEF2E2L},{0x38CEF2E2L},{0x38CEF2E2L},{0x38CEF2E2L},{0x38CEF2E2L},{0x38CEF2E2L},{0x38CEF2E2L},{0x38CEF2E2L}},{{0x38CEF2E2L},{0x38CEF2E2L},{0x38CEF2E2L},{0x38CEF2E2L},{0x38CEF2E2L},{0x38CEF2E2L},{0x38CEF2E2L},{0x38CEF2E2L},{0x38CEF2E2L}},{{0x38CEF2E2L},{0x38CEF2E2L},{0x38CEF2E2L},{0x38CEF2E2L},{0x38CEF2E2L},{0x38CEF2E2L},{0x38CEF2E2L},{0x38CEF2E2L},{0x38CEF2E2L}},{{0x38CEF2E2L},{0x38CEF2E2L},{0x38CEF2E2L},{0x38CEF2E2L},{0x38CEF2E2L},{0x38CEF2E2L},{0x38CEF2E2L},{0x38CEF2E2L},{0x38CEF2E2L}},{{0x38CEF2E2L},{0x38CEF2E2L},{0x38CEF2E2L},{0x38CEF2E2L},{0x38CEF2E2L},{0x38CEF2E2L},{0x38CEF2E2L},{0x38CEF2E2L},{0x38CEF2E2L}},{{0x38CEF2E2L},{0x38CEF2E2L},{0x38CEF2E2L},{0x38CEF2E2L},{0x38CEF2E2L},{0x38CEF2E2L},{0x38CEF2E2L},{0x38CEF2E2L},{0x38CEF2E2L}},{{0x38CEF2E2L},{0x38CEF2E2L},{0x38CEF2E2L},{0x38CEF2E2L},{0x38CEF2E2L},{0x38CEF2E2L},{0x38CEF2E2L},{0x38CEF2E2L},{0x38CEF2E2L}},{{0x38CEF2E2L},{0x38CEF2E2L},{0x38CEF2E2L},{0x38CEF2E2L},{0x38CEF2E2L},{0x38CEF2E2L},{0x38CEF2E2L},{0x38CEF2E2L},{0x38CEF2E2L}},{{0x38CEF2E2L},{0x38CEF2E2L},{0x38CEF2E2L},{0x38CEF2E2L},{0x38CEF2E2L},{0x38CEF2E2L},{0x38CEF2E2L},{0x38CEF2E2L},{0x38CEF2E2L}}};
    uint8_t ***l_1391 = &p_1734->g_1294;
    uint32_t **l_1405 = &p_1734->g_657;
    uint64_t *l_1430 = &p_1734->g_1175;
    int32_t *l_1463 = &p_1734->g_154;
    int32_t *l_1464[5] = {&p_1734->g_1156,&p_1734->g_1156,&p_1734->g_1156,&p_1734->g_1156,&p_1734->g_1156};
    int8_t l_1465 = (-6L);
    uint32_t l_1466 = 0xB2C609D5L;
    int32_t ****l_1469 = &p_1734->g_606;
    int16_t *l_1481 = (void*)0;
    int8_t l_1482 = 0x60L;
    int16_t *l_1484 = &p_1734->g_553[5];
    int16_t **l_1483 = &l_1484;
    int i, j, k;
    for (p_19 = (-26); (p_19 >= 7); p_19 = safe_add_func_uint16_t_u_u(p_19, 5))
    { /* block id: 590 */
        uint64_t l_1180 = 18446744073709551606UL;
        int32_t *l_1181 = &p_1734->g_1156;
        uint32_t **l_1218[2];
        int64_t **l_1224 = &p_1734->g_456;
        int32_t l_1227 = 0x02A81457L;
        uint16_t l_1241 = 0xD066L;
        int32_t l_1278 = 0x22E5B8B6L;
        int32_t l_1280 = 0x54DDCF75L;
        int32_t l_1281 = 0x6C60BFD7L;
        int32_t l_1284 = 0L;
        int32_t l_1286 = 0x0B1A14A5L;
        uint8_t ***l_1384[8][2] = {{&p_1734->g_1294,&p_1734->g_1294},{&p_1734->g_1294,&p_1734->g_1294},{&p_1734->g_1294,&p_1734->g_1294},{&p_1734->g_1294,&p_1734->g_1294},{&p_1734->g_1294,&p_1734->g_1294},{&p_1734->g_1294,&p_1734->g_1294},{&p_1734->g_1294,&p_1734->g_1294},{&p_1734->g_1294,&p_1734->g_1294}};
        uint8_t ***l_1393 = &p_1734->g_1294;
        uint32_t l_1445 = 4294967294UL;
        int i, j;
        for (i = 0; i < 2; i++)
            l_1218[i] = (void*)0;
        if (l_1180)
        { /* block id: 591 */
            (*p_1734->g_110) = l_1181;
        }
        else
        { /* block id: 593 */
            uint16_t l_1215 = 6UL;
            int32_t l_1217[6] = {(-10L),(-3L),(-10L),(-10L),(-3L),(-10L)};
            uint8_t *l_1219 = &p_1734->g_269;
            uint32_t *l_1221[1][3];
            int32_t l_1222 = (-1L);
            int32_t *l_1223 = &p_1734->g_29;
            int32_t *l_1225 = &p_1734->g_154;
            int32_t *l_1226 = (void*)0;
            int32_t *l_1228 = &p_1734->g_154;
            int32_t *l_1229[1][4] = {{(void*)0,(void*)0,(void*)0,(void*)0}};
            int i, j;
            for (i = 0; i < 1; i++)
            {
                for (j = 0; j < 3; j++)
                    l_1221[i][j] = &p_1734->g_1005;
            }
            (*l_1223) &= (1L <= ((safe_mod_func_int32_t_s_s(((safe_add_func_int64_t_s_s((l_1222 = ((((*l_1181) = (0x556A1931ED4319CCL != (((safe_sub_func_uint32_t_u_u(((*p_1734->g_657) = ((safe_mul_func_uint16_t_u_u((safe_sub_func_uint16_t_u_u((p_22 > (((((*l_1219) = ((safe_add_func_int64_t_s_s((safe_add_func_uint64_t_u_u((((safe_div_func_int16_t_s_s(((safe_add_func_uint64_t_u_u(((*l_1181) & 0UL), (((~(((((safe_unary_minus_func_uint32_t_u((safe_mul_func_uint16_t_u_u((safe_add_func_uint32_t_u_u(0xB426DCF9L, (l_1217[2] = (p_1734->g_152 <= (safe_sub_func_int8_t_s_s((safe_lshift_func_int16_t_s_u((safe_rshift_func_int8_t_s_s((safe_rshift_func_uint8_t_u_u(l_1215, 3)), (((*l_1181) , 0x70CA9171D89B46BDL) || GROUP_DIVERGE(0, 1)))), 3)), l_1216)))))), l_1215)))) , (void*)0) == l_1218[0]) <= p_1734->g_1171) > GROUP_DIVERGE(2, 1))) && (*l_1181)) , p_19))) < p_1734->g_203), (*p_1734->g_1064))) >= (*p_1734->g_111)) ^ (-1L)), 0x442FEA92890DFD79L)), 0xAA3A181C1FF9C330L)) ^ 6L)) && 0x5BL) < 0x22314DD7F5B301EBL) > p_23)), p_23)), l_1216)) >= p_1734->g_1220)), l_1216)) >= p_21) == l_1216))) , 0x8FL) != p_20)), p_21)) < 0x658CL), p_23)) && 0x6035L));
            (**p_1734->g_110) = ((void*)0 == l_1224);
            p_1734->g_1230--;
        }
        for (p_22 = 0; (p_22 >= 1); ++p_22)
        { /* block id: 605 */
            int32_t *l_1244 = &p_1734->g_109;
            int32_t **l_1245 = &p_1734->g_118[0][0][1];
            int32_t l_1246 = 0L;
            l_1227 ^= (((safe_mul_func_int16_t_s_s(((p_21 < p_21) , ((**p_1734->g_1063) = ((safe_div_func_uint64_t_u_u((safe_div_func_uint8_t_u_u(((*l_1181) , l_1241), ((safe_add_func_uint64_t_u_u(l_1216, (((*l_1245) = l_1244) != ((+((l_1246 && p_22) & (safe_div_func_int64_t_s_s((l_1249 != l_1181), (*l_1181))))) , l_1249)))) & GROUP_DIVERGE(2, 1)))), l_1216)) | p_23))), 0UL)) < p_19) , 0x6579CC24L);
        }
        for (p_1734->g_369 = 0; (p_1734->g_369 <= 6); p_1734->g_369 += 1)
        { /* block id: 612 */
            int32_t *l_1263 = &p_1734->g_9;
            int32_t l_1271[3][2] = {{9L,9L},{9L,9L},{9L,9L}};
            int16_t l_1274 = 0x5B2DL;
            uint8_t **l_1292 = &l_1262;
            int32_t **l_1366 = &p_1734->g_118[3][6][0];
            int i, j;
            (1 + 1);
        }
        if ((*l_1181))
            continue;
    }
    ++l_1466;
    (*p_1734->g_111) |= ((+(*l_1463)) != (((l_1469 == (p_1734->g_1470 = l_1469)) & 0x329868AF0A3D3DF0L) , ((safe_mul_func_uint8_t_u_u((safe_add_func_int8_t_s_s((safe_rshift_func_uint16_t_u_u((p_19 >= ((***l_1391) = (((safe_lshift_func_uint8_t_u_u((**p_1734->g_1294), 2)) > (p_21 >= (((*p_1734->g_1063) = l_1481) == ((*l_1483) = ((l_1482 | p_20) , l_1481))))) , (*l_1463)))), 15)), 7UL)), 1UL)) ^ (*l_1463))));
    return p_23;
}


/* ------------------------------------------ */
/* 
 * reads : p_1734->g_29 p_1734->g_208 p_1734->g_1171
 * writes: p_1734->g_29 p_1734->g_208 p_1734->g_602 p_1734->g_97
 */
uint16_t  func_25(int32_t * p_26, struct S0 * p_1734)
{ /* block id: 15 */
    uint64_t l_28[8] = {1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL};
    int32_t *l_61[8];
    uint16_t l_554[1];
    uint32_t l_640 = 0xF37BB5DDL;
    int8_t l_745 = (-1L);
    uint8_t l_770 = 8UL;
    uint32_t l_830 = 1UL;
    int8_t l_871[1][8];
    int64_t l_958 = (-1L);
    int64_t **l_983 = &p_1734->g_456;
    uint8_t l_1014 = 255UL;
    uint8_t l_1065 = 0x3BL;
    uint8_t *l_1100 = &p_1734->g_269;
    uint8_t **l_1099 = &l_1100;
    int32_t l_1165 = (-3L);
    int i, j;
    for (i = 0; i < 8; i++)
        l_61[i] = (void*)0;
    for (i = 0; i < 1; i++)
        l_554[i] = 65526UL;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 8; j++)
            l_871[i][j] = 1L;
    }
    for (p_1734->g_29 = 1; (p_1734->g_29 <= 7); p_1734->g_29 += 1)
    { /* block id: 18 */
        uint8_t *l_30 = &p_1734->g_31[5];
        int32_t **l_39 = (void*)0;
        int32_t *l_41 = &p_1734->g_2;
        int32_t **l_40 = &l_41;
        int8_t *l_608 = &p_1734->g_169;
        int16_t l_672 = 0x791AL;
        int16_t l_693 = 5L;
        int32_t l_746 = 0L;
        uint32_t l_747 = 4294967288UL;
        int64_t **l_760 = &p_1734->g_456;
        int32_t **l_802 = &p_1734->g_118[1][4][0];
        int32_t l_818 = (-6L);
        int32_t l_819 = 5L;
        int32_t l_869 = (-1L);
        int32_t l_870 = 0x771A12DEL;
        int32_t l_872 = (-1L);
        int32_t l_873 = 0x1177C396L;
        int32_t l_874 = (-1L);
        int32_t l_875 = 0L;
        int32_t l_876 = (-4L);
        int32_t l_878 = (-1L);
        int32_t l_879 = 0x7741FC8DL;
        int32_t l_880 = 0x51400C98L;
        int32_t l_881[1][8];
        uint8_t l_885 = 0x95L;
        int i, j;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 8; j++)
                l_881[i][j] = 1L;
        }
        (1 + 1);
    }
    for (p_1734->g_208 = 28; (p_1734->g_208 > 37); p_1734->g_208 = safe_add_func_int8_t_s_s(p_1734->g_208, 3))
    { /* block id: 438 */
        int64_t **l_935 = &p_1734->g_456;
        int32_t l_955 = 6L;
        int32_t **l_957 = &p_1734->g_118[3][0][1];
        int32_t l_966 = 6L;
        int32_t l_967 = (-1L);
        int32_t l_969 = 0x024528FEL;
        int8_t l_1017 = 0x63L;
        uint8_t l_1060 = 0x16L;
        uint16_t *l_1138 = &p_1734->g_739;
        uint16_t l_1146 = 0x9276L;
        int32_t l_1157[10][7] = {{0x4BC3F387L,0x6A6B5549L,0x0085EB05L,0x6A6B5549L,0x4BC3F387L,0x4BC3F387L,0x6A6B5549L},{0x4BC3F387L,0x6A6B5549L,0x0085EB05L,0x6A6B5549L,0x4BC3F387L,0x4BC3F387L,0x6A6B5549L},{0x4BC3F387L,0x6A6B5549L,0x0085EB05L,0x6A6B5549L,0x4BC3F387L,0x4BC3F387L,0x6A6B5549L},{0x4BC3F387L,0x6A6B5549L,0x0085EB05L,0x6A6B5549L,0x4BC3F387L,0x4BC3F387L,0x6A6B5549L},{0x4BC3F387L,0x6A6B5549L,0x0085EB05L,0x6A6B5549L,0x4BC3F387L,0x4BC3F387L,0x6A6B5549L},{0x4BC3F387L,0x6A6B5549L,0x0085EB05L,0x6A6B5549L,0x4BC3F387L,0x4BC3F387L,0x6A6B5549L},{0x4BC3F387L,0x6A6B5549L,0x0085EB05L,0x6A6B5549L,0x4BC3F387L,0x4BC3F387L,0x6A6B5549L},{0x4BC3F387L,0x6A6B5549L,0x0085EB05L,0x6A6B5549L,0x4BC3F387L,0x4BC3F387L,0x6A6B5549L},{0x4BC3F387L,0x6A6B5549L,0x0085EB05L,0x6A6B5549L,0x4BC3F387L,0x4BC3F387L,0x6A6B5549L},{0x4BC3F387L,0x6A6B5549L,0x0085EB05L,0x6A6B5549L,0x4BC3F387L,0x4BC3F387L,0x6A6B5549L}};
        int i, j;
        for (p_1734->g_602 = 21; (p_1734->g_602 >= 55); p_1734->g_602 = safe_add_func_uint8_t_u_u(p_1734->g_602, 7))
        { /* block id: 441 */
            int8_t l_931 = (-1L);
            return l_931;
        }
        for (p_1734->g_97 = 0; (p_1734->g_97 <= 7); p_1734->g_97 += 1)
        { /* block id: 446 */
            int32_t l_934[1][5][6] = {{{0x67DA5E30L,0x67DA5E30L,(-1L),1L,0x557A366EL,(-1L)},{0x67DA5E30L,0x67DA5E30L,(-1L),1L,0x557A366EL,(-1L)},{0x67DA5E30L,0x67DA5E30L,(-1L),1L,0x557A366EL,(-1L)},{0x67DA5E30L,0x67DA5E30L,(-1L),1L,0x557A366EL,(-1L)},{0x67DA5E30L,0x67DA5E30L,(-1L),1L,0x557A366EL,(-1L)}}};
            int32_t *l_952 = &p_1734->g_492;
            int16_t l_962 = (-9L);
            int64_t **l_981 = &p_1734->g_456;
            uint8_t l_1002[8][5][6] = {{{255UL,8UL,254UL,255UL,0x1CL,0x7AL},{255UL,8UL,254UL,255UL,0x1CL,0x7AL},{255UL,8UL,254UL,255UL,0x1CL,0x7AL},{255UL,8UL,254UL,255UL,0x1CL,0x7AL},{255UL,8UL,254UL,255UL,0x1CL,0x7AL}},{{255UL,8UL,254UL,255UL,0x1CL,0x7AL},{255UL,8UL,254UL,255UL,0x1CL,0x7AL},{255UL,8UL,254UL,255UL,0x1CL,0x7AL},{255UL,8UL,254UL,255UL,0x1CL,0x7AL},{255UL,8UL,254UL,255UL,0x1CL,0x7AL}},{{255UL,8UL,254UL,255UL,0x1CL,0x7AL},{255UL,8UL,254UL,255UL,0x1CL,0x7AL},{255UL,8UL,254UL,255UL,0x1CL,0x7AL},{255UL,8UL,254UL,255UL,0x1CL,0x7AL},{255UL,8UL,254UL,255UL,0x1CL,0x7AL}},{{255UL,8UL,254UL,255UL,0x1CL,0x7AL},{255UL,8UL,254UL,255UL,0x1CL,0x7AL},{255UL,8UL,254UL,255UL,0x1CL,0x7AL},{255UL,8UL,254UL,255UL,0x1CL,0x7AL},{255UL,8UL,254UL,255UL,0x1CL,0x7AL}},{{255UL,8UL,254UL,255UL,0x1CL,0x7AL},{255UL,8UL,254UL,255UL,0x1CL,0x7AL},{255UL,8UL,254UL,255UL,0x1CL,0x7AL},{255UL,8UL,254UL,255UL,0x1CL,0x7AL},{255UL,8UL,254UL,255UL,0x1CL,0x7AL}},{{255UL,8UL,254UL,255UL,0x1CL,0x7AL},{255UL,8UL,254UL,255UL,0x1CL,0x7AL},{255UL,8UL,254UL,255UL,0x1CL,0x7AL},{255UL,8UL,254UL,255UL,0x1CL,0x7AL},{255UL,8UL,254UL,255UL,0x1CL,0x7AL}},{{255UL,8UL,254UL,255UL,0x1CL,0x7AL},{255UL,8UL,254UL,255UL,0x1CL,0x7AL},{255UL,8UL,254UL,255UL,0x1CL,0x7AL},{255UL,8UL,254UL,255UL,0x1CL,0x7AL},{255UL,8UL,254UL,255UL,0x1CL,0x7AL}},{{255UL,8UL,254UL,255UL,0x1CL,0x7AL},{255UL,8UL,254UL,255UL,0x1CL,0x7AL},{255UL,8UL,254UL,255UL,0x1CL,0x7AL},{255UL,8UL,254UL,255UL,0x1CL,0x7AL},{255UL,8UL,254UL,255UL,0x1CL,0x7AL}}};
            uint8_t l_1008 = 0x0BL;
            int8_t l_1018 = 0x12L;
            int i, j, k;
            (1 + 1);
        }
    }
    return p_1734->g_1171;
}


/* ------------------------------------------ */
/* 
 * reads : p_1734->g_97 p_1734->g_74 p_1734->g_110 p_1734->g_111 p_1734->g_603 p_1734->g_154
 * writes: p_1734->g_549 p_1734->g_553 p_1734->g_602 p_1734->g_603 p_1734->g_606 p_1734->g_154
 */
int64_t  func_34(int32_t * p_35, uint32_t  p_36, uint32_t  p_37, uint8_t  p_38, struct S0 * p_1734)
{ /* block id: 272 */
    uint32_t *l_588 = &p_1734->g_549;
    int32_t l_589 = 0L;
    int16_t *l_590 = &p_1734->g_553[5];
    uint64_t *l_600 = (void*)0;
    uint32_t *l_601 = &p_1734->g_602;
    int32_t ****l_605 = &p_1734->g_603;
    int32_t *l_607 = &p_1734->g_154;
    (*l_607) &= (((p_1734->g_606 = ((*l_605) = (p_36 , ((((p_36 = (safe_unary_minus_func_uint16_t_u(p_1734->g_97))) < ((((*l_588) = p_1734->g_74[1]) <= ((((*l_590) = l_589) || (p_1734->g_74[1] >= (safe_add_func_uint32_t_u_u(((*l_601) = (5UL >= (safe_unary_minus_func_uint64_t_u((((safe_add_func_uint16_t_u_u((l_589 ^ (safe_lshift_func_int16_t_s_s(((((**p_1734->g_110) && (safe_lshift_func_uint16_t_u_u(((void*)0 != l_600), GROUP_DIVERGE(1, 1)))) , p_1734->g_74[1]) ^ l_589), 1))), p_38)) , l_589) == 0x16E2EEBEDC784144L))))), p_37)))) , (*p_1734->g_111))) || 0x18F4L)) , p_36) , p_1734->g_603)))) != (void*)0) || l_589);
    return (*l_607);
}


/* ------------------------------------------ */
/* 
 * reads : p_1734->g_492 p_1734->g_152 p_1734->g_74
 * writes: p_1734->g_492 p_1734->g_152
 */
int64_t  func_46(uint8_t * p_47, int64_t  p_48, uint64_t  p_49, uint32_t  p_50, struct S0 * p_1734)
{ /* block id: 259 */
    int16_t l_566[2];
    int32_t l_567 = 0x1C2C9195L;
    int32_t l_568 = 0x03F211F2L;
    int32_t l_569[8] = {(-3L),(-3L),(-3L),(-3L),(-3L),(-3L),(-3L),(-3L)};
    int32_t *l_573 = (void*)0;
    int32_t *l_574 = &l_569[7];
    int32_t *l_575 = &p_1734->g_74[2];
    int32_t *l_576 = &p_1734->g_74[1];
    int32_t *l_577 = &l_569[0];
    int32_t *l_578 = &p_1734->g_154;
    int32_t *l_579 = (void*)0;
    int32_t *l_580 = &p_1734->g_74[1];
    int32_t *l_581 = &p_1734->g_74[1];
    int32_t *l_582[8][6][2] = {{{&p_1734->g_154,&p_1734->g_74[1]},{&p_1734->g_154,&p_1734->g_74[1]},{&p_1734->g_154,&p_1734->g_74[1]},{&p_1734->g_154,&p_1734->g_74[1]},{&p_1734->g_154,&p_1734->g_74[1]},{&p_1734->g_154,&p_1734->g_74[1]}},{{&p_1734->g_154,&p_1734->g_74[1]},{&p_1734->g_154,&p_1734->g_74[1]},{&p_1734->g_154,&p_1734->g_74[1]},{&p_1734->g_154,&p_1734->g_74[1]},{&p_1734->g_154,&p_1734->g_74[1]},{&p_1734->g_154,&p_1734->g_74[1]}},{{&p_1734->g_154,&p_1734->g_74[1]},{&p_1734->g_154,&p_1734->g_74[1]},{&p_1734->g_154,&p_1734->g_74[1]},{&p_1734->g_154,&p_1734->g_74[1]},{&p_1734->g_154,&p_1734->g_74[1]},{&p_1734->g_154,&p_1734->g_74[1]}},{{&p_1734->g_154,&p_1734->g_74[1]},{&p_1734->g_154,&p_1734->g_74[1]},{&p_1734->g_154,&p_1734->g_74[1]},{&p_1734->g_154,&p_1734->g_74[1]},{&p_1734->g_154,&p_1734->g_74[1]},{&p_1734->g_154,&p_1734->g_74[1]}},{{&p_1734->g_154,&p_1734->g_74[1]},{&p_1734->g_154,&p_1734->g_74[1]},{&p_1734->g_154,&p_1734->g_74[1]},{&p_1734->g_154,&p_1734->g_74[1]},{&p_1734->g_154,&p_1734->g_74[1]},{&p_1734->g_154,&p_1734->g_74[1]}},{{&p_1734->g_154,&p_1734->g_74[1]},{&p_1734->g_154,&p_1734->g_74[1]},{&p_1734->g_154,&p_1734->g_74[1]},{&p_1734->g_154,&p_1734->g_74[1]},{&p_1734->g_154,&p_1734->g_74[1]},{&p_1734->g_154,&p_1734->g_74[1]}},{{&p_1734->g_154,&p_1734->g_74[1]},{&p_1734->g_154,&p_1734->g_74[1]},{&p_1734->g_154,&p_1734->g_74[1]},{&p_1734->g_154,&p_1734->g_74[1]},{&p_1734->g_154,&p_1734->g_74[1]},{&p_1734->g_154,&p_1734->g_74[1]}},{{&p_1734->g_154,&p_1734->g_74[1]},{&p_1734->g_154,&p_1734->g_74[1]},{&p_1734->g_154,&p_1734->g_74[1]},{&p_1734->g_154,&p_1734->g_74[1]},{&p_1734->g_154,&p_1734->g_74[1]},{&p_1734->g_154,&p_1734->g_74[1]}}};
    int8_t l_583[7] = {0x52L,0x52L,0x52L,0x52L,0x52L,0x52L,0x52L};
    uint32_t l_584[10][5][3] = {{{0xC2435422L,0xF9C758D0L,0xC679B038L},{0xC2435422L,0xF9C758D0L,0xC679B038L},{0xC2435422L,0xF9C758D0L,0xC679B038L},{0xC2435422L,0xF9C758D0L,0xC679B038L},{0xC2435422L,0xF9C758D0L,0xC679B038L}},{{0xC2435422L,0xF9C758D0L,0xC679B038L},{0xC2435422L,0xF9C758D0L,0xC679B038L},{0xC2435422L,0xF9C758D0L,0xC679B038L},{0xC2435422L,0xF9C758D0L,0xC679B038L},{0xC2435422L,0xF9C758D0L,0xC679B038L}},{{0xC2435422L,0xF9C758D0L,0xC679B038L},{0xC2435422L,0xF9C758D0L,0xC679B038L},{0xC2435422L,0xF9C758D0L,0xC679B038L},{0xC2435422L,0xF9C758D0L,0xC679B038L},{0xC2435422L,0xF9C758D0L,0xC679B038L}},{{0xC2435422L,0xF9C758D0L,0xC679B038L},{0xC2435422L,0xF9C758D0L,0xC679B038L},{0xC2435422L,0xF9C758D0L,0xC679B038L},{0xC2435422L,0xF9C758D0L,0xC679B038L},{0xC2435422L,0xF9C758D0L,0xC679B038L}},{{0xC2435422L,0xF9C758D0L,0xC679B038L},{0xC2435422L,0xF9C758D0L,0xC679B038L},{0xC2435422L,0xF9C758D0L,0xC679B038L},{0xC2435422L,0xF9C758D0L,0xC679B038L},{0xC2435422L,0xF9C758D0L,0xC679B038L}},{{0xC2435422L,0xF9C758D0L,0xC679B038L},{0xC2435422L,0xF9C758D0L,0xC679B038L},{0xC2435422L,0xF9C758D0L,0xC679B038L},{0xC2435422L,0xF9C758D0L,0xC679B038L},{0xC2435422L,0xF9C758D0L,0xC679B038L}},{{0xC2435422L,0xF9C758D0L,0xC679B038L},{0xC2435422L,0xF9C758D0L,0xC679B038L},{0xC2435422L,0xF9C758D0L,0xC679B038L},{0xC2435422L,0xF9C758D0L,0xC679B038L},{0xC2435422L,0xF9C758D0L,0xC679B038L}},{{0xC2435422L,0xF9C758D0L,0xC679B038L},{0xC2435422L,0xF9C758D0L,0xC679B038L},{0xC2435422L,0xF9C758D0L,0xC679B038L},{0xC2435422L,0xF9C758D0L,0xC679B038L},{0xC2435422L,0xF9C758D0L,0xC679B038L}},{{0xC2435422L,0xF9C758D0L,0xC679B038L},{0xC2435422L,0xF9C758D0L,0xC679B038L},{0xC2435422L,0xF9C758D0L,0xC679B038L},{0xC2435422L,0xF9C758D0L,0xC679B038L},{0xC2435422L,0xF9C758D0L,0xC679B038L}},{{0xC2435422L,0xF9C758D0L,0xC679B038L},{0xC2435422L,0xF9C758D0L,0xC679B038L},{0xC2435422L,0xF9C758D0L,0xC679B038L},{0xC2435422L,0xF9C758D0L,0xC679B038L},{0xC2435422L,0xF9C758D0L,0xC679B038L}}};
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_566[i] = 9L;
    for (p_1734->g_492 = (-18); (p_1734->g_492 >= 23); p_1734->g_492++)
    { /* block id: 262 */
        int16_t l_557 = 0x0A22L;
        int32_t *l_558 = &p_1734->g_74[1];
        int32_t *l_559 = &p_1734->g_74[2];
        int32_t *l_560 = (void*)0;
        int32_t *l_561 = &p_1734->g_154;
        int32_t *l_562 = &p_1734->g_74[0];
        int32_t *l_563 = &p_1734->g_74[2];
        int32_t *l_564 = &p_1734->g_74[2];
        int32_t *l_565[3][4] = {{&p_1734->g_2,&p_1734->g_154,&p_1734->g_29,&p_1734->g_154},{&p_1734->g_2,&p_1734->g_154,&p_1734->g_29,&p_1734->g_154},{&p_1734->g_2,&p_1734->g_154,&p_1734->g_29,&p_1734->g_154}};
        uint32_t l_570 = 0xA84BBE47L;
        int i, j;
        for (p_1734->g_152 = 0; (p_1734->g_152 <= 9); p_1734->g_152 += 1)
        { /* block id: 265 */
            return l_557;
        }
        --l_570;
    }
    l_584[2][2][0]++;
    return (*l_580);
}


/* ------------------------------------------ */
/* 
 * reads : p_1734->g_169 p_1734->g_514 p_1734->g_2 p_1734->g_208 p_1734->g_111 p_1734->g_74 p_1734->g_65 p_1734->g_110 p_1734->g_203 p_1734->g_97 p_1734->g_9 p_1734->g_154 p_1734->g_179
 * writes: p_1734->g_169 p_1734->g_208 p_1734->g_373 p_1734->g_comm_values p_1734->g_74 p_1734->g_152 p_1734->g_369 p_1734->g_97 p_1734->g_305 p_1734->g_492 p_1734->g_65 p_1734->g_553
 */
uint8_t * func_51(uint8_t  p_52, uint32_t  p_53, int32_t  p_54, struct S0 * p_1734)
{ /* block id: 27 */
    int8_t l_72[10] = {0x20L,0L,0x20L,0x20L,0L,0x20L,0x20L,0L,0x20L,0x20L};
    int32_t l_75 = 0x39930EDDL;
    int32_t l_76 = 0x22B86846L;
    int32_t l_77 = 0x6C5F6624L;
    uint32_t l_78 = 0xB1A91649L;
    int32_t **l_387[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int32_t l_389 = 1L;
    int8_t l_391 = 0x7EL;
    int32_t *l_398 = &l_389;
    uint32_t *l_455 = &p_1734->g_97;
    uint32_t **l_454 = &l_455;
    uint64_t *l_515 = (void*)0;
    uint16_t l_522 = 0xE2A1L;
    uint16_t *l_535 = &p_1734->g_152;
    uint16_t *l_536 = &p_1734->g_369;
    int8_t *l_541 = &p_1734->g_305;
    int32_t *l_546 = &p_1734->g_492;
    int32_t l_547[8][4][5] = {{{0x19A2CFF8L,6L,0x77C12217L,(-6L),1L},{0x19A2CFF8L,6L,0x77C12217L,(-6L),1L},{0x19A2CFF8L,6L,0x77C12217L,(-6L),1L},{0x19A2CFF8L,6L,0x77C12217L,(-6L),1L}},{{0x19A2CFF8L,6L,0x77C12217L,(-6L),1L},{0x19A2CFF8L,6L,0x77C12217L,(-6L),1L},{0x19A2CFF8L,6L,0x77C12217L,(-6L),1L},{0x19A2CFF8L,6L,0x77C12217L,(-6L),1L}},{{0x19A2CFF8L,6L,0x77C12217L,(-6L),1L},{0x19A2CFF8L,6L,0x77C12217L,(-6L),1L},{0x19A2CFF8L,6L,0x77C12217L,(-6L),1L},{0x19A2CFF8L,6L,0x77C12217L,(-6L),1L}},{{0x19A2CFF8L,6L,0x77C12217L,(-6L),1L},{0x19A2CFF8L,6L,0x77C12217L,(-6L),1L},{0x19A2CFF8L,6L,0x77C12217L,(-6L),1L},{0x19A2CFF8L,6L,0x77C12217L,(-6L),1L}},{{0x19A2CFF8L,6L,0x77C12217L,(-6L),1L},{0x19A2CFF8L,6L,0x77C12217L,(-6L),1L},{0x19A2CFF8L,6L,0x77C12217L,(-6L),1L},{0x19A2CFF8L,6L,0x77C12217L,(-6L),1L}},{{0x19A2CFF8L,6L,0x77C12217L,(-6L),1L},{0x19A2CFF8L,6L,0x77C12217L,(-6L),1L},{0x19A2CFF8L,6L,0x77C12217L,(-6L),1L},{0x19A2CFF8L,6L,0x77C12217L,(-6L),1L}},{{0x19A2CFF8L,6L,0x77C12217L,(-6L),1L},{0x19A2CFF8L,6L,0x77C12217L,(-6L),1L},{0x19A2CFF8L,6L,0x77C12217L,(-6L),1L},{0x19A2CFF8L,6L,0x77C12217L,(-6L),1L}},{{0x19A2CFF8L,6L,0x77C12217L,(-6L),1L},{0x19A2CFF8L,6L,0x77C12217L,(-6L),1L},{0x19A2CFF8L,6L,0x77C12217L,(-6L),1L},{0x19A2CFF8L,6L,0x77C12217L,(-6L),1L}}};
    uint32_t *l_548[4] = {&p_1734->g_549,&p_1734->g_549,&p_1734->g_549,&p_1734->g_549};
    int16_t *l_550 = (void*)0;
    int16_t *l_551 = &p_1734->g_65;
    int16_t *l_552 = &p_1734->g_553[0];
    int i, j, k;
    for (p_54 = 0; (p_54 > (-17)); p_54--)
    { /* block id: 30 */
        int32_t *l_73[7];
        int32_t *l_108 = &p_1734->g_109;
        uint64_t *l_371 = (void*)0;
        uint64_t *l_372 = &p_1734->g_373;
        int8_t *l_493 = &p_1734->g_305;
        int i;
        for (i = 0; i < 7; i++)
            l_73[i] = &p_1734->g_74[1];
        --l_78;
        for (p_53 = 0; (p_53 <= 6); p_53 += 1)
        { /* block id: 34 */
            uint32_t l_81 = 0xF6D7B3CAL;
            ++l_81;
        }
    }
    for (p_1734->g_169 = 0; (p_1734->g_169 >= (-9)); p_1734->g_169--)
    { /* block id: 243 */
        uint32_t ***l_513 = (void*)0;
        uint64_t *l_516[2];
        int64_t *l_519 = (void*)0;
        int64_t *l_520 = (void*)0;
        int64_t *l_521 = (void*)0;
        int i;
        for (i = 0; i < 2; i++)
            l_516[i] = &p_1734->g_179;
        (**p_1734->g_110) = ((safe_lshift_func_int16_t_s_s((*l_398), p_54)) | (safe_div_func_uint16_t_u_u((safe_div_func_int32_t_s_s(((((p_1734->g_373 = ((safe_lshift_func_int16_t_s_u((l_513 == p_1734->g_514), 0)) , ((&p_1734->g_208 == l_515) , (p_1734->g_208 ^= p_1734->g_2)))) < ((p_1734->g_comm_values[p_1734->tid] = ((*l_398) , (safe_rshift_func_int16_t_s_s((p_52 & p_52), 5)))) | (-7L))) >= (*p_1734->g_111)) < l_522), (*l_398))), p_1734->g_65)));
    }
    l_398 = ((((*l_552) = ((*l_551) = (safe_mul_func_int8_t_s_s((((safe_rshift_func_int8_t_s_u((safe_mod_func_uint64_t_u_u(p_1734->g_203, p_54)), ((safe_mul_func_int16_t_s_s((*l_398), (((safe_add_func_int32_t_s_s((safe_div_func_uint8_t_u_u(0UL, ((l_76 = (((*l_536) = ((*l_535) = 0x923BL)) != (0x5EDAL < ((safe_div_func_int8_t_s_s(((*l_541) = (((*l_455)++) >= (**p_1734->g_110))), (p_1734->g_9 ^ (safe_div_func_int64_t_s_s(((((safe_sub_func_int32_t_s_s((((*l_546) = p_1734->g_154) , (**p_1734->g_110)), 4294967288UL)) , (*l_398)) < p_52) , l_547[7][3][4]), p_54))))) == p_52)))) | p_53))), p_53)) > p_1734->g_169) , (*l_398)))) & p_53))) >= p_54) >= GROUP_DIVERGE(2, 1)), p_1734->g_179)))) , 0xEAFFF7F9L) , (*p_1734->g_110));
    return &p_1734->g_31[4];
}


/* ------------------------------------------ */
/* 
 * reads : p_1734->g_31
 * writes:
 */
int8_t  func_57(int32_t * p_58, uint8_t * p_59, uint8_t * p_60, struct S0 * p_1734)
{ /* block id: 25 */
    return p_1734->g_31[4];
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint8_t * func_62(int32_t * p_63, uint64_t  p_64, struct S0 * p_1734)
{ /* block id: 21 */
    uint32_t l_66[7][4][4] = {{{4UL,0x762BE970L,0x98381653L,4UL},{4UL,0x762BE970L,0x98381653L,4UL},{4UL,0x762BE970L,0x98381653L,4UL},{4UL,0x762BE970L,0x98381653L,4UL}},{{4UL,0x762BE970L,0x98381653L,4UL},{4UL,0x762BE970L,0x98381653L,4UL},{4UL,0x762BE970L,0x98381653L,4UL},{4UL,0x762BE970L,0x98381653L,4UL}},{{4UL,0x762BE970L,0x98381653L,4UL},{4UL,0x762BE970L,0x98381653L,4UL},{4UL,0x762BE970L,0x98381653L,4UL},{4UL,0x762BE970L,0x98381653L,4UL}},{{4UL,0x762BE970L,0x98381653L,4UL},{4UL,0x762BE970L,0x98381653L,4UL},{4UL,0x762BE970L,0x98381653L,4UL},{4UL,0x762BE970L,0x98381653L,4UL}},{{4UL,0x762BE970L,0x98381653L,4UL},{4UL,0x762BE970L,0x98381653L,4UL},{4UL,0x762BE970L,0x98381653L,4UL},{4UL,0x762BE970L,0x98381653L,4UL}},{{4UL,0x762BE970L,0x98381653L,4UL},{4UL,0x762BE970L,0x98381653L,4UL},{4UL,0x762BE970L,0x98381653L,4UL},{4UL,0x762BE970L,0x98381653L,4UL}},{{4UL,0x762BE970L,0x98381653L,4UL},{4UL,0x762BE970L,0x98381653L,4UL},{4UL,0x762BE970L,0x98381653L,4UL},{4UL,0x762BE970L,0x98381653L,4UL}}};
    int32_t l_69 = 0L;
    int i, j, k;
    l_66[4][3][3]--;
    l_69 ^= (-1L);
    return &p_1734->g_31[5];
}


/* ------------------------------------------ */
/* 
 * reads : p_1734->g_203 p_1734->g_152 p_1734->g_110 p_1734->g_111
 * writes: p_1734->g_203 p_1734->g_369 p_1734->g_111
 */
int8_t  func_88(uint32_t  p_89, struct S0 * p_1734)
{ /* block id: 148 */
    int32_t *l_352[7][3] = {{&p_1734->g_74[1],&p_1734->g_2,&p_1734->g_74[1]},{&p_1734->g_74[1],&p_1734->g_2,&p_1734->g_74[1]},{&p_1734->g_74[1],&p_1734->g_2,&p_1734->g_74[1]},{&p_1734->g_74[1],&p_1734->g_2,&p_1734->g_74[1]},{&p_1734->g_74[1],&p_1734->g_2,&p_1734->g_74[1]},{&p_1734->g_74[1],&p_1734->g_2,&p_1734->g_74[1]},{&p_1734->g_74[1],&p_1734->g_2,&p_1734->g_74[1]}};
    int8_t l_353 = 0L;
    uint32_t l_354 = 0x7808C9F6L;
    uint8_t l_357 = 0x38L;
    uint8_t *l_362 = &l_357;
    uint16_t *l_365 = &p_1734->g_203;
    uint16_t *l_368 = &p_1734->g_369;
    int16_t l_370[5][7][5] = {{{(-1L),0x16B7L,0x3C26L,0x1DF7L,0x5F61L},{(-1L),0x16B7L,0x3C26L,0x1DF7L,0x5F61L},{(-1L),0x16B7L,0x3C26L,0x1DF7L,0x5F61L},{(-1L),0x16B7L,0x3C26L,0x1DF7L,0x5F61L},{(-1L),0x16B7L,0x3C26L,0x1DF7L,0x5F61L},{(-1L),0x16B7L,0x3C26L,0x1DF7L,0x5F61L},{(-1L),0x16B7L,0x3C26L,0x1DF7L,0x5F61L}},{{(-1L),0x16B7L,0x3C26L,0x1DF7L,0x5F61L},{(-1L),0x16B7L,0x3C26L,0x1DF7L,0x5F61L},{(-1L),0x16B7L,0x3C26L,0x1DF7L,0x5F61L},{(-1L),0x16B7L,0x3C26L,0x1DF7L,0x5F61L},{(-1L),0x16B7L,0x3C26L,0x1DF7L,0x5F61L},{(-1L),0x16B7L,0x3C26L,0x1DF7L,0x5F61L},{(-1L),0x16B7L,0x3C26L,0x1DF7L,0x5F61L}},{{(-1L),0x16B7L,0x3C26L,0x1DF7L,0x5F61L},{(-1L),0x16B7L,0x3C26L,0x1DF7L,0x5F61L},{(-1L),0x16B7L,0x3C26L,0x1DF7L,0x5F61L},{(-1L),0x16B7L,0x3C26L,0x1DF7L,0x5F61L},{(-1L),0x16B7L,0x3C26L,0x1DF7L,0x5F61L},{(-1L),0x16B7L,0x3C26L,0x1DF7L,0x5F61L},{(-1L),0x16B7L,0x3C26L,0x1DF7L,0x5F61L}},{{(-1L),0x16B7L,0x3C26L,0x1DF7L,0x5F61L},{(-1L),0x16B7L,0x3C26L,0x1DF7L,0x5F61L},{(-1L),0x16B7L,0x3C26L,0x1DF7L,0x5F61L},{(-1L),0x16B7L,0x3C26L,0x1DF7L,0x5F61L},{(-1L),0x16B7L,0x3C26L,0x1DF7L,0x5F61L},{(-1L),0x16B7L,0x3C26L,0x1DF7L,0x5F61L},{(-1L),0x16B7L,0x3C26L,0x1DF7L,0x5F61L}},{{(-1L),0x16B7L,0x3C26L,0x1DF7L,0x5F61L},{(-1L),0x16B7L,0x3C26L,0x1DF7L,0x5F61L},{(-1L),0x16B7L,0x3C26L,0x1DF7L,0x5F61L},{(-1L),0x16B7L,0x3C26L,0x1DF7L,0x5F61L},{(-1L),0x16B7L,0x3C26L,0x1DF7L,0x5F61L},{(-1L),0x16B7L,0x3C26L,0x1DF7L,0x5F61L},{(-1L),0x16B7L,0x3C26L,0x1DF7L,0x5F61L}}};
    int i, j, k;
    l_354++;
    l_357--;
    (*p_1734->g_110) = ((p_1734->g_203 , (safe_mul_func_uint8_t_u_u(((*l_362) = (0x1472859EC389FFE2L | p_1734->g_152)), (safe_sub_func_uint16_t_u_u(((*l_368) = ((*l_365)++)), 65527UL))))) , l_352[0][2]);
    l_352[5][2] = (*p_1734->g_110);
    return l_370[1][4][1];
}


/* ------------------------------------------ */
/* 
 * reads : p_1734->g_110 p_1734->g_111 p_1734->g_121 p_1734->g_comm_values p_1734->g_9 p_1734->g_31 p_1734->g_2 p_1734->g_65 p_1734->g_74 p_1734->g_179 p_1734->g_109 p_1734->g_208 p_1734->g_203 p_1734->g_269 p_1734->g_97 p_1734->g_154 p_1734->g_152 p_1734->g_325
 * writes: p_1734->g_111 p_1734->g_118 p_1734->g_74 p_1734->g_152 p_1734->g_154 p_1734->g_179 p_1734->g_269 p_1734->g_169 p_1734->g_305 p_1734->g_203 p_1734->g_325
 */
int16_t  func_92(uint8_t * p_93, int32_t  p_94, int32_t ** p_95, int64_t  p_96, struct S0 * p_1734)
{ /* block id: 39 */
    int16_t l_128 = 0L;
    int32_t *l_148 = &p_1734->g_109;
    int32_t l_163 = 1L;
    uint8_t l_188 = 0x2AL;
    int32_t l_204 = 1L;
    int64_t l_227 = 0x5B194EF10369643DL;
    int32_t l_228 = 0x21F96459L;
    int32_t l_229[5][4] = {{0x25930371L,0x589197F5L,(-3L),0x589197F5L},{0x25930371L,0x589197F5L,(-3L),0x589197F5L},{0x25930371L,0x589197F5L,(-3L),0x589197F5L},{0x25930371L,0x589197F5L,(-3L),0x589197F5L},{0x25930371L,0x589197F5L,(-3L),0x589197F5L}};
    uint32_t l_230 = 0UL;
    int32_t l_238 = (-4L);
    uint8_t l_239 = 255UL;
    uint64_t l_302 = 18446744073709551615UL;
    int32_t l_320 = 1L;
    int8_t l_321 = 0x5EL;
    uint32_t l_349 = 0x6D68D491L;
    int i, j;
    if (((*p_1734->g_110) == (void*)0))
    { /* block id: 40 */
        int32_t *l_112 = &p_1734->g_74[2];
        int32_t **l_117 = (void*)0;
        int64_t *l_129[9][7][1] = {{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}}};
        int64_t l_146[10] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
        uint32_t l_219 = 0x208BFBE8L;
        int32_t l_225 = (-1L);
        int32_t l_226[1][4];
        uint8_t l_243 = 0xF4L;
        uint64_t *l_286 = (void*)0;
        uint64_t *l_287 = &p_1734->g_179;
        int8_t *l_303 = &p_1734->g_169;
        int8_t *l_304 = &p_1734->g_305;
        uint16_t l_322 = 1UL;
        uint16_t *l_323 = &p_1734->g_203;
        int32_t *l_324 = &p_1734->g_325;
        int32_t *l_326 = &l_228;
        int i, j, k;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 4; j++)
                l_226[i][j] = 0x179B65F2L;
        }
        l_112 = ((*p_1734->g_110) = (*p_1734->g_110));
        if ((safe_div_func_uint64_t_u_u((((*p_1734->g_110) != (void*)0) , (safe_mul_func_int8_t_s_s((&p_1734->g_109 != (p_1734->g_118[0][0][1] = &p_94)), (FAKE_DIVERGE(p_1734->group_2_offset, get_group_id(2), 10) != p_94)))), (safe_mod_func_uint16_t_u_u((p_1734->g_121 == &p_1734->g_122), (safe_mod_func_int64_t_s_s(((*l_112) = (safe_rshift_func_uint8_t_u_u(l_128, 3))), (safe_sub_func_uint8_t_u_u((((safe_mul_func_int16_t_s_s(((safe_sub_func_int16_t_s_s((p_94 && p_1734->g_comm_values[p_1734->tid]), p_1734->g_9)) < 0x20L), (-1L))) || p_96) > p_96), p_94)))))))))
        { /* block id: 45 */
            uint8_t l_147 = 0UL;
            uint16_t *l_151 = &p_1734->g_152;
            int32_t *l_153[8] = {&p_1734->g_154,&p_1734->g_154,&p_1734->g_154,&p_1734->g_154,&p_1734->g_154,&p_1734->g_154,&p_1734->g_154,&p_1734->g_154};
            int64_t l_161 = 0x0C4D6C3E8AFA607CL;
            int8_t *l_197 = &p_1734->g_169;
            int i;
            p_1734->g_154 = ((((safe_rshift_func_uint8_t_u_u((safe_mul_func_uint16_t_u_u((safe_mul_func_uint8_t_u_u((l_128 == ((safe_mul_func_int8_t_s_s(l_146[3], l_147)) || (-1L))), ((((*p_1734->g_111) = (0x8BEC3B116CE8D70DL > ((void*)0 == l_148))) & (safe_div_func_uint16_t_u_u(((*l_151) = (0xA6B3F764L ^ 0L)), 4L))) , p_1734->g_31[5]))), 0x2336L)), l_128)) | p_1734->g_31[5]) && 0L) & p_94);
            for (l_128 = (-21); (l_128 == 17); ++l_128)
            { /* block id: 51 */
                int16_t *l_162[9][9][3] = {{{&p_1734->g_65,(void*)0,(void*)0},{&p_1734->g_65,(void*)0,(void*)0},{&p_1734->g_65,(void*)0,(void*)0},{&p_1734->g_65,(void*)0,(void*)0},{&p_1734->g_65,(void*)0,(void*)0},{&p_1734->g_65,(void*)0,(void*)0},{&p_1734->g_65,(void*)0,(void*)0},{&p_1734->g_65,(void*)0,(void*)0},{&p_1734->g_65,(void*)0,(void*)0}},{{&p_1734->g_65,(void*)0,(void*)0},{&p_1734->g_65,(void*)0,(void*)0},{&p_1734->g_65,(void*)0,(void*)0},{&p_1734->g_65,(void*)0,(void*)0},{&p_1734->g_65,(void*)0,(void*)0},{&p_1734->g_65,(void*)0,(void*)0},{&p_1734->g_65,(void*)0,(void*)0},{&p_1734->g_65,(void*)0,(void*)0},{&p_1734->g_65,(void*)0,(void*)0}},{{&p_1734->g_65,(void*)0,(void*)0},{&p_1734->g_65,(void*)0,(void*)0},{&p_1734->g_65,(void*)0,(void*)0},{&p_1734->g_65,(void*)0,(void*)0},{&p_1734->g_65,(void*)0,(void*)0},{&p_1734->g_65,(void*)0,(void*)0},{&p_1734->g_65,(void*)0,(void*)0},{&p_1734->g_65,(void*)0,(void*)0},{&p_1734->g_65,(void*)0,(void*)0}},{{&p_1734->g_65,(void*)0,(void*)0},{&p_1734->g_65,(void*)0,(void*)0},{&p_1734->g_65,(void*)0,(void*)0},{&p_1734->g_65,(void*)0,(void*)0},{&p_1734->g_65,(void*)0,(void*)0},{&p_1734->g_65,(void*)0,(void*)0},{&p_1734->g_65,(void*)0,(void*)0},{&p_1734->g_65,(void*)0,(void*)0},{&p_1734->g_65,(void*)0,(void*)0}},{{&p_1734->g_65,(void*)0,(void*)0},{&p_1734->g_65,(void*)0,(void*)0},{&p_1734->g_65,(void*)0,(void*)0},{&p_1734->g_65,(void*)0,(void*)0},{&p_1734->g_65,(void*)0,(void*)0},{&p_1734->g_65,(void*)0,(void*)0},{&p_1734->g_65,(void*)0,(void*)0},{&p_1734->g_65,(void*)0,(void*)0},{&p_1734->g_65,(void*)0,(void*)0}},{{&p_1734->g_65,(void*)0,(void*)0},{&p_1734->g_65,(void*)0,(void*)0},{&p_1734->g_65,(void*)0,(void*)0},{&p_1734->g_65,(void*)0,(void*)0},{&p_1734->g_65,(void*)0,(void*)0},{&p_1734->g_65,(void*)0,(void*)0},{&p_1734->g_65,(void*)0,(void*)0},{&p_1734->g_65,(void*)0,(void*)0},{&p_1734->g_65,(void*)0,(void*)0}},{{&p_1734->g_65,(void*)0,(void*)0},{&p_1734->g_65,(void*)0,(void*)0},{&p_1734->g_65,(void*)0,(void*)0},{&p_1734->g_65,(void*)0,(void*)0},{&p_1734->g_65,(void*)0,(void*)0},{&p_1734->g_65,(void*)0,(void*)0},{&p_1734->g_65,(void*)0,(void*)0},{&p_1734->g_65,(void*)0,(void*)0},{&p_1734->g_65,(void*)0,(void*)0}},{{&p_1734->g_65,(void*)0,(void*)0},{&p_1734->g_65,(void*)0,(void*)0},{&p_1734->g_65,(void*)0,(void*)0},{&p_1734->g_65,(void*)0,(void*)0},{&p_1734->g_65,(void*)0,(void*)0},{&p_1734->g_65,(void*)0,(void*)0},{&p_1734->g_65,(void*)0,(void*)0},{&p_1734->g_65,(void*)0,(void*)0},{&p_1734->g_65,(void*)0,(void*)0}},{{&p_1734->g_65,(void*)0,(void*)0},{&p_1734->g_65,(void*)0,(void*)0},{&p_1734->g_65,(void*)0,(void*)0},{&p_1734->g_65,(void*)0,(void*)0},{&p_1734->g_65,(void*)0,(void*)0},{&p_1734->g_65,(void*)0,(void*)0},{&p_1734->g_65,(void*)0,(void*)0},{&p_1734->g_65,(void*)0,(void*)0},{&p_1734->g_65,(void*)0,(void*)0}}};
                int32_t l_166 = (-1L);
                int8_t *l_167 = (void*)0;
                int8_t *l_168 = &p_1734->g_169;
                uint64_t *l_178 = &p_1734->g_179;
                int32_t l_189 = 0L;
                uint32_t *l_209 = (void*)0;
                int i, j, k;
                (1 + 1);
            }
            l_225 = ((**p_95) &= (p_1734->g_2 && p_1734->g_65));
            l_230++;
        }
        else
        { /* block id: 91 */
            return p_94;
        }
        for (l_230 = 0; (l_230 <= 3); l_230 += 1)
        { /* block id: 96 */
            int32_t *l_233 = &l_229[3][3];
            int32_t *l_234 = &l_204;
            int32_t *l_235 = &l_229[2][2];
            int32_t *l_236 = &p_1734->g_74[0];
            int32_t *l_237[9][9][3] = {{{&l_226[0][3],(void*)0,&l_226[0][3]},{&l_226[0][3],(void*)0,&l_226[0][3]},{&l_226[0][3],(void*)0,&l_226[0][3]},{&l_226[0][3],(void*)0,&l_226[0][3]},{&l_226[0][3],(void*)0,&l_226[0][3]},{&l_226[0][3],(void*)0,&l_226[0][3]},{&l_226[0][3],(void*)0,&l_226[0][3]},{&l_226[0][3],(void*)0,&l_226[0][3]},{&l_226[0][3],(void*)0,&l_226[0][3]}},{{&l_226[0][3],(void*)0,&l_226[0][3]},{&l_226[0][3],(void*)0,&l_226[0][3]},{&l_226[0][3],(void*)0,&l_226[0][3]},{&l_226[0][3],(void*)0,&l_226[0][3]},{&l_226[0][3],(void*)0,&l_226[0][3]},{&l_226[0][3],(void*)0,&l_226[0][3]},{&l_226[0][3],(void*)0,&l_226[0][3]},{&l_226[0][3],(void*)0,&l_226[0][3]},{&l_226[0][3],(void*)0,&l_226[0][3]}},{{&l_226[0][3],(void*)0,&l_226[0][3]},{&l_226[0][3],(void*)0,&l_226[0][3]},{&l_226[0][3],(void*)0,&l_226[0][3]},{&l_226[0][3],(void*)0,&l_226[0][3]},{&l_226[0][3],(void*)0,&l_226[0][3]},{&l_226[0][3],(void*)0,&l_226[0][3]},{&l_226[0][3],(void*)0,&l_226[0][3]},{&l_226[0][3],(void*)0,&l_226[0][3]},{&l_226[0][3],(void*)0,&l_226[0][3]}},{{&l_226[0][3],(void*)0,&l_226[0][3]},{&l_226[0][3],(void*)0,&l_226[0][3]},{&l_226[0][3],(void*)0,&l_226[0][3]},{&l_226[0][3],(void*)0,&l_226[0][3]},{&l_226[0][3],(void*)0,&l_226[0][3]},{&l_226[0][3],(void*)0,&l_226[0][3]},{&l_226[0][3],(void*)0,&l_226[0][3]},{&l_226[0][3],(void*)0,&l_226[0][3]},{&l_226[0][3],(void*)0,&l_226[0][3]}},{{&l_226[0][3],(void*)0,&l_226[0][3]},{&l_226[0][3],(void*)0,&l_226[0][3]},{&l_226[0][3],(void*)0,&l_226[0][3]},{&l_226[0][3],(void*)0,&l_226[0][3]},{&l_226[0][3],(void*)0,&l_226[0][3]},{&l_226[0][3],(void*)0,&l_226[0][3]},{&l_226[0][3],(void*)0,&l_226[0][3]},{&l_226[0][3],(void*)0,&l_226[0][3]},{&l_226[0][3],(void*)0,&l_226[0][3]}},{{&l_226[0][3],(void*)0,&l_226[0][3]},{&l_226[0][3],(void*)0,&l_226[0][3]},{&l_226[0][3],(void*)0,&l_226[0][3]},{&l_226[0][3],(void*)0,&l_226[0][3]},{&l_226[0][3],(void*)0,&l_226[0][3]},{&l_226[0][3],(void*)0,&l_226[0][3]},{&l_226[0][3],(void*)0,&l_226[0][3]},{&l_226[0][3],(void*)0,&l_226[0][3]},{&l_226[0][3],(void*)0,&l_226[0][3]}},{{&l_226[0][3],(void*)0,&l_226[0][3]},{&l_226[0][3],(void*)0,&l_226[0][3]},{&l_226[0][3],(void*)0,&l_226[0][3]},{&l_226[0][3],(void*)0,&l_226[0][3]},{&l_226[0][3],(void*)0,&l_226[0][3]},{&l_226[0][3],(void*)0,&l_226[0][3]},{&l_226[0][3],(void*)0,&l_226[0][3]},{&l_226[0][3],(void*)0,&l_226[0][3]},{&l_226[0][3],(void*)0,&l_226[0][3]}},{{&l_226[0][3],(void*)0,&l_226[0][3]},{&l_226[0][3],(void*)0,&l_226[0][3]},{&l_226[0][3],(void*)0,&l_226[0][3]},{&l_226[0][3],(void*)0,&l_226[0][3]},{&l_226[0][3],(void*)0,&l_226[0][3]},{&l_226[0][3],(void*)0,&l_226[0][3]},{&l_226[0][3],(void*)0,&l_226[0][3]},{&l_226[0][3],(void*)0,&l_226[0][3]},{&l_226[0][3],(void*)0,&l_226[0][3]}},{{&l_226[0][3],(void*)0,&l_226[0][3]},{&l_226[0][3],(void*)0,&l_226[0][3]},{&l_226[0][3],(void*)0,&l_226[0][3]},{&l_226[0][3],(void*)0,&l_226[0][3]},{&l_226[0][3],(void*)0,&l_226[0][3]},{&l_226[0][3],(void*)0,&l_226[0][3]},{&l_226[0][3],(void*)0,&l_226[0][3]},{&l_226[0][3],(void*)0,&l_226[0][3]},{&l_226[0][3],(void*)0,&l_226[0][3]}}};
            int16_t l_242 = 0x61F5L;
            int i, j, k;
            ++l_239;
            (*p_95) = (*p_95);
            l_243++;
            for (p_1734->g_179 = 0; (p_1734->g_179 <= 2); p_1734->g_179 += 1)
            { /* block id: 102 */
                uint64_t *l_268 = (void*)0;
                int16_t *l_270 = (void*)0;
                int16_t *l_271 = &l_128;
                int i, j;
                l_229[(l_230 + 1)][l_230] = (((safe_add_func_int16_t_s_s((0x1502L > (safe_lshift_func_uint16_t_u_s(65535UL, ((*l_271) = (1L == (safe_mod_func_uint64_t_u_u((safe_lshift_func_uint16_t_u_s(((safe_add_func_int64_t_s_s(((safe_sub_func_uint8_t_u_u(((safe_add_func_uint32_t_u_u((2L && FAKE_DIVERGE(p_1734->group_1_offset, get_group_id(1), 10)), (l_229[l_230][l_230] || (safe_mod_func_uint64_t_u_u((p_1734->g_269 &= ((safe_rshift_func_uint16_t_u_u((safe_sub_func_uint8_t_u_u((*p_93), p_1734->g_109)), 13)) && (safe_mod_func_int16_t_s_s(((p_1734->g_208 >= 6UL) & (*l_112)), p_1734->g_203)))), p_94))))) , (*p_93)), p_1734->g_97)) , (*l_112)), l_229[l_230][l_230])) < 1L), l_229[l_230][l_230])), p_94))))))), p_96)) >= l_229[4][1]) == p_96);
                p_1734->g_74[p_1734->g_179] |= (((*l_235) = 0xC51C246DL) && 0x2FCF4280L);
                for (l_219 = 0; (l_219 <= 2); l_219 += 1)
                { /* block id: 110 */
                    int16_t l_272 = 0x6506L;
                    int32_t l_274 = 1L;
                    (*p_95) = (*p_1734->g_110);
                    for (p_1734->g_154 = 0; (p_1734->g_154 <= 2); p_1734->g_154 += 1)
                    { /* block id: 114 */
                        int32_t l_273 = 8L;
                        uint8_t l_275 = 255UL;
                        int i;
                        l_275++;
                        (*l_235) = (**p_1734->g_110);
                        if ((**p_95))
                            break;
                        (*l_235) &= 0x7614A8DAL;
                    }
                }
                return p_1734->g_2;
            }
        }
        (*l_326) ^= (l_229[3][3] = ((((*l_324) ^= (p_94 = (safe_mod_func_uint32_t_u_u(((((((*l_323) = (safe_mod_func_int16_t_s_s((safe_lshift_func_uint8_t_u_u((~0xA3L), (((((safe_sub_func_int64_t_s_s((FAKE_DIVERGE(p_1734->local_1_offset, get_local_id(1), 10) , (((++(*l_287)) ^ l_229[2][0]) && ((((+(safe_mul_func_uint8_t_u_u((p_96 ^ (safe_mul_func_uint8_t_u_u(((GROUP_DIVERGE(1, 1) , (0x26E95CD937E00E04L >= (safe_lshift_func_uint8_t_u_u((safe_mul_func_uint8_t_u_u(((safe_sub_func_uint8_t_u_u((safe_div_func_int8_t_s_s(((*l_304) = ((*l_303) = l_302)), (((+((*l_112) , (((safe_sub_func_uint32_t_u_u((((~((safe_lshift_func_uint16_t_u_u(((safe_sub_func_int32_t_s_s((safe_add_func_int32_t_s_s(((*p_1734->g_111) = (safe_mod_func_int32_t_s_s((p_93 == ((safe_add_func_int16_t_s_s(((p_96 >= ((((safe_add_func_int8_t_s_s(0x33L, 0L)) , (*l_112)) <= 1L) >= p_94)) , p_1734->g_109), p_96)) , &p_1734->g_269)), (*p_1734->g_111)))), FAKE_DIVERGE(p_1734->global_2_offset, get_global_id(2), 10))), p_94)) , l_320), 12)) ^ p_96)) , (*l_112)) >= 0UL), p_94)) && GROUP_DIVERGE(2, 1)) < 0xFAC47A8DL))) , 0x4EF8L) && l_321))), p_1734->g_9)) , 0x4AL), FAKE_DIVERGE(p_1734->group_1_offset, get_group_id(1), 10))), 1)))) | 0x12L), p_1734->g_152))), (*p_93)))) && l_229[3][3]) >= 9L) == l_322))), p_96)) , p_96) && p_1734->g_179) , 4L) & p_1734->g_203))), 1L))) | FAKE_DIVERGE(p_1734->group_0_offset, get_group_id(0), 10)) , &l_322) == &p_1734->g_152) , p_96), GROUP_DIVERGE(1, 1))))) , &l_324) == &l_324));
    }
    else
    { /* block id: 133 */
        int32_t *l_327[4];
        int i;
        for (i = 0; i < 4; i++)
            l_327[i] = (void*)0;
        (*p_1734->g_110) = l_327[3];
        (*p_95) = (p_94 , (void*)0);
        for (p_1734->g_152 = 16; (p_1734->g_152 > 22); p_1734->g_152 = safe_add_func_uint32_t_u_u(p_1734->g_152, 2))
        { /* block id: 138 */
            int16_t l_332[10][1][2] = {{{0x17ADL,0x17ADL}},{{0x17ADL,0x17ADL}},{{0x17ADL,0x17ADL}},{{0x17ADL,0x17ADL}},{{0x17ADL,0x17ADL}},{{0x17ADL,0x17ADL}},{{0x17ADL,0x17ADL}},{{0x17ADL,0x17ADL}},{{0x17ADL,0x17ADL}},{{0x17ADL,0x17ADL}}};
            int32_t l_335 = (-1L);
            int32_t l_337 = 1L;
            int32_t l_339 = 0x494BFDEAL;
            int32_t l_340 = 0x0BF64990L;
            int32_t l_341 = 5L;
            int32_t l_342 = (-1L);
            int32_t l_343 = 0x631F8928L;
            int32_t l_344 = (-6L);
            int32_t l_345 = 0x406AF33DL;
            int32_t l_346 = 6L;
            int32_t l_347[10][8] = {{0L,0x12418C29L,0x65AA65B5L,0x3B14E47FL,0x65AA65B5L,0x12418C29L,0L,6L},{0L,0x12418C29L,0x65AA65B5L,0x3B14E47FL,0x65AA65B5L,0x12418C29L,0L,6L},{0L,0x12418C29L,0x65AA65B5L,0x3B14E47FL,0x65AA65B5L,0x12418C29L,0L,6L},{0L,0x12418C29L,0x65AA65B5L,0x3B14E47FL,0x65AA65B5L,0x12418C29L,0L,6L},{0L,0x12418C29L,0x65AA65B5L,0x3B14E47FL,0x65AA65B5L,0x12418C29L,0L,6L},{0L,0x12418C29L,0x65AA65B5L,0x3B14E47FL,0x65AA65B5L,0x12418C29L,0L,6L},{0L,0x12418C29L,0x65AA65B5L,0x3B14E47FL,0x65AA65B5L,0x12418C29L,0L,6L},{0L,0x12418C29L,0x65AA65B5L,0x3B14E47FL,0x65AA65B5L,0x12418C29L,0L,6L},{0L,0x12418C29L,0x65AA65B5L,0x3B14E47FL,0x65AA65B5L,0x12418C29L,0L,6L},{0L,0x12418C29L,0x65AA65B5L,0x3B14E47FL,0x65AA65B5L,0x12418C29L,0L,6L}};
            int i, j, k;
            for (l_227 = 7; (l_227 <= (-13)); l_227--)
            { /* block id: 141 */
                int8_t l_333 = 1L;
                int32_t l_334 = 7L;
                int32_t l_336 = (-1L);
                int32_t l_338[2][2][1];
                int32_t l_348[9] = {1L,1L,1L,1L,1L,1L,1L,1L,1L};
                int i, j, k;
                for (i = 0; i < 2; i++)
                {
                    for (j = 0; j < 2; j++)
                    {
                        for (k = 0; k < 1; k++)
                            l_338[i][j][k] = (-2L);
                    }
                }
                l_349++;
                p_1734->g_74[1] |= (0x40CE98A5E33AD690L | GROUP_DIVERGE(1, 1));
            }
        }
    }
    return p_94;
}


__kernel void entry(__global ulong *result, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local int64_t l_comm_values[37];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 37; i++)
            l_comm_values[i] = 1;
    struct S0 c_1735;
    struct S0* p_1734 = &c_1735;
    struct S0 c_1736 = {
        8L, // p_1734->g_2
        0x7C558BACL, // p_1734->g_5
        0x67D214C4L, // p_1734->g_6
        {0x40194DDBL,0x40194DDBL,0x40194DDBL,0x40194DDBL,0x40194DDBL,0x40194DDBL,0x40194DDBL,0x40194DDBL}, // p_1734->g_7
        {0L,0L,0L,0L}, // p_1734->g_8
        0x3A86BA47L, // p_1734->g_9
        0x42041022L, // p_1734->g_29
        {1UL,1UL,1UL,1UL,1UL,1UL,1UL}, // p_1734->g_31
        0x1046L, // p_1734->g_65
        {0x7F6CFD11L,0x7F6CFD11L,0x7F6CFD11L}, // p_1734->g_74
        0UL, // p_1734->g_97
        (-9L), // p_1734->g_109
        &p_1734->g_74[1], // p_1734->g_111
        &p_1734->g_111, // p_1734->g_110
        {{{&p_1734->g_109,&p_1734->g_109,&p_1734->g_109},{&p_1734->g_109,&p_1734->g_109,&p_1734->g_109},{&p_1734->g_109,&p_1734->g_109,&p_1734->g_109},{&p_1734->g_109,&p_1734->g_109,&p_1734->g_109},{&p_1734->g_109,&p_1734->g_109,&p_1734->g_109},{&p_1734->g_109,&p_1734->g_109,&p_1734->g_109},{&p_1734->g_109,&p_1734->g_109,&p_1734->g_109},{&p_1734->g_109,&p_1734->g_109,&p_1734->g_109},{&p_1734->g_109,&p_1734->g_109,&p_1734->g_109}},{{&p_1734->g_109,&p_1734->g_109,&p_1734->g_109},{&p_1734->g_109,&p_1734->g_109,&p_1734->g_109},{&p_1734->g_109,&p_1734->g_109,&p_1734->g_109},{&p_1734->g_109,&p_1734->g_109,&p_1734->g_109},{&p_1734->g_109,&p_1734->g_109,&p_1734->g_109},{&p_1734->g_109,&p_1734->g_109,&p_1734->g_109},{&p_1734->g_109,&p_1734->g_109,&p_1734->g_109},{&p_1734->g_109,&p_1734->g_109,&p_1734->g_109},{&p_1734->g_109,&p_1734->g_109,&p_1734->g_109}},{{&p_1734->g_109,&p_1734->g_109,&p_1734->g_109},{&p_1734->g_109,&p_1734->g_109,&p_1734->g_109},{&p_1734->g_109,&p_1734->g_109,&p_1734->g_109},{&p_1734->g_109,&p_1734->g_109,&p_1734->g_109},{&p_1734->g_109,&p_1734->g_109,&p_1734->g_109},{&p_1734->g_109,&p_1734->g_109,&p_1734->g_109},{&p_1734->g_109,&p_1734->g_109,&p_1734->g_109},{&p_1734->g_109,&p_1734->g_109,&p_1734->g_109},{&p_1734->g_109,&p_1734->g_109,&p_1734->g_109}},{{&p_1734->g_109,&p_1734->g_109,&p_1734->g_109},{&p_1734->g_109,&p_1734->g_109,&p_1734->g_109},{&p_1734->g_109,&p_1734->g_109,&p_1734->g_109},{&p_1734->g_109,&p_1734->g_109,&p_1734->g_109},{&p_1734->g_109,&p_1734->g_109,&p_1734->g_109},{&p_1734->g_109,&p_1734->g_109,&p_1734->g_109},{&p_1734->g_109,&p_1734->g_109,&p_1734->g_109},{&p_1734->g_109,&p_1734->g_109,&p_1734->g_109},{&p_1734->g_109,&p_1734->g_109,&p_1734->g_109}},{{&p_1734->g_109,&p_1734->g_109,&p_1734->g_109},{&p_1734->g_109,&p_1734->g_109,&p_1734->g_109},{&p_1734->g_109,&p_1734->g_109,&p_1734->g_109},{&p_1734->g_109,&p_1734->g_109,&p_1734->g_109},{&p_1734->g_109,&p_1734->g_109,&p_1734->g_109},{&p_1734->g_109,&p_1734->g_109,&p_1734->g_109},{&p_1734->g_109,&p_1734->g_109,&p_1734->g_109},{&p_1734->g_109,&p_1734->g_109,&p_1734->g_109},{&p_1734->g_109,&p_1734->g_109,&p_1734->g_109}}}, // p_1734->g_118
        0x5B34A7E5L, // p_1734->g_123
        &p_1734->g_123, // p_1734->g_122
        &p_1734->g_122, // p_1734->g_121
        65531UL, // p_1734->g_152
        0x33A4ADEFL, // p_1734->g_154
        0x15L, // p_1734->g_169
        0x84E04F8DB93C28B9L, // p_1734->g_179
        1UL, // p_1734->g_203
        0xACBB44B8FFC6A774L, // p_1734->g_208
        0UL, // p_1734->g_269
        8L, // p_1734->g_305
        (-1L), // p_1734->g_325
        9UL, // p_1734->g_369
        18446744073709551606UL, // p_1734->g_373
        (void*)0, // p_1734->g_456
        0x0072E4C4L, // p_1734->g_492
        (void*)0, // p_1734->g_514
        0xC043D256L, // p_1734->g_549
        {0x2301L,0x2301L,0x2301L,0x2301L,0x2301L,0x2301L,0x2301L,0x2301L,0x2301L,0x2301L}, // p_1734->g_553
        0x22038E34L, // p_1734->g_602
        {{&p_1734->g_118[0][0][1],(void*)0,&p_1734->g_118[0][0][1],&p_1734->g_118[1][6][0],&p_1734->g_118[0][0][1],(void*)0,&p_1734->g_118[0][0][1],&p_1734->g_118[4][4][0],(void*)0,(void*)0},{&p_1734->g_118[0][0][1],(void*)0,&p_1734->g_118[0][0][1],&p_1734->g_118[1][6][0],&p_1734->g_118[0][0][1],(void*)0,&p_1734->g_118[0][0][1],&p_1734->g_118[4][4][0],(void*)0,(void*)0},{&p_1734->g_118[0][0][1],(void*)0,&p_1734->g_118[0][0][1],&p_1734->g_118[1][6][0],&p_1734->g_118[0][0][1],(void*)0,&p_1734->g_118[0][0][1],&p_1734->g_118[4][4][0],(void*)0,(void*)0},{&p_1734->g_118[0][0][1],(void*)0,&p_1734->g_118[0][0][1],&p_1734->g_118[1][6][0],&p_1734->g_118[0][0][1],(void*)0,&p_1734->g_118[0][0][1],&p_1734->g_118[4][4][0],(void*)0,(void*)0},{&p_1734->g_118[0][0][1],(void*)0,&p_1734->g_118[0][0][1],&p_1734->g_118[1][6][0],&p_1734->g_118[0][0][1],(void*)0,&p_1734->g_118[0][0][1],&p_1734->g_118[4][4][0],(void*)0,(void*)0}}, // p_1734->g_604
        &p_1734->g_604[1][6], // p_1734->g_603
        &p_1734->g_604[2][6], // p_1734->g_606
        &p_1734->g_602, // p_1734->g_657
        &p_1734->g_657, // p_1734->g_656
        (void*)0, // p_1734->g_714
        &p_1734->g_714, // p_1734->g_713
        0x943EL, // p_1734->g_739
        {1UL,0x43C433A56EA3C064L,1UL,1UL,0x43C433A56EA3C064L,1UL,1UL}, // p_1734->g_790
        (void*)0, // p_1734->g_847
        &p_1734->g_847, // p_1734->g_846
        7UL, // p_1734->g_964
        7UL, // p_1734->g_1005
        &p_1734->g_65, // p_1734->g_1064
        &p_1734->g_1064, // p_1734->g_1063
        0x9A939C6BL, // p_1734->g_1075
        0x55869F94L, // p_1734->g_1156
        0x66L, // p_1734->g_1164
        0L, // p_1734->g_1171
        0xA68107A634B8F990L, // p_1734->g_1175
        (-7L), // p_1734->g_1220
        0x7E6258BCL, // p_1734->g_1230
        0x8E49C16FL, // p_1734->g_1289
        &p_1734->g_964, // p_1734->g_1295
        &p_1734->g_1295, // p_1734->g_1294
        {&p_1734->g_1294,&p_1734->g_1294,&p_1734->g_1294,&p_1734->g_1294,&p_1734->g_1294,&p_1734->g_1294,&p_1734->g_1294,&p_1734->g_1294}, // p_1734->g_1293
        &p_1734->g_74[0], // p_1734->g_1317
        &p_1734->g_456, // p_1734->g_1372
        (void*)0, // p_1734->g_1377
        &p_1734->g_1377, // p_1734->g_1376
        0x1AL, // p_1734->g_1459
        &p_1734->g_606, // p_1734->g_1470
        253UL, // p_1734->g_1497
        &p_1734->g_846, // p_1734->g_1525
        0x6EC4C7F56E2E2BF2L, // p_1734->g_1540
        0L, // p_1734->g_1564
        0x7CL, // p_1734->g_1658
        (void*)0, // p_1734->g_1659
        {(-7L),(-7L)}, // p_1734->g_1708
        sequence_input[get_global_id(0)], // p_1734->global_0_offset
        sequence_input[get_global_id(1)], // p_1734->global_1_offset
        sequence_input[get_global_id(2)], // p_1734->global_2_offset
        sequence_input[get_local_id(0)], // p_1734->local_0_offset
        sequence_input[get_local_id(1)], // p_1734->local_1_offset
        sequence_input[get_local_id(2)], // p_1734->local_2_offset
        sequence_input[get_group_id(0)], // p_1734->group_0_offset
        sequence_input[get_group_id(1)], // p_1734->group_1_offset
        sequence_input[get_group_id(2)], // p_1734->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 37)), permutations[0][get_linear_local_id()])), // p_1734->tid
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_1735 = c_1736;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1734);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1734->g_2, "p_1734->g_2", print_hash_value);
    transparent_crc(p_1734->g_5, "p_1734->g_5", print_hash_value);
    transparent_crc(p_1734->g_6, "p_1734->g_6", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1734->g_7[i], "p_1734->g_7[i]", print_hash_value);

    }
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1734->g_8[i], "p_1734->g_8[i]", print_hash_value);

    }
    transparent_crc(p_1734->g_9, "p_1734->g_9", print_hash_value);
    transparent_crc(p_1734->g_29, "p_1734->g_29", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1734->g_31[i], "p_1734->g_31[i]", print_hash_value);

    }
    transparent_crc(p_1734->g_65, "p_1734->g_65", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_1734->g_74[i], "p_1734->g_74[i]", print_hash_value);

    }
    transparent_crc(p_1734->g_97, "p_1734->g_97", print_hash_value);
    transparent_crc(p_1734->g_109, "p_1734->g_109", print_hash_value);
    transparent_crc(p_1734->g_123, "p_1734->g_123", print_hash_value);
    transparent_crc(p_1734->g_152, "p_1734->g_152", print_hash_value);
    transparent_crc(p_1734->g_154, "p_1734->g_154", print_hash_value);
    transparent_crc(p_1734->g_169, "p_1734->g_169", print_hash_value);
    transparent_crc(p_1734->g_179, "p_1734->g_179", print_hash_value);
    transparent_crc(p_1734->g_203, "p_1734->g_203", print_hash_value);
    transparent_crc(p_1734->g_208, "p_1734->g_208", print_hash_value);
    transparent_crc(p_1734->g_269, "p_1734->g_269", print_hash_value);
    transparent_crc(p_1734->g_305, "p_1734->g_305", print_hash_value);
    transparent_crc(p_1734->g_325, "p_1734->g_325", print_hash_value);
    transparent_crc(p_1734->g_369, "p_1734->g_369", print_hash_value);
    transparent_crc(p_1734->g_373, "p_1734->g_373", print_hash_value);
    transparent_crc(p_1734->g_492, "p_1734->g_492", print_hash_value);
    transparent_crc(p_1734->g_549, "p_1734->g_549", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1734->g_553[i], "p_1734->g_553[i]", print_hash_value);

    }
    transparent_crc(p_1734->g_602, "p_1734->g_602", print_hash_value);
    transparent_crc(p_1734->g_739, "p_1734->g_739", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1734->g_790[i], "p_1734->g_790[i]", print_hash_value);

    }
    transparent_crc(p_1734->g_964, "p_1734->g_964", print_hash_value);
    transparent_crc(p_1734->g_1005, "p_1734->g_1005", print_hash_value);
    transparent_crc(p_1734->g_1075, "p_1734->g_1075", print_hash_value);
    transparent_crc(p_1734->g_1156, "p_1734->g_1156", print_hash_value);
    transparent_crc(p_1734->g_1164, "p_1734->g_1164", print_hash_value);
    transparent_crc(p_1734->g_1171, "p_1734->g_1171", print_hash_value);
    transparent_crc(p_1734->g_1175, "p_1734->g_1175", print_hash_value);
    transparent_crc(p_1734->g_1220, "p_1734->g_1220", print_hash_value);
    transparent_crc(p_1734->g_1230, "p_1734->g_1230", print_hash_value);
    transparent_crc(p_1734->g_1289, "p_1734->g_1289", print_hash_value);
    transparent_crc(p_1734->g_1459, "p_1734->g_1459", print_hash_value);
    transparent_crc(p_1734->g_1497, "p_1734->g_1497", print_hash_value);
    transparent_crc(p_1734->g_1540, "p_1734->g_1540", print_hash_value);
    transparent_crc(p_1734->g_1564, "p_1734->g_1564", print_hash_value);
    transparent_crc(p_1734->g_1658, "p_1734->g_1658", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1734->g_1708[i], "p_1734->g_1708[i]", print_hash_value);

    }
    transparent_crc(p_1734->l_comm_values[get_linear_local_id()], "p_1734->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_1734->g_comm_values[get_linear_group_id() * 37 + get_linear_local_id()], "p_1734->g_comm_values[get_linear_group_id() * 37 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
