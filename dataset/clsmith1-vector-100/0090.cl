// ---fake_divergence -g 36,14,5 -l 3,1,1
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


// Seed: 90

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    uint16_t g_14;
    int32_t g_29[4];
    int32_t *g_30;
    int64_t g_64;
    volatile VECTOR(int64_t, 16) g_65;
    VECTOR(int32_t, 2) g_67;
    volatile VECTOR(uint32_t, 16) g_78;
    volatile VECTOR(int64_t, 4) g_84;
    VECTOR(uint8_t, 16) g_97;
    int64_t g_106;
    int16_t g_108;
    VECTOR(uint64_t, 8) g_109;
    int32_t *g_143;
    int8_t g_156[6][3];
    VECTOR(int32_t, 2) g_158;
    int32_t g_168[1];
    int32_t g_170;
    uint16_t g_188;
    VECTOR(int16_t, 8) g_190;
    VECTOR(int16_t, 16) g_191;
    VECTOR(uint16_t, 16) g_194;
    VECTOR(int16_t, 16) g_202;
    uint64_t *g_227[9][7][4];
    uint64_t * volatile *g_226;
    int32_t g_256;
    VECTOR(uint16_t, 8) g_273;
    uint32_t g_290[3];
    uint32_t g_292;
    VECTOR(uint64_t, 2) g_309;
    uint32_t g_319;
    uint16_t g_355;
    VECTOR(int32_t, 4) g_372;
    VECTOR(int64_t, 8) g_399;
    uint8_t g_412;
    VECTOR(int8_t, 16) g_430;
    VECTOR(uint64_t, 8) g_480;
    VECTOR(uint16_t, 8) g_498;
    VECTOR(uint64_t, 2) g_499;
    uint64_t g_508;
    VECTOR(int8_t, 16) g_514;
    uint32_t *g_518;
    VECTOR(int32_t, 2) g_548;
    int32_t g_578;
    int64_t *g_595;
    int64_t **g_594;
    VECTOR(uint16_t, 8) g_596;
    uint32_t g_605;
    uint32_t g_608[2];
    VECTOR(uint8_t, 2) g_649;
    uint16_t g_660;
    uint16_t * volatile *g_690;
    uint16_t * volatile **g_689;
    VECTOR(uint16_t, 16) g_692;
    uint32_t *g_697;
    uint32_t **g_696;
    int32_t ** volatile g_791;
    VECTOR(int32_t, 8) g_828;
    volatile VECTOR(int32_t, 2) g_830;
    int64_t ***g_835;
    int64_t ***g_836;
    int32_t ** volatile g_841;
    uint16_t *g_866;
    uint16_t **g_865;
    volatile VECTOR(int16_t, 8) g_892;
    volatile VECTOR(int16_t, 2) g_938;
    VECTOR(uint16_t, 8) g_941;
    uint64_t g_942;
    int16_t g_946;
    int32_t ** volatile g_983;
    VECTOR(uint16_t, 2) g_1048;
    VECTOR(uint8_t, 16) g_1061;
    volatile VECTOR(int64_t, 4) g_1086;
    int32_t ** volatile g_1141;
    volatile VECTOR(int32_t, 16) g_1188;
    int32_t *g_1190;
    int32_t * volatile *g_1189;
    volatile VECTOR(int64_t, 16) g_1203;
    int16_t *g_1225[10];
    VECTOR(int32_t, 4) g_1229;
    int32_t g_1258[8];
    int32_t **g_1265;
    int32_t ** volatile g_1277;
    volatile VECTOR(uint64_t, 2) g_1291;
    volatile VECTOR(uint32_t, 2) g_1306;
    volatile int64_t * volatile * volatile g_1337;
    volatile int64_t * volatile * volatile *g_1336[10];
    volatile int64_t * volatile * volatile ** volatile g_1335;
    volatile int64_t * volatile * volatile ** volatile *g_1334;
    volatile VECTOR(uint16_t, 16) g_1341;
    volatile VECTOR(int8_t, 16) g_1399;
    VECTOR(int8_t, 2) g_1400;
    VECTOR(int8_t, 4) g_1413;
    VECTOR(uint8_t, 16) g_1454;
    VECTOR(uint8_t, 2) g_1461;
    int32_t g_1465;
    uint8_t *g_1486;
    uint8_t **g_1485;
    volatile VECTOR(int32_t, 8) g_1527;
    VECTOR(int32_t, 8) g_1529;
    volatile VECTOR(uint8_t, 4) g_1542;
    VECTOR(uint8_t, 8) g_1578;
    VECTOR(uint8_t, 8) g_1581;
    int32_t * volatile g_1586[7];
    int32_t * volatile g_1587;
    int32_t * volatile g_1588[9][7];
    int32_t * volatile g_1589;
    int32_t * volatile g_1591[4];
    int32_t * volatile g_1592;
    volatile uint32_t **g_1599;
    volatile uint32_t ***g_1598;
    VECTOR(uint16_t, 16) g_1618;
    VECTOR(uint16_t, 16) g_1621;
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
int32_t  func_1(struct S0 * p_1642);
uint64_t  func_2(uint8_t  p_3, uint16_t  p_4, uint64_t  p_5, uint32_t  p_6, uint32_t  p_7, struct S0 * p_1642);
int32_t  func_20(uint32_t  p_21, int32_t  p_22, uint32_t  p_23, struct S0 * p_1642);
int16_t  func_26(uint32_t  p_27, struct S0 * p_1642);
int64_t  func_41(int8_t * p_42, int8_t  p_43, uint16_t  p_44, struct S0 * p_1642);
int8_t * func_45(uint32_t  p_46, int32_t * p_47, int32_t  p_48, struct S0 * p_1642);
int32_t * func_87(int32_t  p_88, int32_t * p_89, struct S0 * p_1642);
int16_t  func_100(uint8_t  p_101, int32_t * p_102, uint32_t  p_103, struct S0 * p_1642);
int8_t  func_112(int64_t  p_113, int32_t  p_114, struct S0 * p_1642);
uint8_t  func_115(uint64_t  p_116, int64_t  p_117, uint32_t  p_118, int16_t * p_119, int16_t * p_120, struct S0 * p_1642);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1642->g_14 p_1642->g_30 p_1642->g_946 p_1642->g_156 p_1642->g_170 p_1642->g_290 p_1642->g_828 p_1642->g_1189 p_1642->g_498 p_1642->g_605 p_1642->g_1258 p_1642->g_866 p_1642->g_355 p_1642->g_1277 p_1642->g_689 p_1642->g_690 p_1642->g_518 p_1642->g_1334 p_1642->g_399 p_1642->g_660 p_1642->g_109 p_1642->g_649 p_1642->g_942 p_1642->g_594 p_1642->g_595 p_1642->g_938 p_1642->g_106 p_1642->g_412 p_1642->g_191 p_1642->g_168 p_1642->g_548 p_1642->g_97 p_1642->g_696 p_1642->g_697 p_1642->g_108 p_1642->g_508 p_1642->g_596 p_1642->g_158 p_1642->g_292 p_1642->g_1454 p_1642->g_1461 p_1642->g_1465 p_1642->g_1485 p_1642->g_1486 p_1642->g_1229 p_1642->g_983 p_1642->g_1527 p_1642->g_1529 p_1642->g_1542 p_1642->g_188 p_1642->g_1578 p_1642->g_1581 p_1642->g_1265 p_1642->g_1190 p_1642->g_578 p_1642->g_29 p_1642->g_1598 p_1642->g_1618 p_1642->g_1621
 * writes: p_1642->g_29 p_1642->g_946 p_1642->g_828 p_1642->g_412 p_1642->g_156 p_1642->g_170 p_1642->g_64 p_1642->g_1225 p_1642->g_1265 p_1642->g_143 p_1642->g_30 p_1642->g_106 p_1642->g_108 p_1642->g_227 p_1642->g_942 p_1642->g_188 p_1642->g_660 p_1642->g_67 p_1642->g_578 p_1642->g_168 p_1642->g_256 p_1642->g_508 p_1642->g_430 p_1642->g_158 p_1642->g_355 p_1642->g_292 p_1642->g_649 p_1642->g_290 p_1642->g_399
 */
int32_t  func_1(struct S0 * p_1642)
{ /* block id: 4 */
    uint32_t l_15 = 4294967295UL;
    int32_t *l_1585 = (void*)0;
    int32_t *l_1590 = (void*)0;
    int32_t *l_1593 = &p_1642->g_168[0];
    VECTOR(int32_t, 4) l_1608 = (VECTOR(int32_t, 4))(5L, (VECTOR(int32_t, 2))(5L, 0x535B769DL), 0x535B769DL);
    uint64_t *l_1620 = &p_1642->g_508;
    uint64_t **l_1619 = &l_1620;
    uint16_t *l_1629[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
    int8_t l_1637 = (-1L);
    int32_t l_1641[8][3][5] = {{{0x249DEE35L,0x249DEE35L,0x36757752L,(-1L),9L},{0x249DEE35L,0x249DEE35L,0x36757752L,(-1L),9L},{0x249DEE35L,0x249DEE35L,0x36757752L,(-1L),9L}},{{0x249DEE35L,0x249DEE35L,0x36757752L,(-1L),9L},{0x249DEE35L,0x249DEE35L,0x36757752L,(-1L),9L},{0x249DEE35L,0x249DEE35L,0x36757752L,(-1L),9L}},{{0x249DEE35L,0x249DEE35L,0x36757752L,(-1L),9L},{0x249DEE35L,0x249DEE35L,0x36757752L,(-1L),9L},{0x249DEE35L,0x249DEE35L,0x36757752L,(-1L),9L}},{{0x249DEE35L,0x249DEE35L,0x36757752L,(-1L),9L},{0x249DEE35L,0x249DEE35L,0x36757752L,(-1L),9L},{0x249DEE35L,0x249DEE35L,0x36757752L,(-1L),9L}},{{0x249DEE35L,0x249DEE35L,0x36757752L,(-1L),9L},{0x249DEE35L,0x249DEE35L,0x36757752L,(-1L),9L},{0x249DEE35L,0x249DEE35L,0x36757752L,(-1L),9L}},{{0x249DEE35L,0x249DEE35L,0x36757752L,(-1L),9L},{0x249DEE35L,0x249DEE35L,0x36757752L,(-1L),9L},{0x249DEE35L,0x249DEE35L,0x36757752L,(-1L),9L}},{{0x249DEE35L,0x249DEE35L,0x36757752L,(-1L),9L},{0x249DEE35L,0x249DEE35L,0x36757752L,(-1L),9L},{0x249DEE35L,0x249DEE35L,0x36757752L,(-1L),9L}},{{0x249DEE35L,0x249DEE35L,0x36757752L,(-1L),9L},{0x249DEE35L,0x249DEE35L,0x36757752L,(-1L),9L},{0x249DEE35L,0x249DEE35L,0x36757752L,(-1L),9L}}};
    int i, j, k;
    (*l_1593) = (func_2(((((*p_1642->g_518) = ((safe_add_func_uint64_t_u_u((safe_mul_func_int16_t_s_s((FAKE_DIVERGE(p_1642->group_0_offset, get_group_id(0), 10) == ((safe_lshift_func_uint8_t_u_s(p_1642->g_14, (0x9B2E4145C1747346L <= l_15))) | (safe_add_func_uint32_t_u_u(((((safe_sub_func_int32_t_s_s(func_20((safe_add_func_int16_t_s_s((p_1642->g_14 == (GROUP_DIVERGE(0, 1) != (func_26(l_15, p_1642) != FAKE_DIVERGE(p_1642->local_0_offset, get_local_id(0), 10)))), l_15)), (((void*)0 == p_1642->g_30) != p_1642->g_14), l_15, p_1642), (*p_1642->g_518))) < 0x0AL) , l_15) != l_15), l_15)))), l_15)), l_15)) , GROUP_DIVERGE(0, 1))) | l_15) & 0x28D987D5L), l_15, l_15, p_1642->g_1229.w, l_15, p_1642) >= GROUP_DIVERGE(2, 1));
    for (p_1642->g_508 = 0; (p_1642->g_508 != 54); p_1642->g_508++)
    { /* block id: 622 */
        int64_t ****l_1604 = &p_1642->g_835;
        int32_t l_1607[10][5] = {{0x04A36869L,(-6L),3L,0x59E6E70FL,(-6L)},{0x04A36869L,(-6L),3L,0x59E6E70FL,(-6L)},{0x04A36869L,(-6L),3L,0x59E6E70FL,(-6L)},{0x04A36869L,(-6L),3L,0x59E6E70FL,(-6L)},{0x04A36869L,(-6L),3L,0x59E6E70FL,(-6L)},{0x04A36869L,(-6L),3L,0x59E6E70FL,(-6L)},{0x04A36869L,(-6L),3L,0x59E6E70FL,(-6L)},{0x04A36869L,(-6L),3L,0x59E6E70FL,(-6L)},{0x04A36869L,(-6L),3L,0x59E6E70FL,(-6L)},{0x04A36869L,(-6L),3L,0x59E6E70FL,(-6L)}};
        VECTOR(uint16_t, 8) l_1617 = (VECTOR(uint16_t, 8))(0x45AFL, (VECTOR(uint16_t, 4))(0x45AFL, (VECTOR(uint16_t, 2))(0x45AFL, 0x8201L), 0x8201L), 0x8201L, 0x45AFL, 0x8201L);
        uint8_t l_1626 = 250UL;
        uint16_t *l_1630 = (void*)0;
        uint32_t l_1631 = 0x6B9167FAL;
        int32_t l_1632[10] = {0L,1L,3L,1L,0L,0L,1L,3L,1L,0L};
        int32_t l_1635 = 0x24ED275AL;
        int i, j;
        for (p_1642->g_188 = 0; (p_1642->g_188 >= 10); p_1642->g_188 = safe_add_func_uint32_t_u_u(p_1642->g_188, 4))
        { /* block id: 625 */
            int32_t **l_1609 = &p_1642->g_30;
            int32_t ***l_1610 = &l_1609;
            int32_t *l_1633 = (void*)0;
            int32_t *l_1634[9] = {&p_1642->g_1465,&p_1642->g_1465,&p_1642->g_1465,&p_1642->g_1465,&p_1642->g_1465,&p_1642->g_1465,&p_1642->g_1465,&p_1642->g_1465,&p_1642->g_1465};
            int16_t l_1636 = 0x3DC1L;
            uint8_t l_1638 = 246UL;
            int i;
            (*l_1593) &= ((p_1642->g_1598 == &p_1642->g_1599) > (safe_sub_func_int8_t_s_s(((((safe_sub_func_uint32_t_u_u(((void*)0 != l_1604), ((safe_div_func_int8_t_s_s(l_1607[1][0], 0xD7L)) || ((VECTOR(int32_t, 2))(l_1608.wy)).even))) , &p_1642->g_1589) == ((*l_1610) = l_1609)) == 4UL), (**p_1642->g_1485))));
            l_1632[7] |= ((VECTOR(int32_t, 16))((((safe_rshift_func_int16_t_s_s(0L, 14)) <= ((safe_mod_func_uint8_t_u_u(((safe_sub_func_int16_t_s_s(l_1607[1][0], ((*p_1642->g_866) = (((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(l_1617.s50255417)), ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 8))(p_1642->g_1618.s86b7cfe9)).s26)), (((void*)0 == l_1619) ^ l_1617.s3), ((VECTOR(uint16_t, 2))(mad_sat(((VECTOR(uint16_t, 8))(p_1642->g_1621.sc4f2e85a)).s33, ((VECTOR(uint16_t, 2))(clz(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(((safe_sub_func_int8_t_s_s(((VECTOR(int8_t, 2))(0x3DL, 0x70L)).odd, (((safe_mod_func_int16_t_s_s(((VECTOR(int16_t, 8))(l_1617.s2, l_1626, ((safe_rshift_func_uint8_t_u_u((*p_1642->g_1486), 2)) , ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 16))(mul_hi(((VECTOR(int16_t, 4))(((((l_1626 < 4294967295UL) , l_1629[0]) != l_1630) && (-3L)), 0x6FD1L, 0L, 0x4B39L)).yzzxywwzyzwwwywz, ((VECTOR(int16_t, 16))(0x7D6AL))))))).s5), l_1617.s2, 0x0838L, ((VECTOR(int16_t, 2))(0x7BD4L)), 0x584AL)).s0, (*l_1593))) >= l_1617.s4) || (*l_1593)))) & l_1617.s5), l_1607[6][2], 0x09B2L, 0x6648L, 0x4DC6L, 0x4050L, 0x6030L, 0x93E4L)).s7703417265732404)).scbb9)).odd))), ((VECTOR(uint16_t, 2))(2UL))))), ((VECTOR(uint16_t, 2))(4UL)), 65526UL)))).s1 <= GROUP_DIVERGE(1, 1))))) <= (*l_1593)), 255UL)) , 18446744073709551615UL)) || l_1631), ((VECTOR(int32_t, 2))((-8L))), ((VECTOR(int32_t, 8))(1L)), l_1617.s6, 0L, ((VECTOR(int32_t, 2))(0x64253357L)), 1L)).s9;
            --l_1638;
        }
        (*l_1593) = (&p_1642->g_108 != (void*)0);
    }
    return l_1641[1][1][3];
}


/* ------------------------------------------ */
/* 
 * reads : p_1642->g_983 p_1642->g_1527 p_1642->g_1529 p_1642->g_1485 p_1642->g_1486 p_1642->g_412 p_1642->g_1542 p_1642->g_518 p_1642->g_290 p_1642->g_158 p_1642->g_828 p_1642->g_188 p_1642->g_1578 p_1642->g_1581 p_1642->g_1265 p_1642->g_1190 p_1642->g_578 p_1642->g_548 p_1642->g_29
 * writes: p_1642->g_143 p_1642->g_158 p_1642->g_156 p_1642->g_828 p_1642->g_106 p_1642->g_399 p_1642->g_578 p_1642->g_412 p_1642->g_29 p_1642->g_64
 */
uint64_t  func_2(uint8_t  p_3, uint16_t  p_4, uint64_t  p_5, uint32_t  p_6, uint32_t  p_7, struct S0 * p_1642)
{ /* block id: 602 */
    int32_t *l_1518 = (void*)0;
    int32_t **l_1519[4][9][6] = {{{&p_1642->g_30,(void*)0,&p_1642->g_143,&p_1642->g_30,&p_1642->g_143,&p_1642->g_30},{&p_1642->g_30,(void*)0,&p_1642->g_143,&p_1642->g_30,&p_1642->g_143,&p_1642->g_30},{&p_1642->g_30,(void*)0,&p_1642->g_143,&p_1642->g_30,&p_1642->g_143,&p_1642->g_30},{&p_1642->g_30,(void*)0,&p_1642->g_143,&p_1642->g_30,&p_1642->g_143,&p_1642->g_30},{&p_1642->g_30,(void*)0,&p_1642->g_143,&p_1642->g_30,&p_1642->g_143,&p_1642->g_30},{&p_1642->g_30,(void*)0,&p_1642->g_143,&p_1642->g_30,&p_1642->g_143,&p_1642->g_30},{&p_1642->g_30,(void*)0,&p_1642->g_143,&p_1642->g_30,&p_1642->g_143,&p_1642->g_30},{&p_1642->g_30,(void*)0,&p_1642->g_143,&p_1642->g_30,&p_1642->g_143,&p_1642->g_30},{&p_1642->g_30,(void*)0,&p_1642->g_143,&p_1642->g_30,&p_1642->g_143,&p_1642->g_30}},{{&p_1642->g_30,(void*)0,&p_1642->g_143,&p_1642->g_30,&p_1642->g_143,&p_1642->g_30},{&p_1642->g_30,(void*)0,&p_1642->g_143,&p_1642->g_30,&p_1642->g_143,&p_1642->g_30},{&p_1642->g_30,(void*)0,&p_1642->g_143,&p_1642->g_30,&p_1642->g_143,&p_1642->g_30},{&p_1642->g_30,(void*)0,&p_1642->g_143,&p_1642->g_30,&p_1642->g_143,&p_1642->g_30},{&p_1642->g_30,(void*)0,&p_1642->g_143,&p_1642->g_30,&p_1642->g_143,&p_1642->g_30},{&p_1642->g_30,(void*)0,&p_1642->g_143,&p_1642->g_30,&p_1642->g_143,&p_1642->g_30},{&p_1642->g_30,(void*)0,&p_1642->g_143,&p_1642->g_30,&p_1642->g_143,&p_1642->g_30},{&p_1642->g_30,(void*)0,&p_1642->g_143,&p_1642->g_30,&p_1642->g_143,&p_1642->g_30},{&p_1642->g_30,(void*)0,&p_1642->g_143,&p_1642->g_30,&p_1642->g_143,&p_1642->g_30}},{{&p_1642->g_30,(void*)0,&p_1642->g_143,&p_1642->g_30,&p_1642->g_143,&p_1642->g_30},{&p_1642->g_30,(void*)0,&p_1642->g_143,&p_1642->g_30,&p_1642->g_143,&p_1642->g_30},{&p_1642->g_30,(void*)0,&p_1642->g_143,&p_1642->g_30,&p_1642->g_143,&p_1642->g_30},{&p_1642->g_30,(void*)0,&p_1642->g_143,&p_1642->g_30,&p_1642->g_143,&p_1642->g_30},{&p_1642->g_30,(void*)0,&p_1642->g_143,&p_1642->g_30,&p_1642->g_143,&p_1642->g_30},{&p_1642->g_30,(void*)0,&p_1642->g_143,&p_1642->g_30,&p_1642->g_143,&p_1642->g_30},{&p_1642->g_30,(void*)0,&p_1642->g_143,&p_1642->g_30,&p_1642->g_143,&p_1642->g_30},{&p_1642->g_30,(void*)0,&p_1642->g_143,&p_1642->g_30,&p_1642->g_143,&p_1642->g_30},{&p_1642->g_30,(void*)0,&p_1642->g_143,&p_1642->g_30,&p_1642->g_143,&p_1642->g_30}},{{&p_1642->g_30,(void*)0,&p_1642->g_143,&p_1642->g_30,&p_1642->g_143,&p_1642->g_30},{&p_1642->g_30,(void*)0,&p_1642->g_143,&p_1642->g_30,&p_1642->g_143,&p_1642->g_30},{&p_1642->g_30,(void*)0,&p_1642->g_143,&p_1642->g_30,&p_1642->g_143,&p_1642->g_30},{&p_1642->g_30,(void*)0,&p_1642->g_143,&p_1642->g_30,&p_1642->g_143,&p_1642->g_30},{&p_1642->g_30,(void*)0,&p_1642->g_143,&p_1642->g_30,&p_1642->g_143,&p_1642->g_30},{&p_1642->g_30,(void*)0,&p_1642->g_143,&p_1642->g_30,&p_1642->g_143,&p_1642->g_30},{&p_1642->g_30,(void*)0,&p_1642->g_143,&p_1642->g_30,&p_1642->g_143,&p_1642->g_30},{&p_1642->g_30,(void*)0,&p_1642->g_143,&p_1642->g_30,&p_1642->g_143,&p_1642->g_30},{&p_1642->g_30,(void*)0,&p_1642->g_143,&p_1642->g_30,&p_1642->g_143,&p_1642->g_30}}};
    uint32_t l_1520 = 3UL;
    int64_t ****l_1524 = (void*)0;
    int64_t *****l_1523[6] = {&l_1524,&l_1524,&l_1524,&l_1524,&l_1524,&l_1524};
    VECTOR(int32_t, 16) l_1528 = (VECTOR(int32_t, 16))(0x70CBB5E3L, (VECTOR(int32_t, 4))(0x70CBB5E3L, (VECTOR(int32_t, 2))(0x70CBB5E3L, 0x455617D2L), 0x455617D2L), 0x455617D2L, 0x70CBB5E3L, 0x455617D2L, (VECTOR(int32_t, 2))(0x70CBB5E3L, 0x455617D2L), (VECTOR(int32_t, 2))(0x70CBB5E3L, 0x455617D2L), 0x70CBB5E3L, 0x455617D2L, 0x70CBB5E3L, 0x455617D2L);
    VECTOR(int32_t, 16) l_1530 = (VECTOR(int32_t, 16))(0x0E804E28L, (VECTOR(int32_t, 4))(0x0E804E28L, (VECTOR(int32_t, 2))(0x0E804E28L, 0x3B14D533L), 0x3B14D533L), 0x3B14D533L, 0x0E804E28L, 0x3B14D533L, (VECTOR(int32_t, 2))(0x0E804E28L, 0x3B14D533L), (VECTOR(int32_t, 2))(0x0E804E28L, 0x3B14D533L), 0x0E804E28L, 0x3B14D533L, 0x0E804E28L, 0x3B14D533L);
    int8_t *l_1533 = (void*)0;
    int8_t *l_1534 = (void*)0;
    int8_t *l_1535 = (void*)0;
    int8_t *l_1536 = (void*)0;
    int8_t *l_1537 = (void*)0;
    int8_t *l_1538[6][4][4] = {{{&p_1642->g_156[5][2],&p_1642->g_156[4][1],(void*)0,(void*)0},{&p_1642->g_156[5][2],&p_1642->g_156[4][1],(void*)0,(void*)0},{&p_1642->g_156[5][2],&p_1642->g_156[4][1],(void*)0,(void*)0},{&p_1642->g_156[5][2],&p_1642->g_156[4][1],(void*)0,(void*)0}},{{&p_1642->g_156[5][2],&p_1642->g_156[4][1],(void*)0,(void*)0},{&p_1642->g_156[5][2],&p_1642->g_156[4][1],(void*)0,(void*)0},{&p_1642->g_156[5][2],&p_1642->g_156[4][1],(void*)0,(void*)0},{&p_1642->g_156[5][2],&p_1642->g_156[4][1],(void*)0,(void*)0}},{{&p_1642->g_156[5][2],&p_1642->g_156[4][1],(void*)0,(void*)0},{&p_1642->g_156[5][2],&p_1642->g_156[4][1],(void*)0,(void*)0},{&p_1642->g_156[5][2],&p_1642->g_156[4][1],(void*)0,(void*)0},{&p_1642->g_156[5][2],&p_1642->g_156[4][1],(void*)0,(void*)0}},{{&p_1642->g_156[5][2],&p_1642->g_156[4][1],(void*)0,(void*)0},{&p_1642->g_156[5][2],&p_1642->g_156[4][1],(void*)0,(void*)0},{&p_1642->g_156[5][2],&p_1642->g_156[4][1],(void*)0,(void*)0},{&p_1642->g_156[5][2],&p_1642->g_156[4][1],(void*)0,(void*)0}},{{&p_1642->g_156[5][2],&p_1642->g_156[4][1],(void*)0,(void*)0},{&p_1642->g_156[5][2],&p_1642->g_156[4][1],(void*)0,(void*)0},{&p_1642->g_156[5][2],&p_1642->g_156[4][1],(void*)0,(void*)0},{&p_1642->g_156[5][2],&p_1642->g_156[4][1],(void*)0,(void*)0}},{{&p_1642->g_156[5][2],&p_1642->g_156[4][1],(void*)0,(void*)0},{&p_1642->g_156[5][2],&p_1642->g_156[4][1],(void*)0,(void*)0},{&p_1642->g_156[5][2],&p_1642->g_156[4][1],(void*)0,(void*)0},{&p_1642->g_156[5][2],&p_1642->g_156[4][1],(void*)0,(void*)0}}};
    int32_t l_1539 = 0x214D959AL;
    VECTOR(int64_t, 2) l_1545 = (VECTOR(int64_t, 2))((-1L), 0x6C00A5D43105E304L);
    uint16_t ***l_1546[10][10][2] = {{{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865}},{{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865}},{{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865}},{{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865}},{{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865}},{{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865}},{{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865}},{{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865}},{{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865}},{{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865}}};
    uint16_t ***l_1547[3][8] = {{&p_1642->g_865,&p_1642->g_865,&p_1642->g_865,&p_1642->g_865,&p_1642->g_865,&p_1642->g_865,&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865,&p_1642->g_865,&p_1642->g_865,&p_1642->g_865,&p_1642->g_865,&p_1642->g_865,&p_1642->g_865},{&p_1642->g_865,&p_1642->g_865,&p_1642->g_865,&p_1642->g_865,&p_1642->g_865,&p_1642->g_865,&p_1642->g_865,&p_1642->g_865}};
    VECTOR(int64_t, 16) l_1554 = (VECTOR(int64_t, 16))((-9L), (VECTOR(int64_t, 4))((-9L), (VECTOR(int64_t, 2))((-9L), 7L), 7L), 7L, (-9L), 7L, (VECTOR(int64_t, 2))((-9L), 7L), (VECTOR(int64_t, 2))((-9L), 7L), (-9L), 7L, (-9L), 7L);
    VECTOR(int64_t, 4) l_1555 = (VECTOR(int64_t, 4))(0x36780A8724B72954L, (VECTOR(int64_t, 2))(0x36780A8724B72954L, 0x66507F3ACD70A200L), 0x66507F3ACD70A200L);
    VECTOR(int64_t, 4) l_1556 = (VECTOR(int64_t, 4))(0x45A7F2CA9CC30165L, (VECTOR(int64_t, 2))(0x45A7F2CA9CC30165L, 0x7CC1367F2BED6A3CL), 0x7CC1367F2BED6A3CL);
    VECTOR(int64_t, 16) l_1557 = (VECTOR(int64_t, 16))(0x1FE915DB6171DB2BL, (VECTOR(int64_t, 4))(0x1FE915DB6171DB2BL, (VECTOR(int64_t, 2))(0x1FE915DB6171DB2BL, 9L), 9L), 9L, 0x1FE915DB6171DB2BL, 9L, (VECTOR(int64_t, 2))(0x1FE915DB6171DB2BL, 9L), (VECTOR(int64_t, 2))(0x1FE915DB6171DB2BL, 9L), 0x1FE915DB6171DB2BL, 9L, 0x1FE915DB6171DB2BL, 9L);
    uint16_t *l_1560 = (void*)0;
    VECTOR(uint64_t, 2) l_1567 = (VECTOR(uint64_t, 2))(18446744073709551615UL, 0x46602F0537BB6D8CL);
    VECTOR(uint64_t, 8) l_1568 = (VECTOR(uint64_t, 8))(0xA62FEC93729DE0AEL, (VECTOR(uint64_t, 4))(0xA62FEC93729DE0AEL, (VECTOR(uint64_t, 2))(0xA62FEC93729DE0AEL, 18446744073709551610UL), 18446744073709551610UL), 18446744073709551610UL, 0xA62FEC93729DE0AEL, 18446744073709551610UL);
    uint64_t **l_1571[10] = {&p_1642->g_227[2][6][0],&p_1642->g_227[2][6][0],&p_1642->g_227[2][6][0],&p_1642->g_227[2][6][0],&p_1642->g_227[2][6][0],&p_1642->g_227[2][6][0],&p_1642->g_227[2][6][0],&p_1642->g_227[2][6][0],&p_1642->g_227[2][6][0],&p_1642->g_227[2][6][0]};
    uint64_t ***l_1572 = &l_1571[6];
    uint64_t **l_1573[10] = {&p_1642->g_227[7][1][0],&p_1642->g_227[7][1][0],&p_1642->g_227[7][1][0],&p_1642->g_227[7][1][0],&p_1642->g_227[7][1][0],&p_1642->g_227[7][1][0],&p_1642->g_227[7][1][0],&p_1642->g_227[7][1][0],&p_1642->g_227[7][1][0],&p_1642->g_227[7][1][0]};
    VECTOR(int16_t, 16) l_1576 = (VECTOR(int16_t, 16))(0x5C35L, (VECTOR(int16_t, 4))(0x5C35L, (VECTOR(int16_t, 2))(0x5C35L, 0x4A53L), 0x4A53L), 0x4A53L, 0x5C35L, 0x4A53L, (VECTOR(int16_t, 2))(0x5C35L, 0x4A53L), (VECTOR(int16_t, 2))(0x5C35L, 0x4A53L), 0x5C35L, 0x4A53L, 0x5C35L, 0x4A53L);
    VECTOR(int8_t, 8) l_1577 = (VECTOR(int8_t, 8))(0x01L, (VECTOR(int8_t, 4))(0x01L, (VECTOR(int8_t, 2))(0x01L, (-9L)), (-9L)), (-9L), 0x01L, (-9L));
    VECTOR(int16_t, 2) l_1579 = (VECTOR(int16_t, 2))(0x6ECFL, 0L);
    VECTOR(int8_t, 2) l_1580 = (VECTOR(int8_t, 2))((-1L), 0L);
    uint64_t *l_1582 = &p_1642->g_508;
    uint64_t **l_1583 = &l_1582;
    int32_t l_1584 = 0x516C672DL;
    int i, j, k;
    (*p_1642->g_983) = l_1518;
    l_1539 = (l_1520 || (((safe_add_func_uint64_t_u_u(((void*)0 != l_1523[4]), p_5)) > (p_1642->g_156[5][2] = ((safe_lshift_func_int8_t_s_u((((0UL == ((VECTOR(int32_t, 8))(min(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(hadd(((VECTOR(int32_t, 2))(p_1642->g_1527.s45)).yyxyyyyx, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(l_1528.sa98f29e7)).odd)).hi)).yxyxxxxx))).odd)).xwwwyxyy, (int32_t)(p_1642->g_158.x = ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(safe_clamp_func(VECTOR(int32_t, 16),int32_t,((VECTOR(int32_t, 4))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 16))(p_1642->g_1529.s3334706227204611)).s803e, ((VECTOR(int32_t, 4))(p_4, 0x7B0B141DL, 0x01BCDE7FL, 1L)), ((VECTOR(int32_t, 4))(safe_clamp_func(VECTOR(int32_t, 4),int32_t,((VECTOR(int32_t, 8))(sub_sat(((VECTOR(int32_t, 2))(l_1530.s27)).xyxyyxxx, ((VECTOR(int32_t, 4))(0x70877D2FL, ((((((safe_rshift_func_uint16_t_u_s(((void*)0 == &p_1642->g_156[5][2]), p_7)) & 0xDA1044208C526C80L) != 0x71A8791FL) || p_3) < p_4) == p_5), 0x0E196BA5L, 0x7C4068E1L)).wzzzyywx))).hi, (int32_t)p_4, (int32_t)p_5)))))).xyzwwzzywwzzzwzz, (int32_t)0x5E327688L, (int32_t)0L))).s00)).hi)))).s6) < (-9L)) , 0L), (**p_1642->g_1485))) || p_5))) | p_5));
    p_1642->g_828.s7 ^= (safe_mod_func_uint8_t_u_u(((VECTOR(uint8_t, 4))(p_1642->g_1542.xxxz)).w, (safe_mul_func_uint16_t_u_u(0x48C2L, ((((VECTOR(int64_t, 8))(0L, ((VECTOR(int64_t, 4))(l_1545.yyyx)), ((l_1546[3][8][0] = l_1546[3][8][0]) == (p_4 , l_1547[0][5])), 0x3952AD5E51D3AF47L, 0L)).s3 && ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 8))((safe_div_func_int32_t_s_s((safe_add_func_int64_t_s_s(((VECTOR(int64_t, 16))(0x2F646DA8F224253EL, 0x4B1A29C05DF1A7F9L, (safe_mod_func_int32_t_s_s((-7L), (*p_1642->g_518))), ((VECTOR(int64_t, 2))((-1L), 0x36A39D3542B224E4L)), ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 16))(mul_hi(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(add_sat(((VECTOR(int64_t, 8))(l_1554.s057aefe5)).even, ((VECTOR(int64_t, 4))(rhadd(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 2),((VECTOR(int64_t, 2))(l_1555.zz)), ((VECTOR(int64_t, 16))(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 16))(l_1556.xyzwxxzxzwwwywwy)).s0f)).yxxxyxxx)).lo)).wyzyzyzwxzwzwywy)))).s26, ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 16))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 16),((VECTOR(int64_t, 8))(l_1557.s99b3141d)).s0617741674710706, ((VECTOR(int64_t, 16))(((VECTOR(int64_t, 2))(0x1B4B77BA69F4315FL, (-6L))).odd, ((p_7 < (safe_mod_func_uint8_t_u_u((l_1560 != &p_1642->g_660), p_1642->g_158.x))) != p_3), ((VECTOR(int64_t, 4))(0x47AD45A6344BC39AL)), ((VECTOR(int64_t, 8))(0x7567321D723ADAF8L)), 3L, 0x2AFBE14C1552AC92L)), ((VECTOR(int64_t, 16))(7L))))).s02a1)).yyxwzxxy)).s43))), 1L, 0x11F3E15EEF69EF88L)).even)), 0x5B75B021A95574BAL, (-7L))), ((VECTOR(int64_t, 4))(0x297C1E8697F7D18AL)))))))), 0L, ((VECTOR(int64_t, 2))(0x09F4CC5DF2CD490AL)), 0x25FFE8E82F256471L)).s4243637465525745, ((VECTOR(int64_t, 16))(0L))))).se81d)), ((VECTOR(int64_t, 2))(0x66B7B4E61A57231BL)), 0x7A67B5DFBA8655DBL, 1L, 0x667533949B8FD453L, 3L, 0x3CC6ABDEFC8A0807L)).sb, GROUP_DIVERGE(2, 1))), 4294967295UL)), 1L, 0x5B49A2A9AE2F178EL, 0x3E5F30267060B6FAL, ((VECTOR(int64_t, 4))((-9L))))).lo)).w) ^ p_4)))));
    l_1584 = (safe_rshift_func_int8_t_s_u((safe_rshift_func_int16_t_s_u(p_3, ((safe_mod_func_uint64_t_u_u(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 4))(min(((VECTOR(uint64_t, 16))(l_1567.yyxxxyxxxxxyxyxy)).s7b6e, ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 4))(18446744073709551613UL, 18446744073709551615UL, 0xB3A883B9911C7C34L, 18446744073709551615UL))))))))).xzwxzxwwyyzxxwwz)).s3, ((VECTOR(uint64_t, 8))(18446744073709551615UL, 7UL, p_3, 18446744073709551611UL, ((VECTOR(uint64_t, 4))(l_1568.s1271)))).s2)) != ((p_1642->g_64 = ((((safe_add_func_uint8_t_u_u((~(((((*l_1572) = l_1571[2]) != l_1573[2]) > (p_1642->g_29[3] |= ((((**p_1642->g_1485) |= (safe_sub_func_int64_t_s_s(((p_1642->g_106 = ((p_1642->g_188 , &p_1642->g_1190) == &p_1642->g_1190)) == (p_1642->g_399.s7 = p_7)), (((**p_1642->g_1265) = (((VECTOR(int32_t, 8))(upsample(((VECTOR(int16_t, 8))(rhadd(((VECTOR(int16_t, 2))(rotate(((VECTOR(int16_t, 8))(l_1576.sdf984537)).s74, ((VECTOR(int16_t, 2))(sub_sat(((VECTOR(int16_t, 2))(upsample(((VECTOR(int8_t, 16))(l_1577.s2040427130773607)).s69, ((VECTOR(uint8_t, 8))(p_1642->g_1578.s61261477)).s33))), ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 4))(l_1579.yxyx)).odd)))))))).xxyxxxxy, ((VECTOR(int16_t, 2))(min(((VECTOR(int16_t, 2))(upsample(((VECTOR(int8_t, 4))(l_1580.xyyx)).odd, ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 16))(p_1642->g_1581.s0630640256100175)).s1f5c)).wyzzyxxxywyzzyxx)))).s33))), (int16_t)(((*l_1583) = l_1582) == &p_5)))).yyxyxyxx))), ((VECTOR(uint16_t, 8))(0xD2F9L))))).s3 , (**p_1642->g_1265))) , 0x4BE6892284F6FF07L)))) && p_1642->g_548.y) <= 0xFFA169D0BFEDF1EFL))) > p_1642->g_548.x)), 0x43L)) , (void*)0) != &p_1642->g_256) <= 0x29B4L)) < p_7)))), 2));
    return p_6;
}


/* ------------------------------------------ */
/* 
 * reads : p_1642->g_156 p_1642->g_170 p_1642->g_290 p_1642->g_828 p_1642->g_1189 p_1642->g_498 p_1642->g_605 p_1642->g_1258 p_1642->g_866 p_1642->g_355 p_1642->g_1277 p_1642->g_689 p_1642->g_690 p_1642->g_518 p_1642->g_1334 p_1642->g_399 p_1642->g_660 p_1642->g_109 p_1642->g_649 p_1642->g_942 p_1642->g_594 p_1642->g_595 p_1642->g_938 p_1642->g_106 p_1642->g_412 p_1642->g_191 p_1642->g_168 p_1642->g_548 p_1642->g_97 p_1642->g_696 p_1642->g_697 p_1642->g_108 p_1642->g_508 p_1642->g_596 p_1642->g_158 p_1642->g_14 p_1642->g_292 p_1642->g_1454 p_1642->g_1461 p_1642->g_1465 p_1642->g_1485 p_1642->g_1486 p_1642->g_946
 * writes: p_1642->g_946 p_1642->g_828 p_1642->g_412 p_1642->g_156 p_1642->g_170 p_1642->g_64 p_1642->g_1225 p_1642->g_1265 p_1642->g_143 p_1642->g_30 p_1642->g_106 p_1642->g_108 p_1642->g_227 p_1642->g_942 p_1642->g_188 p_1642->g_660 p_1642->g_67 p_1642->g_578 p_1642->g_168 p_1642->g_256 p_1642->g_508 p_1642->g_430 p_1642->g_158 p_1642->g_355 p_1642->g_292 p_1642->g_649
 */
int32_t  func_20(uint32_t  p_21, int32_t  p_22, uint32_t  p_23, struct S0 * p_1642)
{ /* block id: 8 */
    int8_t l_38 = 0x08L;
    VECTOR(uint64_t, 8) l_59 = (VECTOR(uint64_t, 8))(0x9E96C9F93B76F056L, (VECTOR(uint64_t, 4))(0x9E96C9F93B76F056L, (VECTOR(uint64_t, 2))(0x9E96C9F93B76F056L, 1UL), 1UL), 1UL, 0x9E96C9F93B76F056L, 1UL);
    int32_t *l_1132[7][8] = {{&p_1642->g_170,&p_1642->g_170,&p_1642->g_29[0],(void*)0,&p_1642->g_168[0],&p_1642->g_29[2],&p_1642->g_170,(void*)0},{&p_1642->g_170,&p_1642->g_170,&p_1642->g_29[0],(void*)0,&p_1642->g_168[0],&p_1642->g_29[2],&p_1642->g_170,(void*)0},{&p_1642->g_170,&p_1642->g_170,&p_1642->g_29[0],(void*)0,&p_1642->g_168[0],&p_1642->g_29[2],&p_1642->g_170,(void*)0},{&p_1642->g_170,&p_1642->g_170,&p_1642->g_29[0],(void*)0,&p_1642->g_168[0],&p_1642->g_29[2],&p_1642->g_170,(void*)0},{&p_1642->g_170,&p_1642->g_170,&p_1642->g_29[0],(void*)0,&p_1642->g_168[0],&p_1642->g_29[2],&p_1642->g_170,(void*)0},{&p_1642->g_170,&p_1642->g_170,&p_1642->g_29[0],(void*)0,&p_1642->g_168[0],&p_1642->g_29[2],&p_1642->g_170,(void*)0},{&p_1642->g_170,&p_1642->g_170,&p_1642->g_29[0],(void*)0,&p_1642->g_168[0],&p_1642->g_29[2],&p_1642->g_170,(void*)0}};
    uint32_t *l_1137 = (void*)0;
    uint32_t **l_1136 = &l_1137;
    VECTOR(uint16_t, 16) l_1183 = (VECTOR(uint16_t, 16))(65531UL, (VECTOR(uint16_t, 4))(65531UL, (VECTOR(uint16_t, 2))(65531UL, 0x3A82L), 0x3A82L), 0x3A82L, 65531UL, 0x3A82L, (VECTOR(uint16_t, 2))(65531UL, 0x3A82L), (VECTOR(uint16_t, 2))(65531UL, 0x3A82L), 65531UL, 0x3A82L, 65531UL, 0x3A82L);
    uint32_t **l_1219[9] = {&p_1642->g_697,&p_1642->g_697,&p_1642->g_697,&p_1642->g_697,&p_1642->g_697,&p_1642->g_697,&p_1642->g_697,&p_1642->g_697,&p_1642->g_697};
    int16_t *l_1224 = (void*)0;
    int16_t *l_1228 = (void*)0;
    int64_t ****l_1255[3][10][8] = {{{&p_1642->g_835,&p_1642->g_836,(void*)0,&p_1642->g_836,&p_1642->g_835,&p_1642->g_835,&p_1642->g_835,&p_1642->g_835},{&p_1642->g_835,&p_1642->g_836,(void*)0,&p_1642->g_836,&p_1642->g_835,&p_1642->g_835,&p_1642->g_835,&p_1642->g_835},{&p_1642->g_835,&p_1642->g_836,(void*)0,&p_1642->g_836,&p_1642->g_835,&p_1642->g_835,&p_1642->g_835,&p_1642->g_835},{&p_1642->g_835,&p_1642->g_836,(void*)0,&p_1642->g_836,&p_1642->g_835,&p_1642->g_835,&p_1642->g_835,&p_1642->g_835},{&p_1642->g_835,&p_1642->g_836,(void*)0,&p_1642->g_836,&p_1642->g_835,&p_1642->g_835,&p_1642->g_835,&p_1642->g_835},{&p_1642->g_835,&p_1642->g_836,(void*)0,&p_1642->g_836,&p_1642->g_835,&p_1642->g_835,&p_1642->g_835,&p_1642->g_835},{&p_1642->g_835,&p_1642->g_836,(void*)0,&p_1642->g_836,&p_1642->g_835,&p_1642->g_835,&p_1642->g_835,&p_1642->g_835},{&p_1642->g_835,&p_1642->g_836,(void*)0,&p_1642->g_836,&p_1642->g_835,&p_1642->g_835,&p_1642->g_835,&p_1642->g_835},{&p_1642->g_835,&p_1642->g_836,(void*)0,&p_1642->g_836,&p_1642->g_835,&p_1642->g_835,&p_1642->g_835,&p_1642->g_835},{&p_1642->g_835,&p_1642->g_836,(void*)0,&p_1642->g_836,&p_1642->g_835,&p_1642->g_835,&p_1642->g_835,&p_1642->g_835}},{{&p_1642->g_835,&p_1642->g_836,(void*)0,&p_1642->g_836,&p_1642->g_835,&p_1642->g_835,&p_1642->g_835,&p_1642->g_835},{&p_1642->g_835,&p_1642->g_836,(void*)0,&p_1642->g_836,&p_1642->g_835,&p_1642->g_835,&p_1642->g_835,&p_1642->g_835},{&p_1642->g_835,&p_1642->g_836,(void*)0,&p_1642->g_836,&p_1642->g_835,&p_1642->g_835,&p_1642->g_835,&p_1642->g_835},{&p_1642->g_835,&p_1642->g_836,(void*)0,&p_1642->g_836,&p_1642->g_835,&p_1642->g_835,&p_1642->g_835,&p_1642->g_835},{&p_1642->g_835,&p_1642->g_836,(void*)0,&p_1642->g_836,&p_1642->g_835,&p_1642->g_835,&p_1642->g_835,&p_1642->g_835},{&p_1642->g_835,&p_1642->g_836,(void*)0,&p_1642->g_836,&p_1642->g_835,&p_1642->g_835,&p_1642->g_835,&p_1642->g_835},{&p_1642->g_835,&p_1642->g_836,(void*)0,&p_1642->g_836,&p_1642->g_835,&p_1642->g_835,&p_1642->g_835,&p_1642->g_835},{&p_1642->g_835,&p_1642->g_836,(void*)0,&p_1642->g_836,&p_1642->g_835,&p_1642->g_835,&p_1642->g_835,&p_1642->g_835},{&p_1642->g_835,&p_1642->g_836,(void*)0,&p_1642->g_836,&p_1642->g_835,&p_1642->g_835,&p_1642->g_835,&p_1642->g_835},{&p_1642->g_835,&p_1642->g_836,(void*)0,&p_1642->g_836,&p_1642->g_835,&p_1642->g_835,&p_1642->g_835,&p_1642->g_835}},{{&p_1642->g_835,&p_1642->g_836,(void*)0,&p_1642->g_836,&p_1642->g_835,&p_1642->g_835,&p_1642->g_835,&p_1642->g_835},{&p_1642->g_835,&p_1642->g_836,(void*)0,&p_1642->g_836,&p_1642->g_835,&p_1642->g_835,&p_1642->g_835,&p_1642->g_835},{&p_1642->g_835,&p_1642->g_836,(void*)0,&p_1642->g_836,&p_1642->g_835,&p_1642->g_835,&p_1642->g_835,&p_1642->g_835},{&p_1642->g_835,&p_1642->g_836,(void*)0,&p_1642->g_836,&p_1642->g_835,&p_1642->g_835,&p_1642->g_835,&p_1642->g_835},{&p_1642->g_835,&p_1642->g_836,(void*)0,&p_1642->g_836,&p_1642->g_835,&p_1642->g_835,&p_1642->g_835,&p_1642->g_835},{&p_1642->g_835,&p_1642->g_836,(void*)0,&p_1642->g_836,&p_1642->g_835,&p_1642->g_835,&p_1642->g_835,&p_1642->g_835},{&p_1642->g_835,&p_1642->g_836,(void*)0,&p_1642->g_836,&p_1642->g_835,&p_1642->g_835,&p_1642->g_835,&p_1642->g_835},{&p_1642->g_835,&p_1642->g_836,(void*)0,&p_1642->g_836,&p_1642->g_835,&p_1642->g_835,&p_1642->g_835,&p_1642->g_835},{&p_1642->g_835,&p_1642->g_836,(void*)0,&p_1642->g_836,&p_1642->g_835,&p_1642->g_835,&p_1642->g_835,&p_1642->g_835},{&p_1642->g_835,&p_1642->g_836,(void*)0,&p_1642->g_836,&p_1642->g_835,&p_1642->g_835,&p_1642->g_835,&p_1642->g_835}}};
    uint16_t **l_1301 = &p_1642->g_866;
    VECTOR(uint16_t, 16) l_1333 = (VECTOR(uint16_t, 16))(4UL, (VECTOR(uint16_t, 4))(4UL, (VECTOR(uint16_t, 2))(4UL, 0x77E0L), 0x77E0L), 0x77E0L, 4UL, 0x77E0L, (VECTOR(uint16_t, 2))(4UL, 0x77E0L), (VECTOR(uint16_t, 2))(4UL, 0x77E0L), 4UL, 0x77E0L, 4UL, 0x77E0L);
    uint64_t *l_1358[7];
    int32_t *l_1398 = (void*)0;
    VECTOR(int64_t, 16) l_1417 = (VECTOR(int64_t, 16))((-3L), (VECTOR(int64_t, 4))((-3L), (VECTOR(int64_t, 2))((-3L), 1L), 1L), 1L, (-3L), 1L, (VECTOR(int64_t, 2))((-3L), 1L), (VECTOR(int64_t, 2))((-3L), 1L), (-3L), 1L, (-3L), 1L);
    uint64_t l_1467[8][9][3] = {{{0xA0CE672F3EC65C7FL,0x64EB945B8F2DF6DEL,18446744073709551613UL},{0xA0CE672F3EC65C7FL,0x64EB945B8F2DF6DEL,18446744073709551613UL},{0xA0CE672F3EC65C7FL,0x64EB945B8F2DF6DEL,18446744073709551613UL},{0xA0CE672F3EC65C7FL,0x64EB945B8F2DF6DEL,18446744073709551613UL},{0xA0CE672F3EC65C7FL,0x64EB945B8F2DF6DEL,18446744073709551613UL},{0xA0CE672F3EC65C7FL,0x64EB945B8F2DF6DEL,18446744073709551613UL},{0xA0CE672F3EC65C7FL,0x64EB945B8F2DF6DEL,18446744073709551613UL},{0xA0CE672F3EC65C7FL,0x64EB945B8F2DF6DEL,18446744073709551613UL},{0xA0CE672F3EC65C7FL,0x64EB945B8F2DF6DEL,18446744073709551613UL}},{{0xA0CE672F3EC65C7FL,0x64EB945B8F2DF6DEL,18446744073709551613UL},{0xA0CE672F3EC65C7FL,0x64EB945B8F2DF6DEL,18446744073709551613UL},{0xA0CE672F3EC65C7FL,0x64EB945B8F2DF6DEL,18446744073709551613UL},{0xA0CE672F3EC65C7FL,0x64EB945B8F2DF6DEL,18446744073709551613UL},{0xA0CE672F3EC65C7FL,0x64EB945B8F2DF6DEL,18446744073709551613UL},{0xA0CE672F3EC65C7FL,0x64EB945B8F2DF6DEL,18446744073709551613UL},{0xA0CE672F3EC65C7FL,0x64EB945B8F2DF6DEL,18446744073709551613UL},{0xA0CE672F3EC65C7FL,0x64EB945B8F2DF6DEL,18446744073709551613UL},{0xA0CE672F3EC65C7FL,0x64EB945B8F2DF6DEL,18446744073709551613UL}},{{0xA0CE672F3EC65C7FL,0x64EB945B8F2DF6DEL,18446744073709551613UL},{0xA0CE672F3EC65C7FL,0x64EB945B8F2DF6DEL,18446744073709551613UL},{0xA0CE672F3EC65C7FL,0x64EB945B8F2DF6DEL,18446744073709551613UL},{0xA0CE672F3EC65C7FL,0x64EB945B8F2DF6DEL,18446744073709551613UL},{0xA0CE672F3EC65C7FL,0x64EB945B8F2DF6DEL,18446744073709551613UL},{0xA0CE672F3EC65C7FL,0x64EB945B8F2DF6DEL,18446744073709551613UL},{0xA0CE672F3EC65C7FL,0x64EB945B8F2DF6DEL,18446744073709551613UL},{0xA0CE672F3EC65C7FL,0x64EB945B8F2DF6DEL,18446744073709551613UL},{0xA0CE672F3EC65C7FL,0x64EB945B8F2DF6DEL,18446744073709551613UL}},{{0xA0CE672F3EC65C7FL,0x64EB945B8F2DF6DEL,18446744073709551613UL},{0xA0CE672F3EC65C7FL,0x64EB945B8F2DF6DEL,18446744073709551613UL},{0xA0CE672F3EC65C7FL,0x64EB945B8F2DF6DEL,18446744073709551613UL},{0xA0CE672F3EC65C7FL,0x64EB945B8F2DF6DEL,18446744073709551613UL},{0xA0CE672F3EC65C7FL,0x64EB945B8F2DF6DEL,18446744073709551613UL},{0xA0CE672F3EC65C7FL,0x64EB945B8F2DF6DEL,18446744073709551613UL},{0xA0CE672F3EC65C7FL,0x64EB945B8F2DF6DEL,18446744073709551613UL},{0xA0CE672F3EC65C7FL,0x64EB945B8F2DF6DEL,18446744073709551613UL},{0xA0CE672F3EC65C7FL,0x64EB945B8F2DF6DEL,18446744073709551613UL}},{{0xA0CE672F3EC65C7FL,0x64EB945B8F2DF6DEL,18446744073709551613UL},{0xA0CE672F3EC65C7FL,0x64EB945B8F2DF6DEL,18446744073709551613UL},{0xA0CE672F3EC65C7FL,0x64EB945B8F2DF6DEL,18446744073709551613UL},{0xA0CE672F3EC65C7FL,0x64EB945B8F2DF6DEL,18446744073709551613UL},{0xA0CE672F3EC65C7FL,0x64EB945B8F2DF6DEL,18446744073709551613UL},{0xA0CE672F3EC65C7FL,0x64EB945B8F2DF6DEL,18446744073709551613UL},{0xA0CE672F3EC65C7FL,0x64EB945B8F2DF6DEL,18446744073709551613UL},{0xA0CE672F3EC65C7FL,0x64EB945B8F2DF6DEL,18446744073709551613UL},{0xA0CE672F3EC65C7FL,0x64EB945B8F2DF6DEL,18446744073709551613UL}},{{0xA0CE672F3EC65C7FL,0x64EB945B8F2DF6DEL,18446744073709551613UL},{0xA0CE672F3EC65C7FL,0x64EB945B8F2DF6DEL,18446744073709551613UL},{0xA0CE672F3EC65C7FL,0x64EB945B8F2DF6DEL,18446744073709551613UL},{0xA0CE672F3EC65C7FL,0x64EB945B8F2DF6DEL,18446744073709551613UL},{0xA0CE672F3EC65C7FL,0x64EB945B8F2DF6DEL,18446744073709551613UL},{0xA0CE672F3EC65C7FL,0x64EB945B8F2DF6DEL,18446744073709551613UL},{0xA0CE672F3EC65C7FL,0x64EB945B8F2DF6DEL,18446744073709551613UL},{0xA0CE672F3EC65C7FL,0x64EB945B8F2DF6DEL,18446744073709551613UL},{0xA0CE672F3EC65C7FL,0x64EB945B8F2DF6DEL,18446744073709551613UL}},{{0xA0CE672F3EC65C7FL,0x64EB945B8F2DF6DEL,18446744073709551613UL},{0xA0CE672F3EC65C7FL,0x64EB945B8F2DF6DEL,18446744073709551613UL},{0xA0CE672F3EC65C7FL,0x64EB945B8F2DF6DEL,18446744073709551613UL},{0xA0CE672F3EC65C7FL,0x64EB945B8F2DF6DEL,18446744073709551613UL},{0xA0CE672F3EC65C7FL,0x64EB945B8F2DF6DEL,18446744073709551613UL},{0xA0CE672F3EC65C7FL,0x64EB945B8F2DF6DEL,18446744073709551613UL},{0xA0CE672F3EC65C7FL,0x64EB945B8F2DF6DEL,18446744073709551613UL},{0xA0CE672F3EC65C7FL,0x64EB945B8F2DF6DEL,18446744073709551613UL},{0xA0CE672F3EC65C7FL,0x64EB945B8F2DF6DEL,18446744073709551613UL}},{{0xA0CE672F3EC65C7FL,0x64EB945B8F2DF6DEL,18446744073709551613UL},{0xA0CE672F3EC65C7FL,0x64EB945B8F2DF6DEL,18446744073709551613UL},{0xA0CE672F3EC65C7FL,0x64EB945B8F2DF6DEL,18446744073709551613UL},{0xA0CE672F3EC65C7FL,0x64EB945B8F2DF6DEL,18446744073709551613UL},{0xA0CE672F3EC65C7FL,0x64EB945B8F2DF6DEL,18446744073709551613UL},{0xA0CE672F3EC65C7FL,0x64EB945B8F2DF6DEL,18446744073709551613UL},{0xA0CE672F3EC65C7FL,0x64EB945B8F2DF6DEL,18446744073709551613UL},{0xA0CE672F3EC65C7FL,0x64EB945B8F2DF6DEL,18446744073709551613UL},{0xA0CE672F3EC65C7FL,0x64EB945B8F2DF6DEL,18446744073709551613UL}}};
    int16_t l_1497 = (-1L);
    int16_t l_1500 = 0x1C90L;
    uint32_t **l_1516[6][3][1] = {{{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0}}};
    int i, j, k;
    for (i = 0; i < 7; i++)
        l_1358[i] = (void*)0;
lbl_1388:
    for (p_23 = 0; (p_23 == 17); ++p_23)
    { /* block id: 11 */
        int8_t *l_37 = (void*)0;
        int64_t *l_62 = (void*)0;
        int64_t *l_63[8];
        int32_t l_66 = (-1L);
        int32_t l_870 = (-1L);
        int32_t l_1133 = (-1L);
        int i;
        for (i = 0; i < 8; i++)
            l_63[i] = &p_1642->g_64;
        l_1133 ^= ((VECTOR(int32_t, 2))(safe_clamp_func(VECTOR(int32_t, 2),int32_t,((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(hadd(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(mul_hi(((VECTOR(int32_t, 2))(0L, (-1L))), ((VECTOR(int32_t, 2))(hadd(((VECTOR(int32_t, 2))(0L, 0L)), ((VECTOR(int32_t, 4))(1L, (safe_sub_func_int16_t_s_s(((((safe_div_func_int8_t_s_s((l_38 |= p_1642->g_14), (safe_sub_func_uint32_t_u_u(0x283A38C8L, p_22)))) , func_41(func_45((safe_lshift_func_uint16_t_u_u(p_1642->g_14, 8)), ((p_23 < ((((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 8))(rotate(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))((!(!(safe_mod_func_uint16_t_u_u(((l_66 = (safe_mul_func_int16_t_s_s((safe_lshift_func_int8_t_s_u((safe_mul_func_uint8_t_u_u(p_1642->g_29[3], FAKE_DIVERGE(p_1642->local_1_offset, get_local_id(1), 10))), (((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(rotate(((VECTOR(uint64_t, 4))(mad_sat(((VECTOR(uint64_t, 8))(l_59.s54075771)).lo, ((VECTOR(uint64_t, 2))(0xCC53A0DCB3DF1C91L, 0x6BEFC5446ED9A830L)).yyyx, ((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 8))(clz(((VECTOR(uint64_t, 4))(abs(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(rotate(((VECTOR(int64_t, 8))((p_1642->g_64 &= (safe_lshift_func_int16_t_s_s((((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(0x74D024BFL, 2L, 1L, 1L)).xyzzyzyw)).s6 , 0x289AL), p_1642->g_29[0]))), 0x40E3E0ECE9518344L, 0x7F02CAA0E685266AL, 0x2102F310E27A8D2CL, ((VECTOR(int64_t, 2))(p_1642->g_65.sa0)), 0x7898AFBB1CA98231L, (-1L))).s60, ((VECTOR(int64_t, 16))(2L, (FAKE_DIVERGE(p_1642->global_2_offset, get_global_id(2), 10) , p_21), ((VECTOR(int64_t, 2))(1L)), ((VECTOR(int64_t, 4))(0x1FC89503A5A14E9CL)), 0x7C80B142B930EEAEL, 0x69E9DA12348280EFL, ((VECTOR(int64_t, 2))(1L)), ((VECTOR(int64_t, 2))(8L)), (-2L), 0x1D25F4349FEC891FL)).s7d))), 0x1CFA8ABF266DE40CL, 5L)).lo)).yyyx))).zwywzxyz))).s67)).yyxy))), ((VECTOR(uint64_t, 4))(8UL))))).ywzxxxyy)).s5 , 246UL))), p_1642->g_29[0]))) , p_1642->g_65.s1), l_38)))), ((VECTOR(uint16_t, 2))(0x4DBBL)), 0x1DABL)), 65535UL, 65535UL, 0x155BL, 0UL)), ((VECTOR(uint16_t, 8))(8UL))))))).s6 != p_1642->g_29[0]) < p_1642->g_14)) , &p_1642->g_29[0]), p_23, p_1642), p_22, l_870, p_1642)) , l_1132[1][6]) != &l_870), l_870)), (-8L), 0x3E2649CDL)).even)))))), 0x2AEA5C6BL, l_870, ((VECTOR(int32_t, 4))(0x7E5C59DCL)), ((VECTOR(int32_t, 2))(7L)), 5L, 1L, 1L, ((VECTOR(int32_t, 2))(1L)), (-9L))).sf8)).yxyxxyxy, ((VECTOR(int32_t, 8))(0x23335058L))))).s60)).yyxyxyxxyyxyyyyy, ((VECTOR(int32_t, 16))(1L))))))))).s57, (int32_t)p_21, (int32_t)p_23))).odd;
    }
    for (p_1642->g_946 = 9; (p_1642->g_946 > (-3)); --p_1642->g_946)
    { /* block id: 468 */
        uint32_t l_1144 = 4294967291UL;
        VECTOR(uint16_t, 4) l_1158 = (VECTOR(uint16_t, 4))(0xADC9L, (VECTOR(uint16_t, 2))(0xADC9L, 0x8599L), 0x8599L);
        int32_t l_1193 = 0L;
        uint32_t **l_1218 = &p_1642->g_697;
        VECTOR(uint64_t, 4) l_1242 = (VECTOR(uint64_t, 4))(0xA9066451333A5C40L, (VECTOR(uint64_t, 2))(0xA9066451333A5C40L, 0x715831D799122F3BL), 0x715831D799122F3BL);
        uint16_t *l_1299[3];
        VECTOR(uint32_t, 2) l_1342 = (VECTOR(uint32_t, 2))(0x55995027L, 0x07A0ED0EL);
        VECTOR(uint16_t, 4) l_1369 = (VECTOR(uint16_t, 4))(0x819DL, (VECTOR(uint16_t, 2))(0x819DL, 65535UL), 65535UL);
        VECTOR(int32_t, 16) l_1391 = (VECTOR(int32_t, 16))(0x155E8A90L, (VECTOR(int32_t, 4))(0x155E8A90L, (VECTOR(int32_t, 2))(0x155E8A90L, 0x796A7692L), 0x796A7692L), 0x796A7692L, 0x155E8A90L, 0x796A7692L, (VECTOR(int32_t, 2))(0x155E8A90L, 0x796A7692L), (VECTOR(int32_t, 2))(0x155E8A90L, 0x796A7692L), 0x155E8A90L, 0x796A7692L, 0x155E8A90L, 0x796A7692L);
        VECTOR(int64_t, 4) l_1418 = (VECTOR(int64_t, 4))(0x66155813E51AC4F8L, (VECTOR(int64_t, 2))(0x66155813E51AC4F8L, (-1L)), (-1L));
        VECTOR(int64_t, 16) l_1420 = (VECTOR(int64_t, 16))(0x1993BEA82F737B47L, (VECTOR(int64_t, 4))(0x1993BEA82F737B47L, (VECTOR(int64_t, 2))(0x1993BEA82F737B47L, 0x653A61792E7DD941L), 0x653A61792E7DD941L), 0x653A61792E7DD941L, 0x1993BEA82F737B47L, 0x653A61792E7DD941L, (VECTOR(int64_t, 2))(0x1993BEA82F737B47L, 0x653A61792E7DD941L), (VECTOR(int64_t, 2))(0x1993BEA82F737B47L, 0x653A61792E7DD941L), 0x1993BEA82F737B47L, 0x653A61792E7DD941L, 0x1993BEA82F737B47L, 0x653A61792E7DD941L);
        uint8_t **l_1484 = (void*)0;
        int8_t *l_1512[4] = {&p_1642->g_156[4][2],&p_1642->g_156[4][2],&p_1642->g_156[4][2],&p_1642->g_156[4][2]};
        uint32_t **l_1515 = &p_1642->g_518;
        int16_t *l_1517 = &l_1500;
        int i;
        for (i = 0; i < 3; i++)
            l_1299[i] = (void*)0;
        p_1642->g_828.s1 = ((p_22 <= (l_1136 == &l_1137)) && 0x053CL);
        for (p_1642->g_412 = (-24); (p_1642->g_412 != 1); ++p_1642->g_412)
        { /* block id: 472 */
            int32_t *l_1140 = &p_1642->g_170;
            VECTOR(int8_t, 16) l_1148 = (VECTOR(int8_t, 16))((-10L), (VECTOR(int8_t, 4))((-10L), (VECTOR(int8_t, 2))((-10L), (-1L)), (-1L)), (-1L), (-10L), (-1L), (VECTOR(int8_t, 2))((-10L), (-1L)), (VECTOR(int8_t, 2))((-10L), (-1L)), (-10L), (-1L), (-10L), (-1L));
            int8_t *l_1149 = &p_1642->g_156[4][0];
            uint8_t *l_1150[9][3];
            int8_t *l_1155 = (void*)0;
            int8_t *l_1156 = (void*)0;
            int8_t *l_1157 = &l_38;
            uint8_t l_1191 = 1UL;
            int32_t l_1192 = 0x56F6EA90L;
            int16_t l_1220 = 0x3E9EL;
            int16_t *l_1227 = (void*)0;
            int16_t **l_1226[6];
            VECTOR(uint16_t, 4) l_1236 = (VECTOR(uint16_t, 4))(0x0325L, (VECTOR(uint16_t, 2))(0x0325L, 0x2704L), 0x2704L);
            VECTOR(int64_t, 2) l_1241 = (VECTOR(int64_t, 2))(1L, 0L);
            uint32_t l_1256 = 4294967287UL;
            int16_t l_1257 = 0x6A0AL;
            int32_t **l_1263 = &p_1642->g_1190;
            VECTOR(uint64_t, 2) l_1289 = (VECTOR(uint64_t, 2))(18446744073709551608UL, 18446744073709551611UL);
            VECTOR(uint64_t, 16) l_1290 = (VECTOR(uint64_t, 16))(0x1131782CD259D752L, (VECTOR(uint64_t, 4))(0x1131782CD259D752L, (VECTOR(uint64_t, 2))(0x1131782CD259D752L, 18446744073709551607UL), 18446744073709551607UL), 18446744073709551607UL, 0x1131782CD259D752L, 18446744073709551607UL, (VECTOR(uint64_t, 2))(0x1131782CD259D752L, 18446744073709551607UL), (VECTOR(uint64_t, 2))(0x1131782CD259D752L, 18446744073709551607UL), 0x1131782CD259D752L, 18446744073709551607UL, 0x1131782CD259D752L, 18446744073709551607UL);
            int64_t **l_1323 = &p_1642->g_595;
            VECTOR(int64_t, 2) l_1326 = (VECTOR(int64_t, 2))(4L, 0L);
            int32_t l_1376 = 0x28DD923BL;
            VECTOR(int32_t, 8) l_1390 = (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, (-1L)), (-1L)), (-1L), 1L, (-1L));
            int32_t *l_1397 = &p_1642->g_578;
            int i, j;
            for (i = 0; i < 9; i++)
            {
                for (j = 0; j < 3; j++)
                    l_1150[i][j] = (void*)0;
            }
            for (i = 0; i < 6; i++)
                l_1226[i] = &l_1227;
            l_1140 = l_1140;
            if ((0x23L & (safe_mod_func_int8_t_s_s(l_1144, (safe_rshift_func_uint8_t_u_s(0xDDL, ((*l_1157) ^= ((safe_unary_minus_func_uint64_t_u(((((*l_1149) &= ((VECTOR(int8_t, 2))(l_1148.sdc)).even) ^ ((*l_1140) |= 255UL)) , 0xD57B3DA3C8FE2926L))) && ((p_23 && 0x6EB37102L) , (safe_div_func_int8_t_s_s(((*l_1149) = p_1642->g_290[0]), (safe_mul_func_uint8_t_u_u((p_1642->g_828.s1 != GROUP_DIVERGE(1, 1)), (-6L))))))))))))))
            { /* block id: 478 */
                int32_t l_1167 = 0L;
                l_1193 &= (l_1192 = (((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(l_1158.wz)), 0x35A4L, 1UL)).hi)).even & ((safe_lshift_func_int16_t_s_u((((*l_1140) = ((((safe_sub_func_int8_t_s_s((safe_add_func_uint8_t_u_u((safe_div_func_uint32_t_u_u((~(((((l_1167 = l_1144) , 0x22L) , (safe_rshift_func_int8_t_s_u(((((((((&p_1642->g_836 != (void*)0) , (((FAKE_DIVERGE(p_1642->group_2_offset, get_group_id(2), 10) , (((((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(0x6CC7703DL, 0x451B2A1BL)).yxxyxxxy)).s2 && ((safe_mul_func_uint16_t_u_u((safe_unary_minus_func_uint8_t_u(((((1UL | (safe_sub_func_int64_t_s_s((safe_rshift_func_uint8_t_u_u((((VECTOR(uint16_t, 8))((safe_sub_func_uint32_t_u_u((++(*p_1642->g_518)), (safe_lshift_func_uint16_t_u_s(l_1158.y, 12)))), 65535UL, ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(l_1183.sc3)), 0x2451L, 65535UL)), 0x7EA7L, 0x0AACL)).s5 < (((1UL == (safe_add_func_int32_t_s_s((safe_sub_func_int32_t_s_s(((VECTOR(int32_t, 4))(p_1642->g_1188.s74a6)).y, ((void*)0 != p_1642->g_1189))), (*l_1140)))) >= p_1642->g_498.s2) < p_21)), l_1158.y)), 0UL))) , p_23) , FAKE_DIVERGE(p_1642->global_1_offset, get_global_id(1), 10)) | 0x4AD09E2642BE04B0L))), p_23)) , 0x4D3BCA9CL)) | 0L) || p_23)) > (*l_1140)) , l_1191)) || p_22) != 0x6FL) ^ p_22) == l_1167) && p_21) == GROUP_DIVERGE(2, 1)), l_1167))) < 1UL) , 4294967288UL)), 0x233BF1BBL)), 3UL)), 2UL)) >= FAKE_DIVERGE(p_1642->group_2_offset, get_group_id(2), 10)) != 0x6152B1E64162695CL) ^ 1L)) >= 0x9E833115L), p_21)) > 0x522AL)));
                return l_1144;
            }
            else
            { /* block id: 485 */
                VECTOR(int64_t, 4) l_1202 = (VECTOR(int64_t, 4))(0x155AF65B911217A3L, (VECTOR(int64_t, 2))(0x155AF65B911217A3L, 0x0753FD208C77B3F8L), 0x0753FD208C77B3F8L);
                uint64_t *l_1208 = (void*)0;
                uint64_t *l_1209 = &p_1642->g_942;
                int64_t *l_1221 = (void*)0;
                int64_t *l_1222 = (void*)0;
                int64_t *l_1223 = (void*)0;
                int i;
                (*l_1140) = ((safe_div_func_uint32_t_u_u((((p_1642->g_64 = (safe_mul_func_uint8_t_u_u(((VECTOR(uint8_t, 8))(((((*p_1642->g_866) ^= ((VECTOR(uint16_t, 8))(FAKE_DIVERGE(p_1642->group_2_offset, get_group_id(2), 10), (safe_mul_func_int16_t_s_s((4294967289UL != (safe_sub_func_int64_t_s_s(((VECTOR(int64_t, 2))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 2),((VECTOR(int64_t, 16))(((VECTOR(int64_t, 16))(l_1202.zywwyxzwzwwzwywz)))).sf2, ((VECTOR(int64_t, 4))(rotate(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))(p_1642->g_1203.s0299)).wzzyxyzyzwyzzwxx)).s3, (safe_rshift_func_uint16_t_u_s((safe_add_func_int16_t_s_s((~(((*l_1209) = (0x7C4990ED3CC3108BL & 0x0FFEDA84D2E6A42DL)) , p_21)), (((*l_1157) = (safe_add_func_uint16_t_u_u(((safe_rshift_func_uint8_t_u_s(p_1642->g_97.s0, 7)) || (255UL <= p_1642->g_108)), 0UL))) ^ ((safe_add_func_int8_t_s_s((((((safe_div_func_int16_t_s_s((((*l_1149) = ((l_1218 == l_1219[3]) | p_1642->g_514.s7)) >= (*l_1140)), 0x217FL)) <= 0UL) & 8UL) & p_22) , p_1642->g_14), p_22)) & 0x6AC40924D41109F0L)))), (*l_1140))), ((VECTOR(int64_t, 4))(0L)), 0x3467C5926BDAB1F7L, 0x506E495617638EC9L)).odd, ((VECTOR(int64_t, 4))(7L))))).odd, ((VECTOR(int64_t, 2))(0x2B0E9A712AD32583L))))).even, p_23))), 65535UL)), ((VECTOR(uint16_t, 2))(0x8949L)), 0x7D42L, ((VECTOR(uint16_t, 2))(0xAB57L)), 9UL)).s6) || l_1220) == p_22), p_1642->g_498.s6, p_1642->g_191.s2, 255UL, 252UL, ((VECTOR(uint8_t, 2))(0xF1L)), 255UL)).s3, 1UL))) && 0x6971F0ECD04F1957L) , (*l_1140)), p_23)) , (*l_1140));
            }
            if (((p_21 == p_22) || ((((p_1642->g_1225[6] = l_1224) != (l_1228 = &p_1642->g_108)) | (+((VECTOR(int32_t, 2))(p_1642->g_1229.zz)).odd)) , (((safe_sub_func_uint64_t_u_u((safe_add_func_uint16_t_u_u((safe_rshift_func_int8_t_s_u(((((*l_1149) &= (((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(l_1236.zw)).xyyy)).z <= (safe_div_func_int8_t_s_s(((*l_1157) &= (((safe_mod_func_int64_t_s_s(((VECTOR(int64_t, 2))(l_1241.yx)).odd, p_23)) <= p_1642->g_605) != ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 8))(hadd(((VECTOR(uint64_t, 16))(abs(((VECTOR(uint64_t, 4))(l_1242.wywy)).xyxyxywzwxzwzyzw))).lo, ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 16))((safe_mul_func_int8_t_s_s(((safe_rshift_func_uint8_t_u_u((safe_mod_func_int16_t_s_s((((((((((safe_mod_func_uint8_t_u_u((((7UL == ((((safe_sub_func_uint32_t_u_u((safe_div_func_uint32_t_u_u((l_1255[1][1][2] == ((p_23 , p_23) , (void*)0)), l_1144)), p_23)) == (-1L)) & 0x3914L) , l_1256)) > (*l_1140)) ^ l_1257), p_1642->g_605)) ^ 0x2360L) >= GROUP_DIVERGE(0, 1)) || 1UL) < (*p_1642->g_518)) <= p_23) , 247UL) >= p_1642->g_84.y) ^ 1UL), p_22)), l_1144)) || 0x3EL), p_1642->g_1229.z)), 0xBB759B72CE8058BBL, 0UL, ((VECTOR(uint64_t, 8))(0xA0002D7B3E2C2EE5L)), 0xA23779FB83F48241L, ((VECTOR(uint64_t, 4))(2UL)))))).hi))))))).lo)).w)), 0x1EL)))) < p_1642->g_1258[3]) > (-8L)), 3)), 2L)), (*l_1140))) & (*p_1642->g_866)) && 65530UL))))
            { /* block id: 497 */
                int32_t **l_1264 = &p_1642->g_1190;
                int32_t l_1266 = 0x75A71D77L;
                uint8_t **l_1292 = &l_1150[2][1];
                int32_t **l_1300 = &p_1642->g_30;
                (*l_1140) = (((safe_div_func_uint8_t_u_u((((safe_add_func_uint8_t_u_u((l_1263 != (p_1642->g_1265 = l_1264)), (~l_1266))) == (-6L)) && (safe_add_func_int64_t_s_s((*l_1140), (((safe_lshift_func_uint16_t_u_s(p_22, 5)) == (safe_mod_func_uint64_t_u_u((p_21 == p_23), (safe_add_func_uint32_t_u_u((safe_rshift_func_int8_t_s_u(((void*)0 != &p_1642->g_608[1]), GROUP_DIVERGE(0, 1))), 5L))))) ^ 0x26L)))), l_1266)) , l_1242.y) , l_1158.y);
                (*p_1642->g_1277) = l_1132[3][1];
                l_1193 ^= ((safe_mod_func_int16_t_s_s((p_21 || (safe_sub_func_uint8_t_u_u((safe_mul_func_int8_t_s_s(((*l_1140) , ((((safe_mul_func_uint8_t_u_u((((safe_unary_minus_func_int32_t_s((safe_div_func_uint16_t_u_u(((p_22 > ((VECTOR(uint64_t, 8))(hadd(((VECTOR(uint64_t, 2))(rhadd(((VECTOR(uint64_t, 16))(l_1289.xxxyyxyxxyxxyxyy)).s68, ((VECTOR(uint64_t, 4))(l_1290.sab19)).lo))).xyyyxyxx, ((VECTOR(uint64_t, 8))(p_1642->g_1291.yxyxxxyx))))).s7) >= ((p_21 , (*l_1140)) , (&l_1191 != ((*l_1292) = &p_1642->g_412)))), ((safe_mul_func_int16_t_s_s((safe_add_func_uint32_t_u_u((safe_rshift_func_int16_t_s_u((l_1227 == l_1299[1]), 10)), p_23)), 0xFD0EL)) | p_22))))) == 1UL) != l_1266), l_1266)) > (-3L)) ^ 0xB3L) || p_21)), (-1L))), p_23))), p_22)) > l_1144);
                (*l_1300) = &l_1266;
            }
            else
            { /* block id: 504 */
                int32_t *l_1304 = (void*)0;
                int16_t *l_1338 = &p_1642->g_108;
                uint64_t *l_1359 = &p_1642->g_942;
                int8_t l_1382 = (-1L);
                int64_t l_1385 = 0x5B3589CDC7D0E5E3L;
                (*l_1140) = (p_22 <= (((*p_1642->g_689) == l_1301) != l_1158.y));
                for (p_1642->g_106 = (-20); (p_1642->g_106 < 14); ++p_1642->g_106)
                { /* block id: 508 */
                    VECTOR(int32_t, 4) l_1305 = (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, (-1L)), (-1L));
                    uint32_t *l_1307 = &p_1642->g_605;
                    VECTOR(int8_t, 4) l_1320 = (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), (-3L)), (-3L));
                    int32_t l_1344 = 0x78366755L;
                    uint32_t l_1351 = 0xDF59589CL;
                    uint8_t *l_1414 = &p_1642->g_412;
                    int i;
                    l_1304 = &l_1192;
                    if (((p_23 , FAKE_DIVERGE(p_1642->local_1_offset, get_local_id(1), 10)) , ((*p_1642->g_518) | (((((VECTOR(int64_t, 2))(max(((VECTOR(int64_t, 8))(upsample(((VECTOR(int32_t, 16))(l_1305.wzyyxzxzxyzwxwxy)).hi, ((VECTOR(uint32_t, 16))(max(((VECTOR(uint32_t, 16))(p_1642->g_1306.xxxxxxyxyxyxyxxy)), (uint32_t)((*l_1307)--)))).hi))).s66, ((VECTOR(int64_t, 4))(p_23, 0x70D545A4392A2A4FL, 9L, 0x12E43A349D560A6AL)).odd))).even == (((!(~(&p_1642->g_508 == &p_1642->g_508))) <= ((VECTOR(int16_t, 8))((safe_sub_func_uint32_t_u_u((*p_1642->g_518), (((p_23 , ((safe_lshift_func_int8_t_s_u(p_22, FAKE_DIVERGE(p_1642->local_2_offset, get_local_id(2), 10))) || p_21)) == FAKE_DIVERGE(p_1642->local_2_offset, get_local_id(2), 10)) ^ GROUP_DIVERGE(1, 1)))), ((VECTOR(int16_t, 2))((-1L))), (-1L), 0x05FDL, 1L, (-4L), 0x11CFL)).s6) > p_22)) || l_1242.z) != 0xCB926CC4L))))
                    { /* block id: 511 */
                        int64_t l_1327 = 0x032903CED141A1ECL;
                        VECTOR(uint8_t, 4) l_1330 = (VECTOR(uint8_t, 4))(0xAEL, (VECTOR(uint8_t, 2))(0xAEL, 4UL), 4UL);
                        VECTOR(uint8_t, 8) l_1343 = (VECTOR(uint8_t, 8))(4UL, (VECTOR(uint8_t, 4))(4UL, (VECTOR(uint8_t, 2))(4UL, 0xE1L), 0xE1L), 0xE1L, 4UL, 0xE1L);
                        uint64_t **l_1360 = &p_1642->g_227[2][6][1];
                        int i;
                        (*l_1304) = ((((safe_mul_func_uint8_t_u_u((safe_sub_func_int32_t_s_s(((safe_sub_func_int8_t_s_s(((VECTOR(int8_t, 2))(0x31L, 2L)).lo, (*l_1304))) ^ (((VECTOR(int32_t, 4))((((VECTOR(int16_t, 4))(upsample(((VECTOR(int8_t, 4))(clz(((VECTOR(int8_t, 16))(l_1320.zwzwwxxxzyyxwwww)).seda3))), ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(0x8EL, 6UL)), 0x75L, (safe_sub_func_int16_t_s_s(((l_1323 == (void*)0) | (safe_add_func_int8_t_s_s((((VECTOR(int64_t, 16))(((VECTOR(int64_t, 8))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 8),((VECTOR(int64_t, 2))(0x088F5E066F39A365L, 0x12ACB59011482DB6L)).xyyyyxyy, ((VECTOR(int64_t, 2))(l_1326.yy)).yxyxyxyx, ((VECTOR(int64_t, 8))((l_1327 = (*l_1304)), 1L, (-1L), ((safe_mul_func_int8_t_s_s(p_1642->g_158.x, 6UL)) , l_1242.z), (((VECTOR(uint8_t, 2))(l_1330.zy)).odd || ((safe_rshift_func_int16_t_s_u((*l_1304), ((VECTOR(uint16_t, 8))(l_1333.s76be6934)).s6)) >= (0x29B51A0C51BC6E55L <= p_21))), ((VECTOR(int64_t, 2))((-1L))), (-1L)))))).s4447076472500055)).sf > (*l_1304)), p_1642->g_692.sf))), p_21)), 253UL, 0xADL, 255UL, 1UL)).s37)).yxxx))))).y > FAKE_DIVERGE(p_1642->local_1_offset, get_local_id(1), 10)), ((VECTOR(int32_t, 2))(0x7393BCD5L)), (-7L))).z > p_21)), (*p_1642->g_518))), p_1642->g_156[5][2])) != 0x55L) , &p_1642->g_835) != (void*)0);
                        l_1344 = (((((-7L) && (p_1642->g_1334 != &p_1642->g_1335)) , l_1338) != (void*)0) == ((-5L) <= ((((VECTOR(int64_t, 8))(sub_sat(((VECTOR(int64_t, 16))((-7L), (l_1193 |= (*l_1304)), l_1305.x, (((safe_mod_func_uint16_t_u_u(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(p_1642->g_1341.s1ed7)).zxxwxzxz)).even)).w, ((((VECTOR(uint32_t, 16))(l_1342.xxyyyyxyxxxxyyyx)).sc , ((VECTOR(uint8_t, 16))(l_1343.s7504432202426031)).sc) || (((0x428F3D39L && p_1642->g_1229.w) > FAKE_DIVERGE(p_1642->group_2_offset, get_group_id(2), 10)) == p_21)))) < p_22) > (-7L)), l_1342.y, 0L, p_22, ((VECTOR(int64_t, 4))(0L)), 0L, ((VECTOR(int64_t, 2))(1L)), (-2L), 0x24276946BDBB87F0L)).lo, ((VECTOR(int64_t, 8))(1L))))).s3 && FAKE_DIVERGE(p_1642->group_2_offset, get_group_id(2), 10)) | (*p_1642->g_518))));
                        if (l_1327)
                            break;
                        l_1344 ^= (safe_mul_func_uint16_t_u_u(((safe_lshift_func_int8_t_s_s((((safe_sub_func_int32_t_s_s((l_1351 , (((safe_div_func_int32_t_s_s((safe_sub_func_int16_t_s_s(((*l_1338) = (safe_rshift_func_int16_t_s_u((*l_1140), p_21))), (l_1358[4] != ((*l_1360) = l_1359)))), p_23)) >= (safe_sub_func_uint8_t_u_u(((((l_1376 ^= ((safe_div_func_uint16_t_u_u(((safe_mod_func_uint16_t_u_u(((safe_mul_func_uint16_t_u_u(((VECTOR(uint16_t, 4))(l_1369.ywxz)).y, ((safe_rshift_func_int8_t_s_s(p_1642->g_399.s2, (((safe_mul_func_uint16_t_u_u(p_21, (p_1642->g_660 || 0L))) < 0UL) , l_1343.s3))) == (*l_1140)))) > l_1330.w), (*l_1304))) >= 0x7B2CL), 65533UL)) || 0x0C97L)) == p_23) , l_1242.x) , p_1642->g_109.s2), 0x12L))) > p_21)), l_1305.y)) | p_1642->g_649.y) > l_1305.x), 3)) ^ 0L), p_21));
                    }
                    else
                    { /* block id: 521 */
                        uint16_t l_1381 = 0xFACDL;
                        (*l_1140) &= (0x3DL != (0x7DL >= (safe_lshift_func_uint8_t_u_s((safe_sub_func_int16_t_s_s(p_22, (p_23 , (l_1305.x <= (l_1381 = p_21))))), l_1382))));
                        (*l_1304) = (safe_sub_func_uint64_t_u_u(((*l_1359)--), (l_1305.z <= 18446744073709551615UL)));
                        (*l_1304) = ((*p_1642->g_594) != (void*)0);
                    }
                    if ((p_21 < 1L))
                    { /* block id: 528 */
                        uint16_t l_1389 = 0UL;
                        if (l_1193)
                            goto lbl_1388;
                        if (l_1389)
                            break;
                        if (l_1144)
                            break;
                    }
                    else
                    { /* block id: 532 */
                        int16_t l_1392[7][3][2] = {{{0x7424L,1L},{0x7424L,1L},{0x7424L,1L}},{{0x7424L,1L},{0x7424L,1L},{0x7424L,1L}},{{0x7424L,1L},{0x7424L,1L},{0x7424L,1L}},{{0x7424L,1L},{0x7424L,1L},{0x7424L,1L}},{{0x7424L,1L},{0x7424L,1L},{0x7424L,1L}},{{0x7424L,1L},{0x7424L,1L},{0x7424L,1L}},{{0x7424L,1L},{0x7424L,1L},{0x7424L,1L}}};
                        int32_t l_1415 = (-2L);
                        int i, j, k;
                        (*l_1304) = ((*l_1140) = 0x22DCB70EL);
                        l_1392[6][1][1] = ((VECTOR(int32_t, 8))(min(((VECTOR(int32_t, 2))(l_1390.s02)).xyyyxxyx, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(l_1391.se2)), 0x43D77F24L, 0x1AFDE12CL)))).zwwyzyyy))).s7;
                        (*l_1304) = 1L;
                        (*l_1140) = (safe_mul_func_uint16_t_u_u((safe_sub_func_int8_t_s_s((((l_1398 = l_1397) == (((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(mad_sat(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(hadd(((VECTOR(int8_t, 16))(p_1642->g_1399.se577b77bfc66d3e4)).s7c, ((VECTOR(int8_t, 8))(sub_sat(((VECTOR(int8_t, 8))(0x6FL, 0x21L, 0L, ((VECTOR(int8_t, 2))((-1L), 0x40L)), 0L, 0x00L, (-10L))), ((VECTOR(int8_t, 4))(0x51L, 0x0DL, 0L, 6L)).wxzywywz))).s60))), 0x7DL, 0x1BL)).wxxxywywwzxzxyyz, ((VECTOR(int8_t, 2))(p_1642->g_1400.yx)).xxyxxyxyyyyxyyyx, ((VECTOR(int8_t, 8))(0x08L, 0x64L, ((VECTOR(int8_t, 2))(6L, (-1L))), ((VECTOR(int8_t, 2))(0x46L, 1L)), 0x2DL, 6L)).s1353216035461121))).s7723)).y , &p_22)) , p_1642->g_938.y), (l_1415 = (safe_add_func_uint32_t_u_u((safe_mul_func_uint16_t_u_u(1UL, ((VECTOR(int16_t, 4))(1L, ((((safe_rshift_func_uint8_t_u_s(p_22, 1)) >= 0x808E6711L) , (p_21 >= (--(*l_1359)))) | ((+(((safe_add_func_int32_t_s_s((safe_div_func_uint32_t_u_u(((((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(p_1642->g_1413.yx)).yxyyxxxy)).s0 , l_1414) != (void*)0), l_1351)), 4UL)) & p_21) || l_1392[6][1][1])) >= p_21)), 0x76D1L, 0x4E08L)).w)), p_23))))), l_1392[6][1][1]));
                    }
                }
            }
        }
        if ((18446744073709551609UL != GROUP_DIVERGE(2, 1)))
        { /* block id: 545 */
            VECTOR(int64_t, 4) l_1416 = (VECTOR(int64_t, 4))(0x6C258AA96427CE22L, (VECTOR(int64_t, 2))(0x6C258AA96427CE22L, 3L), 3L);
            VECTOR(int64_t, 4) l_1419 = (VECTOR(int64_t, 4))(8L, (VECTOR(int64_t, 2))(8L, (-1L)), (-1L));
            int32_t l_1421 = 0x75416AE3L;
            int32_t l_1422[4][2][5] = {{{0x5439959FL,2L,0L,2L,0x5439959FL},{0x5439959FL,2L,0L,2L,0x5439959FL}},{{0x5439959FL,2L,0L,2L,0x5439959FL},{0x5439959FL,2L,0L,2L,0x5439959FL}},{{0x5439959FL,2L,0L,2L,0x5439959FL},{0x5439959FL,2L,0L,2L,0x5439959FL}},{{0x5439959FL,2L,0L,2L,0x5439959FL},{0x5439959FL,2L,0L,2L,0x5439959FL}}};
            int i, j, k;
            l_1422[0][1][1] = (l_1421 = ((((VECTOR(int64_t, 16))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 8))(max(((VECTOR(int64_t, 8))(clz(((VECTOR(int64_t, 4))(l_1416.xwyy)).xxzyxxxw))), (int64_t)((VECTOR(int64_t, 8))(((VECTOR(int64_t, 8))(add_sat(((VECTOR(int64_t, 16))(max(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))(7L, 0x4361B83C4D5B5B66L)).xyyyxyxx)))).s1253170742330702, ((VECTOR(int64_t, 16))(mad_sat(((VECTOR(int64_t, 16))(l_1417.sb1f19a5bab73e802)), ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 8))(mul_hi(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 2))(l_1418.zx)).xxyxyxxxxxxxxxxx)).hi, ((VECTOR(int64_t, 8))(l_1419.yzyxyzyw))))).s24)).yyxxyxyyyyyxxxyx, ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 4))(l_1420.s7fe1)))).wxxyxyxwwyzywxzy)))))).odd, ((VECTOR(int64_t, 2))(1L, 0x6F6372875F418147L)).yxxxyyxx))))).s0))).s55)))).yxxyxyxxyyxxyxxx)).s2 >= p_23) , l_1416.y));
        }
        else
        { /* block id: 548 */
            uint32_t l_1423 = 9UL;
            int32_t l_1426 = 0x1145DF07L;
            int32_t l_1429 = 0x78D20CE8L;
            int32_t l_1430 = 6L;
            int32_t l_1431 = 0L;
            int32_t **l_1432 = &l_1132[1][6];
            uint32_t **l_1440 = &p_1642->g_518;
            ++l_1423;
            l_1426 = l_1423;
            (*l_1432) = func_87(l_1426, func_87((safe_sub_func_uint64_t_u_u((l_1430 ^= (l_1391.s6 |= (l_1429 = p_21))), (l_1431 &= p_21))), &l_1426, p_1642), p_1642);
            for (l_1431 = 29; (l_1431 == (-25)); l_1431 = safe_sub_func_int16_t_s_s(l_1431, 7))
            { /* block id: 558 */
                uint16_t l_1446 = 65527UL;
                uint8_t *l_1456 = (void*)0;
                uint8_t **l_1455 = &l_1456;
                uint8_t **l_1458[2][9] = {{&l_1456,(void*)0,&l_1456,&l_1456,(void*)0,&l_1456,&l_1456,(void*)0,&l_1456},{&l_1456,(void*)0,&l_1456,&l_1456,(void*)0,&l_1456,&l_1456,(void*)0,&l_1456}};
                uint32_t l_1466 = 4294967295UL;
                int32_t l_1490[9] = {0L,0L,0L,0L,0L,0L,0L,0L,0L};
                uint32_t l_1494 = 0UL;
                int i, j;
                for (p_1642->g_292 = 29; (p_1642->g_292 <= 59); ++p_1642->g_292)
                { /* block id: 561 */
                    int32_t l_1437 = 0x52A0D886L;
                    uint32_t **l_1438 = &p_1642->g_518;
                    uint32_t ***l_1439 = &l_1438;
                    uint16_t l_1443[5] = {1UL,1UL,1UL,1UL,1UL};
                    int i;
                    l_1443[3] &= ((1L && ((p_22 | l_1437) <= (((*l_1439) = l_1438) != l_1440))) <= (safe_lshift_func_uint16_t_u_s(p_21, l_1437)));
                }
                for (p_1642->g_106 = 0; (p_1642->g_106 >= 6); p_1642->g_106++)
                { /* block id: 567 */
                    uint8_t *l_1451 = &p_1642->g_412;
                    uint8_t ***l_1457 = &l_1455;
                    int32_t l_1462 = (-7L);
                    int16_t *l_1468[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                    int32_t l_1469 = (-1L);
                    VECTOR(int32_t, 2) l_1491 = (VECTOR(int32_t, 2))(0x0E797BBDL, 0x6910CA83L);
                    int i;
                    if (l_1446)
                        break;
                    if (((((safe_rshift_func_uint16_t_u_s(0x9612L, (l_1469 = (((safe_rshift_func_uint8_t_u_u(((*l_1451) = 0xBBL), (p_1642->g_649.x = 255UL))) < (!(safe_add_func_uint32_t_u_u(((((VECTOR(uint8_t, 8))(p_1642->g_1454.sa22aaf2b)).s6 , (((*l_1457) = l_1455) == (l_1458[0][1] = &l_1456))) ^ (safe_mul_func_uint8_t_u_u(((VECTOR(uint8_t, 16))(0x13L, ((VECTOR(uint8_t, 2))(p_1642->g_1461.yx)), ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 2))(250UL, 0xE3L)))).xyxx)).z, ((VECTOR(uint8_t, 4))(mad_sat(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(mul_hi(((VECTOR(uint8_t, 2))(mad_sat(((VECTOR(uint8_t, 8))(1UL, 8UL, 255UL, (p_23 != l_1462), (l_1462 = (((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))((safe_rshift_func_int16_t_s_s(((((VECTOR(int32_t, 16))(upsample(((VECTOR(int16_t, 16))(0x2A6DL, p_21, p_21, 0x59DAL, p_22, 1L, 0L, ((VECTOR(int16_t, 8))(0L)), 1L)), ((VECTOR(uint16_t, 16))(65528UL))))).s5 , l_1446) < 0UL), p_21)), ((VECTOR(int16_t, 2))(0x4F25L)), 0x0079L)), p_1642->g_1465, 0x7A3DL, (-1L), 0x5B40L)).s4 || (-1L))), ((VECTOR(uint8_t, 2))(246UL)), 251UL)).s05, ((VECTOR(uint8_t, 2))(0UL)), ((VECTOR(uint8_t, 2))(0UL))))).yyyy, ((VECTOR(uint8_t, 4))(0UL))))).odd)).xxyxxyxx)).even, ((VECTOR(uint8_t, 4))(255UL)), ((VECTOR(uint8_t, 4))(0xC9L))))), ((VECTOR(uint8_t, 4))(255UL)), 6UL, ((VECTOR(uint8_t, 2))(0UL)), 0x81L)).sd, l_1466))), l_1467[6][5][0])))) && p_22)))) > p_23) , 0xDCC46B643E3C2CDFL) != 0xC675634117789F3FL))
                    { /* block id: 575 */
                        int64_t l_1470 = 0x4D22480F9B826F96L;
                        VECTOR(uint8_t, 16) l_1477 = (VECTOR(uint8_t, 16))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0UL), 0UL), 0UL, 0UL, 0UL, (VECTOR(uint8_t, 2))(0UL, 0UL), (VECTOR(uint8_t, 2))(0UL, 0UL), 0UL, 0UL, 0UL, 0UL);
                        uint64_t l_1489 = 0x96F1D71CA4419A32L;
                        int32_t l_1492 = 0x7D36B045L;
                        int32_t l_1493[10][5] = {{0x3C987D36L,0x6D52BF0FL,0x512ADE71L,0x225444E5L,(-2L)},{0x3C987D36L,0x6D52BF0FL,0x512ADE71L,0x225444E5L,(-2L)},{0x3C987D36L,0x6D52BF0FL,0x512ADE71L,0x225444E5L,(-2L)},{0x3C987D36L,0x6D52BF0FL,0x512ADE71L,0x225444E5L,(-2L)},{0x3C987D36L,0x6D52BF0FL,0x512ADE71L,0x225444E5L,(-2L)},{0x3C987D36L,0x6D52BF0FL,0x512ADE71L,0x225444E5L,(-2L)},{0x3C987D36L,0x6D52BF0FL,0x512ADE71L,0x225444E5L,(-2L)},{0x3C987D36L,0x6D52BF0FL,0x512ADE71L,0x225444E5L,(-2L)},{0x3C987D36L,0x6D52BF0FL,0x512ADE71L,0x225444E5L,(-2L)},{0x3C987D36L,0x6D52BF0FL,0x512ADE71L,0x225444E5L,(-2L)}};
                        int i, j;
                        l_1429 = ((l_1470 < (-1L)) || (safe_div_func_int16_t_s_s(l_1446, (safe_sub_func_int16_t_s_s(l_1158.z, (((safe_sub_func_uint8_t_u_u((((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(254UL, 1UL, 252UL, 0xEAL, 252UL, ((VECTOR(uint8_t, 2))(l_1477.s09)), 0x4BL)).s37)))).xxyx)).y & (l_1469 &= ((safe_rshift_func_uint16_t_u_u(GROUP_DIVERGE(2, 1), 10)) , (safe_div_func_uint8_t_u_u((safe_sub_func_uint32_t_u_u((((*p_1642->g_866) &= 0x313AL) , (l_1484 == ((*l_1457) = p_1642->g_1485))), (((safe_mod_func_uint16_t_u_u(l_1489, l_1466)) >= 0x024FB216B45D8860L) , 4294967294UL))), p_22))))), p_22)) || p_21) | l_1418.w))))));
                        l_1494--;
                        l_1490[6] |= l_1497;
                        return l_1494;
                    }
                    else
                    { /* block id: 583 */
                        return l_1494;
                    }
                }
                for (p_1642->g_508 = 0; (p_1642->g_508 != 30); p_1642->g_508 = safe_add_func_int8_t_s_s(p_1642->g_508, 1))
                { /* block id: 589 */
                    return l_1500;
                }
            }
        }
        l_1193 |= (((*l_1517) = (safe_unary_minus_func_int8_t_s((safe_rshift_func_int8_t_s_u((((safe_sub_func_uint16_t_u_u(((*p_1642->g_866) = (safe_sub_func_uint8_t_u_u((**p_1642->g_1485), (*p_1642->g_1486)))), (l_1391.s6 = (safe_lshift_func_int16_t_s_u(((((p_21 == p_21) && (l_1342.y > (p_1642->g_156[5][2] &= 0x21L))) < ((l_1158.y < (safe_rshift_func_int16_t_s_s((p_21 & ((l_1515 == l_1516[5][2][0]) < p_23)), 0))) || (-3L))) != GROUP_DIVERGE(1, 1)), p_21))))) >= 1L) | 0x147C2CE0L), 7))))) & 0x52ADL);
    }
    return p_21;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes: p_1642->g_29
 */
int16_t  func_26(uint32_t  p_27, struct S0 * p_1642)
{ /* block id: 5 */
    int32_t *l_28 = &p_1642->g_29[0];
    (*l_28) = 0x50881826L;
    return p_27;
}


/* ------------------------------------------ */
/* 
 * reads : p_1642->g_292 p_1642->g_866 p_1642->g_355 p_1642->g_518 p_1642->g_290 p_1642->g_168 p_1642->g_942 p_1642->g_946 p_1642->g_399 p_1642->g_596 p_1642->g_109 p_1642->g_649 p_1642->g_548 p_1642->g_106 p_1642->g_412 p_1642->g_660 p_1642->g_170 p_1642->g_191 p_1642->g_97 p_1642->g_696 p_1642->g_697 p_1642->g_108 p_1642->g_508 p_1642->g_158 p_1642->g_14 p_1642->g_498 p_1642->g_983 p_1642->g_190 p_1642->g_143 p_1642->g_29 p_1642->g_1048 p_1642->g_892 p_1642->g_1061 p_1642->g_1086 p_1642->g_480 p_1642->g_156 p_1642->g_188 p_1642->g_202
 * writes: p_1642->g_292 p_1642->g_256 p_1642->g_168 p_1642->g_290 p_1642->g_942 p_1642->g_106 p_1642->g_399 p_1642->g_649 p_1642->g_143 p_1642->g_188 p_1642->g_108 p_1642->g_660 p_1642->g_412 p_1642->g_67 p_1642->g_578 p_1642->g_508 p_1642->g_430 p_1642->g_158 p_1642->g_355 p_1642->g_836
 */
int64_t  func_41(int8_t * p_42, int8_t  p_43, uint16_t  p_44, struct S0 * p_1642)
{ /* block id: 363 */
    uint16_t l_874 = 1UL;
    VECTOR(int16_t, 2) l_885 = (VECTOR(int16_t, 2))(5L, 1L);
    int32_t *l_896 = &p_1642->g_168[0];
    int32_t l_899[9][6][3] = {{{7L,6L,0x742200D3L},{7L,6L,0x742200D3L},{7L,6L,0x742200D3L},{7L,6L,0x742200D3L},{7L,6L,0x742200D3L},{7L,6L,0x742200D3L}},{{7L,6L,0x742200D3L},{7L,6L,0x742200D3L},{7L,6L,0x742200D3L},{7L,6L,0x742200D3L},{7L,6L,0x742200D3L},{7L,6L,0x742200D3L}},{{7L,6L,0x742200D3L},{7L,6L,0x742200D3L},{7L,6L,0x742200D3L},{7L,6L,0x742200D3L},{7L,6L,0x742200D3L},{7L,6L,0x742200D3L}},{{7L,6L,0x742200D3L},{7L,6L,0x742200D3L},{7L,6L,0x742200D3L},{7L,6L,0x742200D3L},{7L,6L,0x742200D3L},{7L,6L,0x742200D3L}},{{7L,6L,0x742200D3L},{7L,6L,0x742200D3L},{7L,6L,0x742200D3L},{7L,6L,0x742200D3L},{7L,6L,0x742200D3L},{7L,6L,0x742200D3L}},{{7L,6L,0x742200D3L},{7L,6L,0x742200D3L},{7L,6L,0x742200D3L},{7L,6L,0x742200D3L},{7L,6L,0x742200D3L},{7L,6L,0x742200D3L}},{{7L,6L,0x742200D3L},{7L,6L,0x742200D3L},{7L,6L,0x742200D3L},{7L,6L,0x742200D3L},{7L,6L,0x742200D3L},{7L,6L,0x742200D3L}},{{7L,6L,0x742200D3L},{7L,6L,0x742200D3L},{7L,6L,0x742200D3L},{7L,6L,0x742200D3L},{7L,6L,0x742200D3L},{7L,6L,0x742200D3L}},{{7L,6L,0x742200D3L},{7L,6L,0x742200D3L},{7L,6L,0x742200D3L},{7L,6L,0x742200D3L},{7L,6L,0x742200D3L},{7L,6L,0x742200D3L}}};
    uint32_t l_901[10][7];
    VECTOR(int8_t, 16) l_917 = (VECTOR(int8_t, 16))(0x4DL, (VECTOR(int8_t, 4))(0x4DL, (VECTOR(int8_t, 2))(0x4DL, (-9L)), (-9L)), (-9L), 0x4DL, (-9L), (VECTOR(int8_t, 2))(0x4DL, (-9L)), (VECTOR(int8_t, 2))(0x4DL, (-9L)), 0x4DL, (-9L), 0x4DL, (-9L));
    uint16_t ***l_925 = &p_1642->g_865;
    VECTOR(int32_t, 16) l_929 = (VECTOR(int32_t, 16))((-6L), (VECTOR(int32_t, 4))((-6L), (VECTOR(int32_t, 2))((-6L), 0L), 0L), 0L, (-6L), 0L, (VECTOR(int32_t, 2))((-6L), 0L), (VECTOR(int32_t, 2))((-6L), 0L), (-6L), 0L, (-6L), 0L);
    VECTOR(int16_t, 2) l_939 = (VECTOR(int16_t, 2))(0x6B56L, 0x3F57L);
    VECTOR(int16_t, 8) l_940 = (VECTOR(int16_t, 8))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x00E4L), 0x00E4L), 0x00E4L, (-1L), 0x00E4L);
    int16_t *l_960 = &p_1642->g_108;
    uint8_t l_971 = 0x16L;
    VECTOR(int64_t, 2) l_974 = (VECTOR(int64_t, 2))(0L, (-2L));
    uint32_t l_980 = 0xF768F17CL;
    uint64_t **l_1070 = &p_1642->g_227[2][6][3];
    uint64_t ***l_1069 = &l_1070;
    VECTOR(uint32_t, 4) l_1115 = (VECTOR(uint32_t, 4))(0x65E1682CL, (VECTOR(uint32_t, 2))(0x65E1682CL, 5UL), 5UL);
    VECTOR(uint64_t, 16) l_1124 = (VECTOR(uint64_t, 16))(18446744073709551615UL, (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 18446744073709551615UL), 18446744073709551615UL), 18446744073709551615UL, 18446744073709551615UL, 18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 18446744073709551615UL), (VECTOR(uint64_t, 2))(18446744073709551615UL, 18446744073709551615UL), 18446744073709551615UL, 18446744073709551615UL, 18446744073709551615UL, 18446744073709551615UL);
    int i, j, k;
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 7; j++)
            l_901[i][j] = 3UL;
    }
    for (p_1642->g_292 = (-26); (p_1642->g_292 <= 39); p_1642->g_292++)
    { /* block id: 366 */
        int32_t *l_873[2][3];
        VECTOR(uint64_t, 8) l_908 = (VECTOR(uint64_t, 8))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 0x3A0C877E877E94A7L), 0x3A0C877E877E94A7L), 0x3A0C877E877E94A7L, 1UL, 0x3A0C877E877E94A7L);
        VECTOR(int64_t, 8) l_918 = (VECTOR(int64_t, 8))(0L, (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 0x1F40BAAAA9379DB7L), 0x1F40BAAAA9379DB7L), 0x1F40BAAAA9379DB7L, 0L, 0x1F40BAAAA9379DB7L);
        VECTOR(uint32_t, 16) l_934 = (VECTOR(uint32_t, 16))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 0x670BA739L), 0x670BA739L), 0x670BA739L, 4294967295UL, 0x670BA739L, (VECTOR(uint32_t, 2))(4294967295UL, 0x670BA739L), (VECTOR(uint32_t, 2))(4294967295UL, 0x670BA739L), 4294967295UL, 0x670BA739L, 4294967295UL, 0x670BA739L);
        int16_t *l_962 = (void*)0;
        int16_t **l_961 = &l_962;
        uint8_t *l_975 = &l_971;
        uint32_t *l_976[7][8] = {{&p_1642->g_292,(void*)0,(void*)0,&p_1642->g_292,(void*)0,&p_1642->g_292,(void*)0,(void*)0},{&p_1642->g_292,(void*)0,(void*)0,&p_1642->g_292,(void*)0,&p_1642->g_292,(void*)0,(void*)0},{&p_1642->g_292,(void*)0,(void*)0,&p_1642->g_292,(void*)0,&p_1642->g_292,(void*)0,(void*)0},{&p_1642->g_292,(void*)0,(void*)0,&p_1642->g_292,(void*)0,&p_1642->g_292,(void*)0,(void*)0},{&p_1642->g_292,(void*)0,(void*)0,&p_1642->g_292,(void*)0,&p_1642->g_292,(void*)0,(void*)0},{&p_1642->g_292,(void*)0,(void*)0,&p_1642->g_292,(void*)0,&p_1642->g_292,(void*)0,(void*)0},{&p_1642->g_292,(void*)0,(void*)0,&p_1642->g_292,(void*)0,&p_1642->g_292,(void*)0,(void*)0}};
        int64_t *l_977 = (void*)0;
        int64_t *l_978 = (void*)0;
        int64_t *l_979[7];
        uint8_t *l_981 = (void*)0;
        int32_t *l_994[7] = {&p_1642->g_578,(void*)0,&p_1642->g_578,&p_1642->g_578,(void*)0,&p_1642->g_578,&p_1642->g_578};
        int32_t *l_1024 = &p_1642->g_578;
        int32_t **l_1023 = &l_1024;
        VECTOR(int64_t, 8) l_1045 = (VECTOR(int64_t, 8))((-2L), (VECTOR(int64_t, 4))((-2L), (VECTOR(int64_t, 2))((-2L), 0L), 0L), 0L, (-2L), 0L);
        int64_t l_1052 = 3L;
        uint16_t l_1087 = 0xC864L;
        int64_t ***l_1095 = &p_1642->g_594;
        int8_t l_1096 = 0x3CL;
        VECTOR(uint32_t, 4) l_1114 = (VECTOR(uint32_t, 4))(0x7E6DAC86L, (VECTOR(uint32_t, 2))(0x7E6DAC86L, 1UL), 1UL);
        uint16_t **l_1125 = &p_1642->g_866;
        uint8_t l_1130 = 1UL;
        int32_t l_1131 = 0x1E1358A7L;
        int i, j;
        for (i = 0; i < 2; i++)
        {
            for (j = 0; j < 3; j++)
                l_873[i][j] = &p_1642->g_168[0];
        }
        for (i = 0; i < 7; i++)
            l_979[i] = (void*)0;
        l_874 &= p_43;
        for (p_1642->g_256 = (-24); (p_1642->g_256 >= (-1)); p_1642->g_256++)
        { /* block id: 370 */
            VECTOR(int16_t, 8) l_893 = (VECTOR(int16_t, 8))((-2L), (VECTOR(int16_t, 4))((-2L), (VECTOR(int16_t, 2))((-2L), 0x20B2L), 0x20B2L), 0x20B2L, (-2L), 0x20B2L);
            int32_t **l_897 = &l_873[0][2];
            int32_t l_898 = (-9L);
            int32_t l_900[1];
            int64_t *l_904 = (void*)0;
            VECTOR(int8_t, 4) l_916 = (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x1DL), 0x1DL);
            uint16_t l_926 = 0xB42FL;
            uint32_t l_930 = 0x0647E459L;
            uint32_t l_931[7] = {0x7DAEA45FL,0x3B6CC05DL,0x7DAEA45FL,0x7DAEA45FL,0x3B6CC05DL,0x7DAEA45FL,0x7DAEA45FL};
            uint32_t l_953 = 2UL;
            int i;
            for (i = 0; i < 1; i++)
                l_900[i] = 0x617C5591L;
            (*l_897) = (((safe_sub_func_uint32_t_u_u(p_44, p_44)) || (safe_mod_func_int32_t_s_s((safe_add_func_int32_t_s_s((((0UL & (safe_div_func_int16_t_s_s(((VECTOR(int16_t, 2))(mul_hi(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(1L, ((VECTOR(int16_t, 2))((-1L), (-1L))), 1L)), ((VECTOR(int16_t, 2))(0x5074L, 1L)), 7L, 0x5F30L)).s56, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(rhadd(((VECTOR(int16_t, 8))(l_885.yyxxxxxy)).s25, ((VECTOR(int16_t, 16))((((VECTOR(uint8_t, 8))(abs_diff(((VECTOR(uint8_t, 16))(0x71L, 0xA9L, (safe_mod_func_uint8_t_u_u((((((p_1642->g_514.s2 = (~l_874)) == p_1642->g_273.s7) || (p_1642->g_399.s4 = (safe_add_func_uint8_t_u_u((safe_mul_func_int16_t_s_s(((VECTOR(int16_t, 4))(add_sat(((VECTOR(int16_t, 2))(rotate(((VECTOR(int16_t, 16))(p_1642->g_892.s5464776170502610)).s3b, ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(0x3993L, (-10L))), ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(hadd(((VECTOR(int16_t, 2))(0x235AL, 0L)), ((VECTOR(int16_t, 2))(mul_hi(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(sub_sat(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(l_893.s15240010)).hi)), ((VECTOR(int16_t, 8))(max(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))((safe_mul_func_int8_t_s_s(p_1642->g_596.s4, GROUP_DIVERGE(0, 1))), (l_893.s0 <= p_43), 1L, 1L)), (!0x17EAL), 0x6474L, 0x3430L, 0x06FCL)), (int16_t)l_893.s6))).even))), p_1642->g_97.s8, p_44, 0L, 1L)).s37)), ((VECTOR(int16_t, 2))(1L)))))))).xyxy)), 0x0EC3L, 1L)).s45))))).xyyy, ((VECTOR(int16_t, 4))((-1L)))))).y, p_44)), (-1L))))) < p_44) , p_43), GROUP_DIVERGE(0, 1))), 0x62L, 255UL, 0xC0L, 0x84L, ((VECTOR(uint8_t, 4))(1UL)), 1UL, p_43, ((VECTOR(uint8_t, 2))(0x5BL)), 0x01L)).hi, ((VECTOR(uint8_t, 8))(0x8BL))))).s4 && p_43), 0x69D0L, 6L, 0L, ((VECTOR(int16_t, 4))(0L)), 2L, 0x33A3L, (-1L), 8L, 0x4334L, (-1L), 0x216FL, 0x62E4L)).sb5))))), (-9L), (-1L))))).odd))).lo, (*p_1642->g_866)))) <= l_893.s0) , 0x117E7601L), 0xD713B87EL)), (*p_1642->g_518)))) , l_896);
            --l_901[1][4];
            if (((void*)0 == l_904))
            { /* block id: 375 */
                uint16_t ***l_905[1];
                uint32_t *l_910 = &p_1642->g_605;
                uint32_t **l_909 = &l_910;
                uint64_t *l_911 = (void*)0;
                uint64_t *l_912 = (void*)0;
                uint64_t *l_913[2];
                int8_t *l_923 = &p_1642->g_156[5][2];
                int32_t l_924[8] = {1L,(-8L),1L,1L,(-8L),1L,1L,(-8L)};
                int i;
                for (i = 0; i < 1; i++)
                    l_905[i] = (void*)0;
                for (i = 0; i < 2; i++)
                    l_913[i] = (void*)0;
                l_899[3][1][2] &= (l_905[0] != (((((((((safe_mod_func_uint64_t_u_u(((VECTOR(uint64_t, 4))(l_908.s5205)).z, 0x7B99D95874D106EFL)) , (0L <= ((((*l_909) = &p_1642->g_605) == l_873[1][0]) ^ ((VECTOR(int8_t, 4))(min(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 8))(0L, ((-1L) <= ((**l_897) = GROUP_DIVERGE(0, 1))), ((*l_923) = ((safe_lshift_func_int16_t_s_u(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 16))(mad_sat(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(upsample(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 16))(mad_sat(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 16))(l_916.wxywxwxwxzwwwwyz)).s8f)).yxxxyxxyxxyxyyyy, ((VECTOR(int8_t, 2))(add_sat(((VECTOR(int8_t, 2))(0x48L, (-1L))), ((VECTOR(int8_t, 16))(min(((VECTOR(int8_t, 16))(l_917.sb0ad1e10132c2419)), (int8_t)(((((VECTOR(int64_t, 2))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 4))(l_918.s0220)))).odd)).hi <= (-5L)) >= (safe_mod_func_uint64_t_u_u((**l_897), (safe_mul_func_int8_t_s_s(p_1642->g_498.s0, p_44))))) >= p_43)))).sdc))).xyxyxyxyyyyyxxyx, ((VECTOR(int8_t, 16))(8L))))).se9)), ((VECTOR(uint8_t, 2))(0x49L))))), 4L, (-9L))).yxxzzyyzywzwxzzw, ((VECTOR(int16_t, 16))(0L)), ((VECTOR(int16_t, 16))(0L))))).even)).s12)).hi, (**l_897))) != p_43)), 0x1AL, 0x52L, ((VECTOR(int8_t, 2))(0x19L)), (-10L))).even)).lo)), (-3L), p_44, 0x13L, p_1642->g_498.s0, 0x75L, 0L)))).lo, ((VECTOR(int8_t, 4))((-2L)))))).z))) , 1L) & 4UL) && (*p_1642->g_518)) ^ l_924[7]) >= GROUP_DIVERGE(0, 1)) > p_43) , l_925));
                --l_926;
                (*l_896) |= ((VECTOR(int32_t, 2))(l_929.sb6)).even;
            }
            else
            { /* block id: 382 */
                int16_t l_937[4];
                int32_t l_948 = 3L;
                int32_t l_949 = 0x154C498CL;
                int32_t l_950 = 0L;
                int32_t l_951 = 9L;
                int32_t l_952 = 0L;
                int i;
                for (i = 0; i < 4; i++)
                    l_937[i] = 0x1DA6L;
                (**l_897) &= l_930;
                p_1642->g_942 |= ((l_931[3] <= ((safe_lshift_func_int16_t_s_u(((p_44 < ((*p_1642->g_518) &= ((VECTOR(uint32_t, 2))(l_934.s56)).even)) > ((**l_897) >= (**l_897))), 0)) , ((safe_mul_func_int8_t_s_s(((l_937[3] && ((VECTOR(uint64_t, 2))(18446744073709551615UL, 0UL)).hi) || (0x78F1L & ((VECTOR(int16_t, 4))(safe_clamp_func(VECTOR(int16_t, 4),VECTOR(int16_t, 4),((VECTOR(int16_t, 2))(((VECTOR(int16_t, 4))(p_1642->g_938.yxxx)).even)).xyyx, ((VECTOR(int16_t, 16))(l_939.yxxxyxxyxxxxxxyx)).s5143, ((VECTOR(int16_t, 4))(l_940.s6171))))).w)), p_43)) > (&p_1642->g_578 != (((VECTOR(uint16_t, 8))(0x12A9L, ((VECTOR(uint16_t, 2))(1UL, 65533UL)), 0x38E2L, ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 8))(abs(((VECTOR(uint16_t, 2))(p_1642->g_941.s67)).xxxxxxxy))).s64)))), 0xD408L, 0UL)).s2 , &p_1642->g_578))))) ^ p_43);
                if (p_44)
                { /* block id: 386 */
                    (*l_897) = &l_899[0][3][0];
                }
                else
                { /* block id: 388 */
                    uint32_t l_945 = 8UL;
                    int32_t l_947[4][3][1] = {{{7L},{7L},{7L}},{{7L},{7L},{7L}},{{7L},{7L},{7L}},{{7L},{7L},{7L}}};
                    int i, j, k;
                    if ((l_945 |= (!((VECTOR(int32_t, 4))((safe_add_func_uint8_t_u_u((**l_897), (p_43 > 0x82L))), (-1L), (-3L), 0L)).w)))
                    { /* block id: 390 */
                        return p_1642->g_290[0];
                    }
                    else
                    { /* block id: 392 */
                        if (p_1642->g_946)
                            break;
                        if (p_44)
                            break;
                        (**l_897) = p_44;
                    }
                    l_953--;
                    for (p_1642->g_106 = (-15); (p_1642->g_106 > 20); p_1642->g_106++)
                    { /* block id: 400 */
                        return p_1642->g_399.s1;
                    }
                    (*l_897) = l_873[1][2];
                }
            }
        }
        if ((*l_896))
            continue;
        if (((((safe_lshift_func_uint8_t_u_s((65526UL == (((l_960 != ((*l_961) = l_960)) & p_44) <= (p_1642->g_649.x ^= (((p_1642->g_596.s6 < (((p_1642->g_399.s0 = (safe_add_func_uint32_t_u_u((safe_lshift_func_int8_t_s_u((safe_add_func_uint32_t_u_u(4294967295UL, ((*l_896) = ((*p_1642->g_518) = (safe_div_func_int64_t_s_s((l_971 || (((*l_975) &= ((*l_896) == (safe_mod_func_int64_t_s_s(((VECTOR(int64_t, 4))(l_974.xyyy)).w, 0x6CFC238C28F2EA42L)))) & 0x70L)), p_43)))))), 1)), FAKE_DIVERGE(p_1642->global_0_offset, get_global_id(0), 10)))) < p_44) == l_980)) , p_1642->g_109.s5) , 0xB1L)))), p_43)) != p_44) ^ p_44) >= p_1642->g_548.y))
        { /* block id: 414 */
            int32_t *l_982 = (void*)0;
            VECTOR(uint8_t, 2) l_1017 = (VECTOR(uint8_t, 2))(0xD6L, 249UL);
            int32_t l_1049[1];
            VECTOR(uint16_t, 8) l_1073 = (VECTOR(uint16_t, 8))(0xFC68L, (VECTOR(uint16_t, 4))(0xFC68L, (VECTOR(uint16_t, 2))(0xFC68L, 0xA299L), 0xA299L), 0xA299L, 0xFC68L, 0xA299L);
            int64_t ***l_1093 = &p_1642->g_594;
            int64_t l_1100 = 1L;
            int64_t l_1101 = (-3L);
            int16_t l_1102 = 0x1432L;
            uint32_t l_1103 = 4294967292UL;
            int i;
            for (i = 0; i < 1; i++)
                l_1049[i] = 1L;
            (*p_1642->g_983) = func_87((*l_896), l_982, p_1642);
            l_899[1][2][0] ^= ((*l_896) |= p_44);
            for (p_1642->g_660 = 10; (p_1642->g_660 > 2); p_1642->g_660--)
            { /* block id: 420 */
                int32_t *l_993 = &p_1642->g_578;
                int32_t **l_992[4][5] = {{&l_993,&l_993,&l_993,&l_993,&l_993},{&l_993,&l_993,&l_993,&l_993,&l_993},{&l_993,&l_993,&l_993,&l_993,&l_993},{&l_993,&l_993,&l_993,&l_993,&l_993}};
                uint8_t *l_1003 = &p_1642->g_412;
                uint64_t *l_1008 = (void*)0;
                uint64_t *l_1009 = (void*)0;
                uint64_t *l_1010 = (void*)0;
                uint64_t *l_1011 = &p_1642->g_942;
                int32_t l_1012 = (-3L);
                VECTOR(uint8_t, 8) l_1018 = (VECTOR(uint8_t, 8))(0x18L, (VECTOR(uint8_t, 4))(0x18L, (VECTOR(uint8_t, 2))(0x18L, 0xF0L), 0xF0L), 0xF0L, 0x18L, 0xF0L);
                int32_t l_1050 = 1L;
                int32_t l_1051 = 0x3303076EL;
                int64_t ****l_1094 = &p_1642->g_836;
                int32_t *l_1097 = &p_1642->g_256;
                uint64_t **l_1099 = &p_1642->g_227[2][6][3];
                uint64_t ***l_1098 = &l_1099;
                int i, j;
                (*l_896) = (safe_add_func_uint8_t_u_u((safe_sub_func_int64_t_s_s((~(safe_div_func_int8_t_s_s(((l_994[5] = l_896) != l_982), ((safe_div_func_uint8_t_u_u((++(*l_975)), p_1642->g_660)) , (++(*l_975)))))), (safe_rshift_func_uint8_t_u_s((--(*l_1003)), 3)))), (safe_add_func_uint64_t_u_u((l_1012 = ((*l_1011) = p_44)), (((((safe_div_func_uint64_t_u_u(0x826904753E5AF43BL, p_44)) , (!(p_43 >= (safe_lshift_func_uint8_t_u_s(((VECTOR(uint8_t, 4))(max(((VECTOR(uint8_t, 16))(255UL, ((VECTOR(uint8_t, 2))(safe_clamp_func(VECTOR(uint8_t, 2),uint8_t,((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 16))(1UL, ((VECTOR(uint8_t, 2))(mad_hi(((VECTOR(uint8_t, 2))(4UL, 246UL)), ((VECTOR(uint8_t, 8))(l_1017.yyyxyxxy)).s65, ((VECTOR(uint8_t, 16))(l_1018.s3161625146533221)).s48))), (safe_add_func_int16_t_s_s(((((safe_div_func_uint32_t_u_u(0x70E8F627L, ((VECTOR(uint32_t, 2))(0xA87E16AEL, 0xD1591CE9L)).lo)) , l_1018.s2) , l_1023) != (void*)0), p_43)), ((VECTOR(uint8_t, 8))(0x16L)), p_1642->g_202.sb, 1UL, 0x48L, 0xA5L)))).sbd, (uint8_t)0x96L, (uint8_t)GROUP_DIVERGE(0, 1)))), p_1642->g_190.s7, (*l_896), ((VECTOR(uint8_t, 8))(253UL)), 0x2BL, 253UL, 0x93L)).s2144, ((VECTOR(uint8_t, 4))(249UL))))).x, 0))))) || FAKE_DIVERGE(p_1642->global_0_offset, get_global_id(0), 10)) >= 0L) & l_1018.s7)))));
                if ((safe_mod_func_int8_t_s_s((safe_rshift_func_int8_t_s_u(((safe_rshift_func_int8_t_s_u((safe_add_func_uint32_t_u_u(((safe_lshift_func_int16_t_s_u((p_1642->g_190.s4 <= (+(safe_sub_func_int64_t_s_s((l_1012 |= ((p_44 , ((safe_mul_func_uint8_t_u_u(255UL, 0UL)) & ((safe_rshift_func_uint16_t_u_s((safe_div_func_int32_t_s_s((safe_sub_func_int64_t_s_s(l_1018.s7, (p_43 , ((VECTOR(int64_t, 8))(l_1045.s44714321)).s5))), (~(*p_1642->g_143)))), (safe_sub_func_uint16_t_u_u(p_44, ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(p_1642->g_1048.yx)), 0xDB29L, 65528UL)).x)))) == (*l_896)))) || GROUP_DIVERGE(1, 1))), 1UL)))), l_1017.x)) && p_44), p_43)), p_1642->g_892.s1)) & 0x40AEA34E5E033B65L), 0)), (-5L))))
                { /* block id: 429 */
                    if ((*p_1642->g_143))
                        break;
                }
                else
                { /* block id: 431 */
                    uint64_t l_1053 = 18446744073709551615UL;
                    int8_t *l_1066 = (void*)0;
                    int64_t l_1071 = 0x67C8A2E89C35CE72L;
                    VECTOR(uint8_t, 4) l_1072 = (VECTOR(uint8_t, 4))(0x01L, (VECTOR(uint8_t, 2))(0x01L, 0x02L), 0x02L);
                    int i;
                    l_1053--;
                    for (p_1642->g_355 = 0; (p_1642->g_355 > 23); ++p_1642->g_355)
                    { /* block id: 435 */
                        uint64_t l_1058 = 0UL;
                        (*l_896) = l_1058;
                        l_1012 = (safe_lshift_func_uint16_t_u_u(65527UL, 10));
                    }
                    (*l_896) = (((VECTOR(uint8_t, 16))(clz(((VECTOR(uint8_t, 16))(max(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 16))(p_1642->g_1061.s85cf6a5267a3514d)))).se496)).zywxxwzyzzzwywwz, (uint8_t)((*l_975) = (safe_mul_func_int8_t_s_s(((((*p_1642->g_866) = (safe_rshift_func_uint16_t_u_s(((l_1066 != (void*)0) | (((safe_lshift_func_int8_t_s_u(p_43, p_1642->g_290[1])) <= p_1642->g_158.y) & (&p_1642->g_226 == l_1069))), (p_1642->g_108 = p_43)))) ^ p_43) , l_1071), p_44))))))))).sb ^ FAKE_DIVERGE(p_1642->global_1_offset, get_global_id(1), 10));
                    (*l_896) = (((VECTOR(int8_t, 2))(min(((VECTOR(int8_t, 16))(rhadd(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 2),((VECTOR(int8_t, 8))(safe_clamp_func(VECTOR(int8_t, 8),int8_t,((VECTOR(int8_t, 16))(0x38L, (((((VECTOR(int64_t, 16))(((VECTOR(int64_t, 16))((((((*l_1003) = ((VECTOR(uint8_t, 4))(l_1072.ywwy)).x) == l_1053) , ((VECTOR(uint16_t, 2))(1UL, 0xE56AL)).odd) > ((*p_1642->g_866) |= ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 4))(mul_hi(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(max(((VECTOR(uint16_t, 8))(l_1073.s06677320)).s40, (uint16_t)((VECTOR(uint16_t, 8))(min(((VECTOR(uint16_t, 4))(rhadd(((VECTOR(uint16_t, 2))(abs(((VECTOR(uint16_t, 8))(rotate(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(0x9492L, (((*p_1642->g_518) ^ (((l_1072.x > ((safe_rshift_func_uint8_t_u_u(((safe_lshift_func_int16_t_s_u(0x438BL, FAKE_DIVERGE(p_1642->global_0_offset, get_global_id(0), 10))) < (((safe_mul_func_int16_t_s_s(p_43, (safe_sub_func_int16_t_s_s(((safe_mul_func_uint8_t_u_u((p_43 , (safe_mul_func_uint8_t_u_u((&p_43 != (((VECTOR(int64_t, 2))(safe_clamp_func(VECTOR(int64_t, 2),VECTOR(int64_t, 2),((VECTOR(int64_t, 2))(p_1642->g_1086.yx)), ((VECTOR(int64_t, 2))(0x4CEDE6BC7CBED848L, 0x451933B50A0B6D84L)), ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 16))(p_43, ((VECTOR(int64_t, 2))((-1L), 0x18579C234797E338L)), 0x4D7BE9A175B2ACBCL, l_1053, ((VECTOR(int64_t, 8))(0x777915EFFBAAFD48L)), 0L, 0x746C24A18F9D6766L, 8L)).odd)).s23))).hi , &p_43)), p_1642->g_548.x))), l_1072.x)) < 0UL), 1L)))) | p_43) <= 65535UL)), p_1642->g_290[0])) == l_1087)) , p_44) == p_43)) == p_43), 65535UL, 0x1EB9L)), p_43, 0xA706L, 65535UL, 2UL, ((VECTOR(uint16_t, 2))(65530UL)), ((VECTOR(uint16_t, 2))(0xB229L)), ((VECTOR(uint16_t, 2))(7UL)), 1UL, 0x6B58L)).odd, ((VECTOR(uint16_t, 8))(7UL))))).s61))).yxxy, ((VECTOR(uint16_t, 4))(0xD750L))))).ywwyxyzx, ((VECTOR(uint16_t, 8))(3UL))))).s1))), 0UL, 65530UL)), ((VECTOR(uint16_t, 4))(1UL))))))).y)), 2L, p_43, (-8L), ((VECTOR(int64_t, 4))(0x4BD524F38554E077L)), 1L, 0x1C36B66407A60541L, 0x1839972FB6FDDE30L, ((VECTOR(int64_t, 4))(0x308C6D3A15B553A6L)), 1L)))).sb != l_1050) > p_1642->g_480.s7) ^ p_1642->g_290[2]), ((VECTOR(int8_t, 2))(0x35L)), ((VECTOR(int8_t, 2))(0x17L)), ((VECTOR(int8_t, 4))(0x23L)), 0x63L, 2L, ((VECTOR(int8_t, 4))(0x15L)))).odd, (int8_t)3L, (int8_t)p_1642->g_156[5][2]))).s66, ((VECTOR(int8_t, 2))(1L)), ((VECTOR(int8_t, 2))(8L))))), l_1050, p_43, ((VECTOR(int8_t, 4))(0x5CL)))).s4624715276476006, ((VECTOR(int8_t, 16))(3L))))).s38, ((VECTOR(int8_t, 2))(0x12L))))).odd , (*l_896));
                }
                l_1050 = ((l_1012 != (p_1642->g_188 | (((safe_unary_minus_func_int32_t_s((safe_lshift_func_int8_t_s_s((((*l_1069) != ((*l_1098) = (((*l_1097) = ((p_43 >= p_43) && (0x4BL == (safe_div_func_int32_t_s_s(((*l_896) |= (p_44 , (((l_1096 &= (l_1093 != (l_1095 = ((*l_1094) = &p_1642->g_594)))) >= p_43) && 0x2CB4A1EF557EC2A7L))), 0xF9BE7DB0L))))) , (void*)0))) < 0x7EL), p_1642->g_188)))) & p_43) > 0x05L))) ^ (-7L));
                if ((**p_1642->g_983))
                    break;
            }
            l_1103--;
        }
        else
        { /* block id: 457 */
            int64_t ****l_1111 = &l_1095;
            int64_t *****l_1110 = &l_1111;
            uint32_t *l_1128 = (void*)0;
            int32_t l_1129[5] = {0L,0L,0L,0L,0L};
            int i;
            (*l_896) = ((safe_rshift_func_int16_t_s_s((safe_mul_func_uint8_t_u_u((((*l_1110) = &p_1642->g_835) != &p_1642->g_835), ((((safe_add_func_uint32_t_u_u(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 16))(rhadd(((VECTOR(uint32_t, 16))(l_1114.wywzxwwwxzzyxxwz)), ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(l_1115.zwxx)).wxzyzzzw)).s7774165125405766))).lo)).s0, (safe_mod_func_int32_t_s_s((((((((((((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 8))(add_sat(((VECTOR(uint8_t, 2))(255UL, 0x7BL)).xxxyxyxy, ((VECTOR(uint8_t, 2))(clz(((VECTOR(uint8_t, 2))(0UL, 0x08L))))).yxxxxxyy))).lo)).wyywzwxw)).s0 & ((safe_mod_func_uint16_t_u_u((*p_1642->g_866), (p_44 = 0xD660L))) ^ (p_43 >= ((safe_add_func_uint16_t_u_u(((((((VECTOR(uint64_t, 4))(l_1124.s7cb4)).z & ((void*)0 == l_1125)) != 0x7A1E770CL) > (safe_lshift_func_uint8_t_u_s(((*l_896) < 0x53L), p_1642->g_202.sd))) , p_43), p_43)) & p_43)))) , l_1128) == l_1128) , &p_1642->g_865) == (void*)0) | l_1129[1]) | (*l_896)) <= l_1130) > 0xA4L), p_43)))) >= FAKE_DIVERGE(p_1642->global_1_offset, get_global_id(1), 10)) , 18446744073709551608UL) || (*l_896)))), 13)) < l_1131);
        }
    }
    return p_1642->g_480.s3;
}


/* ------------------------------------------ */
/* 
 * reads : p_1642->g_29 p_1642->g_498 p_1642->g_190 p_1642->g_791 p_1642->g_412 p_1642->g_30 p_1642->g_290 p_1642->g_841 p_1642->g_67 p_1642->g_64
 * writes: p_1642->g_29 p_1642->g_64 p_1642->g_30 p_1642->g_292 p_1642->g_412 p_1642->g_256 p_1642->g_106 p_1642->g_355 p_1642->g_835 p_1642->g_836
 */
int8_t * func_45(uint32_t  p_46, int32_t * p_47, int32_t  p_48, struct S0 * p_1642)
{ /* block id: 15 */
    int32_t *l_74 = (void*)0;
    VECTOR(int32_t, 2) l_77 = (VECTOR(int32_t, 2))(0x61620D8AL, 0x6B8B4D83L);
    VECTOR(int64_t, 2) l_83 = (VECTOR(int64_t, 2))(1L, 1L);
    VECTOR(int64_t, 16) l_85 = (VECTOR(int64_t, 16))(5L, (VECTOR(int64_t, 4))(5L, (VECTOR(int64_t, 2))(5L, 0x6C8777786D11A38AL), 0x6C8777786D11A38AL), 0x6C8777786D11A38AL, 5L, 0x6C8777786D11A38AL, (VECTOR(int64_t, 2))(5L, 0x6C8777786D11A38AL), (VECTOR(int64_t, 2))(5L, 0x6C8777786D11A38AL), 5L, 0x6C8777786D11A38AL, 5L, 0x6C8777786D11A38AL);
    int32_t l_797 = 0x130F1D43L;
    VECTOR(uint16_t, 16) l_845 = (VECTOR(uint16_t, 16))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 65528UL), 65528UL), 65528UL, 65535UL, 65528UL, (VECTOR(uint16_t, 2))(65535UL, 65528UL), (VECTOR(uint16_t, 2))(65535UL, 65528UL), 65535UL, 65528UL, 65535UL, 65528UL);
    VECTOR(uint16_t, 8) l_846 = (VECTOR(uint16_t, 8))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 7UL), 7UL), 7UL, 0UL, 7UL);
    VECTOR(uint16_t, 4) l_847 = (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0x54FFL), 0x54FFL);
    VECTOR(uint32_t, 2) l_850 = (VECTOR(uint32_t, 2))(0UL, 3UL);
    int16_t *l_859 = &p_1642->g_108;
    VECTOR(int8_t, 4) l_860 = (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 4L), 4L);
    int8_t *l_869 = (void*)0;
    int i;
lbl_816:
    (*p_47) = ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(min(((VECTOR(int32_t, 4))(p_1642->g_67.xxyx)).yxzzyxzxyzxxxwwx, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(add_sat(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(3L, (-3L))), (-4L), 1L)), ((VECTOR(int32_t, 2))(0x75EFDD83L, 0x1A7339E9L)).xxxx))).hi)).yyyyyxyyxxxyxxyy))).s8e69)).x;
    for (p_1642->g_64 = 10; (p_1642->g_64 == 18); ++p_1642->g_64)
    { /* block id: 19 */
        int32_t *l_90 = (void*)0;
        VECTOR(uint8_t, 4) l_805 = (VECTOR(uint8_t, 4))(0xA9L, (VECTOR(uint8_t, 2))(0xA9L, 254UL), 254UL);
        VECTOR(uint8_t, 16) l_806 = (VECTOR(uint8_t, 16))(0xD0L, (VECTOR(uint8_t, 4))(0xD0L, (VECTOR(uint8_t, 2))(0xD0L, 0xF1L), 0xF1L), 0xF1L, 0xD0L, 0xF1L, (VECTOR(uint8_t, 2))(0xD0L, 0xF1L), (VECTOR(uint8_t, 2))(0xD0L, 0xF1L), 0xD0L, 0xF1L, 0xD0L, 0xF1L);
        int32_t l_818 = 0x0AA15DA6L;
        int32_t l_819 = 0x1D8823F8L;
        VECTOR(int8_t, 16) l_861 = (VECTOR(int8_t, 16))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0x3EL), 0x3EL), 0x3EL, 0L, 0x3EL, (VECTOR(int8_t, 2))(0L, 0x3EL), (VECTOR(int8_t, 2))(0L, 0x3EL), 0L, 0x3EL, 0L, 0x3EL);
        int16_t l_863 = 4L;
        int8_t l_867 = (-10L);
        int32_t l_868 = 0x0E17257AL;
        int i;
        for (p_46 = 0; (p_46 > 56); p_46 = safe_add_func_int32_t_s_s(p_46, 4))
        { /* block id: 22 */
            uint32_t l_86 = 4294967295UL;
            int32_t l_783[10] = {0x36D04688L,0x716F6B03L,0x36D04688L,0x36D04688L,0x716F6B03L,0x36D04688L,0x36D04688L,0x716F6B03L,0x36D04688L,0x36D04688L};
            int32_t *l_820[10];
            uint32_t l_823 = 0x2E83132AL;
            int64_t ***l_837 = &p_1642->g_594;
            uint32_t l_842 = 0UL;
            int64_t *l_862 = &p_1642->g_106;
            uint16_t **l_864 = (void*)0;
            int i;
            for (i = 0; i < 10; i++)
                l_820[i] = &p_1642->g_168[0];
            (*p_47) = (*p_47);
            if ((safe_lshift_func_uint16_t_u_s(((p_1642->g_30 = l_74) != (void*)0), (((safe_add_func_uint8_t_u_u((((VECTOR(int64_t, 8))(((((((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))(upsample(((VECTOR(int32_t, 4))(l_77.yxyy)), ((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))(p_1642->g_78.s18)).xxyxxyxxyyxxxyxx)).s12ea))), 0x4B17E4CDB194A10BL, (safe_mul_func_uint16_t_u_u((safe_sub_func_uint64_t_u_u((((VECTOR(int64_t, 16))(mad_sat(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 4))(l_83.xxyy)).odd)).yyyxxxyyxyxxxxyy, ((VECTOR(int64_t, 4))(0x5B5690C02A0D8654L, 4L, 0x7056167B9C7346DDL, 0x028E4EA47852D388L)).zzxxyzzyxwywwwwx, ((VECTOR(int64_t, 4))(max(((VECTOR(int64_t, 2))(p_1642->g_84.xw)).yxyx, ((VECTOR(int64_t, 2))(l_85.s02)).xyyy))).xyywzwwxyyywwxzz))).s3 & (((p_1642->g_67.y , l_86) , func_87(p_1642->g_67.y, l_90, p_1642)) == ((!((*p_47) |= (safe_add_func_int16_t_s_s(p_1642->g_202.se, (safe_div_func_uint8_t_u_u(p_1642->g_194.s7, p_46)))))) , (void*)0))), l_86)), 0x5063L)), ((VECTOR(int64_t, 2))(0L)), 0x513A5E89C74207DAL, ((VECTOR(int64_t, 4))(0x6866FAD628B806A2L)), 0x7A0184A25592170CL, 6L, (-1L))).s8 >= p_46) != p_48) , 0xEFD1FAE6FCB9B4E2L) != p_48), 1L, ((VECTOR(int64_t, 2))(0x0D42009FB48EC56BL)), 1L, p_48, 0x53A7DB99FDDB41ECL, 0x6B31AFE217662CF3L)).s6 || p_48), p_1642->g_498.s4)) == 0x3CBE02E61E2BE056L) == p_46))))
            { /* block id: 303 */
                int8_t *l_782 = (void*)0;
                uint32_t l_785 = 0xEA13E072L;
                int32_t l_798 = 0x2C28C30AL;
                for (p_1642->g_292 = 0; (p_1642->g_292 < 20); p_1642->g_292++)
                { /* block id: 306 */
                    uint8_t *l_781 = &p_1642->g_412;
                    int8_t l_799[6];
                    uint8_t l_800 = 255UL;
                    uint32_t *l_811 = &p_1642->g_319;
                    uint16_t l_812[6] = {0x832AL,0x832AL,0x832AL,0x832AL,0x832AL,0x832AL};
                    int32_t l_813 = 0x1F5248D4L;
                    int32_t **l_817 = &l_90;
                    int i;
                    for (i = 0; i < 6; i++)
                        l_799[i] = (-4L);
                    if ((safe_rshift_func_uint8_t_u_s(((*l_781) = 0xDCL), p_1642->g_190.s5)))
                    { /* block id: 308 */
                        return l_782;
                    }
                    else
                    { /* block id: 310 */
                        int32_t *l_784 = (void*)0;
                        ++l_785;
                        (*p_47) = 0x482FC144L;
                    }
                    for (p_1642->g_256 = 0; (p_1642->g_256 <= (-30)); p_1642->g_256--)
                    { /* block id: 316 */
                        int32_t **l_790 = (void*)0;
                        int32_t *l_792 = (void*)0;
                        int32_t *l_793 = &p_1642->g_170;
                        int32_t *l_794 = (void*)0;
                        int32_t *l_795 = &p_1642->g_168[0];
                        int32_t *l_796[2];
                        int i;
                        for (i = 0; i < 2; i++)
                            l_796[i] = (void*)0;
                        (*p_1642->g_791) = &p_1642->g_29[0];
                        l_800--;
                    }
                    for (p_1642->g_106 = (-7); (p_1642->g_106 != 21); p_1642->g_106 = safe_add_func_int32_t_s_s(p_1642->g_106, 5))
                    { /* block id: 322 */
                        int64_t *l_814[4];
                        int32_t l_815 = 0x6BE99E16L;
                        int i;
                        for (i = 0; i < 4; i++)
                            l_814[i] = (void*)0;
                        (*p_47) ^= (((VECTOR(int64_t, 16))(max(((VECTOR(int64_t, 16))(0x78603F4D7E246EB2L, 0x09E46D53F8A296BBL, ((((VECTOR(int8_t, 2))((-1L), 0x0FL)).lo > ((VECTOR(uint8_t, 2))(hadd(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 8))(abs(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 16))(l_805.wxxzxwzyxwzyxyxx)).sb8)).yyxy)).wwwwxzzz))).hi)).lo, ((VECTOR(uint8_t, 8))(l_806.s53c0224e)).s03))).lo) , (l_798 = (((((safe_sub_func_uint64_t_u_u(l_799[4], GROUP_DIVERGE(0, 1))) , 0x58063BECB9A8136FL) < (l_813 = (safe_sub_func_int64_t_s_s(((p_1642->g_372.w , p_48) & (FAKE_DIVERGE(p_1642->local_1_offset, get_local_id(1), 10) < ((*p_1642->g_696) == (l_811 = (*p_1642->g_696))))), l_812[1])))) & 0L) && 0x17L))), l_815, 9L, ((VECTOR(int64_t, 8))(0L)), 0x4B7BC4D68ABC76C3L, (-4L), 0x713D0BCFFF915990L)), ((VECTOR(int64_t, 16))((-10L)))))).s7 , l_812[1]);
                        if (p_1642->g_412)
                            goto lbl_816;
                        if ((*p_47))
                            continue;
                        l_783[6] &= (*p_47);
                    }
                    (*l_817) = &l_783[6];
                }
                (*p_47) = (*p_47);
                if (l_818)
                    break;
            }
            else
            { /* block id: 335 */
                if (l_819)
                    break;
            }
            if ((l_797 &= (*p_47)))
            { /* block id: 339 */
                int32_t l_821 = (-9L);
                int32_t l_822 = 1L;
                l_823--;
                (*p_1642->g_791) = (*p_1642->g_791);
            }
            else
            { /* block id: 342 */
                int64_t ***l_832 = &p_1642->g_594;
                for (p_1642->g_355 = (-9); (p_1642->g_355 < 24); p_1642->g_355++)
                { /* block id: 345 */
                    uint32_t l_829 = 0UL;
                    uint32_t l_831[8] = {0xD71769C1L,0x5FDB575FL,0xD71769C1L,0xD71769C1L,0x5FDB575FL,0xD71769C1L,0xD71769C1L,0x5FDB575FL};
                    int64_t ****l_833 = (void*)0;
                    int64_t ****l_834[5] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                    int i;
                    if ((((VECTOR(int32_t, 4))(p_1642->g_828.s1672)).w || ((l_829 = p_1642->g_290[2]) , ((p_48 ^ ((((((VECTOR(int32_t, 16))(p_1642->g_830.yxyxyxxyxxxyxxyy)).s6 && (l_831[0] ^ ((p_1642->g_836 = (p_1642->g_835 = l_832)) != (p_46 , l_837)))) >= p_48) | 1UL) , (((safe_mod_func_uint16_t_u_u(0xD47FL, p_48)) ^ p_48) , 0L))) == l_831[7]))))
                    { /* block id: 349 */
                        if ((*p_47))
                            break;
                    }
                    else
                    { /* block id: 351 */
                        int32_t *l_840 = &l_797;
                        (*p_1642->g_841) = l_840;
                    }
                }
            }
            l_868 &= (((VECTOR(int32_t, 8))(l_842, (*p_47), ((VECTOR(int32_t, 4))(clz(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(((safe_mul_func_uint8_t_u_u((((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 16))((!((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(0xB2C6L, 0xB7CBL)).yyxy)))), ((VECTOR(uint16_t, 4))(l_845.sd1f8)), ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 16))(hadd(((VECTOR(uint16_t, 16))(l_846.s3704565757434354)), ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(l_847.wx)), 9UL, 2UL)).wzywxxzxzyyyzxxz))).s6e)), (safe_sub_func_int8_t_s_s((p_46 | ((p_48 != (((VECTOR(uint32_t, 8))(l_850.yxyyyxyy)).s5 , (((p_1642->g_865 = ((((~(safe_mod_func_int32_t_s_s((((safe_add_func_uint64_t_u_u((safe_sub_func_int8_t_s_s((safe_mul_func_uint8_t_u_u((l_859 == (void*)0), ((VECTOR(int8_t, 2))(rhadd(((VECTOR(int8_t, 4))(max(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 16))(l_860.yywzzwwzzzyxxzyz)).sab)).yyyy)), (int8_t)p_48))).hi, ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(l_861.s8d)).xxyxxxyy)).s75)), 0x7AL, 7L)), 0x65L, 0x26L, 1L, (-1L))))).s64))))).hi)), p_48)), (((*l_862) = 1L) || p_48))) || p_48) > (*p_47)), l_861.s7))) >= l_863) , p_1642->g_499.x) , l_864)) == (void*)0) && 2UL))) | 0x2C7EF89AL)), p_46)), ((VECTOR(uint16_t, 2))(1UL)), 0x529DL, 0UL, 0xA736L)).sa), ((VECTOR(uint16_t, 8))(1UL)), ((VECTOR(uint16_t, 4))(0x138EL)), 0xF2A5L, 0xAA2DL, 65527UL)).hi)).s0 ^ l_867), p_46)) != p_1642->g_430.sb), (-6L), 0x08919A0EL, ((VECTOR(int32_t, 2))((-1L))), ((VECTOR(int32_t, 2))(0L)), 0x09FD8C06L)).s2321254755315472)).s4391))), 1L, 0x5004B174L)).s7 | (*p_47));
        }
        return l_869;
    }
    return &p_1642->g_156[0][0];
}


/* ------------------------------------------ */
/* 
 * reads : p_1642->g_106 p_1642->g_412 p_1642->g_660 p_1642->g_170 p_1642->g_191 p_1642->g_168 p_1642->g_548 p_1642->g_97 p_1642->g_696 p_1642->g_697 p_1642->g_108 p_1642->g_518 p_1642->g_290 p_1642->g_508 p_1642->g_596 p_1642->g_158 p_1642->g_14 p_1642->g_498
 * writes: p_1642->g_143 p_1642->g_188 p_1642->g_108 p_1642->g_660 p_1642->g_412 p_1642->g_106 p_1642->g_67 p_1642->g_578 p_1642->g_168 p_1642->g_256 p_1642->g_508 p_1642->g_430 p_1642->g_158 p_1642->g_355
 */
int32_t * func_87(int32_t  p_88, int32_t * p_89, struct S0 * p_1642)
{ /* block id: 25 */
    VECTOR(uint8_t, 8) l_93 = (VECTOR(uint8_t, 8))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 9UL), 9UL), 9UL, 1UL, 9UL);
    VECTOR(uint64_t, 8) l_104 = (VECTOR(uint64_t, 8))(0x183DC7C683C3F703L, (VECTOR(uint64_t, 4))(0x183DC7C683C3F703L, (VECTOR(uint64_t, 2))(0x183DC7C683C3F703L, 2UL), 2UL), 2UL, 0x183DC7C683C3F703L, 2UL);
    int8_t l_172 = 0x62L;
    int32_t l_328 = 0x3EE09663L;
    int32_t l_342 = (-2L);
    int32_t l_345 = 0x658ECA0BL;
    int32_t l_346 = 0x7B7D61D6L;
    int32_t l_347 = 0x385F9604L;
    int32_t l_349 = 0x5E7CFC8EL;
    int32_t l_351 = 0x5AF2BF19L;
    VECTOR(int32_t, 16) l_352 = (VECTOR(int32_t, 16))(0x70C98A87L, (VECTOR(int32_t, 4))(0x70C98A87L, (VECTOR(int32_t, 2))(0x70C98A87L, 0x67DB924BL), 0x67DB924BL), 0x67DB924BL, 0x70C98A87L, 0x67DB924BL, (VECTOR(int32_t, 2))(0x70C98A87L, 0x67DB924BL), (VECTOR(int32_t, 2))(0x70C98A87L, 0x67DB924BL), 0x70C98A87L, 0x67DB924BL, 0x70C98A87L, 0x67DB924BL);
    VECTOR(int32_t, 16) l_363 = (VECTOR(int32_t, 16))(0x41D239BCL, (VECTOR(int32_t, 4))(0x41D239BCL, (VECTOR(int32_t, 2))(0x41D239BCL, 0x105A303AL), 0x105A303AL), 0x105A303AL, 0x41D239BCL, 0x105A303AL, (VECTOR(int32_t, 2))(0x41D239BCL, 0x105A303AL), (VECTOR(int32_t, 2))(0x41D239BCL, 0x105A303AL), 0x41D239BCL, 0x105A303AL, 0x41D239BCL, 0x105A303AL);
    int32_t *l_364 = (void*)0;
    int32_t **l_365 = &p_1642->g_143;
    int32_t **l_366 = &l_364;
    VECTOR(int32_t, 4) l_371 = (VECTOR(int32_t, 4))((-2L), (VECTOR(int32_t, 2))((-2L), (-6L)), (-6L));
    VECTOR(int32_t, 2) l_374 = (VECTOR(int32_t, 2))((-5L), 1L);
    uint16_t *l_388[4][9][1] = {{{&p_1642->g_355},{&p_1642->g_355},{&p_1642->g_355},{&p_1642->g_355},{&p_1642->g_355},{&p_1642->g_355},{&p_1642->g_355},{&p_1642->g_355},{&p_1642->g_355}},{{&p_1642->g_355},{&p_1642->g_355},{&p_1642->g_355},{&p_1642->g_355},{&p_1642->g_355},{&p_1642->g_355},{&p_1642->g_355},{&p_1642->g_355},{&p_1642->g_355}},{{&p_1642->g_355},{&p_1642->g_355},{&p_1642->g_355},{&p_1642->g_355},{&p_1642->g_355},{&p_1642->g_355},{&p_1642->g_355},{&p_1642->g_355},{&p_1642->g_355}},{{&p_1642->g_355},{&p_1642->g_355},{&p_1642->g_355},{&p_1642->g_355},{&p_1642->g_355},{&p_1642->g_355},{&p_1642->g_355},{&p_1642->g_355},{&p_1642->g_355}}};
    int32_t l_389 = (-1L);
    uint64_t l_404 = 0xC489FDDF94FC2709L;
    uint8_t *l_424 = (void*)0;
    int16_t l_530 = 1L;
    uint64_t **l_540 = &p_1642->g_227[2][6][3];
    int8_t l_631 = (-1L);
    VECTOR(uint16_t, 8) l_632 = (VECTOR(uint16_t, 8))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0x06ABL), 0x06ABL), 0x06ABL, 1UL, 0x06ABL);
    VECTOR(int16_t, 4) l_693 = (VECTOR(int16_t, 4))(0x7C8BL, (VECTOR(int16_t, 2))(0x7C8BL, 0x383CL), 0x383CL);
    uint16_t l_750[3];
    uint64_t l_771[5][7] = {{18446744073709551615UL,0xE17DFAE5E908D84FL,18446744073709551615UL,18446744073709551615UL,0xE17DFAE5E908D84FL,18446744073709551615UL,18446744073709551615UL},{18446744073709551615UL,0xE17DFAE5E908D84FL,18446744073709551615UL,18446744073709551615UL,0xE17DFAE5E908D84FL,18446744073709551615UL,18446744073709551615UL},{18446744073709551615UL,0xE17DFAE5E908D84FL,18446744073709551615UL,18446744073709551615UL,0xE17DFAE5E908D84FL,18446744073709551615UL,18446744073709551615UL},{18446744073709551615UL,0xE17DFAE5E908D84FL,18446744073709551615UL,18446744073709551615UL,0xE17DFAE5E908D84FL,18446744073709551615UL,18446744073709551615UL},{18446744073709551615UL,0xE17DFAE5E908D84FL,18446744073709551615UL,18446744073709551615UL,0xE17DFAE5E908D84FL,18446744073709551615UL,18446744073709551615UL}};
    int32_t *l_772[7][3][3] = {{{(void*)0,&l_347,&l_389},{(void*)0,&l_347,&l_389},{(void*)0,&l_347,&l_389}},{{(void*)0,&l_347,&l_389},{(void*)0,&l_347,&l_389},{(void*)0,&l_347,&l_389}},{{(void*)0,&l_347,&l_389},{(void*)0,&l_347,&l_389},{(void*)0,&l_347,&l_389}},{{(void*)0,&l_347,&l_389},{(void*)0,&l_347,&l_389},{(void*)0,&l_347,&l_389}},{{(void*)0,&l_347,&l_389},{(void*)0,&l_347,&l_389},{(void*)0,&l_347,&l_389}},{{(void*)0,&l_347,&l_389},{(void*)0,&l_347,&l_389},{(void*)0,&l_347,&l_389}},{{(void*)0,&l_347,&l_389},{(void*)0,&l_347,&l_389},{(void*)0,&l_347,&l_389}}};
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_750[i] = 1UL;
lbl_671:
    for (p_88 = 0; (p_88 <= (-3)); p_88--)
    { /* block id: 28 */
        VECTOR(uint8_t, 16) l_94 = (VECTOR(uint8_t, 16))(4UL, (VECTOR(uint8_t, 4))(4UL, (VECTOR(uint8_t, 2))(4UL, 0x71L), 0x71L), 0x71L, 4UL, 0x71L, (VECTOR(uint8_t, 2))(4UL, 0x71L), (VECTOR(uint8_t, 2))(4UL, 0x71L), 4UL, 0x71L, 4UL, 0x71L);
        uint64_t *l_105 = (void*)0;
        int16_t *l_107 = &p_1642->g_108;
        uint8_t *l_209 = (void*)0;
        uint8_t *l_210 = (void*)0;
        uint8_t *l_211 = (void*)0;
        uint8_t *l_212 = (void*)0;
        uint8_t *l_213[3][1][1];
        int32_t *l_214 = &p_1642->g_29[0];
        uint64_t *l_325 = (void*)0;
        uint64_t *l_326[6] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        uint64_t l_327 = 18446744073709551614UL;
        int32_t l_343 = 0L;
        int32_t l_344 = 1L;
        int32_t l_348 = (-7L);
        int32_t l_350 = (-1L);
        int8_t l_353 = 3L;
        int32_t l_354 = 2L;
        int i, j, k;
        for (i = 0; i < 3; i++)
        {
            for (j = 0; j < 1; j++)
            {
                for (k = 0; k < 1; k++)
                    l_213[i][j][k] = (void*)0;
            }
        }
        (1 + 1);
    }
lbl_701:
    (*l_366) = ((*l_365) = l_364);
    for (l_345 = (-8); (l_345 != 26); ++l_345)
    { /* block id: 126 */
        VECTOR(int32_t, 16) l_369 = (VECTOR(int32_t, 16))((-4L), (VECTOR(int32_t, 4))((-4L), (VECTOR(int32_t, 2))((-4L), 0x42B0DC1FL), 0x42B0DC1FL), 0x42B0DC1FL, (-4L), 0x42B0DC1FL, (VECTOR(int32_t, 2))((-4L), 0x42B0DC1FL), (VECTOR(int32_t, 2))((-4L), 0x42B0DC1FL), (-4L), 0x42B0DC1FL, (-4L), 0x42B0DC1FL);
        VECTOR(int32_t, 16) l_370 = (VECTOR(int32_t, 16))(6L, (VECTOR(int32_t, 4))(6L, (VECTOR(int32_t, 2))(6L, 0x3AE41803L), 0x3AE41803L), 0x3AE41803L, 6L, 0x3AE41803L, (VECTOR(int32_t, 2))(6L, 0x3AE41803L), (VECTOR(int32_t, 2))(6L, 0x3AE41803L), 6L, 0x3AE41803L, 6L, 0x3AE41803L);
        VECTOR(int32_t, 4) l_373 = (VECTOR(int32_t, 4))((-7L), (VECTOR(int32_t, 2))((-7L), (-1L)), (-1L));
        VECTOR(int32_t, 4) l_375 = (VECTOR(int32_t, 4))(0x4D8A67D6L, (VECTOR(int32_t, 2))(0x4D8A67D6L, (-1L)), (-1L));
        VECTOR(int32_t, 8) l_376 = (VECTOR(int32_t, 8))(0x22E17A74L, (VECTOR(int32_t, 4))(0x22E17A74L, (VECTOR(int32_t, 2))(0x22E17A74L, 0L), 0L), 0L, 0x22E17A74L, 0L);
        uint32_t *l_385 = &p_1642->g_292;
        VECTOR(uint64_t, 2) l_390 = (VECTOR(uint64_t, 2))(18446744073709551615UL, 0x1083F53F9CA32CCBL);
        int32_t *l_398 = &l_342;
        VECTOR(int8_t, 2) l_429 = (VECTOR(int8_t, 2))(0x49L, 0x65L);
        VECTOR(int8_t, 4) l_431 = (VECTOR(int8_t, 4))(0x5EL, (VECTOR(int8_t, 2))(0x5EL, (-9L)), (-9L));
        uint32_t l_466 = 0xE7882394L;
        int8_t *l_562 = &l_172;
        VECTOR(int32_t, 4) l_648 = (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, (-7L)), (-7L));
        int16_t *l_655 = &p_1642->g_108;
        int16_t **l_654 = &l_655;
        uint64_t *l_656 = (void*)0;
        VECTOR(int16_t, 8) l_680 = (VECTOR(int16_t, 8))((-2L), (VECTOR(int16_t, 4))((-2L), (VECTOR(int16_t, 2))((-2L), 0x4D2BL), 0x4D2BL), 0x4D2BL, (-2L), 0x4D2BL);
        VECTOR(int16_t, 8) l_681 = (VECTOR(int16_t, 8))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x0BE2L), 0x0BE2L), 0x0BE2L, (-1L), 0x0BE2L);
        VECTOR(int16_t, 16) l_684 = (VECTOR(int16_t, 16))(0x46ECL, (VECTOR(int16_t, 4))(0x46ECL, (VECTOR(int16_t, 2))(0x46ECL, 0L), 0L), 0L, 0x46ECL, 0L, (VECTOR(int16_t, 2))(0x46ECL, 0L), (VECTOR(int16_t, 2))(0x46ECL, 0L), 0x46ECL, 0L, 0x46ECL, 0L);
        uint16_t ***l_691 = (void*)0;
        int i;
        if (((VECTOR(int32_t, 8))(mad_sat(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(l_369.sb2a024681c114250)))).odd, ((VECTOR(int32_t, 2))(sub_sat(((VECTOR(int32_t, 4))(l_370.s213d)).odd, ((VECTOR(int32_t, 8))(l_371.xxxyxywx)).s76))).xxyxyyyx, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(mad_sat(((VECTOR(int32_t, 8))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 8))(p_1642->g_372.wzyzxxww)), ((VECTOR(int32_t, 8))(l_373.xxyxwxzw)), ((VECTOR(int32_t, 8))(l_374.yyxyyyyx))))).s12, ((VECTOR(int32_t, 4))(l_375.zwyz)).even, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(0x5FBEC3D9L, (-1L))).even, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(7L, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(l_376.s42275471)).s13)), (safe_add_func_uint64_t_u_u(((VECTOR(uint64_t, 16))((safe_lshift_func_int8_t_s_s(((((safe_mul_func_int8_t_s_s(0x78L, 0xB2L)) < (p_88 && ((*l_385)--))) || ((void*)0 != l_388[3][1][0])) , l_389), (l_369.s6 ^ 1L))), ((VECTOR(uint64_t, 8))(0x432FF9DE862E44AEL, FAKE_DIVERGE(p_1642->group_2_offset, get_group_id(2), 10), 18446744073709551609UL, ((VECTOR(uint64_t, 4))(l_390.xyxy)), 0x75EC11C4FAA71ADCL)), (0xE8C5AA4814FAB297L < FAKE_DIVERGE(p_1642->group_1_offset, get_group_id(1), 10)), 8UL, 0x38DCD98A7F578291L, ((VECTOR(uint64_t, 4))(0x13BC6AA305F2B56AL)))).s5, 1UL)), (-10L), p_88, 0x6CD0F436L, 0x797F2CDFL)).s43)), l_369.s2, (-1L), l_370.sa, 5L, (-4L))).s36))))), 0x22BDB292L, 0x25D82D66L)).yzwxwwyy))).s7)
        { /* block id: 128 */
            uint16_t l_411[2][10][10] = {{{0xB87AL,0xEC48L,0x55F6L,0UL,0UL,0x55F6L,0xEC48L,0xB87AL,0x3821L,0x6378L},{0xB87AL,0xEC48L,0x55F6L,0UL,0UL,0x55F6L,0xEC48L,0xB87AL,0x3821L,0x6378L},{0xB87AL,0xEC48L,0x55F6L,0UL,0UL,0x55F6L,0xEC48L,0xB87AL,0x3821L,0x6378L},{0xB87AL,0xEC48L,0x55F6L,0UL,0UL,0x55F6L,0xEC48L,0xB87AL,0x3821L,0x6378L},{0xB87AL,0xEC48L,0x55F6L,0UL,0UL,0x55F6L,0xEC48L,0xB87AL,0x3821L,0x6378L},{0xB87AL,0xEC48L,0x55F6L,0UL,0UL,0x55F6L,0xEC48L,0xB87AL,0x3821L,0x6378L},{0xB87AL,0xEC48L,0x55F6L,0UL,0UL,0x55F6L,0xEC48L,0xB87AL,0x3821L,0x6378L},{0xB87AL,0xEC48L,0x55F6L,0UL,0UL,0x55F6L,0xEC48L,0xB87AL,0x3821L,0x6378L},{0xB87AL,0xEC48L,0x55F6L,0UL,0UL,0x55F6L,0xEC48L,0xB87AL,0x3821L,0x6378L},{0xB87AL,0xEC48L,0x55F6L,0UL,0UL,0x55F6L,0xEC48L,0xB87AL,0x3821L,0x6378L}},{{0xB87AL,0xEC48L,0x55F6L,0UL,0UL,0x55F6L,0xEC48L,0xB87AL,0x3821L,0x6378L},{0xB87AL,0xEC48L,0x55F6L,0UL,0UL,0x55F6L,0xEC48L,0xB87AL,0x3821L,0x6378L},{0xB87AL,0xEC48L,0x55F6L,0UL,0UL,0x55F6L,0xEC48L,0xB87AL,0x3821L,0x6378L},{0xB87AL,0xEC48L,0x55F6L,0UL,0UL,0x55F6L,0xEC48L,0xB87AL,0x3821L,0x6378L},{0xB87AL,0xEC48L,0x55F6L,0UL,0UL,0x55F6L,0xEC48L,0xB87AL,0x3821L,0x6378L},{0xB87AL,0xEC48L,0x55F6L,0UL,0UL,0x55F6L,0xEC48L,0xB87AL,0x3821L,0x6378L},{0xB87AL,0xEC48L,0x55F6L,0UL,0UL,0x55F6L,0xEC48L,0xB87AL,0x3821L,0x6378L},{0xB87AL,0xEC48L,0x55F6L,0UL,0UL,0x55F6L,0xEC48L,0xB87AL,0x3821L,0x6378L},{0xB87AL,0xEC48L,0x55F6L,0UL,0UL,0x55F6L,0xEC48L,0xB87AL,0x3821L,0x6378L},{0xB87AL,0xEC48L,0x55F6L,0UL,0UL,0x55F6L,0xEC48L,0xB87AL,0x3821L,0x6378L}}};
            int32_t *l_415 = &p_1642->g_168[0];
            uint8_t *l_425 = &p_1642->g_412;
            int8_t l_432 = 0x29L;
            int32_t l_457[10] = {0x3F1E07F3L,2L,0x3F1E07F3L,0x3F1E07F3L,2L,0x3F1E07F3L,0x3F1E07F3L,2L,0x3F1E07F3L,0x3F1E07F3L};
            VECTOR(int64_t, 2) l_479 = (VECTOR(int64_t, 2))(0x64DF2FBA7ADA6C49L, 0x5220BD113D3C45A4L);
            VECTOR(uint32_t, 16) l_515 = (VECTOR(uint32_t, 16))(5UL, (VECTOR(uint32_t, 4))(5UL, (VECTOR(uint32_t, 2))(5UL, 0xC40093E4L), 0xC40093E4L), 0xC40093E4L, 5UL, 0xC40093E4L, (VECTOR(uint32_t, 2))(5UL, 0xC40093E4L), (VECTOR(uint32_t, 2))(5UL, 0xC40093E4L), 5UL, 0xC40093E4L, 5UL, 0xC40093E4L);
            uint8_t l_531 = 0UL;
            int64_t *l_593 = &p_1642->g_64;
            int64_t **l_592 = &l_593;
            uint32_t l_609[9][7][4] = {{{0x1CB39B8EL,0x3D95CD0FL,0xD55B1F20L,0UL},{0x1CB39B8EL,0x3D95CD0FL,0xD55B1F20L,0UL},{0x1CB39B8EL,0x3D95CD0FL,0xD55B1F20L,0UL},{0x1CB39B8EL,0x3D95CD0FL,0xD55B1F20L,0UL},{0x1CB39B8EL,0x3D95CD0FL,0xD55B1F20L,0UL},{0x1CB39B8EL,0x3D95CD0FL,0xD55B1F20L,0UL},{0x1CB39B8EL,0x3D95CD0FL,0xD55B1F20L,0UL}},{{0x1CB39B8EL,0x3D95CD0FL,0xD55B1F20L,0UL},{0x1CB39B8EL,0x3D95CD0FL,0xD55B1F20L,0UL},{0x1CB39B8EL,0x3D95CD0FL,0xD55B1F20L,0UL},{0x1CB39B8EL,0x3D95CD0FL,0xD55B1F20L,0UL},{0x1CB39B8EL,0x3D95CD0FL,0xD55B1F20L,0UL},{0x1CB39B8EL,0x3D95CD0FL,0xD55B1F20L,0UL},{0x1CB39B8EL,0x3D95CD0FL,0xD55B1F20L,0UL}},{{0x1CB39B8EL,0x3D95CD0FL,0xD55B1F20L,0UL},{0x1CB39B8EL,0x3D95CD0FL,0xD55B1F20L,0UL},{0x1CB39B8EL,0x3D95CD0FL,0xD55B1F20L,0UL},{0x1CB39B8EL,0x3D95CD0FL,0xD55B1F20L,0UL},{0x1CB39B8EL,0x3D95CD0FL,0xD55B1F20L,0UL},{0x1CB39B8EL,0x3D95CD0FL,0xD55B1F20L,0UL},{0x1CB39B8EL,0x3D95CD0FL,0xD55B1F20L,0UL}},{{0x1CB39B8EL,0x3D95CD0FL,0xD55B1F20L,0UL},{0x1CB39B8EL,0x3D95CD0FL,0xD55B1F20L,0UL},{0x1CB39B8EL,0x3D95CD0FL,0xD55B1F20L,0UL},{0x1CB39B8EL,0x3D95CD0FL,0xD55B1F20L,0UL},{0x1CB39B8EL,0x3D95CD0FL,0xD55B1F20L,0UL},{0x1CB39B8EL,0x3D95CD0FL,0xD55B1F20L,0UL},{0x1CB39B8EL,0x3D95CD0FL,0xD55B1F20L,0UL}},{{0x1CB39B8EL,0x3D95CD0FL,0xD55B1F20L,0UL},{0x1CB39B8EL,0x3D95CD0FL,0xD55B1F20L,0UL},{0x1CB39B8EL,0x3D95CD0FL,0xD55B1F20L,0UL},{0x1CB39B8EL,0x3D95CD0FL,0xD55B1F20L,0UL},{0x1CB39B8EL,0x3D95CD0FL,0xD55B1F20L,0UL},{0x1CB39B8EL,0x3D95CD0FL,0xD55B1F20L,0UL},{0x1CB39B8EL,0x3D95CD0FL,0xD55B1F20L,0UL}},{{0x1CB39B8EL,0x3D95CD0FL,0xD55B1F20L,0UL},{0x1CB39B8EL,0x3D95CD0FL,0xD55B1F20L,0UL},{0x1CB39B8EL,0x3D95CD0FL,0xD55B1F20L,0UL},{0x1CB39B8EL,0x3D95CD0FL,0xD55B1F20L,0UL},{0x1CB39B8EL,0x3D95CD0FL,0xD55B1F20L,0UL},{0x1CB39B8EL,0x3D95CD0FL,0xD55B1F20L,0UL},{0x1CB39B8EL,0x3D95CD0FL,0xD55B1F20L,0UL}},{{0x1CB39B8EL,0x3D95CD0FL,0xD55B1F20L,0UL},{0x1CB39B8EL,0x3D95CD0FL,0xD55B1F20L,0UL},{0x1CB39B8EL,0x3D95CD0FL,0xD55B1F20L,0UL},{0x1CB39B8EL,0x3D95CD0FL,0xD55B1F20L,0UL},{0x1CB39B8EL,0x3D95CD0FL,0xD55B1F20L,0UL},{0x1CB39B8EL,0x3D95CD0FL,0xD55B1F20L,0UL},{0x1CB39B8EL,0x3D95CD0FL,0xD55B1F20L,0UL}},{{0x1CB39B8EL,0x3D95CD0FL,0xD55B1F20L,0UL},{0x1CB39B8EL,0x3D95CD0FL,0xD55B1F20L,0UL},{0x1CB39B8EL,0x3D95CD0FL,0xD55B1F20L,0UL},{0x1CB39B8EL,0x3D95CD0FL,0xD55B1F20L,0UL},{0x1CB39B8EL,0x3D95CD0FL,0xD55B1F20L,0UL},{0x1CB39B8EL,0x3D95CD0FL,0xD55B1F20L,0UL},{0x1CB39B8EL,0x3D95CD0FL,0xD55B1F20L,0UL}},{{0x1CB39B8EL,0x3D95CD0FL,0xD55B1F20L,0UL},{0x1CB39B8EL,0x3D95CD0FL,0xD55B1F20L,0UL},{0x1CB39B8EL,0x3D95CD0FL,0xD55B1F20L,0UL},{0x1CB39B8EL,0x3D95CD0FL,0xD55B1F20L,0UL},{0x1CB39B8EL,0x3D95CD0FL,0xD55B1F20L,0UL},{0x1CB39B8EL,0x3D95CD0FL,0xD55B1F20L,0UL},{0x1CB39B8EL,0x3D95CD0FL,0xD55B1F20L,0UL}}};
            VECTOR(uint32_t, 4) l_621 = (VECTOR(uint32_t, 4))(0x3502288AL, (VECTOR(uint32_t, 2))(0x3502288AL, 3UL), 3UL);
            int32_t *l_633 = (void*)0;
            int16_t *l_653[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
            int16_t **l_652[5][10][4] = {{{(void*)0,&l_653[1],&l_653[0],&l_653[0]},{(void*)0,&l_653[1],&l_653[0],&l_653[0]},{(void*)0,&l_653[1],&l_653[0],&l_653[0]},{(void*)0,&l_653[1],&l_653[0],&l_653[0]},{(void*)0,&l_653[1],&l_653[0],&l_653[0]},{(void*)0,&l_653[1],&l_653[0],&l_653[0]},{(void*)0,&l_653[1],&l_653[0],&l_653[0]},{(void*)0,&l_653[1],&l_653[0],&l_653[0]},{(void*)0,&l_653[1],&l_653[0],&l_653[0]},{(void*)0,&l_653[1],&l_653[0],&l_653[0]}},{{(void*)0,&l_653[1],&l_653[0],&l_653[0]},{(void*)0,&l_653[1],&l_653[0],&l_653[0]},{(void*)0,&l_653[1],&l_653[0],&l_653[0]},{(void*)0,&l_653[1],&l_653[0],&l_653[0]},{(void*)0,&l_653[1],&l_653[0],&l_653[0]},{(void*)0,&l_653[1],&l_653[0],&l_653[0]},{(void*)0,&l_653[1],&l_653[0],&l_653[0]},{(void*)0,&l_653[1],&l_653[0],&l_653[0]},{(void*)0,&l_653[1],&l_653[0],&l_653[0]},{(void*)0,&l_653[1],&l_653[0],&l_653[0]}},{{(void*)0,&l_653[1],&l_653[0],&l_653[0]},{(void*)0,&l_653[1],&l_653[0],&l_653[0]},{(void*)0,&l_653[1],&l_653[0],&l_653[0]},{(void*)0,&l_653[1],&l_653[0],&l_653[0]},{(void*)0,&l_653[1],&l_653[0],&l_653[0]},{(void*)0,&l_653[1],&l_653[0],&l_653[0]},{(void*)0,&l_653[1],&l_653[0],&l_653[0]},{(void*)0,&l_653[1],&l_653[0],&l_653[0]},{(void*)0,&l_653[1],&l_653[0],&l_653[0]},{(void*)0,&l_653[1],&l_653[0],&l_653[0]}},{{(void*)0,&l_653[1],&l_653[0],&l_653[0]},{(void*)0,&l_653[1],&l_653[0],&l_653[0]},{(void*)0,&l_653[1],&l_653[0],&l_653[0]},{(void*)0,&l_653[1],&l_653[0],&l_653[0]},{(void*)0,&l_653[1],&l_653[0],&l_653[0]},{(void*)0,&l_653[1],&l_653[0],&l_653[0]},{(void*)0,&l_653[1],&l_653[0],&l_653[0]},{(void*)0,&l_653[1],&l_653[0],&l_653[0]},{(void*)0,&l_653[1],&l_653[0],&l_653[0]},{(void*)0,&l_653[1],&l_653[0],&l_653[0]}},{{(void*)0,&l_653[1],&l_653[0],&l_653[0]},{(void*)0,&l_653[1],&l_653[0],&l_653[0]},{(void*)0,&l_653[1],&l_653[0],&l_653[0]},{(void*)0,&l_653[1],&l_653[0],&l_653[0]},{(void*)0,&l_653[1],&l_653[0],&l_653[0]},{(void*)0,&l_653[1],&l_653[0],&l_653[0]},{(void*)0,&l_653[1],&l_653[0],&l_653[0]},{(void*)0,&l_653[1],&l_653[0],&l_653[0]},{(void*)0,&l_653[1],&l_653[0],&l_653[0]},{(void*)0,&l_653[1],&l_653[0],&l_653[0]}}};
            int i, j, k;
            for (l_172 = 9; (l_172 <= (-6)); l_172--)
            { /* block id: 131 */
                uint32_t l_413 = 4294967291UL;
                int32_t l_458 = 1L;
                int32_t l_460 = (-1L);
                int32_t l_528 = 0x62F91FCCL;
                VECTOR(int32_t, 8) l_529 = (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), (-1L)), (-1L)), (-1L), (-1L), (-1L));
                VECTOR(uint8_t, 2) l_547 = (VECTOR(uint8_t, 2))(0xA6L, 0xADL);
                int16_t l_606[5] = {1L,1L,1L,1L,1L};
                int16_t l_618 = 1L;
                VECTOR(uint8_t, 16) l_628 = (VECTOR(uint8_t, 16))(248UL, (VECTOR(uint8_t, 4))(248UL, (VECTOR(uint8_t, 2))(248UL, 0x7EL), 0x7EL), 0x7EL, 248UL, 0x7EL, (VECTOR(uint8_t, 2))(248UL, 0x7EL), (VECTOR(uint8_t, 2))(248UL, 0x7EL), 248UL, 0x7EL, 248UL, 0x7EL);
                int16_t *l_650 = (void*)0;
                int16_t *l_651 = &p_1642->g_108;
                int32_t l_657 = (-1L);
                int i;
                for (p_1642->g_188 = 6; (p_1642->g_188 >= 24); p_1642->g_188 = safe_add_func_int8_t_s_s(p_1642->g_188, 1))
                { /* block id: 134 */
                    int32_t *l_397 = &l_349;
                    for (p_1642->g_108 = 0; (p_1642->g_108 > (-20)); p_1642->g_108--)
                    { /* block id: 137 */
                        l_398 = l_397;
                        (*l_366) = &p_88;
                    }
                    (*l_398) = (p_1642->g_106 <= ((((VECTOR(int64_t, 16))(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))(p_1642->g_399.s07)), ((+((safe_sub_func_uint16_t_u_u(((((safe_mod_func_uint32_t_u_u((((4294967287UL && l_404) != 0UL) > (safe_sub_func_uint8_t_u_u(p_1642->g_168[0], (safe_div_func_int8_t_s_s(0L, (safe_div_func_uint64_t_u_u(p_88, p_1642->g_372.x))))))), 0x790BD56CL)) & FAKE_DIVERGE(p_1642->local_2_offset, get_local_id(2), 10)) , (*l_398)) , p_88), p_1642->g_194.s9)) <= 1L)) , 0x2B9A75A4CF2B00F4L), ((VECTOR(int64_t, 4))(0x539F12244177C9F7L)), 0x34E08BB71AA7F24CL)))).s6206470411616143)).s4 ^ 0x4F7A1F615908BCE0L) && l_411[1][1][4]));
                    if (p_1642->g_412)
                        break;
                }
            }
        }
        else
        { /* block id: 227 */
            int16_t l_658 = 0L;
            int32_t *l_659[10][10][2] = {{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}}};
            int i, j, k;
            p_1642->g_660--;
            (*l_398) ^= p_1642->g_170;
        }
        for (l_172 = (-6); (l_172 <= (-18)); l_172 = safe_sub_func_int64_t_s_s(l_172, 5))
        { /* block id: 233 */
            uint64_t **l_673 = &p_1642->g_227[8][0][2];
            int32_t l_709 = 0x51434F31L;
            for (p_1642->g_412 = 0; (p_1642->g_412 < 1); p_1642->g_412 = safe_add_func_uint64_t_u_u(p_1642->g_412, 7))
            { /* block id: 236 */
                uint32_t *l_708[3];
                int32_t l_710 = 0x767E2774L;
                int i;
                for (i = 0; i < 3; i++)
                    l_708[i] = &p_1642->g_319;
                for (l_349 = (-26); (l_349 >= 4); l_349++)
                { /* block id: 239 */
                    uint64_t ***l_672 = &l_540;
                    int32_t *l_674 = (void*)0;
                    int32_t *l_675[10] = {&l_342,&p_1642->g_29[1],&l_342,&l_342,&p_1642->g_29[1],&l_342,&l_342,&p_1642->g_29[1],&l_342,&l_342};
                    int i;
                    for (p_1642->g_106 = 0; (p_1642->g_106 <= (-20)); p_1642->g_106 = safe_sub_func_uint8_t_u_u(p_1642->g_106, 8))
                    { /* block id: 242 */
                        if (l_342)
                            goto lbl_671;
                    }
                    (*l_365) = (*l_366);
                    p_1642->g_67.y = (((*l_672) = &p_1642->g_227[7][0][0]) == l_673);
                }
                for (l_328 = 25; (l_328 == 13); --l_328)
                { /* block id: 251 */
                    int64_t ***l_694 = (void*)0;
                    int64_t **l_695 = &p_1642->g_595;
                    int32_t l_698 = 0x19A7AA4AL;
                    int8_t *l_704 = &l_172;
                    VECTOR(uint8_t, 16) l_723 = (VECTOR(uint8_t, 16))(0x5CL, (VECTOR(uint8_t, 4))(0x5CL, (VECTOR(uint8_t, 2))(0x5CL, 9UL), 9UL), 9UL, 0x5CL, 9UL, (VECTOR(uint8_t, 2))(0x5CL, 9UL), (VECTOR(uint8_t, 2))(0x5CL, 9UL), 0x5CL, 9UL, 0x5CL, 9UL);
                    int i;
                    if (p_1642->g_191.sb)
                        break;
                    for (p_1642->g_578 = 18; (p_1642->g_578 == 28); ++p_1642->g_578)
                    { /* block id: 255 */
                        return l_385;
                    }
                    p_1642->g_168[0] &= (((p_1642->g_170 , (((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(mad_sat(((VECTOR(int16_t, 4))(sub_sat(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(l_680.s37)), 6L, 0x1B15L)), ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(safe_clamp_func(VECTOR(int16_t, 2),int16_t,((VECTOR(int16_t, 8))(l_681.s20276573)).s47, (int16_t)0x3960L, (int16_t)(p_1642->g_170 != (safe_rshift_func_int16_t_s_u(((VECTOR(int16_t, 4))(l_684.s2943)).y, ((((((*l_398) |= (safe_sub_func_uint16_t_u_u((((safe_rshift_func_uint16_t_u_u((p_1642->g_689 == l_691), ((VECTOR(uint16_t, 2))(p_1642->g_692.s6d)).even)) >= ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(l_693.zz)).yxxxxxyx)).s2) , p_88), ((((l_695 = &p_1642->g_595) == (void*)0) || (((void*)0 == p_1642->g_696) , (*p_1642->g_518))) && 0x06AAE12516F48FBFL)))) | 0x33EDL) >= p_88) < 8UL) & l_698))))))).xxxy)), p_1642->g_548.x, ((VECTOR(int16_t, 2))(0x3471L)), (-6L))), (-8L), ((VECTOR(int16_t, 4))(1L)), (-1L), 0x0E09L, 9L)).s7ff9))).even, ((VECTOR(int16_t, 2))((-1L))), ((VECTOR(int16_t, 2))(0x43CFL))))).yyyyyxyxyyxxxyyx)).s95)).even >= 0x645BL)) , 0L) , l_698);
                    for (p_1642->g_256 = 0; (p_1642->g_256 != 22); p_1642->g_256 = safe_add_func_uint64_t_u_u(p_1642->g_256, 4))
                    { /* block id: 263 */
                        uint64_t l_707 = 0xABE1B10806CA428DL;
                        uint64_t *l_711 = &p_1642->g_508;
                        uint32_t **l_716 = &l_385;
                        int8_t *l_738[3][7][1] = {{{&l_631},{&l_631},{&l_631},{&l_631},{&l_631},{&l_631},{&l_631}},{{&l_631},{&l_631},{&l_631},{&l_631},{&l_631},{&l_631},{&l_631}},{{&l_631},{&l_631},{&l_631},{&l_631},{&l_631},{&l_631},{&l_631}}};
                        int32_t *l_739 = &l_347;
                        int i, j, k;
                        if (p_1642->g_412)
                            goto lbl_701;
                        (*l_398) = ((((*l_655) ^= (safe_div_func_int16_t_s_s(p_88, (p_1642->g_548.x & (((((p_88 , (-1L)) , ((l_704 != (void*)0) < 5UL)) && (p_1642->g_97.se == (safe_div_func_uint16_t_u_u((((l_707 , l_708[1]) != (*p_1642->g_696)) <= p_88), p_88)))) == GROUP_DIVERGE(2, 1)) < l_709))))) >= l_710) > p_88);
                        p_1642->g_168[0] &= (((p_1642->g_158.x = (((((*p_1642->g_518) <= ((((*l_711) ^= ((VECTOR(uint64_t, 2))(0x2222F023BD3BEF0AL, 5UL)).lo) , (((safe_sub_func_int32_t_s_s((safe_add_func_int64_t_s_s((-1L), (((*l_716) = &p_1642->g_290[2]) != ((safe_div_func_uint8_t_u_u(p_88, ((safe_rshift_func_uint16_t_u_u((GROUP_DIVERGE(0, 1) | (((((*l_398) | (safe_add_func_uint32_t_u_u((((VECTOR(uint8_t, 2))(l_723.scb)).lo & (!(p_1642->g_430.sb = (safe_rshift_func_uint16_t_u_u((safe_div_func_uint64_t_u_u(l_707, (safe_mod_func_int16_t_s_s(((safe_lshift_func_uint16_t_u_u((safe_lshift_func_uint8_t_u_s((((safe_mul_func_int16_t_s_s(((VECTOR(int16_t, 2))(0x2126L, 0x48AEL)).even, p_88)) , ((safe_lshift_func_uint8_t_u_s((l_709 <= p_88), 2)) == FAKE_DIVERGE(p_1642->global_0_offset, get_global_id(0), 10))) & l_710), p_1642->g_508)), l_723.sb)) , (-10L)), p_88)))), p_88))))), 0x3A86F723L))) , &p_1642->g_108) != (void*)0) ^ 4UL)), 15)) , l_707))) , p_89)))), p_1642->g_596.s1)) || 0xE2L) == 0x7A8B5632L)) || 65529UL)) || p_1642->g_290[2]) & p_88) != p_88)) | 0x334E5016L) < (*p_1642->g_518));
                        return l_385;
                    }
                }
                for (l_349 = 22; (l_349 < (-11)); l_349 = safe_sub_func_uint64_t_u_u(l_349, 1))
                { /* block id: 277 */
                    uint16_t l_744[10][9][2] = {{{65535UL,0xAC8DL},{65535UL,0xAC8DL},{65535UL,0xAC8DL},{65535UL,0xAC8DL},{65535UL,0xAC8DL},{65535UL,0xAC8DL},{65535UL,0xAC8DL},{65535UL,0xAC8DL},{65535UL,0xAC8DL}},{{65535UL,0xAC8DL},{65535UL,0xAC8DL},{65535UL,0xAC8DL},{65535UL,0xAC8DL},{65535UL,0xAC8DL},{65535UL,0xAC8DL},{65535UL,0xAC8DL},{65535UL,0xAC8DL},{65535UL,0xAC8DL}},{{65535UL,0xAC8DL},{65535UL,0xAC8DL},{65535UL,0xAC8DL},{65535UL,0xAC8DL},{65535UL,0xAC8DL},{65535UL,0xAC8DL},{65535UL,0xAC8DL},{65535UL,0xAC8DL},{65535UL,0xAC8DL}},{{65535UL,0xAC8DL},{65535UL,0xAC8DL},{65535UL,0xAC8DL},{65535UL,0xAC8DL},{65535UL,0xAC8DL},{65535UL,0xAC8DL},{65535UL,0xAC8DL},{65535UL,0xAC8DL},{65535UL,0xAC8DL}},{{65535UL,0xAC8DL},{65535UL,0xAC8DL},{65535UL,0xAC8DL},{65535UL,0xAC8DL},{65535UL,0xAC8DL},{65535UL,0xAC8DL},{65535UL,0xAC8DL},{65535UL,0xAC8DL},{65535UL,0xAC8DL}},{{65535UL,0xAC8DL},{65535UL,0xAC8DL},{65535UL,0xAC8DL},{65535UL,0xAC8DL},{65535UL,0xAC8DL},{65535UL,0xAC8DL},{65535UL,0xAC8DL},{65535UL,0xAC8DL},{65535UL,0xAC8DL}},{{65535UL,0xAC8DL},{65535UL,0xAC8DL},{65535UL,0xAC8DL},{65535UL,0xAC8DL},{65535UL,0xAC8DL},{65535UL,0xAC8DL},{65535UL,0xAC8DL},{65535UL,0xAC8DL},{65535UL,0xAC8DL}},{{65535UL,0xAC8DL},{65535UL,0xAC8DL},{65535UL,0xAC8DL},{65535UL,0xAC8DL},{65535UL,0xAC8DL},{65535UL,0xAC8DL},{65535UL,0xAC8DL},{65535UL,0xAC8DL},{65535UL,0xAC8DL}},{{65535UL,0xAC8DL},{65535UL,0xAC8DL},{65535UL,0xAC8DL},{65535UL,0xAC8DL},{65535UL,0xAC8DL},{65535UL,0xAC8DL},{65535UL,0xAC8DL},{65535UL,0xAC8DL},{65535UL,0xAC8DL}},{{65535UL,0xAC8DL},{65535UL,0xAC8DL},{65535UL,0xAC8DL},{65535UL,0xAC8DL},{65535UL,0xAC8DL},{65535UL,0xAC8DL},{65535UL,0xAC8DL},{65535UL,0xAC8DL},{65535UL,0xAC8DL}}};
                    int i, j, k;
                    for (l_631 = (-2); (l_631 != 20); l_631++)
                    { /* block id: 280 */
                        return &p_1642->g_29[0];
                    }
                    if (p_88)
                        break;
                    ++l_744[6][3][1];
                }
                if (p_1642->g_158.x)
                    continue;
            }
        }
        for (p_1642->g_355 = 0; (p_1642->g_355 != 31); ++p_1642->g_355)
        { /* block id: 291 */
            int32_t *l_749[2];
            int64_t ***l_769 = (void*)0;
            uint8_t *l_770 = &p_1642->g_412;
            int i;
            for (i = 0; i < 2; i++)
                l_749[i] = (void*)0;
            --l_750[2];
            p_88 = ((0x3B74FCACL && (safe_mod_func_int32_t_s_s((safe_rshift_func_uint8_t_u_u((safe_add_func_uint64_t_u_u((+GROUP_DIVERGE(2, 1)), p_88)), p_1642->g_14)), (p_88 & (safe_lshift_func_uint16_t_u_u((((safe_mul_func_uint16_t_u_u(((((safe_sub_func_uint8_t_u_u(p_1642->g_498.s4, (safe_mul_func_uint8_t_u_u((safe_rshift_func_uint16_t_u_u(p_88, 9)), ((*l_770) ^= ((l_769 = (void*)0) == &p_1642->g_594)))))) | ((p_88 >= l_771[2][5]) <= (*l_398))) == (*l_398)) ^ p_1642->g_548.x), 0xE4BCL)) ^ 65535UL) == p_88), 14)))))) >= p_1642->g_596.s3);
            (*l_366) = l_398;
            (*l_365) = l_772[3][1][1];
        }
        p_1642->g_143 = l_385;
    }
    return &p_1642->g_29[0];
}


/* ------------------------------------------ */
/* 
 * reads : p_1642->g_191
 * writes:
 */
int16_t  func_100(uint8_t  p_101, int32_t * p_102, uint32_t  p_103, struct S0 * p_1642)
{ /* block id: 72 */
    VECTOR(uint16_t, 16) l_221 = (VECTOR(uint16_t, 16))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0x563EL), 0x563EL), 0x563EL, 1UL, 0x563EL, (VECTOR(uint16_t, 2))(1UL, 0x563EL), (VECTOR(uint16_t, 2))(1UL, 0x563EL), 1UL, 0x563EL, 1UL, 0x563EL);
    uint64_t *l_223 = (void*)0;
    uint64_t **l_222 = &l_223;
    int32_t *l_224 = &p_1642->g_168[0];
    int32_t *l_225[5][9][5] = {{{&p_1642->g_170,(void*)0,&p_1642->g_170,&p_1642->g_170,(void*)0},{&p_1642->g_170,(void*)0,&p_1642->g_170,&p_1642->g_170,(void*)0},{&p_1642->g_170,(void*)0,&p_1642->g_170,&p_1642->g_170,(void*)0},{&p_1642->g_170,(void*)0,&p_1642->g_170,&p_1642->g_170,(void*)0},{&p_1642->g_170,(void*)0,&p_1642->g_170,&p_1642->g_170,(void*)0},{&p_1642->g_170,(void*)0,&p_1642->g_170,&p_1642->g_170,(void*)0},{&p_1642->g_170,(void*)0,&p_1642->g_170,&p_1642->g_170,(void*)0},{&p_1642->g_170,(void*)0,&p_1642->g_170,&p_1642->g_170,(void*)0},{&p_1642->g_170,(void*)0,&p_1642->g_170,&p_1642->g_170,(void*)0}},{{&p_1642->g_170,(void*)0,&p_1642->g_170,&p_1642->g_170,(void*)0},{&p_1642->g_170,(void*)0,&p_1642->g_170,&p_1642->g_170,(void*)0},{&p_1642->g_170,(void*)0,&p_1642->g_170,&p_1642->g_170,(void*)0},{&p_1642->g_170,(void*)0,&p_1642->g_170,&p_1642->g_170,(void*)0},{&p_1642->g_170,(void*)0,&p_1642->g_170,&p_1642->g_170,(void*)0},{&p_1642->g_170,(void*)0,&p_1642->g_170,&p_1642->g_170,(void*)0},{&p_1642->g_170,(void*)0,&p_1642->g_170,&p_1642->g_170,(void*)0},{&p_1642->g_170,(void*)0,&p_1642->g_170,&p_1642->g_170,(void*)0},{&p_1642->g_170,(void*)0,&p_1642->g_170,&p_1642->g_170,(void*)0}},{{&p_1642->g_170,(void*)0,&p_1642->g_170,&p_1642->g_170,(void*)0},{&p_1642->g_170,(void*)0,&p_1642->g_170,&p_1642->g_170,(void*)0},{&p_1642->g_170,(void*)0,&p_1642->g_170,&p_1642->g_170,(void*)0},{&p_1642->g_170,(void*)0,&p_1642->g_170,&p_1642->g_170,(void*)0},{&p_1642->g_170,(void*)0,&p_1642->g_170,&p_1642->g_170,(void*)0},{&p_1642->g_170,(void*)0,&p_1642->g_170,&p_1642->g_170,(void*)0},{&p_1642->g_170,(void*)0,&p_1642->g_170,&p_1642->g_170,(void*)0},{&p_1642->g_170,(void*)0,&p_1642->g_170,&p_1642->g_170,(void*)0},{&p_1642->g_170,(void*)0,&p_1642->g_170,&p_1642->g_170,(void*)0}},{{&p_1642->g_170,(void*)0,&p_1642->g_170,&p_1642->g_170,(void*)0},{&p_1642->g_170,(void*)0,&p_1642->g_170,&p_1642->g_170,(void*)0},{&p_1642->g_170,(void*)0,&p_1642->g_170,&p_1642->g_170,(void*)0},{&p_1642->g_170,(void*)0,&p_1642->g_170,&p_1642->g_170,(void*)0},{&p_1642->g_170,(void*)0,&p_1642->g_170,&p_1642->g_170,(void*)0},{&p_1642->g_170,(void*)0,&p_1642->g_170,&p_1642->g_170,(void*)0},{&p_1642->g_170,(void*)0,&p_1642->g_170,&p_1642->g_170,(void*)0},{&p_1642->g_170,(void*)0,&p_1642->g_170,&p_1642->g_170,(void*)0},{&p_1642->g_170,(void*)0,&p_1642->g_170,&p_1642->g_170,(void*)0}},{{&p_1642->g_170,(void*)0,&p_1642->g_170,&p_1642->g_170,(void*)0},{&p_1642->g_170,(void*)0,&p_1642->g_170,&p_1642->g_170,(void*)0},{&p_1642->g_170,(void*)0,&p_1642->g_170,&p_1642->g_170,(void*)0},{&p_1642->g_170,(void*)0,&p_1642->g_170,&p_1642->g_170,(void*)0},{&p_1642->g_170,(void*)0,&p_1642->g_170,&p_1642->g_170,(void*)0},{&p_1642->g_170,(void*)0,&p_1642->g_170,&p_1642->g_170,(void*)0},{&p_1642->g_170,(void*)0,&p_1642->g_170,&p_1642->g_170,(void*)0},{&p_1642->g_170,(void*)0,&p_1642->g_170,&p_1642->g_170,(void*)0},{&p_1642->g_170,(void*)0,&p_1642->g_170,&p_1642->g_170,(void*)0}}};
    uint8_t *l_228 = (void*)0;
    VECTOR(int8_t, 4) l_229 = (VECTOR(int8_t, 4))(0x66L, (VECTOR(int8_t, 2))(0x66L, 0x0DL), 0x0DL);
    VECTOR(int8_t, 2) l_230 = (VECTOR(int8_t, 2))(7L, 0x5FL);
    uint8_t l_233 = 0x01L;
    int8_t l_234 = (-8L);
    int32_t l_255 = 0x6BBF8BFFL;
    int64_t l_257 = 0x5CA83EE477E6F25DL;
    VECTOR(uint8_t, 2) l_280 = (VECTOR(uint8_t, 2))(8UL, 0x3AL);
    VECTOR(int32_t, 8) l_295 = (VECTOR(int32_t, 8))(0x4498AD12L, (VECTOR(int32_t, 4))(0x4498AD12L, (VECTOR(int32_t, 2))(0x4498AD12L, (-1L)), (-1L)), (-1L), 0x4498AD12L, (-1L));
    int16_t *l_303 = (void*)0;
    VECTOR(int32_t, 4) l_307 = (VECTOR(int32_t, 4))(0x31F80CCAL, (VECTOR(int32_t, 2))(0x31F80CCAL, 0L), 0L);
    int32_t **l_321 = &l_225[2][5][0];
    int i, j, k;
    return p_1642->g_191.sf;
}


/* ------------------------------------------ */
/* 
 * reads : p_1642->g_108 p_1642->g_143 p_1642->g_170 p_1642->g_168 p_1642->g_29 p_1642->g_109 p_1642->g_190 p_1642->g_191 p_1642->g_194 p_1642->g_202 p_1642->g_67 p_1642->g_158 p_1642->g_156
 * writes: p_1642->g_143 p_1642->g_108 p_1642->g_188 p_1642->g_194 p_1642->g_170 p_1642->g_158
 */
int8_t  func_112(int64_t  p_113, int32_t  p_114, struct S0 * p_1642)
{ /* block id: 51 */
    int32_t *l_173 = &p_1642->g_29[1];
    int32_t **l_174[5];
    uint8_t *l_207[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    uint32_t l_208 = 4294967290UL;
    int i;
    for (i = 0; i < 5; i++)
        l_174[i] = &p_1642->g_143;
    p_1642->g_143 = l_173;
    for (p_114 = 0; (p_114 > (-15)); p_114 = safe_sub_func_uint16_t_u_u(p_114, 3))
    { /* block id: 55 */
        int32_t *l_177 = &p_1642->g_29[1];
        p_1642->g_143 = l_177;
        if (p_114)
            break;
        l_177 = l_177;
    }
    for (p_1642->g_108 = (-27); (p_1642->g_108 <= (-24)); ++p_1642->g_108)
    { /* block id: 62 */
        int32_t *l_180 = &p_1642->g_170;
        uint16_t *l_187 = &p_1642->g_188;
        VECTOR(int16_t, 2) l_189 = (VECTOR(int16_t, 2))(9L, 5L);
        VECTOR(uint64_t, 8) l_192 = (VECTOR(uint64_t, 8))(0x3D3E4E6A841CFB2AL, (VECTOR(uint64_t, 4))(0x3D3E4E6A841CFB2AL, (VECTOR(uint64_t, 2))(0x3D3E4E6A841CFB2AL, 1UL), 1UL), 1UL, 0x3D3E4E6A841CFB2AL, 1UL);
        uint16_t *l_193 = (void*)0;
        uint16_t *l_195 = (void*)0;
        uint16_t *l_196 = (void*)0;
        uint16_t *l_197[2];
        int i;
        for (i = 0; i < 2; i++)
            l_197[i] = (void*)0;
        p_1642->g_143 = l_180;
        if ((*p_1642->g_143))
            continue;
        p_1642->g_158.y &= (safe_rshift_func_uint8_t_u_u((safe_div_func_int32_t_s_s(((p_1642->g_168[0] , ((safe_rshift_func_uint8_t_u_s((*l_173), (((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 16))(rhadd(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 4))(((*l_187) = p_1642->g_109.s5), 65535UL, 1UL, 0x5294L)))).zwywzxyzyzwxwyxw)), ((VECTOR(uint16_t, 2))(abs_diff(((VECTOR(int16_t, 16))(rhadd(((VECTOR(int16_t, 16))(l_189.xxxyxxyxyyxxxyyx)), ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(p_1642->g_190.s46)).xxxyyyyx)).s3245343600061152))).s54, ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(p_1642->g_191.s460d)).xyxwxxyzyxyyzwzz)).sa7))).yyyyxyxxyxyyyyxy))).s139d)))).z <= p_1642->g_190.s7))) <= (((p_113 && ((VECTOR(uint64_t, 2))(hadd(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(clz(((VECTOR(uint64_t, 4))(l_192.s5243)).hi))), ((p_1642->g_194.s5 &= FAKE_DIVERGE(p_1642->global_1_offset, get_global_id(1), 10)) , ((safe_sub_func_uint32_t_u_u(((safe_div_func_int16_t_s_s(((VECTOR(int16_t, 4))(p_1642->g_202.sd561)).y, ((VECTOR(uint16_t, 2))(65535UL, 0x30A9L)).lo)) | (p_1642->g_29[0] && (-1L))), (safe_mul_func_uint8_t_u_u((safe_mul_func_uint16_t_u_u(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 2))(0x7D02L, 0x380AL)))))).xyxyyxxxyxyxxxxx)).s8, ((*l_180) = (((+(l_207[2] == (l_208 , l_207[7]))) < p_1642->g_67.y) >= (*p_1642->g_143))))), p_114)))) ^ p_1642->g_168[0])), ((VECTOR(uint64_t, 2))(18446744073709551615UL)), ((VECTOR(uint64_t, 2))(0x0DCDEB364EF6050AL)), 18446744073709551615UL)).s20, ((VECTOR(uint64_t, 2))(18446744073709551614UL))))).hi) ^ 0x12L) && 0x49FA7D3CL))) , p_113), 5L)), (*l_173)));
    }
    return p_1642->g_156[5][2];
}


/* ------------------------------------------ */
/* 
 * reads : p_1642->g_108 p_1642->g_29 p_1642->g_67 p_1642->g_106 p_1642->g_109 p_1642->g_14 p_1642->g_158 p_1642->g_156 p_1642->g_168 p_1642->g_170
 * writes: p_1642->g_108 p_1642->g_106 p_1642->g_143 p_1642->g_170
 */
uint8_t  func_115(uint64_t  p_116, int64_t  p_117, uint32_t  p_118, int16_t * p_119, int16_t * p_120, struct S0 * p_1642)
{ /* block id: 31 */
    uint64_t *l_125 = (void*)0;
    uint64_t *l_126 = (void*)0;
    int32_t l_138 = 0x1A9D0392L;
    int32_t l_140 = 0x01C1E56CL;
    VECTOR(int32_t, 8) l_154 = (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 2L), 2L), 2L, 0L, 2L);
    int8_t *l_155 = &p_1642->g_156[5][2];
    VECTOR(int32_t, 2) l_157 = (VECTOR(int32_t, 2))(0x42BD8720L, 1L);
    VECTOR(int32_t, 4) l_159 = (VECTOR(int32_t, 4))(0x1B24F345L, (VECTOR(int32_t, 2))(0x1B24F345L, (-1L)), (-1L));
    uint8_t *l_166[2];
    uint64_t *l_167 = (void*)0;
    int32_t *l_169 = &p_1642->g_170;
    int32_t **l_171 = &p_1642->g_143;
    int i;
    for (i = 0; i < 2; i++)
        l_166[i] = (void*)0;
    for (p_1642->g_108 = 0; (p_1642->g_108 > (-21)); --p_1642->g_108)
    { /* block id: 34 */
        uint64_t **l_127 = &l_126;
        int64_t *l_139 = &p_1642->g_106;
        int32_t *l_141 = &l_138;
        int32_t **l_142[7];
        int i;
        for (i = 0; i < 7; i++)
            l_142[i] = &l_141;
        l_138 = ((safe_sub_func_uint64_t_u_u((l_125 != ((*l_127) = l_126)), ((safe_rshift_func_int16_t_s_u((safe_add_func_uint32_t_u_u(((safe_div_func_uint32_t_u_u((safe_mod_func_int64_t_s_s((p_1642->g_29[1] & p_1642->g_67.x), ((*l_139) |= (safe_div_func_int8_t_s_s(p_118, l_138))))), p_1642->g_29[0])) < p_1642->g_109.s7), (p_1642->g_14 || p_116))), 7)) > p_1642->g_108))) != l_140);
        p_1642->g_143 = l_141;
        for (l_140 = (-1); (l_140 == (-9)); l_140--)
        { /* block id: 41 */
            if (l_138)
                break;
            return p_117;
        }
    }
    (*l_169) |= (((safe_div_func_uint64_t_u_u(p_116, ((safe_mod_func_uint8_t_u_u(l_138, (safe_add_func_uint8_t_u_u((safe_mul_func_int8_t_s_s(((VECTOR(int8_t, 8))(rhadd(((VECTOR(int8_t, 16))(clz(((VECTOR(int8_t, 4))(0x48L, ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(((((VECTOR(int32_t, 4))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 2))((-4L), (-7L))).xxxy, ((VECTOR(int32_t, 8))(l_154.s40241330)).odd, ((VECTOR(int32_t, 8))(1L, (l_155 == &p_1642->g_156[1][0]), p_117, ((VECTOR(int32_t, 4))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(l_157.xx)), ((VECTOR(int32_t, 8))(rotate(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(mul_hi(((VECTOR(int32_t, 2))(1L, (-1L))).xyyyxyxx, ((VECTOR(int32_t, 16))(p_1642->g_158.xxxxyxxxxyxyyxyx)).hi))))), ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(clz(((VECTOR(int32_t, 16))(l_159.xwxxxzxyxwxxywxy)).sced4))), (safe_lshift_func_int16_t_s_s(((((safe_rshift_func_uint8_t_u_s((l_159.z = ((safe_add_func_int16_t_s_s(5L, p_1642->g_108)) , p_1642->g_67.y)), 5)) != (-9L)) , l_126) != l_167), (*p_120))), ((VECTOR(int32_t, 8))(0x11AD5033L)), 0x2CCCD254L, 0x76F7CF72L, 0x4A7C3460L)).lo))), ((VECTOR(int32_t, 2))((-1L))), 0x00C7963AL, ((VECTOR(int32_t, 2))(0L)), 0L)).sea2f, ((VECTOR(int32_t, 4))(0x4879A7A5L)), ((VECTOR(int32_t, 4))((-4L)))))), 0x51A432A4L)).even))).y , 0x40E49BB206E1C7F3L) <= p_1642->g_156[4][1]), 4L, 0x02L, 0x42L)).hi)), (-1L))).yywxwywwzzyzxxyz))).odd, ((VECTOR(int8_t, 8))(0x5FL))))).s0, l_138)), p_1642->g_168[0])))) && FAKE_DIVERGE(p_1642->group_1_offset, get_group_id(1), 10)))) != l_157.x) == p_1642->g_29[0]);
    (*l_171) = &l_138;
    return p_1642->g_156[1][1];
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S0 c_1643;
    struct S0* p_1642 = &c_1643;
    struct S0 c_1644 = {
        65535UL, // p_1642->g_14
        {0x5901516EL,0x5901516EL,0x5901516EL,0x5901516EL}, // p_1642->g_29
        (void*)0, // p_1642->g_30
        (-7L), // p_1642->g_64
        (VECTOR(int64_t, 16))(4L, (VECTOR(int64_t, 4))(4L, (VECTOR(int64_t, 2))(4L, 0x07A7CF8314CD5900L), 0x07A7CF8314CD5900L), 0x07A7CF8314CD5900L, 4L, 0x07A7CF8314CD5900L, (VECTOR(int64_t, 2))(4L, 0x07A7CF8314CD5900L), (VECTOR(int64_t, 2))(4L, 0x07A7CF8314CD5900L), 4L, 0x07A7CF8314CD5900L, 4L, 0x07A7CF8314CD5900L), // p_1642->g_65
        (VECTOR(int32_t, 2))((-10L), 5L), // p_1642->g_67
        (VECTOR(uint32_t, 16))(4294967289UL, (VECTOR(uint32_t, 4))(4294967289UL, (VECTOR(uint32_t, 2))(4294967289UL, 1UL), 1UL), 1UL, 4294967289UL, 1UL, (VECTOR(uint32_t, 2))(4294967289UL, 1UL), (VECTOR(uint32_t, 2))(4294967289UL, 1UL), 4294967289UL, 1UL, 4294967289UL, 1UL), // p_1642->g_78
        (VECTOR(int64_t, 4))(3L, (VECTOR(int64_t, 2))(3L, 0x4D927889C386F2BEL), 0x4D927889C386F2BEL), // p_1642->g_84
        (VECTOR(uint8_t, 16))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0UL), 0UL), 0UL, 0UL, 0UL, (VECTOR(uint8_t, 2))(0UL, 0UL), (VECTOR(uint8_t, 2))(0UL, 0UL), 0UL, 0UL, 0UL, 0UL), // p_1642->g_97
        0x6D468734F539B47AL, // p_1642->g_106
        0x71C9L, // p_1642->g_108
        (VECTOR(uint64_t, 8))(0x3D98987753CBC617L, (VECTOR(uint64_t, 4))(0x3D98987753CBC617L, (VECTOR(uint64_t, 2))(0x3D98987753CBC617L, 2UL), 2UL), 2UL, 0x3D98987753CBC617L, 2UL), // p_1642->g_109
        (void*)0, // p_1642->g_143
        {{0x7EL,1L,0x32L},{0x7EL,1L,0x32L},{0x7EL,1L,0x32L},{0x7EL,1L,0x32L},{0x7EL,1L,0x32L},{0x7EL,1L,0x32L}}, // p_1642->g_156
        (VECTOR(int32_t, 2))(1L, 0x4B6A13B0L), // p_1642->g_158
        {0L}, // p_1642->g_168
        0x2101FBCBL, // p_1642->g_170
        65534UL, // p_1642->g_188
        (VECTOR(int16_t, 8))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x6EC6L), 0x6EC6L), 0x6EC6L, (-1L), 0x6EC6L), // p_1642->g_190
        (VECTOR(int16_t, 16))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x7912L), 0x7912L), 0x7912L, (-1L), 0x7912L, (VECTOR(int16_t, 2))((-1L), 0x7912L), (VECTOR(int16_t, 2))((-1L), 0x7912L), (-1L), 0x7912L, (-1L), 0x7912L), // p_1642->g_191
        (VECTOR(uint16_t, 16))(0x2619L, (VECTOR(uint16_t, 4))(0x2619L, (VECTOR(uint16_t, 2))(0x2619L, 0xBAC0L), 0xBAC0L), 0xBAC0L, 0x2619L, 0xBAC0L, (VECTOR(uint16_t, 2))(0x2619L, 0xBAC0L), (VECTOR(uint16_t, 2))(0x2619L, 0xBAC0L), 0x2619L, 0xBAC0L, 0x2619L, 0xBAC0L), // p_1642->g_194
        (VECTOR(int16_t, 16))(0x7065L, (VECTOR(int16_t, 4))(0x7065L, (VECTOR(int16_t, 2))(0x7065L, 0x5F7FL), 0x5F7FL), 0x5F7FL, 0x7065L, 0x5F7FL, (VECTOR(int16_t, 2))(0x7065L, 0x5F7FL), (VECTOR(int16_t, 2))(0x7065L, 0x5F7FL), 0x7065L, 0x5F7FL, 0x7065L, 0x5F7FL), // p_1642->g_202
        {{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}}}, // p_1642->g_227
        &p_1642->g_227[2][6][3], // p_1642->g_226
        (-4L), // p_1642->g_256
        (VECTOR(uint16_t, 8))(8UL, (VECTOR(uint16_t, 4))(8UL, (VECTOR(uint16_t, 2))(8UL, 1UL), 1UL), 1UL, 8UL, 1UL), // p_1642->g_273
        {4294967294UL,4294967294UL,4294967294UL}, // p_1642->g_290
        0xDEBA6F05L, // p_1642->g_292
        (VECTOR(uint64_t, 2))(1UL, 0x12262022A75278EBL), // p_1642->g_309
        4UL, // p_1642->g_319
        65532UL, // p_1642->g_355
        (VECTOR(int32_t, 4))((-3L), (VECTOR(int32_t, 2))((-3L), 0x09800A44L), 0x09800A44L), // p_1642->g_372
        (VECTOR(int64_t, 8))(0x23A8B11744228CE5L, (VECTOR(int64_t, 4))(0x23A8B11744228CE5L, (VECTOR(int64_t, 2))(0x23A8B11744228CE5L, 0x00E9E41F998BFFE8L), 0x00E9E41F998BFFE8L), 0x00E9E41F998BFFE8L, 0x23A8B11744228CE5L, 0x00E9E41F998BFFE8L), // p_1642->g_399
        0xB4L, // p_1642->g_412
        (VECTOR(int8_t, 16))(7L, (VECTOR(int8_t, 4))(7L, (VECTOR(int8_t, 2))(7L, 0x17L), 0x17L), 0x17L, 7L, 0x17L, (VECTOR(int8_t, 2))(7L, 0x17L), (VECTOR(int8_t, 2))(7L, 0x17L), 7L, 0x17L, 7L, 0x17L), // p_1642->g_430
        (VECTOR(uint64_t, 8))(0x85194CED69FDDEC1L, (VECTOR(uint64_t, 4))(0x85194CED69FDDEC1L, (VECTOR(uint64_t, 2))(0x85194CED69FDDEC1L, 18446744073709551615UL), 18446744073709551615UL), 18446744073709551615UL, 0x85194CED69FDDEC1L, 18446744073709551615UL), // p_1642->g_480
        (VECTOR(uint16_t, 8))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 1UL), 1UL), 1UL, 65535UL, 1UL), // p_1642->g_498
        (VECTOR(uint64_t, 2))(1UL, 0xB41E995A98808811L), // p_1642->g_499
        18446744073709551615UL, // p_1642->g_508
        (VECTOR(int8_t, 16))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x42L), 0x42L), 0x42L, (-1L), 0x42L, (VECTOR(int8_t, 2))((-1L), 0x42L), (VECTOR(int8_t, 2))((-1L), 0x42L), (-1L), 0x42L, (-1L), 0x42L), // p_1642->g_514
        &p_1642->g_290[0], // p_1642->g_518
        (VECTOR(int32_t, 2))(0L, 1L), // p_1642->g_548
        0x38FEC265L, // p_1642->g_578
        (void*)0, // p_1642->g_595
        &p_1642->g_595, // p_1642->g_594
        (VECTOR(uint16_t, 8))(0x00B1L, (VECTOR(uint16_t, 4))(0x00B1L, (VECTOR(uint16_t, 2))(0x00B1L, 1UL), 1UL), 1UL, 0x00B1L, 1UL), // p_1642->g_596
        1UL, // p_1642->g_605
        {4294967292UL,4294967292UL}, // p_1642->g_608
        (VECTOR(uint8_t, 2))(0x9FL, 255UL), // p_1642->g_649
        0xC6F5L, // p_1642->g_660
        (void*)0, // p_1642->g_690
        &p_1642->g_690, // p_1642->g_689
        (VECTOR(uint16_t, 16))(65528UL, (VECTOR(uint16_t, 4))(65528UL, (VECTOR(uint16_t, 2))(65528UL, 7UL), 7UL), 7UL, 65528UL, 7UL, (VECTOR(uint16_t, 2))(65528UL, 7UL), (VECTOR(uint16_t, 2))(65528UL, 7UL), 65528UL, 7UL, 65528UL, 7UL), // p_1642->g_692
        (void*)0, // p_1642->g_697
        &p_1642->g_697, // p_1642->g_696
        &p_1642->g_30, // p_1642->g_791
        (VECTOR(int32_t, 8))(0x4F7B332FL, (VECTOR(int32_t, 4))(0x4F7B332FL, (VECTOR(int32_t, 2))(0x4F7B332FL, 0L), 0L), 0L, 0x4F7B332FL, 0L), // p_1642->g_828
        (VECTOR(int32_t, 2))(6L, 0x2E2AD478L), // p_1642->g_830
        &p_1642->g_594, // p_1642->g_835
        &p_1642->g_594, // p_1642->g_836
        &p_1642->g_30, // p_1642->g_841
        &p_1642->g_355, // p_1642->g_866
        &p_1642->g_866, // p_1642->g_865
        (VECTOR(int16_t, 8))(0x545BL, (VECTOR(int16_t, 4))(0x545BL, (VECTOR(int16_t, 2))(0x545BL, 0x16DCL), 0x16DCL), 0x16DCL, 0x545BL, 0x16DCL), // p_1642->g_892
        (VECTOR(int16_t, 2))(0L, 0x0CFCL), // p_1642->g_938
        (VECTOR(uint16_t, 8))(0x30FCL, (VECTOR(uint16_t, 4))(0x30FCL, (VECTOR(uint16_t, 2))(0x30FCL, 0xA68BL), 0xA68BL), 0xA68BL, 0x30FCL, 0xA68BL), // p_1642->g_941
        18446744073709551609UL, // p_1642->g_942
        0x101DL, // p_1642->g_946
        &p_1642->g_143, // p_1642->g_983
        (VECTOR(uint16_t, 2))(0xB89EL, 4UL), // p_1642->g_1048
        (VECTOR(uint8_t, 16))(246UL, (VECTOR(uint8_t, 4))(246UL, (VECTOR(uint8_t, 2))(246UL, 0UL), 0UL), 0UL, 246UL, 0UL, (VECTOR(uint8_t, 2))(246UL, 0UL), (VECTOR(uint8_t, 2))(246UL, 0UL), 246UL, 0UL, 246UL, 0UL), // p_1642->g_1061
        (VECTOR(int64_t, 4))(0x43547526E53126EEL, (VECTOR(int64_t, 2))(0x43547526E53126EEL, 0x57C519F4A59A61B3L), 0x57C519F4A59A61B3L), // p_1642->g_1086
        (void*)0, // p_1642->g_1141
        (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 3L), 3L), 3L, 1L, 3L, (VECTOR(int32_t, 2))(1L, 3L), (VECTOR(int32_t, 2))(1L, 3L), 1L, 3L, 1L, 3L), // p_1642->g_1188
        &p_1642->g_578, // p_1642->g_1190
        &p_1642->g_1190, // p_1642->g_1189
        (VECTOR(int64_t, 16))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 0x7F0DEDC7E20E4210L), 0x7F0DEDC7E20E4210L), 0x7F0DEDC7E20E4210L, (-1L), 0x7F0DEDC7E20E4210L, (VECTOR(int64_t, 2))((-1L), 0x7F0DEDC7E20E4210L), (VECTOR(int64_t, 2))((-1L), 0x7F0DEDC7E20E4210L), (-1L), 0x7F0DEDC7E20E4210L, (-1L), 0x7F0DEDC7E20E4210L), // p_1642->g_1203
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_1642->g_1225
        (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x521EDA45L), 0x521EDA45L), // p_1642->g_1229
        {0x75D876E3L,0x75D876E3L,0x75D876E3L,0x75D876E3L,0x75D876E3L,0x75D876E3L,0x75D876E3L,0x75D876E3L}, // p_1642->g_1258
        &p_1642->g_1190, // p_1642->g_1265
        &p_1642->g_143, // p_1642->g_1277
        (VECTOR(uint64_t, 2))(0x8986E26DF27C4C5AL, 0xA126E210B55C9D7BL), // p_1642->g_1291
        (VECTOR(uint32_t, 2))(0x42458368L, 4294967294UL), // p_1642->g_1306
        (void*)0, // p_1642->g_1337
        {&p_1642->g_1337,&p_1642->g_1337,&p_1642->g_1337,&p_1642->g_1337,&p_1642->g_1337,&p_1642->g_1337,&p_1642->g_1337,&p_1642->g_1337,&p_1642->g_1337,&p_1642->g_1337}, // p_1642->g_1336
        &p_1642->g_1336[2], // p_1642->g_1335
        &p_1642->g_1335, // p_1642->g_1334
        (VECTOR(uint16_t, 16))(8UL, (VECTOR(uint16_t, 4))(8UL, (VECTOR(uint16_t, 2))(8UL, 0x972EL), 0x972EL), 0x972EL, 8UL, 0x972EL, (VECTOR(uint16_t, 2))(8UL, 0x972EL), (VECTOR(uint16_t, 2))(8UL, 0x972EL), 8UL, 0x972EL, 8UL, 0x972EL), // p_1642->g_1341
        (VECTOR(int8_t, 16))(4L, (VECTOR(int8_t, 4))(4L, (VECTOR(int8_t, 2))(4L, 1L), 1L), 1L, 4L, 1L, (VECTOR(int8_t, 2))(4L, 1L), (VECTOR(int8_t, 2))(4L, 1L), 4L, 1L, 4L, 1L), // p_1642->g_1399
        (VECTOR(int8_t, 2))(0x65L, (-1L)), // p_1642->g_1400
        (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 1L), 1L), // p_1642->g_1413
        (VECTOR(uint8_t, 16))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 0x2FL), 0x2FL), 0x2FL, 255UL, 0x2FL, (VECTOR(uint8_t, 2))(255UL, 0x2FL), (VECTOR(uint8_t, 2))(255UL, 0x2FL), 255UL, 0x2FL, 255UL, 0x2FL), // p_1642->g_1454
        (VECTOR(uint8_t, 2))(0xB1L, 0x7EL), // p_1642->g_1461
        0x226F1449L, // p_1642->g_1465
        &p_1642->g_412, // p_1642->g_1486
        &p_1642->g_1486, // p_1642->g_1485
        (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 5L), 5L), 5L, 1L, 5L), // p_1642->g_1527
        (VECTOR(int32_t, 8))(0x2215DC59L, (VECTOR(int32_t, 4))(0x2215DC59L, (VECTOR(int32_t, 2))(0x2215DC59L, 0x21F0B7A6L), 0x21F0B7A6L), 0x21F0B7A6L, 0x2215DC59L, 0x21F0B7A6L), // p_1642->g_1529
        (VECTOR(uint8_t, 4))(0x93L, (VECTOR(uint8_t, 2))(0x93L, 249UL), 249UL), // p_1642->g_1542
        (VECTOR(uint8_t, 8))(5UL, (VECTOR(uint8_t, 4))(5UL, (VECTOR(uint8_t, 2))(5UL, 1UL), 1UL), 1UL, 5UL, 1UL), // p_1642->g_1578
        (VECTOR(uint8_t, 8))(9UL, (VECTOR(uint8_t, 4))(9UL, (VECTOR(uint8_t, 2))(9UL, 250UL), 250UL), 250UL, 9UL, 250UL), // p_1642->g_1581
        {&p_1642->g_170,&p_1642->g_170,&p_1642->g_170,&p_1642->g_170,&p_1642->g_170,&p_1642->g_170,&p_1642->g_170}, // p_1642->g_1586
        (void*)0, // p_1642->g_1587
        {{&p_1642->g_170,&p_1642->g_168[0],&p_1642->g_1465,(void*)0,&p_1642->g_1465,&p_1642->g_168[0],&p_1642->g_170},{&p_1642->g_170,&p_1642->g_168[0],&p_1642->g_1465,(void*)0,&p_1642->g_1465,&p_1642->g_168[0],&p_1642->g_170},{&p_1642->g_170,&p_1642->g_168[0],&p_1642->g_1465,(void*)0,&p_1642->g_1465,&p_1642->g_168[0],&p_1642->g_170},{&p_1642->g_170,&p_1642->g_168[0],&p_1642->g_1465,(void*)0,&p_1642->g_1465,&p_1642->g_168[0],&p_1642->g_170},{&p_1642->g_170,&p_1642->g_168[0],&p_1642->g_1465,(void*)0,&p_1642->g_1465,&p_1642->g_168[0],&p_1642->g_170},{&p_1642->g_170,&p_1642->g_168[0],&p_1642->g_1465,(void*)0,&p_1642->g_1465,&p_1642->g_168[0],&p_1642->g_170},{&p_1642->g_170,&p_1642->g_168[0],&p_1642->g_1465,(void*)0,&p_1642->g_1465,&p_1642->g_168[0],&p_1642->g_170},{&p_1642->g_170,&p_1642->g_168[0],&p_1642->g_1465,(void*)0,&p_1642->g_1465,&p_1642->g_168[0],&p_1642->g_170},{&p_1642->g_170,&p_1642->g_168[0],&p_1642->g_1465,(void*)0,&p_1642->g_1465,&p_1642->g_168[0],&p_1642->g_170}}, // p_1642->g_1588
        (void*)0, // p_1642->g_1589
        {(void*)0,(void*)0,(void*)0,(void*)0}, // p_1642->g_1591
        (void*)0, // p_1642->g_1592
        (void*)0, // p_1642->g_1599
        &p_1642->g_1599, // p_1642->g_1598
        (VECTOR(uint16_t, 16))(0x4144L, (VECTOR(uint16_t, 4))(0x4144L, (VECTOR(uint16_t, 2))(0x4144L, 0x89BDL), 0x89BDL), 0x89BDL, 0x4144L, 0x89BDL, (VECTOR(uint16_t, 2))(0x4144L, 0x89BDL), (VECTOR(uint16_t, 2))(0x4144L, 0x89BDL), 0x4144L, 0x89BDL, 0x4144L, 0x89BDL), // p_1642->g_1618
        (VECTOR(uint16_t, 16))(0x6526L, (VECTOR(uint16_t, 4))(0x6526L, (VECTOR(uint16_t, 2))(0x6526L, 1UL), 1UL), 1UL, 0x6526L, 1UL, (VECTOR(uint16_t, 2))(0x6526L, 1UL), (VECTOR(uint16_t, 2))(0x6526L, 1UL), 0x6526L, 1UL, 0x6526L, 1UL), // p_1642->g_1621
        sequence_input[get_global_id(0)], // p_1642->global_0_offset
        sequence_input[get_global_id(1)], // p_1642->global_1_offset
        sequence_input[get_global_id(2)], // p_1642->global_2_offset
        sequence_input[get_local_id(0)], // p_1642->local_0_offset
        sequence_input[get_local_id(1)], // p_1642->local_1_offset
        sequence_input[get_local_id(2)], // p_1642->local_2_offset
        sequence_input[get_group_id(0)], // p_1642->group_0_offset
        sequence_input[get_group_id(1)], // p_1642->group_1_offset
        sequence_input[get_group_id(2)], // p_1642->group_2_offset
    };
    c_1643 = c_1644;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1642);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1642->g_14, "p_1642->g_14", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1642->g_29[i], "p_1642->g_29[i]", print_hash_value);

    }
    transparent_crc(p_1642->g_64, "p_1642->g_64", print_hash_value);
    transparent_crc(p_1642->g_65.s0, "p_1642->g_65.s0", print_hash_value);
    transparent_crc(p_1642->g_65.s1, "p_1642->g_65.s1", print_hash_value);
    transparent_crc(p_1642->g_65.s2, "p_1642->g_65.s2", print_hash_value);
    transparent_crc(p_1642->g_65.s3, "p_1642->g_65.s3", print_hash_value);
    transparent_crc(p_1642->g_65.s4, "p_1642->g_65.s4", print_hash_value);
    transparent_crc(p_1642->g_65.s5, "p_1642->g_65.s5", print_hash_value);
    transparent_crc(p_1642->g_65.s6, "p_1642->g_65.s6", print_hash_value);
    transparent_crc(p_1642->g_65.s7, "p_1642->g_65.s7", print_hash_value);
    transparent_crc(p_1642->g_65.s8, "p_1642->g_65.s8", print_hash_value);
    transparent_crc(p_1642->g_65.s9, "p_1642->g_65.s9", print_hash_value);
    transparent_crc(p_1642->g_65.sa, "p_1642->g_65.sa", print_hash_value);
    transparent_crc(p_1642->g_65.sb, "p_1642->g_65.sb", print_hash_value);
    transparent_crc(p_1642->g_65.sc, "p_1642->g_65.sc", print_hash_value);
    transparent_crc(p_1642->g_65.sd, "p_1642->g_65.sd", print_hash_value);
    transparent_crc(p_1642->g_65.se, "p_1642->g_65.se", print_hash_value);
    transparent_crc(p_1642->g_65.sf, "p_1642->g_65.sf", print_hash_value);
    transparent_crc(p_1642->g_67.x, "p_1642->g_67.x", print_hash_value);
    transparent_crc(p_1642->g_67.y, "p_1642->g_67.y", print_hash_value);
    transparent_crc(p_1642->g_78.s0, "p_1642->g_78.s0", print_hash_value);
    transparent_crc(p_1642->g_78.s1, "p_1642->g_78.s1", print_hash_value);
    transparent_crc(p_1642->g_78.s2, "p_1642->g_78.s2", print_hash_value);
    transparent_crc(p_1642->g_78.s3, "p_1642->g_78.s3", print_hash_value);
    transparent_crc(p_1642->g_78.s4, "p_1642->g_78.s4", print_hash_value);
    transparent_crc(p_1642->g_78.s5, "p_1642->g_78.s5", print_hash_value);
    transparent_crc(p_1642->g_78.s6, "p_1642->g_78.s6", print_hash_value);
    transparent_crc(p_1642->g_78.s7, "p_1642->g_78.s7", print_hash_value);
    transparent_crc(p_1642->g_78.s8, "p_1642->g_78.s8", print_hash_value);
    transparent_crc(p_1642->g_78.s9, "p_1642->g_78.s9", print_hash_value);
    transparent_crc(p_1642->g_78.sa, "p_1642->g_78.sa", print_hash_value);
    transparent_crc(p_1642->g_78.sb, "p_1642->g_78.sb", print_hash_value);
    transparent_crc(p_1642->g_78.sc, "p_1642->g_78.sc", print_hash_value);
    transparent_crc(p_1642->g_78.sd, "p_1642->g_78.sd", print_hash_value);
    transparent_crc(p_1642->g_78.se, "p_1642->g_78.se", print_hash_value);
    transparent_crc(p_1642->g_78.sf, "p_1642->g_78.sf", print_hash_value);
    transparent_crc(p_1642->g_84.x, "p_1642->g_84.x", print_hash_value);
    transparent_crc(p_1642->g_84.y, "p_1642->g_84.y", print_hash_value);
    transparent_crc(p_1642->g_84.z, "p_1642->g_84.z", print_hash_value);
    transparent_crc(p_1642->g_84.w, "p_1642->g_84.w", print_hash_value);
    transparent_crc(p_1642->g_97.s0, "p_1642->g_97.s0", print_hash_value);
    transparent_crc(p_1642->g_97.s1, "p_1642->g_97.s1", print_hash_value);
    transparent_crc(p_1642->g_97.s2, "p_1642->g_97.s2", print_hash_value);
    transparent_crc(p_1642->g_97.s3, "p_1642->g_97.s3", print_hash_value);
    transparent_crc(p_1642->g_97.s4, "p_1642->g_97.s4", print_hash_value);
    transparent_crc(p_1642->g_97.s5, "p_1642->g_97.s5", print_hash_value);
    transparent_crc(p_1642->g_97.s6, "p_1642->g_97.s6", print_hash_value);
    transparent_crc(p_1642->g_97.s7, "p_1642->g_97.s7", print_hash_value);
    transparent_crc(p_1642->g_97.s8, "p_1642->g_97.s8", print_hash_value);
    transparent_crc(p_1642->g_97.s9, "p_1642->g_97.s9", print_hash_value);
    transparent_crc(p_1642->g_97.sa, "p_1642->g_97.sa", print_hash_value);
    transparent_crc(p_1642->g_97.sb, "p_1642->g_97.sb", print_hash_value);
    transparent_crc(p_1642->g_97.sc, "p_1642->g_97.sc", print_hash_value);
    transparent_crc(p_1642->g_97.sd, "p_1642->g_97.sd", print_hash_value);
    transparent_crc(p_1642->g_97.se, "p_1642->g_97.se", print_hash_value);
    transparent_crc(p_1642->g_97.sf, "p_1642->g_97.sf", print_hash_value);
    transparent_crc(p_1642->g_106, "p_1642->g_106", print_hash_value);
    transparent_crc(p_1642->g_108, "p_1642->g_108", print_hash_value);
    transparent_crc(p_1642->g_109.s0, "p_1642->g_109.s0", print_hash_value);
    transparent_crc(p_1642->g_109.s1, "p_1642->g_109.s1", print_hash_value);
    transparent_crc(p_1642->g_109.s2, "p_1642->g_109.s2", print_hash_value);
    transparent_crc(p_1642->g_109.s3, "p_1642->g_109.s3", print_hash_value);
    transparent_crc(p_1642->g_109.s4, "p_1642->g_109.s4", print_hash_value);
    transparent_crc(p_1642->g_109.s5, "p_1642->g_109.s5", print_hash_value);
    transparent_crc(p_1642->g_109.s6, "p_1642->g_109.s6", print_hash_value);
    transparent_crc(p_1642->g_109.s7, "p_1642->g_109.s7", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 3; j++)
        {
            transparent_crc(p_1642->g_156[i][j], "p_1642->g_156[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1642->g_158.x, "p_1642->g_158.x", print_hash_value);
    transparent_crc(p_1642->g_158.y, "p_1642->g_158.y", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1642->g_168[i], "p_1642->g_168[i]", print_hash_value);

    }
    transparent_crc(p_1642->g_170, "p_1642->g_170", print_hash_value);
    transparent_crc(p_1642->g_188, "p_1642->g_188", print_hash_value);
    transparent_crc(p_1642->g_190.s0, "p_1642->g_190.s0", print_hash_value);
    transparent_crc(p_1642->g_190.s1, "p_1642->g_190.s1", print_hash_value);
    transparent_crc(p_1642->g_190.s2, "p_1642->g_190.s2", print_hash_value);
    transparent_crc(p_1642->g_190.s3, "p_1642->g_190.s3", print_hash_value);
    transparent_crc(p_1642->g_190.s4, "p_1642->g_190.s4", print_hash_value);
    transparent_crc(p_1642->g_190.s5, "p_1642->g_190.s5", print_hash_value);
    transparent_crc(p_1642->g_190.s6, "p_1642->g_190.s6", print_hash_value);
    transparent_crc(p_1642->g_190.s7, "p_1642->g_190.s7", print_hash_value);
    transparent_crc(p_1642->g_191.s0, "p_1642->g_191.s0", print_hash_value);
    transparent_crc(p_1642->g_191.s1, "p_1642->g_191.s1", print_hash_value);
    transparent_crc(p_1642->g_191.s2, "p_1642->g_191.s2", print_hash_value);
    transparent_crc(p_1642->g_191.s3, "p_1642->g_191.s3", print_hash_value);
    transparent_crc(p_1642->g_191.s4, "p_1642->g_191.s4", print_hash_value);
    transparent_crc(p_1642->g_191.s5, "p_1642->g_191.s5", print_hash_value);
    transparent_crc(p_1642->g_191.s6, "p_1642->g_191.s6", print_hash_value);
    transparent_crc(p_1642->g_191.s7, "p_1642->g_191.s7", print_hash_value);
    transparent_crc(p_1642->g_191.s8, "p_1642->g_191.s8", print_hash_value);
    transparent_crc(p_1642->g_191.s9, "p_1642->g_191.s9", print_hash_value);
    transparent_crc(p_1642->g_191.sa, "p_1642->g_191.sa", print_hash_value);
    transparent_crc(p_1642->g_191.sb, "p_1642->g_191.sb", print_hash_value);
    transparent_crc(p_1642->g_191.sc, "p_1642->g_191.sc", print_hash_value);
    transparent_crc(p_1642->g_191.sd, "p_1642->g_191.sd", print_hash_value);
    transparent_crc(p_1642->g_191.se, "p_1642->g_191.se", print_hash_value);
    transparent_crc(p_1642->g_191.sf, "p_1642->g_191.sf", print_hash_value);
    transparent_crc(p_1642->g_194.s0, "p_1642->g_194.s0", print_hash_value);
    transparent_crc(p_1642->g_194.s1, "p_1642->g_194.s1", print_hash_value);
    transparent_crc(p_1642->g_194.s2, "p_1642->g_194.s2", print_hash_value);
    transparent_crc(p_1642->g_194.s3, "p_1642->g_194.s3", print_hash_value);
    transparent_crc(p_1642->g_194.s4, "p_1642->g_194.s4", print_hash_value);
    transparent_crc(p_1642->g_194.s5, "p_1642->g_194.s5", print_hash_value);
    transparent_crc(p_1642->g_194.s6, "p_1642->g_194.s6", print_hash_value);
    transparent_crc(p_1642->g_194.s7, "p_1642->g_194.s7", print_hash_value);
    transparent_crc(p_1642->g_194.s8, "p_1642->g_194.s8", print_hash_value);
    transparent_crc(p_1642->g_194.s9, "p_1642->g_194.s9", print_hash_value);
    transparent_crc(p_1642->g_194.sa, "p_1642->g_194.sa", print_hash_value);
    transparent_crc(p_1642->g_194.sb, "p_1642->g_194.sb", print_hash_value);
    transparent_crc(p_1642->g_194.sc, "p_1642->g_194.sc", print_hash_value);
    transparent_crc(p_1642->g_194.sd, "p_1642->g_194.sd", print_hash_value);
    transparent_crc(p_1642->g_194.se, "p_1642->g_194.se", print_hash_value);
    transparent_crc(p_1642->g_194.sf, "p_1642->g_194.sf", print_hash_value);
    transparent_crc(p_1642->g_202.s0, "p_1642->g_202.s0", print_hash_value);
    transparent_crc(p_1642->g_202.s1, "p_1642->g_202.s1", print_hash_value);
    transparent_crc(p_1642->g_202.s2, "p_1642->g_202.s2", print_hash_value);
    transparent_crc(p_1642->g_202.s3, "p_1642->g_202.s3", print_hash_value);
    transparent_crc(p_1642->g_202.s4, "p_1642->g_202.s4", print_hash_value);
    transparent_crc(p_1642->g_202.s5, "p_1642->g_202.s5", print_hash_value);
    transparent_crc(p_1642->g_202.s6, "p_1642->g_202.s6", print_hash_value);
    transparent_crc(p_1642->g_202.s7, "p_1642->g_202.s7", print_hash_value);
    transparent_crc(p_1642->g_202.s8, "p_1642->g_202.s8", print_hash_value);
    transparent_crc(p_1642->g_202.s9, "p_1642->g_202.s9", print_hash_value);
    transparent_crc(p_1642->g_202.sa, "p_1642->g_202.sa", print_hash_value);
    transparent_crc(p_1642->g_202.sb, "p_1642->g_202.sb", print_hash_value);
    transparent_crc(p_1642->g_202.sc, "p_1642->g_202.sc", print_hash_value);
    transparent_crc(p_1642->g_202.sd, "p_1642->g_202.sd", print_hash_value);
    transparent_crc(p_1642->g_202.se, "p_1642->g_202.se", print_hash_value);
    transparent_crc(p_1642->g_202.sf, "p_1642->g_202.sf", print_hash_value);
    transparent_crc(p_1642->g_256, "p_1642->g_256", print_hash_value);
    transparent_crc(p_1642->g_273.s0, "p_1642->g_273.s0", print_hash_value);
    transparent_crc(p_1642->g_273.s1, "p_1642->g_273.s1", print_hash_value);
    transparent_crc(p_1642->g_273.s2, "p_1642->g_273.s2", print_hash_value);
    transparent_crc(p_1642->g_273.s3, "p_1642->g_273.s3", print_hash_value);
    transparent_crc(p_1642->g_273.s4, "p_1642->g_273.s4", print_hash_value);
    transparent_crc(p_1642->g_273.s5, "p_1642->g_273.s5", print_hash_value);
    transparent_crc(p_1642->g_273.s6, "p_1642->g_273.s6", print_hash_value);
    transparent_crc(p_1642->g_273.s7, "p_1642->g_273.s7", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_1642->g_290[i], "p_1642->g_290[i]", print_hash_value);

    }
    transparent_crc(p_1642->g_292, "p_1642->g_292", print_hash_value);
    transparent_crc(p_1642->g_309.x, "p_1642->g_309.x", print_hash_value);
    transparent_crc(p_1642->g_309.y, "p_1642->g_309.y", print_hash_value);
    transparent_crc(p_1642->g_319, "p_1642->g_319", print_hash_value);
    transparent_crc(p_1642->g_355, "p_1642->g_355", print_hash_value);
    transparent_crc(p_1642->g_372.x, "p_1642->g_372.x", print_hash_value);
    transparent_crc(p_1642->g_372.y, "p_1642->g_372.y", print_hash_value);
    transparent_crc(p_1642->g_372.z, "p_1642->g_372.z", print_hash_value);
    transparent_crc(p_1642->g_372.w, "p_1642->g_372.w", print_hash_value);
    transparent_crc(p_1642->g_399.s0, "p_1642->g_399.s0", print_hash_value);
    transparent_crc(p_1642->g_399.s1, "p_1642->g_399.s1", print_hash_value);
    transparent_crc(p_1642->g_399.s2, "p_1642->g_399.s2", print_hash_value);
    transparent_crc(p_1642->g_399.s3, "p_1642->g_399.s3", print_hash_value);
    transparent_crc(p_1642->g_399.s4, "p_1642->g_399.s4", print_hash_value);
    transparent_crc(p_1642->g_399.s5, "p_1642->g_399.s5", print_hash_value);
    transparent_crc(p_1642->g_399.s6, "p_1642->g_399.s6", print_hash_value);
    transparent_crc(p_1642->g_399.s7, "p_1642->g_399.s7", print_hash_value);
    transparent_crc(p_1642->g_412, "p_1642->g_412", print_hash_value);
    transparent_crc(p_1642->g_430.s0, "p_1642->g_430.s0", print_hash_value);
    transparent_crc(p_1642->g_430.s1, "p_1642->g_430.s1", print_hash_value);
    transparent_crc(p_1642->g_430.s2, "p_1642->g_430.s2", print_hash_value);
    transparent_crc(p_1642->g_430.s3, "p_1642->g_430.s3", print_hash_value);
    transparent_crc(p_1642->g_430.s4, "p_1642->g_430.s4", print_hash_value);
    transparent_crc(p_1642->g_430.s5, "p_1642->g_430.s5", print_hash_value);
    transparent_crc(p_1642->g_430.s6, "p_1642->g_430.s6", print_hash_value);
    transparent_crc(p_1642->g_430.s7, "p_1642->g_430.s7", print_hash_value);
    transparent_crc(p_1642->g_430.s8, "p_1642->g_430.s8", print_hash_value);
    transparent_crc(p_1642->g_430.s9, "p_1642->g_430.s9", print_hash_value);
    transparent_crc(p_1642->g_430.sa, "p_1642->g_430.sa", print_hash_value);
    transparent_crc(p_1642->g_430.sb, "p_1642->g_430.sb", print_hash_value);
    transparent_crc(p_1642->g_430.sc, "p_1642->g_430.sc", print_hash_value);
    transparent_crc(p_1642->g_430.sd, "p_1642->g_430.sd", print_hash_value);
    transparent_crc(p_1642->g_430.se, "p_1642->g_430.se", print_hash_value);
    transparent_crc(p_1642->g_430.sf, "p_1642->g_430.sf", print_hash_value);
    transparent_crc(p_1642->g_480.s0, "p_1642->g_480.s0", print_hash_value);
    transparent_crc(p_1642->g_480.s1, "p_1642->g_480.s1", print_hash_value);
    transparent_crc(p_1642->g_480.s2, "p_1642->g_480.s2", print_hash_value);
    transparent_crc(p_1642->g_480.s3, "p_1642->g_480.s3", print_hash_value);
    transparent_crc(p_1642->g_480.s4, "p_1642->g_480.s4", print_hash_value);
    transparent_crc(p_1642->g_480.s5, "p_1642->g_480.s5", print_hash_value);
    transparent_crc(p_1642->g_480.s6, "p_1642->g_480.s6", print_hash_value);
    transparent_crc(p_1642->g_480.s7, "p_1642->g_480.s7", print_hash_value);
    transparent_crc(p_1642->g_498.s0, "p_1642->g_498.s0", print_hash_value);
    transparent_crc(p_1642->g_498.s1, "p_1642->g_498.s1", print_hash_value);
    transparent_crc(p_1642->g_498.s2, "p_1642->g_498.s2", print_hash_value);
    transparent_crc(p_1642->g_498.s3, "p_1642->g_498.s3", print_hash_value);
    transparent_crc(p_1642->g_498.s4, "p_1642->g_498.s4", print_hash_value);
    transparent_crc(p_1642->g_498.s5, "p_1642->g_498.s5", print_hash_value);
    transparent_crc(p_1642->g_498.s6, "p_1642->g_498.s6", print_hash_value);
    transparent_crc(p_1642->g_498.s7, "p_1642->g_498.s7", print_hash_value);
    transparent_crc(p_1642->g_499.x, "p_1642->g_499.x", print_hash_value);
    transparent_crc(p_1642->g_499.y, "p_1642->g_499.y", print_hash_value);
    transparent_crc(p_1642->g_508, "p_1642->g_508", print_hash_value);
    transparent_crc(p_1642->g_514.s0, "p_1642->g_514.s0", print_hash_value);
    transparent_crc(p_1642->g_514.s1, "p_1642->g_514.s1", print_hash_value);
    transparent_crc(p_1642->g_514.s2, "p_1642->g_514.s2", print_hash_value);
    transparent_crc(p_1642->g_514.s3, "p_1642->g_514.s3", print_hash_value);
    transparent_crc(p_1642->g_514.s4, "p_1642->g_514.s4", print_hash_value);
    transparent_crc(p_1642->g_514.s5, "p_1642->g_514.s5", print_hash_value);
    transparent_crc(p_1642->g_514.s6, "p_1642->g_514.s6", print_hash_value);
    transparent_crc(p_1642->g_514.s7, "p_1642->g_514.s7", print_hash_value);
    transparent_crc(p_1642->g_514.s8, "p_1642->g_514.s8", print_hash_value);
    transparent_crc(p_1642->g_514.s9, "p_1642->g_514.s9", print_hash_value);
    transparent_crc(p_1642->g_514.sa, "p_1642->g_514.sa", print_hash_value);
    transparent_crc(p_1642->g_514.sb, "p_1642->g_514.sb", print_hash_value);
    transparent_crc(p_1642->g_514.sc, "p_1642->g_514.sc", print_hash_value);
    transparent_crc(p_1642->g_514.sd, "p_1642->g_514.sd", print_hash_value);
    transparent_crc(p_1642->g_514.se, "p_1642->g_514.se", print_hash_value);
    transparent_crc(p_1642->g_514.sf, "p_1642->g_514.sf", print_hash_value);
    transparent_crc(p_1642->g_548.x, "p_1642->g_548.x", print_hash_value);
    transparent_crc(p_1642->g_548.y, "p_1642->g_548.y", print_hash_value);
    transparent_crc(p_1642->g_578, "p_1642->g_578", print_hash_value);
    transparent_crc(p_1642->g_596.s0, "p_1642->g_596.s0", print_hash_value);
    transparent_crc(p_1642->g_596.s1, "p_1642->g_596.s1", print_hash_value);
    transparent_crc(p_1642->g_596.s2, "p_1642->g_596.s2", print_hash_value);
    transparent_crc(p_1642->g_596.s3, "p_1642->g_596.s3", print_hash_value);
    transparent_crc(p_1642->g_596.s4, "p_1642->g_596.s4", print_hash_value);
    transparent_crc(p_1642->g_596.s5, "p_1642->g_596.s5", print_hash_value);
    transparent_crc(p_1642->g_596.s6, "p_1642->g_596.s6", print_hash_value);
    transparent_crc(p_1642->g_596.s7, "p_1642->g_596.s7", print_hash_value);
    transparent_crc(p_1642->g_605, "p_1642->g_605", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1642->g_608[i], "p_1642->g_608[i]", print_hash_value);

    }
    transparent_crc(p_1642->g_649.x, "p_1642->g_649.x", print_hash_value);
    transparent_crc(p_1642->g_649.y, "p_1642->g_649.y", print_hash_value);
    transparent_crc(p_1642->g_660, "p_1642->g_660", print_hash_value);
    transparent_crc(p_1642->g_692.s0, "p_1642->g_692.s0", print_hash_value);
    transparent_crc(p_1642->g_692.s1, "p_1642->g_692.s1", print_hash_value);
    transparent_crc(p_1642->g_692.s2, "p_1642->g_692.s2", print_hash_value);
    transparent_crc(p_1642->g_692.s3, "p_1642->g_692.s3", print_hash_value);
    transparent_crc(p_1642->g_692.s4, "p_1642->g_692.s4", print_hash_value);
    transparent_crc(p_1642->g_692.s5, "p_1642->g_692.s5", print_hash_value);
    transparent_crc(p_1642->g_692.s6, "p_1642->g_692.s6", print_hash_value);
    transparent_crc(p_1642->g_692.s7, "p_1642->g_692.s7", print_hash_value);
    transparent_crc(p_1642->g_692.s8, "p_1642->g_692.s8", print_hash_value);
    transparent_crc(p_1642->g_692.s9, "p_1642->g_692.s9", print_hash_value);
    transparent_crc(p_1642->g_692.sa, "p_1642->g_692.sa", print_hash_value);
    transparent_crc(p_1642->g_692.sb, "p_1642->g_692.sb", print_hash_value);
    transparent_crc(p_1642->g_692.sc, "p_1642->g_692.sc", print_hash_value);
    transparent_crc(p_1642->g_692.sd, "p_1642->g_692.sd", print_hash_value);
    transparent_crc(p_1642->g_692.se, "p_1642->g_692.se", print_hash_value);
    transparent_crc(p_1642->g_692.sf, "p_1642->g_692.sf", print_hash_value);
    transparent_crc(p_1642->g_828.s0, "p_1642->g_828.s0", print_hash_value);
    transparent_crc(p_1642->g_828.s1, "p_1642->g_828.s1", print_hash_value);
    transparent_crc(p_1642->g_828.s2, "p_1642->g_828.s2", print_hash_value);
    transparent_crc(p_1642->g_828.s3, "p_1642->g_828.s3", print_hash_value);
    transparent_crc(p_1642->g_828.s4, "p_1642->g_828.s4", print_hash_value);
    transparent_crc(p_1642->g_828.s5, "p_1642->g_828.s5", print_hash_value);
    transparent_crc(p_1642->g_828.s6, "p_1642->g_828.s6", print_hash_value);
    transparent_crc(p_1642->g_828.s7, "p_1642->g_828.s7", print_hash_value);
    transparent_crc(p_1642->g_830.x, "p_1642->g_830.x", print_hash_value);
    transparent_crc(p_1642->g_830.y, "p_1642->g_830.y", print_hash_value);
    transparent_crc(p_1642->g_892.s0, "p_1642->g_892.s0", print_hash_value);
    transparent_crc(p_1642->g_892.s1, "p_1642->g_892.s1", print_hash_value);
    transparent_crc(p_1642->g_892.s2, "p_1642->g_892.s2", print_hash_value);
    transparent_crc(p_1642->g_892.s3, "p_1642->g_892.s3", print_hash_value);
    transparent_crc(p_1642->g_892.s4, "p_1642->g_892.s4", print_hash_value);
    transparent_crc(p_1642->g_892.s5, "p_1642->g_892.s5", print_hash_value);
    transparent_crc(p_1642->g_892.s6, "p_1642->g_892.s6", print_hash_value);
    transparent_crc(p_1642->g_892.s7, "p_1642->g_892.s7", print_hash_value);
    transparent_crc(p_1642->g_938.x, "p_1642->g_938.x", print_hash_value);
    transparent_crc(p_1642->g_938.y, "p_1642->g_938.y", print_hash_value);
    transparent_crc(p_1642->g_941.s0, "p_1642->g_941.s0", print_hash_value);
    transparent_crc(p_1642->g_941.s1, "p_1642->g_941.s1", print_hash_value);
    transparent_crc(p_1642->g_941.s2, "p_1642->g_941.s2", print_hash_value);
    transparent_crc(p_1642->g_941.s3, "p_1642->g_941.s3", print_hash_value);
    transparent_crc(p_1642->g_941.s4, "p_1642->g_941.s4", print_hash_value);
    transparent_crc(p_1642->g_941.s5, "p_1642->g_941.s5", print_hash_value);
    transparent_crc(p_1642->g_941.s6, "p_1642->g_941.s6", print_hash_value);
    transparent_crc(p_1642->g_941.s7, "p_1642->g_941.s7", print_hash_value);
    transparent_crc(p_1642->g_942, "p_1642->g_942", print_hash_value);
    transparent_crc(p_1642->g_946, "p_1642->g_946", print_hash_value);
    transparent_crc(p_1642->g_1048.x, "p_1642->g_1048.x", print_hash_value);
    transparent_crc(p_1642->g_1048.y, "p_1642->g_1048.y", print_hash_value);
    transparent_crc(p_1642->g_1061.s0, "p_1642->g_1061.s0", print_hash_value);
    transparent_crc(p_1642->g_1061.s1, "p_1642->g_1061.s1", print_hash_value);
    transparent_crc(p_1642->g_1061.s2, "p_1642->g_1061.s2", print_hash_value);
    transparent_crc(p_1642->g_1061.s3, "p_1642->g_1061.s3", print_hash_value);
    transparent_crc(p_1642->g_1061.s4, "p_1642->g_1061.s4", print_hash_value);
    transparent_crc(p_1642->g_1061.s5, "p_1642->g_1061.s5", print_hash_value);
    transparent_crc(p_1642->g_1061.s6, "p_1642->g_1061.s6", print_hash_value);
    transparent_crc(p_1642->g_1061.s7, "p_1642->g_1061.s7", print_hash_value);
    transparent_crc(p_1642->g_1061.s8, "p_1642->g_1061.s8", print_hash_value);
    transparent_crc(p_1642->g_1061.s9, "p_1642->g_1061.s9", print_hash_value);
    transparent_crc(p_1642->g_1061.sa, "p_1642->g_1061.sa", print_hash_value);
    transparent_crc(p_1642->g_1061.sb, "p_1642->g_1061.sb", print_hash_value);
    transparent_crc(p_1642->g_1061.sc, "p_1642->g_1061.sc", print_hash_value);
    transparent_crc(p_1642->g_1061.sd, "p_1642->g_1061.sd", print_hash_value);
    transparent_crc(p_1642->g_1061.se, "p_1642->g_1061.se", print_hash_value);
    transparent_crc(p_1642->g_1061.sf, "p_1642->g_1061.sf", print_hash_value);
    transparent_crc(p_1642->g_1086.x, "p_1642->g_1086.x", print_hash_value);
    transparent_crc(p_1642->g_1086.y, "p_1642->g_1086.y", print_hash_value);
    transparent_crc(p_1642->g_1086.z, "p_1642->g_1086.z", print_hash_value);
    transparent_crc(p_1642->g_1086.w, "p_1642->g_1086.w", print_hash_value);
    transparent_crc(p_1642->g_1188.s0, "p_1642->g_1188.s0", print_hash_value);
    transparent_crc(p_1642->g_1188.s1, "p_1642->g_1188.s1", print_hash_value);
    transparent_crc(p_1642->g_1188.s2, "p_1642->g_1188.s2", print_hash_value);
    transparent_crc(p_1642->g_1188.s3, "p_1642->g_1188.s3", print_hash_value);
    transparent_crc(p_1642->g_1188.s4, "p_1642->g_1188.s4", print_hash_value);
    transparent_crc(p_1642->g_1188.s5, "p_1642->g_1188.s5", print_hash_value);
    transparent_crc(p_1642->g_1188.s6, "p_1642->g_1188.s6", print_hash_value);
    transparent_crc(p_1642->g_1188.s7, "p_1642->g_1188.s7", print_hash_value);
    transparent_crc(p_1642->g_1188.s8, "p_1642->g_1188.s8", print_hash_value);
    transparent_crc(p_1642->g_1188.s9, "p_1642->g_1188.s9", print_hash_value);
    transparent_crc(p_1642->g_1188.sa, "p_1642->g_1188.sa", print_hash_value);
    transparent_crc(p_1642->g_1188.sb, "p_1642->g_1188.sb", print_hash_value);
    transparent_crc(p_1642->g_1188.sc, "p_1642->g_1188.sc", print_hash_value);
    transparent_crc(p_1642->g_1188.sd, "p_1642->g_1188.sd", print_hash_value);
    transparent_crc(p_1642->g_1188.se, "p_1642->g_1188.se", print_hash_value);
    transparent_crc(p_1642->g_1188.sf, "p_1642->g_1188.sf", print_hash_value);
    transparent_crc(p_1642->g_1203.s0, "p_1642->g_1203.s0", print_hash_value);
    transparent_crc(p_1642->g_1203.s1, "p_1642->g_1203.s1", print_hash_value);
    transparent_crc(p_1642->g_1203.s2, "p_1642->g_1203.s2", print_hash_value);
    transparent_crc(p_1642->g_1203.s3, "p_1642->g_1203.s3", print_hash_value);
    transparent_crc(p_1642->g_1203.s4, "p_1642->g_1203.s4", print_hash_value);
    transparent_crc(p_1642->g_1203.s5, "p_1642->g_1203.s5", print_hash_value);
    transparent_crc(p_1642->g_1203.s6, "p_1642->g_1203.s6", print_hash_value);
    transparent_crc(p_1642->g_1203.s7, "p_1642->g_1203.s7", print_hash_value);
    transparent_crc(p_1642->g_1203.s8, "p_1642->g_1203.s8", print_hash_value);
    transparent_crc(p_1642->g_1203.s9, "p_1642->g_1203.s9", print_hash_value);
    transparent_crc(p_1642->g_1203.sa, "p_1642->g_1203.sa", print_hash_value);
    transparent_crc(p_1642->g_1203.sb, "p_1642->g_1203.sb", print_hash_value);
    transparent_crc(p_1642->g_1203.sc, "p_1642->g_1203.sc", print_hash_value);
    transparent_crc(p_1642->g_1203.sd, "p_1642->g_1203.sd", print_hash_value);
    transparent_crc(p_1642->g_1203.se, "p_1642->g_1203.se", print_hash_value);
    transparent_crc(p_1642->g_1203.sf, "p_1642->g_1203.sf", print_hash_value);
    transparent_crc(p_1642->g_1229.x, "p_1642->g_1229.x", print_hash_value);
    transparent_crc(p_1642->g_1229.y, "p_1642->g_1229.y", print_hash_value);
    transparent_crc(p_1642->g_1229.z, "p_1642->g_1229.z", print_hash_value);
    transparent_crc(p_1642->g_1229.w, "p_1642->g_1229.w", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1642->g_1258[i], "p_1642->g_1258[i]", print_hash_value);

    }
    transparent_crc(p_1642->g_1291.x, "p_1642->g_1291.x", print_hash_value);
    transparent_crc(p_1642->g_1291.y, "p_1642->g_1291.y", print_hash_value);
    transparent_crc(p_1642->g_1306.x, "p_1642->g_1306.x", print_hash_value);
    transparent_crc(p_1642->g_1306.y, "p_1642->g_1306.y", print_hash_value);
    transparent_crc(p_1642->g_1341.s0, "p_1642->g_1341.s0", print_hash_value);
    transparent_crc(p_1642->g_1341.s1, "p_1642->g_1341.s1", print_hash_value);
    transparent_crc(p_1642->g_1341.s2, "p_1642->g_1341.s2", print_hash_value);
    transparent_crc(p_1642->g_1341.s3, "p_1642->g_1341.s3", print_hash_value);
    transparent_crc(p_1642->g_1341.s4, "p_1642->g_1341.s4", print_hash_value);
    transparent_crc(p_1642->g_1341.s5, "p_1642->g_1341.s5", print_hash_value);
    transparent_crc(p_1642->g_1341.s6, "p_1642->g_1341.s6", print_hash_value);
    transparent_crc(p_1642->g_1341.s7, "p_1642->g_1341.s7", print_hash_value);
    transparent_crc(p_1642->g_1341.s8, "p_1642->g_1341.s8", print_hash_value);
    transparent_crc(p_1642->g_1341.s9, "p_1642->g_1341.s9", print_hash_value);
    transparent_crc(p_1642->g_1341.sa, "p_1642->g_1341.sa", print_hash_value);
    transparent_crc(p_1642->g_1341.sb, "p_1642->g_1341.sb", print_hash_value);
    transparent_crc(p_1642->g_1341.sc, "p_1642->g_1341.sc", print_hash_value);
    transparent_crc(p_1642->g_1341.sd, "p_1642->g_1341.sd", print_hash_value);
    transparent_crc(p_1642->g_1341.se, "p_1642->g_1341.se", print_hash_value);
    transparent_crc(p_1642->g_1341.sf, "p_1642->g_1341.sf", print_hash_value);
    transparent_crc(p_1642->g_1399.s0, "p_1642->g_1399.s0", print_hash_value);
    transparent_crc(p_1642->g_1399.s1, "p_1642->g_1399.s1", print_hash_value);
    transparent_crc(p_1642->g_1399.s2, "p_1642->g_1399.s2", print_hash_value);
    transparent_crc(p_1642->g_1399.s3, "p_1642->g_1399.s3", print_hash_value);
    transparent_crc(p_1642->g_1399.s4, "p_1642->g_1399.s4", print_hash_value);
    transparent_crc(p_1642->g_1399.s5, "p_1642->g_1399.s5", print_hash_value);
    transparent_crc(p_1642->g_1399.s6, "p_1642->g_1399.s6", print_hash_value);
    transparent_crc(p_1642->g_1399.s7, "p_1642->g_1399.s7", print_hash_value);
    transparent_crc(p_1642->g_1399.s8, "p_1642->g_1399.s8", print_hash_value);
    transparent_crc(p_1642->g_1399.s9, "p_1642->g_1399.s9", print_hash_value);
    transparent_crc(p_1642->g_1399.sa, "p_1642->g_1399.sa", print_hash_value);
    transparent_crc(p_1642->g_1399.sb, "p_1642->g_1399.sb", print_hash_value);
    transparent_crc(p_1642->g_1399.sc, "p_1642->g_1399.sc", print_hash_value);
    transparent_crc(p_1642->g_1399.sd, "p_1642->g_1399.sd", print_hash_value);
    transparent_crc(p_1642->g_1399.se, "p_1642->g_1399.se", print_hash_value);
    transparent_crc(p_1642->g_1399.sf, "p_1642->g_1399.sf", print_hash_value);
    transparent_crc(p_1642->g_1400.x, "p_1642->g_1400.x", print_hash_value);
    transparent_crc(p_1642->g_1400.y, "p_1642->g_1400.y", print_hash_value);
    transparent_crc(p_1642->g_1413.x, "p_1642->g_1413.x", print_hash_value);
    transparent_crc(p_1642->g_1413.y, "p_1642->g_1413.y", print_hash_value);
    transparent_crc(p_1642->g_1413.z, "p_1642->g_1413.z", print_hash_value);
    transparent_crc(p_1642->g_1413.w, "p_1642->g_1413.w", print_hash_value);
    transparent_crc(p_1642->g_1454.s0, "p_1642->g_1454.s0", print_hash_value);
    transparent_crc(p_1642->g_1454.s1, "p_1642->g_1454.s1", print_hash_value);
    transparent_crc(p_1642->g_1454.s2, "p_1642->g_1454.s2", print_hash_value);
    transparent_crc(p_1642->g_1454.s3, "p_1642->g_1454.s3", print_hash_value);
    transparent_crc(p_1642->g_1454.s4, "p_1642->g_1454.s4", print_hash_value);
    transparent_crc(p_1642->g_1454.s5, "p_1642->g_1454.s5", print_hash_value);
    transparent_crc(p_1642->g_1454.s6, "p_1642->g_1454.s6", print_hash_value);
    transparent_crc(p_1642->g_1454.s7, "p_1642->g_1454.s7", print_hash_value);
    transparent_crc(p_1642->g_1454.s8, "p_1642->g_1454.s8", print_hash_value);
    transparent_crc(p_1642->g_1454.s9, "p_1642->g_1454.s9", print_hash_value);
    transparent_crc(p_1642->g_1454.sa, "p_1642->g_1454.sa", print_hash_value);
    transparent_crc(p_1642->g_1454.sb, "p_1642->g_1454.sb", print_hash_value);
    transparent_crc(p_1642->g_1454.sc, "p_1642->g_1454.sc", print_hash_value);
    transparent_crc(p_1642->g_1454.sd, "p_1642->g_1454.sd", print_hash_value);
    transparent_crc(p_1642->g_1454.se, "p_1642->g_1454.se", print_hash_value);
    transparent_crc(p_1642->g_1454.sf, "p_1642->g_1454.sf", print_hash_value);
    transparent_crc(p_1642->g_1461.x, "p_1642->g_1461.x", print_hash_value);
    transparent_crc(p_1642->g_1461.y, "p_1642->g_1461.y", print_hash_value);
    transparent_crc(p_1642->g_1465, "p_1642->g_1465", print_hash_value);
    transparent_crc(p_1642->g_1527.s0, "p_1642->g_1527.s0", print_hash_value);
    transparent_crc(p_1642->g_1527.s1, "p_1642->g_1527.s1", print_hash_value);
    transparent_crc(p_1642->g_1527.s2, "p_1642->g_1527.s2", print_hash_value);
    transparent_crc(p_1642->g_1527.s3, "p_1642->g_1527.s3", print_hash_value);
    transparent_crc(p_1642->g_1527.s4, "p_1642->g_1527.s4", print_hash_value);
    transparent_crc(p_1642->g_1527.s5, "p_1642->g_1527.s5", print_hash_value);
    transparent_crc(p_1642->g_1527.s6, "p_1642->g_1527.s6", print_hash_value);
    transparent_crc(p_1642->g_1527.s7, "p_1642->g_1527.s7", print_hash_value);
    transparent_crc(p_1642->g_1529.s0, "p_1642->g_1529.s0", print_hash_value);
    transparent_crc(p_1642->g_1529.s1, "p_1642->g_1529.s1", print_hash_value);
    transparent_crc(p_1642->g_1529.s2, "p_1642->g_1529.s2", print_hash_value);
    transparent_crc(p_1642->g_1529.s3, "p_1642->g_1529.s3", print_hash_value);
    transparent_crc(p_1642->g_1529.s4, "p_1642->g_1529.s4", print_hash_value);
    transparent_crc(p_1642->g_1529.s5, "p_1642->g_1529.s5", print_hash_value);
    transparent_crc(p_1642->g_1529.s6, "p_1642->g_1529.s6", print_hash_value);
    transparent_crc(p_1642->g_1529.s7, "p_1642->g_1529.s7", print_hash_value);
    transparent_crc(p_1642->g_1542.x, "p_1642->g_1542.x", print_hash_value);
    transparent_crc(p_1642->g_1542.y, "p_1642->g_1542.y", print_hash_value);
    transparent_crc(p_1642->g_1542.z, "p_1642->g_1542.z", print_hash_value);
    transparent_crc(p_1642->g_1542.w, "p_1642->g_1542.w", print_hash_value);
    transparent_crc(p_1642->g_1578.s0, "p_1642->g_1578.s0", print_hash_value);
    transparent_crc(p_1642->g_1578.s1, "p_1642->g_1578.s1", print_hash_value);
    transparent_crc(p_1642->g_1578.s2, "p_1642->g_1578.s2", print_hash_value);
    transparent_crc(p_1642->g_1578.s3, "p_1642->g_1578.s3", print_hash_value);
    transparent_crc(p_1642->g_1578.s4, "p_1642->g_1578.s4", print_hash_value);
    transparent_crc(p_1642->g_1578.s5, "p_1642->g_1578.s5", print_hash_value);
    transparent_crc(p_1642->g_1578.s6, "p_1642->g_1578.s6", print_hash_value);
    transparent_crc(p_1642->g_1578.s7, "p_1642->g_1578.s7", print_hash_value);
    transparent_crc(p_1642->g_1581.s0, "p_1642->g_1581.s0", print_hash_value);
    transparent_crc(p_1642->g_1581.s1, "p_1642->g_1581.s1", print_hash_value);
    transparent_crc(p_1642->g_1581.s2, "p_1642->g_1581.s2", print_hash_value);
    transparent_crc(p_1642->g_1581.s3, "p_1642->g_1581.s3", print_hash_value);
    transparent_crc(p_1642->g_1581.s4, "p_1642->g_1581.s4", print_hash_value);
    transparent_crc(p_1642->g_1581.s5, "p_1642->g_1581.s5", print_hash_value);
    transparent_crc(p_1642->g_1581.s6, "p_1642->g_1581.s6", print_hash_value);
    transparent_crc(p_1642->g_1581.s7, "p_1642->g_1581.s7", print_hash_value);
    transparent_crc(p_1642->g_1618.s0, "p_1642->g_1618.s0", print_hash_value);
    transparent_crc(p_1642->g_1618.s1, "p_1642->g_1618.s1", print_hash_value);
    transparent_crc(p_1642->g_1618.s2, "p_1642->g_1618.s2", print_hash_value);
    transparent_crc(p_1642->g_1618.s3, "p_1642->g_1618.s3", print_hash_value);
    transparent_crc(p_1642->g_1618.s4, "p_1642->g_1618.s4", print_hash_value);
    transparent_crc(p_1642->g_1618.s5, "p_1642->g_1618.s5", print_hash_value);
    transparent_crc(p_1642->g_1618.s6, "p_1642->g_1618.s6", print_hash_value);
    transparent_crc(p_1642->g_1618.s7, "p_1642->g_1618.s7", print_hash_value);
    transparent_crc(p_1642->g_1618.s8, "p_1642->g_1618.s8", print_hash_value);
    transparent_crc(p_1642->g_1618.s9, "p_1642->g_1618.s9", print_hash_value);
    transparent_crc(p_1642->g_1618.sa, "p_1642->g_1618.sa", print_hash_value);
    transparent_crc(p_1642->g_1618.sb, "p_1642->g_1618.sb", print_hash_value);
    transparent_crc(p_1642->g_1618.sc, "p_1642->g_1618.sc", print_hash_value);
    transparent_crc(p_1642->g_1618.sd, "p_1642->g_1618.sd", print_hash_value);
    transparent_crc(p_1642->g_1618.se, "p_1642->g_1618.se", print_hash_value);
    transparent_crc(p_1642->g_1618.sf, "p_1642->g_1618.sf", print_hash_value);
    transparent_crc(p_1642->g_1621.s0, "p_1642->g_1621.s0", print_hash_value);
    transparent_crc(p_1642->g_1621.s1, "p_1642->g_1621.s1", print_hash_value);
    transparent_crc(p_1642->g_1621.s2, "p_1642->g_1621.s2", print_hash_value);
    transparent_crc(p_1642->g_1621.s3, "p_1642->g_1621.s3", print_hash_value);
    transparent_crc(p_1642->g_1621.s4, "p_1642->g_1621.s4", print_hash_value);
    transparent_crc(p_1642->g_1621.s5, "p_1642->g_1621.s5", print_hash_value);
    transparent_crc(p_1642->g_1621.s6, "p_1642->g_1621.s6", print_hash_value);
    transparent_crc(p_1642->g_1621.s7, "p_1642->g_1621.s7", print_hash_value);
    transparent_crc(p_1642->g_1621.s8, "p_1642->g_1621.s8", print_hash_value);
    transparent_crc(p_1642->g_1621.s9, "p_1642->g_1621.s9", print_hash_value);
    transparent_crc(p_1642->g_1621.sa, "p_1642->g_1621.sa", print_hash_value);
    transparent_crc(p_1642->g_1621.sb, "p_1642->g_1621.sb", print_hash_value);
    transparent_crc(p_1642->g_1621.sc, "p_1642->g_1621.sc", print_hash_value);
    transparent_crc(p_1642->g_1621.sd, "p_1642->g_1621.sd", print_hash_value);
    transparent_crc(p_1642->g_1621.se, "p_1642->g_1621.se", print_hash_value);
    transparent_crc(p_1642->g_1621.sf, "p_1642->g_1621.sf", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
