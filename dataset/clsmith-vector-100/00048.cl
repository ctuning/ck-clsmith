// ---fake_divergence -g 3017,1,2 -l 7,1,1
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


// Seed: 48

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   uint32_t  f0;
   uint8_t  f1;
   volatile int32_t  f2;
   uint32_t  f3;
   volatile uint8_t  f4;
};

struct S1 {
    volatile uint32_t g_8;
    int8_t g_12;
    VECTOR(int64_t, 16) g_72;
    VECTOR(int64_t, 16) g_73;
    VECTOR(int32_t, 8) g_78;
    VECTOR(uint16_t, 8) g_82;
    VECTOR(uint8_t, 8) g_89;
    VECTOR(uint8_t, 2) g_90;
    VECTOR(uint16_t, 2) g_94;
    int8_t g_110;
    int64_t g_113;
    int64_t *g_119[8];
    VECTOR(uint16_t, 4) g_125;
    int32_t g_135;
    uint64_t g_151;
    VECTOR(int32_t, 2) g_156;
    VECTOR(uint64_t, 2) g_167;
    VECTOR(uint64_t, 4) g_188;
    VECTOR(uint64_t, 8) g_189;
    VECTOR(uint64_t, 16) g_197;
    VECTOR(int64_t, 8) g_200;
    union U0 g_223[9];
    VECTOR(uint32_t, 4) g_230;
    VECTOR(uint8_t, 16) g_241;
    VECTOR(uint8_t, 16) g_247;
    VECTOR(uint8_t, 8) g_248;
    VECTOR(uint8_t, 8) g_249;
    int64_t **g_265;
    uint64_t g_281;
    union U0 g_317;
    union U0 g_321;
    union U0 g_322;
    union U0 g_323[3][3][6];
    union U0 g_324;
    union U0 g_325[5][8];
    union U0 g_326;
    union U0 g_327;
    union U0 g_328[1][2];
    union U0 g_329;
    union U0 g_330;
    union U0 g_331;
    union U0 g_332;
    union U0 g_333;
    union U0 g_334;
    union U0 g_335;
    union U0 g_336;
    union U0 g_337;
    union U0 g_338[8];
    union U0 g_339;
    union U0 g_340;
    union U0 * volatile g_320[4][5][3];
    union U0 * volatile *g_319;
    VECTOR(int32_t, 2) g_343;
    volatile uint8_t g_362;
    volatile uint8_t *g_361;
    int8_t g_365;
    uint8_t *g_398;
    uint8_t **g_397;
    VECTOR(int32_t, 8) g_402;
    VECTOR(uint8_t, 2) g_404;
    VECTOR(uint16_t, 8) g_407;
    VECTOR(uint32_t, 16) g_413;
    int32_t g_429;
    int8_t *g_432;
    int8_t **g_431;
    int8_t g_475;
    uint32_t g_517[7];
    VECTOR(int32_t, 8) g_520;
    VECTOR(int32_t, 8) g_521;
    VECTOR(uint16_t, 2) g_533;
    VECTOR(uint16_t, 16) g_535;
    int32_t *g_539;
    VECTOR(int32_t, 2) g_561;
    VECTOR(uint8_t, 4) g_572;
    VECTOR(uint8_t, 16) g_581;
    VECTOR(uint8_t, 4) g_582;
    VECTOR(uint8_t, 2) g_583;
    VECTOR(int32_t, 16) g_607;
    VECTOR(int32_t, 2) g_612;
    int16_t g_645;
    VECTOR(uint8_t, 8) g_653;
    volatile int16_t g_665;
    volatile int16_t *g_664;
    int32_t *g_704;
    union U0 g_736;
    VECTOR(int8_t, 4) g_752;
    VECTOR(uint16_t, 4) g_758;
    uint8_t g_769;
    int64_t g_808;
    VECTOR(uint32_t, 4) g_815;
    union U0 g_829;
    union U0 *g_828;
    uint16_t *g_853[10][2][10];
    uint16_t **g_852;
    uint32_t g_952;
    uint32_t g_955[2];
    VECTOR(uint64_t, 4) g_996;
    VECTOR(int64_t, 2) g_1043;
    VECTOR(int64_t, 8) g_1046;
    VECTOR(uint16_t, 2) g_1069;
    union U0 g_1073[6];
    VECTOR(int8_t, 2) g_1173;
    VECTOR(int8_t, 2) g_1175;
    VECTOR(uint16_t, 16) g_1178;
    VECTOR(uint16_t, 4) g_1179;
    VECTOR(uint16_t, 2) g_1183;
    VECTOR(uint16_t, 8) g_1184;
    VECTOR(int8_t, 4) g_1211;
    VECTOR(uint8_t, 4) g_1216;
    VECTOR(uint32_t, 4) g_1225;
    VECTOR(uint32_t, 4) g_1230;
    VECTOR(uint32_t, 2) g_1237;
    VECTOR(uint32_t, 16) g_1241;
    VECTOR(int32_t, 2) g_1250;
    union U0 g_1287;
    union U0 g_1295;
    VECTOR(int8_t, 8) g_1311;
    VECTOR(int8_t, 16) g_1314;
    VECTOR(int8_t, 8) g_1315;
    VECTOR(int8_t, 8) g_1316;
    int32_t g_1325[7][1][10];
    uint32_t g_1336;
    VECTOR(uint64_t, 2) g_1349;
    uint64_t *g_1369;
    VECTOR(uint32_t, 2) g_1372;
    VECTOR(int8_t, 8) g_1392;
    VECTOR(int8_t, 4) g_1393;
    VECTOR(uint16_t, 16) g_1429;
    VECTOR(uint16_t, 2) g_1494;
    VECTOR(int32_t, 2) g_1515;
    VECTOR(int32_t, 8) g_1517;
    VECTOR(int32_t, 4) g_1519;
    VECTOR(int16_t, 2) g_1525;
    volatile int32_t *g_1570;
    volatile int32_t **g_1569;
    volatile uint8_t * volatile *g_1581;
    VECTOR(uint16_t, 8) g_1611;
    volatile VECTOR(uint16_t, 2) g_1616;
    uint32_t *g_1626[6];
    VECTOR(int8_t, 8) g_1629;
    VECTOR(int8_t, 2) g_1631;
    volatile VECTOR(int32_t, 16) g_1646;
    uint32_t g_1654;
    int32_t * volatile g_1704;
    int32_t * volatile g_1707;
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
uint16_t  func_1(struct S1 * p_1712);
int64_t  func_2(int32_t  p_3, int32_t  p_4, int8_t  p_5, struct S1 * p_1712);
uint16_t  func_9(int32_t  p_10, int8_t  p_11, struct S1 * p_1712);
uint32_t  func_22(uint32_t  p_23, struct S1 * p_1712);
uint64_t  func_24(int32_t  p_25, uint8_t  p_26, uint8_t  p_27, struct S1 * p_1712);
uint8_t  func_28(uint64_t  p_29, int64_t  p_30, uint64_t  p_31, uint32_t  p_32, uint8_t  p_33, struct S1 * p_1712);
int64_t  func_38(uint8_t  p_39, int64_t  p_40, int32_t  p_41, int64_t  p_42, uint16_t  p_43, struct S1 * p_1712);
int32_t  func_45(uint16_t  p_46, uint8_t  p_47, uint16_t  p_48, uint64_t  p_49, struct S1 * p_1712);
uint8_t  func_52(uint8_t  p_53, uint32_t  p_54, int8_t  p_55, uint32_t  p_56, struct S1 * p_1712);
VECTOR(uint16_t, 2)  func_63(int32_t  p_64, struct S1 * p_1712);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1712->g_8 p_1712->g_12 p_1712->g_72 p_1712->g_73 p_1712->g_78 p_1712->g_82 p_1712->g_89 p_1712->g_90 p_1712->g_94 p_1712->g_113 p_1712->g_110 p_1712->g_125 p_1712->g_151 p_1712->g_156 p_1712->g_167 p_1712->g_188 p_1712->g_189 p_1712->g_197 p_1712->g_200 p_1712->g_230 p_1712->g_241 p_1712->g_247 p_1712->g_248 p_1712->g_249 p_1712->g_281 p_1712->g_319 p_1712->g_339.f0 p_1712->g_135 p_1712->g_429 p_1712->g_336.f1 p_1712->g_331.f1 p_1712->g_334.f0 p_1712->g_431 p_1712->g_432 p_1712->g_365 p_1712->g_340.f0 p_1712->g_321.f1 p_1712->g_339.f3 p_1712->g_517 p_1712->g_561 p_1712->g_535 p_1712->g_539 p_1712->g_645 p_1712->g_664 p_1712->g_581 p_1712->g_704 p_1712->g_265 p_1712->g_119 p_1712->g_612 p_1712->g_407 p_1712->g_769 p_1712->g_653 p_1712->g_402 p_1712->g_397 p_1712->g_398 p_1712->g_323.f0 p_1712->g_852 p_1712->g_520 p_1712->g_521 p_1712->g_475 p_1712->g_533 p_1712->g_572 p_1712->g_582 p_1712->g_583 p_1712->g_607 p_1712->g_752 p_1712->g_758 p_1712->g_325.f0 p_1712->g_815 p_1712->g_828 p_1712->g_413 p_1712->g_334.f3 p_1712->g_324.f3 p_1712->g_335.f3 p_1712->g_322.f3 p_1712->g_331.f0 p_1712->g_955 p_1712->g_1043 p_1712->g_1046 p_1712->g_1069 p_1712->g_333.f0 p_1712->g_328.f0 p_1712->g_952 p_1712->g_829.f1 p_1712->g_321.f0 p_1712->g_322.f0 p_1712->g_1211 p_1712->g_1216 p_1712->g_332.f0 p_1712->g_1183 p_1712->g_1225 p_1712->g_1230 p_1712->g_1237 p_1712->g_1241 p_1712->g_1250 p_1712->g_1311 p_1712->g_1314 p_1712->g_1315 p_1712->g_1316 p_1712->g_1325 p_1712->g_1336 p_1712->g_1349 p_1712->g_1372 p_1712->g_1392 p_1712->g_1393 p_1712->g_1369 p_1712->g_1494 p_1712->g_343 p_1712->g_329.f1 p_1712->g_829.f3 p_1712->g_736.f0 p_1712->g_1611 p_1712->g_1616 p_1712->g_1629 p_1712->g_1631 p_1712->g_1184 p_1712->g_1646 p_1712->g_1581 p_1712->g_361 p_1712->g_362 p_1712->g_1517
 * writes: p_1712->g_110 p_1712->g_113 p_1712->g_119 p_1712->g_135 p_1712->g_151 p_1712->g_94 p_1712->g_156 p_1712->g_265 p_1712->g_281 p_1712->g_317.f3 p_1712->g_431 p_1712->g_336.f1 p_1712->g_331.f1 p_1712->g_365 p_1712->g_402 p_1712->g_321.f1 p_1712->g_339.f3 p_1712->g_517 p_1712->g_539 p_1712->g_645 p_1712->g_475 p_1712->g_704 p_1712->g_429 p_1712->g_197 p_1712->g_535 p_1712->g_752 p_1712->g_769 p_1712->g_338.f3 p_1712->g_82 p_1712->g_852 p_1712->g_407 p_1712->g_533 p_1712->g_808 p_1712->g_758 p_1712->g_334.f3 p_1712->g_324.f3 p_1712->g_607 p_1712->g_521 p_1712->g_335.f3 p_1712->g_322.f3 p_1712->g_331.f0 p_1712->g_330.f3 p_1712->g_167 p_1712->g_323.f3 p_1712->g_828 p_1712->g_829.f1 p_1712->g_223.f3 p_1712->g_321.f0 p_1712->g_322.f0 p_1712->g_324.f1 p_1712->g_612 p_1712->g_325.f1 p_1712->g_1336 p_1712->g_1369 p_1712->g_1287.f3 p_1712->g_337.f0 p_1712->g_1325 p_1712->g_329.f1 p_1712->g_829.f3 p_1712->g_996 p_1712->g_328.f1 p_1712->g_1626 p_1712->g_1654 p_1712->g_89 p_1712->g_581 p_1712->g_320 p_1712->g_1517
 */
uint16_t  func_1(struct S1 * p_1712)
{ /* block id: 4 */
    int64_t l_21 = 0x5D7770B168F928D9L;
    int32_t l_44 = 0x3E41B0CEL;
    int32_t *l_1082 = (void*)0;
    int32_t *l_1083 = (void*)0;
    int32_t *l_1084 = (void*)0;
    uint32_t l_1085 = 4294967294UL;
    int16_t *l_1548 = (void*)0;
    int16_t *l_1549 = &p_1712->g_645;
    int32_t *l_1550 = &p_1712->g_1325[6][0][3];
    uint16_t *l_1590 = (void*)0;
    uint16_t *l_1591 = (void*)0;
    uint16_t *l_1592 = (void*)0;
    uint16_t *l_1593 = (void*)0;
    uint16_t *l_1594 = (void*)0;
    uint16_t *l_1595 = (void*)0;
    uint16_t *l_1596 = (void*)0;
    uint16_t *l_1597 = (void*)0;
    uint16_t *l_1598 = (void*)0;
    uint16_t *l_1599 = (void*)0;
    uint16_t *l_1600 = (void*)0;
    uint16_t *l_1601[5];
    uint16_t ***l_1698 = (void*)0;
    uint16_t ***l_1699 = (void*)0;
    uint16_t **l_1700 = &p_1712->g_853[5][0][5];
    int32_t ***l_1701 = (void*)0;
    int32_t *l_1702 = (void*)0;
    int32_t *l_1703 = (void*)0;
    int32_t *l_1705 = (void*)0;
    int32_t *l_1706 = (void*)0;
    int32_t l_1711 = 0x0D654BB3L;
    int i;
    for (i = 0; i < 5; i++)
        l_1601[i] = (void*)0;
    (*l_1550) = (func_2((safe_mod_func_uint16_t_u_u(((*l_1550) = (p_1712->g_8 <= func_9(((*l_1550) = (p_1712->g_12 != (safe_lshift_func_int16_t_s_u(((*l_1549) = ((GROUP_DIVERGE(0, 1) >= (safe_div_func_uint32_t_u_u(9UL, ((safe_lshift_func_int16_t_s_s((safe_lshift_func_uint8_t_u_u(l_21, (p_1712->g_12 <= func_22(((GROUP_DIVERGE(1, 1) || func_24(l_21, l_21, func_28((p_1712->g_12 < (safe_mod_func_int32_t_s_s(((((VECTOR(int32_t, 4))((((l_44 = (safe_div_func_int64_t_s_s(func_38(p_1712->g_12, p_1712->g_12, l_21, l_44, p_1712->g_12, p_1712), p_1712->g_328[0][0].f0))) == p_1712->g_581.sf) || 0x6BL), ((VECTOR(int32_t, 2))((-1L))), 0x184C35D0L)).y > 0x5DD441D1L) != p_1712->g_952), p_1712->g_241.s2))), l_1085, p_1712->g_653.s6, p_1712->g_72.s5, l_21, p_1712), p_1712)) , 0xD37B2324L), p_1712)))), 6)) , 0x62475EB0L)))) < p_1712->g_1316.s5)), GROUP_DIVERGE(0, 1))))), p_1712->g_343.x, p_1712))), p_1712->g_815.z)), p_1712->g_736.f0, p_1712->g_1183.y, p_1712) ^ p_1712->g_200.s6);
    p_1712->g_1517.s7 ^= (safe_div_func_int8_t_s_s(((*p_1712->g_432) ^= ((((*l_1550) && (safe_div_func_uint32_t_u_u((((VECTOR(int16_t, 2))((((VECTOR(int16_t, 4))((((VECTOR(int16_t, 8))(min(((VECTOR(int16_t, 4))(0x2F0EL, (safe_add_func_uint8_t_u_u(((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 2))(0UL, 0xBBL)) << ((VECTOR(uint8_t, 2))(max(((VECTOR(uint8_t, 4))(0x8BL, ((VECTOR(uint8_t, 2))(0x00L, 0xAAL)), 0xF3L)).hi, (uint8_t)(safe_lshift_func_int16_t_s_s(((((safe_rshift_func_uint16_t_u_u((safe_sub_func_int32_t_s_s((safe_div_func_uint16_t_u_u(65533UL, ((safe_rshift_func_uint8_t_u_s(((*l_1550) , (p_1712->g_581.sf , (*l_1550))), (safe_mod_func_uint64_t_u_u(((*p_1712->g_539) == (safe_mul_func_int16_t_s_s((*l_1550), ((safe_unary_minus_func_uint32_t_u(0xE8B4A0CBL)) > (safe_rshift_func_int8_t_s_s(((l_1700 = &l_1599) == &p_1712->g_853[5][0][5]), 0)))))), (*l_1550))))) , 0x23C1L))), 0UL)), 12)) , 5UL) | 0x578CL) && 18446744073709551615UL), (*l_1550))))))))) + ((VECTOR(uint8_t, 2))(0xE9L))))).even, FAKE_DIVERGE(p_1712->group_2_offset, get_group_id(2), 10))), 0x7E66L, (-1L))).xyywyyzw, ((VECTOR(int16_t, 8))(0x60CAL))))).even && ((VECTOR(int16_t, 4))(9L))))).odd && ((VECTOR(int16_t, 2))(1L))))).even <= (*l_1550)), 3L))) , (void*)0) == l_1701)), 255UL));
    for (p_1712->g_645 = 0; (p_1712->g_645 < (-12)); p_1712->g_645 = safe_sub_func_int8_t_s_s(p_1712->g_645, 5))
    { /* block id: 521 */
        uint32_t l_1710 = 0xBA0A3CC7L;
        p_1712->g_539 = &p_1712->g_1325[6][0][7];
        return l_1710;
    }
    return l_1711;
}


/* ------------------------------------------ */
/* 
 * reads : p_1712->g_1611 p_1712->g_1616 p_1712->g_1629 p_1712->g_1631 p_1712->g_432 p_1712->g_365 p_1712->g_1184 p_1712->g_539 p_1712->g_1646 p_1712->g_1581 p_1712->g_361 p_1712->g_362 p_1712->g_89 p_1712->g_581 p_1712->g_429 p_1712->g_319
 * writes: p_1712->g_1626 p_1712->g_429 p_1712->g_1654 p_1712->g_89 p_1712->g_581 p_1712->g_828 p_1712->g_320
 */
int64_t  func_2(int32_t  p_3, int32_t  p_4, int8_t  p_5, struct S1 * p_1712)
{ /* block id: 501 */
    uint16_t l_1604 = 3UL;
    int32_t l_1605[3];
    uint16_t *l_1606 = (void*)0;
    uint16_t *l_1607 = (void*)0;
    int32_t l_1608 = 0x4A5EB7F8L;
    VECTOR(uint16_t, 16) l_1619 = (VECTOR(uint16_t, 16))(0x59DDL, (VECTOR(uint16_t, 4))(0x59DDL, (VECTOR(uint16_t, 2))(0x59DDL, 0UL), 0UL), 0UL, 0x59DDL, 0UL, (VECTOR(uint16_t, 2))(0x59DDL, 0UL), (VECTOR(uint16_t, 2))(0x59DDL, 0UL), 0x59DDL, 0UL, 0x59DDL, 0UL);
    uint32_t *l_1624[5][6] = {{&p_1712->g_1336,&p_1712->g_1336,(void*)0,&p_1712->g_1336,&p_1712->g_1336,&p_1712->g_1336},{&p_1712->g_1336,&p_1712->g_1336,(void*)0,&p_1712->g_1336,&p_1712->g_1336,&p_1712->g_1336},{&p_1712->g_1336,&p_1712->g_1336,(void*)0,&p_1712->g_1336,&p_1712->g_1336,&p_1712->g_1336},{&p_1712->g_1336,&p_1712->g_1336,(void*)0,&p_1712->g_1336,&p_1712->g_1336,&p_1712->g_1336},{&p_1712->g_1336,&p_1712->g_1336,(void*)0,&p_1712->g_1336,&p_1712->g_1336,&p_1712->g_1336}};
    uint32_t **l_1625[1][1];
    VECTOR(int8_t, 4) l_1630 = (VECTOR(int8_t, 4))(0x16L, (VECTOR(int8_t, 2))(0x16L, (-2L)), (-2L));
    uint8_t *l_1638 = (void*)0;
    int32_t l_1639 = 0L;
    uint32_t l_1640[9];
    int32_t *l_1641[1][6] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
    int8_t l_1642 = (-3L);
    uint32_t l_1643 = 4294967295UL;
    uint16_t *l_1653[6][1][10] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
    uint8_t *l_1657 = (void*)0;
    uint8_t *l_1658 = &p_1712->g_736.f1;
    uint8_t *l_1659 = &p_1712->g_333.f1;
    uint8_t *l_1660 = &p_1712->g_334.f1;
    uint8_t *l_1661 = (void*)0;
    uint8_t *l_1662 = &p_1712->g_333.f1;
    uint8_t *l_1663 = (void*)0;
    uint8_t *l_1664[7];
    int32_t **l_1665 = (void*)0;
    int32_t ***l_1666 = (void*)0;
    int32_t ***l_1667 = (void*)0;
    int32_t ***l_1668 = &l_1665;
    union U0 *l_1669 = &p_1712->g_317;
    union U0 **l_1670 = &p_1712->g_828;
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_1605[i] = 0x46EDFDC9L;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 1; j++)
            l_1625[i][j] = (void*)0;
    }
    for (i = 0; i < 9; i++)
        l_1640[i] = 9UL;
    for (i = 0; i < 7; i++)
        l_1664[i] = (void*)0;
    (*p_1712->g_539) = ((safe_mul_func_uint16_t_u_u(((l_1604 != (((l_1608 &= l_1605[2]) ^ ((safe_sub_func_uint8_t_u_u((((VECTOR(uint32_t, 16))(upsample(((VECTOR(uint16_t, 4))(p_1712->g_1611.s0007)).yywzwyzxxwyzzzyw, ((VECTOR(uint16_t, 2))(sub_sat(((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 4))((-((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 8))(p_1712->g_1616.yyxxyyxy)).s3712354037234014 + ((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 4))(mad_hi(((VECTOR(uint16_t, 8))(mul_hi(((VECTOR(uint16_t, 8))(l_1619.s05aa594f)), ((VECTOR(uint16_t, 2))(0xBA25L, 0UL)).yxxxxyyx))).even, ((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 2))(add_sat(((VECTOR(uint16_t, 16))(mad_hi(((VECTOR(uint16_t, 8))(0x8B52L, (safe_rshift_func_uint16_t_u_s((GROUP_DIVERGE(1, 1) >= ((p_1712->g_1626[2] = l_1624[0][3]) == &p_1712->g_1336)), (safe_rshift_func_int16_t_s_u((&p_1712->g_1336 == &p_1712->g_1336), (((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))((((VECTOR(int8_t, 4))(p_1712->g_1629.s3751)) < ((VECTOR(int8_t, 2))((((VECTOR(int8_t, 8))(l_1630.xwzyxwzx)).s00 && ((VECTOR(int8_t, 16))((((VECTOR(int8_t, 8))(0x36L, ((VECTOR(int8_t, 2))((((VECTOR(int8_t, 8))(7L, ((VECTOR(int8_t, 4))(p_1712->g_1631.yyxx)), (((*p_1712->g_432) , ((((((((l_1639 = (safe_mod_func_uint64_t_u_u((p_5 ^ (safe_lshift_func_uint16_t_u_s((safe_add_func_int8_t_s_s((l_1638 == l_1638), 5UL)), 4))), p_5))) == l_1630.w) , &p_1712->g_828) != (void*)0) <= 9L) || p_3) && l_1604) < p_3)) < p_1712->g_1184.s4), 0x2EL, 0x09L)).s23 && ((VECTOR(int8_t, 2))(1L))))), ((VECTOR(int8_t, 4))(0x21L)), 0L)).s7272266042206604 >= ((VECTOR(int8_t, 16))(0x21L))))).sbc))).yxxx))), p_3, p_3, 5L, 1L)).s0 == l_1605[2]))))), ((VECTOR(uint16_t, 4))(0x2745L)), 0xFD0CL, 0x180FL)).s5371632251655423, ((VECTOR(uint16_t, 16))(0x4B5FL)), ((VECTOR(uint16_t, 16))(0UL))))).sd5, ((VECTOR(uint16_t, 2))(0x67C1L))))).yxyxxyyxxxyyyxxy - ((VECTOR(uint16_t, 16))(0xEBC5L))))).s1fee, ((VECTOR(uint16_t, 4))(1UL))))).even + ((VECTOR(uint16_t, 2))(0UL))))).xxyyxxxyxxyxyxyx))).s332a))).wzwxzzyxzyzyyyyw - ((VECTOR(uint16_t, 16))(65527UL))))).sa6, ((VECTOR(uint16_t, 2))(0x461CL))))).yyxxyxxyxyxyyyxy))).s4 || l_1640[0]), 4UL)) != 0x1446L)) ^ FAKE_DIVERGE(p_1712->local_2_offset, get_local_id(2), 10))) != 0x546F1D9DL), 1UL)) <= p_5);
    --l_1643;
    (*p_1712->g_539) ^= ((VECTOR(int32_t, 8))(rotate(((VECTOR(int32_t, 16))(safe_clamp_func(VECTOR(int32_t, 16),int32_t,((VECTOR(int32_t, 8))(p_1712->g_1646.s503e72a4)).s3605453647444213, (int32_t)p_4, (int32_t)(safe_sub_func_int16_t_s_s((((VECTOR(uint32_t, 2))(0xB9B2D4C2L, 0xCC0B5479L)).odd > ((((*l_1668) = ((safe_mul_func_uint8_t_u_u((**p_1712->g_1581), (p_1712->g_581.s1 &= ((p_1712->g_1654 = 0xBAF7L) | ((p_5 == (safe_rshift_func_uint16_t_u_s(p_4, 7))) <= (p_1712->g_89.s4 &= p_4)))))) , l_1665)) != &p_1712->g_1570) , (&p_3 == (void*)0))), 0xBDFAL))))).lo, ((VECTOR(int32_t, 8))((-1L)))))).s2;
    (*p_1712->g_319) = ((*l_1670) = l_1669);
    return p_4;
}


/* ------------------------------------------ */
/* 
 * reads : p_1712->g_329.f1 p_1712->g_829.f3 p_1712->g_188 p_1712->g_432 p_1712->g_365
 * writes: p_1712->g_329.f1 p_1712->g_829.f3 p_1712->g_996 p_1712->g_328.f1 p_1712->g_539
 */
uint16_t  func_9(int32_t  p_10, int8_t  p_11, struct S1 * p_1712)
{ /* block id: 477 */
    int32_t *l_1554 = (void*)0;
    int32_t **l_1555 = &l_1554;
    int64_t *l_1558 = (void*)0;
    VECTOR(int64_t, 16) l_1559 = (VECTOR(int64_t, 16))(7L, (VECTOR(int64_t, 4))(7L, (VECTOR(int64_t, 2))(7L, 0x06D9D14E0C2B4427L), 0x06D9D14E0C2B4427L), 0x06D9D14E0C2B4427L, 7L, 0x06D9D14E0C2B4427L, (VECTOR(int64_t, 2))(7L, 0x06D9D14E0C2B4427L), (VECTOR(int64_t, 2))(7L, 0x06D9D14E0C2B4427L), 7L, 0x06D9D14E0C2B4427L, 7L, 0x06D9D14E0C2B4427L);
    int i;
    for (p_1712->g_329.f1 = 0; (p_1712->g_329.f1 <= 45); ++p_1712->g_329.f1)
    { /* block id: 480 */
        int32_t *l_1553[1][1];
        int i, j;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 1; j++)
                l_1553[i][j] = &p_1712->g_1325[6][0][5];
        }
        p_10 = p_11;
        l_1554 = l_1553[0][0];
    }
    (*l_1555) = &p_1712->g_429;
    for (p_1712->g_829.f3 = 0; (p_1712->g_829.f3 > 40); p_1712->g_829.f3 = safe_add_func_int64_t_s_s(p_1712->g_829.f3, 8))
    { /* block id: 487 */
        int8_t ***l_1566 = &p_1712->g_431;
        uint8_t ***l_1580 = &p_1712->g_397;
        int16_t *l_1582 = (void*)0;
        int16_t *l_1583 = (void*)0;
        int16_t *l_1584 = &p_1712->g_645;
        int64_t l_1585 = 0x6AABC763B2F62B0CL;
        uint16_t *l_1586[7];
        uint64_t *l_1587[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        uint8_t *l_1588 = &p_1712->g_328[0][0].f1;
        int32_t l_1589 = 0x52C7FDE6L;
        int i;
        for (i = 0; i < 7; i++)
            l_1586[i] = (void*)0;
        l_1589 &= ((((void*)0 != l_1558) && ((((*l_1588) = (((p_1712->g_188.w || (p_1712->g_996.w = ((((VECTOR(int64_t, 16))(safe_clamp_func(VECTOR(int64_t, 16),VECTOR(int64_t, 16),((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(l_1559.s9b68)).x, 0x20481F4C2174BF6EL, 0x0ECA825DE3CD9A95L, ((((safe_mul_func_uint16_t_u_u(((VECTOR(uint16_t, 8))((safe_div_func_int16_t_s_s((safe_div_func_uint8_t_u_u(((void*)0 == l_1566), (safe_sub_func_int32_t_s_s((p_1712->g_1569 != ((safe_unary_minus_func_uint32_t_u((safe_mul_func_uint16_t_u_u(((*l_1554) = ((safe_sub_func_int8_t_s_s(((*p_1712->g_432) = (~(safe_add_func_uint32_t_u_u(p_1712->g_607.sa, (FAKE_DIVERGE(p_1712->global_0_offset, get_global_id(0), 10) >= (((((safe_sub_func_int16_t_s_s(((*l_1584) &= ((((*l_1580) = &p_1712->g_398) == p_1712->g_1581) ^ (**l_1555))), (**l_1555))) && 0x0C64A3E3L) || l_1585) >= 0x5836F232L) < l_1585)))))), 0x13L)) & l_1585)), p_10)))) , &p_1712->g_1570)), 0xCFC58916L)))), 1L)), ((VECTOR(uint16_t, 4))(65535UL)), ((VECTOR(uint16_t, 2))(2UL)), 0xD598L)).s4, p_1712->g_72.s4)) && p_10) , (void*)0) == (void*)0), ((VECTOR(int64_t, 4))(0L)))).s7571774321025172, ((VECTOR(int64_t, 16))(7L)), ((VECTOR(int64_t, 16))(9L))))).sf > 0x9BCB55A96FBFD93BL) || p_10))) , (*p_1712->g_432)) == (-1L))) >= 0UL) > l_1585)) == l_1585);
        (*l_1555) = &p_10;
    }
    p_1712->g_539 = ((*l_1555) = &p_1712->g_429);
    return p_10;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint32_t  func_22(uint32_t  p_23, struct S1 * p_1712)
{ /* block id: 473 */
    uint32_t l_1547 = 0x848B6755L;
    return l_1547;
}


/* ------------------------------------------ */
/* 
 * reads : p_1712->g_535 p_1712->g_429 p_1712->g_110 p_1712->g_156 p_1712->g_1211 p_1712->g_1216 p_1712->g_332.f0 p_1712->g_1183 p_1712->g_612 p_1712->g_1225 p_1712->g_1230 p_1712->g_1237 p_1712->g_1241 p_1712->g_1250 p_1712->g_432 p_1712->g_365 p_1712->g_533 p_1712->g_1046 p_1712->g_607 p_1712->g_1311 p_1712->g_1314 p_1712->g_1315 p_1712->g_1316 p_1712->g_1325 p_1712->g_1336 p_1712->g_135 p_1712->g_1349 p_1712->g_1372 p_1712->g_1392 p_1712->g_1393 p_1712->g_1369 p_1712->g_653 p_1712->g_1494 p_1712->g_829.f1 p_1712->g_402 p_1712->g_321.f0 p_1712->g_322.f0 p_1712->g_339.f3
 * writes: p_1712->g_704 p_1712->g_829.f1 p_1712->g_645 p_1712->g_223.f3 p_1712->g_429 p_1712->g_321.f0 p_1712->g_322.f0 p_1712->g_156 p_1712->g_339.f3 p_1712->g_324.f1 p_1712->g_612 p_1712->g_521 p_1712->g_113 p_1712->g_325.f1 p_1712->g_1336 p_1712->g_135 p_1712->g_281 p_1712->g_1369 p_1712->g_539 p_1712->g_331.f0 p_1712->g_1287.f3 p_1712->g_365 p_1712->g_337.f0
 */
uint64_t  func_24(int32_t  p_25, uint8_t  p_26, uint8_t  p_27, struct S1 * p_1712)
{ /* block id: 305 */
    int32_t l_1088 = 0x7917A7A3L;
    int32_t *l_1090 = &p_1712->g_429;
    uint32_t l_1098[6] = {0UL,0UL,0UL,0UL,0UL,0UL};
    VECTOR(int16_t, 4) l_1106 = (VECTOR(int16_t, 4))(0x1106L, (VECTOR(int16_t, 2))(0x1106L, 0x3A65L), 0x3A65L);
    VECTOR(int16_t, 16) l_1118 = (VECTOR(int16_t, 16))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x2C32L), 0x2C32L), 0x2C32L, (-1L), 0x2C32L, (VECTOR(int16_t, 2))((-1L), 0x2C32L), (VECTOR(int16_t, 2))((-1L), 0x2C32L), (-1L), 0x2C32L, (-1L), 0x2C32L);
    int32_t l_1138[10][2] = {{0x40605B69L,0x54DEA6A5L},{0x40605B69L,0x54DEA6A5L},{0x40605B69L,0x54DEA6A5L},{0x40605B69L,0x54DEA6A5L},{0x40605B69L,0x54DEA6A5L},{0x40605B69L,0x54DEA6A5L},{0x40605B69L,0x54DEA6A5L},{0x40605B69L,0x54DEA6A5L},{0x40605B69L,0x54DEA6A5L},{0x40605B69L,0x54DEA6A5L}};
    int64_t l_1145 = (-1L);
    VECTOR(int32_t, 2) l_1153 = (VECTOR(int32_t, 2))(0L, (-1L));
    uint16_t l_1197 = 0xBC5BL;
    uint32_t l_1198 = 1UL;
    VECTOR(uint64_t, 2) l_1210 = (VECTOR(uint64_t, 2))(0xB93059C2B7426E79L, 1UL);
    uint16_t **l_1224 = (void*)0;
    int16_t l_1253 = 1L;
    union U0 *l_1294 = &p_1712->g_1295;
    VECTOR(int8_t, 16) l_1313 = (VECTOR(int8_t, 16))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, (-7L)), (-7L)), (-7L), 1L, (-7L), (VECTOR(int8_t, 2))(1L, (-7L)), (VECTOR(int8_t, 2))(1L, (-7L)), 1L, (-7L), 1L, (-7L));
    VECTOR(int8_t, 16) l_1317 = (VECTOR(int8_t, 16))(0x6AL, (VECTOR(int8_t, 4))(0x6AL, (VECTOR(int8_t, 2))(0x6AL, (-1L)), (-1L)), (-1L), 0x6AL, (-1L), (VECTOR(int8_t, 2))(0x6AL, (-1L)), (VECTOR(int8_t, 2))(0x6AL, (-1L)), 0x6AL, (-1L), 0x6AL, (-1L));
    int16_t l_1324 = 0x6773L;
    VECTOR(int16_t, 2) l_1332 = (VECTOR(int16_t, 2))(0x74EDL, 0x3B09L);
    VECTOR(int64_t, 16) l_1402 = (VECTOR(int64_t, 16))((-5L), (VECTOR(int64_t, 4))((-5L), (VECTOR(int64_t, 2))((-5L), (-1L)), (-1L)), (-1L), (-5L), (-1L), (VECTOR(int64_t, 2))((-5L), (-1L)), (VECTOR(int64_t, 2))((-5L), (-1L)), (-5L), (-1L), (-5L), (-1L));
    uint64_t l_1404 = 0x7E6C80CEB5B1C504L;
    int32_t *l_1406 = &p_1712->g_1325[2][0][9];
    uint64_t l_1464 = 0xC9BE402A4EC45363L;
    VECTOR(uint16_t, 2) l_1495 = (VECTOR(uint16_t, 2))(1UL, 0x2503L);
    VECTOR(uint16_t, 4) l_1501 = (VECTOR(uint16_t, 4))(0x14C3L, (VECTOR(uint16_t, 2))(0x14C3L, 1UL), 1UL);
    uint32_t l_1510 = 1UL;
    VECTOR(int32_t, 2) l_1516 = (VECTOR(int32_t, 2))(0L, (-1L));
    VECTOR(int16_t, 2) l_1527 = (VECTOR(int16_t, 2))(6L, (-2L));
    VECTOR(int8_t, 8) l_1528 = (VECTOR(int8_t, 8))(6L, (VECTOR(int8_t, 4))(6L, (VECTOR(int8_t, 2))(6L, 0x23L), 0x23L), 0x23L, 6L, 0x23L);
    VECTOR(int8_t, 16) l_1529 = (VECTOR(int8_t, 16))(0x21L, (VECTOR(int8_t, 4))(0x21L, (VECTOR(int8_t, 2))(0x21L, 1L), 1L), 1L, 0x21L, 1L, (VECTOR(int8_t, 2))(0x21L, 1L), (VECTOR(int8_t, 2))(0x21L, 1L), 0x21L, 1L, 0x21L, 1L);
    int16_t l_1530 = 0x0E7EL;
    int i, j;
lbl_1208:
    if (l_1088)
    { /* block id: 306 */
        int32_t **l_1089[3];
        int i;
        for (i = 0; i < 3; i++)
            l_1089[i] = &p_1712->g_704;
        l_1090 = &l_1088;
        p_1712->g_704 = &p_1712->g_429;
    }
    else
    { /* block id: 309 */
        int32_t *l_1091 = &p_1712->g_429;
        int32_t *l_1092 = (void*)0;
        int32_t *l_1093 = (void*)0;
        int32_t *l_1094 = (void*)0;
        int32_t *l_1095 = &l_1088;
        int32_t *l_1096 = &l_1088;
        int32_t *l_1097[1][6];
        VECTOR(int32_t, 2) l_1110 = (VECTOR(int32_t, 2))(0x26701441L, 0x342D1A30L);
        VECTOR(int16_t, 2) l_1117 = (VECTOR(int16_t, 2))(0x2F61L, 0x2DB2L);
        VECTOR(uint32_t, 2) l_1131 = (VECTOR(uint32_t, 2))(0x1CDAEBBCL, 0x484FDAE3L);
        uint64_t l_1139 = 0UL;
        int32_t **l_1142 = &l_1091;
        int i, j;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 6; j++)
                l_1097[i][j] = &l_1088;
        }
        l_1098[4]++;
        for (p_1712->g_829.f1 = 0; (p_1712->g_829.f1 <= 31); p_1712->g_829.f1 = safe_add_func_uint32_t_u_u(p_1712->g_829.f1, 3))
        { /* block id: 313 */
            int32_t l_1105[9][7][2] = {{{0x70D61D5BL,0x78BBE8BCL},{0x70D61D5BL,0x78BBE8BCL},{0x70D61D5BL,0x78BBE8BCL},{0x70D61D5BL,0x78BBE8BCL},{0x70D61D5BL,0x78BBE8BCL},{0x70D61D5BL,0x78BBE8BCL},{0x70D61D5BL,0x78BBE8BCL}},{{0x70D61D5BL,0x78BBE8BCL},{0x70D61D5BL,0x78BBE8BCL},{0x70D61D5BL,0x78BBE8BCL},{0x70D61D5BL,0x78BBE8BCL},{0x70D61D5BL,0x78BBE8BCL},{0x70D61D5BL,0x78BBE8BCL},{0x70D61D5BL,0x78BBE8BCL}},{{0x70D61D5BL,0x78BBE8BCL},{0x70D61D5BL,0x78BBE8BCL},{0x70D61D5BL,0x78BBE8BCL},{0x70D61D5BL,0x78BBE8BCL},{0x70D61D5BL,0x78BBE8BCL},{0x70D61D5BL,0x78BBE8BCL},{0x70D61D5BL,0x78BBE8BCL}},{{0x70D61D5BL,0x78BBE8BCL},{0x70D61D5BL,0x78BBE8BCL},{0x70D61D5BL,0x78BBE8BCL},{0x70D61D5BL,0x78BBE8BCL},{0x70D61D5BL,0x78BBE8BCL},{0x70D61D5BL,0x78BBE8BCL},{0x70D61D5BL,0x78BBE8BCL}},{{0x70D61D5BL,0x78BBE8BCL},{0x70D61D5BL,0x78BBE8BCL},{0x70D61D5BL,0x78BBE8BCL},{0x70D61D5BL,0x78BBE8BCL},{0x70D61D5BL,0x78BBE8BCL},{0x70D61D5BL,0x78BBE8BCL},{0x70D61D5BL,0x78BBE8BCL}},{{0x70D61D5BL,0x78BBE8BCL},{0x70D61D5BL,0x78BBE8BCL},{0x70D61D5BL,0x78BBE8BCL},{0x70D61D5BL,0x78BBE8BCL},{0x70D61D5BL,0x78BBE8BCL},{0x70D61D5BL,0x78BBE8BCL},{0x70D61D5BL,0x78BBE8BCL}},{{0x70D61D5BL,0x78BBE8BCL},{0x70D61D5BL,0x78BBE8BCL},{0x70D61D5BL,0x78BBE8BCL},{0x70D61D5BL,0x78BBE8BCL},{0x70D61D5BL,0x78BBE8BCL},{0x70D61D5BL,0x78BBE8BCL},{0x70D61D5BL,0x78BBE8BCL}},{{0x70D61D5BL,0x78BBE8BCL},{0x70D61D5BL,0x78BBE8BCL},{0x70D61D5BL,0x78BBE8BCL},{0x70D61D5BL,0x78BBE8BCL},{0x70D61D5BL,0x78BBE8BCL},{0x70D61D5BL,0x78BBE8BCL},{0x70D61D5BL,0x78BBE8BCL}},{{0x70D61D5BL,0x78BBE8BCL},{0x70D61D5BL,0x78BBE8BCL},{0x70D61D5BL,0x78BBE8BCL},{0x70D61D5BL,0x78BBE8BCL},{0x70D61D5BL,0x78BBE8BCL},{0x70D61D5BL,0x78BBE8BCL},{0x70D61D5BL,0x78BBE8BCL}}};
            VECTOR(int16_t, 16) l_1107 = (VECTOR(int16_t, 16))(0x55C8L, (VECTOR(int16_t, 4))(0x55C8L, (VECTOR(int16_t, 2))(0x55C8L, 0x585FL), 0x585FL), 0x585FL, 0x55C8L, 0x585FL, (VECTOR(int16_t, 2))(0x55C8L, 0x585FL), (VECTOR(int16_t, 2))(0x55C8L, 0x585FL), 0x55C8L, 0x585FL, 0x55C8L, 0x585FL);
            uint32_t *l_1132 = &p_1712->g_335.f3;
            int16_t *l_1133 = (void*)0;
            int16_t *l_1134 = (void*)0;
            int16_t *l_1135[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            int32_t l_1137 = 0L;
            int i, j, k;
            if (((safe_mul_func_uint16_t_u_u(l_1105[4][0][0], (p_1712->g_645 = ((VECTOR(int16_t, 2))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 2),((VECTOR(int16_t, 8))(l_1106.yxwwwyww)).s12, ((VECTOR(int16_t, 8))(l_1107.sdf976839)).s12, ((VECTOR(int16_t, 8))(safe_clamp_func(VECTOR(int16_t, 8),VECTOR(int16_t, 8),((VECTOR(int16_t, 16))((((VECTOR(int16_t, 4))(rotate(((VECTOR(int16_t, 8))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 8),((VECTOR(int16_t, 4))((((VECTOR(int16_t, 2))(rotate(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(0L, (-1L))), 0x3AAEL, 1L)), (safe_div_func_int64_t_s_s((((VECTOR(uint8_t, 4))((((VECTOR(int32_t, 2))(l_1110.yy)).lo != (((safe_mod_func_uint64_t_u_u((((((*l_1096) &= ((!(safe_lshift_func_uint8_t_u_s(p_27, 1))) >= ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(rotate(((VECTOR(int16_t, 2))(9L, 0x5709L)), ((VECTOR(int16_t, 2))(l_1117.xx))))), (*l_1091), 1L, 4L, 0x465EL, 0L, ((VECTOR(int16_t, 2))(l_1118.sd1)), 0x24C4L, 0x49DBL, (((-8L) <= p_27) == (safe_sub_func_int16_t_s_s((((safe_div_func_uint64_t_u_u(((safe_lshift_func_int16_t_s_u((((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 4))(l_1131.xyxy)) | ((VECTOR(uint32_t, 4))((~((VECTOR(uint32_t, 8))(abs(((VECTOR(int32_t, 2))((((VECTOR(int32_t, 8))(0x020B8546L, (l_1132 == (p_26 , l_1090)), 7L, 0x09A93E74L, ((VECTOR(int32_t, 4))(7L)))).s32 && ((VECTOR(int32_t, 2))(0x1D91C9F3L))))).xxyxyxyx))).even)))))).even + ((VECTOR(uint32_t, 2))(0x3A89DD0DL))))).xxxyyyxy + ((VECTOR(uint32_t, 8))(4294967295UL))))).s60 + ((VECTOR(uint32_t, 2))(7UL))))).lo , 0x6C7EL), l_1105[4][0][0])) > GROUP_DIVERGE(2, 1)), 9UL)) && p_1712->g_365) || l_1105[6][2][1]), 0x2EB7L))), p_1712->g_402.s1, p_25, 0x585FL, 0x63DDL)).sd)) || 0x8A0CE03D30D86791L) > 0L) >= 0x54FD6FF9L), 1L)) , 0x1EACCE25761C74C4L) , l_1105[0][4][0])), 8UL, 0x16L, 0xDAL)).x >= l_1107.s2), p_27)), 0x54A5L, 1L, 0x10C2L)).s50, ((VECTOR(int16_t, 2))(0x0BDCL))))).xxxy && ((VECTOR(int16_t, 4))(0x1CBDL))))).yywyzyzx, ((VECTOR(int16_t, 8))(0x782AL)), ((VECTOR(int16_t, 8))(0x5607L))))).lo, ((VECTOR(int16_t, 4))(2L))))).xxyxyxxzwywwzwyw >= ((VECTOR(int16_t, 16))((-9L)))))).hi, ((VECTOR(int16_t, 8))((-1L))), ((VECTOR(int16_t, 8))(0x226EL))))).s24))).hi))) && 1L))
            { /* block id: 316 */
                int16_t l_1136 = (-3L);
                l_1139--;
                return p_1712->g_535.s3;
            }
            else
            { /* block id: 319 */
                if ((*l_1095))
                    break;
            }
        }
        (*l_1142) = &p_1712->g_429;
    }
    if ((*l_1090))
    { /* block id: 325 */
        uint32_t *l_1148 = &p_1712->g_223[6].f3;
        int32_t l_1154[2];
        VECTOR(int32_t, 16) l_1156 = (VECTOR(int32_t, 16))((-8L), (VECTOR(int32_t, 4))((-8L), (VECTOR(int32_t, 2))((-8L), (-2L)), (-2L)), (-2L), (-8L), (-2L), (VECTOR(int32_t, 2))((-8L), (-2L)), (VECTOR(int32_t, 2))((-8L), (-2L)), (-8L), (-2L), (-8L), (-2L));
        union U0 **l_1205[6] = {&p_1712->g_828,&p_1712->g_828,&p_1712->g_828,&p_1712->g_828,&p_1712->g_828,&p_1712->g_828};
        union U0 ***l_1204[6];
        int8_t l_1207 = 0x02L;
        VECTOR(uint32_t, 4) l_1226 = (VECTOR(uint32_t, 4))(4294967291UL, (VECTOR(uint32_t, 2))(4294967291UL, 0x5A292E8EL), 0x5A292E8EL);
        VECTOR(uint32_t, 8) l_1229 = (VECTOR(uint32_t, 8))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 0xB13D7362L), 0xB13D7362L), 0xB13D7362L, 1UL, 0xB13D7362L);
        VECTOR(uint32_t, 16) l_1240 = (VECTOR(uint32_t, 16))(5UL, (VECTOR(uint32_t, 4))(5UL, (VECTOR(uint32_t, 2))(5UL, 6UL), 6UL), 6UL, 5UL, 6UL, (VECTOR(uint32_t, 2))(5UL, 6UL), (VECTOR(uint32_t, 2))(5UL, 6UL), 5UL, 6UL, 5UL, 6UL);
        VECTOR(uint32_t, 2) l_1244 = (VECTOR(uint32_t, 2))(0x05445ACDL, 0xF15DF0C5L);
        uint32_t l_1267 = 1UL;
        int32_t l_1279 = (-1L);
        uint64_t l_1280 = 7UL;
        VECTOR(uint32_t, 2) l_1290 = (VECTOR(uint32_t, 2))(0x6882681CL, 0UL);
        int32_t *l_1302[2][4] = {{&p_1712->g_429,&l_1138[3][1],&p_1712->g_429,&p_1712->g_429},{&p_1712->g_429,&l_1138[3][1],&p_1712->g_429,&p_1712->g_429}};
        VECTOR(int8_t, 8) l_1312 = (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x34L), 0x34L), 0x34L, 1L, 0x34L);
        int8_t **l_1321 = (void*)0;
        int16_t l_1323 = 0x01A3L;
        uint32_t l_1328 = 0x4CA65EA8L;
        VECTOR(int16_t, 16) l_1333 = (VECTOR(int16_t, 16))(0x68FAL, (VECTOR(int16_t, 4))(0x68FAL, (VECTOR(int16_t, 2))(0x68FAL, 0x4BE1L), 0x4BE1L), 0x4BE1L, 0x68FAL, 0x4BE1L, (VECTOR(int16_t, 2))(0x68FAL, 0x4BE1L), (VECTOR(int16_t, 2))(0x68FAL, 0x4BE1L), 0x68FAL, 0x4BE1L, 0x68FAL, 0x4BE1L);
        uint8_t l_1356[6] = {0x4FL,0x52L,0x4FL,0x4FL,0x52L,0x4FL};
        VECTOR(int32_t, 4) l_1361 = (VECTOR(int32_t, 4))((-7L), (VECTOR(int32_t, 2))((-7L), 0x36C7B43DL), 0x36C7B43DL);
        int32_t l_1379 = (-1L);
        uint16_t l_1385 = 0x9F8FL;
        VECTOR(uint32_t, 2) l_1391 = (VECTOR(uint32_t, 2))(0UL, 1UL);
        int i, j;
        for (i = 0; i < 2; i++)
            l_1154[i] = (-1L);
        for (i = 0; i < 6; i++)
            l_1204[i] = &l_1205[3];
        (*l_1090) = (safe_sub_func_int64_t_s_s((l_1145 = 0x381EA95E52F9FF30L), ((safe_div_func_uint32_t_u_u(((*l_1148) = p_1712->g_110), (-1L))) && p_25)));
lbl_1300:
        (*l_1090) = (0x07L | (((*l_1090) , (void*)0) != &p_1712->g_645));
        for (p_1712->g_321.f0 = 0; (p_1712->g_321.f0 == 11); p_1712->g_321.f0++)
        { /* block id: 332 */
            VECTOR(int32_t, 16) l_1155 = (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x691C918DL), 0x691C918DL), 0x691C918DL, 0L, 0x691C918DL, (VECTOR(int32_t, 2))(0L, 0x691C918DL), (VECTOR(int32_t, 2))(0L, 0x691C918DL), 0L, 0x691C918DL, 0L, 0x691C918DL);
            int16_t *l_1157 = &p_1712->g_645;
            uint8_t l_1160 = 0x41L;
            VECTOR(int8_t, 2) l_1174 = (VECTOR(int8_t, 2))(0x74L, 0x59L);
            VECTOR(uint16_t, 4) l_1180 = (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 2UL), 2UL);
            int32_t l_1201 = 0x040CEA37L;
            VECTOR(uint32_t, 2) l_1245 = (VECTOR(uint32_t, 2))(0xBC887BD7L, 3UL);
            int i;
            for (p_1712->g_322.f0 = (-25); (p_1712->g_322.f0 == 32); p_1712->g_322.f0 = safe_add_func_int16_t_s_s(p_1712->g_322.f0, 6))
            { /* block id: 335 */
                int32_t *l_1161 = (void*)0;
                int32_t *l_1162 = (void*)0;
                int32_t *l_1163[1];
                union U0 **l_1203 = &p_1712->g_828;
                union U0 ***l_1202 = &l_1203;
                uint64_t *l_1206 = (void*)0;
                VECTOR(int8_t, 8) l_1212 = (VECTOR(int8_t, 8))(0x4FL, (VECTOR(int8_t, 4))(0x4FL, (VECTOR(int8_t, 2))(0x4FL, (-1L)), (-1L)), (-1L), 0x4FL, (-1L));
                VECTOR(uint64_t, 8) l_1219 = (VECTOR(uint64_t, 8))(0xAE001F4B09218830L, (VECTOR(uint64_t, 4))(0xAE001F4B09218830L, (VECTOR(uint64_t, 2))(0xAE001F4B09218830L, 18446744073709551615UL), 18446744073709551615UL), 18446744073709551615UL, 0xAE001F4B09218830L, 18446744073709551615UL);
                uint16_t **l_1222 = &p_1712->g_853[5][0][5];
                int32_t **l_1258 = &l_1161;
                int i;
                for (i = 0; i < 1; i++)
                    l_1163[i] = (void*)0;
                p_1712->g_156.x &= (((VECTOR(int32_t, 8))(add_sat(((VECTOR(int32_t, 8))(l_1153.xxxxxyyx)), ((VECTOR(int32_t, 8))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 4))(clz(((VECTOR(int32_t, 4))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 16))((l_1138[8][1] ^= ((p_1712->g_645 = ((*l_1090) &= p_27)) , p_26)), 0L, l_1154[0], ((VECTOR(int32_t, 4))((-6L), (-6L), 0x3FF7AA13L, (-1L))), ((VECTOR(int32_t, 4))(l_1155.s5cf7)), 0x00E51FB1L, (p_27 && GROUP_DIVERGE(1, 1)), 0x23BFBCCAL, (-1L), 0L)).s4706, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(l_1156.sfc88)), ((p_26 , (&p_1712->g_645 != l_1157)) == (((VECTOR(int32_t, 4))(0x3D152684L, (safe_sub_func_uint16_t_u_u((p_27 >= (0x6EL < p_27)), p_26)), (-10L), 5L)).y || (*l_1090))), l_1160, p_25, l_1160, ((VECTOR(int32_t, 8))(1L)))).s611a, ((VECTOR(int32_t, 4))(0x6D1D2AC7L)))))))).xyyzzwxy, ((VECTOR(int32_t, 8))(0x7DAA97F0L)), ((VECTOR(int32_t, 8))(4L)))))))).s7 > p_27);
                for (p_1712->g_339.f3 = 0; (p_1712->g_339.f3 == 42); p_1712->g_339.f3 = safe_add_func_int16_t_s_s(p_1712->g_339.f3, 6))
                { /* block id: 342 */
                    int16_t l_1199 = (-1L);
                    (*l_1090) = (safe_rshift_func_uint8_t_u_u(GROUP_DIVERGE(1, 1), 6));
                    for (p_1712->g_324.f1 = (-30); (p_1712->g_324.f1 >= 60); ++p_1712->g_324.f1)
                    { /* block id: 346 */
                        uint16_t *l_1195 = (void*)0;
                        int32_t l_1196[9][5] = {{(-9L),(-4L),(-9L),(-9L),(-4L)},{(-9L),(-4L),(-9L),(-9L),(-4L)},{(-9L),(-4L),(-9L),(-9L),(-4L)},{(-9L),(-4L),(-9L),(-9L),(-4L)},{(-9L),(-4L),(-9L),(-9L),(-4L)},{(-9L),(-4L),(-9L),(-9L),(-4L)},{(-9L),(-4L),(-9L),(-9L),(-4L)},{(-9L),(-4L),(-9L),(-9L),(-4L)},{(-9L),(-4L),(-9L),(-9L),(-4L)}};
                        int32_t **l_1200 = &l_1090;
                        int i, j;
                        (1 + 1);
                    }
                }
                if (((l_1201 >= (l_1156.s2 &= (l_1202 != l_1204[5]))) < p_26))
                { /* block id: 356 */
                    return l_1207;
                }
                else
                { /* block id: 358 */
                    VECTOR(uint8_t, 4) l_1209 = (VECTOR(uint8_t, 4))(0x5AL, (VECTOR(uint8_t, 2))(0x5AL, 6UL), 6UL);
                    VECTOR(int8_t, 8) l_1213 = (VECTOR(int8_t, 8))(0x4AL, (VECTOR(int8_t, 4))(0x4AL, (VECTOR(int8_t, 2))(0x4AL, 0x66L), 0x66L), 0x66L, 0x4AL, 0x66L);
                    int32_t l_1223 = 0x719F5048L;
                    uint32_t *l_1254 = &p_1712->g_326.f3;
                    uint32_t *l_1255 = &p_1712->g_327.f3;
                    uint32_t *l_1256 = &p_1712->g_330.f3;
                    uint32_t l_1257 = 0UL;
                    int i;
                    if (l_1207)
                        goto lbl_1208;
                    p_1712->g_612.y &= ((((VECTOR(uint8_t, 4))(l_1209.yxyx)).x & (p_25 ^ p_25)) ^ ((GROUP_DIVERGE(1, 1) || ((VECTOR(uint64_t, 16))(l_1210.yyxxyyxyxxyyxxyx)).sc) ^ ((((((VECTOR(int8_t, 2))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 2),((VECTOR(int8_t, 2))(p_1712->g_1211.zw)), ((VECTOR(int8_t, 8))((((VECTOR(int8_t, 8))(sub_sat(((VECTOR(int8_t, 4))(l_1212.s6045)).zxzywwzy, ((VECTOR(int8_t, 4))((((VECTOR(int8_t, 2))((((VECTOR(int8_t, 2))(clz(((VECTOR(int8_t, 2))((((VECTOR(int8_t, 2))(l_1213.s65)) <= ((VECTOR(int8_t, 8))(1L, (p_26 & ((safe_lshift_func_uint8_t_u_u(((VECTOR(uint8_t, 16))(p_1712->g_1216.zzzxyzzywzyyzwzx)).s1, 2)) || 65535UL)), (((((*l_1157) = (&p_1712->g_853[6][0][4] == ((safe_mod_func_int8_t_s_s((((VECTOR(uint64_t, 2))(l_1219.s77)).even == (GROUP_DIVERGE(1, 1) == p_1712->g_332.f0)), (GROUP_DIVERGE(0, 1) && ((safe_mod_func_int8_t_s_s(p_25, 0x4CL)) <= (*l_1090))))) , l_1222))) >= p_1712->g_1183.y) , l_1223) <= l_1174.y), (-1L), ((VECTOR(int8_t, 2))(0x0BL)), 0x7DL, 3L)).s41)))))) && ((VECTOR(int8_t, 2))(0x73L))))).xxxy > ((VECTOR(int8_t, 4))(0L))))).ywxyyzxy))) <= ((VECTOR(int8_t, 8))((-1L)))))).s13, ((VECTOR(int8_t, 2))(6L))))).hi || p_25) , (void*)0) != l_1224) != 0x2B48L)));
                    l_1223 = (((VECTOR(uint32_t, 2))((~((VECTOR(uint32_t, 2))((-((VECTOR(uint32_t, 4))(rhadd(((VECTOR(uint32_t, 4))(abs(((VECTOR(uint32_t, 4))(1UL, ((VECTOR(uint32_t, 2))(mul_hi(((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 16))(p_1712->g_1225.wyxyzwyxwxywyxzz)).sae7b ^ ((VECTOR(uint32_t, 8))(l_1226.yzzwzyxw)).lo))).odd, ((VECTOR(uint32_t, 16))(((p_26 != 0x4AL) < ((l_1154[1] &= ((safe_rshift_func_uint16_t_u_u(((l_1213.s6 & ((((VECTOR(uint32_t, 16))(mad_hi(((VECTOR(uint32_t, 4))(safe_mad24_func_uint32_t_u_u_u(VECTOR(uint32_t, 4),((VECTOR(uint32_t, 16))(l_1229.s3347156232341270)).sda46, ((VECTOR(uint32_t, 2))(7UL, 7UL)).yxxx, ((VECTOR(uint32_t, 16))(p_1712->g_1230.xxwwxwzzywwxxzyy)).se903))).zxxzzyzyxyzzwzxx, ((VECTOR(uint32_t, 4))(((((*l_1090) = (((((p_25 != (p_25 , (((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 4))(p_26, ((VECTOR(uint32_t, 2))(4294967295UL, 4UL)), 0x014031E8L)).yyyywwxy + ((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 4))(mad_hi(((VECTOR(uint32_t, 16))(hadd(((VECTOR(uint32_t, 2))(p_1712->g_1237.yy)).xxxyyyxyyyxyyxyx, ((VECTOR(uint32_t, 4))(0x3233D98CL, ((VECTOR(uint32_t, 2))(0xC1E5C8C6L, 0x3092E93BL)), 0xD199BBDFL)).ywwwwxxwxxwwywww))).sf106, ((VECTOR(uint32_t, 16))(mul_hi(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 16))(l_1240.s42c8f13f61ac9b93)).s0a + ((VECTOR(uint32_t, 2))(p_1712->g_1241.sa0))))), 0x21931B9BL, 4294967295UL)).wwxxwwzwzyzywzzy, ((VECTOR(uint32_t, 4))(safe_clamp_func(VECTOR(uint32_t, 4),VECTOR(uint32_t, 4),((VECTOR(uint32_t, 16))((((VECTOR(uint32_t, 2))(0UL, 4294967293UL)).yyxyxxyyxxxxyyxx + ((VECTOR(uint32_t, 2))(l_1244.yy)).xyxxxyyxyyyxyxyx))).sf12e, ((VECTOR(uint32_t, 4))(l_1245.xxxx)), ((VECTOR(uint32_t, 2))(abs_diff(((VECTOR(int32_t, 4))((p_1712->g_1183.y , (safe_sub_func_int8_t_s_s((safe_lshift_func_uint16_t_u_u(((VECTOR(uint16_t, 2))(0xE6A0L, 1UL)).even, 11)), ((VECTOR(uint8_t, 2))(0xAFL, 0x68L)).lo))), ((VECTOR(int32_t, 2))(0x1F0CDD3FL, 0x58756ACEL)), 0x6AC87AD9L)).odd, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(p_1712->g_1250.yxxxyxxx)), ((((safe_add_func_int64_t_s_s(0x0096FC3EA13D6426L, (*l_1090))) , (*p_1712->g_432)) == 1UL) && 4294967293UL), 0x2FB41BF6L, 9L, ((VECTOR(int32_t, 2))(0x78E232DAL)), ((VECTOR(int32_t, 2))(1L)), (-6L))).s6d))).xxxy))).zxxzxyzxxzzwyyww))).sf833, ((VECTOR(uint32_t, 4))(0UL))))) + ((VECTOR(uint32_t, 4))(0x2B965E8CL))))).odd + ((VECTOR(uint32_t, 2))(1UL))))).yxyxxxyy))).s5 , p_1712->g_533.y))) != l_1253) , 65535UL) || p_1712->g_1046.s5) , 0x16B345DCL)) , (*l_1090)) < l_1156.sc), 0xE55E53A3L, 0xA18B6E51L, 0xC471AF00L)).wxwzwxzywzzzwwxy, ((VECTOR(uint32_t, 16))(0x5733064DL))))).s1 == p_26) && (*l_1090))) & l_1223), l_1253)) && p_27)) || p_1712->g_365)), 0xC20EECD1L, 0xFDEA29EFL, 0x22D0C265L, ((VECTOR(uint32_t, 2))(0xEDF2C145L)), 0xDF24E35FL, 0x3A085655L, ((VECTOR(uint32_t, 4))(0x6DA9F1B2L)), 4294967286UL, ((VECTOR(uint32_t, 2))(0x1376C5F3L)), 0x121F2FFEL)).s38))), 0x309952D9L))))), ((VECTOR(uint32_t, 4))(4294967295UL))))).odd)))))).lo , l_1257);
                }
                (*l_1258) = &p_1712->g_429;
            }
        }
        if (((VECTOR(int32_t, 2))(4L, 0x00CE877AL)).odd)
        { /* block id: 369 */
            int32_t *l_1259 = &l_1154[0];
            int32_t *l_1260 = &l_1138[8][1];
            int32_t *l_1261 = (void*)0;
            int32_t *l_1262 = (void*)0;
            int32_t *l_1263 = (void*)0;
            int32_t l_1264 = 9L;
            int32_t *l_1265 = &l_1264;
            int32_t *l_1266[9][6][4] = {{{&l_1088,&p_1712->g_429,&l_1154[0],(void*)0},{&l_1088,&p_1712->g_429,&l_1154[0],(void*)0},{&l_1088,&p_1712->g_429,&l_1154[0],(void*)0},{&l_1088,&p_1712->g_429,&l_1154[0],(void*)0},{&l_1088,&p_1712->g_429,&l_1154[0],(void*)0},{&l_1088,&p_1712->g_429,&l_1154[0],(void*)0}},{{&l_1088,&p_1712->g_429,&l_1154[0],(void*)0},{&l_1088,&p_1712->g_429,&l_1154[0],(void*)0},{&l_1088,&p_1712->g_429,&l_1154[0],(void*)0},{&l_1088,&p_1712->g_429,&l_1154[0],(void*)0},{&l_1088,&p_1712->g_429,&l_1154[0],(void*)0},{&l_1088,&p_1712->g_429,&l_1154[0],(void*)0}},{{&l_1088,&p_1712->g_429,&l_1154[0],(void*)0},{&l_1088,&p_1712->g_429,&l_1154[0],(void*)0},{&l_1088,&p_1712->g_429,&l_1154[0],(void*)0},{&l_1088,&p_1712->g_429,&l_1154[0],(void*)0},{&l_1088,&p_1712->g_429,&l_1154[0],(void*)0},{&l_1088,&p_1712->g_429,&l_1154[0],(void*)0}},{{&l_1088,&p_1712->g_429,&l_1154[0],(void*)0},{&l_1088,&p_1712->g_429,&l_1154[0],(void*)0},{&l_1088,&p_1712->g_429,&l_1154[0],(void*)0},{&l_1088,&p_1712->g_429,&l_1154[0],(void*)0},{&l_1088,&p_1712->g_429,&l_1154[0],(void*)0},{&l_1088,&p_1712->g_429,&l_1154[0],(void*)0}},{{&l_1088,&p_1712->g_429,&l_1154[0],(void*)0},{&l_1088,&p_1712->g_429,&l_1154[0],(void*)0},{&l_1088,&p_1712->g_429,&l_1154[0],(void*)0},{&l_1088,&p_1712->g_429,&l_1154[0],(void*)0},{&l_1088,&p_1712->g_429,&l_1154[0],(void*)0},{&l_1088,&p_1712->g_429,&l_1154[0],(void*)0}},{{&l_1088,&p_1712->g_429,&l_1154[0],(void*)0},{&l_1088,&p_1712->g_429,&l_1154[0],(void*)0},{&l_1088,&p_1712->g_429,&l_1154[0],(void*)0},{&l_1088,&p_1712->g_429,&l_1154[0],(void*)0},{&l_1088,&p_1712->g_429,&l_1154[0],(void*)0},{&l_1088,&p_1712->g_429,&l_1154[0],(void*)0}},{{&l_1088,&p_1712->g_429,&l_1154[0],(void*)0},{&l_1088,&p_1712->g_429,&l_1154[0],(void*)0},{&l_1088,&p_1712->g_429,&l_1154[0],(void*)0},{&l_1088,&p_1712->g_429,&l_1154[0],(void*)0},{&l_1088,&p_1712->g_429,&l_1154[0],(void*)0},{&l_1088,&p_1712->g_429,&l_1154[0],(void*)0}},{{&l_1088,&p_1712->g_429,&l_1154[0],(void*)0},{&l_1088,&p_1712->g_429,&l_1154[0],(void*)0},{&l_1088,&p_1712->g_429,&l_1154[0],(void*)0},{&l_1088,&p_1712->g_429,&l_1154[0],(void*)0},{&l_1088,&p_1712->g_429,&l_1154[0],(void*)0},{&l_1088,&p_1712->g_429,&l_1154[0],(void*)0}},{{&l_1088,&p_1712->g_429,&l_1154[0],(void*)0},{&l_1088,&p_1712->g_429,&l_1154[0],(void*)0},{&l_1088,&p_1712->g_429,&l_1154[0],(void*)0},{&l_1088,&p_1712->g_429,&l_1154[0],(void*)0},{&l_1088,&p_1712->g_429,&l_1154[0],(void*)0},{&l_1088,&p_1712->g_429,&l_1154[0],(void*)0}}};
            int i, j, k;
            l_1267--;
        }
        else
        { /* block id: 371 */
            uint16_t *l_1276 = (void*)0;
            uint16_t *l_1277[2];
            int32_t l_1278[10] = {0x2BD9AA87L,6L,0x2BD9AA87L,0x2BD9AA87L,6L,0x2BD9AA87L,0x2BD9AA87L,6L,0x2BD9AA87L,0x2BD9AA87L};
            uint16_t **l_1285 = &l_1277[1];
            union U0 *l_1286 = &p_1712->g_1287;
            int32_t *l_1291 = (void*)0;
            int32_t *l_1292 = (void*)0;
            int32_t *l_1293 = &l_1154[0];
            uint64_t l_1320 = 7UL;
            int8_t **l_1322 = (void*)0;
            uint32_t l_1327 = 0x78ACC622L;
            VECTOR(int8_t, 16) l_1330 = (VECTOR(int8_t, 16))(2L, (VECTOR(int8_t, 4))(2L, (VECTOR(int8_t, 2))(2L, 0x03L), 0x03L), 0x03L, 2L, 0x03L, (VECTOR(int8_t, 2))(2L, 0x03L), (VECTOR(int8_t, 2))(2L, 0x03L), 2L, 0x03L, 2L, 0x03L);
            int64_t ***l_1343 = &p_1712->g_265;
            VECTOR(int32_t, 4) l_1360 = (VECTOR(int32_t, 4))(2L, (VECTOR(int32_t, 2))(2L, (-3L)), (-3L));
            int32_t **l_1407 = (void*)0;
            int32_t **l_1408 = &l_1406;
            int i;
            for (i = 0; i < 2; i++)
                l_1277[i] = (void*)0;
            if ((p_26 != ((safe_rshift_func_uint8_t_u_u((safe_mod_func_uint32_t_u_u(0x76F3DC6EL, (l_1156.s1 ^= (((*l_1090) ^ (safe_sub_func_uint16_t_u_u((--l_1280), (safe_add_func_uint32_t_u_u(((l_1285 = &p_1712->g_853[5][0][5]) == (p_25 , &p_1712->g_853[5][0][5])), (l_1286 == ((safe_div_func_uint32_t_u_u(((VECTOR(uint32_t, 8))(l_1290.yxxxxxyx)).s0, ((*l_1293) = (p_1712->g_521.s5 = p_25)))) , l_1294))))))) , p_27)))), 3)) >= p_25)))
            { /* block id: 377 */
                int64_t *l_1298 = &p_1712->g_113;
                int8_t **l_1299 = &p_1712->g_432;
                int32_t **l_1301[10] = {(void*)0,&p_1712->g_704,&l_1291,&p_1712->g_704,(void*)0,(void*)0,&p_1712->g_704,&l_1291,&p_1712->g_704,(void*)0};
                int i;
                (*l_1293) = (((safe_lshift_func_uint8_t_u_s(l_1279, (*p_1712->g_432))) | 0x32L) || ((((*l_1090) &= ((*l_1298) = p_27)) , l_1299) != l_1299));
                if (p_1712->g_365)
                    goto lbl_1300;
                l_1302[0][1] = (void*)0;
            }
            else
            { /* block id: 383 */
                int64_t *l_1326[3];
                int32_t l_1329[3];
                VECTOR(int16_t, 8) l_1331 = (VECTOR(int16_t, 8))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 1L), 1L), 1L, 1L, 1L);
                int64_t ***l_1341 = &p_1712->g_265;
                int32_t l_1344 = 0x0146754FL;
                VECTOR(int64_t, 8) l_1403 = (VECTOR(int64_t, 8))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 0x11C6036D8B25F5B0L), 0x11C6036D8B25F5B0L), 0x11C6036D8B25F5B0L, (-1L), 0x11C6036D8B25F5B0L);
                int32_t l_1405 = (-1L);
                int i;
                for (i = 0; i < 3; i++)
                    l_1326[i] = &p_1712->g_113;
                for (i = 0; i < 3; i++)
                    l_1329[i] = (-1L);
                if ((p_25 <= ((p_1712->g_607.s3 > (((safe_add_func_int16_t_s_s((4294967295UL ^ (0UL == (l_1327 = (safe_mul_func_uint8_t_u_u((p_1712->g_325[2][6].f1 = (safe_div_func_uint8_t_u_u(p_27, ((VECTOR(int8_t, 2))(max(((VECTOR(int8_t, 8))(max(((VECTOR(int8_t, 4))((((VECTOR(int8_t, 2))(5L, 0L)).xxxy || ((VECTOR(int8_t, 2))((((VECTOR(int8_t, 2))(p_1712->g_1311.s23)) ^ ((VECTOR(int8_t, 8))((((VECTOR(int8_t, 2))((((VECTOR(int8_t, 8))((((VECTOR(int8_t, 4))(l_1312.s6207)).xwxwzxwy && ((VECTOR(int8_t, 2))(l_1313.s9a)).xxyyyxyy))).s47 && ((VECTOR(int8_t, 8))(p_1712->g_1314.s6316b562)).s43))).yyxyxyxy && ((VECTOR(int8_t, 8))((((VECTOR(int8_t, 4))(clz(((VECTOR(int8_t, 2))(p_1712->g_1315.s51)).xyyy))).wxyzzyzz == ((VECTOR(int8_t, 16))(p_1712->g_1316.s6002061007611615)).lo)))))).s42))).xxyx))).wyyzzzwz, ((VECTOR(int8_t, 2))(l_1317.s10)).yxxyyyyx))).s73, (int8_t)(safe_add_func_int32_t_s_s((((((l_1320 ^ ((l_1321 = l_1321) != l_1322)) , ((l_1323 , p_26) , p_27)) & l_1324) ^ FAKE_DIVERGE(p_1712->local_0_offset, get_local_id(0), 10)) != p_1712->g_1325[2][0][9]), GROUP_DIVERGE(2, 1)))))).hi))), p_25))))), p_27)) != 1L) | l_1328)) > 5L)))
                { /* block id: 387 */
                    uint32_t *l_1334 = (void*)0;
                    uint32_t *l_1335 = &p_1712->g_1336;
                    int64_t ***l_1342 = &p_1712->g_265;
                    int32_t l_1352 = (-1L);
                    int32_t l_1353 = 0x10388A7AL;
                    int32_t l_1354 = 1L;
                    int32_t l_1355[10];
                    VECTOR(int32_t, 4) l_1359 = (VECTOR(int32_t, 4))(0x48EA1399L, (VECTOR(int32_t, 2))(0x48EA1399L, 0x696D649AL), 0x696D649AL);
                    int i;
                    for (i = 0; i < 10; i++)
                        l_1355[i] = 0x2B09931CL;
                    (*l_1293) = (*l_1090);
                    (*l_1293) = (l_1329[2] < ((((p_1712->g_645 = ((VECTOR(int16_t, 4))(add_sat(((VECTOR(int16_t, 2))(upsample(((VECTOR(int8_t, 16))(l_1330.s99c7e5d06b56c15c)).s81, ((VECTOR(uint8_t, 4))(0xF3L, (*l_1090), 0xEBL, 255UL)).odd))).yyyx, ((VECTOR(int16_t, 16))(rotate(((VECTOR(int16_t, 2))(l_1331.s57)).xyxxyxyyxxxyxyxx, ((VECTOR(int16_t, 4))(rhadd(((VECTOR(int16_t, 8))((!((VECTOR(int16_t, 16))((((VECTOR(int16_t, 16))(l_1332.xyxyyyyyxyxxxxyy)) && ((VECTOR(int16_t, 16))(l_1333.s3e3eca72fcd7853d))))).even))).lo, ((VECTOR(int16_t, 2))(0x462DL, 1L)).xxyy))).wyyyxzyywxyzywyy))).sd9b5))).x) | (((*l_1335) ^= GROUP_DIVERGE(0, 1)) , (l_1344 &= (safe_lshift_func_uint16_t_u_s(0UL, (((((safe_mul_func_int16_t_s_s((l_1331.s2 >= ((l_1342 = l_1341) != &p_1712->g_265)), (((*l_1293) & (&p_1712->g_265 == (l_1343 = &p_1712->g_265))) < p_27))) , p_25) , 5L) < p_26) >= 0x10A0DDA488782E18L)))))) | p_25) == 0x3F8C875A1E13ECDDL));
                    for (p_1712->g_135 = 14; (p_1712->g_135 == 1); --p_1712->g_135)
                    { /* block id: 397 */
                        int32_t *l_1348 = &p_1712->g_135;
                        int32_t **l_1347 = &l_1348;
                        uint64_t *l_1350 = &p_1712->g_281;
                        int32_t l_1351[7][8][1] = {{{6L},{6L},{6L},{6L},{6L},{6L},{6L},{6L}},{{6L},{6L},{6L},{6L},{6L},{6L},{6L},{6L}},{{6L},{6L},{6L},{6L},{6L},{6L},{6L},{6L}},{{6L},{6L},{6L},{6L},{6L},{6L},{6L},{6L}},{{6L},{6L},{6L},{6L},{6L},{6L},{6L},{6L}},{{6L},{6L},{6L},{6L},{6L},{6L},{6L},{6L}},{{6L},{6L},{6L},{6L},{6L},{6L},{6L},{6L}}};
                        int i, j, k;
                        (*l_1090) |= (((*l_1347) = l_1302[0][1]) != ((l_1351[0][6][0] = ((*l_1350) = ((VECTOR(uint64_t, 16))(mul_hi(((VECTOR(uint64_t, 4))((+((VECTOR(uint64_t, 16))(rhadd(((VECTOR(uint64_t, 2))(0xEB4B575E9E47B243L, 0x412CD231BAA896F9L)).yyyxxyyxxyyxyyxx, ((VECTOR(uint64_t, 2))(0x5D600069E477EB0EL, 1UL)).yyxxxyxyxxxxyyyy))).s10ca))).xxxxyxxyzyywxyxz, ((VECTOR(uint64_t, 2))(p_1712->g_1349.xy)).xyyyxyxxxxyyyyxy))).se)) , l_1090));
                        l_1356[5]++;
                        return p_27;
                    }
                    (*l_1090) = (((((p_1712->g_1046.s7 && ((VECTOR(int32_t, 16))(l_1359.xyyyxywwyyyywxxx)).s4) <= ((VECTOR(int32_t, 16))((((VECTOR(int32_t, 2))(0x6491635FL, 0x6D11FC02L)).yyyyxyxyxyxyyxxx && ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))((((VECTOR(int32_t, 8))(l_1360.zxwwwyzy)).s61 && ((VECTOR(int32_t, 8))(l_1361.zyxwwyyx)).s24))), 7L, 0x2A920F1EL)).xwzxyyzzwwwzyyxz))).s2) && (safe_rshift_func_uint8_t_u_s(GROUP_DIVERGE(1, 1), 4))) | ((l_1355[1] & p_27) ^ 0L)) >= ((*l_1148) = 0xC0089A5AL));
                }
                else
                { /* block id: 407 */
                    uint8_t l_1373 = 0x2CL;
                    int32_t l_1375 = (-1L);
                    int32_t l_1377 = (-1L);
                    int32_t l_1378 = 0L;
                    int32_t l_1380 = 0x3DBF0C1EL;
                    int32_t l_1381 = 0x39BB1766L;
                    int32_t l_1382 = (-7L);
                    int32_t l_1383 = 1L;
                    int32_t l_1384 = 1L;
                    if ((safe_lshift_func_uint16_t_u_u((*l_1090), 2)))
                    { /* block id: 408 */
                        int32_t **l_1366 = &l_1291;
                        int32_t *l_1367 = &p_1712->g_1325[3][0][7];
                        uint64_t *l_1368 = &l_1320;
                        int32_t l_1374[7];
                        int32_t l_1376 = (-4L);
                        int i;
                        for (i = 0; i < 7; i++)
                            l_1374[i] = 1L;
                        l_1367 = ((*l_1366) = &l_1278[1]);
                        (*l_1293) &= ((&p_1712->g_151 == (p_1712->g_1369 = l_1368)) ^ (safe_sub_func_uint64_t_u_u((p_25 | p_25), (((VECTOR(uint32_t, 16))(p_1712->g_1372.xxxxyxyyyyyyyxyx)).s1 >= ((**l_1366) = l_1373)))));
                        l_1385++;
                        l_1375 ^= (*l_1291);
                    }
                    else
                    { /* block id: 416 */
                        int32_t **l_1388 = &p_1712->g_539;
                        (*l_1388) = &l_1344;
                        return p_27;
                    }
                    l_1405 &= ((*l_1291) = (((~(l_1329[2] > (p_27 && (-4L)))) < ((VECTOR(uint32_t, 4))(abs(((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 4))(4294967295UL, FAKE_DIVERGE(p_1712->group_1_offset, get_group_id(1), 10), 0UL, 4294967291UL)).odd + ((VECTOR(uint32_t, 2))(max(((VECTOR(uint32_t, 2))(l_1391.yy)), (uint32_t)(((VECTOR(int8_t, 16))(mad_sat(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))((((VECTOR(int8_t, 2))(p_1712->g_1392.s26)).yxyx < ((VECTOR(int8_t, 2))(0x33L, (-1L))).yyxx))), ((VECTOR(int8_t, 2))((((VECTOR(int8_t, 2))(2L, 0x4CL)) >= ((VECTOR(int8_t, 2))((((VECTOR(int8_t, 8))(clz(((VECTOR(int8_t, 8))((((VECTOR(int8_t, 16))(p_1712->g_1393.zxzzxzyyxwwzxxxx)).lo != ((VECTOR(int8_t, 8))(clz(((VECTOR(int8_t, 2))(0x51L, (-7L))).xyxxxxxy))))))))).s43 && ((VECTOR(int8_t, 16))(0x28L, (-1L), 0x19L, (safe_rshift_func_uint16_t_u_s((safe_add_func_uint64_t_u_u((l_1373 < ((((safe_div_func_uint16_t_u_u(0x8ED1L, 65535UL)) != (((safe_add_func_uint32_t_u_u((((VECTOR(int64_t, 16))(1L, (p_25 > 0x037B94A9L), ((VECTOR(int64_t, 4))((((VECTOR(int64_t, 16))(rotate(((VECTOR(int64_t, 4))((((VECTOR(int64_t, 2))(1L, 0L)).yxyy | ((VECTOR(int64_t, 8))((!((VECTOR(int64_t, 4))((((VECTOR(int64_t, 16))(min(((VECTOR(int64_t, 4))(safe_clamp_func(VECTOR(int64_t, 4),VECTOR(int64_t, 4),((VECTOR(int64_t, 16))(l_1402.se7b32f9704309011)).s8420, ((VECTOR(int64_t, 16))(l_1403.s7361657024113451)).s1427, ((VECTOR(int64_t, 2))(clz(((VECTOR(int64_t, 16))((((VECTOR(int64_t, 4))((((VECTOR(int64_t, 4))(6L, 0x56EF1D2BCE8447ACL, (-1L), (-1L))) | ((VECTOR(int64_t, 4))(0L))))).xwxxwxzyzxxwwxwy && ((VECTOR(int64_t, 16))(0x1D25C2BBF823AC60L))))).sd8))).xyxx))).wwywxzyzxyzxxxyw, (int64_t)0x64D0F24557B78247L))).s750f && ((VECTOR(int64_t, 4))((-8L)))))).xxyyyyyz))).even))).xwzzwwxyxxwzxwww, ((VECTOR(int64_t, 16))(0x7F9AD008AD114BA5L))))).sa6d8 <= ((VECTOR(int64_t, 4))(0L))))), (-8L), ((VECTOR(int64_t, 4))(0L)), 0x5548DB5C3D89986CL, ((VECTOR(int64_t, 2))(0x2191CA6EA10F6FF6L)), 0x5573F1E2E2DBFAEAL, 0L)).sa & (*p_1712->g_1369)), l_1344)) >= (*l_1291)) != p_27)) , (*l_1090)) == (*l_1291))), l_1404)), 9)), 0x32L, ((VECTOR(int8_t, 2))((-3L))), ((VECTOR(int8_t, 8))(0x56L)), 0x7DL)).sbe)))))), 0x74L, 0x2FL)).s4344042462545103, ((VECTOR(int8_t, 16))(0L)), ((VECTOR(int8_t, 16))((-1L)))))).sb | (*l_1293)))))))).yyyy))).x) , 0x2A8EEA3BL));
                }
            }
            (*l_1408) = l_1406;
        }
    }
    else
    { /* block id: 426 */
        int32_t *l_1409 = (void*)0;
        int32_t **l_1410 = &l_1409;
        int32_t l_1476[1][6] = {{0L,0L,0L,0L,0L,0L}};
        VECTOR(uint16_t, 8) l_1500 = (VECTOR(uint16_t, 8))(0xF64DL, (VECTOR(uint16_t, 4))(0xF64DL, (VECTOR(uint16_t, 2))(0xF64DL, 0x7F71L), 0x7F71L), 0x7F71L, 0xF64DL, 0x7F71L);
        int64_t *l_1511 = (void*)0;
        int64_t *l_1512 = (void*)0;
        int64_t *l_1513[4][7][5] = {{{&p_1712->g_113,(void*)0,(void*)0,&l_1145,&p_1712->g_113},{&p_1712->g_113,(void*)0,(void*)0,&l_1145,&p_1712->g_113},{&p_1712->g_113,(void*)0,(void*)0,&l_1145,&p_1712->g_113},{&p_1712->g_113,(void*)0,(void*)0,&l_1145,&p_1712->g_113},{&p_1712->g_113,(void*)0,(void*)0,&l_1145,&p_1712->g_113},{&p_1712->g_113,(void*)0,(void*)0,&l_1145,&p_1712->g_113},{&p_1712->g_113,(void*)0,(void*)0,&l_1145,&p_1712->g_113}},{{&p_1712->g_113,(void*)0,(void*)0,&l_1145,&p_1712->g_113},{&p_1712->g_113,(void*)0,(void*)0,&l_1145,&p_1712->g_113},{&p_1712->g_113,(void*)0,(void*)0,&l_1145,&p_1712->g_113},{&p_1712->g_113,(void*)0,(void*)0,&l_1145,&p_1712->g_113},{&p_1712->g_113,(void*)0,(void*)0,&l_1145,&p_1712->g_113},{&p_1712->g_113,(void*)0,(void*)0,&l_1145,&p_1712->g_113},{&p_1712->g_113,(void*)0,(void*)0,&l_1145,&p_1712->g_113}},{{&p_1712->g_113,(void*)0,(void*)0,&l_1145,&p_1712->g_113},{&p_1712->g_113,(void*)0,(void*)0,&l_1145,&p_1712->g_113},{&p_1712->g_113,(void*)0,(void*)0,&l_1145,&p_1712->g_113},{&p_1712->g_113,(void*)0,(void*)0,&l_1145,&p_1712->g_113},{&p_1712->g_113,(void*)0,(void*)0,&l_1145,&p_1712->g_113},{&p_1712->g_113,(void*)0,(void*)0,&l_1145,&p_1712->g_113},{&p_1712->g_113,(void*)0,(void*)0,&l_1145,&p_1712->g_113}},{{&p_1712->g_113,(void*)0,(void*)0,&l_1145,&p_1712->g_113},{&p_1712->g_113,(void*)0,(void*)0,&l_1145,&p_1712->g_113},{&p_1712->g_113,(void*)0,(void*)0,&l_1145,&p_1712->g_113},{&p_1712->g_113,(void*)0,(void*)0,&l_1145,&p_1712->g_113},{&p_1712->g_113,(void*)0,(void*)0,&l_1145,&p_1712->g_113},{&p_1712->g_113,(void*)0,(void*)0,&l_1145,&p_1712->g_113},{&p_1712->g_113,(void*)0,(void*)0,&l_1145,&p_1712->g_113}}};
        uint32_t l_1514[9][10][2] = {{{0x41448EFAL,1UL},{0x41448EFAL,1UL},{0x41448EFAL,1UL},{0x41448EFAL,1UL},{0x41448EFAL,1UL},{0x41448EFAL,1UL},{0x41448EFAL,1UL},{0x41448EFAL,1UL},{0x41448EFAL,1UL},{0x41448EFAL,1UL}},{{0x41448EFAL,1UL},{0x41448EFAL,1UL},{0x41448EFAL,1UL},{0x41448EFAL,1UL},{0x41448EFAL,1UL},{0x41448EFAL,1UL},{0x41448EFAL,1UL},{0x41448EFAL,1UL},{0x41448EFAL,1UL},{0x41448EFAL,1UL}},{{0x41448EFAL,1UL},{0x41448EFAL,1UL},{0x41448EFAL,1UL},{0x41448EFAL,1UL},{0x41448EFAL,1UL},{0x41448EFAL,1UL},{0x41448EFAL,1UL},{0x41448EFAL,1UL},{0x41448EFAL,1UL},{0x41448EFAL,1UL}},{{0x41448EFAL,1UL},{0x41448EFAL,1UL},{0x41448EFAL,1UL},{0x41448EFAL,1UL},{0x41448EFAL,1UL},{0x41448EFAL,1UL},{0x41448EFAL,1UL},{0x41448EFAL,1UL},{0x41448EFAL,1UL},{0x41448EFAL,1UL}},{{0x41448EFAL,1UL},{0x41448EFAL,1UL},{0x41448EFAL,1UL},{0x41448EFAL,1UL},{0x41448EFAL,1UL},{0x41448EFAL,1UL},{0x41448EFAL,1UL},{0x41448EFAL,1UL},{0x41448EFAL,1UL},{0x41448EFAL,1UL}},{{0x41448EFAL,1UL},{0x41448EFAL,1UL},{0x41448EFAL,1UL},{0x41448EFAL,1UL},{0x41448EFAL,1UL},{0x41448EFAL,1UL},{0x41448EFAL,1UL},{0x41448EFAL,1UL},{0x41448EFAL,1UL},{0x41448EFAL,1UL}},{{0x41448EFAL,1UL},{0x41448EFAL,1UL},{0x41448EFAL,1UL},{0x41448EFAL,1UL},{0x41448EFAL,1UL},{0x41448EFAL,1UL},{0x41448EFAL,1UL},{0x41448EFAL,1UL},{0x41448EFAL,1UL},{0x41448EFAL,1UL}},{{0x41448EFAL,1UL},{0x41448EFAL,1UL},{0x41448EFAL,1UL},{0x41448EFAL,1UL},{0x41448EFAL,1UL},{0x41448EFAL,1UL},{0x41448EFAL,1UL},{0x41448EFAL,1UL},{0x41448EFAL,1UL},{0x41448EFAL,1UL}},{{0x41448EFAL,1UL},{0x41448EFAL,1UL},{0x41448EFAL,1UL},{0x41448EFAL,1UL},{0x41448EFAL,1UL},{0x41448EFAL,1UL},{0x41448EFAL,1UL},{0x41448EFAL,1UL},{0x41448EFAL,1UL},{0x41448EFAL,1UL}}};
        VECTOR(int32_t, 2) l_1518 = (VECTOR(int32_t, 2))(0x310A1E54L, 0L);
        uint64_t l_1520 = 18446744073709551615UL;
        VECTOR(int16_t, 8) l_1526 = (VECTOR(int16_t, 8))((-7L), (VECTOR(int16_t, 4))((-7L), (VECTOR(int16_t, 2))((-7L), 0x2172L), 0x2172L), 0x2172L, (-7L), 0x2172L);
        int16_t *l_1535 = (void*)0;
        int16_t **l_1534 = &l_1535;
        VECTOR(uint16_t, 16) l_1538 = (VECTOR(uint16_t, 16))(65528UL, (VECTOR(uint16_t, 4))(65528UL, (VECTOR(uint16_t, 2))(65528UL, 0xC814L), 0xC814L), 0xC814L, 65528UL, 0xC814L, (VECTOR(uint16_t, 2))(65528UL, 0xC814L), (VECTOR(uint16_t, 2))(65528UL, 0xC814L), 65528UL, 0xC814L, 65528UL, 0xC814L);
        uint8_t *l_1545 = &p_1712->g_335.f1;
        uint64_t l_1546 = 0x35AA14A7472A7448L;
        int i, j, k;
        (*l_1410) = l_1409;
        for (p_1712->g_331.f0 = 21; (p_1712->g_331.f0 != 39); p_1712->g_331.f0++)
        { /* block id: 430 */
            VECTOR(int8_t, 16) l_1413 = (VECTOR(int8_t, 16))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), (-9L)), (-9L)), (-9L), (-1L), (-9L), (VECTOR(int8_t, 2))((-1L), (-9L)), (VECTOR(int8_t, 2))((-1L), (-9L)), (-1L), (-9L), (-1L), (-9L));
            VECTOR(int8_t, 2) l_1414 = (VECTOR(int8_t, 2))(4L, (-2L));
            int32_t *l_1432 = &p_1712->g_1325[4][0][7];
            int32_t l_1480 = 0x0622E2B8L;
            int32_t l_1481 = 0x7AE88FCDL;
            int32_t l_1482 = 1L;
            uint16_t l_1483[5][1][6] = {{{1UL,0x2828L,0x2828L,1UL,1UL,0x2828L}},{{1UL,0x2828L,0x2828L,1UL,1UL,0x2828L}},{{1UL,0x2828L,0x2828L,1UL,1UL,0x2828L}},{{1UL,0x2828L,0x2828L,1UL,1UL,0x2828L}},{{1UL,0x2828L,0x2828L,1UL,1UL,0x2828L}}};
            int i, j, k;
            if (((*l_1090) = (((VECTOR(int8_t, 16))((((VECTOR(int8_t, 8))(l_1413.seb3ef43d)).s5340364462643142 && ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))((((VECTOR(int8_t, 4))(l_1414.xyyy)).wzxyxwxx == ((VECTOR(int8_t, 16))((*p_1712->g_432), ((VECTOR(int8_t, 2))(0x18L, 0x5DL)), (safe_mod_func_uint64_t_u_u((*l_1406), 0x39B3A6742B3A3ACEL)), (-1L), (safe_mul_func_uint8_t_u_u((p_27--), (*l_1406))), 4L, ((*l_1406) >= (p_25 < (safe_add_func_uint32_t_u_u((l_1413.s4 , 1UL), (safe_div_func_uint32_t_u_u((safe_rshift_func_uint16_t_u_u(((VECTOR(uint16_t, 8))(p_1712->g_1429.s6a89cbe8)).s6, 7)), 0x4000660EL)))))), 0x2AL, 0x76L, 0L, (*p_1712->g_432), 0x4EL, ((VECTOR(int8_t, 2))((-1L))), 0x27L)).lo))), 0x53L, 0x7EL, 1L, (*l_1090), ((VECTOR(int8_t, 2))(0x5AL)), 0x56L, 1L))))).s3 , p_1712->g_653.s0)))
            { /* block id: 433 */
                uint16_t l_1435 = 0xEFFFL;
                for (p_1712->g_1287.f3 = 23; (p_1712->g_1287.f3 >= 30); p_1712->g_1287.f3 = safe_add_func_uint64_t_u_u(p_1712->g_1287.f3, 7))
                { /* block id: 436 */
                    return p_27;
                }
                (*l_1410) = (p_1712->g_704 = l_1432);
                if ((safe_div_func_int8_t_s_s(((*p_1712->g_432) = l_1435), (*l_1406))))
                { /* block id: 442 */
                    if (p_26)
                        break;
                }
                else
                { /* block id: 444 */
                    uint64_t l_1436 = 0xBA1420BE4F9ADE5BL;
                    l_1436++;
                }
            }
            else
            { /* block id: 447 */
                VECTOR(int8_t, 16) l_1445 = (VECTOR(int8_t, 16))((-2L), (VECTOR(int8_t, 4))((-2L), (VECTOR(int8_t, 2))((-2L), 1L), 1L), 1L, (-2L), 1L, (VECTOR(int8_t, 2))((-2L), 1L), (VECTOR(int8_t, 2))((-2L), 1L), (-2L), 1L, (-2L), 1L);
                int32_t *l_1449 = &p_1712->g_135;
                int32_t **l_1448 = &l_1449;
                uint32_t l_1458 = 0xAF9DAA62L;
                int32_t *l_1470 = (void*)0;
                int32_t *l_1471 = &l_1138[4][0];
                int32_t *l_1472 = &p_1712->g_429;
                int32_t *l_1473 = &l_1138[8][1];
                int32_t *l_1474 = (void*)0;
                int32_t *l_1475 = (void*)0;
                int32_t *l_1477 = &p_1712->g_1325[0][0][1];
                int32_t *l_1478 = (void*)0;
                int32_t *l_1479[1];
                int i;
                for (i = 0; i < 1; i++)
                    l_1479[i] = &l_1476[0][0];
                for (p_1712->g_337.f0 = (-12); (p_1712->g_337.f0 != 4); p_1712->g_337.f0++)
                { /* block id: 450 */
                    VECTOR(int16_t, 8) l_1459 = (VECTOR(int16_t, 8))(6L, (VECTOR(int16_t, 4))(6L, (VECTOR(int16_t, 2))(6L, 0x5312L), 0x5312L), 0x5312L, 6L, 0x5312L);
                    int16_t *l_1469 = &l_1324;
                    int i;
                    if ((safe_add_func_uint8_t_u_u((safe_mod_func_uint16_t_u_u(p_25, ((((VECTOR(int8_t, 2))(l_1445.sa7)).odd == ((safe_lshift_func_int8_t_s_u(((((VECTOR(int8_t, 8))((((VECTOR(int8_t, 2))((((VECTOR(int8_t, 4))((l_1448 == (((VECTOR(int32_t, 16))((((VECTOR(int32_t, 16))((((VECTOR(int32_t, 16))(sub_sat(((VECTOR(int32_t, 4))((((VECTOR(int32_t, 2))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 8))(((*l_1406) = (((safe_mod_func_uint16_t_u_u(65528UL, (0x4BL & (safe_lshift_func_int16_t_s_s((safe_mod_func_uint64_t_u_u(((safe_lshift_func_uint16_t_u_s(l_1458, ((VECTOR(int16_t, 4))(l_1459.s1242)).x)) >= ((((*l_1090) |= (((l_1459.s7 < (safe_sub_func_int64_t_s_s((safe_div_func_int16_t_s_s(l_1464, (safe_lshift_func_int8_t_s_s(0x6FL, ((*p_1712->g_432) = (safe_sub_func_int16_t_s_s(((*l_1469) = (((-8L) == l_1459.s4) < 0UL)), 0x7F7DL))))))), 0xCB458C32D9B777E2L))) >= p_1712->g_223[6].f0) > GROUP_DIVERGE(0, 1))) != 4294967288UL) >= p_27)), 7L)), p_1712->g_1315.s0))))) < p_27) <= 0x7CC91347L)), (-1L), (-1L), 0x2AF8FD09L, ((VECTOR(int32_t, 4))(0L)))).s61, ((VECTOR(int32_t, 2))(1L))))).xyyy && ((VECTOR(int32_t, 4))(0x424DE811L))))).wyxzwxyxzxzxyxyy, ((VECTOR(int32_t, 16))(0x5F300BA2L))))) > ((VECTOR(int32_t, 16))(0x3E9BF51DL))))) && ((VECTOR(int32_t, 16))((-1L)))))).s3 , &l_1449)), (-1L), 0x44L, (-1L))).odd < ((VECTOR(int8_t, 2))(0x63L))))).xyyxyyyy != ((VECTOR(int8_t, 8))(1L))))).s5 ^ (-10L)) && (*l_1432)), l_1459.s3)) <= p_27)) , (-7L)))), 4UL)))
                    { /* block id: 455 */
                        return p_25;
                    }
                    else
                    { /* block id: 457 */
                        return p_26;
                    }
                }
                (*l_1410) = &p_1712->g_429;
                (*l_1410) = &p_1712->g_1325[2][0][9];
                ++l_1483[3][0][5];
            }
        }
        l_1520 &= ((((safe_lshift_func_int16_t_s_u(6L, (safe_mod_func_int32_t_s_s((p_25 != ((VECTOR(uint16_t, 16))(rhadd(((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 8))(rotate(((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 16))(p_1712->g_1494.yxxyyyyxyxyxyyxx)).sda33 + ((VECTOR(uint16_t, 2))(rotate(((VECTOR(uint16_t, 2))(l_1495.yy)), ((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(0x9795L, 65535UL)), ((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 2))(0x5B84L, 65535UL)) | ((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 8))(l_1500.s26072014)).s1375267213110523 * ((VECTOR(uint16_t, 16))(l_1501.wyxxwzxwxyzwwxxz))))).s3e))), FAKE_DIVERGE(p_1712->group_0_offset, get_group_id(0), 10), (safe_rshift_func_uint16_t_u_u((safe_add_func_uint16_t_u_u(((-1L) >= 4294967295UL), (safe_add_func_int64_t_s_s(((l_1514[7][6][0] |= ((p_1712->g_1336--) , l_1510)) || (((((*l_1406) && (((VECTOR(int32_t, 16))((((VECTOR(int32_t, 16))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 16))((((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))((((VECTOR(int32_t, 4))((((VECTOR(int32_t, 4))(p_1712->g_1515.xyyx)) && ((VECTOR(int32_t, 8))(0x2DF14846L, p_1712->g_1315.s2, ((VECTOR(int32_t, 2))(l_1516.yx)), 0x2F319E49L, ((VECTOR(int32_t, 2))(p_1712->g_1517.s53)), 0x5B4ED8C7L)).lo))).lo || ((VECTOR(int32_t, 2))(2L, 0L))))), 0x0D5DE4E3L, 0x0ED86EF5L)).yzwywzyzyyxxyxxz && ((VECTOR(int32_t, 16))((~((VECTOR(int32_t, 8))((((VECTOR(int32_t, 4))(min(((VECTOR(int32_t, 4))(3L, (-1L), 0x520E1E4BL, 0x3278CDFAL)), (int32_t)((VECTOR(int32_t, 4))(max(((VECTOR(int32_t, 8))(mul_hi(((VECTOR(int32_t, 16))(l_1518.xxxxyyyyyxyyyxyy)).hi, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(rhadd(((VECTOR(int32_t, 8))(mad_sat(((VECTOR(int32_t, 2))((((VECTOR(int32_t, 4))(rhadd(((VECTOR(int32_t, 4))(safe_clamp_func(VECTOR(int32_t, 4),VECTOR(int32_t, 4),((VECTOR(int32_t, 8))(p_1712->g_1519.zzyyxxxz)).lo, ((VECTOR(int32_t, 8))(rhadd(((VECTOR(int32_t, 16))(hadd(((VECTOR(int32_t, 16))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 16))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 4))(0x04876FAFL, 0L, 0x2353A20CL, 0x76A12685L)).xyyxyzwzxxzxwyyw, ((VECTOR(int32_t, 16))(0L)), ((VECTOR(int32_t, 16))(0x352581CAL))))), ((VECTOR(int32_t, 16))(1L))))), ((VECTOR(int32_t, 16))(0x130D9A95L))))).odd, ((VECTOR(int32_t, 8))(0x4400954FL))))).hi, ((VECTOR(int32_t, 4))(3L))))), ((VECTOR(int32_t, 4))((-1L)))))).lo || ((VECTOR(int32_t, 2))(0x21C49FD5L))))).yyyyxyxx, ((VECTOR(int32_t, 8))(0x69AB9B2EL)), ((VECTOR(int32_t, 8))(2L))))).s42, ((VECTOR(int32_t, 2))((-9L)))))), ((VECTOR(int32_t, 4))(2L)), 1L, (-1L)))))).hi, (int32_t)0x6298990EL))).w))).xzwzzwxy && ((VECTOR(int32_t, 8))(0x707E769AL))))).s0512217666561333)))))), ((VECTOR(int32_t, 16))(0x10D7752BL)), ((VECTOR(int32_t, 16))(0x38BF5F76L))))) || ((VECTOR(int32_t, 16))((-1L)))))).sa == p_1712->g_230.y)) , (*l_1406)) & 0UL) <= 0x67L)), 0xC8DB2EF599146778L)))), p_25)), 0xEEA2L, 0x0062L)) & ((VECTOR(uint16_t, 8))(0xBF7BL))))).hi + ((VECTOR(uint16_t, 4))(0UL))))).even))).yxyy))).even ^ ((VECTOR(uint16_t, 2))(65535UL))))).yyxyxxyy, ((VECTOR(uint16_t, 8))(0xD563L))))).s5121627255460775 + ((VECTOR(uint16_t, 16))(9UL))))), ((VECTOR(uint16_t, 16))(0x60D0L))))).s2), p_26)))) , (*l_1406)) ^ 0xA4L) || p_26);
        (*l_1090) = ((safe_mod_func_int16_t_s_s((safe_mod_func_int32_t_s_s(((VECTOR(int32_t, 4))((-1L), ((VECTOR(int32_t, 2))(min(((VECTOR(int32_t, 8))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 4))(rotate(((VECTOR(int32_t, 16))((((VECTOR(int32_t, 2))(rotate(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))((((VECTOR(int32_t, 4))(upsample(((VECTOR(int16_t, 16))(sub_sat(((VECTOR(int16_t, 2))((((VECTOR(int16_t, 2))(p_1712->g_1525.yy)) && ((VECTOR(int16_t, 16))((((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))((((VECTOR(int16_t, 2))(rhadd(((VECTOR(int16_t, 16))(l_1526.s5417452472551654)).s19, ((VECTOR(int16_t, 2))(l_1527.yy))))) <= ((VECTOR(int16_t, 4))(upsample(((VECTOR(int8_t, 8))((((VECTOR(int8_t, 16))(min(((VECTOR(int8_t, 16))((((VECTOR(int8_t, 2))(l_1528.s35)).yyyyyxxyxxyxxxxx > ((VECTOR(int8_t, 4))(l_1529.sd679)).wwyxyxwwxzxxzxwz))), (int8_t)((0x21L < ((l_1530 != (l_1500.s6 , (safe_lshift_func_uint8_t_u_u((safe_unary_minus_func_int32_t_s(((void*)0 != l_1534))), ((*l_1545) = (((safe_sub_func_uint16_t_u_u(((VECTOR(uint16_t, 4))(l_1538.sb660)).w, 5L)) || 0UL) > (safe_rshift_func_int16_t_s_s((safe_mod_func_int16_t_s_s((+(safe_add_func_uint16_t_u_u(p_26, p_26))), FAKE_DIVERGE(p_1712->global_2_offset, get_global_id(2), 10))), 0)))))))) >= p_25)) , (*p_1712->g_432))))).lo && ((VECTOR(int8_t, 8))((-2L)))))).lo, ((VECTOR(uint8_t, 4))(255UL))))).hi))), 1L, (*l_1406), p_27, 0x4E46L, 0x5E1BL, ((VECTOR(int16_t, 8))((-1L))), 1L)) && ((VECTOR(int16_t, 16))(3L))))).sa5))).yyyxxyxxyxyyyyyy, ((VECTOR(int16_t, 16))(7L))))).sa8ea, ((VECTOR(uint16_t, 4))(0x0DD8L))))).lo && ((VECTOR(int32_t, 2))((-9L)))))), 0x4380C496L, 0x0FB07436L)).even, ((VECTOR(int32_t, 2))((-2L)))))).xxyyxxxyyyyyyxxx && ((VECTOR(int32_t, 16))((-9L)))))).s869b, ((VECTOR(int32_t, 4))(0x4EA0E33FL))))).zywxywww, ((VECTOR(int32_t, 8))(0x58631EC7L)), ((VECTOR(int32_t, 8))(0x4420E625L))))).s32, (int32_t)0x5E7D0AA0L))), 0x53EC0D85L)).w, l_1546)), p_27)) , (*l_1090));
    }
    return p_1712->g_1494.x;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes: p_1712->g_828
 */
uint8_t  func_28(uint64_t  p_29, int64_t  p_30, uint64_t  p_31, uint32_t  p_32, uint8_t  p_33, struct S1 * p_1712)
{ /* block id: 302 */
    union U0 *l_1086 = (void*)0;
    union U0 **l_1087 = &p_1712->g_828;
    (*l_1087) = l_1086;
    return p_32;
}


/* ------------------------------------------ */
/* 
 * reads : p_1712->g_12 p_1712->g_72 p_1712->g_73 p_1712->g_78 p_1712->g_82 p_1712->g_89 p_1712->g_90 p_1712->g_94 p_1712->g_113 p_1712->g_110 p_1712->g_125 p_1712->g_151 p_1712->g_156 p_1712->g_167 p_1712->g_188 p_1712->g_189 p_1712->g_197 p_1712->g_200 p_1712->g_230 p_1712->g_241 p_1712->g_247 p_1712->g_248 p_1712->g_249 p_1712->g_281 p_1712->g_319 p_1712->g_339.f0 p_1712->g_135 p_1712->g_429 p_1712->g_336.f1 p_1712->g_331.f1 p_1712->g_334.f0 p_1712->g_431 p_1712->g_432 p_1712->g_365 p_1712->g_340.f0 p_1712->g_321.f1 p_1712->g_339.f3 p_1712->g_517 p_1712->g_561 p_1712->g_535 p_1712->g_539 p_1712->g_645 p_1712->g_664 p_1712->g_581 p_1712->g_704 p_1712->g_265 p_1712->g_119 p_1712->g_612 p_1712->g_407 p_1712->g_769 p_1712->g_653 p_1712->g_402 p_1712->g_397 p_1712->g_398 p_1712->g_323.f0 p_1712->g_852 p_1712->g_520 p_1712->g_521 p_1712->g_475 p_1712->g_533 p_1712->g_572 p_1712->g_582 p_1712->g_583 p_1712->g_607 p_1712->g_752 p_1712->g_758 p_1712->g_325.f0 p_1712->g_815 p_1712->g_828 p_1712->g_413 p_1712->g_334.f3 p_1712->g_324.f3 p_1712->g_955 p_1712->g_1043 p_1712->g_1046 p_1712->g_1069 p_1712->g_333.f0 p_1712->g_335.f3 p_1712->g_322.f3 p_1712->g_331.f0
 * writes: p_1712->g_110 p_1712->g_113 p_1712->g_119 p_1712->g_135 p_1712->g_151 p_1712->g_94 p_1712->g_156 p_1712->g_265 p_1712->g_281 p_1712->g_317.f3 p_1712->g_431 p_1712->g_336.f1 p_1712->g_331.f1 p_1712->g_365 p_1712->g_402 p_1712->g_321.f1 p_1712->g_339.f3 p_1712->g_517 p_1712->g_539 p_1712->g_645 p_1712->g_475 p_1712->g_704 p_1712->g_429 p_1712->g_197 p_1712->g_535 p_1712->g_752 p_1712->g_769 p_1712->g_338.f3 p_1712->g_82 p_1712->g_852 p_1712->g_407 p_1712->g_533 p_1712->g_808 p_1712->g_758 p_1712->g_334.f3 p_1712->g_324.f3 p_1712->g_607 p_1712->g_521 p_1712->g_335.f3 p_1712->g_322.f3 p_1712->g_331.f0 p_1712->g_330.f3 p_1712->g_167 p_1712->g_323.f3
 */
int64_t  func_38(uint8_t  p_39, int64_t  p_40, int32_t  p_41, int64_t  p_42, uint16_t  p_43, struct S1 * p_1712)
{ /* block id: 5 */
    VECTOR(uint8_t, 2) l_50 = (VECTOR(uint8_t, 2))(255UL, 247UL);
    VECTOR(uint8_t, 4) l_51 = (VECTOR(uint8_t, 4))(0xD9L, (VECTOR(uint8_t, 2))(0xD9L, 253UL), 253UL);
    VECTOR(int64_t, 2) l_69 = (VECTOR(int64_t, 2))(0L, 0x2EF39980A6F85D55L);
    VECTOR(int64_t, 16) l_70 = (VECTOR(int64_t, 16))(0x0E206F6EC37461BCL, (VECTOR(int64_t, 4))(0x0E206F6EC37461BCL, (VECTOR(int64_t, 2))(0x0E206F6EC37461BCL, 0x6C28784865E5AB8BL), 0x6C28784865E5AB8BL), 0x6C28784865E5AB8BL, 0x0E206F6EC37461BCL, 0x6C28784865E5AB8BL, (VECTOR(int64_t, 2))(0x0E206F6EC37461BCL, 0x6C28784865E5AB8BL), (VECTOR(int64_t, 2))(0x0E206F6EC37461BCL, 0x6C28784865E5AB8BL), 0x0E206F6EC37461BCL, 0x6C28784865E5AB8BL, 0x0E206F6EC37461BCL, 0x6C28784865E5AB8BL);
    VECTOR(int64_t, 16) l_71 = (VECTOR(int64_t, 16))((-3L), (VECTOR(int64_t, 4))((-3L), (VECTOR(int64_t, 2))((-3L), 0x71356723FF4914D8L), 0x71356723FF4914D8L), 0x71356723FF4914D8L, (-3L), 0x71356723FF4914D8L, (VECTOR(int64_t, 2))((-3L), 0x71356723FF4914D8L), (VECTOR(int64_t, 2))((-3L), 0x71356723FF4914D8L), (-3L), 0x71356723FF4914D8L, (-3L), 0x71356723FF4914D8L);
    VECTOR(int64_t, 2) l_74 = (VECTOR(int64_t, 2))(0x0F1D39FA4EE4B4BCL, 6L);
    VECTOR(int64_t, 2) l_75 = (VECTOR(int64_t, 2))(1L, 1L);
    VECTOR(int64_t, 4) l_76 = (VECTOR(int64_t, 4))(9L, (VECTOR(int64_t, 2))(9L, (-1L)), (-1L));
    VECTOR(int64_t, 8) l_77 = (VECTOR(int64_t, 8))(0x144D42BE3C69BB0CL, (VECTOR(int64_t, 4))(0x144D42BE3C69BB0CL, (VECTOR(int64_t, 2))(0x144D42BE3C69BB0CL, 0x4F543A9B16E5D1C1L), 0x4F543A9B16E5D1C1L), 0x4F543A9B16E5D1C1L, 0x144D42BE3C69BB0CL, 0x4F543A9B16E5D1C1L);
    VECTOR(uint16_t, 16) l_81 = (VECTOR(uint16_t, 16))(0x4746L, (VECTOR(uint16_t, 4))(0x4746L, (VECTOR(uint16_t, 2))(0x4746L, 0UL), 0UL), 0UL, 0x4746L, 0UL, (VECTOR(uint16_t, 2))(0x4746L, 0UL), (VECTOR(uint16_t, 2))(0x4746L, 0UL), 0x4746L, 0UL, 0x4746L, 0UL);
    VECTOR(uint16_t, 2) l_85 = (VECTOR(uint16_t, 2))(5UL, 0UL);
    VECTOR(uint8_t, 2) l_86 = (VECTOR(uint8_t, 2))(0UL, 253UL);
    VECTOR(uint16_t, 8) l_91 = (VECTOR(uint16_t, 8))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0xE3F1L), 0xE3F1L), 0xE3F1L, 1UL, 0xE3F1L);
    VECTOR(uint16_t, 4) l_97 = (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0UL), 0UL);
    uint32_t l_108 = 0xE82D738AL;
    int8_t *l_109 = &p_1712->g_110;
    int64_t l_111 = 4L;
    int64_t *l_112 = &p_1712->g_113;
    uint8_t *l_496[8] = {&p_1712->g_328[0][0].f1,&p_1712->g_328[0][0].f1,&p_1712->g_328[0][0].f1,&p_1712->g_328[0][0].f1,&p_1712->g_328[0][0].f1,&p_1712->g_328[0][0].f1,&p_1712->g_328[0][0].f1,&p_1712->g_328[0][0].f1};
    int32_t l_497 = 0x1F75F748L;
    int32_t *l_907 = (void*)0;
    int32_t *l_908 = (void*)0;
    int32_t *l_909 = &l_497;
    int32_t *l_910 = (void*)0;
    int32_t **l_911 = &l_907;
    int32_t l_970[8] = {(-10L),(-10L),(-10L),(-10L),(-10L),(-10L),(-10L),(-10L)};
    uint64_t l_985 = 18446744073709551614UL;
    int32_t l_1070 = 0x39942939L;
    int i;
    p_41 = func_45(((((VECTOR(uint8_t, 16))(mad_hi(((VECTOR(uint8_t, 4))(l_50.yyyy)).zxywzzywwxxyyxxw, ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(l_51.zyzw)), ((VECTOR(uint8_t, 8))(0x29L, func_52(l_51.w, (safe_mul_func_int8_t_s_s(0x48L, (l_497 = (safe_rshift_func_int8_t_s_u((p_1712->g_12 , (safe_rshift_func_uint16_t_u_u(0xAED5L, ((VECTOR(uint16_t, 2))(func_63(((p_41 & 0L) && (safe_mod_func_int32_t_s_s((safe_div_func_uint16_t_u_u((((*l_112) ^= ((VECTOR(int64_t, 4))((((VECTOR(int64_t, 4))(l_69.xyyx)) && ((VECTOR(int64_t, 4))((((VECTOR(int64_t, 2))(mad_sat(((VECTOR(int64_t, 8))((((VECTOR(int64_t, 2))(l_70.sf5)).yxxyyxyx && ((VECTOR(int64_t, 2))(0x71DB06D673C04290L, 0x0DD038CF49CF94A2L)).xxyyxxyx))).s16, ((VECTOR(int64_t, 16))(l_71.s65e429b0536403ac)).s46, ((VECTOR(int64_t, 2))(0L, (-3L)))))).yxxy && ((VECTOR(int64_t, 4))(rhadd(((VECTOR(int64_t, 8))(safe_clamp_func(VECTOR(int64_t, 8),VECTOR(int64_t, 8),((VECTOR(int64_t, 8))(add_sat(((VECTOR(int64_t, 16))(p_1712->g_72.se68bd5e5709715b7)).lo, ((VECTOR(int64_t, 2))(p_1712->g_73.s8a)).yxyyxxxx))), ((VECTOR(int64_t, 16))(l_74.xxxxxyyyxxyyxxxx)).lo, ((VECTOR(int64_t, 16))(add_sat(((VECTOR(int64_t, 16))(l_75.xyyyxxyyxxxyyyyy)), ((VECTOR(int64_t, 8))(mad_sat(((VECTOR(int64_t, 2))(l_76.zz)).yxxyxyyx, ((VECTOR(int64_t, 4))(l_77.s3330)).xzzzzzxw, ((VECTOR(int64_t, 4))((((VECTOR(int64_t, 4))(upsample(((VECTOR(int32_t, 2))(p_1712->g_78.s22)).yyyy, ((VECTOR(uint32_t, 2))(upsample(((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 8))(l_81.s4cc4390a)).s4177164331425162 - ((VECTOR(uint16_t, 4))(p_1712->g_82.s0016)).xzzxyywyzzywzyxy))).s14, ((VECTOR(uint16_t, 8))(abs_diff(((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 4))(l_85.xyyy)).odd * ((VECTOR(uint16_t, 2))(rotate(((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 8))(upsample(((VECTOR(uint8_t, 2))(rhadd(((VECTOR(uint8_t, 4))(0UL, 0x1CL, 0x3DL, 255UL)).hi, ((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 4))(l_86.xyyy)) ^ ((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 16))(p_1712->g_89.s3221455071270566)) + ((VECTOR(uint8_t, 2))(0x0FL, 0xB8L)).yxxxxyxyyyyxxxxx))).s0980))).odd))).yyxyyxxy, ((VECTOR(uint8_t, 4))(p_1712->g_90.yxyy)).wwwywwyx))).s65 & ((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(rotate(((VECTOR(uint16_t, 4))(l_91.s3245)), ((VECTOR(uint16_t, 8))(8UL, 0UL, 0xADD0L, ((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 16))(p_1712->g_94.xxyxxxyyyxxxxxxx)).s08a2 + ((VECTOR(uint16_t, 16))(min(((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 4))(l_97.yzxy)).zzyxyzwxywwyxwwz + ((VECTOR(uint16_t, 8))((safe_rshift_func_int8_t_s_s(((*l_109) = (safe_sub_func_int64_t_s_s((safe_div_func_int64_t_s_s((safe_rshift_func_int8_t_s_u((safe_add_func_int8_t_s_s(0x5AL, p_1712->g_78.s2)), 1)), p_39)), l_108))), 0)), l_111, p_1712->g_94.x, ((VECTOR(uint16_t, 4))(1UL)), 0xC662L)).s4075304743551604))), ((VECTOR(uint16_t, 16))(0xF3C6L))))).s490b))), 0UL)).odd))), p_1712->g_73.s0, ((VECTOR(uint16_t, 2))(0x63C1L)), 65528UL)).s07 & ((VECTOR(uint16_t, 2))(0UL)))))))), ((VECTOR(uint16_t, 2))(6UL)))))))).yxyyyyyy, ((VECTOR(uint16_t, 8))(0UL))))).s34))).yxxy))) && ((VECTOR(int64_t, 4))(0L))))).wwxyyxwz))).s0262230615172225))).lo))).lo, ((VECTOR(int64_t, 4))((-4L)))))))))))).w) != l_51.z), p_1712->g_72.se)), p_1712->g_78.s3))), p_1712))).lo))), p_43))))), p_42, p_1712->g_78.s5, p_1712), 0x17L, ((VECTOR(uint8_t, 4))(0x27L)), 0xB3L)), 0x29L, 0x4DL, 255UL, 0x47L)), ((VECTOR(uint8_t, 16))(0x69L))))).s8 , p_43) && 0x49241774L), l_81.sc, p_39, p_1712->g_241.sb, p_1712);
    p_41 = ((*l_909) = 0x5DDB0EDAL);
lbl_978:
    (*l_911) = &p_1712->g_429;
    for (p_1712->g_335.f3 = 0; (p_1712->g_335.f3 > 19); p_1712->g_335.f3++)
    { /* block id: 253 */
        VECTOR(uint32_t, 8) l_926 = (VECTOR(uint32_t, 8))(0x93102029L, (VECTOR(uint32_t, 4))(0x93102029L, (VECTOR(uint32_t, 2))(0x93102029L, 7UL), 7UL), 7UL, 0x93102029L, 7UL);
        VECTOR(uint32_t, 16) l_927 = (VECTOR(uint32_t, 16))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 0xE719AD43L), 0xE719AD43L), 0xE719AD43L, 4294967295UL, 0xE719AD43L, (VECTOR(uint32_t, 2))(4294967295UL, 0xE719AD43L), (VECTOR(uint32_t, 2))(4294967295UL, 0xE719AD43L), 4294967295UL, 0xE719AD43L, 4294967295UL, 0xE719AD43L);
        VECTOR(uint32_t, 4) l_929 = (VECTOR(uint32_t, 4))(0x84F39C7EL, (VECTOR(uint32_t, 2))(0x84F39C7EL, 0xD3D95404L), 0xD3D95404L);
        int64_t **l_950 = &p_1712->g_119[5];
        int32_t l_965 = 4L;
        int32_t l_967 = 0x19BE4994L;
        int32_t l_969 = 1L;
        int32_t l_974[9] = {(-1L),0x50128C4DL,(-1L),(-1L),0x50128C4DL,(-1L),(-1L),0x50128C4DL,(-1L)};
        uint16_t l_975 = 0UL;
        VECTOR(int64_t, 8) l_1044 = (VECTOR(int64_t, 8))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 0x00C6F9805542ECFFL), 0x00C6F9805542ECFFL), 0x00C6F9805542ECFFL, 1L, 0x00C6F9805542ECFFL);
        int64_t l_1071 = 0L;
        union U0 *l_1072 = &p_1712->g_1073[0];
        union U0 **l_1074 = &l_1072;
        uint64_t l_1079 = 0xF56EEE06F4F038FBL;
        int i;
        for (p_1712->g_322.f3 = 0; (p_1712->g_322.f3 <= 53); p_1712->g_322.f3++)
        { /* block id: 256 */
            int8_t l_943 = 0x5BL;
            uint32_t l_953[4][9] = {{0xA9988644L,0xB638C6DBL,1UL,0UL,1UL,0xB638C6DBL,0xA9988644L,0x553EB1A3L,7UL},{0xA9988644L,0xB638C6DBL,1UL,0UL,1UL,0xB638C6DBL,0xA9988644L,0x553EB1A3L,7UL},{0xA9988644L,0xB638C6DBL,1UL,0UL,1UL,0xB638C6DBL,0xA9988644L,0x553EB1A3L,7UL},{0xA9988644L,0xB638C6DBL,1UL,0UL,1UL,0xB638C6DBL,0xA9988644L,0x553EB1A3L,7UL}};
            int32_t l_956 = (-2L);
            int32_t l_964 = 0x36C6F8BFL;
            int32_t l_966 = 0L;
            int32_t l_968 = 9L;
            int32_t l_972[6][9] = {{(-1L),(-4L),0L,(-1L),0x53F67C27L,(-6L),(-9L),0L,(-7L)},{(-1L),(-4L),0L,(-1L),0x53F67C27L,(-6L),(-9L),0L,(-7L)},{(-1L),(-4L),0L,(-1L),0x53F67C27L,(-6L),(-9L),0L,(-7L)},{(-1L),(-4L),0L,(-1L),0x53F67C27L,(-6L),(-9L),0L,(-7L)},{(-1L),(-4L),0L,(-1L),0x53F67C27L,(-6L),(-9L),0L,(-7L)},{(-1L),(-4L),0L,(-1L),0x53F67C27L,(-6L),(-9L),0L,(-7L)}};
            VECTOR(uint64_t, 16) l_1005 = (VECTOR(uint64_t, 16))(18446744073709551615UL, (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 4UL), 4UL), 4UL, 18446744073709551615UL, 4UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 4UL), (VECTOR(uint64_t, 2))(18446744073709551615UL, 4UL), 18446744073709551615UL, 4UL, 18446744073709551615UL, 4UL);
            VECTOR(int16_t, 16) l_1017 = (VECTOR(int16_t, 16))(0x6E2CL, (VECTOR(int16_t, 4))(0x6E2CL, (VECTOR(int16_t, 2))(0x6E2CL, 0x02E1L), 0x02E1L), 0x02E1L, 0x6E2CL, 0x02E1L, (VECTOR(int16_t, 2))(0x6E2CL, 0x02E1L), (VECTOR(int16_t, 2))(0x6E2CL, 0x02E1L), 0x6E2CL, 0x02E1L, 0x6E2CL, 0x02E1L);
            int16_t *l_1027 = &p_1712->g_645;
            int16_t **l_1026 = &l_1027;
            int i, j;
            for (p_1712->g_331.f0 = (-5); (p_1712->g_331.f0 != 56); ++p_1712->g_331.f0)
            { /* block id: 259 */
                VECTOR(uint32_t, 4) l_928 = (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 0UL), 0UL);
                uint32_t *l_930 = &p_1712->g_323[1][2][4].f3;
                int64_t ***l_951 = &l_950;
                int64_t l_954 = 0x3BAE7DED25F3BAEEL;
                int32_t l_971 = (-2L);
                int32_t l_973 = 0L;
                int32_t l_984[7][1];
                VECTOR(uint64_t, 4) l_997 = (VECTOR(uint64_t, 4))(0x5823F347AA1BC381L, (VECTOR(uint64_t, 2))(0x5823F347AA1BC381L, 0x56D2F867151C62C6L), 0x56D2F867151C62C6L);
                uint64_t *l_1004 = &l_985;
                uint8_t l_1012[8][9] = {{255UL,0x4EL,0x3DL,0x4EL,255UL,255UL,0x4EL,0x3DL,0x4EL},{255UL,0x4EL,0x3DL,0x4EL,255UL,255UL,0x4EL,0x3DL,0x4EL},{255UL,0x4EL,0x3DL,0x4EL,255UL,255UL,0x4EL,0x3DL,0x4EL},{255UL,0x4EL,0x3DL,0x4EL,255UL,255UL,0x4EL,0x3DL,0x4EL},{255UL,0x4EL,0x3DL,0x4EL,255UL,255UL,0x4EL,0x3DL,0x4EL},{255UL,0x4EL,0x3DL,0x4EL,255UL,255UL,0x4EL,0x3DL,0x4EL},{255UL,0x4EL,0x3DL,0x4EL,255UL,255UL,0x4EL,0x3DL,0x4EL},{255UL,0x4EL,0x3DL,0x4EL,255UL,255UL,0x4EL,0x3DL,0x4EL}};
                int32_t **l_1022 = (void*)0;
                int32_t ***l_1023 = &l_1022;
                int16_t *l_1025 = (void*)0;
                int16_t **l_1024 = &l_1025;
                int16_t *l_1040 = (void*)0;
                int16_t *l_1041 = (void*)0;
                int32_t *l_1042 = &l_972[5][0];
                VECTOR(int64_t, 2) l_1045 = (VECTOR(int64_t, 2))((-7L), 0x42620FD7650FF1CEL);
                VECTOR(int64_t, 8) l_1047 = (VECTOR(int64_t, 8))(0L, (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, (-6L)), (-6L)), (-6L), 0L, (-6L));
                VECTOR(int64_t, 4) l_1048 = (VECTOR(int64_t, 4))(0x062F8764B57F3039L, (VECTOR(int64_t, 2))(0x062F8764B57F3039L, (-9L)), (-9L));
                uint16_t *l_1057 = (void*)0;
                uint16_t *l_1058[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                int i, j;
                for (i = 0; i < 7; i++)
                {
                    for (j = 0; j < 1; j++)
                        l_984[i][j] = (-3L);
                }
                if ((safe_rshift_func_uint16_t_u_u(((0UL <= ((((((GROUP_DIVERGE(1, 1) & ((safe_mod_func_int32_t_s_s((((((VECTOR(uint32_t, 8))(min(((VECTOR(uint32_t, 4))(sub_sat(((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 8))(mul_hi(((VECTOR(uint32_t, 2))(mad_hi(((VECTOR(uint32_t, 8))(mad_hi(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(l_926.s06)), 0x614E4E3DL, 0x9F18F9CBL)).zxyyxzww, ((VECTOR(uint32_t, 8))(l_927.s75a90b2d)), ((VECTOR(uint32_t, 16))(l_928.yzyyyyywyxywwxxw)).even))).s75, ((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))(max(((VECTOR(uint32_t, 4))(l_929.xzxy)), (uint32_t)(++p_1712->g_230.x)))), (((*p_1712->g_432) | (p_1712->g_241.sd = ((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 4))(mul_hi(((VECTOR(uint8_t, 4))(mul_hi(((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 2))(0x58L, 0x55L)).yxxxyyyx + ((VECTOR(uint8_t, 4))(mad_hi(((VECTOR(uint8_t, 4))(abs_diff(((VECTOR(int8_t, 4))((((!((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))((((((~(0x4373CC68058408BEL ^ (safe_sub_func_uint32_t_u_u((safe_sub_func_int32_t_s_s((((safe_mul_func_uint8_t_u_u(l_926.s6, (((VECTOR(uint8_t, 8))((0xBEA2335E483AF7DBL >= l_943), (safe_lshift_func_uint16_t_u_s(GROUP_DIVERGE(2, 1), 13)), (((safe_div_func_int64_t_s_s(3L, (+((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(upsample(((VECTOR(uint32_t, 16))((safe_rshift_func_int8_t_s_u(0x6EL, ((p_39 = GROUP_DIVERGE(1, 1)) <= ((((*l_951) = l_950) == &p_1712->g_119[7]) > GROUP_DIVERGE(2, 1))))), 0xA4F21A63L, ((VECTOR(uint32_t, 2))(2UL)), 8UL, 5UL, ((VECTOR(uint32_t, 2))(0x86759F18L)), ((VECTOR(uint32_t, 8))(0x3F4A4189L)))).s2e, ((VECTOR(uint32_t, 2))(1UL))))), ((VECTOR(uint64_t, 2))(18446744073709551606UL)), 18446744073709551612UL, 0x1E26F9A98D7E6911L, 18446744073709551607UL, 8UL)).s3))) & p_40) , GROUP_DIVERGE(2, 1)), ((VECTOR(uint8_t, 2))(0x31L)), 0UL, 0xBBL, 254UL)).s7 || p_1712->g_952))) || l_943) <= l_929.z), 0xBB1DC1D5L)), l_943)))) > p_40) > p_41) ^ l_953[0][4]) >= GROUP_DIVERGE(2, 1)), 0xFD52L, ((VECTOR(uint16_t, 4))(65535UL)), 0x329BL, 65535UL)), p_40, 1UL, ((VECTOR(uint16_t, 4))(9UL)), 8UL, 7UL)).sc) & 0x8E8AL) <= 0UL), (*p_1712->g_432), 0x2CL, 0x02L)), ((VECTOR(int8_t, 4))(0x29L))))), ((VECTOR(uint8_t, 4))(1UL)), ((VECTOR(uint8_t, 4))(0x60L))))).xwzyzwwx))).even, ((VECTOR(uint8_t, 4))(1UL))))), ((VECTOR(uint8_t, 4))(255UL))))).zzyzxywy + ((VECTOR(uint8_t, 8))(0xF4L))))).s3)) , p_40), ((VECTOR(uint32_t, 8))(0xDEEC605FL)), 1UL, 4294967295UL, 0x6DEB30C2L)).sf5, ((VECTOR(uint32_t, 2))(0x9EF743A8L))))).xyxxyyxx, ((VECTOR(uint32_t, 8))(4294967295UL))))).odd + ((VECTOR(uint32_t, 4))(0xFA485263L))))), ((VECTOR(uint32_t, 4))(5UL))))).xwwxyxzw, (uint32_t)p_1712->g_521.s3))).s6 ^ l_954) | 4294967295UL) ^ p_1712->g_955[0]), l_927.s3)) > 0x62D03E3BL)) <= (-1L)) && p_41) == p_41) > p_42) <= (-7L))) < p_1712->g_200.s2), 6)))
                { /* block id: 264 */
                    int32_t *l_957 = &l_956;
                    int32_t *l_958 = (void*)0;
                    int32_t *l_959 = (void*)0;
                    int32_t *l_960 = (void*)0;
                    int32_t *l_961 = &p_1712->g_429;
                    int32_t l_962 = 0x1D8C2AE0L;
                    int32_t *l_963[1];
                    int i;
                    for (i = 0; i < 1; i++)
                        l_963[i] = (void*)0;
                    --l_975;
                    (**l_911) ^= (((**l_951) = (*p_1712->g_265)) != &p_40);
                    if (p_40)
                        goto lbl_978;
                }
                else
                { /* block id: 269 */
                    for (p_1712->g_330.f3 = (-21); (p_1712->g_330.f3 < 60); p_1712->g_330.f3++)
                    { /* block id: 272 */
                        int32_t *l_981 = &l_966;
                        int32_t *l_982 = (void*)0;
                        int32_t *l_983[4] = {&l_970[3],&l_970[3],&l_970[3],&l_970[3]};
                        int i;
                        --l_985;
                    }
                }
                (*l_907) |= (6L != ((((safe_sub_func_uint32_t_u_u(((FAKE_DIVERGE(p_1712->group_2_offset, get_group_id(2), 10) , ((+(p_1712->g_167.x = ((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 16))(add_sat(((VECTOR(uint64_t, 8))(hadd(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(add_sat(((VECTOR(uint64_t, 2))(p_1712->g_996.wz)), ((VECTOR(uint64_t, 4))(l_997.yyyw)).even))), ((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 16))(18446744073709551606UL, ((*l_1004) |= 0UL), 0xE02C2C2354AAEF75L, 9UL, ((VECTOR(uint64_t, 8))(l_1005.sa78b4be8)), (((safe_rshift_func_uint16_t_u_u(0xE1BEL, (safe_mul_func_int16_t_s_s((safe_sub_func_int64_t_s_s(((((l_1012[2][3] != (safe_lshift_func_int8_t_s_s(((safe_rshift_func_uint8_t_u_s((((((((((VECTOR(int16_t, 2))(l_1017.sbb)).odd ^ p_1712->g_78.s6) > (safe_rshift_func_uint16_t_u_s((safe_rshift_func_uint16_t_u_u(GROUP_DIVERGE(2, 1), ((VECTOR(uint16_t, 2))(abs(((VECTOR(uint16_t, 2))(0x9FB3L, 0x875DL))))).hi)), (p_43 ^ ((((((*l_112) = p_43) || (((*l_1023) = l_1022) != &l_908)) > 0UL) , l_1024) == (void*)0))))) , l_1026) != &p_1712->g_664) , (void*)0) != &l_943) <= 0x1C6B3A5C9552CAA9L), 3)) , 0x53L), (*p_1712->g_432)))) >= 0x0AL) , 0L) >= p_42), l_1017.s7)), p_39)))) != p_1712->g_955[1]) ^ 1L), 0xCDB034166B3D894CL, 18446744073709551614UL, 18446744073709551613UL)).s361e + ((VECTOR(uint64_t, 4))(0x5E6BCC53643BA49AL))))), p_1712->g_333.f0, p_1712->g_241.sb, 0xFBF1C7D119C8616FL, 18446744073709551615UL)) >> ((VECTOR(uint64_t, 8))(64))))).s75 + ((VECTOR(uint64_t, 2))(0x7416FF511F4B6C7DL))))), 6UL, 0xB8C92EE1D8F3373DL, 0xF2874FDE9C1772D3L, 4UL)), ((VECTOR(uint64_t, 8))(0xAA7D07078A2C8F9BL))))).s4370100720202265, ((VECTOR(uint64_t, 16))(18446744073709551613UL))))).s7026 + ((VECTOR(uint64_t, 4))(0x3E8E5E5EFDD5170DL))))).zwzzwyzx + ((VECTOR(uint64_t, 8))(0UL))))).s7)) > p_1712->g_125.x)) <= p_42), GROUP_DIVERGE(1, 1))) == p_42) <= l_1005.sd) > l_968));
                (*l_1042) ^= (safe_mod_func_uint64_t_u_u((safe_div_func_uint32_t_u_u(((*l_930) = FAKE_DIVERGE(p_1712->group_2_offset, get_group_id(2), 10)), 4294967295UL)), (GROUP_DIVERGE(1, 1) | (safe_div_func_int16_t_s_s((safe_sub_func_int32_t_s_s((p_42 , (p_40 >= ((*l_909) = l_975))), (safe_sub_func_uint64_t_u_u(((void*)0 == &l_496[4]), p_41)))), (+(l_974[4] = ((**l_1026) &= (safe_div_func_int64_t_s_s(0L, (**l_911)))))))))));
                (**l_911) = ((((VECTOR(int64_t, 16))(min(((VECTOR(int64_t, 2))(safe_clamp_func(VECTOR(int64_t, 2),VECTOR(int64_t, 2),((VECTOR(int64_t, 4))((((VECTOR(int64_t, 16))(p_1712->g_1043.yxyyxyxxxyxxyxxy)).s9502 && ((VECTOR(int64_t, 2))(l_1044.s44)).yyyy))).hi, ((VECTOR(int64_t, 4))(max(((VECTOR(int64_t, 8))(mul_hi(((VECTOR(int64_t, 4))(l_1045.yyyx)).zwxxywww, ((VECTOR(int64_t, 8))(hadd(((VECTOR(int64_t, 2))(p_1712->g_1046.s46)).xxyyyxyy, ((VECTOR(int64_t, 16))((((VECTOR(int64_t, 16))(l_1047.s0526615603377455)) && ((VECTOR(int64_t, 2))((((VECTOR(int64_t, 2))(safe_clamp_func(VECTOR(int64_t, 2),int64_t,((VECTOR(int64_t, 2))((((VECTOR(int64_t, 4))((((VECTOR(int64_t, 4))(l_1048.yxxy)) && ((VECTOR(int64_t, 16))(0x78423A0793C9F219L, (safe_add_func_int16_t_s_s(p_1712->g_407.s7, (((p_1712->g_197.s3 , (safe_lshift_func_int16_t_s_u((safe_rshift_func_uint16_t_u_u((safe_rshift_func_int16_t_s_s((l_969 = ((p_43--) <= (((l_953[0][7] != l_969) != (safe_rshift_func_int8_t_s_u((safe_add_func_uint32_t_u_u((((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 4))((safe_mod_func_uint32_t_u_u((&p_1712->g_664 != &l_1027), l_974[1])), ((VECTOR(uint16_t, 2))(safe_clamp_func(VECTOR(uint16_t, 2),uint16_t,((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(0xB541L, 65527UL)), 0x2006L, (((VECTOR(uint16_t, 8))(p_1712->g_1069.xxxyxxyx)).s4 <= (0x05L && ((((p_39 = p_42) != 0x68L) || p_40) > p_41))), 7UL, ((VECTOR(uint16_t, 2))(65529UL)), 0xA813L, 65533UL, ((VECTOR(uint16_t, 2))(0xD680L)), 65535UL, 65530UL, l_1070, 0UL, 0UL)).sff, (uint16_t)l_943, (uint16_t)l_972[5][0]))), 0xB42EL)).odd & ((VECTOR(uint16_t, 2))(0xA372L))))), p_40, 65535UL, 65535UL, ((VECTOR(uint16_t, 2))(0xB696L)), 0UL, l_1044.s1, ((VECTOR(uint16_t, 2))(0x8010L)), ((VECTOR(uint16_t, 4))(0x19ADL)), 3UL)).s6c * ((VECTOR(uint16_t, 2))(65535UL))))), 0x07AFL, 65535UL)).y & 65528UL), l_1071)), 0))) ^ GROUP_DIVERGE(1, 1)))), p_1712->g_247.s5)), 8)), 8))) < 0x4E777775L) <= p_1712->g_333.f0))), ((VECTOR(int64_t, 4))(5L)), ((VECTOR(int64_t, 8))(0x0AC88A41927CBFF8L)), 0x3D3522CAE8DC8376L, 8L)).sa2e9))).even && ((VECTOR(int64_t, 2))(0x0978869D47BE21C7L))))), (int64_t)l_968, (int64_t)p_41))) | ((VECTOR(int64_t, 2))(0x2188F0F9B9A8D40EL))))).yxyyxxxyxyyxyxxy))).lo)))))).even, (int64_t)p_39))).even, ((VECTOR(int64_t, 2))(0x7E73CD74C319D5EAL))))).xyxxyxxyxyyyyyxy, (int64_t)p_42))).s1 == p_1712->g_200.s5) & (*l_1042));
            }
        }
        (*l_1074) = l_1072;
        for (p_1712->g_339.f3 = 0; (p_1712->g_339.f3 == 45); p_1712->g_339.f3 = safe_add_func_int32_t_s_s(p_1712->g_339.f3, 2))
        { /* block id: 295 */
            int32_t *l_1077 = (void*)0;
            int32_t *l_1078[6][10] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
            int i, j;
            ++l_1079;
        }
        return l_927.se;
    }
    return p_40;
}


/* ------------------------------------------ */
/* 
 * reads : p_1712->g_324.f3 p_1712->g_704 p_1712->g_521
 * writes: p_1712->g_324.f3 p_1712->g_704 p_1712->g_607 p_1712->g_521
 */
int32_t  func_45(uint16_t  p_46, uint8_t  p_47, uint16_t  p_48, uint64_t  p_49, struct S1 * p_1712)
{ /* block id: 236 */
    int64_t l_891 = (-1L);
    int32_t l_892 = (-1L);
    uint32_t *l_901 = (void*)0;
    l_892 = l_891;
    for (p_1712->g_324.f3 = 0; (p_1712->g_324.f3 > 29); p_1712->g_324.f3++)
    { /* block id: 240 */
        int32_t **l_895 = (void*)0;
        int32_t **l_896 = &p_1712->g_704;
        int32_t *l_904 = (void*)0;
        int32_t *l_905 = (void*)0;
        int32_t *l_906[8] = {&l_892,&p_1712->g_429,&l_892,&l_892,&p_1712->g_429,&l_892,&l_892,&p_1712->g_429};
        int i;
        (*l_896) = (void*)0;
        p_1712->g_607.s5 = (p_48 >= (safe_mul_func_int16_t_s_s(p_46, ((safe_rshift_func_uint8_t_u_s((l_901 != ((((-3L) ^ p_47) | GROUP_DIVERGE(0, 1)) , p_1712->g_704)), 5)) > (safe_rshift_func_uint8_t_u_u(p_48, 0))))));
        p_1712->g_521.s4 ^= 0x4DF97D2FL;
        (*l_896) = &l_892;
    }
    return l_892;
}


/* ------------------------------------------ */
/* 
 * reads : p_1712->g_82 p_1712->g_339.f3 p_1712->g_517 p_1712->g_432 p_1712->g_365 p_1712->g_429 p_1712->g_561 p_1712->g_535 p_1712->g_539 p_1712->g_340.f0 p_1712->g_113 p_1712->g_645 p_1712->g_664 p_1712->g_581 p_1712->g_167 p_1712->g_249 p_1712->g_94 p_1712->g_704 p_1712->g_189 p_1712->g_265 p_1712->g_119 p_1712->g_125 p_1712->g_612 p_1712->g_407 p_1712->g_769 p_1712->g_653 p_1712->g_402 p_1712->g_397 p_1712->g_398 p_1712->g_78 p_1712->g_323.f0 p_1712->g_852 p_1712->g_321.f1 p_1712->g_520 p_1712->g_521 p_1712->g_475 p_1712->g_533 p_1712->g_197 p_1712->g_572 p_1712->g_582 p_1712->g_583 p_1712->g_607 p_1712->g_156 p_1712->g_752 p_1712->g_758 p_1712->g_135 p_1712->g_325.f0 p_1712->g_815 p_1712->g_828 p_1712->g_12 p_1712->g_413 p_1712->g_334.f3
 * writes: p_1712->g_339.f3 p_1712->g_517 p_1712->g_539 p_1712->g_645 p_1712->g_113 p_1712->g_365 p_1712->g_156 p_1712->g_475 p_1712->g_704 p_1712->g_429 p_1712->g_197 p_1712->g_535 p_1712->g_752 p_1712->g_769 p_1712->g_338.f3 p_1712->g_82 p_1712->g_852 p_1712->g_321.f1 p_1712->g_334.f3 p_1712->g_407 p_1712->g_533 p_1712->g_135 p_1712->g_808 p_1712->g_758
 */
uint8_t  func_52(uint8_t  p_53, uint32_t  p_54, int8_t  p_55, uint32_t  p_56, struct S1 * p_1712)
{ /* block id: 118 */
    int64_t l_500 = (-3L);
    VECTOR(uint64_t, 2) l_501 = (VECTOR(uint64_t, 2))(18446744073709551615UL, 0xB5470859DDC02D21L);
    VECTOR(int64_t, 16) l_506 = (VECTOR(int64_t, 16))(0x39FDACCA4815CE4EL, (VECTOR(int64_t, 4))(0x39FDACCA4815CE4EL, (VECTOR(int64_t, 2))(0x39FDACCA4815CE4EL, (-8L)), (-8L)), (-8L), 0x39FDACCA4815CE4EL, (-8L), (VECTOR(int64_t, 2))(0x39FDACCA4815CE4EL, (-8L)), (VECTOR(int64_t, 2))(0x39FDACCA4815CE4EL, (-8L)), 0x39FDACCA4815CE4EL, (-8L), 0x39FDACCA4815CE4EL, (-8L));
    int8_t **l_507 = &p_1712->g_432;
    int32_t l_512 = (-1L);
    int32_t l_513 = 0L;
    int32_t l_514 = 0x2DEC8158L;
    int32_t l_515 = 4L;
    int32_t l_516[3][10][3] = {{{(-4L),0x7C8025EEL,1L},{(-4L),0x7C8025EEL,1L},{(-4L),0x7C8025EEL,1L},{(-4L),0x7C8025EEL,1L},{(-4L),0x7C8025EEL,1L},{(-4L),0x7C8025EEL,1L},{(-4L),0x7C8025EEL,1L},{(-4L),0x7C8025EEL,1L},{(-4L),0x7C8025EEL,1L},{(-4L),0x7C8025EEL,1L}},{{(-4L),0x7C8025EEL,1L},{(-4L),0x7C8025EEL,1L},{(-4L),0x7C8025EEL,1L},{(-4L),0x7C8025EEL,1L},{(-4L),0x7C8025EEL,1L},{(-4L),0x7C8025EEL,1L},{(-4L),0x7C8025EEL,1L},{(-4L),0x7C8025EEL,1L},{(-4L),0x7C8025EEL,1L},{(-4L),0x7C8025EEL,1L}},{{(-4L),0x7C8025EEL,1L},{(-4L),0x7C8025EEL,1L},{(-4L),0x7C8025EEL,1L},{(-4L),0x7C8025EEL,1L},{(-4L),0x7C8025EEL,1L},{(-4L),0x7C8025EEL,1L},{(-4L),0x7C8025EEL,1L},{(-4L),0x7C8025EEL,1L},{(-4L),0x7C8025EEL,1L},{(-4L),0x7C8025EEL,1L}}};
    int8_t l_560 = 0x1FL;
    int32_t *l_564[8];
    union U0 *l_567 = (void*)0;
    union U0 **l_566 = &l_567;
    union U0 ***l_565 = &l_566;
    VECTOR(uint8_t, 8) l_575 = (VECTOR(uint8_t, 8))(248UL, (VECTOR(uint8_t, 4))(248UL, (VECTOR(uint8_t, 2))(248UL, 5UL), 5UL), 5UL, 248UL, 5UL);
    VECTOR(uint8_t, 2) l_578 = (VECTOR(uint8_t, 2))(0x1BL, 0x93L);
    VECTOR(int8_t, 16) l_654 = (VECTOR(int8_t, 16))((-3L), (VECTOR(int8_t, 4))((-3L), (VECTOR(int8_t, 2))((-3L), 0x5FL), 0x5FL), 0x5FL, (-3L), 0x5FL, (VECTOR(int8_t, 2))((-3L), 0x5FL), (VECTOR(int8_t, 2))((-3L), 0x5FL), (-3L), 0x5FL, (-3L), 0x5FL);
    VECTOR(int8_t, 8) l_668 = (VECTOR(int8_t, 8))((-4L), (VECTOR(int8_t, 4))((-4L), (VECTOR(int8_t, 2))((-4L), 0x03L), 0x03L), 0x03L, (-4L), 0x03L);
    uint16_t l_738 = 65535UL;
    VECTOR(int8_t, 8) l_763 = (VECTOR(int8_t, 8))(0x24L, (VECTOR(int8_t, 4))(0x24L, (VECTOR(int8_t, 2))(0x24L, 0x49L), 0x49L), 0x49L, 0x24L, 0x49L);
    VECTOR(uint8_t, 4) l_764 = (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0x8EL), 0x8EL);
    int64_t l_772 = 1L;
    uint16_t l_776 = 6UL;
    VECTOR(uint64_t, 8) l_861 = (VECTOR(uint64_t, 8))(0UL, (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 1UL), 1UL), 1UL, 0UL, 1UL);
    VECTOR(uint64_t, 2) l_862 = (VECTOR(uint64_t, 2))(18446744073709551606UL, 18446744073709551607UL);
    VECTOR(uint16_t, 16) l_865 = (VECTOR(uint16_t, 16))(0xE438L, (VECTOR(uint16_t, 4))(0xE438L, (VECTOR(uint16_t, 2))(0xE438L, 0xECA6L), 0xECA6L), 0xECA6L, 0xE438L, 0xECA6L, (VECTOR(uint16_t, 2))(0xE438L, 0xECA6L), (VECTOR(uint16_t, 2))(0xE438L, 0xECA6L), 0xE438L, 0xECA6L, 0xE438L, 0xECA6L);
    VECTOR(uint16_t, 16) l_868 = (VECTOR(uint16_t, 16))(0xFAF9L, (VECTOR(uint16_t, 4))(0xFAF9L, (VECTOR(uint16_t, 2))(0xFAF9L, 65533UL), 65533UL), 65533UL, 0xFAF9L, 65533UL, (VECTOR(uint16_t, 2))(0xFAF9L, 65533UL), (VECTOR(uint16_t, 2))(0xFAF9L, 65533UL), 0xFAF9L, 65533UL, 0xFAF9L, 65533UL);
    uint16_t l_871[7] = {0UL,0UL,0UL,0UL,0UL,0UL,0UL};
    VECTOR(uint8_t, 4) l_886 = (VECTOR(uint8_t, 4))(0x89L, (VECTOR(uint8_t, 2))(0x89L, 0x55L), 0x55L);
    int32_t l_887 = 0x57B29A99L;
    int i, j, k;
    for (i = 0; i < 8; i++)
        l_564[i] = &p_1712->g_135;
    if (((VECTOR(int32_t, 8))(((((((1L || (!(((safe_div_func_uint32_t_u_u(FAKE_DIVERGE(p_1712->local_2_offset, get_local_id(2), 10), l_500)) != (p_56 == l_500)) == p_54))) == ((VECTOR(uint64_t, 4))(l_501.yyxx)).y) == (((safe_rshift_func_int8_t_s_u(l_501.y, 0)) , l_501.x) < (safe_div_func_int64_t_s_s(((VECTOR(int64_t, 16))(l_506.s62d8aa283e677521)).sc, p_55)))) , l_507) != &p_1712->g_432) == l_506.se), 0x50C721C4L, ((VECTOR(int32_t, 2))(0x35ACC69CL)), p_1712->g_82.s6, p_54, 0L, 0x4A08FAB0L)).s5)
    { /* block id: 119 */
        uint32_t l_508 = 1UL;
        return l_508;
    }
    else
    { /* block id: 121 */
        int32_t *l_511[6][1];
        VECTOR(int32_t, 4) l_522 = (VECTOR(int32_t, 4))(0x3D2BA8A5L, (VECTOR(int32_t, 2))(0x3D2BA8A5L, 0L), 0L);
        VECTOR(int32_t, 8) l_523 = (VECTOR(int32_t, 8))(0x22AA8D0AL, (VECTOR(int32_t, 4))(0x22AA8D0AL, (VECTOR(int32_t, 2))(0x22AA8D0AL, 0x5A82082CL), 0x5A82082CL), 0x5A82082CL, 0x22AA8D0AL, 0x5A82082CL);
        VECTOR(int32_t, 8) l_524 = (VECTOR(int32_t, 8))(0x0F78DE06L, (VECTOR(int32_t, 4))(0x0F78DE06L, (VECTOR(int32_t, 2))(0x0F78DE06L, 0L), 0L), 0L, 0x0F78DE06L, 0L);
        VECTOR(uint16_t, 16) l_534 = (VECTOR(uint16_t, 16))(0x0568L, (VECTOR(uint16_t, 4))(0x0568L, (VECTOR(uint16_t, 2))(0x0568L, 1UL), 1UL), 1UL, 0x0568L, 1UL, (VECTOR(uint16_t, 2))(0x0568L, 1UL), (VECTOR(uint16_t, 2))(0x0568L, 1UL), 0x0568L, 1UL, 0x0568L, 1UL);
        VECTOR(uint8_t, 4) l_571 = (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 255UL), 255UL);
        int32_t l_597 = (-5L);
        int32_t l_605 = 0x61849762L;
        VECTOR(int32_t, 16) l_610 = (VECTOR(int32_t, 16))(0x4E334F8AL, (VECTOR(int32_t, 4))(0x4E334F8AL, (VECTOR(int32_t, 2))(0x4E334F8AL, 0x1BB625E7L), 0x1BB625E7L), 0x1BB625E7L, 0x4E334F8AL, 0x1BB625E7L, (VECTOR(int32_t, 2))(0x4E334F8AL, 0x1BB625E7L), (VECTOR(int32_t, 2))(0x4E334F8AL, 0x1BB625E7L), 0x4E334F8AL, 0x1BB625E7L, 0x4E334F8AL, 0x1BB625E7L);
        VECTOR(int32_t, 8) l_611 = (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, (-6L)), (-6L)), (-6L), 1L, (-6L));
        int64_t **l_613 = (void*)0;
        int32_t l_628 = 0x7DD999E7L;
        int8_t **l_695 = &p_1712->g_432;
        int32_t l_699 = 0x0FB58514L;
        VECTOR(int16_t, 8) l_723 = (VECTOR(int16_t, 8))(0x3BC4L, (VECTOR(int16_t, 4))(0x3BC4L, (VECTOR(int16_t, 2))(0x3BC4L, (-4L)), (-4L)), (-4L), 0x3BC4L, (-4L));
        VECTOR(int16_t, 4) l_761 = (VECTOR(int16_t, 4))(0x04AFL, (VECTOR(int16_t, 2))(0x04AFL, (-1L)), (-1L));
        VECTOR(int16_t, 8) l_765 = (VECTOR(int16_t, 8))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, (-10L)), (-10L)), (-10L), 1L, (-10L));
        VECTOR(int16_t, 2) l_766 = (VECTOR(int16_t, 2))((-3L), (-1L));
        int16_t l_767 = (-3L);
        VECTOR(uint16_t, 4) l_811 = (VECTOR(uint16_t, 4))(65529UL, (VECTOR(uint16_t, 2))(65529UL, 0x4314L), 0x4314L);
        union U0 ***l_841 = &l_566;
        int i, j;
        for (i = 0; i < 6; i++)
        {
            for (j = 0; j < 1; j++)
                l_511[i][j] = (void*)0;
        }
        for (p_1712->g_339.f3 = 0; (p_1712->g_339.f3 != 8); p_1712->g_339.f3++)
        { /* block id: 124 */
            l_511[3][0] = &p_1712->g_429;
        }
lbl_842:
        ++p_1712->g_517[0];
        if ((((*p_1712->g_432) != (((VECTOR(int32_t, 8))(rhadd(((VECTOR(int32_t, 4))((((VECTOR(int32_t, 8))(p_1712->g_520.s27517454)).lo && ((VECTOR(int32_t, 8))(add_sat(((VECTOR(int32_t, 16))(p_1712->g_521.s0130214323310150)).lo, ((VECTOR(int32_t, 8))((((VECTOR(int32_t, 16))(l_522.yzyzywxzzzxywwwx)).lo == ((VECTOR(int32_t, 16))((((VECTOR(int32_t, 16))(l_523.s7441233674404740)) ^ ((VECTOR(int32_t, 2))(l_524.s74)).yxyxxxxxxyxyxyxx))).odd)))))).odd))).wwxwywxy, ((VECTOR(int32_t, 4))(rotate(((VECTOR(int32_t, 4))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 2))((((VECTOR(int32_t, 4))((~((VECTOR(int32_t, 8))((((VECTOR(int32_t, 2))((((VECTOR(int32_t, 4))(0x4B699F79L, ((VECTOR(int32_t, 2))(0x5E381F1FL, 0x6FDCF9C6L)), 0x49F9E67CL)).hi && ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))((((VECTOR(int32_t, 2))(rotate(((VECTOR(int32_t, 4))((((VECTOR(int32_t, 8))(0x72646D18L, ((VECTOR(int32_t, 2))(0x3D322BBBL, 0x424B1B37L)), (((p_54 |= ((VECTOR(uint32_t, 2))(4294967295UL, 4294967294UL)).lo) | 4294967293UL) ^ (safe_mul_func_uint8_t_u_u(((((((((--p_53) ^ (safe_mul_func_uint16_t_u_u(0x229EL, (!((p_1712->g_475 , &p_1712->g_429) != (void*)0))))) , &p_1712->g_119[0]) != (((((p_1712->g_520.s3 , GROUP_DIVERGE(0, 1)) >= (~(((VECTOR(uint16_t, 8))(hadd(((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 16))(p_1712->g_533.yxyyyxyyyyyxyyyy)).s43 + ((VECTOR(uint16_t, 16))(l_534.sc6a77d6049ecea22)).sb3))).yyxyxxyx, ((VECTOR(uint16_t, 4))(p_1712->g_535.s0fe0)).zywxyywz))).s3 < ((safe_div_func_int32_t_s_s(((void*)0 == &l_511[3][0]), (-1L))) != p_56)))) < l_516[0][4][2]) || p_56) , &p_1712->g_119[7])) <= GROUP_DIVERGE(0, 1)) >= GROUP_DIVERGE(2, 1)) != p_55) && l_513), p_55))), 0x62E102CAL, 0x1F33043CL, 0x78C5D1CEL, (-1L))).odd <= ((VECTOR(int32_t, 4))(1L))))).odd, ((VECTOR(int32_t, 2))(0x350C47D7L))))).yxxy < ((VECTOR(int32_t, 4))(0x18C4AA22L))))), (-1L), ((VECTOR(int32_t, 2))(0x6AE30417L)), ((VECTOR(int32_t, 4))(2L)), ((VECTOR(int32_t, 4))(0x7ECEB4D1L)), 0x680E7965L)).sfa))).yyyxxxxy && ((VECTOR(int32_t, 8))(0x6DAC8737L))))).even))).even <= ((VECTOR(int32_t, 2))(1L))))).yyyy, ((VECTOR(int32_t, 4))((-10L))), ((VECTOR(int32_t, 4))((-4L)))))), ((VECTOR(int32_t, 4))((-1L)))))).zzyyxyxx))).s3 | l_501.y)) >= p_56))
        { /* block id: 130 */
            int32_t **l_538[3];
            uint32_t *l_544[10][10] = {{&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3},{&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3},{&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3},{&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3},{&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3},{&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3},{&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3},{&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3},{&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3},{&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3,&p_1712->g_339.f3}};
            union U0 ***l_568 = &l_566;
            VECTOR(uint8_t, 16) l_586 = (VECTOR(uint8_t, 16))(0x41L, (VECTOR(uint8_t, 4))(0x41L, (VECTOR(uint8_t, 2))(0x41L, 248UL), 248UL), 248UL, 0x41L, 248UL, (VECTOR(uint8_t, 2))(0x41L, 248UL), (VECTOR(uint8_t, 2))(0x41L, 248UL), 0x41L, 248UL, 0x41L, 248UL);
            VECTOR(int32_t, 4) l_608 = (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 3L), 3L);
            VECTOR(int32_t, 2) l_609 = (VECTOR(int32_t, 2))(0L, 0x2B3608CCL);
            int32_t l_673[5][6][6] = {{{0x35CB2F28L,(-1L),3L,3L,(-1L),0x35CB2F28L},{0x35CB2F28L,(-1L),3L,3L,(-1L),0x35CB2F28L},{0x35CB2F28L,(-1L),3L,3L,(-1L),0x35CB2F28L},{0x35CB2F28L,(-1L),3L,3L,(-1L),0x35CB2F28L},{0x35CB2F28L,(-1L),3L,3L,(-1L),0x35CB2F28L},{0x35CB2F28L,(-1L),3L,3L,(-1L),0x35CB2F28L}},{{0x35CB2F28L,(-1L),3L,3L,(-1L),0x35CB2F28L},{0x35CB2F28L,(-1L),3L,3L,(-1L),0x35CB2F28L},{0x35CB2F28L,(-1L),3L,3L,(-1L),0x35CB2F28L},{0x35CB2F28L,(-1L),3L,3L,(-1L),0x35CB2F28L},{0x35CB2F28L,(-1L),3L,3L,(-1L),0x35CB2F28L},{0x35CB2F28L,(-1L),3L,3L,(-1L),0x35CB2F28L}},{{0x35CB2F28L,(-1L),3L,3L,(-1L),0x35CB2F28L},{0x35CB2F28L,(-1L),3L,3L,(-1L),0x35CB2F28L},{0x35CB2F28L,(-1L),3L,3L,(-1L),0x35CB2F28L},{0x35CB2F28L,(-1L),3L,3L,(-1L),0x35CB2F28L},{0x35CB2F28L,(-1L),3L,3L,(-1L),0x35CB2F28L},{0x35CB2F28L,(-1L),3L,3L,(-1L),0x35CB2F28L}},{{0x35CB2F28L,(-1L),3L,3L,(-1L),0x35CB2F28L},{0x35CB2F28L,(-1L),3L,3L,(-1L),0x35CB2F28L},{0x35CB2F28L,(-1L),3L,3L,(-1L),0x35CB2F28L},{0x35CB2F28L,(-1L),3L,3L,(-1L),0x35CB2F28L},{0x35CB2F28L,(-1L),3L,3L,(-1L),0x35CB2F28L},{0x35CB2F28L,(-1L),3L,3L,(-1L),0x35CB2F28L}},{{0x35CB2F28L,(-1L),3L,3L,(-1L),0x35CB2F28L},{0x35CB2F28L,(-1L),3L,3L,(-1L),0x35CB2F28L},{0x35CB2F28L,(-1L),3L,3L,(-1L),0x35CB2F28L},{0x35CB2F28L,(-1L),3L,3L,(-1L),0x35CB2F28L},{0x35CB2F28L,(-1L),3L,3L,(-1L),0x35CB2F28L},{0x35CB2F28L,(-1L),3L,3L,(-1L),0x35CB2F28L}}};
            VECTOR(int8_t, 4) l_690 = (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x2CL), 0x2CL);
            uint16_t *l_693 = (void*)0;
            int8_t **l_694 = (void*)0;
            uint64_t l_696[10];
            uint8_t **l_748 = &p_1712->g_398;
            VECTOR(int8_t, 8) l_751 = (VECTOR(int8_t, 8))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0x02L), 0x02L), 0x02L, 0L, 0x02L);
            VECTOR(int8_t, 8) l_753 = (VECTOR(int8_t, 8))(0x00L, (VECTOR(int8_t, 4))(0x00L, (VECTOR(int8_t, 2))(0x00L, 6L), 6L), 6L, 0x00L, 6L);
            VECTOR(int16_t, 16) l_759 = (VECTOR(int16_t, 16))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, (-1L)), (-1L)), (-1L), 1L, (-1L), (VECTOR(int16_t, 2))(1L, (-1L)), (VECTOR(int16_t, 2))(1L, (-1L)), 1L, (-1L), 1L, (-1L));
            VECTOR(int16_t, 4) l_760 = (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), (-1L)), (-1L));
            int i, j, k;
            for (i = 0; i < 3; i++)
                l_538[i] = &l_511[4][0];
            for (i = 0; i < 10; i++)
                l_696[i] = 0x90C812C4FBF9759DL;
            p_1712->g_539 = &l_516[0][9][0];
            if (((safe_mul_func_uint16_t_u_u((safe_mul_func_uint8_t_u_u((((((VECTOR(int32_t, 2))(4L, 0x7C1B1BE0L)).odd , (p_54++)) > ((safe_mul_func_uint16_t_u_u(((safe_unary_minus_func_uint64_t_u((FAKE_DIVERGE(p_1712->group_0_offset, get_group_id(0), 10) || p_53))) , (safe_add_func_uint32_t_u_u(l_513, (safe_rshift_func_int16_t_s_u((safe_lshift_func_int16_t_s_u(((!(((safe_sub_func_uint32_t_u_u((safe_add_func_uint8_t_u_u((((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(p_1712->g_197.s8, l_560, ((VECTOR(int32_t, 2))(p_1712->g_561.xy)), ((safe_lshift_func_int16_t_s_s(((void*)0 == l_564[6]), 10)) <= ((l_565 == l_568) , p_55)), p_56, (-1L), p_56, 0L, 0x58A78B7AL, 0x56777AE7L, 0x40768B6DL, ((VECTOR(int32_t, 2))((-7L))), 0L, 0x18BFE896L)).sd, ((VECTOR(int32_t, 4))((-1L))), ((VECTOR(int32_t, 8))(0x76D41043L)), 0x718B5602L, 0x31F7F55FL, 1L)).se , p_55), 8L)), GROUP_DIVERGE(0, 1))) , 1L) == p_1712->g_429)) < l_501.y), p_1712->g_561.y)), p_1712->g_535.s0))))), GROUP_DIVERGE(1, 1))) , (*p_1712->g_539))) | p_1712->g_340.f0), 0xCEL)), 1L)) > p_1712->g_113))
            { /* block id: 133 */
                uint16_t *l_587 = (void*)0;
                int32_t l_588 = 1L;
                uint16_t *l_589 = (void*)0;
                uint16_t *l_590 = (void*)0;
                uint16_t *l_591 = (void*)0;
                uint16_t *l_592 = (void*)0;
                uint16_t *l_593[9][9][3] = {{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}}};
                int32_t l_594[10];
                int64_t *l_604[1];
                int i, j, k;
                for (i = 0; i < 10; i++)
                    l_594[i] = 0x0726E4FEL;
                for (i = 0; i < 1; i++)
                    l_604[i] = &p_1712->g_113;
                (*p_1712->g_539) = ((safe_add_func_uint8_t_u_u(((VECTOR(uint8_t, 8))(mad_sat(((VECTOR(uint8_t, 4))(l_571.zzww)).yzywxywz, ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(p_1712->g_572.wy)), 1UL, 0xAEL)).xywxyzwy, ((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 2))(l_575.s21)).yxyx << ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(min(((VECTOR(uint8_t, 2))(4UL, 3UL)), ((VECTOR(uint8_t, 2))(add_sat(((VECTOR(uint8_t, 16))(add_sat(((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 16))(l_578.yyxxyyxyyxyyyyyx)) + ((VECTOR(uint8_t, 4))(rhadd(((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 2))(p_1712->g_581.sc1)).xyyy + ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 8))(p_1712->g_582.zzyzzwzx)), ((VECTOR(uint8_t, 2))(mad_hi(((VECTOR(uint8_t, 2))(p_1712->g_583.xx)), ((VECTOR(uint8_t, 2))(0x87L, 0xA1L)), ((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 8))(l_586.s1bcfa97e)).odd + ((VECTOR(uint8_t, 8))(sub_sat(((VECTOR(uint8_t, 2))(251UL, 249UL)).yyyyxxxy, ((VECTOR(uint8_t, 16))(p_56, (+((l_597 = (--p_1712->g_407.s6)) , (safe_mod_func_int16_t_s_s(((p_53 ^ (GROUP_DIVERGE(0, 1) , (p_1712->g_82.s2 & (((VECTOR(uint64_t, 16))((safe_rshift_func_uint8_t_u_u(((*p_1712->g_432) || (l_588 > ((((void*)0 == &l_512) <= ((l_605 = ((VECTOR(int64_t, 8))((((VECTOR(int64_t, 16))((-1L), (safe_mod_func_int8_t_s_s((-8L), l_594[1])), ((VECTOR(int64_t, 8))((-1L))), (-6L), ((VECTOR(int64_t, 2))(0x02616E7E05F239ABL)), p_53, 0x4F7002D56E7B4261L, 5L)).even > ((VECTOR(int64_t, 8))(1L))))).s0) || l_594[4])) | FAKE_DIVERGE(p_1712->local_2_offset, get_local_id(2), 10)))), 1)), p_53, 0UL, ((VECTOR(uint64_t, 2))(18446744073709551611UL)), p_55, ((VECTOR(uint64_t, 2))(9UL)), ((VECTOR(uint64_t, 2))(1UL)), p_1712->g_78.s0, 18446744073709551609UL, FAKE_DIVERGE(p_1712->global_0_offset, get_global_id(0), 10), ((VECTOR(uint64_t, 2))(1UL)), 18446744073709551608UL)).se || p_56)))) == l_594[1]), 0x1700L)))), ((VECTOR(uint8_t, 8))(0UL)), 255UL, 8UL, ((VECTOR(uint8_t, 2))(0x98L)), 253UL, 249UL)).lo))).hi))).odd))), 248UL, 1UL, p_55, ((VECTOR(uint8_t, 2))(0x16L)), 0x53L)).s3806))), ((VECTOR(uint8_t, 4))(1UL))))).zxwyyxzxxxyzzwwx))).s2726 | ((VECTOR(uint8_t, 4))(0x10L))))).xwwwzxzyywzyxxxx, ((VECTOR(uint8_t, 16))(255UL))))).s8c, ((VECTOR(uint8_t, 2))(255UL)))))))), 0xD5L, 0UL))))).yxyxzxwz))).s2, p_53)) || (-1L));
            }
            else
            { /* block id: 138 */
                uint64_t l_606 = 0xB20873D2C938FA67L;
                uint16_t *l_618 = (void*)0;
                uint16_t *l_619 = (void*)0;
                uint16_t *l_620 = (void*)0;
                uint16_t *l_621 = (void*)0;
                uint16_t *l_622 = (void*)0;
                uint16_t *l_623 = (void*)0;
                uint16_t *l_624 = (void*)0;
                uint16_t *l_625 = (void*)0;
                uint16_t *l_626 = (void*)0;
                uint16_t *l_627 = (void*)0;
                uint8_t *l_637 = (void*)0;
                uint8_t *l_638 = &p_1712->g_327.f1;
                int32_t l_639 = 0x0DF48808L;
                int32_t l_640 = 0x7874B1A5L;
                uint32_t l_674 = 4294967295UL;
                volatile int16_t **l_698 = &p_1712->g_664;
                int8_t l_700 = (-9L);
                int8_t **l_713[5][1][8] = {{{(void*)0,&p_1712->g_432,(void*)0,(void*)0,(void*)0,&p_1712->g_432,(void*)0,&p_1712->g_432}},{{(void*)0,&p_1712->g_432,(void*)0,(void*)0,(void*)0,&p_1712->g_432,(void*)0,&p_1712->g_432}},{{(void*)0,&p_1712->g_432,(void*)0,(void*)0,(void*)0,&p_1712->g_432,(void*)0,&p_1712->g_432}},{{(void*)0,&p_1712->g_432,(void*)0,(void*)0,(void*)0,&p_1712->g_432,(void*)0,&p_1712->g_432}},{{(void*)0,&p_1712->g_432,(void*)0,(void*)0,(void*)0,&p_1712->g_432,(void*)0,&p_1712->g_432}}};
                int8_t *l_719 = &p_1712->g_365;
                int8_t **l_718 = &l_719;
                VECTOR(int8_t, 4) l_762 = (VECTOR(int8_t, 4))(0x34L, (VECTOR(int8_t, 2))(0x34L, 6L), 6L);
                int16_t *l_768 = &p_1712->g_645;
                int i, j, k;
                l_606 = (*p_1712->g_539);
                if ((p_54 , (((l_606 ^ (((l_516[0][1][0] > ((VECTOR(int32_t, 16))((((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(0x6674C770L, 0x175FB435L)), 0x642AB00BL, 1L)), ((VECTOR(int32_t, 2))((((VECTOR(int32_t, 4))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 16))((((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(add_sat(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))((((VECTOR(int32_t, 16))(mad_sat(((VECTOR(int32_t, 8))(mul_hi(((VECTOR(int32_t, 2))((((VECTOR(int32_t, 16))((((VECTOR(int32_t, 4))(p_1712->g_607.s7bfc)).zxzywyzyyxyyyzyz > ((VECTOR(int32_t, 4))((((VECTOR(int32_t, 2))((((VECTOR(int32_t, 4))(l_608.wxyy)).lo < ((VECTOR(int32_t, 2))((((VECTOR(int32_t, 2))(l_609.yy)) ^ ((VECTOR(int32_t, 4))((((VECTOR(int32_t, 16))((((VECTOR(int32_t, 2))(l_610.s20)).xyyyyxyyxyyxxyyy && ((VECTOR(int32_t, 2))((((VECTOR(int32_t, 16))(l_611.s5377112631224011)).scc | ((VECTOR(int32_t, 16))((((VECTOR(int32_t, 2))((-2L), 0x0A8C8923L)).xxxyyyyxxyxyxyxx < ((VECTOR(int32_t, 4))(0x05D9EB7EL, (-9L), 0x4E8FBF5BL, 0L)).xzzzxzxywxzwyzyx))).sb8))).yyxxxxxyyyxyyxyy))).scf0e && ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(p_1712->g_612.yy)), 0x410B725AL, (-1L)))))).even)))))).yyxx && ((VECTOR(int32_t, 8))((l_639 = ((+(l_514 &= ((l_613 == ((((safe_div_func_int64_t_s_s(((VECTOR(int64_t, 2))((-1L), 0x56A067E4CA41B875L)).hi, ((0x7C22F679DC719B9AL || (safe_lshift_func_uint16_t_u_s((l_628 = 65535UL), 10))) , p_56))) <= (safe_mod_func_int64_t_s_s((((safe_mul_func_int16_t_s_s(((safe_add_func_uint16_t_u_u((safe_add_func_uint8_t_u_u((0x36E21F3381FBCB65L != p_55), GROUP_DIVERGE(0, 1))), l_575.s0)) <= p_1712->g_156.x), p_53)) >= p_56) >= p_54), 0x4EA3E4E7249FC481L))) && p_53) , (void*)0)) ^ 1UL))) && p_54)), ((VECTOR(int32_t, 2))(0x6F38C6D9L)), (*p_1712->g_539), 0L, ((VECTOR(int32_t, 2))(0x388B63BFL)), 0x5A7A210BL)).even))).yzzyyxwwwxyyzxww))).sc0 != ((VECTOR(int32_t, 2))((-5L)))))).yxyxxyyx, ((VECTOR(int32_t, 8))(0L))))).s6673603352126214, ((VECTOR(int32_t, 16))((-1L))), ((VECTOR(int32_t, 16))(2L))))).s0bf0 | ((VECTOR(int32_t, 4))(0x1C0111B9L))))), (*p_1712->g_539), 0x7363FCEAL, 0x42A02718L, 0L)), ((VECTOR(int32_t, 8))(6L))))), ((VECTOR(int32_t, 8))(0x60C76068L)))) || ((VECTOR(int32_t, 16))(0x3A7CBC14L))))).sb425, ((VECTOR(int32_t, 4))((-10L))), ((VECTOR(int32_t, 4))(5L))))).odd && ((VECTOR(int32_t, 2))(0L))))), (-6L), 8L)).s4073750074302333 || ((VECTOR(int32_t, 16))(0L))))).s0) < 0x83L) , (*p_1712->g_539))) > 0x57B3L) >= p_56)))
                { /* block id: 143 */
                    uint8_t l_641 = 5UL;
                    int16_t *l_644 = &p_1712->g_645;
                    int64_t *l_655 = &l_500;
                    int64_t *l_656 = (void*)0;
                    int64_t *l_657 = &p_1712->g_113;
                    int16_t *l_671 = (void*)0;
                    int32_t l_672 = 0x678B2CE8L;
                    l_641++;
                    p_1712->g_156.x = (((*l_644) ^= p_54) || (safe_lshift_func_int8_t_s_s((safe_unary_minus_func_uint8_t_u(((safe_lshift_func_uint16_t_u_s((((((safe_lshift_func_int8_t_s_u(((((*l_657) = ((*l_655) = ((((VECTOR(uint8_t, 8))(p_1712->g_653.s17263756)).s1 || p_53) == ((VECTOR(int8_t, 4))(l_654.s9693)).y))) < l_641) , ((*p_1712->g_432) = (safe_add_func_uint8_t_u_u((((p_1712->g_645 = p_53) | (safe_add_func_int64_t_s_s((((*p_1712->g_539) = (safe_mul_func_uint16_t_u_u((l_618 == p_1712->g_664), (0xEFL >= (safe_sub_func_int8_t_s_s(((VECTOR(int8_t, 4))(l_668.s1140)).w, (0x16E4L || (l_672 = (safe_div_func_int32_t_s_s((p_1712->g_581.s7 | p_1712->g_167.y), 0x58B09622L)))))))))) > l_641), p_55))) >= l_515), l_641)))), 7)) || (*p_1712->g_539)) | 3L) && GROUP_DIVERGE(1, 1)) != l_673[3][2][5]), 14)) ^ p_53))), 2)));
                    ++l_674;
                }
                else
                { /* block id: 154 */
                    int32_t *l_681[8][3][4] = {{{(void*)0,&l_639,&l_640,(void*)0},{(void*)0,&l_639,&l_640,(void*)0},{(void*)0,&l_639,&l_640,(void*)0}},{{(void*)0,&l_639,&l_640,(void*)0},{(void*)0,&l_639,&l_640,(void*)0},{(void*)0,&l_639,&l_640,(void*)0}},{{(void*)0,&l_639,&l_640,(void*)0},{(void*)0,&l_639,&l_640,(void*)0},{(void*)0,&l_639,&l_640,(void*)0}},{{(void*)0,&l_639,&l_640,(void*)0},{(void*)0,&l_639,&l_640,(void*)0},{(void*)0,&l_639,&l_640,(void*)0}},{{(void*)0,&l_639,&l_640,(void*)0},{(void*)0,&l_639,&l_640,(void*)0},{(void*)0,&l_639,&l_640,(void*)0}},{{(void*)0,&l_639,&l_640,(void*)0},{(void*)0,&l_639,&l_640,(void*)0},{(void*)0,&l_639,&l_640,(void*)0}},{{(void*)0,&l_639,&l_640,(void*)0},{(void*)0,&l_639,&l_640,(void*)0},{(void*)0,&l_639,&l_640,(void*)0}},{{(void*)0,&l_639,&l_640,(void*)0},{(void*)0,&l_639,&l_640,(void*)0},{(void*)0,&l_639,&l_640,(void*)0}}};
                    int8_t *l_697 = (void*)0;
                    uint64_t *l_722 = &p_1712->g_281;
                    int32_t l_728 = 0x79AE26B3L;
                    union U0 *l_735 = &p_1712->g_736;
                    int64_t l_741 = (-1L);
                    int i, j, k;
                    if (((!p_55) < (safe_rshift_func_int16_t_s_u((safe_rshift_func_uint16_t_u_u((l_681[7][1][3] != &p_1712->g_429), GROUP_DIVERGE(1, 1))), (safe_add_func_int16_t_s_s((safe_sub_func_int8_t_s_s((p_1712->g_475 = (safe_div_func_int32_t_s_s(((safe_lshift_func_int8_t_s_u(((**l_507) ^= ((VECTOR(int8_t, 2))(l_690.xy)).hi), ((4294967295UL > (l_512 = (safe_mul_func_int16_t_s_s(l_606, (((void*)0 != l_693) >= ((*p_1712->g_539) > (l_694 == l_695))))))) ^ p_1712->g_249.s4))) >= p_55), l_696[6]))), 254UL)), p_56))))))
                    { /* block id: 158 */
                        uint16_t l_701 = 0x9DA7L;
                        l_698 = &p_1712->g_664;
                        --l_701;
                        p_1712->g_704 = (p_1712->g_539 = &p_1712->g_429);
                        p_1712->g_704 = &l_699;
                    }
                    else
                    { /* block id: 164 */
                        uint64_t *l_707[4][8][6] = {{{&p_1712->g_151,&l_606,&l_696[2],&l_696[1],&p_1712->g_151,&l_696[1]},{&p_1712->g_151,&l_606,&l_696[2],&l_696[1],&p_1712->g_151,&l_696[1]},{&p_1712->g_151,&l_606,&l_696[2],&l_696[1],&p_1712->g_151,&l_696[1]},{&p_1712->g_151,&l_606,&l_696[2],&l_696[1],&p_1712->g_151,&l_696[1]},{&p_1712->g_151,&l_606,&l_696[2],&l_696[1],&p_1712->g_151,&l_696[1]},{&p_1712->g_151,&l_606,&l_696[2],&l_696[1],&p_1712->g_151,&l_696[1]},{&p_1712->g_151,&l_606,&l_696[2],&l_696[1],&p_1712->g_151,&l_696[1]},{&p_1712->g_151,&l_606,&l_696[2],&l_696[1],&p_1712->g_151,&l_696[1]}},{{&p_1712->g_151,&l_606,&l_696[2],&l_696[1],&p_1712->g_151,&l_696[1]},{&p_1712->g_151,&l_606,&l_696[2],&l_696[1],&p_1712->g_151,&l_696[1]},{&p_1712->g_151,&l_606,&l_696[2],&l_696[1],&p_1712->g_151,&l_696[1]},{&p_1712->g_151,&l_606,&l_696[2],&l_696[1],&p_1712->g_151,&l_696[1]},{&p_1712->g_151,&l_606,&l_696[2],&l_696[1],&p_1712->g_151,&l_696[1]},{&p_1712->g_151,&l_606,&l_696[2],&l_696[1],&p_1712->g_151,&l_696[1]},{&p_1712->g_151,&l_606,&l_696[2],&l_696[1],&p_1712->g_151,&l_696[1]},{&p_1712->g_151,&l_606,&l_696[2],&l_696[1],&p_1712->g_151,&l_696[1]}},{{&p_1712->g_151,&l_606,&l_696[2],&l_696[1],&p_1712->g_151,&l_696[1]},{&p_1712->g_151,&l_606,&l_696[2],&l_696[1],&p_1712->g_151,&l_696[1]},{&p_1712->g_151,&l_606,&l_696[2],&l_696[1],&p_1712->g_151,&l_696[1]},{&p_1712->g_151,&l_606,&l_696[2],&l_696[1],&p_1712->g_151,&l_696[1]},{&p_1712->g_151,&l_606,&l_696[2],&l_696[1],&p_1712->g_151,&l_696[1]},{&p_1712->g_151,&l_606,&l_696[2],&l_696[1],&p_1712->g_151,&l_696[1]},{&p_1712->g_151,&l_606,&l_696[2],&l_696[1],&p_1712->g_151,&l_696[1]},{&p_1712->g_151,&l_606,&l_696[2],&l_696[1],&p_1712->g_151,&l_696[1]}},{{&p_1712->g_151,&l_606,&l_696[2],&l_696[1],&p_1712->g_151,&l_696[1]},{&p_1712->g_151,&l_606,&l_696[2],&l_696[1],&p_1712->g_151,&l_696[1]},{&p_1712->g_151,&l_606,&l_696[2],&l_696[1],&p_1712->g_151,&l_696[1]},{&p_1712->g_151,&l_606,&l_696[2],&l_696[1],&p_1712->g_151,&l_696[1]},{&p_1712->g_151,&l_606,&l_696[2],&l_696[1],&p_1712->g_151,&l_696[1]},{&p_1712->g_151,&l_606,&l_696[2],&l_696[1],&p_1712->g_151,&l_696[1]},{&p_1712->g_151,&l_606,&l_696[2],&l_696[1],&p_1712->g_151,&l_696[1]},{&p_1712->g_151,&l_606,&l_696[2],&l_696[1],&p_1712->g_151,&l_696[1]}}};
                        int32_t l_708 = (-1L);
                        int8_t **l_714 = &l_697;
                        int8_t ***l_715 = &p_1712->g_431;
                        int8_t ***l_716 = &p_1712->g_431;
                        int8_t ***l_717[5][4] = {{&l_713[4][0][2],&l_713[4][0][2],&l_695,(void*)0},{&l_713[4][0][2],&l_713[4][0][2],&l_695,(void*)0},{&l_713[4][0][2],&l_713[4][0][2],&l_695,(void*)0},{&l_713[4][0][2],&l_713[4][0][2],&l_695,(void*)0},{&l_713[4][0][2],&l_713[4][0][2],&l_695,(void*)0}};
                        uint16_t *l_724[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                        int64_t *l_725 = &p_1712->g_113;
                        int i, j, k;
                        l_639 = ((*p_1712->g_432) & (~(safe_add_func_uint64_t_u_u((l_708 = p_1712->g_94.x), (p_1712->g_197.sb = (safe_sub_func_uint16_t_u_u((((((*p_1712->g_704) &= (((safe_mod_func_int32_t_s_s((l_713[2][0][6] == (l_718 = l_714)), (safe_mul_func_int8_t_s_s(((&p_1712->g_281 != l_722) , (((*l_725) = (((VECTOR(int16_t, 16))((((VECTOR(int16_t, 4))(l_723.s6620)).zyyzzxxyxywzywyz <= ((VECTOR(int16_t, 2))((((VECTOR(int16_t, 8))((((p_1712->g_533.y = 1UL) , l_640) >= ((p_1712->g_249.s1 >= (-9L)) > p_1712->g_572.z)), 0x71F6L, ((VECTOR(int16_t, 4))(0x0CC2L)), (-1L), (-2L))).s27 && ((VECTOR(int16_t, 2))(8L))))).xxxxxxxxyxxxxyxy))).sc , 0x1647055C401EB2BAL)) ^ (-1L))), 0xF7L)))) != l_639) > l_575.s0)) >= p_56) , (-1L)) | 0x05L), p_1712->g_189.s1)))))));
                    }
                    if (l_606)
                        goto lbl_737;
                    if ((FAKE_DIVERGE(p_1712->global_0_offset, get_global_id(0), 10) == (safe_sub_func_uint64_t_u_u(l_728, (((((void*)0 == (*p_1712->g_265)) != ((2UL & (safe_div_func_uint16_t_u_u((safe_rshift_func_int16_t_s_u(p_1712->g_125.y, 7)), GROUP_DIVERGE(1, 1)))) || (safe_sub_func_uint16_t_u_u((p_1712->g_535.sd = p_1712->g_612.y), GROUP_DIVERGE(0, 1))))) != ((+(-9L)) && (p_53 ^ (((void*)0 == l_735) , l_516[0][4][2])))) , p_55)))))
                    { /* block id: 174 */
lbl_737:
                        l_511[3][0] = &l_639;
                        --l_738;
                    }
                    else
                    { /* block id: 178 */
                        l_639 ^= l_741;
                    }
                    return l_516[2][0][2];
                }
                (*p_1712->g_704) = (((((p_54 == (safe_mul_func_int16_t_s_s(((safe_rshift_func_int8_t_s_s((p_1712->g_752.z = ((safe_mul_func_uint16_t_u_u((p_55 , (~(&l_638 != l_748))), (safe_add_func_uint16_t_u_u((((VECTOR(int8_t, 4))((((VECTOR(int8_t, 4))(l_751.s4770)) >= ((VECTOR(int8_t, 8))(max(((VECTOR(int8_t, 2))(0x13L, 0x39L)).yxxxyyxy, ((VECTOR(int8_t, 4))(sub_sat(((VECTOR(int8_t, 2))((((VECTOR(int8_t, 4))(p_1712->g_752.zwyw)).even && ((VECTOR(int8_t, 2))((-1L), 8L))))).xyyx, ((VECTOR(int8_t, 2))(hadd(((VECTOR(int8_t, 16))(l_753.s3302701463327763)).s13, ((VECTOR(int8_t, 2))(0L, 0x41L))))).xyyx))).xzyxywxw))).lo))).w >= (safe_sub_func_uint8_t_u_u((safe_rshift_func_uint16_t_u_s(((VECTOR(uint16_t, 8))(p_1712->g_758.yxxxyxzw)).s7, 0)), (l_513 = ((VECTOR(int8_t, 16))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 16),((VECTOR(int8_t, 4))((((VECTOR(int8_t, 2))(safe_clamp_func(VECTOR(int8_t, 2),VECTOR(int8_t, 2),((VECTOR(int8_t, 4))((-1L), 0L, (-1L), 0x1FL)).even, ((VECTOR(int8_t, 8))(0x55L, ((*p_1712->g_432) = ((5UL & ((p_1712->g_135 |= (((*p_1712->g_432) || 0x9AL) >= l_512)) , ((*l_768) = ((VECTOR(int16_t, 2))(min(((VECTOR(int16_t, 2))(safe_clamp_func(VECTOR(int16_t, 2),VECTOR(int16_t, 2),((VECTOR(int16_t, 2))(safe_clamp_func(VECTOR(int16_t, 2),VECTOR(int16_t, 2),((VECTOR(int16_t, 2))(l_759.s4e)), ((VECTOR(int16_t, 8))(l_760.zywxywxz)).s60, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(add_sat(((VECTOR(int16_t, 4))((((VECTOR(int16_t, 4))((((VECTOR(int16_t, 2))(hadd(((VECTOR(int16_t, 4))((!((VECTOR(int16_t, 4))(l_761.wwyx))))).even, ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(upsample(((VECTOR(int8_t, 2))(add_sat(((VECTOR(int8_t, 2))(mul_hi(((VECTOR(int8_t, 8))(l_762.yxxzyxzx)).s44, ((VECTOR(int8_t, 2))((-1L), 1L))))), ((VECTOR(int8_t, 16))(l_763.s4336507753716452)).sd6))).yxyyyyyy, ((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 2))(l_764.yw)).xyyyyxyx | ((VECTOR(uint8_t, 2))(9UL, 255UL)).yyxyyyxx)))))), 0x182DL, 3L, ((VECTOR(int16_t, 4))((((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(l_765.s57)), 1L, ((((VECTOR(int16_t, 8))(l_766.yyyyxyyx)).s3 > ((p_54 | p_53) < 4UL)) > l_767), 0L, p_54, ((VECTOR(int16_t, 2))(8L)), 0L, p_1712->g_94.y, ((VECTOR(int16_t, 4))(0x47FFL)), (-1L), (-7L))).sd025 && ((VECTOR(int16_t, 4))(0x6257L))))), 9L, 0x572EL)).sd5))).yyxx > ((VECTOR(int16_t, 4))(0L))))) == ((VECTOR(int16_t, 4))(0L))))).odd, ((VECTOR(int16_t, 2))(0x133FL))))), 0x66AEL, 0x3B0DL)).hi))), ((VECTOR(int16_t, 2))(0x2424L)), ((VECTOR(int16_t, 2))(0x41FAL))))), (int16_t)l_639))).lo))) , 0x06L)), ((VECTOR(int8_t, 4))(0L)), (-1L), 0L)).s63, ((VECTOR(int8_t, 2))((-1L)))))).yxyx & ((VECTOR(int8_t, 4))(0x7EL))))).wzzwwzwzzzywzxzw, ((VECTOR(int8_t, 16))(0x54L)), ((VECTOR(int8_t, 16))(0L))))).s0)))), GROUP_DIVERGE(1, 1))))) > 0x35L)), p_1712->g_429)) & p_1712->g_612.y), p_1712->g_407.s3))) & 0x40C17F5D11DCDCA0L) & l_762.z) || 0x445BF16FBE49CB71L) | 0x7AC1306DL);
            }
            p_1712->g_769--;
        }
        else
        { /* block id: 191 */
            int64_t *l_775 = &p_1712->g_113;
            VECTOR(uint32_t, 8) l_797 = (VECTOR(uint32_t, 8))(0x6C7CDCCEL, (VECTOR(uint32_t, 4))(0x6C7CDCCEL, (VECTOR(uint32_t, 2))(0x6C7CDCCEL, 0xCE6A218EL), 0xCE6A218EL), 0xCE6A218EL, 0x6C7CDCCEL, 0xCE6A218EL);
            int32_t l_839 = 0x13A859CAL;
            int32_t *l_858 = &l_605;
            int i;
            l_514 = (p_1712->g_167.y , p_54);
            (*p_1712->g_704) = (*p_1712->g_539);
            l_514 |= (~l_772);
            if (((((*l_775) |= (safe_lshift_func_int16_t_s_u(p_1712->g_653.s4, 10))) == p_55) <= ((VECTOR(int32_t, 4))(l_776, 1L, 0x170BED27L, 7L)).w))
            { /* block id: 196 */
                uint16_t *l_804 = &l_738;
                int64_t *l_807 = &p_1712->g_808;
                int32_t l_812 = (-2L);
                (*p_1712->g_704) = (safe_mod_func_int16_t_s_s(p_1712->g_402.s1, (safe_rshift_func_uint8_t_u_s(((safe_lshift_func_int8_t_s_u((((((safe_mod_func_uint8_t_u_u(((p_53 != p_54) < (safe_div_func_uint32_t_u_u((+((safe_sub_func_int64_t_s_s(((safe_add_func_uint16_t_u_u(p_54, ((safe_add_func_int16_t_s_s(l_772, (safe_mod_func_int8_t_s_s((safe_div_func_int16_t_s_s(p_1712->g_339.f3, (((((0x4D6BDBB613DE043CL | ((((VECTOR(uint32_t, 2))(min(((VECTOR(uint32_t, 16))(l_797.s2235026702103411)).sa7, (uint32_t)(((GROUP_DIVERGE(2, 1) && (safe_mod_func_int64_t_s_s((((*l_807) = (safe_rshift_func_int8_t_s_s((safe_sub_func_int16_t_s_s(((VECTOR(int16_t, 2))((-10L), 0x6626L)).lo, ((*l_804)++))), 2))) , (safe_sub_func_uint16_t_u_u(65530UL, l_764.x))), l_560))) > p_1712->g_325[2][6].f0) ^ l_506.sf)))).hi , (*p_1712->g_397)) != (void*)0)) , l_797.s2) & l_811.w) > p_1712->g_78.s5) , 7L))), 0x79L)))) , (-3L)))) & p_54), 0x713D75096A1AE7ADL)) | GROUP_DIVERGE(2, 1))), 0x2D39D91AL))), p_56)) > l_654.s9) != GROUP_DIVERGE(1, 1)) > l_812) || p_53), 0)) < 0x37L), (*p_1712->g_432)))));
            }
            else
            { /* block id: 200 */
                VECTOR(int32_t, 8) l_830 = (VECTOR(int32_t, 8))((-10L), (VECTOR(int32_t, 4))((-10L), (VECTOR(int32_t, 2))((-10L), 0x55EF87C6L), 0x55EF87C6L), 0x55EF87C6L, (-10L), 0x55EF87C6L);
                union U0 **l_836 = &l_567;
                uint16_t *l_837 = (void*)0;
                uint16_t *l_838 = (void*)0;
                uint32_t *l_840 = &p_1712->g_338[5].f3;
                int i;
lbl_843:
                if ((((safe_lshift_func_uint16_t_u_s((p_1712->g_323[1][2][4].f0 ^ ((*l_840) = ((VECTOR(uint32_t, 16))((((VECTOR(uint32_t, 8))(p_1712->g_815.yxzxxxxx)).s6000700473311104 | ((VECTOR(uint32_t, 8))(upsample(((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 4))((safe_mod_func_uint64_t_u_u((((~(safe_unary_minus_func_int64_t_s((safe_rshift_func_int8_t_s_s(l_797.s3, 7))))) | ((safe_unary_minus_func_int32_t_s((l_839 = ((safe_rshift_func_uint8_t_u_s((safe_lshift_func_uint8_t_u_u(l_797.s6, ((void*)0 == p_1712->g_828))), 3)) < ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))((((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(l_830.s0326)), p_56, 0x4E3AD0A7L, (-1L), 0x4DBF91D5L)).s35 >= ((VECTOR(int32_t, 8))(((*p_1712->g_704) = (((safe_unary_minus_func_int8_t_s((safe_mod_func_uint16_t_u_u((p_1712->g_758.w = (251UL || (safe_add_func_uint32_t_u_u(0UL, (((*l_775) = ((void*)0 != l_836)) != 0x2BE822C21269D173L))))), p_1712->g_12)))) >= l_501.y) || (*p_1712->g_539))), (*p_1712->g_704), ((VECTOR(int32_t, 2))(1L)), ((VECTOR(int32_t, 2))((-1L))), 0L, 4L)).s51))), 0x3B5499E8L, l_830.s4, p_54, ((VECTOR(int32_t, 8))((-1L))), ((VECTOR(int32_t, 2))(0x3C59ADDFL)), 0x2CA12129L)).sb)))) ^ p_1712->g_156.x)) == p_1712->g_815.y), p_54)), 65527UL, 0x4900L, 0x3F9AL)).even + ((VECTOR(uint16_t, 2))(1UL))))).yxyxxxxx, ((VECTOR(uint16_t, 8))(65535UL))))).s1065104256462536))).s5)), l_654.s0)) , l_841) == &p_1712->g_319))
                { /* block id: 206 */
                    if (l_512)
                        goto lbl_842;
                    if (l_767)
                        goto lbl_843;
                }
                else
                { /* block id: 208 */
                    return l_513;
                }
                if ((*p_1712->g_539))
                { /* block id: 212 */
                    uint16_t *l_846 = &l_738;
                    int32_t l_849[10][1][8] = {{{4L,0x0F753A24L,4L,4L,0x0F753A24L,4L,4L,0x0F753A24L}},{{4L,0x0F753A24L,4L,4L,0x0F753A24L,4L,4L,0x0F753A24L}},{{4L,0x0F753A24L,4L,4L,0x0F753A24L,4L,4L,0x0F753A24L}},{{4L,0x0F753A24L,4L,4L,0x0F753A24L,4L,4L,0x0F753A24L}},{{4L,0x0F753A24L,4L,4L,0x0F753A24L,4L,4L,0x0F753A24L}},{{4L,0x0F753A24L,4L,4L,0x0F753A24L,4L,4L,0x0F753A24L}},{{4L,0x0F753A24L,4L,4L,0x0F753A24L,4L,4L,0x0F753A24L}},{{4L,0x0F753A24L,4L,4L,0x0F753A24L,4L,4L,0x0F753A24L}},{{4L,0x0F753A24L,4L,4L,0x0F753A24L,4L,4L,0x0F753A24L}},{{4L,0x0F753A24L,4L,4L,0x0F753A24L,4L,4L,0x0F753A24L}}};
                    int i, j, k;
                    l_849[6][0][7] |= (safe_lshift_func_uint16_t_u_u(FAKE_DIVERGE(p_1712->local_2_offset, get_local_id(2), 10), ((*l_846)++)));
                }
                else
                { /* block id: 215 */
                    uint16_t ***l_854 = &p_1712->g_852;
                    (*p_1712->g_539) = (safe_add_func_int16_t_s_s((p_53 >= l_763.s3), (p_1712->g_82.s0 ^= (p_53 != 252UL))));
                    (*l_854) = p_1712->g_852;
                    for (p_1712->g_321.f1 = (-10); (p_1712->g_321.f1 == 18); p_1712->g_321.f1++)
                    { /* block id: 221 */
                        int32_t **l_857[7];
                        int i;
                        for (i = 0; i < 7; i++)
                            l_857[i] = &l_511[3][0];
                        l_858 = &l_512;
                    }
                }
            }
        }
    }
lbl_890:
    (*p_1712->g_539) = (safe_rshift_func_uint8_t_u_u((((VECTOR(uint64_t, 8))(18446744073709551615UL, ((VECTOR(uint64_t, 8))(l_861.s07734665)).s3, ((VECTOR(uint64_t, 4))(GROUP_DIVERGE(0, 1), ((VECTOR(uint64_t, 2))(l_862.xy)), 0UL)), 1UL, 0UL)).s4 >= (((((((VECTOR(int8_t, 4))((safe_mul_func_uint16_t_u_u(((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 2))(65535UL, 0UL)).yxxxyyyy | ((VECTOR(uint16_t, 16))(0UL, 0UL, 0x57E2L, ((VECTOR(uint16_t, 2))(l_865.sd9)), ((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 8))(l_868.s3dc9a4ec)) + ((VECTOR(uint16_t, 2))(0UL, 0UL)).xyyxxyyx))), ((VECTOR(uint16_t, 2))(clz(((VECTOR(uint16_t, 8))((1UL != (safe_rshift_func_uint8_t_u_u(l_871[0], ((VECTOR(uint8_t, 16))(0xC5L, ((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 16))(hadd(((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 8))(0UL, ((VECTOR(uint8_t, 4))(max(((VECTOR(uint8_t, 16))(0x30L, ((VECTOR(uint8_t, 8))(clz(((VECTOR(uint8_t, 4))((((*p_1712->g_432) , p_54) | ((safe_div_func_uint16_t_u_u((safe_mul_func_uint16_t_u_u((((((safe_mul_func_int8_t_s_s(((VECTOR(int8_t, 2))(0x30L, (-5L))).lo, (l_868.sa > l_578.x))) ^ (((safe_sub_func_int8_t_s_s(l_501.x, ((((((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 16))(l_886.yyzywzwxzzzxyzww)).s9ff3 - ((VECTOR(uint8_t, 16))((((void*)0 == (*l_507)) , l_500), 0x41L, ((VECTOR(uint8_t, 2))(0x4CL)), 2UL, p_54, 1UL, 1UL, p_56, p_55, ((VECTOR(uint8_t, 4))(251UL)), 0x86L, 0xC4L)).s44be))).w >= p_55) >= FAKE_DIVERGE(p_1712->local_0_offset, get_local_id(0), 10)) == 1L) ^ 0x1BE93850L))) > 0L) == l_764.z)) >= p_54) & GROUP_DIVERGE(0, 1)) == p_53), p_1712->g_413.sf)), 9UL)) == p_54)), ((VECTOR(uint8_t, 2))(255UL)), 0xB9L)).xywwyzxz))), FAKE_DIVERGE(p_1712->global_0_offset, get_global_id(0), 10), FAKE_DIVERGE(p_1712->group_1_offset, get_group_id(1), 10), ((VECTOR(uint8_t, 2))(0x5DL)), 0UL, 0x5FL, 0x75L)).s8d26, (uint8_t)0x3AL))), 255UL, 2UL, 0UL)).s5613245055437044 - ((VECTOR(uint8_t, 16))(0x16L))))), ((VECTOR(uint8_t, 16))(1UL))))).s62 & ((VECTOR(uint8_t, 2))(0x68L))))).xyyyxyyyyyyyxyxy + ((VECTOR(uint8_t, 16))(0x93L))))).s0, 0x81L, 0x3FL, ((VECTOR(uint8_t, 2))(0x83L)), 0x5CL, 255UL, ((VECTOR(uint8_t, 2))(246UL)), 1UL, l_887, p_55, ((VECTOR(uint8_t, 2))(250UL)), 0xBBL)).s6))), 0x1B04L, ((VECTOR(uint16_t, 4))(0x4006L)), 0xE3E7L, 65532UL)).s22))), 0UL)).even))).s6, 0x5CC6L)), 0x46L, 0x76L, (-7L))).x || 0UL) <= p_54) , p_56) < p_55) , p_53)), 0));
    for (p_1712->g_334.f3 = 0; (p_1712->g_334.f3 >= 11); p_1712->g_334.f3 = safe_add_func_int16_t_s_s(p_1712->g_334.f3, 3))
    { /* block id: 231 */
        if (p_1712->g_429)
            goto lbl_890;
        if ((*p_1712->g_539))
            continue;
    }
    return l_862.y;
}


/* ------------------------------------------ */
/* 
 * reads : p_1712->g_110 p_1712->g_125 p_1712->g_12 p_1712->g_82 p_1712->g_151 p_1712->g_156 p_1712->g_72 p_1712->g_167 p_1712->g_94 p_1712->g_188 p_1712->g_189 p_1712->g_197 p_1712->g_200 p_1712->g_78 p_1712->g_230 p_1712->g_241 p_1712->g_247 p_1712->g_248 p_1712->g_249 p_1712->g_281 p_1712->g_319 p_1712->g_90 p_1712->g_339.f0 p_1712->g_113 p_1712->g_89 p_1712->g_135 p_1712->g_429 p_1712->g_336.f1 p_1712->g_331.f1 p_1712->g_334.f0 p_1712->g_431 p_1712->g_432 p_1712->g_365 p_1712->g_340.f0 p_1712->g_321.f1
 * writes: p_1712->g_119 p_1712->g_135 p_1712->g_151 p_1712->g_94 p_1712->g_156 p_1712->g_265 p_1712->g_281 p_1712->g_317.f3 p_1712->g_431 p_1712->g_336.f1 p_1712->g_331.f1 p_1712->g_365 p_1712->g_402 p_1712->g_321.f1
 */
VECTOR(uint16_t, 2)  func_63(int32_t  p_64, struct S1 * p_1712)
{ /* block id: 8 */
    int64_t **l_118 = (void*)0;
    int64_t **l_122 = (void*)0;
    int64_t *l_124 = (void*)0;
    int64_t **l_123 = &l_124;
    VECTOR(uint8_t, 4) l_126 = (VECTOR(uint8_t, 4))(9UL, (VECTOR(uint8_t, 2))(9UL, 0x73L), 0x73L);
    int64_t *l_133 = (void*)0;
    int32_t *l_134 = &p_1712->g_135;
    uint16_t *l_136 = (void*)0;
    uint16_t *l_137 = (void*)0;
    uint16_t *l_138 = (void*)0;
    uint16_t *l_139 = (void*)0;
    uint16_t *l_140 = (void*)0;
    uint16_t *l_141 = (void*)0;
    uint16_t *l_142 = (void*)0;
    uint16_t *l_143 = (void*)0;
    uint16_t *l_144 = (void*)0;
    uint16_t *l_145 = (void*)0;
    uint16_t *l_146 = (void*)0;
    uint16_t *l_147 = (void*)0;
    int32_t l_148 = (-1L);
    int8_t *l_149[6] = {&p_1712->g_12,&p_1712->g_12,&p_1712->g_12,&p_1712->g_12,&p_1712->g_12,&p_1712->g_12};
    uint64_t *l_150 = &p_1712->g_151;
    VECTOR(uint64_t, 16) l_166 = (VECTOR(uint64_t, 16))(18446744073709551615UL, (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0xA9AB640BF3EC7EDDL), 0xA9AB640BF3EC7EDDL), 0xA9AB640BF3EC7EDDL, 18446744073709551615UL, 0xA9AB640BF3EC7EDDL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0xA9AB640BF3EC7EDDL), (VECTOR(uint64_t, 2))(18446744073709551615UL, 0xA9AB640BF3EC7EDDL), 18446744073709551615UL, 0xA9AB640BF3EC7EDDL, 18446744073709551615UL, 0xA9AB640BF3EC7EDDL);
    VECTOR(uint64_t, 4) l_191 = (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 18446744073709551613UL), 18446744073709551613UL);
    VECTOR(uint64_t, 2) l_192 = (VECTOR(uint64_t, 2))(0x6B1F519B726C3776L, 1UL);
    VECTOR(uint64_t, 16) l_204 = (VECTOR(uint64_t, 16))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 0xEA53087AE741E8B3L), 0xEA53087AE741E8B3L), 0xEA53087AE741E8B3L, 1UL, 0xEA53087AE741E8B3L, (VECTOR(uint64_t, 2))(1UL, 0xEA53087AE741E8B3L), (VECTOR(uint64_t, 2))(1UL, 0xEA53087AE741E8B3L), 1UL, 0xEA53087AE741E8B3L, 1UL, 0xEA53087AE741E8B3L);
    int32_t l_216 = 0L;
    uint8_t l_217 = 0x5DL;
    VECTOR(int64_t, 2) l_254 = (VECTOR(int64_t, 2))(5L, 1L);
    VECTOR(uint8_t, 4) l_266 = (VECTOR(uint8_t, 4))(0xDBL, (VECTOR(uint8_t, 2))(0xDBL, 0UL), 0UL);
    union U0 *l_316 = &p_1712->g_317;
    union U0 **l_315 = &l_316;
    int32_t l_378 = 1L;
    uint8_t **l_401[3];
    int32_t l_439 = 0x78CB7659L;
    int32_t l_441 = 1L;
    int32_t l_442 = 0x15250DB6L;
    VECTOR(uint16_t, 2) l_446 = (VECTOR(uint16_t, 2))(0xDF47L, 0x2DF6L);
    int32_t l_457 = 0x3F57EACDL;
    int32_t l_458 = 0x4B804B9BL;
    int32_t l_459[7][8] = {{0x6DFB27AFL,0x22F056A9L,0x17E6CD3EL,0x1DA6DF85L,0x47C4D2A1L,0x1DA6DF85L,0x17E6CD3EL,0x22F056A9L},{0x6DFB27AFL,0x22F056A9L,0x17E6CD3EL,0x1DA6DF85L,0x47C4D2A1L,0x1DA6DF85L,0x17E6CD3EL,0x22F056A9L},{0x6DFB27AFL,0x22F056A9L,0x17E6CD3EL,0x1DA6DF85L,0x47C4D2A1L,0x1DA6DF85L,0x17E6CD3EL,0x22F056A9L},{0x6DFB27AFL,0x22F056A9L,0x17E6CD3EL,0x1DA6DF85L,0x47C4D2A1L,0x1DA6DF85L,0x17E6CD3EL,0x22F056A9L},{0x6DFB27AFL,0x22F056A9L,0x17E6CD3EL,0x1DA6DF85L,0x47C4D2A1L,0x1DA6DF85L,0x17E6CD3EL,0x22F056A9L},{0x6DFB27AFL,0x22F056A9L,0x17E6CD3EL,0x1DA6DF85L,0x47C4D2A1L,0x1DA6DF85L,0x17E6CD3EL,0x22F056A9L},{0x6DFB27AFL,0x22F056A9L,0x17E6CD3EL,0x1DA6DF85L,0x47C4D2A1L,0x1DA6DF85L,0x17E6CD3EL,0x22F056A9L}};
    int32_t *l_494 = &l_458;
    int32_t **l_493 = &l_494;
    VECTOR(uint16_t, 16) l_495 = (VECTOR(uint16_t, 16))(8UL, (VECTOR(uint16_t, 4))(8UL, (VECTOR(uint16_t, 2))(8UL, 0x4844L), 0x4844L), 0x4844L, 8UL, 0x4844L, (VECTOR(uint16_t, 2))(8UL, 0x4844L), (VECTOR(uint16_t, 2))(8UL, 0x4844L), 8UL, 0x4844L, 8UL, 0x4844L);
    int i, j;
    for (i = 0; i < 3; i++)
        l_401[i] = &p_1712->g_398;
    if ((safe_sub_func_uint8_t_u_u(((((((safe_mod_func_uint64_t_u_u(((*l_150) |= (((l_148 = ((p_1712->g_119[7] = &p_1712->g_113) != (((*l_134) = ((0x2876B163L != 0x18CB2972L) ^ (p_1712->g_110 | (safe_sub_func_int16_t_s_s((((((*l_123) = &p_1712->g_113) != &p_1712->g_113) >= ((VECTOR(uint16_t, 2))(p_1712->g_125.wz)).odd) | ((VECTOR(uint8_t, 4))(min(((VECTOR(uint8_t, 8))(l_126.zzxzxzyw)).lo, ((VECTOR(uint8_t, 16))((safe_mod_func_uint64_t_u_u(0x6F4DFAC948D72D27L, (safe_add_func_uint16_t_u_u(((VECTOR(uint16_t, 4))(((((safe_add_func_int64_t_s_s(p_64, p_1712->g_12)) , GROUP_DIVERGE(2, 1)) , l_133) != l_133), 0UL, 1UL, 0x8142L)).w, p_1712->g_110)))), p_1712->g_125.w, 0x01L, GROUP_DIVERGE(1, 1), 0x18L, 0x05L, ((VECTOR(uint8_t, 8))(0x63L)), 0x13L, 0x83L)).se1b1))).z), p_1712->g_82.s2))))) , &p_1712->g_113))) , l_149[3]) == (void*)0)), GROUP_DIVERGE(1, 1))) && p_64) ^ (-2L)) != FAKE_DIVERGE(p_1712->group_2_offset, get_group_id(2), 10)) , (void*)0) == l_149[0]), p_64)))
    { /* block id: 14 */
        int32_t *l_152 = &l_148;
        VECTOR(int32_t, 4) l_155 = (VECTOR(int32_t, 4))(0x01DBD879L, (VECTOR(int32_t, 2))(0x01DBD879L, 1L), 1L);
        VECTOR(uint32_t, 2) l_165 = (VECTOR(uint32_t, 2))(1UL, 0xC9471742L);
        VECTOR(int64_t, 2) l_190 = (VECTOR(int64_t, 2))(0x391EF432E68C3BF2L, 0x7A2F4DF6C7F8FBDCL);
        VECTOR(uint64_t, 8) l_201 = (VECTOR(uint64_t, 8))(0x5D964B4B9CE0AD08L, (VECTOR(uint64_t, 4))(0x5D964B4B9CE0AD08L, (VECTOR(uint64_t, 2))(0x5D964B4B9CE0AD08L, 0UL), 0UL), 0UL, 0x5D964B4B9CE0AD08L, 0UL);
        uint8_t l_210 = 0UL;
        VECTOR(int16_t, 2) l_227 = (VECTOR(int16_t, 2))(0x66A5L, 0L);
        int64_t l_260 = 0x1B9BCCF346CF623BL;
        uint64_t *l_392 = (void*)0;
        VECTOR(int32_t, 16) l_393 = (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x4047BC4CL), 0x4047BC4CL), 0x4047BC4CL, 1L, 0x4047BC4CL, (VECTOR(int32_t, 2))(1L, 0x4047BC4CL), (VECTOR(int32_t, 2))(1L, 0x4047BC4CL), 1L, 0x4047BC4CL, 1L, 0x4047BC4CL);
        VECTOR(int16_t, 8) l_403 = (VECTOR(int16_t, 8))((-8L), (VECTOR(int16_t, 4))((-8L), (VECTOR(int16_t, 2))((-8L), 1L), 1L), 1L, (-8L), 1L);
        int64_t **l_423[8];
        int64_t **l_425 = &l_124;
        VECTOR(uint32_t, 2) l_428 = (VECTOR(uint32_t, 2))(0xDB63E37FL, 4294967289UL);
        int16_t l_456 = 0x71CCL;
        int i;
        for (i = 0; i < 8; i++)
            l_423[i] = &l_133;
        if (((*l_152) = p_64))
        { /* block id: 16 */
            uint16_t *l_178 = (void*)0;
            uint16_t *l_179 = (void*)0;
            uint16_t *l_180 = (void*)0;
            uint16_t *l_181 = (void*)0;
            VECTOR(uint64_t, 4) l_207 = (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 8UL), 8UL);
            int32_t *l_211 = (void*)0;
            int32_t *l_212 = (void*)0;
            int32_t *l_213 = (void*)0;
            int32_t *l_214[6];
            int16_t l_215 = 0L;
            int i;
            for (i = 0; i < 6; i++)
                l_214[i] = (void*)0;
            p_1712->g_156.x = (safe_add_func_uint16_t_u_u((((((VECTOR(int32_t, 4))((((VECTOR(int32_t, 4))(min(((VECTOR(int32_t, 2))(0x286A1EBDL, 0x66F67040L)).yxxx, ((VECTOR(int32_t, 16))((((VECTOR(int32_t, 8))(l_155.zzzwwwyz)).s7404276745054557 == ((VECTOR(int32_t, 8))(sub_sat(((VECTOR(int32_t, 4))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 16))((((VECTOR(int32_t, 8))((((VECTOR(int32_t, 2))(p_1712->g_156.yx)).xxxxyxyy && ((VECTOR(int32_t, 4))((((VECTOR(int32_t, 2))(1L, 0x361AE0EBL)).yyxx && ((VECTOR(int32_t, 16))(rotate(((VECTOR(int32_t, 8))(((*l_152) = ((((0x005807E8L && (safe_rshift_func_uint8_t_u_u(p_1712->g_72.s9, (safe_mod_func_uint8_t_u_u((((safe_lshift_func_uint8_t_u_s(0x6CL, 7)) | ((((safe_sub_func_uint32_t_u_u(((VECTOR(uint32_t, 8))(l_165.xyxxxyyy)).s6, (((VECTOR(uint64_t, 2))(mad_hi(((VECTOR(uint64_t, 2))(sub_sat(((VECTOR(uint64_t, 2))(mul_hi(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(l_166.s3f)), ((VECTOR(uint64_t, 2))(rhadd(((VECTOR(uint64_t, 16))((+((VECTOR(uint64_t, 4))(p_1712->g_167.yxyy)).zyzwwwwyxwzwzwwz))).s17, ((VECTOR(uint64_t, 16))(rhadd(((VECTOR(uint64_t, 16))(sub_sat(((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 8))(((safe_sub_func_int16_t_s_s(p_64, (safe_lshift_func_int16_t_s_u(((VECTOR(int16_t, 2))((-8L), (-1L))).hi, 5)))) > (p_64 != (safe_mul_func_uint16_t_u_u((safe_lshift_func_int8_t_s_s((-1L), 0)), (++p_1712->g_94.y))))), ((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 4))(mad_hi(((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 16))(mul_hi(((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 2))(p_1712->g_188.zy)).xyyyyxxxyyxxyxxx | ((VECTOR(uint64_t, 2))(max(((VECTOR(uint64_t, 16))(p_1712->g_189.s2303147413250410)).s2e, ((VECTOR(uint64_t, 16))(abs_diff(((VECTOR(int64_t, 2))(l_190.yy)).xyxyxyxxxxxxxxyy, ((VECTOR(int64_t, 2))((((VECTOR(int64_t, 2))((-9L), 0x0C60422813CE37CCL)) && ((VECTOR(int64_t, 2))(clz(((VECTOR(int64_t, 16))(clz(((VECTOR(int64_t, 2))(0x400B975996908100L, 0x154E2514E944683AL)).yxyxyyyyxxxyyyyx))).sbe)))))).xxyxxxxyxxyyxxxx))).s04))).yxxyxxxxxxyyxxyy))), ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))(l_191.yzyzzwzz)), ((VECTOR(uint64_t, 2))(l_192.xx)), ((VECTOR(uint64_t, 2))(18446744073709551615UL, 8UL)), (safe_lshift_func_uint8_t_u_s(p_1712->g_189.s7, 4)), p_1712->g_82.s7, 18446744073709551615UL, 0x545E75F00DBD57F1L))))).even | ((VECTOR(uint64_t, 2))(0xB518762AE1A41AF9L, 0xB45EB1093934F947L)).xxxxxxyx))).hi, ((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 4))(p_1712->g_197.s9f56)).xxyzzwzy * ((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 4))(abs(((VECTOR(int64_t, 16))(clz(((VECTOR(int64_t, 8))(p_1712->g_200.s17534724)).s1411001451700166))).s970b))).zwwwwzxzywwxwzyw + ((VECTOR(uint64_t, 4))(l_201.s4745)).yxxxxzwwxwyyyyyy))).even))).even, ((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(0xDD47E45A53668A93L, 0UL)), 18446744073709551606UL, 0x5964E550A762820CL)).xyxxwyxx + ((VECTOR(uint64_t, 16))(l_204.s84f36afe77fc2152)).hi))).even))).xxzyyzzy + ((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 8))(l_207.zxyyzxxy)) >> ((VECTOR(uint64_t, 2))(18446744073709551606UL, 0xBB3E926D7F8DAA83L)).yyyyxyxx)))))).even + ((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(0xE5BC47677040BD13L, 0xF03418026454160EL)), 0UL, p_1712->g_78.s6, 0x959467824FA9163CL, 18446744073709551614UL, 0UL, 0xC8FD093CF0600BE3L)).s63 + ((VECTOR(uint64_t, 2))(0UL))))).xyyx))), ((VECTOR(uint64_t, 2))(0x30141AF60F279C46L)), 0xA6AEE27A70E2737EL)).hi + ((VECTOR(uint64_t, 4))(18446744073709551609UL))))).xxyyyxxyyzwxwzxz, ((VECTOR(uint64_t, 16))(1UL))))), ((VECTOR(uint64_t, 16))(1UL))))).sd7))), 0xBF06AC369FCEB6DBL, 18446744073709551615UL, 0UL, 18446744073709551610UL)).s25, ((VECTOR(uint64_t, 2))(0x746296405B1F0BCFL))))), ((VECTOR(uint64_t, 2))(9UL))))), ((VECTOR(uint64_t, 2))(0x9878C961D12E868BL)), ((VECTOR(uint64_t, 2))(0x1BE9AE68F206085BL))))).lo , (-1L)))) , 0x070625BBL) && l_204.se) ^ 0x72D5D3A5L)) >= p_64), 0x2DL))))) < 0x5C5DC2C4L) , p_64) >= p_1712->g_125.x)), l_210, 0x42226265L, ((VECTOR(int32_t, 2))(0x66762014L)), 9L, 0x451EC3E9L, 7L)).s3675607520571770, ((VECTOR(int32_t, 16))(0x5A68F4A9L))))).sc1bf))).yzywyxyw))).s6066255526211365 >= ((VECTOR(int32_t, 16))(0x610F4506L))))).s2f4e, ((VECTOR(int32_t, 4))(0x63F2DEF7L)), ((VECTOR(int32_t, 4))((-1L)))))).xwyxyzyz, ((VECTOR(int32_t, 8))((-1L)))))).s0151171452117377))).scd45))) & ((VECTOR(int32_t, 4))(2L))))).z && p_64) | GROUP_DIVERGE(2, 1)) & l_204.sd), p_64));
            ++l_217;
        }
        else
        { /* block id: 21 */
            union U0 *l_222 = &p_1712->g_223[6];
            int16_t l_236 = 0x229BL;
            uint8_t *l_239[7][7] = {{(void*)0,(void*)0,(void*)0,&l_217,(void*)0,&l_217,(void*)0},{(void*)0,(void*)0,(void*)0,&l_217,(void*)0,&l_217,(void*)0},{(void*)0,(void*)0,(void*)0,&l_217,(void*)0,&l_217,(void*)0},{(void*)0,(void*)0,(void*)0,&l_217,(void*)0,&l_217,(void*)0},{(void*)0,(void*)0,(void*)0,&l_217,(void*)0,&l_217,(void*)0},{(void*)0,(void*)0,(void*)0,&l_217,(void*)0,&l_217,(void*)0},{(void*)0,(void*)0,(void*)0,&l_217,(void*)0,&l_217,(void*)0}};
            uint32_t l_240 = 4294967295UL;
            VECTOR(uint64_t, 2) l_242 = (VECTOR(uint64_t, 2))(18446744073709551615UL, 18446744073709551615UL);
            uint8_t l_259 = 255UL;
            int32_t *l_261[3][3] = {{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}};
            int64_t **l_264 = &l_124;
            uint64_t *l_267 = (void*)0;
            VECTOR(uint64_t, 16) l_302 = (VECTOR(uint64_t, 16))(0x11F6C4FA19571789L, (VECTOR(uint64_t, 4))(0x11F6C4FA19571789L, (VECTOR(uint64_t, 2))(0x11F6C4FA19571789L, 18446744073709551610UL), 18446744073709551610UL), 18446744073709551610UL, 0x11F6C4FA19571789L, 18446744073709551610UL, (VECTOR(uint64_t, 2))(0x11F6C4FA19571789L, 18446744073709551610UL), (VECTOR(uint64_t, 2))(0x11F6C4FA19571789L, 18446744073709551610UL), 0x11F6C4FA19571789L, 18446744073709551610UL, 0x11F6C4FA19571789L, 18446744073709551610UL);
            int32_t l_311 = (-7L);
            uint8_t **l_400 = &l_239[3][5];
            uint32_t l_418 = 0xE0786122L;
            uint32_t l_443[1];
            int32_t **l_447 = &l_152;
            int i, j;
            for (i = 0; i < 1; i++)
                l_443[i] = 8UL;
            for (l_210 = 4; (l_210 == 44); l_210++)
            { /* block id: 24 */
                union U0 **l_224 = &l_222;
                (*l_224) = l_222;
            }
            p_1712->g_156.y &= (safe_mul_func_int16_t_s_s(((((((VECTOR(int16_t, 4))(mul_hi(((VECTOR(int16_t, 8))(l_227.yxyyxxyx)).lo, ((VECTOR(int16_t, 16))(rhadd(((VECTOR(int16_t, 8))(clz(((VECTOR(int16_t, 2))(6L, 0L)).yxxxyyyy))).s7130412744564543, ((VECTOR(int16_t, 2))(add_sat(((VECTOR(int16_t, 16))((((VECTOR(int16_t, 16))(0x5915L, (safe_lshift_func_int8_t_s_u(((((VECTOR(uint32_t, 8))(p_1712->g_230.zyyzzwxw)).s5 & ((safe_unary_minus_func_int16_t_s(p_1712->g_230.x)) < (safe_mul_func_uint8_t_u_u((l_216 &= ((safe_div_func_int64_t_s_s((l_236 | (safe_lshift_func_uint8_t_u_u((l_240 = ((((*l_152) = l_192.y) | 0x4EF0FF0162682172L) , ((VECTOR(uint8_t, 4))(0xE0L, 0x77L, 7UL, 1UL)).w)), ((VECTOR(uint8_t, 2))(p_1712->g_241.scb)).even))), ((VECTOR(uint64_t, 8))(l_242.yyxxyxxx)).s6)) == GROUP_DIVERGE(0, 1))), (((GROUP_DIVERGE(2, 1) , (p_64 && ((VECTOR(uint8_t, 4))(max(((VECTOR(uint8_t, 16))(mad_sat(((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 2))(clz(((VECTOR(uint8_t, 2))(0xC7L, 254UL))))).yyyx + ((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 2))(p_1712->g_247.s98)).yxyyyxyyxxyyyyxy >> ((VECTOR(uint8_t, 8))(max(((VECTOR(uint8_t, 4))(p_1712->g_248.s3761)).xwywwyxw, (uint8_t)GROUP_DIVERGE(2, 1)))).s1430250177334700))).s8573))).zyywywxwxyzzywzw, ((VECTOR(uint8_t, 2))(p_1712->g_249.s63)).yxyxxxyxyyxxyyyx, ((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 16))(0x52L, ((VECTOR(uint8_t, 2))(0x15L, 247UL)), (((l_236 , (((safe_mod_func_int64_t_s_s(((p_1712->g_197.s4 , ((VECTOR(int64_t, 16))(((VECTOR(int64_t, 8))(l_254.yxxxyxyy)).s7, 1L, (-1L), 4L, (safe_div_func_int64_t_s_s(((safe_mul_func_int16_t_s_s((p_64 < p_64), p_64)) | l_242.x), l_259)), 0x0113C84784CF4E84L, ((VECTOR(int64_t, 4))(0x616B5A1F9972E8BEL)), ((VECTOR(int64_t, 4))(0x0DDB9D46EC3D0FC6L)), 7L, (-4L))).s2) & 0x12318213D1F3DB49L), l_217)) > l_260) <= (-1L))) == p_64) < p_1712->g_197.s9), 0x54L, ((VECTOR(uint8_t, 2))(0x2AL)), ((VECTOR(uint8_t, 2))(246UL)), p_1712->g_241.s9, 1UL, 0x2DL, ((VECTOR(uint8_t, 2))(0xF9L)), 7UL, 0x1AL)).s217a + ((VECTOR(uint8_t, 4))(255UL))))).wzzxyzxxzyxyxzzw))).s3445, ((VECTOR(uint8_t, 4))(255UL))))).z)) > 0xA1B3L) || 18446744073709551612UL))))) < p_64), 6)), ((VECTOR(int16_t, 8))(0x2886L)), p_1712->g_197.sb, 0x713EL, 0x07B4L, p_64, 0x58EAL, (-1L))) | ((VECTOR(int16_t, 16))(1L))))).sc1, ((VECTOR(int16_t, 2))((-1L)))))).xyyxyyxyyxxyxxxx))).s34b2))).w , p_1712->g_248.s4) != 0x72009605L) <= l_210) , p_64), l_242.x));
            for (l_216 = 0; (l_216 != 12); l_216 = safe_add_func_int8_t_s_s(l_216, 6))
            { /* block id: 33 */
                VECTOR(int32_t, 16) l_270 = (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x40102855L), 0x40102855L), 0x40102855L, 0L, 0x40102855L, (VECTOR(int32_t, 2))(0L, 0x40102855L), (VECTOR(int32_t, 2))(0L, 0x40102855L), 0L, 0x40102855L, 0L, 0x40102855L);
                uint64_t *l_300 = &p_1712->g_281;
                uint8_t *l_359 = &l_259;
                int32_t l_364 = 0x57BC3096L;
                int32_t l_385 = 1L;
                int32_t l_386 = 0x328E3F98L;
                VECTOR(int32_t, 8) l_394 = (VECTOR(int32_t, 8))(2L, (VECTOR(int32_t, 4))(2L, (VECTOR(int32_t, 2))(2L, 0L), 0L), 0L, 2L, 0L);
                uint8_t ***l_399[9] = {&p_1712->g_397,(void*)0,&p_1712->g_397,&p_1712->g_397,(void*)0,&p_1712->g_397,&p_1712->g_397,(void*)0,&p_1712->g_397};
                int8_t **l_430 = &l_149[3];
                int i;
                if ((((l_264 != (p_1712->g_265 = &p_1712->g_119[7])) == ((*l_152) , ((VECTOR(uint8_t, 16))(l_266.wzywxwxyyxzxxxxx)).s5)) , ((p_1712->g_248.s7 <= (*l_152)) >= ((&p_1712->g_151 != l_267) , (safe_lshift_func_uint16_t_u_s(((((VECTOR(int32_t, 8))(l_270.sb8163206)).s1 , (0x7C01C5CEDB85EC9BL && 0x7FF8A4D8716988ADL)) , p_1712->g_189.s2), 7))))))
                { /* block id: 35 */
                    uint64_t *l_280 = &p_1712->g_281;
                    VECTOR(uint32_t, 2) l_301 = (VECTOR(uint32_t, 2))(0x58C7D610L, 0xBC35C1B0L);
                    VECTOR(int32_t, 4) l_344 = (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x0707CB7BL), 0x0707CB7BL);
                    uint8_t *l_363 = &l_259;
                    int32_t l_384[5][7][4] = {{{0L,(-7L),0x4D82C8C8L,5L},{0L,(-7L),0x4D82C8C8L,5L},{0L,(-7L),0x4D82C8C8L,5L},{0L,(-7L),0x4D82C8C8L,5L},{0L,(-7L),0x4D82C8C8L,5L},{0L,(-7L),0x4D82C8C8L,5L},{0L,(-7L),0x4D82C8C8L,5L}},{{0L,(-7L),0x4D82C8C8L,5L},{0L,(-7L),0x4D82C8C8L,5L},{0L,(-7L),0x4D82C8C8L,5L},{0L,(-7L),0x4D82C8C8L,5L},{0L,(-7L),0x4D82C8C8L,5L},{0L,(-7L),0x4D82C8C8L,5L},{0L,(-7L),0x4D82C8C8L,5L}},{{0L,(-7L),0x4D82C8C8L,5L},{0L,(-7L),0x4D82C8C8L,5L},{0L,(-7L),0x4D82C8C8L,5L},{0L,(-7L),0x4D82C8C8L,5L},{0L,(-7L),0x4D82C8C8L,5L},{0L,(-7L),0x4D82C8C8L,5L},{0L,(-7L),0x4D82C8C8L,5L}},{{0L,(-7L),0x4D82C8C8L,5L},{0L,(-7L),0x4D82C8C8L,5L},{0L,(-7L),0x4D82C8C8L,5L},{0L,(-7L),0x4D82C8C8L,5L},{0L,(-7L),0x4D82C8C8L,5L},{0L,(-7L),0x4D82C8C8L,5L},{0L,(-7L),0x4D82C8C8L,5L}},{{0L,(-7L),0x4D82C8C8L,5L},{0L,(-7L),0x4D82C8C8L,5L},{0L,(-7L),0x4D82C8C8L,5L},{0L,(-7L),0x4D82C8C8L,5L},{0L,(-7L),0x4D82C8C8L,5L},{0L,(-7L),0x4D82C8C8L,5L},{0L,(-7L),0x4D82C8C8L,5L}}};
                    uint8_t l_387 = 255UL;
                    int i, j, k;
                    if ((safe_unary_minus_func_uint32_t_u((((safe_add_func_int16_t_s_s((safe_sub_func_int16_t_s_s(0x7420L, ((safe_rshift_func_uint8_t_u_u(((safe_mod_func_uint8_t_u_u((((*l_280)++) , (safe_add_func_int8_t_s_s(l_270.sa, ((VECTOR(int8_t, 2))((((VECTOR(int8_t, 2))((((VECTOR(int8_t, 2))(sub_sat(((VECTOR(int8_t, 8))(3L, 5L, (safe_div_func_int16_t_s_s((safe_mul_func_uint8_t_u_u((safe_div_func_uint8_t_u_u(((p_64 , (p_1712->g_151 != ((VECTOR(int32_t, 2))(0x323A33DEL, 0x45B3812AL)).lo)) | ((VECTOR(uint32_t, 8))(mad_hi(((VECTOR(uint32_t, 16))(0x6DE44C6FL, 0x780F7B21L, ((VECTOR(uint32_t, 2))(1UL, 4294967295UL)), ((VECTOR(uint32_t, 8))(4294967291UL, ((VECTOR(uint32_t, 4))((safe_rshift_func_uint8_t_u_u(GROUP_DIVERGE(1, 1), (safe_div_func_int16_t_s_s(l_192.x, (p_1712->g_197.s5 , ((safe_mul_func_int16_t_s_s((((VECTOR(int64_t, 2))(0x5E760D366C35C314L, 0x5E3F350D279C502AL)).hi , (safe_sub_func_int32_t_s_s((l_124 != l_300), ((VECTOR(uint32_t, 16))(l_301.yxxxxyxxxyxxxxxx)).sa))), p_1712->g_89.s5)) , p_1712->g_189.s2)))))), FAKE_DIVERGE(p_1712->group_0_offset, get_group_id(0), 10), 0x5B507F08L, 0UL)), 0x582CEDBFL, 0x52A53774L, 4294967295UL)), 4UL, 0xAA6224B2L, 2UL, 0x98F07CFAL)).hi, ((VECTOR(uint32_t, 8))(0xE7860303L)), ((VECTOR(uint32_t, 8))(4294967294UL))))).s1), 0x59L)), p_1712->g_110)), p_1712->g_125.x)), l_302.s3, ((VECTOR(int8_t, 4))(0x1AL)))).s70, ((VECTOR(int8_t, 2))(3L))))) && ((VECTOR(int8_t, 2))(1L))))) | ((VECTOR(int8_t, 2))(0L))))).odd))), l_301.x)) < 0UL), 4)) | l_270.s7))), p_1712->g_249.s7)) ^ l_270.sb) && FAKE_DIVERGE(p_1712->group_2_offset, get_group_id(2), 10)))))
                    { /* block id: 37 */
                        uint16_t l_314 = 65535UL;
                        union U0 ***l_318[4] = {&l_315,&l_315,&l_315,&l_315};
                        uint8_t **l_360 = &l_239[1][4];
                        int i;
                        p_1712->g_156.x = ((((safe_rshift_func_int8_t_s_s((safe_sub_func_uint64_t_u_u(((*l_150) ^= ((safe_div_func_int32_t_s_s((safe_mul_func_uint16_t_u_u(l_311, (((safe_add_func_int32_t_s_s(l_314, 0UL)) >= ((((l_315 = l_315) == p_1712->g_319) != ((((safe_mod_func_int16_t_s_s((((VECTOR(int32_t, 8))((((VECTOR(int32_t, 8))((!((VECTOR(int32_t, 2))(p_1712->g_343.xx)).xyxyxyxy))) != ((VECTOR(int32_t, 8))((((VECTOR(int32_t, 2))(0x48A47113L, 0x6B69F79CL)).yyyxyyyx == ((VECTOR(int32_t, 16))(clz(((VECTOR(int32_t, 8))((((VECTOR(int32_t, 4))((-5L), 0x524AB5D2L, 0L, (-1L))).yxyxxxyy && ((VECTOR(int32_t, 4))(l_344.wzwy)).zwwxxzyy))).s4703061547164255))).hi)))))).s3 , (safe_lshift_func_int8_t_s_s(((*l_152) = ((VECTOR(int8_t, 8))(0x6DL, 0x5AL, ((VECTOR(int8_t, 2))(0x23L, 0x3BL)), (((safe_div_func_int16_t_s_s((safe_lshift_func_uint8_t_u_s(((safe_sub_func_uint64_t_u_u((safe_lshift_func_uint16_t_u_u((safe_mod_func_uint16_t_u_u(((safe_add_func_uint16_t_u_u(((((*l_360) = l_359) != l_359) , GROUP_DIVERGE(0, 1)), (l_364 ^= (p_1712->g_361 == l_363)))) == 0xFED1L), p_1712->g_365)), 2)), p_1712->g_125.x)) >= p_1712->g_241.s6), 7)), 0x4219L)) <= p_64) | p_1712->g_336.f0), ((VECTOR(int8_t, 2))((-6L))), (-1L))).s1), p_1712->g_189.s3))), p_1712->g_200.s5)) && l_344.x) || p_1712->g_90.y) || p_1712->g_200.s3)) >= p_64)) & 0x73ABFB580818782FL))), p_64)) < p_64)), 0x2FE5C71616FBDB85L)), 4)) | l_314) , 0x6EL) > p_64);
                        l_148 = p_64;
                    }
                    else
                    { /* block id: 45 */
                        uint32_t *l_379 = &p_1712->g_317.f3;
                        (*l_152) = p_1712->g_249.s3;
                        (*l_152) = (safe_mul_func_uint16_t_u_u((safe_mul_func_int8_t_s_s(((FAKE_DIVERGE(p_1712->global_1_offset, get_global_id(1), 10) == (((safe_div_func_uint64_t_u_u(18446744073709551613UL, (safe_lshift_func_uint8_t_u_u((((safe_div_func_uint64_t_u_u((safe_mul_func_uint16_t_u_u((0x7EEDA543L > 2UL), p_64)), (l_344.y | 0x839F4828L))) , ((((*l_379) = l_378) >= p_1712->g_156.x) , (safe_lshift_func_int16_t_s_s((safe_div_func_uint8_t_u_u(((l_270.s6 & 0L) <= p_1712->g_339.f0), (*l_152))), 14)))) < p_64), p_1712->g_113)))) ^ 6UL) , 9UL)) ^ 255UL), p_64)), p_1712->g_89.s6));
                        ++l_387;
                    }
                }
                else
                { /* block id: 51 */
                    l_386 = (safe_sub_func_uint16_t_u_u((l_392 == (l_267 = l_267)), (-3L)));
                }
                if (p_1712->g_135)
                    break;
                if (((VECTOR(int32_t, 16))((((VECTOR(int32_t, 2))(l_393.se6)).yxxxxxyyyyyxyyyx > ((VECTOR(int32_t, 4))((((VECTOR(int32_t, 2))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 16))(max(((VECTOR(int32_t, 16))((((VECTOR(int32_t, 2))((-1L), 5L)).yxxyyxxxxyyyyxxx != ((VECTOR(int32_t, 4))(mul_hi(((VECTOR(int32_t, 16))((!((VECTOR(int32_t, 16))(rotate(((VECTOR(int32_t, 8))(safe_clamp_func(VECTOR(int32_t, 8),VECTOR(int32_t, 8),((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(0x477A69A3L, 0x2D31B660L)), 1L, 1L)).zyyyxwxy, ((VECTOR(int32_t, 16))((((VECTOR(int32_t, 8))(min(((VECTOR(int32_t, 8))((((VECTOR(int32_t, 4))(l_394.s2042)).wxyyzzww && ((VECTOR(int32_t, 8))(hadd(((VECTOR(int32_t, 8))((safe_sub_func_uint32_t_u_u((*l_152), (l_378 = (p_1712->g_325[2][6].f0 >= p_1712->g_73.sf)))), (-6L), 1L, 0x73C832D1L, 0x5D27D1F8L, (p_64 < ((l_400 = (l_266.y , p_1712->g_397)) == (l_401[2] = &p_1712->g_398))), (-2L), 0x66E6B571L)), ((VECTOR(int32_t, 16))((((VECTOR(int32_t, 16))(rhadd(((VECTOR(int32_t, 4))((((VECTOR(int32_t, 8))((((VECTOR(int32_t, 2))(2L, 6L)).yyxxyxxx || ((VECTOR(int32_t, 16))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 16))(clz(((VECTOR(int32_t, 8))((((VECTOR(int32_t, 8))(p_1712->g_402.s10676010)) && ((VECTOR(int32_t, 4))(0x25FD2A93L, (0UL <= ((VECTOR(int16_t, 8))(max(((VECTOR(int16_t, 2))(l_403.s13)).xxyyxxxy, (int16_t)((VECTOR(int16_t, 4))((((VECTOR(int16_t, 4))(0x715AL, (((&l_240 != &l_240) == p_64) && 8L), 1L, (-9L))) && ((VECTOR(int16_t, 4))((-9L)))))).x))).s6), 0x31F0F9DEL, 0x3D06E82CL)).zwxxzyyz))).s2322004504215643))), ((VECTOR(int32_t, 16))((-8L))), ((VECTOR(int32_t, 16))(0x51C56688L))))).even))).hi && ((VECTOR(int32_t, 4))((-2L)))))).yzzyzyxxzyzzwywx, ((VECTOR(int32_t, 16))(0x249A58F8L))))) && ((VECTOR(int32_t, 16))(1L))))).hi)))))), (int32_t)7L))).s0573516600476036 | ((VECTOR(int32_t, 16))(2L))))).even, ((VECTOR(int32_t, 8))((-1L)))))).s5364347205656354, ((VECTOR(int32_t, 16))(0x0F9EBBD7L)))))))).s1095, ((VECTOR(int32_t, 4))(0L))))).xzywxyzyyywwxyzw))), ((VECTOR(int32_t, 16))(0x2879B872L))))).s7a, ((VECTOR(int32_t, 2))((-1L))), ((VECTOR(int32_t, 2))(0x1DA84BA1L))))).yyxx < ((VECTOR(int32_t, 4))(0L))))).xxywyyyzzzyywxyy))).s6)
                { /* block id: 59 */
                    int8_t l_410 = 0x79L;
                    int64_t ***l_424[1];
                    int32_t l_436 = 0x7D18EFFAL;
                    int32_t l_438[9][7][4] = {{{1L,1L,0x6FC51182L,(-1L)},{1L,1L,0x6FC51182L,(-1L)},{1L,1L,0x6FC51182L,(-1L)},{1L,1L,0x6FC51182L,(-1L)},{1L,1L,0x6FC51182L,(-1L)},{1L,1L,0x6FC51182L,(-1L)},{1L,1L,0x6FC51182L,(-1L)}},{{1L,1L,0x6FC51182L,(-1L)},{1L,1L,0x6FC51182L,(-1L)},{1L,1L,0x6FC51182L,(-1L)},{1L,1L,0x6FC51182L,(-1L)},{1L,1L,0x6FC51182L,(-1L)},{1L,1L,0x6FC51182L,(-1L)},{1L,1L,0x6FC51182L,(-1L)}},{{1L,1L,0x6FC51182L,(-1L)},{1L,1L,0x6FC51182L,(-1L)},{1L,1L,0x6FC51182L,(-1L)},{1L,1L,0x6FC51182L,(-1L)},{1L,1L,0x6FC51182L,(-1L)},{1L,1L,0x6FC51182L,(-1L)},{1L,1L,0x6FC51182L,(-1L)}},{{1L,1L,0x6FC51182L,(-1L)},{1L,1L,0x6FC51182L,(-1L)},{1L,1L,0x6FC51182L,(-1L)},{1L,1L,0x6FC51182L,(-1L)},{1L,1L,0x6FC51182L,(-1L)},{1L,1L,0x6FC51182L,(-1L)},{1L,1L,0x6FC51182L,(-1L)}},{{1L,1L,0x6FC51182L,(-1L)},{1L,1L,0x6FC51182L,(-1L)},{1L,1L,0x6FC51182L,(-1L)},{1L,1L,0x6FC51182L,(-1L)},{1L,1L,0x6FC51182L,(-1L)},{1L,1L,0x6FC51182L,(-1L)},{1L,1L,0x6FC51182L,(-1L)}},{{1L,1L,0x6FC51182L,(-1L)},{1L,1L,0x6FC51182L,(-1L)},{1L,1L,0x6FC51182L,(-1L)},{1L,1L,0x6FC51182L,(-1L)},{1L,1L,0x6FC51182L,(-1L)},{1L,1L,0x6FC51182L,(-1L)},{1L,1L,0x6FC51182L,(-1L)}},{{1L,1L,0x6FC51182L,(-1L)},{1L,1L,0x6FC51182L,(-1L)},{1L,1L,0x6FC51182L,(-1L)},{1L,1L,0x6FC51182L,(-1L)},{1L,1L,0x6FC51182L,(-1L)},{1L,1L,0x6FC51182L,(-1L)},{1L,1L,0x6FC51182L,(-1L)}},{{1L,1L,0x6FC51182L,(-1L)},{1L,1L,0x6FC51182L,(-1L)},{1L,1L,0x6FC51182L,(-1L)},{1L,1L,0x6FC51182L,(-1L)},{1L,1L,0x6FC51182L,(-1L)},{1L,1L,0x6FC51182L,(-1L)},{1L,1L,0x6FC51182L,(-1L)}},{{1L,1L,0x6FC51182L,(-1L)},{1L,1L,0x6FC51182L,(-1L)},{1L,1L,0x6FC51182L,(-1L)},{1L,1L,0x6FC51182L,(-1L)},{1L,1L,0x6FC51182L,(-1L)},{1L,1L,0x6FC51182L,(-1L)},{1L,1L,0x6FC51182L,(-1L)}}};
                    int i, j, k;
                    for (i = 0; i < 1; i++)
                        l_424[i] = &p_1712->g_265;
                    (*l_152) = (((((VECTOR(uint8_t, 4))(p_1712->g_404.xxxx)).x < (l_418 = ((VECTOR(uint8_t, 16))((safe_mod_func_uint16_t_u_u(((VECTOR(uint16_t, 4))(p_1712->g_407.s4751)).x, (safe_add_func_uint64_t_u_u(((l_410 = p_64) || p_1712->g_73.s7), p_1712->g_200.s2)))), 1UL, ((safe_mul_func_uint8_t_u_u(p_64, (((VECTOR(uint32_t, 2))(p_1712->g_413.sc1)).hi == (safe_mul_func_uint16_t_u_u((((*l_359)++) < (l_270.s3 <= p_64)), ((((void*)0 != l_300) | p_64) < FAKE_DIVERGE(p_1712->local_0_offset, get_local_id(0), 10))))))) ^ l_385), p_64, 0UL, 0x4AL, 1UL, p_64, ((VECTOR(uint8_t, 8))(0x55L)))).s4)) == 0x4FL) , p_64);
                    if ((safe_sub_func_uint32_t_u_u(((safe_add_func_int8_t_s_s(((l_264 = l_423[3]) == (l_425 = &l_124)), (l_270.s8 | ((*l_150)++)))) , ((VECTOR(uint32_t, 2))(l_428.yx)).hi), p_1712->g_429)))
                    { /* block id: 67 */
                        uint16_t l_433[3][1];
                        int32_t l_437 = 0x5B96DCF8L;
                        int32_t l_440[5] = {0x6C50F438L,0x6C50F438L,0x6C50F438L,0x6C50F438L,0x6C50F438L};
                        int i, j;
                        for (i = 0; i < 3; i++)
                        {
                            for (j = 0; j < 1; j++)
                                l_433[i][j] = 0xC472L;
                        }
                        p_1712->g_431 = l_430;
                        if (p_64)
                            continue;
                        ++l_433[1][0];
                        ++l_443[0];
                    }
                    else
                    { /* block id: 72 */
                        return l_446.yy;
                    }
                }
                else
                { /* block id: 75 */
                    if (p_1712->g_429)
                        break;
                }
            }
            (*l_447) = &l_441;
        }
        for (p_1712->g_336.f1 = 0; (p_1712->g_336.f1 == 36); p_1712->g_336.f1 = safe_add_func_int32_t_s_s(p_1712->g_336.f1, 2))
        { /* block id: 83 */
            int32_t *l_450 = &l_442;
            int32_t *l_451 = &l_148;
            int32_t *l_452 = &l_439;
            int32_t *l_453 = &l_441;
            int32_t *l_454 = &l_441;
            int32_t *l_455[3][3][3] = {{{(void*)0,&l_441,&l_441},{(void*)0,&l_441,&l_441},{(void*)0,&l_441,&l_441}},{{(void*)0,&l_441,&l_441},{(void*)0,&l_441,&l_441},{(void*)0,&l_441,&l_441}},{{(void*)0,&l_441,&l_441},{(void*)0,&l_441,&l_441},{(void*)0,&l_441,&l_441}}};
            int32_t l_460[1];
            uint32_t l_461 = 0UL;
            int i, j, k;
            for (i = 0; i < 1; i++)
                l_460[i] = 0x74131337L;
            l_461--;
        }
    }
    else
    { /* block id: 86 */
        int32_t *l_473 = &l_459[6][3];
        int32_t *l_474[8];
        uint64_t l_476 = 0x0002380DD4CF4DD7L;
        int i;
        for (i = 0; i < 8; i++)
            l_474[i] = (void*)0;
        for (p_1712->g_331.f1 = 0; (p_1712->g_331.f1 >= 58); p_1712->g_331.f1++)
        { /* block id: 89 */
            int16_t l_470 = (-1L);
            uint64_t *l_471[3][4][7] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
            int32_t *l_472[7];
            int i, j, k;
            for (i = 0; i < 7; i++)
                l_472[i] = (void*)0;
            l_439 &= (p_1712->g_402.s4 = ((p_1712->g_334.f0 && ((VECTOR(uint16_t, 4))(0UL, 65528UL, 0x891DL, 0x094BL)).x) , (((((safe_div_func_int8_t_s_s(((**p_1712->g_431) ^= (safe_lshift_func_uint16_t_u_s(GROUP_DIVERGE(1, 1), (0x2B3ACC6270C26D6BL <= 0x2B7A464451E212AEL)))), 0xA7L)) & p_1712->g_340.f0) > l_470) , (void*)0) == l_471[1][3][3])));
        }
        ++l_476;
        for (p_1712->g_321.f1 = 0; (p_1712->g_321.f1 > 5); ++p_1712->g_321.f1)
        { /* block id: 97 */
            VECTOR(int64_t, 2) l_489 = (VECTOR(int64_t, 2))(0x3E74A696345535FDL, 0x472D0E3FC21E75D4L);
            int32_t **l_490 = &l_473;
            int i;
            (1 + 1);
        }
        (*l_473) = (p_64 ^ (safe_mod_func_uint16_t_u_u(GROUP_DIVERGE(2, 1), ((+(-1L)) , p_64))));
    }
    (*l_493) = &l_459[4][5];
    return l_495.s52;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S1 c_1713;
    struct S1* p_1712 = &c_1713;
    struct S1 c_1714 = {
        0xEC7516A2L, // p_1712->g_8
        (-1L), // p_1712->g_12
        (VECTOR(int64_t, 16))(0x57DCCC76BF08EAF5L, (VECTOR(int64_t, 4))(0x57DCCC76BF08EAF5L, (VECTOR(int64_t, 2))(0x57DCCC76BF08EAF5L, 0x135178915D48947DL), 0x135178915D48947DL), 0x135178915D48947DL, 0x57DCCC76BF08EAF5L, 0x135178915D48947DL, (VECTOR(int64_t, 2))(0x57DCCC76BF08EAF5L, 0x135178915D48947DL), (VECTOR(int64_t, 2))(0x57DCCC76BF08EAF5L, 0x135178915D48947DL), 0x57DCCC76BF08EAF5L, 0x135178915D48947DL, 0x57DCCC76BF08EAF5L, 0x135178915D48947DL), // p_1712->g_72
        (VECTOR(int64_t, 16))(0x536DE7EBAC3F4083L, (VECTOR(int64_t, 4))(0x536DE7EBAC3F4083L, (VECTOR(int64_t, 2))(0x536DE7EBAC3F4083L, 2L), 2L), 2L, 0x536DE7EBAC3F4083L, 2L, (VECTOR(int64_t, 2))(0x536DE7EBAC3F4083L, 2L), (VECTOR(int64_t, 2))(0x536DE7EBAC3F4083L, 2L), 0x536DE7EBAC3F4083L, 2L, 0x536DE7EBAC3F4083L, 2L), // p_1712->g_73
        (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x37F440AFL), 0x37F440AFL), 0x37F440AFL, (-1L), 0x37F440AFL), // p_1712->g_78
        (VECTOR(uint16_t, 8))(0x6B30L, (VECTOR(uint16_t, 4))(0x6B30L, (VECTOR(uint16_t, 2))(0x6B30L, 4UL), 4UL), 4UL, 0x6B30L, 4UL), // p_1712->g_82
        (VECTOR(uint8_t, 8))(6UL, (VECTOR(uint8_t, 4))(6UL, (VECTOR(uint8_t, 2))(6UL, 255UL), 255UL), 255UL, 6UL, 255UL), // p_1712->g_89
        (VECTOR(uint8_t, 2))(0x21L, 0x55L), // p_1712->g_90
        (VECTOR(uint16_t, 2))(0x298CL, 0x9577L), // p_1712->g_94
        (-1L), // p_1712->g_110
        1L, // p_1712->g_113
        {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}, // p_1712->g_119
        (VECTOR(uint16_t, 4))(65529UL, (VECTOR(uint16_t, 2))(65529UL, 0x93E8L), 0x93E8L), // p_1712->g_125
        0x46ADFC38L, // p_1712->g_135
        0x2DC6FEDBD156105CL, // p_1712->g_151
        (VECTOR(int32_t, 2))((-1L), 0x6DA5373EL), // p_1712->g_156
        (VECTOR(uint64_t, 2))(1UL, 0x888CA29FBB944C1BL), // p_1712->g_167
        (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 0x9FF3C386943B6AC6L), 0x9FF3C386943B6AC6L), // p_1712->g_188
        (VECTOR(uint64_t, 8))(5UL, (VECTOR(uint64_t, 4))(5UL, (VECTOR(uint64_t, 2))(5UL, 18446744073709551606UL), 18446744073709551606UL), 18446744073709551606UL, 5UL, 18446744073709551606UL), // p_1712->g_189
        (VECTOR(uint64_t, 16))(0x7757DA4FB260FA43L, (VECTOR(uint64_t, 4))(0x7757DA4FB260FA43L, (VECTOR(uint64_t, 2))(0x7757DA4FB260FA43L, 18446744073709551615UL), 18446744073709551615UL), 18446744073709551615UL, 0x7757DA4FB260FA43L, 18446744073709551615UL, (VECTOR(uint64_t, 2))(0x7757DA4FB260FA43L, 18446744073709551615UL), (VECTOR(uint64_t, 2))(0x7757DA4FB260FA43L, 18446744073709551615UL), 0x7757DA4FB260FA43L, 18446744073709551615UL, 0x7757DA4FB260FA43L, 18446744073709551615UL), // p_1712->g_197
        (VECTOR(int64_t, 8))(0x458B0227ADE1354FL, (VECTOR(int64_t, 4))(0x458B0227ADE1354FL, (VECTOR(int64_t, 2))(0x458B0227ADE1354FL, 0L), 0L), 0L, 0x458B0227ADE1354FL, 0L), // p_1712->g_200
        {{0x4B310485L},{0x4B310485L},{0x4B310485L},{0x4B310485L},{0x4B310485L},{0x4B310485L},{0x4B310485L},{0x4B310485L},{0x4B310485L}}, // p_1712->g_223
        (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 4294967295UL), 4294967295UL), // p_1712->g_230
        (VECTOR(uint8_t, 16))(249UL, (VECTOR(uint8_t, 4))(249UL, (VECTOR(uint8_t, 2))(249UL, 0x52L), 0x52L), 0x52L, 249UL, 0x52L, (VECTOR(uint8_t, 2))(249UL, 0x52L), (VECTOR(uint8_t, 2))(249UL, 0x52L), 249UL, 0x52L, 249UL, 0x52L), // p_1712->g_241
        (VECTOR(uint8_t, 16))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 251UL), 251UL), 251UL, 1UL, 251UL, (VECTOR(uint8_t, 2))(1UL, 251UL), (VECTOR(uint8_t, 2))(1UL, 251UL), 1UL, 251UL, 1UL, 251UL), // p_1712->g_247
        (VECTOR(uint8_t, 8))(0xDEL, (VECTOR(uint8_t, 4))(0xDEL, (VECTOR(uint8_t, 2))(0xDEL, 0UL), 0UL), 0UL, 0xDEL, 0UL), // p_1712->g_248
        (VECTOR(uint8_t, 8))(0x8FL, (VECTOR(uint8_t, 4))(0x8FL, (VECTOR(uint8_t, 2))(0x8FL, 0UL), 0UL), 0UL, 0x8FL, 0UL), // p_1712->g_249
        &p_1712->g_119[6], // p_1712->g_265
        0x5F7E6AA0FA19F6DDL, // p_1712->g_281
        {0xC5E9977FL}, // p_1712->g_317
        {4294967295UL}, // p_1712->g_321
        {0x512A2896L}, // p_1712->g_322
        {{{{0x9F36769EL},{4294967295UL},{4294967295UL},{0x9F36769EL},{4294967293UL},{1UL}},{{0x9F36769EL},{4294967295UL},{4294967295UL},{0x9F36769EL},{4294967293UL},{1UL}},{{0x9F36769EL},{4294967295UL},{4294967295UL},{0x9F36769EL},{4294967293UL},{1UL}}},{{{0x9F36769EL},{4294967295UL},{4294967295UL},{0x9F36769EL},{4294967293UL},{1UL}},{{0x9F36769EL},{4294967295UL},{4294967295UL},{0x9F36769EL},{4294967293UL},{1UL}},{{0x9F36769EL},{4294967295UL},{4294967295UL},{0x9F36769EL},{4294967293UL},{1UL}}},{{{0x9F36769EL},{4294967295UL},{4294967295UL},{0x9F36769EL},{4294967293UL},{1UL}},{{0x9F36769EL},{4294967295UL},{4294967295UL},{0x9F36769EL},{4294967293UL},{1UL}},{{0x9F36769EL},{4294967295UL},{4294967295UL},{0x9F36769EL},{4294967293UL},{1UL}}}}, // p_1712->g_323
        {1UL}, // p_1712->g_324
        {{{0UL},{0UL},{4294967295UL},{0UL},{0UL},{0UL},{0UL},{4294967295UL}},{{0UL},{0UL},{4294967295UL},{0UL},{0UL},{0UL},{0UL},{4294967295UL}},{{0UL},{0UL},{4294967295UL},{0UL},{0UL},{0UL},{0UL},{4294967295UL}},{{0UL},{0UL},{4294967295UL},{0UL},{0UL},{0UL},{0UL},{4294967295UL}},{{0UL},{0UL},{4294967295UL},{0UL},{0UL},{0UL},{0UL},{4294967295UL}}}, // p_1712->g_325
        {0x2F857729L}, // p_1712->g_326
        {6UL}, // p_1712->g_327
        {{{1UL},{1UL}}}, // p_1712->g_328
        {4294967295UL}, // p_1712->g_329
        {1UL}, // p_1712->g_330
        {0xFA3F5346L}, // p_1712->g_331
        {0xF4282519L}, // p_1712->g_332
        {4294967286UL}, // p_1712->g_333
        {0x2C0D943BL}, // p_1712->g_334
        {0xD9327C20L}, // p_1712->g_335
        {0x66D08C76L}, // p_1712->g_336
        {0x8A1A81AFL}, // p_1712->g_337
        {{0xAFFB6A51L},{0xAFFB6A51L},{0xAFFB6A51L},{0xAFFB6A51L},{0xAFFB6A51L},{0xAFFB6A51L},{0xAFFB6A51L},{0xAFFB6A51L}}, // p_1712->g_338
        {9UL}, // p_1712->g_339
        {0x5FC68337L}, // p_1712->g_340
        {{{&p_1712->g_327,&p_1712->g_321,&p_1712->g_336},{&p_1712->g_327,&p_1712->g_321,&p_1712->g_336},{&p_1712->g_327,&p_1712->g_321,&p_1712->g_336},{&p_1712->g_327,&p_1712->g_321,&p_1712->g_336},{&p_1712->g_327,&p_1712->g_321,&p_1712->g_336}},{{&p_1712->g_327,&p_1712->g_321,&p_1712->g_336},{&p_1712->g_327,&p_1712->g_321,&p_1712->g_336},{&p_1712->g_327,&p_1712->g_321,&p_1712->g_336},{&p_1712->g_327,&p_1712->g_321,&p_1712->g_336},{&p_1712->g_327,&p_1712->g_321,&p_1712->g_336}},{{&p_1712->g_327,&p_1712->g_321,&p_1712->g_336},{&p_1712->g_327,&p_1712->g_321,&p_1712->g_336},{&p_1712->g_327,&p_1712->g_321,&p_1712->g_336},{&p_1712->g_327,&p_1712->g_321,&p_1712->g_336},{&p_1712->g_327,&p_1712->g_321,&p_1712->g_336}},{{&p_1712->g_327,&p_1712->g_321,&p_1712->g_336},{&p_1712->g_327,&p_1712->g_321,&p_1712->g_336},{&p_1712->g_327,&p_1712->g_321,&p_1712->g_336},{&p_1712->g_327,&p_1712->g_321,&p_1712->g_336},{&p_1712->g_327,&p_1712->g_321,&p_1712->g_336}}}, // p_1712->g_320
        &p_1712->g_320[1][4][2], // p_1712->g_319
        (VECTOR(int32_t, 2))(2L, 0L), // p_1712->g_343
        0x84L, // p_1712->g_362
        &p_1712->g_362, // p_1712->g_361
        0x02L, // p_1712->g_365
        (void*)0, // p_1712->g_398
        &p_1712->g_398, // p_1712->g_397
        (VECTOR(int32_t, 8))((-5L), (VECTOR(int32_t, 4))((-5L), (VECTOR(int32_t, 2))((-5L), 1L), 1L), 1L, (-5L), 1L), // p_1712->g_402
        (VECTOR(uint8_t, 2))(0xD1L, 248UL), // p_1712->g_404
        (VECTOR(uint16_t, 8))(0x7D63L, (VECTOR(uint16_t, 4))(0x7D63L, (VECTOR(uint16_t, 2))(0x7D63L, 0x4EEDL), 0x4EEDL), 0x4EEDL, 0x7D63L, 0x4EEDL), // p_1712->g_407
        (VECTOR(uint32_t, 16))(5UL, (VECTOR(uint32_t, 4))(5UL, (VECTOR(uint32_t, 2))(5UL, 0UL), 0UL), 0UL, 5UL, 0UL, (VECTOR(uint32_t, 2))(5UL, 0UL), (VECTOR(uint32_t, 2))(5UL, 0UL), 5UL, 0UL, 5UL, 0UL), // p_1712->g_413
        0x273E5071L, // p_1712->g_429
        &p_1712->g_365, // p_1712->g_432
        &p_1712->g_432, // p_1712->g_431
        0x66L, // p_1712->g_475
        {0xA8DF64A7L,0xA8DF64A7L,0xA8DF64A7L,0xA8DF64A7L,0xA8DF64A7L,0xA8DF64A7L,0xA8DF64A7L}, // p_1712->g_517
        (VECTOR(int32_t, 8))(0x19923B62L, (VECTOR(int32_t, 4))(0x19923B62L, (VECTOR(int32_t, 2))(0x19923B62L, 1L), 1L), 1L, 0x19923B62L, 1L), // p_1712->g_520
        (VECTOR(int32_t, 8))(0x11DA441EL, (VECTOR(int32_t, 4))(0x11DA441EL, (VECTOR(int32_t, 2))(0x11DA441EL, (-9L)), (-9L)), (-9L), 0x11DA441EL, (-9L)), // p_1712->g_521
        (VECTOR(uint16_t, 2))(0xB1A5L, 7UL), // p_1712->g_533
        (VECTOR(uint16_t, 16))(0x04EAL, (VECTOR(uint16_t, 4))(0x04EAL, (VECTOR(uint16_t, 2))(0x04EAL, 0x7B71L), 0x7B71L), 0x7B71L, 0x04EAL, 0x7B71L, (VECTOR(uint16_t, 2))(0x04EAL, 0x7B71L), (VECTOR(uint16_t, 2))(0x04EAL, 0x7B71L), 0x04EAL, 0x7B71L, 0x04EAL, 0x7B71L), // p_1712->g_535
        &p_1712->g_429, // p_1712->g_539
        (VECTOR(int32_t, 2))(0x79565CA3L, 0x3F2B6883L), // p_1712->g_561
        (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 255UL), 255UL), // p_1712->g_572
        (VECTOR(uint8_t, 16))(0xC3L, (VECTOR(uint8_t, 4))(0xC3L, (VECTOR(uint8_t, 2))(0xC3L, 0xD2L), 0xD2L), 0xD2L, 0xC3L, 0xD2L, (VECTOR(uint8_t, 2))(0xC3L, 0xD2L), (VECTOR(uint8_t, 2))(0xC3L, 0xD2L), 0xC3L, 0xD2L, 0xC3L, 0xD2L), // p_1712->g_581
        (VECTOR(uint8_t, 4))(0x3FL, (VECTOR(uint8_t, 2))(0x3FL, 0UL), 0UL), // p_1712->g_582
        (VECTOR(uint8_t, 2))(0x96L, 0x6DL), // p_1712->g_583
        (VECTOR(int32_t, 16))(0x09F3C731L, (VECTOR(int32_t, 4))(0x09F3C731L, (VECTOR(int32_t, 2))(0x09F3C731L, (-9L)), (-9L)), (-9L), 0x09F3C731L, (-9L), (VECTOR(int32_t, 2))(0x09F3C731L, (-9L)), (VECTOR(int32_t, 2))(0x09F3C731L, (-9L)), 0x09F3C731L, (-9L), 0x09F3C731L, (-9L)), // p_1712->g_607
        (VECTOR(int32_t, 2))(0L, 0x1441CBD9L), // p_1712->g_612
        0x61FCL, // p_1712->g_645
        (VECTOR(uint8_t, 8))(5UL, (VECTOR(uint8_t, 4))(5UL, (VECTOR(uint8_t, 2))(5UL, 0UL), 0UL), 0UL, 5UL, 0UL), // p_1712->g_653
        0x30A4L, // p_1712->g_665
        &p_1712->g_665, // p_1712->g_664
        &p_1712->g_429, // p_1712->g_704
        {0x3DFF6771L}, // p_1712->g_736
        (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 1L), 1L), // p_1712->g_752
        (VECTOR(uint16_t, 4))(0xD8E6L, (VECTOR(uint16_t, 2))(0xD8E6L, 0x4FF9L), 0x4FF9L), // p_1712->g_758
        0UL, // p_1712->g_769
        (-1L), // p_1712->g_808
        (VECTOR(uint32_t, 4))(0xB5750347L, (VECTOR(uint32_t, 2))(0xB5750347L, 1UL), 1UL), // p_1712->g_815
        {0x622D4FD2L}, // p_1712->g_829
        &p_1712->g_829, // p_1712->g_828
        {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}}, // p_1712->g_853
        &p_1712->g_853[5][0][5], // p_1712->g_852
        1UL, // p_1712->g_952
        {0xD393AB5AL,0xD393AB5AL}, // p_1712->g_955
        (VECTOR(uint64_t, 4))(0x138750564461CCACL, (VECTOR(uint64_t, 2))(0x138750564461CCACL, 0x30FB76CD3F9BED62L), 0x30FB76CD3F9BED62L), // p_1712->g_996
        (VECTOR(int64_t, 2))(0x12D84A8B35D6EA5FL, 0L), // p_1712->g_1043
        (VECTOR(int64_t, 8))(0x716B28A5E2B80B0EL, (VECTOR(int64_t, 4))(0x716B28A5E2B80B0EL, (VECTOR(int64_t, 2))(0x716B28A5E2B80B0EL, (-1L)), (-1L)), (-1L), 0x716B28A5E2B80B0EL, (-1L)), // p_1712->g_1046
        (VECTOR(uint16_t, 2))(0x6FA9L, 0xC65EL), // p_1712->g_1069
        {{0x6F4BECA6L},{4294967295UL},{0x6F4BECA6L},{0x6F4BECA6L},{4294967295UL},{0x6F4BECA6L}}, // p_1712->g_1073
        (VECTOR(int8_t, 2))(2L, 0x1AL), // p_1712->g_1173
        (VECTOR(int8_t, 2))(7L, (-7L)), // p_1712->g_1175
        (VECTOR(uint16_t, 16))(65528UL, (VECTOR(uint16_t, 4))(65528UL, (VECTOR(uint16_t, 2))(65528UL, 0x7942L), 0x7942L), 0x7942L, 65528UL, 0x7942L, (VECTOR(uint16_t, 2))(65528UL, 0x7942L), (VECTOR(uint16_t, 2))(65528UL, 0x7942L), 65528UL, 0x7942L, 65528UL, 0x7942L), // p_1712->g_1178
        (VECTOR(uint16_t, 4))(0x594FL, (VECTOR(uint16_t, 2))(0x594FL, 1UL), 1UL), // p_1712->g_1179
        (VECTOR(uint16_t, 2))(6UL, 1UL), // p_1712->g_1183
        (VECTOR(uint16_t, 8))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 65533UL), 65533UL), 65533UL, 1UL, 65533UL), // p_1712->g_1184
        (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 1L), 1L), // p_1712->g_1211
        (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 0x80L), 0x80L), // p_1712->g_1216
        (VECTOR(uint32_t, 4))(0xA7430178L, (VECTOR(uint32_t, 2))(0xA7430178L, 0UL), 0UL), // p_1712->g_1225
        (VECTOR(uint32_t, 4))(0x4D23A061L, (VECTOR(uint32_t, 2))(0x4D23A061L, 0xE5078707L), 0xE5078707L), // p_1712->g_1230
        (VECTOR(uint32_t, 2))(0x7B7CFB4AL, 0x45E934E1L), // p_1712->g_1237
        (VECTOR(uint32_t, 16))(0x39C6D797L, (VECTOR(uint32_t, 4))(0x39C6D797L, (VECTOR(uint32_t, 2))(0x39C6D797L, 0UL), 0UL), 0UL, 0x39C6D797L, 0UL, (VECTOR(uint32_t, 2))(0x39C6D797L, 0UL), (VECTOR(uint32_t, 2))(0x39C6D797L, 0UL), 0x39C6D797L, 0UL, 0x39C6D797L, 0UL), // p_1712->g_1241
        (VECTOR(int32_t, 2))((-8L), 0L), // p_1712->g_1250
        {4294967295UL}, // p_1712->g_1287
        {1UL}, // p_1712->g_1295
        (VECTOR(int8_t, 8))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0x04L), 0x04L), 0x04L, 0L, 0x04L), // p_1712->g_1311
        (VECTOR(int8_t, 16))(7L, (VECTOR(int8_t, 4))(7L, (VECTOR(int8_t, 2))(7L, 0L), 0L), 0L, 7L, 0L, (VECTOR(int8_t, 2))(7L, 0L), (VECTOR(int8_t, 2))(7L, 0L), 7L, 0L, 7L, 0L), // p_1712->g_1314
        (VECTOR(int8_t, 8))(0x52L, (VECTOR(int8_t, 4))(0x52L, (VECTOR(int8_t, 2))(0x52L, 0x72L), 0x72L), 0x72L, 0x52L, 0x72L), // p_1712->g_1315
        (VECTOR(int8_t, 8))(0x71L, (VECTOR(int8_t, 4))(0x71L, (VECTOR(int8_t, 2))(0x71L, 0L), 0L), 0L, 0x71L, 0L), // p_1712->g_1316
        {{{1L,0x3063C469L,(-6L),0L,0x79BCF611L,0x159B0002L,0L,0x1FCC13E2L,0x5CACE1D3L,0x338606A9L}},{{1L,0x3063C469L,(-6L),0L,0x79BCF611L,0x159B0002L,0L,0x1FCC13E2L,0x5CACE1D3L,0x338606A9L}},{{1L,0x3063C469L,(-6L),0L,0x79BCF611L,0x159B0002L,0L,0x1FCC13E2L,0x5CACE1D3L,0x338606A9L}},{{1L,0x3063C469L,(-6L),0L,0x79BCF611L,0x159B0002L,0L,0x1FCC13E2L,0x5CACE1D3L,0x338606A9L}},{{1L,0x3063C469L,(-6L),0L,0x79BCF611L,0x159B0002L,0L,0x1FCC13E2L,0x5CACE1D3L,0x338606A9L}},{{1L,0x3063C469L,(-6L),0L,0x79BCF611L,0x159B0002L,0L,0x1FCC13E2L,0x5CACE1D3L,0x338606A9L}},{{1L,0x3063C469L,(-6L),0L,0x79BCF611L,0x159B0002L,0L,0x1FCC13E2L,0x5CACE1D3L,0x338606A9L}}}, // p_1712->g_1325
        1UL, // p_1712->g_1336
        (VECTOR(uint64_t, 2))(18446744073709551615UL, 0x82230FD7D79EA64DL), // p_1712->g_1349
        (void*)0, // p_1712->g_1369
        (VECTOR(uint32_t, 2))(0x9F4CB428L, 7UL), // p_1712->g_1372
        (VECTOR(int8_t, 8))(0x08L, (VECTOR(int8_t, 4))(0x08L, (VECTOR(int8_t, 2))(0x08L, 0L), 0L), 0L, 0x08L, 0L), // p_1712->g_1392
        (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x5FL), 0x5FL), // p_1712->g_1393
        (VECTOR(uint16_t, 16))(0xD32AL, (VECTOR(uint16_t, 4))(0xD32AL, (VECTOR(uint16_t, 2))(0xD32AL, 0xDA80L), 0xDA80L), 0xDA80L, 0xD32AL, 0xDA80L, (VECTOR(uint16_t, 2))(0xD32AL, 0xDA80L), (VECTOR(uint16_t, 2))(0xD32AL, 0xDA80L), 0xD32AL, 0xDA80L, 0xD32AL, 0xDA80L), // p_1712->g_1429
        (VECTOR(uint16_t, 2))(0x74C6L, 65531UL), // p_1712->g_1494
        (VECTOR(int32_t, 2))((-1L), 0x4A9E0E77L), // p_1712->g_1515
        (VECTOR(int32_t, 8))(0x72A59FC6L, (VECTOR(int32_t, 4))(0x72A59FC6L, (VECTOR(int32_t, 2))(0x72A59FC6L, (-7L)), (-7L)), (-7L), 0x72A59FC6L, (-7L)), // p_1712->g_1517
        (VECTOR(int32_t, 4))(0x7740F55EL, (VECTOR(int32_t, 2))(0x7740F55EL, 0x7F9E78D2L), 0x7F9E78D2L), // p_1712->g_1519
        (VECTOR(int16_t, 2))((-3L), 1L), // p_1712->g_1525
        (void*)0, // p_1712->g_1570
        &p_1712->g_1570, // p_1712->g_1569
        &p_1712->g_361, // p_1712->g_1581
        (VECTOR(uint16_t, 8))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0x82D6L), 0x82D6L), 0x82D6L, 1UL, 0x82D6L), // p_1712->g_1611
        (VECTOR(uint16_t, 2))(0xDBAFL, 0UL), // p_1712->g_1616
        {&p_1712->g_1336,&p_1712->g_1336,&p_1712->g_1336,&p_1712->g_1336,&p_1712->g_1336,&p_1712->g_1336}, // p_1712->g_1626
        (VECTOR(int8_t, 8))((-9L), (VECTOR(int8_t, 4))((-9L), (VECTOR(int8_t, 2))((-9L), 0x7AL), 0x7AL), 0x7AL, (-9L), 0x7AL), // p_1712->g_1629
        (VECTOR(int8_t, 2))((-9L), (-1L)), // p_1712->g_1631
        (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x76CC2CC4L), 0x76CC2CC4L), 0x76CC2CC4L, (-1L), 0x76CC2CC4L, (VECTOR(int32_t, 2))((-1L), 0x76CC2CC4L), (VECTOR(int32_t, 2))((-1L), 0x76CC2CC4L), (-1L), 0x76CC2CC4L, (-1L), 0x76CC2CC4L), // p_1712->g_1646
        0x80BA7EE1L, // p_1712->g_1654
        (void*)0, // p_1712->g_1704
        (void*)0, // p_1712->g_1707
        sequence_input[get_global_id(0)], // p_1712->global_0_offset
        sequence_input[get_global_id(1)], // p_1712->global_1_offset
        sequence_input[get_global_id(2)], // p_1712->global_2_offset
        sequence_input[get_local_id(0)], // p_1712->local_0_offset
        sequence_input[get_local_id(1)], // p_1712->local_1_offset
        sequence_input[get_local_id(2)], // p_1712->local_2_offset
        sequence_input[get_group_id(0)], // p_1712->group_0_offset
        sequence_input[get_group_id(1)], // p_1712->group_1_offset
        sequence_input[get_group_id(2)], // p_1712->group_2_offset
    };
    c_1713 = c_1714;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1712);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1712->g_8, "p_1712->g_8", print_hash_value);
    transparent_crc(p_1712->g_12, "p_1712->g_12", print_hash_value);
    transparent_crc(p_1712->g_72.s0, "p_1712->g_72.s0", print_hash_value);
    transparent_crc(p_1712->g_72.s1, "p_1712->g_72.s1", print_hash_value);
    transparent_crc(p_1712->g_72.s2, "p_1712->g_72.s2", print_hash_value);
    transparent_crc(p_1712->g_72.s3, "p_1712->g_72.s3", print_hash_value);
    transparent_crc(p_1712->g_72.s4, "p_1712->g_72.s4", print_hash_value);
    transparent_crc(p_1712->g_72.s5, "p_1712->g_72.s5", print_hash_value);
    transparent_crc(p_1712->g_72.s6, "p_1712->g_72.s6", print_hash_value);
    transparent_crc(p_1712->g_72.s7, "p_1712->g_72.s7", print_hash_value);
    transparent_crc(p_1712->g_72.s8, "p_1712->g_72.s8", print_hash_value);
    transparent_crc(p_1712->g_72.s9, "p_1712->g_72.s9", print_hash_value);
    transparent_crc(p_1712->g_72.sa, "p_1712->g_72.sa", print_hash_value);
    transparent_crc(p_1712->g_72.sb, "p_1712->g_72.sb", print_hash_value);
    transparent_crc(p_1712->g_72.sc, "p_1712->g_72.sc", print_hash_value);
    transparent_crc(p_1712->g_72.sd, "p_1712->g_72.sd", print_hash_value);
    transparent_crc(p_1712->g_72.se, "p_1712->g_72.se", print_hash_value);
    transparent_crc(p_1712->g_72.sf, "p_1712->g_72.sf", print_hash_value);
    transparent_crc(p_1712->g_73.s0, "p_1712->g_73.s0", print_hash_value);
    transparent_crc(p_1712->g_73.s1, "p_1712->g_73.s1", print_hash_value);
    transparent_crc(p_1712->g_73.s2, "p_1712->g_73.s2", print_hash_value);
    transparent_crc(p_1712->g_73.s3, "p_1712->g_73.s3", print_hash_value);
    transparent_crc(p_1712->g_73.s4, "p_1712->g_73.s4", print_hash_value);
    transparent_crc(p_1712->g_73.s5, "p_1712->g_73.s5", print_hash_value);
    transparent_crc(p_1712->g_73.s6, "p_1712->g_73.s6", print_hash_value);
    transparent_crc(p_1712->g_73.s7, "p_1712->g_73.s7", print_hash_value);
    transparent_crc(p_1712->g_73.s8, "p_1712->g_73.s8", print_hash_value);
    transparent_crc(p_1712->g_73.s9, "p_1712->g_73.s9", print_hash_value);
    transparent_crc(p_1712->g_73.sa, "p_1712->g_73.sa", print_hash_value);
    transparent_crc(p_1712->g_73.sb, "p_1712->g_73.sb", print_hash_value);
    transparent_crc(p_1712->g_73.sc, "p_1712->g_73.sc", print_hash_value);
    transparent_crc(p_1712->g_73.sd, "p_1712->g_73.sd", print_hash_value);
    transparent_crc(p_1712->g_73.se, "p_1712->g_73.se", print_hash_value);
    transparent_crc(p_1712->g_73.sf, "p_1712->g_73.sf", print_hash_value);
    transparent_crc(p_1712->g_78.s0, "p_1712->g_78.s0", print_hash_value);
    transparent_crc(p_1712->g_78.s1, "p_1712->g_78.s1", print_hash_value);
    transparent_crc(p_1712->g_78.s2, "p_1712->g_78.s2", print_hash_value);
    transparent_crc(p_1712->g_78.s3, "p_1712->g_78.s3", print_hash_value);
    transparent_crc(p_1712->g_78.s4, "p_1712->g_78.s4", print_hash_value);
    transparent_crc(p_1712->g_78.s5, "p_1712->g_78.s5", print_hash_value);
    transparent_crc(p_1712->g_78.s6, "p_1712->g_78.s6", print_hash_value);
    transparent_crc(p_1712->g_78.s7, "p_1712->g_78.s7", print_hash_value);
    transparent_crc(p_1712->g_82.s0, "p_1712->g_82.s0", print_hash_value);
    transparent_crc(p_1712->g_82.s1, "p_1712->g_82.s1", print_hash_value);
    transparent_crc(p_1712->g_82.s2, "p_1712->g_82.s2", print_hash_value);
    transparent_crc(p_1712->g_82.s3, "p_1712->g_82.s3", print_hash_value);
    transparent_crc(p_1712->g_82.s4, "p_1712->g_82.s4", print_hash_value);
    transparent_crc(p_1712->g_82.s5, "p_1712->g_82.s5", print_hash_value);
    transparent_crc(p_1712->g_82.s6, "p_1712->g_82.s6", print_hash_value);
    transparent_crc(p_1712->g_82.s7, "p_1712->g_82.s7", print_hash_value);
    transparent_crc(p_1712->g_89.s0, "p_1712->g_89.s0", print_hash_value);
    transparent_crc(p_1712->g_89.s1, "p_1712->g_89.s1", print_hash_value);
    transparent_crc(p_1712->g_89.s2, "p_1712->g_89.s2", print_hash_value);
    transparent_crc(p_1712->g_89.s3, "p_1712->g_89.s3", print_hash_value);
    transparent_crc(p_1712->g_89.s4, "p_1712->g_89.s4", print_hash_value);
    transparent_crc(p_1712->g_89.s5, "p_1712->g_89.s5", print_hash_value);
    transparent_crc(p_1712->g_89.s6, "p_1712->g_89.s6", print_hash_value);
    transparent_crc(p_1712->g_89.s7, "p_1712->g_89.s7", print_hash_value);
    transparent_crc(p_1712->g_90.x, "p_1712->g_90.x", print_hash_value);
    transparent_crc(p_1712->g_90.y, "p_1712->g_90.y", print_hash_value);
    transparent_crc(p_1712->g_94.x, "p_1712->g_94.x", print_hash_value);
    transparent_crc(p_1712->g_94.y, "p_1712->g_94.y", print_hash_value);
    transparent_crc(p_1712->g_110, "p_1712->g_110", print_hash_value);
    transparent_crc(p_1712->g_113, "p_1712->g_113", print_hash_value);
    transparent_crc(p_1712->g_125.x, "p_1712->g_125.x", print_hash_value);
    transparent_crc(p_1712->g_125.y, "p_1712->g_125.y", print_hash_value);
    transparent_crc(p_1712->g_125.z, "p_1712->g_125.z", print_hash_value);
    transparent_crc(p_1712->g_125.w, "p_1712->g_125.w", print_hash_value);
    transparent_crc(p_1712->g_135, "p_1712->g_135", print_hash_value);
    transparent_crc(p_1712->g_151, "p_1712->g_151", print_hash_value);
    transparent_crc(p_1712->g_156.x, "p_1712->g_156.x", print_hash_value);
    transparent_crc(p_1712->g_156.y, "p_1712->g_156.y", print_hash_value);
    transparent_crc(p_1712->g_167.x, "p_1712->g_167.x", print_hash_value);
    transparent_crc(p_1712->g_167.y, "p_1712->g_167.y", print_hash_value);
    transparent_crc(p_1712->g_188.x, "p_1712->g_188.x", print_hash_value);
    transparent_crc(p_1712->g_188.y, "p_1712->g_188.y", print_hash_value);
    transparent_crc(p_1712->g_188.z, "p_1712->g_188.z", print_hash_value);
    transparent_crc(p_1712->g_188.w, "p_1712->g_188.w", print_hash_value);
    transparent_crc(p_1712->g_189.s0, "p_1712->g_189.s0", print_hash_value);
    transparent_crc(p_1712->g_189.s1, "p_1712->g_189.s1", print_hash_value);
    transparent_crc(p_1712->g_189.s2, "p_1712->g_189.s2", print_hash_value);
    transparent_crc(p_1712->g_189.s3, "p_1712->g_189.s3", print_hash_value);
    transparent_crc(p_1712->g_189.s4, "p_1712->g_189.s4", print_hash_value);
    transparent_crc(p_1712->g_189.s5, "p_1712->g_189.s5", print_hash_value);
    transparent_crc(p_1712->g_189.s6, "p_1712->g_189.s6", print_hash_value);
    transparent_crc(p_1712->g_189.s7, "p_1712->g_189.s7", print_hash_value);
    transparent_crc(p_1712->g_197.s0, "p_1712->g_197.s0", print_hash_value);
    transparent_crc(p_1712->g_197.s1, "p_1712->g_197.s1", print_hash_value);
    transparent_crc(p_1712->g_197.s2, "p_1712->g_197.s2", print_hash_value);
    transparent_crc(p_1712->g_197.s3, "p_1712->g_197.s3", print_hash_value);
    transparent_crc(p_1712->g_197.s4, "p_1712->g_197.s4", print_hash_value);
    transparent_crc(p_1712->g_197.s5, "p_1712->g_197.s5", print_hash_value);
    transparent_crc(p_1712->g_197.s6, "p_1712->g_197.s6", print_hash_value);
    transparent_crc(p_1712->g_197.s7, "p_1712->g_197.s7", print_hash_value);
    transparent_crc(p_1712->g_197.s8, "p_1712->g_197.s8", print_hash_value);
    transparent_crc(p_1712->g_197.s9, "p_1712->g_197.s9", print_hash_value);
    transparent_crc(p_1712->g_197.sa, "p_1712->g_197.sa", print_hash_value);
    transparent_crc(p_1712->g_197.sb, "p_1712->g_197.sb", print_hash_value);
    transparent_crc(p_1712->g_197.sc, "p_1712->g_197.sc", print_hash_value);
    transparent_crc(p_1712->g_197.sd, "p_1712->g_197.sd", print_hash_value);
    transparent_crc(p_1712->g_197.se, "p_1712->g_197.se", print_hash_value);
    transparent_crc(p_1712->g_197.sf, "p_1712->g_197.sf", print_hash_value);
    transparent_crc(p_1712->g_200.s0, "p_1712->g_200.s0", print_hash_value);
    transparent_crc(p_1712->g_200.s1, "p_1712->g_200.s1", print_hash_value);
    transparent_crc(p_1712->g_200.s2, "p_1712->g_200.s2", print_hash_value);
    transparent_crc(p_1712->g_200.s3, "p_1712->g_200.s3", print_hash_value);
    transparent_crc(p_1712->g_200.s4, "p_1712->g_200.s4", print_hash_value);
    transparent_crc(p_1712->g_200.s5, "p_1712->g_200.s5", print_hash_value);
    transparent_crc(p_1712->g_200.s6, "p_1712->g_200.s6", print_hash_value);
    transparent_crc(p_1712->g_200.s7, "p_1712->g_200.s7", print_hash_value);
    transparent_crc(p_1712->g_230.x, "p_1712->g_230.x", print_hash_value);
    transparent_crc(p_1712->g_230.y, "p_1712->g_230.y", print_hash_value);
    transparent_crc(p_1712->g_230.z, "p_1712->g_230.z", print_hash_value);
    transparent_crc(p_1712->g_230.w, "p_1712->g_230.w", print_hash_value);
    transparent_crc(p_1712->g_241.s0, "p_1712->g_241.s0", print_hash_value);
    transparent_crc(p_1712->g_241.s1, "p_1712->g_241.s1", print_hash_value);
    transparent_crc(p_1712->g_241.s2, "p_1712->g_241.s2", print_hash_value);
    transparent_crc(p_1712->g_241.s3, "p_1712->g_241.s3", print_hash_value);
    transparent_crc(p_1712->g_241.s4, "p_1712->g_241.s4", print_hash_value);
    transparent_crc(p_1712->g_241.s5, "p_1712->g_241.s5", print_hash_value);
    transparent_crc(p_1712->g_241.s6, "p_1712->g_241.s6", print_hash_value);
    transparent_crc(p_1712->g_241.s7, "p_1712->g_241.s7", print_hash_value);
    transparent_crc(p_1712->g_241.s8, "p_1712->g_241.s8", print_hash_value);
    transparent_crc(p_1712->g_241.s9, "p_1712->g_241.s9", print_hash_value);
    transparent_crc(p_1712->g_241.sa, "p_1712->g_241.sa", print_hash_value);
    transparent_crc(p_1712->g_241.sb, "p_1712->g_241.sb", print_hash_value);
    transparent_crc(p_1712->g_241.sc, "p_1712->g_241.sc", print_hash_value);
    transparent_crc(p_1712->g_241.sd, "p_1712->g_241.sd", print_hash_value);
    transparent_crc(p_1712->g_241.se, "p_1712->g_241.se", print_hash_value);
    transparent_crc(p_1712->g_241.sf, "p_1712->g_241.sf", print_hash_value);
    transparent_crc(p_1712->g_247.s0, "p_1712->g_247.s0", print_hash_value);
    transparent_crc(p_1712->g_247.s1, "p_1712->g_247.s1", print_hash_value);
    transparent_crc(p_1712->g_247.s2, "p_1712->g_247.s2", print_hash_value);
    transparent_crc(p_1712->g_247.s3, "p_1712->g_247.s3", print_hash_value);
    transparent_crc(p_1712->g_247.s4, "p_1712->g_247.s4", print_hash_value);
    transparent_crc(p_1712->g_247.s5, "p_1712->g_247.s5", print_hash_value);
    transparent_crc(p_1712->g_247.s6, "p_1712->g_247.s6", print_hash_value);
    transparent_crc(p_1712->g_247.s7, "p_1712->g_247.s7", print_hash_value);
    transparent_crc(p_1712->g_247.s8, "p_1712->g_247.s8", print_hash_value);
    transparent_crc(p_1712->g_247.s9, "p_1712->g_247.s9", print_hash_value);
    transparent_crc(p_1712->g_247.sa, "p_1712->g_247.sa", print_hash_value);
    transparent_crc(p_1712->g_247.sb, "p_1712->g_247.sb", print_hash_value);
    transparent_crc(p_1712->g_247.sc, "p_1712->g_247.sc", print_hash_value);
    transparent_crc(p_1712->g_247.sd, "p_1712->g_247.sd", print_hash_value);
    transparent_crc(p_1712->g_247.se, "p_1712->g_247.se", print_hash_value);
    transparent_crc(p_1712->g_247.sf, "p_1712->g_247.sf", print_hash_value);
    transparent_crc(p_1712->g_248.s0, "p_1712->g_248.s0", print_hash_value);
    transparent_crc(p_1712->g_248.s1, "p_1712->g_248.s1", print_hash_value);
    transparent_crc(p_1712->g_248.s2, "p_1712->g_248.s2", print_hash_value);
    transparent_crc(p_1712->g_248.s3, "p_1712->g_248.s3", print_hash_value);
    transparent_crc(p_1712->g_248.s4, "p_1712->g_248.s4", print_hash_value);
    transparent_crc(p_1712->g_248.s5, "p_1712->g_248.s5", print_hash_value);
    transparent_crc(p_1712->g_248.s6, "p_1712->g_248.s6", print_hash_value);
    transparent_crc(p_1712->g_248.s7, "p_1712->g_248.s7", print_hash_value);
    transparent_crc(p_1712->g_249.s0, "p_1712->g_249.s0", print_hash_value);
    transparent_crc(p_1712->g_249.s1, "p_1712->g_249.s1", print_hash_value);
    transparent_crc(p_1712->g_249.s2, "p_1712->g_249.s2", print_hash_value);
    transparent_crc(p_1712->g_249.s3, "p_1712->g_249.s3", print_hash_value);
    transparent_crc(p_1712->g_249.s4, "p_1712->g_249.s4", print_hash_value);
    transparent_crc(p_1712->g_249.s5, "p_1712->g_249.s5", print_hash_value);
    transparent_crc(p_1712->g_249.s6, "p_1712->g_249.s6", print_hash_value);
    transparent_crc(p_1712->g_249.s7, "p_1712->g_249.s7", print_hash_value);
    transparent_crc(p_1712->g_281, "p_1712->g_281", print_hash_value);
    transparent_crc(p_1712->g_326.f0, "p_1712->g_326.f0", print_hash_value);
    transparent_crc(p_1712->g_327.f0, "p_1712->g_327.f0", print_hash_value);
    transparent_crc(p_1712->g_329.f1, "p_1712->g_329.f1", print_hash_value);
    transparent_crc(p_1712->g_332.f0, "p_1712->g_332.f0", print_hash_value);
    transparent_crc(p_1712->g_333.f0, "p_1712->g_333.f0", print_hash_value);
    transparent_crc(p_1712->g_337.f0, "p_1712->g_337.f0", print_hash_value);
    transparent_crc(p_1712->g_340.f0, "p_1712->g_340.f0", print_hash_value);
    transparent_crc(p_1712->g_343.x, "p_1712->g_343.x", print_hash_value);
    transparent_crc(p_1712->g_343.y, "p_1712->g_343.y", print_hash_value);
    transparent_crc(p_1712->g_362, "p_1712->g_362", print_hash_value);
    transparent_crc(p_1712->g_365, "p_1712->g_365", print_hash_value);
    transparent_crc(p_1712->g_402.s0, "p_1712->g_402.s0", print_hash_value);
    transparent_crc(p_1712->g_402.s1, "p_1712->g_402.s1", print_hash_value);
    transparent_crc(p_1712->g_402.s2, "p_1712->g_402.s2", print_hash_value);
    transparent_crc(p_1712->g_402.s3, "p_1712->g_402.s3", print_hash_value);
    transparent_crc(p_1712->g_402.s4, "p_1712->g_402.s4", print_hash_value);
    transparent_crc(p_1712->g_402.s5, "p_1712->g_402.s5", print_hash_value);
    transparent_crc(p_1712->g_402.s6, "p_1712->g_402.s6", print_hash_value);
    transparent_crc(p_1712->g_402.s7, "p_1712->g_402.s7", print_hash_value);
    transparent_crc(p_1712->g_404.x, "p_1712->g_404.x", print_hash_value);
    transparent_crc(p_1712->g_404.y, "p_1712->g_404.y", print_hash_value);
    transparent_crc(p_1712->g_407.s0, "p_1712->g_407.s0", print_hash_value);
    transparent_crc(p_1712->g_407.s1, "p_1712->g_407.s1", print_hash_value);
    transparent_crc(p_1712->g_407.s2, "p_1712->g_407.s2", print_hash_value);
    transparent_crc(p_1712->g_407.s3, "p_1712->g_407.s3", print_hash_value);
    transparent_crc(p_1712->g_407.s4, "p_1712->g_407.s4", print_hash_value);
    transparent_crc(p_1712->g_407.s5, "p_1712->g_407.s5", print_hash_value);
    transparent_crc(p_1712->g_407.s6, "p_1712->g_407.s6", print_hash_value);
    transparent_crc(p_1712->g_407.s7, "p_1712->g_407.s7", print_hash_value);
    transparent_crc(p_1712->g_413.s0, "p_1712->g_413.s0", print_hash_value);
    transparent_crc(p_1712->g_413.s1, "p_1712->g_413.s1", print_hash_value);
    transparent_crc(p_1712->g_413.s2, "p_1712->g_413.s2", print_hash_value);
    transparent_crc(p_1712->g_413.s3, "p_1712->g_413.s3", print_hash_value);
    transparent_crc(p_1712->g_413.s4, "p_1712->g_413.s4", print_hash_value);
    transparent_crc(p_1712->g_413.s5, "p_1712->g_413.s5", print_hash_value);
    transparent_crc(p_1712->g_413.s6, "p_1712->g_413.s6", print_hash_value);
    transparent_crc(p_1712->g_413.s7, "p_1712->g_413.s7", print_hash_value);
    transparent_crc(p_1712->g_413.s8, "p_1712->g_413.s8", print_hash_value);
    transparent_crc(p_1712->g_413.s9, "p_1712->g_413.s9", print_hash_value);
    transparent_crc(p_1712->g_413.sa, "p_1712->g_413.sa", print_hash_value);
    transparent_crc(p_1712->g_413.sb, "p_1712->g_413.sb", print_hash_value);
    transparent_crc(p_1712->g_413.sc, "p_1712->g_413.sc", print_hash_value);
    transparent_crc(p_1712->g_413.sd, "p_1712->g_413.sd", print_hash_value);
    transparent_crc(p_1712->g_413.se, "p_1712->g_413.se", print_hash_value);
    transparent_crc(p_1712->g_413.sf, "p_1712->g_413.sf", print_hash_value);
    transparent_crc(p_1712->g_429, "p_1712->g_429", print_hash_value);
    transparent_crc(p_1712->g_475, "p_1712->g_475", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1712->g_517[i], "p_1712->g_517[i]", print_hash_value);

    }
    transparent_crc(p_1712->g_520.s0, "p_1712->g_520.s0", print_hash_value);
    transparent_crc(p_1712->g_520.s1, "p_1712->g_520.s1", print_hash_value);
    transparent_crc(p_1712->g_520.s2, "p_1712->g_520.s2", print_hash_value);
    transparent_crc(p_1712->g_520.s3, "p_1712->g_520.s3", print_hash_value);
    transparent_crc(p_1712->g_520.s4, "p_1712->g_520.s4", print_hash_value);
    transparent_crc(p_1712->g_520.s5, "p_1712->g_520.s5", print_hash_value);
    transparent_crc(p_1712->g_520.s6, "p_1712->g_520.s6", print_hash_value);
    transparent_crc(p_1712->g_520.s7, "p_1712->g_520.s7", print_hash_value);
    transparent_crc(p_1712->g_521.s0, "p_1712->g_521.s0", print_hash_value);
    transparent_crc(p_1712->g_521.s1, "p_1712->g_521.s1", print_hash_value);
    transparent_crc(p_1712->g_521.s2, "p_1712->g_521.s2", print_hash_value);
    transparent_crc(p_1712->g_521.s3, "p_1712->g_521.s3", print_hash_value);
    transparent_crc(p_1712->g_521.s4, "p_1712->g_521.s4", print_hash_value);
    transparent_crc(p_1712->g_521.s5, "p_1712->g_521.s5", print_hash_value);
    transparent_crc(p_1712->g_521.s6, "p_1712->g_521.s6", print_hash_value);
    transparent_crc(p_1712->g_521.s7, "p_1712->g_521.s7", print_hash_value);
    transparent_crc(p_1712->g_533.x, "p_1712->g_533.x", print_hash_value);
    transparent_crc(p_1712->g_533.y, "p_1712->g_533.y", print_hash_value);
    transparent_crc(p_1712->g_535.s0, "p_1712->g_535.s0", print_hash_value);
    transparent_crc(p_1712->g_535.s1, "p_1712->g_535.s1", print_hash_value);
    transparent_crc(p_1712->g_535.s2, "p_1712->g_535.s2", print_hash_value);
    transparent_crc(p_1712->g_535.s3, "p_1712->g_535.s3", print_hash_value);
    transparent_crc(p_1712->g_535.s4, "p_1712->g_535.s4", print_hash_value);
    transparent_crc(p_1712->g_535.s5, "p_1712->g_535.s5", print_hash_value);
    transparent_crc(p_1712->g_535.s6, "p_1712->g_535.s6", print_hash_value);
    transparent_crc(p_1712->g_535.s7, "p_1712->g_535.s7", print_hash_value);
    transparent_crc(p_1712->g_535.s8, "p_1712->g_535.s8", print_hash_value);
    transparent_crc(p_1712->g_535.s9, "p_1712->g_535.s9", print_hash_value);
    transparent_crc(p_1712->g_535.sa, "p_1712->g_535.sa", print_hash_value);
    transparent_crc(p_1712->g_535.sb, "p_1712->g_535.sb", print_hash_value);
    transparent_crc(p_1712->g_535.sc, "p_1712->g_535.sc", print_hash_value);
    transparent_crc(p_1712->g_535.sd, "p_1712->g_535.sd", print_hash_value);
    transparent_crc(p_1712->g_535.se, "p_1712->g_535.se", print_hash_value);
    transparent_crc(p_1712->g_535.sf, "p_1712->g_535.sf", print_hash_value);
    transparent_crc(p_1712->g_561.x, "p_1712->g_561.x", print_hash_value);
    transparent_crc(p_1712->g_561.y, "p_1712->g_561.y", print_hash_value);
    transparent_crc(p_1712->g_572.x, "p_1712->g_572.x", print_hash_value);
    transparent_crc(p_1712->g_572.y, "p_1712->g_572.y", print_hash_value);
    transparent_crc(p_1712->g_572.z, "p_1712->g_572.z", print_hash_value);
    transparent_crc(p_1712->g_572.w, "p_1712->g_572.w", print_hash_value);
    transparent_crc(p_1712->g_581.s0, "p_1712->g_581.s0", print_hash_value);
    transparent_crc(p_1712->g_581.s1, "p_1712->g_581.s1", print_hash_value);
    transparent_crc(p_1712->g_581.s2, "p_1712->g_581.s2", print_hash_value);
    transparent_crc(p_1712->g_581.s3, "p_1712->g_581.s3", print_hash_value);
    transparent_crc(p_1712->g_581.s4, "p_1712->g_581.s4", print_hash_value);
    transparent_crc(p_1712->g_581.s5, "p_1712->g_581.s5", print_hash_value);
    transparent_crc(p_1712->g_581.s6, "p_1712->g_581.s6", print_hash_value);
    transparent_crc(p_1712->g_581.s7, "p_1712->g_581.s7", print_hash_value);
    transparent_crc(p_1712->g_581.s8, "p_1712->g_581.s8", print_hash_value);
    transparent_crc(p_1712->g_581.s9, "p_1712->g_581.s9", print_hash_value);
    transparent_crc(p_1712->g_581.sa, "p_1712->g_581.sa", print_hash_value);
    transparent_crc(p_1712->g_581.sb, "p_1712->g_581.sb", print_hash_value);
    transparent_crc(p_1712->g_581.sc, "p_1712->g_581.sc", print_hash_value);
    transparent_crc(p_1712->g_581.sd, "p_1712->g_581.sd", print_hash_value);
    transparent_crc(p_1712->g_581.se, "p_1712->g_581.se", print_hash_value);
    transparent_crc(p_1712->g_581.sf, "p_1712->g_581.sf", print_hash_value);
    transparent_crc(p_1712->g_582.x, "p_1712->g_582.x", print_hash_value);
    transparent_crc(p_1712->g_582.y, "p_1712->g_582.y", print_hash_value);
    transparent_crc(p_1712->g_582.z, "p_1712->g_582.z", print_hash_value);
    transparent_crc(p_1712->g_582.w, "p_1712->g_582.w", print_hash_value);
    transparent_crc(p_1712->g_583.x, "p_1712->g_583.x", print_hash_value);
    transparent_crc(p_1712->g_583.y, "p_1712->g_583.y", print_hash_value);
    transparent_crc(p_1712->g_607.s0, "p_1712->g_607.s0", print_hash_value);
    transparent_crc(p_1712->g_607.s1, "p_1712->g_607.s1", print_hash_value);
    transparent_crc(p_1712->g_607.s2, "p_1712->g_607.s2", print_hash_value);
    transparent_crc(p_1712->g_607.s3, "p_1712->g_607.s3", print_hash_value);
    transparent_crc(p_1712->g_607.s4, "p_1712->g_607.s4", print_hash_value);
    transparent_crc(p_1712->g_607.s5, "p_1712->g_607.s5", print_hash_value);
    transparent_crc(p_1712->g_607.s6, "p_1712->g_607.s6", print_hash_value);
    transparent_crc(p_1712->g_607.s7, "p_1712->g_607.s7", print_hash_value);
    transparent_crc(p_1712->g_607.s8, "p_1712->g_607.s8", print_hash_value);
    transparent_crc(p_1712->g_607.s9, "p_1712->g_607.s9", print_hash_value);
    transparent_crc(p_1712->g_607.sa, "p_1712->g_607.sa", print_hash_value);
    transparent_crc(p_1712->g_607.sb, "p_1712->g_607.sb", print_hash_value);
    transparent_crc(p_1712->g_607.sc, "p_1712->g_607.sc", print_hash_value);
    transparent_crc(p_1712->g_607.sd, "p_1712->g_607.sd", print_hash_value);
    transparent_crc(p_1712->g_607.se, "p_1712->g_607.se", print_hash_value);
    transparent_crc(p_1712->g_607.sf, "p_1712->g_607.sf", print_hash_value);
    transparent_crc(p_1712->g_612.x, "p_1712->g_612.x", print_hash_value);
    transparent_crc(p_1712->g_612.y, "p_1712->g_612.y", print_hash_value);
    transparent_crc(p_1712->g_645, "p_1712->g_645", print_hash_value);
    transparent_crc(p_1712->g_653.s0, "p_1712->g_653.s0", print_hash_value);
    transparent_crc(p_1712->g_653.s1, "p_1712->g_653.s1", print_hash_value);
    transparent_crc(p_1712->g_653.s2, "p_1712->g_653.s2", print_hash_value);
    transparent_crc(p_1712->g_653.s3, "p_1712->g_653.s3", print_hash_value);
    transparent_crc(p_1712->g_653.s4, "p_1712->g_653.s4", print_hash_value);
    transparent_crc(p_1712->g_653.s5, "p_1712->g_653.s5", print_hash_value);
    transparent_crc(p_1712->g_653.s6, "p_1712->g_653.s6", print_hash_value);
    transparent_crc(p_1712->g_653.s7, "p_1712->g_653.s7", print_hash_value);
    transparent_crc(p_1712->g_665, "p_1712->g_665", print_hash_value);
    transparent_crc(p_1712->g_736.f0, "p_1712->g_736.f0", print_hash_value);
    transparent_crc(p_1712->g_752.x, "p_1712->g_752.x", print_hash_value);
    transparent_crc(p_1712->g_752.y, "p_1712->g_752.y", print_hash_value);
    transparent_crc(p_1712->g_752.z, "p_1712->g_752.z", print_hash_value);
    transparent_crc(p_1712->g_752.w, "p_1712->g_752.w", print_hash_value);
    transparent_crc(p_1712->g_758.x, "p_1712->g_758.x", print_hash_value);
    transparent_crc(p_1712->g_758.y, "p_1712->g_758.y", print_hash_value);
    transparent_crc(p_1712->g_758.z, "p_1712->g_758.z", print_hash_value);
    transparent_crc(p_1712->g_758.w, "p_1712->g_758.w", print_hash_value);
    transparent_crc(p_1712->g_769, "p_1712->g_769", print_hash_value);
    transparent_crc(p_1712->g_808, "p_1712->g_808", print_hash_value);
    transparent_crc(p_1712->g_815.x, "p_1712->g_815.x", print_hash_value);
    transparent_crc(p_1712->g_815.y, "p_1712->g_815.y", print_hash_value);
    transparent_crc(p_1712->g_815.z, "p_1712->g_815.z", print_hash_value);
    transparent_crc(p_1712->g_815.w, "p_1712->g_815.w", print_hash_value);
    transparent_crc(p_1712->g_829.f3, "p_1712->g_829.f3", print_hash_value);
    transparent_crc(p_1712->g_952, "p_1712->g_952", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1712->g_955[i], "p_1712->g_955[i]", print_hash_value);

    }
    transparent_crc(p_1712->g_996.x, "p_1712->g_996.x", print_hash_value);
    transparent_crc(p_1712->g_996.y, "p_1712->g_996.y", print_hash_value);
    transparent_crc(p_1712->g_996.z, "p_1712->g_996.z", print_hash_value);
    transparent_crc(p_1712->g_996.w, "p_1712->g_996.w", print_hash_value);
    transparent_crc(p_1712->g_1043.x, "p_1712->g_1043.x", print_hash_value);
    transparent_crc(p_1712->g_1043.y, "p_1712->g_1043.y", print_hash_value);
    transparent_crc(p_1712->g_1046.s0, "p_1712->g_1046.s0", print_hash_value);
    transparent_crc(p_1712->g_1046.s1, "p_1712->g_1046.s1", print_hash_value);
    transparent_crc(p_1712->g_1046.s2, "p_1712->g_1046.s2", print_hash_value);
    transparent_crc(p_1712->g_1046.s3, "p_1712->g_1046.s3", print_hash_value);
    transparent_crc(p_1712->g_1046.s4, "p_1712->g_1046.s4", print_hash_value);
    transparent_crc(p_1712->g_1046.s5, "p_1712->g_1046.s5", print_hash_value);
    transparent_crc(p_1712->g_1046.s6, "p_1712->g_1046.s6", print_hash_value);
    transparent_crc(p_1712->g_1046.s7, "p_1712->g_1046.s7", print_hash_value);
    transparent_crc(p_1712->g_1069.x, "p_1712->g_1069.x", print_hash_value);
    transparent_crc(p_1712->g_1069.y, "p_1712->g_1069.y", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_1712->g_1073[i].f0, "p_1712->g_1073[i].f0", print_hash_value);

    }
    transparent_crc(p_1712->g_1173.x, "p_1712->g_1173.x", print_hash_value);
    transparent_crc(p_1712->g_1173.y, "p_1712->g_1173.y", print_hash_value);
    transparent_crc(p_1712->g_1175.x, "p_1712->g_1175.x", print_hash_value);
    transparent_crc(p_1712->g_1175.y, "p_1712->g_1175.y", print_hash_value);
    transparent_crc(p_1712->g_1178.s0, "p_1712->g_1178.s0", print_hash_value);
    transparent_crc(p_1712->g_1178.s1, "p_1712->g_1178.s1", print_hash_value);
    transparent_crc(p_1712->g_1178.s2, "p_1712->g_1178.s2", print_hash_value);
    transparent_crc(p_1712->g_1178.s3, "p_1712->g_1178.s3", print_hash_value);
    transparent_crc(p_1712->g_1178.s4, "p_1712->g_1178.s4", print_hash_value);
    transparent_crc(p_1712->g_1178.s5, "p_1712->g_1178.s5", print_hash_value);
    transparent_crc(p_1712->g_1178.s6, "p_1712->g_1178.s6", print_hash_value);
    transparent_crc(p_1712->g_1178.s7, "p_1712->g_1178.s7", print_hash_value);
    transparent_crc(p_1712->g_1178.s8, "p_1712->g_1178.s8", print_hash_value);
    transparent_crc(p_1712->g_1178.s9, "p_1712->g_1178.s9", print_hash_value);
    transparent_crc(p_1712->g_1178.sa, "p_1712->g_1178.sa", print_hash_value);
    transparent_crc(p_1712->g_1178.sb, "p_1712->g_1178.sb", print_hash_value);
    transparent_crc(p_1712->g_1178.sc, "p_1712->g_1178.sc", print_hash_value);
    transparent_crc(p_1712->g_1178.sd, "p_1712->g_1178.sd", print_hash_value);
    transparent_crc(p_1712->g_1178.se, "p_1712->g_1178.se", print_hash_value);
    transparent_crc(p_1712->g_1178.sf, "p_1712->g_1178.sf", print_hash_value);
    transparent_crc(p_1712->g_1179.x, "p_1712->g_1179.x", print_hash_value);
    transparent_crc(p_1712->g_1179.y, "p_1712->g_1179.y", print_hash_value);
    transparent_crc(p_1712->g_1179.z, "p_1712->g_1179.z", print_hash_value);
    transparent_crc(p_1712->g_1179.w, "p_1712->g_1179.w", print_hash_value);
    transparent_crc(p_1712->g_1183.x, "p_1712->g_1183.x", print_hash_value);
    transparent_crc(p_1712->g_1183.y, "p_1712->g_1183.y", print_hash_value);
    transparent_crc(p_1712->g_1184.s0, "p_1712->g_1184.s0", print_hash_value);
    transparent_crc(p_1712->g_1184.s1, "p_1712->g_1184.s1", print_hash_value);
    transparent_crc(p_1712->g_1184.s2, "p_1712->g_1184.s2", print_hash_value);
    transparent_crc(p_1712->g_1184.s3, "p_1712->g_1184.s3", print_hash_value);
    transparent_crc(p_1712->g_1184.s4, "p_1712->g_1184.s4", print_hash_value);
    transparent_crc(p_1712->g_1184.s5, "p_1712->g_1184.s5", print_hash_value);
    transparent_crc(p_1712->g_1184.s6, "p_1712->g_1184.s6", print_hash_value);
    transparent_crc(p_1712->g_1184.s7, "p_1712->g_1184.s7", print_hash_value);
    transparent_crc(p_1712->g_1211.x, "p_1712->g_1211.x", print_hash_value);
    transparent_crc(p_1712->g_1211.y, "p_1712->g_1211.y", print_hash_value);
    transparent_crc(p_1712->g_1211.z, "p_1712->g_1211.z", print_hash_value);
    transparent_crc(p_1712->g_1211.w, "p_1712->g_1211.w", print_hash_value);
    transparent_crc(p_1712->g_1216.x, "p_1712->g_1216.x", print_hash_value);
    transparent_crc(p_1712->g_1216.y, "p_1712->g_1216.y", print_hash_value);
    transparent_crc(p_1712->g_1216.z, "p_1712->g_1216.z", print_hash_value);
    transparent_crc(p_1712->g_1216.w, "p_1712->g_1216.w", print_hash_value);
    transparent_crc(p_1712->g_1225.x, "p_1712->g_1225.x", print_hash_value);
    transparent_crc(p_1712->g_1225.y, "p_1712->g_1225.y", print_hash_value);
    transparent_crc(p_1712->g_1225.z, "p_1712->g_1225.z", print_hash_value);
    transparent_crc(p_1712->g_1225.w, "p_1712->g_1225.w", print_hash_value);
    transparent_crc(p_1712->g_1230.x, "p_1712->g_1230.x", print_hash_value);
    transparent_crc(p_1712->g_1230.y, "p_1712->g_1230.y", print_hash_value);
    transparent_crc(p_1712->g_1230.z, "p_1712->g_1230.z", print_hash_value);
    transparent_crc(p_1712->g_1230.w, "p_1712->g_1230.w", print_hash_value);
    transparent_crc(p_1712->g_1237.x, "p_1712->g_1237.x", print_hash_value);
    transparent_crc(p_1712->g_1237.y, "p_1712->g_1237.y", print_hash_value);
    transparent_crc(p_1712->g_1241.s0, "p_1712->g_1241.s0", print_hash_value);
    transparent_crc(p_1712->g_1241.s1, "p_1712->g_1241.s1", print_hash_value);
    transparent_crc(p_1712->g_1241.s2, "p_1712->g_1241.s2", print_hash_value);
    transparent_crc(p_1712->g_1241.s3, "p_1712->g_1241.s3", print_hash_value);
    transparent_crc(p_1712->g_1241.s4, "p_1712->g_1241.s4", print_hash_value);
    transparent_crc(p_1712->g_1241.s5, "p_1712->g_1241.s5", print_hash_value);
    transparent_crc(p_1712->g_1241.s6, "p_1712->g_1241.s6", print_hash_value);
    transparent_crc(p_1712->g_1241.s7, "p_1712->g_1241.s7", print_hash_value);
    transparent_crc(p_1712->g_1241.s8, "p_1712->g_1241.s8", print_hash_value);
    transparent_crc(p_1712->g_1241.s9, "p_1712->g_1241.s9", print_hash_value);
    transparent_crc(p_1712->g_1241.sa, "p_1712->g_1241.sa", print_hash_value);
    transparent_crc(p_1712->g_1241.sb, "p_1712->g_1241.sb", print_hash_value);
    transparent_crc(p_1712->g_1241.sc, "p_1712->g_1241.sc", print_hash_value);
    transparent_crc(p_1712->g_1241.sd, "p_1712->g_1241.sd", print_hash_value);
    transparent_crc(p_1712->g_1241.se, "p_1712->g_1241.se", print_hash_value);
    transparent_crc(p_1712->g_1241.sf, "p_1712->g_1241.sf", print_hash_value);
    transparent_crc(p_1712->g_1250.x, "p_1712->g_1250.x", print_hash_value);
    transparent_crc(p_1712->g_1250.y, "p_1712->g_1250.y", print_hash_value);
    transparent_crc(p_1712->g_1295.f0, "p_1712->g_1295.f0", print_hash_value);
    transparent_crc(p_1712->g_1311.s0, "p_1712->g_1311.s0", print_hash_value);
    transparent_crc(p_1712->g_1311.s1, "p_1712->g_1311.s1", print_hash_value);
    transparent_crc(p_1712->g_1311.s2, "p_1712->g_1311.s2", print_hash_value);
    transparent_crc(p_1712->g_1311.s3, "p_1712->g_1311.s3", print_hash_value);
    transparent_crc(p_1712->g_1311.s4, "p_1712->g_1311.s4", print_hash_value);
    transparent_crc(p_1712->g_1311.s5, "p_1712->g_1311.s5", print_hash_value);
    transparent_crc(p_1712->g_1311.s6, "p_1712->g_1311.s6", print_hash_value);
    transparent_crc(p_1712->g_1311.s7, "p_1712->g_1311.s7", print_hash_value);
    transparent_crc(p_1712->g_1314.s0, "p_1712->g_1314.s0", print_hash_value);
    transparent_crc(p_1712->g_1314.s1, "p_1712->g_1314.s1", print_hash_value);
    transparent_crc(p_1712->g_1314.s2, "p_1712->g_1314.s2", print_hash_value);
    transparent_crc(p_1712->g_1314.s3, "p_1712->g_1314.s3", print_hash_value);
    transparent_crc(p_1712->g_1314.s4, "p_1712->g_1314.s4", print_hash_value);
    transparent_crc(p_1712->g_1314.s5, "p_1712->g_1314.s5", print_hash_value);
    transparent_crc(p_1712->g_1314.s6, "p_1712->g_1314.s6", print_hash_value);
    transparent_crc(p_1712->g_1314.s7, "p_1712->g_1314.s7", print_hash_value);
    transparent_crc(p_1712->g_1314.s8, "p_1712->g_1314.s8", print_hash_value);
    transparent_crc(p_1712->g_1314.s9, "p_1712->g_1314.s9", print_hash_value);
    transparent_crc(p_1712->g_1314.sa, "p_1712->g_1314.sa", print_hash_value);
    transparent_crc(p_1712->g_1314.sb, "p_1712->g_1314.sb", print_hash_value);
    transparent_crc(p_1712->g_1314.sc, "p_1712->g_1314.sc", print_hash_value);
    transparent_crc(p_1712->g_1314.sd, "p_1712->g_1314.sd", print_hash_value);
    transparent_crc(p_1712->g_1314.se, "p_1712->g_1314.se", print_hash_value);
    transparent_crc(p_1712->g_1314.sf, "p_1712->g_1314.sf", print_hash_value);
    transparent_crc(p_1712->g_1315.s0, "p_1712->g_1315.s0", print_hash_value);
    transparent_crc(p_1712->g_1315.s1, "p_1712->g_1315.s1", print_hash_value);
    transparent_crc(p_1712->g_1315.s2, "p_1712->g_1315.s2", print_hash_value);
    transparent_crc(p_1712->g_1315.s3, "p_1712->g_1315.s3", print_hash_value);
    transparent_crc(p_1712->g_1315.s4, "p_1712->g_1315.s4", print_hash_value);
    transparent_crc(p_1712->g_1315.s5, "p_1712->g_1315.s5", print_hash_value);
    transparent_crc(p_1712->g_1315.s6, "p_1712->g_1315.s6", print_hash_value);
    transparent_crc(p_1712->g_1315.s7, "p_1712->g_1315.s7", print_hash_value);
    transparent_crc(p_1712->g_1316.s0, "p_1712->g_1316.s0", print_hash_value);
    transparent_crc(p_1712->g_1316.s1, "p_1712->g_1316.s1", print_hash_value);
    transparent_crc(p_1712->g_1316.s2, "p_1712->g_1316.s2", print_hash_value);
    transparent_crc(p_1712->g_1316.s3, "p_1712->g_1316.s3", print_hash_value);
    transparent_crc(p_1712->g_1316.s4, "p_1712->g_1316.s4", print_hash_value);
    transparent_crc(p_1712->g_1316.s5, "p_1712->g_1316.s5", print_hash_value);
    transparent_crc(p_1712->g_1316.s6, "p_1712->g_1316.s6", print_hash_value);
    transparent_crc(p_1712->g_1316.s7, "p_1712->g_1316.s7", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 10; k++)
            {
                transparent_crc(p_1712->g_1325[i][j][k], "p_1712->g_1325[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1712->g_1336, "p_1712->g_1336", print_hash_value);
    transparent_crc(p_1712->g_1349.x, "p_1712->g_1349.x", print_hash_value);
    transparent_crc(p_1712->g_1349.y, "p_1712->g_1349.y", print_hash_value);
    transparent_crc(p_1712->g_1372.x, "p_1712->g_1372.x", print_hash_value);
    transparent_crc(p_1712->g_1372.y, "p_1712->g_1372.y", print_hash_value);
    transparent_crc(p_1712->g_1392.s0, "p_1712->g_1392.s0", print_hash_value);
    transparent_crc(p_1712->g_1392.s1, "p_1712->g_1392.s1", print_hash_value);
    transparent_crc(p_1712->g_1392.s2, "p_1712->g_1392.s2", print_hash_value);
    transparent_crc(p_1712->g_1392.s3, "p_1712->g_1392.s3", print_hash_value);
    transparent_crc(p_1712->g_1392.s4, "p_1712->g_1392.s4", print_hash_value);
    transparent_crc(p_1712->g_1392.s5, "p_1712->g_1392.s5", print_hash_value);
    transparent_crc(p_1712->g_1392.s6, "p_1712->g_1392.s6", print_hash_value);
    transparent_crc(p_1712->g_1392.s7, "p_1712->g_1392.s7", print_hash_value);
    transparent_crc(p_1712->g_1393.x, "p_1712->g_1393.x", print_hash_value);
    transparent_crc(p_1712->g_1393.y, "p_1712->g_1393.y", print_hash_value);
    transparent_crc(p_1712->g_1393.z, "p_1712->g_1393.z", print_hash_value);
    transparent_crc(p_1712->g_1393.w, "p_1712->g_1393.w", print_hash_value);
    transparent_crc(p_1712->g_1429.s0, "p_1712->g_1429.s0", print_hash_value);
    transparent_crc(p_1712->g_1429.s1, "p_1712->g_1429.s1", print_hash_value);
    transparent_crc(p_1712->g_1429.s2, "p_1712->g_1429.s2", print_hash_value);
    transparent_crc(p_1712->g_1429.s3, "p_1712->g_1429.s3", print_hash_value);
    transparent_crc(p_1712->g_1429.s4, "p_1712->g_1429.s4", print_hash_value);
    transparent_crc(p_1712->g_1429.s5, "p_1712->g_1429.s5", print_hash_value);
    transparent_crc(p_1712->g_1429.s6, "p_1712->g_1429.s6", print_hash_value);
    transparent_crc(p_1712->g_1429.s7, "p_1712->g_1429.s7", print_hash_value);
    transparent_crc(p_1712->g_1429.s8, "p_1712->g_1429.s8", print_hash_value);
    transparent_crc(p_1712->g_1429.s9, "p_1712->g_1429.s9", print_hash_value);
    transparent_crc(p_1712->g_1429.sa, "p_1712->g_1429.sa", print_hash_value);
    transparent_crc(p_1712->g_1429.sb, "p_1712->g_1429.sb", print_hash_value);
    transparent_crc(p_1712->g_1429.sc, "p_1712->g_1429.sc", print_hash_value);
    transparent_crc(p_1712->g_1429.sd, "p_1712->g_1429.sd", print_hash_value);
    transparent_crc(p_1712->g_1429.se, "p_1712->g_1429.se", print_hash_value);
    transparent_crc(p_1712->g_1429.sf, "p_1712->g_1429.sf", print_hash_value);
    transparent_crc(p_1712->g_1494.x, "p_1712->g_1494.x", print_hash_value);
    transparent_crc(p_1712->g_1494.y, "p_1712->g_1494.y", print_hash_value);
    transparent_crc(p_1712->g_1515.x, "p_1712->g_1515.x", print_hash_value);
    transparent_crc(p_1712->g_1515.y, "p_1712->g_1515.y", print_hash_value);
    transparent_crc(p_1712->g_1517.s0, "p_1712->g_1517.s0", print_hash_value);
    transparent_crc(p_1712->g_1517.s1, "p_1712->g_1517.s1", print_hash_value);
    transparent_crc(p_1712->g_1517.s2, "p_1712->g_1517.s2", print_hash_value);
    transparent_crc(p_1712->g_1517.s3, "p_1712->g_1517.s3", print_hash_value);
    transparent_crc(p_1712->g_1517.s4, "p_1712->g_1517.s4", print_hash_value);
    transparent_crc(p_1712->g_1517.s5, "p_1712->g_1517.s5", print_hash_value);
    transparent_crc(p_1712->g_1517.s6, "p_1712->g_1517.s6", print_hash_value);
    transparent_crc(p_1712->g_1517.s7, "p_1712->g_1517.s7", print_hash_value);
    transparent_crc(p_1712->g_1519.x, "p_1712->g_1519.x", print_hash_value);
    transparent_crc(p_1712->g_1519.y, "p_1712->g_1519.y", print_hash_value);
    transparent_crc(p_1712->g_1519.z, "p_1712->g_1519.z", print_hash_value);
    transparent_crc(p_1712->g_1519.w, "p_1712->g_1519.w", print_hash_value);
    transparent_crc(p_1712->g_1525.x, "p_1712->g_1525.x", print_hash_value);
    transparent_crc(p_1712->g_1525.y, "p_1712->g_1525.y", print_hash_value);
    transparent_crc(p_1712->g_1611.s0, "p_1712->g_1611.s0", print_hash_value);
    transparent_crc(p_1712->g_1611.s1, "p_1712->g_1611.s1", print_hash_value);
    transparent_crc(p_1712->g_1611.s2, "p_1712->g_1611.s2", print_hash_value);
    transparent_crc(p_1712->g_1611.s3, "p_1712->g_1611.s3", print_hash_value);
    transparent_crc(p_1712->g_1611.s4, "p_1712->g_1611.s4", print_hash_value);
    transparent_crc(p_1712->g_1611.s5, "p_1712->g_1611.s5", print_hash_value);
    transparent_crc(p_1712->g_1611.s6, "p_1712->g_1611.s6", print_hash_value);
    transparent_crc(p_1712->g_1611.s7, "p_1712->g_1611.s7", print_hash_value);
    transparent_crc(p_1712->g_1616.x, "p_1712->g_1616.x", print_hash_value);
    transparent_crc(p_1712->g_1616.y, "p_1712->g_1616.y", print_hash_value);
    transparent_crc(p_1712->g_1629.s0, "p_1712->g_1629.s0", print_hash_value);
    transparent_crc(p_1712->g_1629.s1, "p_1712->g_1629.s1", print_hash_value);
    transparent_crc(p_1712->g_1629.s2, "p_1712->g_1629.s2", print_hash_value);
    transparent_crc(p_1712->g_1629.s3, "p_1712->g_1629.s3", print_hash_value);
    transparent_crc(p_1712->g_1629.s4, "p_1712->g_1629.s4", print_hash_value);
    transparent_crc(p_1712->g_1629.s5, "p_1712->g_1629.s5", print_hash_value);
    transparent_crc(p_1712->g_1629.s6, "p_1712->g_1629.s6", print_hash_value);
    transparent_crc(p_1712->g_1629.s7, "p_1712->g_1629.s7", print_hash_value);
    transparent_crc(p_1712->g_1631.x, "p_1712->g_1631.x", print_hash_value);
    transparent_crc(p_1712->g_1631.y, "p_1712->g_1631.y", print_hash_value);
    transparent_crc(p_1712->g_1646.s0, "p_1712->g_1646.s0", print_hash_value);
    transparent_crc(p_1712->g_1646.s1, "p_1712->g_1646.s1", print_hash_value);
    transparent_crc(p_1712->g_1646.s2, "p_1712->g_1646.s2", print_hash_value);
    transparent_crc(p_1712->g_1646.s3, "p_1712->g_1646.s3", print_hash_value);
    transparent_crc(p_1712->g_1646.s4, "p_1712->g_1646.s4", print_hash_value);
    transparent_crc(p_1712->g_1646.s5, "p_1712->g_1646.s5", print_hash_value);
    transparent_crc(p_1712->g_1646.s6, "p_1712->g_1646.s6", print_hash_value);
    transparent_crc(p_1712->g_1646.s7, "p_1712->g_1646.s7", print_hash_value);
    transparent_crc(p_1712->g_1646.s8, "p_1712->g_1646.s8", print_hash_value);
    transparent_crc(p_1712->g_1646.s9, "p_1712->g_1646.s9", print_hash_value);
    transparent_crc(p_1712->g_1646.sa, "p_1712->g_1646.sa", print_hash_value);
    transparent_crc(p_1712->g_1646.sb, "p_1712->g_1646.sb", print_hash_value);
    transparent_crc(p_1712->g_1646.sc, "p_1712->g_1646.sc", print_hash_value);
    transparent_crc(p_1712->g_1646.sd, "p_1712->g_1646.sd", print_hash_value);
    transparent_crc(p_1712->g_1646.se, "p_1712->g_1646.se", print_hash_value);
    transparent_crc(p_1712->g_1646.sf, "p_1712->g_1646.sf", print_hash_value);
    transparent_crc(p_1712->g_1654, "p_1712->g_1654", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
