// ---fake_divergence -g 46,80,2 -l 1,10,2
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


// Seed: 46

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   volatile uint64_t  f0;
   int32_t  f1;
};

union U1 {
   volatile uint32_t  f0;
};

struct S2 {
    int32_t g_2;
    uint32_t g_14;
    volatile union U0 g_50;
    int64_t g_62;
    uint8_t g_72[8][2];
    union U1 g_85;
    uint32_t g_86;
    VECTOR(uint8_t, 8) g_93;
    uint32_t g_107;
    uint8_t *g_118[5];
    int32_t g_120[2];
    int32_t g_122[4];
    int32_t * volatile g_121;
    int32_t *g_128[3][6][7];
    int32_t ** volatile g_127;
    int32_t ** volatile g_129;
    int64_t *g_161[7];
    int64_t g_164;
    int32_t * volatile g_168;
    VECTOR(uint8_t, 2) g_181;
    int32_t g_190;
    uint8_t g_193;
    int16_t g_196;
    volatile VECTOR(uint32_t, 4) g_197;
    VECTOR(int32_t, 2) g_198;
    int16_t g_214;
    volatile int32_t g_226;
    volatile int32_t *g_225;
    volatile int32_t ** volatile g_227;
    volatile VECTOR(int64_t, 2) g_246;
    union U1 *g_278[6][5];
    union U1 ** volatile g_277[7][4];
    volatile VECTOR(int32_t, 8) g_279;
    union U0 g_298[1][6];
    VECTOR(uint8_t, 16) g_299;
    VECTOR(uint8_t, 16) g_300;
    volatile VECTOR(int32_t, 4) g_309;
    int32_t g_328;
    VECTOR(uint32_t, 8) g_345;
    uint64_t g_360;
    volatile VECTOR(uint32_t, 8) g_365;
    VECTOR(uint32_t, 4) g_370;
    volatile uint16_t g_375;
    volatile uint16_t *g_374;
    uint16_t g_379;
    int8_t g_383;
    VECTOR(uint32_t, 16) g_389;
    int16_t g_395[3];
    VECTOR(int32_t, 8) g_408;
    volatile VECTOR(int32_t, 4) g_409;
    uint16_t g_419[6][9][4];
    volatile VECTOR(uint8_t, 4) g_420;
    volatile VECTOR(uint16_t, 8) g_444;
    int64_t *g_451;
    int64_t **g_450[10][9];
    int64_t g_493;
    volatile int32_t ** volatile g_502;
    uint8_t g_551;
    union U1 g_560;
    VECTOR(uint64_t, 2) g_569;
    VECTOR(uint64_t, 4) g_570;
    VECTOR(uint64_t, 4) g_571;
    VECTOR(int32_t, 2) g_582;
    volatile uint64_t ** volatile g_663;
    volatile VECTOR(uint8_t, 4) g_671;
    VECTOR(uint8_t, 4) g_672;
    VECTOR(uint8_t, 16) g_673;
    volatile VECTOR(uint8_t, 4) g_674;
    volatile VECTOR(uint8_t, 16) g_675;
    VECTOR(uint32_t, 2) g_684;
    volatile VECTOR(int8_t, 4) g_705;
    volatile VECTOR(int8_t, 4) g_706;
    VECTOR(int16_t, 16) g_744;
    VECTOR(int8_t, 4) g_769;
    volatile VECTOR(uint8_t, 8) g_775;
    volatile VECTOR(int32_t, 2) g_807;
    volatile VECTOR(uint16_t, 8) g_819;
    VECTOR(int8_t, 2) g_840;
    int64_t **g_858;
    int64_t **g_896;
    volatile uint64_t g_907;
    volatile uint64_t *g_906;
    volatile uint64_t ** volatile g_905;
    int8_t *g_922[5];
    int8_t **g_921[9];
    int8_t *** volatile g_920;
    VECTOR(int8_t, 16) g_925;
    VECTOR(int8_t, 2) g_926;
    VECTOR(int16_t, 16) g_950;
    volatile union U0 g_963;
    volatile VECTOR(int32_t, 4) g_966;
    volatile union U0 g_1071;
    volatile int32_t g_1073;
    volatile VECTOR(int32_t, 4) g_1074;
    volatile int8_t g_1121;
    int32_t * volatile g_1126;
    VECTOR(uint8_t, 2) g_1145;
    volatile VECTOR(int8_t, 2) g_1175;
    volatile VECTOR(int8_t, 4) g_1176;
    volatile int32_t ** volatile g_1187;
    volatile VECTOR(uint64_t, 4) g_1191;
    union U1 g_1196;
    uint32_t *g_1199;
    uint32_t * volatile *g_1198;
    VECTOR(int16_t, 2) g_1208;
    int64_t * volatile *g_1271;
    int64_t * volatile * volatile *g_1270;
    volatile VECTOR(int8_t, 16) g_1272;
    volatile VECTOR(int8_t, 16) g_1273;
    volatile VECTOR(int8_t, 2) g_1274;
    union U1 g_1279;
    volatile uint64_t * volatile *g_1282;
    volatile uint64_t * volatile * volatile *g_1281;
    volatile uint64_t * volatile * volatile **g_1280;
    volatile VECTOR(uint64_t, 16) g_1305;
    uint16_t *g_1309;
    uint16_t ** volatile g_1308;
    uint16_t ** volatile * volatile g_1307[8];
    union U0 g_1323;
    union U0 g_1326;
    union U0 *g_1325;
    union U0 **g_1324;
    VECTOR(int32_t, 16) g_1353;
    VECTOR(uint32_t, 4) g_1367;
    VECTOR(int16_t, 16) g_1373;
    VECTOR(int16_t, 2) g_1374;
    uint64_t g_1392;
    volatile VECTOR(int32_t, 16) g_1399;
    VECTOR(uint16_t, 2) g_1404;
    int64_t ***g_1409;
    int32_t ** volatile g_1442[6];
    int32_t ** volatile g_1443[2];
    union U0 g_1455;
    VECTOR(uint16_t, 16) g_1463;
    VECTOR(uint16_t, 16) g_1464;
    uint16_t **g_1471;
    uint16_t ***g_1470;
    uint16_t ***g_1497[9][1];
    int8_t ** volatile g_1504;
    VECTOR(int64_t, 2) g_1507;
    uint32_t **g_1514;
    uint32_t ***g_1513;
    volatile VECTOR(uint64_t, 8) g_1527;
    VECTOR(int32_t, 16) g_1542;
    uint32_t g_1587;
    volatile VECTOR(int16_t, 16) g_1610;
    uint32_t g_1618;
    volatile VECTOR(int32_t, 16) g_1624;
    VECTOR(int32_t, 8) g_1633;
    volatile VECTOR(int16_t, 2) g_1634;
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
uint8_t  func_1(struct S2 * p_1646);
uint32_t  func_5(uint32_t  p_6, int32_t  p_7, uint32_t  p_8, struct S2 * p_1646);
int8_t  func_11(uint64_t  p_12, uint32_t  p_13, struct S2 * p_1646);
uint32_t  func_21(int32_t  p_22, uint64_t  p_23, int64_t  p_24, int64_t  p_25, struct S2 * p_1646);
int8_t  func_34(int16_t  p_35, struct S2 * p_1646);
uint8_t  func_42(uint32_t  p_43, int8_t  p_44, uint32_t  p_45, uint64_t  p_46, struct S2 * p_1646);
int8_t  func_57(uint8_t  p_58, int64_t  p_59, struct S2 * p_1646);
uint32_t  func_65(uint8_t  p_66, int64_t * p_67, int32_t  p_68, int64_t * p_69, struct S2 * p_1646);
int64_t * func_74(int64_t * p_75, int8_t  p_76, struct S2 * p_1646);
int64_t * func_77(uint8_t * p_78, uint8_t  p_79, int8_t  p_80, int32_t  p_81, int32_t  p_82, struct S2 * p_1646);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1646->g_2 p_1646->g_14 p_1646->g_298 p_1646->g_227 p_1646->g_225 p_1646->g_226 p_1646->g_181 p_1646->g_127 p_1646->g_128 p_1646->g_1455 p_1646->g_1198 p_1646->g_1199 p_1646->g_86 p_1646->g_193 p_1646->g_214 p_1646->g_107 p_1646->g_1309 p_1646->g_379 p_1646->g_569 p_1646->g_769 p_1646->g_493 p_1646->g_300 p_1646->g_1504 p_1646->g_389 p_1646->g_72 p_1646->g_345 p_1646->g_1353 p_1646->g_1542 p_1646->g_1471 p_1646->g_1610 p_1646->g_1308 p_1646->g_1618 p_1646->g_1624 p_1646->g_198 p_1646->g_1126 p_1646->g_122 p_1646->g_705 p_1646->g_1633 p_1646->g_1634 p_1646->g_374 p_1646->g_375 p_1646->g_896 p_1646->g_1463 p_1646->g_840 p_1646->g_328
 * writes: p_1646->g_2 p_1646->g_328 p_1646->g_1324 p_1646->g_1323.f1 p_1646->g_214 p_1646->g_1470 p_1646->g_86 p_1646->g_193 p_1646->g_107 p_1646->g_493 p_1646->g_1497 p_1646->g_226 p_1646->g_1513 p_1646->g_72 p_1646->g_419 p_1646->g_379 p_1646->g_1507 p_1646->g_1374 p_1646->g_161 p_1646->g_360
 */
uint8_t  func_1(struct S2 * p_1646)
{ /* block id: 4 */
    uint8_t l_1580[2];
    uint8_t l_1588[1];
    int32_t l_1590 = 0x755DF2CBL;
    uint64_t l_1613 = 18446744073709551612UL;
    uint64_t l_1623 = 0UL;
    int i;
    for (i = 0; i < 2; i++)
        l_1580[i] = 0xD9L;
    for (i = 0; i < 1; i++)
        l_1588[i] = 0x42L;
    for (p_1646->g_2 = 22; (p_1646->g_2 != (-11)); p_1646->g_2 = safe_sub_func_uint16_t_u_u(p_1646->g_2, 1))
    { /* block id: 7 */
        uint8_t *l_1569 = (void*)0;
        uint8_t *l_1570 = &p_1646->g_72[0][0];
        VECTOR(int32_t, 8) l_1577 = (VECTOR(int32_t, 8))(0x07A17C06L, (VECTOR(int32_t, 4))(0x07A17C06L, (VECTOR(int32_t, 2))(0x07A17C06L, (-5L)), (-5L)), (-5L), 0x07A17C06L, (-5L));
        int64_t *l_1581 = (void*)0;
        int64_t *l_1582[4][6] = {{(void*)0,(void*)0,(void*)0,&p_1646->g_164,(void*)0,&p_1646->g_164},{(void*)0,(void*)0,(void*)0,&p_1646->g_164,(void*)0,&p_1646->g_164},{(void*)0,(void*)0,(void*)0,&p_1646->g_164,(void*)0,&p_1646->g_164},{(void*)0,(void*)0,(void*)0,&p_1646->g_164,(void*)0,&p_1646->g_164}};
        uint32_t *l_1589[9];
        uint16_t *l_1591 = &p_1646->g_419[4][3][2];
        int8_t *l_1592[10] = {&p_1646->g_383,&p_1646->g_383,(void*)0,&p_1646->g_383,&p_1646->g_383,&p_1646->g_383,&p_1646->g_383,(void*)0,&p_1646->g_383,&p_1646->g_383};
        int i, j;
        for (i = 0; i < 9; i++)
            l_1589[i] = (void*)0;
        if ((func_5((safe_mul_func_int8_t_s_s(func_11(p_1646->g_2, p_1646->g_14, p_1646), (!(l_1577.s1 = (safe_div_func_uint8_t_u_u((safe_rshift_func_uint16_t_u_s(((*l_1591) = (((++(*l_1570)) , 0x0516L) , (safe_sub_func_int32_t_s_s(((l_1590 = (((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 16))(0x684CC5C71E2A75A5L, (~(((safe_div_func_int32_t_s_s(((VECTOR(int32_t, 16))(l_1577.s7624363257700404)).s5, 0xD667473EL)) == (p_1646->g_164 = ((safe_lshift_func_int8_t_s_s(l_1580[1], 0)) , (p_1646->g_1507.x |= l_1580[0])))) & (safe_div_func_int64_t_s_s((((((l_1580[1] >= (safe_div_func_uint16_t_u_u((*p_1646->g_1309), 0x1420L))) != 0x20D53214L) , p_1646->g_1587) && (*p_1646->g_1309)) < l_1577.s1), p_1646->g_926.y)))), 0UL, ((VECTOR(uint64_t, 4))(0UL)), l_1588[0], 0UL, 0x3B6388FF59090ADFL, FAKE_DIVERGE(p_1646->local_0_offset, get_local_id(0), 10), ((VECTOR(uint64_t, 2))(18446744073709551615UL)), ((VECTOR(uint64_t, 2))(0x11262CBEB8D188E9L)), 1UL)).s6bad)).y ^ l_1588[0])) != l_1577.s6), p_1646->g_389.s5)))), p_1646->g_345.s6)), l_1588[0])))))), p_1646->g_1353.s3, p_1646->g_1542.s2, p_1646) < l_1613))
        { /* block id: 622 */
            VECTOR(int32_t, 4) l_1625 = (VECTOR(int32_t, 4))(0x1F577964L, (VECTOR(int32_t, 2))(0x1F577964L, 0L), 0L);
            int32_t *l_1626 = (void*)0;
            int32_t *l_1627[7] = {&p_1646->g_120[1],(void*)0,&p_1646->g_120[1],&p_1646->g_120[1],(void*)0,&p_1646->g_120[1],&p_1646->g_120[1]};
            uint32_t l_1628 = 0UL;
            int i;
            if (l_1588[0])
                break;
            l_1590 ^= (safe_mul_func_uint8_t_u_u((l_1577.s6 > ((*l_1591) = 0xBA14L)), (safe_mod_func_int64_t_s_s((((VECTOR(int16_t, 2))(0L, 0x5454L)).lo | (p_1646->g_1618 & ((*l_1570)--))), ((p_1646->g_1374.y = l_1580[1]) & (+(safe_mod_func_int32_t_s_s(((((l_1623 > (0x49F4AC20DA7552AEL && ((VECTOR(int64_t, 2))(upsample(((VECTOR(int32_t, 4))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 4))(p_1646->g_1624.sf0c2)), ((VECTOR(int32_t, 16))(max(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(min(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))((-7L), (-3L))), 2L, (-2L))), (int32_t)((void*)0 == &p_1646->g_963)))).odd)).xxxyyyxy)).s7402475234317170, ((VECTOR(int32_t, 16))(0x42ABFE1DL, (-10L), 0L, (!(3L | l_1577.s5)), ((VECTOR(int32_t, 4))(0x236A4657L)), (-6L), 0x387FCF55L, 1L, ((VECTOR(int32_t, 2))(0x4999C900L)), ((VECTOR(int32_t, 2))(0x005AABB3L)), 1L))))).scf6a, ((VECTOR(int32_t, 4))((-10L)))))).lo, ((VECTOR(uint32_t, 2))(2UL))))).lo)) < p_1646->g_198.y) != l_1625.x) < 0x6ED1FE54540DDF9EL), l_1577.s6))))))));
            ++l_1628;
            if ((*p_1646->g_1126))
                continue;
        }
        else
        { /* block id: 630 */
            int64_t *l_1641 = &p_1646->g_62;
            uint64_t *l_1642 = &l_1623;
            uint16_t l_1643 = 2UL;
            uint64_t *l_1644 = &p_1646->g_360;
            int32_t *l_1645 = &p_1646->g_328;
            (*l_1645) |= (safe_rshift_func_uint16_t_u_u((((((((FAKE_DIVERGE(p_1646->group_2_offset, get_group_id(2), 10) < ((((((!p_1646->g_705.y) & (l_1590 >= (((VECTOR(int32_t, 8))(p_1646->g_1633.s47207701)).s6 > l_1577.s0))) , ((VECTOR(int16_t, 16))(p_1646->g_1634.yyxyyxxyyxyxyyyy)).sa) != ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 2))(0x3EF3L, 1UL)))).hi) , ((*l_1644) = (((((*p_1646->g_374) >= l_1577.s3) < (safe_rshift_func_int16_t_s_s(((((*l_1642) ^= ((safe_rshift_func_uint8_t_u_s((&p_1646->g_1392 != ((safe_lshift_func_int16_t_s_u(0L, (((*p_1646->g_896) = l_1582[2][0]) == l_1641))) , &p_1646->g_1392)), 7)) & l_1577.s1)) , l_1643) & 255UL), 7))) >= 0L) == l_1577.s6))) , (-9L))) != p_1646->g_1463.sb) < 6L) & p_1646->g_840.x) , l_1643) == l_1580[0]) , (*p_1646->g_1309)), 14));
        }
        return l_1577.s7;
    }
    return l_1580[1];
}


/* ------------------------------------------ */
/* 
 * reads : p_1646->g_1471 p_1646->g_1309 p_1646->g_379 p_1646->g_1610 p_1646->g_1308 p_1646->g_225
 * writes: p_1646->g_379 p_1646->g_1507 p_1646->g_226
 */
uint32_t  func_5(uint32_t  p_6, int32_t  p_7, uint32_t  p_8, struct S2 * p_1646)
{ /* block id: 616 */
    uint64_t *l_1601[3][8][8] = {{{&p_1646->g_360,&p_1646->g_360,&p_1646->g_360,(void*)0,&p_1646->g_360,&p_1646->g_360,&p_1646->g_360,&p_1646->g_360},{&p_1646->g_360,&p_1646->g_360,&p_1646->g_360,(void*)0,&p_1646->g_360,&p_1646->g_360,&p_1646->g_360,&p_1646->g_360},{&p_1646->g_360,&p_1646->g_360,&p_1646->g_360,(void*)0,&p_1646->g_360,&p_1646->g_360,&p_1646->g_360,&p_1646->g_360},{&p_1646->g_360,&p_1646->g_360,&p_1646->g_360,(void*)0,&p_1646->g_360,&p_1646->g_360,&p_1646->g_360,&p_1646->g_360},{&p_1646->g_360,&p_1646->g_360,&p_1646->g_360,(void*)0,&p_1646->g_360,&p_1646->g_360,&p_1646->g_360,&p_1646->g_360},{&p_1646->g_360,&p_1646->g_360,&p_1646->g_360,(void*)0,&p_1646->g_360,&p_1646->g_360,&p_1646->g_360,&p_1646->g_360},{&p_1646->g_360,&p_1646->g_360,&p_1646->g_360,(void*)0,&p_1646->g_360,&p_1646->g_360,&p_1646->g_360,&p_1646->g_360},{&p_1646->g_360,&p_1646->g_360,&p_1646->g_360,(void*)0,&p_1646->g_360,&p_1646->g_360,&p_1646->g_360,&p_1646->g_360}},{{&p_1646->g_360,&p_1646->g_360,&p_1646->g_360,(void*)0,&p_1646->g_360,&p_1646->g_360,&p_1646->g_360,&p_1646->g_360},{&p_1646->g_360,&p_1646->g_360,&p_1646->g_360,(void*)0,&p_1646->g_360,&p_1646->g_360,&p_1646->g_360,&p_1646->g_360},{&p_1646->g_360,&p_1646->g_360,&p_1646->g_360,(void*)0,&p_1646->g_360,&p_1646->g_360,&p_1646->g_360,&p_1646->g_360},{&p_1646->g_360,&p_1646->g_360,&p_1646->g_360,(void*)0,&p_1646->g_360,&p_1646->g_360,&p_1646->g_360,&p_1646->g_360},{&p_1646->g_360,&p_1646->g_360,&p_1646->g_360,(void*)0,&p_1646->g_360,&p_1646->g_360,&p_1646->g_360,&p_1646->g_360},{&p_1646->g_360,&p_1646->g_360,&p_1646->g_360,(void*)0,&p_1646->g_360,&p_1646->g_360,&p_1646->g_360,&p_1646->g_360},{&p_1646->g_360,&p_1646->g_360,&p_1646->g_360,(void*)0,&p_1646->g_360,&p_1646->g_360,&p_1646->g_360,&p_1646->g_360},{&p_1646->g_360,&p_1646->g_360,&p_1646->g_360,(void*)0,&p_1646->g_360,&p_1646->g_360,&p_1646->g_360,&p_1646->g_360}},{{&p_1646->g_360,&p_1646->g_360,&p_1646->g_360,(void*)0,&p_1646->g_360,&p_1646->g_360,&p_1646->g_360,&p_1646->g_360},{&p_1646->g_360,&p_1646->g_360,&p_1646->g_360,(void*)0,&p_1646->g_360,&p_1646->g_360,&p_1646->g_360,&p_1646->g_360},{&p_1646->g_360,&p_1646->g_360,&p_1646->g_360,(void*)0,&p_1646->g_360,&p_1646->g_360,&p_1646->g_360,&p_1646->g_360},{&p_1646->g_360,&p_1646->g_360,&p_1646->g_360,(void*)0,&p_1646->g_360,&p_1646->g_360,&p_1646->g_360,&p_1646->g_360},{&p_1646->g_360,&p_1646->g_360,&p_1646->g_360,(void*)0,&p_1646->g_360,&p_1646->g_360,&p_1646->g_360,&p_1646->g_360},{&p_1646->g_360,&p_1646->g_360,&p_1646->g_360,(void*)0,&p_1646->g_360,&p_1646->g_360,&p_1646->g_360,&p_1646->g_360},{&p_1646->g_360,&p_1646->g_360,&p_1646->g_360,(void*)0,&p_1646->g_360,&p_1646->g_360,&p_1646->g_360,&p_1646->g_360},{&p_1646->g_360,&p_1646->g_360,&p_1646->g_360,(void*)0,&p_1646->g_360,&p_1646->g_360,&p_1646->g_360,&p_1646->g_360}}};
    VECTOR(int32_t, 16) l_1606 = (VECTOR(int32_t, 16))(8L, (VECTOR(int32_t, 4))(8L, (VECTOR(int32_t, 2))(8L, (-7L)), (-7L)), (-7L), 8L, (-7L), (VECTOR(int32_t, 2))(8L, (-7L)), (VECTOR(int32_t, 2))(8L, (-7L)), 8L, (-7L), 8L, (-7L));
    int64_t *l_1607[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int16_t *l_1611 = (void*)0;
    int16_t *l_1612[5][7][3] = {{{&p_1646->g_395[0],&p_1646->g_395[0],&p_1646->g_196},{&p_1646->g_395[0],&p_1646->g_395[0],&p_1646->g_196},{&p_1646->g_395[0],&p_1646->g_395[0],&p_1646->g_196},{&p_1646->g_395[0],&p_1646->g_395[0],&p_1646->g_196},{&p_1646->g_395[0],&p_1646->g_395[0],&p_1646->g_196},{&p_1646->g_395[0],&p_1646->g_395[0],&p_1646->g_196},{&p_1646->g_395[0],&p_1646->g_395[0],&p_1646->g_196}},{{&p_1646->g_395[0],&p_1646->g_395[0],&p_1646->g_196},{&p_1646->g_395[0],&p_1646->g_395[0],&p_1646->g_196},{&p_1646->g_395[0],&p_1646->g_395[0],&p_1646->g_196},{&p_1646->g_395[0],&p_1646->g_395[0],&p_1646->g_196},{&p_1646->g_395[0],&p_1646->g_395[0],&p_1646->g_196},{&p_1646->g_395[0],&p_1646->g_395[0],&p_1646->g_196},{&p_1646->g_395[0],&p_1646->g_395[0],&p_1646->g_196}},{{&p_1646->g_395[0],&p_1646->g_395[0],&p_1646->g_196},{&p_1646->g_395[0],&p_1646->g_395[0],&p_1646->g_196},{&p_1646->g_395[0],&p_1646->g_395[0],&p_1646->g_196},{&p_1646->g_395[0],&p_1646->g_395[0],&p_1646->g_196},{&p_1646->g_395[0],&p_1646->g_395[0],&p_1646->g_196},{&p_1646->g_395[0],&p_1646->g_395[0],&p_1646->g_196},{&p_1646->g_395[0],&p_1646->g_395[0],&p_1646->g_196}},{{&p_1646->g_395[0],&p_1646->g_395[0],&p_1646->g_196},{&p_1646->g_395[0],&p_1646->g_395[0],&p_1646->g_196},{&p_1646->g_395[0],&p_1646->g_395[0],&p_1646->g_196},{&p_1646->g_395[0],&p_1646->g_395[0],&p_1646->g_196},{&p_1646->g_395[0],&p_1646->g_395[0],&p_1646->g_196},{&p_1646->g_395[0],&p_1646->g_395[0],&p_1646->g_196},{&p_1646->g_395[0],&p_1646->g_395[0],&p_1646->g_196}},{{&p_1646->g_395[0],&p_1646->g_395[0],&p_1646->g_196},{&p_1646->g_395[0],&p_1646->g_395[0],&p_1646->g_196},{&p_1646->g_395[0],&p_1646->g_395[0],&p_1646->g_196},{&p_1646->g_395[0],&p_1646->g_395[0],&p_1646->g_196},{&p_1646->g_395[0],&p_1646->g_395[0],&p_1646->g_196},{&p_1646->g_395[0],&p_1646->g_395[0],&p_1646->g_196},{&p_1646->g_395[0],&p_1646->g_395[0],&p_1646->g_196}}};
    int i, j, k;
    (*p_1646->g_225) = (safe_mul_func_int16_t_s_s((~(p_7 , (l_1606.s3 = (safe_mul_func_uint16_t_u_u(((VECTOR(uint16_t, 2))(65529UL, 0UL)).lo, (((((safe_add_func_uint16_t_u_u(0x6369L, (safe_lshift_func_int16_t_s_u(((void*)0 != l_1601[1][7][1]), ((**p_1646->g_1471)++))))) & (!0UL)) < 0L) , (((GROUP_DIVERGE(1, 1) >= GROUP_DIVERGE(1, 1)) | (p_6 > ((p_1646->g_1507.y = l_1606.s3) ^ (safe_lshift_func_uint8_t_u_u((((VECTOR(int16_t, 8))(((VECTOR(int16_t, 16))(p_1646->g_1610.se7ddd3c1c4cc3ff6)).even)).s3 <= l_1606.sd), l_1606.s5))))) , (**p_1646->g_1471))) || (**p_1646->g_1308))))))), 0xD7AAL));
    return p_6;
}


/* ------------------------------------------ */
/* 
 * reads : p_1646->g_2 p_1646->g_298 p_1646->g_227 p_1646->g_225 p_1646->g_226 p_1646->g_181 p_1646->g_127 p_1646->g_128 p_1646->g_1455 p_1646->g_1198 p_1646->g_1199 p_1646->g_86 p_1646->g_193 p_1646->g_214 p_1646->g_107 p_1646->g_1309 p_1646->g_379 p_1646->g_569 p_1646->g_769 p_1646->g_493 p_1646->g_300 p_1646->g_1504 p_1646->g_389
 * writes: p_1646->g_328 p_1646->g_1324 p_1646->g_1323.f1 p_1646->g_214 p_1646->g_1470 p_1646->g_86 p_1646->g_193 p_1646->g_107 p_1646->g_493 p_1646->g_1497 p_1646->g_226 p_1646->g_1513
 */
int8_t  func_11(uint64_t  p_12, uint32_t  p_13, struct S2 * p_1646)
{ /* block id: 8 */
    uint16_t l_20 = 1UL;
    VECTOR(int8_t, 4) l_30 = (VECTOR(int8_t, 4))(0x5AL, (VECTOR(int8_t, 2))(0x5AL, (-1L)), (-1L));
    VECTOR(int8_t, 2) l_31 = (VECTOR(int8_t, 2))(1L, (-1L));
    int32_t l_1439 = 0x239A1803L;
    int32_t l_1488[3];
    int32_t l_1494 = 0x770765FCL;
    uint32_t ***l_1515[4][1] = {{&p_1646->g_1514},{&p_1646->g_1514},{&p_1646->g_1514},{&p_1646->g_1514}};
    VECTOR(int32_t, 8) l_1521 = (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0L), 0L), 0L, 0L, 0L);
    union U1 **l_1536 = &p_1646->g_278[1][4];
    uint32_t ****l_1560 = &p_1646->g_1513;
    uint64_t *l_1564[5] = {&p_1646->g_360,&p_1646->g_360,&p_1646->g_360,&p_1646->g_360,&p_1646->g_360};
    int i, j;
    for (i = 0; i < 3; i++)
        l_1488[i] = 0x4CC8B3ABL;
    for (p_13 = 0; (p_13 == 39); p_13 = safe_add_func_int32_t_s_s(p_13, 6))
    { /* block id: 11 */
        VECTOR(int16_t, 16) l_19 = (VECTOR(int16_t, 16))(0x13D0L, (VECTOR(int16_t, 4))(0x13D0L, (VECTOR(int16_t, 2))(0x13D0L, 0x486BL), 0x486BL), 0x486BL, 0x13D0L, 0x486BL, (VECTOR(int16_t, 2))(0x13D0L, 0x486BL), (VECTOR(int16_t, 2))(0x13D0L, 0x486BL), 0x13D0L, 0x486BL, 0x13D0L, 0x486BL);
        int32_t *l_1435 = (void*)0;
        int32_t *l_1436 = (void*)0;
        int32_t *l_1437 = (void*)0;
        int32_t *l_1438[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        VECTOR(uint16_t, 8) l_1462 = (VECTOR(uint16_t, 8))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 1UL), 1UL), 1UL, 1UL, 1UL);
        uint16_t **l_1468 = &p_1646->g_1309;
        uint16_t ***l_1467[6][10] = {{(void*)0,(void*)0,&l_1468,&l_1468,&l_1468,(void*)0,(void*)0,&l_1468,&l_1468,(void*)0},{(void*)0,(void*)0,&l_1468,&l_1468,&l_1468,(void*)0,(void*)0,&l_1468,&l_1468,(void*)0},{(void*)0,(void*)0,&l_1468,&l_1468,&l_1468,(void*)0,(void*)0,&l_1468,&l_1468,(void*)0},{(void*)0,(void*)0,&l_1468,&l_1468,&l_1468,(void*)0,(void*)0,&l_1468,&l_1468,(void*)0},{(void*)0,(void*)0,&l_1468,&l_1468,&l_1468,(void*)0,(void*)0,&l_1468,&l_1468,(void*)0},{(void*)0,(void*)0,&l_1468,&l_1468,&l_1468,(void*)0,(void*)0,&l_1468,&l_1468,(void*)0}};
        uint32_t **l_1511 = (void*)0;
        uint32_t ***l_1510 = &l_1511;
        uint32_t ****l_1512[2][7] = {{(void*)0,&l_1510,(void*)0,(void*)0,&l_1510,(void*)0,(void*)0},{(void*)0,&l_1510,(void*)0,(void*)0,&l_1510,(void*)0,(void*)0}};
        uint64_t *l_1563[8][1] = {{&p_1646->g_360},{&p_1646->g_360},{&p_1646->g_360},{&p_1646->g_360},{&p_1646->g_360},{&p_1646->g_360},{&p_1646->g_360},{&p_1646->g_360}};
        int i, j;
        l_20 = (safe_add_func_int16_t_s_s((-3L), ((VECTOR(int16_t, 16))(l_19.s6feb9e9d60a22152)).s5));
        l_1439 |= ((func_21(l_19.s5, (((safe_div_func_uint64_t_u_u(p_13, p_13)) | p_1646->g_2) || (0xD5B611FBL & l_20)), ((safe_mul_func_uint8_t_u_u((((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(l_30.zwwzzyyyzxwzxyyw)).s992d)), 0x56L, (-1L), (-5L), ((VECTOR(int8_t, 8))(safe_clamp_func(VECTOR(int8_t, 8),VECTOR(int8_t, 8),((VECTOR(int8_t, 16))(l_31.yxyxxxxxyyxxyxyx)).even, ((VECTOR(int8_t, 4))(mad_sat(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 8))(sub_sat(((VECTOR(int8_t, 8))(rhadd(((VECTOR(int8_t, 4))(add_sat(((VECTOR(int8_t, 2))(rotate(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(0x2EL, (safe_mod_func_int8_t_s_s(func_34(l_19.s4, p_1646), l_20)), 0x42L, 0x51L)).yzzyyyzw)), ((VECTOR(int8_t, 2))(0x4EL)), p_13, 0x13L, ((VECTOR(int8_t, 4))(0x78L)))).hi)).s37, ((VECTOR(int8_t, 2))((-1L)))))).yyxx, ((VECTOR(int8_t, 4))(0x49L))))).zwyxzxwz, ((VECTOR(int8_t, 8))(1L))))), ((VECTOR(int8_t, 8))(0x1DL))))))).s5115152223042461)).se8ed, ((VECTOR(int8_t, 4))((-5L))), ((VECTOR(int8_t, 4))((-1L)))))).zzwwyyyw, ((VECTOR(int8_t, 8))((-1L)))))), (-1L))).s3 >= l_31.x), l_30.z)) | l_20), l_19.s1, p_1646) && p_12) & p_12);
        for (p_1646->g_328 = 0; (p_1646->g_328 == 7); p_1646->g_328++)
        { /* block id: 577 */
            int32_t **l_1444 = &l_1438[5];
            uint16_t ****l_1469[4][4][5] = {{{&l_1467[0][4],&l_1467[0][1],&l_1467[0][4],(void*)0,&l_1467[0][1]},{&l_1467[0][4],&l_1467[0][1],&l_1467[0][4],(void*)0,&l_1467[0][1]},{&l_1467[0][4],&l_1467[0][1],&l_1467[0][4],(void*)0,&l_1467[0][1]},{&l_1467[0][4],&l_1467[0][1],&l_1467[0][4],(void*)0,&l_1467[0][1]}},{{&l_1467[0][4],&l_1467[0][1],&l_1467[0][4],(void*)0,&l_1467[0][1]},{&l_1467[0][4],&l_1467[0][1],&l_1467[0][4],(void*)0,&l_1467[0][1]},{&l_1467[0][4],&l_1467[0][1],&l_1467[0][4],(void*)0,&l_1467[0][1]},{&l_1467[0][4],&l_1467[0][1],&l_1467[0][4],(void*)0,&l_1467[0][1]}},{{&l_1467[0][4],&l_1467[0][1],&l_1467[0][4],(void*)0,&l_1467[0][1]},{&l_1467[0][4],&l_1467[0][1],&l_1467[0][4],(void*)0,&l_1467[0][1]},{&l_1467[0][4],&l_1467[0][1],&l_1467[0][4],(void*)0,&l_1467[0][1]},{&l_1467[0][4],&l_1467[0][1],&l_1467[0][4],(void*)0,&l_1467[0][1]}},{{&l_1467[0][4],&l_1467[0][1],&l_1467[0][4],(void*)0,&l_1467[0][1]},{&l_1467[0][4],&l_1467[0][1],&l_1467[0][4],(void*)0,&l_1467[0][1]},{&l_1467[0][4],&l_1467[0][1],&l_1467[0][4],(void*)0,&l_1467[0][1]},{&l_1467[0][4],&l_1467[0][1],&l_1467[0][4],(void*)0,&l_1467[0][1]}}};
            uint32_t *l_1486 = (void*)0;
            uint32_t *l_1487[4][9][3] = {{{&p_1646->g_107,&p_1646->g_107,&p_1646->g_14},{&p_1646->g_107,&p_1646->g_107,&p_1646->g_14},{&p_1646->g_107,&p_1646->g_107,&p_1646->g_14},{&p_1646->g_107,&p_1646->g_107,&p_1646->g_14},{&p_1646->g_107,&p_1646->g_107,&p_1646->g_14},{&p_1646->g_107,&p_1646->g_107,&p_1646->g_14},{&p_1646->g_107,&p_1646->g_107,&p_1646->g_14},{&p_1646->g_107,&p_1646->g_107,&p_1646->g_14},{&p_1646->g_107,&p_1646->g_107,&p_1646->g_14}},{{&p_1646->g_107,&p_1646->g_107,&p_1646->g_14},{&p_1646->g_107,&p_1646->g_107,&p_1646->g_14},{&p_1646->g_107,&p_1646->g_107,&p_1646->g_14},{&p_1646->g_107,&p_1646->g_107,&p_1646->g_14},{&p_1646->g_107,&p_1646->g_107,&p_1646->g_14},{&p_1646->g_107,&p_1646->g_107,&p_1646->g_14},{&p_1646->g_107,&p_1646->g_107,&p_1646->g_14},{&p_1646->g_107,&p_1646->g_107,&p_1646->g_14},{&p_1646->g_107,&p_1646->g_107,&p_1646->g_14}},{{&p_1646->g_107,&p_1646->g_107,&p_1646->g_14},{&p_1646->g_107,&p_1646->g_107,&p_1646->g_14},{&p_1646->g_107,&p_1646->g_107,&p_1646->g_14},{&p_1646->g_107,&p_1646->g_107,&p_1646->g_14},{&p_1646->g_107,&p_1646->g_107,&p_1646->g_14},{&p_1646->g_107,&p_1646->g_107,&p_1646->g_14},{&p_1646->g_107,&p_1646->g_107,&p_1646->g_14},{&p_1646->g_107,&p_1646->g_107,&p_1646->g_14},{&p_1646->g_107,&p_1646->g_107,&p_1646->g_14}},{{&p_1646->g_107,&p_1646->g_107,&p_1646->g_14},{&p_1646->g_107,&p_1646->g_107,&p_1646->g_14},{&p_1646->g_107,&p_1646->g_107,&p_1646->g_14},{&p_1646->g_107,&p_1646->g_107,&p_1646->g_14},{&p_1646->g_107,&p_1646->g_107,&p_1646->g_14},{&p_1646->g_107,&p_1646->g_107,&p_1646->g_14},{&p_1646->g_107,&p_1646->g_107,&p_1646->g_14},{&p_1646->g_107,&p_1646->g_107,&p_1646->g_14},{&p_1646->g_107,&p_1646->g_107,&p_1646->g_14}}};
            uint8_t *l_1489 = (void*)0;
            uint8_t *l_1490 = &p_1646->g_193;
            int16_t *l_1491 = &p_1646->g_214;
            int32_t l_1492 = 0x3CEA9B40L;
            int8_t *l_1493[3][2][3] = {{{&p_1646->g_383,(void*)0,&p_1646->g_383},{&p_1646->g_383,(void*)0,&p_1646->g_383}},{{&p_1646->g_383,(void*)0,&p_1646->g_383},{&p_1646->g_383,(void*)0,&p_1646->g_383}},{{&p_1646->g_383,(void*)0,&p_1646->g_383},{&p_1646->g_383,(void*)0,&p_1646->g_383}}};
            int32_t l_1495[2][5][2] = {{{1L,6L},{1L,6L},{1L,6L},{1L,6L},{1L,6L}},{{1L,6L},{1L,6L},{1L,6L},{1L,6L},{1L,6L}}};
            int64_t *l_1496 = &p_1646->g_493;
            int i, j, k;
            (*l_1444) = (*p_1646->g_127);
            (*p_1646->g_225) = (((safe_add_func_uint64_t_u_u(((safe_lshift_func_int8_t_s_s(((safe_lshift_func_uint16_t_u_u((((safe_mul_func_int8_t_s_s((safe_rshift_func_uint16_t_u_s((((p_1646->g_1455 , (safe_lshift_func_uint8_t_u_s(l_1439, ((safe_add_func_uint8_t_u_u(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(252UL, ((safe_add_func_uint16_t_u_u(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 8))(sub_sat(((VECTOR(uint16_t, 2))(l_1462.s74)).yxxxyyyx, ((VECTOR(uint16_t, 4))(mad_hi(((VECTOR(uint16_t, 2))(p_1646->g_1463.sb9)).yxyx, ((VECTOR(uint16_t, 2))(0xF3D4L, 65535UL)).yxyy, ((VECTOR(uint16_t, 4))(p_1646->g_1464.sd34c))))).xzxwwyww))))).s7, (safe_add_func_uint8_t_u_u(p_13, p_13)))) & p_12), 248UL, 0xDDL)).odd)))).odd, l_31.y)) | (((p_1646->g_1470 = l_1467[0][4]) != (p_1646->g_1497[4][0] = ((safe_mod_func_int64_t_s_s(((*l_1496) |= (((safe_mod_func_uint16_t_u_u(((((l_1495[0][1][1] &= (l_1494 = ((((((!(p_1646->g_107 ^= ((((*l_1491) &= ((safe_mod_func_int8_t_s_s(((((safe_mul_func_uint8_t_u_u(((*l_1490) ^= (safe_rshift_func_int8_t_s_u((safe_lshift_func_int16_t_s_s((((l_1488[2] = (((((1UL && ((safe_mod_func_uint32_t_u_u(((*p_1646->g_1199) = (**p_1646->g_1198)), l_1439)) ^ FAKE_DIVERGE(p_1646->group_2_offset, get_group_id(2), 10))) & p_13) < (-1L)) & (-1L)) , FAKE_DIVERGE(p_1646->group_1_offset, get_group_id(1), 10))) >= l_31.x) < FAKE_DIVERGE(p_1646->global_2_offset, get_global_id(2), 10)), p_13)), 1))), 0x63L)) == 0UL) < 0x17C6L) , (-6L)), 0x76L)) || (-5L))) > 65530UL) | 0UL))) ^ (*p_1646->g_225)) || l_1492) & p_12) > (*p_1646->g_1309)) || p_12))) , 0xD3497A06L) <= 0x1F6B97ACL) > 2UL), p_1646->g_569.y)) , 1L) ^ p_1646->g_769.y)), (-7L))) , &l_1468))) && 0x0FL))))) && 0x33A198D9L) && p_12), 5)), p_12)) ^ 65535UL) , 0x0F78L), FAKE_DIVERGE(p_1646->group_2_offset, get_group_id(2), 10))) | 0L), 6)) < p_1646->g_300.s1), 0L)) & 0x73ED8E55E467969DL) >= FAKE_DIVERGE(p_1646->group_2_offset, get_group_id(2), 10));
        }
        if ((safe_div_func_int8_t_s_s(p_12, (safe_sub_func_uint8_t_u_u((safe_mod_func_uint32_t_u_u(((void*)0 != p_1646->g_1504), ((safe_mod_func_int64_t_s_s(((VECTOR(int64_t, 2))(p_1646->g_1507.xx)).even, ((safe_rshift_func_uint16_t_u_u(p_13, 13)) & ((p_1646->g_1513 = l_1510) != l_1515[0][0])))) & ((((VECTOR(uint16_t, 2))(1UL, 1UL)).lo , 0x193A54D3E1BE0DD5L) | ((safe_unary_minus_func_uint64_t_u(p_1646->g_389.s8)) | 0x2AC2L))))), l_31.y)))))
        { /* block id: 592 */
            uint8_t l_1524 = 0x97L;
            uint8_t *l_1539[1];
            int32_t l_1540 = 0L;
            int32_t l_1541[7] = {3L,3L,3L,3L,3L,3L,3L};
            int i;
            for (i = 0; i < 1; i++)
                l_1539[i] = (void*)0;
            l_1541[2] &= (safe_add_func_int64_t_s_s((safe_sub_func_int8_t_s_s(0x78L, ((-6L) | (((VECTOR(int32_t, 4))(l_1521.s0510)).w && (safe_mul_func_int16_t_s_s(6L, (l_1524 , (!((l_1524 || (((safe_div_func_uint64_t_u_u(((VECTOR(uint64_t, 16))(p_1646->g_1527.s0675206644356645)).s0, (safe_add_func_int8_t_s_s((safe_mul_func_uint8_t_u_u((l_1540 |= (safe_div_func_int8_t_s_s((1L == (l_1536 != &p_1646->g_278[1][4])), ((l_1521.s0 |= ((safe_mul_func_uint8_t_u_u((p_13 < l_1524), l_1494)) && p_12)) || 0x02E1156BL)))), 0x2FL)), l_1524)))) && 0UL) == p_12)) , 0x6D85L))))))))), 0x32B750190244718CL));
        }
        else
        { /* block id: 596 */
            uint32_t l_1556 = 0xA32AC77BL;
            (*p_1646->g_225) |= (p_13 , ((VECTOR(int32_t, 8))(p_1646->g_1542.s71a7f228)).s1);
            for (l_1494 = 0; (l_1494 < 29); l_1494++)
            { /* block id: 600 */
                uint32_t l_1545 = 7UL;
                int32_t **l_1548 = &l_1438[5];
                int32_t *l_1549 = &l_1488[2];
                uint32_t l_1559 = 0x6DB74D6DL;
                l_1545++;
                l_1549 = ((*l_1548) = (void*)0);
                (*p_1646->g_225) ^= ((((((safe_mul_func_int8_t_s_s((((safe_mod_func_uint16_t_u_u(((0x1250L || (0xA4583F34L < (p_12 ^ ((!(l_1556 & p_12)) >= ((safe_sub_func_int32_t_s_s(l_1556, p_12)) < l_1559))))) , (p_12 < l_20)), p_13)) > 0x7D29B4F4L) & p_12), p_12)) < p_13) == p_12) > p_13) , l_1560) == &l_1510);
            }
            l_1488[1] &= (safe_mul_func_uint8_t_u_u((&p_1646->g_1513 != &p_1646->g_1513), (l_1563[2][0] == l_1564[2])));
        }
    }
    return l_1494;
}


/* ------------------------------------------ */
/* 
 * reads : p_1646->g_328 p_1646->g_298 p_1646->g_227 p_1646->g_225 p_1646->g_226 p_1646->g_181 p_1646->g_1323.f1 p_1646->g_214
 * writes: p_1646->g_328 p_1646->g_1324 p_1646->g_1323.f1 p_1646->g_214
 */
uint32_t  func_21(int32_t  p_22, uint64_t  p_23, int64_t  p_24, int64_t  p_25, struct S2 * p_1646)
{ /* block id: 523 */
    int8_t l_1316 = (-1L);
    int32_t **l_1334 = &p_1646->g_128[1][2][6];
    uint32_t l_1335 = 0UL;
    uint16_t *l_1336 = &p_1646->g_379;
    int64_t **l_1344 = (void*)0;
    int32_t l_1393[1];
    int64_t ***l_1406 = &p_1646->g_858;
    uint32_t l_1422 = 0UL;
    int i;
    for (i = 0; i < 1; i++)
        l_1393[i] = 0x38B88044L;
    for (p_1646->g_328 = 0; (p_1646->g_328 < (-12)); p_1646->g_328 = safe_sub_func_int32_t_s_s(p_1646->g_328, 7))
    { /* block id: 526 */
        uint8_t *l_1319[4][4][4] = {{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}}};
        int32_t l_1320 = (-2L);
        union U0 *l_1322 = &p_1646->g_1323;
        union U0 **l_1321 = &l_1322;
        int32_t l_1331 = 0x14638412L;
        int32_t l_1337 = 0x6247D0CBL;
        union U1 **l_1355 = &p_1646->g_278[5][3];
        union U1 ***l_1354 = &l_1355;
        int64_t *l_1356 = &p_1646->g_164;
        int8_t *l_1357[2][8] = {{(void*)0,(void*)0,&p_1646->g_383,(void*)0,(void*)0,(void*)0,(void*)0,&p_1646->g_383},{(void*)0,(void*)0,&p_1646->g_383,(void*)0,(void*)0,(void*)0,(void*)0,&p_1646->g_383}};
        int64_t *l_1358 = (void*)0;
        int64_t *l_1359[1];
        VECTOR(uint32_t, 4) l_1368 = (VECTOR(uint32_t, 4))(8UL, (VECTOR(uint32_t, 2))(8UL, 0UL), 0UL);
        int i, j, k;
        for (i = 0; i < 1; i++)
            l_1359[i] = &p_1646->g_493;
        l_1337 = ((l_1316 <= ((((((((((((safe_lshift_func_uint16_t_u_u((FAKE_DIVERGE(p_1646->group_0_offset, get_group_id(0), 10) & ((l_1320 = (p_1646->g_298[0][2] , 1UL)) != ((p_1646->g_1324 = l_1321) == (((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(((safe_sub_func_int16_t_s_s(((safe_sub_func_int8_t_s_s(l_1331, p_23)) & 18446744073709551615UL), 0x3B1AL)) & (safe_mul_func_uint16_t_u_u((l_1334 != &p_1646->g_225), p_25))), ((VECTOR(int32_t, 2))(0L)), 0x3E8EE15DL)).hi)).even , &l_1322)))), 8)) & l_1331) >= l_1335) < l_1331) , (**p_1646->g_227)) || l_1320) , 0L) > p_1646->g_181.x) > (-2L)) | p_23) , l_1336) == (void*)0)) || (*p_1646->g_225));
    }
    for (p_1646->g_1323.f1 = 0; (p_1646->g_1323.f1 >= 12); ++p_1646->g_1323.f1)
    { /* block id: 565 */
        for (p_1646->g_214 = 10; (p_1646->g_214 <= (-22)); p_1646->g_214 = safe_sub_func_uint8_t_u_u(p_1646->g_214, 7))
        { /* block id: 568 */
            uint16_t **l_1433[1][9] = {{&p_1646->g_1309,&p_1646->g_1309,&p_1646->g_1309,&p_1646->g_1309,&p_1646->g_1309,&p_1646->g_1309,&p_1646->g_1309,&p_1646->g_1309,&p_1646->g_1309}};
            uint16_t ***l_1432 = &l_1433[0][5];
            uint16_t l_1434[6] = {0xF6E2L,0xF6E2L,0xF6E2L,0xF6E2L,0xF6E2L,0xF6E2L};
            int i, j;
            (*l_1432) = &l_1336;
            if (l_1434[0])
                break;
        }
    }
    return p_25;
}


/* ------------------------------------------ */
/* 
 * reads : p_1646->g_14 p_1646->g_551 p_1646->g_190 p_1646->g_62 p_1646->g_1187 p_1646->g_225 p_1646->g_226 p_1646->g_214 p_1646->g_227 p_1646->g_374 p_1646->g_375 p_1646->g_419 p_1646->g_1126 p_1646->g_127 p_1646->g_128 p_1646->g_383 p_1646->g_121 p_1646->g_168 p_1646->g_120 p_1646->g_1270 p_1646->g_1272 p_1646->g_1273 p_1646->g_1274 p_1646->g_193 p_1646->g_1279 p_1646->g_1280 p_1646->g_122 p_1646->g_1271 p_1646->g_1305 p_1646->g_1307 p_1646->g_365
 * writes: p_1646->g_14 p_1646->g_551 p_1646->g_190 p_1646->g_62 p_1646->g_226 p_1646->g_214 p_1646->g_419 p_1646->g_122 p_1646->g_128 p_1646->g_383 p_1646->g_193
 */
int8_t  func_34(int16_t  p_35, struct S2 * p_1646)
{ /* block id: 13 */
    int16_t l_47 = (-6L);
    VECTOR(int8_t, 4) l_331 = (VECTOR(int8_t, 4))(0x30L, (VECTOR(int8_t, 2))(0x30L, 0L), 0L);
    uint32_t l_1125[1];
    VECTOR(uint8_t, 4) l_1132 = (VECTOR(uint8_t, 4))(0xF9L, (VECTOR(uint8_t, 2))(0xF9L, 1UL), 1UL);
    int32_t l_1139 = 0x0FB129FDL;
    VECTOR(uint8_t, 8) l_1146 = (VECTOR(uint8_t, 8))(0x40L, (VECTOR(uint8_t, 4))(0x40L, (VECTOR(uint8_t, 2))(0x40L, 0UL), 0UL), 0UL, 0x40L, 0UL);
    int32_t **l_1151 = &p_1646->g_128[2][4][2];
    VECTOR(int32_t, 2) l_1158 = (VECTOR(int32_t, 2))(0L, 1L);
    VECTOR(int32_t, 8) l_1170 = (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 1L), 1L), 1L, 0L, 1L);
    VECTOR(int8_t, 16) l_1178 = (VECTOR(int8_t, 16))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x73L), 0x73L), 0x73L, 1L, 0x73L, (VECTOR(int8_t, 2))(1L, 0x73L), (VECTOR(int8_t, 2))(1L, 0x73L), 1L, 0x73L, 1L, 0x73L);
    int32_t *l_1214[1];
    int32_t l_1215 = 0L;
    VECTOR(int32_t, 2) l_1245 = (VECTOR(int32_t, 2))(1L, (-6L));
    uint32_t l_1259 = 6UL;
    VECTOR(int8_t, 2) l_1260 = (VECTOR(int8_t, 2))(0L, 0x54L);
    uint64_t l_1278 = 0x7448D6DDDCA58A8BL;
    union U1 *l_1284[4][10][6] = {{{&p_1646->g_1279,&p_1646->g_560,&p_1646->g_85,&p_1646->g_1196,&p_1646->g_560,&p_1646->g_560},{&p_1646->g_1279,&p_1646->g_560,&p_1646->g_85,&p_1646->g_1196,&p_1646->g_560,&p_1646->g_560},{&p_1646->g_1279,&p_1646->g_560,&p_1646->g_85,&p_1646->g_1196,&p_1646->g_560,&p_1646->g_560},{&p_1646->g_1279,&p_1646->g_560,&p_1646->g_85,&p_1646->g_1196,&p_1646->g_560,&p_1646->g_560},{&p_1646->g_1279,&p_1646->g_560,&p_1646->g_85,&p_1646->g_1196,&p_1646->g_560,&p_1646->g_560},{&p_1646->g_1279,&p_1646->g_560,&p_1646->g_85,&p_1646->g_1196,&p_1646->g_560,&p_1646->g_560},{&p_1646->g_1279,&p_1646->g_560,&p_1646->g_85,&p_1646->g_1196,&p_1646->g_560,&p_1646->g_560},{&p_1646->g_1279,&p_1646->g_560,&p_1646->g_85,&p_1646->g_1196,&p_1646->g_560,&p_1646->g_560},{&p_1646->g_1279,&p_1646->g_560,&p_1646->g_85,&p_1646->g_1196,&p_1646->g_560,&p_1646->g_560},{&p_1646->g_1279,&p_1646->g_560,&p_1646->g_85,&p_1646->g_1196,&p_1646->g_560,&p_1646->g_560}},{{&p_1646->g_1279,&p_1646->g_560,&p_1646->g_85,&p_1646->g_1196,&p_1646->g_560,&p_1646->g_560},{&p_1646->g_1279,&p_1646->g_560,&p_1646->g_85,&p_1646->g_1196,&p_1646->g_560,&p_1646->g_560},{&p_1646->g_1279,&p_1646->g_560,&p_1646->g_85,&p_1646->g_1196,&p_1646->g_560,&p_1646->g_560},{&p_1646->g_1279,&p_1646->g_560,&p_1646->g_85,&p_1646->g_1196,&p_1646->g_560,&p_1646->g_560},{&p_1646->g_1279,&p_1646->g_560,&p_1646->g_85,&p_1646->g_1196,&p_1646->g_560,&p_1646->g_560},{&p_1646->g_1279,&p_1646->g_560,&p_1646->g_85,&p_1646->g_1196,&p_1646->g_560,&p_1646->g_560},{&p_1646->g_1279,&p_1646->g_560,&p_1646->g_85,&p_1646->g_1196,&p_1646->g_560,&p_1646->g_560},{&p_1646->g_1279,&p_1646->g_560,&p_1646->g_85,&p_1646->g_1196,&p_1646->g_560,&p_1646->g_560},{&p_1646->g_1279,&p_1646->g_560,&p_1646->g_85,&p_1646->g_1196,&p_1646->g_560,&p_1646->g_560},{&p_1646->g_1279,&p_1646->g_560,&p_1646->g_85,&p_1646->g_1196,&p_1646->g_560,&p_1646->g_560}},{{&p_1646->g_1279,&p_1646->g_560,&p_1646->g_85,&p_1646->g_1196,&p_1646->g_560,&p_1646->g_560},{&p_1646->g_1279,&p_1646->g_560,&p_1646->g_85,&p_1646->g_1196,&p_1646->g_560,&p_1646->g_560},{&p_1646->g_1279,&p_1646->g_560,&p_1646->g_85,&p_1646->g_1196,&p_1646->g_560,&p_1646->g_560},{&p_1646->g_1279,&p_1646->g_560,&p_1646->g_85,&p_1646->g_1196,&p_1646->g_560,&p_1646->g_560},{&p_1646->g_1279,&p_1646->g_560,&p_1646->g_85,&p_1646->g_1196,&p_1646->g_560,&p_1646->g_560},{&p_1646->g_1279,&p_1646->g_560,&p_1646->g_85,&p_1646->g_1196,&p_1646->g_560,&p_1646->g_560},{&p_1646->g_1279,&p_1646->g_560,&p_1646->g_85,&p_1646->g_1196,&p_1646->g_560,&p_1646->g_560},{&p_1646->g_1279,&p_1646->g_560,&p_1646->g_85,&p_1646->g_1196,&p_1646->g_560,&p_1646->g_560},{&p_1646->g_1279,&p_1646->g_560,&p_1646->g_85,&p_1646->g_1196,&p_1646->g_560,&p_1646->g_560},{&p_1646->g_1279,&p_1646->g_560,&p_1646->g_85,&p_1646->g_1196,&p_1646->g_560,&p_1646->g_560}},{{&p_1646->g_1279,&p_1646->g_560,&p_1646->g_85,&p_1646->g_1196,&p_1646->g_560,&p_1646->g_560},{&p_1646->g_1279,&p_1646->g_560,&p_1646->g_85,&p_1646->g_1196,&p_1646->g_560,&p_1646->g_560},{&p_1646->g_1279,&p_1646->g_560,&p_1646->g_85,&p_1646->g_1196,&p_1646->g_560,&p_1646->g_560},{&p_1646->g_1279,&p_1646->g_560,&p_1646->g_85,&p_1646->g_1196,&p_1646->g_560,&p_1646->g_560},{&p_1646->g_1279,&p_1646->g_560,&p_1646->g_85,&p_1646->g_1196,&p_1646->g_560,&p_1646->g_560},{&p_1646->g_1279,&p_1646->g_560,&p_1646->g_85,&p_1646->g_1196,&p_1646->g_560,&p_1646->g_560},{&p_1646->g_1279,&p_1646->g_560,&p_1646->g_85,&p_1646->g_1196,&p_1646->g_560,&p_1646->g_560},{&p_1646->g_1279,&p_1646->g_560,&p_1646->g_85,&p_1646->g_1196,&p_1646->g_560,&p_1646->g_560},{&p_1646->g_1279,&p_1646->g_560,&p_1646->g_85,&p_1646->g_1196,&p_1646->g_560,&p_1646->g_560},{&p_1646->g_1279,&p_1646->g_560,&p_1646->g_85,&p_1646->g_1196,&p_1646->g_560,&p_1646->g_560}}};
    uint64_t *l_1310 = &p_1646->g_360;
    uint8_t l_1312 = 0x6AL;
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_1125[i] = 4294967295UL;
    for (i = 0; i < 1; i++)
        l_1214[i] = &p_1646->g_122[3];
lbl_1213:
    for (p_35 = 0; (p_35 != 23); p_35 = safe_add_func_int16_t_s_s(p_35, 8))
    { /* block id: 16 */
        int16_t l_335 = (-8L);
        int32_t l_336 = 0L;
        uint8_t l_1131 = 0x26L;
        VECTOR(uint16_t, 8) l_1143 = (VECTOR(uint16_t, 8))(65527UL, (VECTOR(uint16_t, 4))(65527UL, (VECTOR(uint16_t, 2))(65527UL, 6UL), 6UL), 6UL, 65527UL, 6UL);
        VECTOR(uint16_t, 4) l_1144 = (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0xC8EBL), 0xC8EBL);
        VECTOR(uint32_t, 2) l_1171 = (VECTOR(uint32_t, 2))(0x64435053L, 4294967295UL);
        VECTOR(uint64_t, 16) l_1190 = (VECTOR(uint64_t, 16))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 18446744073709551606UL), 18446744073709551606UL), 18446744073709551606UL, 1UL, 18446744073709551606UL, (VECTOR(uint64_t, 2))(1UL, 18446744073709551606UL), (VECTOR(uint64_t, 2))(1UL, 18446744073709551606UL), 1UL, 18446744073709551606UL, 1UL, 18446744073709551606UL);
        uint16_t *l_1193 = (void*)0;
        int i;
        for (p_1646->g_14 = 0; (p_1646->g_14 == 11); p_1646->g_14 = safe_add_func_uint32_t_u_u(p_1646->g_14, 2))
        { /* block id: 19 */
            VECTOR(int64_t, 8) l_60 = (VECTOR(int64_t, 8))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, (-5L)), (-5L)), (-5L), 1L, (-5L));
            int64_t *l_61 = &p_1646->g_62;
            int16_t *l_334 = (void*)0;
            int16_t *l_337 = &p_1646->g_196;
            int32_t l_1160 = 0x10A2EE88L;
            VECTOR(uint16_t, 16) l_1161 = (VECTOR(uint16_t, 16))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 65528UL), 65528UL), 65528UL, 1UL, 65528UL, (VECTOR(uint16_t, 2))(1UL, 65528UL), (VECTOR(uint16_t, 2))(1UL, 65528UL), 1UL, 65528UL, 1UL, 65528UL);
            VECTOR(int8_t, 16) l_1177 = (VECTOR(int8_t, 16))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0L), 0L), 0L, 0L, 0L, (VECTOR(int8_t, 2))(0L, 0L), (VECTOR(int8_t, 2))(0L, 0L), 0L, 0L, 0L, 0L);
            int32_t l_1181 = 1L;
            int8_t l_1197 = (-8L);
            uint32_t **l_1201 = &p_1646->g_1199;
            uint32_t ***l_1200 = &l_1201;
            uint64_t **l_1211 = (void*)0;
            int32_t l_1212 = 0x5867A4D9L;
            int i;
            (1 + 1);
        }
        if (p_1646->g_14)
            goto lbl_1213;
    }
    if ((l_1215 |= p_35))
    { /* block id: 451 */
        uint32_t l_1222 = 4294967295UL;
        int32_t l_1254 = 0x47A88637L;
        VECTOR(int8_t, 8) l_1261 = (VECTOR(int8_t, 8))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), (-10L)), (-10L)), (-10L), (-1L), (-10L));
        VECTOR(int8_t, 16) l_1268 = (VECTOR(int8_t, 16))(0x42L, (VECTOR(int8_t, 4))(0x42L, (VECTOR(int8_t, 2))(0x42L, (-1L)), (-1L)), (-1L), 0x42L, (-1L), (VECTOR(int8_t, 2))(0x42L, (-1L)), (VECTOR(int8_t, 2))(0x42L, (-1L)), 0x42L, (-1L), 0x42L, (-1L));
        int32_t *l_1311 = (void*)0;
        int i;
        for (p_1646->g_551 = (-21); (p_1646->g_551 > 9); p_1646->g_551 = safe_add_func_uint64_t_u_u(p_1646->g_551, 2))
        { /* block id: 454 */
            uint32_t l_1248 = 4294967290UL;
            int32_t *l_1251 = (void*)0;
            for (p_1646->g_190 = (-11); (p_1646->g_190 == (-29)); p_1646->g_190 = safe_sub_func_int64_t_s_s(p_1646->g_190, 3))
            { /* block id: 457 */
                for (p_1646->g_62 = 0; (p_1646->g_62 != (-12)); p_1646->g_62--)
                { /* block id: 460 */
                    --l_1222;
                }
            }
            (**p_1646->g_1187) &= 0L;
            for (p_1646->g_214 = 20; (p_1646->g_214 == 2); p_1646->g_214 = safe_sub_func_int32_t_s_s(p_1646->g_214, 6))
            { /* block id: 467 */
                VECTOR(int32_t, 2) l_1247 = (VECTOR(int32_t, 2))((-1L), (-9L));
                int i;
                for (l_1139 = 0; (l_1139 >= (-10)); l_1139--)
                { /* block id: 470 */
                    int32_t *l_1242 = &p_1646->g_190;
                    if ((**p_1646->g_227))
                        break;
                    for (l_1215 = 6; (l_1215 >= 2); --l_1215)
                    { /* block id: 474 */
                        int64_t *l_1239 = (void*)0;
                        int32_t l_1240[5];
                        uint16_t *l_1241 = &p_1646->g_419[0][5][1];
                        int i;
                        for (i = 0; i < 5; i++)
                            l_1240[i] = 0x118F4AEFL;
                        (*p_1646->g_1126) = (0x0A38L > ((p_35 >= (safe_lshift_func_uint8_t_u_s(0x41L, ((((safe_lshift_func_uint16_t_u_s((safe_rshift_func_int8_t_s_s(5L, 3)), 11)) , (void*)0) != (void*)0) > (*p_1646->g_374))))) , ((p_35 == (((*l_1241) &= ((safe_lshift_func_int16_t_s_s((l_1239 == (void*)0), l_1240[2])) >= 255UL)) ^ 0L)) <= p_35)));
                        l_1242 = ((*l_1151) = (*p_1646->g_127));
                    }
                }
                for (p_1646->g_383 = (-26); (p_1646->g_383 == 21); p_1646->g_383++)
                { /* block id: 483 */
                    VECTOR(int32_t, 8) l_1246 = (VECTOR(int32_t, 8))(0x18272D7DL, (VECTOR(int32_t, 4))(0x18272D7DL, (VECTOR(int32_t, 2))(0x18272D7DL, 0x22BBBB11L), 0x22BBBB11L), 0x22BBBB11L, 0x18272D7DL, 0x22BBBB11L);
                    int i;
                    (*p_1646->g_225) &= ((VECTOR(int32_t, 8))(l_1245.yyyxxyyy)).s4;
                    if (p_35)
                        continue;
                    (*p_1646->g_225) = ((*p_1646->g_121) = ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(l_1246.s66)), ((VECTOR(int32_t, 8))(l_1247.yyxyyyxx)), 1L, (l_1246.s4 = p_35), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(0x41828350L, 0x59E4475FL, 0x5DED5184L, 9L)).odd)), 1L, (-10L))).s0);
                }
                l_1248--;
                if ((**p_1646->g_1187))
                    break;
            }
            (*l_1151) = l_1251;
        }
        for (l_1222 = 0; (l_1222 != 36); l_1222 = safe_add_func_uint8_t_u_u(l_1222, 5))
        { /* block id: 497 */
            uint64_t *l_1264 = (void*)0;
            uint64_t **l_1263 = &l_1264;
            uint64_t ***l_1262 = &l_1263;
            VECTOR(int8_t, 2) l_1265 = (VECTOR(int8_t, 2))(8L, 0L);
            VECTOR(int8_t, 8) l_1266 = (VECTOR(int8_t, 8))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x27L), 0x27L), 0x27L, (-1L), 0x27L);
            VECTOR(int8_t, 16) l_1267 = (VECTOR(int8_t, 16))(0x1AL, (VECTOR(int8_t, 4))(0x1AL, (VECTOR(int8_t, 2))(0x1AL, (-1L)), (-1L)), (-1L), 0x1AL, (-1L), (VECTOR(int8_t, 2))(0x1AL, (-1L)), (VECTOR(int8_t, 2))(0x1AL, (-1L)), 0x1AL, (-1L), 0x1AL, (-1L));
            VECTOR(int8_t, 4) l_1269 = (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, (-5L)), (-5L));
            int8_t *l_1275[2][1];
            int32_t l_1276[10][9][2] = {{{3L,0x2092B02AL},{3L,0x2092B02AL},{3L,0x2092B02AL},{3L,0x2092B02AL},{3L,0x2092B02AL},{3L,0x2092B02AL},{3L,0x2092B02AL},{3L,0x2092B02AL},{3L,0x2092B02AL}},{{3L,0x2092B02AL},{3L,0x2092B02AL},{3L,0x2092B02AL},{3L,0x2092B02AL},{3L,0x2092B02AL},{3L,0x2092B02AL},{3L,0x2092B02AL},{3L,0x2092B02AL},{3L,0x2092B02AL}},{{3L,0x2092B02AL},{3L,0x2092B02AL},{3L,0x2092B02AL},{3L,0x2092B02AL},{3L,0x2092B02AL},{3L,0x2092B02AL},{3L,0x2092B02AL},{3L,0x2092B02AL},{3L,0x2092B02AL}},{{3L,0x2092B02AL},{3L,0x2092B02AL},{3L,0x2092B02AL},{3L,0x2092B02AL},{3L,0x2092B02AL},{3L,0x2092B02AL},{3L,0x2092B02AL},{3L,0x2092B02AL},{3L,0x2092B02AL}},{{3L,0x2092B02AL},{3L,0x2092B02AL},{3L,0x2092B02AL},{3L,0x2092B02AL},{3L,0x2092B02AL},{3L,0x2092B02AL},{3L,0x2092B02AL},{3L,0x2092B02AL},{3L,0x2092B02AL}},{{3L,0x2092B02AL},{3L,0x2092B02AL},{3L,0x2092B02AL},{3L,0x2092B02AL},{3L,0x2092B02AL},{3L,0x2092B02AL},{3L,0x2092B02AL},{3L,0x2092B02AL},{3L,0x2092B02AL}},{{3L,0x2092B02AL},{3L,0x2092B02AL},{3L,0x2092B02AL},{3L,0x2092B02AL},{3L,0x2092B02AL},{3L,0x2092B02AL},{3L,0x2092B02AL},{3L,0x2092B02AL},{3L,0x2092B02AL}},{{3L,0x2092B02AL},{3L,0x2092B02AL},{3L,0x2092B02AL},{3L,0x2092B02AL},{3L,0x2092B02AL},{3L,0x2092B02AL},{3L,0x2092B02AL},{3L,0x2092B02AL},{3L,0x2092B02AL}},{{3L,0x2092B02AL},{3L,0x2092B02AL},{3L,0x2092B02AL},{3L,0x2092B02AL},{3L,0x2092B02AL},{3L,0x2092B02AL},{3L,0x2092B02AL},{3L,0x2092B02AL},{3L,0x2092B02AL}},{{3L,0x2092B02AL},{3L,0x2092B02AL},{3L,0x2092B02AL},{3L,0x2092B02AL},{3L,0x2092B02AL},{3L,0x2092B02AL},{3L,0x2092B02AL},{3L,0x2092B02AL},{3L,0x2092B02AL}}};
            uint8_t *l_1277 = &p_1646->g_193;
            VECTOR(int8_t, 4) l_1288 = (VECTOR(int8_t, 4))(0x3AL, (VECTOR(int8_t, 2))(0x3AL, 8L), 8L);
            int i, j, k;
            for (i = 0; i < 2; i++)
            {
                for (j = 0; j < 1; j++)
                    l_1275[i][j] = (void*)0;
            }
            l_1254 |= (*p_1646->g_168);
            if (p_35)
                break;
            if ((safe_rshift_func_int16_t_s_s((((l_1254 | (safe_lshift_func_int8_t_s_u(((((l_1276[6][0][0] = ((VECTOR(int8_t, 8))(l_1259, ((VECTOR(int8_t, 4))(clz(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 16))(sub_sat(((VECTOR(int8_t, 16))(mad_sat(((VECTOR(int8_t, 16))(min(((VECTOR(int8_t, 4))(0x1DL, 4L, 0x02L, 0x7AL)).yzyyzxzzwwzwwzzx, ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 16))(rhadd(((VECTOR(int8_t, 16))(0x6EL, (-1L), ((VECTOR(int8_t, 2))(l_1260.xy)), ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 8))(rhadd(((VECTOR(int8_t, 2))(0x2BL, 0x3CL)).yxyxyyyx, ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(l_1261.s3131)).zxzwzzywwwyzyyyw)).lo))))), (((void*)0 == &p_1646->g_298[0][2]) < (l_1262 != (void*)0)), ((VECTOR(int8_t, 2))(1L, (-1L))), 0x3AL)), ((VECTOR(int8_t, 4))(l_1265.xyyx)).wwxzwyyywwyyyyzw))).s9b)).yyxxyxxxyxxyxxxx))), ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 16))(l_1266.s2610544302004531)).s29)))).xyyxxxxxyyyyyxyy, ((VECTOR(int8_t, 8))(l_1267.s42a73fe5)).s1604244341227574))), ((VECTOR(int8_t, 16))(rhadd(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(l_1268.s62)).xyyyxyyyyxxyyxxx)).s6f)).yyxxxxxxxyxyyxyy, ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))(max(((VECTOR(int8_t, 4))(l_1269.zwxz)).wyzzyzzyyzyxwwyx, (int8_t)((void*)0 != p_1646->g_1270)))).hi)).s4244263224031567)))))).sab)))).xxyx))), ((VECTOR(int8_t, 2))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 2),((VECTOR(int8_t, 2))(p_1646->g_1272.s7d)), ((VECTOR(int8_t, 4))(p_1646->g_1273.s48c8)).hi, ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(p_1646->g_1274.xx)), 0L, (-1L))).hi))), 0L)).s3) >= ((*l_1277) ^= l_1268.s6)) == p_35) || 0x7726B7389754B47BL), l_1278))) , p_35) < l_1222), 11)))
            { /* block id: 502 */
                uint64_t ****l_1283 = &l_1262;
                (*p_1646->g_225) = (p_1646->g_1279 , ((p_1646->g_1280 != l_1283) | 1UL));
            }
            else
            { /* block id: 504 */
                union U1 **l_1285 = &l_1284[2][4][4];
                int32_t l_1306 = 0x198F4809L;
                if ((*p_1646->g_121))
                    break;
                if ((**p_1646->g_1187))
                    break;
                (*l_1285) = l_1284[2][4][4];
                l_1306 = (safe_add_func_int8_t_s_s(((VECTOR(int8_t, 2))(l_1288.zw)).lo, (safe_mod_func_int32_t_s_s((safe_add_func_int8_t_s_s(p_35, ((safe_rshift_func_int16_t_s_s((safe_rshift_func_uint8_t_u_s((p_35 == (safe_add_func_uint8_t_u_u(((((((safe_rshift_func_int16_t_s_u((((!(~(safe_mod_func_int8_t_s_s((safe_add_func_int8_t_s_s(2L, (((l_1222 || (((0x24L | (((l_1276[3][8][1] = p_35) , ((void*)0 != (*p_1646->g_1270))) ^ (p_35 && p_1646->g_1305.s8))) , l_1254) <= p_35)) < p_35) , 0xF4L))), l_1306)))) , p_1646->g_1307[5]) == (void*)0), p_35)) == p_35) && p_1646->g_365.s7) < p_35) > 0x4D67L) <= 0x10L), p_35))), l_1266.s5)), 9)) < l_1266.s7))), l_1222))));
            }
            if (((void*)0 == l_1310))
            { /* block id: 511 */
                (*l_1151) = l_1311;
            }
            else
            { /* block id: 513 */
                return p_35;
            }
        }
        l_1312 &= (**p_1646->g_227);
    }
    else
    { /* block id: 518 */
        int32_t *l_1313 = &p_1646->g_190;
        (*l_1151) = l_1313;
        return p_35;
    }
    return p_35;
}


/* ------------------------------------------ */
/* 
 * reads : p_1646->g_345 p_1646->g_72 p_1646->g_360 p_1646->g_365 p_1646->g_370 p_1646->g_374 p_1646->g_193 p_1646->g_299 p_1646->g_93 p_1646->g_120 p_1646->g_181 p_1646->g_395 p_1646->g_121 p_1646->g_227 p_1646->g_225 p_1646->g_408 p_1646->g_409 p_1646->g_246 p_1646->g_379 p_1646->g_420 p_1646->g_168 p_1646->g_300 p_1646->g_107 p_1646->g_419 p_1646->g_62 p_1646->g_444 p_1646->g_450 p_1646->g_493 p_1646->g_214 p_1646->g_383
 * writes: p_1646->g_72 p_1646->g_360 p_1646->g_164 p_1646->g_107 p_1646->g_383 p_1646->g_395 p_1646->g_122 p_1646->g_379 p_1646->g_419 p_1646->g_196 p_1646->g_226 p_1646->g_161 p_1646->g_450 p_1646->g_214 p_1646->g_62
 */
uint8_t  func_42(uint32_t  p_43, int8_t  p_44, uint32_t  p_45, uint64_t  p_46, struct S2 * p_1646)
{ /* block id: 128 */
    VECTOR(int64_t, 2) l_340 = (VECTOR(int64_t, 2))(1L, 0x5E33DBC7B3E68CF0L);
    VECTOR(uint32_t, 16) l_343 = (VECTOR(uint32_t, 16))(0x62B9EE0CL, (VECTOR(uint32_t, 4))(0x62B9EE0CL, (VECTOR(uint32_t, 2))(0x62B9EE0CL, 8UL), 8UL), 8UL, 0x62B9EE0CL, 8UL, (VECTOR(uint32_t, 2))(0x62B9EE0CL, 8UL), (VECTOR(uint32_t, 2))(0x62B9EE0CL, 8UL), 0x62B9EE0CL, 8UL, 0x62B9EE0CL, 8UL);
    VECTOR(uint32_t, 8) l_344 = (VECTOR(uint32_t, 8))(0x36CD7011L, (VECTOR(uint32_t, 4))(0x36CD7011L, (VECTOR(uint32_t, 2))(0x36CD7011L, 0xE47FC431L), 0xE47FC431L), 0xE47FC431L, 0x36CD7011L, 0xE47FC431L);
    uint8_t *l_352 = &p_1646->g_72[0][0];
    int32_t **l_356[4][7] = {{&p_1646->g_128[2][4][2],&p_1646->g_128[2][4][2],&p_1646->g_128[2][4][2],&p_1646->g_128[2][4][2],&p_1646->g_128[2][4][2],&p_1646->g_128[2][4][2],&p_1646->g_128[2][4][2]},{&p_1646->g_128[2][4][2],&p_1646->g_128[2][4][2],&p_1646->g_128[2][4][2],&p_1646->g_128[2][4][2],&p_1646->g_128[2][4][2],&p_1646->g_128[2][4][2],&p_1646->g_128[2][4][2]},{&p_1646->g_128[2][4][2],&p_1646->g_128[2][4][2],&p_1646->g_128[2][4][2],&p_1646->g_128[2][4][2],&p_1646->g_128[2][4][2],&p_1646->g_128[2][4][2],&p_1646->g_128[2][4][2]},{&p_1646->g_128[2][4][2],&p_1646->g_128[2][4][2],&p_1646->g_128[2][4][2],&p_1646->g_128[2][4][2],&p_1646->g_128[2][4][2],&p_1646->g_128[2][4][2],&p_1646->g_128[2][4][2]}};
    int32_t ***l_355 = &l_356[2][5];
    int32_t **l_357 = (void*)0;
    VECTOR(uint32_t, 4) l_358 = (VECTOR(uint32_t, 4))(0x3536BCEFL, (VECTOR(uint32_t, 2))(0x3536BCEFL, 1UL), 1UL);
    uint64_t *l_359 = &p_1646->g_360;
    VECTOR(int64_t, 8) l_368 = (VECTOR(int64_t, 8))(0x7A8E425C83480101L, (VECTOR(int64_t, 4))(0x7A8E425C83480101L, (VECTOR(int64_t, 2))(0x7A8E425C83480101L, 0x535B6E8F03F4BB78L), 0x535B6E8F03F4BB78L), 0x535B6E8F03F4BB78L, 0x7A8E425C83480101L, 0x535B6E8F03F4BB78L);
    VECTOR(int32_t, 16) l_369 = (VECTOR(int32_t, 16))(2L, (VECTOR(int32_t, 4))(2L, (VECTOR(int32_t, 2))(2L, 1L), 1L), 1L, 2L, 1L, (VECTOR(int32_t, 2))(2L, 1L), (VECTOR(int32_t, 2))(2L, 1L), 2L, 1L, 2L, 1L);
    VECTOR(uint32_t, 4) l_371 = (VECTOR(uint32_t, 4))(2UL, (VECTOR(uint32_t, 2))(2UL, 2UL), 2UL);
    int64_t *l_372 = (void*)0;
    int64_t *l_373[4][1][6] = {{{&p_1646->g_164,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{&p_1646->g_164,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{&p_1646->g_164,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{&p_1646->g_164,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
    uint16_t *l_378 = &p_1646->g_379;
    uint64_t l_380 = 18446744073709551613UL;
    uint32_t *l_381 = &p_1646->g_107;
    int8_t *l_382 = &p_1646->g_383;
    uint32_t l_384 = 0UL;
    volatile int32_t *l_405 = (void*)0;
    VECTOR(int32_t, 16) l_406 = (VECTOR(int32_t, 16))(0x6DA09387L, (VECTOR(int32_t, 4))(0x6DA09387L, (VECTOR(int32_t, 2))(0x6DA09387L, 0x23140577L), 0x23140577L), 0x23140577L, 0x6DA09387L, 0x23140577L, (VECTOR(int32_t, 2))(0x6DA09387L, 0x23140577L), (VECTOR(int32_t, 2))(0x6DA09387L, 0x23140577L), 0x6DA09387L, 0x23140577L, 0x6DA09387L, 0x23140577L);
    VECTOR(int64_t, 4) l_441 = (VECTOR(int64_t, 4))(2L, (VECTOR(int64_t, 2))(2L, 0x1C26EA1E2F513C84L), 0x1C26EA1E2F513C84L);
    int64_t *l_449[6] = {&p_1646->g_62,&p_1646->g_62,&p_1646->g_62,&p_1646->g_62,&p_1646->g_62,&p_1646->g_62};
    int64_t **l_448 = &l_449[0];
    int64_t **l_453 = (void*)0;
    VECTOR(int32_t, 16) l_471 = (VECTOR(int32_t, 16))(0x02D0260EL, (VECTOR(int32_t, 4))(0x02D0260EL, (VECTOR(int32_t, 2))(0x02D0260EL, 0x5FD9E1B4L), 0x5FD9E1B4L), 0x5FD9E1B4L, 0x02D0260EL, 0x5FD9E1B4L, (VECTOR(int32_t, 2))(0x02D0260EL, 0x5FD9E1B4L), (VECTOR(int32_t, 2))(0x02D0260EL, 0x5FD9E1B4L), 0x02D0260EL, 0x5FD9E1B4L, 0x02D0260EL, 0x5FD9E1B4L);
    uint64_t l_476 = 0x14AEC8D5DCF9C728L;
    uint64_t *l_480[6];
    union U1 *l_482 = &p_1646->g_85;
    uint8_t l_494[7] = {1UL,0UL,1UL,1UL,0UL,1UL,1UL};
    uint16_t l_495[2][2][4] = {{{0UL,65528UL,65528UL,0UL},{0UL,65528UL,65528UL,0UL}},{{0UL,65528UL,65528UL,0UL},{0UL,65528UL,65528UL,0UL}}};
    int32_t l_537 = 1L;
    VECTOR(uint64_t, 16) l_567 = (VECTOR(uint64_t, 16))(0x79E4CE6AB363ECAFL, (VECTOR(uint64_t, 4))(0x79E4CE6AB363ECAFL, (VECTOR(uint64_t, 2))(0x79E4CE6AB363ECAFL, 0x087DB4A246E9D4E4L), 0x087DB4A246E9D4E4L), 0x087DB4A246E9D4E4L, 0x79E4CE6AB363ECAFL, 0x087DB4A246E9D4E4L, (VECTOR(uint64_t, 2))(0x79E4CE6AB363ECAFL, 0x087DB4A246E9D4E4L), (VECTOR(uint64_t, 2))(0x79E4CE6AB363ECAFL, 0x087DB4A246E9D4E4L), 0x79E4CE6AB363ECAFL, 0x087DB4A246E9D4E4L, 0x79E4CE6AB363ECAFL, 0x087DB4A246E9D4E4L);
    VECTOR(uint64_t, 16) l_568 = (VECTOR(uint64_t, 16))(0x0E57E5D7DCD104B8L, (VECTOR(uint64_t, 4))(0x0E57E5D7DCD104B8L, (VECTOR(uint64_t, 2))(0x0E57E5D7DCD104B8L, 18446744073709551615UL), 18446744073709551615UL), 18446744073709551615UL, 0x0E57E5D7DCD104B8L, 18446744073709551615UL, (VECTOR(uint64_t, 2))(0x0E57E5D7DCD104B8L, 18446744073709551615UL), (VECTOR(uint64_t, 2))(0x0E57E5D7DCD104B8L, 18446744073709551615UL), 0x0E57E5D7DCD104B8L, 18446744073709551615UL, 0x0E57E5D7DCD104B8L, 18446744073709551615UL);
    VECTOR(uint32_t, 8) l_572 = (VECTOR(uint32_t, 8))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 0x539D0896L), 0x539D0896L), 0x539D0896L, 1UL, 0x539D0896L);
    uint16_t l_578 = 1UL;
    uint8_t l_634 = 0x2BL;
    int64_t l_643 = (-5L);
    VECTOR(uint32_t, 4) l_685 = (VECTOR(uint32_t, 4))(4294967290UL, (VECTOR(uint32_t, 2))(4294967290UL, 0x32B6F395L), 0x32B6F395L);
    VECTOR(uint32_t, 2) l_687 = (VECTOR(uint32_t, 2))(4294967293UL, 3UL);
    VECTOR(int8_t, 8) l_693 = (VECTOR(int8_t, 8))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0x6EL), 0x6EL), 0x6EL, 0L, 0x6EL);
    VECTOR(int16_t, 4) l_741 = (VECTOR(int16_t, 4))(0x6FF2L, (VECTOR(int16_t, 2))(0x6FF2L, (-1L)), (-1L));
    int32_t *l_763 = (void*)0;
    uint32_t l_764 = 0xD33B7F27L;
    int8_t **l_829 = &l_382;
    uint16_t l_864 = 0x2C26L;
    int64_t l_937[8];
    int64_t l_1001 = (-3L);
    uint8_t l_1008 = 0UL;
    uint64_t **l_1083 = &l_480[2];
    uint64_t ***l_1082 = &l_1083;
    uint32_t l_1122 = 0xB67FFE01L;
    int i, j, k;
    for (i = 0; i < 6; i++)
        l_480[i] = &l_476;
    for (i = 0; i < 8; i++)
        l_937[i] = 0x6CCA1EB97B14B6F1L;
    if ((safe_lshift_func_int16_t_s_s((((VECTOR(int64_t, 16))(0L, p_44, 0x53002268D50859C0L, ((VECTOR(int64_t, 2))(max(((VECTOR(int64_t, 16))(clz(((VECTOR(int64_t, 2))(min(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 8))(l_340.xyyyyxyx)).hi)).yxzzzxyy)).s70, (int64_t)(((safe_sub_func_uint32_t_u_u(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 16))(mul_hi(((VECTOR(uint32_t, 16))(l_343.s41bd850105d0d24d)), ((VECTOR(uint32_t, 8))(add_sat(((VECTOR(uint32_t, 16))(l_344.s7726321250616330)).lo, ((VECTOR(uint32_t, 8))(p_1646->g_345.s55346232))))).s3101557336011270))).s92)).odd, (safe_mod_func_uint32_t_u_u(FAKE_DIVERGE(p_1646->group_0_offset, get_group_id(0), 10), l_343.sd)))) < ((safe_div_func_int32_t_s_s((safe_div_func_int16_t_s_s((((*l_355) = ((++(*l_352)) , &p_1646->g_128[1][4][1])) == l_357), l_358.x)), (((*l_359)++) , (safe_mul_func_int8_t_s_s(((*l_382) = (((VECTOR(uint32_t, 2))(p_1646->g_365.s71)).even >= (safe_mul_func_int8_t_s_s((((VECTOR(int64_t, 8))(0x6EA74D60928ED1CFL, ((VECTOR(int64_t, 4))(l_368.s6337)), ((VECTOR(int64_t, 2))(rhadd(((VECTOR(int64_t, 8))((-3L), 1L, (p_1646->g_164 = (((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(l_369.s0d29)).even)).hi ^ ((VECTOR(uint32_t, 8))(0xBE9A7B5CL, 0x78101BD1L, ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 4))(p_1646->g_370.wyww)).odd)), ((VECTOR(uint32_t, 4))(l_371.wyxw)))).s5)), (((((*l_381) = (((((p_1646->g_374 != ((safe_rshift_func_int16_t_s_s(p_46, p_46)) , l_378)) == p_1646->g_193) , l_380) || 0x25L) , p_1646->g_299.s8)) > 0x65C546C4L) == 0x7CL) | p_1646->g_93.s0), ((VECTOR(int64_t, 2))(0x2064537709C69C08L)), (-3L), 0x070A042FF5250010L)).s05, ((VECTOR(int64_t, 2))(6L))))), 0x70C23EE3570C58DDL)).s4 ^ p_1646->g_120[1]), p_46)))), p_46))))) >= 0x4645AC530D03220BL)) >= l_384)))).yxyxyxyxyxxyyxxx))).s6b, ((VECTOR(int64_t, 2))((-1L)))))), ((VECTOR(int64_t, 4))(0x6CCFD93114A85EE1L)), p_43, ((VECTOR(int64_t, 4))((-6L))), 0x06B9DCE8454D5518L, 0x154116CDAF639DCCL)).sa , p_1646->g_181.y), p_1646->g_370.x)))
    { /* block id: 135 */
        int32_t l_393 = 8L;
        int32_t l_400 = 0x67B2C11FL;
        uint64_t *l_401 = &l_380;
        VECTOR(int32_t, 16) l_407 = (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, (-1L)), (-1L)), (-1L), 0L, (-1L), (VECTOR(int32_t, 2))(0L, (-1L)), (VECTOR(int32_t, 2))(0L, (-1L)), 0L, (-1L), 0L, (-1L));
        VECTOR(int8_t, 8) l_413 = (VECTOR(int8_t, 8))(0x74L, (VECTOR(int8_t, 4))(0x74L, (VECTOR(int8_t, 2))(0x74L, (-2L)), (-2L)), (-2L), 0x74L, (-2L));
        int32_t l_434[3];
        int64_t **l_435 = &p_1646->g_161[5];
        int64_t **l_436 = (void*)0;
        int64_t *l_438[6] = {&p_1646->g_62,&p_1646->g_62,&p_1646->g_62,&p_1646->g_62,&p_1646->g_62,&p_1646->g_62};
        int64_t **l_437 = &l_438[3];
        uint64_t *l_445 = &p_1646->g_360;
        int64_t ***l_452[10];
        uint8_t *l_454 = &p_1646->g_72[0][0];
        uint32_t l_475 = 0x66323FC4L;
        uint64_t *l_481 = &l_476;
        int i;
        for (i = 0; i < 3; i++)
            l_434[i] = (-1L);
        for (i = 0; i < 10; i++)
            l_452[i] = (void*)0;
        for (p_43 = 0; (p_43 == 37); p_43 = safe_add_func_int32_t_s_s(p_43, 5))
        { /* block id: 138 */
            int16_t l_392 = 0x41AEL;
            uint64_t *l_394[10] = {&l_380,&l_380,&l_380,&l_380,&l_380,&l_380,&l_380,&l_380,&l_380,&l_380};
            VECTOR(int8_t, 2) l_410 = (VECTOR(int8_t, 2))(0x1DL, 0x7DL);
            uint16_t *l_418 = &p_1646->g_419[0][5][1];
            int16_t *l_431 = (void*)0;
            int16_t *l_432 = &l_392;
            int32_t l_433[10] = {0x72555A16L,0x72555A16L,0x72555A16L,0x72555A16L,0x72555A16L,0x72555A16L,0x72555A16L,0x72555A16L,0x72555A16L,0x72555A16L};
            int i;
            (*p_1646->g_121) = (safe_lshift_func_int16_t_s_u((((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 16))(p_1646->g_389.se467d8c577a97ea3)))).sa && ((VECTOR(int32_t, 2))(0x0B0A65D4L, 0x5B571F62L)).hi), (p_1646->g_360 < ((safe_sub_func_uint8_t_u_u(0xFCL, ((p_1646->g_395[0] &= ((l_393 = l_392) || 0x016744831C16027DL)) <= (p_1646->g_164 = (safe_add_func_uint16_t_u_u(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 8))(mul_hi(((VECTOR(uint16_t, 8))(0x9DC5L, (((((safe_mul_func_uint8_t_u_u((0x25CAL != p_44), (((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(l_392, (~p_45), (l_392 , (*p_1646->g_121)), ((VECTOR(int32_t, 2))(0x36CD46E5L)), 0x23389F06L, 0x6E14C134L, (-1L), ((VECTOR(int32_t, 4))(8L)), (-10L), l_400, 1L, 0x7C3DD684L)).scd2f)).y ^ FAKE_DIVERGE(p_1646->local_0_offset, get_local_id(0), 10)))) & 0x5DA9F92D79A69A2AL) , l_401) != p_1646->g_161[5]) ^ 0L), 0xD60EL, 0x3679L, ((VECTOR(uint16_t, 4))(4UL)))), ((VECTOR(uint16_t, 8))(0x6F7FL))))).lo)).x, p_45)))))) | 0x0DE5L))));
            for (p_1646->g_164 = 0; (p_1646->g_164 == (-20)); p_1646->g_164--)
            { /* block id: 145 */
                volatile int32_t **l_404[4];
                int i;
                for (i = 0; i < 4; i++)
                    l_404[i] = &p_1646->g_225;
                l_405 = (*p_1646->g_227);
            }
            l_434[0] ^= ((VECTOR(int32_t, 16))(1L, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(l_406.s9fdb)).lo)), 0x01B59CCDL, 0L, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(rhadd(((VECTOR(int32_t, 8))(1L, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 16))(l_407.s2d918aa12b7e426e)).lo, ((VECTOR(int32_t, 16))(p_1646->g_408.s5050263447026357)).even))).s41)), ((VECTOR(int32_t, 4))(p_1646->g_409.wzww)), 0L)).s02, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(9L, (0L > ((p_1646->g_196 = ((VECTOR(int16_t, 8))(safe_clamp_func(VECTOR(int16_t, 8),int16_t,((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 16))(upsample(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(l_410.yxxx)), ((VECTOR(int8_t, 4))(0x25L, p_1646->g_408.s5, 1L, 0L)))).s1674116245645004, ((VECTOR(uint8_t, 16))((((safe_lshift_func_int8_t_s_s(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(l_413.s5221)).odd)).odd, p_1646->g_246.y)) != (safe_mod_func_int16_t_s_s(p_1646->g_120[0], (p_1646->g_360 , ((*l_418) = (--(*l_378))))))) && p_1646->g_72[5][1]), 0x7EL, 5UL, ((VECTOR(uint8_t, 8))(p_1646->g_420.wywwyxzz)), ((safe_add_func_int32_t_s_s((*p_1646->g_168), ((*l_381) ^= (+((((l_433[8] = (safe_sub_func_int16_t_s_s(((*l_432) &= (safe_add_func_uint16_t_u_u((safe_rshift_func_int16_t_s_u(1L, (safe_sub_func_uint32_t_u_u(p_46, p_44)))), l_400))), p_43))) && l_413.s7) < p_1646->g_300.sc) & p_46))))) != p_1646->g_419[2][3][3]), ((VECTOR(uint8_t, 4))(0x2AL))))))).lo)).lo)), ((VECTOR(int16_t, 2))((-10L))), 1L, 0x45F4L)), (int16_t)(-4L), (int16_t)l_410.x))).s0) ^ p_1646->g_62)), (-1L), 0x439B5030L, (-1L), 0x13B19B33L, 0x3B03DB8FL, 4L)), 1L, (-1L), 0x476F07B2L, 0x0CDE5882L, 0x3318ECE2L, ((VECTOR(int32_t, 2))(1L)), (-1L))).se6))), 0x53CC4E32L, 0x2E924FB4L)), 1L, ((VECTOR(int32_t, 2))(0L)), ((VECTOR(int32_t, 4))(1L)))).sf;
        }
        (*p_1646->g_225) = 0x44712E14L;
        if (((((*l_437) = ((*l_435) = l_373[1][0][5])) == &p_1646->g_62) >= (l_434[1] && ((safe_div_func_uint64_t_u_u((((VECTOR(int64_t, 16))(((VECTOR(int64_t, 16))(l_441.zwyzzzywwxxwzwxz)))).sf > (safe_mul_func_uint16_t_u_u(((VECTOR(uint16_t, 2))(sub_sat(((VECTOR(uint16_t, 2))(0xBBCCL, 4UL)), ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(p_1646->g_444.s0711)).xyxyxwxy)).s01))).odd, ((l_445 = l_373[2][0][4]) == &p_1646->g_360)))), (safe_lshift_func_int8_t_s_u(p_45, 3)))) < (l_448 == (l_453 = p_1646->g_450[3][6]))))))
        { /* block id: 161 */
            VECTOR(int32_t, 2) l_472 = (VECTOR(int32_t, 2))(0x333C3AC1L, 0x2CB233FFL);
            int8_t *l_473 = (void*)0;
            int8_t *l_474[6][10][4] = {{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}}};
            int32_t l_477 = (-7L);
            uint64_t *l_478[5];
            uint64_t **l_479[8] = {&l_401,&l_401,&l_401,&l_401,&l_401,&l_401,&l_401,&l_401};
            union U1 *l_483 = &p_1646->g_85;
            int32_t **l_486 = &p_1646->g_128[0][3][0];
            VECTOR(uint64_t, 4) l_492 = (VECTOR(uint64_t, 4))(0x052CC88157292C77L, (VECTOR(uint64_t, 2))(0x052CC88157292C77L, 18446744073709551615UL), 18446744073709551615UL);
            uint16_t **l_500 = &l_378;
            int64_t **l_501 = &l_449[2];
            int i, j, k;
            for (i = 0; i < 5; i++)
                l_478[i] = &l_380;
            (*p_1646->g_225) = ((l_480[0] = l_478[1]) != l_481);
            l_495[1][1][0] |= ((l_482 == (p_46 , l_483)) , (l_400 = (((safe_sub_func_int16_t_s_s(((void*)0 == l_486), l_407.sa)) && ((safe_unary_minus_func_uint64_t_u((safe_rshift_func_uint8_t_u_s(l_407.sb, (((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 8))(safe_mul24_func_uint32_t_u_u(VECTOR(uint32_t, 8),((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 4))(0x96B98F73L, (FAKE_DIVERGE(p_1646->group_2_offset, get_group_id(2), 10) , p_46), 0x59E43A25L, 5UL)).hi)).yxyyyyyy, ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))(mad_sat(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 16))(((((safe_div_func_int16_t_s_s((((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(l_492.yx)), 0xA03798CDC8FE6465L, 1UL)))).y ^ ((*l_401) = ((p_1646->g_493 >= (-5L)) >= 0UL))), p_1646->g_420.w)) , l_478[1]) != (void*)0) , 4294967295UL), ((VECTOR(uint32_t, 8))(4294967295UL)), ((VECTOR(uint32_t, 2))(0x8DE8D97EL)), p_1646->g_408.s2, ((VECTOR(uint32_t, 2))(0x7AA4228DL)), 0xF7A28A39L, 0UL)).s85)).xxxx, ((VECTOR(uint32_t, 4))(4294967295UL)), ((VECTOR(uint32_t, 4))(4294967295UL))))).wzwxwxwwzxwzxywx)).s3fe7)).yzyyyyyx))).hi)).z , l_494[0]))))) && 0xA6FC8AB34F68D259L)) != 0x72D2C594L)));
            l_453 = (p_1646->g_450[3][6] = (((l_413.s7 >= (&p_44 != (void*)0)) && (safe_mod_func_int8_t_s_s((safe_lshift_func_uint16_t_u_u((((*l_500) = &l_495[1][0][2]) != (void*)0), 6)), 1L))) , l_501));
            l_405 = (*p_1646->g_227);
        }
        else
        { /* block id: 177 */
            int64_t l_505 = 0x415AA2BE16657AB7L;
            for (p_43 = (-23); (p_43 < 56); ++p_43)
            { /* block id: 180 */
                return p_46;
            }
            l_505 = 1L;
        }
        (*p_1646->g_225) = ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(p_43, ((VECTOR(int32_t, 2))(0x654BD667L, 0x5240BB24L)), 0x7CA682DEL)))).wzxxzzwwzwxyzxyy)).sf;
    }
    else
    { /* block id: 186 */
        VECTOR(uint16_t, 16) l_506 = (VECTOR(uint16_t, 16))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 2UL), 2UL), 2UL, 0UL, 2UL, (VECTOR(uint16_t, 2))(0UL, 2UL), (VECTOR(uint16_t, 2))(0UL, 2UL), 0UL, 2UL, 0UL, 2UL);
        int i;
        if (l_506.s4)
        { /* block id: 187 */
            uint16_t l_507 = 8UL;
            --l_507;
        }
        else
        { /* block id: 189 */
            (*p_1646->g_225) = (((VECTOR(uint8_t, 2))(0xF3L, 0xDEL)).even > p_1646->g_120[1]);
        }
    }
    for (p_1646->g_214 = 0; (p_1646->g_214 < (-21)); p_1646->g_214--)
    { /* block id: 195 */
        uint16_t **l_514[7][10][1] = {{{&l_378},{&l_378},{&l_378},{&l_378},{&l_378},{&l_378},{&l_378},{&l_378},{&l_378},{&l_378}},{{&l_378},{&l_378},{&l_378},{&l_378},{&l_378},{&l_378},{&l_378},{&l_378},{&l_378},{&l_378}},{{&l_378},{&l_378},{&l_378},{&l_378},{&l_378},{&l_378},{&l_378},{&l_378},{&l_378},{&l_378}},{{&l_378},{&l_378},{&l_378},{&l_378},{&l_378},{&l_378},{&l_378},{&l_378},{&l_378},{&l_378}},{{&l_378},{&l_378},{&l_378},{&l_378},{&l_378},{&l_378},{&l_378},{&l_378},{&l_378},{&l_378}},{{&l_378},{&l_378},{&l_378},{&l_378},{&l_378},{&l_378},{&l_378},{&l_378},{&l_378},{&l_378}},{{&l_378},{&l_378},{&l_378},{&l_378},{&l_378},{&l_378},{&l_378},{&l_378},{&l_378},{&l_378}}};
        int32_t l_524 = 0x4C515526L;
        int64_t l_543 = 0x6C75175A2BE47E69L;
        int32_t l_546[9][6][4] = {{{0x008964C8L,0x31B9F0C9L,(-1L),0x58B0EA32L},{0x008964C8L,0x31B9F0C9L,(-1L),0x58B0EA32L},{0x008964C8L,0x31B9F0C9L,(-1L),0x58B0EA32L},{0x008964C8L,0x31B9F0C9L,(-1L),0x58B0EA32L},{0x008964C8L,0x31B9F0C9L,(-1L),0x58B0EA32L},{0x008964C8L,0x31B9F0C9L,(-1L),0x58B0EA32L}},{{0x008964C8L,0x31B9F0C9L,(-1L),0x58B0EA32L},{0x008964C8L,0x31B9F0C9L,(-1L),0x58B0EA32L},{0x008964C8L,0x31B9F0C9L,(-1L),0x58B0EA32L},{0x008964C8L,0x31B9F0C9L,(-1L),0x58B0EA32L},{0x008964C8L,0x31B9F0C9L,(-1L),0x58B0EA32L},{0x008964C8L,0x31B9F0C9L,(-1L),0x58B0EA32L}},{{0x008964C8L,0x31B9F0C9L,(-1L),0x58B0EA32L},{0x008964C8L,0x31B9F0C9L,(-1L),0x58B0EA32L},{0x008964C8L,0x31B9F0C9L,(-1L),0x58B0EA32L},{0x008964C8L,0x31B9F0C9L,(-1L),0x58B0EA32L},{0x008964C8L,0x31B9F0C9L,(-1L),0x58B0EA32L},{0x008964C8L,0x31B9F0C9L,(-1L),0x58B0EA32L}},{{0x008964C8L,0x31B9F0C9L,(-1L),0x58B0EA32L},{0x008964C8L,0x31B9F0C9L,(-1L),0x58B0EA32L},{0x008964C8L,0x31B9F0C9L,(-1L),0x58B0EA32L},{0x008964C8L,0x31B9F0C9L,(-1L),0x58B0EA32L},{0x008964C8L,0x31B9F0C9L,(-1L),0x58B0EA32L},{0x008964C8L,0x31B9F0C9L,(-1L),0x58B0EA32L}},{{0x008964C8L,0x31B9F0C9L,(-1L),0x58B0EA32L},{0x008964C8L,0x31B9F0C9L,(-1L),0x58B0EA32L},{0x008964C8L,0x31B9F0C9L,(-1L),0x58B0EA32L},{0x008964C8L,0x31B9F0C9L,(-1L),0x58B0EA32L},{0x008964C8L,0x31B9F0C9L,(-1L),0x58B0EA32L},{0x008964C8L,0x31B9F0C9L,(-1L),0x58B0EA32L}},{{0x008964C8L,0x31B9F0C9L,(-1L),0x58B0EA32L},{0x008964C8L,0x31B9F0C9L,(-1L),0x58B0EA32L},{0x008964C8L,0x31B9F0C9L,(-1L),0x58B0EA32L},{0x008964C8L,0x31B9F0C9L,(-1L),0x58B0EA32L},{0x008964C8L,0x31B9F0C9L,(-1L),0x58B0EA32L},{0x008964C8L,0x31B9F0C9L,(-1L),0x58B0EA32L}},{{0x008964C8L,0x31B9F0C9L,(-1L),0x58B0EA32L},{0x008964C8L,0x31B9F0C9L,(-1L),0x58B0EA32L},{0x008964C8L,0x31B9F0C9L,(-1L),0x58B0EA32L},{0x008964C8L,0x31B9F0C9L,(-1L),0x58B0EA32L},{0x008964C8L,0x31B9F0C9L,(-1L),0x58B0EA32L},{0x008964C8L,0x31B9F0C9L,(-1L),0x58B0EA32L}},{{0x008964C8L,0x31B9F0C9L,(-1L),0x58B0EA32L},{0x008964C8L,0x31B9F0C9L,(-1L),0x58B0EA32L},{0x008964C8L,0x31B9F0C9L,(-1L),0x58B0EA32L},{0x008964C8L,0x31B9F0C9L,(-1L),0x58B0EA32L},{0x008964C8L,0x31B9F0C9L,(-1L),0x58B0EA32L},{0x008964C8L,0x31B9F0C9L,(-1L),0x58B0EA32L}},{{0x008964C8L,0x31B9F0C9L,(-1L),0x58B0EA32L},{0x008964C8L,0x31B9F0C9L,(-1L),0x58B0EA32L},{0x008964C8L,0x31B9F0C9L,(-1L),0x58B0EA32L},{0x008964C8L,0x31B9F0C9L,(-1L),0x58B0EA32L},{0x008964C8L,0x31B9F0C9L,(-1L),0x58B0EA32L},{0x008964C8L,0x31B9F0C9L,(-1L),0x58B0EA32L}}};
        VECTOR(uint8_t, 8) l_575 = (VECTOR(uint8_t, 8))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 3UL), 3UL), 3UL, 255UL, 3UL);
        int8_t l_591 = 0x56L;
        int32_t *l_612 = &l_546[7][5][2];
        union U1 **l_631 = &p_1646->g_278[3][1];
        union U0 *l_642[6] = {&p_1646->g_298[0][2],&p_1646->g_298[0][2],&p_1646->g_298[0][2],&p_1646->g_298[0][2],&p_1646->g_298[0][2],&p_1646->g_298[0][2]};
        int8_t l_683 = 0L;
        int32_t l_719[2][10] = {{0x796A061DL,(-1L),0x796A061DL,0x796A061DL,(-1L),0x796A061DL,0x796A061DL,(-1L),0x796A061DL,0x796A061DL},{0x796A061DL,(-1L),0x796A061DL,0x796A061DL,(-1L),0x796A061DL,0x796A061DL,(-1L),0x796A061DL,0x796A061DL}};
        int8_t l_720 = (-8L);
        VECTOR(int16_t, 2) l_742 = (VECTOR(int16_t, 2))(1L, 0x2412L);
        VECTOR(int16_t, 2) l_743 = (VECTOR(int16_t, 2))(0x3230L, (-3L));
        VECTOR(int16_t, 16) l_745 = (VECTOR(int16_t, 16))(0x1477L, (VECTOR(int16_t, 4))(0x1477L, (VECTOR(int16_t, 2))(0x1477L, (-1L)), (-1L)), (-1L), 0x1477L, (-1L), (VECTOR(int16_t, 2))(0x1477L, (-1L)), (VECTOR(int16_t, 2))(0x1477L, (-1L)), 0x1477L, (-1L), 0x1477L, (-1L));
        uint8_t l_757 = 0x6EL;
        VECTOR(uint16_t, 4) l_777 = (VECTOR(uint16_t, 4))(0xCFEDL, (VECTOR(uint16_t, 2))(0xCFEDL, 0xBD7EL), 0xBD7EL);
        int32_t l_814 = 1L;
        VECTOR(int16_t, 8) l_818 = (VECTOR(int16_t, 8))(0x7F72L, (VECTOR(int16_t, 4))(0x7F72L, (VECTOR(int16_t, 2))(0x7F72L, 0x1D98L), 0x1D98L), 0x1D98L, 0x7F72L, 0x1D98L);
        uint16_t l_833 = 0x065DL;
        VECTOR(int8_t, 8) l_841 = (VECTOR(int8_t, 8))((-7L), (VECTOR(int8_t, 4))((-7L), (VECTOR(int8_t, 2))((-7L), 0x2CL), 0x2CL), 0x2CL, (-7L), 0x2CL);
        VECTOR(int8_t, 8) l_842 = (VECTOR(int8_t, 8))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), (-1L)), (-1L)), (-1L), (-1L), (-1L));
        int8_t l_860[10] = {(-1L),0x67L,(-1L),0x67L,(-1L),(-1L),0x67L,(-1L),0x67L,(-1L)};
        uint64_t l_861 = 3UL;
        int i, j, k;
        for (p_1646->g_383 = 0; (p_1646->g_383 <= (-23)); p_1646->g_383 = safe_sub_func_uint64_t_u_u(p_1646->g_383, 1))
        { /* block id: 198 */
            uint16_t ***l_515 = (void*)0;
            uint16_t ***l_516 = (void*)0;
            uint16_t ***l_517[5] = {&l_514[4][4][0],&l_514[4][4][0],&l_514[4][4][0],&l_514[4][4][0],&l_514[4][4][0]};
            uint64_t **l_529 = &l_480[0];
            VECTOR(int16_t, 8) l_536 = (VECTOR(int16_t, 8))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x5527L), 0x5527L), 0x5527L, 1L, 0x5527L);
            int32_t l_539 = 0x7A497721L;
            int32_t l_542[1];
            int64_t l_549 = 0L;
            uint32_t *l_577 = (void*)0;
            union U0 *l_615 = &p_1646->g_298[0][0];
            VECTOR(int8_t, 16) l_622 = (VECTOR(int8_t, 16))(7L, (VECTOR(int8_t, 4))(7L, (VECTOR(int8_t, 2))(7L, (-1L)), (-1L)), (-1L), 7L, (-1L), (VECTOR(int8_t, 2))(7L, (-1L)), (VECTOR(int8_t, 2))(7L, (-1L)), 7L, (-1L), 7L, (-1L));
            int32_t ***l_651 = &l_356[3][6];
            uint64_t *l_658 = &p_1646->g_360;
            VECTOR(int32_t, 4) l_678 = (VECTOR(int32_t, 4))(0x1E7E6598L, (VECTOR(int32_t, 2))(0x1E7E6598L, 0x024E39C0L), 0x024E39C0L);
            VECTOR(uint32_t, 16) l_686 = (VECTOR(uint32_t, 16))(4294967290UL, (VECTOR(uint32_t, 4))(4294967290UL, (VECTOR(uint32_t, 2))(4294967290UL, 0xDB5909A9L), 0xDB5909A9L), 0xDB5909A9L, 4294967290UL, 0xDB5909A9L, (VECTOR(uint32_t, 2))(4294967290UL, 0xDB5909A9L), (VECTOR(uint32_t, 2))(4294967290UL, 0xDB5909A9L), 4294967290UL, 0xDB5909A9L, 4294967290UL, 0xDB5909A9L);
            int8_t *l_690 = (void*)0;
            int8_t *l_691 = (void*)0;
            int8_t *l_692 = &l_591;
            VECTOR(int8_t, 4) l_704 = (VECTOR(int8_t, 4))((-8L), (VECTOR(int8_t, 2))((-8L), 0x6AL), 0x6AL);
            VECTOR(int16_t, 8) l_768 = (VECTOR(int16_t, 8))(0x50E3L, (VECTOR(int16_t, 4))(0x50E3L, (VECTOR(int16_t, 2))(0x50E3L, (-1L)), (-1L)), (-1L), 0x50E3L, (-1L));
            VECTOR(int32_t, 2) l_786 = (VECTOR(int32_t, 2))(0x724681E8L, 0x36103AAAL);
            union U1 **l_787 = &p_1646->g_278[1][4];
            uint8_t l_848 = 255UL;
            int i;
            for (i = 0; i < 1; i++)
                l_542[i] = 0x50599365L;
            (1 + 1);
        }
        l_861++;
    }
    l_864--;
    for (l_380 = (-4); (l_380 >= 14); ++l_380)
    { /* block id: 333 */
        uint64_t l_869 = 3UL;
        volatile int32_t **l_872 = &l_405;
        VECTOR(int64_t, 2) l_886 = (VECTOR(int64_t, 2))(3L, 0x0F5E7B9978244465L);
        int64_t **l_902 = &p_1646->g_451;
        int16_t *l_934 = (void*)0;
        int32_t l_974[6] = {0x4462B9EAL,0x4462B9EAL,0x4462B9EAL,0x4462B9EAL,0x4462B9EAL,0x4462B9EAL};
        uint16_t l_1025 = 65532UL;
        int32_t l_1047 = 1L;
        int32_t l_1050 = (-1L);
        int32_t l_1051 = (-7L);
        uint64_t **l_1080[9][9] = {{(void*)0,&l_480[0],&l_480[0],(void*)0,&l_480[0],&l_480[0],&l_480[0],&l_480[0],(void*)0},{(void*)0,&l_480[0],&l_480[0],(void*)0,&l_480[0],&l_480[0],&l_480[0],&l_480[0],(void*)0},{(void*)0,&l_480[0],&l_480[0],(void*)0,&l_480[0],&l_480[0],&l_480[0],&l_480[0],(void*)0},{(void*)0,&l_480[0],&l_480[0],(void*)0,&l_480[0],&l_480[0],&l_480[0],&l_480[0],(void*)0},{(void*)0,&l_480[0],&l_480[0],(void*)0,&l_480[0],&l_480[0],&l_480[0],&l_480[0],(void*)0},{(void*)0,&l_480[0],&l_480[0],(void*)0,&l_480[0],&l_480[0],&l_480[0],&l_480[0],(void*)0},{(void*)0,&l_480[0],&l_480[0],(void*)0,&l_480[0],&l_480[0],&l_480[0],&l_480[0],(void*)0},{(void*)0,&l_480[0],&l_480[0],(void*)0,&l_480[0],&l_480[0],&l_480[0],&l_480[0],(void*)0},{(void*)0,&l_480[0],&l_480[0],(void*)0,&l_480[0],&l_480[0],&l_480[0],&l_480[0],(void*)0}};
        uint64_t ***l_1079 = &l_1080[5][6];
        VECTOR(uint16_t, 16) l_1091 = (VECTOR(uint16_t, 16))(65534UL, (VECTOR(uint16_t, 4))(65534UL, (VECTOR(uint16_t, 2))(65534UL, 1UL), 1UL), 1UL, 65534UL, 1UL, (VECTOR(uint16_t, 2))(65534UL, 1UL), (VECTOR(uint16_t, 2))(65534UL, 1UL), 65534UL, 1UL, 65534UL, 1UL);
        int i, j;
        l_869++;
        (*l_872) = (*p_1646->g_227);
        for (p_1646->g_62 = (-8); (p_1646->g_62 != 25); ++p_1646->g_62)
        { /* block id: 338 */
            int16_t *l_877 = &p_1646->g_214;
            int32_t *l_899 = (void*)0;
            int32_t l_909 = 0x1D4FFD67L;
            int32_t l_911[8][6][5] = {{{(-1L),3L,0x206960E7L,0x4B407987L,0x1EBF9CECL},{(-1L),3L,0x206960E7L,0x4B407987L,0x1EBF9CECL},{(-1L),3L,0x206960E7L,0x4B407987L,0x1EBF9CECL},{(-1L),3L,0x206960E7L,0x4B407987L,0x1EBF9CECL},{(-1L),3L,0x206960E7L,0x4B407987L,0x1EBF9CECL},{(-1L),3L,0x206960E7L,0x4B407987L,0x1EBF9CECL}},{{(-1L),3L,0x206960E7L,0x4B407987L,0x1EBF9CECL},{(-1L),3L,0x206960E7L,0x4B407987L,0x1EBF9CECL},{(-1L),3L,0x206960E7L,0x4B407987L,0x1EBF9CECL},{(-1L),3L,0x206960E7L,0x4B407987L,0x1EBF9CECL},{(-1L),3L,0x206960E7L,0x4B407987L,0x1EBF9CECL},{(-1L),3L,0x206960E7L,0x4B407987L,0x1EBF9CECL}},{{(-1L),3L,0x206960E7L,0x4B407987L,0x1EBF9CECL},{(-1L),3L,0x206960E7L,0x4B407987L,0x1EBF9CECL},{(-1L),3L,0x206960E7L,0x4B407987L,0x1EBF9CECL},{(-1L),3L,0x206960E7L,0x4B407987L,0x1EBF9CECL},{(-1L),3L,0x206960E7L,0x4B407987L,0x1EBF9CECL},{(-1L),3L,0x206960E7L,0x4B407987L,0x1EBF9CECL}},{{(-1L),3L,0x206960E7L,0x4B407987L,0x1EBF9CECL},{(-1L),3L,0x206960E7L,0x4B407987L,0x1EBF9CECL},{(-1L),3L,0x206960E7L,0x4B407987L,0x1EBF9CECL},{(-1L),3L,0x206960E7L,0x4B407987L,0x1EBF9CECL},{(-1L),3L,0x206960E7L,0x4B407987L,0x1EBF9CECL},{(-1L),3L,0x206960E7L,0x4B407987L,0x1EBF9CECL}},{{(-1L),3L,0x206960E7L,0x4B407987L,0x1EBF9CECL},{(-1L),3L,0x206960E7L,0x4B407987L,0x1EBF9CECL},{(-1L),3L,0x206960E7L,0x4B407987L,0x1EBF9CECL},{(-1L),3L,0x206960E7L,0x4B407987L,0x1EBF9CECL},{(-1L),3L,0x206960E7L,0x4B407987L,0x1EBF9CECL},{(-1L),3L,0x206960E7L,0x4B407987L,0x1EBF9CECL}},{{(-1L),3L,0x206960E7L,0x4B407987L,0x1EBF9CECL},{(-1L),3L,0x206960E7L,0x4B407987L,0x1EBF9CECL},{(-1L),3L,0x206960E7L,0x4B407987L,0x1EBF9CECL},{(-1L),3L,0x206960E7L,0x4B407987L,0x1EBF9CECL},{(-1L),3L,0x206960E7L,0x4B407987L,0x1EBF9CECL},{(-1L),3L,0x206960E7L,0x4B407987L,0x1EBF9CECL}},{{(-1L),3L,0x206960E7L,0x4B407987L,0x1EBF9CECL},{(-1L),3L,0x206960E7L,0x4B407987L,0x1EBF9CECL},{(-1L),3L,0x206960E7L,0x4B407987L,0x1EBF9CECL},{(-1L),3L,0x206960E7L,0x4B407987L,0x1EBF9CECL},{(-1L),3L,0x206960E7L,0x4B407987L,0x1EBF9CECL},{(-1L),3L,0x206960E7L,0x4B407987L,0x1EBF9CECL}},{{(-1L),3L,0x206960E7L,0x4B407987L,0x1EBF9CECL},{(-1L),3L,0x206960E7L,0x4B407987L,0x1EBF9CECL},{(-1L),3L,0x206960E7L,0x4B407987L,0x1EBF9CECL},{(-1L),3L,0x206960E7L,0x4B407987L,0x1EBF9CECL},{(-1L),3L,0x206960E7L,0x4B407987L,0x1EBF9CECL},{(-1L),3L,0x206960E7L,0x4B407987L,0x1EBF9CECL}}};
            VECTOR(uint8_t, 2) l_935 = (VECTOR(uint8_t, 2))(0x08L, 0UL);
            uint32_t **l_953 = &l_381;
            union U1 *l_955 = &p_1646->g_560;
            uint32_t l_960[6][4] = {{0x02B4DC14L,4294967291UL,0x02B4DC14L,0x02B4DC14L},{0x02B4DC14L,4294967291UL,0x02B4DC14L,0x02B4DC14L},{0x02B4DC14L,4294967291UL,0x02B4DC14L,0x02B4DC14L},{0x02B4DC14L,4294967291UL,0x02B4DC14L,0x02B4DC14L},{0x02B4DC14L,4294967291UL,0x02B4DC14L,0x02B4DC14L},{0x02B4DC14L,4294967291UL,0x02B4DC14L,0x02B4DC14L}};
            uint32_t l_973[9][4] = {{0UL,0UL,0UL,0UL},{0UL,0UL,0UL,0UL},{0UL,0UL,0UL,0UL},{0UL,0UL,0UL,0UL},{0UL,0UL,0UL,0UL},{0UL,0UL,0UL,0UL},{0UL,0UL,0UL,0UL},{0UL,0UL,0UL,0UL},{0UL,0UL,0UL,0UL}};
            VECTOR(int32_t, 2) l_1019 = (VECTOR(int32_t, 2))(0x71EAE545L, 3L);
            uint32_t l_1024[8] = {4294967287UL,9UL,4294967287UL,4294967287UL,9UL,4294967287UL,4294967287UL,9UL};
            uint32_t l_1063 = 0x5E23DFEAL;
            uint64_t l_1120[5][5] = {{0UL,0x85EE9F26F5146488L,0xB5DC40C4AC34021FL,18446744073709551612UL,0xB5DC40C4AC34021FL},{0UL,0x85EE9F26F5146488L,0xB5DC40C4AC34021FL,18446744073709551612UL,0xB5DC40C4AC34021FL},{0UL,0x85EE9F26F5146488L,0xB5DC40C4AC34021FL,18446744073709551612UL,0xB5DC40C4AC34021FL},{0UL,0x85EE9F26F5146488L,0xB5DC40C4AC34021FL,18446744073709551612UL,0xB5DC40C4AC34021FL},{0UL,0x85EE9F26F5146488L,0xB5DC40C4AC34021FL,18446744073709551612UL,0xB5DC40C4AC34021FL}};
            int i, j, k;
            (1 + 1);
        }
    }
    return p_43;
}


/* ------------------------------------------ */
/* 
 * reads : p_1646->g_50.f0 p_1646->g_85 p_1646->g_86 p_1646->g_62 p_1646->g_14 p_1646->g_2 p_1646->g_118 p_1646->g_120 p_1646->g_121 p_1646->g_127 p_1646->g_128 p_1646->g_129 p_1646->g_122 p_1646->g_85.f0 p_1646->g_93 p_1646->g_107 p_1646->g_168 p_1646->g_181 p_1646->g_72 p_1646->g_190 p_1646->g_193 p_1646->g_197 p_1646->g_198 p_1646->g_214 p_1646->g_196 p_1646->g_225 p_1646->g_227 p_1646->g_226 p_1646->g_298 p_1646->g_299 p_1646->g_300 p_1646->g_309 p_1646->g_328
 * writes: p_1646->g_72 p_1646->g_86 p_1646->g_120 p_1646->g_122 p_1646->g_107 p_1646->g_128 p_1646->g_62 p_1646->g_161 p_1646->g_164 p_1646->g_190 p_1646->g_193 p_1646->g_196 p_1646->g_225 p_1646->g_226
 */
int8_t  func_57(uint8_t  p_58, int64_t  p_59, struct S2 * p_1646)
{ /* block id: 21 */
    int64_t *l_70[6][6] = {{&p_1646->g_62,&p_1646->g_62,&p_1646->g_62,&p_1646->g_62,&p_1646->g_62,&p_1646->g_62},{&p_1646->g_62,&p_1646->g_62,&p_1646->g_62,&p_1646->g_62,&p_1646->g_62,&p_1646->g_62},{&p_1646->g_62,&p_1646->g_62,&p_1646->g_62,&p_1646->g_62,&p_1646->g_62,&p_1646->g_62},{&p_1646->g_62,&p_1646->g_62,&p_1646->g_62,&p_1646->g_62,&p_1646->g_62,&p_1646->g_62},{&p_1646->g_62,&p_1646->g_62,&p_1646->g_62,&p_1646->g_62,&p_1646->g_62,&p_1646->g_62},{&p_1646->g_62,&p_1646->g_62,&p_1646->g_62,&p_1646->g_62,&p_1646->g_62,&p_1646->g_62}};
    int64_t *l_73 = &p_1646->g_62;
    int32_t l_88 = 0x3FC796D6L;
    VECTOR(int32_t, 16) l_219 = (VECTOR(int32_t, 16))(0x64240811L, (VECTOR(int32_t, 4))(0x64240811L, (VECTOR(int32_t, 2))(0x64240811L, 0x6BC78CB2L), 0x6BC78CB2L), 0x6BC78CB2L, 0x64240811L, 0x6BC78CB2L, (VECTOR(int32_t, 2))(0x64240811L, 0x6BC78CB2L), (VECTOR(int32_t, 2))(0x64240811L, 0x6BC78CB2L), 0x64240811L, 0x6BC78CB2L, 0x64240811L, 0x6BC78CB2L);
    uint16_t l_261[9] = {7UL,7UL,7UL,7UL,7UL,7UL,7UL,7UL,7UL};
    int16_t l_264 = 0x28FEL;
    int8_t l_267 = 1L;
    VECTOR(int32_t, 16) l_310 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 1L), 1L), 1L, (-1L), 1L, (VECTOR(int32_t, 2))((-1L), 1L), (VECTOR(int32_t, 2))((-1L), 1L), (-1L), 1L, (-1L), 1L);
    VECTOR(uint16_t, 2) l_319 = (VECTOR(uint16_t, 2))(0x51C1L, 0xDC46L);
    VECTOR(uint16_t, 2) l_320 = (VECTOR(uint16_t, 2))(0x4E14L, 0x8E69L);
    int i, j;
    if (p_1646->g_50.f0)
    { /* block id: 22 */
        uint8_t *l_71 = &p_1646->g_72[0][0];
        int32_t l_87 = 0x42281945L;
        int64_t *l_132 = &p_1646->g_62;
        int64_t **l_131 = &l_132;
        uint8_t *l_191 = (void*)0;
        uint8_t *l_192 = &p_1646->g_193;
        VECTOR(int32_t, 16) l_202 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), (-5L)), (-5L)), (-5L), (-1L), (-5L), (VECTOR(int32_t, 2))((-1L), (-5L)), (VECTOR(int32_t, 2))((-1L), (-5L)), (-1L), (-5L), (-1L), (-5L));
        VECTOR(int32_t, 4) l_218 = (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 3L), 3L);
        uint32_t l_237[8];
        uint32_t *l_242[1][8] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
        uint32_t *l_245 = &p_1646->g_86;
        uint16_t l_291 = 0UL;
        int i, j;
        for (i = 0; i < 8; i++)
            l_237[i] = 0UL;
        if ((p_59 | (safe_lshift_func_uint8_t_u_u(((*l_192) &= (func_65(((*l_71) = ((void*)0 != l_70[3][5])), l_73, p_59, func_74(((*l_131) = func_77(l_71, (safe_sub_func_int64_t_s_s((p_1646->g_85 , ((((-1L) != (((p_1646->g_86 |= 9L) , p_58) , l_87)) <= l_88) & 0x9FE4D3D8L)), l_87)), p_1646->g_62, p_1646->g_14, p_1646->g_2, p_1646)), l_88, p_1646), p_1646) , l_88)), 5))))
        { /* block id: 70 */
            int32_t *l_201 = &p_1646->g_122[3];
            uint32_t *l_212[2];
            uint32_t **l_211 = &l_212[0];
            int16_t *l_213[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
            uint8_t l_215 = 253UL;
            int32_t *l_216[9] = {&p_1646->g_120[0],(void*)0,&p_1646->g_120[0],&p_1646->g_120[0],(void*)0,&p_1646->g_120[0],&p_1646->g_120[0],(void*)0,&p_1646->g_120[0]};
            int i;
            for (i = 0; i < 2; i++)
                l_212[i] = &p_1646->g_107;
            l_87 |= ((p_1646->g_86 = (safe_sub_func_int8_t_s_s((p_1646->g_196 = (0x2CL < FAKE_DIVERGE(p_1646->global_0_offset, get_global_id(0), 10))), (((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 8))(mul_hi(((VECTOR(uint32_t, 2))(abs(((VECTOR(uint32_t, 16))(0xA93766C5L, 0xA1050D8DL, 4294967291UL, ((VECTOR(uint32_t, 2))(0x7D8683A8L, 0x0C404CD8L)), ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(p_1646->g_197.zyzz)).yyzyzyww)).s1, 0x5E046418L, 0UL, ((!((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(clz(((VECTOR(int32_t, 4))(p_1646->g_198.yyyy)).hi))), 0L, 0x07254583L)).w) , ((safe_div_func_int8_t_s_s(l_88, ((((((*l_201) = 0L) < ((VECTOR(int32_t, 16))(sub_sat(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(max(((VECTOR(int32_t, 4))(l_202.s9408)), (int32_t)(safe_div_func_uint64_t_u_u(18446744073709551613UL, (((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(0x35L, 0L)).yxxx)).w ^ (p_59 < ((((safe_lshift_func_int16_t_s_u((l_215 ^= (safe_add_func_uint64_t_u_u((((((*l_211) = ((safe_mod_func_int64_t_s_s((0xF14AL == ((l_88 <= 0x76EE4DCE94A6969CL) , p_1646->g_120[1])), p_1646->g_2)) , &p_1646->g_86)) == &p_1646->g_14) && 0x6CEDD8EA20BC5C36L) < (*p_1646->g_168)), 1UL))), p_1646->g_107)) < l_88) , p_59) == l_202.s8)))))))))).zywyxywyzzxzxxww, ((VECTOR(int32_t, 16))(0x7EE75AF2L))))).s6) != p_59) <= p_59) , 0x0FL))) != l_88)), 0x800C3B0AL, 0x62B848EAL, 0x3535FD6FL, ((VECTOR(uint32_t, 2))(5UL)), 4294967287UL, 4294967295UL)).s91))).xxxxyxxy, ((VECTOR(uint32_t, 8))(1UL))))).lo)).z & 1L)))) && 4294967295UL);
        }
        else
        { /* block id: 77 */
            VECTOR(uint16_t, 16) l_217 = (VECTOR(uint16_t, 16))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0xB689L), 0xB689L), 0xB689L, 1UL, 0xB689L, (VECTOR(uint16_t, 2))(1UL, 0xB689L), (VECTOR(uint16_t, 2))(1UL, 0xB689L), 1UL, 0xB689L, 1UL, 0xB689L);
            int32_t l_220 = (-1L);
            int i;
            l_202.s1 &= (((p_59 ^ ((VECTOR(uint16_t, 2))(l_217.s5e)).even) > p_1646->g_214) & 0L);
            l_220 ^= ((VECTOR(int32_t, 16))(sub_sat(((VECTOR(int32_t, 2))(l_218.xw)).xxyxxyxxyxyyxyxx, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(l_219.sd4)).yxyy)).even)).yxxxyxxxyyxyyyyy))).s7;
        }
        for (p_1646->g_196 = 28; (p_1646->g_196 < (-14)); p_1646->g_196--)
        { /* block id: 83 */
            int64_t l_235[7][4][7] = {{{1L,0L,1L,0x45241B2535BE3E96L,0x71172552A63C9075L,0x45241B2535BE3E96L,1L},{1L,0L,1L,0x45241B2535BE3E96L,0x71172552A63C9075L,0x45241B2535BE3E96L,1L},{1L,0L,1L,0x45241B2535BE3E96L,0x71172552A63C9075L,0x45241B2535BE3E96L,1L},{1L,0L,1L,0x45241B2535BE3E96L,0x71172552A63C9075L,0x45241B2535BE3E96L,1L}},{{1L,0L,1L,0x45241B2535BE3E96L,0x71172552A63C9075L,0x45241B2535BE3E96L,1L},{1L,0L,1L,0x45241B2535BE3E96L,0x71172552A63C9075L,0x45241B2535BE3E96L,1L},{1L,0L,1L,0x45241B2535BE3E96L,0x71172552A63C9075L,0x45241B2535BE3E96L,1L},{1L,0L,1L,0x45241B2535BE3E96L,0x71172552A63C9075L,0x45241B2535BE3E96L,1L}},{{1L,0L,1L,0x45241B2535BE3E96L,0x71172552A63C9075L,0x45241B2535BE3E96L,1L},{1L,0L,1L,0x45241B2535BE3E96L,0x71172552A63C9075L,0x45241B2535BE3E96L,1L},{1L,0L,1L,0x45241B2535BE3E96L,0x71172552A63C9075L,0x45241B2535BE3E96L,1L},{1L,0L,1L,0x45241B2535BE3E96L,0x71172552A63C9075L,0x45241B2535BE3E96L,1L}},{{1L,0L,1L,0x45241B2535BE3E96L,0x71172552A63C9075L,0x45241B2535BE3E96L,1L},{1L,0L,1L,0x45241B2535BE3E96L,0x71172552A63C9075L,0x45241B2535BE3E96L,1L},{1L,0L,1L,0x45241B2535BE3E96L,0x71172552A63C9075L,0x45241B2535BE3E96L,1L},{1L,0L,1L,0x45241B2535BE3E96L,0x71172552A63C9075L,0x45241B2535BE3E96L,1L}},{{1L,0L,1L,0x45241B2535BE3E96L,0x71172552A63C9075L,0x45241B2535BE3E96L,1L},{1L,0L,1L,0x45241B2535BE3E96L,0x71172552A63C9075L,0x45241B2535BE3E96L,1L},{1L,0L,1L,0x45241B2535BE3E96L,0x71172552A63C9075L,0x45241B2535BE3E96L,1L},{1L,0L,1L,0x45241B2535BE3E96L,0x71172552A63C9075L,0x45241B2535BE3E96L,1L}},{{1L,0L,1L,0x45241B2535BE3E96L,0x71172552A63C9075L,0x45241B2535BE3E96L,1L},{1L,0L,1L,0x45241B2535BE3E96L,0x71172552A63C9075L,0x45241B2535BE3E96L,1L},{1L,0L,1L,0x45241B2535BE3E96L,0x71172552A63C9075L,0x45241B2535BE3E96L,1L},{1L,0L,1L,0x45241B2535BE3E96L,0x71172552A63C9075L,0x45241B2535BE3E96L,1L}},{{1L,0L,1L,0x45241B2535BE3E96L,0x71172552A63C9075L,0x45241B2535BE3E96L,1L},{1L,0L,1L,0x45241B2535BE3E96L,0x71172552A63C9075L,0x45241B2535BE3E96L,1L},{1L,0L,1L,0x45241B2535BE3E96L,0x71172552A63C9075L,0x45241B2535BE3E96L,1L},{1L,0L,1L,0x45241B2535BE3E96L,0x71172552A63C9075L,0x45241B2535BE3E96L,1L}}};
            int32_t l_236 = 1L;
            int16_t *l_243 = (void*)0;
            int32_t l_265 = 2L;
            int32_t l_268 = 0x562EA414L;
            int32_t l_269 = (-1L);
            int32_t l_270[6] = {0x0826CEA4L,0x0826CEA4L,0x0826CEA4L,0x0826CEA4L,0x0826CEA4L,0x0826CEA4L};
            int i, j, k;
            if (p_59)
                break;
            for (l_88 = 0; (l_88 > 14); ++l_88)
            { /* block id: 87 */
                uint32_t *l_244 = &p_1646->g_107;
                int32_t l_266 = 0L;
                VECTOR(int32_t, 2) l_271 = (VECTOR(int32_t, 2))(0L, 5L);
                uint32_t l_273 = 4294967295UL;
                union U1 *l_276 = &p_1646->g_85;
                int i;
                (*p_1646->g_227) = p_1646->g_225;
                if (p_58)
                { /* block id: 89 */
                    int32_t l_228 = 1L;
                    int32_t *l_229 = &p_1646->g_122[3];
                    int32_t *l_230 = &l_228;
                    int32_t *l_231 = (void*)0;
                    int32_t *l_232 = &l_228;
                    int32_t *l_233 = &p_1646->g_122[3];
                    int32_t *l_234[2][7][10] = {{{&p_1646->g_120[1],(void*)0,&p_1646->g_122[3],(void*)0,&l_228,&p_1646->g_190,&p_1646->g_122[3],&p_1646->g_120[1],(void*)0,&p_1646->g_120[1]},{&p_1646->g_120[1],(void*)0,&p_1646->g_122[3],(void*)0,&l_228,&p_1646->g_190,&p_1646->g_122[3],&p_1646->g_120[1],(void*)0,&p_1646->g_120[1]},{&p_1646->g_120[1],(void*)0,&p_1646->g_122[3],(void*)0,&l_228,&p_1646->g_190,&p_1646->g_122[3],&p_1646->g_120[1],(void*)0,&p_1646->g_120[1]},{&p_1646->g_120[1],(void*)0,&p_1646->g_122[3],(void*)0,&l_228,&p_1646->g_190,&p_1646->g_122[3],&p_1646->g_120[1],(void*)0,&p_1646->g_120[1]},{&p_1646->g_120[1],(void*)0,&p_1646->g_122[3],(void*)0,&l_228,&p_1646->g_190,&p_1646->g_122[3],&p_1646->g_120[1],(void*)0,&p_1646->g_120[1]},{&p_1646->g_120[1],(void*)0,&p_1646->g_122[3],(void*)0,&l_228,&p_1646->g_190,&p_1646->g_122[3],&p_1646->g_120[1],(void*)0,&p_1646->g_120[1]},{&p_1646->g_120[1],(void*)0,&p_1646->g_122[3],(void*)0,&l_228,&p_1646->g_190,&p_1646->g_122[3],&p_1646->g_120[1],(void*)0,&p_1646->g_120[1]}},{{&p_1646->g_120[1],(void*)0,&p_1646->g_122[3],(void*)0,&l_228,&p_1646->g_190,&p_1646->g_122[3],&p_1646->g_120[1],(void*)0,&p_1646->g_120[1]},{&p_1646->g_120[1],(void*)0,&p_1646->g_122[3],(void*)0,&l_228,&p_1646->g_190,&p_1646->g_122[3],&p_1646->g_120[1],(void*)0,&p_1646->g_120[1]},{&p_1646->g_120[1],(void*)0,&p_1646->g_122[3],(void*)0,&l_228,&p_1646->g_190,&p_1646->g_122[3],&p_1646->g_120[1],(void*)0,&p_1646->g_120[1]},{&p_1646->g_120[1],(void*)0,&p_1646->g_122[3],(void*)0,&l_228,&p_1646->g_190,&p_1646->g_122[3],&p_1646->g_120[1],(void*)0,&p_1646->g_120[1]},{&p_1646->g_120[1],(void*)0,&p_1646->g_122[3],(void*)0,&l_228,&p_1646->g_190,&p_1646->g_122[3],&p_1646->g_120[1],(void*)0,&p_1646->g_120[1]},{&p_1646->g_120[1],(void*)0,&p_1646->g_122[3],(void*)0,&l_228,&p_1646->g_190,&p_1646->g_122[3],&p_1646->g_120[1],(void*)0,&p_1646->g_120[1]},{&p_1646->g_120[1],(void*)0,&p_1646->g_122[3],(void*)0,&l_228,&p_1646->g_190,&p_1646->g_122[3],&p_1646->g_120[1],(void*)0,&p_1646->g_120[1]}}};
                    int i, j, k;
                    if (p_59)
                        break;
                    --l_237[6];
                    if (p_59)
                        continue;
                    (*l_233) |= ((*l_230) = (safe_sub_func_int8_t_s_s(((!(l_242[0][3] == ((p_59 < (&p_1646->g_196 != l_243)) , (l_245 = l_244)))) ^ (((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(p_1646->g_246.xyxy)), (-7L), 0x1F7FF7380DA34F26L, 5L, 0x4F06DE3E1FD3E131L)).s4 ^ p_1646->g_198.x)), (safe_mod_func_uint32_t_u_u((safe_lshift_func_uint8_t_u_s((safe_mod_func_uint8_t_u_u(255UL, l_202.s5)), p_1646->g_2)), p_59)))));
                }
                else
                { /* block id: 96 */
                    int32_t l_255 = 0x57F94C00L;
                    VECTOR(int32_t, 4) l_260 = (VECTOR(int32_t, 4))(0x63976DC7L, (VECTOR(int32_t, 2))(0x63976DC7L, 0x7BC0C0E7L), 0x7BC0C0E7L);
                    int8_t l_272 = 0x23L;
                    int i;
                    if (l_236)
                    { /* block id: 97 */
                        int32_t *l_256 = &p_1646->g_190;
                        int32_t *l_257 = &p_1646->g_120[0];
                        int32_t *l_258 = &p_1646->g_120[0];
                        int32_t *l_259[2];
                        int i;
                        for (i = 0; i < 2; i++)
                            l_259[i] = &p_1646->g_122[3];
                        (*p_1646->g_225) = (((safe_sub_func_uint64_t_u_u(l_87, p_59)) != ((VECTOR(int64_t, 4))(0x3B7875852534E593L, 0x7AC3AC0D66E434D6L, 0L, 1L)).x) < l_255);
                        l_261[4]++;
                        --l_273;
                        l_276 = l_276;
                    }
                    else
                    { /* block id: 102 */
                        int32_t *l_280 = &l_270[3];
                        int32_t *l_281 = &l_265;
                        int32_t *l_282 = &p_1646->g_120[1];
                        int32_t *l_283 = &l_269;
                        int32_t *l_284 = &l_265;
                        int32_t *l_285 = &l_87;
                        int32_t *l_286 = (void*)0;
                        int32_t *l_287 = &l_269;
                        int32_t *l_288 = &p_1646->g_190;
                        int32_t *l_289 = &l_87;
                        int32_t *l_290[5][5][3] = {{{&l_255,&l_88,&p_1646->g_122[3]},{&l_255,&l_88,&p_1646->g_122[3]},{&l_255,&l_88,&p_1646->g_122[3]},{&l_255,&l_88,&p_1646->g_122[3]},{&l_255,&l_88,&p_1646->g_122[3]}},{{&l_255,&l_88,&p_1646->g_122[3]},{&l_255,&l_88,&p_1646->g_122[3]},{&l_255,&l_88,&p_1646->g_122[3]},{&l_255,&l_88,&p_1646->g_122[3]},{&l_255,&l_88,&p_1646->g_122[3]}},{{&l_255,&l_88,&p_1646->g_122[3]},{&l_255,&l_88,&p_1646->g_122[3]},{&l_255,&l_88,&p_1646->g_122[3]},{&l_255,&l_88,&p_1646->g_122[3]},{&l_255,&l_88,&p_1646->g_122[3]}},{{&l_255,&l_88,&p_1646->g_122[3]},{&l_255,&l_88,&p_1646->g_122[3]},{&l_255,&l_88,&p_1646->g_122[3]},{&l_255,&l_88,&p_1646->g_122[3]},{&l_255,&l_88,&p_1646->g_122[3]}},{{&l_255,&l_88,&p_1646->g_122[3]},{&l_255,&l_88,&p_1646->g_122[3]},{&l_255,&l_88,&p_1646->g_122[3]},{&l_255,&l_88,&p_1646->g_122[3]},{&l_255,&l_88,&p_1646->g_122[3]}}};
                        int i, j, k;
                        l_219.s3 = (**p_1646->g_227);
                        if (p_58)
                            break;
                        (*p_1646->g_225) = ((VECTOR(int32_t, 16))(p_1646->g_279.s6235421451414672)).s1;
                        --l_291;
                    }
                }
            }
        }
    }
    else
    { /* block id: 111 */
        uint16_t l_304 = 65531UL;
        for (p_1646->g_190 = 0; (p_1646->g_190 != (-23)); p_1646->g_190--)
        { /* block id: 114 */
            int32_t *l_301 = (void*)0;
            int32_t *l_302 = (void*)0;
            int32_t *l_303 = &p_1646->g_120[1];
            VECTOR(uint16_t, 8) l_321 = (VECTOR(uint16_t, 8))(7UL, (VECTOR(uint16_t, 4))(7UL, (VECTOR(uint16_t, 2))(7UL, 0xDD68L), 0xDD68L), 0xDD68L, 7UL, 0xDD68L);
            int i;
            (*l_303) &= (safe_lshift_func_int8_t_s_u((p_1646->g_298[0][2] , p_59), ((VECTOR(uint8_t, 4))(hadd(((VECTOR(uint8_t, 2))(p_1646->g_299.s5c)).xyxy, ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 4))(p_1646->g_300.s9a8b))))))).x));
            l_304++;
            for (p_1646->g_86 = 0; (p_1646->g_86 == 18); p_1646->g_86 = safe_add_func_int16_t_s_s(p_1646->g_86, 4))
            { /* block id: 119 */
                (*l_303) = ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(sub_sat(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(p_1646->g_309.wwzz)), 0L, ((VECTOR(int32_t, 8))(l_310.sd820d2fc)), (((safe_div_func_uint64_t_u_u(((safe_add_func_uint8_t_u_u(((void*)0 != &p_1646->g_196), ((p_1646->g_226 > ((safe_add_func_uint16_t_u_u((safe_add_func_uint32_t_u_u(p_1646->g_181.y, FAKE_DIVERGE(p_1646->local_1_offset, get_local_id(1), 10))), ((VECTOR(uint16_t, 16))(mad_hi(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(sub_sat(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 16))(hadd(((VECTOR(uint16_t, 8))(0x256CL, 0UL, ((VECTOR(uint16_t, 2))(l_319.yx)), ((VECTOR(uint16_t, 4))(l_320.yxxy)))).s5110024151076620, ((VECTOR(uint16_t, 2))(l_321.s15)).yxxyyxyxyxyxxxxy))))).s97, ((VECTOR(uint16_t, 2))(0xE995L, 0xC0BEL))))), ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(FAKE_DIVERGE(p_1646->local_0_offset, get_local_id(0), 10), 65529UL, 0xE898L, 8UL)), 0x5183L, (safe_div_func_int32_t_s_s((p_1646->g_72[0][0] && 1UL), ((0x1231B19AL > GROUP_DIVERGE(1, 1)) ^ (safe_rshift_func_int16_t_s_s((safe_mul_func_int16_t_s_s(0x3BD8L, (((((((void*)0 != &p_1646->g_62) , 3UL) || 65535UL) < 255UL) , 4294967292UL) > p_1646->g_181.y))), p_59))))), 0UL, 0x5033L)), 0xF6E0L, 0xE72DL, 1UL, 0x9650L, 0xEF7AL, 0x8096L)), ((VECTOR(uint16_t, 16))(65532UL)), ((VECTOR(uint16_t, 16))(0x60C4L))))).s6)) < p_58)) , p_59))) == p_1646->g_328), 0x1F9E9C1E547E43D7L)) <= p_58) , 0x01CB3595L), 0x110DE3B4L, 0x697CFCC6L)).s55ca)).xyyxzxyz, ((VECTOR(int32_t, 8))(0x49C00F63L))))).s4777166443114401)).sd;
            }
        }
        return p_58;
    }
    return p_59;
}


/* ------------------------------------------ */
/* 
 * reads : p_1646->g_107 p_1646->g_85.f0 p_1646->g_14 p_1646->g_181 p_1646->g_72 p_1646->g_190
 * writes: p_1646->g_190
 */
uint32_t  func_65(uint8_t  p_66, int64_t * p_67, int32_t  p_68, int64_t * p_69, struct S2 * p_1646)
{ /* block id: 64 */
    int32_t *l_169[1][1];
    int64_t l_170 = (-1L);
    uint32_t l_171[4];
    VECTOR(int8_t, 2) l_174 = (VECTOR(int8_t, 2))(0L, 0x4BL);
    int32_t l_175 = 0x747F2877L;
    uint16_t l_176 = 2UL;
    VECTOR(uint8_t, 16) l_182 = (VECTOR(uint8_t, 16))(0x6EL, (VECTOR(uint8_t, 4))(0x6EL, (VECTOR(uint8_t, 2))(0x6EL, 0x5BL), 0x5BL), 0x5BL, 0x6EL, 0x5BL, (VECTOR(uint8_t, 2))(0x6EL, 0x5BL), (VECTOR(uint8_t, 2))(0x6EL, 0x5BL), 0x6EL, 0x5BL, 0x6EL, 0x5BL);
    VECTOR(uint8_t, 16) l_183 = (VECTOR(uint8_t, 16))(8UL, (VECTOR(uint8_t, 4))(8UL, (VECTOR(uint8_t, 2))(8UL, 255UL), 255UL), 255UL, 8UL, 255UL, (VECTOR(uint8_t, 2))(8UL, 255UL), (VECTOR(uint8_t, 2))(8UL, 255UL), 8UL, 255UL, 8UL, 255UL);
    int i, j;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 1; j++)
            l_169[i][j] = &p_1646->g_122[3];
    }
    for (i = 0; i < 4; i++)
        l_171[i] = 4294967290UL;
    --l_171[3];
    l_176--;
    p_1646->g_190 |= (safe_div_func_uint16_t_u_u(((((+(p_1646->g_107 ^ p_1646->g_85.f0)) | (p_1646->g_107 , (0x3459L >= p_1646->g_14))) < ((p_66 < ((VECTOR(uint8_t, 16))(mad_sat(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 8))(max(((VECTOR(uint8_t, 16))(p_1646->g_181.yyxxxyyxxxxxyxxy)).hi, ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(0xE3L, 0x65L)).xxyx)).wxwxwxyx))))).s0747724306327173, ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(mad_sat(((VECTOR(uint8_t, 16))((&l_169[0][0] == &l_169[0][0]), ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(0xE7L, ((VECTOR(uint8_t, 2))(min(((VECTOR(uint8_t, 2))(252UL, 0x54L)), ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 2))(l_182.s6d))))))), 0xF5L)).zyxzzzxw)).odd)), ((VECTOR(uint8_t, 8))(l_183.s133c6027)).s6, 252UL, 0x03L, 1UL)))).s5, 255UL, 0x17L, ((VECTOR(uint8_t, 4))(min(((VECTOR(uint8_t, 2))(0UL, 1UL)).yxxx, ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(255UL, 0x08L)), ((VECTOR(uint8_t, 4))(abs_diff(((VECTOR(uint8_t, 2))(0xF6L, 2UL)).yyyy, ((VECTOR(uint8_t, 4))(0x0FL, (safe_add_func_int16_t_s_s((safe_div_func_uint16_t_u_u((safe_add_func_int32_t_s_s(p_66, GROUP_DIVERGE(1, 1))), p_1646->g_72[7][1])), p_1646->g_14)), 0x62L, 0x42L))))), ((VECTOR(uint8_t, 2))(255UL)), 0x6AL, ((VECTOR(uint8_t, 2))(0UL)), 255UL, ((VECTOR(uint8_t, 2))(0x91L)), 0xADL, 255UL)).s60e2))), ((VECTOR(uint8_t, 8))(250UL)))).sdfa9, ((VECTOR(uint8_t, 4))(0xFEL)), ((VECTOR(uint8_t, 4))(0UL))))), 0UL, p_68, 1UL, 0x3CL)))).s2201424306535110, ((VECTOR(uint8_t, 16))(0x89L))))).s9) < p_66)) && 65533UL), p_66));
    return p_66;
}


/* ------------------------------------------ */
/* 
 * reads : p_1646->g_62 p_1646->g_121 p_1646->g_122 p_1646->g_85.f0 p_1646->g_85 p_1646->g_93 p_1646->g_120 p_1646->g_107 p_1646->g_168
 * writes: p_1646->g_62 p_1646->g_86 p_1646->g_161 p_1646->g_164 p_1646->g_120
 */
int64_t * func_74(int64_t * p_75, int8_t  p_76, struct S2 * p_1646)
{ /* block id: 47 */
    uint16_t l_138 = 0x553DL;
    VECTOR(int16_t, 16) l_143 = (VECTOR(int16_t, 16))((-8L), (VECTOR(int16_t, 4))((-8L), (VECTOR(int16_t, 2))((-8L), 0x04C0L), 0x04C0L), 0x04C0L, (-8L), 0x04C0L, (VECTOR(int16_t, 2))((-8L), 0x04C0L), (VECTOR(int16_t, 2))((-8L), 0x04C0L), (-8L), 0x04C0L, (-8L), 0x04C0L);
    VECTOR(int64_t, 16) l_144 = (VECTOR(int64_t, 16))(0x3BA64CE0CA3B740FL, (VECTOR(int64_t, 4))(0x3BA64CE0CA3B740FL, (VECTOR(int64_t, 2))(0x3BA64CE0CA3B740FL, (-1L)), (-1L)), (-1L), 0x3BA64CE0CA3B740FL, (-1L), (VECTOR(int64_t, 2))(0x3BA64CE0CA3B740FL, (-1L)), (VECTOR(int64_t, 2))(0x3BA64CE0CA3B740FL, (-1L)), 0x3BA64CE0CA3B740FL, (-1L), 0x3BA64CE0CA3B740FL, (-1L));
    VECTOR(int16_t, 2) l_150 = (VECTOR(int16_t, 2))(5L, 0L);
    int64_t *l_160 = &p_1646->g_62;
    int64_t **l_159[6];
    uint16_t *l_162 = (void*)0;
    uint16_t *l_163 = (void*)0;
    int64_t l_165 = 0x4B55262E4DC6A2FAL;
    uint64_t *l_166 = (void*)0;
    int32_t l_167 = 0x6E845A36L;
    int i;
    for (i = 0; i < 6; i++)
        l_159[i] = &l_160;
    for (p_1646->g_62 = 0; (p_1646->g_62 <= 21); p_1646->g_62++)
    { /* block id: 50 */
        int32_t l_135[1][9] = {{1L,1L,1L,1L,1L,1L,1L,1L,1L}};
        int32_t *l_136 = &p_1646->g_120[1];
        int32_t *l_137 = (void*)0;
        int i, j;
        l_138--;
    }
    for (p_76 = 0; (p_76 == 20); p_76 = safe_add_func_int32_t_s_s(p_76, 3))
    { /* block id: 55 */
        if ((*p_1646->g_121))
            break;
    }
    (*p_1646->g_168) = ((((((l_167 = ((((((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(min(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(max(((VECTOR(int16_t, 4))(sub_sat(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(max(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(l_143.sb5)), ((((VECTOR(int64_t, 16))(l_144.s434c43cd8866dc53)).s1 == (((p_1646->g_86 = p_1646->g_85.f0) , (((p_76 , (((VECTOR(uint64_t, 2))(rhadd(((VECTOR(uint64_t, 16))(((safe_unary_minus_func_uint16_t_u(FAKE_DIVERGE(p_1646->local_1_offset, get_local_id(1), 10))) ^ 0x25184A0FL), ((safe_mul_func_int16_t_s_s((safe_mul_func_int16_t_s_s(((VECTOR(int16_t, 16))(l_150.xyyyyxxxxxyxxyxy)).s5, ((p_1646->g_85 , (safe_mul_func_uint16_t_u_u((((safe_sub_func_uint32_t_u_u(l_138, (safe_mod_func_uint16_t_u_u((safe_div_func_uint64_t_u_u((0x44L > ((((p_1646->g_161[4] = p_75) == &p_1646->g_62) & (p_1646->g_164 = p_76)) & l_138)), l_150.x)), (-2L))))) != 0x74A3L) == 1UL), 0xD213L))) && 0x504EE4DB16BE7C8CL))), (-10L))) < p_1646->g_93.s0), ((VECTOR(uint64_t, 8))(0x0EE5EE185A6AE0BEL)), ((VECTOR(uint64_t, 2))(0xAE182EB9260482E1L)), 0UL, 9UL, 0x62913F7DCBD80DBDL, 0UL)).s6b, ((VECTOR(uint64_t, 2))(0xC2139280DD1ACC90L))))).even , p_75)) == &p_1646->g_62) | FAKE_DIVERGE(p_1646->local_0_offset, get_local_id(0), 10))) == l_150.y)) ^ p_1646->g_120[0]), 0x654CL, (-1L), 1L, (-5L), 0L)).hi)), ((VECTOR(int16_t, 4))((-6L)))))).ywzyxzzwwwxzxyzw)).s8b09, ((VECTOR(int16_t, 4))((-5L)))))).yyzxzwzx, ((VECTOR(int16_t, 8))(0x5D3CL))))).hi)).hi, (int16_t)l_165))))).yyxy)), ((VECTOR(int16_t, 2))(0x1755L)), 0x2C6CL, 0x54E1L)).odd)).z | p_76) == l_165) & l_165) , p_1646->g_107)) > 0x4A1DE74A5FEA7228L) == 0x09CDAB9F7BF7F2EFL) , 0x5FC2F5E6F3355245L) != (-2L)) ^ 0UL);
    return p_75;
}


/* ------------------------------------------ */
/* 
 * reads : p_1646->g_50.f0 p_1646->g_118 p_1646->g_120 p_1646->g_121 p_1646->g_127 p_1646->g_128 p_1646->g_129
 * writes: p_1646->g_120 p_1646->g_122 p_1646->g_107 p_1646->g_128
 */
int64_t * func_77(uint8_t * p_78, uint8_t  p_79, int8_t  p_80, int32_t  p_81, int32_t  p_82, struct S2 * p_1646)
{ /* block id: 25 */
    VECTOR(int8_t, 16) l_94 = (VECTOR(int8_t, 16))(0x61L, (VECTOR(int8_t, 4))(0x61L, (VECTOR(int8_t, 2))(0x61L, 0x3CL), 0x3CL), 0x3CL, 0x61L, 0x3CL, (VECTOR(int8_t, 2))(0x61L, 0x3CL), (VECTOR(int8_t, 2))(0x61L, 0x3CL), 0x61L, 0x3CL, 0x61L, 0x3CL);
    uint8_t *l_115 = (void*)0;
    int32_t l_116 = 0x1A124D13L;
    int16_t l_117 = 0x4857L;
    VECTOR(int32_t, 4) l_130 = (VECTOR(int32_t, 4))(0x490DA094L, (VECTOR(int32_t, 2))(0x490DA094L, 0x0A01F12AL), 0x0A01F12AL);
    int i;
    for (p_79 = (-7); (p_79 == 11); ++p_79)
    { /* block id: 28 */
        VECTOR(uint16_t, 4) l_97 = (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0UL), 0UL);
        uint32_t *l_106 = &p_1646->g_107;
        uint8_t *l_114 = (void*)0;
        int32_t *l_119 = &p_1646->g_120[1];
        int i;
        (*p_1646->g_121) = ((*l_119) &= (safe_sub_func_int8_t_s_s((((p_1646->g_50.f0 > (((VECTOR(uint8_t, 4))(safe_clamp_func(VECTOR(uint8_t, 4),VECTOR(uint8_t, 4),((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(p_1646->g_93.s75)), 0x51L, 255UL)).odd)))).yxyx, ((VECTOR(uint8_t, 8))(abs_diff(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(l_94.s93)).xyxxxxyy)).odd)).xxzxwzyz, ((VECTOR(int8_t, 2))(0x1FL, 8L)).xyxyxxyx))).even, ((VECTOR(uint8_t, 8))(0xA8L, 0x0AL, 255UL, 9UL, (l_117 &= (safe_div_func_uint16_t_u_u(p_1646->g_93.s3, ((((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 16))(l_97.wzxxxywywwwxwwzx)).s8f24)).w ^ ((VECTOR(int16_t, 2))(mad_sat(((VECTOR(int16_t, 16))(((p_81 <= ((safe_mul_func_int8_t_s_s((((VECTOR(uint16_t, 2))(safe_clamp_func(VECTOR(uint16_t, 2),VECTOR(uint16_t, 2),((VECTOR(uint16_t, 2))(0xAA13L, 0x3B15L)), ((VECTOR(uint16_t, 2))(0x264EL, 0UL)), ((VECTOR(uint16_t, 8))(safe_clamp_func(VECTOR(uint16_t, 8),VECTOR(uint16_t, 8),((VECTOR(uint16_t, 4))(hadd(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))((((safe_mod_func_int32_t_s_s((safe_rshift_func_uint8_t_u_s((0x4DAFL | (safe_mod_func_uint16_t_u_u(l_97.w, p_1646->g_86))), 5)), (((*l_106) = p_1646->g_93.s4) || (p_1646->g_14 >= ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 8))(max(((VECTOR(int32_t, 8))(0x2D74ACFCL, (-2L), 0x465310EEL, 0x3BECB259L, (safe_mul_func_int64_t_s_s((safe_sub_func_int8_t_s_s((safe_mod_func_uint16_t_u_u((65535UL == p_1646->g_93.s3), l_94.s8)), p_1646->g_93.s2)), 0UL)), 0x3095B69DL, 0x77E9ACA8L, 0x4E927CFDL)), ((VECTOR(int32_t, 8))(0x208E2B08L))))).s32, ((VECTOR(int32_t, 2))((-1L))), ((VECTOR(int32_t, 2))(1L))))).xyyx)).x)))) , l_114) == l_115), 0xF5A5L, 0x86A1L, 0x9287L)), ((VECTOR(uint16_t, 4))(0xDA42L)))).s46)).yyyxyyyxyyxyyyyy)).s6c05, ((VECTOR(uint16_t, 4))(0xDAFBL))))).zwyyxzzz, ((VECTOR(uint16_t, 8))(65531UL)), ((VECTOR(uint16_t, 8))(0x534EL))))).s32))).odd >= l_116), p_80)) != p_1646->g_93.s0)) || 4294967295UL), 0x462FL, p_79, 2L, l_94.s4, p_1646->g_2, (-1L), 0x0D01L, ((VECTOR(int16_t, 2))((-1L))), ((VECTOR(int16_t, 2))(0x58CDL)), l_94.s7, ((VECTOR(int16_t, 2))(0x1A8FL)), 0x1F97L)).sb5, ((VECTOR(int16_t, 2))(8L)), ((VECTOR(int16_t, 2))(0x7E23L))))).hi) , p_1646->g_2)))), 1UL, 0x21L, 0xDBL)).even))).w ^ GROUP_DIVERGE(0, 1))) , p_1646->g_118[4]) != l_115), (-1L))));
        for (p_1646->g_107 = 3; (p_1646->g_107 <= 54); p_1646->g_107 = safe_add_func_uint32_t_u_u(p_1646->g_107, 7))
        { /* block id: 35 */
            for (l_116 = (-12); (l_116 == (-12)); ++l_116)
            { /* block id: 38 */
                (*p_1646->g_127) = &p_82;
            }
            (*p_1646->g_129) = (*p_1646->g_127);
        }
        (*l_119) |= ((VECTOR(int32_t, 2))(l_130.wx)).odd;
    }
    return &p_1646->g_62;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S2 c_1647;
    struct S2* p_1646 = &c_1647;
    struct S2 c_1648 = {
        0x18D58162L, // p_1646->g_2
        0UL, // p_1646->g_14
        {0x61A7160C63704BAEL}, // p_1646->g_50
        0x3B358509EF6E88F3L, // p_1646->g_62
        {{0xA0L,0xACL},{0xA0L,0xACL},{0xA0L,0xACL},{0xA0L,0xACL},{0xA0L,0xACL},{0xA0L,0xACL},{0xA0L,0xACL},{0xA0L,0xACL}}, // p_1646->g_72
        {0xA3A415DBL}, // p_1646->g_85
        0x3E03EB41L, // p_1646->g_86
        (VECTOR(uint8_t, 8))(0x3DL, (VECTOR(uint8_t, 4))(0x3DL, (VECTOR(uint8_t, 2))(0x3DL, 1UL), 1UL), 1UL, 0x3DL, 1UL), // p_1646->g_93
        0x205A567AL, // p_1646->g_107
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_1646->g_118
        {0x279E96FCL,0x279E96FCL}, // p_1646->g_120
        {0x035F2876L,0x035F2876L,0x035F2876L,0x035F2876L}, // p_1646->g_122
        &p_1646->g_122[3], // p_1646->g_121
        {{{&p_1646->g_122[3],&p_1646->g_120[1],&p_1646->g_2,&p_1646->g_120[1],&p_1646->g_2,&p_1646->g_120[1],&p_1646->g_122[3]},{&p_1646->g_122[3],&p_1646->g_120[1],&p_1646->g_2,&p_1646->g_120[1],&p_1646->g_2,&p_1646->g_120[1],&p_1646->g_122[3]},{&p_1646->g_122[3],&p_1646->g_120[1],&p_1646->g_2,&p_1646->g_120[1],&p_1646->g_2,&p_1646->g_120[1],&p_1646->g_122[3]},{&p_1646->g_122[3],&p_1646->g_120[1],&p_1646->g_2,&p_1646->g_120[1],&p_1646->g_2,&p_1646->g_120[1],&p_1646->g_122[3]},{&p_1646->g_122[3],&p_1646->g_120[1],&p_1646->g_2,&p_1646->g_120[1],&p_1646->g_2,&p_1646->g_120[1],&p_1646->g_122[3]},{&p_1646->g_122[3],&p_1646->g_120[1],&p_1646->g_2,&p_1646->g_120[1],&p_1646->g_2,&p_1646->g_120[1],&p_1646->g_122[3]}},{{&p_1646->g_122[3],&p_1646->g_120[1],&p_1646->g_2,&p_1646->g_120[1],&p_1646->g_2,&p_1646->g_120[1],&p_1646->g_122[3]},{&p_1646->g_122[3],&p_1646->g_120[1],&p_1646->g_2,&p_1646->g_120[1],&p_1646->g_2,&p_1646->g_120[1],&p_1646->g_122[3]},{&p_1646->g_122[3],&p_1646->g_120[1],&p_1646->g_2,&p_1646->g_120[1],&p_1646->g_2,&p_1646->g_120[1],&p_1646->g_122[3]},{&p_1646->g_122[3],&p_1646->g_120[1],&p_1646->g_2,&p_1646->g_120[1],&p_1646->g_2,&p_1646->g_120[1],&p_1646->g_122[3]},{&p_1646->g_122[3],&p_1646->g_120[1],&p_1646->g_2,&p_1646->g_120[1],&p_1646->g_2,&p_1646->g_120[1],&p_1646->g_122[3]},{&p_1646->g_122[3],&p_1646->g_120[1],&p_1646->g_2,&p_1646->g_120[1],&p_1646->g_2,&p_1646->g_120[1],&p_1646->g_122[3]}},{{&p_1646->g_122[3],&p_1646->g_120[1],&p_1646->g_2,&p_1646->g_120[1],&p_1646->g_2,&p_1646->g_120[1],&p_1646->g_122[3]},{&p_1646->g_122[3],&p_1646->g_120[1],&p_1646->g_2,&p_1646->g_120[1],&p_1646->g_2,&p_1646->g_120[1],&p_1646->g_122[3]},{&p_1646->g_122[3],&p_1646->g_120[1],&p_1646->g_2,&p_1646->g_120[1],&p_1646->g_2,&p_1646->g_120[1],&p_1646->g_122[3]},{&p_1646->g_122[3],&p_1646->g_120[1],&p_1646->g_2,&p_1646->g_120[1],&p_1646->g_2,&p_1646->g_120[1],&p_1646->g_122[3]},{&p_1646->g_122[3],&p_1646->g_120[1],&p_1646->g_2,&p_1646->g_120[1],&p_1646->g_2,&p_1646->g_120[1],&p_1646->g_122[3]},{&p_1646->g_122[3],&p_1646->g_120[1],&p_1646->g_2,&p_1646->g_120[1],&p_1646->g_2,&p_1646->g_120[1],&p_1646->g_122[3]}}}, // p_1646->g_128
        &p_1646->g_128[2][4][2], // p_1646->g_127
        &p_1646->g_128[0][1][3], // p_1646->g_129
        {&p_1646->g_62,(void*)0,&p_1646->g_62,&p_1646->g_62,(void*)0,&p_1646->g_62,&p_1646->g_62}, // p_1646->g_161
        0L, // p_1646->g_164
        &p_1646->g_120[1], // p_1646->g_168
        (VECTOR(uint8_t, 2))(0x9BL, 0UL), // p_1646->g_181
        0x35AC3371L, // p_1646->g_190
        0xFCL, // p_1646->g_193
        0x5841L, // p_1646->g_196
        (VECTOR(uint32_t, 4))(9UL, (VECTOR(uint32_t, 2))(9UL, 4294967294UL), 4294967294UL), // p_1646->g_197
        (VECTOR(int32_t, 2))(0x2548D484L, 0L), // p_1646->g_198
        (-2L), // p_1646->g_214
        0x4EAAE32FL, // p_1646->g_226
        &p_1646->g_226, // p_1646->g_225
        &p_1646->g_225, // p_1646->g_227
        (VECTOR(int64_t, 2))(0L, (-8L)), // p_1646->g_246
        {{&p_1646->g_85,&p_1646->g_85,&p_1646->g_85,&p_1646->g_85,&p_1646->g_85},{&p_1646->g_85,&p_1646->g_85,&p_1646->g_85,&p_1646->g_85,&p_1646->g_85},{&p_1646->g_85,&p_1646->g_85,&p_1646->g_85,&p_1646->g_85,&p_1646->g_85},{&p_1646->g_85,&p_1646->g_85,&p_1646->g_85,&p_1646->g_85,&p_1646->g_85},{&p_1646->g_85,&p_1646->g_85,&p_1646->g_85,&p_1646->g_85,&p_1646->g_85},{&p_1646->g_85,&p_1646->g_85,&p_1646->g_85,&p_1646->g_85,&p_1646->g_85}}, // p_1646->g_278
        {{&p_1646->g_278[1][4],&p_1646->g_278[1][4],&p_1646->g_278[1][4],&p_1646->g_278[1][4]},{&p_1646->g_278[1][4],&p_1646->g_278[1][4],&p_1646->g_278[1][4],&p_1646->g_278[1][4]},{&p_1646->g_278[1][4],&p_1646->g_278[1][4],&p_1646->g_278[1][4],&p_1646->g_278[1][4]},{&p_1646->g_278[1][4],&p_1646->g_278[1][4],&p_1646->g_278[1][4],&p_1646->g_278[1][4]},{&p_1646->g_278[1][4],&p_1646->g_278[1][4],&p_1646->g_278[1][4],&p_1646->g_278[1][4]},{&p_1646->g_278[1][4],&p_1646->g_278[1][4],&p_1646->g_278[1][4],&p_1646->g_278[1][4]},{&p_1646->g_278[1][4],&p_1646->g_278[1][4],&p_1646->g_278[1][4],&p_1646->g_278[1][4]}}, // p_1646->g_277
        (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x34EFD52DL), 0x34EFD52DL), 0x34EFD52DL, (-1L), 0x34EFD52DL), // p_1646->g_279
        {{{0UL},{0UL},{0UL},{0UL},{0UL},{0UL}}}, // p_1646->g_298
        (VECTOR(uint8_t, 16))(0x25L, (VECTOR(uint8_t, 4))(0x25L, (VECTOR(uint8_t, 2))(0x25L, 0x70L), 0x70L), 0x70L, 0x25L, 0x70L, (VECTOR(uint8_t, 2))(0x25L, 0x70L), (VECTOR(uint8_t, 2))(0x25L, 0x70L), 0x25L, 0x70L, 0x25L, 0x70L), // p_1646->g_299
        (VECTOR(uint8_t, 16))(0x9FL, (VECTOR(uint8_t, 4))(0x9FL, (VECTOR(uint8_t, 2))(0x9FL, 255UL), 255UL), 255UL, 0x9FL, 255UL, (VECTOR(uint8_t, 2))(0x9FL, 255UL), (VECTOR(uint8_t, 2))(0x9FL, 255UL), 0x9FL, 255UL, 0x9FL, 255UL), // p_1646->g_300
        (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, (-1L)), (-1L)), // p_1646->g_309
        0L, // p_1646->g_328
        (VECTOR(uint32_t, 8))(0xA9A81A79L, (VECTOR(uint32_t, 4))(0xA9A81A79L, (VECTOR(uint32_t, 2))(0xA9A81A79L, 0UL), 0UL), 0UL, 0xA9A81A79L, 0UL), // p_1646->g_345
        1UL, // p_1646->g_360
        (VECTOR(uint32_t, 8))(0x086A9AADL, (VECTOR(uint32_t, 4))(0x086A9AADL, (VECTOR(uint32_t, 2))(0x086A9AADL, 4UL), 4UL), 4UL, 0x086A9AADL, 4UL), // p_1646->g_365
        (VECTOR(uint32_t, 4))(0xE45BCA62L, (VECTOR(uint32_t, 2))(0xE45BCA62L, 0x77F73A95L), 0x77F73A95L), // p_1646->g_370
        65535UL, // p_1646->g_375
        &p_1646->g_375, // p_1646->g_374
        0xCB00L, // p_1646->g_379
        0x15L, // p_1646->g_383
        (VECTOR(uint32_t, 16))(0x078F3F0BL, (VECTOR(uint32_t, 4))(0x078F3F0BL, (VECTOR(uint32_t, 2))(0x078F3F0BL, 1UL), 1UL), 1UL, 0x078F3F0BL, 1UL, (VECTOR(uint32_t, 2))(0x078F3F0BL, 1UL), (VECTOR(uint32_t, 2))(0x078F3F0BL, 1UL), 0x078F3F0BL, 1UL, 0x078F3F0BL, 1UL), // p_1646->g_389
        {(-3L),(-3L),(-3L)}, // p_1646->g_395
        (VECTOR(int32_t, 8))(0x049CD372L, (VECTOR(int32_t, 4))(0x049CD372L, (VECTOR(int32_t, 2))(0x049CD372L, (-2L)), (-2L)), (-2L), 0x049CD372L, (-2L)), // p_1646->g_408
        (VECTOR(int32_t, 4))(2L, (VECTOR(int32_t, 2))(2L, 0x6B0F938EL), 0x6B0F938EL), // p_1646->g_409
        {{{0x6917L,0x6917L,1UL,0UL},{0x6917L,0x6917L,1UL,0UL},{0x6917L,0x6917L,1UL,0UL},{0x6917L,0x6917L,1UL,0UL},{0x6917L,0x6917L,1UL,0UL},{0x6917L,0x6917L,1UL,0UL},{0x6917L,0x6917L,1UL,0UL},{0x6917L,0x6917L,1UL,0UL},{0x6917L,0x6917L,1UL,0UL}},{{0x6917L,0x6917L,1UL,0UL},{0x6917L,0x6917L,1UL,0UL},{0x6917L,0x6917L,1UL,0UL},{0x6917L,0x6917L,1UL,0UL},{0x6917L,0x6917L,1UL,0UL},{0x6917L,0x6917L,1UL,0UL},{0x6917L,0x6917L,1UL,0UL},{0x6917L,0x6917L,1UL,0UL},{0x6917L,0x6917L,1UL,0UL}},{{0x6917L,0x6917L,1UL,0UL},{0x6917L,0x6917L,1UL,0UL},{0x6917L,0x6917L,1UL,0UL},{0x6917L,0x6917L,1UL,0UL},{0x6917L,0x6917L,1UL,0UL},{0x6917L,0x6917L,1UL,0UL},{0x6917L,0x6917L,1UL,0UL},{0x6917L,0x6917L,1UL,0UL},{0x6917L,0x6917L,1UL,0UL}},{{0x6917L,0x6917L,1UL,0UL},{0x6917L,0x6917L,1UL,0UL},{0x6917L,0x6917L,1UL,0UL},{0x6917L,0x6917L,1UL,0UL},{0x6917L,0x6917L,1UL,0UL},{0x6917L,0x6917L,1UL,0UL},{0x6917L,0x6917L,1UL,0UL},{0x6917L,0x6917L,1UL,0UL},{0x6917L,0x6917L,1UL,0UL}},{{0x6917L,0x6917L,1UL,0UL},{0x6917L,0x6917L,1UL,0UL},{0x6917L,0x6917L,1UL,0UL},{0x6917L,0x6917L,1UL,0UL},{0x6917L,0x6917L,1UL,0UL},{0x6917L,0x6917L,1UL,0UL},{0x6917L,0x6917L,1UL,0UL},{0x6917L,0x6917L,1UL,0UL},{0x6917L,0x6917L,1UL,0UL}},{{0x6917L,0x6917L,1UL,0UL},{0x6917L,0x6917L,1UL,0UL},{0x6917L,0x6917L,1UL,0UL},{0x6917L,0x6917L,1UL,0UL},{0x6917L,0x6917L,1UL,0UL},{0x6917L,0x6917L,1UL,0UL},{0x6917L,0x6917L,1UL,0UL},{0x6917L,0x6917L,1UL,0UL},{0x6917L,0x6917L,1UL,0UL}}}, // p_1646->g_419
        (VECTOR(uint8_t, 4))(0x6DL, (VECTOR(uint8_t, 2))(0x6DL, 0UL), 0UL), // p_1646->g_420
        (VECTOR(uint16_t, 8))(65531UL, (VECTOR(uint16_t, 4))(65531UL, (VECTOR(uint16_t, 2))(65531UL, 2UL), 2UL), 2UL, 65531UL, 2UL), // p_1646->g_444
        &p_1646->g_62, // p_1646->g_451
        {{&p_1646->g_451,&p_1646->g_451,&p_1646->g_451,&p_1646->g_451,&p_1646->g_451,&p_1646->g_451,&p_1646->g_451,&p_1646->g_451,&p_1646->g_451},{&p_1646->g_451,&p_1646->g_451,&p_1646->g_451,&p_1646->g_451,&p_1646->g_451,&p_1646->g_451,&p_1646->g_451,&p_1646->g_451,&p_1646->g_451},{&p_1646->g_451,&p_1646->g_451,&p_1646->g_451,&p_1646->g_451,&p_1646->g_451,&p_1646->g_451,&p_1646->g_451,&p_1646->g_451,&p_1646->g_451},{&p_1646->g_451,&p_1646->g_451,&p_1646->g_451,&p_1646->g_451,&p_1646->g_451,&p_1646->g_451,&p_1646->g_451,&p_1646->g_451,&p_1646->g_451},{&p_1646->g_451,&p_1646->g_451,&p_1646->g_451,&p_1646->g_451,&p_1646->g_451,&p_1646->g_451,&p_1646->g_451,&p_1646->g_451,&p_1646->g_451},{&p_1646->g_451,&p_1646->g_451,&p_1646->g_451,&p_1646->g_451,&p_1646->g_451,&p_1646->g_451,&p_1646->g_451,&p_1646->g_451,&p_1646->g_451},{&p_1646->g_451,&p_1646->g_451,&p_1646->g_451,&p_1646->g_451,&p_1646->g_451,&p_1646->g_451,&p_1646->g_451,&p_1646->g_451,&p_1646->g_451},{&p_1646->g_451,&p_1646->g_451,&p_1646->g_451,&p_1646->g_451,&p_1646->g_451,&p_1646->g_451,&p_1646->g_451,&p_1646->g_451,&p_1646->g_451},{&p_1646->g_451,&p_1646->g_451,&p_1646->g_451,&p_1646->g_451,&p_1646->g_451,&p_1646->g_451,&p_1646->g_451,&p_1646->g_451,&p_1646->g_451},{&p_1646->g_451,&p_1646->g_451,&p_1646->g_451,&p_1646->g_451,&p_1646->g_451,&p_1646->g_451,&p_1646->g_451,&p_1646->g_451,&p_1646->g_451}}, // p_1646->g_450
        1L, // p_1646->g_493
        (void*)0, // p_1646->g_502
        6UL, // p_1646->g_551
        {0x522CF122L}, // p_1646->g_560
        (VECTOR(uint64_t, 2))(18446744073709551613UL, 0UL), // p_1646->g_569
        (VECTOR(uint64_t, 4))(0x845B2C6952C1296DL, (VECTOR(uint64_t, 2))(0x845B2C6952C1296DL, 1UL), 1UL), // p_1646->g_570
        (VECTOR(uint64_t, 4))(0xE9FC397D64D10C45L, (VECTOR(uint64_t, 2))(0xE9FC397D64D10C45L, 0x33B1D9E2B50C5F6CL), 0x33B1D9E2B50C5F6CL), // p_1646->g_571
        (VECTOR(int32_t, 2))(0x7A3D4A40L, 0x2771A043L), // p_1646->g_582
        (void*)0, // p_1646->g_663
        (VECTOR(uint8_t, 4))(0xE6L, (VECTOR(uint8_t, 2))(0xE6L, 255UL), 255UL), // p_1646->g_671
        (VECTOR(uint8_t, 4))(8UL, (VECTOR(uint8_t, 2))(8UL, 0UL), 0UL), // p_1646->g_672
        (VECTOR(uint8_t, 16))(0x3CL, (VECTOR(uint8_t, 4))(0x3CL, (VECTOR(uint8_t, 2))(0x3CL, 0xB3L), 0xB3L), 0xB3L, 0x3CL, 0xB3L, (VECTOR(uint8_t, 2))(0x3CL, 0xB3L), (VECTOR(uint8_t, 2))(0x3CL, 0xB3L), 0x3CL, 0xB3L, 0x3CL, 0xB3L), // p_1646->g_673
        (VECTOR(uint8_t, 4))(8UL, (VECTOR(uint8_t, 2))(8UL, 250UL), 250UL), // p_1646->g_674
        (VECTOR(uint8_t, 16))(7UL, (VECTOR(uint8_t, 4))(7UL, (VECTOR(uint8_t, 2))(7UL, 0x2CL), 0x2CL), 0x2CL, 7UL, 0x2CL, (VECTOR(uint8_t, 2))(7UL, 0x2CL), (VECTOR(uint8_t, 2))(7UL, 0x2CL), 7UL, 0x2CL, 7UL, 0x2CL), // p_1646->g_675
        (VECTOR(uint32_t, 2))(4294967287UL, 0x2E375F6FL), // p_1646->g_684
        (VECTOR(int8_t, 4))(0x70L, (VECTOR(int8_t, 2))(0x70L, 9L), 9L), // p_1646->g_705
        (VECTOR(int8_t, 4))(0x36L, (VECTOR(int8_t, 2))(0x36L, (-3L)), (-3L)), // p_1646->g_706
        (VECTOR(int16_t, 16))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x6860L), 0x6860L), 0x6860L, 0L, 0x6860L, (VECTOR(int16_t, 2))(0L, 0x6860L), (VECTOR(int16_t, 2))(0L, 0x6860L), 0L, 0x6860L, 0L, 0x6860L), // p_1646->g_744
        (VECTOR(int8_t, 4))(0x17L, (VECTOR(int8_t, 2))(0x17L, 0x7DL), 0x7DL), // p_1646->g_769
        (VECTOR(uint8_t, 8))(0xB8L, (VECTOR(uint8_t, 4))(0xB8L, (VECTOR(uint8_t, 2))(0xB8L, 0xD7L), 0xD7L), 0xD7L, 0xB8L, 0xD7L), // p_1646->g_775
        (VECTOR(int32_t, 2))(1L, 1L), // p_1646->g_807
        (VECTOR(uint16_t, 8))(0x6216L, (VECTOR(uint16_t, 4))(0x6216L, (VECTOR(uint16_t, 2))(0x6216L, 0xD0B2L), 0xD0B2L), 0xD0B2L, 0x6216L, 0xD0B2L), // p_1646->g_819
        (VECTOR(int8_t, 2))(6L, 0L), // p_1646->g_840
        (void*)0, // p_1646->g_858
        &p_1646->g_161[4], // p_1646->g_896
        1UL, // p_1646->g_907
        &p_1646->g_907, // p_1646->g_906
        &p_1646->g_906, // p_1646->g_905
        {&p_1646->g_383,&p_1646->g_383,&p_1646->g_383,&p_1646->g_383,&p_1646->g_383}, // p_1646->g_922
        {&p_1646->g_922[3],&p_1646->g_922[3],&p_1646->g_922[3],&p_1646->g_922[3],&p_1646->g_922[3],&p_1646->g_922[3],&p_1646->g_922[3],&p_1646->g_922[3],&p_1646->g_922[3]}, // p_1646->g_921
        &p_1646->g_921[5], // p_1646->g_920
        (VECTOR(int8_t, 16))((-10L), (VECTOR(int8_t, 4))((-10L), (VECTOR(int8_t, 2))((-10L), 0x77L), 0x77L), 0x77L, (-10L), 0x77L, (VECTOR(int8_t, 2))((-10L), 0x77L), (VECTOR(int8_t, 2))((-10L), 0x77L), (-10L), 0x77L, (-10L), 0x77L), // p_1646->g_925
        (VECTOR(int8_t, 2))(2L, 0x39L), // p_1646->g_926
        (VECTOR(int16_t, 16))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), (-1L)), (-1L)), (-1L), (-1L), (-1L), (VECTOR(int16_t, 2))((-1L), (-1L)), (VECTOR(int16_t, 2))((-1L), (-1L)), (-1L), (-1L), (-1L), (-1L)), // p_1646->g_950
        {18446744073709551610UL}, // p_1646->g_963
        (VECTOR(int32_t, 4))((-5L), (VECTOR(int32_t, 2))((-5L), 7L), 7L), // p_1646->g_966
        {0UL}, // p_1646->g_1071
        0x3E9CDF6BL, // p_1646->g_1073
        (VECTOR(int32_t, 4))(0x0C9B22B1L, (VECTOR(int32_t, 2))(0x0C9B22B1L, 4L), 4L), // p_1646->g_1074
        0L, // p_1646->g_1121
        &p_1646->g_122[3], // p_1646->g_1126
        (VECTOR(uint8_t, 2))(0xE4L, 0x30L), // p_1646->g_1145
        (VECTOR(int8_t, 2))(8L, 1L), // p_1646->g_1175
        (VECTOR(int8_t, 4))(0x29L, (VECTOR(int8_t, 2))(0x29L, (-1L)), (-1L)), // p_1646->g_1176
        &p_1646->g_225, // p_1646->g_1187
        (VECTOR(uint64_t, 4))(0x7C504AD932D70317L, (VECTOR(uint64_t, 2))(0x7C504AD932D70317L, 0xB392BEF46EFA9116L), 0xB392BEF46EFA9116L), // p_1646->g_1191
        {0x39EC0B57L}, // p_1646->g_1196
        &p_1646->g_86, // p_1646->g_1199
        &p_1646->g_1199, // p_1646->g_1198
        (VECTOR(int16_t, 2))(0x10DAL, 0x4409L), // p_1646->g_1208
        &p_1646->g_161[4], // p_1646->g_1271
        &p_1646->g_1271, // p_1646->g_1270
        (VECTOR(int8_t, 16))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 6L), 6L), 6L, 1L, 6L, (VECTOR(int8_t, 2))(1L, 6L), (VECTOR(int8_t, 2))(1L, 6L), 1L, 6L, 1L, 6L), // p_1646->g_1272
        (VECTOR(int8_t, 16))(0x1FL, (VECTOR(int8_t, 4))(0x1FL, (VECTOR(int8_t, 2))(0x1FL, 0x4FL), 0x4FL), 0x4FL, 0x1FL, 0x4FL, (VECTOR(int8_t, 2))(0x1FL, 0x4FL), (VECTOR(int8_t, 2))(0x1FL, 0x4FL), 0x1FL, 0x4FL, 0x1FL, 0x4FL), // p_1646->g_1273
        (VECTOR(int8_t, 2))(0x61L, 1L), // p_1646->g_1274
        {0x6846142AL}, // p_1646->g_1279
        &p_1646->g_906, // p_1646->g_1282
        &p_1646->g_1282, // p_1646->g_1281
        &p_1646->g_1281, // p_1646->g_1280
        (VECTOR(uint64_t, 16))(0x9C0D261CD0A0E93BL, (VECTOR(uint64_t, 4))(0x9C0D261CD0A0E93BL, (VECTOR(uint64_t, 2))(0x9C0D261CD0A0E93BL, 18446744073709551615UL), 18446744073709551615UL), 18446744073709551615UL, 0x9C0D261CD0A0E93BL, 18446744073709551615UL, (VECTOR(uint64_t, 2))(0x9C0D261CD0A0E93BL, 18446744073709551615UL), (VECTOR(uint64_t, 2))(0x9C0D261CD0A0E93BL, 18446744073709551615UL), 0x9C0D261CD0A0E93BL, 18446744073709551615UL, 0x9C0D261CD0A0E93BL, 18446744073709551615UL), // p_1646->g_1305
        &p_1646->g_379, // p_1646->g_1309
        &p_1646->g_1309, // p_1646->g_1308
        {&p_1646->g_1308,&p_1646->g_1308,&p_1646->g_1308,&p_1646->g_1308,&p_1646->g_1308,&p_1646->g_1308,&p_1646->g_1308,&p_1646->g_1308}, // p_1646->g_1307
        {1UL}, // p_1646->g_1323
        {0x266BAFD2C7CFAF17L}, // p_1646->g_1326
        &p_1646->g_1326, // p_1646->g_1325
        &p_1646->g_1325, // p_1646->g_1324
        (VECTOR(int32_t, 16))(8L, (VECTOR(int32_t, 4))(8L, (VECTOR(int32_t, 2))(8L, 0x51C30189L), 0x51C30189L), 0x51C30189L, 8L, 0x51C30189L, (VECTOR(int32_t, 2))(8L, 0x51C30189L), (VECTOR(int32_t, 2))(8L, 0x51C30189L), 8L, 0x51C30189L, 8L, 0x51C30189L), // p_1646->g_1353
        (VECTOR(uint32_t, 4))(0xC64389A2L, (VECTOR(uint32_t, 2))(0xC64389A2L, 0UL), 0UL), // p_1646->g_1367
        (VECTOR(int16_t, 16))(0x7BFAL, (VECTOR(int16_t, 4))(0x7BFAL, (VECTOR(int16_t, 2))(0x7BFAL, 0x0807L), 0x0807L), 0x0807L, 0x7BFAL, 0x0807L, (VECTOR(int16_t, 2))(0x7BFAL, 0x0807L), (VECTOR(int16_t, 2))(0x7BFAL, 0x0807L), 0x7BFAL, 0x0807L, 0x7BFAL, 0x0807L), // p_1646->g_1373
        (VECTOR(int16_t, 2))(0x3D07L, (-5L)), // p_1646->g_1374
        0x0DCB8737B044500EL, // p_1646->g_1392
        (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 7L), 7L), 7L, 0L, 7L, (VECTOR(int32_t, 2))(0L, 7L), (VECTOR(int32_t, 2))(0L, 7L), 0L, 7L, 0L, 7L), // p_1646->g_1399
        (VECTOR(uint16_t, 2))(0x2FC1L, 0x1DD3L), // p_1646->g_1404
        &p_1646->g_858, // p_1646->g_1409
        {&p_1646->g_128[0][2][4],&p_1646->g_128[0][2][4],&p_1646->g_128[0][2][4],&p_1646->g_128[0][2][4],&p_1646->g_128[0][2][4],&p_1646->g_128[0][2][4]}, // p_1646->g_1442
        {&p_1646->g_128[2][4][2],&p_1646->g_128[2][4][2]}, // p_1646->g_1443
        {0x89A08CC1BD3EF554L}, // p_1646->g_1455
        (VECTOR(uint16_t, 16))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0x6F62L), 0x6F62L), 0x6F62L, 0UL, 0x6F62L, (VECTOR(uint16_t, 2))(0UL, 0x6F62L), (VECTOR(uint16_t, 2))(0UL, 0x6F62L), 0UL, 0x6F62L, 0UL, 0x6F62L), // p_1646->g_1463
        (VECTOR(uint16_t, 16))(0x35F0L, (VECTOR(uint16_t, 4))(0x35F0L, (VECTOR(uint16_t, 2))(0x35F0L, 0UL), 0UL), 0UL, 0x35F0L, 0UL, (VECTOR(uint16_t, 2))(0x35F0L, 0UL), (VECTOR(uint16_t, 2))(0x35F0L, 0UL), 0x35F0L, 0UL, 0x35F0L, 0UL), // p_1646->g_1464
        &p_1646->g_1309, // p_1646->g_1471
        &p_1646->g_1471, // p_1646->g_1470
        {{&p_1646->g_1471},{&p_1646->g_1471},{&p_1646->g_1471},{&p_1646->g_1471},{&p_1646->g_1471},{&p_1646->g_1471},{&p_1646->g_1471},{&p_1646->g_1471},{&p_1646->g_1471}}, // p_1646->g_1497
        &p_1646->g_922[3], // p_1646->g_1504
        (VECTOR(int64_t, 2))(0x378938B557DBEF61L, (-1L)), // p_1646->g_1507
        &p_1646->g_1199, // p_1646->g_1514
        &p_1646->g_1514, // p_1646->g_1513
        (VECTOR(uint64_t, 8))(4UL, (VECTOR(uint64_t, 4))(4UL, (VECTOR(uint64_t, 2))(4UL, 0UL), 0UL), 0UL, 4UL, 0UL), // p_1646->g_1527
        (VECTOR(int32_t, 16))((-4L), (VECTOR(int32_t, 4))((-4L), (VECTOR(int32_t, 2))((-4L), 0x27866D83L), 0x27866D83L), 0x27866D83L, (-4L), 0x27866D83L, (VECTOR(int32_t, 2))((-4L), 0x27866D83L), (VECTOR(int32_t, 2))((-4L), 0x27866D83L), (-4L), 0x27866D83L, (-4L), 0x27866D83L), // p_1646->g_1542
        4294967295UL, // p_1646->g_1587
        (VECTOR(int16_t, 16))((-8L), (VECTOR(int16_t, 4))((-8L), (VECTOR(int16_t, 2))((-8L), 0L), 0L), 0L, (-8L), 0L, (VECTOR(int16_t, 2))((-8L), 0L), (VECTOR(int16_t, 2))((-8L), 0L), (-8L), 0L, (-8L), 0L), // p_1646->g_1610
        0xA83385CFL, // p_1646->g_1618
        (VECTOR(int32_t, 16))(0x3A0DF7C3L, (VECTOR(int32_t, 4))(0x3A0DF7C3L, (VECTOR(int32_t, 2))(0x3A0DF7C3L, 0L), 0L), 0L, 0x3A0DF7C3L, 0L, (VECTOR(int32_t, 2))(0x3A0DF7C3L, 0L), (VECTOR(int32_t, 2))(0x3A0DF7C3L, 0L), 0x3A0DF7C3L, 0L, 0x3A0DF7C3L, 0L), // p_1646->g_1624
        (VECTOR(int32_t, 8))(0x20C3DC02L, (VECTOR(int32_t, 4))(0x20C3DC02L, (VECTOR(int32_t, 2))(0x20C3DC02L, 1L), 1L), 1L, 0x20C3DC02L, 1L), // p_1646->g_1633
        (VECTOR(int16_t, 2))(0x187EL, 0x4CC0L), // p_1646->g_1634
        sequence_input[get_global_id(0)], // p_1646->global_0_offset
        sequence_input[get_global_id(1)], // p_1646->global_1_offset
        sequence_input[get_global_id(2)], // p_1646->global_2_offset
        sequence_input[get_local_id(0)], // p_1646->local_0_offset
        sequence_input[get_local_id(1)], // p_1646->local_1_offset
        sequence_input[get_local_id(2)], // p_1646->local_2_offset
        sequence_input[get_group_id(0)], // p_1646->group_0_offset
        sequence_input[get_group_id(1)], // p_1646->group_1_offset
        sequence_input[get_group_id(2)], // p_1646->group_2_offset
    };
    c_1647 = c_1648;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1646);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1646->g_2, "p_1646->g_2", print_hash_value);
    transparent_crc(p_1646->g_14, "p_1646->g_14", print_hash_value);
    transparent_crc(p_1646->g_50.f0, "p_1646->g_50.f0", print_hash_value);
    transparent_crc(p_1646->g_62, "p_1646->g_62", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 2; j++)
        {
            transparent_crc(p_1646->g_72[i][j], "p_1646->g_72[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1646->g_85.f0, "p_1646->g_85.f0", print_hash_value);
    transparent_crc(p_1646->g_86, "p_1646->g_86", print_hash_value);
    transparent_crc(p_1646->g_93.s0, "p_1646->g_93.s0", print_hash_value);
    transparent_crc(p_1646->g_93.s1, "p_1646->g_93.s1", print_hash_value);
    transparent_crc(p_1646->g_93.s2, "p_1646->g_93.s2", print_hash_value);
    transparent_crc(p_1646->g_93.s3, "p_1646->g_93.s3", print_hash_value);
    transparent_crc(p_1646->g_93.s4, "p_1646->g_93.s4", print_hash_value);
    transparent_crc(p_1646->g_93.s5, "p_1646->g_93.s5", print_hash_value);
    transparent_crc(p_1646->g_93.s6, "p_1646->g_93.s6", print_hash_value);
    transparent_crc(p_1646->g_93.s7, "p_1646->g_93.s7", print_hash_value);
    transparent_crc(p_1646->g_107, "p_1646->g_107", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1646->g_120[i], "p_1646->g_120[i]", print_hash_value);

    }
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1646->g_122[i], "p_1646->g_122[i]", print_hash_value);

    }
    transparent_crc(p_1646->g_164, "p_1646->g_164", print_hash_value);
    transparent_crc(p_1646->g_181.x, "p_1646->g_181.x", print_hash_value);
    transparent_crc(p_1646->g_181.y, "p_1646->g_181.y", print_hash_value);
    transparent_crc(p_1646->g_190, "p_1646->g_190", print_hash_value);
    transparent_crc(p_1646->g_193, "p_1646->g_193", print_hash_value);
    transparent_crc(p_1646->g_196, "p_1646->g_196", print_hash_value);
    transparent_crc(p_1646->g_197.x, "p_1646->g_197.x", print_hash_value);
    transparent_crc(p_1646->g_197.y, "p_1646->g_197.y", print_hash_value);
    transparent_crc(p_1646->g_197.z, "p_1646->g_197.z", print_hash_value);
    transparent_crc(p_1646->g_197.w, "p_1646->g_197.w", print_hash_value);
    transparent_crc(p_1646->g_198.x, "p_1646->g_198.x", print_hash_value);
    transparent_crc(p_1646->g_198.y, "p_1646->g_198.y", print_hash_value);
    transparent_crc(p_1646->g_214, "p_1646->g_214", print_hash_value);
    transparent_crc(p_1646->g_226, "p_1646->g_226", print_hash_value);
    transparent_crc(p_1646->g_246.x, "p_1646->g_246.x", print_hash_value);
    transparent_crc(p_1646->g_246.y, "p_1646->g_246.y", print_hash_value);
    transparent_crc(p_1646->g_279.s0, "p_1646->g_279.s0", print_hash_value);
    transparent_crc(p_1646->g_279.s1, "p_1646->g_279.s1", print_hash_value);
    transparent_crc(p_1646->g_279.s2, "p_1646->g_279.s2", print_hash_value);
    transparent_crc(p_1646->g_279.s3, "p_1646->g_279.s3", print_hash_value);
    transparent_crc(p_1646->g_279.s4, "p_1646->g_279.s4", print_hash_value);
    transparent_crc(p_1646->g_279.s5, "p_1646->g_279.s5", print_hash_value);
    transparent_crc(p_1646->g_279.s6, "p_1646->g_279.s6", print_hash_value);
    transparent_crc(p_1646->g_279.s7, "p_1646->g_279.s7", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 6; j++)
        {
            transparent_crc(p_1646->g_298[i][j].f0, "p_1646->g_298[i][j].f0", print_hash_value);

        }
    }
    transparent_crc(p_1646->g_299.s0, "p_1646->g_299.s0", print_hash_value);
    transparent_crc(p_1646->g_299.s1, "p_1646->g_299.s1", print_hash_value);
    transparent_crc(p_1646->g_299.s2, "p_1646->g_299.s2", print_hash_value);
    transparent_crc(p_1646->g_299.s3, "p_1646->g_299.s3", print_hash_value);
    transparent_crc(p_1646->g_299.s4, "p_1646->g_299.s4", print_hash_value);
    transparent_crc(p_1646->g_299.s5, "p_1646->g_299.s5", print_hash_value);
    transparent_crc(p_1646->g_299.s6, "p_1646->g_299.s6", print_hash_value);
    transparent_crc(p_1646->g_299.s7, "p_1646->g_299.s7", print_hash_value);
    transparent_crc(p_1646->g_299.s8, "p_1646->g_299.s8", print_hash_value);
    transparent_crc(p_1646->g_299.s9, "p_1646->g_299.s9", print_hash_value);
    transparent_crc(p_1646->g_299.sa, "p_1646->g_299.sa", print_hash_value);
    transparent_crc(p_1646->g_299.sb, "p_1646->g_299.sb", print_hash_value);
    transparent_crc(p_1646->g_299.sc, "p_1646->g_299.sc", print_hash_value);
    transparent_crc(p_1646->g_299.sd, "p_1646->g_299.sd", print_hash_value);
    transparent_crc(p_1646->g_299.se, "p_1646->g_299.se", print_hash_value);
    transparent_crc(p_1646->g_299.sf, "p_1646->g_299.sf", print_hash_value);
    transparent_crc(p_1646->g_300.s0, "p_1646->g_300.s0", print_hash_value);
    transparent_crc(p_1646->g_300.s1, "p_1646->g_300.s1", print_hash_value);
    transparent_crc(p_1646->g_300.s2, "p_1646->g_300.s2", print_hash_value);
    transparent_crc(p_1646->g_300.s3, "p_1646->g_300.s3", print_hash_value);
    transparent_crc(p_1646->g_300.s4, "p_1646->g_300.s4", print_hash_value);
    transparent_crc(p_1646->g_300.s5, "p_1646->g_300.s5", print_hash_value);
    transparent_crc(p_1646->g_300.s6, "p_1646->g_300.s6", print_hash_value);
    transparent_crc(p_1646->g_300.s7, "p_1646->g_300.s7", print_hash_value);
    transparent_crc(p_1646->g_300.s8, "p_1646->g_300.s8", print_hash_value);
    transparent_crc(p_1646->g_300.s9, "p_1646->g_300.s9", print_hash_value);
    transparent_crc(p_1646->g_300.sa, "p_1646->g_300.sa", print_hash_value);
    transparent_crc(p_1646->g_300.sb, "p_1646->g_300.sb", print_hash_value);
    transparent_crc(p_1646->g_300.sc, "p_1646->g_300.sc", print_hash_value);
    transparent_crc(p_1646->g_300.sd, "p_1646->g_300.sd", print_hash_value);
    transparent_crc(p_1646->g_300.se, "p_1646->g_300.se", print_hash_value);
    transparent_crc(p_1646->g_300.sf, "p_1646->g_300.sf", print_hash_value);
    transparent_crc(p_1646->g_309.x, "p_1646->g_309.x", print_hash_value);
    transparent_crc(p_1646->g_309.y, "p_1646->g_309.y", print_hash_value);
    transparent_crc(p_1646->g_309.z, "p_1646->g_309.z", print_hash_value);
    transparent_crc(p_1646->g_309.w, "p_1646->g_309.w", print_hash_value);
    transparent_crc(p_1646->g_328, "p_1646->g_328", print_hash_value);
    transparent_crc(p_1646->g_345.s0, "p_1646->g_345.s0", print_hash_value);
    transparent_crc(p_1646->g_345.s1, "p_1646->g_345.s1", print_hash_value);
    transparent_crc(p_1646->g_345.s2, "p_1646->g_345.s2", print_hash_value);
    transparent_crc(p_1646->g_345.s3, "p_1646->g_345.s3", print_hash_value);
    transparent_crc(p_1646->g_345.s4, "p_1646->g_345.s4", print_hash_value);
    transparent_crc(p_1646->g_345.s5, "p_1646->g_345.s5", print_hash_value);
    transparent_crc(p_1646->g_345.s6, "p_1646->g_345.s6", print_hash_value);
    transparent_crc(p_1646->g_345.s7, "p_1646->g_345.s7", print_hash_value);
    transparent_crc(p_1646->g_360, "p_1646->g_360", print_hash_value);
    transparent_crc(p_1646->g_365.s0, "p_1646->g_365.s0", print_hash_value);
    transparent_crc(p_1646->g_365.s1, "p_1646->g_365.s1", print_hash_value);
    transparent_crc(p_1646->g_365.s2, "p_1646->g_365.s2", print_hash_value);
    transparent_crc(p_1646->g_365.s3, "p_1646->g_365.s3", print_hash_value);
    transparent_crc(p_1646->g_365.s4, "p_1646->g_365.s4", print_hash_value);
    transparent_crc(p_1646->g_365.s5, "p_1646->g_365.s5", print_hash_value);
    transparent_crc(p_1646->g_365.s6, "p_1646->g_365.s6", print_hash_value);
    transparent_crc(p_1646->g_365.s7, "p_1646->g_365.s7", print_hash_value);
    transparent_crc(p_1646->g_370.x, "p_1646->g_370.x", print_hash_value);
    transparent_crc(p_1646->g_370.y, "p_1646->g_370.y", print_hash_value);
    transparent_crc(p_1646->g_370.z, "p_1646->g_370.z", print_hash_value);
    transparent_crc(p_1646->g_370.w, "p_1646->g_370.w", print_hash_value);
    transparent_crc(p_1646->g_375, "p_1646->g_375", print_hash_value);
    transparent_crc(p_1646->g_379, "p_1646->g_379", print_hash_value);
    transparent_crc(p_1646->g_383, "p_1646->g_383", print_hash_value);
    transparent_crc(p_1646->g_389.s0, "p_1646->g_389.s0", print_hash_value);
    transparent_crc(p_1646->g_389.s1, "p_1646->g_389.s1", print_hash_value);
    transparent_crc(p_1646->g_389.s2, "p_1646->g_389.s2", print_hash_value);
    transparent_crc(p_1646->g_389.s3, "p_1646->g_389.s3", print_hash_value);
    transparent_crc(p_1646->g_389.s4, "p_1646->g_389.s4", print_hash_value);
    transparent_crc(p_1646->g_389.s5, "p_1646->g_389.s5", print_hash_value);
    transparent_crc(p_1646->g_389.s6, "p_1646->g_389.s6", print_hash_value);
    transparent_crc(p_1646->g_389.s7, "p_1646->g_389.s7", print_hash_value);
    transparent_crc(p_1646->g_389.s8, "p_1646->g_389.s8", print_hash_value);
    transparent_crc(p_1646->g_389.s9, "p_1646->g_389.s9", print_hash_value);
    transparent_crc(p_1646->g_389.sa, "p_1646->g_389.sa", print_hash_value);
    transparent_crc(p_1646->g_389.sb, "p_1646->g_389.sb", print_hash_value);
    transparent_crc(p_1646->g_389.sc, "p_1646->g_389.sc", print_hash_value);
    transparent_crc(p_1646->g_389.sd, "p_1646->g_389.sd", print_hash_value);
    transparent_crc(p_1646->g_389.se, "p_1646->g_389.se", print_hash_value);
    transparent_crc(p_1646->g_389.sf, "p_1646->g_389.sf", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_1646->g_395[i], "p_1646->g_395[i]", print_hash_value);

    }
    transparent_crc(p_1646->g_408.s0, "p_1646->g_408.s0", print_hash_value);
    transparent_crc(p_1646->g_408.s1, "p_1646->g_408.s1", print_hash_value);
    transparent_crc(p_1646->g_408.s2, "p_1646->g_408.s2", print_hash_value);
    transparent_crc(p_1646->g_408.s3, "p_1646->g_408.s3", print_hash_value);
    transparent_crc(p_1646->g_408.s4, "p_1646->g_408.s4", print_hash_value);
    transparent_crc(p_1646->g_408.s5, "p_1646->g_408.s5", print_hash_value);
    transparent_crc(p_1646->g_408.s6, "p_1646->g_408.s6", print_hash_value);
    transparent_crc(p_1646->g_408.s7, "p_1646->g_408.s7", print_hash_value);
    transparent_crc(p_1646->g_409.x, "p_1646->g_409.x", print_hash_value);
    transparent_crc(p_1646->g_409.y, "p_1646->g_409.y", print_hash_value);
    transparent_crc(p_1646->g_409.z, "p_1646->g_409.z", print_hash_value);
    transparent_crc(p_1646->g_409.w, "p_1646->g_409.w", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_1646->g_419[i][j][k], "p_1646->g_419[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1646->g_420.x, "p_1646->g_420.x", print_hash_value);
    transparent_crc(p_1646->g_420.y, "p_1646->g_420.y", print_hash_value);
    transparent_crc(p_1646->g_420.z, "p_1646->g_420.z", print_hash_value);
    transparent_crc(p_1646->g_420.w, "p_1646->g_420.w", print_hash_value);
    transparent_crc(p_1646->g_444.s0, "p_1646->g_444.s0", print_hash_value);
    transparent_crc(p_1646->g_444.s1, "p_1646->g_444.s1", print_hash_value);
    transparent_crc(p_1646->g_444.s2, "p_1646->g_444.s2", print_hash_value);
    transparent_crc(p_1646->g_444.s3, "p_1646->g_444.s3", print_hash_value);
    transparent_crc(p_1646->g_444.s4, "p_1646->g_444.s4", print_hash_value);
    transparent_crc(p_1646->g_444.s5, "p_1646->g_444.s5", print_hash_value);
    transparent_crc(p_1646->g_444.s6, "p_1646->g_444.s6", print_hash_value);
    transparent_crc(p_1646->g_444.s7, "p_1646->g_444.s7", print_hash_value);
    transparent_crc(p_1646->g_493, "p_1646->g_493", print_hash_value);
    transparent_crc(p_1646->g_551, "p_1646->g_551", print_hash_value);
    transparent_crc(p_1646->g_560.f0, "p_1646->g_560.f0", print_hash_value);
    transparent_crc(p_1646->g_569.x, "p_1646->g_569.x", print_hash_value);
    transparent_crc(p_1646->g_569.y, "p_1646->g_569.y", print_hash_value);
    transparent_crc(p_1646->g_570.x, "p_1646->g_570.x", print_hash_value);
    transparent_crc(p_1646->g_570.y, "p_1646->g_570.y", print_hash_value);
    transparent_crc(p_1646->g_570.z, "p_1646->g_570.z", print_hash_value);
    transparent_crc(p_1646->g_570.w, "p_1646->g_570.w", print_hash_value);
    transparent_crc(p_1646->g_571.x, "p_1646->g_571.x", print_hash_value);
    transparent_crc(p_1646->g_571.y, "p_1646->g_571.y", print_hash_value);
    transparent_crc(p_1646->g_571.z, "p_1646->g_571.z", print_hash_value);
    transparent_crc(p_1646->g_571.w, "p_1646->g_571.w", print_hash_value);
    transparent_crc(p_1646->g_582.x, "p_1646->g_582.x", print_hash_value);
    transparent_crc(p_1646->g_582.y, "p_1646->g_582.y", print_hash_value);
    transparent_crc(p_1646->g_671.x, "p_1646->g_671.x", print_hash_value);
    transparent_crc(p_1646->g_671.y, "p_1646->g_671.y", print_hash_value);
    transparent_crc(p_1646->g_671.z, "p_1646->g_671.z", print_hash_value);
    transparent_crc(p_1646->g_671.w, "p_1646->g_671.w", print_hash_value);
    transparent_crc(p_1646->g_672.x, "p_1646->g_672.x", print_hash_value);
    transparent_crc(p_1646->g_672.y, "p_1646->g_672.y", print_hash_value);
    transparent_crc(p_1646->g_672.z, "p_1646->g_672.z", print_hash_value);
    transparent_crc(p_1646->g_672.w, "p_1646->g_672.w", print_hash_value);
    transparent_crc(p_1646->g_673.s0, "p_1646->g_673.s0", print_hash_value);
    transparent_crc(p_1646->g_673.s1, "p_1646->g_673.s1", print_hash_value);
    transparent_crc(p_1646->g_673.s2, "p_1646->g_673.s2", print_hash_value);
    transparent_crc(p_1646->g_673.s3, "p_1646->g_673.s3", print_hash_value);
    transparent_crc(p_1646->g_673.s4, "p_1646->g_673.s4", print_hash_value);
    transparent_crc(p_1646->g_673.s5, "p_1646->g_673.s5", print_hash_value);
    transparent_crc(p_1646->g_673.s6, "p_1646->g_673.s6", print_hash_value);
    transparent_crc(p_1646->g_673.s7, "p_1646->g_673.s7", print_hash_value);
    transparent_crc(p_1646->g_673.s8, "p_1646->g_673.s8", print_hash_value);
    transparent_crc(p_1646->g_673.s9, "p_1646->g_673.s9", print_hash_value);
    transparent_crc(p_1646->g_673.sa, "p_1646->g_673.sa", print_hash_value);
    transparent_crc(p_1646->g_673.sb, "p_1646->g_673.sb", print_hash_value);
    transparent_crc(p_1646->g_673.sc, "p_1646->g_673.sc", print_hash_value);
    transparent_crc(p_1646->g_673.sd, "p_1646->g_673.sd", print_hash_value);
    transparent_crc(p_1646->g_673.se, "p_1646->g_673.se", print_hash_value);
    transparent_crc(p_1646->g_673.sf, "p_1646->g_673.sf", print_hash_value);
    transparent_crc(p_1646->g_674.x, "p_1646->g_674.x", print_hash_value);
    transparent_crc(p_1646->g_674.y, "p_1646->g_674.y", print_hash_value);
    transparent_crc(p_1646->g_674.z, "p_1646->g_674.z", print_hash_value);
    transparent_crc(p_1646->g_674.w, "p_1646->g_674.w", print_hash_value);
    transparent_crc(p_1646->g_675.s0, "p_1646->g_675.s0", print_hash_value);
    transparent_crc(p_1646->g_675.s1, "p_1646->g_675.s1", print_hash_value);
    transparent_crc(p_1646->g_675.s2, "p_1646->g_675.s2", print_hash_value);
    transparent_crc(p_1646->g_675.s3, "p_1646->g_675.s3", print_hash_value);
    transparent_crc(p_1646->g_675.s4, "p_1646->g_675.s4", print_hash_value);
    transparent_crc(p_1646->g_675.s5, "p_1646->g_675.s5", print_hash_value);
    transparent_crc(p_1646->g_675.s6, "p_1646->g_675.s6", print_hash_value);
    transparent_crc(p_1646->g_675.s7, "p_1646->g_675.s7", print_hash_value);
    transparent_crc(p_1646->g_675.s8, "p_1646->g_675.s8", print_hash_value);
    transparent_crc(p_1646->g_675.s9, "p_1646->g_675.s9", print_hash_value);
    transparent_crc(p_1646->g_675.sa, "p_1646->g_675.sa", print_hash_value);
    transparent_crc(p_1646->g_675.sb, "p_1646->g_675.sb", print_hash_value);
    transparent_crc(p_1646->g_675.sc, "p_1646->g_675.sc", print_hash_value);
    transparent_crc(p_1646->g_675.sd, "p_1646->g_675.sd", print_hash_value);
    transparent_crc(p_1646->g_675.se, "p_1646->g_675.se", print_hash_value);
    transparent_crc(p_1646->g_675.sf, "p_1646->g_675.sf", print_hash_value);
    transparent_crc(p_1646->g_684.x, "p_1646->g_684.x", print_hash_value);
    transparent_crc(p_1646->g_684.y, "p_1646->g_684.y", print_hash_value);
    transparent_crc(p_1646->g_705.x, "p_1646->g_705.x", print_hash_value);
    transparent_crc(p_1646->g_705.y, "p_1646->g_705.y", print_hash_value);
    transparent_crc(p_1646->g_705.z, "p_1646->g_705.z", print_hash_value);
    transparent_crc(p_1646->g_705.w, "p_1646->g_705.w", print_hash_value);
    transparent_crc(p_1646->g_706.x, "p_1646->g_706.x", print_hash_value);
    transparent_crc(p_1646->g_706.y, "p_1646->g_706.y", print_hash_value);
    transparent_crc(p_1646->g_706.z, "p_1646->g_706.z", print_hash_value);
    transparent_crc(p_1646->g_706.w, "p_1646->g_706.w", print_hash_value);
    transparent_crc(p_1646->g_744.s0, "p_1646->g_744.s0", print_hash_value);
    transparent_crc(p_1646->g_744.s1, "p_1646->g_744.s1", print_hash_value);
    transparent_crc(p_1646->g_744.s2, "p_1646->g_744.s2", print_hash_value);
    transparent_crc(p_1646->g_744.s3, "p_1646->g_744.s3", print_hash_value);
    transparent_crc(p_1646->g_744.s4, "p_1646->g_744.s4", print_hash_value);
    transparent_crc(p_1646->g_744.s5, "p_1646->g_744.s5", print_hash_value);
    transparent_crc(p_1646->g_744.s6, "p_1646->g_744.s6", print_hash_value);
    transparent_crc(p_1646->g_744.s7, "p_1646->g_744.s7", print_hash_value);
    transparent_crc(p_1646->g_744.s8, "p_1646->g_744.s8", print_hash_value);
    transparent_crc(p_1646->g_744.s9, "p_1646->g_744.s9", print_hash_value);
    transparent_crc(p_1646->g_744.sa, "p_1646->g_744.sa", print_hash_value);
    transparent_crc(p_1646->g_744.sb, "p_1646->g_744.sb", print_hash_value);
    transparent_crc(p_1646->g_744.sc, "p_1646->g_744.sc", print_hash_value);
    transparent_crc(p_1646->g_744.sd, "p_1646->g_744.sd", print_hash_value);
    transparent_crc(p_1646->g_744.se, "p_1646->g_744.se", print_hash_value);
    transparent_crc(p_1646->g_744.sf, "p_1646->g_744.sf", print_hash_value);
    transparent_crc(p_1646->g_769.x, "p_1646->g_769.x", print_hash_value);
    transparent_crc(p_1646->g_769.y, "p_1646->g_769.y", print_hash_value);
    transparent_crc(p_1646->g_769.z, "p_1646->g_769.z", print_hash_value);
    transparent_crc(p_1646->g_769.w, "p_1646->g_769.w", print_hash_value);
    transparent_crc(p_1646->g_775.s0, "p_1646->g_775.s0", print_hash_value);
    transparent_crc(p_1646->g_775.s1, "p_1646->g_775.s1", print_hash_value);
    transparent_crc(p_1646->g_775.s2, "p_1646->g_775.s2", print_hash_value);
    transparent_crc(p_1646->g_775.s3, "p_1646->g_775.s3", print_hash_value);
    transparent_crc(p_1646->g_775.s4, "p_1646->g_775.s4", print_hash_value);
    transparent_crc(p_1646->g_775.s5, "p_1646->g_775.s5", print_hash_value);
    transparent_crc(p_1646->g_775.s6, "p_1646->g_775.s6", print_hash_value);
    transparent_crc(p_1646->g_775.s7, "p_1646->g_775.s7", print_hash_value);
    transparent_crc(p_1646->g_807.x, "p_1646->g_807.x", print_hash_value);
    transparent_crc(p_1646->g_807.y, "p_1646->g_807.y", print_hash_value);
    transparent_crc(p_1646->g_819.s0, "p_1646->g_819.s0", print_hash_value);
    transparent_crc(p_1646->g_819.s1, "p_1646->g_819.s1", print_hash_value);
    transparent_crc(p_1646->g_819.s2, "p_1646->g_819.s2", print_hash_value);
    transparent_crc(p_1646->g_819.s3, "p_1646->g_819.s3", print_hash_value);
    transparent_crc(p_1646->g_819.s4, "p_1646->g_819.s4", print_hash_value);
    transparent_crc(p_1646->g_819.s5, "p_1646->g_819.s5", print_hash_value);
    transparent_crc(p_1646->g_819.s6, "p_1646->g_819.s6", print_hash_value);
    transparent_crc(p_1646->g_819.s7, "p_1646->g_819.s7", print_hash_value);
    transparent_crc(p_1646->g_840.x, "p_1646->g_840.x", print_hash_value);
    transparent_crc(p_1646->g_840.y, "p_1646->g_840.y", print_hash_value);
    transparent_crc(p_1646->g_907, "p_1646->g_907", print_hash_value);
    transparent_crc(p_1646->g_925.s0, "p_1646->g_925.s0", print_hash_value);
    transparent_crc(p_1646->g_925.s1, "p_1646->g_925.s1", print_hash_value);
    transparent_crc(p_1646->g_925.s2, "p_1646->g_925.s2", print_hash_value);
    transparent_crc(p_1646->g_925.s3, "p_1646->g_925.s3", print_hash_value);
    transparent_crc(p_1646->g_925.s4, "p_1646->g_925.s4", print_hash_value);
    transparent_crc(p_1646->g_925.s5, "p_1646->g_925.s5", print_hash_value);
    transparent_crc(p_1646->g_925.s6, "p_1646->g_925.s6", print_hash_value);
    transparent_crc(p_1646->g_925.s7, "p_1646->g_925.s7", print_hash_value);
    transparent_crc(p_1646->g_925.s8, "p_1646->g_925.s8", print_hash_value);
    transparent_crc(p_1646->g_925.s9, "p_1646->g_925.s9", print_hash_value);
    transparent_crc(p_1646->g_925.sa, "p_1646->g_925.sa", print_hash_value);
    transparent_crc(p_1646->g_925.sb, "p_1646->g_925.sb", print_hash_value);
    transparent_crc(p_1646->g_925.sc, "p_1646->g_925.sc", print_hash_value);
    transparent_crc(p_1646->g_925.sd, "p_1646->g_925.sd", print_hash_value);
    transparent_crc(p_1646->g_925.se, "p_1646->g_925.se", print_hash_value);
    transparent_crc(p_1646->g_925.sf, "p_1646->g_925.sf", print_hash_value);
    transparent_crc(p_1646->g_926.x, "p_1646->g_926.x", print_hash_value);
    transparent_crc(p_1646->g_926.y, "p_1646->g_926.y", print_hash_value);
    transparent_crc(p_1646->g_950.s0, "p_1646->g_950.s0", print_hash_value);
    transparent_crc(p_1646->g_950.s1, "p_1646->g_950.s1", print_hash_value);
    transparent_crc(p_1646->g_950.s2, "p_1646->g_950.s2", print_hash_value);
    transparent_crc(p_1646->g_950.s3, "p_1646->g_950.s3", print_hash_value);
    transparent_crc(p_1646->g_950.s4, "p_1646->g_950.s4", print_hash_value);
    transparent_crc(p_1646->g_950.s5, "p_1646->g_950.s5", print_hash_value);
    transparent_crc(p_1646->g_950.s6, "p_1646->g_950.s6", print_hash_value);
    transparent_crc(p_1646->g_950.s7, "p_1646->g_950.s7", print_hash_value);
    transparent_crc(p_1646->g_950.s8, "p_1646->g_950.s8", print_hash_value);
    transparent_crc(p_1646->g_950.s9, "p_1646->g_950.s9", print_hash_value);
    transparent_crc(p_1646->g_950.sa, "p_1646->g_950.sa", print_hash_value);
    transparent_crc(p_1646->g_950.sb, "p_1646->g_950.sb", print_hash_value);
    transparent_crc(p_1646->g_950.sc, "p_1646->g_950.sc", print_hash_value);
    transparent_crc(p_1646->g_950.sd, "p_1646->g_950.sd", print_hash_value);
    transparent_crc(p_1646->g_950.se, "p_1646->g_950.se", print_hash_value);
    transparent_crc(p_1646->g_950.sf, "p_1646->g_950.sf", print_hash_value);
    transparent_crc(p_1646->g_963.f0, "p_1646->g_963.f0", print_hash_value);
    transparent_crc(p_1646->g_966.x, "p_1646->g_966.x", print_hash_value);
    transparent_crc(p_1646->g_966.y, "p_1646->g_966.y", print_hash_value);
    transparent_crc(p_1646->g_966.z, "p_1646->g_966.z", print_hash_value);
    transparent_crc(p_1646->g_966.w, "p_1646->g_966.w", print_hash_value);
    transparent_crc(p_1646->g_1071.f0, "p_1646->g_1071.f0", print_hash_value);
    transparent_crc(p_1646->g_1073, "p_1646->g_1073", print_hash_value);
    transparent_crc(p_1646->g_1074.x, "p_1646->g_1074.x", print_hash_value);
    transparent_crc(p_1646->g_1074.y, "p_1646->g_1074.y", print_hash_value);
    transparent_crc(p_1646->g_1074.z, "p_1646->g_1074.z", print_hash_value);
    transparent_crc(p_1646->g_1074.w, "p_1646->g_1074.w", print_hash_value);
    transparent_crc(p_1646->g_1121, "p_1646->g_1121", print_hash_value);
    transparent_crc(p_1646->g_1145.x, "p_1646->g_1145.x", print_hash_value);
    transparent_crc(p_1646->g_1145.y, "p_1646->g_1145.y", print_hash_value);
    transparent_crc(p_1646->g_1175.x, "p_1646->g_1175.x", print_hash_value);
    transparent_crc(p_1646->g_1175.y, "p_1646->g_1175.y", print_hash_value);
    transparent_crc(p_1646->g_1176.x, "p_1646->g_1176.x", print_hash_value);
    transparent_crc(p_1646->g_1176.y, "p_1646->g_1176.y", print_hash_value);
    transparent_crc(p_1646->g_1176.z, "p_1646->g_1176.z", print_hash_value);
    transparent_crc(p_1646->g_1176.w, "p_1646->g_1176.w", print_hash_value);
    transparent_crc(p_1646->g_1191.x, "p_1646->g_1191.x", print_hash_value);
    transparent_crc(p_1646->g_1191.y, "p_1646->g_1191.y", print_hash_value);
    transparent_crc(p_1646->g_1191.z, "p_1646->g_1191.z", print_hash_value);
    transparent_crc(p_1646->g_1191.w, "p_1646->g_1191.w", print_hash_value);
    transparent_crc(p_1646->g_1196.f0, "p_1646->g_1196.f0", print_hash_value);
    transparent_crc(p_1646->g_1208.x, "p_1646->g_1208.x", print_hash_value);
    transparent_crc(p_1646->g_1208.y, "p_1646->g_1208.y", print_hash_value);
    transparent_crc(p_1646->g_1272.s0, "p_1646->g_1272.s0", print_hash_value);
    transparent_crc(p_1646->g_1272.s1, "p_1646->g_1272.s1", print_hash_value);
    transparent_crc(p_1646->g_1272.s2, "p_1646->g_1272.s2", print_hash_value);
    transparent_crc(p_1646->g_1272.s3, "p_1646->g_1272.s3", print_hash_value);
    transparent_crc(p_1646->g_1272.s4, "p_1646->g_1272.s4", print_hash_value);
    transparent_crc(p_1646->g_1272.s5, "p_1646->g_1272.s5", print_hash_value);
    transparent_crc(p_1646->g_1272.s6, "p_1646->g_1272.s6", print_hash_value);
    transparent_crc(p_1646->g_1272.s7, "p_1646->g_1272.s7", print_hash_value);
    transparent_crc(p_1646->g_1272.s8, "p_1646->g_1272.s8", print_hash_value);
    transparent_crc(p_1646->g_1272.s9, "p_1646->g_1272.s9", print_hash_value);
    transparent_crc(p_1646->g_1272.sa, "p_1646->g_1272.sa", print_hash_value);
    transparent_crc(p_1646->g_1272.sb, "p_1646->g_1272.sb", print_hash_value);
    transparent_crc(p_1646->g_1272.sc, "p_1646->g_1272.sc", print_hash_value);
    transparent_crc(p_1646->g_1272.sd, "p_1646->g_1272.sd", print_hash_value);
    transparent_crc(p_1646->g_1272.se, "p_1646->g_1272.se", print_hash_value);
    transparent_crc(p_1646->g_1272.sf, "p_1646->g_1272.sf", print_hash_value);
    transparent_crc(p_1646->g_1273.s0, "p_1646->g_1273.s0", print_hash_value);
    transparent_crc(p_1646->g_1273.s1, "p_1646->g_1273.s1", print_hash_value);
    transparent_crc(p_1646->g_1273.s2, "p_1646->g_1273.s2", print_hash_value);
    transparent_crc(p_1646->g_1273.s3, "p_1646->g_1273.s3", print_hash_value);
    transparent_crc(p_1646->g_1273.s4, "p_1646->g_1273.s4", print_hash_value);
    transparent_crc(p_1646->g_1273.s5, "p_1646->g_1273.s5", print_hash_value);
    transparent_crc(p_1646->g_1273.s6, "p_1646->g_1273.s6", print_hash_value);
    transparent_crc(p_1646->g_1273.s7, "p_1646->g_1273.s7", print_hash_value);
    transparent_crc(p_1646->g_1273.s8, "p_1646->g_1273.s8", print_hash_value);
    transparent_crc(p_1646->g_1273.s9, "p_1646->g_1273.s9", print_hash_value);
    transparent_crc(p_1646->g_1273.sa, "p_1646->g_1273.sa", print_hash_value);
    transparent_crc(p_1646->g_1273.sb, "p_1646->g_1273.sb", print_hash_value);
    transparent_crc(p_1646->g_1273.sc, "p_1646->g_1273.sc", print_hash_value);
    transparent_crc(p_1646->g_1273.sd, "p_1646->g_1273.sd", print_hash_value);
    transparent_crc(p_1646->g_1273.se, "p_1646->g_1273.se", print_hash_value);
    transparent_crc(p_1646->g_1273.sf, "p_1646->g_1273.sf", print_hash_value);
    transparent_crc(p_1646->g_1274.x, "p_1646->g_1274.x", print_hash_value);
    transparent_crc(p_1646->g_1274.y, "p_1646->g_1274.y", print_hash_value);
    transparent_crc(p_1646->g_1279.f0, "p_1646->g_1279.f0", print_hash_value);
    transparent_crc(p_1646->g_1305.s0, "p_1646->g_1305.s0", print_hash_value);
    transparent_crc(p_1646->g_1305.s1, "p_1646->g_1305.s1", print_hash_value);
    transparent_crc(p_1646->g_1305.s2, "p_1646->g_1305.s2", print_hash_value);
    transparent_crc(p_1646->g_1305.s3, "p_1646->g_1305.s3", print_hash_value);
    transparent_crc(p_1646->g_1305.s4, "p_1646->g_1305.s4", print_hash_value);
    transparent_crc(p_1646->g_1305.s5, "p_1646->g_1305.s5", print_hash_value);
    transparent_crc(p_1646->g_1305.s6, "p_1646->g_1305.s6", print_hash_value);
    transparent_crc(p_1646->g_1305.s7, "p_1646->g_1305.s7", print_hash_value);
    transparent_crc(p_1646->g_1305.s8, "p_1646->g_1305.s8", print_hash_value);
    transparent_crc(p_1646->g_1305.s9, "p_1646->g_1305.s9", print_hash_value);
    transparent_crc(p_1646->g_1305.sa, "p_1646->g_1305.sa", print_hash_value);
    transparent_crc(p_1646->g_1305.sb, "p_1646->g_1305.sb", print_hash_value);
    transparent_crc(p_1646->g_1305.sc, "p_1646->g_1305.sc", print_hash_value);
    transparent_crc(p_1646->g_1305.sd, "p_1646->g_1305.sd", print_hash_value);
    transparent_crc(p_1646->g_1305.se, "p_1646->g_1305.se", print_hash_value);
    transparent_crc(p_1646->g_1305.sf, "p_1646->g_1305.sf", print_hash_value);
    transparent_crc(p_1646->g_1326.f0, "p_1646->g_1326.f0", print_hash_value);
    transparent_crc(p_1646->g_1353.s0, "p_1646->g_1353.s0", print_hash_value);
    transparent_crc(p_1646->g_1353.s1, "p_1646->g_1353.s1", print_hash_value);
    transparent_crc(p_1646->g_1353.s2, "p_1646->g_1353.s2", print_hash_value);
    transparent_crc(p_1646->g_1353.s3, "p_1646->g_1353.s3", print_hash_value);
    transparent_crc(p_1646->g_1353.s4, "p_1646->g_1353.s4", print_hash_value);
    transparent_crc(p_1646->g_1353.s5, "p_1646->g_1353.s5", print_hash_value);
    transparent_crc(p_1646->g_1353.s6, "p_1646->g_1353.s6", print_hash_value);
    transparent_crc(p_1646->g_1353.s7, "p_1646->g_1353.s7", print_hash_value);
    transparent_crc(p_1646->g_1353.s8, "p_1646->g_1353.s8", print_hash_value);
    transparent_crc(p_1646->g_1353.s9, "p_1646->g_1353.s9", print_hash_value);
    transparent_crc(p_1646->g_1353.sa, "p_1646->g_1353.sa", print_hash_value);
    transparent_crc(p_1646->g_1353.sb, "p_1646->g_1353.sb", print_hash_value);
    transparent_crc(p_1646->g_1353.sc, "p_1646->g_1353.sc", print_hash_value);
    transparent_crc(p_1646->g_1353.sd, "p_1646->g_1353.sd", print_hash_value);
    transparent_crc(p_1646->g_1353.se, "p_1646->g_1353.se", print_hash_value);
    transparent_crc(p_1646->g_1353.sf, "p_1646->g_1353.sf", print_hash_value);
    transparent_crc(p_1646->g_1367.x, "p_1646->g_1367.x", print_hash_value);
    transparent_crc(p_1646->g_1367.y, "p_1646->g_1367.y", print_hash_value);
    transparent_crc(p_1646->g_1367.z, "p_1646->g_1367.z", print_hash_value);
    transparent_crc(p_1646->g_1367.w, "p_1646->g_1367.w", print_hash_value);
    transparent_crc(p_1646->g_1373.s0, "p_1646->g_1373.s0", print_hash_value);
    transparent_crc(p_1646->g_1373.s1, "p_1646->g_1373.s1", print_hash_value);
    transparent_crc(p_1646->g_1373.s2, "p_1646->g_1373.s2", print_hash_value);
    transparent_crc(p_1646->g_1373.s3, "p_1646->g_1373.s3", print_hash_value);
    transparent_crc(p_1646->g_1373.s4, "p_1646->g_1373.s4", print_hash_value);
    transparent_crc(p_1646->g_1373.s5, "p_1646->g_1373.s5", print_hash_value);
    transparent_crc(p_1646->g_1373.s6, "p_1646->g_1373.s6", print_hash_value);
    transparent_crc(p_1646->g_1373.s7, "p_1646->g_1373.s7", print_hash_value);
    transparent_crc(p_1646->g_1373.s8, "p_1646->g_1373.s8", print_hash_value);
    transparent_crc(p_1646->g_1373.s9, "p_1646->g_1373.s9", print_hash_value);
    transparent_crc(p_1646->g_1373.sa, "p_1646->g_1373.sa", print_hash_value);
    transparent_crc(p_1646->g_1373.sb, "p_1646->g_1373.sb", print_hash_value);
    transparent_crc(p_1646->g_1373.sc, "p_1646->g_1373.sc", print_hash_value);
    transparent_crc(p_1646->g_1373.sd, "p_1646->g_1373.sd", print_hash_value);
    transparent_crc(p_1646->g_1373.se, "p_1646->g_1373.se", print_hash_value);
    transparent_crc(p_1646->g_1373.sf, "p_1646->g_1373.sf", print_hash_value);
    transparent_crc(p_1646->g_1374.x, "p_1646->g_1374.x", print_hash_value);
    transparent_crc(p_1646->g_1374.y, "p_1646->g_1374.y", print_hash_value);
    transparent_crc(p_1646->g_1392, "p_1646->g_1392", print_hash_value);
    transparent_crc(p_1646->g_1399.s0, "p_1646->g_1399.s0", print_hash_value);
    transparent_crc(p_1646->g_1399.s1, "p_1646->g_1399.s1", print_hash_value);
    transparent_crc(p_1646->g_1399.s2, "p_1646->g_1399.s2", print_hash_value);
    transparent_crc(p_1646->g_1399.s3, "p_1646->g_1399.s3", print_hash_value);
    transparent_crc(p_1646->g_1399.s4, "p_1646->g_1399.s4", print_hash_value);
    transparent_crc(p_1646->g_1399.s5, "p_1646->g_1399.s5", print_hash_value);
    transparent_crc(p_1646->g_1399.s6, "p_1646->g_1399.s6", print_hash_value);
    transparent_crc(p_1646->g_1399.s7, "p_1646->g_1399.s7", print_hash_value);
    transparent_crc(p_1646->g_1399.s8, "p_1646->g_1399.s8", print_hash_value);
    transparent_crc(p_1646->g_1399.s9, "p_1646->g_1399.s9", print_hash_value);
    transparent_crc(p_1646->g_1399.sa, "p_1646->g_1399.sa", print_hash_value);
    transparent_crc(p_1646->g_1399.sb, "p_1646->g_1399.sb", print_hash_value);
    transparent_crc(p_1646->g_1399.sc, "p_1646->g_1399.sc", print_hash_value);
    transparent_crc(p_1646->g_1399.sd, "p_1646->g_1399.sd", print_hash_value);
    transparent_crc(p_1646->g_1399.se, "p_1646->g_1399.se", print_hash_value);
    transparent_crc(p_1646->g_1399.sf, "p_1646->g_1399.sf", print_hash_value);
    transparent_crc(p_1646->g_1404.x, "p_1646->g_1404.x", print_hash_value);
    transparent_crc(p_1646->g_1404.y, "p_1646->g_1404.y", print_hash_value);
    transparent_crc(p_1646->g_1455.f0, "p_1646->g_1455.f0", print_hash_value);
    transparent_crc(p_1646->g_1463.s0, "p_1646->g_1463.s0", print_hash_value);
    transparent_crc(p_1646->g_1463.s1, "p_1646->g_1463.s1", print_hash_value);
    transparent_crc(p_1646->g_1463.s2, "p_1646->g_1463.s2", print_hash_value);
    transparent_crc(p_1646->g_1463.s3, "p_1646->g_1463.s3", print_hash_value);
    transparent_crc(p_1646->g_1463.s4, "p_1646->g_1463.s4", print_hash_value);
    transparent_crc(p_1646->g_1463.s5, "p_1646->g_1463.s5", print_hash_value);
    transparent_crc(p_1646->g_1463.s6, "p_1646->g_1463.s6", print_hash_value);
    transparent_crc(p_1646->g_1463.s7, "p_1646->g_1463.s7", print_hash_value);
    transparent_crc(p_1646->g_1463.s8, "p_1646->g_1463.s8", print_hash_value);
    transparent_crc(p_1646->g_1463.s9, "p_1646->g_1463.s9", print_hash_value);
    transparent_crc(p_1646->g_1463.sa, "p_1646->g_1463.sa", print_hash_value);
    transparent_crc(p_1646->g_1463.sb, "p_1646->g_1463.sb", print_hash_value);
    transparent_crc(p_1646->g_1463.sc, "p_1646->g_1463.sc", print_hash_value);
    transparent_crc(p_1646->g_1463.sd, "p_1646->g_1463.sd", print_hash_value);
    transparent_crc(p_1646->g_1463.se, "p_1646->g_1463.se", print_hash_value);
    transparent_crc(p_1646->g_1463.sf, "p_1646->g_1463.sf", print_hash_value);
    transparent_crc(p_1646->g_1464.s0, "p_1646->g_1464.s0", print_hash_value);
    transparent_crc(p_1646->g_1464.s1, "p_1646->g_1464.s1", print_hash_value);
    transparent_crc(p_1646->g_1464.s2, "p_1646->g_1464.s2", print_hash_value);
    transparent_crc(p_1646->g_1464.s3, "p_1646->g_1464.s3", print_hash_value);
    transparent_crc(p_1646->g_1464.s4, "p_1646->g_1464.s4", print_hash_value);
    transparent_crc(p_1646->g_1464.s5, "p_1646->g_1464.s5", print_hash_value);
    transparent_crc(p_1646->g_1464.s6, "p_1646->g_1464.s6", print_hash_value);
    transparent_crc(p_1646->g_1464.s7, "p_1646->g_1464.s7", print_hash_value);
    transparent_crc(p_1646->g_1464.s8, "p_1646->g_1464.s8", print_hash_value);
    transparent_crc(p_1646->g_1464.s9, "p_1646->g_1464.s9", print_hash_value);
    transparent_crc(p_1646->g_1464.sa, "p_1646->g_1464.sa", print_hash_value);
    transparent_crc(p_1646->g_1464.sb, "p_1646->g_1464.sb", print_hash_value);
    transparent_crc(p_1646->g_1464.sc, "p_1646->g_1464.sc", print_hash_value);
    transparent_crc(p_1646->g_1464.sd, "p_1646->g_1464.sd", print_hash_value);
    transparent_crc(p_1646->g_1464.se, "p_1646->g_1464.se", print_hash_value);
    transparent_crc(p_1646->g_1464.sf, "p_1646->g_1464.sf", print_hash_value);
    transparent_crc(p_1646->g_1507.x, "p_1646->g_1507.x", print_hash_value);
    transparent_crc(p_1646->g_1507.y, "p_1646->g_1507.y", print_hash_value);
    transparent_crc(p_1646->g_1527.s0, "p_1646->g_1527.s0", print_hash_value);
    transparent_crc(p_1646->g_1527.s1, "p_1646->g_1527.s1", print_hash_value);
    transparent_crc(p_1646->g_1527.s2, "p_1646->g_1527.s2", print_hash_value);
    transparent_crc(p_1646->g_1527.s3, "p_1646->g_1527.s3", print_hash_value);
    transparent_crc(p_1646->g_1527.s4, "p_1646->g_1527.s4", print_hash_value);
    transparent_crc(p_1646->g_1527.s5, "p_1646->g_1527.s5", print_hash_value);
    transparent_crc(p_1646->g_1527.s6, "p_1646->g_1527.s6", print_hash_value);
    transparent_crc(p_1646->g_1527.s7, "p_1646->g_1527.s7", print_hash_value);
    transparent_crc(p_1646->g_1542.s0, "p_1646->g_1542.s0", print_hash_value);
    transparent_crc(p_1646->g_1542.s1, "p_1646->g_1542.s1", print_hash_value);
    transparent_crc(p_1646->g_1542.s2, "p_1646->g_1542.s2", print_hash_value);
    transparent_crc(p_1646->g_1542.s3, "p_1646->g_1542.s3", print_hash_value);
    transparent_crc(p_1646->g_1542.s4, "p_1646->g_1542.s4", print_hash_value);
    transparent_crc(p_1646->g_1542.s5, "p_1646->g_1542.s5", print_hash_value);
    transparent_crc(p_1646->g_1542.s6, "p_1646->g_1542.s6", print_hash_value);
    transparent_crc(p_1646->g_1542.s7, "p_1646->g_1542.s7", print_hash_value);
    transparent_crc(p_1646->g_1542.s8, "p_1646->g_1542.s8", print_hash_value);
    transparent_crc(p_1646->g_1542.s9, "p_1646->g_1542.s9", print_hash_value);
    transparent_crc(p_1646->g_1542.sa, "p_1646->g_1542.sa", print_hash_value);
    transparent_crc(p_1646->g_1542.sb, "p_1646->g_1542.sb", print_hash_value);
    transparent_crc(p_1646->g_1542.sc, "p_1646->g_1542.sc", print_hash_value);
    transparent_crc(p_1646->g_1542.sd, "p_1646->g_1542.sd", print_hash_value);
    transparent_crc(p_1646->g_1542.se, "p_1646->g_1542.se", print_hash_value);
    transparent_crc(p_1646->g_1542.sf, "p_1646->g_1542.sf", print_hash_value);
    transparent_crc(p_1646->g_1587, "p_1646->g_1587", print_hash_value);
    transparent_crc(p_1646->g_1610.s0, "p_1646->g_1610.s0", print_hash_value);
    transparent_crc(p_1646->g_1610.s1, "p_1646->g_1610.s1", print_hash_value);
    transparent_crc(p_1646->g_1610.s2, "p_1646->g_1610.s2", print_hash_value);
    transparent_crc(p_1646->g_1610.s3, "p_1646->g_1610.s3", print_hash_value);
    transparent_crc(p_1646->g_1610.s4, "p_1646->g_1610.s4", print_hash_value);
    transparent_crc(p_1646->g_1610.s5, "p_1646->g_1610.s5", print_hash_value);
    transparent_crc(p_1646->g_1610.s6, "p_1646->g_1610.s6", print_hash_value);
    transparent_crc(p_1646->g_1610.s7, "p_1646->g_1610.s7", print_hash_value);
    transparent_crc(p_1646->g_1610.s8, "p_1646->g_1610.s8", print_hash_value);
    transparent_crc(p_1646->g_1610.s9, "p_1646->g_1610.s9", print_hash_value);
    transparent_crc(p_1646->g_1610.sa, "p_1646->g_1610.sa", print_hash_value);
    transparent_crc(p_1646->g_1610.sb, "p_1646->g_1610.sb", print_hash_value);
    transparent_crc(p_1646->g_1610.sc, "p_1646->g_1610.sc", print_hash_value);
    transparent_crc(p_1646->g_1610.sd, "p_1646->g_1610.sd", print_hash_value);
    transparent_crc(p_1646->g_1610.se, "p_1646->g_1610.se", print_hash_value);
    transparent_crc(p_1646->g_1610.sf, "p_1646->g_1610.sf", print_hash_value);
    transparent_crc(p_1646->g_1618, "p_1646->g_1618", print_hash_value);
    transparent_crc(p_1646->g_1624.s0, "p_1646->g_1624.s0", print_hash_value);
    transparent_crc(p_1646->g_1624.s1, "p_1646->g_1624.s1", print_hash_value);
    transparent_crc(p_1646->g_1624.s2, "p_1646->g_1624.s2", print_hash_value);
    transparent_crc(p_1646->g_1624.s3, "p_1646->g_1624.s3", print_hash_value);
    transparent_crc(p_1646->g_1624.s4, "p_1646->g_1624.s4", print_hash_value);
    transparent_crc(p_1646->g_1624.s5, "p_1646->g_1624.s5", print_hash_value);
    transparent_crc(p_1646->g_1624.s6, "p_1646->g_1624.s6", print_hash_value);
    transparent_crc(p_1646->g_1624.s7, "p_1646->g_1624.s7", print_hash_value);
    transparent_crc(p_1646->g_1624.s8, "p_1646->g_1624.s8", print_hash_value);
    transparent_crc(p_1646->g_1624.s9, "p_1646->g_1624.s9", print_hash_value);
    transparent_crc(p_1646->g_1624.sa, "p_1646->g_1624.sa", print_hash_value);
    transparent_crc(p_1646->g_1624.sb, "p_1646->g_1624.sb", print_hash_value);
    transparent_crc(p_1646->g_1624.sc, "p_1646->g_1624.sc", print_hash_value);
    transparent_crc(p_1646->g_1624.sd, "p_1646->g_1624.sd", print_hash_value);
    transparent_crc(p_1646->g_1624.se, "p_1646->g_1624.se", print_hash_value);
    transparent_crc(p_1646->g_1624.sf, "p_1646->g_1624.sf", print_hash_value);
    transparent_crc(p_1646->g_1633.s0, "p_1646->g_1633.s0", print_hash_value);
    transparent_crc(p_1646->g_1633.s1, "p_1646->g_1633.s1", print_hash_value);
    transparent_crc(p_1646->g_1633.s2, "p_1646->g_1633.s2", print_hash_value);
    transparent_crc(p_1646->g_1633.s3, "p_1646->g_1633.s3", print_hash_value);
    transparent_crc(p_1646->g_1633.s4, "p_1646->g_1633.s4", print_hash_value);
    transparent_crc(p_1646->g_1633.s5, "p_1646->g_1633.s5", print_hash_value);
    transparent_crc(p_1646->g_1633.s6, "p_1646->g_1633.s6", print_hash_value);
    transparent_crc(p_1646->g_1633.s7, "p_1646->g_1633.s7", print_hash_value);
    transparent_crc(p_1646->g_1634.x, "p_1646->g_1634.x", print_hash_value);
    transparent_crc(p_1646->g_1634.y, "p_1646->g_1634.y", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
