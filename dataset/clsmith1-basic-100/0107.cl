// ---fake_divergence -g 30,47,6 -l 5,1,1
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


// Seed: 107

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   int32_t  f0;
   int16_t  f1;
   int32_t  f2;
};

union U1 {
   int8_t * f0;
   volatile int32_t  f1;
   int64_t  f2;
};

struct S2 {
    uint64_t g_2;
    int8_t g_6;
    int8_t *g_5;
    int32_t g_9;
    int32_t * volatile g_8;
    int32_t * volatile g_10;
    uint32_t g_13;
    uint32_t *g_20;
    uint16_t g_71;
    uint16_t g_73;
    uint32_t g_79;
    int32_t g_83;
    int32_t * volatile g_82;
    int16_t g_113[10];
    struct S0 g_123;
    struct S0 * volatile g_124;
    int64_t g_141;
    int64_t g_143[2][8];
    int64_t g_179;
    uint64_t g_181;
    int16_t g_186;
    uint64_t g_192;
    union U1 g_203;
    int32_t g_208;
    int16_t g_212;
    volatile int8_t g_214[2][10];
    int64_t g_217;
    volatile int64_t g_219;
    uint8_t g_220;
    volatile int64_t g_229;
    int32_t g_230[3];
    uint64_t g_231;
    int8_t g_248;
    int8_t g_250;
    int64_t *g_254[9];
    uint8_t g_259;
    int32_t *g_283;
    int32_t ** volatile g_282[2][3][3];
    int32_t ** volatile g_308[5];
    uint32_t g_316;
    union U1 g_318;
    uint64_t *g_339;
    uint64_t **g_338;
    uint64_t *** volatile g_337;
    int32_t g_360;
    int32_t ** volatile g_385[4][6];
    int32_t ** volatile g_386;
    uint64_t g_420;
    uint32_t *g_424;
    uint32_t **g_423[9];
    struct S0 g_425;
    uint32_t g_426;
    int16_t g_458[8][2][1];
    union U1 g_481;
    int32_t ** volatile g_509;
    union U1 g_543;
    int32_t ** volatile g_552[2][9][2];
    int32_t ** volatile g_739;
    struct S0 * volatile g_774;
    int32_t ** volatile g_809;
    uint64_t g_830;
    volatile int8_t g_845[9][5][5];
    int32_t **g_854[9][8];
    int32_t ***g_853;
    uint8_t g_879;
    volatile union U1 g_936;
    volatile union U1 *g_935;
    volatile union U1 * volatile * volatile g_934[5][1];
    volatile union U1 g_978[4][3];
    volatile union U1 g_979;
    union U1 g_992;
    int32_t * volatile g_1034;
    volatile union U1 g_1041;
    volatile union U1 g_1073;
    int32_t *g_1078;
    struct S0 * volatile g_1093;
    int32_t ** volatile g_1111;
    int32_t ** volatile g_1113[2][7][2];
    int32_t * volatile g_1156[3][10][7];
    union U1 g_1224[10][9];
    uint64_t g_1229;
    int64_t *g_1239;
    uint64_t ***g_1244;
    uint64_t ****g_1243;
    struct S0 * volatile g_1294;
    struct S0 * volatile g_1295;
    int8_t g_1334;
    uint64_t g_1362;
    int32_t g_1367;
    int64_t g_1396;
    int32_t **g_1403;
    int16_t *g_1447;
    int16_t **g_1446;
    int32_t ****g_1487;
    int32_t *****g_1486;
    int32_t ******g_1485;
    volatile int16_t g_1520[7];
    volatile uint32_t g_1526;
    uint16_t * volatile * volatile g_1539;
    int32_t **g_1565;
    uint64_t g_1569;
    volatile union U1 g_1578;
    uint64_t g_1589;
    union U1 *g_1593;
    struct S0 * volatile g_1625;
    uint16_t *g_1660;
    uint16_t **g_1659;
    union U1 g_1696[2];
    struct S0 *g_1704;
    struct S0 ** volatile g_1703;
    union U1 **g_1710;
    union U1 *** volatile g_1709;
    volatile int64_t g_1711;
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
uint64_t  func_1(struct S2 * p_1719);
int32_t  func_3(int8_t * p_4, struct S2 * p_1719);
uint64_t  func_14(uint8_t  p_15, uint32_t  p_16, int32_t * p_17, struct S2 * p_1719);
uint32_t * func_22(int32_t * p_23, uint16_t  p_24, uint16_t  p_25, int8_t  p_26, uint32_t ** p_27, struct S2 * p_1719);
uint16_t  func_28(uint32_t  p_29, int8_t * p_30, uint64_t  p_31, struct S2 * p_1719);
struct S0  func_32(int32_t  p_33, uint32_t  p_34, uint32_t  p_35, struct S2 * p_1719);
int64_t  func_36(uint64_t  p_37, int64_t  p_38, struct S2 * p_1719);
int16_t  func_47(uint64_t * p_48, int8_t  p_49, int8_t  p_50, uint8_t  p_51, int32_t * p_52, struct S2 * p_1719);
union U1  func_55(int32_t * p_56, uint64_t  p_57, int32_t * p_58, uint64_t  p_59, uint64_t * p_60, struct S2 * p_1719);
int32_t * func_61(int8_t * p_62, int8_t * p_63, uint32_t ** p_64, int8_t * p_65, struct S2 * p_1719);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1719->g_2 p_1719->g_5 p_1719->g_8 p_1719->g_9 p_1719->g_10 p_1719->g_13 p_1719->g_20 p_1719->g_6 p_1719->g_71 p_1719->g_73 p_1719->g_82 p_1719->g_83 p_1719->g_79 p_1719->g_113 p_1719->g_123 p_1719->g_124 p_1719->g_141 p_1719->g_143 p_1719->g_181 p_1719->g_186 p_1719->g_192 p_1719->g_203 p_1719->g_179 p_1719->g_212 p_1719->g_220 p_1719->g_217 p_1719->g_231 p_1719->g_259 p_1719->g_250 p_1719->g_318 p_1719->g_316 p_1719->g_337 p_1719->g_360 p_1719->g_386 p_1719->g_214 p_1719->g_283 p_1719->g_420 p_1719->g_425 p_1719->g_426 p_1719->g_229 p_1719->g_458 p_1719->g_481 p_1719->g_339 p_1719->g_208 p_1719->g_509 p_1719->g_543 p_1719->g_219 p_1719->g_230 p_1719->g_248 p_1719->g_739 p_1719->g_853 p_1719->g_934 p_1719->g_978 p_1719->g_979 p_1719->g_992 p_1719->g_424 p_1719->g_1034 p_1719->g_1041 p_1719->g_1073 p_1719->g_1093 p_1719->g_1111 p_1719->g_1224 p_1719->g_1229 p_1719->g_1243 p_1719->g_845 p_1719->g_1295 p_1719->g_1078 p_1719->g_1239 p_1719->g_1362 p_1719->g_879 p_1719->g_854 p_1719->g_1403 p_1719->g_1485 p_1719->g_1526 p_1719->g_1539 p_1719->g_1589 p_1719->g_1334 p_1719->g_1625 p_1719->g_1569 p_1719->g_1660 p_1719->g_1696 p_1719->g_1659 p_1719->g_1396 p_1719->g_1703 p_1719->g_1709 p_1719->g_1711
 * writes: p_1719->g_9 p_1719->g_13 p_1719->g_20 p_1719->g_2 p_1719->g_71 p_1719->g_73 p_1719->g_83 p_1719->g_113 p_1719->g_79 p_1719->g_8 p_1719->g_123 p_1719->g_141 p_1719->g_143 p_1719->g_10 p_1719->g_179 p_1719->g_181 p_1719->g_192 p_1719->g_208 p_1719->g_212 p_1719->g_220 p_1719->g_231 p_1719->g_248 p_1719->g_250 p_1719->g_254 p_1719->g_259 p_1719->g_186 p_1719->g_316 p_1719->g_338 p_1719->g_283 p_1719->g_420 p_1719->g_426 p_1719->g_360 p_1719->g_458 p_1719->g_425.f2 p_1719->g_853 p_1719->g_6 p_1719->g_879 p_1719->g_934 p_1719->g_425.f0 p_1719->g_424 p_1719->g_217 p_1719->g_425.f1 p_1719->g_1078 p_1719->g_830 p_1719->g_1239 p_1719->g_425 p_1719->g_1403 p_1719->g_1446 p_1719->g_1396 p_1719->g_1593 p_1719->g_1589 p_1719->g_1704 p_1719->g_1710 p_1719->g_1711
 */
uint64_t  func_1(struct S2 * p_1719)
{ /* block id: 4 */
    int32_t *l_1705 = &p_1719->g_123.f2;
    int32_t *l_1712[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int32_t l_1713 = 0x0F1BDEBBL;
    int8_t l_1714 = 9L;
    uint8_t l_1715 = 0xB0L;
    uint8_t l_1718[2];
    int i;
    for (i = 0; i < 2; i++)
        l_1718[i] = 1UL;
    if ((p_1719->g_2 , func_3(p_1719->g_5, p_1719)))
    { /* block id: 937 */
        struct S0 *l_1702 = (void*)0;
        (*p_1719->g_1703) = l_1702;
        l_1705 = ((*p_1719->g_1403) = (void*)0);
    }
    else
    { /* block id: 941 */
        union U1 **l_1708 = &p_1719->g_1593;
        for (p_1719->g_2 = 8; (p_1719->g_2 == 48); p_1719->g_2 = safe_add_func_uint8_t_u_u(p_1719->g_2, 8))
        { /* block id: 944 */
            (*p_1719->g_1709) = l_1708;
        }
        return (*l_1705);
    }
    p_1719->g_1711 ^= 0x5B3D8DBEL;
    l_1715--;
    return l_1718[0];
}


/* ------------------------------------------ */
/* 
 * reads : p_1719->g_8 p_1719->g_9 p_1719->g_10 p_1719->g_83 p_1719->g_13 p_1719->g_20 p_1719->g_5 p_1719->g_6 p_1719->g_71 p_1719->g_73 p_1719->g_82 p_1719->g_79 p_1719->g_113 p_1719->g_2 p_1719->g_123 p_1719->g_124 p_1719->g_141 p_1719->g_143 p_1719->g_181 p_1719->g_186 p_1719->g_192 p_1719->g_203 p_1719->g_179 p_1719->g_212 p_1719->g_220 p_1719->g_217 p_1719->g_231 p_1719->g_259 p_1719->g_250 p_1719->g_318 p_1719->g_316 p_1719->g_337 p_1719->g_360 p_1719->g_386 p_1719->g_214 p_1719->g_283 p_1719->g_420 p_1719->g_425 p_1719->g_426 p_1719->g_229 p_1719->g_458 p_1719->g_481 p_1719->g_339 p_1719->g_208 p_1719->g_509 p_1719->g_543 p_1719->g_219 p_1719->g_230 p_1719->g_248 p_1719->g_739 p_1719->g_853 p_1719->g_934 p_1719->g_978 p_1719->g_979 p_1719->g_992 p_1719->g_424 p_1719->g_1034 p_1719->g_1041 p_1719->g_1073 p_1719->g_1093 p_1719->g_1111 p_1719->g_1224 p_1719->g_1229 p_1719->g_1243 p_1719->g_845 p_1719->g_1295 p_1719->g_1078 p_1719->g_1239 p_1719->g_1362 p_1719->g_854 p_1719->g_1403 p_1719->g_1485 p_1719->g_1526 p_1719->g_1539 p_1719->g_1589 p_1719->g_1334 p_1719->g_1625 p_1719->g_1569 p_1719->g_1660 p_1719->g_1696 p_1719->g_1659 p_1719->g_1396 p_1719->g_879
 * writes: p_1719->g_9 p_1719->g_83 p_1719->g_13 p_1719->g_20 p_1719->g_2 p_1719->g_71 p_1719->g_73 p_1719->g_113 p_1719->g_79 p_1719->g_8 p_1719->g_123 p_1719->g_141 p_1719->g_143 p_1719->g_10 p_1719->g_179 p_1719->g_181 p_1719->g_192 p_1719->g_208 p_1719->g_212 p_1719->g_220 p_1719->g_231 p_1719->g_248 p_1719->g_250 p_1719->g_254 p_1719->g_259 p_1719->g_186 p_1719->g_316 p_1719->g_338 p_1719->g_283 p_1719->g_420 p_1719->g_426 p_1719->g_360 p_1719->g_458 p_1719->g_425.f2 p_1719->g_853 p_1719->g_6 p_1719->g_879 p_1719->g_934 p_1719->g_425.f0 p_1719->g_424 p_1719->g_217 p_1719->g_425.f1 p_1719->g_1078 p_1719->g_830 p_1719->g_1239 p_1719->g_425 p_1719->g_1403 p_1719->g_1446 p_1719->g_1396 p_1719->g_1593 p_1719->g_1589
 */
int32_t  func_3(int8_t * p_4, struct S2 * p_1719)
{ /* block id: 5 */
    uint8_t l_7 = 2UL;
    int32_t l_11[9];
    int32_t l_740 = 0x6A1BB256L;
    int8_t *l_743 = &p_1719->g_6;
    uint32_t *l_1005 = &p_1719->g_79;
    int32_t ****l_1231 = &p_1719->g_853;
    int32_t *****l_1230[3][3][9] = {{{&l_1231,&l_1231,&l_1231,&l_1231,&l_1231,&l_1231,&l_1231,&l_1231,&l_1231},{&l_1231,&l_1231,&l_1231,&l_1231,&l_1231,&l_1231,&l_1231,&l_1231,&l_1231},{&l_1231,&l_1231,&l_1231,&l_1231,&l_1231,&l_1231,&l_1231,&l_1231,&l_1231}},{{&l_1231,&l_1231,&l_1231,&l_1231,&l_1231,&l_1231,&l_1231,&l_1231,&l_1231},{&l_1231,&l_1231,&l_1231,&l_1231,&l_1231,&l_1231,&l_1231,&l_1231,&l_1231},{&l_1231,&l_1231,&l_1231,&l_1231,&l_1231,&l_1231,&l_1231,&l_1231,&l_1231}},{{&l_1231,&l_1231,&l_1231,&l_1231,&l_1231,&l_1231,&l_1231,&l_1231,&l_1231},{&l_1231,&l_1231,&l_1231,&l_1231,&l_1231,&l_1231,&l_1231,&l_1231,&l_1231},{&l_1231,&l_1231,&l_1231,&l_1231,&l_1231,&l_1231,&l_1231,&l_1231,&l_1231}}};
    int64_t *l_1238[4];
    struct S0 l_1255[6][3] = {{{0x4D121336L,-8L,-1L},{0x5DF188BCL,0x4834L,-7L},{0x7B5CACA9L,0L,0x30FC2151L}},{{0x4D121336L,-8L,-1L},{0x5DF188BCL,0x4834L,-7L},{0x7B5CACA9L,0L,0x30FC2151L}},{{0x4D121336L,-8L,-1L},{0x5DF188BCL,0x4834L,-7L},{0x7B5CACA9L,0L,0x30FC2151L}},{{0x4D121336L,-8L,-1L},{0x5DF188BCL,0x4834L,-7L},{0x7B5CACA9L,0L,0x30FC2151L}},{{0x4D121336L,-8L,-1L},{0x5DF188BCL,0x4834L,-7L},{0x7B5CACA9L,0L,0x30FC2151L}},{{0x4D121336L,-8L,-1L},{0x5DF188BCL,0x4834L,-7L},{0x7B5CACA9L,0L,0x30FC2151L}}};
    int8_t l_1315[5];
    uint8_t l_1335 = 248UL;
    uint64_t l_1361 = 0x1B5157B094849593L;
    int32_t **l_1415 = &p_1719->g_1078;
    int64_t l_1424 = 0L;
    int32_t l_1425 = 5L;
    int32_t l_1519 = 0x03407ED1L;
    union U1 *l_1556 = &p_1719->g_1224[9][8];
    int32_t *******l_1655[4];
    uint64_t l_1701 = 1UL;
    int i, j, k;
    for (i = 0; i < 9; i++)
        l_11[i] = (-1L);
    for (i = 0; i < 4; i++)
        l_1238[i] = &p_1719->g_143[1][4];
    for (i = 0; i < 5; i++)
        l_1315[i] = 0x7FL;
    for (i = 0; i < 4; i++)
        l_1655[i] = &p_1719->g_1485;
lbl_1276:
    (*p_1719->g_8) &= l_7;
    (*p_1719->g_10) &= (4L < 0xD0DA0BDBL);
lbl_1218:
    for (l_7 = 3; (l_7 <= 8); l_7 += 1)
    { /* block id: 10 */
        uint32_t *l_12 = &p_1719->g_13;
        uint32_t **l_21 = &p_1719->g_20;
        uint64_t *l_39 = &p_1719->g_2;
        uint32_t *l_1003 = &p_1719->g_79;
        uint32_t **l_1004 = &p_1719->g_424;
        int32_t l_1159 = 1L;
        int32_t l_1160 = 0L;
        int32_t l_1161 = 0x7377C497L;
        int32_t l_1162 = 0x5CDDC8C1L;
        int32_t l_1163 = 0x610F6A1BL;
        int32_t l_1164 = 0x3AFEE7B2L;
        int32_t l_1165 = (-2L);
        int32_t l_1166 = 0x2034D5AFL;
        int i;
        (*p_1719->g_509) = ((((((*l_12) ^= l_11[l_7]) || (l_11[l_7] ^ 0xAC9DL)) == (func_14((safe_mod_func_int8_t_s_s((((*l_21) = p_1719->g_20) == (l_1005 = ((*l_1004) = (l_1003 = func_22(&l_11[l_7], func_28((func_32(((*p_1719->g_5) | (l_740 = (((GROUP_DIVERGE(0, 1) > func_36(((*l_39) = 0xA83FB18BA70A1EE3L), ((!FAKE_DIVERGE(p_1719->group_0_offset, get_group_id(0), 10)) != (-1L)), p_1719)) , GROUP_DIVERGE(1, 1)) | GROUP_DIVERGE(1, 1)))), l_11[6], l_11[3], p_1719) , 0x71487A6BL), l_743, l_7, p_1719), l_11[l_7], (*p_1719->g_5), &p_1719->g_424, p_1719))))), 1L)), p_1719->g_230[0], &l_11[0], p_1719) , l_11[2])) , l_11[l_7]) , (void*)0);
        for (l_740 = 9; (l_740 >= 27); l_740 = safe_add_func_uint64_t_u_u(l_740, 9))
        { /* block id: 662 */
            int16_t l_1155[9] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
            int32_t *l_1157 = (void*)0;
            int32_t *l_1158[4];
            uint8_t l_1167 = 0x17L;
            int i;
            for (i = 0; i < 4; i++)
                l_1158[i] = &p_1719->g_123.f0;
            l_11[l_7] ^= l_1155[5];
            l_1167--;
            return l_1161;
        }
    }
    for (p_1719->g_179 = 8; (p_1719->g_179 == (-9)); p_1719->g_179 = safe_sub_func_int64_t_s_s(p_1719->g_179, 2))
    { /* block id: 670 */
        uint64_t l_1172 = 0xFCD1DC39F8B8BDE9L;
        int32_t l_1183[8] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
        int32_t l_1242 = 0x59CEF047L;
        union U1 *l_1290 = &p_1719->g_318;
        int32_t l_1354 = 0x2DE9B052L;
        uint32_t l_1397 = 0xFA35BD45L;
        int32_t **l_1402 = &p_1719->g_283;
        struct S0 l_1410 = {0L,0x1AC9L,0x302426DEL};
        int32_t **l_1413 = &p_1719->g_1078;
        int32_t ***l_1414 = &l_1413;
        uint8_t l_1426 = 0x97L;
        int32_t *l_1431 = &p_1719->g_83;
        uint64_t **l_1441 = &p_1719->g_339;
        uint32_t l_1511 = 0UL;
        int16_t l_1522 = 0x0342L;
        int16_t ***l_1568 = (void*)0;
        int32_t ******l_1691 = &l_1230[0][2][3];
        int i;
        if (l_1172)
        { /* block id: 671 */
            uint8_t *l_1184 = &l_7;
            uint32_t *l_1189[5][1];
            int32_t l_1190 = 0x57FC208FL;
            int32_t *****l_1236 = &l_1231;
            uint64_t ****l_1246 = (void*)0;
            int32_t l_1248[3][4][6] = {{{0x03891C56L,0x03891C56L,0x10A17E7BL,4L,0L,4L},{0x03891C56L,0x03891C56L,0x10A17E7BL,4L,0L,4L},{0x03891C56L,0x03891C56L,0x10A17E7BL,4L,0L,4L},{0x03891C56L,0x03891C56L,0x10A17E7BL,4L,0L,4L}},{{0x03891C56L,0x03891C56L,0x10A17E7BL,4L,0L,4L},{0x03891C56L,0x03891C56L,0x10A17E7BL,4L,0L,4L},{0x03891C56L,0x03891C56L,0x10A17E7BL,4L,0L,4L},{0x03891C56L,0x03891C56L,0x10A17E7BL,4L,0L,4L}},{{0x03891C56L,0x03891C56L,0x10A17E7BL,4L,0L,4L},{0x03891C56L,0x03891C56L,0x10A17E7BL,4L,0L,4L},{0x03891C56L,0x03891C56L,0x10A17E7BL,4L,0L,4L},{0x03891C56L,0x03891C56L,0x10A17E7BL,4L,0L,4L}}};
            uint64_t l_1303 = 0x67B5961CB6542E00L;
            uint8_t l_1314[3][1];
            uint64_t l_1357 = 7UL;
            int8_t l_1358[7][9] = {{0x79L,(-10L),0x7AL,0x7AL,(-10L),0x79L,1L,(-10L),0x32L},{0x79L,(-10L),0x7AL,0x7AL,(-10L),0x79L,1L,(-10L),0x32L},{0x79L,(-10L),0x7AL,0x7AL,(-10L),0x79L,1L,(-10L),0x32L},{0x79L,(-10L),0x7AL,0x7AL,(-10L),0x79L,1L,(-10L),0x32L},{0x79L,(-10L),0x7AL,0x7AL,(-10L),0x79L,1L,(-10L),0x32L},{0x79L,(-10L),0x7AL,0x7AL,(-10L),0x79L,1L,(-10L),0x32L},{0x79L,(-10L),0x7AL,0x7AL,(-10L),0x79L,1L,(-10L),0x32L}};
            uint32_t l_1369 = 0x9AF3D241L;
            int32_t *l_1380 = &p_1719->g_9;
            int i, j, k;
            for (i = 0; i < 5; i++)
            {
                for (j = 0; j < 1; j++)
                    l_1189[i][j] = &p_1719->g_426;
            }
            for (i = 0; i < 3; i++)
            {
                for (j = 0; j < 1; j++)
                    l_1314[i][j] = 0x87L;
            }
            if (((safe_rshift_func_int8_t_s_u((*p_4), (safe_div_func_uint8_t_u_u((l_11[2] != (!(safe_rshift_func_int8_t_s_s((((safe_mul_func_uint16_t_u_u(p_1719->g_9, ((safe_div_func_int8_t_s_s((l_1183[7] |= (GROUP_DIVERGE(0, 1) >= (l_11[8] == (l_11[3] , l_740)))), ((*l_1184) = p_1719->g_141))) <= (safe_add_func_uint64_t_u_u(((*p_1719->g_339) ^= (safe_div_func_int32_t_s_s(((p_1719->g_426 |= l_1172) , l_1172), l_1172))), l_1172))))) , l_1190) == l_11[4]), 7)))), (*p_4))))) || p_1719->g_425.f2))
            { /* block id: 676 */
                uint32_t l_1201 = 0UL;
                uint32_t ***l_1216 = (void*)0;
                int32_t ******l_1232 = (void*)0;
                int32_t ******l_1233 = &l_1230[0][1][3];
                int64_t *l_1237 = &p_1719->g_141;
                uint64_t *****l_1245 = (void*)0;
                int64_t l_1247 = 0x671F11BF6E6BBA7BL;
                int8_t *l_1267 = &p_1719->g_248;
                struct S0 l_1293 = {1L,4L,0x0B39D1A9L};
                uint8_t l_1316 = 255UL;
                if ((l_1172 >= ((*p_1719->g_339) = (p_1719->g_141 & ((void*)0 != &p_1719->g_6)))))
                { /* block id: 678 */
                    uint8_t l_1214[5];
                    uint8_t *l_1215 = &p_1719->g_879;
                    int i;
                    for (i = 0; i < 5; i++)
                        l_1214[i] = 0x07L;
                    l_1190 = ((~(((*p_1719->g_1093) , (safe_add_func_int32_t_s_s((((safe_lshift_func_uint16_t_u_s((safe_sub_func_int64_t_s_s((safe_add_func_int32_t_s_s((~l_1201), (&p_1719->g_425 != (((((safe_lshift_func_int16_t_s_s(p_1719->g_219, (&p_1719->g_423[1] != (((safe_lshift_func_int16_t_s_s(p_1719->g_123.f2, 3)) > (safe_sub_func_int64_t_s_s(((!((*l_1215) = ((*l_1184) = (safe_rshift_func_int16_t_s_u((safe_lshift_func_uint8_t_u_u((65532UL == (((safe_rshift_func_int8_t_s_u(l_1214[4], (255UL & p_1719->g_143[0][7]))) , l_1214[4]) && 0x4BB3L)), 0)), 12))))) > l_1183[7]), p_1719->g_208))) , l_1216)))) || l_1183[7]) == 0x781DL) <= l_1190) , &p_1719->g_123)))), l_1183[0])), l_1214[4])) , &p_1719->g_179) != (void*)0), 1UL))) == p_1719->g_420)) , 0x683258E2L);
                }
                else
                { /* block id: 682 */
                    uint64_t l_1217 = 18446744073709551615UL;
                    int32_t l_1219 = (-1L);
                    if (l_1217)
                    { /* block id: 683 */
                        if (l_11[0])
                            break;
                        if (l_1217)
                            break;
                        if (l_740)
                            goto lbl_1218;
                    }
                    else
                    { /* block id: 687 */
                        l_1219 = l_1172;
                    }
                    if (l_1219)
                        continue;
                }
                l_1248[2][0][1] ^= (safe_mod_func_int8_t_s_s(((((safe_mul_func_int8_t_s_s(((l_1246 = ((p_1719->g_1224[8][6] , ((safe_div_func_uint16_t_u_u((safe_mul_func_uint16_t_u_u(((p_1719->g_1229 , l_1190) > (((*l_1237) &= ((((*l_1233) = l_1230[1][2][2]) != ((safe_rshift_func_int16_t_s_s(l_1190, 14)) , l_1236)) || GROUP_DIVERGE(2, 1))) <= ((&p_1719->g_217 != (p_1719->g_1239 = l_1238[0])) , ((safe_lshift_func_int8_t_s_s((*p_4), 4)) == p_1719->g_83)))), p_1719->g_219)), l_1242)) <= FAKE_DIVERGE(p_1719->local_1_offset, get_local_id(1), 10))) , p_1719->g_1243)) == (void*)0), l_1242)) , FAKE_DIVERGE(p_1719->local_1_offset, get_local_id(1), 10)) && l_1247) && (*p_1719->g_5)), FAKE_DIVERGE(p_1719->global_1_offset, get_global_id(1), 10)));
                for (p_1719->g_212 = 0; (p_1719->g_212 >= 0); p_1719->g_212 -= 1)
                { /* block id: 699 */
                    int64_t l_1256 = 5L;
                    int8_t *l_1266[8][8][4] = {{{&p_1719->g_6,&p_1719->g_6,&p_1719->g_250,&p_1719->g_250},{&p_1719->g_6,&p_1719->g_6,&p_1719->g_250,&p_1719->g_250},{&p_1719->g_6,&p_1719->g_6,&p_1719->g_250,&p_1719->g_250},{&p_1719->g_6,&p_1719->g_6,&p_1719->g_250,&p_1719->g_250},{&p_1719->g_6,&p_1719->g_6,&p_1719->g_250,&p_1719->g_250},{&p_1719->g_6,&p_1719->g_6,&p_1719->g_250,&p_1719->g_250},{&p_1719->g_6,&p_1719->g_6,&p_1719->g_250,&p_1719->g_250},{&p_1719->g_6,&p_1719->g_6,&p_1719->g_250,&p_1719->g_250}},{{&p_1719->g_6,&p_1719->g_6,&p_1719->g_250,&p_1719->g_250},{&p_1719->g_6,&p_1719->g_6,&p_1719->g_250,&p_1719->g_250},{&p_1719->g_6,&p_1719->g_6,&p_1719->g_250,&p_1719->g_250},{&p_1719->g_6,&p_1719->g_6,&p_1719->g_250,&p_1719->g_250},{&p_1719->g_6,&p_1719->g_6,&p_1719->g_250,&p_1719->g_250},{&p_1719->g_6,&p_1719->g_6,&p_1719->g_250,&p_1719->g_250},{&p_1719->g_6,&p_1719->g_6,&p_1719->g_250,&p_1719->g_250},{&p_1719->g_6,&p_1719->g_6,&p_1719->g_250,&p_1719->g_250}},{{&p_1719->g_6,&p_1719->g_6,&p_1719->g_250,&p_1719->g_250},{&p_1719->g_6,&p_1719->g_6,&p_1719->g_250,&p_1719->g_250},{&p_1719->g_6,&p_1719->g_6,&p_1719->g_250,&p_1719->g_250},{&p_1719->g_6,&p_1719->g_6,&p_1719->g_250,&p_1719->g_250},{&p_1719->g_6,&p_1719->g_6,&p_1719->g_250,&p_1719->g_250},{&p_1719->g_6,&p_1719->g_6,&p_1719->g_250,&p_1719->g_250},{&p_1719->g_6,&p_1719->g_6,&p_1719->g_250,&p_1719->g_250},{&p_1719->g_6,&p_1719->g_6,&p_1719->g_250,&p_1719->g_250}},{{&p_1719->g_6,&p_1719->g_6,&p_1719->g_250,&p_1719->g_250},{&p_1719->g_6,&p_1719->g_6,&p_1719->g_250,&p_1719->g_250},{&p_1719->g_6,&p_1719->g_6,&p_1719->g_250,&p_1719->g_250},{&p_1719->g_6,&p_1719->g_6,&p_1719->g_250,&p_1719->g_250},{&p_1719->g_6,&p_1719->g_6,&p_1719->g_250,&p_1719->g_250},{&p_1719->g_6,&p_1719->g_6,&p_1719->g_250,&p_1719->g_250},{&p_1719->g_6,&p_1719->g_6,&p_1719->g_250,&p_1719->g_250},{&p_1719->g_6,&p_1719->g_6,&p_1719->g_250,&p_1719->g_250}},{{&p_1719->g_6,&p_1719->g_6,&p_1719->g_250,&p_1719->g_250},{&p_1719->g_6,&p_1719->g_6,&p_1719->g_250,&p_1719->g_250},{&p_1719->g_6,&p_1719->g_6,&p_1719->g_250,&p_1719->g_250},{&p_1719->g_6,&p_1719->g_6,&p_1719->g_250,&p_1719->g_250},{&p_1719->g_6,&p_1719->g_6,&p_1719->g_250,&p_1719->g_250},{&p_1719->g_6,&p_1719->g_6,&p_1719->g_250,&p_1719->g_250},{&p_1719->g_6,&p_1719->g_6,&p_1719->g_250,&p_1719->g_250},{&p_1719->g_6,&p_1719->g_6,&p_1719->g_250,&p_1719->g_250}},{{&p_1719->g_6,&p_1719->g_6,&p_1719->g_250,&p_1719->g_250},{&p_1719->g_6,&p_1719->g_6,&p_1719->g_250,&p_1719->g_250},{&p_1719->g_6,&p_1719->g_6,&p_1719->g_250,&p_1719->g_250},{&p_1719->g_6,&p_1719->g_6,&p_1719->g_250,&p_1719->g_250},{&p_1719->g_6,&p_1719->g_6,&p_1719->g_250,&p_1719->g_250},{&p_1719->g_6,&p_1719->g_6,&p_1719->g_250,&p_1719->g_250},{&p_1719->g_6,&p_1719->g_6,&p_1719->g_250,&p_1719->g_250},{&p_1719->g_6,&p_1719->g_6,&p_1719->g_250,&p_1719->g_250}},{{&p_1719->g_6,&p_1719->g_6,&p_1719->g_250,&p_1719->g_250},{&p_1719->g_6,&p_1719->g_6,&p_1719->g_250,&p_1719->g_250},{&p_1719->g_6,&p_1719->g_6,&p_1719->g_250,&p_1719->g_250},{&p_1719->g_6,&p_1719->g_6,&p_1719->g_250,&p_1719->g_250},{&p_1719->g_6,&p_1719->g_6,&p_1719->g_250,&p_1719->g_250},{&p_1719->g_6,&p_1719->g_6,&p_1719->g_250,&p_1719->g_250},{&p_1719->g_6,&p_1719->g_6,&p_1719->g_250,&p_1719->g_250},{&p_1719->g_6,&p_1719->g_6,&p_1719->g_250,&p_1719->g_250}},{{&p_1719->g_6,&p_1719->g_6,&p_1719->g_250,&p_1719->g_250},{&p_1719->g_6,&p_1719->g_6,&p_1719->g_250,&p_1719->g_250},{&p_1719->g_6,&p_1719->g_6,&p_1719->g_250,&p_1719->g_250},{&p_1719->g_6,&p_1719->g_6,&p_1719->g_250,&p_1719->g_250},{&p_1719->g_6,&p_1719->g_6,&p_1719->g_250,&p_1719->g_250},{&p_1719->g_6,&p_1719->g_6,&p_1719->g_250,&p_1719->g_250},{&p_1719->g_6,&p_1719->g_6,&p_1719->g_250,&p_1719->g_250},{&p_1719->g_6,&p_1719->g_6,&p_1719->g_250,&p_1719->g_250}}};
                    uint16_t l_1272 = 0xAA80L;
                    int16_t *l_1273 = &p_1719->g_113[5];
                    int32_t *l_1274[3];
                    int32_t l_1275 = 0x46ADE686L;
                    union U1 *l_1289 = &p_1719->g_318;
                    int16_t l_1292[1];
                    int i, j, k;
                    for (i = 0; i < 3; i++)
                        l_1274[i] = &p_1719->g_208;
                    for (i = 0; i < 1; i++)
                        l_1292[i] = (-5L);
                    if ((safe_div_func_uint32_t_u_u((safe_add_func_int64_t_s_s(((l_1183[7] = ((((safe_lshift_func_int16_t_s_s((l_1255[2][1] , p_1719->g_230[0]), 4)) < l_1256) & ((l_1275 = (safe_unary_minus_func_uint8_t_u((((safe_rshift_func_int16_t_s_u(((*l_1273) &= ((((p_1719->g_845[6][4][0] > l_1256) < (l_1242 = (safe_sub_func_int32_t_s_s((-2L), (safe_lshift_func_int16_t_s_s((((((safe_add_func_int32_t_s_s(((l_1266[0][3][1] == l_1267) != (((safe_mod_func_int16_t_s_s((safe_mod_func_uint16_t_u_u(p_1719->g_316, p_1719->g_123.f1)), l_1256)) , (*p_4)) && (*p_4))), l_1272)) && (-1L)) == 0x06486C73L) <= p_1719->g_6) | l_1183[7]), l_1172)))))) >= l_1172) , p_1719->g_13)), GROUP_DIVERGE(1, 1))) < 0x49436678DC92F47DL) == GROUP_DIVERGE(1, 1))))) , (*p_4))) , l_1190)) != 0x1F7FC9DAL), 0L)), l_1172)))
                    { /* block id: 704 */
                        int32_t l_1279 = 8L;
                        uint32_t *l_1288 = &p_1719->g_79;
                        uint8_t l_1291 = 0UL;
                        if (l_1190)
                            goto lbl_1276;
                        l_1293 = func_32((safe_add_func_uint64_t_u_u(((*p_1719->g_339) = (*p_1719->g_339)), (l_1279 > (((safe_lshift_func_uint8_t_u_s(GROUP_DIVERGE(2, 1), ((*p_1719->g_5) = ((*l_1267) = ((((safe_rshift_func_int8_t_s_u((safe_mul_func_uint8_t_u_u(p_1719->g_316, ((((l_1272 > (safe_mul_func_int16_t_s_s(((void*)0 != l_1288), (((l_1201 || ((l_1289 != l_1290) || 0xE8L)) , l_1279) < l_1256)))) & l_1256) <= 0x4EEBL) <= 65527UL))), 1)) & l_1291) || l_1183[7]) == p_1719->g_259))))) ^ l_1242) & l_1292[0])))), l_1183[6], p_1719->g_250, p_1719);
                    }
                    else
                    { /* block id: 710 */
                        (*p_1719->g_1295) = (*p_1719->g_124);
                    }
                    for (p_1719->g_6 = 0; (p_1719->g_6 <= 1); p_1719->g_6 += 1)
                    { /* block id: 715 */
                        uint16_t *l_1298 = &p_1719->g_73;
                        uint32_t **l_1319 = &p_1719->g_20;
                        struct S0 *l_1324 = &l_1255[0][2];
                        int i, j, k;
                        l_1248[p_1719->g_6][p_1719->g_6][p_1719->g_6] = (safe_mul_func_uint16_t_u_u((--(*l_1298)), l_1172));
                        l_1275 &= ((safe_add_func_int32_t_s_s(((((*p_1719->g_1078) , (l_1303 == GROUP_DIVERGE(1, 1))) || (*p_1719->g_1239)) & (0x4EL ^ ((l_1242 = ((safe_mul_func_int8_t_s_s((-1L), ((safe_add_func_uint32_t_u_u((((*l_1237) ^= ((((safe_mul_func_uint16_t_u_u(((~((l_1183[7] = (((((((*p_1719->g_339) >= (p_1719->g_426 , (safe_div_func_int32_t_s_s(((safe_mul_func_uint16_t_u_u(0xBD85L, ((&l_1256 == l_1238[0]) != 5L))) & 0L), 4294967293UL)))) , l_1314[0][0]) == p_1719->g_1229) <= 6UL) > 0x9AB6B8CFL) != 0x7D922B35F03719AAL)) <= l_1292[0])) , l_1315[3]), p_1719->g_1229)) , (void*)0) != &p_1719->g_420) , 5L)) ^ l_1248[p_1719->g_6][p_1719->g_6][p_1719->g_6]), l_1172)) ^ 65535UL))) ^ l_1316)) && l_1183[7]))), (*p_1719->g_8))) && GROUP_DIVERGE(1, 1));
                        (*l_1324) = func_32(l_1256, ((l_1275 && (0x98BAD4E7L & (l_1293.f0 |= (l_1275 &= (safe_rshift_func_int8_t_s_u((((&p_1719->g_424 != l_1319) , (((safe_sub_func_uint64_t_u_u(4UL, 0x69632EF9A89129FCL)) | ((safe_mul_func_int16_t_s_s(0x4B8AL, 0x50E4L)) <= l_1183[0])) & (*p_1719->g_339))) == l_1183[2]), p_1719->g_458[6][1][0])))))) && FAKE_DIVERGE(p_1719->group_0_offset, get_group_id(0), 10)), l_1314[2][0], p_1719);
                    }
                }
            }
            else
            { /* block id: 727 */
                int16_t l_1325 = 0x0D22L;
                int32_t l_1328 = (-1L);
                int32_t l_1331[2][8][4] = {{{0x6089D5E9L,0x3A2E5DE0L,0x6089D5E9L,0x6089D5E9L},{0x6089D5E9L,0x3A2E5DE0L,0x6089D5E9L,0x6089D5E9L},{0x6089D5E9L,0x3A2E5DE0L,0x6089D5E9L,0x6089D5E9L},{0x6089D5E9L,0x3A2E5DE0L,0x6089D5E9L,0x6089D5E9L},{0x6089D5E9L,0x3A2E5DE0L,0x6089D5E9L,0x6089D5E9L},{0x6089D5E9L,0x3A2E5DE0L,0x6089D5E9L,0x6089D5E9L},{0x6089D5E9L,0x3A2E5DE0L,0x6089D5E9L,0x6089D5E9L},{0x6089D5E9L,0x3A2E5DE0L,0x6089D5E9L,0x6089D5E9L}},{{0x6089D5E9L,0x3A2E5DE0L,0x6089D5E9L,0x6089D5E9L},{0x6089D5E9L,0x3A2E5DE0L,0x6089D5E9L,0x6089D5E9L},{0x6089D5E9L,0x3A2E5DE0L,0x6089D5E9L,0x6089D5E9L},{0x6089D5E9L,0x3A2E5DE0L,0x6089D5E9L,0x6089D5E9L},{0x6089D5E9L,0x3A2E5DE0L,0x6089D5E9L,0x6089D5E9L},{0x6089D5E9L,0x3A2E5DE0L,0x6089D5E9L,0x6089D5E9L},{0x6089D5E9L,0x3A2E5DE0L,0x6089D5E9L,0x6089D5E9L},{0x6089D5E9L,0x3A2E5DE0L,0x6089D5E9L,0x6089D5E9L}}};
                uint8_t l_1345 = 0xC9L;
                int i, j, k;
                if (l_1325)
                    break;
                for (p_1719->g_420 = (-21); (p_1719->g_420 == 13); p_1719->g_420++)
                { /* block id: 731 */
                    int32_t l_1329 = (-7L);
                    int32_t l_1330 = 0x375454F5L;
                    int32_t l_1332 = (-9L);
                    int32_t l_1333[1];
                    int i;
                    for (i = 0; i < 1; i++)
                        l_1333[i] = (-2L);
                    l_1335++;
                    for (p_1719->g_212 = (-29); (p_1719->g_212 <= 26); p_1719->g_212 = safe_add_func_int16_t_s_s(p_1719->g_212, 4))
                    { /* block id: 735 */
                        uint32_t l_1340 = 0UL;
                        int32_t l_1343 = 0x3B5D7304L;
                        int32_t l_1344 = 0x3CCDA9D0L;
                        --l_1340;
                        --l_1345;
                    }
                }
                l_1190 = l_1248[1][2][1];
            }
            for (p_1719->g_2 = 0; (p_1719->g_2 > 1); p_1719->g_2 = safe_add_func_int32_t_s_s(p_1719->g_2, 5))
            { /* block id: 744 */
                uint16_t *l_1355 = &p_1719->g_71;
                uint16_t *l_1356 = &p_1719->g_73;
                int32_t *l_1365 = &l_1248[2][1][0];
                int32_t l_1368[8];
                int i;
                for (i = 0; i < 8; i++)
                    l_1368[i] = (-10L);
                l_1358[1][2] = (safe_lshift_func_uint16_t_u_u(((*l_1356) = ((*l_1355) = (safe_mod_func_int8_t_s_s((*p_4), l_1354)))), l_1357));
                l_1190 ^= (0xEBBBL ^ (+p_1719->g_250));
                l_1242 ^= (safe_rshift_func_uint8_t_u_u((!(0x58E664CEE3404A84L ^ ((*p_1719->g_1239) = (l_1361 <= p_1719->g_1362)))), 3));
                for (p_1719->g_879 = 22; (p_1719->g_879 <= 37); ++p_1719->g_879)
                { /* block id: 753 */
                    int8_t l_1366 = 7L;
                    int32_t l_1378[9];
                    int i;
                    for (i = 0; i < 9; i++)
                        l_1378[i] = (-6L);
                    l_1365 = &l_1183[0];
                    ++l_1369;
                    for (p_1719->g_250 = 0; (p_1719->g_250 < 17); ++p_1719->g_250)
                    { /* block id: 758 */
                        int32_t l_1379 = 1L;
                        l_1378[2] |= ((safe_sub_func_uint8_t_u_u(0xAFL, (p_1719->g_186 <= (safe_div_func_int8_t_s_s((*p_4), (*l_1365)))))) & l_1366);
                        if (l_1379)
                            continue;
                    }
                    l_1183[7] |= (l_1378[1] = (l_1190 = (*p_1719->g_82)));
                }
            }
            l_1380 = &l_1248[1][0][1];
            return l_1183[7];
        }
        else
        { /* block id: 769 */
            int16_t l_1389 = 6L;
            int32_t l_1394 = 0x470B7777L;
            for (l_7 = 0; (l_7 > 6); l_7++)
            { /* block id: 772 */
                int64_t **l_1384 = (void*)0;
                int64_t **l_1390 = &l_1238[1];
                int64_t *l_1392 = (void*)0;
                int64_t **l_1391 = &l_1392;
                int32_t l_1393 = (-9L);
                int32_t *l_1395 = &p_1719->g_123.f0;
                l_1394 = ((!0x0AL) & ((((safe_unary_minus_func_uint16_t_u((((void*)0 == l_1384) | (l_1183[0] , (--(*p_1719->g_339)))))) || ((0x87051AD7116DF765L | ((*p_1719->g_1239) = (safe_mod_func_int32_t_s_s(l_1183[1], l_1389)))) <= ((((*l_1391) = ((*l_1390) = &p_1719->g_217)) == ((((l_1393 != 0L) >= 0xFB2AF93F47B4DB36L) <= 0x880E4F2FL) , (void*)0)) | 0x70D1L))) , l_1389) < FAKE_DIVERGE(p_1719->local_1_offset, get_local_id(1), 10)));
                l_1395 = &l_1183[7];
            }
        }
        --l_1397;
        if ((safe_mod_func_int64_t_s_s(((**l_1231) != (p_1719->g_1403 = (l_1402 = l_1402))), (safe_lshift_func_int16_t_s_s(((l_1183[7] = (l_1242 &= l_1183[0])) , (l_1172 | (safe_lshift_func_uint16_t_u_s((safe_mod_func_int32_t_s_s((l_1410 , (((safe_mod_func_uint8_t_u_u((((*l_1414) = l_1413) == (GROUP_DIVERGE(1, 1) , l_1415)), p_1719->g_458[1][0][0])) | (l_1410.f2 ^= (((safe_rshift_func_int16_t_s_s((l_1183[3] < l_1410.f1), 2)) == l_1410.f0) && (*p_1719->g_1239)))) & FAKE_DIVERGE(p_1719->global_1_offset, get_global_id(1), 10))), l_1410.f1)), 15)))), 9)))))
        { /* block id: 788 */
            int32_t l_1418 = 8L;
            int32_t l_1419 = (-1L);
            int32_t l_1420 = 0x160395F9L;
            int32_t l_1421 = 0x70983013L;
            int32_t l_1422[10][4] = {{(-7L),0x404A1625L,(-7L),(-7L)},{(-7L),0x404A1625L,(-7L),(-7L)},{(-7L),0x404A1625L,(-7L),(-7L)},{(-7L),0x404A1625L,(-7L),(-7L)},{(-7L),0x404A1625L,(-7L),(-7L)},{(-7L),0x404A1625L,(-7L),(-7L)},{(-7L),0x404A1625L,(-7L),(-7L)},{(-7L),0x404A1625L,(-7L),(-7L)},{(-7L),0x404A1625L,(-7L),(-7L)},{(-7L),0x404A1625L,(-7L),(-7L)}};
            int16_t l_1423 = 0x1599L;
            int16_t **l_1445 = (void*)0;
            uint64_t **l_1455 = &p_1719->g_339;
            uint64_t ****l_1504 = &p_1719->g_1244;
            int32_t *l_1505 = &l_1255[2][1].f0;
            uint16_t *l_1541 = (void*)0;
            uint16_t **l_1540 = &l_1541;
            int i, j;
            ++l_1426;
            for (p_1719->g_6 = (-20); (p_1719->g_6 >= (-4)); p_1719->g_6 = safe_add_func_uint8_t_u_u(p_1719->g_6, 2))
            { /* block id: 792 */
                uint32_t l_1438 = 0x400F5E63L;
                int32_t l_1467 = 1L;
                (*l_1402) = l_1431;
                (*p_1719->g_1403) = (*l_1402);
                for (l_1425 = (-29); (l_1425 >= 27); ++l_1425)
                { /* block id: 797 */
                    int16_t *l_1443 = (void*)0;
                    int16_t **l_1442 = &l_1443;
                    int32_t l_1458 = 1L;
                    int32_t *l_1468 = (void*)0;
                    int32_t ****l_1479 = &p_1719->g_853;
                    int32_t ******l_1489 = (void*)0;
                    for (p_1719->g_425.f0 = 7; (p_1719->g_425.f0 < 27); p_1719->g_425.f0 = safe_add_func_uint8_t_u_u(p_1719->g_425.f0, 8))
                    { /* block id: 800 */
                        uint64_t **l_1439 = &p_1719->g_339;
                        uint64_t ***l_1440[3];
                        int16_t ***l_1444 = &l_1442;
                        int32_t l_1452 = 0L;
                        int i;
                        for (i = 0; i < 3; i++)
                            l_1440[i] = &l_1439;
                        (*l_1431) = (GROUP_DIVERGE(0, 1) >= ((-1L) & (p_1719->g_113[6] = (l_1438 < ((l_1441 = l_1439) != ((((((*l_1444) = l_1442) == (p_1719->g_1446 = l_1445)) >= (safe_add_func_uint8_t_u_u(l_1422[7][1], l_1438))) , (((safe_div_func_int8_t_s_s((l_1452 | (((safe_sub_func_uint64_t_u_u(18446744073709551614UL, 0xA0EB4A11241BDA9EL)) && GROUP_DIVERGE(0, 1)) ^ p_1719->g_845[1][0][0])), p_1719->g_9)) , l_1438) | (*p_1719->g_1239))) , l_1455))))));
                        (*l_1431) = (l_1467 &= (((((*l_1431) || l_1458) & ((0UL > (safe_sub_func_uint64_t_u_u(l_1438, l_1422[0][1]))) == 0x0947A021L)) != (safe_sub_func_uint8_t_u_u((safe_mod_func_uint8_t_u_u(((((safe_lshift_func_int16_t_s_u((l_1458 , (((*l_1413) = &p_1719->g_230[0]) == (void*)0)), p_1719->g_425.f1)) == l_1452) != 0x9B16L) && l_1418), l_1452)), 0x6BL))) < (**l_1402)));
                        l_1468 = &l_1458;
                        (*l_1431) |= (*l_1468);
                    }
                    for (p_1719->g_181 = (-16); (p_1719->g_181 <= 56); p_1719->g_181 = safe_add_func_uint16_t_u_u(p_1719->g_181, 4))
                    { /* block id: 814 */
                        int16_t *l_1480 = &p_1719->g_425.f1;
                        int32_t *******l_1488[5][5] = {{&p_1719->g_1485,&p_1719->g_1485,&p_1719->g_1485,&p_1719->g_1485,&p_1719->g_1485},{&p_1719->g_1485,&p_1719->g_1485,&p_1719->g_1485,&p_1719->g_1485,&p_1719->g_1485},{&p_1719->g_1485,&p_1719->g_1485,&p_1719->g_1485,&p_1719->g_1485,&p_1719->g_1485},{&p_1719->g_1485,&p_1719->g_1485,&p_1719->g_1485,&p_1719->g_1485,&p_1719->g_1485},{&p_1719->g_1485,&p_1719->g_1485,&p_1719->g_1485,&p_1719->g_1485,&p_1719->g_1485}};
                        int32_t *l_1496 = &p_1719->g_208;
                        int16_t *l_1497 = &l_1423;
                        int i, j;
                        (**p_1719->g_1403) = (safe_div_func_int8_t_s_s((safe_mul_func_uint8_t_u_u((((*l_1497) = ((GROUP_DIVERGE(2, 1) ^ ((safe_mul_func_int16_t_s_s((safe_mod_func_int16_t_s_s(l_1418, ((*l_1480) = ((l_1479 == (void*)0) & (*p_4))))), (~(l_1467 ^= p_1719->g_212)))) && (safe_lshift_func_uint8_t_u_u(((((*l_1496) = (((l_1489 = p_1719->g_1485) == (void*)0) <= ((l_1438 && ((safe_sub_func_uint16_t_u_u(((safe_lshift_func_uint8_t_u_s((safe_sub_func_uint16_t_u_u(((*l_1431) && l_1421), (*l_1431))), (*l_1431))) < (-1L)), l_1422[9][2])) & (**l_1402))) != (*p_1719->g_1239)))) , 4294967295UL) | l_1422[0][0]), 0)))) | (*l_1431))) < 0x03DAL), GROUP_DIVERGE(0, 1))), 3UL));
                    }
                    (*l_1431) = (((*p_1719->g_1239) ^ ((**l_1402) | (safe_rshift_func_int16_t_s_u((l_1422[9][2] <= 0L), (safe_add_func_uint16_t_u_u(0x0F44L, (((p_1719->g_1396 = (((7L | (*p_1719->g_1239)) == ((*p_1719->g_8) < GROUP_DIVERGE(2, 1))) >= ((l_1504 != &p_1719->g_1244) == p_1719->g_259))) >= 0x58D80F57E520B6AEL) , (**l_1402)))))))) , (*p_1719->g_8));
                    l_1505 = &l_1467;
                }
            }
            for (p_1719->g_420 = 0; (p_1719->g_420 <= 35); p_1719->g_420 = safe_add_func_int32_t_s_s(p_1719->g_420, 5))
            { /* block id: 829 */
                uint16_t l_1508 = 1UL;
                int32_t l_1513[8] = {9L,0x2F8DADABL,9L,9L,0x2F8DADABL,9L,9L,0x2F8DADABL};
                int32_t l_1534 = 0x5AFA4765L;
                int i;
                --l_1508;
                if (l_1508)
                    continue;
                if (l_1511)
                { /* block id: 832 */
                    int8_t l_1512 = 0x71L;
                    int32_t l_1514 = 0x4CDAF992L;
                    int32_t l_1515 = 0x5C115BAEL;
                    int32_t l_1516 = 0x0FCB1ABAL;
                    int32_t l_1517 = 3L;
                    int32_t l_1518 = (-7L);
                    int32_t l_1521[10] = {0L,0L,0L,0L,0L,0L,0L,0L,0L,0L};
                    uint32_t l_1523[5];
                    int16_t *l_1533 = &l_1522;
                    int i;
                    for (i = 0; i < 5; i++)
                        l_1523[i] = 1UL;
                    ++l_1523[0];
                    (*l_1431) = (p_1719->g_1526 , (safe_lshift_func_uint8_t_u_u(((*l_1431) , ((0xDA38L || (((*l_1533) = ((3L < (!(l_1508 <= (safe_sub_func_uint8_t_u_u((((*p_1719->g_1239) >= (!(l_1508 != l_1518))) , l_1523[2]), p_1719->g_217))))) , 0x583EL)) | GROUP_DIVERGE(2, 1))) && l_1534)), l_1521[0])));
                    return l_1534;
                }
                else
                { /* block id: 837 */
                    uint16_t l_1542[5] = {0x6F13L,0x6F13L,0x6F13L,0x6F13L,0x6F13L};
                    struct S0 *l_1543[10] = {&l_1255[2][1],&l_1255[2][1],&l_1255[2][1],&l_1255[2][1],&l_1255[2][1],&l_1255[2][1],&l_1255[2][1],&l_1255[2][1],&l_1255[2][1],&l_1255[2][1]};
                    int i;
                    l_1410 = func_32((((l_1513[0] >= (((l_1423 ^ (p_1719->g_220 || ((GROUP_DIVERGE(1, 1) <= ((FAKE_DIVERGE(p_1719->local_2_offset, get_local_id(2), 10) | l_1513[0]) >= (*p_4))) | 0L))) ^ (safe_add_func_uint32_t_u_u((safe_sub_func_uint8_t_u_u((l_1513[0] | (p_1719->g_1539 == l_1540)), (*p_4))), (*l_1431)))) & l_1542[3])) && GROUP_DIVERGE(0, 1)) | 4294967287UL), (*l_1431), l_1542[3], p_1719);
                    if (l_1420)
                        continue;
                    l_1183[7] ^= (l_1508 == (*l_1431));
                }
                (*l_1431) &= 0x305E1B55L;
            }
        }
        else
        { /* block id: 844 */
            uint16_t l_1572 = 0UL;
            int32_t l_1574 = 1L;
            for (p_1719->g_192 = 0; (p_1719->g_192 == 39); p_1719->g_192++)
            { /* block id: 847 */
                uint32_t l_1557[3];
                int32_t **l_1563[4];
                int64_t l_1570 = (-1L);
                int32_t l_1573 = 0x66305EF6L;
                int i;
                for (i = 0; i < 3; i++)
                    l_1557[i] = 1UL;
                for (i = 0; i < 4; i++)
                    l_1563[i] = &p_1719->g_1078;
                for (l_1172 = 17; (l_1172 <= 27); l_1172 = safe_add_func_int8_t_s_s(l_1172, 4))
                { /* block id: 850 */
                    int16_t l_1562 = (-10L);
                    int32_t **l_1564 = &p_1719->g_1078;
                    int16_t ***l_1567[10] = {&p_1719->g_1446,&p_1719->g_1446,&p_1719->g_1446,&p_1719->g_1446,&p_1719->g_1446,&p_1719->g_1446,&p_1719->g_1446,&p_1719->g_1446,&p_1719->g_1446,&p_1719->g_1446};
                    int16_t ****l_1566 = &l_1567[3];
                    int32_t l_1571 = (-1L);
                    int i;
                    (1 + 1);
                }
            }
            return (*l_1431);
        }
        for (l_7 = 0; (l_7 != 30); l_7++)
        { /* block id: 876 */
            uint32_t l_1588 = 0x6A113EF5L;
            int32_t l_1590 = 0x02453DD2L;
            int32_t l_1591 = 0x2DB423C5L;
            union U1 *l_1592 = &p_1719->g_318;
            int64_t **l_1604 = &p_1719->g_254[8];
            int32_t l_1675 = 0L;
            int32_t *l_1677[4];
            int32_t ******l_1698 = (void*)0;
            int i;
            for (i = 0; i < 4; i++)
                l_1677[i] = &l_1255[2][1].f2;
            for (p_1719->g_181 = 0; (p_1719->g_181 <= 1); p_1719->g_181 += 1)
            { /* block id: 879 */
                uint32_t l_1583 = 0UL;
                uint32_t l_1605 = 4294967289UL;
                (*l_1431) = ((4294967295UL == 0x31D8CC9BL) ^ (l_1591 |= ((((*p_1719->g_1239) = (*p_1719->g_1239)) == ((0x71L < ((l_1590 = (safe_lshift_func_uint8_t_u_s((((p_1719->g_1229 && ((((l_1583 >= (((safe_lshift_func_int16_t_s_s((safe_add_func_uint64_t_u_u(l_1583, (p_1719->g_1396 = l_1583))), 8)) > 3L) , l_1588)) , p_1719->g_1589) >= l_1583) | 0x8BEEEF71L)) , l_1583) ^ 0x6A06L), (*p_4)))) || p_1719->g_229)) & l_1583)) || (*l_1431))));
                if ((*l_1431))
                    continue;
                p_1719->g_1593 = l_1592;
                (*p_1719->g_1403) = &l_1590;
            }
            (*p_1719->g_1403) = &l_1590;
            for (p_1719->g_1589 = (-19); (p_1719->g_1589 <= 60); p_1719->g_1589++)
            { /* block id: 893 */
                uint32_t l_1614 = 0x88338390L;
                int32_t l_1623 = 1L;
                int32_t l_1624 = 0x5E431DBAL;
                (*p_1719->g_1625) = ((FAKE_DIVERGE(p_1719->group_0_offset, get_group_id(0), 10) >= (~((0xEEL == ((safe_mod_func_uint16_t_u_u(((safe_mod_func_uint32_t_u_u(((*p_4) <= (p_1719->g_214[0][4] == (((((safe_sub_func_int32_t_s_s((((+(l_1614 >= ((safe_mul_func_int16_t_s_s((&p_1719->g_1243 != (void*)0), ((((safe_add_func_uint8_t_u_u((((8UL == ((l_1623 = (((safe_sub_func_int64_t_s_s(((*p_1719->g_1239) = ((l_1614 , (safe_mul_func_int8_t_s_s((**l_1402), (*p_4)))) && l_1591)), 0x5C9B88670B271B77L)) , 65526UL) < 65532UL)) == GROUP_DIVERGE(2, 1))) == 0xF9009ED24EF09F22L) | FAKE_DIVERGE(p_1719->local_0_offset, get_local_id(0), 10)), FAKE_DIVERGE(p_1719->local_0_offset, get_local_id(0), 10))) , l_1623) && 0x66L) > l_1590))) || p_1719->g_141))) | l_1591) != l_1614), l_1614)) < 0x6D0DAC1447E88E75L) <= l_1624) , l_1623) && l_1590))), l_1614)) == l_1588), p_1719->g_1334)) ^ (*l_1431))) <= l_1588))) , (*p_1719->g_1295));
                for (p_1719->g_2 = 0; (p_1719->g_2 < 43); p_1719->g_2++)
                { /* block id: 899 */
                    int32_t *l_1628 = &l_1623;
                    if (p_1719->g_250)
                        goto lbl_1218;
                    for (p_1719->g_248 = 2; (p_1719->g_248 <= 8); p_1719->g_248 += 1)
                    { /* block id: 903 */
                        return l_1588;
                    }
                    l_1628 = (void*)0;
                }
            }
            for (p_1719->g_1396 = 5; (p_1719->g_1396 >= 0); p_1719->g_1396 -= 1)
            { /* block id: 911 */
                int32_t l_1656 = 0x7F602F14L;
                uint32_t **l_1676 = (void*)0;
                uint8_t l_1697 = 0xD3L;
                int32_t l_1699 = 0L;
                for (p_1719->g_123.f1 = 0; (p_1719->g_123.f1 <= 1); p_1719->g_123.f1 += 1)
                { /* block id: 914 */
                    uint16_t *l_1631 = &p_1719->g_73;
                    int8_t **l_1635 = (void*)0;
                    int8_t ***l_1634 = &l_1635;
                    int8_t **l_1637 = &p_1719->g_5;
                    int8_t ***l_1636 = &l_1637;
                    int32_t l_1644 = 0x76C1A031L;
                    uint8_t *l_1651 = &p_1719->g_259;
                    uint8_t *l_1654[4];
                    union U1 **l_1682 = &p_1719->g_1593;
                    int i;
                    for (i = 0; i < 4; i++)
                        l_1654[i] = &p_1719->g_879;
                    if (((*l_1431) > ((((safe_mod_func_uint16_t_u_u((((*l_1631)--) != ((((*l_1634) = &p_1719->g_5) == ((*l_1636) = (void*)0)) & (safe_mul_func_int8_t_s_s(((((safe_mul_func_int16_t_s_s((safe_add_func_uint64_t_u_u((**l_1402), ((l_1644 && l_1591) >= (((p_1719->g_879 = (safe_mod_func_int8_t_s_s((safe_sub_func_uint64_t_u_u(((l_11[(p_1719->g_123.f1 + 1)] = l_1644) == (safe_add_func_int8_t_s_s((((--(*l_1651)) | (*p_4)) ^ (l_1568 != &p_1719->g_1446)), 8UL))), (*l_1431))), 255UL))) , l_1655[2]) == &p_1719->g_1485)))), p_1719->g_1569)) < l_1644) , l_11[(p_1719->g_123.f1 + 1)]) && (*l_1431)), 0xA6L)))), (**l_1402))) || l_1656) , (*p_1719->g_82)) && l_11[(p_1719->g_123.f1 + 1)])))
                    { /* block id: 921 */
                        uint16_t ***l_1661 = &p_1719->g_1659;
                        int32_t l_1674 = 0L;
                        int i, j;
                        l_1677[2] = &l_1675;
                        l_11[(p_1719->g_1396 + 1)] = ((safe_mul_func_uint8_t_u_u(((((l_1674 == (safe_lshift_func_uint8_t_u_s((!(l_1682 == &p_1719->g_1593)), 2))) != (*p_1719->g_1660)) , ((safe_sub_func_int8_t_s_s(((l_11[(p_1719->g_123.f1 + 1)] || ((safe_div_func_uint16_t_u_u((safe_add_func_int8_t_s_s(3L, (((l_1699 ^= (l_1691 == ((((safe_mul_func_uint8_t_u_u(((safe_mul_func_uint16_t_u_u(l_1644, ((p_1719->g_1696[1] , l_1674) && (**l_1402)))) < 0xF357L), l_1697)) && l_1656) && 0x6CL) , l_1698))) && FAKE_DIVERGE(p_1719->group_1_offset, get_group_id(1), 10)) <= 0L))), (**p_1719->g_1659))) < (*l_1431))) , 0x48L), l_1674)) < 0x52L)) || l_1674), (*p_4))) > (*p_1719->g_5));
                    }
                    else
                    { /* block id: 926 */
                        union U1 ***l_1700 = &l_1682;
                        int i;
                        l_11[(p_1719->g_123.f1 + 7)] |= (-1L);
                        if ((*p_1719->g_1034))
                            break;
                        (*l_1700) = (void*)0;
                    }
                }
                return (*p_1719->g_82);
            }
        }
    }
    return l_1701;
}


/* ------------------------------------------ */
/* 
 * reads : p_1719->g_2 p_1719->g_283 p_1719->g_339 p_1719->g_231 p_1719->g_217 p_1719->g_1034 p_1719->g_123.f2 p_1719->g_10 p_1719->g_9 p_1719->g_83 p_1719->g_1041 p_1719->g_425.f1 p_1719->g_113 p_1719->g_1073 p_1719->g_425.f2 p_1719->g_186 p_1719->g_1093 p_1719->g_20 p_1719->g_426 p_1719->g_6 p_1719->g_1111 p_1719->g_248 p_1719->g_509 p_1719->g_230 p_1719->g_458 p_1719->g_79 p_1719->g_425.f0
 * writes: p_1719->g_2 p_1719->g_217 p_1719->g_425.f0 p_1719->g_231 p_1719->g_425.f2 p_1719->g_283 p_1719->g_123.f2 p_1719->g_425.f1 p_1719->g_9 p_1719->g_83 p_1719->g_1078 p_1719->g_186 p_1719->g_123 p_1719->g_426 p_1719->g_6 p_1719->g_830 p_1719->g_192 p_1719->g_248 p_1719->g_250 p_1719->g_458
 */
uint64_t  func_14(uint8_t  p_15, uint32_t  p_16, int32_t * p_17, struct S2 * p_1719)
{ /* block id: 556 */
    int16_t l_1018 = 0x67F9L;
    int32_t l_1020 = (-6L);
    int32_t *l_1030 = &p_1719->g_425.f0;
    int32_t *l_1054 = &p_1719->g_9;
    int32_t *l_1055 = &l_1020;
    int32_t *l_1056 = &p_1719->g_425.f2;
    int32_t *l_1057 = &p_1719->g_425.f0;
    int32_t *l_1058 = &l_1020;
    int32_t *l_1059[9] = {&l_1020,&l_1020,&l_1020,&l_1020,&l_1020,&l_1020,&l_1020,&l_1020,&l_1020};
    int8_t l_1060[5][3][1] = {{{0x49L},{0x49L},{0x49L}},{{0x49L},{0x49L},{0x49L}},{{0x49L},{0x49L},{0x49L}},{{0x49L},{0x49L},{0x49L}},{{0x49L},{0x49L},{0x49L}}};
    int8_t l_1061[8] = {0x1CL,1L,0x1CL,0x1CL,1L,0x1CL,0x1CL,1L};
    uint32_t l_1062 = 0xAA92BBFEL;
    int32_t l_1068 = 0x08D48FA6L;
    int32_t l_1069 = 0x52AE5D73L;
    uint32_t **l_1074 = &p_1719->g_20;
    uint32_t l_1082 = 0x92F8657FL;
    int64_t *l_1103 = &p_1719->g_217;
    uint16_t l_1129 = 65535UL;
    uint64_t **l_1139 = &p_1719->g_339;
    int i, j, k;
    for (p_1719->g_2 = 4; (p_1719->g_2 >= 11); p_1719->g_2 = safe_add_func_int32_t_s_s(p_1719->g_2, 8))
    { /* block id: 559 */
        int32_t l_1017 = (-4L);
        uint16_t *l_1033 = &p_1719->g_73;
        for (p_1719->g_217 = 14; (p_1719->g_217 == (-3)); p_1719->g_217--)
        { /* block id: 562 */
            uint32_t l_1021 = 0x00975F44L;
            uint16_t l_1024[9][3];
            int32_t **l_1029 = &p_1719->g_283;
            uint16_t *l_1032 = &p_1719->g_71;
            uint16_t **l_1031 = &l_1032;
            int16_t *l_1044[3][8][10] = {{{&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018},{&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018},{&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018},{&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018},{&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018},{&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018},{&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018},{&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018}},{{&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018},{&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018},{&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018},{&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018},{&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018},{&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018},{&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018},{&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018}},{{&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018},{&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018},{&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018},{&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018},{&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018},{&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018},{&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018},{&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018,&l_1018}}};
            int64_t *l_1049 = &p_1719->g_179;
            int i, j, k;
            for (i = 0; i < 9; i++)
            {
                for (j = 0; j < 3; j++)
                    l_1024[i][j] = 0xAE38L;
            }
            for (p_1719->g_425.f0 = (-29); (p_1719->g_425.f0 > 5); p_1719->g_425.f0 = safe_add_func_uint32_t_u_u(p_1719->g_425.f0, 8))
            { /* block id: 565 */
                int16_t l_1012 = (-7L);
                int32_t l_1013 = 0x750F8BD2L;
                int32_t l_1019[5] = {0x196B6309L,0x196B6309L,0x196B6309L,0x196B6309L,0x196B6309L};
                int i;
                for (p_1719->g_231 = 0; (p_1719->g_231 <= 1); p_1719->g_231 += 1)
                { /* block id: 568 */
                    int32_t *l_1014 = &p_1719->g_425.f2;
                    int32_t *l_1015 = &p_1719->g_83;
                    int32_t *l_1016[8][3][8] = {{{&p_1719->g_123.f2,&p_1719->g_425.f0,&p_1719->g_9,&p_1719->g_425.f2,&p_1719->g_123.f2,&p_1719->g_123.f2,&p_1719->g_425.f2,&p_1719->g_83},{&p_1719->g_123.f2,&p_1719->g_425.f0,&p_1719->g_9,&p_1719->g_425.f2,&p_1719->g_123.f2,&p_1719->g_123.f2,&p_1719->g_425.f2,&p_1719->g_83},{&p_1719->g_123.f2,&p_1719->g_425.f0,&p_1719->g_9,&p_1719->g_425.f2,&p_1719->g_123.f2,&p_1719->g_123.f2,&p_1719->g_425.f2,&p_1719->g_83}},{{&p_1719->g_123.f2,&p_1719->g_425.f0,&p_1719->g_9,&p_1719->g_425.f2,&p_1719->g_123.f2,&p_1719->g_123.f2,&p_1719->g_425.f2,&p_1719->g_83},{&p_1719->g_123.f2,&p_1719->g_425.f0,&p_1719->g_9,&p_1719->g_425.f2,&p_1719->g_123.f2,&p_1719->g_123.f2,&p_1719->g_425.f2,&p_1719->g_83},{&p_1719->g_123.f2,&p_1719->g_425.f0,&p_1719->g_9,&p_1719->g_425.f2,&p_1719->g_123.f2,&p_1719->g_123.f2,&p_1719->g_425.f2,&p_1719->g_83}},{{&p_1719->g_123.f2,&p_1719->g_425.f0,&p_1719->g_9,&p_1719->g_425.f2,&p_1719->g_123.f2,&p_1719->g_123.f2,&p_1719->g_425.f2,&p_1719->g_83},{&p_1719->g_123.f2,&p_1719->g_425.f0,&p_1719->g_9,&p_1719->g_425.f2,&p_1719->g_123.f2,&p_1719->g_123.f2,&p_1719->g_425.f2,&p_1719->g_83},{&p_1719->g_123.f2,&p_1719->g_425.f0,&p_1719->g_9,&p_1719->g_425.f2,&p_1719->g_123.f2,&p_1719->g_123.f2,&p_1719->g_425.f2,&p_1719->g_83}},{{&p_1719->g_123.f2,&p_1719->g_425.f0,&p_1719->g_9,&p_1719->g_425.f2,&p_1719->g_123.f2,&p_1719->g_123.f2,&p_1719->g_425.f2,&p_1719->g_83},{&p_1719->g_123.f2,&p_1719->g_425.f0,&p_1719->g_9,&p_1719->g_425.f2,&p_1719->g_123.f2,&p_1719->g_123.f2,&p_1719->g_425.f2,&p_1719->g_83},{&p_1719->g_123.f2,&p_1719->g_425.f0,&p_1719->g_9,&p_1719->g_425.f2,&p_1719->g_123.f2,&p_1719->g_123.f2,&p_1719->g_425.f2,&p_1719->g_83}},{{&p_1719->g_123.f2,&p_1719->g_425.f0,&p_1719->g_9,&p_1719->g_425.f2,&p_1719->g_123.f2,&p_1719->g_123.f2,&p_1719->g_425.f2,&p_1719->g_83},{&p_1719->g_123.f2,&p_1719->g_425.f0,&p_1719->g_9,&p_1719->g_425.f2,&p_1719->g_123.f2,&p_1719->g_123.f2,&p_1719->g_425.f2,&p_1719->g_83},{&p_1719->g_123.f2,&p_1719->g_425.f0,&p_1719->g_9,&p_1719->g_425.f2,&p_1719->g_123.f2,&p_1719->g_123.f2,&p_1719->g_425.f2,&p_1719->g_83}},{{&p_1719->g_123.f2,&p_1719->g_425.f0,&p_1719->g_9,&p_1719->g_425.f2,&p_1719->g_123.f2,&p_1719->g_123.f2,&p_1719->g_425.f2,&p_1719->g_83},{&p_1719->g_123.f2,&p_1719->g_425.f0,&p_1719->g_9,&p_1719->g_425.f2,&p_1719->g_123.f2,&p_1719->g_123.f2,&p_1719->g_425.f2,&p_1719->g_83},{&p_1719->g_123.f2,&p_1719->g_425.f0,&p_1719->g_9,&p_1719->g_425.f2,&p_1719->g_123.f2,&p_1719->g_123.f2,&p_1719->g_425.f2,&p_1719->g_83}},{{&p_1719->g_123.f2,&p_1719->g_425.f0,&p_1719->g_9,&p_1719->g_425.f2,&p_1719->g_123.f2,&p_1719->g_123.f2,&p_1719->g_425.f2,&p_1719->g_83},{&p_1719->g_123.f2,&p_1719->g_425.f0,&p_1719->g_9,&p_1719->g_425.f2,&p_1719->g_123.f2,&p_1719->g_123.f2,&p_1719->g_425.f2,&p_1719->g_83},{&p_1719->g_123.f2,&p_1719->g_425.f0,&p_1719->g_9,&p_1719->g_425.f2,&p_1719->g_123.f2,&p_1719->g_123.f2,&p_1719->g_425.f2,&p_1719->g_83}},{{&p_1719->g_123.f2,&p_1719->g_425.f0,&p_1719->g_9,&p_1719->g_425.f2,&p_1719->g_123.f2,&p_1719->g_123.f2,&p_1719->g_425.f2,&p_1719->g_83},{&p_1719->g_123.f2,&p_1719->g_425.f0,&p_1719->g_9,&p_1719->g_425.f2,&p_1719->g_123.f2,&p_1719->g_123.f2,&p_1719->g_425.f2,&p_1719->g_83},{&p_1719->g_123.f2,&p_1719->g_425.f0,&p_1719->g_9,&p_1719->g_425.f2,&p_1719->g_123.f2,&p_1719->g_123.f2,&p_1719->g_425.f2,&p_1719->g_83}}};
                    int i, j, k;
                    ++l_1021;
                    p_17 = p_17;
                }
                if (p_1719->g_217)
                    goto lbl_1086;
            }
            (*p_1719->g_283) = 0x7409B1D5L;
            (*p_1719->g_1034) |= (+((((l_1021 , (l_1024[6][2] , (9L <= ((*p_1719->g_339) = ((safe_mul_func_uint8_t_u_u((safe_sub_func_uint64_t_u_u((*p_1719->g_339), (p_17 != (l_1030 = ((*l_1029) = &l_1020))))), (!(((*l_1031) = (void*)0) != l_1033)))) | (FAKE_DIVERGE(p_1719->group_1_offset, get_group_id(1), 10) , (p_17 == p_17))))))) | 4294967295UL) || p_1719->g_217) , (-1L)));
            (*p_1719->g_10) = ((255UL ^ (safe_add_func_uint8_t_u_u((((*p_1719->g_10) || (safe_sub_func_uint32_t_u_u(((safe_lshift_func_uint16_t_u_u((p_1719->g_1041 , (safe_div_func_int16_t_s_s((p_1719->g_425.f1 |= p_15), (l_1017 = (safe_sub_func_int32_t_s_s((safe_div_func_int64_t_s_s((l_1049 == &p_1719->g_179), ((safe_lshift_func_uint8_t_u_s((((safe_lshift_func_int16_t_s_s((p_16 && 0x0006F825L), 4)) != (p_1719->g_113[0] , p_16)) > 0x99D43541DA319EBDL), p_15)) | 0xD1331AAA37F5D44CL))), 2L)))))), 5)) >= p_15), 4L))) > p_15), p_16))) == 0xA458L);
        }
    }
    ++l_1062;
lbl_1086:
    if ((*p_17))
    { /* block id: 585 */
        int64_t l_1065 = 1L;
        int32_t l_1066 = 0L;
        int32_t l_1067[4] = {0x2D0DA4F7L,0x2D0DA4F7L,0x2D0DA4F7L,0x2D0DA4F7L};
        uint64_t l_1070 = 0x6B51C0266310468AL;
        int8_t **l_1075 = (void*)0;
        int8_t **l_1076 = (void*)0;
        int8_t **l_1077 = &p_1719->g_5;
        uint32_t ***l_1079 = &p_1719->g_423[7];
        int32_t *l_1081[3];
        int32_t **l_1080 = &l_1081[1];
        int i;
        for (i = 0; i < 3; i++)
            l_1081[i] = (void*)0;
        --l_1070;
        (*l_1054) = (l_1066 != (p_16 != l_1066));
        (*l_1056) ^= ((*l_1054) = ((*l_1030) = (p_15 < (p_1719->g_1073 , (*p_1719->g_339)))));
        l_1082 = ((p_1719->g_1078 = p_17) != ((*l_1080) = &l_1069));
    }
    else
    { /* block id: 596 */
        uint8_t l_1083 = 0x22L;
        l_1083++;
        for (p_1719->g_2 = 0; (p_1719->g_2 <= 1); p_1719->g_2 += 1)
        { /* block id: 600 */
            return p_16;
        }
        (*l_1055) = (*p_17);
    }
    if (((*l_1057) = (safe_lshift_func_uint16_t_u_s(65526UL, 10))))
    { /* block id: 607 */
        uint8_t l_1094[3][4][7] = {{{0xCEL,0x2CL,0x26L,0x90L,255UL,0xBBL,1UL},{0xCEL,0x2CL,0x26L,0x90L,255UL,0xBBL,1UL},{0xCEL,0x2CL,0x26L,0x90L,255UL,0xBBL,1UL},{0xCEL,0x2CL,0x26L,0x90L,255UL,0xBBL,1UL}},{{0xCEL,0x2CL,0x26L,0x90L,255UL,0xBBL,1UL},{0xCEL,0x2CL,0x26L,0x90L,255UL,0xBBL,1UL},{0xCEL,0x2CL,0x26L,0x90L,255UL,0xBBL,1UL},{0xCEL,0x2CL,0x26L,0x90L,255UL,0xBBL,1UL}},{{0xCEL,0x2CL,0x26L,0x90L,255UL,0xBBL,1UL},{0xCEL,0x2CL,0x26L,0x90L,255UL,0xBBL,1UL},{0xCEL,0x2CL,0x26L,0x90L,255UL,0xBBL,1UL},{0xCEL,0x2CL,0x26L,0x90L,255UL,0xBBL,1UL}}};
        int64_t *l_1101 = &p_1719->g_143[1][1];
        int64_t **l_1102 = &l_1101;
        int32_t *l_1104 = &p_1719->g_425.f2;
        uint16_t *l_1107 = &p_1719->g_71;
        uint32_t *l_1108 = &p_1719->g_426;
        int i, j, k;
        for (p_1719->g_186 = 0; (p_1719->g_186 >= 1); p_1719->g_186 = safe_add_func_int8_t_s_s(p_1719->g_186, 3))
        { /* block id: 610 */
            int32_t **l_1091 = &l_1030;
            struct S0 l_1092 = {3L,7L,0x4E5D4990L};
            (*l_1091) = p_17;
            (*p_1719->g_1093) = l_1092;
            l_1094[2][3][4]++;
        }
        (*l_1058) &= (((*l_1108) |= ((*l_1054) > (safe_mul_func_uint16_t_u_u((safe_rshift_func_int8_t_s_u(l_1094[2][3][0], 2)), ((((((*l_1102) = l_1101) != (l_1103 = &p_1719->g_217)) > (*l_1056)) , (*l_1074)) == (void*)0))))) , (-8L));
        for (p_1719->g_6 = (-20); (p_1719->g_6 < (-28)); p_1719->g_6 = safe_sub_func_int32_t_s_s(p_1719->g_6, 3))
        { /* block id: 623 */
            int32_t *l_1112 = &p_1719->g_123.f2;
            for (p_1719->g_830 = 0; (p_1719->g_830 <= 0); p_1719->g_830 += 1)
            { /* block id: 626 */
                (*p_1719->g_1111) = (p_17 = p_17);
                for (p_1719->g_192 = 0; (p_1719->g_192 <= 1); p_1719->g_192 += 1)
                { /* block id: 631 */
                    int32_t **l_1114 = &l_1056;
                    (*l_1114) = l_1112;
                }
            }
        }
    }
    else
    { /* block id: 636 */
        int32_t l_1119 = 0x7159E480L;
        int32_t l_1121 = 0x2D9385E8L;
        int32_t l_1122 = 0x3DB73B09L;
        int32_t l_1123 = 0x512D25CAL;
        int32_t l_1124 = 0x28A5BCCAL;
        int32_t l_1125 = 0L;
        int32_t l_1126 = 0x365C9F19L;
        int32_t l_1127 = 0x7788A9E8L;
        int32_t l_1128 = (-1L);
        uint64_t **l_1137 = (void*)0;
        for (p_1719->g_248 = 0; (p_1719->g_248 <= 26); p_1719->g_248 = safe_add_func_int16_t_s_s(p_1719->g_248, 7))
        { /* block id: 639 */
            int32_t l_1120[8] = {1L,1L,1L,1L,1L,1L,1L,1L};
            uint64_t **l_1136 = &p_1719->g_339;
            uint64_t ***l_1138[3];
            int32_t ****l_1151 = &p_1719->g_853;
            int32_t *****l_1150 = &l_1151;
            int16_t *l_1152[2][4][5] = {{{&p_1719->g_113[0],&p_1719->g_212,&p_1719->g_123.f1,&p_1719->g_458[1][1][0],&p_1719->g_212},{&p_1719->g_113[0],&p_1719->g_212,&p_1719->g_123.f1,&p_1719->g_458[1][1][0],&p_1719->g_212},{&p_1719->g_113[0],&p_1719->g_212,&p_1719->g_123.f1,&p_1719->g_458[1][1][0],&p_1719->g_212},{&p_1719->g_113[0],&p_1719->g_212,&p_1719->g_123.f1,&p_1719->g_458[1][1][0],&p_1719->g_212}},{{&p_1719->g_113[0],&p_1719->g_212,&p_1719->g_123.f1,&p_1719->g_458[1][1][0],&p_1719->g_212},{&p_1719->g_113[0],&p_1719->g_212,&p_1719->g_123.f1,&p_1719->g_458[1][1][0],&p_1719->g_212},{&p_1719->g_113[0],&p_1719->g_212,&p_1719->g_123.f1,&p_1719->g_458[1][1][0],&p_1719->g_212},{&p_1719->g_113[0],&p_1719->g_212,&p_1719->g_123.f1,&p_1719->g_458[1][1][0],&p_1719->g_212}}};
            int i, j, k;
            for (i = 0; i < 3; i++)
                l_1138[i] = &p_1719->g_338;
            for (p_1719->g_250 = 0; (p_1719->g_250 > 8); p_1719->g_250 = safe_add_func_uint32_t_u_u(p_1719->g_250, 5))
            { /* block id: 642 */
                return p_15;
            }
            ++l_1129;
            if ((*p_17))
                continue;
            (*l_1057) &= ((*l_1054) &= (safe_lshift_func_int8_t_s_s(((safe_rshift_func_int8_t_s_u(((l_1136 == (p_16 , (l_1137 = (l_1139 = l_1137)))) , (safe_rshift_func_int16_t_s_u((safe_add_func_int64_t_s_s((safe_lshift_func_int8_t_s_u((l_1127 = ((safe_mul_func_uint8_t_u_u((safe_mod_func_uint64_t_u_u((4294967295UL ^ 0x3434798BL), p_16)), ((p_1719->g_458[1][1][0] |= ((((**p_1719->g_509) |= (((*l_1150) = &p_1719->g_853) != &p_1719->g_853)) , p_1719->g_230[1]) ^ p_16)) & p_16))) ^ p_1719->g_79)), 1)), 0x4D5795F9687F2235L)), 9))), p_1719->g_425.f1)) <= p_16), 4)));
        }
        (*p_1719->g_283) = 0x5E69CA0FL;
    }
    return (*l_1054);
}


/* ------------------------------------------ */
/* 
 * reads : p_1719->g_853 p_1719->g_141 p_1719->g_283 p_1719->g_425.f2 p_1719->g_219 p_1719->g_71 p_1719->g_426 p_1719->g_2 p_1719->g_9 p_1719->g_739 p_1719->g_10 p_1719->g_83 p_1719->g_339 p_1719->g_5 p_1719->g_6 p_1719->g_123.f2 p_1719->g_192 p_1719->g_425.f1 p_1719->g_360 p_1719->g_250 p_1719->g_143 p_1719->g_181 p_1719->g_420 p_1719->g_231 p_1719->g_934 p_1719->g_978 p_1719->g_979 p_1719->g_458 p_1719->g_113 p_1719->g_212 p_1719->g_79 p_1719->g_992 p_1719->g_425.f0 p_1719->g_424
 * writes: p_1719->g_853 p_1719->g_141 p_1719->g_316 p_1719->g_6 p_1719->g_879 p_1719->g_425.f2 p_1719->g_231 p_1719->g_250 p_1719->g_123.f2 p_1719->g_458 p_1719->g_2 p_1719->g_143 p_1719->g_212 p_1719->g_934 p_1719->g_425.f0
 */
uint32_t * func_22(int32_t * p_23, uint16_t  p_24, uint16_t  p_25, int8_t  p_26, uint32_t ** p_27, struct S2 * p_1719)
{ /* block id: 470 */
    uint16_t l_852 = 0xEE92L;
    int32_t ****l_855[2][4][8] = {{{&p_1719->g_853,&p_1719->g_853,&p_1719->g_853,&p_1719->g_853,&p_1719->g_853,&p_1719->g_853,&p_1719->g_853,&p_1719->g_853},{&p_1719->g_853,&p_1719->g_853,&p_1719->g_853,&p_1719->g_853,&p_1719->g_853,&p_1719->g_853,&p_1719->g_853,&p_1719->g_853},{&p_1719->g_853,&p_1719->g_853,&p_1719->g_853,&p_1719->g_853,&p_1719->g_853,&p_1719->g_853,&p_1719->g_853,&p_1719->g_853},{&p_1719->g_853,&p_1719->g_853,&p_1719->g_853,&p_1719->g_853,&p_1719->g_853,&p_1719->g_853,&p_1719->g_853,&p_1719->g_853}},{{&p_1719->g_853,&p_1719->g_853,&p_1719->g_853,&p_1719->g_853,&p_1719->g_853,&p_1719->g_853,&p_1719->g_853,&p_1719->g_853},{&p_1719->g_853,&p_1719->g_853,&p_1719->g_853,&p_1719->g_853,&p_1719->g_853,&p_1719->g_853,&p_1719->g_853,&p_1719->g_853},{&p_1719->g_853,&p_1719->g_853,&p_1719->g_853,&p_1719->g_853,&p_1719->g_853,&p_1719->g_853,&p_1719->g_853,&p_1719->g_853},{&p_1719->g_853,&p_1719->g_853,&p_1719->g_853,&p_1719->g_853,&p_1719->g_853,&p_1719->g_853,&p_1719->g_853,&p_1719->g_853}}};
    uint64_t ***l_874 = &p_1719->g_338;
    uint64_t ****l_873 = &l_874;
    int32_t l_913 = (-1L);
    uint32_t l_937 = 0xE23B6D3AL;
    struct S0 *l_977[2];
    int16_t *l_982 = &p_1719->g_458[1][1][0];
    uint64_t ***l_991 = &p_1719->g_338;
    int32_t *l_1001 = &p_1719->g_425.f0;
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_977[i] = &p_1719->g_425;
    if ((l_852 && ((p_1719->g_853 = p_1719->g_853) == &p_1719->g_385[1][3])))
    { /* block id: 472 */
        int8_t *l_856 = &p_1719->g_6;
        uint32_t **l_857 = &p_1719->g_424;
        int32_t *l_858 = &p_1719->g_123.f0;
        int32_t *l_859 = &p_1719->g_123.f0;
        l_859 = (l_858 = l_858);
    }
    else
    { /* block id: 475 */
        int64_t *l_869 = &p_1719->g_143[0][7];
        int32_t l_875 = 0x1B2FE089L;
        struct S0 *l_976 = (void*)0;
        int16_t *l_983[9] = {&p_1719->g_113[0],&p_1719->g_113[0],&p_1719->g_113[0],&p_1719->g_113[0],&p_1719->g_113[0],&p_1719->g_113[0],&p_1719->g_113[0],&p_1719->g_113[0],&p_1719->g_113[0]};
        int32_t l_986[3];
        int32_t *l_997[3];
        int i;
        for (i = 0; i < 3; i++)
            l_986[i] = (-9L);
        for (i = 0; i < 3; i++)
            l_997[i] = &l_986[1];
        for (p_1719->g_141 = 0; (p_1719->g_141 == 12); p_1719->g_141++)
        { /* block id: 478 */
            int32_t *l_862 = (void*)0;
            uint32_t *l_870 = &p_1719->g_316;
            int64_t l_914 = 0x47857877F5F25864L;
            int64_t l_917 = 3L;
            uint64_t l_984 = 0x4A1A3DA5D0CA097CL;
            uint32_t l_985 = 0xBE0F32B5L;
            uint64_t ***l_990 = &p_1719->g_338;
            uint64_t ****l_989[7];
            int32_t *l_994 = &p_1719->g_230[1];
            int32_t **l_993 = &l_994;
            int i;
            for (i = 0; i < 7; i++)
                l_989[i] = &l_990;
            p_23 = ((!(!(~p_25))) , l_862);
            if ((safe_add_func_uint16_t_u_u(((p_26 || ((((((safe_rshift_func_int16_t_s_u((((0x614E574309AC51F8L | (safe_rshift_func_int16_t_s_s((((l_869 != (((((((((((((*p_1719->g_283) , (2UL ^ p_1719->g_219)) <= ((*l_870) = FAKE_DIVERGE(p_1719->global_1_offset, get_global_id(1), 10))) || ((~(safe_mod_func_int32_t_s_s(0x331267CEL, ((((((void*)0 == l_873) , 1L) , 18446744073709551610UL) , p_24) | p_26)))) <= 0x5DB009A5L)) , p_1719->g_71) != l_875) == p_26) | 0x7F292347L) , 0x21847AFDL) , &p_23) != &p_23) , 0xBC897A65E05B4CB6L) , &p_1719->g_229)) ^ l_875) , p_1719->g_219), p_26))) | 253UL) >= p_1719->g_426), p_26)) >= p_1719->g_2) ^ FAKE_DIVERGE(p_1719->global_0_offset, get_global_id(0), 10)) , 0L) <= 0x15D5133FL) <= p_24)) == p_25), p_1719->g_9)))
            { /* block id: 481 */
                uint32_t l_878[8][7];
                int32_t *l_880 = &p_1719->g_123.f2;
                int i, j;
                for (i = 0; i < 8; i++)
                {
                    for (j = 0; j < 7; j++)
                        l_878[i][j] = 0x7E828885L;
                }
                for (p_1719->g_6 = 27; (p_1719->g_6 == 24); p_1719->g_6--)
                { /* block id: 484 */
                    uint32_t l_893 = 0xA5A4E9DFL;
                    int64_t l_912 = 1L;
                    if (p_26)
                    { /* block id: 485 */
                        (*p_1719->g_283) ^= (p_1719->g_879 = l_878[0][5]);
                        l_880 = l_880;
                        p_23 = (*p_1719->g_739);
                    }
                    else
                    { /* block id: 490 */
                        int8_t *l_891 = (void*)0;
                        int8_t *l_892 = &p_1719->g_250;
                        uint16_t *l_908[2];
                        int32_t l_911 = 0x4FC6CECEL;
                        int i;
                        for (i = 0; i < 2; i++)
                            l_908[i] = &p_1719->g_71;
                        l_893 &= (((safe_lshift_func_int16_t_s_s((safe_rshift_func_int16_t_s_s((safe_mod_func_uint64_t_u_u((((void*)0 != &p_1719->g_386) , p_26), ((safe_div_func_int32_t_s_s((*p_1719->g_10), 4294967295UL)) | (-1L)))), 10)), 9)) , (((*p_1719->g_339) = p_25) > 1UL)) ^ ((((safe_mul_func_int8_t_s_s(((*l_892) = 2L), (*p_1719->g_5))) == (*l_880)) || 0x32B9BF0CL) , 0L));
                        (*p_1719->g_283) = ((+(p_1719->g_192 == (safe_sub_func_uint16_t_u_u(65535UL, (((FAKE_DIVERGE(p_1719->global_0_offset, get_global_id(0), 10) == GROUP_DIVERGE(2, 1)) , (safe_rshift_func_int16_t_s_s((-1L), 13))) , (safe_sub_func_int16_t_s_s((((safe_add_func_int8_t_s_s((p_25 >= ((safe_lshift_func_int16_t_s_s(p_1719->g_219, 4)) , GROUP_DIVERGE(2, 1))), ((l_893 , (safe_rshift_func_uint16_t_u_s((((safe_lshift_func_int8_t_s_u(((*l_892) |= (((*l_880) = 0x6A80019514F078C4L) >= ((((((p_24 = l_875) ^ (p_1719->g_458[1][1][0] = ((((((((safe_mod_func_uint16_t_u_u(l_911, p_25)) ^ 1UL) && 1UL) != p_26) , p_1719->g_425.f1) , p_26) > 0x14L) , (-5L)))) & 5L) >= p_1719->g_360) | p_25) || (*p_1719->g_283)))), 3)) != p_26) , p_25), p_1719->g_143[1][6]))) >= p_25))) <= 0x6AL) , p_1719->g_181), l_912))))))) && l_913);
                    }
                    if (p_24)
                        break;
                    l_914 = 0L;
                    (*l_880) = p_24;
                }
                for (p_1719->g_2 = 0; (p_1719->g_2 == 11); p_1719->g_2 = safe_add_func_int64_t_s_s(p_1719->g_2, 9))
                { /* block id: 506 */
                    if (l_875)
                        break;
                    if (l_917)
                        continue;
                }
            }
            else
            { /* block id: 510 */
                int16_t l_931 = 0L;
                union U1 *l_933 = &p_1719->g_481;
                union U1 **l_932[7] = {&l_933,&l_933,&l_933,&l_933,&l_933,&l_933,&l_933};
                int32_t l_940 = 0x54054F46L;
                int32_t l_954 = (-1L);
                int32_t l_955 = 0x14F3E2F9L;
                uint8_t l_956 = 0xC8L;
                int i;
                l_940 |= (safe_mod_func_int32_t_s_s(((safe_lshift_func_uint16_t_u_u(p_1719->g_420, 5)) && 254UL), ((safe_rshift_func_uint8_t_u_u(p_24, 2)) , (safe_mod_func_int16_t_s_s(((safe_unary_minus_func_uint64_t_u((--(*p_1719->g_339)))) || ((safe_div_func_uint64_t_u_u((((((l_931 ^ 0xC9511ED8L) , l_932[5]) == p_1719->g_934[4][0]) , 255UL) || (++l_937)), p_1719->g_143[0][7])) , 18446744073709551609UL)), p_1719->g_420)))));
                l_940 = ((p_25 > 0x7DEFL) != ((safe_mul_func_int8_t_s_s(((*l_873) != ((safe_sub_func_uint8_t_u_u((safe_mod_func_int64_t_s_s(4L, (+(((safe_rshift_func_uint16_t_u_u(p_1719->g_143[1][2], (&p_1719->g_420 != (void*)0))) >= l_875) != 0x62BCL)))), p_24)) , (void*)0)), l_917)) & l_875));
                for (l_940 = 0; (l_940 >= 29); ++l_940)
                { /* block id: 517 */
                    int32_t *l_951 = (void*)0;
                    int32_t *l_959 = &l_954;
                    l_951 = p_23;
                    for (p_1719->g_6 = 7; (p_1719->g_6 > 7); p_1719->g_6 = safe_add_func_uint8_t_u_u(p_1719->g_6, 5))
                    { /* block id: 521 */
                        ++l_956;
                    }
                    l_959 = p_23;
                }
            }
            l_986[2] &= (((p_24 ^ (safe_rshift_func_uint16_t_u_u((safe_rshift_func_uint8_t_u_u((((((l_875 = ((((safe_sub_func_uint16_t_u_u((safe_lshift_func_uint16_t_u_s(((p_1719->g_83 < ((((*p_1719->g_5) = (p_1719->g_2 && (safe_lshift_func_int8_t_s_s((safe_lshift_func_int8_t_s_s(((0x5CL || (safe_add_func_uint64_t_u_u((l_976 == l_977[0]), ((((p_1719->g_978[0][2] , p_1719->g_979) , (safe_rshift_func_int8_t_s_u((l_982 == l_983[2]), p_1719->g_458[1][1][0]))) > p_25) == (*p_1719->g_283))))) & p_1719->g_113[6]), l_984)), p_25)))) <= p_24) >= 0x59L)) != (-7L)), 7)), 1UL)) || p_25) >= l_875) == l_985)) || p_1719->g_212) > p_25) && p_24) > 0x65B8L), p_1719->g_192)), p_1719->g_79))) <= (-8L)) , (*p_1719->g_283));
            (*p_1719->g_283) ^= (safe_sub_func_int32_t_s_s((((((((*p_1719->g_5) = (~(~(((*l_873) = &p_1719->g_338) == (l_991 = &p_1719->g_338))))) , ((*l_869) = ((p_1719->g_992 , ((*l_993) = &p_1719->g_230[0])) == ((*p_1719->g_339) , p_23)))) || FAKE_DIVERGE(p_1719->global_1_offset, get_global_id(1), 10)) || 1L) , (l_875 , 1L)) , 0x24FA2516L), l_986[2]));
        }
        for (p_1719->g_212 = 0; (p_1719->g_212 > 26); p_1719->g_212++)
        { /* block id: 539 */
            if ((*p_1719->g_10))
                break;
            l_997[1] = p_23;
            for (l_852 = 4; (l_852 != 51); l_852 = safe_add_func_uint16_t_u_u(l_852, 4))
            { /* block id: 544 */
                struct S0 l_1000 = {0x5B116FE4L,6L,0x57E12E56L};
                int32_t *l_1002 = &p_1719->g_123.f2;
                for (l_937 = 0; l_937 < 5; l_937 += 1)
                {
                    for (p_1719->g_6 = 0; p_1719->g_6 < 1; p_1719->g_6 += 1)
                    {
                        p_1719->g_934[l_937][p_1719->g_6] = &p_1719->g_935;
                    }
                }
                l_1000 = l_1000;
                l_1002 = l_1001;
            }
        }
        (*l_1001) |= (p_24 , 1L);
    }
    return (*p_27);
}


/* ------------------------------------------ */
/* 
 * reads : p_1719->g_71 p_1719->g_283 p_1719->g_425.f2
 * writes: p_1719->g_71 p_1719->g_425.f2
 */
uint16_t  func_28(uint32_t  p_29, int8_t * p_30, uint64_t  p_31, struct S2 * p_1719)
{ /* block id: 386 */
    int32_t *l_748 = &p_1719->g_230[0];
    int64_t *l_749 = &p_1719->g_179;
    int32_t l_756 = 0x1C9533FBL;
    uint64_t ***l_791[4];
    int32_t *l_817 = &p_1719->g_9;
    union U1 *l_820 = &p_1719->g_543;
    int32_t l_825 = 0x08634B72L;
    int32_t l_826 = 0x19F87B02L;
    int32_t l_827 = 0L;
    int32_t l_829[7][4][4] = {{{0x224E36A3L,1L,8L,(-9L)},{0x224E36A3L,1L,8L,(-9L)},{0x224E36A3L,1L,8L,(-9L)},{0x224E36A3L,1L,8L,(-9L)}},{{0x224E36A3L,1L,8L,(-9L)},{0x224E36A3L,1L,8L,(-9L)},{0x224E36A3L,1L,8L,(-9L)},{0x224E36A3L,1L,8L,(-9L)}},{{0x224E36A3L,1L,8L,(-9L)},{0x224E36A3L,1L,8L,(-9L)},{0x224E36A3L,1L,8L,(-9L)},{0x224E36A3L,1L,8L,(-9L)}},{{0x224E36A3L,1L,8L,(-9L)},{0x224E36A3L,1L,8L,(-9L)},{0x224E36A3L,1L,8L,(-9L)},{0x224E36A3L,1L,8L,(-9L)}},{{0x224E36A3L,1L,8L,(-9L)},{0x224E36A3L,1L,8L,(-9L)},{0x224E36A3L,1L,8L,(-9L)},{0x224E36A3L,1L,8L,(-9L)}},{{0x224E36A3L,1L,8L,(-9L)},{0x224E36A3L,1L,8L,(-9L)},{0x224E36A3L,1L,8L,(-9L)},{0x224E36A3L,1L,8L,(-9L)}},{{0x224E36A3L,1L,8L,(-9L)},{0x224E36A3L,1L,8L,(-9L)},{0x224E36A3L,1L,8L,(-9L)},{0x224E36A3L,1L,8L,(-9L)}}};
    int16_t *l_841 = (void*)0;
    int16_t **l_840 = &l_841;
    int32_t *l_848[2];
    uint64_t l_849[3];
    int i, j, k;
    for (i = 0; i < 4; i++)
        l_791[i] = &p_1719->g_338;
    for (i = 0; i < 2; i++)
        l_848[i] = &p_1719->g_123.f2;
    for (i = 0; i < 3; i++)
        l_849[i] = 0xA40E645CA2E2F82CL;
    for (p_1719->g_71 = 24; (p_1719->g_71 != 50); p_1719->g_71++)
    { /* block id: 389 */
        int64_t l_746 = 0x51C3A6FF0D8762FCL;
        int64_t *l_747[3];
        uint32_t *l_772[3][5] = {{(void*)0,&p_1719->g_316,(void*)0,(void*)0,&p_1719->g_316},{(void*)0,&p_1719->g_316,(void*)0,(void*)0,&p_1719->g_316},{(void*)0,&p_1719->g_316,(void*)0,(void*)0,&p_1719->g_316}};
        int16_t *l_787 = &p_1719->g_425.f1;
        int32_t l_790 = (-1L);
        uint32_t l_795 = 8UL;
        int i, j;
        for (i = 0; i < 3; i++)
            l_747[i] = &p_1719->g_179;
        (*p_1719->g_283) &= l_746;
    }
    l_849[1]++;
    return p_1719->g_425.f2;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
struct S0  func_32(int32_t  p_33, uint32_t  p_34, uint32_t  p_35, struct S2 * p_1719)
{ /* block id: 383 */
    int8_t l_741 = 0x5CL;
    struct S0 l_742 = {5L,0x450FL,0x42F092EDL};
    l_741 = p_33;
    return l_742;
}


/* ------------------------------------------ */
/* 
 * reads : p_1719->g_2 p_1719->g_71 p_1719->g_73 p_1719->g_6 p_1719->g_8 p_1719->g_9 p_1719->g_82 p_1719->g_83 p_1719->g_79 p_1719->g_113 p_1719->g_10 p_1719->g_123 p_1719->g_124 p_1719->g_141 p_1719->g_143 p_1719->g_5 p_1719->g_181 p_1719->g_186 p_1719->g_192 p_1719->g_203 p_1719->g_179 p_1719->g_212 p_1719->g_220 p_1719->g_217 p_1719->g_231 p_1719->g_259 p_1719->g_250 p_1719->g_318 p_1719->g_316 p_1719->g_337 p_1719->g_360 p_1719->g_386 p_1719->g_214 p_1719->g_283 p_1719->g_420 p_1719->g_425 p_1719->g_426 p_1719->g_229 p_1719->g_458 p_1719->g_481 p_1719->g_339 p_1719->g_208 p_1719->g_509 p_1719->g_543 p_1719->g_219 p_1719->g_230 p_1719->g_248 p_1719->g_739
 * writes: p_1719->g_2 p_1719->g_71 p_1719->g_73 p_1719->g_9 p_1719->g_83 p_1719->g_113 p_1719->g_79 p_1719->g_8 p_1719->g_123 p_1719->g_141 p_1719->g_143 p_1719->g_10 p_1719->g_179 p_1719->g_181 p_1719->g_192 p_1719->g_208 p_1719->g_212 p_1719->g_220 p_1719->g_231 p_1719->g_248 p_1719->g_250 p_1719->g_254 p_1719->g_259 p_1719->g_186 p_1719->g_316 p_1719->g_338 p_1719->g_283 p_1719->g_420 p_1719->g_426 p_1719->g_360 p_1719->g_458 p_1719->g_425.f2
 */
int64_t  func_36(uint64_t  p_37, int64_t  p_38, struct S2 * p_1719)
{ /* block id: 14 */
    uint16_t l_46 = 65530UL;
    uint32_t *l_78 = &p_1719->g_79;
    uint32_t **l_77 = &l_78;
    int8_t *l_80 = (void*)0;
    int8_t l_683 = 0x0FL;
    int64_t l_684[3][10] = {{0x32C2D06793E8D197L,0L,0x32C2D06793E8D197L,0x32C2D06793E8D197L,0L,0x32C2D06793E8D197L,0x32C2D06793E8D197L,0L,0x32C2D06793E8D197L,0x32C2D06793E8D197L},{0x32C2D06793E8D197L,0L,0x32C2D06793E8D197L,0x32C2D06793E8D197L,0L,0x32C2D06793E8D197L,0x32C2D06793E8D197L,0L,0x32C2D06793E8D197L,0x32C2D06793E8D197L},{0x32C2D06793E8D197L,0L,0x32C2D06793E8D197L,0x32C2D06793E8D197L,0L,0x32C2D06793E8D197L,0x32C2D06793E8D197L,0L,0x32C2D06793E8D197L,0x32C2D06793E8D197L}};
    int32_t l_698 = 0x02A9AA49L;
    uint8_t l_699 = 0x78L;
    uint64_t l_713 = 7UL;
    int64_t *l_723[6];
    struct S0 l_728 = {5L,-1L,-6L};
    uint32_t l_733 = 0x88541975L;
    uint8_t l_734 = 0UL;
    int32_t *l_735 = (void*)0;
    int32_t *l_736[9][1][3] = {{{&p_1719->g_83,&p_1719->g_83,&p_1719->g_83}},{{&p_1719->g_83,&p_1719->g_83,&p_1719->g_83}},{{&p_1719->g_83,&p_1719->g_83,&p_1719->g_83}},{{&p_1719->g_83,&p_1719->g_83,&p_1719->g_83}},{{&p_1719->g_83,&p_1719->g_83,&p_1719->g_83}},{{&p_1719->g_83,&p_1719->g_83,&p_1719->g_83}},{{&p_1719->g_83,&p_1719->g_83,&p_1719->g_83}},{{&p_1719->g_83,&p_1719->g_83,&p_1719->g_83}},{{&p_1719->g_83,&p_1719->g_83,&p_1719->g_83}}};
    int8_t *l_737[6][9][4] = {{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}}};
    int32_t *l_738 = &p_1719->g_425.f2;
    int i, j, k;
    for (i = 0; i < 6; i++)
        l_723[i] = &p_1719->g_141;
    for (p_1719->g_2 = 0; (p_1719->g_2 == 6); p_1719->g_2 = safe_add_func_int16_t_s_s(p_1719->g_2, 6))
    { /* block id: 17 */
        uint16_t *l_70 = &p_1719->g_71;
        uint16_t *l_72 = &p_1719->g_73;
        uint32_t **l_74 = (void*)0;
        int32_t *l_75 = &p_1719->g_9;
        int8_t *l_76 = &p_1719->g_6;
        uint64_t *l_227 = (void*)0;
        int32_t l_658[3];
        int16_t *l_673 = (void*)0;
        int16_t *l_674 = &p_1719->g_113[2];
        int32_t *l_685 = &p_1719->g_83;
        int32_t *l_686 = &p_1719->g_123.f2;
        int32_t *l_687 = &p_1719->g_9;
        int32_t *l_688 = &p_1719->g_123.f2;
        int32_t *l_689 = &l_658[2];
        int32_t *l_690 = &p_1719->g_83;
        int32_t *l_691 = (void*)0;
        int32_t *l_692 = &p_1719->g_9;
        int32_t *l_693 = &p_1719->g_123.f2;
        int32_t *l_694 = &p_1719->g_123.f2;
        int32_t *l_695 = &l_658[2];
        int32_t *l_696 = (void*)0;
        int32_t *l_697[6];
        uint8_t *l_714 = &p_1719->g_259;
        int16_t l_715 = 1L;
        int32_t l_716 = 9L;
        int i;
        for (i = 0; i < 3; i++)
            l_658[i] = 0x2DEAFF92L;
        for (i = 0; i < 6; i++)
            l_697[i] = (void*)0;
        (*l_75) = (((safe_add_func_uint16_t_u_u((safe_rshift_func_int8_t_s_s(l_46, 4)), func_47(((safe_sub_func_uint8_t_u_u((func_55(func_61(&p_1719->g_6, (((safe_sub_func_int32_t_s_s((0x73L ^ (safe_rshift_func_uint16_t_u_s(((*l_72) &= ((*l_70) |= p_37)), 4))), ((*l_75) = ((((l_46 | (p_1719->g_6 > p_1719->g_6)) >= 4294967286UL) , (((((0x3176A90D2634D7F4L >= 0x811D020A50D0CE47L) >= p_1719->g_6) , (void*)0) != l_74) & 1L)) >= 1L)))) == 65535UL) , l_76), l_77, l_80, p_1719), p_1719->g_217, l_78, l_46, l_227, p_1719) , p_1719->g_425.f2), GROUP_DIVERGE(2, 1))) , (void*)0), l_46, l_658[2], p_38, &l_658[1], p_1719))) && FAKE_DIVERGE(p_1719->global_2_offset, get_global_id(2), 10)) , p_38);
        (*l_685) |= (((p_38 == ((safe_rshift_func_int16_t_s_s(((*p_1719->g_8) & (((p_37 <= ((+((*l_674) = p_1719->g_426)) < (0UL != (*p_1719->g_339)))) != (safe_mod_func_int64_t_s_s(((l_46 >= ((p_1719->g_141 || ((safe_div_func_int64_t_s_s((safe_mul_func_int8_t_s_s((((safe_lshift_func_int8_t_s_u((p_38 , l_683), p_1719->g_425.f0)) , l_46) ^ l_683), 1UL)), p_37)) <= (*l_75))) < l_46)) | 0x9C244CA3L), 0xCB7B1DEB000EB78FL))) , 0x410FD8A4L)), p_37)) , l_684[2][0])) , p_1719->g_229) >= p_37);
        --l_699;
        (*l_75) = ((((-9L) | (safe_lshift_func_uint16_t_u_s((((safe_sub_func_uint8_t_u_u((safe_unary_minus_func_int16_t_s((((p_37 , ((*l_714) ^= (((safe_mod_func_int64_t_s_s((safe_sub_func_int64_t_s_s((((((&p_1719->g_71 == &p_1719->g_73) , (void*)0) != (((*l_693) = (((p_1719->g_143[1][3] & ((safe_sub_func_uint32_t_u_u((*l_692), ((*l_77) != (*l_77)))) && p_37)) != p_38) , 0x31CC783AL)) , &p_1719->g_420)) < GROUP_DIVERGE(1, 1)) || 0L), l_698)), l_713)) & p_37) ^ (*l_692)))) , p_38) && FAKE_DIVERGE(p_1719->local_0_offset, get_local_id(0), 10)))), (*l_689))) && l_683) & (*l_692)), l_715))) , p_1719->g_186) , l_716);
    }
    p_1719->g_425.f2 &= (l_728.f2 = ((safe_mod_func_uint32_t_u_u(((safe_div_func_uint8_t_u_u(((-1L) && (safe_mul_func_int16_t_s_s(((((&p_1719->g_229 == (l_723[3] = &p_1719->g_143[1][1])) || ((((safe_mul_func_int16_t_s_s(((p_38 <= 0xD49154D1L) > ((((safe_mod_func_uint8_t_u_u((((l_684[2][0] , ((l_728 , (safe_add_func_int32_t_s_s(((((*l_77) != ((safe_div_func_int32_t_s_s((((!p_38) < l_733) >= p_38), p_37)) , (*l_77))) >= 0UL) && (-1L)), l_733))) < l_733)) < l_699) , l_734), l_683)) < 0L) && 0x5D5CL) != p_1719->g_123.f2)), p_37)) ^ l_684[0][5]) , p_1719->g_214[0][1]) < l_683)) && p_38) , p_1719->g_214[0][4]), 0x1AD1L))), l_698)) ^ p_38), 0x900CE855L)) & l_728.f1));
    (*p_1719->g_739) = l_738;
    return p_1719->g_230[0];
}


/* ------------------------------------------ */
/* 
 * reads : p_1719->g_426
 * writes:
 */
int16_t  func_47(uint64_t * p_48, int8_t  p_49, int8_t  p_50, uint8_t  p_51, int32_t * p_52, struct S2 * p_1719)
{ /* block id: 366 */
    int32_t *l_659 = &p_1719->g_9;
    int32_t *l_660 = &p_1719->g_123.f0;
    int32_t *l_661 = &p_1719->g_123.f2;
    int32_t *l_662 = (void*)0;
    int32_t l_663 = 0x0DBA63C4L;
    int32_t *l_664[9] = {&p_1719->g_123.f2,&l_663,&p_1719->g_123.f2,&p_1719->g_123.f2,&l_663,&p_1719->g_123.f2,&p_1719->g_123.f2,&l_663,&p_1719->g_123.f2};
    int32_t l_665 = 3L;
    int16_t l_666 = 4L;
    int16_t l_667[10] = {1L,1L,1L,1L,1L,1L,1L,1L,1L,1L};
    uint32_t l_668 = 1UL;
    int i;
    ++l_668;
    return p_1719->g_426;
}


/* ------------------------------------------ */
/* 
 * reads : p_1719->g_231 p_1719->g_217 p_1719->g_9 p_1719->g_73 p_1719->g_10 p_1719->g_83 p_1719->g_5 p_1719->g_6 p_1719->g_123.f0 p_1719->g_220 p_1719->g_259 p_1719->g_79 p_1719->g_123.f2 p_1719->g_8 p_1719->g_203 p_1719->g_250 p_1719->g_318 p_1719->g_186 p_1719->g_458 p_1719->g_113 p_1719->g_316 p_1719->g_82 p_1719->g_337 p_1719->g_124 p_1719->g_123 p_1719->g_360 p_1719->g_386 p_1719->g_181 p_1719->g_214 p_1719->g_71 p_1719->g_283 p_1719->g_143 p_1719->g_420 p_1719->g_425 p_1719->g_426 p_1719->g_229 p_1719->g_481 p_1719->g_339 p_1719->g_208 p_1719->g_192 p_1719->g_509 p_1719->g_2 p_1719->g_543 p_1719->g_219 p_1719->g_230 p_1719->g_248 p_1719->g_141
 * writes: p_1719->g_231 p_1719->g_248 p_1719->g_250 p_1719->g_254 p_1719->g_79 p_1719->g_259 p_1719->g_123.f0 p_1719->g_123.f1 p_1719->g_71 p_1719->g_9 p_1719->g_208 p_1719->g_141 p_1719->g_186 p_1719->g_458 p_1719->g_83 p_1719->g_316 p_1719->g_338 p_1719->g_143 p_1719->g_73 p_1719->g_181 p_1719->g_283 p_1719->g_420 p_1719->g_220 p_1719->g_123 p_1719->g_426 p_1719->g_360 p_1719->g_179
 */
union U1  func_55(int32_t * p_56, uint64_t  p_57, int32_t * p_58, uint64_t  p_59, uint64_t * p_60, struct S2 * p_1719)
{ /* block id: 146 */
    int32_t *l_228[4][6] = {{&p_1719->g_123.f0,(void*)0,&p_1719->g_123.f2,(void*)0,&p_1719->g_123.f0,&p_1719->g_123.f0},{&p_1719->g_123.f0,(void*)0,&p_1719->g_123.f2,(void*)0,&p_1719->g_123.f0,&p_1719->g_123.f0},{&p_1719->g_123.f0,(void*)0,&p_1719->g_123.f2,(void*)0,&p_1719->g_123.f0,&p_1719->g_123.f0},{&p_1719->g_123.f0,(void*)0,&p_1719->g_123.f2,(void*)0,&p_1719->g_123.f0,&p_1719->g_123.f0}};
    int8_t *l_246 = (void*)0;
    int8_t *l_247 = &p_1719->g_248;
    int8_t *l_249 = &p_1719->g_250;
    int16_t *l_251 = &p_1719->g_186;
    int64_t *l_253 = &p_1719->g_179;
    int64_t **l_252[9][9][3] = {{{(void*)0,(void*)0,&l_253},{(void*)0,(void*)0,&l_253},{(void*)0,(void*)0,&l_253},{(void*)0,(void*)0,&l_253},{(void*)0,(void*)0,&l_253},{(void*)0,(void*)0,&l_253},{(void*)0,(void*)0,&l_253},{(void*)0,(void*)0,&l_253},{(void*)0,(void*)0,&l_253}},{{(void*)0,(void*)0,&l_253},{(void*)0,(void*)0,&l_253},{(void*)0,(void*)0,&l_253},{(void*)0,(void*)0,&l_253},{(void*)0,(void*)0,&l_253},{(void*)0,(void*)0,&l_253},{(void*)0,(void*)0,&l_253},{(void*)0,(void*)0,&l_253},{(void*)0,(void*)0,&l_253}},{{(void*)0,(void*)0,&l_253},{(void*)0,(void*)0,&l_253},{(void*)0,(void*)0,&l_253},{(void*)0,(void*)0,&l_253},{(void*)0,(void*)0,&l_253},{(void*)0,(void*)0,&l_253},{(void*)0,(void*)0,&l_253},{(void*)0,(void*)0,&l_253},{(void*)0,(void*)0,&l_253}},{{(void*)0,(void*)0,&l_253},{(void*)0,(void*)0,&l_253},{(void*)0,(void*)0,&l_253},{(void*)0,(void*)0,&l_253},{(void*)0,(void*)0,&l_253},{(void*)0,(void*)0,&l_253},{(void*)0,(void*)0,&l_253},{(void*)0,(void*)0,&l_253},{(void*)0,(void*)0,&l_253}},{{(void*)0,(void*)0,&l_253},{(void*)0,(void*)0,&l_253},{(void*)0,(void*)0,&l_253},{(void*)0,(void*)0,&l_253},{(void*)0,(void*)0,&l_253},{(void*)0,(void*)0,&l_253},{(void*)0,(void*)0,&l_253},{(void*)0,(void*)0,&l_253},{(void*)0,(void*)0,&l_253}},{{(void*)0,(void*)0,&l_253},{(void*)0,(void*)0,&l_253},{(void*)0,(void*)0,&l_253},{(void*)0,(void*)0,&l_253},{(void*)0,(void*)0,&l_253},{(void*)0,(void*)0,&l_253},{(void*)0,(void*)0,&l_253},{(void*)0,(void*)0,&l_253},{(void*)0,(void*)0,&l_253}},{{(void*)0,(void*)0,&l_253},{(void*)0,(void*)0,&l_253},{(void*)0,(void*)0,&l_253},{(void*)0,(void*)0,&l_253},{(void*)0,(void*)0,&l_253},{(void*)0,(void*)0,&l_253},{(void*)0,(void*)0,&l_253},{(void*)0,(void*)0,&l_253},{(void*)0,(void*)0,&l_253}},{{(void*)0,(void*)0,&l_253},{(void*)0,(void*)0,&l_253},{(void*)0,(void*)0,&l_253},{(void*)0,(void*)0,&l_253},{(void*)0,(void*)0,&l_253},{(void*)0,(void*)0,&l_253},{(void*)0,(void*)0,&l_253},{(void*)0,(void*)0,&l_253},{(void*)0,(void*)0,&l_253}},{{(void*)0,(void*)0,&l_253},{(void*)0,(void*)0,&l_253},{(void*)0,(void*)0,&l_253},{(void*)0,(void*)0,&l_253},{(void*)0,(void*)0,&l_253},{(void*)0,(void*)0,&l_253},{(void*)0,(void*)0,&l_253},{(void*)0,(void*)0,&l_253},{(void*)0,(void*)0,&l_253}}};
    uint32_t *l_255 = &p_1719->g_79;
    uint16_t l_258 = 1UL;
    uint8_t *l_262[6][10] = {{&p_1719->g_259,&p_1719->g_259,(void*)0,&p_1719->g_259,&p_1719->g_220,(void*)0,(void*)0,&p_1719->g_220,&p_1719->g_259,(void*)0},{&p_1719->g_259,&p_1719->g_259,(void*)0,&p_1719->g_259,&p_1719->g_220,(void*)0,(void*)0,&p_1719->g_220,&p_1719->g_259,(void*)0},{&p_1719->g_259,&p_1719->g_259,(void*)0,&p_1719->g_259,&p_1719->g_220,(void*)0,(void*)0,&p_1719->g_220,&p_1719->g_259,(void*)0},{&p_1719->g_259,&p_1719->g_259,(void*)0,&p_1719->g_259,&p_1719->g_220,(void*)0,(void*)0,&p_1719->g_220,&p_1719->g_259,(void*)0},{&p_1719->g_259,&p_1719->g_259,(void*)0,&p_1719->g_259,&p_1719->g_220,(void*)0,(void*)0,&p_1719->g_220,&p_1719->g_259,(void*)0},{&p_1719->g_259,&p_1719->g_259,(void*)0,&p_1719->g_259,&p_1719->g_220,(void*)0,(void*)0,&p_1719->g_220,&p_1719->g_259,(void*)0}};
    uint32_t l_289 = 4294967295UL;
    struct S0 l_302 = {0L,0x5559L,5L};
    int8_t l_317 = (-8L);
    uint32_t **l_332 = &l_255;
    uint32_t l_334 = 0x98D623E0L;
    uint16_t l_361 = 65534UL;
    uint64_t ***l_534 = &p_1719->g_338;
    int64_t l_581 = (-1L);
    union U1 *l_625 = &p_1719->g_203;
    union U1 **l_624 = &l_625;
    union U1 ***l_623[3][7][2] = {{{&l_624,&l_624},{&l_624,&l_624},{&l_624,&l_624},{&l_624,&l_624},{&l_624,&l_624},{&l_624,&l_624},{&l_624,&l_624}},{{&l_624,&l_624},{&l_624,&l_624},{&l_624,&l_624},{&l_624,&l_624},{&l_624,&l_624},{&l_624,&l_624},{&l_624,&l_624}},{{&l_624,&l_624},{&l_624,&l_624},{&l_624,&l_624},{&l_624,&l_624},{&l_624,&l_624},{&l_624,&l_624},{&l_624,&l_624}}};
    struct S0 *l_628 = &p_1719->g_425;
    struct S0 **l_627 = &l_628;
    int32_t l_644 = 0x3823BB19L;
    uint32_t l_657 = 0x8522A94AL;
    int i, j, k;
lbl_363:
    --p_1719->g_231;
    p_1719->g_123.f0 &= (p_57 , ((p_1719->g_259 = ((safe_div_func_uint32_t_u_u(((safe_div_func_int8_t_s_s((safe_mul_func_uint8_t_u_u((safe_mod_func_int8_t_s_s(((safe_mul_func_uint8_t_u_u((p_57 || ((*l_249) = ((*l_247) = (safe_sub_func_uint16_t_u_u(1UL, p_1719->g_217))))), (&p_1719->g_186 != l_251))) && (((*l_255) = ((p_1719->g_254[8] = &p_1719->g_179) == &p_1719->g_179)) | (((~(safe_mul_func_uint8_t_u_u(p_59, 0x00L))) , 0x03L) | p_57))), l_258)), p_1719->g_9)), p_1719->g_73)) ^ 0x71L), (*p_1719->g_10))) || p_57)) && (*p_1719->g_5)));
    if (((((&l_258 == &l_258) , p_1719->g_220) < ((safe_mod_func_int8_t_s_s(p_59, p_59)) < (++p_1719->g_259))) || ((0x1D77L >= (safe_add_func_int64_t_s_s((safe_rshift_func_uint16_t_u_u((safe_mod_func_int32_t_s_s((((safe_lshift_func_uint16_t_u_u(0x0798L, 15)) | (safe_div_func_int16_t_s_s(p_59, (p_59 ^ p_57)))) <= p_57), GROUP_DIVERGE(2, 1))), 1)), (-1L)))) & p_57)))
    { /* block id: 155 */
        int32_t *l_307[3][10][5] = {{{&l_302.f2,(void*)0,&l_302.f2,&p_1719->g_123.f0,&p_1719->g_83},{&l_302.f2,(void*)0,&l_302.f2,&p_1719->g_123.f0,&p_1719->g_83},{&l_302.f2,(void*)0,&l_302.f2,&p_1719->g_123.f0,&p_1719->g_83},{&l_302.f2,(void*)0,&l_302.f2,&p_1719->g_123.f0,&p_1719->g_83},{&l_302.f2,(void*)0,&l_302.f2,&p_1719->g_123.f0,&p_1719->g_83},{&l_302.f2,(void*)0,&l_302.f2,&p_1719->g_123.f0,&p_1719->g_83},{&l_302.f2,(void*)0,&l_302.f2,&p_1719->g_123.f0,&p_1719->g_83},{&l_302.f2,(void*)0,&l_302.f2,&p_1719->g_123.f0,&p_1719->g_83},{&l_302.f2,(void*)0,&l_302.f2,&p_1719->g_123.f0,&p_1719->g_83},{&l_302.f2,(void*)0,&l_302.f2,&p_1719->g_123.f0,&p_1719->g_83}},{{&l_302.f2,(void*)0,&l_302.f2,&p_1719->g_123.f0,&p_1719->g_83},{&l_302.f2,(void*)0,&l_302.f2,&p_1719->g_123.f0,&p_1719->g_83},{&l_302.f2,(void*)0,&l_302.f2,&p_1719->g_123.f0,&p_1719->g_83},{&l_302.f2,(void*)0,&l_302.f2,&p_1719->g_123.f0,&p_1719->g_83},{&l_302.f2,(void*)0,&l_302.f2,&p_1719->g_123.f0,&p_1719->g_83},{&l_302.f2,(void*)0,&l_302.f2,&p_1719->g_123.f0,&p_1719->g_83},{&l_302.f2,(void*)0,&l_302.f2,&p_1719->g_123.f0,&p_1719->g_83},{&l_302.f2,(void*)0,&l_302.f2,&p_1719->g_123.f0,&p_1719->g_83},{&l_302.f2,(void*)0,&l_302.f2,&p_1719->g_123.f0,&p_1719->g_83},{&l_302.f2,(void*)0,&l_302.f2,&p_1719->g_123.f0,&p_1719->g_83}},{{&l_302.f2,(void*)0,&l_302.f2,&p_1719->g_123.f0,&p_1719->g_83},{&l_302.f2,(void*)0,&l_302.f2,&p_1719->g_123.f0,&p_1719->g_83},{&l_302.f2,(void*)0,&l_302.f2,&p_1719->g_123.f0,&p_1719->g_83},{&l_302.f2,(void*)0,&l_302.f2,&p_1719->g_123.f0,&p_1719->g_83},{&l_302.f2,(void*)0,&l_302.f2,&p_1719->g_123.f0,&p_1719->g_83},{&l_302.f2,(void*)0,&l_302.f2,&p_1719->g_123.f0,&p_1719->g_83},{&l_302.f2,(void*)0,&l_302.f2,&p_1719->g_123.f0,&p_1719->g_83},{&l_302.f2,(void*)0,&l_302.f2,&p_1719->g_123.f0,&p_1719->g_83},{&l_302.f2,(void*)0,&l_302.f2,&p_1719->g_123.f0,&p_1719->g_83},{&l_302.f2,(void*)0,&l_302.f2,&p_1719->g_123.f0,&p_1719->g_83}}};
        int i, j, k;
        for (p_1719->g_123.f1 = 0; (p_1719->g_123.f1 != 18); p_1719->g_123.f1 = safe_add_func_uint64_t_u_u(p_1719->g_123.f1, 9))
        { /* block id: 158 */
            int16_t l_285 = 0x45D2L;
            struct S0 l_288[8][1][9] = {{{{0x023A9EEFL,0x6534L,0x64628A98L},{0x023A9EEFL,0x6534L,0x64628A98L},{-10L,0x5794L,0x74DB81CBL},{0x272BA411L,-1L,0x4C10B504L},{-9L,0L,0x54C2A805L},{0x272BA411L,-1L,0x4C10B504L},{-10L,0x5794L,0x74DB81CBL},{0x023A9EEFL,0x6534L,0x64628A98L},{0x023A9EEFL,0x6534L,0x64628A98L}}},{{{0x023A9EEFL,0x6534L,0x64628A98L},{0x023A9EEFL,0x6534L,0x64628A98L},{-10L,0x5794L,0x74DB81CBL},{0x272BA411L,-1L,0x4C10B504L},{-9L,0L,0x54C2A805L},{0x272BA411L,-1L,0x4C10B504L},{-10L,0x5794L,0x74DB81CBL},{0x023A9EEFL,0x6534L,0x64628A98L},{0x023A9EEFL,0x6534L,0x64628A98L}}},{{{0x023A9EEFL,0x6534L,0x64628A98L},{0x023A9EEFL,0x6534L,0x64628A98L},{-10L,0x5794L,0x74DB81CBL},{0x272BA411L,-1L,0x4C10B504L},{-9L,0L,0x54C2A805L},{0x272BA411L,-1L,0x4C10B504L},{-10L,0x5794L,0x74DB81CBL},{0x023A9EEFL,0x6534L,0x64628A98L},{0x023A9EEFL,0x6534L,0x64628A98L}}},{{{0x023A9EEFL,0x6534L,0x64628A98L},{0x023A9EEFL,0x6534L,0x64628A98L},{-10L,0x5794L,0x74DB81CBL},{0x272BA411L,-1L,0x4C10B504L},{-9L,0L,0x54C2A805L},{0x272BA411L,-1L,0x4C10B504L},{-10L,0x5794L,0x74DB81CBL},{0x023A9EEFL,0x6534L,0x64628A98L},{0x023A9EEFL,0x6534L,0x64628A98L}}},{{{0x023A9EEFL,0x6534L,0x64628A98L},{0x023A9EEFL,0x6534L,0x64628A98L},{-10L,0x5794L,0x74DB81CBL},{0x272BA411L,-1L,0x4C10B504L},{-9L,0L,0x54C2A805L},{0x272BA411L,-1L,0x4C10B504L},{-10L,0x5794L,0x74DB81CBL},{0x023A9EEFL,0x6534L,0x64628A98L},{0x023A9EEFL,0x6534L,0x64628A98L}}},{{{0x023A9EEFL,0x6534L,0x64628A98L},{0x023A9EEFL,0x6534L,0x64628A98L},{-10L,0x5794L,0x74DB81CBL},{0x272BA411L,-1L,0x4C10B504L},{-9L,0L,0x54C2A805L},{0x272BA411L,-1L,0x4C10B504L},{-10L,0x5794L,0x74DB81CBL},{0x023A9EEFL,0x6534L,0x64628A98L},{0x023A9EEFL,0x6534L,0x64628A98L}}},{{{0x023A9EEFL,0x6534L,0x64628A98L},{0x023A9EEFL,0x6534L,0x64628A98L},{-10L,0x5794L,0x74DB81CBL},{0x272BA411L,-1L,0x4C10B504L},{-9L,0L,0x54C2A805L},{0x272BA411L,-1L,0x4C10B504L},{-10L,0x5794L,0x74DB81CBL},{0x023A9EEFL,0x6534L,0x64628A98L},{0x023A9EEFL,0x6534L,0x64628A98L}}},{{{0x023A9EEFL,0x6534L,0x64628A98L},{0x023A9EEFL,0x6534L,0x64628A98L},{-10L,0x5794L,0x74DB81CBL},{0x272BA411L,-1L,0x4C10B504L},{-9L,0L,0x54C2A805L},{0x272BA411L,-1L,0x4C10B504L},{-10L,0x5794L,0x74DB81CBL},{0x023A9EEFL,0x6534L,0x64628A98L},{0x023A9EEFL,0x6534L,0x64628A98L}}}};
            int i, j, k;
            for (p_1719->g_79 = 15; (p_1719->g_79 >= 9); p_1719->g_79 = safe_sub_func_uint8_t_u_u(p_1719->g_79, 7))
            { /* block id: 161 */
                uint8_t l_290 = 251UL;
                int32_t l_309 = 0L;
                for (p_1719->g_71 = 0; (p_1719->g_71 > 18); p_1719->g_71 = safe_add_func_int64_t_s_s(p_1719->g_71, 4))
                { /* block id: 164 */
                    int32_t *l_281[5];
                    int32_t **l_284 = &l_281[4];
                    int i;
                    for (i = 0; i < 5; i++)
                        l_281[i] = &p_1719->g_9;
                    l_281[1] = &p_1719->g_9;
                    (*l_284) = p_58;
                    if (l_285)
                        continue;
                    if ((safe_add_func_uint64_t_u_u(p_1719->g_123.f0, ((l_288[3][0][6] , 0x62L) < p_57))))
                    { /* block id: 168 */
                        l_289 |= (&p_1719->g_248 == (void*)0);
                    }
                    else
                    { /* block id: 170 */
                        l_288[3][0][6].f0 = l_288[3][0][6].f2;
                        ++l_290;
                    }
                }
                for (p_1719->g_259 = 0; (p_1719->g_259 > 15); ++p_1719->g_259)
                { /* block id: 177 */
                    int8_t l_314 = (-2L);
                    uint32_t *l_315[7][2] = {{&p_1719->g_79,&p_1719->g_316},{&p_1719->g_79,&p_1719->g_316},{&p_1719->g_79,&p_1719->g_316},{&p_1719->g_79,&p_1719->g_316},{&p_1719->g_79,&p_1719->g_316},{&p_1719->g_79,&p_1719->g_316},{&p_1719->g_79,&p_1719->g_316}};
                    int i, j;
                    (*p_1719->g_8) ^= (safe_div_func_uint64_t_u_u(FAKE_DIVERGE(p_1719->local_0_offset, get_local_id(0), 10), (safe_div_func_int32_t_s_s((safe_add_func_int32_t_s_s((*p_58), p_1719->g_123.f2)), (safe_unary_minus_func_uint32_t_u((l_302 , 0x706FE9D0L)))))));
                    for (p_1719->g_208 = 11; (p_1719->g_208 >= 1); --p_1719->g_208)
                    { /* block id: 181 */
                        struct S0 *l_305 = (void*)0;
                        struct S0 *l_306 = &l_288[3][0][6];
                        (1 + 1);
                    }
                    for (p_1719->g_141 = 2; (p_1719->g_141 >= 0); p_1719->g_141 -= 1)
                    { /* block id: 189 */
                        l_309 ^= 0x1EB063BAL;
                        return p_1719->g_203;
                    }
                    (*p_1719->g_8) &= (l_288[3][0][6].f2 <= (l_285 && ((-4L) || (safe_mod_func_uint64_t_u_u(((l_307[0][6][4] != (((l_309 = (l_288[3][0][6].f1 >= (1UL <= (safe_rshift_func_uint16_t_u_s(((0x5571L >= (p_1719->g_250 && l_314)) <= 0xF69C2A56A7662CDDL), 0))))) <= p_1719->g_6) , l_255)) > l_314), l_317)))));
                }
            }
            return p_1719->g_318;
        }
    }
    else
    { /* block id: 199 */
        uint8_t l_323 = 1UL;
        uint64_t *l_324 = &p_1719->g_2;
        uint32_t **l_331 = &l_255;
        uint32_t ***l_333 = &l_332;
        uint32_t *l_335 = &p_1719->g_316;
        int32_t l_336[9][3][9] = {{{0x0FB7B2C6L,0L,0L,0x220F610FL,0L,(-3L),0x37E2FAA7L,0x277A11C3L,0x277A11C3L},{0x0FB7B2C6L,0L,0L,0x220F610FL,0L,(-3L),0x37E2FAA7L,0x277A11C3L,0x277A11C3L},{0x0FB7B2C6L,0L,0L,0x220F610FL,0L,(-3L),0x37E2FAA7L,0x277A11C3L,0x277A11C3L}},{{0x0FB7B2C6L,0L,0L,0x220F610FL,0L,(-3L),0x37E2FAA7L,0x277A11C3L,0x277A11C3L},{0x0FB7B2C6L,0L,0L,0x220F610FL,0L,(-3L),0x37E2FAA7L,0x277A11C3L,0x277A11C3L},{0x0FB7B2C6L,0L,0L,0x220F610FL,0L,(-3L),0x37E2FAA7L,0x277A11C3L,0x277A11C3L}},{{0x0FB7B2C6L,0L,0L,0x220F610FL,0L,(-3L),0x37E2FAA7L,0x277A11C3L,0x277A11C3L},{0x0FB7B2C6L,0L,0L,0x220F610FL,0L,(-3L),0x37E2FAA7L,0x277A11C3L,0x277A11C3L},{0x0FB7B2C6L,0L,0L,0x220F610FL,0L,(-3L),0x37E2FAA7L,0x277A11C3L,0x277A11C3L}},{{0x0FB7B2C6L,0L,0L,0x220F610FL,0L,(-3L),0x37E2FAA7L,0x277A11C3L,0x277A11C3L},{0x0FB7B2C6L,0L,0L,0x220F610FL,0L,(-3L),0x37E2FAA7L,0x277A11C3L,0x277A11C3L},{0x0FB7B2C6L,0L,0L,0x220F610FL,0L,(-3L),0x37E2FAA7L,0x277A11C3L,0x277A11C3L}},{{0x0FB7B2C6L,0L,0L,0x220F610FL,0L,(-3L),0x37E2FAA7L,0x277A11C3L,0x277A11C3L},{0x0FB7B2C6L,0L,0L,0x220F610FL,0L,(-3L),0x37E2FAA7L,0x277A11C3L,0x277A11C3L},{0x0FB7B2C6L,0L,0L,0x220F610FL,0L,(-3L),0x37E2FAA7L,0x277A11C3L,0x277A11C3L}},{{0x0FB7B2C6L,0L,0L,0x220F610FL,0L,(-3L),0x37E2FAA7L,0x277A11C3L,0x277A11C3L},{0x0FB7B2C6L,0L,0L,0x220F610FL,0L,(-3L),0x37E2FAA7L,0x277A11C3L,0x277A11C3L},{0x0FB7B2C6L,0L,0L,0x220F610FL,0L,(-3L),0x37E2FAA7L,0x277A11C3L,0x277A11C3L}},{{0x0FB7B2C6L,0L,0L,0x220F610FL,0L,(-3L),0x37E2FAA7L,0x277A11C3L,0x277A11C3L},{0x0FB7B2C6L,0L,0L,0x220F610FL,0L,(-3L),0x37E2FAA7L,0x277A11C3L,0x277A11C3L},{0x0FB7B2C6L,0L,0L,0x220F610FL,0L,(-3L),0x37E2FAA7L,0x277A11C3L,0x277A11C3L}},{{0x0FB7B2C6L,0L,0L,0x220F610FL,0L,(-3L),0x37E2FAA7L,0x277A11C3L,0x277A11C3L},{0x0FB7B2C6L,0L,0L,0x220F610FL,0L,(-3L),0x37E2FAA7L,0x277A11C3L,0x277A11C3L},{0x0FB7B2C6L,0L,0L,0x220F610FL,0L,(-3L),0x37E2FAA7L,0x277A11C3L,0x277A11C3L}},{{0x0FB7B2C6L,0L,0L,0x220F610FL,0L,(-3L),0x37E2FAA7L,0x277A11C3L,0x277A11C3L},{0x0FB7B2C6L,0L,0L,0x220F610FL,0L,(-3L),0x37E2FAA7L,0x277A11C3L,0x277A11C3L},{0x0FB7B2C6L,0L,0L,0x220F610FL,0L,(-3L),0x37E2FAA7L,0x277A11C3L,0x277A11C3L}}};
        int32_t l_359 = 1L;
        int32_t l_362 = 0x75B20EF5L;
        uint16_t l_405 = 0x81A5L;
        struct S0 *l_414 = (void*)0;
        int8_t *l_421 = &p_1719->g_248;
        uint32_t l_438 = 4294967295UL;
        uint64_t ***l_533 = &p_1719->g_338;
        union U1 *l_541 = &p_1719->g_203;
        union U1 **l_540 = &l_541;
        uint8_t l_548 = 0xC5L;
        int16_t l_589 = (-5L);
        int8_t l_601[7] = {0x35L,0x35L,0x35L,0x35L,0x35L,0x35L,0x35L};
        uint8_t l_607 = 0x9DL;
        uint64_t l_611 = 0x66B6FB8A25E88634L;
        int i, j, k;
lbl_558:
        if ((l_336[6][2][7] = (safe_sub_func_int16_t_s_s((safe_add_func_int16_t_s_s((((p_57 == ((*l_251) |= l_323)) && (&p_1719->g_2 != l_324)) <= p_1719->g_113[3]), (safe_mul_func_uint8_t_u_u(((((*l_335) &= ((safe_mul_func_int8_t_s_s((safe_mul_func_int16_t_s_s((((*p_1719->g_10) = ((*p_58) = l_323)) < (-5L)), (((((l_331 != ((*l_333) = (l_323 , l_332))) | 0x6AC3CC48L) , p_57) , 0x18306D8AL) | 0x4BCB65FBL))), 0UL)) , l_334)) != l_323) != 2L), 0x58L)))), l_323))))
        { /* block id: 206 */
            uint64_t l_351 = 18446744073709551611UL;
            int32_t *l_364[7];
            struct S0 *l_417 = (void*)0;
            struct S0 *l_418[2];
            int8_t *l_422[9] = {&p_1719->g_248,&l_317,&p_1719->g_248,&p_1719->g_248,&l_317,&p_1719->g_248,&p_1719->g_248,&l_317,&p_1719->g_248};
            union U1 *l_430 = &p_1719->g_203;
            union U1 **l_429 = &l_430;
            int i;
            for (i = 0; i < 7; i++)
                l_364[i] = (void*)0;
            for (i = 0; i < 2; i++)
                l_418[i] = &p_1719->g_123;
            if (((*p_58) = (*p_1719->g_82)))
            { /* block id: 208 */
                int32_t l_345 = 1L;
                int64_t *l_348[8][5] = {{&p_1719->g_141,&p_1719->g_217,&p_1719->g_143[0][7],&p_1719->g_217,&p_1719->g_141},{&p_1719->g_141,&p_1719->g_217,&p_1719->g_143[0][7],&p_1719->g_217,&p_1719->g_141},{&p_1719->g_141,&p_1719->g_217,&p_1719->g_143[0][7],&p_1719->g_217,&p_1719->g_141},{&p_1719->g_141,&p_1719->g_217,&p_1719->g_143[0][7],&p_1719->g_217,&p_1719->g_141},{&p_1719->g_141,&p_1719->g_217,&p_1719->g_143[0][7],&p_1719->g_217,&p_1719->g_141},{&p_1719->g_141,&p_1719->g_217,&p_1719->g_143[0][7],&p_1719->g_217,&p_1719->g_141},{&p_1719->g_141,&p_1719->g_217,&p_1719->g_143[0][7],&p_1719->g_217,&p_1719->g_141},{&p_1719->g_141,&p_1719->g_217,&p_1719->g_143[0][7],&p_1719->g_217,&p_1719->g_141}};
                uint16_t *l_355 = (void*)0;
                uint16_t *l_356[4][4] = {{(void*)0,(void*)0,&p_1719->g_71,(void*)0},{(void*)0,(void*)0,&p_1719->g_71,(void*)0},{(void*)0,(void*)0,&p_1719->g_71,(void*)0},{(void*)0,(void*)0,&p_1719->g_71,(void*)0}};
                int32_t l_365 = (-1L);
                int32_t l_368[4] = {5L,5L,5L,5L};
                int32_t l_378[5] = {(-1L),(-1L),(-1L),(-1L),(-1L)};
                int i, j;
                (*p_1719->g_337) = &p_60;
                (*p_58) = ((((safe_lshift_func_int8_t_s_s((4294967295UL < (safe_unary_minus_func_int16_t_s((safe_sub_func_uint16_t_u_u(((l_345 | (safe_lshift_func_uint16_t_u_u(((p_1719->g_143[0][5] = (l_336[6][2][7] = 0x0F5167262A90ACF8L)) > ((+(0x63L != ((safe_lshift_func_uint8_t_u_s(l_351, 5)) < (((((((p_1719->g_73 = ((*p_1719->g_124) , (safe_unary_minus_func_uint16_t_u(0x15BBL)))) != ((p_1719->g_9 | (((l_359 &= (safe_add_func_int64_t_s_s(p_57, FAKE_DIVERGE(p_1719->local_1_offset, get_local_id(1), 10)))) ^ 0x8437L) == p_57)) >= l_345)) ^ 9UL) & GROUP_DIVERGE(2, 1)) != p_57) > p_1719->g_360) | p_1719->g_231)))) ^ (*p_58))), 14))) ^ l_361), p_57))))), 0)) && l_362) || l_345) < FAKE_DIVERGE(p_1719->global_0_offset, get_global_id(0), 10));
                if (l_302.f0)
                    goto lbl_363;
                for (l_302.f2 = 4; (l_302.f2 >= 1); l_302.f2 -= 1)
                { /* block id: 218 */
                    int32_t l_366 = 0x48BA44CEL;
                    int32_t l_369 = (-3L);
                    int32_t l_372 = 0x1B1DAA92L;
                    int32_t l_373 = 1L;
                    int32_t l_375 = 0x66D6DF2BL;
                    int32_t l_376 = 0x212E5687L;
                    int32_t l_377 = 0x25C55902L;
                    int32_t l_379 = 0L;
                    int32_t l_380 = 0x0858B3AFL;
                    int32_t l_381 = (-9L);
                    uint64_t l_404[4][5][4] = {{{0x35A8015804A5AF3BL,0xDCEF7BBA46A38501L,0x35A8015804A5AF3BL,0x35A8015804A5AF3BL},{0x35A8015804A5AF3BL,0xDCEF7BBA46A38501L,0x35A8015804A5AF3BL,0x35A8015804A5AF3BL},{0x35A8015804A5AF3BL,0xDCEF7BBA46A38501L,0x35A8015804A5AF3BL,0x35A8015804A5AF3BL},{0x35A8015804A5AF3BL,0xDCEF7BBA46A38501L,0x35A8015804A5AF3BL,0x35A8015804A5AF3BL},{0x35A8015804A5AF3BL,0xDCEF7BBA46A38501L,0x35A8015804A5AF3BL,0x35A8015804A5AF3BL}},{{0x35A8015804A5AF3BL,0xDCEF7BBA46A38501L,0x35A8015804A5AF3BL,0x35A8015804A5AF3BL},{0x35A8015804A5AF3BL,0xDCEF7BBA46A38501L,0x35A8015804A5AF3BL,0x35A8015804A5AF3BL},{0x35A8015804A5AF3BL,0xDCEF7BBA46A38501L,0x35A8015804A5AF3BL,0x35A8015804A5AF3BL},{0x35A8015804A5AF3BL,0xDCEF7BBA46A38501L,0x35A8015804A5AF3BL,0x35A8015804A5AF3BL},{0x35A8015804A5AF3BL,0xDCEF7BBA46A38501L,0x35A8015804A5AF3BL,0x35A8015804A5AF3BL}},{{0x35A8015804A5AF3BL,0xDCEF7BBA46A38501L,0x35A8015804A5AF3BL,0x35A8015804A5AF3BL},{0x35A8015804A5AF3BL,0xDCEF7BBA46A38501L,0x35A8015804A5AF3BL,0x35A8015804A5AF3BL},{0x35A8015804A5AF3BL,0xDCEF7BBA46A38501L,0x35A8015804A5AF3BL,0x35A8015804A5AF3BL},{0x35A8015804A5AF3BL,0xDCEF7BBA46A38501L,0x35A8015804A5AF3BL,0x35A8015804A5AF3BL},{0x35A8015804A5AF3BL,0xDCEF7BBA46A38501L,0x35A8015804A5AF3BL,0x35A8015804A5AF3BL}},{{0x35A8015804A5AF3BL,0xDCEF7BBA46A38501L,0x35A8015804A5AF3BL,0x35A8015804A5AF3BL},{0x35A8015804A5AF3BL,0xDCEF7BBA46A38501L,0x35A8015804A5AF3BL,0x35A8015804A5AF3BL},{0x35A8015804A5AF3BL,0xDCEF7BBA46A38501L,0x35A8015804A5AF3BL,0x35A8015804A5AF3BL},{0x35A8015804A5AF3BL,0xDCEF7BBA46A38501L,0x35A8015804A5AF3BL,0x35A8015804A5AF3BL},{0x35A8015804A5AF3BL,0xDCEF7BBA46A38501L,0x35A8015804A5AF3BL,0x35A8015804A5AF3BL}}};
                    int i, j, k;
                    l_364[5] = l_364[4];
                    for (p_1719->g_181 = 0; (p_1719->g_181 <= 1); p_1719->g_181 += 1)
                    { /* block id: 222 */
                        int32_t l_367 = 0x3E60F30AL;
                        int32_t l_370 = (-1L);
                        int32_t l_371 = 3L;
                        int32_t l_374[8];
                        uint32_t l_382 = 0xE65D5190L;
                        uint16_t **l_403 = &l_356[1][3];
                        int i, j;
                        for (i = 0; i < 8; i++)
                            l_374[i] = 0x5B44947BL;
                        ++l_382;
                        (*p_1719->g_386) = &l_359;
                        (*p_58) = (((*p_1719->g_124) , p_1719->g_214[p_1719->g_181][(l_302.f2 + 1)]) || (safe_sub_func_uint8_t_u_u(0x41L, (safe_rshift_func_uint8_t_u_s(0x30L, 7)))));
                        (*p_1719->g_283) &= (l_405 = (safe_mul_func_uint8_t_u_u((0x62L || (((safe_rshift_func_int16_t_s_u(1L, ((safe_rshift_func_uint16_t_u_u(0xCC68L, (safe_mul_func_uint8_t_u_u(251UL, (((safe_rshift_func_uint8_t_u_s((safe_rshift_func_int16_t_s_s(((*l_251) = (((*l_403) = &p_1719->g_71) == (void*)0)), ((((&p_1719->g_214[p_1719->g_181][(p_1719->g_181 + 1)] == &p_1719->g_214[0][2]) < (l_404[2][1][1] && p_1719->g_71)) < 4294967295UL) ^ l_370))), l_345)) != p_1719->g_79) | 1UL))))) ^ l_374[4]))) , 0xF2424E4AL) & 3UL)), p_1719->g_214[p_1719->g_181][(l_302.f2 + 1)])));
                    }
                }
            }
            else
            { /* block id: 232 */
                int16_t *l_410 = &p_1719->g_123.f1;
                int32_t *l_413 = &l_302.f2;
                struct S0 **l_415 = (void*)0;
                struct S0 **l_416[9] = {(void*)0,&l_414,(void*)0,(void*)0,&l_414,(void*)0,(void*)0,&l_414,(void*)0};
                uint64_t *l_419[9];
                int i;
                for (i = 0; i < 9; i++)
                    l_419[i] = &p_1719->g_420;
                (*p_1719->g_10) ^= ((*p_58) == (safe_sub_func_uint8_t_u_u(p_1719->g_143[0][7], ((safe_rshift_func_uint16_t_u_s((((*l_247) = (l_410 != (void*)0)) & ((*l_413) = (p_1719->g_220 = ((p_1719->g_420 |= (safe_div_func_int64_t_s_s(((l_413 == p_56) , ((l_417 = l_414) != l_418[0])), p_57))) , (*l_413))))), 13)) & 0L))));
                l_413 = &l_336[6][2][7];
                (*p_1719->g_124) = p_1719->g_425;
                --p_1719->g_426;
            }
            (*l_429) = &p_1719->g_203;
        }
        else
        { /* block id: 244 */
            int32_t l_435 = (-1L);
            for (l_323 = 0; (l_323 != 28); ++l_323)
            { /* block id: 247 */
                int16_t l_436[6] = {0x06D3L,0x06D3L,0x06D3L,0x06D3L,0x06D3L,0x06D3L};
                int64_t l_437 = 0x6706E8835EA9623EL;
                struct S0 l_441[4][8] = {{{0x7AC846F4L,-10L,0L},{0x3A367887L,1L,0x23A06458L},{0x0C9EA31AL,1L,0L},{2L,3L,6L},{0x3A367887L,1L,0x23A06458L},{2L,3L,6L},{0x0C9EA31AL,1L,0L},{0x3A367887L,1L,0x23A06458L}},{{0x7AC846F4L,-10L,0L},{0x3A367887L,1L,0x23A06458L},{0x0C9EA31AL,1L,0L},{2L,3L,6L},{0x3A367887L,1L,0x23A06458L},{2L,3L,6L},{0x0C9EA31AL,1L,0L},{0x3A367887L,1L,0x23A06458L}},{{0x7AC846F4L,-10L,0L},{0x3A367887L,1L,0x23A06458L},{0x0C9EA31AL,1L,0L},{2L,3L,6L},{0x3A367887L,1L,0x23A06458L},{2L,3L,6L},{0x0C9EA31AL,1L,0L},{0x3A367887L,1L,0x23A06458L}},{{0x7AC846F4L,-10L,0L},{0x3A367887L,1L,0x23A06458L},{0x0C9EA31AL,1L,0L},{2L,3L,6L},{0x3A367887L,1L,0x23A06458L},{2L,3L,6L},{0x0C9EA31AL,1L,0L},{0x3A367887L,1L,0x23A06458L}}};
                uint16_t *l_452 = &l_258;
                int i, j;
                (*p_58) &= ((l_336[6][2][7] = p_57) != ((++p_1719->g_220) < l_359));
                --l_438;
                if ((*p_58))
                    continue;
                l_441[2][2] = (((l_441[0][2] , (((safe_lshift_func_uint8_t_u_s((p_1719->g_420 , l_435), 1)) ^ (255UL == (safe_sub_func_uint8_t_u_u((safe_div_func_int32_t_s_s((safe_add_func_uint32_t_u_u((((((void*)0 != &p_59) && (safe_mod_func_int16_t_s_s((0x00F66635514FED19L > p_1719->g_360), ((*l_452) |= p_1719->g_79)))) != p_1719->g_181) <= p_57), l_437)), p_59)), p_1719->g_229)))) , &p_1719->g_219)) != p_60) , l_302);
            }
        }
        if ((*p_1719->g_8))
        { /* block id: 257 */
            uint8_t l_459 = 0xCCL;
            int32_t l_477 = 0x415BC054L;
            uint16_t l_505 = 65526UL;
            int16_t l_551 = 0L;
            if ((GROUP_DIVERGE(2, 1) , 1L))
            { /* block id: 258 */
                int16_t l_462[8][6][5] = {{{0L,0x5239L,0L,0x6FA9L,0L},{0L,0x5239L,0L,0x6FA9L,0L},{0L,0x5239L,0L,0x6FA9L,0L},{0L,0x5239L,0L,0x6FA9L,0L},{0L,0x5239L,0L,0x6FA9L,0L},{0L,0x5239L,0L,0x6FA9L,0L}},{{0L,0x5239L,0L,0x6FA9L,0L},{0L,0x5239L,0L,0x6FA9L,0L},{0L,0x5239L,0L,0x6FA9L,0L},{0L,0x5239L,0L,0x6FA9L,0L},{0L,0x5239L,0L,0x6FA9L,0L},{0L,0x5239L,0L,0x6FA9L,0L}},{{0L,0x5239L,0L,0x6FA9L,0L},{0L,0x5239L,0L,0x6FA9L,0L},{0L,0x5239L,0L,0x6FA9L,0L},{0L,0x5239L,0L,0x6FA9L,0L},{0L,0x5239L,0L,0x6FA9L,0L},{0L,0x5239L,0L,0x6FA9L,0L}},{{0L,0x5239L,0L,0x6FA9L,0L},{0L,0x5239L,0L,0x6FA9L,0L},{0L,0x5239L,0L,0x6FA9L,0L},{0L,0x5239L,0L,0x6FA9L,0L},{0L,0x5239L,0L,0x6FA9L,0L},{0L,0x5239L,0L,0x6FA9L,0L}},{{0L,0x5239L,0L,0x6FA9L,0L},{0L,0x5239L,0L,0x6FA9L,0L},{0L,0x5239L,0L,0x6FA9L,0L},{0L,0x5239L,0L,0x6FA9L,0L},{0L,0x5239L,0L,0x6FA9L,0L},{0L,0x5239L,0L,0x6FA9L,0L}},{{0L,0x5239L,0L,0x6FA9L,0L},{0L,0x5239L,0L,0x6FA9L,0L},{0L,0x5239L,0L,0x6FA9L,0L},{0L,0x5239L,0L,0x6FA9L,0L},{0L,0x5239L,0L,0x6FA9L,0L},{0L,0x5239L,0L,0x6FA9L,0L}},{{0L,0x5239L,0L,0x6FA9L,0L},{0L,0x5239L,0L,0x6FA9L,0L},{0L,0x5239L,0L,0x6FA9L,0L},{0L,0x5239L,0L,0x6FA9L,0L},{0L,0x5239L,0L,0x6FA9L,0L},{0L,0x5239L,0L,0x6FA9L,0L}},{{0L,0x5239L,0L,0x6FA9L,0L},{0L,0x5239L,0L,0x6FA9L,0L},{0L,0x5239L,0L,0x6FA9L,0L},{0L,0x5239L,0L,0x6FA9L,0L},{0L,0x5239L,0L,0x6FA9L,0L},{0L,0x5239L,0L,0x6FA9L,0L}}};
                int64_t *l_465 = (void*)0;
                int64_t *l_466 = (void*)0;
                int64_t *l_467 = (void*)0;
                int64_t *l_468[8];
                int32_t l_498 = 0x1FEA55C3L;
                int32_t l_501[9][2] = {{0x1F4DAD03L,1L},{0x1F4DAD03L,1L},{0x1F4DAD03L,1L},{0x1F4DAD03L,1L},{0x1F4DAD03L,1L},{0x1F4DAD03L,1L},{0x1F4DAD03L,1L},{0x1F4DAD03L,1L},{0x1F4DAD03L,1L}};
                int i, j, k;
                for (i = 0; i < 8; i++)
                    l_468[i] = (void*)0;
                for (p_1719->g_123.f1 = 0; (p_1719->g_123.f1 >= 20); ++p_1719->g_123.f1)
                { /* block id: 261 */
                    uint32_t l_455 = 0xA06D34FFL;
                    ++l_455;
                    if ((*p_58))
                        break;
                }
                if (((l_459 = ((0xC2661814L <= p_1719->g_458[1][1][0]) , p_57)) , ((*p_1719->g_8) |= ((((*l_255) = (safe_sub_func_int64_t_s_s(0x17C42E0BA73AC1FCL, (l_462[1][3][4] , ((((((p_57 , (l_359 = ((&p_1719->g_141 != l_465) || (&p_1719->g_179 != &p_1719->g_179)))) & l_323) & 0UL) , p_1719->g_250) >= 1UL) > p_57))))) && 0x5BAEA396L) , l_462[3][0][1]))))
                { /* block id: 269 */
                    int64_t l_473[3][1];
                    uint16_t *l_476 = (void*)0;
                    uint16_t *l_478 = &l_405;
                    int i, j;
                    for (i = 0; i < 3; i++)
                    {
                        for (j = 0; j < 1; j++)
                            l_473[i][j] = (-8L);
                    }
                    (*p_58) ^= (safe_mod_func_int8_t_s_s((((GROUP_DIVERGE(2, 1) && (safe_rshift_func_uint16_t_u_u((((l_473[0][0] | ((((((*p_1719->g_5) || (safe_div_func_uint16_t_u_u(1UL, (++(*l_478))))) , p_1719->g_481) , (((void*)0 == p_60) , (void*)0)) == (((safe_mod_func_int64_t_s_s(p_1719->g_217, (++(*p_1719->g_339)))) | ((p_1719->g_71 , &p_1719->g_420) != &p_1719->g_420)) , (void*)0)) , l_462[0][3][3])) ^ GROUP_DIVERGE(2, 1)) , 65535UL), p_57))) , (void*)0) != &p_1719->g_71), p_1719->g_208));
                    (*p_58) &= (safe_unary_minus_func_uint8_t_u(p_1719->g_192));
                }
                else
                { /* block id: 274 */
                    int16_t *l_489 = &p_1719->g_425.f1;
                    int32_t l_494 = 0x5CEA7F28L;
                    union U1 *l_495 = &p_1719->g_318;
                    int32_t l_497 = 0L;
                    int32_t l_502 = 0x5E5C8572L;
                    int32_t l_504[8][8][4] = {{{0L,2L,(-10L),0x13768723L},{0L,2L,(-10L),0x13768723L},{0L,2L,(-10L),0x13768723L},{0L,2L,(-10L),0x13768723L},{0L,2L,(-10L),0x13768723L},{0L,2L,(-10L),0x13768723L},{0L,2L,(-10L),0x13768723L},{0L,2L,(-10L),0x13768723L}},{{0L,2L,(-10L),0x13768723L},{0L,2L,(-10L),0x13768723L},{0L,2L,(-10L),0x13768723L},{0L,2L,(-10L),0x13768723L},{0L,2L,(-10L),0x13768723L},{0L,2L,(-10L),0x13768723L},{0L,2L,(-10L),0x13768723L},{0L,2L,(-10L),0x13768723L}},{{0L,2L,(-10L),0x13768723L},{0L,2L,(-10L),0x13768723L},{0L,2L,(-10L),0x13768723L},{0L,2L,(-10L),0x13768723L},{0L,2L,(-10L),0x13768723L},{0L,2L,(-10L),0x13768723L},{0L,2L,(-10L),0x13768723L},{0L,2L,(-10L),0x13768723L}},{{0L,2L,(-10L),0x13768723L},{0L,2L,(-10L),0x13768723L},{0L,2L,(-10L),0x13768723L},{0L,2L,(-10L),0x13768723L},{0L,2L,(-10L),0x13768723L},{0L,2L,(-10L),0x13768723L},{0L,2L,(-10L),0x13768723L},{0L,2L,(-10L),0x13768723L}},{{0L,2L,(-10L),0x13768723L},{0L,2L,(-10L),0x13768723L},{0L,2L,(-10L),0x13768723L},{0L,2L,(-10L),0x13768723L},{0L,2L,(-10L),0x13768723L},{0L,2L,(-10L),0x13768723L},{0L,2L,(-10L),0x13768723L},{0L,2L,(-10L),0x13768723L}},{{0L,2L,(-10L),0x13768723L},{0L,2L,(-10L),0x13768723L},{0L,2L,(-10L),0x13768723L},{0L,2L,(-10L),0x13768723L},{0L,2L,(-10L),0x13768723L},{0L,2L,(-10L),0x13768723L},{0L,2L,(-10L),0x13768723L},{0L,2L,(-10L),0x13768723L}},{{0L,2L,(-10L),0x13768723L},{0L,2L,(-10L),0x13768723L},{0L,2L,(-10L),0x13768723L},{0L,2L,(-10L),0x13768723L},{0L,2L,(-10L),0x13768723L},{0L,2L,(-10L),0x13768723L},{0L,2L,(-10L),0x13768723L},{0L,2L,(-10L),0x13768723L}},{{0L,2L,(-10L),0x13768723L},{0L,2L,(-10L),0x13768723L},{0L,2L,(-10L),0x13768723L},{0L,2L,(-10L),0x13768723L},{0L,2L,(-10L),0x13768723L},{0L,2L,(-10L),0x13768723L},{0L,2L,(-10L),0x13768723L},{0L,2L,(-10L),0x13768723L}}};
                    int i, j, k;
                    for (p_1719->g_250 = (-6); (p_1719->g_250 >= 19); p_1719->g_250 = safe_add_func_int16_t_s_s(p_1719->g_250, 1))
                    { /* block id: 277 */
                        int16_t **l_490 = (void*)0;
                        int16_t **l_491 = (void*)0;
                        int16_t **l_492 = (void*)0;
                        int16_t **l_493 = &l_251;
                        union U1 **l_496 = &l_495;
                        int32_t l_499 = 0x44401F76L;
                        int32_t l_500 = 3L;
                        int32_t l_503 = 0L;
                        l_494 = (((*l_255) &= 0UL) && (((p_1719->g_143[0][4] , l_489) != ((*l_493) = &p_1719->g_458[0][0][0])) , (-1L)));
                        (*l_496) = l_495;
                        --l_505;
                    }
                    for (l_405 = 2; (l_405 <= 9); l_405 += 1)
                    { /* block id: 286 */
                        return p_1719->g_481;
                    }
                }
            }
            else
            { /* block id: 290 */
                int32_t **l_508 = (void*)0;
                uint16_t *l_516 = &l_361;
                int64_t *l_517 = (void*)0;
                int64_t *l_518 = &p_1719->g_143[0][7];
                (*p_1719->g_509) = p_56;
                (*p_58) |= ((safe_mul_func_uint16_t_u_u((((safe_sub_func_uint64_t_u_u((((*l_518) = (safe_rshift_func_uint16_t_u_s(((*l_516) ^= p_1719->g_186), 9))) , FAKE_DIVERGE(p_1719->global_0_offset, get_global_id(0), 10)), ((void*)0 != p_56))) ^ p_59) < (safe_rshift_func_uint16_t_u_s(p_1719->g_2, (safe_div_func_uint16_t_u_u((p_1719->g_73 , (safe_sub_func_uint8_t_u_u(p_1719->g_208, p_57))), l_336[6][2][7]))))), GROUP_DIVERGE(1, 1))) > p_57);
                if ((*p_58))
                { /* block id: 295 */
                    uint8_t *l_525[2];
                    int32_t *l_526 = &p_1719->g_360;
                    uint64_t ***l_532 = (void*)0;
                    uint64_t ****l_531 = &l_532;
                    int32_t l_537 = 0x3CD36688L;
                    int i;
                    for (i = 0; i < 2; i++)
                        l_525[i] = &p_1719->g_259;
                    l_477 = (((*l_526) = (l_525[0] == (void*)0)) , (!(!(((safe_rshift_func_int16_t_s_u(((((p_57 > (p_1719->g_143[1][0] , (safe_sub_func_uint32_t_u_u((1L & ((((((((*l_531) = &p_1719->g_338) != (l_534 = l_533)) , ((((+(safe_add_func_uint16_t_u_u((((l_537 && (p_1719->g_203 , p_57)) && 0UL) , 0UL), l_359))) > 4294967290UL) || 0UL) >= p_57)) < p_57) == l_477) & l_459) > 0x2152780BD9DA5B04L)), l_537)))) && 0x4805DFEAL) | p_57) , p_57), 5)) , 1UL) | p_59))));
                }
                else
                { /* block id: 300 */
                    for (l_302.f0 = 0; (l_302.f0 != (-26)); --l_302.f0)
                    { /* block id: 303 */
                        union U1 ***l_542 = &l_540;
                        (*l_542) = l_540;
                        return p_1719->g_543;
                    }
                }
                for (l_317 = 0; l_317 < 2; l_317 += 1)
                {
                    for (l_289 = 0; l_289 < 8; l_289 += 1)
                    {
                        p_1719->g_143[l_317][l_289] = 0x485FC86E7EE0ABC0L;
                    }
                }
            }
            (*p_1719->g_386) = (((p_59 && ((safe_mul_func_uint8_t_u_u(255UL, (safe_sub_func_uint32_t_u_u(((0x453876139685EDD1L && l_548) || (l_477 = ((-8L) | p_57))), (safe_div_func_int32_t_s_s((p_1719->g_219 <= ((void*)0 != p_58)), (*p_58))))))) ^ l_551)) != p_59) , p_58);
        }
        else
        { /* block id: 312 */
            uint16_t l_575 = 0xF80FL;
            uint64_t ***l_596 = &p_1719->g_338;
            int32_t l_599[1];
            uint32_t *l_621 = &p_1719->g_316;
            uint16_t l_642 = 65535UL;
            int i;
            for (i = 0; i < 1; i++)
                l_599[i] = 0x29B32C14L;
lbl_648:
            for (l_258 = (-30); (l_258 == 14); l_258 = safe_add_func_int64_t_s_s(l_258, 4))
            { /* block id: 315 */
                int32_t **l_555 = &l_228[3][1];
                (*l_555) = (void*)0;
                (*l_555) = (void*)0;
                for (p_57 = 7; (p_57 != 32); p_57++)
                { /* block id: 320 */
                    if (p_1719->g_259)
                        goto lbl_558;
                    if ((*p_58))
                        continue;
                }
            }
            for (p_1719->g_123.f0 = 20; (p_1719->g_123.f0 <= (-9)); p_1719->g_123.f0 = safe_sub_func_uint64_t_u_u(p_1719->g_123.f0, 9))
            { /* block id: 327 */
                union U1 *l_561 = &p_1719->g_543;
                uint32_t **l_568[1][3];
                int32_t l_582[4][5][5] = {{{8L,8L,8L,8L,8L},{8L,8L,8L,8L,8L},{8L,8L,8L,8L,8L},{8L,8L,8L,8L,8L},{8L,8L,8L,8L,8L}},{{8L,8L,8L,8L,8L},{8L,8L,8L,8L,8L},{8L,8L,8L,8L,8L},{8L,8L,8L,8L,8L},{8L,8L,8L,8L,8L}},{{8L,8L,8L,8L,8L},{8L,8L,8L,8L,8L},{8L,8L,8L,8L,8L},{8L,8L,8L,8L,8L},{8L,8L,8L,8L,8L}},{{8L,8L,8L,8L,8L},{8L,8L,8L,8L,8L},{8L,8L,8L,8L,8L},{8L,8L,8L,8L,8L},{8L,8L,8L,8L,8L}}};
                int32_t l_583 = 2L;
                union U1 ***l_622 = &l_540;
                uint8_t l_626[7];
                struct S0 ***l_629 = &l_627;
                uint16_t *l_643 = &l_642;
                uint64_t l_645 = 0x00E10D5725F64369L;
                int i, j, k;
                for (i = 0; i < 1; i++)
                {
                    for (j = 0; j < 3; j++)
                        l_568[i][j] = &p_1719->g_424;
                }
                for (i = 0; i < 7; i++)
                    l_626[i] = 0x91L;
                (*l_540) = l_561;
                for (p_1719->g_179 = 0; (p_1719->g_179 != (-9)); --p_1719->g_179)
                { /* block id: 331 */
                    uint8_t l_580 = 1UL;
                    int32_t l_584 = (-1L);
                    uint16_t *l_597[8];
                    int64_t *l_598[4][1][4] = {{{&p_1719->g_143[0][7],&l_581,&l_581,&p_1719->g_143[0][7]}},{{&p_1719->g_143[0][7],&l_581,&l_581,&p_1719->g_143[0][7]}},{{&p_1719->g_143[0][7],&l_581,&l_581,&p_1719->g_143[0][7]}},{{&p_1719->g_143[0][7],&l_581,&l_581,&p_1719->g_143[0][7]}}};
                    int32_t l_603 = 1L;
                    int32_t l_606[6] = {0x4D773557L,0x3275AA34L,0x4D773557L,0x4D773557L,0x3275AA34L,0x4D773557L};
                    int i, j, k;
                    for (i = 0; i < 8; i++)
                        l_597[i] = &l_361;
                    l_584 &= ((*p_58) = (safe_mod_func_uint32_t_u_u((0L <= ((safe_sub_func_int32_t_s_s(((void*)0 == l_568[0][1]), (safe_div_func_uint32_t_u_u((((safe_mod_func_int32_t_s_s((safe_sub_func_uint32_t_u_u((((l_582[2][2][0] = (((p_1719->g_123.f2 |= (((((*p_58) < l_575) & ((((!((safe_mod_func_int32_t_s_s(l_575, (((*p_1719->g_339) = (l_359 = 1UL)) ^ ((safe_lshift_func_int16_t_s_u(1L, 2)) || (l_580 , 0x7452C394L))))) <= p_1719->g_229)) , p_57) , 0x73EA581691E9527BL) && l_581)) || 0L) | p_1719->g_208)) , l_580) & (*p_58))) && p_57) || p_57), GROUP_DIVERGE(0, 1))), l_583)) & 0xB69FDABE51152EC2L) && l_582[2][2][0]), 0x68E0E5DFL)))) , p_59)), 3L)));
                    if (((*p_58) = (0x5058L < (((safe_mul_func_int16_t_s_s(p_59, (safe_mod_func_int64_t_s_s(p_1719->g_123.f1, ((*p_1719->g_339) , (l_599[0] |= (l_589 & (l_359 = (safe_mod_func_uint8_t_u_u((5UL == (((safe_lshift_func_int8_t_s_u(((safe_sub_func_int64_t_s_s((l_596 == ((1UL != ((*l_251) = p_1719->g_6)) , (void*)0)), FAKE_DIVERGE(p_1719->local_0_offset, get_local_id(0), 10))) , 1L), 6)) , &p_1719->g_82) == &l_228[0][2])), l_582[1][1][1])))))))))) < p_57) , l_589))))
                    { /* block id: 342 */
                        int8_t l_600 = 0x49L;
                        int64_t l_602 = 0x5D1885BECD53A441L;
                        int32_t l_604 = 3L;
                        int32_t l_605[8] = {(-1L),0x0959C6D8L,(-1L),(-1L),0x0959C6D8L,(-1L),(-1L),0x0959C6D8L};
                        int i;
                        l_607++;
                    }
                    else
                    { /* block id: 344 */
                        int32_t **l_610 = &p_1719->g_283;
                        int16_t l_616[6][10][4] = {{{0x7252L,0x72EEL,0x4299L,0x72EEL},{0x7252L,0x72EEL,0x4299L,0x72EEL},{0x7252L,0x72EEL,0x4299L,0x72EEL},{0x7252L,0x72EEL,0x4299L,0x72EEL},{0x7252L,0x72EEL,0x4299L,0x72EEL},{0x7252L,0x72EEL,0x4299L,0x72EEL},{0x7252L,0x72EEL,0x4299L,0x72EEL},{0x7252L,0x72EEL,0x4299L,0x72EEL},{0x7252L,0x72EEL,0x4299L,0x72EEL},{0x7252L,0x72EEL,0x4299L,0x72EEL}},{{0x7252L,0x72EEL,0x4299L,0x72EEL},{0x7252L,0x72EEL,0x4299L,0x72EEL},{0x7252L,0x72EEL,0x4299L,0x72EEL},{0x7252L,0x72EEL,0x4299L,0x72EEL},{0x7252L,0x72EEL,0x4299L,0x72EEL},{0x7252L,0x72EEL,0x4299L,0x72EEL},{0x7252L,0x72EEL,0x4299L,0x72EEL},{0x7252L,0x72EEL,0x4299L,0x72EEL},{0x7252L,0x72EEL,0x4299L,0x72EEL},{0x7252L,0x72EEL,0x4299L,0x72EEL}},{{0x7252L,0x72EEL,0x4299L,0x72EEL},{0x7252L,0x72EEL,0x4299L,0x72EEL},{0x7252L,0x72EEL,0x4299L,0x72EEL},{0x7252L,0x72EEL,0x4299L,0x72EEL},{0x7252L,0x72EEL,0x4299L,0x72EEL},{0x7252L,0x72EEL,0x4299L,0x72EEL},{0x7252L,0x72EEL,0x4299L,0x72EEL},{0x7252L,0x72EEL,0x4299L,0x72EEL},{0x7252L,0x72EEL,0x4299L,0x72EEL},{0x7252L,0x72EEL,0x4299L,0x72EEL}},{{0x7252L,0x72EEL,0x4299L,0x72EEL},{0x7252L,0x72EEL,0x4299L,0x72EEL},{0x7252L,0x72EEL,0x4299L,0x72EEL},{0x7252L,0x72EEL,0x4299L,0x72EEL},{0x7252L,0x72EEL,0x4299L,0x72EEL},{0x7252L,0x72EEL,0x4299L,0x72EEL},{0x7252L,0x72EEL,0x4299L,0x72EEL},{0x7252L,0x72EEL,0x4299L,0x72EEL},{0x7252L,0x72EEL,0x4299L,0x72EEL},{0x7252L,0x72EEL,0x4299L,0x72EEL}},{{0x7252L,0x72EEL,0x4299L,0x72EEL},{0x7252L,0x72EEL,0x4299L,0x72EEL},{0x7252L,0x72EEL,0x4299L,0x72EEL},{0x7252L,0x72EEL,0x4299L,0x72EEL},{0x7252L,0x72EEL,0x4299L,0x72EEL},{0x7252L,0x72EEL,0x4299L,0x72EEL},{0x7252L,0x72EEL,0x4299L,0x72EEL},{0x7252L,0x72EEL,0x4299L,0x72EEL},{0x7252L,0x72EEL,0x4299L,0x72EEL},{0x7252L,0x72EEL,0x4299L,0x72EEL}},{{0x7252L,0x72EEL,0x4299L,0x72EEL},{0x7252L,0x72EEL,0x4299L,0x72EEL},{0x7252L,0x72EEL,0x4299L,0x72EEL},{0x7252L,0x72EEL,0x4299L,0x72EEL},{0x7252L,0x72EEL,0x4299L,0x72EEL},{0x7252L,0x72EEL,0x4299L,0x72EEL},{0x7252L,0x72EEL,0x4299L,0x72EEL},{0x7252L,0x72EEL,0x4299L,0x72EEL},{0x7252L,0x72EEL,0x4299L,0x72EEL},{0x7252L,0x72EEL,0x4299L,0x72EEL}}};
                        int i, j, k;
                        (*l_610) = &l_582[2][2][0];
                        (*p_1719->g_82) |= ((*p_1719->g_283) |= ((l_611 == (safe_lshift_func_int16_t_s_u(p_1719->g_420, ((safe_lshift_func_int16_t_s_s(p_1719->g_123.f0, 12)) != l_616[0][4][0])))) , ((safe_rshift_func_int16_t_s_s((((p_1719->g_425.f1 && (l_575 ^ (((safe_rshift_func_int16_t_s_u((l_621 == p_56), 4)) , l_622) == l_623[1][3][1]))) >= p_1719->g_426) >= p_57), p_1719->g_231)) <= l_626[2])));
                    }
                    if ((*p_58))
                        break;
                    l_599[0] = (*p_1719->g_82);
                }
                (*p_58) = ((((((*l_629) = l_627) != &l_414) , (safe_sub_func_uint64_t_u_u((p_1719->g_230[0] , (((*p_1719->g_8) , l_583) & (-1L))), (((((*l_249) |= ((safe_lshift_func_int16_t_s_u(((l_599[0] || (safe_lshift_func_int8_t_s_u((safe_mul_func_int8_t_s_s(((((!l_582[2][2][0]) , (safe_div_func_uint16_t_u_u(((*l_643) = ((safe_lshift_func_uint16_t_u_u(p_1719->g_425.f1, l_611)) && l_642)), 0x16F4L))) , (void*)0) == p_58), l_359)), 5))) > p_57), p_1719->g_248)) ^ l_599[0])) <= p_57) <= p_57) || GROUP_DIVERGE(1, 1))))) | (*p_1719->g_339)) ^ p_59);
                ++l_645;
            }
            if (p_1719->g_73)
                goto lbl_648;
        }
        if (p_1719->g_123.f1)
            goto lbl_558;
        l_657 &= (safe_sub_func_int64_t_s_s(((safe_add_func_uint32_t_u_u(((p_57 ^ l_438) || ((safe_mod_func_uint16_t_u_u((safe_div_func_int16_t_s_s(0x6C2DL, (l_336[6][2][7] = p_1719->g_2))), (((p_1719->g_143[0][7] , 18446744073709551608UL) & ((0xAEL & 0UL) , (((FAKE_DIVERGE(p_1719->local_2_offset, get_local_id(2), 10) , (l_627 = &l_628)) == &l_628) , (*p_1719->g_339)))) | 0x0746E9C816AD29C3L))) > p_59)), (*p_58))) ^ p_1719->g_425.f1), l_601[5]));
    }
    return (*l_625);
}


/* ------------------------------------------ */
/* 
 * reads : p_1719->g_9 p_1719->g_8 p_1719->g_73 p_1719->g_82 p_1719->g_83 p_1719->g_71 p_1719->g_6 p_1719->g_79 p_1719->g_113 p_1719->g_10 p_1719->g_2 p_1719->g_123 p_1719->g_124 p_1719->g_141 p_1719->g_143 p_1719->g_5 p_1719->g_181 p_1719->g_186 p_1719->g_192 p_1719->g_203 p_1719->g_179 p_1719->g_212 p_1719->g_220
 * writes: p_1719->g_9 p_1719->g_73 p_1719->g_83 p_1719->g_113 p_1719->g_79 p_1719->g_71 p_1719->g_8 p_1719->g_123 p_1719->g_141 p_1719->g_143 p_1719->g_10 p_1719->g_179 p_1719->g_181 p_1719->g_192 p_1719->g_208 p_1719->g_212 p_1719->g_220
 */
int32_t * func_61(int8_t * p_62, int8_t * p_63, uint32_t ** p_64, int8_t * p_65, struct S2 * p_1719)
{ /* block id: 21 */
    int8_t l_81[5][1];
    int32_t *l_85[6][5][6] = {{{&p_1719->g_83,(void*)0,&p_1719->g_83,(void*)0,&p_1719->g_9,&p_1719->g_83},{&p_1719->g_83,(void*)0,&p_1719->g_83,(void*)0,&p_1719->g_9,&p_1719->g_83},{&p_1719->g_83,(void*)0,&p_1719->g_83,(void*)0,&p_1719->g_9,&p_1719->g_83},{&p_1719->g_83,(void*)0,&p_1719->g_83,(void*)0,&p_1719->g_9,&p_1719->g_83},{&p_1719->g_83,(void*)0,&p_1719->g_83,(void*)0,&p_1719->g_9,&p_1719->g_83}},{{&p_1719->g_83,(void*)0,&p_1719->g_83,(void*)0,&p_1719->g_9,&p_1719->g_83},{&p_1719->g_83,(void*)0,&p_1719->g_83,(void*)0,&p_1719->g_9,&p_1719->g_83},{&p_1719->g_83,(void*)0,&p_1719->g_83,(void*)0,&p_1719->g_9,&p_1719->g_83},{&p_1719->g_83,(void*)0,&p_1719->g_83,(void*)0,&p_1719->g_9,&p_1719->g_83},{&p_1719->g_83,(void*)0,&p_1719->g_83,(void*)0,&p_1719->g_9,&p_1719->g_83}},{{&p_1719->g_83,(void*)0,&p_1719->g_83,(void*)0,&p_1719->g_9,&p_1719->g_83},{&p_1719->g_83,(void*)0,&p_1719->g_83,(void*)0,&p_1719->g_9,&p_1719->g_83},{&p_1719->g_83,(void*)0,&p_1719->g_83,(void*)0,&p_1719->g_9,&p_1719->g_83},{&p_1719->g_83,(void*)0,&p_1719->g_83,(void*)0,&p_1719->g_9,&p_1719->g_83},{&p_1719->g_83,(void*)0,&p_1719->g_83,(void*)0,&p_1719->g_9,&p_1719->g_83}},{{&p_1719->g_83,(void*)0,&p_1719->g_83,(void*)0,&p_1719->g_9,&p_1719->g_83},{&p_1719->g_83,(void*)0,&p_1719->g_83,(void*)0,&p_1719->g_9,&p_1719->g_83},{&p_1719->g_83,(void*)0,&p_1719->g_83,(void*)0,&p_1719->g_9,&p_1719->g_83},{&p_1719->g_83,(void*)0,&p_1719->g_83,(void*)0,&p_1719->g_9,&p_1719->g_83},{&p_1719->g_83,(void*)0,&p_1719->g_83,(void*)0,&p_1719->g_9,&p_1719->g_83}},{{&p_1719->g_83,(void*)0,&p_1719->g_83,(void*)0,&p_1719->g_9,&p_1719->g_83},{&p_1719->g_83,(void*)0,&p_1719->g_83,(void*)0,&p_1719->g_9,&p_1719->g_83},{&p_1719->g_83,(void*)0,&p_1719->g_83,(void*)0,&p_1719->g_9,&p_1719->g_83},{&p_1719->g_83,(void*)0,&p_1719->g_83,(void*)0,&p_1719->g_9,&p_1719->g_83},{&p_1719->g_83,(void*)0,&p_1719->g_83,(void*)0,&p_1719->g_9,&p_1719->g_83}},{{&p_1719->g_83,(void*)0,&p_1719->g_83,(void*)0,&p_1719->g_9,&p_1719->g_83},{&p_1719->g_83,(void*)0,&p_1719->g_83,(void*)0,&p_1719->g_9,&p_1719->g_83},{&p_1719->g_83,(void*)0,&p_1719->g_83,(void*)0,&p_1719->g_9,&p_1719->g_83},{&p_1719->g_83,(void*)0,&p_1719->g_83,(void*)0,&p_1719->g_9,&p_1719->g_83},{&p_1719->g_83,(void*)0,&p_1719->g_83,(void*)0,&p_1719->g_9,&p_1719->g_83}}};
    int32_t *l_98 = (void*)0;
    int32_t l_115 = 0x5BB19D54L;
    uint16_t l_134[1];
    uint32_t l_153 = 0x155C3D3CL;
    int16_t l_157 = 0x3938L;
    uint32_t l_160[3];
    int32_t l_218 = (-1L);
    int32_t l_223[6];
    uint32_t l_224 = 8UL;
    int i, j, k;
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 1; j++)
            l_81[i][j] = 9L;
    }
    for (i = 0; i < 1; i++)
        l_134[i] = 65535UL;
    for (i = 0; i < 3; i++)
        l_160[i] = 4294967295UL;
    for (i = 0; i < 6; i++)
        l_223[i] = 0x7B0E268DL;
    for (p_1719->g_9 = 0; (p_1719->g_9 <= 0); p_1719->g_9 += 1)
    { /* block id: 24 */
        if ((*p_1719->g_8))
            break;
        for (p_1719->g_73 = 0; (p_1719->g_73 <= 0); p_1719->g_73 += 1)
        { /* block id: 28 */
            int32_t *l_84[3][6][6] = {{{&p_1719->g_9,&p_1719->g_9,&p_1719->g_9,&p_1719->g_9,(void*)0,(void*)0},{&p_1719->g_9,&p_1719->g_9,&p_1719->g_9,&p_1719->g_9,(void*)0,(void*)0},{&p_1719->g_9,&p_1719->g_9,&p_1719->g_9,&p_1719->g_9,(void*)0,(void*)0},{&p_1719->g_9,&p_1719->g_9,&p_1719->g_9,&p_1719->g_9,(void*)0,(void*)0},{&p_1719->g_9,&p_1719->g_9,&p_1719->g_9,&p_1719->g_9,(void*)0,(void*)0},{&p_1719->g_9,&p_1719->g_9,&p_1719->g_9,&p_1719->g_9,(void*)0,(void*)0}},{{&p_1719->g_9,&p_1719->g_9,&p_1719->g_9,&p_1719->g_9,(void*)0,(void*)0},{&p_1719->g_9,&p_1719->g_9,&p_1719->g_9,&p_1719->g_9,(void*)0,(void*)0},{&p_1719->g_9,&p_1719->g_9,&p_1719->g_9,&p_1719->g_9,(void*)0,(void*)0},{&p_1719->g_9,&p_1719->g_9,&p_1719->g_9,&p_1719->g_9,(void*)0,(void*)0},{&p_1719->g_9,&p_1719->g_9,&p_1719->g_9,&p_1719->g_9,(void*)0,(void*)0},{&p_1719->g_9,&p_1719->g_9,&p_1719->g_9,&p_1719->g_9,(void*)0,(void*)0}},{{&p_1719->g_9,&p_1719->g_9,&p_1719->g_9,&p_1719->g_9,(void*)0,(void*)0},{&p_1719->g_9,&p_1719->g_9,&p_1719->g_9,&p_1719->g_9,(void*)0,(void*)0},{&p_1719->g_9,&p_1719->g_9,&p_1719->g_9,&p_1719->g_9,(void*)0,(void*)0},{&p_1719->g_9,&p_1719->g_9,&p_1719->g_9,&p_1719->g_9,(void*)0,(void*)0},{&p_1719->g_9,&p_1719->g_9,&p_1719->g_9,&p_1719->g_9,(void*)0,(void*)0},{&p_1719->g_9,&p_1719->g_9,&p_1719->g_9,&p_1719->g_9,(void*)0,(void*)0}}};
            int i, j, k;
            (*p_1719->g_82) &= (&p_1719->g_9 == (void*)0);
            return l_84[1][1][5];
        }
    }
    if (l_81[2][0])
    { /* block id: 33 */
        return l_85[1][4][5];
    }
    else
    { /* block id: 35 */
        uint8_t l_86[2][5] = {{0x5AL,0x5AL,0x5AL,0x5AL,0x5AL},{0x5AL,0x5AL,0x5AL,0x5AL,0x5AL}};
        int32_t **l_97[5][3] = {{&l_85[1][4][5],&l_85[1][4][5],&l_85[1][4][5]},{&l_85[1][4][5],&l_85[1][4][5],&l_85[1][4][5]},{&l_85[1][4][5],&l_85[1][4][5],&l_85[1][4][5]},{&l_85[1][4][5],&l_85[1][4][5],&l_85[1][4][5]},{&l_85[1][4][5],&l_85[1][4][5],&l_85[1][4][5]}};
        int8_t *l_107 = &l_81[2][0];
        int16_t *l_112 = &p_1719->g_113[0];
        int32_t l_114 = 0x3ABF7BAEL;
        int32_t *l_156 = &p_1719->g_123.f0;
        int16_t l_183 = 1L;
        uint8_t l_184 = 0x96L;
        int i, j;
        ++l_86[1][0];
        for (p_1719->g_83 = 0; (p_1719->g_83 >= 10); p_1719->g_83 = safe_add_func_int8_t_s_s(p_1719->g_83, 1))
        { /* block id: 39 */
            return &p_1719->g_83;
        }
lbl_188:
        if (((safe_sub_func_int8_t_s_s((p_65 == &p_1719->g_6), ((safe_add_func_uint8_t_u_u((safe_sub_func_int64_t_s_s(((((l_85[1][4][5] = &p_1719->g_83) == l_98) != ((safe_unary_minus_func_uint64_t_u((((safe_unary_minus_func_int32_t_s(((safe_mod_func_uint16_t_u_u((p_1719->g_71 && (safe_mod_func_int32_t_s_s((safe_rshift_func_int16_t_s_s((((((*l_107) = 0L) | (*p_62)) | ((*l_112) ^= (p_1719->g_73 <= (safe_lshift_func_uint8_t_u_s((((safe_mul_func_int16_t_s_s(((*p_64) != (void*)0), GROUP_DIVERGE(0, 1))) >= p_1719->g_83) >= (**p_64)), 0))))) == p_1719->g_73), l_114)), (*p_1719->g_10)))), 0xE5F8L)) & p_1719->g_79))) <= l_115) || 0x7542L))) >= p_1719->g_73)) < p_1719->g_71), l_115)), (*p_62))) < p_1719->g_79))) | p_1719->g_2))
        { /* block id: 45 */
            (*p_1719->g_82) = 1L;
            for (l_114 = 11; (l_114 <= 5); l_114 = safe_sub_func_int8_t_s_s(l_114, 1))
            { /* block id: 49 */
                int32_t *l_120 = &p_1719->g_83;
                for (l_115 = 0; (l_115 != (-13)); l_115 = safe_sub_func_int64_t_s_s(l_115, 3))
                { /* block id: 52 */
                    return l_120;
                }
            }
            for (p_1719->g_79 = 0; (p_1719->g_79 <= 2); p_1719->g_79 += 1)
            { /* block id: 58 */
                uint32_t l_121 = 0x3F9E4261L;
                int32_t *l_122 = &p_1719->g_9;
                (*p_1719->g_8) |= l_121;
                for (l_114 = 2; (l_114 >= 0); l_114 -= 1)
                { /* block id: 62 */
                    for (p_1719->g_71 = 0; (p_1719->g_71 <= 2); p_1719->g_71 += 1)
                    { /* block id: 65 */
                        int i, j;
                        if (l_121)
                            break;
                        p_1719->g_8 = l_122;
                    }
                    return &p_1719->g_83;
                }
                (*p_1719->g_124) = p_1719->g_123;
                for (p_1719->g_123.f2 = 2; (p_1719->g_123.f2 >= 0); p_1719->g_123.f2 -= 1)
                { /* block id: 74 */
                    int i, j;
                    if ((*p_1719->g_8))
                        break;
                }
            }
        }
        else
        { /* block id: 78 */
            uint32_t *l_131 = (void*)0;
            uint32_t **l_130[9];
            int32_t l_132 = 0L;
            struct S0 *l_148 = &p_1719->g_123;
            int32_t l_149[5][6] = {{0x3FCC9EADL,(-1L),0x3FCC9EADL,0x3FCC9EADL,(-1L),0x3FCC9EADL},{0x3FCC9EADL,(-1L),0x3FCC9EADL,0x3FCC9EADL,(-1L),0x3FCC9EADL},{0x3FCC9EADL,(-1L),0x3FCC9EADL,0x3FCC9EADL,(-1L),0x3FCC9EADL},{0x3FCC9EADL,(-1L),0x3FCC9EADL,0x3FCC9EADL,(-1L),0x3FCC9EADL},{0x3FCC9EADL,(-1L),0x3FCC9EADL,0x3FCC9EADL,(-1L),0x3FCC9EADL}};
            int32_t l_150 = (-2L);
            int i, j;
            for (i = 0; i < 9; i++)
                l_130[i] = &l_131;
            for (p_1719->g_123.f0 = (-15); (p_1719->g_123.f0 > 18); p_1719->g_123.f0++)
            { /* block id: 81 */
                int32_t *l_133 = (void*)0;
                uint8_t *l_137 = &l_86[0][2];
                int64_t *l_140 = &p_1719->g_141;
                int64_t *l_142 = &p_1719->g_143[0][7];
                int32_t l_151 = 0x4198D20EL;
                int32_t l_152[2];
                int i;
                for (i = 0; i < 2; i++)
                    l_152[i] = 0x51C96A08L;
                for (p_1719->g_73 = 0; (p_1719->g_73 != 49); p_1719->g_73++)
                { /* block id: 84 */
                    uint8_t l_129 = 0xB7L;
                    l_129 = (*p_1719->g_82);
                    l_132 |= (p_1719->g_2 >= ((l_130[5] = p_64) == (void*)0));
                }
                for (p_1719->g_9 = 1; (p_1719->g_9 >= 0); p_1719->g_9 -= 1)
                { /* block id: 91 */
                    l_98 = l_133;
                }
                l_150 &= ((l_132 ^= ((((0x25C1L > (((+(l_134[0] != (++(**p_64)))) && (--(*l_137))) == (((*l_142) &= ((*l_140) ^= 0x7D3603FA0232F7DBL)) & p_1719->g_2))) , ((safe_div_func_uint16_t_u_u(p_1719->g_6, 0xC64DL)) , (*p_63))) , &p_1719->g_71) == ((safe_mod_func_uint64_t_u_u((((*p_1719->g_8) , l_148) == l_148), 1UL)) , (void*)0))) < l_149[3][5]);
                ++l_153;
            }
            l_85[2][1][3] = l_156;
            (*p_1719->g_10) &= ((*l_156) != l_149[3][5]);
            for (p_1719->g_73 = 0; (p_1719->g_73 <= 1); p_1719->g_73 += 1)
            { /* block id: 106 */
                for (p_1719->g_123.f1 = 0; (p_1719->g_123.f1 <= 1); p_1719->g_123.f1 += 1)
                { /* block id: 109 */
                    int8_t l_158 = 0L;
                    int32_t l_159 = 0L;
                    int32_t **l_165 = (void*)0;
                    ++l_160[0];
                    for (p_1719->g_123.f0 = 0; (p_1719->g_123.f0 <= 1); p_1719->g_123.f0 += 1)
                    { /* block id: 113 */
                        int i, j;
                        l_85[5][2][4] = &l_159;
                        (*p_1719->g_82) &= (safe_div_func_int32_t_s_s(((void*)0 == l_165), l_86[p_1719->g_123.f1][(p_1719->g_123.f0 + 3)]));
                    }
                    return &p_1719->g_83;
                }
                p_1719->g_10 = &p_1719->g_83;
                for (l_150 = 1; (l_150 >= 0); l_150 -= 1)
                { /* block id: 122 */
                    int64_t *l_178 = &p_1719->g_179;
                    uint64_t *l_180 = &p_1719->g_181;
                    int32_t l_182 = 1L;
                    int32_t ***l_185 = &l_97[1][1];
                    uint16_t *l_187 = &l_134[0];
                    int i, j;
                    p_1719->g_10 = ((((*l_187) = ((((((*l_185) = ((((safe_lshift_func_int16_t_s_u(((safe_mul_func_uint8_t_u_u(((((((l_86[l_150][(p_1719->g_73 + 1)] = ((((l_149[2][3] < (safe_sub_func_int8_t_s_s(0x1FL, p_1719->g_113[0]))) >= ((safe_mod_func_int16_t_s_s(0x2DBBL, ((safe_rshift_func_int8_t_s_u((*p_63), ((((((((*l_156) || ((*l_180) = (((*l_178) = (safe_mul_func_int8_t_s_s((*p_1719->g_5), 0UL))) , p_1719->g_141))) , l_182) || 0x39L) || l_149[0][1]) >= 248UL) && p_1719->g_181) > 0xEFL))) & l_183))) != p_1719->g_113[0])) | (*p_1719->g_5)) || 1L)) < (*p_62)) != p_1719->g_9) , FAKE_DIVERGE(p_1719->local_1_offset, get_local_id(1), 10)) , l_182) != GROUP_DIVERGE(1, 1)), l_184)) != FAKE_DIVERGE(p_1719->global_0_offset, get_global_id(0), 10)), 8)) , 0x6F1BL) || 0x1BD9L) , (void*)0)) == &p_1719->g_82) > (*p_1719->g_82)) <= p_1719->g_186) , 65531UL)) , p_1719->g_123.f2) , &p_1719->g_9);
                }
                if (p_1719->g_123.f0)
                    goto lbl_188;
            }
        }
        for (p_1719->g_181 = (-13); (p_1719->g_181 > 43); p_1719->g_181++)
        { /* block id: 135 */
            uint64_t *l_191 = &p_1719->g_192;
            uint8_t *l_204 = &l_86[1][2];
            int32_t *l_207[6] = {&p_1719->g_208,&p_1719->g_208,&p_1719->g_208,&p_1719->g_208,&p_1719->g_208,&p_1719->g_208};
            int32_t l_209 = 0x275236C3L;
            struct S0 *l_210 = &p_1719->g_123;
            uint8_t *l_211[1][1][3];
            int32_t l_213 = 1L;
            int32_t l_215 = (-1L);
            int32_t l_216 = 1L;
            int i, j, k;
            for (i = 0; i < 1; i++)
            {
                for (j = 0; j < 1; j++)
                {
                    for (k = 0; k < 3; k++)
                        l_211[i][j][k] = &l_184;
                }
            }
            (*l_156) = (((*l_191)++) , (~(safe_add_func_int8_t_s_s((safe_div_func_uint8_t_u_u(0UL, (*l_156))), (p_1719->g_212 |= (~(safe_div_func_int32_t_s_s((safe_rshift_func_uint16_t_u_s(((*l_156) | (p_1719->g_203 , (++(*l_204)))), (((FAKE_DIVERGE(p_1719->group_2_offset, get_group_id(2), 10) <= ((~((((p_1719->g_208 = (p_1719->g_113[6] < 1L)) , (((~((*l_156) , 0x17E8B93DL)) == (l_209 ^ 0x3DF1L)) , l_210)) == (void*)0) , 0x632F4612B06F0957L)) | 18446744073709551615UL)) != 0UL) & p_1719->g_179))), p_1719->g_123.f2))))))));
            ++p_1719->g_220;
        }
    }
    l_224--;
    return &p_1719->g_9;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S2 c_1720;
    struct S2* p_1719 = &c_1720;
    struct S2 c_1721 = {
        3UL, // p_1719->g_2
        (-1L), // p_1719->g_6
        &p_1719->g_6, // p_1719->g_5
        3L, // p_1719->g_9
        &p_1719->g_9, // p_1719->g_8
        &p_1719->g_9, // p_1719->g_10
        0UL, // p_1719->g_13
        (void*)0, // p_1719->g_20
        65532UL, // p_1719->g_71
        0x6182L, // p_1719->g_73
        0UL, // p_1719->g_79
        1L, // p_1719->g_83
        &p_1719->g_83, // p_1719->g_82
        {0x7410L,0x7410L,0x7410L,0x7410L,0x7410L,0x7410L,0x7410L,0x7410L,0x7410L,0x7410L}, // p_1719->g_113
        {0x0ADD41A2L,-5L,1L}, // p_1719->g_123
        &p_1719->g_123, // p_1719->g_124
        1L, // p_1719->g_141
        {{0x43543006B1119AB3L,0x43543006B1119AB3L,0x43543006B1119AB3L,0x43543006B1119AB3L,0x43543006B1119AB3L,0x43543006B1119AB3L,0x43543006B1119AB3L,0x43543006B1119AB3L},{0x43543006B1119AB3L,0x43543006B1119AB3L,0x43543006B1119AB3L,0x43543006B1119AB3L,0x43543006B1119AB3L,0x43543006B1119AB3L,0x43543006B1119AB3L,0x43543006B1119AB3L}}, // p_1719->g_143
        6L, // p_1719->g_179
        0x9E9CF386E976ACA0L, // p_1719->g_181
        0x2A38L, // p_1719->g_186
        0xA215982DFFE489FFL, // p_1719->g_192
        {0}, // p_1719->g_203
        (-4L), // p_1719->g_208
        6L, // p_1719->g_212
        {{0x4BL,0x15L,(-1L),0x3CL,0x15L,0x3CL,(-1L),0x15L,0x4BL,0x4BL},{0x4BL,0x15L,(-1L),0x3CL,0x15L,0x3CL,(-1L),0x15L,0x4BL,0x4BL}}, // p_1719->g_214
        3L, // p_1719->g_217
        0x25D6DFA7AC640EFCL, // p_1719->g_219
        0UL, // p_1719->g_220
        0x3B8E7465EA45427EL, // p_1719->g_229
        {(-9L),(-9L),(-9L)}, // p_1719->g_230
        0x4C548D6829386120L, // p_1719->g_231
        (-1L), // p_1719->g_248
        0x36L, // p_1719->g_250
        {&p_1719->g_203.f2,&p_1719->g_203.f2,&p_1719->g_203.f2,&p_1719->g_203.f2,&p_1719->g_203.f2,&p_1719->g_203.f2,&p_1719->g_203.f2,&p_1719->g_203.f2,&p_1719->g_203.f2}, // p_1719->g_254
        2UL, // p_1719->g_259
        (void*)0, // p_1719->g_283
        {{{&p_1719->g_283,&p_1719->g_283,&p_1719->g_283},{&p_1719->g_283,&p_1719->g_283,&p_1719->g_283},{&p_1719->g_283,&p_1719->g_283,&p_1719->g_283}},{{&p_1719->g_283,&p_1719->g_283,&p_1719->g_283},{&p_1719->g_283,&p_1719->g_283,&p_1719->g_283},{&p_1719->g_283,&p_1719->g_283,&p_1719->g_283}}}, // p_1719->g_282
        {&p_1719->g_283,&p_1719->g_283,&p_1719->g_283,&p_1719->g_283,&p_1719->g_283}, // p_1719->g_308
        0x47E4C8D6L, // p_1719->g_316
        {0}, // p_1719->g_318
        &p_1719->g_231, // p_1719->g_339
        &p_1719->g_339, // p_1719->g_338
        &p_1719->g_338, // p_1719->g_337
        0x610CC388L, // p_1719->g_360
        {{(void*)0,&p_1719->g_283,(void*)0,(void*)0,&p_1719->g_283,(void*)0},{(void*)0,&p_1719->g_283,(void*)0,(void*)0,&p_1719->g_283,(void*)0},{(void*)0,&p_1719->g_283,(void*)0,(void*)0,&p_1719->g_283,(void*)0},{(void*)0,&p_1719->g_283,(void*)0,(void*)0,&p_1719->g_283,(void*)0}}, // p_1719->g_385
        &p_1719->g_283, // p_1719->g_386
        18446744073709551615UL, // p_1719->g_420
        (void*)0, // p_1719->g_424
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_1719->g_423
        {0x04D17103L,-7L,2L}, // p_1719->g_425
        4294967290UL, // p_1719->g_426
        {{{0x7856L},{0x7856L}},{{0x7856L},{0x7856L}},{{0x7856L},{0x7856L}},{{0x7856L},{0x7856L}},{{0x7856L},{0x7856L}},{{0x7856L},{0x7856L}},{{0x7856L},{0x7856L}},{{0x7856L},{0x7856L}}}, // p_1719->g_458
        {0}, // p_1719->g_481
        &p_1719->g_283, // p_1719->g_509
        {0}, // p_1719->g_543
        {{{&p_1719->g_283,&p_1719->g_283},{&p_1719->g_283,&p_1719->g_283},{&p_1719->g_283,&p_1719->g_283},{&p_1719->g_283,&p_1719->g_283},{&p_1719->g_283,&p_1719->g_283},{&p_1719->g_283,&p_1719->g_283},{&p_1719->g_283,&p_1719->g_283},{&p_1719->g_283,&p_1719->g_283},{&p_1719->g_283,&p_1719->g_283}},{{&p_1719->g_283,&p_1719->g_283},{&p_1719->g_283,&p_1719->g_283},{&p_1719->g_283,&p_1719->g_283},{&p_1719->g_283,&p_1719->g_283},{&p_1719->g_283,&p_1719->g_283},{&p_1719->g_283,&p_1719->g_283},{&p_1719->g_283,&p_1719->g_283},{&p_1719->g_283,&p_1719->g_283},{&p_1719->g_283,&p_1719->g_283}}}, // p_1719->g_552
        &p_1719->g_283, // p_1719->g_739
        &p_1719->g_123, // p_1719->g_774
        (void*)0, // p_1719->g_809
        0x346D1F148C21510EL, // p_1719->g_830
        {{{1L,(-1L),0x26L,0x31L,(-7L)},{1L,(-1L),0x26L,0x31L,(-7L)},{1L,(-1L),0x26L,0x31L,(-7L)},{1L,(-1L),0x26L,0x31L,(-7L)},{1L,(-1L),0x26L,0x31L,(-7L)}},{{1L,(-1L),0x26L,0x31L,(-7L)},{1L,(-1L),0x26L,0x31L,(-7L)},{1L,(-1L),0x26L,0x31L,(-7L)},{1L,(-1L),0x26L,0x31L,(-7L)},{1L,(-1L),0x26L,0x31L,(-7L)}},{{1L,(-1L),0x26L,0x31L,(-7L)},{1L,(-1L),0x26L,0x31L,(-7L)},{1L,(-1L),0x26L,0x31L,(-7L)},{1L,(-1L),0x26L,0x31L,(-7L)},{1L,(-1L),0x26L,0x31L,(-7L)}},{{1L,(-1L),0x26L,0x31L,(-7L)},{1L,(-1L),0x26L,0x31L,(-7L)},{1L,(-1L),0x26L,0x31L,(-7L)},{1L,(-1L),0x26L,0x31L,(-7L)},{1L,(-1L),0x26L,0x31L,(-7L)}},{{1L,(-1L),0x26L,0x31L,(-7L)},{1L,(-1L),0x26L,0x31L,(-7L)},{1L,(-1L),0x26L,0x31L,(-7L)},{1L,(-1L),0x26L,0x31L,(-7L)},{1L,(-1L),0x26L,0x31L,(-7L)}},{{1L,(-1L),0x26L,0x31L,(-7L)},{1L,(-1L),0x26L,0x31L,(-7L)},{1L,(-1L),0x26L,0x31L,(-7L)},{1L,(-1L),0x26L,0x31L,(-7L)},{1L,(-1L),0x26L,0x31L,(-7L)}},{{1L,(-1L),0x26L,0x31L,(-7L)},{1L,(-1L),0x26L,0x31L,(-7L)},{1L,(-1L),0x26L,0x31L,(-7L)},{1L,(-1L),0x26L,0x31L,(-7L)},{1L,(-1L),0x26L,0x31L,(-7L)}},{{1L,(-1L),0x26L,0x31L,(-7L)},{1L,(-1L),0x26L,0x31L,(-7L)},{1L,(-1L),0x26L,0x31L,(-7L)},{1L,(-1L),0x26L,0x31L,(-7L)},{1L,(-1L),0x26L,0x31L,(-7L)}},{{1L,(-1L),0x26L,0x31L,(-7L)},{1L,(-1L),0x26L,0x31L,(-7L)},{1L,(-1L),0x26L,0x31L,(-7L)},{1L,(-1L),0x26L,0x31L,(-7L)},{1L,(-1L),0x26L,0x31L,(-7L)}}}, // p_1719->g_845
        {{&p_1719->g_283,&p_1719->g_283,&p_1719->g_283,&p_1719->g_283,&p_1719->g_283,&p_1719->g_283,&p_1719->g_283,&p_1719->g_283},{&p_1719->g_283,&p_1719->g_283,&p_1719->g_283,&p_1719->g_283,&p_1719->g_283,&p_1719->g_283,&p_1719->g_283,&p_1719->g_283},{&p_1719->g_283,&p_1719->g_283,&p_1719->g_283,&p_1719->g_283,&p_1719->g_283,&p_1719->g_283,&p_1719->g_283,&p_1719->g_283},{&p_1719->g_283,&p_1719->g_283,&p_1719->g_283,&p_1719->g_283,&p_1719->g_283,&p_1719->g_283,&p_1719->g_283,&p_1719->g_283},{&p_1719->g_283,&p_1719->g_283,&p_1719->g_283,&p_1719->g_283,&p_1719->g_283,&p_1719->g_283,&p_1719->g_283,&p_1719->g_283},{&p_1719->g_283,&p_1719->g_283,&p_1719->g_283,&p_1719->g_283,&p_1719->g_283,&p_1719->g_283,&p_1719->g_283,&p_1719->g_283},{&p_1719->g_283,&p_1719->g_283,&p_1719->g_283,&p_1719->g_283,&p_1719->g_283,&p_1719->g_283,&p_1719->g_283,&p_1719->g_283},{&p_1719->g_283,&p_1719->g_283,&p_1719->g_283,&p_1719->g_283,&p_1719->g_283,&p_1719->g_283,&p_1719->g_283,&p_1719->g_283},{&p_1719->g_283,&p_1719->g_283,&p_1719->g_283,&p_1719->g_283,&p_1719->g_283,&p_1719->g_283,&p_1719->g_283,&p_1719->g_283}}, // p_1719->g_854
        &p_1719->g_854[6][4], // p_1719->g_853
        0xD9L, // p_1719->g_879
        {0}, // p_1719->g_936
        &p_1719->g_936, // p_1719->g_935
        {{&p_1719->g_935},{&p_1719->g_935},{&p_1719->g_935},{&p_1719->g_935},{&p_1719->g_935}}, // p_1719->g_934
        {{{0},{0},{0}},{{0},{0},{0}},{{0},{0},{0}},{{0},{0},{0}}}, // p_1719->g_978
        {0}, // p_1719->g_979
        {0}, // p_1719->g_992
        &p_1719->g_123.f2, // p_1719->g_1034
        {0}, // p_1719->g_1041
        {0}, // p_1719->g_1073
        &p_1719->g_360, // p_1719->g_1078
        &p_1719->g_123, // p_1719->g_1093
        &p_1719->g_283, // p_1719->g_1111
        {{{&p_1719->g_283,&p_1719->g_283},{&p_1719->g_283,&p_1719->g_283},{&p_1719->g_283,&p_1719->g_283},{&p_1719->g_283,&p_1719->g_283},{&p_1719->g_283,&p_1719->g_283},{&p_1719->g_283,&p_1719->g_283},{&p_1719->g_283,&p_1719->g_283}},{{&p_1719->g_283,&p_1719->g_283},{&p_1719->g_283,&p_1719->g_283},{&p_1719->g_283,&p_1719->g_283},{&p_1719->g_283,&p_1719->g_283},{&p_1719->g_283,&p_1719->g_283},{&p_1719->g_283,&p_1719->g_283},{&p_1719->g_283,&p_1719->g_283}}}, // p_1719->g_1113
        {{{&p_1719->g_425.f0,&p_1719->g_425.f2,&p_1719->g_123.f0,&p_1719->g_123.f0,&p_1719->g_123.f2,&p_1719->g_9,&p_1719->g_123.f0},{&p_1719->g_425.f0,&p_1719->g_425.f2,&p_1719->g_123.f0,&p_1719->g_123.f0,&p_1719->g_123.f2,&p_1719->g_9,&p_1719->g_123.f0},{&p_1719->g_425.f0,&p_1719->g_425.f2,&p_1719->g_123.f0,&p_1719->g_123.f0,&p_1719->g_123.f2,&p_1719->g_9,&p_1719->g_123.f0},{&p_1719->g_425.f0,&p_1719->g_425.f2,&p_1719->g_123.f0,&p_1719->g_123.f0,&p_1719->g_123.f2,&p_1719->g_9,&p_1719->g_123.f0},{&p_1719->g_425.f0,&p_1719->g_425.f2,&p_1719->g_123.f0,&p_1719->g_123.f0,&p_1719->g_123.f2,&p_1719->g_9,&p_1719->g_123.f0},{&p_1719->g_425.f0,&p_1719->g_425.f2,&p_1719->g_123.f0,&p_1719->g_123.f0,&p_1719->g_123.f2,&p_1719->g_9,&p_1719->g_123.f0},{&p_1719->g_425.f0,&p_1719->g_425.f2,&p_1719->g_123.f0,&p_1719->g_123.f0,&p_1719->g_123.f2,&p_1719->g_9,&p_1719->g_123.f0},{&p_1719->g_425.f0,&p_1719->g_425.f2,&p_1719->g_123.f0,&p_1719->g_123.f0,&p_1719->g_123.f2,&p_1719->g_9,&p_1719->g_123.f0},{&p_1719->g_425.f0,&p_1719->g_425.f2,&p_1719->g_123.f0,&p_1719->g_123.f0,&p_1719->g_123.f2,&p_1719->g_9,&p_1719->g_123.f0},{&p_1719->g_425.f0,&p_1719->g_425.f2,&p_1719->g_123.f0,&p_1719->g_123.f0,&p_1719->g_123.f2,&p_1719->g_9,&p_1719->g_123.f0}},{{&p_1719->g_425.f0,&p_1719->g_425.f2,&p_1719->g_123.f0,&p_1719->g_123.f0,&p_1719->g_123.f2,&p_1719->g_9,&p_1719->g_123.f0},{&p_1719->g_425.f0,&p_1719->g_425.f2,&p_1719->g_123.f0,&p_1719->g_123.f0,&p_1719->g_123.f2,&p_1719->g_9,&p_1719->g_123.f0},{&p_1719->g_425.f0,&p_1719->g_425.f2,&p_1719->g_123.f0,&p_1719->g_123.f0,&p_1719->g_123.f2,&p_1719->g_9,&p_1719->g_123.f0},{&p_1719->g_425.f0,&p_1719->g_425.f2,&p_1719->g_123.f0,&p_1719->g_123.f0,&p_1719->g_123.f2,&p_1719->g_9,&p_1719->g_123.f0},{&p_1719->g_425.f0,&p_1719->g_425.f2,&p_1719->g_123.f0,&p_1719->g_123.f0,&p_1719->g_123.f2,&p_1719->g_9,&p_1719->g_123.f0},{&p_1719->g_425.f0,&p_1719->g_425.f2,&p_1719->g_123.f0,&p_1719->g_123.f0,&p_1719->g_123.f2,&p_1719->g_9,&p_1719->g_123.f0},{&p_1719->g_425.f0,&p_1719->g_425.f2,&p_1719->g_123.f0,&p_1719->g_123.f0,&p_1719->g_123.f2,&p_1719->g_9,&p_1719->g_123.f0},{&p_1719->g_425.f0,&p_1719->g_425.f2,&p_1719->g_123.f0,&p_1719->g_123.f0,&p_1719->g_123.f2,&p_1719->g_9,&p_1719->g_123.f0},{&p_1719->g_425.f0,&p_1719->g_425.f2,&p_1719->g_123.f0,&p_1719->g_123.f0,&p_1719->g_123.f2,&p_1719->g_9,&p_1719->g_123.f0},{&p_1719->g_425.f0,&p_1719->g_425.f2,&p_1719->g_123.f0,&p_1719->g_123.f0,&p_1719->g_123.f2,&p_1719->g_9,&p_1719->g_123.f0}},{{&p_1719->g_425.f0,&p_1719->g_425.f2,&p_1719->g_123.f0,&p_1719->g_123.f0,&p_1719->g_123.f2,&p_1719->g_9,&p_1719->g_123.f0},{&p_1719->g_425.f0,&p_1719->g_425.f2,&p_1719->g_123.f0,&p_1719->g_123.f0,&p_1719->g_123.f2,&p_1719->g_9,&p_1719->g_123.f0},{&p_1719->g_425.f0,&p_1719->g_425.f2,&p_1719->g_123.f0,&p_1719->g_123.f0,&p_1719->g_123.f2,&p_1719->g_9,&p_1719->g_123.f0},{&p_1719->g_425.f0,&p_1719->g_425.f2,&p_1719->g_123.f0,&p_1719->g_123.f0,&p_1719->g_123.f2,&p_1719->g_9,&p_1719->g_123.f0},{&p_1719->g_425.f0,&p_1719->g_425.f2,&p_1719->g_123.f0,&p_1719->g_123.f0,&p_1719->g_123.f2,&p_1719->g_9,&p_1719->g_123.f0},{&p_1719->g_425.f0,&p_1719->g_425.f2,&p_1719->g_123.f0,&p_1719->g_123.f0,&p_1719->g_123.f2,&p_1719->g_9,&p_1719->g_123.f0},{&p_1719->g_425.f0,&p_1719->g_425.f2,&p_1719->g_123.f0,&p_1719->g_123.f0,&p_1719->g_123.f2,&p_1719->g_9,&p_1719->g_123.f0},{&p_1719->g_425.f0,&p_1719->g_425.f2,&p_1719->g_123.f0,&p_1719->g_123.f0,&p_1719->g_123.f2,&p_1719->g_9,&p_1719->g_123.f0},{&p_1719->g_425.f0,&p_1719->g_425.f2,&p_1719->g_123.f0,&p_1719->g_123.f0,&p_1719->g_123.f2,&p_1719->g_9,&p_1719->g_123.f0},{&p_1719->g_425.f0,&p_1719->g_425.f2,&p_1719->g_123.f0,&p_1719->g_123.f0,&p_1719->g_123.f2,&p_1719->g_9,&p_1719->g_123.f0}}}, // p_1719->g_1156
        {{{0},{0},{0},{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0},{0},{0},{0}},{{0},{0},{0},{0},{0},{0},{0},{0},{0}}}, // p_1719->g_1224
        0x231D9355365DD48FL, // p_1719->g_1229
        &p_1719->g_143[1][5], // p_1719->g_1239
        (void*)0, // p_1719->g_1244
        &p_1719->g_1244, // p_1719->g_1243
        (void*)0, // p_1719->g_1294
        &p_1719->g_425, // p_1719->g_1295
        1L, // p_1719->g_1334
        1UL, // p_1719->g_1362
        0x30BD1126L, // p_1719->g_1367
        0x257F1148C544D4E1L, // p_1719->g_1396
        &p_1719->g_283, // p_1719->g_1403
        (void*)0, // p_1719->g_1447
        &p_1719->g_1447, // p_1719->g_1446
        &p_1719->g_853, // p_1719->g_1487
        &p_1719->g_1487, // p_1719->g_1486
        &p_1719->g_1486, // p_1719->g_1485
        {4L,4L,4L,4L,4L,4L,4L}, // p_1719->g_1520
        4294967295UL, // p_1719->g_1526
        (void*)0, // p_1719->g_1539
        &p_1719->g_1078, // p_1719->g_1565
        18446744073709551615UL, // p_1719->g_1569
        {0}, // p_1719->g_1578
        0UL, // p_1719->g_1589
        &p_1719->g_1224[8][6], // p_1719->g_1593
        &p_1719->g_123, // p_1719->g_1625
        &p_1719->g_71, // p_1719->g_1660
        &p_1719->g_1660, // p_1719->g_1659
        {{0},{0}}, // p_1719->g_1696
        &p_1719->g_425, // p_1719->g_1704
        &p_1719->g_1704, // p_1719->g_1703
        &p_1719->g_1593, // p_1719->g_1710
        &p_1719->g_1710, // p_1719->g_1709
        0x48C042F6AD19B342L, // p_1719->g_1711
        sequence_input[get_global_id(0)], // p_1719->global_0_offset
        sequence_input[get_global_id(1)], // p_1719->global_1_offset
        sequence_input[get_global_id(2)], // p_1719->global_2_offset
        sequence_input[get_local_id(0)], // p_1719->local_0_offset
        sequence_input[get_local_id(1)], // p_1719->local_1_offset
        sequence_input[get_local_id(2)], // p_1719->local_2_offset
        sequence_input[get_group_id(0)], // p_1719->group_0_offset
        sequence_input[get_group_id(1)], // p_1719->group_1_offset
        sequence_input[get_group_id(2)], // p_1719->group_2_offset
    };
    c_1720 = c_1721;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1719);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1719->g_2, "p_1719->g_2", print_hash_value);
    transparent_crc(p_1719->g_6, "p_1719->g_6", print_hash_value);
    transparent_crc(p_1719->g_9, "p_1719->g_9", print_hash_value);
    transparent_crc(p_1719->g_13, "p_1719->g_13", print_hash_value);
    transparent_crc(p_1719->g_71, "p_1719->g_71", print_hash_value);
    transparent_crc(p_1719->g_73, "p_1719->g_73", print_hash_value);
    transparent_crc(p_1719->g_79, "p_1719->g_79", print_hash_value);
    transparent_crc(p_1719->g_83, "p_1719->g_83", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1719->g_113[i], "p_1719->g_113[i]", print_hash_value);

    }
    transparent_crc(p_1719->g_123.f0, "p_1719->g_123.f0", print_hash_value);
    transparent_crc(p_1719->g_123.f1, "p_1719->g_123.f1", print_hash_value);
    transparent_crc(p_1719->g_123.f2, "p_1719->g_123.f2", print_hash_value);
    transparent_crc(p_1719->g_141, "p_1719->g_141", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_1719->g_143[i][j], "p_1719->g_143[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1719->g_179, "p_1719->g_179", print_hash_value);
    transparent_crc(p_1719->g_181, "p_1719->g_181", print_hash_value);
    transparent_crc(p_1719->g_186, "p_1719->g_186", print_hash_value);
    transparent_crc(p_1719->g_192, "p_1719->g_192", print_hash_value);
    transparent_crc(p_1719->g_208, "p_1719->g_208", print_hash_value);
    transparent_crc(p_1719->g_212, "p_1719->g_212", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_1719->g_214[i][j], "p_1719->g_214[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1719->g_217, "p_1719->g_217", print_hash_value);
    transparent_crc(p_1719->g_219, "p_1719->g_219", print_hash_value);
    transparent_crc(p_1719->g_220, "p_1719->g_220", print_hash_value);
    transparent_crc(p_1719->g_229, "p_1719->g_229", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_1719->g_230[i], "p_1719->g_230[i]", print_hash_value);

    }
    transparent_crc(p_1719->g_231, "p_1719->g_231", print_hash_value);
    transparent_crc(p_1719->g_248, "p_1719->g_248", print_hash_value);
    transparent_crc(p_1719->g_250, "p_1719->g_250", print_hash_value);
    transparent_crc(p_1719->g_259, "p_1719->g_259", print_hash_value);
    transparent_crc(p_1719->g_316, "p_1719->g_316", print_hash_value);
    transparent_crc(p_1719->g_360, "p_1719->g_360", print_hash_value);
    transparent_crc(p_1719->g_420, "p_1719->g_420", print_hash_value);
    transparent_crc(p_1719->g_425.f0, "p_1719->g_425.f0", print_hash_value);
    transparent_crc(p_1719->g_425.f1, "p_1719->g_425.f1", print_hash_value);
    transparent_crc(p_1719->g_425.f2, "p_1719->g_425.f2", print_hash_value);
    transparent_crc(p_1719->g_426, "p_1719->g_426", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 1; k++)
            {
                transparent_crc(p_1719->g_458[i][j][k], "p_1719->g_458[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1719->g_830, "p_1719->g_830", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 5; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_1719->g_845[i][j][k], "p_1719->g_845[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1719->g_879, "p_1719->g_879", print_hash_value);
    transparent_crc(p_1719->g_1229, "p_1719->g_1229", print_hash_value);
    transparent_crc(p_1719->g_1334, "p_1719->g_1334", print_hash_value);
    transparent_crc(p_1719->g_1362, "p_1719->g_1362", print_hash_value);
    transparent_crc(p_1719->g_1367, "p_1719->g_1367", print_hash_value);
    transparent_crc(p_1719->g_1396, "p_1719->g_1396", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1719->g_1520[i], "p_1719->g_1520[i]", print_hash_value);

    }
    transparent_crc(p_1719->g_1526, "p_1719->g_1526", print_hash_value);
    transparent_crc(p_1719->g_1569, "p_1719->g_1569", print_hash_value);
    transparent_crc(p_1719->g_1589, "p_1719->g_1589", print_hash_value);
    transparent_crc(p_1719->g_1711, "p_1719->g_1711", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
