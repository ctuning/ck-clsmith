// --atomics 45 ---fake_divergence -g 90,52,2 -l 18,13,1
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


// Seed: 110

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    uint16_t g_22;
    uint16_t g_56;
    uint32_t g_60;
    uint32_t *g_59;
    int32_t * volatile g_73[3];
    int32_t g_75;
    uint16_t *g_77[8];
    uint16_t **g_76;
    uint32_t g_78;
    uint32_t g_82;
    int16_t g_101;
    int32_t g_104;
    uint8_t g_122;
    int8_t g_128;
    int32_t g_156;
    int64_t g_224;
    volatile uint64_t g_241;
    volatile uint64_t *g_240[2];
    uint64_t g_295;
    uint64_t *g_294[3];
    uint8_t * volatile g_305;
    volatile uint32_t g_369;
    volatile uint32_t g_370[10][4][6];
    volatile uint32_t g_371;
    volatile uint32_t g_372[6];
    volatile uint32_t g_373[7];
    volatile uint32_t g_374[3][1][3];
    volatile uint32_t g_375;
    volatile uint32_t g_376;
    volatile uint32_t g_377;
    volatile uint32_t g_378;
    volatile uint32_t g_379[1];
    volatile uint32_t g_380;
    volatile uint32_t g_381[2][1][5];
    volatile uint32_t g_382;
    volatile uint32_t g_383;
    volatile uint32_t g_384;
    volatile uint32_t g_385;
    volatile uint32_t g_386;
    volatile uint32_t g_387;
    volatile uint32_t g_388;
    volatile uint32_t g_389;
    volatile uint32_t g_390;
    volatile uint32_t g_391;
    volatile uint32_t g_392;
    volatile uint32_t g_393;
    volatile uint32_t g_394;
    volatile uint32_t g_395;
    volatile uint32_t g_396;
    volatile uint32_t g_397;
    volatile uint32_t g_398;
    volatile uint32_t g_399;
    volatile uint32_t g_400;
    volatile uint32_t g_401;
    volatile uint32_t *g_368[10][8][3];
    uint32_t g_403;
    uint32_t *g_402;
    int64_t g_408;
    int32_t g_435;
    int8_t g_480[2];
    int32_t * volatile g_488;
    int32_t * volatile g_584;
    int16_t **g_595;
    int32_t * volatile g_597;
    int8_t g_635;
    int32_t *g_655[9];
    int32_t ** volatile g_654;
    int8_t *g_722[9][6];
    int8_t **g_721;
    uint64_t **g_729;
    uint64_t ***g_728;
    int64_t g_784;
    int32_t ** volatile g_786;
    uint32_t **g_824;
    uint32_t ***g_823;
    volatile uint32_t g_869;
    volatile uint32_t *g_868;
    volatile uint32_t ** volatile g_867;
    uint32_t g_887;
    int32_t ** volatile g_936;
    int32_t ** volatile g_944[3][8];
    int32_t ** volatile g_945;
    uint64_t g_975;
    volatile uint32_t g_1006;
    int32_t * volatile g_1096;
    volatile int64_t g_1102;
    int32_t ** volatile g_1149;
    int32_t g_1153;
    int32_t ** volatile g_1189[2];
    int32_t ** volatile g_1190;
    int32_t * volatile g_1191;
    uint64_t **g_1233;
    int32_t ** volatile g_1246;
    int32_t ** volatile g_1247;
    volatile int32_t g_1250;
    int16_t *g_1356[2];
    int16_t **g_1355;
    int32_t ** volatile g_1357;
    int64_t g_1410;
    int64_t g_1412;
    int32_t * volatile g_1512[4][2];
    int32_t ** volatile g_1534;
    uint64_t g_1584;
    int32_t * volatile g_1603;
    int32_t * volatile g_1604;
    int32_t * volatile g_1605;
    int32_t * volatile g_1607;
    uint8_t g_1657;
    int32_t ** volatile g_1661[10][9];
    int32_t ** volatile g_1662;
    uint32_t g_1729[1];
    int32_t ** volatile g_1778;
    int32_t ** volatile g_1779;
    int32_t ** volatile g_1782;
    volatile int32_t g_1792[6][8][4];
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
uint64_t  func_1(struct S0 * p_1800);
int32_t  func_2(uint32_t  p_3, int8_t  p_4, uint8_t  p_5, int8_t  p_6, struct S0 * p_1800);
uint16_t  func_12(int64_t  p_13, uint64_t  p_14, struct S0 * p_1800);
uint64_t  func_17(int64_t  p_18, uint64_t  p_19, uint32_t  p_20, uint32_t * p_21, struct S0 * p_1800);
uint32_t  func_23(int16_t  p_24, uint32_t * p_25, uint32_t * p_26, struct S0 * p_1800);
int16_t  func_36(uint32_t  p_37, int16_t  p_38, uint32_t * p_39, uint32_t * p_40, struct S0 * p_1800);
uint32_t * func_43(int8_t  p_44, struct S0 * p_1800);
uint16_t  func_49(uint16_t  p_50, uint64_t  p_51, uint32_t * p_52, uint32_t * p_53, uint32_t * p_54, struct S0 * p_1800);
uint32_t * func_64(uint64_t  p_65, struct S0 * p_1800);
uint64_t  func_68(uint16_t * p_69, uint32_t * p_70, struct S0 * p_1800);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1800->g_22 p_1800->g_56 p_1800->g_59 p_1800->g_75 p_1800->g_76 p_1800->g_78 p_1800->g_101 p_1800->g_60 p_1800->g_104 p_1800->g_122 p_1800->g_156 p_1800->g_128 p_1800->g_82 p_1800->g_240 p_1800->g_77 p_1800->g_294 p_1800->g_295 p_1800->g_305 p_1800->g_241 p_1800->g_368 p_1800->g_402 p_1800->g_403 p_1800->g_374 p_1800->g_381 p_1800->g_435 p_1800->g_370 p_1800->g_396 p_1800->g_480 p_1800->g_488 p_1800->g_372 p_1800->g_393 p_1800->g_390 p_1800->g_635 p_1800->g_867 p_1800->g_408 p_1800->g_887 p_1800->g_655 p_1800->g_375 p_1800->g_823 p_1800->g_654 p_1800->g_377 p_1800->g_824 p_1800->g_975 p_1800->g_597 p_1800->g_728 p_1800->g_729 p_1800->g_1006 p_1800->g_721 p_1800->g_1410 p_1800->g_371 p_1800->g_722 p_1800->g_1412 p_1800->g_1512 p_1800->g_1247 p_1800->g_1355 p_1800->g_1356 p_1800->g_1534 p_1800->g_399 p_1800->g_1584 p_1800->g_1607 p_1800->g_398 p_1800->g_376 p_1800->g_784 p_1800->g_1662 p_1800->g_1657 p_1800->g_584 p_1800->g_400 p_1800->g_868 p_1800->g_1190 p_1800->g_1779 p_1800->g_1782
 * writes: p_1800->g_56 p_1800->g_75 p_1800->g_76 p_1800->g_78 p_1800->g_82 p_1800->g_59 p_1800->g_101 p_1800->g_73 p_1800->g_122 p_1800->g_128 p_1800->g_60 p_1800->g_104 p_1800->g_156 p_1800->g_224 p_1800->g_294 p_1800->g_403 p_1800->g_408 p_1800->g_435 p_1800->g_480 p_1800->g_824 p_1800->g_655 p_1800->g_975 p_1800->g_22 p_1800->g_1006 p_1800->g_722 p_1800->g_295 p_1800->g_1410 p_1800->g_823 p_1800->g_1584 p_1800->g_635 p_1800->g_1657 p_1800->g_784
 */
uint64_t  func_1(struct S0 * p_1800)
{ /* block id: 4 */
    uint32_t *l_7[2][8][5];
    int32_t l_8 = 0x61B88146L;
    int32_t l_9 = 0L;
    uint64_t l_33 = 0x5F43260389A9B8FAL;
    uint16_t *l_55[1];
    int16_t *l_434[6];
    int16_t l_436[1][6];
    int32_t *l_437 = (void*)0;
    int32_t *l_438 = &p_1800->g_75;
    uint64_t *l_1583 = &p_1800->g_1584;
    uint8_t *l_1655 = (void*)0;
    uint8_t *l_1656[4] = {&p_1800->g_1657,&p_1800->g_1657,&p_1800->g_1657,&p_1800->g_1657};
    int32_t l_1658 = 0x506DB4B0L;
    int32_t l_1659 = (-4L);
    int32_t l_1716[6];
    int32_t l_1721[9] = {5L,5L,5L,5L,5L,5L,5L,5L,5L};
    int32_t **l_1794 = &p_1800->g_655[4];
    int i, j, k;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 8; j++)
        {
            for (k = 0; k < 5; k++)
                l_7[i][j][k] = (void*)0;
        }
    }
    for (i = 0; i < 1; i++)
        l_55[i] = &p_1800->g_56;
    for (i = 0; i < 6; i++)
        l_434[i] = &p_1800->g_101;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 6; j++)
            l_436[i][j] = 0x5850L;
    }
    for (i = 0; i < 6; i++)
        l_1716[i] = 0x4597CEEBL;
    if (func_2((l_8 = GROUP_DIVERGE(1, 1)), l_9, (l_1658 |= (safe_div_func_uint16_t_u_u(func_12((safe_div_func_uint64_t_u_u(l_9, GROUP_DIVERGE(0, 1))), ((*l_1583) &= func_17(p_1800->g_22, (func_23(((safe_add_func_int32_t_s_s((safe_lshift_func_uint16_t_u_u((l_9 || (safe_rshift_func_int8_t_s_s(l_33, 0))), 2)), ((*l_438) = (((safe_add_func_uint64_t_u_u(((p_1800->g_22 , (l_436[0][3] ^= (p_1800->g_435 = func_36(l_9, (safe_rshift_func_int16_t_s_s((FAKE_DIVERGE(p_1800->group_2_offset, get_group_id(2), 10) > (((p_1800->g_22 , func_43((+((safe_sub_func_int16_t_s_s((safe_rshift_func_uint16_t_u_u(func_49((--p_1800->g_56), l_9, p_1800->g_59, &p_1800->g_60, &p_1800->g_60, p_1800), l_33)), l_33)) & l_9)), p_1800)) != p_1800->g_368[7][7][1]) != l_33)), 15)), p_1800->g_402, l_7[1][5][0], p_1800)))) , l_436[0][3]), p_1800->g_295)) , p_1800->g_22) > l_9)))) , p_1800->g_435), p_1800->g_402, p_1800->g_402, p_1800) != 3UL), p_1800->g_22, p_1800->g_402, p_1800)), p_1800), GROUP_DIVERGE(0, 1)))), l_1659, p_1800))
    { /* block id: 798 */
        return (*l_438);
    }
    else
    { /* block id: 800 */
        int32_t l_1667 = 0x6F8FF758L;
        int32_t l_1668 = 1L;
        int32_t l_1681 = 0x6D1D740DL;
        int8_t *l_1711 = &p_1800->g_128;
        int8_t *l_1712 = &p_1800->g_480[0];
        uint8_t l_1713[4][9][7] = {{{0xF4L,1UL,0x58L,255UL,6UL,0x2BL,0x41L},{0xF4L,1UL,0x58L,255UL,6UL,0x2BL,0x41L},{0xF4L,1UL,0x58L,255UL,6UL,0x2BL,0x41L},{0xF4L,1UL,0x58L,255UL,6UL,0x2BL,0x41L},{0xF4L,1UL,0x58L,255UL,6UL,0x2BL,0x41L},{0xF4L,1UL,0x58L,255UL,6UL,0x2BL,0x41L},{0xF4L,1UL,0x58L,255UL,6UL,0x2BL,0x41L},{0xF4L,1UL,0x58L,255UL,6UL,0x2BL,0x41L},{0xF4L,1UL,0x58L,255UL,6UL,0x2BL,0x41L}},{{0xF4L,1UL,0x58L,255UL,6UL,0x2BL,0x41L},{0xF4L,1UL,0x58L,255UL,6UL,0x2BL,0x41L},{0xF4L,1UL,0x58L,255UL,6UL,0x2BL,0x41L},{0xF4L,1UL,0x58L,255UL,6UL,0x2BL,0x41L},{0xF4L,1UL,0x58L,255UL,6UL,0x2BL,0x41L},{0xF4L,1UL,0x58L,255UL,6UL,0x2BL,0x41L},{0xF4L,1UL,0x58L,255UL,6UL,0x2BL,0x41L},{0xF4L,1UL,0x58L,255UL,6UL,0x2BL,0x41L},{0xF4L,1UL,0x58L,255UL,6UL,0x2BL,0x41L}},{{0xF4L,1UL,0x58L,255UL,6UL,0x2BL,0x41L},{0xF4L,1UL,0x58L,255UL,6UL,0x2BL,0x41L},{0xF4L,1UL,0x58L,255UL,6UL,0x2BL,0x41L},{0xF4L,1UL,0x58L,255UL,6UL,0x2BL,0x41L},{0xF4L,1UL,0x58L,255UL,6UL,0x2BL,0x41L},{0xF4L,1UL,0x58L,255UL,6UL,0x2BL,0x41L},{0xF4L,1UL,0x58L,255UL,6UL,0x2BL,0x41L},{0xF4L,1UL,0x58L,255UL,6UL,0x2BL,0x41L},{0xF4L,1UL,0x58L,255UL,6UL,0x2BL,0x41L}},{{0xF4L,1UL,0x58L,255UL,6UL,0x2BL,0x41L},{0xF4L,1UL,0x58L,255UL,6UL,0x2BL,0x41L},{0xF4L,1UL,0x58L,255UL,6UL,0x2BL,0x41L},{0xF4L,1UL,0x58L,255UL,6UL,0x2BL,0x41L},{0xF4L,1UL,0x58L,255UL,6UL,0x2BL,0x41L},{0xF4L,1UL,0x58L,255UL,6UL,0x2BL,0x41L},{0xF4L,1UL,0x58L,255UL,6UL,0x2BL,0x41L},{0xF4L,1UL,0x58L,255UL,6UL,0x2BL,0x41L},{0xF4L,1UL,0x58L,255UL,6UL,0x2BL,0x41L}}};
        int64_t *l_1714 = &p_1800->g_224;
        int8_t *l_1715 = &p_1800->g_635;
        uint32_t l_1717 = 0x65D90AA6L;
        int32_t l_1718[4] = {(-3L),(-3L),(-3L),(-3L)};
        int32_t l_1747 = 0x622EA311L;
        int32_t l_1754[1];
        int32_t l_1765 = 0x6C6D4005L;
        int i, j, k;
        for (i = 0; i < 1; i++)
            l_1754[i] = 0x2D65C039L;
        l_1718[3] |= ((safe_sub_func_uint32_t_u_u(((safe_lshift_func_uint16_t_u_s((l_1667 = FAKE_DIVERGE(p_1800->global_1_offset, get_global_id(1), 10)), 9)) != l_1668), ((((((safe_add_func_int64_t_s_s(((((safe_div_func_int8_t_s_s(((*l_1715) |= ((safe_add_func_uint64_t_u_u((safe_mod_func_int32_t_s_s(((*l_438) = (safe_rshift_func_uint16_t_u_u((safe_lshift_func_int8_t_s_u(((((l_1681 = (p_1800->g_1657++)) ^ (safe_sub_func_uint64_t_u_u((*l_438), l_1668))) & ((safe_add_func_uint16_t_u_u(((safe_div_func_int16_t_s_s((0xE1L <= (safe_add_func_int8_t_s_s((safe_sub_func_uint16_t_u_u((((2L && ((((safe_rshift_func_int8_t_s_s(0x3CL, (safe_sub_func_uint64_t_u_u((safe_sub_func_uint8_t_u_u((*l_438), ((safe_sub_func_uint16_t_u_u((safe_unary_minus_func_int16_t_s(((safe_sub_func_int64_t_s_s(((safe_div_func_int8_t_s_s((safe_mul_func_int8_t_s_s((safe_lshift_func_int8_t_s_u(((*l_1712) ^= ((*l_1711) = l_1668)), ((l_1668 | l_1668) == 1UL))), l_1668)), (*l_438))) != (*l_438)), l_1713[0][1][3])) && (-1L)))), (*l_438))) ^ l_1713[0][1][3]))), l_1668)))) && (*l_438)) , l_1714) != l_1583)) == (*l_438)) > 0L), l_1713[0][1][3])), 0xA5L))), l_1668)) != l_1668), 5UL)) ^ l_1713[1][1][0])) > (*l_438)), p_1800->g_435)), 14))), l_1713[2][7][1])), 0x9A1869CFA2AF71F0L)) < l_1713[0][1][3])), l_1716[3])) < l_1717) >= (*p_1800->g_584)) <= (*p_1800->g_402)), l_1713[0][1][3])) , 0x0278BF76541D3E88L) > 8UL) < l_1717) , FAKE_DIVERGE(p_1800->local_0_offset, get_local_id(0), 10)) < l_33))) && 0x80850794L);
        if ((safe_sub_func_uint8_t_u_u(l_1721[6], ((*l_1711) = (-1L)))))
        { /* block id: 810 */
            uint32_t l_1736[1][1][5] = {{{0x43D7726DL,0x43D7726DL,0x43D7726DL,0x43D7726DL,0x43D7726DL}}};
            int32_t l_1739 = (-10L);
            int32_t l_1770 = 0x6BA62986L;
            int32_t l_1771 = 1L;
            int32_t l_1772 = 1L;
            int i, j, k;
            for (p_1800->g_56 = 0; (p_1800->g_56 <= 2); p_1800->g_56 += 1)
            { /* block id: 813 */
                int32_t l_1746 = 6L;
                int32_t l_1762 = 0x61248551L;
                int32_t l_1763 = 0x75ACCFEAL;
                int32_t l_1766 = 0L;
                int32_t l_1767 = 0L;
                int32_t l_1768 = 0L;
                int32_t l_1773[6][5] = {{0x3EB617E8L,0x3EB617E8L,0x3EB617E8L,0x3EB617E8L,0x3EB617E8L},{0x3EB617E8L,0x3EB617E8L,0x3EB617E8L,0x3EB617E8L,0x3EB617E8L},{0x3EB617E8L,0x3EB617E8L,0x3EB617E8L,0x3EB617E8L,0x3EB617E8L},{0x3EB617E8L,0x3EB617E8L,0x3EB617E8L,0x3EB617E8L,0x3EB617E8L},{0x3EB617E8L,0x3EB617E8L,0x3EB617E8L,0x3EB617E8L,0x3EB617E8L},{0x3EB617E8L,0x3EB617E8L,0x3EB617E8L,0x3EB617E8L,0x3EB617E8L}};
                uint64_t l_1774 = 2UL;
                uint16_t l_1787 = 0UL;
                int i, j;
                for (p_1800->g_224 = 8; (p_1800->g_224 >= 1); p_1800->g_224 -= 1)
                { /* block id: 816 */
                    int32_t *l_1722[1][8];
                    uint16_t l_1723 = 0xDBE1L;
                    uint32_t *l_1728[2];
                    uint8_t l_1759 = 0x5EL;
                    int64_t l_1769 = 0x4CE8E3730F7A800BL;
                    int i, j;
                    for (i = 0; i < 1; i++)
                    {
                        for (j = 0; j < 8; j++)
                            l_1722[i][j] = &p_1800->g_75;
                    }
                    for (i = 0; i < 2; i++)
                        l_1728[i] = &p_1800->g_1729[0];
                    --l_1723;
                    l_1739 = (safe_sub_func_uint8_t_u_u((((l_1718[0] &= p_1800->g_400) , (*p_1800->g_867)) == &p_1800->g_82), ((safe_mod_func_int16_t_s_s((safe_mul_func_int16_t_s_s((safe_add_func_uint8_t_u_u((l_1736[0][0][4] = (p_1800->g_1657 = p_1800->g_122)), ((*l_438) = (1UL ^ (l_1739 <= (safe_mul_func_int8_t_s_s(((safe_add_func_uint16_t_u_u((((*l_438) > ((((((*l_1583) = ((safe_rshift_func_uint16_t_u_u(GROUP_DIVERGE(0, 1), 4)) < (l_1668 &= (*l_438)))) == l_1717) > l_1746) ^ 249UL) ^ l_1747)) >= p_1800->g_128), (**p_1800->g_1355))) | (-1L)), l_1746))))))), l_1746)), l_1746)) & FAKE_DIVERGE(p_1800->global_2_offset, get_global_id(2), 10))));
                    for (p_1800->g_784 = 2; (p_1800->g_784 >= 0); p_1800->g_784 -= 1)
                    { /* block id: 827 */
                        uint32_t l_1755 = 0xC6F2E435L;
                        (*l_438) &= (safe_lshift_func_uint16_t_u_u((safe_rshift_func_uint16_t_u_s((l_1754[0] = (safe_rshift_func_uint16_t_u_u(l_1718[1], 0))), 7)), 6));
                        l_1755--;
                        return l_1739;
                    }
                    if ((**p_1800->g_654))
                        break;
                    for (p_1800->g_60 = 0; (p_1800->g_60 <= 2); p_1800->g_60 += 1)
                    { /* block id: 836 */
                        int8_t l_1758 = 0x61L;
                        int32_t l_1764[9] = {0x1C6F0BC9L,0x1C6F0BC9L,0x1C6F0BC9L,0x1C6F0BC9L,0x1C6F0BC9L,0x1C6F0BC9L,0x1C6F0BC9L,0x1C6F0BC9L,0x1C6F0BC9L};
                        int i;
                        --l_1759;
                        l_1774++;
                    }
                }
                if ((**p_1800->g_1190))
                    continue;
                for (p_1800->g_295 = 0; (p_1800->g_295 <= 2); p_1800->g_295 += 1)
                { /* block id: 844 */
                    int32_t *l_1777 = &l_1718[0];
                    int32_t *l_1783 = &l_1762;
                    int32_t *l_1784 = &l_1681;
                    int32_t *l_1785 = &l_1768;
                    int32_t *l_1786[2][10][4] = {{{&l_1763,&p_1800->g_435,&l_1772,&p_1800->g_435},{&l_1763,&p_1800->g_435,&l_1772,&p_1800->g_435},{&l_1763,&p_1800->g_435,&l_1772,&p_1800->g_435},{&l_1763,&p_1800->g_435,&l_1772,&p_1800->g_435},{&l_1763,&p_1800->g_435,&l_1772,&p_1800->g_435},{&l_1763,&p_1800->g_435,&l_1772,&p_1800->g_435},{&l_1763,&p_1800->g_435,&l_1772,&p_1800->g_435},{&l_1763,&p_1800->g_435,&l_1772,&p_1800->g_435},{&l_1763,&p_1800->g_435,&l_1772,&p_1800->g_435},{&l_1763,&p_1800->g_435,&l_1772,&p_1800->g_435}},{{&l_1763,&p_1800->g_435,&l_1772,&p_1800->g_435},{&l_1763,&p_1800->g_435,&l_1772,&p_1800->g_435},{&l_1763,&p_1800->g_435,&l_1772,&p_1800->g_435},{&l_1763,&p_1800->g_435,&l_1772,&p_1800->g_435},{&l_1763,&p_1800->g_435,&l_1772,&p_1800->g_435},{&l_1763,&p_1800->g_435,&l_1772,&p_1800->g_435},{&l_1763,&p_1800->g_435,&l_1772,&p_1800->g_435},{&l_1763,&p_1800->g_435,&l_1772,&p_1800->g_435},{&l_1763,&p_1800->g_435,&l_1772,&p_1800->g_435},{&l_1763,&p_1800->g_435,&l_1772,&p_1800->g_435}}};
                    int i, j, k;
                    (*p_1800->g_1779) = l_1777;
                    (*p_1800->g_1782) = func_43((safe_rshift_func_int16_t_s_u((((void*)0 != (*p_1800->g_1355)) > (-7L)), 2)), p_1800);
                    ++l_1787;
                    for (l_1772 = 2; (l_1772 >= 0); l_1772 -= 1)
                    { /* block id: 850 */
                        volatile int32_t *l_1791 = &p_1800->g_1792[3][3][0];
                        volatile int32_t **l_1790 = &l_1791;
                        int i, j, k;
                        (*l_1790) = p_1800->g_368[(l_1772 + 1)][(l_1772 + 2)][p_1800->g_295];
                    }
                }
            }
        }
        else
        { /* block id: 855 */
            int32_t l_1793[6][8][5] = {{{0x31B6DB35L,1L,0x1259451BL,(-1L),0x3E3E5465L},{0x31B6DB35L,1L,0x1259451BL,(-1L),0x3E3E5465L},{0x31B6DB35L,1L,0x1259451BL,(-1L),0x3E3E5465L},{0x31B6DB35L,1L,0x1259451BL,(-1L),0x3E3E5465L},{0x31B6DB35L,1L,0x1259451BL,(-1L),0x3E3E5465L},{0x31B6DB35L,1L,0x1259451BL,(-1L),0x3E3E5465L},{0x31B6DB35L,1L,0x1259451BL,(-1L),0x3E3E5465L},{0x31B6DB35L,1L,0x1259451BL,(-1L),0x3E3E5465L}},{{0x31B6DB35L,1L,0x1259451BL,(-1L),0x3E3E5465L},{0x31B6DB35L,1L,0x1259451BL,(-1L),0x3E3E5465L},{0x31B6DB35L,1L,0x1259451BL,(-1L),0x3E3E5465L},{0x31B6DB35L,1L,0x1259451BL,(-1L),0x3E3E5465L},{0x31B6DB35L,1L,0x1259451BL,(-1L),0x3E3E5465L},{0x31B6DB35L,1L,0x1259451BL,(-1L),0x3E3E5465L},{0x31B6DB35L,1L,0x1259451BL,(-1L),0x3E3E5465L},{0x31B6DB35L,1L,0x1259451BL,(-1L),0x3E3E5465L}},{{0x31B6DB35L,1L,0x1259451BL,(-1L),0x3E3E5465L},{0x31B6DB35L,1L,0x1259451BL,(-1L),0x3E3E5465L},{0x31B6DB35L,1L,0x1259451BL,(-1L),0x3E3E5465L},{0x31B6DB35L,1L,0x1259451BL,(-1L),0x3E3E5465L},{0x31B6DB35L,1L,0x1259451BL,(-1L),0x3E3E5465L},{0x31B6DB35L,1L,0x1259451BL,(-1L),0x3E3E5465L},{0x31B6DB35L,1L,0x1259451BL,(-1L),0x3E3E5465L},{0x31B6DB35L,1L,0x1259451BL,(-1L),0x3E3E5465L}},{{0x31B6DB35L,1L,0x1259451BL,(-1L),0x3E3E5465L},{0x31B6DB35L,1L,0x1259451BL,(-1L),0x3E3E5465L},{0x31B6DB35L,1L,0x1259451BL,(-1L),0x3E3E5465L},{0x31B6DB35L,1L,0x1259451BL,(-1L),0x3E3E5465L},{0x31B6DB35L,1L,0x1259451BL,(-1L),0x3E3E5465L},{0x31B6DB35L,1L,0x1259451BL,(-1L),0x3E3E5465L},{0x31B6DB35L,1L,0x1259451BL,(-1L),0x3E3E5465L},{0x31B6DB35L,1L,0x1259451BL,(-1L),0x3E3E5465L}},{{0x31B6DB35L,1L,0x1259451BL,(-1L),0x3E3E5465L},{0x31B6DB35L,1L,0x1259451BL,(-1L),0x3E3E5465L},{0x31B6DB35L,1L,0x1259451BL,(-1L),0x3E3E5465L},{0x31B6DB35L,1L,0x1259451BL,(-1L),0x3E3E5465L},{0x31B6DB35L,1L,0x1259451BL,(-1L),0x3E3E5465L},{0x31B6DB35L,1L,0x1259451BL,(-1L),0x3E3E5465L},{0x31B6DB35L,1L,0x1259451BL,(-1L),0x3E3E5465L},{0x31B6DB35L,1L,0x1259451BL,(-1L),0x3E3E5465L}},{{0x31B6DB35L,1L,0x1259451BL,(-1L),0x3E3E5465L},{0x31B6DB35L,1L,0x1259451BL,(-1L),0x3E3E5465L},{0x31B6DB35L,1L,0x1259451BL,(-1L),0x3E3E5465L},{0x31B6DB35L,1L,0x1259451BL,(-1L),0x3E3E5465L},{0x31B6DB35L,1L,0x1259451BL,(-1L),0x3E3E5465L},{0x31B6DB35L,1L,0x1259451BL,(-1L),0x3E3E5465L},{0x31B6DB35L,1L,0x1259451BL,(-1L),0x3E3E5465L},{0x31B6DB35L,1L,0x1259451BL,(-1L),0x3E3E5465L}}};
            int i, j, k;
            return l_1793[2][0][1];
        }
    }
    (*l_1794) = func_43((*l_438), p_1800);
    for (p_1800->g_82 = 13; (p_1800->g_82 <= 26); p_1800->g_82 = safe_add_func_uint16_t_u_u(p_1800->g_82, 8))
    { /* block id: 862 */
        int16_t l_1799 = 0x1827L;
        (*l_438) ^= (safe_lshift_func_int8_t_s_s(l_1799, 0));
    }
    return (*l_438);
}


/* ------------------------------------------ */
/* 
 * reads : p_1800->g_1662 p_1800->g_75
 * writes: p_1800->g_655
 */
int32_t  func_2(uint32_t  p_3, int8_t  p_4, uint8_t  p_5, int8_t  p_6, struct S0 * p_1800)
{ /* block id: 794 */
    int32_t *l_1660 = &p_1800->g_75;
    l_1660 = l_1660;
    (*p_1800->g_1662) = l_1660;
    return (*l_1660);
}


/* ------------------------------------------ */
/* 
 * reads : p_1800->g_371 p_1800->g_435 p_1800->g_1607 p_1800->g_480 p_1800->g_635 p_1800->g_398 p_1800->g_376 p_1800->g_101 p_1800->g_1584 p_1800->g_784 p_1800->g_402 p_1800->g_403
 * writes: p_1800->g_104 p_1800->g_122 p_1800->g_480 p_1800->g_635 p_1800->g_128 p_1800->g_435
 */
uint16_t  func_12(int64_t  p_13, uint64_t  p_14, struct S0 * p_1800)
{ /* block id: 777 */
    int32_t l_1585[3];
    uint32_t l_1588 = 0xD4FAD1C9L;
    uint64_t *l_1598 = (void*)0;
    uint64_t *l_1600[4][2][10] = {{{&p_1800->g_975,(void*)0,&p_1800->g_975,(void*)0,&p_1800->g_975,&p_1800->g_975,&p_1800->g_975,&p_1800->g_975,(void*)0,&p_1800->g_975},{&p_1800->g_975,(void*)0,&p_1800->g_975,(void*)0,&p_1800->g_975,&p_1800->g_975,&p_1800->g_975,&p_1800->g_975,(void*)0,&p_1800->g_975}},{{&p_1800->g_975,(void*)0,&p_1800->g_975,(void*)0,&p_1800->g_975,&p_1800->g_975,&p_1800->g_975,&p_1800->g_975,(void*)0,&p_1800->g_975},{&p_1800->g_975,(void*)0,&p_1800->g_975,(void*)0,&p_1800->g_975,&p_1800->g_975,&p_1800->g_975,&p_1800->g_975,(void*)0,&p_1800->g_975}},{{&p_1800->g_975,(void*)0,&p_1800->g_975,(void*)0,&p_1800->g_975,&p_1800->g_975,&p_1800->g_975,&p_1800->g_975,(void*)0,&p_1800->g_975},{&p_1800->g_975,(void*)0,&p_1800->g_975,(void*)0,&p_1800->g_975,&p_1800->g_975,&p_1800->g_975,&p_1800->g_975,(void*)0,&p_1800->g_975}},{{&p_1800->g_975,(void*)0,&p_1800->g_975,(void*)0,&p_1800->g_975,&p_1800->g_975,&p_1800->g_975,&p_1800->g_975,(void*)0,&p_1800->g_975},{&p_1800->g_975,(void*)0,&p_1800->g_975,(void*)0,&p_1800->g_975,&p_1800->g_975,&p_1800->g_975,&p_1800->g_975,(void*)0,&p_1800->g_975}}};
    uint64_t **l_1599 = &l_1600[3][1][6];
    int64_t l_1601 = 3L;
    int32_t l_1602 = 0x2610DCCBL;
    int32_t *l_1606 = (void*)0;
    int32_t l_1608 = 0x19D409BAL;
    int32_t *l_1609 = &l_1608;
    int32_t *l_1610 = &l_1608;
    int32_t l_1611 = 0x0A73CA92L;
    int32_t *l_1612 = &p_1800->g_435;
    int32_t l_1613 = 0x027DE616L;
    int32_t *l_1614[2][9] = {{&l_1613,&l_1613,&l_1613,&l_1613,&l_1613,&l_1613,&l_1613,&l_1613,&l_1613},{&l_1613,&l_1613,&l_1613,&l_1613,&l_1613,&l_1613,&l_1613,&l_1613,&l_1613}};
    uint16_t l_1615 = 65531UL;
    uint16_t *l_1630 = &l_1615;
    uint8_t *l_1637 = &p_1800->g_122;
    int8_t *l_1642 = &p_1800->g_480[1];
    int8_t *l_1643 = &p_1800->g_635;
    int8_t *l_1644 = &p_1800->g_128;
    int32_t l_1645 = (-10L);
    int8_t l_1646 = 0x29L;
    uint32_t l_1653 = 0x65506413L;
    uint16_t l_1654 = 1UL;
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_1585[i] = (-7L);
    (*p_1800->g_1607) = (l_1585[2] || (safe_sub_func_int8_t_s_s((p_13 || (l_1588 | ((safe_mod_func_int64_t_s_s((p_1800->g_371 , (((safe_mul_func_int16_t_s_s(l_1585[2], (l_1602 = (safe_mul_func_int8_t_s_s((safe_div_func_uint16_t_u_u((safe_unary_minus_func_int32_t_s((((FAKE_DIVERGE(p_1800->global_0_offset, get_global_id(0), 10) != (((((p_14 , l_1598) == ((*l_1599) = &p_1800->g_975)) >= (&p_1800->g_1410 != (void*)0)) , (void*)0) != (void*)0)) & l_1601) || l_1585[2]))), 0xA08AL)), p_13))))) ^ 4294967295UL) >= l_1601)), p_1800->g_435)) && l_1585[2]))), p_13)));
    l_1615++;
    (*l_1612) ^= (((safe_lshift_func_int8_t_s_s(((((safe_lshift_func_int8_t_s_s((((*l_1644) = (safe_add_func_int8_t_s_s((safe_mul_func_int16_t_s_s((6L > (safe_sub_func_int32_t_s_s(((safe_add_func_uint16_t_u_u(FAKE_DIVERGE(p_1800->global_1_offset, get_global_id(1), 10), (++(*l_1630)))) <= (*l_1610)), (safe_lshift_func_int16_t_s_u(((*l_1610) > (0x4DL < ((*l_1637) = (p_13 , 0x6EL)))), 14))))), (safe_rshift_func_int16_t_s_u((safe_lshift_func_uint8_t_u_u((((*l_1643) |= ((*l_1642) ^= (&l_1599 == &l_1599))) ^ p_1800->g_398), 7)), p_13)))), (*l_1610)))) ^ p_13), 1)) & 0x39CA230DL) == 0xA7L) ^ l_1645), 1)) < p_14) , (*l_1610));
    l_1654 &= ((l_1646 >= ((safe_div_func_int64_t_s_s(((*l_1612) = (p_1800->g_376 & p_13)), (safe_div_func_uint64_t_u_u((&p_1800->g_721 != (((((*l_1610) = ((safe_mul_func_uint8_t_u_u(((((((+0L) == (&l_1613 != &p_1800->g_104)) > (((*l_1642) = p_14) && (p_13 >= (*l_1610)))) , l_1653) <= (*l_1610)) | (*l_1610)), 0L)) == p_14)) | GROUP_DIVERGE(2, 1)) < p_1800->g_101) , &p_1800->g_721)), p_1800->g_1584)))) < p_1800->g_784)) & (*p_1800->g_402));
    return p_14;
}


/* ------------------------------------------ */
/* 
 * reads : p_1800->g_104 p_1800->g_56 p_1800->g_370 p_1800->g_82 p_1800->g_403 p_1800->g_396 p_1800->g_59 p_1800->g_78 p_1800->g_60 p_1800->g_101 p_1800->g_480 p_1800->g_435 p_1800->g_488 p_1800->g_75 p_1800->g_372 p_1800->g_22 p_1800->g_393 p_1800->g_390 p_1800->g_635 p_1800->g_156 p_1800->g_122 p_1800->g_867 p_1800->g_408 p_1800->g_887 p_1800->g_655 p_1800->g_375 p_1800->g_823 p_1800->g_654 p_1800->g_377 p_1800->g_824 p_1800->g_402 p_1800->g_975 p_1800->g_597 p_1800->g_728 p_1800->g_729 p_1800->g_1006 p_1800->g_721 p_1800->g_294 p_1800->g_374 p_1800->g_1410 p_1800->g_371 p_1800->g_722 p_1800->g_1412 p_1800->g_1512 p_1800->g_1247 p_1800->g_1355 p_1800->g_1356 p_1800->g_1534 p_1800->g_399
 * writes: p_1800->g_104 p_1800->g_56 p_1800->g_128 p_1800->g_122 p_1800->g_78 p_1800->g_60 p_1800->g_408 p_1800->g_101 p_1800->g_435 p_1800->g_75 p_1800->g_294 p_1800->g_403 p_1800->g_480 p_1800->g_824 p_1800->g_82 p_1800->g_655 p_1800->g_975 p_1800->g_22 p_1800->g_156 p_1800->g_224 p_1800->g_1006 p_1800->g_722 p_1800->g_295 p_1800->g_1410 p_1800->g_823
 */
uint64_t  func_17(int64_t  p_18, uint64_t  p_19, uint32_t  p_20, uint32_t * p_21, struct S0 * p_1800)
{ /* block id: 188 */
    int32_t l_455 = 0x315C4785L;
    uint16_t l_563 = 65528UL;
    int32_t *l_567 = &l_455;
    int32_t l_583 = 0x5A6972C3L;
    int32_t l_587 = 0x2D2DD164L;
    int32_t l_588 = 0x2B9F0B2FL;
    int32_t l_589 = 0x360E00C0L;
    int32_t *l_599 = (void*)0;
    int16_t l_629 = 0x1F7DL;
    int32_t l_630 = 0x4AABFDB4L;
    int32_t l_631[2];
    uint32_t **l_644 = &p_1800->g_402;
    uint32_t ***l_643 = &l_644;
    uint64_t l_666 = 0xC677E780621DB0C3L;
    uint64_t **l_711 = (void*)0;
    uint64_t ***l_710[6] = {(void*)0,&l_711,(void*)0,(void*)0,&l_711,(void*)0};
    int32_t l_859 = 9L;
    int32_t *l_878 = &p_1800->g_156;
    uint32_t ***l_889 = &l_644;
    uint32_t ****l_890[7] = {&p_1800->g_823,&p_1800->g_823,&p_1800->g_823,&p_1800->g_823,&p_1800->g_823,&p_1800->g_823,&p_1800->g_823};
    uint32_t ***l_891 = (void*)0;
    uint8_t l_910 = 5UL;
    uint32_t **l_911[6] = {(void*)0,&p_1800->g_59,(void*)0,(void*)0,&p_1800->g_59,(void*)0};
    int8_t l_1011 = 0x3FL;
    uint16_t **l_1014 = &p_1800->g_77[7];
    uint32_t l_1044[1][5][6] = {{{0xE9D6218CL,4294967295UL,7UL,4294967295UL,0xE9D6218CL,0xE9D6218CL},{0xE9D6218CL,4294967295UL,7UL,4294967295UL,0xE9D6218CL,0xE9D6218CL},{0xE9D6218CL,4294967295UL,7UL,4294967295UL,0xE9D6218CL,0xE9D6218CL},{0xE9D6218CL,4294967295UL,7UL,4294967295UL,0xE9D6218CL,0xE9D6218CL},{0xE9D6218CL,4294967295UL,7UL,4294967295UL,0xE9D6218CL,0xE9D6218CL}}};
    int64_t l_1104[5];
    uint32_t l_1132[8][1] = {{0x902087F1L},{0x902087F1L},{0x902087F1L},{0x902087F1L},{0x902087F1L},{0x902087F1L},{0x902087F1L},{0x902087F1L}};
    uint16_t l_1139[8][1][10] = {{{65530UL,0xC243L,1UL,0x273BL,65535UL,65530UL,0x273BL,65535UL,0x273BL,65530UL}},{{65530UL,0xC243L,1UL,0x273BL,65535UL,65530UL,0x273BL,65535UL,0x273BL,65530UL}},{{65530UL,0xC243L,1UL,0x273BL,65535UL,65530UL,0x273BL,65535UL,0x273BL,65530UL}},{{65530UL,0xC243L,1UL,0x273BL,65535UL,65530UL,0x273BL,65535UL,0x273BL,65530UL}},{{65530UL,0xC243L,1UL,0x273BL,65535UL,65530UL,0x273BL,65535UL,0x273BL,65530UL}},{{65530UL,0xC243L,1UL,0x273BL,65535UL,65530UL,0x273BL,65535UL,0x273BL,65530UL}},{{65530UL,0xC243L,1UL,0x273BL,65535UL,65530UL,0x273BL,65535UL,0x273BL,65530UL}},{{65530UL,0xC243L,1UL,0x273BL,65535UL,65530UL,0x273BL,65535UL,0x273BL,65530UL}}};
    int8_t **l_1147 = (void*)0;
    uint64_t l_1169 = 0x41034104C2D06580L;
    int32_t l_1186[4][4] = {{0L,0x401C0D8BL,0x401C0D8BL,0L},{0L,0x401C0D8BL,0x401C0D8BL,0L},{0L,0x401C0D8BL,0x401C0D8BL,0L},{0L,0x401C0D8BL,0x401C0D8BL,0L}};
    int8_t l_1322 = 0x2CL;
    int64_t *l_1435[7] = {&p_1800->g_1410,&p_1800->g_1410,&p_1800->g_1410,&p_1800->g_1410,&p_1800->g_1410,&p_1800->g_1410,&p_1800->g_1410};
    int64_t **l_1434 = &l_1435[2];
    uint64_t l_1474 = 0xA93FB5FF958CFEF5L;
    uint64_t l_1552[1];
    int16_t l_1579 = 0x46ABL;
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_631[i] = 0x3C51D74BL;
    for (i = 0; i < 5; i++)
        l_1104[i] = 0x0255123F6C5B33C6L;
    for (i = 0; i < 1; i++)
        l_1552[i] = 8UL;
    for (p_1800->g_104 = 3; (p_1800->g_104 >= 0); p_1800->g_104 -= 1)
    { /* block id: 191 */
        uint8_t l_456 = 6UL;
        uint64_t **l_463 = &p_1800->g_294[1];
        int32_t l_481[9][3][9] = {{{9L,0x7BE9B863L,(-9L),0x736C557DL,(-9L),0x7BE9B863L,9L,0x4A4E8236L,0x1DCE8454L},{9L,0x7BE9B863L,(-9L),0x736C557DL,(-9L),0x7BE9B863L,9L,0x4A4E8236L,0x1DCE8454L},{9L,0x7BE9B863L,(-9L),0x736C557DL,(-9L),0x7BE9B863L,9L,0x4A4E8236L,0x1DCE8454L}},{{9L,0x7BE9B863L,(-9L),0x736C557DL,(-9L),0x7BE9B863L,9L,0x4A4E8236L,0x1DCE8454L},{9L,0x7BE9B863L,(-9L),0x736C557DL,(-9L),0x7BE9B863L,9L,0x4A4E8236L,0x1DCE8454L},{9L,0x7BE9B863L,(-9L),0x736C557DL,(-9L),0x7BE9B863L,9L,0x4A4E8236L,0x1DCE8454L}},{{9L,0x7BE9B863L,(-9L),0x736C557DL,(-9L),0x7BE9B863L,9L,0x4A4E8236L,0x1DCE8454L},{9L,0x7BE9B863L,(-9L),0x736C557DL,(-9L),0x7BE9B863L,9L,0x4A4E8236L,0x1DCE8454L},{9L,0x7BE9B863L,(-9L),0x736C557DL,(-9L),0x7BE9B863L,9L,0x4A4E8236L,0x1DCE8454L}},{{9L,0x7BE9B863L,(-9L),0x736C557DL,(-9L),0x7BE9B863L,9L,0x4A4E8236L,0x1DCE8454L},{9L,0x7BE9B863L,(-9L),0x736C557DL,(-9L),0x7BE9B863L,9L,0x4A4E8236L,0x1DCE8454L},{9L,0x7BE9B863L,(-9L),0x736C557DL,(-9L),0x7BE9B863L,9L,0x4A4E8236L,0x1DCE8454L}},{{9L,0x7BE9B863L,(-9L),0x736C557DL,(-9L),0x7BE9B863L,9L,0x4A4E8236L,0x1DCE8454L},{9L,0x7BE9B863L,(-9L),0x736C557DL,(-9L),0x7BE9B863L,9L,0x4A4E8236L,0x1DCE8454L},{9L,0x7BE9B863L,(-9L),0x736C557DL,(-9L),0x7BE9B863L,9L,0x4A4E8236L,0x1DCE8454L}},{{9L,0x7BE9B863L,(-9L),0x736C557DL,(-9L),0x7BE9B863L,9L,0x4A4E8236L,0x1DCE8454L},{9L,0x7BE9B863L,(-9L),0x736C557DL,(-9L),0x7BE9B863L,9L,0x4A4E8236L,0x1DCE8454L},{9L,0x7BE9B863L,(-9L),0x736C557DL,(-9L),0x7BE9B863L,9L,0x4A4E8236L,0x1DCE8454L}},{{9L,0x7BE9B863L,(-9L),0x736C557DL,(-9L),0x7BE9B863L,9L,0x4A4E8236L,0x1DCE8454L},{9L,0x7BE9B863L,(-9L),0x736C557DL,(-9L),0x7BE9B863L,9L,0x4A4E8236L,0x1DCE8454L},{9L,0x7BE9B863L,(-9L),0x736C557DL,(-9L),0x7BE9B863L,9L,0x4A4E8236L,0x1DCE8454L}},{{9L,0x7BE9B863L,(-9L),0x736C557DL,(-9L),0x7BE9B863L,9L,0x4A4E8236L,0x1DCE8454L},{9L,0x7BE9B863L,(-9L),0x736C557DL,(-9L),0x7BE9B863L,9L,0x4A4E8236L,0x1DCE8454L},{9L,0x7BE9B863L,(-9L),0x736C557DL,(-9L),0x7BE9B863L,9L,0x4A4E8236L,0x1DCE8454L}},{{9L,0x7BE9B863L,(-9L),0x736C557DL,(-9L),0x7BE9B863L,9L,0x4A4E8236L,0x1DCE8454L},{9L,0x7BE9B863L,(-9L),0x736C557DL,(-9L),0x7BE9B863L,9L,0x4A4E8236L,0x1DCE8454L},{9L,0x7BE9B863L,(-9L),0x736C557DL,(-9L),0x7BE9B863L,9L,0x4A4E8236L,0x1DCE8454L}}};
        uint32_t l_513 = 0xDDC2AC78L;
        int8_t **l_534 = (void*)0;
        uint32_t l_535 = 0x7D9C39B5L;
        uint16_t *l_557 = &p_1800->g_56;
        uint64_t l_590[1];
        int16_t *l_594 = &p_1800->g_101;
        int16_t **l_593 = &l_594;
        int8_t l_596 = 0L;
        int32_t l_598 = 0L;
        int32_t *l_623 = (void*)0;
        int32_t *l_624 = &l_583;
        int32_t *l_625 = &l_583;
        int32_t *l_626 = &l_583;
        int32_t *l_627 = (void*)0;
        int32_t *l_628[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        uint64_t l_632 = 0x7E15C63A4807AA42L;
        int i, j, k;
        for (i = 0; i < 1; i++)
            l_590[i] = 0x906415F41C204FAFL;
        for (p_1800->g_56 = 0; (p_1800->g_56 <= 5); p_1800->g_56 += 1)
        { /* block id: 194 */
            int64_t l_449 = 0x6D6EA74D60928ED1L;
            uint8_t l_453 = 252UL;
            uint64_t **l_465 = &p_1800->g_294[1];
            int32_t l_487 = 0x292BCEAAL;
            int32_t l_515[2][6][2] = {{{9L,0x314C194DL},{9L,0x314C194DL},{9L,0x314C194DL},{9L,0x314C194DL},{9L,0x314C194DL},{9L,0x314C194DL}},{{9L,0x314C194DL},{9L,0x314C194DL},{9L,0x314C194DL},{9L,0x314C194DL},{9L,0x314C194DL},{9L,0x314C194DL}}};
            uint16_t *l_559 = (void*)0;
            uint16_t **l_558 = &l_559;
            uint64_t l_562[4][3][6];
            int16_t *l_564 = &p_1800->g_101;
            int i, j, k;
            for (i = 0; i < 4; i++)
            {
                for (j = 0; j < 3; j++)
                {
                    for (k = 0; k < 6; k++)
                        l_562[i][j][k] = 0UL;
                }
            }
            for (p_20 = 0; (p_20 <= 5); p_20 += 1)
            { /* block id: 197 */
                int32_t l_452 = 3L;
                uint8_t l_454 = 0UL;
                int32_t *l_514 = &p_1800->g_75;
                int8_t *l_521 = &p_1800->g_128;
                int8_t **l_520[3][2][3] = {{{&l_521,&l_521,&l_521},{&l_521,&l_521,&l_521}},{{&l_521,&l_521,&l_521},{&l_521,&l_521,&l_521}},{{&l_521,&l_521,&l_521},{&l_521,&l_521,&l_521}}};
                int32_t l_533 = (-5L);
                int32_t **l_536 = &l_514;
                int i, j, k;
                if (((safe_mul_func_int16_t_s_s(((p_1800->g_370[(p_1800->g_104 + 1)][p_1800->g_104][(p_1800->g_104 + 1)] ^ ((18446744073709551615UL ^ (safe_sub_func_uint64_t_u_u(((safe_add_func_uint64_t_u_u((safe_add_func_int32_t_s_s((l_449 >= (safe_sub_func_int16_t_s_s(p_20, ((FAKE_DIVERGE(p_1800->local_1_offset, get_local_id(1), 10) ^ ((p_18 , ((((0x56L < l_452) < l_453) , ((((l_454 ^ 9UL) , 0x53L) , 0x05EC4B10B5C2A52FL) >= p_19)) ^ p_1800->g_82)) > 0x72A16CD0FC8B0E8EL)) || FAKE_DIVERGE(p_1800->local_2_offset, get_local_id(2), 10))))), 1UL)), 18446744073709551615UL)) != l_455), l_454))) & l_456)) , p_20), 0x7D52L)) || 1L))
                { /* block id: 198 */
                    uint32_t l_482 = 4294967295UL;
                    for (p_1800->g_128 = 0; (p_1800->g_128 <= 5); p_1800->g_128 += 1)
                    { /* block id: 201 */
                        uint64_t **l_462 = &p_1800->g_294[1];
                        uint64_t ***l_461 = &l_462;
                        uint64_t ***l_464 = &l_463;
                        uint8_t *l_468 = (void*)0;
                        uint8_t *l_469 = (void*)0;
                        uint8_t *l_470 = &p_1800->g_122;
                        uint8_t *l_471 = &l_453;
                        int64_t *l_472 = &p_1800->g_408;
                        int8_t *l_479[2];
                        int16_t *l_483 = &p_1800->g_101;
                        int32_t *l_484 = &p_1800->g_435;
                        int32_t *l_485 = (void*)0;
                        int32_t *l_486[2];
                        int i;
                        for (i = 0; i < 2; i++)
                            l_479[i] = &p_1800->g_480[1];
                        for (i = 0; i < 2; i++)
                            l_486[i] = &l_455;
                        (*l_484) |= ((*p_21) | (safe_rshift_func_uint8_t_u_s(((safe_sub_func_int32_t_s_s((((*l_461) = (void*)0) != (l_465 = ((*l_464) = l_463))), (safe_rshift_func_int16_t_s_s(((p_18 , (((*p_1800->g_59) &= (((*l_471) = ((*l_470) = 0x64L)) || p_1800->g_396)) >= ((+((((((*l_472) = p_19) , p_18) > ((*l_483) ^= (((safe_sub_func_int16_t_s_s((safe_rshift_func_uint8_t_u_s((safe_mul_func_int8_t_s_s((l_481[0][1][6] = (-1L)), 3L)), 0)), p_18)) , l_482) , 1L))) , l_455) , l_455)) && p_1800->g_480[1]))) > l_455), 12)))) < FAKE_DIVERGE(p_1800->global_1_offset, get_global_id(1), 10)), l_455)));
                        l_487 = ((*l_484) = l_455);
                        if (p_19)
                            break;
                    }
                }
                else
                { /* block id: 216 */
                    for (l_454 = 1; (l_454 <= 5); l_454 += 1)
                    { /* block id: 219 */
                        (*p_1800->g_488) = (FAKE_DIVERGE(p_1800->group_1_offset, get_group_id(1), 10) != p_18);
                        if (p_18)
                            continue;
                    }
                    for (p_1800->g_128 = 0; (p_1800->g_128 <= 2); p_1800->g_128 += 1)
                    { /* block id: 225 */
                        int8_t l_489 = (-8L);
                        int32_t *l_490 = &p_1800->g_75;
                        (*l_490) ^= ((0x51F59B6CD46E54F2L <= l_489) < (GROUP_DIVERGE(1, 1) <= 65527UL));
                        return l_453;
                    }
                }
                l_515[1][0][1] = ((*l_514) = ((safe_mul_func_int16_t_s_s((l_481[8][2][4] ^ GROUP_DIVERGE(0, 1)), (0x9A69L < (safe_rshift_func_int16_t_s_u((safe_lshift_func_uint8_t_u_s((safe_mul_func_uint16_t_u_u((((((((safe_lshift_func_int8_t_s_u(((FAKE_DIVERGE(p_1800->global_2_offset, get_global_id(2), 10) >= (0x3F1EL < l_481[0][1][6])) != (safe_lshift_func_uint16_t_u_u((safe_div_func_int64_t_s_s((safe_mod_func_int8_t_s_s(l_455, p_1800->g_101)), p_1800->g_372[(p_1800->g_104 + 1)])), 5))), 2)) , (safe_add_func_int64_t_s_s((safe_rshift_func_uint8_t_u_u((safe_lshift_func_uint16_t_u_s(((l_481[3][1][2] , ((FAKE_DIVERGE(p_1800->group_1_offset, get_group_id(1), 10) > ((0x4A53B9E6L != GROUP_DIVERGE(2, 1)) == p_20)) <= l_449)) >= (*p_21)), 13)), p_19)), p_1800->g_370[(p_1800->g_104 + 2)][p_1800->g_104][(p_1800->g_104 + 2)]))) || 0UL) ^ p_20) < l_455) < p_1800->g_22) , 5UL), l_513)), p_19)), 9))))) >= l_513));
                (*l_536) = func_43(((safe_mod_func_int64_t_s_s(((p_19 & ((safe_mul_func_uint8_t_u_u((l_520[1][1][0] == (((p_1800->g_101 > 0x6BCECD7A0EF8EEABL) && ((safe_div_func_uint64_t_u_u((safe_div_func_uint64_t_u_u((safe_lshift_func_int16_t_s_s((safe_rshift_func_int16_t_s_s((((safe_unary_minus_func_uint16_t_u(((((0x33D9DED7L >= (p_18 <= (safe_add_func_uint32_t_u_u((((void*)0 != &p_1800->g_240[1]) | p_1800->g_393), p_18)))) != 0xD29CFD90L) || 4294967295UL) >= p_1800->g_22))) ^ 18446744073709551611UL) == p_20), p_20)), (*l_514))), l_533)), 0x2242E48B42619A35L)) <= l_515[1][0][1])) , l_534)), l_535)) , p_1800->g_390)) > l_515[1][0][1]), p_1800->g_435)) | p_1800->g_78), p_1800);
            }
        }
        l_632--;
        (*l_625) = p_1800->g_635;
        for (l_598 = 0; (l_598 <= 3); l_598 += 1)
        { /* block id: 307 */
            uint64_t ***l_647[4][9][5] = {{{&l_463,&l_463,(void*)0,&l_463,&l_463},{&l_463,&l_463,(void*)0,&l_463,&l_463},{&l_463,&l_463,(void*)0,&l_463,&l_463},{&l_463,&l_463,(void*)0,&l_463,&l_463},{&l_463,&l_463,(void*)0,&l_463,&l_463},{&l_463,&l_463,(void*)0,&l_463,&l_463},{&l_463,&l_463,(void*)0,&l_463,&l_463},{&l_463,&l_463,(void*)0,&l_463,&l_463},{&l_463,&l_463,(void*)0,&l_463,&l_463}},{{&l_463,&l_463,(void*)0,&l_463,&l_463},{&l_463,&l_463,(void*)0,&l_463,&l_463},{&l_463,&l_463,(void*)0,&l_463,&l_463},{&l_463,&l_463,(void*)0,&l_463,&l_463},{&l_463,&l_463,(void*)0,&l_463,&l_463},{&l_463,&l_463,(void*)0,&l_463,&l_463},{&l_463,&l_463,(void*)0,&l_463,&l_463},{&l_463,&l_463,(void*)0,&l_463,&l_463},{&l_463,&l_463,(void*)0,&l_463,&l_463}},{{&l_463,&l_463,(void*)0,&l_463,&l_463},{&l_463,&l_463,(void*)0,&l_463,&l_463},{&l_463,&l_463,(void*)0,&l_463,&l_463},{&l_463,&l_463,(void*)0,&l_463,&l_463},{&l_463,&l_463,(void*)0,&l_463,&l_463},{&l_463,&l_463,(void*)0,&l_463,&l_463},{&l_463,&l_463,(void*)0,&l_463,&l_463},{&l_463,&l_463,(void*)0,&l_463,&l_463},{&l_463,&l_463,(void*)0,&l_463,&l_463}},{{&l_463,&l_463,(void*)0,&l_463,&l_463},{&l_463,&l_463,(void*)0,&l_463,&l_463},{&l_463,&l_463,(void*)0,&l_463,&l_463},{&l_463,&l_463,(void*)0,&l_463,&l_463},{&l_463,&l_463,(void*)0,&l_463,&l_463},{&l_463,&l_463,(void*)0,&l_463,&l_463},{&l_463,&l_463,(void*)0,&l_463,&l_463},{&l_463,&l_463,(void*)0,&l_463,&l_463},{&l_463,&l_463,(void*)0,&l_463,&l_463}}};
            int32_t l_648[2][1][9] = {{{0L,(-6L),0L,0L,(-6L),0L,0L,(-6L),0L}},{{0L,(-6L),0L,0L,(-6L),0L,0L,(-6L),0L}}};
            int i, j, k;
            for (l_583 = 3; (l_583 >= 0); l_583 -= 1)
            { /* block id: 310 */
                uint32_t l_636 = 1UL;
                uint32_t **l_640 = &p_1800->g_59;
                uint32_t ***l_639 = &l_640;
                int32_t l_649 = 0x3C077D0EL;
                int i, j, k;
                l_636--;
                l_649 = (p_1800->g_75 &= (((p_1800->g_370[l_583][l_583][l_583] != ((&p_1800->g_368[6][1][2] != ((*l_639) = (void*)0)) >= ((((safe_lshift_func_int8_t_s_s(((l_643 != (void*)0) && p_1800->g_156), 1)) , 5UL) | ((*p_21) = (safe_mul_func_int16_t_s_s((((p_19 >= ((p_20 , (void*)0) != l_647[2][6][4])) == l_648[1][0][5]) || p_1800->g_122), p_20)))) , 18446744073709551615UL))) < p_20) == p_20));
            }
        }
    }
    if (((*l_567) == (safe_mod_func_int32_t_s_s((*p_1800->g_488), 0x5843A4F5L))))
    { /* block id: 319 */
        uint16_t *l_653 = &p_1800->g_56;
        int8_t *l_670 = &p_1800->g_128;
        int8_t **l_669 = &l_670;
        uint16_t l_706 = 0x95B6L;
        uint32_t l_714 = 0x34D509ECL;
        int32_t *l_715 = &l_583;
        uint64_t ***l_730 = (void*)0;
        int32_t l_733 = 0x4157D6D5L;
        uint8_t l_769 = 1UL;
        uint64_t **l_839 = &p_1800->g_294[0];
        for (p_1800->g_75 = 0; (p_1800->g_75 <= 3); p_1800->g_75 += 1)
        { /* block id: 322 */
            uint16_t *l_652 = (void*)0;
            int32_t l_677[7] = {0x5269767BL,0x5269767BL,0x5269767BL,0x5269767BL,0x5269767BL,0x5269767BL,0x5269767BL};
            int64_t *l_689 = &p_1800->g_408;
            int8_t l_708 = (-4L);
            uint64_t ***l_712 = &l_711;
            uint8_t *l_776 = &p_1800->g_122;
            int32_t l_783[1];
            int32_t *l_785 = &p_1800->g_435;
            uint64_t *l_794 = &l_666;
            int i;
            for (i = 0; i < 1; i++)
                l_783[i] = 0x593AA026L;
            (1 + 1);
        }
        (*l_715) = p_20;
    }
    else
    { /* block id: 448 */
        int32_t **l_873 = &p_1800->g_655[2];
        int32_t **l_874 = &l_599;
        int64_t *l_875[9][5][4] = {{{(void*)0,&p_1800->g_784,(void*)0,&p_1800->g_408},{(void*)0,&p_1800->g_784,(void*)0,&p_1800->g_408},{(void*)0,&p_1800->g_784,(void*)0,&p_1800->g_408},{(void*)0,&p_1800->g_784,(void*)0,&p_1800->g_408},{(void*)0,&p_1800->g_784,(void*)0,&p_1800->g_408}},{{(void*)0,&p_1800->g_784,(void*)0,&p_1800->g_408},{(void*)0,&p_1800->g_784,(void*)0,&p_1800->g_408},{(void*)0,&p_1800->g_784,(void*)0,&p_1800->g_408},{(void*)0,&p_1800->g_784,(void*)0,&p_1800->g_408},{(void*)0,&p_1800->g_784,(void*)0,&p_1800->g_408}},{{(void*)0,&p_1800->g_784,(void*)0,&p_1800->g_408},{(void*)0,&p_1800->g_784,(void*)0,&p_1800->g_408},{(void*)0,&p_1800->g_784,(void*)0,&p_1800->g_408},{(void*)0,&p_1800->g_784,(void*)0,&p_1800->g_408},{(void*)0,&p_1800->g_784,(void*)0,&p_1800->g_408}},{{(void*)0,&p_1800->g_784,(void*)0,&p_1800->g_408},{(void*)0,&p_1800->g_784,(void*)0,&p_1800->g_408},{(void*)0,&p_1800->g_784,(void*)0,&p_1800->g_408},{(void*)0,&p_1800->g_784,(void*)0,&p_1800->g_408},{(void*)0,&p_1800->g_784,(void*)0,&p_1800->g_408}},{{(void*)0,&p_1800->g_784,(void*)0,&p_1800->g_408},{(void*)0,&p_1800->g_784,(void*)0,&p_1800->g_408},{(void*)0,&p_1800->g_784,(void*)0,&p_1800->g_408},{(void*)0,&p_1800->g_784,(void*)0,&p_1800->g_408},{(void*)0,&p_1800->g_784,(void*)0,&p_1800->g_408}},{{(void*)0,&p_1800->g_784,(void*)0,&p_1800->g_408},{(void*)0,&p_1800->g_784,(void*)0,&p_1800->g_408},{(void*)0,&p_1800->g_784,(void*)0,&p_1800->g_408},{(void*)0,&p_1800->g_784,(void*)0,&p_1800->g_408},{(void*)0,&p_1800->g_784,(void*)0,&p_1800->g_408}},{{(void*)0,&p_1800->g_784,(void*)0,&p_1800->g_408},{(void*)0,&p_1800->g_784,(void*)0,&p_1800->g_408},{(void*)0,&p_1800->g_784,(void*)0,&p_1800->g_408},{(void*)0,&p_1800->g_784,(void*)0,&p_1800->g_408},{(void*)0,&p_1800->g_784,(void*)0,&p_1800->g_408}},{{(void*)0,&p_1800->g_784,(void*)0,&p_1800->g_408},{(void*)0,&p_1800->g_784,(void*)0,&p_1800->g_408},{(void*)0,&p_1800->g_784,(void*)0,&p_1800->g_408},{(void*)0,&p_1800->g_784,(void*)0,&p_1800->g_408},{(void*)0,&p_1800->g_784,(void*)0,&p_1800->g_408}},{{(void*)0,&p_1800->g_784,(void*)0,&p_1800->g_408},{(void*)0,&p_1800->g_784,(void*)0,&p_1800->g_408},{(void*)0,&p_1800->g_784,(void*)0,&p_1800->g_408},{(void*)0,&p_1800->g_784,(void*)0,&p_1800->g_408},{(void*)0,&p_1800->g_784,(void*)0,&p_1800->g_408}}};
        int32_t *l_877[2];
        int32_t **l_876 = &l_877[1];
        int32_t l_881 = 0x699080FFL;
        int32_t l_885[1];
        int8_t *l_886 = &p_1800->g_480[1];
        int32_t l_888 = 0x19CE6A30L;
        int i, j, k;
        for (i = 0; i < 2; i++)
            l_877[i] = &p_1800->g_156;
        for (i = 0; i < 1; i++)
            l_885[i] = 0x7D380367L;
        l_888 &= (((((*l_886) |= (p_1800->g_867 == (((*l_567) = (safe_rshift_func_uint8_t_u_u((safe_unary_minus_func_int16_t_s((p_1800->g_78 , ((p_1800->g_408 |= ((l_873 = l_873) != l_874)) >= ((((*l_876) = &p_1800->g_156) == (l_878 = &p_1800->g_156)) , (p_18 || (((((safe_mul_func_int8_t_s_s((l_881 != (safe_mul_func_int16_t_s_s((safe_unary_minus_func_int8_t_s((*l_567))), FAKE_DIVERGE(p_1800->group_2_offset, get_group_id(2), 10)))), 0x4BL)) ^ 0x80A2477C5AD45A0BL) , GROUP_DIVERGE(2, 1)) && p_20) == l_885[0]))))))), p_18))) , (void*)0))) ^ p_1800->g_887) && (**l_873)) ^ FAKE_DIVERGE(p_1800->local_2_offset, get_local_id(2), 10));
        return (**l_873);
    }
    if ((((l_891 = l_889) != &p_1800->g_824) > (((safe_lshift_func_int16_t_s_u(0x535FL, 12)) <= (safe_div_func_uint32_t_u_u(((safe_mul_func_uint8_t_u_u(((safe_mul_func_int16_t_s_s(((safe_mul_func_uint16_t_u_u((safe_sub_func_int64_t_s_s(p_1800->g_375, (FAKE_DIVERGE(p_1800->group_1_offset, get_group_id(1), 10) < GROUP_DIVERGE(0, 1)))), ((safe_mul_func_int16_t_s_s((((&p_1800->g_655[7] == (void*)0) <= p_1800->g_435) && ((((((*p_1800->g_823) = &p_21) != ((((safe_mul_func_uint16_t_u_u(((((safe_div_func_int64_t_s_s((p_18 , l_910), p_18)) && FAKE_DIVERGE(p_1800->global_2_offset, get_global_id(2), 10)) || p_18) >= p_1800->g_408), 1UL)) , 0x1CL) != (*l_567)) , l_911[0])) & FAKE_DIVERGE(p_1800->local_2_offset, get_local_id(2), 10)) & (*l_567)) != p_19)), (-1L))) >= p_20))) == 18446744073709551614UL), p_19)) ^ p_1800->g_104), p_18)) == 0x7FC465828B5C3E36L), (*p_1800->g_59)))) & (-2L))))
    { /* block id: 460 */
        uint32_t l_920[10];
        uint8_t l_928 = 1UL;
        int32_t l_934 = (-3L);
        int16_t l_935 = 0x558EL;
        uint64_t **l_993 = &p_1800->g_294[2];
        int32_t l_1001[2];
        int64_t *l_1140 = &p_1800->g_224;
        int64_t l_1170 = 0x507D1A7B30D1733EL;
        int32_t * volatile l_1192 = &l_1001[0];/* VOLATILE GLOBAL l_1192 */
        int64_t l_1195[3][1][7] = {{{(-10L),4L,0L,4L,(-10L),(-10L),4L}},{{(-10L),4L,0L,4L,(-10L),(-10L),4L}},{{(-10L),4L,0L,4L,(-10L),(-10L),4L}}};
        uint32_t l_1225[2][6][3] = {{{0x327B4E53L,6UL,0x3400BCB3L},{0x327B4E53L,6UL,0x3400BCB3L},{0x327B4E53L,6UL,0x3400BCB3L},{0x327B4E53L,6UL,0x3400BCB3L},{0x327B4E53L,6UL,0x3400BCB3L},{0x327B4E53L,6UL,0x3400BCB3L}},{{0x327B4E53L,6UL,0x3400BCB3L},{0x327B4E53L,6UL,0x3400BCB3L},{0x327B4E53L,6UL,0x3400BCB3L},{0x327B4E53L,6UL,0x3400BCB3L},{0x327B4E53L,6UL,0x3400BCB3L},{0x327B4E53L,6UL,0x3400BCB3L}}};
        uint64_t l_1264 = 0xA732BF2AA7B9FB4BL;
        int16_t **l_1363 = &p_1800->g_1356[0];
        int16_t **l_1364 = &p_1800->g_1356[0];
        uint32_t l_1394 = 0xB9FDCC6DL;
        int16_t *l_1395 = &l_629;
        int32_t l_1405 = 0x50DF5FE1L;
        int8_t *l_1427[4][1][5] = {{{&l_1322,&l_1322,&l_1322,&l_1322,&l_1011}},{{&l_1322,&l_1322,&l_1322,&l_1322,&l_1011}},{{&l_1322,&l_1322,&l_1322,&l_1322,&l_1011}},{{&l_1322,&l_1322,&l_1322,&l_1322,&l_1011}}};
        int64_t *l_1429 = &p_1800->g_1412;
        int64_t **l_1428 = &l_1429;
        uint8_t *l_1436 = &l_910;
        int32_t *l_1437 = &l_588;
        int32_t l_1447 = 0x6D7EF792L;
        int64_t l_1516 = (-8L);
        int i, j, k;
        for (i = 0; i < 10; i++)
            l_920[i] = 0x3A739CADL;
        for (i = 0; i < 2; i++)
            l_1001[i] = 4L;
        for (p_1800->g_56 = (-12); (p_1800->g_56 <= 54); ++p_1800->g_56)
        { /* block id: 463 */
            int32_t *l_937 = &l_588;
            uint64_t l_950 = 0UL;
            int64_t l_978 = 8L;
            uint16_t **l_1015 = &p_1800->g_77[7];
            int8_t *l_1016 = (void*)0;
            int8_t *l_1017 = &p_1800->g_480[1];
            for (p_1800->g_82 = (-13); (p_1800->g_82 == 20); p_1800->g_82 = safe_add_func_uint8_t_u_u(p_1800->g_82, 9))
            { /* block id: 466 */
                int32_t **l_916 = &p_1800->g_655[7];
                (*l_916) = (*p_1800->g_654);
                (*l_916) = p_21;
            }
            for (l_455 = 0; (l_455 != 16); l_455++)
            { /* block id: 472 */
                uint64_t *l_925 = &l_666;
                int32_t l_927 = 0x12A4101AL;
                int32_t l_976 = 6L;
                for (l_589 = 6; (l_589 >= 2); l_589 -= 1)
                { /* block id: 475 */
                    int32_t *l_919 = &l_630;
                    int16_t *l_926[7][5];
                    int64_t *l_933 = &p_1800->g_408;
                    int i, j;
                    for (i = 0; i < 7; i++)
                    {
                        for (j = 0; j < 5; j++)
                            l_926[i][j] = (void*)0;
                    }
                    l_920[1]++;
                    l_935 ^= (((safe_add_func_uint32_t_u_u(((l_927 = (l_925 != l_925)) >= (((0x3161826EL & (*l_919)) , ((*p_1800->g_59) >= (l_928 , (l_934 = (safe_sub_func_int16_t_s_s(((safe_lshift_func_int8_t_s_s(p_19, 7)) <= (FAKE_DIVERGE(p_1800->global_0_offset, get_global_id(0), 10) & p_18)), ((((*l_933) &= ((((*l_919) |= (*l_567)) < 1L) , p_1800->g_377)) , p_20) & (***p_1800->g_823)))))))) || (-1L))), p_19)) ^ 0x4559L) ^ p_18);
                    l_937 = func_43(p_20, p_1800);
                }
                for (l_563 = 0; (l_563 < 39); l_563 = safe_add_func_uint8_t_u_u(l_563, 3))
                { /* block id: 486 */
                    (*l_937) = (l_934 |= l_935);
                }
                for (l_859 = 0; (l_859 <= (-11)); l_859 = safe_sub_func_int64_t_s_s(l_859, 1))
                { /* block id: 492 */
                    int32_t l_958[3][10] = {{3L,0x53FE2C42L,0x76F953CBL,0x03CCDB3CL,0x76F953CBL,0x53FE2C42L,3L,0x3C3874AEL,0L,0L},{3L,0x53FE2C42L,0x76F953CBL,0x03CCDB3CL,0x76F953CBL,0x53FE2C42L,3L,0x3C3874AEL,0L,0L},{3L,0x53FE2C42L,0x76F953CBL,0x03CCDB3CL,0x76F953CBL,0x53FE2C42L,3L,0x3C3874AEL,0L,0L}};
                    int32_t l_960 = (-8L);
                    uint32_t l_971[9] = {0x76686024L,0x76686024L,0x76686024L,0x76686024L,0x76686024L,0x76686024L,0x76686024L,0x76686024L,0x76686024L};
                    int32_t l_977 = 0x39B6D491L;
                    uint16_t *l_982 = &p_1800->g_22;
                    int i, j;
                    for (l_629 = 0; (l_629 >= (-14)); l_629--)
                    { /* block id: 495 */
                        int32_t **l_946 = &l_937;
                        int8_t *l_947 = &p_1800->g_128;
                        int32_t *l_959[9] = {&p_1800->g_75,&l_631[0],&p_1800->g_75,&p_1800->g_75,&l_631[0],&p_1800->g_75,&p_1800->g_75,&l_631[0],&p_1800->g_75};
                        uint64_t *l_974[5][2] = {{&p_1800->g_975,&p_1800->g_975},{&p_1800->g_975,&p_1800->g_975},{&p_1800->g_975,&p_1800->g_975},{&p_1800->g_975,&p_1800->g_975},{&p_1800->g_975,&p_1800->g_975}};
                        int64_t *l_979 = &l_978;
                        int i, j;
                        (*l_946) = (*p_1800->g_654);
                        (*p_1800->g_597) = (((*l_947) = 0x32L) , (p_20 & ((l_950 && 0x50E528D2L) >= ((((*p_1800->g_59) = ((safe_add_func_int16_t_s_s((((*l_979) = (safe_unary_minus_func_int8_t_s((((safe_add_func_uint32_t_u_u((*p_21), (l_960 = (safe_add_func_uint8_t_u_u(l_958[2][4], FAKE_DIVERGE(p_1800->group_0_offset, get_group_id(0), 10)))))) == ((safe_mul_func_int16_t_s_s(p_19, ((safe_sub_func_uint8_t_u_u((safe_sub_func_uint16_t_u_u((safe_rshift_func_uint16_t_u_s((l_977 = ((((safe_sub_func_uint8_t_u_u((l_971[5] <= ((*l_925) = (safe_add_func_uint64_t_u_u((+((((l_927 &= (((p_1800->g_975 |= (8UL && 0x6FL)) , p_19) >= p_18)) , l_927) >= (*p_1800->g_59)) > FAKE_DIVERGE(p_1800->group_2_offset, get_group_id(2), 10))), 4L)))), 1UL)) == (-1L)) ^ p_18) > l_976)), (*l_567))), l_978)), p_19)) && (*p_21)))) ^ 0x49L)) & 0x3DL)))) , p_1800->g_82), 0L)) && 18446744073709551607UL)) , (*p_21)) >= (*p_21)))));
                    }
                    (*l_937) = (safe_rshift_func_int16_t_s_u(l_935, ((*l_982)++)));
                }
                (*l_937) = 0x7220788FL;
            }
            for (p_1800->g_156 = 15; (p_1800->g_156 != 11); --p_1800->g_156)
            { /* block id: 514 */
                int64_t *l_994 = &p_1800->g_224;
                int32_t l_997 = 0x01A2C69DL;
                int32_t *l_1002 = (void*)0;
                int32_t *l_1003 = &p_1800->g_75;
                int32_t *l_1004 = &l_1001[0];
                int32_t *l_1005 = &l_587;
                (*l_567) = ((safe_sub_func_int32_t_s_s(l_934, ((safe_mul_func_int16_t_s_s(((l_1001[0] = (safe_mod_func_uint32_t_u_u((((l_993 == (*p_1800->g_728)) && (((((*l_994) = p_18) != (!(0x72023C3C824EA40AL & (l_935 , (safe_mul_func_uint16_t_u_u((GROUP_DIVERGE(0, 1) > (GROUP_DIVERGE(1, 1) <= l_997)), (safe_lshift_func_uint16_t_u_u(((safe_unary_minus_func_int64_t_s(0x3C67B0DB51E4848EL)) ^ (((p_18 , l_997) || (*l_937)) | 0L)), l_997)))))))) & 0x67L) , l_997)) , l_997), 1L))) > l_997), (*l_567))) | (-1L)))) , p_19);
                --p_1800->g_1006;
            }
            (*l_567) = (p_18 ^ (p_1800->g_372[3] <= ((*l_1017) = (((safe_div_func_uint32_t_u_u(l_1011, (safe_mod_func_int32_t_s_s((~0x6389C3D9L), 0x10A97A89L)))) > (l_1014 != l_1015)) , 0x51L))));
        }
        for (l_583 = 0; (l_583 <= 20); l_583 = safe_add_func_int32_t_s_s(l_583, 4))
        { /* block id: 525 */
            uint16_t l_1024 = 4UL;
            uint64_t **l_1031 = &p_1800->g_294[1];
            int32_t l_1107 = 0x0918D1CDL;
            int32_t l_1108 = 0x6F0D0EFCL;
            uint32_t l_1112 = 0xEB14F63CL;
            int64_t *l_1138 = &l_1104[3];
            int32_t l_1217 = 0x27737811L;
            int32_t l_1219[8] = {0L,0L,0L,0L,0L,0L,0L,0L};
            int32_t l_1223 = 0x39E60AA9L;
            int32_t l_1224 = 0x75BC1B74L;
            uint64_t *l_1237 = &p_1800->g_975;
            uint64_t **l_1236 = &l_1237;
            int32_t l_1321 = 0x624A8B97L;
            int32_t l_1324 = (-5L);
            int32_t l_1325 = 0x758739C7L;
            int32_t l_1326 = 0x73B9C88CL;
            int32_t l_1327 = 0x41A4BA0CL;
            uint32_t l_1365 = 0xE161503FL;
            uint16_t **l_1414[2];
            int i;
            for (i = 0; i < 2; i++)
                l_1414[i] = &p_1800->g_77[2];
            for (p_18 = 0; (p_18 <= 16); p_18 = safe_add_func_uint8_t_u_u(p_18, 6))
            { /* block id: 528 */
                int32_t *l_1022 = &l_587;
                int32_t *l_1023 = (void*)0;
                l_1024--;
                for (p_1800->g_156 = 27; (p_1800->g_156 > 13); --p_1800->g_156)
                { /* block id: 532 */
                    int8_t *l_1035 = &p_1800->g_480[0];
                    for (l_934 = 5; (l_934 >= 0); l_934 -= 1)
                    { /* block id: 535 */
                        uint16_t l_1032 = 65532UL;
                        int32_t l_1045 = 0x515F46C7L;
                        int i;
                        l_1032 = (&p_1800->g_722[7][1] != ((safe_add_func_uint8_t_u_u(FAKE_DIVERGE(p_1800->local_1_offset, get_local_id(1), 10), (0UL & ((void*)0 == l_1031)))) , &p_1800->g_722[8][2]));
                        if (p_1800->g_372[l_934])
                            continue;
                        l_1045 = (safe_sub_func_uint32_t_u_u(((((*p_1800->g_721) = &l_1011) != l_1035) >= (safe_lshift_func_int8_t_s_u(((*l_1035) &= p_20), 1))), ((*l_567) , ((*l_1022) |= ((*p_1800->g_597) = (((*l_567) = ((safe_mod_func_int64_t_s_s(((*l_567) & 251UL), ((**l_1031) = (((safe_add_func_int64_t_s_s(((((***p_1800->g_823) ^ (safe_rshift_func_int16_t_s_s((p_18 , 0L), l_1001[0]))) > p_19) & l_1044[0][2][0]), p_18)) > p_20) | 1L)))) == p_18)) , (-1L)))))));
                    }
                }
            }
            for (p_1800->g_408 = 0; (p_1800->g_408 > (-8)); p_1800->g_408--)
            { /* block id: 550 */
                int16_t *l_1048 = &l_935;
                int32_t **l_1063 = &l_878;
                int32_t l_1064[6];
                int8_t *l_1065 = &p_1800->g_128;
                uint8_t l_1109 = 0x48L;
                int64_t *l_1168[10][8][3] = {{{&l_1104[0],&l_1104[0],&p_1800->g_224},{&l_1104[0],&l_1104[0],&p_1800->g_224},{&l_1104[0],&l_1104[0],&p_1800->g_224},{&l_1104[0],&l_1104[0],&p_1800->g_224},{&l_1104[0],&l_1104[0],&p_1800->g_224},{&l_1104[0],&l_1104[0],&p_1800->g_224},{&l_1104[0],&l_1104[0],&p_1800->g_224},{&l_1104[0],&l_1104[0],&p_1800->g_224}},{{&l_1104[0],&l_1104[0],&p_1800->g_224},{&l_1104[0],&l_1104[0],&p_1800->g_224},{&l_1104[0],&l_1104[0],&p_1800->g_224},{&l_1104[0],&l_1104[0],&p_1800->g_224},{&l_1104[0],&l_1104[0],&p_1800->g_224},{&l_1104[0],&l_1104[0],&p_1800->g_224},{&l_1104[0],&l_1104[0],&p_1800->g_224},{&l_1104[0],&l_1104[0],&p_1800->g_224}},{{&l_1104[0],&l_1104[0],&p_1800->g_224},{&l_1104[0],&l_1104[0],&p_1800->g_224},{&l_1104[0],&l_1104[0],&p_1800->g_224},{&l_1104[0],&l_1104[0],&p_1800->g_224},{&l_1104[0],&l_1104[0],&p_1800->g_224},{&l_1104[0],&l_1104[0],&p_1800->g_224},{&l_1104[0],&l_1104[0],&p_1800->g_224},{&l_1104[0],&l_1104[0],&p_1800->g_224}},{{&l_1104[0],&l_1104[0],&p_1800->g_224},{&l_1104[0],&l_1104[0],&p_1800->g_224},{&l_1104[0],&l_1104[0],&p_1800->g_224},{&l_1104[0],&l_1104[0],&p_1800->g_224},{&l_1104[0],&l_1104[0],&p_1800->g_224},{&l_1104[0],&l_1104[0],&p_1800->g_224},{&l_1104[0],&l_1104[0],&p_1800->g_224},{&l_1104[0],&l_1104[0],&p_1800->g_224}},{{&l_1104[0],&l_1104[0],&p_1800->g_224},{&l_1104[0],&l_1104[0],&p_1800->g_224},{&l_1104[0],&l_1104[0],&p_1800->g_224},{&l_1104[0],&l_1104[0],&p_1800->g_224},{&l_1104[0],&l_1104[0],&p_1800->g_224},{&l_1104[0],&l_1104[0],&p_1800->g_224},{&l_1104[0],&l_1104[0],&p_1800->g_224},{&l_1104[0],&l_1104[0],&p_1800->g_224}},{{&l_1104[0],&l_1104[0],&p_1800->g_224},{&l_1104[0],&l_1104[0],&p_1800->g_224},{&l_1104[0],&l_1104[0],&p_1800->g_224},{&l_1104[0],&l_1104[0],&p_1800->g_224},{&l_1104[0],&l_1104[0],&p_1800->g_224},{&l_1104[0],&l_1104[0],&p_1800->g_224},{&l_1104[0],&l_1104[0],&p_1800->g_224},{&l_1104[0],&l_1104[0],&p_1800->g_224}},{{&l_1104[0],&l_1104[0],&p_1800->g_224},{&l_1104[0],&l_1104[0],&p_1800->g_224},{&l_1104[0],&l_1104[0],&p_1800->g_224},{&l_1104[0],&l_1104[0],&p_1800->g_224},{&l_1104[0],&l_1104[0],&p_1800->g_224},{&l_1104[0],&l_1104[0],&p_1800->g_224},{&l_1104[0],&l_1104[0],&p_1800->g_224},{&l_1104[0],&l_1104[0],&p_1800->g_224}},{{&l_1104[0],&l_1104[0],&p_1800->g_224},{&l_1104[0],&l_1104[0],&p_1800->g_224},{&l_1104[0],&l_1104[0],&p_1800->g_224},{&l_1104[0],&l_1104[0],&p_1800->g_224},{&l_1104[0],&l_1104[0],&p_1800->g_224},{&l_1104[0],&l_1104[0],&p_1800->g_224},{&l_1104[0],&l_1104[0],&p_1800->g_224},{&l_1104[0],&l_1104[0],&p_1800->g_224}},{{&l_1104[0],&l_1104[0],&p_1800->g_224},{&l_1104[0],&l_1104[0],&p_1800->g_224},{&l_1104[0],&l_1104[0],&p_1800->g_224},{&l_1104[0],&l_1104[0],&p_1800->g_224},{&l_1104[0],&l_1104[0],&p_1800->g_224},{&l_1104[0],&l_1104[0],&p_1800->g_224},{&l_1104[0],&l_1104[0],&p_1800->g_224},{&l_1104[0],&l_1104[0],&p_1800->g_224}},{{&l_1104[0],&l_1104[0],&p_1800->g_224},{&l_1104[0],&l_1104[0],&p_1800->g_224},{&l_1104[0],&l_1104[0],&p_1800->g_224},{&l_1104[0],&l_1104[0],&p_1800->g_224},{&l_1104[0],&l_1104[0],&p_1800->g_224},{&l_1104[0],&l_1104[0],&p_1800->g_224},{&l_1104[0],&l_1104[0],&p_1800->g_224},{&l_1104[0],&l_1104[0],&p_1800->g_224}}};
                uint64_t **l_1338 = &p_1800->g_294[1];
                int32_t **l_1397 = &p_1800->g_655[0];
                int i, j, k;
                for (i = 0; i < 6; i++)
                    l_1064[i] = 0x7ABD21E0L;
                (*l_567) = (l_1048 == &l_629);
            }
        }
        if (((*l_1437) &= ((safe_mul_func_int8_t_s_s((((*l_1436) ^= (safe_rshift_func_uint16_t_u_s((safe_lshift_func_uint8_t_u_u((p_18 <= (*l_1192)), 1)), ((~(safe_add_func_uint32_t_u_u(FAKE_DIVERGE(p_1800->group_1_offset, get_group_id(1), 10), (*p_21)))) & ((*l_1140) = (safe_add_func_int64_t_s_s(((((safe_add_func_int16_t_s_s(((255UL <= (l_934 ^= ((*l_567) = l_1170))) & ((*p_1800->g_59) = ((&p_1800->g_1412 == ((*l_1428) = (void*)0)) < (safe_div_func_uint16_t_u_u((safe_mod_func_uint32_t_u_u(((((void*)0 != l_1434) >= 4UL) | 0x1CA41BFD17B8028FL), l_1104[1])), 0xBB13L))))), 5L)) && l_1264) == 5L) || p_1800->g_104), p_20))))))) || (-1L)), GROUP_DIVERGE(0, 1))) || 1UL)))
        { /* block id: 696 */
            int32_t l_1442 = 0x18A8943FL;
            uint32_t l_1445 = 0x137B4B7DL;
            int32_t l_1446 = 0L;
            uint32_t ***l_1450 = &l_911[0];
            uint16_t *l_1451 = &l_1139[0][0][0];
            uint8_t l_1461 = 0xADL;
            int32_t *l_1462 = &l_583;
            int32_t *l_1463 = &l_455;
            int32_t *l_1464 = &l_587;
            int32_t *l_1465 = &l_455;
            int32_t *l_1466 = &l_630;
            int32_t *l_1467 = &l_631[1];
            int32_t *l_1468 = &l_934;
            int32_t *l_1469 = &l_588;
            int32_t *l_1470 = &l_630;
            int32_t *l_1471 = &l_1446;
            int32_t *l_1472 = &l_1001[0];
            int32_t *l_1473 = &l_630;
            (*l_1437) = ((*l_1437) != (safe_mul_func_uint16_t_u_u(((p_20 >= ((*l_567) < (*l_567))) <= (255UL | (safe_rshift_func_int8_t_s_u(l_1442, ((*l_1192) == ((**l_993) = ((l_1447 ^= (l_1446 = (safe_add_func_int32_t_s_s((*l_1437), (p_18 , l_1445))))) <= 1L))))))), 0x558CL)));
            (*l_567) = (((**l_1434) = p_1800->g_374[0][0][1]) , ((((((p_1800->g_823 = &p_1800->g_824) != (l_1450 = l_1450)) <= (((*l_1451) = (p_18 , p_20)) <= ((((safe_lshift_func_int8_t_s_s(((safe_mod_func_int64_t_s_s((*l_567), (safe_mod_func_int64_t_s_s(((((**l_1434) &= (((((l_1442 < ((safe_unary_minus_func_int8_t_s(((((*l_1192) = (safe_rshift_func_int16_t_s_s((((*l_1437) ^= (*p_1800->g_59)) & 0x550DF7EFL), 4))) && (*l_567)) , l_1461))) <= 1L)) < (*l_567)) <= 0x4BE9L) <= 0x39C617BC78C9B22BL) != p_18)) , &p_20) == (void*)0), p_20)))) , 6L), (*l_567))) > (*l_567)) != p_19) <= p_20))) && (*p_21)) > p_20) ^ p_19));
            ++l_1474;
        }
        else
        { /* block id: 710 */
            int32_t l_1477[5] = {6L,6L,6L,6L,6L};
            int32_t l_1536 = 1L;
            int i;
            l_1477[0] = 4L;
            for (p_1800->g_22 = 21; (p_1800->g_22 > 40); p_1800->g_22 = safe_add_func_int32_t_s_s(p_1800->g_22, 1))
            { /* block id: 714 */
                uint64_t **l_1495 = (void*)0;
                int32_t l_1496 = (-8L);
                int32_t l_1497 = 0x44CB91AAL;
                uint8_t l_1537 = 0UL;
                if ((!1L))
                { /* block id: 715 */
                    int32_t **l_1480 = &p_1800->g_655[0];
                    (*l_1480) = func_43(p_19, p_1800);
                }
                else
                { /* block id: 717 */
                    int32_t l_1498[2];
                    int32_t * volatile *l_1513 = &p_1800->g_655[0];
                    int i;
                    for (i = 0; i < 2; i++)
                        l_1498[i] = (-3L);
                    if ((((l_1498[1] = ((*l_1436) = ((safe_div_func_int8_t_s_s((l_1497 = (l_1496 = (((safe_sub_func_int64_t_s_s((p_18 , p_20), (safe_sub_func_int64_t_s_s((((safe_sub_func_uint8_t_u_u((safe_sub_func_uint16_t_u_u((*l_1437), (p_1800->g_371 , (((*p_21) , ((safe_div_func_uint16_t_u_u((*l_567), (safe_add_func_uint64_t_u_u(((~(((0xCBCA1E9D0569B7D8L > p_1800->g_435) ^ (GROUP_DIVERGE(1, 1) != (((*p_1800->g_728) == l_1495) && p_20))) != (*p_21))) , (*l_1437)), 0x59C276C147A22CFDL)))) ^ p_18)) , l_1496)))), p_20)) ^ 0x3CL) < l_1496), p_19)))) , l_1477[2]) > (*l_1437)))), p_18)) , 0x33L))) , (*p_21)) >= (*p_21)))
                    { /* block id: 722 */
                        uint32_t l_1499 = 4294967295UL;
                        return l_1499;
                    }
                    else
                    { /* block id: 724 */
                        int64_t l_1508 = 0x1D4885AD01E24949L;
                        uint16_t *l_1509 = &l_563;
                        (*l_567) ^= ((safe_sub_func_uint64_t_u_u((safe_sub_func_uint8_t_u_u(((l_1496 == ((safe_div_func_uint64_t_u_u(((**l_993) = l_1497), (((void*)0 == (*p_1800->g_721)) , ((safe_div_func_int16_t_s_s((((*l_1192) = p_1800->g_1412) , (p_20 != l_1508)), (++(*l_1509)))) , GROUP_DIVERGE(2, 1))))) != ((**l_644) = ((+(((void*)0 != &p_1800->g_655[8]) , l_1477[1])) >= l_1496)))) , l_1508), p_18)), p_18)) != l_1477[2]);
                    }
                    (*l_1513) = p_1800->g_1512[0][1];
                }
                if ((*l_1192))
                { /* block id: 733 */
                    return p_18;
                }
                else
                { /* block id: 735 */
                    int32_t *l_1514 = (void*)0;
                    int32_t *l_1515[1];
                    uint16_t l_1517 = 4UL;
                    int i;
                    for (i = 0; i < 1; i++)
                        l_1515[i] = (void*)0;
                    l_1517--;
                }
                for (p_20 = 0; (p_20 > 31); p_20++)
                { /* block id: 740 */
                    int32_t l_1526 = 0x76A7980DL;
                    int32_t l_1531 = 0x6D50047BL;
                    int32_t *l_1535[8] = {&l_588,&l_588,&l_588,&l_588,&l_588,&l_588,&l_588,&l_588};
                    int i;
                    (*p_1800->g_1534) = func_64((p_19 != (((*l_1437) = ((((l_1496 , (safe_add_func_int64_t_s_s(((l_1526 &= p_18) <= (((l_1531 = (safe_mod_func_uint32_t_u_u((safe_lshift_func_int16_t_s_u(p_20, (p_18 , p_19))), (**p_1800->g_1247)))) >= p_18) >= ((**p_1800->g_1355) ^= (safe_rshift_func_int16_t_s_s((l_1497 & 0x9EC67AA7L), 8))))), p_19))) >= 0x2EL) , 0x0F08L) > (*l_1437))) & (*p_1800->g_59))), p_1800);
                    l_1537++;
                    (*l_1437) ^= ((FAKE_DIVERGE(p_1800->local_0_offset, get_local_id(0), 10) | 0x671737CFL) < ((safe_add_func_int8_t_s_s((((((*l_878) = 0x13313F4FL) , (safe_mul_func_uint8_t_u_u(l_1497, (safe_add_func_uint16_t_u_u(p_18, ((0xA10FB6C71C172652L < ((--(*p_1800->g_402)) || (safe_div_func_int64_t_s_s(((safe_sub_func_int16_t_s_s((&p_1800->g_868 != ((0x2308L >= 0L) , &p_1800->g_868)), 0xC4A2L)) <= p_20), p_1800->g_374[0][0][1])))) == l_1552[0])))))) , p_18) == p_20), 0UL)) != GROUP_DIVERGE(1, 1)));
                }
            }
        }
        (*l_567) |= p_20;
    }
    else
    { /* block id: 754 */
        uint32_t ***l_1553 = (void*)0;
        int32_t l_1554[7][9][4] = {{{0x6235AFCEL,0x77E957AEL,7L,0x029CBAB6L},{0x6235AFCEL,0x77E957AEL,7L,0x029CBAB6L},{0x6235AFCEL,0x77E957AEL,7L,0x029CBAB6L},{0x6235AFCEL,0x77E957AEL,7L,0x029CBAB6L},{0x6235AFCEL,0x77E957AEL,7L,0x029CBAB6L},{0x6235AFCEL,0x77E957AEL,7L,0x029CBAB6L},{0x6235AFCEL,0x77E957AEL,7L,0x029CBAB6L},{0x6235AFCEL,0x77E957AEL,7L,0x029CBAB6L},{0x6235AFCEL,0x77E957AEL,7L,0x029CBAB6L}},{{0x6235AFCEL,0x77E957AEL,7L,0x029CBAB6L},{0x6235AFCEL,0x77E957AEL,7L,0x029CBAB6L},{0x6235AFCEL,0x77E957AEL,7L,0x029CBAB6L},{0x6235AFCEL,0x77E957AEL,7L,0x029CBAB6L},{0x6235AFCEL,0x77E957AEL,7L,0x029CBAB6L},{0x6235AFCEL,0x77E957AEL,7L,0x029CBAB6L},{0x6235AFCEL,0x77E957AEL,7L,0x029CBAB6L},{0x6235AFCEL,0x77E957AEL,7L,0x029CBAB6L},{0x6235AFCEL,0x77E957AEL,7L,0x029CBAB6L}},{{0x6235AFCEL,0x77E957AEL,7L,0x029CBAB6L},{0x6235AFCEL,0x77E957AEL,7L,0x029CBAB6L},{0x6235AFCEL,0x77E957AEL,7L,0x029CBAB6L},{0x6235AFCEL,0x77E957AEL,7L,0x029CBAB6L},{0x6235AFCEL,0x77E957AEL,7L,0x029CBAB6L},{0x6235AFCEL,0x77E957AEL,7L,0x029CBAB6L},{0x6235AFCEL,0x77E957AEL,7L,0x029CBAB6L},{0x6235AFCEL,0x77E957AEL,7L,0x029CBAB6L},{0x6235AFCEL,0x77E957AEL,7L,0x029CBAB6L}},{{0x6235AFCEL,0x77E957AEL,7L,0x029CBAB6L},{0x6235AFCEL,0x77E957AEL,7L,0x029CBAB6L},{0x6235AFCEL,0x77E957AEL,7L,0x029CBAB6L},{0x6235AFCEL,0x77E957AEL,7L,0x029CBAB6L},{0x6235AFCEL,0x77E957AEL,7L,0x029CBAB6L},{0x6235AFCEL,0x77E957AEL,7L,0x029CBAB6L},{0x6235AFCEL,0x77E957AEL,7L,0x029CBAB6L},{0x6235AFCEL,0x77E957AEL,7L,0x029CBAB6L},{0x6235AFCEL,0x77E957AEL,7L,0x029CBAB6L}},{{0x6235AFCEL,0x77E957AEL,7L,0x029CBAB6L},{0x6235AFCEL,0x77E957AEL,7L,0x029CBAB6L},{0x6235AFCEL,0x77E957AEL,7L,0x029CBAB6L},{0x6235AFCEL,0x77E957AEL,7L,0x029CBAB6L},{0x6235AFCEL,0x77E957AEL,7L,0x029CBAB6L},{0x6235AFCEL,0x77E957AEL,7L,0x029CBAB6L},{0x6235AFCEL,0x77E957AEL,7L,0x029CBAB6L},{0x6235AFCEL,0x77E957AEL,7L,0x029CBAB6L},{0x6235AFCEL,0x77E957AEL,7L,0x029CBAB6L}},{{0x6235AFCEL,0x77E957AEL,7L,0x029CBAB6L},{0x6235AFCEL,0x77E957AEL,7L,0x029CBAB6L},{0x6235AFCEL,0x77E957AEL,7L,0x029CBAB6L},{0x6235AFCEL,0x77E957AEL,7L,0x029CBAB6L},{0x6235AFCEL,0x77E957AEL,7L,0x029CBAB6L},{0x6235AFCEL,0x77E957AEL,7L,0x029CBAB6L},{0x6235AFCEL,0x77E957AEL,7L,0x029CBAB6L},{0x6235AFCEL,0x77E957AEL,7L,0x029CBAB6L},{0x6235AFCEL,0x77E957AEL,7L,0x029CBAB6L}},{{0x6235AFCEL,0x77E957AEL,7L,0x029CBAB6L},{0x6235AFCEL,0x77E957AEL,7L,0x029CBAB6L},{0x6235AFCEL,0x77E957AEL,7L,0x029CBAB6L},{0x6235AFCEL,0x77E957AEL,7L,0x029CBAB6L},{0x6235AFCEL,0x77E957AEL,7L,0x029CBAB6L},{0x6235AFCEL,0x77E957AEL,7L,0x029CBAB6L},{0x6235AFCEL,0x77E957AEL,7L,0x029CBAB6L},{0x6235AFCEL,0x77E957AEL,7L,0x029CBAB6L},{0x6235AFCEL,0x77E957AEL,7L,0x029CBAB6L}}};
        int32_t l_1559[7][8] = {{(-1L),0x0DACEC40L,0x0DACEC40L,(-1L),0x45038207L,0L,0x00FEC39DL,0x31CEFACDL},{(-1L),0x0DACEC40L,0x0DACEC40L,(-1L),0x45038207L,0L,0x00FEC39DL,0x31CEFACDL},{(-1L),0x0DACEC40L,0x0DACEC40L,(-1L),0x45038207L,0L,0x00FEC39DL,0x31CEFACDL},{(-1L),0x0DACEC40L,0x0DACEC40L,(-1L),0x45038207L,0L,0x00FEC39DL,0x31CEFACDL},{(-1L),0x0DACEC40L,0x0DACEC40L,(-1L),0x45038207L,0L,0x00FEC39DL,0x31CEFACDL},{(-1L),0x0DACEC40L,0x0DACEC40L,(-1L),0x45038207L,0L,0x00FEC39DL,0x31CEFACDL},{(-1L),0x0DACEC40L,0x0DACEC40L,(-1L),0x45038207L,0L,0x00FEC39DL,0x31CEFACDL}};
        uint32_t *l_1569[8][2][8] = {{{&l_1044[0][2][1],&l_1044[0][2][0],&l_1044[0][2][0],&l_1044[0][2][1],&p_1800->g_82,&l_1044[0][2][0],(void*)0,(void*)0},{&l_1044[0][2][1],&l_1044[0][2][0],&l_1044[0][2][0],&l_1044[0][2][1],&p_1800->g_82,&l_1044[0][2][0],(void*)0,(void*)0}},{{&l_1044[0][2][1],&l_1044[0][2][0],&l_1044[0][2][0],&l_1044[0][2][1],&p_1800->g_82,&l_1044[0][2][0],(void*)0,(void*)0},{&l_1044[0][2][1],&l_1044[0][2][0],&l_1044[0][2][0],&l_1044[0][2][1],&p_1800->g_82,&l_1044[0][2][0],(void*)0,(void*)0}},{{&l_1044[0][2][1],&l_1044[0][2][0],&l_1044[0][2][0],&l_1044[0][2][1],&p_1800->g_82,&l_1044[0][2][0],(void*)0,(void*)0},{&l_1044[0][2][1],&l_1044[0][2][0],&l_1044[0][2][0],&l_1044[0][2][1],&p_1800->g_82,&l_1044[0][2][0],(void*)0,(void*)0}},{{&l_1044[0][2][1],&l_1044[0][2][0],&l_1044[0][2][0],&l_1044[0][2][1],&p_1800->g_82,&l_1044[0][2][0],(void*)0,(void*)0},{&l_1044[0][2][1],&l_1044[0][2][0],&l_1044[0][2][0],&l_1044[0][2][1],&p_1800->g_82,&l_1044[0][2][0],(void*)0,(void*)0}},{{&l_1044[0][2][1],&l_1044[0][2][0],&l_1044[0][2][0],&l_1044[0][2][1],&p_1800->g_82,&l_1044[0][2][0],(void*)0,(void*)0},{&l_1044[0][2][1],&l_1044[0][2][0],&l_1044[0][2][0],&l_1044[0][2][1],&p_1800->g_82,&l_1044[0][2][0],(void*)0,(void*)0}},{{&l_1044[0][2][1],&l_1044[0][2][0],&l_1044[0][2][0],&l_1044[0][2][1],&p_1800->g_82,&l_1044[0][2][0],(void*)0,(void*)0},{&l_1044[0][2][1],&l_1044[0][2][0],&l_1044[0][2][0],&l_1044[0][2][1],&p_1800->g_82,&l_1044[0][2][0],(void*)0,(void*)0}},{{&l_1044[0][2][1],&l_1044[0][2][0],&l_1044[0][2][0],&l_1044[0][2][1],&p_1800->g_82,&l_1044[0][2][0],(void*)0,(void*)0},{&l_1044[0][2][1],&l_1044[0][2][0],&l_1044[0][2][0],&l_1044[0][2][1],&p_1800->g_82,&l_1044[0][2][0],(void*)0,(void*)0}},{{&l_1044[0][2][1],&l_1044[0][2][0],&l_1044[0][2][0],&l_1044[0][2][1],&p_1800->g_82,&l_1044[0][2][0],(void*)0,(void*)0},{&l_1044[0][2][1],&l_1044[0][2][0],&l_1044[0][2][0],&l_1044[0][2][1],&p_1800->g_82,&l_1044[0][2][0],(void*)0,(void*)0}}};
        uint32_t **l_1568[1][10][8] = {{{&l_1569[2][0][4],(void*)0,&l_1569[5][1][2],(void*)0,&l_1569[4][0][4],(void*)0,&l_1569[5][1][2],(void*)0},{&l_1569[2][0][4],(void*)0,&l_1569[5][1][2],(void*)0,&l_1569[4][0][4],(void*)0,&l_1569[5][1][2],(void*)0},{&l_1569[2][0][4],(void*)0,&l_1569[5][1][2],(void*)0,&l_1569[4][0][4],(void*)0,&l_1569[5][1][2],(void*)0},{&l_1569[2][0][4],(void*)0,&l_1569[5][1][2],(void*)0,&l_1569[4][0][4],(void*)0,&l_1569[5][1][2],(void*)0},{&l_1569[2][0][4],(void*)0,&l_1569[5][1][2],(void*)0,&l_1569[4][0][4],(void*)0,&l_1569[5][1][2],(void*)0},{&l_1569[2][0][4],(void*)0,&l_1569[5][1][2],(void*)0,&l_1569[4][0][4],(void*)0,&l_1569[5][1][2],(void*)0},{&l_1569[2][0][4],(void*)0,&l_1569[5][1][2],(void*)0,&l_1569[4][0][4],(void*)0,&l_1569[5][1][2],(void*)0},{&l_1569[2][0][4],(void*)0,&l_1569[5][1][2],(void*)0,&l_1569[4][0][4],(void*)0,&l_1569[5][1][2],(void*)0},{&l_1569[2][0][4],(void*)0,&l_1569[5][1][2],(void*)0,&l_1569[4][0][4],(void*)0,&l_1569[5][1][2],(void*)0},{&l_1569[2][0][4],(void*)0,&l_1569[5][1][2],(void*)0,&l_1569[4][0][4],(void*)0,&l_1569[5][1][2],(void*)0}}};
        uint64_t l_1580 = 0x4A840470A5C927CEL;
        int i, j, k;
        (*l_567) = (l_1553 == ((*l_567) , &p_1800->g_824));
        l_1554[1][2][2] |= (-1L);
        for (p_1800->g_1410 = 0; (p_1800->g_1410 > (-2)); p_1800->g_1410--)
        { /* block id: 759 */
            uint16_t **l_1557 = &p_1800->g_77[3];
            uint8_t *l_1558[10][7][3] = {{{&l_910,&l_910,&p_1800->g_122},{&l_910,&l_910,&p_1800->g_122},{&l_910,&l_910,&p_1800->g_122},{&l_910,&l_910,&p_1800->g_122},{&l_910,&l_910,&p_1800->g_122},{&l_910,&l_910,&p_1800->g_122},{&l_910,&l_910,&p_1800->g_122}},{{&l_910,&l_910,&p_1800->g_122},{&l_910,&l_910,&p_1800->g_122},{&l_910,&l_910,&p_1800->g_122},{&l_910,&l_910,&p_1800->g_122},{&l_910,&l_910,&p_1800->g_122},{&l_910,&l_910,&p_1800->g_122},{&l_910,&l_910,&p_1800->g_122}},{{&l_910,&l_910,&p_1800->g_122},{&l_910,&l_910,&p_1800->g_122},{&l_910,&l_910,&p_1800->g_122},{&l_910,&l_910,&p_1800->g_122},{&l_910,&l_910,&p_1800->g_122},{&l_910,&l_910,&p_1800->g_122},{&l_910,&l_910,&p_1800->g_122}},{{&l_910,&l_910,&p_1800->g_122},{&l_910,&l_910,&p_1800->g_122},{&l_910,&l_910,&p_1800->g_122},{&l_910,&l_910,&p_1800->g_122},{&l_910,&l_910,&p_1800->g_122},{&l_910,&l_910,&p_1800->g_122},{&l_910,&l_910,&p_1800->g_122}},{{&l_910,&l_910,&p_1800->g_122},{&l_910,&l_910,&p_1800->g_122},{&l_910,&l_910,&p_1800->g_122},{&l_910,&l_910,&p_1800->g_122},{&l_910,&l_910,&p_1800->g_122},{&l_910,&l_910,&p_1800->g_122},{&l_910,&l_910,&p_1800->g_122}},{{&l_910,&l_910,&p_1800->g_122},{&l_910,&l_910,&p_1800->g_122},{&l_910,&l_910,&p_1800->g_122},{&l_910,&l_910,&p_1800->g_122},{&l_910,&l_910,&p_1800->g_122},{&l_910,&l_910,&p_1800->g_122},{&l_910,&l_910,&p_1800->g_122}},{{&l_910,&l_910,&p_1800->g_122},{&l_910,&l_910,&p_1800->g_122},{&l_910,&l_910,&p_1800->g_122},{&l_910,&l_910,&p_1800->g_122},{&l_910,&l_910,&p_1800->g_122},{&l_910,&l_910,&p_1800->g_122},{&l_910,&l_910,&p_1800->g_122}},{{&l_910,&l_910,&p_1800->g_122},{&l_910,&l_910,&p_1800->g_122},{&l_910,&l_910,&p_1800->g_122},{&l_910,&l_910,&p_1800->g_122},{&l_910,&l_910,&p_1800->g_122},{&l_910,&l_910,&p_1800->g_122},{&l_910,&l_910,&p_1800->g_122}},{{&l_910,&l_910,&p_1800->g_122},{&l_910,&l_910,&p_1800->g_122},{&l_910,&l_910,&p_1800->g_122},{&l_910,&l_910,&p_1800->g_122},{&l_910,&l_910,&p_1800->g_122},{&l_910,&l_910,&p_1800->g_122},{&l_910,&l_910,&p_1800->g_122}},{{&l_910,&l_910,&p_1800->g_122},{&l_910,&l_910,&p_1800->g_122},{&l_910,&l_910,&p_1800->g_122},{&l_910,&l_910,&p_1800->g_122},{&l_910,&l_910,&p_1800->g_122},{&l_910,&l_910,&p_1800->g_122},{&l_910,&l_910,&p_1800->g_122}}};
            uint32_t ****l_1564[5];
            uint32_t *****l_1565 = &l_890[4];
            uint32_t *l_1567 = &l_1044[0][2][0];
            uint32_t **l_1566 = &l_1567;
            int32_t l_1570 = 1L;
            int32_t *l_1571 = (void*)0;
            int i, j, k;
            for (i = 0; i < 5; i++)
                l_1564[i] = &p_1800->g_823;
            l_599 = p_21;
            l_1571 = (((((l_1554[1][2][2] &= (((l_1557 = &p_1800->g_77[5]) == &p_1800->g_77[2]) <= p_20)) <= ((l_1559[1][2] , 0x01L) || ((((*p_21)++) > (((safe_mul_func_uint16_t_u_u(((*l_567) ^= p_18), (l_1564[1] != ((*l_1565) = &p_1800->g_823)))) ^ (((l_1568[0][5][7] = l_1566) != &l_1569[2][0][4]) & l_1570)) && 0x96L)) && p_1800->g_399))) >= 0x24A197BBL) > 0x3AA5L) , (void*)0);
        }
        for (p_1800->g_22 = 0; (p_1800->g_22 >= 6); p_1800->g_22++)
        { /* block id: 771 */
            int32_t *l_1574 = &l_589;
            int32_t *l_1575 = &l_588;
            int32_t *l_1576 = &p_1800->g_104;
            int32_t *l_1577 = &l_1559[6][6];
            int32_t *l_1578[7][10][3] = {{{&l_1559[1][2],&p_1800->g_75,&l_631[0]},{&l_1559[1][2],&p_1800->g_75,&l_631[0]},{&l_1559[1][2],&p_1800->g_75,&l_631[0]},{&l_1559[1][2],&p_1800->g_75,&l_631[0]},{&l_1559[1][2],&p_1800->g_75,&l_631[0]},{&l_1559[1][2],&p_1800->g_75,&l_631[0]},{&l_1559[1][2],&p_1800->g_75,&l_631[0]},{&l_1559[1][2],&p_1800->g_75,&l_631[0]},{&l_1559[1][2],&p_1800->g_75,&l_631[0]},{&l_1559[1][2],&p_1800->g_75,&l_631[0]}},{{&l_1559[1][2],&p_1800->g_75,&l_631[0]},{&l_1559[1][2],&p_1800->g_75,&l_631[0]},{&l_1559[1][2],&p_1800->g_75,&l_631[0]},{&l_1559[1][2],&p_1800->g_75,&l_631[0]},{&l_1559[1][2],&p_1800->g_75,&l_631[0]},{&l_1559[1][2],&p_1800->g_75,&l_631[0]},{&l_1559[1][2],&p_1800->g_75,&l_631[0]},{&l_1559[1][2],&p_1800->g_75,&l_631[0]},{&l_1559[1][2],&p_1800->g_75,&l_631[0]},{&l_1559[1][2],&p_1800->g_75,&l_631[0]}},{{&l_1559[1][2],&p_1800->g_75,&l_631[0]},{&l_1559[1][2],&p_1800->g_75,&l_631[0]},{&l_1559[1][2],&p_1800->g_75,&l_631[0]},{&l_1559[1][2],&p_1800->g_75,&l_631[0]},{&l_1559[1][2],&p_1800->g_75,&l_631[0]},{&l_1559[1][2],&p_1800->g_75,&l_631[0]},{&l_1559[1][2],&p_1800->g_75,&l_631[0]},{&l_1559[1][2],&p_1800->g_75,&l_631[0]},{&l_1559[1][2],&p_1800->g_75,&l_631[0]},{&l_1559[1][2],&p_1800->g_75,&l_631[0]}},{{&l_1559[1][2],&p_1800->g_75,&l_631[0]},{&l_1559[1][2],&p_1800->g_75,&l_631[0]},{&l_1559[1][2],&p_1800->g_75,&l_631[0]},{&l_1559[1][2],&p_1800->g_75,&l_631[0]},{&l_1559[1][2],&p_1800->g_75,&l_631[0]},{&l_1559[1][2],&p_1800->g_75,&l_631[0]},{&l_1559[1][2],&p_1800->g_75,&l_631[0]},{&l_1559[1][2],&p_1800->g_75,&l_631[0]},{&l_1559[1][2],&p_1800->g_75,&l_631[0]},{&l_1559[1][2],&p_1800->g_75,&l_631[0]}},{{&l_1559[1][2],&p_1800->g_75,&l_631[0]},{&l_1559[1][2],&p_1800->g_75,&l_631[0]},{&l_1559[1][2],&p_1800->g_75,&l_631[0]},{&l_1559[1][2],&p_1800->g_75,&l_631[0]},{&l_1559[1][2],&p_1800->g_75,&l_631[0]},{&l_1559[1][2],&p_1800->g_75,&l_631[0]},{&l_1559[1][2],&p_1800->g_75,&l_631[0]},{&l_1559[1][2],&p_1800->g_75,&l_631[0]},{&l_1559[1][2],&p_1800->g_75,&l_631[0]},{&l_1559[1][2],&p_1800->g_75,&l_631[0]}},{{&l_1559[1][2],&p_1800->g_75,&l_631[0]},{&l_1559[1][2],&p_1800->g_75,&l_631[0]},{&l_1559[1][2],&p_1800->g_75,&l_631[0]},{&l_1559[1][2],&p_1800->g_75,&l_631[0]},{&l_1559[1][2],&p_1800->g_75,&l_631[0]},{&l_1559[1][2],&p_1800->g_75,&l_631[0]},{&l_1559[1][2],&p_1800->g_75,&l_631[0]},{&l_1559[1][2],&p_1800->g_75,&l_631[0]},{&l_1559[1][2],&p_1800->g_75,&l_631[0]},{&l_1559[1][2],&p_1800->g_75,&l_631[0]}},{{&l_1559[1][2],&p_1800->g_75,&l_631[0]},{&l_1559[1][2],&p_1800->g_75,&l_631[0]},{&l_1559[1][2],&p_1800->g_75,&l_631[0]},{&l_1559[1][2],&p_1800->g_75,&l_631[0]},{&l_1559[1][2],&p_1800->g_75,&l_631[0]},{&l_1559[1][2],&p_1800->g_75,&l_631[0]},{&l_1559[1][2],&p_1800->g_75,&l_631[0]},{&l_1559[1][2],&p_1800->g_75,&l_631[0]},{&l_1559[1][2],&p_1800->g_75,&l_631[0]},{&l_1559[1][2],&p_1800->g_75,&l_631[0]}}};
            int i, j, k;
            l_1580++;
        }
    }
    return p_18;
}


/* ------------------------------------------ */
/* 
 * reads : p_1800->g_104
 * writes: p_1800->g_104
 */
uint32_t  func_23(int16_t  p_24, uint32_t * p_25, uint32_t * p_26, struct S0 * p_1800)
{ /* block id: 185 */
    uint16_t l_439 = 0UL;
    int32_t *l_440 = &p_1800->g_104;
    (*l_440) = (l_439 ^ 0x57500099BD3302B4L);
    return (*l_440);
}


/* ------------------------------------------ */
/* 
 * reads : p_1800->g_75 p_1800->g_403 p_1800->g_374 p_1800->g_78 p_1800->g_128 p_1800->g_381
 * writes: p_1800->g_75 p_1800->g_403 p_1800->g_224 p_1800->g_408 p_1800->g_128 p_1800->g_294 p_1800->g_78
 */
int16_t  func_36(uint32_t  p_37, int16_t  p_38, uint32_t * p_39, uint32_t * p_40, struct S0 * p_1800)
{ /* block id: 147 */
    int32_t *l_404 = &p_1800->g_75;
    uint8_t l_433 = 0x13L;
    (*l_404) |= (-9L);
    for (p_1800->g_403 = 0; (p_1800->g_403 <= 0); p_1800->g_403 += 1)
    { /* block id: 151 */
        uint32_t l_405 = 1UL;
        int64_t *l_406 = &p_1800->g_224;
        int64_t *l_407 = &p_1800->g_408;
        int32_t **l_419 = &l_404;
        int32_t *l_421 = &p_1800->g_104;
        int32_t **l_420 = &l_421;
        (*l_420) = ((*l_419) = func_43((((*l_407) = ((*l_406) = (p_38 , l_405))) , (((safe_mod_func_int32_t_s_s(p_38, (safe_mod_func_uint64_t_u_u((safe_sub_func_int8_t_s_s(((*p_39) || (safe_sub_func_int64_t_s_s((GROUP_DIVERGE(2, 1) || p_1800->g_374[1][0][1]), ((safe_sub_func_int64_t_s_s(p_38, 0x557C43059F338683L)) <= 0xC583L)))), ((0xA038C23034AA0815L & 0x1FE5C63CD88CE5F2L) & l_405))), (*l_404))))) < p_38) != (*p_39))), p_1800));
        for (p_1800->g_75 = 0; (p_1800->g_75 >= 0); p_1800->g_75 -= 1)
        { /* block id: 158 */
            uint64_t l_432[2][1][4] = {{{18446744073709551614UL,0UL,18446744073709551614UL,18446744073709551614UL}},{{18446744073709551614UL,0UL,18446744073709551614UL,18446744073709551614UL}}};
            int i, j, k;
            for (p_1800->g_128 = 0; (p_1800->g_128 >= 0); p_1800->g_128 -= 1)
            { /* block id: 161 */
                int i, j, k;
                if ((atomic_inc(&p_1800->l_atomic_input[35]) == 8))
                { /* block id: 163 */
                    int32_t l_422[2][4] = {{(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L)}};
                    int32_t l_424 = 9L;
                    int32_t *l_423 = &l_424;
                    int32_t *l_425 = &l_424;
                    uint32_t l_426 = 0x92CD1A2BL;
                    uint64_t l_427 = 0x2268D50859C0967EL;
                    int i, j;
                    l_422[0][1] = 0x74F500C4L;
                    l_425 = l_423;
                    l_426 = (-1L);
                    --l_427;
                    unsigned int result = 0;
                    int l_422_i0, l_422_i1;
                    for (l_422_i0 = 0; l_422_i0 < 2; l_422_i0++) {
                        for (l_422_i1 = 0; l_422_i1 < 4; l_422_i1++) {
                            result += l_422[l_422_i0][l_422_i1];
                        }
                    }
                    result += l_424;
                    result += l_426;
                    result += l_427;
                    atomic_add(&p_1800->l_special_values[35], result);
                }
                else
                { /* block id: 168 */
                    (1 + 1);
                }
                if (p_1800->g_381[p_1800->g_75][p_1800->g_75][(p_1800->g_75 + 4)])
                    break;
                for (p_1800->g_78 = (-3); (p_1800->g_78 > 47); p_1800->g_78++)
                { /* block id: 174 */
                    return (**l_420);
                }
                if (l_432[0][0][1])
                    continue;
            }
        }
    }
    return l_433;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes: p_1800->g_128 p_1800->g_294
 */
uint32_t * func_43(int8_t  p_44, struct S0 * p_1800)
{ /* block id: 144 */
    for (p_1800->g_128 = 0; p_1800->g_128 < 3; p_1800->g_128 += 1)
    {
        p_1800->g_294[p_1800->g_128] = &p_1800->g_295;
    }
    return &p_1800->g_78;
}


/* ------------------------------------------ */
/* 
 * reads : p_1800->g_75 p_1800->g_76 p_1800->g_78 p_1800->g_101 p_1800->g_59 p_1800->g_60 p_1800->g_22 p_1800->g_104 p_1800->g_122 p_1800->g_156 p_1800->g_128 p_1800->g_82 p_1800->g_240 p_1800->g_77 p_1800->g_294 p_1800->g_295 p_1800->g_305 p_1800->g_241
 * writes: p_1800->g_75 p_1800->g_76 p_1800->g_78 p_1800->g_82 p_1800->g_59 p_1800->g_101 p_1800->g_73 p_1800->g_122 p_1800->g_128 p_1800->g_60 p_1800->g_104 p_1800->g_156 p_1800->g_224
 */
uint16_t  func_49(uint16_t  p_50, uint64_t  p_51, uint32_t * p_52, uint32_t * p_53, uint32_t * p_54, struct S0 * p_1800)
{ /* block id: 7 */
    uint32_t *l_63 = &p_1800->g_60;
    uint16_t *l_71[6][6] = {{&p_1800->g_56,&p_1800->g_56,&p_1800->g_22,&p_1800->g_56,&p_1800->g_56,&p_1800->g_56},{&p_1800->g_56,&p_1800->g_56,&p_1800->g_22,&p_1800->g_56,&p_1800->g_56,&p_1800->g_56},{&p_1800->g_56,&p_1800->g_56,&p_1800->g_22,&p_1800->g_56,&p_1800->g_56,&p_1800->g_56},{&p_1800->g_56,&p_1800->g_56,&p_1800->g_22,&p_1800->g_56,&p_1800->g_56,&p_1800->g_56},{&p_1800->g_56,&p_1800->g_56,&p_1800->g_22,&p_1800->g_56,&p_1800->g_56,&p_1800->g_56},{&p_1800->g_56,&p_1800->g_56,&p_1800->g_22,&p_1800->g_56,&p_1800->g_56,&p_1800->g_56}};
    uint32_t *l_81 = &p_1800->g_82;
    uint32_t **l_83[3][1][5] = {{{&p_1800->g_59,&l_63,(void*)0,&l_63,&p_1800->g_59}},{{&p_1800->g_59,&l_63,(void*)0,&l_63,&p_1800->g_59}},{{&p_1800->g_59,&l_63,(void*)0,&l_63,&p_1800->g_59}}};
    int32_t l_112 = 0x186B1ECDL;
    int32_t l_129 = 0x3BE9465DL;
    uint64_t l_168 = 4UL;
    uint64_t l_212 = 1UL;
    uint32_t l_220[1];
    int8_t *l_253 = (void*)0;
    uint32_t l_270[4][1][5];
    int64_t l_362[7][2] = {{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L},{(-1L),0L}};
    uint64_t l_366 = 18446744073709551610UL;
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_220[i] = 1UL;
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 5; k++)
                l_270[i][j][k] = 0UL;
        }
    }
    if (((p_50 != ((((safe_lshift_func_uint16_t_u_u((l_63 != (p_52 = func_64(((p_1800->g_59 = (((*l_81) = ((((safe_rshift_func_int16_t_s_u((1UL >= func_68(l_71[3][3], &p_1800->g_60, p_1800)), 8)) && (p_1800->g_78--)) , l_63) == &p_1800->g_60)) , &p_1800->g_78)) != (void*)0), p_1800))), 10)) && GROUP_DIVERGE(0, 1)) ^ 6UL) || FAKE_DIVERGE(p_1800->group_1_offset, get_group_id(1), 10))) , (-4L)))
    { /* block id: 20 */
        return p_50;
    }
    else
    { /* block id: 22 */
        int32_t *l_107[7] = {&p_1800->g_104,&p_1800->g_104,&p_1800->g_104,&p_1800->g_104,&p_1800->g_104,&p_1800->g_104,&p_1800->g_104};
        int32_t **l_106 = &l_107[0];
        int32_t *l_109 = (void*)0;
        int32_t **l_108 = &l_109;
        uint8_t *l_121 = &p_1800->g_122;
        int8_t *l_127 = &p_1800->g_128;
        int16_t l_132 = 0x2E7AL;
        int16_t l_162 = 0x6185L;
        uint32_t l_213 = 4294967295UL;
        int8_t l_239 = 0L;
        int16_t l_267 = 0x77F8L;
        uint64_t *l_293[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        uint64_t *l_297 = &l_212;
        int64_t l_320 = 7L;
        int8_t l_363 = 7L;
        int i;
        (*l_108) = ((*l_106) = p_52);
        for (p_1800->g_82 = 0; p_1800->g_82 < 3; p_1800->g_82 += 1)
        {
            p_1800->g_73[p_1800->g_82] = &p_1800->g_104;
        }
        if ((safe_mul_func_uint16_t_u_u(((void*)0 != &p_1800->g_75), ((((!(l_112 , (p_50 , ((GROUP_DIVERGE(2, 1) <= (l_129 |= (safe_rshift_func_int8_t_s_u(((safe_rshift_func_uint8_t_u_s(p_1800->g_60, p_1800->g_22)) , (((p_51 , ((*l_109) = (safe_div_func_uint16_t_u_u((safe_mul_func_uint8_t_u_u(((*l_121) = FAKE_DIVERGE(p_1800->global_0_offset, get_global_id(0), 10)), ((*l_127) = ((safe_mul_func_uint16_t_u_u(0xF8EFL, (safe_lshift_func_uint16_t_u_u(((p_50 >= p_50) > p_50), p_50)))) || l_112)))), FAKE_DIVERGE(p_1800->group_1_offset, get_group_id(1), 10))))) >= 4294967288UL) == (*p_1800->g_59))), l_112)))) >= p_50)))) | p_50) != p_1800->g_104) , l_129))))
        { /* block id: 30 */
            int16_t l_133[6] = {1L,0x5225L,1L,1L,0x5225L,1L};
            int32_t l_134 = 0x421787F8L;
            uint64_t l_138[1][1][7] = {{{0xC0765CA490DA0945L,0xC0765CA490DA0945L,0xC0765CA490DA0945L,0xC0765CA490DA0945L,0xC0765CA490DA0945L,0xC0765CA490DA0945L,0xC0765CA490DA0945L}}};
            uint32_t *l_154[3][3][1] = {{{&p_1800->g_82},{&p_1800->g_82},{&p_1800->g_82}},{{&p_1800->g_82},{&p_1800->g_82},{&p_1800->g_82}},{{&p_1800->g_82},{&p_1800->g_82},{&p_1800->g_82}}};
            int32_t l_257 = 4L;
            int32_t l_259[1][5] = {{0x11AB2A09L,0x11AB2A09L,0x11AB2A09L,0x11AB2A09L,0x11AB2A09L}};
            uint16_t *l_273 = (void*)0;
            uint8_t **l_306 = &l_121;
            int i, j, k;
            if ((safe_mod_func_uint16_t_u_u(l_132, (p_51 ^ ((*p_53) = 1UL)))))
            { /* block id: 32 */
                int32_t l_135 = 0x0FE829D6L;
                int32_t l_136 = 0x726E7CECL;
                int32_t l_137 = (-1L);
                uint32_t **l_153 = (void*)0;
                uint64_t *l_155 = &l_138[0][0][2];
                uint8_t l_157[2][5][10] = {{{255UL,0x7AL,0x7AL,255UL,0UL,255UL,0x02L,0x69L,0xA7L,249UL},{255UL,0x7AL,0x7AL,255UL,0UL,255UL,0x02L,0x69L,0xA7L,249UL},{255UL,0x7AL,0x7AL,255UL,0UL,255UL,0x02L,0x69L,0xA7L,249UL},{255UL,0x7AL,0x7AL,255UL,0UL,255UL,0x02L,0x69L,0xA7L,249UL},{255UL,0x7AL,0x7AL,255UL,0UL,255UL,0x02L,0x69L,0xA7L,249UL}},{{255UL,0x7AL,0x7AL,255UL,0UL,255UL,0x02L,0x69L,0xA7L,249UL},{255UL,0x7AL,0x7AL,255UL,0UL,255UL,0x02L,0x69L,0xA7L,249UL},{255UL,0x7AL,0x7AL,255UL,0UL,255UL,0x02L,0x69L,0xA7L,249UL},{255UL,0x7AL,0x7AL,255UL,0UL,255UL,0x02L,0x69L,0xA7L,249UL},{255UL,0x7AL,0x7AL,255UL,0UL,255UL,0x02L,0x69L,0xA7L,249UL}}};
                int32_t l_258 = 0L;
                int32_t l_263 = 6L;
                int32_t l_264 = 0x20CE1D5CL;
                int32_t l_265 = (-8L);
                int32_t l_266 = 1L;
                int32_t l_268 = 0x77188703L;
                int32_t l_269 = 0x0EBBB277L;
                int i, j, k;
                ++l_138[0][0][1];
                if (((safe_lshift_func_uint8_t_u_s(GROUP_DIVERGE(0, 1), ((l_112 = l_133[3]) <= (~(0x7CCFL && ((((safe_mul_func_uint8_t_u_u(p_1800->g_60, p_51)) , (((safe_sub_func_uint8_t_u_u(((p_1800->g_156 = ((safe_sub_func_int32_t_s_s((safe_rshift_func_uint16_t_u_u((((void*)0 == &p_50) && ((**l_106) = (-4L))), 9)), (safe_lshift_func_int16_t_s_s(l_129, ((((*l_155) = ((l_154[1][1][0] = l_63) != (void*)0)) != GROUP_DIVERGE(2, 1)) != (-3L)))))) > l_134)) , l_135), l_129)) & l_157[1][3][3]) < l_129)) , 0x59E358F534B39CDCL) <= FAKE_DIVERGE(p_1800->group_2_offset, get_group_id(2), 10))))))) & p_50))
                { /* block id: 39 */
                    int16_t *l_160 = (void*)0;
                    int16_t *l_161 = &l_133[3];
                    (*l_106) = func_64((((*l_161) = ((((l_137 ^= (p_50 , (*p_1800->g_59))) <= (safe_sub_func_uint64_t_u_u(l_129, l_112))) > (((p_1800->g_75 , (((p_51 <= (!0xF402L)) > ((p_51 && (p_1800->g_122 | 249UL)) >= FAKE_DIVERGE(p_1800->group_1_offset, get_group_id(1), 10))) >= p_51)) || p_1800->g_22) , p_1800->g_101)) | p_50)) ^ p_51), p_1800);
                    return l_162;
                }
                else
                { /* block id: 44 */
                    int32_t l_163 = (-2L);
                    int16_t *l_186 = &l_133[3];
                    for (p_1800->g_75 = 0; (p_1800->g_75 <= 5); p_1800->g_75 += 1)
                    { /* block id: 47 */
                        l_163 |= 0x1D4BFA96L;
                    }
                    (**l_106) = ((safe_rshift_func_uint8_t_u_s((safe_div_func_uint8_t_u_u(((((((p_1800->g_78 || l_168) || 0x24L) >= (((void*)0 == p_54) < (safe_add_func_int64_t_s_s(l_129, (safe_sub_func_uint32_t_u_u((safe_unary_minus_func_uint16_t_u((safe_add_func_uint16_t_u_u(((safe_mul_func_uint16_t_u_u((safe_add_func_int8_t_s_s((safe_mod_func_int64_t_s_s(p_51, (safe_mod_func_int32_t_s_s(l_135, (safe_lshift_func_int16_t_s_s(((((*l_186) = p_51) , 0x09CDAB9FL) , 0x3BEFL), p_1800->g_22)))))), p_51)), p_1800->g_75)) , 5UL), p_1800->g_156)))), (**l_106))))))) , 0xCAL) != l_138[0][0][6]) || 0x153D3BC77A5DD5B3L), (**l_106))), 4)) && 4294967295UL);
                    if ((!((+((((0x9AL || p_1800->g_101) ^ l_168) < ((((safe_add_func_uint16_t_u_u((l_129 = ((p_1800->g_128 = (safe_sub_func_int32_t_s_s((safe_mul_func_uint8_t_u_u(0x9FL, (p_1800->g_60 >= ((*l_186) = (((FAKE_DIVERGE(p_1800->global_1_offset, get_global_id(1), 10) , p_52) != (void*)0) != (+((l_163 <= (safe_sub_func_int16_t_s_s((0x374B80A73095CEBAL == p_1800->g_122), GROUP_DIVERGE(1, 1)))) <= p_51))))))), 0x4B175C3FL))) | 0x3FL)), 0x538CL)) , 0xCBF6C0B2D7C546D1L) != p_51) == l_157[1][3][3])) >= l_157[1][3][3])) != p_50)))
                    { /* block id: 55 */
                        uint32_t l_195 = 4294967295UL;
                        int32_t l_198 = 2L;
                        l_195--;
                        l_198 = 1L;
                    }
                    else
                    { /* block id: 58 */
                        int16_t l_207 = 0x4BC9L;
                        l_163 = ((*l_109) = (p_50 == (safe_mod_func_int64_t_s_s((GROUP_DIVERGE(1, 1) || (safe_lshift_func_int8_t_s_s(((*l_127) &= 0x3CL), (~(!(safe_sub_func_uint64_t_u_u(((safe_mod_func_uint32_t_u_u(((((-8L) >= ((&l_71[3][3] != (void*)0) | (((l_207 < ((((*l_186) = (l_163 <= 3UL)) | (((safe_lshift_func_int16_t_s_u((((((safe_lshift_func_uint16_t_u_u(((((p_51 > l_129) ^ p_1800->g_104) , p_1800->g_82) == l_212), p_50)) , p_50) && p_50) <= (-6L)) != l_207), 13)) & p_51) > p_50)) && l_157[1][1][7])) | l_213) != 0xA2894AC3L))) == p_50) , (*p_1800->g_59)), (-1L))) ^ 4294967295UL), 0x0198974C40A8F450L))))))), p_1800->g_122))));
                        (*l_109) |= 1L;
                    }
                }
                for (l_134 = 0; (l_134 <= (-13)); l_134 = safe_sub_func_int8_t_s_s(l_134, 2))
                { /* block id: 68 */
                    int64_t *l_223 = &p_1800->g_224;
                    uint8_t *l_227 = &l_157[1][3][3];
                    int32_t l_228[2];
                    int i;
                    for (i = 0; i < 2; i++)
                        l_228[i] = 1L;
                    (**l_106) |= (((p_51 , 0x371AC1D6L) | (+(safe_lshift_func_uint8_t_u_u((+p_1800->g_128), (safe_mod_func_uint8_t_u_u(((*l_121) = l_220[0]), ((safe_mod_func_uint8_t_u_u((((*l_223) = 3L) && 0x260467133BA4A937L), ((*l_227) = (safe_rshift_func_uint16_t_u_s(p_51, p_51))))) ^ ((((0x22DDA9A1L && 0x0A0B4F67L) < 0L) != FAKE_DIVERGE(p_1800->global_0_offset, get_global_id(0), 10)) , l_228[1])))))))) ^ 0UL);
                }
                for (p_50 = 0; (p_50 == 53); ++p_50)
                { /* block id: 76 */
                    uint64_t l_248[2];
                    int32_t l_261 = (-1L);
                    int i;
                    for (i = 0; i < 2; i++)
                        l_248[i] = 18446744073709551615UL;
                    (*l_109) = (safe_add_func_int32_t_s_s(((safe_rshift_func_int8_t_s_s((((*l_121) = (p_50 >= p_1800->g_104)) && (safe_lshift_func_uint16_t_u_s((safe_mul_func_uint16_t_u_u(p_50, l_239)), 11))), ((p_1800->g_240[1] != ((safe_sub_func_int8_t_s_s(p_1800->g_101, (safe_rshift_func_int16_t_s_u(0x78ADL, 5)))) , &p_1800->g_241)) >= FAKE_DIVERGE(p_1800->global_0_offset, get_global_id(0), 10)))) < ((void*)0 == (*p_1800->g_76))), l_157[1][3][3]));
                    (*l_108) = &p_1800->g_104;
                    for (l_134 = (-4); (l_134 == 8); l_134++)
                    { /* block id: 82 */
                        int8_t **l_254[8][7][4] = {{{&l_127,&l_253,(void*)0,&l_127},{&l_127,&l_253,(void*)0,&l_127},{&l_127,&l_253,(void*)0,&l_127},{&l_127,&l_253,(void*)0,&l_127},{&l_127,&l_253,(void*)0,&l_127},{&l_127,&l_253,(void*)0,&l_127},{&l_127,&l_253,(void*)0,&l_127}},{{&l_127,&l_253,(void*)0,&l_127},{&l_127,&l_253,(void*)0,&l_127},{&l_127,&l_253,(void*)0,&l_127},{&l_127,&l_253,(void*)0,&l_127},{&l_127,&l_253,(void*)0,&l_127},{&l_127,&l_253,(void*)0,&l_127},{&l_127,&l_253,(void*)0,&l_127}},{{&l_127,&l_253,(void*)0,&l_127},{&l_127,&l_253,(void*)0,&l_127},{&l_127,&l_253,(void*)0,&l_127},{&l_127,&l_253,(void*)0,&l_127},{&l_127,&l_253,(void*)0,&l_127},{&l_127,&l_253,(void*)0,&l_127},{&l_127,&l_253,(void*)0,&l_127}},{{&l_127,&l_253,(void*)0,&l_127},{&l_127,&l_253,(void*)0,&l_127},{&l_127,&l_253,(void*)0,&l_127},{&l_127,&l_253,(void*)0,&l_127},{&l_127,&l_253,(void*)0,&l_127},{&l_127,&l_253,(void*)0,&l_127},{&l_127,&l_253,(void*)0,&l_127}},{{&l_127,&l_253,(void*)0,&l_127},{&l_127,&l_253,(void*)0,&l_127},{&l_127,&l_253,(void*)0,&l_127},{&l_127,&l_253,(void*)0,&l_127},{&l_127,&l_253,(void*)0,&l_127},{&l_127,&l_253,(void*)0,&l_127},{&l_127,&l_253,(void*)0,&l_127}},{{&l_127,&l_253,(void*)0,&l_127},{&l_127,&l_253,(void*)0,&l_127},{&l_127,&l_253,(void*)0,&l_127},{&l_127,&l_253,(void*)0,&l_127},{&l_127,&l_253,(void*)0,&l_127},{&l_127,&l_253,(void*)0,&l_127},{&l_127,&l_253,(void*)0,&l_127}},{{&l_127,&l_253,(void*)0,&l_127},{&l_127,&l_253,(void*)0,&l_127},{&l_127,&l_253,(void*)0,&l_127},{&l_127,&l_253,(void*)0,&l_127},{&l_127,&l_253,(void*)0,&l_127},{&l_127,&l_253,(void*)0,&l_127},{&l_127,&l_253,(void*)0,&l_127}},{{&l_127,&l_253,(void*)0,&l_127},{&l_127,&l_253,(void*)0,&l_127},{&l_127,&l_253,(void*)0,&l_127},{&l_127,&l_253,(void*)0,&l_127},{&l_127,&l_253,(void*)0,&l_127},{&l_127,&l_253,(void*)0,&l_127},{&l_127,&l_253,(void*)0,&l_127}}};
                        int32_t l_260 = 1L;
                        int32_t l_262[10] = {0x7CEAAE32L,0x7CEAAE32L,0x7CEAAE32L,0x7CEAAE32L,0x7CEAAE32L,0x7CEAAE32L,0x7CEAAE32L,0x7CEAAE32L,0x7CEAAE32L,0x7CEAAE32L};
                        int i, j, k;
                        l_248[0]++;
                        (*l_109) = ((0xEA20BC5CL != (safe_add_func_uint64_t_u_u(p_50, (((l_253 = l_253) == (void*)0) == ((safe_lshift_func_int8_t_s_s(((*l_127) = (((((--l_270[0][0][3]) >= (((void*)0 != l_273) && l_268)) | l_129) & l_134) | 1UL)), 5)) == l_137))))) == l_168);
                    }
                }
            }
            else
            { /* block id: 90 */
                uint64_t l_274[8][4][8] = {{{0x308F0AD81E34F487L,0x4BFAF6BFF306726CL,0x85BDA2F7A7A2C9F2L,1UL,0x41B2535BE3E966DBL,9UL,9UL,0x41B2535BE3E966DBL},{0x308F0AD81E34F487L,0x4BFAF6BFF306726CL,0x85BDA2F7A7A2C9F2L,1UL,0x41B2535BE3E966DBL,9UL,9UL,0x41B2535BE3E966DBL},{0x308F0AD81E34F487L,0x4BFAF6BFF306726CL,0x85BDA2F7A7A2C9F2L,1UL,0x41B2535BE3E966DBL,9UL,9UL,0x41B2535BE3E966DBL},{0x308F0AD81E34F487L,0x4BFAF6BFF306726CL,0x85BDA2F7A7A2C9F2L,1UL,0x41B2535BE3E966DBL,9UL,9UL,0x41B2535BE3E966DBL}},{{0x308F0AD81E34F487L,0x4BFAF6BFF306726CL,0x85BDA2F7A7A2C9F2L,1UL,0x41B2535BE3E966DBL,9UL,9UL,0x41B2535BE3E966DBL},{0x308F0AD81E34F487L,0x4BFAF6BFF306726CL,0x85BDA2F7A7A2C9F2L,1UL,0x41B2535BE3E966DBL,9UL,9UL,0x41B2535BE3E966DBL},{0x308F0AD81E34F487L,0x4BFAF6BFF306726CL,0x85BDA2F7A7A2C9F2L,1UL,0x41B2535BE3E966DBL,9UL,9UL,0x41B2535BE3E966DBL},{0x308F0AD81E34F487L,0x4BFAF6BFF306726CL,0x85BDA2F7A7A2C9F2L,1UL,0x41B2535BE3E966DBL,9UL,9UL,0x41B2535BE3E966DBL}},{{0x308F0AD81E34F487L,0x4BFAF6BFF306726CL,0x85BDA2F7A7A2C9F2L,1UL,0x41B2535BE3E966DBL,9UL,9UL,0x41B2535BE3E966DBL},{0x308F0AD81E34F487L,0x4BFAF6BFF306726CL,0x85BDA2F7A7A2C9F2L,1UL,0x41B2535BE3E966DBL,9UL,9UL,0x41B2535BE3E966DBL},{0x308F0AD81E34F487L,0x4BFAF6BFF306726CL,0x85BDA2F7A7A2C9F2L,1UL,0x41B2535BE3E966DBL,9UL,9UL,0x41B2535BE3E966DBL},{0x308F0AD81E34F487L,0x4BFAF6BFF306726CL,0x85BDA2F7A7A2C9F2L,1UL,0x41B2535BE3E966DBL,9UL,9UL,0x41B2535BE3E966DBL}},{{0x308F0AD81E34F487L,0x4BFAF6BFF306726CL,0x85BDA2F7A7A2C9F2L,1UL,0x41B2535BE3E966DBL,9UL,9UL,0x41B2535BE3E966DBL},{0x308F0AD81E34F487L,0x4BFAF6BFF306726CL,0x85BDA2F7A7A2C9F2L,1UL,0x41B2535BE3E966DBL,9UL,9UL,0x41B2535BE3E966DBL},{0x308F0AD81E34F487L,0x4BFAF6BFF306726CL,0x85BDA2F7A7A2C9F2L,1UL,0x41B2535BE3E966DBL,9UL,9UL,0x41B2535BE3E966DBL},{0x308F0AD81E34F487L,0x4BFAF6BFF306726CL,0x85BDA2F7A7A2C9F2L,1UL,0x41B2535BE3E966DBL,9UL,9UL,0x41B2535BE3E966DBL}},{{0x308F0AD81E34F487L,0x4BFAF6BFF306726CL,0x85BDA2F7A7A2C9F2L,1UL,0x41B2535BE3E966DBL,9UL,9UL,0x41B2535BE3E966DBL},{0x308F0AD81E34F487L,0x4BFAF6BFF306726CL,0x85BDA2F7A7A2C9F2L,1UL,0x41B2535BE3E966DBL,9UL,9UL,0x41B2535BE3E966DBL},{0x308F0AD81E34F487L,0x4BFAF6BFF306726CL,0x85BDA2F7A7A2C9F2L,1UL,0x41B2535BE3E966DBL,9UL,9UL,0x41B2535BE3E966DBL},{0x308F0AD81E34F487L,0x4BFAF6BFF306726CL,0x85BDA2F7A7A2C9F2L,1UL,0x41B2535BE3E966DBL,9UL,9UL,0x41B2535BE3E966DBL}},{{0x308F0AD81E34F487L,0x4BFAF6BFF306726CL,0x85BDA2F7A7A2C9F2L,1UL,0x41B2535BE3E966DBL,9UL,9UL,0x41B2535BE3E966DBL},{0x308F0AD81E34F487L,0x4BFAF6BFF306726CL,0x85BDA2F7A7A2C9F2L,1UL,0x41B2535BE3E966DBL,9UL,9UL,0x41B2535BE3E966DBL},{0x308F0AD81E34F487L,0x4BFAF6BFF306726CL,0x85BDA2F7A7A2C9F2L,1UL,0x41B2535BE3E966DBL,9UL,9UL,0x41B2535BE3E966DBL},{0x308F0AD81E34F487L,0x4BFAF6BFF306726CL,0x85BDA2F7A7A2C9F2L,1UL,0x41B2535BE3E966DBL,9UL,9UL,0x41B2535BE3E966DBL}},{{0x308F0AD81E34F487L,0x4BFAF6BFF306726CL,0x85BDA2F7A7A2C9F2L,1UL,0x41B2535BE3E966DBL,9UL,9UL,0x41B2535BE3E966DBL},{0x308F0AD81E34F487L,0x4BFAF6BFF306726CL,0x85BDA2F7A7A2C9F2L,1UL,0x41B2535BE3E966DBL,9UL,9UL,0x41B2535BE3E966DBL},{0x308F0AD81E34F487L,0x4BFAF6BFF306726CL,0x85BDA2F7A7A2C9F2L,1UL,0x41B2535BE3E966DBL,9UL,9UL,0x41B2535BE3E966DBL},{0x308F0AD81E34F487L,0x4BFAF6BFF306726CL,0x85BDA2F7A7A2C9F2L,1UL,0x41B2535BE3E966DBL,9UL,9UL,0x41B2535BE3E966DBL}},{{0x308F0AD81E34F487L,0x4BFAF6BFF306726CL,0x85BDA2F7A7A2C9F2L,1UL,0x41B2535BE3E966DBL,9UL,9UL,0x41B2535BE3E966DBL},{0x308F0AD81E34F487L,0x4BFAF6BFF306726CL,0x85BDA2F7A7A2C9F2L,1UL,0x41B2535BE3E966DBL,9UL,9UL,0x41B2535BE3E966DBL},{0x308F0AD81E34F487L,0x4BFAF6BFF306726CL,0x85BDA2F7A7A2C9F2L,1UL,0x41B2535BE3E966DBL,9UL,9UL,0x41B2535BE3E966DBL},{0x308F0AD81E34F487L,0x4BFAF6BFF306726CL,0x85BDA2F7A7A2C9F2L,1UL,0x41B2535BE3E966DBL,9UL,9UL,0x41B2535BE3E966DBL}}};
                uint64_t **l_296[10] = {&p_1800->g_294[0],&p_1800->g_294[0],&p_1800->g_294[0],&p_1800->g_294[0],&p_1800->g_294[0],&p_1800->g_294[0],&p_1800->g_294[0],&p_1800->g_294[0],&p_1800->g_294[0],&p_1800->g_294[0]};
                int16_t *l_302[6];
                int64_t *l_303[2];
                int32_t l_304[3][8][2] = {{{1L,0x63E7ED85L},{1L,0x63E7ED85L},{1L,0x63E7ED85L},{1L,0x63E7ED85L},{1L,0x63E7ED85L},{1L,0x63E7ED85L},{1L,0x63E7ED85L},{1L,0x63E7ED85L}},{{1L,0x63E7ED85L},{1L,0x63E7ED85L},{1L,0x63E7ED85L},{1L,0x63E7ED85L},{1L,0x63E7ED85L},{1L,0x63E7ED85L},{1L,0x63E7ED85L},{1L,0x63E7ED85L}},{{1L,0x63E7ED85L},{1L,0x63E7ED85L},{1L,0x63E7ED85L},{1L,0x63E7ED85L},{1L,0x63E7ED85L},{1L,0x63E7ED85L},{1L,0x63E7ED85L},{1L,0x63E7ED85L}}};
                int i, j, k;
                for (i = 0; i < 6; i++)
                    l_302[i] = &p_1800->g_101;
                for (i = 0; i < 2; i++)
                    l_303[i] = &p_1800->g_224;
                l_274[0][0][7]--;
                (*l_109) = l_274[0][0][7];
                if ((atomic_inc(&p_1800->g_atomic_input[45 * get_linear_group_id() + 41]) == 1))
                { /* block id: 94 */
                    int32_t l_277 = 6L;
                    int64_t l_290 = 0x3D37BD4C383BE513L;
                    for (l_277 = 27; (l_277 == 10); l_277 = safe_sub_func_int32_t_s_s(l_277, 1))
                    { /* block id: 97 */
                        uint32_t l_280 = 1UL;
                        int32_t *l_281[3];
                        int32_t l_283 = (-6L);
                        int32_t *l_282[7] = {&l_283,&l_283,&l_283,&l_283,&l_283,&l_283,&l_283};
                        int32_t *l_284 = &l_283;
                        uint16_t l_285 = 65535UL;
                        int32_t *l_286 = &l_283;
                        int32_t *l_287 = &l_283;
                        uint8_t l_288 = 255UL;
                        int32_t l_289 = 1L;
                        int i;
                        for (i = 0; i < 3; i++)
                            l_281[i] = (void*)0;
                        l_284 = (l_282[2] = (l_280 , l_281[0]));
                        l_286 = (l_285 , (void*)0);
                        l_287 = (void*)0;
                        l_289 = l_288;
                    }
                    l_290 ^= 1L;
                    unsigned int result = 0;
                    result += l_277;
                    result += l_290;
                    atomic_add(&p_1800->g_special_values[45 * get_linear_group_id() + 41], result);
                }
                else
                { /* block id: 105 */
                    (1 + 1);
                }
                l_304[1][3][1] ^= (((**l_106) = ((safe_div_func_int16_t_s_s((((p_1800->g_104 == (p_1800->g_82 && (0x03L < ((((*p_54) &= ((void*)0 != &p_1800->g_82)) , l_293[3]) == (l_297 = p_1800->g_294[1]))))) >= (safe_add_func_int8_t_s_s(((~(p_1800->g_101 = ((((safe_rshift_func_int8_t_s_u((p_51 < (-6L)), l_274[0][0][7])) >= 0x5CAE9CAECE9F2422L) , p_50) , p_51))) != l_220[0]), 0x51L))) <= p_1800->g_295), l_220[0])) , p_1800->g_156)) | l_274[7][3][5]);
            }
            (**l_108) = (p_1800->g_305 == ((*l_306) = l_253));
            for (p_51 = 0; (p_51 < 12); ++p_51)
            { /* block id: 118 */
                uint8_t *l_319 = &p_1800->g_122;
                int32_t l_321 = 0x485D9A51L;
                if ((safe_div_func_uint32_t_u_u(0x7E6BF6D6L, (safe_sub_func_int16_t_s_s((((0x3B5EL < p_1800->g_75) , 0x26L) || p_50), ((((safe_sub_func_uint32_t_u_u(((p_1800->g_101 || (l_112 = p_51)) >= ((*l_319) = (p_1800->g_156 == (safe_mod_func_uint16_t_u_u((safe_mod_func_uint64_t_u_u((8UL ^ (-8L)), p_51)), p_1800->g_78))))), p_50)) | (-6L)) > p_1800->g_241) >= l_320))))))
                { /* block id: 121 */
                    if (l_321)
                        break;
                }
                else
                { /* block id: 123 */
                    int32_t l_322 = 0x47356937L;
                    if (l_322)
                        break;
                    if (p_51)
                        break;
                }
                if ((atomic_inc(&p_1800->g_atomic_input[45 * get_linear_group_id() + 22]) == 2))
                { /* block id: 128 */
                    uint32_t l_323 = 4294967295UL;
                    uint64_t l_324[6][3][5] = {{{0xFE764DF80EDAA46BL,0xB48CEB18DA397D05L,18446744073709551613UL,0x2D43CEBE816FCF33L,0UL},{0xFE764DF80EDAA46BL,0xB48CEB18DA397D05L,18446744073709551613UL,0x2D43CEBE816FCF33L,0UL},{0xFE764DF80EDAA46BL,0xB48CEB18DA397D05L,18446744073709551613UL,0x2D43CEBE816FCF33L,0UL}},{{0xFE764DF80EDAA46BL,0xB48CEB18DA397D05L,18446744073709551613UL,0x2D43CEBE816FCF33L,0UL},{0xFE764DF80EDAA46BL,0xB48CEB18DA397D05L,18446744073709551613UL,0x2D43CEBE816FCF33L,0UL},{0xFE764DF80EDAA46BL,0xB48CEB18DA397D05L,18446744073709551613UL,0x2D43CEBE816FCF33L,0UL}},{{0xFE764DF80EDAA46BL,0xB48CEB18DA397D05L,18446744073709551613UL,0x2D43CEBE816FCF33L,0UL},{0xFE764DF80EDAA46BL,0xB48CEB18DA397D05L,18446744073709551613UL,0x2D43CEBE816FCF33L,0UL},{0xFE764DF80EDAA46BL,0xB48CEB18DA397D05L,18446744073709551613UL,0x2D43CEBE816FCF33L,0UL}},{{0xFE764DF80EDAA46BL,0xB48CEB18DA397D05L,18446744073709551613UL,0x2D43CEBE816FCF33L,0UL},{0xFE764DF80EDAA46BL,0xB48CEB18DA397D05L,18446744073709551613UL,0x2D43CEBE816FCF33L,0UL},{0xFE764DF80EDAA46BL,0xB48CEB18DA397D05L,18446744073709551613UL,0x2D43CEBE816FCF33L,0UL}},{{0xFE764DF80EDAA46BL,0xB48CEB18DA397D05L,18446744073709551613UL,0x2D43CEBE816FCF33L,0UL},{0xFE764DF80EDAA46BL,0xB48CEB18DA397D05L,18446744073709551613UL,0x2D43CEBE816FCF33L,0UL},{0xFE764DF80EDAA46BL,0xB48CEB18DA397D05L,18446744073709551613UL,0x2D43CEBE816FCF33L,0UL}},{{0xFE764DF80EDAA46BL,0xB48CEB18DA397D05L,18446744073709551613UL,0x2D43CEBE816FCF33L,0UL},{0xFE764DF80EDAA46BL,0xB48CEB18DA397D05L,18446744073709551613UL,0x2D43CEBE816FCF33L,0UL},{0xFE764DF80EDAA46BL,0xB48CEB18DA397D05L,18446744073709551613UL,0x2D43CEBE816FCF33L,0UL}}};
                    int8_t l_325[5] = {0x07L,0x07L,0x07L,0x07L,0x07L};
                    int32_t l_327 = 0x1287674DL;
                    int32_t *l_326 = &l_327;
                    int32_t l_328[7] = {(-2L),0x4D84C3E9L,(-2L),(-2L),0x4D84C3E9L,(-2L),(-2L)};
                    int16_t l_329 = 0x6CEAL;
                    int i, j, k;
                    l_326 = (l_323 , (l_324[5][1][2] , (l_325[4] , l_326)));
                    l_329 = l_328[2];
                    unsigned int result = 0;
                    result += l_323;
                    int l_324_i0, l_324_i1, l_324_i2;
                    for (l_324_i0 = 0; l_324_i0 < 6; l_324_i0++) {
                        for (l_324_i1 = 0; l_324_i1 < 3; l_324_i1++) {
                            for (l_324_i2 = 0; l_324_i2 < 5; l_324_i2++) {
                                result += l_324[l_324_i0][l_324_i1][l_324_i2];
                            }
                        }
                    }
                    int l_325_i0;
                    for (l_325_i0 = 0; l_325_i0 < 5; l_325_i0++) {
                        result += l_325[l_325_i0];
                    }
                    result += l_327;
                    int l_328_i0;
                    for (l_328_i0 = 0; l_328_i0 < 7; l_328_i0++) {
                        result += l_328[l_328_i0];
                    }
                    result += l_329;
                    atomic_add(&p_1800->g_special_values[45 * get_linear_group_id() + 22], result);
                }
                else
                { /* block id: 131 */
                    (1 + 1);
                }
            }
            return l_220[0];
        }
        else
        { /* block id: 136 */
            uint32_t l_340[3][1][4] = {{{0x210B8C55L,0x210B8C55L,0x210B8C55L,0x210B8C55L}},{{0x210B8C55L,0x210B8C55L,0x210B8C55L,0x210B8C55L}},{{0x210B8C55L,0x210B8C55L,0x210B8C55L,0x210B8C55L}}};
            uint32_t l_353[8] = {0x153D0740L,0x153D0740L,0x153D0740L,0x153D0740L,0x153D0740L,0x153D0740L,0x153D0740L,0x153D0740L};
            int64_t *l_364 = &l_320;
            uint8_t l_365[10][7] = {{0x78L,9UL,0x78L,0x78L,9UL,0x78L,0x78L},{0x78L,9UL,0x78L,0x78L,9UL,0x78L,0x78L},{0x78L,9UL,0x78L,0x78L,9UL,0x78L,0x78L},{0x78L,9UL,0x78L,0x78L,9UL,0x78L,0x78L},{0x78L,9UL,0x78L,0x78L,9UL,0x78L,0x78L},{0x78L,9UL,0x78L,0x78L,9UL,0x78L,0x78L},{0x78L,9UL,0x78L,0x78L,9UL,0x78L,0x78L},{0x78L,9UL,0x78L,0x78L,9UL,0x78L,0x78L},{0x78L,9UL,0x78L,0x78L,9UL,0x78L,0x78L},{0x78L,9UL,0x78L,0x78L,9UL,0x78L,0x78L}};
            int32_t l_367 = 0x78A158E6L;
            int i, j, k;
            l_367 = ((p_50 || GROUP_DIVERGE(0, 1)) == (safe_add_func_int64_t_s_s((safe_mul_func_int16_t_s_s(((~(+(safe_sub_func_uint8_t_u_u(((((**l_108) = p_50) >= 9L) >= (safe_rshift_func_int8_t_s_s((FAKE_DIVERGE(p_1800->group_2_offset, get_group_id(2), 10) ^ ((*l_364) = ((safe_add_func_uint16_t_u_u(l_340[2][0][0], ((safe_rshift_func_uint8_t_u_u((+((safe_mul_func_int16_t_s_s((safe_mul_func_int16_t_s_s(p_51, ((GROUP_DIVERGE(2, 1) , (safe_mod_func_int8_t_s_s((safe_mod_func_uint64_t_u_u(l_340[2][0][0], (safe_add_func_uint64_t_u_u(((FAKE_DIVERGE(p_1800->local_0_offset, get_local_id(0), 10) , (((l_353[7] <= (safe_lshift_func_uint8_t_u_s((safe_mod_func_uint16_t_u_u(((safe_add_func_int8_t_s_s((((safe_div_func_uint16_t_u_u(((((p_51 , ((p_50 & 0x74DE0BBEL) , &l_293[0])) != &l_293[3]) , l_340[2][0][0]) == l_362[4][0]), p_1800->g_128)) , p_50) <= p_50), p_1800->g_122)) != p_51), 0x170BL)), 0))) == p_1800->g_60) != FAKE_DIVERGE(p_1800->group_1_offset, get_group_id(1), 10))) < p_51), 0x66F19421CC5B271EL)))), (-1L)))) != p_51))), p_50)) , FAKE_DIVERGE(p_1800->local_2_offset, get_local_id(2), 10))), l_363)) == p_51))) && p_1800->g_241))), 6))), p_50)))) != l_365[6][0]), 1UL)), l_366)));
            (*l_109) = 0x3E5BDCAAL;
            return p_51;
        }
    }
}


/* ------------------------------------------ */
/* 
 * reads : p_1800->g_78 p_1800->g_75 p_1800->g_101 p_1800->g_59 p_1800->g_60
 * writes: p_1800->g_101
 */
uint32_t * func_64(uint64_t  p_65, struct S0 * p_1800)
{ /* block id: 15 */
    int32_t *l_88 = &p_1800->g_75;
    int16_t *l_100 = &p_1800->g_101;
    int32_t l_102 = 0x1ECC885CL;
    int32_t *l_103[9][2] = {{(void*)0,&p_1800->g_104},{(void*)0,&p_1800->g_104},{(void*)0,&p_1800->g_104},{(void*)0,&p_1800->g_104},{(void*)0,&p_1800->g_104},{(void*)0,&p_1800->g_104},{(void*)0,&p_1800->g_104},{(void*)0,&p_1800->g_104},{(void*)0,&p_1800->g_104}};
    uint64_t l_105[3];
    int i, j;
    for (i = 0; i < 3; i++)
        l_105[i] = 4UL;
    l_105[1] &= (safe_lshift_func_uint8_t_u_u((p_1800->g_78 , p_65), ((safe_mul_func_uint8_t_u_u(p_65, (l_88 == l_88))) , ((((safe_mod_func_uint16_t_u_u((((safe_sub_func_int8_t_s_s(((*l_88) > (safe_unary_minus_func_int8_t_s(((safe_rshift_func_int16_t_s_u(((*l_100) ^= ((((safe_mul_func_int16_t_s_s((0UL < ((*l_88) , ((safe_mul_func_int8_t_s_s(p_65, p_65)) <= 0x2BL))), p_65)) != p_65) >= GROUP_DIVERGE(0, 1)) , p_1800->g_75)), p_65)) , 0x51L)))), p_1800->g_78)) == l_102) & p_65), p_65)) , p_65) , (*p_1800->g_59)) < (*p_1800->g_59)))));
    return l_88;
}


/* ------------------------------------------ */
/* 
 * reads : p_1800->g_75 p_1800->g_76
 * writes: p_1800->g_75 p_1800->g_76
 */
uint64_t  func_68(uint16_t * p_69, uint32_t * p_70, struct S0 * p_1800)
{ /* block id: 8 */
    uint32_t l_72 = 8UL;
    int32_t *l_74 = &p_1800->g_75;
    (*l_74) &= l_72;
    p_1800->g_76 = p_1800->g_76;
    return (*l_74);
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[45];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 45; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[45];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 45; i++)
            l_special_values[i] = 0;
    struct S0 c_1801;
    struct S0* p_1800 = &c_1801;
    struct S0 c_1802 = {
        0x9E9DL, // p_1800->g_22
        65527UL, // p_1800->g_56
        0x70E74BB9L, // p_1800->g_60
        &p_1800->g_60, // p_1800->g_59
        {(void*)0,(void*)0,(void*)0}, // p_1800->g_73
        (-9L), // p_1800->g_75
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_1800->g_77
        &p_1800->g_77[2], // p_1800->g_76
        0xEEB3BD83L, // p_1800->g_78
        0x0576189EL, // p_1800->g_82
        0x13EAL, // p_1800->g_101
        0L, // p_1800->g_104
        0xD1L, // p_1800->g_122
        4L, // p_1800->g_128
        0x44F2F6EFL, // p_1800->g_156
        (-1L), // p_1800->g_224
        6UL, // p_1800->g_241
        {&p_1800->g_241,&p_1800->g_241}, // p_1800->g_240
        18446744073709551615UL, // p_1800->g_295
        {&p_1800->g_295,&p_1800->g_295,&p_1800->g_295}, // p_1800->g_294
        (void*)0, // p_1800->g_305
        4294967295UL, // p_1800->g_369
        {{{0xD7B26AE7L,7UL,0x7228C764L,0UL,4294967290UL,4294967294UL},{0xD7B26AE7L,7UL,0x7228C764L,0UL,4294967290UL,4294967294UL},{0xD7B26AE7L,7UL,0x7228C764L,0UL,4294967290UL,4294967294UL},{0xD7B26AE7L,7UL,0x7228C764L,0UL,4294967290UL,4294967294UL}},{{0xD7B26AE7L,7UL,0x7228C764L,0UL,4294967290UL,4294967294UL},{0xD7B26AE7L,7UL,0x7228C764L,0UL,4294967290UL,4294967294UL},{0xD7B26AE7L,7UL,0x7228C764L,0UL,4294967290UL,4294967294UL},{0xD7B26AE7L,7UL,0x7228C764L,0UL,4294967290UL,4294967294UL}},{{0xD7B26AE7L,7UL,0x7228C764L,0UL,4294967290UL,4294967294UL},{0xD7B26AE7L,7UL,0x7228C764L,0UL,4294967290UL,4294967294UL},{0xD7B26AE7L,7UL,0x7228C764L,0UL,4294967290UL,4294967294UL},{0xD7B26AE7L,7UL,0x7228C764L,0UL,4294967290UL,4294967294UL}},{{0xD7B26AE7L,7UL,0x7228C764L,0UL,4294967290UL,4294967294UL},{0xD7B26AE7L,7UL,0x7228C764L,0UL,4294967290UL,4294967294UL},{0xD7B26AE7L,7UL,0x7228C764L,0UL,4294967290UL,4294967294UL},{0xD7B26AE7L,7UL,0x7228C764L,0UL,4294967290UL,4294967294UL}},{{0xD7B26AE7L,7UL,0x7228C764L,0UL,4294967290UL,4294967294UL},{0xD7B26AE7L,7UL,0x7228C764L,0UL,4294967290UL,4294967294UL},{0xD7B26AE7L,7UL,0x7228C764L,0UL,4294967290UL,4294967294UL},{0xD7B26AE7L,7UL,0x7228C764L,0UL,4294967290UL,4294967294UL}},{{0xD7B26AE7L,7UL,0x7228C764L,0UL,4294967290UL,4294967294UL},{0xD7B26AE7L,7UL,0x7228C764L,0UL,4294967290UL,4294967294UL},{0xD7B26AE7L,7UL,0x7228C764L,0UL,4294967290UL,4294967294UL},{0xD7B26AE7L,7UL,0x7228C764L,0UL,4294967290UL,4294967294UL}},{{0xD7B26AE7L,7UL,0x7228C764L,0UL,4294967290UL,4294967294UL},{0xD7B26AE7L,7UL,0x7228C764L,0UL,4294967290UL,4294967294UL},{0xD7B26AE7L,7UL,0x7228C764L,0UL,4294967290UL,4294967294UL},{0xD7B26AE7L,7UL,0x7228C764L,0UL,4294967290UL,4294967294UL}},{{0xD7B26AE7L,7UL,0x7228C764L,0UL,4294967290UL,4294967294UL},{0xD7B26AE7L,7UL,0x7228C764L,0UL,4294967290UL,4294967294UL},{0xD7B26AE7L,7UL,0x7228C764L,0UL,4294967290UL,4294967294UL},{0xD7B26AE7L,7UL,0x7228C764L,0UL,4294967290UL,4294967294UL}},{{0xD7B26AE7L,7UL,0x7228C764L,0UL,4294967290UL,4294967294UL},{0xD7B26AE7L,7UL,0x7228C764L,0UL,4294967290UL,4294967294UL},{0xD7B26AE7L,7UL,0x7228C764L,0UL,4294967290UL,4294967294UL},{0xD7B26AE7L,7UL,0x7228C764L,0UL,4294967290UL,4294967294UL}},{{0xD7B26AE7L,7UL,0x7228C764L,0UL,4294967290UL,4294967294UL},{0xD7B26AE7L,7UL,0x7228C764L,0UL,4294967290UL,4294967294UL},{0xD7B26AE7L,7UL,0x7228C764L,0UL,4294967290UL,4294967294UL},{0xD7B26AE7L,7UL,0x7228C764L,0UL,4294967290UL,4294967294UL}}}, // p_1800->g_370
        0xD5E89899L, // p_1800->g_371
        {4294967288UL,1UL,4294967288UL,4294967288UL,1UL,4294967288UL}, // p_1800->g_372
        {0x539AAE6CL,0x539AAE6CL,0x539AAE6CL,0x539AAE6CL,0x539AAE6CL,0x539AAE6CL,0x539AAE6CL}, // p_1800->g_373
        {{{0x89A9F81FL,0x89A9F81FL,0x89A9F81FL}},{{0x89A9F81FL,0x89A9F81FL,0x89A9F81FL}},{{0x89A9F81FL,0x89A9F81FL,0x89A9F81FL}}}, // p_1800->g_374
        1UL, // p_1800->g_375
        0x3A10A6D1L, // p_1800->g_376
        0x12B29C78L, // p_1800->g_377
        0xD8DBAC78L, // p_1800->g_378
        {0xEBBADC44L}, // p_1800->g_379
        4294967292UL, // p_1800->g_380
        {{{0UL,0UL,0UL,0UL,0UL}},{{0UL,0UL,0UL,0UL,0UL}}}, // p_1800->g_381
        0x7C920541L, // p_1800->g_382
        0UL, // p_1800->g_383
        0x1D715F21L, // p_1800->g_384
        0xBA088D73L, // p_1800->g_385
        0x2E1E5BECL, // p_1800->g_386
        1UL, // p_1800->g_387
        0x7F6E0C2EL, // p_1800->g_388
        0xC9ADC35CL, // p_1800->g_389
        4294967295UL, // p_1800->g_390
        4294967293UL, // p_1800->g_391
        4294967295UL, // p_1800->g_392
        1UL, // p_1800->g_393
        0xDE2AF379L, // p_1800->g_394
        0xE00F0B3DL, // p_1800->g_395
        4UL, // p_1800->g_396
        0xF5FCD8A2L, // p_1800->g_397
        1UL, // p_1800->g_398
        3UL, // p_1800->g_399
        4294967295UL, // p_1800->g_400
        4294967289UL, // p_1800->g_401
        {{{&p_1800->g_399,(void*)0,(void*)0},{&p_1800->g_399,(void*)0,(void*)0},{&p_1800->g_399,(void*)0,(void*)0},{&p_1800->g_399,(void*)0,(void*)0},{&p_1800->g_399,(void*)0,(void*)0},{&p_1800->g_399,(void*)0,(void*)0},{&p_1800->g_399,(void*)0,(void*)0},{&p_1800->g_399,(void*)0,(void*)0}},{{&p_1800->g_399,(void*)0,(void*)0},{&p_1800->g_399,(void*)0,(void*)0},{&p_1800->g_399,(void*)0,(void*)0},{&p_1800->g_399,(void*)0,(void*)0},{&p_1800->g_399,(void*)0,(void*)0},{&p_1800->g_399,(void*)0,(void*)0},{&p_1800->g_399,(void*)0,(void*)0},{&p_1800->g_399,(void*)0,(void*)0}},{{&p_1800->g_399,(void*)0,(void*)0},{&p_1800->g_399,(void*)0,(void*)0},{&p_1800->g_399,(void*)0,(void*)0},{&p_1800->g_399,(void*)0,(void*)0},{&p_1800->g_399,(void*)0,(void*)0},{&p_1800->g_399,(void*)0,(void*)0},{&p_1800->g_399,(void*)0,(void*)0},{&p_1800->g_399,(void*)0,(void*)0}},{{&p_1800->g_399,(void*)0,(void*)0},{&p_1800->g_399,(void*)0,(void*)0},{&p_1800->g_399,(void*)0,(void*)0},{&p_1800->g_399,(void*)0,(void*)0},{&p_1800->g_399,(void*)0,(void*)0},{&p_1800->g_399,(void*)0,(void*)0},{&p_1800->g_399,(void*)0,(void*)0},{&p_1800->g_399,(void*)0,(void*)0}},{{&p_1800->g_399,(void*)0,(void*)0},{&p_1800->g_399,(void*)0,(void*)0},{&p_1800->g_399,(void*)0,(void*)0},{&p_1800->g_399,(void*)0,(void*)0},{&p_1800->g_399,(void*)0,(void*)0},{&p_1800->g_399,(void*)0,(void*)0},{&p_1800->g_399,(void*)0,(void*)0},{&p_1800->g_399,(void*)0,(void*)0}},{{&p_1800->g_399,(void*)0,(void*)0},{&p_1800->g_399,(void*)0,(void*)0},{&p_1800->g_399,(void*)0,(void*)0},{&p_1800->g_399,(void*)0,(void*)0},{&p_1800->g_399,(void*)0,(void*)0},{&p_1800->g_399,(void*)0,(void*)0},{&p_1800->g_399,(void*)0,(void*)0},{&p_1800->g_399,(void*)0,(void*)0}},{{&p_1800->g_399,(void*)0,(void*)0},{&p_1800->g_399,(void*)0,(void*)0},{&p_1800->g_399,(void*)0,(void*)0},{&p_1800->g_399,(void*)0,(void*)0},{&p_1800->g_399,(void*)0,(void*)0},{&p_1800->g_399,(void*)0,(void*)0},{&p_1800->g_399,(void*)0,(void*)0},{&p_1800->g_399,(void*)0,(void*)0}},{{&p_1800->g_399,(void*)0,(void*)0},{&p_1800->g_399,(void*)0,(void*)0},{&p_1800->g_399,(void*)0,(void*)0},{&p_1800->g_399,(void*)0,(void*)0},{&p_1800->g_399,(void*)0,(void*)0},{&p_1800->g_399,(void*)0,(void*)0},{&p_1800->g_399,(void*)0,(void*)0},{&p_1800->g_399,(void*)0,(void*)0}},{{&p_1800->g_399,(void*)0,(void*)0},{&p_1800->g_399,(void*)0,(void*)0},{&p_1800->g_399,(void*)0,(void*)0},{&p_1800->g_399,(void*)0,(void*)0},{&p_1800->g_399,(void*)0,(void*)0},{&p_1800->g_399,(void*)0,(void*)0},{&p_1800->g_399,(void*)0,(void*)0},{&p_1800->g_399,(void*)0,(void*)0}},{{&p_1800->g_399,(void*)0,(void*)0},{&p_1800->g_399,(void*)0,(void*)0},{&p_1800->g_399,(void*)0,(void*)0},{&p_1800->g_399,(void*)0,(void*)0},{&p_1800->g_399,(void*)0,(void*)0},{&p_1800->g_399,(void*)0,(void*)0},{&p_1800->g_399,(void*)0,(void*)0},{&p_1800->g_399,(void*)0,(void*)0}}}, // p_1800->g_368
        0x581CB359L, // p_1800->g_403
        &p_1800->g_403, // p_1800->g_402
        0x506C4DCA65F81735L, // p_1800->g_408
        (-8L), // p_1800->g_435
        {0x35L,0x35L}, // p_1800->g_480
        &p_1800->g_75, // p_1800->g_488
        &p_1800->g_435, // p_1800->g_584
        (void*)0, // p_1800->g_595
        &p_1800->g_75, // p_1800->g_597
        0L, // p_1800->g_635
        {&p_1800->g_104,&p_1800->g_435,&p_1800->g_104,&p_1800->g_104,&p_1800->g_435,&p_1800->g_104,&p_1800->g_104,&p_1800->g_435,&p_1800->g_104}, // p_1800->g_655
        &p_1800->g_655[0], // p_1800->g_654
        {{&p_1800->g_480[1],&p_1800->g_480[1],&p_1800->g_480[1],&p_1800->g_480[1],&p_1800->g_480[1],&p_1800->g_480[1]},{&p_1800->g_480[1],&p_1800->g_480[1],&p_1800->g_480[1],&p_1800->g_480[1],&p_1800->g_480[1],&p_1800->g_480[1]},{&p_1800->g_480[1],&p_1800->g_480[1],&p_1800->g_480[1],&p_1800->g_480[1],&p_1800->g_480[1],&p_1800->g_480[1]},{&p_1800->g_480[1],&p_1800->g_480[1],&p_1800->g_480[1],&p_1800->g_480[1],&p_1800->g_480[1],&p_1800->g_480[1]},{&p_1800->g_480[1],&p_1800->g_480[1],&p_1800->g_480[1],&p_1800->g_480[1],&p_1800->g_480[1],&p_1800->g_480[1]},{&p_1800->g_480[1],&p_1800->g_480[1],&p_1800->g_480[1],&p_1800->g_480[1],&p_1800->g_480[1],&p_1800->g_480[1]},{&p_1800->g_480[1],&p_1800->g_480[1],&p_1800->g_480[1],&p_1800->g_480[1],&p_1800->g_480[1],&p_1800->g_480[1]},{&p_1800->g_480[1],&p_1800->g_480[1],&p_1800->g_480[1],&p_1800->g_480[1],&p_1800->g_480[1],&p_1800->g_480[1]},{&p_1800->g_480[1],&p_1800->g_480[1],&p_1800->g_480[1],&p_1800->g_480[1],&p_1800->g_480[1],&p_1800->g_480[1]}}, // p_1800->g_722
        &p_1800->g_722[7][1], // p_1800->g_721
        (void*)0, // p_1800->g_729
        &p_1800->g_729, // p_1800->g_728
        0x47963822965BFE96L, // p_1800->g_784
        (void*)0, // p_1800->g_786
        &p_1800->g_402, // p_1800->g_824
        &p_1800->g_824, // p_1800->g_823
        1UL, // p_1800->g_869
        &p_1800->g_869, // p_1800->g_868
        &p_1800->g_868, // p_1800->g_867
        0UL, // p_1800->g_887
        (void*)0, // p_1800->g_936
        {{&p_1800->g_655[2],&p_1800->g_655[7],&p_1800->g_655[7],&p_1800->g_655[2],&p_1800->g_655[2],&p_1800->g_655[7],&p_1800->g_655[7],&p_1800->g_655[2]},{&p_1800->g_655[2],&p_1800->g_655[7],&p_1800->g_655[7],&p_1800->g_655[2],&p_1800->g_655[2],&p_1800->g_655[7],&p_1800->g_655[7],&p_1800->g_655[2]},{&p_1800->g_655[2],&p_1800->g_655[7],&p_1800->g_655[7],&p_1800->g_655[2],&p_1800->g_655[2],&p_1800->g_655[7],&p_1800->g_655[7],&p_1800->g_655[2]}}, // p_1800->g_944
        (void*)0, // p_1800->g_945
        0UL, // p_1800->g_975
        0x85B9FF09L, // p_1800->g_1006
        &p_1800->g_435, // p_1800->g_1096
        (-1L), // p_1800->g_1102
        &p_1800->g_655[0], // p_1800->g_1149
        0x6134C351L, // p_1800->g_1153
        {&p_1800->g_655[8],&p_1800->g_655[8]}, // p_1800->g_1189
        &p_1800->g_655[0], // p_1800->g_1190
        (void*)0, // p_1800->g_1191
        (void*)0, // p_1800->g_1233
        (void*)0, // p_1800->g_1246
        &p_1800->g_655[0], // p_1800->g_1247
        (-4L), // p_1800->g_1250
        {&p_1800->g_101,&p_1800->g_101}, // p_1800->g_1356
        &p_1800->g_1356[0], // p_1800->g_1355
        &p_1800->g_655[0], // p_1800->g_1357
        0L, // p_1800->g_1410
        (-1L), // p_1800->g_1412
        {{&p_1800->g_75,&p_1800->g_435},{&p_1800->g_75,&p_1800->g_435},{&p_1800->g_75,&p_1800->g_435},{&p_1800->g_75,&p_1800->g_435}}, // p_1800->g_1512
        &p_1800->g_655[0], // p_1800->g_1534
        1UL, // p_1800->g_1584
        (void*)0, // p_1800->g_1603
        (void*)0, // p_1800->g_1604
        (void*)0, // p_1800->g_1605
        &p_1800->g_104, // p_1800->g_1607
        255UL, // p_1800->g_1657
        {{&p_1800->g_655[2],&p_1800->g_655[0],&p_1800->g_655[0],&p_1800->g_655[0],&p_1800->g_655[7],&p_1800->g_655[7],&p_1800->g_655[0],&p_1800->g_655[0],&p_1800->g_655[0]},{&p_1800->g_655[2],&p_1800->g_655[0],&p_1800->g_655[0],&p_1800->g_655[0],&p_1800->g_655[7],&p_1800->g_655[7],&p_1800->g_655[0],&p_1800->g_655[0],&p_1800->g_655[0]},{&p_1800->g_655[2],&p_1800->g_655[0],&p_1800->g_655[0],&p_1800->g_655[0],&p_1800->g_655[7],&p_1800->g_655[7],&p_1800->g_655[0],&p_1800->g_655[0],&p_1800->g_655[0]},{&p_1800->g_655[2],&p_1800->g_655[0],&p_1800->g_655[0],&p_1800->g_655[0],&p_1800->g_655[7],&p_1800->g_655[7],&p_1800->g_655[0],&p_1800->g_655[0],&p_1800->g_655[0]},{&p_1800->g_655[2],&p_1800->g_655[0],&p_1800->g_655[0],&p_1800->g_655[0],&p_1800->g_655[7],&p_1800->g_655[7],&p_1800->g_655[0],&p_1800->g_655[0],&p_1800->g_655[0]},{&p_1800->g_655[2],&p_1800->g_655[0],&p_1800->g_655[0],&p_1800->g_655[0],&p_1800->g_655[7],&p_1800->g_655[7],&p_1800->g_655[0],&p_1800->g_655[0],&p_1800->g_655[0]},{&p_1800->g_655[2],&p_1800->g_655[0],&p_1800->g_655[0],&p_1800->g_655[0],&p_1800->g_655[7],&p_1800->g_655[7],&p_1800->g_655[0],&p_1800->g_655[0],&p_1800->g_655[0]},{&p_1800->g_655[2],&p_1800->g_655[0],&p_1800->g_655[0],&p_1800->g_655[0],&p_1800->g_655[7],&p_1800->g_655[7],&p_1800->g_655[0],&p_1800->g_655[0],&p_1800->g_655[0]},{&p_1800->g_655[2],&p_1800->g_655[0],&p_1800->g_655[0],&p_1800->g_655[0],&p_1800->g_655[7],&p_1800->g_655[7],&p_1800->g_655[0],&p_1800->g_655[0],&p_1800->g_655[0]},{&p_1800->g_655[2],&p_1800->g_655[0],&p_1800->g_655[0],&p_1800->g_655[0],&p_1800->g_655[7],&p_1800->g_655[7],&p_1800->g_655[0],&p_1800->g_655[0],&p_1800->g_655[0]}}, // p_1800->g_1661
        &p_1800->g_655[1], // p_1800->g_1662
        {9UL}, // p_1800->g_1729
        (void*)0, // p_1800->g_1778
        &p_1800->g_655[0], // p_1800->g_1779
        &p_1800->g_655[0], // p_1800->g_1782
        {{{(-1L),0L,0L,(-1L)},{(-1L),0L,0L,(-1L)},{(-1L),0L,0L,(-1L)},{(-1L),0L,0L,(-1L)},{(-1L),0L,0L,(-1L)},{(-1L),0L,0L,(-1L)},{(-1L),0L,0L,(-1L)},{(-1L),0L,0L,(-1L)}},{{(-1L),0L,0L,(-1L)},{(-1L),0L,0L,(-1L)},{(-1L),0L,0L,(-1L)},{(-1L),0L,0L,(-1L)},{(-1L),0L,0L,(-1L)},{(-1L),0L,0L,(-1L)},{(-1L),0L,0L,(-1L)},{(-1L),0L,0L,(-1L)}},{{(-1L),0L,0L,(-1L)},{(-1L),0L,0L,(-1L)},{(-1L),0L,0L,(-1L)},{(-1L),0L,0L,(-1L)},{(-1L),0L,0L,(-1L)},{(-1L),0L,0L,(-1L)},{(-1L),0L,0L,(-1L)},{(-1L),0L,0L,(-1L)}},{{(-1L),0L,0L,(-1L)},{(-1L),0L,0L,(-1L)},{(-1L),0L,0L,(-1L)},{(-1L),0L,0L,(-1L)},{(-1L),0L,0L,(-1L)},{(-1L),0L,0L,(-1L)},{(-1L),0L,0L,(-1L)},{(-1L),0L,0L,(-1L)}},{{(-1L),0L,0L,(-1L)},{(-1L),0L,0L,(-1L)},{(-1L),0L,0L,(-1L)},{(-1L),0L,0L,(-1L)},{(-1L),0L,0L,(-1L)},{(-1L),0L,0L,(-1L)},{(-1L),0L,0L,(-1L)},{(-1L),0L,0L,(-1L)}},{{(-1L),0L,0L,(-1L)},{(-1L),0L,0L,(-1L)},{(-1L),0L,0L,(-1L)},{(-1L),0L,0L,(-1L)},{(-1L),0L,0L,(-1L)},{(-1L),0L,0L,(-1L)},{(-1L),0L,0L,(-1L)},{(-1L),0L,0L,(-1L)}}}, // p_1800->g_1792
        sequence_input[get_global_id(0)], // p_1800->global_0_offset
        sequence_input[get_global_id(1)], // p_1800->global_1_offset
        sequence_input[get_global_id(2)], // p_1800->global_2_offset
        sequence_input[get_local_id(0)], // p_1800->local_0_offset
        sequence_input[get_local_id(1)], // p_1800->local_1_offset
        sequence_input[get_local_id(2)], // p_1800->local_2_offset
        sequence_input[get_group_id(0)], // p_1800->group_0_offset
        sequence_input[get_group_id(1)], // p_1800->group_1_offset
        sequence_input[get_group_id(2)], // p_1800->group_2_offset
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
    };
    c_1801 = c_1802;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1800);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1800->g_22, "p_1800->g_22", print_hash_value);
    transparent_crc(p_1800->g_56, "p_1800->g_56", print_hash_value);
    transparent_crc(p_1800->g_60, "p_1800->g_60", print_hash_value);
    transparent_crc(p_1800->g_75, "p_1800->g_75", print_hash_value);
    transparent_crc(p_1800->g_78, "p_1800->g_78", print_hash_value);
    transparent_crc(p_1800->g_82, "p_1800->g_82", print_hash_value);
    transparent_crc(p_1800->g_101, "p_1800->g_101", print_hash_value);
    transparent_crc(p_1800->g_104, "p_1800->g_104", print_hash_value);
    transparent_crc(p_1800->g_122, "p_1800->g_122", print_hash_value);
    transparent_crc(p_1800->g_128, "p_1800->g_128", print_hash_value);
    transparent_crc(p_1800->g_156, "p_1800->g_156", print_hash_value);
    transparent_crc(p_1800->g_224, "p_1800->g_224", print_hash_value);
    transparent_crc(p_1800->g_241, "p_1800->g_241", print_hash_value);
    transparent_crc(p_1800->g_295, "p_1800->g_295", print_hash_value);
    transparent_crc(p_1800->g_369, "p_1800->g_369", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 6; k++)
            {
                transparent_crc(p_1800->g_370[i][j][k], "p_1800->g_370[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1800->g_371, "p_1800->g_371", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_1800->g_372[i], "p_1800->g_372[i]", print_hash_value);

    }
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1800->g_373[i], "p_1800->g_373[i]", print_hash_value);

    }
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_1800->g_374[i][j][k], "p_1800->g_374[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1800->g_375, "p_1800->g_375", print_hash_value);
    transparent_crc(p_1800->g_376, "p_1800->g_376", print_hash_value);
    transparent_crc(p_1800->g_377, "p_1800->g_377", print_hash_value);
    transparent_crc(p_1800->g_378, "p_1800->g_378", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1800->g_379[i], "p_1800->g_379[i]", print_hash_value);

    }
    transparent_crc(p_1800->g_380, "p_1800->g_380", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_1800->g_381[i][j][k], "p_1800->g_381[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1800->g_382, "p_1800->g_382", print_hash_value);
    transparent_crc(p_1800->g_383, "p_1800->g_383", print_hash_value);
    transparent_crc(p_1800->g_384, "p_1800->g_384", print_hash_value);
    transparent_crc(p_1800->g_385, "p_1800->g_385", print_hash_value);
    transparent_crc(p_1800->g_386, "p_1800->g_386", print_hash_value);
    transparent_crc(p_1800->g_387, "p_1800->g_387", print_hash_value);
    transparent_crc(p_1800->g_388, "p_1800->g_388", print_hash_value);
    transparent_crc(p_1800->g_389, "p_1800->g_389", print_hash_value);
    transparent_crc(p_1800->g_390, "p_1800->g_390", print_hash_value);
    transparent_crc(p_1800->g_391, "p_1800->g_391", print_hash_value);
    transparent_crc(p_1800->g_392, "p_1800->g_392", print_hash_value);
    transparent_crc(p_1800->g_393, "p_1800->g_393", print_hash_value);
    transparent_crc(p_1800->g_394, "p_1800->g_394", print_hash_value);
    transparent_crc(p_1800->g_395, "p_1800->g_395", print_hash_value);
    transparent_crc(p_1800->g_396, "p_1800->g_396", print_hash_value);
    transparent_crc(p_1800->g_397, "p_1800->g_397", print_hash_value);
    transparent_crc(p_1800->g_398, "p_1800->g_398", print_hash_value);
    transparent_crc(p_1800->g_399, "p_1800->g_399", print_hash_value);
    transparent_crc(p_1800->g_400, "p_1800->g_400", print_hash_value);
    transparent_crc(p_1800->g_401, "p_1800->g_401", print_hash_value);
    transparent_crc(p_1800->g_403, "p_1800->g_403", print_hash_value);
    transparent_crc(p_1800->g_408, "p_1800->g_408", print_hash_value);
    transparent_crc(p_1800->g_435, "p_1800->g_435", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1800->g_480[i], "p_1800->g_480[i]", print_hash_value);

    }
    transparent_crc(p_1800->g_635, "p_1800->g_635", print_hash_value);
    transparent_crc(p_1800->g_784, "p_1800->g_784", print_hash_value);
    transparent_crc(p_1800->g_869, "p_1800->g_869", print_hash_value);
    transparent_crc(p_1800->g_887, "p_1800->g_887", print_hash_value);
    transparent_crc(p_1800->g_975, "p_1800->g_975", print_hash_value);
    transparent_crc(p_1800->g_1006, "p_1800->g_1006", print_hash_value);
    transparent_crc(p_1800->g_1102, "p_1800->g_1102", print_hash_value);
    transparent_crc(p_1800->g_1153, "p_1800->g_1153", print_hash_value);
    transparent_crc(p_1800->g_1250, "p_1800->g_1250", print_hash_value);
    transparent_crc(p_1800->g_1410, "p_1800->g_1410", print_hash_value);
    transparent_crc(p_1800->g_1412, "p_1800->g_1412", print_hash_value);
    transparent_crc(p_1800->g_1584, "p_1800->g_1584", print_hash_value);
    transparent_crc(p_1800->g_1657, "p_1800->g_1657", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1800->g_1729[i], "p_1800->g_1729[i]", print_hash_value);

    }
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 8; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_1800->g_1792[i][j][k], "p_1800->g_1792[i][j][k]", print_hash_value);

            }
        }
    }
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 45; i++)
            transparent_crc(p_1800->g_special_values[i + 45 * get_linear_group_id()], "p_1800->g_special_values[i + 45 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 45; i++)
            transparent_crc(p_1800->l_special_values[i], "p_1800->l_special_values[i]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
