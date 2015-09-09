// --atomics 54 ---fake_divergence -g 70,60,2 -l 1,15,2
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


// Seed: 62

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   int64_t  f0;
   int32_t  f1;
};

struct S1 {
   uint32_t  f0;
   int32_t  f1;
   volatile int64_t  f2;
   uint32_t  f3;
   uint64_t  f4;
   uint8_t  f5;
   volatile int64_t  f6;
   uint64_t  f7;
   int32_t  f8;
   struct S0  f9;
};

union U2 {
   int16_t  f0;
   volatile int64_t  f1;
};

struct S3 {
    volatile int32_t g_2;
    int32_t g_3;
    uint32_t g_12;
    int32_t g_33;
    int32_t *g_32;
    int8_t g_89;
    int32_t g_97;
    int16_t g_98;
    int8_t g_108;
    struct S0 g_111[3];
    uint16_t g_122;
    uint32_t g_140[10][2][9];
    int64_t g_172;
    int8_t *g_194;
    int8_t **g_193;
    int8_t **g_200[3][5];
    uint64_t g_212[10][4][4];
    uint8_t g_215;
    int32_t g_225;
    int32_t g_260;
    uint8_t g_308[6][9];
    uint16_t *g_320;
    uint16_t **g_319;
    uint32_t g_323;
    int64_t g_472;
    int32_t **g_499[9];
    uint64_t g_541[8][1][4];
    int32_t g_542[4][2];
    uint64_t g_563;
    int32_t g_570;
    int8_t ***g_583;
    int8_t ****g_582;
    volatile int16_t g_653;
    volatile int16_t *g_652;
    volatile int16_t **g_651;
    uint32_t g_655;
    union U2 g_697;
    uint16_t *g_719[2][10];
    uint8_t g_744[9][4];
    int8_t *****g_1279[5][1];
    int8_t g_1299;
    struct S1 g_1372;
    struct S1 g_1375;
    struct S1 g_1376;
    struct S1 g_1377[10];
    struct S1 *g_1374[6][1][3];
    struct S0 *g_1381;
    struct S0 **g_1380[6];
    struct S0 **g_1383;
    struct S0 **g_1387;
    union U2 g_1475;
    volatile int64_t g_1571;
    volatile int64_t *g_1570;
    volatile int64_t **g_1569[10];
    int32_t *g_1621;
    int16_t *g_1673;
    struct S1 g_1689;
    struct S1 *g_1688;
    volatile int32_t g_1694;
    volatile int32_t *g_1693;
    volatile int32_t **g_1692;
    int32_t *g_1717;
    union U2 g_1894;
    union U2 *g_1893;
    union U2 * volatile *g_1892;
    uint64_t *g_1917;
    int16_t **g_1922[10];
    int8_t g_1929;
    uint8_t *g_1934;
    uint8_t **g_1933;
    int32_t *g_1970[1];
    int8_t g_1997;
    struct S1 g_2056[1][6];
    struct S1 g_2058;
    int32_t g_2083;
    int32_t *g_2189;
    uint32_t *g_2243;
    volatile int32_t ***g_2322;
    volatile uint16_t ** volatile *g_2339;
    volatile uint16_t ** volatile * volatile *g_2338;
    union U2 g_2404;
    int32_t g_2414[9][2];
    uint64_t *g_2508;
    uint64_t **g_2507;
    uint16_t g_2522[3];
    uint64_t g_2549;
    uint32_t g_2626;
    struct S1 g_2652;
    volatile struct S1 g_2663;
    volatile union U2 g_2673;
    volatile uint16_t g_2709;
    volatile union U2 g_2726;
    volatile struct S1 g_2750;
    volatile struct S1 g_2751;
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
uint16_t  func_1(struct S3 * p_2824);
int8_t  func_14(int64_t  p_15, uint64_t  p_16, struct S0  p_17, int32_t  p_18, int64_t  p_19, struct S3 * p_2824);
struct S0  func_35(int32_t * p_36, uint32_t  p_37, int32_t * p_38, uint16_t  p_39, struct S3 * p_2824);
int32_t * func_40(int32_t * p_41, struct S3 * p_2824);
uint16_t  func_45(int32_t * p_46, int32_t  p_47, int32_t * p_48, int64_t  p_49, struct S3 * p_2824);
int32_t * func_50(int32_t * p_51, int32_t  p_52, uint64_t  p_53, int32_t  p_54, struct S3 * p_2824);
int32_t * func_55(uint16_t  p_56, uint32_t  p_57, struct S3 * p_2824);
int16_t  func_66(uint8_t  p_67, int32_t * p_68, struct S3 * p_2824);
uint8_t  func_69(int32_t * p_70, uint32_t  p_71, int32_t * p_72, struct S0  p_73, struct S3 * p_2824);
int32_t * func_74(int16_t  p_75, uint16_t  p_76, int32_t ** p_77, int32_t  p_78, uint64_t  p_79, struct S3 * p_2824);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_2824->g_3 p_2824->g_1689.f8 p_2824->g_2522 p_2824->g_1892 p_2824->g_1893 p_2824->g_583 p_2824->g_200 p_2824->g_194 p_2824->g_108 p_2824->g_193 p_2824->g_1934 p_2824->g_308 p_2824->g_1372.f9.f0 p_2824->g_1717 p_2824->g_1377.f9.f1 p_2824->g_1917 p_2824->g_563 p_2824->g_1673 p_2824->g_697.f0 p_2824->g_1381 p_2824->g_1383 p_2824->g_2626 p_2824->g_1377.f2 p_2824->g_1376.f9.f1 p_2824->g_320 p_2824->g_122 p_2824->g_319 p_2824->g_744 p_2824->g_582 p_2824->g_98 p_2824->g_1299 p_2824->g_541 p_2824->g_33 p_2824->g_719 p_2824->g_172 p_2824->g_542 p_2824->g_140 p_2824->g_323 p_2824->g_32 p_2824->g_97 p_2824->g_215 p_2824->g_1380 p_2824->g_1377.f3 p_2824->g_1376.f0 p_2824->g_1372.f9.f1 p_2824->g_1372.f0 p_2824->g_111.f0 p_2824->g_570 p_2824->g_1377.f0 p_2824->g_1376.f3 p_2824->g_1372.f7 p_2824->g_212 p_2824->g_1375.f5 p_2824->g_1375.f9.f0 p_2824->g_1475.f0 p_2824->g_1387 p_2824->g_1569 p_2824->g_1375.f9.f1 p_2824->g_225 p_2824->g_1372.f1 p_2824->g_1621 p_2824->g_1372.f8 p_2824->g_1375.f7 p_2824->g_1377.f5 p_2824->g_651 p_2824->g_652 p_2824->g_260 p_2824->g_1688 p_2824->g_1692 p_2824->g_2056.f9.f1 p_2824->g_2652 p_2824->g_1377.f9 p_2824->g_1376.f7 p_2824->g_1689.f9.f1 p_2824->g_2663 p_2824->g_89 p_2824->g_2673 p_2824->g_2507 p_2824->g_2508 p_2824->g_1933 p_2824->g_1693 p_2824->g_1694 p_2824->g_1375.f8 p_2824->g_2414 p_2824->g_2750 p_2824->g_1894 p_2824->g_111
 * writes: p_2824->g_3 p_2824->g_1689.f8 p_2824->g_1375.f1 p_2824->g_1372.f1 p_2824->g_108 p_2824->g_1377.f9.f1 p_2824->g_2058.f3 p_2824->g_1279 p_2824->g_563 p_2824->g_1377.f9 p_2824->g_122 p_2824->g_697.f0 p_2824->g_212 p_2824->g_33 p_2824->g_172 p_2824->g_542 p_2824->g_32 p_2824->g_97 p_2824->g_98 p_2824->g_89 p_2824->g_1299 p_2824->g_744 p_2824->g_140 p_2824->g_308 p_2824->g_1374 p_2824->g_1375.f7 p_2824->g_1380 p_2824->g_1383 p_2824->g_1387 p_2824->g_200 p_2824->g_1376.f8 p_2824->g_260 p_2824->g_1376.f7 p_2824->g_323 p_2824->g_225 p_2824->g_1372.f5 p_2824->g_583 p_2824->g_1372.f0 p_2824->g_655 p_2824->g_1381 p_2824->g_111.f1 p_2824->g_499 p_2824->g_1375.f9.f0 p_2824->g_582 p_2824->g_1673 p_2824->g_1375.f5 p_2824->g_2189 p_2824->g_1376.f9.f1 p_2824->g_1375.f8 p_2824->g_2652.f9.f0 p_2824->g_1689.f4 p_2824->g_1689.f3 p_2824->g_2751 p_2824->g_472
 */
uint16_t  func_1(struct S3 * p_2824)
{ /* block id: 4 */
    int8_t l_13 = (-1L);
    struct S0 l_20 = {3L,5L};
    int32_t l_2554[1];
    int32_t l_2557 = 0x646262C3L;
    union U2 **l_2558 = &p_2824->g_1893;
    uint64_t l_2580 = 6UL;
    int32_t l_2591 = 0x4B4CEBDFL;
    int32_t l_2592 = (-10L);
    int32_t l_2593 = 0x20F00B6DL;
    int32_t l_2594 = 4L;
    int32_t l_2595 = 1L;
    int32_t l_2599 = (-1L);
    int16_t l_2613[5] = {6L,6L,6L,6L,6L};
    int8_t ***l_2629 = &p_2824->g_200[0][0];
    int32_t **l_2661[10][2][2] = {{{&p_2824->g_1717,&p_2824->g_1717},{&p_2824->g_1717,&p_2824->g_1717}},{{&p_2824->g_1717,&p_2824->g_1717},{&p_2824->g_1717,&p_2824->g_1717}},{{&p_2824->g_1717,&p_2824->g_1717},{&p_2824->g_1717,&p_2824->g_1717}},{{&p_2824->g_1717,&p_2824->g_1717},{&p_2824->g_1717,&p_2824->g_1717}},{{&p_2824->g_1717,&p_2824->g_1717},{&p_2824->g_1717,&p_2824->g_1717}},{{&p_2824->g_1717,&p_2824->g_1717},{&p_2824->g_1717,&p_2824->g_1717}},{{&p_2824->g_1717,&p_2824->g_1717},{&p_2824->g_1717,&p_2824->g_1717}},{{&p_2824->g_1717,&p_2824->g_1717},{&p_2824->g_1717,&p_2824->g_1717}},{{&p_2824->g_1717,&p_2824->g_1717},{&p_2824->g_1717,&p_2824->g_1717}},{{&p_2824->g_1717,&p_2824->g_1717},{&p_2824->g_1717,&p_2824->g_1717}}};
    int64_t l_2721 = 3L;
    uint32_t l_2741 = 0x5D55C4A2L;
    int32_t *l_2822 = &p_2824->g_1689.f9.f1;
    int32_t *l_2823 = &p_2824->g_1376.f9.f1;
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_2554[i] = (-1L);
    for (p_2824->g_3 = 0; (p_2824->g_3 > 12); ++p_2824->g_3)
    { /* block id: 7 */
        uint32_t l_2553 = 1UL;
        int32_t *l_2555 = (void*)0;
        int32_t *l_2556[5];
        int i;
        for (i = 0; i < 5; i++)
            l_2556[i] = &p_2824->g_1377[6].f8;
        (1 + 1);
    }
    for (p_2824->g_1689.f8 = 0; (p_2824->g_1689.f8 >= 0); p_2824->g_1689.f8 -= 1)
    { /* block id: 1395 */
        struct S1 **l_2561 = (void*)0;
        int32_t l_2562[8] = {8L,8L,8L,8L,8L,8L,8L,8L};
        uint32_t l_2596 = 0UL;
        int8_t *****l_2608 = &p_2824->g_582;
        uint32_t *l_2659 = &p_2824->g_1689.f0;
        uint64_t l_2678 = 0x0EC88AF3E8970A7EL;
        uint8_t ***l_2725[3];
        uint8_t ****l_2724 = &l_2725[2];
        int32_t l_2753 = 1L;
        uint16_t l_2762 = 65535UL;
        int i;
        for (i = 0; i < 3; i++)
            l_2725[i] = (void*)0;
        for (p_2824->g_1375.f1 = 0; (p_2824->g_1375.f1 <= 9); p_2824->g_1375.f1 += 1)
        { /* block id: 1398 */
            int i;
            return l_2554[p_2824->g_1689.f8];
        }
        for (p_2824->g_1372.f1 = 0; (p_2824->g_1372.f1 <= 9); p_2824->g_1372.f1 += 1)
        { /* block id: 1403 */
            int32_t *l_2579 = (void*)0;
            int32_t *l_2581 = &p_2824->g_542[3][1];
            int32_t *l_2582 = &p_2824->g_1372.f8;
            int32_t *l_2583 = (void*)0;
            int32_t *l_2584 = &l_2562[1];
            int32_t *l_2585 = (void*)0;
            int32_t *l_2586 = &p_2824->g_97;
            int32_t *l_2587 = &l_2562[1];
            int32_t l_2588 = 0x43F6E255L;
            int32_t *l_2589 = &p_2824->g_1376.f9.f1;
            int32_t *l_2590[7];
            int8_t ******l_2607 = &p_2824->g_1279[0][0];
            struct S0 l_2616 = {0x513F9F8B093BC978L,0x5D5624C5L};
            int32_t l_2635 = 0L;
            uint64_t l_2637[6][1][6] = {{{1UL,1UL,0xDB48AD77E7EA3012L,0x011D90300A318B3DL,9UL,0xF2946492348F56B9L}},{{1UL,1UL,0xDB48AD77E7EA3012L,0x011D90300A318B3DL,9UL,0xF2946492348F56B9L}},{{1UL,1UL,0xDB48AD77E7EA3012L,0x011D90300A318B3DL,9UL,0xF2946492348F56B9L}},{{1UL,1UL,0xDB48AD77E7EA3012L,0x011D90300A318B3DL,9UL,0xF2946492348F56B9L}},{{1UL,1UL,0xDB48AD77E7EA3012L,0x011D90300A318B3DL,9UL,0xF2946492348F56B9L}},{{1UL,1UL,0xDB48AD77E7EA3012L,0x011D90300A318B3DL,9UL,0xF2946492348F56B9L}}};
            int32_t *l_2675 = (void*)0;
            int32_t *l_2688[1][3][3];
            uint64_t **l_2712 = &p_2824->g_2508;
            uint8_t ****l_2727 = &l_2725[2];
            uint8_t l_2761 = 5UL;
            int i, j, k;
            for (i = 0; i < 7; i++)
                l_2590[i] = &p_2824->g_2056[0][0].f8;
            for (i = 0; i < 1; i++)
            {
                for (j = 0; j < 3; j++)
                {
                    for (k = 0; k < 3; k++)
                        l_2688[i][j][k] = &p_2824->g_1376.f9.f1;
                }
            }
            (*p_2824->g_1717) &= (l_2558 != (((safe_mul_func_int8_t_s_s((((l_2561 != (((p_2824->g_2522[p_2824->g_1689.f8] > (l_2562[1] , 0UL)) == ((-4L) == (((safe_lshift_func_int8_t_s_s((safe_mul_func_int8_t_s_s(((**p_2824->g_193) = (safe_mul_func_uint8_t_u_u((safe_sub_func_int32_t_s_s((safe_mod_func_uint8_t_u_u((+(~(safe_rshift_func_uint16_t_u_s((safe_add_func_uint32_t_u_u((((FAKE_DIVERGE(p_2824->group_2_offset, get_group_id(2), 10) , ((*p_2824->g_1892) == (*p_2824->g_1892))) | ((safe_sub_func_uint16_t_u_u(((void*)0 != l_2579), l_2580)) && 0x65C6L)) || 0x2A86C42BL), FAKE_DIVERGE(p_2824->global_0_offset, get_global_id(0), 10))), l_2562[1])))), l_2562[1])), l_20.f0)), (***p_2824->g_583)))), (*p_2824->g_1934))), 2)) != p_2824->g_1372.f9.f0) | l_13))) , l_2561)) || GROUP_DIVERGE(2, 1)) | 0x356EED96L), l_2562[1])) == 0xE7F130EBL) , (void*)0));
            ++l_2596;
            for (p_2824->g_2058.f3 = 0; (p_2824->g_2058.f3 <= 9); p_2824->g_2058.f3 += 1)
            { /* block id: 1409 */
                l_20.f1 |= 6L;
            }
            if ((l_2599 > ((safe_sub_func_int16_t_s_s((((safe_div_func_int32_t_s_s((safe_lshift_func_uint16_t_u_u(0xA53CL, 0)), (safe_unary_minus_func_int8_t_s(l_2562[1])))) || ((*l_2584) = 0x301C7BFEL)) <= (((*l_2607) = &p_2824->g_582) == l_2608)), ((safe_div_func_uint32_t_u_u((((*p_2824->g_1917) = ((safe_sub_func_int64_t_s_s(l_2613[0], l_2596)) & ((safe_sub_func_uint64_t_u_u((l_2596 != 65532UL), 18446744073709551615UL)) | (*p_2824->g_1917)))) != l_2580), l_2596)) , (*p_2824->g_1673)))) >= l_2596)))
            { /* block id: 1415 */
                uint8_t l_2625 = 0x27L;
                int32_t *l_2633 = &p_2824->g_2056[0][0].f9.f1;
                int8_t l_2634 = 0x5EL;
                int32_t l_2636 = (-1L);
                uint8_t ***l_2693[8];
                int8_t l_2711 = 5L;
                int i;
                for (i = 0; i < 8; i++)
                    l_2693[i] = (void*)0;
                (*p_2824->g_1381) = l_2616;
                if ((safe_lshift_func_uint8_t_u_s((l_2562[1] != GROUP_DIVERGE(2, 1)), (safe_mod_func_int8_t_s_s((safe_lshift_func_int16_t_s_s(0L, 12)), ((0x2A1E59F0B7FB7A7EL == (*p_2824->g_1917)) , 5L))))))
                { /* block id: 1417 */
                    uint32_t l_2631 = 0UL;
                    int32_t l_2632 = 0x4730F7EAL;
                    for (l_2616.f1 = 0; (l_2616.f1 <= 0); l_2616.f1 += 1)
                    { /* block id: 1420 */
                        int64_t l_2630 = (-4L);
                        l_2633 = func_55((l_2632 = ((**p_2824->g_319) = ((((l_2625 , (*p_2824->g_1383)) == (void*)0) ^ ((p_2824->g_2626 , (((((l_2594 <= l_2625) , (~(0x74L <= ((p_2824->g_1377[6].f2 == ((safe_mod_func_uint64_t_u_u((l_2629 != (void*)0), p_2824->g_1376.f9.f1)) || l_2562[1])) , (*p_2824->g_1934))))) < l_2630) != FAKE_DIVERGE(p_2824->local_0_offset, get_local_id(0), 10)) || l_2631)) <= FAKE_DIVERGE(p_2824->global_2_offset, get_global_id(2), 10))) , (*p_2824->g_320)))), l_2625, p_2824);
                        return l_2634;
                    }
                    return l_2631;
                }
                else
                { /* block id: 1427 */
                    for (l_2580 = 0; (l_2580 <= 0); l_2580 += 1)
                    { /* block id: 1430 */
                        if (l_2580)
                            break;
                    }
                    for (l_13 = 0; (l_13 <= 0); l_13 += 1)
                    { /* block id: 1435 */
                        return (*p_2824->g_320);
                    }
                    for (p_2824->g_1375.f5 = 0; (p_2824->g_1375.f5 <= 8); p_2824->g_1375.f5 += 1)
                    { /* block id: 1440 */
                        int i;
                        l_2637[2][0][1]++;
                        return l_2613[(p_2824->g_1689.f8 + 2)];
                    }
                    if ((atomic_inc(&p_2824->g_atomic_input[54 * get_linear_group_id() + 45]) == 6))
                    { /* block id: 1445 */
                        int16_t l_2640 = 0L;
                        int32_t l_2641 = 0L;
                        uint32_t l_2642 = 4294967295UL;
                        uint64_t l_2645[10] = {3UL,0xA915767E29DF8E20L,3UL,3UL,0xA915767E29DF8E20L,3UL,3UL,0xA915767E29DF8E20L,3UL,3UL};
                        int16_t l_2646 = (-8L);
                        int32_t l_2647 = (-5L);
                        struct S1 l_2648[6] = {{0xF04E4D16L,0x780FA006L,-8L,4294967292UL,18446744073709551613UL,0UL,0x691D3436BF5D15DEL,0xC8D76BF7A89AAB48L,1L,{0x4F032FF0190C6C47L,0x7D413D1AL}},{0xF04E4D16L,0x780FA006L,-8L,4294967292UL,18446744073709551613UL,0UL,0x691D3436BF5D15DEL,0xC8D76BF7A89AAB48L,1L,{0x4F032FF0190C6C47L,0x7D413D1AL}},{0xF04E4D16L,0x780FA006L,-8L,4294967292UL,18446744073709551613UL,0UL,0x691D3436BF5D15DEL,0xC8D76BF7A89AAB48L,1L,{0x4F032FF0190C6C47L,0x7D413D1AL}},{0xF04E4D16L,0x780FA006L,-8L,4294967292UL,18446744073709551613UL,0UL,0x691D3436BF5D15DEL,0xC8D76BF7A89AAB48L,1L,{0x4F032FF0190C6C47L,0x7D413D1AL}},{0xF04E4D16L,0x780FA006L,-8L,4294967292UL,18446744073709551613UL,0UL,0x691D3436BF5D15DEL,0xC8D76BF7A89AAB48L,1L,{0x4F032FF0190C6C47L,0x7D413D1AL}},{0xF04E4D16L,0x780FA006L,-8L,4294967292UL,18446744073709551613UL,0UL,0x691D3436BF5D15DEL,0xC8D76BF7A89AAB48L,1L,{0x4F032FF0190C6C47L,0x7D413D1AL}}};
                        struct S1 l_2649 = {4294967292UL,-2L,0x30F8EAF8847C3414L,0UL,0UL,0xA7L,0x70F38D6E932C88A7L,0xA735F7F5D04A31DCL,0x434C04C7L,{0x02EDFA50236352DDL,0x2CE4EC1EL}};/* VOLATILE GLOBAL l_2649 */
                        int i;
                        l_2649 = (l_2640 , ((l_2647 = ((l_2645[4] = (l_2642++)) , l_2646)) , l_2648[4]));
                        unsigned int result = 0;
                        result += l_2640;
                        result += l_2641;
                        result += l_2642;
                        int l_2645_i0;
                        for (l_2645_i0 = 0; l_2645_i0 < 10; l_2645_i0++) {
                            result += l_2645[l_2645_i0];
                        }
                        result += l_2646;
                        result += l_2647;
                        int l_2648_i0;
                        for (l_2648_i0 = 0; l_2648_i0 < 6; l_2648_i0++) {
                            result += l_2648[l_2648_i0].f0;
                            result += l_2648[l_2648_i0].f1;
                            result += l_2648[l_2648_i0].f2;
                            result += l_2648[l_2648_i0].f3;
                            result += l_2648[l_2648_i0].f4;
                            result += l_2648[l_2648_i0].f5;
                            result += l_2648[l_2648_i0].f6;
                            result += l_2648[l_2648_i0].f7;
                            result += l_2648[l_2648_i0].f8;
                            result += l_2648[l_2648_i0].f9.f0;
                            result += l_2648[l_2648_i0].f9.f1;
                        }
                        result += l_2649.f0;
                        result += l_2649.f1;
                        result += l_2649.f2;
                        result += l_2649.f3;
                        result += l_2649.f4;
                        result += l_2649.f5;
                        result += l_2649.f6;
                        result += l_2649.f7;
                        result += l_2649.f8;
                        result += l_2649.f9.f0;
                        result += l_2649.f9.f1;
                        atomic_add(&p_2824->g_special_values[54 * get_linear_group_id() + 45], result);
                    }
                    else
                    { /* block id: 1450 */
                        (1 + 1);
                    }
                }
                if (((*p_2824->g_1917) ^ (safe_rshift_func_int8_t_s_u((*l_2633), 7))))
                { /* block id: 1454 */
                    int64_t l_2660 = (-1L);
                    int32_t *l_2662 = &l_2588;
                    uint64_t *l_2674 = &p_2824->g_2652.f4;
                    int32_t **l_2681 = (void*)0;
                    int32_t **l_2682 = &p_2824->g_2189;
                    int64_t *l_2685 = (void*)0;
                    int64_t *l_2686 = (void*)0;
                    l_2662 = func_74((((p_2824->g_2652 , (((((**p_2824->g_319) && (safe_mul_func_uint8_t_u_u((((*p_2824->g_1381) , l_2595) | ((*l_2581) >= ((safe_add_func_uint16_t_u_u((((safe_mul_func_uint16_t_u_u((((((*l_2633) , l_2659) == (((((*p_2824->g_1917) = (*p_2824->g_1917)) , ((**p_2824->g_319) , l_2660)) & l_2613[0]) , (void*)0)) & (*l_2587)) & (*l_2633)), (-9L))) != p_2824->g_1376.f7) , l_2660), l_2660)) == 8UL))), l_2660))) , GROUP_DIVERGE(0, 1)) > 0x487F4DE7394A9E49L) && l_2613[1])) != (*l_2633)) == (-3L)), (*p_2824->g_320), l_2661[3][0][0], p_2824->g_1689.f9.f1, l_2562[6], p_2824);
                    (*p_2824->g_1621) = ((p_2824->g_2663 , (*p_2824->g_320)) ^ (safe_div_func_int64_t_s_s((safe_add_func_int8_t_s_s((****p_2824->g_582), (l_2562[1] = ((247UL != ((*p_2824->g_1934)--)) , (safe_mul_func_int8_t_s_s(l_2562[7], (l_2562[1] > (*p_2824->g_1717)))))))), (safe_unary_minus_func_uint16_t_u((**p_2824->g_319))))));
                    for (p_2824->g_89 = 0; (p_2824->g_89 >= 0); p_2824->g_89 -= 1)
                    { /* block id: 1462 */
                        (*p_2824->g_1621) = (p_2824->g_2673 , (l_2674 != (*p_2824->g_2507)));
                        l_2675 = &l_2588;
                        return (*p_2824->g_320);
                    }
                    (*l_2589) = (safe_div_func_int64_t_s_s((p_2824->g_172 = (((**p_2824->g_319) |= l_2678) & (((0xD6L || ((safe_rshift_func_int8_t_s_s(((((*p_2824->g_1917) = (((&p_2824->g_652 == (void*)0) & 8L) ^ (((*l_2682) = &p_2824->g_225) != ((safe_mul_func_uint8_t_u_u((**p_2824->g_1933), (*l_2633))) , func_74(l_2678, (*l_2662), &p_2824->g_32, (**p_2824->g_1692), (*p_2824->g_1917), p_2824))))) <= 18446744073709551613UL) ^ 0L), 4)) ^ (*l_2633))) || 1L) , 0x0289L))), 0x206B4946EE6803E9L));
                }
                else
                { /* block id: 1472 */
                    int32_t *l_2687 = &p_2824->g_1377[6].f9.f1;
                    l_2688[0][1][1] = l_2687;
                }
                if ((*l_2586))
                { /* block id: 1475 */
                    uint32_t l_2719 = 0xA04A5BB6L;
                    int8_t l_2720 = (-1L);
                    l_2633 = &l_2636;
                    for (l_2636 = 0; (l_2636 <= 0); l_2636 += 1)
                    { /* block id: 1479 */
                        uint8_t ****l_2694 = &l_2693[1];
                        int32_t l_2695 = 0x69190F6CL;
                        uint32_t *l_2702 = &p_2824->g_1689.f3;
                        uint32_t *l_2707 = &p_2824->g_1375.f3;
                        uint32_t *l_2708 = &p_2824->g_1376.f3;
                        int64_t *l_2710 = &p_2824->g_472;
                        (1 + 1);
                    }
                }
                else
                { /* block id: 1493 */
                    for (p_2824->g_1375.f8 = 9; (p_2824->g_1375.f8 >= 0); p_2824->g_1375.f8 -= 1)
                    { /* block id: 1496 */
                        struct S1 **l_2740 = &p_2824->g_1374[1][0][2];
                        (*l_2740) = (void*)0;
                    }
                }
            }
            else
            { /* block id: 1500 */
                int8_t l_2745 = 1L;
                int32_t l_2746 = 0x7542C87BL;
                uint16_t l_2747 = 0xEE74L;
                int32_t *l_2756 = &p_2824->g_1377[6].f8;
                if (l_2741)
                { /* block id: 1501 */
                    uint64_t l_2742 = 0x840445A70FF45BA1L;
                    int32_t l_2744[9][8][3] = {{{0x1CBA2862L,(-1L),0x4BF9C64EL},{0x1CBA2862L,(-1L),0x4BF9C64EL},{0x1CBA2862L,(-1L),0x4BF9C64EL},{0x1CBA2862L,(-1L),0x4BF9C64EL},{0x1CBA2862L,(-1L),0x4BF9C64EL},{0x1CBA2862L,(-1L),0x4BF9C64EL},{0x1CBA2862L,(-1L),0x4BF9C64EL},{0x1CBA2862L,(-1L),0x4BF9C64EL}},{{0x1CBA2862L,(-1L),0x4BF9C64EL},{0x1CBA2862L,(-1L),0x4BF9C64EL},{0x1CBA2862L,(-1L),0x4BF9C64EL},{0x1CBA2862L,(-1L),0x4BF9C64EL},{0x1CBA2862L,(-1L),0x4BF9C64EL},{0x1CBA2862L,(-1L),0x4BF9C64EL},{0x1CBA2862L,(-1L),0x4BF9C64EL},{0x1CBA2862L,(-1L),0x4BF9C64EL}},{{0x1CBA2862L,(-1L),0x4BF9C64EL},{0x1CBA2862L,(-1L),0x4BF9C64EL},{0x1CBA2862L,(-1L),0x4BF9C64EL},{0x1CBA2862L,(-1L),0x4BF9C64EL},{0x1CBA2862L,(-1L),0x4BF9C64EL},{0x1CBA2862L,(-1L),0x4BF9C64EL},{0x1CBA2862L,(-1L),0x4BF9C64EL},{0x1CBA2862L,(-1L),0x4BF9C64EL}},{{0x1CBA2862L,(-1L),0x4BF9C64EL},{0x1CBA2862L,(-1L),0x4BF9C64EL},{0x1CBA2862L,(-1L),0x4BF9C64EL},{0x1CBA2862L,(-1L),0x4BF9C64EL},{0x1CBA2862L,(-1L),0x4BF9C64EL},{0x1CBA2862L,(-1L),0x4BF9C64EL},{0x1CBA2862L,(-1L),0x4BF9C64EL},{0x1CBA2862L,(-1L),0x4BF9C64EL}},{{0x1CBA2862L,(-1L),0x4BF9C64EL},{0x1CBA2862L,(-1L),0x4BF9C64EL},{0x1CBA2862L,(-1L),0x4BF9C64EL},{0x1CBA2862L,(-1L),0x4BF9C64EL},{0x1CBA2862L,(-1L),0x4BF9C64EL},{0x1CBA2862L,(-1L),0x4BF9C64EL},{0x1CBA2862L,(-1L),0x4BF9C64EL},{0x1CBA2862L,(-1L),0x4BF9C64EL}},{{0x1CBA2862L,(-1L),0x4BF9C64EL},{0x1CBA2862L,(-1L),0x4BF9C64EL},{0x1CBA2862L,(-1L),0x4BF9C64EL},{0x1CBA2862L,(-1L),0x4BF9C64EL},{0x1CBA2862L,(-1L),0x4BF9C64EL},{0x1CBA2862L,(-1L),0x4BF9C64EL},{0x1CBA2862L,(-1L),0x4BF9C64EL},{0x1CBA2862L,(-1L),0x4BF9C64EL}},{{0x1CBA2862L,(-1L),0x4BF9C64EL},{0x1CBA2862L,(-1L),0x4BF9C64EL},{0x1CBA2862L,(-1L),0x4BF9C64EL},{0x1CBA2862L,(-1L),0x4BF9C64EL},{0x1CBA2862L,(-1L),0x4BF9C64EL},{0x1CBA2862L,(-1L),0x4BF9C64EL},{0x1CBA2862L,(-1L),0x4BF9C64EL},{0x1CBA2862L,(-1L),0x4BF9C64EL}},{{0x1CBA2862L,(-1L),0x4BF9C64EL},{0x1CBA2862L,(-1L),0x4BF9C64EL},{0x1CBA2862L,(-1L),0x4BF9C64EL},{0x1CBA2862L,(-1L),0x4BF9C64EL},{0x1CBA2862L,(-1L),0x4BF9C64EL},{0x1CBA2862L,(-1L),0x4BF9C64EL},{0x1CBA2862L,(-1L),0x4BF9C64EL},{0x1CBA2862L,(-1L),0x4BF9C64EL}},{{0x1CBA2862L,(-1L),0x4BF9C64EL},{0x1CBA2862L,(-1L),0x4BF9C64EL},{0x1CBA2862L,(-1L),0x4BF9C64EL},{0x1CBA2862L,(-1L),0x4BF9C64EL},{0x1CBA2862L,(-1L),0x4BF9C64EL},{0x1CBA2862L,(-1L),0x4BF9C64EL},{0x1CBA2862L,(-1L),0x4BF9C64EL},{0x1CBA2862L,(-1L),0x4BF9C64EL}}};
                    int i, j, k;
                    for (p_2824->g_2652.f9.f0 = 0; (p_2824->g_2652.f9.f0 >= 0); p_2824->g_2652.f9.f0 -= 1)
                    { /* block id: 1504 */
                        uint64_t l_2743 = 1UL;
                        if (l_2742)
                            break;
                        return l_2743;
                    }
                    for (p_2824->g_1689.f4 = 3; (p_2824->g_1689.f4 <= 9); p_2824->g_1689.f4 += 1)
                    { /* block id: 1510 */
                        int i, j;
                        l_2744[2][7][2] ^= p_2824->g_2414[(p_2824->g_1689.f8 + 8)][p_2824->g_1689.f8];
                    }
                    l_2747--;
                }
                else
                { /* block id: 1514 */
                    uint16_t l_2754 = 0x04EDL;
                    for (p_2824->g_1689.f3 = 0; (p_2824->g_1689.f3 <= 0); p_2824->g_1689.f3 += 1)
                    { /* block id: 1517 */
                        int32_t l_2752 = 0x1180086EL;
                        int32_t *l_2755 = &l_2562[1];
                        int i, j, k;
                        p_2824->g_2751 = p_2824->g_2750;
                        (*l_2584) = l_2752;
                        (*l_2589) &= ((l_2753 , l_2754) != l_2753);
                        l_2756 = l_2755;
                    }
                }
                (*p_2824->g_1621) |= (safe_rshift_func_uint16_t_u_s((l_2761 == 0UL), ((((*p_2824->g_1893) , (***p_2824->g_582)) != (**p_2824->g_583)) >= (l_2762 & 0x05L))));
            }
        }
        if ((atomic_inc(&p_2824->g_atomic_input[54 * get_linear_group_id() + 43]) == 9))
        { /* block id: 1528 */
            uint8_t l_2763 = 0UL;
            uint16_t l_2764 = 0xF7C9L;
            l_2764 &= l_2763;
            for (l_2763 = 0; (l_2763 <= 9); l_2763 += 1)
            { /* block id: 1532 */
                int32_t l_2765[8] = {7L,0x5384A4D8L,7L,7L,0x5384A4D8L,7L,7L,0x5384A4D8L};
                int64_t l_2787[5][3] = {{0x0B94C00B1CC3F978L,0x0B94C00B1CC3F978L,0x0128F48B6DF38562L},{0x0B94C00B1CC3F978L,0x0B94C00B1CC3F978L,0x0128F48B6DF38562L},{0x0B94C00B1CC3F978L,0x0B94C00B1CC3F978L,0x0128F48B6DF38562L},{0x0B94C00B1CC3F978L,0x0B94C00B1CC3F978L,0x0128F48B6DF38562L},{0x0B94C00B1CC3F978L,0x0B94C00B1CC3F978L,0x0128F48B6DF38562L}};
                uint32_t l_2788[7];
                int i, j;
                for (i = 0; i < 7; i++)
                    l_2788[i] = 0xD62863F6L;
                for (l_2765[6] = 0; (l_2765[6] <= 4); l_2765[6] += 1)
                { /* block id: 1535 */
                    int32_t l_2766 = (-4L);
                    int8_t l_2781 = 0x6CL;
                    int32_t l_2782 = 8L;
                    uint32_t l_2783 = 1UL;
                    uint8_t l_2786 = 255UL;
                    for (l_2766 = 0; (l_2766 <= 0); l_2766 += 1)
                    { /* block id: 1538 */
                        uint32_t l_2767 = 4294967295UL;
                        uint32_t l_2768 = 0x7F51924AL;
                        uint32_t l_2769 = 0x9DB82061L;
                        int32_t l_2770 = 0x6A7E1E87L;
                        int64_t l_2771 = 1L;
                        int64_t l_2772 = 0x108E12013AB126B9L;
                        int64_t l_2773 = 0x2DA12322767DE6BEL;
                        uint32_t l_2774 = 0xD32A9AE0L;
                        struct S0 l_2775 = {9L,0x386ACF45L};
                        uint64_t l_2776 = 18446744073709551615UL;
                        int64_t l_2777 = 0x22FC480A2D165A69L;
                        int32_t l_2778 = 0x1058CAB5L;
                        uint32_t l_2779 = 4294967291UL;
                        int i;
                        l_2772 |= ((l_2613[(p_2824->g_1689.f8 + 2)] , l_2767) , (l_2771 ^= (l_2770 = (l_2769 ^= l_2768))));
                        l_2773 |= (-6L);
                        l_2775 = (l_2774 , p_2824->g_111[(l_2766 + 2)]);
                        l_2779 ^= (l_2776 , (l_2778 ^= l_2777));
                    }
                    for (l_2766 = 0; (l_2766 <= 9); l_2766 += 1)
                    { /* block id: 1550 */
                        int16_t l_2780 = 0x740EL;
                        int i;
                        l_2780 = l_2613[p_2824->g_1689.f8];
                    }
                    ++l_2783;
                    l_2786 |= 0x79A71668L;
                }
                l_2788[5] &= l_2787[2][0];
            }
            for (l_2763 = 0; (l_2763 <= 2); l_2763 += 1)
            { /* block id: 1560 */
                uint32_t l_2789[1];
                int32_t l_2790 = 0L;
                int32_t l_2791 = 0x67030096L;
                uint8_t l_2792 = 0UL;
                int8_t l_2793[10][6] = {{(-7L),0L,0x22L,0L,(-7L),(-7L)},{(-7L),0L,0x22L,0L,(-7L),(-7L)},{(-7L),0L,0x22L,0L,(-7L),(-7L)},{(-7L),0L,0x22L,0L,(-7L),(-7L)},{(-7L),0L,0x22L,0L,(-7L),(-7L)},{(-7L),0L,0x22L,0L,(-7L),(-7L)},{(-7L),0L,0x22L,0L,(-7L),(-7L)},{(-7L),0L,0x22L,0L,(-7L),(-7L)},{(-7L),0L,0x22L,0L,(-7L),(-7L)},{(-7L),0L,0x22L,0L,(-7L),(-7L)}};
                int i, j;
                for (i = 0; i < 1; i++)
                    l_2789[i] = 0xF9754A6DL;
                l_2790 = (l_2789[0] = 0L);
                l_2793[9][5] ^= (l_2791 , l_2792);
                for (l_2789[0] = 0; (l_2789[0] <= 2); l_2789[0] += 1)
                { /* block id: 1566 */
                    int32_t l_2794 = 0x139D2C4AL;
                    for (l_2794 = 7; (l_2794 >= 0); l_2794 -= 1)
                    { /* block id: 1569 */
                        struct S1 l_2796 = {0xFD56707CL,0x371F4FB5L,1L,0x84DFB80AL,18446744073709551615UL,0xE9L,0x3047DB2B5488E4A2L,0x85DC49CB4E4217C4L,0x43DB1D3DL,{0L,0x479ED9F7L}};/* VOLATILE GLOBAL l_2796 */
                        struct S1 *l_2795 = &l_2796;
                        struct S1 *l_2797 = (void*)0;
                        int32_t l_2798 = 0x014458D0L;
                        int64_t l_2799 = 1L;
                        int i;
                        l_2797 = l_2795;
                        l_2799 |= (l_2798 , (l_2790 = 3L));
                    }
                    for (l_2794 = 2; (l_2794 >= 0); l_2794 -= 1)
                    { /* block id: 1576 */
                        struct S1 l_2800 = {1UL,2L,-1L,4294967292UL,0x33742FAB6864ACE7L,253UL,0L,2UL,0x2CBE1092L,{0x0AB62FBBD6F6A425L,0x22FE2F14L}};/* VOLATILE GLOBAL l_2800 */
                        struct S0 l_2801 = {0x304F14160979E53EL,9L};
                        struct S0 l_2802[2] = {{-6L,0L},{-6L,0L}};
                        struct S0 l_2803 = {0x14FDF31DE536B57EL,0x4BCDF477L};
                        uint16_t l_2804 = 8UL;
                        int64_t l_2805 = 0x3A7FB6354D80B579L;
                        int32_t l_2806 = 0L;
                        int32_t l_2807 = (-8L);
                        int64_t l_2808 = 1L;
                        uint32_t l_2809 = 0x61F1DC2DL;
                        int i;
                        l_2803 = (l_2800 , (l_2802[0] = l_2801));
                        l_2805 ^= (l_2790 = l_2804);
                        l_2790 = 0x5CC95EF4L;
                        --l_2809;
                    }
                }
            }
            for (l_2764 = 0; (l_2764 <= 9); l_2764 += 1)
            { /* block id: 1588 */
                uint32_t l_2812 = 4294967295UL;
                uint64_t l_2813 = 0x36A8EBFE5D6944B5L;
                int64_t l_2814 = 0x06FADA248945118FL;
                uint16_t l_2815 = 0xF254L;
                int16_t l_2816[3];
                int8_t l_2817 = 6L;
                uint64_t l_2818 = 0x353B9E559057627DL;
                int16_t l_2819[3];
                uint64_t l_2820[6][6] = {{8UL,8UL,8UL,8UL,8UL,8UL},{8UL,8UL,8UL,8UL,8UL,8UL},{8UL,8UL,8UL,8UL,8UL,8UL},{8UL,8UL,8UL,8UL,8UL,8UL},{8UL,8UL,8UL,8UL,8UL,8UL},{8UL,8UL,8UL,8UL,8UL,8UL}};
                uint32_t l_2821[8] = {0x6EBAA1FDL,0x6EBAA1FDL,0x6EBAA1FDL,0x6EBAA1FDL,0x6EBAA1FDL,0x6EBAA1FDL,0x6EBAA1FDL,0x6EBAA1FDL};
                int i, j;
                for (i = 0; i < 3; i++)
                    l_2816[i] = (-7L);
                for (i = 0; i < 3; i++)
                    l_2819[i] = 0x7201L;
                l_2820[1][2] = (((l_2814 ^= (l_2813 = l_2812)) , (l_2816[2] = l_2815)) , (l_2817 , (l_2819[0] = l_2818)));
                l_2821[1] = 0L;
            }
            unsigned int result = 0;
            result += l_2763;
            result += l_2764;
            atomic_add(&p_2824->g_special_values[54 * get_linear_group_id() + 43], result);
        }
        else
        { /* block id: 1596 */
            (1 + 1);
        }
        if (l_2562[0])
            break;
    }
    (**p_2824->g_1387) = (l_20 = func_35(l_2822, (*l_2822), l_2823, (**p_2824->g_319), p_2824));
    return (*l_2822);
}


/* ------------------------------------------ */
/* 
 * reads : p_2824->g_3 p_2824->g_1372.f3 p_2824->g_570 p_2824->g_1621 p_2824->g_542 p_2824->g_2322 p_2824->g_1376.f0 p_2824->g_172 p_2824->g_744 p_2824->g_140 p_2824->g_323 p_2824->g_2338 p_2824->g_1917 p_2824->g_1570 p_2824->g_1933 p_2824->g_1934 p_2824->g_308 p_2824->g_320 p_2824->g_122 p_2824->g_563 p_2824->g_98 p_2824->g_32 p_2824->g_97 p_2824->g_108 p_2824->g_1893 p_2824->g_1387 p_2824->g_1381 p_2824->g_2056.f9 p_2824->g_1377.f9 p_2824->g_1376.f9.f1 p_2824->g_583 p_2824->g_200 p_2824->g_194 p_2824->g_1717 p_2824->g_319 p_2824->g_1970 p_2824->g_1673 p_2824->g_697.f0 p_2824->g_212 p_2824->g_2243 p_2824->g_1377.f0 p_2824->g_582 p_2824->g_33 p_2824->g_1689.f5 p_2824->g_1689.f1 p_2824->g_1689.f8 p_2824->g_541 p_2824->g_2522 p_2824->g_1372.f4
 * writes: p_2824->g_1279 p_2824->g_542 p_2824->g_1376.f0 p_2824->g_172 p_2824->g_323 p_2824->g_1377.f3 p_2824->g_308 p_2824->g_32 p_2824->g_97 p_2824->g_98 p_2824->g_89 p_2824->g_108 p_2824->g_1893 p_2824->g_1377.f9.f1 p_2824->g_1372.f9.f0 p_2824->g_1381 p_2824->g_1376.f9.f1 p_2824->g_697.f0 p_2824->g_1377.f0 p_2824->g_1970 p_2824->g_33 p_2824->g_1689.f5 p_2824->g_472 p_2824->g_1689.f1 p_2824->g_2522 p_2824->g_1375.f3 p_2824->g_2549
 */
int8_t  func_14(int64_t  p_15, uint64_t  p_16, struct S0  p_17, int32_t  p_18, int64_t  p_19, struct S3 * p_2824)
{ /* block id: 9 */
    int32_t l_23 = 0x545E2138L;
    struct S0 ***l_2132 = &p_2824->g_1387;
    int8_t ***l_2148 = &p_2824->g_193;
    int32_t l_2161[2][5][10] = {{{0x31C1F842L,(-1L),7L,(-9L),0L,0L,(-9L),7L,(-1L),0x31C1F842L},{0x31C1F842L,(-1L),7L,(-9L),0L,0L,(-9L),7L,(-1L),0x31C1F842L},{0x31C1F842L,(-1L),7L,(-9L),0L,0L,(-9L),7L,(-1L),0x31C1F842L},{0x31C1F842L,(-1L),7L,(-9L),0L,0L,(-9L),7L,(-1L),0x31C1F842L},{0x31C1F842L,(-1L),7L,(-9L),0L,0L,(-9L),7L,(-1L),0x31C1F842L}},{{0x31C1F842L,(-1L),7L,(-9L),0L,0L,(-9L),7L,(-1L),0x31C1F842L},{0x31C1F842L,(-1L),7L,(-9L),0L,0L,(-9L),7L,(-1L),0x31C1F842L},{0x31C1F842L,(-1L),7L,(-9L),0L,0L,(-9L),7L,(-1L),0x31C1F842L},{0x31C1F842L,(-1L),7L,(-9L),0L,0L,(-9L),7L,(-1L),0x31C1F842L},{0x31C1F842L,(-1L),7L,(-9L),0L,0L,(-9L),7L,(-1L),0x31C1F842L}}};
    int64_t l_2205 = 0x7FE99326B4D6FE95L;
    uint64_t l_2221 = 5UL;
    struct S1 **l_2307[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int16_t **l_2308 = &p_2824->g_1673;
    int32_t *l_2315 = &p_2824->g_225;
    int8_t *****l_2319 = &p_2824->g_582;
    int32_t ***l_2323[9][10] = {{&p_2824->g_499[5],&p_2824->g_499[5],&p_2824->g_499[5],&p_2824->g_499[5],&p_2824->g_499[5],&p_2824->g_499[5],&p_2824->g_499[5],&p_2824->g_499[5],&p_2824->g_499[5],&p_2824->g_499[5]},{&p_2824->g_499[5],&p_2824->g_499[5],&p_2824->g_499[5],&p_2824->g_499[5],&p_2824->g_499[5],&p_2824->g_499[5],&p_2824->g_499[5],&p_2824->g_499[5],&p_2824->g_499[5],&p_2824->g_499[5]},{&p_2824->g_499[5],&p_2824->g_499[5],&p_2824->g_499[5],&p_2824->g_499[5],&p_2824->g_499[5],&p_2824->g_499[5],&p_2824->g_499[5],&p_2824->g_499[5],&p_2824->g_499[5],&p_2824->g_499[5]},{&p_2824->g_499[5],&p_2824->g_499[5],&p_2824->g_499[5],&p_2824->g_499[5],&p_2824->g_499[5],&p_2824->g_499[5],&p_2824->g_499[5],&p_2824->g_499[5],&p_2824->g_499[5],&p_2824->g_499[5]},{&p_2824->g_499[5],&p_2824->g_499[5],&p_2824->g_499[5],&p_2824->g_499[5],&p_2824->g_499[5],&p_2824->g_499[5],&p_2824->g_499[5],&p_2824->g_499[5],&p_2824->g_499[5],&p_2824->g_499[5]},{&p_2824->g_499[5],&p_2824->g_499[5],&p_2824->g_499[5],&p_2824->g_499[5],&p_2824->g_499[5],&p_2824->g_499[5],&p_2824->g_499[5],&p_2824->g_499[5],&p_2824->g_499[5],&p_2824->g_499[5]},{&p_2824->g_499[5],&p_2824->g_499[5],&p_2824->g_499[5],&p_2824->g_499[5],&p_2824->g_499[5],&p_2824->g_499[5],&p_2824->g_499[5],&p_2824->g_499[5],&p_2824->g_499[5],&p_2824->g_499[5]},{&p_2824->g_499[5],&p_2824->g_499[5],&p_2824->g_499[5],&p_2824->g_499[5],&p_2824->g_499[5],&p_2824->g_499[5],&p_2824->g_499[5],&p_2824->g_499[5],&p_2824->g_499[5],&p_2824->g_499[5]},{&p_2824->g_499[5],&p_2824->g_499[5],&p_2824->g_499[5],&p_2824->g_499[5],&p_2824->g_499[5],&p_2824->g_499[5],&p_2824->g_499[5],&p_2824->g_499[5],&p_2824->g_499[5],&p_2824->g_499[5]}};
    int16_t l_2465 = 0x3F4AL;
    uint32_t l_2482[2];
    uint8_t *l_2487 = &p_2824->g_2058.f5;
    int8_t l_2547 = 0x25L;
    uint32_t *l_2548 = &p_2824->g_1375.f3;
    int32_t l_2550 = 0x48D1BAF7L;
    int64_t *l_2551[2];
    uint16_t l_2552 = 65533UL;
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_2482[i] = 0x8E31A25AL;
    for (i = 0; i < 2; i++)
        l_2551[i] = &p_2824->g_172;
    if ((((safe_rshift_func_int16_t_s_s(l_23, (safe_unary_minus_func_uint32_t_u(p_2824->g_3)))) && FAKE_DIVERGE(p_2824->local_0_offset, get_local_id(0), 10)) & GROUP_DIVERGE(0, 1)))
    { /* block id: 10 */
        int64_t l_29 = (-7L);
        uint32_t l_30[4];
        int32_t *l_42 = &p_2824->g_3;
        int32_t l_2159 = 0x64D9DFDDL;
        int32_t l_2160 = 1L;
        int32_t l_2162 = (-1L);
        uint32_t l_2164 = 0x15F8ECFFL;
        int32_t l_2275 = (-1L);
        int32_t l_2276[4];
        uint32_t l_2287[9] = {0x30781316L,0x30781316L,0x30781316L,0x30781316L,0x30781316L,0x30781316L,0x30781316L,0x30781316L,0x30781316L};
        int8_t *****l_2318[2][7] = {{&p_2824->g_582,&p_2824->g_582,&p_2824->g_582,&p_2824->g_582,&p_2824->g_582,&p_2824->g_582,&p_2824->g_582},{&p_2824->g_582,&p_2824->g_582,&p_2824->g_582,&p_2824->g_582,&p_2824->g_582,&p_2824->g_582,&p_2824->g_582}};
        int32_t **l_2341 = &p_2824->g_1970[0];
        struct S0 l_2344[7] = {{-1L,0x56A146C0L},{-1L,0x56A146C0L},{-1L,0x56A146C0L},{-1L,0x56A146C0L},{-1L,0x56A146C0L},{-1L,0x56A146C0L},{-1L,0x56A146C0L}};
        uint32_t *l_2370 = &p_2824->g_1372.f0;
        uint16_t ***l_2373 = &p_2824->g_319;
        union U2 **l_2449 = &p_2824->g_1893;
        uint8_t *l_2488 = (void*)0;
        struct S0 ****l_2489 = &l_2132;
        int i, j;
        for (i = 0; i < 4; i++)
            l_30[i] = 8UL;
        for (i = 0; i < 4; i++)
            l_2276[i] = 1L;
        for (p_15 = 12; (p_15 <= 9); p_15--)
        { /* block id: 13 */
            uint16_t l_2069 = 65534UL;
            struct S0 l_2109[6] = {{-2L,0x5963E11DL},{-2L,0x5963E11DL},{-2L,0x5963E11DL},{-2L,0x5963E11DL},{-2L,0x5963E11DL},{-2L,0x5963E11DL}};
            struct S0 ***l_2131 = &p_2824->g_1387;
            struct S0 ***l_2134[7] = {&p_2824->g_1380[5],&p_2824->g_1380[5],&p_2824->g_1380[5],&p_2824->g_1380[5],&p_2824->g_1380[5],&p_2824->g_1380[5],&p_2824->g_1380[5]};
            int32_t l_2155 = 7L;
            int32_t l_2158 = 1L;
            int32_t l_2163[1][7] = {{0x7B0FA2B4L,(-6L),0x7B0FA2B4L,0x7B0FA2B4L,(-6L),0x7B0FA2B4L,0x7B0FA2B4L}};
            uint64_t l_2210 = 3UL;
            uint32_t l_2233 = 0xC623C0E6L;
            int32_t *l_2268[9][6] = {{&l_2109[5].f1,&p_2824->g_1375.f9.f1,&p_2824->g_111[1].f1,&p_2824->g_1372.f8,&p_2824->g_1372.f8,&p_2824->g_1372.f8},{&l_2109[5].f1,&p_2824->g_1375.f9.f1,&p_2824->g_111[1].f1,&p_2824->g_1372.f8,&p_2824->g_1372.f8,&p_2824->g_1372.f8},{&l_2109[5].f1,&p_2824->g_1375.f9.f1,&p_2824->g_111[1].f1,&p_2824->g_1372.f8,&p_2824->g_1372.f8,&p_2824->g_1372.f8},{&l_2109[5].f1,&p_2824->g_1375.f9.f1,&p_2824->g_111[1].f1,&p_2824->g_1372.f8,&p_2824->g_1372.f8,&p_2824->g_1372.f8},{&l_2109[5].f1,&p_2824->g_1375.f9.f1,&p_2824->g_111[1].f1,&p_2824->g_1372.f8,&p_2824->g_1372.f8,&p_2824->g_1372.f8},{&l_2109[5].f1,&p_2824->g_1375.f9.f1,&p_2824->g_111[1].f1,&p_2824->g_1372.f8,&p_2824->g_1372.f8,&p_2824->g_1372.f8},{&l_2109[5].f1,&p_2824->g_1375.f9.f1,&p_2824->g_111[1].f1,&p_2824->g_1372.f8,&p_2824->g_1372.f8,&p_2824->g_1372.f8},{&l_2109[5].f1,&p_2824->g_1375.f9.f1,&p_2824->g_111[1].f1,&p_2824->g_1372.f8,&p_2824->g_1372.f8,&p_2824->g_1372.f8},{&l_2109[5].f1,&p_2824->g_1375.f9.f1,&p_2824->g_111[1].f1,&p_2824->g_1372.f8,&p_2824->g_1372.f8,&p_2824->g_1372.f8}};
            int32_t l_2273[9][5] = {{0L,0L,5L,0L,5L},{0L,0L,5L,0L,5L},{0L,0L,5L,0L,5L},{0L,0L,5L,0L,5L},{0L,0L,5L,0L,5L},{0L,0L,5L,0L,5L},{0L,0L,5L,0L,5L},{0L,0L,5L,0L,5L},{0L,0L,5L,0L,5L}};
            uint32_t l_2296 = 4294967295UL;
            int16_t *l_2306 = &p_2824->g_697.f0;
            int i, j;
            (1 + 1);
        }
        if (((safe_mul_func_int16_t_s_s((safe_mul_func_int16_t_s_s((((p_2824->g_1372.f3 <= ((*l_42) < ((safe_lshift_func_uint8_t_u_s(0x21L, 2)) , (&p_2824->g_225 == l_2315)))) , ((*p_2824->g_1621) &= (safe_sub_func_int64_t_s_s(p_2824->g_570, ((p_2824->g_1279[4][0] = l_2318[0][3]) != l_2319))))) != (safe_div_func_uint8_t_u_u((((p_2824->g_2322 != l_2323[3][0]) || GROUP_DIVERGE(2, 1)) , p_16), p_15))), (-2L))), (*l_42))) == 4294967288UL))
        { /* block id: 1226 */
            uint32_t l_2346 = 0x22F64485L;
            int32_t l_2366 = 0L;
            for (p_2824->g_1376.f0 = 0; (p_2824->g_1376.f0 <= 1); p_2824->g_1376.f0 += 1)
            { /* block id: 1229 */
                int32_t *l_2324 = &l_2276[1];
                int32_t l_2363[10] = {(-1L),(-10L),(-1L),(-1L),(-10L),(-1L),(-1L),(-10L),(-1L),(-1L)};
                int i;
                l_2324 = (void*)0;
                for (p_18 = 0; (p_18 <= 1); p_18 += 1)
                { /* block id: 1233 */
                    int32_t *l_2342 = &p_2824->g_1376.f9.f1;
                    uint64_t *l_2345 = (void*)0;
                    struct S0 *l_2352 = &p_2824->g_2056[0][0].f9;
                    int64_t *l_2362[8][7][4] = {{{&l_29,(void*)0,&p_2824->g_172,&p_2824->g_172},{&l_29,(void*)0,&p_2824->g_172,&p_2824->g_172},{&l_29,(void*)0,&p_2824->g_172,&p_2824->g_172},{&l_29,(void*)0,&p_2824->g_172,&p_2824->g_172},{&l_29,(void*)0,&p_2824->g_172,&p_2824->g_172},{&l_29,(void*)0,&p_2824->g_172,&p_2824->g_172},{&l_29,(void*)0,&p_2824->g_172,&p_2824->g_172}},{{&l_29,(void*)0,&p_2824->g_172,&p_2824->g_172},{&l_29,(void*)0,&p_2824->g_172,&p_2824->g_172},{&l_29,(void*)0,&p_2824->g_172,&p_2824->g_172},{&l_29,(void*)0,&p_2824->g_172,&p_2824->g_172},{&l_29,(void*)0,&p_2824->g_172,&p_2824->g_172},{&l_29,(void*)0,&p_2824->g_172,&p_2824->g_172},{&l_29,(void*)0,&p_2824->g_172,&p_2824->g_172}},{{&l_29,(void*)0,&p_2824->g_172,&p_2824->g_172},{&l_29,(void*)0,&p_2824->g_172,&p_2824->g_172},{&l_29,(void*)0,&p_2824->g_172,&p_2824->g_172},{&l_29,(void*)0,&p_2824->g_172,&p_2824->g_172},{&l_29,(void*)0,&p_2824->g_172,&p_2824->g_172},{&l_29,(void*)0,&p_2824->g_172,&p_2824->g_172},{&l_29,(void*)0,&p_2824->g_172,&p_2824->g_172}},{{&l_29,(void*)0,&p_2824->g_172,&p_2824->g_172},{&l_29,(void*)0,&p_2824->g_172,&p_2824->g_172},{&l_29,(void*)0,&p_2824->g_172,&p_2824->g_172},{&l_29,(void*)0,&p_2824->g_172,&p_2824->g_172},{&l_29,(void*)0,&p_2824->g_172,&p_2824->g_172},{&l_29,(void*)0,&p_2824->g_172,&p_2824->g_172},{&l_29,(void*)0,&p_2824->g_172,&p_2824->g_172}},{{&l_29,(void*)0,&p_2824->g_172,&p_2824->g_172},{&l_29,(void*)0,&p_2824->g_172,&p_2824->g_172},{&l_29,(void*)0,&p_2824->g_172,&p_2824->g_172},{&l_29,(void*)0,&p_2824->g_172,&p_2824->g_172},{&l_29,(void*)0,&p_2824->g_172,&p_2824->g_172},{&l_29,(void*)0,&p_2824->g_172,&p_2824->g_172},{&l_29,(void*)0,&p_2824->g_172,&p_2824->g_172}},{{&l_29,(void*)0,&p_2824->g_172,&p_2824->g_172},{&l_29,(void*)0,&p_2824->g_172,&p_2824->g_172},{&l_29,(void*)0,&p_2824->g_172,&p_2824->g_172},{&l_29,(void*)0,&p_2824->g_172,&p_2824->g_172},{&l_29,(void*)0,&p_2824->g_172,&p_2824->g_172},{&l_29,(void*)0,&p_2824->g_172,&p_2824->g_172},{&l_29,(void*)0,&p_2824->g_172,&p_2824->g_172}},{{&l_29,(void*)0,&p_2824->g_172,&p_2824->g_172},{&l_29,(void*)0,&p_2824->g_172,&p_2824->g_172},{&l_29,(void*)0,&p_2824->g_172,&p_2824->g_172},{&l_29,(void*)0,&p_2824->g_172,&p_2824->g_172},{&l_29,(void*)0,&p_2824->g_172,&p_2824->g_172},{&l_29,(void*)0,&p_2824->g_172,&p_2824->g_172},{&l_29,(void*)0,&p_2824->g_172,&p_2824->g_172}},{{&l_29,(void*)0,&p_2824->g_172,&p_2824->g_172},{&l_29,(void*)0,&p_2824->g_172,&p_2824->g_172},{&l_29,(void*)0,&p_2824->g_172,&p_2824->g_172},{&l_29,(void*)0,&p_2824->g_172,&p_2824->g_172},{&l_29,(void*)0,&p_2824->g_172,&p_2824->g_172},{&l_29,(void*)0,&p_2824->g_172,&p_2824->g_172},{&l_29,(void*)0,&p_2824->g_172,&p_2824->g_172}}};
                    int i, j, k;
                    for (p_2824->g_172 = 3; (p_2824->g_172 >= 0); p_2824->g_172 -= 1)
                    { /* block id: 1236 */
                        uint32_t *l_2335 = &p_2824->g_323;
                        uint32_t *l_2340[4][2];
                        union U2 **l_2343[10] = {&p_2824->g_1893,&p_2824->g_1893,&p_2824->g_1893,&p_2824->g_1893,&p_2824->g_1893,&p_2824->g_1893,&p_2824->g_1893,&p_2824->g_1893,&p_2824->g_1893,&p_2824->g_1893};
                        int i, j, k;
                        for (i = 0; i < 4; i++)
                        {
                            for (j = 0; j < 2; j++)
                                l_2340[i][j] = &l_2287[0];
                        }
                        l_2342 = func_74((safe_lshift_func_uint8_t_u_s((safe_add_func_uint8_t_u_u((((*l_2335) |= (safe_lshift_func_uint16_t_u_u((safe_add_func_int64_t_s_s(p_2824->g_744[(p_2824->g_172 + 1)][(p_2824->g_1376.f0 + 1)], (safe_sub_func_uint8_t_u_u((l_2161[p_2824->g_1376.f0][p_18][p_2824->g_172] , p_2824->g_140[(p_18 + 4)][p_18][(p_2824->g_172 + 1)]), p_15)))), 2))) >= l_2161[p_2824->g_1376.f0][p_18][p_2824->g_172]), (safe_lshift_func_int8_t_s_u(((*l_42) , (((**p_2824->g_1933) ^= ((~(((((p_2824->g_1377[6].f3 = (p_17.f1 < ((p_15 , p_2824->g_2338) == &p_2824->g_2339))) && p_19) , p_2824->g_1917) == p_2824->g_1570) , 0x7F524701L)) | p_17.f1)) || 0x50L)), p_17.f1)))), p_15)), (*p_2824->g_320), l_2341, p_2824->g_140[8][1][5], (*p_2824->g_1917), p_2824);
                        p_2824->g_1893 = p_2824->g_1893;
                        l_2344[3] = (***l_2132);
                        l_2346 ^= (l_2161[p_18][(p_18 + 2)][(p_18 + 4)] |= (l_2345 == (void*)0));
                    }
                    p_17.f1 = ((*p_2824->g_1717) ^= (safe_unary_minus_func_int8_t_s((safe_mod_func_int8_t_s_s(((safe_rshift_func_uint8_t_u_s((*l_2342), 1)) == (1UL >= p_2824->g_1377[6].f9.f0)), ((***p_2824->g_583) = p_17.f1))))));
                    for (p_2824->g_1372.f9.f0 = 3; (p_2824->g_1372.f9.f0 >= 0); p_2824->g_1372.f9.f0 -= 1)
                    { /* block id: 1251 */
                        int8_t l_2353 = 0L;
                        (**l_2132) = l_2352;
                        if (l_2353)
                            break;
                    }
                    if ((0UL <= (safe_add_func_int8_t_s_s((safe_lshift_func_uint8_t_u_s(((((((safe_rshift_func_int8_t_s_u(p_16, ((safe_mod_func_int64_t_s_s((p_19 = (((*l_2342) &= (***p_2824->g_583)) <= l_2346)), 0x7D5507AEC9180DC6L)) || (0x7ED1L > (-4L))))) >= ((((**p_2824->g_1933) = (0x7468L != l_2363[8])) != 0x0BL) | 0L)) < p_17.f0) && p_17.f0) || 250UL) ^ (-1L)), 1)), 0x19L))))
                    { /* block id: 1258 */
                        int64_t l_2364 = 5L;
                        p_17.f1 &= (*p_2824->g_1717);
                        return l_2364;
                    }
                    else
                    { /* block id: 1261 */
                        int16_t *l_2365 = (void*)0;
                        uint32_t **l_2369[1];
                        uint16_t ***l_2374[8][10][3] = {{{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319},{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319},{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319},{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319},{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319},{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319},{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319},{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319},{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319},{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319}},{{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319},{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319},{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319},{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319},{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319},{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319},{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319},{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319},{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319},{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319}},{{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319},{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319},{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319},{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319},{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319},{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319},{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319},{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319},{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319},{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319}},{{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319},{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319},{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319},{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319},{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319},{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319},{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319},{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319},{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319},{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319}},{{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319},{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319},{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319},{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319},{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319},{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319},{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319},{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319},{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319},{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319}},{{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319},{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319},{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319},{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319},{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319},{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319},{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319},{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319},{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319},{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319}},{{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319},{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319},{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319},{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319},{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319},{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319},{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319},{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319},{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319},{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319}},{{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319},{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319},{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319},{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319},{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319},{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319},{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319},{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319},{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319},{&p_2824->g_319,&p_2824->g_319,&p_2824->g_319}}};
                        int32_t l_2376 = 0x17741469L;
                        int i, j, k;
                        for (i = 0; i < 1; i++)
                            l_2369[i] = &p_2824->g_2243;
                        l_2366 |= ((void*)0 != l_2365);
                        (*p_2824->g_1621) = (((*p_2824->g_2243) &= (((void*)0 != (*l_2132)) <= ((((l_2370 = ((((*p_2824->g_1934) <= ((**p_2824->g_319) < (0L > ((((*l_42) == ((((!((l_2346 <= ((*p_2824->g_1673) ^= (safe_mul_func_int16_t_s_s((*l_2342), ((((**l_2341) || p_18) != 0x14L) , 0L))))) < (-5L))) == 0UL) & 0x59A113D8L) == p_15)) && p_2824->g_212[0][3][1]) , (*p_2824->g_1917))))) == p_18) , l_2324)) == &p_2824->g_655) | 0x834044A04D4F3558L) != p_17.f0))) , (*l_2342));
                        (*l_2342) &= ((~(p_17 , (((safe_rshift_func_int8_t_s_s((l_2373 == l_2374[4][6][1]), ((****p_2824->g_582) = (safe_unary_minus_func_int16_t_s(l_2376))))) >= 1L) , ((~(p_17.f0 < (safe_sub_func_int32_t_s_s(((*p_2824->g_1917) & (safe_sub_func_int32_t_s_s((1L < 0x6BL), 0x84691C89L))), p_15)))) | p_19)))) , p_18);
                    }
                }
            }
        }
        else
        { /* block id: 1272 */
            uint16_t l_2395 = 0UL;
            int32_t *l_2398 = &p_2824->g_542[1][1];
            struct S0 ***l_2399 = &p_2824->g_1387;
            struct S0 ****l_2400 = &l_2132;
            for (l_2159 = 0; (l_2159 < (-20)); l_2159--)
            { /* block id: 1275 */
                int16_t l_2392 = 0x59FEL;
                int32_t l_2393 = (-1L);
                int32_t l_2394 = 0x09F1A214L;
                for (p_2824->g_98 = 24; (p_2824->g_98 > (-27)); p_2824->g_98 = safe_sub_func_uint16_t_u_u(p_2824->g_98, 8))
                { /* block id: 1278 */
                    if ((atomic_inc(&p_2824->g_atomic_input[54 * get_linear_group_id() + 38]) == 6))
                    { /* block id: 1280 */
                        int32_t l_2386 = 0x49C956C2L;
                        int32_t *l_2385 = &l_2386;
                        int32_t *l_2387 = &l_2386;
                        uint32_t l_2388 = 0xC4107E4BL;
                        int64_t l_2389 = 0x68D355D2947D577CL;
                        uint32_t l_2390 = 0xBC1E5AD0L;
                        uint32_t l_2391 = 0x5651F974L;
                        l_2387 = l_2385;
                        l_2391 = (l_2390 = (l_2389 ^= l_2388));
                        unsigned int result = 0;
                        result += l_2386;
                        result += l_2388;
                        result += l_2389;
                        result += l_2390;
                        result += l_2391;
                        atomic_add(&p_2824->g_special_values[54 * get_linear_group_id() + 38], result);
                    }
                    else
                    { /* block id: 1285 */
                        (1 + 1);
                    }
                }
                ++l_2395;
                l_2398 = l_2398;
                return p_19;
            }
            (*l_2341) = l_2398;
            (*p_2824->g_32) &= ((!0x178458F0L) , (&p_2824->g_1387 == ((*l_2400) = l_2399)));
            return (*l_2398);
        }
        if (((*l_42) != (*p_2824->g_32)))
        { /* block id: 1298 */
            uint32_t l_2406 = 4294967292UL;
            int32_t *l_2413 = (void*)0;
            struct S0 *l_2456 = &p_2824->g_1376.f9;
            for (p_2824->g_1689.f5 = (-22); (p_2824->g_1689.f5 < 10); p_2824->g_1689.f5 = safe_add_func_uint64_t_u_u(p_2824->g_1689.f5, 9))
            { /* block id: 1301 */
                union U2 *l_2403 = &p_2824->g_2404;
                union U2 **l_2405 = &l_2403;
                int32_t l_2458[8][1];
                int32_t l_2459 = (-10L);
                uint8_t l_2460 = 251UL;
                int i, j;
                for (i = 0; i < 8; i++)
                {
                    for (j = 0; j < 1; j++)
                        l_2458[i][j] = 1L;
                }
                (1 + 1);
            }
            (*p_2824->g_1717) = l_2406;
            p_17.f1 &= (*p_2824->g_32);
        }
        else
        { /* block id: 1337 */
            uint8_t l_2468 = 0x74L;
            int32_t l_2471 = 0x5AC2884DL;
            int32_t l_2472 = 0L;
            int32_t l_2474[4][4] = {{0x4BB0D008L,0L,9L,0L},{0x4BB0D008L,0L,9L,0L},{0x4BB0D008L,0L,9L,0L},{0x4BB0D008L,0L,9L,0L}};
            int32_t l_2513 = (-10L);
            int i, j;
            for (l_2465 = 0; (l_2465 <= 0); l_2465 += 1)
            { /* block id: 1340 */
                int32_t l_2469 = (-8L);
                int32_t l_2473 = 0x4F71A729L;
                int32_t l_2475 = (-8L);
                int32_t l_2476 = 0x1D1E1679L;
                int32_t l_2477 = (-6L);
                int32_t l_2478 = 9L;
                int32_t l_2479 = (-3L);
                int32_t l_2480 = 0x749EFABBL;
                int32_t l_2481[2];
                int i;
                for (i = 0; i < 2; i++)
                    l_2481[i] = 0x45AAF585L;
                if (l_2468)
                    break;
                for (p_2824->g_472 = 0; (p_2824->g_472 <= 0); p_2824->g_472 += 1)
                { /* block id: 1344 */
                    int32_t l_2470[6][3][9] = {{{(-1L),0x4D46DB5AL,0L,0x618C2019L,7L,(-8L),9L,(-1L),0L},{(-1L),0x4D46DB5AL,0L,0x618C2019L,7L,(-8L),9L,(-1L),0L},{(-1L),0x4D46DB5AL,0L,0x618C2019L,7L,(-8L),9L,(-1L),0L}},{{(-1L),0x4D46DB5AL,0L,0x618C2019L,7L,(-8L),9L,(-1L),0L},{(-1L),0x4D46DB5AL,0L,0x618C2019L,7L,(-8L),9L,(-1L),0L},{(-1L),0x4D46DB5AL,0L,0x618C2019L,7L,(-8L),9L,(-1L),0L}},{{(-1L),0x4D46DB5AL,0L,0x618C2019L,7L,(-8L),9L,(-1L),0L},{(-1L),0x4D46DB5AL,0L,0x618C2019L,7L,(-8L),9L,(-1L),0L},{(-1L),0x4D46DB5AL,0L,0x618C2019L,7L,(-8L),9L,(-1L),0L}},{{(-1L),0x4D46DB5AL,0L,0x618C2019L,7L,(-8L),9L,(-1L),0L},{(-1L),0x4D46DB5AL,0L,0x618C2019L,7L,(-8L),9L,(-1L),0L},{(-1L),0x4D46DB5AL,0L,0x618C2019L,7L,(-8L),9L,(-1L),0L}},{{(-1L),0x4D46DB5AL,0L,0x618C2019L,7L,(-8L),9L,(-1L),0L},{(-1L),0x4D46DB5AL,0L,0x618C2019L,7L,(-8L),9L,(-1L),0L},{(-1L),0x4D46DB5AL,0L,0x618C2019L,7L,(-8L),9L,(-1L),0L}},{{(-1L),0x4D46DB5AL,0L,0x618C2019L,7L,(-8L),9L,(-1L),0L},{(-1L),0x4D46DB5AL,0L,0x618C2019L,7L,(-8L),9L,(-1L),0L},{(-1L),0x4D46DB5AL,0L,0x618C2019L,7L,(-8L),9L,(-1L),0L}}};
                    int i, j, k;
                    l_2482[0]--;
                }
            }
        }
    }
    else
    { /* block id: 1367 */
        uint32_t l_2527[2];
        int64_t l_2530[6][10] = {{0x75BE991661A9E88BL,9L,0x75BE991661A9E88BL,0x75BE991661A9E88BL,9L,0x75BE991661A9E88BL,0x75BE991661A9E88BL,9L,0x75BE991661A9E88BL,0x75BE991661A9E88BL},{0x75BE991661A9E88BL,9L,0x75BE991661A9E88BL,0x75BE991661A9E88BL,9L,0x75BE991661A9E88BL,0x75BE991661A9E88BL,9L,0x75BE991661A9E88BL,0x75BE991661A9E88BL},{0x75BE991661A9E88BL,9L,0x75BE991661A9E88BL,0x75BE991661A9E88BL,9L,0x75BE991661A9E88BL,0x75BE991661A9E88BL,9L,0x75BE991661A9E88BL,0x75BE991661A9E88BL},{0x75BE991661A9E88BL,9L,0x75BE991661A9E88BL,0x75BE991661A9E88BL,9L,0x75BE991661A9E88BL,0x75BE991661A9E88BL,9L,0x75BE991661A9E88BL,0x75BE991661A9E88BL},{0x75BE991661A9E88BL,9L,0x75BE991661A9E88BL,0x75BE991661A9E88BL,9L,0x75BE991661A9E88BL,0x75BE991661A9E88BL,9L,0x75BE991661A9E88BL,0x75BE991661A9E88BL},{0x75BE991661A9E88BL,9L,0x75BE991661A9E88BL,0x75BE991661A9E88BL,9L,0x75BE991661A9E88BL,0x75BE991661A9E88BL,9L,0x75BE991661A9E88BL,0x75BE991661A9E88BL}};
        int i, j;
        for (i = 0; i < 2; i++)
            l_2527[i] = 0x73462095L;
        for (p_2824->g_1689.f1 = (-17); (p_2824->g_1689.f1 > 20); ++p_2824->g_1689.f1)
        { /* block id: 1370 */
            return (****p_2824->g_582);
        }
        for (p_17.f1 = (-25); (p_17.f1 < 0); p_17.f1++)
        { /* block id: 1375 */
            int8_t l_2520 = 0x6BL;
            int32_t l_2521 = 0x12D834D9L;
            l_2521 = ((safe_lshift_func_uint16_t_u_u((((p_2824->g_1689.f8 || p_2824->g_541[5][0][2]) || p_16) & 0xAB0F6E0C07B05A80L), 14)) || l_2520);
            --p_2824->g_2522[0];
        }
        (*p_2824->g_1621) |= (safe_mod_func_int16_t_s_s(((l_2527[0] && 0xC450L) & (l_2527[0] < (p_15 , (safe_div_func_int8_t_s_s(l_2530[0][6], (*p_2824->g_1934)))))), ((safe_add_func_int64_t_s_s(p_16, (0x4CL | p_19))) , p_19)));
    }
    (*p_2824->g_1717) = ((safe_sub_func_uint64_t_u_u(((safe_lshift_func_uint8_t_u_u((((safe_lshift_func_uint8_t_u_s(((***l_2319) != (*p_2824->g_583)), (***p_2824->g_583))) == (p_2824->g_172 = (safe_mul_func_uint8_t_u_u(0x55L, ((safe_lshift_func_uint8_t_u_s(((*p_2824->g_1673) ^ (p_2824->g_2549 = (((safe_add_func_int16_t_s_s((safe_lshift_func_uint16_t_u_u(65531UL, 7)), p_19)) ^ l_2547) && (p_2824->g_323 = ((*l_2548) = ((*p_2824->g_1673) && p_19)))))), 7)) , l_2550))))) | (*p_2824->g_320)), 3)) , GROUP_DIVERGE(2, 1)), p_2824->g_1372.f4)) && l_2552);
    return p_19;
}


/* ------------------------------------------ */
/* 
 * reads : p_2824->g_1917 p_2824->g_563 p_2824->g_308
 * writes: p_2824->g_472
 */
struct S0  func_35(int32_t * p_36, uint32_t  p_37, int32_t * p_38, uint16_t  p_39, struct S3 * p_2824)
{ /* block id: 1114 */
    uint64_t l_2088 = 18446744073709551615UL;
    int64_t *l_2089 = &p_2824->g_472;
    uint16_t ***l_2090 = &p_2824->g_319;
    uint16_t ***l_2092[10];
    uint16_t ****l_2091 = &l_2092[1];
    int32_t l_2101[5] = {1L,1L,1L,1L,1L};
    struct S1 *l_2102 = (void*)0;
    int32_t l_2103[9][1] = {{0L},{0L},{0L},{0L},{0L},{0L},{0L},{0L},{0L}};
    int32_t *l_2104[8] = {&p_2824->g_1376.f9.f1,&p_2824->g_1376.f9.f1,&p_2824->g_1376.f9.f1,&p_2824->g_1376.f9.f1,&p_2824->g_1376.f9.f1,&p_2824->g_1376.f9.f1,&p_2824->g_1376.f9.f1,&p_2824->g_1376.f9.f1};
    uint64_t l_2105 = 1UL;
    struct S0 l_2108 = {0x4702C837289CA029L,-8L};
    int i, j;
    for (i = 0; i < 10; i++)
        l_2092[i] = (void*)0;
    l_2103[7][0] = ((safe_rshift_func_uint8_t_u_s((safe_add_func_uint64_t_u_u((*p_2824->g_1917), ((*l_2089) = ((p_39 & p_37) || l_2088)))), (((((~(((((0xECA0L == ((l_2090 == ((*l_2091) = l_2090)) && ((safe_add_func_uint64_t_u_u((l_2101[1] = ((safe_rshift_func_uint8_t_u_u((safe_add_func_uint16_t_u_u(FAKE_DIVERGE(p_2824->group_2_offset, get_group_id(2), 10), 0x3A4CL)), ((safe_div_func_uint64_t_u_u((*p_2824->g_1917), p_37)) , p_39))) ^ p_39)), p_39)) | p_39))) && 0x20L) != l_2088) || l_2088) , 0x3038DF43L)) , l_2102) == l_2102) , p_2824->g_308[1][0]) ^ 0x22E6F69B1E8802A9L))) <= p_37);
    l_2105++;
    return l_2108;
}


/* ------------------------------------------ */
/* 
 * reads : p_2824->g_33 p_2824->g_98 p_2824->g_32 p_2824->g_3 p_2824->g_97 p_2824->g_108 p_2824->g_111 p_2824->g_89 p_2824->g_140 p_2824->g_122 p_2824->g_172 p_2824->g_193 p_2824->g_215 p_2824->g_212 p_2824->g_260 p_2824->g_225 p_2824->g_308 p_2824->g_323 p_2824->g_320 p_2824->g_200 p_2824->g_194 p_2824->g_319 p_2824->g_472 p_2824->g_499 p_2824->g_541 p_2824->g_570 p_2824->g_582 p_2824->g_583 p_2824->g_563 p_2824->g_542 p_2824->g_651 p_2824->g_744 p_2824->g_697.f0 p_2824->g_1299 p_2824->g_719 p_2824->g_1380 p_2824->g_1377.f3 p_2824->g_1372.f9.f0 p_2824->g_1376.f0 p_2824->g_1372.f9.f1 p_2824->g_1372.f0 p_2824->g_1377.f0 p_2824->g_1376.f3 p_2824->g_1372.f7 p_2824->g_1375.f5 p_2824->g_1375.f9.f0 p_2824->g_1475.f0 p_2824->g_1383 p_2824->g_1381 p_2824->g_655 p_2824->g_1387 p_2824->g_1569 p_2824->g_1375.f9.f1 p_2824->g_1372.f1 p_2824->g_1621 p_2824->g_1372.f8 p_2824->g_1375.f7 p_2824->g_1377.f5 p_2824->g_1377.f9.f1 p_2824->g_652 p_2824->g_1688 p_2824->g_1692 p_2824->g_1717 p_2824->g_1689.f9.f0 p_2824->g_1372.f3 p_2824->g_1376.f4 p_2824->g_1689.f4 p_2824->g_1689.f9.f1 p_2824->g_1892 p_2824->g_1376.f9 p_2824->g_1377.f9 p_2824->g_1372.f5 p_2824->g_2056.f9
 * writes: p_2824->g_89 p_2824->g_32 p_2824->g_97 p_2824->g_98 p_2824->g_108 p_2824->g_122 p_2824->g_111.f1 p_2824->g_140 p_2824->g_172 p_2824->g_193 p_2824->g_200 p_2824->g_212 p_2824->g_215 p_2824->g_225 p_2824->g_308 p_2824->g_111 p_2824->g_319 p_2824->g_323 p_2824->g_194 p_2824->g_260 p_2824->g_472 p_2824->g_541 p_2824->g_542 p_2824->g_563 p_2824->g_582 p_2824->g_655 p_2824->g_719 p_2824->g_1279 p_2824->g_697.f0 p_2824->g_33 p_2824->g_1299 p_2824->g_744 p_2824->g_1374 p_2824->g_1375.f7 p_2824->g_1380 p_2824->g_1383 p_2824->g_1387 p_2824->g_1376.f8 p_2824->g_1376.f7 p_2824->g_1372.f5 p_2824->g_583 p_2824->g_1372.f0 p_2824->g_1377.f9 p_2824->g_1381 p_2824->g_499 p_2824->g_1375.f9.f0 p_2824->g_1673 p_2824->g_1372.f1 p_2824->g_1376.f0 p_2824->g_1475.f0 p_2824->g_1376.f9 p_2824->g_2056.f9
 */
int32_t * func_40(int32_t * p_41, struct S3 * p_2824)
{ /* block id: 30 */
    uint16_t l_58 = 6UL;
    int32_t *l_59 = &p_2824->g_3;
    int32_t **l_60 = &l_59;
    uint32_t l_63 = 0x7B4AD293L;
    int8_t *l_88 = &p_2824->g_89;
    int16_t l_92 = 0x3F2DL;
    int32_t **l_109 = (void*)0;
    int32_t *l_110 = &p_2824->g_97;
    int32_t *l_746[8][7] = {{&p_2824->g_33,(void*)0,&p_2824->g_33,&p_2824->g_33,&p_2824->g_33,(void*)0,&p_2824->g_33},{&p_2824->g_33,(void*)0,&p_2824->g_33,&p_2824->g_33,&p_2824->g_33,(void*)0,&p_2824->g_33},{&p_2824->g_33,(void*)0,&p_2824->g_33,&p_2824->g_33,&p_2824->g_33,(void*)0,&p_2824->g_33},{&p_2824->g_33,(void*)0,&p_2824->g_33,&p_2824->g_33,&p_2824->g_33,(void*)0,&p_2824->g_33},{&p_2824->g_33,(void*)0,&p_2824->g_33,&p_2824->g_33,&p_2824->g_33,(void*)0,&p_2824->g_33},{&p_2824->g_33,(void*)0,&p_2824->g_33,&p_2824->g_33,&p_2824->g_33,(void*)0,&p_2824->g_33},{&p_2824->g_33,(void*)0,&p_2824->g_33,&p_2824->g_33,&p_2824->g_33,(void*)0,&p_2824->g_33},{&p_2824->g_33,(void*)0,&p_2824->g_33,&p_2824->g_33,&p_2824->g_33,(void*)0,&p_2824->g_33}};
    int32_t *l_1895 = &p_2824->g_1689.f9.f1;
    struct S0 l_1896 = {-2L,0L};
    uint32_t l_1909 = 7UL;
    struct S0 *l_1913 = &p_2824->g_111[1];
    uint32_t l_2046 = 0xCEB6214BL;
    struct S1 *l_2055 = &p_2824->g_2056[0][0];
    int32_t *l_2068 = &p_2824->g_1689.f9.f1;
    int i, j;
    if (((safe_lshift_func_uint16_t_u_u(func_45(func_50(func_55(l_58, ((((*l_60) = l_59) == &p_2824->g_33) < ((safe_lshift_func_int16_t_s_u((l_63 == ((safe_div_func_int8_t_s_s(((p_2824->g_33 & func_66(func_69((l_110 = (p_41 = func_74((safe_rshift_func_int8_t_s_u((safe_rshift_func_uint8_t_u_u(0x28L, ((safe_mul_func_uint16_t_u_u((((*l_88) = (safe_mul_func_uint8_t_u_u(p_2824->g_33, 0xC9L))) , ((safe_rshift_func_uint16_t_u_u(p_2824->g_33, l_92)) != 0x96AAL)), p_2824->g_33)) & p_2824->g_33))), p_2824->g_33)), l_58, l_60, l_63, l_58, p_2824))), l_63, &p_2824->g_3, p_2824->g_111[1], p_2824), l_746[7][0], p_2824)) & p_2824->g_697.f0), p_2824->g_744[6][3])) < 0x59EFL)), 2)) <= p_2824->g_744[6][3])), p_2824), p_2824->g_1689.f9.f0, p_2824->g_1375.f5, p_2824->g_1377[6].f3, p_2824), p_2824->g_1377[6].f5, l_746[3][3], p_2824->g_1689.f9.f1, p_2824), 5)) <= p_2824->g_1375.f5))
    { /* block id: 1037 */
        uint16_t l_1904 = 0x61A2L;
        uint64_t *l_1914[7][5][7] = {{{&p_2824->g_212[0][3][1],&p_2824->g_563,(void*)0,&p_2824->g_212[7][3][1],(void*)0,&p_2824->g_212[0][3][1],&p_2824->g_563},{&p_2824->g_212[0][3][1],&p_2824->g_563,(void*)0,&p_2824->g_212[7][3][1],(void*)0,&p_2824->g_212[0][3][1],&p_2824->g_563},{&p_2824->g_212[0][3][1],&p_2824->g_563,(void*)0,&p_2824->g_212[7][3][1],(void*)0,&p_2824->g_212[0][3][1],&p_2824->g_563},{&p_2824->g_212[0][3][1],&p_2824->g_563,(void*)0,&p_2824->g_212[7][3][1],(void*)0,&p_2824->g_212[0][3][1],&p_2824->g_563},{&p_2824->g_212[0][3][1],&p_2824->g_563,(void*)0,&p_2824->g_212[7][3][1],(void*)0,&p_2824->g_212[0][3][1],&p_2824->g_563}},{{&p_2824->g_212[0][3][1],&p_2824->g_563,(void*)0,&p_2824->g_212[7][3][1],(void*)0,&p_2824->g_212[0][3][1],&p_2824->g_563},{&p_2824->g_212[0][3][1],&p_2824->g_563,(void*)0,&p_2824->g_212[7][3][1],(void*)0,&p_2824->g_212[0][3][1],&p_2824->g_563},{&p_2824->g_212[0][3][1],&p_2824->g_563,(void*)0,&p_2824->g_212[7][3][1],(void*)0,&p_2824->g_212[0][3][1],&p_2824->g_563},{&p_2824->g_212[0][3][1],&p_2824->g_563,(void*)0,&p_2824->g_212[7][3][1],(void*)0,&p_2824->g_212[0][3][1],&p_2824->g_563},{&p_2824->g_212[0][3][1],&p_2824->g_563,(void*)0,&p_2824->g_212[7][3][1],(void*)0,&p_2824->g_212[0][3][1],&p_2824->g_563}},{{&p_2824->g_212[0][3][1],&p_2824->g_563,(void*)0,&p_2824->g_212[7][3][1],(void*)0,&p_2824->g_212[0][3][1],&p_2824->g_563},{&p_2824->g_212[0][3][1],&p_2824->g_563,(void*)0,&p_2824->g_212[7][3][1],(void*)0,&p_2824->g_212[0][3][1],&p_2824->g_563},{&p_2824->g_212[0][3][1],&p_2824->g_563,(void*)0,&p_2824->g_212[7][3][1],(void*)0,&p_2824->g_212[0][3][1],&p_2824->g_563},{&p_2824->g_212[0][3][1],&p_2824->g_563,(void*)0,&p_2824->g_212[7][3][1],(void*)0,&p_2824->g_212[0][3][1],&p_2824->g_563},{&p_2824->g_212[0][3][1],&p_2824->g_563,(void*)0,&p_2824->g_212[7][3][1],(void*)0,&p_2824->g_212[0][3][1],&p_2824->g_563}},{{&p_2824->g_212[0][3][1],&p_2824->g_563,(void*)0,&p_2824->g_212[7][3][1],(void*)0,&p_2824->g_212[0][3][1],&p_2824->g_563},{&p_2824->g_212[0][3][1],&p_2824->g_563,(void*)0,&p_2824->g_212[7][3][1],(void*)0,&p_2824->g_212[0][3][1],&p_2824->g_563},{&p_2824->g_212[0][3][1],&p_2824->g_563,(void*)0,&p_2824->g_212[7][3][1],(void*)0,&p_2824->g_212[0][3][1],&p_2824->g_563},{&p_2824->g_212[0][3][1],&p_2824->g_563,(void*)0,&p_2824->g_212[7][3][1],(void*)0,&p_2824->g_212[0][3][1],&p_2824->g_563},{&p_2824->g_212[0][3][1],&p_2824->g_563,(void*)0,&p_2824->g_212[7][3][1],(void*)0,&p_2824->g_212[0][3][1],&p_2824->g_563}},{{&p_2824->g_212[0][3][1],&p_2824->g_563,(void*)0,&p_2824->g_212[7][3][1],(void*)0,&p_2824->g_212[0][3][1],&p_2824->g_563},{&p_2824->g_212[0][3][1],&p_2824->g_563,(void*)0,&p_2824->g_212[7][3][1],(void*)0,&p_2824->g_212[0][3][1],&p_2824->g_563},{&p_2824->g_212[0][3][1],&p_2824->g_563,(void*)0,&p_2824->g_212[7][3][1],(void*)0,&p_2824->g_212[0][3][1],&p_2824->g_563},{&p_2824->g_212[0][3][1],&p_2824->g_563,(void*)0,&p_2824->g_212[7][3][1],(void*)0,&p_2824->g_212[0][3][1],&p_2824->g_563},{&p_2824->g_212[0][3][1],&p_2824->g_563,(void*)0,&p_2824->g_212[7][3][1],(void*)0,&p_2824->g_212[0][3][1],&p_2824->g_563}},{{&p_2824->g_212[0][3][1],&p_2824->g_563,(void*)0,&p_2824->g_212[7][3][1],(void*)0,&p_2824->g_212[0][3][1],&p_2824->g_563},{&p_2824->g_212[0][3][1],&p_2824->g_563,(void*)0,&p_2824->g_212[7][3][1],(void*)0,&p_2824->g_212[0][3][1],&p_2824->g_563},{&p_2824->g_212[0][3][1],&p_2824->g_563,(void*)0,&p_2824->g_212[7][3][1],(void*)0,&p_2824->g_212[0][3][1],&p_2824->g_563},{&p_2824->g_212[0][3][1],&p_2824->g_563,(void*)0,&p_2824->g_212[7][3][1],(void*)0,&p_2824->g_212[0][3][1],&p_2824->g_563},{&p_2824->g_212[0][3][1],&p_2824->g_563,(void*)0,&p_2824->g_212[7][3][1],(void*)0,&p_2824->g_212[0][3][1],&p_2824->g_563}},{{&p_2824->g_212[0][3][1],&p_2824->g_563,(void*)0,&p_2824->g_212[7][3][1],(void*)0,&p_2824->g_212[0][3][1],&p_2824->g_563},{&p_2824->g_212[0][3][1],&p_2824->g_563,(void*)0,&p_2824->g_212[7][3][1],(void*)0,&p_2824->g_212[0][3][1],&p_2824->g_563},{&p_2824->g_212[0][3][1],&p_2824->g_563,(void*)0,&p_2824->g_212[7][3][1],(void*)0,&p_2824->g_212[0][3][1],&p_2824->g_563},{&p_2824->g_212[0][3][1],&p_2824->g_563,(void*)0,&p_2824->g_212[7][3][1],(void*)0,&p_2824->g_212[0][3][1],&p_2824->g_563},{&p_2824->g_212[0][3][1],&p_2824->g_563,(void*)0,&p_2824->g_212[7][3][1],(void*)0,&p_2824->g_212[0][3][1],&p_2824->g_563}}};
        uint8_t *l_1932 = &p_2824->g_308[0][5];
        uint8_t **l_1931 = &l_1932;
        uint8_t l_1945[5][9][1] = {{{0x1FL},{0x1FL},{0x1FL},{0x1FL},{0x1FL},{0x1FL},{0x1FL},{0x1FL},{0x1FL}},{{0x1FL},{0x1FL},{0x1FL},{0x1FL},{0x1FL},{0x1FL},{0x1FL},{0x1FL},{0x1FL}},{{0x1FL},{0x1FL},{0x1FL},{0x1FL},{0x1FL},{0x1FL},{0x1FL},{0x1FL},{0x1FL}},{{0x1FL},{0x1FL},{0x1FL},{0x1FL},{0x1FL},{0x1FL},{0x1FL},{0x1FL},{0x1FL}},{{0x1FL},{0x1FL},{0x1FL},{0x1FL},{0x1FL},{0x1FL},{0x1FL},{0x1FL},{0x1FL}}};
        int32_t l_1957 = 0x30C7DF34L;
        uint32_t l_1975[5] = {0x7C50ED04L,0x7C50ED04L,0x7C50ED04L,0x7C50ED04L,0x7C50ED04L};
        uint16_t **l_1985 = (void*)0;
        uint64_t l_1987 = 0x99899C4599D9CE8BL;
        int32_t l_2017 = 0L;
        int8_t ***l_2043[1];
        int32_t l_2045[2];
        int i, j, k;
        for (i = 0; i < 1; i++)
            l_2043[i] = &p_2824->g_193;
        for (i = 0; i < 2; i++)
            l_2045[i] = 0x318FC98EL;
        (*l_60) = ((*p_2824->g_1381) , l_1895);
        (**p_2824->g_1383) = l_1896;
        for (p_2824->g_1372.f5 = 0; (p_2824->g_1372.f5 == 51); p_2824->g_1372.f5++)
        { /* block id: 1042 */
            uint64_t l_1903 = 18446744073709551609UL;
            int64_t *l_1910 = &p_2824->g_472;
            uint8_t *l_1911 = &p_2824->g_1375.f5;
            uint16_t l_1912 = 6UL;
            int16_t **l_1921 = &p_2824->g_1673;
            int32_t l_1956[6][4];
            uint16_t *l_1958 = &l_58;
            int8_t l_1965 = (-4L);
            int8_t **l_1968 = &p_2824->g_194;
            struct S0 l_2051[8] = {{0x2FE0E653ED2A7C4BL,0x3492963FL},{0x69DA0C82F1767278L,0x14E5A0B5L},{0x2FE0E653ED2A7C4BL,0x3492963FL},{0x2FE0E653ED2A7C4BL,0x3492963FL},{0x69DA0C82F1767278L,0x14E5A0B5L},{0x2FE0E653ED2A7C4BL,0x3492963FL},{0x2FE0E653ED2A7C4BL,0x3492963FL},{0x69DA0C82F1767278L,0x14E5A0B5L}};
            int i, j;
            for (i = 0; i < 6; i++)
            {
                for (j = 0; j < 4; j++)
                    l_1956[i][j] = (-10L);
            }
            (1 + 1);
        }
    }
    else
    { /* block id: 1106 */
        uint64_t l_2054[5] = {0x45E54C1A622EBD01L,0x45E54C1A622EBD01L,0x45E54C1A622EBD01L,0x45E54C1A622EBD01L,0x45E54C1A622EBD01L};
        struct S1 *l_2057 = &p_2824->g_2058;
        int16_t *l_2065 = &p_2824->g_1475.f0;
        int16_t *l_2066 = &p_2824->g_98;
        struct S0 l_2067 = {0x194803DEE0DAAF10L,0x250AA0B6L};
        int i;
        (**p_2824->g_1383) = (((safe_rshift_func_int16_t_s_u(l_2054[1], ((l_2055 == l_2057) , ((safe_div_func_uint32_t_u_u((safe_div_func_uint32_t_u_u((*l_110), l_2054[1])), (safe_add_func_int8_t_s_s((((1L & 0x4C74L) | ((*l_2066) = ((*l_2065) &= (**l_60)))) == (!((((4294967295UL >= (-1L)) || (*p_2824->g_1717)) | l_2054[1]) , FAKE_DIVERGE(p_2824->local_2_offset, get_local_id(2), 10)))), (*p_2824->g_194))))) == 255UL)))) , p_2824->g_541[5][0][2]) , l_2067);
        return p_41;
    }
    return l_2068;
}


/* ------------------------------------------ */
/* 
 * reads : p_2824->g_1892 p_2824->g_1381 p_2824->g_1376.f9 p_2824->g_1377.f9 p_2824->g_2056.f9
 * writes: p_2824->g_1376.f9 p_2824->g_1377.f9 p_2824->g_2056.f9
 */
uint16_t  func_45(int32_t * p_46, int32_t  p_47, int32_t * p_48, int64_t  p_49, struct S3 * p_2824)
{ /* block id: 1034 */
    (*p_2824->g_1381) = (((void*)0 != p_2824->g_1892) , (*p_2824->g_1381));
    return p_49;
}


/* ------------------------------------------ */
/* 
 * reads : p_2824->g_260 p_2824->g_1372.f1 p_2824->g_1717 p_2824->g_1377.f9.f1 p_2824->g_697.f0 p_2824->g_98 p_2824->g_32 p_2824->g_3 p_2824->g_97 p_2824->g_108 p_2824->g_1621 p_2824->g_542 p_2824->g_1376.f0 p_2824->g_651 p_2824->g_652 p_2824->g_1372.f3 p_2824->g_122 p_2824->g_583 p_2824->g_200 p_2824->g_194 p_2824->g_1376.f4 p_2824->g_1689.f4
 * writes: p_2824->g_260 p_2824->g_1372.f1 p_2824->g_1377.f9.f1 p_2824->g_697.f0 p_2824->g_744 p_2824->g_32 p_2824->g_97 p_2824->g_98 p_2824->g_89 p_2824->g_108 p_2824->g_542 p_2824->g_1376.f0 p_2824->g_1475.f0
 */
int32_t * func_50(int32_t * p_51, int32_t  p_52, uint64_t  p_53, int32_t  p_54, struct S3 * p_2824)
{ /* block id: 932 */
    uint8_t l_1718[7][5][7] = {{{0xAAL,246UL,0x57L,0x1DL,0x42L,0UL,8UL},{0xAAL,246UL,0x57L,0x1DL,0x42L,0UL,8UL},{0xAAL,246UL,0x57L,0x1DL,0x42L,0UL,8UL},{0xAAL,246UL,0x57L,0x1DL,0x42L,0UL,8UL},{0xAAL,246UL,0x57L,0x1DL,0x42L,0UL,8UL}},{{0xAAL,246UL,0x57L,0x1DL,0x42L,0UL,8UL},{0xAAL,246UL,0x57L,0x1DL,0x42L,0UL,8UL},{0xAAL,246UL,0x57L,0x1DL,0x42L,0UL,8UL},{0xAAL,246UL,0x57L,0x1DL,0x42L,0UL,8UL},{0xAAL,246UL,0x57L,0x1DL,0x42L,0UL,8UL}},{{0xAAL,246UL,0x57L,0x1DL,0x42L,0UL,8UL},{0xAAL,246UL,0x57L,0x1DL,0x42L,0UL,8UL},{0xAAL,246UL,0x57L,0x1DL,0x42L,0UL,8UL},{0xAAL,246UL,0x57L,0x1DL,0x42L,0UL,8UL},{0xAAL,246UL,0x57L,0x1DL,0x42L,0UL,8UL}},{{0xAAL,246UL,0x57L,0x1DL,0x42L,0UL,8UL},{0xAAL,246UL,0x57L,0x1DL,0x42L,0UL,8UL},{0xAAL,246UL,0x57L,0x1DL,0x42L,0UL,8UL},{0xAAL,246UL,0x57L,0x1DL,0x42L,0UL,8UL},{0xAAL,246UL,0x57L,0x1DL,0x42L,0UL,8UL}},{{0xAAL,246UL,0x57L,0x1DL,0x42L,0UL,8UL},{0xAAL,246UL,0x57L,0x1DL,0x42L,0UL,8UL},{0xAAL,246UL,0x57L,0x1DL,0x42L,0UL,8UL},{0xAAL,246UL,0x57L,0x1DL,0x42L,0UL,8UL},{0xAAL,246UL,0x57L,0x1DL,0x42L,0UL,8UL}},{{0xAAL,246UL,0x57L,0x1DL,0x42L,0UL,8UL},{0xAAL,246UL,0x57L,0x1DL,0x42L,0UL,8UL},{0xAAL,246UL,0x57L,0x1DL,0x42L,0UL,8UL},{0xAAL,246UL,0x57L,0x1DL,0x42L,0UL,8UL},{0xAAL,246UL,0x57L,0x1DL,0x42L,0UL,8UL}},{{0xAAL,246UL,0x57L,0x1DL,0x42L,0UL,8UL},{0xAAL,246UL,0x57L,0x1DL,0x42L,0UL,8UL},{0xAAL,246UL,0x57L,0x1DL,0x42L,0UL,8UL},{0xAAL,246UL,0x57L,0x1DL,0x42L,0UL,8UL},{0xAAL,246UL,0x57L,0x1DL,0x42L,0UL,8UL}}};
    int8_t ****l_1722 = &p_2824->g_583;
    int32_t l_1757 = (-1L);
    int32_t l_1762 = 0x6BD1ECC0L;
    int16_t *l_1829 = &p_2824->g_697.f0;
    int16_t l_1846 = 3L;
    int32_t l_1880 = (-7L);
    int32_t l_1881 = 0L;
    int8_t l_1882[8][5] = {{0x69L,0x69L,(-7L),1L,0x65L},{0x69L,0x69L,(-7L),1L,0x65L},{0x69L,0x69L,(-7L),1L,0x65L},{0x69L,0x69L,(-7L),1L,0x65L},{0x69L,0x69L,(-7L),1L,0x65L},{0x69L,0x69L,(-7L),1L,0x65L},{0x69L,0x69L,(-7L),1L,0x65L},{0x69L,0x69L,(-7L),1L,0x65L}};
    int32_t l_1883 = 1L;
    int32_t l_1884[1];
    int64_t l_1886 = 6L;
    int32_t l_1887 = 4L;
    int32_t *l_1891 = &p_2824->g_111[1].f1;
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_1884[i] = 0L;
    for (p_2824->g_260 = 0; (p_2824->g_260 <= 1); p_2824->g_260 += 1)
    { /* block id: 935 */
        int8_t l_1746 = 2L;
        int32_t l_1758 = 0x3CF3C7D1L;
        int32_t l_1760 = 0L;
        if (l_1718[6][1][4])
            break;
        for (p_2824->g_1372.f1 = 1; (p_2824->g_1372.f1 >= 0); p_2824->g_1372.f1 -= 1)
        { /* block id: 939 */
            uint64_t l_1721 = 0x5E4B023D24649489L;
            int32_t l_1759 = 0x7D487422L;
            int8_t l_1763 = (-10L);
            uint32_t l_1764 = 0xF0E72329L;
            if ((safe_rshift_func_int16_t_s_s(l_1721, 6)))
            { /* block id: 940 */
                (*p_2824->g_1717) |= (-6L);
                if (((void*)0 != l_1722))
                { /* block id: 942 */
                    uint8_t *l_1725[8][10][2] = {{{&l_1718[6][1][4],&p_2824->g_1372.f5},{&l_1718[6][1][4],&p_2824->g_1372.f5},{&l_1718[6][1][4],&p_2824->g_1372.f5},{&l_1718[6][1][4],&p_2824->g_1372.f5},{&l_1718[6][1][4],&p_2824->g_1372.f5},{&l_1718[6][1][4],&p_2824->g_1372.f5},{&l_1718[6][1][4],&p_2824->g_1372.f5},{&l_1718[6][1][4],&p_2824->g_1372.f5},{&l_1718[6][1][4],&p_2824->g_1372.f5},{&l_1718[6][1][4],&p_2824->g_1372.f5}},{{&l_1718[6][1][4],&p_2824->g_1372.f5},{&l_1718[6][1][4],&p_2824->g_1372.f5},{&l_1718[6][1][4],&p_2824->g_1372.f5},{&l_1718[6][1][4],&p_2824->g_1372.f5},{&l_1718[6][1][4],&p_2824->g_1372.f5},{&l_1718[6][1][4],&p_2824->g_1372.f5},{&l_1718[6][1][4],&p_2824->g_1372.f5},{&l_1718[6][1][4],&p_2824->g_1372.f5},{&l_1718[6][1][4],&p_2824->g_1372.f5},{&l_1718[6][1][4],&p_2824->g_1372.f5}},{{&l_1718[6][1][4],&p_2824->g_1372.f5},{&l_1718[6][1][4],&p_2824->g_1372.f5},{&l_1718[6][1][4],&p_2824->g_1372.f5},{&l_1718[6][1][4],&p_2824->g_1372.f5},{&l_1718[6][1][4],&p_2824->g_1372.f5},{&l_1718[6][1][4],&p_2824->g_1372.f5},{&l_1718[6][1][4],&p_2824->g_1372.f5},{&l_1718[6][1][4],&p_2824->g_1372.f5},{&l_1718[6][1][4],&p_2824->g_1372.f5},{&l_1718[6][1][4],&p_2824->g_1372.f5}},{{&l_1718[6][1][4],&p_2824->g_1372.f5},{&l_1718[6][1][4],&p_2824->g_1372.f5},{&l_1718[6][1][4],&p_2824->g_1372.f5},{&l_1718[6][1][4],&p_2824->g_1372.f5},{&l_1718[6][1][4],&p_2824->g_1372.f5},{&l_1718[6][1][4],&p_2824->g_1372.f5},{&l_1718[6][1][4],&p_2824->g_1372.f5},{&l_1718[6][1][4],&p_2824->g_1372.f5},{&l_1718[6][1][4],&p_2824->g_1372.f5},{&l_1718[6][1][4],&p_2824->g_1372.f5}},{{&l_1718[6][1][4],&p_2824->g_1372.f5},{&l_1718[6][1][4],&p_2824->g_1372.f5},{&l_1718[6][1][4],&p_2824->g_1372.f5},{&l_1718[6][1][4],&p_2824->g_1372.f5},{&l_1718[6][1][4],&p_2824->g_1372.f5},{&l_1718[6][1][4],&p_2824->g_1372.f5},{&l_1718[6][1][4],&p_2824->g_1372.f5},{&l_1718[6][1][4],&p_2824->g_1372.f5},{&l_1718[6][1][4],&p_2824->g_1372.f5},{&l_1718[6][1][4],&p_2824->g_1372.f5}},{{&l_1718[6][1][4],&p_2824->g_1372.f5},{&l_1718[6][1][4],&p_2824->g_1372.f5},{&l_1718[6][1][4],&p_2824->g_1372.f5},{&l_1718[6][1][4],&p_2824->g_1372.f5},{&l_1718[6][1][4],&p_2824->g_1372.f5},{&l_1718[6][1][4],&p_2824->g_1372.f5},{&l_1718[6][1][4],&p_2824->g_1372.f5},{&l_1718[6][1][4],&p_2824->g_1372.f5},{&l_1718[6][1][4],&p_2824->g_1372.f5},{&l_1718[6][1][4],&p_2824->g_1372.f5}},{{&l_1718[6][1][4],&p_2824->g_1372.f5},{&l_1718[6][1][4],&p_2824->g_1372.f5},{&l_1718[6][1][4],&p_2824->g_1372.f5},{&l_1718[6][1][4],&p_2824->g_1372.f5},{&l_1718[6][1][4],&p_2824->g_1372.f5},{&l_1718[6][1][4],&p_2824->g_1372.f5},{&l_1718[6][1][4],&p_2824->g_1372.f5},{&l_1718[6][1][4],&p_2824->g_1372.f5},{&l_1718[6][1][4],&p_2824->g_1372.f5},{&l_1718[6][1][4],&p_2824->g_1372.f5}},{{&l_1718[6][1][4],&p_2824->g_1372.f5},{&l_1718[6][1][4],&p_2824->g_1372.f5},{&l_1718[6][1][4],&p_2824->g_1372.f5},{&l_1718[6][1][4],&p_2824->g_1372.f5},{&l_1718[6][1][4],&p_2824->g_1372.f5},{&l_1718[6][1][4],&p_2824->g_1372.f5},{&l_1718[6][1][4],&p_2824->g_1372.f5},{&l_1718[6][1][4],&p_2824->g_1372.f5},{&l_1718[6][1][4],&p_2824->g_1372.f5},{&l_1718[6][1][4],&p_2824->g_1372.f5}}};
                    uint8_t **l_1724 = &l_1725[6][4][0];
                    uint8_t ***l_1723 = &l_1724;
                    int i, j, k;
                    (*l_1723) = (void*)0;
                    for (p_2824->g_697.f0 = 0; (p_2824->g_697.f0 <= 3); p_2824->g_697.f0 += 1)
                    { /* block id: 946 */
                        int32_t **l_1737 = &p_2824->g_32;
                        int i, j;
                        (*l_1737) = func_74(l_1721, p_52, &p_2824->g_32, p_52, (safe_add_func_uint8_t_u_u(249UL, ((safe_unary_minus_func_int64_t_s((~(safe_lshift_func_int8_t_s_s(0x05L, ((safe_sub_func_uint8_t_u_u(GROUP_DIVERGE(1, 1), 0x47L)) , l_1718[6][1][4])))))) ^ ((safe_sub_func_uint8_t_u_u((p_2824->g_744[(p_2824->g_697.f0 + 1)][(p_2824->g_1372.f1 + 2)] = (((safe_lshift_func_uint16_t_u_u(1UL, 11)) < l_1721) ^ p_54)), l_1718[6][1][4])) || p_54)))), p_2824);
                    }
                }
                else
                { /* block id: 950 */
                    uint8_t l_1740 = 254UL;
                    (*p_2824->g_1621) ^= (safe_sub_func_int16_t_s_s(l_1721, (0x27L >= l_1740)));
                }
            }
            else
            { /* block id: 953 */
                int32_t *l_1741 = &p_2824->g_1375.f9.f1;
                int32_t *l_1742 = &p_2824->g_1689.f8;
                int32_t *l_1743 = &p_2824->g_33;
                int32_t *l_1744 = &p_2824->g_542[1][1];
                int32_t *l_1745 = &p_2824->g_33;
                int32_t *l_1747 = &p_2824->g_1689.f8;
                int32_t *l_1748 = &p_2824->g_1377[6].f8;
                int32_t *l_1749 = (void*)0;
                int32_t *l_1750 = (void*)0;
                int32_t *l_1751 = (void*)0;
                int32_t *l_1752 = (void*)0;
                int32_t *l_1753 = &p_2824->g_1375.f8;
                int32_t *l_1754 = &p_2824->g_1689.f9.f1;
                int32_t *l_1755 = &p_2824->g_1377[6].f8;
                int32_t *l_1756[6] = {&p_2824->g_1689.f9.f1,&p_2824->g_1689.f8,&p_2824->g_1689.f9.f1,&p_2824->g_1689.f9.f1,&p_2824->g_1689.f8,&p_2824->g_1689.f9.f1};
                int32_t l_1761 = 0x2CBBB6F5L;
                int i;
                ++l_1764;
            }
        }
    }
    if ((atomic_inc(&p_2824->l_atomic_input[23]) == 6))
    { /* block id: 959 */
        int32_t l_1767 = 0x5A870B65L;
        for (l_1767 = (-22); (l_1767 <= 6); l_1767 = safe_add_func_int64_t_s_s(l_1767, 1))
        { /* block id: 962 */
            int32_t *l_1770 = (void*)0;
            int32_t l_1772 = (-5L);
            int32_t *l_1771 = &l_1772;
            int8_t l_1773[6];
            int i;
            for (i = 0; i < 6; i++)
                l_1773[i] = 0x3DL;
            l_1771 = l_1770;
            if (l_1773[0])
            { /* block id: 964 */
                int16_t l_1774 = 0L;
                int32_t l_1775 = 2L;
                uint16_t l_1776 = 1UL;
                uint8_t l_1779 = 1UL;
                int8_t l_1780 = 0x10L;
                l_1776--;
                l_1780 = (FAKE_DIVERGE(p_2824->local_0_offset, get_local_id(0), 10) , l_1779);
                for (l_1775 = 0; (l_1775 < 28); l_1775 = safe_add_func_int8_t_s_s(l_1775, 1))
                { /* block id: 969 */
                    int32_t l_1783 = (-8L);
                    l_1783 |= (l_1772 = 0L);
                }
                for (l_1779 = 0; (l_1779 != 46); ++l_1779)
                { /* block id: 975 */
                    int32_t l_1786 = 0x7CA30FCFL;
                    uint32_t l_1801 = 4294967295UL;
                    for (l_1786 = 0; (l_1786 <= 0); l_1786 += 1)
                    { /* block id: 978 */
                        uint64_t l_1787[2][7] = {{4UL,4UL,4UL,4UL,4UL,4UL,4UL},{4UL,4UL,4UL,4UL,4UL,4UL,4UL}};
                        uint32_t l_1790 = 0x49E4EE14L;
                        int16_t l_1791 = 0x2341L;
                        uint64_t l_1794[5][3] = {{0x1C8370023B360B11L,18446744073709551606UL,18446744073709551610UL},{0x1C8370023B360B11L,18446744073709551606UL,18446744073709551610UL},{0x1C8370023B360B11L,18446744073709551606UL,18446744073709551610UL},{0x1C8370023B360B11L,18446744073709551606UL,18446744073709551610UL},{0x1C8370023B360B11L,18446744073709551606UL,18446744073709551610UL}};
                        uint64_t *l_1793 = &l_1794[4][2];
                        uint64_t **l_1792 = &l_1793;
                        uint64_t **l_1795 = &l_1793;
                        int64_t l_1796 = (-3L);
                        int64_t l_1797[1];
                        uint64_t l_1798 = 0x170401D1303364EEL;
                        int i, j;
                        for (i = 0; i < 1; i++)
                            l_1797[i] = (-8L);
                        --l_1787[0][3];
                        l_1791 |= (l_1772 = (l_1790 , 0x6EDDCC52L));
                        l_1795 = l_1792;
                        --l_1798;
                    }
                    ++l_1801;
                }
            }
            else
            { /* block id: 987 */
                uint64_t l_1804 = 1UL;
                l_1772 = l_1804;
                for (l_1804 = 0; (l_1804 > 38); l_1804++)
                { /* block id: 991 */
                    int32_t l_1807 = 0x604B5E3CL;
                    int32_t l_1809 = 4L;
                    int32_t *l_1808 = &l_1809;
                    int32_t l_1810 = 0x3886DB6EL;
                    int32_t l_1811 = 0x69409F06L;
                    int32_t l_1812 = 1L;
                    int32_t l_1813 = 0L;
                    int8_t l_1814 = 1L;
                    uint32_t l_1815 = 0x38527557L;
                    l_1770 = (l_1807 , l_1808);
                    ++l_1815;
                    (*l_1770) = 5L;
                }
            }
        }
        unsigned int result = 0;
        result += l_1767;
        atomic_add(&p_2824->l_special_values[23], result);
    }
    else
    { /* block id: 998 */
        (1 + 1);
    }
    for (p_2824->g_1376.f0 = 29; (p_2824->g_1376.f0 == 33); p_2824->g_1376.f0 = safe_add_func_uint64_t_u_u(p_2824->g_1376.f0, 1))
    { /* block id: 1003 */
        int32_t l_1820[3];
        int16_t *l_1827 = &p_2824->g_1475.f0;
        int16_t *l_1828[7];
        int8_t l_1847 = 0L;
        int32_t *l_1848 = (void*)0;
        int32_t *l_1870 = (void*)0;
        int32_t *l_1871 = (void*)0;
        int32_t *l_1872 = &p_2824->g_33;
        int32_t *l_1873 = &p_2824->g_1372.f8;
        int32_t l_1874 = (-1L);
        int32_t *l_1875 = &l_1762;
        int32_t *l_1876 = &l_1757;
        int32_t *l_1877 = &l_1757;
        int32_t l_1878 = (-8L);
        int32_t *l_1879[3];
        int64_t l_1885 = 0x77CDB24405C6DFA2L;
        uint16_t l_1888 = 0xDE02L;
        int i;
        for (i = 0; i < 3; i++)
            l_1820[i] = 0x36B0C321L;
        for (i = 0; i < 7; i++)
            l_1828[i] = &p_2824->g_697.f0;
        for (i = 0; i < 3; i++)
            l_1879[i] = &p_2824->g_1377[6].f8;
        if ((l_1820[2] >= 4UL))
        { /* block id: 1004 */
            struct S1 **l_1844 = &p_2824->g_1374[1][0][0];
            int8_t l_1845 = (-5L);
            int32_t **l_1849 = &p_2824->g_32;
            (*p_2824->g_1717) |= ((safe_add_func_int16_t_s_s(((safe_mul_func_int8_t_s_s((safe_mod_func_uint64_t_u_u((((((l_1827 != (*p_2824->g_651)) , ((l_1828[6] = &p_2824->g_98) == l_1829)) , (safe_div_func_int8_t_s_s((l_1829 != (void*)0), ((((((+((safe_rshift_func_int16_t_s_s(((*l_1827) = ((safe_rshift_func_int8_t_s_s((+0x7CL), (safe_add_func_int64_t_s_s((l_1829 != ((safe_mul_func_int8_t_s_s(((((safe_mul_func_int8_t_s_s((safe_div_func_uint64_t_u_u(p_2824->g_1372.f3, p_2824->g_122)), p_52)) , (void*)0) != l_1844) | p_53), (***p_2824->g_583))) , &p_2824->g_122)), p_2824->g_1376.f4)))) != l_1845)), 7)) , 0x0012L)) == p_53) || 1L) | p_54) ^ l_1757) , l_1846)))) | p_53) && p_52), l_1846)), p_53)) || 7UL), p_2824->g_1689.f4)) == l_1847);
            (*l_1849) = l_1848;
        }
        else
        { /* block id: 1009 */
            if ((atomic_inc(&p_2824->l_atomic_input[24]) == 2))
            { /* block id: 1011 */
                int32_t l_1850 = 0x6C7E318BL;
                int32_t *l_1856[7][10] = {{&l_1850,&l_1850,&l_1850,&l_1850,&l_1850,&l_1850,&l_1850,&l_1850,&l_1850,&l_1850},{&l_1850,&l_1850,&l_1850,&l_1850,&l_1850,&l_1850,&l_1850,&l_1850,&l_1850,&l_1850},{&l_1850,&l_1850,&l_1850,&l_1850,&l_1850,&l_1850,&l_1850,&l_1850,&l_1850,&l_1850},{&l_1850,&l_1850,&l_1850,&l_1850,&l_1850,&l_1850,&l_1850,&l_1850,&l_1850,&l_1850},{&l_1850,&l_1850,&l_1850,&l_1850,&l_1850,&l_1850,&l_1850,&l_1850,&l_1850,&l_1850},{&l_1850,&l_1850,&l_1850,&l_1850,&l_1850,&l_1850,&l_1850,&l_1850,&l_1850,&l_1850},{&l_1850,&l_1850,&l_1850,&l_1850,&l_1850,&l_1850,&l_1850,&l_1850,&l_1850,&l_1850}};
                int32_t *l_1857 = &l_1850;
                int32_t l_1858 = (-8L);
                uint8_t l_1859 = 248UL;
                int64_t l_1860 = 1L;
                int i, j;
                for (l_1850 = 21; (l_1850 != (-14)); --l_1850)
                { /* block id: 1014 */
                    uint32_t l_1853 = 0x1AD7BA96L;
                    uint16_t l_1854 = 0x60BEL;
                    int8_t l_1855 = (-6L);
                    l_1854 = l_1853;
                    l_1855 |= 0L;
                }
                l_1857 = l_1856[4][1];
                if ((l_1860 = (l_1858 , l_1859)))
                { /* block id: 1020 */
                    int8_t l_1861 = 0x22L;
                    int16_t l_1862 = (-6L);
                    uint64_t l_1863[5][9] = {{7UL,0x868E0133D4965DA1L,1UL,0x868E0133D4965DA1L,7UL,7UL,0x868E0133D4965DA1L,1UL,0x868E0133D4965DA1L},{7UL,0x868E0133D4965DA1L,1UL,0x868E0133D4965DA1L,7UL,7UL,0x868E0133D4965DA1L,1UL,0x868E0133D4965DA1L},{7UL,0x868E0133D4965DA1L,1UL,0x868E0133D4965DA1L,7UL,7UL,0x868E0133D4965DA1L,1UL,0x868E0133D4965DA1L},{7UL,0x868E0133D4965DA1L,1UL,0x868E0133D4965DA1L,7UL,7UL,0x868E0133D4965DA1L,1UL,0x868E0133D4965DA1L},{7UL,0x868E0133D4965DA1L,1UL,0x868E0133D4965DA1L,7UL,7UL,0x868E0133D4965DA1L,1UL,0x868E0133D4965DA1L}};
                    int32_t l_1864 = (-6L);
                    uint32_t l_1865[5] = {7UL,7UL,7UL,7UL,7UL};
                    int64_t l_1866[1][9][6] = {{{0x37C392AD5889E59FL,(-8L),0L,(-4L),(-8L),(-4L)},{0x37C392AD5889E59FL,(-8L),0L,(-4L),(-8L),(-4L)},{0x37C392AD5889E59FL,(-8L),0L,(-4L),(-8L),(-4L)},{0x37C392AD5889E59FL,(-8L),0L,(-4L),(-8L),(-4L)},{0x37C392AD5889E59FL,(-8L),0L,(-4L),(-8L),(-4L)},{0x37C392AD5889E59FL,(-8L),0L,(-4L),(-8L),(-4L)},{0x37C392AD5889E59FL,(-8L),0L,(-4L),(-8L),(-4L)},{0x37C392AD5889E59FL,(-8L),0L,(-4L),(-8L),(-4L)},{0x37C392AD5889E59FL,(-8L),0L,(-4L),(-8L),(-4L)}}};
                    int i, j, k;
                    l_1863[4][6] &= (l_1861 , l_1862);
                    l_1866[0][4][1] &= (l_1864 , l_1865[0]);
                }
                else
                { /* block id: 1023 */
                    uint16_t l_1867 = 65535UL;
                    uint32_t l_1868 = 4294967293UL;
                    int8_t l_1869 = (-8L);
                    l_1869 = (l_1868 = l_1867);
                }
                unsigned int result = 0;
                result += l_1850;
                result += l_1858;
                result += l_1859;
                result += l_1860;
                atomic_add(&p_2824->l_special_values[24], result);
            }
            else
            { /* block id: 1027 */
                (1 + 1);
            }
        }
        l_1888++;
    }
    return l_1891;
}


/* ------------------------------------------ */
/* 
 * reads : p_2824->g_744 p_2824->g_320 p_2824->g_122 p_2824->g_582 p_2824->g_583 p_2824->g_200 p_2824->g_194 p_2824->g_308 p_2824->g_98 p_2824->g_1299 p_2824->g_33 p_2824->g_541 p_2824->g_719 p_2824->g_172 p_2824->g_542 p_2824->g_140 p_2824->g_563 p_2824->g_323 p_2824->g_32 p_2824->g_3 p_2824->g_97 p_2824->g_108 p_2824->g_697.f0 p_2824->g_215 p_2824->g_1380 p_2824->g_1377.f3 p_2824->g_1372.f9.f0 p_2824->g_193 p_2824->g_1376.f0 p_2824->g_1372.f9.f1 p_2824->g_1372.f0 p_2824->g_111.f0 p_2824->g_570 p_2824->g_1377.f0 p_2824->g_225 p_2824->g_1376.f3 p_2824->g_1372.f7 p_2824->g_212 p_2824->g_1375.f5 p_2824->g_1375.f9.f0 p_2824->g_1475.f0 p_2824->g_1383 p_2824->g_1381 p_2824->g_655 p_2824->g_1387 p_2824->g_1569 p_2824->g_1375.f9.f1 p_2824->g_1372.f1 p_2824->g_1621 p_2824->g_1372.f8 p_2824->g_1375.f7 p_2824->g_1377.f5 p_2824->g_1377.f9.f1 p_2824->g_651 p_2824->g_652 p_2824->g_260 p_2824->g_1688 p_2824->g_1692 p_2824->g_1717
 * writes: p_2824->g_1279 p_2824->g_697.f0 p_2824->g_122 p_2824->g_212 p_2824->g_108 p_2824->g_33 p_2824->g_172 p_2824->g_542 p_2824->g_32 p_2824->g_97 p_2824->g_98 p_2824->g_89 p_2824->g_1299 p_2824->g_744 p_2824->g_140 p_2824->g_308 p_2824->g_1374 p_2824->g_1375.f7 p_2824->g_1380 p_2824->g_1383 p_2824->g_1387 p_2824->g_200 p_2824->g_1376.f8 p_2824->g_260 p_2824->g_1376.f7 p_2824->g_323 p_2824->g_225 p_2824->g_1372.f5 p_2824->g_583 p_2824->g_1372.f0 p_2824->g_1377.f9 p_2824->g_655 p_2824->g_1381 p_2824->g_111.f1 p_2824->g_499 p_2824->g_1375.f9.f0 p_2824->g_582 p_2824->g_1673 p_2824->g_2056.f9
 */
int32_t * func_55(uint16_t  p_56, uint32_t  p_57, struct S3 * p_2824)
{ /* block id: 374 */
    int8_t *****l_1278 = &p_2824->g_582;
    int8_t ******l_1277[8][2][3] = {{{&l_1278,&l_1278,&l_1278},{&l_1278,&l_1278,&l_1278}},{{&l_1278,&l_1278,&l_1278},{&l_1278,&l_1278,&l_1278}},{{&l_1278,&l_1278,&l_1278},{&l_1278,&l_1278,&l_1278}},{{&l_1278,&l_1278,&l_1278},{&l_1278,&l_1278,&l_1278}},{{&l_1278,&l_1278,&l_1278},{&l_1278,&l_1278,&l_1278}},{{&l_1278,&l_1278,&l_1278},{&l_1278,&l_1278,&l_1278}},{{&l_1278,&l_1278,&l_1278},{&l_1278,&l_1278,&l_1278}},{{&l_1278,&l_1278,&l_1278},{&l_1278,&l_1278,&l_1278}}};
    int32_t l_1283 = 0L;
    int16_t *l_1284 = &p_2824->g_697.f0;
    uint64_t *l_1295 = &p_2824->g_212[4][0][2];
    int32_t l_1296[9][3][9] = {{{(-5L),0x53DDAD25L,0x020B9D54L,(-1L),0x7E7BDCCBL,2L,1L,(-1L),(-1L)},{(-5L),0x53DDAD25L,0x020B9D54L,(-1L),0x7E7BDCCBL,2L,1L,(-1L),(-1L)},{(-5L),0x53DDAD25L,0x020B9D54L,(-1L),0x7E7BDCCBL,2L,1L,(-1L),(-1L)}},{{(-5L),0x53DDAD25L,0x020B9D54L,(-1L),0x7E7BDCCBL,2L,1L,(-1L),(-1L)},{(-5L),0x53DDAD25L,0x020B9D54L,(-1L),0x7E7BDCCBL,2L,1L,(-1L),(-1L)},{(-5L),0x53DDAD25L,0x020B9D54L,(-1L),0x7E7BDCCBL,2L,1L,(-1L),(-1L)}},{{(-5L),0x53DDAD25L,0x020B9D54L,(-1L),0x7E7BDCCBL,2L,1L,(-1L),(-1L)},{(-5L),0x53DDAD25L,0x020B9D54L,(-1L),0x7E7BDCCBL,2L,1L,(-1L),(-1L)},{(-5L),0x53DDAD25L,0x020B9D54L,(-1L),0x7E7BDCCBL,2L,1L,(-1L),(-1L)}},{{(-5L),0x53DDAD25L,0x020B9D54L,(-1L),0x7E7BDCCBL,2L,1L,(-1L),(-1L)},{(-5L),0x53DDAD25L,0x020B9D54L,(-1L),0x7E7BDCCBL,2L,1L,(-1L),(-1L)},{(-5L),0x53DDAD25L,0x020B9D54L,(-1L),0x7E7BDCCBL,2L,1L,(-1L),(-1L)}},{{(-5L),0x53DDAD25L,0x020B9D54L,(-1L),0x7E7BDCCBL,2L,1L,(-1L),(-1L)},{(-5L),0x53DDAD25L,0x020B9D54L,(-1L),0x7E7BDCCBL,2L,1L,(-1L),(-1L)},{(-5L),0x53DDAD25L,0x020B9D54L,(-1L),0x7E7BDCCBL,2L,1L,(-1L),(-1L)}},{{(-5L),0x53DDAD25L,0x020B9D54L,(-1L),0x7E7BDCCBL,2L,1L,(-1L),(-1L)},{(-5L),0x53DDAD25L,0x020B9D54L,(-1L),0x7E7BDCCBL,2L,1L,(-1L),(-1L)},{(-5L),0x53DDAD25L,0x020B9D54L,(-1L),0x7E7BDCCBL,2L,1L,(-1L),(-1L)}},{{(-5L),0x53DDAD25L,0x020B9D54L,(-1L),0x7E7BDCCBL,2L,1L,(-1L),(-1L)},{(-5L),0x53DDAD25L,0x020B9D54L,(-1L),0x7E7BDCCBL,2L,1L,(-1L),(-1L)},{(-5L),0x53DDAD25L,0x020B9D54L,(-1L),0x7E7BDCCBL,2L,1L,(-1L),(-1L)}},{{(-5L),0x53DDAD25L,0x020B9D54L,(-1L),0x7E7BDCCBL,2L,1L,(-1L),(-1L)},{(-5L),0x53DDAD25L,0x020B9D54L,(-1L),0x7E7BDCCBL,2L,1L,(-1L),(-1L)},{(-5L),0x53DDAD25L,0x020B9D54L,(-1L),0x7E7BDCCBL,2L,1L,(-1L),(-1L)}},{{(-5L),0x53DDAD25L,0x020B9D54L,(-1L),0x7E7BDCCBL,2L,1L,(-1L),(-1L)},{(-5L),0x53DDAD25L,0x020B9D54L,(-1L),0x7E7BDCCBL,2L,1L,(-1L),(-1L)},{(-5L),0x53DDAD25L,0x020B9D54L,(-1L),0x7E7BDCCBL,2L,1L,(-1L),(-1L)}}};
    struct S1 *l_1297 = (void*)0;
    int8_t *****l_1298 = &p_2824->g_582;
    uint32_t l_1330 = 0x4438A00CL;
    int32_t *l_1344 = &p_2824->g_260;
    int32_t **l_1343[9] = {&l_1344,&l_1344,&l_1344,&l_1344,&l_1344,&l_1344,&l_1344,&l_1344,&l_1344};
    uint32_t l_1491 = 0xAC921D3DL;
    int64_t l_1494 = 0L;
    uint32_t l_1511 = 0x91DA8A73L;
    int32_t l_1538 = 0x60773BF8L;
    struct S0 l_1539 = {7L,0x22156541L};
    int32_t *l_1564[9] = {&l_1296[7][1][6],(void*)0,&l_1296[7][1][6],&l_1296[7][1][6],(void*)0,&l_1296[7][1][6],&l_1296[7][1][6],(void*)0,&l_1296[7][1][6]};
    int i, j, k;
    if ((atomic_inc(&p_2824->g_atomic_input[54 * get_linear_group_id() + 33]) == 7))
    { /* block id: 376 */
        uint32_t l_832 = 0x1DDA29BEL;
        uint8_t l_833 = 4UL;
        uint8_t l_1147[8][7][3] = {{{251UL,0x34L,255UL},{251UL,0x34L,255UL},{251UL,0x34L,255UL},{251UL,0x34L,255UL},{251UL,0x34L,255UL},{251UL,0x34L,255UL},{251UL,0x34L,255UL}},{{251UL,0x34L,255UL},{251UL,0x34L,255UL},{251UL,0x34L,255UL},{251UL,0x34L,255UL},{251UL,0x34L,255UL},{251UL,0x34L,255UL},{251UL,0x34L,255UL}},{{251UL,0x34L,255UL},{251UL,0x34L,255UL},{251UL,0x34L,255UL},{251UL,0x34L,255UL},{251UL,0x34L,255UL},{251UL,0x34L,255UL},{251UL,0x34L,255UL}},{{251UL,0x34L,255UL},{251UL,0x34L,255UL},{251UL,0x34L,255UL},{251UL,0x34L,255UL},{251UL,0x34L,255UL},{251UL,0x34L,255UL},{251UL,0x34L,255UL}},{{251UL,0x34L,255UL},{251UL,0x34L,255UL},{251UL,0x34L,255UL},{251UL,0x34L,255UL},{251UL,0x34L,255UL},{251UL,0x34L,255UL},{251UL,0x34L,255UL}},{{251UL,0x34L,255UL},{251UL,0x34L,255UL},{251UL,0x34L,255UL},{251UL,0x34L,255UL},{251UL,0x34L,255UL},{251UL,0x34L,255UL},{251UL,0x34L,255UL}},{{251UL,0x34L,255UL},{251UL,0x34L,255UL},{251UL,0x34L,255UL},{251UL,0x34L,255UL},{251UL,0x34L,255UL},{251UL,0x34L,255UL},{251UL,0x34L,255UL}},{{251UL,0x34L,255UL},{251UL,0x34L,255UL},{251UL,0x34L,255UL},{251UL,0x34L,255UL},{251UL,0x34L,255UL},{251UL,0x34L,255UL},{251UL,0x34L,255UL}}};
        int64_t l_1148 = 0x0A013A46BDDE633FL;
        int8_t l_1149 = 0x1BL;
        int i, j, k;
        if ((l_832 , l_833))
        { /* block id: 377 */
            uint64_t l_834 = 0xBE222C99E0835611L;
            uint32_t l_1092 = 0x6ECD92FBL;
            struct S0 l_1093 = {0x2F93EC5E93985DABL,5L};
            struct S0 l_1094 = {0L,0x1BB7819DL};
            uint32_t l_1095 = 0xC643213FL;
            int32_t l_1096 = 1L;
            uint32_t l_1097 = 7UL;
            int8_t l_1098 = 0x72L;
            struct S0 l_1099[5] = {{0x4E9C1E335A5FA0EBL,0x6D0C2085L},{0x4E9C1E335A5FA0EBL,0x6D0C2085L},{0x4E9C1E335A5FA0EBL,0x6D0C2085L},{0x4E9C1E335A5FA0EBL,0x6D0C2085L},{0x4E9C1E335A5FA0EBL,0x6D0C2085L}};
            struct S0 l_1100 = {0x4C25C7E638D38BB5L,-1L};
            int i;
            if (l_834)
            { /* block id: 378 */
                int32_t l_835 = (-1L);
                for (l_835 = 0; (l_835 != (-12)); --l_835)
                { /* block id: 381 */
                    int32_t l_838 = 0x192DDCADL;
                    uint16_t l_839 = 0x4C33L;
                    if ((l_839 &= l_838))
                    { /* block id: 383 */
                        int32_t l_840 = (-8L);
                        int32_t l_842[1][1][1];
                        int32_t *l_841 = &l_842[0][0][0];
                        int32_t *l_843[2];
                        int32_t *l_844 = (void*)0;
                        struct S0 l_845 = {0x6193F1A29C40DDD4L,6L};
                        struct S0 l_846 = {0x1A45BA3809E04035L,-6L};
                        int i, j, k;
                        for (i = 0; i < 1; i++)
                        {
                            for (j = 0; j < 1; j++)
                            {
                                for (k = 0; k < 1; k++)
                                    l_842[i][j][k] = 0x39F798BDL;
                            }
                        }
                        for (i = 0; i < 2; i++)
                            l_843[i] = &l_842[0][0][0];
                        l_844 = (l_840 , (l_843[0] = l_841));
                        l_846 = l_845;
                    }
                    else
                    { /* block id: 387 */
                        int32_t l_848 = 0x22025975L;
                        int32_t *l_847[10][10][2] = {{{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0}},{{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0}},{{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0}},{{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0}},{{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0}},{{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0}},{{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0}},{{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0}},{{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0}},{{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0},{&l_848,(void*)0}}};
                        int16_t l_849 = 0L;
                        int i, j, k;
                        l_847[5][9][0] = (void*)0;
                        l_838 &= l_849;
                    }
                }
            }
            else
            { /* block id: 392 */
                int8_t l_850 = 0x5FL;
                int16_t l_851[3][7] = {{0L,(-7L),0x0640L,0x6EB1L,(-7L),0x6EB1L,0x0640L},{0L,(-7L),0x0640L,0x6EB1L,(-7L),0x6EB1L,0x0640L},{0L,(-7L),0x0640L,0x6EB1L,(-7L),0x6EB1L,0x0640L}};
                uint32_t l_954 = 9UL;
                int i, j;
                if ((l_851[1][5] = l_850))
                { /* block id: 394 */
                    int32_t l_852[4] = {(-1L),(-1L),(-1L),(-1L)};
                    int i;
                    for (l_852[0] = 1; (l_852[0] >= 0); l_852[0] -= 1)
                    { /* block id: 397 */
                        uint32_t l_853 = 4294967287UL;
                        uint32_t l_854 = 1UL;
                        uint64_t l_855 = 0x85B4FAB793737C4AL;
                        uint8_t l_856 = 0xD9L;
                        int64_t l_857 = (-1L);
                        int32_t l_859 = 1L;
                        int32_t *l_858 = &l_859;
                        uint32_t l_860 = 0x37FA920EL;
                        l_856 = (l_855 &= (l_853 , l_854));
                        l_857 = 1L;
                        l_858 = (void*)0;
                        l_860--;
                    }
                    for (l_852[0] = 0; (l_852[0] <= 1); l_852[0] += 1)
                    { /* block id: 406 */
                        int32_t l_863 = (-8L);
                        uint16_t l_864 = 65526UL;
                        int8_t l_867 = (-6L);
                        uint8_t l_868 = 0xFAL;
                        uint8_t l_871[9][6] = {{0x7BL,0x7BL,0x7BL,0x7BL,0x7BL,0x7BL},{0x7BL,0x7BL,0x7BL,0x7BL,0x7BL,0x7BL},{0x7BL,0x7BL,0x7BL,0x7BL,0x7BL,0x7BL},{0x7BL,0x7BL,0x7BL,0x7BL,0x7BL,0x7BL},{0x7BL,0x7BL,0x7BL,0x7BL,0x7BL,0x7BL},{0x7BL,0x7BL,0x7BL,0x7BL,0x7BL,0x7BL},{0x7BL,0x7BL,0x7BL,0x7BL,0x7BL,0x7BL},{0x7BL,0x7BL,0x7BL,0x7BL,0x7BL,0x7BL},{0x7BL,0x7BL,0x7BL,0x7BL,0x7BL,0x7BL}};
                        int32_t l_872 = 0x5D8BB585L;
                        uint8_t l_873 = 0x64L;
                        struct S0 l_874 = {0x5ADACB4E844F01DDL,0x3C0D094FL};
                        struct S0 l_875[8] = {{0x6DA6527487389CE7L,0x0F93E978L},{0x6DA6527487389CE7L,0x0F93E978L},{0x6DA6527487389CE7L,0x0F93E978L},{0x6DA6527487389CE7L,0x0F93E978L},{0x6DA6527487389CE7L,0x0F93E978L},{0x6DA6527487389CE7L,0x0F93E978L},{0x6DA6527487389CE7L,0x0F93E978L},{0x6DA6527487389CE7L,0x0F93E978L}};
                        int i, j;
                        --l_864;
                        ++l_868;
                        l_872 = (l_873 = ((l_871[6][1] , l_872) , 0x4623D8F4L));
                        l_875[3] = (l_874 = l_874);
                    }
                    for (l_852[0] = 2; (l_852[0] >= 0); l_852[0] -= 1)
                    { /* block id: 416 */
                        uint32_t l_876 = 0xD7BACAFBL;
                        int32_t l_877 = (-1L);
                        uint32_t l_878 = 0xCDFAD703L;
                        int16_t l_879 = 0x29B5L;
                        uint64_t l_880[5];
                        int8_t l_881[9];
                        uint16_t l_882 = 2UL;
                        int32_t *l_885 = &l_877;
                        int32_t *l_886 = &l_877;
                        int i;
                        for (i = 0; i < 5; i++)
                            l_880[i] = 0xBF229F28851245FAL;
                        for (i = 0; i < 9; i++)
                            l_881[i] = (-4L);
                        l_877 &= l_876;
                        l_881[4] = (GROUP_DIVERGE(0, 1) , ((l_879 = l_878) , (l_880[3] = (-1L))));
                        --l_882;
                        l_886 = l_885;
                    }
                }
                else
                { /* block id: 424 */
                    uint8_t l_887 = 0x73L;
                    int32_t *l_906 = (void*)0;
                    uint64_t l_907 = 0x25C4C4BD93F59ACCL;
                    uint64_t l_927[2];
                    uint64_t l_928 = 18446744073709551615UL;
                    int8_t l_929[4][7] = {{(-1L),0L,(-1L),(-1L),0L,(-1L),(-1L)},{(-1L),0L,(-1L),(-1L),0L,(-1L),(-1L)},{(-1L),0L,(-1L),(-1L),0L,(-1L),(-1L)},{(-1L),0L,(-1L),(-1L),0L,(-1L),(-1L)}};
                    int32_t l_930 = 2L;
                    uint16_t l_931 = 0xA80CL;
                    uint64_t l_932 = 18446744073709551607UL;
                    int i, j;
                    for (i = 0; i < 2; i++)
                        l_927[i] = 18446744073709551611UL;
                    if (l_887)
                    { /* block id: 425 */
                        uint32_t l_888 = 0x98DFE927L;
                        int32_t l_889 = 8L;
                        int32_t l_890 = (-5L);
                        int32_t l_891 = (-1L);
                        int16_t l_892[1];
                        int64_t l_893 = (-1L);
                        int32_t l_894[6] = {1L,0L,1L,1L,0L,1L};
                        uint8_t l_895 = 5UL;
                        int64_t l_898 = (-8L);
                        uint16_t l_899 = 65535UL;
                        uint32_t l_900 = 4294967295UL;
                        int i;
                        for (i = 0; i < 1; i++)
                            l_892[i] = (-1L);
                        l_889 |= l_888;
                        ++l_895;
                        l_900 = (l_899 = l_898);
                    }
                    else
                    { /* block id: 430 */
                        struct S0 l_901[6][7][3] = {{{{1L,0x27A85A4FL},{0x25B5C0E32A8E8A63L,0x7E242341L},{0x08698C7A62696A15L,0x7B2657ECL}},{{1L,0x27A85A4FL},{0x25B5C0E32A8E8A63L,0x7E242341L},{0x08698C7A62696A15L,0x7B2657ECL}},{{1L,0x27A85A4FL},{0x25B5C0E32A8E8A63L,0x7E242341L},{0x08698C7A62696A15L,0x7B2657ECL}},{{1L,0x27A85A4FL},{0x25B5C0E32A8E8A63L,0x7E242341L},{0x08698C7A62696A15L,0x7B2657ECL}},{{1L,0x27A85A4FL},{0x25B5C0E32A8E8A63L,0x7E242341L},{0x08698C7A62696A15L,0x7B2657ECL}},{{1L,0x27A85A4FL},{0x25B5C0E32A8E8A63L,0x7E242341L},{0x08698C7A62696A15L,0x7B2657ECL}},{{1L,0x27A85A4FL},{0x25B5C0E32A8E8A63L,0x7E242341L},{0x08698C7A62696A15L,0x7B2657ECL}}},{{{1L,0x27A85A4FL},{0x25B5C0E32A8E8A63L,0x7E242341L},{0x08698C7A62696A15L,0x7B2657ECL}},{{1L,0x27A85A4FL},{0x25B5C0E32A8E8A63L,0x7E242341L},{0x08698C7A62696A15L,0x7B2657ECL}},{{1L,0x27A85A4FL},{0x25B5C0E32A8E8A63L,0x7E242341L},{0x08698C7A62696A15L,0x7B2657ECL}},{{1L,0x27A85A4FL},{0x25B5C0E32A8E8A63L,0x7E242341L},{0x08698C7A62696A15L,0x7B2657ECL}},{{1L,0x27A85A4FL},{0x25B5C0E32A8E8A63L,0x7E242341L},{0x08698C7A62696A15L,0x7B2657ECL}},{{1L,0x27A85A4FL},{0x25B5C0E32A8E8A63L,0x7E242341L},{0x08698C7A62696A15L,0x7B2657ECL}},{{1L,0x27A85A4FL},{0x25B5C0E32A8E8A63L,0x7E242341L},{0x08698C7A62696A15L,0x7B2657ECL}}},{{{1L,0x27A85A4FL},{0x25B5C0E32A8E8A63L,0x7E242341L},{0x08698C7A62696A15L,0x7B2657ECL}},{{1L,0x27A85A4FL},{0x25B5C0E32A8E8A63L,0x7E242341L},{0x08698C7A62696A15L,0x7B2657ECL}},{{1L,0x27A85A4FL},{0x25B5C0E32A8E8A63L,0x7E242341L},{0x08698C7A62696A15L,0x7B2657ECL}},{{1L,0x27A85A4FL},{0x25B5C0E32A8E8A63L,0x7E242341L},{0x08698C7A62696A15L,0x7B2657ECL}},{{1L,0x27A85A4FL},{0x25B5C0E32A8E8A63L,0x7E242341L},{0x08698C7A62696A15L,0x7B2657ECL}},{{1L,0x27A85A4FL},{0x25B5C0E32A8E8A63L,0x7E242341L},{0x08698C7A62696A15L,0x7B2657ECL}},{{1L,0x27A85A4FL},{0x25B5C0E32A8E8A63L,0x7E242341L},{0x08698C7A62696A15L,0x7B2657ECL}}},{{{1L,0x27A85A4FL},{0x25B5C0E32A8E8A63L,0x7E242341L},{0x08698C7A62696A15L,0x7B2657ECL}},{{1L,0x27A85A4FL},{0x25B5C0E32A8E8A63L,0x7E242341L},{0x08698C7A62696A15L,0x7B2657ECL}},{{1L,0x27A85A4FL},{0x25B5C0E32A8E8A63L,0x7E242341L},{0x08698C7A62696A15L,0x7B2657ECL}},{{1L,0x27A85A4FL},{0x25B5C0E32A8E8A63L,0x7E242341L},{0x08698C7A62696A15L,0x7B2657ECL}},{{1L,0x27A85A4FL},{0x25B5C0E32A8E8A63L,0x7E242341L},{0x08698C7A62696A15L,0x7B2657ECL}},{{1L,0x27A85A4FL},{0x25B5C0E32A8E8A63L,0x7E242341L},{0x08698C7A62696A15L,0x7B2657ECL}},{{1L,0x27A85A4FL},{0x25B5C0E32A8E8A63L,0x7E242341L},{0x08698C7A62696A15L,0x7B2657ECL}}},{{{1L,0x27A85A4FL},{0x25B5C0E32A8E8A63L,0x7E242341L},{0x08698C7A62696A15L,0x7B2657ECL}},{{1L,0x27A85A4FL},{0x25B5C0E32A8E8A63L,0x7E242341L},{0x08698C7A62696A15L,0x7B2657ECL}},{{1L,0x27A85A4FL},{0x25B5C0E32A8E8A63L,0x7E242341L},{0x08698C7A62696A15L,0x7B2657ECL}},{{1L,0x27A85A4FL},{0x25B5C0E32A8E8A63L,0x7E242341L},{0x08698C7A62696A15L,0x7B2657ECL}},{{1L,0x27A85A4FL},{0x25B5C0E32A8E8A63L,0x7E242341L},{0x08698C7A62696A15L,0x7B2657ECL}},{{1L,0x27A85A4FL},{0x25B5C0E32A8E8A63L,0x7E242341L},{0x08698C7A62696A15L,0x7B2657ECL}},{{1L,0x27A85A4FL},{0x25B5C0E32A8E8A63L,0x7E242341L},{0x08698C7A62696A15L,0x7B2657ECL}}},{{{1L,0x27A85A4FL},{0x25B5C0E32A8E8A63L,0x7E242341L},{0x08698C7A62696A15L,0x7B2657ECL}},{{1L,0x27A85A4FL},{0x25B5C0E32A8E8A63L,0x7E242341L},{0x08698C7A62696A15L,0x7B2657ECL}},{{1L,0x27A85A4FL},{0x25B5C0E32A8E8A63L,0x7E242341L},{0x08698C7A62696A15L,0x7B2657ECL}},{{1L,0x27A85A4FL},{0x25B5C0E32A8E8A63L,0x7E242341L},{0x08698C7A62696A15L,0x7B2657ECL}},{{1L,0x27A85A4FL},{0x25B5C0E32A8E8A63L,0x7E242341L},{0x08698C7A62696A15L,0x7B2657ECL}},{{1L,0x27A85A4FL},{0x25B5C0E32A8E8A63L,0x7E242341L},{0x08698C7A62696A15L,0x7B2657ECL}},{{1L,0x27A85A4FL},{0x25B5C0E32A8E8A63L,0x7E242341L},{0x08698C7A62696A15L,0x7B2657ECL}}}};
                        struct S0 l_902 = {1L,5L};
                        int64_t l_903 = (-1L);
                        int32_t *l_904 = &l_901[3][6][0].f1;
                        int32_t *l_905 = &l_902.f1;
                        int i, j, k;
                        l_902 = l_901[3][6][0];
                        l_902.f1 &= l_903;
                        l_905 = l_904;
                    }
                    l_906 = (void*)0;
                    if (l_907)
                    { /* block id: 436 */
                        uint8_t l_908[10][5][2] = {{{6UL,0x0AL},{6UL,0x0AL},{6UL,0x0AL},{6UL,0x0AL},{6UL,0x0AL}},{{6UL,0x0AL},{6UL,0x0AL},{6UL,0x0AL},{6UL,0x0AL},{6UL,0x0AL}},{{6UL,0x0AL},{6UL,0x0AL},{6UL,0x0AL},{6UL,0x0AL},{6UL,0x0AL}},{{6UL,0x0AL},{6UL,0x0AL},{6UL,0x0AL},{6UL,0x0AL},{6UL,0x0AL}},{{6UL,0x0AL},{6UL,0x0AL},{6UL,0x0AL},{6UL,0x0AL},{6UL,0x0AL}},{{6UL,0x0AL},{6UL,0x0AL},{6UL,0x0AL},{6UL,0x0AL},{6UL,0x0AL}},{{6UL,0x0AL},{6UL,0x0AL},{6UL,0x0AL},{6UL,0x0AL},{6UL,0x0AL}},{{6UL,0x0AL},{6UL,0x0AL},{6UL,0x0AL},{6UL,0x0AL},{6UL,0x0AL}},{{6UL,0x0AL},{6UL,0x0AL},{6UL,0x0AL},{6UL,0x0AL},{6UL,0x0AL}},{{6UL,0x0AL},{6UL,0x0AL},{6UL,0x0AL},{6UL,0x0AL},{6UL,0x0AL}}};
                        uint16_t l_911[8][1] = {{8UL},{8UL},{8UL},{8UL},{8UL},{8UL},{8UL},{8UL}};
                        int32_t l_915 = (-1L);
                        int32_t *l_914 = &l_915;
                        int i, j, k;
                        l_908[7][1][1]++;
                        l_911[5][0]--;
                        l_914 = l_914;
                    }
                    else
                    { /* block id: 440 */
                        int16_t l_916[8][6][5] = {{{(-1L),0L,0L,(-9L),0x2706L},{(-1L),0L,0L,(-9L),0x2706L},{(-1L),0L,0L,(-9L),0x2706L},{(-1L),0L,0L,(-9L),0x2706L},{(-1L),0L,0L,(-9L),0x2706L},{(-1L),0L,0L,(-9L),0x2706L}},{{(-1L),0L,0L,(-9L),0x2706L},{(-1L),0L,0L,(-9L),0x2706L},{(-1L),0L,0L,(-9L),0x2706L},{(-1L),0L,0L,(-9L),0x2706L},{(-1L),0L,0L,(-9L),0x2706L},{(-1L),0L,0L,(-9L),0x2706L}},{{(-1L),0L,0L,(-9L),0x2706L},{(-1L),0L,0L,(-9L),0x2706L},{(-1L),0L,0L,(-9L),0x2706L},{(-1L),0L,0L,(-9L),0x2706L},{(-1L),0L,0L,(-9L),0x2706L},{(-1L),0L,0L,(-9L),0x2706L}},{{(-1L),0L,0L,(-9L),0x2706L},{(-1L),0L,0L,(-9L),0x2706L},{(-1L),0L,0L,(-9L),0x2706L},{(-1L),0L,0L,(-9L),0x2706L},{(-1L),0L,0L,(-9L),0x2706L},{(-1L),0L,0L,(-9L),0x2706L}},{{(-1L),0L,0L,(-9L),0x2706L},{(-1L),0L,0L,(-9L),0x2706L},{(-1L),0L,0L,(-9L),0x2706L},{(-1L),0L,0L,(-9L),0x2706L},{(-1L),0L,0L,(-9L),0x2706L},{(-1L),0L,0L,(-9L),0x2706L}},{{(-1L),0L,0L,(-9L),0x2706L},{(-1L),0L,0L,(-9L),0x2706L},{(-1L),0L,0L,(-9L),0x2706L},{(-1L),0L,0L,(-9L),0x2706L},{(-1L),0L,0L,(-9L),0x2706L},{(-1L),0L,0L,(-9L),0x2706L}},{{(-1L),0L,0L,(-9L),0x2706L},{(-1L),0L,0L,(-9L),0x2706L},{(-1L),0L,0L,(-9L),0x2706L},{(-1L),0L,0L,(-9L),0x2706L},{(-1L),0L,0L,(-9L),0x2706L},{(-1L),0L,0L,(-9L),0x2706L}},{{(-1L),0L,0L,(-9L),0x2706L},{(-1L),0L,0L,(-9L),0x2706L},{(-1L),0L,0L,(-9L),0x2706L},{(-1L),0L,0L,(-9L),0x2706L},{(-1L),0L,0L,(-9L),0x2706L},{(-1L),0L,0L,(-9L),0x2706L}}};
                        int8_t l_917 = 7L;
                        int32_t l_918 = 0x0430D927L;
                        uint8_t l_919[3];
                        int16_t l_922[1][5][1] = {{{0x0863L},{0x0863L},{0x0863L},{0x0863L},{0x0863L}}};
                        int16_t l_923 = 0x213BL;
                        int16_t l_924 = 1L;
                        int16_t l_925 = 2L;
                        uint8_t l_926 = 0xCAL;
                        int i, j, k;
                        for (i = 0; i < 3; i++)
                            l_919[i] = 0x21L;
                        l_918 &= (l_917 = l_916[3][4][4]);
                        l_919[1]++;
                        l_926 ^= (l_925 |= ((l_923 = l_922[0][4][0]) , l_924));
                    }
                    if ((l_932 |= (l_927[0] , (l_931 = (l_930 ^= (l_929[0][1] = l_928))))))
                    { /* block id: 452 */
                        uint64_t l_933 = 0UL;
                        uint8_t l_934 = 6UL;
                        uint32_t l_935 = 1UL;
                        int8_t l_936 = 8L;
                        int32_t l_937 = 0x2589C000L;
                        uint16_t l_938[9];
                        int8_t l_939 = 0x2AL;
                        uint8_t l_940[7];
                        int64_t l_941[7] = {0x64044F3F24A344E6L,0x64044F3F24A344E6L,0x64044F3F24A344E6L,0x64044F3F24A344E6L,0x64044F3F24A344E6L,0x64044F3F24A344E6L,0x64044F3F24A344E6L};
                        uint64_t l_942 = 0xEA3B6E20465FB2E9L;
                        uint64_t l_943 = 1UL;
                        int32_t l_944[2];
                        int32_t l_945[4] = {0L,0L,0L,0L};
                        int16_t l_946 = 0L;
                        uint32_t l_947 = 4294967290UL;
                        int16_t l_948 = 0x1C7BL;
                        int8_t l_949 = 0L;
                        int i;
                        for (i = 0; i < 9; i++)
                            l_938[i] = 0x09C6L;
                        for (i = 0; i < 7; i++)
                            l_940[i] = 0xBCL;
                        for (i = 0; i < 2; i++)
                            l_944[i] = (-4L);
                        l_933 = 0x79C0DC31L;
                        l_937 = (l_936 = (l_934 , l_935));
                        l_947 |= ((l_945[2] = ((l_938[0] , ((l_939 = 0UL) , (l_943 = ((l_850 = (l_940[4] , l_941[5])) , l_942)))) , l_944[0])) , l_946);
                        l_949 |= l_948;
                    }
                    else
                    { /* block id: 462 */
                        uint8_t l_950 = 246UL;
                        uint16_t l_951[8];
                        int i;
                        for (i = 0; i < 8; i++)
                            l_951[i] = 65535UL;
                        l_950 = 0L;
                        ++l_951[3];
                    }
                }
                if (l_954)
                { /* block id: 467 */
                    int8_t l_955 = 0x0BL;
                    struct S0 l_956 = {-2L,0x3BB60D36L};
                    struct S0 l_957 = {0x74D13427715DB544L,-9L};
                    struct S0 l_958 = {0x31DE208F18068CE4L,0x35A3509DL};
                    uint8_t l_959 = 0xEEL;
                    int32_t l_960[4][10][6] = {{{0x716DF324L,2L,(-4L),(-5L),1L,(-5L)},{0x716DF324L,2L,(-4L),(-5L),1L,(-5L)},{0x716DF324L,2L,(-4L),(-5L),1L,(-5L)},{0x716DF324L,2L,(-4L),(-5L),1L,(-5L)},{0x716DF324L,2L,(-4L),(-5L),1L,(-5L)},{0x716DF324L,2L,(-4L),(-5L),1L,(-5L)},{0x716DF324L,2L,(-4L),(-5L),1L,(-5L)},{0x716DF324L,2L,(-4L),(-5L),1L,(-5L)},{0x716DF324L,2L,(-4L),(-5L),1L,(-5L)},{0x716DF324L,2L,(-4L),(-5L),1L,(-5L)}},{{0x716DF324L,2L,(-4L),(-5L),1L,(-5L)},{0x716DF324L,2L,(-4L),(-5L),1L,(-5L)},{0x716DF324L,2L,(-4L),(-5L),1L,(-5L)},{0x716DF324L,2L,(-4L),(-5L),1L,(-5L)},{0x716DF324L,2L,(-4L),(-5L),1L,(-5L)},{0x716DF324L,2L,(-4L),(-5L),1L,(-5L)},{0x716DF324L,2L,(-4L),(-5L),1L,(-5L)},{0x716DF324L,2L,(-4L),(-5L),1L,(-5L)},{0x716DF324L,2L,(-4L),(-5L),1L,(-5L)},{0x716DF324L,2L,(-4L),(-5L),1L,(-5L)}},{{0x716DF324L,2L,(-4L),(-5L),1L,(-5L)},{0x716DF324L,2L,(-4L),(-5L),1L,(-5L)},{0x716DF324L,2L,(-4L),(-5L),1L,(-5L)},{0x716DF324L,2L,(-4L),(-5L),1L,(-5L)},{0x716DF324L,2L,(-4L),(-5L),1L,(-5L)},{0x716DF324L,2L,(-4L),(-5L),1L,(-5L)},{0x716DF324L,2L,(-4L),(-5L),1L,(-5L)},{0x716DF324L,2L,(-4L),(-5L),1L,(-5L)},{0x716DF324L,2L,(-4L),(-5L),1L,(-5L)},{0x716DF324L,2L,(-4L),(-5L),1L,(-5L)}},{{0x716DF324L,2L,(-4L),(-5L),1L,(-5L)},{0x716DF324L,2L,(-4L),(-5L),1L,(-5L)},{0x716DF324L,2L,(-4L),(-5L),1L,(-5L)},{0x716DF324L,2L,(-4L),(-5L),1L,(-5L)},{0x716DF324L,2L,(-4L),(-5L),1L,(-5L)},{0x716DF324L,2L,(-4L),(-5L),1L,(-5L)},{0x716DF324L,2L,(-4L),(-5L),1L,(-5L)},{0x716DF324L,2L,(-4L),(-5L),1L,(-5L)},{0x716DF324L,2L,(-4L),(-5L),1L,(-5L)},{0x716DF324L,2L,(-4L),(-5L),1L,(-5L)}}};
                    uint16_t l_961 = 0x7762L;
                    uint64_t l_962[8][7][1] = {{{0x6F2B41AA2D941FCAL},{0x6F2B41AA2D941FCAL},{0x6F2B41AA2D941FCAL},{0x6F2B41AA2D941FCAL},{0x6F2B41AA2D941FCAL},{0x6F2B41AA2D941FCAL},{0x6F2B41AA2D941FCAL}},{{0x6F2B41AA2D941FCAL},{0x6F2B41AA2D941FCAL},{0x6F2B41AA2D941FCAL},{0x6F2B41AA2D941FCAL},{0x6F2B41AA2D941FCAL},{0x6F2B41AA2D941FCAL},{0x6F2B41AA2D941FCAL}},{{0x6F2B41AA2D941FCAL},{0x6F2B41AA2D941FCAL},{0x6F2B41AA2D941FCAL},{0x6F2B41AA2D941FCAL},{0x6F2B41AA2D941FCAL},{0x6F2B41AA2D941FCAL},{0x6F2B41AA2D941FCAL}},{{0x6F2B41AA2D941FCAL},{0x6F2B41AA2D941FCAL},{0x6F2B41AA2D941FCAL},{0x6F2B41AA2D941FCAL},{0x6F2B41AA2D941FCAL},{0x6F2B41AA2D941FCAL},{0x6F2B41AA2D941FCAL}},{{0x6F2B41AA2D941FCAL},{0x6F2B41AA2D941FCAL},{0x6F2B41AA2D941FCAL},{0x6F2B41AA2D941FCAL},{0x6F2B41AA2D941FCAL},{0x6F2B41AA2D941FCAL},{0x6F2B41AA2D941FCAL}},{{0x6F2B41AA2D941FCAL},{0x6F2B41AA2D941FCAL},{0x6F2B41AA2D941FCAL},{0x6F2B41AA2D941FCAL},{0x6F2B41AA2D941FCAL},{0x6F2B41AA2D941FCAL},{0x6F2B41AA2D941FCAL}},{{0x6F2B41AA2D941FCAL},{0x6F2B41AA2D941FCAL},{0x6F2B41AA2D941FCAL},{0x6F2B41AA2D941FCAL},{0x6F2B41AA2D941FCAL},{0x6F2B41AA2D941FCAL},{0x6F2B41AA2D941FCAL}},{{0x6F2B41AA2D941FCAL},{0x6F2B41AA2D941FCAL},{0x6F2B41AA2D941FCAL},{0x6F2B41AA2D941FCAL},{0x6F2B41AA2D941FCAL},{0x6F2B41AA2D941FCAL},{0x6F2B41AA2D941FCAL}}};
                    int32_t **l_1085 = (void*)0;
                    int i, j, k;
                    if ((l_962[0][1][0] |= ((l_960[3][6][2] = ((l_955 , ((l_958 = (l_957 = l_956)) , 7L)) , (l_959 , 0x6F572FDDL))) , l_961)))
                    { /* block id: 472 */
                        union U2 l_964[4][2] = {{{-8L},{-8L}},{{-8L},{-8L}},{{-8L},{-8L}},{{-8L},{-8L}}};
                        union U2 *l_963 = &l_964[1][0];
                        union U2 l_966 = {-1L};/* VOLATILE GLOBAL l_966 */
                        union U2 l_967[1][5] = {{{-6L},{-6L},{-6L},{-6L},{-6L}}};
                        union U2 l_968 = {-1L};/* VOLATILE GLOBAL l_968 */
                        union U2 l_969[1] = {{0x421CL}};
                        union U2 l_970 = {0L};/* VOLATILE GLOBAL l_970 */
                        union U2 l_971[10] = {{-9L},{-9L},{-9L},{-9L},{-9L},{-9L},{-9L},{-9L},{-9L},{-9L}};
                        union U2 l_972[7] = {{0x613EL},{0x613EL},{0x613EL},{0x613EL},{0x613EL},{0x613EL},{0x613EL}};
                        union U2 l_973[4][3][8] = {{{{0x644DL},{-6L},{-3L},{-6L},{0x644DL},{0x644DL},{-6L},{-3L}},{{0x644DL},{-6L},{-3L},{-6L},{0x644DL},{0x644DL},{-6L},{-3L}},{{0x644DL},{-6L},{-3L},{-6L},{0x644DL},{0x644DL},{-6L},{-3L}}},{{{0x644DL},{-6L},{-3L},{-6L},{0x644DL},{0x644DL},{-6L},{-3L}},{{0x644DL},{-6L},{-3L},{-6L},{0x644DL},{0x644DL},{-6L},{-3L}},{{0x644DL},{-6L},{-3L},{-6L},{0x644DL},{0x644DL},{-6L},{-3L}}},{{{0x644DL},{-6L},{-3L},{-6L},{0x644DL},{0x644DL},{-6L},{-3L}},{{0x644DL},{-6L},{-3L},{-6L},{0x644DL},{0x644DL},{-6L},{-3L}},{{0x644DL},{-6L},{-3L},{-6L},{0x644DL},{0x644DL},{-6L},{-3L}}},{{{0x644DL},{-6L},{-3L},{-6L},{0x644DL},{0x644DL},{-6L},{-3L}},{{0x644DL},{-6L},{-3L},{-6L},{0x644DL},{0x644DL},{-6L},{-3L}},{{0x644DL},{-6L},{-3L},{-6L},{0x644DL},{0x644DL},{-6L},{-3L}}}};
                        union U2 l_974 = {0x4A63L};/* VOLATILE GLOBAL l_974 */
                        union U2 l_975[8][8] = {{{0x796EL},{0L},{6L},{0L},{0x796EL},{0x796EL},{0L},{6L}},{{0x796EL},{0L},{6L},{0L},{0x796EL},{0x796EL},{0L},{6L}},{{0x796EL},{0L},{6L},{0L},{0x796EL},{0x796EL},{0L},{6L}},{{0x796EL},{0L},{6L},{0L},{0x796EL},{0x796EL},{0L},{6L}},{{0x796EL},{0L},{6L},{0L},{0x796EL},{0x796EL},{0L},{6L}},{{0x796EL},{0L},{6L},{0L},{0x796EL},{0x796EL},{0L},{6L}},{{0x796EL},{0L},{6L},{0L},{0x796EL},{0x796EL},{0L},{6L}},{{0x796EL},{0L},{6L},{0L},{0x796EL},{0x796EL},{0L},{6L}}};
                        union U2 l_976 = {0x0672L};/* VOLATILE GLOBAL l_976 */
                        union U2 l_977 = {0x11A4L};/* VOLATILE GLOBAL l_977 */
                        union U2 l_978[9] = {{-4L},{-4L},{-4L},{-4L},{-4L},{-4L},{-4L},{-4L},{-4L}};
                        union U2 l_979 = {0x30B4L};/* VOLATILE GLOBAL l_979 */
                        union U2 l_980 = {0x592BL};/* VOLATILE GLOBAL l_980 */
                        union U2 l_981 = {0x375AL};/* VOLATILE GLOBAL l_981 */
                        union U2 l_982 = {6L};/* VOLATILE GLOBAL l_982 */
                        union U2 l_983 = {-6L};/* VOLATILE GLOBAL l_983 */
                        union U2 l_984[2][10][8] = {{{{0L},{1L},{0x6D0AL},{0x6D0AL},{1L},{0L},{-2L},{1L}},{{0L},{1L},{0x6D0AL},{0x6D0AL},{1L},{0L},{-2L},{1L}},{{0L},{1L},{0x6D0AL},{0x6D0AL},{1L},{0L},{-2L},{1L}},{{0L},{1L},{0x6D0AL},{0x6D0AL},{1L},{0L},{-2L},{1L}},{{0L},{1L},{0x6D0AL},{0x6D0AL},{1L},{0L},{-2L},{1L}},{{0L},{1L},{0x6D0AL},{0x6D0AL},{1L},{0L},{-2L},{1L}},{{0L},{1L},{0x6D0AL},{0x6D0AL},{1L},{0L},{-2L},{1L}},{{0L},{1L},{0x6D0AL},{0x6D0AL},{1L},{0L},{-2L},{1L}},{{0L},{1L},{0x6D0AL},{0x6D0AL},{1L},{0L},{-2L},{1L}},{{0L},{1L},{0x6D0AL},{0x6D0AL},{1L},{0L},{-2L},{1L}}},{{{0L},{1L},{0x6D0AL},{0x6D0AL},{1L},{0L},{-2L},{1L}},{{0L},{1L},{0x6D0AL},{0x6D0AL},{1L},{0L},{-2L},{1L}},{{0L},{1L},{0x6D0AL},{0x6D0AL},{1L},{0L},{-2L},{1L}},{{0L},{1L},{0x6D0AL},{0x6D0AL},{1L},{0L},{-2L},{1L}},{{0L},{1L},{0x6D0AL},{0x6D0AL},{1L},{0L},{-2L},{1L}},{{0L},{1L},{0x6D0AL},{0x6D0AL},{1L},{0L},{-2L},{1L}},{{0L},{1L},{0x6D0AL},{0x6D0AL},{1L},{0L},{-2L},{1L}},{{0L},{1L},{0x6D0AL},{0x6D0AL},{1L},{0L},{-2L},{1L}},{{0L},{1L},{0x6D0AL},{0x6D0AL},{1L},{0L},{-2L},{1L}},{{0L},{1L},{0x6D0AL},{0x6D0AL},{1L},{0L},{-2L},{1L}}}};
                        union U2 l_985[6] = {{-6L},{-6L},{-6L},{-6L},{-6L},{-6L}};
                        union U2 l_986 = {-6L};/* VOLATILE GLOBAL l_986 */
                        union U2 l_987 = {-8L};/* VOLATILE GLOBAL l_987 */
                        union U2 l_988 = {0x0C38L};/* VOLATILE GLOBAL l_988 */
                        union U2 l_989[10][9] = {{{0L},{-7L},{0x3A9FL},{0x79EFL},{1L},{1L},{0x79EFL},{0x3A9FL},{-7L}},{{0L},{-7L},{0x3A9FL},{0x79EFL},{1L},{1L},{0x79EFL},{0x3A9FL},{-7L}},{{0L},{-7L},{0x3A9FL},{0x79EFL},{1L},{1L},{0x79EFL},{0x3A9FL},{-7L}},{{0L},{-7L},{0x3A9FL},{0x79EFL},{1L},{1L},{0x79EFL},{0x3A9FL},{-7L}},{{0L},{-7L},{0x3A9FL},{0x79EFL},{1L},{1L},{0x79EFL},{0x3A9FL},{-7L}},{{0L},{-7L},{0x3A9FL},{0x79EFL},{1L},{1L},{0x79EFL},{0x3A9FL},{-7L}},{{0L},{-7L},{0x3A9FL},{0x79EFL},{1L},{1L},{0x79EFL},{0x3A9FL},{-7L}},{{0L},{-7L},{0x3A9FL},{0x79EFL},{1L},{1L},{0x79EFL},{0x3A9FL},{-7L}},{{0L},{-7L},{0x3A9FL},{0x79EFL},{1L},{1L},{0x79EFL},{0x3A9FL},{-7L}},{{0L},{-7L},{0x3A9FL},{0x79EFL},{1L},{1L},{0x79EFL},{0x3A9FL},{-7L}}};
                        union U2 l_990 = {-1L};/* VOLATILE GLOBAL l_990 */
                        union U2 l_991[7][7] = {{{0x0619L},{5L},{1L},{0x6AC2L},{1L},{5L},{0x0619L}},{{0x0619L},{5L},{1L},{0x6AC2L},{1L},{5L},{0x0619L}},{{0x0619L},{5L},{1L},{0x6AC2L},{1L},{5L},{0x0619L}},{{0x0619L},{5L},{1L},{0x6AC2L},{1L},{5L},{0x0619L}},{{0x0619L},{5L},{1L},{0x6AC2L},{1L},{5L},{0x0619L}},{{0x0619L},{5L},{1L},{0x6AC2L},{1L},{5L},{0x0619L}},{{0x0619L},{5L},{1L},{0x6AC2L},{1L},{5L},{0x0619L}}};
                        union U2 l_992 = {0x77DBL};/* VOLATILE GLOBAL l_992 */
                        union U2 l_993 = {1L};/* VOLATILE GLOBAL l_993 */
                        union U2 l_994[8][5][2] = {{{{-1L},{0x49A4L}},{{-1L},{0x49A4L}},{{-1L},{0x49A4L}},{{-1L},{0x49A4L}},{{-1L},{0x49A4L}}},{{{-1L},{0x49A4L}},{{-1L},{0x49A4L}},{{-1L},{0x49A4L}},{{-1L},{0x49A4L}},{{-1L},{0x49A4L}}},{{{-1L},{0x49A4L}},{{-1L},{0x49A4L}},{{-1L},{0x49A4L}},{{-1L},{0x49A4L}},{{-1L},{0x49A4L}}},{{{-1L},{0x49A4L}},{{-1L},{0x49A4L}},{{-1L},{0x49A4L}},{{-1L},{0x49A4L}},{{-1L},{0x49A4L}}},{{{-1L},{0x49A4L}},{{-1L},{0x49A4L}},{{-1L},{0x49A4L}},{{-1L},{0x49A4L}},{{-1L},{0x49A4L}}},{{{-1L},{0x49A4L}},{{-1L},{0x49A4L}},{{-1L},{0x49A4L}},{{-1L},{0x49A4L}},{{-1L},{0x49A4L}}},{{{-1L},{0x49A4L}},{{-1L},{0x49A4L}},{{-1L},{0x49A4L}},{{-1L},{0x49A4L}},{{-1L},{0x49A4L}}},{{{-1L},{0x49A4L}},{{-1L},{0x49A4L}},{{-1L},{0x49A4L}},{{-1L},{0x49A4L}},{{-1L},{0x49A4L}}}};
                        union U2 l_995[9][8] = {{{0x4D27L},{0x6DD1L},{0L},{0x6DD1L},{0x4D27L},{0x4D27L},{0x6DD1L},{0L}},{{0x4D27L},{0x6DD1L},{0L},{0x6DD1L},{0x4D27L},{0x4D27L},{0x6DD1L},{0L}},{{0x4D27L},{0x6DD1L},{0L},{0x6DD1L},{0x4D27L},{0x4D27L},{0x6DD1L},{0L}},{{0x4D27L},{0x6DD1L},{0L},{0x6DD1L},{0x4D27L},{0x4D27L},{0x6DD1L},{0L}},{{0x4D27L},{0x6DD1L},{0L},{0x6DD1L},{0x4D27L},{0x4D27L},{0x6DD1L},{0L}},{{0x4D27L},{0x6DD1L},{0L},{0x6DD1L},{0x4D27L},{0x4D27L},{0x6DD1L},{0L}},{{0x4D27L},{0x6DD1L},{0L},{0x6DD1L},{0x4D27L},{0x4D27L},{0x6DD1L},{0L}},{{0x4D27L},{0x6DD1L},{0L},{0x6DD1L},{0x4D27L},{0x4D27L},{0x6DD1L},{0L}},{{0x4D27L},{0x6DD1L},{0L},{0x6DD1L},{0x4D27L},{0x4D27L},{0x6DD1L},{0L}}};
                        union U2 l_996 = {0x2C4DL};/* VOLATILE GLOBAL l_996 */
                        union U2 l_997 = {0L};/* VOLATILE GLOBAL l_997 */
                        union U2 l_998 = {-1L};/* VOLATILE GLOBAL l_998 */
                        union U2 l_999 = {0x1C34L};/* VOLATILE GLOBAL l_999 */
                        union U2 l_1000[1] = {{0x199EL}};
                        union U2 l_1001 = {0x13A2L};/* VOLATILE GLOBAL l_1001 */
                        union U2 l_1002 = {8L};/* VOLATILE GLOBAL l_1002 */
                        union U2 l_1003 = {-1L};/* VOLATILE GLOBAL l_1003 */
                        union U2 l_1004[3][4] = {{{0x378EL},{0x378EL},{0x378EL},{0x378EL}},{{0x378EL},{0x378EL},{0x378EL},{0x378EL}},{{0x378EL},{0x378EL},{0x378EL},{0x378EL}}};
                        union U2 l_1005 = {-9L};/* VOLATILE GLOBAL l_1005 */
                        union U2 l_1006[10] = {{0x2C91L},{0x2C91L},{0x2C91L},{0x2C91L},{0x2C91L},{0x2C91L},{0x2C91L},{0x2C91L},{0x2C91L},{0x2C91L}};
                        union U2 l_1007 = {0x7368L};/* VOLATILE GLOBAL l_1007 */
                        union U2 l_1008 = {0x4B62L};/* VOLATILE GLOBAL l_1008 */
                        union U2 l_1009 = {-1L};/* VOLATILE GLOBAL l_1009 */
                        union U2 l_1010 = {0x71BFL};/* VOLATILE GLOBAL l_1010 */
                        union U2 l_1011[2] = {{0x7878L},{0x7878L}};
                        union U2 l_1012[9][3] = {{{0x5F9AL},{0x4298L},{0x3AD6L}},{{0x5F9AL},{0x4298L},{0x3AD6L}},{{0x5F9AL},{0x4298L},{0x3AD6L}},{{0x5F9AL},{0x4298L},{0x3AD6L}},{{0x5F9AL},{0x4298L},{0x3AD6L}},{{0x5F9AL},{0x4298L},{0x3AD6L}},{{0x5F9AL},{0x4298L},{0x3AD6L}},{{0x5F9AL},{0x4298L},{0x3AD6L}},{{0x5F9AL},{0x4298L},{0x3AD6L}}};
                        union U2 l_1013 = {3L};/* VOLATILE GLOBAL l_1013 */
                        union U2 l_1014 = {0x20B5L};/* VOLATILE GLOBAL l_1014 */
                        union U2 l_1015 = {1L};/* VOLATILE GLOBAL l_1015 */
                        union U2 l_1016 = {0x50DDL};/* VOLATILE GLOBAL l_1016 */
                        union U2 l_1017 = {0x224CL};/* VOLATILE GLOBAL l_1017 */
                        union U2 l_1018 = {0x2D5EL};/* VOLATILE GLOBAL l_1018 */
                        union U2 l_1019 = {-3L};/* VOLATILE GLOBAL l_1019 */
                        union U2 l_1020[9] = {{1L},{0x4D61L},{1L},{1L},{0x4D61L},{1L},{1L},{0x4D61L},{1L}};
                        union U2 l_1021[6][1] = {{{0x7E8DL}},{{0x7E8DL}},{{0x7E8DL}},{{0x7E8DL}},{{0x7E8DL}},{{0x7E8DL}}};
                        union U2 l_1022[2] = {{0x2A7DL},{0x2A7DL}};
                        union U2 l_1023 = {4L};/* VOLATILE GLOBAL l_1023 */
                        union U2 l_1024 = {0x6A2EL};/* VOLATILE GLOBAL l_1024 */
                        union U2 l_1025[6] = {{-9L},{-9L},{-9L},{-9L},{-9L},{-9L}};
                        union U2 l_1026[9] = {{0L},{0x6A94L},{0L},{0L},{0x6A94L},{0L},{0L},{0x6A94L},{0L}};
                        union U2 l_1027[7] = {{0x6945L},{0x4A44L},{0x6945L},{0x6945L},{0x4A44L},{0x6945L},{0x6945L}};
                        union U2 l_1028 = {0x05D4L};/* VOLATILE GLOBAL l_1028 */
                        union U2 l_1029 = {0x5494L};/* VOLATILE GLOBAL l_1029 */
                        union U2 l_1030[8] = {{4L},{0L},{4L},{4L},{0L},{4L},{4L},{0L}};
                        union U2 l_1031 = {3L};/* VOLATILE GLOBAL l_1031 */
                        union U2 l_1032 = {-10L};/* VOLATILE GLOBAL l_1032 */
                        union U2 l_1033 = {0x12C3L};/* VOLATILE GLOBAL l_1033 */
                        union U2 l_1034 = {0x7D52L};/* VOLATILE GLOBAL l_1034 */
                        union U2 l_1035 = {0x339CL};/* VOLATILE GLOBAL l_1035 */
                        union U2 l_1036[2] = {{0x6E77L},{0x6E77L}};
                        union U2 l_1037 = {0x7838L};/* VOLATILE GLOBAL l_1037 */
                        union U2 l_1038 = {0x5E79L};/* VOLATILE GLOBAL l_1038 */
                        union U2 l_1039 = {0x1345L};/* VOLATILE GLOBAL l_1039 */
                        union U2 l_1040 = {0x0AE0L};/* VOLATILE GLOBAL l_1040 */
                        union U2 l_1041[2] = {{0x369BL},{0x369BL}};
                        union U2 l_1042 = {0x0FFDL};/* VOLATILE GLOBAL l_1042 */
                        union U2 l_1043 = {-4L};/* VOLATILE GLOBAL l_1043 */
                        union U2 l_1044 = {-4L};/* VOLATILE GLOBAL l_1044 */
                        union U2 l_1045 = {3L};/* VOLATILE GLOBAL l_1045 */
                        union U2 l_1046 = {-1L};/* VOLATILE GLOBAL l_1046 */
                        union U2 l_1047 = {7L};/* VOLATILE GLOBAL l_1047 */
                        union U2 l_1048 = {7L};/* VOLATILE GLOBAL l_1048 */
                        union U2 l_1049 = {-1L};/* VOLATILE GLOBAL l_1049 */
                        union U2 l_1050 = {0x53CFL};/* VOLATILE GLOBAL l_1050 */
                        union U2 l_1051 = {0x0D99L};/* VOLATILE GLOBAL l_1051 */
                        union U2 l_1052 = {0x7E72L};/* VOLATILE GLOBAL l_1052 */
                        union U2 l_1053 = {-8L};/* VOLATILE GLOBAL l_1053 */
                        union U2 l_1054 = {-1L};/* VOLATILE GLOBAL l_1054 */
                        union U2 l_1055[6][4][9] = {{{{0L},{0x65E6L},{0x7A44L},{0x552DL},{-8L},{0x552DL},{0x7A44L},{0x65E6L},{0L}},{{0L},{0x65E6L},{0x7A44L},{0x552DL},{-8L},{0x552DL},{0x7A44L},{0x65E6L},{0L}},{{0L},{0x65E6L},{0x7A44L},{0x552DL},{-8L},{0x552DL},{0x7A44L},{0x65E6L},{0L}},{{0L},{0x65E6L},{0x7A44L},{0x552DL},{-8L},{0x552DL},{0x7A44L},{0x65E6L},{0L}}},{{{0L},{0x65E6L},{0x7A44L},{0x552DL},{-8L},{0x552DL},{0x7A44L},{0x65E6L},{0L}},{{0L},{0x65E6L},{0x7A44L},{0x552DL},{-8L},{0x552DL},{0x7A44L},{0x65E6L},{0L}},{{0L},{0x65E6L},{0x7A44L},{0x552DL},{-8L},{0x552DL},{0x7A44L},{0x65E6L},{0L}},{{0L},{0x65E6L},{0x7A44L},{0x552DL},{-8L},{0x552DL},{0x7A44L},{0x65E6L},{0L}}},{{{0L},{0x65E6L},{0x7A44L},{0x552DL},{-8L},{0x552DL},{0x7A44L},{0x65E6L},{0L}},{{0L},{0x65E6L},{0x7A44L},{0x552DL},{-8L},{0x552DL},{0x7A44L},{0x65E6L},{0L}},{{0L},{0x65E6L},{0x7A44L},{0x552DL},{-8L},{0x552DL},{0x7A44L},{0x65E6L},{0L}},{{0L},{0x65E6L},{0x7A44L},{0x552DL},{-8L},{0x552DL},{0x7A44L},{0x65E6L},{0L}}},{{{0L},{0x65E6L},{0x7A44L},{0x552DL},{-8L},{0x552DL},{0x7A44L},{0x65E6L},{0L}},{{0L},{0x65E6L},{0x7A44L},{0x552DL},{-8L},{0x552DL},{0x7A44L},{0x65E6L},{0L}},{{0L},{0x65E6L},{0x7A44L},{0x552DL},{-8L},{0x552DL},{0x7A44L},{0x65E6L},{0L}},{{0L},{0x65E6L},{0x7A44L},{0x552DL},{-8L},{0x552DL},{0x7A44L},{0x65E6L},{0L}}},{{{0L},{0x65E6L},{0x7A44L},{0x552DL},{-8L},{0x552DL},{0x7A44L},{0x65E6L},{0L}},{{0L},{0x65E6L},{0x7A44L},{0x552DL},{-8L},{0x552DL},{0x7A44L},{0x65E6L},{0L}},{{0L},{0x65E6L},{0x7A44L},{0x552DL},{-8L},{0x552DL},{0x7A44L},{0x65E6L},{0L}},{{0L},{0x65E6L},{0x7A44L},{0x552DL},{-8L},{0x552DL},{0x7A44L},{0x65E6L},{0L}}},{{{0L},{0x65E6L},{0x7A44L},{0x552DL},{-8L},{0x552DL},{0x7A44L},{0x65E6L},{0L}},{{0L},{0x65E6L},{0x7A44L},{0x552DL},{-8L},{0x552DL},{0x7A44L},{0x65E6L},{0L}},{{0L},{0x65E6L},{0x7A44L},{0x552DL},{-8L},{0x552DL},{0x7A44L},{0x65E6L},{0L}},{{0L},{0x65E6L},{0x7A44L},{0x552DL},{-8L},{0x552DL},{0x7A44L},{0x65E6L},{0L}}}};
                        union U2 l_1056 = {0x6FD3L};/* VOLATILE GLOBAL l_1056 */
                        union U2 l_1057 = {0x005BL};/* VOLATILE GLOBAL l_1057 */
                        union U2 l_1058 = {0x12BEL};/* VOLATILE GLOBAL l_1058 */
                        union U2 l_1059[3][9] = {{{0L},{0x324DL},{0x324DL},{0L},{0L},{0x324DL},{0x324DL},{0L},{0L}},{{0L},{0x324DL},{0x324DL},{0L},{0L},{0x324DL},{0x324DL},{0L},{0L}},{{0L},{0x324DL},{0x324DL},{0L},{0L},{0x324DL},{0x324DL},{0L},{0L}}};
                        union U2 *l_965[5][6][8] = {{{&l_1024,&l_1050,&l_1029,&l_1058,&l_1036[0],(void*)0,&l_1048,&l_986},{&l_1024,&l_1050,&l_1029,&l_1058,&l_1036[0],(void*)0,&l_1048,&l_986},{&l_1024,&l_1050,&l_1029,&l_1058,&l_1036[0],(void*)0,&l_1048,&l_986},{&l_1024,&l_1050,&l_1029,&l_1058,&l_1036[0],(void*)0,&l_1048,&l_986},{&l_1024,&l_1050,&l_1029,&l_1058,&l_1036[0],(void*)0,&l_1048,&l_986},{&l_1024,&l_1050,&l_1029,&l_1058,&l_1036[0],(void*)0,&l_1048,&l_986}},{{&l_1024,&l_1050,&l_1029,&l_1058,&l_1036[0],(void*)0,&l_1048,&l_986},{&l_1024,&l_1050,&l_1029,&l_1058,&l_1036[0],(void*)0,&l_1048,&l_986},{&l_1024,&l_1050,&l_1029,&l_1058,&l_1036[0],(void*)0,&l_1048,&l_986},{&l_1024,&l_1050,&l_1029,&l_1058,&l_1036[0],(void*)0,&l_1048,&l_986},{&l_1024,&l_1050,&l_1029,&l_1058,&l_1036[0],(void*)0,&l_1048,&l_986},{&l_1024,&l_1050,&l_1029,&l_1058,&l_1036[0],(void*)0,&l_1048,&l_986}},{{&l_1024,&l_1050,&l_1029,&l_1058,&l_1036[0],(void*)0,&l_1048,&l_986},{&l_1024,&l_1050,&l_1029,&l_1058,&l_1036[0],(void*)0,&l_1048,&l_986},{&l_1024,&l_1050,&l_1029,&l_1058,&l_1036[0],(void*)0,&l_1048,&l_986},{&l_1024,&l_1050,&l_1029,&l_1058,&l_1036[0],(void*)0,&l_1048,&l_986},{&l_1024,&l_1050,&l_1029,&l_1058,&l_1036[0],(void*)0,&l_1048,&l_986},{&l_1024,&l_1050,&l_1029,&l_1058,&l_1036[0],(void*)0,&l_1048,&l_986}},{{&l_1024,&l_1050,&l_1029,&l_1058,&l_1036[0],(void*)0,&l_1048,&l_986},{&l_1024,&l_1050,&l_1029,&l_1058,&l_1036[0],(void*)0,&l_1048,&l_986},{&l_1024,&l_1050,&l_1029,&l_1058,&l_1036[0],(void*)0,&l_1048,&l_986},{&l_1024,&l_1050,&l_1029,&l_1058,&l_1036[0],(void*)0,&l_1048,&l_986},{&l_1024,&l_1050,&l_1029,&l_1058,&l_1036[0],(void*)0,&l_1048,&l_986},{&l_1024,&l_1050,&l_1029,&l_1058,&l_1036[0],(void*)0,&l_1048,&l_986}},{{&l_1024,&l_1050,&l_1029,&l_1058,&l_1036[0],(void*)0,&l_1048,&l_986},{&l_1024,&l_1050,&l_1029,&l_1058,&l_1036[0],(void*)0,&l_1048,&l_986},{&l_1024,&l_1050,&l_1029,&l_1058,&l_1036[0],(void*)0,&l_1048,&l_986},{&l_1024,&l_1050,&l_1029,&l_1058,&l_1036[0],(void*)0,&l_1048,&l_986},{&l_1024,&l_1050,&l_1029,&l_1058,&l_1036[0],(void*)0,&l_1048,&l_986},{&l_1024,&l_1050,&l_1029,&l_1058,&l_1036[0],(void*)0,&l_1048,&l_986}}};
                        uint16_t l_1060 = 4UL;
                        uint32_t l_1061 = 1UL;
                        int16_t l_1062 = 0x43D5L;
                        int32_t l_1064 = 0x34C47878L;
                        int32_t *l_1063[3][5][3] = {{{&l_1064,&l_1064,&l_1064},{&l_1064,&l_1064,&l_1064},{&l_1064,&l_1064,&l_1064},{&l_1064,&l_1064,&l_1064},{&l_1064,&l_1064,&l_1064}},{{&l_1064,&l_1064,&l_1064},{&l_1064,&l_1064,&l_1064},{&l_1064,&l_1064,&l_1064},{&l_1064,&l_1064,&l_1064},{&l_1064,&l_1064,&l_1064}},{{&l_1064,&l_1064,&l_1064},{&l_1064,&l_1064,&l_1064},{&l_1064,&l_1064,&l_1064},{&l_1064,&l_1064,&l_1064},{&l_1064,&l_1064,&l_1064}}};
                        int32_t *l_1065 = &l_1064;
                        int i, j, k;
                        l_965[1][2][5] = l_963;
                        l_1062 = (l_1061 = (l_1060 , 0x29AE17FAL));
                        l_1065 = l_1063[1][3][1];
                    }
                    else
                    { /* block id: 477 */
                        int32_t *l_1067 = (void*)0;
                        int32_t **l_1066 = &l_1067;
                        int32_t **l_1068 = &l_1067;
                        l_1068 = l_1066;
                    }
                    for (l_962[0][1][0] = (-19); (l_962[0][1][0] != 52); l_962[0][1][0]++)
                    { /* block id: 482 */
                        uint64_t l_1071 = 0xD2188849680DEF7CL;
                        uint32_t l_1072[4] = {0x5F3D1F15L,0x5F3D1F15L,0x5F3D1F15L,0x5F3D1F15L};
                        uint32_t l_1073[9][4][2] = {{{0x179E265AL,4294967295UL},{0x179E265AL,4294967295UL},{0x179E265AL,4294967295UL},{0x179E265AL,4294967295UL}},{{0x179E265AL,4294967295UL},{0x179E265AL,4294967295UL},{0x179E265AL,4294967295UL},{0x179E265AL,4294967295UL}},{{0x179E265AL,4294967295UL},{0x179E265AL,4294967295UL},{0x179E265AL,4294967295UL},{0x179E265AL,4294967295UL}},{{0x179E265AL,4294967295UL},{0x179E265AL,4294967295UL},{0x179E265AL,4294967295UL},{0x179E265AL,4294967295UL}},{{0x179E265AL,4294967295UL},{0x179E265AL,4294967295UL},{0x179E265AL,4294967295UL},{0x179E265AL,4294967295UL}},{{0x179E265AL,4294967295UL},{0x179E265AL,4294967295UL},{0x179E265AL,4294967295UL},{0x179E265AL,4294967295UL}},{{0x179E265AL,4294967295UL},{0x179E265AL,4294967295UL},{0x179E265AL,4294967295UL},{0x179E265AL,4294967295UL}},{{0x179E265AL,4294967295UL},{0x179E265AL,4294967295UL},{0x179E265AL,4294967295UL},{0x179E265AL,4294967295UL}},{{0x179E265AL,4294967295UL},{0x179E265AL,4294967295UL},{0x179E265AL,4294967295UL},{0x179E265AL,4294967295UL}}};
                        uint16_t l_1074 = 0x0C30L;
                        uint32_t l_1075 = 0UL;
                        int8_t l_1076 = 0x15L;
                        int64_t l_1077 = 0x4AFE9847C81CD7B6L;
                        int8_t l_1078 = 0x51L;
                        int64_t l_1079[4][10] = {{1L,(-1L),1L,1L,(-1L),1L,1L,(-1L),1L,1L},{1L,(-1L),1L,1L,(-1L),1L,1L,(-1L),1L,1L},{1L,(-1L),1L,1L,(-1L),1L,1L,(-1L),1L,1L},{1L,(-1L),1L,1L,(-1L),1L,1L,(-1L),1L,1L}};
                        int8_t l_1080 = 0L;
                        int64_t l_1081 = 0x4DBFB23BC99D443EL;
                        uint16_t l_1082 = 65535UL;
                        int i, j, k;
                        l_1077 = (l_956.f1 = (l_957.f1 = (l_1071 , (l_1072[1] , (l_958.f1 = ((l_834 = ((l_1073[7][1][0] , l_1074) , l_1075)) , l_1076))))));
                        l_956.f1 = l_1078;
                        l_957.f1 = (l_1079[2][4] , (l_956.f1 = 1L));
                        ++l_1082;
                    }
                    l_1085 = (void*)0;
                }
                else
                { /* block id: 494 */
                    struct S0 l_1086 = {0x3E57DFD994302639L,0x4653D850L};
                    struct S0 l_1087 = {-3L,0x1B71F917L};
                    uint32_t l_1088[2];
                    int i;
                    for (i = 0; i < 2; i++)
                        l_1088[i] = 4294967295UL;
                    l_1087 = l_1086;
                    l_1088[1]++;
                    for (l_1087.f0 = 1; (l_1087.f0 >= 0); l_1087.f0 -= 1)
                    { /* block id: 499 */
                        uint16_t l_1091[9][7][3] = {{{0xDFD0L,1UL,0x6C20L},{0xDFD0L,1UL,0x6C20L},{0xDFD0L,1UL,0x6C20L},{0xDFD0L,1UL,0x6C20L},{0xDFD0L,1UL,0x6C20L},{0xDFD0L,1UL,0x6C20L},{0xDFD0L,1UL,0x6C20L}},{{0xDFD0L,1UL,0x6C20L},{0xDFD0L,1UL,0x6C20L},{0xDFD0L,1UL,0x6C20L},{0xDFD0L,1UL,0x6C20L},{0xDFD0L,1UL,0x6C20L},{0xDFD0L,1UL,0x6C20L},{0xDFD0L,1UL,0x6C20L}},{{0xDFD0L,1UL,0x6C20L},{0xDFD0L,1UL,0x6C20L},{0xDFD0L,1UL,0x6C20L},{0xDFD0L,1UL,0x6C20L},{0xDFD0L,1UL,0x6C20L},{0xDFD0L,1UL,0x6C20L},{0xDFD0L,1UL,0x6C20L}},{{0xDFD0L,1UL,0x6C20L},{0xDFD0L,1UL,0x6C20L},{0xDFD0L,1UL,0x6C20L},{0xDFD0L,1UL,0x6C20L},{0xDFD0L,1UL,0x6C20L},{0xDFD0L,1UL,0x6C20L},{0xDFD0L,1UL,0x6C20L}},{{0xDFD0L,1UL,0x6C20L},{0xDFD0L,1UL,0x6C20L},{0xDFD0L,1UL,0x6C20L},{0xDFD0L,1UL,0x6C20L},{0xDFD0L,1UL,0x6C20L},{0xDFD0L,1UL,0x6C20L},{0xDFD0L,1UL,0x6C20L}},{{0xDFD0L,1UL,0x6C20L},{0xDFD0L,1UL,0x6C20L},{0xDFD0L,1UL,0x6C20L},{0xDFD0L,1UL,0x6C20L},{0xDFD0L,1UL,0x6C20L},{0xDFD0L,1UL,0x6C20L},{0xDFD0L,1UL,0x6C20L}},{{0xDFD0L,1UL,0x6C20L},{0xDFD0L,1UL,0x6C20L},{0xDFD0L,1UL,0x6C20L},{0xDFD0L,1UL,0x6C20L},{0xDFD0L,1UL,0x6C20L},{0xDFD0L,1UL,0x6C20L},{0xDFD0L,1UL,0x6C20L}},{{0xDFD0L,1UL,0x6C20L},{0xDFD0L,1UL,0x6C20L},{0xDFD0L,1UL,0x6C20L},{0xDFD0L,1UL,0x6C20L},{0xDFD0L,1UL,0x6C20L},{0xDFD0L,1UL,0x6C20L},{0xDFD0L,1UL,0x6C20L}},{{0xDFD0L,1UL,0x6C20L},{0xDFD0L,1UL,0x6C20L},{0xDFD0L,1UL,0x6C20L},{0xDFD0L,1UL,0x6C20L},{0xDFD0L,1UL,0x6C20L},{0xDFD0L,1UL,0x6C20L},{0xDFD0L,1UL,0x6C20L}}};
                        int i, j, k;
                        l_1087.f1 |= (((l_1091[3][0][1] = FAKE_DIVERGE(p_2824->global_2_offset, get_global_id(2), 10)) , l_1088[l_1087.f0]) , l_1088[l_1087.f0]);
                    }
                }
            }
            l_1098 = ((((l_1094 = (l_1092 , l_1093)) , (l_1096 = l_1095)) , 0L) , l_1097);
            l_1100 = l_1099[3];
        }
        else
        { /* block id: 509 */
            int32_t *l_1101 = (void*)0;
            int32_t l_1103 = 0x54D54CB7L;
            int32_t *l_1102 = &l_1103;
            struct S0 l_1104 = {0L,0x043E79F2L};
            struct S0 l_1105 = {0L,0L};
            uint64_t l_1106 = 0xC65FF4E1DAF7E0A9L;
            l_1102 = (l_1101 = (void*)0);
            l_1105 = l_1104;
            l_1106--;
            for (l_1103 = 0; (l_1103 <= (-18)); --l_1103)
            { /* block id: 516 */
                int64_t l_1111 = 0x5017F85A691D22E0L;
                int32_t l_1112 = 0x54855E85L;
                uint16_t l_1130 = 0UL;
                if ((l_1111 , l_1112))
                { /* block id: 517 */
                    uint64_t l_1113 = 18446744073709551615UL;
                    ++l_1113;
                }
                else
                { /* block id: 519 */
                    int32_t *l_1116 = (void*)0;
                    int16_t l_1117 = 0x57D7L;
                    int32_t l_1129[3][9][4] = {{{0x43F5BEF2L,0x444E4AE2L,8L,0x4B7BFA00L},{0x43F5BEF2L,0x444E4AE2L,8L,0x4B7BFA00L},{0x43F5BEF2L,0x444E4AE2L,8L,0x4B7BFA00L},{0x43F5BEF2L,0x444E4AE2L,8L,0x4B7BFA00L},{0x43F5BEF2L,0x444E4AE2L,8L,0x4B7BFA00L},{0x43F5BEF2L,0x444E4AE2L,8L,0x4B7BFA00L},{0x43F5BEF2L,0x444E4AE2L,8L,0x4B7BFA00L},{0x43F5BEF2L,0x444E4AE2L,8L,0x4B7BFA00L},{0x43F5BEF2L,0x444E4AE2L,8L,0x4B7BFA00L}},{{0x43F5BEF2L,0x444E4AE2L,8L,0x4B7BFA00L},{0x43F5BEF2L,0x444E4AE2L,8L,0x4B7BFA00L},{0x43F5BEF2L,0x444E4AE2L,8L,0x4B7BFA00L},{0x43F5BEF2L,0x444E4AE2L,8L,0x4B7BFA00L},{0x43F5BEF2L,0x444E4AE2L,8L,0x4B7BFA00L},{0x43F5BEF2L,0x444E4AE2L,8L,0x4B7BFA00L},{0x43F5BEF2L,0x444E4AE2L,8L,0x4B7BFA00L},{0x43F5BEF2L,0x444E4AE2L,8L,0x4B7BFA00L},{0x43F5BEF2L,0x444E4AE2L,8L,0x4B7BFA00L}},{{0x43F5BEF2L,0x444E4AE2L,8L,0x4B7BFA00L},{0x43F5BEF2L,0x444E4AE2L,8L,0x4B7BFA00L},{0x43F5BEF2L,0x444E4AE2L,8L,0x4B7BFA00L},{0x43F5BEF2L,0x444E4AE2L,8L,0x4B7BFA00L},{0x43F5BEF2L,0x444E4AE2L,8L,0x4B7BFA00L},{0x43F5BEF2L,0x444E4AE2L,8L,0x4B7BFA00L},{0x43F5BEF2L,0x444E4AE2L,8L,0x4B7BFA00L},{0x43F5BEF2L,0x444E4AE2L,8L,0x4B7BFA00L},{0x43F5BEF2L,0x444E4AE2L,8L,0x4B7BFA00L}}};
                    int i, j, k;
                    l_1116 = (FAKE_DIVERGE(p_2824->global_1_offset, get_global_id(1), 10) , l_1116);
                    if (l_1117)
                    { /* block id: 521 */
                        struct S0 l_1118[6][4] = {{{0x4E93F418E1822029L,8L},{0x4E93F418E1822029L,8L},{0x2C5EC2724CB654B7L,1L},{0x3D3480564708F377L,0L}},{{0x4E93F418E1822029L,8L},{0x4E93F418E1822029L,8L},{0x2C5EC2724CB654B7L,1L},{0x3D3480564708F377L,0L}},{{0x4E93F418E1822029L,8L},{0x4E93F418E1822029L,8L},{0x2C5EC2724CB654B7L,1L},{0x3D3480564708F377L,0L}},{{0x4E93F418E1822029L,8L},{0x4E93F418E1822029L,8L},{0x2C5EC2724CB654B7L,1L},{0x3D3480564708F377L,0L}},{{0x4E93F418E1822029L,8L},{0x4E93F418E1822029L,8L},{0x2C5EC2724CB654B7L,1L},{0x3D3480564708F377L,0L}},{{0x4E93F418E1822029L,8L},{0x4E93F418E1822029L,8L},{0x2C5EC2724CB654B7L,1L},{0x3D3480564708F377L,0L}}};
                        struct S0 l_1119 = {1L,0x1CA4A651L};
                        int32_t *l_1120 = &l_1119.f1;
                        int i, j;
                        l_1102 = (void*)0;
                        l_1119 = l_1118[0][3];
                        l_1116 = l_1120;
                    }
                    else
                    { /* block id: 525 */
                        int32_t l_1121[2][4] = {{0x1C717F91L,0x602310ADL,0x1C717F91L,0x1C717F91L},{0x1C717F91L,0x602310ADL,0x1C717F91L,0x1C717F91L}};
                        int32_t l_1122 = 0x6D457537L;
                        uint64_t l_1123[3][10][8] = {{{0UL,1UL,18446744073709551610UL,0UL,1UL,18446744073709551615UL,0x93759F308A079FA1L,0UL},{0UL,1UL,18446744073709551610UL,0UL,1UL,18446744073709551615UL,0x93759F308A079FA1L,0UL},{0UL,1UL,18446744073709551610UL,0UL,1UL,18446744073709551615UL,0x93759F308A079FA1L,0UL},{0UL,1UL,18446744073709551610UL,0UL,1UL,18446744073709551615UL,0x93759F308A079FA1L,0UL},{0UL,1UL,18446744073709551610UL,0UL,1UL,18446744073709551615UL,0x93759F308A079FA1L,0UL},{0UL,1UL,18446744073709551610UL,0UL,1UL,18446744073709551615UL,0x93759F308A079FA1L,0UL},{0UL,1UL,18446744073709551610UL,0UL,1UL,18446744073709551615UL,0x93759F308A079FA1L,0UL},{0UL,1UL,18446744073709551610UL,0UL,1UL,18446744073709551615UL,0x93759F308A079FA1L,0UL},{0UL,1UL,18446744073709551610UL,0UL,1UL,18446744073709551615UL,0x93759F308A079FA1L,0UL},{0UL,1UL,18446744073709551610UL,0UL,1UL,18446744073709551615UL,0x93759F308A079FA1L,0UL}},{{0UL,1UL,18446744073709551610UL,0UL,1UL,18446744073709551615UL,0x93759F308A079FA1L,0UL},{0UL,1UL,18446744073709551610UL,0UL,1UL,18446744073709551615UL,0x93759F308A079FA1L,0UL},{0UL,1UL,18446744073709551610UL,0UL,1UL,18446744073709551615UL,0x93759F308A079FA1L,0UL},{0UL,1UL,18446744073709551610UL,0UL,1UL,18446744073709551615UL,0x93759F308A079FA1L,0UL},{0UL,1UL,18446744073709551610UL,0UL,1UL,18446744073709551615UL,0x93759F308A079FA1L,0UL},{0UL,1UL,18446744073709551610UL,0UL,1UL,18446744073709551615UL,0x93759F308A079FA1L,0UL},{0UL,1UL,18446744073709551610UL,0UL,1UL,18446744073709551615UL,0x93759F308A079FA1L,0UL},{0UL,1UL,18446744073709551610UL,0UL,1UL,18446744073709551615UL,0x93759F308A079FA1L,0UL},{0UL,1UL,18446744073709551610UL,0UL,1UL,18446744073709551615UL,0x93759F308A079FA1L,0UL},{0UL,1UL,18446744073709551610UL,0UL,1UL,18446744073709551615UL,0x93759F308A079FA1L,0UL}},{{0UL,1UL,18446744073709551610UL,0UL,1UL,18446744073709551615UL,0x93759F308A079FA1L,0UL},{0UL,1UL,18446744073709551610UL,0UL,1UL,18446744073709551615UL,0x93759F308A079FA1L,0UL},{0UL,1UL,18446744073709551610UL,0UL,1UL,18446744073709551615UL,0x93759F308A079FA1L,0UL},{0UL,1UL,18446744073709551610UL,0UL,1UL,18446744073709551615UL,0x93759F308A079FA1L,0UL},{0UL,1UL,18446744073709551610UL,0UL,1UL,18446744073709551615UL,0x93759F308A079FA1L,0UL},{0UL,1UL,18446744073709551610UL,0UL,1UL,18446744073709551615UL,0x93759F308A079FA1L,0UL},{0UL,1UL,18446744073709551610UL,0UL,1UL,18446744073709551615UL,0x93759F308A079FA1L,0UL},{0UL,1UL,18446744073709551610UL,0UL,1UL,18446744073709551615UL,0x93759F308A079FA1L,0UL},{0UL,1UL,18446744073709551610UL,0UL,1UL,18446744073709551615UL,0x93759F308A079FA1L,0UL},{0UL,1UL,18446744073709551610UL,0UL,1UL,18446744073709551615UL,0x93759F308A079FA1L,0UL}}};
                        uint64_t l_1124 = 2UL;
                        int16_t l_1125 = 0x38C2L;
                        int8_t l_1128 = 0x5EL;
                        int8_t *l_1127 = &l_1128;
                        int8_t **l_1126 = &l_1127;
                        int i, j, k;
                        l_1122 ^= l_1121[0][2];
                        l_1126 = (((l_1124 = l_1123[1][1][6]) , l_1125) , l_1126);
                    }
                    l_1105.f1 &= (l_1112 |= l_1129[2][2][1]);
                }
                if (l_1130)
                { /* block id: 533 */
                    uint16_t l_1131[3][7] = {{65528UL,65535UL,65535UL,65528UL,65528UL,65535UL,65535UL},{65528UL,65535UL,65535UL,65528UL,65528UL,65535UL,65535UL},{65528UL,65535UL,65535UL,65528UL,65528UL,65535UL,65535UL}};
                    int64_t l_1132 = 0x54AAAC5969625193L;
                    int32_t l_1134[1];
                    int32_t *l_1133 = &l_1134[0];
                    int i, j;
                    for (i = 0; i < 1; i++)
                        l_1134[i] = 0x613493BEL;
                    l_1131[1][6] = (l_1112 = 0x6395F8BEL);
                    l_1101 = (l_1132 , l_1133);
                }
                else
                { /* block id: 537 */
                    int32_t l_1135 = 0x2F8A7D7BL;
                    for (l_1135 = 0; (l_1135 >= (-11)); --l_1135)
                    { /* block id: 540 */
                        uint32_t l_1138 = 0xD6867E24L;
                        int32_t l_1139 = (-5L);
                        struct S0 l_1141 = {-4L,0x600C9B6AL};
                        struct S0 *l_1140 = &l_1141;
                        int32_t l_1142 = 0x52EE64C6L;
                        uint32_t l_1143 = 4294967289UL;
                        int32_t l_1146 = 0x43DB9955L;
                        l_1102 = (l_1138 , (void*)0);
                        l_1140 = (l_1139 , (void*)0);
                        --l_1143;
                        l_1105.f1 ^= l_1146;
                    }
                }
            }
        }
        if ((l_1149 = (l_1148 = l_1147[0][5][1])))
        { /* block id: 551 */
            int32_t l_1150 = 0x347ABC18L;
            int32_t *l_1217 = &l_1150;
            for (l_1150 = (-21); (l_1150 <= (-16)); l_1150 = safe_add_func_int8_t_s_s(l_1150, 1))
            { /* block id: 554 */
                uint16_t l_1153 = 0xEE3DL;
                uint64_t l_1154 = 9UL;
                uint32_t l_1155 = 1UL;
                int32_t l_1156[3][4] = {{0x06BF8380L,0x06BF8380L,0x06BF8380L,0x06BF8380L},{0x06BF8380L,0x06BF8380L,0x06BF8380L,0x06BF8380L},{0x06BF8380L,0x06BF8380L,0x06BF8380L,0x06BF8380L}};
                int64_t l_1164 = 0x3015C32F70581E93L;
                uint64_t l_1165 = 1UL;
                uint64_t l_1166 = 0x06F03F17CB464342L;
                int64_t l_1167 = (-1L);
                uint32_t l_1168 = 0x995D841CL;
                int16_t l_1169 = 0x20ADL;
                struct S0 l_1170 = {0L,0x475EA241L};
                struct S0 l_1171 = {1L,0x610802F5L};
                struct S0 l_1172 = {0x1B4A857099C660FFL,0x32D25C17L};
                struct S0 l_1173 = {5L,1L};
                int64_t l_1174 = (-1L);
                int i, j;
                l_1156[0][1] |= ((l_1153 , l_1154) , l_1155);
                for (l_1156[2][2] = 2; (l_1156[2][2] >= 0); l_1156[2][2] -= 1)
                { /* block id: 558 */
                    int32_t l_1158 = 0x1E9E4077L;
                    int32_t *l_1157[6][10][4] = {{{&l_1158,(void*)0,&l_1158,(void*)0},{&l_1158,(void*)0,&l_1158,(void*)0},{&l_1158,(void*)0,&l_1158,(void*)0},{&l_1158,(void*)0,&l_1158,(void*)0},{&l_1158,(void*)0,&l_1158,(void*)0},{&l_1158,(void*)0,&l_1158,(void*)0},{&l_1158,(void*)0,&l_1158,(void*)0},{&l_1158,(void*)0,&l_1158,(void*)0},{&l_1158,(void*)0,&l_1158,(void*)0},{&l_1158,(void*)0,&l_1158,(void*)0}},{{&l_1158,(void*)0,&l_1158,(void*)0},{&l_1158,(void*)0,&l_1158,(void*)0},{&l_1158,(void*)0,&l_1158,(void*)0},{&l_1158,(void*)0,&l_1158,(void*)0},{&l_1158,(void*)0,&l_1158,(void*)0},{&l_1158,(void*)0,&l_1158,(void*)0},{&l_1158,(void*)0,&l_1158,(void*)0},{&l_1158,(void*)0,&l_1158,(void*)0},{&l_1158,(void*)0,&l_1158,(void*)0},{&l_1158,(void*)0,&l_1158,(void*)0}},{{&l_1158,(void*)0,&l_1158,(void*)0},{&l_1158,(void*)0,&l_1158,(void*)0},{&l_1158,(void*)0,&l_1158,(void*)0},{&l_1158,(void*)0,&l_1158,(void*)0},{&l_1158,(void*)0,&l_1158,(void*)0},{&l_1158,(void*)0,&l_1158,(void*)0},{&l_1158,(void*)0,&l_1158,(void*)0},{&l_1158,(void*)0,&l_1158,(void*)0},{&l_1158,(void*)0,&l_1158,(void*)0},{&l_1158,(void*)0,&l_1158,(void*)0}},{{&l_1158,(void*)0,&l_1158,(void*)0},{&l_1158,(void*)0,&l_1158,(void*)0},{&l_1158,(void*)0,&l_1158,(void*)0},{&l_1158,(void*)0,&l_1158,(void*)0},{&l_1158,(void*)0,&l_1158,(void*)0},{&l_1158,(void*)0,&l_1158,(void*)0},{&l_1158,(void*)0,&l_1158,(void*)0},{&l_1158,(void*)0,&l_1158,(void*)0},{&l_1158,(void*)0,&l_1158,(void*)0},{&l_1158,(void*)0,&l_1158,(void*)0}},{{&l_1158,(void*)0,&l_1158,(void*)0},{&l_1158,(void*)0,&l_1158,(void*)0},{&l_1158,(void*)0,&l_1158,(void*)0},{&l_1158,(void*)0,&l_1158,(void*)0},{&l_1158,(void*)0,&l_1158,(void*)0},{&l_1158,(void*)0,&l_1158,(void*)0},{&l_1158,(void*)0,&l_1158,(void*)0},{&l_1158,(void*)0,&l_1158,(void*)0},{&l_1158,(void*)0,&l_1158,(void*)0},{&l_1158,(void*)0,&l_1158,(void*)0}},{{&l_1158,(void*)0,&l_1158,(void*)0},{&l_1158,(void*)0,&l_1158,(void*)0},{&l_1158,(void*)0,&l_1158,(void*)0},{&l_1158,(void*)0,&l_1158,(void*)0},{&l_1158,(void*)0,&l_1158,(void*)0},{&l_1158,(void*)0,&l_1158,(void*)0},{&l_1158,(void*)0,&l_1158,(void*)0},{&l_1158,(void*)0,&l_1158,(void*)0},{&l_1158,(void*)0,&l_1158,(void*)0},{&l_1158,(void*)0,&l_1158,(void*)0}}};
                    int32_t l_1163 = 0x51A85C7DL;
                    int i, j, k;
                    l_1157[3][4][0] = (void*)0;
                    for (l_1158 = 2; (l_1158 >= 0); l_1158 -= 1)
                    { /* block id: 562 */
                        struct S0 l_1159 = {0x04EC89EEFC2F4642L,1L};
                        struct S0 l_1160 = {0x38FD20E7016CAD1BL,0x57A6DD6AL};
                        int16_t l_1161 = 0x4A83L;
                        int32_t *l_1162 = &l_1159.f1;
                        l_1160 = l_1159;
                        l_1161 = (-1L);
                        l_1157[5][5][1] = l_1162;
                    }
                    l_1163 &= 0x6F02D069L;
                }
                l_1166 = (l_1165 = l_1164);
                if ((((l_1173 = ((l_1167 , 18446744073709551606UL) , (l_1168 , (l_1172 = (l_1171 = (l_1169 , l_1170)))))) , l_1174) , 0x13DBA944L))
                { /* block id: 574 */
                    struct S0 l_1175 = {0x773E40785F70FF2FL,1L};
                    struct S0 l_1176 = {3L,0x22F604C9L};
                    int64_t l_1179[4][2] = {{0x63B9F48F40066592L,0x63B9F48F40066592L},{0x63B9F48F40066592L,0x63B9F48F40066592L},{0x63B9F48F40066592L,0x63B9F48F40066592L},{0x63B9F48F40066592L,0x63B9F48F40066592L}};
                    int64_t *l_1178 = &l_1179[3][1];
                    int64_t **l_1177 = &l_1178;
                    int64_t **l_1180[3][7][5] = {{{&l_1178,&l_1178,&l_1178,&l_1178,&l_1178},{&l_1178,&l_1178,&l_1178,&l_1178,&l_1178},{&l_1178,&l_1178,&l_1178,&l_1178,&l_1178},{&l_1178,&l_1178,&l_1178,&l_1178,&l_1178},{&l_1178,&l_1178,&l_1178,&l_1178,&l_1178},{&l_1178,&l_1178,&l_1178,&l_1178,&l_1178},{&l_1178,&l_1178,&l_1178,&l_1178,&l_1178}},{{&l_1178,&l_1178,&l_1178,&l_1178,&l_1178},{&l_1178,&l_1178,&l_1178,&l_1178,&l_1178},{&l_1178,&l_1178,&l_1178,&l_1178,&l_1178},{&l_1178,&l_1178,&l_1178,&l_1178,&l_1178},{&l_1178,&l_1178,&l_1178,&l_1178,&l_1178},{&l_1178,&l_1178,&l_1178,&l_1178,&l_1178},{&l_1178,&l_1178,&l_1178,&l_1178,&l_1178}},{{&l_1178,&l_1178,&l_1178,&l_1178,&l_1178},{&l_1178,&l_1178,&l_1178,&l_1178,&l_1178},{&l_1178,&l_1178,&l_1178,&l_1178,&l_1178},{&l_1178,&l_1178,&l_1178,&l_1178,&l_1178},{&l_1178,&l_1178,&l_1178,&l_1178,&l_1178},{&l_1178,&l_1178,&l_1178,&l_1178,&l_1178},{&l_1178,&l_1178,&l_1178,&l_1178,&l_1178}}};
                    int32_t l_1181 = 0x140F1807L;
                    int64_t l_1182 = 0x4AD929D78B9A2820L;
                    int i, j, k;
                    l_1176 = l_1175;
                    l_1180[1][0][2] = (FAKE_DIVERGE(p_2824->local_0_offset, get_local_id(0), 10) , l_1177);
                    if (((l_1147[1][3][2] ^= ((l_1169 |= l_1181) , GROUP_DIVERGE(0, 1))) , (l_1171.f1 ^= (l_1173.f1 |= (l_1170.f1 &= l_1182)))))
                    { /* block id: 582 */
                        int64_t l_1183[3][2] = {{(-10L),(-10L)},{(-10L),(-10L)},{(-10L),(-10L)}};
                        uint32_t l_1184 = 4294967295UL;
                        int8_t l_1185 = 0x66L;
                        uint8_t l_1186 = 0x85L;
                        uint16_t l_1187 = 0xFEABL;
                        int16_t l_1188 = (-10L);
                        int16_t l_1189 = 0x43E4L;
                        uint16_t l_1190 = 0x9D38L;
                        int i, j;
                        l_1170.f1 &= l_1183[0][0];
                        l_1175.f1 = ((l_1155 = l_1184) , (l_1188 |= (((**l_1177) = l_1185) , (l_1187 ^= (l_1176.f1 |= l_1186)))));
                        l_1190++;
                    }
                    else
                    { /* block id: 591 */
                        int16_t l_1193[3];
                        uint32_t l_1194[7];
                        uint32_t l_1195 = 0x0DFB8672L;
                        uint32_t l_1198[10][8] = {{0x28BA41E8L,4294967295UL,0xD25E9660L,4294967295UL,0x28BA41E8L,1UL,0UL,4294967295UL},{0x28BA41E8L,4294967295UL,0xD25E9660L,4294967295UL,0x28BA41E8L,1UL,0UL,4294967295UL},{0x28BA41E8L,4294967295UL,0xD25E9660L,4294967295UL,0x28BA41E8L,1UL,0UL,4294967295UL},{0x28BA41E8L,4294967295UL,0xD25E9660L,4294967295UL,0x28BA41E8L,1UL,0UL,4294967295UL},{0x28BA41E8L,4294967295UL,0xD25E9660L,4294967295UL,0x28BA41E8L,1UL,0UL,4294967295UL},{0x28BA41E8L,4294967295UL,0xD25E9660L,4294967295UL,0x28BA41E8L,1UL,0UL,4294967295UL},{0x28BA41E8L,4294967295UL,0xD25E9660L,4294967295UL,0x28BA41E8L,1UL,0UL,4294967295UL},{0x28BA41E8L,4294967295UL,0xD25E9660L,4294967295UL,0x28BA41E8L,1UL,0UL,4294967295UL},{0x28BA41E8L,4294967295UL,0xD25E9660L,4294967295UL,0x28BA41E8L,1UL,0UL,4294967295UL},{0x28BA41E8L,4294967295UL,0xD25E9660L,4294967295UL,0x28BA41E8L,1UL,0UL,4294967295UL}};
                        uint64_t l_1201 = 7UL;
                        uint64_t *l_1200 = &l_1201;
                        uint64_t **l_1199 = &l_1200;
                        uint64_t **l_1202[5][10][5] = {{{&l_1200,&l_1200,&l_1200,(void*)0,&l_1200},{&l_1200,&l_1200,&l_1200,(void*)0,&l_1200},{&l_1200,&l_1200,&l_1200,(void*)0,&l_1200},{&l_1200,&l_1200,&l_1200,(void*)0,&l_1200},{&l_1200,&l_1200,&l_1200,(void*)0,&l_1200},{&l_1200,&l_1200,&l_1200,(void*)0,&l_1200},{&l_1200,&l_1200,&l_1200,(void*)0,&l_1200},{&l_1200,&l_1200,&l_1200,(void*)0,&l_1200},{&l_1200,&l_1200,&l_1200,(void*)0,&l_1200},{&l_1200,&l_1200,&l_1200,(void*)0,&l_1200}},{{&l_1200,&l_1200,&l_1200,(void*)0,&l_1200},{&l_1200,&l_1200,&l_1200,(void*)0,&l_1200},{&l_1200,&l_1200,&l_1200,(void*)0,&l_1200},{&l_1200,&l_1200,&l_1200,(void*)0,&l_1200},{&l_1200,&l_1200,&l_1200,(void*)0,&l_1200},{&l_1200,&l_1200,&l_1200,(void*)0,&l_1200},{&l_1200,&l_1200,&l_1200,(void*)0,&l_1200},{&l_1200,&l_1200,&l_1200,(void*)0,&l_1200},{&l_1200,&l_1200,&l_1200,(void*)0,&l_1200},{&l_1200,&l_1200,&l_1200,(void*)0,&l_1200}},{{&l_1200,&l_1200,&l_1200,(void*)0,&l_1200},{&l_1200,&l_1200,&l_1200,(void*)0,&l_1200},{&l_1200,&l_1200,&l_1200,(void*)0,&l_1200},{&l_1200,&l_1200,&l_1200,(void*)0,&l_1200},{&l_1200,&l_1200,&l_1200,(void*)0,&l_1200},{&l_1200,&l_1200,&l_1200,(void*)0,&l_1200},{&l_1200,&l_1200,&l_1200,(void*)0,&l_1200},{&l_1200,&l_1200,&l_1200,(void*)0,&l_1200},{&l_1200,&l_1200,&l_1200,(void*)0,&l_1200},{&l_1200,&l_1200,&l_1200,(void*)0,&l_1200}},{{&l_1200,&l_1200,&l_1200,(void*)0,&l_1200},{&l_1200,&l_1200,&l_1200,(void*)0,&l_1200},{&l_1200,&l_1200,&l_1200,(void*)0,&l_1200},{&l_1200,&l_1200,&l_1200,(void*)0,&l_1200},{&l_1200,&l_1200,&l_1200,(void*)0,&l_1200},{&l_1200,&l_1200,&l_1200,(void*)0,&l_1200},{&l_1200,&l_1200,&l_1200,(void*)0,&l_1200},{&l_1200,&l_1200,&l_1200,(void*)0,&l_1200},{&l_1200,&l_1200,&l_1200,(void*)0,&l_1200},{&l_1200,&l_1200,&l_1200,(void*)0,&l_1200}},{{&l_1200,&l_1200,&l_1200,(void*)0,&l_1200},{&l_1200,&l_1200,&l_1200,(void*)0,&l_1200},{&l_1200,&l_1200,&l_1200,(void*)0,&l_1200},{&l_1200,&l_1200,&l_1200,(void*)0,&l_1200},{&l_1200,&l_1200,&l_1200,(void*)0,&l_1200},{&l_1200,&l_1200,&l_1200,(void*)0,&l_1200},{&l_1200,&l_1200,&l_1200,(void*)0,&l_1200},{&l_1200,&l_1200,&l_1200,(void*)0,&l_1200},{&l_1200,&l_1200,&l_1200,(void*)0,&l_1200},{&l_1200,&l_1200,&l_1200,(void*)0,&l_1200}}};
                        int i, j, k;
                        for (i = 0; i < 3; i++)
                            l_1193[i] = (-1L);
                        for (i = 0; i < 7; i++)
                            l_1194[i] = 4294967295UL;
                        l_1172.f1 &= ((l_1193[1] |= 0xC822EF05L) , l_1194[4]);
                        l_1195--;
                        l_1171.f1 &= l_1198[6][1];
                        l_1202[4][2][0] = l_1199;
                    }
                }
                else
                { /* block id: 598 */
                    uint16_t *l_1204 = (void*)0;
                    uint16_t **l_1203 = &l_1204;
                    int32_t *l_1205 = (void*)0;
                    int32_t l_1207[5][6] = {{0x5B5DBF58L,0x108235B7L,0x5B5DBF58L,0x5B5DBF58L,0x108235B7L,0x5B5DBF58L},{0x5B5DBF58L,0x108235B7L,0x5B5DBF58L,0x5B5DBF58L,0x108235B7L,0x5B5DBF58L},{0x5B5DBF58L,0x108235B7L,0x5B5DBF58L,0x5B5DBF58L,0x108235B7L,0x5B5DBF58L},{0x5B5DBF58L,0x108235B7L,0x5B5DBF58L,0x5B5DBF58L,0x108235B7L,0x5B5DBF58L},{0x5B5DBF58L,0x108235B7L,0x5B5DBF58L,0x5B5DBF58L,0x108235B7L,0x5B5DBF58L}};
                    int32_t *l_1206 = &l_1207[4][1];
                    int i, j;
                    l_1203 = l_1203;
                    l_1206 = (l_1205 = (void*)0);
                }
            }
            for (l_1150 = 8; (l_1150 >= 3); --l_1150)
            { /* block id: 606 */
                int32_t l_1210 = 3L;
                for (l_1210 = 8; (l_1210 >= 0); l_1210 -= 1)
                { /* block id: 609 */
                    int32_t l_1211 = 0x42FD8037L;
                    for (l_1211 = 1; (l_1211 >= 0); l_1211 -= 1)
                    { /* block id: 612 */
                        int32_t l_1212 = 1L;
                        int64_t l_1213[10][8][3] = {{{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L},{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L},{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L},{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L},{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L},{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L},{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L},{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L}},{{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L},{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L},{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L},{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L},{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L},{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L},{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L},{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L}},{{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L},{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L},{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L},{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L},{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L},{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L},{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L},{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L}},{{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L},{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L},{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L},{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L},{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L},{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L},{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L},{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L}},{{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L},{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L},{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L},{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L},{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L},{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L},{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L},{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L}},{{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L},{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L},{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L},{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L},{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L},{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L},{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L},{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L}},{{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L},{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L},{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L},{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L},{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L},{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L},{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L},{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L}},{{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L},{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L},{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L},{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L},{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L},{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L},{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L},{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L}},{{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L},{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L},{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L},{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L},{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L},{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L},{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L},{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L}},{{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L},{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L},{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L},{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L},{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L},{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L},{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L},{0x4D1345A04B3DF615L,0x05E880CD99438912L,6L}}};
                        uint8_t l_1214 = 9UL;
                        int i, j, k;
                        l_1212 ^= 0L;
                        --l_1214;
                    }
                }
            }
            l_1217 = (void*)0;
        }
        else
        { /* block id: 619 */
            uint32_t l_1218 = 0x17561EC6L;
            l_1218++;
        }
        for (l_832 = 0; (l_832 >= 36); l_832 = safe_add_func_uint8_t_u_u(l_832, 6))
        { /* block id: 624 */
            int64_t l_1223[8] = {0x473584063E72E5CCL,0L,0x473584063E72E5CCL,0x473584063E72E5CCL,0L,0x473584063E72E5CCL,0x473584063E72E5CCL,0L};
            int i;
            l_1223[6] = (-2L);
            for (l_1223[3] = 10; (l_1223[3] > 9); l_1223[3]--)
            { /* block id: 628 */
                int32_t l_1227 = 0x4B13F996L;
                int32_t *l_1226 = &l_1227;
                int32_t *l_1228[1];
                int8_t l_1229 = 4L;
                struct S0 l_1258 = {0x6B832F3F0812133BL,0L};
                struct S0 *l_1257 = &l_1258;
                struct S0 *l_1259[2][10];
                int32_t l_1260 = 1L;
                int32_t l_1261 = 3L;
                uint8_t l_1262 = 255UL;
                int i, j;
                for (i = 0; i < 1; i++)
                    l_1228[i] = (void*)0;
                for (i = 0; i < 2; i++)
                {
                    for (j = 0; j < 10; j++)
                        l_1259[i][j] = &l_1258;
                }
                l_1228[0] = l_1226;
                if (l_1229)
                { /* block id: 630 */
                    int32_t l_1230 = 0x4D5D7A72L;
                    uint8_t l_1246 = 5UL;
                    for (l_1230 = (-16); (l_1230 != 15); l_1230++)
                    { /* block id: 633 */
                        int32_t l_1233 = (-8L);
                        int8_t l_1234 = 0L;
                        uint32_t l_1235[1];
                        uint64_t l_1236 = 1UL;
                        uint32_t l_1237 = 0UL;
                        int32_t l_1238 = 3L;
                        int16_t l_1239 = 0L;
                        int8_t l_1240 = 7L;
                        int8_t l_1241[5][9] = {{(-1L),0x45L,(-1L),(-1L),0x45L,(-1L),(-1L),0x45L,(-1L)},{(-1L),0x45L,(-1L),(-1L),0x45L,(-1L),(-1L),0x45L,(-1L)},{(-1L),0x45L,(-1L),(-1L),0x45L,(-1L),(-1L),0x45L,(-1L)},{(-1L),0x45L,(-1L),(-1L),0x45L,(-1L),(-1L),0x45L,(-1L)},{(-1L),0x45L,(-1L),(-1L),0x45L,(-1L),(-1L),0x45L,(-1L)}};
                        int64_t l_1242 = 2L;
                        uint8_t l_1243 = 0x2AL;
                        int i, j;
                        for (i = 0; i < 1; i++)
                            l_1235[i] = 1UL;
                        l_1234 |= l_1233;
                        l_1236 = ((*l_1226) = l_1235[0]);
                        l_1238 = (l_1237 = ((*l_1226) |= 0L));
                        ++l_1243;
                    }
                    --l_1246;
                }
                else
                { /* block id: 643 */
                    int8_t l_1249 = 0x3AL;
                    int32_t l_1250 = 1L;
                    int16_t l_1251 = 0x1E97L;
                    int16_t l_1252 = 9L;
                    uint16_t l_1253 = 65526UL;
                    int32_t *l_1256[3][7] = {{&l_1250,(void*)0,&l_1250,&l_1250,(void*)0,&l_1250,&l_1250},{&l_1250,(void*)0,&l_1250,&l_1250,(void*)0,&l_1250,&l_1250},{&l_1250,(void*)0,&l_1250,&l_1250,(void*)0,&l_1250,&l_1250}};
                    int i, j;
                    ++l_1253;
                    l_1256[0][4] = (l_1226 = l_1256[2][4]);
                }
                l_1259[1][6] = l_1257;
                ++l_1262;
            }
        }
        unsigned int result = 0;
        result += l_832;
        result += l_833;
        int l_1147_i0, l_1147_i1, l_1147_i2;
        for (l_1147_i0 = 0; l_1147_i0 < 8; l_1147_i0++) {
            for (l_1147_i1 = 0; l_1147_i1 < 7; l_1147_i1++) {
                for (l_1147_i2 = 0; l_1147_i2 < 3; l_1147_i2++) {
                    result += l_1147[l_1147_i0][l_1147_i1][l_1147_i2];
                }
            }
        }
        result += l_1148;
        result += l_1149;
        atomic_add(&p_2824->g_special_values[54 * get_linear_group_id() + 33], result);
    }
    else
    { /* block id: 652 */
        (1 + 1);
    }
    if ((safe_lshift_func_int8_t_s_s((safe_add_func_uint16_t_u_u((((safe_div_func_uint32_t_u_u(((safe_lshift_func_uint8_t_u_s(((safe_div_func_int32_t_s_s((safe_div_func_int16_t_s_s(((p_2824->g_1279[0][0] = (void*)0) == ((safe_unary_minus_func_int8_t_s((safe_rshift_func_int8_t_s_u(((****p_2824->g_582) = (((*l_1284) = l_1283) <= (safe_sub_func_int64_t_s_s((((((p_57 , (l_1296[7][1][6] |= (((*l_1295) = (((safe_sub_func_int32_t_s_s((safe_mod_func_uint32_t_u_u(1UL, (safe_sub_func_uint8_t_u_u(p_57, 0UL)))), (p_2824->g_744[2][0] ^ (safe_sub_func_uint16_t_u_u(l_1283, ((*p_2824->g_320) &= (l_1283 && p_57))))))) , (-1L)) | 0x415DL)) >= FAKE_DIVERGE(p_2824->local_2_offset, get_local_id(2), 10)))) <= l_1283) > l_1283) , l_1297) == (void*)0), 1L)))), p_2824->g_308[1][8])))) , l_1298)), p_57)), 1UL)) || 0x34A73AE64307340EL), 1)) , 0UL), p_2824->g_98)) | 0x2EDAC4F7L) || p_2824->g_1299), l_1283)), l_1283)))
    { /* block id: 661 */
        uint64_t l_1303 = 0xCD546947A84EB978L;
        uint64_t *l_1319 = &p_2824->g_541[7][0][3];
        int16_t l_1328 = 0L;
        int32_t l_1329 = 0x1C6D4839L;
        int32_t **l_1339 = &p_2824->g_32;
        int32_t *l_1342 = &p_2824->g_260;
        int32_t l_1349 = 1L;
        int32_t l_1435 = 0L;
        int32_t l_1437 = 0x7AA245F1L;
        int32_t l_1440 = (-4L);
        int32_t l_1441 = 0x653BD22AL;
        int32_t l_1442 = (-1L);
        int32_t l_1446 = 6L;
        int32_t l_1448 = 0x70C94E6FL;
        int32_t l_1449 = (-6L);
        int32_t l_1451 = 0L;
        int32_t l_1452 = 0x2AC56670L;
        int32_t l_1453 = 0L;
        int32_t l_1454 = 0x234EE957L;
        int32_t l_1456 = (-9L);
        int32_t l_1459 = (-2L);
        int32_t l_1460 = 0x1281ECA8L;
        int32_t l_1462 = 0x4672D36AL;
        int32_t l_1463 = (-1L);
        int32_t l_1464 = 0x4EA21BCEL;
        int32_t l_1465 = (-1L);
        int32_t *l_1535 = &l_1283;
        int32_t *l_1536 = (void*)0;
        int32_t *l_1537[2];
        int i;
        for (i = 0; i < 2; i++)
            l_1537[i] = &l_1464;
        for (p_2824->g_33 = 0; (p_2824->g_33 <= 1); p_2824->g_33 += 1)
        { /* block id: 664 */
            int32_t *l_1300 = (void*)0;
            int32_t *l_1301 = &l_1296[4][1][6];
            int32_t *l_1302[6] = {&p_2824->g_542[3][1],(void*)0,&p_2824->g_542[3][1],&p_2824->g_542[3][1],(void*)0,&p_2824->g_542[3][1]};
            uint32_t l_1350 = 0xF011B1FCL;
            struct S0 **l_1386 = &p_2824->g_1381;
            uint8_t l_1466[9][7] = {{0xE8L,0xE8L,1UL,0xCEL,0x8FL,0xFAL,0x36L},{0xE8L,0xE8L,1UL,0xCEL,0x8FL,0xFAL,0x36L},{0xE8L,0xE8L,1UL,0xCEL,0x8FL,0xFAL,0x36L},{0xE8L,0xE8L,1UL,0xCEL,0x8FL,0xFAL,0x36L},{0xE8L,0xE8L,1UL,0xCEL,0x8FL,0xFAL,0x36L},{0xE8L,0xE8L,1UL,0xCEL,0x8FL,0xFAL,0x36L},{0xE8L,0xE8L,1UL,0xCEL,0x8FL,0xFAL,0x36L},{0xE8L,0xE8L,1UL,0xCEL,0x8FL,0xFAL,0x36L},{0xE8L,0xE8L,1UL,0xCEL,0x8FL,0xFAL,0x36L}};
            union U2 *l_1474 = &p_2824->g_1475;
            int8_t l_1488 = 0x44L;
            int i, j;
            l_1303--;
            if (p_57)
                continue;
            if ((+(p_2824->g_744[0][0] , 0x260AC5DDL)))
            { /* block id: 667 */
                uint32_t l_1322 = 0x90F449C6L;
                int32_t l_1325 = 0x494321F1L;
                int32_t l_1327[9][4] = {{0x475C7259L,(-3L),(-3L),0x475C7259L},{0x475C7259L,(-3L),(-3L),0x475C7259L},{0x475C7259L,(-3L),(-3L),0x475C7259L},{0x475C7259L,(-3L),(-3L),0x475C7259L},{0x475C7259L,(-3L),(-3L),0x475C7259L},{0x475C7259L,(-3L),(-3L),0x475C7259L},{0x475C7259L,(-3L),(-3L),0x475C7259L},{0x475C7259L,(-3L),(-3L),0x475C7259L},{0x475C7259L,(-3L),(-3L),0x475C7259L}};
                uint32_t l_1334 = 0xCA97CDAEL;
                int i, j;
                for (p_2824->g_172 = 1; (p_2824->g_172 >= 0); p_2824->g_172 -= 1)
                { /* block id: 670 */
                    int32_t **l_1306 = &l_1302[2];
                    int64_t *l_1320 = (void*)0;
                    int64_t *l_1321[1][6][10] = {{{&p_2824->g_172,&p_2824->g_472,&p_2824->g_172,(void*)0,&p_2824->g_472,(void*)0,&p_2824->g_172,&p_2824->g_472,&p_2824->g_172,&p_2824->g_172},{&p_2824->g_172,&p_2824->g_472,&p_2824->g_172,(void*)0,&p_2824->g_472,(void*)0,&p_2824->g_172,&p_2824->g_472,&p_2824->g_172,&p_2824->g_172},{&p_2824->g_172,&p_2824->g_472,&p_2824->g_172,(void*)0,&p_2824->g_472,(void*)0,&p_2824->g_172,&p_2824->g_472,&p_2824->g_172,&p_2824->g_172},{&p_2824->g_172,&p_2824->g_472,&p_2824->g_172,(void*)0,&p_2824->g_472,(void*)0,&p_2824->g_172,&p_2824->g_472,&p_2824->g_172,&p_2824->g_172},{&p_2824->g_172,&p_2824->g_472,&p_2824->g_172,(void*)0,&p_2824->g_472,(void*)0,&p_2824->g_172,&p_2824->g_472,&p_2824->g_172,&p_2824->g_172},{&p_2824->g_172,&p_2824->g_472,&p_2824->g_172,(void*)0,&p_2824->g_472,(void*)0,&p_2824->g_172,&p_2824->g_472,&p_2824->g_172,&p_2824->g_172}}};
                    int32_t l_1326[8][5][2] = {{{7L,(-10L)},{7L,(-10L)},{7L,(-10L)},{7L,(-10L)},{7L,(-10L)}},{{7L,(-10L)},{7L,(-10L)},{7L,(-10L)},{7L,(-10L)},{7L,(-10L)}},{{7L,(-10L)},{7L,(-10L)},{7L,(-10L)},{7L,(-10L)},{7L,(-10L)}},{{7L,(-10L)},{7L,(-10L)},{7L,(-10L)},{7L,(-10L)},{7L,(-10L)}},{{7L,(-10L)},{7L,(-10L)},{7L,(-10L)},{7L,(-10L)},{7L,(-10L)}},{{7L,(-10L)},{7L,(-10L)},{7L,(-10L)},{7L,(-10L)},{7L,(-10L)}},{{7L,(-10L)},{7L,(-10L)},{7L,(-10L)},{7L,(-10L)},{7L,(-10L)}},{{7L,(-10L)},{7L,(-10L)},{7L,(-10L)},{7L,(-10L)},{7L,(-10L)}}};
                    int i, j, k;
                    (*l_1306) = l_1302[1];
                    if ((+((0xF1F341BEL || (safe_div_func_int8_t_s_s((safe_mod_func_int8_t_s_s((safe_sub_func_int64_t_s_s((l_1283 = ((((p_2824->g_541[5][0][2] , (((*l_1295) = 0x7A5C0DFC7E654A22L) < ((((((((safe_mod_func_int32_t_s_s((p_2824->g_1299 && (p_2824->g_542[(p_2824->g_172 + 1)][p_2824->g_172] = (safe_sub_func_uint8_t_u_u(0UL, (!((p_2824->g_308[0][2] , ((!(!(p_2824->g_719[p_2824->g_33][(p_2824->g_33 + 1)] != p_2824->g_719[p_2824->g_172][(p_2824->g_33 + 8)]))) < (safe_rshift_func_uint8_t_u_u(2UL, p_2824->g_542[1][1])))) > (*l_1301))))))), p_57)) | p_57) , p_57) , l_1319) == (void*)0) || p_57) | 3UL) >= 0x78D8BF53L))) > 1L) == 0x341B0C96L) & p_57)), l_1303)), p_2824->g_140[9][0][6])), 0x7BL))) || l_1322)))
                    { /* block id: 675 */
                        int32_t l_1323 = 8L;
                        int32_t l_1324[6][3] = {{0x65DE10AFL,0x65DE10AFL,(-4L)},{0x65DE10AFL,0x65DE10AFL,(-4L)},{0x65DE10AFL,0x65DE10AFL,(-4L)},{0x65DE10AFL,0x65DE10AFL,(-4L)},{0x65DE10AFL,0x65DE10AFL,(-4L)},{0x65DE10AFL,0x65DE10AFL,(-4L)}};
                        uint16_t l_1333 = 0x2DF7L;
                        int i, j;
                        l_1330--;
                        if (l_1333)
                            continue;
                    }
                    else
                    { /* block id: 678 */
                        if (l_1329)
                            break;
                        if (p_56)
                            continue;
                    }
                    --l_1334;
                    for (p_2824->g_108 = 1; (p_2824->g_108 >= 0); p_2824->g_108 -= 1)
                    { /* block id: 685 */
                        if (l_1334)
                            break;
                    }
                }
                (*l_1339) = func_74((p_56 > (safe_div_func_uint32_t_u_u(p_2824->g_563, p_56))), p_56, l_1339, p_2824->g_323, l_1327[2][3], p_2824);
            }
            else
            { /* block id: 690 */
                int32_t *l_1340 = &l_1296[7][1][6];
                int32_t l_1345 = 0x3B058FD4L;
                int32_t l_1346[2][1][5] = {{{0x51BA8DE9L,0x51BA8DE9L,0x51BA8DE9L,0x51BA8DE9L,0x51BA8DE9L}},{{0x51BA8DE9L,0x51BA8DE9L,0x51BA8DE9L,0x51BA8DE9L,0x51BA8DE9L}}};
                struct S0 **l_1388 = &p_2824->g_1381;
                int i, j, k;
                for (l_1328 = 0; (l_1328 <= 2); l_1328 += 1)
                { /* block id: 693 */
                    int32_t *l_1341[4][8] = {{(void*)0,&l_1329,&l_1329,(void*)0,(void*)0,&p_2824->g_33,&p_2824->g_33,(void*)0},{(void*)0,&l_1329,&l_1329,(void*)0,(void*)0,&p_2824->g_33,&p_2824->g_33,(void*)0},{(void*)0,&l_1329,&l_1329,(void*)0,(void*)0,&p_2824->g_33,&p_2824->g_33,(void*)0},{(void*)0,&l_1329,&l_1329,(void*)0,(void*)0,&p_2824->g_33,&p_2824->g_33,(void*)0}};
                    struct S0 l_1359 = {0L,0x3AE11277L};
                    int32_t l_1368 = 0x2A01C887L;
                    int i, j;
                    for (p_2824->g_1299 = 2; (p_2824->g_1299 >= 0); p_2824->g_1299 -= 1)
                    { /* block id: 696 */
                        return l_1302[3];
                    }
                    l_1345 ^= ((+(&p_2824->g_260 != ((p_56 >= p_57) , (p_57 , l_1342)))) ^ (((*l_1301) > (p_57 || (-8L))) , ((void*)0 == l_1343[6])));
                    for (p_2824->g_172 = 0; (p_2824->g_172 <= 1); p_2824->g_172 += 1)
                    { /* block id: 702 */
                        int64_t l_1347[4][8][8] = {{{0x33D6E88AFA2260BCL,0L,0x322E1617D6842D84L,0x0CD6442EE01025EFL,0x322E1617D6842D84L,0L,0x33D6E88AFA2260BCL,0L},{0x33D6E88AFA2260BCL,0L,0x322E1617D6842D84L,0x0CD6442EE01025EFL,0x322E1617D6842D84L,0L,0x33D6E88AFA2260BCL,0L},{0x33D6E88AFA2260BCL,0L,0x322E1617D6842D84L,0x0CD6442EE01025EFL,0x322E1617D6842D84L,0L,0x33D6E88AFA2260BCL,0L},{0x33D6E88AFA2260BCL,0L,0x322E1617D6842D84L,0x0CD6442EE01025EFL,0x322E1617D6842D84L,0L,0x33D6E88AFA2260BCL,0L},{0x33D6E88AFA2260BCL,0L,0x322E1617D6842D84L,0x0CD6442EE01025EFL,0x322E1617D6842D84L,0L,0x33D6E88AFA2260BCL,0L},{0x33D6E88AFA2260BCL,0L,0x322E1617D6842D84L,0x0CD6442EE01025EFL,0x322E1617D6842D84L,0L,0x33D6E88AFA2260BCL,0L},{0x33D6E88AFA2260BCL,0L,0x322E1617D6842D84L,0x0CD6442EE01025EFL,0x322E1617D6842D84L,0L,0x33D6E88AFA2260BCL,0L},{0x33D6E88AFA2260BCL,0L,0x322E1617D6842D84L,0x0CD6442EE01025EFL,0x322E1617D6842D84L,0L,0x33D6E88AFA2260BCL,0L}},{{0x33D6E88AFA2260BCL,0L,0x322E1617D6842D84L,0x0CD6442EE01025EFL,0x322E1617D6842D84L,0L,0x33D6E88AFA2260BCL,0L},{0x33D6E88AFA2260BCL,0L,0x322E1617D6842D84L,0x0CD6442EE01025EFL,0x322E1617D6842D84L,0L,0x33D6E88AFA2260BCL,0L},{0x33D6E88AFA2260BCL,0L,0x322E1617D6842D84L,0x0CD6442EE01025EFL,0x322E1617D6842D84L,0L,0x33D6E88AFA2260BCL,0L},{0x33D6E88AFA2260BCL,0L,0x322E1617D6842D84L,0x0CD6442EE01025EFL,0x322E1617D6842D84L,0L,0x33D6E88AFA2260BCL,0L},{0x33D6E88AFA2260BCL,0L,0x322E1617D6842D84L,0x0CD6442EE01025EFL,0x322E1617D6842D84L,0L,0x33D6E88AFA2260BCL,0L},{0x33D6E88AFA2260BCL,0L,0x322E1617D6842D84L,0x0CD6442EE01025EFL,0x322E1617D6842D84L,0L,0x33D6E88AFA2260BCL,0L},{0x33D6E88AFA2260BCL,0L,0x322E1617D6842D84L,0x0CD6442EE01025EFL,0x322E1617D6842D84L,0L,0x33D6E88AFA2260BCL,0L},{0x33D6E88AFA2260BCL,0L,0x322E1617D6842D84L,0x0CD6442EE01025EFL,0x322E1617D6842D84L,0L,0x33D6E88AFA2260BCL,0L}},{{0x33D6E88AFA2260BCL,0L,0x322E1617D6842D84L,0x0CD6442EE01025EFL,0x322E1617D6842D84L,0L,0x33D6E88AFA2260BCL,0L},{0x33D6E88AFA2260BCL,0L,0x322E1617D6842D84L,0x0CD6442EE01025EFL,0x322E1617D6842D84L,0L,0x33D6E88AFA2260BCL,0L},{0x33D6E88AFA2260BCL,0L,0x322E1617D6842D84L,0x0CD6442EE01025EFL,0x322E1617D6842D84L,0L,0x33D6E88AFA2260BCL,0L},{0x33D6E88AFA2260BCL,0L,0x322E1617D6842D84L,0x0CD6442EE01025EFL,0x322E1617D6842D84L,0L,0x33D6E88AFA2260BCL,0L},{0x33D6E88AFA2260BCL,0L,0x322E1617D6842D84L,0x0CD6442EE01025EFL,0x322E1617D6842D84L,0L,0x33D6E88AFA2260BCL,0L},{0x33D6E88AFA2260BCL,0L,0x322E1617D6842D84L,0x0CD6442EE01025EFL,0x322E1617D6842D84L,0L,0x33D6E88AFA2260BCL,0L},{0x33D6E88AFA2260BCL,0L,0x322E1617D6842D84L,0x0CD6442EE01025EFL,0x322E1617D6842D84L,0L,0x33D6E88AFA2260BCL,0L},{0x33D6E88AFA2260BCL,0L,0x322E1617D6842D84L,0x0CD6442EE01025EFL,0x322E1617D6842D84L,0L,0x33D6E88AFA2260BCL,0L}},{{0x33D6E88AFA2260BCL,0L,0x322E1617D6842D84L,0x0CD6442EE01025EFL,0x322E1617D6842D84L,0L,0x33D6E88AFA2260BCL,0L},{0x33D6E88AFA2260BCL,0L,0x322E1617D6842D84L,0x0CD6442EE01025EFL,0x322E1617D6842D84L,0L,0x33D6E88AFA2260BCL,0L},{0x33D6E88AFA2260BCL,0L,0x322E1617D6842D84L,0x0CD6442EE01025EFL,0x322E1617D6842D84L,0L,0x33D6E88AFA2260BCL,0L},{0x33D6E88AFA2260BCL,0L,0x322E1617D6842D84L,0x0CD6442EE01025EFL,0x322E1617D6842D84L,0L,0x33D6E88AFA2260BCL,0L},{0x33D6E88AFA2260BCL,0L,0x322E1617D6842D84L,0x0CD6442EE01025EFL,0x322E1617D6842D84L,0L,0x33D6E88AFA2260BCL,0L},{0x33D6E88AFA2260BCL,0L,0x322E1617D6842D84L,0x0CD6442EE01025EFL,0x322E1617D6842D84L,0L,0x33D6E88AFA2260BCL,0L},{0x33D6E88AFA2260BCL,0L,0x322E1617D6842D84L,0x0CD6442EE01025EFL,0x322E1617D6842D84L,0L,0x33D6E88AFA2260BCL,0L},{0x33D6E88AFA2260BCL,0L,0x322E1617D6842D84L,0x0CD6442EE01025EFL,0x322E1617D6842D84L,0L,0x33D6E88AFA2260BCL,0L}}};
                        int32_t l_1348 = 1L;
                        uint8_t *l_1354[6] = {&p_2824->g_744[6][0],&p_2824->g_744[6][0],&p_2824->g_744[6][0],&p_2824->g_744[6][0],&p_2824->g_744[6][0],&p_2824->g_744[6][0]};
                        int i, j, k;
                        if (p_57)
                            break;
                        ++l_1350;
                        l_1329 |= ((p_2824->g_308[1][6] &= (((safe_unary_minus_func_int16_t_s(((*l_1284) = (((*l_1340) = (p_2824->g_744[8][3] = 0xE3L)) != (((l_1347[1][6][2] <= FAKE_DIVERGE(p_2824->global_0_offset, get_global_id(0), 10)) < ((((l_1348 |= ((safe_add_func_uint32_t_u_u(((p_2824->g_140[(p_2824->g_172 + 1)][p_2824->g_33][(l_1328 + 1)] ^= (safe_mul_func_uint16_t_u_u((l_1359 , p_56), p_2824->g_697.f0))) ^ (p_2824->g_97 || (GROUP_DIVERGE(1, 1) != ((safe_rshift_func_int8_t_s_s((safe_mod_func_int64_t_s_s(0x170D3D71CD73DD92L, p_2824->g_215)), 3)) < ((safe_sub_func_uint16_t_u_u(p_56, 0xB400L)) , 0xC5L))))), 1L)) == p_56)) && p_56) > p_57) , p_56)) == p_56))))) || 5L) < p_57)) , l_1368);
                        (*l_1340) &= p_57;
                    }
                }
                for (p_2824->g_89 = 0; (p_2824->g_89 <= 1); p_2824->g_89 += 1)
                { /* block id: 717 */
                    int32_t *l_1369 = &l_1283;
                    struct S1 *l_1371 = &p_2824->g_1372;
                    int8_t ***l_1410 = &p_2824->g_193;
                    uint32_t l_1411[5];
                    int i;
                    for (i = 0; i < 5; i++)
                        l_1411[i] = 4294967295UL;
                    for (p_57 = 0; (p_57 <= 1); p_57 += 1)
                    { /* block id: 720 */
                        int32_t *l_1370 = &p_2824->g_542[0][1];
                        return l_1370;
                    }
                    for (p_2824->g_1299 = 0; (p_2824->g_1299 <= 1); p_2824->g_1299 += 1)
                    { /* block id: 725 */
                        struct S1 **l_1373[10][6] = {{&l_1371,&l_1371,(void*)0,&l_1371,&l_1297,&l_1371},{&l_1371,&l_1371,(void*)0,&l_1371,&l_1297,&l_1371},{&l_1371,&l_1371,(void*)0,&l_1371,&l_1297,&l_1371},{&l_1371,&l_1371,(void*)0,&l_1371,&l_1297,&l_1371},{&l_1371,&l_1371,(void*)0,&l_1371,&l_1297,&l_1371},{&l_1371,&l_1371,(void*)0,&l_1371,&l_1297,&l_1371},{&l_1371,&l_1371,(void*)0,&l_1371,&l_1297,&l_1371},{&l_1371,&l_1371,(void*)0,&l_1371,&l_1297,&l_1371},{&l_1371,&l_1371,(void*)0,&l_1371,&l_1297,&l_1371},{&l_1371,&l_1371,(void*)0,&l_1371,&l_1297,&l_1371}};
                        int32_t l_1378 = (-9L);
                        int i, j;
                        p_2824->g_1374[1][0][2] = l_1371;
                        if (l_1378)
                            break;
                    }
                    for (p_2824->g_1375.f7 = 0; (p_2824->g_1375.f7 <= 1); p_2824->g_1375.f7 += 1)
                    { /* block id: 731 */
                        int32_t *l_1379 = (void*)0;
                        struct S0 ***l_1382 = &p_2824->g_1380[1];
                        struct S0 **l_1385 = &p_2824->g_1381;
                        struct S0 ***l_1384[3];
                        int8_t ***l_1409[9][9] = {{&p_2824->g_200[1][1],&p_2824->g_200[1][1],&p_2824->g_200[0][1],&p_2824->g_200[0][0],&p_2824->g_193,&p_2824->g_200[0][0],&p_2824->g_200[0][1],&p_2824->g_200[1][1],&p_2824->g_200[1][1]},{&p_2824->g_200[1][1],&p_2824->g_200[1][1],&p_2824->g_200[0][1],&p_2824->g_200[0][0],&p_2824->g_193,&p_2824->g_200[0][0],&p_2824->g_200[0][1],&p_2824->g_200[1][1],&p_2824->g_200[1][1]},{&p_2824->g_200[1][1],&p_2824->g_200[1][1],&p_2824->g_200[0][1],&p_2824->g_200[0][0],&p_2824->g_193,&p_2824->g_200[0][0],&p_2824->g_200[0][1],&p_2824->g_200[1][1],&p_2824->g_200[1][1]},{&p_2824->g_200[1][1],&p_2824->g_200[1][1],&p_2824->g_200[0][1],&p_2824->g_200[0][0],&p_2824->g_193,&p_2824->g_200[0][0],&p_2824->g_200[0][1],&p_2824->g_200[1][1],&p_2824->g_200[1][1]},{&p_2824->g_200[1][1],&p_2824->g_200[1][1],&p_2824->g_200[0][1],&p_2824->g_200[0][0],&p_2824->g_193,&p_2824->g_200[0][0],&p_2824->g_200[0][1],&p_2824->g_200[1][1],&p_2824->g_200[1][1]},{&p_2824->g_200[1][1],&p_2824->g_200[1][1],&p_2824->g_200[0][1],&p_2824->g_200[0][0],&p_2824->g_193,&p_2824->g_200[0][0],&p_2824->g_200[0][1],&p_2824->g_200[1][1],&p_2824->g_200[1][1]},{&p_2824->g_200[1][1],&p_2824->g_200[1][1],&p_2824->g_200[0][1],&p_2824->g_200[0][0],&p_2824->g_193,&p_2824->g_200[0][0],&p_2824->g_200[0][1],&p_2824->g_200[1][1],&p_2824->g_200[1][1]},{&p_2824->g_200[1][1],&p_2824->g_200[1][1],&p_2824->g_200[0][1],&p_2824->g_200[0][0],&p_2824->g_193,&p_2824->g_200[0][0],&p_2824->g_200[0][1],&p_2824->g_200[1][1],&p_2824->g_200[1][1]},{&p_2824->g_200[1][1],&p_2824->g_200[1][1],&p_2824->g_200[0][1],&p_2824->g_200[0][0],&p_2824->g_193,&p_2824->g_200[0][0],&p_2824->g_200[0][1],&p_2824->g_200[1][1],&p_2824->g_200[1][1]}};
                        int i, j;
                        for (i = 0; i < 3; i++)
                            l_1384[i] = &l_1385;
                        l_1369 = &l_1346[1][0][3];
                        l_1379 = &l_1296[3][2][6];
                        l_1345 &= (((p_2824->g_1387 = (l_1386 = (p_2824->g_1383 = ((*l_1382) = p_2824->g_1380[5])))) != l_1388) >= (((safe_mul_func_uint16_t_u_u((safe_div_func_int16_t_s_s((safe_lshift_func_uint16_t_u_s(l_1296[7][1][6], 13)), (((safe_add_func_uint16_t_u_u((safe_mul_func_int8_t_s_s((*l_1369), (safe_div_func_uint32_t_u_u((safe_add_func_int32_t_s_s(((-6L) & 0x4532L), (p_56 < (((((p_2824->g_1377[6].f3 ^ (((((*l_1295) = ((~((((((safe_sub_func_uint8_t_u_u((safe_rshift_func_uint16_t_u_u(((*p_2824->g_320) |= FAKE_DIVERGE(p_2824->local_0_offset, get_local_id(0), 10)), 3)), (((safe_rshift_func_uint16_t_u_s((((*p_2824->g_583) = (*p_2824->g_583)) == (void*)0), 8)) && (*l_1369)) , FAKE_DIVERGE(p_2824->global_2_offset, get_global_id(2), 10)))) > p_2824->g_1372.f9.f0) == (*l_1379)) , (**p_2824->g_193)) , 0xF067DB0FBE319E85L) , FAKE_DIVERGE(p_2824->group_2_offset, get_group_id(2), 10))) , 0x14E7A6CBDB6B3BCCL)) > (-10L)) , l_1409[2][8]) != l_1410)) == p_2824->g_1376.f0) || p_56) , p_2824->g_215) , 0x3F5FL)))), l_1411[3])))), (*l_1379))) , 0x2CA74982L) , p_57))), (*l_1369))) >= FAKE_DIVERGE(p_2824->local_0_offset, get_local_id(0), 10)) < l_1330));
                    }
                    for (p_2824->g_1376.f8 = 1; (p_2824->g_1376.f8 >= 0); p_2824->g_1376.f8 -= 1)
                    { /* block id: 745 */
                        int32_t *l_1412 = &p_2824->g_1375.f9.f1;
                        return l_1412;
                    }
                }
            }
            for (p_2824->g_260 = 0; (p_2824->g_260 <= 1); p_2824->g_260 += 1)
            { /* block id: 752 */
                int16_t l_1434[3];
                int32_t l_1436 = (-1L);
                int32_t l_1438 = 0x64848802L;
                int32_t l_1439 = (-6L);
                int32_t l_1443 = (-1L);
                int32_t l_1444 = (-1L);
                int32_t l_1445 = (-1L);
                int32_t l_1447 = (-1L);
                int32_t l_1450 = (-5L);
                int32_t l_1457 = 0x4601A2E6L;
                int32_t l_1458 = 6L;
                int32_t l_1461[4];
                struct S0 ***l_1510[9] = {&l_1386,&l_1386,&l_1386,&l_1386,&l_1386,&l_1386,&l_1386,&l_1386,&l_1386};
                int8_t ***l_1512 = &p_2824->g_193;
                int32_t *l_1534 = &l_1349;
                int i;
                for (i = 0; i < 3; i++)
                    l_1434[i] = (-1L);
                for (i = 0; i < 4; i++)
                    l_1461[i] = 0x26410521L;
                if ((l_1296[7][1][6] = p_57))
                { /* block id: 754 */
                    int32_t *l_1413 = &p_2824->g_1376.f8;
                    return l_1413;
                }
                else
                { /* block id: 756 */
                    uint16_t l_1429 = 0x3E9FL;
                    int32_t l_1433[4] = {(-6L),(-6L),(-6L),(-6L)};
                    union U2 *l_1473 = (void*)0;
                    int32_t **l_1489 = &p_2824->g_32;
                    int i;
                    for (p_2824->g_1376.f7 = 0; (p_2824->g_1376.f7 <= 1); p_2824->g_1376.f7 += 1)
                    { /* block id: 759 */
                        l_1283 = ((*l_1301) = (-8L));
                        (*l_1339) = (void*)0;
                    }
                    for (p_2824->g_323 = 0; (p_2824->g_323 <= 1); p_2824->g_323 += 1)
                    { /* block id: 766 */
                        int32_t l_1428 = (-3L);
                        int32_t l_1432[2][6];
                        int8_t l_1455 = 0x18L;
                        int i, j, k;
                        for (i = 0; i < 2; i++)
                        {
                            for (j = 0; j < 6; j++)
                                l_1432[i][j] = 0x0484E67AL;
                        }
                        if (p_57)
                            break;
                        (*l_1339) = func_74(((void*)0 != (*p_2824->g_582)), ((((p_57 ^ ((safe_add_func_uint32_t_u_u((safe_div_func_uint16_t_u_u(((void*)0 != &p_2824->g_225), (safe_sub_func_int16_t_s_s(p_2824->g_541[5][0][2], (safe_mod_func_int16_t_s_s(p_57, (safe_rshift_func_uint8_t_u_s((safe_lshift_func_uint16_t_u_u(p_56, 12)), 4)))))))), ((((p_57 > 0x2EA10E33L) <= l_1428) , p_2824->g_1372.f9.f1) & p_2824->g_1372.f0))) == l_1296[4][0][2])) <= p_57) ^ p_56) > 0x28L), l_1339, p_2824->g_111[1].f0, p_2824->g_570, p_2824);
                        l_1429--;
                        ++l_1466[5][0];
                    }
                    if (p_57)
                        continue;
                    (*l_1339) = func_74(((*l_1284) = (safe_add_func_uint64_t_u_u((safe_mod_func_int8_t_s_s(((~p_56) != (l_1473 == l_1474)), (safe_rshift_func_int8_t_s_u(p_57, ((safe_lshift_func_uint16_t_u_s((0UL < (((*l_1301) != (((safe_add_func_int32_t_s_s((safe_add_func_int16_t_s_s((safe_rshift_func_int16_t_s_u(p_2824->g_98, p_56)), ((safe_sub_func_uint64_t_u_u(l_1456, 0UL)) & p_57))), 0x2C9B7980L)) ^ (*p_2824->g_194)) < (***p_2824->g_583))) < p_56)), l_1488)) >= p_2824->g_1377[6].f0))))), 0x35FDF167727ECAECL))), l_1461[2], l_1489, p_57, p_57, p_2824);
                }
                for (p_2824->g_225 = 1; (p_2824->g_225 >= 0); p_2824->g_225 -= 1)
                { /* block id: 778 */
                    int64_t l_1490 = 2L;
                    for (p_2824->g_1372.f5 = 0; (p_2824->g_1372.f5 <= 1); p_2824->g_1372.f5 += 1)
                    { /* block id: 781 */
                        (*l_1339) = (void*)0;
                        (*l_1301) = p_56;
                        (*l_1301) = 0x0D18F946L;
                    }
                    ++l_1491;
                    (*l_1301) = p_56;
                    for (l_1349 = 1; (l_1349 >= 0); l_1349 -= 1)
                    { /* block id: 790 */
                        int64_t l_1502[5][9][5] = {{{0L,0L,0L,0x44DB95E31C50B080L,0x26789D1FF63E275AL},{0L,0L,0L,0x44DB95E31C50B080L,0x26789D1FF63E275AL},{0L,0L,0L,0x44DB95E31C50B080L,0x26789D1FF63E275AL},{0L,0L,0L,0x44DB95E31C50B080L,0x26789D1FF63E275AL},{0L,0L,0L,0x44DB95E31C50B080L,0x26789D1FF63E275AL},{0L,0L,0L,0x44DB95E31C50B080L,0x26789D1FF63E275AL},{0L,0L,0L,0x44DB95E31C50B080L,0x26789D1FF63E275AL},{0L,0L,0L,0x44DB95E31C50B080L,0x26789D1FF63E275AL},{0L,0L,0L,0x44DB95E31C50B080L,0x26789D1FF63E275AL}},{{0L,0L,0L,0x44DB95E31C50B080L,0x26789D1FF63E275AL},{0L,0L,0L,0x44DB95E31C50B080L,0x26789D1FF63E275AL},{0L,0L,0L,0x44DB95E31C50B080L,0x26789D1FF63E275AL},{0L,0L,0L,0x44DB95E31C50B080L,0x26789D1FF63E275AL},{0L,0L,0L,0x44DB95E31C50B080L,0x26789D1FF63E275AL},{0L,0L,0L,0x44DB95E31C50B080L,0x26789D1FF63E275AL},{0L,0L,0L,0x44DB95E31C50B080L,0x26789D1FF63E275AL},{0L,0L,0L,0x44DB95E31C50B080L,0x26789D1FF63E275AL},{0L,0L,0L,0x44DB95E31C50B080L,0x26789D1FF63E275AL}},{{0L,0L,0L,0x44DB95E31C50B080L,0x26789D1FF63E275AL},{0L,0L,0L,0x44DB95E31C50B080L,0x26789D1FF63E275AL},{0L,0L,0L,0x44DB95E31C50B080L,0x26789D1FF63E275AL},{0L,0L,0L,0x44DB95E31C50B080L,0x26789D1FF63E275AL},{0L,0L,0L,0x44DB95E31C50B080L,0x26789D1FF63E275AL},{0L,0L,0L,0x44DB95E31C50B080L,0x26789D1FF63E275AL},{0L,0L,0L,0x44DB95E31C50B080L,0x26789D1FF63E275AL},{0L,0L,0L,0x44DB95E31C50B080L,0x26789D1FF63E275AL},{0L,0L,0L,0x44DB95E31C50B080L,0x26789D1FF63E275AL}},{{0L,0L,0L,0x44DB95E31C50B080L,0x26789D1FF63E275AL},{0L,0L,0L,0x44DB95E31C50B080L,0x26789D1FF63E275AL},{0L,0L,0L,0x44DB95E31C50B080L,0x26789D1FF63E275AL},{0L,0L,0L,0x44DB95E31C50B080L,0x26789D1FF63E275AL},{0L,0L,0L,0x44DB95E31C50B080L,0x26789D1FF63E275AL},{0L,0L,0L,0x44DB95E31C50B080L,0x26789D1FF63E275AL},{0L,0L,0L,0x44DB95E31C50B080L,0x26789D1FF63E275AL},{0L,0L,0L,0x44DB95E31C50B080L,0x26789D1FF63E275AL},{0L,0L,0L,0x44DB95E31C50B080L,0x26789D1FF63E275AL}},{{0L,0L,0L,0x44DB95E31C50B080L,0x26789D1FF63E275AL},{0L,0L,0L,0x44DB95E31C50B080L,0x26789D1FF63E275AL},{0L,0L,0L,0x44DB95E31C50B080L,0x26789D1FF63E275AL},{0L,0L,0L,0x44DB95E31C50B080L,0x26789D1FF63E275AL},{0L,0L,0L,0x44DB95E31C50B080L,0x26789D1FF63E275AL},{0L,0L,0L,0x44DB95E31C50B080L,0x26789D1FF63E275AL},{0L,0L,0L,0x44DB95E31C50B080L,0x26789D1FF63E275AL},{0L,0L,0L,0x44DB95E31C50B080L,0x26789D1FF63E275AL},{0L,0L,0L,0x44DB95E31C50B080L,0x26789D1FF63E275AL}}};
                        int i, j, k;
                        (*l_1301) &= (((l_1494 , (((safe_unary_minus_func_int32_t_s(((+(safe_add_func_int32_t_s_s((p_2824->g_1376.f3 , (0x67L != (safe_rshift_func_uint16_t_u_u((((*p_2824->g_582) = (**l_1298)) != ((((safe_div_func_uint16_t_u_u(l_1502[2][7][2], (safe_sub_func_uint8_t_u_u(254UL, (safe_unary_minus_func_uint32_t_u(((safe_rshift_func_uint16_t_u_u((safe_div_func_int16_t_s_s((l_1330 && (((void*)0 != l_1510[6]) , l_1511)), l_1502[2][7][2])), (*p_2824->g_320))) , 4294967295UL))))))) < 254UL) && l_1494) , l_1512)), GROUP_DIVERGE(2, 1))))), l_1445))) & l_1490))) && p_56) != p_56)) <= p_2824->g_1372.f7) <= l_1502[2][7][2]);
                        (*l_1301) = p_56;
                    }
                }
                for (p_2824->g_1372.f0 = 0; (p_2824->g_1372.f0 <= 1); p_2824->g_1372.f0 += 1)
                { /* block id: 798 */
                    uint16_t l_1523 = 0x44BAL;
                    (*l_1301) |= (p_56 >= (safe_sub_func_int64_t_s_s(((void*)0 == &l_1339), (safe_lshift_func_uint8_t_u_s(GROUP_DIVERGE(0, 1), ((&l_1278 != ((safe_mul_func_int16_t_s_s((safe_add_func_uint16_t_u_u(((9L | ((l_1523 > (((safe_lshift_func_uint8_t_u_u(((safe_mul_func_uint8_t_u_u((((*p_2824->g_320) &= GROUP_DIVERGE(1, 1)) >= p_56), ((--(*l_1295)) | ((safe_add_func_int8_t_s_s((safe_sub_func_int32_t_s_s(l_1523, 4L)), p_57)) >= p_2824->g_1375.f5)))) , p_2824->g_215), FAKE_DIVERGE(p_2824->group_0_offset, get_group_id(0), 10))) , (void*)0) == (*l_1512))) > l_1523)) != GROUP_DIVERGE(2, 1)), 0x51ACL)), p_2824->g_1375.f9.f0)) , &p_2824->g_1279[0][0])) < p_2824->g_1475.f0))))));
                    l_1534 = &l_1296[6][1][2];
                }
            }
        }
        l_1538 = (FAKE_DIVERGE(p_2824->local_2_offset, get_local_id(2), 10) , (l_1296[3][2][2] = (l_1441 = ((*l_1535) &= p_56))));
    }
    else
    { /* block id: 810 */
        uint32_t l_1540[9][8][3] = {{{1UL,1UL,4UL},{1UL,1UL,4UL},{1UL,1UL,4UL},{1UL,1UL,4UL},{1UL,1UL,4UL},{1UL,1UL,4UL},{1UL,1UL,4UL},{1UL,1UL,4UL}},{{1UL,1UL,4UL},{1UL,1UL,4UL},{1UL,1UL,4UL},{1UL,1UL,4UL},{1UL,1UL,4UL},{1UL,1UL,4UL},{1UL,1UL,4UL},{1UL,1UL,4UL}},{{1UL,1UL,4UL},{1UL,1UL,4UL},{1UL,1UL,4UL},{1UL,1UL,4UL},{1UL,1UL,4UL},{1UL,1UL,4UL},{1UL,1UL,4UL},{1UL,1UL,4UL}},{{1UL,1UL,4UL},{1UL,1UL,4UL},{1UL,1UL,4UL},{1UL,1UL,4UL},{1UL,1UL,4UL},{1UL,1UL,4UL},{1UL,1UL,4UL},{1UL,1UL,4UL}},{{1UL,1UL,4UL},{1UL,1UL,4UL},{1UL,1UL,4UL},{1UL,1UL,4UL},{1UL,1UL,4UL},{1UL,1UL,4UL},{1UL,1UL,4UL},{1UL,1UL,4UL}},{{1UL,1UL,4UL},{1UL,1UL,4UL},{1UL,1UL,4UL},{1UL,1UL,4UL},{1UL,1UL,4UL},{1UL,1UL,4UL},{1UL,1UL,4UL},{1UL,1UL,4UL}},{{1UL,1UL,4UL},{1UL,1UL,4UL},{1UL,1UL,4UL},{1UL,1UL,4UL},{1UL,1UL,4UL},{1UL,1UL,4UL},{1UL,1UL,4UL},{1UL,1UL,4UL}},{{1UL,1UL,4UL},{1UL,1UL,4UL},{1UL,1UL,4UL},{1UL,1UL,4UL},{1UL,1UL,4UL},{1UL,1UL,4UL},{1UL,1UL,4UL},{1UL,1UL,4UL}},{{1UL,1UL,4UL},{1UL,1UL,4UL},{1UL,1UL,4UL},{1UL,1UL,4UL},{1UL,1UL,4UL},{1UL,1UL,4UL},{1UL,1UL,4UL},{1UL,1UL,4UL}}};
        int32_t l_1546[5];
        uint32_t l_1576 = 1UL;
        uint32_t l_1588 = 4294967291UL;
        int8_t ****l_1655[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int i, j, k;
        for (i = 0; i < 5; i++)
            l_1546[i] = 0x51DADB6BL;
        for (p_2824->g_33 = 0; (p_2824->g_33 <= 8); p_2824->g_33 += 1)
        { /* block id: 813 */
            struct S0 *l_1542 = &p_2824->g_1376.f9;
            int32_t *l_1544[6][6][7] = {{{(void*)0,&p_2824->g_542[1][1],(void*)0,(void*)0,(void*)0,&p_2824->g_542[0][0],&p_2824->g_542[0][0]},{(void*)0,&p_2824->g_542[1][1],(void*)0,(void*)0,(void*)0,&p_2824->g_542[0][0],&p_2824->g_542[0][0]},{(void*)0,&p_2824->g_542[1][1],(void*)0,(void*)0,(void*)0,&p_2824->g_542[0][0],&p_2824->g_542[0][0]},{(void*)0,&p_2824->g_542[1][1],(void*)0,(void*)0,(void*)0,&p_2824->g_542[0][0],&p_2824->g_542[0][0]},{(void*)0,&p_2824->g_542[1][1],(void*)0,(void*)0,(void*)0,&p_2824->g_542[0][0],&p_2824->g_542[0][0]},{(void*)0,&p_2824->g_542[1][1],(void*)0,(void*)0,(void*)0,&p_2824->g_542[0][0],&p_2824->g_542[0][0]}},{{(void*)0,&p_2824->g_542[1][1],(void*)0,(void*)0,(void*)0,&p_2824->g_542[0][0],&p_2824->g_542[0][0]},{(void*)0,&p_2824->g_542[1][1],(void*)0,(void*)0,(void*)0,&p_2824->g_542[0][0],&p_2824->g_542[0][0]},{(void*)0,&p_2824->g_542[1][1],(void*)0,(void*)0,(void*)0,&p_2824->g_542[0][0],&p_2824->g_542[0][0]},{(void*)0,&p_2824->g_542[1][1],(void*)0,(void*)0,(void*)0,&p_2824->g_542[0][0],&p_2824->g_542[0][0]},{(void*)0,&p_2824->g_542[1][1],(void*)0,(void*)0,(void*)0,&p_2824->g_542[0][0],&p_2824->g_542[0][0]},{(void*)0,&p_2824->g_542[1][1],(void*)0,(void*)0,(void*)0,&p_2824->g_542[0][0],&p_2824->g_542[0][0]}},{{(void*)0,&p_2824->g_542[1][1],(void*)0,(void*)0,(void*)0,&p_2824->g_542[0][0],&p_2824->g_542[0][0]},{(void*)0,&p_2824->g_542[1][1],(void*)0,(void*)0,(void*)0,&p_2824->g_542[0][0],&p_2824->g_542[0][0]},{(void*)0,&p_2824->g_542[1][1],(void*)0,(void*)0,(void*)0,&p_2824->g_542[0][0],&p_2824->g_542[0][0]},{(void*)0,&p_2824->g_542[1][1],(void*)0,(void*)0,(void*)0,&p_2824->g_542[0][0],&p_2824->g_542[0][0]},{(void*)0,&p_2824->g_542[1][1],(void*)0,(void*)0,(void*)0,&p_2824->g_542[0][0],&p_2824->g_542[0][0]},{(void*)0,&p_2824->g_542[1][1],(void*)0,(void*)0,(void*)0,&p_2824->g_542[0][0],&p_2824->g_542[0][0]}},{{(void*)0,&p_2824->g_542[1][1],(void*)0,(void*)0,(void*)0,&p_2824->g_542[0][0],&p_2824->g_542[0][0]},{(void*)0,&p_2824->g_542[1][1],(void*)0,(void*)0,(void*)0,&p_2824->g_542[0][0],&p_2824->g_542[0][0]},{(void*)0,&p_2824->g_542[1][1],(void*)0,(void*)0,(void*)0,&p_2824->g_542[0][0],&p_2824->g_542[0][0]},{(void*)0,&p_2824->g_542[1][1],(void*)0,(void*)0,(void*)0,&p_2824->g_542[0][0],&p_2824->g_542[0][0]},{(void*)0,&p_2824->g_542[1][1],(void*)0,(void*)0,(void*)0,&p_2824->g_542[0][0],&p_2824->g_542[0][0]},{(void*)0,&p_2824->g_542[1][1],(void*)0,(void*)0,(void*)0,&p_2824->g_542[0][0],&p_2824->g_542[0][0]}},{{(void*)0,&p_2824->g_542[1][1],(void*)0,(void*)0,(void*)0,&p_2824->g_542[0][0],&p_2824->g_542[0][0]},{(void*)0,&p_2824->g_542[1][1],(void*)0,(void*)0,(void*)0,&p_2824->g_542[0][0],&p_2824->g_542[0][0]},{(void*)0,&p_2824->g_542[1][1],(void*)0,(void*)0,(void*)0,&p_2824->g_542[0][0],&p_2824->g_542[0][0]},{(void*)0,&p_2824->g_542[1][1],(void*)0,(void*)0,(void*)0,&p_2824->g_542[0][0],&p_2824->g_542[0][0]},{(void*)0,&p_2824->g_542[1][1],(void*)0,(void*)0,(void*)0,&p_2824->g_542[0][0],&p_2824->g_542[0][0]},{(void*)0,&p_2824->g_542[1][1],(void*)0,(void*)0,(void*)0,&p_2824->g_542[0][0],&p_2824->g_542[0][0]}},{{(void*)0,&p_2824->g_542[1][1],(void*)0,(void*)0,(void*)0,&p_2824->g_542[0][0],&p_2824->g_542[0][0]},{(void*)0,&p_2824->g_542[1][1],(void*)0,(void*)0,(void*)0,&p_2824->g_542[0][0],&p_2824->g_542[0][0]},{(void*)0,&p_2824->g_542[1][1],(void*)0,(void*)0,(void*)0,&p_2824->g_542[0][0],&p_2824->g_542[0][0]},{(void*)0,&p_2824->g_542[1][1],(void*)0,(void*)0,(void*)0,&p_2824->g_542[0][0],&p_2824->g_542[0][0]},{(void*)0,&p_2824->g_542[1][1],(void*)0,(void*)0,(void*)0,&p_2824->g_542[0][0],&p_2824->g_542[0][0]},{(void*)0,&p_2824->g_542[1][1],(void*)0,(void*)0,(void*)0,&p_2824->g_542[0][0],&p_2824->g_542[0][0]}}};
            int32_t l_1554 = 0x01877F3FL;
            int16_t l_1560 = 0x260AL;
            int i, j, k;
            (**p_2824->g_1383) = l_1539;
            if (l_1540[0][4][0])
                break;
            for (p_2824->g_323 = 0; (p_2824->g_323 <= 1); p_2824->g_323 += 1)
            { /* block id: 818 */
                uint16_t l_1541 = 65535UL;
                int32_t *l_1545 = &p_2824->g_111[1].f1;
                int32_t l_1547 = (-7L);
                int32_t l_1549 = 0x2510338FL;
                int32_t l_1550 = 1L;
                int32_t l_1552 = 0x2123AA03L;
                int32_t l_1553 = 0x65423972L;
                int32_t l_1559 = 0x71FD232FL;
                uint32_t l_1561 = 0x5FAABE1AL;
                int32_t *l_1565[2][10];
                int64_t *l_1568 = &p_2824->g_472;
                int64_t **l_1567[9] = {&l_1568,&l_1568,&l_1568,&l_1568,&l_1568,&l_1568,&l_1568,&l_1568,&l_1568};
                int8_t **l_1587 = &p_2824->g_194;
                int i, j;
                for (i = 0; i < 2; i++)
                {
                    for (j = 0; j < 10; j++)
                        l_1565[i][j] = (void*)0;
                }
                for (p_2824->g_655 = 0; (p_2824->g_655 <= 8); p_2824->g_655 += 1)
                { /* block id: 821 */
                    int16_t l_1551 = 0x2F19L;
                    int32_t l_1555 = 4L;
                    int32_t l_1556 = 0L;
                    int32_t l_1557 = 0x740D63D3L;
                    int32_t l_1558 = 0x4139BC84L;
                    if (l_1541)
                    { /* block id: 822 */
                        int32_t *l_1543 = &l_1296[3][1][3];
                        (*p_2824->g_1387) = (void*)0;
                        (*p_2824->g_1387) = l_1542;
                        return l_1545;
                    }
                    else
                    { /* block id: 826 */
                        int32_t l_1548[6][6][6] = {{{0L,(-1L),0x7CE5628BL,4L,4L,0x7CE5628BL},{0L,(-1L),0x7CE5628BL,4L,4L,0x7CE5628BL},{0L,(-1L),0x7CE5628BL,4L,4L,0x7CE5628BL},{0L,(-1L),0x7CE5628BL,4L,4L,0x7CE5628BL},{0L,(-1L),0x7CE5628BL,4L,4L,0x7CE5628BL},{0L,(-1L),0x7CE5628BL,4L,4L,0x7CE5628BL}},{{0L,(-1L),0x7CE5628BL,4L,4L,0x7CE5628BL},{0L,(-1L),0x7CE5628BL,4L,4L,0x7CE5628BL},{0L,(-1L),0x7CE5628BL,4L,4L,0x7CE5628BL},{0L,(-1L),0x7CE5628BL,4L,4L,0x7CE5628BL},{0L,(-1L),0x7CE5628BL,4L,4L,0x7CE5628BL},{0L,(-1L),0x7CE5628BL,4L,4L,0x7CE5628BL}},{{0L,(-1L),0x7CE5628BL,4L,4L,0x7CE5628BL},{0L,(-1L),0x7CE5628BL,4L,4L,0x7CE5628BL},{0L,(-1L),0x7CE5628BL,4L,4L,0x7CE5628BL},{0L,(-1L),0x7CE5628BL,4L,4L,0x7CE5628BL},{0L,(-1L),0x7CE5628BL,4L,4L,0x7CE5628BL},{0L,(-1L),0x7CE5628BL,4L,4L,0x7CE5628BL}},{{0L,(-1L),0x7CE5628BL,4L,4L,0x7CE5628BL},{0L,(-1L),0x7CE5628BL,4L,4L,0x7CE5628BL},{0L,(-1L),0x7CE5628BL,4L,4L,0x7CE5628BL},{0L,(-1L),0x7CE5628BL,4L,4L,0x7CE5628BL},{0L,(-1L),0x7CE5628BL,4L,4L,0x7CE5628BL},{0L,(-1L),0x7CE5628BL,4L,4L,0x7CE5628BL}},{{0L,(-1L),0x7CE5628BL,4L,4L,0x7CE5628BL},{0L,(-1L),0x7CE5628BL,4L,4L,0x7CE5628BL},{0L,(-1L),0x7CE5628BL,4L,4L,0x7CE5628BL},{0L,(-1L),0x7CE5628BL,4L,4L,0x7CE5628BL},{0L,(-1L),0x7CE5628BL,4L,4L,0x7CE5628BL},{0L,(-1L),0x7CE5628BL,4L,4L,0x7CE5628BL}},{{0L,(-1L),0x7CE5628BL,4L,4L,0x7CE5628BL},{0L,(-1L),0x7CE5628BL,4L,4L,0x7CE5628BL},{0L,(-1L),0x7CE5628BL,4L,4L,0x7CE5628BL},{0L,(-1L),0x7CE5628BL,4L,4L,0x7CE5628BL},{0L,(-1L),0x7CE5628BL,4L,4L,0x7CE5628BL},{0L,(-1L),0x7CE5628BL,4L,4L,0x7CE5628BL}}};
                        int i, j, k;
                        if (p_56)
                            break;
                        l_1561++;
                        return l_1565[1][8];
                    }
                }
                for (p_2824->g_122 = 0; (p_2824->g_122 <= 1); p_2824->g_122 += 1)
                { /* block id: 834 */
                    int32_t l_1566 = 0x2666554AL;
                    uint32_t l_1595 = 0x26A285A0L;
                    int32_t l_1596 = 0x014B38A5L;
                    int i, j, k;
                    l_1566 = 0x502AEC52L;
                    l_1546[3] = (p_56 > (p_57 ^ ((l_1567[8] == p_2824->g_1569[9]) & ((((safe_sub_func_int8_t_s_s((GROUP_DIVERGE(2, 1) && ((safe_rshift_func_uint8_t_u_u(l_1576, (safe_rshift_func_uint16_t_u_u((p_2824->g_1375.f9.f1 >= p_56), 12)))) <= l_1540[0][4][0])), (safe_mod_func_int16_t_s_s((((void*)0 == (**p_2824->g_582)) ^ 0L), p_57)))) & FAKE_DIVERGE(p_2824->global_0_offset, get_global_id(0), 10)) < 0UL) != (-10L)))));
                    if (l_1566)
                        break;
                    (*l_1545) = (safe_sub_func_int8_t_s_s(((safe_mul_func_int8_t_s_s(((safe_lshift_func_int16_t_s_s(((void*)0 == l_1587), 4)) & (l_1588 > 0x6E743652L)), ((l_1596 ^= (safe_lshift_func_uint8_t_u_s((((l_1540[5][7][0] ^ ((safe_mod_func_uint8_t_u_u((0x2EC9B5A1958210BCL || l_1566), ((safe_rshift_func_uint16_t_u_u((p_56 = ((((void*)0 == &p_2824->g_719[0][4]) == p_2824->g_225) & (****p_2824->g_582))), l_1595)) & p_2824->g_308[0][2]))) <= p_2824->g_1372.f1)) <= 0x843AA5D02F75E34DL) != 0UL), l_1546[3]))) <= p_57))) >= 0xE83B92B05C80FC13L), (***p_2824->g_583)));
                }
                if ((atomic_inc(&p_2824->l_atomic_input[42]) == 1))
                { /* block id: 843 */
                    uint16_t l_1597 = 0UL;
                    uint32_t l_1606[1];
                    int i;
                    for (i = 0; i < 1; i++)
                        l_1606[i] = 0x2661CA74L;
                    if (l_1597)
                    { /* block id: 844 */
                        uint64_t l_1598 = 0xC3ED1F6204DEC970L;
                        uint32_t l_1599[6][9] = {{4294967294UL,0x108A342AL,1UL,4294967290UL,1UL,0x108A342AL,4294967294UL,4294967293UL,4294967293UL},{4294967294UL,0x108A342AL,1UL,4294967290UL,1UL,0x108A342AL,4294967294UL,4294967293UL,4294967293UL},{4294967294UL,0x108A342AL,1UL,4294967290UL,1UL,0x108A342AL,4294967294UL,4294967293UL,4294967293UL},{4294967294UL,0x108A342AL,1UL,4294967290UL,1UL,0x108A342AL,4294967294UL,4294967293UL,4294967293UL},{4294967294UL,0x108A342AL,1UL,4294967290UL,1UL,0x108A342AL,4294967294UL,4294967293UL,4294967293UL},{4294967294UL,0x108A342AL,1UL,4294967290UL,1UL,0x108A342AL,4294967294UL,4294967293UL,4294967293UL}};
                        int i, j;
                        l_1599[5][0] &= l_1598;
                    }
                    else
                    { /* block id: 846 */
                        uint32_t l_1600 = 0xB4FC28DCL;
                        int16_t l_1603 = 0L;
                        int8_t l_1604 = 0L;
                        uint32_t l_1605[5] = {4294967293UL,4294967293UL,4294967293UL,4294967293UL,4294967293UL};
                        int i;
                        --l_1600;
                        l_1605[1] |= (l_1604 = (l_1603 , 0x7B45E43EL));
                    }
                    if (l_1606[0])
                    { /* block id: 851 */
                        int32_t l_1608[6] = {(-3L),(-3L),(-3L),(-3L),(-3L),(-3L)};
                        int32_t *l_1607 = &l_1608[4];
                        int32_t *l_1609 = &l_1608[4];
                        struct S0 l_1610[6][7][6] = {{{{8L,0L},{0x48A6B61784C96FE4L,9L},{8L,0L},{1L,0x68CFF7EDL},{0x72C7FEB993B488CFL,0x4266B6E1L},{0x089A1F7F5652779FL,-1L}},{{8L,0L},{0x48A6B61784C96FE4L,9L},{8L,0L},{1L,0x68CFF7EDL},{0x72C7FEB993B488CFL,0x4266B6E1L},{0x089A1F7F5652779FL,-1L}},{{8L,0L},{0x48A6B61784C96FE4L,9L},{8L,0L},{1L,0x68CFF7EDL},{0x72C7FEB993B488CFL,0x4266B6E1L},{0x089A1F7F5652779FL,-1L}},{{8L,0L},{0x48A6B61784C96FE4L,9L},{8L,0L},{1L,0x68CFF7EDL},{0x72C7FEB993B488CFL,0x4266B6E1L},{0x089A1F7F5652779FL,-1L}},{{8L,0L},{0x48A6B61784C96FE4L,9L},{8L,0L},{1L,0x68CFF7EDL},{0x72C7FEB993B488CFL,0x4266B6E1L},{0x089A1F7F5652779FL,-1L}},{{8L,0L},{0x48A6B61784C96FE4L,9L},{8L,0L},{1L,0x68CFF7EDL},{0x72C7FEB993B488CFL,0x4266B6E1L},{0x089A1F7F5652779FL,-1L}},{{8L,0L},{0x48A6B61784C96FE4L,9L},{8L,0L},{1L,0x68CFF7EDL},{0x72C7FEB993B488CFL,0x4266B6E1L},{0x089A1F7F5652779FL,-1L}}},{{{8L,0L},{0x48A6B61784C96FE4L,9L},{8L,0L},{1L,0x68CFF7EDL},{0x72C7FEB993B488CFL,0x4266B6E1L},{0x089A1F7F5652779FL,-1L}},{{8L,0L},{0x48A6B61784C96FE4L,9L},{8L,0L},{1L,0x68CFF7EDL},{0x72C7FEB993B488CFL,0x4266B6E1L},{0x089A1F7F5652779FL,-1L}},{{8L,0L},{0x48A6B61784C96FE4L,9L},{8L,0L},{1L,0x68CFF7EDL},{0x72C7FEB993B488CFL,0x4266B6E1L},{0x089A1F7F5652779FL,-1L}},{{8L,0L},{0x48A6B61784C96FE4L,9L},{8L,0L},{1L,0x68CFF7EDL},{0x72C7FEB993B488CFL,0x4266B6E1L},{0x089A1F7F5652779FL,-1L}},{{8L,0L},{0x48A6B61784C96FE4L,9L},{8L,0L},{1L,0x68CFF7EDL},{0x72C7FEB993B488CFL,0x4266B6E1L},{0x089A1F7F5652779FL,-1L}},{{8L,0L},{0x48A6B61784C96FE4L,9L},{8L,0L},{1L,0x68CFF7EDL},{0x72C7FEB993B488CFL,0x4266B6E1L},{0x089A1F7F5652779FL,-1L}},{{8L,0L},{0x48A6B61784C96FE4L,9L},{8L,0L},{1L,0x68CFF7EDL},{0x72C7FEB993B488CFL,0x4266B6E1L},{0x089A1F7F5652779FL,-1L}}},{{{8L,0L},{0x48A6B61784C96FE4L,9L},{8L,0L},{1L,0x68CFF7EDL},{0x72C7FEB993B488CFL,0x4266B6E1L},{0x089A1F7F5652779FL,-1L}},{{8L,0L},{0x48A6B61784C96FE4L,9L},{8L,0L},{1L,0x68CFF7EDL},{0x72C7FEB993B488CFL,0x4266B6E1L},{0x089A1F7F5652779FL,-1L}},{{8L,0L},{0x48A6B61784C96FE4L,9L},{8L,0L},{1L,0x68CFF7EDL},{0x72C7FEB993B488CFL,0x4266B6E1L},{0x089A1F7F5652779FL,-1L}},{{8L,0L},{0x48A6B61784C96FE4L,9L},{8L,0L},{1L,0x68CFF7EDL},{0x72C7FEB993B488CFL,0x4266B6E1L},{0x089A1F7F5652779FL,-1L}},{{8L,0L},{0x48A6B61784C96FE4L,9L},{8L,0L},{1L,0x68CFF7EDL},{0x72C7FEB993B488CFL,0x4266B6E1L},{0x089A1F7F5652779FL,-1L}},{{8L,0L},{0x48A6B61784C96FE4L,9L},{8L,0L},{1L,0x68CFF7EDL},{0x72C7FEB993B488CFL,0x4266B6E1L},{0x089A1F7F5652779FL,-1L}},{{8L,0L},{0x48A6B61784C96FE4L,9L},{8L,0L},{1L,0x68CFF7EDL},{0x72C7FEB993B488CFL,0x4266B6E1L},{0x089A1F7F5652779FL,-1L}}},{{{8L,0L},{0x48A6B61784C96FE4L,9L},{8L,0L},{1L,0x68CFF7EDL},{0x72C7FEB993B488CFL,0x4266B6E1L},{0x089A1F7F5652779FL,-1L}},{{8L,0L},{0x48A6B61784C96FE4L,9L},{8L,0L},{1L,0x68CFF7EDL},{0x72C7FEB993B488CFL,0x4266B6E1L},{0x089A1F7F5652779FL,-1L}},{{8L,0L},{0x48A6B61784C96FE4L,9L},{8L,0L},{1L,0x68CFF7EDL},{0x72C7FEB993B488CFL,0x4266B6E1L},{0x089A1F7F5652779FL,-1L}},{{8L,0L},{0x48A6B61784C96FE4L,9L},{8L,0L},{1L,0x68CFF7EDL},{0x72C7FEB993B488CFL,0x4266B6E1L},{0x089A1F7F5652779FL,-1L}},{{8L,0L},{0x48A6B61784C96FE4L,9L},{8L,0L},{1L,0x68CFF7EDL},{0x72C7FEB993B488CFL,0x4266B6E1L},{0x089A1F7F5652779FL,-1L}},{{8L,0L},{0x48A6B61784C96FE4L,9L},{8L,0L},{1L,0x68CFF7EDL},{0x72C7FEB993B488CFL,0x4266B6E1L},{0x089A1F7F5652779FL,-1L}},{{8L,0L},{0x48A6B61784C96FE4L,9L},{8L,0L},{1L,0x68CFF7EDL},{0x72C7FEB993B488CFL,0x4266B6E1L},{0x089A1F7F5652779FL,-1L}}},{{{8L,0L},{0x48A6B61784C96FE4L,9L},{8L,0L},{1L,0x68CFF7EDL},{0x72C7FEB993B488CFL,0x4266B6E1L},{0x089A1F7F5652779FL,-1L}},{{8L,0L},{0x48A6B61784C96FE4L,9L},{8L,0L},{1L,0x68CFF7EDL},{0x72C7FEB993B488CFL,0x4266B6E1L},{0x089A1F7F5652779FL,-1L}},{{8L,0L},{0x48A6B61784C96FE4L,9L},{8L,0L},{1L,0x68CFF7EDL},{0x72C7FEB993B488CFL,0x4266B6E1L},{0x089A1F7F5652779FL,-1L}},{{8L,0L},{0x48A6B61784C96FE4L,9L},{8L,0L},{1L,0x68CFF7EDL},{0x72C7FEB993B488CFL,0x4266B6E1L},{0x089A1F7F5652779FL,-1L}},{{8L,0L},{0x48A6B61784C96FE4L,9L},{8L,0L},{1L,0x68CFF7EDL},{0x72C7FEB993B488CFL,0x4266B6E1L},{0x089A1F7F5652779FL,-1L}},{{8L,0L},{0x48A6B61784C96FE4L,9L},{8L,0L},{1L,0x68CFF7EDL},{0x72C7FEB993B488CFL,0x4266B6E1L},{0x089A1F7F5652779FL,-1L}},{{8L,0L},{0x48A6B61784C96FE4L,9L},{8L,0L},{1L,0x68CFF7EDL},{0x72C7FEB993B488CFL,0x4266B6E1L},{0x089A1F7F5652779FL,-1L}}},{{{8L,0L},{0x48A6B61784C96FE4L,9L},{8L,0L},{1L,0x68CFF7EDL},{0x72C7FEB993B488CFL,0x4266B6E1L},{0x089A1F7F5652779FL,-1L}},{{8L,0L},{0x48A6B61784C96FE4L,9L},{8L,0L},{1L,0x68CFF7EDL},{0x72C7FEB993B488CFL,0x4266B6E1L},{0x089A1F7F5652779FL,-1L}},{{8L,0L},{0x48A6B61784C96FE4L,9L},{8L,0L},{1L,0x68CFF7EDL},{0x72C7FEB993B488CFL,0x4266B6E1L},{0x089A1F7F5652779FL,-1L}},{{8L,0L},{0x48A6B61784C96FE4L,9L},{8L,0L},{1L,0x68CFF7EDL},{0x72C7FEB993B488CFL,0x4266B6E1L},{0x089A1F7F5652779FL,-1L}},{{8L,0L},{0x48A6B61784C96FE4L,9L},{8L,0L},{1L,0x68CFF7EDL},{0x72C7FEB993B488CFL,0x4266B6E1L},{0x089A1F7F5652779FL,-1L}},{{8L,0L},{0x48A6B61784C96FE4L,9L},{8L,0L},{1L,0x68CFF7EDL},{0x72C7FEB993B488CFL,0x4266B6E1L},{0x089A1F7F5652779FL,-1L}},{{8L,0L},{0x48A6B61784C96FE4L,9L},{8L,0L},{1L,0x68CFF7EDL},{0x72C7FEB993B488CFL,0x4266B6E1L},{0x089A1F7F5652779FL,-1L}}}};
                        struct S0 l_1611 = {0L,1L};
                        int8_t l_1612 = 0x43L;
                        uint8_t l_1613 = 0UL;
                        uint64_t l_1614 = 18446744073709551615UL;
                        uint64_t l_1615 = 2UL;
                        int i, j, k;
                        l_1609 = l_1607;
                        l_1611 = l_1610[3][4][5];
                        l_1614 = ((*l_1607) = (l_1612 , l_1613));
                        (*l_1609) = l_1615;
                    }
                    else
                    { /* block id: 857 */
                        uint16_t l_1616 = 0xA08BL;
                        int32_t l_1617 = (-1L);
                        l_1616 = 2L;
                        l_1617 ^= 0x4F4DB135L;
                    }
                    for (l_1606[0] = 0; (l_1606[0] <= 1); l_1606[0] += 1)
                    { /* block id: 863 */
                        int32_t l_1618 = 0x7B7B956DL;
                        uint32_t l_1619 = 0x384231D0L;
                        l_1619 = (l_1618 = 0x2DEBD2A1L);
                    }
                    for (l_1606[0] = 0; (l_1606[0] <= 1); l_1606[0] += 1)
                    { /* block id: 869 */
                        int32_t l_1620 = 0x5973C916L;
                        l_1620 = 0x400247CDL;
                    }
                    unsigned int result = 0;
                    result += l_1597;
                    int l_1606_i0;
                    for (l_1606_i0 = 0; l_1606_i0 < 1; l_1606_i0++) {
                        result += l_1606[l_1606_i0];
                    }
                    atomic_add(&p_2824->l_special_values[42], result);
                }
                else
                { /* block id: 872 */
                    (1 + 1);
                }
                for (p_2824->g_697.f0 = 0; (p_2824->g_697.f0 <= 1); p_2824->g_697.f0 += 1)
                { /* block id: 877 */
                    return p_2824->g_1621;
                }
            }
        }
        if ((safe_div_func_uint8_t_u_u(((((*l_1284) = (safe_rshift_func_int16_t_s_u((18446744073709551615UL <= ((((****p_2824->g_582) = ((safe_add_func_int8_t_s_s((((safe_add_func_int16_t_s_s(p_2824->g_1372.f7, ((safe_add_func_uint64_t_u_u(((safe_mul_func_uint8_t_u_u((safe_rshift_func_int8_t_s_s(((*p_2824->g_1621) >= p_56), 7)), ((safe_div_func_uint16_t_u_u(1UL, FAKE_DIVERGE(p_2824->group_2_offset, get_group_id(2), 10))) && ((*p_2824->g_320) = ((0x0BL >= (~(0x4DL <= (l_1540[0][4][0] && (p_2824->g_1372.f9.f1 & p_2824->g_172))))) || l_1588))))) != p_56), (-1L))) ^ p_2824->g_1372.f9.f0))) <= p_57) != p_56), GROUP_DIVERGE(1, 1))) != GROUP_DIVERGE(0, 1))) != p_56) || l_1588)), l_1540[8][2][1]))) && (*p_2824->g_320)) > p_57), p_57)))
        { /* block id: 885 */
            int16_t l_1642 = 0x5EB8L;
            int32_t **l_1643 = &p_2824->g_32;
            int32_t ***l_1644 = &p_2824->g_499[0];
            uint16_t l_1645 = 1UL;
            uint64_t l_1648 = 0xA53D8A6AAD7136A8L;
            l_1642 ^= (l_1546[3] &= ((*p_2824->g_1621) |= ((safe_sub_func_int64_t_s_s((safe_lshift_func_int16_t_s_s(0x5E5BL, 7)), p_2824->g_172)) , 0x754173FAL)));
            (*l_1643) = func_74(p_2824->g_1372.f8, p_56, ((*l_1644) = l_1643), (+((((p_57 , (l_1645 && (safe_add_func_int16_t_s_s(((void*)0 == &p_2824->g_582), p_2824->g_1375.f7)))) , (((p_56 < p_2824->g_1377[6].f5) , 0x76C6C598L) , l_1648)) , l_1588) , p_2824->g_1377[6].f9.f1)), l_1576, p_2824);
        }
        else
        { /* block id: 891 */
            uint32_t l_1649 = 0xFC2B38D2L;
            int8_t ****l_1656 = &p_2824->g_583;
            int16_t *l_1670 = (void*)0;
            struct S1 *l_1687[3];
            int64_t l_1703 = 0L;
            int32_t l_1709 = 0x5FE2E970L;
            int32_t l_1710 = 0L;
            struct S0 l_1716[3] = {{-3L,2L},{-3L,2L},{-3L,2L}};
            int i;
            for (i = 0; i < 3; i++)
                l_1687[i] = (void*)0;
            l_1649--;
            for (p_2824->g_1375.f9.f0 = 0; (p_2824->g_1375.f9.f0 < 4); ++p_2824->g_1375.f9.f0)
            { /* block id: 895 */
                int8_t ****l_1654 = &p_2824->g_583;
                int32_t l_1665 = 0x59CEAD93L;
                int16_t **l_1671 = &l_1670;
                int16_t **l_1672 = &l_1284;
                uint32_t l_1702[5] = {8UL,8UL,8UL,8UL,8UL};
                int32_t l_1706 = (-10L);
                int32_t l_1707 = 6L;
                int32_t l_1708 = 0x6C749A13L;
                int32_t l_1711 = (-1L);
                int i;
                (*p_2824->g_1621) = ((((l_1655[2] = l_1654) != ((*l_1298) = l_1656)) && (safe_mod_func_int64_t_s_s(((0xC3L & (p_57 <= (safe_mul_func_int16_t_s_s((safe_mod_func_int8_t_s_s(((++(*l_1295)) < (p_57 > (l_1665 = p_56))), (((safe_mul_func_int16_t_s_s((safe_add_func_uint16_t_u_u(((*l_1654) != (*l_1656)), ((p_2824->g_1673 = ((*l_1672) = ((*l_1671) = l_1670))) != (*p_2824->g_651)))), 0xD42EL)) > l_1540[7][2][0]) ^ p_57))), 0x724CL)))) && l_1649), 18446744073709551614UL))) & p_57);
                for (p_2824->g_1299 = 7; (p_2824->g_1299 >= 1); --p_2824->g_1299)
                { /* block id: 906 */
                    int32_t l_1682 = 0x1E017E55L;
                    int64_t *l_1685[3];
                    int32_t l_1686[3][1][10];
                    int32_t **l_1704 = &p_2824->g_32;
                    int32_t l_1705 = 0x0B472C55L;
                    int i, j, k;
                    for (i = 0; i < 3; i++)
                        l_1685[i] = &p_2824->g_1372.f9.f0;
                    for (i = 0; i < 3; i++)
                    {
                        for (j = 0; j < 1; j++)
                        {
                            for (k = 0; k < 10; k++)
                                l_1686[i][j][k] = (-9L);
                        }
                    }
                    if (((safe_div_func_int32_t_s_s(((p_57 >= p_56) > (0xB630L == (p_56 | (safe_mul_func_int8_t_s_s((p_2824->g_260 , l_1649), ((((safe_rshift_func_uint16_t_u_u(l_1682, 5)) > (safe_lshift_func_int16_t_s_u((l_1665 || ((((l_1686[0][0][1] = ((0xC2L || p_56) <= l_1665)) , l_1687[0]) != p_2824->g_1688) <= p_57)), 15))) , (void*)0) == (*l_1672))))))), l_1546[3])) || p_2824->g_1377[6].f0))
                    { /* block id: 908 */
                        uint32_t *l_1701[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                        int i;
                        l_1665 = (((safe_mod_func_int32_t_s_s((p_2824->g_1692 != &p_2824->g_1693), (p_2824->g_140[9][0][6] &= (safe_mul_func_uint8_t_u_u((safe_add_func_int8_t_s_s((0x6C6C170D57E4393FL && ((****p_2824->g_582) != l_1682)), 0x29L)), (((*p_2824->g_1621) = p_57) && ((safe_div_func_int8_t_s_s((l_1682 ^ (p_56 & 0x1BL)), p_2824->g_1372.f9.f0)) <= l_1546[3]))))))) , l_1702[0]) < 1L);
                        if (p_56)
                            break;
                        if (l_1703)
                            continue;
                        (*l_1704) = func_74(l_1540[2][0][1], p_56, l_1704, p_2824->g_172, p_57, p_2824);
                    }
                    else
                    { /* block id: 915 */
                        uint64_t l_1712 = 0x507B47CA916344C3L;
                        int32_t *l_1715 = (void*)0;
                        p_2824->g_1374[1][0][2] = (void*)0;
                        if (l_1705)
                            break;
                        l_1712--;
                        return l_1715;
                    }
                }
            }
            for (l_1539.f1 = 2; (l_1539.f1 <= 8); l_1539.f1 += 1)
            { /* block id: 925 */
                (*p_2824->g_1381) = l_1716[2];
                if ((*p_2824->g_1621))
                    break;
            }
        }
    }
    return p_2824->g_1717;
}


/* ------------------------------------------ */
/* 
 * reads : p_2824->g_542
 * writes:
 */
int16_t  func_66(uint8_t  p_67, int32_t * p_68, struct S3 * p_2824)
{ /* block id: 320 */
    struct S0 *l_748[9][3][4] = {{{&p_2824->g_111[0],&p_2824->g_111[0],&p_2824->g_111[0],&p_2824->g_111[0]},{&p_2824->g_111[0],&p_2824->g_111[0],&p_2824->g_111[0],&p_2824->g_111[0]},{&p_2824->g_111[0],&p_2824->g_111[0],&p_2824->g_111[0],&p_2824->g_111[0]}},{{&p_2824->g_111[0],&p_2824->g_111[0],&p_2824->g_111[0],&p_2824->g_111[0]},{&p_2824->g_111[0],&p_2824->g_111[0],&p_2824->g_111[0],&p_2824->g_111[0]},{&p_2824->g_111[0],&p_2824->g_111[0],&p_2824->g_111[0],&p_2824->g_111[0]}},{{&p_2824->g_111[0],&p_2824->g_111[0],&p_2824->g_111[0],&p_2824->g_111[0]},{&p_2824->g_111[0],&p_2824->g_111[0],&p_2824->g_111[0],&p_2824->g_111[0]},{&p_2824->g_111[0],&p_2824->g_111[0],&p_2824->g_111[0],&p_2824->g_111[0]}},{{&p_2824->g_111[0],&p_2824->g_111[0],&p_2824->g_111[0],&p_2824->g_111[0]},{&p_2824->g_111[0],&p_2824->g_111[0],&p_2824->g_111[0],&p_2824->g_111[0]},{&p_2824->g_111[0],&p_2824->g_111[0],&p_2824->g_111[0],&p_2824->g_111[0]}},{{&p_2824->g_111[0],&p_2824->g_111[0],&p_2824->g_111[0],&p_2824->g_111[0]},{&p_2824->g_111[0],&p_2824->g_111[0],&p_2824->g_111[0],&p_2824->g_111[0]},{&p_2824->g_111[0],&p_2824->g_111[0],&p_2824->g_111[0],&p_2824->g_111[0]}},{{&p_2824->g_111[0],&p_2824->g_111[0],&p_2824->g_111[0],&p_2824->g_111[0]},{&p_2824->g_111[0],&p_2824->g_111[0],&p_2824->g_111[0],&p_2824->g_111[0]},{&p_2824->g_111[0],&p_2824->g_111[0],&p_2824->g_111[0],&p_2824->g_111[0]}},{{&p_2824->g_111[0],&p_2824->g_111[0],&p_2824->g_111[0],&p_2824->g_111[0]},{&p_2824->g_111[0],&p_2824->g_111[0],&p_2824->g_111[0],&p_2824->g_111[0]},{&p_2824->g_111[0],&p_2824->g_111[0],&p_2824->g_111[0],&p_2824->g_111[0]}},{{&p_2824->g_111[0],&p_2824->g_111[0],&p_2824->g_111[0],&p_2824->g_111[0]},{&p_2824->g_111[0],&p_2824->g_111[0],&p_2824->g_111[0],&p_2824->g_111[0]},{&p_2824->g_111[0],&p_2824->g_111[0],&p_2824->g_111[0],&p_2824->g_111[0]}},{{&p_2824->g_111[0],&p_2824->g_111[0],&p_2824->g_111[0],&p_2824->g_111[0]},{&p_2824->g_111[0],&p_2824->g_111[0],&p_2824->g_111[0],&p_2824->g_111[0]},{&p_2824->g_111[0],&p_2824->g_111[0],&p_2824->g_111[0],&p_2824->g_111[0]}}};
    struct S0 **l_747 = &l_748[0][2][2];
    struct S0 ***l_749 = &l_747;
    int32_t l_831 = 0x67686118L;
    int i, j, k;
    (*l_749) = l_747;
    if ((atomic_inc(&p_2824->g_atomic_input[54 * get_linear_group_id() + 6]) == 7))
    { /* block id: 323 */
        uint32_t l_750[10];
        uint32_t l_751 = 1UL;
        uint8_t l_752 = 1UL;
        int32_t l_755[8] = {0x6B78F818L,0x6B78F818L,0x6B78F818L,0x6B78F818L,0x6B78F818L,0x6B78F818L,0x6B78F818L,0x6B78F818L};
        int16_t l_756 = (-1L);
        uint64_t l_757[5];
        int32_t *l_758 = &l_755[6];
        int32_t *l_759[9][7][4] = {{{&l_755[6],(void*)0,&l_755[7],&l_755[7]},{&l_755[6],(void*)0,&l_755[7],&l_755[7]},{&l_755[6],(void*)0,&l_755[7],&l_755[7]},{&l_755[6],(void*)0,&l_755[7],&l_755[7]},{&l_755[6],(void*)0,&l_755[7],&l_755[7]},{&l_755[6],(void*)0,&l_755[7],&l_755[7]},{&l_755[6],(void*)0,&l_755[7],&l_755[7]}},{{&l_755[6],(void*)0,&l_755[7],&l_755[7]},{&l_755[6],(void*)0,&l_755[7],&l_755[7]},{&l_755[6],(void*)0,&l_755[7],&l_755[7]},{&l_755[6],(void*)0,&l_755[7],&l_755[7]},{&l_755[6],(void*)0,&l_755[7],&l_755[7]},{&l_755[6],(void*)0,&l_755[7],&l_755[7]},{&l_755[6],(void*)0,&l_755[7],&l_755[7]}},{{&l_755[6],(void*)0,&l_755[7],&l_755[7]},{&l_755[6],(void*)0,&l_755[7],&l_755[7]},{&l_755[6],(void*)0,&l_755[7],&l_755[7]},{&l_755[6],(void*)0,&l_755[7],&l_755[7]},{&l_755[6],(void*)0,&l_755[7],&l_755[7]},{&l_755[6],(void*)0,&l_755[7],&l_755[7]},{&l_755[6],(void*)0,&l_755[7],&l_755[7]}},{{&l_755[6],(void*)0,&l_755[7],&l_755[7]},{&l_755[6],(void*)0,&l_755[7],&l_755[7]},{&l_755[6],(void*)0,&l_755[7],&l_755[7]},{&l_755[6],(void*)0,&l_755[7],&l_755[7]},{&l_755[6],(void*)0,&l_755[7],&l_755[7]},{&l_755[6],(void*)0,&l_755[7],&l_755[7]},{&l_755[6],(void*)0,&l_755[7],&l_755[7]}},{{&l_755[6],(void*)0,&l_755[7],&l_755[7]},{&l_755[6],(void*)0,&l_755[7],&l_755[7]},{&l_755[6],(void*)0,&l_755[7],&l_755[7]},{&l_755[6],(void*)0,&l_755[7],&l_755[7]},{&l_755[6],(void*)0,&l_755[7],&l_755[7]},{&l_755[6],(void*)0,&l_755[7],&l_755[7]},{&l_755[6],(void*)0,&l_755[7],&l_755[7]}},{{&l_755[6],(void*)0,&l_755[7],&l_755[7]},{&l_755[6],(void*)0,&l_755[7],&l_755[7]},{&l_755[6],(void*)0,&l_755[7],&l_755[7]},{&l_755[6],(void*)0,&l_755[7],&l_755[7]},{&l_755[6],(void*)0,&l_755[7],&l_755[7]},{&l_755[6],(void*)0,&l_755[7],&l_755[7]},{&l_755[6],(void*)0,&l_755[7],&l_755[7]}},{{&l_755[6],(void*)0,&l_755[7],&l_755[7]},{&l_755[6],(void*)0,&l_755[7],&l_755[7]},{&l_755[6],(void*)0,&l_755[7],&l_755[7]},{&l_755[6],(void*)0,&l_755[7],&l_755[7]},{&l_755[6],(void*)0,&l_755[7],&l_755[7]},{&l_755[6],(void*)0,&l_755[7],&l_755[7]},{&l_755[6],(void*)0,&l_755[7],&l_755[7]}},{{&l_755[6],(void*)0,&l_755[7],&l_755[7]},{&l_755[6],(void*)0,&l_755[7],&l_755[7]},{&l_755[6],(void*)0,&l_755[7],&l_755[7]},{&l_755[6],(void*)0,&l_755[7],&l_755[7]},{&l_755[6],(void*)0,&l_755[7],&l_755[7]},{&l_755[6],(void*)0,&l_755[7],&l_755[7]},{&l_755[6],(void*)0,&l_755[7],&l_755[7]}},{{&l_755[6],(void*)0,&l_755[7],&l_755[7]},{&l_755[6],(void*)0,&l_755[7],&l_755[7]},{&l_755[6],(void*)0,&l_755[7],&l_755[7]},{&l_755[6],(void*)0,&l_755[7],&l_755[7]},{&l_755[6],(void*)0,&l_755[7],&l_755[7]},{&l_755[6],(void*)0,&l_755[7],&l_755[7]},{&l_755[6],(void*)0,&l_755[7],&l_755[7]}}};
        int16_t l_760[7] = {0x0521L,0x30AFL,0x0521L,0x0521L,0x30AFL,0x0521L,0x0521L};
        int32_t l_761 = 2L;
        uint16_t l_762 = 0x0BCBL;
        struct S0 l_829[1] = {{-6L,0x7F4DDEB0L}};
        struct S0 l_830 = {0x316FC9352C42587FL,1L};
        int i, j, k;
        for (i = 0; i < 10; i++)
            l_750[i] = 1UL;
        for (i = 0; i < 5; i++)
            l_757[i] = 0x46852F4BCD2F0E3BL;
        l_759[4][0][0] = (((l_751 = l_750[1]) , (l_752--)) , ((l_757[3] = (l_755[6] , l_756)) , l_758));
        --l_762;
        for (l_762 = 0; (l_762 > 7); l_762 = safe_add_func_uint16_t_u_u(l_762, 7))
        { /* block id: 331 */
            int64_t l_767 = 1L;
            uint64_t l_768 = 0x4D7262B11879AF71L;
            l_768 ^= l_767;
            for (l_767 = (-13); (l_767 != (-22)); l_767--)
            { /* block id: 335 */
                int32_t l_771 = 0x22838D31L;
                uint64_t l_776 = 0UL;
                for (l_771 = 0; (l_771 <= 1); l_771 += 1)
                { /* block id: 338 */
                    int32_t l_772 = 1L;
                    int i, j;
                    for (l_772 = 1; (l_772 >= 0); l_772 -= 1)
                    { /* block id: 341 */
                        uint16_t l_773 = 0UL;
                        l_773--;
                    }
                    l_772 |= p_2824->g_542[(l_771 + 1)][l_771];
                }
                if (l_776)
                { /* block id: 346 */
                    int32_t l_778 = 0x5C340A43L;
                    int32_t *l_777[1];
                    int i;
                    for (i = 0; i < 1; i++)
                        l_777[i] = &l_778;
                    (*l_758) = 0x794F557EL;
                    l_759[4][6][2] = l_777[0];
                }
                else
                { /* block id: 349 */
                    int32_t l_779 = (-1L);
                    int8_t l_791 = (-7L);
                    uint16_t l_792[6][6] = {{0x886AL,0x886AL,0x8EC7L,2UL,1UL,2UL},{0x886AL,0x886AL,0x8EC7L,2UL,1UL,2UL},{0x886AL,0x886AL,0x8EC7L,2UL,1UL,2UL},{0x886AL,0x886AL,0x8EC7L,2UL,1UL,2UL},{0x886AL,0x886AL,0x8EC7L,2UL,1UL,2UL},{0x886AL,0x886AL,0x8EC7L,2UL,1UL,2UL}};
                    uint32_t l_793 = 8UL;
                    struct S1 l_795 = {1UL,0L,0L,4294967291UL,0x655F5E5C0BBAB8C1L,4UL,1L,1UL,0x1C2D2632L,{8L,1L}};/* VOLATILE GLOBAL l_795 */
                    struct S1 *l_794 = &l_795;
                    struct S1 l_797 = {0xC6072CA3L,0x54D4D835L,-1L,0x86CE42FFL,18446744073709551609UL,0UL,-1L,18446744073709551613UL,-1L,{0x527C1D2903BE392BL,0x60E4206EL}};/* VOLATILE GLOBAL l_797 */
                    struct S1 l_798 = {4294967288UL,-6L,0x30E835A9E0C2774FL,0xFC1FBAA2L,0UL,0x4CL,-2L,0xD755092406494609L,7L,{0x2677C00B45266624L,9L}};/* VOLATILE GLOBAL l_798 */
                    struct S1 l_799 = {4294967295UL,0L,0x3CA0163469BE588FL,0x1D9E78AFL,0x299A4C769471E523L,0x68L,0x119DC81EC5BE5B67L,3UL,0x0CF9D77AL,{0L,-9L}};/* VOLATILE GLOBAL l_799 */
                    struct S1 l_800 = {1UL,0x2092A4E1L,0x1077B5CF3DC85F7BL,5UL,0x4DC737EB4EF3853DL,254UL,-6L,18446744073709551615UL,0x521BC5A2L,{-3L,0x4636AC59L}};/* VOLATILE GLOBAL l_800 */
                    struct S1 l_801[2][4] = {{{3UL,1L,8L,0x31A0A8C2L,0xF0859928A36FE4D8L,0UL,-5L,4UL,0L,{-3L,0x5AF521F9L}},{4294967291UL,1L,1L,0xC82C9E74L,0x1FC57462A37A19EDL,0xD2L,0x7930763674EA634CL,0UL,0x20F642B1L,{9L,0x649D21D0L}},{3UL,1L,8L,0x31A0A8C2L,0xF0859928A36FE4D8L,0UL,-5L,4UL,0L,{-3L,0x5AF521F9L}},{3UL,1L,8L,0x31A0A8C2L,0xF0859928A36FE4D8L,0UL,-5L,4UL,0L,{-3L,0x5AF521F9L}}},{{3UL,1L,8L,0x31A0A8C2L,0xF0859928A36FE4D8L,0UL,-5L,4UL,0L,{-3L,0x5AF521F9L}},{4294967291UL,1L,1L,0xC82C9E74L,0x1FC57462A37A19EDL,0xD2L,0x7930763674EA634CL,0UL,0x20F642B1L,{9L,0x649D21D0L}},{3UL,1L,8L,0x31A0A8C2L,0xF0859928A36FE4D8L,0UL,-5L,4UL,0L,{-3L,0x5AF521F9L}},{3UL,1L,8L,0x31A0A8C2L,0xF0859928A36FE4D8L,0UL,-5L,4UL,0L,{-3L,0x5AF521F9L}}}};
                    struct S1 l_802 = {0x890A591FL,1L,6L,4294967295UL,1UL,0x4CL,0x009BE9FB74765DE3L,0xF60DFEF45CE1761BL,0L,{-1L,1L}};/* VOLATILE GLOBAL l_802 */
                    struct S1 l_803 = {1UL,3L,0x4363EC99C2776446L,1UL,2UL,247UL,0L,18446744073709551611UL,0x577D81A5L,{1L,-5L}};/* VOLATILE GLOBAL l_803 */
                    struct S1 l_804 = {0x988A1291L,8L,-6L,4294967292UL,7UL,0x5DL,4L,0xE4E1FAC0ACC0D8D6L,1L,{-1L,0L}};/* VOLATILE GLOBAL l_804 */
                    struct S1 l_805 = {0xE4FDEA42L,2L,1L,6UL,0x12673A4C711760E9L,0x72L,4L,2UL,-1L,{0x78F65012854AE57DL,1L}};/* VOLATILE GLOBAL l_805 */
                    struct S1 l_806 = {0x6E518A83L,0x79C878BAL,0x7AE16035D3965A98L,0x127261BCL,18446744073709551615UL,253UL,0x3E39E5040BF49967L,0xA02CE865E1D69F3BL,0x6102E440L,{7L,0L}};/* VOLATILE GLOBAL l_806 */
                    struct S1 l_807 = {0x935E8DCCL,2L,0x2F72AC29FAEC2010L,0xFEE93FFAL,0xE09604E3E98B222AL,255UL,0x4DA57EA3194E25A6L,18446744073709551614UL,8L,{0x436804F927D249A1L,-2L}};/* VOLATILE GLOBAL l_807 */
                    struct S1 l_808[7] = {{8UL,0x2F8F2059L,-10L,0x687B5478L,8UL,0UL,0x1F4ADB0A089C78CAL,0xAA8443D9CA32644FL,0x34B9AE57L,{-7L,-1L}},{8UL,0x2F8F2059L,-10L,0x687B5478L,8UL,0UL,0x1F4ADB0A089C78CAL,0xAA8443D9CA32644FL,0x34B9AE57L,{-7L,-1L}},{8UL,0x2F8F2059L,-10L,0x687B5478L,8UL,0UL,0x1F4ADB0A089C78CAL,0xAA8443D9CA32644FL,0x34B9AE57L,{-7L,-1L}},{8UL,0x2F8F2059L,-10L,0x687B5478L,8UL,0UL,0x1F4ADB0A089C78CAL,0xAA8443D9CA32644FL,0x34B9AE57L,{-7L,-1L}},{8UL,0x2F8F2059L,-10L,0x687B5478L,8UL,0UL,0x1F4ADB0A089C78CAL,0xAA8443D9CA32644FL,0x34B9AE57L,{-7L,-1L}},{8UL,0x2F8F2059L,-10L,0x687B5478L,8UL,0UL,0x1F4ADB0A089C78CAL,0xAA8443D9CA32644FL,0x34B9AE57L,{-7L,-1L}},{8UL,0x2F8F2059L,-10L,0x687B5478L,8UL,0UL,0x1F4ADB0A089C78CAL,0xAA8443D9CA32644FL,0x34B9AE57L,{-7L,-1L}}};
                    struct S1 l_809 = {4294967295UL,0x4BF44D04L,0x7B3D6827EEE4F562L,0x9A717E9BL,0xED56DA5F69863C31L,0x87L,0x5035BF33B26170E8L,0x612F3CD3D6F8F26DL,1L,{-4L,0x013010DAL}};/* VOLATILE GLOBAL l_809 */
                    struct S1 l_810 = {0xA698CC40L,0x396CC1C2L,1L,1UL,1UL,1UL,-1L,18446744073709551608UL,0L,{0L,1L}};/* VOLATILE GLOBAL l_810 */
                    struct S1 l_811 = {1UL,-1L,-1L,0xD0186F5BL,2UL,0x1EL,0x7CECA65AC7626519L,18446744073709551614UL,2L,{0x5C4D5C2FF1EB3C21L,0x40E09FAEL}};/* VOLATILE GLOBAL l_811 */
                    struct S1 l_812 = {0xC404B7C3L,1L,1L,4294967295UL,0x903EF265ABD61DD9L,0xE8L,0x4FA40D31E2FA191BL,0UL,0x4C68ADD9L,{5L,-9L}};/* VOLATILE GLOBAL l_812 */
                    struct S1 l_813 = {3UL,0L,0x2EF59E2A028EC93AL,0x56BCC55CL,0UL,8UL,0x330ECA9EAD443D76L,0UL,0x69ECD5EBL,{0x31F4EA76B66C2C8AL,0x22B0CB94L}};/* VOLATILE GLOBAL l_813 */
                    struct S1 l_814 = {0x22CBFE4DL,9L,0x366F6925E24EBA14L,4294967289UL,0x586744FBD07E9579L,250UL,0x70642170E1A23E56L,0x3C9F0B4B603FE35FL,0x3BA2F3C0L,{0x618AD1FFBCCC42C4L,0L}};/* VOLATILE GLOBAL l_814 */
                    struct S1 l_815[1] = {{0x0F73C50BL,1L,-7L,4294967288UL,0xB0F968B0A25CF0D1L,0UL,0L,18446744073709551615UL,0L,{0x23117FF291A57A95L,0x7C928AEDL}}};
                    struct S1 l_816[8][6][2] = {{{{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}},{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}}},{{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}},{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}}},{{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}},{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}}},{{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}},{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}}},{{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}},{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}}},{{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}},{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}}}},{{{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}},{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}}},{{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}},{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}}},{{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}},{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}}},{{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}},{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}}},{{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}},{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}}},{{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}},{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}}}},{{{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}},{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}}},{{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}},{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}}},{{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}},{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}}},{{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}},{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}}},{{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}},{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}}},{{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}},{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}}}},{{{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}},{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}}},{{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}},{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}}},{{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}},{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}}},{{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}},{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}}},{{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}},{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}}},{{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}},{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}}}},{{{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}},{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}}},{{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}},{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}}},{{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}},{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}}},{{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}},{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}}},{{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}},{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}}},{{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}},{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}}}},{{{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}},{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}}},{{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}},{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}}},{{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}},{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}}},{{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}},{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}}},{{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}},{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}}},{{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}},{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}}}},{{{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}},{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}}},{{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}},{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}}},{{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}},{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}}},{{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}},{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}}},{{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}},{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}}},{{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}},{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}}}},{{{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}},{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}}},{{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}},{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}}},{{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}},{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}}},{{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}},{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}}},{{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}},{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}}},{{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}},{0UL,2L,0x4FE921A1C32E7CA8L,0x2E138267L,0x4123BBD6E07B3B7AL,0x00L,0L,18446744073709551606UL,0x4F79B90BL,{7L,1L}}}}};
                    struct S1 l_817 = {0xE34E14ACL,4L,0x0D51D2526B5B6C33L,1UL,0x14C7C8B3E31E88EDL,0x28L,-2L,18446744073709551606UL,-5L,{0x24E3474480ED5204L,1L}};/* VOLATILE GLOBAL l_817 */
                    struct S1 l_818 = {0x1EFD618FL,0x6ECA47B7L,0x6EC884E4D71406B5L,0xE71F132BL,0x67C4143013B3E9F2L,0UL,0x307B59C83A0A445DL,0xA72D9FB45552FFF5L,1L,{1L,0x3B377E57L}};/* VOLATILE GLOBAL l_818 */
                    struct S1 *l_796[7][3][7] = {{{&l_802,&l_811,(void*)0,(void*)0,&l_811,&l_802,&l_814},{&l_802,&l_811,(void*)0,(void*)0,&l_811,&l_802,&l_814},{&l_802,&l_811,(void*)0,(void*)0,&l_811,&l_802,&l_814}},{{&l_802,&l_811,(void*)0,(void*)0,&l_811,&l_802,&l_814},{&l_802,&l_811,(void*)0,(void*)0,&l_811,&l_802,&l_814},{&l_802,&l_811,(void*)0,(void*)0,&l_811,&l_802,&l_814}},{{&l_802,&l_811,(void*)0,(void*)0,&l_811,&l_802,&l_814},{&l_802,&l_811,(void*)0,(void*)0,&l_811,&l_802,&l_814},{&l_802,&l_811,(void*)0,(void*)0,&l_811,&l_802,&l_814}},{{&l_802,&l_811,(void*)0,(void*)0,&l_811,&l_802,&l_814},{&l_802,&l_811,(void*)0,(void*)0,&l_811,&l_802,&l_814},{&l_802,&l_811,(void*)0,(void*)0,&l_811,&l_802,&l_814}},{{&l_802,&l_811,(void*)0,(void*)0,&l_811,&l_802,&l_814},{&l_802,&l_811,(void*)0,(void*)0,&l_811,&l_802,&l_814},{&l_802,&l_811,(void*)0,(void*)0,&l_811,&l_802,&l_814}},{{&l_802,&l_811,(void*)0,(void*)0,&l_811,&l_802,&l_814},{&l_802,&l_811,(void*)0,(void*)0,&l_811,&l_802,&l_814},{&l_802,&l_811,(void*)0,(void*)0,&l_811,&l_802,&l_814}},{{&l_802,&l_811,(void*)0,(void*)0,&l_811,&l_802,&l_814},{&l_802,&l_811,(void*)0,(void*)0,&l_811,&l_802,&l_814},{&l_802,&l_811,(void*)0,(void*)0,&l_811,&l_802,&l_814}}};
                    struct S1 l_820[4][7] = {{{0UL,0x0F3A8314L,0x14C8AA559C1A8B40L,0UL,0x6297B50CF2DD32D0L,6UL,0x5D50AD428DC6B448L,1UL,0L,{0L,-8L}},{0x09949D84L,-3L,0x7C113DA85D1CCF6CL,4294967294UL,18446744073709551615UL,9UL,-5L,0x10DF1F5F4A7A540EL,1L,{0x268A5173A71B166EL,0x6A86357AL}},{4294967294UL,1L,0x3B428C47965A30C9L,0x2317A620L,2UL,0x47L,0x17FD37E946DBB243L,18446744073709551615UL,0x22EDB9E1L,{0x072AECEB68ED9B5DL,0x22E92450L}},{0x09949D84L,-3L,0x7C113DA85D1CCF6CL,4294967294UL,18446744073709551615UL,9UL,-5L,0x10DF1F5F4A7A540EL,1L,{0x268A5173A71B166EL,0x6A86357AL}},{0UL,0x0F3A8314L,0x14C8AA559C1A8B40L,0UL,0x6297B50CF2DD32D0L,6UL,0x5D50AD428DC6B448L,1UL,0L,{0L,-8L}},{0UL,0x0F3A8314L,0x14C8AA559C1A8B40L,0UL,0x6297B50CF2DD32D0L,6UL,0x5D50AD428DC6B448L,1UL,0L,{0L,-8L}},{0x09949D84L,-3L,0x7C113DA85D1CCF6CL,4294967294UL,18446744073709551615UL,9UL,-5L,0x10DF1F5F4A7A540EL,1L,{0x268A5173A71B166EL,0x6A86357AL}}},{{0UL,0x0F3A8314L,0x14C8AA559C1A8B40L,0UL,0x6297B50CF2DD32D0L,6UL,0x5D50AD428DC6B448L,1UL,0L,{0L,-8L}},{0x09949D84L,-3L,0x7C113DA85D1CCF6CL,4294967294UL,18446744073709551615UL,9UL,-5L,0x10DF1F5F4A7A540EL,1L,{0x268A5173A71B166EL,0x6A86357AL}},{4294967294UL,1L,0x3B428C47965A30C9L,0x2317A620L,2UL,0x47L,0x17FD37E946DBB243L,18446744073709551615UL,0x22EDB9E1L,{0x072AECEB68ED9B5DL,0x22E92450L}},{0x09949D84L,-3L,0x7C113DA85D1CCF6CL,4294967294UL,18446744073709551615UL,9UL,-5L,0x10DF1F5F4A7A540EL,1L,{0x268A5173A71B166EL,0x6A86357AL}},{0UL,0x0F3A8314L,0x14C8AA559C1A8B40L,0UL,0x6297B50CF2DD32D0L,6UL,0x5D50AD428DC6B448L,1UL,0L,{0L,-8L}},{0UL,0x0F3A8314L,0x14C8AA559C1A8B40L,0UL,0x6297B50CF2DD32D0L,6UL,0x5D50AD428DC6B448L,1UL,0L,{0L,-8L}},{0x09949D84L,-3L,0x7C113DA85D1CCF6CL,4294967294UL,18446744073709551615UL,9UL,-5L,0x10DF1F5F4A7A540EL,1L,{0x268A5173A71B166EL,0x6A86357AL}}},{{0UL,0x0F3A8314L,0x14C8AA559C1A8B40L,0UL,0x6297B50CF2DD32D0L,6UL,0x5D50AD428DC6B448L,1UL,0L,{0L,-8L}},{0x09949D84L,-3L,0x7C113DA85D1CCF6CL,4294967294UL,18446744073709551615UL,9UL,-5L,0x10DF1F5F4A7A540EL,1L,{0x268A5173A71B166EL,0x6A86357AL}},{4294967294UL,1L,0x3B428C47965A30C9L,0x2317A620L,2UL,0x47L,0x17FD37E946DBB243L,18446744073709551615UL,0x22EDB9E1L,{0x072AECEB68ED9B5DL,0x22E92450L}},{0x09949D84L,-3L,0x7C113DA85D1CCF6CL,4294967294UL,18446744073709551615UL,9UL,-5L,0x10DF1F5F4A7A540EL,1L,{0x268A5173A71B166EL,0x6A86357AL}},{0UL,0x0F3A8314L,0x14C8AA559C1A8B40L,0UL,0x6297B50CF2DD32D0L,6UL,0x5D50AD428DC6B448L,1UL,0L,{0L,-8L}},{0UL,0x0F3A8314L,0x14C8AA559C1A8B40L,0UL,0x6297B50CF2DD32D0L,6UL,0x5D50AD428DC6B448L,1UL,0L,{0L,-8L}},{0x09949D84L,-3L,0x7C113DA85D1CCF6CL,4294967294UL,18446744073709551615UL,9UL,-5L,0x10DF1F5F4A7A540EL,1L,{0x268A5173A71B166EL,0x6A86357AL}}},{{0UL,0x0F3A8314L,0x14C8AA559C1A8B40L,0UL,0x6297B50CF2DD32D0L,6UL,0x5D50AD428DC6B448L,1UL,0L,{0L,-8L}},{0x09949D84L,-3L,0x7C113DA85D1CCF6CL,4294967294UL,18446744073709551615UL,9UL,-5L,0x10DF1F5F4A7A540EL,1L,{0x268A5173A71B166EL,0x6A86357AL}},{4294967294UL,1L,0x3B428C47965A30C9L,0x2317A620L,2UL,0x47L,0x17FD37E946DBB243L,18446744073709551615UL,0x22EDB9E1L,{0x072AECEB68ED9B5DL,0x22E92450L}},{0x09949D84L,-3L,0x7C113DA85D1CCF6CL,4294967294UL,18446744073709551615UL,9UL,-5L,0x10DF1F5F4A7A540EL,1L,{0x268A5173A71B166EL,0x6A86357AL}},{0UL,0x0F3A8314L,0x14C8AA559C1A8B40L,0UL,0x6297B50CF2DD32D0L,6UL,0x5D50AD428DC6B448L,1UL,0L,{0L,-8L}},{0UL,0x0F3A8314L,0x14C8AA559C1A8B40L,0UL,0x6297B50CF2DD32D0L,6UL,0x5D50AD428DC6B448L,1UL,0L,{0L,-8L}},{0x09949D84L,-3L,0x7C113DA85D1CCF6CL,4294967294UL,18446744073709551615UL,9UL,-5L,0x10DF1F5F4A7A540EL,1L,{0x268A5173A71B166EL,0x6A86357AL}}}};
                    struct S1 *l_819 = &l_820[2][5];
                    int64_t l_821[7];
                    int i, j, k;
                    for (i = 0; i < 7; i++)
                        l_821[i] = 1L;
                    for (l_779 = 0; (l_779 < 19); l_779++)
                    { /* block id: 352 */
                        uint16_t l_782 = 0x3395L;
                        uint8_t l_785 = 8UL;
                        uint32_t l_786 = 0x0FC26EFCL;
                        int16_t l_787 = 0x59DEL;
                        uint8_t l_788 = 253UL;
                        ++l_782;
                        l_786 ^= l_785;
                        ++l_788;
                    }
                    l_819 = (l_796[4][0][3] = (((l_792[2][3] ^= l_791) , l_793) , l_794));
                    if ((l_821[6] , 0x651CC98BL))
                    { /* block id: 360 */
                        uint32_t l_822 = 0x00CD45B4L;
                        uint32_t l_823 = 4294967295UL;
                        l_823 = l_822;
                    }
                    else
                    { /* block id: 362 */
                        uint32_t l_824[10] = {0UL,0UL,4294967295UL,0UL,0UL,0UL,0UL,4294967295UL,0UL,0UL};
                        uint32_t l_827 = 0UL;
                        uint16_t l_828[10][5] = {{0x0A54L,6UL,8UL,1UL,6UL},{0x0A54L,6UL,8UL,1UL,6UL},{0x0A54L,6UL,8UL,1UL,6UL},{0x0A54L,6UL,8UL,1UL,6UL},{0x0A54L,6UL,8UL,1UL,6UL},{0x0A54L,6UL,8UL,1UL,6UL},{0x0A54L,6UL,8UL,1UL,6UL},{0x0A54L,6UL,8UL,1UL,6UL},{0x0A54L,6UL,8UL,1UL,6UL},{0x0A54L,6UL,8UL,1UL,6UL}};
                        int i, j;
                        ++l_824[7];
                        l_828[0][1] |= l_827;
                    }
                }
            }
        }
        l_830 = l_829[0];
        unsigned int result = 0;
        int l_750_i0;
        for (l_750_i0 = 0; l_750_i0 < 10; l_750_i0++) {
            result += l_750[l_750_i0];
        }
        result += l_751;
        result += l_752;
        int l_755_i0;
        for (l_755_i0 = 0; l_755_i0 < 8; l_755_i0++) {
            result += l_755[l_755_i0];
        }
        result += l_756;
        int l_757_i0;
        for (l_757_i0 = 0; l_757_i0 < 5; l_757_i0++) {
            result += l_757[l_757_i0];
        }
        int l_760_i0;
        for (l_760_i0 = 0; l_760_i0 < 7; l_760_i0++) {
            result += l_760[l_760_i0];
        }
        result += l_761;
        result += l_762;
        int l_829_i0;
        for (l_829_i0 = 0; l_829_i0 < 1; l_829_i0++) {
            result += l_829[l_829_i0].f0;
            result += l_829[l_829_i0].f1;
        }
        result += l_830.f0;
        result += l_830.f1;
        atomic_add(&p_2824->g_special_values[54 * get_linear_group_id() + 6], result);
    }
    else
    { /* block id: 370 */
        (1 + 1);
    }
    return l_831;
}


/* ------------------------------------------ */
/* 
 * reads : p_2824->g_98 p_2824->g_3 p_2824->g_89 p_2824->g_97 p_2824->g_32 p_2824->g_111.f1 p_2824->g_140 p_2824->g_122 p_2824->g_108 p_2824->g_172 p_2824->g_193 p_2824->g_215 p_2824->g_212 p_2824->g_111.f0 p_2824->g_260 p_2824->g_225 p_2824->g_308 p_2824->g_111 p_2824->g_323 p_2824->g_320 p_2824->g_200 p_2824->g_194 p_2824->g_319 p_2824->g_33 p_2824->g_472 p_2824->g_499 p_2824->g_541 p_2824->g_570 p_2824->g_582 p_2824->g_583 p_2824->g_563 p_2824->g_542 p_2824->g_651 p_2824->g_744
 * writes: p_2824->g_97 p_2824->g_122 p_2824->g_111.f1 p_2824->g_98 p_2824->g_140 p_2824->g_172 p_2824->g_193 p_2824->g_200 p_2824->g_212 p_2824->g_215 p_2824->g_225 p_2824->g_32 p_2824->g_89 p_2824->g_108 p_2824->g_308 p_2824->g_111 p_2824->g_319 p_2824->g_323 p_2824->g_194 p_2824->g_260 p_2824->g_472 p_2824->g_541 p_2824->g_542 p_2824->g_563 p_2824->g_582 p_2824->g_655 p_2824->g_719
 */
uint8_t  func_69(int32_t * p_70, uint32_t  p_71, int32_t * p_72, struct S0  p_73, struct S3 * p_2824)
{ /* block id: 44 */
    int64_t l_116 = (-1L);
    uint8_t *l_119 = (void*)0;
    int32_t l_120 = 0x4CAF28F6L;
    uint16_t *l_121[7][4] = {{&p_2824->g_122,&p_2824->g_122,&p_2824->g_122,&p_2824->g_122},{&p_2824->g_122,&p_2824->g_122,&p_2824->g_122,&p_2824->g_122},{&p_2824->g_122,&p_2824->g_122,&p_2824->g_122,&p_2824->g_122},{&p_2824->g_122,&p_2824->g_122,&p_2824->g_122,&p_2824->g_122},{&p_2824->g_122,&p_2824->g_122,&p_2824->g_122,&p_2824->g_122},{&p_2824->g_122,&p_2824->g_122,&p_2824->g_122,&p_2824->g_122},{&p_2824->g_122,&p_2824->g_122,&p_2824->g_122,&p_2824->g_122}};
    int32_t *l_123 = &p_2824->g_111[1].f1;
    struct S0 *l_124[1];
    int32_t l_296 = 0L;
    int32_t l_523[6] = {0x5C7F885CL,0x605CAF8AL,0x5C7F885CL,0x5C7F885CL,0x605CAF8AL,0x5C7F885CL};
    int32_t ***l_537[8] = {&p_2824->g_499[4],&p_2824->g_499[7],&p_2824->g_499[4],&p_2824->g_499[4],&p_2824->g_499[7],&p_2824->g_499[4],&p_2824->g_499[4],&p_2824->g_499[7]};
    int32_t l_598[9][7] = {{(-1L),(-1L),(-1L),0x2B5495EBL,0x34117F34L,0x2B5495EBL,(-1L)},{(-1L),(-1L),(-1L),0x2B5495EBL,0x34117F34L,0x2B5495EBL,(-1L)},{(-1L),(-1L),(-1L),0x2B5495EBL,0x34117F34L,0x2B5495EBL,(-1L)},{(-1L),(-1L),(-1L),0x2B5495EBL,0x34117F34L,0x2B5495EBL,(-1L)},{(-1L),(-1L),(-1L),0x2B5495EBL,0x34117F34L,0x2B5495EBL,(-1L)},{(-1L),(-1L),(-1L),0x2B5495EBL,0x34117F34L,0x2B5495EBL,(-1L)},{(-1L),(-1L),(-1L),0x2B5495EBL,0x34117F34L,0x2B5495EBL,(-1L)},{(-1L),(-1L),(-1L),0x2B5495EBL,0x34117F34L,0x2B5495EBL,(-1L)},{(-1L),(-1L),(-1L),0x2B5495EBL,0x34117F34L,0x2B5495EBL,(-1L)}};
    uint32_t l_599 = 0x6A4F4C32L;
    int16_t *l_604 = &p_2824->g_98;
    int16_t **l_603 = &l_604;
    uint32_t l_634 = 0UL;
    int8_t l_643[1];
    union U2 *l_696 = &p_2824->g_697;
    int32_t **l_705 = (void*)0;
    int i, j;
    for (i = 0; i < 1; i++)
        l_124[i] = (void*)0;
    for (i = 0; i < 1; i++)
        l_643[i] = 0x6AL;
    (*l_123) |= ((p_2824->g_98 , (safe_sub_func_int8_t_s_s(1L, (safe_mul_func_int8_t_s_s(((((p_2824->g_122 = ((((((l_116 == (l_120 = (safe_div_func_int32_t_s_s((*p_72), l_116)))) , p_2824->g_3) >= p_2824->g_89) == ((+l_116) && ((*p_70) &= l_116))) < 0x806A380BL) , FAKE_DIVERGE(p_2824->global_2_offset, get_global_id(2), 10))) || l_116) < p_73.f1) || 0UL), l_116))))) >= (*p_2824->g_32));
    if ((l_124[0] != (void*)0))
    { /* block id: 49 */
        int16_t l_184 = 0x4F68L;
        uint32_t *l_185 = (void*)0;
        uint32_t *l_186 = &p_2824->g_140[6][1][0];
        int8_t ***l_239 = &p_2824->g_200[2][4];
        int64_t *l_289 = &p_2824->g_172;
        int32_t l_313 = (-1L);
        int32_t **l_314[10][5][5] = {{{&l_123,&l_123,&p_2824->g_32,&p_2824->g_32,&p_2824->g_32},{&l_123,&l_123,&p_2824->g_32,&p_2824->g_32,&p_2824->g_32},{&l_123,&l_123,&p_2824->g_32,&p_2824->g_32,&p_2824->g_32},{&l_123,&l_123,&p_2824->g_32,&p_2824->g_32,&p_2824->g_32},{&l_123,&l_123,&p_2824->g_32,&p_2824->g_32,&p_2824->g_32}},{{&l_123,&l_123,&p_2824->g_32,&p_2824->g_32,&p_2824->g_32},{&l_123,&l_123,&p_2824->g_32,&p_2824->g_32,&p_2824->g_32},{&l_123,&l_123,&p_2824->g_32,&p_2824->g_32,&p_2824->g_32},{&l_123,&l_123,&p_2824->g_32,&p_2824->g_32,&p_2824->g_32},{&l_123,&l_123,&p_2824->g_32,&p_2824->g_32,&p_2824->g_32}},{{&l_123,&l_123,&p_2824->g_32,&p_2824->g_32,&p_2824->g_32},{&l_123,&l_123,&p_2824->g_32,&p_2824->g_32,&p_2824->g_32},{&l_123,&l_123,&p_2824->g_32,&p_2824->g_32,&p_2824->g_32},{&l_123,&l_123,&p_2824->g_32,&p_2824->g_32,&p_2824->g_32},{&l_123,&l_123,&p_2824->g_32,&p_2824->g_32,&p_2824->g_32}},{{&l_123,&l_123,&p_2824->g_32,&p_2824->g_32,&p_2824->g_32},{&l_123,&l_123,&p_2824->g_32,&p_2824->g_32,&p_2824->g_32},{&l_123,&l_123,&p_2824->g_32,&p_2824->g_32,&p_2824->g_32},{&l_123,&l_123,&p_2824->g_32,&p_2824->g_32,&p_2824->g_32},{&l_123,&l_123,&p_2824->g_32,&p_2824->g_32,&p_2824->g_32}},{{&l_123,&l_123,&p_2824->g_32,&p_2824->g_32,&p_2824->g_32},{&l_123,&l_123,&p_2824->g_32,&p_2824->g_32,&p_2824->g_32},{&l_123,&l_123,&p_2824->g_32,&p_2824->g_32,&p_2824->g_32},{&l_123,&l_123,&p_2824->g_32,&p_2824->g_32,&p_2824->g_32},{&l_123,&l_123,&p_2824->g_32,&p_2824->g_32,&p_2824->g_32}},{{&l_123,&l_123,&p_2824->g_32,&p_2824->g_32,&p_2824->g_32},{&l_123,&l_123,&p_2824->g_32,&p_2824->g_32,&p_2824->g_32},{&l_123,&l_123,&p_2824->g_32,&p_2824->g_32,&p_2824->g_32},{&l_123,&l_123,&p_2824->g_32,&p_2824->g_32,&p_2824->g_32},{&l_123,&l_123,&p_2824->g_32,&p_2824->g_32,&p_2824->g_32}},{{&l_123,&l_123,&p_2824->g_32,&p_2824->g_32,&p_2824->g_32},{&l_123,&l_123,&p_2824->g_32,&p_2824->g_32,&p_2824->g_32},{&l_123,&l_123,&p_2824->g_32,&p_2824->g_32,&p_2824->g_32},{&l_123,&l_123,&p_2824->g_32,&p_2824->g_32,&p_2824->g_32},{&l_123,&l_123,&p_2824->g_32,&p_2824->g_32,&p_2824->g_32}},{{&l_123,&l_123,&p_2824->g_32,&p_2824->g_32,&p_2824->g_32},{&l_123,&l_123,&p_2824->g_32,&p_2824->g_32,&p_2824->g_32},{&l_123,&l_123,&p_2824->g_32,&p_2824->g_32,&p_2824->g_32},{&l_123,&l_123,&p_2824->g_32,&p_2824->g_32,&p_2824->g_32},{&l_123,&l_123,&p_2824->g_32,&p_2824->g_32,&p_2824->g_32}},{{&l_123,&l_123,&p_2824->g_32,&p_2824->g_32,&p_2824->g_32},{&l_123,&l_123,&p_2824->g_32,&p_2824->g_32,&p_2824->g_32},{&l_123,&l_123,&p_2824->g_32,&p_2824->g_32,&p_2824->g_32},{&l_123,&l_123,&p_2824->g_32,&p_2824->g_32,&p_2824->g_32},{&l_123,&l_123,&p_2824->g_32,&p_2824->g_32,&p_2824->g_32}},{{&l_123,&l_123,&p_2824->g_32,&p_2824->g_32,&p_2824->g_32},{&l_123,&l_123,&p_2824->g_32,&p_2824->g_32,&p_2824->g_32},{&l_123,&l_123,&p_2824->g_32,&p_2824->g_32,&p_2824->g_32},{&l_123,&l_123,&p_2824->g_32,&p_2824->g_32,&p_2824->g_32},{&l_123,&l_123,&p_2824->g_32,&p_2824->g_32,&p_2824->g_32}}};
        struct S0 l_316 = {0x7E5EE16EF41DF27FL,0x45CBE1CAL};
        uint16_t **l_374 = (void*)0;
        int32_t *l_447 = &l_313;
        uint64_t l_498 = 0x2927857436F2B06FL;
        int8_t l_546 = 1L;
        int i, j, k;
        for (l_116 = 0; (l_116 < 9); l_116 = safe_add_func_int8_t_s_s(l_116, 3))
        { /* block id: 52 */
            int8_t l_170[4][6] = {{0x39L,0L,0x39L,0x39L,0L,0x39L},{0x39L,0L,0x39L,0x39L,0L,0x39L},{0x39L,0L,0x39L,0x39L,0L,0x39L},{0x39L,0L,0x39L,0x39L,0L,0x39L}};
            int i, j;
            for (p_73.f1 = (-4); (p_73.f1 < 16); p_73.f1 = safe_add_func_int16_t_s_s(p_73.f1, 2))
            { /* block id: 55 */
                int32_t l_139[7][10][3] = {{{1L,0x4E576ABBL,1L},{1L,0x4E576ABBL,1L},{1L,0x4E576ABBL,1L},{1L,0x4E576ABBL,1L},{1L,0x4E576ABBL,1L},{1L,0x4E576ABBL,1L},{1L,0x4E576ABBL,1L},{1L,0x4E576ABBL,1L},{1L,0x4E576ABBL,1L},{1L,0x4E576ABBL,1L}},{{1L,0x4E576ABBL,1L},{1L,0x4E576ABBL,1L},{1L,0x4E576ABBL,1L},{1L,0x4E576ABBL,1L},{1L,0x4E576ABBL,1L},{1L,0x4E576ABBL,1L},{1L,0x4E576ABBL,1L},{1L,0x4E576ABBL,1L},{1L,0x4E576ABBL,1L},{1L,0x4E576ABBL,1L}},{{1L,0x4E576ABBL,1L},{1L,0x4E576ABBL,1L},{1L,0x4E576ABBL,1L},{1L,0x4E576ABBL,1L},{1L,0x4E576ABBL,1L},{1L,0x4E576ABBL,1L},{1L,0x4E576ABBL,1L},{1L,0x4E576ABBL,1L},{1L,0x4E576ABBL,1L},{1L,0x4E576ABBL,1L}},{{1L,0x4E576ABBL,1L},{1L,0x4E576ABBL,1L},{1L,0x4E576ABBL,1L},{1L,0x4E576ABBL,1L},{1L,0x4E576ABBL,1L},{1L,0x4E576ABBL,1L},{1L,0x4E576ABBL,1L},{1L,0x4E576ABBL,1L},{1L,0x4E576ABBL,1L},{1L,0x4E576ABBL,1L}},{{1L,0x4E576ABBL,1L},{1L,0x4E576ABBL,1L},{1L,0x4E576ABBL,1L},{1L,0x4E576ABBL,1L},{1L,0x4E576ABBL,1L},{1L,0x4E576ABBL,1L},{1L,0x4E576ABBL,1L},{1L,0x4E576ABBL,1L},{1L,0x4E576ABBL,1L},{1L,0x4E576ABBL,1L}},{{1L,0x4E576ABBL,1L},{1L,0x4E576ABBL,1L},{1L,0x4E576ABBL,1L},{1L,0x4E576ABBL,1L},{1L,0x4E576ABBL,1L},{1L,0x4E576ABBL,1L},{1L,0x4E576ABBL,1L},{1L,0x4E576ABBL,1L},{1L,0x4E576ABBL,1L},{1L,0x4E576ABBL,1L}},{{1L,0x4E576ABBL,1L},{1L,0x4E576ABBL,1L},{1L,0x4E576ABBL,1L},{1L,0x4E576ABBL,1L},{1L,0x4E576ABBL,1L},{1L,0x4E576ABBL,1L},{1L,0x4E576ABBL,1L},{1L,0x4E576ABBL,1L},{1L,0x4E576ABBL,1L},{1L,0x4E576ABBL,1L}}};
                int32_t l_152 = 0x74BDA337L;
                int i, j, k;
                for (p_73.f0 = 0; (p_73.f0 < 11); p_73.f0 = safe_add_func_uint8_t_u_u(p_73.f0, 6))
                { /* block id: 58 */
                    uint16_t l_143 = 0xEAE9L;
                    int16_t *l_153 = &p_2824->g_98;
                    uint32_t *l_168[2][9] = {{&p_2824->g_140[6][1][7],&p_2824->g_140[6][1][7],&p_2824->g_140[6][1][7],&p_2824->g_140[6][1][7],&p_2824->g_140[6][1][7],&p_2824->g_140[6][1][7],&p_2824->g_140[6][1][7],&p_2824->g_140[6][1][7],&p_2824->g_140[6][1][7]},{&p_2824->g_140[6][1][7],&p_2824->g_140[6][1][7],&p_2824->g_140[6][1][7],&p_2824->g_140[6][1][7],&p_2824->g_140[6][1][7],&p_2824->g_140[6][1][7],&p_2824->g_140[6][1][7],&p_2824->g_140[6][1][7],&p_2824->g_140[6][1][7]}};
                    int32_t l_169 = (-1L);
                    int64_t *l_171 = &p_2824->g_172;
                    int32_t *l_173 = &l_139[0][9][2];
                    int i, j;
                    for (p_2824->g_98 = (-20); (p_2824->g_98 < 13); p_2824->g_98 = safe_add_func_int8_t_s_s(p_2824->g_98, 1))
                    { /* block id: 61 */
                        int32_t *l_133 = &p_2824->g_111[1].f1;
                        int32_t *l_134 = &l_120;
                        int32_t *l_135 = &p_2824->g_111[1].f1;
                        int32_t *l_136 = &p_2824->g_111[1].f1;
                        int32_t *l_137 = (void*)0;
                        int32_t *l_138[5];
                        int i;
                        for (i = 0; i < 5; i++)
                            l_138[i] = &p_2824->g_97;
                        p_2824->g_140[9][0][6]--;
                        --l_143;
                    }
                    (*l_173) ^= (safe_mul_func_int16_t_s_s((((safe_sub_func_int8_t_s_s((p_2824->g_140[9][0][6] , ((p_73.f0 >= ((safe_sub_func_int16_t_s_s(((*l_153) = l_152), ((((*l_171) = ((safe_add_func_uint8_t_u_u((safe_mul_func_int8_t_s_s(((safe_mod_func_int32_t_s_s((GROUP_DIVERGE(0, 1) & (((*p_70) <= (l_169 ^= ((safe_lshift_func_uint16_t_u_u(((void*)0 == &p_72), 6)) , (safe_lshift_func_uint16_t_u_s((safe_sub_func_int64_t_s_s((safe_mul_func_uint8_t_u_u(1UL, l_143)), ((*l_123) , p_71))), p_71))))) <= FAKE_DIVERGE(p_2824->global_0_offset, get_global_id(0), 10))), l_170[1][1])) < p_71), (*l_123))), p_2824->g_122)) ^ p_73.f1)) > 0x42B3FC87B302CBC4L) , p_73.f0))) | 0x7AA7700AL)) , p_71)), p_2824->g_122)) , &p_2824->g_122) == &p_2824->g_122), 8UL));
                }
            }
            return p_2824->g_122;
        }
        if (((p_2824->g_108 || (safe_rshift_func_uint16_t_u_s((safe_mul_func_uint8_t_u_u((((((*l_123) & (safe_div_func_int32_t_s_s((p_73 , (*p_2824->g_32)), (*p_2824->g_32)))) == (p_73.f1 || ((((*l_186) |= (p_71 & ((safe_mod_func_int32_t_s_s((*p_2824->g_32), (safe_sub_func_uint64_t_u_u(p_2824->g_98, (*l_123))))) < l_184))) != (*l_123)) , 1L))) , p_2824->g_172) ^ 0x07L), (*l_123))), p_73.f1))) < p_2824->g_3))
        { /* block id: 74 */
            int8_t ***l_195 = &p_2824->g_193;
            int8_t **l_197 = &p_2824->g_194;
            int8_t ***l_196 = &l_197;
            int8_t **l_199 = &p_2824->g_194;
            int8_t ***l_198[1][10][6] = {{{&l_199,&l_199,(void*)0,&l_199,&l_199,(void*)0},{&l_199,&l_199,(void*)0,&l_199,&l_199,(void*)0},{&l_199,&l_199,(void*)0,&l_199,&l_199,(void*)0},{&l_199,&l_199,(void*)0,&l_199,&l_199,(void*)0},{&l_199,&l_199,(void*)0,&l_199,&l_199,(void*)0},{&l_199,&l_199,(void*)0,&l_199,&l_199,(void*)0},{&l_199,&l_199,(void*)0,&l_199,&l_199,(void*)0},{&l_199,&l_199,(void*)0,&l_199,&l_199,(void*)0},{&l_199,&l_199,(void*)0,&l_199,&l_199,(void*)0},{&l_199,&l_199,(void*)0,&l_199,&l_199,(void*)0}}};
            uint64_t *l_211 = &p_2824->g_212[0][3][1];
            int32_t l_213 = (-8L);
            uint8_t *l_214 = &p_2824->g_215;
            uint32_t *l_247 = &p_2824->g_140[9][0][6];
            int64_t l_286 = 0x0F9884C0950837F9L;
            int32_t *l_291 = &l_120;
            int32_t l_302 = 0x3D1D4FCDL;
            int32_t l_306 = 0x1C7F1478L;
            int32_t l_307[1];
            uint16_t **l_373 = (void*)0;
            int i, j, k;
            for (i = 0; i < 1; i++)
                l_307[i] = 0x175B69B9L;
            if ((((safe_add_func_int8_t_s_s(((0x6C53L >= (((*l_214) ^= (safe_lshift_func_int16_t_s_s(((((safe_mod_func_int32_t_s_s((((*l_195) = p_2824->g_193) == (p_2824->g_200[0][0] = ((*l_196) = &p_2824->g_194))), (((safe_rshift_func_int8_t_s_s((!(((safe_rshift_func_uint8_t_u_s(((0x62A72BD4L < ((safe_mul_func_uint16_t_u_u(65535UL, ((((safe_sub_func_uint8_t_u_u((p_2824->g_111[1].f1 , (((!((((safe_mod_func_int32_t_s_s((*l_123), 0x17F37F7AL)) , ((*l_211) = FAKE_DIVERGE(p_2824->group_2_offset, get_group_id(2), 10))) == (0xAA033F47L || 1L)) && 0x3BCDCC49L)) != l_213) & l_184)), 246UL)) , (*p_2824->g_32)) > l_184) < p_71))) >= FAKE_DIVERGE(p_2824->local_1_offset, get_local_id(1), 10))) != l_213), 4)) != p_2824->g_111[1].f1) == 0L)), 4)) > 0x178EL) | 1L))) || p_73.f1) > 0UL) < GROUP_DIVERGE(1, 1)), p_2824->g_97))) > (*l_123))) , 4L), l_213)) ^ 5L) >= 0x1C0ED8998BE7CB55L))
            { /* block id: 80 */
                int8_t ***l_240 = (void*)0;
                int32_t l_242 = 0x4B9D27FBL;
                int32_t **l_261 = &p_2824->g_32;
                uint32_t l_281[8][10] = {{0xE0B9C208L,0xC50ED1BEL,0xE0A3D1CDL,0x06C0E4DFL,4294967295UL,0xE0B9C208L,0x06C0E4DFL,1UL,0x06C0E4DFL,0xE0B9C208L},{0xE0B9C208L,0xC50ED1BEL,0xE0A3D1CDL,0x06C0E4DFL,4294967295UL,0xE0B9C208L,0x06C0E4DFL,1UL,0x06C0E4DFL,0xE0B9C208L},{0xE0B9C208L,0xC50ED1BEL,0xE0A3D1CDL,0x06C0E4DFL,4294967295UL,0xE0B9C208L,0x06C0E4DFL,1UL,0x06C0E4DFL,0xE0B9C208L},{0xE0B9C208L,0xC50ED1BEL,0xE0A3D1CDL,0x06C0E4DFL,4294967295UL,0xE0B9C208L,0x06C0E4DFL,1UL,0x06C0E4DFL,0xE0B9C208L},{0xE0B9C208L,0xC50ED1BEL,0xE0A3D1CDL,0x06C0E4DFL,4294967295UL,0xE0B9C208L,0x06C0E4DFL,1UL,0x06C0E4DFL,0xE0B9C208L},{0xE0B9C208L,0xC50ED1BEL,0xE0A3D1CDL,0x06C0E4DFL,4294967295UL,0xE0B9C208L,0x06C0E4DFL,1UL,0x06C0E4DFL,0xE0B9C208L},{0xE0B9C208L,0xC50ED1BEL,0xE0A3D1CDL,0x06C0E4DFL,4294967295UL,0xE0B9C208L,0x06C0E4DFL,1UL,0x06C0E4DFL,0xE0B9C208L},{0xE0B9C208L,0xC50ED1BEL,0xE0A3D1CDL,0x06C0E4DFL,4294967295UL,0xE0B9C208L,0x06C0E4DFL,1UL,0x06C0E4DFL,0xE0B9C208L}};
                uint32_t l_285 = 0xFABAB807L;
                int i, j;
                for (p_2824->g_172 = 0; (p_2824->g_172 < (-9)); p_2824->g_172 = safe_sub_func_uint8_t_u_u(p_2824->g_172, 5))
                { /* block id: 83 */
                    int32_t *l_224 = &p_2824->g_225;
                    int16_t *l_233 = (void*)0;
                    int16_t *l_234 = &l_184;
                    int32_t l_235 = 0x5B083823L;
                    int8_t ****l_238[6];
                    int32_t *l_241 = &l_213;
                    int i;
                    for (i = 0; i < 6; i++)
                        l_238[i] = (void*)0;
                    (*l_123) = ((((safe_mod_func_uint16_t_u_u(((1L != ((safe_div_func_int8_t_s_s(((safe_lshift_func_uint8_t_u_s((((*l_211) = (*l_123)) && (((*l_224) = p_73.f1) , ((safe_mul_func_uint16_t_u_u((safe_mul_func_int32_t_s_s((*p_70), (((safe_unary_minus_func_uint64_t_u((((*l_186)--) , (((((p_73.f1 , GROUP_DIVERGE(1, 1)) != (((*l_234) ^= p_73.f1) & (~(p_70 != (((p_2824->g_122--) > ((((((((((l_239 = &p_2824->g_193) != (l_240 = l_240)) ^ 0x589B93CAL) | p_2824->g_89) > p_2824->g_212[2][0][0]) != p_2824->g_212[0][3][1]) <= l_235) , &p_2824->g_97) == &p_2824->g_3) | (*p_2824->g_32))) , l_241))))) < p_2824->g_140[8][1][4]) , l_242) < FAKE_DIVERGE(p_2824->local_2_offset, get_local_id(2), 10))))) || GROUP_DIVERGE(1, 1)) <= 0x686E8CEDF58C5167L))), FAKE_DIVERGE(p_2824->group_2_offset, get_group_id(2), 10))) && (*p_70)))), p_73.f1)) == 0x5484FCDBAE385C26L), 0x15L)) , 0x4FF2L)) && 18446744073709551615UL), 0x24ACL)) & p_73.f0) ^ l_242) > p_2824->g_108);
                    (*p_70) &= ((*l_123) = ((*l_241) = (*p_72)));
                    for (p_2824->g_122 = (-24); (p_2824->g_122 == 5); p_2824->g_122 = safe_add_func_uint32_t_u_u(p_2824->g_122, 4))
                    { /* block id: 97 */
                        (*l_123) ^= 6L;
                        return p_2824->g_111[1].f0;
                    }
                    return p_73.f0;
                }
                (*l_261) = func_74(((((safe_rshift_func_uint16_t_u_s(((!p_2824->g_111[1].f1) >= p_73.f1), 12)) >= ((*p_70) &= (l_247 == (void*)0))) , (safe_mod_func_uint32_t_u_u(p_2824->g_212[0][3][1], (safe_div_func_int64_t_s_s((safe_sub_func_uint64_t_u_u(FAKE_DIVERGE(p_2824->global_1_offset, get_global_id(1), 10), (safe_sub_func_int64_t_s_s((safe_mul_func_uint16_t_u_u((p_2824->g_122++), (l_213 , p_2824->g_260))), (*l_123))))), ((*l_123) & l_184)))))) ^ 0x43L), (*l_123), &p_2824->g_32, l_242, p_73.f0, p_2824);
                for (l_213 = 0; (l_213 >= 0); l_213 -= 1)
                { /* block id: 108 */
                    int32_t ***l_268 = &l_261;
                    int16_t *l_284 = &p_2824->g_98;
                    int32_t l_299 = 0x6399D35BL;
                    int32_t l_304 = 0x0456AD2EL;
                    int32_t l_305[1];
                    int32_t *l_315 = &l_305[0];
                    int i;
                    for (i = 0; i < 1; i++)
                        l_305[i] = 0x7F77FB08L;
                    if ((((safe_rshift_func_uint16_t_u_s(l_184, 2)) , 0xA0224BADL) <= (((safe_mod_func_uint16_t_u_u(65535UL, (safe_lshift_func_int16_t_s_s((((*l_123) = (FAKE_DIVERGE(p_2824->group_2_offset, get_group_id(2), 10) , (((*l_268) = &p_2824->g_32) == ((safe_add_func_int16_t_s_s(((safe_mul_func_uint8_t_u_u(l_184, ((safe_rshift_func_int8_t_s_s((((void*)0 == &p_2824->g_212[7][1][2]) || (--(*l_211))), ((safe_mod_func_uint8_t_u_u(p_2824->g_225, (safe_add_func_int8_t_s_s(((((65529UL == p_2824->g_111[1].f0) || 0x43L) | p_2824->g_98) > p_73.f1), FAKE_DIVERGE(p_2824->local_0_offset, get_local_id(0), 10))))) ^ p_2824->g_215))) , l_281[2][9]))) != 0x2166FAD5L), 0x083FL)) , &p_2824->g_32)))) || p_2824->g_140[9][0][6]), p_2824->g_89)))) || p_2824->g_172) > p_2824->g_3)))
                    { /* block id: 112 */
                        int32_t *l_290 = &l_120;
                        (*l_123) = (safe_add_func_int32_t_s_s((l_285 &= ((*p_2824->g_32) = ((void*)0 != l_284))), l_286));
                        (*p_70) = (((((*l_123) , (void*)0) == l_121[3][0]) != 0UL) == l_184);
                        (*p_70) ^= ((*l_290) = (0xF9BF49BACA0825CEL ^ (safe_sub_func_int16_t_s_s((((!(p_73.f1 <= ((void*)0 == l_289))) ^ p_71) || (p_2824->g_215 & ((*l_211) = ((&p_2824->g_33 == (l_291 = (p_2824->g_32 = l_290))) & l_213)))), 0x23B0L))));
                        if (l_184)
                            continue;
                    }
                    else
                    { /* block id: 123 */
                        int32_t *l_292 = &p_2824->g_97;
                        int32_t *l_293 = (void*)0;
                        int32_t l_294 = 0x0D2C7DCDL;
                        int32_t *l_295 = &l_294;
                        int32_t l_297 = 0x6038D1A8L;
                        int32_t *l_298 = &l_242;
                        int32_t *l_300 = &l_299;
                        int32_t *l_301 = (void*)0;
                        int32_t *l_303[1];
                        int i;
                        for (i = 0; i < 1; i++)
                            l_303[i] = (void*)0;
                        p_2824->g_308[0][2]--;
                        l_315 = ((*l_261) = func_74((FAKE_DIVERGE(p_2824->global_0_offset, get_global_id(0), 10) > (***l_268)), (l_313 = (1L || (FAKE_DIVERGE(p_2824->local_0_offset, get_local_id(0), 10) <= (FAKE_DIVERGE(p_2824->local_1_offset, get_local_id(1), 10) > (safe_mod_func_uint64_t_u_u(GROUP_DIVERGE(2, 1), p_2824->g_225)))))), l_314[6][2][4], p_73.f1, (0UL && 0x77D2L), p_2824));
                        (*l_300) &= (**l_261);
                        p_2824->g_111[0] = p_73;
                    }
                    l_316 = p_2824->g_111[1];
                    (**l_268) = &p_2824->g_97;
                    return p_73.f1;
                }
            }
            else
            { /* block id: 135 */
                (*l_291) &= (safe_mul_func_int16_t_s_s(0x4E77L, (0xF6ADE8332B8EC61AL < ((void*)0 != l_289))));
                p_2824->g_319 = (void*)0;
                (*l_196) = (void*)0;
                return (*l_123);
            }
            if ((*l_123))
            { /* block id: 141 */
                int32_t l_321 = 0L;
                int32_t l_322 = 0x541F7887L;
                uint64_t l_394[6][9][2] = {{{0UL,0UL},{0UL,0UL},{0UL,0UL},{0UL,0UL},{0UL,0UL},{0UL,0UL},{0UL,0UL},{0UL,0UL},{0UL,0UL}},{{0UL,0UL},{0UL,0UL},{0UL,0UL},{0UL,0UL},{0UL,0UL},{0UL,0UL},{0UL,0UL},{0UL,0UL},{0UL,0UL}},{{0UL,0UL},{0UL,0UL},{0UL,0UL},{0UL,0UL},{0UL,0UL},{0UL,0UL},{0UL,0UL},{0UL,0UL},{0UL,0UL}},{{0UL,0UL},{0UL,0UL},{0UL,0UL},{0UL,0UL},{0UL,0UL},{0UL,0UL},{0UL,0UL},{0UL,0UL},{0UL,0UL}},{{0UL,0UL},{0UL,0UL},{0UL,0UL},{0UL,0UL},{0UL,0UL},{0UL,0UL},{0UL,0UL},{0UL,0UL},{0UL,0UL}},{{0UL,0UL},{0UL,0UL},{0UL,0UL},{0UL,0UL},{0UL,0UL},{0UL,0UL},{0UL,0UL},{0UL,0UL},{0UL,0UL}}};
                int i, j, k;
                p_2824->g_323++;
                for (p_2824->g_97 = 0; (p_2824->g_97 < 25); p_2824->g_97++)
                { /* block id: 145 */
                    int16_t *l_346 = &l_184;
                    int32_t l_353[5];
                    int32_t l_366 = 9L;
                    int i;
                    for (i = 0; i < 5; i++)
                        l_353[i] = 0x1F4458C4L;
                    if ((safe_div_func_uint8_t_u_u((safe_lshift_func_int8_t_s_u((+((((*l_346) ^= (p_73.f0 , (safe_div_func_uint32_t_u_u((((*p_2824->g_320) == FAKE_DIVERGE(p_2824->local_2_offset, get_local_id(2), 10)) != ((p_73.f0 , (+(safe_unary_minus_func_uint16_t_u(p_73.f1)))) ^ ((~(safe_mul_func_uint8_t_u_u(((safe_div_func_uint16_t_u_u(((**l_239) == (void*)0), (safe_rshift_func_uint16_t_u_s(((safe_lshift_func_uint16_t_u_s((((*l_291) || (p_73.f0 , (((safe_add_func_int8_t_s_s((safe_unary_minus_func_int8_t_s(p_73.f1)), 0x2CL)) <= p_2824->g_225) == p_73.f0))) != p_73.f0), 3)) || 3UL), p_71)))) , 1UL), (*l_291)))) , 0UL))), (*p_70))))) , 0x73BCL) , (-1L))), 4)), p_73.f1)))
                    { /* block id: 147 */
                        p_2824->g_32 = p_72;
                    }
                    else
                    { /* block id: 149 */
                        if ((*p_2824->g_32))
                            break;
                        (*l_291) |= (*l_123);
                        (*l_291) = (0x0154L != p_2824->g_3);
                        (*l_291) = (p_2824->g_260 | (((safe_rshift_func_uint16_t_u_u(((**p_2824->g_319) ^= (p_2824->g_89 < (safe_add_func_int8_t_s_s((safe_mod_func_int64_t_s_s(0x03366FF656DDDE73L, 0xB6861744C5951356L)), (**p_2824->g_193))))), p_73.f0)) < (*p_2824->g_194)) <= l_353[2]));
                    }
                    p_73.f1 &= ((safe_sub_func_uint16_t_u_u((**p_2824->g_319), (FAKE_DIVERGE(p_2824->local_2_offset, get_local_id(2), 10) >= ((l_322 &= (p_2824->g_215 && (safe_lshift_func_uint8_t_u_u(0xAAL, (p_2824->g_3 && ((safe_lshift_func_uint16_t_u_s(((safe_lshift_func_int8_t_s_s(((l_353[2] = (GROUP_DIVERGE(2, 1) & ((((safe_mul_func_uint8_t_u_u(((**p_2824->g_319) == (**p_2824->g_319)), ((safe_sub_func_uint64_t_u_u(GROUP_DIVERGE(2, 1), 18446744073709551611UL)) <= (((void*)0 != &p_2824->g_98) == (*l_123))))) && 1L) || p_2824->g_215) && p_2824->g_172))) > p_2824->g_140[9][0][6]), l_366)) , 65529UL), 14)) < GROUP_DIVERGE(2, 1))))))) && FAKE_DIVERGE(p_2824->group_0_offset, get_group_id(0), 10))))) == p_73.f0);
                    p_2824->g_32 = &p_2824->g_3;
                }
                for (p_71 = 0; (p_71 <= 37); p_71 = safe_add_func_int64_t_s_s(p_71, 7))
                { /* block id: 163 */
                    uint16_t l_390 = 0x11FBL;
                    int32_t l_393 = 1L;
                    (*p_70) = (safe_mul_func_uint16_t_u_u((((*l_123) = (safe_sub_func_uint8_t_u_u((l_373 == l_374), (safe_sub_func_int32_t_s_s(((((**p_2824->g_319) = ((safe_add_func_uint64_t_u_u(((((safe_unary_minus_func_int16_t_s((safe_mul_func_uint8_t_u_u((p_2824->g_3 | (safe_mul_func_uint8_t_u_u(((safe_mul_func_uint16_t_u_u((**p_2824->g_319), (p_2824->g_308[0][6] == (+((l_390 ^= (safe_div_func_uint64_t_u_u((safe_lshift_func_uint16_t_u_s(p_73.f1, 0)), p_73.f1))) <= (p_2824->g_140[9][0][6] |= FAKE_DIVERGE(p_2824->group_0_offset, get_group_id(0), 10))))))) ^ 0x2693D1BC77AE552DL), ((***l_195) = (((safe_mul_func_int16_t_s_s(((((+l_321) != (-9L)) < l_393) , 0x0EE5L), p_73.f0)) , GROUP_DIVERGE(2, 1)) ^ 0x4E4E9D23C24342D2L))))), 0x4EL)))) <= p_71) > l_394[2][4][1]) ^ p_73.f0), p_71)) , 65527UL)) && (*p_2824->g_320)) <= p_71), 0x4CCA481AL))))) == (*l_291)), p_71));
                    if ((atomic_inc(&p_2824->g_atomic_input[54 * get_linear_group_id() + 40]) == 0))
                    { /* block id: 171 */
                        uint16_t l_395 = 0UL;
                        uint64_t l_398[5] = {0xA541254BD4C1ED87L,0xA541254BD4C1ED87L,0xA541254BD4C1ED87L,0xA541254BD4C1ED87L,0xA541254BD4C1ED87L};
                        int32_t l_399 = 1L;
                        int i;
                        l_395++;
                        l_399 &= l_398[0];
                        unsigned int result = 0;
                        result += l_395;
                        int l_398_i0;
                        for (l_398_i0 = 0; l_398_i0 < 5; l_398_i0++) {
                            result += l_398[l_398_i0];
                        }
                        result += l_399;
                        atomic_add(&p_2824->g_special_values[54 * get_linear_group_id() + 40], result);
                    }
                    else
                    { /* block id: 174 */
                        (1 + 1);
                    }
                    if ((atomic_inc(&p_2824->g_atomic_input[54 * get_linear_group_id() + 27]) == 6))
                    { /* block id: 178 */
                        uint16_t l_400 = 0xB51DL;
                        uint64_t l_401[4];
                        uint32_t l_402 = 0UL;
                        uint8_t l_403 = 0xF1L;
                        uint32_t l_404[9][5] = {{0x98116AECL,0x0F9DFC2DL,4294967286UL,1UL,4294967286UL},{0x98116AECL,0x0F9DFC2DL,4294967286UL,1UL,4294967286UL},{0x98116AECL,0x0F9DFC2DL,4294967286UL,1UL,4294967286UL},{0x98116AECL,0x0F9DFC2DL,4294967286UL,1UL,4294967286UL},{0x98116AECL,0x0F9DFC2DL,4294967286UL,1UL,4294967286UL},{0x98116AECL,0x0F9DFC2DL,4294967286UL,1UL,4294967286UL},{0x98116AECL,0x0F9DFC2DL,4294967286UL,1UL,4294967286UL},{0x98116AECL,0x0F9DFC2DL,4294967286UL,1UL,4294967286UL},{0x98116AECL,0x0F9DFC2DL,4294967286UL,1UL,4294967286UL}};
                        int64_t l_405 = 0x1BAC9792C464395FL;
                        int32_t l_406 = 2L;
                        int16_t l_407 = 6L;
                        int8_t l_408 = 0x1FL;
                        uint32_t l_409 = 4294967286UL;
                        int i, j;
                        for (i = 0; i < 4; i++)
                            l_401[i] = 0xFA09F26B18DD72A3L;
                        l_400 = 8L;
                        l_404[5][1] = ((l_402 = l_401[1]) , (l_403 , (-9L)));
                        ++l_409;
                        unsigned int result = 0;
                        result += l_400;
                        int l_401_i0;
                        for (l_401_i0 = 0; l_401_i0 < 4; l_401_i0++) {
                            result += l_401[l_401_i0];
                        }
                        result += l_402;
                        result += l_403;
                        int l_404_i0, l_404_i1;
                        for (l_404_i0 = 0; l_404_i0 < 9; l_404_i0++) {
                            for (l_404_i1 = 0; l_404_i1 < 5; l_404_i1++) {
                                result += l_404[l_404_i0][l_404_i1];
                            }
                        }
                        result += l_405;
                        result += l_406;
                        result += l_407;
                        result += l_408;
                        result += l_409;
                        atomic_add(&p_2824->g_special_values[54 * get_linear_group_id() + 27], result);
                    }
                    else
                    { /* block id: 183 */
                        (1 + 1);
                    }
                    (*p_70) = 0x0F79C41BL;
                }
            }
            else
            { /* block id: 188 */
                int8_t *l_422 = &p_2824->g_89;
                int16_t *l_423[4][10][4] = {{{&p_2824->g_98,&l_184,&l_184,&p_2824->g_98},{&p_2824->g_98,&l_184,&l_184,&p_2824->g_98},{&p_2824->g_98,&l_184,&l_184,&p_2824->g_98},{&p_2824->g_98,&l_184,&l_184,&p_2824->g_98},{&p_2824->g_98,&l_184,&l_184,&p_2824->g_98},{&p_2824->g_98,&l_184,&l_184,&p_2824->g_98},{&p_2824->g_98,&l_184,&l_184,&p_2824->g_98},{&p_2824->g_98,&l_184,&l_184,&p_2824->g_98},{&p_2824->g_98,&l_184,&l_184,&p_2824->g_98},{&p_2824->g_98,&l_184,&l_184,&p_2824->g_98}},{{&p_2824->g_98,&l_184,&l_184,&p_2824->g_98},{&p_2824->g_98,&l_184,&l_184,&p_2824->g_98},{&p_2824->g_98,&l_184,&l_184,&p_2824->g_98},{&p_2824->g_98,&l_184,&l_184,&p_2824->g_98},{&p_2824->g_98,&l_184,&l_184,&p_2824->g_98},{&p_2824->g_98,&l_184,&l_184,&p_2824->g_98},{&p_2824->g_98,&l_184,&l_184,&p_2824->g_98},{&p_2824->g_98,&l_184,&l_184,&p_2824->g_98},{&p_2824->g_98,&l_184,&l_184,&p_2824->g_98},{&p_2824->g_98,&l_184,&l_184,&p_2824->g_98}},{{&p_2824->g_98,&l_184,&l_184,&p_2824->g_98},{&p_2824->g_98,&l_184,&l_184,&p_2824->g_98},{&p_2824->g_98,&l_184,&l_184,&p_2824->g_98},{&p_2824->g_98,&l_184,&l_184,&p_2824->g_98},{&p_2824->g_98,&l_184,&l_184,&p_2824->g_98},{&p_2824->g_98,&l_184,&l_184,&p_2824->g_98},{&p_2824->g_98,&l_184,&l_184,&p_2824->g_98},{&p_2824->g_98,&l_184,&l_184,&p_2824->g_98},{&p_2824->g_98,&l_184,&l_184,&p_2824->g_98},{&p_2824->g_98,&l_184,&l_184,&p_2824->g_98}},{{&p_2824->g_98,&l_184,&l_184,&p_2824->g_98},{&p_2824->g_98,&l_184,&l_184,&p_2824->g_98},{&p_2824->g_98,&l_184,&l_184,&p_2824->g_98},{&p_2824->g_98,&l_184,&l_184,&p_2824->g_98},{&p_2824->g_98,&l_184,&l_184,&p_2824->g_98},{&p_2824->g_98,&l_184,&l_184,&p_2824->g_98},{&p_2824->g_98,&l_184,&l_184,&p_2824->g_98},{&p_2824->g_98,&l_184,&l_184,&p_2824->g_98},{&p_2824->g_98,&l_184,&l_184,&p_2824->g_98},{&p_2824->g_98,&l_184,&l_184,&p_2824->g_98}}};
                int32_t l_426 = 0x3BF2915EL;
                int32_t l_441 = 1L;
                int32_t *l_444 = (void*)0;
                int32_t *l_445 = (void*)0;
                int32_t *l_446 = &p_2824->g_260;
                int32_t l_527 = 0x2DF27569L;
                int32_t l_528 = 0x76BC8BAFL;
                int32_t l_530 = (-1L);
                uint64_t *l_540[8] = {&p_2824->g_541[5][0][2],&p_2824->g_541[5][0][2],&p_2824->g_541[5][0][2],&p_2824->g_541[5][0][2],&p_2824->g_541[5][0][2],&p_2824->g_541[5][0][2],&p_2824->g_541[5][0][2],&p_2824->g_541[5][0][2]};
                int16_t **l_543 = &l_423[1][9][1];
                int i, j, k;
                (*l_123) |= (((safe_lshift_func_uint8_t_u_u(((safe_rshift_func_int8_t_s_s((safe_sub_func_uint8_t_u_u((safe_lshift_func_int16_t_s_s(((safe_mul_func_int16_t_s_s((((((((*p_2824->g_320) && (p_2824->g_98 ^= (l_422 == ((*l_199) = (**l_239))))) , (((***l_195) ^= ((l_426 |= ((l_422 != l_119) != (safe_div_func_int64_t_s_s(((*l_289) |= (*l_291)), (~0xD19B0400582BA67BL))))) ^ ((safe_lshift_func_uint16_t_u_u((safe_sub_func_uint32_t_u_u((safe_rshift_func_uint16_t_u_s((safe_sub_func_int16_t_s_s((safe_lshift_func_uint8_t_u_u(((safe_rshift_func_uint8_t_u_s((safe_lshift_func_int16_t_s_s(0x71E7L, 3)), (0x557BBE8912F01A4FL & 0xBAFCFDFD8881135BL))) && FAKE_DIVERGE(p_2824->local_0_offset, get_local_id(0), 10)), FAKE_DIVERGE(p_2824->global_2_offset, get_global_id(2), 10))), p_73.f0)), p_71)), (*l_291))), (*l_291))) < 1L))) , (**p_2824->g_193))) < 0xF7L) & p_73.f0) , &l_198[0][4][0]) != (void*)0), p_73.f1)) <= 0UL), 3)), 0UL)), p_71)) == p_2824->g_3), FAKE_DIVERGE(p_2824->global_1_offset, get_global_id(1), 10))) ^ (*l_291)) > l_441);
                (*l_447) &= ((*p_70) = (safe_div_func_uint16_t_u_u(((((*l_123) = (((((*l_446) = p_2824->g_89) , (l_447 == (l_291 = &p_2824->g_33))) | ((**p_2824->g_319)++)) > ((((p_73.f1 < 0x0DB2EAB432D33EEFL) , (**p_2824->g_193)) != (((l_213 = ((safe_mul_func_int16_t_s_s((((safe_lshift_func_int8_t_s_s((safe_div_func_int64_t_s_s(((p_71 ^ (p_2824->g_33 | 7UL)) <= p_2824->g_108), p_2824->g_308[0][2])), (**p_2824->g_193))) ^ l_426) == p_73.f0), p_2824->g_225)) >= (-2L))) < p_2824->g_212[1][0][1]) >= (*l_123))) && p_2824->g_212[0][3][1]))) < p_2824->g_308[2][1]) , p_73.f1), p_2824->g_215)));
                for (l_116 = 0; (l_116 <= (-21)); --l_116)
                { /* block id: 204 */
                    int32_t *l_497 = (void*)0;
                    int32_t l_500 = 0L;
                    int32_t *l_521 = &l_316.f1;
                    int32_t l_524[9][3][7] = {{{(-5L),(-5L),0x43E66AD7L,0x04064BBCL,0x2B31E688L,0x04064BBCL,0x43E66AD7L},{(-5L),(-5L),0x43E66AD7L,0x04064BBCL,0x2B31E688L,0x04064BBCL,0x43E66AD7L},{(-5L),(-5L),0x43E66AD7L,0x04064BBCL,0x2B31E688L,0x04064BBCL,0x43E66AD7L}},{{(-5L),(-5L),0x43E66AD7L,0x04064BBCL,0x2B31E688L,0x04064BBCL,0x43E66AD7L},{(-5L),(-5L),0x43E66AD7L,0x04064BBCL,0x2B31E688L,0x04064BBCL,0x43E66AD7L},{(-5L),(-5L),0x43E66AD7L,0x04064BBCL,0x2B31E688L,0x04064BBCL,0x43E66AD7L}},{{(-5L),(-5L),0x43E66AD7L,0x04064BBCL,0x2B31E688L,0x04064BBCL,0x43E66AD7L},{(-5L),(-5L),0x43E66AD7L,0x04064BBCL,0x2B31E688L,0x04064BBCL,0x43E66AD7L},{(-5L),(-5L),0x43E66AD7L,0x04064BBCL,0x2B31E688L,0x04064BBCL,0x43E66AD7L}},{{(-5L),(-5L),0x43E66AD7L,0x04064BBCL,0x2B31E688L,0x04064BBCL,0x43E66AD7L},{(-5L),(-5L),0x43E66AD7L,0x04064BBCL,0x2B31E688L,0x04064BBCL,0x43E66AD7L},{(-5L),(-5L),0x43E66AD7L,0x04064BBCL,0x2B31E688L,0x04064BBCL,0x43E66AD7L}},{{(-5L),(-5L),0x43E66AD7L,0x04064BBCL,0x2B31E688L,0x04064BBCL,0x43E66AD7L},{(-5L),(-5L),0x43E66AD7L,0x04064BBCL,0x2B31E688L,0x04064BBCL,0x43E66AD7L},{(-5L),(-5L),0x43E66AD7L,0x04064BBCL,0x2B31E688L,0x04064BBCL,0x43E66AD7L}},{{(-5L),(-5L),0x43E66AD7L,0x04064BBCL,0x2B31E688L,0x04064BBCL,0x43E66AD7L},{(-5L),(-5L),0x43E66AD7L,0x04064BBCL,0x2B31E688L,0x04064BBCL,0x43E66AD7L},{(-5L),(-5L),0x43E66AD7L,0x04064BBCL,0x2B31E688L,0x04064BBCL,0x43E66AD7L}},{{(-5L),(-5L),0x43E66AD7L,0x04064BBCL,0x2B31E688L,0x04064BBCL,0x43E66AD7L},{(-5L),(-5L),0x43E66AD7L,0x04064BBCL,0x2B31E688L,0x04064BBCL,0x43E66AD7L},{(-5L),(-5L),0x43E66AD7L,0x04064BBCL,0x2B31E688L,0x04064BBCL,0x43E66AD7L}},{{(-5L),(-5L),0x43E66AD7L,0x04064BBCL,0x2B31E688L,0x04064BBCL,0x43E66AD7L},{(-5L),(-5L),0x43E66AD7L,0x04064BBCL,0x2B31E688L,0x04064BBCL,0x43E66AD7L},{(-5L),(-5L),0x43E66AD7L,0x04064BBCL,0x2B31E688L,0x04064BBCL,0x43E66AD7L}},{{(-5L),(-5L),0x43E66AD7L,0x04064BBCL,0x2B31E688L,0x04064BBCL,0x43E66AD7L},{(-5L),(-5L),0x43E66AD7L,0x04064BBCL,0x2B31E688L,0x04064BBCL,0x43E66AD7L},{(-5L),(-5L),0x43E66AD7L,0x04064BBCL,0x2B31E688L,0x04064BBCL,0x43E66AD7L}}};
                    uint64_t l_532 = 0x223753C14DAA805EL;
                    int i, j, k;
                    (*p_70) &= ((safe_lshift_func_int8_t_s_u(((p_2824->g_140[9][0][6] , p_71) != p_73.f1), (l_441 = p_2824->g_111[1].f0))) || ((safe_sub_func_int32_t_s_s((safe_mul_func_int16_t_s_s(p_73.f1, (p_2824->g_472 |= (safe_rshift_func_int16_t_s_s(((safe_mul_func_uint16_t_u_u(65527UL, (safe_mul_func_uint16_t_u_u(((*p_2824->g_320) = l_426), (FAKE_DIVERGE(p_2824->group_0_offset, get_group_id(0), 10) > p_2824->g_308[5][3]))))) != (p_71 ^ p_2824->g_323)), 2))))), 0xEA1EE3A1L)) && (*l_291)));
                    p_72 = func_74((safe_mod_func_uint8_t_u_u((safe_rshift_func_int8_t_s_u(((*l_447) = 0x6BL), (((!(FAKE_DIVERGE(p_2824->local_0_offset, get_local_id(0), 10) && (safe_sub_func_uint8_t_u_u((GROUP_DIVERGE(2, 1) | 0x9A518975EC5DB674L), (safe_sub_func_int64_t_s_s(0x12361A22D3CD9679L, ((safe_add_func_uint16_t_u_u(((GROUP_DIVERGE(2, 1) == ((safe_mul_func_int8_t_s_s((p_2824->g_308[2][1] , (((safe_mul_func_int16_t_s_s((-6L), (FAKE_DIVERGE(p_2824->global_0_offset, get_global_id(0), 10) <= (safe_mul_func_int16_t_s_s((((((*l_186) = (p_2824->g_111[1] , (safe_unary_minus_func_uint8_t_u(1UL)))) >= ((safe_sub_func_uint32_t_u_u(((safe_sub_func_uint8_t_u_u((safe_mul_func_int8_t_s_s((safe_unary_minus_func_uint8_t_u((p_73.f0 || (((l_498 = p_73.f1) , &p_2824->g_212[0][3][1]) != &p_2824->g_212[0][2][2])))), p_73.f1)), l_426)) ^ 0x4B92L), (*p_72))) > (**p_2824->g_193))) < 0x7BL) | p_71), 0x3080L))))) ^ 0x70EDEA3361A640B0L) > (*p_2824->g_320))), (*l_291))) >= GROUP_DIVERGE(2, 1))) , (*p_2824->g_320)), (**p_2824->g_319))) > p_71))))))) <= (*p_2824->g_194)) <= (*l_123)))), p_71)), (*p_2824->g_320), p_2824->g_499[5], p_2824->g_215, (*l_123), p_2824);
                    for (p_2824->g_323 = 0; (p_2824->g_323 <= 0); p_2824->g_323 += 1)
                    { /* block id: 215 */
                        int8_t l_520[2];
                        int32_t l_522 = (-5L);
                        int32_t l_525 = 0x217DC350L;
                        int32_t l_526 = (-10L);
                        int32_t l_529 = 0x09BDF26CL;
                        int32_t l_531 = 0x24479375L;
                        int i;
                        for (i = 0; i < 2; i++)
                            l_520[i] = 1L;
                        (*p_72) ^= ((void*)0 != l_291);
                        l_521 = func_74(l_500, (p_2824->g_98 ^ (-8L)), &p_2824->g_32, p_73.f0, (safe_add_func_int16_t_s_s(((((safe_lshift_func_uint8_t_u_u(p_73.f0, 1)) , ((*l_289) &= (safe_div_func_int16_t_s_s(((safe_unary_minus_func_int64_t_s((safe_sub_func_int64_t_s_s((+l_426), l_441)))) < (safe_mod_func_uint8_t_u_u((safe_div_func_int32_t_s_s((((safe_sub_func_int64_t_s_s((safe_mod_func_uint32_t_u_u(((safe_mul_func_int16_t_s_s(l_520[1], l_520[1])) || p_2824->g_108), p_2824->g_140[5][1][0])), p_2824->g_140[1][1][2])) | (*l_123)) || (*p_2824->g_32)), (*l_291))), (*l_123)))), p_73.f0)))) >= (*l_123)) , p_71), 0L)), p_2824);
                        l_532--;
                    }
                }
                (*p_70) = (((safe_sub_func_uint32_t_u_u((l_537[1] != (((((((p_2824->g_33 , ((p_2824->g_542[1][1] = (p_2824->g_97 , (safe_div_func_int16_t_s_s((p_2824->g_33 <= p_73.f0), ((p_2824->g_541[5][0][2] ^= FAKE_DIVERGE(p_2824->global_0_offset, get_global_id(0), 10)) , (l_307[0] &= 0L)))))) , &p_2824->g_98)) == ((*l_543) = &l_184)) ^ ((*l_214)--)) || (p_73.f1 != 0UL)) , p_73.f1) | 1L) , &l_314[6][2][4])), l_546)) > (*l_291)) < (*l_291));
            }
        }
        else
        { /* block id: 229 */
            return p_2824->g_111[1].f0;
        }
    }
    else
    { /* block id: 232 */
        uint32_t l_549[7] = {9UL,4294967293UL,9UL,9UL,4294967293UL,9UL,9UL};
        int16_t *l_562 = &p_2824->g_98;
        uint16_t **l_566 = &p_2824->g_320;
        uint64_t *l_569[3];
        int64_t *l_581 = &p_2824->g_172;
        int8_t *****l_584 = &p_2824->g_582;
        int32_t ***l_591[2];
        int i;
        for (i = 0; i < 3; i++)
            l_569[i] = &p_2824->g_212[0][3][1];
        for (i = 0; i < 2; i++)
            l_591[i] = &p_2824->g_499[5];
        p_2824->g_563 = (safe_add_func_int32_t_s_s((*p_72), ((+(((l_549[2] ^ ((void*)0 != (*p_2824->g_319))) & ((safe_div_func_uint16_t_u_u(l_549[5], p_73.f0)) , ((*l_562) = (safe_add_func_int64_t_s_s((safe_rshift_func_uint16_t_u_s((safe_rshift_func_uint8_t_u_u((*l_123), 5)), (safe_lshift_func_uint16_t_u_u((0xCDE3L != (safe_mod_func_int32_t_s_s((*p_2824->g_32), 0xAC90742EL))), 10)))), 0L))))) , 0x2AL)) == p_2824->g_215)));
        (*l_123) &= (((safe_sub_func_uint16_t_u_u(((void*)0 != l_566), (safe_sub_func_int64_t_s_s(((l_549[2] | l_549[2]) | ((void*)0 == l_569[1])), (p_2824->g_570 != (safe_add_func_int32_t_s_s((*p_70), 0L))))))) , (*p_2824->g_193)) != l_119);
        l_599 &= (~(((safe_sub_func_int32_t_s_s((safe_div_func_uint8_t_u_u(((safe_mul_func_int8_t_s_s((*p_2824->g_194), (((((safe_add_func_int64_t_s_s((+l_549[3]), ((*l_581) = (-1L)))) != ((((((((*l_584) = p_2824->g_582) != &p_2824->g_583) < (safe_rshift_func_int8_t_s_u((safe_sub_func_uint32_t_u_u((safe_lshift_func_int16_t_s_u(((*l_123) = ((void*)0 == l_591[1])), 6)), (safe_add_func_uint16_t_u_u(((safe_mod_func_int16_t_s_s(0L, (safe_add_func_uint32_t_u_u((p_73.f0 && (*p_2824->g_320)), (*p_2824->g_32))))) >= p_2824->g_108), p_73.f1)))), 6))) && GROUP_DIVERGE(0, 1)) != p_73.f0) && 0x45L) && l_598[4][4])) > p_71) && 1UL) <= (*p_72)))) == p_2824->g_212[0][3][1]), 0xECL)), (*p_70))) != 0x2DC4L) < 0L));
    }
    for (p_2824->g_122 = 0; (p_2824->g_122 <= 1); p_2824->g_122 += 1)
    { /* block id: 243 */
        uint32_t *l_602 = &l_599;
        int32_t l_611 = 0L;
        uint32_t *l_614 = (void*)0;
        uint32_t *l_615[6][2][1] = {{{&p_2824->g_323},{&p_2824->g_323}},{{&p_2824->g_323},{&p_2824->g_323}},{{&p_2824->g_323},{&p_2824->g_323}},{{&p_2824->g_323},{&p_2824->g_323}},{{&p_2824->g_323},{&p_2824->g_323}},{{&p_2824->g_323},{&p_2824->g_323}}};
        int32_t l_616 = 0L;
        int8_t *l_617 = &p_2824->g_89;
        uint8_t *l_618[3];
        int64_t *l_619 = &l_116;
        int32_t l_620[9][3] = {{0x562E39DAL,0x1586A370L,9L},{0x562E39DAL,0x1586A370L,9L},{0x562E39DAL,0x1586A370L,9L},{0x562E39DAL,0x1586A370L,9L},{0x562E39DAL,0x1586A370L,9L},{0x562E39DAL,0x1586A370L,9L},{0x562E39DAL,0x1586A370L,9L},{0x562E39DAL,0x1586A370L,9L},{0x562E39DAL,0x1586A370L,9L}};
        uint16_t *l_693 = &p_2824->g_122;
        int i, j, k;
        for (i = 0; i < 3; i++)
            l_618[i] = (void*)0;
        l_620[6][0] &= ((safe_sub_func_uint32_t_u_u(((*l_602) &= p_73.f1), ((((void*)0 != l_603) && 0x37A6L) > ((((*l_619) |= (((((p_2824->g_215 &= ((((FAKE_DIVERGE(p_2824->group_0_offset, get_group_id(0), 10) ^ (((safe_mod_func_uint32_t_u_u(((safe_lshift_func_uint8_t_u_u(p_2824->g_111[1].f1, 7)) == ((((*l_617) |= ((247UL > ((p_2824->g_140[7][0][7] = (safe_rshift_func_uint16_t_u_s(l_611, 8))) , (safe_div_func_uint32_t_u_u(GROUP_DIVERGE(0, 1), (l_616 ^= (((***p_2824->g_583) = (-3L)) , (l_611 , GROUP_DIVERGE(2, 1)))))))) & (*l_123))) | p_73.f0) || 0x868FA8A749F0C001L)), l_611)) == p_2824->g_97) != (*p_2824->g_32))) | 0x17L) , GROUP_DIVERGE(1, 1)) & 0x709B11D1EAC818BDL)) || (****p_2824->g_582)) , p_72) != p_70) ^ p_2824->g_563)) ^ p_73.f0) == p_73.f0)))) <= 0x0CA66A3FL);
        for (p_2824->g_260 = 0; (p_2824->g_260 <= 6); p_2824->g_260 += 1)
        { /* block id: 254 */
            int8_t **l_633[4][4] = {{&l_617,&l_617,&p_2824->g_194,&l_617},{&l_617,&l_617,&p_2824->g_194,&l_617},{&l_617,&l_617,&p_2824->g_194,&l_617},{&l_617,&l_617,&p_2824->g_194,&l_617}};
            int32_t l_662 = 0x6078A82EL;
            int32_t l_663 = 0x4C10B3A9L;
            int32_t l_664 = 0x14615121L;
            int32_t l_665 = 0L;
            int32_t l_667 = (-3L);
            int32_t l_670[4][1][5];
            uint8_t l_679 = 0x48L;
            uint8_t l_702 = 1UL;
            int32_t *l_720 = &l_598[p_2824->g_260][p_2824->g_260];
            int i, j, k;
            for (i = 0; i < 4; i++)
            {
                for (j = 0; j < 1; j++)
                {
                    for (k = 0; k < 5; k++)
                        l_670[i][j][k] = 1L;
                }
            }
            if ((((*p_70) = (p_73.f1 |= (safe_div_func_uint32_t_u_u((l_620[6][0] &= GROUP_DIVERGE(2, 1)), ((safe_sub_func_uint16_t_u_u((+0x1923L), (((4294967295UL >= (((safe_mul_func_int16_t_s_s(0x686DL, (safe_div_func_uint16_t_u_u(l_598[p_2824->g_260][p_2824->g_260], (safe_rshift_func_int16_t_s_s(((safe_sub_func_int16_t_s_s((!((void*)0 == &l_116)), (p_2824->g_541[0][0][3] , ((**l_603) = ((*p_2824->g_320) == (l_633[2][1] == (void*)0)))))) ^ (*p_72)), 8)))))) , (*p_70)) ^ (*p_70))) > (-1L)) < p_71))) | (**p_2824->g_193)))))) , (*p_72)))
            { /* block id: 259 */
                for (l_296 = 0; (l_296 <= 1); l_296 += 1)
                { /* block id: 262 */
                    uint64_t *l_644[3];
                    uint32_t *l_654 = &p_2824->g_655;
                    int i, j, k;
                    for (i = 0; i < 3; i++)
                        l_644[i] = &p_2824->g_563;
                    l_634--;
                    (*l_123) |= (((((safe_mul_func_int8_t_s_s(p_2824->g_140[(p_2824->g_122 + 7)][l_296][(p_2824->g_260 + 1)], (((~((*l_654) = (((~(((void*)0 != &p_2824->g_542[(p_2824->g_122 + 2)][p_2824->g_122]) , (safe_lshift_func_int16_t_s_s((safe_div_func_uint8_t_u_u((((l_643[0] && (!(l_598[p_2824->g_260][p_2824->g_260] != (p_2824->g_542[l_296][l_296] &= p_2824->g_111[1].f0)))) <= (safe_sub_func_uint64_t_u_u((2L && (safe_add_func_int8_t_s_s((safe_mul_func_int8_t_s_s(((((void*)0 == p_2824->g_651) == 0UL) ^ 0x50E8L), p_73.f1)), 0x48L))), p_71))) > p_73.f0), (***p_2824->g_583))), 1)))) , l_598[p_2824->g_260][p_2824->g_260]) , p_73.f1))) , p_73.f1) , p_71))) , (void*)0) == l_619) && p_2824->g_542[(p_2824->g_122 + 2)][p_2824->g_122]) <= l_620[5][1]);
                }
                p_72 = &l_598[p_2824->g_260][p_2824->g_260];
            }
            else
            { /* block id: 269 */
                return l_611;
            }
            for (p_73.f1 = 1; (p_73.f1 >= 0); p_73.f1 -= 1)
            { /* block id: 274 */
                int32_t l_656 = (-9L);
                int32_t l_659 = 0x42309E88L;
                int32_t l_660[9] = {0x2B81215EL,0x2B81215EL,0x2B81215EL,0x2B81215EL,0x2B81215EL,0x2B81215EL,0x2B81215EL,0x2B81215EL,0x2B81215EL};
                int8_t l_666 = 0x72L;
                int i, j, k;
                if (p_2824->g_140[(p_2824->g_122 + 7)][p_73.f1][(p_73.f1 + 2)])
                { /* block id: 275 */
                    int32_t l_657 = (-1L);
                    int32_t l_658[9];
                    int i, j, k;
                    for (i = 0; i < 9; i++)
                        l_658[i] = (-1L);
                    (*l_123) = p_2824->g_140[(p_2824->g_260 + 1)][p_2824->g_122][p_2824->g_260];
                    (*p_72) &= (-1L);
                    for (p_2824->g_172 = 0; (p_2824->g_172 <= 1); p_2824->g_172 += 1)
                    { /* block id: 280 */
                        int8_t l_661 = 0x77L;
                        int32_t l_668[7][4] = {{0x751243A5L,0x751243A5L,0x751243A5L,0x751243A5L},{0x751243A5L,0x751243A5L,0x751243A5L,0x751243A5L},{0x751243A5L,0x751243A5L,0x751243A5L,0x751243A5L},{0x751243A5L,0x751243A5L,0x751243A5L,0x751243A5L},{0x751243A5L,0x751243A5L,0x751243A5L,0x751243A5L},{0x751243A5L,0x751243A5L,0x751243A5L,0x751243A5L},{0x751243A5L,0x751243A5L,0x751243A5L,0x751243A5L}};
                        int32_t l_669 = 0x27BEF41BL;
                        int32_t l_671 = 6L;
                        int32_t l_672 = 0x339F3703L;
                        int32_t l_673 = 1L;
                        int32_t l_674 = 0L;
                        int32_t l_675[2];
                        uint8_t l_676 = 255UL;
                        int i, j;
                        for (i = 0; i < 2; i++)
                            l_675[i] = (-3L);
                        ++l_676;
                        if ((*p_2824->g_32))
                            continue;
                        l_679++;
                    }
                }
                else
                { /* block id: 285 */
                    uint64_t l_692 = 0x817151903AA7E987L;
                    union U2 **l_698 = (void*)0;
                    union U2 **l_699 = &l_696;
                    int32_t l_700 = 0x7B71F2B6L;
                    int32_t l_701[7][9][3] = {{{3L,6L,0x45490DC6L},{3L,6L,0x45490DC6L},{3L,6L,0x45490DC6L},{3L,6L,0x45490DC6L},{3L,6L,0x45490DC6L},{3L,6L,0x45490DC6L},{3L,6L,0x45490DC6L},{3L,6L,0x45490DC6L},{3L,6L,0x45490DC6L}},{{3L,6L,0x45490DC6L},{3L,6L,0x45490DC6L},{3L,6L,0x45490DC6L},{3L,6L,0x45490DC6L},{3L,6L,0x45490DC6L},{3L,6L,0x45490DC6L},{3L,6L,0x45490DC6L},{3L,6L,0x45490DC6L},{3L,6L,0x45490DC6L}},{{3L,6L,0x45490DC6L},{3L,6L,0x45490DC6L},{3L,6L,0x45490DC6L},{3L,6L,0x45490DC6L},{3L,6L,0x45490DC6L},{3L,6L,0x45490DC6L},{3L,6L,0x45490DC6L},{3L,6L,0x45490DC6L},{3L,6L,0x45490DC6L}},{{3L,6L,0x45490DC6L},{3L,6L,0x45490DC6L},{3L,6L,0x45490DC6L},{3L,6L,0x45490DC6L},{3L,6L,0x45490DC6L},{3L,6L,0x45490DC6L},{3L,6L,0x45490DC6L},{3L,6L,0x45490DC6L},{3L,6L,0x45490DC6L}},{{3L,6L,0x45490DC6L},{3L,6L,0x45490DC6L},{3L,6L,0x45490DC6L},{3L,6L,0x45490DC6L},{3L,6L,0x45490DC6L},{3L,6L,0x45490DC6L},{3L,6L,0x45490DC6L},{3L,6L,0x45490DC6L},{3L,6L,0x45490DC6L}},{{3L,6L,0x45490DC6L},{3L,6L,0x45490DC6L},{3L,6L,0x45490DC6L},{3L,6L,0x45490DC6L},{3L,6L,0x45490DC6L},{3L,6L,0x45490DC6L},{3L,6L,0x45490DC6L},{3L,6L,0x45490DC6L},{3L,6L,0x45490DC6L}},{{3L,6L,0x45490DC6L},{3L,6L,0x45490DC6L},{3L,6L,0x45490DC6L},{3L,6L,0x45490DC6L},{3L,6L,0x45490DC6L},{3L,6L,0x45490DC6L},{3L,6L,0x45490DC6L},{3L,6L,0x45490DC6L},{3L,6L,0x45490DC6L}}};
                    int i, j, k;
                    (*l_123) ^= ((safe_rshift_func_uint8_t_u_s((GROUP_DIVERGE(1, 1) && (((safe_lshift_func_uint8_t_u_s(0x1CL, p_73.f0)) && (!((4294967290UL <= ((safe_add_func_int8_t_s_s((safe_add_func_int32_t_s_s((0x1F4E2AACC8D6409BL ^ ((-6L) ^ (safe_add_func_int32_t_s_s(l_692, ((void*)0 == l_693))))), (safe_lshift_func_int16_t_s_u(((void*)0 == p_72), 7)))), p_2824->g_98)) , l_620[8][1])) && FAKE_DIVERGE(p_2824->global_1_offset, get_global_id(1), 10)))) <= 0xEC347D7A5DAB99DDL)), (****p_2824->g_582))) == l_667);
                    (*l_699) = l_696;
                    l_702++;
                }
                for (l_659 = 0; (l_659 <= 0); l_659 += 1)
                { /* block id: 292 */
                    int8_t ***l_712 = &p_2824->g_200[0][0];
                    if (l_679)
                        break;
                    l_720 = func_74(p_2824->g_97, (**p_2824->g_319), l_705, (safe_mul_func_int16_t_s_s((((safe_mod_func_int64_t_s_s(((((safe_add_func_uint8_t_u_u((~(p_71 < ((void*)0 == l_712))), (safe_lshift_func_int8_t_s_s(p_71, (safe_mod_func_uint16_t_u_u((safe_mul_func_int8_t_s_s(((((p_2824->g_719[0][4] = (*p_2824->g_319)) != (*p_2824->g_319)) > (-5L)) <= 0x44L), (*l_123))), p_73.f1)))))) , (***p_2824->g_583)) ^ 0UL) , l_667), p_2824->g_111[1].f0)) == (*p_72)) | 1L), p_71)), p_73.f0, p_2824);
                }
                for (l_667 = 0; (l_667 <= 1); l_667 += 1)
                { /* block id: 299 */
                    int8_t l_743 = 0x22L;
                    int32_t l_745 = 1L;
                    for (l_634 = 0; (l_634 <= 1); l_634 += 1)
                    { /* block id: 302 */
                        return l_611;
                    }
                    for (l_702 = 0; (l_702 <= 1); l_702 += 1)
                    { /* block id: 307 */
                        p_2824->g_111[1] = p_2824->g_111[1];
                        if ((*p_70))
                            break;
                        if ((*p_70))
                            continue;
                    }
                    l_745 ^= ((~(safe_sub_func_int8_t_s_s(((p_73.f1 ^ p_2824->g_542[1][1]) != (!(((((safe_mod_func_uint8_t_u_u(((safe_add_func_uint64_t_u_u((((safe_sub_func_uint16_t_u_u((safe_div_func_uint16_t_u_u(((((safe_mul_func_uint16_t_u_u(((((**l_603) ^= p_73.f1) ^ (((safe_add_func_uint32_t_u_u((GROUP_DIVERGE(1, 1) , (0x1DL <= (l_616 = (((l_656 || (safe_rshift_func_uint16_t_u_u((safe_sub_func_int8_t_s_s(((safe_lshift_func_uint8_t_u_s(((safe_rshift_func_int16_t_s_s((l_620[0][2] == p_2824->g_570), 15)) <= l_743), (((&l_696 != (void*)0) && (*p_72)) <= 0x2C6A1823587C2A63L))) && 0x5294L), p_71)), l_743))) , 0x3FEA63C0L) || p_2824->g_140[1][0][8])))), l_611)) & p_2824->g_570) != 0x2B86L)) || 0UL), 1L)) >= p_2824->g_542[0][0]) , p_2824->g_541[4][0][2]) | (*l_123)), p_2824->g_97)), 8L)) , p_2824->g_111[1].f1) , p_2824->g_541[5][0][2]), p_2824->g_3)) < p_2824->g_260), (-1L))) == 0x55L) > p_2824->g_744[6][3]) && p_73.f0) <= p_73.f0))), p_71))) ^ GROUP_DIVERGE(2, 1));
                }
            }
        }
    }
    return p_2824->g_260;
}


/* ------------------------------------------ */
/* 
 * reads : p_2824->g_98 p_2824->g_32 p_2824->g_3 p_2824->g_97 p_2824->g_108
 * writes: p_2824->g_32 p_2824->g_97 p_2824->g_98 p_2824->g_89 p_2824->g_108
 */
int32_t * func_74(int16_t  p_75, uint16_t  p_76, int32_t ** p_77, int32_t  p_78, uint64_t  p_79, struct S3 * p_2824)
{ /* block id: 33 */
    int32_t *l_93 = &p_2824->g_3;
    int32_t **l_94 = (void*)0;
    int32_t **l_95 = &p_2824->g_32;
    int32_t *l_96[6] = {&p_2824->g_97,&p_2824->g_97,&p_2824->g_97,&p_2824->g_97,&p_2824->g_97,&p_2824->g_97};
    struct S0 l_99 = {0L,3L};
    struct S0 *l_100 = &l_99;
    int8_t *l_103 = &p_2824->g_89;
    int8_t *l_105 = (void*)0;
    int8_t **l_104 = &l_105;
    int i;
    (*l_95) = l_93;
    p_2824->g_98 ^= (p_2824->g_97 = (((-10L) | (+0x775EL)) | p_78));
    (*l_100) = l_99;
    p_2824->g_108 |= ((safe_lshift_func_uint8_t_u_s(GROUP_DIVERGE(1, 1), (p_76 , ((*l_103) = p_79)))) , ((((l_103 != ((*l_104) = &p_2824->g_89)) || ((safe_mul_func_uint8_t_u_u((((~0x3C15DB8BE448D75FL) & ((((p_78 , p_77) != &p_2824->g_32) >= ((**l_95) <= (*p_2824->g_32))) , GROUP_DIVERGE(0, 1))) , p_78), p_2824->g_97)) > (-1L))) ^ 255UL) ^ p_79));
    return &p_2824->g_97;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[54];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 54; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[54];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 54; i++)
            l_special_values[i] = 0;
    struct S3 c_2825;
    struct S3* p_2824 = &c_2825;
    struct S3 c_2826 = {
        0x53F7BF48L, // p_2824->g_2
        1L, // p_2824->g_3
        0x2FE81720L, // p_2824->g_12
        1L, // p_2824->g_33
        &p_2824->g_33, // p_2824->g_32
        0x5BL, // p_2824->g_89
        0L, // p_2824->g_97
        0x4D50L, // p_2824->g_98
        0x3FL, // p_2824->g_108
        {{0x45103452746A0FEEL,0L},{0x45103452746A0FEEL,0L},{0x45103452746A0FEEL,0L}}, // p_2824->g_111
        1UL, // p_2824->g_122
        {{{0x0EDC5ECFL,0x0EDC5ECFL,4294967292UL,0UL,4294967295UL,0x113DB586L,3UL,0UL,3UL},{0x0EDC5ECFL,0x0EDC5ECFL,4294967292UL,0UL,4294967295UL,0x113DB586L,3UL,0UL,3UL}},{{0x0EDC5ECFL,0x0EDC5ECFL,4294967292UL,0UL,4294967295UL,0x113DB586L,3UL,0UL,3UL},{0x0EDC5ECFL,0x0EDC5ECFL,4294967292UL,0UL,4294967295UL,0x113DB586L,3UL,0UL,3UL}},{{0x0EDC5ECFL,0x0EDC5ECFL,4294967292UL,0UL,4294967295UL,0x113DB586L,3UL,0UL,3UL},{0x0EDC5ECFL,0x0EDC5ECFL,4294967292UL,0UL,4294967295UL,0x113DB586L,3UL,0UL,3UL}},{{0x0EDC5ECFL,0x0EDC5ECFL,4294967292UL,0UL,4294967295UL,0x113DB586L,3UL,0UL,3UL},{0x0EDC5ECFL,0x0EDC5ECFL,4294967292UL,0UL,4294967295UL,0x113DB586L,3UL,0UL,3UL}},{{0x0EDC5ECFL,0x0EDC5ECFL,4294967292UL,0UL,4294967295UL,0x113DB586L,3UL,0UL,3UL},{0x0EDC5ECFL,0x0EDC5ECFL,4294967292UL,0UL,4294967295UL,0x113DB586L,3UL,0UL,3UL}},{{0x0EDC5ECFL,0x0EDC5ECFL,4294967292UL,0UL,4294967295UL,0x113DB586L,3UL,0UL,3UL},{0x0EDC5ECFL,0x0EDC5ECFL,4294967292UL,0UL,4294967295UL,0x113DB586L,3UL,0UL,3UL}},{{0x0EDC5ECFL,0x0EDC5ECFL,4294967292UL,0UL,4294967295UL,0x113DB586L,3UL,0UL,3UL},{0x0EDC5ECFL,0x0EDC5ECFL,4294967292UL,0UL,4294967295UL,0x113DB586L,3UL,0UL,3UL}},{{0x0EDC5ECFL,0x0EDC5ECFL,4294967292UL,0UL,4294967295UL,0x113DB586L,3UL,0UL,3UL},{0x0EDC5ECFL,0x0EDC5ECFL,4294967292UL,0UL,4294967295UL,0x113DB586L,3UL,0UL,3UL}},{{0x0EDC5ECFL,0x0EDC5ECFL,4294967292UL,0UL,4294967295UL,0x113DB586L,3UL,0UL,3UL},{0x0EDC5ECFL,0x0EDC5ECFL,4294967292UL,0UL,4294967295UL,0x113DB586L,3UL,0UL,3UL}},{{0x0EDC5ECFL,0x0EDC5ECFL,4294967292UL,0UL,4294967295UL,0x113DB586L,3UL,0UL,3UL},{0x0EDC5ECFL,0x0EDC5ECFL,4294967292UL,0UL,4294967295UL,0x113DB586L,3UL,0UL,3UL}}}, // p_2824->g_140
        0x0B9C3B6F688DC7B3L, // p_2824->g_172
        &p_2824->g_108, // p_2824->g_194
        &p_2824->g_194, // p_2824->g_193
        {{&p_2824->g_194,&p_2824->g_194,&p_2824->g_194,&p_2824->g_194,&p_2824->g_194},{&p_2824->g_194,&p_2824->g_194,&p_2824->g_194,&p_2824->g_194,&p_2824->g_194},{&p_2824->g_194,&p_2824->g_194,&p_2824->g_194,&p_2824->g_194,&p_2824->g_194}}, // p_2824->g_200
        {{{18446744073709551612UL,0UL,0x785EC66A7C9A4742L,0xFFAC30EB271F3292L},{18446744073709551612UL,0UL,0x785EC66A7C9A4742L,0xFFAC30EB271F3292L},{18446744073709551612UL,0UL,0x785EC66A7C9A4742L,0xFFAC30EB271F3292L},{18446744073709551612UL,0UL,0x785EC66A7C9A4742L,0xFFAC30EB271F3292L}},{{18446744073709551612UL,0UL,0x785EC66A7C9A4742L,0xFFAC30EB271F3292L},{18446744073709551612UL,0UL,0x785EC66A7C9A4742L,0xFFAC30EB271F3292L},{18446744073709551612UL,0UL,0x785EC66A7C9A4742L,0xFFAC30EB271F3292L},{18446744073709551612UL,0UL,0x785EC66A7C9A4742L,0xFFAC30EB271F3292L}},{{18446744073709551612UL,0UL,0x785EC66A7C9A4742L,0xFFAC30EB271F3292L},{18446744073709551612UL,0UL,0x785EC66A7C9A4742L,0xFFAC30EB271F3292L},{18446744073709551612UL,0UL,0x785EC66A7C9A4742L,0xFFAC30EB271F3292L},{18446744073709551612UL,0UL,0x785EC66A7C9A4742L,0xFFAC30EB271F3292L}},{{18446744073709551612UL,0UL,0x785EC66A7C9A4742L,0xFFAC30EB271F3292L},{18446744073709551612UL,0UL,0x785EC66A7C9A4742L,0xFFAC30EB271F3292L},{18446744073709551612UL,0UL,0x785EC66A7C9A4742L,0xFFAC30EB271F3292L},{18446744073709551612UL,0UL,0x785EC66A7C9A4742L,0xFFAC30EB271F3292L}},{{18446744073709551612UL,0UL,0x785EC66A7C9A4742L,0xFFAC30EB271F3292L},{18446744073709551612UL,0UL,0x785EC66A7C9A4742L,0xFFAC30EB271F3292L},{18446744073709551612UL,0UL,0x785EC66A7C9A4742L,0xFFAC30EB271F3292L},{18446744073709551612UL,0UL,0x785EC66A7C9A4742L,0xFFAC30EB271F3292L}},{{18446744073709551612UL,0UL,0x785EC66A7C9A4742L,0xFFAC30EB271F3292L},{18446744073709551612UL,0UL,0x785EC66A7C9A4742L,0xFFAC30EB271F3292L},{18446744073709551612UL,0UL,0x785EC66A7C9A4742L,0xFFAC30EB271F3292L},{18446744073709551612UL,0UL,0x785EC66A7C9A4742L,0xFFAC30EB271F3292L}},{{18446744073709551612UL,0UL,0x785EC66A7C9A4742L,0xFFAC30EB271F3292L},{18446744073709551612UL,0UL,0x785EC66A7C9A4742L,0xFFAC30EB271F3292L},{18446744073709551612UL,0UL,0x785EC66A7C9A4742L,0xFFAC30EB271F3292L},{18446744073709551612UL,0UL,0x785EC66A7C9A4742L,0xFFAC30EB271F3292L}},{{18446744073709551612UL,0UL,0x785EC66A7C9A4742L,0xFFAC30EB271F3292L},{18446744073709551612UL,0UL,0x785EC66A7C9A4742L,0xFFAC30EB271F3292L},{18446744073709551612UL,0UL,0x785EC66A7C9A4742L,0xFFAC30EB271F3292L},{18446744073709551612UL,0UL,0x785EC66A7C9A4742L,0xFFAC30EB271F3292L}},{{18446744073709551612UL,0UL,0x785EC66A7C9A4742L,0xFFAC30EB271F3292L},{18446744073709551612UL,0UL,0x785EC66A7C9A4742L,0xFFAC30EB271F3292L},{18446744073709551612UL,0UL,0x785EC66A7C9A4742L,0xFFAC30EB271F3292L},{18446744073709551612UL,0UL,0x785EC66A7C9A4742L,0xFFAC30EB271F3292L}},{{18446744073709551612UL,0UL,0x785EC66A7C9A4742L,0xFFAC30EB271F3292L},{18446744073709551612UL,0UL,0x785EC66A7C9A4742L,0xFFAC30EB271F3292L},{18446744073709551612UL,0UL,0x785EC66A7C9A4742L,0xFFAC30EB271F3292L},{18446744073709551612UL,0UL,0x785EC66A7C9A4742L,0xFFAC30EB271F3292L}}}, // p_2824->g_212
        0xEDL, // p_2824->g_215
        0x0246A174L, // p_2824->g_225
        1L, // p_2824->g_260
        {{0UL,0x06L,0x06L,0UL,255UL,249UL,0xBAL,0UL,0x0CL},{0UL,0x06L,0x06L,0UL,255UL,249UL,0xBAL,0UL,0x0CL},{0UL,0x06L,0x06L,0UL,255UL,249UL,0xBAL,0UL,0x0CL},{0UL,0x06L,0x06L,0UL,255UL,249UL,0xBAL,0UL,0x0CL},{0UL,0x06L,0x06L,0UL,255UL,249UL,0xBAL,0UL,0x0CL},{0UL,0x06L,0x06L,0UL,255UL,249UL,0xBAL,0UL,0x0CL}}, // p_2824->g_308
        &p_2824->g_122, // p_2824->g_320
        &p_2824->g_320, // p_2824->g_319
        1UL, // p_2824->g_323
        0x2CE610382ED5C835L, // p_2824->g_472
        {&p_2824->g_32,&p_2824->g_32,&p_2824->g_32,&p_2824->g_32,&p_2824->g_32,&p_2824->g_32,&p_2824->g_32,&p_2824->g_32,&p_2824->g_32}, // p_2824->g_499
        {{{0UL,0UL,0x7A8B547A5A4D1C13L,2UL}},{{0UL,0UL,0x7A8B547A5A4D1C13L,2UL}},{{0UL,0UL,0x7A8B547A5A4D1C13L,2UL}},{{0UL,0UL,0x7A8B547A5A4D1C13L,2UL}},{{0UL,0UL,0x7A8B547A5A4D1C13L,2UL}},{{0UL,0UL,0x7A8B547A5A4D1C13L,2UL}},{{0UL,0UL,0x7A8B547A5A4D1C13L,2UL}},{{0UL,0UL,0x7A8B547A5A4D1C13L,2UL}}}, // p_2824->g_541
        {{0x4C9951ECL,0x4C9951ECL},{0x4C9951ECL,0x4C9951ECL},{0x4C9951ECL,0x4C9951ECL},{0x4C9951ECL,0x4C9951ECL}}, // p_2824->g_542
        18446744073709551615UL, // p_2824->g_563
        (-7L), // p_2824->g_570
        &p_2824->g_200[1][1], // p_2824->g_583
        &p_2824->g_583, // p_2824->g_582
        0x241CL, // p_2824->g_653
        &p_2824->g_653, // p_2824->g_652
        &p_2824->g_652, // p_2824->g_651
        1UL, // p_2824->g_655
        {0x3CA3L}, // p_2824->g_697
        {{&p_2824->g_122,&p_2824->g_122,&p_2824->g_122,(void*)0,&p_2824->g_122,(void*)0,&p_2824->g_122,&p_2824->g_122,&p_2824->g_122,&p_2824->g_122},{&p_2824->g_122,&p_2824->g_122,&p_2824->g_122,(void*)0,&p_2824->g_122,(void*)0,&p_2824->g_122,&p_2824->g_122,&p_2824->g_122,&p_2824->g_122}}, // p_2824->g_719
        {{0xB7L,0xB7L,2UL,0x62L},{0xB7L,0xB7L,2UL,0x62L},{0xB7L,0xB7L,2UL,0x62L},{0xB7L,0xB7L,2UL,0x62L},{0xB7L,0xB7L,2UL,0x62L},{0xB7L,0xB7L,2UL,0x62L},{0xB7L,0xB7L,2UL,0x62L},{0xB7L,0xB7L,2UL,0x62L},{0xB7L,0xB7L,2UL,0x62L}}, // p_2824->g_744
        {{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}}, // p_2824->g_1279
        0x5EL, // p_2824->g_1299
        {0UL,0x646B6B88L,0x5DF11310896F23A2L,4UL,0UL,255UL,0x5B4507B2B44E5732L,18446744073709551615UL,1L,{1L,0x593C7FAFL}}, // p_2824->g_1372
        {4UL,-2L,0L,0UL,1UL,0xDDL,0L,1UL,1L,{0x14910A90D8835E02L,0x40CF55F1L}}, // p_2824->g_1375
        {4294967291UL,0L,5L,0xD1F585B9L,0x355E778E110ED518L,248UL,0x48727BF4128C9EDEL,0x8CBE3F71165422E1L,0x00240313L,{0x7B5A96484B5F429FL,0L}}, // p_2824->g_1376
        {{4294967295UL,0x72312B00L,0L,4294967286UL,0x7C3722BDB5A5D269L,0xDFL,0x6365AC9B7DCA995FL,0x73CAFCE3F28EA2B5L,1L,{0L,-1L}},{4294967287UL,0x69E1C9D1L,0x0B036421DFDB9C58L,0x92394F74L,0x196F25F791B18E13L,0xCBL,0x7D26D253C1686816L,0xBA54A24AE5A523B2L,-1L,{2L,0x012A5DD6L}},{0x04952F1DL,0x78CF81BFL,0x6CB5FFAE51CE4183L,4294967291UL,1UL,0x11L,0x1B765B28D13C1CCEL,18446744073709551615UL,0x5929FDB5L,{0x18322074D6C86CD9L,0x50817FEBL}},{4294967287UL,0x69E1C9D1L,0x0B036421DFDB9C58L,0x92394F74L,0x196F25F791B18E13L,0xCBL,0x7D26D253C1686816L,0xBA54A24AE5A523B2L,-1L,{2L,0x012A5DD6L}},{4294967295UL,0x72312B00L,0L,4294967286UL,0x7C3722BDB5A5D269L,0xDFL,0x6365AC9B7DCA995FL,0x73CAFCE3F28EA2B5L,1L,{0L,-1L}},{4294967295UL,0x72312B00L,0L,4294967286UL,0x7C3722BDB5A5D269L,0xDFL,0x6365AC9B7DCA995FL,0x73CAFCE3F28EA2B5L,1L,{0L,-1L}},{4294967287UL,0x69E1C9D1L,0x0B036421DFDB9C58L,0x92394F74L,0x196F25F791B18E13L,0xCBL,0x7D26D253C1686816L,0xBA54A24AE5A523B2L,-1L,{2L,0x012A5DD6L}},{0x04952F1DL,0x78CF81BFL,0x6CB5FFAE51CE4183L,4294967291UL,1UL,0x11L,0x1B765B28D13C1CCEL,18446744073709551615UL,0x5929FDB5L,{0x18322074D6C86CD9L,0x50817FEBL}},{4294967287UL,0x69E1C9D1L,0x0B036421DFDB9C58L,0x92394F74L,0x196F25F791B18E13L,0xCBL,0x7D26D253C1686816L,0xBA54A24AE5A523B2L,-1L,{2L,0x012A5DD6L}},{4294967295UL,0x72312B00L,0L,4294967286UL,0x7C3722BDB5A5D269L,0xDFL,0x6365AC9B7DCA995FL,0x73CAFCE3F28EA2B5L,1L,{0L,-1L}}}, // p_2824->g_1377
        {{{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0}}}, // p_2824->g_1374
        &p_2824->g_1377[6].f9, // p_2824->g_1381
        {&p_2824->g_1381,&p_2824->g_1381,&p_2824->g_1381,&p_2824->g_1381,&p_2824->g_1381,&p_2824->g_1381}, // p_2824->g_1380
        &p_2824->g_1381, // p_2824->g_1383
        &p_2824->g_1381, // p_2824->g_1387
        {0x4BCAL}, // p_2824->g_1475
        6L, // p_2824->g_1571
        &p_2824->g_1571, // p_2824->g_1570
        {&p_2824->g_1570,&p_2824->g_1570,&p_2824->g_1570,&p_2824->g_1570,&p_2824->g_1570,&p_2824->g_1570,&p_2824->g_1570,&p_2824->g_1570,&p_2824->g_1570,&p_2824->g_1570}, // p_2824->g_1569
        &p_2824->g_542[1][1], // p_2824->g_1621
        &p_2824->g_697.f0, // p_2824->g_1673
        {7UL,0x341147E7L,0x26146FBEF09F495BL,0xD733D3EAL,0UL,7UL,0x5F8A39039F18768AL,0x6C6463213237CD89L,-1L,{0x6E268766B502F1B9L,0L}}, // p_2824->g_1689
        &p_2824->g_1689, // p_2824->g_1688
        0x5A4173C8L, // p_2824->g_1694
        &p_2824->g_1694, // p_2824->g_1693
        &p_2824->g_1693, // p_2824->g_1692
        &p_2824->g_1377[6].f9.f1, // p_2824->g_1717
        {0x6B8CL}, // p_2824->g_1894
        &p_2824->g_1894, // p_2824->g_1893
        &p_2824->g_1893, // p_2824->g_1892
        &p_2824->g_563, // p_2824->g_1917
        {&p_2824->g_1673,&p_2824->g_1673,&p_2824->g_1673,&p_2824->g_1673,&p_2824->g_1673,&p_2824->g_1673,&p_2824->g_1673,&p_2824->g_1673,&p_2824->g_1673,&p_2824->g_1673}, // p_2824->g_1922
        (-1L), // p_2824->g_1929
        &p_2824->g_308[0][2], // p_2824->g_1934
        &p_2824->g_1934, // p_2824->g_1933
        {&p_2824->g_97}, // p_2824->g_1970
        0x59L, // p_2824->g_1997
        {{{0xE930BEB4L,-9L,0x0B1498069FB510D0L,1UL,5UL,0xF6L,1L,0xB2E3F9418459B3ABL,6L,{0L,-1L}},{0xE930BEB4L,-9L,0x0B1498069FB510D0L,1UL,5UL,0xF6L,1L,0xB2E3F9418459B3ABL,6L,{0L,-1L}},{0xE930BEB4L,-9L,0x0B1498069FB510D0L,1UL,5UL,0xF6L,1L,0xB2E3F9418459B3ABL,6L,{0L,-1L}},{0xE930BEB4L,-9L,0x0B1498069FB510D0L,1UL,5UL,0xF6L,1L,0xB2E3F9418459B3ABL,6L,{0L,-1L}},{0xE930BEB4L,-9L,0x0B1498069FB510D0L,1UL,5UL,0xF6L,1L,0xB2E3F9418459B3ABL,6L,{0L,-1L}},{0xE930BEB4L,-9L,0x0B1498069FB510D0L,1UL,5UL,0xF6L,1L,0xB2E3F9418459B3ABL,6L,{0L,-1L}}}}, // p_2824->g_2056
        {0x0B8875B6L,-5L,0x6A2682308056B522L,0x975F7530L,0x2AB2D02EE9E7B2FFL,1UL,-1L,1UL,-8L,{0x16078CE7E410B652L,0x5987FBF2L}}, // p_2824->g_2058
        0x0A589668L, // p_2824->g_2083
        &p_2824->g_225, // p_2824->g_2189
        &p_2824->g_1377[6].f0, // p_2824->g_2243
        (void*)0, // p_2824->g_2322
        (void*)0, // p_2824->g_2339
        &p_2824->g_2339, // p_2824->g_2338
        {0x42ADL}, // p_2824->g_2404
        {{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L},{0L,1L}}, // p_2824->g_2414
        &p_2824->g_541[5][0][2], // p_2824->g_2508
        &p_2824->g_2508, // p_2824->g_2507
        {65528UL,65528UL,65528UL}, // p_2824->g_2522
        0xB5F982179D7FE8ADL, // p_2824->g_2549
        7UL, // p_2824->g_2626
        {4294967295UL,0L,-9L,0x6FD52454L,18446744073709551609UL,3UL,-1L,18446744073709551611UL,0L,{0x233CF372D89EB11BL,-2L}}, // p_2824->g_2652
        {4294967295UL,0L,1L,0x98BD84C2L,7UL,0x99L,0x03B2E4854D1F6771L,0xFC69C3EE96AF3518L,4L,{0x2E7E7E956C598C12L,0x2C1A92DCL}}, // p_2824->g_2663
        {0x4926L}, // p_2824->g_2673
        65534UL, // p_2824->g_2709
        {0x1E41L}, // p_2824->g_2726
        {0x22FF0D7DL,-10L,0x7F9D6161A6942E99L,0xB24E79DBL,0x905EF1CDEE170C22L,249UL,0x36921A6688DDFD1DL,18446744073709551615UL,0x493897B2L,{0L,1L}}, // p_2824->g_2750
        {0xE61755C3L,9L,0L,4294967295UL,18446744073709551613UL,0UL,8L,9UL,0x0429D1D9L,{0L,0x26780DE7L}}, // p_2824->g_2751
        sequence_input[get_global_id(0)], // p_2824->global_0_offset
        sequence_input[get_global_id(1)], // p_2824->global_1_offset
        sequence_input[get_global_id(2)], // p_2824->global_2_offset
        sequence_input[get_local_id(0)], // p_2824->local_0_offset
        sequence_input[get_local_id(1)], // p_2824->local_1_offset
        sequence_input[get_local_id(2)], // p_2824->local_2_offset
        sequence_input[get_group_id(0)], // p_2824->group_0_offset
        sequence_input[get_group_id(1)], // p_2824->group_1_offset
        sequence_input[get_group_id(2)], // p_2824->group_2_offset
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
    };
    c_2825 = c_2826;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_2824);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_2824->g_2, "p_2824->g_2", print_hash_value);
    transparent_crc(p_2824->g_3, "p_2824->g_3", print_hash_value);
    transparent_crc(p_2824->g_12, "p_2824->g_12", print_hash_value);
    transparent_crc(p_2824->g_33, "p_2824->g_33", print_hash_value);
    transparent_crc(p_2824->g_89, "p_2824->g_89", print_hash_value);
    transparent_crc(p_2824->g_97, "p_2824->g_97", print_hash_value);
    transparent_crc(p_2824->g_98, "p_2824->g_98", print_hash_value);
    transparent_crc(p_2824->g_108, "p_2824->g_108", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_2824->g_111[i].f0, "p_2824->g_111[i].f0", print_hash_value);
        transparent_crc(p_2824->g_111[i].f1, "p_2824->g_111[i].f1", print_hash_value);

    }
    transparent_crc(p_2824->g_122, "p_2824->g_122", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 9; k++)
            {
                transparent_crc(p_2824->g_140[i][j][k], "p_2824->g_140[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2824->g_172, "p_2824->g_172", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_2824->g_212[i][j][k], "p_2824->g_212[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2824->g_215, "p_2824->g_215", print_hash_value);
    transparent_crc(p_2824->g_225, "p_2824->g_225", print_hash_value);
    transparent_crc(p_2824->g_260, "p_2824->g_260", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_2824->g_308[i][j], "p_2824->g_308[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2824->g_323, "p_2824->g_323", print_hash_value);
    transparent_crc(p_2824->g_472, "p_2824->g_472", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_2824->g_541[i][j][k], "p_2824->g_541[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 2; j++)
        {
            transparent_crc(p_2824->g_542[i][j], "p_2824->g_542[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2824->g_563, "p_2824->g_563", print_hash_value);
    transparent_crc(p_2824->g_570, "p_2824->g_570", print_hash_value);
    transparent_crc(p_2824->g_653, "p_2824->g_653", print_hash_value);
    transparent_crc(p_2824->g_655, "p_2824->g_655", print_hash_value);
    transparent_crc(p_2824->g_697.f0, "p_2824->g_697.f0", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_2824->g_744[i][j], "p_2824->g_744[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2824->g_1299, "p_2824->g_1299", print_hash_value);
    transparent_crc(p_2824->g_1372.f0, "p_2824->g_1372.f0", print_hash_value);
    transparent_crc(p_2824->g_1372.f1, "p_2824->g_1372.f1", print_hash_value);
    transparent_crc(p_2824->g_1372.f2, "p_2824->g_1372.f2", print_hash_value);
    transparent_crc(p_2824->g_1372.f3, "p_2824->g_1372.f3", print_hash_value);
    transparent_crc(p_2824->g_1372.f4, "p_2824->g_1372.f4", print_hash_value);
    transparent_crc(p_2824->g_1372.f5, "p_2824->g_1372.f5", print_hash_value);
    transparent_crc(p_2824->g_1372.f6, "p_2824->g_1372.f6", print_hash_value);
    transparent_crc(p_2824->g_1372.f7, "p_2824->g_1372.f7", print_hash_value);
    transparent_crc(p_2824->g_1372.f8, "p_2824->g_1372.f8", print_hash_value);
    transparent_crc(p_2824->g_1372.f9.f0, "p_2824->g_1372.f9.f0", print_hash_value);
    transparent_crc(p_2824->g_1372.f9.f1, "p_2824->g_1372.f9.f1", print_hash_value);
    transparent_crc(p_2824->g_1375.f0, "p_2824->g_1375.f0", print_hash_value);
    transparent_crc(p_2824->g_1375.f1, "p_2824->g_1375.f1", print_hash_value);
    transparent_crc(p_2824->g_1375.f2, "p_2824->g_1375.f2", print_hash_value);
    transparent_crc(p_2824->g_1375.f3, "p_2824->g_1375.f3", print_hash_value);
    transparent_crc(p_2824->g_1375.f4, "p_2824->g_1375.f4", print_hash_value);
    transparent_crc(p_2824->g_1375.f5, "p_2824->g_1375.f5", print_hash_value);
    transparent_crc(p_2824->g_1375.f6, "p_2824->g_1375.f6", print_hash_value);
    transparent_crc(p_2824->g_1375.f7, "p_2824->g_1375.f7", print_hash_value);
    transparent_crc(p_2824->g_1375.f8, "p_2824->g_1375.f8", print_hash_value);
    transparent_crc(p_2824->g_1375.f9.f0, "p_2824->g_1375.f9.f0", print_hash_value);
    transparent_crc(p_2824->g_1375.f9.f1, "p_2824->g_1375.f9.f1", print_hash_value);
    transparent_crc(p_2824->g_1376.f0, "p_2824->g_1376.f0", print_hash_value);
    transparent_crc(p_2824->g_1376.f1, "p_2824->g_1376.f1", print_hash_value);
    transparent_crc(p_2824->g_1376.f2, "p_2824->g_1376.f2", print_hash_value);
    transparent_crc(p_2824->g_1376.f3, "p_2824->g_1376.f3", print_hash_value);
    transparent_crc(p_2824->g_1376.f4, "p_2824->g_1376.f4", print_hash_value);
    transparent_crc(p_2824->g_1376.f5, "p_2824->g_1376.f5", print_hash_value);
    transparent_crc(p_2824->g_1376.f6, "p_2824->g_1376.f6", print_hash_value);
    transparent_crc(p_2824->g_1376.f7, "p_2824->g_1376.f7", print_hash_value);
    transparent_crc(p_2824->g_1376.f8, "p_2824->g_1376.f8", print_hash_value);
    transparent_crc(p_2824->g_1376.f9.f0, "p_2824->g_1376.f9.f0", print_hash_value);
    transparent_crc(p_2824->g_1376.f9.f1, "p_2824->g_1376.f9.f1", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_2824->g_1377[i].f0, "p_2824->g_1377[i].f0", print_hash_value);
        transparent_crc(p_2824->g_1377[i].f1, "p_2824->g_1377[i].f1", print_hash_value);
        transparent_crc(p_2824->g_1377[i].f2, "p_2824->g_1377[i].f2", print_hash_value);
        transparent_crc(p_2824->g_1377[i].f3, "p_2824->g_1377[i].f3", print_hash_value);
        transparent_crc(p_2824->g_1377[i].f4, "p_2824->g_1377[i].f4", print_hash_value);
        transparent_crc(p_2824->g_1377[i].f5, "p_2824->g_1377[i].f5", print_hash_value);
        transparent_crc(p_2824->g_1377[i].f6, "p_2824->g_1377[i].f6", print_hash_value);
        transparent_crc(p_2824->g_1377[i].f7, "p_2824->g_1377[i].f7", print_hash_value);
        transparent_crc(p_2824->g_1377[i].f8, "p_2824->g_1377[i].f8", print_hash_value);
        transparent_crc(p_2824->g_1377[i].f9.f0, "p_2824->g_1377[i].f9.f0", print_hash_value);
        transparent_crc(p_2824->g_1377[i].f9.f1, "p_2824->g_1377[i].f9.f1", print_hash_value);

    }
    transparent_crc(p_2824->g_1475.f0, "p_2824->g_1475.f0", print_hash_value);
    transparent_crc(p_2824->g_1571, "p_2824->g_1571", print_hash_value);
    transparent_crc(p_2824->g_1689.f0, "p_2824->g_1689.f0", print_hash_value);
    transparent_crc(p_2824->g_1689.f1, "p_2824->g_1689.f1", print_hash_value);
    transparent_crc(p_2824->g_1689.f2, "p_2824->g_1689.f2", print_hash_value);
    transparent_crc(p_2824->g_1689.f3, "p_2824->g_1689.f3", print_hash_value);
    transparent_crc(p_2824->g_1689.f4, "p_2824->g_1689.f4", print_hash_value);
    transparent_crc(p_2824->g_1689.f5, "p_2824->g_1689.f5", print_hash_value);
    transparent_crc(p_2824->g_1689.f6, "p_2824->g_1689.f6", print_hash_value);
    transparent_crc(p_2824->g_1689.f7, "p_2824->g_1689.f7", print_hash_value);
    transparent_crc(p_2824->g_1689.f8, "p_2824->g_1689.f8", print_hash_value);
    transparent_crc(p_2824->g_1689.f9.f0, "p_2824->g_1689.f9.f0", print_hash_value);
    transparent_crc(p_2824->g_1689.f9.f1, "p_2824->g_1689.f9.f1", print_hash_value);
    transparent_crc(p_2824->g_1694, "p_2824->g_1694", print_hash_value);
    transparent_crc(p_2824->g_1894.f0, "p_2824->g_1894.f0", print_hash_value);
    transparent_crc(p_2824->g_1929, "p_2824->g_1929", print_hash_value);
    transparent_crc(p_2824->g_1997, "p_2824->g_1997", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 6; j++)
        {
            transparent_crc(p_2824->g_2056[i][j].f0, "p_2824->g_2056[i][j].f0", print_hash_value);
            transparent_crc(p_2824->g_2056[i][j].f1, "p_2824->g_2056[i][j].f1", print_hash_value);
            transparent_crc(p_2824->g_2056[i][j].f2, "p_2824->g_2056[i][j].f2", print_hash_value);
            transparent_crc(p_2824->g_2056[i][j].f3, "p_2824->g_2056[i][j].f3", print_hash_value);
            transparent_crc(p_2824->g_2056[i][j].f4, "p_2824->g_2056[i][j].f4", print_hash_value);
            transparent_crc(p_2824->g_2056[i][j].f5, "p_2824->g_2056[i][j].f5", print_hash_value);
            transparent_crc(p_2824->g_2056[i][j].f6, "p_2824->g_2056[i][j].f6", print_hash_value);
            transparent_crc(p_2824->g_2056[i][j].f7, "p_2824->g_2056[i][j].f7", print_hash_value);
            transparent_crc(p_2824->g_2056[i][j].f8, "p_2824->g_2056[i][j].f8", print_hash_value);
            transparent_crc(p_2824->g_2056[i][j].f9.f0, "p_2824->g_2056[i][j].f9.f0", print_hash_value);
            transparent_crc(p_2824->g_2056[i][j].f9.f1, "p_2824->g_2056[i][j].f9.f1", print_hash_value);

        }
    }
    transparent_crc(p_2824->g_2058.f0, "p_2824->g_2058.f0", print_hash_value);
    transparent_crc(p_2824->g_2058.f1, "p_2824->g_2058.f1", print_hash_value);
    transparent_crc(p_2824->g_2058.f2, "p_2824->g_2058.f2", print_hash_value);
    transparent_crc(p_2824->g_2058.f3, "p_2824->g_2058.f3", print_hash_value);
    transparent_crc(p_2824->g_2058.f4, "p_2824->g_2058.f4", print_hash_value);
    transparent_crc(p_2824->g_2058.f5, "p_2824->g_2058.f5", print_hash_value);
    transparent_crc(p_2824->g_2058.f6, "p_2824->g_2058.f6", print_hash_value);
    transparent_crc(p_2824->g_2058.f7, "p_2824->g_2058.f7", print_hash_value);
    transparent_crc(p_2824->g_2058.f8, "p_2824->g_2058.f8", print_hash_value);
    transparent_crc(p_2824->g_2058.f9.f0, "p_2824->g_2058.f9.f0", print_hash_value);
    transparent_crc(p_2824->g_2058.f9.f1, "p_2824->g_2058.f9.f1", print_hash_value);
    transparent_crc(p_2824->g_2083, "p_2824->g_2083", print_hash_value);
    transparent_crc(p_2824->g_2404.f0, "p_2824->g_2404.f0", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 2; j++)
        {
            transparent_crc(p_2824->g_2414[i][j], "p_2824->g_2414[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_2824->g_2522[i], "p_2824->g_2522[i]", print_hash_value);

    }
    transparent_crc(p_2824->g_2549, "p_2824->g_2549", print_hash_value);
    transparent_crc(p_2824->g_2626, "p_2824->g_2626", print_hash_value);
    transparent_crc(p_2824->g_2652.f0, "p_2824->g_2652.f0", print_hash_value);
    transparent_crc(p_2824->g_2652.f1, "p_2824->g_2652.f1", print_hash_value);
    transparent_crc(p_2824->g_2652.f2, "p_2824->g_2652.f2", print_hash_value);
    transparent_crc(p_2824->g_2652.f3, "p_2824->g_2652.f3", print_hash_value);
    transparent_crc(p_2824->g_2652.f4, "p_2824->g_2652.f4", print_hash_value);
    transparent_crc(p_2824->g_2652.f5, "p_2824->g_2652.f5", print_hash_value);
    transparent_crc(p_2824->g_2652.f6, "p_2824->g_2652.f6", print_hash_value);
    transparent_crc(p_2824->g_2652.f7, "p_2824->g_2652.f7", print_hash_value);
    transparent_crc(p_2824->g_2652.f8, "p_2824->g_2652.f8", print_hash_value);
    transparent_crc(p_2824->g_2652.f9.f0, "p_2824->g_2652.f9.f0", print_hash_value);
    transparent_crc(p_2824->g_2652.f9.f1, "p_2824->g_2652.f9.f1", print_hash_value);
    transparent_crc(p_2824->g_2663.f0, "p_2824->g_2663.f0", print_hash_value);
    transparent_crc(p_2824->g_2663.f1, "p_2824->g_2663.f1", print_hash_value);
    transparent_crc(p_2824->g_2663.f2, "p_2824->g_2663.f2", print_hash_value);
    transparent_crc(p_2824->g_2663.f3, "p_2824->g_2663.f3", print_hash_value);
    transparent_crc(p_2824->g_2663.f4, "p_2824->g_2663.f4", print_hash_value);
    transparent_crc(p_2824->g_2663.f5, "p_2824->g_2663.f5", print_hash_value);
    transparent_crc(p_2824->g_2663.f6, "p_2824->g_2663.f6", print_hash_value);
    transparent_crc(p_2824->g_2663.f7, "p_2824->g_2663.f7", print_hash_value);
    transparent_crc(p_2824->g_2663.f8, "p_2824->g_2663.f8", print_hash_value);
    transparent_crc(p_2824->g_2663.f9.f0, "p_2824->g_2663.f9.f0", print_hash_value);
    transparent_crc(p_2824->g_2663.f9.f1, "p_2824->g_2663.f9.f1", print_hash_value);
    transparent_crc(p_2824->g_2673.f0, "p_2824->g_2673.f0", print_hash_value);
    transparent_crc(p_2824->g_2709, "p_2824->g_2709", print_hash_value);
    transparent_crc(p_2824->g_2726.f0, "p_2824->g_2726.f0", print_hash_value);
    transparent_crc(p_2824->g_2750.f0, "p_2824->g_2750.f0", print_hash_value);
    transparent_crc(p_2824->g_2750.f1, "p_2824->g_2750.f1", print_hash_value);
    transparent_crc(p_2824->g_2750.f2, "p_2824->g_2750.f2", print_hash_value);
    transparent_crc(p_2824->g_2750.f3, "p_2824->g_2750.f3", print_hash_value);
    transparent_crc(p_2824->g_2750.f4, "p_2824->g_2750.f4", print_hash_value);
    transparent_crc(p_2824->g_2750.f5, "p_2824->g_2750.f5", print_hash_value);
    transparent_crc(p_2824->g_2750.f6, "p_2824->g_2750.f6", print_hash_value);
    transparent_crc(p_2824->g_2750.f7, "p_2824->g_2750.f7", print_hash_value);
    transparent_crc(p_2824->g_2750.f8, "p_2824->g_2750.f8", print_hash_value);
    transparent_crc(p_2824->g_2750.f9.f0, "p_2824->g_2750.f9.f0", print_hash_value);
    transparent_crc(p_2824->g_2750.f9.f1, "p_2824->g_2750.f9.f1", print_hash_value);
    transparent_crc(p_2824->g_2751.f0, "p_2824->g_2751.f0", print_hash_value);
    transparent_crc(p_2824->g_2751.f1, "p_2824->g_2751.f1", print_hash_value);
    transparent_crc(p_2824->g_2751.f2, "p_2824->g_2751.f2", print_hash_value);
    transparent_crc(p_2824->g_2751.f3, "p_2824->g_2751.f3", print_hash_value);
    transparent_crc(p_2824->g_2751.f4, "p_2824->g_2751.f4", print_hash_value);
    transparent_crc(p_2824->g_2751.f5, "p_2824->g_2751.f5", print_hash_value);
    transparent_crc(p_2824->g_2751.f6, "p_2824->g_2751.f6", print_hash_value);
    transparent_crc(p_2824->g_2751.f7, "p_2824->g_2751.f7", print_hash_value);
    transparent_crc(p_2824->g_2751.f8, "p_2824->g_2751.f8", print_hash_value);
    transparent_crc(p_2824->g_2751.f9.f0, "p_2824->g_2751.f9.f0", print_hash_value);
    transparent_crc(p_2824->g_2751.f9.f1, "p_2824->g_2751.f9.f1", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 54; i++)
            transparent_crc(p_2824->g_special_values[i + 54 * get_linear_group_id()], "p_2824->g_special_values[i + 54 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 54; i++)
            transparent_crc(p_2824->l_special_values[i], "p_2824->l_special_values[i]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
