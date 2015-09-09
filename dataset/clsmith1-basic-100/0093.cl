// ---fake_divergence -g 47,20,8 -l 1,10,4
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


// Seed: 93

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   uint64_t  f0;
};

struct S1 {
    volatile int32_t g_2;
    volatile int32_t g_3[2];
    int32_t g_4;
    int32_t g_7[4];
    uint8_t g_17;
    uint64_t g_31;
    uint64_t g_35[10];
    int32_t g_47;
    int32_t g_49;
    int32_t g_80;
    uint32_t g_92;
    int16_t g_101;
    struct S0 g_105;
    uint8_t g_111;
    int8_t g_131;
    uint64_t * volatile g_133;
    uint64_t * volatile *g_132;
    uint16_t g_136;
    int8_t g_171;
    uint32_t g_181[5];
    uint32_t *g_180;
    uint32_t *g_182;
    uint16_t g_199;
    uint64_t g_202;
    int32_t *g_207[3][4];
    uint16_t *g_234;
    uint32_t g_238;
    uint32_t g_253;
    uint64_t g_318;
    struct S0 g_410;
    int16_t *g_487;
    uint64_t *g_498;
    uint64_t **g_497;
    uint32_t g_518;
    int8_t g_542;
    struct S0 *g_560;
    volatile uint16_t g_599;
    volatile uint16_t *g_598;
    volatile uint16_t **g_597;
    volatile uint16_t ***g_596[10];
    uint8_t g_622;
    uint32_t g_657;
    volatile int32_t g_710[2];
    volatile int32_t g_711;
    volatile int32_t g_712;
    volatile int32_t *g_709[6];
    uint16_t **g_727;
    struct S0 g_735[7];
    uint32_t g_768;
    uint16_t ***g_783;
    uint16_t ****g_782;
    int8_t g_848;
    int64_t g_868;
    int8_t *g_938;
    volatile uint8_t g_964[10];
    volatile uint8_t *g_963;
    volatile uint8_t **g_962;
    struct S0 **g_1048;
    int64_t g_1056[8];
    int8_t g_1085;
    uint32_t g_1092;
    int32_t *g_1193;
    volatile int16_t g_1197;
    struct S0 * volatile g_1208;
    int8_t g_1228;
    int16_t **g_1263[5];
    int32_t ** volatile g_1341;
    int32_t *g_1355[1][10][6];
    struct S0 * volatile g_1445;
    int64_t g_1561;
    int64_t g_1592;
    struct S0 * volatile g_1641[10][7];
    uint16_t * volatile * volatile *** volatile *g_1642;
    volatile int32_t ** volatile g_1659;
    volatile int32_t ** volatile g_1821;
    volatile uint16_t g_1827;
    int32_t g_1857;
    uint64_t g_1866;
    volatile int64_t g_1936;
    int32_t ** volatile g_1957;
    uint32_t * volatile *g_2006;
    uint32_t ** volatile g_2042;
    uint32_t ** volatile *g_2041;
    uint32_t ** volatile ** volatile g_2040;
    uint32_t **g_2045;
    uint32_t ***g_2044[3];
    uint32_t ****g_2043;
    int8_t g_2067;
    uint64_t g_2114;
    int8_t **g_2120;
    int32_t ** volatile g_2131;
    int32_t g_2132[8][8][4];
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
uint8_t  func_1(struct S1 * p_2136);
int32_t  func_8(uint32_t  p_9, int32_t  p_10, int32_t  p_11, uint16_t  p_12, struct S1 * p_2136);
uint64_t  func_18(uint32_t  p_19, int8_t  p_20, int16_t  p_21, int32_t  p_22, struct S1 * p_2136);
uint32_t  func_23(uint32_t  p_24, struct S1 * p_2136);
int32_t * func_36(uint64_t * p_37, int32_t  p_38, uint32_t  p_39, int32_t  p_40, struct S1 * p_2136);
int8_t  func_50(int32_t * p_51, uint64_t ** p_52, int32_t  p_53, uint64_t  p_54, struct S1 * p_2136);
uint8_t  func_55(uint64_t ** p_56, uint64_t  p_57, uint32_t  p_58, uint32_t  p_59, uint64_t * p_60, struct S1 * p_2136);
uint64_t ** func_61(struct S0  p_62, int64_t  p_63, int32_t * p_64, uint32_t  p_65, int16_t  p_66, struct S1 * p_2136);
struct S0  func_67(int64_t  p_68, uint32_t  p_69, uint32_t  p_70, int32_t  p_71, int8_t  p_72, struct S1 * p_2136);
int64_t  func_75(int32_t  p_76, uint16_t  p_77, struct S1 * p_2136);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_2136->g_4 p_2136->g_2 p_2136->g_47
 * writes: p_2136->g_4 p_2136->g_2
 */
uint8_t  func_1(struct S1 * p_2136)
{ /* block id: 4 */
    int16_t l_16 = 8L;
    int32_t l_1810 = (-7L);
    int16_t l_1823 = (-5L);
    int32_t l_1826 = 7L;
    uint32_t l_1938 = 0x555BBA4DL;
    uint16_t ***l_1945 = (void*)0;
    int8_t l_1980 = 1L;
    int8_t l_2002[5][10] = {{0L,0x18L,0x06L,0L,3L,0L,0L,0x57L,0L,0L},{0L,0x18L,0x06L,0L,3L,0L,0L,0x57L,0L,0L},{0L,0x18L,0x06L,0L,3L,0L,0L,0x57L,0L,0L},{0L,0x18L,0x06L,0L,3L,0L,0L,0x57L,0L,0L},{0L,0x18L,0x06L,0L,3L,0L,0L,0x57L,0L,0L}};
    uint32_t **l_2005 = &p_2136->g_182;
    int32_t *l_2023 = &p_2136->g_47;
    int16_t l_2066 = 0x5063L;
    uint16_t l_2069 = 0UL;
    int64_t *l_2078 = &p_2136->g_1056[1];
    uint32_t *****l_2116[5];
    int i, j;
    for (i = 0; i < 5; i++)
        l_2116[i] = &p_2136->g_2043;
    for (p_2136->g_4 = 0; (p_2136->g_4 > (-3)); --p_2136->g_4)
    { /* block id: 7 */
        int32_t l_29 = 0x4512DC6DL;
        uint64_t *l_34 = &p_2136->g_35[7];
        uint32_t **l_1799 = (void*)0;
        int32_t l_1814 = 1L;
        int32_t l_1815 = 0x1D992A73L;
        int32_t l_1817[6] = {0x63AF653AL,0x63AF653AL,0x63AF653AL,0x63AF653AL,0x63AF653AL,0x63AF653AL};
        uint32_t *l_1849 = (void*)0;
        uint8_t *l_1892 = &p_2136->g_17;
        uint32_t *l_1964 = (void*)0;
        int16_t **l_1969 = &p_2136->g_487;
        int16_t *l_1983 = &l_16;
        int32_t *l_1984 = (void*)0;
        int32_t *l_1985 = &l_1817[1];
        int64_t *l_2001 = &p_2136->g_1561;
        int64_t **l_2000 = &l_2001;
        uint32_t l_2004 = 0x8DE2F5C2L;
        int32_t l_2007 = 0x44856B47L;
        int16_t l_2048[4] = {6L,6L,6L,6L};
        int64_t l_2049 = (-3L);
        uint16_t ***l_2050 = &p_2136->g_727;
        int i;
        p_2136->g_2 |= (-10L);
    }
    return (*l_2023);
}


/* ------------------------------------------ */
/* 
 * reads : p_2136->g_962 p_2136->g_963 p_2136->g_964 p_2136->g_735 p_2136->g_182 p_2136->g_181 p_2136->g_180 p_2136->g_938 p_2136->g_727 p_2136->g_234 p_2136->g_136 p_2136->g_3 p_2136->g_318 p_2136->g_1056 p_2136->g_868 p_2136->g_47 p_2136->g_31 p_2136->g_498 p_2136->g_238 p_2136->g_1197 p_2136->g_131 p_2136->g_35 p_2136->g_132 p_2136->g_7 p_2136->g_105.f0 p_2136->g_410 p_2136->g_1341 p_2136->g_1355 p_2136->g_497 p_2136->g_1193 p_2136->g_49 p_2136->g_1659 p_2136->g_709
 * writes: p_2136->g_131 p_2136->g_542 p_2136->g_1085 p_2136->g_136 p_2136->g_1056 p_2136->g_868 p_2136->g_768 p_2136->g_181 p_2136->g_47 p_2136->g_35 p_2136->g_105.f0 p_2136->g_202 p_2136->g_171 p_2136->g_207 p_2136->g_1228 p_2136->g_1355 p_2136->g_318 p_2136->g_49 p_2136->g_709
 */
int32_t  func_8(uint32_t  p_9, int32_t  p_10, int32_t  p_11, uint16_t  p_12, struct S1 * p_2136)
{ /* block id: 829 */
    uint64_t *l_1742 = &p_2136->g_318;
    struct S0 l_1749 = {18446744073709551615UL};
    int8_t l_1754 = 2L;
    int8_t *l_1755 = &p_2136->g_542;
    uint32_t l_1756 = 4294967295UL;
    int32_t **l_1757 = &p_2136->g_1355[0][2][2];
    uint64_t l_1770 = 1UL;
    int32_t l_1787[1];
    volatile int32_t **l_1788 = &p_2136->g_709[2];
    int i;
    for (i = 0; i < 1; i++)
        l_1787[i] = 0x2DFD7860L;
    (*l_1757) = func_36(l_1742, (safe_rshift_func_uint8_t_u_s(((safe_mod_func_uint8_t_u_u((**p_2136->g_962), (safe_add_func_int16_t_s_s((~((p_2136->g_735[6] , (!(((((*l_1755) = (l_1749 , ((*p_2136->g_938) = (safe_mul_func_int8_t_s_s((safe_sub_func_uint16_t_u_u((p_10 < (*p_2136->g_182)), ((((l_1754 = (+l_1749.f0)) != (p_10 , (*p_2136->g_180))) <= p_9) != 1UL))), 0xC0L))))) , l_1754) != 0L) ^ l_1749.f0))) || p_12)), 9L)))) > l_1749.f0), 3)), l_1749.f0, l_1756, p_2136);
    for (p_12 = (-14); (p_12 > 23); p_12 = safe_add_func_int8_t_s_s(p_12, 1))
    { /* block id: 836 */
        int16_t ***l_1782 = &p_2136->g_1263[3];
        int16_t ****l_1783 = &l_1782;
        int32_t l_1786 = 0x70ABF951L;
        (*p_2136->g_1193) |= (safe_add_func_int32_t_s_s((safe_mul_func_int8_t_s_s(((safe_rshift_func_uint8_t_u_s(((((**p_2136->g_727)++) , (1UL && ((safe_div_func_uint32_t_u_u(4UL, l_1770)) == ((safe_unary_minus_func_uint32_t_u((safe_div_func_uint64_t_u_u(((*l_1742)++), p_9)))) < (safe_mul_func_int8_t_s_s((safe_mod_func_int64_t_s_s((p_9 ^ ((safe_add_func_int16_t_s_s((((((((((*l_1783) = l_1782) != (((p_11 || ((l_1786 , (void*)0) != &p_2136->g_253)) >= p_11) , &p_2136->g_1263[2])) >= (**p_2136->g_497)) >= 4L) || p_11) & (*p_2136->g_182)) | p_10) , p_9), l_1787[0])) < 0x7465L)), 0x914A100A0058B0DBL)), (*p_2136->g_963))))))) , (**p_2136->g_962)), 1)) ^ l_1786), 247UL)), GROUP_DIVERGE(1, 1)));
    }
    (*l_1788) = (*p_2136->g_1659);
    return p_11;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes: p_2136->g_80
 */
uint64_t  func_18(uint32_t  p_19, int8_t  p_20, int16_t  p_21, int32_t  p_22, struct S1 * p_2136)
{ /* block id: 824 */
    int32_t *l_1733 = &p_2136->g_80;
    int32_t *l_1734 = (void*)0;
    int32_t *l_1735 = &p_2136->g_49;
    int32_t *l_1736[5] = {&p_2136->g_80,&p_2136->g_80,&p_2136->g_80,&p_2136->g_80,&p_2136->g_80};
    uint32_t l_1737 = 0x3C852535L;
    uint32_t l_1740 = 0x0A7713B3L;
    int8_t l_1741 = 0x04L;
    int i;
    ++l_1737;
    p_22 |= l_1740;
    (*l_1733) = 0x3F47DE3EL;
    return l_1741;
}


/* ------------------------------------------ */
/* 
 * reads : p_2136->g_182 p_2136->g_181
 * writes:
 */
uint32_t  func_23(uint32_t  p_24, struct S1 * p_2136)
{ /* block id: 14 */
    uint64_t *l_41 = &p_2136->g_35[5];
    uint64_t **l_42 = &l_41;
    int32_t *l_45 = (void*)0;
    int32_t *l_46 = &p_2136->g_47;
    int32_t *l_48 = &p_2136->g_49;
    uint32_t l_660 = 0x7BAFAAE0L;
    uint8_t *l_1079 = &p_2136->g_622;
    int32_t l_1080 = 7L;
    uint32_t *l_1090 = &p_2136->g_238;
    uint32_t *l_1091[3];
    uint16_t l_1093 = 1UL;
    int32_t **l_1356 = &p_2136->g_1355[0][5][4];
    int32_t l_1379[5];
    int16_t l_1383 = 0x493CL;
    int32_t l_1388 = 1L;
    uint16_t l_1405 = 65535UL;
    int8_t l_1429 = 0x79L;
    int32_t **l_1430[6] = {&p_2136->g_1355[0][2][2],&p_2136->g_1355[0][2][2],&p_2136->g_1355[0][2][2],&p_2136->g_1355[0][2][2],&p_2136->g_1355[0][2][2],&p_2136->g_1355[0][2][2]};
    uint32_t **l_1531 = &p_2136->g_180;
    int16_t *l_1544 = &l_1383;
    struct S0 l_1559 = {0xC0E981C2B5473DE0L};
    int8_t l_1618 = 0x20L;
    int32_t *l_1637[8][3][6] = {{{&p_2136->g_4,&p_2136->g_49,&l_1379[2],&p_2136->g_47,&p_2136->g_47,&l_1379[1]},{&p_2136->g_4,&p_2136->g_49,&l_1379[2],&p_2136->g_47,&p_2136->g_47,&l_1379[1]},{&p_2136->g_4,&p_2136->g_49,&l_1379[2],&p_2136->g_47,&p_2136->g_47,&l_1379[1]}},{{&p_2136->g_4,&p_2136->g_49,&l_1379[2],&p_2136->g_47,&p_2136->g_47,&l_1379[1]},{&p_2136->g_4,&p_2136->g_49,&l_1379[2],&p_2136->g_47,&p_2136->g_47,&l_1379[1]},{&p_2136->g_4,&p_2136->g_49,&l_1379[2],&p_2136->g_47,&p_2136->g_47,&l_1379[1]}},{{&p_2136->g_4,&p_2136->g_49,&l_1379[2],&p_2136->g_47,&p_2136->g_47,&l_1379[1]},{&p_2136->g_4,&p_2136->g_49,&l_1379[2],&p_2136->g_47,&p_2136->g_47,&l_1379[1]},{&p_2136->g_4,&p_2136->g_49,&l_1379[2],&p_2136->g_47,&p_2136->g_47,&l_1379[1]}},{{&p_2136->g_4,&p_2136->g_49,&l_1379[2],&p_2136->g_47,&p_2136->g_47,&l_1379[1]},{&p_2136->g_4,&p_2136->g_49,&l_1379[2],&p_2136->g_47,&p_2136->g_47,&l_1379[1]},{&p_2136->g_4,&p_2136->g_49,&l_1379[2],&p_2136->g_47,&p_2136->g_47,&l_1379[1]}},{{&p_2136->g_4,&p_2136->g_49,&l_1379[2],&p_2136->g_47,&p_2136->g_47,&l_1379[1]},{&p_2136->g_4,&p_2136->g_49,&l_1379[2],&p_2136->g_47,&p_2136->g_47,&l_1379[1]},{&p_2136->g_4,&p_2136->g_49,&l_1379[2],&p_2136->g_47,&p_2136->g_47,&l_1379[1]}},{{&p_2136->g_4,&p_2136->g_49,&l_1379[2],&p_2136->g_47,&p_2136->g_47,&l_1379[1]},{&p_2136->g_4,&p_2136->g_49,&l_1379[2],&p_2136->g_47,&p_2136->g_47,&l_1379[1]},{&p_2136->g_4,&p_2136->g_49,&l_1379[2],&p_2136->g_47,&p_2136->g_47,&l_1379[1]}},{{&p_2136->g_4,&p_2136->g_49,&l_1379[2],&p_2136->g_47,&p_2136->g_47,&l_1379[1]},{&p_2136->g_4,&p_2136->g_49,&l_1379[2],&p_2136->g_47,&p_2136->g_47,&l_1379[1]},{&p_2136->g_4,&p_2136->g_49,&l_1379[2],&p_2136->g_47,&p_2136->g_47,&l_1379[1]}},{{&p_2136->g_4,&p_2136->g_49,&l_1379[2],&p_2136->g_47,&p_2136->g_47,&l_1379[1]},{&p_2136->g_4,&p_2136->g_49,&l_1379[2],&p_2136->g_47,&p_2136->g_47,&l_1379[1]},{&p_2136->g_4,&p_2136->g_49,&l_1379[2],&p_2136->g_47,&p_2136->g_47,&l_1379[1]}}};
    int8_t l_1638 = 0x4DL;
    uint16_t ***l_1660 = (void*)0;
    uint64_t **l_1662 = &l_41;
    int16_t l_1665 = (-5L);
    int32_t l_1693 = (-1L);
    uint64_t l_1694[10] = {0x1012C5280CCDFCEDL,0xD980CF41153AD099L,0x895DDD48736FB4E4L,0xD980CF41153AD099L,0x1012C5280CCDFCEDL,0x1012C5280CCDFCEDL,0xD980CF41153AD099L,0x895DDD48736FB4E4L,0xD980CF41153AD099L,0x1012C5280CCDFCEDL};
    int16_t l_1717 = 1L;
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_1091[i] = &p_2136->g_1092;
    for (i = 0; i < 5; i++)
        l_1379[i] = 1L;
    return (*p_2136->g_182);
}


/* ------------------------------------------ */
/* 
 * reads : p_2136->g_1085 p_2136->g_727 p_2136->g_234 p_2136->g_136 p_2136->g_3 p_2136->g_318 p_2136->g_1056 p_2136->g_868 p_2136->g_47 p_2136->g_31 p_2136->g_498 p_2136->g_238 p_2136->g_1197 p_2136->g_938 p_2136->g_131 p_2136->g_35 p_2136->g_132 p_2136->g_7 p_2136->g_105.f0 p_2136->g_182 p_2136->g_181 p_2136->g_410 p_2136->g_1341 p_2136->g_1228 p_2136->g_1355
 * writes: p_2136->g_1085 p_2136->g_542 p_2136->g_136 p_2136->g_1056 p_2136->g_868 p_2136->g_768 p_2136->g_181 p_2136->g_47 p_2136->g_35 p_2136->g_105.f0 p_2136->g_202 p_2136->g_171 p_2136->g_207 p_2136->g_1228
 */
int32_t * func_36(uint64_t * p_37, int32_t  p_38, uint32_t  p_39, int32_t  p_40, struct S1 * p_2136)
{ /* block id: 536 */
    struct S0 l_1097 = {0x06D9FD1C91E87FAFL};
    struct S0 **l_1120 = &p_2136->g_560;
    uint16_t ****l_1138 = &p_2136->g_783;
    int32_t l_1141 = 0x4B596F0EL;
    int32_t l_1150[1][10] = {{0x6D767124L,0x6D767124L,0x6D767124L,0x6D767124L,0x6D767124L,0x6D767124L,0x6D767124L,0x6D767124L,0x6D767124L,0x6D767124L}};
    uint32_t l_1153[4] = {0x0C85D750L,0x0C85D750L,0x0C85D750L,0x0C85D750L};
    int8_t l_1198 = 0x2AL;
    int32_t *l_1204 = &l_1150[0][6];
    struct S0 l_1261[7] = {{1UL},{18446744073709551615UL},{1UL},{1UL},{18446744073709551615UL},{1UL},{1UL}};
    int32_t **l_1338 = &p_2136->g_207[2][3];
    int32_t ***l_1337 = &l_1338;
    int32_t l_1339 = 0x5B22F031L;
    int8_t l_1340 = 0x2EL;
    uint16_t l_1350[4];
    int32_t *l_1353 = &p_2136->g_7[0];
    int32_t *l_1354 = &l_1150[0][8];
    int i, j;
    for (i = 0; i < 4; i++)
        l_1350[i] = 65530UL;
    for (p_2136->g_1085 = 0; (p_2136->g_1085 <= 22); ++p_2136->g_1085)
    { /* block id: 539 */
        struct S0 l_1096 = {0x8D1516336910F0ADL};
        int32_t l_1115 = 0x6B7848D5L;
        struct S0 **l_1121 = &p_2136->g_560;
        uint16_t *l_1143 = &p_2136->g_199;
        int32_t **l_1145[1][10][3];
        int8_t l_1191 = 5L;
        uint16_t l_1201[2][5][10] = {{{0xA4B2L,0UL,1UL,4UL,1UL,0UL,0xA4B2L,0x4E17L,65526UL,65526UL},{0xA4B2L,0UL,1UL,4UL,1UL,0UL,0xA4B2L,0x4E17L,65526UL,65526UL},{0xA4B2L,0UL,1UL,4UL,1UL,0UL,0xA4B2L,0x4E17L,65526UL,65526UL},{0xA4B2L,0UL,1UL,4UL,1UL,0UL,0xA4B2L,0x4E17L,65526UL,65526UL},{0xA4B2L,0UL,1UL,4UL,1UL,0UL,0xA4B2L,0x4E17L,65526UL,65526UL}},{{0xA4B2L,0UL,1UL,4UL,1UL,0UL,0xA4B2L,0x4E17L,65526UL,65526UL},{0xA4B2L,0UL,1UL,4UL,1UL,0UL,0xA4B2L,0x4E17L,65526UL,65526UL},{0xA4B2L,0UL,1UL,4UL,1UL,0UL,0xA4B2L,0x4E17L,65526UL,65526UL},{0xA4B2L,0UL,1UL,4UL,1UL,0UL,0xA4B2L,0x4E17L,65526UL,65526UL},{0xA4B2L,0UL,1UL,4UL,1UL,0UL,0xA4B2L,0x4E17L,65526UL,65526UL}}};
        int i, j, k;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 10; j++)
            {
                for (k = 0; k < 3; k++)
                    l_1145[i][j][k] = &p_2136->g_207[2][3];
            }
        }
        l_1097 = l_1096;
        for (p_2136->g_542 = (-23); (p_2136->g_542 <= (-18)); ++p_2136->g_542)
        { /* block id: 543 */
            int64_t *l_1104 = &p_2136->g_1056[4];
            int64_t *l_1105 = &p_2136->g_868;
            int32_t l_1106 = (-6L);
            if (l_1096.f0)
                break;
            p_38 = (safe_rshift_func_uint16_t_u_u((safe_sub_func_int16_t_s_s((((7L != ((*l_1105) ^= (((**p_2136->g_727) ^= 65529UL) != (((p_2136->g_3[0] != ((-2L) && p_38)) , ((*l_1104) ^= p_2136->g_318)) , p_39)))) || l_1106) | (safe_lshift_func_int16_t_s_s((safe_mod_func_int64_t_s_s((((l_1096.f0 , l_1096.f0) && l_1097.f0) < p_40), 18446744073709551615UL)), l_1106))), l_1097.f0)), 4));
            for (p_2136->g_768 = 0; p_2136->g_768 < 5; p_2136->g_768 += 1)
            {
                p_2136->g_181[p_2136->g_768] = 8UL;
            }
        }
    }
    for (p_2136->g_47 = 4; (p_2136->g_47 >= 0); p_2136->g_47 -= 1)
    { /* block id: 643 */
        return &p_2136->g_7[1];
    }
    (*p_2136->g_1341) = (p_40 , (func_67((safe_mod_func_int64_t_s_s(p_2136->g_47, ((((safe_unary_minus_func_uint16_t_u((safe_mul_func_uint8_t_u_u(FAKE_DIVERGE(p_2136->local_2_offset, get_local_id(2), 10), (safe_sub_func_int64_t_s_s(p_38, (p_2136->g_31 , (p_38 , (safe_sub_func_uint64_t_u_u((safe_sub_func_uint32_t_u_u((safe_rshift_func_int16_t_s_s(((((((*l_1337) = &l_1204) == &p_2136->g_1193) , &l_1198) != (void*)0) & p_40), 0)), l_1339)), (*l_1204))))))))))) != l_1340) <= (*l_1204)) , (*p_2136->g_498)))), p_38, p_2136->g_238, p_2136->g_1197, (*p_2136->g_938), p_2136) , &p_38));
    for (p_2136->g_1228 = 0; (p_2136->g_1228 <= 4); p_2136->g_1228 += 1)
    { /* block id: 650 */
        int32_t *l_1342 = &p_2136->g_47;
        int32_t *l_1343 = (void*)0;
        int32_t *l_1344 = &l_1150[0][6];
        int32_t *l_1345 = (void*)0;
        int32_t *l_1346 = &l_1141;
        int32_t l_1347 = 0x3B1AAD83L;
        int32_t *l_1348 = &l_1150[0][6];
        int32_t *l_1349[3];
        int i;
        for (i = 0; i < 3; i++)
            l_1349[i] = (void*)0;
        ++l_1350[2];
        return l_1353;
    }
    return p_2136->g_1355[0][2][2];
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes: p_2136->g_207
 */
int8_t  func_50(int32_t * p_51, uint64_t ** p_52, int32_t  p_53, uint64_t  p_54, struct S1 * p_2136)
{ /* block id: 530 */
    int32_t **l_1081 = &p_2136->g_207[1][1];
    int32_t *l_1082 = &p_2136->g_80;
    int32_t *l_1083 = &p_2136->g_80;
    int32_t *l_1084[3][3][4] = {{{&p_2136->g_7[0],&p_2136->g_7[1],&p_2136->g_80,&p_2136->g_7[0]},{&p_2136->g_7[0],&p_2136->g_7[1],&p_2136->g_80,&p_2136->g_7[0]},{&p_2136->g_7[0],&p_2136->g_7[1],&p_2136->g_80,&p_2136->g_7[0]}},{{&p_2136->g_7[0],&p_2136->g_7[1],&p_2136->g_80,&p_2136->g_7[0]},{&p_2136->g_7[0],&p_2136->g_7[1],&p_2136->g_80,&p_2136->g_7[0]},{&p_2136->g_7[0],&p_2136->g_7[1],&p_2136->g_80,&p_2136->g_7[0]}},{{&p_2136->g_7[0],&p_2136->g_7[1],&p_2136->g_80,&p_2136->g_7[0]},{&p_2136->g_7[0],&p_2136->g_7[1],&p_2136->g_80,&p_2136->g_7[0]},{&p_2136->g_7[0],&p_2136->g_7[1],&p_2136->g_80,&p_2136->g_7[0]}}};
    int64_t l_1086[5];
    uint64_t l_1087[6][1][5] = {{{0x65ED5993F0DC0A54L,18446744073709551610UL,0x65ED5993F0DC0A54L,0x65ED5993F0DC0A54L,18446744073709551610UL}},{{0x65ED5993F0DC0A54L,18446744073709551610UL,0x65ED5993F0DC0A54L,0x65ED5993F0DC0A54L,18446744073709551610UL}},{{0x65ED5993F0DC0A54L,18446744073709551610UL,0x65ED5993F0DC0A54L,0x65ED5993F0DC0A54L,18446744073709551610UL}},{{0x65ED5993F0DC0A54L,18446744073709551610UL,0x65ED5993F0DC0A54L,0x65ED5993F0DC0A54L,18446744073709551610UL}},{{0x65ED5993F0DC0A54L,18446744073709551610UL,0x65ED5993F0DC0A54L,0x65ED5993F0DC0A54L,18446744073709551610UL}},{{0x65ED5993F0DC0A54L,18446744073709551610UL,0x65ED5993F0DC0A54L,0x65ED5993F0DC0A54L,18446744073709551610UL}}};
    int i, j, k;
    for (i = 0; i < 5; i++)
        l_1086[i] = 0x5BD5438BB514926DL;
    (*l_1081) = (void*)0;
    --l_1087[5][0][4];
    return p_54;
}


/* ------------------------------------------ */
/* 
 * reads : p_2136->g_92 p_2136->g_182 p_2136->g_181 p_2136->g_7 p_2136->g_234 p_2136->g_136 p_2136->g_238 p_2136->g_735 p_2136->g_4 p_2136->g_622
 * writes: p_2136->g_92 p_2136->g_207 p_2136->g_735 p_2136->g_238 p_2136->g_105
 */
uint8_t  func_55(uint64_t ** p_56, uint64_t  p_57, uint32_t  p_58, uint32_t  p_59, uint64_t * p_60, struct S1 * p_2136)
{ /* block id: 317 */
    uint16_t **l_671 = (void*)0;
    uint16_t ***l_670 = &l_671;
    uint16_t ****l_669 = &l_670;
    int32_t l_672 = 5L;
    int32_t l_677[6] = {0x743C3B33L,0x7514122EL,0x743C3B33L,0x743C3B33L,0x7514122EL,0x743C3B33L};
    uint8_t *l_705 = &p_2136->g_622;
    int32_t l_706 = 3L;
    int32_t *l_859 = &l_677[2];
    int32_t l_866 = 0x65F4DCB9L;
    int8_t l_870 = 0x6FL;
    int16_t *l_879[4][1][9] = {{{(void*)0,&p_2136->g_101,(void*)0,(void*)0,&p_2136->g_101,(void*)0,(void*)0,&p_2136->g_101,(void*)0}},{{(void*)0,&p_2136->g_101,(void*)0,(void*)0,&p_2136->g_101,(void*)0,(void*)0,&p_2136->g_101,(void*)0}},{{(void*)0,&p_2136->g_101,(void*)0,(void*)0,&p_2136->g_101,(void*)0,(void*)0,&p_2136->g_101,(void*)0}},{{(void*)0,&p_2136->g_101,(void*)0,(void*)0,&p_2136->g_101,(void*)0,(void*)0,&p_2136->g_101,(void*)0}}};
    uint16_t *l_1054 = &p_2136->g_199;
    uint32_t l_1059 = 5UL;
    struct S0 l_1062 = {1UL};
    int8_t l_1064 = 6L;
    uint64_t l_1065[8] = {0x7B346F1AB7BEB984L,18446744073709551608UL,0x7B346F1AB7BEB984L,0x7B346F1AB7BEB984L,18446744073709551608UL,0x7B346F1AB7BEB984L,0x7B346F1AB7BEB984L,18446744073709551608UL};
    struct S0 *l_1074 = &p_2136->g_735[0];
    int i, j, k;
    for (p_2136->g_92 = 0; (p_2136->g_92 <= 44); p_2136->g_92 = safe_add_func_int8_t_s_s(p_2136->g_92, 8))
    { /* block id: 320 */
        uint16_t **l_676 = (void*)0;
        int32_t l_679 = 1L;
        int32_t *l_693[2];
        uint8_t *l_704 = &p_2136->g_111;
        int8_t *l_707 = &p_2136->g_542;
        int16_t **l_708 = &p_2136->g_487;
        struct S0 l_777[4] = {{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL},{18446744073709551615UL}};
        uint32_t l_811 = 1UL;
        uint32_t l_1026 = 0UL;
        int32_t l_1058 = (-1L);
        int i;
        for (i = 0; i < 2; i++)
            l_693[i] = &l_679;
        if ((safe_rshift_func_uint8_t_u_u(p_58, ((safe_unary_minus_func_uint32_t_u(p_58)) || ((*p_2136->g_182) && (p_59 < 0x6BL))))))
        { /* block id: 321 */
            uint16_t **l_675[7][8] = {{&p_2136->g_234,&p_2136->g_234,&p_2136->g_234,&p_2136->g_234,&p_2136->g_234,&p_2136->g_234,&p_2136->g_234,&p_2136->g_234},{&p_2136->g_234,&p_2136->g_234,&p_2136->g_234,&p_2136->g_234,&p_2136->g_234,&p_2136->g_234,&p_2136->g_234,&p_2136->g_234},{&p_2136->g_234,&p_2136->g_234,&p_2136->g_234,&p_2136->g_234,&p_2136->g_234,&p_2136->g_234,&p_2136->g_234,&p_2136->g_234},{&p_2136->g_234,&p_2136->g_234,&p_2136->g_234,&p_2136->g_234,&p_2136->g_234,&p_2136->g_234,&p_2136->g_234,&p_2136->g_234},{&p_2136->g_234,&p_2136->g_234,&p_2136->g_234,&p_2136->g_234,&p_2136->g_234,&p_2136->g_234,&p_2136->g_234,&p_2136->g_234},{&p_2136->g_234,&p_2136->g_234,&p_2136->g_234,&p_2136->g_234,&p_2136->g_234,&p_2136->g_234,&p_2136->g_234,&p_2136->g_234},{&p_2136->g_234,&p_2136->g_234,&p_2136->g_234,&p_2136->g_234,&p_2136->g_234,&p_2136->g_234,&p_2136->g_234,&p_2136->g_234}};
            int32_t l_678[3][1][10] = {{{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)}},{{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)}},{{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)}}};
            int32_t *l_680 = (void*)0;
            int32_t *l_681 = &l_677[5];
            int32_t *l_682 = &l_678[1][0][0];
            int i, j, k;
            (*l_682) = ((*l_681) = (((safe_unary_minus_func_int64_t_s((l_679 ^= ((((1L > (l_672 = (&p_2136->g_596[0] == l_669))) == ((p_59 != (l_675[2][6] != l_676)) > (l_677[2] < (!p_2136->g_92)))) , ((*p_2136->g_234) || l_677[3])) | l_678[1][0][1])))) || p_59) | 0UL));
        }
        else
        { /* block id: 326 */
            int32_t *l_683 = &p_2136->g_80;
            int32_t **l_684 = &p_2136->g_207[2][3];
            (*l_684) = l_683;
        }
    }
    (*l_1074) = l_1062;
    for (p_2136->g_238 = (-4); (p_2136->g_238 <= 57); p_2136->g_238 = safe_add_func_int8_t_s_s(p_2136->g_238, 9))
    { /* block id: 521 */
        int32_t *l_1077 = &p_2136->g_4;
        int32_t **l_1078 = &p_2136->g_207[2][3];
        p_2136->g_105 = ((*l_1074) = (*l_1074));
        (*l_1078) = l_1077;
        if ((*l_1077))
            break;
        if (p_58)
            break;
    }
    return p_2136->g_622;
}


/* ------------------------------------------ */
/* 
 * reads : p_2136->g_199 p_2136->g_7 p_2136->g_234 p_2136->g_136 p_2136->g_410.f0 p_2136->g_182 p_2136->g_181 p_2136->g_238 p_2136->g_80 p_2136->g_35 p_2136->g_101 p_2136->g_31 p_2136->g_497 p_2136->g_202 p_2136->g_92 p_2136->g_131 p_2136->g_518 p_2136->g_111 p_2136->g_498 p_2136->g_171 p_2136->g_4 p_2136->g_207 p_2136->g_318 p_2136->g_596 p_2136->g_622 p_2136->g_253
 * writes: p_2136->g_180 p_2136->g_199 p_2136->g_136 p_2136->g_101 p_2136->g_181 p_2136->g_80 p_2136->g_487 p_2136->g_253 p_2136->g_171 p_2136->g_207 p_2136->g_238 p_2136->g_182 p_2136->g_131 p_2136->g_105.f0 p_2136->g_518 p_2136->g_318 p_2136->g_560 p_2136->g_111 p_2136->g_622 p_2136->g_657
 */
uint64_t ** func_61(struct S0  p_62, int64_t  p_63, int32_t * p_64, uint32_t  p_65, int16_t  p_66, struct S1 * p_2136)
{ /* block id: 181 */
    uint32_t *l_413[3][3][2] = {{{&p_2136->g_181[2],&p_2136->g_181[2]},{&p_2136->g_181[2],&p_2136->g_181[2]},{&p_2136->g_181[2],&p_2136->g_181[2]}},{{&p_2136->g_181[2],&p_2136->g_181[2]},{&p_2136->g_181[2],&p_2136->g_181[2]},{&p_2136->g_181[2],&p_2136->g_181[2]}},{{&p_2136->g_181[2],&p_2136->g_181[2]},{&p_2136->g_181[2],&p_2136->g_181[2]},{&p_2136->g_181[2],&p_2136->g_181[2]}}};
    uint32_t **l_414[4] = {&p_2136->g_182,&p_2136->g_182,&p_2136->g_182,&p_2136->g_182};
    uint16_t **l_415 = &p_2136->g_234;
    int8_t *l_416 = (void*)0;
    int64_t l_417 = 0x59A5C299DAF1052CL;
    uint32_t *l_431 = &p_2136->g_181[2];
    int32_t l_433 = 0x6E99539FL;
    int32_t l_454[9] = {9L,1L,9L,9L,1L,9L,9L,1L,9L};
    int32_t l_520 = (-5L);
    int32_t *l_547[8] = {&p_2136->g_80,&p_2136->g_80,&p_2136->g_80,&p_2136->g_80,&p_2136->g_80,&p_2136->g_80,&p_2136->g_80,&p_2136->g_80};
    struct S0 *l_559 = &p_2136->g_410;
    int16_t *l_563[3][8] = {{&p_2136->g_101,&p_2136->g_101,&p_2136->g_101,&p_2136->g_101,&p_2136->g_101,&p_2136->g_101,&p_2136->g_101,&p_2136->g_101},{&p_2136->g_101,&p_2136->g_101,&p_2136->g_101,&p_2136->g_101,&p_2136->g_101,&p_2136->g_101,&p_2136->g_101,&p_2136->g_101},{&p_2136->g_101,&p_2136->g_101,&p_2136->g_101,&p_2136->g_101,&p_2136->g_101,&p_2136->g_101,&p_2136->g_101,&p_2136->g_101}};
    int32_t l_573[8];
    uint16_t **l_610[10][7] = {{&p_2136->g_234,(void*)0,&p_2136->g_234,&p_2136->g_234,&p_2136->g_234,&p_2136->g_234,&p_2136->g_234},{&p_2136->g_234,(void*)0,&p_2136->g_234,&p_2136->g_234,&p_2136->g_234,&p_2136->g_234,&p_2136->g_234},{&p_2136->g_234,(void*)0,&p_2136->g_234,&p_2136->g_234,&p_2136->g_234,&p_2136->g_234,&p_2136->g_234},{&p_2136->g_234,(void*)0,&p_2136->g_234,&p_2136->g_234,&p_2136->g_234,&p_2136->g_234,&p_2136->g_234},{&p_2136->g_234,(void*)0,&p_2136->g_234,&p_2136->g_234,&p_2136->g_234,&p_2136->g_234,&p_2136->g_234},{&p_2136->g_234,(void*)0,&p_2136->g_234,&p_2136->g_234,&p_2136->g_234,&p_2136->g_234,&p_2136->g_234},{&p_2136->g_234,(void*)0,&p_2136->g_234,&p_2136->g_234,&p_2136->g_234,&p_2136->g_234,&p_2136->g_234},{&p_2136->g_234,(void*)0,&p_2136->g_234,&p_2136->g_234,&p_2136->g_234,&p_2136->g_234,&p_2136->g_234},{&p_2136->g_234,(void*)0,&p_2136->g_234,&p_2136->g_234,&p_2136->g_234,&p_2136->g_234,&p_2136->g_234},{&p_2136->g_234,(void*)0,&p_2136->g_234,&p_2136->g_234,&p_2136->g_234,&p_2136->g_234,&p_2136->g_234}};
    int64_t l_615 = (-1L);
    uint32_t l_627 = 4294967295UL;
    uint64_t l_630 = 0x6294578F38329EC6L;
    uint64_t l_645[1][9][8] = {{{0x405B5A4A36395B96L,0xE252096A5403D588L,18446744073709551615UL,18446744073709551610UL,0xA25EB6C1EB4F59AEL,7UL,1UL,18446744073709551615UL},{0x405B5A4A36395B96L,0xE252096A5403D588L,18446744073709551615UL,18446744073709551610UL,0xA25EB6C1EB4F59AEL,7UL,1UL,18446744073709551615UL},{0x405B5A4A36395B96L,0xE252096A5403D588L,18446744073709551615UL,18446744073709551610UL,0xA25EB6C1EB4F59AEL,7UL,1UL,18446744073709551615UL},{0x405B5A4A36395B96L,0xE252096A5403D588L,18446744073709551615UL,18446744073709551610UL,0xA25EB6C1EB4F59AEL,7UL,1UL,18446744073709551615UL},{0x405B5A4A36395B96L,0xE252096A5403D588L,18446744073709551615UL,18446744073709551610UL,0xA25EB6C1EB4F59AEL,7UL,1UL,18446744073709551615UL},{0x405B5A4A36395B96L,0xE252096A5403D588L,18446744073709551615UL,18446744073709551610UL,0xA25EB6C1EB4F59AEL,7UL,1UL,18446744073709551615UL},{0x405B5A4A36395B96L,0xE252096A5403D588L,18446744073709551615UL,18446744073709551610UL,0xA25EB6C1EB4F59AEL,7UL,1UL,18446744073709551615UL},{0x405B5A4A36395B96L,0xE252096A5403D588L,18446744073709551615UL,18446744073709551610UL,0xA25EB6C1EB4F59AEL,7UL,1UL,18446744073709551615UL},{0x405B5A4A36395B96L,0xE252096A5403D588L,18446744073709551615UL,18446744073709551610UL,0xA25EB6C1EB4F59AEL,7UL,1UL,18446744073709551615UL}}};
    uint64_t l_648 = 1UL;
    int16_t l_649 = 0x5289L;
    int64_t *l_650 = &l_615;
    int32_t **l_651 = &l_547[7];
    int8_t *l_656 = &p_2136->g_131;
    int64_t l_658 = 8L;
    uint64_t **l_659 = &p_2136->g_498;
    int i, j, k;
    for (i = 0; i < 8; i++)
        l_573[i] = 1L;
    if ((((safe_mul_func_int16_t_s_s(((p_2136->g_180 = l_413[0][1][1]) == &p_2136->g_181[3]), ((void*)0 != l_415))) , l_416) != &p_2136->g_171))
    { /* block id: 183 */
        uint32_t l_423 = 4294967286UL;
        int32_t l_451[9] = {0x2BB80352L,0x2BB80352L,0x2BB80352L,0x2BB80352L,0x2BB80352L,0x2BB80352L,0x2BB80352L,0x2BB80352L,0x2BB80352L};
        uint16_t **l_484[3][6][9] = {{{(void*)0,&p_2136->g_234,&p_2136->g_234,(void*)0,&p_2136->g_234,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_2136->g_234,&p_2136->g_234,(void*)0,&p_2136->g_234,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_2136->g_234,&p_2136->g_234,(void*)0,&p_2136->g_234,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_2136->g_234,&p_2136->g_234,(void*)0,&p_2136->g_234,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_2136->g_234,&p_2136->g_234,(void*)0,&p_2136->g_234,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_2136->g_234,&p_2136->g_234,(void*)0,&p_2136->g_234,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,&p_2136->g_234,&p_2136->g_234,(void*)0,&p_2136->g_234,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_2136->g_234,&p_2136->g_234,(void*)0,&p_2136->g_234,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_2136->g_234,&p_2136->g_234,(void*)0,&p_2136->g_234,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_2136->g_234,&p_2136->g_234,(void*)0,&p_2136->g_234,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_2136->g_234,&p_2136->g_234,(void*)0,&p_2136->g_234,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_2136->g_234,&p_2136->g_234,(void*)0,&p_2136->g_234,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,&p_2136->g_234,&p_2136->g_234,(void*)0,&p_2136->g_234,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_2136->g_234,&p_2136->g_234,(void*)0,&p_2136->g_234,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_2136->g_234,&p_2136->g_234,(void*)0,&p_2136->g_234,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_2136->g_234,&p_2136->g_234,(void*)0,&p_2136->g_234,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_2136->g_234,&p_2136->g_234,(void*)0,&p_2136->g_234,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,&p_2136->g_234,&p_2136->g_234,(void*)0,&p_2136->g_234,(void*)0,(void*)0,(void*)0,(void*)0}}};
        int32_t *l_492 = (void*)0;
        uint64_t ***l_516[10] = {&p_2136->g_497,(void*)0,&p_2136->g_497,&p_2136->g_497,(void*)0,&p_2136->g_497,&p_2136->g_497,(void*)0,&p_2136->g_497,&p_2136->g_497};
        int32_t *l_517 = &l_433;
        int32_t *l_519[4][5] = {{(void*)0,&l_451[8],&p_2136->g_7[0],&p_2136->g_4,&l_451[8]},{(void*)0,&l_451[8],&p_2136->g_7[0],&p_2136->g_4,&l_451[8]},{(void*)0,&l_451[8],&p_2136->g_7[0],&p_2136->g_4,&l_451[8]},{(void*)0,&l_451[8],&p_2136->g_7[0],&p_2136->g_4,&l_451[8]}};
        int i, j, k;
        for (p_2136->g_199 = 0; (p_2136->g_199 <= 1); p_2136->g_199 += 1)
        { /* block id: 186 */
            int16_t l_422[5];
            uint32_t *l_430 = &p_2136->g_181[2];
            int16_t *l_432 = &p_2136->g_101;
            int32_t l_452 = (-1L);
            int32_t l_453[7] = {0x436A867BL,0x436A867BL,0x436A867BL,0x436A867BL,0x436A867BL,0x436A867BL,0x436A867BL};
            int32_t l_482[7][8][3] = {{{0x4E2088B7L,0x6DD1C22FL,0x49788E69L},{0x4E2088B7L,0x6DD1C22FL,0x49788E69L},{0x4E2088B7L,0x6DD1C22FL,0x49788E69L},{0x4E2088B7L,0x6DD1C22FL,0x49788E69L},{0x4E2088B7L,0x6DD1C22FL,0x49788E69L},{0x4E2088B7L,0x6DD1C22FL,0x49788E69L},{0x4E2088B7L,0x6DD1C22FL,0x49788E69L},{0x4E2088B7L,0x6DD1C22FL,0x49788E69L}},{{0x4E2088B7L,0x6DD1C22FL,0x49788E69L},{0x4E2088B7L,0x6DD1C22FL,0x49788E69L},{0x4E2088B7L,0x6DD1C22FL,0x49788E69L},{0x4E2088B7L,0x6DD1C22FL,0x49788E69L},{0x4E2088B7L,0x6DD1C22FL,0x49788E69L},{0x4E2088B7L,0x6DD1C22FL,0x49788E69L},{0x4E2088B7L,0x6DD1C22FL,0x49788E69L},{0x4E2088B7L,0x6DD1C22FL,0x49788E69L}},{{0x4E2088B7L,0x6DD1C22FL,0x49788E69L},{0x4E2088B7L,0x6DD1C22FL,0x49788E69L},{0x4E2088B7L,0x6DD1C22FL,0x49788E69L},{0x4E2088B7L,0x6DD1C22FL,0x49788E69L},{0x4E2088B7L,0x6DD1C22FL,0x49788E69L},{0x4E2088B7L,0x6DD1C22FL,0x49788E69L},{0x4E2088B7L,0x6DD1C22FL,0x49788E69L},{0x4E2088B7L,0x6DD1C22FL,0x49788E69L}},{{0x4E2088B7L,0x6DD1C22FL,0x49788E69L},{0x4E2088B7L,0x6DD1C22FL,0x49788E69L},{0x4E2088B7L,0x6DD1C22FL,0x49788E69L},{0x4E2088B7L,0x6DD1C22FL,0x49788E69L},{0x4E2088B7L,0x6DD1C22FL,0x49788E69L},{0x4E2088B7L,0x6DD1C22FL,0x49788E69L},{0x4E2088B7L,0x6DD1C22FL,0x49788E69L},{0x4E2088B7L,0x6DD1C22FL,0x49788E69L}},{{0x4E2088B7L,0x6DD1C22FL,0x49788E69L},{0x4E2088B7L,0x6DD1C22FL,0x49788E69L},{0x4E2088B7L,0x6DD1C22FL,0x49788E69L},{0x4E2088B7L,0x6DD1C22FL,0x49788E69L},{0x4E2088B7L,0x6DD1C22FL,0x49788E69L},{0x4E2088B7L,0x6DD1C22FL,0x49788E69L},{0x4E2088B7L,0x6DD1C22FL,0x49788E69L},{0x4E2088B7L,0x6DD1C22FL,0x49788E69L}},{{0x4E2088B7L,0x6DD1C22FL,0x49788E69L},{0x4E2088B7L,0x6DD1C22FL,0x49788E69L},{0x4E2088B7L,0x6DD1C22FL,0x49788E69L},{0x4E2088B7L,0x6DD1C22FL,0x49788E69L},{0x4E2088B7L,0x6DD1C22FL,0x49788E69L},{0x4E2088B7L,0x6DD1C22FL,0x49788E69L},{0x4E2088B7L,0x6DD1C22FL,0x49788E69L},{0x4E2088B7L,0x6DD1C22FL,0x49788E69L}},{{0x4E2088B7L,0x6DD1C22FL,0x49788E69L},{0x4E2088B7L,0x6DD1C22FL,0x49788E69L},{0x4E2088B7L,0x6DD1C22FL,0x49788E69L},{0x4E2088B7L,0x6DD1C22FL,0x49788E69L},{0x4E2088B7L,0x6DD1C22FL,0x49788E69L},{0x4E2088B7L,0x6DD1C22FL,0x49788E69L},{0x4E2088B7L,0x6DD1C22FL,0x49788E69L},{0x4E2088B7L,0x6DD1C22FL,0x49788E69L}}};
            int32_t *l_491 = &l_452;
            int i, j, k;
            for (i = 0; i < 5; i++)
                l_422[i] = 0x7378L;
            if (((0L >= (l_417 & (((safe_mod_func_int32_t_s_s((l_433 = (safe_sub_func_uint64_t_u_u(l_422[0], ((((l_423 , (safe_mul_func_uint16_t_u_u((FAKE_DIVERGE(p_2136->local_0_offset, get_local_id(0), 10) , l_422[0]), ((*l_432) = ((*p_64) < (p_2136->g_199 , (p_65 | ((((safe_lshift_func_uint16_t_u_s((++(**l_415)), 13)) , (l_430 = l_430)) == l_431) | p_65)))))))) <= l_417) <= (*p_64)) , l_423)))), 8UL)) , 4294967295UL) != FAKE_DIVERGE(p_2136->global_0_offset, get_global_id(0), 10)))) , 0x799BAB8AL))
            { /* block id: 191 */
                int32_t l_434 = 0x5B0D1152L;
                int32_t *l_448 = &l_433;
                (*l_448) = ((FAKE_DIVERGE(p_2136->local_2_offset, get_local_id(2), 10) ^ ((~(*p_2136->g_234)) && ((*l_432) = ((p_2136->g_410.f0 >= l_422[4]) < l_434)))) & (safe_div_func_uint32_t_u_u(((*p_2136->g_182) = (*p_2136->g_182)), ((safe_unary_minus_func_int8_t_s(l_433)) & ((safe_div_func_int16_t_s_s(0x1C0AL, (((((p_2136->g_238 >= (safe_mod_func_int16_t_s_s((safe_add_func_int64_t_s_s(((safe_add_func_uint8_t_u_u((safe_add_func_uint16_t_u_u(((l_422[4] != p_65) == 0x58L), p_63)), FAKE_DIVERGE(p_2136->local_1_offset, get_local_id(1), 10))) , 0x3D63FFA072598118L), 0x0AD38FA3FA2306DEL)), p_63))) >= p_66) & p_62.f0) , 0x2DF01602A6D736AAL) & l_434))) || p_66)))));
            }
            else
            { /* block id: 195 */
                int32_t *l_449 = &p_2136->g_80;
                int32_t *l_450[4][1] = {{(void*)0},{(void*)0},{(void*)0},{(void*)0}};
                uint32_t l_455 = 0xAC782E79L;
                int16_t *l_485 = &l_422[0];
                int i, j;
                l_455--;
                for (p_2136->g_80 = 5; (p_2136->g_80 >= 0); p_2136->g_80 -= 1)
                { /* block id: 199 */
                    uint32_t l_458[1][10] = {{1UL,0xDF3A770BL,1UL,1UL,0xDF3A770BL,1UL,1UL,0xDF3A770BL,1UL,1UL}};
                    uint16_t **l_483 = &p_2136->g_234;
                    int i, j;
                    l_458[0][5]--;
                    l_482[3][4][0] ^= (safe_lshift_func_uint16_t_u_u(((*p_2136->g_234) = ((safe_mul_func_uint16_t_u_u((p_64 != (void*)0), (l_451[(p_2136->g_199 + 5)] <= l_453[(p_2136->g_80 + 1)]))) < ((((safe_add_func_uint32_t_u_u(((safe_add_func_int16_t_s_s((safe_sub_func_uint16_t_u_u((safe_mod_func_uint64_t_u_u(l_453[(p_2136->g_80 + 1)], l_453[p_2136->g_199])), p_63)), (((((((safe_div_func_int16_t_s_s((safe_mul_func_uint16_t_u_u((safe_sub_func_int32_t_s_s((safe_unary_minus_func_uint16_t_u(l_423)), (safe_rshift_func_int16_t_s_s((!((*l_432) &= (((p_62.f0 ^ (-4L)) >= p_2136->g_35[0]) > 0x1713E34C0C42F9B2L))), 4)))), p_63)), l_422[4])) & 0xAD5DF2E0254A88E4L) != 0L) || p_63) != p_2136->g_31) && 0x29275DC5CC25C57AL) ^ l_423))) <= p_2136->g_136), 4294967286UL)) || l_453[p_2136->g_199]) && l_452) <= p_62.f0))), 10));
                    for (l_417 = 0; (l_417 <= 1); l_417 += 1)
                    { /* block id: 206 */
                        int16_t **l_486 = &l_485;
                        int16_t **l_488 = &l_432;
                        int32_t l_489 = 0x3A04F860L;
                        l_489 = ((p_2136->g_487 = ((*l_486) = ((l_483 != (l_454[8] , l_484[1][2][4])) , l_485))) != ((*l_488) = &p_2136->g_101));
                    }
                }
            }
            for (p_2136->g_253 = 0; (p_2136->g_253 <= 1); p_2136->g_253 += 1)
            { /* block id: 216 */
                for (p_2136->g_171 = 0; (p_2136->g_171 <= 1); p_2136->g_171 += 1)
                { /* block id: 219 */
                    int32_t **l_490 = &p_2136->g_207[1][0];
                    (*l_490) = &p_2136->g_7[0];
                }
                for (p_2136->g_238 = 0; (p_2136->g_238 <= 1); p_2136->g_238 += 1)
                { /* block id: 224 */
                    uint64_t *l_496 = &p_2136->g_35[7];
                    uint64_t **l_495 = &l_496;
                    p_2136->g_207[2][3] = p_64;
                    if (l_451[4])
                        break;
                    for (p_66 = 0; (p_66 <= 2); p_66 += 1)
                    { /* block id: 229 */
                        int32_t *l_493 = &l_433;
                        int32_t **l_494 = &l_491;
                        l_492 = l_491;
                        (*l_494) = l_493;
                        return p_2136->g_497;
                    }
                }
            }
        }
        for (l_423 = 0; (l_423 > 9); ++l_423)
        { /* block id: 239 */
            uint64_t **l_501 = &p_2136->g_498;
            return l_501;
        }
        l_520 ^= ((+(p_2136->g_202 < ((p_2136->g_92 , (((((((safe_mul_func_int16_t_s_s(((p_2136->g_182 = p_64) == &p_2136->g_253), (((safe_mul_func_uint16_t_u_u(((safe_mul_func_int16_t_s_s(((safe_rshift_func_uint8_t_u_u(p_62.f0, (((l_454[7] = ((*l_517) &= (safe_lshift_func_uint16_t_u_s((safe_mul_func_uint8_t_u_u(1UL, (safe_add_func_uint64_t_u_u((((((l_516[4] == &p_2136->g_132) , 0x27L) , p_2136->g_131) <= GROUP_DIVERGE(0, 1)) == p_2136->g_238), p_66)))), 10)))) , (*p_2136->g_234)) & 0L))) & p_2136->g_518), (-1L))) && (*p_2136->g_234)), (*p_2136->g_234))) , p_66) == p_2136->g_111))) == (-6L)) != p_65) && p_2136->g_131) ^ 0xABL) , l_433) & FAKE_DIVERGE(p_2136->global_0_offset, get_global_id(0), 10))) , (*p_2136->g_498)))) , (*p_64));
        for (p_2136->g_131 = (-15); (p_2136->g_131 == (-14)); p_2136->g_131 = safe_add_func_uint16_t_u_u(p_2136->g_131, 1))
        { /* block id: 248 */
            int32_t l_550 = 0x45D8C1ABL;
            int32_t l_574[8][2] = {{1L,0x0B24D841L},{1L,0x0B24D841L},{1L,0x0B24D841L},{1L,0x0B24D841L},{1L,0x0B24D841L},{1L,0x0B24D841L},{1L,0x0B24D841L},{1L,0x0B24D841L}};
            uint8_t *l_575 = &p_2136->g_111;
            int32_t l_582 = 0x3FE5F375L;
            int i, j;
            for (p_2136->g_171 = 1; (p_2136->g_171 < (-20)); p_2136->g_171--)
            { /* block id: 251 */
                uint32_t l_543 = 0x850CFCD5L;
                int32_t l_544 = 1L;
                for (p_2136->g_105.f0 = (-20); (p_2136->g_105.f0 <= 48); ++p_2136->g_105.f0)
                { /* block id: 254 */
                    int16_t *l_531 = &p_2136->g_101;
                    int32_t l_532 = 0x3FF6516FL;
                    uint16_t ***l_539 = (void*)0;
                    uint16_t ***l_540 = &l_415;
                    int8_t *l_541[3][10] = {{&p_2136->g_542,&p_2136->g_542,&p_2136->g_542,&p_2136->g_542,&p_2136->g_542,&p_2136->g_542,&p_2136->g_542,&p_2136->g_542,&p_2136->g_542,&p_2136->g_542},{&p_2136->g_542,&p_2136->g_542,&p_2136->g_542,&p_2136->g_542,&p_2136->g_542,&p_2136->g_542,&p_2136->g_542,&p_2136->g_542,&p_2136->g_542,&p_2136->g_542},{&p_2136->g_542,&p_2136->g_542,&p_2136->g_542,&p_2136->g_542,&p_2136->g_542,&p_2136->g_542,&p_2136->g_542,&p_2136->g_542,&p_2136->g_542,&p_2136->g_542}};
                    uint8_t l_545 = 0xC9L;
                    int32_t **l_546[2][7] = {{&l_519[0][4],(void*)0,&l_519[0][4],&l_519[0][4],(void*)0,&l_519[0][4],&l_519[0][4]},{&l_519[0][4],(void*)0,&l_519[0][4],&l_519[0][4],(void*)0,&l_519[0][4],&l_519[0][4]}};
                    int i, j;
                    l_545 = ((safe_add_func_int8_t_s_s((safe_add_func_int16_t_s_s((((*p_2136->g_234) != 0x3F38L) , (((*l_531) &= (-1L)) != p_66)), l_532)), ((7UL && ((safe_lshift_func_int8_t_s_s(p_63, ((((((safe_mul_func_int8_t_s_s((l_543 = (l_532 & (((*l_540) = &p_2136->g_234) == &p_2136->g_234))), p_2136->g_171)) ^ (*p_64)) > p_63) != (*p_2136->g_498)) || 0x702519E11B615096L) >= l_544))) <= (-1L))) , FAKE_DIVERGE(p_2136->group_0_offset, get_group_id(0), 10)))) != 0x725DF65DA8DEC17CL);
                    l_547[7] = p_64;
                    for (p_2136->g_101 = 0; (p_2136->g_101 <= (-30)); --p_2136->g_101)
                    { /* block id: 262 */
                        uint16_t l_551 = 65531UL;
                        l_551--;
                        p_2136->g_207[2][3] = p_64;
                        (*l_517) |= 8L;
                        p_64 = &p_2136->g_4;
                    }
                }
                if (l_544)
                    break;
                if ((*l_517))
                    break;
                for (l_417 = 2; (l_417 >= 0); l_417 -= 1)
                { /* block id: 273 */
                    int i, j, k;
                    for (p_2136->g_518 = 0; (p_2136->g_518 <= 2); p_2136->g_518 += 1)
                    { /* block id: 276 */
                        int32_t **l_554 = &l_519[0][4];
                        int i, j;
                        (*l_554) = p_2136->g_207[p_2136->g_518][l_417];
                    }
                    for (p_2136->g_318 = 1; (p_2136->g_318 <= 8); p_2136->g_318 += 1)
                    { /* block id: 281 */
                        int32_t *l_555[1];
                        int32_t **l_556 = &l_492;
                        int i;
                        for (i = 0; i < 1; i++)
                            l_555[i] = &l_520;
                        (*l_556) = l_555[0];
                        p_2136->g_560 = ((safe_lshift_func_int16_t_s_s((p_62.f0 ^ 18446744073709551608UL), 1)) , l_559);
                        if (l_544)
                            continue;
                    }
                    l_451[(l_417 + 6)] = (((safe_mod_func_int8_t_s_s(((0x69142EFFL <= (&p_2136->g_136 != (p_65 , (void*)0))) != ((65532UL <= p_63) != ((void*)0 == l_563[0][2]))), (safe_lshift_func_int8_t_s_s(p_2136->g_518, 4)))) , (*p_2136->g_234)) || GROUP_DIVERGE(2, 1));
                }
            }
            for (p_65 = 0; (p_65 != 43); p_65 = safe_add_func_uint32_t_u_u(p_65, 1))
            { /* block id: 291 */
                int32_t **l_568[4] = {&p_2136->g_207[0][1],&p_2136->g_207[0][1],&p_2136->g_207[0][1],&p_2136->g_207[0][1]};
                int i;
                p_64 = &p_2136->g_7[0];
                (*l_517) &= (*p_64);
            }
            l_582 &= (((*l_575) = ((*p_2136->g_182) , (safe_rshift_func_uint16_t_u_s((p_62 , (safe_div_func_uint16_t_u_u((l_573[2] , l_574[3][1]), (*l_517)))), ((l_550 > l_574[3][1]) , 1L))))) >= (safe_lshift_func_int16_t_s_u((((safe_add_func_int64_t_s_s(((safe_sub_func_int8_t_s_s((((~(*p_64)) , l_574[3][1]) < (*p_2136->g_234)), p_66)) , p_65), 0L)) , p_62.f0) | p_63), 15)));
        }
    }
    else
    { /* block id: 298 */
        uint16_t ***l_591 = &l_415;
        uint16_t ****l_592 = (void*)0;
        uint16_t ****l_593 = &l_591;
        int32_t l_600 = 0x28E8BAE6L;
        int8_t l_607 = 0x02L;
        uint8_t *l_618 = (void*)0;
        uint8_t *l_619 = &p_2136->g_111;
        uint8_t *l_620 = (void*)0;
        uint8_t *l_621 = &p_2136->g_622;
        l_600 = ((*p_64) || (safe_sub_func_int32_t_s_s((9L & (safe_lshift_func_int16_t_s_u(p_66, (safe_add_func_int64_t_s_s((safe_rshift_func_uint8_t_u_u(p_65, ((((*l_593) = l_591) == (((safe_rshift_func_uint8_t_u_u(p_2136->g_318, 1)) || ((*p_2136->g_234) = ((void*)0 != &p_2136->g_234))) , p_2136->g_596[0])) , 0x66L))), p_2136->g_131))))), p_66)));
        p_64 = ((safe_div_func_int16_t_s_s((safe_mod_func_int8_t_s_s((GROUP_DIVERGE(0, 1) ^ (l_600 = (safe_lshift_func_int16_t_s_s(l_607, ((((((safe_div_func_uint64_t_u_u((((**l_593) = (**l_593)) == l_610[0][0]), (+(safe_rshift_func_uint8_t_u_s((safe_mul_func_int8_t_s_s((((p_62.f0 || (l_615 = 7L)) < ((*l_621) &= (p_66 , ((safe_sub_func_uint8_t_u_u(((*l_619) = 249UL), p_2136->g_518)) < (p_63 || p_2136->g_181[1]))))) , 1L), 1UL)), l_607))))) <= p_2136->g_7[0]) | p_62.f0) != 0x5F98F841L) >= 4294967291UL) , l_607))))), p_2136->g_202)), l_607)) , p_64);
    }
    (*l_651) = (((safe_div_func_int16_t_s_s(((safe_lshift_func_int16_t_s_u((l_627 = (0x24045AE305990372L | (*p_2136->g_498))), 11)) != ((*l_650) = ((safe_add_func_int64_t_s_s(p_2136->g_253, ((((l_630 && (((FAKE_DIVERGE(p_2136->global_0_offset, get_global_id(0), 10) < (safe_div_func_int32_t_s_s((safe_sub_func_uint8_t_u_u(p_66, (safe_sub_func_int32_t_s_s(((safe_sub_func_uint32_t_u_u((safe_mod_func_int32_t_s_s(((safe_add_func_uint32_t_u_u(p_66, (*p_64))) | (safe_rshift_func_uint16_t_u_s(((l_645[0][1][1] , ((safe_rshift_func_int16_t_s_s(((p_2136->g_7[0] & p_2136->g_111) >= (*p_2136->g_498)), 13)) != 0UL)) < 0x1E71L), p_66))), (*p_64))), l_648)) , (*p_64)), (*p_64))))), (*p_64)))) , 0xECL) || l_649)) ^ 0UL) & 0x7E6C6B77L) < p_2136->g_101))) && 0x41L))), p_2136->g_7[0])) == p_2136->g_171) , p_64);
    l_658 = (safe_mul_func_int16_t_s_s(p_63, (safe_rshift_func_int8_t_s_u(((*l_656) = (p_66 > (~p_66))), ((p_2136->g_657 = (p_2136->g_101 |= p_65)) > ((*p_64) == ((void*)0 != &l_414[0])))))));
    return l_659;
}


/* ------------------------------------------ */
/* 
 * reads : p_2136->g_35 p_2136->g_132 p_2136->g_7 p_2136->g_234 p_2136->g_136 p_2136->g_105.f0 p_2136->g_131 p_2136->g_182 p_2136->g_181 p_2136->g_410
 * writes: p_2136->g_35 p_2136->g_105.f0 p_2136->g_202 p_2136->g_171
 */
struct S0  func_67(int64_t  p_68, uint32_t  p_69, uint32_t  p_70, int32_t  p_71, int8_t  p_72, struct S1 * p_2136)
{ /* block id: 21 */
    int32_t *l_86 = &p_2136->g_7[2];
    int32_t l_137 = 0L;
    struct S0 *l_196 = (void*)0;
    uint32_t l_212 = 0x0A9544ECL;
    uint64_t l_319 = 0UL;
    uint32_t ***l_337 = (void*)0;
    int32_t l_338 = 0x02B26BECL;
    uint64_t **l_341 = (void*)0;
    uint64_t ***l_342 = &l_341;
    int32_t *l_343 = &l_137;
    int32_t l_365 = 0x5C0D5428L;
    int32_t l_366 = 0L;
    int32_t l_367 = (-3L);
    int32_t l_369 = (-5L);
    int32_t l_370 = 0x2FEBCA4EL;
    int32_t l_371 = 0x7BE0A92CL;
    int32_t l_372 = 4L;
    int32_t l_373 = 0L;
    int32_t l_374 = 0x45E83AB9L;
    int32_t l_375 = (-9L);
    uint8_t *l_404 = (void*)0;
    uint8_t **l_403 = &l_404;
    for (p_70 = 0; (p_70 > 37); ++p_70)
    { /* block id: 24 */
        int8_t l_83 = (-6L);
        int32_t **l_87 = &l_86;
        uint64_t *l_90[2][10] = {{&p_2136->g_35[7],&p_2136->g_31,&p_2136->g_35[7],&p_2136->g_35[7],&p_2136->g_31,&p_2136->g_35[7],&p_2136->g_35[7],&p_2136->g_31,&p_2136->g_35[7],&p_2136->g_35[7]},{&p_2136->g_35[7],&p_2136->g_31,&p_2136->g_35[7],&p_2136->g_35[7],&p_2136->g_31,&p_2136->g_35[7],&p_2136->g_35[7],&p_2136->g_31,&p_2136->g_35[7],&p_2136->g_35[7]}};
        uint32_t *l_91 = &p_2136->g_92;
        struct S0 l_173 = {0xBA0D44C9C871B159L};
        int32_t l_198 = 0x1734017EL;
        int16_t l_320 = 0L;
        uint32_t l_322[6] = {4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL,4294967295UL};
        int i, j;
        (1 + 1);
    }
    (*l_343) = (((safe_rshift_func_uint16_t_u_s(((safe_add_func_uint32_t_u_u(FAKE_DIVERGE(p_2136->global_2_offset, get_global_id(2), 10), (255UL < (((((void*)0 == &l_319) ^ (p_2136->g_35[9]--)) , (((void*)0 == l_337) , &p_2136->g_111)) != &p_2136->g_111)))) <= l_338), (((((safe_sub_func_uint16_t_u_u(((((*l_342) = l_341) != p_2136->g_132) || (*l_86)), 0L)) & (*l_86)) > 0xC3065EFAE0A80596L) , p_2136->g_7[0]) >= (-7L)))) <= p_70) && 9UL);
    for (l_338 = 0; (l_338 != 13); l_338 = safe_add_func_uint32_t_u_u(l_338, 8))
    { /* block id: 165 */
        uint8_t **l_350 = (void*)0;
        uint8_t *l_352 = &p_2136->g_111;
        uint8_t **l_351 = &l_352;
        int32_t l_362[4] = {(-4L),(-4L),(-4L),(-4L)};
        uint32_t *l_390 = &p_2136->g_181[2];
        int8_t *l_407 = &p_2136->g_171;
        uint16_t **l_408[6] = {&p_2136->g_234,&p_2136->g_234,&p_2136->g_234,&p_2136->g_234,&p_2136->g_234,&p_2136->g_234};
        int32_t *l_409[7] = {&l_374,&l_374,&l_374,&l_374,&l_374,&l_374,&l_374};
        int i;
        if ((safe_mod_func_int32_t_s_s((((safe_sub_func_int32_t_s_s((&p_2136->g_111 == ((*l_351) = &p_2136->g_111)), 0x6432CE06L)) | (safe_sub_func_int64_t_s_s((safe_mod_func_uint32_t_u_u(2UL, (*l_343))), (safe_lshift_func_uint16_t_u_s((&p_2136->g_7[2] == (((*l_86) && (safe_rshift_func_int16_t_s_s((p_68 & (-1L)), 15))) , &l_338)), p_68))))) | 0x7FL), 0x963BEDA2L)))
        { /* block id: 167 */
            int8_t l_361 = 1L;
            int32_t *l_363 = &l_137;
            int32_t *l_364[1];
            int32_t l_368 = (-1L);
            uint32_t l_376 = 0x4570321CL;
            int i;
            for (i = 0; i < 1; i++)
                l_364[i] = (void*)0;
            l_361 = (*l_86);
            --l_376;
            (*l_363) = (safe_mod_func_uint32_t_u_u(((*p_2136->g_234) , ((void*)0 != l_364[0])), ((safe_lshift_func_int8_t_s_u(0x54L, 3)) & 1UL)));
        }
        else
        { /* block id: 171 */
            uint16_t l_385 = 0x3054L;
            uint64_t *l_386 = &p_2136->g_105.f0;
            int32_t l_389[2][8][2] = {{{0x2FB41FE7L,0L},{0x2FB41FE7L,0L},{0x2FB41FE7L,0L},{0x2FB41FE7L,0L},{0x2FB41FE7L,0L},{0x2FB41FE7L,0L},{0x2FB41FE7L,0L},{0x2FB41FE7L,0L}},{{0x2FB41FE7L,0L},{0x2FB41FE7L,0L},{0x2FB41FE7L,0L},{0x2FB41FE7L,0L},{0x2FB41FE7L,0L},{0x2FB41FE7L,0L},{0x2FB41FE7L,0L},{0x2FB41FE7L,0L}}};
            int i, j, k;
            l_389[1][5][0] ^= (safe_sub_func_int32_t_s_s(l_385, ((-1L) == ((&p_2136->g_171 == (void*)0) || ((*l_343) = (p_2136->g_202 = (--(*l_386))))))));
        }
        l_373 |= ((l_343 == l_390) , (safe_div_func_uint8_t_u_u(((0x9D6AL && (((((safe_rshift_func_uint8_t_u_u((safe_mod_func_uint64_t_u_u(((-1L) <= ((safe_mul_func_uint16_t_u_u(l_362[3], (p_69 ^ (safe_sub_func_int8_t_s_s((safe_mul_func_int8_t_s_s((((void*)0 != l_403) , ((*l_407) = (safe_lshift_func_uint8_t_u_s(((((l_362[1] == (*l_343)) && l_362[3]) || FAKE_DIVERGE(p_2136->global_0_offset, get_global_id(0), 10)) > p_2136->g_131), p_2136->g_35[7])))), p_2136->g_35[7])), l_362[2]))))) & (-1L))), (-3L))), 4)) || (*p_2136->g_182)) < 6L) , &p_2136->g_234) == l_408[1])) > p_72), 255UL)));
    }
    return p_2136->g_410;
}


/* ------------------------------------------ */
/* 
 * reads : p_2136->g_7
 * writes:
 */
int64_t  func_75(int32_t  p_76, uint16_t  p_77, struct S1 * p_2136)
{ /* block id: 18 */
    int32_t **l_78 = (void*)0;
    int32_t *l_79[2];
    int i;
    for (i = 0; i < 2; i++)
        l_79[i] = &p_2136->g_80;
    l_79[0] = &p_2136->g_7[0];
    return p_2136->g_7[1];
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S1 c_2137;
    struct S1* p_2136 = &c_2137;
    struct S1 c_2138 = {
        0x7BC75286L, // p_2136->g_2
        {3L,3L}, // p_2136->g_3
        1L, // p_2136->g_4
        {1L,1L,1L,1L}, // p_2136->g_7
        255UL, // p_2136->g_17
        0xF4B3F4B14151C8B9L, // p_2136->g_31
        {0x7279C90E69CD17CDL,0x7279C90E69CD17CDL,0x7279C90E69CD17CDL,0x7279C90E69CD17CDL,0x7279C90E69CD17CDL,0x7279C90E69CD17CDL,0x7279C90E69CD17CDL,0x7279C90E69CD17CDL,0x7279C90E69CD17CDL,0x7279C90E69CD17CDL}, // p_2136->g_35
        0x2D11E758L, // p_2136->g_47
        0x637D660FL, // p_2136->g_49
        2L, // p_2136->g_80
        4294967295UL, // p_2136->g_92
        0x3627L, // p_2136->g_101
        {1UL}, // p_2136->g_105
        0UL, // p_2136->g_111
        0x46L, // p_2136->g_131
        (void*)0, // p_2136->g_133
        &p_2136->g_133, // p_2136->g_132
        0x0D48L, // p_2136->g_136
        0x28L, // p_2136->g_171
        {4294967288UL,4294967288UL,4294967288UL,4294967288UL,4294967288UL}, // p_2136->g_181
        &p_2136->g_181[2], // p_2136->g_180
        &p_2136->g_181[2], // p_2136->g_182
        65535UL, // p_2136->g_199
        0x41D115FE2047E026L, // p_2136->g_202
        {{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}}, // p_2136->g_207
        &p_2136->g_136, // p_2136->g_234
        4294967286UL, // p_2136->g_238
        0x3D7B9707L, // p_2136->g_253
        0x4B153B5C7476B03FL, // p_2136->g_318
        {0UL}, // p_2136->g_410
        (void*)0, // p_2136->g_487
        &p_2136->g_31, // p_2136->g_498
        &p_2136->g_498, // p_2136->g_497
        0x198A26B5L, // p_2136->g_518
        8L, // p_2136->g_542
        (void*)0, // p_2136->g_560
        0x75CBL, // p_2136->g_599
        &p_2136->g_599, // p_2136->g_598
        &p_2136->g_598, // p_2136->g_597
        {&p_2136->g_597,&p_2136->g_597,&p_2136->g_597,&p_2136->g_597,&p_2136->g_597,&p_2136->g_597,&p_2136->g_597,&p_2136->g_597,&p_2136->g_597,&p_2136->g_597}, // p_2136->g_596
        251UL, // p_2136->g_622
        0x689EDB68L, // p_2136->g_657
        {5L,5L}, // p_2136->g_710
        0x5EBDF241L, // p_2136->g_711
        (-6L), // p_2136->g_712
        {&p_2136->g_711,&p_2136->g_712,&p_2136->g_711,&p_2136->g_711,&p_2136->g_712,&p_2136->g_711}, // p_2136->g_709
        &p_2136->g_234, // p_2136->g_727
        {{0x5DEE4A6017EB0BF8L},{0UL},{0x5DEE4A6017EB0BF8L},{0x5DEE4A6017EB0BF8L},{0UL},{0x5DEE4A6017EB0BF8L},{0x5DEE4A6017EB0BF8L}}, // p_2136->g_735
        6UL, // p_2136->g_768
        (void*)0, // p_2136->g_783
        &p_2136->g_783, // p_2136->g_782
        0x0FL, // p_2136->g_848
        0x5138BED9294D20A6L, // p_2136->g_868
        &p_2136->g_131, // p_2136->g_938
        {0x15L,253UL,0x2BL,253UL,0x15L,0x15L,253UL,0x2BL,253UL,0x15L}, // p_2136->g_964
        &p_2136->g_964[0], // p_2136->g_963
        &p_2136->g_963, // p_2136->g_962
        &p_2136->g_560, // p_2136->g_1048
        {0x595EF2DB82FEFB8BL,0x595EF2DB82FEFB8BL,0x595EF2DB82FEFB8BL,0x595EF2DB82FEFB8BL,0x595EF2DB82FEFB8BL,0x595EF2DB82FEFB8BL,0x595EF2DB82FEFB8BL,0x595EF2DB82FEFB8BL}, // p_2136->g_1056
        6L, // p_2136->g_1085
        0xEA813231L, // p_2136->g_1092
        &p_2136->g_49, // p_2136->g_1193
        0x6534L, // p_2136->g_1197
        &p_2136->g_735[6], // p_2136->g_1208
        0x5EL, // p_2136->g_1228
        {&p_2136->g_487,&p_2136->g_487,&p_2136->g_487,&p_2136->g_487,&p_2136->g_487}, // p_2136->g_1263
        &p_2136->g_207[2][2], // p_2136->g_1341
        {{{&p_2136->g_80,&p_2136->g_80,(void*)0,&p_2136->g_7[0],&p_2136->g_47,&p_2136->g_80},{&p_2136->g_80,&p_2136->g_80,(void*)0,&p_2136->g_7[0],&p_2136->g_47,&p_2136->g_80},{&p_2136->g_80,&p_2136->g_80,(void*)0,&p_2136->g_7[0],&p_2136->g_47,&p_2136->g_80},{&p_2136->g_80,&p_2136->g_80,(void*)0,&p_2136->g_7[0],&p_2136->g_47,&p_2136->g_80},{&p_2136->g_80,&p_2136->g_80,(void*)0,&p_2136->g_7[0],&p_2136->g_47,&p_2136->g_80},{&p_2136->g_80,&p_2136->g_80,(void*)0,&p_2136->g_7[0],&p_2136->g_47,&p_2136->g_80},{&p_2136->g_80,&p_2136->g_80,(void*)0,&p_2136->g_7[0],&p_2136->g_47,&p_2136->g_80},{&p_2136->g_80,&p_2136->g_80,(void*)0,&p_2136->g_7[0],&p_2136->g_47,&p_2136->g_80},{&p_2136->g_80,&p_2136->g_80,(void*)0,&p_2136->g_7[0],&p_2136->g_47,&p_2136->g_80},{&p_2136->g_80,&p_2136->g_80,(void*)0,&p_2136->g_7[0],&p_2136->g_47,&p_2136->g_80}}}, // p_2136->g_1355
        &p_2136->g_735[6], // p_2136->g_1445
        0x33706D18A00B877EL, // p_2136->g_1561
        (-4L), // p_2136->g_1592
        {{(void*)0,(void*)0,&p_2136->g_410,&p_2136->g_410,(void*)0,&p_2136->g_410,&p_2136->g_410},{(void*)0,(void*)0,&p_2136->g_410,&p_2136->g_410,(void*)0,&p_2136->g_410,&p_2136->g_410},{(void*)0,(void*)0,&p_2136->g_410,&p_2136->g_410,(void*)0,&p_2136->g_410,&p_2136->g_410},{(void*)0,(void*)0,&p_2136->g_410,&p_2136->g_410,(void*)0,&p_2136->g_410,&p_2136->g_410},{(void*)0,(void*)0,&p_2136->g_410,&p_2136->g_410,(void*)0,&p_2136->g_410,&p_2136->g_410},{(void*)0,(void*)0,&p_2136->g_410,&p_2136->g_410,(void*)0,&p_2136->g_410,&p_2136->g_410},{(void*)0,(void*)0,&p_2136->g_410,&p_2136->g_410,(void*)0,&p_2136->g_410,&p_2136->g_410},{(void*)0,(void*)0,&p_2136->g_410,&p_2136->g_410,(void*)0,&p_2136->g_410,&p_2136->g_410},{(void*)0,(void*)0,&p_2136->g_410,&p_2136->g_410,(void*)0,&p_2136->g_410,&p_2136->g_410},{(void*)0,(void*)0,&p_2136->g_410,&p_2136->g_410,(void*)0,&p_2136->g_410,&p_2136->g_410}}, // p_2136->g_1641
        (void*)0, // p_2136->g_1642
        &p_2136->g_709[2], // p_2136->g_1659
        &p_2136->g_709[2], // p_2136->g_1821
        0xBB4EL, // p_2136->g_1827
        0x233FE09CL, // p_2136->g_1857
        0xB5D1D3872969A5ADL, // p_2136->g_1866
        0x2CF66532A0644BE2L, // p_2136->g_1936
        &p_2136->g_1355[0][4][2], // p_2136->g_1957
        &p_2136->g_182, // p_2136->g_2006
        &p_2136->g_182, // p_2136->g_2042
        &p_2136->g_2042, // p_2136->g_2041
        &p_2136->g_2041, // p_2136->g_2040
        &p_2136->g_180, // p_2136->g_2045
        {&p_2136->g_2045,&p_2136->g_2045,&p_2136->g_2045}, // p_2136->g_2044
        &p_2136->g_2044[1], // p_2136->g_2043
        (-8L), // p_2136->g_2067
        2UL, // p_2136->g_2114
        &p_2136->g_938, // p_2136->g_2120
        &p_2136->g_1355[0][2][1], // p_2136->g_2131
        {{{3L,0L,0x5FB22F63L,0L},{3L,0L,0x5FB22F63L,0L},{3L,0L,0x5FB22F63L,0L},{3L,0L,0x5FB22F63L,0L},{3L,0L,0x5FB22F63L,0L},{3L,0L,0x5FB22F63L,0L},{3L,0L,0x5FB22F63L,0L},{3L,0L,0x5FB22F63L,0L}},{{3L,0L,0x5FB22F63L,0L},{3L,0L,0x5FB22F63L,0L},{3L,0L,0x5FB22F63L,0L},{3L,0L,0x5FB22F63L,0L},{3L,0L,0x5FB22F63L,0L},{3L,0L,0x5FB22F63L,0L},{3L,0L,0x5FB22F63L,0L},{3L,0L,0x5FB22F63L,0L}},{{3L,0L,0x5FB22F63L,0L},{3L,0L,0x5FB22F63L,0L},{3L,0L,0x5FB22F63L,0L},{3L,0L,0x5FB22F63L,0L},{3L,0L,0x5FB22F63L,0L},{3L,0L,0x5FB22F63L,0L},{3L,0L,0x5FB22F63L,0L},{3L,0L,0x5FB22F63L,0L}},{{3L,0L,0x5FB22F63L,0L},{3L,0L,0x5FB22F63L,0L},{3L,0L,0x5FB22F63L,0L},{3L,0L,0x5FB22F63L,0L},{3L,0L,0x5FB22F63L,0L},{3L,0L,0x5FB22F63L,0L},{3L,0L,0x5FB22F63L,0L},{3L,0L,0x5FB22F63L,0L}},{{3L,0L,0x5FB22F63L,0L},{3L,0L,0x5FB22F63L,0L},{3L,0L,0x5FB22F63L,0L},{3L,0L,0x5FB22F63L,0L},{3L,0L,0x5FB22F63L,0L},{3L,0L,0x5FB22F63L,0L},{3L,0L,0x5FB22F63L,0L},{3L,0L,0x5FB22F63L,0L}},{{3L,0L,0x5FB22F63L,0L},{3L,0L,0x5FB22F63L,0L},{3L,0L,0x5FB22F63L,0L},{3L,0L,0x5FB22F63L,0L},{3L,0L,0x5FB22F63L,0L},{3L,0L,0x5FB22F63L,0L},{3L,0L,0x5FB22F63L,0L},{3L,0L,0x5FB22F63L,0L}},{{3L,0L,0x5FB22F63L,0L},{3L,0L,0x5FB22F63L,0L},{3L,0L,0x5FB22F63L,0L},{3L,0L,0x5FB22F63L,0L},{3L,0L,0x5FB22F63L,0L},{3L,0L,0x5FB22F63L,0L},{3L,0L,0x5FB22F63L,0L},{3L,0L,0x5FB22F63L,0L}},{{3L,0L,0x5FB22F63L,0L},{3L,0L,0x5FB22F63L,0L},{3L,0L,0x5FB22F63L,0L},{3L,0L,0x5FB22F63L,0L},{3L,0L,0x5FB22F63L,0L},{3L,0L,0x5FB22F63L,0L},{3L,0L,0x5FB22F63L,0L},{3L,0L,0x5FB22F63L,0L}}}, // p_2136->g_2132
        sequence_input[get_global_id(0)], // p_2136->global_0_offset
        sequence_input[get_global_id(1)], // p_2136->global_1_offset
        sequence_input[get_global_id(2)], // p_2136->global_2_offset
        sequence_input[get_local_id(0)], // p_2136->local_0_offset
        sequence_input[get_local_id(1)], // p_2136->local_1_offset
        sequence_input[get_local_id(2)], // p_2136->local_2_offset
        sequence_input[get_group_id(0)], // p_2136->group_0_offset
        sequence_input[get_group_id(1)], // p_2136->group_1_offset
        sequence_input[get_group_id(2)], // p_2136->group_2_offset
    };
    c_2137 = c_2138;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_2136);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_2136->g_2, "p_2136->g_2", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_2136->g_3[i], "p_2136->g_3[i]", print_hash_value);

    }
    transparent_crc(p_2136->g_4, "p_2136->g_4", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_2136->g_7[i], "p_2136->g_7[i]", print_hash_value);

    }
    transparent_crc(p_2136->g_17, "p_2136->g_17", print_hash_value);
    transparent_crc(p_2136->g_31, "p_2136->g_31", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_2136->g_35[i], "p_2136->g_35[i]", print_hash_value);

    }
    transparent_crc(p_2136->g_47, "p_2136->g_47", print_hash_value);
    transparent_crc(p_2136->g_49, "p_2136->g_49", print_hash_value);
    transparent_crc(p_2136->g_80, "p_2136->g_80", print_hash_value);
    transparent_crc(p_2136->g_92, "p_2136->g_92", print_hash_value);
    transparent_crc(p_2136->g_101, "p_2136->g_101", print_hash_value);
    transparent_crc(p_2136->g_105.f0, "p_2136->g_105.f0", print_hash_value);
    transparent_crc(p_2136->g_111, "p_2136->g_111", print_hash_value);
    transparent_crc(p_2136->g_131, "p_2136->g_131", print_hash_value);
    transparent_crc(p_2136->g_136, "p_2136->g_136", print_hash_value);
    transparent_crc(p_2136->g_171, "p_2136->g_171", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_2136->g_181[i], "p_2136->g_181[i]", print_hash_value);

    }
    transparent_crc(p_2136->g_199, "p_2136->g_199", print_hash_value);
    transparent_crc(p_2136->g_202, "p_2136->g_202", print_hash_value);
    transparent_crc(p_2136->g_238, "p_2136->g_238", print_hash_value);
    transparent_crc(p_2136->g_253, "p_2136->g_253", print_hash_value);
    transparent_crc(p_2136->g_318, "p_2136->g_318", print_hash_value);
    transparent_crc(p_2136->g_410.f0, "p_2136->g_410.f0", print_hash_value);
    transparent_crc(p_2136->g_518, "p_2136->g_518", print_hash_value);
    transparent_crc(p_2136->g_542, "p_2136->g_542", print_hash_value);
    transparent_crc(p_2136->g_599, "p_2136->g_599", print_hash_value);
    transparent_crc(p_2136->g_622, "p_2136->g_622", print_hash_value);
    transparent_crc(p_2136->g_657, "p_2136->g_657", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_2136->g_710[i], "p_2136->g_710[i]", print_hash_value);

    }
    transparent_crc(p_2136->g_711, "p_2136->g_711", print_hash_value);
    transparent_crc(p_2136->g_712, "p_2136->g_712", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_2136->g_735[i].f0, "p_2136->g_735[i].f0", print_hash_value);

    }
    transparent_crc(p_2136->g_768, "p_2136->g_768", print_hash_value);
    transparent_crc(p_2136->g_848, "p_2136->g_848", print_hash_value);
    transparent_crc(p_2136->g_868, "p_2136->g_868", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_2136->g_964[i], "p_2136->g_964[i]", print_hash_value);

    }
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_2136->g_1056[i], "p_2136->g_1056[i]", print_hash_value);

    }
    transparent_crc(p_2136->g_1085, "p_2136->g_1085", print_hash_value);
    transparent_crc(p_2136->g_1092, "p_2136->g_1092", print_hash_value);
    transparent_crc(p_2136->g_1197, "p_2136->g_1197", print_hash_value);
    transparent_crc(p_2136->g_1228, "p_2136->g_1228", print_hash_value);
    transparent_crc(p_2136->g_1561, "p_2136->g_1561", print_hash_value);
    transparent_crc(p_2136->g_1592, "p_2136->g_1592", print_hash_value);
    transparent_crc(p_2136->g_1827, "p_2136->g_1827", print_hash_value);
    transparent_crc(p_2136->g_1857, "p_2136->g_1857", print_hash_value);
    transparent_crc(p_2136->g_1866, "p_2136->g_1866", print_hash_value);
    transparent_crc(p_2136->g_1936, "p_2136->g_1936", print_hash_value);
    transparent_crc(p_2136->g_2067, "p_2136->g_2067", print_hash_value);
    transparent_crc(p_2136->g_2114, "p_2136->g_2114", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 8; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_2136->g_2132[i][j][k], "p_2136->g_2132[i][j][k]", print_hash_value);

            }
        }
    }
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
