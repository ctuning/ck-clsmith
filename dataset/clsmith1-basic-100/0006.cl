// ---fake_divergence -g 86,52,2 -l 1,13,2
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


// Seed: 6

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   volatile int32_t  f0;
};

struct S1 {
    int32_t g_3;
    int32_t g_5;
    int32_t g_10;
    volatile int32_t g_11;
    volatile uint32_t g_14;
    int16_t g_77;
    int32_t g_89;
    int16_t g_90;
    int32_t g_91;
    int32_t g_94;
    int32_t g_101[5][8][6];
    uint8_t g_114;
    int8_t g_146[10];
    uint32_t g_185;
    uint16_t g_191[4];
    int64_t g_206;
    uint64_t g_221;
    uint64_t g_223;
    uint32_t g_235;
    uint8_t g_280;
    uint8_t *g_279;
    volatile int8_t * volatile * volatile g_322;
    int64_t g_340[6][4][8];
    int16_t g_376;
    volatile union U0 g_388;
    int32_t *g_423;
    int32_t ** volatile g_422;
    uint64_t g_440;
    int64_t g_449;
    volatile uint32_t g_450;
    uint16_t *g_475;
    int16_t g_498;
    uint32_t g_500;
    volatile union U0 g_512[10][5][5];
    int16_t *g_524;
    int16_t **g_523;
    int16_t *** volatile g_522;
    volatile uint16_t g_539;
    volatile uint32_t g_561;
    int32_t **g_616;
    int32_t ***g_615;
    uint16_t g_640;
    volatile union U0 *g_668;
    volatile union U0 ** volatile g_667;
    union U0 g_683;
    uint32_t *g_703;
    uint32_t **g_702;
    volatile uint16_t **g_713;
    uint32_t g_800[5];
    volatile union U0 g_808[10][10][2];
    uint32_t ***g_823[5];
    volatile uint32_t *g_838;
    volatile uint32_t **g_837;
    volatile uint32_t ***g_836;
    volatile uint32_t ****g_835;
    int16_t g_904;
    uint64_t g_905;
    int64_t g_908;
    int32_t g_909;
    volatile int32_t g_910;
    uint16_t g_911;
    uint16_t **g_925;
    uint16_t ***g_924;
    uint16_t *** volatile *g_923;
    int8_t **g_946;
    int8_t ***g_945;
    int8_t ****g_944;
    uint32_t g_986;
    uint64_t g_995;
    uint16_t ****g_1004;
    uint16_t *****g_1003;
    union U0 g_1076;
    int16_t g_1103;
    volatile uint8_t g_1105;
    uint8_t ***g_1117;
    uint8_t ****g_1116;
    int8_t g_1152;
    uint32_t g_1153;
    volatile union U0 g_1156;
    volatile int16_t g_1181[5];
    volatile uint32_t g_1216;
    volatile union U0 g_1234;
    volatile uint32_t g_1255;
    uint32_t g_1262;
    volatile uint32_t g_1326;
    int32_t ** volatile g_1333[6];
    int32_t ** volatile g_1335;
    volatile uint64_t **g_1384;
    union U0 *g_1403;
    union U0 **g_1402;
    volatile union U0 g_1474;
    uint32_t g_1497;
    volatile union U0 g_1511;
    uint8_t g_1539;
    volatile union U0 g_1550;
    int64_t g_1561;
    int32_t *g_1563;
    volatile int16_t g_1593;
    int8_t g_1615;
    int64_t g_1669;
    volatile int16_t g_1687;
    int64_t g_1744;
    union U0 g_1791[8][2][6];
    int64_t g_1794;
    volatile int32_t g_1796[5][4][2];
    int8_t g_1797;
    union U0 g_1914;
    uint64_t g_1961;
    int32_t *g_1975[9][6][1];
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
uint32_t  func_1(struct S1 * p_1979);
int32_t  func_18(int32_t * p_19, int32_t  p_20, int64_t  p_21, struct S1 * p_1979);
int32_t * func_22(uint32_t  p_23, uint32_t  p_24, uint32_t  p_25, struct S1 * p_1979);
uint32_t  func_34(int32_t * p_35, int32_t  p_36, int32_t * p_37, uint32_t  p_38, int32_t * p_39, struct S1 * p_1979);
int32_t * func_40(int32_t * p_41, struct S1 * p_1979);
int32_t * func_44(int32_t * p_45, struct S1 * p_1979);
int32_t * func_46(int32_t * p_47, int32_t * p_48, int32_t * p_49, int32_t * p_50, int16_t  p_51, struct S1 * p_1979);
int32_t * func_52(int64_t  p_53, uint64_t  p_54, struct S1 * p_1979);
int32_t * func_56(uint32_t  p_57, struct S1 * p_1979);
int8_t  func_63(uint8_t  p_64, struct S1 * p_1979);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1979->g_3 p_1979->g_14 p_1979->g_475 p_1979->g_191 p_1979->g_640 p_1979->g_90 p_1979->g_925 p_1979->g_376 p_1979->g_1326 p_1979->g_1103 p_1979->g_1181 p_1979->g_1335 p_1979->g_185 p_1979->g_422 p_1979->g_423 p_1979->g_279 p_1979->g_280 p_1979->g_1539 p_1979->g_91 p_1979->g_1550 p_1979->g_146 p_1979->g_1152 p_1979->g_924 p_1979->g_524 p_1979->g_1563 p_1979->g_703 p_1979->g_944 p_1979->g_945 p_1979->g_89 p_1979->g_498 p_1979->g_923 p_1979->g_340 p_1979->g_904 p_1979->g_561 p_1979->g_702 p_1979->g_1615 p_1979->g_94 p_1979->g_223 p_1979->g_221 p_1979->g_1744 p_1979->g_667 p_1979->g_668 p_1979->g_512 p_1979->g_522 p_1979->g_523 p_1979->g_995 p_1979->g_10 p_1979->g_5 p_1979->g_77 p_1979->g_986 p_1979->g_101 p_1979->g_1794 p_1979->g_449 p_1979->g_905 p_1979->g_114 p_1979->g_1474.f0 p_1979->g_1669 p_1979->g_1914 p_1979->g_1262 p_1979->g_440 p_1979->g_1961 p_1979->g_911 p_1979->g_1687 p_1979->g_1402 p_1979->g_206 p_1979->g_1975
 * writes: p_1979->g_3 p_1979->g_14 p_1979->g_640 p_1979->g_376 p_1979->g_1103 p_1979->g_1326 p_1979->g_449 p_1979->g_423 p_1979->g_185 p_1979->g_89 p_1979->g_280 p_1979->g_114 p_1979->g_1539 p_1979->g_91 p_1979->g_146 p_1979->g_1152 p_1979->g_191 p_1979->g_90 p_1979->g_1561 p_1979->g_498 p_1979->g_905 p_1979->g_904 p_1979->g_1615 p_1979->g_221 p_1979->g_1563 p_1979->g_995 p_1979->g_94 p_1979->g_1794 p_1979->g_5 p_1979->g_279 p_1979->g_1669 p_1979->g_1744 p_1979->g_440 p_1979->g_1403 p_1979->g_206 p_1979->g_1975
 */
uint32_t  func_1(struct S1 * p_1979)
{ /* block id: 4 */
    uint64_t l_2[2];
    int32_t l_12 = 0x0AE505B0L;
    int32_t l_13 = 0x2BA75A59L;
    uint16_t *l_1296 = &p_1979->g_640;
    int8_t l_1303 = (-1L);
    int8_t l_1304 = 0x2DL;
    int8_t *l_1614 = &p_1979->g_1615;
    int32_t *l_1755[9] = {&p_1979->g_5,&p_1979->g_5,&p_1979->g_5,&p_1979->g_5,&p_1979->g_5,&p_1979->g_5,&p_1979->g_5,&p_1979->g_5,&p_1979->g_5};
    union U0 *l_1790 = &p_1979->g_1791[0][1][5];
    uint64_t l_1803 = 0x5881C54961220584L;
    int64_t l_1812 = 0x66169F6100AC033BL;
    uint8_t *l_1830 = &p_1979->g_280;
    int16_t l_1836 = 0x6412L;
    uint64_t *l_1849 = &p_1979->g_223;
    uint64_t **l_1848[6][5][8] = {{{&l_1849,&l_1849,&l_1849,&l_1849,(void*)0,&l_1849,&l_1849,&l_1849},{&l_1849,&l_1849,&l_1849,&l_1849,(void*)0,&l_1849,&l_1849,&l_1849},{&l_1849,&l_1849,&l_1849,&l_1849,(void*)0,&l_1849,&l_1849,&l_1849},{&l_1849,&l_1849,&l_1849,&l_1849,(void*)0,&l_1849,&l_1849,&l_1849},{&l_1849,&l_1849,&l_1849,&l_1849,(void*)0,&l_1849,&l_1849,&l_1849}},{{&l_1849,&l_1849,&l_1849,&l_1849,(void*)0,&l_1849,&l_1849,&l_1849},{&l_1849,&l_1849,&l_1849,&l_1849,(void*)0,&l_1849,&l_1849,&l_1849},{&l_1849,&l_1849,&l_1849,&l_1849,(void*)0,&l_1849,&l_1849,&l_1849},{&l_1849,&l_1849,&l_1849,&l_1849,(void*)0,&l_1849,&l_1849,&l_1849},{&l_1849,&l_1849,&l_1849,&l_1849,(void*)0,&l_1849,&l_1849,&l_1849}},{{&l_1849,&l_1849,&l_1849,&l_1849,(void*)0,&l_1849,&l_1849,&l_1849},{&l_1849,&l_1849,&l_1849,&l_1849,(void*)0,&l_1849,&l_1849,&l_1849},{&l_1849,&l_1849,&l_1849,&l_1849,(void*)0,&l_1849,&l_1849,&l_1849},{&l_1849,&l_1849,&l_1849,&l_1849,(void*)0,&l_1849,&l_1849,&l_1849},{&l_1849,&l_1849,&l_1849,&l_1849,(void*)0,&l_1849,&l_1849,&l_1849}},{{&l_1849,&l_1849,&l_1849,&l_1849,(void*)0,&l_1849,&l_1849,&l_1849},{&l_1849,&l_1849,&l_1849,&l_1849,(void*)0,&l_1849,&l_1849,&l_1849},{&l_1849,&l_1849,&l_1849,&l_1849,(void*)0,&l_1849,&l_1849,&l_1849},{&l_1849,&l_1849,&l_1849,&l_1849,(void*)0,&l_1849,&l_1849,&l_1849},{&l_1849,&l_1849,&l_1849,&l_1849,(void*)0,&l_1849,&l_1849,&l_1849}},{{&l_1849,&l_1849,&l_1849,&l_1849,(void*)0,&l_1849,&l_1849,&l_1849},{&l_1849,&l_1849,&l_1849,&l_1849,(void*)0,&l_1849,&l_1849,&l_1849},{&l_1849,&l_1849,&l_1849,&l_1849,(void*)0,&l_1849,&l_1849,&l_1849},{&l_1849,&l_1849,&l_1849,&l_1849,(void*)0,&l_1849,&l_1849,&l_1849},{&l_1849,&l_1849,&l_1849,&l_1849,(void*)0,&l_1849,&l_1849,&l_1849}},{{&l_1849,&l_1849,&l_1849,&l_1849,(void*)0,&l_1849,&l_1849,&l_1849},{&l_1849,&l_1849,&l_1849,&l_1849,(void*)0,&l_1849,&l_1849,&l_1849},{&l_1849,&l_1849,&l_1849,&l_1849,(void*)0,&l_1849,&l_1849,&l_1849},{&l_1849,&l_1849,&l_1849,&l_1849,(void*)0,&l_1849,&l_1849,&l_1849},{&l_1849,&l_1849,&l_1849,&l_1849,(void*)0,&l_1849,&l_1849,&l_1849}}};
    uint64_t ***l_1847 = &l_1848[0][4][0];
    int32_t *l_1850 = &l_12;
    uint16_t l_1852 = 0xB57AL;
    int32_t l_1869 = 0x3E073128L;
    uint8_t *****l_1962 = &p_1979->g_1116;
    int64_t l_1963[8][8][1] = {{{6L},{6L},{6L},{6L},{6L},{6L},{6L},{6L}},{{6L},{6L},{6L},{6L},{6L},{6L},{6L},{6L}},{{6L},{6L},{6L},{6L},{6L},{6L},{6L},{6L}},{{6L},{6L},{6L},{6L},{6L},{6L},{6L},{6L}},{{6L},{6L},{6L},{6L},{6L},{6L},{6L},{6L}},{{6L},{6L},{6L},{6L},{6L},{6L},{6L},{6L}},{{6L},{6L},{6L},{6L},{6L},{6L},{6L},{6L}},{{6L},{6L},{6L},{6L},{6L},{6L},{6L},{6L}}};
    int32_t l_1965 = 0x17E919C7L;
    uint64_t l_1967 = 18446744073709551607UL;
    volatile union U0 *l_1977 = (void*)0;
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_2[i] = 0x7E8B72FD4914D2EDL;
lbl_17:
    for (p_1979->g_3 = 1; (p_1979->g_3 >= 0); p_1979->g_3 -= 1)
    { /* block id: 7 */
        int32_t *l_4 = &p_1979->g_5;
        int32_t *l_6 = &p_1979->g_5;
        int32_t *l_7 = &p_1979->g_5;
        int32_t *l_8 = &p_1979->g_5;
        int32_t *l_9[6] = {&p_1979->g_3,&p_1979->g_3,&p_1979->g_3,&p_1979->g_3,&p_1979->g_3,&p_1979->g_3};
        int i;
        --p_1979->g_14;
    }
    for (l_13 = 1; (l_13 >= 0); l_13 -= 1)
    { /* block id: 12 */
        int i;
        for (p_1979->g_3 = 1; (p_1979->g_3 >= 0); p_1979->g_3 -= 1)
        { /* block id: 15 */
            int i;
            return l_2[l_13];
        }
        if (p_1979->g_3)
            goto lbl_17;
        return l_2[l_13];
    }
    if (func_18(func_22((safe_mod_func_uint64_t_u_u((safe_sub_func_int64_t_s_s((((*l_1614) &= (safe_sub_func_uint64_t_u_u(5UL, (safe_mod_func_int16_t_s_s(((func_34(func_40(&l_12, p_1979), ((safe_div_func_uint32_t_u_u(l_12, ((0x49L >= ((safe_rshift_func_uint16_t_u_s((0x77L == (safe_div_func_uint32_t_u_u((((*p_1979->g_475) == (++(*l_1296))) != p_1979->g_90), (safe_mod_func_int8_t_s_s((safe_sub_func_uint16_t_u_u(((l_1303 ^ l_13) | GROUP_DIVERGE(1, 1)), (**p_1979->g_925))), FAKE_DIVERGE(p_1979->group_1_offset, get_group_id(1), 10)))))), 5)) <= 0UL)) , 0x5A9C37B9L))) , p_1979->g_640), &l_12, l_1304, &l_12, p_1979) == 0x6CDBEDB0L) && l_1303), 0x05B2L))))) <= l_1304), p_1979->g_94)), p_1979->g_223)), l_1304, p_1979->g_3, p_1979), p_1979->g_340[0][0][2], p_1979->g_1744, p_1979))
    { /* block id: 975 */
        int32_t l_1756 = 0x17D56A02L;
        uint32_t ***l_1784 = &p_1979->g_702;
        uint32_t *l_1787 = (void*)0;
        uint32_t *l_1789 = &p_1979->g_1262;
        uint32_t **l_1788 = &l_1789;
        int8_t l_1792 = 5L;
        int16_t l_1793 = 0x3360L;
        int32_t l_1795 = 1L;
        int32_t l_1799[9];
        int32_t l_1802[6] = {0x52425BC3L,0x52425BC3L,0x52425BC3L,0x52425BC3L,0x52425BC3L,0x52425BC3L};
        int32_t l_1813 = 0x69564B57L;
        int8_t l_1838 = 0x02L;
        int i;
        for (i = 0; i < 9; i++)
            l_1799[i] = (-1L);
        (*p_1979->g_422) = l_1755[1];
        if (l_1304)
            goto lbl_1757;
lbl_1757:
        l_1756 &= 9L;
        if (((((safe_div_func_int64_t_s_s((safe_lshift_func_int8_t_s_u((safe_sub_func_int32_t_s_s((((((p_1979->g_1794 ^= ((safe_div_func_uint64_t_u_u(((safe_sub_func_int16_t_s_s(((++(*p_1979->g_703)) > (safe_add_func_uint32_t_u_u((safe_sub_func_int16_t_s_s(((**p_1979->g_523) = ((****p_1979->g_923) && ((safe_sub_func_uint32_t_u_u(((3UL >= 0x744EB1401FB93A01L) < (((safe_sub_func_int8_t_s_s(((****p_1979->g_923) ^ (~(safe_div_func_uint8_t_u_u(((((((((((((safe_sub_func_int32_t_s_s(((void*)0 == l_1784), ((safe_rshift_func_int8_t_s_s(((l_1787 != ((*l_1788) = func_56((((**p_1979->g_667) , (p_1979->g_995 &= ((***p_1979->g_522) ^ 0x6684L))) , 4294967295UL), p_1979))) && l_1756), p_1979->g_986)) != 0x14BCL))) <= 0UL) > GROUP_DIVERGE(1, 1)) == (**p_1979->g_925)) >= 0L) , GROUP_DIVERGE(2, 1)) , (void*)0) == l_1790) && p_1979->g_146[7]) ^ 0x89L) || l_1792) , GROUP_DIVERGE(1, 1)), l_1792)))), (*p_1979->g_279))) , l_1756) | 1UL)), l_1793)) >= p_1979->g_3))), 1L)), l_1756))), p_1979->g_101[2][6][3])) == l_1756), l_1792)) && l_1792)) > 0x5A72DAD4L) || GROUP_DIVERGE(2, 1)) || (-1L)) != 0UL), l_1756)), (*p_1979->g_279))), (-1L))) , 0x41E3F6B6L) ^ l_1793) ^ (-3L)))
        { /* block id: 984 */
            int64_t l_1798 = 0L;
            int32_t l_1800 = 0x522AEC58L;
            int32_t l_1801 = (-1L);
            ++l_1803;
            for (p_1979->g_449 = 0; (p_1979->g_449 != (-3)); p_1979->g_449--)
            { /* block id: 988 */
                for (l_1792 = 0; (l_1792 != (-10)); --l_1792)
                { /* block id: 991 */
                    int32_t **l_1810 = &l_1755[6];
                    (*p_1979->g_1563) = ((void*)0 == &p_1979->g_1262);
                }
                (*p_1979->g_423) = l_1799[1];
                if ((**p_1979->g_422))
                    break;
            }
        }
        else
        { /* block id: 998 */
            int32_t l_1811[2][7] = {{0x1825789BL,0x1825789BL,0x1825789BL,0x1825789BL,0x1825789BL,0x1825789BL,0x1825789BL},{0x1825789BL,0x1825789BL,0x1825789BL,0x1825789BL,0x1825789BL,0x1825789BL,0x1825789BL}};
            int32_t l_1814 = 0x0696538DL;
            uint8_t l_1815 = 8UL;
            uint8_t *l_1831 = &p_1979->g_1539;
            int32_t **l_1837 = &p_1979->g_423;
            uint64_t l_1839 = 0x319DDDC2BC2FB857L;
            int i, j;
            l_1815++;
            (*l_1837) = (((l_1836 = (((!(65535UL & GROUP_DIVERGE(0, 1))) ^ (*p_1979->g_524)) <= (safe_mul_func_int8_t_s_s(l_1815, (7UL <= (safe_sub_func_uint8_t_u_u(((safe_mul_func_uint8_t_u_u(((safe_mod_func_uint16_t_u_u((((+1L) , (safe_rshift_func_uint8_t_u_s(((safe_mul_func_int16_t_s_s(0x6F70L, (&p_1979->g_1105 == (l_1831 = (p_1979->g_279 = l_1830))))) , ((safe_mod_func_uint16_t_u_u(GROUP_DIVERGE(1, 1), (--(***p_1979->g_924)))) != ((*p_1979->g_1563) |= l_1814))), l_1795))) != l_1815), (*p_1979->g_524))) , (*p_1979->g_279)), l_1756)) && l_1811[1][5]), 8L))))))) | GROUP_DIVERGE(1, 1)) , &l_12);
            (*p_1979->g_1563) &= l_1838;
            l_1839++;
        }
    }
    else
    { /* block id: 1009 */
        uint8_t l_1842 = 0xD3L;
        int64_t *l_1843 = (void*)0;
        int64_t *l_1844[2];
        uint64_t *l_1845 = &p_1979->g_905;
        int32_t l_1846 = (-9L);
        int i;
        for (i = 0; i < 2; i++)
            l_1844[i] = &l_1812;
        (*p_1979->g_1563) = (l_1846 = ((l_1842 && p_1979->g_146[7]) >= (~((p_1979->g_1669 = (p_1979->g_1794 &= (l_1842 ^ GROUP_DIVERGE(1, 1)))) & ((*l_1845) &= (&p_1979->g_101[3][7][3] == &p_1979->g_101[1][4][1]))))));
    }
    if ((l_1847 == &p_1979->g_1384))
    { /* block id: 1016 */
        int32_t **l_1851 = &l_1850;
        uint64_t l_1876 = 0x186251303196D041L;
        uint32_t l_1877 = 0UL;
        int32_t l_1881 = 0x2E1DE92BL;
        uint32_t **l_1902 = (void*)0;
        uint32_t l_1910 = 0x30C0FD99L;
        int8_t *****l_1915 = &p_1979->g_944;
        int16_t **l_1919 = &p_1979->g_524;
        uint32_t l_1920[8][9][3] = {{{0x42A43D4CL,0x5D4E862FL,4294967286UL},{0x42A43D4CL,0x5D4E862FL,4294967286UL},{0x42A43D4CL,0x5D4E862FL,4294967286UL},{0x42A43D4CL,0x5D4E862FL,4294967286UL},{0x42A43D4CL,0x5D4E862FL,4294967286UL},{0x42A43D4CL,0x5D4E862FL,4294967286UL},{0x42A43D4CL,0x5D4E862FL,4294967286UL},{0x42A43D4CL,0x5D4E862FL,4294967286UL},{0x42A43D4CL,0x5D4E862FL,4294967286UL}},{{0x42A43D4CL,0x5D4E862FL,4294967286UL},{0x42A43D4CL,0x5D4E862FL,4294967286UL},{0x42A43D4CL,0x5D4E862FL,4294967286UL},{0x42A43D4CL,0x5D4E862FL,4294967286UL},{0x42A43D4CL,0x5D4E862FL,4294967286UL},{0x42A43D4CL,0x5D4E862FL,4294967286UL},{0x42A43D4CL,0x5D4E862FL,4294967286UL},{0x42A43D4CL,0x5D4E862FL,4294967286UL},{0x42A43D4CL,0x5D4E862FL,4294967286UL}},{{0x42A43D4CL,0x5D4E862FL,4294967286UL},{0x42A43D4CL,0x5D4E862FL,4294967286UL},{0x42A43D4CL,0x5D4E862FL,4294967286UL},{0x42A43D4CL,0x5D4E862FL,4294967286UL},{0x42A43D4CL,0x5D4E862FL,4294967286UL},{0x42A43D4CL,0x5D4E862FL,4294967286UL},{0x42A43D4CL,0x5D4E862FL,4294967286UL},{0x42A43D4CL,0x5D4E862FL,4294967286UL},{0x42A43D4CL,0x5D4E862FL,4294967286UL}},{{0x42A43D4CL,0x5D4E862FL,4294967286UL},{0x42A43D4CL,0x5D4E862FL,4294967286UL},{0x42A43D4CL,0x5D4E862FL,4294967286UL},{0x42A43D4CL,0x5D4E862FL,4294967286UL},{0x42A43D4CL,0x5D4E862FL,4294967286UL},{0x42A43D4CL,0x5D4E862FL,4294967286UL},{0x42A43D4CL,0x5D4E862FL,4294967286UL},{0x42A43D4CL,0x5D4E862FL,4294967286UL},{0x42A43D4CL,0x5D4E862FL,4294967286UL}},{{0x42A43D4CL,0x5D4E862FL,4294967286UL},{0x42A43D4CL,0x5D4E862FL,4294967286UL},{0x42A43D4CL,0x5D4E862FL,4294967286UL},{0x42A43D4CL,0x5D4E862FL,4294967286UL},{0x42A43D4CL,0x5D4E862FL,4294967286UL},{0x42A43D4CL,0x5D4E862FL,4294967286UL},{0x42A43D4CL,0x5D4E862FL,4294967286UL},{0x42A43D4CL,0x5D4E862FL,4294967286UL},{0x42A43D4CL,0x5D4E862FL,4294967286UL}},{{0x42A43D4CL,0x5D4E862FL,4294967286UL},{0x42A43D4CL,0x5D4E862FL,4294967286UL},{0x42A43D4CL,0x5D4E862FL,4294967286UL},{0x42A43D4CL,0x5D4E862FL,4294967286UL},{0x42A43D4CL,0x5D4E862FL,4294967286UL},{0x42A43D4CL,0x5D4E862FL,4294967286UL},{0x42A43D4CL,0x5D4E862FL,4294967286UL},{0x42A43D4CL,0x5D4E862FL,4294967286UL},{0x42A43D4CL,0x5D4E862FL,4294967286UL}},{{0x42A43D4CL,0x5D4E862FL,4294967286UL},{0x42A43D4CL,0x5D4E862FL,4294967286UL},{0x42A43D4CL,0x5D4E862FL,4294967286UL},{0x42A43D4CL,0x5D4E862FL,4294967286UL},{0x42A43D4CL,0x5D4E862FL,4294967286UL},{0x42A43D4CL,0x5D4E862FL,4294967286UL},{0x42A43D4CL,0x5D4E862FL,4294967286UL},{0x42A43D4CL,0x5D4E862FL,4294967286UL},{0x42A43D4CL,0x5D4E862FL,4294967286UL}},{{0x42A43D4CL,0x5D4E862FL,4294967286UL},{0x42A43D4CL,0x5D4E862FL,4294967286UL},{0x42A43D4CL,0x5D4E862FL,4294967286UL},{0x42A43D4CL,0x5D4E862FL,4294967286UL},{0x42A43D4CL,0x5D4E862FL,4294967286UL},{0x42A43D4CL,0x5D4E862FL,4294967286UL},{0x42A43D4CL,0x5D4E862FL,4294967286UL},{0x42A43D4CL,0x5D4E862FL,4294967286UL},{0x42A43D4CL,0x5D4E862FL,4294967286UL}}};
        int i, j, k;
        (*l_1851) = l_1850;
        l_1852 ^= ((**l_1851) = (**l_1851));
        if (((((GROUP_DIVERGE(0, 1) || (**p_1979->g_925)) , ((safe_sub_func_int16_t_s_s((((+(p_1979->g_1744 , (((safe_add_func_int32_t_s_s(((safe_mul_func_int8_t_s_s((**l_1851), ((safe_rshift_func_int8_t_s_u(((**l_1851) && (safe_div_func_uint32_t_u_u((*p_1979->g_703), (safe_mod_func_uint64_t_u_u((safe_sub_func_int16_t_s_s((safe_sub_func_uint16_t_u_u((l_1869 | ((*p_1979->g_279) ^= 0x94L)), (safe_div_func_uint32_t_u_u((safe_mod_func_uint32_t_u_u((253UL && (safe_div_func_int32_t_s_s((((*l_1614) = ((-5L) == (-1L))) || (**l_1851)), 1L))), 0x79D60AE0L)), 4294967289UL)))), (**l_1851))), 7L))))), 7)) , l_1876))) >= 0x5EE9662E76B68001L), (**l_1851))) , l_1877) , (**l_1851)))) | (**l_1851)) < (-9L)), (*p_1979->g_475))) || p_1979->g_114)) , p_1979->g_1744) >= (**l_1851)))
        { /* block id: 1022 */
            uint16_t l_1878 = 0xAB51L;
            l_1878--;
            (*p_1979->g_1563) ^= 0x561D60FFL;
            l_1881 ^= (*p_1979->g_1563);
            return p_1979->g_1474.f0;
        }
        else
        { /* block id: 1027 */
            uint64_t *l_1888 = &p_1979->g_221;
            uint64_t *l_1889 = (void*)0;
            int32_t l_1918 = (-1L);
            uint16_t l_1964 = 0xCA4EL;
            uint32_t l_1966 = 0x834634F7L;
            (*p_1979->g_1563) = (((**l_1851) > ((*l_1850) & FAKE_DIVERGE(p_1979->group_2_offset, get_group_id(2), 10))) != (safe_lshift_func_int8_t_s_s(((safe_add_func_int16_t_s_s((((*p_1979->g_279) ^= 0x13L) >= (safe_lshift_func_int8_t_s_s((l_1888 != l_1889), 1))), (*p_1979->g_524))) , 0x13L), 1)));
            (*l_1851) = (*l_1851);
            for (p_1979->g_1744 = 0; (p_1979->g_1744 == (-8)); --p_1979->g_1744)
            { /* block id: 1033 */
                int32_t l_1916 = 0x601A3C2EL;
                for (p_1979->g_94 = 18; (p_1979->g_94 != (-27)); p_1979->g_94 = safe_sub_func_int32_t_s_s(p_1979->g_94, 1))
                { /* block id: 1036 */
                    uint32_t *l_1897 = &p_1979->g_1262;
                    uint32_t **l_1896 = &l_1897;
                    uint32_t ***l_1898 = &l_1896;
                    uint32_t **l_1900 = &l_1897;
                    uint32_t ***l_1899 = &l_1900;
                    uint32_t ***l_1901 = (void*)0;
                    int64_t *l_1911 = &p_1979->g_1669;
                    int32_t l_1917[6][8] = {{7L,0x6983F94AL,2L,0x6983F94AL,7L,7L,0x6983F94AL,2L},{7L,0x6983F94AL,2L,0x6983F94AL,7L,7L,0x6983F94AL,2L},{7L,0x6983F94AL,2L,0x6983F94AL,7L,7L,0x6983F94AL,2L},{7L,0x6983F94AL,2L,0x6983F94AL,7L,7L,0x6983F94AL,2L},{7L,0x6983F94AL,2L,0x6983F94AL,7L,7L,0x6983F94AL,2L},{7L,0x6983F94AL,2L,0x6983F94AL,7L,7L,0x6983F94AL,2L}};
                    int i, j;
                    p_1979->g_89 |= (l_1920[5][6][2] = (safe_mul_func_uint8_t_u_u(GROUP_DIVERGE(0, 1), ((((*l_1898) = l_1896) == (l_1902 = ((*l_1899) = (void*)0))) || (((safe_sub_func_int16_t_s_s(((safe_unary_minus_func_uint8_t_u(((*p_1979->g_279) >= ((safe_lshift_func_int8_t_s_s((((*l_1911) ^= l_1910) < (((((safe_lshift_func_uint8_t_u_u(((*l_1850) & (((void*)0 == &p_1979->g_1117) || (p_1979->g_1914 , (&p_1979->g_944 == l_1915)))), 0)) && (*p_1979->g_475)) || l_1916) , l_1917[0][5]) | l_1918)), p_1979->g_1262)) < p_1979->g_146[7])))) == p_1979->g_185), (*p_1979->g_524))) , (void*)0) == l_1919)))));
                }
            }
            (**l_1851) = (((safe_rshift_func_uint16_t_u_s(((***p_1979->g_924) = (safe_div_func_int32_t_s_s(((((**l_1851) && (safe_mod_func_int16_t_s_s(0L, (safe_mod_func_int32_t_s_s((safe_lshift_func_int16_t_s_s((safe_mod_func_uint8_t_u_u(((safe_add_func_int8_t_s_s(0x12L, ((safe_add_func_uint16_t_u_u((!(safe_mul_func_uint16_t_u_u(((safe_div_func_uint8_t_u_u((--(*l_1830)), 4UL)) & ((p_1979->g_904 > (safe_mul_func_int8_t_s_s(((((((((+(-1L)) || (((safe_sub_func_uint8_t_u_u((safe_div_func_uint16_t_u_u(((((p_1979->g_440--) | (safe_lshift_func_int8_t_s_u((safe_lshift_func_int16_t_s_u((**l_1851), 14)), 0))) == l_1918) || (safe_sub_func_int16_t_s_s((((safe_add_func_int64_t_s_s((safe_mod_func_int32_t_s_s((p_1979->g_1961 , (*p_1979->g_1563)), (**l_1851))), p_1979->g_911)) , &p_1979->g_1116) == l_1962), l_1963[1][1][0]))), (****p_1979->g_923))), p_1979->g_1687)) && 0x11C792C766893B75L) || p_1979->g_1669)) < 0x17F87057L) > FAKE_DIVERGE(p_1979->local_1_offset, get_local_id(1), 10)) != 0x179D0F63L) , (*p_1979->g_667)) == l_1790) , l_1918), (**l_1851)))) | (**l_1851))), l_1964))), 0x6C4DL)) || l_1965))) > l_1966), (**l_1851))), l_1918)), l_1966))))) & (**p_1979->g_925)) >= (*l_1850)), l_1967))), 1)) , 0L) , 0x76629737L);
        }
    }
    else
    { /* block id: 1050 */
        union U0 *l_1968[6][6][6] = {{{(void*)0,(void*)0,&p_1979->g_683,&p_1979->g_683,&p_1979->g_1076,&p_1979->g_1914},{(void*)0,(void*)0,&p_1979->g_683,&p_1979->g_683,&p_1979->g_1076,&p_1979->g_1914},{(void*)0,(void*)0,&p_1979->g_683,&p_1979->g_683,&p_1979->g_1076,&p_1979->g_1914},{(void*)0,(void*)0,&p_1979->g_683,&p_1979->g_683,&p_1979->g_1076,&p_1979->g_1914},{(void*)0,(void*)0,&p_1979->g_683,&p_1979->g_683,&p_1979->g_1076,&p_1979->g_1914},{(void*)0,(void*)0,&p_1979->g_683,&p_1979->g_683,&p_1979->g_1076,&p_1979->g_1914}},{{(void*)0,(void*)0,&p_1979->g_683,&p_1979->g_683,&p_1979->g_1076,&p_1979->g_1914},{(void*)0,(void*)0,&p_1979->g_683,&p_1979->g_683,&p_1979->g_1076,&p_1979->g_1914},{(void*)0,(void*)0,&p_1979->g_683,&p_1979->g_683,&p_1979->g_1076,&p_1979->g_1914},{(void*)0,(void*)0,&p_1979->g_683,&p_1979->g_683,&p_1979->g_1076,&p_1979->g_1914},{(void*)0,(void*)0,&p_1979->g_683,&p_1979->g_683,&p_1979->g_1076,&p_1979->g_1914},{(void*)0,(void*)0,&p_1979->g_683,&p_1979->g_683,&p_1979->g_1076,&p_1979->g_1914}},{{(void*)0,(void*)0,&p_1979->g_683,&p_1979->g_683,&p_1979->g_1076,&p_1979->g_1914},{(void*)0,(void*)0,&p_1979->g_683,&p_1979->g_683,&p_1979->g_1076,&p_1979->g_1914},{(void*)0,(void*)0,&p_1979->g_683,&p_1979->g_683,&p_1979->g_1076,&p_1979->g_1914},{(void*)0,(void*)0,&p_1979->g_683,&p_1979->g_683,&p_1979->g_1076,&p_1979->g_1914},{(void*)0,(void*)0,&p_1979->g_683,&p_1979->g_683,&p_1979->g_1076,&p_1979->g_1914},{(void*)0,(void*)0,&p_1979->g_683,&p_1979->g_683,&p_1979->g_1076,&p_1979->g_1914}},{{(void*)0,(void*)0,&p_1979->g_683,&p_1979->g_683,&p_1979->g_1076,&p_1979->g_1914},{(void*)0,(void*)0,&p_1979->g_683,&p_1979->g_683,&p_1979->g_1076,&p_1979->g_1914},{(void*)0,(void*)0,&p_1979->g_683,&p_1979->g_683,&p_1979->g_1076,&p_1979->g_1914},{(void*)0,(void*)0,&p_1979->g_683,&p_1979->g_683,&p_1979->g_1076,&p_1979->g_1914},{(void*)0,(void*)0,&p_1979->g_683,&p_1979->g_683,&p_1979->g_1076,&p_1979->g_1914},{(void*)0,(void*)0,&p_1979->g_683,&p_1979->g_683,&p_1979->g_1076,&p_1979->g_1914}},{{(void*)0,(void*)0,&p_1979->g_683,&p_1979->g_683,&p_1979->g_1076,&p_1979->g_1914},{(void*)0,(void*)0,&p_1979->g_683,&p_1979->g_683,&p_1979->g_1076,&p_1979->g_1914},{(void*)0,(void*)0,&p_1979->g_683,&p_1979->g_683,&p_1979->g_1076,&p_1979->g_1914},{(void*)0,(void*)0,&p_1979->g_683,&p_1979->g_683,&p_1979->g_1076,&p_1979->g_1914},{(void*)0,(void*)0,&p_1979->g_683,&p_1979->g_683,&p_1979->g_1076,&p_1979->g_1914},{(void*)0,(void*)0,&p_1979->g_683,&p_1979->g_683,&p_1979->g_1076,&p_1979->g_1914}},{{(void*)0,(void*)0,&p_1979->g_683,&p_1979->g_683,&p_1979->g_1076,&p_1979->g_1914},{(void*)0,(void*)0,&p_1979->g_683,&p_1979->g_683,&p_1979->g_1076,&p_1979->g_1914},{(void*)0,(void*)0,&p_1979->g_683,&p_1979->g_683,&p_1979->g_1076,&p_1979->g_1914},{(void*)0,(void*)0,&p_1979->g_683,&p_1979->g_683,&p_1979->g_1076,&p_1979->g_1914},{(void*)0,(void*)0,&p_1979->g_683,&p_1979->g_683,&p_1979->g_1076,&p_1979->g_1914},{(void*)0,(void*)0,&p_1979->g_683,&p_1979->g_683,&p_1979->g_1076,&p_1979->g_1914}}};
        int32_t l_1974[8][7][4] = {{{5L,0x124C1B73L,0x3CBDE2E2L,0x23A4F538L},{5L,0x124C1B73L,0x3CBDE2E2L,0x23A4F538L},{5L,0x124C1B73L,0x3CBDE2E2L,0x23A4F538L},{5L,0x124C1B73L,0x3CBDE2E2L,0x23A4F538L},{5L,0x124C1B73L,0x3CBDE2E2L,0x23A4F538L},{5L,0x124C1B73L,0x3CBDE2E2L,0x23A4F538L},{5L,0x124C1B73L,0x3CBDE2E2L,0x23A4F538L}},{{5L,0x124C1B73L,0x3CBDE2E2L,0x23A4F538L},{5L,0x124C1B73L,0x3CBDE2E2L,0x23A4F538L},{5L,0x124C1B73L,0x3CBDE2E2L,0x23A4F538L},{5L,0x124C1B73L,0x3CBDE2E2L,0x23A4F538L},{5L,0x124C1B73L,0x3CBDE2E2L,0x23A4F538L},{5L,0x124C1B73L,0x3CBDE2E2L,0x23A4F538L},{5L,0x124C1B73L,0x3CBDE2E2L,0x23A4F538L}},{{5L,0x124C1B73L,0x3CBDE2E2L,0x23A4F538L},{5L,0x124C1B73L,0x3CBDE2E2L,0x23A4F538L},{5L,0x124C1B73L,0x3CBDE2E2L,0x23A4F538L},{5L,0x124C1B73L,0x3CBDE2E2L,0x23A4F538L},{5L,0x124C1B73L,0x3CBDE2E2L,0x23A4F538L},{5L,0x124C1B73L,0x3CBDE2E2L,0x23A4F538L},{5L,0x124C1B73L,0x3CBDE2E2L,0x23A4F538L}},{{5L,0x124C1B73L,0x3CBDE2E2L,0x23A4F538L},{5L,0x124C1B73L,0x3CBDE2E2L,0x23A4F538L},{5L,0x124C1B73L,0x3CBDE2E2L,0x23A4F538L},{5L,0x124C1B73L,0x3CBDE2E2L,0x23A4F538L},{5L,0x124C1B73L,0x3CBDE2E2L,0x23A4F538L},{5L,0x124C1B73L,0x3CBDE2E2L,0x23A4F538L},{5L,0x124C1B73L,0x3CBDE2E2L,0x23A4F538L}},{{5L,0x124C1B73L,0x3CBDE2E2L,0x23A4F538L},{5L,0x124C1B73L,0x3CBDE2E2L,0x23A4F538L},{5L,0x124C1B73L,0x3CBDE2E2L,0x23A4F538L},{5L,0x124C1B73L,0x3CBDE2E2L,0x23A4F538L},{5L,0x124C1B73L,0x3CBDE2E2L,0x23A4F538L},{5L,0x124C1B73L,0x3CBDE2E2L,0x23A4F538L},{5L,0x124C1B73L,0x3CBDE2E2L,0x23A4F538L}},{{5L,0x124C1B73L,0x3CBDE2E2L,0x23A4F538L},{5L,0x124C1B73L,0x3CBDE2E2L,0x23A4F538L},{5L,0x124C1B73L,0x3CBDE2E2L,0x23A4F538L},{5L,0x124C1B73L,0x3CBDE2E2L,0x23A4F538L},{5L,0x124C1B73L,0x3CBDE2E2L,0x23A4F538L},{5L,0x124C1B73L,0x3CBDE2E2L,0x23A4F538L},{5L,0x124C1B73L,0x3CBDE2E2L,0x23A4F538L}},{{5L,0x124C1B73L,0x3CBDE2E2L,0x23A4F538L},{5L,0x124C1B73L,0x3CBDE2E2L,0x23A4F538L},{5L,0x124C1B73L,0x3CBDE2E2L,0x23A4F538L},{5L,0x124C1B73L,0x3CBDE2E2L,0x23A4F538L},{5L,0x124C1B73L,0x3CBDE2E2L,0x23A4F538L},{5L,0x124C1B73L,0x3CBDE2E2L,0x23A4F538L},{5L,0x124C1B73L,0x3CBDE2E2L,0x23A4F538L}},{{5L,0x124C1B73L,0x3CBDE2E2L,0x23A4F538L},{5L,0x124C1B73L,0x3CBDE2E2L,0x23A4F538L},{5L,0x124C1B73L,0x3CBDE2E2L,0x23A4F538L},{5L,0x124C1B73L,0x3CBDE2E2L,0x23A4F538L},{5L,0x124C1B73L,0x3CBDE2E2L,0x23A4F538L},{5L,0x124C1B73L,0x3CBDE2E2L,0x23A4F538L},{5L,0x124C1B73L,0x3CBDE2E2L,0x23A4F538L}}};
        int32_t **l_1978 = &p_1979->g_1975[2][1][0];
        int i, j, k;
        (*p_1979->g_1402) = l_1968[3][5][4];
        for (p_1979->g_206 = 4; (p_1979->g_206 != (-7)); p_1979->g_206 = safe_sub_func_uint16_t_u_u(p_1979->g_206, 2))
        { /* block id: 1054 */
            union U0 *l_1976 = &p_1979->g_1791[2][0][2];
            for (l_1869 = 0; (l_1869 == (-30)); l_1869--)
            { /* block id: 1057 */
                int32_t l_1973 = 0x11366145L;
                l_1973 ^= (1L >= 0xB26426FA2C5C385EL);
                l_1974[4][4][2] = ((*p_1979->g_1563) = 0x335A4E85L);
            }
            (*p_1979->g_422) = func_40(func_40(p_1979->g_1975[0][3][0], p_1979), p_1979);
            (*p_1979->g_1402) = l_1976;
        }
        l_1977 = (*p_1979->g_667);
        (*l_1978) = (void*)0;
    }
    return p_1979->g_280;
}


/* ------------------------------------------ */
/* 
 * reads : p_1979->g_1563 p_1979->g_89
 * writes: p_1979->g_423
 */
int32_t  func_18(int32_t * p_19, int32_t  p_20, int64_t  p_21, struct S1 * p_1979)
{ /* block id: 972 */
    int32_t **l_1754 = &p_1979->g_423;
    (*l_1754) = (void*)0;
    return (*p_1979->g_1563);
}


/* ------------------------------------------ */
/* 
 * reads : p_1979->g_221 p_1979->g_422 p_1979->g_423 p_1979->g_1563
 * writes: p_1979->g_221 p_1979->g_1563
 */
int32_t * func_22(uint32_t  p_23, uint32_t  p_24, uint32_t  p_25, struct S1 * p_1979)
{ /* block id: 872 */
    int32_t l_1649 = 0x168457CAL;
    int32_t l_1685[8] = {0x39E570B0L,1L,0x39E570B0L,0x39E570B0L,1L,0x39E570B0L,0x39E570B0L,1L};
    union U0 *l_1686 = &p_1979->g_1076;
    uint16_t l_1700 = 2UL;
    int32_t **l_1713 = &p_1979->g_1563;
    int i;
    for (p_1979->g_221 = (-8); (p_1979->g_221 == 16); p_1979->g_221 = safe_add_func_uint16_t_u_u(p_1979->g_221, 5))
    { /* block id: 875 */
        int32_t l_1618 = (-8L);
        int16_t **l_1633 = &p_1979->g_524;
        int32_t l_1695 = 0x5EFA6A60L;
        int32_t l_1696 = 0L;
        int32_t l_1697 = 1L;
        int32_t l_1698 = 0x51957ADCL;
        int32_t l_1699[2];
        uint64_t *l_1736 = &p_1979->g_905;
        int8_t *l_1737 = (void*)0;
        int8_t *l_1738 = (void*)0;
        int8_t *l_1739 = &p_1979->g_1615;
        int8_t *l_1740 = &p_1979->g_146[1];
        int32_t l_1741 = (-7L);
        int64_t *l_1742 = &p_1979->g_1561;
        int64_t *l_1743 = &p_1979->g_1744;
        int16_t l_1748 = (-1L);
        int32_t *l_1753 = &l_1741;
        int i;
        for (i = 0; i < 2; i++)
            l_1699[i] = (-6L);
        (1 + 1);
    }
    (*l_1713) = (*p_1979->g_422);
    return (*l_1713);
}


/* ------------------------------------------ */
/* 
 * reads : p_1979->g_376 p_1979->g_1326 p_1979->g_1103 p_1979->g_1181 p_1979->g_1335 p_1979->g_185 p_1979->g_422 p_1979->g_423 p_1979->g_279 p_1979->g_280 p_1979->g_1539 p_1979->g_91 p_1979->g_1550 p_1979->g_146 p_1979->g_1152 p_1979->g_924 p_1979->g_925 p_1979->g_475 p_1979->g_191 p_1979->g_524 p_1979->g_1563 p_1979->g_703 p_1979->g_944 p_1979->g_945 p_1979->g_89 p_1979->g_498 p_1979->g_923 p_1979->g_340 p_1979->g_904 p_1979->g_561 p_1979->g_702
 * writes: p_1979->g_376 p_1979->g_1103 p_1979->g_1326 p_1979->g_449 p_1979->g_423 p_1979->g_185 p_1979->g_89 p_1979->g_280 p_1979->g_114 p_1979->g_1539 p_1979->g_91 p_1979->g_146 p_1979->g_1152 p_1979->g_191 p_1979->g_90 p_1979->g_1561 p_1979->g_498 p_1979->g_905 p_1979->g_904
 */
uint32_t  func_34(int32_t * p_35, int32_t  p_36, int32_t * p_37, uint32_t  p_38, int32_t * p_39, struct S1 * p_1979)
{ /* block id: 656 */
    uint8_t l_1305 = 0x03L;
    int32_t l_1315 = (-6L);
    int32_t l_1320 = (-3L);
    int32_t l_1321 = (-5L);
    int32_t l_1322 = 0x00B2A19CL;
    int32_t l_1323 = 0x51F89E27L;
    int32_t l_1324 = 0x59C5AC68L;
    int16_t l_1325[2];
    int32_t l_1343 = (-1L);
    int32_t l_1344 = (-6L);
    int32_t *l_1345 = &l_1315;
    int8_t l_1350[5] = {0L,0L,0L,0L,0L};
    int32_t **l_1379 = &l_1345;
    uint16_t ******l_1397[8] = {&p_1979->g_1003,&p_1979->g_1003,&p_1979->g_1003,&p_1979->g_1003,&p_1979->g_1003,&p_1979->g_1003,&p_1979->g_1003,&p_1979->g_1003};
    uint32_t ***l_1407 = &p_1979->g_702;
    int8_t l_1477[8][10] = {{0x33L,0x05L,0x5DL,7L,0x1DL,0L,0L,0x5DL,(-9L),0x57L},{0x33L,0x05L,0x5DL,7L,0x1DL,0L,0L,0x5DL,(-9L),0x57L},{0x33L,0x05L,0x5DL,7L,0x1DL,0L,0L,0x5DL,(-9L),0x57L},{0x33L,0x05L,0x5DL,7L,0x1DL,0L,0L,0x5DL,(-9L),0x57L},{0x33L,0x05L,0x5DL,7L,0x1DL,0L,0L,0x5DL,(-9L),0x57L},{0x33L,0x05L,0x5DL,7L,0x1DL,0L,0L,0x5DL,(-9L),0x57L},{0x33L,0x05L,0x5DL,7L,0x1DL,0L,0L,0x5DL,(-9L),0x57L},{0x33L,0x05L,0x5DL,7L,0x1DL,0L,0L,0x5DL,(-9L),0x57L}};
    uint8_t *****l_1485 = &p_1979->g_1116;
    uint64_t *l_1545 = &p_1979->g_221;
    uint64_t **l_1544[7];
    int16_t l_1562[3];
    int32_t l_1581 = 0x4B818835L;
    int32_t l_1582 = 0x54ED41CCL;
    int32_t l_1583 = (-5L);
    int32_t l_1584 = 0x256D4258L;
    int32_t l_1585 = 0x0366F89DL;
    int32_t l_1586 = 0x2F398601L;
    int32_t l_1587 = 0x47B3210DL;
    int32_t l_1588[6] = {0x41EFB2DCL,0x41EFB2DCL,0x41EFB2DCL,0x41EFB2DCL,0x41EFB2DCL,0x41EFB2DCL};
    int64_t l_1594 = 0x272F053816869DF4L;
    int8_t l_1611[2];
    int i, j;
    for (i = 0; i < 2; i++)
        l_1325[i] = (-1L);
    for (i = 0; i < 7; i++)
        l_1544[i] = &l_1545;
    for (i = 0; i < 3; i++)
        l_1562[i] = (-6L);
    for (i = 0; i < 2; i++)
        l_1611[i] = 0L;
    ++l_1305;
    for (p_1979->g_376 = 0; (p_1979->g_376 > 20); p_1979->g_376 = safe_add_func_int32_t_s_s(p_1979->g_376, 4))
    { /* block id: 660 */
        int16_t l_1310[10][6] = {{0x647DL,0x64DEL,(-6L),0x64DEL,0x647DL,0x647DL},{0x647DL,0x64DEL,(-6L),0x64DEL,0x647DL,0x647DL},{0x647DL,0x64DEL,(-6L),0x64DEL,0x647DL,0x647DL},{0x647DL,0x64DEL,(-6L),0x64DEL,0x647DL,0x647DL},{0x647DL,0x64DEL,(-6L),0x64DEL,0x647DL,0x647DL},{0x647DL,0x64DEL,(-6L),0x64DEL,0x647DL,0x647DL},{0x647DL,0x64DEL,(-6L),0x64DEL,0x647DL,0x647DL},{0x647DL,0x64DEL,(-6L),0x64DEL,0x647DL,0x647DL},{0x647DL,0x64DEL,(-6L),0x64DEL,0x647DL,0x647DL},{0x647DL,0x64DEL,(-6L),0x64DEL,0x647DL,0x647DL}};
        int32_t l_1319[4][5];
        int i, j;
        for (i = 0; i < 4; i++)
        {
            for (j = 0; j < 5; j++)
                l_1319[i][j] = 0x4F7C10C1L;
        }
        for (p_1979->g_1103 = 0; (p_1979->g_1103 <= 4); p_1979->g_1103 += 1)
        { /* block id: 663 */
            int32_t *l_1311 = (void*)0;
            int32_t *l_1312 = &p_1979->g_89;
            int32_t l_1313 = 0x1696ED49L;
            int32_t *l_1314 = &l_1313;
            int32_t *l_1316 = &p_1979->g_3;
            int32_t *l_1317 = &p_1979->g_5;
            int32_t *l_1318[2][9] = {{&l_1315,&p_1979->g_94,&p_1979->g_94,&l_1315,&l_1315,&p_1979->g_94,&p_1979->g_94,&l_1315,&l_1315},{&l_1315,&p_1979->g_94,&p_1979->g_94,&l_1315,&l_1315,&p_1979->g_94,&p_1979->g_94,&l_1315,&l_1315}};
            uint64_t l_1329 = 9UL;
            int i, j;
            ++p_1979->g_1326;
            l_1312 = p_37;
            ++l_1329;
            if (p_1979->g_1181[p_1979->g_1103])
                break;
            for (p_1979->g_449 = 0; (p_1979->g_449 <= 3); p_1979->g_449 += 1)
            { /* block id: 670 */
                int32_t **l_1332 = (void*)0;
                int32_t **l_1334 = (void*)0;
                (*p_1979->g_1335) = func_40(p_39, p_1979);
            }
        }
        for (l_1305 = 8; (l_1305 > 27); l_1305++)
        { /* block id: 676 */
            int32_t **l_1338[5];
            int32_t *l_1348 = (void*)0;
            int i;
            for (i = 0; i < 5; i++)
                l_1338[i] = &p_1979->g_423;
            (1 + 1);
        }
    }
    if ((FAKE_DIVERGE(p_1979->group_2_offset, get_group_id(2), 10) > (FAKE_DIVERGE(p_1979->global_1_offset, get_global_id(1), 10) , 2UL)))
    { /* block id: 693 */
        int32_t *l_1349 = &l_1322;
        l_1349 = p_35;
    }
    else
    { /* block id: 695 */
        uint8_t l_1354 = 0xBFL;
        int32_t l_1373 = 0x20E15FF1L;
        int32_t l_1385 = 0x66884837L;
        int32_t l_1387[9][8] = {{0x467F84A1L,0x5CD7B41CL,0x467F84A1L,0x467F84A1L,0x5CD7B41CL,0x467F84A1L,0x467F84A1L,0x5CD7B41CL},{0x467F84A1L,0x5CD7B41CL,0x467F84A1L,0x467F84A1L,0x5CD7B41CL,0x467F84A1L,0x467F84A1L,0x5CD7B41CL},{0x467F84A1L,0x5CD7B41CL,0x467F84A1L,0x467F84A1L,0x5CD7B41CL,0x467F84A1L,0x467F84A1L,0x5CD7B41CL},{0x467F84A1L,0x5CD7B41CL,0x467F84A1L,0x467F84A1L,0x5CD7B41CL,0x467F84A1L,0x467F84A1L,0x5CD7B41CL},{0x467F84A1L,0x5CD7B41CL,0x467F84A1L,0x467F84A1L,0x5CD7B41CL,0x467F84A1L,0x467F84A1L,0x5CD7B41CL},{0x467F84A1L,0x5CD7B41CL,0x467F84A1L,0x467F84A1L,0x5CD7B41CL,0x467F84A1L,0x467F84A1L,0x5CD7B41CL},{0x467F84A1L,0x5CD7B41CL,0x467F84A1L,0x467F84A1L,0x5CD7B41CL,0x467F84A1L,0x467F84A1L,0x5CD7B41CL},{0x467F84A1L,0x5CD7B41CL,0x467F84A1L,0x467F84A1L,0x5CD7B41CL,0x467F84A1L,0x467F84A1L,0x5CD7B41CL},{0x467F84A1L,0x5CD7B41CL,0x467F84A1L,0x467F84A1L,0x5CD7B41CL,0x467F84A1L,0x467F84A1L,0x5CD7B41CL}};
        union U0 **l_1405[9][5][5] = {{{&p_1979->g_1403,(void*)0,&p_1979->g_1403,&p_1979->g_1403,&p_1979->g_1403},{&p_1979->g_1403,(void*)0,&p_1979->g_1403,&p_1979->g_1403,&p_1979->g_1403},{&p_1979->g_1403,(void*)0,&p_1979->g_1403,&p_1979->g_1403,&p_1979->g_1403},{&p_1979->g_1403,(void*)0,&p_1979->g_1403,&p_1979->g_1403,&p_1979->g_1403},{&p_1979->g_1403,(void*)0,&p_1979->g_1403,&p_1979->g_1403,&p_1979->g_1403}},{{&p_1979->g_1403,(void*)0,&p_1979->g_1403,&p_1979->g_1403,&p_1979->g_1403},{&p_1979->g_1403,(void*)0,&p_1979->g_1403,&p_1979->g_1403,&p_1979->g_1403},{&p_1979->g_1403,(void*)0,&p_1979->g_1403,&p_1979->g_1403,&p_1979->g_1403},{&p_1979->g_1403,(void*)0,&p_1979->g_1403,&p_1979->g_1403,&p_1979->g_1403},{&p_1979->g_1403,(void*)0,&p_1979->g_1403,&p_1979->g_1403,&p_1979->g_1403}},{{&p_1979->g_1403,(void*)0,&p_1979->g_1403,&p_1979->g_1403,&p_1979->g_1403},{&p_1979->g_1403,(void*)0,&p_1979->g_1403,&p_1979->g_1403,&p_1979->g_1403},{&p_1979->g_1403,(void*)0,&p_1979->g_1403,&p_1979->g_1403,&p_1979->g_1403},{&p_1979->g_1403,(void*)0,&p_1979->g_1403,&p_1979->g_1403,&p_1979->g_1403},{&p_1979->g_1403,(void*)0,&p_1979->g_1403,&p_1979->g_1403,&p_1979->g_1403}},{{&p_1979->g_1403,(void*)0,&p_1979->g_1403,&p_1979->g_1403,&p_1979->g_1403},{&p_1979->g_1403,(void*)0,&p_1979->g_1403,&p_1979->g_1403,&p_1979->g_1403},{&p_1979->g_1403,(void*)0,&p_1979->g_1403,&p_1979->g_1403,&p_1979->g_1403},{&p_1979->g_1403,(void*)0,&p_1979->g_1403,&p_1979->g_1403,&p_1979->g_1403},{&p_1979->g_1403,(void*)0,&p_1979->g_1403,&p_1979->g_1403,&p_1979->g_1403}},{{&p_1979->g_1403,(void*)0,&p_1979->g_1403,&p_1979->g_1403,&p_1979->g_1403},{&p_1979->g_1403,(void*)0,&p_1979->g_1403,&p_1979->g_1403,&p_1979->g_1403},{&p_1979->g_1403,(void*)0,&p_1979->g_1403,&p_1979->g_1403,&p_1979->g_1403},{&p_1979->g_1403,(void*)0,&p_1979->g_1403,&p_1979->g_1403,&p_1979->g_1403},{&p_1979->g_1403,(void*)0,&p_1979->g_1403,&p_1979->g_1403,&p_1979->g_1403}},{{&p_1979->g_1403,(void*)0,&p_1979->g_1403,&p_1979->g_1403,&p_1979->g_1403},{&p_1979->g_1403,(void*)0,&p_1979->g_1403,&p_1979->g_1403,&p_1979->g_1403},{&p_1979->g_1403,(void*)0,&p_1979->g_1403,&p_1979->g_1403,&p_1979->g_1403},{&p_1979->g_1403,(void*)0,&p_1979->g_1403,&p_1979->g_1403,&p_1979->g_1403},{&p_1979->g_1403,(void*)0,&p_1979->g_1403,&p_1979->g_1403,&p_1979->g_1403}},{{&p_1979->g_1403,(void*)0,&p_1979->g_1403,&p_1979->g_1403,&p_1979->g_1403},{&p_1979->g_1403,(void*)0,&p_1979->g_1403,&p_1979->g_1403,&p_1979->g_1403},{&p_1979->g_1403,(void*)0,&p_1979->g_1403,&p_1979->g_1403,&p_1979->g_1403},{&p_1979->g_1403,(void*)0,&p_1979->g_1403,&p_1979->g_1403,&p_1979->g_1403},{&p_1979->g_1403,(void*)0,&p_1979->g_1403,&p_1979->g_1403,&p_1979->g_1403}},{{&p_1979->g_1403,(void*)0,&p_1979->g_1403,&p_1979->g_1403,&p_1979->g_1403},{&p_1979->g_1403,(void*)0,&p_1979->g_1403,&p_1979->g_1403,&p_1979->g_1403},{&p_1979->g_1403,(void*)0,&p_1979->g_1403,&p_1979->g_1403,&p_1979->g_1403},{&p_1979->g_1403,(void*)0,&p_1979->g_1403,&p_1979->g_1403,&p_1979->g_1403},{&p_1979->g_1403,(void*)0,&p_1979->g_1403,&p_1979->g_1403,&p_1979->g_1403}},{{&p_1979->g_1403,(void*)0,&p_1979->g_1403,&p_1979->g_1403,&p_1979->g_1403},{&p_1979->g_1403,(void*)0,&p_1979->g_1403,&p_1979->g_1403,&p_1979->g_1403},{&p_1979->g_1403,(void*)0,&p_1979->g_1403,&p_1979->g_1403,&p_1979->g_1403},{&p_1979->g_1403,(void*)0,&p_1979->g_1403,&p_1979->g_1403,&p_1979->g_1403},{&p_1979->g_1403,(void*)0,&p_1979->g_1403,&p_1979->g_1403,&p_1979->g_1403}}};
        uint16_t *****l_1441 = &p_1979->g_1004;
        uint32_t l_1478 = 0UL;
        int64_t **l_1505 = (void*)0;
        uint8_t **l_1507 = &p_1979->g_279;
        int16_t l_1509[6][5][8] = {{{0L,0x66F4L,0x196EL,(-4L),0x456CL,0x1E57L,2L,6L},{0L,0x66F4L,0x196EL,(-4L),0x456CL,0x1E57L,2L,6L},{0L,0x66F4L,0x196EL,(-4L),0x456CL,0x1E57L,2L,6L},{0L,0x66F4L,0x196EL,(-4L),0x456CL,0x1E57L,2L,6L},{0L,0x66F4L,0x196EL,(-4L),0x456CL,0x1E57L,2L,6L}},{{0L,0x66F4L,0x196EL,(-4L),0x456CL,0x1E57L,2L,6L},{0L,0x66F4L,0x196EL,(-4L),0x456CL,0x1E57L,2L,6L},{0L,0x66F4L,0x196EL,(-4L),0x456CL,0x1E57L,2L,6L},{0L,0x66F4L,0x196EL,(-4L),0x456CL,0x1E57L,2L,6L},{0L,0x66F4L,0x196EL,(-4L),0x456CL,0x1E57L,2L,6L}},{{0L,0x66F4L,0x196EL,(-4L),0x456CL,0x1E57L,2L,6L},{0L,0x66F4L,0x196EL,(-4L),0x456CL,0x1E57L,2L,6L},{0L,0x66F4L,0x196EL,(-4L),0x456CL,0x1E57L,2L,6L},{0L,0x66F4L,0x196EL,(-4L),0x456CL,0x1E57L,2L,6L},{0L,0x66F4L,0x196EL,(-4L),0x456CL,0x1E57L,2L,6L}},{{0L,0x66F4L,0x196EL,(-4L),0x456CL,0x1E57L,2L,6L},{0L,0x66F4L,0x196EL,(-4L),0x456CL,0x1E57L,2L,6L},{0L,0x66F4L,0x196EL,(-4L),0x456CL,0x1E57L,2L,6L},{0L,0x66F4L,0x196EL,(-4L),0x456CL,0x1E57L,2L,6L},{0L,0x66F4L,0x196EL,(-4L),0x456CL,0x1E57L,2L,6L}},{{0L,0x66F4L,0x196EL,(-4L),0x456CL,0x1E57L,2L,6L},{0L,0x66F4L,0x196EL,(-4L),0x456CL,0x1E57L,2L,6L},{0L,0x66F4L,0x196EL,(-4L),0x456CL,0x1E57L,2L,6L},{0L,0x66F4L,0x196EL,(-4L),0x456CL,0x1E57L,2L,6L},{0L,0x66F4L,0x196EL,(-4L),0x456CL,0x1E57L,2L,6L}},{{0L,0x66F4L,0x196EL,(-4L),0x456CL,0x1E57L,2L,6L},{0L,0x66F4L,0x196EL,(-4L),0x456CL,0x1E57L,2L,6L},{0L,0x66F4L,0x196EL,(-4L),0x456CL,0x1E57L,2L,6L},{0L,0x66F4L,0x196EL,(-4L),0x456CL,0x1E57L,2L,6L},{0L,0x66F4L,0x196EL,(-4L),0x456CL,0x1E57L,2L,6L}}};
        int i, j, k;
        for (p_1979->g_185 = 0; (p_1979->g_185 <= 3); p_1979->g_185 += 1)
        { /* block id: 698 */
            int32_t *l_1351 = &p_1979->g_94;
            int32_t *l_1352 = &p_1979->g_89;
            int32_t *l_1353[6] = {&p_1979->g_94,&p_1979->g_94,&p_1979->g_94,&p_1979->g_94,&p_1979->g_94,&p_1979->g_94};
            union U0 ***l_1425[10][9] = {{&p_1979->g_1402,&l_1405[2][2][4],&l_1405[3][3][1],&p_1979->g_1402,&l_1405[2][2][4],&p_1979->g_1402,&l_1405[3][3][1],&l_1405[2][2][4],&p_1979->g_1402},{&p_1979->g_1402,&l_1405[2][2][4],&l_1405[3][3][1],&p_1979->g_1402,&l_1405[2][2][4],&p_1979->g_1402,&l_1405[3][3][1],&l_1405[2][2][4],&p_1979->g_1402},{&p_1979->g_1402,&l_1405[2][2][4],&l_1405[3][3][1],&p_1979->g_1402,&l_1405[2][2][4],&p_1979->g_1402,&l_1405[3][3][1],&l_1405[2][2][4],&p_1979->g_1402},{&p_1979->g_1402,&l_1405[2][2][4],&l_1405[3][3][1],&p_1979->g_1402,&l_1405[2][2][4],&p_1979->g_1402,&l_1405[3][3][1],&l_1405[2][2][4],&p_1979->g_1402},{&p_1979->g_1402,&l_1405[2][2][4],&l_1405[3][3][1],&p_1979->g_1402,&l_1405[2][2][4],&p_1979->g_1402,&l_1405[3][3][1],&l_1405[2][2][4],&p_1979->g_1402},{&p_1979->g_1402,&l_1405[2][2][4],&l_1405[3][3][1],&p_1979->g_1402,&l_1405[2][2][4],&p_1979->g_1402,&l_1405[3][3][1],&l_1405[2][2][4],&p_1979->g_1402},{&p_1979->g_1402,&l_1405[2][2][4],&l_1405[3][3][1],&p_1979->g_1402,&l_1405[2][2][4],&p_1979->g_1402,&l_1405[3][3][1],&l_1405[2][2][4],&p_1979->g_1402},{&p_1979->g_1402,&l_1405[2][2][4],&l_1405[3][3][1],&p_1979->g_1402,&l_1405[2][2][4],&p_1979->g_1402,&l_1405[3][3][1],&l_1405[2][2][4],&p_1979->g_1402},{&p_1979->g_1402,&l_1405[2][2][4],&l_1405[3][3][1],&p_1979->g_1402,&l_1405[2][2][4],&p_1979->g_1402,&l_1405[3][3][1],&l_1405[2][2][4],&p_1979->g_1402},{&p_1979->g_1402,&l_1405[2][2][4],&l_1405[3][3][1],&p_1979->g_1402,&l_1405[2][2][4],&p_1979->g_1402,&l_1405[3][3][1],&l_1405[2][2][4],&p_1979->g_1402}};
            int8_t ***l_1454 = &p_1979->g_946;
            uint16_t ***l_1467 = (void*)0;
            int32_t *l_1475 = &l_1320;
            int i, j;
            ++l_1354;
            for (p_1979->g_1103 = 0; (p_1979->g_1103 <= 1); p_1979->g_1103 += 1)
            { /* block id: 702 */
                int32_t **l_1357 = &l_1351;
                int8_t ***l_1364[4];
                int64_t *l_1372 = &p_1979->g_340[5][3][1];
                int32_t l_1388 = 0x007EF442L;
                int32_t l_1391 = 0x31B64413L;
                int64_t *l_1406 = &p_1979->g_449;
                uint32_t ****l_1408 = (void*)0;
                uint64_t *l_1411 = (void*)0;
                uint64_t *l_1412 = (void*)0;
                uint64_t *l_1413 = &p_1979->g_905;
                int8_t l_1420 = (-1L);
                uint16_t *****l_1442 = (void*)0;
                uint8_t *l_1496 = (void*)0;
                int8_t l_1512 = 9L;
                int i;
                for (i = 0; i < 4; i++)
                    l_1364[i] = (void*)0;
                (*l_1357) = (void*)0;
            }
        }
        for (l_1344 = 12; (l_1344 >= (-7)); --l_1344)
        { /* block id: 812 */
            (**p_1979->g_422) = 7L;
            for (l_1321 = 0; (l_1321 == (-26)); --l_1321)
            { /* block id: 816 */
                int32_t l_1532 = 0x56349043L;
                int32_t l_1534[6][5] = {{(-1L),0L,1L,0L,0L},{(-1L),0L,1L,0L,0L},{(-1L),0L,1L,0L,0L},{(-1L),0L,1L,0L,0L},{(-1L),0L,1L,0L,0L},{(-1L),0L,1L,0L,0L}};
                int i, j;
                if ((GROUP_DIVERGE(2, 1) || p_38))
                { /* block id: 817 */
                    uint8_t *l_1522 = (void*)0;
                    uint8_t *l_1523 = (void*)0;
                    uint8_t *l_1524 = &p_1979->g_114;
                    (*p_37) ^= (safe_mul_func_uint8_t_u_u(((*l_1524) = (++(*p_1979->g_279))), (l_1354 , ((*l_1507) == (void*)0))));
                    if ((*p_37))
                        break;
                    (*l_1379) = (*p_1979->g_422);
                }
                else
                { /* block id: 824 */
                    int16_t l_1527 = 1L;
                    int32_t l_1533 = 0x421766C4L;
                    int32_t l_1538[7][8][2] = {{{0x03F641AFL,0x48066AB5L},{0x03F641AFL,0x48066AB5L},{0x03F641AFL,0x48066AB5L},{0x03F641AFL,0x48066AB5L},{0x03F641AFL,0x48066AB5L},{0x03F641AFL,0x48066AB5L},{0x03F641AFL,0x48066AB5L},{0x03F641AFL,0x48066AB5L}},{{0x03F641AFL,0x48066AB5L},{0x03F641AFL,0x48066AB5L},{0x03F641AFL,0x48066AB5L},{0x03F641AFL,0x48066AB5L},{0x03F641AFL,0x48066AB5L},{0x03F641AFL,0x48066AB5L},{0x03F641AFL,0x48066AB5L},{0x03F641AFL,0x48066AB5L}},{{0x03F641AFL,0x48066AB5L},{0x03F641AFL,0x48066AB5L},{0x03F641AFL,0x48066AB5L},{0x03F641AFL,0x48066AB5L},{0x03F641AFL,0x48066AB5L},{0x03F641AFL,0x48066AB5L},{0x03F641AFL,0x48066AB5L},{0x03F641AFL,0x48066AB5L}},{{0x03F641AFL,0x48066AB5L},{0x03F641AFL,0x48066AB5L},{0x03F641AFL,0x48066AB5L},{0x03F641AFL,0x48066AB5L},{0x03F641AFL,0x48066AB5L},{0x03F641AFL,0x48066AB5L},{0x03F641AFL,0x48066AB5L},{0x03F641AFL,0x48066AB5L}},{{0x03F641AFL,0x48066AB5L},{0x03F641AFL,0x48066AB5L},{0x03F641AFL,0x48066AB5L},{0x03F641AFL,0x48066AB5L},{0x03F641AFL,0x48066AB5L},{0x03F641AFL,0x48066AB5L},{0x03F641AFL,0x48066AB5L},{0x03F641AFL,0x48066AB5L}},{{0x03F641AFL,0x48066AB5L},{0x03F641AFL,0x48066AB5L},{0x03F641AFL,0x48066AB5L},{0x03F641AFL,0x48066AB5L},{0x03F641AFL,0x48066AB5L},{0x03F641AFL,0x48066AB5L},{0x03F641AFL,0x48066AB5L},{0x03F641AFL,0x48066AB5L}},{{0x03F641AFL,0x48066AB5L},{0x03F641AFL,0x48066AB5L},{0x03F641AFL,0x48066AB5L},{0x03F641AFL,0x48066AB5L},{0x03F641AFL,0x48066AB5L},{0x03F641AFL,0x48066AB5L},{0x03F641AFL,0x48066AB5L},{0x03F641AFL,0x48066AB5L}}};
                    int i, j, k;
                    (*l_1379) = &l_1385;
                    for (l_1320 = 13; (l_1320 > 14); l_1320 = safe_add_func_uint16_t_u_u(l_1320, 3))
                    { /* block id: 828 */
                        int32_t *l_1528 = (void*)0;
                        int32_t *l_1529 = &p_1979->g_89;
                        int32_t *l_1530 = &l_1343;
                        int32_t *l_1531 = &l_1315;
                        int32_t *l_1535 = &l_1323;
                        int32_t *l_1536 = &l_1385;
                        int32_t *l_1537[4] = {&l_1387[7][4],&l_1387[7][4],&l_1387[7][4],&l_1387[7][4]};
                        int i;
                        --p_1979->g_1539;
                        (*l_1379) = (*l_1379);
                    }
                }
            }
        }
    }
    for (p_1979->g_91 = (-21); (p_1979->g_91 < 4); ++p_1979->g_91)
    { /* block id: 838 */
        uint64_t ***l_1546 = &l_1544[3];
        uint32_t l_1549 = 0xC146DE25L;
        int8_t *l_1551[4][8][2] = {{{&p_1979->g_146[4],&l_1350[1]},{&p_1979->g_146[4],&l_1350[1]},{&p_1979->g_146[4],&l_1350[1]},{&p_1979->g_146[4],&l_1350[1]},{&p_1979->g_146[4],&l_1350[1]},{&p_1979->g_146[4],&l_1350[1]},{&p_1979->g_146[4],&l_1350[1]},{&p_1979->g_146[4],&l_1350[1]}},{{&p_1979->g_146[4],&l_1350[1]},{&p_1979->g_146[4],&l_1350[1]},{&p_1979->g_146[4],&l_1350[1]},{&p_1979->g_146[4],&l_1350[1]},{&p_1979->g_146[4],&l_1350[1]},{&p_1979->g_146[4],&l_1350[1]},{&p_1979->g_146[4],&l_1350[1]},{&p_1979->g_146[4],&l_1350[1]}},{{&p_1979->g_146[4],&l_1350[1]},{&p_1979->g_146[4],&l_1350[1]},{&p_1979->g_146[4],&l_1350[1]},{&p_1979->g_146[4],&l_1350[1]},{&p_1979->g_146[4],&l_1350[1]},{&p_1979->g_146[4],&l_1350[1]},{&p_1979->g_146[4],&l_1350[1]},{&p_1979->g_146[4],&l_1350[1]}},{{&p_1979->g_146[4],&l_1350[1]},{&p_1979->g_146[4],&l_1350[1]},{&p_1979->g_146[4],&l_1350[1]},{&p_1979->g_146[4],&l_1350[1]},{&p_1979->g_146[4],&l_1350[1]},{&p_1979->g_146[4],&l_1350[1]},{&p_1979->g_146[4],&l_1350[1]},{&p_1979->g_146[4],&l_1350[1]}}};
        uint32_t l_1552[1];
        uint16_t **l_1559 = &p_1979->g_475;
        int64_t *l_1560 = &p_1979->g_1561;
        int32_t l_1575 = 0x2B88D77AL;
        int32_t l_1577[9];
        int32_t l_1580 = (-6L);
        int32_t l_1589 = (-2L);
        int8_t l_1591 = 0x53L;
        int16_t l_1592 = (-1L);
        uint8_t l_1595 = 0x47L;
        uint8_t **l_1604 = &p_1979->g_279;
        int32_t ****l_1609 = &p_1979->g_615;
        int32_t ****l_1610 = (void*)0;
        int16_t *l_1612 = &l_1325[1];
        int16_t *l_1613[6][2][10] = {{{&p_1979->g_1103,&p_1979->g_1103,&p_1979->g_376,&l_1592,&p_1979->g_77,&l_1592,&p_1979->g_376,&p_1979->g_1103,&p_1979->g_1103,&p_1979->g_376},{&p_1979->g_1103,&p_1979->g_1103,&p_1979->g_376,&l_1592,&p_1979->g_77,&l_1592,&p_1979->g_376,&p_1979->g_1103,&p_1979->g_1103,&p_1979->g_376}},{{&p_1979->g_1103,&p_1979->g_1103,&p_1979->g_376,&l_1592,&p_1979->g_77,&l_1592,&p_1979->g_376,&p_1979->g_1103,&p_1979->g_1103,&p_1979->g_376},{&p_1979->g_1103,&p_1979->g_1103,&p_1979->g_376,&l_1592,&p_1979->g_77,&l_1592,&p_1979->g_376,&p_1979->g_1103,&p_1979->g_1103,&p_1979->g_376}},{{&p_1979->g_1103,&p_1979->g_1103,&p_1979->g_376,&l_1592,&p_1979->g_77,&l_1592,&p_1979->g_376,&p_1979->g_1103,&p_1979->g_1103,&p_1979->g_376},{&p_1979->g_1103,&p_1979->g_1103,&p_1979->g_376,&l_1592,&p_1979->g_77,&l_1592,&p_1979->g_376,&p_1979->g_1103,&p_1979->g_1103,&p_1979->g_376}},{{&p_1979->g_1103,&p_1979->g_1103,&p_1979->g_376,&l_1592,&p_1979->g_77,&l_1592,&p_1979->g_376,&p_1979->g_1103,&p_1979->g_1103,&p_1979->g_376},{&p_1979->g_1103,&p_1979->g_1103,&p_1979->g_376,&l_1592,&p_1979->g_77,&l_1592,&p_1979->g_376,&p_1979->g_1103,&p_1979->g_1103,&p_1979->g_376}},{{&p_1979->g_1103,&p_1979->g_1103,&p_1979->g_376,&l_1592,&p_1979->g_77,&l_1592,&p_1979->g_376,&p_1979->g_1103,&p_1979->g_1103,&p_1979->g_376},{&p_1979->g_1103,&p_1979->g_1103,&p_1979->g_376,&l_1592,&p_1979->g_77,&l_1592,&p_1979->g_376,&p_1979->g_1103,&p_1979->g_1103,&p_1979->g_376}},{{&p_1979->g_1103,&p_1979->g_1103,&p_1979->g_376,&l_1592,&p_1979->g_77,&l_1592,&p_1979->g_376,&p_1979->g_1103,&p_1979->g_1103,&p_1979->g_376},{&p_1979->g_1103,&p_1979->g_1103,&p_1979->g_376,&l_1592,&p_1979->g_77,&l_1592,&p_1979->g_376,&p_1979->g_1103,&p_1979->g_1103,&p_1979->g_376}}};
        int i, j, k;
        for (i = 0; i < 1; i++)
            l_1552[i] = 4294967295UL;
        for (i = 0; i < 9; i++)
            l_1577[i] = 1L;
        (*l_1546) = l_1544[3];
        (*l_1379) = (void*)0;
        if ((safe_lshift_func_uint16_t_u_s(((((((l_1549 >= ((FAKE_DIVERGE(p_1979->group_1_offset, get_group_id(1), 10) >= FAKE_DIVERGE(p_1979->local_1_offset, get_local_id(1), 10)) , ((*p_1979->g_524) = (((p_1979->g_1152 |= ((p_1979->g_1550 , (p_1979->g_146[6] &= p_36)) < p_36)) & (l_1323 = l_1552[0])) ^ ((safe_sub_func_uint16_t_u_u((++(***p_1979->g_924)), l_1552[0])) , p_36))))) , (l_1320 = GROUP_DIVERGE(0, 1))) & (safe_lshift_func_int16_t_s_u(p_38, ((((*l_1560) = ((void*)0 == l_1559)) , l_1551[3][7][1]) == &l_1305)))) | l_1562[1]) , l_1549) == p_36), 10)))
        { /* block id: 848 */
            if (l_1552[0])
                break;
            if (l_1552[0])
                break;
        }
        else
        { /* block id: 851 */
            uint8_t l_1572 = 5UL;
            int32_t *l_1576 = &p_1979->g_94;
            int32_t *l_1578 = (void*)0;
            int32_t *l_1579[3];
            int32_t l_1590 = 0x61F60CE0L;
            int i;
            for (i = 0; i < 3; i++)
                l_1579[i] = &p_1979->g_5;
            (*l_1379) = func_40(p_1979->g_1563, p_1979);
            (*p_1979->g_423) ^= (0xA2E8L > (safe_lshift_func_int8_t_s_s((safe_sub_func_uint16_t_u_u((safe_add_func_int32_t_s_s((((((safe_add_func_uint32_t_u_u(FAKE_DIVERGE(p_1979->global_2_offset, get_global_id(2), 10), (l_1572 == ((~(p_36 , 0x1F000025BE814A78L)) , ((*p_1979->g_703) |= ((safe_mul_func_int16_t_s_s(0x6BDEL, 0x2CF7L)) | (FAKE_DIVERGE(p_1979->group_1_offset, get_group_id(1), 10) >= (-10L)))))))) & (((void*)0 != (*p_1979->g_944)) || 0x5B4171B501B711D6L)) , l_1552[0]) > p_36) >= 0xD10DA1F8L), p_38)), 0xA2F9L)), l_1575)));
            for (p_1979->g_498 = 0; (p_1979->g_498 <= 2); p_1979->g_498 += 1)
            { /* block id: 857 */
                (*p_39) = (*p_35);
            }
            l_1595++;
        }
        (*p_1979->g_1563) |= (p_38 > (((p_1979->g_904 |= ((p_1979->g_905 = (((*p_1979->g_279) ^= p_38) || (safe_mod_func_int16_t_s_s(((*l_1612) = (((*p_1979->g_524) = ((((((safe_add_func_int64_t_s_s((safe_mul_func_uint16_t_u_u((l_1604 != l_1604), ((****p_1979->g_923) = ((void*)0 != &l_1305)))), (safe_rshift_func_int8_t_s_u((l_1577[0] || ((safe_lshift_func_int16_t_s_s((l_1609 != l_1610), 14)) & p_36)), (*p_1979->g_279))))) <= p_38) > p_1979->g_340[0][0][2]) && (*p_39)) , 0x47L) && 0x42L)) != l_1611[0])), p_36)))) || p_1979->g_498)) , p_1979->g_561) | p_1979->g_1539));
    }
    return (**p_1979->g_702);
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t * func_40(int32_t * p_41, struct S1 * p_1979)
{ /* block id: 21 */
    int64_t l_55 = (-9L);
    int32_t *l_97 = &p_1979->g_94;
    int32_t **l_98 = &l_97;
    int32_t *l_99 = &p_1979->g_3;
    int32_t *l_100[8] = {(void*)0,&p_1979->g_101[3][0][3],(void*)0,(void*)0,&p_1979->g_101[3][0][3],(void*)0,(void*)0,&p_1979->g_101[3][0][3]};
    int32_t **l_102 = (void*)0;
    int32_t *l_104[3][3] = {{&p_1979->g_5,&p_1979->g_5,&p_1979->g_5},{&p_1979->g_5,&p_1979->g_5,&p_1979->g_5},{&p_1979->g_5,&p_1979->g_5,&p_1979->g_5}};
    int32_t **l_103 = &l_104[1][0];
    int64_t *l_985 = &p_1979->g_340[0][0][2];
    uint16_t *****l_1005 = &p_1979->g_1004;
    uint32_t l_1006 = 0xE46E5814L;
    uint64_t l_1007 = 1UL;
    int16_t l_1018[3][4] = {{1L,0x6A91L,1L,1L},{1L,0x6A91L,1L,1L},{1L,0x6A91L,1L,1L}};
    int8_t *****l_1031 = &p_1979->g_944;
    int8_t *l_1032 = &p_1979->g_146[5];
    uint32_t l_1033 = 4294967295UL;
    int16_t l_1097[6] = {1L,1L,1L,1L,1L,1L};
    uint8_t ***l_1115 = (void*)0;
    uint8_t ****l_1114 = &l_1115;
    uint8_t l_1172 = 0x91L;
    uint16_t **l_1226 = &p_1979->g_475;
    uint8_t l_1227 = 0x53L;
    uint32_t ****l_1273[4][1][7] = {{{&p_1979->g_823[1],&p_1979->g_823[0],&p_1979->g_823[2],&p_1979->g_823[0],&p_1979->g_823[1],&p_1979->g_823[1],&p_1979->g_823[0]}},{{&p_1979->g_823[1],&p_1979->g_823[0],&p_1979->g_823[2],&p_1979->g_823[0],&p_1979->g_823[1],&p_1979->g_823[1],&p_1979->g_823[0]}},{{&p_1979->g_823[1],&p_1979->g_823[0],&p_1979->g_823[2],&p_1979->g_823[0],&p_1979->g_823[1],&p_1979->g_823[1],&p_1979->g_823[0]}},{{&p_1979->g_823[1],&p_1979->g_823[0],&p_1979->g_823[2],&p_1979->g_823[0],&p_1979->g_823[1],&p_1979->g_823[1],&p_1979->g_823[0]}}};
    int i, j, k;
    return p_41;
}


/* ------------------------------------------ */
/* 
 * reads : p_1979->g_475 p_1979->g_191 p_1979->g_702 p_1979->g_91 p_1979->g_89 p_1979->g_667 p_1979->g_668 p_1979->g_388 p_1979->g_512 p_1979->g_101 p_1979->g_523 p_1979->g_524 p_1979->g_498 p_1979->g_90 p_1979->g_923 p_1979->g_924 p_1979->g_925 p_1979->g_908 p_1979->g_422 p_1979->g_423 p_1979->g_376 p_1979->g_835 p_1979->g_836 p_1979->g_837 p_1979->g_340 p_1979->g_279 p_1979->g_280 p_1979->g_185 l_12 p_1979->g_5
 * writes: p_1979->g_703 p_1979->g_91 p_1979->g_89 p_1979->g_94 p_1979->g_908 p_1979->g_423 p_1979->g_910 l_12 p_1979->g_5
 */
int32_t * func_44(int32_t * p_45, struct S1 * p_1979)
{ /* block id: 460 */
    uint8_t l_954 = 0xA7L;
    uint32_t *l_957 = &p_1979->g_185;
    int32_t *l_958[9] = {&p_1979->g_3,&p_1979->g_3,&p_1979->g_3,&p_1979->g_3,&p_1979->g_3,&p_1979->g_3,&p_1979->g_3,&p_1979->g_3,&p_1979->g_3};
    uint32_t l_959 = 0x952E1853L;
    int64_t l_962 = 0x05154B87DA1BB1C5L;
    int8_t l_978 = 3L;
    int16_t **l_982 = &p_1979->g_524;
    int64_t *l_983 = &p_1979->g_908;
    int8_t l_984 = 0x60L;
    int i;
    if (((((*p_1979->g_475) & (safe_add_func_uint32_t_u_u(0x8263236AL, (((((l_954 = (+(safe_sub_func_uint16_t_u_u(FAKE_DIVERGE(p_1979->group_2_offset, get_group_id(2), 10), FAKE_DIVERGE(p_1979->global_0_offset, get_global_id(0), 10))))) || (safe_mul_func_uint8_t_u_u(((p_1979->g_94 = ((*p_45) &= (l_957 == ((*p_1979->g_702) = p_45)))) < ((**p_1979->g_667) , (p_1979->g_101[1][4][1] | l_959))), ((**p_1979->g_523) ^ ((safe_div_func_int8_t_s_s((((****p_1979->g_923) || (**p_1979->g_523)) , 0x1CL), l_962)) || 0UL))))) != 2L) , (*p_45)) , (-7L))))) <= 0x35L) >= 0x548882D7L))
    { /* block id: 465 */
        int32_t *l_966 = (void*)0;
        (*p_45) |= 1L;
        for (p_1979->g_908 = 24; (p_1979->g_908 == 20); p_1979->g_908 = safe_sub_func_uint16_t_u_u(p_1979->g_908, 3))
        { /* block id: 469 */
            int32_t **l_965[2];
            int i;
            for (i = 0; i < 2; i++)
                l_965[i] = &p_1979->g_423;
            (*p_1979->g_422) = (*p_1979->g_422);
            l_966 = (*p_1979->g_422);
        }
    }
    else
    { /* block id: 473 */
        int32_t **l_967 = &p_1979->g_423;
        (*l_967) = (void*)0;
    }
    (*p_45) = (*p_45);
    p_1979->g_910 = (safe_mod_func_int64_t_s_s((((****p_1979->g_923) <= (~(*p_1979->g_475))) | ((safe_mul_func_int8_t_s_s((p_1979->g_376 , (safe_rshift_func_uint16_t_u_u((safe_sub_func_int8_t_s_s((-4L), ((safe_sub_func_int16_t_s_s((l_978 || 0UL), (((*p_45) |= (((*l_983) = (safe_unary_minus_func_uint8_t_u(((((safe_mul_func_uint8_t_u_u(FAKE_DIVERGE(p_1979->global_1_offset, get_global_id(1), 10), (((**p_1979->g_835) != &l_957) , ((void*)0 != l_982)))) < 0x13679EDAL) != p_1979->g_101[1][4][1]) || (*p_1979->g_475))))) >= p_1979->g_340[2][0][7])) > l_984))) != (*p_1979->g_279)))), (**p_1979->g_925)))), FAKE_DIVERGE(p_1979->group_1_offset, get_group_id(1), 10))) >= p_1979->g_185)), p_1979->g_340[0][0][2]));
    return (*p_1979->g_422);
}


/* ------------------------------------------ */
/* 
 * reads : p_1979->g_524 p_1979->g_498 p_1979->g_90 p_1979->g_923 p_1979->g_475 p_1979->g_191 p_1979->g_640 p_1979->g_77 p_1979->g_279 p_1979->g_280 p_1979->g_905 p_1979->g_388.f0 p_1979->g_423 p_1979->g_422 l_12 p_1979->g_89
 * writes: p_1979->g_498 p_1979->g_90 p_1979->g_77 p_1979->g_905 p_1979->g_221 p_1979->g_944 p_1979->g_91 p_1979->g_89 l_12
 */
int32_t * func_46(int32_t * p_47, int32_t * p_48, int32_t * p_49, int32_t * p_50, int16_t  p_51, struct S1 * p_1979)
{ /* block id: 445 */
    uint16_t l_918 = 0UL;
    uint16_t **l_921 = &p_1979->g_475;
    uint16_t ***l_920 = &l_921;
    uint16_t ****l_919 = &l_920;
    uint16_t *****l_922 = &l_919;
    int32_t l_926[1];
    int16_t *l_935 = &p_1979->g_77;
    int32_t l_936[3];
    uint64_t *l_937 = &p_1979->g_905;
    uint64_t *l_938 = &p_1979->g_221;
    int8_t *l_942 = &p_1979->g_146[4];
    int8_t **l_941 = &l_942;
    int8_t ***l_940 = &l_941;
    int8_t ****l_939 = &l_940;
    int8_t *****l_943[3][5][4] = {{{&l_939,&l_939,&l_939,&l_939},{&l_939,&l_939,&l_939,&l_939},{&l_939,&l_939,&l_939,&l_939},{&l_939,&l_939,&l_939,&l_939},{&l_939,&l_939,&l_939,&l_939}},{{&l_939,&l_939,&l_939,&l_939},{&l_939,&l_939,&l_939,&l_939},{&l_939,&l_939,&l_939,&l_939},{&l_939,&l_939,&l_939,&l_939},{&l_939,&l_939,&l_939,&l_939}},{{&l_939,&l_939,&l_939,&l_939},{&l_939,&l_939,&l_939,&l_939},{&l_939,&l_939,&l_939,&l_939},{&l_939,&l_939,&l_939,&l_939},{&l_939,&l_939,&l_939,&l_939}}};
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_926[i] = 0x2FF48382L;
    for (i = 0; i < 3; i++)
        l_936[i] = 0x5F09E672L;
lbl_949:
    (*p_47) ^= (safe_add_func_int64_t_s_s(((l_918 = ((*p_1979->g_524) |= 0x19F0L)) <= (((*l_938) = ((*l_937) ^= (((((((*l_922) = l_919) != p_1979->g_923) ^ (*p_1979->g_475)) && l_926[0]) <= ((safe_rshift_func_int8_t_s_u(((safe_sub_func_uint16_t_u_u((safe_unary_minus_func_int16_t_s((GROUP_DIVERGE(0, 1) >= (((safe_unary_minus_func_int16_t_s(((p_1979->g_640 | (safe_div_func_int16_t_s_s((l_936[1] = ((*l_935) = 0x4971L)), p_51))) , ((*l_935) |= ((l_936[2] ^ l_936[0]) >= l_926[0]))))) && l_926[0]) >= l_926[0])))), FAKE_DIVERGE(p_1979->group_0_offset, get_group_id(0), 10))) <= (*p_1979->g_279)), p_51)) | GROUP_DIVERGE(0, 1))) == l_926[0]))) == p_1979->g_388.f0)), GROUP_DIVERGE(1, 1)));
    (*p_1979->g_423) = ((p_1979->g_944 = l_939) == (((*p_1979->g_279) == FAKE_DIVERGE(p_1979->global_0_offset, get_global_id(0), 10)) , &p_1979->g_945));
    (*p_47) ^= ((safe_div_func_uint8_t_u_u(((***l_922) != (*l_920)), l_936[1])) != (p_51 ^ FAKE_DIVERGE(p_1979->global_2_offset, get_global_id(2), 10)));
    if (p_51)
        goto lbl_949;
    return (*p_1979->g_422);
}


/* ------------------------------------------ */
/* 
 * reads : p_1979->g_94 p_1979->g_101 p_1979->g_114 p_1979->g_90 p_1979->g_77 p_1979->g_89 p_1979->g_91 p_1979->g_185 p_1979->g_14 p_1979->g_10 p_1979->g_206 p_1979->g_191 p_1979->g_11 p_1979->g_235 p_1979->g_3 p_1979->g_5 p_1979->g_279 p_1979->g_280 p_1979->g_223 p_1979->g_322 p_1979->g_146 p_1979->g_340 p_1979->g_388 p_1979->g_422 p_1979->g_423 p_1979->g_450 p_1979->g_449 p_1979->g_500 p_1979->g_524 p_1979->g_376 p_1979->g_615 p_1979->g_640 p_1979->g_523 p_1979->g_522 p_1979->g_498 p_1979->g_440 p_1979->g_667 p_1979->g_702 p_1979->g_713 p_1979->g_475 p_1979->g_512.f0 p_1979->g_703 p_1979->g_905 p_1979->g_911 l_12
 * writes: p_1979->g_114 p_1979->g_91 p_1979->g_77 p_1979->g_5 p_1979->g_185 p_1979->g_94 p_1979->g_206 p_1979->g_89 p_1979->g_221 p_1979->g_223 p_1979->g_235 p_1979->g_279 p_1979->g_146 p_1979->g_280 p_1979->g_90 p_1979->g_376 p_1979->g_423 p_1979->g_450 p_1979->g_3 p_1979->g_191 p_1979->g_475 p_1979->g_449 p_1979->g_500 p_1979->g_640 p_1979->g_440 p_1979->g_668 p_1979->g_702 p_1979->g_524 p_1979->g_905 p_1979->g_911 p_1979->g_10 l_12
 */
int32_t * func_52(int64_t  p_53, uint64_t  p_54, struct S1 * p_1979)
{ /* block id: 34 */
    int32_t *l_127 = &p_1979->g_94;
    int32_t l_129 = 1L;
    int8_t *l_155 = &p_1979->g_146[7];
    int8_t **l_154[1];
    int32_t l_230 = (-5L);
    int32_t l_231 = 0x2122F168L;
    int32_t l_233 = 0x34B161C8L;
    int8_t l_234 = 1L;
    int32_t *l_238 = &l_233;
    uint8_t l_266 = 0x7CL;
    uint32_t l_338 = 0x4735E3E4L;
    uint32_t l_343[4][4][5] = {{{0x942E3118L,0xB1370501L,0x942E3118L,0x942E3118L,0xB1370501L},{0x942E3118L,0xB1370501L,0x942E3118L,0x942E3118L,0xB1370501L},{0x942E3118L,0xB1370501L,0x942E3118L,0x942E3118L,0xB1370501L},{0x942E3118L,0xB1370501L,0x942E3118L,0x942E3118L,0xB1370501L}},{{0x942E3118L,0xB1370501L,0x942E3118L,0x942E3118L,0xB1370501L},{0x942E3118L,0xB1370501L,0x942E3118L,0x942E3118L,0xB1370501L},{0x942E3118L,0xB1370501L,0x942E3118L,0x942E3118L,0xB1370501L},{0x942E3118L,0xB1370501L,0x942E3118L,0x942E3118L,0xB1370501L}},{{0x942E3118L,0xB1370501L,0x942E3118L,0x942E3118L,0xB1370501L},{0x942E3118L,0xB1370501L,0x942E3118L,0x942E3118L,0xB1370501L},{0x942E3118L,0xB1370501L,0x942E3118L,0x942E3118L,0xB1370501L},{0x942E3118L,0xB1370501L,0x942E3118L,0x942E3118L,0xB1370501L}},{{0x942E3118L,0xB1370501L,0x942E3118L,0x942E3118L,0xB1370501L},{0x942E3118L,0xB1370501L,0x942E3118L,0x942E3118L,0xB1370501L},{0x942E3118L,0xB1370501L,0x942E3118L,0x942E3118L,0xB1370501L},{0x942E3118L,0xB1370501L,0x942E3118L,0x942E3118L,0xB1370501L}}};
    int16_t l_416 = 1L;
    int16_t l_444[9][9] = {{0x3AE5L,0x1124L,(-1L),(-5L),0x1108L,(-1L),0x3AE5L,(-6L),0x2C56L},{0x3AE5L,0x1124L,(-1L),(-5L),0x1108L,(-1L),0x3AE5L,(-6L),0x2C56L},{0x3AE5L,0x1124L,(-1L),(-5L),0x1108L,(-1L),0x3AE5L,(-6L),0x2C56L},{0x3AE5L,0x1124L,(-1L),(-5L),0x1108L,(-1L),0x3AE5L,(-6L),0x2C56L},{0x3AE5L,0x1124L,(-1L),(-5L),0x1108L,(-1L),0x3AE5L,(-6L),0x2C56L},{0x3AE5L,0x1124L,(-1L),(-5L),0x1108L,(-1L),0x3AE5L,(-6L),0x2C56L},{0x3AE5L,0x1124L,(-1L),(-5L),0x1108L,(-1L),0x3AE5L,(-6L),0x2C56L},{0x3AE5L,0x1124L,(-1L),(-5L),0x1108L,(-1L),0x3AE5L,(-6L),0x2C56L},{0x3AE5L,0x1124L,(-1L),(-5L),0x1108L,(-1L),0x3AE5L,(-6L),0x2C56L}};
    uint16_t *l_473 = &p_1979->g_191[2];
    uint32_t *l_517 = (void*)0;
    uint32_t l_554 = 0x609E4DDEL;
    int32_t l_583 = 0x27D5CDC6L;
    int32_t *l_641 = &p_1979->g_89;
    uint8_t **l_650[7][3][6] = {{{(void*)0,(void*)0,&p_1979->g_279,&p_1979->g_279,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1979->g_279,&p_1979->g_279,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1979->g_279,&p_1979->g_279,(void*)0,(void*)0}},{{(void*)0,(void*)0,&p_1979->g_279,&p_1979->g_279,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1979->g_279,&p_1979->g_279,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1979->g_279,&p_1979->g_279,(void*)0,(void*)0}},{{(void*)0,(void*)0,&p_1979->g_279,&p_1979->g_279,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1979->g_279,&p_1979->g_279,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1979->g_279,&p_1979->g_279,(void*)0,(void*)0}},{{(void*)0,(void*)0,&p_1979->g_279,&p_1979->g_279,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1979->g_279,&p_1979->g_279,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1979->g_279,&p_1979->g_279,(void*)0,(void*)0}},{{(void*)0,(void*)0,&p_1979->g_279,&p_1979->g_279,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1979->g_279,&p_1979->g_279,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1979->g_279,&p_1979->g_279,(void*)0,(void*)0}},{{(void*)0,(void*)0,&p_1979->g_279,&p_1979->g_279,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1979->g_279,&p_1979->g_279,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1979->g_279,&p_1979->g_279,(void*)0,(void*)0}},{{(void*)0,(void*)0,&p_1979->g_279,&p_1979->g_279,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1979->g_279,&p_1979->g_279,(void*)0,(void*)0},{(void*)0,(void*)0,&p_1979->g_279,&p_1979->g_279,(void*)0,(void*)0}}};
    uint8_t ***l_649 = &l_650[4][0][5];
    int64_t l_790 = (-3L);
    int32_t ***l_832[7][8][4] = {{{&p_1979->g_616,&p_1979->g_616,(void*)0,(void*)0},{&p_1979->g_616,&p_1979->g_616,(void*)0,(void*)0},{&p_1979->g_616,&p_1979->g_616,(void*)0,(void*)0},{&p_1979->g_616,&p_1979->g_616,(void*)0,(void*)0},{&p_1979->g_616,&p_1979->g_616,(void*)0,(void*)0},{&p_1979->g_616,&p_1979->g_616,(void*)0,(void*)0},{&p_1979->g_616,&p_1979->g_616,(void*)0,(void*)0},{&p_1979->g_616,&p_1979->g_616,(void*)0,(void*)0}},{{&p_1979->g_616,&p_1979->g_616,(void*)0,(void*)0},{&p_1979->g_616,&p_1979->g_616,(void*)0,(void*)0},{&p_1979->g_616,&p_1979->g_616,(void*)0,(void*)0},{&p_1979->g_616,&p_1979->g_616,(void*)0,(void*)0},{&p_1979->g_616,&p_1979->g_616,(void*)0,(void*)0},{&p_1979->g_616,&p_1979->g_616,(void*)0,(void*)0},{&p_1979->g_616,&p_1979->g_616,(void*)0,(void*)0},{&p_1979->g_616,&p_1979->g_616,(void*)0,(void*)0}},{{&p_1979->g_616,&p_1979->g_616,(void*)0,(void*)0},{&p_1979->g_616,&p_1979->g_616,(void*)0,(void*)0},{&p_1979->g_616,&p_1979->g_616,(void*)0,(void*)0},{&p_1979->g_616,&p_1979->g_616,(void*)0,(void*)0},{&p_1979->g_616,&p_1979->g_616,(void*)0,(void*)0},{&p_1979->g_616,&p_1979->g_616,(void*)0,(void*)0},{&p_1979->g_616,&p_1979->g_616,(void*)0,(void*)0},{&p_1979->g_616,&p_1979->g_616,(void*)0,(void*)0}},{{&p_1979->g_616,&p_1979->g_616,(void*)0,(void*)0},{&p_1979->g_616,&p_1979->g_616,(void*)0,(void*)0},{&p_1979->g_616,&p_1979->g_616,(void*)0,(void*)0},{&p_1979->g_616,&p_1979->g_616,(void*)0,(void*)0},{&p_1979->g_616,&p_1979->g_616,(void*)0,(void*)0},{&p_1979->g_616,&p_1979->g_616,(void*)0,(void*)0},{&p_1979->g_616,&p_1979->g_616,(void*)0,(void*)0},{&p_1979->g_616,&p_1979->g_616,(void*)0,(void*)0}},{{&p_1979->g_616,&p_1979->g_616,(void*)0,(void*)0},{&p_1979->g_616,&p_1979->g_616,(void*)0,(void*)0},{&p_1979->g_616,&p_1979->g_616,(void*)0,(void*)0},{&p_1979->g_616,&p_1979->g_616,(void*)0,(void*)0},{&p_1979->g_616,&p_1979->g_616,(void*)0,(void*)0},{&p_1979->g_616,&p_1979->g_616,(void*)0,(void*)0},{&p_1979->g_616,&p_1979->g_616,(void*)0,(void*)0},{&p_1979->g_616,&p_1979->g_616,(void*)0,(void*)0}},{{&p_1979->g_616,&p_1979->g_616,(void*)0,(void*)0},{&p_1979->g_616,&p_1979->g_616,(void*)0,(void*)0},{&p_1979->g_616,&p_1979->g_616,(void*)0,(void*)0},{&p_1979->g_616,&p_1979->g_616,(void*)0,(void*)0},{&p_1979->g_616,&p_1979->g_616,(void*)0,(void*)0},{&p_1979->g_616,&p_1979->g_616,(void*)0,(void*)0},{&p_1979->g_616,&p_1979->g_616,(void*)0,(void*)0},{&p_1979->g_616,&p_1979->g_616,(void*)0,(void*)0}},{{&p_1979->g_616,&p_1979->g_616,(void*)0,(void*)0},{&p_1979->g_616,&p_1979->g_616,(void*)0,(void*)0},{&p_1979->g_616,&p_1979->g_616,(void*)0,(void*)0},{&p_1979->g_616,&p_1979->g_616,(void*)0,(void*)0},{&p_1979->g_616,&p_1979->g_616,(void*)0,(void*)0},{&p_1979->g_616,&p_1979->g_616,(void*)0,(void*)0},{&p_1979->g_616,&p_1979->g_616,(void*)0,(void*)0},{&p_1979->g_616,&p_1979->g_616,(void*)0,(void*)0}}};
    uint16_t l_879 = 0x1922L;
    int16_t l_903 = 0x61C6L;
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_154[i] = &l_155;
    if (p_53)
    { /* block id: 35 */
        uint8_t *l_113 = &p_1979->g_114;
        int32_t *l_126 = &p_1979->g_5;
        int32_t **l_125 = &l_126;
        int32_t **l_128 = &l_127;
        int32_t *l_130 = &l_129;
        uint16_t *l_208[2][10][6] = {{{&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[1]},{&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[1]},{&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[1]},{&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[1]},{&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[1]},{&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[1]},{&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[1]},{&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[1]},{&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[1]},{&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[1]}},{{&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[1]},{&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[1]},{&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[1]},{&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[1]},{&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[1]},{&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[1]},{&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[1]},{&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[1]},{&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[1]},{&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[2],&p_1979->g_191[1]}}};
        int8_t l_224 = 0L;
        int32_t l_229 = 0x770EC779L;
        int8_t **l_295[6] = {&l_155,&l_155,&l_155,&l_155,&l_155,&l_155};
        int32_t l_329 = 0x2EB1FCBEL;
        int16_t l_339 = 1L;
        uint8_t ***l_344 = (void*)0;
        int i, j, k;
        if (((*l_130) = ((((((safe_rshift_func_int16_t_s_u(((safe_sub_func_uint64_t_u_u((p_1979->g_94 , FAKE_DIVERGE(p_1979->group_2_offset, get_group_id(2), 10)), (safe_lshift_func_int8_t_s_s((!((void*)0 == &p_1979->g_90)), (p_1979->g_101[0][5][1] <= (((--(*l_113)) | (safe_lshift_func_int16_t_s_s(0x71BAL, ((safe_rshift_func_uint8_t_u_u(((safe_add_func_int64_t_s_s(((safe_rshift_func_int8_t_s_u((((*l_125) = ((l_113 != (void*)0) , &p_1979->g_89)) != ((*l_128) = l_127)), p_53)) , p_1979->g_90), l_129)) == 0x51L), 2)) & 0x8642L)))) > p_54)))))) == l_129), p_1979->g_77)) != p_1979->g_94) < 2UL) > FAKE_DIVERGE(p_1979->global_0_offset, get_global_id(0), 10)) > 0x1CL) , (*l_126))))
        { /* block id: 40 */
            uint8_t *l_143 = &p_1979->g_114;
            int32_t l_153 = 1L;
            for (p_1979->g_91 = 0; (p_1979->g_91 > (-6)); p_1979->g_91 = safe_sub_func_uint16_t_u_u(p_1979->g_91, 7))
            { /* block id: 43 */
                uint32_t l_144[10];
                int i;
                for (i = 0; i < 10; i++)
                    l_144[i] = 4294967294UL;
                (1 + 1);
            }
        }
        else
        { /* block id: 73 */
            int32_t *l_175 = &p_1979->g_5;
            uint32_t *l_184[5][3][4] = {{{&p_1979->g_185,&p_1979->g_185,&p_1979->g_185,&p_1979->g_185},{&p_1979->g_185,&p_1979->g_185,&p_1979->g_185,&p_1979->g_185},{&p_1979->g_185,&p_1979->g_185,&p_1979->g_185,&p_1979->g_185}},{{&p_1979->g_185,&p_1979->g_185,&p_1979->g_185,&p_1979->g_185},{&p_1979->g_185,&p_1979->g_185,&p_1979->g_185,&p_1979->g_185},{&p_1979->g_185,&p_1979->g_185,&p_1979->g_185,&p_1979->g_185}},{{&p_1979->g_185,&p_1979->g_185,&p_1979->g_185,&p_1979->g_185},{&p_1979->g_185,&p_1979->g_185,&p_1979->g_185,&p_1979->g_185},{&p_1979->g_185,&p_1979->g_185,&p_1979->g_185,&p_1979->g_185}},{{&p_1979->g_185,&p_1979->g_185,&p_1979->g_185,&p_1979->g_185},{&p_1979->g_185,&p_1979->g_185,&p_1979->g_185,&p_1979->g_185},{&p_1979->g_185,&p_1979->g_185,&p_1979->g_185,&p_1979->g_185}},{{&p_1979->g_185,&p_1979->g_185,&p_1979->g_185,&p_1979->g_185},{&p_1979->g_185,&p_1979->g_185,&p_1979->g_185,&p_1979->g_185},{&p_1979->g_185,&p_1979->g_185,&p_1979->g_185,&p_1979->g_185}}};
            int32_t l_186 = 0L;
            int32_t l_187[4][9][6] = {{{(-1L),0L,2L,(-1L),(-5L),0x53118DE8L},{(-1L),0L,2L,(-1L),(-5L),0x53118DE8L},{(-1L),0L,2L,(-1L),(-5L),0x53118DE8L},{(-1L),0L,2L,(-1L),(-5L),0x53118DE8L},{(-1L),0L,2L,(-1L),(-5L),0x53118DE8L},{(-1L),0L,2L,(-1L),(-5L),0x53118DE8L},{(-1L),0L,2L,(-1L),(-5L),0x53118DE8L},{(-1L),0L,2L,(-1L),(-5L),0x53118DE8L},{(-1L),0L,2L,(-1L),(-5L),0x53118DE8L}},{{(-1L),0L,2L,(-1L),(-5L),0x53118DE8L},{(-1L),0L,2L,(-1L),(-5L),0x53118DE8L},{(-1L),0L,2L,(-1L),(-5L),0x53118DE8L},{(-1L),0L,2L,(-1L),(-5L),0x53118DE8L},{(-1L),0L,2L,(-1L),(-5L),0x53118DE8L},{(-1L),0L,2L,(-1L),(-5L),0x53118DE8L},{(-1L),0L,2L,(-1L),(-5L),0x53118DE8L},{(-1L),0L,2L,(-1L),(-5L),0x53118DE8L},{(-1L),0L,2L,(-1L),(-5L),0x53118DE8L}},{{(-1L),0L,2L,(-1L),(-5L),0x53118DE8L},{(-1L),0L,2L,(-1L),(-5L),0x53118DE8L},{(-1L),0L,2L,(-1L),(-5L),0x53118DE8L},{(-1L),0L,2L,(-1L),(-5L),0x53118DE8L},{(-1L),0L,2L,(-1L),(-5L),0x53118DE8L},{(-1L),0L,2L,(-1L),(-5L),0x53118DE8L},{(-1L),0L,2L,(-1L),(-5L),0x53118DE8L},{(-1L),0L,2L,(-1L),(-5L),0x53118DE8L},{(-1L),0L,2L,(-1L),(-5L),0x53118DE8L}},{{(-1L),0L,2L,(-1L),(-5L),0x53118DE8L},{(-1L),0L,2L,(-1L),(-5L),0x53118DE8L},{(-1L),0L,2L,(-1L),(-5L),0x53118DE8L},{(-1L),0L,2L,(-1L),(-5L),0x53118DE8L},{(-1L),0L,2L,(-1L),(-5L),0x53118DE8L},{(-1L),0L,2L,(-1L),(-5L),0x53118DE8L},{(-1L),0L,2L,(-1L),(-5L),0x53118DE8L},{(-1L),0L,2L,(-1L),(-5L),0x53118DE8L},{(-1L),0L,2L,(-1L),(-5L),0x53118DE8L}}};
            uint16_t *l_190[6];
            int32_t *l_204[2][3][9] = {{{&p_1979->g_10,&p_1979->g_10,&p_1979->g_10,&p_1979->g_10,&p_1979->g_10,&p_1979->g_10,&p_1979->g_10,&p_1979->g_10,&p_1979->g_10},{&p_1979->g_10,&p_1979->g_10,&p_1979->g_10,&p_1979->g_10,&p_1979->g_10,&p_1979->g_10,&p_1979->g_10,&p_1979->g_10,&p_1979->g_10},{&p_1979->g_10,&p_1979->g_10,&p_1979->g_10,&p_1979->g_10,&p_1979->g_10,&p_1979->g_10,&p_1979->g_10,&p_1979->g_10,&p_1979->g_10}},{{&p_1979->g_10,&p_1979->g_10,&p_1979->g_10,&p_1979->g_10,&p_1979->g_10,&p_1979->g_10,&p_1979->g_10,&p_1979->g_10,&p_1979->g_10},{&p_1979->g_10,&p_1979->g_10,&p_1979->g_10,&p_1979->g_10,&p_1979->g_10,&p_1979->g_10,&p_1979->g_10,&p_1979->g_10,&p_1979->g_10},{&p_1979->g_10,&p_1979->g_10,&p_1979->g_10,&p_1979->g_10,&p_1979->g_10,&p_1979->g_10,&p_1979->g_10,&p_1979->g_10,&p_1979->g_10}}};
            int64_t *l_205[1][4][9] = {{{&p_1979->g_206,&p_1979->g_206,&p_1979->g_206,(void*)0,&p_1979->g_206,(void*)0,&p_1979->g_206,&p_1979->g_206,&p_1979->g_206},{&p_1979->g_206,&p_1979->g_206,&p_1979->g_206,(void*)0,&p_1979->g_206,(void*)0,&p_1979->g_206,&p_1979->g_206,&p_1979->g_206},{&p_1979->g_206,&p_1979->g_206,&p_1979->g_206,(void*)0,&p_1979->g_206,(void*)0,&p_1979->g_206,&p_1979->g_206,&p_1979->g_206},{&p_1979->g_206,&p_1979->g_206,&p_1979->g_206,(void*)0,&p_1979->g_206,(void*)0,&p_1979->g_206,&p_1979->g_206,&p_1979->g_206}}};
            int16_t l_232 = 2L;
            int i, j, k;
            for (i = 0; i < 6; i++)
                l_190[i] = &p_1979->g_191[2];
            for (p_1979->g_77 = (-10); (p_1979->g_77 < 23); p_1979->g_77 = safe_add_func_int16_t_s_s(p_1979->g_77, 7))
            { /* block id: 76 */
                return l_175;
            }
            if ((~(safe_add_func_int16_t_s_s(((((void*)0 == l_113) > (safe_sub_func_uint8_t_u_u((p_1979->g_91 , ((((safe_mod_func_int32_t_s_s((65527UL <= ((**l_128) = (safe_div_func_int32_t_s_s(((*l_175) = (-5L)), (++p_1979->g_185))))), (safe_mul_func_uint8_t_u_u((((**l_125) = (safe_lshift_func_uint16_t_u_u((((p_1979->g_14 , (p_1979->g_206 &= ((safe_add_func_int64_t_s_s((((p_1979->g_91 = (p_1979->g_101[1][4][1] , (((safe_sub_func_uint16_t_u_u((safe_mul_func_uint8_t_u_u((p_54 <= (safe_sub_func_uint16_t_u_u(p_54, 4UL))), 0x78L)), 0UL)) , (**l_125)) , p_1979->g_91))) , (**l_125)) > p_1979->g_10), 0x6DBEAE7582C1F301L)) ^ 0x480967B42B6AA699L))) || p_53) , 0xCC88L), (*l_130)))) == 0UL), p_1979->g_77)))) , l_184[0][0][3]) != &p_1979->g_101[1][4][1]) < p_1979->g_101[3][3][3])), p_1979->g_191[2]))) , 1L), (-1L)))))
            { /* block id: 85 */
                uint64_t *l_220[2];
                int32_t l_222 = 4L;
                int32_t *l_225 = &l_222;
                int32_t *l_226 = &l_186;
                int32_t *l_227 = &l_129;
                int32_t *l_228[1][1];
                int i, j;
                for (i = 0; i < 2; i++)
                    l_220[i] = &p_1979->g_221;
                for (i = 0; i < 1; i++)
                {
                    for (j = 0; j < 1; j++)
                        l_228[i][j] = &p_1979->g_3;
                }
                (*l_127) |= (((((safe_unary_minus_func_uint8_t_u((&p_1979->g_191[2] == l_208[1][6][1]))) & (-6L)) ^ (safe_rshift_func_int16_t_s_u((safe_mul_func_int8_t_s_s((safe_unary_minus_func_uint8_t_u((safe_add_func_uint32_t_u_u(GROUP_DIVERGE(1, 1), ((safe_div_func_uint8_t_u_u((((-9L) | (p_1979->g_221 = (+(safe_mod_func_int8_t_s_s(p_54, 0x19L))))) != (p_1979->g_223 = ((0x4EEE47738B299F90L | (**l_125)) || l_222))), (-5L))) != l_222))))), p_1979->g_11)), p_1979->g_191[2]))) >= p_53) != 0x4B272FC5L);
                --p_1979->g_235;
            }
            else
            { /* block id: 90 */
                for (l_230 = 0; (l_230 <= 9); l_230 += 1)
                { /* block id: 93 */
                    return &p_1979->g_94;
                }
                for (p_1979->g_206 = 0; (p_1979->g_206 <= (-25)); p_1979->g_206--)
                { /* block id: 98 */
                    for (l_224 = (-22); (l_224 == (-6)); ++l_224)
                    { /* block id: 101 */
                        (*l_125) = &l_187[2][7][5];
                    }
                }
            }
            (*l_128) = &l_186;
            (*l_128) = &l_187[0][4][0];
        }
        for (p_1979->g_206 = (-10); (p_1979->g_206 > (-20)); --p_1979->g_206)
        { /* block id: 111 */
            uint32_t *l_249 = &p_1979->g_185;
            int32_t l_252 = 4L;
            int16_t *l_253 = (void*)0;
            int16_t *l_254 = (void*)0;
            int16_t *l_255[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            int8_t *l_256 = (void*)0;
            int8_t *l_257 = &p_1979->g_146[7];
            uint64_t *l_260 = &p_1979->g_223;
            int32_t *l_261 = &p_1979->g_94;
            int32_t *l_262 = &l_129;
            int32_t *l_263 = &l_129;
            int32_t *l_264 = &l_231;
            int32_t *l_265[1][3][2] = {{{&l_229,&p_1979->g_94},{&l_229,&p_1979->g_94},{&l_229,&p_1979->g_94}}};
            int8_t **l_297 = &l_256;
            int16_t l_298 = 0x129AL;
            uint64_t l_299 = 0xB6C39EAFD24687F2L;
            int32_t **l_328 = &l_261;
            int i, j, k;
            (*l_128) = func_56(((safe_mod_func_uint16_t_u_u((&p_1979->g_5 != ((((((((*l_249)--) <= p_1979->g_114) >= (((*l_130) = l_252) != (&l_155 != (void*)0))) , l_256) != (l_257 = l_256)) > (safe_sub_func_uint64_t_u_u((&p_1979->g_223 != l_260), 0x8E5F94D6FDC2CA2CL))) , &p_1979->g_5)), p_1979->g_3)) , p_54), p_1979);
            ++l_266;
            for (l_231 = 0; (l_231 > (-16)); l_231 = safe_sub_func_uint32_t_u_u(l_231, 1))
            { /* block id: 119 */
                uint8_t **l_281 = (void*)0;
                uint8_t **l_282 = (void*)0;
                uint8_t **l_283 = &p_1979->g_279;
                int32_t l_288 = 1L;
                int8_t ***l_296 = &l_295[3];
                int32_t *l_309[8];
                uint16_t l_321[9][8][3] = {{{0x943EL,0xF462L,0xE0A6L},{0x943EL,0xF462L,0xE0A6L},{0x943EL,0xF462L,0xE0A6L},{0x943EL,0xF462L,0xE0A6L},{0x943EL,0xF462L,0xE0A6L},{0x943EL,0xF462L,0xE0A6L},{0x943EL,0xF462L,0xE0A6L},{0x943EL,0xF462L,0xE0A6L}},{{0x943EL,0xF462L,0xE0A6L},{0x943EL,0xF462L,0xE0A6L},{0x943EL,0xF462L,0xE0A6L},{0x943EL,0xF462L,0xE0A6L},{0x943EL,0xF462L,0xE0A6L},{0x943EL,0xF462L,0xE0A6L},{0x943EL,0xF462L,0xE0A6L},{0x943EL,0xF462L,0xE0A6L}},{{0x943EL,0xF462L,0xE0A6L},{0x943EL,0xF462L,0xE0A6L},{0x943EL,0xF462L,0xE0A6L},{0x943EL,0xF462L,0xE0A6L},{0x943EL,0xF462L,0xE0A6L},{0x943EL,0xF462L,0xE0A6L},{0x943EL,0xF462L,0xE0A6L},{0x943EL,0xF462L,0xE0A6L}},{{0x943EL,0xF462L,0xE0A6L},{0x943EL,0xF462L,0xE0A6L},{0x943EL,0xF462L,0xE0A6L},{0x943EL,0xF462L,0xE0A6L},{0x943EL,0xF462L,0xE0A6L},{0x943EL,0xF462L,0xE0A6L},{0x943EL,0xF462L,0xE0A6L},{0x943EL,0xF462L,0xE0A6L}},{{0x943EL,0xF462L,0xE0A6L},{0x943EL,0xF462L,0xE0A6L},{0x943EL,0xF462L,0xE0A6L},{0x943EL,0xF462L,0xE0A6L},{0x943EL,0xF462L,0xE0A6L},{0x943EL,0xF462L,0xE0A6L},{0x943EL,0xF462L,0xE0A6L},{0x943EL,0xF462L,0xE0A6L}},{{0x943EL,0xF462L,0xE0A6L},{0x943EL,0xF462L,0xE0A6L},{0x943EL,0xF462L,0xE0A6L},{0x943EL,0xF462L,0xE0A6L},{0x943EL,0xF462L,0xE0A6L},{0x943EL,0xF462L,0xE0A6L},{0x943EL,0xF462L,0xE0A6L},{0x943EL,0xF462L,0xE0A6L}},{{0x943EL,0xF462L,0xE0A6L},{0x943EL,0xF462L,0xE0A6L},{0x943EL,0xF462L,0xE0A6L},{0x943EL,0xF462L,0xE0A6L},{0x943EL,0xF462L,0xE0A6L},{0x943EL,0xF462L,0xE0A6L},{0x943EL,0xF462L,0xE0A6L},{0x943EL,0xF462L,0xE0A6L}},{{0x943EL,0xF462L,0xE0A6L},{0x943EL,0xF462L,0xE0A6L},{0x943EL,0xF462L,0xE0A6L},{0x943EL,0xF462L,0xE0A6L},{0x943EL,0xF462L,0xE0A6L},{0x943EL,0xF462L,0xE0A6L},{0x943EL,0xF462L,0xE0A6L},{0x943EL,0xF462L,0xE0A6L}},{{0x943EL,0xF462L,0xE0A6L},{0x943EL,0xF462L,0xE0A6L},{0x943EL,0xF462L,0xE0A6L},{0x943EL,0xF462L,0xE0A6L},{0x943EL,0xF462L,0xE0A6L},{0x943EL,0xF462L,0xE0A6L},{0x943EL,0xF462L,0xE0A6L},{0x943EL,0xF462L,0xE0A6L}}};
                int32_t **l_327 = (void*)0;
                int8_t l_377 = 0x6CL;
                uint64_t l_381[8] = {1UL,1UL,1UL,1UL,1UL,1UL,1UL,1UL};
                int i, j, k;
                for (i = 0; i < 8; i++)
                    l_309[i] = &p_1979->g_94;
                if ((safe_lshift_func_uint8_t_u_s((safe_rshift_func_uint8_t_u_s((l_299 = ((((++(*l_113)) > ((((safe_div_func_int16_t_s_s((((*l_283) = p_1979->g_279) != &p_1979->g_280), (safe_sub_func_int16_t_s_s((safe_div_func_uint32_t_u_u(l_288, (p_53 || l_288))), 0x0194L)))) & ((p_1979->g_191[2] < ((((l_298 = ((safe_lshift_func_int8_t_s_s((safe_sub_func_int64_t_s_s((safe_add_func_uint64_t_u_u((((*l_296) = l_295[3]) == (l_297 = (void*)0)), 0x076073062EDEC950L)), (*l_127))), 0)) < p_1979->g_91)) == 0x38A6L) != 0x2AL) >= p_53)) | 0L)) ^ p_54) <= 0x38DD6D27L)) , p_1979->g_191[2]) && (-1L))), p_1979->g_280)), p_1979->g_94)))
                { /* block id: 126 */
                    int64_t l_306 = 0x140B304A777E33F6L;
                    (*l_238) |= (safe_div_func_int64_t_s_s((l_288 >= (p_1979->g_146[7] = (((l_208[1][6][1] != (void*)0) ^ ((~(p_1979->g_223 != ((safe_lshift_func_uint16_t_u_u(p_1979->g_185, ((l_306 && (0x4502L >= (&p_1979->g_11 == ((p_54 <= p_1979->g_191[2]) , l_249)))) || GROUP_DIVERGE(2, 1)))) | p_1979->g_90))) <= p_53)) , p_54))), p_1979->g_206));
                }
                else
                { /* block id: 129 */
                    uint8_t **l_319 = &p_1979->g_279;
                    int32_t *l_330 = &l_329;
                    int32_t l_380 = 0L;
                    for (p_1979->g_280 = 0; (p_1979->g_280 == 21); p_1979->g_280++)
                    { /* block id: 132 */
                        uint16_t l_312 = 0xC669L;
                        uint8_t ***l_320 = &l_281;
                        l_309[7] = (void*)0;
                        (*l_263) = (safe_lshift_func_uint16_t_u_s(l_312, (((safe_mod_func_uint32_t_u_u((safe_sub_func_int64_t_s_s((((**l_128) |= 0x7C5671B1L) , ((*l_127) > ((*l_238) = ((l_319 != (l_283 = ((*l_320) = &p_1979->g_279))) ^ ((~l_321[5][4][1]) <= (((void*)0 == p_1979->g_322) > (safe_div_func_uint64_t_u_u(((safe_lshift_func_uint16_t_u_s((((((((l_328 = l_327) != &l_309[7]) ^ 0x9580029A20042B92L) && GROUP_DIVERGE(2, 1)) , (void*)0) != &l_130) != FAKE_DIVERGE(p_1979->group_0_offset, get_group_id(0), 10)), p_53)) <= (*p_1979->g_279)), l_329)))))))), p_53)), 1UL)) , (-7L)) >= 0L)));
                        (*l_128) = l_330;
                    }
                    for (l_129 = 0; (l_129 <= 9); l_129 += 1)
                    { /* block id: 144 */
                        int8_t l_337 = 0x0EL;
                        int i;
                        (*l_125) = ((p_1979->g_146[l_129] && 8UL) , &p_1979->g_5);
                        (*l_128) = func_56((((p_54 = p_53) >= (((6UL == (18446744073709551615UL >= (((l_339 = ((safe_rshift_func_int16_t_s_s(((**l_125) = p_1979->g_101[1][4][1]), (p_1979->g_90 = (safe_add_func_int32_t_s_s((0x40L == l_337), (-1L)))))) ^ (((p_1979->g_146[l_129] = p_1979->g_77) <= (1L <= p_53)) , l_338))) && 0x7B1FL) <= p_53))) , FAKE_DIVERGE(p_1979->group_2_offset, get_group_id(2), 10)) >= 0x50E8L)) >= p_1979->g_340[0][0][2]), p_1979);
                        (*l_261) = (((safe_lshift_func_uint8_t_u_u(0x3AL, (p_1979->g_280 || l_343[3][3][1]))) > (((l_344 == (void*)0) >= (safe_div_func_uint8_t_u_u((safe_sub_func_int64_t_s_s((safe_mod_func_int8_t_s_s((safe_unary_minus_func_uint8_t_u((safe_mul_func_int16_t_s_s((p_1979->g_376 = (safe_sub_func_uint64_t_u_u(p_1979->g_101[1][4][1], (safe_lshift_func_int16_t_s_s((0x7DL && (safe_div_func_uint8_t_u_u((safe_mul_func_uint16_t_u_u(((safe_rshift_func_uint16_t_u_u((safe_mod_func_int8_t_s_s((safe_mul_func_uint16_t_u_u(((!((safe_rshift_func_int16_t_s_s(((*l_330) = (1UL != (safe_add_func_int64_t_s_s(((safe_mod_func_uint8_t_u_u((((((safe_div_func_int64_t_s_s(p_1979->g_90, p_1979->g_89)) < p_1979->g_3) & 0x221AEED544C4648EL) || p_1979->g_280) || (*p_1979->g_279)), (*p_1979->g_279))) , p_1979->g_91), (*l_330))))), p_53)) , p_1979->g_94)) | 0x354BBB311BB9CFE5L), p_1979->g_340[3][2][4])), 0x97L)), 12)) >= 0x4EA0L), p_1979->g_101[1][5][0])), 250UL))), 9))))), p_1979->g_340[4][2][3])))), 0x72L)), p_1979->g_146[7])), (*p_1979->g_279)))) | p_54)) , l_377);
                        return &p_1979->g_3;
                    }
                    (*l_128) = &p_1979->g_5;
                    for (l_299 = 0; (l_299 <= 30); l_299 = safe_add_func_int64_t_s_s(l_299, 5))
                    { /* block id: 160 */
                        ++l_381[7];
                    }
                }
                (**l_128) = (p_1979->g_3 , (safe_div_func_int64_t_s_s(0x46365F0AB91E9267L, ((*l_260) = (((safe_rshift_func_int8_t_s_s(((*l_261) = ((*l_155) = (((p_1979->g_388 , (safe_sub_func_int16_t_s_s((((*l_262) ^= (safe_lshift_func_int16_t_s_u((safe_mul_func_int16_t_s_s(((safe_sub_func_uint32_t_u_u((safe_sub_func_int16_t_s_s(0x478AL, (safe_rshift_func_int8_t_s_s((p_54 , p_53), 7)))), p_1979->g_235)) > (((((((((0x8FB7L | (p_1979->g_10 , p_1979->g_191[2])) && (*l_238)) | p_1979->g_146[7]) >= p_53) < p_53) <= p_54) != p_1979->g_206) >= p_54) , p_54)), p_53)), p_53))) & p_1979->g_5), (*l_127)))) && (**l_128)) , p_53))), p_1979->g_340[4][0][7])) == (*l_127)) , 0x6698C83EB4B96B09L)))));
            }
            if ((*l_238))
                break;
        }
        for (l_224 = 0; (l_224 <= 2); l_224 = safe_add_func_int16_t_s_s(l_224, 4))
        { /* block id: 174 */
            (*l_128) = func_56(p_1979->g_340[4][1][6], p_1979);
        }
        (*l_130) ^= p_1979->g_77;
    }
    else
    { /* block id: 178 */
        int8_t ***l_406 = (void*)0;
        int8_t ****l_405 = &l_406;
        int64_t *l_415[5][2] = {{&p_1979->g_340[0][0][2],&p_1979->g_340[0][0][2]},{&p_1979->g_340[0][0][2],&p_1979->g_340[0][0][2]},{&p_1979->g_340[0][0][2],&p_1979->g_340[0][0][2]},{&p_1979->g_340[0][0][2],&p_1979->g_340[0][0][2]},{&p_1979->g_340[0][0][2],&p_1979->g_340[0][0][2]}};
        int32_t *l_421 = &p_1979->g_91;
        int32_t l_447[4][5][10] = {{{(-1L),0x73AD5F57L,0x73AD5F57L,(-1L),0x3D1BED2DL,0L,0L,0x6A3E9856L,1L,0x5C629D47L},{(-1L),0x73AD5F57L,0x73AD5F57L,(-1L),0x3D1BED2DL,0L,0L,0x6A3E9856L,1L,0x5C629D47L},{(-1L),0x73AD5F57L,0x73AD5F57L,(-1L),0x3D1BED2DL,0L,0L,0x6A3E9856L,1L,0x5C629D47L},{(-1L),0x73AD5F57L,0x73AD5F57L,(-1L),0x3D1BED2DL,0L,0L,0x6A3E9856L,1L,0x5C629D47L},{(-1L),0x73AD5F57L,0x73AD5F57L,(-1L),0x3D1BED2DL,0L,0L,0x6A3E9856L,1L,0x5C629D47L}},{{(-1L),0x73AD5F57L,0x73AD5F57L,(-1L),0x3D1BED2DL,0L,0L,0x6A3E9856L,1L,0x5C629D47L},{(-1L),0x73AD5F57L,0x73AD5F57L,(-1L),0x3D1BED2DL,0L,0L,0x6A3E9856L,1L,0x5C629D47L},{(-1L),0x73AD5F57L,0x73AD5F57L,(-1L),0x3D1BED2DL,0L,0L,0x6A3E9856L,1L,0x5C629D47L},{(-1L),0x73AD5F57L,0x73AD5F57L,(-1L),0x3D1BED2DL,0L,0L,0x6A3E9856L,1L,0x5C629D47L},{(-1L),0x73AD5F57L,0x73AD5F57L,(-1L),0x3D1BED2DL,0L,0L,0x6A3E9856L,1L,0x5C629D47L}},{{(-1L),0x73AD5F57L,0x73AD5F57L,(-1L),0x3D1BED2DL,0L,0L,0x6A3E9856L,1L,0x5C629D47L},{(-1L),0x73AD5F57L,0x73AD5F57L,(-1L),0x3D1BED2DL,0L,0L,0x6A3E9856L,1L,0x5C629D47L},{(-1L),0x73AD5F57L,0x73AD5F57L,(-1L),0x3D1BED2DL,0L,0L,0x6A3E9856L,1L,0x5C629D47L},{(-1L),0x73AD5F57L,0x73AD5F57L,(-1L),0x3D1BED2DL,0L,0L,0x6A3E9856L,1L,0x5C629D47L},{(-1L),0x73AD5F57L,0x73AD5F57L,(-1L),0x3D1BED2DL,0L,0L,0x6A3E9856L,1L,0x5C629D47L}},{{(-1L),0x73AD5F57L,0x73AD5F57L,(-1L),0x3D1BED2DL,0L,0L,0x6A3E9856L,1L,0x5C629D47L},{(-1L),0x73AD5F57L,0x73AD5F57L,(-1L),0x3D1BED2DL,0L,0L,0x6A3E9856L,1L,0x5C629D47L},{(-1L),0x73AD5F57L,0x73AD5F57L,(-1L),0x3D1BED2DL,0L,0L,0x6A3E9856L,1L,0x5C629D47L},{(-1L),0x73AD5F57L,0x73AD5F57L,(-1L),0x3D1BED2DL,0L,0L,0x6A3E9856L,1L,0x5C629D47L},{(-1L),0x73AD5F57L,0x73AD5F57L,(-1L),0x3D1BED2DL,0L,0L,0x6A3E9856L,1L,0x5C629D47L}}};
        int32_t l_470 = 0L;
        int32_t ***l_619 = &p_1979->g_616;
        uint8_t ***l_642 = (void*)0;
        int i, j, k;
lbl_504:
        if ((safe_lshift_func_int16_t_s_u(3L, ((&l_154[0] != ((*l_405) = &l_154[0])) , (((*l_421) = ((safe_mul_func_int16_t_s_s(p_54, ((((safe_mul_func_uint16_t_u_u(((safe_add_func_int8_t_s_s(((l_416 = 0x3795734132EE4A3EL) , ((safe_mul_func_uint8_t_u_u((0x353F86A5L != (l_127 == l_127)), p_53)) > FAKE_DIVERGE(p_1979->global_1_offset, get_global_id(1), 10))), 0x71L)) & (*p_1979->g_279)), (*l_127))) == 0L) || (*l_127)) >= (*l_127)))) , 0x418CD631L)) , p_54)))))
        { /* block id: 182 */
            int32_t *l_424 = (void*)0;
            (*p_1979->g_422) = l_421;
            return l_424;
        }
        else
        { /* block id: 185 */
            uint64_t *l_434 = &p_1979->g_223;
            uint64_t *l_437 = &p_1979->g_221;
            uint64_t *l_439 = &p_1979->g_440;
            uint64_t **l_438 = &l_439;
            int32_t l_443[8];
            int16_t *l_445 = (void*)0;
            int16_t *l_446 = (void*)0;
            int32_t *l_448[9];
            int i;
            for (i = 0; i < 8; i++)
                l_443[i] = (-7L);
            for (i = 0; i < 9; i++)
                l_448[i] = &p_1979->g_5;
            for (p_1979->g_280 = 0; (p_1979->g_280 <= 36); p_1979->g_280 = safe_add_func_uint64_t_u_u(p_1979->g_280, 7))
            { /* block id: 188 */
                int32_t **l_427 = &l_238;
                (*l_427) = (*p_1979->g_422);
            }
            l_443[3] = (safe_lshift_func_int16_t_s_s(((*p_1979->g_423) , (p_1979->g_191[2] && (safe_add_func_uint64_t_u_u((safe_sub_func_uint32_t_u_u(p_1979->g_14, ((((p_1979->g_206 |= 0x32C6FC7B46B6E087L) & ((*l_437) = (--(*l_434)))) , &p_1979->g_221) != ((*l_438) = l_434)))), (safe_sub_func_int64_t_s_s((-4L), p_53)))))), ((*l_127) = (l_443[3] >= l_444[5][8]))));
            p_1979->g_450++;
            for (p_1979->g_3 = 0; (p_1979->g_3 >= (-13)); p_1979->g_3 = safe_sub_func_int64_t_s_s(p_1979->g_3, 9))
            { /* block id: 200 */
                int16_t *l_459 = (void*)0;
                uint16_t *l_471 = &p_1979->g_191[2];
                int32_t l_472 = 0x01462BFAL;
                uint16_t **l_474[4] = {&l_471,&l_471,&l_471,&l_471};
                int i;
                (*l_238) = (safe_sub_func_int8_t_s_s((p_53 < 0x208D26EC3D97539EL), (((1UL && (l_472 |= (safe_lshift_func_uint16_t_u_u((((void*)0 == l_459) < (safe_add_func_uint8_t_u_u(((safe_add_func_uint16_t_u_u(((*l_471) = (safe_mul_func_int8_t_s_s(((safe_sub_func_int16_t_s_s((safe_mul_func_int8_t_s_s((0x0CAE74D289BE4ABEL && ((3UL | (*p_1979->g_279)) && (((~(-10L)) , (*p_1979->g_279)) <= 0x30L))), (-1L))), p_1979->g_206)) , p_54), l_470))), 0L)) > p_1979->g_449), p_1979->g_3))), 12)))) >= p_1979->g_450) || p_53)));
                (*p_1979->g_423) &= (&p_1979->g_191[2] != (p_1979->g_475 = ((3L >= (l_415[2][1] == (void*)0)) , l_473)));
            }
        }
        for (p_1979->g_449 = 0; (p_1979->g_449 <= 1); p_1979->g_449 += 1)
        { /* block id: 210 */
            int32_t l_486 = 0L;
            int32_t l_497 = 0L;
            int32_t l_499[4][2][8] = {{{0x1F1FFBD9L,0x1F1FFBD9L,(-1L),1L,0x1EBABCDAL,1L,(-1L),0x1F1FFBD9L},{0x1F1FFBD9L,0x1F1FFBD9L,(-1L),1L,0x1EBABCDAL,1L,(-1L),0x1F1FFBD9L}},{{0x1F1FFBD9L,0x1F1FFBD9L,(-1L),1L,0x1EBABCDAL,1L,(-1L),0x1F1FFBD9L},{0x1F1FFBD9L,0x1F1FFBD9L,(-1L),1L,0x1EBABCDAL,1L,(-1L),0x1F1FFBD9L}},{{0x1F1FFBD9L,0x1F1FFBD9L,(-1L),1L,0x1EBABCDAL,1L,(-1L),0x1F1FFBD9L},{0x1F1FFBD9L,0x1F1FFBD9L,(-1L),1L,0x1EBABCDAL,1L,(-1L),0x1F1FFBD9L}},{{0x1F1FFBD9L,0x1F1FFBD9L,(-1L),1L,0x1EBABCDAL,1L,(-1L),0x1F1FFBD9L},{0x1F1FFBD9L,0x1F1FFBD9L,(-1L),1L,0x1EBABCDAL,1L,(-1L),0x1F1FFBD9L}}};
            uint16_t l_519 = 0UL;
            int16_t *l_521 = (void*)0;
            int16_t **l_520 = &l_521;
            uint16_t **l_532[2][4][8] = {{{&l_473,(void*)0,&l_473,&l_473,(void*)0,&l_473,&l_473,(void*)0},{&l_473,(void*)0,&l_473,&l_473,(void*)0,&l_473,&l_473,(void*)0},{&l_473,(void*)0,&l_473,&l_473,(void*)0,&l_473,&l_473,(void*)0},{&l_473,(void*)0,&l_473,&l_473,(void*)0,&l_473,&l_473,(void*)0}},{{&l_473,(void*)0,&l_473,&l_473,(void*)0,&l_473,&l_473,(void*)0},{&l_473,(void*)0,&l_473,&l_473,(void*)0,&l_473,&l_473,(void*)0},{&l_473,(void*)0,&l_473,&l_473,(void*)0,&l_473,&l_473,(void*)0},{&l_473,(void*)0,&l_473,&l_473,(void*)0,&l_473,&l_473,(void*)0}}};
            uint8_t **l_558[7][1] = {{&p_1979->g_279},{&p_1979->g_279},{&p_1979->g_279},{&p_1979->g_279},{&p_1979->g_279},{&p_1979->g_279},{&p_1979->g_279}};
            int i, j, k;
            for (p_1979->g_223 = 0; (p_1979->g_223 <= 3); p_1979->g_223 += 1)
            { /* block id: 213 */
                int64_t l_476 = 0L;
                int32_t *l_477 = (void*)0;
                int32_t *l_478 = &l_447[0][4][7];
                int32_t l_479 = 7L;
                int32_t *l_480 = &p_1979->g_5;
                int32_t *l_481 = &p_1979->g_5;
                int32_t *l_482 = &l_233;
                int32_t *l_483 = &l_447[1][2][7];
                int32_t *l_484 = &p_1979->g_3;
                int32_t *l_485 = &p_1979->g_5;
                int32_t *l_487 = &l_447[3][4][9];
                int32_t *l_488 = (void*)0;
                int32_t *l_489 = &l_486;
                int32_t *l_490 = &p_1979->g_5;
                int32_t *l_491 = &l_479;
                int32_t *l_492 = &l_230;
                int32_t *l_493 = (void*)0;
                int32_t *l_494 = &l_447[1][1][8];
                int32_t *l_495 = &p_1979->g_89;
                int32_t *l_496[2][4];
                int32_t **l_503 = &l_491;
                int8_t ***l_509[2][10][10] = {{{&l_154[0],&l_154[0],&l_154[0],(void*)0,(void*)0,&l_154[0],&l_154[0],&l_154[0],&l_154[0],&l_154[0]},{&l_154[0],&l_154[0],&l_154[0],(void*)0,(void*)0,&l_154[0],&l_154[0],&l_154[0],&l_154[0],&l_154[0]},{&l_154[0],&l_154[0],&l_154[0],(void*)0,(void*)0,&l_154[0],&l_154[0],&l_154[0],&l_154[0],&l_154[0]},{&l_154[0],&l_154[0],&l_154[0],(void*)0,(void*)0,&l_154[0],&l_154[0],&l_154[0],&l_154[0],&l_154[0]},{&l_154[0],&l_154[0],&l_154[0],(void*)0,(void*)0,&l_154[0],&l_154[0],&l_154[0],&l_154[0],&l_154[0]},{&l_154[0],&l_154[0],&l_154[0],(void*)0,(void*)0,&l_154[0],&l_154[0],&l_154[0],&l_154[0],&l_154[0]},{&l_154[0],&l_154[0],&l_154[0],(void*)0,(void*)0,&l_154[0],&l_154[0],&l_154[0],&l_154[0],&l_154[0]},{&l_154[0],&l_154[0],&l_154[0],(void*)0,(void*)0,&l_154[0],&l_154[0],&l_154[0],&l_154[0],&l_154[0]},{&l_154[0],&l_154[0],&l_154[0],(void*)0,(void*)0,&l_154[0],&l_154[0],&l_154[0],&l_154[0],&l_154[0]},{&l_154[0],&l_154[0],&l_154[0],(void*)0,(void*)0,&l_154[0],&l_154[0],&l_154[0],&l_154[0],&l_154[0]}},{{&l_154[0],&l_154[0],&l_154[0],(void*)0,(void*)0,&l_154[0],&l_154[0],&l_154[0],&l_154[0],&l_154[0]},{&l_154[0],&l_154[0],&l_154[0],(void*)0,(void*)0,&l_154[0],&l_154[0],&l_154[0],&l_154[0],&l_154[0]},{&l_154[0],&l_154[0],&l_154[0],(void*)0,(void*)0,&l_154[0],&l_154[0],&l_154[0],&l_154[0],&l_154[0]},{&l_154[0],&l_154[0],&l_154[0],(void*)0,(void*)0,&l_154[0],&l_154[0],&l_154[0],&l_154[0],&l_154[0]},{&l_154[0],&l_154[0],&l_154[0],(void*)0,(void*)0,&l_154[0],&l_154[0],&l_154[0],&l_154[0],&l_154[0]},{&l_154[0],&l_154[0],&l_154[0],(void*)0,(void*)0,&l_154[0],&l_154[0],&l_154[0],&l_154[0],&l_154[0]},{&l_154[0],&l_154[0],&l_154[0],(void*)0,(void*)0,&l_154[0],&l_154[0],&l_154[0],&l_154[0],&l_154[0]},{&l_154[0],&l_154[0],&l_154[0],(void*)0,(void*)0,&l_154[0],&l_154[0],&l_154[0],&l_154[0],&l_154[0]},{&l_154[0],&l_154[0],&l_154[0],(void*)0,(void*)0,&l_154[0],&l_154[0],&l_154[0],&l_154[0],&l_154[0]},{&l_154[0],&l_154[0],&l_154[0],(void*)0,(void*)0,&l_154[0],&l_154[0],&l_154[0],&l_154[0],&l_154[0]}}};
                uint32_t **l_513 = (void*)0;
                uint32_t **l_514 = (void*)0;
                uint32_t *l_516 = (void*)0;
                uint32_t **l_515[9][8] = {{&l_516,&l_516,(void*)0,&l_516,&l_516,&l_516,&l_516,(void*)0},{&l_516,&l_516,(void*)0,&l_516,&l_516,&l_516,&l_516,(void*)0},{&l_516,&l_516,(void*)0,&l_516,&l_516,&l_516,&l_516,(void*)0},{&l_516,&l_516,(void*)0,&l_516,&l_516,&l_516,&l_516,(void*)0},{&l_516,&l_516,(void*)0,&l_516,&l_516,&l_516,&l_516,(void*)0},{&l_516,&l_516,(void*)0,&l_516,&l_516,&l_516,&l_516,(void*)0},{&l_516,&l_516,(void*)0,&l_516,&l_516,&l_516,&l_516,(void*)0},{&l_516,&l_516,(void*)0,&l_516,&l_516,&l_516,&l_516,(void*)0},{&l_516,&l_516,(void*)0,&l_516,&l_516,&l_516,&l_516,(void*)0}};
                int16_t *l_518 = &p_1979->g_90;
                uint64_t *l_536 = &p_1979->g_440;
                uint64_t **l_535[1];
                uint8_t **l_560[1][10] = {{(void*)0,&p_1979->g_279,(void*)0,&p_1979->g_279,(void*)0,(void*)0,&p_1979->g_279,(void*)0,&p_1979->g_279,(void*)0}};
                int i, j, k;
                for (i = 0; i < 2; i++)
                {
                    for (j = 0; j < 4; j++)
                        l_496[i][j] = &l_129;
                }
                for (i = 0; i < 1; i++)
                    l_535[i] = &l_536;
                --p_1979->g_500;
                (*l_503) = &l_447[3][4][7];
                for (p_1979->g_221 = 0; (p_1979->g_221 <= 3); p_1979->g_221 += 1)
                { /* block id: 218 */
                    if (p_1979->g_89)
                        goto lbl_504;
                }
            }
            if ((~(*p_1979->g_423)))
            { /* block id: 254 */
                if (l_470)
                    break;
            }
            else
            { /* block id: 256 */
                uint16_t l_604[2][3] = {{1UL,0xDF5CL,1UL},{1UL,0xDF5CL,1UL}};
                int i, j;
                for (l_233 = 0; (l_233 <= 3); l_233 += 1)
                { /* block id: 259 */
                    int8_t l_584 = (-1L);
                    int64_t *l_599 = &p_1979->g_340[5][3][2];
                    int32_t l_603 = 0L;
                    if (((safe_mod_func_uint8_t_u_u((safe_sub_func_int32_t_s_s(l_583, ((0x96274F636EED263FL & FAKE_DIVERGE(p_1979->local_1_offset, get_local_id(1), 10)) , 0x370EE399L))), 1UL)) | l_584))
                    { /* block id: 260 */
                        (*l_127) |= ((*p_1979->g_423) &= (safe_mul_func_uint8_t_u_u(1UL, p_53)));
                        (*l_127) ^= 0x0517E292L;
                    }
                    else
                    { /* block id: 264 */
                        int32_t **l_591 = &l_238;
                        int32_t ***l_592 = (void*)0;
                        int32_t **l_594 = &p_1979->g_423;
                        int32_t ***l_593 = &l_594;
                        int64_t *l_600 = &p_1979->g_206;
                        l_603 = (((safe_add_func_uint32_t_u_u((((*p_1979->g_279) & ((safe_lshift_func_int16_t_s_s(((l_447[1][0][5] , (l_591 = &l_238)) == ((*l_593) = &p_1979->g_423)), 11)) != (safe_add_func_int16_t_s_s(((*p_1979->g_524) = ((safe_rshift_func_uint16_t_u_s(((l_600 = l_599) != (void*)0), 15)) | (7UL >= (+0x19D20BA9L)))), (safe_mod_func_uint16_t_u_u(65535UL, p_53)))))) != 65532UL), (**p_1979->g_422))) && p_54) <= 1L);
                    }
                    if ((*p_1979->g_423))
                        break;
                    if (l_604[0][0])
                        continue;
                }
                return (*p_1979->g_422);
            }
        }
        l_127 = (void*)0;
        for (p_1979->g_89 = 0; (p_1979->g_89 <= (-16)); p_1979->g_89 = safe_sub_func_int8_t_s_s(p_1979->g_89, 2))
        { /* block id: 280 */
            uint8_t l_638 = 0x9DL;
            int32_t l_644 = 0x6CF35489L;
            uint8_t ***l_654 = &l_650[5][1][3];
            for (p_1979->g_94 = 3; (p_1979->g_94 >= 0); p_1979->g_94 -= 1)
            { /* block id: 283 */
                int32_t ***l_620[2][6] = {{&p_1979->g_616,&p_1979->g_616,&p_1979->g_616,&p_1979->g_616,&p_1979->g_616,&p_1979->g_616},{&p_1979->g_616,&p_1979->g_616,&p_1979->g_616,&p_1979->g_616,&p_1979->g_616,&p_1979->g_616}};
                int32_t l_637 = 6L;
                uint32_t *l_659 = &l_343[3][3][1];
                int i, j;
                for (p_1979->g_376 = 3; (p_1979->g_376 >= 0); p_1979->g_376 -= 1)
                { /* block id: 286 */
                    uint8_t l_633 = 0x75L;
                    int32_t l_634 = (-6L);
                    int32_t l_643 = 0x2C1E8844L;
                    for (p_1979->g_235 = 0; (p_1979->g_235 <= 3); p_1979->g_235 += 1)
                    { /* block id: 289 */
                        int32_t ****l_617 = (void*)0;
                        int32_t ****l_618[1];
                        uint16_t *l_639 = &p_1979->g_640;
                        uint8_t ****l_651 = &l_649;
                        uint8_t ****l_655 = (void*)0;
                        uint8_t ****l_656 = &l_642;
                        uint32_t **l_660 = &l_517;
                        int i, j, k;
                        for (i = 0; i < 1; i++)
                            l_618[i] = (void*)0;
                        l_644 |= (safe_lshift_func_int8_t_s_u((l_643 = (safe_lshift_func_int8_t_s_s((((p_1979->g_5 = ((GROUP_DIVERGE(0, 1) > (safe_sub_func_int32_t_s_s((p_1979->g_146[p_1979->g_376] , ((l_619 = p_1979->g_615) != (l_620[0][5] = &p_1979->g_616))), 0xB9A82DE8L))) && ((safe_div_func_int8_t_s_s((((((+(safe_lshift_func_uint16_t_u_u(((0x0CC6L != ((**p_1979->g_523) = (safe_div_func_uint16_t_u_u(((*l_639) |= (safe_div_func_uint32_t_u_u(p_1979->g_191[2], (safe_div_func_uint32_t_u_u((l_343[p_1979->g_235][p_1979->g_235][p_1979->g_94] = (l_447[1][0][5] , (safe_add_func_int8_t_s_s((l_634 = (+l_633)), ((((((safe_mod_func_int32_t_s_s(l_637, l_447[3][4][3])) , (*p_1979->g_423)) & l_633) < 8UL) , l_638) < 0xB680A250L))))), (**p_1979->g_422)))))), 65535UL)))) <= l_637), l_637))) < p_1979->g_146[7]) , (void*)0) == l_641) || (***p_1979->g_522)), p_1979->g_498)) == l_637))) , (void*)0) == l_642), 6))), GROUP_DIVERGE(2, 1)));
                        l_634 |= (l_643 = (safe_lshift_func_int8_t_s_s(((***l_406) = (safe_add_func_int16_t_s_s((-7L), (((*l_651) = l_649) != ((safe_mod_func_uint64_t_u_u(p_1979->g_280, p_1979->g_640)) , ((*l_656) = l_654)))))), 2)));
                        l_634 |= ((safe_div_func_int8_t_s_s(p_1979->g_91, p_1979->g_101[1][4][1])) | (((*l_660) = l_659) != (void*)0));
                    }
                }
                for (p_54 = 0; (p_54 <= 3); p_54 += 1)
                { /* block id: 310 */
                    uint32_t l_663 = 0x1F96C0E3L;
                    l_663 ^= (safe_rshift_func_uint8_t_u_s((*p_1979->g_279), p_1979->g_340[0][0][2]));
                }
            }
        }
    }
    if (p_53)
    { /* block id: 316 */
        uint32_t l_664[8][4][8] = {{{0x355C7AF2L,1UL,0x355C7AF2L,0x355C7AF2L,1UL,0x355C7AF2L,0x355C7AF2L,1UL},{0x355C7AF2L,1UL,0x355C7AF2L,0x355C7AF2L,1UL,0x355C7AF2L,0x355C7AF2L,1UL},{0x355C7AF2L,1UL,0x355C7AF2L,0x355C7AF2L,1UL,0x355C7AF2L,0x355C7AF2L,1UL},{0x355C7AF2L,1UL,0x355C7AF2L,0x355C7AF2L,1UL,0x355C7AF2L,0x355C7AF2L,1UL}},{{0x355C7AF2L,1UL,0x355C7AF2L,0x355C7AF2L,1UL,0x355C7AF2L,0x355C7AF2L,1UL},{0x355C7AF2L,1UL,0x355C7AF2L,0x355C7AF2L,1UL,0x355C7AF2L,0x355C7AF2L,1UL},{0x355C7AF2L,1UL,0x355C7AF2L,0x355C7AF2L,1UL,0x355C7AF2L,0x355C7AF2L,1UL},{0x355C7AF2L,1UL,0x355C7AF2L,0x355C7AF2L,1UL,0x355C7AF2L,0x355C7AF2L,1UL}},{{0x355C7AF2L,1UL,0x355C7AF2L,0x355C7AF2L,1UL,0x355C7AF2L,0x355C7AF2L,1UL},{0x355C7AF2L,1UL,0x355C7AF2L,0x355C7AF2L,1UL,0x355C7AF2L,0x355C7AF2L,1UL},{0x355C7AF2L,1UL,0x355C7AF2L,0x355C7AF2L,1UL,0x355C7AF2L,0x355C7AF2L,1UL},{0x355C7AF2L,1UL,0x355C7AF2L,0x355C7AF2L,1UL,0x355C7AF2L,0x355C7AF2L,1UL}},{{0x355C7AF2L,1UL,0x355C7AF2L,0x355C7AF2L,1UL,0x355C7AF2L,0x355C7AF2L,1UL},{0x355C7AF2L,1UL,0x355C7AF2L,0x355C7AF2L,1UL,0x355C7AF2L,0x355C7AF2L,1UL},{0x355C7AF2L,1UL,0x355C7AF2L,0x355C7AF2L,1UL,0x355C7AF2L,0x355C7AF2L,1UL},{0x355C7AF2L,1UL,0x355C7AF2L,0x355C7AF2L,1UL,0x355C7AF2L,0x355C7AF2L,1UL}},{{0x355C7AF2L,1UL,0x355C7AF2L,0x355C7AF2L,1UL,0x355C7AF2L,0x355C7AF2L,1UL},{0x355C7AF2L,1UL,0x355C7AF2L,0x355C7AF2L,1UL,0x355C7AF2L,0x355C7AF2L,1UL},{0x355C7AF2L,1UL,0x355C7AF2L,0x355C7AF2L,1UL,0x355C7AF2L,0x355C7AF2L,1UL},{0x355C7AF2L,1UL,0x355C7AF2L,0x355C7AF2L,1UL,0x355C7AF2L,0x355C7AF2L,1UL}},{{0x355C7AF2L,1UL,0x355C7AF2L,0x355C7AF2L,1UL,0x355C7AF2L,0x355C7AF2L,1UL},{0x355C7AF2L,1UL,0x355C7AF2L,0x355C7AF2L,1UL,0x355C7AF2L,0x355C7AF2L,1UL},{0x355C7AF2L,1UL,0x355C7AF2L,0x355C7AF2L,1UL,0x355C7AF2L,0x355C7AF2L,1UL},{0x355C7AF2L,1UL,0x355C7AF2L,0x355C7AF2L,1UL,0x355C7AF2L,0x355C7AF2L,1UL}},{{0x355C7AF2L,1UL,0x355C7AF2L,0x355C7AF2L,1UL,0x355C7AF2L,0x355C7AF2L,1UL},{0x355C7AF2L,1UL,0x355C7AF2L,0x355C7AF2L,1UL,0x355C7AF2L,0x355C7AF2L,1UL},{0x355C7AF2L,1UL,0x355C7AF2L,0x355C7AF2L,1UL,0x355C7AF2L,0x355C7AF2L,1UL},{0x355C7AF2L,1UL,0x355C7AF2L,0x355C7AF2L,1UL,0x355C7AF2L,0x355C7AF2L,1UL}},{{0x355C7AF2L,1UL,0x355C7AF2L,0x355C7AF2L,1UL,0x355C7AF2L,0x355C7AF2L,1UL},{0x355C7AF2L,1UL,0x355C7AF2L,0x355C7AF2L,1UL,0x355C7AF2L,0x355C7AF2L,1UL},{0x355C7AF2L,1UL,0x355C7AF2L,0x355C7AF2L,1UL,0x355C7AF2L,0x355C7AF2L,1UL},{0x355C7AF2L,1UL,0x355C7AF2L,0x355C7AF2L,1UL,0x355C7AF2L,0x355C7AF2L,1UL}}};
        int32_t l_672[10][6][4] = {{{0L,0x326D1256L,3L,0L},{0L,0x326D1256L,3L,0L},{0L,0x326D1256L,3L,0L},{0L,0x326D1256L,3L,0L},{0L,0x326D1256L,3L,0L},{0L,0x326D1256L,3L,0L}},{{0L,0x326D1256L,3L,0L},{0L,0x326D1256L,3L,0L},{0L,0x326D1256L,3L,0L},{0L,0x326D1256L,3L,0L},{0L,0x326D1256L,3L,0L},{0L,0x326D1256L,3L,0L}},{{0L,0x326D1256L,3L,0L},{0L,0x326D1256L,3L,0L},{0L,0x326D1256L,3L,0L},{0L,0x326D1256L,3L,0L},{0L,0x326D1256L,3L,0L},{0L,0x326D1256L,3L,0L}},{{0L,0x326D1256L,3L,0L},{0L,0x326D1256L,3L,0L},{0L,0x326D1256L,3L,0L},{0L,0x326D1256L,3L,0L},{0L,0x326D1256L,3L,0L},{0L,0x326D1256L,3L,0L}},{{0L,0x326D1256L,3L,0L},{0L,0x326D1256L,3L,0L},{0L,0x326D1256L,3L,0L},{0L,0x326D1256L,3L,0L},{0L,0x326D1256L,3L,0L},{0L,0x326D1256L,3L,0L}},{{0L,0x326D1256L,3L,0L},{0L,0x326D1256L,3L,0L},{0L,0x326D1256L,3L,0L},{0L,0x326D1256L,3L,0L},{0L,0x326D1256L,3L,0L},{0L,0x326D1256L,3L,0L}},{{0L,0x326D1256L,3L,0L},{0L,0x326D1256L,3L,0L},{0L,0x326D1256L,3L,0L},{0L,0x326D1256L,3L,0L},{0L,0x326D1256L,3L,0L},{0L,0x326D1256L,3L,0L}},{{0L,0x326D1256L,3L,0L},{0L,0x326D1256L,3L,0L},{0L,0x326D1256L,3L,0L},{0L,0x326D1256L,3L,0L},{0L,0x326D1256L,3L,0L},{0L,0x326D1256L,3L,0L}},{{0L,0x326D1256L,3L,0L},{0L,0x326D1256L,3L,0L},{0L,0x326D1256L,3L,0L},{0L,0x326D1256L,3L,0L},{0L,0x326D1256L,3L,0L},{0L,0x326D1256L,3L,0L}},{{0L,0x326D1256L,3L,0L},{0L,0x326D1256L,3L,0L},{0L,0x326D1256L,3L,0L},{0L,0x326D1256L,3L,0L},{0L,0x326D1256L,3L,0L},{0L,0x326D1256L,3L,0L}}};
        union U0 *l_682 = &p_1979->g_683;
        union U0 **l_681 = &l_682;
        int i, j, k;
        --l_664[5][1][6];
        for (p_1979->g_3 = 3; (p_1979->g_3 >= 0); p_1979->g_3 -= 1)
        { /* block id: 320 */
            uint16_t l_673 = 0x6F16L;
            union U0 *l_680 = (void*)0;
            union U0 **l_679 = &l_680;
            uint32_t **l_701 = (void*)0;
            int32_t *l_726[10] = {&p_1979->g_94,&p_1979->g_94,&p_1979->g_94,&p_1979->g_94,&p_1979->g_94,&p_1979->g_94,&p_1979->g_94,&p_1979->g_94,&p_1979->g_94,&p_1979->g_94};
            int i;
            (*p_1979->g_423) |= l_664[0][3][2];
            for (p_1979->g_440 = 0; (p_1979->g_440 <= 3); p_1979->g_440 += 1)
            { /* block id: 324 */
                int32_t l_678 = (-5L);
                uint64_t ***l_692[3][1];
                int32_t l_698[7][5] = {{0x4C9569FEL,0x4C9569FEL,2L,0x287E6B98L,0L},{0x4C9569FEL,0x4C9569FEL,2L,0x287E6B98L,0L},{0x4C9569FEL,0x4C9569FEL,2L,0x287E6B98L,0L},{0x4C9569FEL,0x4C9569FEL,2L,0x287E6B98L,0L},{0x4C9569FEL,0x4C9569FEL,2L,0x287E6B98L,0L},{0x4C9569FEL,0x4C9569FEL,2L,0x287E6B98L,0L},{0x4C9569FEL,0x4C9569FEL,2L,0x287E6B98L,0L}};
                int i, j;
                for (i = 0; i < 3; i++)
                {
                    for (j = 0; j < 1; j++)
                        l_692[i][j] = (void*)0;
                }
                (*p_1979->g_667) = &p_1979->g_388;
                for (l_233 = 3; (l_233 >= 0); l_233 -= 1)
                { /* block id: 328 */
                    int32_t *l_669 = &l_583;
                    int32_t *l_670 = &l_231;
                    int32_t *l_671[2];
                    int64_t *l_693 = (void*)0;
                    uint32_t ***l_704 = &p_1979->g_702;
                    uint8_t l_709 = 253UL;
                    uint16_t **l_710 = &l_473;
                    uint16_t ***l_711[7][8] = {{(void*)0,(void*)0,&l_710,&l_710,&l_710,&l_710,&l_710,(void*)0},{(void*)0,(void*)0,&l_710,&l_710,&l_710,&l_710,&l_710,(void*)0},{(void*)0,(void*)0,&l_710,&l_710,&l_710,&l_710,&l_710,(void*)0},{(void*)0,(void*)0,&l_710,&l_710,&l_710,&l_710,&l_710,(void*)0},{(void*)0,(void*)0,&l_710,&l_710,&l_710,&l_710,&l_710,(void*)0},{(void*)0,(void*)0,&l_710,&l_710,&l_710,&l_710,&l_710,(void*)0},{(void*)0,(void*)0,&l_710,&l_710,&l_710,&l_710,&l_710,(void*)0}};
                    uint16_t **l_712[6] = {&p_1979->g_475,&p_1979->g_475,&p_1979->g_475,&p_1979->g_475,&p_1979->g_475,&p_1979->g_475};
                    int i, j;
                    for (i = 0; i < 2; i++)
                        l_671[i] = &p_1979->g_94;
                    l_673--;
                    for (l_129 = 3; (l_129 >= 0); l_129 -= 1)
                    { /* block id: 332 */
                        int i, j, k;
                        (*l_669) |= ((!p_1979->g_340[(l_233 + 1)][l_233][(l_233 + 2)]) | ((((safe_mul_func_int8_t_s_s(((*l_155) = l_673), (l_678 >= ((*p_1979->g_279) >= (0x76F7029DL ^ (((l_664[5][1][6] , l_679) != l_681) > (-1L))))))) || p_1979->g_206) >= p_1979->g_280) != p_54));
                        l_698[2][1] = (safe_lshift_func_uint16_t_u_s((safe_mod_func_int64_t_s_s(((safe_sub_func_int64_t_s_s(((**p_1979->g_422) | ((((!0x33EDL) & (p_1979->g_340[(l_233 + 1)][l_233][(l_233 + 2)] | (safe_lshift_func_uint8_t_u_s(((*p_1979->g_279) = ((((void*)0 != l_692[1][0]) & (l_693 == &p_1979->g_340[4][1][5])) && l_678)), (safe_rshift_func_int16_t_s_u(((*p_1979->g_524) = (((safe_rshift_func_uint16_t_u_s(0xA4B2L, (*p_1979->g_524))) , p_1979->g_91) <= l_672[5][0][2])), 12)))))) ^ (-9L)) >= FAKE_DIVERGE(p_1979->local_0_offset, get_local_id(0), 10))), (-1L))) , p_1979->g_91), p_1979->g_146[7])), l_664[5][1][6]));
                        if ((*p_1979->g_423))
                            continue;
                    }
                    l_698[4][4] &= ((*l_641) ^= (0x644CDBB8L ^ (FAKE_DIVERGE(p_1979->local_1_offset, get_local_id(1), 10) | (p_1979->g_146[7] & (safe_mul_func_int16_t_s_s((((void*)0 == &l_155) & (l_701 != ((*l_704) = p_1979->g_702))), (safe_sub_func_uint8_t_u_u(246UL, 254UL))))))));
                    (*l_641) &= (safe_div_func_uint8_t_u_u((((~(l_709 & ((l_712[4] = l_710) != p_1979->g_713))) ^ ((*p_1979->g_475) = (!(safe_lshift_func_int16_t_s_s(((p_1979->g_114 < p_1979->g_640) > (l_698[4][3] |= ((((*p_1979->g_279) = ((safe_sub_func_uint32_t_u_u(((-2L) >= ((safe_mod_func_int32_t_s_s((((l_672[5][0][2] = (*p_1979->g_279)) | ((FAKE_DIVERGE(p_1979->local_1_offset, get_local_id(1), 10) ^ (safe_mul_func_uint16_t_u_u(((safe_sub_func_int16_t_s_s(((safe_mul_func_int16_t_s_s(0x77E7L, (&l_231 != (void*)0))) > (*p_1979->g_475)), (***p_1979->g_522))) || p_1979->g_10), 0x0872L))) , (*p_1979->g_279))) ^ p_1979->g_340[1][2][1]), p_53)) <= 4294967294UL)), 0x1C5D2A0BL)) ^ GROUP_DIVERGE(1, 1))) || 0xE4L) || p_53))), l_664[5][1][6]))))) | (-10L)), FAKE_DIVERGE(p_1979->group_0_offset, get_group_id(0), 10)));
                }
                return (*p_1979->g_422);
            }
            for (l_266 = 0; (l_266 <= 3); l_266 += 1)
            { /* block id: 354 */
                int64_t l_763[4][2] = {{0x71C81B28DF96E5F2L,0x71C81B28DF96E5F2L},{0x71C81B28DF96E5F2L,0x71C81B28DF96E5F2L},{0x71C81B28DF96E5F2L,0x71C81B28DF96E5F2L},{0x71C81B28DF96E5F2L,0x71C81B28DF96E5F2L}};
                int i, j;
                (*l_641) = (l_672[8][0][2] = 0x03078762L);
                for (l_673 = 0; (l_673 <= 3); l_673 += 1)
                { /* block id: 359 */
                    uint64_t l_736 = 0xBE17506F4C6965A7L;
                    int16_t l_762[8][1];
                    int i, j;
                    for (i = 0; i < 8; i++)
                    {
                        for (j = 0; j < 1; j++)
                            l_762[i][j] = 0L;
                    }
                    for (l_338 = 0; (l_338 <= 3); l_338 += 1)
                    { /* block id: 362 */
                        if (p_53)
                            break;
                    }
                    if ((safe_sub_func_int64_t_s_s(((*l_641) <= (safe_rshift_func_int8_t_s_u(p_53, ((p_54 < (safe_mod_func_uint16_t_u_u((safe_rshift_func_uint8_t_u_s(0xC9L, p_54)), (*l_238)))) && (*p_1979->g_279))))), (!(p_1979->g_512[2][2][3].f0 <= (p_54 < l_672[5][0][2]))))))
                    { /* block id: 365 */
                        int32_t *l_735 = (void*)0;
                        return l_735;
                    }
                    else
                    { /* block id: 367 */
                        uint16_t l_761 = 0xFC03L;
                        (*l_238) = (l_736 <= (~(((safe_mul_func_int8_t_s_s((safe_mod_func_int16_t_s_s((((safe_lshift_func_int8_t_s_u(((safe_rshift_func_int16_t_s_u(p_53, ((safe_sub_func_uint16_t_u_u((safe_mul_func_int8_t_s_s(((safe_add_func_uint64_t_u_u(p_53, ((l_736 , ((*p_1979->g_524) = (p_54 == p_53))) == (safe_add_func_uint64_t_u_u(p_53, ((safe_add_func_uint8_t_u_u(3UL, ((((safe_rshift_func_int16_t_s_u(((safe_mul_func_int8_t_s_s(((safe_mul_func_uint16_t_u_u(3UL, p_54)) != p_1979->g_450), FAKE_DIVERGE(p_1979->local_1_offset, get_local_id(1), 10))) , p_53), 6)) & p_54) <= FAKE_DIVERGE(p_1979->global_0_offset, get_global_id(0), 10)) <= l_761))) || p_1979->g_206)))))) == l_762[0][0]), l_672[5][0][1])), p_54)) , 0UL))) != p_1979->g_440), l_763[1][0])) <= p_1979->g_223) < 0x51ABB698L), l_762[0][0])), l_763[2][1])) , (***p_1979->g_522)) <= 0x2319L)));
                    }
                }
            }
        }
    }
    else
    { /* block id: 374 */
        int32_t l_775 = (-9L);
        int32_t l_776 = 1L;
        int32_t l_795[2][10] = {{(-1L),0L,0L,(-1L),(-1L),0L,0L,(-1L),(-1L),0L},{(-1L),0L,0L,(-1L),(-1L),0L,0L,(-1L),(-1L),0L}};
        int32_t *l_818 = &l_129;
        uint64_t l_834[10][3] = {{1UL,1UL,18446744073709551615UL},{1UL,1UL,18446744073709551615UL},{1UL,1UL,18446744073709551615UL},{1UL,1UL,18446744073709551615UL},{1UL,1UL,18446744073709551615UL},{1UL,1UL,18446744073709551615UL},{1UL,1UL,18446744073709551615UL},{1UL,1UL,18446744073709551615UL},{1UL,1UL,18446744073709551615UL},{1UL,1UL,18446744073709551615UL}};
        uint32_t l_860 = 0UL;
        uint8_t l_862 = 255UL;
        uint8_t ***l_863 = (void*)0;
        uint8_t l_895 = 0x69L;
        int16_t *l_902 = &p_1979->g_498;
        int i, j;
        for (p_1979->g_280 = 0; (p_1979->g_280 >= 8); p_1979->g_280 = safe_add_func_int64_t_s_s(p_1979->g_280, 6))
        { /* block id: 377 */
            uint32_t l_774 = 4294967286UL;
            uint32_t l_783 = 4294967295UL;
            int32_t l_794 = (-1L);
            int32_t l_796 = 7L;
            int32_t l_797 = (-1L);
            int32_t l_798 = 1L;
            int32_t l_799[6] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
            int8_t l_861 = 0L;
            int32_t *l_866 = &l_797;
            int i;
            (1 + 1);
        }
        if ((*l_818))
        { /* block id: 424 */
            int16_t l_877 = 0x39EDL;
            int32_t l_878[8] = {(-5L),8L,(-5L),(-5L),8L,(-5L),(-5L),8L};
            int32_t *l_882 = &p_1979->g_94;
            int i;
            l_879++;
            l_882 = (*p_1979->g_422);
        }
        else
        { /* block id: 427 */
            uint16_t **l_894[10][6] = {{&p_1979->g_475,&p_1979->g_475,(void*)0,&p_1979->g_475,&p_1979->g_475,&p_1979->g_475},{&p_1979->g_475,&p_1979->g_475,(void*)0,&p_1979->g_475,&p_1979->g_475,&p_1979->g_475},{&p_1979->g_475,&p_1979->g_475,(void*)0,&p_1979->g_475,&p_1979->g_475,&p_1979->g_475},{&p_1979->g_475,&p_1979->g_475,(void*)0,&p_1979->g_475,&p_1979->g_475,&p_1979->g_475},{&p_1979->g_475,&p_1979->g_475,(void*)0,&p_1979->g_475,&p_1979->g_475,&p_1979->g_475},{&p_1979->g_475,&p_1979->g_475,(void*)0,&p_1979->g_475,&p_1979->g_475,&p_1979->g_475},{&p_1979->g_475,&p_1979->g_475,(void*)0,&p_1979->g_475,&p_1979->g_475,&p_1979->g_475},{&p_1979->g_475,&p_1979->g_475,(void*)0,&p_1979->g_475,&p_1979->g_475,&p_1979->g_475},{&p_1979->g_475,&p_1979->g_475,(void*)0,&p_1979->g_475,&p_1979->g_475,&p_1979->g_475},{&p_1979->g_475,&p_1979->g_475,(void*)0,&p_1979->g_475,&p_1979->g_475,&p_1979->g_475}};
            uint16_t ***l_893 = &l_894[4][0];
            int32_t l_897 = 0L;
            int i, j;
            (*l_818) &= (safe_mul_func_int8_t_s_s((safe_div_func_uint32_t_u_u(0x5B71A3EDL, ((safe_add_func_uint32_t_u_u(((*p_1979->g_703) &= (safe_mod_func_uint16_t_u_u(((*p_1979->g_475) = ((safe_mod_func_uint8_t_u_u((((*l_893) = &p_1979->g_475) != &p_1979->g_475), (*p_1979->g_279))) || (l_895 < ((safe_unary_minus_func_int8_t_s(p_53)) && ((void*)0 != &l_834[9][2]))))), l_897))), 0UL)) && (-1L)))), (*l_641)));
        }
        (*p_1979->g_423) = ((!p_54) | (safe_lshift_func_int8_t_s_u((!((*l_818) | (safe_lshift_func_uint8_t_u_s(((*p_1979->g_279) &= (((**p_1979->g_702) , &l_444[3][4]) == ((*p_1979->g_523) = l_902))), 4)))), 2)));
        ++p_1979->g_905;
    }
    ++p_1979->g_911;
    for (p_1979->g_10 = 0; (p_1979->g_10 <= 3); p_1979->g_10 += 1)
    { /* block id: 441 */
        int32_t *l_914 = &l_233;
        int32_t *l_915 = &p_1979->g_89;
        return l_915;
    }
    return (*p_1979->g_422);
}


/* ------------------------------------------ */
/* 
 * reads : p_1979->g_10 p_1979->g_3 p_1979->g_5 p_1979->g_14 p_1979->g_77 p_1979->g_90 p_1979->g_91 p_1979->g_94
 * writes: p_1979->g_89 p_1979->g_91 p_1979->g_94
 */
int32_t * func_56(uint32_t  p_57, struct S1 * p_1979)
{ /* block id: 22 */
    int8_t l_62[8] = {1L,1L,1L,1L,1L,1L,1L,1L};
    int32_t *l_93[1][8] = {{&p_1979->g_94,&p_1979->g_94,&p_1979->g_94,&p_1979->g_94,&p_1979->g_94,&p_1979->g_94,&p_1979->g_94,&p_1979->g_94}};
    int i, j;
    p_1979->g_94 &= (safe_add_func_uint64_t_u_u(p_1979->g_10, (((void*)0 == &p_1979->g_5) , ((p_1979->g_3 != ((safe_add_func_int32_t_s_s(l_62[7], p_1979->g_5)) > func_63(l_62[7], p_1979))) && 0xA6C5FA60L))));
    return &p_1979->g_89;
}


/* ------------------------------------------ */
/* 
 * reads : p_1979->g_10 p_1979->g_14 p_1979->g_77 p_1979->g_3 p_1979->g_90 p_1979->g_91
 * writes: p_1979->g_89 p_1979->g_91
 */
int8_t  func_63(uint8_t  p_64, struct S1 * p_1979)
{ /* block id: 23 */
    int32_t l_75 = (-10L);
    int16_t *l_76[8][4][7] = {{{&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77},{&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77},{&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77},{&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77}},{{&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77},{&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77},{&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77},{&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77}},{{&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77},{&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77},{&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77},{&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77}},{{&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77},{&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77},{&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77},{&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77}},{{&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77},{&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77},{&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77},{&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77}},{{&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77},{&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77},{&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77},{&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77}},{{&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77},{&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77},{&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77},{&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77}},{{&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77},{&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77},{&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77},{&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77,&p_1979->g_77}}};
    int32_t l_78 = 0x3D95D606L;
    int32_t *l_88 = &p_1979->g_89;
    int32_t l_92 = 0x5737360BL;
    int i, j, k;
    p_1979->g_91 |= (safe_mod_func_int8_t_s_s((safe_sub_func_int32_t_s_s(((((0x68CFB996340C09C4L ^ (p_1979->g_10 != (~(safe_sub_func_int32_t_s_s(((*l_88) = (safe_div_func_int64_t_s_s((safe_rshift_func_int16_t_s_u((l_78 &= l_75), (&p_1979->g_3 != (((safe_rshift_func_uint8_t_u_u((p_1979->g_14 ^ 0x08L), 2)) & (safe_unary_minus_func_int16_t_s(((safe_sub_func_int32_t_s_s((((safe_lshift_func_int8_t_s_s(0x5BL, p_64)) >= (safe_rshift_func_uint16_t_u_u((p_64 || p_1979->g_77), 6))) ^ p_64), 0xAEE1FA01L)) == 0x47473870L)))) , (void*)0)))), 0x105CA7CEE7E287B8L))), p_64))))) & p_1979->g_3) , 1UL) , 0x6B44D538L), p_1979->g_90)), p_1979->g_90));
    return l_92;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S1 c_1980;
    struct S1* p_1979 = &c_1980;
    struct S1 c_1981 = {
        0x6FA9D19AL, // p_1979->g_3
        1L, // p_1979->g_5
        (-1L), // p_1979->g_10
        5L, // p_1979->g_11
        0x1E12AA53L, // p_1979->g_14
        0L, // p_1979->g_77
        (-9L), // p_1979->g_89
        4L, // p_1979->g_90
        5L, // p_1979->g_91
        (-5L), // p_1979->g_94
        {{{3L,3L,3L,4L,(-1L),4L},{3L,3L,3L,4L,(-1L),4L},{3L,3L,3L,4L,(-1L),4L},{3L,3L,3L,4L,(-1L),4L},{3L,3L,3L,4L,(-1L),4L},{3L,3L,3L,4L,(-1L),4L},{3L,3L,3L,4L,(-1L),4L},{3L,3L,3L,4L,(-1L),4L}},{{3L,3L,3L,4L,(-1L),4L},{3L,3L,3L,4L,(-1L),4L},{3L,3L,3L,4L,(-1L),4L},{3L,3L,3L,4L,(-1L),4L},{3L,3L,3L,4L,(-1L),4L},{3L,3L,3L,4L,(-1L),4L},{3L,3L,3L,4L,(-1L),4L},{3L,3L,3L,4L,(-1L),4L}},{{3L,3L,3L,4L,(-1L),4L},{3L,3L,3L,4L,(-1L),4L},{3L,3L,3L,4L,(-1L),4L},{3L,3L,3L,4L,(-1L),4L},{3L,3L,3L,4L,(-1L),4L},{3L,3L,3L,4L,(-1L),4L},{3L,3L,3L,4L,(-1L),4L},{3L,3L,3L,4L,(-1L),4L}},{{3L,3L,3L,4L,(-1L),4L},{3L,3L,3L,4L,(-1L),4L},{3L,3L,3L,4L,(-1L),4L},{3L,3L,3L,4L,(-1L),4L},{3L,3L,3L,4L,(-1L),4L},{3L,3L,3L,4L,(-1L),4L},{3L,3L,3L,4L,(-1L),4L},{3L,3L,3L,4L,(-1L),4L}},{{3L,3L,3L,4L,(-1L),4L},{3L,3L,3L,4L,(-1L),4L},{3L,3L,3L,4L,(-1L),4L},{3L,3L,3L,4L,(-1L),4L},{3L,3L,3L,4L,(-1L),4L},{3L,3L,3L,4L,(-1L),4L},{3L,3L,3L,4L,(-1L),4L},{3L,3L,3L,4L,(-1L),4L}}}, // p_1979->g_101
        246UL, // p_1979->g_114
        {0x63L,0x63L,0x63L,0x63L,0x63L,0x63L,0x63L,0x63L,0x63L,0x63L}, // p_1979->g_146
        9UL, // p_1979->g_185
        {65535UL,65535UL,65535UL,65535UL}, // p_1979->g_191
        0L, // p_1979->g_206
        0x35D66E90E1A3B808L, // p_1979->g_221
        2UL, // p_1979->g_223
        0xB58E8656L, // p_1979->g_235
        255UL, // p_1979->g_280
        &p_1979->g_280, // p_1979->g_279
        (void*)0, // p_1979->g_322
        {{{1L,(-10L),0x2F51524634641B94L,4L,0x386115999D3E9025L,0x70C02D7321C88EC6L,(-8L),1L},{1L,(-10L),0x2F51524634641B94L,4L,0x386115999D3E9025L,0x70C02D7321C88EC6L,(-8L),1L},{1L,(-10L),0x2F51524634641B94L,4L,0x386115999D3E9025L,0x70C02D7321C88EC6L,(-8L),1L},{1L,(-10L),0x2F51524634641B94L,4L,0x386115999D3E9025L,0x70C02D7321C88EC6L,(-8L),1L}},{{1L,(-10L),0x2F51524634641B94L,4L,0x386115999D3E9025L,0x70C02D7321C88EC6L,(-8L),1L},{1L,(-10L),0x2F51524634641B94L,4L,0x386115999D3E9025L,0x70C02D7321C88EC6L,(-8L),1L},{1L,(-10L),0x2F51524634641B94L,4L,0x386115999D3E9025L,0x70C02D7321C88EC6L,(-8L),1L},{1L,(-10L),0x2F51524634641B94L,4L,0x386115999D3E9025L,0x70C02D7321C88EC6L,(-8L),1L}},{{1L,(-10L),0x2F51524634641B94L,4L,0x386115999D3E9025L,0x70C02D7321C88EC6L,(-8L),1L},{1L,(-10L),0x2F51524634641B94L,4L,0x386115999D3E9025L,0x70C02D7321C88EC6L,(-8L),1L},{1L,(-10L),0x2F51524634641B94L,4L,0x386115999D3E9025L,0x70C02D7321C88EC6L,(-8L),1L},{1L,(-10L),0x2F51524634641B94L,4L,0x386115999D3E9025L,0x70C02D7321C88EC6L,(-8L),1L}},{{1L,(-10L),0x2F51524634641B94L,4L,0x386115999D3E9025L,0x70C02D7321C88EC6L,(-8L),1L},{1L,(-10L),0x2F51524634641B94L,4L,0x386115999D3E9025L,0x70C02D7321C88EC6L,(-8L),1L},{1L,(-10L),0x2F51524634641B94L,4L,0x386115999D3E9025L,0x70C02D7321C88EC6L,(-8L),1L},{1L,(-10L),0x2F51524634641B94L,4L,0x386115999D3E9025L,0x70C02D7321C88EC6L,(-8L),1L}},{{1L,(-10L),0x2F51524634641B94L,4L,0x386115999D3E9025L,0x70C02D7321C88EC6L,(-8L),1L},{1L,(-10L),0x2F51524634641B94L,4L,0x386115999D3E9025L,0x70C02D7321C88EC6L,(-8L),1L},{1L,(-10L),0x2F51524634641B94L,4L,0x386115999D3E9025L,0x70C02D7321C88EC6L,(-8L),1L},{1L,(-10L),0x2F51524634641B94L,4L,0x386115999D3E9025L,0x70C02D7321C88EC6L,(-8L),1L}},{{1L,(-10L),0x2F51524634641B94L,4L,0x386115999D3E9025L,0x70C02D7321C88EC6L,(-8L),1L},{1L,(-10L),0x2F51524634641B94L,4L,0x386115999D3E9025L,0x70C02D7321C88EC6L,(-8L),1L},{1L,(-10L),0x2F51524634641B94L,4L,0x386115999D3E9025L,0x70C02D7321C88EC6L,(-8L),1L},{1L,(-10L),0x2F51524634641B94L,4L,0x386115999D3E9025L,0x70C02D7321C88EC6L,(-8L),1L}}}, // p_1979->g_340
        (-2L), // p_1979->g_376
        {-1L}, // p_1979->g_388
        &p_1979->g_89, // p_1979->g_423
        &p_1979->g_423, // p_1979->g_422
        0x68786165B3B2AFB7L, // p_1979->g_440
        2L, // p_1979->g_449
        1UL, // p_1979->g_450
        &p_1979->g_191[0], // p_1979->g_475
        0x038FL, // p_1979->g_498
        0x36DFBE6DL, // p_1979->g_500
        {{{{0x43DE186FL},{1L},{0x5E371898L},{9L},{1L}},{{0x43DE186FL},{1L},{0x5E371898L},{9L},{1L}},{{0x43DE186FL},{1L},{0x5E371898L},{9L},{1L}},{{0x43DE186FL},{1L},{0x5E371898L},{9L},{1L}},{{0x43DE186FL},{1L},{0x5E371898L},{9L},{1L}}},{{{0x43DE186FL},{1L},{0x5E371898L},{9L},{1L}},{{0x43DE186FL},{1L},{0x5E371898L},{9L},{1L}},{{0x43DE186FL},{1L},{0x5E371898L},{9L},{1L}},{{0x43DE186FL},{1L},{0x5E371898L},{9L},{1L}},{{0x43DE186FL},{1L},{0x5E371898L},{9L},{1L}}},{{{0x43DE186FL},{1L},{0x5E371898L},{9L},{1L}},{{0x43DE186FL},{1L},{0x5E371898L},{9L},{1L}},{{0x43DE186FL},{1L},{0x5E371898L},{9L},{1L}},{{0x43DE186FL},{1L},{0x5E371898L},{9L},{1L}},{{0x43DE186FL},{1L},{0x5E371898L},{9L},{1L}}},{{{0x43DE186FL},{1L},{0x5E371898L},{9L},{1L}},{{0x43DE186FL},{1L},{0x5E371898L},{9L},{1L}},{{0x43DE186FL},{1L},{0x5E371898L},{9L},{1L}},{{0x43DE186FL},{1L},{0x5E371898L},{9L},{1L}},{{0x43DE186FL},{1L},{0x5E371898L},{9L},{1L}}},{{{0x43DE186FL},{1L},{0x5E371898L},{9L},{1L}},{{0x43DE186FL},{1L},{0x5E371898L},{9L},{1L}},{{0x43DE186FL},{1L},{0x5E371898L},{9L},{1L}},{{0x43DE186FL},{1L},{0x5E371898L},{9L},{1L}},{{0x43DE186FL},{1L},{0x5E371898L},{9L},{1L}}},{{{0x43DE186FL},{1L},{0x5E371898L},{9L},{1L}},{{0x43DE186FL},{1L},{0x5E371898L},{9L},{1L}},{{0x43DE186FL},{1L},{0x5E371898L},{9L},{1L}},{{0x43DE186FL},{1L},{0x5E371898L},{9L},{1L}},{{0x43DE186FL},{1L},{0x5E371898L},{9L},{1L}}},{{{0x43DE186FL},{1L},{0x5E371898L},{9L},{1L}},{{0x43DE186FL},{1L},{0x5E371898L},{9L},{1L}},{{0x43DE186FL},{1L},{0x5E371898L},{9L},{1L}},{{0x43DE186FL},{1L},{0x5E371898L},{9L},{1L}},{{0x43DE186FL},{1L},{0x5E371898L},{9L},{1L}}},{{{0x43DE186FL},{1L},{0x5E371898L},{9L},{1L}},{{0x43DE186FL},{1L},{0x5E371898L},{9L},{1L}},{{0x43DE186FL},{1L},{0x5E371898L},{9L},{1L}},{{0x43DE186FL},{1L},{0x5E371898L},{9L},{1L}},{{0x43DE186FL},{1L},{0x5E371898L},{9L},{1L}}},{{{0x43DE186FL},{1L},{0x5E371898L},{9L},{1L}},{{0x43DE186FL},{1L},{0x5E371898L},{9L},{1L}},{{0x43DE186FL},{1L},{0x5E371898L},{9L},{1L}},{{0x43DE186FL},{1L},{0x5E371898L},{9L},{1L}},{{0x43DE186FL},{1L},{0x5E371898L},{9L},{1L}}},{{{0x43DE186FL},{1L},{0x5E371898L},{9L},{1L}},{{0x43DE186FL},{1L},{0x5E371898L},{9L},{1L}},{{0x43DE186FL},{1L},{0x5E371898L},{9L},{1L}},{{0x43DE186FL},{1L},{0x5E371898L},{9L},{1L}},{{0x43DE186FL},{1L},{0x5E371898L},{9L},{1L}}}}, // p_1979->g_512
        &p_1979->g_90, // p_1979->g_524
        &p_1979->g_524, // p_1979->g_523
        &p_1979->g_523, // p_1979->g_522
        65535UL, // p_1979->g_539
        4294967295UL, // p_1979->g_561
        (void*)0, // p_1979->g_616
        &p_1979->g_616, // p_1979->g_615
        0x42A0L, // p_1979->g_640
        &p_1979->g_512[3][4][4], // p_1979->g_668
        &p_1979->g_668, // p_1979->g_667
        {-2L}, // p_1979->g_683
        &p_1979->g_185, // p_1979->g_703
        &p_1979->g_703, // p_1979->g_702
        (void*)0, // p_1979->g_713
        {0UL,0UL,0UL,0UL,0UL}, // p_1979->g_800
        {{{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}}},{{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}}},{{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}}},{{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}}},{{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}}},{{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}}},{{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}}},{{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}}},{{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}}},{{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}},{{0x6656B98BL},{1L}}}}, // p_1979->g_808
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_1979->g_823
        (void*)0, // p_1979->g_838
        &p_1979->g_838, // p_1979->g_837
        &p_1979->g_837, // p_1979->g_836
        &p_1979->g_836, // p_1979->g_835
        (-4L), // p_1979->g_904
        18446744073709551615UL, // p_1979->g_905
        0L, // p_1979->g_908
        1L, // p_1979->g_909
        0x484E5A73L, // p_1979->g_910
        2UL, // p_1979->g_911
        &p_1979->g_475, // p_1979->g_925
        &p_1979->g_925, // p_1979->g_924
        &p_1979->g_924, // p_1979->g_923
        (void*)0, // p_1979->g_946
        &p_1979->g_946, // p_1979->g_945
        &p_1979->g_945, // p_1979->g_944
        0x883B78FDL, // p_1979->g_986
        0x007714ADF6A4172DL, // p_1979->g_995
        (void*)0, // p_1979->g_1004
        &p_1979->g_1004, // p_1979->g_1003
        {0x77C4D9A9L}, // p_1979->g_1076
        (-1L), // p_1979->g_1103
        0xFFL, // p_1979->g_1105
        (void*)0, // p_1979->g_1117
        &p_1979->g_1117, // p_1979->g_1116
        0x14L, // p_1979->g_1152
        4294967287UL, // p_1979->g_1153
        {-2L}, // p_1979->g_1156
        {1L,1L,1L,1L,1L}, // p_1979->g_1181
        0UL, // p_1979->g_1216
        {0x1F1344F9L}, // p_1979->g_1234
        0xE75A6A67L, // p_1979->g_1255
        0x156D1050L, // p_1979->g_1262
        4294967295UL, // p_1979->g_1326
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_1979->g_1333
        &p_1979->g_423, // p_1979->g_1335
        (void*)0, // p_1979->g_1384
        &p_1979->g_1076, // p_1979->g_1403
        &p_1979->g_1403, // p_1979->g_1402
        {1L}, // p_1979->g_1474
        1UL, // p_1979->g_1497
        {0x05BF785AL}, // p_1979->g_1511
        0x44L, // p_1979->g_1539
        {0x0CC8F69BL}, // p_1979->g_1550
        1L, // p_1979->g_1561
        &p_1979->g_89, // p_1979->g_1563
        0x6C40L, // p_1979->g_1593
        0x74L, // p_1979->g_1615
        0x0939BDC789A60B83L, // p_1979->g_1669
        0x46FCL, // p_1979->g_1687
        0L, // p_1979->g_1744
        {{{{-1L},{1L},{0x6050B4A5L},{-1L},{8L},{9L}},{{-1L},{1L},{0x6050B4A5L},{-1L},{8L},{9L}}},{{{-1L},{1L},{0x6050B4A5L},{-1L},{8L},{9L}},{{-1L},{1L},{0x6050B4A5L},{-1L},{8L},{9L}}},{{{-1L},{1L},{0x6050B4A5L},{-1L},{8L},{9L}},{{-1L},{1L},{0x6050B4A5L},{-1L},{8L},{9L}}},{{{-1L},{1L},{0x6050B4A5L},{-1L},{8L},{9L}},{{-1L},{1L},{0x6050B4A5L},{-1L},{8L},{9L}}},{{{-1L},{1L},{0x6050B4A5L},{-1L},{8L},{9L}},{{-1L},{1L},{0x6050B4A5L},{-1L},{8L},{9L}}},{{{-1L},{1L},{0x6050B4A5L},{-1L},{8L},{9L}},{{-1L},{1L},{0x6050B4A5L},{-1L},{8L},{9L}}},{{{-1L},{1L},{0x6050B4A5L},{-1L},{8L},{9L}},{{-1L},{1L},{0x6050B4A5L},{-1L},{8L},{9L}}},{{{-1L},{1L},{0x6050B4A5L},{-1L},{8L},{9L}},{{-1L},{1L},{0x6050B4A5L},{-1L},{8L},{9L}}}}, // p_1979->g_1791
        1L, // p_1979->g_1794
        {{{0x1AEF3760L,0x1AEF3760L},{0x1AEF3760L,0x1AEF3760L},{0x1AEF3760L,0x1AEF3760L},{0x1AEF3760L,0x1AEF3760L}},{{0x1AEF3760L,0x1AEF3760L},{0x1AEF3760L,0x1AEF3760L},{0x1AEF3760L,0x1AEF3760L},{0x1AEF3760L,0x1AEF3760L}},{{0x1AEF3760L,0x1AEF3760L},{0x1AEF3760L,0x1AEF3760L},{0x1AEF3760L,0x1AEF3760L},{0x1AEF3760L,0x1AEF3760L}},{{0x1AEF3760L,0x1AEF3760L},{0x1AEF3760L,0x1AEF3760L},{0x1AEF3760L,0x1AEF3760L},{0x1AEF3760L,0x1AEF3760L}},{{0x1AEF3760L,0x1AEF3760L},{0x1AEF3760L,0x1AEF3760L},{0x1AEF3760L,0x1AEF3760L},{0x1AEF3760L,0x1AEF3760L}}}, // p_1979->g_1796
        0x13L, // p_1979->g_1797
        {0x4EDAFF3DL}, // p_1979->g_1914
        0x33B32CFD1C8923AFL, // p_1979->g_1961
        {{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}}}, // p_1979->g_1975
        sequence_input[get_global_id(0)], // p_1979->global_0_offset
        sequence_input[get_global_id(1)], // p_1979->global_1_offset
        sequence_input[get_global_id(2)], // p_1979->global_2_offset
        sequence_input[get_local_id(0)], // p_1979->local_0_offset
        sequence_input[get_local_id(1)], // p_1979->local_1_offset
        sequence_input[get_local_id(2)], // p_1979->local_2_offset
        sequence_input[get_group_id(0)], // p_1979->group_0_offset
        sequence_input[get_group_id(1)], // p_1979->group_1_offset
        sequence_input[get_group_id(2)], // p_1979->group_2_offset
    };
    c_1980 = c_1981;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1979);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1979->g_3, "p_1979->g_3", print_hash_value);
    transparent_crc(p_1979->g_5, "p_1979->g_5", print_hash_value);
    transparent_crc(p_1979->g_10, "p_1979->g_10", print_hash_value);
    transparent_crc(p_1979->g_11, "p_1979->g_11", print_hash_value);
    transparent_crc(p_1979->g_14, "p_1979->g_14", print_hash_value);
    transparent_crc(p_1979->g_77, "p_1979->g_77", print_hash_value);
    transparent_crc(p_1979->g_89, "p_1979->g_89", print_hash_value);
    transparent_crc(p_1979->g_90, "p_1979->g_90", print_hash_value);
    transparent_crc(p_1979->g_91, "p_1979->g_91", print_hash_value);
    transparent_crc(p_1979->g_94, "p_1979->g_94", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 8; j++)
        {
            for (k = 0; k < 6; k++)
            {
                transparent_crc(p_1979->g_101[i][j][k], "p_1979->g_101[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1979->g_114, "p_1979->g_114", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1979->g_146[i], "p_1979->g_146[i]", print_hash_value);

    }
    transparent_crc(p_1979->g_185, "p_1979->g_185", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1979->g_191[i], "p_1979->g_191[i]", print_hash_value);

    }
    transparent_crc(p_1979->g_206, "p_1979->g_206", print_hash_value);
    transparent_crc(p_1979->g_221, "p_1979->g_221", print_hash_value);
    transparent_crc(p_1979->g_223, "p_1979->g_223", print_hash_value);
    transparent_crc(p_1979->g_235, "p_1979->g_235", print_hash_value);
    transparent_crc(p_1979->g_280, "p_1979->g_280", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 8; k++)
            {
                transparent_crc(p_1979->g_340[i][j][k], "p_1979->g_340[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1979->g_376, "p_1979->g_376", print_hash_value);
    transparent_crc(p_1979->g_388.f0, "p_1979->g_388.f0", print_hash_value);
    transparent_crc(p_1979->g_440, "p_1979->g_440", print_hash_value);
    transparent_crc(p_1979->g_449, "p_1979->g_449", print_hash_value);
    transparent_crc(p_1979->g_450, "p_1979->g_450", print_hash_value);
    transparent_crc(p_1979->g_498, "p_1979->g_498", print_hash_value);
    transparent_crc(p_1979->g_500, "p_1979->g_500", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 5; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_1979->g_512[i][j][k].f0, "p_1979->g_512[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_1979->g_539, "p_1979->g_539", print_hash_value);
    transparent_crc(p_1979->g_561, "p_1979->g_561", print_hash_value);
    transparent_crc(p_1979->g_640, "p_1979->g_640", print_hash_value);
    transparent_crc(p_1979->g_683.f0, "p_1979->g_683.f0", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_1979->g_800[i], "p_1979->g_800[i]", print_hash_value);

    }
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 10; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_1979->g_808[i][j][k].f0, "p_1979->g_808[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_1979->g_904, "p_1979->g_904", print_hash_value);
    transparent_crc(p_1979->g_905, "p_1979->g_905", print_hash_value);
    transparent_crc(p_1979->g_908, "p_1979->g_908", print_hash_value);
    transparent_crc(p_1979->g_909, "p_1979->g_909", print_hash_value);
    transparent_crc(p_1979->g_910, "p_1979->g_910", print_hash_value);
    transparent_crc(p_1979->g_911, "p_1979->g_911", print_hash_value);
    transparent_crc(p_1979->g_986, "p_1979->g_986", print_hash_value);
    transparent_crc(p_1979->g_995, "p_1979->g_995", print_hash_value);
    transparent_crc(p_1979->g_1076.f0, "p_1979->g_1076.f0", print_hash_value);
    transparent_crc(p_1979->g_1103, "p_1979->g_1103", print_hash_value);
    transparent_crc(p_1979->g_1105, "p_1979->g_1105", print_hash_value);
    transparent_crc(p_1979->g_1152, "p_1979->g_1152", print_hash_value);
    transparent_crc(p_1979->g_1153, "p_1979->g_1153", print_hash_value);
    transparent_crc(p_1979->g_1156.f0, "p_1979->g_1156.f0", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_1979->g_1181[i], "p_1979->g_1181[i]", print_hash_value);

    }
    transparent_crc(p_1979->g_1216, "p_1979->g_1216", print_hash_value);
    transparent_crc(p_1979->g_1234.f0, "p_1979->g_1234.f0", print_hash_value);
    transparent_crc(p_1979->g_1255, "p_1979->g_1255", print_hash_value);
    transparent_crc(p_1979->g_1262, "p_1979->g_1262", print_hash_value);
    transparent_crc(p_1979->g_1326, "p_1979->g_1326", print_hash_value);
    transparent_crc(p_1979->g_1474.f0, "p_1979->g_1474.f0", print_hash_value);
    transparent_crc(p_1979->g_1497, "p_1979->g_1497", print_hash_value);
    transparent_crc(p_1979->g_1511.f0, "p_1979->g_1511.f0", print_hash_value);
    transparent_crc(p_1979->g_1539, "p_1979->g_1539", print_hash_value);
    transparent_crc(p_1979->g_1550.f0, "p_1979->g_1550.f0", print_hash_value);
    transparent_crc(p_1979->g_1561, "p_1979->g_1561", print_hash_value);
    transparent_crc(p_1979->g_1593, "p_1979->g_1593", print_hash_value);
    transparent_crc(p_1979->g_1615, "p_1979->g_1615", print_hash_value);
    transparent_crc(p_1979->g_1669, "p_1979->g_1669", print_hash_value);
    transparent_crc(p_1979->g_1687, "p_1979->g_1687", print_hash_value);
    transparent_crc(p_1979->g_1744, "p_1979->g_1744", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 6; k++)
            {
                transparent_crc(p_1979->g_1791[i][j][k].f0, "p_1979->g_1791[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_1979->g_1794, "p_1979->g_1794", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_1979->g_1796[i][j][k], "p_1979->g_1796[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1979->g_1797, "p_1979->g_1797", print_hash_value);
    transparent_crc(p_1979->g_1914.f0, "p_1979->g_1914.f0", print_hash_value);
    transparent_crc(p_1979->g_1961, "p_1979->g_1961", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
