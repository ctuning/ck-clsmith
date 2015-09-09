// ---fake_divergence -g 95,80,1 -l 5,40,1
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


// Seed: 125

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   volatile int8_t  f0;
   uint32_t  f1;
   int8_t * f2;
};

union U1 {
   uint8_t  f0;
};

union U2 {
   int32_t  f0;
   int8_t * f1;
   int16_t  f2;
   uint32_t  f3;
   uint8_t  f4;
};

union U3 {
   int8_t * volatile  f0;
};

union U4 {
   volatile int16_t  f0;
   volatile uint16_t  f1;
   int8_t * volatile  f2;
};

struct S5 {
    int64_t g_11;
    int32_t g_13;
    union U1 g_14[6];
    int8_t g_39;
    int32_t g_47;
    uint32_t g_76;
    uint32_t g_85;
    int8_t *g_88;
    int8_t **g_87;
    int8_t **g_106[1][3];
    volatile uint8_t g_110;
    volatile union U3 g_123;
    int32_t g_160;
    int32_t * volatile g_159;
    uint32_t g_178;
    int16_t g_180;
    int32_t *g_198[3];
    int32_t ** volatile g_197;
    volatile union U4 g_202;
    int32_t g_214;
    int8_t g_224;
    volatile union U2 g_256;
    uint8_t g_263;
    uint64_t g_288;
    uint64_t g_292;
    uint64_t g_299;
    int32_t *g_321[4];
    volatile int32_t g_323;
    volatile int32_t *g_322;
    uint64_t g_327;
    volatile union U3 g_346[8];
    uint16_t g_354;
    int32_t g_424;
    uint16_t g_425;
    uint32_t g_427;
    int16_t g_428;
    int32_t **g_451[6];
    volatile union U4 g_470;
    int32_t **g_476[5];
    int32_t *** volatile g_475;
    volatile int16_t *g_480;
    volatile int16_t ** volatile g_479[7];
    volatile union U4 g_522;
    int8_t ***g_524;
    int8_t ****g_523;
    volatile uint16_t g_593;
    int8_t **g_633;
    volatile union U4 g_688;
    union U4 g_695;
    union U2 g_698;
    int32_t g_723[5];
    volatile uint32_t g_726;
    volatile uint32_t * volatile g_725;
    volatile uint32_t * volatile *g_724;
    int32_t *g_730;
    int32_t ** volatile g_729[5];
    int32_t ** volatile g_731;
    int32_t *g_734;
    int16_t *g_744;
    volatile union U4 g_823;
    volatile int32_t g_834;
    volatile int32_t *g_833;
    volatile int32_t ** volatile g_835;
    union U3 g_873;
    uint32_t g_882[5][3][8];
    int64_t *g_924;
    int64_t **g_923;
    volatile union U0 g_931;
    union U0 g_950;
    union U3 *g_957;
    union U3 **g_956[6][6];
    uint16_t g_962;
    int32_t ** volatile g_974[9][10];
    int32_t ** volatile g_975;
    int32_t ** volatile g_976;
    int8_t g_1047;
    union U0 *g_1086;
    union U4 g_1172;
    volatile union U4 *g_1175;
    volatile union U4 ** volatile g_1174;
    union U2 *g_1181[4];
    union U2 ** volatile g_1180;
    uint8_t *g_1225;
    uint8_t **g_1224[9][3][5];
    uint8_t ***g_1223;
    uint32_t g_1304;
    volatile union U4 g_1307;
    union U2 ** volatile g_1324;
    int32_t ** volatile g_1326[2];
    uint64_t *g_1330[1];
    uint64_t **g_1329;
    int32_t *** volatile g_1344[9][2][4];
    union U4 g_1366[9][2];
    int64_t g_1378;
    volatile int32_t g_1386[1][10];
    union U2 **g_1442;
    union U3 g_1449;
    union U4 g_1466;
    volatile union U4 g_1480;
    int32_t g_1536;
    uint32_t g_1579;
    union U0 ** volatile g_1585;
    volatile int8_t *g_1591;
    volatile int8_t * volatile *g_1590[6];
    volatile int8_t * volatile **g_1589;
    volatile int8_t * volatile ***g_1588;
    volatile int8_t * volatile *** volatile *g_1587;
    volatile int8_t * volatile *** volatile * volatile *g_1586[7][4][2];
    uint16_t g_1612;
    union U3 g_1618;
    int32_t g_1687[8][2][10];
    int32_t ** volatile g_1711[2];
    union U4 g_1719;
    union U4 g_1720[7][5];
    union U4 g_1721[7][6][1];
    union U4 g_1722;
    union U4 g_1723;
    union U4 g_1724[1];
    union U4 g_1725;
    union U4 g_1726;
    union U4 g_1727[7];
    union U4 g_1728;
    union U4 g_1729;
    union U4 g_1730;
    union U4 g_1731;
    union U4 g_1732;
    union U4 g_1733;
    union U4 g_1734;
    union U4 g_1735;
    union U4 g_1736;
    union U4 g_1737;
    union U4 g_1738[3][7];
    union U4 g_1739;
    union U4 g_1740;
    union U4 g_1741[10][6];
    union U4 g_1742;
    union U4 g_1743;
    union U4 g_1744;
    union U4 g_1745[8][4][1];
    union U4 g_1746;
    union U4 g_1747;
    uint64_t g_1829[3];
    volatile union U0 g_1837;
    union U4 **g_1847;
    union U4 *g_1853;
    union U4 **g_1852[10][10][2];
    int8_t *** volatile g_1877[2];
    int8_t *** volatile g_1878;
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
uint16_t  func_1(struct S5 * p_1879);
int8_t ** func_2(uint8_t  p_3, int8_t ** p_4, int64_t  p_5, struct S5 * p_1879);
int8_t ** func_7(int32_t  p_8, uint8_t  p_9, union U1  p_10, struct S5 * p_1879);
int32_t * func_15(union U1  p_16, int32_t * p_17, uint64_t  p_18, struct S5 * p_1879);
union U1  func_19(uint32_t  p_20, struct S5 * p_1879);
uint64_t  func_23(uint16_t  p_24, uint8_t  p_25, int16_t  p_26, int8_t * p_27, struct S5 * p_1879);
int64_t  func_30(uint8_t  p_31, union U1  p_32, uint64_t  p_33, int8_t  p_34, int8_t * p_35, struct S5 * p_1879);
int32_t * func_40(int32_t * p_41, int8_t ** p_42, int32_t * p_43, int32_t  p_44, int32_t * p_45, struct S5 * p_1879);
int32_t  func_49(uint32_t  p_50, int32_t  p_51, int16_t  p_52, uint64_t  p_53, struct S5 * p_1879);
union U1  func_54(int8_t * p_55, int16_t  p_56, int8_t ** p_57, struct S5 * p_1879);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1879->g_11 p_1879->g_14 p_1879->g_1223 p_1879->g_923 p_1879->g_924 p_1879->g_1878
 * writes: p_1879->g_13 p_1879->g_354 p_1879->g_633
 */
uint16_t  func_1(struct S5 * p_1879)
{ /* block id: 4 */
    uint32_t l_6[6];
    int32_t *l_12[1][10][3] = {{{&p_1879->g_13,&p_1879->g_13,&p_1879->g_13},{&p_1879->g_13,&p_1879->g_13,&p_1879->g_13},{&p_1879->g_13,&p_1879->g_13,&p_1879->g_13},{&p_1879->g_13,&p_1879->g_13,&p_1879->g_13},{&p_1879->g_13,&p_1879->g_13,&p_1879->g_13},{&p_1879->g_13,&p_1879->g_13,&p_1879->g_13},{&p_1879->g_13,&p_1879->g_13,&p_1879->g_13},{&p_1879->g_13,&p_1879->g_13,&p_1879->g_13},{&p_1879->g_13,&p_1879->g_13,&p_1879->g_13},{&p_1879->g_13,&p_1879->g_13,&p_1879->g_13}}};
    uint16_t *l_1226 = &p_1879->g_354;
    int i, j, k;
    for (i = 0; i < 6; i++)
        l_6[i] = 0x6F1860ECL;
    (*p_1879->g_1878) = func_2(l_6[0], func_7((p_1879->g_13 = p_1879->g_11), l_6[0], p_1879->g_14[2], p_1879), (safe_mul_func_uint16_t_u_u(((*l_1226) = (p_1879->g_1223 == (void*)0)), (safe_sub_func_int16_t_s_s(0x796FL, (safe_mul_func_uint16_t_u_u(((**p_1879->g_923) == 0x5A241427BBC9907DL), l_6[2])))))), p_1879);
    return l_6[0];
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int8_t ** func_2(uint8_t  p_3, int8_t ** p_4, int64_t  p_5, struct S5 * p_1879)
{ /* block id: 585 */
    int16_t l_1245 = 0x3697L;
    uint16_t *l_1272 = &p_1879->g_962;
    int32_t l_1282 = 0x3C432FFBL;
    int32_t l_1288 = 0L;
    int32_t l_1290 = 0x72B71305L;
    int32_t l_1291 = (-1L);
    int32_t l_1292 = 0x495E3043L;
    union U3 ***l_1310[6] = {&p_1879->g_956[0][2],&p_1879->g_956[0][2],&p_1879->g_956[0][2],&p_1879->g_956[0][2],&p_1879->g_956[0][2],&p_1879->g_956[0][2]};
    uint64_t **l_1333 = (void*)0;
    uint8_t l_1375 = 252UL;
    int16_t l_1383[10][6][1] = {{{0x532FL},{0x532FL},{0x532FL},{0x532FL},{0x532FL},{0x532FL}},{{0x532FL},{0x532FL},{0x532FL},{0x532FL},{0x532FL},{0x532FL}},{{0x532FL},{0x532FL},{0x532FL},{0x532FL},{0x532FL},{0x532FL}},{{0x532FL},{0x532FL},{0x532FL},{0x532FL},{0x532FL},{0x532FL}},{{0x532FL},{0x532FL},{0x532FL},{0x532FL},{0x532FL},{0x532FL}},{{0x532FL},{0x532FL},{0x532FL},{0x532FL},{0x532FL},{0x532FL}},{{0x532FL},{0x532FL},{0x532FL},{0x532FL},{0x532FL},{0x532FL}},{{0x532FL},{0x532FL},{0x532FL},{0x532FL},{0x532FL},{0x532FL}},{{0x532FL},{0x532FL},{0x532FL},{0x532FL},{0x532FL},{0x532FL}},{{0x532FL},{0x532FL},{0x532FL},{0x532FL},{0x532FL},{0x532FL}}};
    int32_t l_1387 = (-1L);
    int32_t l_1388 = (-1L);
    int32_t l_1389 = 0x0A72F180L;
    int32_t l_1390 = 0L;
    int32_t l_1391 = 0L;
    union U1 l_1413[9] = {{0x56L},{0x56L},{0x56L},{0x56L},{0x56L},{0x56L},{0x56L},{0x56L},{0x56L}};
    uint32_t l_1423 = 0xEA8D409FL;
    int16_t **l_1507 = &p_1879->g_744;
    int16_t l_1638 = 0x6732L;
    int8_t **l_1666 = &p_1879->g_88;
    int64_t l_1753 = 0L;
    int8_t l_1754 = 0x78L;
    int32_t l_1805 = 1L;
    int32_t l_1806 = 1L;
    int32_t l_1807 = (-1L);
    int32_t l_1808 = 1L;
    int32_t l_1809 = 0L;
    int32_t l_1810[2][1][1];
    int32_t l_1828 = 0x0665263AL;
    uint16_t l_1859 = 65535UL;
    int i, j, k;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 1; k++)
                l_1810[i][j][k] = 4L;
        }
    }
    return l_1666;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int8_t ** func_7(int32_t  p_8, uint8_t  p_9, union U1  p_10, struct S5 * p_1879)
{ /* block id: 6 */
    int8_t *l_38 = &p_1879->g_39;
    int32_t *l_46 = &p_1879->g_47;
    int32_t *l_48 = &p_1879->g_47;
    int32_t *l_320 = &p_1879->g_13;
    int32_t **l_319[5][5][2] = {{{&l_320,&l_320},{&l_320,&l_320},{&l_320,&l_320},{&l_320,&l_320},{&l_320,&l_320}},{{&l_320,&l_320},{&l_320,&l_320},{&l_320,&l_320},{&l_320,&l_320},{&l_320,&l_320}},{{&l_320,&l_320},{&l_320,&l_320},{&l_320,&l_320},{&l_320,&l_320},{&l_320,&l_320}},{{&l_320,&l_320},{&l_320,&l_320},{&l_320,&l_320},{&l_320,&l_320},{&l_320,&l_320}},{{&l_320,&l_320},{&l_320,&l_320},{&l_320,&l_320},{&l_320,&l_320},{&l_320,&l_320}}};
    int64_t *l_324 = &p_1879->g_11;
    int32_t l_325 = 0x64AD93C5L;
    uint64_t *l_326[3];
    int32_t l_1037 = 1L;
    int32_t l_1040 = (-8L);
    int32_t l_1044 = (-1L);
    int32_t l_1045[4];
    union U2 l_1051 = {1L};
    union U1 l_1129 = {0UL};
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_326[i] = &p_1879->g_327;
    for (i = 0; i < 4; i++)
        l_1045[i] = 2L;
    return &p_1879->g_88;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t * func_15(union U1  p_16, int32_t * p_17, uint64_t  p_18, struct S5 * p_1879)
{ /* block id: 349 */
    int16_t *l_745 = &p_1879->g_428;
    int32_t l_753 = 0x30349841L;
    int32_t l_755 = (-8L);
    int32_t **l_768 = (void*)0;
    int16_t l_816[4][3] = {{(-1L),(-7L),0x6509L},{(-1L),(-7L),0x6509L},{(-1L),(-7L),0x6509L},{(-1L),(-7L),0x6509L}};
    int32_t *l_824 = &p_1879->g_698.f0;
    int32_t *l_825[4] = {&p_1879->g_698.f0,&p_1879->g_698.f0,&p_1879->g_698.f0,&p_1879->g_698.f0};
    union U3 *l_872 = &p_1879->g_873;
    int8_t *l_877 = &p_1879->g_224;
    uint32_t **l_894 = (void*)0;
    uint32_t ***l_893[10][1][10] = {{{&l_894,(void*)0,&l_894,&l_894,&l_894,(void*)0,&l_894,&l_894,&l_894,&l_894}},{{&l_894,(void*)0,&l_894,&l_894,&l_894,(void*)0,&l_894,&l_894,&l_894,&l_894}},{{&l_894,(void*)0,&l_894,&l_894,&l_894,(void*)0,&l_894,&l_894,&l_894,&l_894}},{{&l_894,(void*)0,&l_894,&l_894,&l_894,(void*)0,&l_894,&l_894,&l_894,&l_894}},{{&l_894,(void*)0,&l_894,&l_894,&l_894,(void*)0,&l_894,&l_894,&l_894,&l_894}},{{&l_894,(void*)0,&l_894,&l_894,&l_894,(void*)0,&l_894,&l_894,&l_894,&l_894}},{{&l_894,(void*)0,&l_894,&l_894,&l_894,(void*)0,&l_894,&l_894,&l_894,&l_894}},{{&l_894,(void*)0,&l_894,&l_894,&l_894,(void*)0,&l_894,&l_894,&l_894,&l_894}},{{&l_894,(void*)0,&l_894,&l_894,&l_894,(void*)0,&l_894,&l_894,&l_894,&l_894}},{{&l_894,(void*)0,&l_894,&l_894,&l_894,(void*)0,&l_894,&l_894,&l_894,&l_894}}};
    uint8_t *l_947 = &p_1879->g_263;
    uint8_t **l_946 = &l_947;
    int i, j, k;
    for (p_18 = 0; (p_18 > 25); p_18 = safe_add_func_uint32_t_u_u(p_18, 6))
    { /* block id: 352 */
        int16_t *l_743 = (void*)0;
        int8_t *****l_748 = &p_1879->g_523;
        int8_t *****l_750 = &p_1879->g_523;
        int8_t ******l_749 = &l_750;
        int8_t *****l_752 = &p_1879->g_523;
        int8_t ******l_751 = &l_752;
        int32_t l_754 = 0x00662A6BL;
        int32_t *l_758 = &p_1879->g_424;
        uint16_t *l_761 = &p_1879->g_425;
        int32_t ***l_769 = &p_1879->g_451[3];
        int32_t **l_771 = &l_758;
        int32_t ***l_770 = &l_771;
        int64_t *l_778 = (void*)0;
        int32_t l_779 = 0L;
        int32_t *l_832 = (void*)0;
        uint64_t l_868 = 1UL;
        uint32_t l_968 = 0xDE047168L;
        (1 + 1);
    }
    return p_17;
}


/* ------------------------------------------ */
/* 
 * reads : p_1879->g_724 p_1879->g_197 p_1879->g_198
 * writes: p_1879->g_724 p_1879->g_198 p_1879->g_730 p_1879->g_160 p_1879->g_47
 */
union U1  func_19(uint32_t  p_20, struct S5 * p_1879)
{ /* block id: 343 */
    volatile uint32_t * volatile **l_727 = &p_1879->g_724;
    int32_t **l_728 = &p_1879->g_198[1];
    int32_t **l_732 = &p_1879->g_730;
    union U1 l_733 = {255UL};
    (*l_727) = p_1879->g_724;
    (*l_732) = ((*l_728) = (*p_1879->g_197));
    (**l_728) = (-7L);
    return l_733;
}


/* ------------------------------------------ */
/* 
 * reads : p_1879->g_159 p_1879->g_160 p_1879->g_39 p_1879->g_427 p_1879->g_202.f0 p_1879->g_180 p_1879->g_425 p_1879->g_76 p_1879->g_14.f0 p_1879->g_299 p_1879->g_688 p_1879->g_695 p_1879->g_198 p_1879->g_47 p_1879->g_11 p_1879->g_197 p_1879->g_263
 * writes: p_1879->g_523 p_1879->g_427 p_1879->g_11 p_1879->g_263 p_1879->g_160 p_1879->g_299 p_1879->g_698 p_1879->g_327 p_1879->g_47 p_1879->g_76
 */
uint64_t  func_23(uint16_t  p_24, uint8_t  p_25, int16_t  p_26, int8_t * p_27, struct S5 * p_1879)
{ /* block id: 290 */
    uint32_t l_660[10][8][3] = {{{4294967293UL,0x017EB0BFL,0xCBD063E8L},{4294967293UL,0x017EB0BFL,0xCBD063E8L},{4294967293UL,0x017EB0BFL,0xCBD063E8L},{4294967293UL,0x017EB0BFL,0xCBD063E8L},{4294967293UL,0x017EB0BFL,0xCBD063E8L},{4294967293UL,0x017EB0BFL,0xCBD063E8L},{4294967293UL,0x017EB0BFL,0xCBD063E8L},{4294967293UL,0x017EB0BFL,0xCBD063E8L}},{{4294967293UL,0x017EB0BFL,0xCBD063E8L},{4294967293UL,0x017EB0BFL,0xCBD063E8L},{4294967293UL,0x017EB0BFL,0xCBD063E8L},{4294967293UL,0x017EB0BFL,0xCBD063E8L},{4294967293UL,0x017EB0BFL,0xCBD063E8L},{4294967293UL,0x017EB0BFL,0xCBD063E8L},{4294967293UL,0x017EB0BFL,0xCBD063E8L},{4294967293UL,0x017EB0BFL,0xCBD063E8L}},{{4294967293UL,0x017EB0BFL,0xCBD063E8L},{4294967293UL,0x017EB0BFL,0xCBD063E8L},{4294967293UL,0x017EB0BFL,0xCBD063E8L},{4294967293UL,0x017EB0BFL,0xCBD063E8L},{4294967293UL,0x017EB0BFL,0xCBD063E8L},{4294967293UL,0x017EB0BFL,0xCBD063E8L},{4294967293UL,0x017EB0BFL,0xCBD063E8L},{4294967293UL,0x017EB0BFL,0xCBD063E8L}},{{4294967293UL,0x017EB0BFL,0xCBD063E8L},{4294967293UL,0x017EB0BFL,0xCBD063E8L},{4294967293UL,0x017EB0BFL,0xCBD063E8L},{4294967293UL,0x017EB0BFL,0xCBD063E8L},{4294967293UL,0x017EB0BFL,0xCBD063E8L},{4294967293UL,0x017EB0BFL,0xCBD063E8L},{4294967293UL,0x017EB0BFL,0xCBD063E8L},{4294967293UL,0x017EB0BFL,0xCBD063E8L}},{{4294967293UL,0x017EB0BFL,0xCBD063E8L},{4294967293UL,0x017EB0BFL,0xCBD063E8L},{4294967293UL,0x017EB0BFL,0xCBD063E8L},{4294967293UL,0x017EB0BFL,0xCBD063E8L},{4294967293UL,0x017EB0BFL,0xCBD063E8L},{4294967293UL,0x017EB0BFL,0xCBD063E8L},{4294967293UL,0x017EB0BFL,0xCBD063E8L},{4294967293UL,0x017EB0BFL,0xCBD063E8L}},{{4294967293UL,0x017EB0BFL,0xCBD063E8L},{4294967293UL,0x017EB0BFL,0xCBD063E8L},{4294967293UL,0x017EB0BFL,0xCBD063E8L},{4294967293UL,0x017EB0BFL,0xCBD063E8L},{4294967293UL,0x017EB0BFL,0xCBD063E8L},{4294967293UL,0x017EB0BFL,0xCBD063E8L},{4294967293UL,0x017EB0BFL,0xCBD063E8L},{4294967293UL,0x017EB0BFL,0xCBD063E8L}},{{4294967293UL,0x017EB0BFL,0xCBD063E8L},{4294967293UL,0x017EB0BFL,0xCBD063E8L},{4294967293UL,0x017EB0BFL,0xCBD063E8L},{4294967293UL,0x017EB0BFL,0xCBD063E8L},{4294967293UL,0x017EB0BFL,0xCBD063E8L},{4294967293UL,0x017EB0BFL,0xCBD063E8L},{4294967293UL,0x017EB0BFL,0xCBD063E8L},{4294967293UL,0x017EB0BFL,0xCBD063E8L}},{{4294967293UL,0x017EB0BFL,0xCBD063E8L},{4294967293UL,0x017EB0BFL,0xCBD063E8L},{4294967293UL,0x017EB0BFL,0xCBD063E8L},{4294967293UL,0x017EB0BFL,0xCBD063E8L},{4294967293UL,0x017EB0BFL,0xCBD063E8L},{4294967293UL,0x017EB0BFL,0xCBD063E8L},{4294967293UL,0x017EB0BFL,0xCBD063E8L},{4294967293UL,0x017EB0BFL,0xCBD063E8L}},{{4294967293UL,0x017EB0BFL,0xCBD063E8L},{4294967293UL,0x017EB0BFL,0xCBD063E8L},{4294967293UL,0x017EB0BFL,0xCBD063E8L},{4294967293UL,0x017EB0BFL,0xCBD063E8L},{4294967293UL,0x017EB0BFL,0xCBD063E8L},{4294967293UL,0x017EB0BFL,0xCBD063E8L},{4294967293UL,0x017EB0BFL,0xCBD063E8L},{4294967293UL,0x017EB0BFL,0xCBD063E8L}},{{4294967293UL,0x017EB0BFL,0xCBD063E8L},{4294967293UL,0x017EB0BFL,0xCBD063E8L},{4294967293UL,0x017EB0BFL,0xCBD063E8L},{4294967293UL,0x017EB0BFL,0xCBD063E8L},{4294967293UL,0x017EB0BFL,0xCBD063E8L},{4294967293UL,0x017EB0BFL,0xCBD063E8L},{4294967293UL,0x017EB0BFL,0xCBD063E8L},{4294967293UL,0x017EB0BFL,0xCBD063E8L}}};
    int32_t l_666[10][6] = {{0x05AFEC02L,0x47795FA3L,0x6CF183CBL,0x700F24EBL,0x6CF183CBL,0x47795FA3L},{0x05AFEC02L,0x47795FA3L,0x6CF183CBL,0x700F24EBL,0x6CF183CBL,0x47795FA3L},{0x05AFEC02L,0x47795FA3L,0x6CF183CBL,0x700F24EBL,0x6CF183CBL,0x47795FA3L},{0x05AFEC02L,0x47795FA3L,0x6CF183CBL,0x700F24EBL,0x6CF183CBL,0x47795FA3L},{0x05AFEC02L,0x47795FA3L,0x6CF183CBL,0x700F24EBL,0x6CF183CBL,0x47795FA3L},{0x05AFEC02L,0x47795FA3L,0x6CF183CBL,0x700F24EBL,0x6CF183CBL,0x47795FA3L},{0x05AFEC02L,0x47795FA3L,0x6CF183CBL,0x700F24EBL,0x6CF183CBL,0x47795FA3L},{0x05AFEC02L,0x47795FA3L,0x6CF183CBL,0x700F24EBL,0x6CF183CBL,0x47795FA3L},{0x05AFEC02L,0x47795FA3L,0x6CF183CBL,0x700F24EBL,0x6CF183CBL,0x47795FA3L},{0x05AFEC02L,0x47795FA3L,0x6CF183CBL,0x700F24EBL,0x6CF183CBL,0x47795FA3L}};
    int32_t *l_673 = &l_666[4][4];
    union U2 l_696[7][2][3] = {{{{-1L},{-1L},{1L}},{{-1L},{-1L},{1L}}},{{{-1L},{-1L},{1L}},{{-1L},{-1L},{1L}}},{{{-1L},{-1L},{1L}},{{-1L},{-1L},{1L}}},{{{-1L},{-1L},{1L}},{{-1L},{-1L},{1L}}},{{{-1L},{-1L},{1L}},{{-1L},{-1L},{1L}}},{{{-1L},{-1L},{1L}},{{-1L},{-1L},{1L}}},{{{-1L},{-1L},{1L}},{{-1L},{-1L},{1L}}}};
    int64_t l_701 = (-2L);
    int32_t *l_709 = (void*)0;
    int32_t *l_711 = &p_1879->g_160;
    int32_t *l_712 = (void*)0;
    int32_t *l_713 = &l_666[9][4];
    int32_t *l_714 = &p_1879->g_160;
    int32_t *l_715 = &l_666[9][2];
    int32_t *l_716[3];
    int64_t l_717 = 1L;
    int32_t l_718 = 0x20B3AB6CL;
    int32_t l_719 = 9L;
    uint64_t l_720 = 0UL;
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_716[i] = (void*)0;
lbl_705:
    if ((safe_div_func_int32_t_s_s((safe_lshift_func_int16_t_s_u((-1L), 5)), (*p_1879->g_159))))
    { /* block id: 291 */
        int8_t ****l_644 = &p_1879->g_524;
        int8_t *****l_645 = &p_1879->g_523;
        int32_t l_646 = 0x703838F7L;
        uint32_t *l_655 = &p_1879->g_427;
        int64_t *l_663 = (void*)0;
        int64_t *l_664 = &p_1879->g_11;
        int32_t l_665[5][3] = {{0x664194F9L,2L,0L},{0x664194F9L,2L,0L},{0x664194F9L,2L,0L},{0x664194F9L,2L,0L},{0x664194F9L,2L,0L}};
        int i, j;
        l_666[9][4] |= (safe_div_func_int8_t_s_s((l_665[4][0] |= ((safe_sub_func_int8_t_s_s((((*l_645) = l_644) == &p_1879->g_524), ((*p_27) , l_646))) , (p_24 && (((*l_664) = (safe_rshift_func_int16_t_s_u(p_26, (safe_div_func_int16_t_s_s((safe_rshift_func_uint16_t_u_s((safe_sub_func_uint32_t_u_u(GROUP_DIVERGE(0, 1), ((*l_655)--))), 5)), ((safe_sub_func_int32_t_s_s(((((~l_660[5][6][0]) && (safe_lshift_func_uint8_t_u_u((((((p_1879->g_202.f0 | (p_1879->g_180 > 18446744073709551606UL)) || l_660[0][3][1]) | 254UL) , l_660[5][6][0]) != GROUP_DIVERGE(0, 1)), 3))) || l_646) , l_660[7][1][2]), p_1879->g_425)) & p_1879->g_76)))))) <= 0x1F7B8333C9312331L)))), 3UL));
        return p_1879->g_14[2].f0;
    }
    else
    { /* block id: 298 */
        uint64_t l_668 = 0xD505FB42DCD3A0FBL;
        int32_t *l_676[4][9][6] = {{{&p_1879->g_47,(void*)0,&l_666[9][4],(void*)0,&p_1879->g_47,(void*)0},{&p_1879->g_47,(void*)0,&l_666[9][4],(void*)0,&p_1879->g_47,(void*)0},{&p_1879->g_47,(void*)0,&l_666[9][4],(void*)0,&p_1879->g_47,(void*)0},{&p_1879->g_47,(void*)0,&l_666[9][4],(void*)0,&p_1879->g_47,(void*)0},{&p_1879->g_47,(void*)0,&l_666[9][4],(void*)0,&p_1879->g_47,(void*)0},{&p_1879->g_47,(void*)0,&l_666[9][4],(void*)0,&p_1879->g_47,(void*)0},{&p_1879->g_47,(void*)0,&l_666[9][4],(void*)0,&p_1879->g_47,(void*)0},{&p_1879->g_47,(void*)0,&l_666[9][4],(void*)0,&p_1879->g_47,(void*)0},{&p_1879->g_47,(void*)0,&l_666[9][4],(void*)0,&p_1879->g_47,(void*)0}},{{&p_1879->g_47,(void*)0,&l_666[9][4],(void*)0,&p_1879->g_47,(void*)0},{&p_1879->g_47,(void*)0,&l_666[9][4],(void*)0,&p_1879->g_47,(void*)0},{&p_1879->g_47,(void*)0,&l_666[9][4],(void*)0,&p_1879->g_47,(void*)0},{&p_1879->g_47,(void*)0,&l_666[9][4],(void*)0,&p_1879->g_47,(void*)0},{&p_1879->g_47,(void*)0,&l_666[9][4],(void*)0,&p_1879->g_47,(void*)0},{&p_1879->g_47,(void*)0,&l_666[9][4],(void*)0,&p_1879->g_47,(void*)0},{&p_1879->g_47,(void*)0,&l_666[9][4],(void*)0,&p_1879->g_47,(void*)0},{&p_1879->g_47,(void*)0,&l_666[9][4],(void*)0,&p_1879->g_47,(void*)0},{&p_1879->g_47,(void*)0,&l_666[9][4],(void*)0,&p_1879->g_47,(void*)0}},{{&p_1879->g_47,(void*)0,&l_666[9][4],(void*)0,&p_1879->g_47,(void*)0},{&p_1879->g_47,(void*)0,&l_666[9][4],(void*)0,&p_1879->g_47,(void*)0},{&p_1879->g_47,(void*)0,&l_666[9][4],(void*)0,&p_1879->g_47,(void*)0},{&p_1879->g_47,(void*)0,&l_666[9][4],(void*)0,&p_1879->g_47,(void*)0},{&p_1879->g_47,(void*)0,&l_666[9][4],(void*)0,&p_1879->g_47,(void*)0},{&p_1879->g_47,(void*)0,&l_666[9][4],(void*)0,&p_1879->g_47,(void*)0},{&p_1879->g_47,(void*)0,&l_666[9][4],(void*)0,&p_1879->g_47,(void*)0},{&p_1879->g_47,(void*)0,&l_666[9][4],(void*)0,&p_1879->g_47,(void*)0},{&p_1879->g_47,(void*)0,&l_666[9][4],(void*)0,&p_1879->g_47,(void*)0}},{{&p_1879->g_47,(void*)0,&l_666[9][4],(void*)0,&p_1879->g_47,(void*)0},{&p_1879->g_47,(void*)0,&l_666[9][4],(void*)0,&p_1879->g_47,(void*)0},{&p_1879->g_47,(void*)0,&l_666[9][4],(void*)0,&p_1879->g_47,(void*)0},{&p_1879->g_47,(void*)0,&l_666[9][4],(void*)0,&p_1879->g_47,(void*)0},{&p_1879->g_47,(void*)0,&l_666[9][4],(void*)0,&p_1879->g_47,(void*)0},{&p_1879->g_47,(void*)0,&l_666[9][4],(void*)0,&p_1879->g_47,(void*)0},{&p_1879->g_47,(void*)0,&l_666[9][4],(void*)0,&p_1879->g_47,(void*)0},{&p_1879->g_47,(void*)0,&l_666[9][4],(void*)0,&p_1879->g_47,(void*)0},{&p_1879->g_47,(void*)0,&l_666[9][4],(void*)0,&p_1879->g_47,(void*)0}}};
        int32_t *l_681 = &l_666[3][4];
        int64_t l_703[9] = {0x481CB2C8E2B04C4EL,0x481CB2C8E2B04C4EL,0x481CB2C8E2B04C4EL,0x481CB2C8E2B04C4EL,0x481CB2C8E2B04C4EL,0x481CB2C8E2B04C4EL,0x481CB2C8E2B04C4EL,0x481CB2C8E2B04C4EL,0x481CB2C8E2B04C4EL};
        int i, j, k;
lbl_704:
        for (p_1879->g_263 = 0; (p_1879->g_263 <= 7); p_1879->g_263 += 1)
        { /* block id: 301 */
            for (p_1879->g_160 = 0; (p_1879->g_160 <= 3); p_1879->g_160 += 1)
            { /* block id: 304 */
                int32_t *l_667[4][2] = {{&l_666[9][4],(void*)0},{&l_666[9][4],(void*)0},{&l_666[9][4],(void*)0},{&l_666[9][4],(void*)0}};
                int32_t **l_672[3][1];
                int i, j;
                for (i = 0; i < 3; i++)
                {
                    for (j = 0; j < 1; j++)
                        l_672[i][j] = &p_1879->g_198[2];
                }
                ++l_668;
                l_666[2][3] = p_25;
                for (p_24 = 0; (p_24 <= 7); p_24 += 1)
                { /* block id: 309 */
                    int32_t l_671 = 0x1E7CAFCFL;
                    l_671 = p_25;
                }
                l_673 = l_667[1][0];
            }
        }
        for (p_1879->g_299 = 0; (p_1879->g_299 >= 55); p_1879->g_299 = safe_add_func_uint8_t_u_u(p_1879->g_299, 3))
        { /* block id: 317 */
            int32_t **l_677 = &l_673;
            int32_t **l_678 = &p_1879->g_198[1];
            int32_t *l_680 = &p_1879->g_160;
            int32_t **l_679[10][9] = {{&l_676[2][3][0],(void*)0,&l_676[2][3][0],&l_676[2][3][0],(void*)0,&l_676[2][3][0],&l_676[2][3][0],(void*)0,&l_676[2][3][0]},{&l_676[2][3][0],(void*)0,&l_676[2][3][0],&l_676[2][3][0],(void*)0,&l_676[2][3][0],&l_676[2][3][0],(void*)0,&l_676[2][3][0]},{&l_676[2][3][0],(void*)0,&l_676[2][3][0],&l_676[2][3][0],(void*)0,&l_676[2][3][0],&l_676[2][3][0],(void*)0,&l_676[2][3][0]},{&l_676[2][3][0],(void*)0,&l_676[2][3][0],&l_676[2][3][0],(void*)0,&l_676[2][3][0],&l_676[2][3][0],(void*)0,&l_676[2][3][0]},{&l_676[2][3][0],(void*)0,&l_676[2][3][0],&l_676[2][3][0],(void*)0,&l_676[2][3][0],&l_676[2][3][0],(void*)0,&l_676[2][3][0]},{&l_676[2][3][0],(void*)0,&l_676[2][3][0],&l_676[2][3][0],(void*)0,&l_676[2][3][0],&l_676[2][3][0],(void*)0,&l_676[2][3][0]},{&l_676[2][3][0],(void*)0,&l_676[2][3][0],&l_676[2][3][0],(void*)0,&l_676[2][3][0],&l_676[2][3][0],(void*)0,&l_676[2][3][0]},{&l_676[2][3][0],(void*)0,&l_676[2][3][0],&l_676[2][3][0],(void*)0,&l_676[2][3][0],&l_676[2][3][0],(void*)0,&l_676[2][3][0]},{&l_676[2][3][0],(void*)0,&l_676[2][3][0],&l_676[2][3][0],(void*)0,&l_676[2][3][0],&l_676[2][3][0],(void*)0,&l_676[2][3][0]},{&l_676[2][3][0],(void*)0,&l_676[2][3][0],&l_676[2][3][0],(void*)0,&l_676[2][3][0],&l_676[2][3][0],(void*)0,&l_676[2][3][0]}};
            union U2 *l_697 = &l_696[6][1][2];
            uint64_t *l_702[10] = {&p_1879->g_327,&p_1879->g_299,&p_1879->g_327,&p_1879->g_327,&p_1879->g_299,&p_1879->g_327,&p_1879->g_327,&p_1879->g_299,&p_1879->g_327,&p_1879->g_327};
            int i, j;
            (*l_677) = &l_666[8][4];
            (*l_680) = (((safe_sub_func_uint64_t_u_u(((safe_add_func_uint64_t_u_u((p_1879->g_327 = (p_1879->g_688 , ((((safe_mod_func_int8_t_s_s((safe_add_func_int8_t_s_s(((safe_mod_func_int32_t_s_s((p_1879->g_695 , p_24), ((*l_681) = ((p_1879->g_698 = ((*l_697) = l_696[2][1][1])) , ((~((((*l_673) < (safe_sub_func_int64_t_s_s((**l_678), ((((p_1879->g_263 = 0UL) != ((l_701 &= 0L) , (p_25 , (-9L)))) & 0xCEE4E766L) == 0x74D3L)))) > (-9L)) >= p_26)) && 0x5C9537FCL))))) && 0x88L), 0x39L)), (*p_27))) ^ p_1879->g_76) || (**l_677)) ^ p_1879->g_11))), p_1879->g_160)) | p_1879->g_180), (-7L))) < 0x73L) > p_24);
        }
        (**p_1879->g_197) = ((*l_681) = l_703[3]);
        if (p_1879->g_47)
            goto lbl_704;
    }
    if (l_666[7][2])
    { /* block id: 334 */
        if (p_1879->g_180)
            goto lbl_705;
    }
    else
    { /* block id: 336 */
        uint32_t *l_706 = (void*)0;
        uint32_t *l_707 = &p_1879->g_76;
        int32_t l_708 = 0x076A0B4CL;
        int32_t *l_710 = (void*)0;
        l_708 |= ((((*l_707) ^= (0x58DCE3D6ED700AD0L && 0x3ADF51602DDC9EC1L)) , &l_708) != &l_666[9][4]);
        l_710 = &l_666[5][5];
    }
    --l_720;
    return p_26;
}


/* ------------------------------------------ */
/* 
 * reads : p_1879->g_346 p_1879->g_13 p_1879->g_198 p_1879->g_160 p_1879->g_47 p_1879->g_288 p_1879->g_180 p_1879->g_327 p_1879->g_39 p_1879->g_76 p_1879->g_159 p_1879->g_197 p_1879->g_256 p_1879->g_123 p_1879->g_263 p_1879->g_425 p_1879->g_427 p_1879->g_428 p_1879->g_14.f0 p_1879->g_256.f0 p_1879->g_424
 * writes: p_1879->g_354 p_1879->g_14.f0 p_1879->g_39 p_1879->g_160 p_1879->g_47 p_1879->g_424 p_1879->g_288 p_1879->g_427 p_1879->g_428 p_1879->g_451 p_1879->g_425 p_1879->g_13 p_1879->g_106
 */
int64_t  func_30(uint8_t  p_31, union U1  p_32, uint64_t  p_33, int8_t  p_34, int8_t * p_35, struct S5 * p_1879)
{ /* block id: 138 */
    uint32_t l_328[5] = {0UL,0UL,0UL,0UL,0UL};
    uint64_t *l_345[9][3][9] = {{{&p_1879->g_299,&p_1879->g_288,(void*)0,(void*)0,&p_1879->g_288,(void*)0,&p_1879->g_299,&p_1879->g_288,&p_1879->g_288},{&p_1879->g_299,&p_1879->g_288,(void*)0,(void*)0,&p_1879->g_288,(void*)0,&p_1879->g_299,&p_1879->g_288,&p_1879->g_288},{&p_1879->g_299,&p_1879->g_288,(void*)0,(void*)0,&p_1879->g_288,(void*)0,&p_1879->g_299,&p_1879->g_288,&p_1879->g_288}},{{&p_1879->g_299,&p_1879->g_288,(void*)0,(void*)0,&p_1879->g_288,(void*)0,&p_1879->g_299,&p_1879->g_288,&p_1879->g_288},{&p_1879->g_299,&p_1879->g_288,(void*)0,(void*)0,&p_1879->g_288,(void*)0,&p_1879->g_299,&p_1879->g_288,&p_1879->g_288},{&p_1879->g_299,&p_1879->g_288,(void*)0,(void*)0,&p_1879->g_288,(void*)0,&p_1879->g_299,&p_1879->g_288,&p_1879->g_288}},{{&p_1879->g_299,&p_1879->g_288,(void*)0,(void*)0,&p_1879->g_288,(void*)0,&p_1879->g_299,&p_1879->g_288,&p_1879->g_288},{&p_1879->g_299,&p_1879->g_288,(void*)0,(void*)0,&p_1879->g_288,(void*)0,&p_1879->g_299,&p_1879->g_288,&p_1879->g_288},{&p_1879->g_299,&p_1879->g_288,(void*)0,(void*)0,&p_1879->g_288,(void*)0,&p_1879->g_299,&p_1879->g_288,&p_1879->g_288}},{{&p_1879->g_299,&p_1879->g_288,(void*)0,(void*)0,&p_1879->g_288,(void*)0,&p_1879->g_299,&p_1879->g_288,&p_1879->g_288},{&p_1879->g_299,&p_1879->g_288,(void*)0,(void*)0,&p_1879->g_288,(void*)0,&p_1879->g_299,&p_1879->g_288,&p_1879->g_288},{&p_1879->g_299,&p_1879->g_288,(void*)0,(void*)0,&p_1879->g_288,(void*)0,&p_1879->g_299,&p_1879->g_288,&p_1879->g_288}},{{&p_1879->g_299,&p_1879->g_288,(void*)0,(void*)0,&p_1879->g_288,(void*)0,&p_1879->g_299,&p_1879->g_288,&p_1879->g_288},{&p_1879->g_299,&p_1879->g_288,(void*)0,(void*)0,&p_1879->g_288,(void*)0,&p_1879->g_299,&p_1879->g_288,&p_1879->g_288},{&p_1879->g_299,&p_1879->g_288,(void*)0,(void*)0,&p_1879->g_288,(void*)0,&p_1879->g_299,&p_1879->g_288,&p_1879->g_288}},{{&p_1879->g_299,&p_1879->g_288,(void*)0,(void*)0,&p_1879->g_288,(void*)0,&p_1879->g_299,&p_1879->g_288,&p_1879->g_288},{&p_1879->g_299,&p_1879->g_288,(void*)0,(void*)0,&p_1879->g_288,(void*)0,&p_1879->g_299,&p_1879->g_288,&p_1879->g_288},{&p_1879->g_299,&p_1879->g_288,(void*)0,(void*)0,&p_1879->g_288,(void*)0,&p_1879->g_299,&p_1879->g_288,&p_1879->g_288}},{{&p_1879->g_299,&p_1879->g_288,(void*)0,(void*)0,&p_1879->g_288,(void*)0,&p_1879->g_299,&p_1879->g_288,&p_1879->g_288},{&p_1879->g_299,&p_1879->g_288,(void*)0,(void*)0,&p_1879->g_288,(void*)0,&p_1879->g_299,&p_1879->g_288,&p_1879->g_288},{&p_1879->g_299,&p_1879->g_288,(void*)0,(void*)0,&p_1879->g_288,(void*)0,&p_1879->g_299,&p_1879->g_288,&p_1879->g_288}},{{&p_1879->g_299,&p_1879->g_288,(void*)0,(void*)0,&p_1879->g_288,(void*)0,&p_1879->g_299,&p_1879->g_288,&p_1879->g_288},{&p_1879->g_299,&p_1879->g_288,(void*)0,(void*)0,&p_1879->g_288,(void*)0,&p_1879->g_299,&p_1879->g_288,&p_1879->g_288},{&p_1879->g_299,&p_1879->g_288,(void*)0,(void*)0,&p_1879->g_288,(void*)0,&p_1879->g_299,&p_1879->g_288,&p_1879->g_288}},{{&p_1879->g_299,&p_1879->g_288,(void*)0,(void*)0,&p_1879->g_288,(void*)0,&p_1879->g_299,&p_1879->g_288,&p_1879->g_288},{&p_1879->g_299,&p_1879->g_288,(void*)0,(void*)0,&p_1879->g_288,(void*)0,&p_1879->g_299,&p_1879->g_288,&p_1879->g_288},{&p_1879->g_299,&p_1879->g_288,(void*)0,(void*)0,&p_1879->g_288,(void*)0,&p_1879->g_299,&p_1879->g_288,&p_1879->g_288}}};
    int32_t **l_352 = &p_1879->g_198[1];
    int32_t **l_367 = (void*)0;
    uint64_t *l_378 = &p_1879->g_288;
    union U2 l_379 = {1L};
    int8_t ***l_447[4] = {&p_1879->g_87,&p_1879->g_87,&p_1879->g_87,&p_1879->g_87};
    int8_t ***l_454 = &p_1879->g_106[0][2];
    int32_t l_457 = (-1L);
    int32_t l_458 = 1L;
    int32_t l_459[9];
    uint32_t l_460[2];
    int32_t *l_464[3][8] = {{&p_1879->g_424,&p_1879->g_47,&p_1879->g_424,&p_1879->g_424,&p_1879->g_47,&p_1879->g_424,&p_1879->g_424,&p_1879->g_47},{&p_1879->g_424,&p_1879->g_47,&p_1879->g_424,&p_1879->g_424,&p_1879->g_47,&p_1879->g_424,&p_1879->g_424,&p_1879->g_47},{&p_1879->g_424,&p_1879->g_47,&p_1879->g_424,&p_1879->g_424,&p_1879->g_47,&p_1879->g_424,&p_1879->g_424,&p_1879->g_47}};
    uint32_t l_465[5];
    int16_t *l_478 = &p_1879->g_428;
    int16_t **l_477 = &l_478;
    uint64_t l_620 = 5UL;
    uint64_t l_634 = 18446744073709551609UL;
    int i, j, k;
    for (i = 0; i < 9; i++)
        l_459[i] = 0x2770B7F5L;
    for (i = 0; i < 2; i++)
        l_460[i] = 0xD8EEE6A2L;
    for (i = 0; i < 5; i++)
        l_465[i] = 0xB6CF255FL;
    if ((l_328[3] | (safe_mod_func_uint32_t_u_u((safe_add_func_int8_t_s_s((+((safe_mod_func_uint8_t_u_u(l_328[3], (safe_rshift_func_int8_t_s_u((l_328[3] <= (safe_mul_func_int8_t_s_s((safe_rshift_func_int16_t_s_s(((safe_mod_func_uint32_t_u_u(FAKE_DIVERGE(p_1879->global_0_offset, get_global_id(0), 10), ((safe_mul_func_int8_t_s_s((&p_1879->g_288 != (l_328[2] , l_345[8][0][7])), (p_1879->g_346[3] , (0x3CA4E295L == (-7L))))) , l_328[2]))) , p_1879->g_13), 2)), l_328[4]))), FAKE_DIVERGE(p_1879->local_2_offset, get_local_id(2), 10))))) , 0x67L)), l_328[3])), p_31))))
    { /* block id: 139 */
        uint32_t l_359 = 0xB8262D47L;
        int32_t l_377 = 0x6E500268L;
        uint16_t *l_382 = (void*)0;
        uint16_t *l_383[4][6][9] = {{{&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,(void*)0,(void*)0,&p_1879->g_354},{&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,(void*)0,(void*)0,&p_1879->g_354},{&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,(void*)0,(void*)0,&p_1879->g_354},{&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,(void*)0,(void*)0,&p_1879->g_354},{&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,(void*)0,(void*)0,&p_1879->g_354},{&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,(void*)0,(void*)0,&p_1879->g_354}},{{&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,(void*)0,(void*)0,&p_1879->g_354},{&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,(void*)0,(void*)0,&p_1879->g_354},{&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,(void*)0,(void*)0,&p_1879->g_354},{&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,(void*)0,(void*)0,&p_1879->g_354},{&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,(void*)0,(void*)0,&p_1879->g_354},{&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,(void*)0,(void*)0,&p_1879->g_354}},{{&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,(void*)0,(void*)0,&p_1879->g_354},{&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,(void*)0,(void*)0,&p_1879->g_354},{&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,(void*)0,(void*)0,&p_1879->g_354},{&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,(void*)0,(void*)0,&p_1879->g_354},{&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,(void*)0,(void*)0,&p_1879->g_354},{&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,(void*)0,(void*)0,&p_1879->g_354}},{{&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,(void*)0,(void*)0,&p_1879->g_354},{&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,(void*)0,(void*)0,&p_1879->g_354},{&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,(void*)0,(void*)0,&p_1879->g_354},{&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,(void*)0,(void*)0,&p_1879->g_354},{&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,(void*)0,(void*)0,&p_1879->g_354},{&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,&p_1879->g_354,(void*)0,(void*)0,&p_1879->g_354}}};
        int16_t *l_420 = &p_1879->g_180;
        int16_t **l_419[1][9] = {{&l_420,&l_420,&l_420,&l_420,&l_420,&l_420,&l_420,&l_420,&l_420}};
        int32_t **l_421 = &p_1879->g_321[3];
        int32_t *l_422 = (void*)0;
        int32_t *l_423 = &p_1879->g_424;
        uint32_t *l_426[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
        int i, j, k;
        for (p_31 = 0; (p_31 <= 5); p_31 += 1)
        { /* block id: 142 */
            uint16_t *l_353 = &p_1879->g_354;
            int32_t l_355 = 0x3D8A5B50L;
            int32_t *l_356 = &p_1879->g_160;
            int32_t *l_357 = (void*)0;
            int32_t *l_358 = &l_355;
            if ((p_34 & (safe_rshift_func_uint16_t_u_s(((safe_unary_minus_func_uint8_t_u((((1L < ((safe_mod_func_int32_t_s_s((l_352 == l_352), ((**l_352) ^ (p_1879->g_288 == (p_1879->g_14[2].f0 = ((p_31 == ((0L < (((*l_353) = (p_1879->g_47 <= p_1879->g_180)) > (**l_352))) ^ l_355)) , p_1879->g_327)))))) == (*p_35))) || (-3L)) >= (*p_35)))) || p_1879->g_76), p_31))))
            { /* block id: 145 */
                if ((*p_1879->g_159))
                    break;
            }
            else
            { /* block id: 147 */
                return p_33;
            }
            --l_359;
            if ((**p_1879->g_197))
                break;
            for (p_33 = 0; (p_33 <= 5); p_33 += 1)
            { /* block id: 154 */
                int32_t **l_366 = (void*)0;
                int32_t l_376 = 0x13269807L;
                (**l_352) = (p_1879->g_256 , ((+p_34) , ((((((safe_sub_func_uint32_t_u_u((((safe_mod_func_uint8_t_u_u(((l_377 = ((((l_367 = l_366) == &p_1879->g_322) | (safe_sub_func_uint64_t_u_u((safe_add_func_uint16_t_u_u((((p_1879->g_123 , l_353) != ((safe_div_func_int16_t_s_s((safe_mul_func_uint16_t_u_u(l_359, (-9L))), (((*p_35) &= l_376) & p_34))) , &p_1879->g_354)) == l_359), p_31)), p_31))) != 0UL)) <= p_1879->g_288), 3UL)) , (-1L)) != 4294967295UL), 0xD8C90541L)) && l_377) , l_378) == (void*)0) , l_379) , 0x4E6004F4L)));
            }
        }
        (**p_1879->g_197) = (safe_div_func_int64_t_s_s(((p_1879->g_180 > (l_377 = 0xAC12L)) | (~(p_1879->g_428 &= (safe_sub_func_uint32_t_u_u(p_31, (safe_mod_func_int8_t_s_s(((~(**l_352)) ^ ((FAKE_DIVERGE(p_1879->local_1_offset, get_local_id(1), 10) & ((safe_mod_func_int32_t_s_s((safe_add_func_int8_t_s_s((safe_mod_func_uint64_t_u_u((FAKE_DIVERGE(p_1879->global_0_offset, get_global_id(0), 10) ^ 9L), p_31)), ((p_1879->g_427 ^= ((safe_sub_func_int16_t_s_s((safe_div_func_int32_t_s_s((safe_add_func_uint16_t_u_u((((safe_mod_func_uint32_t_u_u(((safe_div_func_int64_t_s_s((safe_unary_minus_func_int32_t_s((**l_352))), (p_1879->g_288 = (safe_div_func_uint32_t_u_u((((*l_423) = (safe_rshift_func_uint16_t_u_u(((((((((l_359 | (safe_add_func_int16_t_s_s((safe_rshift_func_int16_t_s_u((safe_rshift_func_int8_t_s_u(((((safe_lshift_func_int16_t_s_u(((safe_mul_func_int16_t_s_s((l_419[0][7] == &l_420), p_31)) == l_359), 2)) & p_33) >= 1L) != (**l_352)), (**l_352))), 9)), 0x7196L))) , l_359) , l_421) != (void*)0) , l_383[3][2][4]) != l_383[1][4][3]) == (**l_352)) <= p_1879->g_76), 15))) > p_1879->g_263), (*p_1879->g_159)))))) ^ 255UL), (**l_352))) && (**l_352)) | 0x69L), (**l_352))), p_33)), p_1879->g_47)) & p_1879->g_425)) , p_1879->g_13))), 1L)) == 1UL)) , FAKE_DIVERGE(p_1879->group_0_offset, get_group_id(0), 10))), (**l_352)))))))), 7UL));
    }
    else
    { /* block id: 167 */
        int8_t ***l_446 = (void*)0;
        int8_t ****l_445[3];
        int32_t ***l_450[4];
        uint16_t *l_455 = &p_1879->g_354;
        uint16_t *l_456 = &p_1879->g_425;
        int i;
        for (i = 0; i < 3; i++)
            l_445[i] = &l_446;
        for (i = 0; i < 4; i++)
            l_450[i] = (void*)0;
        (**l_352) = (((safe_rshift_func_int8_t_s_s((0x00L == ((((*l_456) ^= ((*l_455) = (safe_add_func_uint8_t_u_u((p_1879->g_14[2].f0++), (((safe_lshift_func_int16_t_s_s((safe_mul_func_int16_t_s_s(0L, (safe_sub_func_int64_t_s_s(0x1BE45C6188C964F4L, (p_34 && ((l_447[3] = &p_1879->g_106[0][1]) != (void*)0)))))), (safe_mod_func_uint16_t_u_u(((p_1879->g_451[3] = l_352) == &p_1879->g_198[1]), (safe_mul_func_int8_t_s_s((l_454 == l_454), (-8L))))))) || (**l_352)) & 0L))))) & (**l_352)) <= p_33)), 6)) ^ p_1879->g_256.f0) == p_1879->g_424);
        for (p_1879->g_288 = 0; p_1879->g_288 < 1; p_1879->g_288 += 1)
        {
            for (p_1879->g_13 = 0; p_1879->g_13 < 3; p_1879->g_13 += 1)
            {
                p_1879->g_106[p_1879->g_288][p_1879->g_13] = &p_1879->g_88;
            }
        }
        l_460[1]--;
        for (p_33 = 0; (p_33 <= 5); p_33 += 1)
        { /* block id: 178 */
            int16_t *l_463 = &p_1879->g_180;
            (**l_352) = ((void*)0 == l_463);
        }
    }
    l_465[3]--;
    for (p_1879->g_424 = 0; (p_1879->g_424 <= 5); p_1879->g_424 += 1)
    { /* block id: 185 */
        int16_t l_483 = (-6L);
        uint32_t *l_537 = &p_1879->g_85;
        uint32_t l_548 = 4294967293UL;
        int32_t l_583 = 0x3805EB39L;
        int32_t l_584[1][10][1] = {{{0x40B805C7L},{0x40B805C7L},{0x40B805C7L},{0x40B805C7L},{0x40B805C7L},{0x40B805C7L},{0x40B805C7L},{0x40B805C7L},{0x40B805C7L},{0x40B805C7L}}};
        int8_t **l_627 = &p_1879->g_88;
        int i, j, k;
        (1 + 1);
    }
    return p_31;
}


/* ------------------------------------------ */
/* 
 * reads : p_1879->g_14.f0 p_1879->g_76 p_1879->g_39 p_1879->g_85 p_1879->g_13 p_1879->g_87 p_1879->g_47 p_1879->g_110 p_1879->g_14 p_1879->g_123 p_1879->g_159 p_1879->g_160 p_1879->g_178 p_1879->g_180 p_1879->g_197 p_1879->g_202 p_1879->g_11 p_1879->g_256 p_1879->g_214 p_1879->g_263 p_1879->g_292 p_1879->g_256.f0 p_1879->g_299 p_1879->g_224
 * writes: p_1879->g_76 p_1879->g_85 p_1879->g_87 p_1879->g_106 p_1879->g_47 p_1879->g_110 p_1879->g_160 p_1879->g_178 p_1879->g_180 p_1879->g_198 p_1879->g_13 p_1879->g_11 p_1879->g_214 p_1879->g_39 p_1879->g_224 p_1879->g_14.f0 p_1879->g_263 p_1879->g_288 p_1879->g_292
 */
int32_t * func_40(int32_t * p_41, int8_t ** p_42, int32_t * p_43, int32_t  p_44, int32_t * p_45, struct S5 * p_1879)
{ /* block id: 8 */
    int8_t *l_58 = &p_1879->g_39;
    uint32_t *l_75 = &p_1879->g_76;
    union U2 l_82 = {0L};
    int32_t l_83 = 0L;
    uint32_t *l_84 = &p_1879->g_85;
    uint8_t l_86[6][3][5] = {{{0x32L,0x9BL,0UL,4UL,0x32L},{0x32L,0x9BL,0UL,4UL,0x32L},{0x32L,0x9BL,0UL,4UL,0x32L}},{{0x32L,0x9BL,0UL,4UL,0x32L},{0x32L,0x9BL,0UL,4UL,0x32L},{0x32L,0x9BL,0UL,4UL,0x32L}},{{0x32L,0x9BL,0UL,4UL,0x32L},{0x32L,0x9BL,0UL,4UL,0x32L},{0x32L,0x9BL,0UL,4UL,0x32L}},{{0x32L,0x9BL,0UL,4UL,0x32L},{0x32L,0x9BL,0UL,4UL,0x32L},{0x32L,0x9BL,0UL,4UL,0x32L}},{{0x32L,0x9BL,0UL,4UL,0x32L},{0x32L,0x9BL,0UL,4UL,0x32L},{0x32L,0x9BL,0UL,4UL,0x32L}},{{0x32L,0x9BL,0UL,4UL,0x32L},{0x32L,0x9BL,0UL,4UL,0x32L},{0x32L,0x9BL,0UL,4UL,0x32L}}};
    int32_t l_235 = 0x508459D8L;
    int32_t l_238 = 0x6F03AABBL;
    int32_t l_307[5];
    uint8_t l_316 = 1UL;
    int i, j, k;
    for (i = 0; i < 5; i++)
        l_307[i] = 0x681986E9L;
    (*p_45) = func_49(p_1879->g_14[2].f0, p_44, (func_54(l_58, (safe_rshift_func_int16_t_s_s(0x54D3L, ((safe_mul_func_int8_t_s_s((((*l_84) |= ((safe_rshift_func_uint16_t_u_s((safe_mod_func_int64_t_s_s((safe_div_func_uint16_t_u_u(((safe_mul_func_uint8_t_u_u((safe_mul_func_int8_t_s_s(((void*)0 == p_42), (safe_mul_func_int16_t_s_s(p_44, ((~((*l_75)++)) < (safe_div_func_uint16_t_u_u((safe_unary_minus_func_int16_t_s((((l_82 , p_41) != l_75) < p_1879->g_39))), l_82.f0))))))), p_1879->g_14[2].f0)) != 0L), p_1879->g_14[2].f0)), p_44)), 13)) >= l_83)) , 0x1FL), l_86[3][0][4])) , p_1879->g_13))), p_1879->g_87, p_1879) , l_83), p_44, p_1879);
    for (p_44 = 0; (p_44 != 16); p_44 = safe_add_func_uint64_t_u_u(p_44, 7))
    { /* block id: 37 */
        uint32_t *l_174 = (void*)0;
        int8_t **l_183 = &l_58;
        uint64_t l_189 = 1UL;
        int64_t *l_215 = &p_1879->g_11;
        int32_t l_233 = 0x0F03CA48L;
        int32_t l_236 = (-8L);
        int32_t l_237 = 0x13164FACL;
        uint16_t l_239 = 0xE60BL;
        int64_t l_246 = 0x42B0BF3EEE9F640BL;
        uint8_t *l_260 = (void*)0;
        uint8_t *l_261[5];
        uint16_t *l_262 = &l_239;
        int i;
        for (i = 0; i < 5; i++)
            l_261[i] = (void*)0;
        for (p_1879->g_76 = 1; (p_1879->g_76 <= 5); p_1879->g_76 += 1)
        { /* block id: 40 */
            uint64_t l_177[2][10][3] = {{{1UL,0x9D9AFFEC7DE130CBL,0x4C324AB99CF72C58L},{1UL,0x9D9AFFEC7DE130CBL,0x4C324AB99CF72C58L},{1UL,0x9D9AFFEC7DE130CBL,0x4C324AB99CF72C58L},{1UL,0x9D9AFFEC7DE130CBL,0x4C324AB99CF72C58L},{1UL,0x9D9AFFEC7DE130CBL,0x4C324AB99CF72C58L},{1UL,0x9D9AFFEC7DE130CBL,0x4C324AB99CF72C58L},{1UL,0x9D9AFFEC7DE130CBL,0x4C324AB99CF72C58L},{1UL,0x9D9AFFEC7DE130CBL,0x4C324AB99CF72C58L},{1UL,0x9D9AFFEC7DE130CBL,0x4C324AB99CF72C58L},{1UL,0x9D9AFFEC7DE130CBL,0x4C324AB99CF72C58L}},{{1UL,0x9D9AFFEC7DE130CBL,0x4C324AB99CF72C58L},{1UL,0x9D9AFFEC7DE130CBL,0x4C324AB99CF72C58L},{1UL,0x9D9AFFEC7DE130CBL,0x4C324AB99CF72C58L},{1UL,0x9D9AFFEC7DE130CBL,0x4C324AB99CF72C58L},{1UL,0x9D9AFFEC7DE130CBL,0x4C324AB99CF72C58L},{1UL,0x9D9AFFEC7DE130CBL,0x4C324AB99CF72C58L},{1UL,0x9D9AFFEC7DE130CBL,0x4C324AB99CF72C58L},{1UL,0x9D9AFFEC7DE130CBL,0x4C324AB99CF72C58L},{1UL,0x9D9AFFEC7DE130CBL,0x4C324AB99CF72C58L},{1UL,0x9D9AFFEC7DE130CBL,0x4C324AB99CF72C58L}}};
            int8_t **l_190 = &p_1879->g_88;
            int32_t *l_196 = &p_1879->g_160;
            int64_t *l_209 = &p_1879->g_11;
            int32_t l_234[2];
            int i, j, k;
            for (i = 0; i < 2; i++)
                l_234[i] = (-9L);
            for (p_1879->g_160 = 0; (p_1879->g_160 <= 5); p_1879->g_160 += 1)
            { /* block id: 43 */
                uint32_t l_163 = 4294967288UL;
                int16_t *l_179 = &p_1879->g_180;
                (*p_45) |= (p_1879->g_160 ^ l_163);
                if (((*p_45) ^= (*p_1879->g_159)))
                { /* block id: 46 */
                    for (l_83 = 0; (l_83 <= 2); l_83 += 1)
                    { /* block id: 49 */
                        int32_t *l_165 = &p_1879->g_160;
                        int32_t **l_164 = &l_165;
                        (*l_164) = &p_1879->g_160;
                    }
                }
                else
                { /* block id: 52 */
                    int32_t *l_167 = &p_1879->g_47;
                    int32_t **l_166 = &l_167;
                    (*l_166) = p_45;
                    if ((*p_1879->g_159))
                        break;
                    return &p_1879->g_13;
                }
                (*p_43) &= (safe_lshift_func_int8_t_s_u((safe_sub_func_int8_t_s_s(0x3FL, (safe_mul_func_uint16_t_u_u(((void*)0 == l_174), ((*l_179) &= (p_1879->g_178 ^= (safe_rshift_func_uint16_t_u_u((((((void*)0 == l_174) & (l_82.f0 != 0x0903L)) , (p_44 | p_1879->g_85)) , l_177[0][3][1]), 9)))))))), p_1879->g_39));
            }
            for (p_1879->g_178 = 0; (p_1879->g_178 <= 2); p_1879->g_178 += 1)
            { /* block id: 63 */
                int16_t *l_193 = &p_1879->g_180;
                int64_t *l_210 = (void*)0;
                int32_t l_220 = 6L;
                if ((safe_sub_func_int8_t_s_s((l_183 == ((((*p_43) = (+(safe_unary_minus_func_int16_t_s(((l_82 , ((safe_lshift_func_uint16_t_u_u((safe_rshift_func_int8_t_s_u((!0L), 4)), 1)) , (*p_42))) != ((*l_183) = l_58)))))) | l_189) , l_190)), (((safe_sub_func_int16_t_s_s(((*l_193) = (FAKE_DIVERGE(p_1879->local_0_offset, get_local_id(0), 10) , (4L & p_1879->g_14[2].f0))), p_44)) , (void*)0) != &p_1879->g_76))))
                { /* block id: 67 */
                    int16_t **l_194 = &l_193;
                    uint32_t l_222[1];
                    int i;
                    for (i = 0; i < 1; i++)
                        l_222[i] = 0x2951BB2AL;
                    for (l_189 = 0; (l_189 <= 5); l_189 += 1)
                    { /* block id: 70 */
                        int16_t **l_195 = &l_193;
                        l_195 = l_194;
                        (*p_1879->g_197) = l_196;
                    }
                    for (p_1879->g_13 = 0; (p_1879->g_13 <= 5); p_1879->g_13 += 1)
                    { /* block id: 76 */
                        int8_t l_199 = 0x0BL;
                        if (l_199)
                            break;
                    }
                    for (p_1879->g_180 = 5; (p_1879->g_180 >= 0); p_1879->g_180 -= 1)
                    { /* block id: 81 */
                        int64_t *l_206 = &p_1879->g_11;
                        int64_t **l_211 = (void*)0;
                        int64_t **l_212 = &l_209;
                        int32_t *l_213 = &p_1879->g_214;
                        uint32_t l_221 = 0xDCECE18AL;
                        int8_t *l_223 = &p_1879->g_224;
                        int i, j, k;
                        (*l_196) = ((safe_lshift_func_int16_t_s_s(((l_86[p_1879->g_178][p_1879->g_178][p_1879->g_178] = ((p_1879->g_202 , (0x25L <= 0x38L)) > (+(((((*l_223) = ((**l_183) &= ((safe_rshift_func_int8_t_s_u((safe_unary_minus_func_int16_t_s(((((*l_206) &= 1L) || (&p_41 == (((safe_mod_func_int32_t_s_s((((((+(((*l_212) = (l_210 = l_209)) != (l_215 = (((*l_213) = p_1879->g_178) , &p_1879->g_11)))) >= (safe_rshift_func_int8_t_s_u(((safe_sub_func_uint32_t_u_u(l_220, FAKE_DIVERGE(p_1879->global_2_offset, get_global_id(2), 10))) <= l_221), 5))) | l_222[0]) > l_222[0]) != p_44), 0x24BA7749L)) >= p_1879->g_160) , &p_1879->g_198[1]))) , p_44))), l_189)) > (-10L)))) | 0x44L) && p_44) , 0x5FL)))) > FAKE_DIVERGE(p_1879->group_0_offset, get_group_id(0), 10)), p_44)) & p_1879->g_85);
                        return p_45;
                    }
                }
                else
                { /* block id: 93 */
                    int32_t *l_225 = &p_1879->g_160;
                    int32_t *l_226 = (void*)0;
                    int32_t *l_227 = &p_1879->g_47;
                    int32_t *l_228 = (void*)0;
                    int32_t *l_229 = &p_1879->g_47;
                    int32_t *l_230 = &l_220;
                    int32_t *l_231 = (void*)0;
                    int32_t *l_232[6][1][3] = {{{(void*)0,&l_220,&l_220}},{{(void*)0,&l_220,&l_220}},{{(void*)0,&l_220,&l_220}},{{(void*)0,&l_220,&l_220}},{{(void*)0,&l_220,&l_220}},{{(void*)0,&l_220,&l_220}}};
                    int i, j, k;
                    l_239--;
                    return &p_1879->g_13;
                }
            }
        }
        l_236 ^= (safe_lshift_func_uint8_t_u_u(((safe_rshift_func_int8_t_s_u(((((l_174 != &p_1879->g_13) && l_246) || (safe_unary_minus_func_int32_t_s((safe_mul_func_uint16_t_u_u((((safe_lshift_func_uint16_t_u_s(((*l_262) |= (safe_rshift_func_int8_t_s_s(((((safe_mod_func_uint64_t_u_u((+(p_1879->g_256 , (safe_add_func_uint64_t_u_u(((-1L) < l_82.f0), l_246)))), (safe_unary_minus_func_uint16_t_u((FAKE_DIVERGE(p_1879->local_2_offset, get_local_id(2), 10) < (p_1879->g_14[2].f0 &= l_233)))))) , ((void*)0 == l_174)) <= FAKE_DIVERGE(p_1879->group_1_offset, get_group_id(1), 10)) ^ p_1879->g_214), 0))), 11)) , 4294967292UL) <= (*p_43)), p_44))))) != p_1879->g_11), p_44)) > (**p_42)), 0));
        for (l_238 = 0; (l_238 <= 4); l_238 += 1)
        { /* block id: 104 */
            return l_174;
        }
        for (p_1879->g_214 = 1; (p_1879->g_214 <= 4); p_1879->g_214 += 1)
        { /* block id: 109 */
            uint32_t l_264 = 0x71A6DB7CL;
            uint8_t l_277 = 0xD0L;
            (*p_45) = ((l_264 |= p_1879->g_263) , (safe_add_func_int64_t_s_s((p_1879->g_214 == ((safe_add_func_uint8_t_u_u(0x23L, l_264)) | ((((safe_lshift_func_int16_t_s_s((18446744073709551610UL && ((safe_rshift_func_uint16_t_u_u(((safe_rshift_func_uint16_t_u_s((safe_lshift_func_int8_t_s_s(l_233, 7)), 4)) || ((((*p_1879->g_159) = l_239) , p_1879->g_14[2].f0) <= ((*p_43) < (*p_45)))), 0)) , p_1879->g_214)), l_277)) <= p_44) ^ 0xE8L) == 0x7531F4ECL))), p_44)));
        }
    }
    for (p_1879->g_263 = (-9); (p_1879->g_263 > 14); p_1879->g_263 = safe_add_func_int16_t_s_s(p_1879->g_263, 4))
    { /* block id: 117 */
        uint32_t l_286 = 4294967286UL;
        uint64_t *l_287[4][4] = {{&p_1879->g_288,&p_1879->g_288,&p_1879->g_288,&p_1879->g_288},{&p_1879->g_288,&p_1879->g_288,&p_1879->g_288,&p_1879->g_288},{&p_1879->g_288,&p_1879->g_288,&p_1879->g_288,&p_1879->g_288},{&p_1879->g_288,&p_1879->g_288,&p_1879->g_288,&p_1879->g_288}};
        uint64_t *l_291 = &p_1879->g_292;
        int32_t **l_300 = (void*)0;
        int32_t **l_301 = &p_1879->g_198[1];
        int i, j;
        (*p_43) = ((~(safe_div_func_int32_t_s_s((((safe_rshift_func_int8_t_s_s((((*l_75) = ((void*)0 != &p_1879->g_198[2])) <= (*p_45)), 4)) > (((safe_div_func_uint64_t_u_u((p_1879->g_288 = (l_238 ^ l_286)), (safe_div_func_int8_t_s_s((**p_42), (l_86[3][0][4] && (~((((--(*l_291)) , (+((safe_rshift_func_uint16_t_u_s((safe_mod_func_int8_t_s_s(((l_286 | 4294967295UL) | p_1879->g_256.f0), p_44)), 9)) && (-1L)))) > p_1879->g_178) < 0x947417E1L))))))) ^ p_1879->g_214) , p_1879->g_299)) == l_286), l_86[3][0][4]))) != 0xDCD8L);
        p_43 = ((*l_301) = p_43);
    }
    for (p_1879->g_224 = 0; (p_1879->g_224 == (-3)); p_1879->g_224 = safe_sub_func_uint8_t_u_u(p_1879->g_224, 4))
    { /* block id: 127 */
        int32_t l_306 = 1L;
        int32_t l_308 = 4L;
        int32_t l_309 = 0L;
        int32_t l_310 = 0x1EDC76D6L;
        int32_t l_311 = 0x5C97C7E4L;
        int32_t l_312 = 0x6670F88BL;
        int32_t l_313 = (-1L);
        int32_t l_314 = 1L;
        int32_t l_315 = 1L;
        for (l_235 = 2; (l_235 >= 0); l_235 -= 1)
        { /* block id: 130 */
            int32_t *l_304[10] = {&p_1879->g_47,&p_1879->g_47,&p_1879->g_47,&p_1879->g_47,&p_1879->g_47,&p_1879->g_47,&p_1879->g_47,&p_1879->g_47,&p_1879->g_47,&p_1879->g_47};
            int32_t l_305 = 1L;
            int i;
            ++l_316;
        }
    }
    return &p_1879->g_13;
}


/* ------------------------------------------ */
/* 
 * reads : p_1879->g_123 p_1879->g_85 p_1879->g_47 p_1879->g_13 p_1879->g_110 p_1879->g_159
 * writes: p_1879->g_47 p_1879->g_76 p_1879->g_160
 */
int32_t  func_49(uint32_t  p_50, int32_t  p_51, int16_t  p_52, uint64_t  p_53, struct S5 * p_1879)
{ /* block id: 27 */
    int8_t l_122 = (-3L);
    int32_t l_124[8][5] = {{0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L}};
    int32_t *l_125 = &p_1879->g_47;
    uint32_t *l_156 = (void*)0;
    uint32_t *l_157 = &p_1879->g_76;
    int64_t l_158[5];
    int i, j;
    for (i = 0; i < 5; i++)
        l_158[i] = 0x4871B159BD2BB863L;
    (*l_125) &= (l_122 >= ((l_124[3][4] = (p_1879->g_123 , p_1879->g_85)) <= l_122));
    (*p_1879->g_159) = ((((safe_div_func_int16_t_s_s((safe_div_func_uint32_t_u_u((safe_lshift_func_uint16_t_u_u((safe_rshift_func_int16_t_s_s(((((safe_add_func_int16_t_s_s((safe_add_func_int8_t_s_s((((void*)0 == &p_51) == (safe_div_func_uint8_t_u_u((safe_rshift_func_uint8_t_u_u((((safe_div_func_uint32_t_u_u((safe_mod_func_int16_t_s_s((safe_add_func_uint32_t_u_u(((void*)0 == &p_1879->g_13), ((FAKE_DIVERGE(p_1879->group_0_offset, get_group_id(0), 10) | ((*l_157) = ((*l_125) = (((*l_125) & (safe_mul_func_int8_t_s_s((safe_mul_func_uint8_t_u_u((((void*)0 != &p_1879->g_47) <= (safe_add_func_uint8_t_u_u((safe_mod_func_int8_t_s_s(0x51L, 0x74L)), 0x12L))), (*l_125))), (*l_125)))) <= (*l_125))))) != p_50))), p_50)), FAKE_DIVERGE(p_1879->group_1_offset, get_group_id(1), 10))) ^ p_52) > 0UL), 7)), 5L))), 0x03L)), p_50)) , 1L) , 0x25F292E68823E01FL) > p_1879->g_13), 15)), 6)), 1UL)), 8UL)) ^ 0xA6CC7B1BL) | p_1879->g_110) || l_158[2]);
    return p_52;
}


/* ------------------------------------------ */
/* 
 * reads : p_1879->g_47 p_1879->g_39 p_1879->g_110 p_1879->g_13 p_1879->g_76 p_1879->g_85 p_1879->g_14.f0 p_1879->g_14
 * writes: p_1879->g_87 p_1879->g_76 p_1879->g_106 p_1879->g_47 p_1879->g_110
 */
union U1  func_54(int8_t * p_55, int16_t  p_56, int8_t ** p_57, struct S5 * p_1879)
{ /* block id: 11 */
    int32_t *l_89[10] = {&p_1879->g_47,&p_1879->g_47,&p_1879->g_47,&p_1879->g_47,&p_1879->g_47,&p_1879->g_47,&p_1879->g_47,&p_1879->g_47,&p_1879->g_47,&p_1879->g_47};
    int32_t **l_90 = &l_89[4];
    int8_t ***l_96 = &p_1879->g_87;
    union U1 l_99 = {0x11L};
    int i;
    (*l_90) = l_89[4];
    if ((((((safe_unary_minus_func_int16_t_s((**l_90))) || (safe_lshift_func_uint8_t_u_s((&p_1879->g_85 == l_89[1]), 3))) >= ((safe_mod_func_uint8_t_u_u(0x54L, (*p_55))) < ((void*)0 == &l_89[4]))) , &p_55) != ((*l_96) = &p_55)))
    { /* block id: 14 */
        uint8_t l_100 = 0x12L;
        uint32_t *l_101 = (void*)0;
        uint32_t *l_102[9] = {&p_1879->g_76,&p_1879->g_76,&p_1879->g_76,&p_1879->g_76,&p_1879->g_76,&p_1879->g_76,&p_1879->g_76,&p_1879->g_76,&p_1879->g_76};
        int8_t **l_105 = &p_1879->g_88;
        int8_t **l_108 = (void*)0;
        int8_t ***l_107 = &l_108;
        int32_t l_109[6];
        int i;
        for (i = 0; i < 6; i++)
            l_109[i] = 0x5A1B12C1L;
        (**l_90) = ((safe_div_func_uint8_t_u_u((p_56 <= (p_1879->g_76 = (0x22FDL >= (((l_99 , &p_1879->g_47) == (void*)0) <= l_100)))), (safe_mod_func_int16_t_s_s((p_56 == (((*l_96) = l_105) == ((*l_107) = (p_1879->g_106[0][2] = &p_1879->g_88)))), l_100)))) && l_100);
        --p_1879->g_110;
    }
    else
    { /* block id: 21 */
        int32_t *l_117 = &p_1879->g_13;
        uint32_t *l_118 = (void*)0;
        uint32_t *l_119 = (void*)0;
        uint32_t *l_120 = &p_1879->g_76;
        int32_t l_121 = 0x05A861DEL;
        l_121 ^= (((void*)0 == &p_1879->g_106[0][2]) >= ((*l_120) = (((p_1879->g_13 == 65530UL) <= (p_1879->g_76 && (p_56 > (**l_90)))) <= (0xDD4D5FF68F1F7CC5L > (safe_sub_func_int64_t_s_s((safe_add_func_uint8_t_u_u((l_117 == (void*)0), p_1879->g_85)), p_1879->g_14[2].f0))))));
    }
    (**l_90) |= p_1879->g_13;
    return p_1879->g_14[2];
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S5 c_1880;
    struct S5* p_1879 = &c_1880;
    struct S5 c_1881 = {
        1L, // p_1879->g_11
        (-1L), // p_1879->g_13
        {{0UL},{0UL},{0UL},{0UL},{0UL},{0UL}}, // p_1879->g_14
        0x30L, // p_1879->g_39
        0x01E16845L, // p_1879->g_47
        0xF548F9F0L, // p_1879->g_76
        0UL, // p_1879->g_85
        (void*)0, // p_1879->g_88
        &p_1879->g_88, // p_1879->g_87
        {{&p_1879->g_88,&p_1879->g_88,&p_1879->g_88}}, // p_1879->g_106
        0x99L, // p_1879->g_110
        {0}, // p_1879->g_123
        (-10L), // p_1879->g_160
        &p_1879->g_160, // p_1879->g_159
        4294967295UL, // p_1879->g_178
        0x764FL, // p_1879->g_180
        {&p_1879->g_47,&p_1879->g_47,&p_1879->g_47}, // p_1879->g_198
        &p_1879->g_198[1], // p_1879->g_197
        {0x65D7L}, // p_1879->g_202
        0x589615D4L, // p_1879->g_214
        0x06L, // p_1879->g_224
        {-7L}, // p_1879->g_256
        0x02L, // p_1879->g_263
        18446744073709551615UL, // p_1879->g_288
        0UL, // p_1879->g_292
        0xAC72715D12D353DEL, // p_1879->g_299
        {&p_1879->g_13,&p_1879->g_13,&p_1879->g_13,&p_1879->g_13}, // p_1879->g_321
        0x39E7D250L, // p_1879->g_323
        &p_1879->g_323, // p_1879->g_322
        9UL, // p_1879->g_327
        {{0},{0},{0},{0},{0},{0},{0},{0}}, // p_1879->g_346
        0x1B10L, // p_1879->g_354
        (-1L), // p_1879->g_424
        1UL, // p_1879->g_425
        0xC70E43D8L, // p_1879->g_427
        0x6D73L, // p_1879->g_428
        {&p_1879->g_198[0],&p_1879->g_198[0],&p_1879->g_198[0],&p_1879->g_198[0],&p_1879->g_198[0],&p_1879->g_198[0]}, // p_1879->g_451
        {0L}, // p_1879->g_470
        {&p_1879->g_321[2],&p_1879->g_321[2],&p_1879->g_321[2],&p_1879->g_321[2],&p_1879->g_321[2]}, // p_1879->g_476
        &p_1879->g_476[1], // p_1879->g_475
        (void*)0, // p_1879->g_480
        {&p_1879->g_480,(void*)0,&p_1879->g_480,&p_1879->g_480,(void*)0,&p_1879->g_480,&p_1879->g_480}, // p_1879->g_479
        {-1L}, // p_1879->g_522
        (void*)0, // p_1879->g_524
        &p_1879->g_524, // p_1879->g_523
        0x9F77L, // p_1879->g_593
        &p_1879->g_88, // p_1879->g_633
        {-3L}, // p_1879->g_688
        {0x1EA2L}, // p_1879->g_695
        {-6L}, // p_1879->g_698
        {0L,0L,0L,0L,0L}, // p_1879->g_723
        0x6F3C8EA2L, // p_1879->g_726
        &p_1879->g_726, // p_1879->g_725
        &p_1879->g_725, // p_1879->g_724
        &p_1879->g_47, // p_1879->g_730
        {&p_1879->g_730,&p_1879->g_730,&p_1879->g_730,&p_1879->g_730,&p_1879->g_730}, // p_1879->g_729
        (void*)0, // p_1879->g_731
        (void*)0, // p_1879->g_734
        &p_1879->g_698.f2, // p_1879->g_744
        {0L}, // p_1879->g_823
        (-1L), // p_1879->g_834
        &p_1879->g_834, // p_1879->g_833
        &p_1879->g_833, // p_1879->g_835
        {0}, // p_1879->g_873
        {{{3UL,4294967287UL,0x16D8CC5AL,0x5FE9264BL,2UL,3UL,0x5FE9264BL,0x8E85A81BL},{3UL,4294967287UL,0x16D8CC5AL,0x5FE9264BL,2UL,3UL,0x5FE9264BL,0x8E85A81BL},{3UL,4294967287UL,0x16D8CC5AL,0x5FE9264BL,2UL,3UL,0x5FE9264BL,0x8E85A81BL}},{{3UL,4294967287UL,0x16D8CC5AL,0x5FE9264BL,2UL,3UL,0x5FE9264BL,0x8E85A81BL},{3UL,4294967287UL,0x16D8CC5AL,0x5FE9264BL,2UL,3UL,0x5FE9264BL,0x8E85A81BL},{3UL,4294967287UL,0x16D8CC5AL,0x5FE9264BL,2UL,3UL,0x5FE9264BL,0x8E85A81BL}},{{3UL,4294967287UL,0x16D8CC5AL,0x5FE9264BL,2UL,3UL,0x5FE9264BL,0x8E85A81BL},{3UL,4294967287UL,0x16D8CC5AL,0x5FE9264BL,2UL,3UL,0x5FE9264BL,0x8E85A81BL},{3UL,4294967287UL,0x16D8CC5AL,0x5FE9264BL,2UL,3UL,0x5FE9264BL,0x8E85A81BL}},{{3UL,4294967287UL,0x16D8CC5AL,0x5FE9264BL,2UL,3UL,0x5FE9264BL,0x8E85A81BL},{3UL,4294967287UL,0x16D8CC5AL,0x5FE9264BL,2UL,3UL,0x5FE9264BL,0x8E85A81BL},{3UL,4294967287UL,0x16D8CC5AL,0x5FE9264BL,2UL,3UL,0x5FE9264BL,0x8E85A81BL}},{{3UL,4294967287UL,0x16D8CC5AL,0x5FE9264BL,2UL,3UL,0x5FE9264BL,0x8E85A81BL},{3UL,4294967287UL,0x16D8CC5AL,0x5FE9264BL,2UL,3UL,0x5FE9264BL,0x8E85A81BL},{3UL,4294967287UL,0x16D8CC5AL,0x5FE9264BL,2UL,3UL,0x5FE9264BL,0x8E85A81BL}}}, // p_1879->g_882
        &p_1879->g_11, // p_1879->g_924
        &p_1879->g_924, // p_1879->g_923
        {0x68L}, // p_1879->g_931
        {0x5BL}, // p_1879->g_950
        (void*)0, // p_1879->g_957
        {{&p_1879->g_957,&p_1879->g_957,&p_1879->g_957,&p_1879->g_957,&p_1879->g_957,&p_1879->g_957},{&p_1879->g_957,&p_1879->g_957,&p_1879->g_957,&p_1879->g_957,&p_1879->g_957,&p_1879->g_957},{&p_1879->g_957,&p_1879->g_957,&p_1879->g_957,&p_1879->g_957,&p_1879->g_957,&p_1879->g_957},{&p_1879->g_957,&p_1879->g_957,&p_1879->g_957,&p_1879->g_957,&p_1879->g_957,&p_1879->g_957},{&p_1879->g_957,&p_1879->g_957,&p_1879->g_957,&p_1879->g_957,&p_1879->g_957,&p_1879->g_957},{&p_1879->g_957,&p_1879->g_957,&p_1879->g_957,&p_1879->g_957,&p_1879->g_957,&p_1879->g_957}}, // p_1879->g_956
        0xB016L, // p_1879->g_962
        {{&p_1879->g_198[1],(void*)0,&p_1879->g_198[1],&p_1879->g_198[0],&p_1879->g_198[1],(void*)0,&p_1879->g_198[1],&p_1879->g_730,&p_1879->g_198[1],&p_1879->g_198[1]},{&p_1879->g_198[1],(void*)0,&p_1879->g_198[1],&p_1879->g_198[0],&p_1879->g_198[1],(void*)0,&p_1879->g_198[1],&p_1879->g_730,&p_1879->g_198[1],&p_1879->g_198[1]},{&p_1879->g_198[1],(void*)0,&p_1879->g_198[1],&p_1879->g_198[0],&p_1879->g_198[1],(void*)0,&p_1879->g_198[1],&p_1879->g_730,&p_1879->g_198[1],&p_1879->g_198[1]},{&p_1879->g_198[1],(void*)0,&p_1879->g_198[1],&p_1879->g_198[0],&p_1879->g_198[1],(void*)0,&p_1879->g_198[1],&p_1879->g_730,&p_1879->g_198[1],&p_1879->g_198[1]},{&p_1879->g_198[1],(void*)0,&p_1879->g_198[1],&p_1879->g_198[0],&p_1879->g_198[1],(void*)0,&p_1879->g_198[1],&p_1879->g_730,&p_1879->g_198[1],&p_1879->g_198[1]},{&p_1879->g_198[1],(void*)0,&p_1879->g_198[1],&p_1879->g_198[0],&p_1879->g_198[1],(void*)0,&p_1879->g_198[1],&p_1879->g_730,&p_1879->g_198[1],&p_1879->g_198[1]},{&p_1879->g_198[1],(void*)0,&p_1879->g_198[1],&p_1879->g_198[0],&p_1879->g_198[1],(void*)0,&p_1879->g_198[1],&p_1879->g_730,&p_1879->g_198[1],&p_1879->g_198[1]},{&p_1879->g_198[1],(void*)0,&p_1879->g_198[1],&p_1879->g_198[0],&p_1879->g_198[1],(void*)0,&p_1879->g_198[1],&p_1879->g_730,&p_1879->g_198[1],&p_1879->g_198[1]},{&p_1879->g_198[1],(void*)0,&p_1879->g_198[1],&p_1879->g_198[0],&p_1879->g_198[1],(void*)0,&p_1879->g_198[1],&p_1879->g_730,&p_1879->g_198[1],&p_1879->g_198[1]}}, // p_1879->g_974
        (void*)0, // p_1879->g_975
        &p_1879->g_198[1], // p_1879->g_976
        0L, // p_1879->g_1047
        &p_1879->g_950, // p_1879->g_1086
        {1L}, // p_1879->g_1172
        &p_1879->g_522, // p_1879->g_1175
        &p_1879->g_1175, // p_1879->g_1174
        {&p_1879->g_698,&p_1879->g_698,&p_1879->g_698,&p_1879->g_698}, // p_1879->g_1181
        &p_1879->g_1181[2], // p_1879->g_1180
        &p_1879->g_14[2].f0, // p_1879->g_1225
        {{{&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225},{&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225},{&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225}},{{&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225},{&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225},{&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225}},{{&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225},{&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225},{&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225}},{{&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225},{&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225},{&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225}},{{&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225},{&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225},{&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225}},{{&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225},{&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225},{&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225}},{{&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225},{&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225},{&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225}},{{&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225},{&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225},{&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225}},{{&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225},{&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225},{&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225,&p_1879->g_1225}}}, // p_1879->g_1224
        &p_1879->g_1224[2][2][2], // p_1879->g_1223
        4294967291UL, // p_1879->g_1304
        {-10L}, // p_1879->g_1307
        &p_1879->g_1181[2], // p_1879->g_1324
        {&p_1879->g_730,&p_1879->g_730}, // p_1879->g_1326
        {&p_1879->g_292}, // p_1879->g_1330
        &p_1879->g_1330[0], // p_1879->g_1329
        {{{&p_1879->g_451[3],(void*)0,&p_1879->g_451[3],&p_1879->g_451[3]},{&p_1879->g_451[3],(void*)0,&p_1879->g_451[3],&p_1879->g_451[3]}},{{&p_1879->g_451[3],(void*)0,&p_1879->g_451[3],&p_1879->g_451[3]},{&p_1879->g_451[3],(void*)0,&p_1879->g_451[3],&p_1879->g_451[3]}},{{&p_1879->g_451[3],(void*)0,&p_1879->g_451[3],&p_1879->g_451[3]},{&p_1879->g_451[3],(void*)0,&p_1879->g_451[3],&p_1879->g_451[3]}},{{&p_1879->g_451[3],(void*)0,&p_1879->g_451[3],&p_1879->g_451[3]},{&p_1879->g_451[3],(void*)0,&p_1879->g_451[3],&p_1879->g_451[3]}},{{&p_1879->g_451[3],(void*)0,&p_1879->g_451[3],&p_1879->g_451[3]},{&p_1879->g_451[3],(void*)0,&p_1879->g_451[3],&p_1879->g_451[3]}},{{&p_1879->g_451[3],(void*)0,&p_1879->g_451[3],&p_1879->g_451[3]},{&p_1879->g_451[3],(void*)0,&p_1879->g_451[3],&p_1879->g_451[3]}},{{&p_1879->g_451[3],(void*)0,&p_1879->g_451[3],&p_1879->g_451[3]},{&p_1879->g_451[3],(void*)0,&p_1879->g_451[3],&p_1879->g_451[3]}},{{&p_1879->g_451[3],(void*)0,&p_1879->g_451[3],&p_1879->g_451[3]},{&p_1879->g_451[3],(void*)0,&p_1879->g_451[3],&p_1879->g_451[3]}},{{&p_1879->g_451[3],(void*)0,&p_1879->g_451[3],&p_1879->g_451[3]},{&p_1879->g_451[3],(void*)0,&p_1879->g_451[3],&p_1879->g_451[3]}}}, // p_1879->g_1344
        {{{0x2E04L},{0x2E04L}},{{0x2E04L},{0x2E04L}},{{0x2E04L},{0x2E04L}},{{0x2E04L},{0x2E04L}},{{0x2E04L},{0x2E04L}},{{0x2E04L},{0x2E04L}},{{0x2E04L},{0x2E04L}},{{0x2E04L},{0x2E04L}},{{0x2E04L},{0x2E04L}}}, // p_1879->g_1366
        0x2D302E45D368FDF5L, // p_1879->g_1378
        {{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)}}, // p_1879->g_1386
        &p_1879->g_1181[2], // p_1879->g_1442
        {0}, // p_1879->g_1449
        {0x11FDL}, // p_1879->g_1466
        {1L}, // p_1879->g_1480
        0L, // p_1879->g_1536
        0xE46115E7L, // p_1879->g_1579
        &p_1879->g_1086, // p_1879->g_1585
        &p_1879->g_950.f0, // p_1879->g_1591
        {&p_1879->g_1591,(void*)0,&p_1879->g_1591,&p_1879->g_1591,(void*)0,&p_1879->g_1591}, // p_1879->g_1590
        &p_1879->g_1590[1], // p_1879->g_1589
        &p_1879->g_1589, // p_1879->g_1588
        &p_1879->g_1588, // p_1879->g_1587
        {{{&p_1879->g_1587,&p_1879->g_1587},{&p_1879->g_1587,&p_1879->g_1587},{&p_1879->g_1587,&p_1879->g_1587},{&p_1879->g_1587,&p_1879->g_1587}},{{&p_1879->g_1587,&p_1879->g_1587},{&p_1879->g_1587,&p_1879->g_1587},{&p_1879->g_1587,&p_1879->g_1587},{&p_1879->g_1587,&p_1879->g_1587}},{{&p_1879->g_1587,&p_1879->g_1587},{&p_1879->g_1587,&p_1879->g_1587},{&p_1879->g_1587,&p_1879->g_1587},{&p_1879->g_1587,&p_1879->g_1587}},{{&p_1879->g_1587,&p_1879->g_1587},{&p_1879->g_1587,&p_1879->g_1587},{&p_1879->g_1587,&p_1879->g_1587},{&p_1879->g_1587,&p_1879->g_1587}},{{&p_1879->g_1587,&p_1879->g_1587},{&p_1879->g_1587,&p_1879->g_1587},{&p_1879->g_1587,&p_1879->g_1587},{&p_1879->g_1587,&p_1879->g_1587}},{{&p_1879->g_1587,&p_1879->g_1587},{&p_1879->g_1587,&p_1879->g_1587},{&p_1879->g_1587,&p_1879->g_1587},{&p_1879->g_1587,&p_1879->g_1587}},{{&p_1879->g_1587,&p_1879->g_1587},{&p_1879->g_1587,&p_1879->g_1587},{&p_1879->g_1587,&p_1879->g_1587},{&p_1879->g_1587,&p_1879->g_1587}}}, // p_1879->g_1586
        0x558BL, // p_1879->g_1612
        {0}, // p_1879->g_1618
        {{{(-2L),0x77517739L,0L,0x77517739L,(-2L),(-2L),0x77517739L,0L,0x77517739L,(-2L)},{(-2L),0x77517739L,0L,0x77517739L,(-2L),(-2L),0x77517739L,0L,0x77517739L,(-2L)}},{{(-2L),0x77517739L,0L,0x77517739L,(-2L),(-2L),0x77517739L,0L,0x77517739L,(-2L)},{(-2L),0x77517739L,0L,0x77517739L,(-2L),(-2L),0x77517739L,0L,0x77517739L,(-2L)}},{{(-2L),0x77517739L,0L,0x77517739L,(-2L),(-2L),0x77517739L,0L,0x77517739L,(-2L)},{(-2L),0x77517739L,0L,0x77517739L,(-2L),(-2L),0x77517739L,0L,0x77517739L,(-2L)}},{{(-2L),0x77517739L,0L,0x77517739L,(-2L),(-2L),0x77517739L,0L,0x77517739L,(-2L)},{(-2L),0x77517739L,0L,0x77517739L,(-2L),(-2L),0x77517739L,0L,0x77517739L,(-2L)}},{{(-2L),0x77517739L,0L,0x77517739L,(-2L),(-2L),0x77517739L,0L,0x77517739L,(-2L)},{(-2L),0x77517739L,0L,0x77517739L,(-2L),(-2L),0x77517739L,0L,0x77517739L,(-2L)}},{{(-2L),0x77517739L,0L,0x77517739L,(-2L),(-2L),0x77517739L,0L,0x77517739L,(-2L)},{(-2L),0x77517739L,0L,0x77517739L,(-2L),(-2L),0x77517739L,0L,0x77517739L,(-2L)}},{{(-2L),0x77517739L,0L,0x77517739L,(-2L),(-2L),0x77517739L,0L,0x77517739L,(-2L)},{(-2L),0x77517739L,0L,0x77517739L,(-2L),(-2L),0x77517739L,0L,0x77517739L,(-2L)}},{{(-2L),0x77517739L,0L,0x77517739L,(-2L),(-2L),0x77517739L,0L,0x77517739L,(-2L)},{(-2L),0x77517739L,0L,0x77517739L,(-2L),(-2L),0x77517739L,0L,0x77517739L,(-2L)}}}, // p_1879->g_1687
        {&p_1879->g_198[1],&p_1879->g_198[1]}, // p_1879->g_1711
        {0x5CFCL}, // p_1879->g_1719
        {{{0x662FL},{0x5A8DL},{0x662FL},{0x662FL},{0x5A8DL}},{{0x662FL},{0x5A8DL},{0x662FL},{0x662FL},{0x5A8DL}},{{0x662FL},{0x5A8DL},{0x662FL},{0x662FL},{0x5A8DL}},{{0x662FL},{0x5A8DL},{0x662FL},{0x662FL},{0x5A8DL}},{{0x662FL},{0x5A8DL},{0x662FL},{0x662FL},{0x5A8DL}},{{0x662FL},{0x5A8DL},{0x662FL},{0x662FL},{0x5A8DL}},{{0x662FL},{0x5A8DL},{0x662FL},{0x662FL},{0x5A8DL}}}, // p_1879->g_1720
        {{{{0x61F5L}},{{0x61F5L}},{{0x61F5L}},{{0x61F5L}},{{0x61F5L}},{{0x61F5L}}},{{{0x61F5L}},{{0x61F5L}},{{0x61F5L}},{{0x61F5L}},{{0x61F5L}},{{0x61F5L}}},{{{0x61F5L}},{{0x61F5L}},{{0x61F5L}},{{0x61F5L}},{{0x61F5L}},{{0x61F5L}}},{{{0x61F5L}},{{0x61F5L}},{{0x61F5L}},{{0x61F5L}},{{0x61F5L}},{{0x61F5L}}},{{{0x61F5L}},{{0x61F5L}},{{0x61F5L}},{{0x61F5L}},{{0x61F5L}},{{0x61F5L}}},{{{0x61F5L}},{{0x61F5L}},{{0x61F5L}},{{0x61F5L}},{{0x61F5L}},{{0x61F5L}}},{{{0x61F5L}},{{0x61F5L}},{{0x61F5L}},{{0x61F5L}},{{0x61F5L}},{{0x61F5L}}}}, // p_1879->g_1721
        {-1L}, // p_1879->g_1722
        {1L}, // p_1879->g_1723
        {{-7L}}, // p_1879->g_1724
        {-8L}, // p_1879->g_1725
        {0L}, // p_1879->g_1726
        {{6L},{6L},{6L},{6L},{6L},{6L},{6L}}, // p_1879->g_1727
        {0x36C2L}, // p_1879->g_1728
        {0x2FB5L}, // p_1879->g_1729
        {0x352EL}, // p_1879->g_1730
        {0x473FL}, // p_1879->g_1731
        {-1L}, // p_1879->g_1732
        {6L}, // p_1879->g_1733
        {-1L}, // p_1879->g_1734
        {1L}, // p_1879->g_1735
        {9L}, // p_1879->g_1736
        {0x1D2BL}, // p_1879->g_1737
        {{{-6L},{-6L},{-6L},{-6L},{-6L},{-6L},{-6L}},{{-6L},{-6L},{-6L},{-6L},{-6L},{-6L},{-6L}},{{-6L},{-6L},{-6L},{-6L},{-6L},{-6L},{-6L}}}, // p_1879->g_1738
        {0x6726L}, // p_1879->g_1739
        {0x5B89L}, // p_1879->g_1740
        {{{0x75FCL},{1L},{1L},{0x75FCL},{0x75FCL},{1L}},{{0x75FCL},{1L},{1L},{0x75FCL},{0x75FCL},{1L}},{{0x75FCL},{1L},{1L},{0x75FCL},{0x75FCL},{1L}},{{0x75FCL},{1L},{1L},{0x75FCL},{0x75FCL},{1L}},{{0x75FCL},{1L},{1L},{0x75FCL},{0x75FCL},{1L}},{{0x75FCL},{1L},{1L},{0x75FCL},{0x75FCL},{1L}},{{0x75FCL},{1L},{1L},{0x75FCL},{0x75FCL},{1L}},{{0x75FCL},{1L},{1L},{0x75FCL},{0x75FCL},{1L}},{{0x75FCL},{1L},{1L},{0x75FCL},{0x75FCL},{1L}},{{0x75FCL},{1L},{1L},{0x75FCL},{0x75FCL},{1L}}}, // p_1879->g_1741
        {-7L}, // p_1879->g_1742
        {0x14ABL}, // p_1879->g_1743
        {0x3331L}, // p_1879->g_1744
        {{{{-8L}},{{-8L}},{{-8L}},{{-8L}}},{{{-8L}},{{-8L}},{{-8L}},{{-8L}}},{{{-8L}},{{-8L}},{{-8L}},{{-8L}}},{{{-8L}},{{-8L}},{{-8L}},{{-8L}}},{{{-8L}},{{-8L}},{{-8L}},{{-8L}}},{{{-8L}},{{-8L}},{{-8L}},{{-8L}}},{{{-8L}},{{-8L}},{{-8L}},{{-8L}}},{{{-8L}},{{-8L}},{{-8L}},{{-8L}}}}, // p_1879->g_1745
        {0x7CF6L}, // p_1879->g_1746
        {1L}, // p_1879->g_1747
        {18446744073709551615UL,18446744073709551615UL,18446744073709551615UL}, // p_1879->g_1829
        {0x5AL}, // p_1879->g_1837
        (void*)0, // p_1879->g_1847
        (void*)0, // p_1879->g_1853
        {{{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853}},{{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853}},{{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853}},{{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853}},{{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853}},{{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853}},{{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853}},{{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853}},{{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853}},{{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853},{&p_1879->g_1853,&p_1879->g_1853}}}, // p_1879->g_1852
        {(void*)0,(void*)0}, // p_1879->g_1877
        &p_1879->g_633, // p_1879->g_1878
        sequence_input[get_global_id(0)], // p_1879->global_0_offset
        sequence_input[get_global_id(1)], // p_1879->global_1_offset
        sequence_input[get_global_id(2)], // p_1879->global_2_offset
        sequence_input[get_local_id(0)], // p_1879->local_0_offset
        sequence_input[get_local_id(1)], // p_1879->local_1_offset
        sequence_input[get_local_id(2)], // p_1879->local_2_offset
        sequence_input[get_group_id(0)], // p_1879->group_0_offset
        sequence_input[get_group_id(1)], // p_1879->group_1_offset
        sequence_input[get_group_id(2)], // p_1879->group_2_offset
    };
    c_1880 = c_1881;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1879);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1879->g_11, "p_1879->g_11", print_hash_value);
    transparent_crc(p_1879->g_13, "p_1879->g_13", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_1879->g_14[i].f0, "p_1879->g_14[i].f0", print_hash_value);

    }
    transparent_crc(p_1879->g_39, "p_1879->g_39", print_hash_value);
    transparent_crc(p_1879->g_47, "p_1879->g_47", print_hash_value);
    transparent_crc(p_1879->g_76, "p_1879->g_76", print_hash_value);
    transparent_crc(p_1879->g_85, "p_1879->g_85", print_hash_value);
    transparent_crc(p_1879->g_110, "p_1879->g_110", print_hash_value);
    transparent_crc(p_1879->g_160, "p_1879->g_160", print_hash_value);
    transparent_crc(p_1879->g_178, "p_1879->g_178", print_hash_value);
    transparent_crc(p_1879->g_180, "p_1879->g_180", print_hash_value);
    transparent_crc(p_1879->g_202.f0, "p_1879->g_202.f0", print_hash_value);
    transparent_crc(p_1879->g_214, "p_1879->g_214", print_hash_value);
    transparent_crc(p_1879->g_224, "p_1879->g_224", print_hash_value);
    transparent_crc(p_1879->g_256.f0, "p_1879->g_256.f0", print_hash_value);
    transparent_crc(p_1879->g_263, "p_1879->g_263", print_hash_value);
    transparent_crc(p_1879->g_288, "p_1879->g_288", print_hash_value);
    transparent_crc(p_1879->g_292, "p_1879->g_292", print_hash_value);
    transparent_crc(p_1879->g_299, "p_1879->g_299", print_hash_value);
    transparent_crc(p_1879->g_323, "p_1879->g_323", print_hash_value);
    transparent_crc(p_1879->g_327, "p_1879->g_327", print_hash_value);
    transparent_crc(p_1879->g_354, "p_1879->g_354", print_hash_value);
    transparent_crc(p_1879->g_424, "p_1879->g_424", print_hash_value);
    transparent_crc(p_1879->g_425, "p_1879->g_425", print_hash_value);
    transparent_crc(p_1879->g_427, "p_1879->g_427", print_hash_value);
    transparent_crc(p_1879->g_428, "p_1879->g_428", print_hash_value);
    transparent_crc(p_1879->g_470.f0, "p_1879->g_470.f0", print_hash_value);
    transparent_crc(p_1879->g_522.f0, "p_1879->g_522.f0", print_hash_value);
    transparent_crc(p_1879->g_593, "p_1879->g_593", print_hash_value);
    transparent_crc(p_1879->g_688.f0, "p_1879->g_688.f0", print_hash_value);
    transparent_crc(p_1879->g_695.f0, "p_1879->g_695.f0", print_hash_value);
    transparent_crc(p_1879->g_698.f0, "p_1879->g_698.f0", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_1879->g_723[i], "p_1879->g_723[i]", print_hash_value);

    }
    transparent_crc(p_1879->g_726, "p_1879->g_726", print_hash_value);
    transparent_crc(p_1879->g_823.f0, "p_1879->g_823.f0", print_hash_value);
    transparent_crc(p_1879->g_834, "p_1879->g_834", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 3; j++)
        {
            for (k = 0; k < 8; k++)
            {
                transparent_crc(p_1879->g_882[i][j][k], "p_1879->g_882[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1879->g_931.f0, "p_1879->g_931.f0", print_hash_value);
    transparent_crc(p_1879->g_950.f0, "p_1879->g_950.f0", print_hash_value);
    transparent_crc(p_1879->g_962, "p_1879->g_962", print_hash_value);
    transparent_crc(p_1879->g_1047, "p_1879->g_1047", print_hash_value);
    transparent_crc(p_1879->g_1172.f0, "p_1879->g_1172.f0", print_hash_value);
    transparent_crc(p_1879->g_1304, "p_1879->g_1304", print_hash_value);
    transparent_crc(p_1879->g_1307.f0, "p_1879->g_1307.f0", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 2; j++)
        {
            transparent_crc(p_1879->g_1366[i][j].f0, "p_1879->g_1366[i][j].f0", print_hash_value);

        }
    }
    transparent_crc(p_1879->g_1378, "p_1879->g_1378", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_1879->g_1386[i][j], "p_1879->g_1386[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1879->g_1466.f0, "p_1879->g_1466.f0", print_hash_value);
    transparent_crc(p_1879->g_1480.f0, "p_1879->g_1480.f0", print_hash_value);
    transparent_crc(p_1879->g_1536, "p_1879->g_1536", print_hash_value);
    transparent_crc(p_1879->g_1579, "p_1879->g_1579", print_hash_value);
    transparent_crc(p_1879->g_1612, "p_1879->g_1612", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 10; k++)
            {
                transparent_crc(p_1879->g_1687[i][j][k], "p_1879->g_1687[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1879->g_1719.f0, "p_1879->g_1719.f0", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_1879->g_1720[i][j].f0, "p_1879->g_1720[i][j].f0", print_hash_value);

        }
    }
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 6; j++)
        {
            for (k = 0; k < 1; k++)
            {
                transparent_crc(p_1879->g_1721[i][j][k].f0, "p_1879->g_1721[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_1879->g_1722.f0, "p_1879->g_1722.f0", print_hash_value);
    transparent_crc(p_1879->g_1723.f0, "p_1879->g_1723.f0", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1879->g_1724[i].f0, "p_1879->g_1724[i].f0", print_hash_value);

    }
    transparent_crc(p_1879->g_1725.f0, "p_1879->g_1725.f0", print_hash_value);
    transparent_crc(p_1879->g_1726.f0, "p_1879->g_1726.f0", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1879->g_1727[i].f0, "p_1879->g_1727[i].f0", print_hash_value);

    }
    transparent_crc(p_1879->g_1728.f0, "p_1879->g_1728.f0", print_hash_value);
    transparent_crc(p_1879->g_1729.f0, "p_1879->g_1729.f0", print_hash_value);
    transparent_crc(p_1879->g_1730.f0, "p_1879->g_1730.f0", print_hash_value);
    transparent_crc(p_1879->g_1731.f0, "p_1879->g_1731.f0", print_hash_value);
    transparent_crc(p_1879->g_1732.f0, "p_1879->g_1732.f0", print_hash_value);
    transparent_crc(p_1879->g_1733.f0, "p_1879->g_1733.f0", print_hash_value);
    transparent_crc(p_1879->g_1734.f0, "p_1879->g_1734.f0", print_hash_value);
    transparent_crc(p_1879->g_1735.f0, "p_1879->g_1735.f0", print_hash_value);
    transparent_crc(p_1879->g_1736.f0, "p_1879->g_1736.f0", print_hash_value);
    transparent_crc(p_1879->g_1737.f0, "p_1879->g_1737.f0", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 7; j++)
        {
            transparent_crc(p_1879->g_1738[i][j].f0, "p_1879->g_1738[i][j].f0", print_hash_value);

        }
    }
    transparent_crc(p_1879->g_1739.f0, "p_1879->g_1739.f0", print_hash_value);
    transparent_crc(p_1879->g_1740.f0, "p_1879->g_1740.f0", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 6; j++)
        {
            transparent_crc(p_1879->g_1741[i][j].f0, "p_1879->g_1741[i][j].f0", print_hash_value);

        }
    }
    transparent_crc(p_1879->g_1742.f0, "p_1879->g_1742.f0", print_hash_value);
    transparent_crc(p_1879->g_1743.f0, "p_1879->g_1743.f0", print_hash_value);
    transparent_crc(p_1879->g_1744.f0, "p_1879->g_1744.f0", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 1; k++)
            {
                transparent_crc(p_1879->g_1745[i][j][k].f0, "p_1879->g_1745[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_1879->g_1746.f0, "p_1879->g_1746.f0", print_hash_value);
    transparent_crc(p_1879->g_1747.f0, "p_1879->g_1747.f0", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_1879->g_1829[i], "p_1879->g_1829[i]", print_hash_value);

    }
    transparent_crc(p_1879->g_1837.f0, "p_1879->g_1837.f0", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
