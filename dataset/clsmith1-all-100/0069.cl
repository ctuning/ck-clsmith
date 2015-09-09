// --atomics 43 ---atomic_reductions ---fake_divergence ---inter_thread_comm -g 11,24,30 -l 1,3,5
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

__constant uint32_t permutations[10][15] = {
{14,6,3,12,7,8,0,13,1,10,5,11,9,4,2}, // permutation 0
{12,13,9,7,3,0,8,4,14,11,10,1,2,5,6}, // permutation 1
{11,9,14,3,6,10,8,0,13,4,7,2,12,5,1}, // permutation 2
{2,0,10,8,11,14,3,4,9,6,13,1,5,12,7}, // permutation 3
{9,8,5,12,6,0,11,13,10,3,14,7,4,1,2}, // permutation 4
{7,13,9,11,6,1,10,14,3,12,8,2,5,0,4}, // permutation 5
{12,4,11,13,8,9,5,7,6,14,0,3,1,10,2}, // permutation 6
{12,13,2,9,14,5,6,10,0,8,1,3,4,11,7}, // permutation 7
{2,14,12,10,5,0,3,13,11,1,6,4,9,8,7}, // permutation 8
{1,4,13,3,9,14,10,7,6,8,11,0,5,12,2} // permutation 9
};

// Seed: 69

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    int32_t g_6;
    int32_t *g_5;
    int32_t ** volatile g_4;
    VECTOR(uint64_t, 16) g_25;
    int8_t g_27;
    int64_t g_28;
    int32_t g_30;
    uint16_t g_120;
    int8_t *g_127[4];
    int8_t **g_126;
    volatile int16_t g_157;
    volatile int16_t * volatile g_156;
    int32_t **g_173;
    int32_t ***g_172;
    int32_t * volatile g_192[6][7][2];
    uint8_t g_229;
    uint8_t g_244[9][10][2];
    VECTOR(uint16_t, 8) g_264;
    int16_t g_300;
    int16_t *g_299;
    uint64_t *g_313;
    uint64_t g_314;
    VECTOR(int16_t, 8) g_315;
    int8_t g_318[2];
    volatile VECTOR(int8_t, 4) g_337;
    VECTOR(int8_t, 8) g_344;
    uint32_t g_346;
    uint64_t g_349;
    VECTOR(int32_t, 2) g_373;
    volatile VECTOR(int32_t, 16) g_401;
    VECTOR(int32_t, 16) g_402;
    VECTOR(int32_t, 4) g_406;
    int8_t ***g_411;
    volatile VECTOR(int32_t, 4) g_413;
    VECTOR(int32_t, 4) g_420;
    volatile int32_t g_435;
    volatile VECTOR(int64_t, 2) g_462;
    uint8_t g_488;
    uint32_t *g_493;
    int64_t g_494;
    volatile VECTOR(int16_t, 16) g_498;
    volatile VECTOR(int16_t, 16) g_499;
    VECTOR(int64_t, 16) g_506;
    uint64_t g_512;
    VECTOR(int32_t, 16) g_575;
    uint32_t g_576[8];
    uint32_t g_593;
    uint16_t * volatile g_617;
    uint16_t * volatile * volatile g_616[4];
    VECTOR(int32_t, 16) g_634;
    int32_t *g_652;
    int32_t ** volatile g_651;
    VECTOR(int32_t, 16) g_665;
    volatile VECTOR(int32_t, 8) g_667;
    VECTOR(int32_t, 16) g_668;
    VECTOR(int32_t, 2) g_669;
    VECTOR(int32_t, 8) g_670;
    volatile uint64_t g_689;
    volatile uint64_t *g_688;
    volatile uint64_t **g_687;
    VECTOR(uint32_t, 2) g_941;
    int8_t g_943[5][5][10];
    VECTOR(int32_t, 2) g_1019;
    uint16_t **g_1040;
    VECTOR(int16_t, 16) g_1100;
    volatile VECTOR(int16_t, 8) g_1101;
    volatile VECTOR(int16_t, 2) g_1179;
    uint64_t *g_1194;
    uint64_t **g_1193[8][4];
    volatile VECTOR(int32_t, 2) g_1207;
    uint64_t g_1220;
    VECTOR(uint16_t, 8) g_1227;
    VECTOR(uint64_t, 8) g_1230;
    VECTOR(uint64_t, 16) g_1231;
    VECTOR(uint64_t, 8) g_1232;
    VECTOR(int64_t, 2) g_1248;
    VECTOR(int64_t, 16) g_1253;
    volatile VECTOR(int64_t, 4) g_1254;
    VECTOR(int64_t, 2) g_1256;
    VECTOR(uint8_t, 8) g_1285;
    volatile VECTOR(uint8_t, 2) g_1286;
    VECTOR(int32_t, 2) g_1295;
    int8_t ****g_1302[10];
    volatile uint16_t g_1312[7];
    volatile VECTOR(uint64_t, 2) g_1381;
    volatile VECTOR(int8_t, 2) g_1425;
    volatile VECTOR(int16_t, 4) g_1553;
    VECTOR(int64_t, 4) g_1563;
    VECTOR(int16_t, 2) g_1572;
    VECTOR(int32_t, 16) g_1602;
    int64_t * volatile g_1609;
    int64_t * volatile * volatile g_1608;
    int8_t * volatile *g_1643;
    int8_t * volatile * volatile *g_1642;
    int8_t * volatile * volatile **g_1641;
    int8_t * volatile * volatile ** volatile *g_1640;
    int8_t * volatile * volatile ** volatile ** volatile g_1639;
    VECTOR(uint64_t, 4) g_1646;
    VECTOR(uint32_t, 8) g_1669;
    VECTOR(uint32_t, 8) g_1694;
    volatile VECTOR(uint32_t, 2) g_1703;
    volatile VECTOR(int32_t, 8) g_1719;
    VECTOR(int32_t, 2) g_1720;
    VECTOR(int32_t, 4) g_1721;
    volatile VECTOR(uint32_t, 8) g_1722;
    int16_t g_1766;
    volatile VECTOR(int8_t, 8) g_1778;
    volatile uint64_t * volatile *g_1785;
    volatile uint64_t * volatile **g_1784;
    volatile uint64_t * volatile ***g_1783;
    uint32_t *g_1834;
    uint32_t v_collective;
    uint64_t global_0_offset;
    uint64_t global_1_offset;
    uint64_t global_2_offset;
    uint64_t local_0_offset;
    uint64_t local_1_offset;
    uint64_t local_2_offset;
    uint64_t group_0_offset;
    uint64_t group_1_offset;
    uint64_t group_2_offset;
    uint32_t tid;
    __local volatile uint32_t *l_atomic_input;
    __local volatile uint32_t *l_special_values;
    __global volatile uint32_t *g_atomic_input;
    __global volatile uint32_t *g_special_values;
    __local volatile uint32_t *l_atomic_reduction;
    __global volatile uint32_t *g_atomic_reduction;
    __local int64_t *l_comm_values;
    __global int64_t *g_comm_values;
};


/* --- FORWARD DECLARATIONS --- */
uint64_t  func_1(struct S0 * p_2023);
int32_t * func_13(int32_t ** p_14, int32_t * p_15, uint32_t  p_16, struct S0 * p_2023);
uint16_t  func_21(int32_t ** p_22, uint8_t  p_23, int64_t  p_24, struct S0 * p_2023);
int32_t  func_85(uint64_t * p_86, int16_t  p_87, uint16_t  p_88, uint64_t  p_89, uint64_t  p_90, struct S0 * p_2023);
int64_t  func_97(int16_t  p_98, uint64_t * p_99, int8_t  p_100, int32_t *** p_101, struct S0 * p_2023);
uint64_t * func_102(uint64_t  p_103, int32_t  p_104, int32_t  p_105, struct S0 * p_2023);
int64_t  func_113(uint64_t  p_114, int8_t  p_115, int16_t  p_116, uint32_t  p_117, int32_t  p_118, struct S0 * p_2023);
int8_t  func_144(uint32_t  p_145, uint64_t  p_146, uint32_t  p_147, int32_t  p_148, struct S0 * p_2023);
int8_t *** func_160(int64_t  p_161, struct S0 * p_2023);
uint8_t  func_166(int32_t *** p_167, int32_t  p_168, int64_t  p_169, int8_t * p_170, uint64_t * p_171, struct S0 * p_2023);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_2023->g_4 p_2023->g_6 p_2023->g_25 p_2023->g_28 p_2023->g_comm_values p_2023->l_comm_values p_2023->g_120 p_2023->g_30 p_2023->g_435 p_2023->g_652 p_2023->g_494 p_2023->g_1179 p_2023->g_1220 p_2023->g_1019 p_2023->g_318 p_2023->g_264 p_2023->g_668 p_2023->g_402 p_2023->g_1312 p_2023->g_192 p_2023->g_1256 p_2023->g_156 p_2023->g_157 p_2023->g_687 p_2023->g_688 p_2023->g_1232 p_2023->g_126 p_2023->g_1295 p_2023->g_1207 p_2023->g_344 p_2023->g_575 p_2023->g_665 p_2023->g_670 p_2023->g_1381 p_2023->g_314 p_2023->g_1230 p_2023->g_651 p_2023->g_420 p_2023->g_1425 p_2023->g_1231 p_2023->g_173 p_2023->g_5 p_2023->g_1254 p_2023->g_172 p_2023->g_337 p_2023->g_617 p_2023->g_634 p_2023->g_1602 p_2023->g_1608 p_2023->g_244 p_2023->g_462 p_2023->g_27 p_2023->g_1639 p_2023->g_1646 p_2023->g_1285 p_2023->g_1669 p_2023->g_1694 p_2023->g_1703 p_2023->g_1719 p_2023->g_1720 p_2023->g_1721 p_2023->g_669 p_2023->g_1722 p_2023->g_1641 p_2023->g_1642 p_2023->g_1643 p_2023->g_127 p_2023->g_373 p_2023->g_1766 p_2023->g_1778 p_2023->g_1783 p_2023->g_1640 p_2023->g_576 p_2023->g_593 p_2023->g_1563 p_2023->g_943 p_2023->g_300 p_2023->g_941 p_2023->g_1100 p_2023->g_512
 * writes: p_2023->g_5 p_2023->g_6 p_2023->g_27 p_2023->g_25 p_2023->g_30 p_2023->g_126 p_2023->g_28 p_2023->g_494 p_2023->g_314 p_2023->g_300 p_2023->g_1312 p_2023->g_120 p_2023->g_318 p_2023->g_593 p_2023->g_576 p_2023->g_1220 p_2023->g_1231 p_2023->g_244 p_2023->g_1572 p_2023->g_420 p_2023->g_1193 p_2023->g_1766 p_2023->g_1285 p_2023->g_1834
 */
uint64_t  func_1(struct S0 * p_2023)
{ /* block id: 4 */
    int32_t *l_3 = (void*)0;
    int32_t **l_2 = &l_3;
    int32_t ***l_7 = &l_2;
    int8_t *l_26 = &p_2023->g_27;
    uint64_t *l_29[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int i;
    (*p_2023->g_4) = ((*l_2) = (void*)0);
    (*l_7) = &l_3;
    for (p_2023->g_6 = (-30); (p_2023->g_6 <= (-4)); p_2023->g_6 = safe_add_func_int16_t_s_s(p_2023->g_6, 6))
    { /* block id: 10 */
        uint32_t l_10 = 0x703D9B95L;
        ++l_10;
    }
    (*l_2) = func_13(((safe_mod_func_int64_t_s_s(((safe_lshift_func_int16_t_s_s(6L, 3)) || (0x0858L && func_21((*l_7), (((*l_26) = (+((((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 4))(p_2023->g_25.s2401)).lo)).yyxx)).x >= (&p_2023->g_5 != &p_2023->g_5)) > 0x095610A1L))) , (((p_2023->g_30 = (p_2023->g_25.s4 = p_2023->g_28)) && (++p_2023->g_25.sa)) , p_2023->g_6)), (safe_mod_func_uint32_t_u_u(p_2023->g_comm_values[p_2023->tid], p_2023->l_comm_values[(safe_mod_func_uint32_t_u_u(p_2023->tid, 15))])), p_2023))), p_2023->g_941.y)) , (void*)0), (**l_7), p_2023->g_1100.s1, p_2023);
    return p_2023->g_512;
}


/* ------------------------------------------ */
/* 
 * reads : p_2023->g_1642 p_2023->g_1643 p_2023->g_127 p_2023->g_27 p_2023->g_1312 p_2023->g_1220
 * writes:
 */
int32_t * func_13(int32_t ** p_14, int32_t * p_15, uint32_t  p_16, struct S0 * p_2023)
{ /* block id: 944 */
    uint64_t l_2009 = 0x0C0EAC7FC37B351CL;
    int64_t *l_2017 = &p_2023->g_28;
    int64_t **l_2016[4][7][1] = {{{&l_2017},{&l_2017},{&l_2017},{&l_2017},{&l_2017},{&l_2017},{&l_2017}},{{&l_2017},{&l_2017},{&l_2017},{&l_2017},{&l_2017},{&l_2017},{&l_2017}},{{&l_2017},{&l_2017},{&l_2017},{&l_2017},{&l_2017},{&l_2017},{&l_2017}},{{&l_2017},{&l_2017},{&l_2017},{&l_2017},{&l_2017},{&l_2017},{&l_2017}}};
    int64_t ***l_2018 = &l_2016[1][5][0];
    int32_t l_2021[6][1][1] = {{{0x2BCF4DB2L}},{{0x2BCF4DB2L}},{{0x2BCF4DB2L}},{{0x2BCF4DB2L}},{{0x2BCF4DB2L}},{{0x2BCF4DB2L}}};
    int32_t *l_2022 = (void*)0;
    int i, j, k;
    l_2021[0][0][0] = (((!(((FAKE_DIVERGE(p_2023->group_1_offset, get_group_id(1), 10) < ((p_16 > (4294967295UL ^ (l_2009 >= (safe_sub_func_int8_t_s_s(0x22L, p_16))))) == (safe_rshift_func_uint16_t_u_s(GROUP_DIVERGE(1, 1), (safe_add_func_uint8_t_u_u((((*l_2018) = l_2016[1][5][0]) != &p_2023->g_1609), ((!(~(safe_div_func_int64_t_s_s(0x38B315883FB63F38L, p_16)))) , (***p_2023->g_1642)))))))) | 0x4DL) > p_2023->g_1312[6])) && p_2023->g_1220) & GROUP_DIVERGE(1, 1));
    return l_2022;
}


/* ------------------------------------------ */
/* 
 * reads : p_2023->l_comm_values p_2023->g_6 p_2023->g_28 p_2023->g_120 p_2023->g_30 p_2023->g_435 p_2023->g_652 p_2023->g_494 p_2023->g_1179 p_2023->g_1220 p_2023->g_1019 p_2023->g_318 p_2023->g_264 p_2023->g_668 p_2023->g_402 p_2023->g_1312 p_2023->g_192 p_2023->g_1256 p_2023->g_156 p_2023->g_157 p_2023->g_687 p_2023->g_688 p_2023->g_1232 p_2023->g_126 p_2023->g_1295 p_2023->g_1207 p_2023->g_344 p_2023->g_575 p_2023->g_665 p_2023->g_670 p_2023->g_1381 p_2023->g_314 p_2023->g_1230 p_2023->g_651 p_2023->g_420 p_2023->g_1425 p_2023->g_1231 p_2023->g_173 p_2023->g_5 p_2023->g_1254 p_2023->g_4 p_2023->g_172 p_2023->g_337 p_2023->g_617 p_2023->g_634 p_2023->g_1602 p_2023->g_1608 p_2023->g_244 p_2023->g_462 p_2023->g_27 p_2023->g_1639 p_2023->g_1646 p_2023->g_1285 p_2023->g_1669 p_2023->g_1694 p_2023->g_1703 p_2023->g_1719 p_2023->g_1720 p_2023->g_1721 p_2023->g_669 p_2023->g_1722 p_2023->g_1641 p_2023->g_1642 p_2023->g_1643 p_2023->g_127 p_2023->g_373 p_2023->g_1766 p_2023->g_1778 p_2023->g_1783 p_2023->g_1640 p_2023->g_576 p_2023->g_593 p_2023->g_1563 p_2023->g_943 p_2023->g_300
 * writes: p_2023->g_126 p_2023->g_28 p_2023->g_30 p_2023->g_494 p_2023->g_314 p_2023->g_300 p_2023->g_6 p_2023->g_1312 p_2023->g_120 p_2023->g_318 p_2023->g_593 p_2023->g_576 p_2023->g_1220 p_2023->g_1231 p_2023->g_5 p_2023->g_244 p_2023->g_27 p_2023->g_1572 p_2023->g_420 p_2023->g_1193 p_2023->g_1766 p_2023->g_1285 p_2023->g_1834
 */
uint16_t  func_21(int32_t ** p_22, uint8_t  p_23, int64_t  p_24, struct S0 * p_2023)
{ /* block id: 17 */
    uint64_t *l_91[2];
    VECTOR(int8_t, 4) l_94 = (VECTOR(int8_t, 4))(0x34L, (VECTOR(int8_t, 2))(0x34L, (-7L)), (-7L));
    VECTOR(int64_t, 8) l_108 = (VECTOR(int64_t, 8))(0x39A793FF94C2ECEAL, (VECTOR(int64_t, 4))(0x39A793FF94C2ECEAL, (VECTOR(int64_t, 2))(0x39A793FF94C2ECEAL, 0x17A4938770095EF7L), 0x17A4938770095EF7L), 0x17A4938770095EF7L, 0x39A793FF94C2ECEAL, 0x17A4938770095EF7L);
    int16_t l_119 = 0x7429L;
    int16_t *l_129 = &l_119;
    uint32_t l_130 = 0xA3EB5BA5L;
    uint32_t l_1820 = 4294967289UL;
    int i;
    for (i = 0; i < 2; i++)
        l_91[i] = (void*)0;
    if ((atomic_inc(&p_2023->l_atomic_input[37]) == 8))
    { /* block id: 19 */
        uint8_t l_35 = 0UL;
        uint8_t l_36 = 0xB8L;
        uint8_t l_37 = 0x49L;
        VECTOR(int32_t, 4) l_38 = (VECTOR(int32_t, 4))(0x51A68408L, (VECTOR(int32_t, 2))(0x51A68408L, (-7L)), (-7L));
        int8_t l_39 = (-1L);
        VECTOR(int32_t, 4) l_40 = (VECTOR(int32_t, 4))((-3L), (VECTOR(int32_t, 2))((-3L), 0x354D1843L), 0x354D1843L);
        VECTOR(int32_t, 16) l_41 = (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x0F1B6398L), 0x0F1B6398L), 0x0F1B6398L, 1L, 0x0F1B6398L, (VECTOR(int32_t, 2))(1L, 0x0F1B6398L), (VECTOR(int32_t, 2))(1L, 0x0F1B6398L), 1L, 0x0F1B6398L, 1L, 0x0F1B6398L);
        int16_t l_42 = 0x4811L;
        VECTOR(int32_t, 16) l_43 = (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x1A38AD7BL), 0x1A38AD7BL), 0x1A38AD7BL, 1L, 0x1A38AD7BL, (VECTOR(int32_t, 2))(1L, 0x1A38AD7BL), (VECTOR(int32_t, 2))(1L, 0x1A38AD7BL), 1L, 0x1A38AD7BL, 1L, 0x1A38AD7BL);
        VECTOR(int32_t, 16) l_44 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), (-7L)), (-7L)), (-7L), (-1L), (-7L), (VECTOR(int32_t, 2))((-1L), (-7L)), (VECTOR(int32_t, 2))((-1L), (-7L)), (-1L), (-7L), (-1L), (-7L));
        VECTOR(int32_t, 16) l_45 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x6B242CFFL), 0x6B242CFFL), 0x6B242CFFL, (-1L), 0x6B242CFFL, (VECTOR(int32_t, 2))((-1L), 0x6B242CFFL), (VECTOR(int32_t, 2))((-1L), 0x6B242CFFL), (-1L), 0x6B242CFFL, (-1L), 0x6B242CFFL);
        VECTOR(int32_t, 16) l_46 = (VECTOR(int32_t, 16))(0x0CB35B2DL, (VECTOR(int32_t, 4))(0x0CB35B2DL, (VECTOR(int32_t, 2))(0x0CB35B2DL, 0x541EDF2CL), 0x541EDF2CL), 0x541EDF2CL, 0x0CB35B2DL, 0x541EDF2CL, (VECTOR(int32_t, 2))(0x0CB35B2DL, 0x541EDF2CL), (VECTOR(int32_t, 2))(0x0CB35B2DL, 0x541EDF2CL), 0x0CB35B2DL, 0x541EDF2CL, 0x0CB35B2DL, 0x541EDF2CL);
        VECTOR(int32_t, 16) l_47 = (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0L), 0L), 0L, 1L, 0L, (VECTOR(int32_t, 2))(1L, 0L), (VECTOR(int32_t, 2))(1L, 0L), 1L, 0L, 1L, 0L);
        VECTOR(int32_t, 4) l_48 = (VECTOR(int32_t, 4))(0x26B6B07CL, (VECTOR(int32_t, 2))(0x26B6B07CL, 1L), 1L);
        VECTOR(int32_t, 2) l_49 = (VECTOR(int32_t, 2))(0L, 0x2B98CFE4L);
        VECTOR(int32_t, 4) l_50 = (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x2E1F6371L), 0x2E1F6371L);
        VECTOR(int32_t, 8) l_51 = (VECTOR(int32_t, 8))(0x635EE06FL, (VECTOR(int32_t, 4))(0x635EE06FL, (VECTOR(int32_t, 2))(0x635EE06FL, 0x3510C19EL), 0x3510C19EL), 0x3510C19EL, 0x635EE06FL, 0x3510C19EL);
        VECTOR(int32_t, 8) l_52 = (VECTOR(int32_t, 8))(0x7A44EC19L, (VECTOR(int32_t, 4))(0x7A44EC19L, (VECTOR(int32_t, 2))(0x7A44EC19L, 0x0F567D2FL), 0x0F567D2FL), 0x0F567D2FL, 0x7A44EC19L, 0x0F567D2FL);
        VECTOR(int32_t, 16) l_53 = (VECTOR(int32_t, 16))(0x79EA335EL, (VECTOR(int32_t, 4))(0x79EA335EL, (VECTOR(int32_t, 2))(0x79EA335EL, 1L), 1L), 1L, 0x79EA335EL, 1L, (VECTOR(int32_t, 2))(0x79EA335EL, 1L), (VECTOR(int32_t, 2))(0x79EA335EL, 1L), 0x79EA335EL, 1L, 0x79EA335EL, 1L);
        VECTOR(int32_t, 2) l_54 = (VECTOR(int32_t, 2))(0x50DA4A23L, 0x70EF91DDL);
        VECTOR(int32_t, 16) l_55 = (VECTOR(int32_t, 16))(0x1BE197FDL, (VECTOR(int32_t, 4))(0x1BE197FDL, (VECTOR(int32_t, 2))(0x1BE197FDL, 0x5CC0C03AL), 0x5CC0C03AL), 0x5CC0C03AL, 0x1BE197FDL, 0x5CC0C03AL, (VECTOR(int32_t, 2))(0x1BE197FDL, 0x5CC0C03AL), (VECTOR(int32_t, 2))(0x1BE197FDL, 0x5CC0C03AL), 0x1BE197FDL, 0x5CC0C03AL, 0x1BE197FDL, 0x5CC0C03AL);
        uint64_t l_56[8][3][5] = {{{0x3FBE49ECA5129FF9L,0x3FBE49ECA5129FF9L,4UL,18446744073709551608UL,0x2509B59B1E0FC072L},{0x3FBE49ECA5129FF9L,0x3FBE49ECA5129FF9L,4UL,18446744073709551608UL,0x2509B59B1E0FC072L},{0x3FBE49ECA5129FF9L,0x3FBE49ECA5129FF9L,4UL,18446744073709551608UL,0x2509B59B1E0FC072L}},{{0x3FBE49ECA5129FF9L,0x3FBE49ECA5129FF9L,4UL,18446744073709551608UL,0x2509B59B1E0FC072L},{0x3FBE49ECA5129FF9L,0x3FBE49ECA5129FF9L,4UL,18446744073709551608UL,0x2509B59B1E0FC072L},{0x3FBE49ECA5129FF9L,0x3FBE49ECA5129FF9L,4UL,18446744073709551608UL,0x2509B59B1E0FC072L}},{{0x3FBE49ECA5129FF9L,0x3FBE49ECA5129FF9L,4UL,18446744073709551608UL,0x2509B59B1E0FC072L},{0x3FBE49ECA5129FF9L,0x3FBE49ECA5129FF9L,4UL,18446744073709551608UL,0x2509B59B1E0FC072L},{0x3FBE49ECA5129FF9L,0x3FBE49ECA5129FF9L,4UL,18446744073709551608UL,0x2509B59B1E0FC072L}},{{0x3FBE49ECA5129FF9L,0x3FBE49ECA5129FF9L,4UL,18446744073709551608UL,0x2509B59B1E0FC072L},{0x3FBE49ECA5129FF9L,0x3FBE49ECA5129FF9L,4UL,18446744073709551608UL,0x2509B59B1E0FC072L},{0x3FBE49ECA5129FF9L,0x3FBE49ECA5129FF9L,4UL,18446744073709551608UL,0x2509B59B1E0FC072L}},{{0x3FBE49ECA5129FF9L,0x3FBE49ECA5129FF9L,4UL,18446744073709551608UL,0x2509B59B1E0FC072L},{0x3FBE49ECA5129FF9L,0x3FBE49ECA5129FF9L,4UL,18446744073709551608UL,0x2509B59B1E0FC072L},{0x3FBE49ECA5129FF9L,0x3FBE49ECA5129FF9L,4UL,18446744073709551608UL,0x2509B59B1E0FC072L}},{{0x3FBE49ECA5129FF9L,0x3FBE49ECA5129FF9L,4UL,18446744073709551608UL,0x2509B59B1E0FC072L},{0x3FBE49ECA5129FF9L,0x3FBE49ECA5129FF9L,4UL,18446744073709551608UL,0x2509B59B1E0FC072L},{0x3FBE49ECA5129FF9L,0x3FBE49ECA5129FF9L,4UL,18446744073709551608UL,0x2509B59B1E0FC072L}},{{0x3FBE49ECA5129FF9L,0x3FBE49ECA5129FF9L,4UL,18446744073709551608UL,0x2509B59B1E0FC072L},{0x3FBE49ECA5129FF9L,0x3FBE49ECA5129FF9L,4UL,18446744073709551608UL,0x2509B59B1E0FC072L},{0x3FBE49ECA5129FF9L,0x3FBE49ECA5129FF9L,4UL,18446744073709551608UL,0x2509B59B1E0FC072L}},{{0x3FBE49ECA5129FF9L,0x3FBE49ECA5129FF9L,4UL,18446744073709551608UL,0x2509B59B1E0FC072L},{0x3FBE49ECA5129FF9L,0x3FBE49ECA5129FF9L,4UL,18446744073709551608UL,0x2509B59B1E0FC072L},{0x3FBE49ECA5129FF9L,0x3FBE49ECA5129FF9L,4UL,18446744073709551608UL,0x2509B59B1E0FC072L}}};
        VECTOR(int32_t, 2) l_57 = (VECTOR(int32_t, 2))(0x640699D3L, (-1L));
        int32_t l_58 = 0x3B82127FL;
        int64_t l_59 = 0x4087C3A5C4F2F584L;
        int32_t l_60 = 0x4AC88EEAL;
        int32_t l_61[8][10] = {{0x2C18B040L,0x1390277BL,0x2F57C363L,0x35FF65E9L,1L,0x4DA38E98L,1L,0L,0x1390277BL,0x3A6927BAL},{0x2C18B040L,0x1390277BL,0x2F57C363L,0x35FF65E9L,1L,0x4DA38E98L,1L,0L,0x1390277BL,0x3A6927BAL},{0x2C18B040L,0x1390277BL,0x2F57C363L,0x35FF65E9L,1L,0x4DA38E98L,1L,0L,0x1390277BL,0x3A6927BAL},{0x2C18B040L,0x1390277BL,0x2F57C363L,0x35FF65E9L,1L,0x4DA38E98L,1L,0L,0x1390277BL,0x3A6927BAL},{0x2C18B040L,0x1390277BL,0x2F57C363L,0x35FF65E9L,1L,0x4DA38E98L,1L,0L,0x1390277BL,0x3A6927BAL},{0x2C18B040L,0x1390277BL,0x2F57C363L,0x35FF65E9L,1L,0x4DA38E98L,1L,0L,0x1390277BL,0x3A6927BAL},{0x2C18B040L,0x1390277BL,0x2F57C363L,0x35FF65E9L,1L,0x4DA38E98L,1L,0L,0x1390277BL,0x3A6927BAL},{0x2C18B040L,0x1390277BL,0x2F57C363L,0x35FF65E9L,1L,0x4DA38E98L,1L,0L,0x1390277BL,0x3A6927BAL}};
        int16_t l_62 = 0x75BCL;
        uint64_t l_84 = 0UL;
        int i, j, k;
        if ((l_62 |= ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(hadd(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 8))(l_35, ((VECTOR(int32_t, 2))((-1L), 0x432C7527L)), ((l_37 = l_36) , ((VECTOR(int32_t, 8))(rotate(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(l_38.zw)).xyxy)).zwwwyzxz, ((VECTOR(int32_t, 8))(l_39, ((VECTOR(int32_t, 2))(safe_clamp_func(VECTOR(int32_t, 2),VECTOR(int32_t, 2),((VECTOR(int32_t, 16))(mul_hi(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(l_40.zywwyxzx)).s3727622765550574)), ((VECTOR(int32_t, 4))((-7L), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(0x7A41D407L, (-1L), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(safe_clamp_func(VECTOR(int32_t, 4),int32_t,((VECTOR(int32_t, 2))(0x125954A4L, 0x72679F1AL)).yyyx, (int32_t)((VECTOR(int32_t, 8))(l_41.sc3d34e0b)).s3, (int32_t)(-1L)))).odd)), ((VECTOR(int32_t, 2))((-1L), 0x6E85A6EDL)), 8L, 0x19798973L)).s64)), 0x51DD14A1L)).xxxyxwxxywwwxxyz))).s09, ((VECTOR(int32_t, 4))(0x799B58ECL, ((VECTOR(int32_t, 2))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 4))(l_42, 0x584F79AAL, 0x66354922L, (-1L))).lo, ((VECTOR(int32_t, 4))(l_43.s5901)).lo))), (-1L))).odd, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(clz(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(l_44.sf4763cd5)))).hi))), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(l_45.s42)).yxyx)).lo)), 0x348EDA29L, (-5L))).s33))), ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(l_46.sfe)).xxyx)).odd)).yyyy, ((VECTOR(int32_t, 16))(l_47.saa88d18043a44ade)).sf089))), (-6L), ((VECTOR(int32_t, 2))((-4L), 1L)), 0x6D0B4E55L)).s5, ((VECTOR(int32_t, 2))(7L, 0x5676063AL)), 0x4018302AL, (-5L)))))).s1), 3L, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(hadd(((VECTOR(int32_t, 4))(rhadd(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(l_48.wzyw)).wzzwzzzzxzywwzzw)).s02)).yyyy, ((VECTOR(int32_t, 2))(l_49.xy)).xxxy))), ((VECTOR(int32_t, 8))(0x5F641D31L, ((VECTOR(int32_t, 4))(rotate(((VECTOR(int32_t, 16))((-4L), ((VECTOR(int32_t, 4))(l_50.yxxx)), 1L, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(l_51.s5054)).zzwyyzyy)), 0x5FC6D38CL, 7L)).s4295, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(min(((VECTOR(int32_t, 4))(mad_sat(((VECTOR(int32_t, 4))(sub_sat(((VECTOR(int32_t, 2))(l_52.s72)).yxxy, ((VECTOR(int32_t, 8))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 4))(l_53.s1e62)).wyyzyxyw, ((VECTOR(int32_t, 4))(l_54.yyxy)).wxzywzwy, ((VECTOR(int32_t, 16))(safe_clamp_func(VECTOR(int32_t, 16),VECTOR(int32_t, 16),((VECTOR(int32_t, 16))(rhadd(((VECTOR(int32_t, 2))(l_55.s2c)).yxxyyyxxyyxxyxxx, ((VECTOR(int32_t, 4))(0x46053532L, 0x05A3FFCEL, (-1L), 0L)).ywyzxyzyxxxzyyzz))), ((VECTOR(int32_t, 2))(0L, (-3L))).xxyyyxyxxyyyyyyx, ((VECTOR(int32_t, 8))(min(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(1L, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(0x7A2875F2L, 0x552AEB3CL)))), 0x28E5F853L)).yyzywzyw)), (int32_t)(((VECTOR(uint32_t, 2))(4294967295UL, 0xCD65FABBL)).even , l_56[4][0][2])))).s7642717315572402))).lo))).even))), ((VECTOR(int32_t, 8))(l_57.xyyxyyxy)).odd, ((VECTOR(int32_t, 8))((l_58 , l_59), 0L, l_60, ((VECTOR(int32_t, 4))(0x3FD083AEL)), (-7L))).hi))), (int32_t)l_61[5][6]))).zyxxzxwy)).even))))), ((VECTOR(int32_t, 2))(0L)), 0x5B47B8CDL)).odd))).odd)), 0x66315745L)).even, ((VECTOR(int32_t, 4))((-1L))), ((VECTOR(int32_t, 4))(8L))))).even)))))).yxxxxyxx)).s5672476732366117)), ((VECTOR(int32_t, 16))((-4L)))))).odd)).s6))
        { /* block id: 22 */
            int32_t l_63 = 0x43CA2BCDL;
            for (l_63 = 20; (l_63 < (-18)); l_63--)
            { /* block id: 25 */
                int32_t l_67 = (-10L);
                int32_t *l_66[6] = {&l_67,&l_67,&l_67,&l_67,&l_67,&l_67};
                int64_t l_68 = 0x73EC1DEC27F6C6ADL;
                int32_t *l_69 = &l_67;
                int32_t *l_70 = &l_67;
                int i;
                l_66[0] = (void*)0;
                l_45.s7 |= l_68;
                l_70 = l_69;
            }
            for (l_63 = (-2); (l_63 == (-27)); l_63 = safe_sub_func_int64_t_s_s(l_63, 5))
            { /* block id: 32 */
                VECTOR(int32_t, 16) l_73 = (VECTOR(int32_t, 16))(7L, (VECTOR(int32_t, 4))(7L, (VECTOR(int32_t, 2))(7L, 1L), 1L), 1L, 7L, 1L, (VECTOR(int32_t, 2))(7L, 1L), (VECTOR(int32_t, 2))(7L, 1L), 7L, 1L, 7L, 1L);
                uint32_t l_74 = 4294967295UL;
                uint32_t l_75 = 0xF2FFE129L;
                int32_t *l_76 = (void*)0;
                int32_t *l_77 = (void*)0;
                int i;
                l_44.s4 = ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(l_73.sae)), 0x0BF5F1DFL, 1L)).z;
                l_51.s6 = l_74;
                l_44.se ^= (l_50.w = l_75);
                l_77 = l_76;
            }
        }
        else
        { /* block id: 39 */
            uint32_t l_78 = 0xBBC179A0L;
            uint16_t l_81 = 0x942DL;
            l_78++;
            l_81++;
        }
        l_61[2][6] |= l_84;
        unsigned int result = 0;
        result += l_35;
        result += l_36;
        result += l_37;
        result += l_38.w;
        result += l_38.z;
        result += l_38.y;
        result += l_38.x;
        result += l_39;
        result += l_40.w;
        result += l_40.z;
        result += l_40.y;
        result += l_40.x;
        result += l_41.sf;
        result += l_41.se;
        result += l_41.sd;
        result += l_41.sc;
        result += l_41.sb;
        result += l_41.sa;
        result += l_41.s9;
        result += l_41.s8;
        result += l_41.s7;
        result += l_41.s6;
        result += l_41.s5;
        result += l_41.s4;
        result += l_41.s3;
        result += l_41.s2;
        result += l_41.s1;
        result += l_41.s0;
        result += l_42;
        result += l_43.sf;
        result += l_43.se;
        result += l_43.sd;
        result += l_43.sc;
        result += l_43.sb;
        result += l_43.sa;
        result += l_43.s9;
        result += l_43.s8;
        result += l_43.s7;
        result += l_43.s6;
        result += l_43.s5;
        result += l_43.s4;
        result += l_43.s3;
        result += l_43.s2;
        result += l_43.s1;
        result += l_43.s0;
        result += l_44.sf;
        result += l_44.se;
        result += l_44.sd;
        result += l_44.sc;
        result += l_44.sb;
        result += l_44.sa;
        result += l_44.s9;
        result += l_44.s8;
        result += l_44.s7;
        result += l_44.s6;
        result += l_44.s5;
        result += l_44.s4;
        result += l_44.s3;
        result += l_44.s2;
        result += l_44.s1;
        result += l_44.s0;
        result += l_45.sf;
        result += l_45.se;
        result += l_45.sd;
        result += l_45.sc;
        result += l_45.sb;
        result += l_45.sa;
        result += l_45.s9;
        result += l_45.s8;
        result += l_45.s7;
        result += l_45.s6;
        result += l_45.s5;
        result += l_45.s4;
        result += l_45.s3;
        result += l_45.s2;
        result += l_45.s1;
        result += l_45.s0;
        result += l_46.sf;
        result += l_46.se;
        result += l_46.sd;
        result += l_46.sc;
        result += l_46.sb;
        result += l_46.sa;
        result += l_46.s9;
        result += l_46.s8;
        result += l_46.s7;
        result += l_46.s6;
        result += l_46.s5;
        result += l_46.s4;
        result += l_46.s3;
        result += l_46.s2;
        result += l_46.s1;
        result += l_46.s0;
        result += l_47.sf;
        result += l_47.se;
        result += l_47.sd;
        result += l_47.sc;
        result += l_47.sb;
        result += l_47.sa;
        result += l_47.s9;
        result += l_47.s8;
        result += l_47.s7;
        result += l_47.s6;
        result += l_47.s5;
        result += l_47.s4;
        result += l_47.s3;
        result += l_47.s2;
        result += l_47.s1;
        result += l_47.s0;
        result += l_48.w;
        result += l_48.z;
        result += l_48.y;
        result += l_48.x;
        result += l_49.y;
        result += l_49.x;
        result += l_50.w;
        result += l_50.z;
        result += l_50.y;
        result += l_50.x;
        result += l_51.s7;
        result += l_51.s6;
        result += l_51.s5;
        result += l_51.s4;
        result += l_51.s3;
        result += l_51.s2;
        result += l_51.s1;
        result += l_51.s0;
        result += l_52.s7;
        result += l_52.s6;
        result += l_52.s5;
        result += l_52.s4;
        result += l_52.s3;
        result += l_52.s2;
        result += l_52.s1;
        result += l_52.s0;
        result += l_53.sf;
        result += l_53.se;
        result += l_53.sd;
        result += l_53.sc;
        result += l_53.sb;
        result += l_53.sa;
        result += l_53.s9;
        result += l_53.s8;
        result += l_53.s7;
        result += l_53.s6;
        result += l_53.s5;
        result += l_53.s4;
        result += l_53.s3;
        result += l_53.s2;
        result += l_53.s1;
        result += l_53.s0;
        result += l_54.y;
        result += l_54.x;
        result += l_55.sf;
        result += l_55.se;
        result += l_55.sd;
        result += l_55.sc;
        result += l_55.sb;
        result += l_55.sa;
        result += l_55.s9;
        result += l_55.s8;
        result += l_55.s7;
        result += l_55.s6;
        result += l_55.s5;
        result += l_55.s4;
        result += l_55.s3;
        result += l_55.s2;
        result += l_55.s1;
        result += l_55.s0;
        int l_56_i0, l_56_i1, l_56_i2;
        for (l_56_i0 = 0; l_56_i0 < 8; l_56_i0++) {
            for (l_56_i1 = 0; l_56_i1 < 3; l_56_i1++) {
                for (l_56_i2 = 0; l_56_i2 < 5; l_56_i2++) {
                    result += l_56[l_56_i0][l_56_i1][l_56_i2];
                }
            }
        }
        result += l_57.y;
        result += l_57.x;
        result += l_58;
        result += l_59;
        result += l_60;
        int l_61_i0, l_61_i1;
        for (l_61_i0 = 0; l_61_i0 < 8; l_61_i0++) {
            for (l_61_i1 = 0; l_61_i1 < 10; l_61_i1++) {
                result += l_61[l_61_i0][l_61_i1];
            }
        }
        result += l_62;
        result += l_84;
        atomic_add(&p_2023->l_special_values[37], result);
    }
    else
    { /* block id: 44 */
        (1 + 1);
    }
    if (func_85(l_91[0], ((*l_129) = (safe_rshift_func_int8_t_s_s(((VECTOR(int8_t, 16))(l_94.wxywyxywyzzwxwzw)).sc, (safe_div_func_int64_t_s_s(func_97(p_23, func_102((((safe_mod_func_int64_t_s_s((l_94.z , ((VECTOR(int64_t, 4))(l_108.s6130)).y), ((((safe_rshift_func_int16_t_s_s(((*l_129) = (safe_div_func_int64_t_s_s(((p_2023->l_comm_values[(safe_mod_func_uint32_t_u_u(p_2023->tid, 15))] || l_94.y) , func_113(((p_23 , (p_2023->g_6 | l_108.s6)) & 0x21466A04L), p_2023->g_28, l_119, p_24, p_2023->g_120, p_2023)), (-1L)))), 12)) | l_130) != l_94.y) , p_2023->g_6))) ^ 4294967292UL) <= p_2023->g_120), l_108.s6, p_2023->g_30, p_2023), p_23, &p_2023->g_173, p_2023), l_1820))))), p_24, p_23, l_108.s5, p_2023))
    { /* block id: 807 */
        if ((atomic_inc(&p_2023->g_atomic_input[43 * get_linear_group_id() + 3]) == 1))
        { /* block id: 809 */
            int32_t l_1838 = (-2L);
            int32_t *l_1837[6] = {&l_1838,&l_1838,&l_1838,&l_1838,&l_1838,&l_1838};
            int32_t *l_1839 = &l_1838;
            int32_t *l_1840 = (void*)0;
            int i;
            l_1840 = (l_1839 = l_1837[1]);
            for (l_1838 = 0; (l_1838 > 5); l_1838 = safe_add_func_int64_t_s_s(l_1838, 6))
            { /* block id: 814 */
                int32_t l_1843 = 0x7E72087DL;
                uint32_t l_1909 = 4294967295UL;
                for (l_1843 = 0; (l_1843 < 19); l_1843 = safe_add_func_int16_t_s_s(l_1843, 1))
                { /* block id: 817 */
                    uint32_t l_1846 = 4294967295UL;
                    uint32_t l_1847 = 1UL;
                    int32_t l_1861 = 0x2F90FC53L;
                    uint32_t l_1862 = 2UL;
                    if ((l_1847 = l_1846))
                    { /* block id: 819 */
                        int32_t *l_1848 = (void*)0;
                        uint32_t l_1849 = 0xFC11B0B7L;
                        VECTOR(int32_t, 2) l_1850 = (VECTOR(int32_t, 2))(0x7D336B67L, (-1L));
                        VECTOR(int32_t, 8) l_1851 = (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0L), 0L), 0L, 0L, 0L);
                        int16_t l_1852 = 1L;
                        int64_t l_1853 = 1L;
                        uint32_t l_1854 = 9UL;
                        int32_t l_1857 = 0x0E38FB75L;
                        int i;
                        l_1837[0] = l_1848;
                        l_1852 = ((l_1849 , ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))((-7L), 0x3FBE2C40L)), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(hadd(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(l_1850.xxxxyxxyyxyyxxxx)).s6ad6)).even, ((VECTOR(int32_t, 16))(l_1851.s6013073711655522)).sa6))))))), 0x1029AE45L, (-1L), 5L, 0x75904FD6L)).s7431702507655025)).s2) , 1L);
                        --l_1854;
                        l_1857 = 0x47766A8CL;
                    }
                    else
                    { /* block id: 824 */
                        int32_t l_1859 = (-10L);
                        int32_t *l_1858 = &l_1859;
                        int32_t *l_1860[10] = {&l_1859,&l_1859,&l_1859,&l_1859,&l_1859,&l_1859,&l_1859,&l_1859,&l_1859,&l_1859};
                        int i;
                        l_1840 = l_1858;
                        l_1840 = l_1860[1];
                    }
                    if ((l_1861 , l_1862))
                    { /* block id: 828 */
                        uint16_t l_1863[10][3] = {{0xC2C0L,0xC2C0L,0x5DAEL},{0xC2C0L,0xC2C0L,0x5DAEL},{0xC2C0L,0xC2C0L,0x5DAEL},{0xC2C0L,0xC2C0L,0x5DAEL},{0xC2C0L,0xC2C0L,0x5DAEL},{0xC2C0L,0xC2C0L,0x5DAEL},{0xC2C0L,0xC2C0L,0x5DAEL},{0xC2C0L,0xC2C0L,0x5DAEL},{0xC2C0L,0xC2C0L,0x5DAEL},{0xC2C0L,0xC2C0L,0x5DAEL}};
                        uint64_t l_1864 = 3UL;
                        uint8_t l_1865 = 0xA3L;
                        int32_t l_1866 = (-5L);
                        uint8_t l_1867 = 7UL;
                        int32_t *l_1868 = &l_1866;
                        uint8_t l_1869[6][6][2] = {{{5UL,5UL},{5UL,5UL},{5UL,5UL},{5UL,5UL},{5UL,5UL},{5UL,5UL}},{{5UL,5UL},{5UL,5UL},{5UL,5UL},{5UL,5UL},{5UL,5UL},{5UL,5UL}},{{5UL,5UL},{5UL,5UL},{5UL,5UL},{5UL,5UL},{5UL,5UL},{5UL,5UL}},{{5UL,5UL},{5UL,5UL},{5UL,5UL},{5UL,5UL},{5UL,5UL},{5UL,5UL}},{{5UL,5UL},{5UL,5UL},{5UL,5UL},{5UL,5UL},{5UL,5UL},{5UL,5UL}},{{5UL,5UL},{5UL,5UL},{5UL,5UL},{5UL,5UL},{5UL,5UL},{5UL,5UL}}};
                        int i, j, k;
                        l_1865 ^= (l_1864 |= l_1863[1][2]);
                        l_1866 ^= (-10L);
                        l_1868 = (l_1867 , (l_1839 = (void*)0));
                        l_1866 = l_1869[1][3][0];
                    }
                    else
                    { /* block id: 835 */
                        int32_t l_1871[8][10][3] = {{{0x4A52B313L,(-1L),(-7L)},{0x4A52B313L,(-1L),(-7L)},{0x4A52B313L,(-1L),(-7L)},{0x4A52B313L,(-1L),(-7L)},{0x4A52B313L,(-1L),(-7L)},{0x4A52B313L,(-1L),(-7L)},{0x4A52B313L,(-1L),(-7L)},{0x4A52B313L,(-1L),(-7L)},{0x4A52B313L,(-1L),(-7L)},{0x4A52B313L,(-1L),(-7L)}},{{0x4A52B313L,(-1L),(-7L)},{0x4A52B313L,(-1L),(-7L)},{0x4A52B313L,(-1L),(-7L)},{0x4A52B313L,(-1L),(-7L)},{0x4A52B313L,(-1L),(-7L)},{0x4A52B313L,(-1L),(-7L)},{0x4A52B313L,(-1L),(-7L)},{0x4A52B313L,(-1L),(-7L)},{0x4A52B313L,(-1L),(-7L)},{0x4A52B313L,(-1L),(-7L)}},{{0x4A52B313L,(-1L),(-7L)},{0x4A52B313L,(-1L),(-7L)},{0x4A52B313L,(-1L),(-7L)},{0x4A52B313L,(-1L),(-7L)},{0x4A52B313L,(-1L),(-7L)},{0x4A52B313L,(-1L),(-7L)},{0x4A52B313L,(-1L),(-7L)},{0x4A52B313L,(-1L),(-7L)},{0x4A52B313L,(-1L),(-7L)},{0x4A52B313L,(-1L),(-7L)}},{{0x4A52B313L,(-1L),(-7L)},{0x4A52B313L,(-1L),(-7L)},{0x4A52B313L,(-1L),(-7L)},{0x4A52B313L,(-1L),(-7L)},{0x4A52B313L,(-1L),(-7L)},{0x4A52B313L,(-1L),(-7L)},{0x4A52B313L,(-1L),(-7L)},{0x4A52B313L,(-1L),(-7L)},{0x4A52B313L,(-1L),(-7L)},{0x4A52B313L,(-1L),(-7L)}},{{0x4A52B313L,(-1L),(-7L)},{0x4A52B313L,(-1L),(-7L)},{0x4A52B313L,(-1L),(-7L)},{0x4A52B313L,(-1L),(-7L)},{0x4A52B313L,(-1L),(-7L)},{0x4A52B313L,(-1L),(-7L)},{0x4A52B313L,(-1L),(-7L)},{0x4A52B313L,(-1L),(-7L)},{0x4A52B313L,(-1L),(-7L)},{0x4A52B313L,(-1L),(-7L)}},{{0x4A52B313L,(-1L),(-7L)},{0x4A52B313L,(-1L),(-7L)},{0x4A52B313L,(-1L),(-7L)},{0x4A52B313L,(-1L),(-7L)},{0x4A52B313L,(-1L),(-7L)},{0x4A52B313L,(-1L),(-7L)},{0x4A52B313L,(-1L),(-7L)},{0x4A52B313L,(-1L),(-7L)},{0x4A52B313L,(-1L),(-7L)},{0x4A52B313L,(-1L),(-7L)}},{{0x4A52B313L,(-1L),(-7L)},{0x4A52B313L,(-1L),(-7L)},{0x4A52B313L,(-1L),(-7L)},{0x4A52B313L,(-1L),(-7L)},{0x4A52B313L,(-1L),(-7L)},{0x4A52B313L,(-1L),(-7L)},{0x4A52B313L,(-1L),(-7L)},{0x4A52B313L,(-1L),(-7L)},{0x4A52B313L,(-1L),(-7L)},{0x4A52B313L,(-1L),(-7L)}},{{0x4A52B313L,(-1L),(-7L)},{0x4A52B313L,(-1L),(-7L)},{0x4A52B313L,(-1L),(-7L)},{0x4A52B313L,(-1L),(-7L)},{0x4A52B313L,(-1L),(-7L)},{0x4A52B313L,(-1L),(-7L)},{0x4A52B313L,(-1L),(-7L)},{0x4A52B313L,(-1L),(-7L)},{0x4A52B313L,(-1L),(-7L)},{0x4A52B313L,(-1L),(-7L)}}};
                        int32_t *l_1870 = &l_1871[6][8][2];
                        uint8_t l_1872 = 1UL;
                        int32_t l_1875 = 0x76D78F37L;
                        int32_t l_1876 = (-9L);
                        uint16_t l_1877 = 0x6FD9L;
                        uint16_t *l_1881[9][10][2] = {{{(void*)0,&l_1877},{(void*)0,&l_1877},{(void*)0,&l_1877},{(void*)0,&l_1877},{(void*)0,&l_1877},{(void*)0,&l_1877},{(void*)0,&l_1877},{(void*)0,&l_1877},{(void*)0,&l_1877},{(void*)0,&l_1877}},{{(void*)0,&l_1877},{(void*)0,&l_1877},{(void*)0,&l_1877},{(void*)0,&l_1877},{(void*)0,&l_1877},{(void*)0,&l_1877},{(void*)0,&l_1877},{(void*)0,&l_1877},{(void*)0,&l_1877},{(void*)0,&l_1877}},{{(void*)0,&l_1877},{(void*)0,&l_1877},{(void*)0,&l_1877},{(void*)0,&l_1877},{(void*)0,&l_1877},{(void*)0,&l_1877},{(void*)0,&l_1877},{(void*)0,&l_1877},{(void*)0,&l_1877},{(void*)0,&l_1877}},{{(void*)0,&l_1877},{(void*)0,&l_1877},{(void*)0,&l_1877},{(void*)0,&l_1877},{(void*)0,&l_1877},{(void*)0,&l_1877},{(void*)0,&l_1877},{(void*)0,&l_1877},{(void*)0,&l_1877},{(void*)0,&l_1877}},{{(void*)0,&l_1877},{(void*)0,&l_1877},{(void*)0,&l_1877},{(void*)0,&l_1877},{(void*)0,&l_1877},{(void*)0,&l_1877},{(void*)0,&l_1877},{(void*)0,&l_1877},{(void*)0,&l_1877},{(void*)0,&l_1877}},{{(void*)0,&l_1877},{(void*)0,&l_1877},{(void*)0,&l_1877},{(void*)0,&l_1877},{(void*)0,&l_1877},{(void*)0,&l_1877},{(void*)0,&l_1877},{(void*)0,&l_1877},{(void*)0,&l_1877},{(void*)0,&l_1877}},{{(void*)0,&l_1877},{(void*)0,&l_1877},{(void*)0,&l_1877},{(void*)0,&l_1877},{(void*)0,&l_1877},{(void*)0,&l_1877},{(void*)0,&l_1877},{(void*)0,&l_1877},{(void*)0,&l_1877},{(void*)0,&l_1877}},{{(void*)0,&l_1877},{(void*)0,&l_1877},{(void*)0,&l_1877},{(void*)0,&l_1877},{(void*)0,&l_1877},{(void*)0,&l_1877},{(void*)0,&l_1877},{(void*)0,&l_1877},{(void*)0,&l_1877},{(void*)0,&l_1877}},{{(void*)0,&l_1877},{(void*)0,&l_1877},{(void*)0,&l_1877},{(void*)0,&l_1877},{(void*)0,&l_1877},{(void*)0,&l_1877},{(void*)0,&l_1877},{(void*)0,&l_1877},{(void*)0,&l_1877},{(void*)0,&l_1877}}};
                        uint16_t **l_1880 = &l_1881[8][6][0];
                        int i, j, k;
                        l_1839 = l_1870;
                        --l_1872;
                        l_1877--;
                        l_1880 = (void*)0;
                    }
                    for (l_1846 = 5; (l_1846 > 33); l_1846 = safe_add_func_int8_t_s_s(l_1846, 7))
                    { /* block id: 843 */
                        int32_t l_1884 = 1L;
                        int16_t l_1885 = 0x3E6CL;
                        int64_t l_1886 = 0L;
                        int32_t l_1887 = 0x04F960E7L;
                        int16_t l_1888 = 0x5F34L;
                        int32_t *l_1889 = &l_1884;
                        int32_t *l_1890 = &l_1884;
                        l_1888 &= (l_1887 |= (l_1886 = (l_1885 = l_1884)));
                        l_1890 = (l_1840 = l_1889);
                    }
                }
                for (l_1843 = 29; (l_1843 <= (-12)); l_1843--)
                { /* block id: 854 */
                    int32_t l_1893 = 0x672D8B4FL;
                    int32_t *l_1894 = &l_1893;
                    int32_t *l_1895 = &l_1893;
                    l_1837[1] = (l_1895 = (l_1893 , l_1894));
                    for (l_1893 = 0; (l_1893 != (-24)); --l_1893)
                    { /* block id: 859 */
                        int32_t l_1898 = 0L;
                        uint8_t l_1899 = 0x41L;
                        ++l_1899;
                    }
                    for (l_1893 = (-13); (l_1893 <= 5); ++l_1893)
                    { /* block id: 864 */
                        int32_t l_1905 = 0x60091DF8L;
                        int32_t *l_1904 = &l_1905;
                        uint32_t l_1906[8][5] = {{0xD3833037L,0x32FD2D1AL,0xD3833037L,0xD3833037L,0x32FD2D1AL},{0xD3833037L,0x32FD2D1AL,0xD3833037L,0xD3833037L,0x32FD2D1AL},{0xD3833037L,0x32FD2D1AL,0xD3833037L,0xD3833037L,0x32FD2D1AL},{0xD3833037L,0x32FD2D1AL,0xD3833037L,0xD3833037L,0x32FD2D1AL},{0xD3833037L,0x32FD2D1AL,0xD3833037L,0xD3833037L,0x32FD2D1AL},{0xD3833037L,0x32FD2D1AL,0xD3833037L,0xD3833037L,0x32FD2D1AL},{0xD3833037L,0x32FD2D1AL,0xD3833037L,0xD3833037L,0x32FD2D1AL},{0xD3833037L,0x32FD2D1AL,0xD3833037L,0xD3833037L,0x32FD2D1AL}};
                        int i, j;
                        l_1840 = l_1904;
                        ++l_1906[2][2];
                        (*l_1840) &= (-6L);
                    }
                }
                if (l_1909)
                { /* block id: 870 */
                    uint32_t l_1910 = 0xB3493876L;
                    if (l_1910)
                    { /* block id: 871 */
                        uint16_t l_1911[5][1] = {{0UL},{0UL},{0UL},{0UL},{0UL}};
                        uint16_t l_1914 = 2UL;
                        uint64_t l_1915 = 0x9200279E56E623B2L;
                        int i, j;
                        ++l_1911[3][0];
                        l_1839 = (void*)0;
                        l_1915 = l_1914;
                    }
                    else
                    { /* block id: 875 */
                        int32_t l_1917 = 1L;
                        int32_t *l_1916 = &l_1917;
                        int8_t l_1918 = 0x15L;
                        uint16_t l_1919[9][7] = {{0x1E5DL,0x1E5DL,0x1E5DL,0x1E5DL,0x1E5DL,0x1E5DL,0x1E5DL},{0x1E5DL,0x1E5DL,0x1E5DL,0x1E5DL,0x1E5DL,0x1E5DL,0x1E5DL},{0x1E5DL,0x1E5DL,0x1E5DL,0x1E5DL,0x1E5DL,0x1E5DL,0x1E5DL},{0x1E5DL,0x1E5DL,0x1E5DL,0x1E5DL,0x1E5DL,0x1E5DL,0x1E5DL},{0x1E5DL,0x1E5DL,0x1E5DL,0x1E5DL,0x1E5DL,0x1E5DL,0x1E5DL},{0x1E5DL,0x1E5DL,0x1E5DL,0x1E5DL,0x1E5DL,0x1E5DL,0x1E5DL},{0x1E5DL,0x1E5DL,0x1E5DL,0x1E5DL,0x1E5DL,0x1E5DL,0x1E5DL},{0x1E5DL,0x1E5DL,0x1E5DL,0x1E5DL,0x1E5DL,0x1E5DL,0x1E5DL},{0x1E5DL,0x1E5DL,0x1E5DL,0x1E5DL,0x1E5DL,0x1E5DL,0x1E5DL}};
                        int i, j;
                        l_1837[1] = l_1916;
                        (*l_1916) |= (-1L);
                        ++l_1919[7][3];
                    }
                    l_1837[1] = (void*)0;
                }
                else
                { /* block id: 881 */
                    uint32_t l_1922 = 0UL;
                    int64_t l_1923 = 0x63C10B42B8FFD020L;
                    int32_t l_1937[6] = {0x50D22F7FL,0x50D22F7FL,0x50D22F7FL,0x50D22F7FL,0x50D22F7FL,0x50D22F7FL};
                    int32_t *l_1936 = &l_1937[2];
                    int i;
                    l_1923 &= l_1922;
                    for (l_1922 = (-23); (l_1922 > 17); l_1922 = safe_add_func_uint8_t_u_u(l_1922, 7))
                    { /* block id: 885 */
                        uint8_t l_1926 = 0x1EL;
                        int16_t l_1927 = 1L;
                        int32_t l_1929 = (-2L);
                        int32_t *l_1928 = &l_1929;
                        int32_t **l_1930 = (void*)0;
                        VECTOR(int32_t, 16) l_1931 = (VECTOR(int32_t, 16))(0x5584125DL, (VECTOR(int32_t, 4))(0x5584125DL, (VECTOR(int32_t, 2))(0x5584125DL, (-10L)), (-10L)), (-10L), 0x5584125DL, (-10L), (VECTOR(int32_t, 2))(0x5584125DL, (-10L)), (VECTOR(int32_t, 2))(0x5584125DL, (-10L)), 0x5584125DL, (-10L), 0x5584125DL, (-10L));
                        VECTOR(int32_t, 16) l_1932 = (VECTOR(int32_t, 16))(2L, (VECTOR(int32_t, 4))(2L, (VECTOR(int32_t, 2))(2L, (-10L)), (-10L)), (-10L), 2L, (-10L), (VECTOR(int32_t, 2))(2L, (-10L)), (VECTOR(int32_t, 2))(2L, (-10L)), 2L, (-10L), 2L, (-10L));
                        VECTOR(int32_t, 2) l_1933 = (VECTOR(int32_t, 2))((-7L), 0x10F121ADL);
                        VECTOR(int32_t, 8) l_1934 = (VECTOR(int32_t, 8))(0x0DB075ABL, (VECTOR(int32_t, 4))(0x0DB075ABL, (VECTOR(int32_t, 2))(0x0DB075ABL, 0x3036C860L), 0x3036C860L), 0x3036C860L, 0x0DB075ABL, 0x3036C860L);
                        int16_t l_1935[4][10] = {{0x310EL,0x310EL,7L,0x5571L,0x523AL,0x5571L,7L,0x310EL,0x310EL,7L},{0x310EL,0x310EL,7L,0x5571L,0x523AL,0x5571L,7L,0x310EL,0x310EL,7L},{0x310EL,0x310EL,7L,0x5571L,0x523AL,0x5571L,7L,0x310EL,0x310EL,7L},{0x310EL,0x310EL,7L,0x5571L,0x523AL,0x5571L,7L,0x310EL,0x310EL,7L}};
                        int i, j;
                        l_1927 = l_1926;
                        l_1837[0] = (l_1839 = l_1928);
                        l_1930 = (void*)0;
                        l_1935[2][4] = ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 2))(l_1931.s70)), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(l_1932.s9d)))), ((VECTOR(int32_t, 4))(l_1933.yyxy)).even))), ((VECTOR(int32_t, 2))(l_1934.s16)), 0x4255375BL, ((VECTOR(int32_t, 2))(1L, 0x311EBC84L)), 2L)).s7474742757115456)).s3;
                    }
                    l_1839 = l_1936;
                }
            }
            for (l_1838 = (-10); (l_1838 > 13); l_1838 = safe_add_func_uint16_t_u_u(l_1838, 5))
            { /* block id: 897 */
                uint32_t l_1940 = 0xD2A6A8E4L;
                int8_t l_2004 = 0x0DL;
                int32_t l_2005 = 0L;
                int32_t l_2006 = 0x3F0C4E88L;
                int64_t l_2007 = 1L;
                VECTOR(int64_t, 4) l_2008 = (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 0L), 0L);
                int i;
                if (l_1940)
                { /* block id: 898 */
                    int32_t l_1941 = 0x26F84B87L;
                    for (l_1941 = 0; (l_1941 <= (-2)); --l_1941)
                    { /* block id: 901 */
                        uint8_t l_1944 = 0xD4L;
                        uint16_t l_1947[6] = {0x1A27L,0x1A27L,0x1A27L,0x1A27L,0x1A27L,0x1A27L};
                        int16_t l_1950 = 1L;
                        int64_t l_1951 = 0x5A569FAA33FE686BL;
                        int16_t l_1952 = 1L;
                        uint64_t l_1953 = 0x7FAAB159BBC08F52L;
                        int i;
                        l_1944--;
                        l_1947[0]++;
                        l_1951 ^= l_1950;
                        l_1953--;
                    }
                    for (l_1941 = 0; (l_1941 != (-7)); l_1941 = safe_sub_func_uint8_t_u_u(l_1941, 2))
                    { /* block id: 909 */
                        VECTOR(uint16_t, 4) l_1958 = (VECTOR(uint16_t, 4))(6UL, (VECTOR(uint16_t, 2))(6UL, 9UL), 9UL);
                        VECTOR(uint16_t, 16) l_1959 = (VECTOR(uint16_t, 16))(65532UL, (VECTOR(uint16_t, 4))(65532UL, (VECTOR(uint16_t, 2))(65532UL, 65535UL), 65535UL), 65535UL, 65532UL, 65535UL, (VECTOR(uint16_t, 2))(65532UL, 65535UL), (VECTOR(uint16_t, 2))(65532UL, 65535UL), 65532UL, 65535UL, 65532UL, 65535UL);
                        int16_t l_1960 = 1L;
                        int16_t l_1961 = 1L;
                        uint32_t l_1964 = 5UL;
                        uint32_t *l_1963[6][2] = {{&l_1964,&l_1964},{&l_1964,&l_1964},{&l_1964,&l_1964},{&l_1964,&l_1964},{&l_1964,&l_1964},{&l_1964,&l_1964}};
                        uint32_t **l_1962 = &l_1963[2][0];
                        uint32_t **l_1965 = &l_1963[0][1];
                        uint32_t **l_1966 = &l_1963[5][1];
                        int32_t l_1968 = 0x6831782EL;
                        int32_t *l_1967[10][8] = {{&l_1968,&l_1968,(void*)0,&l_1968,&l_1968,&l_1968,&l_1968,(void*)0},{&l_1968,&l_1968,(void*)0,&l_1968,&l_1968,&l_1968,&l_1968,(void*)0},{&l_1968,&l_1968,(void*)0,&l_1968,&l_1968,&l_1968,&l_1968,(void*)0},{&l_1968,&l_1968,(void*)0,&l_1968,&l_1968,&l_1968,&l_1968,(void*)0},{&l_1968,&l_1968,(void*)0,&l_1968,&l_1968,&l_1968,&l_1968,(void*)0},{&l_1968,&l_1968,(void*)0,&l_1968,&l_1968,&l_1968,&l_1968,(void*)0},{&l_1968,&l_1968,(void*)0,&l_1968,&l_1968,&l_1968,&l_1968,(void*)0},{&l_1968,&l_1968,(void*)0,&l_1968,&l_1968,&l_1968,&l_1968,(void*)0},{&l_1968,&l_1968,(void*)0,&l_1968,&l_1968,&l_1968,&l_1968,(void*)0},{&l_1968,&l_1968,(void*)0,&l_1968,&l_1968,&l_1968,&l_1968,(void*)0}};
                        uint64_t l_1969[3][7] = {{0UL,0x0D7C7E6801B04C64L,0x38C1355B561D8FC8L,0x0D7C7E6801B04C64L,0UL,0UL,0x0D7C7E6801B04C64L},{0UL,0x0D7C7E6801B04C64L,0x38C1355B561D8FC8L,0x0D7C7E6801B04C64L,0UL,0UL,0x0D7C7E6801B04C64L},{0UL,0x0D7C7E6801B04C64L,0x38C1355B561D8FC8L,0x0D7C7E6801B04C64L,0UL,0UL,0x0D7C7E6801B04C64L}};
                        uint32_t l_1970 = 6UL;
                        uint16_t l_1971 = 0x47A0L;
                        int32_t l_1972 = (-1L);
                        int i, j;
                        l_1961 = (((VECTOR(uint16_t, 8))(add_sat(((VECTOR(uint16_t, 16))(l_1958.xwwxwxyzzxzzxyyx)).even, ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 4))(l_1959.sf30b)))).yzyzwyxz))).s6 , l_1960);
                        l_1966 = (l_1965 = l_1962);
                        l_1967[5][1] = (void*)0;
                        l_1972 ^= (((l_1970 = (l_1969[0][1] = 1UL)) , 1UL) , l_1971);
                    }
                }
                else
                { /* block id: 918 */
                    int32_t l_1973 = (-5L);
                    int32_t l_2002 = 0x02AA92F9L;
                    int32_t *l_2003 = &l_1973;
                    for (l_1973 = (-2); (l_1973 < 25); l_1973 = safe_add_func_int8_t_s_s(l_1973, 9))
                    { /* block id: 921 */
                        VECTOR(int32_t, 16) l_1976 = (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, (-1L)), (-1L)), (-1L), 0L, (-1L), (VECTOR(int32_t, 2))(0L, (-1L)), (VECTOR(int32_t, 2))(0L, (-1L)), 0L, (-1L), 0L, (-1L));
                        VECTOR(int32_t, 8) l_1977 = (VECTOR(int32_t, 8))(0x7FB1DA9CL, (VECTOR(int32_t, 4))(0x7FB1DA9CL, (VECTOR(int32_t, 2))(0x7FB1DA9CL, (-9L)), (-9L)), (-9L), 0x7FB1DA9CL, (-9L));
                        VECTOR(int32_t, 8) l_1978 = (VECTOR(int32_t, 8))(0x4F01E302L, (VECTOR(int32_t, 4))(0x4F01E302L, (VECTOR(int32_t, 2))(0x4F01E302L, 0x3AAD5626L), 0x3AAD5626L), 0x3AAD5626L, 0x4F01E302L, 0x3AAD5626L);
                        VECTOR(int32_t, 8) l_1979 = (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x769F9328L), 0x769F9328L), 0x769F9328L, 0L, 0x769F9328L);
                        VECTOR(uint8_t, 16) l_1980 = (VECTOR(uint8_t, 16))(248UL, (VECTOR(uint8_t, 4))(248UL, (VECTOR(uint8_t, 2))(248UL, 0xFFL), 0xFFL), 0xFFL, 248UL, 0xFFL, (VECTOR(uint8_t, 2))(248UL, 0xFFL), (VECTOR(uint8_t, 2))(248UL, 0xFFL), 248UL, 0xFFL, 248UL, 0xFFL);
                        VECTOR(int32_t, 4) l_1981 = (VECTOR(int32_t, 4))(9L, (VECTOR(int32_t, 2))(9L, 1L), 1L);
                        VECTOR(int32_t, 8) l_1982 = (VECTOR(int32_t, 8))(0x6EB9B4FEL, (VECTOR(int32_t, 4))(0x6EB9B4FEL, (VECTOR(int32_t, 2))(0x6EB9B4FEL, (-1L)), (-1L)), (-1L), 0x6EB9B4FEL, (-1L));
                        int16_t l_1983 = (-7L);
                        VECTOR(int32_t, 2) l_1984 = (VECTOR(int32_t, 2))(0x2DE0ECACL, 1L);
                        uint64_t l_1985 = 0x5E6FA96CD894E178L;
                        uint32_t l_1986[5][7][3] = {{{4294967295UL,0x35059AB7L,1UL},{4294967295UL,0x35059AB7L,1UL},{4294967295UL,0x35059AB7L,1UL},{4294967295UL,0x35059AB7L,1UL},{4294967295UL,0x35059AB7L,1UL},{4294967295UL,0x35059AB7L,1UL},{4294967295UL,0x35059AB7L,1UL}},{{4294967295UL,0x35059AB7L,1UL},{4294967295UL,0x35059AB7L,1UL},{4294967295UL,0x35059AB7L,1UL},{4294967295UL,0x35059AB7L,1UL},{4294967295UL,0x35059AB7L,1UL},{4294967295UL,0x35059AB7L,1UL},{4294967295UL,0x35059AB7L,1UL}},{{4294967295UL,0x35059AB7L,1UL},{4294967295UL,0x35059AB7L,1UL},{4294967295UL,0x35059AB7L,1UL},{4294967295UL,0x35059AB7L,1UL},{4294967295UL,0x35059AB7L,1UL},{4294967295UL,0x35059AB7L,1UL},{4294967295UL,0x35059AB7L,1UL}},{{4294967295UL,0x35059AB7L,1UL},{4294967295UL,0x35059AB7L,1UL},{4294967295UL,0x35059AB7L,1UL},{4294967295UL,0x35059AB7L,1UL},{4294967295UL,0x35059AB7L,1UL},{4294967295UL,0x35059AB7L,1UL},{4294967295UL,0x35059AB7L,1UL}},{{4294967295UL,0x35059AB7L,1UL},{4294967295UL,0x35059AB7L,1UL},{4294967295UL,0x35059AB7L,1UL},{4294967295UL,0x35059AB7L,1UL},{4294967295UL,0x35059AB7L,1UL},{4294967295UL,0x35059AB7L,1UL},{4294967295UL,0x35059AB7L,1UL}}};
                        uint32_t l_1987 = 0x29669FAEL;
                        VECTOR(int32_t, 16) l_1988 = (VECTOR(int32_t, 16))(0x5A3065BCL, (VECTOR(int32_t, 4))(0x5A3065BCL, (VECTOR(int32_t, 2))(0x5A3065BCL, 1L), 1L), 1L, 0x5A3065BCL, 1L, (VECTOR(int32_t, 2))(0x5A3065BCL, 1L), (VECTOR(int32_t, 2))(0x5A3065BCL, 1L), 0x5A3065BCL, 1L, 0x5A3065BCL, 1L);
                        int8_t l_1989 = 0x48L;
                        VECTOR(int16_t, 2) l_1990 = (VECTOR(int16_t, 2))((-1L), 5L);
                        uint64_t l_1991 = 0xAE3155DB8EE5A8B3L;
                        uint64_t l_1992 = 0xDF424E9327043079L;
                        VECTOR(int32_t, 8) l_1993 = (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 1L), 1L), 1L, (-1L), 1L);
                        VECTOR(int32_t, 2) l_1994 = (VECTOR(int32_t, 2))((-1L), 0x2FF8C079L);
                        VECTOR(int32_t, 8) l_1995 = (VECTOR(int32_t, 8))(0x541E4D89L, (VECTOR(int32_t, 4))(0x541E4D89L, (VECTOR(int32_t, 2))(0x541E4D89L, (-1L)), (-1L)), (-1L), 0x541E4D89L, (-1L));
                        uint32_t l_1996 = 1UL;
                        uint32_t l_1997 = 4294967295UL;
                        int64_t l_1998[10] = {4L,4L,4L,4L,4L,4L,4L,4L,4L,4L};
                        int16_t l_1999[6][2] = {{1L,(-1L)},{1L,(-1L)},{1L,(-1L)},{1L,(-1L)},{1L,(-1L)},{1L,(-1L)}};
                        int32_t l_2000 = 2L;
                        int16_t l_2001 = 0x37E9L;
                        int i, j, k;
                        l_2001 = ((VECTOR(int32_t, 16))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 2))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 8))(0x67F5904BL, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(l_1976.s94)))), ((VECTOR(int32_t, 4))(rhadd(((VECTOR(int32_t, 2))(safe_clamp_func(VECTOR(int32_t, 2),int32_t,((VECTOR(int32_t, 4))(hadd(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(hadd(((VECTOR(int32_t, 16))(l_1977.s0066502060661014)).s38, ((VECTOR(int32_t, 4))(l_1978.s5231)).hi))), 0x1391FD40L, (-1L))), ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 16))(safe_clamp_func(VECTOR(int32_t, 16),int32_t,((VECTOR(int32_t, 8))(l_1979.s50150555)).s0476061247261306, (int32_t)(l_1980.s2 , ((VECTOR(int32_t, 8))(sub_sat(((VECTOR(int32_t, 16))(hadd(((VECTOR(int32_t, 2))(6L, 0L)).yxxyyxxxyxyyyxyy, ((VECTOR(int32_t, 8))(l_1981.xwyzywzz)).s2751177246776720))).even, ((VECTOR(int32_t, 2))(l_1982.s63)).xxyxxyyx))).s3), (int32_t)l_1983))), ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(l_1984.yxyy)).zzxxzzwx)).s4761755516710002))))))).s1598))).even, (int32_t)l_1985, (int32_t)(((VECTOR(int32_t, 4))((l_1987 = l_1986[1][6][2]), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(l_1988.s98)))), 1L)).x , (l_1989 , (l_1992 = (l_1991 = l_1990.x))))))).xyyy, ((VECTOR(int32_t, 4))(clz(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(hadd(((VECTOR(int32_t, 4))(l_1993.s5777)).even, ((VECTOR(int32_t, 16))(mul_hi(((VECTOR(int32_t, 8))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 8))(l_1994.xxyxxxxy)), ((VECTOR(int32_t, 8))(l_1995.s53566304))))).s7554236702621702, ((VECTOR(int32_t, 16))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))((-10L), 8L)), 0L, 3L)).wyzzzyyzwzxyxxyx, ((VECTOR(int32_t, 4))(l_1996, l_1997, (-1L), 1L)).wxzzzwzxxyzxzxxw, ((VECTOR(int32_t, 4))(sub_sat(((VECTOR(int32_t, 16))(0x05B3D222L, 2L, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(0x6D013F08L, 0x7F7BA7B7L)), (-2L), l_1998[0], l_1999[1][0], 0x6B34804FL, 0x76F6D5B1L, 0x24758F72L)), ((VECTOR(int32_t, 2))(0x49837FEAL)), l_2000, ((VECTOR(int32_t, 2))(0x4E878087L)), 1L)).saa10, ((VECTOR(int32_t, 4))(0x7536633CL))))).xzzyyzyzyywxxxwz)))))).s3a))).xyyyyxyxxyyxxyxx)).s10d3)))))), 0L)).s13, ((VECTOR(int32_t, 2))(1L))))).xxxyxyyyxyyyyxyx, ((VECTOR(int32_t, 16))(0L))))).s5;
                    }
                    l_1973 ^= 0x57CC8F44L;
                    l_1839 = (l_1840 = (l_1837[1] = (l_2003 = (l_2002 , l_2003))));
                }
                l_2005 &= l_2004;
                l_2007 |= l_2006;
                l_2006 = l_2008.y;
            }
            unsigned int result = 0;
            result += l_1838;
            atomic_add(&p_2023->g_special_values[43 * get_linear_group_id() + 3], result);
        }
        else
        { /* block id: 937 */
            (1 + 1);
        }
        return l_94.w;
    }
    else
    { /* block id: 941 */
        return p_24;
    }
}


/* ------------------------------------------ */
/* 
 * reads : p_2023->g_1563 p_2023->g_1639 p_2023->g_1640 p_2023->g_943 p_2023->g_300 p_2023->g_1641 p_2023->g_1642 p_2023->g_1643 p_2023->g_127 p_2023->g_27 p_2023->g_575
 * writes: p_2023->g_1834 p_2023->g_300
 */
int32_t  func_85(uint64_t * p_86, int16_t  p_87, uint16_t  p_88, uint64_t  p_89, uint64_t  p_90, struct S0 * p_2023)
{ /* block id: 802 */
    uint64_t l_1821 = 18446744073709551614UL;
    uint32_t *l_1833 = &p_2023->g_593;
    uint32_t **l_1832[9][10] = {{&l_1833,&l_1833,&l_1833,&l_1833,&l_1833,&l_1833,&l_1833,&l_1833,&l_1833,&l_1833},{&l_1833,&l_1833,&l_1833,&l_1833,&l_1833,&l_1833,&l_1833,&l_1833,&l_1833,&l_1833},{&l_1833,&l_1833,&l_1833,&l_1833,&l_1833,&l_1833,&l_1833,&l_1833,&l_1833,&l_1833},{&l_1833,&l_1833,&l_1833,&l_1833,&l_1833,&l_1833,&l_1833,&l_1833,&l_1833,&l_1833},{&l_1833,&l_1833,&l_1833,&l_1833,&l_1833,&l_1833,&l_1833,&l_1833,&l_1833,&l_1833},{&l_1833,&l_1833,&l_1833,&l_1833,&l_1833,&l_1833,&l_1833,&l_1833,&l_1833,&l_1833},{&l_1833,&l_1833,&l_1833,&l_1833,&l_1833,&l_1833,&l_1833,&l_1833,&l_1833,&l_1833},{&l_1833,&l_1833,&l_1833,&l_1833,&l_1833,&l_1833,&l_1833,&l_1833,&l_1833,&l_1833},{&l_1833,&l_1833,&l_1833,&l_1833,&l_1833,&l_1833,&l_1833,&l_1833,&l_1833,&l_1833}};
    int16_t *l_1835 = &p_2023->g_300;
    int32_t l_1836[3][10][1] = {{{0x55F7BB23L},{0x55F7BB23L},{0x55F7BB23L},{0x55F7BB23L},{0x55F7BB23L},{0x55F7BB23L},{0x55F7BB23L},{0x55F7BB23L},{0x55F7BB23L},{0x55F7BB23L}},{{0x55F7BB23L},{0x55F7BB23L},{0x55F7BB23L},{0x55F7BB23L},{0x55F7BB23L},{0x55F7BB23L},{0x55F7BB23L},{0x55F7BB23L},{0x55F7BB23L},{0x55F7BB23L}},{{0x55F7BB23L},{0x55F7BB23L},{0x55F7BB23L},{0x55F7BB23L},{0x55F7BB23L},{0x55F7BB23L},{0x55F7BB23L},{0x55F7BB23L},{0x55F7BB23L},{0x55F7BB23L}}};
    int i, j, k;
    l_1836[2][2][0] = (l_1821 == (safe_lshift_func_uint8_t_u_u(p_87, ((VECTOR(uint8_t, 16))(1UL, ((p_2023->g_1563.z , (safe_lshift_func_int16_t_s_u(((void*)0 == (*p_2023->g_1639)), 3))) > ((l_1821 , ((safe_lshift_func_uint8_t_u_u((p_2023->g_943[2][0][3] , (!(safe_sub_func_int16_t_s_s(((p_88 && ((((*l_1835) &= (safe_div_func_int16_t_s_s((((p_2023->g_1834 = (void*)0) == &p_2023->g_593) ^ p_89), p_89))) != (-1L)) > 0L)) >= (-1L)), p_89)))), FAKE_DIVERGE(p_2023->group_0_offset, get_group_id(0), 10))) , (****p_2023->g_1641))) && p_2023->g_575.s9)), 0xECL, ((VECTOR(uint8_t, 2))(0UL)), ((VECTOR(uint8_t, 4))(0x1EL)), 0x49L, p_89, ((VECTOR(uint8_t, 4))(1UL)), 0x1CL)).s0)));
    return l_1836[0][8][0];
}


/* ------------------------------------------ */
/* 
 * reads : p_2023->g_27 p_2023->g_617 p_2023->g_120 p_2023->g_1639 p_2023->g_1646 p_2023->g_1285 p_2023->g_1669 p_2023->g_652 p_2023->g_1230 p_2023->g_173 p_2023->g_1694 p_2023->g_1703 p_2023->g_1256 p_2023->g_651 p_2023->g_172 p_2023->g_1719 p_2023->g_1720 p_2023->g_1721 p_2023->g_669 p_2023->g_1722 p_2023->g_1641 p_2023->g_1642 p_2023->g_1643 p_2023->g_127 p_2023->g_156 p_2023->g_157 p_2023->g_28 p_2023->g_373 p_2023->g_30 p_2023->g_420 p_2023->g_1019 p_2023->g_1766 p_2023->g_1778 p_2023->g_1783 p_2023->g_1640 p_2023->g_665 p_2023->g_264 p_2023->g_576 p_2023->g_593 p_2023->g_5
 * writes: p_2023->g_27 p_2023->g_1572 p_2023->g_300 p_2023->g_30 p_2023->g_5 p_2023->g_494 p_2023->g_28 p_2023->g_420 p_2023->g_1193 p_2023->g_1766 p_2023->g_1285 p_2023->g_593 p_2023->g_120
 */
int64_t  func_97(int16_t  p_98, uint64_t * p_99, int8_t  p_100, int32_t *** p_101, struct S0 * p_2023)
{ /* block id: 732 */
    int8_t *****l_1645[10][10][1] = {{{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]}},{{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]}},{{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]}},{{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]}},{{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]}},{{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]}},{{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]}},{{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]}},{{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]}},{{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]},{&p_2023->g_1302[5]}}};
    int8_t ******l_1644[8] = {&l_1645[1][3][0],(void*)0,&l_1645[1][3][0],&l_1645[1][3][0],(void*)0,&l_1645[1][3][0],&l_1645[1][3][0],(void*)0};
    int32_t l_1653 = 0L;
    uint32_t l_1663 = 0x6584B2E2L;
    uint16_t l_1664 = 4UL;
    VECTOR(uint32_t, 4) l_1670 = (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 1UL), 1UL);
    uint32_t *l_1682 = &p_2023->g_576[7];
    uint32_t **l_1681 = &l_1682;
    VECTOR(int8_t, 8) l_1685 = (VECTOR(int8_t, 8))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x0BL), 0x0BL), 0x0BL, (-1L), 0x0BL);
    VECTOR(uint32_t, 4) l_1692 = (VECTOR(uint32_t, 4))(0x703DD94FL, (VECTOR(uint32_t, 2))(0x703DD94FL, 4294967295UL), 4294967295UL);
    VECTOR(uint32_t, 2) l_1693 = (VECTOR(uint32_t, 2))(0x1F258F85L, 1UL);
    VECTOR(uint32_t, 16) l_1695 = (VECTOR(uint32_t, 16))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 0UL), 0UL), 0UL, 4294967295UL, 0UL, (VECTOR(uint32_t, 2))(4294967295UL, 0UL), (VECTOR(uint32_t, 2))(4294967295UL, 0UL), 4294967295UL, 0UL, 4294967295UL, 0UL);
    VECTOR(uint32_t, 8) l_1696 = (VECTOR(uint32_t, 8))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 4294967295UL), 4294967295UL), 4294967295UL, 0UL, 4294967295UL);
    uint32_t *l_1704 = (void*)0;
    uint32_t *l_1705 = (void*)0;
    uint32_t *l_1706 = (void*)0;
    uint32_t *l_1707 = (void*)0;
    uint32_t *l_1708 = (void*)0;
    uint32_t *l_1709 = (void*)0;
    int16_t *l_1710 = (void*)0;
    int16_t *l_1711 = (void*)0;
    int16_t *l_1712 = (void*)0;
    int16_t *l_1713[7][6] = {{(void*)0,(void*)0,(void*)0,&p_2023->g_300,(void*)0,&p_2023->g_300},{(void*)0,(void*)0,(void*)0,&p_2023->g_300,(void*)0,&p_2023->g_300},{(void*)0,(void*)0,(void*)0,&p_2023->g_300,(void*)0,&p_2023->g_300},{(void*)0,(void*)0,(void*)0,&p_2023->g_300,(void*)0,&p_2023->g_300},{(void*)0,(void*)0,(void*)0,&p_2023->g_300,(void*)0,&p_2023->g_300},{(void*)0,(void*)0,(void*)0,&p_2023->g_300,(void*)0,&p_2023->g_300},{(void*)0,(void*)0,(void*)0,&p_2023->g_300,(void*)0,&p_2023->g_300}};
    uint64_t ***l_1734 = (void*)0;
    uint32_t l_1737[7] = {9UL,0x0965A4E6L,9UL,9UL,0x0965A4E6L,9UL,9UL};
    uint16_t l_1761 = 6UL;
    int64_t l_1790 = 0x13B82E63EDEF9EC7L;
    uint8_t l_1808 = 9UL;
    int i, j, k;
    for (p_2023->g_27 = 19; (p_2023->g_27 != 5); p_2023->g_27 = safe_sub_func_uint64_t_u_u(p_2023->g_27, 7))
    { /* block id: 735 */
        uint8_t l_1647 = 0UL;
        int16_t *l_1648 = (void*)0;
        int16_t *l_1649 = (void*)0;
        int16_t *l_1650 = &p_2023->g_300;
        if (((((VECTOR(int8_t, 4))(min(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(add_sat(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(add_sat(((VECTOR(int8_t, 8))(clz(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))((safe_sub_func_int64_t_s_s((safe_mul_func_int16_t_s_s(((*l_1650) = (p_2023->g_1572.y = ((0L || (((VECTOR(uint16_t, 8))(1UL, 1UL, p_98, ((VECTOR(uint16_t, 4))((*p_2023->g_617), 0x762BL, 65530UL, 5UL)), 0UL)).s4 , (p_2023->g_1639 == l_1644[5]))) != ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 16))(clz(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(p_2023->g_1646.zw)), 0UL, 18446744073709551614UL, l_1647, 1UL, 4UL, 6UL)).s7065755175324327))).lo)))).s1))), (safe_lshift_func_int8_t_s_s(l_1653, (+((VECTOR(int8_t, 16))((safe_div_func_int64_t_s_s((safe_unary_minus_func_int32_t_s((safe_sub_func_int32_t_s_s(((((safe_mul_func_int16_t_s_s((safe_mod_func_uint16_t_u_u((l_1663 <= (l_1663 <= l_1647)), l_1653)), p_100)) <= 1UL) < p_100) > l_1664), 0x4145CF19L)))), l_1647)), ((VECTOR(int8_t, 2))(0x16L)), ((VECTOR(int8_t, 2))(0x4EL)), p_100, ((VECTOR(int8_t, 8))(0x47L)), 0x3FL, 0x38L)).s3))))), p_2023->g_1285.s3)), ((VECTOR(int8_t, 4))(6L)), (-1L), (-5L), 0x73L)).s76)).xxyxxxxy))), ((VECTOR(int8_t, 8))(0x55L))))).s04)), ((VECTOR(int8_t, 2))(0x43L))))), (-6L), ((VECTOR(int8_t, 4))(1L)), 0L)).even)), ((VECTOR(int8_t, 4))((-1L)))))).y > p_100) | l_1653))
        { /* block id: 738 */
            uint16_t l_1671 = 0x15BFL;
            int32_t l_1672 = 0x6E40E05AL;
            (*p_2023->g_652) = ((safe_rshift_func_uint8_t_u_s((safe_div_func_int16_t_s_s((4294967294UL >= (l_1671 = ((VECTOR(uint32_t, 16))(0UL, 4294967286UL, ((VECTOR(uint32_t, 8))(p_2023->g_1669.s73711726)), 0x4CDC51DAL, ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(l_1670.xy)), 0UL, 4294967295UL)), 4294967293UL)).sa)), (*p_2023->g_617))), 0)) > (l_1672 = 6L));
        }
        else
        { /* block id: 742 */
            int32_t *l_1675 = (void*)0;
            for (l_1647 = 0; (l_1647 == 10); ++l_1647)
            { /* block id: 745 */
                int32_t *l_1676[3];
                int i;
                for (i = 0; i < 3; i++)
                    l_1676[i] = (void*)0;
                l_1676[0] = (p_2023->g_1230.s7 , ((*p_2023->g_173) = l_1675));
                if (l_1670.z)
                    break;
            }
        }
    }
    if (((safe_rshift_func_int8_t_s_u((safe_add_func_int16_t_s_s((p_2023->g_300 = ((&p_2023->g_576[7] != ((*l_1681) = &p_2023->g_576[1])) != (l_1663 , (safe_mul_func_int8_t_s_s(((VECTOR(int8_t, 16))(min(((VECTOR(int8_t, 16))(l_1685.s1674571166026033)), (int8_t)(((p_98 = (safe_div_func_int8_t_s_s((~(safe_sub_func_int16_t_s_s((safe_div_func_uint16_t_u_u((((0x4A69L | p_98) >= ((VECTOR(uint32_t, 16))(add_sat(((VECTOR(uint32_t, 16))(hadd(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))(mad_hi(((VECTOR(uint32_t, 4))(l_1692.zyxw)), ((VECTOR(uint32_t, 2))(l_1693.yy)).xyyx, ((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))(clz(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 16))(min(((VECTOR(uint32_t, 2))(0UL, 0xB6F07DC7L)).xyyxxyxyxyyyxxxy, ((VECTOR(uint32_t, 4))(p_2023->g_1694.s4635)).yxxyywwzxzzwwyxx))).s3872)).xxzzyzxw))).s1156173503700624)).saddd))).zwwxzxyzyyzyxwzy)), ((VECTOR(uint32_t, 16))(rhadd(((VECTOR(uint32_t, 4))(l_1695.s2f48)).zwxxwwxzzyxzywzw, ((VECTOR(uint32_t, 4))(FAKE_DIVERGE(p_2023->group_0_offset, get_group_id(0), 10), p_100, 0x7CA5EF94L, 0xF8565C5BL)).zwzyxyzywwzyxzyw)))))), ((VECTOR(uint32_t, 16))(l_1696.s1306241222777375))))).s3) ^ (safe_sub_func_uint64_t_u_u(0x2D5403D375A07B98L, ((((safe_rshift_func_int8_t_s_u(((((safe_add_func_uint32_t_u_u(((VECTOR(uint32_t, 2))(p_2023->g_1703.xx)).even, (!((VECTOR(uint32_t, 16))(mad_sat(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(0UL, ((VECTOR(uint32_t, 2))(safe_mad24_func_uint32_t_u_u_u(VECTOR(uint32_t, 2),((VECTOR(uint32_t, 4))(0UL, (l_1653 = l_1696.s1), 0x33B0A75DL, 4294967295UL)).even, ((VECTOR(uint32_t, 16))(1UL, 1UL, 0xF71CFF6AL, 0x9FE604F8L, ((VECTOR(uint32_t, 2))(0xDADE678AL)), ((VECTOR(uint32_t, 4))(0x04F84ACEL)), ((VECTOR(uint32_t, 4))(8UL)), 0x4A622A2AL, 7UL)).s82, ((VECTOR(uint32_t, 2))(0x3FB1C951L))))).odd, 0x36D7AFAEL, 0x5C0FEFF3L)).zxyxxxzx)).s4226646610572651, ((VECTOR(uint32_t, 16))(4294967292UL)), ((VECTOR(uint32_t, 16))(0xE62EDD05L))))).sc))) ^ 0x7FDBL) ^ 0x7429L) ^ p_98), 1)) & p_98) != 0x84CBL) >= 0UL)))), 0x50ACL)), 0x93E2L))), l_1693.y))) , 0x5E06L) > FAKE_DIVERGE(p_2023->group_2_offset, get_group_id(2), 10))))).se, 0x35L))))), l_1695.sd)), p_2023->g_1256.y)) == 0x62CB273DL))
    { /* block id: 756 */
        return l_1653;
    }
    else
    { /* block id: 758 */
        int32_t *l_1714 = (void*)0;
        VECTOR(uint32_t, 4) l_1723 = (VECTOR(uint32_t, 4))(0x79FF7BDBL, (VECTOR(uint32_t, 2))(0x79FF7BDBL, 0UL), 0UL);
        int64_t *l_1735 = (void*)0;
        int64_t *l_1736 = &p_2023->g_494;
        uint8_t *l_1738[1];
        VECTOR(int16_t, 16) l_1750 = (VECTOR(int16_t, 16))(0x7C16L, (VECTOR(int16_t, 4))(0x7C16L, (VECTOR(int16_t, 2))(0x7C16L, 0x318DL), 0x318DL), 0x318DL, 0x7C16L, 0x318DL, (VECTOR(int16_t, 2))(0x7C16L, 0x318DL), (VECTOR(int16_t, 2))(0x7C16L, 0x318DL), 0x7C16L, 0x318DL, 0x7C16L, 0x318DL);
        VECTOR(uint16_t, 4) l_1757 = (VECTOR(uint16_t, 4))(0x1AC8L, (VECTOR(uint16_t, 2))(0x1AC8L, 0x60D6L), 0x60D6L);
        int8_t *****l_1760 = &p_2023->g_1302[5];
        uint32_t **l_1816 = &l_1709;
        int i;
        for (i = 0; i < 1; i++)
            l_1738[i] = (void*)0;
        (*p_2023->g_173) = (*p_2023->g_651);
        (**p_2023->g_172) = l_1714;
        atomic_or(&p_2023->g_atomic_reduction[get_linear_group_id()], ((safe_sub_func_uint8_t_u_u((l_1653 = (safe_mod_func_int8_t_s_s((((void*)0 != &p_2023->g_576[4]) <= ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 8))(upsample(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 4))(p_2023->g_1719.s2523)).zyzywzwwyxzwxzyx, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(min(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(0x3C0B2335L, 0x085A7CD8L)).xyxyyxxyxxxyxxyy)).sc24f, ((VECTOR(int32_t, 16))(p_2023->g_1720.xxyxyyyxxyxyyxxx)).sd7be))).lo)).xyyxyyxyxxxxxxyx, ((VECTOR(int32_t, 4))(p_2023->g_1721.ywyx)).wwxzxzyzyxzwxwyy))).sf3f5)).xzzxwyzx, ((VECTOR(uint32_t, 2))(max(((VECTOR(uint32_t, 16))(p_2023->g_669.x, 0x2E0E4B54L, FAKE_DIVERGE(p_2023->global_1_offset, get_global_id(1), 10), ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(hadd(((VECTOR(uint32_t, 4))(p_2023->g_1722.s0617)).odd, ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 8))(hadd(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))(l_1723.zw)), p_2023->g_1721.z, 8UL, ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 2))(0UL, 4294967295UL)))), ((void*)0 != &p_98), p_100, 0x263906B3L, ((VECTOR(uint32_t, 2))(0x0AB32E5AL, 0xB3DB1EBFL)), 0x5EF7D3E7L, ((VECTOR(uint32_t, 4))(0x1279149FL, ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 16))(upsample(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 8))(upsample(((VECTOR(uint8_t, 8))(l_1670.y, ((safe_mul_func_int8_t_s_s((safe_lshift_func_uint16_t_u_u((((((*l_1736) = (safe_div_func_uint32_t_u_u((safe_mod_func_uint32_t_u_u((safe_rshift_func_uint8_t_u_u((((p_100 , l_1734) == (void*)0) | (****p_2023->g_1641)), p_100)), 0x6FD3EE29L)), (-1L)))) & l_1693.x) > (*p_2023->g_156)) , l_1693.x), 2)), l_1737[5])) & p_2023->g_1230.s1), 253UL, 0UL, 0x43L, ((VECTOR(uint8_t, 2))(250UL)), 6UL)), ((VECTOR(uint8_t, 8))(255UL))))).s76)).yyxxxxyxyxyyyxxy)), ((VECTOR(uint16_t, 16))(0xFC17L))))).sf4)), 0x72EFEDECL)))).hi, ((VECTOR(uint32_t, 8))(0x528ADEF2L))))).s20))))).yxyyxxxx)), ((VECTOR(uint32_t, 2))(0xB33CC1B2L)), 4294967287UL, 4294967295UL, 0UL)).saf, (uint32_t)p_100))).xxyyxxyx))), (-1L), 0x407E56E550278070L, ((VECTOR(int64_t, 4))(0x01D65F28743F110DL)), (-3L), 6L)))).s2c)).even), p_100))), l_1737[0])) < (-1L)));
        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        if (get_linear_local_id() == 0)
            p_2023->v_collective += p_2023->g_atomic_reduction[get_linear_group_id()];
        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        for (p_2023->g_28 = (-4); (p_2023->g_28 > 5); p_2023->g_28 = safe_add_func_uint8_t_u_u(p_2023->g_28, 7))
        { /* block id: 766 */
            uint32_t l_1741 = 0x2998841BL;
            VECTOR(int32_t, 8) l_1746 = (VECTOR(int32_t, 8))(2L, (VECTOR(int32_t, 4))(2L, (VECTOR(int32_t, 2))(2L, (-9L)), (-9L)), (-9L), 2L, (-9L));
            uint64_t l_1751 = 0x36E99583381FA6F4L;
            int8_t *l_1752 = &p_2023->g_27;
            int32_t *l_1762 = (void*)0;
            uint64_t **l_1765 = &p_2023->g_1194;
            uint32_t *l_1815 = &p_2023->g_593;
            uint32_t **l_1817 = &l_1705;
            uint16_t *l_1818 = (void*)0;
            uint16_t *l_1819 = &p_2023->g_120;
            int i;
            l_1741++;
            if ((safe_mul_func_uint16_t_u_u((((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(mad_sat(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(l_1746.s33240405)).s70)))).yxxyyyxxxxyyyxyx, ((VECTOR(int32_t, 4))((safe_mul_func_uint16_t_u_u((((*p_2023->g_617) >= (safe_unary_minus_func_uint8_t_u(p_2023->g_373.x))) & (0UL | (l_1751 = ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 16))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 16),((VECTOR(int16_t, 16))(l_1750.s10c806794a5cae33)), ((VECTOR(int16_t, 2))(1L, 0L)).xxxyyxyyyxyxyyyx, ((VECTOR(int16_t, 2))(0x12D7L, 0L)).xyyyxxxyyyxyxxxy))).sfc1d)).wywwwzww)).s6))), ((1UL & (l_1752 == ((!0x052B10B3L) , l_1752))) < (p_2023->g_420.z &= (((safe_div_func_int64_t_s_s(((safe_rshift_func_uint16_t_u_u(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(rhadd(((VECTOR(uint16_t, 2))(mad_hi(((VECTOR(uint16_t, 2))(l_1757.yz)), ((VECTOR(uint16_t, 16))(safe_clamp_func(VECTOR(uint16_t, 16),uint16_t,((VECTOR(uint16_t, 2))(abs(((VECTOR(int16_t, 8))((safe_rshift_func_int8_t_s_u(((void*)0 != l_1760), p_100)), ((VECTOR(int16_t, 4))((-1L))), 2L, (-1L), 0x4C81L)).s65))).xxyyxxyxyxyxyxyy, (uint16_t)p_98, (uint16_t)l_1761))).s38, ((VECTOR(uint16_t, 2))(0xD0A0L))))), ((VECTOR(uint16_t, 2))(0xFEDCL))))).xyyxyxyy)).s5, 7)) == FAKE_DIVERGE(p_2023->global_1_offset, get_global_id(1), 10)), FAKE_DIVERGE(p_2023->local_1_offset, get_local_id(1), 10))) , l_1695.s0) , (*p_2023->g_652)))))), 0x02806CB1L, (-1L), 0x2DF8D5B3L)).xwxyyxwyyxxyxzyz, ((VECTOR(int32_t, 16))(0x247B92FEL))))).s93d6)).x >= l_1757.z), p_98)))
            { /* block id: 770 */
                uint64_t **l_1767 = &p_2023->g_1194;
                uint16_t *l_1781 = (void*)0;
                uint16_t *l_1782 = &l_1664;
                (*p_2023->g_652) = ((safe_rshift_func_int16_t_s_u((l_1765 == (p_2023->g_1193[2][2] = ((p_2023->g_1019.x & p_2023->g_1766) , l_1767))), (*p_2023->g_617))) && (-1L));
                l_1790 &= (l_1761 ^ (safe_mod_func_int64_t_s_s(((VECTOR(int64_t, 2))(0x2CAD54C762D64D93L, 0x4F06C40E2675681BL)).even, (safe_mul_func_uint8_t_u_u((safe_div_func_uint64_t_u_u(((safe_mul_func_int16_t_s_s((safe_rshift_func_int8_t_s_s(((VECTOR(int8_t, 8))(p_2023->g_1778.s37427124)).s0, 7)), (safe_lshift_func_uint16_t_u_s(((*l_1782) |= 65535UL), (p_2023->g_1783 != (void*)0))))) <= ((void*)0 != p_99)), ((((safe_div_func_int32_t_s_s(p_100, (safe_lshift_func_int8_t_s_s(((*****p_2023->g_1640) ^= 0x23L), 5)))) && 0x6526L) ^ p_98) , p_2023->g_665.s7))), 246UL)))));
                if ((**p_2023->g_651))
                    continue;
            }
            else
            { /* block id: 777 */
                uint32_t l_1795[3];
                int i;
                for (i = 0; i < 3; i++)
                    l_1795[i] = 2UL;
                for (p_2023->g_1766 = 22; (p_2023->g_1766 == 9); p_2023->g_1766--)
                { /* block id: 780 */
                    uint32_t l_1804 = 4294967292UL;
                    for (p_98 = 0; (p_98 <= (-15)); p_98--)
                    { /* block id: 783 */
                        uint64_t *l_1802 = &l_1751;
                        int16_t l_1803 = (-1L);
                        l_1653 = ((0x7463L != (((VECTOR(uint64_t, 8))(l_1795[1], 0xFD504D25208455D6L, (((p_2023->g_1019.x > (p_2023->g_1285.s7 = (~(((safe_rshift_func_int16_t_s_u((p_98 == (safe_sub_func_int32_t_s_s((((*l_1802) &= (safe_rshift_func_uint16_t_u_s((p_100 , p_100), (*p_2023->g_156)))) ^ ((VECTOR(int64_t, 16))(p_2023->g_373.x, 0x7B06354D3EF53E4CL, p_100, p_98, ((VECTOR(int64_t, 8))(0x0C808179ED193826L)), p_2023->g_264.s4, p_2023->g_576[7], 0L, 0x4F1279821241FA53L)).s8), l_1803))), GROUP_DIVERGE(0, 1))) & 0x7AB15CE35B0CE05EL) >= (-9L))))) , 1L) >= p_100), p_100, FAKE_DIVERGE(p_2023->local_2_offset, get_local_id(2), 10), 1UL, 0UL, 2UL)).s3 || p_98)) != l_1685.s0);
                        return l_1804;
                    }
                    return p_100;
                }
                return l_1795[1];
            }
            (*p_2023->g_652) |= (((*l_1819) = (((safe_add_func_int32_t_s_s(l_1685.s7, ((safe_unary_minus_func_uint64_t_u((l_1808 , (safe_mod_func_int64_t_s_s((safe_lshift_func_uint16_t_u_s((((((*l_1815) &= (GROUP_DIVERGE(1, 1) || (safe_lshift_func_int8_t_s_u(p_100, 5)))) , (p_100 >= (((((((VECTOR(uint16_t, 2))(0xB74BL, 0x8286L)).odd <= ((void*)0 != p_99)) , p_2023->g_5) != l_1815) , l_1816) != l_1817))) , l_1714) != (void*)0), (*p_2023->g_156))), p_98))))) | (**p_2023->g_1643)))) > (*****p_2023->g_1640)) && p_98)) == p_100);
            (*p_2023->g_173) = l_1714;
        }
    }
    (*p_2023->g_173) = (**p_2023->g_172);
    return p_100;
}


/* ------------------------------------------ */
/* 
 * reads : p_2023->g_28 p_2023->g_435 p_2023->g_652 p_2023->g_30 p_2023->g_494 p_2023->g_1179 p_2023->g_1220 p_2023->g_1019 p_2023->g_318 p_2023->g_264 p_2023->g_668 p_2023->g_402 p_2023->g_1312 p_2023->g_192 p_2023->g_1256 p_2023->g_156 p_2023->g_157 p_2023->g_687 p_2023->g_688 p_2023->g_1232 p_2023->g_126 p_2023->g_1295 p_2023->g_120 p_2023->g_1207 p_2023->g_344 p_2023->g_575 p_2023->g_665 p_2023->g_670 p_2023->g_1381 p_2023->g_314 p_2023->g_1230 p_2023->g_651 p_2023->g_420 p_2023->g_1425 p_2023->g_1231 p_2023->g_173 p_2023->g_5 p_2023->g_1254 p_2023->g_4 p_2023->g_172 p_2023->g_337 p_2023->g_617 p_2023->g_634 p_2023->g_1602 p_2023->g_1608 p_2023->g_244 p_2023->g_462
 * writes: p_2023->g_28 p_2023->g_30 p_2023->g_494 p_2023->g_314 p_2023->g_300 p_2023->g_6 p_2023->g_1312 p_2023->g_120 p_2023->g_318 p_2023->g_593 p_2023->g_576 p_2023->g_1220 p_2023->g_1231 p_2023->g_5 p_2023->g_244
 */
uint64_t * func_102(uint64_t  p_103, int32_t  p_104, int32_t  p_105, struct S0 * p_2023)
{ /* block id: 52 */
    uint16_t l_135[8][7][4] = {{{0x2818L,0x0456L,0UL,2UL},{0x2818L,0x0456L,0UL,2UL},{0x2818L,0x0456L,0UL,2UL},{0x2818L,0x0456L,0UL,2UL},{0x2818L,0x0456L,0UL,2UL},{0x2818L,0x0456L,0UL,2UL},{0x2818L,0x0456L,0UL,2UL}},{{0x2818L,0x0456L,0UL,2UL},{0x2818L,0x0456L,0UL,2UL},{0x2818L,0x0456L,0UL,2UL},{0x2818L,0x0456L,0UL,2UL},{0x2818L,0x0456L,0UL,2UL},{0x2818L,0x0456L,0UL,2UL},{0x2818L,0x0456L,0UL,2UL}},{{0x2818L,0x0456L,0UL,2UL},{0x2818L,0x0456L,0UL,2UL},{0x2818L,0x0456L,0UL,2UL},{0x2818L,0x0456L,0UL,2UL},{0x2818L,0x0456L,0UL,2UL},{0x2818L,0x0456L,0UL,2UL},{0x2818L,0x0456L,0UL,2UL}},{{0x2818L,0x0456L,0UL,2UL},{0x2818L,0x0456L,0UL,2UL},{0x2818L,0x0456L,0UL,2UL},{0x2818L,0x0456L,0UL,2UL},{0x2818L,0x0456L,0UL,2UL},{0x2818L,0x0456L,0UL,2UL},{0x2818L,0x0456L,0UL,2UL}},{{0x2818L,0x0456L,0UL,2UL},{0x2818L,0x0456L,0UL,2UL},{0x2818L,0x0456L,0UL,2UL},{0x2818L,0x0456L,0UL,2UL},{0x2818L,0x0456L,0UL,2UL},{0x2818L,0x0456L,0UL,2UL},{0x2818L,0x0456L,0UL,2UL}},{{0x2818L,0x0456L,0UL,2UL},{0x2818L,0x0456L,0UL,2UL},{0x2818L,0x0456L,0UL,2UL},{0x2818L,0x0456L,0UL,2UL},{0x2818L,0x0456L,0UL,2UL},{0x2818L,0x0456L,0UL,2UL},{0x2818L,0x0456L,0UL,2UL}},{{0x2818L,0x0456L,0UL,2UL},{0x2818L,0x0456L,0UL,2UL},{0x2818L,0x0456L,0UL,2UL},{0x2818L,0x0456L,0UL,2UL},{0x2818L,0x0456L,0UL,2UL},{0x2818L,0x0456L,0UL,2UL},{0x2818L,0x0456L,0UL,2UL}},{{0x2818L,0x0456L,0UL,2UL},{0x2818L,0x0456L,0UL,2UL},{0x2818L,0x0456L,0UL,2UL},{0x2818L,0x0456L,0UL,2UL},{0x2818L,0x0456L,0UL,2UL},{0x2818L,0x0456L,0UL,2UL},{0x2818L,0x0456L,0UL,2UL}}};
    int8_t ***l_159 = &p_2023->g_126;
    uint64_t *l_183 = (void*)0;
    int32_t l_217 = 0x52A20922L;
    uint32_t l_1205 = 0xFA9515BBL;
    uint64_t ***l_1233 = &p_2023->g_1193[6][3];
    VECTOR(int64_t, 8) l_1249 = (VECTOR(int64_t, 8))(0x4B891867BF6C216DL, (VECTOR(int64_t, 4))(0x4B891867BF6C216DL, (VECTOR(int64_t, 2))(0x4B891867BF6C216DL, 6L), 6L), 6L, 0x4B891867BF6C216DL, 6L);
    VECTOR(int64_t, 16) l_1251 = (VECTOR(int64_t, 16))(0x4C8CCE5A9536069CL, (VECTOR(int64_t, 4))(0x4C8CCE5A9536069CL, (VECTOR(int64_t, 2))(0x4C8CCE5A9536069CL, 1L), 1L), 1L, 0x4C8CCE5A9536069CL, 1L, (VECTOR(int64_t, 2))(0x4C8CCE5A9536069CL, 1L), (VECTOR(int64_t, 2))(0x4C8CCE5A9536069CL, 1L), 0x4C8CCE5A9536069CL, 1L, 0x4C8CCE5A9536069CL, 1L);
    VECTOR(int16_t, 2) l_1261 = (VECTOR(int16_t, 2))(0x4E13L, 1L);
    VECTOR(int16_t, 16) l_1268 = (VECTOR(int16_t, 16))(0x6FE3L, (VECTOR(int16_t, 4))(0x6FE3L, (VECTOR(int16_t, 2))(0x6FE3L, 1L), 1L), 1L, 0x6FE3L, 1L, (VECTOR(int16_t, 2))(0x6FE3L, 1L), (VECTOR(int16_t, 2))(0x6FE3L, 1L), 0x6FE3L, 1L, 0x6FE3L, 1L);
    VECTOR(uint8_t, 16) l_1306 = (VECTOR(uint8_t, 16))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 0x46L), 0x46L), 0x46L, 1UL, 0x46L, (VECTOR(uint8_t, 2))(1UL, 0x46L), (VECTOR(uint8_t, 2))(1UL, 0x46L), 1UL, 0x46L, 1UL, 0x46L);
    VECTOR(int16_t, 4) l_1307 = (VECTOR(int16_t, 4))(0x3F9BL, (VECTOR(int16_t, 2))(0x3F9BL, 0x6D9FL), 0x6D9FL);
    int8_t *l_1309 = &p_2023->g_318[0];
    uint64_t l_1325 = 18446744073709551609UL;
    VECTOR(int8_t, 8) l_1330 = (VECTOR(int8_t, 8))(0x58L, (VECTOR(int8_t, 4))(0x58L, (VECTOR(int8_t, 2))(0x58L, 0x60L), 0x60L), 0x60L, 0x58L, 0x60L);
    uint64_t l_1331 = 18446744073709551608UL;
    VECTOR(int8_t, 4) l_1332 = (VECTOR(int8_t, 4))((-7L), (VECTOR(int8_t, 2))((-7L), (-6L)), (-6L));
    uint8_t l_1337[7][6][6] = {{{255UL,0x64L,0x64L,255UL,0x2DL,0xD8L},{255UL,0x64L,0x64L,255UL,0x2DL,0xD8L},{255UL,0x64L,0x64L,255UL,0x2DL,0xD8L},{255UL,0x64L,0x64L,255UL,0x2DL,0xD8L},{255UL,0x64L,0x64L,255UL,0x2DL,0xD8L},{255UL,0x64L,0x64L,255UL,0x2DL,0xD8L}},{{255UL,0x64L,0x64L,255UL,0x2DL,0xD8L},{255UL,0x64L,0x64L,255UL,0x2DL,0xD8L},{255UL,0x64L,0x64L,255UL,0x2DL,0xD8L},{255UL,0x64L,0x64L,255UL,0x2DL,0xD8L},{255UL,0x64L,0x64L,255UL,0x2DL,0xD8L},{255UL,0x64L,0x64L,255UL,0x2DL,0xD8L}},{{255UL,0x64L,0x64L,255UL,0x2DL,0xD8L},{255UL,0x64L,0x64L,255UL,0x2DL,0xD8L},{255UL,0x64L,0x64L,255UL,0x2DL,0xD8L},{255UL,0x64L,0x64L,255UL,0x2DL,0xD8L},{255UL,0x64L,0x64L,255UL,0x2DL,0xD8L},{255UL,0x64L,0x64L,255UL,0x2DL,0xD8L}},{{255UL,0x64L,0x64L,255UL,0x2DL,0xD8L},{255UL,0x64L,0x64L,255UL,0x2DL,0xD8L},{255UL,0x64L,0x64L,255UL,0x2DL,0xD8L},{255UL,0x64L,0x64L,255UL,0x2DL,0xD8L},{255UL,0x64L,0x64L,255UL,0x2DL,0xD8L},{255UL,0x64L,0x64L,255UL,0x2DL,0xD8L}},{{255UL,0x64L,0x64L,255UL,0x2DL,0xD8L},{255UL,0x64L,0x64L,255UL,0x2DL,0xD8L},{255UL,0x64L,0x64L,255UL,0x2DL,0xD8L},{255UL,0x64L,0x64L,255UL,0x2DL,0xD8L},{255UL,0x64L,0x64L,255UL,0x2DL,0xD8L},{255UL,0x64L,0x64L,255UL,0x2DL,0xD8L}},{{255UL,0x64L,0x64L,255UL,0x2DL,0xD8L},{255UL,0x64L,0x64L,255UL,0x2DL,0xD8L},{255UL,0x64L,0x64L,255UL,0x2DL,0xD8L},{255UL,0x64L,0x64L,255UL,0x2DL,0xD8L},{255UL,0x64L,0x64L,255UL,0x2DL,0xD8L},{255UL,0x64L,0x64L,255UL,0x2DL,0xD8L}},{{255UL,0x64L,0x64L,255UL,0x2DL,0xD8L},{255UL,0x64L,0x64L,255UL,0x2DL,0xD8L},{255UL,0x64L,0x64L,255UL,0x2DL,0xD8L},{255UL,0x64L,0x64L,255UL,0x2DL,0xD8L},{255UL,0x64L,0x64L,255UL,0x2DL,0xD8L},{255UL,0x64L,0x64L,255UL,0x2DL,0xD8L}}};
    VECTOR(int16_t, 4) l_1342 = (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), (-5L)), (-5L));
    uint16_t *l_1349 = &p_2023->g_120;
    uint16_t *l_1362 = (void*)0;
    uint16_t *l_1363 = &l_135[1][2][2];
    int16_t **l_1379 = &p_2023->g_299;
    VECTOR(uint64_t, 16) l_1382 = (VECTOR(uint64_t, 16))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 2UL), 2UL), 2UL, 1UL, 2UL, (VECTOR(uint64_t, 2))(1UL, 2UL), (VECTOR(uint64_t, 2))(1UL, 2UL), 1UL, 2UL, 1UL, 2UL);
    VECTOR(int32_t, 4) l_1391 = (VECTOR(int32_t, 4))((-6L), (VECTOR(int32_t, 2))((-6L), 0x156646CBL), 0x156646CBL);
    uint32_t *l_1418 = &p_2023->g_346;
    uint16_t l_1440 = 0x49ABL;
    VECTOR(int8_t, 4) l_1481 = (VECTOR(int8_t, 4))(0x17L, (VECTOR(int8_t, 2))(0x17L, 0x21L), 0x21L);
    int16_t l_1607 = 0x054EL;
    int32_t l_1623 = (-1L);
    uint8_t *l_1630 = &l_1337[5][1][1];
    int i, j, k;
    for (p_2023->g_28 = 0; (p_2023->g_28 == 19); p_2023->g_28 = safe_add_func_int8_t_s_s(p_2023->g_28, 9))
    { /* block id: 55 */
        int32_t *l_133[5];
        int16_t l_134 = (-1L);
        int8_t *l_182 = &p_2023->g_27;
        VECTOR(uint64_t, 4) l_1229 = (VECTOR(uint64_t, 4))(18446744073709551612UL, (VECTOR(uint64_t, 2))(18446744073709551612UL, 18446744073709551615UL), 18446744073709551615UL);
        VECTOR(uint8_t, 2) l_1281 = (VECTOR(uint8_t, 2))(0xB7L, 249UL);
        VECTOR(uint8_t, 8) l_1283 = (VECTOR(uint8_t, 8))(0xA6L, (VECTOR(uint8_t, 4))(0xA6L, (VECTOR(uint8_t, 2))(0xA6L, 0xAEL), 0xAEL), 0xAEL, 0xA6L, 0xAEL);
        VECTOR(uint8_t, 8) l_1284 = (VECTOR(uint8_t, 8))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 251UL), 251UL), 251UL, 1UL, 251UL);
        VECTOR(int8_t, 2) l_1291 = (VECTOR(int8_t, 2))(5L, (-6L));
        VECTOR(int32_t, 2) l_1294 = (VECTOR(int32_t, 2))(0x3A7FDE53L, 0L);
        VECTOR(uint64_t, 16) l_1317 = (VECTOR(uint64_t, 16))(18446744073709551611UL, (VECTOR(uint64_t, 4))(18446744073709551611UL, (VECTOR(uint64_t, 2))(18446744073709551611UL, 18446744073709551615UL), 18446744073709551615UL), 18446744073709551615UL, 18446744073709551611UL, 18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551611UL, 18446744073709551615UL), (VECTOR(uint64_t, 2))(18446744073709551611UL, 18446744073709551615UL), 18446744073709551611UL, 18446744073709551615UL, 18446744073709551611UL, 18446744073709551615UL);
        int i;
        for (i = 0; i < 5; i++)
            l_133[i] = &p_2023->g_30;
        l_135[1][2][2]++;
        for (p_103 = 0; (p_103 <= 14); p_103 = safe_add_func_uint16_t_u_u(p_103, 8))
        { /* block id: 59 */
            int16_t *l_151 = &l_134;
            VECTOR(uint8_t, 8) l_158 = (VECTOR(uint8_t, 8))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 0x80L), 0x80L), 0x80L, 0UL, 0x80L);
            uint16_t *l_174 = (void*)0;
            uint16_t *l_175 = &l_135[0][0][0];
            uint16_t *l_180 = (void*)0;
            uint16_t *l_181 = &p_2023->g_120;
            int8_t ****l_1203 = &p_2023->g_411;
            uint64_t *l_1204 = &p_2023->g_314;
            int32_t l_1206 = 0x17C9EAFFL;
            int64_t *l_1218 = (void*)0;
            int64_t *l_1219 = &p_2023->g_494;
            VECTOR(uint64_t, 4) l_1228 = (VECTOR(uint64_t, 4))(0x717B21238504C663L, (VECTOR(uint64_t, 2))(0x717B21238504C663L, 0xA60D93CA7A762B59L), 0xA60D93CA7A762B59L);
            int16_t *l_1292 = &l_134;
            int8_t *l_1308 = (void*)0;
            int i;
            if (p_104)
                break;
            if ((safe_rshift_func_int16_t_s_u((((safe_mul_func_uint8_t_u_u(0x93L, (0x4460A3BB4AA2B9E0L == ((*l_1219) ^= (func_144((l_1206 |= ((safe_mul_func_int8_t_s_s((((*l_151) = 0x2AE0L) < 65526UL), p_103)) , p_103)), p_105, l_135[1][2][2], p_2023->g_435, p_2023) < 1UL))))) , (void*)0) == &p_103), 14)))
            { /* block id: 554 */
                uint32_t l_1236 = 1UL;
                VECTOR(int8_t, 4) l_1247 = (VECTOR(int8_t, 4))(0x01L, (VECTOR(int8_t, 2))(0x01L, 0x1EL), 0x1EL);
                VECTOR(int64_t, 2) l_1252 = (VECTOR(int64_t, 2))(0L, 0x2AB4264C8F97FB07L);
                int64_t *l_1267 = (void*)0;
                int32_t l_1273 = (-1L);
                VECTOR(uint8_t, 8) l_1282 = (VECTOR(uint8_t, 8))(0xF6L, (VECTOR(uint8_t, 4))(0xF6L, (VECTOR(uint8_t, 2))(0xF6L, 0UL), 0UL), 0UL, 0xF6L, 0UL);
                int16_t **l_1293 = &p_2023->g_299;
                int32_t *l_1296 = (void*)0;
                int32_t *l_1297 = (void*)0;
                int32_t *l_1298 = (void*)0;
                int8_t *****l_1299 = &l_1203;
                int8_t ****l_1301 = &p_2023->g_411;
                int8_t *****l_1300[3][2][1] = {{{&l_1301},{&l_1301}},{{&l_1301},{&l_1301}},{{&l_1301},{&l_1301}}};
                VECTOR(int16_t, 8) l_1303 = (VECTOR(int16_t, 8))(0x0545L, (VECTOR(int16_t, 4))(0x0545L, (VECTOR(int16_t, 2))(0x0545L, 0L), 0L), 0L, 0x0545L, 0L);
                int i, j, k;
                (*p_2023->g_652) &= ((p_2023->g_1179.y != p_2023->g_1220) ^ ((p_2023->g_1019.y <= (((((FAKE_DIVERGE(p_2023->global_0_offset, get_global_id(0), 10) ^ ((safe_sub_func_uint16_t_u_u((GROUP_DIVERGE(0, 1) ^ (((safe_lshift_func_int8_t_s_u((safe_mul_func_uint8_t_u_u(p_2023->g_318[0], p_2023->g_264.s5)), 4)) ^ (((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 4))(max(((VECTOR(uint16_t, 16))(p_2023->g_1227.s3623261537143777)).sc012, (uint16_t)p_2023->g_300))).hi)).lo & ((((*l_1204) = ((VECTOR(uint64_t, 8))(abs_diff(((VECTOR(uint64_t, 2))(l_1228.wz)).xyxxyyxx, ((VECTOR(uint64_t, 2))(add_sat(((VECTOR(uint64_t, 8))(l_1229.wyzzxwxw)).s27, ((VECTOR(uint64_t, 16))(mad_sat(((VECTOR(uint64_t, 8))(9UL, 0xEABAE9E38CCBC10AL, 18446744073709551606UL, 18446744073709551606UL, ((VECTOR(uint64_t, 2))(hadd(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 16))(p_2023->g_1230.s5004564540666711)).s50)), ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(p_2023->g_1231.s3181)).zxxyzwxx)).s15))), 0x2A1E9E774459880DL, 0xD4218D3102AD32A0L)).s1275747731237277, ((VECTOR(uint64_t, 2))(p_2023->g_1232.s75)).xyxyxxyyyxyxxyyx, ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(0x617A2F676934A49FL, (((void*)0 != l_1233) || ((safe_rshift_func_int8_t_s_u(l_1206, 0)) >= l_1236)), 0x9B6A8AE1285F5D55L, 0xCD2147161B9F3AF8L)), 18446744073709551615UL, l_1228.w, 0x83A900AE240E4CDCL, 1UL)).s0725606220034463))).s9d))).yxyyxxyy))).s6) == p_104) | 18446744073709551615UL))) & p_103)), p_103)) >= p_2023->g_668.s0)) , l_217) == 255UL) <= 5L) , p_103)) || FAKE_DIVERGE(p_2023->group_1_offset, get_group_id(1), 10)));
                for (p_2023->g_300 = 9; (p_2023->g_300 <= 7); p_2023->g_300--)
                { /* block id: 559 */
                    VECTOR(int64_t, 2) l_1250 = (VECTOR(int64_t, 2))(0x606F6E60E5CC2D04L, 0x141953CD7987BBBCL);
                    int32_t l_1272 = 0L;
                    int i;
                    if (p_103)
                    { /* block id: 560 */
                        uint32_t l_1255 = 0xBD64557DL;
                        VECTOR(uint16_t, 4) l_1262 = (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0xA416L), 0xA416L);
                        uint32_t *l_1271[8] = {&l_1236,&l_1236,&l_1236,&l_1236,&l_1236,&l_1236,&l_1236,&l_1236};
                        int i;
                        (*p_2023->g_652) = (l_1273 = (safe_add_func_uint16_t_u_u(p_104, ((safe_mod_func_uint8_t_u_u(((safe_sub_func_int64_t_s_s(((VECTOR(int64_t, 2))(hadd(((VECTOR(int64_t, 8))((safe_lshift_func_int8_t_s_s(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(safe_clamp_func(VECTOR(int8_t, 8),VECTOR(int8_t, 8),((VECTOR(int8_t, 4))(l_1247.ywxx)).xwzzxxyw, ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(1L, 0L)).yyxy)).xxxzywzw)).s36)), (-4L), 0x16L)).xxyywxzx, ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))((-9L), (-10L))), 0L, (-5L))).xwwwzyww))).s22)).even, 2)), ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))(p_2023->g_1248.xy)), 0x2C414A0A99308A7FL, ((VECTOR(int64_t, 4))(l_1249.s7067)), 0x294A7E7526CED77FL)).odd)), ((VECTOR(int64_t, 2))(0x0BFF03E3C12BF4C1L, 0x7C2C062215948990L)), 0x5F5A10248D73CCCFL)).s74, ((VECTOR(int64_t, 16))(0x37D9771AB1EDAECAL, ((VECTOR(int64_t, 2))(rotate(((VECTOR(int64_t, 2))(sub_sat(((VECTOR(int64_t, 16))(l_1250.xyyxxyxxyyyxxyyy)).s4c, ((VECTOR(int64_t, 8))(l_1251.s0b5eca01)).s14))), ((VECTOR(int64_t, 16))(mul_hi(((VECTOR(int64_t, 2))(l_1252.yx)).xxxxyyxyxxyxyyxy, ((VECTOR(int64_t, 8))(p_2023->g_1253.s0d0b16fd)).s0525674544066353))).sd4))), ((VECTOR(int64_t, 8))(p_2023->g_1254.wzxwwyyy)), l_1255, ((VECTOR(int64_t, 2))(p_2023->g_1256.xx)), 1L, 0x5F25E3C6178B9CCFL)).s57))).hi, (((safe_div_func_uint8_t_u_u(((safe_lshift_func_int16_t_s_u(((VECTOR(int16_t, 16))(l_1261.yyyxxyxyyxyyxyyx)).sf, ((VECTOR(uint16_t, 2))(l_1262.yw)).even)) , (safe_rshift_func_uint16_t_u_u(((p_103 != (safe_sub_func_int64_t_s_s((l_1267 == &p_2023->g_494), (1L | (((VECTOR(int16_t, 8))(clz(((VECTOR(int16_t, 2))(max(((VECTOR(int16_t, 16))(0x605CL, ((VECTOR(int16_t, 8))(min(((VECTOR(int16_t, 16))(mad_sat(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 4),((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(l_1268.s71)), (safe_mul_func_int8_t_s_s(((l_1272 = p_104) | ((p_105 || l_1252.y) & l_1228.z)), l_158.s6)), 0x59CBL, (*p_2023->g_299), (-8L), 0x16EDL, 0L)).odd, ((VECTOR(int16_t, 4))((-10L))), ((VECTOR(int16_t, 4))(0x7A82L))))).zwwyxzyy)).hi)), l_158.s0, l_1272, 0x0701L, (-1L))).s7006441617265534, ((VECTOR(int16_t, 16))((-1L))), ((VECTOR(int16_t, 16))(0x5497L))))).even, (int16_t)0x2033L))), 0x3CD4L, 0x51EEL, 0x20A9L, p_105, ((VECTOR(int16_t, 2))((-5L))), (-6L))).s75, ((VECTOR(int16_t, 2))(9L))))).xyxyxyyy))).s4 < 0L))))) ^ l_1262.z), FAKE_DIVERGE(p_2023->group_1_offset, get_group_id(1), 10)))), p_105)) > p_105) , 0L))) < p_105), p_2023->g_402.sc)) & p_105))));
                    }
                    else
                    { /* block id: 564 */
                        uint8_t *l_1278 = &p_2023->g_244[8][7][1];
                        l_1272 = (((VECTOR(int16_t, 4))(safe_clamp_func(VECTOR(int16_t, 4),VECTOR(int16_t, 4),((VECTOR(int16_t, 8))(safe_clamp_func(VECTOR(int16_t, 8),int16_t,((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(0x5C34L, 0x5095L, 0x0394L, 0x7FC2L, 1L, ((VECTOR(int16_t, 2))(0L, (-1L))), 0x7B1AL)), (safe_div_func_int8_t_s_s((safe_add_func_uint8_t_u_u(((*l_1278) ^= ((&p_2023->g_494 != (void*)0) > (p_105 <= (((*l_1203) = (void*)0) == &p_2023->g_126)))), (((p_103 , l_1278) != ((0x0DL ^ ((*l_182) = (-6L))) , l_1278)) && l_135[1][6][2]))), p_103)), 1L, (*p_2023->g_156), 0L, 0x302FL, p_105, 0L, (-1L))).hi, (int16_t)1L, (int16_t)(*p_2023->g_299)))).even, ((VECTOR(int16_t, 4))(0x01A2L)), ((VECTOR(int16_t, 4))((-4L)))))).w & 0x6291L);
                    }
                    (*p_2023->g_652) &= ((VECTOR(int32_t, 2))(0x1C4E5848L, 7L)).odd;
                }
                (*p_2023->g_652) ^= (safe_lshift_func_uint8_t_u_u(((VECTOR(uint8_t, 16))(sub_sat(((VECTOR(uint8_t, 16))(mad_sat(((VECTOR(uint8_t, 16))(max(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(mad_hi(((VECTOR(uint8_t, 4))(l_1228.z, 254UL, 1UL, 0x9EL)).hi, ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(l_1281.yyyyxyyx)).s21)), ((VECTOR(uint8_t, 2))(1UL, 0xB2L))))), 2UL, ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(246UL, 251UL)), 8UL, 0x7BL)), 0x8DL)).s4632505537460563, ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 16))(l_1282.s1464531471453551)).sd104)).wzzywzyzywxzwyzw))), ((VECTOR(uint8_t, 4))(l_1283.s0163)).xxyxzwyyxyzywwxz, ((VECTOR(uint8_t, 2))(l_1284.s24)).yyxyxxyxyxyyxyyy))), ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(mad_sat(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(safe_clamp_func(VECTOR(uint8_t, 2),VECTOR(uint8_t, 2),((VECTOR(uint8_t, 4))(0xBFL, 0xFBL, 251UL, 0x31L)).odd, ((VECTOR(uint8_t, 8))(p_2023->g_1285.s43575412)).s25, ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 16))(p_2023->g_1286.xxxyyyxyxyxxyxxy)).odd)).s64))).xyyyyxyx)).s63, ((VECTOR(uint8_t, 4))(mul_hi(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 8))(((safe_add_func_uint64_t_u_u(GROUP_DIVERGE(0, 1), (safe_mul_func_int8_t_s_s(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(l_1291.xx)).xxxyxxyy)).s4, (((*l_1293) = l_1292) != l_151))))) < ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 16))((((p_105 = ((VECTOR(int32_t, 4))(mul_hi(((VECTOR(int32_t, 2))(0x43A2E083L, 5L)).yxxy, ((VECTOR(int32_t, 2))(rotate(((VECTOR(int32_t, 2))(l_1294.yx)), ((VECTOR(int32_t, 4))((-2L), ((VECTOR(int32_t, 2))(p_2023->g_1295.yx)), 0L)).odd))).yxyx))).z) , ((p_2023->g_1302[5] = ((*l_1299) = &p_2023->g_411)) != (void*)0)) >= ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(clz(((VECTOR(int32_t, 4))(1L, 0x2F8B35BBL, (-1L), 0L)).zxyyxzwy))).odd)).y), ((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))(min(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 16))(safe_clamp_func(VECTOR(int16_t, 16),int16_t,((VECTOR(int16_t, 2))(sub_sat(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(2L, 1L)), 1L, (-9L), ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(0x4B51L, 7L)).yyyy)))).s17, ((VECTOR(int16_t, 2))(l_1303.s77))))).xxyxyyxxyxxxxyyy, (int16_t)(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))((((safe_add_func_int8_t_s_s((((VECTOR(uint8_t, 8))(safe_clamp_func(VECTOR(uint8_t, 8),uint8_t,((VECTOR(uint8_t, 8))(l_1306.s8b5679f9)), (uint8_t)(((VECTOR(int16_t, 2))(l_1307.yy)).odd >= ((l_1308 == ((((*l_151) = ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(0L, 0x1C57L, (-4L), 0x0695L)), (*p_2023->g_156), p_105, 0L, 1L)).s4) > (l_1303.s3 > (-1L))) , l_1309)) && l_135[1][2][2])), (uint8_t)0UL))).s7 || 0UL), 0L)) != 0x34E5L) == 8UL), (-2L), 0x267F7769L, ((VECTOR(int32_t, 4))(0x2879AC22L)), (-1L))).s61)).even ^ 0L), (int16_t)(-9L)))).even)), (int16_t)(*p_2023->g_156)))).s42)))), (*p_2023->g_156), l_1252.y, p_103, ((VECTOR(int16_t, 4))(0x7356L)), 0x06FAL, (-3L), 0x01F0L, ((VECTOR(int16_t, 2))(8L)), 0x4E17L)).s5, ((VECTOR(int16_t, 2))(0x401CL)), (-1L), 0x5273L, (*p_2023->g_156), (-1L), 0x562FL)).s7), p_2023->g_264.s0, ((VECTOR(uint8_t, 2))(6UL)), 251UL, p_103, 247UL, 0x1AL)))).hi, ((VECTOR(uint8_t, 4))(6UL))))).even, ((VECTOR(uint8_t, 2))(0x09L))))).xyyy)).ywzwzxxxyzzxyyyz))).s6, p_103));
            }
            else
            { /* block id: 578 */
                for (p_2023->g_6 = 25; (p_2023->g_6 == (-4)); --p_2023->g_6)
                { /* block id: 581 */
                    uint8_t l_1324 = 247UL;
                    p_2023->g_1312[2]++;
                    if (l_1306.s4)
                        continue;
                    for (p_2023->g_120 = (-3); (p_2023->g_120 > 31); p_2023->g_120 = safe_add_func_uint16_t_u_u(p_2023->g_120, 6))
                    { /* block id: 586 */
                        (*p_2023->g_652) = 8L;
                        (*p_2023->g_652) ^= (((void*)0 != p_2023->g_192[2][4][1]) , (p_105 ^ (((((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 8))(l_1317.s959c5366)).s30)).odd <= ((safe_add_func_uint16_t_u_u((65535UL ^ ((safe_rshift_func_int16_t_s_s((((((safe_add_func_int64_t_s_s(0x58730DE92701026DL, (((0x08L > ((*l_1309) = (0xD71B73CCA24B7A3CL || (p_103 <= (18446744073709551609UL != GROUP_DIVERGE(0, 1)))))) , p_105) & 0xD5ED81B1L))) ^ l_1228.z) | p_2023->g_1256.x) <= 0x263CDBE6B7AB9DB8L) != 0L), (*p_2023->g_156))) , p_104)), 0x1A7EL)) < p_103)) <= l_1324) , p_105)));
                    }
                }
            }
        }
        l_1325--;
    }
    l_217 = ((p_104 >= ((safe_lshift_func_int8_t_s_u(((VECTOR(int8_t, 4))(l_1330.s6366)).w, l_1331)) > ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))(l_1332.xwxwyzwywwwyzwwz)).lo)).s5)) & ((!(safe_lshift_func_int8_t_s_s(((((l_1268.s9 <= (safe_div_func_int32_t_s_s((p_104 == ((l_1337[5][1][1] , l_183) != (*p_2023->g_687))), (l_1307.x || ((((safe_sub_func_uint64_t_u_u(0xD9B260F9AC95C8B1L, p_2023->g_1232.s5)) != GROUP_DIVERGE(1, 1)) < 0x592BL) < l_1268.s9))))) ^ p_105) , (*l_159)) == (*l_159)), l_1268.s4))) && (-1L)));
    if ((safe_mod_func_uint64_t_u_u((p_2023->g_1295.x || (((((VECTOR(int16_t, 8))(max(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(l_1342.xzxzxyyw)), 1L, 0x3E4AL, (safe_add_func_uint32_t_u_u((((safe_lshift_func_uint8_t_u_u(GROUP_DIVERGE(1, 1), 4)) > (+((((p_103 >= (((safe_lshift_func_uint16_t_u_s((--(*l_1349)), ((((p_103 , p_104) == (safe_mul_func_int16_t_s_s((+(((!(0x5037E7C9L | (p_103 & (safe_div_func_int32_t_s_s((safe_add_func_int8_t_s_s((~(safe_add_func_int64_t_s_s((l_217 = p_103), (safe_lshift_func_uint16_t_u_u(((*l_1363) = (((VECTOR(uint64_t, 4))(upsample(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 2))(min(((VECTOR(uint32_t, 4))(abs_diff(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 2))(rhadd(((VECTOR(uint32_t, 8))(((p_2023->g_1207.x , l_1268.sc) != l_1337[3][2][2]), 4294967294UL, 0x9A400CA6L, 4294967292UL, ((VECTOR(uint32_t, 2))(0xFD774676L)), 1UL, 1UL)).s75, ((VECTOR(uint32_t, 2))(0UL))))))), ((VECTOR(uint32_t, 4))(0x68495489L)), ((VECTOR(uint32_t, 8))(0xC9A54923L)), 0UL, 0UL)).s7096)).odd)), ((VECTOR(uint32_t, 4))(0UL)), ((VECTOR(uint32_t, 4))(0x344F1B5FL)), 0xD7F119D8L, FAKE_DIVERGE(p_2023->global_0_offset, get_global_id(0), 10), p_2023->g_344.s5, 0x93DC1208L, 6UL, 4294967286UL)).sda27, ((VECTOR(uint32_t, 4))(0x04189048L))))).hi, (uint32_t)p_103))))).yxxy, ((VECTOR(uint32_t, 4))(0x309F6131L))))).z < p_103)), 2))))), FAKE_DIVERGE(p_2023->global_2_offset, get_global_id(2), 10))), p_104))))) < p_104) , (*p_2023->g_156))), GROUP_DIVERGE(1, 1)))) && GROUP_DIVERGE(0, 1)) == 0UL))) , p_2023->g_575.s3) , l_1268.sb)) > 0x3FBFL) != 9UL) != l_1268.s2))) >= l_1205), p_105)), p_105, p_105, (-4L), 0x48E3L, 0x7C2AL)).odd, (int16_t)(*p_2023->g_156)))).s7 != p_104) , l_1332.y) > l_1330.s2)), p_2023->g_665.s9)))
    { /* block id: 600 */
        uint16_t l_1374 = 0x55DCL;
        int16_t *l_1387 = (void*)0;
        int32_t l_1400 = 0x4265C3A3L;
        uint8_t l_1402 = 0x36L;
        uint16_t **l_1412 = &l_1349;
        VECTOR(uint32_t, 2) l_1439 = (VECTOR(uint32_t, 2))(2UL, 8UL);
        int32_t l_1446 = (-1L);
        int32_t l_1452 = 0x4310E0CDL;
        int32_t l_1455[10][8] = {{0x34154514L,0L,0x34154514L,0x34154514L,0L,0x34154514L,0x34154514L,0L},{0x34154514L,0L,0x34154514L,0x34154514L,0L,0x34154514L,0x34154514L,0L},{0x34154514L,0L,0x34154514L,0x34154514L,0L,0x34154514L,0x34154514L,0L},{0x34154514L,0L,0x34154514L,0x34154514L,0L,0x34154514L,0x34154514L,0L},{0x34154514L,0L,0x34154514L,0x34154514L,0L,0x34154514L,0x34154514L,0L},{0x34154514L,0L,0x34154514L,0x34154514L,0L,0x34154514L,0x34154514L,0L},{0x34154514L,0L,0x34154514L,0x34154514L,0L,0x34154514L,0x34154514L,0L},{0x34154514L,0L,0x34154514L,0x34154514L,0L,0x34154514L,0x34154514L,0L},{0x34154514L,0L,0x34154514L,0x34154514L,0L,0x34154514L,0x34154514L,0L},{0x34154514L,0L,0x34154514L,0x34154514L,0L,0x34154514L,0x34154514L,0L}};
        int16_t l_1467 = 0x43AEL;
        int8_t *****l_1484[7] = {&p_2023->g_1302[5],&p_2023->g_1302[5],&p_2023->g_1302[5],&p_2023->g_1302[5],&p_2023->g_1302[5],&p_2023->g_1302[5],&p_2023->g_1302[5]};
        VECTOR(uint64_t, 8) l_1551 = (VECTOR(uint64_t, 8))(0x8EC13E069E3FD3AFL, (VECTOR(uint64_t, 4))(0x8EC13E069E3FD3AFL, (VECTOR(uint64_t, 2))(0x8EC13E069E3FD3AFL, 0x75D8A9DE023FA2D6L), 0x75D8A9DE023FA2D6L), 0x75D8A9DE023FA2D6L, 0x8EC13E069E3FD3AFL, 0x75D8A9DE023FA2D6L);
        VECTOR(int64_t, 4) l_1564 = (VECTOR(int64_t, 4))(0x19BED4E85AEFBD7DL, (VECTOR(int64_t, 2))(0x19BED4E85AEFBD7DL, 0x21F7FF19A2E4DD0DL), 0x21F7FF19A2E4DD0DL);
        uint32_t **l_1592 = &p_2023->g_493;
        uint64_t *l_1595[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        VECTOR(int32_t, 2) l_1603 = (VECTOR(int32_t, 2))(0x684A6C7CL, (-1L));
        VECTOR(int32_t, 4) l_1604 = (VECTOR(int32_t, 4))(9L, (VECTOR(int32_t, 2))(9L, (-9L)), (-9L));
        VECTOR(int32_t, 4) l_1613 = (VECTOR(int32_t, 4))(0x0969D7B6L, (VECTOR(int32_t, 2))(0x0969D7B6L, 1L), 1L);
        int i, j;
        for (p_105 = 0; (p_105 <= 3); p_105 = safe_add_func_uint16_t_u_u(p_105, 1))
        { /* block id: 603 */
            int32_t *l_1366 = (void*)0;
            int32_t *l_1367 = (void*)0;
            int32_t *l_1368 = &p_2023->g_30;
            int32_t *l_1369 = (void*)0;
            int32_t *l_1370 = (void*)0;
            int32_t *l_1371 = (void*)0;
            int32_t *l_1372 = (void*)0;
            int32_t *l_1373 = &l_217;
            int16_t *l_1388 = (void*)0;
            int32_t l_1399 = 0x423E2059L;
            int32_t l_1401 = 1L;
            VECTOR(uint32_t, 8) l_1405 = (VECTOR(uint32_t, 8))(0x9EDC84A7L, (VECTOR(uint32_t, 4))(0x9EDC84A7L, (VECTOR(uint32_t, 2))(0x9EDC84A7L, 6UL), 6UL), 6UL, 0x9EDC84A7L, 6UL);
            uint64_t ***l_1413 = &p_2023->g_1193[2][3];
            uint64_t *l_1414 = (void*)0;
            uint64_t ***l_1416 = &p_2023->g_1193[7][3];
            int32_t l_1445 = 0L;
            int32_t l_1447 = 0L;
            int32_t l_1458 = (-6L);
            int32_t l_1459 = 0x7A992444L;
            int32_t l_1462 = (-4L);
            int32_t l_1463 = 6L;
            int32_t l_1465 = 0x3E796885L;
            int32_t l_1466 = 0x2E375C98L;
            int32_t l_1470[10] = {0x635B182AL,0x12B462DAL,(-10L),0x12B462DAL,0x635B182AL,0x635B182AL,0x12B462DAL,(-10L),0x12B462DAL,0x635B182AL};
            int i;
            l_1374++;
            l_217 = ((((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(hadd(((VECTOR(uint8_t, 16))(7UL, p_2023->g_670.s6, ((safe_add_func_int32_t_s_s(((void*)0 != l_1379), ((safe_unary_minus_func_uint64_t_u((+((VECTOR(uint64_t, 16))(rotate(((VECTOR(uint64_t, 16))(p_2023->g_1381.yyyxxyyyxxxyxxyy)), ((VECTOR(uint64_t, 8))(l_1382.sa6b9e180)).s6474243235733536))).sf))) || ((p_2023->g_593 = p_103) , (safe_sub_func_int64_t_s_s(p_103, (*l_1368))))))) , ((((safe_rshift_func_int16_t_s_s(((l_1388 = l_1387) == ((p_103 , (safe_lshift_func_uint16_t_u_s(0x1F93L, p_105))) , &p_2023->g_157)), 1)) != 3UL) & 0x75L) | p_105)), 0xF6L, ((VECTOR(uint8_t, 8))(0UL)), ((VECTOR(uint8_t, 4))(0xFEL)))).s31, ((VECTOR(uint8_t, 2))(2UL))))).xxxyyxyx)))).s7 ^ 0UL) >= l_1374);
            if (((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(l_1391.wxwyzxwwzxxwyxzw)))).sd)
            { /* block id: 608 */
                int32_t *l_1392 = &l_217;
                int32_t *l_1393 = (void*)0;
                int32_t *l_1394 = &p_2023->g_30;
                int32_t *l_1395 = (void*)0;
                int32_t *l_1396 = &l_217;
                int32_t *l_1397 = (void*)0;
                int32_t *l_1398[5][6] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
                uint32_t *l_1410 = (void*)0;
                uint32_t *l_1411 = &p_2023->g_576[4];
                uint64_t ****l_1415[5][8][6] = {{{&l_1233,&l_1233,&l_1233,(void*)0,&l_1233,&l_1233},{&l_1233,&l_1233,&l_1233,(void*)0,&l_1233,&l_1233},{&l_1233,&l_1233,&l_1233,(void*)0,&l_1233,&l_1233},{&l_1233,&l_1233,&l_1233,(void*)0,&l_1233,&l_1233},{&l_1233,&l_1233,&l_1233,(void*)0,&l_1233,&l_1233},{&l_1233,&l_1233,&l_1233,(void*)0,&l_1233,&l_1233},{&l_1233,&l_1233,&l_1233,(void*)0,&l_1233,&l_1233},{&l_1233,&l_1233,&l_1233,(void*)0,&l_1233,&l_1233}},{{&l_1233,&l_1233,&l_1233,(void*)0,&l_1233,&l_1233},{&l_1233,&l_1233,&l_1233,(void*)0,&l_1233,&l_1233},{&l_1233,&l_1233,&l_1233,(void*)0,&l_1233,&l_1233},{&l_1233,&l_1233,&l_1233,(void*)0,&l_1233,&l_1233},{&l_1233,&l_1233,&l_1233,(void*)0,&l_1233,&l_1233},{&l_1233,&l_1233,&l_1233,(void*)0,&l_1233,&l_1233},{&l_1233,&l_1233,&l_1233,(void*)0,&l_1233,&l_1233},{&l_1233,&l_1233,&l_1233,(void*)0,&l_1233,&l_1233}},{{&l_1233,&l_1233,&l_1233,(void*)0,&l_1233,&l_1233},{&l_1233,&l_1233,&l_1233,(void*)0,&l_1233,&l_1233},{&l_1233,&l_1233,&l_1233,(void*)0,&l_1233,&l_1233},{&l_1233,&l_1233,&l_1233,(void*)0,&l_1233,&l_1233},{&l_1233,&l_1233,&l_1233,(void*)0,&l_1233,&l_1233},{&l_1233,&l_1233,&l_1233,(void*)0,&l_1233,&l_1233},{&l_1233,&l_1233,&l_1233,(void*)0,&l_1233,&l_1233},{&l_1233,&l_1233,&l_1233,(void*)0,&l_1233,&l_1233}},{{&l_1233,&l_1233,&l_1233,(void*)0,&l_1233,&l_1233},{&l_1233,&l_1233,&l_1233,(void*)0,&l_1233,&l_1233},{&l_1233,&l_1233,&l_1233,(void*)0,&l_1233,&l_1233},{&l_1233,&l_1233,&l_1233,(void*)0,&l_1233,&l_1233},{&l_1233,&l_1233,&l_1233,(void*)0,&l_1233,&l_1233},{&l_1233,&l_1233,&l_1233,(void*)0,&l_1233,&l_1233},{&l_1233,&l_1233,&l_1233,(void*)0,&l_1233,&l_1233},{&l_1233,&l_1233,&l_1233,(void*)0,&l_1233,&l_1233}},{{&l_1233,&l_1233,&l_1233,(void*)0,&l_1233,&l_1233},{&l_1233,&l_1233,&l_1233,(void*)0,&l_1233,&l_1233},{&l_1233,&l_1233,&l_1233,(void*)0,&l_1233,&l_1233},{&l_1233,&l_1233,&l_1233,(void*)0,&l_1233,&l_1233},{&l_1233,&l_1233,&l_1233,(void*)0,&l_1233,&l_1233},{&l_1233,&l_1233,&l_1233,(void*)0,&l_1233,&l_1233},{&l_1233,&l_1233,&l_1233,(void*)0,&l_1233,&l_1233},{&l_1233,&l_1233,&l_1233,(void*)0,&l_1233,&l_1233}}};
                VECTOR(int8_t, 16) l_1424 = (VECTOR(int8_t, 16))(0x12L, (VECTOR(int8_t, 4))(0x12L, (VECTOR(int8_t, 2))(0x12L, 0x3CL), 0x3CL), 0x3CL, 0x12L, 0x3CL, (VECTOR(int8_t, 2))(0x12L, 0x3CL), (VECTOR(int8_t, 2))(0x12L, 0x3CL), 0x12L, 0x3CL, 0x12L, 0x3CL);
                uint64_t l_1474 = 0xDCD4A3ABA63D62A5L;
                int i, j, k;
                l_1402++;
                if ((((VECTOR(uint32_t, 16))(l_1405.s5237771240031410)).s5 ^ (safe_mod_func_int16_t_s_s(((safe_div_func_uint8_t_u_u((((*l_1411) = p_2023->g_314) | ((((((void*)0 != l_1412) , (l_1413 = &p_2023->g_1193[2][2])) != (((l_1337[1][4][4] , (l_183 = l_1414)) == &l_1331) , (l_1416 = &p_2023->g_1193[5][1]))) < (0x0189F358D40FCF54L < l_1306.se)) ^ p_2023->g_1230.s7)), FAKE_DIVERGE(p_2023->local_2_offset, get_local_id(2), 10))) , (-1L)), (*p_2023->g_156)))))
                { /* block id: 614 */
                    uint16_t l_1417 = 0x6B8FL;
                    int32_t l_1442 = (-1L);
                    int32_t l_1448 = 0x663EF6CEL;
                    int32_t l_1449 = 6L;
                    int32_t l_1456 = 7L;
                    int32_t l_1457 = 0x37C44FF8L;
                    int32_t l_1460[10][9] = {{0x4EBA49EBL,1L,0x222A76FAL,1L,0x4EBA49EBL,0x4EBA49EBL,1L,0x222A76FAL,1L},{0x4EBA49EBL,1L,0x222A76FAL,1L,0x4EBA49EBL,0x4EBA49EBL,1L,0x222A76FAL,1L},{0x4EBA49EBL,1L,0x222A76FAL,1L,0x4EBA49EBL,0x4EBA49EBL,1L,0x222A76FAL,1L},{0x4EBA49EBL,1L,0x222A76FAL,1L,0x4EBA49EBL,0x4EBA49EBL,1L,0x222A76FAL,1L},{0x4EBA49EBL,1L,0x222A76FAL,1L,0x4EBA49EBL,0x4EBA49EBL,1L,0x222A76FAL,1L},{0x4EBA49EBL,1L,0x222A76FAL,1L,0x4EBA49EBL,0x4EBA49EBL,1L,0x222A76FAL,1L},{0x4EBA49EBL,1L,0x222A76FAL,1L,0x4EBA49EBL,0x4EBA49EBL,1L,0x222A76FAL,1L},{0x4EBA49EBL,1L,0x222A76FAL,1L,0x4EBA49EBL,0x4EBA49EBL,1L,0x222A76FAL,1L},{0x4EBA49EBL,1L,0x222A76FAL,1L,0x4EBA49EBL,0x4EBA49EBL,1L,0x222A76FAL,1L},{0x4EBA49EBL,1L,0x222A76FAL,1L,0x4EBA49EBL,0x4EBA49EBL,1L,0x222A76FAL,1L}};
                    int i, j;
                    l_1417 = ((*l_1392) = (p_104 , ((**p_2023->g_651) = 0x018D0D96L)));
                    (*l_1373) = (p_2023->g_420.z , (l_1418 == &p_2023->g_346));
                    for (p_2023->g_1220 = (-17); (p_2023->g_1220 != 23); p_2023->g_1220++)
                    { /* block id: 621 */
                        uint32_t l_1436 = 0xD557196CL;
                        uint64_t *l_1437[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
                        int64_t *l_1438 = &p_2023->g_28;
                        int32_t *l_1441 = (void*)0;
                        int32_t l_1443 = (-3L);
                        int32_t l_1444 = (-6L);
                        int32_t l_1450 = (-1L);
                        int32_t l_1451 = 0L;
                        int32_t l_1453 = 0L;
                        int32_t l_1454 = 1L;
                        int32_t l_1461 = 0x71C5FA26L;
                        int32_t l_1464 = 1L;
                        int32_t l_1468 = (-4L);
                        int32_t l_1469 = 0x73FE1931L;
                        int32_t l_1471 = 0x630299C6L;
                        int32_t l_1472 = 0x03B5352AL;
                        int32_t l_1473 = 0x275DE09AL;
                        int i;
                        (*l_1392) = (~(safe_mod_func_uint64_t_u_u(FAKE_DIVERGE(p_2023->local_2_offset, get_local_id(2), 10), (safe_unary_minus_func_uint32_t_u((((255UL >= ((VECTOR(int8_t, 8))(add_sat(((VECTOR(int8_t, 2))(l_1424.sb8)).xyyxxyyy, ((VECTOR(int8_t, 2))(p_2023->g_1425.xx)).yxyxyyyy))).s0) | (l_1374 != ((safe_div_func_int16_t_s_s((((safe_lshift_func_uint16_t_u_u(((((*l_1368) = ((((safe_sub_func_int64_t_s_s(((*l_1438) &= ((p_103 <= (safe_add_func_uint64_t_u_u((((p_103 < (*p_2023->g_652)) >= (safe_lshift_func_int16_t_s_s((0x5BFFDADD3192C682L > (p_2023->g_1231.s5 |= l_1436)), (l_1391.z = 0L)))) | (p_103 ^ GROUP_DIVERGE(1, 1))), p_104))) || (*p_2023->g_652))), p_104)) , l_1436) | l_1330.s0) , l_1439.x)) , l_1440) && p_103), p_103)) | 0x2480DEEAL) == l_1400), (-1L))) != p_105))) < 1UL))))));
                        l_1441 = (*p_2023->g_173);
                        --l_1474;
                    }
                }
                else
                { /* block id: 630 */
                    int8_t ******l_1485 = &l_1484[4];
                    int32_t l_1492 = 0x63BD7FBDL;
                    (*l_1392) |= 5L;
                    if (((safe_sub_func_uint64_t_u_u((safe_mul_func_int8_t_s_s(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 2))(l_1481.xz)))), 0x57L, 0x5DL)).wzwwzyzy)).odd)).z, ((void*)0 == &p_2023->g_411))), p_105)) || (safe_add_func_uint8_t_u_u((p_105 > ((((*l_1485) = l_1484[6]) != (void*)0) > (((*l_1368) = ((safe_lshift_func_int8_t_s_u((((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(safe_clamp_func(VECTOR(int16_t, 16),int16_t,((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))((safe_lshift_func_int16_t_s_s(((*l_1396) || p_104), ((safe_add_func_int64_t_s_s(p_2023->g_28, p_2023->g_1254.z)) | p_103))), 0x7106L, 0L, 1L)), p_104, (*p_2023->g_156), ((VECTOR(int16_t, 2))(0x65B5L)), ((VECTOR(int16_t, 4))(0x2C28L)), p_104, p_103, 1L, 1L)), (int16_t)(*l_1396), (int16_t)0x2546L))).s25)).hi < l_1492), 5)) , (*p_2023->g_652))) != l_1400))), p_105))))
                    { /* block id: 634 */
                        (**p_2023->g_172) = ((safe_mod_func_int32_t_s_s(p_103, (((safe_add_func_int16_t_s_s(((1UL < l_1439.x) ^ 0x389E05425D318C86L), ((*l_1363) = 0x69E9L))) != l_1492) ^ l_1492))) , (*p_2023->g_4));
                    }
                    else
                    { /* block id: 637 */
                        (*p_2023->g_173) = &l_1492;
                    }
                    return &p_2023->g_314;
                }
            }
            else
            { /* block id: 642 */
                int32_t **l_1497 = &l_1367;
                (*l_1497) = ((*p_2023->g_173) = (*p_2023->g_173));
            }
            for (p_2023->g_314 = 0; (p_2023->g_314 == 12); ++p_2023->g_314)
            { /* block id: 648 */
                int i, j;
                barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                p_2023->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 15)), permutations[(safe_mod_func_uint32_t_u_u((safe_mod_func_uint64_t_u_u((p_103 , l_1439.y), p_104)), 10))][(safe_mod_func_uint32_t_u_u(p_2023->tid, 15))]));
                if ((atomic_inc(&p_2023->l_atomic_input[8]) == 7))
                { /* block id: 653 */
                    int32_t l_1502 = 0x452838DBL;
                    int32_t l_1503 = 1L;
                    int32_t l_1504 = (-1L);
                    int64_t l_1505 = 0x7AFC30A9AD12EED0L;
                    int32_t l_1506[4] = {0L,0L,0L,0L};
                    int32_t l_1507 = 0L;
                    int32_t l_1508 = 0x5F84673BL;
                    uint32_t l_1509 = 0x4EBB57F7L;
                    uint32_t l_1512 = 4294967295UL;
                    VECTOR(int32_t, 2) l_1513 = (VECTOR(int32_t, 2))(1L, 0x76F4B717L);
                    VECTOR(int32_t, 16) l_1514 = (VECTOR(int32_t, 16))(9L, (VECTOR(int32_t, 4))(9L, (VECTOR(int32_t, 2))(9L, 0L), 0L), 0L, 9L, 0L, (VECTOR(int32_t, 2))(9L, 0L), (VECTOR(int32_t, 2))(9L, 0L), 9L, 0L, 9L, 0L);
                    VECTOR(int32_t, 2) l_1515 = (VECTOR(int32_t, 2))(0x15FB494DL, (-1L));
                    VECTOR(int32_t, 4) l_1516 = (VECTOR(int32_t, 4))(3L, (VECTOR(int32_t, 2))(3L, (-3L)), (-3L));
                    VECTOR(int32_t, 2) l_1517 = (VECTOR(int32_t, 2))(4L, 0x7BE0A487L);
                    int8_t l_1518 = 8L;
                    uint32_t l_1519 = 0xCD7FC757L;
                    uint32_t l_1520 = 4294967290UL;
                    VECTOR(int32_t, 2) l_1521 = (VECTOR(int32_t, 2))(0x3706A67CL, 1L);
                    uint32_t l_1522 = 0xE062FF41L;
                    uint16_t l_1523[4][8][7] = {{{0x379DL,5UL,0x2F60L,2UL,0x379DL,65528UL,5UL},{0x379DL,5UL,0x2F60L,2UL,0x379DL,65528UL,5UL},{0x379DL,5UL,0x2F60L,2UL,0x379DL,65528UL,5UL},{0x379DL,5UL,0x2F60L,2UL,0x379DL,65528UL,5UL},{0x379DL,5UL,0x2F60L,2UL,0x379DL,65528UL,5UL},{0x379DL,5UL,0x2F60L,2UL,0x379DL,65528UL,5UL},{0x379DL,5UL,0x2F60L,2UL,0x379DL,65528UL,5UL},{0x379DL,5UL,0x2F60L,2UL,0x379DL,65528UL,5UL}},{{0x379DL,5UL,0x2F60L,2UL,0x379DL,65528UL,5UL},{0x379DL,5UL,0x2F60L,2UL,0x379DL,65528UL,5UL},{0x379DL,5UL,0x2F60L,2UL,0x379DL,65528UL,5UL},{0x379DL,5UL,0x2F60L,2UL,0x379DL,65528UL,5UL},{0x379DL,5UL,0x2F60L,2UL,0x379DL,65528UL,5UL},{0x379DL,5UL,0x2F60L,2UL,0x379DL,65528UL,5UL},{0x379DL,5UL,0x2F60L,2UL,0x379DL,65528UL,5UL},{0x379DL,5UL,0x2F60L,2UL,0x379DL,65528UL,5UL}},{{0x379DL,5UL,0x2F60L,2UL,0x379DL,65528UL,5UL},{0x379DL,5UL,0x2F60L,2UL,0x379DL,65528UL,5UL},{0x379DL,5UL,0x2F60L,2UL,0x379DL,65528UL,5UL},{0x379DL,5UL,0x2F60L,2UL,0x379DL,65528UL,5UL},{0x379DL,5UL,0x2F60L,2UL,0x379DL,65528UL,5UL},{0x379DL,5UL,0x2F60L,2UL,0x379DL,65528UL,5UL},{0x379DL,5UL,0x2F60L,2UL,0x379DL,65528UL,5UL},{0x379DL,5UL,0x2F60L,2UL,0x379DL,65528UL,5UL}},{{0x379DL,5UL,0x2F60L,2UL,0x379DL,65528UL,5UL},{0x379DL,5UL,0x2F60L,2UL,0x379DL,65528UL,5UL},{0x379DL,5UL,0x2F60L,2UL,0x379DL,65528UL,5UL},{0x379DL,5UL,0x2F60L,2UL,0x379DL,65528UL,5UL},{0x379DL,5UL,0x2F60L,2UL,0x379DL,65528UL,5UL},{0x379DL,5UL,0x2F60L,2UL,0x379DL,65528UL,5UL},{0x379DL,5UL,0x2F60L,2UL,0x379DL,65528UL,5UL},{0x379DL,5UL,0x2F60L,2UL,0x379DL,65528UL,5UL}}};
                    uint32_t l_1524[9][8] = {{4294967286UL,0UL,0UL,4294967286UL,0x90EE5D59L,0UL,0xB05444D8L,5UL},{4294967286UL,0UL,0UL,4294967286UL,0x90EE5D59L,0UL,0xB05444D8L,5UL},{4294967286UL,0UL,0UL,4294967286UL,0x90EE5D59L,0UL,0xB05444D8L,5UL},{4294967286UL,0UL,0UL,4294967286UL,0x90EE5D59L,0UL,0xB05444D8L,5UL},{4294967286UL,0UL,0UL,4294967286UL,0x90EE5D59L,0UL,0xB05444D8L,5UL},{4294967286UL,0UL,0UL,4294967286UL,0x90EE5D59L,0UL,0xB05444D8L,5UL},{4294967286UL,0UL,0UL,4294967286UL,0x90EE5D59L,0UL,0xB05444D8L,5UL},{4294967286UL,0UL,0UL,4294967286UL,0x90EE5D59L,0UL,0xB05444D8L,5UL},{4294967286UL,0UL,0UL,4294967286UL,0x90EE5D59L,0UL,0xB05444D8L,5UL}};
                    uint16_t l_1525 = 0x108CL;
                    uint64_t l_1526 = 18446744073709551615UL;
                    int64_t l_1527 = (-10L);
                    int i, j, k;
                    ++l_1509;
                    if ((l_1512 , (l_1527 &= ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(l_1513.yy)), 1L, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(mad_sat(((VECTOR(int32_t, 4))(l_1514.s6fce)).lo, ((VECTOR(int32_t, 2))(l_1515.xx)), ((VECTOR(int32_t, 16))(l_1516.zxxyzyxwwzyxyyzw)).s47))).yxyx)), ((VECTOR(int32_t, 2))(l_1517.yy)), (l_1519 = l_1518), l_1520, 0x199B3ED7L, ((VECTOR(int32_t, 4))(sub_sat(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(0x5EA06030L, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(0x61D55E75L, 1L)))), (-6L), 0x33AA529FL)).even)), 0x4A224E15L, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(l_1521.xx)))), 1L, 1L, ((l_1522 , ((l_1523[0][6][2] , (GROUP_DIVERGE(0, 1) , l_1524[2][3])) , ((l_1525 , 1UL) , (l_1526 &= 0x4C74L)))) , (-1L)), (-1L), ((VECTOR(int32_t, 4))(0x03534EF3L)), 7L, 8L)).hi)))).s72)).yxyx, ((VECTOR(int32_t, 4))((-6L)))))))).sa)))
                    { /* block id: 658 */
                        int32_t l_1529 = 0L;
                        int32_t *l_1528 = &l_1529;
                        int32_t *l_1530 = &l_1529;
                        int16_t l_1531 = 5L;
                        l_1530 = l_1528;
                        (*l_1530) |= l_1531;
                    }
                    else
                    { /* block id: 661 */
                        uint8_t l_1532[10];
                        uint32_t l_1533 = 0UL;
                        int i;
                        for (i = 0; i < 10; i++)
                            l_1532[i] = 0xDCL;
                        l_1517.y &= (l_1532[9] , (l_1515.x = l_1533));
                    }
                    unsigned int result = 0;
                    result += l_1502;
                    result += l_1503;
                    result += l_1504;
                    result += l_1505;
                    int l_1506_i0;
                    for (l_1506_i0 = 0; l_1506_i0 < 4; l_1506_i0++) {
                        result += l_1506[l_1506_i0];
                    }
                    result += l_1507;
                    result += l_1508;
                    result += l_1509;
                    result += l_1512;
                    result += l_1513.y;
                    result += l_1513.x;
                    result += l_1514.sf;
                    result += l_1514.se;
                    result += l_1514.sd;
                    result += l_1514.sc;
                    result += l_1514.sb;
                    result += l_1514.sa;
                    result += l_1514.s9;
                    result += l_1514.s8;
                    result += l_1514.s7;
                    result += l_1514.s6;
                    result += l_1514.s5;
                    result += l_1514.s4;
                    result += l_1514.s3;
                    result += l_1514.s2;
                    result += l_1514.s1;
                    result += l_1514.s0;
                    result += l_1515.y;
                    result += l_1515.x;
                    result += l_1516.w;
                    result += l_1516.z;
                    result += l_1516.y;
                    result += l_1516.x;
                    result += l_1517.y;
                    result += l_1517.x;
                    result += l_1518;
                    result += l_1519;
                    result += l_1520;
                    result += l_1521.y;
                    result += l_1521.x;
                    result += l_1522;
                    int l_1523_i0, l_1523_i1, l_1523_i2;
                    for (l_1523_i0 = 0; l_1523_i0 < 4; l_1523_i0++) {
                        for (l_1523_i1 = 0; l_1523_i1 < 8; l_1523_i1++) {
                            for (l_1523_i2 = 0; l_1523_i2 < 7; l_1523_i2++) {
                                result += l_1523[l_1523_i0][l_1523_i1][l_1523_i2];
                            }
                        }
                    }
                    int l_1524_i0, l_1524_i1;
                    for (l_1524_i0 = 0; l_1524_i0 < 9; l_1524_i0++) {
                        for (l_1524_i1 = 0; l_1524_i1 < 8; l_1524_i1++) {
                            result += l_1524[l_1524_i0][l_1524_i1];
                        }
                    }
                    result += l_1525;
                    result += l_1526;
                    result += l_1527;
                    atomic_add(&p_2023->l_special_values[8], result);
                }
                else
                { /* block id: 665 */
                    (1 + 1);
                }
                return l_1414;
            }
        }
        for (p_2023->g_494 = 0; (p_2023->g_494 > (-2)); p_2023->g_494 = safe_sub_func_uint64_t_u_u(p_2023->g_494, 2))
        { /* block id: 673 */
            uint8_t l_1546 = 0xE7L;
            uint64_t **l_1552 = &p_2023->g_1194;
            int32_t l_1569 = 1L;
            for (l_1440 = 0; (l_1440 > 34); ++l_1440)
            { /* block id: 676 */
                uint64_t l_1540 = 4UL;
                uint64_t *l_1541 = (void*)0;
                int32_t l_1570 = 0x781F23FEL;
                if ((safe_sub_func_uint64_t_u_u(l_1540, (p_103 ^= (p_2023->g_1220 &= 18446744073709551615UL)))))
                { /* block id: 679 */
                    int32_t *l_1542 = (void*)0;
                    int32_t *l_1543 = (void*)0;
                    int32_t *l_1544 = &l_1446;
                    int32_t *l_1545[4][3] = {{(void*)0,(void*)0,&l_1455[2][5]},{(void*)0,(void*)0,&l_1455[2][5]},{(void*)0,(void*)0,&l_1455[2][5]},{(void*)0,(void*)0,&l_1455[2][5]}};
                    int8_t *****l_1573 = &p_2023->g_1302[8];
                    int i, j;
                    l_1546++;
                    for (l_1540 = 0; (l_1540 < 17); l_1540++)
                    { /* block id: 683 */
                        VECTOR(uint64_t, 16) l_1556 = (VECTOR(uint64_t, 16))(18446744073709551614UL, (VECTOR(uint64_t, 4))(18446744073709551614UL, (VECTOR(uint64_t, 2))(18446744073709551614UL, 18446744073709551610UL), 18446744073709551610UL), 18446744073709551610UL, 18446744073709551614UL, 18446744073709551610UL, (VECTOR(uint64_t, 2))(18446744073709551614UL, 18446744073709551610UL), (VECTOR(uint64_t, 2))(18446744073709551614UL, 18446744073709551610UL), 18446744073709551614UL, 18446744073709551610UL, 18446744073709551614UL, 18446744073709551610UL);
                        uint8_t *l_1567[6] = {(void*)0,&l_1402,(void*)0,(void*)0,&l_1402,(void*)0};
                        int64_t *l_1568[2][8][6] = {{{&p_2023->g_28,(void*)0,(void*)0,&p_2023->g_494,(void*)0,(void*)0},{&p_2023->g_28,(void*)0,(void*)0,&p_2023->g_494,(void*)0,(void*)0},{&p_2023->g_28,(void*)0,(void*)0,&p_2023->g_494,(void*)0,(void*)0},{&p_2023->g_28,(void*)0,(void*)0,&p_2023->g_494,(void*)0,(void*)0},{&p_2023->g_28,(void*)0,(void*)0,&p_2023->g_494,(void*)0,(void*)0},{&p_2023->g_28,(void*)0,(void*)0,&p_2023->g_494,(void*)0,(void*)0},{&p_2023->g_28,(void*)0,(void*)0,&p_2023->g_494,(void*)0,(void*)0},{&p_2023->g_28,(void*)0,(void*)0,&p_2023->g_494,(void*)0,(void*)0}},{{&p_2023->g_28,(void*)0,(void*)0,&p_2023->g_494,(void*)0,(void*)0},{&p_2023->g_28,(void*)0,(void*)0,&p_2023->g_494,(void*)0,(void*)0},{&p_2023->g_28,(void*)0,(void*)0,&p_2023->g_494,(void*)0,(void*)0},{&p_2023->g_28,(void*)0,(void*)0,&p_2023->g_494,(void*)0,(void*)0},{&p_2023->g_28,(void*)0,(void*)0,&p_2023->g_494,(void*)0,(void*)0},{&p_2023->g_28,(void*)0,(void*)0,&p_2023->g_494,(void*)0,(void*)0},{&p_2023->g_28,(void*)0,(void*)0,&p_2023->g_494,(void*)0,(void*)0},{&p_2023->g_28,(void*)0,(void*)0,&p_2023->g_494,(void*)0,(void*)0}}};
                        uint32_t **l_1571 = &l_1418;
                        int32_t l_1574 = 4L;
                        int i, j, k;
                        l_1446 = ((((VECTOR(uint64_t, 4))(l_1551.s1777)).x > ((void*)0 != l_1552)) > (l_1570 = (((((VECTOR(int16_t, 8))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(p_2023->g_1553.xz)).yyxyxyxy)))).s1 > ((safe_add_func_uint32_t_u_u((((VECTOR(uint64_t, 2))(l_1556.s80)).odd && ((VECTOR(int64_t, 8))(l_1556.se, (((FAKE_DIVERGE(p_2023->global_0_offset, get_global_id(0), 10) , ((l_1569 = ((safe_mul_func_int8_t_s_s(((safe_lshift_func_int16_t_s_s((safe_div_func_uint8_t_u_u((((l_1540 , 0x169B33203AED04D7L) ^ ((VECTOR(int64_t, 16))(rhadd(((VECTOR(int64_t, 2))(p_2023->g_1563.xz)).yxyxxxxxxxyyyxxy, ((VECTOR(int64_t, 2))(hadd(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 8))((l_1455[6][6] = p_2023->g_264.s4), (!(!0x2179850EDEBCCEEDL)), 0x26331AA51BF0108EL, ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 4))(rotate(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 8))(rhadd(((VECTOR(int64_t, 2))(l_1564.zw)).xyyxxxxx, ((VECTOR(int64_t, 4))(rhadd(((VECTOR(int64_t, 8))(sub_sat(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 4))(p_103, ((VECTOR(int64_t, 2))(clz(((VECTOR(int64_t, 8))(clz(((VECTOR(int64_t, 16))(clz(((VECTOR(int64_t, 2))(safe_clamp_func(VECTOR(int64_t, 2),VECTOR(int64_t, 2),((VECTOR(int64_t, 16))(0L, (safe_div_func_uint8_t_u_u((l_1452 = ((1UL | p_104) , GROUP_DIVERGE(0, 1))), p_104)), ((VECTOR(int64_t, 4))((-8L))), ((VECTOR(int64_t, 4))(0L)), ((VECTOR(int64_t, 4))((-1L))), 0x5BE31EBD34CA8123L, (-1L))).sac, ((VECTOR(int64_t, 2))((-1L))), ((VECTOR(int64_t, 2))(0x3D6D89114B546DF5L))))).xxxyyxyyyyxyyxyy))).hi))).s44))), 0x3F534408B9E3815DL)))).xxywwwzw, ((VECTOR(int64_t, 8))(0x3AEF594D1A03477BL))))).hi, ((VECTOR(int64_t, 4))(1L))))).zzzxyyzy))).s17)).yxxy, ((VECTOR(int64_t, 4))((-10L)))))).hi)))), ((VECTOR(int64_t, 2))(0x6EB7C607430C7C89L)), 8L)))).s15, ((VECTOR(int64_t, 2))(0x49A2EBD56B20148FL))))).yxyyyyyxyyxyxxyx))).s9) <= 0xBB0FL), 249UL)), l_1402)) == 0x592EB9BAFC0A2737L), GROUP_DIVERGE(1, 1))) == p_2023->l_comm_values[(safe_mod_func_uint32_t_u_u(p_2023->tid, 15))])) == (-2L))) >= 1L) , l_1374), 0x7D133D716D2EBA76L, 0x0EBB6D7EB8A37C07L, 0x38ABF89B9154D2C8L, ((VECTOR(int64_t, 2))(0x3C8E8E8C6ADF9FF9L)), 0x1CE1D5A749803A22L)).s1), p_103)) , p_105)) , l_1540) , p_2023->g_337.z)));
                        l_1574 = ((((*l_1571) = l_1418) == (void*)0) >= (((VECTOR(int16_t, 16))(p_2023->g_1572.yxxyxyyxxxyyyyyx)).s5 <= (p_104 , (p_103 , (l_1573 == &p_2023->g_1302[5])))));
                        (*p_2023->g_173) = (void*)0;
                        (**p_2023->g_172) = &l_1446;
                    }
                    if (((-6L) >= l_1570))
                    { /* block id: 694 */
                        return &p_2023->g_314;
                    }
                    else
                    { /* block id: 696 */
                        uint8_t *l_1581[6][8] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
                        VECTOR(int8_t, 2) l_1586 = (VECTOR(int8_t, 2))(0x1EL, 0x3AL);
                        int64_t *l_1588 = &p_2023->g_28;
                        int64_t **l_1587 = &l_1588;
                        uint64_t *l_1593 = (void*)0;
                        int64_t *l_1594 = &p_2023->g_28;
                        int i, j;
                        (*p_2023->g_173) = &l_217;
                        (***p_2023->g_172) ^= ((safe_lshift_func_uint8_t_u_s((p_2023->g_244[3][2][0] = (safe_mul_func_int8_t_s_s((safe_lshift_func_uint16_t_u_u(GROUP_DIVERGE(2, 1), 0)), 3L))), 1)) < (&p_2023->g_411 != (void*)0));
                        if ((**p_2023->g_651))
                            break;
                        (*l_1544) = ((***p_2023->g_172) = (((((safe_lshift_func_uint8_t_u_u((((((*l_1594) = ((safe_rshift_func_int16_t_s_s((((VECTOR(int8_t, 4))(l_1586.yyyy)).w == 0x27L), (((*l_1587) = &p_2023->g_28) == ((((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(abs(((VECTOR(int16_t, 4))(0x1188L, (((safe_unary_minus_func_int64_t_s((&l_1205 != &p_2023->g_576[7]))) & p_105) >= p_104), 0x439BL, (-1L)))))), (((l_1570 |= (((p_104 | p_104) , ((((*p_2023->g_617)++) ^ p_103) , l_1592)) == &p_2023->g_493)) <= p_104) , 0xC290L), 0UL, 0x9C2FL, ((VECTOR(uint16_t, 4))(0UL)), GROUP_DIVERGE(0, 1), ((VECTOR(uint16_t, 2))(0x6EA3L)), 0xACC8L, 0xED2EL)).s0 ^ l_1546) , &p_2023->g_28)))) , 0L)) , 0x37DDDCF8E6BCAD3EL) >= 0x3CC6AD39149BAFDFL) && p_104), p_103)) , 65535UL) ^ p_2023->g_1220) , l_1342.x) < p_2023->g_634.s0));
                    }
                }
                else
                { /* block id: 708 */
                    return l_1595[0];
                }
                (*p_2023->g_5) = l_1446;
                (**p_2023->g_173) = (**p_2023->g_4);
            }
        }
        atomic_xor(&p_2023->l_atomic_reduction[0], (safe_rshift_func_int16_t_s_s((safe_rshift_func_uint16_t_u_s(FAKE_DIVERGE(p_2023->global_2_offset, get_global_id(2), 10), l_1455[6][6])), 2)));
        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        if (get_linear_local_id() == 0)
            p_2023->v_collective += p_2023->l_atomic_reduction[0];
        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
        for (p_104 = 0; (p_104 > 15); p_104 = safe_add_func_int64_t_s_s(p_104, 9))
        { /* block id: 718 */
            int8_t l_1610 = 0x4AL;
            uint8_t *l_1616 = &p_2023->g_244[3][2][0];
            uint8_t *l_1619 = &l_1337[5][1][1];
            uint32_t *l_1620 = (void*)0;
            uint32_t *l_1621 = (void*)0;
            uint32_t *l_1622[2][7][5] = {{{(void*)0,&p_2023->g_576[7],&p_2023->g_576[7],(void*)0,&p_2023->g_576[7]},{(void*)0,&p_2023->g_576[7],&p_2023->g_576[7],(void*)0,&p_2023->g_576[7]},{(void*)0,&p_2023->g_576[7],&p_2023->g_576[7],(void*)0,&p_2023->g_576[7]},{(void*)0,&p_2023->g_576[7],&p_2023->g_576[7],(void*)0,&p_2023->g_576[7]},{(void*)0,&p_2023->g_576[7],&p_2023->g_576[7],(void*)0,&p_2023->g_576[7]},{(void*)0,&p_2023->g_576[7],&p_2023->g_576[7],(void*)0,&p_2023->g_576[7]},{(void*)0,&p_2023->g_576[7],&p_2023->g_576[7],(void*)0,&p_2023->g_576[7]}},{{(void*)0,&p_2023->g_576[7],&p_2023->g_576[7],(void*)0,&p_2023->g_576[7]},{(void*)0,&p_2023->g_576[7],&p_2023->g_576[7],(void*)0,&p_2023->g_576[7]},{(void*)0,&p_2023->g_576[7],&p_2023->g_576[7],(void*)0,&p_2023->g_576[7]},{(void*)0,&p_2023->g_576[7],&p_2023->g_576[7],(void*)0,&p_2023->g_576[7]},{(void*)0,&p_2023->g_576[7],&p_2023->g_576[7],(void*)0,&p_2023->g_576[7]},{(void*)0,&p_2023->g_576[7],&p_2023->g_576[7],(void*)0,&p_2023->g_576[7]},{(void*)0,&p_2023->g_576[7],&p_2023->g_576[7],(void*)0,&p_2023->g_576[7]}}};
            int i, j, k;
            (*p_2023->g_173) = (((VECTOR(int32_t, 16))(p_2023->g_1602.s72af91517cb6dade)).s9 , (void*)0);
            (*p_2023->g_652) |= ((VECTOR(int32_t, 4))(sub_sat(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(hadd(((VECTOR(int32_t, 8))(mad_sat(((VECTOR(int32_t, 2))(l_1603.xy)).xxxyyyxx, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(0L, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(l_1604.wwzy)).zyyxzxwz)), 0L, 1L, ((((((((-9L) != l_1607) > ((void*)0 != p_2023->g_1608)) == l_1610) , ((safe_rshift_func_int16_t_s_s(l_1610, 9)) == (l_1391.w = ((((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(l_1613.xyyyzyxzzyxxyzzy)).s9d)).even , ((safe_lshift_func_uint16_t_u_u(FAKE_DIVERGE(p_2023->local_0_offset, get_local_id(0), 10), p_105)) , (((*l_1619) = (++(*l_1616))) , &p_2023->g_299))) == ((p_2023->g_462.y != 4UL) , &p_2023->g_299))))) , 0x05BAL) < 0x33C1L) != l_1623), ((VECTOR(int32_t, 4))(0x3D4DFC31L)))).sfc01)).ywzxwzzy, ((VECTOR(int32_t, 8))(1L))))), ((VECTOR(int32_t, 8))(0x08A351E7L))))))).even, ((VECTOR(int32_t, 4))(0L))))).w;
            (**p_2023->g_172) = l_1621;
        }
    }
    else
    { /* block id: 726 */
        (*p_2023->g_173) = &l_217;
    }
    (*p_2023->g_652) |= (safe_rshift_func_uint16_t_u_s((safe_rshift_func_uint8_t_u_u(((*l_1630) = (safe_add_func_int64_t_s_s(p_103, p_103))), 1)), (safe_mod_func_int32_t_s_s(((void*)0 == &p_103), ((VECTOR(int32_t, 2))(0x0CA212FCL, 0x50946B83L)).odd))));
    return &p_2023->g_1220;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes: p_2023->g_126
 */
int64_t  func_113(uint64_t  p_114, int8_t  p_115, int16_t  p_116, uint32_t  p_117, int32_t  p_118, struct S0 * p_2023)
{ /* block id: 47 */
    int8_t *l_123 = &p_2023->g_27;
    int8_t **l_122 = &l_123;
    int8_t ***l_121 = &l_122;
    int8_t **l_125 = (void*)0;
    int8_t ***l_124[1][10];
    int32_t l_128 = 0L;
    int i, j;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 10; j++)
            l_124[i][j] = &l_125;
    }
    p_2023->g_126 = ((*l_121) = (void*)0);
    return l_128;
}


/* ------------------------------------------ */
/* 
 * reads : p_2023->g_1207 p_2023->g_652 p_2023->g_30
 * writes: p_2023->g_30
 */
int8_t  func_144(uint32_t  p_145, uint64_t  p_146, uint32_t  p_147, int32_t  p_148, struct S0 * p_2023)
{ /* block id: 549 */
    int16_t l_1208 = 0x7E66L;
    int32_t l_1209 = 0x55F8D029L;
    int32_t *l_1210 = &l_1209;
    int32_t *l_1211 = (void*)0;
    int32_t *l_1212 = &l_1209;
    int32_t *l_1213[2][4][2] = {{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}}};
    VECTOR(uint8_t, 8) l_1214 = (VECTOR(uint8_t, 8))(249UL, (VECTOR(uint8_t, 4))(249UL, (VECTOR(uint8_t, 2))(249UL, 252UL), 252UL), 252UL, 249UL, 252UL);
    uint64_t l_1217[9] = {0x7FF6A89D29AF78BBL,0x7FF6A89D29AF78BBL,0x7FF6A89D29AF78BBL,0x7FF6A89D29AF78BBL,0x7FF6A89D29AF78BBL,0x7FF6A89D29AF78BBL,0x7FF6A89D29AF78BBL,0x7FF6A89D29AF78BBL,0x7FF6A89D29AF78BBL};
    int i, j, k;
    (*p_2023->g_652) ^= ((VECTOR(int32_t, 4))(p_2023->g_1207.xyyx)).w;
    l_1214.s7--;
    return l_1217[2];
}


/* ------------------------------------------ */
/* 
 * reads : p_2023->g_229 p_2023->g_156 p_2023->g_157 p_2023->g_120 p_2023->g_244 p_2023->g_28 p_2023->g_172 p_2023->g_173 p_2023->g_25 p_2023->l_comm_values p_2023->g_27 p_2023->g_264 p_2023->g_5 p_2023->g_299 p_2023->g_30 p_2023->g_313 p_2023->g_314 p_2023->g_315 p_2023->g_318 p_2023->g_337 p_2023->g_344 p_2023->g_346 p_2023->g_349 p_2023->g_300 p_2023->g_373 p_2023->g_401 p_2023->g_402 p_2023->g_406 p_2023->g_413 p_2023->g_420 p_2023->g_435 p_2023->g_462 p_2023->g_488 p_2023->g_494 p_2023->g_498 p_2023->g_499 p_2023->g_506 p_2023->g_512 p_2023->g_4 p_2023->g_576 p_2023->g_comm_values p_2023->g_593 p_2023->g_6 p_2023->g_616 p_2023->g_651 p_2023->g_665 p_2023->g_667 p_2023->g_668 p_2023->g_669 p_2023->g_670 p_2023->g_687 p_2023->g_941 p_2023->g_943 p_2023->g_652 p_2023->g_1019 p_2023->g_1100 p_2023->g_1101 p_2023->g_688 p_2023->g_689 p_2023->g_1179 p_2023->g_1193 p_2023->g_634
 * writes: p_2023->g_229 p_2023->g_244 p_2023->g_5 p_2023->g_120 p_2023->g_30 p_2023->g_314 p_2023->g_6 p_2023->g_318 p_2023->g_127 p_2023->g_346 p_2023->g_349 p_2023->g_373 p_2023->g_126 p_2023->g_411 p_2023->g_264 p_2023->g_300 p_2023->g_493 p_2023->g_512 p_2023->g_27 p_2023->g_593 p_2023->g_652 p_2023->g_313 p_2023->g_25 p_2023->g_941 p_2023->g_1040 p_2023->g_576 p_2023->g_1193 p_2023->g_634
 */
int8_t *** func_160(int64_t  p_161, struct S0 * p_2023)
{ /* block id: 91 */
    int32_t l_220 = 0x2B37BC6CL;
    int32_t *l_221[1];
    int64_t l_222 = 0x69CFC8D8B85B255EL;
    VECTOR(uint32_t, 8) l_227 = (VECTOR(uint32_t, 8))(0x1A8FB665L, (VECTOR(uint32_t, 4))(0x1A8FB665L, (VECTOR(uint32_t, 2))(0x1A8FB665L, 0xE7CA1D27L), 0xE7CA1D27L), 0xE7CA1D27L, 0x1A8FB665L, 0xE7CA1D27L);
    uint8_t *l_228 = &p_2023->g_229;
    int16_t l_240[7] = {0x0930L,0x6C75L,0x0930L,0x0930L,0x6C75L,0x0930L,0x0930L};
    int8_t *l_241[3];
    int64_t l_242 = 0x2C7234715A6FE462L;
    uint8_t *l_243 = &p_2023->g_244[3][2][0];
    int64_t l_245[6] = {0x1AE7726E67078D9BL,0x1AE7726E67078D9BL,0x1AE7726E67078D9BL,0x1AE7726E67078D9BL,0x1AE7726E67078D9BL,0x1AE7726E67078D9BL};
    int64_t l_246 = 0x145808BEAA29AB84L;
    int16_t l_271 = 0x74C8L;
    VECTOR(int8_t, 16) l_312 = (VECTOR(int8_t, 16))(0x3CL, (VECTOR(int8_t, 4))(0x3CL, (VECTOR(int8_t, 2))(0x3CL, 5L), 5L), 5L, 0x3CL, 5L, (VECTOR(int8_t, 2))(0x3CL, 5L), (VECTOR(int8_t, 2))(0x3CL, 5L), 0x3CL, 5L, 0x3CL, 5L);
    int32_t ***l_319 = &p_2023->g_173;
    VECTOR(int8_t, 8) l_324 = (VECTOR(int8_t, 8))(0x26L, (VECTOR(int8_t, 4))(0x26L, (VECTOR(int8_t, 2))(0x26L, 1L), 1L), 1L, 0x26L, 1L);
    int64_t l_383[1];
    VECTOR(int8_t, 8) l_384 = (VECTOR(int8_t, 8))(4L, (VECTOR(int8_t, 4))(4L, (VECTOR(int8_t, 2))(4L, 1L), 1L), 1L, 4L, 1L);
    VECTOR(int32_t, 16) l_400 = (VECTOR(int32_t, 16))(3L, (VECTOR(int32_t, 4))(3L, (VECTOR(int32_t, 2))(3L, 0x49C5FDC8L), 0x49C5FDC8L), 0x49C5FDC8L, 3L, 0x49C5FDC8L, (VECTOR(int32_t, 2))(3L, 0x49C5FDC8L), (VECTOR(int32_t, 2))(3L, 0x49C5FDC8L), 3L, 0x49C5FDC8L, 3L, 0x49C5FDC8L);
    VECTOR(int32_t, 4) l_403 = (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x3E8FB2D6L), 0x3E8FB2D6L);
    VECTOR(int32_t, 4) l_404 = (VECTOR(int32_t, 4))(0x192372DFL, (VECTOR(int32_t, 2))(0x192372DFL, 0L), 0L);
    VECTOR(int32_t, 8) l_405 = (VECTOR(int32_t, 8))(4L, (VECTOR(int32_t, 4))(4L, (VECTOR(int32_t, 2))(4L, 0x27A040ACL), 0x27A040ACL), 0x27A040ACL, 4L, 0x27A040ACL);
    int8_t ***l_410 = &p_2023->g_126;
    int8_t ****l_409[3];
    VECTOR(int32_t, 16) l_412 = (VECTOR(int32_t, 16))(0x205C9A7EL, (VECTOR(int32_t, 4))(0x205C9A7EL, (VECTOR(int32_t, 2))(0x205C9A7EL, (-1L)), (-1L)), (-1L), 0x205C9A7EL, (-1L), (VECTOR(int32_t, 2))(0x205C9A7EL, (-1L)), (VECTOR(int32_t, 2))(0x205C9A7EL, (-1L)), 0x205C9A7EL, (-1L), 0x205C9A7EL, (-1L));
    uint32_t *l_414 = (void*)0;
    VECTOR(int32_t, 16) l_415 = (VECTOR(int32_t, 16))(0x36424F15L, (VECTOR(int32_t, 4))(0x36424F15L, (VECTOR(int32_t, 2))(0x36424F15L, 0L), 0L), 0L, 0x36424F15L, 0L, (VECTOR(int32_t, 2))(0x36424F15L, 0L), (VECTOR(int32_t, 2))(0x36424F15L, 0L), 0x36424F15L, 0L, 0x36424F15L, 0L);
    VECTOR(int32_t, 4) l_416 = (VECTOR(int32_t, 4))(0x66A921AAL, (VECTOR(int32_t, 2))(0x66A921AAL, (-4L)), (-4L));
    VECTOR(int32_t, 8) l_417 = (VECTOR(int32_t, 8))(0x10F694BEL, (VECTOR(int32_t, 4))(0x10F694BEL, (VECTOR(int32_t, 2))(0x10F694BEL, 1L), 1L), 1L, 0x10F694BEL, 1L);
    VECTOR(int32_t, 16) l_418 = (VECTOR(int32_t, 16))(0x252C9B0DL, (VECTOR(int32_t, 4))(0x252C9B0DL, (VECTOR(int32_t, 2))(0x252C9B0DL, 0L), 0L), 0L, 0x252C9B0DL, 0L, (VECTOR(int32_t, 2))(0x252C9B0DL, 0L), (VECTOR(int32_t, 2))(0x252C9B0DL, 0L), 0x252C9B0DL, 0L, 0x252C9B0DL, 0L);
    VECTOR(int32_t, 16) l_419 = (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, (-3L)), (-3L)), (-3L), 0L, (-3L), (VECTOR(int32_t, 2))(0L, (-3L)), (VECTOR(int32_t, 2))(0L, (-3L)), 0L, (-3L), 0L, (-3L));
    VECTOR(int32_t, 8) l_421 = (VECTOR(int32_t, 8))(7L, (VECTOR(int32_t, 4))(7L, (VECTOR(int32_t, 2))(7L, 0L), 0L), 0L, 7L, 0L);
    VECTOR(int16_t, 4) l_422 = (VECTOR(int16_t, 4))(0x71B4L, (VECTOR(int16_t, 2))(0x71B4L, 0x5EB5L), 0x5EB5L);
    VECTOR(int16_t, 8) l_423 = (VECTOR(int16_t, 8))(0x6DAEL, (VECTOR(int16_t, 4))(0x6DAEL, (VECTOR(int16_t, 2))(0x6DAEL, 1L), 1L), 1L, 0x6DAEL, 1L);
    VECTOR(int16_t, 16) l_424 = (VECTOR(int16_t, 16))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x31DCL), 0x31DCL), 0x31DCL, 0L, 0x31DCL, (VECTOR(int16_t, 2))(0L, 0x31DCL), (VECTOR(int16_t, 2))(0L, 0x31DCL), 0L, 0x31DCL, 0L, 0x31DCL);
    VECTOR(uint16_t, 8) l_425 = (VECTOR(uint16_t, 8))(6UL, (VECTOR(uint16_t, 4))(6UL, (VECTOR(uint16_t, 2))(6UL, 1UL), 1UL), 1UL, 6UL, 1UL);
    VECTOR(uint16_t, 16) l_426 = (VECTOR(uint16_t, 16))(5UL, (VECTOR(uint16_t, 4))(5UL, (VECTOR(uint16_t, 2))(5UL, 0x7B31L), 0x7B31L), 0x7B31L, 5UL, 0x7B31L, (VECTOR(uint16_t, 2))(5UL, 0x7B31L), (VECTOR(uint16_t, 2))(5UL, 0x7B31L), 5UL, 0x7B31L, 5UL, 0x7B31L);
    VECTOR(uint16_t, 2) l_427 = (VECTOR(uint16_t, 2))(0UL, 0UL);
    uint16_t *l_428 = (void*)0;
    uint16_t *l_429 = (void*)0;
    uint16_t *l_430 = (void*)0;
    uint16_t *l_431 = (void*)0;
    uint16_t *l_432 = &p_2023->g_120;
    uint8_t l_433 = 0x8CL;
    int8_t l_434 = 0L;
    VECTOR(int64_t, 8) l_472 = (VECTOR(int64_t, 8))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 7L), 7L), 7L, (-1L), 7L);
    VECTOR(uint64_t, 16) l_501 = (VECTOR(uint64_t, 16))(18446744073709551610UL, (VECTOR(uint64_t, 4))(18446744073709551610UL, (VECTOR(uint64_t, 2))(18446744073709551610UL, 2UL), 2UL), 2UL, 18446744073709551610UL, 2UL, (VECTOR(uint64_t, 2))(18446744073709551610UL, 2UL), (VECTOR(uint64_t, 2))(18446744073709551610UL, 2UL), 18446744073709551610UL, 2UL, 18446744073709551610UL, 2UL);
    VECTOR(int64_t, 8) l_504 = (VECTOR(int64_t, 8))(0x4FF68090576799B3L, (VECTOR(int64_t, 4))(0x4FF68090576799B3L, (VECTOR(int64_t, 2))(0x4FF68090576799B3L, 1L), 1L), 1L, 0x4FF68090576799B3L, 1L);
    VECTOR(int64_t, 16) l_505 = (VECTOR(int64_t, 16))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, (-5L)), (-5L)), (-5L), 1L, (-5L), (VECTOR(int64_t, 2))(1L, (-5L)), (VECTOR(int64_t, 2))(1L, (-5L)), 1L, (-5L), 1L, (-5L));
    int32_t *l_532 = &p_2023->g_6;
    uint8_t l_553 = 250UL;
    VECTOR(int64_t, 8) l_564 = (VECTOR(int64_t, 8))(0x2A5C934F8C56362AL, (VECTOR(int64_t, 4))(0x2A5C934F8C56362AL, (VECTOR(int64_t, 2))(0x2A5C934F8C56362AL, 0L), 0L), 0L, 0x2A5C934F8C56362AL, 0L);
    int32_t l_633 = 0x231A4341L;
    VECTOR(uint32_t, 16) l_639 = (VECTOR(uint32_t, 16))(0x9A3208E1L, (VECTOR(uint32_t, 4))(0x9A3208E1L, (VECTOR(uint32_t, 2))(0x9A3208E1L, 0xA88301D4L), 0xA88301D4L), 0xA88301D4L, 0x9A3208E1L, 0xA88301D4L, (VECTOR(uint32_t, 2))(0x9A3208E1L, 0xA88301D4L), (VECTOR(uint32_t, 2))(0x9A3208E1L, 0xA88301D4L), 0x9A3208E1L, 0xA88301D4L, 0x9A3208E1L, 0xA88301D4L);
    uint32_t l_640 = 4294967295UL;
    int32_t l_641 = (-1L);
    VECTOR(uint64_t, 4) l_658 = (VECTOR(uint64_t, 4))(0xF0AB7C92BD70282FL, (VECTOR(uint64_t, 2))(0xF0AB7C92BD70282FL, 18446744073709551608UL), 18446744073709551608UL);
    uint64_t *l_661 = (void*)0;
    VECTOR(int32_t, 8) l_664 = (VECTOR(int32_t, 8))(6L, (VECTOR(int32_t, 4))(6L, (VECTOR(int32_t, 2))(6L, 0x792760FCL), 0x792760FCL), 0x792760FCL, 6L, 0x792760FCL);
    VECTOR(int16_t, 8) l_925 = (VECTOR(int16_t, 8))(0x4B65L, (VECTOR(int16_t, 4))(0x4B65L, (VECTOR(int16_t, 2))(0x4B65L, 1L), 1L), 1L, 0x4B65L, 1L);
    int16_t l_1106 = 0x5FCDL;
    int64_t l_1107 = 0x69EC38893C9C2A8CL;
    VECTOR(uint16_t, 8) l_1117 = (VECTOR(uint16_t, 8))(65532UL, (VECTOR(uint16_t, 4))(65532UL, (VECTOR(uint16_t, 2))(65532UL, 0x705DL), 0x705DL), 0x705DL, 65532UL, 0x705DL);
    int8_t ****l_1164 = (void*)0;
    int8_t l_1169 = 0x2DL;
    VECTOR(int32_t, 16) l_1200 = (VECTOR(int32_t, 16))((-7L), (VECTOR(int32_t, 4))((-7L), (VECTOR(int32_t, 2))((-7L), 1L), 1L), 1L, (-7L), 1L, (VECTOR(int32_t, 2))((-7L), 1L), (VECTOR(int32_t, 2))((-7L), 1L), (-7L), 1L, (-7L), 1L);
    int i;
    for (i = 0; i < 1; i++)
        l_221[i] = &p_2023->g_6;
    for (i = 0; i < 3; i++)
        l_241[i] = &p_2023->g_27;
    for (i = 0; i < 1; i++)
        l_383[i] = 0x1DB2AF2DE0FF5CEEL;
    for (i = 0; i < 3; i++)
        l_409[i] = &l_410;
    l_222 = (safe_lshift_func_uint8_t_u_s(l_220, 3));
    if (((l_245[2] ^= (p_161 == (p_161 , (safe_lshift_func_uint16_t_u_s(((((p_161 & (safe_mul_func_uint8_t_u_u(((*l_228) |= ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 16))(max(((VECTOR(uint8_t, 2))(255UL, 0x13L)).xyxxxyyyyxyyyxyx, (uint8_t)((p_161 != p_161) < ((VECTOR(uint32_t, 2))(l_227.s60)).odd)))).sda08)).w), ((safe_rshift_func_int16_t_s_u((safe_mul_func_int8_t_s_s((safe_lshift_func_uint16_t_u_u(p_161, 14)), (safe_mul_func_uint8_t_u_u(((*l_243) &= ((((safe_add_func_uint32_t_u_u(p_161, l_240[0])) <= (~(l_242 |= ((p_161 != (*p_2023->g_156)) <= GROUP_DIVERGE(1, 1))))) > p_161) , p_2023->g_120)), 0x67L)))), p_161)) >= 0x09ECD1DA0B34B949L)))) , p_2023->g_120) , p_2023->g_28) & 0x86C0L), 11))))) , p_161))
    { /* block id: 97 */
        int16_t *l_251 = &l_240[4];
        int32_t l_254 = 0x7125DDA3L;
        uint32_t l_260[4][5][3] = {{{0xB1FC32ADL,0xACF54B01L,0xACF54B01L},{0xB1FC32ADL,0xACF54B01L,0xACF54B01L},{0xB1FC32ADL,0xACF54B01L,0xACF54B01L},{0xB1FC32ADL,0xACF54B01L,0xACF54B01L},{0xB1FC32ADL,0xACF54B01L,0xACF54B01L}},{{0xB1FC32ADL,0xACF54B01L,0xACF54B01L},{0xB1FC32ADL,0xACF54B01L,0xACF54B01L},{0xB1FC32ADL,0xACF54B01L,0xACF54B01L},{0xB1FC32ADL,0xACF54B01L,0xACF54B01L},{0xB1FC32ADL,0xACF54B01L,0xACF54B01L}},{{0xB1FC32ADL,0xACF54B01L,0xACF54B01L},{0xB1FC32ADL,0xACF54B01L,0xACF54B01L},{0xB1FC32ADL,0xACF54B01L,0xACF54B01L},{0xB1FC32ADL,0xACF54B01L,0xACF54B01L},{0xB1FC32ADL,0xACF54B01L,0xACF54B01L}},{{0xB1FC32ADL,0xACF54B01L,0xACF54B01L},{0xB1FC32ADL,0xACF54B01L,0xACF54B01L},{0xB1FC32ADL,0xACF54B01L,0xACF54B01L},{0xB1FC32ADL,0xACF54B01L,0xACF54B01L},{0xB1FC32ADL,0xACF54B01L,0xACF54B01L}}};
        uint64_t l_265[9] = {0xCBDF80C4930CA31DL,1UL,0xCBDF80C4930CA31DL,0xCBDF80C4930CA31DL,1UL,0xCBDF80C4930CA31DL,0xCBDF80C4930CA31DL,1UL,0xCBDF80C4930CA31DL};
        int32_t *l_270 = &p_2023->g_30;
        uint32_t l_298 = 4294967295UL;
        int32_t l_301 = 0x40DD39B6L;
        uint8_t l_302 = 0UL;
        VECTOR(int8_t, 4) l_325 = (VECTOR(int8_t, 4))((-3L), (VECTOR(int8_t, 2))((-3L), 8L), 8L);
        uint32_t *l_345 = &p_2023->g_346;
        uint64_t *l_347 = (void*)0;
        uint64_t *l_348 = &p_2023->g_349;
        uint16_t *l_357[1];
        uint16_t **l_356 = &l_357[0];
        uint16_t *l_359 = &p_2023->g_120;
        uint16_t **l_358 = &l_359;
        uint32_t *l_360 = (void*)0;
        uint32_t *l_361 = (void*)0;
        uint32_t *l_362 = (void*)0;
        uint32_t *l_363 = (void*)0;
        uint32_t *l_364 = (void*)0;
        uint32_t *l_365 = (void*)0;
        uint32_t *l_366 = (void*)0;
        uint32_t *l_367 = (void*)0;
        uint32_t *l_368 = (void*)0;
        uint32_t *l_369 = (void*)0;
        uint32_t *l_370 = (void*)0;
        uint32_t *l_371 = (void*)0;
        uint32_t *l_372[4][2];
        int i, j, k;
        for (i = 0; i < 1; i++)
            l_357[i] = &p_2023->g_120;
        for (i = 0; i < 4; i++)
        {
            for (j = 0; j < 2; j++)
                l_372[i][j] = (void*)0;
        }
        if (((l_246 && ((safe_mul_func_uint16_t_u_u((safe_rshift_func_uint8_t_u_u((((**p_2023->g_172) = (void*)0) == l_221[0]), ((((l_251 != l_251) ^ (((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 8))((safe_rshift_func_int8_t_s_s((0x2C2D5D75FF6F10F7L & (p_161 >= (p_2023->g_244[3][2][0] ^= ((p_2023->g_25.s7 && (((((((p_161 , p_2023->g_120) != 0x9B47650E177084E4L) < GROUP_DIVERGE(2, 1)) == (*p_2023->g_156)) ^ p_2023->l_comm_values[(safe_mod_func_uint32_t_u_u(p_2023->tid, 15))]) , (void*)0) == &p_2023->g_126)) , 0xE1L)))), 2)), FAKE_DIVERGE(p_2023->group_0_offset, get_group_id(0), 10), 0x77422D29L, FAKE_DIVERGE(p_2023->local_0_offset, get_local_id(0), 10), 0x47498759L, ((VECTOR(uint32_t, 2))(1UL)), 0UL)))).s6 , 0x4897L)) & p_161) ^ 1UL))), p_2023->g_27)) | l_254)) , p_161))
        { /* block id: 100 */
            uint16_t l_255[10] = {0xE59CL,0xE59CL,0xE59CL,0xE59CL,0xE59CL,0xE59CL,0xE59CL,0xE59CL,0xE59CL,0xE59CL};
            uint32_t l_256 = 0x6B1021B9L;
            uint16_t *l_261 = &p_2023->g_120;
            int32_t l_262 = 0x017C4DEBL;
            uint32_t l_263[3];
            int i;
            for (i = 0; i < 3; i++)
                l_263[i] = 8UL;
            l_263[2] &= ((l_255[9] == l_254) > ((((l_256 ^= p_161) , ((((safe_unary_minus_func_uint8_t_u((!l_254))) <= FAKE_DIVERGE(p_2023->global_0_offset, get_global_id(0), 10)) , (-1L)) & (7UL != (((l_262 = ((safe_mul_func_int16_t_s_s((-1L), ((*l_261) = l_260[0][0][1]))) != ((void*)0 != &l_240[2]))) | 253UL) > 0x40D4L)))) == 0x0B4E7201B4DF1B77L) , 0xE4L));
            l_265[0] = (((VECTOR(uint16_t, 4))(max(((VECTOR(uint16_t, 4))(p_2023->g_264.s7311)), (uint16_t)(l_260[0][0][1] > (p_2023->l_comm_values[(safe_mod_func_uint32_t_u_u(p_2023->tid, 15))] != FAKE_DIVERGE(p_2023->group_0_offset, get_group_id(0), 10)))))).y ^ p_161);
            (*p_2023->g_173) = (FAKE_DIVERGE(p_2023->group_2_offset, get_group_id(2), 10) , (*p_2023->g_173));
        }
        else
        { /* block id: 107 */
            int32_t l_284 = 1L;
            uint64_t *l_289 = (void*)0;
            uint64_t *l_290 = (void*)0;
            uint64_t *l_291 = &l_265[3];
            uint32_t *l_292 = (void*)0;
            uint32_t *l_293 = (void*)0;
            uint32_t *l_294[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            int32_t l_295 = (-1L);
            uint16_t *l_296 = &p_2023->g_120;
            int32_t l_297 = 0x6C5A4D29L;
            VECTOR(uint32_t, 2) l_303 = (VECTOR(uint32_t, 2))(0x2BDD0B42L, 0x1C56A950L);
            int8_t **l_338 = &p_2023->g_127[2];
            int i;
            l_270 = (((safe_sub_func_int16_t_s_s((*p_2023->g_156), 0x074EL)) >= 0L) , &l_254);
            p_2023->g_30 &= (+((-1L) < (l_271 , ((safe_lshift_func_int8_t_s_s((l_301 &= (safe_sub_func_int64_t_s_s(((((safe_add_func_int16_t_s_s(((safe_div_func_int8_t_s_s((((safe_sub_func_uint16_t_u_u((((safe_add_func_uint16_t_u_u((l_284 < (!((9UL >= (l_297 ^= ((*l_270) = (safe_rshift_func_int8_t_s_u((*l_270), (((((l_295 = (((*l_291) = p_161) < p_2023->g_25.s8)) > 4294967292UL) >= (l_296 == &p_2023->g_120)) < 0UL) , 0xF8L)))))) , (*l_270)))), p_161)) < 5L) > 0L), FAKE_DIVERGE(p_2023->global_2_offset, get_global_id(2), 10))) , 3UL) | l_298), 0xEDL)) > 0x1F34L), (*p_2023->g_156))) && 0x04L) , (void*)0) != p_2023->g_299), p_161))), l_302)) , p_161))));
            p_2023->g_318[0] |= (((VECTOR(uint32_t, 2))(l_303.yy)).odd && (safe_mod_func_uint32_t_u_u(((((*l_291) ^= FAKE_DIVERGE(p_2023->group_2_offset, get_group_id(2), 10)) > ((*p_2023->g_156) != p_2023->g_30)) > ((safe_sub_func_uint64_t_u_u((safe_sub_func_int16_t_s_s((9L || (((*l_270) = (safe_rshift_func_int8_t_s_u(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(0L, 0x49L)), 0x34L, 8L)), 0x1BL, 0x6EL, 0x29L, p_161, ((VECTOR(int8_t, 8))(l_312.s8f56aa0b)))).s4, 6))) || 0xB0B22199L)), l_297)), ((p_2023->g_314 &= (p_2023->g_313 == (void*)0)) | (p_2023->g_6 = (((VECTOR(int16_t, 2))(p_2023->g_315.s34)).lo , (safe_add_func_int32_t_s_s(((VECTOR(int32_t, 16))(p_161, 0x0EFFC479L, ((VECTOR(int32_t, 4))(0x725A0BAEL)), 0x2465EE46L, 0x5A65C302L, 0x59F5853FL, (-1L), ((VECTOR(int32_t, 4))(5L)), 0x50FD8B76L, (-1L))).s8, 0xDDB6DF4DL))))))) & p_2023->g_229)), l_284)));
            l_295 |= ((VECTOR(int32_t, 16))(p_161, 0x3B06748DL, ((VECTOR(int32_t, 8))(((l_319 == (void*)0) , 0x745B0738L), (-9L), ((*l_270) = (((*l_338) = ((safe_div_func_int16_t_s_s((safe_div_func_int8_t_s_s((l_297 = ((VECTOR(int8_t, 4))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 4),((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(safe_clamp_func(VECTOR(int8_t, 4),int8_t,((VECTOR(int8_t, 4))(((VECTOR(int8_t, 16))(mul_hi(((VECTOR(int8_t, 2))(hadd(((VECTOR(int8_t, 2))(hadd(((VECTOR(int8_t, 8))(rhadd(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(mul_hi(((VECTOR(int8_t, 2))(l_324.s26)).yyxxxxxy, ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 16))(rhadd(((VECTOR(int8_t, 2))(l_325.yx)).yyyxyxxxyxyyyxyy, ((VECTOR(int8_t, 2))(0x16L, 0x56L)).yyyyxyxyyyyxyxyx))))).lo))).s5154451717760702)).lo, ((VECTOR(int8_t, 16))(3L, (-1L), ((VECTOR(int8_t, 2))(0x04L, (-10L))), 0x60L, 0x08L, (p_161 | (safe_unary_minus_func_uint32_t_u(FAKE_DIVERGE(p_2023->local_1_offset, get_local_id(1), 10)))), (safe_sub_func_int16_t_s_s((safe_div_func_int32_t_s_s(((*l_270) ^ (safe_sub_func_uint64_t_u_u(((&l_301 != &l_295) > (safe_sub_func_uint8_t_u_u((FAKE_DIVERGE(p_2023->global_0_offset, get_global_id(0), 10) < (safe_mul_func_int8_t_s_s(((VECTOR(int8_t, 2))(p_2023->g_337.yy)).hi, ((*l_228) ^= 1UL)))), p_2023->g_27))), 4UL))), (*l_270))), 0x1739L)), ((VECTOR(int8_t, 2))((-1L))), p_161, 0x11L, 0L, ((VECTOR(int8_t, 2))(0x17L)), 0L)).hi))).s71, ((VECTOR(int8_t, 2))(0x2CL))))), ((VECTOR(int8_t, 2))(8L))))).yyyyxyxxxxxxyyyx, ((VECTOR(int8_t, 16))(0L))))).s94ee)), (int8_t)p_161, (int8_t)(-4L)))).hi)).xxyy)).wxwzzywz)).hi, ((VECTOR(int8_t, 4))(4L)), ((VECTOR(int8_t, 4))(0x19L))))).y), FAKE_DIVERGE(p_2023->group_1_offset, get_group_id(1), 10))), l_284)) , (void*)0)) == (void*)0)), ((VECTOR(int32_t, 2))(0x208B5089L)), p_161, 0x2721B8BFL, 0x3FB4BC8BL)), (*l_270), 0x4C9CBEE7L, ((VECTOR(int32_t, 2))(1L)), 0x7802E40AL, 0x74C16D5EL)).s2;
        }
        l_301 = (safe_unary_minus_func_uint32_t_u((0x1F8264CCL > ((((*l_345) |= (safe_mul_func_uint8_t_u_u((safe_mul_func_uint8_t_u_u(p_161, p_161)), ((*l_270) = ((VECTOR(int8_t, 16))(p_2023->g_344.s0144447530045231)).sc)))) , (((((*l_348)--) , (((p_2023->g_373.y = (p_2023->g_344.s3 > (((safe_rshift_func_uint8_t_u_s(((*l_270) != (p_161 < (+((*l_251) = (safe_mod_func_uint16_t_u_u((p_2023->g_120 |= ((*l_270) || (((*l_356) = (void*)0) != ((*l_358) = (void*)0)))), 0xFA69L)))))), 6)) && p_161) != GROUP_DIVERGE(1, 1)))) < p_161) , 0x0E91322AAA8D8FB9L)) || (*l_270)) , p_2023->g_346)) , p_2023->g_318[0]))));
        for (l_222 = 0; (l_222 <= 23); l_222 = safe_add_func_uint8_t_u_u(l_222, 8))
        { /* block id: 137 */
            int32_t *l_391 = &l_301;
            (**p_2023->g_172) = (l_391 = (((p_2023->g_344.s0 & ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(0xC33BFAD3105DCE6AL, 0xDE39D0980AF87D21L)), ((p_2023->g_30 || 0x58A028EC4BC7899AL) , (safe_unary_minus_func_uint32_t_u((safe_mod_func_uint32_t_u_u(((*l_270) > (safe_sub_func_uint64_t_u_u(((VECTOR(uint64_t, 8))((safe_lshift_func_uint8_t_u_s((l_383[0] == 1UL), ((VECTOR(int8_t, 4))(l_384.s4473)).w)), 0x1E7AFD318C7C7409L, ((VECTOR(uint64_t, 4))(p_161, ((+(safe_sub_func_int32_t_s_s(((((*l_270) != ((safe_mod_func_int16_t_s_s(((safe_mul_func_uint16_t_u_u(p_161, 0L)) == (*l_270)), p_161)) != 4294967295UL)) | (*p_2023->g_299)) | (*l_270)), p_161))) != 1UL), 18446744073709551610UL, 0x733E5292C6BECCE3L)), 6UL, 18446744073709551615UL)).s5, p_2023->g_373.x))), p_161))))), p_161, ((VECTOR(uint64_t, 2))(18446744073709551608UL)), 0x4E29CCF33A95A35DL, 0xD120CC5D3A5D9CD9L)).s7) <= 0UL) , (**p_2023->g_172)));
            (**p_2023->g_172) = l_391;
        }
    }
    else
    { /* block id: 142 */
        int32_t l_392 = (-1L);
        int32_t l_393 = 0L;
        int32_t l_394[7] = {0L,0L,0L,0L,0L,0L,0L};
        uint32_t l_395 = 8UL;
        int8_t **l_398[9][6][4] = {{{&p_2023->g_127[2],&p_2023->g_127[2],(void*)0,&l_241[0]},{&p_2023->g_127[2],&p_2023->g_127[2],(void*)0,&l_241[0]},{&p_2023->g_127[2],&p_2023->g_127[2],(void*)0,&l_241[0]},{&p_2023->g_127[2],&p_2023->g_127[2],(void*)0,&l_241[0]},{&p_2023->g_127[2],&p_2023->g_127[2],(void*)0,&l_241[0]},{&p_2023->g_127[2],&p_2023->g_127[2],(void*)0,&l_241[0]}},{{&p_2023->g_127[2],&p_2023->g_127[2],(void*)0,&l_241[0]},{&p_2023->g_127[2],&p_2023->g_127[2],(void*)0,&l_241[0]},{&p_2023->g_127[2],&p_2023->g_127[2],(void*)0,&l_241[0]},{&p_2023->g_127[2],&p_2023->g_127[2],(void*)0,&l_241[0]},{&p_2023->g_127[2],&p_2023->g_127[2],(void*)0,&l_241[0]},{&p_2023->g_127[2],&p_2023->g_127[2],(void*)0,&l_241[0]}},{{&p_2023->g_127[2],&p_2023->g_127[2],(void*)0,&l_241[0]},{&p_2023->g_127[2],&p_2023->g_127[2],(void*)0,&l_241[0]},{&p_2023->g_127[2],&p_2023->g_127[2],(void*)0,&l_241[0]},{&p_2023->g_127[2],&p_2023->g_127[2],(void*)0,&l_241[0]},{&p_2023->g_127[2],&p_2023->g_127[2],(void*)0,&l_241[0]},{&p_2023->g_127[2],&p_2023->g_127[2],(void*)0,&l_241[0]}},{{&p_2023->g_127[2],&p_2023->g_127[2],(void*)0,&l_241[0]},{&p_2023->g_127[2],&p_2023->g_127[2],(void*)0,&l_241[0]},{&p_2023->g_127[2],&p_2023->g_127[2],(void*)0,&l_241[0]},{&p_2023->g_127[2],&p_2023->g_127[2],(void*)0,&l_241[0]},{&p_2023->g_127[2],&p_2023->g_127[2],(void*)0,&l_241[0]},{&p_2023->g_127[2],&p_2023->g_127[2],(void*)0,&l_241[0]}},{{&p_2023->g_127[2],&p_2023->g_127[2],(void*)0,&l_241[0]},{&p_2023->g_127[2],&p_2023->g_127[2],(void*)0,&l_241[0]},{&p_2023->g_127[2],&p_2023->g_127[2],(void*)0,&l_241[0]},{&p_2023->g_127[2],&p_2023->g_127[2],(void*)0,&l_241[0]},{&p_2023->g_127[2],&p_2023->g_127[2],(void*)0,&l_241[0]},{&p_2023->g_127[2],&p_2023->g_127[2],(void*)0,&l_241[0]}},{{&p_2023->g_127[2],&p_2023->g_127[2],(void*)0,&l_241[0]},{&p_2023->g_127[2],&p_2023->g_127[2],(void*)0,&l_241[0]},{&p_2023->g_127[2],&p_2023->g_127[2],(void*)0,&l_241[0]},{&p_2023->g_127[2],&p_2023->g_127[2],(void*)0,&l_241[0]},{&p_2023->g_127[2],&p_2023->g_127[2],(void*)0,&l_241[0]},{&p_2023->g_127[2],&p_2023->g_127[2],(void*)0,&l_241[0]}},{{&p_2023->g_127[2],&p_2023->g_127[2],(void*)0,&l_241[0]},{&p_2023->g_127[2],&p_2023->g_127[2],(void*)0,&l_241[0]},{&p_2023->g_127[2],&p_2023->g_127[2],(void*)0,&l_241[0]},{&p_2023->g_127[2],&p_2023->g_127[2],(void*)0,&l_241[0]},{&p_2023->g_127[2],&p_2023->g_127[2],(void*)0,&l_241[0]},{&p_2023->g_127[2],&p_2023->g_127[2],(void*)0,&l_241[0]}},{{&p_2023->g_127[2],&p_2023->g_127[2],(void*)0,&l_241[0]},{&p_2023->g_127[2],&p_2023->g_127[2],(void*)0,&l_241[0]},{&p_2023->g_127[2],&p_2023->g_127[2],(void*)0,&l_241[0]},{&p_2023->g_127[2],&p_2023->g_127[2],(void*)0,&l_241[0]},{&p_2023->g_127[2],&p_2023->g_127[2],(void*)0,&l_241[0]},{&p_2023->g_127[2],&p_2023->g_127[2],(void*)0,&l_241[0]}},{{&p_2023->g_127[2],&p_2023->g_127[2],(void*)0,&l_241[0]},{&p_2023->g_127[2],&p_2023->g_127[2],(void*)0,&l_241[0]},{&p_2023->g_127[2],&p_2023->g_127[2],(void*)0,&l_241[0]},{&p_2023->g_127[2],&p_2023->g_127[2],(void*)0,&l_241[0]},{&p_2023->g_127[2],&p_2023->g_127[2],(void*)0,&l_241[0]},{&p_2023->g_127[2],&p_2023->g_127[2],(void*)0,&l_241[0]}}};
        int8_t ***l_399 = &p_2023->g_126;
        int i, j, k;
        l_395--;
        (*l_399) = l_398[1][3][3];
    }
    if (((VECTOR(int32_t, 16))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(l_400.s207b7d25)).s55)).yxyy)).wwwyxwwxzwxywzyw, ((VECTOR(int32_t, 16))(p_2023->g_401.s0ffffa6e6c67adb3)), ((VECTOR(int32_t, 16))(max(((VECTOR(int32_t, 4))(sub_sat(((VECTOR(int32_t, 8))(0x162F49A3L, ((VECTOR(int32_t, 2))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 8))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 4))(p_2023->g_402.sadd4)).zzxwywwz, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(l_403.yzwy)).wxyyxxyz)).odd)).hi)), (-10L), 0x777DAD46L)), ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 16))(min(((VECTOR(int32_t, 16))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 4))(l_404.yyzz)).ywzxwzzxzwywywzx, ((VECTOR(int32_t, 4))(l_405.s4772)).yywxyyzyxwwwxwxy))), ((VECTOR(int32_t, 8))(sub_sat(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(p_2023->g_406.xx)).yyyxxyyy)).s52)).yxxyyyyx, ((VECTOR(int32_t, 16))(0L, ((VECTOR(int32_t, 2))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 8))(p_161, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(rotate(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(0x13CE7C17L, 0x7B602AF4L, (safe_rshift_func_int8_t_s_s(p_161, 5)), 0x7E3DD51FL, (-7L), ((p_2023->g_411 = (void*)0) == &p_2023->g_126), p_161, ((VECTOR(int32_t, 4))(l_412.sabeb)), p_161, ((VECTOR(int32_t, 2))(0x1C1A7343L, 4L)), 8L, 0x79FCAC31L)).s07)).xxxy, ((VECTOR(int32_t, 8))(p_2023->g_413.zyyywywz)).hi))))), 1L, 0L, 0x283A13E3L)).s52, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(0x3DE38583L, (-7L), ((VECTOR(int32_t, 2))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))((p_2023->g_5 == l_414), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(mad_sat(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(l_415.s15a0)).zzxwwzxy)), ((VECTOR(int32_t, 8))(rhadd(((VECTOR(int32_t, 8))(9L, ((VECTOR(int32_t, 4))(l_416.zzyx)), ((VECTOR(int32_t, 2))(rhadd(((VECTOR(int32_t, 2))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(0L, 0x7E780E76L)))), ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(l_417.s74630214)).hi)), 0x7FDC5593L, (-3L))).s34, ((VECTOR(int32_t, 16))(l_418.sf369f7f0df6ceea9)).s73))), ((VECTOR(int32_t, 2))((-1L), 0x04AD5349L))))), 0L)), ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 16))(l_419.sc867a28533dbdfc0)).hi, ((VECTOR(int32_t, 2))(p_2023->g_420.yz)).yxxyxxxx, ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(l_421.s0532)).lo)))).yxxxxxxyyyxxyyyx)).even)))))))), ((VECTOR(int32_t, 4))(safe_clamp_func(VECTOR(int32_t, 4),VECTOR(int32_t, 4),((VECTOR(int32_t, 8))(upsample(((VECTOR(int16_t, 16))(add_sat(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(l_422.xzwxyywx)), ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 4))(l_423.s5716)).lo)).xyyy)), 2L, 1L, (-2L), 0x0D83L)), ((VECTOR(int16_t, 4))(clz(((VECTOR(int16_t, 8))(l_424.sfd8ecbec)).hi))).zxwywxwyzwwxzwyz))).hi, ((VECTOR(uint16_t, 2))(sub_sat(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(1UL, 6UL)), 0x17D0L, 0x90D6L)).lo, ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 16))(0x9736L, ((VECTOR(uint16_t, 4))(l_425.s7121)), ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(mad_sat(((VECTOR(uint16_t, 16))(l_426.s274f8e3d72f36bec)).sb0, ((VECTOR(uint16_t, 8))(0x51F8L, (p_2023->g_264.s6 = (GROUP_DIVERGE(2, 1) , ((*l_432) ^= ((VECTOR(uint16_t, 2))(l_427.yx)).lo))), ((l_434 = (((((p_2023->g_264.s2 == p_161) == l_433) > 0x4B8B8EF2L) <= 0x2DL) == p_161)) < p_161), 9UL, ((VECTOR(uint16_t, 2))(0UL)), 4UL, 0xAF48L)).s35, ((VECTOR(uint16_t, 2))(0x9F10L))))).xxxx)), ((VECTOR(uint16_t, 4))(0x7867L)), 0x06D1L, 0x959FL, 65530UL)))))).hi)).s12))).xxxxxyxy))).hi, ((VECTOR(int32_t, 4))((-5L))), ((VECTOR(int32_t, 4))(0x3BA33E0EL))))).yyzzwxyx))).s67)), 0x6C453A6DL)), ((VECTOR(int32_t, 4))(0x44D77566L)))).s52, ((VECTOR(int32_t, 2))((-4L))), ((VECTOR(int32_t, 2))(0L))))), 0x519C44ADL, ((VECTOR(int32_t, 2))(0x25C0E9B7L)), 0x50D1A3F0L)))).s66))))), (-9L), ((VECTOR(int32_t, 8))((-1L))), ((VECTOR(int32_t, 4))(0x18DC54B8L)))).lo))).s1232511566735532))).sbb, ((VECTOR(int32_t, 2))(0x485932ACL)), ((VECTOR(int32_t, 2))(0x29C6B13DL))))), p_161, (-5L), 0x42B6830FL, ((VECTOR(int32_t, 2))(7L)), 0x03B77AF9L)).lo)), 6L, 0x5B956C92L, 9L, 0x1BD2049CL)).lo)))), ((VECTOR(int32_t, 2))(0x7158AE56L)), 0x1B3AB3C3L, 2L, p_2023->g_435, ((VECTOR(int32_t, 2))(0L)), (-1L))), ((VECTOR(int32_t, 16))(1L)), ((VECTOR(int32_t, 16))(0L))))).odd)).s62, ((VECTOR(int32_t, 2))(1L)), ((VECTOR(int32_t, 2))(1L))))).xyyxxyyx)), ((VECTOR(int32_t, 8))((-1L)))))).lo)).xzyzwzxw)), ((VECTOR(int32_t, 8))(0x12233E1FL)), ((VECTOR(int32_t, 8))((-1L)))))).s32, ((VECTOR(int32_t, 2))(0x010CBC3EL))))), p_161, ((VECTOR(int32_t, 4))(4L)))).even, ((VECTOR(int32_t, 4))((-1L)))))).yxzzzxyyxzyxyzzy, ((VECTOR(int32_t, 16))(0L)))))))).s7)
    { /* block id: 150 */
        uint8_t l_440 = 255UL;
        VECTOR(int32_t, 8) l_451 = (VECTOR(int32_t, 8))(0x46C543EEL, (VECTOR(int32_t, 4))(0x46C543EEL, (VECTOR(int32_t, 2))(0x46C543EEL, 0x2FA052F8L), 0x2FA052F8L), 0x2FA052F8L, 0x46C543EEL, 0x2FA052F8L);
        int8_t l_455[9][3][9] = {{{(-4L),(-4L),8L,0x64L,0x67L,0x64L,8L,(-4L),(-4L)},{(-4L),(-4L),8L,0x64L,0x67L,0x64L,8L,(-4L),(-4L)},{(-4L),(-4L),8L,0x64L,0x67L,0x64L,8L,(-4L),(-4L)}},{{(-4L),(-4L),8L,0x64L,0x67L,0x64L,8L,(-4L),(-4L)},{(-4L),(-4L),8L,0x64L,0x67L,0x64L,8L,(-4L),(-4L)},{(-4L),(-4L),8L,0x64L,0x67L,0x64L,8L,(-4L),(-4L)}},{{(-4L),(-4L),8L,0x64L,0x67L,0x64L,8L,(-4L),(-4L)},{(-4L),(-4L),8L,0x64L,0x67L,0x64L,8L,(-4L),(-4L)},{(-4L),(-4L),8L,0x64L,0x67L,0x64L,8L,(-4L),(-4L)}},{{(-4L),(-4L),8L,0x64L,0x67L,0x64L,8L,(-4L),(-4L)},{(-4L),(-4L),8L,0x64L,0x67L,0x64L,8L,(-4L),(-4L)},{(-4L),(-4L),8L,0x64L,0x67L,0x64L,8L,(-4L),(-4L)}},{{(-4L),(-4L),8L,0x64L,0x67L,0x64L,8L,(-4L),(-4L)},{(-4L),(-4L),8L,0x64L,0x67L,0x64L,8L,(-4L),(-4L)},{(-4L),(-4L),8L,0x64L,0x67L,0x64L,8L,(-4L),(-4L)}},{{(-4L),(-4L),8L,0x64L,0x67L,0x64L,8L,(-4L),(-4L)},{(-4L),(-4L),8L,0x64L,0x67L,0x64L,8L,(-4L),(-4L)},{(-4L),(-4L),8L,0x64L,0x67L,0x64L,8L,(-4L),(-4L)}},{{(-4L),(-4L),8L,0x64L,0x67L,0x64L,8L,(-4L),(-4L)},{(-4L),(-4L),8L,0x64L,0x67L,0x64L,8L,(-4L),(-4L)},{(-4L),(-4L),8L,0x64L,0x67L,0x64L,8L,(-4L),(-4L)}},{{(-4L),(-4L),8L,0x64L,0x67L,0x64L,8L,(-4L),(-4L)},{(-4L),(-4L),8L,0x64L,0x67L,0x64L,8L,(-4L),(-4L)},{(-4L),(-4L),8L,0x64L,0x67L,0x64L,8L,(-4L),(-4L)}},{{(-4L),(-4L),8L,0x64L,0x67L,0x64L,8L,(-4L),(-4L)},{(-4L),(-4L),8L,0x64L,0x67L,0x64L,8L,(-4L),(-4L)},{(-4L),(-4L),8L,0x64L,0x67L,0x64L,8L,(-4L),(-4L)}}};
        int32_t l_456 = 0x402737ACL;
        uint64_t *l_484 = (void*)0;
        int32_t l_611 = 1L;
        int32_t *l_624[2];
        uint16_t l_649 = 0x279AL;
        VECTOR(uint16_t, 16) l_657 = (VECTOR(uint16_t, 16))(65534UL, (VECTOR(uint16_t, 4))(65534UL, (VECTOR(uint16_t, 2))(65534UL, 0x9723L), 0x9723L), 0x9723L, 65534UL, 0x9723L, (VECTOR(uint16_t, 2))(65534UL, 0x9723L), (VECTOR(uint16_t, 2))(65534UL, 0x9723L), 65534UL, 0x9723L, 65534UL, 0x9723L);
        uint64_t **l_662 = &p_2023->g_313;
        VECTOR(int32_t, 16) l_663 = (VECTOR(int32_t, 16))(6L, (VECTOR(int32_t, 4))(6L, (VECTOR(int32_t, 2))(6L, 0x45376B1DL), 0x45376B1DL), 0x45376B1DL, 6L, 0x45376B1DL, (VECTOR(int32_t, 2))(6L, 0x45376B1DL), (VECTOR(int32_t, 2))(6L, 0x45376B1DL), 6L, 0x45376B1DL, 6L, 0x45376B1DL);
        uint32_t l_673 = 4UL;
        uint64_t l_715[7] = {0xC67D631FC61B84BDL,0UL,0xC67D631FC61B84BDL,0xC67D631FC61B84BDL,0UL,0xC67D631FC61B84BDL,0xC67D631FC61B84BDL};
        int i, j, k;
        for (i = 0; i < 2; i++)
            l_624[i] = &p_2023->g_6;
        if (p_161)
        { /* block id: 151 */
            uint32_t *l_438 = (void*)0;
            uint32_t *l_439[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
            int32_t l_452[4];
            VECTOR(int8_t, 4) l_467 = (VECTOR(int8_t, 4))(0x27L, (VECTOR(int8_t, 2))(0x27L, (-3L)), (-3L));
            int32_t l_489 = 0x5DFE5F44L;
            int8_t ****l_500 = &p_2023->g_411;
            int i;
            for (i = 0; i < 4; i++)
                l_452[i] = 0x0AFF209DL;
            if ((safe_sub_func_int32_t_s_s(((l_440 ^= GROUP_DIVERGE(2, 1)) <= ((l_456 |= ((l_451.s7 = (safe_mod_func_uint32_t_u_u((safe_sub_func_uint64_t_u_u((safe_add_func_int64_t_s_s((safe_mod_func_uint8_t_u_u(0x13L, 0x0CL)), (safe_div_func_int8_t_s_s((0x7411F484L ^ p_161), (((*p_2023->g_299) ^= ((((VECTOR(int32_t, 8))(clz(((VECTOR(int32_t, 8))(mad_sat(((VECTOR(int32_t, 4))(0L, ((VECTOR(int32_t, 2))(1L, 0x2B25F9A6L)), 0x1FDB7691L)).yyzyzyxw, ((VECTOR(int32_t, 8))(mad_sat(((VECTOR(int32_t, 4))(l_451.s3156)).zwzzxxyz, ((VECTOR(int32_t, 16))(((l_452[0] | (safe_mod_func_uint32_t_u_u(1UL, (p_2023->g_406.z & ((*l_319) == (void*)0))))) > p_161), ((VECTOR(int32_t, 2))(0L)), p_161, l_455[4][2][4], 1L, (-1L), 0x23CCB29CL, ((VECTOR(int32_t, 2))(0L)), ((VECTOR(int32_t, 4))(0x62C870AAL)), (-1L), 0L)).odd, ((VECTOR(int32_t, 8))(0L))))), ((VECTOR(int32_t, 8))((-3L))))))))).s6 != (-1L)) >= l_452[0])) || p_161))))), 0x30B88A47F8CB2A0AL)), p_161))) , p_2023->g_120)) == p_161)), 0x7F62FD21L)))
            { /* block id: 156 */
                uint64_t l_459 = 0UL;
                VECTOR(int16_t, 4) l_481 = (VECTOR(int16_t, 4))(0x3C09L, (VECTOR(int16_t, 2))(0x3C09L, 0x5384L), 0x5384L);
                int32_t l_485 = 3L;
                int8_t l_486 = 0x39L;
                uint64_t *l_487 = &p_2023->g_314;
                uint16_t **l_490 = &l_428;
                uint32_t *l_491[8][7] = {{(void*)0,&p_2023->g_346,&p_2023->g_346,&p_2023->g_346,&p_2023->g_346,(void*)0,&p_2023->g_346},{(void*)0,&p_2023->g_346,&p_2023->g_346,&p_2023->g_346,&p_2023->g_346,(void*)0,&p_2023->g_346},{(void*)0,&p_2023->g_346,&p_2023->g_346,&p_2023->g_346,&p_2023->g_346,(void*)0,&p_2023->g_346},{(void*)0,&p_2023->g_346,&p_2023->g_346,&p_2023->g_346,&p_2023->g_346,(void*)0,&p_2023->g_346},{(void*)0,&p_2023->g_346,&p_2023->g_346,&p_2023->g_346,&p_2023->g_346,(void*)0,&p_2023->g_346},{(void*)0,&p_2023->g_346,&p_2023->g_346,&p_2023->g_346,&p_2023->g_346,(void*)0,&p_2023->g_346},{(void*)0,&p_2023->g_346,&p_2023->g_346,&p_2023->g_346,&p_2023->g_346,(void*)0,&p_2023->g_346},{(void*)0,&p_2023->g_346,&p_2023->g_346,&p_2023->g_346,&p_2023->g_346,(void*)0,&p_2023->g_346}};
                uint32_t **l_492[9][5] = {{(void*)0,&l_491[0][3],&l_491[1][0],&l_491[2][5],&l_491[0][0]},{(void*)0,&l_491[0][3],&l_491[1][0],&l_491[2][5],&l_491[0][0]},{(void*)0,&l_491[0][3],&l_491[1][0],&l_491[2][5],&l_491[0][0]},{(void*)0,&l_491[0][3],&l_491[1][0],&l_491[2][5],&l_491[0][0]},{(void*)0,&l_491[0][3],&l_491[1][0],&l_491[2][5],&l_491[0][0]},{(void*)0,&l_491[0][3],&l_491[1][0],&l_491[2][5],&l_491[0][0]},{(void*)0,&l_491[0][3],&l_491[1][0],&l_491[2][5],&l_491[0][0]},{(void*)0,&l_491[0][3],&l_491[1][0],&l_491[2][5],&l_491[0][0]},{(void*)0,&l_491[0][3],&l_491[1][0],&l_491[2][5],&l_491[0][0]}};
                int32_t l_495 = 0L;
                int i, j;
                l_489 ^= (~((safe_sub_func_uint8_t_u_u(((l_452[0] = (l_459 >= (((VECTOR(int64_t, 16))(p_2023->g_462.xxyxyxyyyxxyyyxy)).sa != (((VECTOR(int32_t, 8))(mul_hi(((VECTOR(int32_t, 16))(rotate(((VECTOR(int32_t, 8))(((safe_mul_func_uint16_t_u_u(p_161, (l_452[0] & ((*p_2023->g_299) = ((-1L) & (5L || (safe_mod_func_int8_t_s_s(((VECTOR(int8_t, 2))(l_467.wz)).lo, 0x8AL)))))))) == ((*l_487) = (safe_rshift_func_int8_t_s_u((l_467.x || p_2023->g_406.x), (safe_rshift_func_uint16_t_u_s((((VECTOR(int64_t, 8))(l_472.s71111631)).s2 & (~(((((l_451.s3 = (l_486 &= (safe_rshift_func_int16_t_s_u(((l_485 = (safe_sub_func_int16_t_s_s(((safe_mul_func_int16_t_s_s((safe_add_func_int16_t_s_s(((VECTOR(int16_t, 4))(clz(((VECTOR(int16_t, 16))(safe_clamp_func(VECTOR(int16_t, 16),VECTOR(int16_t, 16),((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(0L, 0x2AC4L)), 1L, (-1L))).yzxywzyxxzyzzwyz, ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 4))(l_481.zxwx)), 0x0707L, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 4))((safe_mul_func_int8_t_s_s(((&p_2023->g_314 == l_484) == (-7L)), l_451.s7)), l_452[0], 0x0A67L, 0x620AL)))), p_161, (-9L), (-9L), ((VECTOR(int16_t, 2))(0x36F7L)), 0x7869L, 0x0243L)), ((VECTOR(int16_t, 16))((-1L)))))).s81aa))).w, 0x594FL)), 0xF677L)) | p_161), l_467.x))) <= p_161), 7)))) , 0x77A90D7F2EA51787L) ^ GROUP_DIVERGE(2, 1)) <= l_452[0]) <= l_481.y))), p_161)))))), 6L, 0x41D01BAFL, l_467.z, (-2L), l_455[4][2][4], 0x77682C08L, (-10L))).s1751473706221036, ((VECTOR(int32_t, 16))((-8L)))))).even, ((VECTOR(int32_t, 8))(0x062D0611L))))).s6 >= p_2023->g_344.s1)))) > (-1L)), p_2023->g_318[0])) , p_2023->g_488));
                l_495 |= (((((*l_490) = &p_2023->g_120) == ((l_485 = (((p_2023->g_493 = l_491[0][0]) != (void*)0) , 9UL)) , &p_2023->g_120)) , p_161) != p_2023->g_494);
            }
            else
            { /* block id: 168 */
                uint64_t *l_507 = &p_2023->g_314;
                uint64_t *l_509 = &p_2023->g_349;
                uint64_t **l_508 = &l_509;
                uint64_t *l_510 = &p_2023->g_349;
                uint64_t *l_511 = &p_2023->g_512;
                int8_t ****l_513 = (void*)0;
                (**l_319) = (**l_319);
                (**l_319) = &l_452[1];
                (***p_2023->g_172) = (safe_sub_func_int16_t_s_s(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 4))(sub_sat(((VECTOR(int16_t, 8))(p_2023->g_498.saaad6d2a)).even, ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(0x32FCL, ((VECTOR(int16_t, 4))(p_2023->g_499.sc1a6)), 0x3C32L, 0L, 6L)).s5231570602707172)).s9379))))).odd)).lo, (((l_500 != ((((*l_511) ^= ((*l_510) = ((VECTOR(uint64_t, 8))(0x13D0D146610D6FBAL, 1UL, ((VECTOR(uint64_t, 2))(clz(((VECTOR(uint64_t, 4))(l_501.se5e1)).odd))), 0xA7A605D97BE8157AL, (safe_rshift_func_int8_t_s_u((((((VECTOR(int64_t, 8))(((VECTOR(int64_t, 8))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 8),((VECTOR(int64_t, 2))(l_504.s07)).xxxyyyyx, ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(l_505.sce)), 0x3FAB795EEA56BB82L, 0x1BE31ABBE4EE201FL)).lo)), 0x5AF2C282204CE9E6L, 0x6B1CB732E06E24FFL)).wxzwyzwx, ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(p_2023->g_506.sa205)).ywzwxxyx))))))).s7 >= ((l_507 == (void*)0) ^ (p_2023->g_25.s9 | ((p_161 || 0UL) == ((((((*l_508) = (p_2023->g_406.z , l_484)) != l_484) & l_452[0]) && 0xFDE756C5L) && p_2023->g_344.s5))))) & 1UL) , 0L), 7)), 0xC07123CF08FC4BF8L, 0xF1D6685561DE637AL)).s7)) , l_451.s7) , l_513)) & 0x56L) < p_2023->g_420.x)));
            }
        }
        else
        { /* block id: 176 */
            VECTOR(int8_t, 16) l_520 = (VECTOR(int8_t, 16))(0x2BL, (VECTOR(int8_t, 4))(0x2BL, (VECTOR(int8_t, 2))(0x2BL, 1L), 1L), 1L, 0x2BL, 1L, (VECTOR(int8_t, 2))(0x2BL, 1L), (VECTOR(int8_t, 2))(0x2BL, 1L), 0x2BL, 1L, 0x2BL, 1L);
            int8_t *l_528[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            int32_t l_534 = 1L;
            int8_t ***l_540[3];
            int32_t l_578 = 0x1841823FL;
            int32_t l_579 = 9L;
            int32_t l_580 = 0x45F52057L;
            int32_t l_581 = (-1L);
            int32_t l_582 = 3L;
            int32_t l_584 = 0x73A68AA2L;
            int32_t l_585 = 1L;
            int32_t l_586 = (-3L);
            int32_t l_589 = (-1L);
            int32_t l_590 = (-1L);
            int32_t l_591 = (-9L);
            int32_t l_592[4] = {0x7C38F840L,0x7C38F840L,0x7C38F840L,0x7C38F840L};
            VECTOR(int64_t, 2) l_608 = (VECTOR(int64_t, 2))(6L, 0x4F09CFE6D50216D4L);
            uint32_t l_612[2];
            int i;
            for (i = 0; i < 3; i++)
                l_540[i] = &p_2023->g_126;
            for (i = 0; i < 2; i++)
                l_612[i] = 4294967293UL;
            for (l_271 = 0; (l_271 >= 9); l_271 = safe_add_func_uint64_t_u_u(l_271, 1))
            { /* block id: 179 */
                int32_t *l_518 = (void*)0;
                int32_t *l_519 = &l_456;
                uint8_t *l_523 = (void*)0;
                int8_t *l_527 = &p_2023->g_318[0];
                int8_t *l_529 = (void*)0;
                int32_t l_533 = 0x5C3D3334L;
                for (l_222 = 0; (l_222 == 5); l_222 = safe_add_func_int64_t_s_s(l_222, 8))
                { /* block id: 182 */
                    VECTOR(uint64_t, 2) l_524 = (VECTOR(uint64_t, 2))(0x880726E711EB8A9EL, 0x125CE66F33B4C57FL);
                    int i;
                    if (((*p_2023->g_4) == l_518))
                    { /* block id: 183 */
                        (**l_319) = l_519;
                        (*p_2023->g_173) = (((p_2023->g_462.x , (-1L)) | (((VECTOR(int8_t, 2))(l_520.s44)).even ^ (((safe_div_func_int8_t_s_s((l_523 != (void*)0), ((!((VECTOR(uint64_t, 8))(l_524.yyyyxyyy)).s2) , p_2023->g_244[3][2][0]))) , (*p_2023->g_299)) > (safe_mod_func_uint8_t_u_u((l_527 != (l_529 = l_528[4])), (safe_sub_func_int64_t_s_s(((p_161 == (**p_2023->g_173)) != (***p_2023->g_172)), p_2023->g_25.s7))))))) , l_532);
                    }
                    else
                    { /* block id: 187 */
                        uint64_t l_535 = 8UL;
                        ++l_535;
                        (*p_2023->g_173) = &l_533;
                        (*p_2023->g_5) = (safe_mul_func_uint16_t_u_u(1UL, l_535));
                    }
                    return &p_2023->g_126;
                }
            }
            for (p_2023->g_27 = 26; (p_2023->g_27 > (-9)); p_2023->g_27--)
            { /* block id: 197 */
                int32_t l_548[9] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
                int32_t l_552 = 0x025BAC38L;
                int8_t ***l_560[1];
                int32_t **l_571 = &l_221[0];
                int32_t **l_572 = (void*)0;
                int32_t *l_574 = (void*)0;
                int32_t **l_573 = &l_574;
                uint64_t *l_577[3];
                int32_t l_583 = (-5L);
                int32_t l_587 = 0x6E537AD6L;
                int32_t l_588 = (-10L);
                int i;
                for (i = 0; i < 1; i++)
                    l_560[i] = &p_2023->g_126;
                for (i = 0; i < 3; i++)
                    l_577[i] = &p_2023->g_349;
                (**p_2023->g_172) = (*p_2023->g_4);
                for (l_242 = 0; (l_242 <= (-25)); l_242--)
                { /* block id: 201 */
                    uint32_t l_545 = 0x94B91FF7L;
                    int32_t l_549 = 0L;
                    int32_t l_550 = (-1L);
                    VECTOR(int32_t, 8) l_551 = (VECTOR(int32_t, 8))(2L, (VECTOR(int32_t, 4))(2L, (VECTOR(int32_t, 2))(2L, 7L), 7L), 7L, 2L, 7L);
                    int i;
                    l_456 = l_545;
                    if (l_545)
                        continue;
                    for (p_2023->g_314 = 0; (p_2023->g_314 <= 7); p_2023->g_314 = safe_add_func_int64_t_s_s(p_2023->g_314, 7))
                    { /* block id: 206 */
                        l_553++;
                        (*p_2023->g_173) = (**l_319);
                    }
                }
                l_534 = (((safe_sub_func_int32_t_s_s((safe_lshift_func_int8_t_s_u(((FAKE_DIVERGE(p_2023->local_1_offset, get_local_id(1), 10) , ((*l_532) = (&p_2023->g_126 != l_560[0]))) < p_161), ((safe_mod_func_uint64_t_u_u((safe_unary_minus_func_int8_t_s(p_161)), ((VECTOR(int64_t, 8))(rotate(((VECTOR(int64_t, 8))(add_sat(((VECTOR(int64_t, 16))(l_564.s0451264433631472)).even, ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 2))(0x3B7E6D164E6B4913L, (-6L))).xyxxyyxyyxyxyyxy)).s7f)).yxxxyxyx))), ((VECTOR(int64_t, 2))(0x54067846ABC390D9L, (-1L))).yxxxxxxx))).s7)) || (((*p_2023->g_299) = p_161) & (((l_451.s4 = (safe_div_func_uint32_t_u_u(p_2023->g_402.sd, (safe_sub_func_uint16_t_u_u((~(((safe_add_func_uint64_t_u_u(((((**l_319) = (*p_2023->g_173)) != ((*l_573) = ((*l_571) = (void*)0))) | (((!((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(p_2023->g_575.sdd)).yxyyyyxyxxxxyyyy)).s9) != p_2023->g_576[7]) , p_161)), p_2023->g_576[7])) , 0x5C3EL) >= (*p_2023->g_156))), 0x9E6FL))))) , p_161) && 1L))))), p_2023->g_comm_values[p_2023->tid])) , l_520.s5) , 1L);
                --p_2023->g_593;
            }
            l_612[1] = (safe_div_func_int8_t_s_s(((p_161 & (safe_rshift_func_int8_t_s_u((0x2119L >= (safe_mul_func_uint8_t_u_u((safe_lshift_func_int8_t_s_u(((safe_add_func_int32_t_s_s((safe_div_func_int64_t_s_s(((VECTOR(int64_t, 8))(l_608.yxxyxxyy)).s1, ((((p_161 , (safe_rshift_func_int8_t_s_u((p_2023->g_25.s7 , 0x1BL), 7))) <= (+(&p_2023->g_229 != &l_433))) >= 18446744073709551608UL) ^ 0xA93810FDL))), p_2023->g_420.z)) | (*l_532)), 4)), l_611))), 4))) , p_161), l_581));
        }
        (**l_319) = (((safe_sub_func_int32_t_s_s(((*l_532) &= (safe_unary_minus_func_int64_t_s(((VECTOR(int64_t, 16))(min(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))(0x382B437C5D59EB49L, (-3L))), ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 16))(((!0x7881L) && (((0x65A3L != l_451.s0) , &l_430) != p_2023->g_616[0])), ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 8))(clz(((VECTOR(int64_t, 16))(1L, (safe_mod_func_int16_t_s_s(((safe_div_func_int32_t_s_s(((0x6213L > 0xA32AL) ^ (l_440 || ((safe_div_func_int32_t_s_s((l_456 = (l_451.s6 = p_161)), 0x2875AD0BL)) && p_161))), p_2023->g_506.sb)) | l_611), l_440)), ((VECTOR(int64_t, 4))(0x763113E7D5323CD2L)), ((VECTOR(int64_t, 2))(0x475A8FCD18146642L)), 0L, 0x04F2A4BCB8DF3749L, p_161, ((VECTOR(int64_t, 2))(0x74D7BFE3F7E96DFEL)), p_161, (-1L), 0x36188D172AEDD5B6L)).even))), l_451.s5, ((VECTOR(int64_t, 2))(0x32FDA40C8C2C1981L)), ((VECTOR(int64_t, 2))(0x5682545B62B83946L)), 0x46CCC5F4FAE1D914L, 1L, 0x5CD71E622FB6D810L)).hi)), ((VECTOR(int64_t, 2))(0x2AF2D3B344311133L)), ((VECTOR(int64_t, 2))(0x094C43FE5460478EL)), ((VECTOR(int64_t, 2))((-1L))), 0x5D6331829CEFB516L)).s99dd)), 0x1EEB43E5EADA0804L, (-8L))).s6653404050026153, ((VECTOR(int64_t, 16))(0x510B40C33F0E0BE3L))))).sc))), 0x02736483L)) < p_161) , l_624[1]);
        for (p_2023->g_314 = 0; (p_2023->g_314 != 51); ++p_2023->g_314)
        { /* block id: 228 */
            uint32_t l_635 = 0UL;
            int8_t **l_638 = &l_241[2];
            int32_t l_642 = 1L;
            VECTOR(int8_t, 8) l_650 = (VECTOR(int8_t, 8))(9L, (VECTOR(int8_t, 4))(9L, (VECTOR(int8_t, 2))(9L, 0x73L), 0x73L), 0x73L, 9L, 0x73L);
            int i;
            (**p_2023->g_173) = (safe_div_func_int64_t_s_s(p_161, ((((safe_add_func_int8_t_s_s((l_635 &= ((p_2023->g_462.y < (safe_div_func_uint8_t_u_u(l_633, p_161))) & ((*p_2023->g_299) = (((VECTOR(int32_t, 2))(((VECTOR(int32_t, 8))(p_2023->g_634.s4c10b936)).s03)).lo < 0UL)))), ((((safe_rshift_func_int8_t_s_s((~(l_638 == (void*)0)), ((((((!(l_640 = (((VECTOR(uint32_t, 16))(hadd(((VECTOR(uint32_t, 16))(l_639.sc45c5a03ac6daa03)), ((VECTOR(uint32_t, 2))(0xA1B04F0EL, 5UL)).xxyxyyyyxxyyyxxy))).s6 && (&l_455[6][0][4] == (void*)0)))) || l_641) ^ l_642) , (void*)0) == (void*)0) , l_642))) && GROUP_DIVERGE(2, 1)) && (***l_319)) || 65535UL))) && p_161) & 1L) , p_161)));
            for (l_642 = 0; (l_642 == 3); ++l_642)
            { /* block id: 235 */
                (*l_532) = ((safe_mod_func_uint16_t_u_u(p_161, GROUP_DIVERGE(2, 1))) , (safe_lshift_func_int8_t_s_s(l_649, (!((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(0x3AL, 0x55L)), (-1L), 8L)), ((VECTOR(int8_t, 4))(l_650.s2253)))).s2))));
                (*p_2023->g_651) = ((*p_2023->g_173) = (*p_2023->g_173));
            }
        }
        if ((p_161 , (!((*l_532) &= (safe_add_func_int8_t_s_s((l_484 == (void*)0), ((((p_161 < (safe_div_func_int32_t_s_s(((((*l_243) = (((VECTOR(uint16_t, 8))(l_657.sdd8da37d)).s6 <= p_161)) && p_161) < (&p_2023->g_229 != (((VECTOR(uint64_t, 2))(l_658.yx)).odd , ((safe_add_func_uint32_t_u_u((l_661 != ((*l_662) = l_661)), 1L)) , &p_2023->g_229)))), p_2023->g_402.s6))) > p_161) != p_2023->g_120) || 0x2DBAD58878A76951L)))))))
        { /* block id: 244 */
            VECTOR(int32_t, 4) l_666 = (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x265639CAL), 0x265639CAL);
            int32_t l_706 = 3L;
            int i;
            (***l_319) = ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 4))(safe_clamp_func(VECTOR(int32_t, 4),VECTOR(int32_t, 4),((VECTOR(int32_t, 2))(l_663.s70)).yyxx, ((VECTOR(int32_t, 2))(add_sat(((VECTOR(int32_t, 8))(l_664.s66116355)).s11, ((VECTOR(int32_t, 4))(mul_hi(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(add_sat(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 2))(p_2023->g_665.s78)).yxyy, ((VECTOR(int32_t, 8))(l_666.zxzxwzxw)).hi, ((VECTOR(int32_t, 16))(p_2023->g_667.s7251717013505013)).sbd95))).lo)))), ((VECTOR(int32_t, 2))(sub_sat(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(p_2023->g_668.scf)).xyyxyxyxxxxyxyyx)).sf8, ((VECTOR(int32_t, 4))(0x4D945ED5L, 0x065EE2D3L, (-1L), 0L)).lo)))))).yyyxxxxy)).hi, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(p_2023->g_669.yyyyyyxyyyyyyxyx)).sd270))))).lo))).xyyx, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(p_2023->g_670.s0535)).wyyyyzzw)).lo))))).w;
            for (p_2023->g_30 = 0; (p_2023->g_30 != 17); p_2023->g_30++)
            { /* block id: 248 */
                uint64_t *l_686 = &p_2023->g_349;
                uint64_t **l_685[1];
                int32_t l_705 = 0x41EE2701L;
                int i;
                for (i = 0; i < 1; i++)
                    l_685[i] = &l_686;
                l_673--;
                for (p_2023->g_120 = 13; (p_2023->g_120 != 26); p_2023->g_120++)
                { /* block id: 252 */
                    (*l_410) = (void*)0;
                }
                for (l_640 = 9; (l_640 == 13); l_640 = safe_add_func_int64_t_s_s(l_640, 1))
                { /* block id: 257 */
                    int32_t l_704 = (-1L);
                    for (p_161 = 0; (p_161 >= (-29)); --p_161)
                    { /* block id: 260 */
                        l_705 = (safe_mul_func_uint8_t_u_u((safe_unary_minus_func_uint64_t_u((((l_685[0] != p_2023->g_687) <= (((*p_2023->g_156) && ((*l_432) = (safe_rshift_func_int16_t_s_s((safe_div_func_uint32_t_u_u(0UL, ((***p_2023->g_172) = (safe_mul_func_int16_t_s_s(p_161, ((VECTOR(int16_t, 8))(max(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(9L, 1L)), 0x435BL, (-2L), ((VECTOR(int16_t, 2))(1L, 0x080AL)), (GROUP_DIVERGE(2, 1) < (!(l_666.z = ((safe_add_func_int32_t_s_s((safe_mul_func_int8_t_s_s((safe_sub_func_uint64_t_u_u(p_161, p_161)), l_704)), p_161)) != l_705)))), ((VECTOR(int16_t, 4))(0x5F1CL)), 0x30BAL, ((VECTOR(int16_t, 2))(0x7EA6L)), (-1L), 0L)).lo, ((VECTOR(int16_t, 8))(0x5482L))))).s5))))), p_161)))) & 0x009E8922L)) == p_161))), l_706));
                    }
                }
            }
        }
        else
        { /* block id: 268 */
            int8_t l_707 = 7L;
            int32_t l_708 = (-9L);
            int32_t l_709 = (-10L);
            int32_t l_710 = 8L;
            int32_t l_711 = (-1L);
            int32_t l_712 = (-10L);
            int32_t l_713 = (-5L);
            int32_t l_714[9] = {0x7059E12FL,0x7059E12FL,0x7059E12FL,0x7059E12FL,0x7059E12FL,0x7059E12FL,0x7059E12FL,0x7059E12FL,0x7059E12FL};
            int i;
            l_715[0]--;
        }
    }
    else
    { /* block id: 271 */
        uint32_t *l_947[9][8][3] = {{{(void*)0,&p_2023->g_346,&p_2023->g_346},{(void*)0,&p_2023->g_346,&p_2023->g_346},{(void*)0,&p_2023->g_346,&p_2023->g_346},{(void*)0,&p_2023->g_346,&p_2023->g_346},{(void*)0,&p_2023->g_346,&p_2023->g_346},{(void*)0,&p_2023->g_346,&p_2023->g_346},{(void*)0,&p_2023->g_346,&p_2023->g_346},{(void*)0,&p_2023->g_346,&p_2023->g_346}},{{(void*)0,&p_2023->g_346,&p_2023->g_346},{(void*)0,&p_2023->g_346,&p_2023->g_346},{(void*)0,&p_2023->g_346,&p_2023->g_346},{(void*)0,&p_2023->g_346,&p_2023->g_346},{(void*)0,&p_2023->g_346,&p_2023->g_346},{(void*)0,&p_2023->g_346,&p_2023->g_346},{(void*)0,&p_2023->g_346,&p_2023->g_346},{(void*)0,&p_2023->g_346,&p_2023->g_346}},{{(void*)0,&p_2023->g_346,&p_2023->g_346},{(void*)0,&p_2023->g_346,&p_2023->g_346},{(void*)0,&p_2023->g_346,&p_2023->g_346},{(void*)0,&p_2023->g_346,&p_2023->g_346},{(void*)0,&p_2023->g_346,&p_2023->g_346},{(void*)0,&p_2023->g_346,&p_2023->g_346},{(void*)0,&p_2023->g_346,&p_2023->g_346},{(void*)0,&p_2023->g_346,&p_2023->g_346}},{{(void*)0,&p_2023->g_346,&p_2023->g_346},{(void*)0,&p_2023->g_346,&p_2023->g_346},{(void*)0,&p_2023->g_346,&p_2023->g_346},{(void*)0,&p_2023->g_346,&p_2023->g_346},{(void*)0,&p_2023->g_346,&p_2023->g_346},{(void*)0,&p_2023->g_346,&p_2023->g_346},{(void*)0,&p_2023->g_346,&p_2023->g_346},{(void*)0,&p_2023->g_346,&p_2023->g_346}},{{(void*)0,&p_2023->g_346,&p_2023->g_346},{(void*)0,&p_2023->g_346,&p_2023->g_346},{(void*)0,&p_2023->g_346,&p_2023->g_346},{(void*)0,&p_2023->g_346,&p_2023->g_346},{(void*)0,&p_2023->g_346,&p_2023->g_346},{(void*)0,&p_2023->g_346,&p_2023->g_346},{(void*)0,&p_2023->g_346,&p_2023->g_346},{(void*)0,&p_2023->g_346,&p_2023->g_346}},{{(void*)0,&p_2023->g_346,&p_2023->g_346},{(void*)0,&p_2023->g_346,&p_2023->g_346},{(void*)0,&p_2023->g_346,&p_2023->g_346},{(void*)0,&p_2023->g_346,&p_2023->g_346},{(void*)0,&p_2023->g_346,&p_2023->g_346},{(void*)0,&p_2023->g_346,&p_2023->g_346},{(void*)0,&p_2023->g_346,&p_2023->g_346},{(void*)0,&p_2023->g_346,&p_2023->g_346}},{{(void*)0,&p_2023->g_346,&p_2023->g_346},{(void*)0,&p_2023->g_346,&p_2023->g_346},{(void*)0,&p_2023->g_346,&p_2023->g_346},{(void*)0,&p_2023->g_346,&p_2023->g_346},{(void*)0,&p_2023->g_346,&p_2023->g_346},{(void*)0,&p_2023->g_346,&p_2023->g_346},{(void*)0,&p_2023->g_346,&p_2023->g_346},{(void*)0,&p_2023->g_346,&p_2023->g_346}},{{(void*)0,&p_2023->g_346,&p_2023->g_346},{(void*)0,&p_2023->g_346,&p_2023->g_346},{(void*)0,&p_2023->g_346,&p_2023->g_346},{(void*)0,&p_2023->g_346,&p_2023->g_346},{(void*)0,&p_2023->g_346,&p_2023->g_346},{(void*)0,&p_2023->g_346,&p_2023->g_346},{(void*)0,&p_2023->g_346,&p_2023->g_346},{(void*)0,&p_2023->g_346,&p_2023->g_346}},{{(void*)0,&p_2023->g_346,&p_2023->g_346},{(void*)0,&p_2023->g_346,&p_2023->g_346},{(void*)0,&p_2023->g_346,&p_2023->g_346},{(void*)0,&p_2023->g_346,&p_2023->g_346},{(void*)0,&p_2023->g_346,&p_2023->g_346},{(void*)0,&p_2023->g_346,&p_2023->g_346},{(void*)0,&p_2023->g_346,&p_2023->g_346},{(void*)0,&p_2023->g_346,&p_2023->g_346}}};
        int32_t l_948 = (-6L);
        uint64_t **l_1031[7] = {(void*)0,&l_661,(void*)0,(void*)0,&l_661,(void*)0,(void*)0};
        uint8_t *l_1039 = (void*)0;
        int8_t **l_1066 = (void*)0;
        int8_t ****l_1071 = &p_2023->g_411;
        int32_t **l_1077[10][10][2] = {{{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652}},{{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652}},{{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652}},{{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652}},{{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652}},{{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652}},{{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652}},{{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652}},{{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652}},{{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652},{&p_2023->g_5,&p_2023->g_652}}};
        uint16_t l_1086 = 1UL;
        VECTOR(uint16_t, 2) l_1115 = (VECTOR(uint16_t, 2))(65535UL, 0UL);
        VECTOR(uint16_t, 2) l_1116 = (VECTOR(uint16_t, 2))(65534UL, 0x6455L);
        VECTOR(uint8_t, 8) l_1118 = (VECTOR(uint8_t, 8))(253UL, (VECTOR(uint8_t, 4))(253UL, (VECTOR(uint8_t, 2))(253UL, 4UL), 4UL), 4UL, 253UL, 4UL);
        uint16_t **l_1163 = &l_431;
        uint16_t l_1184 = 65526UL;
        int i, j, k;
        if ((atomic_inc(&p_2023->g_atomic_input[43 * get_linear_group_id() + 12]) == 1))
        { /* block id: 273 */
            int32_t l_719 = 1L;
            int32_t *l_718 = &l_719;
            int32_t l_720 = (-3L);
            uint32_t l_721 = 4294967286UL;
            int64_t l_724 = 0x205E27A5B9B0B753L;
            uint32_t l_725[6][10][1] = {{{0x462EC548L},{0x462EC548L},{0x462EC548L},{0x462EC548L},{0x462EC548L},{0x462EC548L},{0x462EC548L},{0x462EC548L},{0x462EC548L},{0x462EC548L}},{{0x462EC548L},{0x462EC548L},{0x462EC548L},{0x462EC548L},{0x462EC548L},{0x462EC548L},{0x462EC548L},{0x462EC548L},{0x462EC548L},{0x462EC548L}},{{0x462EC548L},{0x462EC548L},{0x462EC548L},{0x462EC548L},{0x462EC548L},{0x462EC548L},{0x462EC548L},{0x462EC548L},{0x462EC548L},{0x462EC548L}},{{0x462EC548L},{0x462EC548L},{0x462EC548L},{0x462EC548L},{0x462EC548L},{0x462EC548L},{0x462EC548L},{0x462EC548L},{0x462EC548L},{0x462EC548L}},{{0x462EC548L},{0x462EC548L},{0x462EC548L},{0x462EC548L},{0x462EC548L},{0x462EC548L},{0x462EC548L},{0x462EC548L},{0x462EC548L},{0x462EC548L}},{{0x462EC548L},{0x462EC548L},{0x462EC548L},{0x462EC548L},{0x462EC548L},{0x462EC548L},{0x462EC548L},{0x462EC548L},{0x462EC548L},{0x462EC548L}}};
            uint8_t l_726 = 253UL;
            uint64_t l_727 = 0x7DEE2C7AE7A23195L;
            uint32_t l_728 = 1UL;
            VECTOR(int32_t, 16) l_729 = (VECTOR(int32_t, 16))(0x3BB1960AL, (VECTOR(int32_t, 4))(0x3BB1960AL, (VECTOR(int32_t, 2))(0x3BB1960AL, (-1L)), (-1L)), (-1L), 0x3BB1960AL, (-1L), (VECTOR(int32_t, 2))(0x3BB1960AL, (-1L)), (VECTOR(int32_t, 2))(0x3BB1960AL, (-1L)), 0x3BB1960AL, (-1L), 0x3BB1960AL, (-1L));
            int i, j, k;
            l_718 = l_718;
            --l_721;
            (*l_718) |= l_724;
            if (((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))((-1L), (-1L))), l_725[0][3][0], ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(0x78951B4CL, 0x1F39CFB5L)).yxyx)).z, l_726, ((VECTOR(int32_t, 2))(hadd(((VECTOR(int32_t, 16))(safe_clamp_func(VECTOR(int32_t, 16),int32_t,((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(0x660D9560L, 0x31E59400L)), 0x596C7D9CL, 0L)).zzwwxzyzxyyyxxyw, (int32_t)(l_727 = 0L), (int32_t)l_728))).s9e, ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))(l_729.s351c)).hi))))), (-9L))).s2)
            { /* block id: 278 */
                uint64_t l_730 = 18446744073709551607UL;
                uint32_t l_731[3];
                VECTOR(int16_t, 2) l_732 = (VECTOR(int16_t, 2))(0x24F3L, (-5L));
                uint64_t l_733 = 0xCD86282854AB355EL;
                uint16_t l_734 = 0x5908L;
                uint32_t l_735 = 0xA4F4EB31L;
                uint32_t l_736[5];
                VECTOR(uint32_t, 8) l_737 = (VECTOR(uint32_t, 8))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 7UL), 7UL), 7UL, 0UL, 7UL);
                int16_t l_738 = 0x0E72L;
                VECTOR(int8_t, 4) l_739 = (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, (-2L)), (-2L));
                uint32_t l_740 = 0x8B7F8D77L;
                VECTOR(int8_t, 2) l_741 = (VECTOR(int8_t, 2))(0x4EL, 0x23L);
                uint64_t l_742 = 18446744073709551615UL;
                VECTOR(int8_t, 2) l_743 = (VECTOR(int8_t, 2))(0x20L, 0x52L);
                VECTOR(int8_t, 4) l_744 = (VECTOR(int8_t, 4))(0x5EL, (VECTOR(int8_t, 2))(0x5EL, 0x36L), 0x36L);
                uint64_t l_745 = 3UL;
                uint32_t l_746 = 0x8C3BE976L;
                int32_t l_747 = 0x4B702A25L;
                int32_t l_748 = 0x221343B7L;
                uint8_t l_749 = 1UL;
                int32_t l_750[8] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
                uint8_t l_751 = 249UL;
                uint32_t l_752 = 4294967292UL;
                int32_t l_867 = 1L;
                uint32_t l_868 = 0x0402C08EL;
                int i;
                for (i = 0; i < 3; i++)
                    l_731[i] = 0x7E97B018L;
                for (i = 0; i < 5; i++)
                    l_736[i] = 4294967295UL;
                if (((l_726 = ((VECTOR(uint8_t, 2))(abs_diff(((VECTOR(int8_t, 4))(safe_clamp_func(VECTOR(int8_t, 4),int8_t,((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(max(((VECTOR(int8_t, 8))(((l_735 = (l_730 , (((l_732.x ^= l_731[1]) , FAKE_DIVERGE(p_2023->local_1_offset, get_local_id(1), 10)) , (l_734 = l_733)))) , l_736[0]), 0x48L, ((((VECTOR(uint32_t, 8))(l_737.s36376507)).s7 , l_738) , (l_740 = ((VECTOR(int8_t, 4))(l_739.wwxx)).y)), ((VECTOR(int8_t, 4))(l_741.xyyy)), 0x5FL)).s73, (int8_t)l_742))), ((VECTOR(int8_t, 4))(hadd(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 8))(l_743.xyyyxxxy)))).even, ((VECTOR(int8_t, 8))(clz(((VECTOR(int8_t, 2))(mul_hi(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(l_744.yy)).xxyyyyxyyxxyxxxx)).s07, ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 16))((l_746 = l_745), 0x50L, l_747, l_748, ((VECTOR(int8_t, 2))((-8L))), 0x43L, (-1L), l_749, (-6L), 0x3EL, ((VECTOR(int8_t, 4))(4L)), 0x5EL)).s56)).yyxyyxxyxxyyxyxx)).s84))).yyxyyyyx))).even))), l_750[7], l_751, 0L, (-8L), 0L, ((VECTOR(int8_t, 2))(0x2AL)), ((VECTOR(int8_t, 2))((-1L))), 0x15L)).sb387, (int8_t)1L, (int8_t)l_752))).lo, ((VECTOR(int8_t, 2))(0x7CL))))).odd) , 0L))
                { /* block id: 285 */
                    int32_t l_753 = 0x50FE79E0L;
                    int32_t l_767[2][1][8] = {{{0L,0L,0L,0L,0L,0L,0L,0L}},{{0L,0L,0L,0L,0L,0L,0L,0L}}};
                    uint32_t l_768 = 7UL;
                    VECTOR(uint16_t, 16) l_771 = (VECTOR(uint16_t, 16))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0x5968L), 0x5968L), 0x5968L, 0UL, 0x5968L, (VECTOR(uint16_t, 2))(0UL, 0x5968L), (VECTOR(uint16_t, 2))(0UL, 0x5968L), 0UL, 0x5968L, 0UL, 0x5968L);
                    VECTOR(uint16_t, 2) l_772 = (VECTOR(uint16_t, 2))(65535UL, 0xEA19L);
                    VECTOR(uint16_t, 16) l_773 = (VECTOR(uint16_t, 16))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 1UL), 1UL), 1UL, 0UL, 1UL, (VECTOR(uint16_t, 2))(0UL, 1UL), (VECTOR(uint16_t, 2))(0UL, 1UL), 0UL, 1UL, 0UL, 1UL);
                    int32_t l_774 = 0x03FEF5D4L;
                    VECTOR(uint16_t, 16) l_775 = (VECTOR(uint16_t, 16))(0x156EL, (VECTOR(uint16_t, 4))(0x156EL, (VECTOR(uint16_t, 2))(0x156EL, 65535UL), 65535UL), 65535UL, 0x156EL, 65535UL, (VECTOR(uint16_t, 2))(0x156EL, 65535UL), (VECTOR(uint16_t, 2))(0x156EL, 65535UL), 0x156EL, 65535UL, 0x156EL, 65535UL);
                    int32_t l_776 = 0x28AD990FL;
                    uint32_t l_777[6][2] = {{0x55AE255EL,0x55AE255EL},{0x55AE255EL,0x55AE255EL},{0x55AE255EL,0x55AE255EL},{0x55AE255EL,0x55AE255EL},{0x55AE255EL,0x55AE255EL},{0x55AE255EL,0x55AE255EL}};
                    uint64_t l_778[5][8] = {{8UL,18446744073709551609UL,0UL,1UL,18446744073709551609UL,1UL,0UL,18446744073709551609UL},{8UL,18446744073709551609UL,0UL,1UL,18446744073709551609UL,1UL,0UL,18446744073709551609UL},{8UL,18446744073709551609UL,0UL,1UL,18446744073709551609UL,1UL,0UL,18446744073709551609UL},{8UL,18446744073709551609UL,0UL,1UL,18446744073709551609UL,1UL,0UL,18446744073709551609UL},{8UL,18446744073709551609UL,0UL,1UL,18446744073709551609UL,1UL,0UL,18446744073709551609UL}};
                    uint64_t l_779 = 3UL;
                    int64_t l_780[5] = {0L,0L,0L,0L,0L};
                    VECTOR(uint16_t, 2) l_783 = (VECTOR(uint16_t, 2))(1UL, 1UL);
                    VECTOR(uint16_t, 8) l_784 = (VECTOR(uint16_t, 8))(0xCB9AL, (VECTOR(uint16_t, 4))(0xCB9AL, (VECTOR(uint16_t, 2))(0xCB9AL, 0x9B13L), 0x9B13L), 0x9B13L, 0xCB9AL, 0x9B13L);
                    VECTOR(int16_t, 16) l_785 = (VECTOR(int16_t, 16))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x75BCL), 0x75BCL), 0x75BCL, (-1L), 0x75BCL, (VECTOR(int16_t, 2))((-1L), 0x75BCL), (VECTOR(int16_t, 2))((-1L), 0x75BCL), (-1L), 0x75BCL, (-1L), 0x75BCL);
                    VECTOR(int16_t, 4) l_786 = (VECTOR(int16_t, 4))(0x64F0L, (VECTOR(int16_t, 2))(0x64F0L, 0L), 0L);
                    int16_t l_787 = 0L;
                    uint32_t l_788 = 4294967295UL;
                    int64_t l_789[6];
                    int64_t l_790[5][5] = {{0x12BAD21EC13FF0EBL,0x12BAD21EC13FF0EBL,0x12BAD21EC13FF0EBL,0x12BAD21EC13FF0EBL,0x12BAD21EC13FF0EBL},{0x12BAD21EC13FF0EBL,0x12BAD21EC13FF0EBL,0x12BAD21EC13FF0EBL,0x12BAD21EC13FF0EBL,0x12BAD21EC13FF0EBL},{0x12BAD21EC13FF0EBL,0x12BAD21EC13FF0EBL,0x12BAD21EC13FF0EBL,0x12BAD21EC13FF0EBL,0x12BAD21EC13FF0EBL},{0x12BAD21EC13FF0EBL,0x12BAD21EC13FF0EBL,0x12BAD21EC13FF0EBL,0x12BAD21EC13FF0EBL,0x12BAD21EC13FF0EBL},{0x12BAD21EC13FF0EBL,0x12BAD21EC13FF0EBL,0x12BAD21EC13FF0EBL,0x12BAD21EC13FF0EBL,0x12BAD21EC13FF0EBL}};
                    int64_t l_791[9];
                    int16_t l_792 = 0L;
                    int32_t *l_829 = &l_753;
                    int32_t *l_830 = &l_753;
                    int32_t *l_831 = &l_753;
                    int32_t *l_832 = &l_753;
                    int i, j, k;
                    for (i = 0; i < 6; i++)
                        l_789[i] = 0x50A5C6F80A1810A2L;
                    for (i = 0; i < 9; i++)
                        l_791[i] = (-1L);
                    for (l_753 = 0; (l_753 != 29); l_753 = safe_add_func_uint16_t_u_u(l_753, 8))
                    { /* block id: 288 */
                        uint8_t l_756 = 0UL;
                        int8_t l_759[6] = {4L,4L,4L,4L,4L,4L};
                        int16_t l_760[1][3][5] = {{{(-1L),(-1L),3L,0x0623L,0x55F4L},{(-1L),(-1L),3L,0x0623L,0x55F4L},{(-1L),(-1L),3L,0x0623L,0x55F4L}}};
                        int8_t l_761 = 0x1AL;
                        int32_t *l_762 = (void*)0;
                        int32_t l_764 = 0x1B377A5BL;
                        int32_t *l_763 = &l_764;
                        int32_t **l_765 = &l_763;
                        int32_t **l_766 = &l_763;
                        int i, j, k;
                        (1 + 1);
                    }
                    ++l_768;
                    if (((l_791[7] = (((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(upsample(((VECTOR(uint16_t, 8))(max(((VECTOR(uint16_t, 8))(mad_hi(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(l_771.sf4)).yyyx)).yyzwwwyz, ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 2))(l_772.yy)))).yxyxxxxy, ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(abs(((VECTOR(uint16_t, 16))(add_sat(((VECTOR(uint16_t, 2))(safe_clamp_func(VECTOR(uint16_t, 2),uint16_t,((VECTOR(uint16_t, 16))(l_773.se1af2b607a123dab)).s66, (uint16_t)5UL, (uint16_t)l_774))).xyxxxyyxxyyyyyxy, ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(l_775.s77)), l_776, l_777[3][0], (l_734 &= l_778[3][6]), 0UL, (l_779 , l_780[3]), (l_775.sb--), 0x660FL, 65527UL, ((VECTOR(uint16_t, 4))(l_783.xyyy)), 0UL, 6UL))))).lo))).s2, ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 16))(0x737AL, 65534UL, ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(max(((VECTOR(uint16_t, 4))(hadd(((VECTOR(uint16_t, 8))(l_784.s71623172)).odd, ((VECTOR(uint16_t, 2))(65535UL, 0xDF44L)).yyyx))).odd, (uint16_t)0x699EL))).xyxyxxyyyyxyyyyy)))).sb8b1)).xzxyyxwz)).s73)), 8UL, 0x26A1L)), ((VECTOR(uint16_t, 8))(abs(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 16))(hadd(((VECTOR(int16_t, 4))(l_785.sab96)).wxzzwyxxwwywwzxx, ((VECTOR(int16_t, 16))(l_786.zyxzyzwxyyzzyxzw))))).hi))))), 0x221AL, 65527UL)).hi)), 0xC041L, ((VECTOR(uint16_t, 2))(0xDF85L, 0x72C1L)), (l_787 , l_788), ((VECTOR(uint16_t, 2))(0xEF49L)), 65535UL)).odd))), (uint16_t)0x0786L))).s47, ((VECTOR(uint16_t, 2))(65531UL))))), 0x29AA147FL, 4294967288UL)), l_789[0], l_790[0][2], 4294967289UL, ((VECTOR(uint32_t, 2))(9UL)), 0UL, 0UL, ((VECTOR(uint32_t, 2))(2UL)), 0xDCAF75FCL, 0x86B7A937L, 4294967287UL)).s1 , 0x4A690CC6L)) , l_792))
                    { /* block id: 303 */
                        uint8_t l_793 = 255UL;
                        int32_t *l_794 = (void*)0;
                        int32_t l_796 = 2L;
                        int32_t *l_795 = &l_796;
                        VECTOR(int16_t, 8) l_797 = (VECTOR(int16_t, 8))(0x10F3L, (VECTOR(int16_t, 4))(0x10F3L, (VECTOR(int16_t, 2))(0x10F3L, 0x2A54L), 0x2A54L), 0x2A54L, 0x10F3L, 0x2A54L);
                        VECTOR(uint64_t, 2) l_798 = (VECTOR(uint64_t, 2))(18446744073709551615UL, 18446744073709551615UL);
                        uint8_t l_799 = 0x2FL;
                        VECTOR(uint32_t, 16) l_800 = (VECTOR(uint32_t, 16))(0x22862E84L, (VECTOR(uint32_t, 4))(0x22862E84L, (VECTOR(uint32_t, 2))(0x22862E84L, 4UL), 4UL), 4UL, 0x22862E84L, 4UL, (VECTOR(uint32_t, 2))(0x22862E84L, 4UL), (VECTOR(uint32_t, 2))(0x22862E84L, 4UL), 0x22862E84L, 4UL, 0x22862E84L, 4UL);
                        VECTOR(uint32_t, 2) l_801 = (VECTOR(uint32_t, 2))(1UL, 4294967295UL);
                        uint16_t l_802 = 1UL;
                        int i;
                        (*l_718) = l_793;
                        l_795 = (l_794 = l_794);
                        (*l_718) = ((((VECTOR(int16_t, 16))(l_797.s0606234152042351)).sa , ((VECTOR(uint8_t, 2))(0xF3L, 255UL)).lo) , 0x55B5F685L);
                        (*l_718) = ((l_746 = (((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(l_798.xxyx)), 0xFECF77C5B8133679L, l_799, 5UL, 18446744073709551615UL)).s6343036757012527)).sa , ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(hadd(((VECTOR(uint32_t, 16))(l_800.sccf9f273b3fe7f55)).s8e, ((VECTOR(uint32_t, 4))(l_801.xyyy)).lo))), 0UL, 4294967295UL)).w)) , l_802);
                    }
                    else
                    { /* block id: 310 */
                        uint8_t l_803 = 0x9BL;
                        int32_t l_804[9] = {9L,9L,9L,9L,9L,9L,9L,9L,9L};
                        uint16_t l_805 = 65535UL;
                        VECTOR(int16_t, 8) l_806 = (VECTOR(int16_t, 8))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 1L), 1L), 1L, 0L, 1L);
                        VECTOR(int16_t, 4) l_807 = (VECTOR(int16_t, 4))(0x4F1FL, (VECTOR(int16_t, 2))(0x4F1FL, 0x5445L), 0x5445L);
                        int32_t *l_808 = &l_804[2];
                        uint16_t l_809 = 0UL;
                        VECTOR(int16_t, 16) l_810 = (VECTOR(int16_t, 16))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 1L), 1L), 1L, (-1L), 1L, (VECTOR(int16_t, 2))((-1L), 1L), (VECTOR(int16_t, 2))((-1L), 1L), (-1L), 1L, (-1L), 1L);
                        VECTOR(uint16_t, 4) l_811 = (VECTOR(uint16_t, 4))(0x1C8EL, (VECTOR(uint16_t, 2))(0x1C8EL, 0UL), 0UL);
                        VECTOR(int16_t, 16) l_812 = (VECTOR(int16_t, 16))(0x2771L, (VECTOR(int16_t, 4))(0x2771L, (VECTOR(int16_t, 2))(0x2771L, 1L), 1L), 1L, 0x2771L, 1L, (VECTOR(int16_t, 2))(0x2771L, 1L), (VECTOR(int16_t, 2))(0x2771L, 1L), 0x2771L, 1L, 0x2771L, 1L);
                        int32_t l_813 = 0L;
                        VECTOR(uint8_t, 8) l_814 = (VECTOR(uint8_t, 8))(0xDFL, (VECTOR(uint8_t, 4))(0xDFL, (VECTOR(uint8_t, 2))(0xDFL, 0xA0L), 0xA0L), 0xA0L, 0xDFL, 0xA0L);
                        VECTOR(uint8_t, 2) l_815 = (VECTOR(uint8_t, 2))(0UL, 0x9CL);
                        int64_t l_816 = 0x0415F828E27F2E74L;
                        uint32_t l_817 = 0xF8356DFDL;
                        VECTOR(uint8_t, 4) l_818 = (VECTOR(uint8_t, 4))(0xA4L, (VECTOR(uint8_t, 2))(0xA4L, 0x13L), 0x13L);
                        VECTOR(uint16_t, 8) l_821 = (VECTOR(uint16_t, 8))(0x0796L, (VECTOR(uint16_t, 4))(0x0796L, (VECTOR(uint16_t, 2))(0x0796L, 0xB74CL), 0xB74CL), 0xB74CL, 0x0796L, 0xB74CL);
                        VECTOR(uint16_t, 16) l_822 = (VECTOR(uint16_t, 16))(0x611BL, (VECTOR(uint16_t, 4))(0x611BL, (VECTOR(uint16_t, 2))(0x611BL, 0x74CEL), 0x74CEL), 0x74CEL, 0x611BL, 0x74CEL, (VECTOR(uint16_t, 2))(0x611BL, 0x74CEL), (VECTOR(uint16_t, 2))(0x611BL, 0x74CEL), 0x611BL, 0x74CEL, 0x611BL, 0x74CEL);
                        uint32_t l_823 = 4294967287UL;
                        uint32_t l_824 = 4294967289UL;
                        uint32_t l_825 = 0x7D00D79FL;
                        int32_t l_826 = 0x1C964024L;
                        int32_t *l_827 = &l_804[5];
                        int8_t l_828 = 0L;
                        int i;
                        l_805 = ((l_803 , (-3L)) , l_804[4]);
                        l_718 = (((VECTOR(int16_t, 8))(mul_hi(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 16))(l_806.s2203631606000507)))).s99)).yyyyxyxy, ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(l_807.wywwxxyz)).s4017474221504171)).hi))).s4 , l_808);
                        l_718 = ((l_790[0][2] = l_809) , (((VECTOR(int32_t, 2))(mul_hi(((VECTOR(int32_t, 2))(upsample(((VECTOR(int16_t, 2))(l_810.s9a)), ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(rotate(((VECTOR(uint16_t, 8))(0UL, (l_771.s7 = (l_811.z = ((VECTOR(uint16_t, 4))(0x70B5L, ((VECTOR(uint16_t, 2))(l_811.yz)), 65535UL)).z)), 0x4515L, 0UL, ((VECTOR(uint16_t, 4))(abs(((VECTOR(int16_t, 4))(max(((VECTOR(int16_t, 2))(l_812.se8)).yxyx, (int16_t)0x7BDBL)))))))).s33, ((VECTOR(uint16_t, 16))(safe_clamp_func(VECTOR(uint16_t, 16),uint16_t,((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(upsample(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(0UL, 0x45L, 3UL, ((VECTOR(uint8_t, 2))(6UL, 246UL)), ((VECTOR(uint8_t, 2))(clz(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 4))(mul_hi(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(clz(((VECTOR(uint8_t, 2))(9UL, 255UL))))), 0UL, 0x04L)).xyxzwzxy)).even, ((VECTOR(uint8_t, 4))(mad_sat(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(0x28L, 0xB6L, l_813, 248UL, 0xC2L, ((VECTOR(uint8_t, 2))(7UL, 0UL)), 0x8EL)).s50)).yyxx, ((VECTOR(uint8_t, 2))(l_814.s24)).xxyy, ((VECTOR(uint8_t, 4))(rhadd(((VECTOR(uint8_t, 4))(max(((VECTOR(uint8_t, 4))(0x70L, 1UL, 0UL, 0x29L)), ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(l_815.xy)).yxyyyyyx)).odd))), ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(2UL, 0x48L)), 0x1DL, 0x3BL, l_816, l_817, 0UL, 0x26L)).hi))))))))).lo))))), 0x5FL)).s15)), 0x2DL, 0x96L)).even, ((VECTOR(uint8_t, 16))(l_818.wxzwzxxywwwyxzzx)).sd8))), (l_775.s3--), ((VECTOR(uint16_t, 4))(9UL, (FAKE_DIVERGE(p_2023->group_1_offset, get_group_id(1), 10) , ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 8))(max(((VECTOR(uint16_t, 4))(safe_clamp_func(VECTOR(uint16_t, 4),VECTOR(uint16_t, 4),((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(l_821.s51)).yyxxxxxyxyxxyyyy)).s7b0a, ((VECTOR(uint16_t, 2))(l_822.s9e)).xxyx, ((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(max(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 4))(l_823, 0x0DB4L, 0UL, 0x7217L)).even)), (uint16_t)0UL))), 0x1A28L, 0UL, ((VECTOR(uint16_t, 8))(0UL)), 0xADA3L, 0x9CA5L, 0xF2F0L, 0x597FL)).sc48d))).xzywwwxw, ((VECTOR(uint16_t, 8))(0xE8B2L))))).s2236730764767334)))).s9), 0xB55DL, 0x0798L)), 1UL)).s3661671422252116, (uint16_t)l_824, (uint16_t)l_825))).s00))), GROUP_DIVERGE(0, 1), ((VECTOR(uint16_t, 4))(0xC655L)), 0UL)).s2, ((VECTOR(uint16_t, 4))(0UL)), GROUP_DIVERGE(0, 1), ((VECTOR(uint16_t, 4))(65534UL)), ((VECTOR(uint16_t, 2))(1UL)), l_826, ((VECTOR(uint16_t, 2))(0x035BL)), 0xC143L)).sd3))), ((VECTOR(int32_t, 2))(7L))))).hi , l_827));
                        (*l_827) ^= (l_828 , (-7L));
                    }
                    l_832 = (l_831 = (l_830 = (l_718 = l_829)));
                }
                else
                { /* block id: 324 */
                    int32_t l_833[5][6] = {{0x3CC5E7D7L,0x3CC5E7D7L,0L,(-1L),(-5L),(-1L)},{0x3CC5E7D7L,0x3CC5E7D7L,0L,(-1L),(-5L),(-1L)},{0x3CC5E7D7L,0x3CC5E7D7L,0L,(-1L),(-5L),(-1L)},{0x3CC5E7D7L,0x3CC5E7D7L,0L,(-1L),(-5L),(-1L)},{0x3CC5E7D7L,0x3CC5E7D7L,0L,(-1L),(-5L),(-1L)}};
                    int32_t l_834 = 0x736C78F6L;
                    VECTOR(uint32_t, 2) l_835 = (VECTOR(uint32_t, 2))(0xAA2D77E5L, 4294967295UL);
                    int16_t l_838 = 1L;
                    VECTOR(uint64_t, 16) l_839 = (VECTOR(uint64_t, 16))(18446744073709551611UL, (VECTOR(uint64_t, 4))(18446744073709551611UL, (VECTOR(uint64_t, 2))(18446744073709551611UL, 18446744073709551615UL), 18446744073709551615UL), 18446744073709551615UL, 18446744073709551611UL, 18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551611UL, 18446744073709551615UL), (VECTOR(uint64_t, 2))(18446744073709551611UL, 18446744073709551615UL), 18446744073709551611UL, 18446744073709551615UL, 18446744073709551611UL, 18446744073709551615UL);
                    int8_t l_840 = 0x0DL;
                    int16_t l_841 = 0x73E6L;
                    uint16_t l_842 = 3UL;
                    int32_t l_843 = 0x48E5EDFDL;
                    VECTOR(int64_t, 16) l_844 = (VECTOR(int64_t, 16))(0L, (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, 0x229283D9968E0BDDL), 0x229283D9968E0BDDL), 0x229283D9968E0BDDL, 0L, 0x229283D9968E0BDDL, (VECTOR(int64_t, 2))(0L, 0x229283D9968E0BDDL), (VECTOR(int64_t, 2))(0L, 0x229283D9968E0BDDL), 0L, 0x229283D9968E0BDDL, 0L, 0x229283D9968E0BDDL);
                    uint32_t l_845 = 0xCE806750L;
                    uint8_t l_846 = 0x93L;
                    uint32_t l_847 = 4294967291UL;
                    int8_t l_848 = 0L;
                    uint8_t l_849 = 0x1AL;
                    int64_t l_850[7] = {0L,1L,0L,0L,1L,0L,0L};
                    int32_t *l_851 = &l_843;
                    uint16_t l_852 = 0x5B53L;
                    int i, j;
                    --l_835.y;
                    (*l_718) = l_838;
                    l_718 = (((VECTOR(int16_t, 2))(((VECTOR(int16_t, 4))(0x5449L, (l_738 = (((VECTOR(uint64_t, 16))(l_839.s0f515173a9863e7f)).s0 , (l_840 , l_841))), (-8L), 0x06EDL)).hi)).odd , ((((l_842 , GROUP_DIVERGE(0, 1)) , 0x51654259L) , ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 16))(min(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 16))(1L, (l_843 , ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 2))(max(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(l_844.s852c)), ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 16))(0L, (l_845 = (l_724 = 1L)), (l_846 , l_847), l_848, 1L, 0x6FB69CD60F9DD16EL, 0x7F2996946CAE436CL, ((VECTOR(int64_t, 4))((-6L))), ((VECTOR(int64_t, 2))(0x195C19D2D012DBAFL)), l_849, 0L, (-1L))).s67)).xyxy)))).s0235540472571725)).s17, (int64_t)l_850[3]))).xyyyyyxy)).s6), ((VECTOR(int64_t, 8))(2L)), 8L, ((VECTOR(int64_t, 2))((-1L))), ((VECTOR(int64_t, 2))((-1L))), 5L)).s9c)).yxxy)))).zwwwywyzzywyyyzw, ((VECTOR(int64_t, 16))(0x4174A3F8929DD548L))))).hi)).s3) , l_851));
                    if (l_852)
                    { /* block id: 331 */
                        int64_t l_853 = (-3L);
                        int32_t l_855 = 0x738526A9L;
                        int32_t *l_854 = &l_855;
                        (*l_718) = ((l_736[0] = l_853) , 1L);
                        l_854 = l_854;
                    }
                    else
                    { /* block id: 335 */
                        VECTOR(uint16_t, 4) l_856 = (VECTOR(uint16_t, 4))(0x7DCDL, (VECTOR(uint16_t, 2))(0x7DCDL, 0xDD17L), 0xDD17L);
                        VECTOR(uint16_t, 8) l_857 = (VECTOR(uint16_t, 8))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0x09F1L), 0x09F1L), 0x09F1L, 0UL, 0x09F1L);
                        int32_t l_858 = 0x7BF21A64L;
                        int32_t l_859 = 0x6DB22906L;
                        uint32_t l_860 = 0xA441D6E3L;
                        uint32_t l_861[9] = {0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL};
                        uint32_t l_862[2][4][2] = {{{0x371E1BF7L,0x371E1BF7L},{0x371E1BF7L,0x371E1BF7L},{0x371E1BF7L,0x371E1BF7L},{0x371E1BF7L,0x371E1BF7L}},{{0x371E1BF7L,0x371E1BF7L},{0x371E1BF7L,0x371E1BF7L},{0x371E1BF7L,0x371E1BF7L},{0x371E1BF7L,0x371E1BF7L}}};
                        uint64_t l_863 = 0x9FD5055EAF0D1473L;
                        int32_t l_864 = 0x1318E90CL;
                        uint32_t l_865 = 1UL;
                        int8_t l_866 = 9L;
                        int i, j, k;
                        (*l_851) = ((VECTOR(int32_t, 16))(mul_hi(((VECTOR(int32_t, 4))(upsample(((VECTOR(int16_t, 2))((-1L), 0x213FL)).xxxx, ((VECTOR(uint16_t, 4))(max(((VECTOR(uint16_t, 16))(l_856.yywwwywxywzyyyww)).sd156, ((VECTOR(uint16_t, 16))(l_857.s1074771505621522)).sb950)))))).zyxywxwxzwzyywyw, ((VECTOR(int32_t, 4))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 16))(7L, 0L, 0x1392FE39L, ((VECTOR(int32_t, 4))(max(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))((-1L), (-1L))), ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 4))((-8L), 0x4FD3AE67L, (-1L), 0x19F4D7A8L)).odd)), (((((l_849 = l_858) , 2UL) , l_859) , (l_861[7] = l_860)) , ((((l_862[0][1][0] , l_863) , l_864) , l_865) , l_866)), 0x6990A7AAL, ((VECTOR(int32_t, 8))(0x65EBD08FL)), 0x6E873D50L, (-1L))))).s0489, (int32_t)0L))), 0x3FD70DEEL, ((VECTOR(int32_t, 8))(1L)))).s242c, ((VECTOR(int32_t, 4))((-3L))), ((VECTOR(int32_t, 4))(0L))))).wzwwwwywwzwxxxzx))).s0;
                    }
                }
                l_729.s8 ^= l_867;
                if (l_868)
                { /* block id: 342 */
                    uint64_t l_869 = 0UL;
                    VECTOR(int32_t, 8) l_872 = (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 3L), 3L), 3L, 0L, 3L);
                    uint32_t l_873[10][6] = {{4294967295UL,0x2F448517L,0x2F448517L,4294967295UL,4294967295UL,0x2F448517L},{4294967295UL,0x2F448517L,0x2F448517L,4294967295UL,4294967295UL,0x2F448517L},{4294967295UL,0x2F448517L,0x2F448517L,4294967295UL,4294967295UL,0x2F448517L},{4294967295UL,0x2F448517L,0x2F448517L,4294967295UL,4294967295UL,0x2F448517L},{4294967295UL,0x2F448517L,0x2F448517L,4294967295UL,4294967295UL,0x2F448517L},{4294967295UL,0x2F448517L,0x2F448517L,4294967295UL,4294967295UL,0x2F448517L},{4294967295UL,0x2F448517L,0x2F448517L,4294967295UL,4294967295UL,0x2F448517L},{4294967295UL,0x2F448517L,0x2F448517L,4294967295UL,4294967295UL,0x2F448517L},{4294967295UL,0x2F448517L,0x2F448517L,4294967295UL,4294967295UL,0x2F448517L},{4294967295UL,0x2F448517L,0x2F448517L,4294967295UL,4294967295UL,0x2F448517L}};
                    uint32_t l_874 = 0x14A0C045L;
                    int64_t l_875 = 0x60BDF4FE67BBCD49L;
                    uint32_t l_876 = 0xC14DF454L;
                    int32_t *l_877 = (void*)0;
                    int32_t *l_878 = (void*)0;
                    VECTOR(int32_t, 8) l_888 = (VECTOR(int32_t, 8))(0x16A07F33L, (VECTOR(int32_t, 4))(0x16A07F33L, (VECTOR(int32_t, 2))(0x16A07F33L, 0x54322F40L), 0x54322F40L), 0x54322F40L, 0x16A07F33L, 0x54322F40L);
                    int8_t l_889 = 1L;
                    int i, j;
                    l_869++;
                    l_878 = ((l_875 = (l_874 &= (l_873[3][1] = ((VECTOR(int32_t, 8))(l_872.s37046221)).s5))) , (l_876 , (l_718 = l_877)));
                    for (l_872.s0 = 0; (l_872.s0 >= 25); l_872.s0 = safe_add_func_int16_t_s_s(l_872.s0, 5))
                    { /* block id: 351 */
                        int32_t l_882[8];
                        int32_t *l_881 = &l_882[1];
                        VECTOR(int32_t, 16) l_883 = (VECTOR(int32_t, 16))(8L, (VECTOR(int32_t, 4))(8L, (VECTOR(int32_t, 2))(8L, (-1L)), (-1L)), (-1L), 8L, (-1L), (VECTOR(int32_t, 2))(8L, (-1L)), (VECTOR(int32_t, 2))(8L, (-1L)), 8L, (-1L), 8L, (-1L));
                        int64_t l_884 = (-6L);
                        uint16_t l_885 = 0xD92AL;
                        int i;
                        for (i = 0; i < 8; i++)
                            l_882[i] = (-6L);
                        l_877 = l_881;
                        (*l_877) ^= 0x38CAB3C2L;
                        (*l_877) |= ((VECTOR(int32_t, 4))(l_883.se42a)).y;
                        l_885--;
                    }
                    l_889 = ((VECTOR(int32_t, 16))(l_888.s7170115515570246)).s5;
                }
                else
                { /* block id: 358 */
                    int32_t l_890 = (-2L);
                    int16_t l_891 = 0x573BL;
                    l_729.sb = (l_891 &= l_890);
                }
            }
            else
            { /* block id: 362 */
                int64_t l_892 = 1L;
                int32_t l_893 = 0L;
                VECTOR(uint32_t, 2) l_894 = (VECTOR(uint32_t, 2))(0x754E157CL, 0UL);
                int8_t l_895 = (-1L);
                int32_t l_896 = 1L;
                int64_t l_897 = (-1L);
                int32_t *l_898 = (void*)0;
                int32_t *l_899 = &l_896;
                int32_t l_900 = 0x277AD543L;
                uint16_t l_901 = 65527UL;
                int i;
                l_893 ^= l_892;
                l_899 = ((((VECTOR(uint32_t, 4))(l_894.xxxx)).w , ((l_895 = 7UL) , l_896)) , (l_718 = ((l_897 ^= 0xFC808924B203C759L) , l_898)));
                l_901++;
                l_729.s0 = (-5L);
            }
            unsigned int result = 0;
            result += l_719;
            result += l_720;
            result += l_721;
            result += l_724;
            int l_725_i0, l_725_i1, l_725_i2;
            for (l_725_i0 = 0; l_725_i0 < 6; l_725_i0++) {
                for (l_725_i1 = 0; l_725_i1 < 10; l_725_i1++) {
                    for (l_725_i2 = 0; l_725_i2 < 1; l_725_i2++) {
                        result += l_725[l_725_i0][l_725_i1][l_725_i2];
                    }
                }
            }
            result += l_726;
            result += l_727;
            result += l_728;
            result += l_729.sf;
            result += l_729.se;
            result += l_729.sd;
            result += l_729.sc;
            result += l_729.sb;
            result += l_729.sa;
            result += l_729.s9;
            result += l_729.s8;
            result += l_729.s7;
            result += l_729.s6;
            result += l_729.s5;
            result += l_729.s4;
            result += l_729.s3;
            result += l_729.s2;
            result += l_729.s1;
            result += l_729.s0;
            atomic_add(&p_2023->g_special_values[43 * get_linear_group_id() + 12], result);
        }
        else
        { /* block id: 371 */
            (1 + 1);
        }
        for (p_2023->g_314 = 29; (p_2023->g_314 <= 3); p_2023->g_314--)
        { /* block id: 376 */
            if ((atomic_inc(&p_2023->l_atomic_input[36]) == 4))
            { /* block id: 378 */
                VECTOR(int32_t, 8) l_906 = (VECTOR(int32_t, 8))(0x66F4C02EL, (VECTOR(int32_t, 4))(0x66F4C02EL, (VECTOR(int32_t, 2))(0x66F4C02EL, (-7L)), (-7L)), (-7L), 0x66F4C02EL, (-7L));
                uint16_t l_907 = 0UL;
                int16_t l_908 = 0L;
                uint16_t l_909 = 0xE920L;
                int i;
                l_908 |= (((VECTOR(int32_t, 16))(l_906.s2310077634325160)).s2 , l_907);
                ++l_909;
                unsigned int result = 0;
                result += l_906.s7;
                result += l_906.s6;
                result += l_906.s5;
                result += l_906.s4;
                result += l_906.s3;
                result += l_906.s2;
                result += l_906.s1;
                result += l_906.s0;
                result += l_907;
                result += l_908;
                result += l_909;
                atomic_add(&p_2023->l_special_values[36], result);
            }
            else
            { /* block id: 381 */
                (1 + 1);
            }
        }
        for (l_242 = 0; (l_242 <= (-5)); --l_242)
        { /* block id: 387 */
            VECTOR(int16_t, 2) l_924 = (VECTOR(int16_t, 2))(1L, (-3L));
            uint64_t *l_928[4];
            int32_t l_929 = 0x2EF00D7AL;
            int32_t l_934[7] = {0x47E21CD7L,1L,0x47E21CD7L,0x47E21CD7L,1L,0x47E21CD7L,0x47E21CD7L};
            int32_t l_942 = 0x649110C1L;
            int32_t l_944 = 0x732EB08CL;
            int i;
            for (i = 0; i < 4; i++)
                l_928[i] = (void*)0;
            for (p_2023->g_30 = 0; (p_2023->g_30 > 16); ++p_2023->g_30)
            { /* block id: 390 */
                l_944 = (safe_add_func_uint8_t_u_u((safe_mod_func_uint32_t_u_u(((((safe_mod_func_int32_t_s_s(((((safe_sub_func_int16_t_s_s(((void*)0 != &l_410), ((~((VECTOR(int16_t, 4))(l_924.yyyx)).z) < ((VECTOR(int16_t, 8))(l_925.s15603771)).s4))) == (safe_sub_func_int8_t_s_s((p_2023->g_315.s7 && p_161), (((void*)0 != l_928[2]) , (l_929 &= p_161))))) | (p_2023->g_314 = (((safe_rshift_func_int8_t_s_s((l_934[5] = (safe_rshift_func_int16_t_s_u((*p_2023->g_156), 10))), (l_942 = (safe_div_func_uint64_t_u_u((++p_2023->g_25.sb), (safe_mod_func_uint32_t_u_u((~((VECTOR(uint32_t, 2))(p_2023->g_941.yy)).hi), l_924.y))))))) , p_2023->g_943[2][0][3]) < p_2023->g_406.y))) < p_2023->g_6), (*l_532))) , 0x4EB7L) && (*p_2023->g_156)) == 0x32B3L), 0x6B228207L)), p_161));
            }
            l_944 ^= (*p_2023->g_652);
        }
        if ((safe_sub_func_uint32_t_u_u(p_161, (l_947[2][3][2] == ((~l_948) , l_221[0])))))
        { /* block id: 400 */
            if ((atomic_inc(&p_2023->l_atomic_input[9]) == 4))
            { /* block id: 402 */
                int32_t l_950 = (-1L);
                int32_t *l_949 = &l_950;
                int32_t *l_951 = &l_950;
                uint64_t l_952 = 0x58559F3C06800F9DL;
                int32_t l_992 = (-5L);
                VECTOR(uint32_t, 2) l_993 = (VECTOR(uint32_t, 2))(4294967291UL, 0x6C0A7093L);
                uint8_t l_994 = 5UL;
                int i;
                l_951 = l_949;
                if (l_952)
                { /* block id: 404 */
                    uint32_t l_953 = 0xD07BEF68L;
                    l_949 = (void*)0;
                    l_953 &= ((*l_951) = (-3L));
                    for (l_953 = (-14); (l_953 < 52); l_953 = safe_add_func_int64_t_s_s(l_953, 3))
                    { /* block id: 410 */
                        int8_t l_956[9] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
                        uint64_t l_957 = 0xA021F5C5BDB535F4L;
                        VECTOR(int32_t, 8) l_960 = (VECTOR(int32_t, 8))(0x6C51B6F6L, (VECTOR(int32_t, 4))(0x6C51B6F6L, (VECTOR(int32_t, 2))(0x6C51B6F6L, 0x23CD641AL), 0x23CD641AL), 0x23CD641AL, 0x6C51B6F6L, 0x23CD641AL);
                        int32_t l_961 = (-1L);
                        int16_t l_962 = (-8L);
                        uint16_t l_963[10] = {9UL,9UL,9UL,9UL,9UL,9UL,9UL,9UL,9UL,9UL};
                        VECTOR(int32_t, 2) l_964 = (VECTOR(int32_t, 2))(0x1A2AEF83L, 0x3948CDCBL);
                        uint8_t l_965 = 255UL;
                        VECTOR(int32_t, 2) l_966 = (VECTOR(int32_t, 2))(0x4BB41B84L, 1L);
                        VECTOR(uint32_t, 8) l_967 = (VECTOR(uint32_t, 8))(4294967292UL, (VECTOR(uint32_t, 4))(4294967292UL, (VECTOR(uint32_t, 2))(4294967292UL, 4294967291UL), 4294967291UL), 4294967291UL, 4294967292UL, 4294967291UL);
                        VECTOR(uint32_t, 16) l_968 = (VECTOR(uint32_t, 16))(0x3DA80855L, (VECTOR(uint32_t, 4))(0x3DA80855L, (VECTOR(uint32_t, 2))(0x3DA80855L, 0x1A5A1FA8L), 0x1A5A1FA8L), 0x1A5A1FA8L, 0x3DA80855L, 0x1A5A1FA8L, (VECTOR(uint32_t, 2))(0x3DA80855L, 0x1A5A1FA8L), (VECTOR(uint32_t, 2))(0x3DA80855L, 0x1A5A1FA8L), 0x3DA80855L, 0x1A5A1FA8L, 0x3DA80855L, 0x1A5A1FA8L);
                        uint8_t l_969[2];
                        uint64_t l_970 = 0x0CD192A297C4DCD8L;
                        int16_t l_971[5][7][5] = {{{(-1L),0L,0x62BCL,0x2BB5L,0L},{(-1L),0L,0x62BCL,0x2BB5L,0L},{(-1L),0L,0x62BCL,0x2BB5L,0L},{(-1L),0L,0x62BCL,0x2BB5L,0L},{(-1L),0L,0x62BCL,0x2BB5L,0L},{(-1L),0L,0x62BCL,0x2BB5L,0L},{(-1L),0L,0x62BCL,0x2BB5L,0L}},{{(-1L),0L,0x62BCL,0x2BB5L,0L},{(-1L),0L,0x62BCL,0x2BB5L,0L},{(-1L),0L,0x62BCL,0x2BB5L,0L},{(-1L),0L,0x62BCL,0x2BB5L,0L},{(-1L),0L,0x62BCL,0x2BB5L,0L},{(-1L),0L,0x62BCL,0x2BB5L,0L},{(-1L),0L,0x62BCL,0x2BB5L,0L}},{{(-1L),0L,0x62BCL,0x2BB5L,0L},{(-1L),0L,0x62BCL,0x2BB5L,0L},{(-1L),0L,0x62BCL,0x2BB5L,0L},{(-1L),0L,0x62BCL,0x2BB5L,0L},{(-1L),0L,0x62BCL,0x2BB5L,0L},{(-1L),0L,0x62BCL,0x2BB5L,0L},{(-1L),0L,0x62BCL,0x2BB5L,0L}},{{(-1L),0L,0x62BCL,0x2BB5L,0L},{(-1L),0L,0x62BCL,0x2BB5L,0L},{(-1L),0L,0x62BCL,0x2BB5L,0L},{(-1L),0L,0x62BCL,0x2BB5L,0L},{(-1L),0L,0x62BCL,0x2BB5L,0L},{(-1L),0L,0x62BCL,0x2BB5L,0L},{(-1L),0L,0x62BCL,0x2BB5L,0L}},{{(-1L),0L,0x62BCL,0x2BB5L,0L},{(-1L),0L,0x62BCL,0x2BB5L,0L},{(-1L),0L,0x62BCL,0x2BB5L,0L},{(-1L),0L,0x62BCL,0x2BB5L,0L},{(-1L),0L,0x62BCL,0x2BB5L,0L},{(-1L),0L,0x62BCL,0x2BB5L,0L},{(-1L),0L,0x62BCL,0x2BB5L,0L}}};
                        uint32_t l_972[1];
                        uint32_t l_973[8][2][1] = {{{0x5BCE3772L},{0x5BCE3772L}},{{0x5BCE3772L},{0x5BCE3772L}},{{0x5BCE3772L},{0x5BCE3772L}},{{0x5BCE3772L},{0x5BCE3772L}},{{0x5BCE3772L},{0x5BCE3772L}},{{0x5BCE3772L},{0x5BCE3772L}},{{0x5BCE3772L},{0x5BCE3772L}},{{0x5BCE3772L},{0x5BCE3772L}}};
                        int32_t l_974 = 0x112D4536L;
                        uint64_t l_975 = 1UL;
                        int8_t l_976[9][8] = {{1L,0L,0L,1L,9L,0x17L,0x7DL,1L},{1L,0L,0L,1L,9L,0x17L,0x7DL,1L},{1L,0L,0L,1L,9L,0x17L,0x7DL,1L},{1L,0L,0L,1L,9L,0x17L,0x7DL,1L},{1L,0L,0L,1L,9L,0x17L,0x7DL,1L},{1L,0L,0L,1L,9L,0x17L,0x7DL,1L},{1L,0L,0L,1L,9L,0x17L,0x7DL,1L},{1L,0L,0L,1L,9L,0x17L,0x7DL,1L},{1L,0L,0L,1L,9L,0x17L,0x7DL,1L}};
                        int i, j, k;
                        for (i = 0; i < 2; i++)
                            l_969[i] = 0x82L;
                        for (i = 0; i < 1; i++)
                            l_972[i] = 0xA72D953BL;
                        (*l_951) &= l_956[8];
                        ++l_957;
                        (*l_951) |= ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(hadd(((VECTOR(int32_t, 4))(l_960.s6635)), ((VECTOR(int32_t, 8))(0L, (l_961 , (l_963[7] &= (l_962 , 0x7052F005L))), (((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(l_964.xxyxxxyyyyxxxxxy)).even)).s3 , l_965), ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(l_966.xx)).yyyy)), 1L)).hi))), (((VECTOR(uint32_t, 4))(max(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(rhadd(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))((l_967.s1 = ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 16))(l_967.s5105641404643213)).sdd)).lo), ((VECTOR(uint32_t, 2))(l_968.sce)), 0xDF4865C1L)).yxzzwywzywxyzxxy)).sbd, ((VECTOR(uint32_t, 16))(l_969[1], (l_970 , 0UL), 0UL, 0UL, (l_971[0][3][4] , l_972[0]), 0xDCBFFDAFL, 0xCF8E838FL, l_973[4][0][0], l_974, ((VECTOR(uint32_t, 2))(0xE360E674L)), 5UL, 0UL, ((VECTOR(uint32_t, 2))(4294967295UL)), 1UL)).sde))).yyyy)).hi)).yxyx, (uint32_t)l_975))).y , (-1L)), 0x5256C940L, l_976[4][6], ((VECTOR(int32_t, 2))(0x34B35A8DL)), 1L, ((VECTOR(int32_t, 4))((-3L))), 0x34A207FAL, 3L)).s4;
                        (*l_951) = (-7L);
                    }
                }
                else
                { /* block id: 418 */
                    int32_t l_977 = 0L;
                    for (l_977 = 0; (l_977 >= (-7)); l_977 = safe_sub_func_uint16_t_u_u(l_977, 3))
                    { /* block id: 421 */
                        l_951 = (void*)0;
                    }
                }
                for (l_950 = 0; (l_950 >= 6); l_950 = safe_add_func_int32_t_s_s(l_950, 4))
                { /* block id: 427 */
                    int64_t l_982[6] = {0x305FA3B21C2A3499L,0x486A95C883FCE5CEL,0x305FA3B21C2A3499L,0x305FA3B21C2A3499L,0x486A95C883FCE5CEL,0x305FA3B21C2A3499L};
                    VECTOR(int8_t, 16) l_983 = (VECTOR(int8_t, 16))(0x0FL, (VECTOR(int8_t, 4))(0x0FL, (VECTOR(int8_t, 2))(0x0FL, 0x68L), 0x68L), 0x68L, 0x0FL, 0x68L, (VECTOR(int8_t, 2))(0x0FL, 0x68L), (VECTOR(int8_t, 2))(0x0FL, 0x68L), 0x0FL, 0x68L, 0x0FL, 0x68L);
                    VECTOR(int8_t, 4) l_984 = (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0x4EL), 0x4EL);
                    VECTOR(int8_t, 4) l_985 = (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 1L), 1L);
                    uint32_t l_986 = 0xA8ACF994L;
                    uint32_t l_987 = 4294967286UL;
                    int16_t l_988 = (-7L);
                    uint8_t l_989 = 0x76L;
                    int i;
                    l_988 |= (l_987 |= ((l_982[0] , (l_986 = ((VECTOR(int8_t, 2))(((VECTOR(int8_t, 4))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 4),((VECTOR(int8_t, 2))(clz(((VECTOR(int8_t, 16))(l_983.s19a9c51d55ff70dd)).s79))).xxyx, ((VECTOR(int8_t, 4))(l_984.yzxw)), ((VECTOR(int8_t, 8))(l_985.xyyxywxx)).lo))).even)).lo)) , 0x776B84B8L));
                    ++l_989;
                }
                if ((l_994 |= (l_993.x |= l_992)))
                { /* block id: 435 */
                    int32_t l_995 = 0L;
                    uint32_t l_996 = 0xFA3BAA8AL;
                    uint64_t l_997 = 0x10F774AAB75DFDBDL;
                    l_997 &= (((VECTOR(uint8_t, 4))(l_995, 0xD0L, 0x6AL, 0xD9L)).x , l_996);
                }
                else
                { /* block id: 437 */
                    uint32_t l_998 = 4294967295UL;
                    l_998++;
                }
                unsigned int result = 0;
                result += l_950;
                result += l_952;
                result += l_992;
                result += l_993.y;
                result += l_993.x;
                result += l_994;
                atomic_add(&p_2023->l_special_values[9], result);
            }
            else
            { /* block id: 440 */
                (1 + 1);
            }
            for (l_641 = 0; (l_641 != 5); l_641 = safe_add_func_uint32_t_u_u(l_641, 5))
            { /* block id: 445 */
                uint64_t **l_1003 = &p_2023->g_313;
                (**p_2023->g_651) = p_161;
                if ((**p_2023->g_651))
                    break;
                (*l_532) |= (l_948 , l_948);
                (*p_2023->g_652) = ((void*)0 == l_1003);
            }
        }
        else
        { /* block id: 451 */
            VECTOR(uint16_t, 2) l_1034 = (VECTOR(uint16_t, 2))(65526UL, 0xAE9CL);
            int32_t *l_1035 = (void*)0;
            uint16_t **l_1041 = &l_429;
            uint64_t *l_1070 = &p_2023->g_314;
            int32_t l_1072[6][1] = {{0x476EF73BL},{0x476EF73BL},{0x476EF73BL},{0x476EF73BL},{0x476EF73BL},{0x476EF73BL}};
            int8_t ***l_1097 = &l_1066;
            int32_t ***l_1123 = &l_1077[8][9][1];
            VECTOR(int32_t, 4) l_1124 = (VECTOR(int32_t, 4))(7L, (VECTOR(int32_t, 2))(7L, 1L), 1L);
            uint16_t l_1129 = 0x0335L;
            uint64_t l_1171 = 0UL;
            int32_t *l_1174 = (void*)0;
            int i, j;
            (**p_2023->g_172) = &l_948;
            for (l_242 = 0; (l_242 < 24); l_242 = safe_add_func_uint8_t_u_u(l_242, 8))
            { /* block id: 455 */
                int64_t l_1026 = (-4L);
                uint64_t **l_1032 = &l_661;
                uint32_t *l_1036[4];
                int i;
                for (i = 0; i < 4; i++)
                    l_1036[i] = (void*)0;
                for (l_433 = 0; (l_433 <= 35); l_433++)
                { /* block id: 458 */
                    int64_t l_1033[5] = {0x206157AF4A3AED5FL,0x206157AF4A3AED5FL,0x206157AF4A3AED5FL,0x206157AF4A3AED5FL,0x206157AF4A3AED5FL};
                    int i, j;
                    for (p_2023->g_349 = 0; (p_2023->g_349 < 47); p_2023->g_349 = safe_add_func_uint8_t_u_u(p_2023->g_349, 8))
                    { /* block id: 461 */
                        VECTOR(uint16_t, 16) l_1012 = (VECTOR(uint16_t, 16))(4UL, (VECTOR(uint16_t, 4))(4UL, (VECTOR(uint16_t, 2))(4UL, 0xA122L), 0xA122L), 0xA122L, 4UL, 0xA122L, (VECTOR(uint16_t, 2))(4UL, 0xA122L), (VECTOR(uint16_t, 2))(4UL, 0xA122L), 4UL, 0xA122L, 4UL, 0xA122L);
                        int i;
                        (*l_532) = (***p_2023->g_172);
                        l_1035 = (((((VECTOR(uint16_t, 16))(l_1012.s473f7e0ce69c6658)).s2 != (safe_div_func_int8_t_s_s((l_948 = ((safe_mul_func_uint32_t_u_u(3UL, (((*p_2023->g_652) ^= (**p_2023->g_173)) >= ((VECTOR(int32_t, 4))(0x1F29030DL, (safe_div_func_uint32_t_u_u((&p_2023->g_229 != ((((VECTOR(int32_t, 8))(p_2023->g_1019.xxxxyxyx)).s7 , ((***l_319) & (safe_mul_func_uint16_t_u_u((safe_add_func_uint8_t_u_u((++(*l_228)), (l_1026 , (safe_lshift_func_uint16_t_u_s((safe_sub_func_uint8_t_u_u(p_161, 0x6BL)), 9))))), (((p_2023->g_315.s7 , ((l_1031[4] != l_1032) || FAKE_DIVERGE(p_2023->group_1_offset, get_group_id(1), 10))) && p_161) ^ l_1033[4]))))) , &l_553)), 0x1AEDF6DAL)), 0x3A2DEAA9L, 0x30FBA8E4L)).w))) & 0UL)), l_1034.x))) != 0x87500B06FAB6DD11L) , (void*)0);
                    }
                    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                    p_2023->tid = (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 15)), permutations[(safe_mod_func_uint32_t_u_u(0x7F24DBD9L, 10))][(safe_mod_func_uint32_t_u_u(p_2023->tid, 15))]));
                }
                if (p_161)
                    break;
                (***p_2023->g_172) = (((--p_2023->g_941.y) != p_2023->g_512) & l_948);
            }
            if ((((void*)0 == l_1039) == ((***l_319) = ((((p_2023->g_1040 = &l_429) == l_1041) , l_948) != ((void*)0 != l_1035)))))
            { /* block id: 478 */
                int8_t ****l_1048 = &p_2023->g_411;
                int32_t l_1068 = 1L;
                if (l_948)
                { /* block id: 479 */
                    uint32_t l_1054 = 4294967295UL;
                    int8_t **l_1067 = &p_2023->g_127[2];
                    int32_t l_1069 = 0L;
                    uint32_t l_1074 = 0xA454883AL;
                    uint16_t l_1094 = 0x7D33L;
                    for (l_641 = 0; (l_641 < 29); l_641++)
                    { /* block id: 482 */
                        int8_t **l_1049 = (void*)0;
                        int64_t *l_1053 = &l_245[5];
                        VECTOR(int32_t, 2) l_1073 = (VECTOR(int32_t, 2))(0L, 0x3C31CD57L);
                        uint32_t *l_1093 = &p_2023->g_346;
                        int i;
                        (***p_2023->g_172) ^= (safe_sub_func_uint16_t_u_u(((safe_rshift_func_int8_t_s_u((l_1048 == ((&p_2023->g_314 != (((~(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(hadd(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 16))((-7L), 0x0FL, ((VECTOR(int8_t, 2))(9L, (-10L))), ((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(sub_sat(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(((l_1049 == (l_1067 = ((safe_unary_minus_func_int64_t_s(((((safe_mul_func_int16_t_s_s(0x090FL, (((*l_1053) |= 0x393FC6F3ED6D37A2L) | ((++l_1054) & (safe_mul_func_uint16_t_u_u((safe_rshift_func_int16_t_s_s((safe_sub_func_int32_t_s_s((**p_2023->g_651), (safe_unary_minus_func_int32_t_s(1L)))), p_161)), (safe_div_func_int32_t_s_s((-1L), (*p_2023->g_652))))))))) | 18446744073709551615UL) <= p_161) && p_161))) , l_1066))) , p_161), l_1068, 5L, 0x4EL)).xxxyywwx)))).s14, ((VECTOR(int8_t, 2))(0x39L))))).yyxxxxyyyyyxxyxy)).s7, ((VECTOR(int8_t, 4))(1L)), p_161, ((VECTOR(int8_t, 2))(0x43L)), 1L, 6L, 0x10L, 0x5AL)))).scf, ((VECTOR(int8_t, 2))(0x6EL))))).xxxyyyyy)).s7 > l_1069)) > (-5L)) , l_1070)) , l_1071)), 4)) < GROUP_DIVERGE(0, 1)), 0xB60BL));
                        if ((*p_2023->g_5))
                            break;
                        l_1074++;
                        (*p_2023->g_5) = (l_1077[9][3][0] != (((safe_rshift_func_int8_t_s_s(((safe_add_func_uint8_t_u_u((safe_mod_func_int32_t_s_s(((safe_rshift_func_uint8_t_u_s(((((((p_161 , &p_161) != &p_161) < l_1086) <= (safe_add_func_int16_t_s_s((((p_2023->g_435 && ((((safe_rshift_func_int16_t_s_u((p_161 ^ (safe_add_func_uint8_t_u_u(((&p_2023->g_346 == l_1093) , p_161), 0UL))), p_161)) > 0x6BD4L) , 0xD89092DAL) | (**p_2023->g_651))) | l_1054) & 0x6EA4L), p_161))) & 0UL) <= l_1094), p_161)) , (**p_2023->g_173)), p_161)), p_161)) || (*l_532)), 5)) , FAKE_DIVERGE(p_2023->local_0_offset, get_local_id(0), 10)) , (*p_2023->g_172)));
                    }
                    for (p_2023->g_30 = 0; (p_2023->g_30 <= 26); p_2023->g_30 = safe_add_func_uint64_t_u_u(p_2023->g_30, 4))
                    { /* block id: 493 */
                        return &p_2023->g_126;
                    }
                }
                else
                { /* block id: 496 */
                    for (p_2023->g_593 = 27; (p_2023->g_593 > 5); p_2023->g_593 = safe_sub_func_int8_t_s_s(p_2023->g_593, 6))
                    { /* block id: 499 */
                        (**p_2023->g_172) = (**p_2023->g_172);
                        if ((***l_319))
                            break;
                        (**p_2023->g_173) = p_161;
                    }
                    return &p_2023->g_126;
                }
            }
            else
            { /* block id: 506 */
                uint8_t l_1108 = 0xECL;
                uint32_t *l_1130 = (void*)0;
                uint32_t *l_1131 = (void*)0;
                uint32_t *l_1132 = &p_2023->g_576[0];
                uint16_t *l_1133 = (void*)0;
                uint16_t *l_1134 = &l_1086;
                VECTOR(int16_t, 8) l_1160 = (VECTOR(int16_t, 8))((-9L), (VECTOR(int16_t, 4))((-9L), (VECTOR(int16_t, 2))((-9L), 1L), 1L), 1L, (-9L), 1L);
                int32_t l_1165[10] = {1L,0x6E54E8EAL,0x7A61128EL,0x6E54E8EAL,1L,1L,0x6E54E8EAL,0x7A61128EL,0x6E54E8EAL,1L};
                int32_t *l_1185 = &l_220;
                VECTOR(int32_t, 16) l_1188 = (VECTOR(int32_t, 16))((-4L), (VECTOR(int32_t, 4))((-4L), (VECTOR(int32_t, 2))((-4L), 0x17D7F5EEL), 0x17D7F5EEL), 0x17D7F5EEL, (-4L), 0x17D7F5EEL, (VECTOR(int32_t, 2))((-4L), 0x17D7F5EEL), (VECTOR(int32_t, 2))((-4L), 0x17D7F5EEL), (-4L), 0x17D7F5EEL, (-4L), 0x17D7F5EEL);
                uint64_t ***l_1195 = &p_2023->g_1193[2][2];
                uint64_t **l_1197 = &p_2023->g_1194;
                uint64_t ***l_1196 = &l_1197;
                uint64_t **l_1199[8] = {&p_2023->g_1194,&p_2023->g_1194,&p_2023->g_1194,&p_2023->g_1194,&p_2023->g_1194,&p_2023->g_1194,&p_2023->g_1194,&p_2023->g_1194};
                uint64_t ***l_1198 = &l_1199[5];
                int i;
                atomic_or(&p_2023->g_atomic_reduction[get_linear_group_id()], (((VECTOR(int16_t, 16))(mul_hi(((VECTOR(int16_t, 16))(p_2023->g_1100.s085905c771cde4ce)), ((VECTOR(int16_t, 8))(p_2023->g_1101.s66021237)).s1067156107512537))).s0 > ((((safe_mul_func_int16_t_s_s((safe_mul_func_int16_t_s_s((*p_2023->g_299), l_1106)), (((*l_532) = ((void*)0 == &p_2023->g_493)) || 3UL))) & p_161) < p_2023->g_665.s4) || (l_1107 != (((((l_1108 == 0x14DE3F6DL) > (-10L)) < p_2023->g_576[4]) , p_161) > p_161)))) + get_linear_global_id());
                barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                if (get_linear_local_id() == 0)
                    p_2023->v_collective += p_2023->g_atomic_reduction[get_linear_group_id()];
                barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                if ((safe_lshift_func_uint16_t_u_u(((*l_432) = (safe_lshift_func_uint8_t_u_s(0x5EL, 5))), ((*l_1134) = ((safe_rshift_func_uint16_t_u_u(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 16))(rotate(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(min(((VECTOR(uint16_t, 4))(l_1115.yxyy)), ((VECTOR(uint16_t, 2))(65534UL, 0UL)).yyyx))).xxwxyzzzzwzwxzxz)).sd100)).ywwxzwyxzxyzxzxw, ((VECTOR(uint16_t, 8))(rhadd(((VECTOR(uint16_t, 4))(0UL, 0xCE7EL, 0x2F15L, 0UL)).wzyzyyxw, ((VECTOR(uint16_t, 4))(sub_sat(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 2))(l_1116.yy)))).xyyx, ((VECTOR(uint16_t, 16))(hadd(((VECTOR(uint16_t, 16))(mad_sat(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(mad_hi(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(l_1117.s32)).yxxyxxyx)).even, ((VECTOR(uint16_t, 16))(65535UL, ((VECTOR(uint16_t, 8))((1L || ((*l_1132) = (((VECTOR(uint8_t, 4))(hadd(((VECTOR(uint8_t, 16))(l_1118.s4727430563212213)).sc757, ((VECTOR(uint8_t, 16))(0x2FL, 2UL, (safe_mul_func_int8_t_s_s((safe_mod_func_uint32_t_u_u((FAKE_DIVERGE(p_2023->local_1_offset, get_local_id(1), 10) , ((p_161 & (**p_2023->g_173)) >= l_1108)), FAKE_DIVERGE(p_2023->group_0_offset, get_group_id(0), 10))), (l_1123 == ((**p_2023->g_173) , &p_2023->g_173)))), (((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(l_1124.xyzyzxwxzzwwyxzz)).odd)).s3 != (((safe_add_func_uint32_t_u_u((safe_add_func_uint8_t_u_u(((((*p_2023->g_688) , 0x3299L) >= (***l_319)) > p_2023->g_1019.x), l_1129)), 4294967291UL)) || 0x355F448CL) , 0x19B657A6L)), 0UL, 0x3BL, ((VECTOR(uint8_t, 4))(0x95L)), 0xFAL, ((VECTOR(uint8_t, 2))(0xECL)), ((VECTOR(uint8_t, 2))(246UL)), 252UL)).sfb4c))).w , p_2023->g_420.y))), p_161, 0x1CA6L, 0x097EL, ((VECTOR(uint16_t, 4))(6UL)))), ((VECTOR(uint16_t, 4))(0x3BF5L)), p_161, 65535UL, 0x9C96L)).se06c, ((VECTOR(uint16_t, 4))(0xB848L))))), ((VECTOR(uint16_t, 2))(65535UL)), ((VECTOR(uint16_t, 8))(0xBF50L)), 0x922AL, 0UL)), ((VECTOR(uint16_t, 16))(65535UL)), ((VECTOR(uint16_t, 16))(1UL))))), ((VECTOR(uint16_t, 16))(0UL))))).s1e51))).yxzyzwxz))).s2514755714674050))).hi)).s5, 2)) | 0x1340BD74L)))))
                { /* block id: 512 */
                    int32_t *l_1147 = (void*)0;
                    int8_t ****l_1152 = &p_2023->g_411;
                    int8_t *****l_1153[9] = {&l_1152,(void*)0,&l_1152,&l_1152,(void*)0,&l_1152,&l_1152,(void*)0,&l_1152};
                    int32_t l_1166 = 0x624492D7L;
                    int32_t l_1167 = (-7L);
                    int32_t l_1168 = 0L;
                    int32_t l_1170 = 0x31238B4AL;
                    int i;
                    if ((atomic_inc(&p_2023->l_atomic_input[42]) == 1))
                    { /* block id: 514 */
                        VECTOR(int32_t, 8) l_1135 = (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0L), 0L), 0L, 0L, 0L);
                        uint32_t l_1136[1];
                        int32_t l_1137 = (-3L);
                        VECTOR(int32_t, 8) l_1138 = (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x19D1DD61L), 0x19D1DD61L), 0x19D1DD61L, (-1L), 0x19D1DD61L);
                        int32_t *l_1139 = (void*)0;
                        int32_t *l_1140 = (void*)0;
                        int32_t *l_1141 = &l_1137;
                        int32_t *l_1142 = &l_1137;
                        int32_t l_1143 = 0x228B40D8L;
                        uint32_t l_1144 = 1UL;
                        int i;
                        for (i = 0; i < 1; i++)
                            l_1136[i] = 0x1A595B58L;
                        l_1136[0] ^= ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(l_1135.s15)).xyxyxyyxxyyyyxyy)).s7b)).lo;
                        l_1141 = (l_1139 = (l_1137 , (l_1138.s7 , (l_1140 = l_1139))));
                        l_1142 = (void*)0;
                        --l_1144;
                        unsigned int result = 0;
                        result += l_1135.s7;
                        result += l_1135.s6;
                        result += l_1135.s5;
                        result += l_1135.s4;
                        result += l_1135.s3;
                        result += l_1135.s2;
                        result += l_1135.s1;
                        result += l_1135.s0;
                        int l_1136_i0;
                        for (l_1136_i0 = 0; l_1136_i0 < 1; l_1136_i0++) {
                            result += l_1136[l_1136_i0];
                        }
                        result += l_1137;
                        result += l_1138.s7;
                        result += l_1138.s6;
                        result += l_1138.s5;
                        result += l_1138.s4;
                        result += l_1138.s3;
                        result += l_1138.s2;
                        result += l_1138.s1;
                        result += l_1138.s0;
                        result += l_1143;
                        result += l_1144;
                        atomic_add(&p_2023->l_special_values[42], result);
                    }
                    else
                    { /* block id: 521 */
                        (1 + 1);
                    }
                    atomic_and(&p_2023->l_atomic_reduction[0], (((*l_532) , (((*p_2023->g_173) = (void*)0) != l_1147)) == ((safe_sub_func_uint16_t_u_u((safe_add_func_uint16_t_u_u((p_161 > ((-1L) | ((l_1071 = l_1152) == (((((safe_sub_func_int32_t_s_s((255UL != (((safe_sub_func_uint16_t_u_u(p_161, ((safe_sub_func_uint8_t_u_u((((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))(l_1160.s31563017)).s76)).lo <= ((safe_rshift_func_int16_t_s_s(((((((void*)0 != l_532) , l_1163) == &l_429) , (*l_532)) == GROUP_DIVERGE(0, 1)), (*p_2023->g_156))) | (*p_2023->g_299))), 0x1DL)) < p_161))) , p_161) > l_1108)), p_161)) && 0x3E40F550L) == 5L) & p_2023->g_1100.sf) , l_1164)))), 1UL)), p_161)) && p_2023->g_943[3][1][0])));
                    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                    if (get_linear_local_id() == 0)
                        p_2023->v_collective += p_2023->l_atomic_reduction[0];
                    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
                    l_1171++;
                }
                else
                { /* block id: 528 */
                    (*l_532) &= (**p_2023->g_651);
                    (***l_319) |= (-10L);
                    (*p_2023->g_173) = l_1174;
                    l_1184 = ((safe_mul_func_uint16_t_u_u(GROUP_DIVERGE(2, 1), (safe_rshift_func_int16_t_s_s(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 8))(p_2023->g_1179.yyxxyxyx)).s40)).yxyxxyyx)))).s1, (safe_lshift_func_uint8_t_u_s((--(*l_228)), 4)))))) , (~0x3FB9D24DL));
                }
                p_2023->g_634.s0 ^= ((VECTOR(int32_t, 8))(max(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 2))((-1L), 0x10055A71L)).xxyxyyxxxxxyyxxy, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(0x7AC7C429L, 0L, (**p_2023->g_651), ((VECTOR(int32_t, 4))(min(((VECTOR(int32_t, 2))(clz(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(((*l_532) = (((*l_1185) |= (-4L)) , ((safe_mod_func_uint8_t_u_u(p_161, 0x5BL)) >= ((VECTOR(int32_t, 16))(8L, (-1L), (-9L), ((VECTOR(int32_t, 2))(l_1188.s1c)), (safe_mul_func_int16_t_s_s((safe_lshift_func_uint8_t_u_s(p_2023->g_499.s1, 1)), ((((*l_1195) = p_2023->g_1193[2][2]) != ((*l_1198) = ((*l_1196) = &p_2023->g_1194))) , 0x3060L))), ((VECTOR(int32_t, 2))(l_1200.s57)), (safe_sub_func_uint8_t_u_u(((p_161 == 0L) || 8L), p_161)), (-8L), (**p_2023->g_651), 4L, ((VECTOR(int32_t, 4))((-5L))))).sc))), 0x5E161243L, (-7L), (-2L))).zyyxyxwwxzzzzzzw)).sba))).yyyx, ((VECTOR(int32_t, 4))(0L))))), ((VECTOR(int32_t, 8))(4L)), 0x18052742L)).even)).s7004243420645663))).odd)))))).lo)).xwyzxyyw, ((VECTOR(int32_t, 8))((-1L)))))).s5;
            }
            (**p_2023->g_172) = (void*)0;
        }
    }
    return &p_2023->g_126;
}


/* ------------------------------------------ */
/* 
 * reads : p_2023->g_4 p_2023->g_5 p_2023->g_173 p_2023->g_6 p_2023->g_27 p_2023->g_30 p_2023->g_156 p_2023->g_157 p_2023->g_25
 * writes: p_2023->g_5 p_2023->g_6
 */
uint8_t  func_166(int32_t *** p_167, int32_t  p_168, int64_t  p_169, int8_t * p_170, uint64_t * p_171, struct S0 * p_2023)
{ /* block id: 64 */
    int32_t *l_194[1];
    int32_t l_216 = 6L;
    int i;
    for (i = 0; i < 1; i++)
        l_194[i] = &p_2023->g_30;
    for (p_168 = 15; (p_168 > (-14)); p_168 = safe_sub_func_int8_t_s_s(p_168, 5))
    { /* block id: 67 */
        uint8_t l_186[6][5] = {{5UL,246UL,6UL,246UL,5UL},{5UL,246UL,6UL,246UL,5UL},{5UL,246UL,6UL,246UL,5UL},{5UL,246UL,6UL,246UL,5UL},{5UL,246UL,6UL,246UL,5UL},{5UL,246UL,6UL,246UL,5UL}};
        int32_t l_187[6][7][6] = {{{0x7EF87257L,(-3L),1L,0x00A8361CL,0x56BA3397L,0x4B197DBAL},{0x7EF87257L,(-3L),1L,0x00A8361CL,0x56BA3397L,0x4B197DBAL},{0x7EF87257L,(-3L),1L,0x00A8361CL,0x56BA3397L,0x4B197DBAL},{0x7EF87257L,(-3L),1L,0x00A8361CL,0x56BA3397L,0x4B197DBAL},{0x7EF87257L,(-3L),1L,0x00A8361CL,0x56BA3397L,0x4B197DBAL},{0x7EF87257L,(-3L),1L,0x00A8361CL,0x56BA3397L,0x4B197DBAL},{0x7EF87257L,(-3L),1L,0x00A8361CL,0x56BA3397L,0x4B197DBAL}},{{0x7EF87257L,(-3L),1L,0x00A8361CL,0x56BA3397L,0x4B197DBAL},{0x7EF87257L,(-3L),1L,0x00A8361CL,0x56BA3397L,0x4B197DBAL},{0x7EF87257L,(-3L),1L,0x00A8361CL,0x56BA3397L,0x4B197DBAL},{0x7EF87257L,(-3L),1L,0x00A8361CL,0x56BA3397L,0x4B197DBAL},{0x7EF87257L,(-3L),1L,0x00A8361CL,0x56BA3397L,0x4B197DBAL},{0x7EF87257L,(-3L),1L,0x00A8361CL,0x56BA3397L,0x4B197DBAL},{0x7EF87257L,(-3L),1L,0x00A8361CL,0x56BA3397L,0x4B197DBAL}},{{0x7EF87257L,(-3L),1L,0x00A8361CL,0x56BA3397L,0x4B197DBAL},{0x7EF87257L,(-3L),1L,0x00A8361CL,0x56BA3397L,0x4B197DBAL},{0x7EF87257L,(-3L),1L,0x00A8361CL,0x56BA3397L,0x4B197DBAL},{0x7EF87257L,(-3L),1L,0x00A8361CL,0x56BA3397L,0x4B197DBAL},{0x7EF87257L,(-3L),1L,0x00A8361CL,0x56BA3397L,0x4B197DBAL},{0x7EF87257L,(-3L),1L,0x00A8361CL,0x56BA3397L,0x4B197DBAL},{0x7EF87257L,(-3L),1L,0x00A8361CL,0x56BA3397L,0x4B197DBAL}},{{0x7EF87257L,(-3L),1L,0x00A8361CL,0x56BA3397L,0x4B197DBAL},{0x7EF87257L,(-3L),1L,0x00A8361CL,0x56BA3397L,0x4B197DBAL},{0x7EF87257L,(-3L),1L,0x00A8361CL,0x56BA3397L,0x4B197DBAL},{0x7EF87257L,(-3L),1L,0x00A8361CL,0x56BA3397L,0x4B197DBAL},{0x7EF87257L,(-3L),1L,0x00A8361CL,0x56BA3397L,0x4B197DBAL},{0x7EF87257L,(-3L),1L,0x00A8361CL,0x56BA3397L,0x4B197DBAL},{0x7EF87257L,(-3L),1L,0x00A8361CL,0x56BA3397L,0x4B197DBAL}},{{0x7EF87257L,(-3L),1L,0x00A8361CL,0x56BA3397L,0x4B197DBAL},{0x7EF87257L,(-3L),1L,0x00A8361CL,0x56BA3397L,0x4B197DBAL},{0x7EF87257L,(-3L),1L,0x00A8361CL,0x56BA3397L,0x4B197DBAL},{0x7EF87257L,(-3L),1L,0x00A8361CL,0x56BA3397L,0x4B197DBAL},{0x7EF87257L,(-3L),1L,0x00A8361CL,0x56BA3397L,0x4B197DBAL},{0x7EF87257L,(-3L),1L,0x00A8361CL,0x56BA3397L,0x4B197DBAL},{0x7EF87257L,(-3L),1L,0x00A8361CL,0x56BA3397L,0x4B197DBAL}},{{0x7EF87257L,(-3L),1L,0x00A8361CL,0x56BA3397L,0x4B197DBAL},{0x7EF87257L,(-3L),1L,0x00A8361CL,0x56BA3397L,0x4B197DBAL},{0x7EF87257L,(-3L),1L,0x00A8361CL,0x56BA3397L,0x4B197DBAL},{0x7EF87257L,(-3L),1L,0x00A8361CL,0x56BA3397L,0x4B197DBAL},{0x7EF87257L,(-3L),1L,0x00A8361CL,0x56BA3397L,0x4B197DBAL},{0x7EF87257L,(-3L),1L,0x00A8361CL,0x56BA3397L,0x4B197DBAL},{0x7EF87257L,(-3L),1L,0x00A8361CL,0x56BA3397L,0x4B197DBAL}}};
        int i, j, k;
        l_187[0][3][1] ^= l_186[0][0];
        (*p_2023->g_173) = (*p_2023->g_4);
    }
    for (p_2023->g_6 = 10; (p_2023->g_6 > 13); p_2023->g_6 = safe_add_func_uint16_t_u_u(p_2023->g_6, 1))
    { /* block id: 73 */
        int32_t l_190 = 9L;
        VECTOR(int8_t, 2) l_191 = (VECTOR(int8_t, 2))(0x1DL, 0x1CL);
        uint16_t *l_214 = (void*)0;
        int32_t l_215 = 0x2ECC26A7L;
        int i;
        if (l_190)
            break;
        if ((((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(l_191.yxxx)).ywxwywxz)).s74)).hi || 255UL))
        { /* block id: 75 */
            int32_t *l_193 = &l_190;
            (*l_193) = p_168;
            if (l_191.x)
                break;
            (*p_2023->g_4) = l_194[0];
            return p_169;
        }
        else
        { /* block id: 80 */
            uint32_t l_197 = 4294967287UL;
            int8_t *l_204 = (void*)0;
            int8_t *l_205 = (void*)0;
            int8_t *l_206[10];
            int32_t l_207 = 0x5B2F457CL;
            int i;
            for (i = 0; i < 10; i++)
                l_206[i] = (void*)0;
            l_215 |= (+(p_168 >= (((p_168 && (safe_div_func_int32_t_s_s(l_197, (safe_add_func_int8_t_s_s((safe_rshift_func_uint8_t_u_s(255UL, (*p_170))), ((safe_div_func_int8_t_s_s((l_190 &= (l_207 = (*p_170))), 0xDDL)) & p_169)))))) | (safe_sub_func_uint8_t_u_u(((((safe_sub_func_int16_t_s_s(((VECTOR(int16_t, 4))((((safe_mod_func_int64_t_s_s((~p_168), p_2023->g_30)) , l_214) == &p_2023->g_120), (-1L), (-1L), 0x2F47L)).w, (*p_2023->g_156))) , p_2023->g_6) | 0xF5L) || l_197), (*p_170)))) != FAKE_DIVERGE(p_2023->global_0_offset, get_global_id(0), 10))));
            (*p_2023->g_173) = (**p_167);
        }
        p_168 = l_216;
        return p_2023->g_25.sc;
    }
    p_168 = (p_168 & 0x5D11L);
    return p_2023->g_25.s4;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global volatile int *g_atomic_reduction, __global int *sequence_input, __global long *g_comm_values) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[43];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 43; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[43];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 43; i++)
            l_special_values[i] = 0;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    __local int64_t l_comm_values[15];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 15; i++)
            l_comm_values[i] = 1;
    struct S0 c_2024;
    struct S0* p_2023 = &c_2024;
    struct S0 c_2025 = {
        0x250E6DA5L, // p_2023->g_6
        &p_2023->g_6, // p_2023->g_5
        &p_2023->g_5, // p_2023->g_4
        (VECTOR(uint64_t, 16))(18446744073709551615UL, (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0UL), 0UL), 0UL, 18446744073709551615UL, 0UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0UL), (VECTOR(uint64_t, 2))(18446744073709551615UL, 0UL), 18446744073709551615UL, 0UL, 18446744073709551615UL, 0UL), // p_2023->g_25
        0x38L, // p_2023->g_27
        (-2L), // p_2023->g_28
        1L, // p_2023->g_30
        0xC43AL, // p_2023->g_120
        {&p_2023->g_27,&p_2023->g_27,&p_2023->g_27,&p_2023->g_27}, // p_2023->g_127
        &p_2023->g_127[2], // p_2023->g_126
        0x6672L, // p_2023->g_157
        &p_2023->g_157, // p_2023->g_156
        &p_2023->g_5, // p_2023->g_173
        &p_2023->g_173, // p_2023->g_172
        {{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}},{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}}}, // p_2023->g_192
        0UL, // p_2023->g_229
        {{{249UL,0x09L},{249UL,0x09L},{249UL,0x09L},{249UL,0x09L},{249UL,0x09L},{249UL,0x09L},{249UL,0x09L},{249UL,0x09L},{249UL,0x09L},{249UL,0x09L}},{{249UL,0x09L},{249UL,0x09L},{249UL,0x09L},{249UL,0x09L},{249UL,0x09L},{249UL,0x09L},{249UL,0x09L},{249UL,0x09L},{249UL,0x09L},{249UL,0x09L}},{{249UL,0x09L},{249UL,0x09L},{249UL,0x09L},{249UL,0x09L},{249UL,0x09L},{249UL,0x09L},{249UL,0x09L},{249UL,0x09L},{249UL,0x09L},{249UL,0x09L}},{{249UL,0x09L},{249UL,0x09L},{249UL,0x09L},{249UL,0x09L},{249UL,0x09L},{249UL,0x09L},{249UL,0x09L},{249UL,0x09L},{249UL,0x09L},{249UL,0x09L}},{{249UL,0x09L},{249UL,0x09L},{249UL,0x09L},{249UL,0x09L},{249UL,0x09L},{249UL,0x09L},{249UL,0x09L},{249UL,0x09L},{249UL,0x09L},{249UL,0x09L}},{{249UL,0x09L},{249UL,0x09L},{249UL,0x09L},{249UL,0x09L},{249UL,0x09L},{249UL,0x09L},{249UL,0x09L},{249UL,0x09L},{249UL,0x09L},{249UL,0x09L}},{{249UL,0x09L},{249UL,0x09L},{249UL,0x09L},{249UL,0x09L},{249UL,0x09L},{249UL,0x09L},{249UL,0x09L},{249UL,0x09L},{249UL,0x09L},{249UL,0x09L}},{{249UL,0x09L},{249UL,0x09L},{249UL,0x09L},{249UL,0x09L},{249UL,0x09L},{249UL,0x09L},{249UL,0x09L},{249UL,0x09L},{249UL,0x09L},{249UL,0x09L}},{{249UL,0x09L},{249UL,0x09L},{249UL,0x09L},{249UL,0x09L},{249UL,0x09L},{249UL,0x09L},{249UL,0x09L},{249UL,0x09L},{249UL,0x09L},{249UL,0x09L}}}, // p_2023->g_244
        (VECTOR(uint16_t, 8))(3UL, (VECTOR(uint16_t, 4))(3UL, (VECTOR(uint16_t, 2))(3UL, 0UL), 0UL), 0UL, 3UL, 0UL), // p_2023->g_264
        0x04E3L, // p_2023->g_300
        &p_2023->g_300, // p_2023->g_299
        (void*)0, // p_2023->g_313
        0xF2E75F2890A5CC0DL, // p_2023->g_314
        (VECTOR(int16_t, 8))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x2858L), 0x2858L), 0x2858L, (-1L), 0x2858L), // p_2023->g_315
        {0x5FL,0x5FL}, // p_2023->g_318
        (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0x7CL), 0x7CL), // p_2023->g_337
        (VECTOR(int8_t, 8))(0x3CL, (VECTOR(int8_t, 4))(0x3CL, (VECTOR(int8_t, 2))(0x3CL, 0x7FL), 0x7FL), 0x7FL, 0x3CL, 0x7FL), // p_2023->g_344
        0UL, // p_2023->g_346
        8UL, // p_2023->g_349
        (VECTOR(int32_t, 2))((-6L), 0x53559968L), // p_2023->g_373
        (VECTOR(int32_t, 16))(0x09A58B86L, (VECTOR(int32_t, 4))(0x09A58B86L, (VECTOR(int32_t, 2))(0x09A58B86L, 0x1D2878E2L), 0x1D2878E2L), 0x1D2878E2L, 0x09A58B86L, 0x1D2878E2L, (VECTOR(int32_t, 2))(0x09A58B86L, 0x1D2878E2L), (VECTOR(int32_t, 2))(0x09A58B86L, 0x1D2878E2L), 0x09A58B86L, 0x1D2878E2L, 0x09A58B86L, 0x1D2878E2L), // p_2023->g_401
        (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0L), 0L), 0L, 1L, 0L, (VECTOR(int32_t, 2))(1L, 0L), (VECTOR(int32_t, 2))(1L, 0L), 1L, 0L, 1L, 0L), // p_2023->g_402
        (VECTOR(int32_t, 4))(0x5DC78E9CL, (VECTOR(int32_t, 2))(0x5DC78E9CL, 0x31FA734FL), 0x31FA734FL), // p_2023->g_406
        &p_2023->g_126, // p_2023->g_411
        (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x708F6720L), 0x708F6720L), // p_2023->g_413
        (VECTOR(int32_t, 4))(0x254B5914L, (VECTOR(int32_t, 2))(0x254B5914L, 0x5D9335CEL), 0x5D9335CEL), // p_2023->g_420
        0x30506BF2L, // p_2023->g_435
        (VECTOR(int64_t, 2))(0x76EEF07FE802B203L, 0x6E96F683429E33D1L), // p_2023->g_462
        247UL, // p_2023->g_488
        (void*)0, // p_2023->g_493
        0x141DD0CAA482C186L, // p_2023->g_494
        (VECTOR(int16_t, 16))(9L, (VECTOR(int16_t, 4))(9L, (VECTOR(int16_t, 2))(9L, 1L), 1L), 1L, 9L, 1L, (VECTOR(int16_t, 2))(9L, 1L), (VECTOR(int16_t, 2))(9L, 1L), 9L, 1L, 9L, 1L), // p_2023->g_498
        (VECTOR(int16_t, 16))(0x65CBL, (VECTOR(int16_t, 4))(0x65CBL, (VECTOR(int16_t, 2))(0x65CBL, 0x621FL), 0x621FL), 0x621FL, 0x65CBL, 0x621FL, (VECTOR(int16_t, 2))(0x65CBL, 0x621FL), (VECTOR(int16_t, 2))(0x65CBL, 0x621FL), 0x65CBL, 0x621FL, 0x65CBL, 0x621FL), // p_2023->g_499
        (VECTOR(int64_t, 16))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 0L), 0L), 0L, (-1L), 0L, (VECTOR(int64_t, 2))((-1L), 0L), (VECTOR(int64_t, 2))((-1L), 0L), (-1L), 0L, (-1L), 0L), // p_2023->g_506
        0x762B5A61027F3C70L, // p_2023->g_512
        (VECTOR(int32_t, 16))(0x11934E9DL, (VECTOR(int32_t, 4))(0x11934E9DL, (VECTOR(int32_t, 2))(0x11934E9DL, 0x33708A0AL), 0x33708A0AL), 0x33708A0AL, 0x11934E9DL, 0x33708A0AL, (VECTOR(int32_t, 2))(0x11934E9DL, 0x33708A0AL), (VECTOR(int32_t, 2))(0x11934E9DL, 0x33708A0AL), 0x11934E9DL, 0x33708A0AL, 0x11934E9DL, 0x33708A0AL), // p_2023->g_575
        {0xAD753C6CL,0xAD753C6CL,0xAD753C6CL,0xAD753C6CL,0xAD753C6CL,0xAD753C6CL,0xAD753C6CL,0xAD753C6CL}, // p_2023->g_576
        4294967295UL, // p_2023->g_593
        &p_2023->g_120, // p_2023->g_617
        {&p_2023->g_617,&p_2023->g_617,&p_2023->g_617,&p_2023->g_617}, // p_2023->g_616
        (VECTOR(int32_t, 16))(0x7D8F1AEBL, (VECTOR(int32_t, 4))(0x7D8F1AEBL, (VECTOR(int32_t, 2))(0x7D8F1AEBL, 0x045900A1L), 0x045900A1L), 0x045900A1L, 0x7D8F1AEBL, 0x045900A1L, (VECTOR(int32_t, 2))(0x7D8F1AEBL, 0x045900A1L), (VECTOR(int32_t, 2))(0x7D8F1AEBL, 0x045900A1L), 0x7D8F1AEBL, 0x045900A1L, 0x7D8F1AEBL, 0x045900A1L), // p_2023->g_634
        &p_2023->g_30, // p_2023->g_652
        &p_2023->g_652, // p_2023->g_651
        (VECTOR(int32_t, 16))(0x0F86AB24L, (VECTOR(int32_t, 4))(0x0F86AB24L, (VECTOR(int32_t, 2))(0x0F86AB24L, 0x215F40FEL), 0x215F40FEL), 0x215F40FEL, 0x0F86AB24L, 0x215F40FEL, (VECTOR(int32_t, 2))(0x0F86AB24L, 0x215F40FEL), (VECTOR(int32_t, 2))(0x0F86AB24L, 0x215F40FEL), 0x0F86AB24L, 0x215F40FEL, 0x0F86AB24L, 0x215F40FEL), // p_2023->g_665
        (VECTOR(int32_t, 8))(0x6ACFD3FFL, (VECTOR(int32_t, 4))(0x6ACFD3FFL, (VECTOR(int32_t, 2))(0x6ACFD3FFL, 0L), 0L), 0L, 0x6ACFD3FFL, 0L), // p_2023->g_667
        (VECTOR(int32_t, 16))(0x745DD52FL, (VECTOR(int32_t, 4))(0x745DD52FL, (VECTOR(int32_t, 2))(0x745DD52FL, 0x53488010L), 0x53488010L), 0x53488010L, 0x745DD52FL, 0x53488010L, (VECTOR(int32_t, 2))(0x745DD52FL, 0x53488010L), (VECTOR(int32_t, 2))(0x745DD52FL, 0x53488010L), 0x745DD52FL, 0x53488010L, 0x745DD52FL, 0x53488010L), // p_2023->g_668
        (VECTOR(int32_t, 2))(0x0D4688F7L, 1L), // p_2023->g_669
        (VECTOR(int32_t, 8))(0x39CBC6E5L, (VECTOR(int32_t, 4))(0x39CBC6E5L, (VECTOR(int32_t, 2))(0x39CBC6E5L, 3L), 3L), 3L, 0x39CBC6E5L, 3L), // p_2023->g_670
        4UL, // p_2023->g_689
        &p_2023->g_689, // p_2023->g_688
        &p_2023->g_688, // p_2023->g_687
        (VECTOR(uint32_t, 2))(0x8F71925AL, 4294967293UL), // p_2023->g_941
        {{{0x5DL,0x74L,0x13L,0x74L,0x5DL,0x5DL,0x74L,0x13L,0x74L,0x5DL},{0x5DL,0x74L,0x13L,0x74L,0x5DL,0x5DL,0x74L,0x13L,0x74L,0x5DL},{0x5DL,0x74L,0x13L,0x74L,0x5DL,0x5DL,0x74L,0x13L,0x74L,0x5DL},{0x5DL,0x74L,0x13L,0x74L,0x5DL,0x5DL,0x74L,0x13L,0x74L,0x5DL},{0x5DL,0x74L,0x13L,0x74L,0x5DL,0x5DL,0x74L,0x13L,0x74L,0x5DL}},{{0x5DL,0x74L,0x13L,0x74L,0x5DL,0x5DL,0x74L,0x13L,0x74L,0x5DL},{0x5DL,0x74L,0x13L,0x74L,0x5DL,0x5DL,0x74L,0x13L,0x74L,0x5DL},{0x5DL,0x74L,0x13L,0x74L,0x5DL,0x5DL,0x74L,0x13L,0x74L,0x5DL},{0x5DL,0x74L,0x13L,0x74L,0x5DL,0x5DL,0x74L,0x13L,0x74L,0x5DL},{0x5DL,0x74L,0x13L,0x74L,0x5DL,0x5DL,0x74L,0x13L,0x74L,0x5DL}},{{0x5DL,0x74L,0x13L,0x74L,0x5DL,0x5DL,0x74L,0x13L,0x74L,0x5DL},{0x5DL,0x74L,0x13L,0x74L,0x5DL,0x5DL,0x74L,0x13L,0x74L,0x5DL},{0x5DL,0x74L,0x13L,0x74L,0x5DL,0x5DL,0x74L,0x13L,0x74L,0x5DL},{0x5DL,0x74L,0x13L,0x74L,0x5DL,0x5DL,0x74L,0x13L,0x74L,0x5DL},{0x5DL,0x74L,0x13L,0x74L,0x5DL,0x5DL,0x74L,0x13L,0x74L,0x5DL}},{{0x5DL,0x74L,0x13L,0x74L,0x5DL,0x5DL,0x74L,0x13L,0x74L,0x5DL},{0x5DL,0x74L,0x13L,0x74L,0x5DL,0x5DL,0x74L,0x13L,0x74L,0x5DL},{0x5DL,0x74L,0x13L,0x74L,0x5DL,0x5DL,0x74L,0x13L,0x74L,0x5DL},{0x5DL,0x74L,0x13L,0x74L,0x5DL,0x5DL,0x74L,0x13L,0x74L,0x5DL},{0x5DL,0x74L,0x13L,0x74L,0x5DL,0x5DL,0x74L,0x13L,0x74L,0x5DL}},{{0x5DL,0x74L,0x13L,0x74L,0x5DL,0x5DL,0x74L,0x13L,0x74L,0x5DL},{0x5DL,0x74L,0x13L,0x74L,0x5DL,0x5DL,0x74L,0x13L,0x74L,0x5DL},{0x5DL,0x74L,0x13L,0x74L,0x5DL,0x5DL,0x74L,0x13L,0x74L,0x5DL},{0x5DL,0x74L,0x13L,0x74L,0x5DL,0x5DL,0x74L,0x13L,0x74L,0x5DL},{0x5DL,0x74L,0x13L,0x74L,0x5DL,0x5DL,0x74L,0x13L,0x74L,0x5DL}}}, // p_2023->g_943
        (VECTOR(int32_t, 2))((-9L), 0x1AEB800DL), // p_2023->g_1019
        (void*)0, // p_2023->g_1040
        (VECTOR(int16_t, 16))(0x57FDL, (VECTOR(int16_t, 4))(0x57FDL, (VECTOR(int16_t, 2))(0x57FDL, 6L), 6L), 6L, 0x57FDL, 6L, (VECTOR(int16_t, 2))(0x57FDL, 6L), (VECTOR(int16_t, 2))(0x57FDL, 6L), 0x57FDL, 6L, 0x57FDL, 6L), // p_2023->g_1100
        (VECTOR(int16_t, 8))(0x22B0L, (VECTOR(int16_t, 4))(0x22B0L, (VECTOR(int16_t, 2))(0x22B0L, 1L), 1L), 1L, 0x22B0L, 1L), // p_2023->g_1101
        (VECTOR(int16_t, 2))(0L, 0x4577L), // p_2023->g_1179
        &p_2023->g_349, // p_2023->g_1194
        {{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}}, // p_2023->g_1193
        (VECTOR(int32_t, 2))(1L, 8L), // p_2023->g_1207
        0xE541F651E4C50FB1L, // p_2023->g_1220
        (VECTOR(uint16_t, 8))(0xD10FL, (VECTOR(uint16_t, 4))(0xD10FL, (VECTOR(uint16_t, 2))(0xD10FL, 1UL), 1UL), 1UL, 0xD10FL, 1UL), // p_2023->g_1227
        (VECTOR(uint64_t, 8))(4UL, (VECTOR(uint64_t, 4))(4UL, (VECTOR(uint64_t, 2))(4UL, 0xD1E68E388E3FE587L), 0xD1E68E388E3FE587L), 0xD1E68E388E3FE587L, 4UL, 0xD1E68E388E3FE587L), // p_2023->g_1230
        (VECTOR(uint64_t, 16))(0xC184D3ABAB237153L, (VECTOR(uint64_t, 4))(0xC184D3ABAB237153L, (VECTOR(uint64_t, 2))(0xC184D3ABAB237153L, 1UL), 1UL), 1UL, 0xC184D3ABAB237153L, 1UL, (VECTOR(uint64_t, 2))(0xC184D3ABAB237153L, 1UL), (VECTOR(uint64_t, 2))(0xC184D3ABAB237153L, 1UL), 0xC184D3ABAB237153L, 1UL, 0xC184D3ABAB237153L, 1UL), // p_2023->g_1231
        (VECTOR(uint64_t, 8))(0x016C924C27BD225EL, (VECTOR(uint64_t, 4))(0x016C924C27BD225EL, (VECTOR(uint64_t, 2))(0x016C924C27BD225EL, 4UL), 4UL), 4UL, 0x016C924C27BD225EL, 4UL), // p_2023->g_1232
        (VECTOR(int64_t, 2))(0x447AD5F97BCD7F32L, 0L), // p_2023->g_1248
        (VECTOR(int64_t, 16))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 0L), 0L), 0L, 1L, 0L, (VECTOR(int64_t, 2))(1L, 0L), (VECTOR(int64_t, 2))(1L, 0L), 1L, 0L, 1L, 0L), // p_2023->g_1253
        (VECTOR(int64_t, 4))(0x6D88992005D3B817L, (VECTOR(int64_t, 2))(0x6D88992005D3B817L, 0x1C2E2970F12791F7L), 0x1C2E2970F12791F7L), // p_2023->g_1254
        (VECTOR(int64_t, 2))(1L, 0x464081BA7246BAD3L), // p_2023->g_1256
        (VECTOR(uint8_t, 8))(0x86L, (VECTOR(uint8_t, 4))(0x86L, (VECTOR(uint8_t, 2))(0x86L, 0x59L), 0x59L), 0x59L, 0x86L, 0x59L), // p_2023->g_1285
        (VECTOR(uint8_t, 2))(0xA1L, 0xDAL), // p_2023->g_1286
        (VECTOR(int32_t, 2))(0x06F6D852L, 0x426DAB44L), // p_2023->g_1295
        {(void*)0,&p_2023->g_411,(void*)0,(void*)0,&p_2023->g_411,(void*)0,(void*)0,&p_2023->g_411,(void*)0,(void*)0}, // p_2023->g_1302
        {65535UL,65535UL,65535UL,65535UL,65535UL,65535UL,65535UL}, // p_2023->g_1312
        (VECTOR(uint64_t, 2))(0xF8E7D1EE27EA3A9BL, 0x58729DEC9292C944L), // p_2023->g_1381
        (VECTOR(int8_t, 2))(0x76L, 0L), // p_2023->g_1425
        (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x73B7L), 0x73B7L), // p_2023->g_1553
        (VECTOR(int64_t, 4))((-3L), (VECTOR(int64_t, 2))((-3L), 0L), 0L), // p_2023->g_1563
        (VECTOR(int16_t, 2))(2L, (-7L)), // p_2023->g_1572
        (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, (-6L)), (-6L)), (-6L), 0L, (-6L), (VECTOR(int32_t, 2))(0L, (-6L)), (VECTOR(int32_t, 2))(0L, (-6L)), 0L, (-6L), 0L, (-6L)), // p_2023->g_1602
        (void*)0, // p_2023->g_1609
        &p_2023->g_1609, // p_2023->g_1608
        &p_2023->g_127[2], // p_2023->g_1643
        &p_2023->g_1643, // p_2023->g_1642
        &p_2023->g_1642, // p_2023->g_1641
        &p_2023->g_1641, // p_2023->g_1640
        &p_2023->g_1640, // p_2023->g_1639
        (VECTOR(uint64_t, 4))(0x2718B7F7569ED9BAL, (VECTOR(uint64_t, 2))(0x2718B7F7569ED9BAL, 0xCECA448881EE1440L), 0xCECA448881EE1440L), // p_2023->g_1646
        (VECTOR(uint32_t, 8))(0x6E4A88F2L, (VECTOR(uint32_t, 4))(0x6E4A88F2L, (VECTOR(uint32_t, 2))(0x6E4A88F2L, 4294967295UL), 4294967295UL), 4294967295UL, 0x6E4A88F2L, 4294967295UL), // p_2023->g_1669
        (VECTOR(uint32_t, 8))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 0x720B48D9L), 0x720B48D9L), 0x720B48D9L, 4294967295UL, 0x720B48D9L), // p_2023->g_1694
        (VECTOR(uint32_t, 2))(0x6C040434L, 0x01B35FABL), // p_2023->g_1703
        (VECTOR(int32_t, 8))((-9L), (VECTOR(int32_t, 4))((-9L), (VECTOR(int32_t, 2))((-9L), 0x6ED42E9AL), 0x6ED42E9AL), 0x6ED42E9AL, (-9L), 0x6ED42E9AL), // p_2023->g_1719
        (VECTOR(int32_t, 2))(0x13015034L, (-1L)), // p_2023->g_1720
        (VECTOR(int32_t, 4))(6L, (VECTOR(int32_t, 2))(6L, 0x34ED250BL), 0x34ED250BL), // p_2023->g_1721
        (VECTOR(uint32_t, 8))(4294967292UL, (VECTOR(uint32_t, 4))(4294967292UL, (VECTOR(uint32_t, 2))(4294967292UL, 0xE2FF11E2L), 0xE2FF11E2L), 0xE2FF11E2L, 4294967292UL, 0xE2FF11E2L), // p_2023->g_1722
        0x3EB0L, // p_2023->g_1766
        (VECTOR(int8_t, 8))(0x0AL, (VECTOR(int8_t, 4))(0x0AL, (VECTOR(int8_t, 2))(0x0AL, 0x4AL), 0x4AL), 0x4AL, 0x0AL, 0x4AL), // p_2023->g_1778
        (void*)0, // p_2023->g_1785
        &p_2023->g_1785, // p_2023->g_1784
        &p_2023->g_1784, // p_2023->g_1783
        &p_2023->g_593, // p_2023->g_1834
        0, // p_2023->v_collective
        sequence_input[get_global_id(0)], // p_2023->global_0_offset
        sequence_input[get_global_id(1)], // p_2023->global_1_offset
        sequence_input[get_global_id(2)], // p_2023->global_2_offset
        sequence_input[get_local_id(0)], // p_2023->local_0_offset
        sequence_input[get_local_id(1)], // p_2023->local_1_offset
        sequence_input[get_local_id(2)], // p_2023->local_2_offset
        sequence_input[get_group_id(0)], // p_2023->group_0_offset
        sequence_input[get_group_id(1)], // p_2023->group_1_offset
        sequence_input[get_group_id(2)], // p_2023->group_2_offset
        (safe_add_func_uint32_t_u_u((safe_mul_func_uint32_t_u_u(get_linear_group_id(), 15)), permutations[0][get_linear_local_id()])), // p_2023->tid
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
        l_comm_values, // l_comm_values
        g_comm_values, // g_comm_values
    };
    c_2024 = c_2025;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_2023);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_2023->g_6, "p_2023->g_6", print_hash_value);
    transparent_crc(p_2023->g_25.s0, "p_2023->g_25.s0", print_hash_value);
    transparent_crc(p_2023->g_25.s1, "p_2023->g_25.s1", print_hash_value);
    transparent_crc(p_2023->g_25.s2, "p_2023->g_25.s2", print_hash_value);
    transparent_crc(p_2023->g_25.s3, "p_2023->g_25.s3", print_hash_value);
    transparent_crc(p_2023->g_25.s4, "p_2023->g_25.s4", print_hash_value);
    transparent_crc(p_2023->g_25.s5, "p_2023->g_25.s5", print_hash_value);
    transparent_crc(p_2023->g_25.s6, "p_2023->g_25.s6", print_hash_value);
    transparent_crc(p_2023->g_25.s7, "p_2023->g_25.s7", print_hash_value);
    transparent_crc(p_2023->g_25.s8, "p_2023->g_25.s8", print_hash_value);
    transparent_crc(p_2023->g_25.s9, "p_2023->g_25.s9", print_hash_value);
    transparent_crc(p_2023->g_25.sa, "p_2023->g_25.sa", print_hash_value);
    transparent_crc(p_2023->g_25.sb, "p_2023->g_25.sb", print_hash_value);
    transparent_crc(p_2023->g_25.sc, "p_2023->g_25.sc", print_hash_value);
    transparent_crc(p_2023->g_25.sd, "p_2023->g_25.sd", print_hash_value);
    transparent_crc(p_2023->g_25.se, "p_2023->g_25.se", print_hash_value);
    transparent_crc(p_2023->g_25.sf, "p_2023->g_25.sf", print_hash_value);
    transparent_crc(p_2023->g_27, "p_2023->g_27", print_hash_value);
    transparent_crc(p_2023->g_28, "p_2023->g_28", print_hash_value);
    transparent_crc(p_2023->g_30, "p_2023->g_30", print_hash_value);
    transparent_crc(p_2023->g_120, "p_2023->g_120", print_hash_value);
    transparent_crc(p_2023->g_157, "p_2023->g_157", print_hash_value);
    transparent_crc(p_2023->g_229, "p_2023->g_229", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 10; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_2023->g_244[i][j][k], "p_2023->g_244[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2023->g_264.s0, "p_2023->g_264.s0", print_hash_value);
    transparent_crc(p_2023->g_264.s1, "p_2023->g_264.s1", print_hash_value);
    transparent_crc(p_2023->g_264.s2, "p_2023->g_264.s2", print_hash_value);
    transparent_crc(p_2023->g_264.s3, "p_2023->g_264.s3", print_hash_value);
    transparent_crc(p_2023->g_264.s4, "p_2023->g_264.s4", print_hash_value);
    transparent_crc(p_2023->g_264.s5, "p_2023->g_264.s5", print_hash_value);
    transparent_crc(p_2023->g_264.s6, "p_2023->g_264.s6", print_hash_value);
    transparent_crc(p_2023->g_264.s7, "p_2023->g_264.s7", print_hash_value);
    transparent_crc(p_2023->g_300, "p_2023->g_300", print_hash_value);
    transparent_crc(p_2023->g_314, "p_2023->g_314", print_hash_value);
    transparent_crc(p_2023->g_315.s0, "p_2023->g_315.s0", print_hash_value);
    transparent_crc(p_2023->g_315.s1, "p_2023->g_315.s1", print_hash_value);
    transparent_crc(p_2023->g_315.s2, "p_2023->g_315.s2", print_hash_value);
    transparent_crc(p_2023->g_315.s3, "p_2023->g_315.s3", print_hash_value);
    transparent_crc(p_2023->g_315.s4, "p_2023->g_315.s4", print_hash_value);
    transparent_crc(p_2023->g_315.s5, "p_2023->g_315.s5", print_hash_value);
    transparent_crc(p_2023->g_315.s6, "p_2023->g_315.s6", print_hash_value);
    transparent_crc(p_2023->g_315.s7, "p_2023->g_315.s7", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_2023->g_318[i], "p_2023->g_318[i]", print_hash_value);

    }
    transparent_crc(p_2023->g_337.x, "p_2023->g_337.x", print_hash_value);
    transparent_crc(p_2023->g_337.y, "p_2023->g_337.y", print_hash_value);
    transparent_crc(p_2023->g_337.z, "p_2023->g_337.z", print_hash_value);
    transparent_crc(p_2023->g_337.w, "p_2023->g_337.w", print_hash_value);
    transparent_crc(p_2023->g_344.s0, "p_2023->g_344.s0", print_hash_value);
    transparent_crc(p_2023->g_344.s1, "p_2023->g_344.s1", print_hash_value);
    transparent_crc(p_2023->g_344.s2, "p_2023->g_344.s2", print_hash_value);
    transparent_crc(p_2023->g_344.s3, "p_2023->g_344.s3", print_hash_value);
    transparent_crc(p_2023->g_344.s4, "p_2023->g_344.s4", print_hash_value);
    transparent_crc(p_2023->g_344.s5, "p_2023->g_344.s5", print_hash_value);
    transparent_crc(p_2023->g_344.s6, "p_2023->g_344.s6", print_hash_value);
    transparent_crc(p_2023->g_344.s7, "p_2023->g_344.s7", print_hash_value);
    transparent_crc(p_2023->g_346, "p_2023->g_346", print_hash_value);
    transparent_crc(p_2023->g_349, "p_2023->g_349", print_hash_value);
    transparent_crc(p_2023->g_373.x, "p_2023->g_373.x", print_hash_value);
    transparent_crc(p_2023->g_373.y, "p_2023->g_373.y", print_hash_value);
    transparent_crc(p_2023->g_401.s0, "p_2023->g_401.s0", print_hash_value);
    transparent_crc(p_2023->g_401.s1, "p_2023->g_401.s1", print_hash_value);
    transparent_crc(p_2023->g_401.s2, "p_2023->g_401.s2", print_hash_value);
    transparent_crc(p_2023->g_401.s3, "p_2023->g_401.s3", print_hash_value);
    transparent_crc(p_2023->g_401.s4, "p_2023->g_401.s4", print_hash_value);
    transparent_crc(p_2023->g_401.s5, "p_2023->g_401.s5", print_hash_value);
    transparent_crc(p_2023->g_401.s6, "p_2023->g_401.s6", print_hash_value);
    transparent_crc(p_2023->g_401.s7, "p_2023->g_401.s7", print_hash_value);
    transparent_crc(p_2023->g_401.s8, "p_2023->g_401.s8", print_hash_value);
    transparent_crc(p_2023->g_401.s9, "p_2023->g_401.s9", print_hash_value);
    transparent_crc(p_2023->g_401.sa, "p_2023->g_401.sa", print_hash_value);
    transparent_crc(p_2023->g_401.sb, "p_2023->g_401.sb", print_hash_value);
    transparent_crc(p_2023->g_401.sc, "p_2023->g_401.sc", print_hash_value);
    transparent_crc(p_2023->g_401.sd, "p_2023->g_401.sd", print_hash_value);
    transparent_crc(p_2023->g_401.se, "p_2023->g_401.se", print_hash_value);
    transparent_crc(p_2023->g_401.sf, "p_2023->g_401.sf", print_hash_value);
    transparent_crc(p_2023->g_402.s0, "p_2023->g_402.s0", print_hash_value);
    transparent_crc(p_2023->g_402.s1, "p_2023->g_402.s1", print_hash_value);
    transparent_crc(p_2023->g_402.s2, "p_2023->g_402.s2", print_hash_value);
    transparent_crc(p_2023->g_402.s3, "p_2023->g_402.s3", print_hash_value);
    transparent_crc(p_2023->g_402.s4, "p_2023->g_402.s4", print_hash_value);
    transparent_crc(p_2023->g_402.s5, "p_2023->g_402.s5", print_hash_value);
    transparent_crc(p_2023->g_402.s6, "p_2023->g_402.s6", print_hash_value);
    transparent_crc(p_2023->g_402.s7, "p_2023->g_402.s7", print_hash_value);
    transparent_crc(p_2023->g_402.s8, "p_2023->g_402.s8", print_hash_value);
    transparent_crc(p_2023->g_402.s9, "p_2023->g_402.s9", print_hash_value);
    transparent_crc(p_2023->g_402.sa, "p_2023->g_402.sa", print_hash_value);
    transparent_crc(p_2023->g_402.sb, "p_2023->g_402.sb", print_hash_value);
    transparent_crc(p_2023->g_402.sc, "p_2023->g_402.sc", print_hash_value);
    transparent_crc(p_2023->g_402.sd, "p_2023->g_402.sd", print_hash_value);
    transparent_crc(p_2023->g_402.se, "p_2023->g_402.se", print_hash_value);
    transparent_crc(p_2023->g_402.sf, "p_2023->g_402.sf", print_hash_value);
    transparent_crc(p_2023->g_406.x, "p_2023->g_406.x", print_hash_value);
    transparent_crc(p_2023->g_406.y, "p_2023->g_406.y", print_hash_value);
    transparent_crc(p_2023->g_406.z, "p_2023->g_406.z", print_hash_value);
    transparent_crc(p_2023->g_406.w, "p_2023->g_406.w", print_hash_value);
    transparent_crc(p_2023->g_413.x, "p_2023->g_413.x", print_hash_value);
    transparent_crc(p_2023->g_413.y, "p_2023->g_413.y", print_hash_value);
    transparent_crc(p_2023->g_413.z, "p_2023->g_413.z", print_hash_value);
    transparent_crc(p_2023->g_413.w, "p_2023->g_413.w", print_hash_value);
    transparent_crc(p_2023->g_420.x, "p_2023->g_420.x", print_hash_value);
    transparent_crc(p_2023->g_420.y, "p_2023->g_420.y", print_hash_value);
    transparent_crc(p_2023->g_420.z, "p_2023->g_420.z", print_hash_value);
    transparent_crc(p_2023->g_420.w, "p_2023->g_420.w", print_hash_value);
    transparent_crc(p_2023->g_435, "p_2023->g_435", print_hash_value);
    transparent_crc(p_2023->g_462.x, "p_2023->g_462.x", print_hash_value);
    transparent_crc(p_2023->g_462.y, "p_2023->g_462.y", print_hash_value);
    transparent_crc(p_2023->g_488, "p_2023->g_488", print_hash_value);
    transparent_crc(p_2023->g_494, "p_2023->g_494", print_hash_value);
    transparent_crc(p_2023->g_498.s0, "p_2023->g_498.s0", print_hash_value);
    transparent_crc(p_2023->g_498.s1, "p_2023->g_498.s1", print_hash_value);
    transparent_crc(p_2023->g_498.s2, "p_2023->g_498.s2", print_hash_value);
    transparent_crc(p_2023->g_498.s3, "p_2023->g_498.s3", print_hash_value);
    transparent_crc(p_2023->g_498.s4, "p_2023->g_498.s4", print_hash_value);
    transparent_crc(p_2023->g_498.s5, "p_2023->g_498.s5", print_hash_value);
    transparent_crc(p_2023->g_498.s6, "p_2023->g_498.s6", print_hash_value);
    transparent_crc(p_2023->g_498.s7, "p_2023->g_498.s7", print_hash_value);
    transparent_crc(p_2023->g_498.s8, "p_2023->g_498.s8", print_hash_value);
    transparent_crc(p_2023->g_498.s9, "p_2023->g_498.s9", print_hash_value);
    transparent_crc(p_2023->g_498.sa, "p_2023->g_498.sa", print_hash_value);
    transparent_crc(p_2023->g_498.sb, "p_2023->g_498.sb", print_hash_value);
    transparent_crc(p_2023->g_498.sc, "p_2023->g_498.sc", print_hash_value);
    transparent_crc(p_2023->g_498.sd, "p_2023->g_498.sd", print_hash_value);
    transparent_crc(p_2023->g_498.se, "p_2023->g_498.se", print_hash_value);
    transparent_crc(p_2023->g_498.sf, "p_2023->g_498.sf", print_hash_value);
    transparent_crc(p_2023->g_499.s0, "p_2023->g_499.s0", print_hash_value);
    transparent_crc(p_2023->g_499.s1, "p_2023->g_499.s1", print_hash_value);
    transparent_crc(p_2023->g_499.s2, "p_2023->g_499.s2", print_hash_value);
    transparent_crc(p_2023->g_499.s3, "p_2023->g_499.s3", print_hash_value);
    transparent_crc(p_2023->g_499.s4, "p_2023->g_499.s4", print_hash_value);
    transparent_crc(p_2023->g_499.s5, "p_2023->g_499.s5", print_hash_value);
    transparent_crc(p_2023->g_499.s6, "p_2023->g_499.s6", print_hash_value);
    transparent_crc(p_2023->g_499.s7, "p_2023->g_499.s7", print_hash_value);
    transparent_crc(p_2023->g_499.s8, "p_2023->g_499.s8", print_hash_value);
    transparent_crc(p_2023->g_499.s9, "p_2023->g_499.s9", print_hash_value);
    transparent_crc(p_2023->g_499.sa, "p_2023->g_499.sa", print_hash_value);
    transparent_crc(p_2023->g_499.sb, "p_2023->g_499.sb", print_hash_value);
    transparent_crc(p_2023->g_499.sc, "p_2023->g_499.sc", print_hash_value);
    transparent_crc(p_2023->g_499.sd, "p_2023->g_499.sd", print_hash_value);
    transparent_crc(p_2023->g_499.se, "p_2023->g_499.se", print_hash_value);
    transparent_crc(p_2023->g_499.sf, "p_2023->g_499.sf", print_hash_value);
    transparent_crc(p_2023->g_506.s0, "p_2023->g_506.s0", print_hash_value);
    transparent_crc(p_2023->g_506.s1, "p_2023->g_506.s1", print_hash_value);
    transparent_crc(p_2023->g_506.s2, "p_2023->g_506.s2", print_hash_value);
    transparent_crc(p_2023->g_506.s3, "p_2023->g_506.s3", print_hash_value);
    transparent_crc(p_2023->g_506.s4, "p_2023->g_506.s4", print_hash_value);
    transparent_crc(p_2023->g_506.s5, "p_2023->g_506.s5", print_hash_value);
    transparent_crc(p_2023->g_506.s6, "p_2023->g_506.s6", print_hash_value);
    transparent_crc(p_2023->g_506.s7, "p_2023->g_506.s7", print_hash_value);
    transparent_crc(p_2023->g_506.s8, "p_2023->g_506.s8", print_hash_value);
    transparent_crc(p_2023->g_506.s9, "p_2023->g_506.s9", print_hash_value);
    transparent_crc(p_2023->g_506.sa, "p_2023->g_506.sa", print_hash_value);
    transparent_crc(p_2023->g_506.sb, "p_2023->g_506.sb", print_hash_value);
    transparent_crc(p_2023->g_506.sc, "p_2023->g_506.sc", print_hash_value);
    transparent_crc(p_2023->g_506.sd, "p_2023->g_506.sd", print_hash_value);
    transparent_crc(p_2023->g_506.se, "p_2023->g_506.se", print_hash_value);
    transparent_crc(p_2023->g_506.sf, "p_2023->g_506.sf", print_hash_value);
    transparent_crc(p_2023->g_512, "p_2023->g_512", print_hash_value);
    transparent_crc(p_2023->g_575.s0, "p_2023->g_575.s0", print_hash_value);
    transparent_crc(p_2023->g_575.s1, "p_2023->g_575.s1", print_hash_value);
    transparent_crc(p_2023->g_575.s2, "p_2023->g_575.s2", print_hash_value);
    transparent_crc(p_2023->g_575.s3, "p_2023->g_575.s3", print_hash_value);
    transparent_crc(p_2023->g_575.s4, "p_2023->g_575.s4", print_hash_value);
    transparent_crc(p_2023->g_575.s5, "p_2023->g_575.s5", print_hash_value);
    transparent_crc(p_2023->g_575.s6, "p_2023->g_575.s6", print_hash_value);
    transparent_crc(p_2023->g_575.s7, "p_2023->g_575.s7", print_hash_value);
    transparent_crc(p_2023->g_575.s8, "p_2023->g_575.s8", print_hash_value);
    transparent_crc(p_2023->g_575.s9, "p_2023->g_575.s9", print_hash_value);
    transparent_crc(p_2023->g_575.sa, "p_2023->g_575.sa", print_hash_value);
    transparent_crc(p_2023->g_575.sb, "p_2023->g_575.sb", print_hash_value);
    transparent_crc(p_2023->g_575.sc, "p_2023->g_575.sc", print_hash_value);
    transparent_crc(p_2023->g_575.sd, "p_2023->g_575.sd", print_hash_value);
    transparent_crc(p_2023->g_575.se, "p_2023->g_575.se", print_hash_value);
    transparent_crc(p_2023->g_575.sf, "p_2023->g_575.sf", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_2023->g_576[i], "p_2023->g_576[i]", print_hash_value);

    }
    transparent_crc(p_2023->g_593, "p_2023->g_593", print_hash_value);
    transparent_crc(p_2023->g_634.s0, "p_2023->g_634.s0", print_hash_value);
    transparent_crc(p_2023->g_634.s1, "p_2023->g_634.s1", print_hash_value);
    transparent_crc(p_2023->g_634.s2, "p_2023->g_634.s2", print_hash_value);
    transparent_crc(p_2023->g_634.s3, "p_2023->g_634.s3", print_hash_value);
    transparent_crc(p_2023->g_634.s4, "p_2023->g_634.s4", print_hash_value);
    transparent_crc(p_2023->g_634.s5, "p_2023->g_634.s5", print_hash_value);
    transparent_crc(p_2023->g_634.s6, "p_2023->g_634.s6", print_hash_value);
    transparent_crc(p_2023->g_634.s7, "p_2023->g_634.s7", print_hash_value);
    transparent_crc(p_2023->g_634.s8, "p_2023->g_634.s8", print_hash_value);
    transparent_crc(p_2023->g_634.s9, "p_2023->g_634.s9", print_hash_value);
    transparent_crc(p_2023->g_634.sa, "p_2023->g_634.sa", print_hash_value);
    transparent_crc(p_2023->g_634.sb, "p_2023->g_634.sb", print_hash_value);
    transparent_crc(p_2023->g_634.sc, "p_2023->g_634.sc", print_hash_value);
    transparent_crc(p_2023->g_634.sd, "p_2023->g_634.sd", print_hash_value);
    transparent_crc(p_2023->g_634.se, "p_2023->g_634.se", print_hash_value);
    transparent_crc(p_2023->g_634.sf, "p_2023->g_634.sf", print_hash_value);
    transparent_crc(p_2023->g_665.s0, "p_2023->g_665.s0", print_hash_value);
    transparent_crc(p_2023->g_665.s1, "p_2023->g_665.s1", print_hash_value);
    transparent_crc(p_2023->g_665.s2, "p_2023->g_665.s2", print_hash_value);
    transparent_crc(p_2023->g_665.s3, "p_2023->g_665.s3", print_hash_value);
    transparent_crc(p_2023->g_665.s4, "p_2023->g_665.s4", print_hash_value);
    transparent_crc(p_2023->g_665.s5, "p_2023->g_665.s5", print_hash_value);
    transparent_crc(p_2023->g_665.s6, "p_2023->g_665.s6", print_hash_value);
    transparent_crc(p_2023->g_665.s7, "p_2023->g_665.s7", print_hash_value);
    transparent_crc(p_2023->g_665.s8, "p_2023->g_665.s8", print_hash_value);
    transparent_crc(p_2023->g_665.s9, "p_2023->g_665.s9", print_hash_value);
    transparent_crc(p_2023->g_665.sa, "p_2023->g_665.sa", print_hash_value);
    transparent_crc(p_2023->g_665.sb, "p_2023->g_665.sb", print_hash_value);
    transparent_crc(p_2023->g_665.sc, "p_2023->g_665.sc", print_hash_value);
    transparent_crc(p_2023->g_665.sd, "p_2023->g_665.sd", print_hash_value);
    transparent_crc(p_2023->g_665.se, "p_2023->g_665.se", print_hash_value);
    transparent_crc(p_2023->g_665.sf, "p_2023->g_665.sf", print_hash_value);
    transparent_crc(p_2023->g_667.s0, "p_2023->g_667.s0", print_hash_value);
    transparent_crc(p_2023->g_667.s1, "p_2023->g_667.s1", print_hash_value);
    transparent_crc(p_2023->g_667.s2, "p_2023->g_667.s2", print_hash_value);
    transparent_crc(p_2023->g_667.s3, "p_2023->g_667.s3", print_hash_value);
    transparent_crc(p_2023->g_667.s4, "p_2023->g_667.s4", print_hash_value);
    transparent_crc(p_2023->g_667.s5, "p_2023->g_667.s5", print_hash_value);
    transparent_crc(p_2023->g_667.s6, "p_2023->g_667.s6", print_hash_value);
    transparent_crc(p_2023->g_667.s7, "p_2023->g_667.s7", print_hash_value);
    transparent_crc(p_2023->g_668.s0, "p_2023->g_668.s0", print_hash_value);
    transparent_crc(p_2023->g_668.s1, "p_2023->g_668.s1", print_hash_value);
    transparent_crc(p_2023->g_668.s2, "p_2023->g_668.s2", print_hash_value);
    transparent_crc(p_2023->g_668.s3, "p_2023->g_668.s3", print_hash_value);
    transparent_crc(p_2023->g_668.s4, "p_2023->g_668.s4", print_hash_value);
    transparent_crc(p_2023->g_668.s5, "p_2023->g_668.s5", print_hash_value);
    transparent_crc(p_2023->g_668.s6, "p_2023->g_668.s6", print_hash_value);
    transparent_crc(p_2023->g_668.s7, "p_2023->g_668.s7", print_hash_value);
    transparent_crc(p_2023->g_668.s8, "p_2023->g_668.s8", print_hash_value);
    transparent_crc(p_2023->g_668.s9, "p_2023->g_668.s9", print_hash_value);
    transparent_crc(p_2023->g_668.sa, "p_2023->g_668.sa", print_hash_value);
    transparent_crc(p_2023->g_668.sb, "p_2023->g_668.sb", print_hash_value);
    transparent_crc(p_2023->g_668.sc, "p_2023->g_668.sc", print_hash_value);
    transparent_crc(p_2023->g_668.sd, "p_2023->g_668.sd", print_hash_value);
    transparent_crc(p_2023->g_668.se, "p_2023->g_668.se", print_hash_value);
    transparent_crc(p_2023->g_668.sf, "p_2023->g_668.sf", print_hash_value);
    transparent_crc(p_2023->g_669.x, "p_2023->g_669.x", print_hash_value);
    transparent_crc(p_2023->g_669.y, "p_2023->g_669.y", print_hash_value);
    transparent_crc(p_2023->g_670.s0, "p_2023->g_670.s0", print_hash_value);
    transparent_crc(p_2023->g_670.s1, "p_2023->g_670.s1", print_hash_value);
    transparent_crc(p_2023->g_670.s2, "p_2023->g_670.s2", print_hash_value);
    transparent_crc(p_2023->g_670.s3, "p_2023->g_670.s3", print_hash_value);
    transparent_crc(p_2023->g_670.s4, "p_2023->g_670.s4", print_hash_value);
    transparent_crc(p_2023->g_670.s5, "p_2023->g_670.s5", print_hash_value);
    transparent_crc(p_2023->g_670.s6, "p_2023->g_670.s6", print_hash_value);
    transparent_crc(p_2023->g_670.s7, "p_2023->g_670.s7", print_hash_value);
    transparent_crc(p_2023->g_689, "p_2023->g_689", print_hash_value);
    transparent_crc(p_2023->g_941.x, "p_2023->g_941.x", print_hash_value);
    transparent_crc(p_2023->g_941.y, "p_2023->g_941.y", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 5; j++)
        {
            for (k = 0; k < 10; k++)
            {
                transparent_crc(p_2023->g_943[i][j][k], "p_2023->g_943[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2023->g_1019.x, "p_2023->g_1019.x", print_hash_value);
    transparent_crc(p_2023->g_1019.y, "p_2023->g_1019.y", print_hash_value);
    transparent_crc(p_2023->g_1100.s0, "p_2023->g_1100.s0", print_hash_value);
    transparent_crc(p_2023->g_1100.s1, "p_2023->g_1100.s1", print_hash_value);
    transparent_crc(p_2023->g_1100.s2, "p_2023->g_1100.s2", print_hash_value);
    transparent_crc(p_2023->g_1100.s3, "p_2023->g_1100.s3", print_hash_value);
    transparent_crc(p_2023->g_1100.s4, "p_2023->g_1100.s4", print_hash_value);
    transparent_crc(p_2023->g_1100.s5, "p_2023->g_1100.s5", print_hash_value);
    transparent_crc(p_2023->g_1100.s6, "p_2023->g_1100.s6", print_hash_value);
    transparent_crc(p_2023->g_1100.s7, "p_2023->g_1100.s7", print_hash_value);
    transparent_crc(p_2023->g_1100.s8, "p_2023->g_1100.s8", print_hash_value);
    transparent_crc(p_2023->g_1100.s9, "p_2023->g_1100.s9", print_hash_value);
    transparent_crc(p_2023->g_1100.sa, "p_2023->g_1100.sa", print_hash_value);
    transparent_crc(p_2023->g_1100.sb, "p_2023->g_1100.sb", print_hash_value);
    transparent_crc(p_2023->g_1100.sc, "p_2023->g_1100.sc", print_hash_value);
    transparent_crc(p_2023->g_1100.sd, "p_2023->g_1100.sd", print_hash_value);
    transparent_crc(p_2023->g_1100.se, "p_2023->g_1100.se", print_hash_value);
    transparent_crc(p_2023->g_1100.sf, "p_2023->g_1100.sf", print_hash_value);
    transparent_crc(p_2023->g_1101.s0, "p_2023->g_1101.s0", print_hash_value);
    transparent_crc(p_2023->g_1101.s1, "p_2023->g_1101.s1", print_hash_value);
    transparent_crc(p_2023->g_1101.s2, "p_2023->g_1101.s2", print_hash_value);
    transparent_crc(p_2023->g_1101.s3, "p_2023->g_1101.s3", print_hash_value);
    transparent_crc(p_2023->g_1101.s4, "p_2023->g_1101.s4", print_hash_value);
    transparent_crc(p_2023->g_1101.s5, "p_2023->g_1101.s5", print_hash_value);
    transparent_crc(p_2023->g_1101.s6, "p_2023->g_1101.s6", print_hash_value);
    transparent_crc(p_2023->g_1101.s7, "p_2023->g_1101.s7", print_hash_value);
    transparent_crc(p_2023->g_1179.x, "p_2023->g_1179.x", print_hash_value);
    transparent_crc(p_2023->g_1179.y, "p_2023->g_1179.y", print_hash_value);
    transparent_crc(p_2023->g_1207.x, "p_2023->g_1207.x", print_hash_value);
    transparent_crc(p_2023->g_1207.y, "p_2023->g_1207.y", print_hash_value);
    transparent_crc(p_2023->g_1220, "p_2023->g_1220", print_hash_value);
    transparent_crc(p_2023->g_1227.s0, "p_2023->g_1227.s0", print_hash_value);
    transparent_crc(p_2023->g_1227.s1, "p_2023->g_1227.s1", print_hash_value);
    transparent_crc(p_2023->g_1227.s2, "p_2023->g_1227.s2", print_hash_value);
    transparent_crc(p_2023->g_1227.s3, "p_2023->g_1227.s3", print_hash_value);
    transparent_crc(p_2023->g_1227.s4, "p_2023->g_1227.s4", print_hash_value);
    transparent_crc(p_2023->g_1227.s5, "p_2023->g_1227.s5", print_hash_value);
    transparent_crc(p_2023->g_1227.s6, "p_2023->g_1227.s6", print_hash_value);
    transparent_crc(p_2023->g_1227.s7, "p_2023->g_1227.s7", print_hash_value);
    transparent_crc(p_2023->g_1230.s0, "p_2023->g_1230.s0", print_hash_value);
    transparent_crc(p_2023->g_1230.s1, "p_2023->g_1230.s1", print_hash_value);
    transparent_crc(p_2023->g_1230.s2, "p_2023->g_1230.s2", print_hash_value);
    transparent_crc(p_2023->g_1230.s3, "p_2023->g_1230.s3", print_hash_value);
    transparent_crc(p_2023->g_1230.s4, "p_2023->g_1230.s4", print_hash_value);
    transparent_crc(p_2023->g_1230.s5, "p_2023->g_1230.s5", print_hash_value);
    transparent_crc(p_2023->g_1230.s6, "p_2023->g_1230.s6", print_hash_value);
    transparent_crc(p_2023->g_1230.s7, "p_2023->g_1230.s7", print_hash_value);
    transparent_crc(p_2023->g_1231.s0, "p_2023->g_1231.s0", print_hash_value);
    transparent_crc(p_2023->g_1231.s1, "p_2023->g_1231.s1", print_hash_value);
    transparent_crc(p_2023->g_1231.s2, "p_2023->g_1231.s2", print_hash_value);
    transparent_crc(p_2023->g_1231.s3, "p_2023->g_1231.s3", print_hash_value);
    transparent_crc(p_2023->g_1231.s4, "p_2023->g_1231.s4", print_hash_value);
    transparent_crc(p_2023->g_1231.s5, "p_2023->g_1231.s5", print_hash_value);
    transparent_crc(p_2023->g_1231.s6, "p_2023->g_1231.s6", print_hash_value);
    transparent_crc(p_2023->g_1231.s7, "p_2023->g_1231.s7", print_hash_value);
    transparent_crc(p_2023->g_1231.s8, "p_2023->g_1231.s8", print_hash_value);
    transparent_crc(p_2023->g_1231.s9, "p_2023->g_1231.s9", print_hash_value);
    transparent_crc(p_2023->g_1231.sa, "p_2023->g_1231.sa", print_hash_value);
    transparent_crc(p_2023->g_1231.sb, "p_2023->g_1231.sb", print_hash_value);
    transparent_crc(p_2023->g_1231.sc, "p_2023->g_1231.sc", print_hash_value);
    transparent_crc(p_2023->g_1231.sd, "p_2023->g_1231.sd", print_hash_value);
    transparent_crc(p_2023->g_1231.se, "p_2023->g_1231.se", print_hash_value);
    transparent_crc(p_2023->g_1231.sf, "p_2023->g_1231.sf", print_hash_value);
    transparent_crc(p_2023->g_1232.s0, "p_2023->g_1232.s0", print_hash_value);
    transparent_crc(p_2023->g_1232.s1, "p_2023->g_1232.s1", print_hash_value);
    transparent_crc(p_2023->g_1232.s2, "p_2023->g_1232.s2", print_hash_value);
    transparent_crc(p_2023->g_1232.s3, "p_2023->g_1232.s3", print_hash_value);
    transparent_crc(p_2023->g_1232.s4, "p_2023->g_1232.s4", print_hash_value);
    transparent_crc(p_2023->g_1232.s5, "p_2023->g_1232.s5", print_hash_value);
    transparent_crc(p_2023->g_1232.s6, "p_2023->g_1232.s6", print_hash_value);
    transparent_crc(p_2023->g_1232.s7, "p_2023->g_1232.s7", print_hash_value);
    transparent_crc(p_2023->g_1248.x, "p_2023->g_1248.x", print_hash_value);
    transparent_crc(p_2023->g_1248.y, "p_2023->g_1248.y", print_hash_value);
    transparent_crc(p_2023->g_1253.s0, "p_2023->g_1253.s0", print_hash_value);
    transparent_crc(p_2023->g_1253.s1, "p_2023->g_1253.s1", print_hash_value);
    transparent_crc(p_2023->g_1253.s2, "p_2023->g_1253.s2", print_hash_value);
    transparent_crc(p_2023->g_1253.s3, "p_2023->g_1253.s3", print_hash_value);
    transparent_crc(p_2023->g_1253.s4, "p_2023->g_1253.s4", print_hash_value);
    transparent_crc(p_2023->g_1253.s5, "p_2023->g_1253.s5", print_hash_value);
    transparent_crc(p_2023->g_1253.s6, "p_2023->g_1253.s6", print_hash_value);
    transparent_crc(p_2023->g_1253.s7, "p_2023->g_1253.s7", print_hash_value);
    transparent_crc(p_2023->g_1253.s8, "p_2023->g_1253.s8", print_hash_value);
    transparent_crc(p_2023->g_1253.s9, "p_2023->g_1253.s9", print_hash_value);
    transparent_crc(p_2023->g_1253.sa, "p_2023->g_1253.sa", print_hash_value);
    transparent_crc(p_2023->g_1253.sb, "p_2023->g_1253.sb", print_hash_value);
    transparent_crc(p_2023->g_1253.sc, "p_2023->g_1253.sc", print_hash_value);
    transparent_crc(p_2023->g_1253.sd, "p_2023->g_1253.sd", print_hash_value);
    transparent_crc(p_2023->g_1253.se, "p_2023->g_1253.se", print_hash_value);
    transparent_crc(p_2023->g_1253.sf, "p_2023->g_1253.sf", print_hash_value);
    transparent_crc(p_2023->g_1254.x, "p_2023->g_1254.x", print_hash_value);
    transparent_crc(p_2023->g_1254.y, "p_2023->g_1254.y", print_hash_value);
    transparent_crc(p_2023->g_1254.z, "p_2023->g_1254.z", print_hash_value);
    transparent_crc(p_2023->g_1254.w, "p_2023->g_1254.w", print_hash_value);
    transparent_crc(p_2023->g_1256.x, "p_2023->g_1256.x", print_hash_value);
    transparent_crc(p_2023->g_1256.y, "p_2023->g_1256.y", print_hash_value);
    transparent_crc(p_2023->g_1285.s0, "p_2023->g_1285.s0", print_hash_value);
    transparent_crc(p_2023->g_1285.s1, "p_2023->g_1285.s1", print_hash_value);
    transparent_crc(p_2023->g_1285.s2, "p_2023->g_1285.s2", print_hash_value);
    transparent_crc(p_2023->g_1285.s3, "p_2023->g_1285.s3", print_hash_value);
    transparent_crc(p_2023->g_1285.s4, "p_2023->g_1285.s4", print_hash_value);
    transparent_crc(p_2023->g_1285.s5, "p_2023->g_1285.s5", print_hash_value);
    transparent_crc(p_2023->g_1285.s6, "p_2023->g_1285.s6", print_hash_value);
    transparent_crc(p_2023->g_1285.s7, "p_2023->g_1285.s7", print_hash_value);
    transparent_crc(p_2023->g_1286.x, "p_2023->g_1286.x", print_hash_value);
    transparent_crc(p_2023->g_1286.y, "p_2023->g_1286.y", print_hash_value);
    transparent_crc(p_2023->g_1295.x, "p_2023->g_1295.x", print_hash_value);
    transparent_crc(p_2023->g_1295.y, "p_2023->g_1295.y", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_2023->g_1312[i], "p_2023->g_1312[i]", print_hash_value);

    }
    transparent_crc(p_2023->g_1381.x, "p_2023->g_1381.x", print_hash_value);
    transparent_crc(p_2023->g_1381.y, "p_2023->g_1381.y", print_hash_value);
    transparent_crc(p_2023->g_1425.x, "p_2023->g_1425.x", print_hash_value);
    transparent_crc(p_2023->g_1425.y, "p_2023->g_1425.y", print_hash_value);
    transparent_crc(p_2023->g_1553.x, "p_2023->g_1553.x", print_hash_value);
    transparent_crc(p_2023->g_1553.y, "p_2023->g_1553.y", print_hash_value);
    transparent_crc(p_2023->g_1553.z, "p_2023->g_1553.z", print_hash_value);
    transparent_crc(p_2023->g_1553.w, "p_2023->g_1553.w", print_hash_value);
    transparent_crc(p_2023->g_1563.x, "p_2023->g_1563.x", print_hash_value);
    transparent_crc(p_2023->g_1563.y, "p_2023->g_1563.y", print_hash_value);
    transparent_crc(p_2023->g_1563.z, "p_2023->g_1563.z", print_hash_value);
    transparent_crc(p_2023->g_1563.w, "p_2023->g_1563.w", print_hash_value);
    transparent_crc(p_2023->g_1572.x, "p_2023->g_1572.x", print_hash_value);
    transparent_crc(p_2023->g_1572.y, "p_2023->g_1572.y", print_hash_value);
    transparent_crc(p_2023->g_1602.s0, "p_2023->g_1602.s0", print_hash_value);
    transparent_crc(p_2023->g_1602.s1, "p_2023->g_1602.s1", print_hash_value);
    transparent_crc(p_2023->g_1602.s2, "p_2023->g_1602.s2", print_hash_value);
    transparent_crc(p_2023->g_1602.s3, "p_2023->g_1602.s3", print_hash_value);
    transparent_crc(p_2023->g_1602.s4, "p_2023->g_1602.s4", print_hash_value);
    transparent_crc(p_2023->g_1602.s5, "p_2023->g_1602.s5", print_hash_value);
    transparent_crc(p_2023->g_1602.s6, "p_2023->g_1602.s6", print_hash_value);
    transparent_crc(p_2023->g_1602.s7, "p_2023->g_1602.s7", print_hash_value);
    transparent_crc(p_2023->g_1602.s8, "p_2023->g_1602.s8", print_hash_value);
    transparent_crc(p_2023->g_1602.s9, "p_2023->g_1602.s9", print_hash_value);
    transparent_crc(p_2023->g_1602.sa, "p_2023->g_1602.sa", print_hash_value);
    transparent_crc(p_2023->g_1602.sb, "p_2023->g_1602.sb", print_hash_value);
    transparent_crc(p_2023->g_1602.sc, "p_2023->g_1602.sc", print_hash_value);
    transparent_crc(p_2023->g_1602.sd, "p_2023->g_1602.sd", print_hash_value);
    transparent_crc(p_2023->g_1602.se, "p_2023->g_1602.se", print_hash_value);
    transparent_crc(p_2023->g_1602.sf, "p_2023->g_1602.sf", print_hash_value);
    transparent_crc(p_2023->g_1646.x, "p_2023->g_1646.x", print_hash_value);
    transparent_crc(p_2023->g_1646.y, "p_2023->g_1646.y", print_hash_value);
    transparent_crc(p_2023->g_1646.z, "p_2023->g_1646.z", print_hash_value);
    transparent_crc(p_2023->g_1646.w, "p_2023->g_1646.w", print_hash_value);
    transparent_crc(p_2023->g_1669.s0, "p_2023->g_1669.s0", print_hash_value);
    transparent_crc(p_2023->g_1669.s1, "p_2023->g_1669.s1", print_hash_value);
    transparent_crc(p_2023->g_1669.s2, "p_2023->g_1669.s2", print_hash_value);
    transparent_crc(p_2023->g_1669.s3, "p_2023->g_1669.s3", print_hash_value);
    transparent_crc(p_2023->g_1669.s4, "p_2023->g_1669.s4", print_hash_value);
    transparent_crc(p_2023->g_1669.s5, "p_2023->g_1669.s5", print_hash_value);
    transparent_crc(p_2023->g_1669.s6, "p_2023->g_1669.s6", print_hash_value);
    transparent_crc(p_2023->g_1669.s7, "p_2023->g_1669.s7", print_hash_value);
    transparent_crc(p_2023->g_1694.s0, "p_2023->g_1694.s0", print_hash_value);
    transparent_crc(p_2023->g_1694.s1, "p_2023->g_1694.s1", print_hash_value);
    transparent_crc(p_2023->g_1694.s2, "p_2023->g_1694.s2", print_hash_value);
    transparent_crc(p_2023->g_1694.s3, "p_2023->g_1694.s3", print_hash_value);
    transparent_crc(p_2023->g_1694.s4, "p_2023->g_1694.s4", print_hash_value);
    transparent_crc(p_2023->g_1694.s5, "p_2023->g_1694.s5", print_hash_value);
    transparent_crc(p_2023->g_1694.s6, "p_2023->g_1694.s6", print_hash_value);
    transparent_crc(p_2023->g_1694.s7, "p_2023->g_1694.s7", print_hash_value);
    transparent_crc(p_2023->g_1703.x, "p_2023->g_1703.x", print_hash_value);
    transparent_crc(p_2023->g_1703.y, "p_2023->g_1703.y", print_hash_value);
    transparent_crc(p_2023->g_1719.s0, "p_2023->g_1719.s0", print_hash_value);
    transparent_crc(p_2023->g_1719.s1, "p_2023->g_1719.s1", print_hash_value);
    transparent_crc(p_2023->g_1719.s2, "p_2023->g_1719.s2", print_hash_value);
    transparent_crc(p_2023->g_1719.s3, "p_2023->g_1719.s3", print_hash_value);
    transparent_crc(p_2023->g_1719.s4, "p_2023->g_1719.s4", print_hash_value);
    transparent_crc(p_2023->g_1719.s5, "p_2023->g_1719.s5", print_hash_value);
    transparent_crc(p_2023->g_1719.s6, "p_2023->g_1719.s6", print_hash_value);
    transparent_crc(p_2023->g_1719.s7, "p_2023->g_1719.s7", print_hash_value);
    transparent_crc(p_2023->g_1720.x, "p_2023->g_1720.x", print_hash_value);
    transparent_crc(p_2023->g_1720.y, "p_2023->g_1720.y", print_hash_value);
    transparent_crc(p_2023->g_1721.x, "p_2023->g_1721.x", print_hash_value);
    transparent_crc(p_2023->g_1721.y, "p_2023->g_1721.y", print_hash_value);
    transparent_crc(p_2023->g_1721.z, "p_2023->g_1721.z", print_hash_value);
    transparent_crc(p_2023->g_1721.w, "p_2023->g_1721.w", print_hash_value);
    transparent_crc(p_2023->g_1722.s0, "p_2023->g_1722.s0", print_hash_value);
    transparent_crc(p_2023->g_1722.s1, "p_2023->g_1722.s1", print_hash_value);
    transparent_crc(p_2023->g_1722.s2, "p_2023->g_1722.s2", print_hash_value);
    transparent_crc(p_2023->g_1722.s3, "p_2023->g_1722.s3", print_hash_value);
    transparent_crc(p_2023->g_1722.s4, "p_2023->g_1722.s4", print_hash_value);
    transparent_crc(p_2023->g_1722.s5, "p_2023->g_1722.s5", print_hash_value);
    transparent_crc(p_2023->g_1722.s6, "p_2023->g_1722.s6", print_hash_value);
    transparent_crc(p_2023->g_1722.s7, "p_2023->g_1722.s7", print_hash_value);
    transparent_crc(p_2023->g_1766, "p_2023->g_1766", print_hash_value);
    transparent_crc(p_2023->g_1778.s0, "p_2023->g_1778.s0", print_hash_value);
    transparent_crc(p_2023->g_1778.s1, "p_2023->g_1778.s1", print_hash_value);
    transparent_crc(p_2023->g_1778.s2, "p_2023->g_1778.s2", print_hash_value);
    transparent_crc(p_2023->g_1778.s3, "p_2023->g_1778.s3", print_hash_value);
    transparent_crc(p_2023->g_1778.s4, "p_2023->g_1778.s4", print_hash_value);
    transparent_crc(p_2023->g_1778.s5, "p_2023->g_1778.s5", print_hash_value);
    transparent_crc(p_2023->g_1778.s6, "p_2023->g_1778.s6", print_hash_value);
    transparent_crc(p_2023->g_1778.s7, "p_2023->g_1778.s7", print_hash_value);
    transparent_crc(p_2023->v_collective, "p_2023->v_collective", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 43; i++)
            transparent_crc(p_2023->g_special_values[i + 43 * get_linear_group_id()], "p_2023->g_special_values[i + 43 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 43; i++)
            transparent_crc(p_2023->l_special_values[i], "p_2023->l_special_values[i]", print_hash_value);
    transparent_crc(p_2023->l_comm_values[get_linear_local_id()], "p_2023->l_comm_values[get_linear_local_id()]", print_hash_value);
    transparent_crc(p_2023->g_comm_values[get_linear_group_id() * 15 + get_linear_local_id()], "p_2023->g_comm_values[get_linear_group_id() * 15 + get_linear_local_id()]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
