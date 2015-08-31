// ---fake_divergence -g 1,1,224 -l 1,1,8
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


// Seed: 1

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   uint32_t  f0;
};

struct S1 {
    uint64_t g_17;
    uint32_t g_19[9][2];
    int32_t g_23;
    int32_t g_25;
    volatile uint8_t g_30;
    struct S0 g_64;
    int32_t *g_72;
    int32_t ** volatile g_71;
    int32_t g_85;
    int16_t g_89;
    int64_t g_103;
    int32_t g_106;
    uint16_t g_109;
    uint16_t g_127;
    uint32_t g_133;
    uint8_t g_136;
    int8_t g_164;
    volatile int32_t g_172;
    volatile uint16_t g_174[8];
    int32_t ** volatile *g_246;
    int16_t g_268;
    volatile uint32_t g_275;
    volatile int32_t g_308;
    volatile int32_t *g_307;
    volatile int32_t * volatile *g_306;
    uint64_t g_327;
    int16_t g_377[9][8];
    int16_t g_393;
    uint32_t g_396;
    volatile int64_t g_422;
    volatile uint32_t g_430[1][7][6];
    uint16_t *g_465;
    uint16_t ** volatile g_464;
    struct S0 * volatile g_482;
    uint64_t g_494;
    uint32_t g_513;
    uint32_t * volatile g_540;
    uint32_t * volatile * volatile g_539;
    uint32_t *g_578;
    uint32_t **g_577[5];
    int32_t ***g_612;
    int32_t ****g_611[10][8][1];
    int64_t g_615;
    int64_t g_619;
    int32_t ** volatile g_679;
    uint32_t g_754;
    volatile int16_t g_765;
    volatile int16_t *g_764;
    volatile int16_t * volatile *g_763;
    uint8_t *g_818;
    int16_t g_838;
    int32_t *g_847;
    int32_t **g_846;
    struct S0 *g_907;
    uint32_t g_969;
    struct S0 *g_981;
    int8_t g_1016;
    struct S0 ** volatile g_1021;
    int32_t g_1062;
    int32_t ** volatile g_1072;
    int8_t g_1095;
    int32_t ** volatile *g_1166;
    int32_t ** volatile * volatile *g_1165;
    int64_t g_1175;
    int64_t g_1177;
    int8_t g_1185;
    int32_t * volatile g_1214[5][9][5];
    uint32_t g_1260;
    volatile int64_t *g_1273;
    volatile int64_t **g_1272;
    int64_t *g_1276;
    int64_t **g_1275;
    int32_t g_1325[7];
    uint32_t g_1326;
    uint32_t g_1365;
    uint8_t g_1366[4][7];
    int32_t ***g_1384;
    int32_t ****g_1383;
    uint64_t g_1388[9][9][3];
    uint32_t *g_1533[7];
    uint64_t *g_1538;
    int32_t ** volatile g_1564;
    int64_t g_1584;
    int32_t g_1619;
    volatile int16_t g_1648;
    uint32_t g_1656;
    volatile int32_t g_1680;
    int32_t ** volatile g_1718;
    int32_t ** volatile g_1738;
    volatile int8_t g_1749;
    int32_t g_1753;
    int8_t *g_1805;
    int16_t g_1807;
    volatile uint16_t g_1810;
    struct S0 g_1815;
    struct S0 *g_1877;
    int64_t *g_1971[8];
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
int32_t  func_1(struct S1 * p_1993);
int32_t  func_2(int16_t  p_3, struct S0  p_4, uint8_t  p_5, struct S1 * p_1993);
int32_t  func_6(uint32_t  p_7, int8_t  p_8, uint32_t  p_9, int32_t  p_10, uint64_t  p_11, struct S1 * p_1993);
int8_t  func_13(int8_t  p_14, uint32_t  p_15, int32_t  p_16, struct S1 * p_1993);
struct S0 * func_33(struct S0 * p_34, int32_t  p_35, int32_t * p_36, struct S1 * p_1993);
struct S0 * func_37(uint32_t * p_38, int32_t * p_39, struct S1 * p_1993);
uint32_t * func_40(int8_t  p_41, uint64_t  p_42, struct S0 * p_43, uint32_t * p_44, struct S1 * p_1993);
int8_t  func_45(uint32_t  p_46, int8_t  p_47, int8_t  p_48, uint16_t  p_49, uint64_t  p_50, struct S1 * p_1993);
struct S0  func_51(uint16_t  p_52, struct S1 * p_1993);
uint16_t  func_53(int64_t  p_54, struct S0  p_55, int32_t * p_56, struct S1 * p_1993);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1993->g_17 p_1993->g_19 p_1993->g_30 p_1993->g_64 p_1993->g_71 p_1993->g_396 p_1993->g_103 p_1993->g_494 p_1993->g_377 p_1993->g_430 p_1993->g_23 p_1993->g_513 p_1993->g_465 p_1993->g_109 p_1993->g_539 p_1993->g_72 p_1993->g_308 p_1993->g_25 p_1993->g_133 p_1993->g_327 p_1993->g_106 p_1993->g_577 p_1993->g_174 p_1993->g_127 p_1993->g_619 p_1993->g_763 p_1993->g_764 p_1993->g_765 p_1993->g_164 p_1993->g_268 p_1993->g_818 p_1993->g_578 p_1993->g_540 p_1993->g_846 p_1993->g_136 p_1993->g_464 p_1993->g_422 p_1993->g_85 p_1993->g_907 p_1993->g_754 p_1993->g_615 p_1993->g_981 p_1993->g_1021 p_1993->g_838 p_1993->g_1072 p_1993->g_969 p_1993->g_847 p_1993->g_1062 p_1993->g_1095 p_1993->g_89 p_1993->g_1165 p_1993->g_1016 p_1993->g_1177 p_1993->g_393 p_1993->g_1260 p_1993->g_1272 p_1993->g_1276 p_1993->g_1275 p_1993->g_1273 p_1993->g_1326 p_1993->g_1325 p_1993->g_1365 p_1993->g_1366 p_1993->g_1185 p_1993->g_1533 p_1993->g_1619 p_1993->g_1175 p_1993->g_1656 p_1993->g_1538 p_1993->g_1807 p_1993->g_307 p_1993->g_1810 p_1993->g_1815 p_1993->g_1384 p_1993->g_1805 p_1993->g_1564 p_1993->g_1753 p_1993->g_1718 p_1993->g_1877 p_1993->g_1388 p_1993->g_1383
 * writes: p_1993->g_19 p_1993->g_23 p_1993->g_25 p_1993->g_30 p_1993->g_17 p_1993->g_64.f0 p_1993->g_72 p_1993->g_396 p_1993->g_103 p_1993->g_494 p_1993->g_327 p_1993->g_106 p_1993->g_164 p_1993->g_619 p_1993->g_838 p_1993->g_133 p_1993->g_89 p_1993->g_136 p_1993->g_127 p_1993->g_907 p_1993->g_754 p_1993->g_969 p_1993->g_377 p_1993->g_85 p_1993->g_1016 p_1993->g_393 p_1993->g_268 p_1993->g_981 p_1993->g_513 p_1993->g_847 p_1993->g_109 p_1993->g_1260 p_1993->g_1275 p_1993->g_615 p_1993->g_64 p_1993->g_1326 p_1993->g_1325 p_1993->g_308 p_1993->g_1214 p_1993->g_1383 p_1993->g_1388 p_1993->g_1185 p_1993->g_1538 p_1993->g_1656 p_1993->g_1095 p_1993->g_1584 p_1993->g_1805 p_1993->g_1175 p_1993->g_1810 p_1993->g_846 p_1993->g_1177 p_1993->g_1753 p_1993->g_1276 p_1993->g_1971
 */
int32_t  func_1(struct S1 * p_1993)
{ /* block id: 4 */
    uint16_t l_12 = 1UL;
    uint32_t *l_18[1];
    int32_t l_22 = 0x4DFECBE9L;
    int32_t *l_24 = &p_1993->g_25;
    int32_t ***l_1380 = &p_1993->g_846;
    int32_t ****l_1379 = &l_1380;
    int32_t ****l_1382 = &l_1380;
    int32_t *****l_1381[9] = {&l_1382,&l_1382,&l_1382,&l_1382,&l_1382,&l_1382,&l_1382,&l_1382,&l_1382};
    int32_t l_1813 = 0x3EA65D49L;
    int32_t l_1814 = (-1L);
    int32_t *l_1848 = &l_1813;
    int32_t **l_1868 = &p_1993->g_72;
    int32_t ***l_1867 = &l_1868;
    int64_t l_1869 = (-5L);
    int32_t l_1936 = 0x42565952L;
    uint16_t **l_1983 = &p_1993->g_465;
    uint16_t ***l_1982 = &l_1983;
    int8_t l_1988 = 0L;
    int i;
    for (i = 0; i < 1; i++)
        l_18[i] = &p_1993->g_19[3][0];
    if (((*l_1848) = func_2((((*p_1993->g_1276) = (l_1814 |= ((l_1813 = func_6(l_12, (((func_13(p_1993->g_17, (p_1993->g_23 = (l_22 = (p_1993->g_19[4][1]++))), ((*l_24) = l_12), p_1993) , ((++(*p_1993->g_578)) < l_12)) , (FAKE_DIVERGE(p_1993->local_0_offset, get_local_id(0), 10) , (p_1993->g_377[4][6] , (((l_1379 == (p_1993->g_1383 = &l_1380)) , 4294967291UL) >= 4294967292UL)))) , l_12), p_1993->g_1095, l_12, l_12, p_1993)) , 0x6A101D491610A2B6L))) , l_1814), p_1993->g_1815, l_12, p_1993)))
    { /* block id: 866 */
        int32_t l_1849 = 2L;
        for (p_1993->g_103 = 1; (p_1993->g_103 >= 0); p_1993->g_103 -= 1)
        { /* block id: 869 */
            return p_1993->g_64.f0;
        }
        (*l_1848) = 0x677B568BL;
        (*p_1993->g_907) = func_51(l_1849, p_1993);
    }
    else
    { /* block id: 874 */
        int32_t *l_1858 = &p_1993->g_1062;
        int32_t l_1863[1];
        int8_t *l_1864[3];
        int32_t **l_1866 = &p_1993->g_72;
        int32_t ***l_1865 = &l_1866;
        uint32_t l_1871 = 0x392FB38AL;
        int i;
        for (i = 0; i < 1; i++)
            l_1863[i] = 0x528E4879L;
        for (i = 0; i < 3; i++)
            l_1864[i] = (void*)0;
        (*p_1993->g_981) = (*p_1993->g_981);
        if ((((((0xB9C2D621EC2184E5L != (safe_rshift_func_int16_t_s_u((safe_rshift_func_int16_t_s_u((&p_1993->g_1619 != l_24), (safe_lshift_func_int8_t_s_s(((*p_1993->g_1805) ^= (safe_rshift_func_uint8_t_u_s((*p_1993->g_818), 6))), (p_1993->g_1016 = (((void*)0 != l_1858) > ((safe_rshift_func_uint16_t_u_u((**p_1993->g_464), 10)) && (safe_lshift_func_int8_t_s_u((p_1993->g_164 |= (+(0x67L >= (~((*l_1848) != (**p_1993->g_1564)))))), l_1863[0]))))))))), 9))) , l_1865) != l_1867) >= 0xD3E8EA47L) > (*p_1993->g_465)))
        { /* block id: 879 */
lbl_1870:
            for (p_1993->g_1177 = 0; (p_1993->g_1177 <= 2); p_1993->g_1177 += 1)
            { /* block id: 882 */
                for (p_1993->g_1753 = 0; (p_1993->g_1753 <= 2); p_1993->g_1753 += 1)
                { /* block id: 885 */
                    (**l_1868) = l_1869;
                    if (p_1993->g_1175)
                        goto lbl_1870;
                    if ((***l_1867))
                        continue;
                    for (p_1993->g_17 = 0; (p_1993->g_17 <= 2); p_1993->g_17 += 1)
                    { /* block id: 890 */
                        (*l_1848) &= (**p_1993->g_1718);
                        if ((**p_1993->g_1564))
                            break;
                    }
                }
                return p_1993->g_377[4][6];
            }
            --l_1871;
        }
        else
        { /* block id: 899 */
            int64_t *l_1884 = (void*)0;
            int32_t l_1885[7][7][5] = {{{0x4534F93DL,0x249A2339L,(-8L),0x451CF616L,0x5CC6C9DBL},{0x4534F93DL,0x249A2339L,(-8L),0x451CF616L,0x5CC6C9DBL},{0x4534F93DL,0x249A2339L,(-8L),0x451CF616L,0x5CC6C9DBL},{0x4534F93DL,0x249A2339L,(-8L),0x451CF616L,0x5CC6C9DBL},{0x4534F93DL,0x249A2339L,(-8L),0x451CF616L,0x5CC6C9DBL},{0x4534F93DL,0x249A2339L,(-8L),0x451CF616L,0x5CC6C9DBL},{0x4534F93DL,0x249A2339L,(-8L),0x451CF616L,0x5CC6C9DBL}},{{0x4534F93DL,0x249A2339L,(-8L),0x451CF616L,0x5CC6C9DBL},{0x4534F93DL,0x249A2339L,(-8L),0x451CF616L,0x5CC6C9DBL},{0x4534F93DL,0x249A2339L,(-8L),0x451CF616L,0x5CC6C9DBL},{0x4534F93DL,0x249A2339L,(-8L),0x451CF616L,0x5CC6C9DBL},{0x4534F93DL,0x249A2339L,(-8L),0x451CF616L,0x5CC6C9DBL},{0x4534F93DL,0x249A2339L,(-8L),0x451CF616L,0x5CC6C9DBL},{0x4534F93DL,0x249A2339L,(-8L),0x451CF616L,0x5CC6C9DBL}},{{0x4534F93DL,0x249A2339L,(-8L),0x451CF616L,0x5CC6C9DBL},{0x4534F93DL,0x249A2339L,(-8L),0x451CF616L,0x5CC6C9DBL},{0x4534F93DL,0x249A2339L,(-8L),0x451CF616L,0x5CC6C9DBL},{0x4534F93DL,0x249A2339L,(-8L),0x451CF616L,0x5CC6C9DBL},{0x4534F93DL,0x249A2339L,(-8L),0x451CF616L,0x5CC6C9DBL},{0x4534F93DL,0x249A2339L,(-8L),0x451CF616L,0x5CC6C9DBL},{0x4534F93DL,0x249A2339L,(-8L),0x451CF616L,0x5CC6C9DBL}},{{0x4534F93DL,0x249A2339L,(-8L),0x451CF616L,0x5CC6C9DBL},{0x4534F93DL,0x249A2339L,(-8L),0x451CF616L,0x5CC6C9DBL},{0x4534F93DL,0x249A2339L,(-8L),0x451CF616L,0x5CC6C9DBL},{0x4534F93DL,0x249A2339L,(-8L),0x451CF616L,0x5CC6C9DBL},{0x4534F93DL,0x249A2339L,(-8L),0x451CF616L,0x5CC6C9DBL},{0x4534F93DL,0x249A2339L,(-8L),0x451CF616L,0x5CC6C9DBL},{0x4534F93DL,0x249A2339L,(-8L),0x451CF616L,0x5CC6C9DBL}},{{0x4534F93DL,0x249A2339L,(-8L),0x451CF616L,0x5CC6C9DBL},{0x4534F93DL,0x249A2339L,(-8L),0x451CF616L,0x5CC6C9DBL},{0x4534F93DL,0x249A2339L,(-8L),0x451CF616L,0x5CC6C9DBL},{0x4534F93DL,0x249A2339L,(-8L),0x451CF616L,0x5CC6C9DBL},{0x4534F93DL,0x249A2339L,(-8L),0x451CF616L,0x5CC6C9DBL},{0x4534F93DL,0x249A2339L,(-8L),0x451CF616L,0x5CC6C9DBL},{0x4534F93DL,0x249A2339L,(-8L),0x451CF616L,0x5CC6C9DBL}},{{0x4534F93DL,0x249A2339L,(-8L),0x451CF616L,0x5CC6C9DBL},{0x4534F93DL,0x249A2339L,(-8L),0x451CF616L,0x5CC6C9DBL},{0x4534F93DL,0x249A2339L,(-8L),0x451CF616L,0x5CC6C9DBL},{0x4534F93DL,0x249A2339L,(-8L),0x451CF616L,0x5CC6C9DBL},{0x4534F93DL,0x249A2339L,(-8L),0x451CF616L,0x5CC6C9DBL},{0x4534F93DL,0x249A2339L,(-8L),0x451CF616L,0x5CC6C9DBL},{0x4534F93DL,0x249A2339L,(-8L),0x451CF616L,0x5CC6C9DBL}},{{0x4534F93DL,0x249A2339L,(-8L),0x451CF616L,0x5CC6C9DBL},{0x4534F93DL,0x249A2339L,(-8L),0x451CF616L,0x5CC6C9DBL},{0x4534F93DL,0x249A2339L,(-8L),0x451CF616L,0x5CC6C9DBL},{0x4534F93DL,0x249A2339L,(-8L),0x451CF616L,0x5CC6C9DBL},{0x4534F93DL,0x249A2339L,(-8L),0x451CF616L,0x5CC6C9DBL},{0x4534F93DL,0x249A2339L,(-8L),0x451CF616L,0x5CC6C9DBL},{0x4534F93DL,0x249A2339L,(-8L),0x451CF616L,0x5CC6C9DBL}}};
            uint32_t l_1890 = 1UL;
            int i, j, k;
lbl_1965:
            for (p_1993->g_754 = (-27); (p_1993->g_754 != 43); p_1993->g_754 = safe_add_func_int64_t_s_s(p_1993->g_754, 8))
            { /* block id: 902 */
                int32_t l_1876 = 1L;
                uint16_t l_1891 = 65526UL;
                (**l_1865) = func_40(l_1876, (**l_1868), func_33(p_1993->g_1877, ((*p_1993->g_847) &= (((*p_1993->g_1276) >= (((((((safe_mod_func_int16_t_s_s((safe_sub_func_int32_t_s_s(((+(((safe_mul_func_int16_t_s_s(((void*)0 == l_1884), l_1885[6][4][4])) < ((safe_lshift_func_int8_t_s_u((safe_rshift_func_int8_t_s_s((-9L), 2)), (*l_1848))) <= l_1876)) , 0x793B9B47L)) ^ (*p_1993->g_72)), 3UL)), 65531UL)) == 0x6A07L) == (*p_1993->g_764)) , (*p_1993->g_540)) != l_1890) >= 0x77434CA839EF24C4L) & l_1891)) && l_1891)), &p_1993->g_1062, p_1993), l_18[0], p_1993);
                if (l_1876)
                    break;
            }
lbl_1962:
            for (p_1993->g_1326 = 0; (p_1993->g_1326 == 8); p_1993->g_1326 = safe_add_func_uint32_t_u_u(p_1993->g_1326, 6))
            { /* block id: 909 */
                for (p_1993->g_1016 = 0; (p_1993->g_1016 < (-15)); p_1993->g_1016 = safe_sub_func_uint16_t_u_u(p_1993->g_1016, 2))
                { /* block id: 912 */
                    return p_1993->g_1388[8][0][2];
                }
            }
            for (p_1993->g_1656 = (-26); (p_1993->g_1656 <= 56); p_1993->g_1656++)
            { /* block id: 918 */
                uint64_t l_1919 = 7UL;
                int32_t l_1926 = 0x52824790L;
                int32_t l_1928 = 0L;
                int32_t l_1929 = 0L;
                int32_t l_1931 = 0x10515F4AL;
                int32_t l_1932 = 0x4222F612L;
                int32_t l_1935 = 0x14988135L;
                uint64_t l_1938 = 0UL;
                int8_t l_1959 = (-1L);
                for (p_1993->g_1584 = (-27); (p_1993->g_1584 <= (-25)); ++p_1993->g_1584)
                { /* block id: 921 */
                    int32_t l_1918 = 0x58F42BE7L;
                    int32_t l_1924 = 0L;
                    int32_t l_1925 = (-1L);
                    int32_t l_1927 = 0x2F4236FCL;
                    int32_t l_1930 = 0x1FEA62FCL;
                    int32_t l_1933 = 1L;
                    int32_t l_1934 = 0x7D394C19L;
                    int32_t l_1937 = 1L;
                    int64_t l_1961 = 0L;
                    (***l_1867) = ((FAKE_DIVERGE(p_1993->group_0_offset, get_group_id(0), 10) == (0x2D46470AD0C79EC6L == (((safe_mod_func_uint16_t_u_u(((safe_add_func_int32_t_s_s((*p_1993->g_72), (*p_1993->g_578))) || ((safe_div_func_uint64_t_u_u((safe_sub_func_uint16_t_u_u(((*p_1993->g_465)--), (safe_sub_func_int8_t_s_s((((void*)0 == (**p_1993->g_1383)) < ((safe_rshift_func_int8_t_s_s(((l_1885[6][1][3] , (((safe_sub_func_int32_t_s_s(l_1918, ((*p_1993->g_818) != FAKE_DIVERGE(p_1993->global_2_offset, get_global_id(2), 10)))) , l_1919) == (-1L))) ^ (*p_1993->g_1538)), 1)) >= l_1918)), l_1885[5][0][3])))), 0x6E94FA078023CB4EL)) & l_1918)), 0x4881L)) ^ (*p_1993->g_1273)) , l_1919))) , l_1919);
                    for (p_1993->g_164 = 6; (p_1993->g_164 >= 1); p_1993->g_164 -= 1)
                    { /* block id: 926 */
                        int32_t *l_1920 = &l_1863[0];
                        int32_t *l_1921 = &p_1993->g_23;
                        int32_t *l_1922 = &l_1863[0];
                        int32_t *l_1923[5] = {&l_1863[0],&l_1863[0],&l_1863[0],&l_1863[0],&l_1863[0]};
                        int i;
                        if (l_1919)
                            break;
                        l_1938++;
                    }
                    for (l_1936 = 3; (l_1936 >= 0); l_1936 -= 1)
                    { /* block id: 932 */
                        int16_t *l_1955[10] = {&p_1993->g_393,&p_1993->g_838,&p_1993->g_377[4][6],&p_1993->g_838,&p_1993->g_393,&p_1993->g_393,&p_1993->g_838,&p_1993->g_377[4][6],&p_1993->g_838,&p_1993->g_393};
                        int32_t l_1956 = 0x27A06FA7L;
                        int i;
                        (***l_1867) = (safe_lshift_func_int16_t_s_u(((-1L) & (safe_rshift_func_uint16_t_u_s((safe_lshift_func_int8_t_s_u((*p_1993->g_1805), 6)), (l_1928 = (safe_add_func_uint64_t_u_u((**l_1866), ((safe_mul_func_int16_t_s_s(((((l_1930 = (safe_mul_func_int16_t_s_s(l_1924, (safe_add_func_uint32_t_u_u(((((p_1993->g_838 = 0x18B1L) & ((((*p_1993->g_818) , (**p_1993->g_1718)) == (!(l_1956 == (safe_mul_func_int16_t_s_s(l_1918, p_1993->g_754))))) , l_1918)) <= 1L) <= l_1885[6][4][4]), l_1959))))) , (**p_1993->g_464)) ^ p_1993->g_23) & 0x76D7AAF5FA4EC0DFL), (*p_1993->g_465))) & l_1956))))))), 8));
                        (*p_1993->g_72) &= (safe_unary_minus_func_uint64_t_u(GROUP_DIVERGE(2, 1)));
                        if (l_1961)
                            continue;
                        if (p_1993->g_136)
                            goto lbl_1962;
                    }
                }
                for (l_1928 = 25; (l_1928 > 2); l_1928--)
                { /* block id: 944 */
                    int16_t l_1966 = 0x2C09L;
                    for (l_12 = 0; (l_12 <= 0); l_12 += 1)
                    { /* block id: 947 */
                        int i, j, k;
                        p_1993->g_1214[(l_12 + 1)][(l_12 + 8)][(l_12 + 2)] = (void*)0;
                        (*p_1993->g_72) &= (-4L);
                    }
                    if (p_1993->g_494)
                        goto lbl_1965;
                    if (((**l_1868) = l_1966))
                    { /* block id: 953 */
                        int16_t l_1969 = 1L;
                        l_1969 = (safe_mul_func_int8_t_s_s(0x4DL, ((*p_1993->g_818) = (*p_1993->g_818))));
                    }
                    else
                    { /* block id: 956 */
                        int64_t **l_1970[1][2];
                        int i, j;
                        for (i = 0; i < 1; i++)
                        {
                            for (j = 0; j < 2; j++)
                                l_1970[i][j] = &p_1993->g_1276;
                        }
                        (**l_1866) = ((((0xADB30A8829C22D08L == FAKE_DIVERGE(p_1993->local_1_offset, get_local_id(1), 10)) , &l_1869) == (p_1993->g_1971[1] = (p_1993->g_1276 = &l_1869))) & (***l_1865));
                        l_1885[0][4][4] &= (0x2A6FL <= ((**p_1993->g_464) >= ((safe_sub_func_int64_t_s_s(0x56CE499BA86230F5L, (safe_div_func_int64_t_s_s((safe_sub_func_uint16_t_u_u(((l_1929 >= p_1993->g_164) , 0UL), ((void*)0 == &l_1885[3][4][3]))), (safe_sub_func_int64_t_s_s((((*p_1993->g_1538) = (l_1966 || (*p_1993->g_1538))) , (***l_1865)), l_1926)))))) , l_1966)));
                    }
                }
                if ((**l_1866))
                    continue;
                return l_1885[6][4][4];
            }
        }
    }
    for (p_1993->g_494 = 0; (p_1993->g_494 < 44); p_1993->g_494++)
    { /* block id: 971 */
        uint16_t ****l_1984 = &l_1982;
        uint64_t *l_1985 = &p_1993->g_327;
        int32_t l_1989[7][10] = {{0x08C90166L,2L,0x06D0EF2AL,1L,0x06D0EF2AL,2L,0x08C90166L,0x414EDB9FL,1L,1L},{0x08C90166L,2L,0x06D0EF2AL,1L,0x06D0EF2AL,2L,0x08C90166L,0x414EDB9FL,1L,1L},{0x08C90166L,2L,0x06D0EF2AL,1L,0x06D0EF2AL,2L,0x08C90166L,0x414EDB9FL,1L,1L},{0x08C90166L,2L,0x06D0EF2AL,1L,0x06D0EF2AL,2L,0x08C90166L,0x414EDB9FL,1L,1L},{0x08C90166L,2L,0x06D0EF2AL,1L,0x06D0EF2AL,2L,0x08C90166L,0x414EDB9FL,1L,1L},{0x08C90166L,2L,0x06D0EF2AL,1L,0x06D0EF2AL,2L,0x08C90166L,0x414EDB9FL,1L,1L},{0x08C90166L,2L,0x06D0EF2AL,1L,0x06D0EF2AL,2L,0x08C90166L,0x414EDB9FL,1L,1L}};
        int32_t l_1992 = 0L;
        int i, j;
        l_1992 |= (((*l_1984) = l_1982) != ((((*l_1985) = ((**l_1868) <= 0UL)) || ((safe_rshift_func_uint8_t_u_u(l_1988, 6)) , ((*l_1985)--))) , (((*p_1993->g_818) = (l_1989[1][3] > (*l_1848))) , &p_1993->g_464)));
        (**p_1993->g_1072) &= l_1992;
    }
    return (**l_1868);
}


/* ------------------------------------------ */
/* 
 * reads : p_1993->g_465 p_1993->g_109 p_1993->g_72 p_1993->g_71 p_1993->g_106 p_1993->g_764 p_1993->g_765 p_1993->g_133 p_1993->g_818 p_1993->g_136 p_1993->g_396 p_1993->g_103 p_1993->g_578 p_1993->g_64 p_1993->g_513 p_1993->g_268 p_1993->g_19 p_1993->g_1021 p_1993->g_1072 p_1993->g_540 p_1993->g_23 p_1993->g_969 p_1993->g_838 p_1993->g_847 p_1993->g_85 p_1993->g_464 p_1993->g_127 p_1993->g_1062 p_1993->g_17 p_1993->g_1095 p_1993->g_494 p_1993->g_164 p_1993->g_89 p_1993->g_619 p_1993->g_25 p_1993->g_1165 p_1993->g_846 p_1993->g_422 p_1993->g_377 p_1993->g_1016 p_1993->g_615 p_1993->g_1177 p_1993->g_393 p_1993->g_1260 p_1993->g_1272 p_1993->g_763 p_1993->g_1276 p_1993->g_1275 p_1993->g_1273 p_1993->g_1326 p_1993->g_174 p_1993->g_1325 p_1993->g_1365 p_1993->g_1366 p_1993->g_981 p_1993->g_1384
 * writes: p_1993->g_164 p_1993->g_72 p_1993->g_1016 p_1993->g_393 p_1993->g_89 p_1993->g_133 p_1993->g_268 p_1993->g_327 p_1993->g_981 p_1993->g_85 p_1993->g_106 p_1993->g_377 p_1993->g_838 p_1993->g_513 p_1993->g_17 p_1993->g_494 p_1993->g_127 p_1993->g_619 p_1993->g_136 p_1993->g_847 p_1993->g_109 p_1993->g_64.f0 p_1993->g_1260 p_1993->g_23 p_1993->g_1275 p_1993->g_103 p_1993->g_615 p_1993->g_64 p_1993->g_1326 p_1993->g_1325 p_1993->g_308 p_1993->g_1214 p_1993->g_969 p_1993->g_846
 */
int32_t  func_2(int16_t  p_3, struct S0  p_4, uint8_t  p_5, struct S1 * p_1993)
{ /* block id: 851 */
    uint16_t l_1818 = 1UL;
    uint32_t *l_1819 = &p_1993->g_969;
    struct S0 **l_1820[7] = {&p_1993->g_981,&p_1993->g_907,&p_1993->g_981,&p_1993->g_981,&p_1993->g_907,&p_1993->g_981,&p_1993->g_981};
    int32_t **l_1829 = &p_1993->g_847;
    int16_t *l_1830[3];
    int32_t *l_1831 = (void*)0;
    int32_t *l_1832 = &p_1993->g_1325[5];
    int32_t l_1835[5][1];
    int32_t l_1836[6][6][4] = {{{1L,1L,0x17F73519L,0L},{1L,1L,0x17F73519L,0L},{1L,1L,0x17F73519L,0L},{1L,1L,0x17F73519L,0L},{1L,1L,0x17F73519L,0L},{1L,1L,0x17F73519L,0L}},{{1L,1L,0x17F73519L,0L},{1L,1L,0x17F73519L,0L},{1L,1L,0x17F73519L,0L},{1L,1L,0x17F73519L,0L},{1L,1L,0x17F73519L,0L},{1L,1L,0x17F73519L,0L}},{{1L,1L,0x17F73519L,0L},{1L,1L,0x17F73519L,0L},{1L,1L,0x17F73519L,0L},{1L,1L,0x17F73519L,0L},{1L,1L,0x17F73519L,0L},{1L,1L,0x17F73519L,0L}},{{1L,1L,0x17F73519L,0L},{1L,1L,0x17F73519L,0L},{1L,1L,0x17F73519L,0L},{1L,1L,0x17F73519L,0L},{1L,1L,0x17F73519L,0L},{1L,1L,0x17F73519L,0L}},{{1L,1L,0x17F73519L,0L},{1L,1L,0x17F73519L,0L},{1L,1L,0x17F73519L,0L},{1L,1L,0x17F73519L,0L},{1L,1L,0x17F73519L,0L},{1L,1L,0x17F73519L,0L}},{{1L,1L,0x17F73519L,0L},{1L,1L,0x17F73519L,0L},{1L,1L,0x17F73519L,0L},{1L,1L,0x17F73519L,0L},{1L,1L,0x17F73519L,0L},{1L,1L,0x17F73519L,0L}}};
    int16_t l_1840 = 0L;
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_1830[i] = (void*)0;
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 1; j++)
            l_1835[i][j] = 0x742FB568L;
    }
    (*p_1993->g_1021) = func_37(func_40(p_4.f0, (p_5 >= ((safe_lshift_func_int16_t_s_s(((((*p_1993->g_465) != (3L >= ((-1L) | (0x1E2D3362L ^ (l_1818 <= p_4.f0))))) < l_1818) < (-3L)), 7)) , 1UL)), &p_1993->g_1815, l_1819, p_1993), &p_1993->g_1753, p_1993);
    (*p_1993->g_981) = p_4;
    if (((*l_1832) = (safe_mul_func_uint16_t_u_u(0x7796L, (safe_mul_func_uint16_t_u_u(0xA5FCL, (p_1993->g_377[4][6] = ((((*p_1993->g_72) = (safe_mul_func_int16_t_s_s(l_1818, (**p_1993->g_464)))) && ((void*)0 != &p_1993->g_1165)) == (l_1829 != ((*p_1993->g_1384) = (void*)0))))))))))
    { /* block id: 858 */
        int64_t l_1833[5];
        int32_t l_1834 = 0L;
        int32_t *l_1837[9][8][3] = {{{(void*)0,&p_1993->g_106,&p_1993->g_106},{(void*)0,&p_1993->g_106,&p_1993->g_106},{(void*)0,&p_1993->g_106,&p_1993->g_106},{(void*)0,&p_1993->g_106,&p_1993->g_106},{(void*)0,&p_1993->g_106,&p_1993->g_106},{(void*)0,&p_1993->g_106,&p_1993->g_106},{(void*)0,&p_1993->g_106,&p_1993->g_106},{(void*)0,&p_1993->g_106,&p_1993->g_106}},{{(void*)0,&p_1993->g_106,&p_1993->g_106},{(void*)0,&p_1993->g_106,&p_1993->g_106},{(void*)0,&p_1993->g_106,&p_1993->g_106},{(void*)0,&p_1993->g_106,&p_1993->g_106},{(void*)0,&p_1993->g_106,&p_1993->g_106},{(void*)0,&p_1993->g_106,&p_1993->g_106},{(void*)0,&p_1993->g_106,&p_1993->g_106},{(void*)0,&p_1993->g_106,&p_1993->g_106}},{{(void*)0,&p_1993->g_106,&p_1993->g_106},{(void*)0,&p_1993->g_106,&p_1993->g_106},{(void*)0,&p_1993->g_106,&p_1993->g_106},{(void*)0,&p_1993->g_106,&p_1993->g_106},{(void*)0,&p_1993->g_106,&p_1993->g_106},{(void*)0,&p_1993->g_106,&p_1993->g_106},{(void*)0,&p_1993->g_106,&p_1993->g_106},{(void*)0,&p_1993->g_106,&p_1993->g_106}},{{(void*)0,&p_1993->g_106,&p_1993->g_106},{(void*)0,&p_1993->g_106,&p_1993->g_106},{(void*)0,&p_1993->g_106,&p_1993->g_106},{(void*)0,&p_1993->g_106,&p_1993->g_106},{(void*)0,&p_1993->g_106,&p_1993->g_106},{(void*)0,&p_1993->g_106,&p_1993->g_106},{(void*)0,&p_1993->g_106,&p_1993->g_106},{(void*)0,&p_1993->g_106,&p_1993->g_106}},{{(void*)0,&p_1993->g_106,&p_1993->g_106},{(void*)0,&p_1993->g_106,&p_1993->g_106},{(void*)0,&p_1993->g_106,&p_1993->g_106},{(void*)0,&p_1993->g_106,&p_1993->g_106},{(void*)0,&p_1993->g_106,&p_1993->g_106},{(void*)0,&p_1993->g_106,&p_1993->g_106},{(void*)0,&p_1993->g_106,&p_1993->g_106},{(void*)0,&p_1993->g_106,&p_1993->g_106}},{{(void*)0,&p_1993->g_106,&p_1993->g_106},{(void*)0,&p_1993->g_106,&p_1993->g_106},{(void*)0,&p_1993->g_106,&p_1993->g_106},{(void*)0,&p_1993->g_106,&p_1993->g_106},{(void*)0,&p_1993->g_106,&p_1993->g_106},{(void*)0,&p_1993->g_106,&p_1993->g_106},{(void*)0,&p_1993->g_106,&p_1993->g_106},{(void*)0,&p_1993->g_106,&p_1993->g_106}},{{(void*)0,&p_1993->g_106,&p_1993->g_106},{(void*)0,&p_1993->g_106,&p_1993->g_106},{(void*)0,&p_1993->g_106,&p_1993->g_106},{(void*)0,&p_1993->g_106,&p_1993->g_106},{(void*)0,&p_1993->g_106,&p_1993->g_106},{(void*)0,&p_1993->g_106,&p_1993->g_106},{(void*)0,&p_1993->g_106,&p_1993->g_106},{(void*)0,&p_1993->g_106,&p_1993->g_106}},{{(void*)0,&p_1993->g_106,&p_1993->g_106},{(void*)0,&p_1993->g_106,&p_1993->g_106},{(void*)0,&p_1993->g_106,&p_1993->g_106},{(void*)0,&p_1993->g_106,&p_1993->g_106},{(void*)0,&p_1993->g_106,&p_1993->g_106},{(void*)0,&p_1993->g_106,&p_1993->g_106},{(void*)0,&p_1993->g_106,&p_1993->g_106},{(void*)0,&p_1993->g_106,&p_1993->g_106}},{{(void*)0,&p_1993->g_106,&p_1993->g_106},{(void*)0,&p_1993->g_106,&p_1993->g_106},{(void*)0,&p_1993->g_106,&p_1993->g_106},{(void*)0,&p_1993->g_106,&p_1993->g_106},{(void*)0,&p_1993->g_106,&p_1993->g_106},{(void*)0,&p_1993->g_106,&p_1993->g_106},{(void*)0,&p_1993->g_106,&p_1993->g_106},{(void*)0,&p_1993->g_106,&p_1993->g_106}}};
        int32_t l_1838 = (-1L);
        int32_t l_1839 = (-2L);
        uint64_t l_1841 = 7UL;
        int i, j, k;
        for (i = 0; i < 5; i++)
            l_1833[i] = (-1L);
        ++l_1841;
    }
    else
    { /* block id: 860 */
        int32_t *l_1844 = &p_1993->g_23;
        uint32_t l_1845 = 5UL;
        l_1844 = l_1844;
        l_1845++;
    }
    return (*l_1832);
}


/* ------------------------------------------ */
/* 
 * reads : p_1993->g_981 p_1993->g_64 p_1993->g_1326 p_1993->g_763 p_1993->g_764 p_1993->g_765 p_1993->g_1185 p_1993->g_393 p_1993->g_1325 p_1993->g_164 p_1993->g_136 p_1993->g_23 p_1993->g_615 p_1993->g_72 p_1993->g_71 p_1993->g_818 p_1993->g_1276 p_1993->g_619 p_1993->g_106 p_1993->g_465 p_1993->g_907 p_1993->g_464 p_1993->g_109 p_1993->g_174 p_1993->g_1533 p_1993->g_133 p_1993->g_396 p_1993->g_103 p_1993->g_578 p_1993->g_513 p_1993->g_268 p_1993->g_19 p_1993->g_1021 p_1993->g_1095 p_1993->g_1619 p_1993->g_377 p_1993->g_1175 p_1993->g_1656 p_1993->g_969 p_1993->g_430 p_1993->g_1538 p_1993->g_494 p_1993->g_1807 p_1993->g_307 p_1993->g_308 p_1993->g_1810 p_1993->g_847 p_1993->g_85
 * writes: p_1993->g_64 p_1993->g_1388 p_1993->g_23 p_1993->g_1185 p_1993->g_377 p_1993->g_393 p_1993->g_615 p_1993->g_72 p_1993->g_1325 p_1993->g_619 p_1993->g_109 p_1993->g_106 p_1993->g_164 p_1993->g_1016 p_1993->g_89 p_1993->g_133 p_1993->g_268 p_1993->g_327 p_1993->g_981 p_1993->g_85 p_1993->g_838 p_1993->g_513 p_1993->g_1538 p_1993->g_1656 p_1993->g_1095 p_1993->g_494 p_1993->g_969 p_1993->g_136 p_1993->g_1584 p_1993->g_1805 p_1993->g_1175 p_1993->g_1810
 */
int32_t  func_6(uint32_t  p_7, int8_t  p_8, uint32_t  p_9, int32_t  p_10, uint64_t  p_11, struct S1 * p_1993)
{ /* block id: 646 */
    uint8_t *l_1385[3];
    uint8_t **l_1386 = &l_1385[2];
    uint64_t *l_1387 = &p_1993->g_1388[7][0][2];
    int32_t *l_1389 = &p_1993->g_23;
    int32_t l_1398 = (-1L);
    int8_t *l_1399 = &p_1993->g_1185;
    int16_t *l_1404 = &p_1993->g_377[4][3];
    int32_t *l_1405 = (void*)0;
    int32_t *l_1406[4];
    uint64_t l_1407 = 0x71B751119CB08965L;
    int32_t l_1433 = 5L;
    struct S0 l_1487[10][3] = {{{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL}},{{1UL},{1UL},{1UL}}};
    int64_t *l_1555 = &p_1993->g_1177;
    uint8_t *l_1595 = &p_1993->g_1366[0][0];
    int8_t l_1649[5] = {0L,0L,0L,0L,0L};
    uint64_t l_1735 = 18446744073709551615UL;
    uint8_t l_1758 = 255UL;
    uint32_t l_1790[9];
    int16_t l_1809 = 0x32D6L;
    int i, j;
    for (i = 0; i < 3; i++)
        l_1385[i] = (void*)0;
    for (i = 0; i < 4; i++)
        l_1406[i] = &p_1993->g_1325[0];
    for (i = 0; i < 9; i++)
        l_1790[i] = 4294967295UL;
    (*p_1993->g_981) = (*p_1993->g_981);
    l_1389 = (((*l_1387) = ((((*l_1386) = l_1385[0]) == &p_1993->g_30) || p_1993->g_1326)) , l_1389);
    if ((safe_mul_func_uint8_t_u_u((((safe_rshift_func_int8_t_s_s((((p_7 || (l_1407 = ((safe_sub_func_int32_t_s_s(p_10, (~(GROUP_DIVERGE(1, 1) < ((*l_1404) = (safe_sub_func_int64_t_s_s(p_8, (((1L && ((*l_1389) = (**p_1993->g_763))) < ((*l_1399) |= l_1398)) == (p_7 > (safe_sub_func_int16_t_s_s(5L, (safe_rshift_func_uint16_t_u_s((4294967294UL && 4L), 2))))))))))))) || GROUP_DIVERGE(2, 1)))) | p_1993->g_393) , p_1993->g_1325[5]), p_1993->g_164)) , (void*)0) != (void*)0), p_1993->g_136)))
    { /* block id: 655 */
        int32_t *l_1408 = &p_1993->g_1325[0];
        uint8_t ***l_1411 = &l_1386;
        int16_t *l_1412 = &p_1993->g_393;
        int32_t l_1427 = 0x2DBC4768L;
        int32_t l_1428 = 0x771D64DCL;
        int32_t l_1430[10][8][3] = {{{1L,1L,(-10L)},{1L,1L,(-10L)},{1L,1L,(-10L)},{1L,1L,(-10L)},{1L,1L,(-10L)},{1L,1L,(-10L)},{1L,1L,(-10L)},{1L,1L,(-10L)}},{{1L,1L,(-10L)},{1L,1L,(-10L)},{1L,1L,(-10L)},{1L,1L,(-10L)},{1L,1L,(-10L)},{1L,1L,(-10L)},{1L,1L,(-10L)},{1L,1L,(-10L)}},{{1L,1L,(-10L)},{1L,1L,(-10L)},{1L,1L,(-10L)},{1L,1L,(-10L)},{1L,1L,(-10L)},{1L,1L,(-10L)},{1L,1L,(-10L)},{1L,1L,(-10L)}},{{1L,1L,(-10L)},{1L,1L,(-10L)},{1L,1L,(-10L)},{1L,1L,(-10L)},{1L,1L,(-10L)},{1L,1L,(-10L)},{1L,1L,(-10L)},{1L,1L,(-10L)}},{{1L,1L,(-10L)},{1L,1L,(-10L)},{1L,1L,(-10L)},{1L,1L,(-10L)},{1L,1L,(-10L)},{1L,1L,(-10L)},{1L,1L,(-10L)},{1L,1L,(-10L)}},{{1L,1L,(-10L)},{1L,1L,(-10L)},{1L,1L,(-10L)},{1L,1L,(-10L)},{1L,1L,(-10L)},{1L,1L,(-10L)},{1L,1L,(-10L)},{1L,1L,(-10L)}},{{1L,1L,(-10L)},{1L,1L,(-10L)},{1L,1L,(-10L)},{1L,1L,(-10L)},{1L,1L,(-10L)},{1L,1L,(-10L)},{1L,1L,(-10L)},{1L,1L,(-10L)}},{{1L,1L,(-10L)},{1L,1L,(-10L)},{1L,1L,(-10L)},{1L,1L,(-10L)},{1L,1L,(-10L)},{1L,1L,(-10L)},{1L,1L,(-10L)},{1L,1L,(-10L)}},{{1L,1L,(-10L)},{1L,1L,(-10L)},{1L,1L,(-10L)},{1L,1L,(-10L)},{1L,1L,(-10L)},{1L,1L,(-10L)},{1L,1L,(-10L)},{1L,1L,(-10L)}},{{1L,1L,(-10L)},{1L,1L,(-10L)},{1L,1L,(-10L)},{1L,1L,(-10L)},{1L,1L,(-10L)},{1L,1L,(-10L)},{1L,1L,(-10L)},{1L,1L,(-10L)}}};
        struct S0 *l_1484 = &p_1993->g_64;
        int8_t l_1493[9][3] = {{0x7EL,0x7EL,0x7EL},{0x7EL,0x7EL,0x7EL},{0x7EL,0x7EL,0x7EL},{0x7EL,0x7EL,0x7EL},{0x7EL,0x7EL,0x7EL},{0x7EL,0x7EL,0x7EL},{0x7EL,0x7EL,0x7EL},{0x7EL,0x7EL,0x7EL},{0x7EL,0x7EL,0x7EL}};
        uint8_t l_1500 = 0UL;
        int8_t l_1620 = 9L;
        int64_t *l_1625 = &p_1993->g_1177;
        int32_t l_1652 = 0x1A2A707FL;
        int32_t l_1655 = (-1L);
        int64_t l_1678 = 0x6E9813F28E808004L;
        int8_t l_1744 = 0x72L;
        int64_t l_1754 = 1L;
        int32_t *****l_1794 = &p_1993->g_611[5][5][0];
        int32_t ******l_1793[7][2][7] = {{{&l_1794,&l_1794,&l_1794,&l_1794,&l_1794,&l_1794,(void*)0},{&l_1794,&l_1794,&l_1794,&l_1794,&l_1794,&l_1794,(void*)0}},{{&l_1794,&l_1794,&l_1794,&l_1794,&l_1794,&l_1794,(void*)0},{&l_1794,&l_1794,&l_1794,&l_1794,&l_1794,&l_1794,(void*)0}},{{&l_1794,&l_1794,&l_1794,&l_1794,&l_1794,&l_1794,(void*)0},{&l_1794,&l_1794,&l_1794,&l_1794,&l_1794,&l_1794,(void*)0}},{{&l_1794,&l_1794,&l_1794,&l_1794,&l_1794,&l_1794,(void*)0},{&l_1794,&l_1794,&l_1794,&l_1794,&l_1794,&l_1794,(void*)0}},{{&l_1794,&l_1794,&l_1794,&l_1794,&l_1794,&l_1794,(void*)0},{&l_1794,&l_1794,&l_1794,&l_1794,&l_1794,&l_1794,(void*)0}},{{&l_1794,&l_1794,&l_1794,&l_1794,&l_1794,&l_1794,(void*)0},{&l_1794,&l_1794,&l_1794,&l_1794,&l_1794,&l_1794,(void*)0}},{{&l_1794,&l_1794,&l_1794,&l_1794,&l_1794,&l_1794,(void*)0},{&l_1794,&l_1794,&l_1794,&l_1794,&l_1794,&l_1794,(void*)0}}};
        int i, j, k;
        l_1406[1] = l_1408;
        if ((safe_add_func_int8_t_s_s(((*l_1399) |= (*l_1389)), (((((((*l_1404) = p_7) & ((*l_1412) = (&p_1993->g_818 != ((*l_1411) = &l_1385[1])))) && (p_7 | (1L == (safe_rshift_func_int8_t_s_u((((safe_mod_func_uint8_t_u_u((((safe_mod_func_int32_t_s_s(p_7, (safe_rshift_func_int8_t_s_u((*l_1408), 2)))) != ((*l_1408) , (*l_1408))) >= (**p_1993->g_763)), 0xB2L)) || FAKE_DIVERGE(p_1993->group_0_offset, get_group_id(0), 10)) != FAKE_DIVERGE(p_1993->local_2_offset, get_local_id(2), 10)), 2))))) || 1L) < p_7) >= (*l_1408)))))
        { /* block id: 661 */
            int16_t l_1425 = 0x5C4CL;
            int32_t l_1429 = 0x284A660FL;
            int32_t l_1432[2];
            int32_t l_1474 = (-1L);
            uint64_t l_1485 = 0x56D6B9FADE75872EL;
            int i;
            for (i = 0; i < 2; i++)
                l_1432[i] = 0x6BF7BFB7L;
            for (p_1993->g_615 = 1; (p_1993->g_615 < 17); ++p_1993->g_615)
            { /* block id: 664 */
                int64_t l_1423 = 7L;
                int32_t l_1424 = 1L;
                int32_t l_1426 = (-4L);
                int32_t l_1431[1][6][5] = {{{1L,(-4L),(-6L),0L,0x348B754BL},{1L,(-4L),(-6L),0L,0x348B754BL},{1L,(-4L),(-6L),0L,0x348B754BL},{1L,(-4L),(-6L),0L,0x348B754BL},{1L,(-4L),(-6L),0L,0x348B754BL},{1L,(-4L),(-6L),0L,0x348B754BL}}};
                uint16_t l_1434 = 0x90CEL;
                int i, j, k;
                l_1434++;
            }
            for (l_1407 = 0; (l_1407 > 22); l_1407 = safe_add_func_int8_t_s_s(l_1407, 8))
            { /* block id: 669 */
                int16_t l_1439 = (-1L);
                int32_t l_1473 = 0x62627019L;
                int32_t **l_1477 = &p_1993->g_847;
                uint8_t l_1486 = 0xD2L;
                int32_t l_1489 = (-1L);
                int32_t l_1490 = 0x6B51E57DL;
                int32_t l_1491 = 0x02CADF3DL;
                int32_t l_1492 = 0x0EA04B3BL;
                int32_t l_1497 = (-5L);
                int32_t l_1498 = 0x2338E0C7L;
                int32_t l_1499[2];
                int i;
                for (i = 0; i < 2; i++)
                    l_1499[i] = 0x32364303L;
                (*l_1408) ^= (+(func_51(l_1439, p_1993) , p_10));
                for (l_1398 = (-12); (l_1398 <= 26); l_1398 = safe_add_func_uint64_t_u_u(l_1398, 8))
                { /* block id: 673 */
                    int32_t l_1472[2];
                    int i;
                    for (i = 0; i < 2; i++)
                        l_1472[i] = 0x5ECCB5FCL;
                    (*p_1993->g_907) = func_51((l_1432[0] |= ((safe_mod_func_int32_t_s_s(((*l_1389) = ((safe_sub_func_int64_t_s_s((p_8 == (safe_div_func_int64_t_s_s(((safe_mul_func_uint16_t_u_u((safe_add_func_uint16_t_u_u((+(l_1473 = ((*p_1993->g_465) = ((safe_div_func_uint8_t_u_u(0x7FL, ((p_9 , ((*p_1993->g_1276) = (safe_sub_func_uint32_t_u_u(FAKE_DIVERGE(p_1993->local_0_offset, get_local_id(0), 10), (safe_mul_func_uint16_t_u_u(((safe_add_func_int32_t_s_s((p_7 > (((*p_1993->g_818) && (safe_lshift_func_uint8_t_u_s((safe_div_func_uint16_t_u_u(((p_9 ^ (safe_mul_func_int16_t_s_s((**p_1993->g_763), (p_1993->g_393 = ((safe_lshift_func_uint8_t_u_u((safe_mod_func_uint64_t_u_u(((!0UL) > (safe_add_func_int64_t_s_s((*p_1993->g_1276), 0x18046CC4C3C5B1AFL))), 8L)), 3)) , 0x2700L))))) <= FAKE_DIVERGE(p_1993->group_2_offset, get_group_id(2), 10)), 0x2EC3L)), 7))) | l_1472[0])), (*p_1993->g_72))) || (*l_1408)), (*l_1389))))))) , 0x56L))) & 0x05EAL)))), 65535UL)), l_1474)) | 1L), 0x2A1F3F1BA12174A4L))), 0UL)) == p_7)), p_7)) ^ p_11)), p_1993);
                }
                if ((safe_mod_func_int32_t_s_s(((*l_1389) = ((*p_1993->g_72) = ((void*)0 != l_1477))), (safe_mul_func_int8_t_s_s((((((l_1473 <= (safe_div_func_int8_t_s_s(((*l_1399) = ((safe_add_func_int8_t_s_s(l_1425, (l_1432[0] ^ (0x2ACEA21CA8F75F65L == ((void*)0 == l_1484))))) > (l_1485 || 0x17A42483L))), (*p_1993->g_818)))) || GROUP_DIVERGE(1, 1)) & l_1486) | 0x21B1F18B1FAE5291L) && (*l_1408)), l_1474)))))
                { /* block id: 685 */
                    int32_t **l_1488 = &l_1406[1];
                    l_1487[6][1] = func_51(((*p_1993->g_465) = (**p_1993->g_464)), p_1993);
                    (*l_1488) = (((**p_1993->g_763) < ((GROUP_DIVERGE(1, 1) , 6UL) && (*p_1993->g_465))) , &l_1427);
                }
                else
                { /* block id: 689 */
                    int8_t l_1494 = 0x7BL;
                    int32_t l_1495 = 1L;
                    int32_t l_1496 = 0x075CA883L;
                    uint32_t *l_1535 = &p_1993->g_396;
                    uint32_t **l_1534 = &l_1535;
                    for (p_1993->g_615 = 0; (p_1993->g_615 <= 4); p_1993->g_615 += 1)
                    { /* block id: 692 */
                        int i;
                        if (p_1993->g_174[(p_1993->g_615 + 3)])
                            break;
                    }
                    l_1500++;
                    (*l_1484) = func_51((safe_sub_func_uint16_t_u_u(((safe_sub_func_uint8_t_u_u(((safe_sub_func_uint16_t_u_u((((*l_1404) = (0UL ^ (safe_sub_func_int8_t_s_s((GROUP_DIVERGE(0, 1) >= ((((*l_1534) = func_40(((safe_div_func_uint8_t_u_u((*p_1993->g_818), 0x87L)) , p_11), (((l_1432[1] &= (safe_lshift_func_uint8_t_u_s(((safe_rshift_func_uint16_t_u_s((safe_lshift_func_int8_t_s_s((safe_lshift_func_int8_t_s_s((safe_lshift_func_uint16_t_u_s(((-1L) == (safe_sub_func_uint64_t_u_u((((*p_1993->g_465) = ((safe_mul_func_uint8_t_u_u(((void*)0 == &p_1993->g_1165), (safe_mul_func_int8_t_s_s(((safe_unary_minus_func_int64_t_s(p_9)) , (((safe_mul_func_uint8_t_u_u((((safe_unary_minus_func_uint8_t_u((p_7 & l_1491))) | p_8) , (*p_1993->g_818)), p_1993->g_109)) , (void*)0) != (void*)0)), (-1L))))) || (*p_1993->g_465))) & 0x34F1L), l_1494))), p_11)), 1)), l_1499[1])), p_11)) || (-2L)), 1))) , (**p_1993->g_464)) <= p_10), &l_1487[8][0], p_1993->g_1533[4], p_1993)) != &p_1993->g_396) ^ 0x3C39FFF2L)), 0x51L)))) , (**p_1993->g_464)), 0x454AL)) , p_9), 0x2EL)) == (*l_1408)), 0x31B1L)), p_1993);
                    l_1474 ^= (safe_mul_func_int8_t_s_s((0x515721B80113FBE1L == 1UL), ((+(&p_1993->g_327 != (p_1993->g_1538 = &p_1993->g_494))) || 0x74CBD58FA4E1AA23L)));
                }
            }
        }
        else
        { /* block id: 705 */
            int8_t l_1539 = 0L;
            uint32_t l_1541 = 0x2BA89818L;
            int32_t ***l_1551 = &p_1993->g_846;
            int64_t l_1562 = 0x4B95DA3C0BA8AF62L;
            int16_t *l_1573[2][5] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
            int32_t **l_1602[4] = {&l_1389,&l_1389,&l_1389,&l_1389};
            int8_t l_1653 = 0x02L;
            int i, j;
            if (((*l_1408) = p_10))
            { /* block id: 707 */
                int32_t l_1540 = (-5L);
                int32_t ***l_1552[7] = {&p_1993->g_846,(void*)0,&p_1993->g_846,&p_1993->g_846,(void*)0,&p_1993->g_846,&p_1993->g_846};
                int16_t *l_1575 = (void*)0;
                uint32_t l_1624 = 0xACA70056L;
                int32_t l_1650 = 1L;
                int32_t l_1651[6] = {0x607D34B8L,0x607D34B8L,0x607D34B8L,0x607D34B8L,0x607D34B8L,0x607D34B8L};
                int16_t l_1654 = 0L;
                int i;
                l_1541++;
                for (l_1433 = (-6); (l_1433 > (-7)); l_1433--)
                { /* block id: 711 */
                    int32_t l_1550 = 1L;
                    int64_t *l_1556 = &p_1993->g_1177;
                    int64_t **l_1557 = &l_1556;
                    uint32_t l_1563 = 6UL;
                    int32_t ****l_1600 = &p_1993->g_612;
                    struct S0 *l_1601 = &l_1487[1][0];
                    (1 + 1);
                }
                if ((p_1993->g_1095 | (((l_1602[0] != (void*)0) && (p_8 & (safe_rshift_func_int8_t_s_s((~(safe_add_func_uint64_t_u_u(p_7, (((safe_sub_func_uint8_t_u_u(p_10, (((((safe_rshift_func_uint16_t_u_s((safe_mod_func_uint8_t_u_u(((safe_div_func_int8_t_s_s(((safe_sub_func_uint8_t_u_u(((safe_mul_func_uint8_t_u_u((((p_1993->g_1619 ^ l_1620) <= p_10) , p_7), l_1540)) && 0L), l_1540)) || 0xFA3DF979L), p_9)) && 0x08E0L), 0x24L)), p_10)) , p_7) > 18446744073709551615UL) >= (*p_1993->g_1276)) >= (*l_1408)))) > GROUP_DIVERGE(1, 1)) > p_11)))), p_7)))) , 0x16L)))
                { /* block id: 733 */
                    uint8_t l_1630 = 0x10L;
                    l_1540 = 0x0D6DE742L;
                    for (l_1500 = (-3); (l_1500 == 50); ++l_1500)
                    { /* block id: 737 */
                        uint32_t l_1623 = 1UL;
                        (*l_1408) = l_1623;
                        (*l_1408) = (((l_1624 , l_1625) == ((((((*l_1404) = (safe_lshift_func_uint16_t_u_u((safe_add_func_int32_t_s_s(l_1630, ((void*)0 != l_1389))), ((((safe_add_func_int32_t_s_s(((((safe_mod_func_int8_t_s_s((safe_mod_func_int32_t_s_s(1L, (safe_lshift_func_int16_t_s_s((((safe_mul_func_uint8_t_u_u(((safe_add_func_int8_t_s_s((safe_rshift_func_uint8_t_u_u(0xD9L, ((!(l_1540 = (l_1630 , l_1630))) , FAKE_DIVERGE(p_1993->group_0_offset, get_group_id(0), 10)))), l_1624)) < 0x7803795E7EECD026L), p_8)) >= (*p_1993->g_764)) && l_1624), p_1993->g_377[4][6])))), FAKE_DIVERGE(p_1993->group_1_offset, get_group_id(1), 10))) > GROUP_DIVERGE(2, 1)) | (*l_1408)) <= p_10), GROUP_DIVERGE(1, 1))) ^ 0xD86969BF57655388L) ^ 4L) || (*p_1993->g_818))))) != (*p_1993->g_465)) == 1L) < 7UL) , (void*)0)) || p_1993->g_1175);
                    }
                }
                else
                { /* block id: 743 */
                    uint16_t l_1645[4][3] = {{1UL,1UL,1UL},{1UL,1UL,1UL},{1UL,1UL,1UL},{1UL,1UL,1UL}};
                    int i, j;
                    ++l_1645[3][1];
                }
                --p_1993->g_1656;
            }
            else
            { /* block id: 747 */
                return p_7;
            }
        }
        for (p_1993->g_106 = (-21); (p_1993->g_106 > 0); p_1993->g_106 = safe_add_func_uint16_t_u_u(p_1993->g_106, 7))
        { /* block id: 753 */
            uint16_t l_1661 = 2UL;
            int64_t **l_1716[2];
            int32_t l_1740 = 0x1B40FD44L;
            int32_t l_1745 = 0x245903D0L;
            int32_t l_1746 = (-10L);
            int32_t l_1748[4];
            uint8_t l_1755 = 255UL;
            int i;
            for (i = 0; i < 2; i++)
                l_1716[i] = &p_1993->g_1276;
            for (i = 0; i < 4; i++)
                l_1748[i] = 0L;
            for (l_1652 = 2; (l_1652 >= 0); l_1652 -= 1)
            { /* block id: 756 */
                int8_t *l_1666 = &l_1620;
                int32_t l_1679 = 7L;
                int64_t **l_1717 = &p_1993->g_1276;
                int32_t l_1742 = 8L;
                int32_t l_1743[4];
                int i;
                for (i = 0; i < 4; i++)
                    l_1743[i] = (-6L);
                if (l_1661)
                    break;
            }
        }
        for (l_1744 = 0; (l_1744 <= 2); l_1744 += 1)
        { /* block id: 789 */
            int32_t l_1769 = 0x1900B7C3L;
            int32_t **l_1770 = (void*)0;
            int32_t **l_1771 = &l_1405;
            uint16_t l_1774[2];
            int i;
            for (i = 0; i < 2; i++)
                l_1774[i] = 0xE9EBL;
            l_1769 = (safe_mod_func_int64_t_s_s(((*l_1408) != ((*p_1993->g_1276) = p_11)), (p_11 & (safe_sub_func_int64_t_s_s(((safe_sub_func_uint32_t_u_u(((safe_mod_func_int16_t_s_s((*l_1408), (p_10 && ((*l_1408) | (*p_1993->g_818))))) | 1L), (*l_1389))) , p_9), p_11)))));
            (*l_1771) = (void*)0;
            for (p_1993->g_1095 = 0; (p_1993->g_1095 <= 2); p_1993->g_1095 += 1)
            { /* block id: 795 */
                uint32_t l_1775 = 4294967294UL;
                for (p_1993->g_494 = 0; (p_1993->g_494 <= 2); p_1993->g_494 += 1)
                { /* block id: 798 */
                    l_1774[0] = (safe_add_func_uint64_t_u_u(0xECBA49B7CDD45D11L, 0xE1B58615349F080FL));
                }
                for (p_1993->g_133 = 0; (p_1993->g_133 <= 2); p_1993->g_133 += 1)
                { /* block id: 803 */
                    for (p_1993->g_969 = 0; (p_1993->g_969 <= 2); p_1993->g_969 += 1)
                    { /* block id: 806 */
                        int i, j, k;
                        if (l_1430[(p_1993->g_1095 + 7)][p_1993->g_1095][p_1993->g_969])
                            break;
                        if (l_1430[(p_1993->g_133 + 1)][(l_1744 + 4)][p_1993->g_969])
                            break;
                        (*l_1408) ^= p_10;
                    }
                    (*l_1389) |= ((*l_1408) = l_1775);
                    for (p_1993->g_109 = 0; (p_1993->g_109 <= 2); p_1993->g_109 += 1)
                    { /* block id: 815 */
                        int16_t l_1786 = 0x1E73L;
                        struct S0 l_1789 = {4294967295UL};
                        (*l_1389) ^= ((((p_10 < ((safe_mod_func_int64_t_s_s((safe_mul_func_int8_t_s_s(p_10, (safe_rshift_func_uint8_t_u_u(((-1L) && (safe_lshift_func_int16_t_s_u(0L, 0))), (++(*p_1993->g_818)))))), (l_1786 | p_1993->g_430[0][5][3]))) , p_10)) || (((*p_1993->g_1538) = (safe_sub_func_uint32_t_u_u((p_9 == (l_1789 , p_1993->g_1185)), p_7))) ^ (-4L))) & 4294967286UL) > p_11);
                    }
                    l_1406[0] = &l_1398;
                }
                l_1790[4]++;
                (*l_1408) |= ((void*)0 != l_1793[6][0][6]);
            }
        }
    }
    else
    { /* block id: 826 */
        int32_t l_1797 = 0x2F8561E9L;
        int8_t **l_1806 = &l_1399;
        if (((((safe_rshift_func_int16_t_s_s(p_7, l_1797)) || p_8) , 1UL) < (safe_div_func_int16_t_s_s(((p_1993->g_1584 = ((*p_1993->g_1276) = 0x6FD8FB9928B97FB8L)) >= (safe_div_func_uint32_t_u_u((safe_lshift_func_uint16_t_u_s(((safe_unary_minus_func_int8_t_s(p_1993->g_494)) != (((*l_1806) = (p_1993->g_1805 = &p_1993->g_1095)) == &p_8)), 12)), ((((p_8 , p_9) <= p_8) <= p_1993->g_1807) , 1UL)))), 0x01A3L))))
        { /* block id: 831 */
            return (*p_1993->g_307);
        }
        else
        { /* block id: 833 */
            uint32_t l_1808[3][7][5] = {{{4294967295UL,0x5F7E3669L,0x5F7E3669L,4294967295UL,0x33FE17ABL},{4294967295UL,0x5F7E3669L,0x5F7E3669L,4294967295UL,0x33FE17ABL},{4294967295UL,0x5F7E3669L,0x5F7E3669L,4294967295UL,0x33FE17ABL},{4294967295UL,0x5F7E3669L,0x5F7E3669L,4294967295UL,0x33FE17ABL},{4294967295UL,0x5F7E3669L,0x5F7E3669L,4294967295UL,0x33FE17ABL},{4294967295UL,0x5F7E3669L,0x5F7E3669L,4294967295UL,0x33FE17ABL},{4294967295UL,0x5F7E3669L,0x5F7E3669L,4294967295UL,0x33FE17ABL}},{{4294967295UL,0x5F7E3669L,0x5F7E3669L,4294967295UL,0x33FE17ABL},{4294967295UL,0x5F7E3669L,0x5F7E3669L,4294967295UL,0x33FE17ABL},{4294967295UL,0x5F7E3669L,0x5F7E3669L,4294967295UL,0x33FE17ABL},{4294967295UL,0x5F7E3669L,0x5F7E3669L,4294967295UL,0x33FE17ABL},{4294967295UL,0x5F7E3669L,0x5F7E3669L,4294967295UL,0x33FE17ABL},{4294967295UL,0x5F7E3669L,0x5F7E3669L,4294967295UL,0x33FE17ABL},{4294967295UL,0x5F7E3669L,0x5F7E3669L,4294967295UL,0x33FE17ABL}},{{4294967295UL,0x5F7E3669L,0x5F7E3669L,4294967295UL,0x33FE17ABL},{4294967295UL,0x5F7E3669L,0x5F7E3669L,4294967295UL,0x33FE17ABL},{4294967295UL,0x5F7E3669L,0x5F7E3669L,4294967295UL,0x33FE17ABL},{4294967295UL,0x5F7E3669L,0x5F7E3669L,4294967295UL,0x33FE17ABL},{4294967295UL,0x5F7E3669L,0x5F7E3669L,4294967295UL,0x33FE17ABL},{4294967295UL,0x5F7E3669L,0x5F7E3669L,4294967295UL,0x33FE17ABL},{4294967295UL,0x5F7E3669L,0x5F7E3669L,4294967295UL,0x33FE17ABL}}};
            int i, j, k;
            for (p_10 = 4; (p_10 >= 0); p_10 -= 1)
            { /* block id: 836 */
                for (p_1993->g_1175 = 0; (p_1993->g_1175 <= 6); p_1993->g_1175 += 1)
                { /* block id: 839 */
                    int i;
                    return l_1649[p_10];
                }
            }
            (*l_1389) = l_1808[0][2][0];
        }
    }
    ++p_1993->g_1810;
    return (*p_1993->g_847);
}


/* ------------------------------------------ */
/* 
 * reads : p_1993->g_30 p_1993->g_19 p_1993->g_64 p_1993->g_17 p_1993->g_71 p_1993->g_396 p_1993->g_103 p_1993->g_494 p_1993->g_377 p_1993->g_430 p_1993->g_23 p_1993->g_513 p_1993->g_465 p_1993->g_109 p_1993->g_539 p_1993->g_72 p_1993->g_308 p_1993->g_25 p_1993->g_133 p_1993->g_327 p_1993->g_106 p_1993->g_577 p_1993->g_174 p_1993->g_127 p_1993->g_619 p_1993->g_763 p_1993->g_764 p_1993->g_765 p_1993->g_164 p_1993->g_268 p_1993->g_818 p_1993->g_578 p_1993->g_540 p_1993->g_846 p_1993->g_136 p_1993->g_464 p_1993->g_422 p_1993->g_85 p_1993->g_907 p_1993->g_754 p_1993->g_615 p_1993->g_981 p_1993->g_1021 p_1993->g_838 p_1993->g_1072 p_1993->g_969 p_1993->g_847 p_1993->g_1062 p_1993->g_1095 p_1993->g_89 p_1993->g_1165 p_1993->g_1016 p_1993->g_1177 p_1993->g_393 p_1993->g_1260 p_1993->g_1272 p_1993->g_1276 p_1993->g_1275 p_1993->g_1273 p_1993->g_1326 p_1993->g_1325 p_1993->g_1365 p_1993->g_1366
 * writes: p_1993->g_30 p_1993->g_23 p_1993->g_17 p_1993->g_64.f0 p_1993->g_72 p_1993->g_396 p_1993->g_103 p_1993->g_494 p_1993->g_327 p_1993->g_25 p_1993->g_106 p_1993->g_164 p_1993->g_619 p_1993->g_19 p_1993->g_838 p_1993->g_133 p_1993->g_89 p_1993->g_136 p_1993->g_127 p_1993->g_907 p_1993->g_754 p_1993->g_969 p_1993->g_377 p_1993->g_85 p_1993->g_1016 p_1993->g_393 p_1993->g_268 p_1993->g_981 p_1993->g_513 p_1993->g_847 p_1993->g_109 p_1993->g_1260 p_1993->g_1275 p_1993->g_615 p_1993->g_64 p_1993->g_1326 p_1993->g_1325 p_1993->g_308 p_1993->g_1214
 */
int8_t  func_13(int8_t  p_14, uint32_t  p_15, int32_t  p_16, struct S1 * p_1993)
{ /* block id: 9 */
    int32_t *l_26 = (void*)0;
    int32_t *l_27 = &p_1993->g_23;
    int32_t *l_28[5];
    int32_t l_29 = 0L;
    int32_t **l_61 = (void*)0;
    int32_t **l_62 = (void*)0;
    int32_t **l_63 = &l_27;
    int32_t *l_1061 = &p_1993->g_1062;
    struct S0 **l_1374 = (void*)0;
    struct S0 **l_1375 = &p_1993->g_907;
    struct S0 **l_1376 = &p_1993->g_981;
    int i;
    for (i = 0; i < 5; i++)
        l_28[i] = &p_1993->g_23;
    p_1993->g_30--;
    (*l_1376) = ((*l_1375) = func_33(func_37(func_40(func_45((func_51(func_53((safe_rshift_func_int8_t_s_s((safe_sub_func_int8_t_s_s((p_15 || (p_1993->g_19[3][0] ^ (((*l_63) = (void*)0) == &p_1993->g_23))), (((void*)0 == &p_1993->g_19[7][0]) <= (&p_1993->g_23 != (void*)0)))), p_15)), p_1993->g_64, &p_1993->g_23, p_1993), p_1993) , p_1993->g_327), p_16, p_16, (*p_1993->g_465), p_1993->g_19[2][1], p_1993), p_1993->g_615, p_1993->g_981, l_26, p_1993), l_1061, p_1993), p_15, l_28[0], p_1993));
    return p_16;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
struct S0 * func_33(struct S0 * p_34, int32_t  p_35, int32_t * p_36, struct S1 * p_1993)
{ /* block id: 638 */
    uint8_t l_1370 = 0x25L;
    struct S0 *l_1373[1][2];
    int i, j;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 2; j++)
            l_1373[i][j] = &p_1993->g_64;
    }
    l_1370++;
    return l_1373[0][0];
}


/* ------------------------------------------ */
/* 
 * reads : p_1993->g_72 p_1993->g_71 p_1993->g_106 p_1993->g_764 p_1993->g_765 p_1993->g_133 p_1993->g_818 p_1993->g_136 p_1993->g_396 p_1993->g_103 p_1993->g_578 p_1993->g_64 p_1993->g_465 p_1993->g_109 p_1993->g_513 p_1993->g_268 p_1993->g_19 p_1993->g_1021 p_1993->g_1072 p_1993->g_540 p_1993->g_23 p_1993->g_969 p_1993->g_838 p_1993->g_847 p_1993->g_85 p_1993->g_464 p_1993->g_127 p_1993->g_1062 p_1993->g_17 p_1993->g_1095 p_1993->g_494 p_1993->g_164 p_1993->g_89 p_1993->g_619 p_1993->g_25 p_1993->g_1165 p_1993->g_846 p_1993->g_422 p_1993->g_377 p_1993->g_1016 p_1993->g_615 p_1993->g_1177 p_1993->g_393 p_1993->g_1260 p_1993->g_1272 p_1993->g_763 p_1993->g_1276 p_1993->g_1275 p_1993->g_1273 p_1993->g_1326 p_1993->g_174 p_1993->g_1325 p_1993->g_1365 p_1993->g_1366
 * writes: p_1993->g_164 p_1993->g_72 p_1993->g_1016 p_1993->g_393 p_1993->g_89 p_1993->g_133 p_1993->g_268 p_1993->g_327 p_1993->g_981 p_1993->g_85 p_1993->g_106 p_1993->g_377 p_1993->g_838 p_1993->g_513 p_1993->g_17 p_1993->g_494 p_1993->g_127 p_1993->g_619 p_1993->g_136 p_1993->g_847 p_1993->g_109 p_1993->g_64.f0 p_1993->g_1260 p_1993->g_23 p_1993->g_1275 p_1993->g_103 p_1993->g_615 p_1993->g_64 p_1993->g_1326 p_1993->g_1325 p_1993->g_308 p_1993->g_1214
 */
struct S0 * func_37(uint32_t * p_38, int32_t * p_39, struct S1 * p_1993)
{ /* block id: 484 */
    struct S0 l_1063 = {4294967295UL};
    int16_t *l_1066 = (void*)0;
    int16_t **l_1067 = &l_1066;
    int32_t ***l_1071 = &p_1993->g_846;
    int32_t ****l_1070 = &l_1071;
    int32_t **l_1075 = &p_1993->g_72;
    int32_t **l_1077 = (void*)0;
    int32_t l_1096 = (-10L);
    int32_t l_1097 = (-2L);
    int32_t l_1106 = 0x7E32E8CBL;
    int32_t l_1107 = 0x0175D620L;
    int32_t l_1108[3];
    int32_t *****l_1121 = &p_1993->g_611[8][0][0];
    int32_t *****l_1125 = &p_1993->g_611[7][1][0];
    uint8_t *l_1206[1];
    struct S0 *l_1229 = &p_1993->g_64;
    struct S0 *l_1233[4] = {&p_1993->g_64,&p_1993->g_64,&p_1993->g_64,&p_1993->g_64};
    int64_t *l_1301 = (void*)0;
    uint16_t l_1320 = 0xA67FL;
    int i;
    for (i = 0; i < 3; i++)
        l_1108[i] = 0x7349EBA1L;
    for (i = 0; i < 1; i++)
        l_1206[i] = &p_1993->g_136;
lbl_1203:
    (*p_1993->g_1072) = func_40((0xF1EBC51AL > 1UL), (l_1063 , (safe_lshift_func_int16_t_s_u(((((*l_1067) = (l_1063.f0 , l_1066)) == (void*)0) > 0L), 3))), ((safe_sub_func_uint64_t_u_u((((0UL | l_1063.f0) , (void*)0) == l_1070), l_1063.f0)) , &p_1993->g_64), p_38, p_1993);
    for (p_1993->g_17 = (-27); (p_1993->g_17 < 14); p_1993->g_17 = safe_add_func_int32_t_s_s(p_1993->g_17, 9))
    { /* block id: 489 */
        int32_t **l_1076 = &p_1993->g_72;
        int32_t l_1104[4][7][1] = {{{0x0A6691E4L},{0x0A6691E4L},{0x0A6691E4L},{0x0A6691E4L},{0x0A6691E4L},{0x0A6691E4L},{0x0A6691E4L}},{{0x0A6691E4L},{0x0A6691E4L},{0x0A6691E4L},{0x0A6691E4L},{0x0A6691E4L},{0x0A6691E4L},{0x0A6691E4L}},{{0x0A6691E4L},{0x0A6691E4L},{0x0A6691E4L},{0x0A6691E4L},{0x0A6691E4L},{0x0A6691E4L},{0x0A6691E4L}},{{0x0A6691E4L},{0x0A6691E4L},{0x0A6691E4L},{0x0A6691E4L},{0x0A6691E4L},{0x0A6691E4L},{0x0A6691E4L}}};
        int32_t l_1105 = (-1L);
        uint64_t l_1112 = 0x39FA258147006380L;
        uint8_t l_1167 = 0x4FL;
        uint32_t l_1171 = 0xA1AE3544L;
        uint32_t l_1188[1][7];
        int16_t **l_1202 = &l_1066;
        int64_t *l_1242 = &p_1993->g_103;
        int64_t **l_1241 = &l_1242;
        int8_t *l_1246 = &p_1993->g_1016;
        int8_t *l_1247[9] = {&p_1993->g_1095,&p_1993->g_1095,&p_1993->g_1095,&p_1993->g_1095,&p_1993->g_1095,&p_1993->g_1095,&p_1993->g_1095,&p_1993->g_1095,&p_1993->g_1095};
        int64_t l_1250 = 0x2FBEF39D61F27CDDL;
        uint16_t *l_1251 = &p_1993->g_127;
        struct S0 *l_1336 = &l_1063;
        int i, j, k;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 7; j++)
                l_1188[i][j] = 0xC12C5145L;
        }
        if ((l_1075 != (l_1077 = l_1076)))
        { /* block id: 491 */
            int32_t ***l_1086 = &l_1077;
            int32_t l_1110 = 0L;
            int32_t l_1111[9];
            int8_t l_1136 = 0x73L;
            uint32_t l_1139 = 4294967295UL;
            struct S0 *l_1140 = &l_1063;
            int32_t ****l_1164[4][4] = {{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}};
            uint16_t *l_1168 = &p_1993->g_127;
            uint32_t l_1212 = 0xD0FA7DDCL;
            int32_t *****l_1223 = &p_1993->g_611[9][0][0];
            int8_t *l_1230 = &p_1993->g_164;
            int i, j;
            for (i = 0; i < 9; i++)
                l_1111[i] = 1L;
            for (p_1993->g_393 = 4; (p_1993->g_393 == (-9)); p_1993->g_393 = safe_sub_func_uint8_t_u_u(p_1993->g_393, 3))
            { /* block id: 494 */
                uint8_t l_1087 = 254UL;
                uint8_t l_1088 = 0x82L;
                uint64_t *l_1089 = &p_1993->g_494;
                (*l_1075) = (((((((safe_sub_func_int32_t_s_s((safe_div_func_uint64_t_u_u(((*l_1089) = ((safe_sub_func_uint8_t_u_u(FAKE_DIVERGE(p_1993->global_1_offset, get_global_id(1), 10), ((((*p_1993->g_540) && (&l_1076 == l_1086)) && (l_1087 && 0xE414L)) || p_1993->g_23))) && l_1088)), (safe_add_func_uint16_t_u_u(((p_1993->g_969 == p_1993->g_838) , 1UL), 0x2668L)))), (*p_1993->g_578))) < (-1L)) < 0xDB46445C5475CD17L) , 1UL) , GROUP_DIVERGE(2, 1)) , p_1993->g_969) , p_38);
            }
            for (p_1993->g_494 = 21; (p_1993->g_494 > 46); p_1993->g_494 = safe_add_func_uint8_t_u_u(p_1993->g_494, 1))
            { /* block id: 500 */
                int32_t ****l_1094 = &l_1086;
                int32_t l_1109[3][2] = {{0L,0L},{0L,0L},{0L,0L}};
                uint32_t l_1141 = 6UL;
                struct S0 *l_1189 = &l_1063;
                int32_t *l_1191 = &p_1993->g_85;
                int i, j;
                if ((((*l_1094) = (void*)0) != (l_1063.f0 , &l_1076)))
                { /* block id: 502 */
                    int32_t *l_1098 = (void*)0;
                    int32_t *l_1099 = (void*)0;
                    int32_t *l_1100 = (void*)0;
                    int32_t *l_1101 = &l_1097;
                    int32_t *l_1102 = &p_1993->g_106;
                    int32_t *l_1103[2];
                    int i;
                    for (i = 0; i < 2; i++)
                        l_1103[i] = (void*)0;
                    l_1112++;
                }
                else
                { /* block id: 504 */
                    int32_t ******l_1122 = (void*)0;
                    int32_t *****l_1124 = &p_1993->g_611[8][5][0];
                    int32_t ******l_1123 = &l_1124;
                    uint16_t *l_1133 = &p_1993->g_127;
                    int8_t *l_1137[1][2];
                    uint64_t *l_1138 = &l_1112;
                    int i, j;
                    for (i = 0; i < 1; i++)
                    {
                        for (j = 0; j < 2; j++)
                            l_1137[i][j] = &p_1993->g_164;
                    }
                    (*p_1993->g_1072) = func_40((safe_mul_func_int16_t_s_s(0x2D65L, (((safe_rshift_func_int16_t_s_s((+(((safe_rshift_func_int16_t_s_s((p_1993->g_133 >= ((((*p_1993->g_847) &= ((l_1121 == (l_1125 = ((*l_1123) = &l_1094))) == l_1111[1])) , (safe_mul_func_uint8_t_u_u(((safe_rshift_func_uint8_t_u_u((((safe_sub_func_int64_t_s_s((safe_unary_minus_func_uint16_t_u(((*l_1133) &= (**p_1993->g_464)))), ((*l_1138) = (((safe_sub_func_int64_t_s_s((p_1993->g_1062 <= (p_1993->g_164 ^= (l_1136 <= (((((+((p_1993->g_17 != p_1993->g_1095) , p_1993->g_494)) ^ 0x75L) | p_1993->g_103) != p_1993->g_494) != (*p_1993->g_818))))), 8L)) || 4294967295UL) , 0xE4072EEB021EEC1CL)))) , 0x67L) == (*p_1993->g_818)), (*p_1993->g_818))) != 0xAFF14C6F51705316L), (*p_1993->g_818)))) <= 3L)), 14)) > l_1109[2][1]) <= p_1993->g_89)), p_1993->g_19[6][1])) , p_1993->g_619) < l_1139))), p_1993->g_25, l_1140, p_38, p_1993);
                    if (l_1141)
                        break;
                    for (p_1993->g_619 = 0; (p_1993->g_619 <= 7); p_1993->g_619 += 1)
                    { /* block id: 515 */
                        uint16_t **l_1148 = &l_1133;
                        int32_t l_1149[5][8] = {{(-3L),(-3L),3L,(-6L),(-5L),(-6L),3L,(-3L)},{(-3L),(-3L),3L,(-6L),(-5L),(-6L),3L,(-3L)},{(-3L),(-3L),3L,(-6L),(-5L),(-6L),3L,(-3L)},{(-3L),(-3L),3L,(-6L),(-5L),(-6L),3L,(-3L)},{(-3L),(-3L),3L,(-6L),(-5L),(-6L),3L,(-3L)}};
                        int64_t *l_1174 = &p_1993->g_1175;
                        int64_t *l_1176[10][3][7] = {{{&p_1993->g_1177,(void*)0,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177},{&p_1993->g_1177,(void*)0,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177},{&p_1993->g_1177,(void*)0,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177}},{{&p_1993->g_1177,(void*)0,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177},{&p_1993->g_1177,(void*)0,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177},{&p_1993->g_1177,(void*)0,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177}},{{&p_1993->g_1177,(void*)0,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177},{&p_1993->g_1177,(void*)0,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177},{&p_1993->g_1177,(void*)0,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177}},{{&p_1993->g_1177,(void*)0,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177},{&p_1993->g_1177,(void*)0,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177},{&p_1993->g_1177,(void*)0,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177}},{{&p_1993->g_1177,(void*)0,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177},{&p_1993->g_1177,(void*)0,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177},{&p_1993->g_1177,(void*)0,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177}},{{&p_1993->g_1177,(void*)0,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177},{&p_1993->g_1177,(void*)0,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177},{&p_1993->g_1177,(void*)0,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177}},{{&p_1993->g_1177,(void*)0,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177},{&p_1993->g_1177,(void*)0,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177},{&p_1993->g_1177,(void*)0,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177}},{{&p_1993->g_1177,(void*)0,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177},{&p_1993->g_1177,(void*)0,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177},{&p_1993->g_1177,(void*)0,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177}},{{&p_1993->g_1177,(void*)0,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177},{&p_1993->g_1177,(void*)0,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177},{&p_1993->g_1177,(void*)0,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177}},{{&p_1993->g_1177,(void*)0,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177},{&p_1993->g_1177,(void*)0,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177},{&p_1993->g_1177,(void*)0,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177,&p_1993->g_1177}}};
                        uint8_t *l_1182 = (void*)0;
                        uint8_t *l_1183 = &l_1167;
                        uint32_t *l_1190 = (void*)0;
                        int32_t l_1192 = (-1L);
                        int i, j, k;
                        l_1104[1][6][0] = (~((~((safe_add_func_uint64_t_u_u((+(safe_add_func_int8_t_s_s(((void*)0 != p_39), (++(*p_1993->g_818))))), (&p_1993->g_465 == l_1148))) || (((l_1149[2][5] ^ (safe_lshift_func_int16_t_s_u((safe_mul_func_int16_t_s_s(((safe_add_func_int64_t_s_s(1L, (l_1133 != ((safe_rshift_func_uint16_t_u_u((safe_mod_func_uint8_t_u_u((safe_mod_func_uint8_t_u_u(((safe_mod_func_uint16_t_u_u((p_1993->g_164 && (l_1167 &= ((l_1164[0][2] != p_1993->g_1165) <= l_1141))), 1UL)) , (*p_1993->g_818)), 0x33L)), p_1993->g_1095)), (*p_1993->g_465))) , l_1168)))) , (*p_1993->g_764)), 3L)), 12))) == 0x296BL) > (*p_1993->g_818)))) < l_1149[2][5]));
                        l_1192 |= (((~(*p_1993->g_818)) == (l_1149[3][3] , ((p_39 != ((***l_1070) = l_1191)) > FAKE_DIVERGE(p_1993->group_1_offset, get_group_id(1), 10)))) , l_1149[1][2]);
                        l_1149[0][2] = (((((((func_51((l_1149[2][7] > ((*p_1993->g_578) ^= l_1149[1][6])), p_1993) , (safe_lshift_func_int8_t_s_u((((*p_1993->g_818) |= (0L || (FAKE_DIVERGE(p_1993->global_1_offset, get_global_id(1), 10) < (((safe_div_func_int16_t_s_s((safe_sub_func_int16_t_s_s(1L, ((*p_1993->g_465) = ((*l_1133) = ((**l_1077) == (((p_1993->g_164 = (l_1192 |= 0L)) < (p_1993->g_19[1][1] != (+(safe_lshift_func_uint16_t_u_u((*p_1993->g_465), 8))))) != l_1139)))))), (**l_1076))) && 0x36DBL) || p_1993->g_268)))) ^ l_1149[3][7]), l_1141))) >= 0xEF02L) == p_1993->g_89) , p_1993->g_422) , (*p_1993->g_818)) | l_1149[2][5]) != 0x2022L);
                        if (l_1139)
                            continue;
                    }
                }
                for (p_1993->g_64.f0 = 0; (p_1993->g_64.f0 <= 1); p_1993->g_64.f0 += 1)
                { /* block id: 537 */
                    struct S0 l_1201 = {4294967295UL};
                    int32_t l_1213 = 0x4D073232L;
                    for (p_1993->g_1016 = 0; (p_1993->g_1016 <= 1); p_1993->g_1016 += 1)
                    { /* block id: 540 */
                        (*l_1140) = l_1201;
                        (*l_1077) = (void*)0;
                    }
                    if (((l_1202 = &l_1066) == &p_1993->g_764))
                    { /* block id: 545 */
                        uint16_t **l_1210 = &p_1993->g_465;
                        uint16_t ***l_1209 = &l_1210;
                        int32_t *l_1211 = &l_1110;
                        int i, j;
                        if (p_1993->g_268)
                            goto lbl_1203;
                        (*l_1211) ^= (safe_rshift_func_uint8_t_u_s((p_38 == ((l_1206[0] == ((&l_1191 != &l_1191) , &p_1993->g_136)) , (void*)0)), (((safe_mul_func_uint8_t_u_u((((*l_1209) = &l_1168) == (void*)0), p_1993->g_377[(p_1993->g_64.f0 + 2)][(p_1993->g_64.f0 + 2)])) < l_1201.f0) && (**p_1993->g_464))));
                        if (l_1212)
                            break;
                    }
                    else
                    { /* block id: 550 */
                        l_1213 &= l_1201.f0;
                    }
                }
            }
            for (p_1993->g_513 = 0; (p_1993->g_513 <= 0); p_1993->g_513 += 1)
            { /* block id: 557 */
                int32_t *l_1226[10] = {&l_1106,&l_1106,&l_1106,&l_1106,&l_1106,&l_1106,&l_1106,&l_1106,&l_1106,&l_1106};
                uint64_t *l_1227[10][5][5] = {{{&l_1112,&p_1993->g_494,&p_1993->g_17,&p_1993->g_17,&p_1993->g_494},{&l_1112,&p_1993->g_494,&p_1993->g_17,&p_1993->g_17,&p_1993->g_494},{&l_1112,&p_1993->g_494,&p_1993->g_17,&p_1993->g_17,&p_1993->g_494},{&l_1112,&p_1993->g_494,&p_1993->g_17,&p_1993->g_17,&p_1993->g_494},{&l_1112,&p_1993->g_494,&p_1993->g_17,&p_1993->g_17,&p_1993->g_494}},{{&l_1112,&p_1993->g_494,&p_1993->g_17,&p_1993->g_17,&p_1993->g_494},{&l_1112,&p_1993->g_494,&p_1993->g_17,&p_1993->g_17,&p_1993->g_494},{&l_1112,&p_1993->g_494,&p_1993->g_17,&p_1993->g_17,&p_1993->g_494},{&l_1112,&p_1993->g_494,&p_1993->g_17,&p_1993->g_17,&p_1993->g_494},{&l_1112,&p_1993->g_494,&p_1993->g_17,&p_1993->g_17,&p_1993->g_494}},{{&l_1112,&p_1993->g_494,&p_1993->g_17,&p_1993->g_17,&p_1993->g_494},{&l_1112,&p_1993->g_494,&p_1993->g_17,&p_1993->g_17,&p_1993->g_494},{&l_1112,&p_1993->g_494,&p_1993->g_17,&p_1993->g_17,&p_1993->g_494},{&l_1112,&p_1993->g_494,&p_1993->g_17,&p_1993->g_17,&p_1993->g_494},{&l_1112,&p_1993->g_494,&p_1993->g_17,&p_1993->g_17,&p_1993->g_494}},{{&l_1112,&p_1993->g_494,&p_1993->g_17,&p_1993->g_17,&p_1993->g_494},{&l_1112,&p_1993->g_494,&p_1993->g_17,&p_1993->g_17,&p_1993->g_494},{&l_1112,&p_1993->g_494,&p_1993->g_17,&p_1993->g_17,&p_1993->g_494},{&l_1112,&p_1993->g_494,&p_1993->g_17,&p_1993->g_17,&p_1993->g_494},{&l_1112,&p_1993->g_494,&p_1993->g_17,&p_1993->g_17,&p_1993->g_494}},{{&l_1112,&p_1993->g_494,&p_1993->g_17,&p_1993->g_17,&p_1993->g_494},{&l_1112,&p_1993->g_494,&p_1993->g_17,&p_1993->g_17,&p_1993->g_494},{&l_1112,&p_1993->g_494,&p_1993->g_17,&p_1993->g_17,&p_1993->g_494},{&l_1112,&p_1993->g_494,&p_1993->g_17,&p_1993->g_17,&p_1993->g_494},{&l_1112,&p_1993->g_494,&p_1993->g_17,&p_1993->g_17,&p_1993->g_494}},{{&l_1112,&p_1993->g_494,&p_1993->g_17,&p_1993->g_17,&p_1993->g_494},{&l_1112,&p_1993->g_494,&p_1993->g_17,&p_1993->g_17,&p_1993->g_494},{&l_1112,&p_1993->g_494,&p_1993->g_17,&p_1993->g_17,&p_1993->g_494},{&l_1112,&p_1993->g_494,&p_1993->g_17,&p_1993->g_17,&p_1993->g_494},{&l_1112,&p_1993->g_494,&p_1993->g_17,&p_1993->g_17,&p_1993->g_494}},{{&l_1112,&p_1993->g_494,&p_1993->g_17,&p_1993->g_17,&p_1993->g_494},{&l_1112,&p_1993->g_494,&p_1993->g_17,&p_1993->g_17,&p_1993->g_494},{&l_1112,&p_1993->g_494,&p_1993->g_17,&p_1993->g_17,&p_1993->g_494},{&l_1112,&p_1993->g_494,&p_1993->g_17,&p_1993->g_17,&p_1993->g_494},{&l_1112,&p_1993->g_494,&p_1993->g_17,&p_1993->g_17,&p_1993->g_494}},{{&l_1112,&p_1993->g_494,&p_1993->g_17,&p_1993->g_17,&p_1993->g_494},{&l_1112,&p_1993->g_494,&p_1993->g_17,&p_1993->g_17,&p_1993->g_494},{&l_1112,&p_1993->g_494,&p_1993->g_17,&p_1993->g_17,&p_1993->g_494},{&l_1112,&p_1993->g_494,&p_1993->g_17,&p_1993->g_17,&p_1993->g_494},{&l_1112,&p_1993->g_494,&p_1993->g_17,&p_1993->g_17,&p_1993->g_494}},{{&l_1112,&p_1993->g_494,&p_1993->g_17,&p_1993->g_17,&p_1993->g_494},{&l_1112,&p_1993->g_494,&p_1993->g_17,&p_1993->g_17,&p_1993->g_494},{&l_1112,&p_1993->g_494,&p_1993->g_17,&p_1993->g_17,&p_1993->g_494},{&l_1112,&p_1993->g_494,&p_1993->g_17,&p_1993->g_17,&p_1993->g_494},{&l_1112,&p_1993->g_494,&p_1993->g_17,&p_1993->g_17,&p_1993->g_494}},{{&l_1112,&p_1993->g_494,&p_1993->g_17,&p_1993->g_17,&p_1993->g_494},{&l_1112,&p_1993->g_494,&p_1993->g_17,&p_1993->g_17,&p_1993->g_494},{&l_1112,&p_1993->g_494,&p_1993->g_17,&p_1993->g_17,&p_1993->g_494},{&l_1112,&p_1993->g_494,&p_1993->g_17,&p_1993->g_17,&p_1993->g_494},{&l_1112,&p_1993->g_494,&p_1993->g_17,&p_1993->g_17,&p_1993->g_494}}};
                int i, j, k;
                l_1105 = ((void*)0 == p_38);
                if (p_1993->g_19[p_1993->g_513][(p_1993->g_513 + 1)])
                    continue;
                l_1111[7] |= ((0x30F6L >= 65535UL) <= (p_1993->g_494 ^= (safe_add_func_uint64_t_u_u(p_1993->g_19[3][1], ((l_1110 = ((safe_div_func_int32_t_s_s((GROUP_DIVERGE(2, 1) < ((safe_mod_func_int16_t_s_s((safe_lshift_func_uint16_t_u_s(0UL, ((l_1223 != (void*)0) && (((0x75596518L & (((safe_div_func_uint16_t_u_u((*p_1993->g_465), p_1993->g_19[p_1993->g_513][(p_1993->g_513 + 1)])) | (-4L)) ^ p_1993->g_164)) , l_1168) == (void*)0)))), 0xD10AL)) >= (**p_1993->g_464))), l_1110)) >= 0x6D29L)) , p_1993->g_619)))));
                if (l_1112)
                    goto lbl_1203;
                for (p_1993->g_109 = 0; (p_1993->g_109 <= 1); p_1993->g_109 += 1)
                { /* block id: 566 */
                    struct S0 **l_1228[6][1] = {{&p_1993->g_981},{&p_1993->g_981},{&p_1993->g_981},{&p_1993->g_981},{&p_1993->g_981},{&p_1993->g_981}};
                    int i, j;
                    l_1229 = l_1140;
                }
            }
            (*l_1077) = func_40(((*l_1230) = (l_1188[0][3] , 0x2EL)), (safe_mod_func_uint64_t_u_u(l_1112, p_1993->g_838)), l_1233[3], p_38, p_1993);
        }
        else
        { /* block id: 572 */
            int16_t l_1234 = 0x758CL;
            if (p_1993->g_106)
                goto lbl_1203;
            l_1234 &= 0x6837410BL;
        }
        if (((((safe_sub_func_int64_t_s_s((safe_lshift_func_uint16_t_u_u((safe_mul_func_uint8_t_u_u((((*l_1241) = &p_1993->g_615) == &p_1993->g_422), (p_1993->g_164 = (FAKE_DIVERGE(p_1993->group_1_offset, get_group_id(1), 10) , ((*l_1246) |= (safe_unary_minus_func_uint32_t_u((~((*p_1993->g_578) = (safe_mul_func_int16_t_s_s(l_1105, (**p_1993->g_464)))))))))))), ((*l_1251) ^= ((p_1993->g_615 && p_1993->g_1177) == (safe_add_func_uint32_t_u_u(0x3DFB6944L, l_1250)))))), ((1UL | 0x797E878BL) , l_1112))) | p_1993->g_89) != 0x4E85F939L) != p_1993->g_393))
        { /* block id: 581 */
            int64_t l_1252 = (-1L);
            int32_t *l_1253 = &l_1105;
            int32_t *l_1254 = &l_1107;
            int32_t *l_1255 = &p_1993->g_23;
            int32_t *l_1256 = &p_1993->g_23;
            int32_t *l_1257 = (void*)0;
            int32_t *l_1258 = &l_1108[1];
            int32_t *l_1259[5] = {&l_1097,&l_1097,&l_1097,&l_1097,&l_1097};
            int i;
            p_1993->g_1260--;
        }
        else
        { /* block id: 583 */
            int32_t l_1263 = 5L;
            int64_t **l_1274 = &l_1242;
            int32_t l_1321 = 0x763041B6L;
            struct S0 *l_1329 = &p_1993->g_64;
            int32_t l_1364 = (-1L);
            uint16_t l_1369 = 0x8905L;
            if (l_1263)
                break;
            for (p_1993->g_23 = (-13); (p_1993->g_23 <= (-28)); --p_1993->g_23)
            { /* block id: 587 */
                (*l_1075) = (*l_1077);
            }
            if (((safe_div_func_uint16_t_u_u((safe_sub_func_uint64_t_u_u((((!(safe_rshift_func_uint16_t_u_s(((p_1993->g_1272 != (p_1993->g_1275 = l_1274)) != l_1263), (**p_1993->g_763)))) <= ((l_1263 , p_1993->g_396) & ((safe_mod_func_int8_t_s_s((safe_sub_func_int64_t_s_s((+(*p_1993->g_1276)), (*p_1993->g_1276))), ((1L <= (*p_1993->g_818)) && p_1993->g_393))) > 0x36L))) > 0L), (*p_1993->g_1276))), 0x7C3EL)) , l_1263))
            { /* block id: 591 */
                int32_t l_1285 = 0x1A11A3A3L;
                int32_t l_1300 = (-1L);
                int16_t l_1308 = 0x4DA4L;
                int32_t l_1331 = 1L;
                int32_t *l_1337 = &p_1993->g_1325[0];
                for (p_1993->g_103 = 0; (p_1993->g_103 != (-5)); p_1993->g_103--)
                { /* block id: 594 */
                    int32_t l_1313 = 8L;
                    uint64_t l_1332 = 0xFD1CC8849A394415L;
                    struct S0 *l_1335 = &l_1063;
                    if ((0x07L <= ((((*p_1993->g_465) = (((*l_1246) |= ((safe_rshift_func_int16_t_s_u(0x1FC4L, (l_1285 > (((**l_1274) = (**p_1993->g_1275)) , (safe_mul_func_int8_t_s_s(((safe_mod_func_uint16_t_u_u(((l_1300 = (safe_sub_func_uint16_t_u_u(0UL, ((((*p_1993->g_578) = ((--(*l_1251)) >= ((*p_1993->g_1276) <= (+(safe_mod_func_int64_t_s_s((safe_mul_func_int16_t_s_s((((&l_1242 != (void*)0) && ((((0xE6L >= (*p_1993->g_818)) <= GROUP_DIVERGE(2, 1)) , l_1263) <= 0UL)) == 1L), (*p_1993->g_465))), 0xFA2201C2C6B3B2F3L)))))) >= (*p_1993->g_540)) >= 0x21982B50L)))) , 8UL), GROUP_DIVERGE(0, 1))) & 0x31L), l_1285)))))) & (*p_1993->g_465))) ^ 255UL)) , l_1301) == (*p_1993->g_1275))))
                    { /* block id: 601 */
                        uint64_t *l_1314 = &p_1993->g_494;
                        int32_t l_1315 = 0L;
                        uint64_t *l_1318[4] = {&p_1993->g_327,&p_1993->g_327,&p_1993->g_327,&p_1993->g_327};
                        int32_t l_1319 = 0x5478B9A4L;
                        int32_t *l_1322 = &l_1321;
                        int32_t *l_1323 = &l_1108[1];
                        int32_t *l_1324[7][9] = {{&l_1106,&l_1105,&l_1104[3][2][0],&l_1319,&l_1104[3][2][0],&l_1105,&l_1106,&l_1106,&l_1315},{&l_1106,&l_1105,&l_1104[3][2][0],&l_1319,&l_1104[3][2][0],&l_1105,&l_1106,&l_1106,&l_1315},{&l_1106,&l_1105,&l_1104[3][2][0],&l_1319,&l_1104[3][2][0],&l_1105,&l_1106,&l_1106,&l_1315},{&l_1106,&l_1105,&l_1104[3][2][0],&l_1319,&l_1104[3][2][0],&l_1105,&l_1106,&l_1106,&l_1315},{&l_1106,&l_1105,&l_1104[3][2][0],&l_1319,&l_1104[3][2][0],&l_1105,&l_1106,&l_1106,&l_1315},{&l_1106,&l_1105,&l_1104[3][2][0],&l_1319,&l_1104[3][2][0],&l_1105,&l_1106,&l_1106,&l_1315},{&l_1106,&l_1105,&l_1104[3][2][0],&l_1319,&l_1104[3][2][0],&l_1105,&l_1106,&l_1106,&l_1315}};
                        int i, j;
                        (*l_1229) = func_51((safe_mul_func_uint16_t_u_u(((~((l_1319 ^= (safe_rshift_func_uint8_t_u_u((safe_lshift_func_uint8_t_u_u(((!l_1308) && (safe_mul_func_uint16_t_u_u((~(p_1993->g_615 , (0x75E5483EL && (safe_sub_func_uint64_t_u_u(((*l_1314) = l_1313), ((1L & (l_1315 != (safe_div_func_uint64_t_u_u(p_1993->g_1177, ((*p_1993->g_1276) &= (**p_1993->g_1272)))))) || (l_1285 , l_1313))))))), (*p_1993->g_465)))), 7)), (*p_1993->g_818)))) <= 0x6F2099BD9B859121L)) <= l_1320), 0L)), p_1993);
                        p_1993->g_1326--;
                        return l_1329;
                    }
                    else
                    { /* block id: 608 */
                        int32_t *l_1330[4] = {&l_1313,&l_1313,&l_1313,&l_1313};
                        int i;
                        ++l_1332;
                        return &p_1993->g_64;
                    }
                }
                l_1104[3][1][0] = (l_1105 &= 0x705463A8L);
                (*l_1337) = 7L;
            }
            else
            { /* block id: 616 */
                uint32_t l_1341[5][9][4] = {{{4294967295UL,5UL,1UL,0UL},{4294967295UL,5UL,1UL,0UL},{4294967295UL,5UL,1UL,0UL},{4294967295UL,5UL,1UL,0UL},{4294967295UL,5UL,1UL,0UL},{4294967295UL,5UL,1UL,0UL},{4294967295UL,5UL,1UL,0UL},{4294967295UL,5UL,1UL,0UL},{4294967295UL,5UL,1UL,0UL}},{{4294967295UL,5UL,1UL,0UL},{4294967295UL,5UL,1UL,0UL},{4294967295UL,5UL,1UL,0UL},{4294967295UL,5UL,1UL,0UL},{4294967295UL,5UL,1UL,0UL},{4294967295UL,5UL,1UL,0UL},{4294967295UL,5UL,1UL,0UL},{4294967295UL,5UL,1UL,0UL},{4294967295UL,5UL,1UL,0UL}},{{4294967295UL,5UL,1UL,0UL},{4294967295UL,5UL,1UL,0UL},{4294967295UL,5UL,1UL,0UL},{4294967295UL,5UL,1UL,0UL},{4294967295UL,5UL,1UL,0UL},{4294967295UL,5UL,1UL,0UL},{4294967295UL,5UL,1UL,0UL},{4294967295UL,5UL,1UL,0UL},{4294967295UL,5UL,1UL,0UL}},{{4294967295UL,5UL,1UL,0UL},{4294967295UL,5UL,1UL,0UL},{4294967295UL,5UL,1UL,0UL},{4294967295UL,5UL,1UL,0UL},{4294967295UL,5UL,1UL,0UL},{4294967295UL,5UL,1UL,0UL},{4294967295UL,5UL,1UL,0UL},{4294967295UL,5UL,1UL,0UL},{4294967295UL,5UL,1UL,0UL}},{{4294967295UL,5UL,1UL,0UL},{4294967295UL,5UL,1UL,0UL},{4294967295UL,5UL,1UL,0UL},{4294967295UL,5UL,1UL,0UL},{4294967295UL,5UL,1UL,0UL},{4294967295UL,5UL,1UL,0UL},{4294967295UL,5UL,1UL,0UL},{4294967295UL,5UL,1UL,0UL},{4294967295UL,5UL,1UL,0UL}}};
                struct S0 l_1348 = {0xF56F6ECEL};
                int32_t l_1363[7][1] = {{1L},{1L},{1L},{1L},{1L},{1L},{1L}};
                int i, j, k;
                for (p_1993->g_85 = 0; (p_1993->g_85 == 3); ++p_1993->g_85)
                { /* block id: 619 */
                    int16_t l_1340 = 0x179AL;
                    int32_t *l_1367 = (void*)0;
                    int32_t *l_1368 = &l_1108[1];
                    l_1341[2][5][0] = l_1340;
                    if (l_1263)
                        break;
                    (*l_1368) |= (safe_add_func_int32_t_s_s(0x593A1127L, ((safe_mod_func_uint64_t_u_u(p_1993->g_174[6], (safe_lshift_func_int16_t_s_u((l_1348 , p_1993->g_1325[5]), (((((*l_1246) = (((l_1104[0][3][0] ^ ((safe_mod_func_int64_t_s_s((((+l_1321) & (((*p_1993->g_1276) = (((((((safe_lshift_func_uint16_t_u_s(0x5507L, (safe_lshift_func_uint16_t_u_s(((*p_1993->g_465) |= (safe_mul_func_uint16_t_u_u((--(*l_1251)), (safe_div_func_int8_t_s_s((((((+(l_1364 ^= (0x27BAE973L >= (l_1363[5][0] = l_1348.f0)))) || p_1993->g_1365) , 0x60L) ^ p_1993->g_1062) & p_1993->g_89), FAKE_DIVERGE(p_1993->global_2_offset, get_global_id(2), 10)))))), 0)))) ^ p_1993->g_1366[3][1]) != l_1321) , 255UL) , l_1340) <= (*p_1993->g_818)) , l_1341[2][5][0])) != l_1340)) != 0x6DD5D60F9B7536E7L), 0x17EDB7D11A1ADC20L)) == 0x78F5B0DAL)) < 0x1145L) ^ p_1993->g_1325[1])) > (*p_1993->g_818)) & 0xF9L) , (*p_1993->g_465)))))) , l_1348.f0)));
                }
                if (l_1369)
                    continue;
                return l_1329;
            }
            if (l_1364)
                break;
        }
        for (l_1105 = 0; l_1105 < 5; l_1105 += 1)
        {
            for (p_1993->g_23 = 0; p_1993->g_23 < 9; p_1993->g_23 += 1)
            {
                for (p_1993->g_308 = 0; p_1993->g_308 < 5; p_1993->g_308 += 1)
                {
                    p_1993->g_1214[l_1105][p_1993->g_23][p_1993->g_308] = (void*)0;
                }
            }
        }
    }
    return &p_1993->g_64;
}


/* ------------------------------------------ */
/* 
 * reads : p_1993->g_164 p_1993->g_72 p_1993->g_71 p_1993->g_106 p_1993->g_764 p_1993->g_765 p_1993->g_133 p_1993->g_818 p_1993->g_136 p_1993->g_396 p_1993->g_103 p_1993->g_578 p_1993->g_64 p_1993->g_465 p_1993->g_109 p_1993->g_513 p_1993->g_268 p_1993->g_19 p_1993->g_1021 p_1993->g_838
 * writes: p_1993->g_164 p_1993->g_72 p_1993->g_1016 p_1993->g_393 p_1993->g_89 p_1993->g_133 p_1993->g_268 p_1993->g_327 p_1993->g_981 p_1993->g_85 p_1993->g_106 p_1993->g_377 p_1993->g_838 p_1993->g_513
 */
uint32_t * func_40(int8_t  p_41, uint64_t  p_42, struct S0 * p_43, uint32_t * p_44, struct S1 * p_1993)
{ /* block id: 424 */
    int64_t l_985[4][4][2] = {{{3L,(-1L)},{3L,(-1L)},{3L,(-1L)},{3L,(-1L)}},{{3L,(-1L)},{3L,(-1L)},{3L,(-1L)},{3L,(-1L)}},{{3L,(-1L)},{3L,(-1L)},{3L,(-1L)},{3L,(-1L)}},{{3L,(-1L)},{3L,(-1L)},{3L,(-1L)},{3L,(-1L)}}};
    uint64_t l_986 = 0xD3430E0F0F871132L;
    struct S0 l_989 = {0x8024F135L};
    int32_t l_1029 = 0x685868C6L;
    int32_t l_1034[1];
    uint8_t l_1037[8] = {254UL,254UL,254UL,254UL,254UL,254UL,254UL,254UL};
    int16_t l_1051 = 0L;
    int8_t l_1057[1];
    uint64_t l_1058 = 0UL;
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_1034[i] = 0x5502EEDCL;
    for (i = 0; i < 1; i++)
        l_1057[i] = (-5L);
    for (p_1993->g_164 = 0; (p_1993->g_164 < (-2)); p_1993->g_164 = safe_sub_func_int64_t_s_s(p_1993->g_164, 1))
    { /* block id: 427 */
        int32_t *l_984[3][7] = {{&p_1993->g_106,(void*)0,&p_1993->g_23,&p_1993->g_23,(void*)0,&p_1993->g_23,&p_1993->g_23},{&p_1993->g_106,(void*)0,&p_1993->g_23,&p_1993->g_23,(void*)0,&p_1993->g_23,&p_1993->g_23},{&p_1993->g_106,(void*)0,&p_1993->g_23,&p_1993->g_23,(void*)0,&p_1993->g_23,&p_1993->g_23}};
        uint64_t l_998 = 0x974B3C40E38BB1BAL;
        int8_t *l_1015[7] = {&p_1993->g_1016,&p_1993->g_164,&p_1993->g_1016,&p_1993->g_1016,&p_1993->g_164,&p_1993->g_1016,&p_1993->g_1016};
        int16_t *l_1017 = &p_1993->g_393;
        uint32_t l_1018[7][5][5] = {{{0x0F87D69AL,0x7228AC96L,4294967289UL,0x7228AC96L,0x0F87D69AL},{0x0F87D69AL,0x7228AC96L,4294967289UL,0x7228AC96L,0x0F87D69AL},{0x0F87D69AL,0x7228AC96L,4294967289UL,0x7228AC96L,0x0F87D69AL},{0x0F87D69AL,0x7228AC96L,4294967289UL,0x7228AC96L,0x0F87D69AL},{0x0F87D69AL,0x7228AC96L,4294967289UL,0x7228AC96L,0x0F87D69AL}},{{0x0F87D69AL,0x7228AC96L,4294967289UL,0x7228AC96L,0x0F87D69AL},{0x0F87D69AL,0x7228AC96L,4294967289UL,0x7228AC96L,0x0F87D69AL},{0x0F87D69AL,0x7228AC96L,4294967289UL,0x7228AC96L,0x0F87D69AL},{0x0F87D69AL,0x7228AC96L,4294967289UL,0x7228AC96L,0x0F87D69AL},{0x0F87D69AL,0x7228AC96L,4294967289UL,0x7228AC96L,0x0F87D69AL}},{{0x0F87D69AL,0x7228AC96L,4294967289UL,0x7228AC96L,0x0F87D69AL},{0x0F87D69AL,0x7228AC96L,4294967289UL,0x7228AC96L,0x0F87D69AL},{0x0F87D69AL,0x7228AC96L,4294967289UL,0x7228AC96L,0x0F87D69AL},{0x0F87D69AL,0x7228AC96L,4294967289UL,0x7228AC96L,0x0F87D69AL},{0x0F87D69AL,0x7228AC96L,4294967289UL,0x7228AC96L,0x0F87D69AL}},{{0x0F87D69AL,0x7228AC96L,4294967289UL,0x7228AC96L,0x0F87D69AL},{0x0F87D69AL,0x7228AC96L,4294967289UL,0x7228AC96L,0x0F87D69AL},{0x0F87D69AL,0x7228AC96L,4294967289UL,0x7228AC96L,0x0F87D69AL},{0x0F87D69AL,0x7228AC96L,4294967289UL,0x7228AC96L,0x0F87D69AL},{0x0F87D69AL,0x7228AC96L,4294967289UL,0x7228AC96L,0x0F87D69AL}},{{0x0F87D69AL,0x7228AC96L,4294967289UL,0x7228AC96L,0x0F87D69AL},{0x0F87D69AL,0x7228AC96L,4294967289UL,0x7228AC96L,0x0F87D69AL},{0x0F87D69AL,0x7228AC96L,4294967289UL,0x7228AC96L,0x0F87D69AL},{0x0F87D69AL,0x7228AC96L,4294967289UL,0x7228AC96L,0x0F87D69AL},{0x0F87D69AL,0x7228AC96L,4294967289UL,0x7228AC96L,0x0F87D69AL}},{{0x0F87D69AL,0x7228AC96L,4294967289UL,0x7228AC96L,0x0F87D69AL},{0x0F87D69AL,0x7228AC96L,4294967289UL,0x7228AC96L,0x0F87D69AL},{0x0F87D69AL,0x7228AC96L,4294967289UL,0x7228AC96L,0x0F87D69AL},{0x0F87D69AL,0x7228AC96L,4294967289UL,0x7228AC96L,0x0F87D69AL},{0x0F87D69AL,0x7228AC96L,4294967289UL,0x7228AC96L,0x0F87D69AL}},{{0x0F87D69AL,0x7228AC96L,4294967289UL,0x7228AC96L,0x0F87D69AL},{0x0F87D69AL,0x7228AC96L,4294967289UL,0x7228AC96L,0x0F87D69AL},{0x0F87D69AL,0x7228AC96L,4294967289UL,0x7228AC96L,0x0F87D69AL},{0x0F87D69AL,0x7228AC96L,4294967289UL,0x7228AC96L,0x0F87D69AL},{0x0F87D69AL,0x7228AC96L,4294967289UL,0x7228AC96L,0x0F87D69AL}}};
        struct S0 *l_1020[8] = {&l_989,&l_989,&l_989,&l_989,&l_989,&l_989,&l_989,&l_989};
        uint8_t l_1054 = 0x6CL;
        int i, j, k;
        l_986++;
        l_989 = func_51(l_985[2][2][0], p_1993);
        if (p_41)
            break;
        if ((safe_mod_func_int64_t_s_s((((safe_mul_func_uint16_t_u_u(((l_989 = ((p_41 ^ ((safe_div_func_uint16_t_u_u((p_41 < p_41), ((safe_lshift_func_int16_t_s_u(p_41, l_998)) , FAKE_DIVERGE(p_1993->global_0_offset, get_global_id(0), 10)))) , (((safe_div_func_uint32_t_u_u(((*p_1993->g_578) = (p_41 < (((+((*p_1993->g_72) , (safe_rshift_func_int16_t_s_s((*p_1993->g_764), (p_1993->g_89 = (safe_lshift_func_uint8_t_u_s(((((safe_div_func_int16_t_s_s(((*l_1017) = ((safe_sub_func_uint16_t_u_u((safe_rshift_func_uint16_t_u_s(((p_1993->g_1016 = (((~(safe_sub_func_int16_t_s_s((safe_rshift_func_uint16_t_u_s(p_42, l_985[1][2][0])), 0UL))) , 18446744073709551612UL) , p_1993->g_133)) ^ (*p_1993->g_818)), p_1993->g_106)), p_42)) != p_1993->g_396)), p_1993->g_103)) & 0x484728B2L) > l_989.f0) , (*p_1993->g_818)), 3))))))) ^ l_986) < (*p_1993->g_72)))), 0x138FE7B9L)) , p_41) == GROUP_DIVERGE(1, 1)))) , p_1993->g_64)) , l_1018[0][3][3]), (*p_1993->g_465))) , p_42) | p_42), p_1993->g_513)))
        { /* block id: 436 */
            if (p_42)
                break;
            if (l_985[3][1][0])
                continue;
        }
        else
        { /* block id: 439 */
            uint32_t *l_1019 = &p_1993->g_513;
            int32_t *l_1028 = &p_1993->g_23;
            int32_t l_1033[1][4][6] = {{{2L,2L,2L,2L,2L,2L},{2L,2L,2L,2L,2L,2L},{2L,2L,2L,2L,2L,2L},{2L,2L,2L,2L,2L,2L}}};
            int i, j, k;
            for (p_1993->g_133 = 0; (p_1993->g_133 <= 0); p_1993->g_133 += 1)
            { /* block id: 442 */
                uint8_t l_1023 = 0x31L;
                int32_t l_1035 = 0x456FC9D0L;
                int32_t l_1052 = 0x7EEB14DAL;
                int32_t l_1053 = 0x0A3F4C02L;
                for (p_1993->g_268 = 0; (p_1993->g_268 >= 0); p_1993->g_268 -= 1)
                { /* block id: 445 */
                    int i, j;
                    if (p_1993->g_19[(p_1993->g_268 + 3)][p_1993->g_268])
                        break;
                    for (p_1993->g_327 = 0; (p_1993->g_327 <= 0); p_1993->g_327 += 1)
                    { /* block id: 449 */
                        return l_1019;
                    }
                    (*p_1993->g_1021) = l_1020[4];
                }
                for (p_1993->g_85 = 0; (p_1993->g_85 <= 0); p_1993->g_85 += 1)
                { /* block id: 456 */
                    int64_t l_1022[9];
                    int32_t l_1030 = 0L;
                    int32_t l_1031 = 0x460ECE78L;
                    struct S0 l_1042 = {0xB57B8ACAL};
                    uint32_t ***l_1049[3][7] = {{&p_1993->g_577[4],(void*)0,&p_1993->g_577[4],&p_1993->g_577[4],(void*)0,&p_1993->g_577[4],&p_1993->g_577[4]},{&p_1993->g_577[4],(void*)0,&p_1993->g_577[4],&p_1993->g_577[4],(void*)0,&p_1993->g_577[4],&p_1993->g_577[4]},{&p_1993->g_577[4],(void*)0,&p_1993->g_577[4],&p_1993->g_577[4],(void*)0,&p_1993->g_577[4],&p_1993->g_577[4]}};
                    int32_t l_1050 = 0x72D66642L;
                    int i, j;
                    for (i = 0; i < 9; i++)
                        l_1022[i] = 5L;
                    for (p_1993->g_106 = 0; (p_1993->g_106 <= 0); p_1993->g_106 += 1)
                    { /* block id: 459 */
                        int64_t l_1032 = 0x5326C8F158D41948L;
                        int32_t l_1036[1];
                        int i;
                        for (i = 0; i < 1; i++)
                            l_1036[i] = 0L;
                        --l_1023;
                        l_1028 = ((0xFA91L ^ ((safe_div_func_int64_t_s_s(p_1993->g_268, p_41)) , 0x7F9FL)) , (void*)0);
                        --l_1037[2];
                    }
                    (*p_1993->g_72) |= (0L != (safe_sub_func_int32_t_s_s(((((l_1042 , ((safe_add_func_int8_t_s_s((~((l_1035 | (safe_sub_func_int32_t_s_s(((safe_add_func_int16_t_s_s(((+(GROUP_DIVERGE(0, 1) ^ l_1034[0])) & p_41), (&p_1993->g_577[1] == l_1049[0][6]))) > (p_1993->g_377[4][6] = 7L)), FAKE_DIVERGE(p_1993->global_2_offset, get_global_id(2), 10)))) || (l_1050 , l_1051))), p_42)) || (-10L))) <= 0x05A2L) & p_42) & p_42), 0x41DB17FBL)));
                    for (p_1993->g_838 = 0; (p_1993->g_838 <= 0); p_1993->g_838 += 1)
                    { /* block id: 468 */
                        return p_44;
                    }
                }
                l_1029 |= 0x3A4A864CL;
                for (p_1993->g_513 = 0; (p_1993->g_513 <= 0); p_1993->g_513 += 1)
                { /* block id: 475 */
                    l_1034[0] &= l_1037[4];
                    ++l_1054;
                }
            }
        }
    }
    ++l_1058;
    return p_44;
}


/* ------------------------------------------ */
/* 
 * reads : p_1993->g_25 p_1993->g_106 p_1993->g_577 p_1993->g_19 p_1993->g_174 p_1993->g_513 p_1993->g_377 p_1993->g_127 p_1993->g_23 p_1993->g_71 p_1993->g_72 p_1993->g_619 p_1993->g_763 p_1993->g_764 p_1993->g_765 p_1993->g_164 p_1993->g_268 p_1993->g_327 p_1993->g_818 p_1993->g_430 p_1993->g_465 p_1993->g_109 p_1993->g_578 p_1993->g_539 p_1993->g_540 p_1993->g_846 p_1993->g_136 p_1993->g_464 p_1993->g_64 p_1993->g_422 p_1993->g_133 p_1993->g_494 p_1993->g_85 p_1993->g_907 p_1993->g_754 p_1993->g_615 p_1993->g_30
 * writes: p_1993->g_25 p_1993->g_106 p_1993->g_164 p_1993->g_23 p_1993->g_72 p_1993->g_619 p_1993->g_19 p_1993->g_838 p_1993->g_133 p_1993->g_103 p_1993->g_89 p_1993->g_136 p_1993->g_494 p_1993->g_127 p_1993->g_907 p_1993->g_327 p_1993->g_754 p_1993->g_969 p_1993->g_377 p_1993->g_85
 */
int8_t  func_45(uint32_t  p_46, int8_t  p_47, int8_t  p_48, uint16_t  p_49, uint64_t  p_50, struct S1 * p_1993)
{ /* block id: 269 */
    int32_t l_589 = 0x5F9185A9L;
    uint32_t ***l_623 = &p_1993->g_577[3];
    uint64_t l_640 = 4UL;
    struct S0 l_684 = {4294967291UL};
    int16_t l_693 = 0x5532L;
    int32_t l_703 = 0x74566E65L;
    int32_t l_730 = 1L;
    int32_t l_732 = 0x50D53B58L;
    int32_t l_734 = 0x3C124AAAL;
    int32_t l_738 = 3L;
    int32_t l_740 = 0L;
    int32_t l_741 = 0x24402971L;
    int32_t l_742 = 1L;
    int32_t l_744 = 0L;
    int32_t l_745 = 9L;
    int32_t l_746 = 0L;
    int32_t l_747 = 1L;
    int32_t l_748[6];
    int32_t l_749 = 0x29894835L;
    uint32_t l_902 = 5UL;
    int32_t ***l_916 = &p_1993->g_846;
    uint16_t l_929 = 0xE3B7L;
    int32_t *l_975 = (void*)0;
    int i;
    for (i = 0; i < 6; i++)
        l_748[i] = 0x44D452E2L;
    for (p_46 = 0; (p_46 >= 40); p_46 = safe_add_func_uint8_t_u_u(p_46, 5))
    { /* block id: 272 */
        int8_t *l_569 = &p_1993->g_164;
        struct S0 *l_587 = &p_1993->g_64;
        int32_t l_620 = 0x165A7372L;
        uint32_t ***l_624 = (void*)0;
        uint32_t l_669 = 0x25F002D8L;
        int16_t *l_677 = &p_1993->g_89;
        int32_t l_695 = 1L;
        int32_t l_696 = 0x0FAA3147L;
        int32_t l_697 = 1L;
        int32_t l_698 = 0x5414EFDAL;
        int32_t ****l_716[1];
        int32_t l_781[4];
        int32_t **l_849 = &p_1993->g_847;
        int i;
        for (i = 0; i < 1; i++)
            l_716[i] = &p_1993->g_612;
        for (i = 0; i < 4; i++)
            l_781[i] = 0x2F2090AFL;
        if (p_47)
            break;
        for (p_1993->g_25 = (-24); (p_1993->g_25 < (-13)); p_1993->g_25 = safe_add_func_uint8_t_u_u(p_1993->g_25, 1))
        { /* block id: 276 */
            uint32_t **l_580[8][5] = {{&p_1993->g_578,&p_1993->g_578,(void*)0,&p_1993->g_578,&p_1993->g_578},{&p_1993->g_578,&p_1993->g_578,(void*)0,&p_1993->g_578,&p_1993->g_578},{&p_1993->g_578,&p_1993->g_578,(void*)0,&p_1993->g_578,&p_1993->g_578},{&p_1993->g_578,&p_1993->g_578,(void*)0,&p_1993->g_578,&p_1993->g_578},{&p_1993->g_578,&p_1993->g_578,(void*)0,&p_1993->g_578,&p_1993->g_578},{&p_1993->g_578,&p_1993->g_578,(void*)0,&p_1993->g_578,&p_1993->g_578},{&p_1993->g_578,&p_1993->g_578,(void*)0,&p_1993->g_578,&p_1993->g_578},{&p_1993->g_578,&p_1993->g_578,(void*)0,&p_1993->g_578,&p_1993->g_578}};
            int32_t l_588 = 2L;
            int32_t l_616 = 0x6488FE14L;
            int16_t l_625[4][9][7] = {{{6L,0x2BE2L,5L,0x407DL,0x0FF4L,0x00BCL,(-1L)},{6L,0x2BE2L,5L,0x407DL,0x0FF4L,0x00BCL,(-1L)},{6L,0x2BE2L,5L,0x407DL,0x0FF4L,0x00BCL,(-1L)},{6L,0x2BE2L,5L,0x407DL,0x0FF4L,0x00BCL,(-1L)},{6L,0x2BE2L,5L,0x407DL,0x0FF4L,0x00BCL,(-1L)},{6L,0x2BE2L,5L,0x407DL,0x0FF4L,0x00BCL,(-1L)},{6L,0x2BE2L,5L,0x407DL,0x0FF4L,0x00BCL,(-1L)},{6L,0x2BE2L,5L,0x407DL,0x0FF4L,0x00BCL,(-1L)},{6L,0x2BE2L,5L,0x407DL,0x0FF4L,0x00BCL,(-1L)}},{{6L,0x2BE2L,5L,0x407DL,0x0FF4L,0x00BCL,(-1L)},{6L,0x2BE2L,5L,0x407DL,0x0FF4L,0x00BCL,(-1L)},{6L,0x2BE2L,5L,0x407DL,0x0FF4L,0x00BCL,(-1L)},{6L,0x2BE2L,5L,0x407DL,0x0FF4L,0x00BCL,(-1L)},{6L,0x2BE2L,5L,0x407DL,0x0FF4L,0x00BCL,(-1L)},{6L,0x2BE2L,5L,0x407DL,0x0FF4L,0x00BCL,(-1L)},{6L,0x2BE2L,5L,0x407DL,0x0FF4L,0x00BCL,(-1L)},{6L,0x2BE2L,5L,0x407DL,0x0FF4L,0x00BCL,(-1L)},{6L,0x2BE2L,5L,0x407DL,0x0FF4L,0x00BCL,(-1L)}},{{6L,0x2BE2L,5L,0x407DL,0x0FF4L,0x00BCL,(-1L)},{6L,0x2BE2L,5L,0x407DL,0x0FF4L,0x00BCL,(-1L)},{6L,0x2BE2L,5L,0x407DL,0x0FF4L,0x00BCL,(-1L)},{6L,0x2BE2L,5L,0x407DL,0x0FF4L,0x00BCL,(-1L)},{6L,0x2BE2L,5L,0x407DL,0x0FF4L,0x00BCL,(-1L)},{6L,0x2BE2L,5L,0x407DL,0x0FF4L,0x00BCL,(-1L)},{6L,0x2BE2L,5L,0x407DL,0x0FF4L,0x00BCL,(-1L)},{6L,0x2BE2L,5L,0x407DL,0x0FF4L,0x00BCL,(-1L)},{6L,0x2BE2L,5L,0x407DL,0x0FF4L,0x00BCL,(-1L)}},{{6L,0x2BE2L,5L,0x407DL,0x0FF4L,0x00BCL,(-1L)},{6L,0x2BE2L,5L,0x407DL,0x0FF4L,0x00BCL,(-1L)},{6L,0x2BE2L,5L,0x407DL,0x0FF4L,0x00BCL,(-1L)},{6L,0x2BE2L,5L,0x407DL,0x0FF4L,0x00BCL,(-1L)},{6L,0x2BE2L,5L,0x407DL,0x0FF4L,0x00BCL,(-1L)},{6L,0x2BE2L,5L,0x407DL,0x0FF4L,0x00BCL,(-1L)},{6L,0x2BE2L,5L,0x407DL,0x0FF4L,0x00BCL,(-1L)},{6L,0x2BE2L,5L,0x407DL,0x0FF4L,0x00BCL,(-1L)},{6L,0x2BE2L,5L,0x407DL,0x0FF4L,0x00BCL,(-1L)}}};
            int32_t *l_702 = &l_696;
            uint32_t l_713[2];
            uint32_t l_724[3];
            int32_t l_731 = 0x239EB888L;
            int32_t l_735 = 0x59F9ACCFL;
            int32_t l_736 = 0x5C219C44L;
            int32_t l_737 = 0L;
            int32_t l_739[10] = {0x775F36B3L,0x775F36B3L,0x775F36B3L,0x775F36B3L,0x775F36B3L,0x775F36B3L,0x775F36B3L,0x775F36B3L,0x775F36B3L,0x775F36B3L};
            uint32_t l_750 = 5UL;
            uint8_t *l_832 = &p_1993->g_136;
            int64_t l_881 = 0x669C64EDF85A1EDEL;
            int i, j, k;
            for (i = 0; i < 2; i++)
                l_713[i] = 0xF5718736L;
            for (i = 0; i < 3; i++)
                l_724[i] = 0xDDF8DA20L;
            for (p_1993->g_106 = 0; (p_1993->g_106 <= 1); p_1993->g_106 += 1)
            { /* block id: 279 */
                int32_t *l_576 = &p_1993->g_25;
                uint32_t ***l_579[8][9][3] = {{{&p_1993->g_577[1],&p_1993->g_577[4],&p_1993->g_577[4]},{&p_1993->g_577[1],&p_1993->g_577[4],&p_1993->g_577[4]},{&p_1993->g_577[1],&p_1993->g_577[4],&p_1993->g_577[4]},{&p_1993->g_577[1],&p_1993->g_577[4],&p_1993->g_577[4]},{&p_1993->g_577[1],&p_1993->g_577[4],&p_1993->g_577[4]},{&p_1993->g_577[1],&p_1993->g_577[4],&p_1993->g_577[4]},{&p_1993->g_577[1],&p_1993->g_577[4],&p_1993->g_577[4]},{&p_1993->g_577[1],&p_1993->g_577[4],&p_1993->g_577[4]},{&p_1993->g_577[1],&p_1993->g_577[4],&p_1993->g_577[4]}},{{&p_1993->g_577[1],&p_1993->g_577[4],&p_1993->g_577[4]},{&p_1993->g_577[1],&p_1993->g_577[4],&p_1993->g_577[4]},{&p_1993->g_577[1],&p_1993->g_577[4],&p_1993->g_577[4]},{&p_1993->g_577[1],&p_1993->g_577[4],&p_1993->g_577[4]},{&p_1993->g_577[1],&p_1993->g_577[4],&p_1993->g_577[4]},{&p_1993->g_577[1],&p_1993->g_577[4],&p_1993->g_577[4]},{&p_1993->g_577[1],&p_1993->g_577[4],&p_1993->g_577[4]},{&p_1993->g_577[1],&p_1993->g_577[4],&p_1993->g_577[4]},{&p_1993->g_577[1],&p_1993->g_577[4],&p_1993->g_577[4]}},{{&p_1993->g_577[1],&p_1993->g_577[4],&p_1993->g_577[4]},{&p_1993->g_577[1],&p_1993->g_577[4],&p_1993->g_577[4]},{&p_1993->g_577[1],&p_1993->g_577[4],&p_1993->g_577[4]},{&p_1993->g_577[1],&p_1993->g_577[4],&p_1993->g_577[4]},{&p_1993->g_577[1],&p_1993->g_577[4],&p_1993->g_577[4]},{&p_1993->g_577[1],&p_1993->g_577[4],&p_1993->g_577[4]},{&p_1993->g_577[1],&p_1993->g_577[4],&p_1993->g_577[4]},{&p_1993->g_577[1],&p_1993->g_577[4],&p_1993->g_577[4]},{&p_1993->g_577[1],&p_1993->g_577[4],&p_1993->g_577[4]}},{{&p_1993->g_577[1],&p_1993->g_577[4],&p_1993->g_577[4]},{&p_1993->g_577[1],&p_1993->g_577[4],&p_1993->g_577[4]},{&p_1993->g_577[1],&p_1993->g_577[4],&p_1993->g_577[4]},{&p_1993->g_577[1],&p_1993->g_577[4],&p_1993->g_577[4]},{&p_1993->g_577[1],&p_1993->g_577[4],&p_1993->g_577[4]},{&p_1993->g_577[1],&p_1993->g_577[4],&p_1993->g_577[4]},{&p_1993->g_577[1],&p_1993->g_577[4],&p_1993->g_577[4]},{&p_1993->g_577[1],&p_1993->g_577[4],&p_1993->g_577[4]},{&p_1993->g_577[1],&p_1993->g_577[4],&p_1993->g_577[4]}},{{&p_1993->g_577[1],&p_1993->g_577[4],&p_1993->g_577[4]},{&p_1993->g_577[1],&p_1993->g_577[4],&p_1993->g_577[4]},{&p_1993->g_577[1],&p_1993->g_577[4],&p_1993->g_577[4]},{&p_1993->g_577[1],&p_1993->g_577[4],&p_1993->g_577[4]},{&p_1993->g_577[1],&p_1993->g_577[4],&p_1993->g_577[4]},{&p_1993->g_577[1],&p_1993->g_577[4],&p_1993->g_577[4]},{&p_1993->g_577[1],&p_1993->g_577[4],&p_1993->g_577[4]},{&p_1993->g_577[1],&p_1993->g_577[4],&p_1993->g_577[4]},{&p_1993->g_577[1],&p_1993->g_577[4],&p_1993->g_577[4]}},{{&p_1993->g_577[1],&p_1993->g_577[4],&p_1993->g_577[4]},{&p_1993->g_577[1],&p_1993->g_577[4],&p_1993->g_577[4]},{&p_1993->g_577[1],&p_1993->g_577[4],&p_1993->g_577[4]},{&p_1993->g_577[1],&p_1993->g_577[4],&p_1993->g_577[4]},{&p_1993->g_577[1],&p_1993->g_577[4],&p_1993->g_577[4]},{&p_1993->g_577[1],&p_1993->g_577[4],&p_1993->g_577[4]},{&p_1993->g_577[1],&p_1993->g_577[4],&p_1993->g_577[4]},{&p_1993->g_577[1],&p_1993->g_577[4],&p_1993->g_577[4]},{&p_1993->g_577[1],&p_1993->g_577[4],&p_1993->g_577[4]}},{{&p_1993->g_577[1],&p_1993->g_577[4],&p_1993->g_577[4]},{&p_1993->g_577[1],&p_1993->g_577[4],&p_1993->g_577[4]},{&p_1993->g_577[1],&p_1993->g_577[4],&p_1993->g_577[4]},{&p_1993->g_577[1],&p_1993->g_577[4],&p_1993->g_577[4]},{&p_1993->g_577[1],&p_1993->g_577[4],&p_1993->g_577[4]},{&p_1993->g_577[1],&p_1993->g_577[4],&p_1993->g_577[4]},{&p_1993->g_577[1],&p_1993->g_577[4],&p_1993->g_577[4]},{&p_1993->g_577[1],&p_1993->g_577[4],&p_1993->g_577[4]},{&p_1993->g_577[1],&p_1993->g_577[4],&p_1993->g_577[4]}},{{&p_1993->g_577[1],&p_1993->g_577[4],&p_1993->g_577[4]},{&p_1993->g_577[1],&p_1993->g_577[4],&p_1993->g_577[4]},{&p_1993->g_577[1],&p_1993->g_577[4],&p_1993->g_577[4]},{&p_1993->g_577[1],&p_1993->g_577[4],&p_1993->g_577[4]},{&p_1993->g_577[1],&p_1993->g_577[4],&p_1993->g_577[4]},{&p_1993->g_577[1],&p_1993->g_577[4],&p_1993->g_577[4]},{&p_1993->g_577[1],&p_1993->g_577[4],&p_1993->g_577[4]},{&p_1993->g_577[1],&p_1993->g_577[4],&p_1993->g_577[4]},{&p_1993->g_577[1],&p_1993->g_577[4],&p_1993->g_577[4]}}};
                uint32_t l_590[10][8] = {{0x7A946AB5L,0x88F6D859L,0x88F6D859L,0x7A946AB5L,0x7A946AB5L,0x88F6D859L,0x88F6D859L,0x7A946AB5L},{0x7A946AB5L,0x88F6D859L,0x88F6D859L,0x7A946AB5L,0x7A946AB5L,0x88F6D859L,0x88F6D859L,0x7A946AB5L},{0x7A946AB5L,0x88F6D859L,0x88F6D859L,0x7A946AB5L,0x7A946AB5L,0x88F6D859L,0x88F6D859L,0x7A946AB5L},{0x7A946AB5L,0x88F6D859L,0x88F6D859L,0x7A946AB5L,0x7A946AB5L,0x88F6D859L,0x88F6D859L,0x7A946AB5L},{0x7A946AB5L,0x88F6D859L,0x88F6D859L,0x7A946AB5L,0x7A946AB5L,0x88F6D859L,0x88F6D859L,0x7A946AB5L},{0x7A946AB5L,0x88F6D859L,0x88F6D859L,0x7A946AB5L,0x7A946AB5L,0x88F6D859L,0x88F6D859L,0x7A946AB5L},{0x7A946AB5L,0x88F6D859L,0x88F6D859L,0x7A946AB5L,0x7A946AB5L,0x88F6D859L,0x88F6D859L,0x7A946AB5L},{0x7A946AB5L,0x88F6D859L,0x88F6D859L,0x7A946AB5L,0x7A946AB5L,0x88F6D859L,0x88F6D859L,0x7A946AB5L},{0x7A946AB5L,0x88F6D859L,0x88F6D859L,0x7A946AB5L,0x7A946AB5L,0x88F6D859L,0x88F6D859L,0x7A946AB5L},{0x7A946AB5L,0x88F6D859L,0x88F6D859L,0x7A946AB5L,0x7A946AB5L,0x88F6D859L,0x88F6D859L,0x7A946AB5L}};
                int32_t *l_591[1][3];
                struct S0 l_637 = {0xABE348F3L};
                int8_t l_733[7] = {5L,5L,5L,5L,5L,5L,5L};
                int8_t l_753 = 4L;
                uint16_t l_878 = 0x2103L;
                int i, j, k;
                for (i = 0; i < 1; i++)
                {
                    for (j = 0; j < 3; j++)
                        l_591[i][j] = &p_1993->g_23;
                }
                p_1993->g_23 &= (0x79L > (safe_add_func_int16_t_s_s(((&p_1993->g_164 != l_569) , ((safe_add_func_int64_t_s_s((safe_mul_func_int16_t_s_s((safe_sub_func_int8_t_s_s(((void*)0 != l_576), (((l_580[1][4] = p_1993->g_577[4]) == ((safe_lshift_func_uint16_t_u_s((((((*l_569) = (((((((safe_sub_func_int32_t_s_s((+(safe_add_func_uint16_t_u_u(((l_587 == &p_1993->g_64) , (p_1993->g_19[(p_1993->g_106 + 1)][p_1993->g_106] && l_588)), 0x1EA0L))), FAKE_DIVERGE(p_1993->group_0_offset, get_group_id(0), 10))) < p_47) > p_50) < (-9L)) | p_46) & l_589) && p_1993->g_174[6])) < p_49) & p_1993->g_513) > p_50), 4)) , (void*)0)) > p_1993->g_377[4][6]))), l_589)), l_590[8][2])) > p_48)), p_1993->g_127)));
                for (p_50 = 0; (p_50 <= 1); p_50 += 1)
                { /* block id: 285 */
                    int64_t l_602 = 0x59A592E7C06B5810L;
                    int32_t *****l_613 = &p_1993->g_611[9][0][0];
                    int64_t *l_614 = &p_1993->g_615;
                    int16_t l_617 = (-1L);
                    int64_t *l_618 = &p_1993->g_619;
                    int16_t *l_621 = (void*)0;
                    int16_t *l_622 = (void*)0;
                    int32_t *l_635 = &l_589;
                    int32_t l_638[9] = {5L,5L,5L,5L,5L,5L,5L,5L,5L};
                    int32_t **l_680 = &p_1993->g_72;
                    int i;
                    (*p_1993->g_71) = (*p_1993->g_71);
                }
                for (p_47 = 0; (p_47 <= 0); p_47 += 1)
                { /* block id: 313 */
                    int32_t ****l_681[8][6] = {{&p_1993->g_612,&p_1993->g_612,&p_1993->g_612,&p_1993->g_612,&p_1993->g_612,&p_1993->g_612},{&p_1993->g_612,&p_1993->g_612,&p_1993->g_612,&p_1993->g_612,&p_1993->g_612,&p_1993->g_612},{&p_1993->g_612,&p_1993->g_612,&p_1993->g_612,&p_1993->g_612,&p_1993->g_612,&p_1993->g_612},{&p_1993->g_612,&p_1993->g_612,&p_1993->g_612,&p_1993->g_612,&p_1993->g_612,&p_1993->g_612},{&p_1993->g_612,&p_1993->g_612,&p_1993->g_612,&p_1993->g_612,&p_1993->g_612,&p_1993->g_612},{&p_1993->g_612,&p_1993->g_612,&p_1993->g_612,&p_1993->g_612,&p_1993->g_612,&p_1993->g_612},{&p_1993->g_612,&p_1993->g_612,&p_1993->g_612,&p_1993->g_612,&p_1993->g_612,&p_1993->g_612},{&p_1993->g_612,&p_1993->g_612,&p_1993->g_612,&p_1993->g_612,&p_1993->g_612,&p_1993->g_612}};
                    uint64_t l_717 = 0xB9D2039BCF659E23L;
                    int8_t l_743 = (-1L);
                    int i, j, k;
                    (1 + 1);
                }
                for (p_1993->g_619 = 0; (p_1993->g_619 <= 1); p_1993->g_619 += 1)
                { /* block id: 339 */
                    uint16_t l_816 = 0xFFD9L;
                    uint8_t l_817 = 1UL;
                    int32_t *l_845 = &l_739[0];
                    struct S0 **l_872[3];
                    struct S0 **l_873 = &l_587;
                    int i, j;
                    for (i = 0; i < 3; i++)
                        l_872[i] = &l_587;
                    l_745 = ((*l_702) = ((safe_mod_func_uint8_t_u_u((FAKE_DIVERGE(p_1993->global_0_offset, get_global_id(0), 10) && (l_781[1] && (FAKE_DIVERGE(p_1993->local_0_offset, get_local_id(0), 10) , ((safe_mod_func_uint32_t_u_u((((safe_add_func_int16_t_s_s((safe_add_func_int32_t_s_s((safe_add_func_uint16_t_u_u((safe_mod_func_uint8_t_u_u(FAKE_DIVERGE(p_1993->group_1_offset, get_group_id(1), 10), (((*l_702) , (safe_add_func_uint64_t_u_u(((p_49 & (safe_lshift_func_int16_t_s_s(((safe_add_func_uint64_t_u_u(p_50, (safe_lshift_func_uint16_t_u_s((safe_rshift_func_uint8_t_u_u((~(safe_mod_func_uint32_t_u_u(((p_1993->g_19[(p_1993->g_106 + 5)][p_1993->g_619] = (((((safe_mod_func_int16_t_s_s((l_749 > ((-9L) >= (((safe_sub_func_uint64_t_u_u((safe_mod_func_uint64_t_u_u(p_48, ((safe_add_func_int32_t_s_s((((*l_569) ^= (safe_div_func_uint32_t_u_u((&p_1993->g_540 == ((**p_1993->g_763) , (void*)0)), 4294967295UL))) && (*l_702)), (*l_702))) && l_816))), p_1993->g_25)) | p_49) && 0x2EBE83D5L))), 0x4D1EL)) >= p_1993->g_268) == 1L) , p_47) == l_816)) | l_817), p_49))), GROUP_DIVERGE(0, 1))), p_48)))) < 0x42B1L), (*l_702)))) && (*p_1993->g_764)), p_1993->g_327))) && 0x727C260A58C61B92L))), p_48)), (-1L))), 0x583DL)) , (void*)0) == p_1993->g_818), FAKE_DIVERGE(p_1993->global_2_offset, get_global_id(2), 10))) || (*l_702))))), GROUP_DIVERGE(0, 1))) , p_46));
                    for (l_737 = 0; (l_737 >= 0); l_737 -= 1)
                    { /* block id: 346 */
                        int8_t *l_837[1][1];
                        uint16_t *l_839 = &l_816;
                        int64_t *l_844 = &p_1993->g_103;
                        int32_t ***l_848[8][1] = {{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}};
                        struct S0 l_862 = {6UL};
                        int i, j, k;
                        for (i = 0; i < 1; i++)
                        {
                            for (j = 0; j < 1; j++)
                                l_837[i][j] = &l_733[3];
                        }
                        l_845 = ((p_1993->g_430[l_737][(p_1993->g_619 + 1)][(l_737 + 5)] && (safe_unary_minus_func_int16_t_s(((((safe_add_func_int64_t_s_s((safe_div_func_int16_t_s_s(((*l_677) = (safe_sub_func_int64_t_s_s((safe_lshift_func_int8_t_s_s(((safe_rshift_func_int8_t_s_s(p_47, 4)) != ((void*)0 == l_832)), (safe_add_func_int64_t_s_s((safe_rshift_func_uint16_t_u_u((*p_1993->g_465), 0)), ((*l_844) = ((FAKE_DIVERGE(p_1993->group_1_offset, get_group_id(1), 10) > ((*l_839) = (0x27L | (p_1993->g_838 = ((*l_569) ^= 0x2FL))))) > (safe_div_func_uint32_t_u_u(p_50, (((***l_623) = (((safe_div_func_uint64_t_u_u((!0x7DBC484D023CBFC3L), 0x5D4D727FEAD64771L)) < p_49) < p_1993->g_377[8][3])) & l_817))))))))), 9L))), l_747)), p_48)) >= (**p_1993->g_539)) < p_46) >= p_1993->g_106)))) , &l_589);
                        (*l_845) ^= ((l_849 = p_1993->g_846) != (void*)0);
                        l_862 = ((safe_mod_func_uint64_t_u_u(p_48, (p_48 | ((18446744073709551615UL == (1UL == (*l_845))) != (((*l_702) = ((safe_mul_func_uint16_t_u_u(p_47, (safe_rshift_func_int16_t_s_u((((safe_lshift_func_uint8_t_u_s((*p_1993->g_818), (&p_49 == ((safe_rshift_func_uint8_t_u_s(((~(**p_1993->g_464)) <= p_46), p_47)) , (*p_1993->g_464))))) & p_50) , p_49), 11)))) <= 1L)) && p_46))))) , (*l_587));
                    }
                    l_745 ^= (p_48 > (((safe_mod_func_int16_t_s_s(p_47, l_734)) <= ((safe_rshift_func_int16_t_s_u((((((safe_unary_minus_func_uint16_t_u(((safe_sub_func_uint8_t_u_u((FAKE_DIVERGE(p_1993->global_1_offset, get_global_id(1), 10) != ((*l_569) ^= (*l_845))), (((0x7DABD8E8930E53A7L <= (p_50 & ((~(++(*l_832))) | (l_872[0] != l_873)))) , (safe_div_func_int32_t_s_s((safe_div_func_int32_t_s_s(((*l_702) = (*l_845)), p_50)), l_878))) , p_1993->g_422))) & p_49))) <= p_1993->g_133) > 0x5D12L) , 4UL) >= 0x119DC979FECFE23FL), 3)) , (**p_1993->g_539))) ^ 65535UL));
                }
            }
            for (p_1993->g_494 = 14; (p_1993->g_494 == 35); p_1993->g_494 = safe_add_func_uint64_t_u_u(p_1993->g_494, 5))
            { /* block id: 367 */
                uint32_t l_886 = 4294967295UL;
                int32_t *l_887 = (void*)0;
                l_738 = ((!(((*p_1993->g_818) = (((~l_881) , p_1993->g_85) , (safe_sub_func_int8_t_s_s((7L != (l_587 != ((safe_mul_func_int8_t_s_s(((((l_886 , (l_887 == (l_702 = l_887))) || ((((safe_mul_func_int16_t_s_s((0x1F6313EBL && p_50), l_742)) <= p_1993->g_494) && (*p_1993->g_72)) ^ (*p_1993->g_465))) | GROUP_DIVERGE(1, 1)) && (**p_1993->g_763)), (-1L))) , &p_1993->g_64))), FAKE_DIVERGE(p_1993->global_2_offset, get_global_id(2), 10))))) < p_50)) & p_49);
            }
        }
    }
    for (p_1993->g_127 = 0; (p_1993->g_127 == 48); p_1993->g_127++)
    { /* block id: 376 */
        int32_t l_892 = (-1L);
        int32_t l_893 = (-5L);
        int32_t l_894 = 0L;
        int32_t *l_895 = &l_747;
        int32_t *l_896 = &l_589;
        int32_t *l_897 = &l_748[3];
        int32_t *l_898 = (void*)0;
        int32_t *l_899 = &l_734;
        int32_t *l_900 = &l_589;
        int32_t *l_901[2][8] = {{&l_734,&l_734,&l_734,&l_734,&l_734,&l_734,&l_734,&l_734},{&l_734,&l_734,&l_734,&l_734,&l_734,&l_734,&l_734,&l_734}};
        struct S0 *l_908[7][4][7] = {{{&l_684,&l_684,&p_1993->g_64,(void*)0,(void*)0,&p_1993->g_64,&p_1993->g_64},{&l_684,&l_684,&p_1993->g_64,(void*)0,(void*)0,&p_1993->g_64,&p_1993->g_64},{&l_684,&l_684,&p_1993->g_64,(void*)0,(void*)0,&p_1993->g_64,&p_1993->g_64},{&l_684,&l_684,&p_1993->g_64,(void*)0,(void*)0,&p_1993->g_64,&p_1993->g_64}},{{&l_684,&l_684,&p_1993->g_64,(void*)0,(void*)0,&p_1993->g_64,&p_1993->g_64},{&l_684,&l_684,&p_1993->g_64,(void*)0,(void*)0,&p_1993->g_64,&p_1993->g_64},{&l_684,&l_684,&p_1993->g_64,(void*)0,(void*)0,&p_1993->g_64,&p_1993->g_64},{&l_684,&l_684,&p_1993->g_64,(void*)0,(void*)0,&p_1993->g_64,&p_1993->g_64}},{{&l_684,&l_684,&p_1993->g_64,(void*)0,(void*)0,&p_1993->g_64,&p_1993->g_64},{&l_684,&l_684,&p_1993->g_64,(void*)0,(void*)0,&p_1993->g_64,&p_1993->g_64},{&l_684,&l_684,&p_1993->g_64,(void*)0,(void*)0,&p_1993->g_64,&p_1993->g_64},{&l_684,&l_684,&p_1993->g_64,(void*)0,(void*)0,&p_1993->g_64,&p_1993->g_64}},{{&l_684,&l_684,&p_1993->g_64,(void*)0,(void*)0,&p_1993->g_64,&p_1993->g_64},{&l_684,&l_684,&p_1993->g_64,(void*)0,(void*)0,&p_1993->g_64,&p_1993->g_64},{&l_684,&l_684,&p_1993->g_64,(void*)0,(void*)0,&p_1993->g_64,&p_1993->g_64},{&l_684,&l_684,&p_1993->g_64,(void*)0,(void*)0,&p_1993->g_64,&p_1993->g_64}},{{&l_684,&l_684,&p_1993->g_64,(void*)0,(void*)0,&p_1993->g_64,&p_1993->g_64},{&l_684,&l_684,&p_1993->g_64,(void*)0,(void*)0,&p_1993->g_64,&p_1993->g_64},{&l_684,&l_684,&p_1993->g_64,(void*)0,(void*)0,&p_1993->g_64,&p_1993->g_64},{&l_684,&l_684,&p_1993->g_64,(void*)0,(void*)0,&p_1993->g_64,&p_1993->g_64}},{{&l_684,&l_684,&p_1993->g_64,(void*)0,(void*)0,&p_1993->g_64,&p_1993->g_64},{&l_684,&l_684,&p_1993->g_64,(void*)0,(void*)0,&p_1993->g_64,&p_1993->g_64},{&l_684,&l_684,&p_1993->g_64,(void*)0,(void*)0,&p_1993->g_64,&p_1993->g_64},{&l_684,&l_684,&p_1993->g_64,(void*)0,(void*)0,&p_1993->g_64,&p_1993->g_64}},{{&l_684,&l_684,&p_1993->g_64,(void*)0,(void*)0,&p_1993->g_64,&p_1993->g_64},{&l_684,&l_684,&p_1993->g_64,(void*)0,(void*)0,&p_1993->g_64,&p_1993->g_64},{&l_684,&l_684,&p_1993->g_64,(void*)0,(void*)0,&p_1993->g_64,&p_1993->g_64},{&l_684,&l_684,&p_1993->g_64,(void*)0,(void*)0,&p_1993->g_64,&p_1993->g_64}}};
        struct S0 **l_909 = &l_908[4][2][4];
        struct S0 **l_910 = (void*)0;
        struct S0 *l_912 = &l_684;
        struct S0 **l_911 = &l_912;
        int32_t ****l_913 = (void*)0;
        int32_t ***l_915 = (void*)0;
        int32_t ****l_914[3][8][9] = {{{&l_915,(void*)0,&l_915,&l_915,&l_915,&l_915,&l_915,&l_915,(void*)0},{&l_915,(void*)0,&l_915,&l_915,&l_915,&l_915,&l_915,&l_915,(void*)0},{&l_915,(void*)0,&l_915,&l_915,&l_915,&l_915,&l_915,&l_915,(void*)0},{&l_915,(void*)0,&l_915,&l_915,&l_915,&l_915,&l_915,&l_915,(void*)0},{&l_915,(void*)0,&l_915,&l_915,&l_915,&l_915,&l_915,&l_915,(void*)0},{&l_915,(void*)0,&l_915,&l_915,&l_915,&l_915,&l_915,&l_915,(void*)0},{&l_915,(void*)0,&l_915,&l_915,&l_915,&l_915,&l_915,&l_915,(void*)0},{&l_915,(void*)0,&l_915,&l_915,&l_915,&l_915,&l_915,&l_915,(void*)0}},{{&l_915,(void*)0,&l_915,&l_915,&l_915,&l_915,&l_915,&l_915,(void*)0},{&l_915,(void*)0,&l_915,&l_915,&l_915,&l_915,&l_915,&l_915,(void*)0},{&l_915,(void*)0,&l_915,&l_915,&l_915,&l_915,&l_915,&l_915,(void*)0},{&l_915,(void*)0,&l_915,&l_915,&l_915,&l_915,&l_915,&l_915,(void*)0},{&l_915,(void*)0,&l_915,&l_915,&l_915,&l_915,&l_915,&l_915,(void*)0},{&l_915,(void*)0,&l_915,&l_915,&l_915,&l_915,&l_915,&l_915,(void*)0},{&l_915,(void*)0,&l_915,&l_915,&l_915,&l_915,&l_915,&l_915,(void*)0},{&l_915,(void*)0,&l_915,&l_915,&l_915,&l_915,&l_915,&l_915,(void*)0}},{{&l_915,(void*)0,&l_915,&l_915,&l_915,&l_915,&l_915,&l_915,(void*)0},{&l_915,(void*)0,&l_915,&l_915,&l_915,&l_915,&l_915,&l_915,(void*)0},{&l_915,(void*)0,&l_915,&l_915,&l_915,&l_915,&l_915,&l_915,(void*)0},{&l_915,(void*)0,&l_915,&l_915,&l_915,&l_915,&l_915,&l_915,(void*)0},{&l_915,(void*)0,&l_915,&l_915,&l_915,&l_915,&l_915,&l_915,(void*)0},{&l_915,(void*)0,&l_915,&l_915,&l_915,&l_915,&l_915,&l_915,(void*)0},{&l_915,(void*)0,&l_915,&l_915,&l_915,&l_915,&l_915,&l_915,(void*)0},{&l_915,(void*)0,&l_915,&l_915,&l_915,&l_915,&l_915,&l_915,(void*)0}}};
        struct S0 l_917[4] = {{1UL},{1UL},{1UL},{1UL}};
        int i, j, k;
        l_740 = p_47;
        l_902--;
        if ((safe_add_func_int64_t_s_s(7L, (p_47 , (((p_1993->g_907 = &l_684) == ((*l_911) = ((*l_909) = l_908[5][3][5]))) == (l_748[3] <= ((&p_1993->g_306 == (l_916 = &p_1993->g_846)) & 0x250AF793L)))))))
        { /* block id: 383 */
            int16_t *l_925 = &p_1993->g_377[4][6];
            int32_t l_941[1];
            uint64_t *l_944 = &p_1993->g_327;
            int8_t *l_945 = &p_1993->g_164;
            int32_t l_946 = (-1L);
            int i;
            for (i = 0; i < 1; i++)
                l_941[i] = (-2L);
            if (p_50)
            { /* block id: 384 */
                uint8_t l_920 = 4UL;
                int16_t **l_926 = &l_925;
                int16_t *l_927[6];
                struct S0 l_928 = {8UL};
                int64_t *l_930 = &p_1993->g_619;
                int i;
                for (i = 0; i < 6; i++)
                    l_927[i] = &l_693;
                (*p_1993->g_907) = l_917[3];
                (*p_1993->g_72) = ((safe_mod_func_uint8_t_u_u(((*p_1993->g_818) = (--l_920)), (((*l_930) &= (!(safe_add_func_uint64_t_u_u((((((((*p_1993->g_764) ^ ((65535UL != p_46) , (&p_1993->g_377[4][6] == ((*l_926) = l_925)))) == (((*l_895) = (-9L)) > ((l_928 , (+p_1993->g_19[3][0])) >= (((p_46 && p_50) < p_46) < p_48)))) > l_589) || l_929) == 0x66E57389L) <= p_46), 0x4E80554DD0EA004DL)))) & 1L))) , 2L);
            }
            else
            { /* block id: 392 */
                return p_1993->g_377[4][6];
            }
            l_946 |= (safe_mod_func_int8_t_s_s(0x0BL, ((*l_945) = (((safe_add_func_uint64_t_u_u((safe_rshift_func_int8_t_s_u((safe_lshift_func_uint16_t_u_s((**p_1993->g_464), (((l_941[0] & l_941[0]) , (254UL ^ l_941[0])) <= ((safe_mod_func_uint16_t_u_u(((*p_1993->g_578) < ((p_1993->g_109 & ((*l_944) &= (0x7FD4L && l_941[0]))) ^ (*p_1993->g_72))), 65535UL)) == l_929)))), p_49)), p_50)) || p_48) , (*l_899)))));
            for (p_1993->g_754 = 0; (p_1993->g_754 == 28); p_1993->g_754++)
            { /* block id: 400 */
                (*l_896) = (0x4A8CF138EEE3B5BFL | (safe_sub_func_uint32_t_u_u(0xB52E4BA7L, (p_1993->g_19[0][0] >= p_50))));
                l_589 = 0x554308B6L;
                (*l_897) ^= ((*l_899) |= (safe_rshift_func_int16_t_s_s(((*l_925) = (safe_sub_func_int8_t_s_s((p_1993->g_969 = (((((*l_945) |= (safe_rshift_func_int8_t_s_u((((!0UL) || ((((void*)0 == &p_1993->g_465) != (p_46 && (((l_730 = (safe_mod_func_int8_t_s_s((((p_50 | ((safe_lshift_func_uint16_t_u_u((safe_mod_func_uint16_t_u_u(FAKE_DIVERGE(p_1993->global_1_offset, get_global_id(1), 10), (safe_mod_func_uint32_t_u_u((safe_rshift_func_int8_t_s_u(p_47, (*p_1993->g_818))), (~(**p_1993->g_71)))))), (((65532UL < (*p_1993->g_465)) >= (*p_1993->g_72)) >= 0UL))) == (*p_1993->g_72))) && 0x31L) , p_48), 0x7AL))) || (-1L)) , p_50))) ^ 0L)) == 65527UL), 7))) , (void*)0) == (void*)0) & p_49)), p_1993->g_615))), l_738)));
            }
        }
        else
        { /* block id: 410 */
            uint8_t l_970 = 0x14L;
            ++l_970;
            return p_48;
        }
    }
    for (p_1993->g_85 = (-8); (p_1993->g_85 <= (-24)); p_1993->g_85--)
    { /* block id: 417 */
        int32_t *l_976 = &l_730;
        l_975 = &l_748[2];
        if ((**p_1993->g_71))
            continue;
        l_976 = l_976;
    }
    (*p_1993->g_72) = (p_1993->g_109 > (0L != ((p_50 <= (((((*p_1993->g_578) | p_47) , FAKE_DIVERGE(p_1993->group_1_offset, get_group_id(1), 10)) <= p_50) < ((p_46 >= p_1993->g_23) && (safe_mul_func_uint16_t_u_u((safe_mul_func_uint16_t_u_u(p_47, p_46)), FAKE_DIVERGE(p_1993->group_2_offset, get_group_id(2), 10)))))) > 0xEFL)));
    return p_1993->g_30;
}


/* ------------------------------------------ */
/* 
 * reads : p_1993->g_72 p_1993->g_71
 * writes: p_1993->g_72
 */
struct S0  func_51(uint16_t  p_52, struct S1 * p_1993)
{ /* block id: 264 */
    int32_t *l_560 = &p_1993->g_106;
    int32_t **l_561 = &p_1993->g_72;
    struct S0 l_562 = {0xA7574645L};
    (*l_561) = l_560;
    (*l_561) = (*l_561);
    (*p_1993->g_71) = (*l_561);
    return l_562;
}


/* ------------------------------------------ */
/* 
 * reads : p_1993->g_17 p_1993->g_19 p_1993->g_71 p_1993->g_396 p_1993->g_103 p_1993->g_494 p_1993->g_377 p_1993->g_430 p_1993->g_23 p_1993->g_513 p_1993->g_465 p_1993->g_109 p_1993->g_539 p_1993->g_72 p_1993->g_308 p_1993->g_25 p_1993->g_133
 * writes: p_1993->g_23 p_1993->g_17 p_1993->g_64.f0 p_1993->g_72 p_1993->g_396 p_1993->g_103 p_1993->g_494 p_1993->g_327
 */
uint16_t  func_53(int64_t  p_54, struct S0  p_55, int32_t * p_56, struct S1 * p_1993)
{ /* block id: 12 */
    int32_t *l_70 = (void*)0;
    int32_t l_107[4][10][6] = {{{4L,1L,6L,(-10L),6L,1L},{4L,1L,6L,(-10L),6L,1L},{4L,1L,6L,(-10L),6L,1L},{4L,1L,6L,(-10L),6L,1L},{4L,1L,6L,(-10L),6L,1L},{4L,1L,6L,(-10L),6L,1L},{4L,1L,6L,(-10L),6L,1L},{4L,1L,6L,(-10L),6L,1L},{4L,1L,6L,(-10L),6L,1L},{4L,1L,6L,(-10L),6L,1L}},{{4L,1L,6L,(-10L),6L,1L},{4L,1L,6L,(-10L),6L,1L},{4L,1L,6L,(-10L),6L,1L},{4L,1L,6L,(-10L),6L,1L},{4L,1L,6L,(-10L),6L,1L},{4L,1L,6L,(-10L),6L,1L},{4L,1L,6L,(-10L),6L,1L},{4L,1L,6L,(-10L),6L,1L},{4L,1L,6L,(-10L),6L,1L},{4L,1L,6L,(-10L),6L,1L}},{{4L,1L,6L,(-10L),6L,1L},{4L,1L,6L,(-10L),6L,1L},{4L,1L,6L,(-10L),6L,1L},{4L,1L,6L,(-10L),6L,1L},{4L,1L,6L,(-10L),6L,1L},{4L,1L,6L,(-10L),6L,1L},{4L,1L,6L,(-10L),6L,1L},{4L,1L,6L,(-10L),6L,1L},{4L,1L,6L,(-10L),6L,1L},{4L,1L,6L,(-10L),6L,1L}},{{4L,1L,6L,(-10L),6L,1L},{4L,1L,6L,(-10L),6L,1L},{4L,1L,6L,(-10L),6L,1L},{4L,1L,6L,(-10L),6L,1L},{4L,1L,6L,(-10L),6L,1L},{4L,1L,6L,(-10L),6L,1L},{4L,1L,6L,(-10L),6L,1L},{4L,1L,6L,(-10L),6L,1L},{4L,1L,6L,(-10L),6L,1L},{4L,1L,6L,(-10L),6L,1L}}};
    int32_t l_124[9][2][8] = {{{0x17D21247L,0x324318C7L,0L,0x6F2EC8A6L,(-10L),(-10L),0x6F2EC8A6L,0L},{0x17D21247L,0x324318C7L,0L,0x6F2EC8A6L,(-10L),(-10L),0x6F2EC8A6L,0L}},{{0x17D21247L,0x324318C7L,0L,0x6F2EC8A6L,(-10L),(-10L),0x6F2EC8A6L,0L},{0x17D21247L,0x324318C7L,0L,0x6F2EC8A6L,(-10L),(-10L),0x6F2EC8A6L,0L}},{{0x17D21247L,0x324318C7L,0L,0x6F2EC8A6L,(-10L),(-10L),0x6F2EC8A6L,0L},{0x17D21247L,0x324318C7L,0L,0x6F2EC8A6L,(-10L),(-10L),0x6F2EC8A6L,0L}},{{0x17D21247L,0x324318C7L,0L,0x6F2EC8A6L,(-10L),(-10L),0x6F2EC8A6L,0L},{0x17D21247L,0x324318C7L,0L,0x6F2EC8A6L,(-10L),(-10L),0x6F2EC8A6L,0L}},{{0x17D21247L,0x324318C7L,0L,0x6F2EC8A6L,(-10L),(-10L),0x6F2EC8A6L,0L},{0x17D21247L,0x324318C7L,0L,0x6F2EC8A6L,(-10L),(-10L),0x6F2EC8A6L,0L}},{{0x17D21247L,0x324318C7L,0L,0x6F2EC8A6L,(-10L),(-10L),0x6F2EC8A6L,0L},{0x17D21247L,0x324318C7L,0L,0x6F2EC8A6L,(-10L),(-10L),0x6F2EC8A6L,0L}},{{0x17D21247L,0x324318C7L,0L,0x6F2EC8A6L,(-10L),(-10L),0x6F2EC8A6L,0L},{0x17D21247L,0x324318C7L,0L,0x6F2EC8A6L,(-10L),(-10L),0x6F2EC8A6L,0L}},{{0x17D21247L,0x324318C7L,0L,0x6F2EC8A6L,(-10L),(-10L),0x6F2EC8A6L,0L},{0x17D21247L,0x324318C7L,0L,0x6F2EC8A6L,(-10L),(-10L),0x6F2EC8A6L,0L}},{{0x17D21247L,0x324318C7L,0L,0x6F2EC8A6L,(-10L),(-10L),0x6F2EC8A6L,0L},{0x17D21247L,0x324318C7L,0L,0x6F2EC8A6L,(-10L),(-10L),0x6F2EC8A6L,0L}}};
    int64_t *l_168 = &p_1993->g_103;
    uint16_t l_305 = 65534UL;
    int32_t *l_310[9] = {&p_1993->g_85,&p_1993->g_85,&p_1993->g_85,&p_1993->g_85,&p_1993->g_85,&p_1993->g_85,&p_1993->g_85,&p_1993->g_85,&p_1993->g_85};
    int32_t **l_309 = &l_310[0];
    int32_t **l_437 = &p_1993->g_72;
    int32_t ***l_436 = &l_437;
    int32_t ****l_435 = &l_436;
    struct S0 *l_490[10] = {&p_1993->g_64,&p_1993->g_64,&p_1993->g_64,&p_1993->g_64,&p_1993->g_64,&p_1993->g_64,&p_1993->g_64,&p_1993->g_64,&p_1993->g_64,&p_1993->g_64};
    int8_t *l_553 = (void*)0;
    int8_t *l_554[9][8][3] = {{{&p_1993->g_164,&p_1993->g_164,(void*)0},{&p_1993->g_164,&p_1993->g_164,(void*)0},{&p_1993->g_164,&p_1993->g_164,(void*)0},{&p_1993->g_164,&p_1993->g_164,(void*)0},{&p_1993->g_164,&p_1993->g_164,(void*)0},{&p_1993->g_164,&p_1993->g_164,(void*)0},{&p_1993->g_164,&p_1993->g_164,(void*)0},{&p_1993->g_164,&p_1993->g_164,(void*)0}},{{&p_1993->g_164,&p_1993->g_164,(void*)0},{&p_1993->g_164,&p_1993->g_164,(void*)0},{&p_1993->g_164,&p_1993->g_164,(void*)0},{&p_1993->g_164,&p_1993->g_164,(void*)0},{&p_1993->g_164,&p_1993->g_164,(void*)0},{&p_1993->g_164,&p_1993->g_164,(void*)0},{&p_1993->g_164,&p_1993->g_164,(void*)0},{&p_1993->g_164,&p_1993->g_164,(void*)0}},{{&p_1993->g_164,&p_1993->g_164,(void*)0},{&p_1993->g_164,&p_1993->g_164,(void*)0},{&p_1993->g_164,&p_1993->g_164,(void*)0},{&p_1993->g_164,&p_1993->g_164,(void*)0},{&p_1993->g_164,&p_1993->g_164,(void*)0},{&p_1993->g_164,&p_1993->g_164,(void*)0},{&p_1993->g_164,&p_1993->g_164,(void*)0},{&p_1993->g_164,&p_1993->g_164,(void*)0}},{{&p_1993->g_164,&p_1993->g_164,(void*)0},{&p_1993->g_164,&p_1993->g_164,(void*)0},{&p_1993->g_164,&p_1993->g_164,(void*)0},{&p_1993->g_164,&p_1993->g_164,(void*)0},{&p_1993->g_164,&p_1993->g_164,(void*)0},{&p_1993->g_164,&p_1993->g_164,(void*)0},{&p_1993->g_164,&p_1993->g_164,(void*)0},{&p_1993->g_164,&p_1993->g_164,(void*)0}},{{&p_1993->g_164,&p_1993->g_164,(void*)0},{&p_1993->g_164,&p_1993->g_164,(void*)0},{&p_1993->g_164,&p_1993->g_164,(void*)0},{&p_1993->g_164,&p_1993->g_164,(void*)0},{&p_1993->g_164,&p_1993->g_164,(void*)0},{&p_1993->g_164,&p_1993->g_164,(void*)0},{&p_1993->g_164,&p_1993->g_164,(void*)0},{&p_1993->g_164,&p_1993->g_164,(void*)0}},{{&p_1993->g_164,&p_1993->g_164,(void*)0},{&p_1993->g_164,&p_1993->g_164,(void*)0},{&p_1993->g_164,&p_1993->g_164,(void*)0},{&p_1993->g_164,&p_1993->g_164,(void*)0},{&p_1993->g_164,&p_1993->g_164,(void*)0},{&p_1993->g_164,&p_1993->g_164,(void*)0},{&p_1993->g_164,&p_1993->g_164,(void*)0},{&p_1993->g_164,&p_1993->g_164,(void*)0}},{{&p_1993->g_164,&p_1993->g_164,(void*)0},{&p_1993->g_164,&p_1993->g_164,(void*)0},{&p_1993->g_164,&p_1993->g_164,(void*)0},{&p_1993->g_164,&p_1993->g_164,(void*)0},{&p_1993->g_164,&p_1993->g_164,(void*)0},{&p_1993->g_164,&p_1993->g_164,(void*)0},{&p_1993->g_164,&p_1993->g_164,(void*)0},{&p_1993->g_164,&p_1993->g_164,(void*)0}},{{&p_1993->g_164,&p_1993->g_164,(void*)0},{&p_1993->g_164,&p_1993->g_164,(void*)0},{&p_1993->g_164,&p_1993->g_164,(void*)0},{&p_1993->g_164,&p_1993->g_164,(void*)0},{&p_1993->g_164,&p_1993->g_164,(void*)0},{&p_1993->g_164,&p_1993->g_164,(void*)0},{&p_1993->g_164,&p_1993->g_164,(void*)0},{&p_1993->g_164,&p_1993->g_164,(void*)0}},{{&p_1993->g_164,&p_1993->g_164,(void*)0},{&p_1993->g_164,&p_1993->g_164,(void*)0},{&p_1993->g_164,&p_1993->g_164,(void*)0},{&p_1993->g_164,&p_1993->g_164,(void*)0},{&p_1993->g_164,&p_1993->g_164,(void*)0},{&p_1993->g_164,&p_1993->g_164,(void*)0},{&p_1993->g_164,&p_1993->g_164,(void*)0},{&p_1993->g_164,&p_1993->g_164,(void*)0}}};
    int32_t l_555 = 0x1EBEC950L;
    int i, j, k;
    (*p_56) = 0x7283D345L;
    for (p_1993->g_17 = 9; (p_1993->g_17 > 52); p_1993->g_17 = safe_add_func_int64_t_s_s(p_1993->g_17, 7))
    { /* block id: 16 */
        uint32_t l_67 = 1UL;
        int32_t *l_116 = &p_1993->g_25;
        struct S0 l_121 = {4294967288UL};
        int32_t l_126 = 0x1A140D65L;
        int32_t **l_159 = &l_70;
        uint32_t l_167 = 0x28C9742AL;
        int32_t l_173 = 0x447F79A1L;
        int32_t l_269 = 0L;
        int32_t l_270 = 0L;
        int16_t l_394 = 6L;
        int32_t l_417 = 0x281F63E3L;
        uint32_t l_491 = 0x418A2515L;
        uint32_t l_495[10] = {6UL,0xD86A5192L,0xD4B5F37CL,0xD86A5192L,6UL,6UL,0xD86A5192L,0xD4B5F37CL,0xD86A5192L,6UL};
        int i;
        ++l_67;
        for (p_55.f0 = 0; (p_55.f0 <= 1); p_55.f0 += 1)
        { /* block id: 20 */
            for (p_1993->g_64.f0 = 0; (p_1993->g_64.f0 <= 1); p_1993->g_64.f0 += 1)
            { /* block id: 23 */
                int i, j;
                return p_1993->g_19[(p_55.f0 + 7)][p_55.f0];
            }
        }
        (*p_1993->g_71) = l_70;
    }
    for (p_55.f0 = 0; (p_55.f0 < 28); p_55.f0 = safe_add_func_int16_t_s_s(p_55.f0, 8))
    { /* block id: 222 */
        int32_t l_528[8][5][4] = {{{1L,0x776DC7A9L,0x0999A998L,(-1L)},{1L,0x776DC7A9L,0x0999A998L,(-1L)},{1L,0x776DC7A9L,0x0999A998L,(-1L)},{1L,0x776DC7A9L,0x0999A998L,(-1L)},{1L,0x776DC7A9L,0x0999A998L,(-1L)}},{{1L,0x776DC7A9L,0x0999A998L,(-1L)},{1L,0x776DC7A9L,0x0999A998L,(-1L)},{1L,0x776DC7A9L,0x0999A998L,(-1L)},{1L,0x776DC7A9L,0x0999A998L,(-1L)},{1L,0x776DC7A9L,0x0999A998L,(-1L)}},{{1L,0x776DC7A9L,0x0999A998L,(-1L)},{1L,0x776DC7A9L,0x0999A998L,(-1L)},{1L,0x776DC7A9L,0x0999A998L,(-1L)},{1L,0x776DC7A9L,0x0999A998L,(-1L)},{1L,0x776DC7A9L,0x0999A998L,(-1L)}},{{1L,0x776DC7A9L,0x0999A998L,(-1L)},{1L,0x776DC7A9L,0x0999A998L,(-1L)},{1L,0x776DC7A9L,0x0999A998L,(-1L)},{1L,0x776DC7A9L,0x0999A998L,(-1L)},{1L,0x776DC7A9L,0x0999A998L,(-1L)}},{{1L,0x776DC7A9L,0x0999A998L,(-1L)},{1L,0x776DC7A9L,0x0999A998L,(-1L)},{1L,0x776DC7A9L,0x0999A998L,(-1L)},{1L,0x776DC7A9L,0x0999A998L,(-1L)},{1L,0x776DC7A9L,0x0999A998L,(-1L)}},{{1L,0x776DC7A9L,0x0999A998L,(-1L)},{1L,0x776DC7A9L,0x0999A998L,(-1L)},{1L,0x776DC7A9L,0x0999A998L,(-1L)},{1L,0x776DC7A9L,0x0999A998L,(-1L)},{1L,0x776DC7A9L,0x0999A998L,(-1L)}},{{1L,0x776DC7A9L,0x0999A998L,(-1L)},{1L,0x776DC7A9L,0x0999A998L,(-1L)},{1L,0x776DC7A9L,0x0999A998L,(-1L)},{1L,0x776DC7A9L,0x0999A998L,(-1L)},{1L,0x776DC7A9L,0x0999A998L,(-1L)}},{{1L,0x776DC7A9L,0x0999A998L,(-1L)},{1L,0x776DC7A9L,0x0999A998L,(-1L)},{1L,0x776DC7A9L,0x0999A998L,(-1L)},{1L,0x776DC7A9L,0x0999A998L,(-1L)},{1L,0x776DC7A9L,0x0999A998L,(-1L)}}};
        uint16_t *l_543 = &p_1993->g_127;
        uint16_t l_549 = 0x7018L;
        int32_t *l_552 = &p_1993->g_106;
        int i, j, k;
        for (p_1993->g_396 = 0; (p_1993->g_396 <= 3); p_1993->g_396 += 1)
        { /* block id: 225 */
            uint32_t *l_537 = (void*)0;
            uint32_t **l_536 = &l_537;
            struct S0 *l_548 = &p_1993->g_64;
            for (p_1993->g_103 = 9; (p_1993->g_103 >= 0); p_1993->g_103 -= 1)
            { /* block id: 228 */
                int32_t l_529[5][9][5] = {{{(-1L),0x1BD051C9L,0x51CC19B8L,0x7B553D99L,0x4F06881BL},{(-1L),0x1BD051C9L,0x51CC19B8L,0x7B553D99L,0x4F06881BL},{(-1L),0x1BD051C9L,0x51CC19B8L,0x7B553D99L,0x4F06881BL},{(-1L),0x1BD051C9L,0x51CC19B8L,0x7B553D99L,0x4F06881BL},{(-1L),0x1BD051C9L,0x51CC19B8L,0x7B553D99L,0x4F06881BL},{(-1L),0x1BD051C9L,0x51CC19B8L,0x7B553D99L,0x4F06881BL},{(-1L),0x1BD051C9L,0x51CC19B8L,0x7B553D99L,0x4F06881BL},{(-1L),0x1BD051C9L,0x51CC19B8L,0x7B553D99L,0x4F06881BL},{(-1L),0x1BD051C9L,0x51CC19B8L,0x7B553D99L,0x4F06881BL}},{{(-1L),0x1BD051C9L,0x51CC19B8L,0x7B553D99L,0x4F06881BL},{(-1L),0x1BD051C9L,0x51CC19B8L,0x7B553D99L,0x4F06881BL},{(-1L),0x1BD051C9L,0x51CC19B8L,0x7B553D99L,0x4F06881BL},{(-1L),0x1BD051C9L,0x51CC19B8L,0x7B553D99L,0x4F06881BL},{(-1L),0x1BD051C9L,0x51CC19B8L,0x7B553D99L,0x4F06881BL},{(-1L),0x1BD051C9L,0x51CC19B8L,0x7B553D99L,0x4F06881BL},{(-1L),0x1BD051C9L,0x51CC19B8L,0x7B553D99L,0x4F06881BL},{(-1L),0x1BD051C9L,0x51CC19B8L,0x7B553D99L,0x4F06881BL},{(-1L),0x1BD051C9L,0x51CC19B8L,0x7B553D99L,0x4F06881BL}},{{(-1L),0x1BD051C9L,0x51CC19B8L,0x7B553D99L,0x4F06881BL},{(-1L),0x1BD051C9L,0x51CC19B8L,0x7B553D99L,0x4F06881BL},{(-1L),0x1BD051C9L,0x51CC19B8L,0x7B553D99L,0x4F06881BL},{(-1L),0x1BD051C9L,0x51CC19B8L,0x7B553D99L,0x4F06881BL},{(-1L),0x1BD051C9L,0x51CC19B8L,0x7B553D99L,0x4F06881BL},{(-1L),0x1BD051C9L,0x51CC19B8L,0x7B553D99L,0x4F06881BL},{(-1L),0x1BD051C9L,0x51CC19B8L,0x7B553D99L,0x4F06881BL},{(-1L),0x1BD051C9L,0x51CC19B8L,0x7B553D99L,0x4F06881BL},{(-1L),0x1BD051C9L,0x51CC19B8L,0x7B553D99L,0x4F06881BL}},{{(-1L),0x1BD051C9L,0x51CC19B8L,0x7B553D99L,0x4F06881BL},{(-1L),0x1BD051C9L,0x51CC19B8L,0x7B553D99L,0x4F06881BL},{(-1L),0x1BD051C9L,0x51CC19B8L,0x7B553D99L,0x4F06881BL},{(-1L),0x1BD051C9L,0x51CC19B8L,0x7B553D99L,0x4F06881BL},{(-1L),0x1BD051C9L,0x51CC19B8L,0x7B553D99L,0x4F06881BL},{(-1L),0x1BD051C9L,0x51CC19B8L,0x7B553D99L,0x4F06881BL},{(-1L),0x1BD051C9L,0x51CC19B8L,0x7B553D99L,0x4F06881BL},{(-1L),0x1BD051C9L,0x51CC19B8L,0x7B553D99L,0x4F06881BL},{(-1L),0x1BD051C9L,0x51CC19B8L,0x7B553D99L,0x4F06881BL}},{{(-1L),0x1BD051C9L,0x51CC19B8L,0x7B553D99L,0x4F06881BL},{(-1L),0x1BD051C9L,0x51CC19B8L,0x7B553D99L,0x4F06881BL},{(-1L),0x1BD051C9L,0x51CC19B8L,0x7B553D99L,0x4F06881BL},{(-1L),0x1BD051C9L,0x51CC19B8L,0x7B553D99L,0x4F06881BL},{(-1L),0x1BD051C9L,0x51CC19B8L,0x7B553D99L,0x4F06881BL},{(-1L),0x1BD051C9L,0x51CC19B8L,0x7B553D99L,0x4F06881BL},{(-1L),0x1BD051C9L,0x51CC19B8L,0x7B553D99L,0x4F06881BL},{(-1L),0x1BD051C9L,0x51CC19B8L,0x7B553D99L,0x4F06881BL},{(-1L),0x1BD051C9L,0x51CC19B8L,0x7B553D99L,0x4F06881BL}}};
                int i, j, k;
                for (p_1993->g_494 = 1; (p_1993->g_494 <= 7); p_1993->g_494 += 1)
                { /* block id: 231 */
                    uint64_t *l_532 = &p_1993->g_327;
                    int8_t l_533[2];
                    uint32_t ***l_538 = &l_536;
                    int i, j, k;
                    for (i = 0; i < 2; i++)
                        l_533[i] = 8L;
                    if (((safe_sub_func_int32_t_s_s((l_107[p_1993->g_396][p_1993->g_103][p_1993->g_396] & p_1993->g_377[p_1993->g_494][p_1993->g_494]), (safe_rshift_func_uint8_t_u_s((safe_mod_func_uint32_t_u_u(((((safe_rshift_func_uint8_t_u_s((((*l_532) = (((0x872DL >= ((p_1993->g_430[0][5][3] < l_528[7][4][0]) | (((*p_56) == l_107[p_1993->g_396][p_1993->g_103][p_1993->g_396]) & l_529[4][1][4]))) || (safe_lshift_func_int16_t_s_u(p_54, 0))) >= 0x24L)) | 0UL), p_55.f0)) , p_1993->g_513) > l_528[7][4][0]) & p_55.f0), l_529[4][1][4])), p_55.f0)))) , l_533[0]))
                    { /* block id: 233 */
                        int i, j, k;
                        l_107[p_1993->g_396][(p_1993->g_396 + 3)][p_1993->g_396] = (*p_56);
                    }
                    else
                    { /* block id: 235 */
                        return (*p_1993->g_465);
                    }
                    if ((0x00L < (safe_div_func_uint32_t_u_u(((((*l_538) = l_536) == p_1993->g_539) | (((p_1993->g_396 ^ ((safe_div_func_uint64_t_u_u((&p_1993->g_109 != (p_55.f0 , l_543)), p_1993->g_109)) & ((((safe_rshift_func_uint16_t_u_u(((*p_56) <= l_107[p_1993->g_396][p_1993->g_103][p_1993->g_396]), (*p_1993->g_465))) < 6L) , 0xE7F3FDC5L) , GROUP_DIVERGE(2, 1)))) == FAKE_DIVERGE(p_1993->global_2_offset, get_global_id(2), 10)) <= 0x19C6L)), (-4L)))))
                    { /* block id: 239 */
                        (*p_56) ^= (safe_lshift_func_uint8_t_u_s(p_54, 2));
                    }
                    else
                    { /* block id: 241 */
                        int i;
                        l_490[p_1993->g_494] = l_548;
                    }
                    (*p_56) = (*p_56);
                }
                for (l_305 = 0; (l_305 <= 7); l_305 += 1)
                { /* block id: 248 */
                    --l_549;
                }
                (*l_437) = l_552;
                (***l_435) = (*p_1993->g_71);
            }
            for (p_1993->g_327 = 0; (p_1993->g_327 <= 3); p_1993->g_327 += 1)
            { /* block id: 256 */
                int i, j, k;
                (***l_435) = &l_107[p_1993->g_396][(p_1993->g_396 + 3)][(p_1993->g_396 + 2)];
            }
        }
    }
    (*p_56) = ((((l_555 = p_1993->g_308) >= (p_55 , p_1993->g_25)) <= (0x4819L ^ (((((!(p_55.f0 , ((0x1FL == 1UL) ^ (*p_1993->g_465)))) ^ (safe_mul_func_int16_t_s_s((!(safe_mod_func_int8_t_s_s((p_54 & 0x0C79895BL), p_55.f0))), p_1993->g_103))) | 0x274E53D08544918DL) && p_1993->g_377[4][6]) || p_1993->g_133))) != p_54);
    return p_54;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S1 c_1994;
    struct S1* p_1993 = &c_1994;
    struct S1 c_1995 = {
        0xCD9D75405732AA61L, // p_1993->g_17
        {{0x6968939FL,0x6968939FL},{0x6968939FL,0x6968939FL},{0x6968939FL,0x6968939FL},{0x6968939FL,0x6968939FL},{0x6968939FL,0x6968939FL},{0x6968939FL,0x6968939FL},{0x6968939FL,0x6968939FL},{0x6968939FL,0x6968939FL},{0x6968939FL,0x6968939FL}}, // p_1993->g_19
        (-7L), // p_1993->g_23
        0x25739271L, // p_1993->g_25
        0UL, // p_1993->g_30
        {0xAB76A10BL}, // p_1993->g_64
        (void*)0, // p_1993->g_72
        &p_1993->g_72, // p_1993->g_71
        0x3D8A5C08L, // p_1993->g_85
        0x6EA1L, // p_1993->g_89
        0x720137108D8AE6FBL, // p_1993->g_103
        0L, // p_1993->g_106
        1UL, // p_1993->g_109
        0UL, // p_1993->g_127
        0x08B23571L, // p_1993->g_133
        248UL, // p_1993->g_136
        0x3CL, // p_1993->g_164
        0x21E08C4FL, // p_1993->g_172
        {0x238DL,0x238DL,0x238DL,0x238DL,0x238DL,0x238DL,0x238DL,0x238DL}, // p_1993->g_174
        (void*)0, // p_1993->g_246
        1L, // p_1993->g_268
        0UL, // p_1993->g_275
        (-4L), // p_1993->g_308
        &p_1993->g_308, // p_1993->g_307
        &p_1993->g_307, // p_1993->g_306
        4UL, // p_1993->g_327
        {{0L,(-6L),0L,0L,(-6L),0L,0L,(-6L)},{0L,(-6L),0L,0L,(-6L),0L,0L,(-6L)},{0L,(-6L),0L,0L,(-6L),0L,0L,(-6L)},{0L,(-6L),0L,0L,(-6L),0L,0L,(-6L)},{0L,(-6L),0L,0L,(-6L),0L,0L,(-6L)},{0L,(-6L),0L,0L,(-6L),0L,0L,(-6L)},{0L,(-6L),0L,0L,(-6L),0L,0L,(-6L)},{0L,(-6L),0L,0L,(-6L),0L,0L,(-6L)},{0L,(-6L),0L,0L,(-6L),0L,0L,(-6L)}}, // p_1993->g_377
        0x2253L, // p_1993->g_393
        4294967295UL, // p_1993->g_396
        (-7L), // p_1993->g_422
        {{{0xFD3D6E6AL,0xFD3D6E6AL,0xFD3D6E6AL,0xFD3D6E6AL,0xFD3D6E6AL,0xFD3D6E6AL},{0xFD3D6E6AL,0xFD3D6E6AL,0xFD3D6E6AL,0xFD3D6E6AL,0xFD3D6E6AL,0xFD3D6E6AL},{0xFD3D6E6AL,0xFD3D6E6AL,0xFD3D6E6AL,0xFD3D6E6AL,0xFD3D6E6AL,0xFD3D6E6AL},{0xFD3D6E6AL,0xFD3D6E6AL,0xFD3D6E6AL,0xFD3D6E6AL,0xFD3D6E6AL,0xFD3D6E6AL},{0xFD3D6E6AL,0xFD3D6E6AL,0xFD3D6E6AL,0xFD3D6E6AL,0xFD3D6E6AL,0xFD3D6E6AL},{0xFD3D6E6AL,0xFD3D6E6AL,0xFD3D6E6AL,0xFD3D6E6AL,0xFD3D6E6AL,0xFD3D6E6AL},{0xFD3D6E6AL,0xFD3D6E6AL,0xFD3D6E6AL,0xFD3D6E6AL,0xFD3D6E6AL,0xFD3D6E6AL}}}, // p_1993->g_430
        &p_1993->g_109, // p_1993->g_465
        &p_1993->g_465, // p_1993->g_464
        (void*)0, // p_1993->g_482
        18446744073709551615UL, // p_1993->g_494
        0xEE6F2397L, // p_1993->g_513
        &p_1993->g_19[3][0], // p_1993->g_540
        &p_1993->g_540, // p_1993->g_539
        &p_1993->g_133, // p_1993->g_578
        {&p_1993->g_578,&p_1993->g_578,&p_1993->g_578,&p_1993->g_578,&p_1993->g_578}, // p_1993->g_577
        (void*)0, // p_1993->g_612
        {{{&p_1993->g_612},{&p_1993->g_612},{&p_1993->g_612},{&p_1993->g_612},{&p_1993->g_612},{&p_1993->g_612},{&p_1993->g_612},{&p_1993->g_612}},{{&p_1993->g_612},{&p_1993->g_612},{&p_1993->g_612},{&p_1993->g_612},{&p_1993->g_612},{&p_1993->g_612},{&p_1993->g_612},{&p_1993->g_612}},{{&p_1993->g_612},{&p_1993->g_612},{&p_1993->g_612},{&p_1993->g_612},{&p_1993->g_612},{&p_1993->g_612},{&p_1993->g_612},{&p_1993->g_612}},{{&p_1993->g_612},{&p_1993->g_612},{&p_1993->g_612},{&p_1993->g_612},{&p_1993->g_612},{&p_1993->g_612},{&p_1993->g_612},{&p_1993->g_612}},{{&p_1993->g_612},{&p_1993->g_612},{&p_1993->g_612},{&p_1993->g_612},{&p_1993->g_612},{&p_1993->g_612},{&p_1993->g_612},{&p_1993->g_612}},{{&p_1993->g_612},{&p_1993->g_612},{&p_1993->g_612},{&p_1993->g_612},{&p_1993->g_612},{&p_1993->g_612},{&p_1993->g_612},{&p_1993->g_612}},{{&p_1993->g_612},{&p_1993->g_612},{&p_1993->g_612},{&p_1993->g_612},{&p_1993->g_612},{&p_1993->g_612},{&p_1993->g_612},{&p_1993->g_612}},{{&p_1993->g_612},{&p_1993->g_612},{&p_1993->g_612},{&p_1993->g_612},{&p_1993->g_612},{&p_1993->g_612},{&p_1993->g_612},{&p_1993->g_612}},{{&p_1993->g_612},{&p_1993->g_612},{&p_1993->g_612},{&p_1993->g_612},{&p_1993->g_612},{&p_1993->g_612},{&p_1993->g_612},{&p_1993->g_612}},{{&p_1993->g_612},{&p_1993->g_612},{&p_1993->g_612},{&p_1993->g_612},{&p_1993->g_612},{&p_1993->g_612},{&p_1993->g_612},{&p_1993->g_612}}}, // p_1993->g_611
        1L, // p_1993->g_615
        1L, // p_1993->g_619
        (void*)0, // p_1993->g_679
        0x9B51CA28L, // p_1993->g_754
        2L, // p_1993->g_765
        &p_1993->g_765, // p_1993->g_764
        &p_1993->g_764, // p_1993->g_763
        &p_1993->g_136, // p_1993->g_818
        0x6DC9L, // p_1993->g_838
        &p_1993->g_85, // p_1993->g_847
        &p_1993->g_847, // p_1993->g_846
        &p_1993->g_64, // p_1993->g_907
        4294967293UL, // p_1993->g_969
        (void*)0, // p_1993->g_981
        0x09L, // p_1993->g_1016
        &p_1993->g_981, // p_1993->g_1021
        0x478C342BL, // p_1993->g_1062
        &p_1993->g_72, // p_1993->g_1072
        0x3CL, // p_1993->g_1095
        (void*)0, // p_1993->g_1166
        &p_1993->g_1166, // p_1993->g_1165
        0x39F3BD1F4199132CL, // p_1993->g_1175
        0x4D3EC7F75BC49BCEL, // p_1993->g_1177
        (-8L), // p_1993->g_1185
        {{{(void*)0,&p_1993->g_23,(void*)0,(void*)0,&p_1993->g_23},{(void*)0,&p_1993->g_23,(void*)0,(void*)0,&p_1993->g_23},{(void*)0,&p_1993->g_23,(void*)0,(void*)0,&p_1993->g_23},{(void*)0,&p_1993->g_23,(void*)0,(void*)0,&p_1993->g_23},{(void*)0,&p_1993->g_23,(void*)0,(void*)0,&p_1993->g_23},{(void*)0,&p_1993->g_23,(void*)0,(void*)0,&p_1993->g_23},{(void*)0,&p_1993->g_23,(void*)0,(void*)0,&p_1993->g_23},{(void*)0,&p_1993->g_23,(void*)0,(void*)0,&p_1993->g_23},{(void*)0,&p_1993->g_23,(void*)0,(void*)0,&p_1993->g_23}},{{(void*)0,&p_1993->g_23,(void*)0,(void*)0,&p_1993->g_23},{(void*)0,&p_1993->g_23,(void*)0,(void*)0,&p_1993->g_23},{(void*)0,&p_1993->g_23,(void*)0,(void*)0,&p_1993->g_23},{(void*)0,&p_1993->g_23,(void*)0,(void*)0,&p_1993->g_23},{(void*)0,&p_1993->g_23,(void*)0,(void*)0,&p_1993->g_23},{(void*)0,&p_1993->g_23,(void*)0,(void*)0,&p_1993->g_23},{(void*)0,&p_1993->g_23,(void*)0,(void*)0,&p_1993->g_23},{(void*)0,&p_1993->g_23,(void*)0,(void*)0,&p_1993->g_23},{(void*)0,&p_1993->g_23,(void*)0,(void*)0,&p_1993->g_23}},{{(void*)0,&p_1993->g_23,(void*)0,(void*)0,&p_1993->g_23},{(void*)0,&p_1993->g_23,(void*)0,(void*)0,&p_1993->g_23},{(void*)0,&p_1993->g_23,(void*)0,(void*)0,&p_1993->g_23},{(void*)0,&p_1993->g_23,(void*)0,(void*)0,&p_1993->g_23},{(void*)0,&p_1993->g_23,(void*)0,(void*)0,&p_1993->g_23},{(void*)0,&p_1993->g_23,(void*)0,(void*)0,&p_1993->g_23},{(void*)0,&p_1993->g_23,(void*)0,(void*)0,&p_1993->g_23},{(void*)0,&p_1993->g_23,(void*)0,(void*)0,&p_1993->g_23},{(void*)0,&p_1993->g_23,(void*)0,(void*)0,&p_1993->g_23}},{{(void*)0,&p_1993->g_23,(void*)0,(void*)0,&p_1993->g_23},{(void*)0,&p_1993->g_23,(void*)0,(void*)0,&p_1993->g_23},{(void*)0,&p_1993->g_23,(void*)0,(void*)0,&p_1993->g_23},{(void*)0,&p_1993->g_23,(void*)0,(void*)0,&p_1993->g_23},{(void*)0,&p_1993->g_23,(void*)0,(void*)0,&p_1993->g_23},{(void*)0,&p_1993->g_23,(void*)0,(void*)0,&p_1993->g_23},{(void*)0,&p_1993->g_23,(void*)0,(void*)0,&p_1993->g_23},{(void*)0,&p_1993->g_23,(void*)0,(void*)0,&p_1993->g_23},{(void*)0,&p_1993->g_23,(void*)0,(void*)0,&p_1993->g_23}},{{(void*)0,&p_1993->g_23,(void*)0,(void*)0,&p_1993->g_23},{(void*)0,&p_1993->g_23,(void*)0,(void*)0,&p_1993->g_23},{(void*)0,&p_1993->g_23,(void*)0,(void*)0,&p_1993->g_23},{(void*)0,&p_1993->g_23,(void*)0,(void*)0,&p_1993->g_23},{(void*)0,&p_1993->g_23,(void*)0,(void*)0,&p_1993->g_23},{(void*)0,&p_1993->g_23,(void*)0,(void*)0,&p_1993->g_23},{(void*)0,&p_1993->g_23,(void*)0,(void*)0,&p_1993->g_23},{(void*)0,&p_1993->g_23,(void*)0,(void*)0,&p_1993->g_23},{(void*)0,&p_1993->g_23,(void*)0,(void*)0,&p_1993->g_23}}}, // p_1993->g_1214
        0UL, // p_1993->g_1260
        &p_1993->g_422, // p_1993->g_1273
        &p_1993->g_1273, // p_1993->g_1272
        &p_1993->g_619, // p_1993->g_1276
        &p_1993->g_1276, // p_1993->g_1275
        {0x232AAD18L,0x232AAD18L,0x232AAD18L,0x232AAD18L,0x232AAD18L,0x232AAD18L,0x232AAD18L}, // p_1993->g_1325
        0xB2280C22L, // p_1993->g_1326
        0x92EF6B7EL, // p_1993->g_1365
        {{1UL,252UL,1UL,1UL,252UL,1UL,1UL},{1UL,252UL,1UL,1UL,252UL,1UL,1UL},{1UL,252UL,1UL,1UL,252UL,1UL,1UL},{1UL,252UL,1UL,1UL,252UL,1UL,1UL}}, // p_1993->g_1366
        &p_1993->g_846, // p_1993->g_1384
        &p_1993->g_1384, // p_1993->g_1383
        {{{3UL,0x41D7D05017598E99L,3UL},{3UL,0x41D7D05017598E99L,3UL},{3UL,0x41D7D05017598E99L,3UL},{3UL,0x41D7D05017598E99L,3UL},{3UL,0x41D7D05017598E99L,3UL},{3UL,0x41D7D05017598E99L,3UL},{3UL,0x41D7D05017598E99L,3UL},{3UL,0x41D7D05017598E99L,3UL},{3UL,0x41D7D05017598E99L,3UL}},{{3UL,0x41D7D05017598E99L,3UL},{3UL,0x41D7D05017598E99L,3UL},{3UL,0x41D7D05017598E99L,3UL},{3UL,0x41D7D05017598E99L,3UL},{3UL,0x41D7D05017598E99L,3UL},{3UL,0x41D7D05017598E99L,3UL},{3UL,0x41D7D05017598E99L,3UL},{3UL,0x41D7D05017598E99L,3UL},{3UL,0x41D7D05017598E99L,3UL}},{{3UL,0x41D7D05017598E99L,3UL},{3UL,0x41D7D05017598E99L,3UL},{3UL,0x41D7D05017598E99L,3UL},{3UL,0x41D7D05017598E99L,3UL},{3UL,0x41D7D05017598E99L,3UL},{3UL,0x41D7D05017598E99L,3UL},{3UL,0x41D7D05017598E99L,3UL},{3UL,0x41D7D05017598E99L,3UL},{3UL,0x41D7D05017598E99L,3UL}},{{3UL,0x41D7D05017598E99L,3UL},{3UL,0x41D7D05017598E99L,3UL},{3UL,0x41D7D05017598E99L,3UL},{3UL,0x41D7D05017598E99L,3UL},{3UL,0x41D7D05017598E99L,3UL},{3UL,0x41D7D05017598E99L,3UL},{3UL,0x41D7D05017598E99L,3UL},{3UL,0x41D7D05017598E99L,3UL},{3UL,0x41D7D05017598E99L,3UL}},{{3UL,0x41D7D05017598E99L,3UL},{3UL,0x41D7D05017598E99L,3UL},{3UL,0x41D7D05017598E99L,3UL},{3UL,0x41D7D05017598E99L,3UL},{3UL,0x41D7D05017598E99L,3UL},{3UL,0x41D7D05017598E99L,3UL},{3UL,0x41D7D05017598E99L,3UL},{3UL,0x41D7D05017598E99L,3UL},{3UL,0x41D7D05017598E99L,3UL}},{{3UL,0x41D7D05017598E99L,3UL},{3UL,0x41D7D05017598E99L,3UL},{3UL,0x41D7D05017598E99L,3UL},{3UL,0x41D7D05017598E99L,3UL},{3UL,0x41D7D05017598E99L,3UL},{3UL,0x41D7D05017598E99L,3UL},{3UL,0x41D7D05017598E99L,3UL},{3UL,0x41D7D05017598E99L,3UL},{3UL,0x41D7D05017598E99L,3UL}},{{3UL,0x41D7D05017598E99L,3UL},{3UL,0x41D7D05017598E99L,3UL},{3UL,0x41D7D05017598E99L,3UL},{3UL,0x41D7D05017598E99L,3UL},{3UL,0x41D7D05017598E99L,3UL},{3UL,0x41D7D05017598E99L,3UL},{3UL,0x41D7D05017598E99L,3UL},{3UL,0x41D7D05017598E99L,3UL},{3UL,0x41D7D05017598E99L,3UL}},{{3UL,0x41D7D05017598E99L,3UL},{3UL,0x41D7D05017598E99L,3UL},{3UL,0x41D7D05017598E99L,3UL},{3UL,0x41D7D05017598E99L,3UL},{3UL,0x41D7D05017598E99L,3UL},{3UL,0x41D7D05017598E99L,3UL},{3UL,0x41D7D05017598E99L,3UL},{3UL,0x41D7D05017598E99L,3UL},{3UL,0x41D7D05017598E99L,3UL}},{{3UL,0x41D7D05017598E99L,3UL},{3UL,0x41D7D05017598E99L,3UL},{3UL,0x41D7D05017598E99L,3UL},{3UL,0x41D7D05017598E99L,3UL},{3UL,0x41D7D05017598E99L,3UL},{3UL,0x41D7D05017598E99L,3UL},{3UL,0x41D7D05017598E99L,3UL},{3UL,0x41D7D05017598E99L,3UL},{3UL,0x41D7D05017598E99L,3UL}}}, // p_1993->g_1388
        {&p_1993->g_19[3][0],&p_1993->g_133,&p_1993->g_19[3][0],&p_1993->g_19[3][0],&p_1993->g_133,&p_1993->g_19[3][0],&p_1993->g_19[3][0]}, // p_1993->g_1533
        &p_1993->g_327, // p_1993->g_1538
        &p_1993->g_72, // p_1993->g_1564
        0x06855B1238696390L, // p_1993->g_1584
        0x4F9F1A02L, // p_1993->g_1619
        0x57AAL, // p_1993->g_1648
        0UL, // p_1993->g_1656
        0L, // p_1993->g_1680
        &p_1993->g_72, // p_1993->g_1718
        (void*)0, // p_1993->g_1738
        0x19L, // p_1993->g_1749
        0L, // p_1993->g_1753
        &p_1993->g_1185, // p_1993->g_1805
        0L, // p_1993->g_1807
        0x30EAL, // p_1993->g_1810
        {0xBA85386CL}, // p_1993->g_1815
        &p_1993->g_64, // p_1993->g_1877
        {&p_1993->g_615,&p_1993->g_615,&p_1993->g_615,&p_1993->g_615,&p_1993->g_615,&p_1993->g_615,&p_1993->g_615,&p_1993->g_615}, // p_1993->g_1971
        sequence_input[get_global_id(0)], // p_1993->global_0_offset
        sequence_input[get_global_id(1)], // p_1993->global_1_offset
        sequence_input[get_global_id(2)], // p_1993->global_2_offset
        sequence_input[get_local_id(0)], // p_1993->local_0_offset
        sequence_input[get_local_id(1)], // p_1993->local_1_offset
        sequence_input[get_local_id(2)], // p_1993->local_2_offset
        sequence_input[get_group_id(0)], // p_1993->group_0_offset
        sequence_input[get_group_id(1)], // p_1993->group_1_offset
        sequence_input[get_group_id(2)], // p_1993->group_2_offset
    };
    c_1994 = c_1995;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1993);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1993->g_17, "p_1993->g_17", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 2; j++)
        {
            transparent_crc(p_1993->g_19[i][j], "p_1993->g_19[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1993->g_23, "p_1993->g_23", print_hash_value);
    transparent_crc(p_1993->g_25, "p_1993->g_25", print_hash_value);
    transparent_crc(p_1993->g_30, "p_1993->g_30", print_hash_value);
    transparent_crc(p_1993->g_64.f0, "p_1993->g_64.f0", print_hash_value);
    transparent_crc(p_1993->g_85, "p_1993->g_85", print_hash_value);
    transparent_crc(p_1993->g_89, "p_1993->g_89", print_hash_value);
    transparent_crc(p_1993->g_103, "p_1993->g_103", print_hash_value);
    transparent_crc(p_1993->g_106, "p_1993->g_106", print_hash_value);
    transparent_crc(p_1993->g_109, "p_1993->g_109", print_hash_value);
    transparent_crc(p_1993->g_127, "p_1993->g_127", print_hash_value);
    transparent_crc(p_1993->g_133, "p_1993->g_133", print_hash_value);
    transparent_crc(p_1993->g_136, "p_1993->g_136", print_hash_value);
    transparent_crc(p_1993->g_164, "p_1993->g_164", print_hash_value);
    transparent_crc(p_1993->g_172, "p_1993->g_172", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1993->g_174[i], "p_1993->g_174[i]", print_hash_value);

    }
    transparent_crc(p_1993->g_268, "p_1993->g_268", print_hash_value);
    transparent_crc(p_1993->g_275, "p_1993->g_275", print_hash_value);
    transparent_crc(p_1993->g_308, "p_1993->g_308", print_hash_value);
    transparent_crc(p_1993->g_327, "p_1993->g_327", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_1993->g_377[i][j], "p_1993->g_377[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1993->g_393, "p_1993->g_393", print_hash_value);
    transparent_crc(p_1993->g_396, "p_1993->g_396", print_hash_value);
    transparent_crc(p_1993->g_422, "p_1993->g_422", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 7; j++)
        {
            for (k = 0; k < 6; k++)
            {
                transparent_crc(p_1993->g_430[i][j][k], "p_1993->g_430[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1993->g_494, "p_1993->g_494", print_hash_value);
    transparent_crc(p_1993->g_513, "p_1993->g_513", print_hash_value);
    transparent_crc(p_1993->g_615, "p_1993->g_615", print_hash_value);
    transparent_crc(p_1993->g_619, "p_1993->g_619", print_hash_value);
    transparent_crc(p_1993->g_754, "p_1993->g_754", print_hash_value);
    transparent_crc(p_1993->g_765, "p_1993->g_765", print_hash_value);
    transparent_crc(p_1993->g_838, "p_1993->g_838", print_hash_value);
    transparent_crc(p_1993->g_969, "p_1993->g_969", print_hash_value);
    transparent_crc(p_1993->g_1016, "p_1993->g_1016", print_hash_value);
    transparent_crc(p_1993->g_1062, "p_1993->g_1062", print_hash_value);
    transparent_crc(p_1993->g_1095, "p_1993->g_1095", print_hash_value);
    transparent_crc(p_1993->g_1175, "p_1993->g_1175", print_hash_value);
    transparent_crc(p_1993->g_1177, "p_1993->g_1177", print_hash_value);
    transparent_crc(p_1993->g_1185, "p_1993->g_1185", print_hash_value);
    transparent_crc(p_1993->g_1260, "p_1993->g_1260", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1993->g_1325[i], "p_1993->g_1325[i]", print_hash_value);

    }
    transparent_crc(p_1993->g_1326, "p_1993->g_1326", print_hash_value);
    transparent_crc(p_1993->g_1365, "p_1993->g_1365", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 7; j++)
        {
            transparent_crc(p_1993->g_1366[i][j], "p_1993->g_1366[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_1993->g_1388[i][j][k], "p_1993->g_1388[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1993->g_1584, "p_1993->g_1584", print_hash_value);
    transparent_crc(p_1993->g_1619, "p_1993->g_1619", print_hash_value);
    transparent_crc(p_1993->g_1648, "p_1993->g_1648", print_hash_value);
    transparent_crc(p_1993->g_1656, "p_1993->g_1656", print_hash_value);
    transparent_crc(p_1993->g_1680, "p_1993->g_1680", print_hash_value);
    transparent_crc(p_1993->g_1749, "p_1993->g_1749", print_hash_value);
    transparent_crc(p_1993->g_1753, "p_1993->g_1753", print_hash_value);
    transparent_crc(p_1993->g_1807, "p_1993->g_1807", print_hash_value);
    transparent_crc(p_1993->g_1810, "p_1993->g_1810", print_hash_value);
    transparent_crc(p_1993->g_1815.f0, "p_1993->g_1815.f0", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
