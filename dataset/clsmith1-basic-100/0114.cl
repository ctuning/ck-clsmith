// ---fake_divergence -g 72,10,3 -l 4,10,3
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


// Seed: 114

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    int32_t g_2;
    uint32_t g_28[9];
    volatile int8_t g_44;
    uint16_t g_48;
    int32_t g_73;
    int8_t g_89[8];
    int32_t g_109;
    int32_t g_112;
    int64_t g_116;
    uint32_t * volatile g_141;
    uint32_t * volatile * volatile g_140;
    int16_t g_145;
    int16_t *g_144[5];
    int8_t g_173;
    uint8_t g_194[8][1];
    volatile uint32_t g_207;
    volatile uint32_t *g_206;
    volatile int8_t *g_214;
    uint32_t *g_230;
    uint32_t **g_229;
    uint32_t ***g_228[6];
    int32_t *g_240;
    int32_t ** volatile g_239;
    volatile int32_t g_250;
    uint32_t g_251;
    uint32_t *g_255;
    volatile uint64_t g_258;
    int64_t g_265;
    volatile uint32_t g_267;
    uint8_t g_293;
    uint8_t g_295;
    int16_t g_329[9];
    uint8_t g_367;
    uint64_t g_424;
    volatile uint32_t g_497;
    int32_t g_500;
    volatile int32_t g_501;
    volatile uint32_t g_502;
    int8_t g_511;
    int8_t g_582;
    uint32_t g_583;
    int32_t ** volatile g_657;
    volatile int64_t g_669;
    volatile int8_t g_670;
    uint16_t g_671;
    uint64_t g_675;
    uint32_t g_685;
    int8_t g_688[5];
    uint8_t g_694[2][7][8];
    uint32_t g_771;
    uint64_t g_774;
    int32_t g_794[7][1];
    int32_t *g_793;
    int32_t ** volatile g_792;
    uint32_t g_938;
    uint32_t g_950;
    int32_t * volatile g_979;
    volatile uint64_t g_1007;
    int32_t ** volatile g_1031;
    uint32_t ** volatile *** volatile g_1096;
    int32_t *g_1101;
    uint32_t g_1154;
    int16_t g_1182;
    uint32_t * volatile ** volatile g_1190;
    uint32_t * volatile ** volatile *g_1189;
    uint32_t * volatile ** volatile * volatile *g_1188;
    uint16_t g_1210[3][9];
    volatile int8_t g_1268;
    volatile int16_t g_1269;
    volatile uint32_t g_1271[6][4][7];
    int32_t ** volatile g_1277[1][5];
    volatile int32_t g_1342[6][9][4];
    int64_t g_1464;
    volatile int8_t * volatile *g_1493[1][2][8];
    volatile int8_t * volatile **g_1492;
    volatile int8_t * volatile ***g_1491[1][1][1];
    int64_t *g_1501[9][4];
    int64_t **g_1500;
    volatile int16_t * volatile * volatile g_1507;
    volatile int16_t * volatile * volatile *g_1506;
    int8_t ****g_1517[4][2];
    uint32_t g_1635;
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
int64_t  func_1(struct S0 * p_1658);
uint32_t  func_17(int32_t  p_18, int64_t  p_19, struct S0 * p_1658);
int16_t  func_22(uint32_t  p_23, int16_t  p_24, uint32_t  p_25, uint16_t  p_26, struct S0 * p_1658);
int32_t * func_53(int32_t * p_54, int32_t * p_55, struct S0 * p_1658);
int32_t * func_57(int32_t ** p_58, struct S0 * p_1658);
uint32_t ** func_60(uint64_t  p_61, struct S0 * p_1658);
uint8_t  func_62(uint32_t  p_63, int32_t * p_64, uint32_t * p_65, struct S0 * p_1658);
uint32_t * func_66(uint32_t ** p_67, int16_t  p_68, struct S0 * p_1658);
uint32_t ** func_69(uint16_t  p_70, struct S0 * p_1658);
int64_t  func_81(int16_t  p_82, uint32_t * p_83, int32_t  p_84, int8_t  p_85, uint32_t  p_86, struct S0 * p_1658);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1658->g_2 p_1658->g_48 p_1658->g_28 p_1658->g_73 p_1658->g_89 p_1658->g_109 p_1658->g_44 p_1658->g_112 p_1658->g_116 p_1658->g_140 p_1658->g_144 p_1658->g_145 p_1658->g_173 p_1658->g_194 p_1658->g_141 p_1658->g_206 p_1658->g_214 p_1658->g_207 p_1658->g_239 p_1658->g_251 p_1658->g_258 p_1658->g_267 p_1658->g_240 p_1658->g_229 p_1658->g_230 p_1658->g_265 p_1658->g_675 p_1658->g_685 p_1658->g_367 p_1658->g_329 p_1658->g_771 p_1658->g_774 p_1658->g_792 p_1658->g_794 p_1658->g_688 p_1658->g_497 p_1658->g_255 p_1658->g_694 p_1658->g_295 p_1658->g_293 p_1658->g_671 p_1658->g_979 p_1658->g_511 p_1658->g_582 p_1658->g_424 p_1658->g_1007 p_1658->g_583 p_1658->g_500 p_1658->g_1101 p_1658->g_950 p_1658->g_250 p_1658->g_1154 p_1658->g_1464 p_1658->g_1491 p_1658->g_1500 p_1658->g_1506 p_1658->g_1517 p_1658->g_1635 p_1658->g_938
 * writes: p_1658->g_2 p_1658->g_28 p_1658->g_48 p_1658->g_73 p_1658->g_89 p_1658->g_109 p_1658->g_112 p_1658->g_194 p_1658->g_145 p_1658->g_228 p_1658->g_240 p_1658->g_251 p_1658->g_255 p_1658->g_258 p_1658->g_267 p_1658->g_116 p_1658->g_173 p_1658->g_675 p_1658->g_500 p_1658->g_265 p_1658->g_771 p_1658->g_671 p_1658->g_794 p_1658->g_329 p_1658->g_295 p_1658->g_583 p_1658->g_582 p_1658->g_688 p_1658->g_774 p_1658->g_685 p_1658->g_950 p_1658->g_293 p_1658->g_694 p_1658->g_1154 p_1658->g_1464 p_1658->g_1500 p_1658->g_1182 p_1658->g_1210 p_1658->g_1635 p_1658->g_424
 */
int64_t  func_1(struct S0 * p_1658)
{ /* block id: 4 */
    int64_t l_8[7][9] = {{1L,1L,0x4F59F89F2E072305L,0L,1L,0L,0x4F59F89F2E072305L,1L,1L},{1L,1L,0x4F59F89F2E072305L,0L,1L,0L,0x4F59F89F2E072305L,1L,1L},{1L,1L,0x4F59F89F2E072305L,0L,1L,0L,0x4F59F89F2E072305L,1L,1L},{1L,1L,0x4F59F89F2E072305L,0L,1L,0L,0x4F59F89F2E072305L,1L,1L},{1L,1L,0x4F59F89F2E072305L,0L,1L,0L,0x4F59F89F2E072305L,1L,1L},{1L,1L,0x4F59F89F2E072305L,0L,1L,0L,0x4F59F89F2E072305L,1L,1L},{1L,1L,0x4F59F89F2E072305L,0L,1L,0L,0x4F59F89F2E072305L,1L,1L}};
    uint32_t *l_27 = &p_1658->g_28[5];
    int8_t l_29[7] = {0x7DL,0x7DL,0x7DL,0x7DL,0x7DL,0x7DL,0x7DL};
    uint64_t *l_1638 = &p_1658->g_424;
    uint32_t *l_1654 = &p_1658->g_251;
    int i, j;
    for (p_1658->g_2 = 4; (p_1658->g_2 >= 26); ++p_1658->g_2)
    { /* block id: 7 */
        uint16_t l_5[4][8] = {{0x0FC0L,0x3FF8L,0xEA66L,0x3FF8L,0x0FC0L,0x0FC0L,0x3FF8L,0xEA66L},{0x0FC0L,0x3FF8L,0xEA66L,0x3FF8L,0x0FC0L,0x0FC0L,0x3FF8L,0xEA66L},{0x0FC0L,0x3FF8L,0xEA66L,0x3FF8L,0x0FC0L,0x0FC0L,0x3FF8L,0xEA66L},{0x0FC0L,0x3FF8L,0xEA66L,0x3FF8L,0x0FC0L,0x0FC0L,0x3FF8L,0xEA66L}};
        int i, j;
        if (l_5[1][0])
            break;
        if (l_5[1][0])
            break;
    }
    if (((safe_lshift_func_int8_t_s_s(l_8[0][6], 0)) >= (((safe_lshift_func_uint16_t_u_u((safe_rshift_func_uint8_t_u_s(((safe_rshift_func_int16_t_s_u(p_1658->g_2, 7)) , (p_1658->g_2 | (safe_lshift_func_int8_t_s_s((-9L), l_8[4][2])))), (((*l_1654) = func_17(p_1658->g_2, (safe_mod_func_int32_t_s_s((GROUP_DIVERGE(2, 1) , (p_1658->g_2 , (((((*l_1638) = ((func_22(((*l_27) = 4294967295UL), p_1658->g_2, p_1658->g_2, l_29[2], p_1658) == GROUP_DIVERGE(2, 1)) <= 4294967289UL)) & p_1658->g_938) > p_1658->g_2) , l_29[4]))), p_1658->g_938)), p_1658)) != GROUP_DIVERGE(2, 1)))), p_1658->g_367)) , l_29[2]) ^ 5L)))
    { /* block id: 819 */
        int8_t l_1655[2];
        int i;
        for (i = 0; i < 2; i++)
            l_1655[i] = 0L;
        return l_1655[0];
    }
    else
    { /* block id: 821 */
        uint8_t *l_1656 = &p_1658->g_295;
        uint8_t **l_1657 = &l_1656;
        (*p_1658->g_1101) = (((*l_1657) = l_1656) != &p_1658->g_194[5][0]);
    }
    (*p_1658->g_1101) &= l_29[0];
    return l_29[2];
}


/* ------------------------------------------ */
/* 
 * reads : p_1658->g_1101 p_1658->g_206 p_1658->g_207
 * writes: p_1658->g_112
 */
uint32_t  func_17(int32_t  p_18, int64_t  p_19, struct S0 * p_1658)
{ /* block id: 813 */
    uint64_t l_1643 = 0x14ECFE709E7E6AE4L;
    int32_t l_1646 = 0x599F5979L;
    uint32_t *l_1648 = (void*)0;
    int32_t **l_1651 = &p_1658->g_240;
    uint8_t l_1652 = 0x0BL;
    uint32_t l_1653 = 0x196B0E0FL;
    l_1652 ^= ((safe_add_func_int32_t_s_s(((&p_1658->g_240 != ((safe_lshift_func_uint8_t_u_s((((l_1643--) | ((((*p_1658->g_1101) = (l_1646 ^ (safe_unary_minus_func_uint64_t_u((p_19 <= p_19))))) , l_1648) == l_1648)) != (safe_div_func_int32_t_s_s((GROUP_DIVERGE(1, 1) & 0x4C8CAB6E554EC7B3L), 4294967291UL))), 1)) , l_1651)) || p_19), (*p_1658->g_206))) , 0x25F43AEBL);
    return l_1653;
}


/* ------------------------------------------ */
/* 
 * reads : p_1658->g_48 p_1658->g_28 p_1658->g_73 p_1658->g_89 p_1658->g_2 p_1658->g_109 p_1658->g_44 p_1658->g_112 p_1658->g_116 p_1658->g_140 p_1658->g_144 p_1658->g_145 p_1658->g_173 p_1658->g_194 p_1658->g_141 p_1658->g_206 p_1658->g_214 p_1658->g_207 p_1658->g_239 p_1658->g_251 p_1658->g_258 p_1658->g_267 p_1658->g_240 p_1658->g_229 p_1658->g_230 p_1658->g_265 p_1658->g_675 p_1658->g_685 p_1658->g_367 p_1658->g_329 p_1658->g_771 p_1658->g_774 p_1658->g_792 p_1658->g_794 p_1658->g_688 p_1658->g_497 p_1658->g_255 p_1658->g_694 p_1658->g_295 p_1658->g_293 p_1658->g_671 p_1658->g_979 p_1658->g_511 p_1658->g_582 p_1658->g_424 p_1658->g_1007 p_1658->g_583 p_1658->g_500 p_1658->g_1101 p_1658->g_950 p_1658->g_250 p_1658->g_1154 p_1658->g_1464 p_1658->g_1491 p_1658->g_1500 p_1658->g_1506 p_1658->g_1517 p_1658->g_1635
 * writes: p_1658->g_48 p_1658->g_73 p_1658->g_89 p_1658->g_109 p_1658->g_112 p_1658->g_194 p_1658->g_28 p_1658->g_145 p_1658->g_228 p_1658->g_240 p_1658->g_251 p_1658->g_255 p_1658->g_258 p_1658->g_267 p_1658->g_116 p_1658->g_173 p_1658->g_675 p_1658->g_500 p_1658->g_265 p_1658->g_771 p_1658->g_671 p_1658->g_794 p_1658->g_329 p_1658->g_295 p_1658->g_583 p_1658->g_582 p_1658->g_688 p_1658->g_774 p_1658->g_685 p_1658->g_950 p_1658->g_293 p_1658->g_694 p_1658->g_1154 p_1658->g_1464 p_1658->g_1500 p_1658->g_1182 p_1658->g_1210 p_1658->g_1635
 */
int16_t  func_22(uint32_t  p_23, int16_t  p_24, uint32_t  p_25, uint16_t  p_26, struct S0 * p_1658)
{ /* block id: 12 */
    int32_t *l_30 = (void*)0;
    int32_t l_31 = 0x6FC6E20BL;
    int32_t *l_32 = (void*)0;
    int32_t *l_33 = (void*)0;
    int32_t *l_34 = &l_31;
    int32_t *l_35 = &l_31;
    int32_t *l_36 = &l_31;
    int32_t *l_37 = &l_31;
    int32_t *l_38 = &l_31;
    int32_t *l_39 = &l_31;
    int32_t *l_40 = &l_31;
    int32_t l_41 = 0x01F6C987L;
    int32_t *l_42 = &l_41;
    int32_t *l_43 = (void*)0;
    int32_t *l_45 = (void*)0;
    int32_t *l_46 = &l_41;
    int32_t *l_47[3];
    int16_t **l_1458 = (void*)0;
    int16_t ***l_1457[5][3] = {{(void*)0,&l_1458,(void*)0},{(void*)0,&l_1458,(void*)0},{(void*)0,&l_1458,(void*)0},{(void*)0,&l_1458,(void*)0},{(void*)0,&l_1458,(void*)0}};
    int32_t l_1489 = 0x26B63242L;
    uint32_t l_1490 = 0xFF8FF326L;
    int8_t **l_1520 = (void*)0;
    int8_t ***l_1519 = &l_1520;
    int8_t ****l_1518[1][5][8] = {{{(void*)0,&l_1519,&l_1519,(void*)0,&l_1519,&l_1519,&l_1519,&l_1519},{(void*)0,&l_1519,&l_1519,(void*)0,&l_1519,&l_1519,&l_1519,&l_1519},{(void*)0,&l_1519,&l_1519,(void*)0,&l_1519,&l_1519,&l_1519,&l_1519},{(void*)0,&l_1519,&l_1519,(void*)0,&l_1519,&l_1519,&l_1519,&l_1519},{(void*)0,&l_1519,&l_1519,(void*)0,&l_1519,&l_1519,&l_1519,&l_1519}}};
    int32_t l_1543 = 9L;
    int16_t l_1560[6][6] = {{0x0F0DL,0x0F0DL,0L,0x1FCAL,1L,0x5AB9L},{0x0F0DL,0x0F0DL,0L,0x1FCAL,1L,0x5AB9L},{0x0F0DL,0x0F0DL,0L,0x1FCAL,1L,0x5AB9L},{0x0F0DL,0x0F0DL,0L,0x1FCAL,1L,0x5AB9L},{0x0F0DL,0x0F0DL,0L,0x1FCAL,1L,0x5AB9L},{0x0F0DL,0x0F0DL,0L,0x1FCAL,1L,0x5AB9L}};
    uint32_t **l_1590 = &p_1658->g_230;
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_47[i] = &l_41;
    ++p_1658->g_48;
    for (p_25 = 18; (p_25 <= 4); p_25 = safe_sub_func_uint8_t_u_u(p_25, 1))
    { /* block id: 16 */
        int32_t **l_56[9] = {&l_37,&l_47[2],&l_37,&l_37,&l_47[2],&l_37,&l_37,&l_47[2],&l_37};
        uint32_t ****l_1462 = (void*)0;
        uint32_t *****l_1461 = &l_1462;
        uint32_t ******l_1460[8][4] = {{(void*)0,(void*)0,&l_1461,&l_1461},{(void*)0,(void*)0,&l_1461,&l_1461},{(void*)0,(void*)0,&l_1461,&l_1461},{(void*)0,(void*)0,&l_1461,&l_1461},{(void*)0,(void*)0,&l_1461,&l_1461},{(void*)0,(void*)0,&l_1461,&l_1461},{(void*)0,(void*)0,&l_1461,&l_1461},{(void*)0,(void*)0,&l_1461,&l_1461}};
        int8_t *l_1497 = &p_1658->g_688[3];
        int8_t **l_1496 = &l_1497;
        int8_t ***l_1495 = &l_1496;
        int8_t ****l_1494 = &l_1495;
        int64_t ***l_1502 = (void*)0;
        int64_t ***l_1503 = &p_1658->g_1500;
        int8_t l_1510 = (-9L);
        int64_t **l_1512 = (void*)0;
        int64_t ***l_1511 = &l_1512;
        int16_t ****l_1555 = (void*)0;
        uint64_t l_1570 = 0x4327F7487BDD6D97L;
        int16_t l_1571 = (-6L);
        int32_t *l_1595 = (void*)0;
        uint64_t *l_1628 = &p_1658->g_675;
        int i, j;
        (*l_46) |= (((*p_1658->g_239) = func_53((l_40 = &l_31), func_57(l_56[0], p_1658), p_1658)) == &l_41);
        for (p_1658->g_73 = (-30); (p_1658->g_73 != 11); p_1658->g_73 = safe_add_func_int16_t_s_s(p_1658->g_73, 3))
        { /* block id: 718 */
            uint32_t *****l_1449 = (void*)0;
            uint32_t ******l_1448 = &l_1449;
            int32_t l_1454[5] = {1L,1L,1L,1L,1L};
            int16_t ****l_1459 = &l_1457[4][0];
            int64_t *l_1463 = &p_1658->g_1464;
            int64_t *l_1465 = &p_1658->g_116;
            int32_t l_1466 = 2L;
            int8_t *l_1473[1];
            uint64_t l_1474[3];
            uint8_t *l_1487 = &p_1658->g_694[0][5][6];
            uint64_t *l_1488[1][8] = {{&p_1658->g_774,&l_1474[0],&p_1658->g_774,&p_1658->g_774,&l_1474[0],&p_1658->g_774,&p_1658->g_774,&l_1474[0]}};
            int32_t l_1498 = (-1L);
            int32_t l_1499 = 0x7023815EL;
            int i, j;
            for (i = 0; i < 1; i++)
                l_1473[i] = &p_1658->g_89[1];
            for (i = 0; i < 3; i++)
                l_1474[i] = 18446744073709551607UL;
            (*l_39) = (*l_35);
            l_1466 &= (((p_24 , ((*l_1465) &= (((*p_1658->g_1101) ^= ((*l_34) = (safe_sub_func_int64_t_s_s(p_24, (safe_rshift_func_uint16_t_u_s(((((((((*l_1463) |= (safe_mod_func_uint8_t_u_u(((safe_add_func_uint16_t_u_u(((safe_rshift_func_uint8_t_u_u(((void*)0 != l_1448), 2)) || ((*p_1658->g_979) ^= p_23)), (safe_div_func_int32_t_s_s((safe_sub_func_int32_t_s_s(p_23, (((0x9D71L < (l_1454[1] ^ (safe_rshift_func_int8_t_s_u(((((*l_1459) = l_1457[4][1]) != (void*)0) ^ 0xF7BDL), 7)))) , &l_1449) == l_1460[4][1]))), (*p_1658->g_255))))) > l_1454[1]), (*l_34)))) , (void*)0) != (void*)0) , p_1658->g_1154) , l_1454[2]) , p_1658->g_950) != p_23), p_26)))))) ^ p_23))) < p_1658->g_194[7][0]) <= (*p_1658->g_255));
            l_1499 &= (((*l_1463) = (safe_div_func_int32_t_s_s(((*l_34) = 0x1D673578L), (safe_lshift_func_uint16_t_u_s((safe_mod_func_int32_t_s_s((!((l_1466 = (l_1454[4] = (p_25 , p_26))) , l_1474[0])), (safe_lshift_func_int16_t_s_u((l_1498 = ((((~((safe_lshift_func_int16_t_s_u((safe_add_func_uint64_t_u_u((p_1658->g_774 = (((((p_1658->g_265 = (p_24 & (((*l_46) = (0xDB31F6C9D9B9F9C2L && p_1658->g_500)) & (safe_mul_func_int8_t_s_s((safe_lshift_func_int8_t_s_u(((safe_sub_func_uint16_t_u_u(p_1658->g_194[6][0], (((*l_1487) = p_23) ^ p_1658->g_367))) , (*p_1658->g_214)), FAKE_DIVERGE(p_1658->global_0_offset, get_global_id(0), 10))), p_24))))) <= 0x5E68309FB91CFA4CL) , &l_42) != l_56[0]) <= (-1L))), 0x636D4B1B695D0008L)), p_1658->g_500)) < l_1489)) == l_1490) , p_1658->g_1491[0][0][0]) == l_1494)), 14)))), 9))))) , (**p_1658->g_239));
        }
        if (p_24)
            continue;
        if (((((*p_1658->g_255) = (((*l_1503) = p_1658->g_1500) == ((*l_1511) = ((safe_add_func_int32_t_s_s(((void*)0 != p_1658->g_1506), (safe_sub_func_uint8_t_u_u(p_1658->g_295, l_1510)))) , &p_1658->g_1501[6][3])))) , (safe_rshift_func_int16_t_s_s((safe_sub_func_uint32_t_u_u(4294967292UL, ((l_1518[0][3][7] = p_1658->g_1517[2][0]) != (void*)0))), (*l_37)))) < (*l_36)))
        { /* block id: 743 */
            int32_t **l_1523 = &p_1658->g_793;
            int32_t l_1544 = (-8L);
            int8_t ****l_1545 = &l_1495;
            for (p_1658->g_145 = (-26); (p_1658->g_145 >= 21); p_1658->g_145++)
            { /* block id: 746 */
                int32_t ***l_1524 = &l_1523;
                (*l_1524) = l_1523;
            }
            if ((2UL <= (safe_div_func_uint16_t_u_u((safe_mul_func_uint16_t_u_u((safe_mod_func_uint32_t_u_u((p_24 <= ((*l_42) = ((4294967295UL >= ((p_25 & ((safe_div_func_uint32_t_u_u((safe_lshift_func_int16_t_s_u(((safe_add_func_int64_t_s_s((p_1658->g_194[7][0] , (safe_mod_func_uint32_t_u_u((safe_rshift_func_uint8_t_u_u((((safe_div_func_uint8_t_u_u((((+(((~(FAKE_DIVERGE(p_1658->local_2_offset, get_local_id(2), 10) != (p_24 | (*p_1658->g_206)))) >= p_25) && (*p_1658->g_255))) ^ p_1658->g_251) & l_1543), l_1544)) || p_26) | p_1658->g_771), FAKE_DIVERGE(p_1658->group_1_offset, get_group_id(1), 10))), (*p_1658->g_1101)))), 0x0D0D32B42BEDE7FBL)) ^ p_26), p_1658->g_329[1])), GROUP_DIVERGE(1, 1))) , (*l_42))) || (*l_35))) >= GROUP_DIVERGE(0, 1)))), p_24)), l_1544)), 65535UL))))
            { /* block id: 750 */
                (*l_40) = ((void*)0 != l_1545);
            }
            else
            { /* block id: 752 */
                uint8_t l_1554 = 1UL;
                int64_t *l_1561[4];
                int i;
                for (i = 0; i < 4; i++)
                    l_1561[i] = (void*)0;
                (*l_42) = (safe_sub_func_uint64_t_u_u((((FAKE_DIVERGE(p_1658->group_1_offset, get_group_id(1), 10) & ((safe_lshift_func_uint8_t_u_u(((((safe_add_func_uint8_t_u_u(p_1658->g_583, (safe_rshift_func_int8_t_s_u(l_1554, ((l_1554 <= (((((**l_1494) = (**l_1545)) != (void*)0) == p_26) , (((l_1555 == ((((*l_39) = ((safe_add_func_uint64_t_u_u((l_1544 <= (safe_mul_func_int16_t_s_s((((&p_1658->g_792 != &p_1658->g_792) , (void*)0) == (*p_1658->g_239)), 0x1717L))), 0xA9F2860CBDCF1BA7L)) , p_23)) , (*l_34)) , (void*)0)) >= 9UL) & 1L))) >= l_1560[3][0]))))) , p_1658->g_194[0][0]) , (void*)0) == l_1561[0]), p_25)) ^ p_23)) || p_23) | 0xAF8F132FB933962BL), l_1554));
            }
            return p_26;
        }
        else
        { /* block id: 758 */
            uint32_t **l_1589 = &p_1658->g_230;
            int32_t l_1598 = 0x5CF8A9D0L;
            int32_t *l_1599 = &p_1658->g_109;
            uint64_t *l_1623 = &p_1658->g_675;
            int64_t *l_1624 = (void*)0;
            int64_t *l_1625 = &p_1658->g_265;
            int64_t *l_1626 = (void*)0;
            int64_t *l_1627 = &p_1658->g_116;
            int64_t *l_1629[1][6] = {{(void*)0,&p_1658->g_1464,(void*)0,(void*)0,&p_1658->g_1464,(void*)0}};
            uint16_t *l_1630 = &p_1658->g_1210[1][5];
            int32_t l_1631 = 0L;
            int i, j;
            if (p_23)
                break;
            if (p_25)
                continue;
            for (p_1658->g_1464 = 1; (p_1658->g_1464 != (-19)); p_1658->g_1464--)
            { /* block id: 763 */
                int16_t ****l_1568 = &l_1457[4][1];
                int32_t l_1572 = 0x4C45AE46L;
                int32_t *l_1600 = &p_1658->g_2;
                (*l_42) |= (*p_1658->g_240);
                for (p_1658->g_116 = (-26); (p_1658->g_116 != 0); ++p_1658->g_116)
                { /* block id: 767 */
                    int64_t *l_1584 = &p_1658->g_1464;
                    int64_t l_1586[10] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
                    uint32_t **l_1588 = (void*)0;
                    int32_t l_1597 = 0L;
                    int i;
                    for (p_1658->g_582 = (-13); (p_1658->g_582 >= (-25)); --p_1658->g_582)
                    { /* block id: 770 */
                        uint64_t l_1569[8][5][6] = {{{0x4C8AD6EAE78E6C08L,6UL,0x9AE22B2B7925B291L,0xFEA5670D177D7B2EL,0x1BDC483031F0AE47L,0x967D57073B21EAABL},{0x4C8AD6EAE78E6C08L,6UL,0x9AE22B2B7925B291L,0xFEA5670D177D7B2EL,0x1BDC483031F0AE47L,0x967D57073B21EAABL},{0x4C8AD6EAE78E6C08L,6UL,0x9AE22B2B7925B291L,0xFEA5670D177D7B2EL,0x1BDC483031F0AE47L,0x967D57073B21EAABL},{0x4C8AD6EAE78E6C08L,6UL,0x9AE22B2B7925B291L,0xFEA5670D177D7B2EL,0x1BDC483031F0AE47L,0x967D57073B21EAABL},{0x4C8AD6EAE78E6C08L,6UL,0x9AE22B2B7925B291L,0xFEA5670D177D7B2EL,0x1BDC483031F0AE47L,0x967D57073B21EAABL}},{{0x4C8AD6EAE78E6C08L,6UL,0x9AE22B2B7925B291L,0xFEA5670D177D7B2EL,0x1BDC483031F0AE47L,0x967D57073B21EAABL},{0x4C8AD6EAE78E6C08L,6UL,0x9AE22B2B7925B291L,0xFEA5670D177D7B2EL,0x1BDC483031F0AE47L,0x967D57073B21EAABL},{0x4C8AD6EAE78E6C08L,6UL,0x9AE22B2B7925B291L,0xFEA5670D177D7B2EL,0x1BDC483031F0AE47L,0x967D57073B21EAABL},{0x4C8AD6EAE78E6C08L,6UL,0x9AE22B2B7925B291L,0xFEA5670D177D7B2EL,0x1BDC483031F0AE47L,0x967D57073B21EAABL},{0x4C8AD6EAE78E6C08L,6UL,0x9AE22B2B7925B291L,0xFEA5670D177D7B2EL,0x1BDC483031F0AE47L,0x967D57073B21EAABL}},{{0x4C8AD6EAE78E6C08L,6UL,0x9AE22B2B7925B291L,0xFEA5670D177D7B2EL,0x1BDC483031F0AE47L,0x967D57073B21EAABL},{0x4C8AD6EAE78E6C08L,6UL,0x9AE22B2B7925B291L,0xFEA5670D177D7B2EL,0x1BDC483031F0AE47L,0x967D57073B21EAABL},{0x4C8AD6EAE78E6C08L,6UL,0x9AE22B2B7925B291L,0xFEA5670D177D7B2EL,0x1BDC483031F0AE47L,0x967D57073B21EAABL},{0x4C8AD6EAE78E6C08L,6UL,0x9AE22B2B7925B291L,0xFEA5670D177D7B2EL,0x1BDC483031F0AE47L,0x967D57073B21EAABL},{0x4C8AD6EAE78E6C08L,6UL,0x9AE22B2B7925B291L,0xFEA5670D177D7B2EL,0x1BDC483031F0AE47L,0x967D57073B21EAABL}},{{0x4C8AD6EAE78E6C08L,6UL,0x9AE22B2B7925B291L,0xFEA5670D177D7B2EL,0x1BDC483031F0AE47L,0x967D57073B21EAABL},{0x4C8AD6EAE78E6C08L,6UL,0x9AE22B2B7925B291L,0xFEA5670D177D7B2EL,0x1BDC483031F0AE47L,0x967D57073B21EAABL},{0x4C8AD6EAE78E6C08L,6UL,0x9AE22B2B7925B291L,0xFEA5670D177D7B2EL,0x1BDC483031F0AE47L,0x967D57073B21EAABL},{0x4C8AD6EAE78E6C08L,6UL,0x9AE22B2B7925B291L,0xFEA5670D177D7B2EL,0x1BDC483031F0AE47L,0x967D57073B21EAABL},{0x4C8AD6EAE78E6C08L,6UL,0x9AE22B2B7925B291L,0xFEA5670D177D7B2EL,0x1BDC483031F0AE47L,0x967D57073B21EAABL}},{{0x4C8AD6EAE78E6C08L,6UL,0x9AE22B2B7925B291L,0xFEA5670D177D7B2EL,0x1BDC483031F0AE47L,0x967D57073B21EAABL},{0x4C8AD6EAE78E6C08L,6UL,0x9AE22B2B7925B291L,0xFEA5670D177D7B2EL,0x1BDC483031F0AE47L,0x967D57073B21EAABL},{0x4C8AD6EAE78E6C08L,6UL,0x9AE22B2B7925B291L,0xFEA5670D177D7B2EL,0x1BDC483031F0AE47L,0x967D57073B21EAABL},{0x4C8AD6EAE78E6C08L,6UL,0x9AE22B2B7925B291L,0xFEA5670D177D7B2EL,0x1BDC483031F0AE47L,0x967D57073B21EAABL},{0x4C8AD6EAE78E6C08L,6UL,0x9AE22B2B7925B291L,0xFEA5670D177D7B2EL,0x1BDC483031F0AE47L,0x967D57073B21EAABL}},{{0x4C8AD6EAE78E6C08L,6UL,0x9AE22B2B7925B291L,0xFEA5670D177D7B2EL,0x1BDC483031F0AE47L,0x967D57073B21EAABL},{0x4C8AD6EAE78E6C08L,6UL,0x9AE22B2B7925B291L,0xFEA5670D177D7B2EL,0x1BDC483031F0AE47L,0x967D57073B21EAABL},{0x4C8AD6EAE78E6C08L,6UL,0x9AE22B2B7925B291L,0xFEA5670D177D7B2EL,0x1BDC483031F0AE47L,0x967D57073B21EAABL},{0x4C8AD6EAE78E6C08L,6UL,0x9AE22B2B7925B291L,0xFEA5670D177D7B2EL,0x1BDC483031F0AE47L,0x967D57073B21EAABL},{0x4C8AD6EAE78E6C08L,6UL,0x9AE22B2B7925B291L,0xFEA5670D177D7B2EL,0x1BDC483031F0AE47L,0x967D57073B21EAABL}},{{0x4C8AD6EAE78E6C08L,6UL,0x9AE22B2B7925B291L,0xFEA5670D177D7B2EL,0x1BDC483031F0AE47L,0x967D57073B21EAABL},{0x4C8AD6EAE78E6C08L,6UL,0x9AE22B2B7925B291L,0xFEA5670D177D7B2EL,0x1BDC483031F0AE47L,0x967D57073B21EAABL},{0x4C8AD6EAE78E6C08L,6UL,0x9AE22B2B7925B291L,0xFEA5670D177D7B2EL,0x1BDC483031F0AE47L,0x967D57073B21EAABL},{0x4C8AD6EAE78E6C08L,6UL,0x9AE22B2B7925B291L,0xFEA5670D177D7B2EL,0x1BDC483031F0AE47L,0x967D57073B21EAABL},{0x4C8AD6EAE78E6C08L,6UL,0x9AE22B2B7925B291L,0xFEA5670D177D7B2EL,0x1BDC483031F0AE47L,0x967D57073B21EAABL}},{{0x4C8AD6EAE78E6C08L,6UL,0x9AE22B2B7925B291L,0xFEA5670D177D7B2EL,0x1BDC483031F0AE47L,0x967D57073B21EAABL},{0x4C8AD6EAE78E6C08L,6UL,0x9AE22B2B7925B291L,0xFEA5670D177D7B2EL,0x1BDC483031F0AE47L,0x967D57073B21EAABL},{0x4C8AD6EAE78E6C08L,6UL,0x9AE22B2B7925B291L,0xFEA5670D177D7B2EL,0x1BDC483031F0AE47L,0x967D57073B21EAABL},{0x4C8AD6EAE78E6C08L,6UL,0x9AE22B2B7925B291L,0xFEA5670D177D7B2EL,0x1BDC483031F0AE47L,0x967D57073B21EAABL},{0x4C8AD6EAE78E6C08L,6UL,0x9AE22B2B7925B291L,0xFEA5670D177D7B2EL,0x1BDC483031F0AE47L,0x967D57073B21EAABL}}};
                        int i, j, k;
                        l_1569[3][2][1] = (248UL ^ (l_1568 == &l_1457[4][1]));
                        if (l_1570)
                            break;
                    }
                    for (p_1658->g_1182 = 2; (p_1658->g_1182 >= 0); p_1658->g_1182 -= 1)
                    { /* block id: 776 */
                        uint32_t l_1573 = 7UL;
                        ++l_1573;
                    }
                }
            }
            (*l_46) &= (safe_rshift_func_uint16_t_u_s(((FAKE_DIVERGE(p_1658->group_0_offset, get_group_id(0), 10) ^ ((safe_sub_func_int16_t_s_s((safe_sub_func_int64_t_s_s(((safe_rshift_func_int8_t_s_u(((65535UL && ((p_24 = p_25) > p_26)) <= ((*l_38) < (safe_sub_func_int16_t_s_s((~(safe_sub_func_uint8_t_u_u((((safe_div_func_int16_t_s_s((safe_div_func_uint8_t_u_u((((((*l_1630) = (((((((p_25 < ((-6L) != (safe_add_func_int16_t_s_s((safe_sub_func_uint32_t_u_u((GROUP_DIVERGE(2, 1) , ((*p_1658->g_214) == (safe_rshift_func_int16_t_s_s(((l_1598 &= (l_1623 == (((*l_1627) = ((*l_1625) |= ((*l_1599) ^= (-1L)))) , l_1628))) , (-1L)), 11)))), 4294967291UL)), 0x0FC7L)))) & 0x045CF644L) <= p_25) | 0x34477F08A637C1BFL) , p_26) < 0xE8E5L) < 0x0FL)) < p_26) && p_23) != l_1631), p_1658->g_688[2])), p_25)) < 1UL) >= FAKE_DIVERGE(p_1658->local_1_offset, get_local_id(1), 10)), p_1658->g_295))), 0x58FCL)))), (*l_35))) ^ p_23), FAKE_DIVERGE(p_1658->global_2_offset, get_global_id(2), 10))), p_26)) < p_25)) <= (*p_1658->g_1101)), p_26));
        }
    }
    for (l_1490 = 0; (l_1490 <= 8); l_1490 += 1)
    { /* block id: 807 */
        int32_t *l_1632 = &l_1489;
        int32_t **l_1633 = (void*)0;
        int32_t **l_1634 = &l_34;
        (*l_1634) = l_1632;
    }
    p_1658->g_1635++;
    return p_23;
}


/* ------------------------------------------ */
/* 
 * reads : p_1658->g_950 p_1658->g_293 p_1658->g_671 p_1658->g_145 p_1658->g_1101 p_1658->g_771 p_1658->g_694 p_1658->g_28 p_1658->g_48 p_1658->g_240 p_1658->g_112 p_1658->g_214 p_1658->g_44 p_1658->g_89 p_1658->g_250 p_1658->g_329 p_1658->g_255 p_1658->g_251 p_1658->g_109 p_1658->g_511 p_1658->g_979 p_1658->g_73 p_1658->g_1154
 * writes: p_1658->g_240 p_1658->g_950 p_1658->g_293 p_1658->g_671 p_1658->g_145 p_1658->g_771 p_1658->g_73 p_1658->g_48 p_1658->g_112 p_1658->g_89 p_1658->g_694 p_1658->g_251 p_1658->g_194 p_1658->g_500 p_1658->g_1154 p_1658->g_109
 */
int32_t * func_53(int32_t * p_54, int32_t * p_55, struct S0 * p_1658)
{ /* block id: 467 */
    uint32_t **l_1029[6][9] = {{&p_1658->g_230,(void*)0,(void*)0,&p_1658->g_230,(void*)0,(void*)0,&p_1658->g_230,&p_1658->g_230,&p_1658->g_230},{&p_1658->g_230,(void*)0,(void*)0,&p_1658->g_230,(void*)0,(void*)0,&p_1658->g_230,&p_1658->g_230,&p_1658->g_230},{&p_1658->g_230,(void*)0,(void*)0,&p_1658->g_230,(void*)0,(void*)0,&p_1658->g_230,&p_1658->g_230,&p_1658->g_230},{&p_1658->g_230,(void*)0,(void*)0,&p_1658->g_230,(void*)0,(void*)0,&p_1658->g_230,&p_1658->g_230,&p_1658->g_230},{&p_1658->g_230,(void*)0,(void*)0,&p_1658->g_230,(void*)0,(void*)0,&p_1658->g_230,&p_1658->g_230,&p_1658->g_230},{&p_1658->g_230,(void*)0,(void*)0,&p_1658->g_230,(void*)0,(void*)0,&p_1658->g_230,&p_1658->g_230,&p_1658->g_230}};
    uint32_t l_1030[10] = {0UL,0xEFD3660FL,0UL,0UL,0xEFD3660FL,0UL,0UL,0xEFD3660FL,0UL,0UL};
    int32_t **l_1032 = &p_1658->g_240;
    int32_t l_1054 = (-4L);
    int64_t l_1059 = 7L;
    uint16_t *l_1099 = &p_1658->g_48;
    int16_t *l_1113 = &p_1658->g_329[1];
    int32_t l_1185 = (-5L);
    uint32_t l_1186[9];
    uint64_t l_1199 = 0UL;
    int32_t l_1209 = 0x7174CE18L;
    int8_t *l_1221[10];
    uint64_t *l_1291 = &p_1658->g_675;
    uint64_t *l_1292 = &p_1658->g_675;
    int32_t l_1333 = 0x6DAF30B3L;
    int32_t l_1334 = 0x6E554AABL;
    int32_t l_1335 = 1L;
    int32_t l_1339 = (-1L);
    int32_t l_1340 = 0x08A98D21L;
    int32_t l_1341 = 0L;
    int32_t l_1343 = 1L;
    int32_t l_1344 = 0L;
    int32_t l_1345 = 4L;
    int32_t l_1346 = 1L;
    int32_t l_1347 = 0x09F72535L;
    int32_t l_1348[7][8][4] = {{{0x6A4F01ABL,0L,5L,0x482087CDL},{0x6A4F01ABL,0L,5L,0x482087CDL},{0x6A4F01ABL,0L,5L,0x482087CDL},{0x6A4F01ABL,0L,5L,0x482087CDL},{0x6A4F01ABL,0L,5L,0x482087CDL},{0x6A4F01ABL,0L,5L,0x482087CDL},{0x6A4F01ABL,0L,5L,0x482087CDL},{0x6A4F01ABL,0L,5L,0x482087CDL}},{{0x6A4F01ABL,0L,5L,0x482087CDL},{0x6A4F01ABL,0L,5L,0x482087CDL},{0x6A4F01ABL,0L,5L,0x482087CDL},{0x6A4F01ABL,0L,5L,0x482087CDL},{0x6A4F01ABL,0L,5L,0x482087CDL},{0x6A4F01ABL,0L,5L,0x482087CDL},{0x6A4F01ABL,0L,5L,0x482087CDL},{0x6A4F01ABL,0L,5L,0x482087CDL}},{{0x6A4F01ABL,0L,5L,0x482087CDL},{0x6A4F01ABL,0L,5L,0x482087CDL},{0x6A4F01ABL,0L,5L,0x482087CDL},{0x6A4F01ABL,0L,5L,0x482087CDL},{0x6A4F01ABL,0L,5L,0x482087CDL},{0x6A4F01ABL,0L,5L,0x482087CDL},{0x6A4F01ABL,0L,5L,0x482087CDL},{0x6A4F01ABL,0L,5L,0x482087CDL}},{{0x6A4F01ABL,0L,5L,0x482087CDL},{0x6A4F01ABL,0L,5L,0x482087CDL},{0x6A4F01ABL,0L,5L,0x482087CDL},{0x6A4F01ABL,0L,5L,0x482087CDL},{0x6A4F01ABL,0L,5L,0x482087CDL},{0x6A4F01ABL,0L,5L,0x482087CDL},{0x6A4F01ABL,0L,5L,0x482087CDL},{0x6A4F01ABL,0L,5L,0x482087CDL}},{{0x6A4F01ABL,0L,5L,0x482087CDL},{0x6A4F01ABL,0L,5L,0x482087CDL},{0x6A4F01ABL,0L,5L,0x482087CDL},{0x6A4F01ABL,0L,5L,0x482087CDL},{0x6A4F01ABL,0L,5L,0x482087CDL},{0x6A4F01ABL,0L,5L,0x482087CDL},{0x6A4F01ABL,0L,5L,0x482087CDL},{0x6A4F01ABL,0L,5L,0x482087CDL}},{{0x6A4F01ABL,0L,5L,0x482087CDL},{0x6A4F01ABL,0L,5L,0x482087CDL},{0x6A4F01ABL,0L,5L,0x482087CDL},{0x6A4F01ABL,0L,5L,0x482087CDL},{0x6A4F01ABL,0L,5L,0x482087CDL},{0x6A4F01ABL,0L,5L,0x482087CDL},{0x6A4F01ABL,0L,5L,0x482087CDL},{0x6A4F01ABL,0L,5L,0x482087CDL}},{{0x6A4F01ABL,0L,5L,0x482087CDL},{0x6A4F01ABL,0L,5L,0x482087CDL},{0x6A4F01ABL,0L,5L,0x482087CDL},{0x6A4F01ABL,0L,5L,0x482087CDL},{0x6A4F01ABL,0L,5L,0x482087CDL},{0x6A4F01ABL,0L,5L,0x482087CDL},{0x6A4F01ABL,0L,5L,0x482087CDL},{0x6A4F01ABL,0L,5L,0x482087CDL}}};
    int32_t **l_1376 = &p_1658->g_793;
    int i, j, k;
    for (i = 0; i < 9; i++)
        l_1186[i] = 0x3667C97AL;
    for (i = 0; i < 10; i++)
        l_1221[i] = &p_1658->g_89[5];
lbl_1064:
    (*l_1032) = p_54;
    for (p_1658->g_950 = 23; (p_1658->g_950 >= 8); p_1658->g_950--)
    { /* block id: 471 */
        uint32_t l_1043 = 0x6C25C0B5L;
        int32_t l_1048[6] = {(-7L),(-7L),(-7L),(-7L),(-7L),(-7L)};
        uint32_t *****l_1097 = (void*)0;
        int16_t *l_1114 = (void*)0;
        int8_t *l_1127 = &p_1658->g_89[6];
        uint8_t *l_1134 = &p_1658->g_694[0][3][5];
        uint8_t *l_1151 = &p_1658->g_194[1][0];
        uint64_t *l_1152 = (void*)0;
        int8_t *l_1153[8] = {&p_1658->g_688[0],&p_1658->g_173,&p_1658->g_688[0],&p_1658->g_688[0],&p_1658->g_173,&p_1658->g_688[0],&p_1658->g_688[0],&p_1658->g_173};
        int i;
        for (p_1658->g_293 = 0; (p_1658->g_293 <= 1); p_1658->g_293 += 1)
        { /* block id: 474 */
            uint8_t l_1060 = 0x90L;
            int32_t *l_1063 = &p_1658->g_73;
            int8_t *l_1093[7][9] = {{&p_1658->g_511,&p_1658->g_89[0],&p_1658->g_511,&p_1658->g_582,&p_1658->g_511,&p_1658->g_582,(void*)0,&p_1658->g_173,(void*)0},{&p_1658->g_511,&p_1658->g_89[0],&p_1658->g_511,&p_1658->g_582,&p_1658->g_511,&p_1658->g_582,(void*)0,&p_1658->g_173,(void*)0},{&p_1658->g_511,&p_1658->g_89[0],&p_1658->g_511,&p_1658->g_582,&p_1658->g_511,&p_1658->g_582,(void*)0,&p_1658->g_173,(void*)0},{&p_1658->g_511,&p_1658->g_89[0],&p_1658->g_511,&p_1658->g_582,&p_1658->g_511,&p_1658->g_582,(void*)0,&p_1658->g_173,(void*)0},{&p_1658->g_511,&p_1658->g_89[0],&p_1658->g_511,&p_1658->g_582,&p_1658->g_511,&p_1658->g_582,(void*)0,&p_1658->g_173,(void*)0},{&p_1658->g_511,&p_1658->g_89[0],&p_1658->g_511,&p_1658->g_582,&p_1658->g_511,&p_1658->g_582,(void*)0,&p_1658->g_173,(void*)0},{&p_1658->g_511,&p_1658->g_89[0],&p_1658->g_511,&p_1658->g_582,&p_1658->g_511,&p_1658->g_582,(void*)0,&p_1658->g_173,(void*)0}};
            int i, j;
            for (p_1658->g_671 = 0; (p_1658->g_671 <= 8); p_1658->g_671 += 1)
            { /* block id: 477 */
                int16_t *l_1046 = &p_1658->g_145;
                uint8_t *l_1047 = &p_1658->g_694[p_1658->g_293][(p_1658->g_293 + 3)][(p_1658->g_293 + 6)];
                int32_t l_1055 = (-1L);
                int32_t l_1056 = 3L;
                int32_t l_1057 = 0x5B9D9C9DL;
                int32_t l_1058 = 0L;
                int i, j, k;
                (1 + 1);
            }
            for (l_1043 = 0; (l_1043 <= 9); l_1043 += 1)
            { /* block id: 519 */
                int i;
                for (p_1658->g_145 = 0; (p_1658->g_145 <= 1); p_1658->g_145 += 1)
                { /* block id: 522 */
                    int32_t *l_1106 = &p_1658->g_109;
                    for (l_1059 = 7; (l_1059 >= 0); l_1059 -= 1)
                    { /* block id: 525 */
                        return p_1658->g_1101;
                    }
                    for (p_1658->g_771 = 0; (p_1658->g_771 <= 1); p_1658->g_771 += 1)
                    { /* block id: 530 */
                        int64_t *l_1104 = &l_1059;
                        uint64_t *l_1105[1];
                        int i, j, k;
                        for (i = 0; i < 1; i++)
                            l_1105[i] = &p_1658->g_774;
                        l_1048[(p_1658->g_293 + 2)] |= (safe_add_func_uint64_t_u_u(l_1030[l_1043], (((*l_1063) = (((*l_1104) = p_1658->g_694[p_1658->g_293][(p_1658->g_145 + 3)][(p_1658->g_771 + 6)]) < p_1658->g_28[(p_1658->g_771 + 2)])) >= 0x67A8CC4BA17E96ECL)));
                    }
                    return l_1106;
                }
                if (l_1043)
                    goto lbl_1064;
                (*l_1063) = (((**l_1032) |= (--(*l_1099))) > (safe_rshift_func_uint8_t_u_u(((void*)0 != &l_1030[l_1043]), 1)));
            }
        }
        (*p_1658->g_1101) &= (-10L);
        if (p_1658->g_950)
            goto lbl_1064;
        p_1658->g_1154 |= (safe_sub_func_int32_t_s_s(((*p_1658->g_1101) = (+((l_1113 = &p_1658->g_329[1]) == (l_1114 = l_1099)))), (p_1658->g_73 |= ((*p_1658->g_979) = (safe_lshift_func_int8_t_s_s(((**l_1032) = (safe_div_func_uint64_t_u_u((safe_mod_func_uint64_t_u_u((safe_sub_func_int64_t_s_s((((*l_1127) = (safe_sub_func_int64_t_s_s((+l_1048[2]), (safe_add_func_uint32_t_u_u(FAKE_DIVERGE(p_1658->group_1_offset, get_group_id(1), 10), GROUP_DIVERGE(2, 1)))))) , (safe_mul_func_uint8_t_u_u(((((safe_mod_func_int16_t_s_s(((safe_sub_func_uint64_t_u_u((((*l_1134)++) > ((*l_1151) = ((*p_1658->g_214) && ((safe_add_func_int32_t_s_s((safe_add_func_uint8_t_u_u((**l_1032), (safe_mod_func_uint32_t_u_u(((*p_1658->g_255) &= (safe_lshift_func_uint16_t_u_s((18446744073709551613UL && ((l_1048[3] != (++(*l_1099))) <= (safe_lshift_func_int8_t_s_s((safe_add_func_uint16_t_u_u(((p_1658->g_89[2] , (7UL > l_1048[3])) != p_1658->g_250), p_1658->g_329[8])), 3)))), 13))), (**l_1032))))), (*p_54))) <= (**l_1032))))), (**l_1032))) || l_1043), (**l_1032))) & 0x3DF7L) , l_1152) == l_1152), 3UL))), 0xA627569C5935151EL)), p_1658->g_109)), p_1658->g_511))), l_1048[5]))))));
    }
    for (p_1658->g_145 = 0; (p_1658->g_145 <= 8); p_1658->g_145 += 1)
    { /* block id: 560 */
        int64_t l_1181 = 0x3FB56708684442F9L;
        int8_t *l_1183 = &p_1658->g_89[5];
        uint16_t *l_1184 = &p_1658->g_671;
        int32_t l_1207 = (-2L);
        int32_t l_1238 = 0x282E868DL;
        int32_t l_1242[4] = {0L,0L,0L,0L};
        uint64_t l_1287 = 0x82D52566CC1FA153L;
        int32_t l_1309 = 1L;
        uint8_t l_1349 = 255UL;
        uint32_t l_1352 = 1UL;
        int32_t **l_1375 = (void*)0;
        uint32_t **l_1406 = &p_1658->g_230;
        int i;
        (1 + 1);
    }
    return (*l_1032);
}


/* ------------------------------------------ */
/* 
 * reads : p_1658->g_28 p_1658->g_73 p_1658->g_89 p_1658->g_2 p_1658->g_109 p_1658->g_44 p_1658->g_112 p_1658->g_116 p_1658->g_140 p_1658->g_144 p_1658->g_145 p_1658->g_48 p_1658->g_173 p_1658->g_194 p_1658->g_141 p_1658->g_206 p_1658->g_214 p_1658->g_207 p_1658->g_239 p_1658->g_251 p_1658->g_258 p_1658->g_267 p_1658->g_240 p_1658->g_229 p_1658->g_230 p_1658->g_675 p_1658->g_500 p_1658->g_265 p_1658->g_685 p_1658->g_367 p_1658->g_329 p_1658->g_771 p_1658->g_774 p_1658->g_792 p_1658->g_794 p_1658->g_688 p_1658->g_497 p_1658->g_255 p_1658->g_694 p_1658->g_295 p_1658->g_293 p_1658->g_583 p_1658->g_671 p_1658->g_979 p_1658->g_511 p_1658->g_582 p_1658->g_424 p_1658->g_1007
 * writes: p_1658->g_73 p_1658->g_89 p_1658->g_109 p_1658->g_48 p_1658->g_112 p_1658->g_194 p_1658->g_28 p_1658->g_145 p_1658->g_228 p_1658->g_240 p_1658->g_251 p_1658->g_255 p_1658->g_258 p_1658->g_267 p_1658->g_116 p_1658->g_173 p_1658->g_675 p_1658->g_500 p_1658->g_265 p_1658->g_771 p_1658->g_671 p_1658->g_794 p_1658->g_329 p_1658->g_295 p_1658->g_583 p_1658->g_582 p_1658->g_688 p_1658->g_774 p_1658->g_685
 */
int32_t * func_57(int32_t ** p_58, struct S0 * p_1658)
{ /* block id: 18 */
    uint8_t l_59 = 0x6CL;
    uint32_t *l_80 = (void*)0;
    uint32_t **l_79[6][8][4] = {{{&l_80,&l_80,&l_80,&l_80},{&l_80,&l_80,&l_80,&l_80},{&l_80,&l_80,&l_80,&l_80},{&l_80,&l_80,&l_80,&l_80},{&l_80,&l_80,&l_80,&l_80},{&l_80,&l_80,&l_80,&l_80},{&l_80,&l_80,&l_80,&l_80},{&l_80,&l_80,&l_80,&l_80}},{{&l_80,&l_80,&l_80,&l_80},{&l_80,&l_80,&l_80,&l_80},{&l_80,&l_80,&l_80,&l_80},{&l_80,&l_80,&l_80,&l_80},{&l_80,&l_80,&l_80,&l_80},{&l_80,&l_80,&l_80,&l_80},{&l_80,&l_80,&l_80,&l_80},{&l_80,&l_80,&l_80,&l_80}},{{&l_80,&l_80,&l_80,&l_80},{&l_80,&l_80,&l_80,&l_80},{&l_80,&l_80,&l_80,&l_80},{&l_80,&l_80,&l_80,&l_80},{&l_80,&l_80,&l_80,&l_80},{&l_80,&l_80,&l_80,&l_80},{&l_80,&l_80,&l_80,&l_80},{&l_80,&l_80,&l_80,&l_80}},{{&l_80,&l_80,&l_80,&l_80},{&l_80,&l_80,&l_80,&l_80},{&l_80,&l_80,&l_80,&l_80},{&l_80,&l_80,&l_80,&l_80},{&l_80,&l_80,&l_80,&l_80},{&l_80,&l_80,&l_80,&l_80},{&l_80,&l_80,&l_80,&l_80},{&l_80,&l_80,&l_80,&l_80}},{{&l_80,&l_80,&l_80,&l_80},{&l_80,&l_80,&l_80,&l_80},{&l_80,&l_80,&l_80,&l_80},{&l_80,&l_80,&l_80,&l_80},{&l_80,&l_80,&l_80,&l_80},{&l_80,&l_80,&l_80,&l_80},{&l_80,&l_80,&l_80,&l_80},{&l_80,&l_80,&l_80,&l_80}},{{&l_80,&l_80,&l_80,&l_80},{&l_80,&l_80,&l_80,&l_80},{&l_80,&l_80,&l_80,&l_80},{&l_80,&l_80,&l_80,&l_80},{&l_80,&l_80,&l_80,&l_80},{&l_80,&l_80,&l_80,&l_80},{&l_80,&l_80,&l_80,&l_80},{&l_80,&l_80,&l_80,&l_80}}};
    uint8_t l_856[2];
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_856[i] = 0xC3L;
    if (l_59)
    { /* block id: 19 */
        uint32_t *l_76 = &p_1658->g_28[5];
        uint32_t **l_75 = &l_76;
        uint32_t **l_78 = &l_76;
        uint32_t ***l_77[3][8][1];
        int32_t *l_1028 = &p_1658->g_109;
        int i, j, k;
        for (i = 0; i < 3; i++)
        {
            for (j = 0; j < 8; j++)
            {
                for (k = 0; k < 1; k++)
                    l_77[i][j][k] = &l_78;
            }
        }
        l_79[3][4][0] = (p_1658->g_28[5] , func_60((func_62(l_59, (*p_58), func_66((l_79[3][4][0] = (l_75 = func_69(l_59, p_1658))), (&p_1658->g_28[3] != &p_1658->g_28[5]), p_1658), p_1658) | l_856[1]), p_1658));
        (*l_1028) = ((*p_1658->g_979) || (*p_1658->g_255));
    }
    else
    { /* block id: 462 */
        for (p_1658->g_685 = 0; p_1658->g_685 < 5; p_1658->g_685 += 1)
        {
            p_1658->g_688[p_1658->g_685] = 0x05L;
        }
        (*p_1658->g_240) &= 0L;
    }
    return l_80;
}


/* ------------------------------------------ */
/* 
 * reads : p_1658->g_251 p_1658->g_173 p_1658->g_109 p_1658->g_194 p_1658->g_73 p_1658->g_239 p_1658->g_675 p_1658->g_295 p_1658->g_258 p_1658->g_293 p_1658->g_583 p_1658->g_671 p_1658->g_979 p_1658->g_28 p_1658->g_511 p_1658->g_582 p_1658->g_424 p_1658->g_1007 p_1658->g_685
 * writes: p_1658->g_251 p_1658->g_675 p_1658->g_73 p_1658->g_173 p_1658->g_771 p_1658->g_116 p_1658->g_794 p_1658->g_109 p_1658->g_240 p_1658->g_329 p_1658->g_295 p_1658->g_583 p_1658->g_671 p_1658->g_500 p_1658->g_582 p_1658->g_194 p_1658->g_688 p_1658->g_774
 */
uint32_t ** func_60(uint64_t  p_61, struct S0 * p_1658)
{ /* block id: 367 */
    uint32_t **l_858 = &p_1658->g_230;
    int32_t l_886 = 4L;
    int64_t l_951 = 1L;
    int32_t l_974 = 0L;
    int32_t l_975[4] = {0x7526B5D7L,0x7526B5D7L,0x7526B5D7L,0x7526B5D7L};
    uint32_t l_976 = 0x8DC7DA88L;
    int8_t l_983[6];
    uint32_t l_984[8][10][3] = {{{4UL,0x58BA651EL,0x0D1323FFL},{4UL,0x58BA651EL,0x0D1323FFL},{4UL,0x58BA651EL,0x0D1323FFL},{4UL,0x58BA651EL,0x0D1323FFL},{4UL,0x58BA651EL,0x0D1323FFL},{4UL,0x58BA651EL,0x0D1323FFL},{4UL,0x58BA651EL,0x0D1323FFL},{4UL,0x58BA651EL,0x0D1323FFL},{4UL,0x58BA651EL,0x0D1323FFL},{4UL,0x58BA651EL,0x0D1323FFL}},{{4UL,0x58BA651EL,0x0D1323FFL},{4UL,0x58BA651EL,0x0D1323FFL},{4UL,0x58BA651EL,0x0D1323FFL},{4UL,0x58BA651EL,0x0D1323FFL},{4UL,0x58BA651EL,0x0D1323FFL},{4UL,0x58BA651EL,0x0D1323FFL},{4UL,0x58BA651EL,0x0D1323FFL},{4UL,0x58BA651EL,0x0D1323FFL},{4UL,0x58BA651EL,0x0D1323FFL},{4UL,0x58BA651EL,0x0D1323FFL}},{{4UL,0x58BA651EL,0x0D1323FFL},{4UL,0x58BA651EL,0x0D1323FFL},{4UL,0x58BA651EL,0x0D1323FFL},{4UL,0x58BA651EL,0x0D1323FFL},{4UL,0x58BA651EL,0x0D1323FFL},{4UL,0x58BA651EL,0x0D1323FFL},{4UL,0x58BA651EL,0x0D1323FFL},{4UL,0x58BA651EL,0x0D1323FFL},{4UL,0x58BA651EL,0x0D1323FFL},{4UL,0x58BA651EL,0x0D1323FFL}},{{4UL,0x58BA651EL,0x0D1323FFL},{4UL,0x58BA651EL,0x0D1323FFL},{4UL,0x58BA651EL,0x0D1323FFL},{4UL,0x58BA651EL,0x0D1323FFL},{4UL,0x58BA651EL,0x0D1323FFL},{4UL,0x58BA651EL,0x0D1323FFL},{4UL,0x58BA651EL,0x0D1323FFL},{4UL,0x58BA651EL,0x0D1323FFL},{4UL,0x58BA651EL,0x0D1323FFL},{4UL,0x58BA651EL,0x0D1323FFL}},{{4UL,0x58BA651EL,0x0D1323FFL},{4UL,0x58BA651EL,0x0D1323FFL},{4UL,0x58BA651EL,0x0D1323FFL},{4UL,0x58BA651EL,0x0D1323FFL},{4UL,0x58BA651EL,0x0D1323FFL},{4UL,0x58BA651EL,0x0D1323FFL},{4UL,0x58BA651EL,0x0D1323FFL},{4UL,0x58BA651EL,0x0D1323FFL},{4UL,0x58BA651EL,0x0D1323FFL},{4UL,0x58BA651EL,0x0D1323FFL}},{{4UL,0x58BA651EL,0x0D1323FFL},{4UL,0x58BA651EL,0x0D1323FFL},{4UL,0x58BA651EL,0x0D1323FFL},{4UL,0x58BA651EL,0x0D1323FFL},{4UL,0x58BA651EL,0x0D1323FFL},{4UL,0x58BA651EL,0x0D1323FFL},{4UL,0x58BA651EL,0x0D1323FFL},{4UL,0x58BA651EL,0x0D1323FFL},{4UL,0x58BA651EL,0x0D1323FFL},{4UL,0x58BA651EL,0x0D1323FFL}},{{4UL,0x58BA651EL,0x0D1323FFL},{4UL,0x58BA651EL,0x0D1323FFL},{4UL,0x58BA651EL,0x0D1323FFL},{4UL,0x58BA651EL,0x0D1323FFL},{4UL,0x58BA651EL,0x0D1323FFL},{4UL,0x58BA651EL,0x0D1323FFL},{4UL,0x58BA651EL,0x0D1323FFL},{4UL,0x58BA651EL,0x0D1323FFL},{4UL,0x58BA651EL,0x0D1323FFL},{4UL,0x58BA651EL,0x0D1323FFL}},{{4UL,0x58BA651EL,0x0D1323FFL},{4UL,0x58BA651EL,0x0D1323FFL},{4UL,0x58BA651EL,0x0D1323FFL},{4UL,0x58BA651EL,0x0D1323FFL},{4UL,0x58BA651EL,0x0D1323FFL},{4UL,0x58BA651EL,0x0D1323FFL},{4UL,0x58BA651EL,0x0D1323FFL},{4UL,0x58BA651EL,0x0D1323FFL},{4UL,0x58BA651EL,0x0D1323FFL},{4UL,0x58BA651EL,0x0D1323FFL}}};
    uint64_t *l_1024 = &p_1658->g_675;
    uint64_t *l_1025 = (void*)0;
    uint64_t *l_1026 = &p_1658->g_774;
    int32_t *l_1027 = &l_886;
    int i, j, k;
    for (i = 0; i < 6; i++)
        l_983[i] = 0x68L;
    for (p_1658->g_251 = 0; (p_1658->g_251 <= 5); p_1658->g_251 += 1)
    { /* block id: 370 */
        uint32_t ****l_870 = (void*)0;
        uint32_t *****l_869 = &l_870;
        int32_t l_877[9][8] = {{(-1L),5L,0x6B8CF30CL,0x4ADD237FL,5L,0x4ADD237FL,0x6B8CF30CL,5L},{(-1L),5L,0x6B8CF30CL,0x4ADD237FL,5L,0x4ADD237FL,0x6B8CF30CL,5L},{(-1L),5L,0x6B8CF30CL,0x4ADD237FL,5L,0x4ADD237FL,0x6B8CF30CL,5L},{(-1L),5L,0x6B8CF30CL,0x4ADD237FL,5L,0x4ADD237FL,0x6B8CF30CL,5L},{(-1L),5L,0x6B8CF30CL,0x4ADD237FL,5L,0x4ADD237FL,0x6B8CF30CL,5L},{(-1L),5L,0x6B8CF30CL,0x4ADD237FL,5L,0x4ADD237FL,0x6B8CF30CL,5L},{(-1L),5L,0x6B8CF30CL,0x4ADD237FL,5L,0x4ADD237FL,0x6B8CF30CL,5L},{(-1L),5L,0x6B8CF30CL,0x4ADD237FL,5L,0x4ADD237FL,0x6B8CF30CL,5L},{(-1L),5L,0x6B8CF30CL,0x4ADD237FL,5L,0x4ADD237FL,0x6B8CF30CL,5L}};
        int64_t *l_887 = &p_1658->g_116;
        int16_t **l_899 = &p_1658->g_144[2];
        int16_t ***l_898 = &l_899;
        int32_t *l_980 = &l_886;
        int32_t *l_981 = (void*)0;
        int32_t *l_982[1];
        int16_t l_1009 = (-6L);
        int i, j;
        for (i = 0; i < 1; i++)
            l_982[i] = &l_975[1];
        for (p_1658->g_675 = 0; (p_1658->g_675 <= 8); p_1658->g_675 += 1)
        { /* block id: 373 */
            int32_t *l_857 = &p_1658->g_73;
            uint32_t *****l_868 = (void*)0;
            uint8_t *l_878 = (void*)0;
            uint8_t *l_879 = &p_1658->g_295;
            uint8_t *l_888 = (void*)0;
            uint8_t *l_889 = (void*)0;
            int32_t **l_890 = &l_857;
            int8_t *l_897 = &p_1658->g_89[3];
            int8_t **l_896 = &l_897;
            uint64_t *l_919 = &p_1658->g_774;
            uint32_t l_927 = 0x33F6AB06L;
            int16_t **l_943 = &p_1658->g_144[2];
            uint32_t l_967 = 0x6C99318BL;
            uint8_t l_969 = 255UL;
            int32_t l_973[4];
            int i;
            for (i = 0; i < 4; i++)
                l_973[i] = 0L;
            (*l_857) = 1L;
            for (p_1658->g_173 = 5; (p_1658->g_173 >= 0); p_1658->g_173 -= 1)
            { /* block id: 377 */
                int32_t **l_859[4][7] = {{&p_1658->g_240,&p_1658->g_240,&l_857,&p_1658->g_240,&p_1658->g_240,&p_1658->g_240,&p_1658->g_240},{&p_1658->g_240,&p_1658->g_240,&l_857,&p_1658->g_240,&p_1658->g_240,&p_1658->g_240,&p_1658->g_240},{&p_1658->g_240,&p_1658->g_240,&l_857,&p_1658->g_240,&p_1658->g_240,&p_1658->g_240,&p_1658->g_240},{&p_1658->g_240,&p_1658->g_240,&l_857,&p_1658->g_240,&p_1658->g_240,&p_1658->g_240,&p_1658->g_240}};
                int i, j;
                for (p_1658->g_771 = 0; p_1658->g_771 < 7; p_1658->g_771 += 1)
                {
                    for (p_1658->g_116 = 0; p_1658->g_116 < 1; p_1658->g_116 += 1)
                    {
                        p_1658->g_794[p_1658->g_771][p_1658->g_116] = (-1L);
                    }
                }
                for (p_1658->g_109 = 0; (p_1658->g_109 <= 0); p_1658->g_109 += 1)
                { /* block id: 381 */
                    int i, j;
                    (*l_857) &= p_1658->g_194[(p_1658->g_173 + 1)][p_1658->g_109];
                    (*l_857) |= 0x6B95ABC3L;
                    return l_858;
                }
                (*p_1658->g_239) = (void*)0;
            }
            (*l_890) = ((safe_mod_func_int16_t_s_s(((((safe_mod_func_int16_t_s_s((p_1658->g_329[p_1658->g_675] = 0x2BDCL), (safe_div_func_uint8_t_u_u((((*l_857) , (p_61 , p_61)) , ((*l_857) &= (((safe_add_func_uint64_t_u_u((((l_868 != l_869) , ((safe_mod_func_uint8_t_u_u(((*l_879) |= (safe_rshift_func_uint16_t_u_u((safe_add_func_uint16_t_u_u(0xC4D6L, l_877[4][0])), 12))), (safe_lshift_func_uint8_t_u_s((safe_rshift_func_int8_t_s_u(((safe_lshift_func_uint8_t_u_u((l_886 , 4UL), 0)) ^ p_61), 0)), 5)))) || p_1658->g_258)) , p_1658->g_295), (-1L))) , &p_1658->g_116) == l_887))), p_1658->g_293)))) >= 5L) == FAKE_DIVERGE(p_1658->global_0_offset, get_global_id(0), 10)) >= (-5L)), p_61)) , l_857);
            for (p_1658->g_583 = 0; (p_1658->g_583 <= 4); p_1658->g_583 += 1)
            { /* block id: 394 */
                int8_t *l_895 = &p_1658->g_173;
                int8_t **l_894 = &l_895;
                int8_t ***l_893[4] = {&l_894,&l_894,&l_894,&l_894};
                int32_t l_928 = 0x23FC882FL;
                int16_t *l_935 = &p_1658->g_329[1];
                uint32_t *l_936 = (void*)0;
                uint32_t *l_937 = &p_1658->g_938;
                uint32_t l_946 = 0xCC141CB9L;
                int32_t *l_947 = (void*)0;
                int32_t *l_948 = &p_1658->g_109;
                uint32_t *l_949 = &p_1658->g_950;
                int32_t *l_972[2][10] = {{&l_886,&p_1658->g_73,&p_1658->g_73,&l_886,&l_886,&p_1658->g_73,&p_1658->g_73,&l_886,&l_886,&p_1658->g_73},{&l_886,&p_1658->g_73,&p_1658->g_73,&l_886,&l_886,&p_1658->g_73,&p_1658->g_73,&l_886,&l_886,&p_1658->g_73}};
                int i, j;
                (1 + 1);
            }
        }
        for (p_1658->g_671 = 0; (p_1658->g_671 <= 0); p_1658->g_671 += 1)
        { /* block id: 441 */
            int i, j;
            (*p_1658->g_979) = p_1658->g_194[p_1658->g_251][p_1658->g_671];
        }
        --l_984[4][0][0];
        for (p_1658->g_583 = 0; (p_1658->g_583 <= 4); p_1658->g_583 += 1)
        { /* block id: 447 */
            int8_t *l_1001 = &p_1658->g_173;
            uint8_t *l_1004 = &p_1658->g_194[2][0];
            int32_t l_1005 = 0x3E1032D0L;
            int32_t l_1006 = 9L;
            int8_t *l_1008 = &p_1658->g_688[0];
            int i;
            l_974 = (p_1658->g_28[6] || ((~(((*l_1008) = (safe_add_func_uint64_t_u_u((safe_rshift_func_uint8_t_u_u((((((p_1658->g_73 >= (((safe_mod_func_int64_t_s_s(p_1658->g_511, 0x28975B76F3849E8EL)) == (safe_add_func_uint8_t_u_u((safe_lshift_func_int8_t_s_u((((l_1006 ^= (safe_mul_func_int16_t_s_s((safe_add_func_uint8_t_u_u(((&p_1658->g_144[p_1658->g_583] == (void*)0) ^ (p_1658->g_582 &= ((*l_1001) ^= p_61))), ((*l_1004) = ((safe_add_func_uint16_t_u_u((l_858 != (void*)0), p_1658->g_424)) , 0UL)))), l_1005))) || p_1658->g_1007) & p_61), 3)), 0xA4L))) ^ l_1005)) , p_61) != 8UL) , p_1658->g_424) != p_61), (*l_980))), p_61))) , l_1009)) , (*l_980)));
        }
    }
    (*l_1027) = (safe_sub_func_uint64_t_u_u(p_1658->g_685, (safe_div_func_uint16_t_u_u(((((0x26L & l_983[0]) <= (safe_sub_func_uint16_t_u_u(l_976, (-1L)))) & ((safe_add_func_uint16_t_u_u(GROUP_DIVERGE(2, 1), p_61)) > 65535UL)) ^ (safe_div_func_int32_t_s_s((safe_sub_func_uint64_t_u_u((((((*l_1026) = (0x4643L == ((((*l_1024) = ((safe_sub_func_int8_t_s_s(l_984[3][0][0], p_61)) , l_886)) , 7UL) , p_1658->g_583))) < 0x7832C73915E6EE46L) <= 18446744073709551609UL) > p_61), p_61)), l_974))), 0x29ABL))));
    return l_858;
}


/* ------------------------------------------ */
/* 
 * reads : p_1658->g_675 p_1658->g_500 p_1658->g_265 p_1658->g_145 p_1658->g_73 p_1658->g_214 p_1658->g_44 p_1658->g_685 p_1658->g_89 p_1658->g_112 p_1658->g_194 p_1658->g_367 p_1658->g_329 p_1658->g_771 p_1658->g_774 p_1658->g_792 p_1658->g_794 p_1658->g_688 p_1658->g_48 p_1658->g_497 p_1658->g_255 p_1658->g_694 p_1658->g_295
 * writes: p_1658->g_675 p_1658->g_500 p_1658->g_265 p_1658->g_145 p_1658->g_194 p_1658->g_73 p_1658->g_112 p_1658->g_771 p_1658->g_671 p_1658->g_251 p_1658->g_228
 */
uint8_t  func_62(uint32_t  p_63, int32_t * p_64, uint32_t * p_65, struct S0 * p_1658)
{ /* block id: 288 */
    uint32_t l_707 = 0x5CA6EE12L;
    int32_t *l_710 = &p_1658->g_73;
    int32_t l_768 = (-10L);
    uint8_t *l_790 = &p_1658->g_694[0][2][3];
    int16_t l_831 = 0x6742L;
    for (p_1658->g_675 = 0; (p_1658->g_675 <= 0); p_1658->g_675 += 1)
    { /* block id: 291 */
        int32_t **l_711 = &l_710;
        uint32_t l_740 = 4294967295UL;
        int32_t l_763 = 1L;
        int32_t l_766 = 0x542248BFL;
        uint64_t l_848[4] = {18446744073709551613UL,18446744073709551613UL,18446744073709551613UL,18446744073709551613UL};
        uint8_t l_855 = 0xD5L;
        int i;
        for (p_1658->g_500 = 0; (p_1658->g_500 <= 0); p_1658->g_500 += 1)
        { /* block id: 294 */
            int32_t *l_699 = &p_1658->g_109;
            int32_t *l_700 = &p_1658->g_112;
            int32_t *l_701 = &p_1658->g_112;
            int32_t *l_702 = &p_1658->g_109;
            int32_t *l_703 = &p_1658->g_112;
            int32_t *l_704 = &p_1658->g_73;
            int32_t *l_705 = &p_1658->g_73;
            int32_t *l_706[3][8][3] = {{{(void*)0,(void*)0,&p_1658->g_500},{(void*)0,(void*)0,&p_1658->g_500},{(void*)0,(void*)0,&p_1658->g_500},{(void*)0,(void*)0,&p_1658->g_500},{(void*)0,(void*)0,&p_1658->g_500},{(void*)0,(void*)0,&p_1658->g_500},{(void*)0,(void*)0,&p_1658->g_500},{(void*)0,(void*)0,&p_1658->g_500}},{{(void*)0,(void*)0,&p_1658->g_500},{(void*)0,(void*)0,&p_1658->g_500},{(void*)0,(void*)0,&p_1658->g_500},{(void*)0,(void*)0,&p_1658->g_500},{(void*)0,(void*)0,&p_1658->g_500},{(void*)0,(void*)0,&p_1658->g_500},{(void*)0,(void*)0,&p_1658->g_500},{(void*)0,(void*)0,&p_1658->g_500}},{{(void*)0,(void*)0,&p_1658->g_500},{(void*)0,(void*)0,&p_1658->g_500},{(void*)0,(void*)0,&p_1658->g_500},{(void*)0,(void*)0,&p_1658->g_500},{(void*)0,(void*)0,&p_1658->g_500},{(void*)0,(void*)0,&p_1658->g_500},{(void*)0,(void*)0,&p_1658->g_500},{(void*)0,(void*)0,&p_1658->g_500}}};
            int i, j, k;
            ++l_707;
        }
        (*l_711) = l_710;
        for (p_1658->g_265 = 0; (p_1658->g_265 <= 0); p_1658->g_265 += 1)
        { /* block id: 300 */
            int8_t l_713 = 5L;
            int32_t *l_776 = (void*)0;
            int32_t **l_775 = &l_776;
            int16_t *l_785 = &p_1658->g_329[1];
            int32_t l_795 = 1L;
            int8_t *l_812[7][4] = {{&p_1658->g_89[5],&p_1658->g_89[5],&p_1658->g_89[5],&p_1658->g_89[5]},{&p_1658->g_89[5],&p_1658->g_89[5],&p_1658->g_89[5],&p_1658->g_89[5]},{&p_1658->g_89[5],&p_1658->g_89[5],&p_1658->g_89[5],&p_1658->g_89[5]},{&p_1658->g_89[5],&p_1658->g_89[5],&p_1658->g_89[5],&p_1658->g_89[5]},{&p_1658->g_89[5],&p_1658->g_89[5],&p_1658->g_89[5],&p_1658->g_89[5]},{&p_1658->g_89[5],&p_1658->g_89[5],&p_1658->g_89[5],&p_1658->g_89[5]},{&p_1658->g_89[5],&p_1658->g_89[5],&p_1658->g_89[5],&p_1658->g_89[5]}};
            int8_t **l_811 = &l_812[4][2];
            int8_t ***l_810 = &l_811;
            int i, j;
            for (p_1658->g_145 = 0; (p_1658->g_145 <= 0); p_1658->g_145 += 1)
            { /* block id: 303 */
                int16_t l_712 = 0x0DA2L;
                int32_t l_716 = 0x5ADCC7DAL;
                int i, j;
                if (l_712)
                    break;
                (*l_710) = ((((**l_711) ^ ((p_1658->g_265 | ((((l_716 |= (l_713 , (!((safe_lshift_func_uint8_t_u_s(((void*)0 != &p_1658->g_501), 6)) || GROUP_DIVERGE(1, 1))))) || (!0x058CL)) , 0x611CL) || (safe_lshift_func_uint16_t_u_u(0x82C0L, 6)))) > (safe_mul_func_uint8_t_u_u((p_1658->g_194[(p_1658->g_145 + 1)][p_1658->g_675] = (safe_rshift_func_int8_t_s_u((*p_1658->g_214), 3))), p_1658->g_685)))) != (**l_711)) | p_1658->g_89[5]);
                return p_63;
            }
            if (l_713)
            { /* block id: 310 */
                int8_t *l_731 = &l_713;
                int8_t **l_730[5];
                uint32_t ****l_733 = &p_1658->g_228[3];
                int32_t l_739 = (-1L);
                uint32_t l_762 = 0x9CDE8B21L;
                int8_t l_791[3];
                int32_t l_854 = (-2L);
                int i;
                for (i = 0; i < 5; i++)
                    l_730[i] = &l_731;
                for (i = 0; i < 3; i++)
                    l_791[i] = 8L;
                if (p_63)
                    break;
                for (p_1658->g_112 = 0; (p_1658->g_112 <= 5); p_1658->g_112 += 1)
                { /* block id: 314 */
                    int64_t l_727[4] = {0x5B7E22F66F54AE6FL,0x5B7E22F66F54AE6FL,0x5B7E22F66F54AE6FL,0x5B7E22F66F54AE6FL};
                    int8_t ***l_732 = &l_730[1];
                    uint32_t *****l_734 = &l_733;
                    int32_t l_767 = 0L;
                    int32_t l_769 = 1L;
                    int32_t l_770 = (-2L);
                    int i, j;
                    if (((**l_711) = (safe_lshift_func_int16_t_s_u(((p_1658->g_89[5] < p_63) >= ((safe_lshift_func_int16_t_s_s(p_63, l_727[3])) & (!(((safe_rshift_func_uint8_t_u_u((p_1658->g_194[(p_1658->g_675 + 5)][p_1658->g_675] |= (&p_1658->g_214 != ((*l_732) = l_730[1]))), 7)) , (((*l_734) = l_733) == (void*)0)) >= ((safe_sub_func_uint16_t_u_u((safe_rshift_func_uint8_t_u_s((~(((+p_63) | GROUP_DIVERGE(0, 1)) >= 0x32L)), l_739)), l_740)) , p_1658->g_89[6]))))), 13))))
                    { /* block id: 319 */
                        uint32_t l_755[4];
                        int32_t *l_764 = (void*)0;
                        int32_t *l_765[7][7][5] = {{{(void*)0,&p_1658->g_500,&p_1658->g_2,&l_763,(void*)0},{(void*)0,&p_1658->g_500,&p_1658->g_2,&l_763,(void*)0},{(void*)0,&p_1658->g_500,&p_1658->g_2,&l_763,(void*)0},{(void*)0,&p_1658->g_500,&p_1658->g_2,&l_763,(void*)0},{(void*)0,&p_1658->g_500,&p_1658->g_2,&l_763,(void*)0},{(void*)0,&p_1658->g_500,&p_1658->g_2,&l_763,(void*)0},{(void*)0,&p_1658->g_500,&p_1658->g_2,&l_763,(void*)0}},{{(void*)0,&p_1658->g_500,&p_1658->g_2,&l_763,(void*)0},{(void*)0,&p_1658->g_500,&p_1658->g_2,&l_763,(void*)0},{(void*)0,&p_1658->g_500,&p_1658->g_2,&l_763,(void*)0},{(void*)0,&p_1658->g_500,&p_1658->g_2,&l_763,(void*)0},{(void*)0,&p_1658->g_500,&p_1658->g_2,&l_763,(void*)0},{(void*)0,&p_1658->g_500,&p_1658->g_2,&l_763,(void*)0},{(void*)0,&p_1658->g_500,&p_1658->g_2,&l_763,(void*)0}},{{(void*)0,&p_1658->g_500,&p_1658->g_2,&l_763,(void*)0},{(void*)0,&p_1658->g_500,&p_1658->g_2,&l_763,(void*)0},{(void*)0,&p_1658->g_500,&p_1658->g_2,&l_763,(void*)0},{(void*)0,&p_1658->g_500,&p_1658->g_2,&l_763,(void*)0},{(void*)0,&p_1658->g_500,&p_1658->g_2,&l_763,(void*)0},{(void*)0,&p_1658->g_500,&p_1658->g_2,&l_763,(void*)0},{(void*)0,&p_1658->g_500,&p_1658->g_2,&l_763,(void*)0}},{{(void*)0,&p_1658->g_500,&p_1658->g_2,&l_763,(void*)0},{(void*)0,&p_1658->g_500,&p_1658->g_2,&l_763,(void*)0},{(void*)0,&p_1658->g_500,&p_1658->g_2,&l_763,(void*)0},{(void*)0,&p_1658->g_500,&p_1658->g_2,&l_763,(void*)0},{(void*)0,&p_1658->g_500,&p_1658->g_2,&l_763,(void*)0},{(void*)0,&p_1658->g_500,&p_1658->g_2,&l_763,(void*)0},{(void*)0,&p_1658->g_500,&p_1658->g_2,&l_763,(void*)0}},{{(void*)0,&p_1658->g_500,&p_1658->g_2,&l_763,(void*)0},{(void*)0,&p_1658->g_500,&p_1658->g_2,&l_763,(void*)0},{(void*)0,&p_1658->g_500,&p_1658->g_2,&l_763,(void*)0},{(void*)0,&p_1658->g_500,&p_1658->g_2,&l_763,(void*)0},{(void*)0,&p_1658->g_500,&p_1658->g_2,&l_763,(void*)0},{(void*)0,&p_1658->g_500,&p_1658->g_2,&l_763,(void*)0},{(void*)0,&p_1658->g_500,&p_1658->g_2,&l_763,(void*)0}},{{(void*)0,&p_1658->g_500,&p_1658->g_2,&l_763,(void*)0},{(void*)0,&p_1658->g_500,&p_1658->g_2,&l_763,(void*)0},{(void*)0,&p_1658->g_500,&p_1658->g_2,&l_763,(void*)0},{(void*)0,&p_1658->g_500,&p_1658->g_2,&l_763,(void*)0},{(void*)0,&p_1658->g_500,&p_1658->g_2,&l_763,(void*)0},{(void*)0,&p_1658->g_500,&p_1658->g_2,&l_763,(void*)0},{(void*)0,&p_1658->g_500,&p_1658->g_2,&l_763,(void*)0}},{{(void*)0,&p_1658->g_500,&p_1658->g_2,&l_763,(void*)0},{(void*)0,&p_1658->g_500,&p_1658->g_2,&l_763,(void*)0},{(void*)0,&p_1658->g_500,&p_1658->g_2,&l_763,(void*)0},{(void*)0,&p_1658->g_500,&p_1658->g_2,&l_763,(void*)0},{(void*)0,&p_1658->g_500,&p_1658->g_2,&l_763,(void*)0},{(void*)0,&p_1658->g_500,&p_1658->g_2,&l_763,(void*)0},{(void*)0,&p_1658->g_500,&p_1658->g_2,&l_763,(void*)0}}};
                        int i, j, k;
                        for (i = 0; i < 4; i++)
                            l_755[i] = 0x6444203EL;
                        (*l_710) = (safe_rshift_func_int16_t_s_u(0x7008L, (((safe_add_func_uint8_t_u_u(((safe_add_func_int8_t_s_s((safe_sub_func_int8_t_s_s((safe_div_func_uint16_t_u_u(p_1658->g_89[4], (((safe_rshift_func_uint16_t_u_s(0UL, p_63)) != (l_739 == (safe_lshift_func_int16_t_s_u(l_755[0], 8)))) && (((safe_lshift_func_int16_t_s_s((-7L), (safe_div_func_uint64_t_u_u(((safe_div_func_uint8_t_u_u((((0x2A640A15DF3DD239L != (&p_1658->g_144[2] != &p_1658->g_144[2])) , (-2L)) , l_713), 0x04L)) == l_762), (-1L))))) & p_63) <= p_1658->g_367)))), (*p_1658->g_214))), p_1658->g_194[7][0])) , FAKE_DIVERGE(p_1658->local_0_offset, get_local_id(0), 10)), p_1658->g_329[1])) && 0UL) , 0xD124L)));
                        (**l_711) &= 0x348EDD63L;
                        p_1658->g_771++;
                    }
                    else
                    { /* block id: 323 */
                        return p_1658->g_774;
                    }
                    (**l_711) = (((((void*)0 != l_775) < (safe_rshift_func_int16_t_s_s(((l_769 <= ((safe_mod_func_uint16_t_u_u(((**l_711) >= (safe_mul_func_int8_t_s_s(((*l_731) = ((((((safe_mul_func_uint16_t_u_u(p_63, ((((((void*)0 == l_785) <= ((safe_rshift_func_int8_t_s_s((!(p_63 , ((safe_mod_func_uint32_t_u_u(((l_791[2] = ((void*)0 != l_790)) , 0x967C3A40L), (-1L))) | (*p_1658->g_214)))), 7)) == (-7L))) , p_1658->g_792) == &l_776) | FAKE_DIVERGE(p_1658->global_1_offset, get_global_id(1), 10)))) ^ p_63) || p_63) , 0x508EF5E458F744E9L) ^ p_1658->g_794[3][0]) == 0x6EE97DCA453FE31DL)), p_63))), FAKE_DIVERGE(p_1658->group_2_offset, get_group_id(2), 10))) , p_1658->g_688[0])) , 7L), l_795))) , p_63) && 0x28C267EBAF6876E5L);
                }
                if (p_1658->g_771)
                    continue;
                for (l_739 = 0; (l_739 <= 0); l_739 += 1)
                { /* block id: 333 */
                    uint32_t l_828 = 0xA7977F96L;
                    int64_t *l_842[3];
                    int32_t *l_845 = &p_1658->g_500;
                    int32_t *l_846 = (void*)0;
                    int32_t *l_847 = &l_768;
                    int i;
                    for (i = 0; i < 3; i++)
                        l_842[i] = &p_1658->g_116;
                    for (p_1658->g_671 = 0; (p_1658->g_671 <= 0); p_1658->g_671 += 1)
                    { /* block id: 336 */
                        int32_t *l_813 = &l_768;
                        p_1658->g_112 |= ((safe_mul_func_uint8_t_u_u(p_63, (((safe_div_func_uint32_t_u_u(((**l_711) & (safe_sub_func_int32_t_s_s((0x4266L || ((safe_add_func_uint32_t_u_u(FAKE_DIVERGE(p_1658->group_1_offset, get_group_id(1), 10), (**l_711))) , ((~((safe_mod_func_int8_t_s_s((safe_mod_func_int64_t_s_s((safe_div_func_int32_t_s_s(((*l_813) |= ((void*)0 != l_810)), (safe_sub_func_uint16_t_u_u(((safe_lshift_func_uint16_t_u_u((safe_div_func_uint32_t_u_u((+((safe_mod_func_uint32_t_u_u(((*p_1658->g_255) = (4294967288UL >= (p_1658->g_48 & ((p_1658->g_497 < p_1658->g_329[7]) < p_63)))), 1L)) > p_63)), 4294967295UL)), p_1658->g_694[0][6][0])) < p_1658->g_367), 0xFCB4L)))), p_1658->g_295)), l_791[1])) && (*p_1658->g_214))) ^ l_791[0]))), p_63))), p_63)) , p_63) | 0x7C89A355L))) , 0x5088BF22L);
                    }
                }
            }
            else
            { /* block id: 358 */
                (**l_711) = l_713;
                if (l_713)
                    break;
            }
            return p_1658->g_685;
        }
    }
    for (p_1658->g_671 = 0; p_1658->g_671 < 6; p_1658->g_671 += 1)
    {
        p_1658->g_228[p_1658->g_671] = &p_1658->g_229;
    }
    return p_1658->g_145;
}


/* ------------------------------------------ */
/* 
 * reads : p_1658->g_73 p_1658->g_89 p_1658->g_2 p_1658->g_28 p_1658->g_109 p_1658->g_44 p_1658->g_112 p_1658->g_116 p_1658->g_140 p_1658->g_144 p_1658->g_145 p_1658->g_48 p_1658->g_173 p_1658->g_194 p_1658->g_141 p_1658->g_206 p_1658->g_214 p_1658->g_207 p_1658->g_239 p_1658->g_251 p_1658->g_258 p_1658->g_267 p_1658->g_240 p_1658->g_229 p_1658->g_230 l_31
 * writes: p_1658->g_89 p_1658->g_109 p_1658->g_73 p_1658->g_48 p_1658->g_112 p_1658->g_194 p_1658->g_28 p_1658->g_145 p_1658->g_228 p_1658->g_240 p_1658->g_251 p_1658->g_255 p_1658->g_258 p_1658->g_267 p_1658->g_116 p_1658->g_173 l_31
 */
uint32_t * func_66(uint32_t ** p_67, int16_t  p_68, struct S0 * p_1658)
{ /* block id: 25 */
    int32_t l_102[6][7] = {{(-9L),(-9L),4L,0x7D3265E0L,(-10L),0x7D3265E0L,4L},{(-9L),(-9L),4L,0x7D3265E0L,(-10L),0x7D3265E0L,4L},{(-9L),(-9L),4L,0x7D3265E0L,(-10L),0x7D3265E0L,4L},{(-9L),(-9L),4L,0x7D3265E0L,(-10L),0x7D3265E0L,4L},{(-9L),(-9L),4L,0x7D3265E0L,(-10L),0x7D3265E0L,4L},{(-9L),(-9L),4L,0x7D3265E0L,(-10L),0x7D3265E0L,4L}};
    uint32_t l_103 = 0xE7D4845EL;
    int32_t l_105 = 0x0ED53B0EL;
    int32_t l_117[3];
    int32_t l_118 = 0x1F0A174FL;
    int32_t l_264 = 0x0B2242C1L;
    int32_t l_296[6] = {0x50E58691L,0x50E58691L,0x50E58691L,0x50E58691L,0x50E58691L,0x50E58691L};
    uint32_t l_330 = 0UL;
    int32_t l_340 = 0x7352B2F6L;
    int16_t l_435 = 0x4A7EL;
    uint32_t l_444 = 0x93039616L;
    uint32_t **l_461[6] = {&p_1658->g_255,&p_1658->g_255,&p_1658->g_255,&p_1658->g_255,&p_1658->g_255,&p_1658->g_255};
    uint64_t l_478 = 0x49EF023420736117L;
    uint32_t *l_539 = &p_1658->g_28[5];
    uint32_t **l_538[9][5][3] = {{{(void*)0,&l_539,(void*)0},{(void*)0,&l_539,(void*)0},{(void*)0,&l_539,(void*)0},{(void*)0,&l_539,(void*)0},{(void*)0,&l_539,(void*)0}},{{(void*)0,&l_539,(void*)0},{(void*)0,&l_539,(void*)0},{(void*)0,&l_539,(void*)0},{(void*)0,&l_539,(void*)0},{(void*)0,&l_539,(void*)0}},{{(void*)0,&l_539,(void*)0},{(void*)0,&l_539,(void*)0},{(void*)0,&l_539,(void*)0},{(void*)0,&l_539,(void*)0},{(void*)0,&l_539,(void*)0}},{{(void*)0,&l_539,(void*)0},{(void*)0,&l_539,(void*)0},{(void*)0,&l_539,(void*)0},{(void*)0,&l_539,(void*)0},{(void*)0,&l_539,(void*)0}},{{(void*)0,&l_539,(void*)0},{(void*)0,&l_539,(void*)0},{(void*)0,&l_539,(void*)0},{(void*)0,&l_539,(void*)0},{(void*)0,&l_539,(void*)0}},{{(void*)0,&l_539,(void*)0},{(void*)0,&l_539,(void*)0},{(void*)0,&l_539,(void*)0},{(void*)0,&l_539,(void*)0},{(void*)0,&l_539,(void*)0}},{{(void*)0,&l_539,(void*)0},{(void*)0,&l_539,(void*)0},{(void*)0,&l_539,(void*)0},{(void*)0,&l_539,(void*)0},{(void*)0,&l_539,(void*)0}},{{(void*)0,&l_539,(void*)0},{(void*)0,&l_539,(void*)0},{(void*)0,&l_539,(void*)0},{(void*)0,&l_539,(void*)0},{(void*)0,&l_539,(void*)0}},{{(void*)0,&l_539,(void*)0},{(void*)0,&l_539,(void*)0},{(void*)0,&l_539,(void*)0},{(void*)0,&l_539,(void*)0},{(void*)0,&l_539,(void*)0}}};
    uint32_t ***l_537[2];
    int32_t *l_586[7][5] = {{(void*)0,(void*)0,&l_340,(void*)0,(void*)0},{(void*)0,(void*)0,&l_340,(void*)0,(void*)0},{(void*)0,(void*)0,&l_340,(void*)0,(void*)0},{(void*)0,(void*)0,&l_340,(void*)0,(void*)0},{(void*)0,(void*)0,&l_340,(void*)0,(void*)0},{(void*)0,(void*)0,&l_340,(void*)0,(void*)0},{(void*)0,(void*)0,&l_340,(void*)0,(void*)0}};
    int16_t l_612 = 0x58A4L;
    int16_t l_655 = 0x40B1L;
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_117[i] = (-4L);
    for (i = 0; i < 2; i++)
        l_537[i] = &l_538[1][2][0];
    if (p_1658->g_73)
    { /* block id: 26 */
        int16_t l_87 = (-3L);
        int8_t *l_88 = &p_1658->g_89[5];
        int16_t *l_104 = (void*)0;
        int32_t *l_106 = (void*)0;
        int32_t l_107 = 0x5F895E34L;
        int32_t *l_108 = &p_1658->g_109;
        uint16_t *l_110 = &p_1658->g_48;
        uint32_t *l_111 = (void*)0;
        int64_t *l_115[9][5][2] = {{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}}};
        int8_t l_174 = 1L;
        uint32_t l_222 = 6UL;
        uint16_t l_238 = 0x0AB2L;
        int8_t **l_261 = &l_88;
        int32_t l_266[3];
        uint32_t ***l_327 = &p_1658->g_229;
        uint16_t l_405 = 65527UL;
        uint32_t *l_540 = &p_1658->g_28[5];
        uint8_t l_574[1];
        int i, j, k;
        for (i = 0; i < 3; i++)
            l_266[i] = 0x5F916052L;
        for (i = 0; i < 1; i++)
            l_574[i] = 0x0EL;
        l_118 &= (p_68 , (p_68 > (l_117[1] &= func_81((((((l_87 , ((*l_88) &= 0x52L)) >= (((safe_rshift_func_uint16_t_u_s((safe_mul_func_uint16_t_u_u(((*l_110) = (safe_mod_func_int8_t_s_s((!l_87), ((p_1658->g_73 = ((*l_108) |= ((l_107 = (safe_sub_func_uint32_t_u_u(((p_1658->g_2 , ((p_1658->g_73 < ((((l_105 = ((safe_rshift_func_uint8_t_u_s((safe_rshift_func_uint16_t_u_s((!(p_1658->g_73 == (l_102[1][2] || l_102[1][2]))), 9)), 2)) , l_103)) && p_1658->g_28[5]) >= l_102[1][2]) & 0x2D237583F02998B4L)) , 65535UL)) >= p_68), 4L))) < FAKE_DIVERGE(p_1658->group_1_offset, get_group_id(1), 10)))) , p_1658->g_109)))), 0x3429L)), p_68)) ^ p_1658->g_44) | (-1L))) | p_68) != 6UL) == FAKE_DIVERGE(p_1658->local_2_offset, get_local_id(2), 10)), l_111, p_1658->g_28[5], l_103, p_1658->g_112, p_1658))));
        for (p_68 = (-19); (p_68 < 6); p_68 = safe_add_func_uint16_t_u_u(p_68, 5))
        { /* block id: 40 */
            uint32_t *l_123 = &l_103;
            int32_t l_143 = 5L;
            int32_t l_146[8] = {1L,(-8L),1L,1L,(-8L),1L,1L,(-8L)};
            int32_t *l_175 = &p_1658->g_112;
            int8_t *l_186[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            uint32_t ***l_233 = &p_1658->g_229;
            int32_t l_241 = 0L;
            int32_t *l_262 = &p_1658->g_112;
            int32_t *l_263[2][1][6] = {{{&l_146[2],&l_241,&l_146[2],&l_146[2],&l_241,&l_146[2]}},{{&l_146[2],&l_241,&l_146[2],&l_146[2],&l_241,&l_146[2]}}};
            int i, j, k;
            if ((safe_add_func_uint32_t_u_u((*l_108), ((--(*l_123)) && (safe_rshift_func_int16_t_s_u(p_68, 13))))))
            { /* block id: 42 */
                uint16_t l_142 = 65527UL;
                int8_t *l_172[4][4] = {{&p_1658->g_173,&p_1658->g_173,&p_1658->g_173,&p_1658->g_173},{&p_1658->g_173,&p_1658->g_173,&p_1658->g_173,&p_1658->g_173},{&p_1658->g_173,&p_1658->g_173,&p_1658->g_173,&p_1658->g_173},{&p_1658->g_173,&p_1658->g_173,&p_1658->g_173,&p_1658->g_173}};
                int32_t l_211[5];
                int32_t *l_221[2];
                int i, j;
                for (i = 0; i < 5; i++)
                    l_211[i] = 0x4F71ED02L;
                for (i = 0; i < 2; i++)
                    l_221[i] = &p_1658->g_112;
                l_146[2] = ((p_68 >= (((((safe_sub_func_uint16_t_u_u(((safe_sub_func_uint16_t_u_u(p_1658->g_116, ((l_143 = ((((((((255UL >= ((safe_add_func_int16_t_s_s((((((*l_88) = ((safe_sub_func_int16_t_s_s((safe_add_func_int8_t_s_s((-9L), (p_67 != p_1658->g_140))), (0x9336L == p_68))) != l_142)) , p_68) != l_143) & p_1658->g_28[5]), l_143)) != l_117[1])) == l_142) , p_68) <= p_1658->g_28[4]) == p_68) , GROUP_DIVERGE(2, 1)) && 255UL) , p_68)) == p_68))) || p_68), p_1658->g_2)) , &l_87) != p_1658->g_144[2]) <= p_68) , p_68)) && p_1658->g_112);
                if ((safe_sub_func_int64_t_s_s((p_1658->g_44 >= (safe_div_func_int32_t_s_s((safe_lshift_func_uint16_t_u_s(((((!(safe_unary_minus_func_uint8_t_u(p_68))) >= (&l_107 == (void*)0)) | ((*l_123) |= ((l_143 = (l_146[2] = ((safe_mod_func_int32_t_s_s(((safe_mod_func_int8_t_s_s((l_117[0] = ((*l_88) = ((((((safe_mod_func_int16_t_s_s((-2L), (FAKE_DIVERGE(p_1658->group_2_offset, get_group_id(2), 10) | GROUP_DIVERGE(2, 1)))) >= (safe_mul_func_int16_t_s_s((safe_add_func_uint8_t_u_u(((((void*)0 != l_115[2][3][0]) , ((safe_mod_func_int32_t_s_s(((safe_mod_func_uint16_t_u_u((safe_mod_func_int32_t_s_s(l_117[1], ((l_117[1] != 65535UL) && p_68))), l_146[2])) , 0x0726DF7CL), p_1658->g_89[5])) , FAKE_DIVERGE(p_1658->global_2_offset, get_global_id(2), 10))) & p_68), p_1658->g_116)), 0x909AL))) == p_68) , 0L) >= p_1658->g_89[5]) , p_1658->g_89[5]))), p_68)) <= p_1658->g_145), (*l_108))) > 0L))) == 0L))) , 0UL), l_174)), l_142))), p_68)))
                { /* block id: 51 */
                    l_175 = &p_1658->g_112;
                    (*l_175) ^= l_142;
                    (*l_175) ^= p_68;
                }
                else
                { /* block id: 55 */
                    int32_t l_191 = 7L;
                    int32_t l_220 = 0x27CBA657L;
                    for (p_1658->g_48 = 0; (p_1658->g_48 >= 18); ++p_1658->g_48)
                    { /* block id: 58 */
                        int8_t l_205 = 1L;
                        uint32_t *l_208 = &p_1658->g_28[0];
                        (*l_175) = ((safe_mod_func_uint64_t_u_u(((safe_add_func_uint32_t_u_u(((*l_123) = p_1658->g_173), ((FAKE_DIVERGE(p_1658->local_1_offset, get_local_id(1), 10) > ((safe_mul_func_int16_t_s_s(p_68, (((+(safe_mul_func_uint16_t_u_u(((((((void*)0 != l_186[1]) , (((*l_208) = (((((safe_mul_func_int8_t_s_s((safe_sub_func_int16_t_s_s((l_191 | (safe_sub_func_uint16_t_u_u(FAKE_DIVERGE(p_1658->global_1_offset, get_global_id(1), 10), l_191))), ((p_1658->g_194[7][0]--) != 0x26BDL))), (p_1658->g_141 == ((safe_div_func_int32_t_s_s(((safe_div_func_uint16_t_u_u(((safe_lshift_func_int8_t_s_u((safe_mod_func_int8_t_s_s((p_68 == 0UL), p_1658->g_145)), (*l_108))) , p_68), 4UL)) ^ l_205), p_68)) , p_1658->g_206)))) > 0xBCB49334L) | p_1658->g_28[8]) & (*l_108)) , l_142)) , 0UL)) | p_1658->g_145) >= l_205) | l_142), 0L))) != l_102[1][2]) == (-5L)))) <= 0x43F2AAD057FE0C21L)) , p_68))) ^ l_117[1]), p_68)) < p_1658->g_109);
                    }
                    for (p_1658->g_73 = 5; (p_1658->g_73 >= 0); p_1658->g_73 -= 1)
                    { /* block id: 66 */
                        int16_t *l_219 = &p_1658->g_145;
                        int i, j;
                        (*l_108) |= ((safe_sub_func_int32_t_s_s((((+(l_211[1] = 0x7FFAL)) <= (safe_sub_func_int32_t_s_s((p_1658->g_214 != l_172[1][3]), l_102[p_1658->g_73][p_1658->g_73]))) | l_102[p_1658->g_73][(p_1658->g_73 + 1)]), (safe_rshift_func_int8_t_s_u((l_102[p_1658->g_73][p_1658->g_73] , (*p_1658->g_214)), 1)))) != (+(l_220 = ((*l_219) &= (4294967292UL < ((*l_123)--))))));
                    }
                }
                l_222++;
            }
            else
            { /* block id: 75 */
                uint64_t l_225 = 0UL;
                uint32_t ***l_226 = (void*)0;
                int32_t l_247 = 0x4DA13051L;
                int32_t l_249[3][3][9];
                int i, j, k;
                for (i = 0; i < 3; i++)
                {
                    for (j = 0; j < 3; j++)
                    {
                        for (k = 0; k < 9; k++)
                            l_249[i][j][k] = 0x3DF2345BL;
                    }
                }
                if (l_225)
                { /* block id: 76 */
                    uint32_t ****l_227[4][8] = {{&l_226,&l_226,&l_226,&l_226,&l_226,&l_226,&l_226,&l_226},{&l_226,&l_226,&l_226,&l_226,&l_226,&l_226,&l_226,&l_226},{&l_226,&l_226,&l_226,&l_226,&l_226,&l_226,&l_226,&l_226},{&l_226,&l_226,&l_226,&l_226,&l_226,&l_226,&l_226,&l_226}};
                    int i, j;
                    if (p_68)
                        break;
                    (*l_175) = ((p_1658->g_109 = (l_105 |= (0x0BL > (&p_67 == (p_1658->g_228[1] = l_226))))) & ((safe_mod_func_uint32_t_u_u((l_233 == &p_1658->g_229), (*p_1658->g_206))) <= (p_1658->g_2 != ((((safe_mod_func_int64_t_s_s((0x47EAL | (safe_rshift_func_int16_t_s_s(0x5AADL, l_225))), (*l_175))) && l_238) , p_1658->g_112) && p_1658->g_28[5]))));
                    (*p_1658->g_239) = &l_118;
                }
                else
                { /* block id: 83 */
                    int16_t l_248 = 3L;
                    int32_t l_256 = 0x7F329C72L;
                    int32_t l_257 = 0x58E4E223L;
                    for (l_118 = 5; (l_118 >= 0); l_118 -= 1)
                    { /* block id: 86 */
                        int32_t *l_242 = &p_1658->g_73;
                        int32_t *l_243 = &l_117[1];
                        int32_t *l_244 = &l_146[7];
                        int32_t l_245 = (-3L);
                        int32_t *l_246[3][2];
                        uint32_t **l_254[8][6] = {{&l_123,&l_123,&l_123,&l_123,&l_123,&l_123},{&l_123,&l_123,&l_123,&l_123,&l_123,&l_123},{&l_123,&l_123,&l_123,&l_123,&l_123,&l_123},{&l_123,&l_123,&l_123,&l_123,&l_123,&l_123},{&l_123,&l_123,&l_123,&l_123,&l_123,&l_123},{&l_123,&l_123,&l_123,&l_123,&l_123,&l_123},{&l_123,&l_123,&l_123,&l_123,&l_123,&l_123},{&l_123,&l_123,&l_123,&l_123,&l_123,&l_123}};
                        int i, j;
                        for (i = 0; i < 3; i++)
                        {
                            for (j = 0; j < 2; j++)
                                l_246[i][j] = (void*)0;
                        }
                        --p_1658->g_251;
                        (*l_242) = ((l_123 = (void*)0) == (p_1658->g_255 = &p_1658->g_251));
                        --p_1658->g_258;
                        l_261 = &l_186[1];
                    }
                }
            }
            p_1658->g_267--;
            return l_106;
        }
        for (l_174 = 22; (l_174 >= 28); ++l_174)
        { /* block id: 101 */
            uint8_t *l_289 = &p_1658->g_194[7][0];
            uint8_t *l_292 = &p_1658->g_293;
            uint8_t *l_294[3];
            int32_t *l_316 = &l_117[0];
            uint32_t **l_363 = &l_111;
            uint32_t l_366 = 4294967291UL;
            int32_t l_420 = 0x7B39D564L;
            int i;
            for (i = 0; i < 3; i++)
                l_294[i] = &p_1658->g_295;
            (1 + 1);
        }
        for (p_1658->g_109 = 0; (p_1658->g_109 == 5); p_1658->g_109 = safe_add_func_int16_t_s_s(p_1658->g_109, 1))
        { /* block id: 196 */
            uint16_t l_532[2][6] = {{0UL,0UL,0UL,0UL,0UL,0UL},{0UL,0UL,0UL,0UL,0UL,0UL}};
            int32_t l_575 = 0x5E89263CL;
            int32_t l_581 = 0x71632A3BL;
            int32_t l_613[3];
            int i, j;
            for (i = 0; i < 3; i++)
                l_613[i] = 0x0C2686D8L;
            (1 + 1);
        }
    }
    else
    { /* block id: 218 */
        int8_t l_619[4][3] = {{0x6EL,(-2L),(-1L)},{0x6EL,(-2L),(-1L)},{0x6EL,(-2L),(-1L)},{0x6EL,(-2L),(-1L)}};
        int32_t l_620 = (-1L);
        int32_t l_623 = 0x01BE0649L;
        int32_t l_627 = 0L;
        uint32_t l_632 = 0x23870C46L;
        int32_t *l_637 = &p_1658->g_500;
        uint32_t l_654 = 1UL;
        uint32_t l_665[3][6][8] = {{{0UL,4294967292UL,2UL,4294967295UL,0x9711694EL,0x3B995ED3L,4294967295UL,0UL},{0UL,4294967292UL,2UL,4294967295UL,0x9711694EL,0x3B995ED3L,4294967295UL,0UL},{0UL,4294967292UL,2UL,4294967295UL,0x9711694EL,0x3B995ED3L,4294967295UL,0UL},{0UL,4294967292UL,2UL,4294967295UL,0x9711694EL,0x3B995ED3L,4294967295UL,0UL},{0UL,4294967292UL,2UL,4294967295UL,0x9711694EL,0x3B995ED3L,4294967295UL,0UL},{0UL,4294967292UL,2UL,4294967295UL,0x9711694EL,0x3B995ED3L,4294967295UL,0UL}},{{0UL,4294967292UL,2UL,4294967295UL,0x9711694EL,0x3B995ED3L,4294967295UL,0UL},{0UL,4294967292UL,2UL,4294967295UL,0x9711694EL,0x3B995ED3L,4294967295UL,0UL},{0UL,4294967292UL,2UL,4294967295UL,0x9711694EL,0x3B995ED3L,4294967295UL,0UL},{0UL,4294967292UL,2UL,4294967295UL,0x9711694EL,0x3B995ED3L,4294967295UL,0UL},{0UL,4294967292UL,2UL,4294967295UL,0x9711694EL,0x3B995ED3L,4294967295UL,0UL},{0UL,4294967292UL,2UL,4294967295UL,0x9711694EL,0x3B995ED3L,4294967295UL,0UL}},{{0UL,4294967292UL,2UL,4294967295UL,0x9711694EL,0x3B995ED3L,4294967295UL,0UL},{0UL,4294967292UL,2UL,4294967295UL,0x9711694EL,0x3B995ED3L,4294967295UL,0UL},{0UL,4294967292UL,2UL,4294967295UL,0x9711694EL,0x3B995ED3L,4294967295UL,0UL},{0UL,4294967292UL,2UL,4294967295UL,0x9711694EL,0x3B995ED3L,4294967295UL,0UL},{0UL,4294967292UL,2UL,4294967295UL,0x9711694EL,0x3B995ED3L,4294967295UL,0UL},{0UL,4294967292UL,2UL,4294967295UL,0x9711694EL,0x3B995ED3L,4294967295UL,0UL}}};
        uint32_t *l_684 = &p_1658->g_685;
        int32_t **l_698 = &l_586[0][2];
        int i, j, k;
        for (p_1658->g_116 = 2; (p_1658->g_116 >= 0); p_1658->g_116 -= 1)
        { /* block id: 221 */
            int32_t l_615 = 0x156AC036L;
            int32_t l_616 = 0x127907BEL;
            int32_t l_618 = (-4L);
            int32_t l_624 = 0x13E14289L;
            uint32_t l_662 = 0x8DBA241AL;
            int i;
            l_117[p_1658->g_116] ^= (**p_1658->g_239);
            for (p_1658->g_173 = 1; (p_1658->g_173 <= 8); p_1658->g_173 += 1)
            { /* block id: 225 */
                int16_t l_622 = 0x75E8L;
                int32_t l_625 = 0x1C9F83C8L;
                int32_t l_626 = 0x16E80BBBL;
                int32_t l_631[7][7] = {{(-8L),8L,0x3489E2C5L,(-8L),(-5L),0x3489E2C5L,0x3489E2C5L},{(-8L),8L,0x3489E2C5L,(-8L),(-5L),0x3489E2C5L,0x3489E2C5L},{(-8L),8L,0x3489E2C5L,(-8L),(-5L),0x3489E2C5L,0x3489E2C5L},{(-8L),8L,0x3489E2C5L,(-8L),(-5L),0x3489E2C5L,0x3489E2C5L},{(-8L),8L,0x3489E2C5L,(-8L),(-5L),0x3489E2C5L,0x3489E2C5L},{(-8L),8L,0x3489E2C5L,(-8L),(-5L),0x3489E2C5L,0x3489E2C5L},{(-8L),8L,0x3489E2C5L,(-8L),(-5L),0x3489E2C5L,0x3489E2C5L}};
                int32_t *l_636 = (void*)0;
                int i, j;
                (1 + 1);
            }
            return l_684;
        }
        (*p_1658->g_240) = 0x7E728FAEL;
        (*l_698) = (void*)0;
    }
    return (*p_1658->g_229);
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes: p_1658->g_73
 */
uint32_t ** func_69(uint16_t  p_70, struct S0 * p_1658)
{ /* block id: 20 */
    int16_t l_71 = 1L;
    int32_t *l_72 = &p_1658->g_73;
    uint32_t **l_74 = (void*)0;
    (*l_72) = l_71;
    return l_74;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int64_t  func_81(int16_t  p_82, uint32_t * p_83, int32_t  p_84, int8_t  p_85, uint32_t  p_86, struct S0 * p_1658)
{ /* block id: 33 */
    int32_t *l_113[7][9][2] = {{{&p_1658->g_109,&p_1658->g_112},{&p_1658->g_109,&p_1658->g_112},{&p_1658->g_109,&p_1658->g_112},{&p_1658->g_109,&p_1658->g_112},{&p_1658->g_109,&p_1658->g_112},{&p_1658->g_109,&p_1658->g_112},{&p_1658->g_109,&p_1658->g_112},{&p_1658->g_109,&p_1658->g_112},{&p_1658->g_109,&p_1658->g_112}},{{&p_1658->g_109,&p_1658->g_112},{&p_1658->g_109,&p_1658->g_112},{&p_1658->g_109,&p_1658->g_112},{&p_1658->g_109,&p_1658->g_112},{&p_1658->g_109,&p_1658->g_112},{&p_1658->g_109,&p_1658->g_112},{&p_1658->g_109,&p_1658->g_112},{&p_1658->g_109,&p_1658->g_112},{&p_1658->g_109,&p_1658->g_112}},{{&p_1658->g_109,&p_1658->g_112},{&p_1658->g_109,&p_1658->g_112},{&p_1658->g_109,&p_1658->g_112},{&p_1658->g_109,&p_1658->g_112},{&p_1658->g_109,&p_1658->g_112},{&p_1658->g_109,&p_1658->g_112},{&p_1658->g_109,&p_1658->g_112},{&p_1658->g_109,&p_1658->g_112},{&p_1658->g_109,&p_1658->g_112}},{{&p_1658->g_109,&p_1658->g_112},{&p_1658->g_109,&p_1658->g_112},{&p_1658->g_109,&p_1658->g_112},{&p_1658->g_109,&p_1658->g_112},{&p_1658->g_109,&p_1658->g_112},{&p_1658->g_109,&p_1658->g_112},{&p_1658->g_109,&p_1658->g_112},{&p_1658->g_109,&p_1658->g_112},{&p_1658->g_109,&p_1658->g_112}},{{&p_1658->g_109,&p_1658->g_112},{&p_1658->g_109,&p_1658->g_112},{&p_1658->g_109,&p_1658->g_112},{&p_1658->g_109,&p_1658->g_112},{&p_1658->g_109,&p_1658->g_112},{&p_1658->g_109,&p_1658->g_112},{&p_1658->g_109,&p_1658->g_112},{&p_1658->g_109,&p_1658->g_112},{&p_1658->g_109,&p_1658->g_112}},{{&p_1658->g_109,&p_1658->g_112},{&p_1658->g_109,&p_1658->g_112},{&p_1658->g_109,&p_1658->g_112},{&p_1658->g_109,&p_1658->g_112},{&p_1658->g_109,&p_1658->g_112},{&p_1658->g_109,&p_1658->g_112},{&p_1658->g_109,&p_1658->g_112},{&p_1658->g_109,&p_1658->g_112},{&p_1658->g_109,&p_1658->g_112}},{{&p_1658->g_109,&p_1658->g_112},{&p_1658->g_109,&p_1658->g_112},{&p_1658->g_109,&p_1658->g_112},{&p_1658->g_109,&p_1658->g_112},{&p_1658->g_109,&p_1658->g_112},{&p_1658->g_109,&p_1658->g_112},{&p_1658->g_109,&p_1658->g_112},{&p_1658->g_109,&p_1658->g_112},{&p_1658->g_109,&p_1658->g_112}}};
    int16_t l_114[7][4] = {{0x31A1L,0L,1L,(-7L)},{0x31A1L,0L,1L,(-7L)},{0x31A1L,0L,1L,(-7L)},{0x31A1L,0L,1L,(-7L)},{0x31A1L,0L,1L,(-7L)},{0x31A1L,0L,1L,(-7L)},{0x31A1L,0L,1L,(-7L)}};
    int i, j, k;
    l_114[1][2] ^= 0x0812B24AL;
    return p_85;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S0 c_1659;
    struct S0* p_1658 = &c_1659;
    struct S0 c_1660 = {
        7L, // p_1658->g_2
        {0x31B54653L,9UL,0x31B54653L,0x31B54653L,9UL,0x31B54653L,0x31B54653L,9UL,0x31B54653L}, // p_1658->g_28
        (-8L), // p_1658->g_44
        0UL, // p_1658->g_48
        (-9L), // p_1658->g_73
        {1L,1L,1L,1L,1L,1L,1L,1L}, // p_1658->g_89
        7L, // p_1658->g_109
        0x34EFB57AL, // p_1658->g_112
        0x3F393C2DF5847FBBL, // p_1658->g_116
        &p_1658->g_28[0], // p_1658->g_141
        &p_1658->g_141, // p_1658->g_140
        1L, // p_1658->g_145
        {&p_1658->g_145,&p_1658->g_145,&p_1658->g_145,&p_1658->g_145,&p_1658->g_145}, // p_1658->g_144
        0x7CL, // p_1658->g_173
        {{0x1EL},{0x1EL},{0x1EL},{0x1EL},{0x1EL},{0x1EL},{0x1EL},{0x1EL}}, // p_1658->g_194
        0x0F0ED1FFL, // p_1658->g_207
        &p_1658->g_207, // p_1658->g_206
        &p_1658->g_44, // p_1658->g_214
        &p_1658->g_28[5], // p_1658->g_230
        &p_1658->g_230, // p_1658->g_229
        {&p_1658->g_229,(void*)0,&p_1658->g_229,&p_1658->g_229,(void*)0,&p_1658->g_229}, // p_1658->g_228
        &p_1658->g_112, // p_1658->g_240
        &p_1658->g_240, // p_1658->g_239
        (-1L), // p_1658->g_250
        1UL, // p_1658->g_251
        &p_1658->g_251, // p_1658->g_255
        18446744073709551615UL, // p_1658->g_258
        0x50D2704C2F6CE27EL, // p_1658->g_265
        0x53714A94L, // p_1658->g_267
        6UL, // p_1658->g_293
        0x8CL, // p_1658->g_295
        {(-2L),(-2L),(-2L),(-2L),(-2L),(-2L),(-2L),(-2L),(-2L)}, // p_1658->g_329
        0x25L, // p_1658->g_367
        0x6F4701A0D4F16E10L, // p_1658->g_424
        1UL, // p_1658->g_497
        0x06E9F35BL, // p_1658->g_500
        4L, // p_1658->g_501
        1UL, // p_1658->g_502
        3L, // p_1658->g_511
        (-3L), // p_1658->g_582
        0xD3882ABBL, // p_1658->g_583
        &p_1658->g_240, // p_1658->g_657
        0x2E95D836F613F960L, // p_1658->g_669
        2L, // p_1658->g_670
        65535UL, // p_1658->g_671
        0x973A06C0D53A6E7DL, // p_1658->g_675
        0x9FB8E3F9L, // p_1658->g_685
        {0x0BL,0x0BL,0x0BL,0x0BL,0x0BL}, // p_1658->g_688
        {{{0UL,0xFBL,0xCDL,255UL,254UL,255UL,0x78L,0x3DL},{0UL,0xFBL,0xCDL,255UL,254UL,255UL,0x78L,0x3DL},{0UL,0xFBL,0xCDL,255UL,254UL,255UL,0x78L,0x3DL},{0UL,0xFBL,0xCDL,255UL,254UL,255UL,0x78L,0x3DL},{0UL,0xFBL,0xCDL,255UL,254UL,255UL,0x78L,0x3DL},{0UL,0xFBL,0xCDL,255UL,254UL,255UL,0x78L,0x3DL},{0UL,0xFBL,0xCDL,255UL,254UL,255UL,0x78L,0x3DL}},{{0UL,0xFBL,0xCDL,255UL,254UL,255UL,0x78L,0x3DL},{0UL,0xFBL,0xCDL,255UL,254UL,255UL,0x78L,0x3DL},{0UL,0xFBL,0xCDL,255UL,254UL,255UL,0x78L,0x3DL},{0UL,0xFBL,0xCDL,255UL,254UL,255UL,0x78L,0x3DL},{0UL,0xFBL,0xCDL,255UL,254UL,255UL,0x78L,0x3DL},{0UL,0xFBL,0xCDL,255UL,254UL,255UL,0x78L,0x3DL},{0UL,0xFBL,0xCDL,255UL,254UL,255UL,0x78L,0x3DL}}}, // p_1658->g_694
        4294967292UL, // p_1658->g_771
        0x6BA866DF81D32163L, // p_1658->g_774
        {{0x21137411L},{0x21137411L},{0x21137411L},{0x21137411L},{0x21137411L},{0x21137411L},{0x21137411L}}, // p_1658->g_794
        &p_1658->g_794[3][0], // p_1658->g_793
        &p_1658->g_793, // p_1658->g_792
        0UL, // p_1658->g_938
        6UL, // p_1658->g_950
        &p_1658->g_500, // p_1658->g_979
        18446744073709551615UL, // p_1658->g_1007
        (void*)0, // p_1658->g_1031
        (void*)0, // p_1658->g_1096
        &p_1658->g_112, // p_1658->g_1101
        0x954497B3L, // p_1658->g_1154
        0x31E4L, // p_1658->g_1182
        (void*)0, // p_1658->g_1190
        &p_1658->g_1190, // p_1658->g_1189
        &p_1658->g_1189, // p_1658->g_1188
        {{65530UL,65530UL,0x6E91L,65535UL,0x5AE4L,0x6586L,0UL,0xAB68L,0UL},{65530UL,65530UL,0x6E91L,65535UL,0x5AE4L,0x6586L,0UL,0xAB68L,0UL},{65530UL,65530UL,0x6E91L,65535UL,0x5AE4L,0x6586L,0UL,0xAB68L,0UL}}, // p_1658->g_1210
        0x02L, // p_1658->g_1268
        0x161CL, // p_1658->g_1269
        {{{0xFF728BBEL,5UL,1UL,0xB4B388EBL,0UL,0xB4B388EBL,1UL},{0xFF728BBEL,5UL,1UL,0xB4B388EBL,0UL,0xB4B388EBL,1UL},{0xFF728BBEL,5UL,1UL,0xB4B388EBL,0UL,0xB4B388EBL,1UL},{0xFF728BBEL,5UL,1UL,0xB4B388EBL,0UL,0xB4B388EBL,1UL}},{{0xFF728BBEL,5UL,1UL,0xB4B388EBL,0UL,0xB4B388EBL,1UL},{0xFF728BBEL,5UL,1UL,0xB4B388EBL,0UL,0xB4B388EBL,1UL},{0xFF728BBEL,5UL,1UL,0xB4B388EBL,0UL,0xB4B388EBL,1UL},{0xFF728BBEL,5UL,1UL,0xB4B388EBL,0UL,0xB4B388EBL,1UL}},{{0xFF728BBEL,5UL,1UL,0xB4B388EBL,0UL,0xB4B388EBL,1UL},{0xFF728BBEL,5UL,1UL,0xB4B388EBL,0UL,0xB4B388EBL,1UL},{0xFF728BBEL,5UL,1UL,0xB4B388EBL,0UL,0xB4B388EBL,1UL},{0xFF728BBEL,5UL,1UL,0xB4B388EBL,0UL,0xB4B388EBL,1UL}},{{0xFF728BBEL,5UL,1UL,0xB4B388EBL,0UL,0xB4B388EBL,1UL},{0xFF728BBEL,5UL,1UL,0xB4B388EBL,0UL,0xB4B388EBL,1UL},{0xFF728BBEL,5UL,1UL,0xB4B388EBL,0UL,0xB4B388EBL,1UL},{0xFF728BBEL,5UL,1UL,0xB4B388EBL,0UL,0xB4B388EBL,1UL}},{{0xFF728BBEL,5UL,1UL,0xB4B388EBL,0UL,0xB4B388EBL,1UL},{0xFF728BBEL,5UL,1UL,0xB4B388EBL,0UL,0xB4B388EBL,1UL},{0xFF728BBEL,5UL,1UL,0xB4B388EBL,0UL,0xB4B388EBL,1UL},{0xFF728BBEL,5UL,1UL,0xB4B388EBL,0UL,0xB4B388EBL,1UL}},{{0xFF728BBEL,5UL,1UL,0xB4B388EBL,0UL,0xB4B388EBL,1UL},{0xFF728BBEL,5UL,1UL,0xB4B388EBL,0UL,0xB4B388EBL,1UL},{0xFF728BBEL,5UL,1UL,0xB4B388EBL,0UL,0xB4B388EBL,1UL},{0xFF728BBEL,5UL,1UL,0xB4B388EBL,0UL,0xB4B388EBL,1UL}}}, // p_1658->g_1271
        {{&p_1658->g_1101,&p_1658->g_1101,&p_1658->g_1101,&p_1658->g_1101,&p_1658->g_1101}}, // p_1658->g_1277
        {{{0x22CA9314L,0x659FCC28L,0x35DD7660L,0x659FCC28L},{0x22CA9314L,0x659FCC28L,0x35DD7660L,0x659FCC28L},{0x22CA9314L,0x659FCC28L,0x35DD7660L,0x659FCC28L},{0x22CA9314L,0x659FCC28L,0x35DD7660L,0x659FCC28L},{0x22CA9314L,0x659FCC28L,0x35DD7660L,0x659FCC28L},{0x22CA9314L,0x659FCC28L,0x35DD7660L,0x659FCC28L},{0x22CA9314L,0x659FCC28L,0x35DD7660L,0x659FCC28L},{0x22CA9314L,0x659FCC28L,0x35DD7660L,0x659FCC28L},{0x22CA9314L,0x659FCC28L,0x35DD7660L,0x659FCC28L}},{{0x22CA9314L,0x659FCC28L,0x35DD7660L,0x659FCC28L},{0x22CA9314L,0x659FCC28L,0x35DD7660L,0x659FCC28L},{0x22CA9314L,0x659FCC28L,0x35DD7660L,0x659FCC28L},{0x22CA9314L,0x659FCC28L,0x35DD7660L,0x659FCC28L},{0x22CA9314L,0x659FCC28L,0x35DD7660L,0x659FCC28L},{0x22CA9314L,0x659FCC28L,0x35DD7660L,0x659FCC28L},{0x22CA9314L,0x659FCC28L,0x35DD7660L,0x659FCC28L},{0x22CA9314L,0x659FCC28L,0x35DD7660L,0x659FCC28L},{0x22CA9314L,0x659FCC28L,0x35DD7660L,0x659FCC28L}},{{0x22CA9314L,0x659FCC28L,0x35DD7660L,0x659FCC28L},{0x22CA9314L,0x659FCC28L,0x35DD7660L,0x659FCC28L},{0x22CA9314L,0x659FCC28L,0x35DD7660L,0x659FCC28L},{0x22CA9314L,0x659FCC28L,0x35DD7660L,0x659FCC28L},{0x22CA9314L,0x659FCC28L,0x35DD7660L,0x659FCC28L},{0x22CA9314L,0x659FCC28L,0x35DD7660L,0x659FCC28L},{0x22CA9314L,0x659FCC28L,0x35DD7660L,0x659FCC28L},{0x22CA9314L,0x659FCC28L,0x35DD7660L,0x659FCC28L},{0x22CA9314L,0x659FCC28L,0x35DD7660L,0x659FCC28L}},{{0x22CA9314L,0x659FCC28L,0x35DD7660L,0x659FCC28L},{0x22CA9314L,0x659FCC28L,0x35DD7660L,0x659FCC28L},{0x22CA9314L,0x659FCC28L,0x35DD7660L,0x659FCC28L},{0x22CA9314L,0x659FCC28L,0x35DD7660L,0x659FCC28L},{0x22CA9314L,0x659FCC28L,0x35DD7660L,0x659FCC28L},{0x22CA9314L,0x659FCC28L,0x35DD7660L,0x659FCC28L},{0x22CA9314L,0x659FCC28L,0x35DD7660L,0x659FCC28L},{0x22CA9314L,0x659FCC28L,0x35DD7660L,0x659FCC28L},{0x22CA9314L,0x659FCC28L,0x35DD7660L,0x659FCC28L}},{{0x22CA9314L,0x659FCC28L,0x35DD7660L,0x659FCC28L},{0x22CA9314L,0x659FCC28L,0x35DD7660L,0x659FCC28L},{0x22CA9314L,0x659FCC28L,0x35DD7660L,0x659FCC28L},{0x22CA9314L,0x659FCC28L,0x35DD7660L,0x659FCC28L},{0x22CA9314L,0x659FCC28L,0x35DD7660L,0x659FCC28L},{0x22CA9314L,0x659FCC28L,0x35DD7660L,0x659FCC28L},{0x22CA9314L,0x659FCC28L,0x35DD7660L,0x659FCC28L},{0x22CA9314L,0x659FCC28L,0x35DD7660L,0x659FCC28L},{0x22CA9314L,0x659FCC28L,0x35DD7660L,0x659FCC28L}},{{0x22CA9314L,0x659FCC28L,0x35DD7660L,0x659FCC28L},{0x22CA9314L,0x659FCC28L,0x35DD7660L,0x659FCC28L},{0x22CA9314L,0x659FCC28L,0x35DD7660L,0x659FCC28L},{0x22CA9314L,0x659FCC28L,0x35DD7660L,0x659FCC28L},{0x22CA9314L,0x659FCC28L,0x35DD7660L,0x659FCC28L},{0x22CA9314L,0x659FCC28L,0x35DD7660L,0x659FCC28L},{0x22CA9314L,0x659FCC28L,0x35DD7660L,0x659FCC28L},{0x22CA9314L,0x659FCC28L,0x35DD7660L,0x659FCC28L},{0x22CA9314L,0x659FCC28L,0x35DD7660L,0x659FCC28L}}}, // p_1658->g_1342
        0x24FFDD1A9A6839E9L, // p_1658->g_1464
        {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}}, // p_1658->g_1493
        &p_1658->g_1493[0][1][6], // p_1658->g_1492
        {{{&p_1658->g_1492}}}, // p_1658->g_1491
        {{&p_1658->g_116,&p_1658->g_116,&p_1658->g_116,&p_1658->g_116},{&p_1658->g_116,&p_1658->g_116,&p_1658->g_116,&p_1658->g_116},{&p_1658->g_116,&p_1658->g_116,&p_1658->g_116,&p_1658->g_116},{&p_1658->g_116,&p_1658->g_116,&p_1658->g_116,&p_1658->g_116},{&p_1658->g_116,&p_1658->g_116,&p_1658->g_116,&p_1658->g_116},{&p_1658->g_116,&p_1658->g_116,&p_1658->g_116,&p_1658->g_116},{&p_1658->g_116,&p_1658->g_116,&p_1658->g_116,&p_1658->g_116},{&p_1658->g_116,&p_1658->g_116,&p_1658->g_116,&p_1658->g_116},{&p_1658->g_116,&p_1658->g_116,&p_1658->g_116,&p_1658->g_116}}, // p_1658->g_1501
        &p_1658->g_1501[6][3], // p_1658->g_1500
        (void*)0, // p_1658->g_1507
        &p_1658->g_1507, // p_1658->g_1506
        {{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}}, // p_1658->g_1517
        0x53C0EDB7L, // p_1658->g_1635
        sequence_input[get_global_id(0)], // p_1658->global_0_offset
        sequence_input[get_global_id(1)], // p_1658->global_1_offset
        sequence_input[get_global_id(2)], // p_1658->global_2_offset
        sequence_input[get_local_id(0)], // p_1658->local_0_offset
        sequence_input[get_local_id(1)], // p_1658->local_1_offset
        sequence_input[get_local_id(2)], // p_1658->local_2_offset
        sequence_input[get_group_id(0)], // p_1658->group_0_offset
        sequence_input[get_group_id(1)], // p_1658->group_1_offset
        sequence_input[get_group_id(2)], // p_1658->group_2_offset
    };
    c_1659 = c_1660;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1658);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1658->g_2, "p_1658->g_2", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1658->g_28[i], "p_1658->g_28[i]", print_hash_value);

    }
    transparent_crc(p_1658->g_44, "p_1658->g_44", print_hash_value);
    transparent_crc(p_1658->g_48, "p_1658->g_48", print_hash_value);
    transparent_crc(p_1658->g_73, "p_1658->g_73", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1658->g_89[i], "p_1658->g_89[i]", print_hash_value);

    }
    transparent_crc(p_1658->g_109, "p_1658->g_109", print_hash_value);
    transparent_crc(p_1658->g_112, "p_1658->g_112", print_hash_value);
    transparent_crc(p_1658->g_116, "p_1658->g_116", print_hash_value);
    transparent_crc(p_1658->g_145, "p_1658->g_145", print_hash_value);
    transparent_crc(p_1658->g_173, "p_1658->g_173", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 1; j++)
        {
            transparent_crc(p_1658->g_194[i][j], "p_1658->g_194[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1658->g_207, "p_1658->g_207", print_hash_value);
    transparent_crc(p_1658->g_250, "p_1658->g_250", print_hash_value);
    transparent_crc(p_1658->g_251, "p_1658->g_251", print_hash_value);
    transparent_crc(p_1658->g_258, "p_1658->g_258", print_hash_value);
    transparent_crc(p_1658->g_265, "p_1658->g_265", print_hash_value);
    transparent_crc(p_1658->g_267, "p_1658->g_267", print_hash_value);
    transparent_crc(p_1658->g_293, "p_1658->g_293", print_hash_value);
    transparent_crc(p_1658->g_295, "p_1658->g_295", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1658->g_329[i], "p_1658->g_329[i]", print_hash_value);

    }
    transparent_crc(p_1658->g_367, "p_1658->g_367", print_hash_value);
    transparent_crc(p_1658->g_424, "p_1658->g_424", print_hash_value);
    transparent_crc(p_1658->g_497, "p_1658->g_497", print_hash_value);
    transparent_crc(p_1658->g_500, "p_1658->g_500", print_hash_value);
    transparent_crc(p_1658->g_501, "p_1658->g_501", print_hash_value);
    transparent_crc(p_1658->g_502, "p_1658->g_502", print_hash_value);
    transparent_crc(p_1658->g_511, "p_1658->g_511", print_hash_value);
    transparent_crc(p_1658->g_582, "p_1658->g_582", print_hash_value);
    transparent_crc(p_1658->g_583, "p_1658->g_583", print_hash_value);
    transparent_crc(p_1658->g_669, "p_1658->g_669", print_hash_value);
    transparent_crc(p_1658->g_670, "p_1658->g_670", print_hash_value);
    transparent_crc(p_1658->g_671, "p_1658->g_671", print_hash_value);
    transparent_crc(p_1658->g_675, "p_1658->g_675", print_hash_value);
    transparent_crc(p_1658->g_685, "p_1658->g_685", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_1658->g_688[i], "p_1658->g_688[i]", print_hash_value);

    }
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 7; j++)
        {
            for (k = 0; k < 8; k++)
            {
                transparent_crc(p_1658->g_694[i][j][k], "p_1658->g_694[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1658->g_771, "p_1658->g_771", print_hash_value);
    transparent_crc(p_1658->g_774, "p_1658->g_774", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 1; j++)
        {
            transparent_crc(p_1658->g_794[i][j], "p_1658->g_794[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1658->g_938, "p_1658->g_938", print_hash_value);
    transparent_crc(p_1658->g_950, "p_1658->g_950", print_hash_value);
    transparent_crc(p_1658->g_1007, "p_1658->g_1007", print_hash_value);
    transparent_crc(p_1658->g_1154, "p_1658->g_1154", print_hash_value);
    transparent_crc(p_1658->g_1182, "p_1658->g_1182", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_1658->g_1210[i][j], "p_1658->g_1210[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1658->g_1268, "p_1658->g_1268", print_hash_value);
    transparent_crc(p_1658->g_1269, "p_1658->g_1269", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 4; j++)
        {
            for (k = 0; k < 7; k++)
            {
                transparent_crc(p_1658->g_1271[i][j][k], "p_1658->g_1271[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 4; k++)
            {
                transparent_crc(p_1658->g_1342[i][j][k], "p_1658->g_1342[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1658->g_1464, "p_1658->g_1464", print_hash_value);
    transparent_crc(p_1658->g_1635, "p_1658->g_1635", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
