// --atomics 25 ---fake_divergence -g 86,63,1 -l 2,7,1
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


// Seed: 11

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   uint16_t  f0;
   volatile uint64_t  f1;
   int32_t  f2;
   uint32_t  f3;
   uint64_t  f4;
   int32_t  f5;
   uint16_t  f6;
   uint32_t  f7;
   volatile int16_t  f8;
};

struct S1 {
   uint16_t  f0;
   int32_t  f1;
   int32_t  f2;
   int16_t  f3;
   uint16_t  f4;
   volatile uint64_t  f5;
   volatile uint32_t  f6;
};

struct S2 {
    volatile int32_t g_4;
    int32_t g_7[10][9][2];
    int32_t g_18[9][8];
    int32_t g_22;
    uint32_t g_38[3];
    int32_t g_46;
    uint32_t g_74;
    int32_t g_76[4];
    int64_t g_83[9][6][2];
    int32_t g_86;
    uint32_t g_97;
    int64_t g_102;
    uint32_t g_116;
    uint64_t g_119;
    uint64_t g_127;
    int32_t *g_166;
    int16_t g_185;
    uint16_t g_203;
    uint16_t g_205;
    struct S0 *g_207;
    int32_t g_213[10];
    int32_t g_215;
    int8_t g_234[4][1];
    struct S0 g_236;
    int8_t g_238;
    int64_t g_239;
    uint32_t g_246;
    int32_t *g_262[2];
    uint16_t g_285;
    uint32_t * volatile g_650;
    uint32_t * volatile *g_649;
    int64_t g_745[1];
    int32_t g_746;
    uint8_t g_747;
    int32_t g_782;
    int16_t g_832;
    uint32_t **g_848;
    uint32_t ***g_847;
    uint64_t g_881;
    int16_t g_900;
    struct S0 g_945[10];
    uint16_t *g_959;
    uint16_t **g_958;
    struct S1 g_963;
    struct S0 g_1027;
    struct S0 g_1028[8][8];
    struct S0 g_1042;
    struct S1 g_1070;
    struct S1 g_1073;
    uint32_t g_1075[8][6];
    uint32_t g_1107;
    int16_t *g_1122[1][5][2];
    struct S1 g_1244;
    struct S1 g_1245[4];
    struct S1 g_1246;
    struct S1 *g_1243[7];
    struct S1 * volatile * volatile g_1242;
    struct S1 * volatile * volatile *g_1241;
    int32_t g_1340;
    struct S1 g_1356;
    uint8_t g_1386;
    struct S0 g_1394;
    int32_t **g_1413[3][4];
    uint64_t *g_1427;
    int32_t g_1493;
    int32_t * volatile g_1532[4];
    int32_t * volatile g_1533;
    int64_t g_1564;
    int32_t ** volatile g_1579;
    struct S0 g_1586;
    volatile int8_t g_1589;
    volatile int8_t *g_1588;
    volatile int8_t **g_1587;
    uint32_t *g_1604;
    struct S0 g_1615;
    struct S0 g_1616;
    uint8_t *g_1620;
    uint8_t **g_1619;
    uint64_t global_0_offset;
    uint64_t global_1_offset;
    uint64_t global_2_offset;
    uint64_t local_0_offset;
    uint64_t local_1_offset;
    uint64_t local_2_offset;
    uint64_t group_0_offset;
    uint64_t group_1_offset;
    uint64_t group_2_offset;
    __local volatile uint32_t *l_atomic_input;
    __local volatile uint32_t *l_special_values;
    __global volatile uint32_t *g_atomic_input;
    __global volatile uint32_t *g_special_values;
};


/* --- FORWARD DECLARATIONS --- */
uint64_t  func_1(struct S2 * p_1700);
uint8_t  func_8(int32_t  p_9, int32_t * p_10, int32_t  p_11, int64_t  p_12, uint32_t  p_13, struct S2 * p_1700);
uint64_t  func_23(uint8_t  p_24, uint32_t  p_25, uint32_t  p_26, uint64_t  p_27, struct S2 * p_1700);
uint8_t  func_32(int32_t  p_33, int64_t  p_34, uint32_t  p_35, int32_t * p_36, int32_t * p_37, struct S2 * p_1700);
uint16_t  func_41(uint32_t  p_42, int32_t * p_43, uint64_t  p_44, struct S2 * p_1700);
int16_t  func_49(int32_t * p_50, int32_t  p_51, int32_t * p_52, struct S2 * p_1700);
int32_t  func_53(int32_t * p_54, int32_t * p_55, int64_t  p_56, int32_t * p_57, struct S2 * p_1700);
int32_t * func_58(int64_t  p_59, int32_t * p_60, int32_t * p_61, int32_t * p_62, int8_t  p_63, struct S2 * p_1700);
int32_t * func_66(uint32_t  p_67, uint32_t  p_68, struct S2 * p_1700);
uint32_t  func_69(uint32_t  p_70, int16_t  p_71, int32_t * p_72, struct S2 * p_1700);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1700->g_4 p_1700->g_7 p_1700->g_38 p_1700->g_46 p_1700->g_76 p_1700->g_97 p_1700->g_83 p_1700->g_102 p_1700->g_74 p_1700->g_116 p_1700->g_127 p_1700->g_86 p_1700->g_166 p_1700->g_185 p_1700->g_203 p_1700->g_205 p_1700->g_207 p_1700->g_215 p_1700->g_236.f3 p_1700->g_239 p_1700->g_236.f2 p_1700->g_238 p_1700->g_285 p_1700->g_236.f5 p_1700->g_213 p_1700->g_236.f4 p_1700->g_234 p_1700->g_649 p_1700->g_236.f7 p_1700->g_236.f0 p_1700->g_262 p_1700->g_747 p_1700->g_236.f6 p_1700->g_847 p_1700->g_832 p_1700->g_958 p_1700->g_945.f0 p_1700->g_119 p_1700->g_963.f2 p_1700->g_945.f7 p_1700->g_963.f3 p_1700->g_881 p_1700->g_745 p_1700->g_1075 p_1700->g_1042.f4 p_1700->g_246 p_1700->g_1028.f2 p_1700->g_1027.f0 p_1700->g_1027.f5 p_1700->g_1107 p_1700->g_1042.f0 p_1700->g_1042.f6 p_1700->g_746 p_1700->g_848 p_1700->g_1042.f7 p_1700->g_963.f1 p_1700->g_1241 p_1700->g_1246.f3 p_1700->g_945.f4 p_1700->g_1042.f5 p_1700->g_1073.f1 p_1700->g_1244.f3 p_1700->g_1028.f5 p_1700->g_1073.f4 p_1700->g_900 p_1700->g_1245.f4 p_1700->g_1070.f2 p_1700->g_1245.f3 p_1700->g_1028.f0 p_1700->g_1246.f2 p_1700->g_1340 p_1700->g_1386 p_1700->g_1394.f0 p_1700->g_1028.f7 p_1700->g_1413 p_1700->g_1244.f2 p_1700->g_963.f0 p_1700->g_963.f6 p_1700->g_18 p_1700->g_1070.f1 p_1700->g_945.f3 p_1700->g_1533 p_1700->g_1356.f2 p_1700->g_1027.f4 p_1700->g_236.f8 p_1700->g_1245 p_1700->g_1564 p_1700->g_1579 p_1700->g_1586 p_1700->g_1587 p_1700->g_1493 p_1700->g_1615 p_1700->g_1620
 * writes: p_1700->g_7 p_1700->g_18 p_1700->g_22 p_1700->g_74 p_1700->g_76 p_1700->g_97 p_1700->g_102 p_1700->g_116 p_1700->g_119 p_1700->g_38 p_1700->g_127 p_1700->g_86 p_1700->g_166 p_1700->g_203 p_1700->g_83 p_1700->g_205 p_1700->g_213 p_1700->g_234 p_1700->g_238 p_1700->g_239 p_1700->g_246 p_1700->g_262 p_1700->g_285 p_1700->g_236.f5 p_1700->g_185 p_1700->g_236.f2 p_1700->g_236.f3 p_1700->g_747 p_1700->g_236.f0 p_1700->g_46 p_1700->g_832 p_1700->g_958 p_1700->g_881 p_1700->g_963.f3 p_1700->g_945.f7 p_1700->g_900 p_1700->g_1107 p_1700->g_1122 p_1700->g_1073.f3 p_1700->g_1042.f4 p_1700->g_963.f1 p_1700->g_1246.f2 p_1700->g_1244.f0 p_1700->g_1042.f5 p_1700->g_1027.f6 p_1700->g_1246.f0 p_1700->g_1243 p_1700->g_847 p_1700->g_963.f4 p_1700->g_1028.f0 p_1700->g_1244.f3 p_1700->g_207 p_1700->g_1075 p_1700->g_1028.f7 p_1700->g_1394.f4 p_1700->g_1246.f3 p_1700->g_236.f4 p_1700->g_1356.f2 p_1700->g_1394.f0 p_1700->g_1493 p_1700->g_1027.f4 p_1700->g_1604 p_1700->g_1616 p_1700->g_1619
 */
uint64_t  func_1(struct S2 * p_1700)
{ /* block id: 4 */
    int64_t l_5 = 0x2D0DA0BDBDF7CD95L;
    int32_t *l_6 = &p_1700->g_7[9][1][1];
    int8_t l_16[1];
    int32_t *l_17 = &p_1700->g_18[2][7];
    int32_t *l_19 = (void*)0;
    int32_t *l_20 = (void*)0;
    int32_t *l_21 = &p_1700->g_22;
    uint64_t *l_1432 = &p_1700->g_1394.f4;
    uint16_t l_1433 = 4UL;
    int64_t l_1434 = 0x0240DB9FD39A358EL;
    int i;
    for (i = 0; i < 1; i++)
        l_16[i] = 7L;
    (*l_6) = (safe_rshift_func_int16_t_s_u((0x223FE5E8L < (p_1700->g_4 , l_5)), 10));
    (*l_17) = (func_8(((((*l_17) = (((*l_6) = (safe_sub_func_int8_t_s_s((l_16[0] == ((void*)0 == &p_1700->g_7[9][1][1])), (*l_6)))) > p_1700->g_4)) <= ((*l_21) = ((void*)0 == l_6))) < (((*l_1432) = func_23((safe_add_func_uint16_t_u_u(((safe_mod_func_uint8_t_u_u(func_32((p_1700->g_38[1] && (safe_rshift_func_int16_t_s_u(((func_41((p_1700->g_38[1] >= 0x518FL), l_20, p_1700->g_38[1], p_1700) , (void*)0) == &p_1700->g_215), p_1700->g_236.f6))), p_1700->g_1075[0][3], p_1700->g_236.f6, l_17, &p_1700->g_215, p_1700), GROUP_DIVERGE(1, 1))) , p_1700->g_1073.f1), FAKE_DIVERGE(p_1700->group_1_offset, get_group_id(1), 10))), p_1700->g_1244.f3, p_1700->g_1028[5][3].f5, p_1700->g_1073.f4, p_1700)) == p_1700->g_1028[5][3].f2)), l_17, p_1700->g_1073.f4, l_1433, l_1434, p_1700) < (-5L));
    if ((atomic_inc(&p_1700->l_atomic_input[24]) == 2))
    { /* block id: 1039 */
        uint16_t l_1627 = 65535UL;
        uint64_t l_1628 = 0x631D53772E0D0400L;
        uint32_t l_1629 = 0x29EE6523L;
        int32_t l_1630 = (-3L);
        int32_t *l_1698 = &l_1630;
        int32_t *l_1699 = (void*)0;
        l_1628 |= l_1627;
        if ((l_1630 = l_1629))
        { /* block id: 1042 */
            int32_t l_1632 = 1L;
            int32_t *l_1631 = &l_1632;
            uint64_t l_1633 = 18446744073709551615UL;
            l_1631 = (void*)0;
            l_1631 = (void*)0;
            l_1633--;
        }
        else
        { /* block id: 1046 */
            uint32_t l_1636 = 5UL;
            int8_t l_1695 = 0x1EL;
            uint32_t l_1696 = 0xC7FC058BL;
            int64_t l_1697[7][10] = {{(-1L),1L,1L,(-1L),6L,1L,0x4028D31EDAFA4765L,(-5L),(-4L),(-7L)},{(-1L),1L,1L,(-1L),6L,1L,0x4028D31EDAFA4765L,(-5L),(-4L),(-7L)},{(-1L),1L,1L,(-1L),6L,1L,0x4028D31EDAFA4765L,(-5L),(-4L),(-7L)},{(-1L),1L,1L,(-1L),6L,1L,0x4028D31EDAFA4765L,(-5L),(-4L),(-7L)},{(-1L),1L,1L,(-1L),6L,1L,0x4028D31EDAFA4765L,(-5L),(-4L),(-7L)},{(-1L),1L,1L,(-1L),6L,1L,0x4028D31EDAFA4765L,(-5L),(-4L),(-7L)},{(-1L),1L,1L,(-1L),6L,1L,0x4028D31EDAFA4765L,(-5L),(-4L),(-7L)}};
            int i, j;
            if (l_1636)
            { /* block id: 1047 */
                int32_t l_1637 = 0x15A4A9D0L;
                uint16_t l_1651 = 8UL;
                uint64_t l_1652 = 0x21DCAE437396CCDAL;
                int32_t l_1653 = 0x2E73E5E3L;
                int32_t l_1654 = 0x161B45E5L;
                int32_t l_1655 = (-1L);
                for (l_1637 = 24; (l_1637 >= 9); l_1637--)
                { /* block id: 1050 */
                    int32_t l_1640 = 0x0A782258L;
                    for (l_1640 = 0; (l_1640 == (-30)); l_1640 = safe_sub_func_int32_t_s_s(l_1640, 7))
                    { /* block id: 1053 */
                        uint32_t l_1643 = 0UL;
                        uint32_t l_1644 = 0xC7A77069L;
                        int32_t l_1645 = 0x2675BBAAL;
                        uint32_t l_1646 = 4294967286UL;
                        struct S0 l_1649[2][8] = {{{65528UL,1UL,1L,0x6C6275C7L,0xF8D6C042EA736BD5L,0x0F49858AL,5UL,0UL,-10L},{65528UL,1UL,1L,0x6C6275C7L,0xF8D6C042EA736BD5L,0x0F49858AL,5UL,0UL,-10L},{65528UL,1UL,1L,0x6C6275C7L,0xF8D6C042EA736BD5L,0x0F49858AL,5UL,0UL,-10L},{65528UL,1UL,1L,0x6C6275C7L,0xF8D6C042EA736BD5L,0x0F49858AL,5UL,0UL,-10L},{65528UL,1UL,1L,0x6C6275C7L,0xF8D6C042EA736BD5L,0x0F49858AL,5UL,0UL,-10L},{65528UL,1UL,1L,0x6C6275C7L,0xF8D6C042EA736BD5L,0x0F49858AL,5UL,0UL,-10L},{65528UL,1UL,1L,0x6C6275C7L,0xF8D6C042EA736BD5L,0x0F49858AL,5UL,0UL,-10L},{65528UL,1UL,1L,0x6C6275C7L,0xF8D6C042EA736BD5L,0x0F49858AL,5UL,0UL,-10L}},{{65528UL,1UL,1L,0x6C6275C7L,0xF8D6C042EA736BD5L,0x0F49858AL,5UL,0UL,-10L},{65528UL,1UL,1L,0x6C6275C7L,0xF8D6C042EA736BD5L,0x0F49858AL,5UL,0UL,-10L},{65528UL,1UL,1L,0x6C6275C7L,0xF8D6C042EA736BD5L,0x0F49858AL,5UL,0UL,-10L},{65528UL,1UL,1L,0x6C6275C7L,0xF8D6C042EA736BD5L,0x0F49858AL,5UL,0UL,-10L},{65528UL,1UL,1L,0x6C6275C7L,0xF8D6C042EA736BD5L,0x0F49858AL,5UL,0UL,-10L},{65528UL,1UL,1L,0x6C6275C7L,0xF8D6C042EA736BD5L,0x0F49858AL,5UL,0UL,-10L},{65528UL,1UL,1L,0x6C6275C7L,0xF8D6C042EA736BD5L,0x0F49858AL,5UL,0UL,-10L},{65528UL,1UL,1L,0x6C6275C7L,0xF8D6C042EA736BD5L,0x0F49858AL,5UL,0UL,-10L}}};
                        struct S0 l_1650 = {0xE589L,5UL,0x6D2A01D1L,0x0EE42B24L,0x3BFB8BDDA5DE547EL,0x0C97EF43L,1UL,4294967295UL,0L};/* VOLATILE GLOBAL l_1650 */
                        int i, j;
                        l_1644 &= (l_1630 &= l_1643);
                        ++l_1646;
                        l_1650 = l_1649[1][1];
                    }
                }
                l_1654 ^= (l_1653 ^= (l_1652 &= (l_1630 &= (l_1637 = l_1651))));
                if (l_1655)
                { /* block id: 1065 */
                    uint32_t l_1656 = 0xD9680ED9L;
                    int32_t l_1658 = 0x3F15C115L;
                    int32_t *l_1657 = &l_1658;
                    int32_t *l_1659 = (void*)0;
                    l_1659 = (l_1656 , l_1657);
                    for (l_1656 = 0; (l_1656 <= 9); l_1656 += 1)
                    { /* block id: 1069 */
                        int32_t l_1661 = 0x4CBF83CDL;
                        int32_t *l_1660 = &l_1661;
                        int32_t *l_1662[4] = {&l_1661,&l_1661,&l_1661,&l_1661};
                        int i;
                        l_1660 = l_1660;
                        l_1659 = l_1662[2];
                    }
                    for (l_1658 = 0; (l_1658 < (-12)); l_1658 = safe_sub_func_uint64_t_u_u(l_1658, 6))
                    { /* block id: 1075 */
                        int64_t l_1665[10] = {0L,0x1379E39D5C34BB96L,5L,0x1379E39D5C34BB96L,0L,0L,0x1379E39D5C34BB96L,5L,0x1379E39D5C34BB96L,0L};
                        int i;
                        l_1665[1] ^= 0x6D8AA7CAL;
                    }
                }
                else
                { /* block id: 1078 */
                    uint8_t l_1666 = 0UL;
                    int32_t l_1667 = 5L;
                    int8_t l_1668 = 0x32L;
                    uint16_t l_1669 = 0x00DDL;
                    if ((((l_1666 , l_1667) , (l_1668 ^= 0x63EF4800L)) , l_1669))
                    { /* block id: 1080 */
                        uint64_t l_1672 = 0x428D77074B996D77L;
                        uint64_t *l_1671 = &l_1672;
                        uint64_t **l_1670 = &l_1671;
                        int32_t l_1674 = 0x0183BE23L;
                        int32_t *l_1673 = &l_1674;
                        l_1670 = (void*)0;
                        l_1673 = (void*)0;
                    }
                    else
                    { /* block id: 1083 */
                        uint64_t l_1675 = 0UL;
                        ++l_1675;
                        l_1653 ^= (l_1630 = 0x5BC8FF0EL);
                    }
                }
            }
            else
            { /* block id: 1089 */
                int32_t l_1678 = (-1L);
                for (l_1678 = 0; (l_1678 <= 1); l_1678 += 1)
                { /* block id: 1092 */
                    if ((l_1630 |= (-3L)))
                    { /* block id: 1094 */
                        uint8_t l_1679 = 252UL;
                        int32_t l_1680 = 0x4AC0824EL;
                        uint64_t l_1681 = 1UL;
                        int8_t l_1682 = 0x19L;
                        uint32_t l_1683 = 7UL;
                        l_1681 ^= (l_1679 , (l_1630 = l_1680));
                        l_1683++;
                    }
                    else
                    { /* block id: 1098 */
                        int32_t l_1687 = 3L;
                        int32_t *l_1686 = &l_1687;
                        int32_t *l_1688 = &l_1687;
                        int32_t *l_1689 = &l_1687;
                        uint32_t l_1690 = 0x111CCCA0L;
                        uint64_t l_1693[6][6][7] = {{{0UL,7UL,0x71DBD9FABC5DD324L,18446744073709551615UL,0xA0DCF3E41A572D94L,0xC8425A7E9E957CB1L,0xE0273614A6447998L},{0UL,7UL,0x71DBD9FABC5DD324L,18446744073709551615UL,0xA0DCF3E41A572D94L,0xC8425A7E9E957CB1L,0xE0273614A6447998L},{0UL,7UL,0x71DBD9FABC5DD324L,18446744073709551615UL,0xA0DCF3E41A572D94L,0xC8425A7E9E957CB1L,0xE0273614A6447998L},{0UL,7UL,0x71DBD9FABC5DD324L,18446744073709551615UL,0xA0DCF3E41A572D94L,0xC8425A7E9E957CB1L,0xE0273614A6447998L},{0UL,7UL,0x71DBD9FABC5DD324L,18446744073709551615UL,0xA0DCF3E41A572D94L,0xC8425A7E9E957CB1L,0xE0273614A6447998L},{0UL,7UL,0x71DBD9FABC5DD324L,18446744073709551615UL,0xA0DCF3E41A572D94L,0xC8425A7E9E957CB1L,0xE0273614A6447998L}},{{0UL,7UL,0x71DBD9FABC5DD324L,18446744073709551615UL,0xA0DCF3E41A572D94L,0xC8425A7E9E957CB1L,0xE0273614A6447998L},{0UL,7UL,0x71DBD9FABC5DD324L,18446744073709551615UL,0xA0DCF3E41A572D94L,0xC8425A7E9E957CB1L,0xE0273614A6447998L},{0UL,7UL,0x71DBD9FABC5DD324L,18446744073709551615UL,0xA0DCF3E41A572D94L,0xC8425A7E9E957CB1L,0xE0273614A6447998L},{0UL,7UL,0x71DBD9FABC5DD324L,18446744073709551615UL,0xA0DCF3E41A572D94L,0xC8425A7E9E957CB1L,0xE0273614A6447998L},{0UL,7UL,0x71DBD9FABC5DD324L,18446744073709551615UL,0xA0DCF3E41A572D94L,0xC8425A7E9E957CB1L,0xE0273614A6447998L},{0UL,7UL,0x71DBD9FABC5DD324L,18446744073709551615UL,0xA0DCF3E41A572D94L,0xC8425A7E9E957CB1L,0xE0273614A6447998L}},{{0UL,7UL,0x71DBD9FABC5DD324L,18446744073709551615UL,0xA0DCF3E41A572D94L,0xC8425A7E9E957CB1L,0xE0273614A6447998L},{0UL,7UL,0x71DBD9FABC5DD324L,18446744073709551615UL,0xA0DCF3E41A572D94L,0xC8425A7E9E957CB1L,0xE0273614A6447998L},{0UL,7UL,0x71DBD9FABC5DD324L,18446744073709551615UL,0xA0DCF3E41A572D94L,0xC8425A7E9E957CB1L,0xE0273614A6447998L},{0UL,7UL,0x71DBD9FABC5DD324L,18446744073709551615UL,0xA0DCF3E41A572D94L,0xC8425A7E9E957CB1L,0xE0273614A6447998L},{0UL,7UL,0x71DBD9FABC5DD324L,18446744073709551615UL,0xA0DCF3E41A572D94L,0xC8425A7E9E957CB1L,0xE0273614A6447998L},{0UL,7UL,0x71DBD9FABC5DD324L,18446744073709551615UL,0xA0DCF3E41A572D94L,0xC8425A7E9E957CB1L,0xE0273614A6447998L}},{{0UL,7UL,0x71DBD9FABC5DD324L,18446744073709551615UL,0xA0DCF3E41A572D94L,0xC8425A7E9E957CB1L,0xE0273614A6447998L},{0UL,7UL,0x71DBD9FABC5DD324L,18446744073709551615UL,0xA0DCF3E41A572D94L,0xC8425A7E9E957CB1L,0xE0273614A6447998L},{0UL,7UL,0x71DBD9FABC5DD324L,18446744073709551615UL,0xA0DCF3E41A572D94L,0xC8425A7E9E957CB1L,0xE0273614A6447998L},{0UL,7UL,0x71DBD9FABC5DD324L,18446744073709551615UL,0xA0DCF3E41A572D94L,0xC8425A7E9E957CB1L,0xE0273614A6447998L},{0UL,7UL,0x71DBD9FABC5DD324L,18446744073709551615UL,0xA0DCF3E41A572D94L,0xC8425A7E9E957CB1L,0xE0273614A6447998L},{0UL,7UL,0x71DBD9FABC5DD324L,18446744073709551615UL,0xA0DCF3E41A572D94L,0xC8425A7E9E957CB1L,0xE0273614A6447998L}},{{0UL,7UL,0x71DBD9FABC5DD324L,18446744073709551615UL,0xA0DCF3E41A572D94L,0xC8425A7E9E957CB1L,0xE0273614A6447998L},{0UL,7UL,0x71DBD9FABC5DD324L,18446744073709551615UL,0xA0DCF3E41A572D94L,0xC8425A7E9E957CB1L,0xE0273614A6447998L},{0UL,7UL,0x71DBD9FABC5DD324L,18446744073709551615UL,0xA0DCF3E41A572D94L,0xC8425A7E9E957CB1L,0xE0273614A6447998L},{0UL,7UL,0x71DBD9FABC5DD324L,18446744073709551615UL,0xA0DCF3E41A572D94L,0xC8425A7E9E957CB1L,0xE0273614A6447998L},{0UL,7UL,0x71DBD9FABC5DD324L,18446744073709551615UL,0xA0DCF3E41A572D94L,0xC8425A7E9E957CB1L,0xE0273614A6447998L},{0UL,7UL,0x71DBD9FABC5DD324L,18446744073709551615UL,0xA0DCF3E41A572D94L,0xC8425A7E9E957CB1L,0xE0273614A6447998L}},{{0UL,7UL,0x71DBD9FABC5DD324L,18446744073709551615UL,0xA0DCF3E41A572D94L,0xC8425A7E9E957CB1L,0xE0273614A6447998L},{0UL,7UL,0x71DBD9FABC5DD324L,18446744073709551615UL,0xA0DCF3E41A572D94L,0xC8425A7E9E957CB1L,0xE0273614A6447998L},{0UL,7UL,0x71DBD9FABC5DD324L,18446744073709551615UL,0xA0DCF3E41A572D94L,0xC8425A7E9E957CB1L,0xE0273614A6447998L},{0UL,7UL,0x71DBD9FABC5DD324L,18446744073709551615UL,0xA0DCF3E41A572D94L,0xC8425A7E9E957CB1L,0xE0273614A6447998L},{0UL,7UL,0x71DBD9FABC5DD324L,18446744073709551615UL,0xA0DCF3E41A572D94L,0xC8425A7E9E957CB1L,0xE0273614A6447998L},{0UL,7UL,0x71DBD9FABC5DD324L,18446744073709551615UL,0xA0DCF3E41A572D94L,0xC8425A7E9E957CB1L,0xE0273614A6447998L}}};
                        uint16_t l_1694 = 0x5A5FL;
                        int i, j, k;
                        l_1689 = (l_1688 = l_1686);
                        l_1690--;
                        l_1694 = l_1693[5][5][6];
                    }
                }
            }
            l_1630 ^= (l_1695 , (l_1697[0][1] = l_1696));
        }
        l_1699 = l_1698;
        unsigned int result = 0;
        result += l_1627;
        result += l_1628;
        result += l_1629;
        result += l_1630;
        atomic_add(&p_1700->l_special_values[24], result);
    }
    else
    { /* block id: 1110 */
        (1 + 1);
    }
    return p_1700->g_1586.f7;
}


/* ------------------------------------------ */
/* 
 * reads : p_1700->g_1246.f3 p_1700->g_1246.f2 p_1700->g_963.f6 p_1700->g_234 p_1700->g_745 p_1700->g_18 p_1700->g_1070.f1 p_1700->g_1241 p_1700->g_238 p_1700->g_945.f3 p_1700->g_76 p_1700->g_236.f5 p_1700->g_1042.f0 p_1700->g_1533 p_1700->g_1356.f2 p_1700->g_1027.f4 p_1700->g_236.f8 p_1700->g_1245 p_1700->g_1564 p_1700->g_1579 p_1700->g_1027.f5 p_1700->g_1586 p_1700->g_1587 p_1700->g_1493 p_1700->g_1042.f7 p_1700->g_236.f6 p_1700->g_1615 p_1700->g_1620 p_1700->g_1386
 * writes: p_1700->g_18 p_1700->g_1246.f3 p_1700->g_119 p_1700->g_236.f4 p_1700->g_234 p_1700->g_238 p_1700->g_76 p_1700->g_1356.f2 p_1700->g_1394.f0 p_1700->g_1493 p_1700->g_1027.f4 p_1700->g_262 p_1700->g_1604 p_1700->g_285 p_1700->g_1616 p_1700->g_1619
 */
uint8_t  func_8(int32_t  p_9, int32_t * p_10, int32_t  p_11, int64_t  p_12, uint32_t  p_13, struct S2 * p_1700)
{ /* block id: 909 */
    uint8_t l_1435 = 0x0DL;
    int32_t l_1457 = 0L;
    uint32_t **l_1605 = (void*)0;
    uint32_t *l_1607 = &p_1700->g_1027.f3;
    uint32_t **l_1606 = &l_1607;
    uint64_t l_1614 = 0UL;
    int32_t *l_1621 = &p_1700->g_1493;
    int32_t l_1622[2];
    int32_t *l_1623[4][4][3] = {{{&p_1700->g_213[3],&l_1457,&p_1700->g_215},{&p_1700->g_213[3],&l_1457,&p_1700->g_215},{&p_1700->g_213[3],&l_1457,&p_1700->g_215},{&p_1700->g_213[3],&l_1457,&p_1700->g_215}},{{&p_1700->g_213[3],&l_1457,&p_1700->g_215},{&p_1700->g_213[3],&l_1457,&p_1700->g_215},{&p_1700->g_213[3],&l_1457,&p_1700->g_215},{&p_1700->g_213[3],&l_1457,&p_1700->g_215}},{{&p_1700->g_213[3],&l_1457,&p_1700->g_215},{&p_1700->g_213[3],&l_1457,&p_1700->g_215},{&p_1700->g_213[3],&l_1457,&p_1700->g_215},{&p_1700->g_213[3],&l_1457,&p_1700->g_215}},{{&p_1700->g_213[3],&l_1457,&p_1700->g_215},{&p_1700->g_213[3],&l_1457,&p_1700->g_215},{&p_1700->g_213[3],&l_1457,&p_1700->g_215},{&p_1700->g_213[3],&l_1457,&p_1700->g_215}}};
    uint32_t l_1624 = 4294967295UL;
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_1622[i] = 0L;
    (*p_10) = 2L;
    for (p_1700->g_1246.f3 = 3; (p_1700->g_1246.f3 >= 0); p_1700->g_1246.f3 -= 1)
    { /* block id: 913 */
        uint32_t l_1442 = 0x705A2E21L;
        uint16_t l_1458[7][5] = {{0x848DL,65530UL,65530UL,0x848DL,0x3769L},{0x848DL,65530UL,65530UL,0x848DL,0x3769L},{0x848DL,65530UL,65530UL,0x848DL,0x3769L},{0x848DL,65530UL,65530UL,0x848DL,0x3769L},{0x848DL,65530UL,65530UL,0x848DL,0x3769L},{0x848DL,65530UL,65530UL,0x848DL,0x3769L},{0x848DL,65530UL,65530UL,0x848DL,0x3769L}};
        int32_t l_1476[5][6][8];
        int32_t *l_1525 = &p_1700->g_1394.f2;
        int64_t l_1526 = 0x4CBBAA9F17A45971L;
        int32_t l_1608 = 0x0AC91BD5L;
        int i, j, k;
        for (i = 0; i < 5; i++)
        {
            for (j = 0; j < 6; j++)
            {
                for (k = 0; k < 8; k++)
                    l_1476[i][j][k] = 0x3F3FD77BL;
            }
        }
        for (p_1700->g_119 = 0; (p_1700->g_119 <= 2); p_1700->g_119 += 1)
        { /* block id: 916 */
            int32_t l_1455 = 0x3E50E091L;
            int8_t *l_1456 = &p_1700->g_238;
            uint8_t *l_1459 = &l_1435;
            int32_t *l_1460 = &p_1700->g_76[0];
            uint64_t l_1461 = 18446744073709551615UL;
            int i, j;
            for (p_1700->g_236.f4 = 0; (p_1700->g_236.f4 <= 3); p_1700->g_236.f4 += 1)
            { /* block id: 919 */
                return l_1435;
            }
            (*l_1460) ^= ((safe_sub_func_int8_t_s_s(6L, ((*l_1459) &= (safe_add_func_uint64_t_u_u((safe_mod_func_int8_t_s_s(((FAKE_DIVERGE(p_1700->local_2_offset, get_local_id(2), 10) , l_1442) | ((!((l_1457 = (safe_add_func_int64_t_s_s((safe_sub_func_int8_t_s_s(((*l_1456) ^= (((((((((p_10 == p_10) > ((safe_add_func_int16_t_s_s((!0x78B9L), (~(0L != ((((&p_1700->g_185 != &p_1700->g_832) , (((safe_mul_func_int8_t_s_s((p_1700->g_234[2][0] |= (+(safe_mod_func_int8_t_s_s((((safe_mul_func_int8_t_s_s(0x66L, 0x06L)) == p_1700->g_1246.f2) ^ p_1700->g_963.f6), l_1455)))), p_1700->g_745[0])) != (*p_10)) <= p_11)) , p_9) | (*p_10)))))) == p_1700->g_1070.f1)) , 0xD9A9E939L) , &p_1700->g_1242) != p_1700->g_1241) >= FAKE_DIVERGE(p_1700->global_1_offset, get_global_id(1), 10)) ^ 0L) | p_9) < (-1L))), p_1700->g_945[9].f3)), p_9))) || 0x1A009A5AL)) ^ l_1458[4][4])), l_1458[4][4])), p_12))))) < p_12);
            if (l_1461)
                continue;
        }
        if (l_1458[1][1])
            break;
        for (p_1700->g_1356.f2 = 3; (p_1700->g_1356.f2 >= 0); p_1700->g_1356.f2 -= 1)
        { /* block id: 932 */
            uint32_t *l_1489 = &p_1700->g_74;
            uint32_t **l_1488 = &l_1489;
            int32_t l_1494 = 0x61A96757L;
            int32_t l_1574 = 8L;
            int32_t l_1575 = 8L;
            uint8_t l_1576 = 0x42L;
            uint16_t *l_1609[2][5];
            int64_t *l_1610 = &l_1526;
            int32_t *l_1611 = &l_1494;
            int i, j;
            for (i = 0; i < 2; i++)
            {
                for (j = 0; j < 5; j++)
                    l_1609[i][j] = &p_1700->g_1042.f0;
            }
            if ((atomic_inc(&p_1700->l_atomic_input[8]) == 4))
            { /* block id: 934 */
                int32_t l_1462 = 0x5CA3814CL;
                for (l_1462 = 0; (l_1462 <= 0); l_1462 += 1)
                { /* block id: 937 */
                    int i;
                    if (p_1700->g_745[l_1462])
                    { /* block id: 938 */
                        uint8_t l_1463 = 251UL;
                        uint32_t l_1464 = 0x1601DCC0L;
                        l_1464 = l_1463;
                    }
                    else
                    { /* block id: 940 */
                        int16_t l_1465 = (-9L);
                        uint8_t l_1466 = 0x67L;
                        int8_t l_1467 = 4L;
                        uint32_t l_1468 = 0UL;
                        int64_t l_1469[9] = {(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)};
                        int8_t l_1470 = (-1L);
                        uint32_t l_1471 = 1UL;
                        int32_t *l_1472 = (void*)0;
                        struct S1 l_1474[5][4][5] = {{{{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL}},{{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL}},{{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL}},{{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL}}},{{{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL}},{{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL}},{{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL}},{{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL}}},{{{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL}},{{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL}},{{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL}},{{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL}}},{{{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL}},{{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL}},{{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL}},{{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL}}},{{{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL}},{{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL}},{{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL}},{{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL},{1UL,-8L,1L,1L,0x22B7L,0xAEBC86D6B30CF2E7L,4294967289UL}}}};
                        struct S1 *l_1473 = &l_1474[4][2][1];
                        struct S1 *l_1475 = (void*)0;
                        int i, j, k;
                        l_1471 |= ((l_1469[6] = (l_1468 = ((l_1466 = l_1465) , l_1467))) , l_1470);
                        l_1472 = (void*)0;
                        l_1475 = l_1473;
                    }
                }
                unsigned int result = 0;
                result += l_1462;
                atomic_add(&p_1700->l_special_values[8], result);
            }
            else
            { /* block id: 949 */
                (1 + 1);
            }
            for (l_1442 = 0; (l_1442 <= 7); l_1442 += 1)
            { /* block id: 954 */
                uint32_t *l_1485[3];
                uint32_t **l_1484 = &l_1485[1];
                int32_t **l_1546 = &l_1525;
                int32_t l_1547 = 1L;
                int32_t l_1548[6][7] = {{0x5B577095L,5L,0x19EBA21BL,0x10C1F1E1L,8L,0x5B577095L,0x10C1F1E1L},{0x5B577095L,5L,0x19EBA21BL,0x10C1F1E1L,8L,0x5B577095L,0x10C1F1E1L},{0x5B577095L,5L,0x19EBA21BL,0x10C1F1E1L,8L,0x5B577095L,0x10C1F1E1L},{0x5B577095L,5L,0x19EBA21BL,0x10C1F1E1L,8L,0x5B577095L,0x10C1F1E1L},{0x5B577095L,5L,0x19EBA21BL,0x10C1F1E1L,8L,0x5B577095L,0x10C1F1E1L},{0x5B577095L,5L,0x19EBA21BL,0x10C1F1E1L,8L,0x5B577095L,0x10C1F1E1L}};
                int i, j;
                for (i = 0; i < 3; i++)
                    l_1485[i] = &p_1700->g_1394.f3;
                for (p_1700->g_1394.f0 = 0; (p_1700->g_1394.f0 <= 2); p_1700->g_1394.f0 += 1)
                { /* block id: 957 */
                    int8_t *l_1477 = &p_1700->g_234[2][0];
                    int8_t *l_1490[8][4] = {{&p_1700->g_238,&p_1700->g_238,&p_1700->g_238,&p_1700->g_238},{&p_1700->g_238,&p_1700->g_238,&p_1700->g_238,&p_1700->g_238},{&p_1700->g_238,&p_1700->g_238,&p_1700->g_238,&p_1700->g_238},{&p_1700->g_238,&p_1700->g_238,&p_1700->g_238,&p_1700->g_238},{&p_1700->g_238,&p_1700->g_238,&p_1700->g_238,&p_1700->g_238},{&p_1700->g_238,&p_1700->g_238,&p_1700->g_238,&p_1700->g_238},{&p_1700->g_238,&p_1700->g_238,&p_1700->g_238,&p_1700->g_238},{&p_1700->g_238,&p_1700->g_238,&p_1700->g_238,&p_1700->g_238}};
                    uint8_t l_1528 = 0xF1L;
                    int32_t **l_1529 = (void*)0;
                    int32_t *l_1531 = &p_1700->g_1070.f1;
                    int32_t **l_1530 = &l_1531;
                    int i, j;
                    (*p_10) = (p_1700->g_236.f5 > (0x4CL ^ ((l_1476[0][1][1] = l_1457) > l_1457)));
                    l_1494 &= ((*p_10) = (((*l_1477) ^= 7L) && (p_1700->g_1493 = (!(safe_div_func_uint32_t_u_u(l_1435, ((((p_1700->g_238 = (l_1476[1][5][0] = (safe_mul_func_int8_t_s_s(((*l_1477) = (safe_mul_func_int8_t_s_s((l_1484 != ((safe_mod_func_uint32_t_u_u(0xFB2DD11CL, (*p_10))) , l_1488)), p_13))), 0x44L)))) || (safe_add_func_uint16_t_u_u(1UL, 0xEB79L))) ^ p_9) , 0xD9E95B0EL)))))));
                    if ((atomic_inc(&p_1700->g_atomic_input[25 * get_linear_group_id() + 19]) == 0))
                    { /* block id: 968 */
                        int16_t l_1495 = 5L;
                        int64_t l_1496 = (-1L);
                        uint32_t l_1497 = 1UL;
                        int8_t l_1500 = 0L;
                        int16_t l_1501 = 5L;
                        int16_t l_1502 = 0L;
                        uint16_t l_1503 = 0x624CL;
                        uint32_t l_1504[5][8] = {{1UL,1UL,4294967288UL,0xF1148C54L,0xABF90BD0L,4294967295UL,0x15C75B7CL,0xCD29F789L},{1UL,1UL,4294967288UL,0xF1148C54L,0xABF90BD0L,4294967295UL,0x15C75B7CL,0xCD29F789L},{1UL,1UL,4294967288UL,0xF1148C54L,0xABF90BD0L,4294967295UL,0x15C75B7CL,0xCD29F789L},{1UL,1UL,4294967288UL,0xF1148C54L,0xABF90BD0L,4294967295UL,0x15C75B7CL,0xCD29F789L},{1UL,1UL,4294967288UL,0xF1148C54L,0xABF90BD0L,4294967295UL,0x15C75B7CL,0xCD29F789L}};
                        int16_t l_1505[1][2][7] = {{{0x2396L,1L,0x2396L,0x2396L,1L,0x2396L,0x2396L},{0x2396L,1L,0x2396L,0x2396L,1L,0x2396L,0x2396L}}};
                        int32_t l_1506[3][3] = {{0L,0x6BBF7EC6L,0L},{0L,0x6BBF7EC6L,0L},{0L,0x6BBF7EC6L,0L}};
                        uint64_t l_1507 = 0x4E9C693D9073F50AL;
                        int16_t l_1508 = 0x4618L;
                        int64_t l_1509[10][3][8] = {{{0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L},{0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L},{0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L}},{{0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L},{0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L},{0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L}},{{0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L},{0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L},{0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L}},{{0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L},{0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L},{0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L}},{{0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L},{0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L},{0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L}},{{0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L},{0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L},{0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L}},{{0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L},{0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L},{0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L}},{{0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L},{0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L},{0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L}},{{0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L},{0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L},{0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L}},{{0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L},{0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L},{0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L,0x0F66CA94491EF4B9L}}};
                        int32_t l_1510 = 0x5F82C01FL;
                        uint32_t l_1511 = 0x085A28B8L;
                        uint16_t l_1512 = 65534UL;
                        int32_t l_1513 = 7L;
                        uint32_t l_1514 = 4294967295UL;
                        uint64_t l_1515 = 0xBC0E79951F79FA35L;
                        int32_t *l_1516[7] = {&l_1506[2][1],&l_1506[2][1],&l_1506[2][1],&l_1506[2][1],&l_1506[2][1],&l_1506[2][1],&l_1506[2][1]};
                        int32_t l_1518[7][9] = {{0x141FA9DCL,0L,0x4B7D52EFL,0L,0x4B7D52EFL,0L,0x141FA9DCL,0x7344B6ACL,0x35CAD7CAL},{0x141FA9DCL,0L,0x4B7D52EFL,0L,0x4B7D52EFL,0L,0x141FA9DCL,0x7344B6ACL,0x35CAD7CAL},{0x141FA9DCL,0L,0x4B7D52EFL,0L,0x4B7D52EFL,0L,0x141FA9DCL,0x7344B6ACL,0x35CAD7CAL},{0x141FA9DCL,0L,0x4B7D52EFL,0L,0x4B7D52EFL,0L,0x141FA9DCL,0x7344B6ACL,0x35CAD7CAL},{0x141FA9DCL,0L,0x4B7D52EFL,0L,0x4B7D52EFL,0L,0x141FA9DCL,0x7344B6ACL,0x35CAD7CAL},{0x141FA9DCL,0L,0x4B7D52EFL,0L,0x4B7D52EFL,0L,0x141FA9DCL,0x7344B6ACL,0x35CAD7CAL},{0x141FA9DCL,0L,0x4B7D52EFL,0L,0x4B7D52EFL,0L,0x141FA9DCL,0x7344B6ACL,0x35CAD7CAL}};
                        int32_t *l_1517[7] = {(void*)0,&l_1518[4][5],(void*)0,(void*)0,&l_1518[4][5],(void*)0,(void*)0};
                        int i, j, k;
                        l_1496 = l_1495;
                        --l_1497;
                        l_1504[4][0] = (l_1503 = (l_1502 = (((l_1501 &= l_1500) , 1UL) , 0x49D8E860L)));
                        l_1517[3] = ((l_1515 = ((l_1508 = (l_1507 &= (l_1506[2][1] = l_1505[0][1][3]))) , (((l_1512 = (l_1509[4][1][3] , (l_1510 , l_1511))) , l_1513) , l_1514))) , l_1516[1]);
                        unsigned int result = 0;
                        result += l_1495;
                        result += l_1496;
                        result += l_1497;
                        result += l_1500;
                        result += l_1501;
                        result += l_1502;
                        result += l_1503;
                        int l_1504_i0, l_1504_i1;
                        for (l_1504_i0 = 0; l_1504_i0 < 5; l_1504_i0++) {
                            for (l_1504_i1 = 0; l_1504_i1 < 8; l_1504_i1++) {
                                result += l_1504[l_1504_i0][l_1504_i1];
                            }
                        }
                        int l_1505_i0, l_1505_i1, l_1505_i2;
                        for (l_1505_i0 = 0; l_1505_i0 < 1; l_1505_i0++) {
                            for (l_1505_i1 = 0; l_1505_i1 < 2; l_1505_i1++) {
                                for (l_1505_i2 = 0; l_1505_i2 < 7; l_1505_i2++) {
                                    result += l_1505[l_1505_i0][l_1505_i1][l_1505_i2];
                                }
                            }
                        }
                        int l_1506_i0, l_1506_i1;
                        for (l_1506_i0 = 0; l_1506_i0 < 3; l_1506_i0++) {
                            for (l_1506_i1 = 0; l_1506_i1 < 3; l_1506_i1++) {
                                result += l_1506[l_1506_i0][l_1506_i1];
                            }
                        }
                        result += l_1507;
                        result += l_1508;
                        int l_1509_i0, l_1509_i1, l_1509_i2;
                        for (l_1509_i0 = 0; l_1509_i0 < 10; l_1509_i0++) {
                            for (l_1509_i1 = 0; l_1509_i1 < 3; l_1509_i1++) {
                                for (l_1509_i2 = 0; l_1509_i2 < 8; l_1509_i2++) {
                                    result += l_1509[l_1509_i0][l_1509_i1][l_1509_i2];
                                }
                            }
                        }
                        result += l_1510;
                        result += l_1511;
                        result += l_1512;
                        result += l_1513;
                        result += l_1514;
                        result += l_1515;
                        int l_1518_i0, l_1518_i1;
                        for (l_1518_i0 = 0; l_1518_i0 < 7; l_1518_i0++) {
                            for (l_1518_i1 = 0; l_1518_i1 < 9; l_1518_i1++) {
                                result += l_1518[l_1518_i0][l_1518_i1];
                            }
                        }
                        atomic_add(&p_1700->g_special_values[25 * get_linear_group_id() + 19], result);
                    }
                    else
                    { /* block id: 981 */
                        (1 + 1);
                    }
                    (*p_1700->g_1533) |= ((*p_10) = (safe_mod_func_int32_t_s_s(((p_1700->g_1042.f0 >= (safe_add_func_uint32_t_u_u((safe_mul_func_int8_t_s_s((l_1525 != ((*l_1530) = &p_1700->g_86)), 0x4EL)), (*p_10)))) , 0x1745FBBFL), 4294967292UL)));
                }
                for (p_1700->g_1027.f4 = 1; (p_1700->g_1027.f4 <= 4); p_1700->g_1027.f4 += 1)
                { /* block id: 991 */
                    int i, j;
                    (*p_10) = ((l_1458[(p_1700->g_1356.f2 + 2)][p_1700->g_1027.f4] != (*p_10)) ^ (safe_mul_func_int8_t_s_s(0x77L, (safe_mod_func_uint8_t_u_u((GROUP_DIVERGE(1, 1) ^ (((l_1458[(p_1700->g_1356.f2 + 2)][p_1700->g_1027.f4] || (safe_add_func_int8_t_s_s((l_1494 || 0x0D1EE1FCL), ((l_1548[4][5] ^= (safe_lshift_func_uint8_t_u_u(p_11, (+(((safe_div_func_uint16_t_u_u(((l_1546 == (void*)0) < l_1547), 0x4D21L)) >= GROUP_DIVERGE(2, 1)) || (*p_10)))))) > l_1494)))) , p_1700->g_236.f8) >= 0x749E141EC573C406L)), l_1458[4][4])))));
                }
                for (l_1494 = 0; (l_1494 <= 3); l_1494 += 1)
                { /* block id: 997 */
                    int8_t *l_1565 = (void*)0;
                    int8_t *l_1566 = &p_1700->g_234[2][0];
                    int32_t *l_1571 = &l_1547;
                    int32_t l_1573[6] = {6L,6L,6L,6L,6L,6L};
                    int i;
                    if ((atomic_inc(&p_1700->g_atomic_input[25 * get_linear_group_id() + 23]) == 4))
                    { /* block id: 999 */
                        struct S1 l_1549[1] = {{0x4108L,-1L,1L,2L,9UL,0xB90DC24A1A54FF87L,0x66303493L}};
                        uint8_t l_1550 = 0xAEL;
                        uint16_t l_1553[8] = {0x911EL,0x911EL,0x911EL,0x911EL,0x911EL,0x911EL,0x911EL,0x911EL};
                        int16_t l_1554 = 0x5BFCL;
                        uint8_t l_1555 = 0x63L;
                        int32_t l_1557 = 0x06BBA24BL;
                        int32_t *l_1556[6] = {&l_1557,&l_1557,&l_1557,&l_1557,&l_1557,&l_1557};
                        int i;
                        l_1549[0] = p_1700->g_1245[p_1700->g_1246.f3];
                        l_1555 ^= ((l_1550--) , ((l_1553[1] , l_1554) , 0x4AD9D4DDL));
                        l_1556[4] = (void*)0;
                        unsigned int result = 0;
                        int l_1549_i0;
                        for (l_1549_i0 = 0; l_1549_i0 < 1; l_1549_i0++) {
                            result += l_1549[l_1549_i0].f0;
                            result += l_1549[l_1549_i0].f1;
                            result += l_1549[l_1549_i0].f2;
                            result += l_1549[l_1549_i0].f3;
                            result += l_1549[l_1549_i0].f4;
                            result += l_1549[l_1549_i0].f5;
                            result += l_1549[l_1549_i0].f6;
                        }
                        result += l_1550;
                        int l_1553_i0;
                        for (l_1553_i0 = 0; l_1553_i0 < 8; l_1553_i0++) {
                            result += l_1553[l_1553_i0];
                        }
                        result += l_1554;
                        result += l_1555;
                        result += l_1557;
                        atomic_add(&p_1700->g_special_values[25 * get_linear_group_id() + 23], result);
                    }
                    else
                    { /* block id: 1004 */
                        (1 + 1);
                    }
                    if ((0x1C3D47DD472B9EA4L | (p_12 || (safe_div_func_int16_t_s_s((safe_sub_func_uint8_t_u_u((safe_lshift_func_int16_t_s_s(p_12, 8)), (((*l_1566) |= p_1700->g_1564) > l_1435))), ((safe_sub_func_int32_t_s_s(((*l_1571) ^= ((safe_lshift_func_uint8_t_u_u(0UL, 6)) , ((*p_10) = l_1457))), p_9)) || l_1457))))))
                    { /* block id: 1010 */
                        int32_t *l_1572[10] = {&p_1700->g_213[7],&l_1476[3][1][2],&p_1700->g_213[7],&p_1700->g_213[7],&l_1476[3][1][2],&p_1700->g_213[7],&p_1700->g_213[7],&l_1476[3][1][2],&p_1700->g_213[7],&p_1700->g_213[7]};
                        int i;
                        --l_1576;
                        return l_1457;
                    }
                    else
                    { /* block id: 1013 */
                        (*p_1700->g_1579) = p_10;
                        (*p_10) ^= (-1L);
                    }
                }
            }
            (*l_1611) &= (((*l_1610) = ((((p_1700->g_1027.f5 != (&p_1700->g_246 != &p_1700->g_1107)) > (((((*p_10) |= (GROUP_DIVERGE(1, 1) >= 5L)) , (((l_1457 = (safe_lshift_func_int16_t_s_u((safe_lshift_func_uint16_t_u_s((p_1700->g_1586 , l_1576), 3)), (p_1700->g_1587 != (((((FAKE_DIVERGE(p_1700->local_1_offset, get_local_id(1), 10) , ((safe_lshift_func_int8_t_s_u((l_1608 &= (0x5D1ABA1B427FBD31L == (safe_div_func_uint32_t_u_u(((((safe_mod_func_int64_t_s_s(((safe_lshift_func_uint8_t_u_u(((safe_rshift_func_int8_t_s_s((safe_sub_func_uint64_t_u_u(((p_1700->g_1604 = l_1489) != (void*)0), l_1435)), 7)) , p_1700->g_1493), FAKE_DIVERGE(p_1700->global_0_offset, get_global_id(0), 10))) , p_1700->g_1042.f7), l_1476[0][1][1])) , l_1605) != l_1606) == p_11), 9L)))), 3)) <= p_13)) , p_13) && FAKE_DIVERGE(p_1700->global_1_offset, get_global_id(1), 10)) > 1UL) , (void*)0))))) , p_1700->g_1245[0].f2) && p_13)) && l_1435) & 0x15L)) , p_1700->g_236.f6) , l_1476[0][1][1])) , l_1457);
            (*p_10) &= (safe_rshift_func_uint8_t_u_u((((&p_10 != &p_1700->g_166) | (0x0B209C119F6CF029L | 0x907CBEF2AB0071CDL)) ^ p_13), 1));
        }
        for (p_1700->g_285 = 0; (p_1700->g_285 <= 3); p_1700->g_285 += 1)
        { /* block id: 1029 */
            uint8_t *l_1618[2][1][7] = {{{&p_1700->g_1386,&l_1435,(void*)0,&l_1435,&p_1700->g_1386,&p_1700->g_1386,&l_1435}},{{&p_1700->g_1386,&l_1435,(void*)0,&l_1435,&p_1700->g_1386,&p_1700->g_1386,&l_1435}}};
            uint8_t **l_1617 = &l_1618[0][0][0];
            int i, j, k;
            if (l_1614)
                break;
            p_1700->g_1616 = p_1700->g_1615;
            p_1700->g_1619 = l_1617;
        }
    }
    ++l_1624;
    return (*p_1700->g_1620);
}


/* ------------------------------------------ */
/* 
 * reads : p_1700->g_900 p_1700->g_119 p_1700->g_1075 p_1700->g_1245.f4 p_1700->g_1027.f0 p_1700->g_1028.f5 p_1700->g_1070.f2 p_1700->g_1245.f3 p_1700->g_1107 p_1700->g_1028.f0 p_1700->g_1246.f2 p_1700->g_1073.f4 p_1700->g_881 p_1700->g_1340 p_1700->g_102 p_1700->g_213 p_1700->g_963.f2 p_1700->g_1386 p_1700->g_963.f3 p_1700->g_1394.f0 p_1700->g_1028.f7 p_1700->g_1413 p_1700->g_1244.f2 p_1700->g_963.f0
 * writes: p_1700->g_900 p_1700->g_119 p_1700->g_234 p_1700->g_83 p_1700->g_1246.f2 p_1700->g_1244.f0 p_1700->g_1042.f5 p_1700->g_1027.f6 p_1700->g_262 p_1700->g_1246.f0 p_1700->g_127 p_1700->g_832 p_1700->g_166 p_1700->g_97 p_1700->g_1243 p_1700->g_1042.f4 p_1700->g_847 p_1700->g_963.f3 p_1700->g_963.f4 p_1700->g_1028.f0 p_1700->g_747 p_1700->g_1244.f3 p_1700->g_207 p_1700->g_1075 p_1700->g_1028.f7 p_1700->g_236.f2
 */
uint64_t  func_23(uint8_t  p_24, uint32_t  p_25, uint32_t  p_26, uint64_t  p_27, struct S2 * p_1700)
{ /* block id: 790 */
    int16_t l_1297 = (-9L);
    int32_t l_1298 = 0x33A77CB5L;
    int32_t l_1316 = (-7L);
    uint32_t *l_1329 = (void*)0;
    uint32_t **l_1328 = &l_1329;
    int32_t l_1347 = 0x7AE63D80L;
    int32_t l_1348[6][4][10] = {{{(-1L),(-1L),0x72FEC921L,5L,1L,9L,0x26BE32DFL,0L,0x26BE32DFL,9L},{(-1L),(-1L),0x72FEC921L,5L,1L,9L,0x26BE32DFL,0L,0x26BE32DFL,9L},{(-1L),(-1L),0x72FEC921L,5L,1L,9L,0x26BE32DFL,0L,0x26BE32DFL,9L},{(-1L),(-1L),0x72FEC921L,5L,1L,9L,0x26BE32DFL,0L,0x26BE32DFL,9L}},{{(-1L),(-1L),0x72FEC921L,5L,1L,9L,0x26BE32DFL,0L,0x26BE32DFL,9L},{(-1L),(-1L),0x72FEC921L,5L,1L,9L,0x26BE32DFL,0L,0x26BE32DFL,9L},{(-1L),(-1L),0x72FEC921L,5L,1L,9L,0x26BE32DFL,0L,0x26BE32DFL,9L},{(-1L),(-1L),0x72FEC921L,5L,1L,9L,0x26BE32DFL,0L,0x26BE32DFL,9L}},{{(-1L),(-1L),0x72FEC921L,5L,1L,9L,0x26BE32DFL,0L,0x26BE32DFL,9L},{(-1L),(-1L),0x72FEC921L,5L,1L,9L,0x26BE32DFL,0L,0x26BE32DFL,9L},{(-1L),(-1L),0x72FEC921L,5L,1L,9L,0x26BE32DFL,0L,0x26BE32DFL,9L},{(-1L),(-1L),0x72FEC921L,5L,1L,9L,0x26BE32DFL,0L,0x26BE32DFL,9L}},{{(-1L),(-1L),0x72FEC921L,5L,1L,9L,0x26BE32DFL,0L,0x26BE32DFL,9L},{(-1L),(-1L),0x72FEC921L,5L,1L,9L,0x26BE32DFL,0L,0x26BE32DFL,9L},{(-1L),(-1L),0x72FEC921L,5L,1L,9L,0x26BE32DFL,0L,0x26BE32DFL,9L},{(-1L),(-1L),0x72FEC921L,5L,1L,9L,0x26BE32DFL,0L,0x26BE32DFL,9L}},{{(-1L),(-1L),0x72FEC921L,5L,1L,9L,0x26BE32DFL,0L,0x26BE32DFL,9L},{(-1L),(-1L),0x72FEC921L,5L,1L,9L,0x26BE32DFL,0L,0x26BE32DFL,9L},{(-1L),(-1L),0x72FEC921L,5L,1L,9L,0x26BE32DFL,0L,0x26BE32DFL,9L},{(-1L),(-1L),0x72FEC921L,5L,1L,9L,0x26BE32DFL,0L,0x26BE32DFL,9L}},{{(-1L),(-1L),0x72FEC921L,5L,1L,9L,0x26BE32DFL,0L,0x26BE32DFL,9L},{(-1L),(-1L),0x72FEC921L,5L,1L,9L,0x26BE32DFL,0L,0x26BE32DFL,9L},{(-1L),(-1L),0x72FEC921L,5L,1L,9L,0x26BE32DFL,0L,0x26BE32DFL,9L},{(-1L),(-1L),0x72FEC921L,5L,1L,9L,0x26BE32DFL,0L,0x26BE32DFL,9L}}};
    uint64_t l_1349 = 1UL;
    struct S1 **l_1378[9][1] = {{&p_1700->g_1243[4]},{&p_1700->g_1243[4]},{&p_1700->g_1243[4]},{&p_1700->g_1243[4]},{&p_1700->g_1243[4]},{&p_1700->g_1243[4]},{&p_1700->g_1243[4]},{&p_1700->g_1243[4]},{&p_1700->g_1243[4]}};
    struct S1 ***l_1377 = &l_1378[5][0];
    uint8_t *l_1391 = &p_1700->g_1386;
    uint16_t *l_1418 = (void*)0;
    int32_t *l_1429 = (void*)0;
    int32_t *l_1430 = &l_1316;
    int32_t l_1431 = 0x1468626CL;
    int i, j, k;
    for (p_1700->g_900 = 0; (p_1700->g_900 <= 5); p_1700->g_900 += 1)
    { /* block id: 793 */
        uint16_t l_1272 = 65535UL;
        struct S1 **l_1291 = &p_1700->g_1243[4];
        int32_t l_1293[10] = {0x437B4791L,0x437B4791L,0x437B4791L,0x437B4791L,0x437B4791L,0x437B4791L,0x437B4791L,0x437B4791L,0x437B4791L,0x437B4791L};
        int32_t l_1295 = 0x3435D4A4L;
        int32_t l_1296 = 0L;
        int i;
        for (p_1700->g_119 = 0; (p_1700->g_119 <= 5); p_1700->g_119 += 1)
        { /* block id: 796 */
            uint16_t *l_1267 = &p_1700->g_1027.f6;
            struct S1 **l_1289 = &p_1700->g_1243[3];
            int8_t *l_1290 = &p_1700->g_234[2][0];
            int32_t *l_1292[3];
            uint32_t *l_1294[3];
            int64_t *l_1299 = &p_1700->g_83[4][2][0];
            int32_t **l_1300 = &l_1292[2];
            int32_t *l_1301 = &p_1700->g_76[1];
            int i, j;
            for (i = 0; i < 3; i++)
                l_1292[i] = &p_1700->g_76[0];
            for (i = 0; i < 3; i++)
                l_1294[i] = &p_1700->g_97;
            l_1296 = (((safe_mul_func_uint8_t_u_u((safe_mul_func_int8_t_s_s(((((*l_1299) = (safe_rshift_func_uint8_t_u_s((safe_sub_func_int8_t_s_s((safe_sub_func_uint32_t_u_u(((safe_mul_func_int8_t_s_s((l_1272 = ((l_1267 != l_1267) , (safe_sub_func_uint8_t_u_u((safe_rshift_func_uint16_t_u_s(p_1700->g_1075[p_1700->g_119][p_1700->g_119], 4)), 0x2EL)))), (safe_rshift_func_int8_t_s_u((l_1297 = (safe_mod_func_int64_t_s_s((((safe_mul_func_uint8_t_u_u(((safe_mul_func_uint16_t_u_u(((((l_1295 = ((safe_rshift_func_int8_t_s_u((((safe_sub_func_uint32_t_u_u((p_25 = (safe_div_func_int32_t_s_s((l_1293[7] = ((safe_rshift_func_uint8_t_u_u((((&p_1700->g_832 == (void*)0) < (((((p_1700->g_1075[(p_1700->g_900 + 2)][p_1700->g_900] , ((l_1289 != (((*l_1290) = p_1700->g_1245[0].f4) , l_1291)) , p_25)) != p_1700->g_1075[p_1700->g_119][p_1700->g_119]) && 0x16L) , p_24) && (-9L))) > GROUP_DIVERGE(1, 1)), 1)) > 4294967290UL)), p_27))), p_27)) | 1UL) != l_1295), GROUP_DIVERGE(1, 1))) != 0x5D62L)) ^ 1L) || 0UL) < l_1296), l_1296)) , p_27), l_1296)) , p_1700->g_1027.f0) >= p_27), p_1700->g_1028[5][3].f5))), l_1298)))) && GROUP_DIVERGE(1, 1)), l_1296)), p_1700->g_1070.f2)), p_26))) & p_1700->g_1245[0].f3) != p_1700->g_1107), p_1700->g_1028[5][3].f0)), 0xFCL)) ^ 9UL) & 9UL);
            (*l_1300) = &l_1295;
            (*l_1300) = l_1301;
        }
    }
    for (p_1700->g_1246.f2 = 0; (p_1700->g_1246.f2 > (-20)); p_1700->g_1246.f2--)
    { /* block id: 811 */
        int16_t l_1321[1];
        int32_t l_1322 = 1L;
        int32_t *l_1323[8][5][6] = {{{&p_1700->g_213[0],&p_1700->g_46,&p_1700->g_76[0],&p_1700->g_46,&p_1700->g_213[0],&p_1700->g_213[0]},{&p_1700->g_213[0],&p_1700->g_46,&p_1700->g_76[0],&p_1700->g_46,&p_1700->g_213[0],&p_1700->g_213[0]},{&p_1700->g_213[0],&p_1700->g_46,&p_1700->g_76[0],&p_1700->g_46,&p_1700->g_213[0],&p_1700->g_213[0]},{&p_1700->g_213[0],&p_1700->g_46,&p_1700->g_76[0],&p_1700->g_46,&p_1700->g_213[0],&p_1700->g_213[0]},{&p_1700->g_213[0],&p_1700->g_46,&p_1700->g_76[0],&p_1700->g_46,&p_1700->g_213[0],&p_1700->g_213[0]}},{{&p_1700->g_213[0],&p_1700->g_46,&p_1700->g_76[0],&p_1700->g_46,&p_1700->g_213[0],&p_1700->g_213[0]},{&p_1700->g_213[0],&p_1700->g_46,&p_1700->g_76[0],&p_1700->g_46,&p_1700->g_213[0],&p_1700->g_213[0]},{&p_1700->g_213[0],&p_1700->g_46,&p_1700->g_76[0],&p_1700->g_46,&p_1700->g_213[0],&p_1700->g_213[0]},{&p_1700->g_213[0],&p_1700->g_46,&p_1700->g_76[0],&p_1700->g_46,&p_1700->g_213[0],&p_1700->g_213[0]},{&p_1700->g_213[0],&p_1700->g_46,&p_1700->g_76[0],&p_1700->g_46,&p_1700->g_213[0],&p_1700->g_213[0]}},{{&p_1700->g_213[0],&p_1700->g_46,&p_1700->g_76[0],&p_1700->g_46,&p_1700->g_213[0],&p_1700->g_213[0]},{&p_1700->g_213[0],&p_1700->g_46,&p_1700->g_76[0],&p_1700->g_46,&p_1700->g_213[0],&p_1700->g_213[0]},{&p_1700->g_213[0],&p_1700->g_46,&p_1700->g_76[0],&p_1700->g_46,&p_1700->g_213[0],&p_1700->g_213[0]},{&p_1700->g_213[0],&p_1700->g_46,&p_1700->g_76[0],&p_1700->g_46,&p_1700->g_213[0],&p_1700->g_213[0]},{&p_1700->g_213[0],&p_1700->g_46,&p_1700->g_76[0],&p_1700->g_46,&p_1700->g_213[0],&p_1700->g_213[0]}},{{&p_1700->g_213[0],&p_1700->g_46,&p_1700->g_76[0],&p_1700->g_46,&p_1700->g_213[0],&p_1700->g_213[0]},{&p_1700->g_213[0],&p_1700->g_46,&p_1700->g_76[0],&p_1700->g_46,&p_1700->g_213[0],&p_1700->g_213[0]},{&p_1700->g_213[0],&p_1700->g_46,&p_1700->g_76[0],&p_1700->g_46,&p_1700->g_213[0],&p_1700->g_213[0]},{&p_1700->g_213[0],&p_1700->g_46,&p_1700->g_76[0],&p_1700->g_46,&p_1700->g_213[0],&p_1700->g_213[0]},{&p_1700->g_213[0],&p_1700->g_46,&p_1700->g_76[0],&p_1700->g_46,&p_1700->g_213[0],&p_1700->g_213[0]}},{{&p_1700->g_213[0],&p_1700->g_46,&p_1700->g_76[0],&p_1700->g_46,&p_1700->g_213[0],&p_1700->g_213[0]},{&p_1700->g_213[0],&p_1700->g_46,&p_1700->g_76[0],&p_1700->g_46,&p_1700->g_213[0],&p_1700->g_213[0]},{&p_1700->g_213[0],&p_1700->g_46,&p_1700->g_76[0],&p_1700->g_46,&p_1700->g_213[0],&p_1700->g_213[0]},{&p_1700->g_213[0],&p_1700->g_46,&p_1700->g_76[0],&p_1700->g_46,&p_1700->g_213[0],&p_1700->g_213[0]},{&p_1700->g_213[0],&p_1700->g_46,&p_1700->g_76[0],&p_1700->g_46,&p_1700->g_213[0],&p_1700->g_213[0]}},{{&p_1700->g_213[0],&p_1700->g_46,&p_1700->g_76[0],&p_1700->g_46,&p_1700->g_213[0],&p_1700->g_213[0]},{&p_1700->g_213[0],&p_1700->g_46,&p_1700->g_76[0],&p_1700->g_46,&p_1700->g_213[0],&p_1700->g_213[0]},{&p_1700->g_213[0],&p_1700->g_46,&p_1700->g_76[0],&p_1700->g_46,&p_1700->g_213[0],&p_1700->g_213[0]},{&p_1700->g_213[0],&p_1700->g_46,&p_1700->g_76[0],&p_1700->g_46,&p_1700->g_213[0],&p_1700->g_213[0]},{&p_1700->g_213[0],&p_1700->g_46,&p_1700->g_76[0],&p_1700->g_46,&p_1700->g_213[0],&p_1700->g_213[0]}},{{&p_1700->g_213[0],&p_1700->g_46,&p_1700->g_76[0],&p_1700->g_46,&p_1700->g_213[0],&p_1700->g_213[0]},{&p_1700->g_213[0],&p_1700->g_46,&p_1700->g_76[0],&p_1700->g_46,&p_1700->g_213[0],&p_1700->g_213[0]},{&p_1700->g_213[0],&p_1700->g_46,&p_1700->g_76[0],&p_1700->g_46,&p_1700->g_213[0],&p_1700->g_213[0]},{&p_1700->g_213[0],&p_1700->g_46,&p_1700->g_76[0],&p_1700->g_46,&p_1700->g_213[0],&p_1700->g_213[0]},{&p_1700->g_213[0],&p_1700->g_46,&p_1700->g_76[0],&p_1700->g_46,&p_1700->g_213[0],&p_1700->g_213[0]}},{{&p_1700->g_213[0],&p_1700->g_46,&p_1700->g_76[0],&p_1700->g_46,&p_1700->g_213[0],&p_1700->g_213[0]},{&p_1700->g_213[0],&p_1700->g_46,&p_1700->g_76[0],&p_1700->g_46,&p_1700->g_213[0],&p_1700->g_213[0]},{&p_1700->g_213[0],&p_1700->g_46,&p_1700->g_76[0],&p_1700->g_46,&p_1700->g_213[0],&p_1700->g_213[0]},{&p_1700->g_213[0],&p_1700->g_46,&p_1700->g_76[0],&p_1700->g_46,&p_1700->g_213[0],&p_1700->g_213[0]},{&p_1700->g_213[0],&p_1700->g_46,&p_1700->g_76[0],&p_1700->g_46,&p_1700->g_213[0],&p_1700->g_213[0]}}};
        uint32_t l_1324[10] = {0xB8C26D10L,0x77CCC98FL,4294967294UL,0x77CCC98FL,0xB8C26D10L,0xB8C26D10L,0x77CCC98FL,4294967294UL,0x77CCC98FL,0xB8C26D10L};
        int i, j, k;
        for (i = 0; i < 1; i++)
            l_1321[i] = 0L;
        if ((l_1324[7] = (((l_1322 = (((0x1D3E98D0L | 3L) , ((safe_div_func_uint8_t_u_u(((0x03L | (FAKE_DIVERGE(p_1700->local_0_offset, get_local_id(0), 10) > (safe_lshift_func_int16_t_s_u((safe_sub_func_int64_t_s_s((safe_sub_func_int64_t_s_s((!1L), (safe_rshift_func_uint16_t_u_u((safe_mul_func_uint16_t_u_u(p_24, (p_24 || (l_1316 = 18446744073709551609UL)))), (safe_div_func_uint8_t_u_u(((safe_add_func_uint8_t_u_u(p_27, ((l_1298 && 0x71218D43L) | 0x78CCF38FL))) , 0x0EL), 0xDEL)))))), l_1321[0])), FAKE_DIVERGE(p_1700->local_0_offset, get_local_id(0), 10))))) > l_1298), p_1700->g_1073.f4)) & p_1700->g_1028[5][3].f0)) , FAKE_DIVERGE(p_1700->global_0_offset, get_global_id(0), 10))) , &l_1322) == l_1323[3][4][4])))
        { /* block id: 815 */
            l_1316 &= p_24;
            return p_25;
        }
        else
        { /* block id: 818 */
            for (p_1700->g_1244.f0 = 0; (p_1700->g_1244.f0 > 35); p_1700->g_1244.f0 = safe_add_func_uint32_t_u_u(p_1700->g_1244.f0, 1))
            { /* block id: 821 */
                uint32_t **l_1327 = (void*)0;
                int32_t l_1330 = 5L;
                l_1330 ^= (l_1327 != l_1328);
            }
            for (p_1700->g_1042.f5 = (-1); (p_1700->g_1042.f5 <= 28); p_1700->g_1042.f5++)
            { /* block id: 826 */
                int32_t l_1335 = 0x45EA28A0L;
                for (p_1700->g_1027.f6 = 20; (p_1700->g_1027.f6 != 50); p_1700->g_1027.f6 = safe_add_func_uint32_t_u_u(p_1700->g_1027.f6, 1))
                { /* block id: 829 */
                    if (p_24)
                    { /* block id: 830 */
                        uint16_t l_1336[7];
                        int i;
                        for (i = 0; i < 7; i++)
                            l_1336[i] = 65533UL;
                        l_1336[0]++;
                        return p_1700->g_881;
                    }
                    else
                    { /* block id: 833 */
                        int32_t **l_1339 = &p_1700->g_262[0];
                        (*l_1339) = &p_1700->g_46;
                        l_1316 = 0x37159120L;
                    }
                    return p_1700->g_1340;
                }
            }
        }
        for (p_1700->g_1246.f0 = 21; (p_1700->g_1246.f0 <= 28); p_1700->g_1246.f0 = safe_add_func_int32_t_s_s(p_1700->g_1246.f0, 7))
        { /* block id: 843 */
            int32_t l_1345 = (-2L);
            uint32_t ***l_1374 = &p_1700->g_848;
            int32_t l_1375[8][4] = {{0x613A61E8L,0L,0x4BA25606L,(-5L)},{0x613A61E8L,0L,0x4BA25606L,(-5L)},{0x613A61E8L,0L,0x4BA25606L,(-5L)},{0x613A61E8L,0L,0x4BA25606L,(-5L)},{0x613A61E8L,0L,0x4BA25606L,(-5L)},{0x613A61E8L,0L,0x4BA25606L,(-5L)},{0x613A61E8L,0L,0x4BA25606L,(-5L)},{0x613A61E8L,0L,0x4BA25606L,(-5L)}};
            struct S1 ***l_1379 = &l_1378[3][0];
            uint32_t *l_1403 = &p_1700->g_1075[3][0];
            uint32_t *l_1410 = &p_1700->g_1028[5][3].f7;
            int i, j;
            if (p_26)
                break;
            for (p_1700->g_127 = 0; (p_1700->g_127 == 35); p_1700->g_127 = safe_add_func_int64_t_s_s(p_1700->g_127, 5))
            { /* block id: 847 */
                int64_t l_1346[6][5] = {{(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L),(-1L)}};
                int32_t *l_1354 = &l_1322;
                uint64_t *l_1361[10][2] = {{&p_1700->g_1028[5][3].f4,&p_1700->g_1028[5][3].f4},{&p_1700->g_1028[5][3].f4,&p_1700->g_1028[5][3].f4},{&p_1700->g_1028[5][3].f4,&p_1700->g_1028[5][3].f4},{&p_1700->g_1028[5][3].f4,&p_1700->g_1028[5][3].f4},{&p_1700->g_1028[5][3].f4,&p_1700->g_1028[5][3].f4},{&p_1700->g_1028[5][3].f4,&p_1700->g_1028[5][3].f4},{&p_1700->g_1028[5][3].f4,&p_1700->g_1028[5][3].f4},{&p_1700->g_1028[5][3].f4,&p_1700->g_1028[5][3].f4},{&p_1700->g_1028[5][3].f4,&p_1700->g_1028[5][3].f4},{&p_1700->g_1028[5][3].f4,&p_1700->g_1028[5][3].f4}};
                int32_t *l_1364 = &l_1345;
                uint32_t ****l_1373 = &p_1700->g_847;
                int32_t l_1376 = (-5L);
                int i, j;
                l_1349++;
                for (p_1700->g_832 = (-3); (p_1700->g_832 == 24); ++p_1700->g_832)
                { /* block id: 851 */
                    int32_t **l_1355 = &p_1700->g_166;
                    l_1316 = p_26;
                    (*l_1355) = l_1354;
                    for (p_1700->g_97 = 0; p_1700->g_97 < 7; p_1700->g_97 += 1)
                    {
                        p_1700->g_1243[p_1700->g_97] = &p_1700->g_1356;
                    }
                    return l_1349;
                }
                if ((safe_sub_func_uint64_t_u_u((l_1376 |= (((safe_div_func_uint8_t_u_u((((0xC24971D7DBCD54CCL != (p_1700->g_1042.f4 = (GROUP_DIVERGE(0, 1) , p_1700->g_102))) , (((*l_1364) = ((safe_sub_func_uint64_t_u_u((*l_1354), 0x6E1326906C93DE9BL)) && GROUP_DIVERGE(2, 1))) , (safe_mod_func_uint16_t_u_u(p_25, (safe_mul_func_int8_t_s_s((safe_rshift_func_int8_t_s_u((((!p_1700->g_213[3]) != ((GROUP_DIVERGE(2, 1) , (+(safe_mul_func_uint16_t_u_u(((((*l_1373) = (void*)0) != (l_1374 = (void*)0)) & l_1345), l_1349)))) | p_25)) , p_25), (*l_1354))), (-8L))))))) && p_25), l_1375[7][3])) != FAKE_DIVERGE(p_1700->group_0_offset, get_group_id(0), 10)) > l_1347)), p_1700->g_963.f2)))
                { /* block id: 862 */
                    l_1323[4][4][3] = (void*)0;
                }
                else
                { /* block id: 864 */
                    (*l_1354) = ((l_1375[4][3] , l_1377) == l_1379);
                }
                for (p_1700->g_963.f3 = 1; (p_1700->g_963.f3 >= 0); p_1700->g_963.f3 -= 1)
                { /* block id: 869 */
                    for (p_1700->g_963.f4 = 0; (p_1700->g_963.f4 <= 0); p_1700->g_963.f4 += 1)
                    { /* block id: 872 */
                        uint16_t *l_1387 = (void*)0;
                        uint16_t *l_1388[2][10] = {{&p_1700->g_1070.f4,&p_1700->g_1070.f4,&p_1700->g_1245[0].f0,&p_1700->g_205,&p_1700->g_1356.f0,&p_1700->g_205,&p_1700->g_1245[0].f0,&p_1700->g_1070.f4,&p_1700->g_1070.f4,&p_1700->g_1245[0].f0},{&p_1700->g_1070.f4,&p_1700->g_1070.f4,&p_1700->g_1245[0].f0,&p_1700->g_205,&p_1700->g_1356.f0,&p_1700->g_205,&p_1700->g_1245[0].f0,&p_1700->g_1070.f4,&p_1700->g_1070.f4,&p_1700->g_1245[0].f0}};
                        uint8_t *l_1392 = &p_1700->g_747;
                        int i, j, k;
                        l_1375[1][0] = (*l_1354);
                        l_1347 |= (safe_div_func_uint32_t_u_u(((*l_1354) <= p_27), (safe_mul_func_uint8_t_u_u(((!((safe_rshift_func_int16_t_s_u((p_1700->g_1386 > (--p_1700->g_1028[5][3].f0)), 15)) , (+0x1248905556B698C6L))) && (l_1375[7][3] = ((void*)0 == l_1391))), ((*l_1392) = 1UL)))));
                    }
                    for (p_1700->g_1244.f3 = 0; (p_1700->g_1244.f3 <= 1); p_1700->g_1244.f3 += 1)
                    { /* block id: 881 */
                        struct S0 *l_1393 = &p_1700->g_1394;
                        struct S0 **l_1395 = (void*)0;
                        struct S0 **l_1396 = &p_1700->g_207;
                        (*l_1396) = l_1393;
                    }
                    for (p_24 = 0; (p_24 <= 0); p_24 += 1)
                    { /* block id: 886 */
                        int i;
                        p_1700->g_262[p_1700->g_963.f3] = &l_1376;
                    }
                }
            }
            l_1348[0][3][1] ^= (p_1700->g_1394.f0 , (((safe_mul_func_uint16_t_u_u((p_24 > (((p_27 , 1L) , (safe_add_func_uint32_t_u_u(0xDFD6990FL, (safe_add_func_uint32_t_u_u(((*l_1403) = 0x87943E63L), (safe_lshift_func_uint16_t_u_u((safe_sub_func_int8_t_s_s((safe_lshift_func_int8_t_s_u(((~(--(*l_1410))) < (((((p_1700->g_1413[1][2] != &p_1700->g_262[0]) , (safe_lshift_func_int16_t_s_s((safe_mod_func_int16_t_s_s(((p_1700->g_881 && (-1L)) | 0xDFL), 0x23B0L)), p_27))) || p_1700->g_1244.f2) != p_24) > (-7L))), 3)), 0x2AL)), 2))))))) && l_1375[1][2])), 0x333DL)) , (void*)0) == l_1418));
        }
        for (p_1700->g_236.f2 = (-10); (p_1700->g_236.f2 == 4); ++p_1700->g_236.f2)
        { /* block id: 897 */
            int8_t l_1421[5][4] = {{0x00L,0x00L,0x00L,0x00L},{0x00L,0x00L,0x00L,0x00L},{0x00L,0x00L,0x00L,0x00L},{0x00L,0x00L,0x00L,0x00L},{0x00L,0x00L,0x00L,0x00L}};
            int32_t l_1422 = 0x35F9C80AL;
            uint64_t **l_1426 = (void*)0;
            int32_t **l_1428[2][7][8] = {{{&p_1700->g_262[1],&p_1700->g_262[1],(void*)0,&p_1700->g_262[1],(void*)0,&p_1700->g_262[1],&p_1700->g_262[1],&l_1323[3][4][4]},{&p_1700->g_262[1],&p_1700->g_262[1],(void*)0,&p_1700->g_262[1],(void*)0,&p_1700->g_262[1],&p_1700->g_262[1],&l_1323[3][4][4]},{&p_1700->g_262[1],&p_1700->g_262[1],(void*)0,&p_1700->g_262[1],(void*)0,&p_1700->g_262[1],&p_1700->g_262[1],&l_1323[3][4][4]},{&p_1700->g_262[1],&p_1700->g_262[1],(void*)0,&p_1700->g_262[1],(void*)0,&p_1700->g_262[1],&p_1700->g_262[1],&l_1323[3][4][4]},{&p_1700->g_262[1],&p_1700->g_262[1],(void*)0,&p_1700->g_262[1],(void*)0,&p_1700->g_262[1],&p_1700->g_262[1],&l_1323[3][4][4]},{&p_1700->g_262[1],&p_1700->g_262[1],(void*)0,&p_1700->g_262[1],(void*)0,&p_1700->g_262[1],&p_1700->g_262[1],&l_1323[3][4][4]},{&p_1700->g_262[1],&p_1700->g_262[1],(void*)0,&p_1700->g_262[1],(void*)0,&p_1700->g_262[1],&p_1700->g_262[1],&l_1323[3][4][4]}},{{&p_1700->g_262[1],&p_1700->g_262[1],(void*)0,&p_1700->g_262[1],(void*)0,&p_1700->g_262[1],&p_1700->g_262[1],&l_1323[3][4][4]},{&p_1700->g_262[1],&p_1700->g_262[1],(void*)0,&p_1700->g_262[1],(void*)0,&p_1700->g_262[1],&p_1700->g_262[1],&l_1323[3][4][4]},{&p_1700->g_262[1],&p_1700->g_262[1],(void*)0,&p_1700->g_262[1],(void*)0,&p_1700->g_262[1],&p_1700->g_262[1],&l_1323[3][4][4]},{&p_1700->g_262[1],&p_1700->g_262[1],(void*)0,&p_1700->g_262[1],(void*)0,&p_1700->g_262[1],&p_1700->g_262[1],&l_1323[3][4][4]},{&p_1700->g_262[1],&p_1700->g_262[1],(void*)0,&p_1700->g_262[1],(void*)0,&p_1700->g_262[1],&p_1700->g_262[1],&l_1323[3][4][4]},{&p_1700->g_262[1],&p_1700->g_262[1],(void*)0,&p_1700->g_262[1],(void*)0,&p_1700->g_262[1],&p_1700->g_262[1],&l_1323[3][4][4]},{&p_1700->g_262[1],&p_1700->g_262[1],(void*)0,&p_1700->g_262[1],(void*)0,&p_1700->g_262[1],&p_1700->g_262[1],&l_1323[3][4][4]}}};
            int i, j, k;
            l_1422 ^= (l_1421[2][3] ^= (l_1347 ^= p_25));
            l_1430 = (l_1429 = &l_1322);
        }
        if (l_1431)
            continue;
    }
    return p_1700->g_963.f0;
}


/* ------------------------------------------ */
/* 
 * reads : p_1700->g_963.f1 p_1700->g_185 p_1700->g_76 p_1700->g_116 p_1700->g_166 p_1700->g_215 p_1700->g_38 p_1700->g_203 p_1700->g_236.f3 p_1700->g_239 p_1700->g_213 p_1700->g_1241 p_1700->g_1246.f3 p_1700->g_945.f4 p_1700->g_1042.f5
 * writes: p_1700->g_166 p_1700->g_963.f1 p_1700->g_185 p_1700->g_76 p_1700->g_213 p_1700->g_234 p_1700->g_238 p_1700->g_239
 */
uint8_t  func_32(int32_t  p_33, int64_t  p_34, uint32_t  p_35, int32_t * p_36, int32_t * p_37, struct S2 * p_1700)
{ /* block id: 772 */
    int32_t **l_1225 = &p_1700->g_166;
    int16_t l_1234 = 0x2149L;
    int32_t l_1249 = (-7L);
    struct S1 **l_1251 = &p_1700->g_1243[6];
    struct S1 ***l_1250[10][2];
    int8_t *l_1252 = &p_1700->g_234[2][0];
    uint32_t l_1253 = 0x6A5460DBL;
    int8_t l_1254[1][3];
    int i, j;
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 2; j++)
            l_1250[i][j] = &l_1251;
    }
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 3; j++)
            l_1254[i][j] = (-1L);
    }
    (*l_1225) = &p_1700->g_76[2];
    for (p_1700->g_963.f1 = 3; (p_1700->g_963.f1 >= 0); p_1700->g_963.f1 -= 1)
    { /* block id: 776 */
        for (p_1700->g_185 = 0; (p_1700->g_185 <= 3); p_1700->g_185 += 1)
        { /* block id: 779 */
            int i;
            (*l_1225) = (void*)0;
            p_1700->g_76[p_1700->g_963.f1] &= 0x4AB402C8L;
        }
        return p_1700->g_116;
    }
    (*l_1225) = func_66((**l_1225), (~((safe_rshift_func_uint16_t_u_u(0x57BAL, 4)) >= 0x35E7DB17L)), p_1700);
    (**l_1225) = ((safe_mod_func_uint64_t_u_u((FAKE_DIVERGE(p_1700->global_1_offset, get_global_id(1), 10) == ((-2L) < (**l_1225))), (safe_div_func_uint16_t_u_u((l_1254[0][2] = (safe_mul_func_int16_t_s_s((~l_1234), ((safe_mul_func_uint16_t_u_u((safe_sub_func_uint8_t_u_u((((((((*l_1252) = ((((**l_1225) != ((safe_sub_func_uint8_t_u_u(0x3FL, (((((p_33 | (((p_1700->g_963.f1 , p_1700->g_1241) == (((safe_mul_func_int16_t_s_s(((l_1249 , GROUP_DIVERGE(2, 1)) < p_1700->g_1246.f3), (**l_1225))) <= 0xAAL) , l_1250[5][1])) ^ (**l_1225))) <= 0x08L) && (*p_1700->g_166)) , (**l_1225)) , 0xA5L))) , p_33)) ^ 0x9A5CB48A231F8DE8L) , 1L)) && 0x28L) || 6L) == p_1700->g_945[9].f4) != (**l_1225)) ^ p_1700->g_1042.f5), l_1253)), p_33)) <= p_34)))), GROUP_DIVERGE(2, 1))))) < 0UL);
    return (**l_1225);
}


/* ------------------------------------------ */
/* 
 * reads : p_1700->g_46 p_1700->g_76 p_1700->g_38 p_1700->g_97 p_1700->g_83 p_1700->g_102 p_1700->g_74 p_1700->g_116 p_1700->g_127 p_1700->g_86 p_1700->g_166 p_1700->g_185 p_1700->g_203 p_1700->g_205 p_1700->g_207 p_1700->g_215 p_1700->g_236.f3 p_1700->g_239 p_1700->g_236.f2 p_1700->g_238 p_1700->g_285 p_1700->g_236.f5 p_1700->g_213 p_1700->g_236.f4 p_1700->g_234 p_1700->g_649 p_1700->g_236.f7 p_1700->g_236.f0 p_1700->g_262 p_1700->g_747 p_1700->g_236.f6 p_1700->g_847 p_1700->g_832 p_1700->g_958 p_1700->g_945.f0 p_1700->g_119 p_1700->g_963.f2 p_1700->g_945.f7 p_1700->g_963.f3 p_1700->g_881 p_1700->g_745 p_1700->g_1075 p_1700->g_1042.f4 p_1700->g_246 p_1700->g_1028.f2 p_1700->g_1027.f0 p_1700->g_1027.f5 p_1700->g_1107 p_1700->g_1042.f0 p_1700->g_1042.f6 p_1700->g_746 p_1700->g_848 p_1700->g_1042.f7
 * writes: p_1700->g_74 p_1700->g_76 p_1700->g_97 p_1700->g_102 p_1700->g_116 p_1700->g_119 p_1700->g_38 p_1700->g_127 p_1700->g_86 p_1700->g_166 p_1700->g_203 p_1700->g_83 p_1700->g_205 p_1700->g_213 p_1700->g_234 p_1700->g_238 p_1700->g_239 p_1700->g_246 p_1700->g_262 p_1700->g_285 p_1700->g_236.f5 p_1700->g_185 p_1700->g_236.f2 p_1700->g_236.f3 p_1700->g_747 p_1700->g_236.f0 p_1700->g_46 p_1700->g_832 p_1700->g_958 p_1700->g_881 p_1700->g_963.f3 p_1700->g_945.f7 p_1700->g_900 p_1700->g_1107 p_1700->g_1122 p_1700->g_1073.f3 p_1700->g_1042.f4
 */
uint16_t  func_41(uint32_t  p_42, int32_t * p_43, uint64_t  p_44, struct S2 * p_1700)
{ /* block id: 9 */
    int32_t *l_45 = &p_1700->g_46;
    uint32_t *l_73 = &p_1700->g_74;
    int32_t *l_577[6][3] = {{&p_1700->g_213[7],(void*)0,&p_1700->g_213[3]},{&p_1700->g_213[7],(void*)0,&p_1700->g_213[3]},{&p_1700->g_213[7],(void*)0,&p_1700->g_213[3]},{&p_1700->g_213[7],(void*)0,&p_1700->g_213[3]},{&p_1700->g_213[7],(void*)0,&p_1700->g_213[3]},{&p_1700->g_213[7],(void*)0,&p_1700->g_213[3]}};
    uint32_t l_578[10][6][4] = {{{4294967295UL,9UL,0x24C2F9FDL,0x6C4ADDD8L},{4294967295UL,9UL,0x24C2F9FDL,0x6C4ADDD8L},{4294967295UL,9UL,0x24C2F9FDL,0x6C4ADDD8L},{4294967295UL,9UL,0x24C2F9FDL,0x6C4ADDD8L},{4294967295UL,9UL,0x24C2F9FDL,0x6C4ADDD8L},{4294967295UL,9UL,0x24C2F9FDL,0x6C4ADDD8L}},{{4294967295UL,9UL,0x24C2F9FDL,0x6C4ADDD8L},{4294967295UL,9UL,0x24C2F9FDL,0x6C4ADDD8L},{4294967295UL,9UL,0x24C2F9FDL,0x6C4ADDD8L},{4294967295UL,9UL,0x24C2F9FDL,0x6C4ADDD8L},{4294967295UL,9UL,0x24C2F9FDL,0x6C4ADDD8L},{4294967295UL,9UL,0x24C2F9FDL,0x6C4ADDD8L}},{{4294967295UL,9UL,0x24C2F9FDL,0x6C4ADDD8L},{4294967295UL,9UL,0x24C2F9FDL,0x6C4ADDD8L},{4294967295UL,9UL,0x24C2F9FDL,0x6C4ADDD8L},{4294967295UL,9UL,0x24C2F9FDL,0x6C4ADDD8L},{4294967295UL,9UL,0x24C2F9FDL,0x6C4ADDD8L},{4294967295UL,9UL,0x24C2F9FDL,0x6C4ADDD8L}},{{4294967295UL,9UL,0x24C2F9FDL,0x6C4ADDD8L},{4294967295UL,9UL,0x24C2F9FDL,0x6C4ADDD8L},{4294967295UL,9UL,0x24C2F9FDL,0x6C4ADDD8L},{4294967295UL,9UL,0x24C2F9FDL,0x6C4ADDD8L},{4294967295UL,9UL,0x24C2F9FDL,0x6C4ADDD8L},{4294967295UL,9UL,0x24C2F9FDL,0x6C4ADDD8L}},{{4294967295UL,9UL,0x24C2F9FDL,0x6C4ADDD8L},{4294967295UL,9UL,0x24C2F9FDL,0x6C4ADDD8L},{4294967295UL,9UL,0x24C2F9FDL,0x6C4ADDD8L},{4294967295UL,9UL,0x24C2F9FDL,0x6C4ADDD8L},{4294967295UL,9UL,0x24C2F9FDL,0x6C4ADDD8L},{4294967295UL,9UL,0x24C2F9FDL,0x6C4ADDD8L}},{{4294967295UL,9UL,0x24C2F9FDL,0x6C4ADDD8L},{4294967295UL,9UL,0x24C2F9FDL,0x6C4ADDD8L},{4294967295UL,9UL,0x24C2F9FDL,0x6C4ADDD8L},{4294967295UL,9UL,0x24C2F9FDL,0x6C4ADDD8L},{4294967295UL,9UL,0x24C2F9FDL,0x6C4ADDD8L},{4294967295UL,9UL,0x24C2F9FDL,0x6C4ADDD8L}},{{4294967295UL,9UL,0x24C2F9FDL,0x6C4ADDD8L},{4294967295UL,9UL,0x24C2F9FDL,0x6C4ADDD8L},{4294967295UL,9UL,0x24C2F9FDL,0x6C4ADDD8L},{4294967295UL,9UL,0x24C2F9FDL,0x6C4ADDD8L},{4294967295UL,9UL,0x24C2F9FDL,0x6C4ADDD8L},{4294967295UL,9UL,0x24C2F9FDL,0x6C4ADDD8L}},{{4294967295UL,9UL,0x24C2F9FDL,0x6C4ADDD8L},{4294967295UL,9UL,0x24C2F9FDL,0x6C4ADDD8L},{4294967295UL,9UL,0x24C2F9FDL,0x6C4ADDD8L},{4294967295UL,9UL,0x24C2F9FDL,0x6C4ADDD8L},{4294967295UL,9UL,0x24C2F9FDL,0x6C4ADDD8L},{4294967295UL,9UL,0x24C2F9FDL,0x6C4ADDD8L}},{{4294967295UL,9UL,0x24C2F9FDL,0x6C4ADDD8L},{4294967295UL,9UL,0x24C2F9FDL,0x6C4ADDD8L},{4294967295UL,9UL,0x24C2F9FDL,0x6C4ADDD8L},{4294967295UL,9UL,0x24C2F9FDL,0x6C4ADDD8L},{4294967295UL,9UL,0x24C2F9FDL,0x6C4ADDD8L},{4294967295UL,9UL,0x24C2F9FDL,0x6C4ADDD8L}},{{4294967295UL,9UL,0x24C2F9FDL,0x6C4ADDD8L},{4294967295UL,9UL,0x24C2F9FDL,0x6C4ADDD8L},{4294967295UL,9UL,0x24C2F9FDL,0x6C4ADDD8L},{4294967295UL,9UL,0x24C2F9FDL,0x6C4ADDD8L},{4294967295UL,9UL,0x24C2F9FDL,0x6C4ADDD8L},{4294967295UL,9UL,0x24C2F9FDL,0x6C4ADDD8L}}};
    uint64_t l_802[10][2] = {{0xDBB37CBEB88FD8AEL,0x80B20CCB4A9F29D3L},{0xDBB37CBEB88FD8AEL,0x80B20CCB4A9F29D3L},{0xDBB37CBEB88FD8AEL,0x80B20CCB4A9F29D3L},{0xDBB37CBEB88FD8AEL,0x80B20CCB4A9F29D3L},{0xDBB37CBEB88FD8AEL,0x80B20CCB4A9F29D3L},{0xDBB37CBEB88FD8AEL,0x80B20CCB4A9F29D3L},{0xDBB37CBEB88FD8AEL,0x80B20CCB4A9F29D3L},{0xDBB37CBEB88FD8AEL,0x80B20CCB4A9F29D3L},{0xDBB37CBEB88FD8AEL,0x80B20CCB4A9F29D3L},{0xDBB37CBEB88FD8AEL,0x80B20CCB4A9F29D3L}};
    int32_t **l_809[5];
    int32_t *l_810 = &p_1700->g_215;
    uint32_t **l_811 = &l_73;
    uint32_t ***l_812 = &l_811;
    uint32_t ***l_813 = (void*)0;
    uint32_t **l_814[2][2];
    int32_t l_864 = 6L;
    uint32_t l_901 = 0xCDC016F8L;
    uint32_t l_921 = 0xB03B382CL;
    uint16_t **l_961[1][2][2];
    int8_t *l_982 = &p_1700->g_234[0][0];
    struct S1 *l_1072 = &p_1700->g_1073;
    struct S1 **l_1071[6] = {&l_1072,&l_1072,&l_1072,&l_1072,&l_1072,&l_1072};
    uint8_t l_1078 = 0x6CL;
    uint8_t l_1113 = 0x0AL;
    uint64_t l_1125[5] = {0x10468A0D4DC17A80L,0x10468A0D4DC17A80L,0x10468A0D4DC17A80L,0x10468A0D4DC17A80L,0x10468A0D4DC17A80L};
    int16_t l_1224[8][7] = {{0L,0x2AE5L,0L,0L,0x2AE5L,0L,0L},{0L,0x2AE5L,0L,0L,0x2AE5L,0L,0L},{0L,0x2AE5L,0L,0L,0x2AE5L,0L,0L},{0L,0x2AE5L,0L,0L,0x2AE5L,0L,0L},{0L,0x2AE5L,0L,0L,0x2AE5L,0L,0L},{0L,0x2AE5L,0L,0L,0x2AE5L,0L,0L},{0L,0x2AE5L,0L,0L,0x2AE5L,0L,0L},{0L,0x2AE5L,0L,0L,0x2AE5L,0L,0L}};
    int i, j, k;
    for (i = 0; i < 5; i++)
        l_809[i] = &p_1700->g_262[0];
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 2; j++)
            l_814[i][j] = &l_73;
    }
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 2; k++)
                l_961[i][j][k] = &p_1700->g_959;
        }
    }
    l_802[2][0] |= (((p_43 = (void*)0) == l_45) && ((((!((safe_mul_func_int8_t_s_s((((-1L) > (*l_45)) >= ((func_49(p_43, (l_578[5][3][1] = func_53(p_43, func_58((safe_rshift_func_uint8_t_u_u((p_44 , (*l_45)), 3)), func_66(func_69(((*l_73) = p_42), p_1700->g_46, l_73, p_1700), p_44, p_1700), l_73, &p_1700->g_46, p_1700->g_236.f2, p_1700), (*l_45), &p_1700->g_46, p_1700)), &p_1700->g_46, p_1700) != p_42) , p_44)), (-1L))) || (*l_45))) , p_44) > p_42) < p_42));
    (*l_45) = (safe_add_func_int8_t_s_s(((void*)0 == &p_43), (p_1700->g_213[7] & (p_42 & (safe_mod_func_int32_t_s_s((*p_1700->g_166), ((safe_mod_func_uint8_t_u_u(((((l_810 = p_43) == &p_1700->g_215) < ((((*l_812) = l_811) == (l_814[1][0] = &l_73)) >= 0UL)) , 0xC9L), (-7L))) , p_1700->g_38[1])))))));
    for (p_1700->g_205 = 0; (p_1700->g_205 <= 45); ++p_1700->g_205)
    { /* block id: 538 */
        int8_t *l_823 = &p_1700->g_234[2][0];
        int16_t *l_830 = &p_1700->g_185;
        int16_t *l_831 = &p_1700->g_832;
        int32_t l_835[3][10] = {{0x58DBA63CL,(-1L),0x3BBFCE94L,0x6D4A3FC6L,(-1L),0x6D4A3FC6L,0x3BBFCE94L,(-1L),0x58DBA63CL,0x58DBA63CL},{0x58DBA63CL,(-1L),0x3BBFCE94L,0x6D4A3FC6L,(-1L),0x6D4A3FC6L,0x3BBFCE94L,(-1L),0x58DBA63CL,0x58DBA63CL},{0x58DBA63CL,(-1L),0x3BBFCE94L,0x6D4A3FC6L,(-1L),0x6D4A3FC6L,0x3BBFCE94L,(-1L),0x58DBA63CL,0x58DBA63CL}};
        int16_t l_987 = 0x48C2L;
        int8_t l_1020 = 0x71L;
        int i, j;
        if ((safe_div_func_int16_t_s_s((safe_add_func_int32_t_s_s(((safe_add_func_int16_t_s_s(((((*l_823) = p_44) , ((((((safe_add_func_uint32_t_u_u((((safe_div_func_int16_t_s_s(p_1700->g_236.f5, (safe_add_func_int64_t_s_s(p_42, 0x343351D05A438872L)))) >= 1L) > (p_1700->g_236.f6 && (((*l_831) = ((*l_830) = p_42)) > (safe_lshift_func_uint8_t_u_u(p_1700->g_76[3], 6))))), (l_835[2][4] ^ p_1700->g_76[3]))) , p_1700->g_127) | (*p_1700->g_166)) ^ p_44) , p_1700->g_102) && p_1700->g_46)) ^ l_835[1][5]), GROUP_DIVERGE(1, 1))) < p_1700->g_116), 2L)), l_835[0][0])))
        { /* block id: 542 */
            int32_t *l_836 = &p_1700->g_215;
            l_836 = p_43;
        }
        else
        { /* block id: 544 */
            int32_t l_855 = 0x3B4E9A18L;
            int32_t l_856 = 0L;
            int32_t l_859 = 0x24A5328CL;
            int32_t l_861 = (-1L);
            int32_t l_867 = (-9L);
            int32_t l_868[3][8][7] = {{{0x72D638E4L,0x1D434297L,0x72D638E4L,0x72D638E4L,0x1D434297L,0x72D638E4L,0x72D638E4L},{0x72D638E4L,0x1D434297L,0x72D638E4L,0x72D638E4L,0x1D434297L,0x72D638E4L,0x72D638E4L},{0x72D638E4L,0x1D434297L,0x72D638E4L,0x72D638E4L,0x1D434297L,0x72D638E4L,0x72D638E4L},{0x72D638E4L,0x1D434297L,0x72D638E4L,0x72D638E4L,0x1D434297L,0x72D638E4L,0x72D638E4L},{0x72D638E4L,0x1D434297L,0x72D638E4L,0x72D638E4L,0x1D434297L,0x72D638E4L,0x72D638E4L},{0x72D638E4L,0x1D434297L,0x72D638E4L,0x72D638E4L,0x1D434297L,0x72D638E4L,0x72D638E4L},{0x72D638E4L,0x1D434297L,0x72D638E4L,0x72D638E4L,0x1D434297L,0x72D638E4L,0x72D638E4L},{0x72D638E4L,0x1D434297L,0x72D638E4L,0x72D638E4L,0x1D434297L,0x72D638E4L,0x72D638E4L}},{{0x72D638E4L,0x1D434297L,0x72D638E4L,0x72D638E4L,0x1D434297L,0x72D638E4L,0x72D638E4L},{0x72D638E4L,0x1D434297L,0x72D638E4L,0x72D638E4L,0x1D434297L,0x72D638E4L,0x72D638E4L},{0x72D638E4L,0x1D434297L,0x72D638E4L,0x72D638E4L,0x1D434297L,0x72D638E4L,0x72D638E4L},{0x72D638E4L,0x1D434297L,0x72D638E4L,0x72D638E4L,0x1D434297L,0x72D638E4L,0x72D638E4L},{0x72D638E4L,0x1D434297L,0x72D638E4L,0x72D638E4L,0x1D434297L,0x72D638E4L,0x72D638E4L},{0x72D638E4L,0x1D434297L,0x72D638E4L,0x72D638E4L,0x1D434297L,0x72D638E4L,0x72D638E4L},{0x72D638E4L,0x1D434297L,0x72D638E4L,0x72D638E4L,0x1D434297L,0x72D638E4L,0x72D638E4L},{0x72D638E4L,0x1D434297L,0x72D638E4L,0x72D638E4L,0x1D434297L,0x72D638E4L,0x72D638E4L}},{{0x72D638E4L,0x1D434297L,0x72D638E4L,0x72D638E4L,0x1D434297L,0x72D638E4L,0x72D638E4L},{0x72D638E4L,0x1D434297L,0x72D638E4L,0x72D638E4L,0x1D434297L,0x72D638E4L,0x72D638E4L},{0x72D638E4L,0x1D434297L,0x72D638E4L,0x72D638E4L,0x1D434297L,0x72D638E4L,0x72D638E4L},{0x72D638E4L,0x1D434297L,0x72D638E4L,0x72D638E4L,0x1D434297L,0x72D638E4L,0x72D638E4L},{0x72D638E4L,0x1D434297L,0x72D638E4L,0x72D638E4L,0x1D434297L,0x72D638E4L,0x72D638E4L},{0x72D638E4L,0x1D434297L,0x72D638E4L,0x72D638E4L,0x1D434297L,0x72D638E4L,0x72D638E4L},{0x72D638E4L,0x1D434297L,0x72D638E4L,0x72D638E4L,0x1D434297L,0x72D638E4L,0x72D638E4L},{0x72D638E4L,0x1D434297L,0x72D638E4L,0x72D638E4L,0x1D434297L,0x72D638E4L,0x72D638E4L}}};
            int i, j, k;
            for (p_1700->g_127 = 0; (p_1700->g_127 <= 2); p_1700->g_127 += 1)
            { /* block id: 547 */
                uint32_t ***l_849 = &l_814[1][0];
                struct S0 **l_854[3][2];
                int32_t l_869 = 1L;
                int32_t l_871 = 0L;
                int32_t l_874 = 0x666D72F6L;
                int i, j;
                for (i = 0; i < 3; i++)
                {
                    for (j = 0; j < 2; j++)
                        l_854[i][j] = &p_1700->g_207;
                }
                l_856 |= ((safe_div_func_int32_t_s_s((safe_add_func_int16_t_s_s(l_835[p_1700->g_127][(p_1700->g_127 + 2)], (safe_mul_func_uint16_t_u_u(((((safe_sub_func_int8_t_s_s((safe_sub_func_uint64_t_u_u(1UL, 0x303945E94C0E257EL)), (p_1700->g_38[p_1700->g_127] || (((((&l_814[1][0] == (l_849 = p_1700->g_847)) <= (((((((safe_rshift_func_uint8_t_u_u((((p_1700->g_38[p_1700->g_127] || ((p_1700->g_38[p_1700->g_127] , l_854[1][0]) == (void*)0)) || 0x63L) >= 0L), FAKE_DIVERGE(p_1700->local_2_offset, get_local_id(2), 10))) & 1UL) ^ GROUP_DIVERGE(0, 1)) , 0x52L) > 4L) != 0x5BL) == p_1700->g_102)) ^ l_855) <= l_835[2][4]) >= p_42)))) , p_44) , p_1700->g_239) || p_44), l_855)))), p_44)) && 0x06L);
            }
        }
        for (p_1700->g_203 = 0; (p_1700->g_203 <= 1); p_1700->g_203 += 1)
        { /* block id: 580 */
            int64_t l_915[4] = {0x4BD66D0E64448438L,0x4BD66D0E64448438L,0x4BD66D0E64448438L,0x4BD66D0E64448438L};
            uint16_t **l_918 = (void*)0;
            int32_t l_931[8] = {(-1L),0L,(-1L),(-1L),0L,(-1L),(-1L),0L};
            uint64_t l_1021 = 18446744073709551610UL;
            int i;
            for (p_1700->g_127 = 0; (p_1700->g_127 <= 1); p_1700->g_127 += 1)
            { /* block id: 583 */
                uint32_t **l_910 = &l_73;
                int32_t l_919 = 6L;
                int32_t l_920 = 0x2168EB05L;
                uint64_t l_990 = 0xE1C809F9CE966F01L;
                uint16_t ***l_1009 = &l_918;
                int32_t l_1016 = 1L;
                int32_t l_1017 = 0x6D091070L;
                int32_t l_1018 = 0L;
                int32_t l_1019[7][5] = {{0x3AC94599L,6L,(-1L),0x778369B3L,6L},{0x3AC94599L,6L,(-1L),0x778369B3L,6L},{0x3AC94599L,6L,(-1L),0x778369B3L,6L},{0x3AC94599L,6L,(-1L),0x778369B3L,6L},{0x3AC94599L,6L,(-1L),0x778369B3L,6L},{0x3AC94599L,6L,(-1L),0x778369B3L,6L},{0x3AC94599L,6L,(-1L),0x778369B3L,6L}};
                int i, j;
                (*p_1700->g_166) = ((*l_45) = (((safe_lshift_func_int8_t_s_s((safe_add_func_uint8_t_u_u(((~(safe_mod_func_int16_t_s_s((((l_814[p_1700->g_203][p_1700->g_203] = (void*)0) == ((*l_812) = l_910)) , ((*l_830) = p_42)), (safe_add_func_uint32_t_u_u(((safe_lshift_func_int8_t_s_u(l_915[1], 7)) != (safe_mod_func_uint64_t_u_u(((void*)0 == l_918), p_42))), (p_1700->g_747 > 0x532713F05F089FB1L)))))) , GROUP_DIVERGE(0, 1)), p_1700->g_213[7])), p_1700->g_832)) >= 0xECBDC93C07852BA2L) != p_44));
                l_921++;
                for (p_1700->g_285 = 0; (p_1700->g_285 != 12); p_1700->g_285 = safe_add_func_int64_t_s_s(p_1700->g_285, 4))
                { /* block id: 592 */
                    int32_t *l_929 = (void*)0;
                    int32_t *l_930[3];
                    struct S0 *l_944 = &p_1700->g_945[9];
                    struct S0 **l_949 = &p_1700->g_207;
                    struct S0 ***l_948 = &l_949;
                    struct S0 **l_951 = &p_1700->g_207;
                    struct S0 ***l_950 = &l_951;
                    int32_t l_971 = (-10L);
                    int32_t l_989[6][4];
                    int32_t l_1013[4][1][1];
                    int i, j, k;
                    for (i = 0; i < 3; i++)
                        l_930[i] = &p_1700->g_746;
                    for (i = 0; i < 6; i++)
                    {
                        for (j = 0; j < 4; j++)
                            l_989[i][j] = (-5L);
                    }
                    for (i = 0; i < 4; i++)
                    {
                        for (j = 0; j < 1; j++)
                        {
                            for (k = 0; k < 1; k++)
                                l_1013[i][j][k] = (-1L);
                        }
                    }
                    (*l_45) = ((safe_unary_minus_func_int8_t_s((&p_1700->g_207 != ((*l_950) = ((*l_948) = ((((safe_sub_func_int16_t_s_s((~((l_931[3] = p_42) , ((*l_831) = (safe_mul_func_uint8_t_u_u(8UL, ((*p_1700->g_166) >= ((p_1700->g_234[2][0] = p_1700->g_236.f4) ^ (safe_rshift_func_int16_t_s_u((safe_mod_func_uint64_t_u_u(FAKE_DIVERGE(p_1700->local_2_offset, get_local_id(2), 10), p_44)), 4))))))))), (((+(safe_lshift_func_uint16_t_u_s((safe_rshift_func_uint16_t_u_u((safe_sub_func_int8_t_s_s(((l_835[2][4] = ((l_944 = l_944) == p_1700->g_207)) != (safe_mod_func_uint64_t_u_u(p_1700->g_236.f0, p_1700->g_38[1]))), p_42)), 7)), 3))) > 0x68644DEDCBE45D2EL) != 0x4267L))) , (-1L)) & l_915[1]) , (void*)0)))))) != GROUP_DIVERGE(0, 1));
                    for (p_42 = 0; (p_42 <= 36); p_42++)
                    { /* block id: 603 */
                        uint16_t ***l_960[5][3] = {{&l_918,&l_918,&l_918},{&l_918,&l_918,&l_918},{&l_918,&l_918,&l_918},{&l_918,&l_918,&l_918},{&l_918,&l_918,&l_918}};
                        struct S1 *l_962[1];
                        struct S1 **l_964 = &l_962[0];
                        uint8_t *l_967 = (void*)0;
                        uint8_t *l_968 = (void*)0;
                        uint8_t *l_969 = (void*)0;
                        uint8_t *l_970 = &p_1700->g_747;
                        int i, j;
                        for (i = 0; i < 1; i++)
                            l_962[i] = &p_1700->g_963;
                        (*l_964) = ((safe_div_func_int32_t_s_s((safe_sub_func_uint64_t_u_u(((p_1700->g_958 = p_1700->g_958) == (l_961[0][1][0] = &p_1700->g_959)), 0UL)), ((*l_45) &= l_931[6]))) , l_962[0]);
                        (*p_1700->g_166) = (safe_mul_func_uint8_t_u_u(((*l_970) = p_42), p_1700->g_945[9].f0));
                        if ((*p_1700->g_166))
                            continue;
                    }
                    for (l_901 = 1; (l_901 <= 7); l_901 += 1)
                    { /* block id: 614 */
                        int32_t l_988[6][1];
                        int i, j;
                        for (i = 0; i < 6; i++)
                        {
                            for (j = 0; j < 1; j++)
                                l_988[i][j] = 0x6AF8EBFBL;
                        }
                        l_971 ^= 1L;
                        (*p_1700->g_166) ^= ((safe_sub_func_int32_t_s_s((safe_mod_func_int32_t_s_s((l_931[l_901] < (safe_add_func_int8_t_s_s((((safe_div_func_int16_t_s_s((safe_mul_func_uint16_t_u_u(((l_919 & ((((void*)0 != l_982) && ((*l_823) = (safe_sub_func_int32_t_s_s(l_915[1], p_44)))) | (l_915[2] , (safe_mod_func_uint16_t_u_u(p_1700->g_127, (l_971 && 0x43E16117L)))))) != FAKE_DIVERGE(p_1700->group_0_offset, get_group_id(0), 10)), 0x6589L)), p_42)) | p_44) && 0x93E6L), p_44))), 0x72012AE7L)), 0x414AB602L)) || p_44);
                        p_1700->g_262[1] = func_66(l_915[1], p_44, p_1700);
                        l_990++;
                    }
                    for (p_1700->g_119 = 0; (p_1700->g_119 <= 0); p_1700->g_119 += 1)
                    { /* block id: 623 */
                        uint8_t *l_993 = &p_1700->g_747;
                        int64_t *l_1002 = &p_1700->g_239;
                        int32_t l_1012 = (-1L);
                        int32_t l_1014[2][9];
                        int8_t l_1015 = (-2L);
                        int i, j;
                        for (i = 0; i < 2; i++)
                        {
                            for (j = 0; j < 9; j++)
                                l_1014[i][j] = 0x46E0EBC1L;
                        }
                        if (l_990)
                            break;
                        (*p_1700->g_166) = ((((*l_993)++) < ((p_1700->g_234[(p_1700->g_203 + 2)][p_1700->g_119] = (safe_lshift_func_int8_t_s_s(p_44, (safe_mul_func_int16_t_s_s((safe_mod_func_int64_t_s_s((((*l_1002) &= 0x60D8A6E881E81EFEL) != p_1700->g_234[1][0]), GROUP_DIVERGE(1, 1))), (safe_mod_func_uint64_t_u_u((!(safe_sub_func_uint16_t_u_u((safe_rshift_func_int16_t_s_u(p_1700->g_963.f2, (((l_1009 != (void*)0) < (safe_sub_func_uint16_t_u_u((l_989[0][0] = p_42), (l_987 < (*p_1700->g_166))))) ^ p_1700->g_76[0]))), 0x1399L))), p_1700->g_116))))))) & p_42)) != p_1700->g_945[9].f7);
                        --l_1021;
                    }
                }
            }
        }
        p_43 = (void*)0;
    }
    for (p_1700->g_832 = 0; (p_1700->g_832 > 11); p_1700->g_832 = safe_add_func_int32_t_s_s(p_1700->g_832, 1))
    { /* block id: 639 */
        struct S0 *l_1026[4] = {&p_1700->g_1027,&p_1700->g_1027,&p_1700->g_1027,&p_1700->g_1027};
        int32_t l_1053 = 4L;
        uint32_t l_1082[8] = {6UL,6UL,6UL,6UL,6UL,6UL,6UL,6UL};
        int32_t l_1111[7][2][1] = {{{0x0770840AL},{0x0770840AL}},{{0x0770840AL},{0x0770840AL}},{{0x0770840AL},{0x0770840AL}},{{0x0770840AL},{0x0770840AL}},{{0x0770840AL},{0x0770840AL}},{{0x0770840AL},{0x0770840AL}},{{0x0770840AL},{0x0770840AL}}};
        int8_t l_1112[6] = {0L,0x77L,0L,0L,0x77L,0L};
        int16_t *l_1219 = (void*)0;
        int i, j, k;
        l_1026[1] = p_1700->g_207;
        for (p_1700->g_881 = 0; (p_1700->g_881 <= 2); p_1700->g_881 += 1)
        { /* block id: 643 */
            struct S0 *l_1040 = (void*)0;
            int32_t l_1054[7];
            int64_t l_1110 = 9L;
            struct S1 **l_1136 = &l_1072;
            int i;
            for (i = 0; i < 7; i++)
                l_1054[i] = 1L;
            for (p_1700->g_963.f3 = 0; (p_1700->g_963.f3 <= 1); p_1700->g_963.f3 += 1)
            { /* block id: 646 */
                int64_t l_1055 = 1L;
                int i;
                (*p_1700->g_166) = p_1700->g_38[(p_1700->g_963.f3 + 1)];
                for (p_1700->g_285 = 0; (p_1700->g_285 <= 2); p_1700->g_285 += 1)
                { /* block id: 650 */
                    struct S0 *l_1041 = &p_1700->g_1042;
                    int16_t *l_1060 = &p_1700->g_900;
                    struct S1 *l_1069 = &p_1700->g_1070;
                    struct S1 **l_1068[10] = {&l_1069,&l_1069,&l_1069,&l_1069,&l_1069,&l_1069,&l_1069,&l_1069,&l_1069,&l_1069};
                    int32_t l_1081 = 0x435ED430L;
                    uint32_t *l_1106 = &p_1700->g_1107;
                    int32_t l_1108 = 1L;
                    uint8_t *l_1109 = &l_1078;
                    int i, j;
                    if ((atomic_inc(&p_1700->l_atomic_input[6]) == 4))
                    { /* block id: 652 */
                        uint64_t l_1029[10] = {8UL,8UL,8UL,8UL,8UL,8UL,8UL,8UL,8UL,8UL};
                        uint16_t l_1030 = 1UL;
                        int i;
                        l_1030 ^= (l_1029[8] |= 0x297FB619L);
                        unsigned int result = 0;
                        int l_1029_i0;
                        for (l_1029_i0 = 0; l_1029_i0 < 10; l_1029_i0++) {
                            result += l_1029[l_1029_i0];
                        }
                        result += l_1030;
                        atomic_add(&p_1700->l_special_values[6], result);
                    }
                    else
                    { /* block id: 655 */
                        (1 + 1);
                    }
                    if ((atomic_inc(&p_1700->l_atomic_input[13]) == 5))
                    { /* block id: 659 */
                        int32_t l_1032 = 0x7BFEE642L;
                        int32_t *l_1031 = &l_1032;
                        int32_t *l_1033 = &l_1032;
                        int8_t l_1034 = 1L;
                        uint32_t l_1035 = 3UL;
                        int16_t l_1036[9][10] = {{0x6EA5L,0x732AL,(-1L),0x2100L,(-1L),0x732AL,0x6EA5L,0x7616L,(-1L),(-1L)},{0x6EA5L,0x732AL,(-1L),0x2100L,(-1L),0x732AL,0x6EA5L,0x7616L,(-1L),(-1L)},{0x6EA5L,0x732AL,(-1L),0x2100L,(-1L),0x732AL,0x6EA5L,0x7616L,(-1L),(-1L)},{0x6EA5L,0x732AL,(-1L),0x2100L,(-1L),0x732AL,0x6EA5L,0x7616L,(-1L),(-1L)},{0x6EA5L,0x732AL,(-1L),0x2100L,(-1L),0x732AL,0x6EA5L,0x7616L,(-1L),(-1L)},{0x6EA5L,0x732AL,(-1L),0x2100L,(-1L),0x732AL,0x6EA5L,0x7616L,(-1L),(-1L)},{0x6EA5L,0x732AL,(-1L),0x2100L,(-1L),0x732AL,0x6EA5L,0x7616L,(-1L),(-1L)},{0x6EA5L,0x732AL,(-1L),0x2100L,(-1L),0x732AL,0x6EA5L,0x7616L,(-1L),(-1L)},{0x6EA5L,0x732AL,(-1L),0x2100L,(-1L),0x732AL,0x6EA5L,0x7616L,(-1L),(-1L)}};
                        int32_t *l_1037 = &l_1032;
                        int i, j;
                        l_1033 = l_1031;
                        l_1035 &= (l_1034 = p_1700->g_38[p_1700->g_285]);
                        l_1036[2][3] |= l_802[(p_1700->g_881 + 2)][p_1700->g_963.f3];
                        l_1037 = (void*)0;
                        unsigned int result = 0;
                        result += l_1032;
                        result += l_1034;
                        result += l_1035;
                        int l_1036_i0, l_1036_i1;
                        for (l_1036_i0 = 0; l_1036_i0 < 9; l_1036_i0++) {
                            for (l_1036_i1 = 0; l_1036_i1 < 10; l_1036_i1++) {
                                result += l_1036[l_1036_i0][l_1036_i1];
                            }
                        }
                        atomic_add(&p_1700->l_special_values[13], result);
                    }
                    else
                    { /* block id: 665 */
                        (1 + 1);
                    }
                    if ((((safe_mod_func_int32_t_s_s((((((l_1040 == l_1041) != (l_802[(p_1700->g_881 + 3)][p_1700->g_963.f3] = (0x37FC12839B5F9D87L && ((safe_rshift_func_int8_t_s_s(p_1700->g_236.f4, 4)) <= (p_1700->g_945[9].f7 |= (--p_1700->g_38[p_1700->g_881])))))) && (safe_rshift_func_uint16_t_u_s((safe_mul_func_int16_t_s_s(l_1053, l_1054[0])), 5))) ^ l_1055) != l_1054[0]), (((*l_1060) = (safe_div_func_int32_t_s_s(((safe_mod_func_uint32_t_u_u(p_1700->g_83[4][5][1], GROUP_DIVERGE(0, 1))) == p_1700->g_116), 3UL))) && GROUP_DIVERGE(2, 1)))) | 0UL) | p_1700->g_745[0]))
                    { /* block id: 672 */
                        uint32_t l_1061 = 4294967286UL;
                        if ((*p_1700->g_166))
                            break;
                        p_1700->g_166 = &p_1700->g_76[1];
                        l_1061 = l_1053;
                    }
                    else
                    { /* block id: 676 */
                        struct S1 ***l_1074 = &l_1071[3];
                        (*p_1700->g_166) &= ((safe_add_func_int64_t_s_s(0x4F8326438D7399D4L, ((0x0BL == (safe_lshift_func_int8_t_s_u(p_1700->g_213[3], 7))) && ((safe_lshift_func_uint8_t_u_s((l_1068[5] != ((*l_1074) = l_1071[3])), p_1700->g_1075[1][2])) > ((p_1700->g_1042.f4 == (safe_sub_func_int64_t_s_s((((p_44 & ((-6L) > l_1078)) > l_1054[2]) > l_1053), 1L))) ^ 0L))))) ^ p_42);
                    }
                    p_43 = func_66((p_1700->g_246 |= (safe_sub_func_uint16_t_u_u(p_42, l_1081))), (l_1082[1] , (((+(((((*l_1109) = (((safe_mul_func_uint16_t_u_u((l_1108 = ((safe_div_func_uint64_t_u_u(p_1700->g_1028[5][3].f2, (safe_lshift_func_int16_t_s_u((p_1700->g_1027.f0 != p_1700->g_38[(p_1700->g_963.f3 + 1)]), (safe_mod_func_int64_t_s_s((((*l_1060) = p_1700->g_1027.f5) == (safe_rshift_func_int16_t_s_u((safe_sub_func_int16_t_s_s((safe_unary_minus_func_uint8_t_u(((((safe_rshift_func_int8_t_s_s((safe_sub_func_uint64_t_u_u((p_1700->g_38[p_1700->g_881] < (safe_sub_func_uint64_t_u_u((((((((*l_1106) |= (safe_sub_func_uint8_t_u_u((safe_rshift_func_uint16_t_u_s(l_1082[1], p_44)), 0x2EL))) , 0xA37F7020L) & 1L) , (void*)0) == &l_1072) >= GROUP_DIVERGE(2, 1)), 18446744073709551608UL))), l_1055)), 0)) , l_1055) , p_1700->g_1042.f0) , p_1700->g_1107))), GROUP_DIVERGE(0, 1))), 2))), FAKE_DIVERGE(p_1700->group_1_offset, get_group_id(1), 10))))))) ^ l_1081)), l_1054[6])) ^ l_1081) , p_1700->g_745[0])) || p_1700->g_881) >= 0UL) && 0x34F7DD80L)) , p_1700->g_1042.f6) , l_1055)), p_1700);
                }
            }
            l_1113--;
            for (p_1700->g_185 = 2; (p_1700->g_185 >= 0); p_1700->g_185 -= 1)
            { /* block id: 691 */
                int32_t *l_1143 = &p_1700->g_76[3];
                int8_t *l_1171 = &p_1700->g_238;
                int i;
                (*p_1700->g_166) = ((*l_45) = 0x5F549568L);
                if (((safe_add_func_uint8_t_u_u(((((p_43 = func_58((safe_mod_func_int32_t_s_s(((*l_45) = (+(safe_lshift_func_int16_t_s_u(0x66B6L, (p_1700->g_38[p_1700->g_881] && (0x42E8590FL && ((p_1700->g_38[p_1700->g_881] || ((p_1700->g_1122[0][4][0] = &p_1700->g_900) == &p_1700->g_185)) >= (((((p_1700->g_236.f4 > ((18446744073709551615UL <= ((safe_div_func_uint32_t_u_u(l_1082[1], 0x36FDC1F7L)) <= p_42)) | l_1110)) || 18446744073709551615UL) >= p_42) || 9L) ^ l_1125[3])))))))), (*p_1700->g_166))), &l_1054[0], p_43, &p_1700->g_213[7], p_42, p_1700)) == &p_1700->g_215) != 0L) , GROUP_DIVERGE(1, 1)), p_42)) == GROUP_DIVERGE(2, 1)))
                { /* block id: 697 */
                    struct S1 **l_1138[1][1];
                    int i, j;
                    for (i = 0; i < 1; i++)
                    {
                        for (j = 0; j < 1; j++)
                            l_1138[i][j] = &l_1072;
                    }
                    for (p_1700->g_205 = 0; (p_1700->g_205 <= 0); p_1700->g_205 += 1)
                    { /* block id: 700 */
                        struct S1 ***l_1137[10] = {&l_1136,(void*)0,&l_1071[1],(void*)0,&l_1136,&l_1136,(void*)0,&l_1071[1],(void*)0,&l_1136};
                        uint16_t l_1139 = 0xBB49L;
                        int8_t *l_1140 = &l_1112[0];
                        uint64_t *l_1141 = &p_1700->g_119;
                        uint8_t *l_1142 = &l_1113;
                        uint32_t **l_1156 = &l_73;
                        int16_t *l_1157 = &p_1700->g_963.f3;
                        int16_t *l_1158 = (void*)0;
                        int16_t *l_1159 = &p_1700->g_1073.f3;
                        int8_t **l_1172[4];
                        int i, j, k;
                        for (i = 0; i < 4; i++)
                            l_1172[i] = &l_1171;
                        l_1111[(p_1700->g_205 + 4)][p_1700->g_205][p_1700->g_205] = (safe_mod_func_int64_t_s_s(((((((p_1700->g_234[p_1700->g_881][p_1700->g_205] != (safe_mod_func_int8_t_s_s(l_802[(p_1700->g_185 + 3)][p_1700->g_205], (safe_sub_func_int8_t_s_s(p_42, ((*l_1142) = (safe_rshift_func_uint8_t_u_u((((safe_lshift_func_uint16_t_u_u(p_1700->g_234[p_1700->g_881][p_1700->g_205], (((l_1071[5] = l_1136) == l_1138[0][0]) ^ (((((*l_1141) = (l_1139 <= (((*l_1140) |= ((&p_1700->g_119 == (void*)0) ^ l_1053)) & p_1700->g_1107))) , p_44) == FAKE_DIVERGE(p_1700->group_2_offset, get_group_id(2), 10)) , p_44)))) , l_1110) ^ p_42), 1)))))))) <= l_802[(p_1700->g_881 + 4)][p_1700->g_205]) != FAKE_DIVERGE(p_1700->group_1_offset, get_group_id(1), 10)) & 0x8EL) < 0x6247FD8DL) ^ FAKE_DIVERGE(p_1700->group_1_offset, get_group_id(1), 10)), p_1700->g_38[p_1700->g_881]));
                        p_43 = l_1143;
                        if ((*l_45))
                            break;
                        p_1700->g_262[1] = func_66(((0L <= (safe_add_func_int32_t_s_s((safe_rshift_func_uint8_t_u_s(((safe_lshift_func_int16_t_s_s(((safe_mul_func_int16_t_s_s(p_42, ((*l_1159) = ((*l_1157) &= (safe_sub_func_int64_t_s_s(p_1700->g_746, (((FAKE_DIVERGE(p_1700->global_0_offset, get_global_id(0), 10) < (l_1054[2] = GROUP_DIVERGE(0, 1))) , (*p_1700->g_847)) != ((FAKE_DIVERGE(p_1700->global_0_offset, get_global_id(0), 10) < ((*l_982) = (safe_lshift_func_int8_t_s_u(0x1BL, 0)))) , ((*l_812) = l_1156))))))))) > (safe_mod_func_int64_t_s_s((p_1700->g_83[5][1][1] ^= ((--p_1700->g_1042.f4) | ((safe_mod_func_uint16_t_u_u(((+((*l_45) , (safe_div_func_uint32_t_u_u((((((*p_43) = (l_1111[(p_1700->g_185 + 2)][(p_1700->g_205 + 1)][p_1700->g_205] |= (((safe_mul_func_int16_t_s_s(p_44, ((((safe_unary_minus_func_int32_t_s(((l_1171 = l_1171) == &l_1112[5]))) , GROUP_DIVERGE(1, 1)) == 0x0BL) , 0xB801L))) ^ 0x694BE8FB38DFC771L) > l_1082[3]))) < GROUP_DIVERGE(0, 1)) , &l_1143) == &p_1700->g_262[1]), 4294967295UL)))) ^ p_1700->g_1042.f0), p_44)) , 0x6A2C96E562BDB73BL))), 7L))), 14)) != p_44), p_1700->g_1042.f7)), 7L))) || p_44), p_44, p_1700);
                    }
                }
                else
                { /* block id: 720 */
                    return p_42;
                }
                if ((atomic_inc(&p_1700->g_atomic_input[25 * get_linear_group_id() + 0]) == 3))
                { /* block id: 724 */
                    int32_t l_1173 = (-6L);
                    for (l_1173 = 0; (l_1173 <= 2); l_1173 += 1)
                    { /* block id: 727 */
                        uint16_t l_1174[6] = {0xFD00L,0xFD00L,0xFD00L,0xFD00L,0xFD00L,0xFD00L};
                        uint16_t l_1177 = 0x748CL;
                        int32_t l_1178 = 0x2FB92C46L;
                        uint32_t l_1179[8] = {0x2A500515L,0UL,0x2A500515L,0x2A500515L,0UL,0x2A500515L,0x2A500515L,0UL};
                        int16_t l_1180 = 0x0A9EL;
                        uint32_t l_1181 = 8UL;
                        int32_t *l_1182 = &l_1178;
                        int32_t *l_1183 = &l_1178;
                        int32_t *l_1184 = &l_1178;
                        int16_t l_1185 = 0x6138L;
                        uint32_t l_1186 = 0xA77DAFF3L;
                        int i;
                        --l_1174[5];
                        l_1184 = (l_1183 = ((l_1177 = 0x5424E61A7ED5AC15L) , (((l_1181 &= (l_1180 = (l_1179[6] = l_1178))) , FAKE_DIVERGE(p_1700->group_0_offset, get_group_id(0), 10)) , l_1182)));
                        l_1186--;
                    }
                    unsigned int result = 0;
                    result += l_1173;
                    atomic_add(&p_1700->g_special_values[25 * get_linear_group_id() + 0], result);
                }
                else
                { /* block id: 737 */
                    (1 + 1);
                }
                p_1700->g_262[1] = (void*)0;
            }
            for (p_1700->g_285 = 0; (p_1700->g_285 <= 0); p_1700->g_285 += 1)
            { /* block id: 744 */
                uint8_t *l_1218 = &l_1078;
                int64_t *l_1220[9][9][3] = {{{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]},{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]},{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]},{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]},{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]},{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]},{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]},{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]},{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]}},{{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]},{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]},{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]},{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]},{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]},{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]},{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]},{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]},{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]}},{{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]},{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]},{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]},{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]},{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]},{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]},{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]},{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]},{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]}},{{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]},{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]},{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]},{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]},{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]},{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]},{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]},{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]},{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]}},{{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]},{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]},{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]},{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]},{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]},{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]},{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]},{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]},{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]}},{{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]},{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]},{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]},{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]},{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]},{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]},{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]},{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]},{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]}},{{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]},{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]},{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]},{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]},{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]},{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]},{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]},{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]},{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]}},{{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]},{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]},{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]},{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]},{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]},{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]},{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]},{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]},{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]}},{{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]},{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]},{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]},{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]},{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]},{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]},{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]},{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]},{&p_1700->g_83[5][1][1],&p_1700->g_239,&p_1700->g_745[0]}}};
                int32_t l_1221 = (-7L);
                int i, j, k;
                if ((atomic_inc(&p_1700->g_atomic_input[25 * get_linear_group_id() + 4]) == 2))
                { /* block id: 746 */
                    int i, j;
                    if (p_1700->g_234[p_1700->g_881][p_1700->g_285])
                    { /* block id: 747 */
                        uint32_t l_1189 = 1UL;
                        int32_t l_1192 = 0x0F5F6110L;
                        int32_t l_1193 = 0x294B462DL;
                        uint32_t l_1194 = 0xB7B0EFAFL;
                        int8_t l_1197 = 0x33L;
                        uint8_t l_1198 = 1UL;
                        int i, j;
                        l_1189--;
                        l_1194--;
                        l_1197 = (p_1700->g_38[p_1700->g_881] , l_802[(p_1700->g_285 + 4)][(p_1700->g_285 + 1)]);
                        --l_1198;
                    }
                    else
                    { /* block id: 752 */
                        uint32_t l_1201 = 0xA5D7F02CL;
                        int8_t l_1202 = 1L;
                        int16_t l_1203 = 0x3314L;
                        int32_t l_1204 = 0x309DB0CDL;
                        struct S1 *l_1205 = (void*)0;
                        struct S1 l_1207 = {0x1DB3L,-6L,-1L,1L,0x7327L,7UL,4294967295UL};/* VOLATILE GLOBAL l_1207 */
                        struct S1 *l_1206 = &l_1207;
                        l_1202 = l_1201;
                        l_1204 = l_1203;
                        l_1206 = (l_1205 = (void*)0);
                    }
                    unsigned int result = 0;
                    atomic_add(&p_1700->g_special_values[25 * get_linear_group_id() + 4], result);
                }
                else
                { /* block id: 758 */
                    (1 + 1);
                }
                l_1111[1][0][0] = ((*l_45) &= ((safe_add_func_int32_t_s_s((p_1700->g_832 ^ (p_1700->g_38[p_1700->g_285]--)), ((safe_add_func_uint32_t_u_u(GROUP_DIVERGE(1, 1), (p_42 == (safe_lshift_func_int8_t_s_u(p_1700->g_83[4][2][0], 6))))) != ((GROUP_DIVERGE(1, 1) , (-1L)) || (((void*)0 != &p_1700->g_262[1]) | (l_1110 <= ((l_1221 = ((safe_sub_func_int32_t_s_s((((((p_44 ^ ((*l_1218) = 7UL)) , p_1700->g_285) == 0x72AD9939L) , l_1219) == (void*)0), (-1L))) ^ l_1112[5])) || p_1700->g_215))))))) == 1L));
                l_1053 = (safe_lshift_func_uint8_t_u_s(FAKE_DIVERGE(p_1700->local_1_offset, get_local_id(1), 10), 3));
            }
        }
        if (l_1224[5][0])
            continue;
    }
    return p_44;
}


/* ------------------------------------------ */
/* 
 * reads : p_1700->g_185 p_1700->g_83 p_1700->g_236.f3 p_1700->g_127 p_1700->g_76 p_1700->g_102 p_1700->g_236.f2 p_1700->g_213 p_1700->g_236.f4 p_1700->g_205 p_1700->g_86 p_1700->g_166 p_1700->g_74 p_1700->g_234 p_1700->g_215 p_1700->g_38 p_1700->g_203 p_1700->g_239 p_1700->g_236.f5 p_1700->g_649 p_1700->g_285 p_1700->g_236.f7 p_1700->g_46 p_1700->g_207 p_1700->g_236.f0 p_1700->g_262 p_1700->g_747 p_1700->g_97 p_1700->g_236.f6
 * writes: p_1700->g_185 p_1700->g_102 p_1700->g_236.f2 p_1700->g_213 p_1700->g_127 p_1700->g_236.f3 p_1700->g_205 p_1700->g_119 p_1700->g_74 p_1700->g_76 p_1700->g_234 p_1700->g_238 p_1700->g_239 p_1700->g_262 p_1700->g_203 p_1700->g_236.f5 p_1700->g_747 p_1700->g_236.f0 p_1700->g_83
 */
int16_t  func_49(int32_t * p_50, int32_t  p_51, int32_t * p_52, struct S2 * p_1700)
{ /* block id: 403 */
    uint32_t l_579 = 0xF3A21F84L;
    uint32_t l_604 = 0xB21617B9L;
    int32_t l_605 = (-1L);
    int32_t l_609 = 0x6E5E368EL;
    int32_t l_712 = (-1L);
    int32_t l_718[5];
    int32_t l_720[6] = {0x21A74FFDL,(-1L),0x21A74FFDL,0x21A74FFDL,(-1L),0x21A74FFDL};
    struct S0 **l_776 = &p_1700->g_207;
    int i;
    for (i = 0; i < 5; i++)
        l_718[i] = 3L;
    ++l_579;
    for (p_1700->g_185 = (-20); (p_1700->g_185 != (-25)); p_1700->g_185 = safe_sub_func_int8_t_s_s(p_1700->g_185, 3))
    { /* block id: 407 */
        int64_t l_606 = 0x741DDB16BD115495L;
        int64_t *l_607[6];
        int32_t l_608 = (-7L);
        int i;
        for (i = 0; i < 6; i++)
            l_607[i] = &p_1700->g_239;
        l_609 &= (safe_add_func_uint8_t_u_u(((-3L) >= (safe_mul_func_uint8_t_u_u((((safe_mod_func_int16_t_s_s((safe_add_func_int16_t_s_s(((((safe_sub_func_int64_t_s_s(((0x3D40AA14D8C8415AL || (l_608 = (p_1700->g_83[5][1][1] , (safe_rshift_func_uint8_t_u_s((((p_1700->g_236.f3 >= p_1700->g_127) < (safe_lshift_func_uint16_t_u_s(FAKE_DIVERGE(p_1700->local_2_offset, get_local_id(2), 10), (safe_mul_func_int16_t_s_s(p_51, (safe_add_func_int32_t_s_s((p_51 , (p_1700->g_236.f3 == (l_605 = (safe_add_func_int16_t_s_s(p_1700->g_76[3], l_604))))), l_606))))))) >= p_51), 1))))) == p_1700->g_236.f3), p_1700->g_83[4][4][1])) | 4294967290UL) | p_51) >= l_606), 0x8CACL)), (-6L))) & l_579) & p_51), 0x73L))), 0xB9L));
        return p_1700->g_83[5][1][1];
    }
    for (p_1700->g_102 = 1; (p_1700->g_102 >= 0); p_1700->g_102 -= 1)
    { /* block id: 415 */
        uint8_t l_632 = 247UL;
        uint64_t l_663 = 0x86375C3412618E88L;
        int32_t l_670 = 0x31A535FDL;
        int32_t l_716 = 0x41A3B329L;
        int32_t l_717 = 5L;
        int32_t l_787[7][8] = {{0x0DBE32BAL,0L,(-6L),0L,0x0DBE32BAL,0x0DBE32BAL,0L,(-6L)},{0x0DBE32BAL,0L,(-6L),0L,0x0DBE32BAL,0x0DBE32BAL,0L,(-6L)},{0x0DBE32BAL,0L,(-6L),0L,0x0DBE32BAL,0x0DBE32BAL,0L,(-6L)},{0x0DBE32BAL,0L,(-6L),0L,0x0DBE32BAL,0x0DBE32BAL,0L,(-6L)},{0x0DBE32BAL,0L,(-6L),0L,0x0DBE32BAL,0x0DBE32BAL,0L,(-6L)},{0x0DBE32BAL,0L,(-6L),0L,0x0DBE32BAL,0x0DBE32BAL,0L,(-6L)},{0x0DBE32BAL,0L,(-6L),0L,0x0DBE32BAL,0x0DBE32BAL,0L,(-6L)}};
        int i, j;
        for (p_1700->g_236.f2 = 9; (p_1700->g_236.f2 >= 0); p_1700->g_236.f2 -= 1)
        { /* block id: 418 */
            int32_t l_620 = (-1L);
            int32_t l_719[10][9] = {{0x37AAD8B1L,0x248C26EFL,0x6BED855CL,0x175F140DL,(-3L),0x37AAD8B1L,0x175F140DL,(-10L),0x175F140DL},{0x37AAD8B1L,0x248C26EFL,0x6BED855CL,0x175F140DL,(-3L),0x37AAD8B1L,0x175F140DL,(-10L),0x175F140DL},{0x37AAD8B1L,0x248C26EFL,0x6BED855CL,0x175F140DL,(-3L),0x37AAD8B1L,0x175F140DL,(-10L),0x175F140DL},{0x37AAD8B1L,0x248C26EFL,0x6BED855CL,0x175F140DL,(-3L),0x37AAD8B1L,0x175F140DL,(-10L),0x175F140DL},{0x37AAD8B1L,0x248C26EFL,0x6BED855CL,0x175F140DL,(-3L),0x37AAD8B1L,0x175F140DL,(-10L),0x175F140DL},{0x37AAD8B1L,0x248C26EFL,0x6BED855CL,0x175F140DL,(-3L),0x37AAD8B1L,0x175F140DL,(-10L),0x175F140DL},{0x37AAD8B1L,0x248C26EFL,0x6BED855CL,0x175F140DL,(-3L),0x37AAD8B1L,0x175F140DL,(-10L),0x175F140DL},{0x37AAD8B1L,0x248C26EFL,0x6BED855CL,0x175F140DL,(-3L),0x37AAD8B1L,0x175F140DL,(-10L),0x175F140DL},{0x37AAD8B1L,0x248C26EFL,0x6BED855CL,0x175F140DL,(-3L),0x37AAD8B1L,0x175F140DL,(-10L),0x175F140DL},{0x37AAD8B1L,0x248C26EFL,0x6BED855CL,0x175F140DL,(-3L),0x37AAD8B1L,0x175F140DL,(-10L),0x175F140DL}};
            uint32_t l_721 = 0x35D1E3FAL;
            uint64_t *l_768 = &p_1700->g_127;
            int i, j;
            p_1700->g_213[(p_1700->g_102 + 8)] = ((p_1700->g_213[(p_1700->g_102 + 5)] < 18446744073709551609UL) && 6L);
            for (l_579 = 0; (l_579 <= 1); l_579 += 1)
            { /* block id: 422 */
                int8_t l_621 = 0x37L;
                int32_t l_623 = 0x6D60FA48L;
                int32_t l_714 = (-1L);
                int32_t l_715 = 0x07FBC2D6L;
                for (p_1700->g_127 = 0; (p_1700->g_127 <= 1); p_1700->g_127 += 1)
                { /* block id: 425 */
                    uint32_t l_671 = 0xC6217B70L;
                    int32_t l_713[3][8] = {{0x12F452C3L,0x12F452C3L,(-4L),0x21CDAB72L,0x4C563CA1L,0x21CDAB72L,(-4L),0x12F452C3L},{0x12F452C3L,0x12F452C3L,(-4L),0x21CDAB72L,0x4C563CA1L,0x21CDAB72L,(-4L),0x12F452C3L},{0x12F452C3L,0x12F452C3L,(-4L),0x21CDAB72L,0x4C563CA1L,0x21CDAB72L,(-4L),0x12F452C3L}};
                    int i, j;
                    for (p_1700->g_236.f3 = 0; (p_1700->g_236.f3 <= 1); p_1700->g_236.f3 += 1)
                    { /* block id: 428 */
                        uint16_t *l_616 = &p_1700->g_205;
                        int32_t l_619[7][6] = {{0x399CF3FAL,1L,0x29C5CEA7L,(-6L),(-10L),0x399CF3FAL},{0x399CF3FAL,1L,0x29C5CEA7L,(-6L),(-10L),0x399CF3FAL},{0x399CF3FAL,1L,0x29C5CEA7L,(-6L),(-10L),0x399CF3FAL},{0x399CF3FAL,1L,0x29C5CEA7L,(-6L),(-10L),0x399CF3FAL},{0x399CF3FAL,1L,0x29C5CEA7L,(-6L),(-10L),0x399CF3FAL},{0x399CF3FAL,1L,0x29C5CEA7L,(-6L),(-10L),0x399CF3FAL},{0x399CF3FAL,1L,0x29C5CEA7L,(-6L),(-10L),0x399CF3FAL}};
                        uint64_t *l_622 = &p_1700->g_119;
                        int i, j;
                        p_1700->g_262[l_579] = func_66(((((safe_add_func_int16_t_s_s(p_51, p_51)) == (safe_mod_func_int64_t_s_s(((p_1700->g_236.f4 <= (l_623 ^= ((*l_622) = (safe_mod_func_uint16_t_u_u(p_51, (~(((*l_616) ^= 65535UL) > (((safe_rshift_func_uint16_t_u_s(p_51, ((l_619[5][3] = 1L) ^ (p_51 , ((l_620 , (void*)0) == (void*)0))))) , l_621) == p_1700->g_86)))))))) ^ l_605), p_51))) , p_51) > (*p_1700->g_166)), p_1700->g_234[1][0], p_1700);
                    }
                    if (((safe_sub_func_uint64_t_u_u((l_623 = p_1700->g_236.f5), 1UL)) >= GROUP_DIVERGE(0, 1)))
                    { /* block id: 436 */
                        int64_t *l_630 = &p_1700->g_239;
                        int32_t l_631 = 0x6D52E456L;
                        uint16_t *l_642[5][1][4] = {{{&p_1700->g_203,&p_1700->g_203,&p_1700->g_203,&p_1700->g_203}},{{&p_1700->g_203,&p_1700->g_203,&p_1700->g_203,&p_1700->g_203}},{{&p_1700->g_203,&p_1700->g_203,&p_1700->g_203,&p_1700->g_203}},{{&p_1700->g_203,&p_1700->g_203,&p_1700->g_203,&p_1700->g_203}},{{&p_1700->g_203,&p_1700->g_203,&p_1700->g_203,&p_1700->g_203}}};
                        int16_t *l_651 = &p_1700->g_185;
                        int32_t *l_652 = &l_605;
                        int i, j, k;
                        (*p_1700->g_166) = ((p_51 <= ((((*p_1700->g_166) >= (FAKE_DIVERGE(p_1700->group_1_offset, get_group_id(1), 10) != 65535UL)) < ((safe_add_func_int64_t_s_s(l_579, (((GROUP_DIVERGE(1, 1) < ((p_1700->g_86 && ((safe_div_func_uint16_t_u_u((((void*)0 != l_630) || 0x84CCEEFE41DB2971L), 0xD448L)) == 0x551E0B51A0ECCD57L)) , p_51)) > 7UL) == p_1700->g_205))) || p_51)) | p_1700->g_213[7])) < 0x362C79A8L);
                        l_632 = l_631;
                        p_1700->g_262[l_579] = (void*)0;
                        (*l_652) = ((*p_1700->g_166) = (((*l_651) = ((((l_579 < ((((((safe_mul_func_int16_t_s_s(((((safe_mul_func_int8_t_s_s((safe_unary_minus_func_int64_t_s((safe_rshift_func_int16_t_s_u((((++p_1700->g_203) | ((((p_51 < ((safe_sub_func_int16_t_s_s(p_51, (safe_sub_func_uint16_t_u_u(p_1700->g_127, (p_1700->g_649 != (((void*)0 != &p_1700->g_116) , (void*)0)))))) & (p_1700->g_213[(p_1700->g_102 + 5)] = (*p_1700->g_166)))) , 0x4786L) >= 0x1299L) != 1L)) && 7L), 15)))), 0x06L)) < p_1700->g_285) && p_51) , 0x0A62L), p_1700->g_236.f7)) == p_51) ^ p_1700->g_234[1][0]) >= FAKE_DIVERGE(p_1700->global_1_offset, get_global_id(1), 10)) & 2L) == (*p_52))) == 0xD0EEF87DL) == 0x1CL) < 1L)) > 0UL));
                    }
                    else
                    { /* block id: 445 */
                        uint16_t *l_655 = (void*)0;
                        uint16_t **l_656 = &l_655;
                        int32_t *l_664 = (void*)0;
                        int32_t *l_665 = (void*)0;
                        int32_t *l_666 = &p_1700->g_213[(p_1700->g_102 + 8)];
                        int32_t *l_667 = &l_609;
                        int32_t *l_668 = &p_1700->g_213[1];
                        int32_t *l_669[1];
                        int i;
                        for (i = 0; i < 1; i++)
                            l_669[i] = &p_1700->g_215;
                        (*p_1700->g_166) = ((safe_mod_func_uint16_t_u_u(((((p_1700->g_234[2][0] & (0x6E2FL && ((void*)0 != p_1700->g_207))) != (p_51 && (((((*l_656) = l_655) != &p_1700->g_203) == (0L && ((~(((safe_add_func_uint64_t_u_u((((safe_mul_func_int16_t_s_s((safe_lshift_func_uint16_t_u_s(l_663, 15)), p_1700->g_236.f0)) && p_51) , 1UL), p_1700->g_236.f2)) , l_579) == 0L)) == 8UL))) ^ (*p_52)))) , p_1700->g_649) == (void*)0), l_621)) && p_51);
                        l_671++;
                        return p_51;
                    }
                    for (p_1700->g_236.f5 = 0; (p_1700->g_236.f5 == 27); p_1700->g_236.f5 = safe_add_func_uint32_t_u_u(p_1700->g_236.f5, 9))
                    { /* block id: 453 */
                        int32_t l_688 = 1L;
                        int8_t *l_691 = &l_621;
                        int8_t *l_692 = &p_1700->g_238;
                        int32_t l_693 = 0L;
                        uint32_t *l_707 = &p_1700->g_236.f7;
                        uint64_t *l_708 = &p_1700->g_119;
                        (1 + 1);
                    }
                    for (p_1700->g_74 = 0; (p_1700->g_74 <= 35); p_1700->g_74++)
                    { /* block id: 468 */
                        int32_t *l_711[4][3];
                        int i, j;
                        for (i = 0; i < 4; i++)
                        {
                            for (j = 0; j < 3; j++)
                                l_711[i][j] = &p_1700->g_76[2];
                        }
                        l_721++;
                    }
                }
                if ((atomic_inc(&p_1700->g_atomic_input[25 * get_linear_group_id() + 9]) == 7))
                { /* block id: 473 */
                    int32_t l_724[2][8] = {{0x6C298238L,5L,(-1L),5L,0x6C298238L,0x6C298238L,5L,(-1L)},{0x6C298238L,5L,(-1L),5L,0x6C298238L,0x6C298238L,5L,(-1L)}};
                    uint8_t l_738 = 0UL;
                    uint32_t l_739 = 1UL;
                    int i, j;
                    for (l_724[1][5] = 0; (l_724[1][5] <= 4); l_724[1][5]++)
                    { /* block id: 476 */
                        int32_t l_728 = 0x41BA3800L;
                        int32_t *l_727 = &l_728;
                        int32_t *l_729 = &l_728;
                        int32_t *l_730 = &l_728;
                        uint32_t l_731 = 0UL;
                        int32_t *l_732 = &l_728;
                        int32_t *l_733 = (void*)0;
                        uint64_t l_734 = 0xD4A91E3E665230B8L;
                        int64_t l_735 = 0x172EF19EED75702AL;
                        int32_t *l_736 = &l_728;
                        int32_t *l_737 = &l_728;
                        l_730 = (l_729 = l_727);
                        l_733 = (l_732 = (l_731 , (l_730 = (void*)0)));
                        l_735 = l_734;
                        l_737 = l_736;
                    }
                    l_739 ^= l_738;
                    for (l_724[1][2] = 0; (l_724[1][2] >= 5); l_724[1][2] = safe_add_func_int64_t_s_s(l_724[1][2], 6))
                    { /* block id: 488 */
                        uint64_t l_742 = 18446744073709551615UL;
                        uint32_t l_743[1][6][10];
                        int i, j, k;
                        for (i = 0; i < 1; i++)
                        {
                            for (j = 0; j < 6; j++)
                            {
                                for (k = 0; k < 10; k++)
                                    l_743[i][j][k] = 4294967291UL;
                            }
                        }
                        l_743[0][5][5] = l_742;
                    }
                    unsigned int result = 0;
                    int l_724_i0, l_724_i1;
                    for (l_724_i0 = 0; l_724_i0 < 2; l_724_i0++) {
                        for (l_724_i1 = 0; l_724_i1 < 8; l_724_i1++) {
                            result += l_724[l_724_i0][l_724_i1];
                        }
                    }
                    result += l_738;
                    result += l_739;
                    atomic_add(&p_1700->g_special_values[25 * get_linear_group_id() + 9], result);
                }
                else
                { /* block id: 491 */
                    (1 + 1);
                }
                if (l_714)
                    continue;
            }
            l_718[4] = ((void*)0 == p_1700->g_262[p_1700->g_102]);
            for (p_1700->g_203 = 0; (p_1700->g_203 <= 1); p_1700->g_203 += 1)
            { /* block id: 499 */
                uint8_t *l_744[2][6][4] = {{{&l_632,(void*)0,(void*)0,&l_632},{&l_632,(void*)0,(void*)0,&l_632},{&l_632,(void*)0,(void*)0,&l_632},{&l_632,(void*)0,(void*)0,&l_632},{&l_632,(void*)0,(void*)0,&l_632},{&l_632,(void*)0,(void*)0,&l_632}},{{&l_632,(void*)0,(void*)0,&l_632},{&l_632,(void*)0,(void*)0,&l_632},{&l_632,(void*)0,(void*)0,&l_632},{&l_632,(void*)0,(void*)0,&l_632},{&l_632,(void*)0,(void*)0,&l_632},{&l_632,(void*)0,(void*)0,&l_632}}};
                int32_t l_758 = 0x73D5AEB7L;
                int i, j, k;
                if (((((p_1700->g_747++) && (l_720[3] >= (safe_add_func_int16_t_s_s(p_1700->g_213[0], l_717)))) == ((safe_add_func_int16_t_s_s(p_51, ((GROUP_DIVERGE(1, 1) <= p_51) , (safe_add_func_int8_t_s_s(l_632, p_51))))) & (0UL != ((safe_rshift_func_uint8_t_u_u((~(((0x4BD2FC58L >= 0L) < l_670) , 0xEEL)), 5)) & l_758)))) , 0x71B81A24L))
                { /* block id: 501 */
                    uint16_t *l_763[4][10][3] = {{{&p_1700->g_205,&p_1700->g_205,&p_1700->g_236.f6},{&p_1700->g_205,&p_1700->g_205,&p_1700->g_236.f6},{&p_1700->g_205,&p_1700->g_205,&p_1700->g_236.f6},{&p_1700->g_205,&p_1700->g_205,&p_1700->g_236.f6},{&p_1700->g_205,&p_1700->g_205,&p_1700->g_236.f6},{&p_1700->g_205,&p_1700->g_205,&p_1700->g_236.f6},{&p_1700->g_205,&p_1700->g_205,&p_1700->g_236.f6},{&p_1700->g_205,&p_1700->g_205,&p_1700->g_236.f6},{&p_1700->g_205,&p_1700->g_205,&p_1700->g_236.f6},{&p_1700->g_205,&p_1700->g_205,&p_1700->g_236.f6}},{{&p_1700->g_205,&p_1700->g_205,&p_1700->g_236.f6},{&p_1700->g_205,&p_1700->g_205,&p_1700->g_236.f6},{&p_1700->g_205,&p_1700->g_205,&p_1700->g_236.f6},{&p_1700->g_205,&p_1700->g_205,&p_1700->g_236.f6},{&p_1700->g_205,&p_1700->g_205,&p_1700->g_236.f6},{&p_1700->g_205,&p_1700->g_205,&p_1700->g_236.f6},{&p_1700->g_205,&p_1700->g_205,&p_1700->g_236.f6},{&p_1700->g_205,&p_1700->g_205,&p_1700->g_236.f6},{&p_1700->g_205,&p_1700->g_205,&p_1700->g_236.f6},{&p_1700->g_205,&p_1700->g_205,&p_1700->g_236.f6}},{{&p_1700->g_205,&p_1700->g_205,&p_1700->g_236.f6},{&p_1700->g_205,&p_1700->g_205,&p_1700->g_236.f6},{&p_1700->g_205,&p_1700->g_205,&p_1700->g_236.f6},{&p_1700->g_205,&p_1700->g_205,&p_1700->g_236.f6},{&p_1700->g_205,&p_1700->g_205,&p_1700->g_236.f6},{&p_1700->g_205,&p_1700->g_205,&p_1700->g_236.f6},{&p_1700->g_205,&p_1700->g_205,&p_1700->g_236.f6},{&p_1700->g_205,&p_1700->g_205,&p_1700->g_236.f6},{&p_1700->g_205,&p_1700->g_205,&p_1700->g_236.f6},{&p_1700->g_205,&p_1700->g_205,&p_1700->g_236.f6}},{{&p_1700->g_205,&p_1700->g_205,&p_1700->g_236.f6},{&p_1700->g_205,&p_1700->g_205,&p_1700->g_236.f6},{&p_1700->g_205,&p_1700->g_205,&p_1700->g_236.f6},{&p_1700->g_205,&p_1700->g_205,&p_1700->g_236.f6},{&p_1700->g_205,&p_1700->g_205,&p_1700->g_236.f6},{&p_1700->g_205,&p_1700->g_205,&p_1700->g_236.f6},{&p_1700->g_205,&p_1700->g_205,&p_1700->g_236.f6},{&p_1700->g_205,&p_1700->g_205,&p_1700->g_236.f6},{&p_1700->g_205,&p_1700->g_205,&p_1700->g_236.f6},{&p_1700->g_205,&p_1700->g_205,&p_1700->g_236.f6}}};
                    int16_t *l_769 = &p_1700->g_185;
                    int64_t *l_770 = &p_1700->g_83[5][1][1];
                    int32_t *l_771 = &p_1700->g_213[7];
                    int i, j, k;
                    (*l_771) = ((*p_1700->g_166) = (((*l_770) = (safe_mul_func_uint8_t_u_u((((safe_mod_func_int8_t_s_s(p_51, p_1700->g_97)) , p_51) || ((0UL > (p_1700->g_236.f0 = ((void*)0 == p_1700->g_649))) , ((*l_769) ^= (safe_mod_func_uint8_t_u_u(((((void*)0 != &p_1700->g_207) != (l_768 == &p_1700->g_119)) >= l_632), p_1700->g_236.f6))))), p_1700->g_234[3][0]))) , l_716));
                    (*p_1700->g_166) |= (*l_771);
                    (*l_771) = 0x26D71D21L;
                }
                else
                { /* block id: 509 */
                    uint32_t l_797[5][4] = {{0UL,0UL,0UL,0UL},{0UL,0UL,0UL,0UL},{0UL,0UL,0UL,0UL},{0UL,0UL,0UL,0UL},{0UL,0UL,0UL,0UL}};
                    int i, j;
                    for (p_1700->g_747 = (-18); (p_1700->g_747 == 31); p_1700->g_747 = safe_add_func_uint64_t_u_u(p_1700->g_747, 8))
                    { /* block id: 512 */
                        struct S0 ***l_777 = &l_776;
                        struct S0 **l_779[4][6] = {{&p_1700->g_207,(void*)0,(void*)0,&p_1700->g_207,&p_1700->g_207,(void*)0},{&p_1700->g_207,(void*)0,(void*)0,&p_1700->g_207,&p_1700->g_207,(void*)0},{&p_1700->g_207,(void*)0,(void*)0,&p_1700->g_207,&p_1700->g_207,(void*)0},{&p_1700->g_207,(void*)0,(void*)0,&p_1700->g_207,&p_1700->g_207,(void*)0}};
                        struct S0 ***l_778 = &l_779[1][5];
                        uint16_t *l_780[3];
                        int64_t *l_781 = &p_1700->g_745[0];
                        int32_t *l_788 = &p_1700->g_76[2];
                        int32_t *l_789 = &l_712;
                        int32_t *l_790 = &l_712;
                        int32_t *l_791 = (void*)0;
                        int32_t *l_792 = (void*)0;
                        int8_t l_793 = 0x3BL;
                        int32_t *l_794 = &l_758;
                        int32_t *l_795 = &l_716;
                        int32_t *l_796[2];
                        int32_t **l_800 = (void*)0;
                        int32_t **l_801 = &l_796[1];
                        int i, j;
                        for (i = 0; i < 3; i++)
                            l_780[i] = &p_1700->g_236.f0;
                        for (i = 0; i < 2; i++)
                            l_796[i] = &l_716;
                        (1 + 1);
                    }
                }
            }
        }
        if (l_716)
            continue;
        return l_787[0][0];
    }
    return l_579;
}


/* ------------------------------------------ */
/* 
 * reads : p_1700->g_76 p_1700->g_215
 * writes: p_1700->g_262
 */
int32_t  func_53(int32_t * p_54, int32_t * p_55, int64_t  p_56, int32_t * p_57, struct S2 * p_1700)
{ /* block id: 132 */
    int32_t *l_574 = &p_1700->g_215;
    int32_t **l_575 = (void*)0;
    int32_t **l_576 = (void*)0;
    if ((atomic_inc(&p_1700->l_atomic_input[10]) == 1))
    { /* block id: 134 */
        int32_t l_292 = 0x27B03AEDL;
        uint8_t l_430 = 9UL;
        uint16_t l_433 = 0x418BL;
        uint16_t *l_432[9][1];
        uint16_t **l_431 = &l_432[4][0];
        uint16_t **l_434 = &l_432[2][0];
        int32_t *l_570 = &l_292;
        int32_t *l_571 = (void*)0;
        int32_t *l_572 = (void*)0;
        int32_t *l_573 = &l_292;
        int i, j;
        for (i = 0; i < 9; i++)
        {
            for (j = 0; j < 1; j++)
                l_432[i][j] = &l_433;
        }
        for (l_292 = 0; (l_292 > 16); ++l_292)
        { /* block id: 137 */
            int32_t l_296 = (-8L);
            int32_t *l_295 = &l_296;
            int16_t l_297 = 0x7010L;
            uint16_t l_298 = 1UL;
            int32_t *l_428 = &l_296;
            int32_t *l_429[3][10] = {{&l_296,(void*)0,&l_296,(void*)0,&l_296,&l_296,(void*)0,&l_296,(void*)0,&l_296},{&l_296,(void*)0,&l_296,(void*)0,&l_296,&l_296,(void*)0,&l_296,(void*)0,&l_296},{&l_296,(void*)0,&l_296,(void*)0,&l_296,&l_296,(void*)0,&l_296,(void*)0,&l_296}};
            int i, j;
            l_295 = (void*)0;
            l_297 = 0x17375FFBL;
            if (l_298)
            { /* block id: 140 */
                uint32_t l_299 = 0UL;
                int16_t l_300 = 0L;
                uint32_t l_301 = 0x6BEEDF19L;
                uint64_t l_302[5][5] = {{18446744073709551615UL,0x89EBE5C5FE19E61FL,18446744073709551615UL,0x199BC3A7848C3DFAL,18446744073709551615UL},{18446744073709551615UL,0x89EBE5C5FE19E61FL,18446744073709551615UL,0x199BC3A7848C3DFAL,18446744073709551615UL},{18446744073709551615UL,0x89EBE5C5FE19E61FL,18446744073709551615UL,0x199BC3A7848C3DFAL,18446744073709551615UL},{18446744073709551615UL,0x89EBE5C5FE19E61FL,18446744073709551615UL,0x199BC3A7848C3DFAL,18446744073709551615UL},{18446744073709551615UL,0x89EBE5C5FE19E61FL,18446744073709551615UL,0x199BC3A7848C3DFAL,18446744073709551615UL}};
                int64_t l_303 = (-1L);
                int i, j;
                l_296 ^= (l_300 = l_299);
                if (((l_302[4][4] = (l_301 &= 0x718C706FE9D0C053L)) , l_303))
                { /* block id: 145 */
                    int32_t l_304 = 0x68F02211L;
                    for (l_304 = 0; (l_304 <= 3); l_304 += 1)
                    { /* block id: 148 */
                        int32_t l_305[3];
                        struct S0 *l_306 = (void*)0;
                        struct S0 l_308 = {0x55BEL,0x29135A29DEC1BE3FL,-9L,0xE11F597FL,5UL,0x29EB063BL,0x38D6L,2UL,7L};/* VOLATILE GLOBAL l_308 */
                        struct S0 l_309 = {6UL,18446744073709551611UL,-2L,3UL,1UL,0x7AA39FC4L,65535UL,0x9530AED2L,0x5DCAL};/* VOLATILE GLOBAL l_309 */
                        struct S0 l_310 = {65527UL,1UL,0x53819087L,0x571465EFL,1UL,0x7D150920L,0xDD43L,0xCA1691F6L,0x42A5L};/* VOLATILE GLOBAL l_310 */
                        struct S0 *l_307[10] = {&l_308,&l_308,&l_308,&l_308,&l_308,&l_308,&l_308,&l_308,&l_308,&l_308};
                        int32_t l_311 = (-1L);
                        uint64_t l_312 = 0UL;
                        int i;
                        for (i = 0; i < 3; i++)
                            l_305[i] = (-7L);
                        l_296 = l_305[1];
                        l_307[1] = l_306;
                        l_305[2] = l_311;
                        --l_312;
                    }
                }
                else
                { /* block id: 154 */
                    uint32_t l_315 = 1UL;
                    int32_t l_318 = 0x2E9026B3L;
                    uint64_t l_319 = 0x281651E5889AAFE9L;
                    int8_t l_320 = 1L;
                    l_296 |= (-2L);
                    l_315--;
                    l_320 |= (l_319 = (l_296 = l_318));
                    if ((l_296 = 5L))
                    { /* block id: 161 */
                        uint16_t l_321 = 65535UL;
                        uint32_t l_322[9];
                        uint32_t l_323 = 0xE42EB2ACL;
                        uint64_t l_324 = 0UL;
                        uint64_t l_325 = 0UL;
                        int i;
                        for (i = 0; i < 9; i++)
                            l_322[i] = 0xE27F1656L;
                        l_296 &= l_321;
                        l_323 = (l_322[4] , (l_296 &= (-1L)));
                        l_325 = l_324;
                    }
                    else
                    { /* block id: 166 */
                        uint8_t l_326 = 0x3FL;
                        int32_t l_327 = 0x11BBE33DL;
                        uint16_t l_328 = 0x8BDEL;
                        l_296 &= l_326;
                        l_296 ^= l_327;
                        ++l_328;
                    }
                }
            }
            else
            { /* block id: 172 */
                int64_t l_331[1];
                int32_t l_332 = (-1L);
                int32_t l_351[10];
                int i;
                for (i = 0; i < 1; i++)
                    l_331[i] = 0x731C35CB488B7F67L;
                for (i = 0; i < 10; i++)
                    l_351[i] = 5L;
                l_296 &= ((l_331[0] = 0x71371B8838B34796L) , l_332);
                for (l_331[0] = (-4); (l_331[0] > 10); ++l_331[0])
                { /* block id: 177 */
                    int32_t l_335 = 0x4B65FB20L;
                    for (l_335 = 1; (l_335 >= 0); l_335 -= 1)
                    { /* block id: 180 */
                        int32_t l_336 = 5L;
                        int32_t l_337 = (-3L);
                        int16_t l_338 = 0x3F07L;
                        int32_t l_339 = 6L;
                        int16_t l_340 = 7L;
                        uint8_t l_341 = 0x70L;
                        int i;
                        l_336 = p_1700->g_76[l_335];
                        l_341--;
                    }
                    for (l_335 = 0; (l_335 <= (-1)); l_335 = safe_sub_func_int16_t_s_s(l_335, 1))
                    { /* block id: 186 */
                        uint32_t l_346 = 0UL;
                        int16_t l_347 = 0x2F64L;
                        uint32_t l_348 = 1UL;
                        l_346 |= 0x15B6B8E5L;
                        --l_348;
                    }
                }
                if (l_351[4])
                { /* block id: 191 */
                    int32_t l_352 = 0x2466DCC6L;
                    int32_t l_365[6];
                    int32_t *l_366 = &l_352;
                    int16_t l_367 = 8L;
                    int i;
                    for (i = 0; i < 6; i++)
                        l_365[i] = (-1L);
                    for (l_352 = 0; (l_352 == 5); l_352++)
                    { /* block id: 194 */
                        int8_t l_355[6][9][3] = {{{0x79L,0L,0x54L},{0x79L,0L,0x54L},{0x79L,0L,0x54L},{0x79L,0L,0x54L},{0x79L,0L,0x54L},{0x79L,0L,0x54L},{0x79L,0L,0x54L},{0x79L,0L,0x54L},{0x79L,0L,0x54L}},{{0x79L,0L,0x54L},{0x79L,0L,0x54L},{0x79L,0L,0x54L},{0x79L,0L,0x54L},{0x79L,0L,0x54L},{0x79L,0L,0x54L},{0x79L,0L,0x54L},{0x79L,0L,0x54L},{0x79L,0L,0x54L}},{{0x79L,0L,0x54L},{0x79L,0L,0x54L},{0x79L,0L,0x54L},{0x79L,0L,0x54L},{0x79L,0L,0x54L},{0x79L,0L,0x54L},{0x79L,0L,0x54L},{0x79L,0L,0x54L},{0x79L,0L,0x54L}},{{0x79L,0L,0x54L},{0x79L,0L,0x54L},{0x79L,0L,0x54L},{0x79L,0L,0x54L},{0x79L,0L,0x54L},{0x79L,0L,0x54L},{0x79L,0L,0x54L},{0x79L,0L,0x54L},{0x79L,0L,0x54L}},{{0x79L,0L,0x54L},{0x79L,0L,0x54L},{0x79L,0L,0x54L},{0x79L,0L,0x54L},{0x79L,0L,0x54L},{0x79L,0L,0x54L},{0x79L,0L,0x54L},{0x79L,0L,0x54L},{0x79L,0L,0x54L}},{{0x79L,0L,0x54L},{0x79L,0L,0x54L},{0x79L,0L,0x54L},{0x79L,0L,0x54L},{0x79L,0L,0x54L},{0x79L,0L,0x54L},{0x79L,0L,0x54L},{0x79L,0L,0x54L},{0x79L,0L,0x54L}}};
                        uint8_t l_356[7][2][3] = {{{0x2FL,0x2FL,0x2FL},{0x2FL,0x2FL,0x2FL}},{{0x2FL,0x2FL,0x2FL},{0x2FL,0x2FL,0x2FL}},{{0x2FL,0x2FL,0x2FL},{0x2FL,0x2FL,0x2FL}},{{0x2FL,0x2FL,0x2FL},{0x2FL,0x2FL,0x2FL}},{{0x2FL,0x2FL,0x2FL},{0x2FL,0x2FL,0x2FL}},{{0x2FL,0x2FL,0x2FL},{0x2FL,0x2FL,0x2FL}},{{0x2FL,0x2FL,0x2FL},{0x2FL,0x2FL,0x2FL}}};
                        int32_t l_357 = (-3L);
                        uint32_t l_358 = 0x8D9DC46AL;
                        uint16_t l_359 = 1UL;
                        int32_t l_360 = (-4L);
                        int32_t l_361[2];
                        uint64_t l_362 = 0UL;
                        int i, j, k;
                        for (i = 0; i < 2; i++)
                            l_361[i] = 1L;
                        l_356[3][0][1] = l_355[5][7][2];
                        l_332 &= ((l_357 , (l_358 , l_359)) , (l_351[4] = l_360));
                        ++l_362;
                    }
                    l_295 = (l_365[5] , l_366);
                    if (l_367)
                    { /* block id: 201 */
                        struct S0 l_369 = {0x47B4L,18446744073709551606UL,-1L,0x7F5B7E7CL,18446744073709551610UL,0L,0x13C5L,1UL,0x18F7L};/* VOLATILE GLOBAL l_369 */
                        struct S0 *l_368 = &l_369;
                        struct S0 l_371[3][8] = {{{9UL,18446744073709551607UL,-9L,0x993387B3L,18446744073709551615UL,0x7EE55952L,0x5E47L,0UL,0x1E6BL},{9UL,18446744073709551607UL,-9L,0x993387B3L,18446744073709551615UL,0x7EE55952L,0x5E47L,0UL,0x1E6BL},{9UL,18446744073709551607UL,-9L,0x993387B3L,18446744073709551615UL,0x7EE55952L,0x5E47L,0UL,0x1E6BL},{9UL,18446744073709551607UL,-9L,0x993387B3L,18446744073709551615UL,0x7EE55952L,0x5E47L,0UL,0x1E6BL},{9UL,18446744073709551607UL,-9L,0x993387B3L,18446744073709551615UL,0x7EE55952L,0x5E47L,0UL,0x1E6BL},{9UL,18446744073709551607UL,-9L,0x993387B3L,18446744073709551615UL,0x7EE55952L,0x5E47L,0UL,0x1E6BL},{9UL,18446744073709551607UL,-9L,0x993387B3L,18446744073709551615UL,0x7EE55952L,0x5E47L,0UL,0x1E6BL},{9UL,18446744073709551607UL,-9L,0x993387B3L,18446744073709551615UL,0x7EE55952L,0x5E47L,0UL,0x1E6BL}},{{9UL,18446744073709551607UL,-9L,0x993387B3L,18446744073709551615UL,0x7EE55952L,0x5E47L,0UL,0x1E6BL},{9UL,18446744073709551607UL,-9L,0x993387B3L,18446744073709551615UL,0x7EE55952L,0x5E47L,0UL,0x1E6BL},{9UL,18446744073709551607UL,-9L,0x993387B3L,18446744073709551615UL,0x7EE55952L,0x5E47L,0UL,0x1E6BL},{9UL,18446744073709551607UL,-9L,0x993387B3L,18446744073709551615UL,0x7EE55952L,0x5E47L,0UL,0x1E6BL},{9UL,18446744073709551607UL,-9L,0x993387B3L,18446744073709551615UL,0x7EE55952L,0x5E47L,0UL,0x1E6BL},{9UL,18446744073709551607UL,-9L,0x993387B3L,18446744073709551615UL,0x7EE55952L,0x5E47L,0UL,0x1E6BL},{9UL,18446744073709551607UL,-9L,0x993387B3L,18446744073709551615UL,0x7EE55952L,0x5E47L,0UL,0x1E6BL},{9UL,18446744073709551607UL,-9L,0x993387B3L,18446744073709551615UL,0x7EE55952L,0x5E47L,0UL,0x1E6BL}},{{9UL,18446744073709551607UL,-9L,0x993387B3L,18446744073709551615UL,0x7EE55952L,0x5E47L,0UL,0x1E6BL},{9UL,18446744073709551607UL,-9L,0x993387B3L,18446744073709551615UL,0x7EE55952L,0x5E47L,0UL,0x1E6BL},{9UL,18446744073709551607UL,-9L,0x993387B3L,18446744073709551615UL,0x7EE55952L,0x5E47L,0UL,0x1E6BL},{9UL,18446744073709551607UL,-9L,0x993387B3L,18446744073709551615UL,0x7EE55952L,0x5E47L,0UL,0x1E6BL},{9UL,18446744073709551607UL,-9L,0x993387B3L,18446744073709551615UL,0x7EE55952L,0x5E47L,0UL,0x1E6BL},{9UL,18446744073709551607UL,-9L,0x993387B3L,18446744073709551615UL,0x7EE55952L,0x5E47L,0UL,0x1E6BL},{9UL,18446744073709551607UL,-9L,0x993387B3L,18446744073709551615UL,0x7EE55952L,0x5E47L,0UL,0x1E6BL},{9UL,18446744073709551607UL,-9L,0x993387B3L,18446744073709551615UL,0x7EE55952L,0x5E47L,0UL,0x1E6BL}}};
                        struct S0 *l_370[2];
                        uint64_t l_372 = 18446744073709551614UL;
                        int32_t l_373 = 0x59D697BAL;
                        int32_t *l_374 = &l_373;
                        int i, j;
                        for (i = 0; i < 2; i++)
                            l_370[i] = &l_371[1][1];
                        l_370[1] = l_368;
                        l_374 = ((l_372 , l_373) , l_374);
                    }
                    else
                    { /* block id: 204 */
                        int8_t l_375 = 0x2DL;
                        uint16_t l_376 = 65535UL;
                        int32_t l_377 = 0x644BDA8CL;
                        int16_t l_378 = 0x1654L;
                        int32_t l_379[3][10][3] = {{{1L,7L,1L},{1L,7L,1L},{1L,7L,1L},{1L,7L,1L},{1L,7L,1L},{1L,7L,1L},{1L,7L,1L},{1L,7L,1L},{1L,7L,1L},{1L,7L,1L}},{{1L,7L,1L},{1L,7L,1L},{1L,7L,1L},{1L,7L,1L},{1L,7L,1L},{1L,7L,1L},{1L,7L,1L},{1L,7L,1L},{1L,7L,1L},{1L,7L,1L}},{{1L,7L,1L},{1L,7L,1L},{1L,7L,1L},{1L,7L,1L},{1L,7L,1L},{1L,7L,1L},{1L,7L,1L},{1L,7L,1L},{1L,7L,1L},{1L,7L,1L}}};
                        int32_t *l_380 = &l_377;
                        int i, j, k;
                        (*l_366) = l_375;
                        l_296 &= ((*l_366) ^= l_376);
                        l_351[4] = ((l_379[1][0][0] = (l_378 ^= l_377)) , ((*l_295) = 0x34D22650L));
                        l_380 = (void*)0;
                    }
                }
                else
                { /* block id: 214 */
                    int32_t l_381[3][7] = {{1L,9L,0x72B64C38L,(-1L),9L,(-1L),0x72B64C38L},{1L,9L,0x72B64C38L,(-1L),9L,(-1L),0x72B64C38L},{1L,9L,0x72B64C38L,(-1L),9L,(-1L),0x72B64C38L}};
                    uint32_t l_393 = 0xA9E3E81EL;
                    uint8_t l_394 = 0UL;
                    int i, j;
                    for (l_381[0][4] = (-1); (l_381[0][4] > (-6)); l_381[0][4] = safe_sub_func_int16_t_s_s(l_381[0][4], 1))
                    { /* block id: 217 */
                        int16_t l_384 = 0x082FL;
                        uint32_t l_385[5][9][4] = {{{0xD131B7AEL,0xCDF8DF82L,7UL,4294967295UL},{0xD131B7AEL,0xCDF8DF82L,7UL,4294967295UL},{0xD131B7AEL,0xCDF8DF82L,7UL,4294967295UL},{0xD131B7AEL,0xCDF8DF82L,7UL,4294967295UL},{0xD131B7AEL,0xCDF8DF82L,7UL,4294967295UL},{0xD131B7AEL,0xCDF8DF82L,7UL,4294967295UL},{0xD131B7AEL,0xCDF8DF82L,7UL,4294967295UL},{0xD131B7AEL,0xCDF8DF82L,7UL,4294967295UL},{0xD131B7AEL,0xCDF8DF82L,7UL,4294967295UL}},{{0xD131B7AEL,0xCDF8DF82L,7UL,4294967295UL},{0xD131B7AEL,0xCDF8DF82L,7UL,4294967295UL},{0xD131B7AEL,0xCDF8DF82L,7UL,4294967295UL},{0xD131B7AEL,0xCDF8DF82L,7UL,4294967295UL},{0xD131B7AEL,0xCDF8DF82L,7UL,4294967295UL},{0xD131B7AEL,0xCDF8DF82L,7UL,4294967295UL},{0xD131B7AEL,0xCDF8DF82L,7UL,4294967295UL},{0xD131B7AEL,0xCDF8DF82L,7UL,4294967295UL},{0xD131B7AEL,0xCDF8DF82L,7UL,4294967295UL}},{{0xD131B7AEL,0xCDF8DF82L,7UL,4294967295UL},{0xD131B7AEL,0xCDF8DF82L,7UL,4294967295UL},{0xD131B7AEL,0xCDF8DF82L,7UL,4294967295UL},{0xD131B7AEL,0xCDF8DF82L,7UL,4294967295UL},{0xD131B7AEL,0xCDF8DF82L,7UL,4294967295UL},{0xD131B7AEL,0xCDF8DF82L,7UL,4294967295UL},{0xD131B7AEL,0xCDF8DF82L,7UL,4294967295UL},{0xD131B7AEL,0xCDF8DF82L,7UL,4294967295UL},{0xD131B7AEL,0xCDF8DF82L,7UL,4294967295UL}},{{0xD131B7AEL,0xCDF8DF82L,7UL,4294967295UL},{0xD131B7AEL,0xCDF8DF82L,7UL,4294967295UL},{0xD131B7AEL,0xCDF8DF82L,7UL,4294967295UL},{0xD131B7AEL,0xCDF8DF82L,7UL,4294967295UL},{0xD131B7AEL,0xCDF8DF82L,7UL,4294967295UL},{0xD131B7AEL,0xCDF8DF82L,7UL,4294967295UL},{0xD131B7AEL,0xCDF8DF82L,7UL,4294967295UL},{0xD131B7AEL,0xCDF8DF82L,7UL,4294967295UL},{0xD131B7AEL,0xCDF8DF82L,7UL,4294967295UL}},{{0xD131B7AEL,0xCDF8DF82L,7UL,4294967295UL},{0xD131B7AEL,0xCDF8DF82L,7UL,4294967295UL},{0xD131B7AEL,0xCDF8DF82L,7UL,4294967295UL},{0xD131B7AEL,0xCDF8DF82L,7UL,4294967295UL},{0xD131B7AEL,0xCDF8DF82L,7UL,4294967295UL},{0xD131B7AEL,0xCDF8DF82L,7UL,4294967295UL},{0xD131B7AEL,0xCDF8DF82L,7UL,4294967295UL},{0xD131B7AEL,0xCDF8DF82L,7UL,4294967295UL},{0xD131B7AEL,0xCDF8DF82L,7UL,4294967295UL}}};
                        int32_t l_388 = 7L;
                        uint8_t l_389[1][7][1] = {{{0x34L},{0x34L},{0x34L},{0x34L},{0x34L},{0x34L},{0x34L}}};
                        struct S0 *l_390 = (void*)0;
                        struct S0 *l_391 = (void*)0;
                        int64_t l_392 = 0x7498F6796B80936BL;
                        int i, j, k;
                        ++l_385[3][7][1];
                        l_296 = (l_389[0][0][0] &= l_388);
                        l_391 = l_390;
                        l_351[8] |= l_392;
                    }
                    l_332 ^= l_393;
                    l_394++;
                }
                for (l_351[9] = 0; (l_351[9] < (-11)); l_351[9] = safe_sub_func_int8_t_s_s(l_351[9], 5))
                { /* block id: 229 */
                    int32_t l_399 = 0x686AD9FFL;
                    uint64_t l_421 = 18446744073709551615UL;
                    int8_t l_422[7] = {0x47L,0x47L,0x47L,0x47L,0x47L,0x47L,0x47L};
                    int32_t l_423 = 6L;
                    int64_t l_424 = 9L;
                    uint32_t l_425 = 0x29312A18L;
                    int i;
                    for (l_399 = (-19); (l_399 > 11); ++l_399)
                    { /* block id: 232 */
                        uint32_t l_402 = 4294967286UL;
                        uint8_t l_405 = 0x9EL;
                        uint32_t l_406 = 0xAE890B1CL;
                        uint32_t l_407[9] = {0x9FBA2924L,0x9FBA2924L,0x9FBA2924L,0x9FBA2924L,0x9FBA2924L,0x9FBA2924L,0x9FBA2924L,0x9FBA2924L,0x9FBA2924L};
                        int i;
                        l_402++;
                        l_296 |= (l_405 , l_406);
                        --l_407[3];
                    }
                    for (l_399 = 0; (l_399 != (-30)); l_399--)
                    { /* block id: 239 */
                        int16_t l_412[5] = {0x6B4CL,0x6B4CL,0x6B4CL,0x6B4CL,0x6B4CL};
                        uint32_t l_413 = 4294967289UL;
                        uint64_t l_414 = 0x04C585D848852041L;
                        int8_t l_415 = 0x29L;
                        uint8_t l_416[7][9][4] = {{{0x15L,248UL,0UL,0xAAL},{0x15L,248UL,0UL,0xAAL},{0x15L,248UL,0UL,0xAAL},{0x15L,248UL,0UL,0xAAL},{0x15L,248UL,0UL,0xAAL},{0x15L,248UL,0UL,0xAAL},{0x15L,248UL,0UL,0xAAL},{0x15L,248UL,0UL,0xAAL},{0x15L,248UL,0UL,0xAAL}},{{0x15L,248UL,0UL,0xAAL},{0x15L,248UL,0UL,0xAAL},{0x15L,248UL,0UL,0xAAL},{0x15L,248UL,0UL,0xAAL},{0x15L,248UL,0UL,0xAAL},{0x15L,248UL,0UL,0xAAL},{0x15L,248UL,0UL,0xAAL},{0x15L,248UL,0UL,0xAAL},{0x15L,248UL,0UL,0xAAL}},{{0x15L,248UL,0UL,0xAAL},{0x15L,248UL,0UL,0xAAL},{0x15L,248UL,0UL,0xAAL},{0x15L,248UL,0UL,0xAAL},{0x15L,248UL,0UL,0xAAL},{0x15L,248UL,0UL,0xAAL},{0x15L,248UL,0UL,0xAAL},{0x15L,248UL,0UL,0xAAL},{0x15L,248UL,0UL,0xAAL}},{{0x15L,248UL,0UL,0xAAL},{0x15L,248UL,0UL,0xAAL},{0x15L,248UL,0UL,0xAAL},{0x15L,248UL,0UL,0xAAL},{0x15L,248UL,0UL,0xAAL},{0x15L,248UL,0UL,0xAAL},{0x15L,248UL,0UL,0xAAL},{0x15L,248UL,0UL,0xAAL},{0x15L,248UL,0UL,0xAAL}},{{0x15L,248UL,0UL,0xAAL},{0x15L,248UL,0UL,0xAAL},{0x15L,248UL,0UL,0xAAL},{0x15L,248UL,0UL,0xAAL},{0x15L,248UL,0UL,0xAAL},{0x15L,248UL,0UL,0xAAL},{0x15L,248UL,0UL,0xAAL},{0x15L,248UL,0UL,0xAAL},{0x15L,248UL,0UL,0xAAL}},{{0x15L,248UL,0UL,0xAAL},{0x15L,248UL,0UL,0xAAL},{0x15L,248UL,0UL,0xAAL},{0x15L,248UL,0UL,0xAAL},{0x15L,248UL,0UL,0xAAL},{0x15L,248UL,0UL,0xAAL},{0x15L,248UL,0UL,0xAAL},{0x15L,248UL,0UL,0xAAL},{0x15L,248UL,0UL,0xAAL}},{{0x15L,248UL,0UL,0xAAL},{0x15L,248UL,0UL,0xAAL},{0x15L,248UL,0UL,0xAAL},{0x15L,248UL,0UL,0xAAL},{0x15L,248UL,0UL,0xAAL},{0x15L,248UL,0UL,0xAAL},{0x15L,248UL,0UL,0xAAL},{0x15L,248UL,0UL,0xAAL},{0x15L,248UL,0UL,0xAAL}}};
                        int64_t l_417 = 0x3C29BD3280E93908L;
                        uint64_t l_418 = 0x21E806D19C9C9D8CL;
                        int32_t l_419 = 0x1B13339AL;
                        int64_t l_420 = 1L;
                        int i, j, k;
                        l_419 = (l_296 = ((l_413 = l_412[3]) , ((l_417 ^= (l_416[5][0][0] = (l_415 = l_414))) , (l_332 = l_418))));
                        l_419 = l_420;
                    }
                    l_399 &= l_421;
                    l_425--;
                }
            }
            l_429[1][2] = l_428;
        }
        l_431 = (l_430 , (l_434 = l_431));
        for (l_430 = (-16); (l_430 != 44); l_430 = safe_add_func_int8_t_s_s(l_430, 9))
        { /* block id: 259 */
            int32_t l_437 = 8L;
            uint32_t l_551 = 4294967295UL;
            for (l_437 = 0; (l_437 < (-11)); l_437--)
            { /* block id: 262 */
                int32_t l_440 = (-2L);
                for (l_440 = 0; (l_440 >= 0); l_440 -= 1)
                { /* block id: 265 */
                    int32_t l_441[5] = {0x7308C83EL,0x7308C83EL,0x7308C83EL,0x7308C83EL,0x7308C83EL};
                    uint32_t l_457[2][5];
                    uint64_t l_465 = 18446744073709551610UL;
                    int i, j;
                    for (i = 0; i < 2; i++)
                    {
                        for (j = 0; j < 5; j++)
                            l_457[i][j] = 0x8A5C5590L;
                    }
                    for (l_441[1] = 0; (l_441[1] >= 0); l_441[1] -= 1)
                    { /* block id: 268 */
                        uint64_t l_442[1];
                        int32_t l_443[3];
                        int32_t l_444 = 0x645D75E0L;
                        int8_t l_445 = 0x18L;
                        int32_t l_446 = 1L;
                        uint32_t l_447 = 0x2C3C5834L;
                        int64_t l_450 = 0x17466D9AEC518643L;
                        int32_t l_451 = 0x20586AD7L;
                        int32_t l_452 = 4L;
                        uint32_t l_453[5][7] = {{0xE6D6DF2BL,0xE6D6DF2BL,0x4463A0FFL,0x6249232FL,1UL,0x6249232FL,0x4463A0FFL},{0xE6D6DF2BL,0xE6D6DF2BL,0x4463A0FFL,0x6249232FL,1UL,0x6249232FL,0x4463A0FFL},{0xE6D6DF2BL,0xE6D6DF2BL,0x4463A0FFL,0x6249232FL,1UL,0x6249232FL,0x4463A0FFL},{0xE6D6DF2BL,0xE6D6DF2BL,0x4463A0FFL,0x6249232FL,1UL,0x6249232FL,0x4463A0FFL},{0xE6D6DF2BL,0xE6D6DF2BL,0x4463A0FFL,0x6249232FL,1UL,0x6249232FL,0x4463A0FFL}};
                        int16_t l_456[5][1][3] = {{{0x47D0L,0x47D0L,0x47D0L}},{{0x47D0L,0x47D0L,0x47D0L}},{{0x47D0L,0x47D0L,0x47D0L}},{{0x47D0L,0x47D0L,0x47D0L}},{{0x47D0L,0x47D0L,0x47D0L}}};
                        int i, j, k;
                        for (i = 0; i < 1; i++)
                            l_442[i] = 0x253158E5EC7C13CBL;
                        for (i = 0; i < 3; i++)
                            l_443[i] = 1L;
                        l_292 |= (l_442[0] , 0x688B243DL);
                        --l_447;
                        l_453[3][5]++;
                        l_292 = l_456[3][0][2];
                    }
                    if (l_457[1][1])
                    { /* block id: 274 */
                        uint32_t l_458 = 4294967295UL;
                        int32_t l_462 = 0x037653A6L;
                        int32_t *l_461 = &l_462;
                        int32_t *l_463 = &l_462;
                        l_458--;
                        l_463 = l_461;
                    }
                    else
                    { /* block id: 277 */
                        uint32_t l_464 = 0x778557BBL;
                        l_292 ^= l_464;
                    }
                    l_292 &= l_465;
                }
                for (l_440 = (-23); (l_440 > (-10)); ++l_440)
                { /* block id: 284 */
                    int32_t l_468[10][6][4] = {{{7L,4L,0L,0x13C7A9B8L},{7L,4L,0L,0x13C7A9B8L},{7L,4L,0L,0x13C7A9B8L},{7L,4L,0L,0x13C7A9B8L},{7L,4L,0L,0x13C7A9B8L},{7L,4L,0L,0x13C7A9B8L}},{{7L,4L,0L,0x13C7A9B8L},{7L,4L,0L,0x13C7A9B8L},{7L,4L,0L,0x13C7A9B8L},{7L,4L,0L,0x13C7A9B8L},{7L,4L,0L,0x13C7A9B8L},{7L,4L,0L,0x13C7A9B8L}},{{7L,4L,0L,0x13C7A9B8L},{7L,4L,0L,0x13C7A9B8L},{7L,4L,0L,0x13C7A9B8L},{7L,4L,0L,0x13C7A9B8L},{7L,4L,0L,0x13C7A9B8L},{7L,4L,0L,0x13C7A9B8L}},{{7L,4L,0L,0x13C7A9B8L},{7L,4L,0L,0x13C7A9B8L},{7L,4L,0L,0x13C7A9B8L},{7L,4L,0L,0x13C7A9B8L},{7L,4L,0L,0x13C7A9B8L},{7L,4L,0L,0x13C7A9B8L}},{{7L,4L,0L,0x13C7A9B8L},{7L,4L,0L,0x13C7A9B8L},{7L,4L,0L,0x13C7A9B8L},{7L,4L,0L,0x13C7A9B8L},{7L,4L,0L,0x13C7A9B8L},{7L,4L,0L,0x13C7A9B8L}},{{7L,4L,0L,0x13C7A9B8L},{7L,4L,0L,0x13C7A9B8L},{7L,4L,0L,0x13C7A9B8L},{7L,4L,0L,0x13C7A9B8L},{7L,4L,0L,0x13C7A9B8L},{7L,4L,0L,0x13C7A9B8L}},{{7L,4L,0L,0x13C7A9B8L},{7L,4L,0L,0x13C7A9B8L},{7L,4L,0L,0x13C7A9B8L},{7L,4L,0L,0x13C7A9B8L},{7L,4L,0L,0x13C7A9B8L},{7L,4L,0L,0x13C7A9B8L}},{{7L,4L,0L,0x13C7A9B8L},{7L,4L,0L,0x13C7A9B8L},{7L,4L,0L,0x13C7A9B8L},{7L,4L,0L,0x13C7A9B8L},{7L,4L,0L,0x13C7A9B8L},{7L,4L,0L,0x13C7A9B8L}},{{7L,4L,0L,0x13C7A9B8L},{7L,4L,0L,0x13C7A9B8L},{7L,4L,0L,0x13C7A9B8L},{7L,4L,0L,0x13C7A9B8L},{7L,4L,0L,0x13C7A9B8L},{7L,4L,0L,0x13C7A9B8L}},{{7L,4L,0L,0x13C7A9B8L},{7L,4L,0L,0x13C7A9B8L},{7L,4L,0L,0x13C7A9B8L},{7L,4L,0L,0x13C7A9B8L},{7L,4L,0L,0x13C7A9B8L},{7L,4L,0L,0x13C7A9B8L}}};
                    int16_t l_469 = 0x6774L;
                    uint16_t l_470 = 0x8BBEL;
                    uint16_t l_484[5] = {0UL,0UL,0UL,0UL,0UL};
                    int i, j, k;
                    l_470++;
                    for (l_470 = 7; (l_470 > 32); l_470++)
                    { /* block id: 288 */
                        uint32_t l_475 = 0x1D6039D1L;
                        uint8_t l_476 = 0x1AL;
                        int8_t l_477 = 0L;
                        uint8_t l_478 = 247UL;
                        uint32_t l_479 = 0x25CF09F2L;
                        int64_t l_480 = 0x00A7F5142F57428EL;
                        uint64_t l_481[6][4] = {{0xB4FE9189B891033AL,0xB4FE9189B891033AL,18446744073709551606UL,1UL},{0xB4FE9189B891033AL,0xB4FE9189B891033AL,18446744073709551606UL,1UL},{0xB4FE9189B891033AL,0xB4FE9189B891033AL,18446744073709551606UL,1UL},{0xB4FE9189B891033AL,0xB4FE9189B891033AL,18446744073709551606UL,1UL},{0xB4FE9189B891033AL,0xB4FE9189B891033AL,18446744073709551606UL,1UL},{0xB4FE9189B891033AL,0xB4FE9189B891033AL,18446744073709551606UL,1UL}};
                        int64_t l_482 = 0x326F3D3992348A3BL;
                        uint32_t l_483 = 4294967295UL;
                        int i, j;
                        l_292 = l_475;
                        l_477 = (l_292 &= l_476);
                        l_483 = (l_478 , (l_479 , (l_482 &= (l_480 , (l_292 = l_481[1][0])))));
                    }
                    if ((l_292 = l_484[1]))
                    { /* block id: 297 */
                        int32_t l_486 = 0x064997D0L;
                        int32_t *l_485 = &l_486;
                        int32_t *l_487 = &l_486;
                        l_487 = l_485;
                    }
                    else
                    { /* block id: 299 */
                        int64_t l_488 = (-7L);
                        int8_t l_489 = 0x0DL;
                        int64_t l_490 = 0x31B8BED1D4121B45L;
                        int32_t l_491[8] = {0x4318ECDCL,0L,0x4318ECDCL,0x4318ECDCL,0L,0x4318ECDCL,0x4318ECDCL,0L};
                        int16_t l_492 = 0L;
                        uint8_t l_493[6] = {0xB2L,0xB2L,0xB2L,0xB2L,0xB2L,0xB2L};
                        uint64_t l_496 = 0x56145C2471F33652L;
                        uint32_t l_499 = 1UL;
                        uint32_t l_500 = 4UL;
                        int i;
                        l_493[2]--;
                        ++l_496;
                        l_500 ^= (l_292 = l_499);
                    }
                }
            }
            for (l_437 = (-6); (l_437 > 19); l_437 = safe_add_func_uint32_t_u_u(l_437, 9))
            { /* block id: 309 */
                uint32_t l_503 = 0x69ABA591L;
                int16_t l_506 = 0x2117L;
                int32_t l_507[5][3];
                int32_t l_508 = 0x64AFBCB5L;
                int8_t l_530 = 0x00L;
                int64_t l_549 = 0x4D732030F1920670L;
                int64_t l_550 = 0x5EA9623EE35C9AF5L;
                int i, j;
                for (i = 0; i < 5; i++)
                {
                    for (j = 0; j < 3; j++)
                        l_507[i][j] = 0x564B4F9EL;
                }
                ++l_503;
                if ((l_508 = (l_506 , (l_292 = l_507[2][2]))))
                { /* block id: 313 */
                    int32_t l_509 = 0x346E91FFL;
                    for (l_509 = 0; (l_509 <= 2); l_509 += 1)
                    { /* block id: 316 */
                        int i, j;
                        l_292 ^= 0x6DBEF11AL;
                        l_292 ^= l_507[l_509][l_509];
                        l_292 |= (l_507[(l_509 + 1)][l_509] , 0x51B92268L);
                    }
                    for (l_509 = 0; (l_509 <= 2); l_509 += 1)
                    { /* block id: 323 */
                        int32_t l_510 = 0x725BDDDFL;
                        uint16_t l_511 = 0x19B2L;
                        int8_t l_514 = 0x3FL;
                        int16_t l_515 = 0x37F1L;
                        uint64_t l_516 = 8UL;
                        l_510 |= (l_292 = (-1L));
                        l_292 = 1L;
                        --l_511;
                        ++l_516;
                    }
                }
                else
                { /* block id: 330 */
                    int16_t l_519[2];
                    uint32_t l_520 = 0xA9FE0D23L;
                    int32_t l_521 = 1L;
                    uint32_t l_522 = 0UL;
                    uint32_t l_525 = 4294967295UL;
                    int16_t l_526 = 0x16E1L;
                    int32_t *l_527[9][7] = {{&l_521,&l_521,(void*)0,&l_521,&l_521,&l_521,(void*)0},{&l_521,&l_521,(void*)0,&l_521,&l_521,&l_521,(void*)0},{&l_521,&l_521,(void*)0,&l_521,&l_521,&l_521,(void*)0},{&l_521,&l_521,(void*)0,&l_521,&l_521,&l_521,(void*)0},{&l_521,&l_521,(void*)0,&l_521,&l_521,&l_521,(void*)0},{&l_521,&l_521,(void*)0,&l_521,&l_521,&l_521,(void*)0},{&l_521,&l_521,(void*)0,&l_521,&l_521,&l_521,(void*)0},{&l_521,&l_521,(void*)0,&l_521,&l_521,&l_521,(void*)0},{&l_521,&l_521,(void*)0,&l_521,&l_521,&l_521,(void*)0}};
                    int32_t *l_528[10] = {&l_521,&l_521,&l_521,&l_521,&l_521,&l_521,&l_521,&l_521,&l_521,&l_521};
                    int32_t *l_529 = &l_521;
                    int i, j;
                    for (i = 0; i < 2; i++)
                        l_519[i] = 0x370DL;
                    l_292 = 0x1AE85582L;
                    l_529 = (l_528[7] = ((((l_520 = l_519[1]) , ((**l_434) = (--l_522))) , (l_526 = l_525)) , l_527[4][0]));
                }
                if (l_530)
                { /* block id: 339 */
                    uint16_t l_531 = 0x7460L;
                    int32_t l_537 = 0x5330631DL;
                    uint64_t l_538 = 0x702B2D7F3A473832L;
                    uint16_t l_539 = 0x9D3FL;
                    uint64_t l_540[5] = {18446744073709551614UL,18446744073709551614UL,18446744073709551614UL,18446744073709551614UL,18446744073709551614UL};
                    int32_t *l_541[4];
                    int i;
                    for (i = 0; i < 4; i++)
                        l_541[i] = &l_537;
                    if (l_531)
                    { /* block id: 340 */
                        int32_t l_532 = 1L;
                        int32_t *l_533 = &l_532;
                        uint64_t l_534 = 0x0339B124A009A6B0L;
                        uint32_t l_535 = 0x152BD256L;
                        l_533 = (l_532 , l_533);
                        l_292 = 0x352B5F1AL;
                        l_292 = ((*l_533) = l_534);
                        l_292 = ((l_530 &= 0L) , l_535);
                    }
                    else
                    { /* block id: 347 */
                        uint16_t l_536 = 0UL;
                        l_292 = l_536;
                    }
                    l_540[4] ^= (l_292 ^= (l_537 , (l_539 ^= l_538)));
                    l_541[3] = (void*)0;
                }
                else
                { /* block id: 354 */
                    int32_t l_542 = 0x2E286007L;
                    for (l_542 = 0; (l_542 != (-9)); l_542 = safe_sub_func_int8_t_s_s(l_542, 5))
                    { /* block id: 357 */
                        uint8_t l_545 = 0x5AL;
                        int32_t l_547 = 0x21F86182L;
                        int32_t *l_546 = &l_547;
                        int32_t *l_548 = (void*)0;
                        l_548 = ((l_545 ^= 0x67081EBDE1157624L) , l_546);
                    }
                }
                l_550 = l_549;
            }
            if (l_551)
            { /* block id: 364 */
                uint8_t l_552 = 0x57L;
                int32_t l_555[10] = {1L,1L,1L,1L,1L,1L,1L,1L,1L,1L};
                uint32_t l_556[5] = {0xA52CE4E0L,0xA52CE4E0L,0xA52CE4E0L,0xA52CE4E0L,0xA52CE4E0L};
                int i;
                if (l_552)
                { /* block id: 365 */
                    int32_t l_554 = 7L;
                    int32_t *l_553 = &l_554;
                    l_553 = (void*)0;
                }
                else
                { /* block id: 367 */
                    l_292 &= 7L;
                }
                for (l_552 = 0; l_552 < 2; l_552 += 1)
                {
                    p_1700->g_262[l_552] = (void*)0;
                }
                l_292 = (l_556[0] = l_555[5]);
                for (l_555[5] = 4; (l_555[5] >= 1); l_555[5] -= 1)
                { /* block id: 375 */
                    int32_t l_557 = 0x5239043EL;
                    for (l_557 = 4; (l_557 >= 0); l_557 -= 1)
                    { /* block id: 378 */
                        uint8_t l_558 = 0xA3L;
                        uint32_t l_559 = 0xA064582CL;
                        int16_t l_560[6][7][3] = {{{0x543CL,0x2E58L,0L},{0x543CL,0x2E58L,0L},{0x543CL,0x2E58L,0L},{0x543CL,0x2E58L,0L},{0x543CL,0x2E58L,0L},{0x543CL,0x2E58L,0L},{0x543CL,0x2E58L,0L}},{{0x543CL,0x2E58L,0L},{0x543CL,0x2E58L,0L},{0x543CL,0x2E58L,0L},{0x543CL,0x2E58L,0L},{0x543CL,0x2E58L,0L},{0x543CL,0x2E58L,0L},{0x543CL,0x2E58L,0L}},{{0x543CL,0x2E58L,0L},{0x543CL,0x2E58L,0L},{0x543CL,0x2E58L,0L},{0x543CL,0x2E58L,0L},{0x543CL,0x2E58L,0L},{0x543CL,0x2E58L,0L},{0x543CL,0x2E58L,0L}},{{0x543CL,0x2E58L,0L},{0x543CL,0x2E58L,0L},{0x543CL,0x2E58L,0L},{0x543CL,0x2E58L,0L},{0x543CL,0x2E58L,0L},{0x543CL,0x2E58L,0L},{0x543CL,0x2E58L,0L}},{{0x543CL,0x2E58L,0L},{0x543CL,0x2E58L,0L},{0x543CL,0x2E58L,0L},{0x543CL,0x2E58L,0L},{0x543CL,0x2E58L,0L},{0x543CL,0x2E58L,0L},{0x543CL,0x2E58L,0L}},{{0x543CL,0x2E58L,0L},{0x543CL,0x2E58L,0L},{0x543CL,0x2E58L,0L},{0x543CL,0x2E58L,0L},{0x543CL,0x2E58L,0L},{0x543CL,0x2E58L,0L},{0x543CL,0x2E58L,0L}}};
                        int i, j, k;
                        l_292 |= l_556[l_557];
                        l_437 &= ((l_558 , l_559) , l_560[5][1][0]);
                    }
                }
            }
            else
            { /* block id: 383 */
                int32_t l_561 = (-1L);
                for (l_561 = 0; (l_561 >= (-11)); l_561 = safe_sub_func_int64_t_s_s(l_561, 1))
                { /* block id: 386 */
                    int16_t l_564[8] = {0x4A03L,0x4D0CL,0x4A03L,0x4A03L,0x4D0CL,0x4A03L,0x4A03L,0x4D0CL};
                    struct S0 **l_565 = (void*)0;
                    uint8_t l_566[8];
                    uint16_t l_567 = 65534UL;
                    int32_t l_568 = (-1L);
                    int32_t l_569[7][1];
                    int i, j;
                    for (i = 0; i < 8; i++)
                        l_566[i] = 0x2DL;
                    for (i = 0; i < 7; i++)
                    {
                        for (j = 0; j < 1; j++)
                            l_569[i][j] = 0x406942BFL;
                    }
                    l_565 = (l_564[3] , (void*)0);
                    l_566[6] = (-2L);
                    l_437 = ((l_567 , l_568) , l_569[6][0]);
                }
            }
            l_292 = 0x4400EC5BL;
        }
        l_573 = (l_572 = (l_571 = l_570));
        unsigned int result = 0;
        result += l_292;
        result += l_430;
        result += l_433;
        atomic_add(&p_1700->l_special_values[10], result);
    }
    else
    { /* block id: 397 */
        (1 + 1);
    }
    p_57 = l_574;
    return (*l_574);
}


/* ------------------------------------------ */
/* 
 * reads : p_1700->g_127 p_1700->g_97 p_1700->g_83 p_1700->g_86 p_1700->g_203 p_1700->g_102 p_1700->g_166 p_1700->g_74 p_1700->g_76 p_1700->g_215 p_1700->g_185 p_1700->g_38 p_1700->g_236.f3 p_1700->g_239 p_1700->g_207 p_1700->g_238 p_1700->g_285 p_1700->g_236.f5 p_1700->g_213
 * writes: p_1700->g_246 p_1700->g_119 p_1700->g_203 p_1700->g_74 p_1700->g_76 p_1700->g_213 p_1700->g_234 p_1700->g_238 p_1700->g_239 p_1700->g_262 p_1700->g_285 p_1700->g_236.f5 p_1700->g_116
 */
int32_t * func_58(int64_t  p_59, int32_t * p_60, int32_t * p_61, int32_t * p_62, int8_t  p_63, struct S2 * p_1700)
{ /* block id: 103 */
    uint32_t *l_245[10][7] = {{&p_1700->g_246,&p_1700->g_246,&p_1700->g_246,&p_1700->g_246,&p_1700->g_246,&p_1700->g_246,&p_1700->g_246},{&p_1700->g_246,&p_1700->g_246,&p_1700->g_246,&p_1700->g_246,&p_1700->g_246,&p_1700->g_246,&p_1700->g_246},{&p_1700->g_246,&p_1700->g_246,&p_1700->g_246,&p_1700->g_246,&p_1700->g_246,&p_1700->g_246,&p_1700->g_246},{&p_1700->g_246,&p_1700->g_246,&p_1700->g_246,&p_1700->g_246,&p_1700->g_246,&p_1700->g_246,&p_1700->g_246},{&p_1700->g_246,&p_1700->g_246,&p_1700->g_246,&p_1700->g_246,&p_1700->g_246,&p_1700->g_246,&p_1700->g_246},{&p_1700->g_246,&p_1700->g_246,&p_1700->g_246,&p_1700->g_246,&p_1700->g_246,&p_1700->g_246,&p_1700->g_246},{&p_1700->g_246,&p_1700->g_246,&p_1700->g_246,&p_1700->g_246,&p_1700->g_246,&p_1700->g_246,&p_1700->g_246},{&p_1700->g_246,&p_1700->g_246,&p_1700->g_246,&p_1700->g_246,&p_1700->g_246,&p_1700->g_246,&p_1700->g_246},{&p_1700->g_246,&p_1700->g_246,&p_1700->g_246,&p_1700->g_246,&p_1700->g_246,&p_1700->g_246,&p_1700->g_246},{&p_1700->g_246,&p_1700->g_246,&p_1700->g_246,&p_1700->g_246,&p_1700->g_246,&p_1700->g_246,&p_1700->g_246}};
    int32_t l_247 = 1L;
    int32_t l_256 = 0x7C292048L;
    uint64_t *l_257 = &p_1700->g_119;
    uint16_t *l_258 = &p_1700->g_203;
    int16_t l_259[5];
    int8_t *l_260 = &p_1700->g_238;
    int32_t l_261 = 2L;
    uint32_t *l_280 = &p_1700->g_236.f3;
    uint32_t **l_279 = &l_280;
    int i, j;
    for (i = 0; i < 5; i++)
        l_259[i] = 0x2F3BL;
    p_1700->g_262[1] = func_66((l_261 = (safe_add_func_uint16_t_u_u((((l_247 = (p_1700->g_246 = FAKE_DIVERGE(p_1700->local_2_offset, get_local_id(2), 10))) , p_1700->g_127) != (safe_mod_func_int16_t_s_s(((safe_sub_func_int8_t_s_s(((((0xD3C1D77C2A98AAB4L < ((safe_lshift_func_uint8_t_u_s(GROUP_DIVERGE(1, 1), 6)) < ((((safe_sub_func_uint16_t_u_u(((*l_258) ^= (l_256 = ((((l_256 || ((0x6A5D62FFCCE80481L ^ (FAKE_DIVERGE(p_1700->local_2_offset, get_local_id(2), 10) & ((*l_257) = p_59))) || ((p_1700->g_97 == 0x1C56E4C1123FF138L) | p_1700->g_83[5][1][1]))) , (p_1700->g_86 ^ p_63)) && l_256) >= (-1L)))), p_59)) == l_259[2]) , &p_1700->g_238) == l_260))) , &p_1700->g_127) == l_257) <= p_1700->g_102), 0x1BL)) > l_259[2]), l_259[2]))), l_259[2]))), l_259[4], p_1700);
    p_1700->g_262[1] = func_66((l_247 < ((safe_mod_func_int32_t_s_s((safe_mul_func_uint16_t_u_u((safe_mod_func_uint32_t_u_u((((safe_lshift_func_uint8_t_u_s(p_59, (((safe_mul_func_int8_t_s_s((p_63 ^= ((*l_260) = ((safe_sub_func_int16_t_s_s((((*l_279) = ((((void*)0 != l_257) == (((safe_sub_func_uint16_t_u_u((((void*)0 == p_1700->g_207) != p_1700->g_238), p_1700->g_76[0])) < p_59) || p_1700->g_238)) , (void*)0)) != &p_1700->g_74), 65535UL)) , l_259[2]))), p_1700->g_102)) <= FAKE_DIVERGE(p_1700->global_0_offset, get_global_id(0), 10)) & FAKE_DIVERGE(p_1700->global_0_offset, get_global_id(0), 10)))) , FAKE_DIVERGE(p_1700->group_1_offset, get_group_id(1), 10)) ^ 0x08C4L), p_1700->g_185)), GROUP_DIVERGE(2, 1))), p_59)) >= p_1700->g_76[0])), l_259[2], p_1700);
    for (p_63 = (-29); (p_63 <= 16); p_63 = safe_add_func_uint64_t_u_u(p_63, 4))
    { /* block id: 117 */
        int32_t l_283 = 7L;
        int32_t *l_284[3];
        int i;
        for (i = 0; i < 3; i++)
            l_284[i] = &p_1700->g_215;
        if (l_283)
            break;
        --p_1700->g_285;
    }
    for (p_1700->g_236.f5 = 0; (p_1700->g_236.f5 <= 6); ++p_1700->g_236.f5)
    { /* block id: 123 */
        for (p_63 = 0; (p_63 > 24); p_63 = safe_add_func_uint16_t_u_u(p_63, 9))
        { /* block id: 126 */
            (*p_60) ^= (*p_1700->g_166);
        }
        for (p_1700->g_116 = 0; p_1700->g_116 < 5; p_1700->g_116 += 1)
        {
            l_259[p_1700->g_116] = 9L;
        }
    }
    return &p_1700->g_76[2];
}


/* ------------------------------------------ */
/* 
 * reads : p_1700->g_166 p_1700->g_74 p_1700->g_76 p_1700->g_215 p_1700->g_185 p_1700->g_38 p_1700->g_203 p_1700->g_236.f3 p_1700->g_239
 * writes: p_1700->g_74 p_1700->g_76 p_1700->g_213 p_1700->g_234 p_1700->g_238 p_1700->g_239
 */
int32_t * func_66(uint32_t  p_67, uint32_t  p_68, struct S2 * p_1700)
{ /* block id: 91 */
    uint64_t l_211 = 0x771C00C6816663C9L;
    int32_t *l_212 = &p_1700->g_213[7];
    int32_t *l_214[3];
    uint8_t l_216 = 0UL;
    int8_t *l_233 = &p_1700->g_234[2][0];
    struct S0 *l_235 = &p_1700->g_236;
    int8_t *l_237[10] = {&p_1700->g_238,(void*)0,&p_1700->g_238,&p_1700->g_238,(void*)0,&p_1700->g_238,&p_1700->g_238,(void*)0,&p_1700->g_238,&p_1700->g_238};
    int32_t *l_240 = &p_1700->g_213[8];
    int32_t **l_241 = (void*)0;
    int32_t **l_242 = &l_240;
    int i;
    for (i = 0; i < 3; i++)
        l_214[i] = &p_1700->g_215;
    (*p_1700->g_166) = p_68;
    l_216 &= (safe_sub_func_int32_t_s_s(l_211, ((*l_212) = ((*p_1700->g_166) ^= 0x680098B6L))));
    p_1700->g_239 ^= ((safe_mod_func_uint32_t_u_u(0x75CAE92EL, ((safe_mul_func_int8_t_s_s(((safe_lshift_func_int8_t_s_u((p_1700->g_238 = ((((safe_sub_func_uint8_t_u_u(((((safe_sub_func_uint8_t_u_u(p_67, (((*p_1700->g_166) = 0x60912B0DL) || ((safe_lshift_func_int8_t_s_s(((*l_233) = ((~(((safe_add_func_int8_t_s_s((~(((((*l_212) = p_1700->g_215) >= (1UL >= p_68)) > 18446744073709551612UL) || 6UL)), p_68)) <= p_1700->g_215) , p_68)) <= 0L)), 7)) || 0x3068350E1AF0F92EL)))) | p_1700->g_185) <= p_1700->g_38[1]) == p_1700->g_203), (-1L))) , l_235) != l_235) , 0x33L)), p_1700->g_236.f3)) <= p_67), p_67)) ^ 0L))) != p_1700->g_38[2]);
    (*l_242) = l_240;
    return &p_1700->g_213[3];
}


/* ------------------------------------------ */
/* 
 * reads : p_1700->g_76 p_1700->g_38 p_1700->g_97 p_1700->g_83 p_1700->g_102 p_1700->g_74 p_1700->g_116 p_1700->g_127 p_1700->g_86 p_1700->g_166 p_1700->g_185 p_1700->g_203 p_1700->g_205 p_1700->g_207
 * writes: p_1700->g_76 p_1700->g_97 p_1700->g_102 p_1700->g_116 p_1700->g_119 p_1700->g_38 p_1700->g_127 p_1700->g_74 p_1700->g_86 p_1700->g_166 p_1700->g_203 p_1700->g_83 p_1700->g_205
 */
uint32_t  func_69(uint32_t  p_70, int16_t  p_71, int32_t * p_72, struct S2 * p_1700)
{ /* block id: 12 */
    int32_t *l_75 = &p_1700->g_76[2];
    int32_t l_77 = 0L;
    int32_t *l_78 = &l_77;
    int32_t *l_79 = &p_1700->g_76[2];
    int32_t *l_80 = (void*)0;
    int32_t *l_81[7];
    int64_t l_82 = (-6L);
    int32_t l_84 = 1L;
    int16_t l_85 = (-9L);
    int32_t l_87 = 0x23CD4DB0L;
    uint32_t l_88 = 4294967295UL;
    int8_t l_117 = (-1L);
    int i;
    for (i = 0; i < 7; i++)
        l_81[i] = (void*)0;
    l_88++;
    (*l_75) |= (p_72 == &p_1700->g_76[2]);
    for (l_82 = 2; (l_82 >= 0); l_82 -= 1)
    { /* block id: 17 */
        int64_t *l_100 = (void*)0;
        int64_t *l_101 = &p_1700->g_102;
        int32_t l_115 = 0x443ECF06L;
        int32_t l_118 = 0x01BA7637L;
        int32_t l_120[7][3] = {{0L,0x2B7B014AL,1L},{0L,0x2B7B014AL,1L},{0L,0x2B7B014AL,1L},{0L,0x2B7B014AL,1L},{0L,0x2B7B014AL,1L},{0L,0x2B7B014AL,1L},{0L,0x2B7B014AL,1L}};
        uint32_t *l_122 = &p_1700->g_74;
        uint32_t **l_121 = &l_122;
        int32_t l_143 = 0x4EDE75B7L;
        int32_t *l_165 = &l_120[5][1];
        struct S0 *l_208 = (void*)0;
        int i, j;
        l_120[5][1] &= (((p_1700->g_119 = (safe_add_func_uint16_t_u_u(FAKE_DIVERGE(p_1700->global_1_offset, get_global_id(1), 10), ((p_1700->g_38[l_82] , ((((*l_75) = p_71) , ((void*)0 != &p_1700->g_46)) && ((((l_118 |= ((safe_div_func_uint64_t_u_u((((GROUP_DIVERGE(0, 1) == (((((((p_1700->g_97++) ^ ((*l_101) ^= p_1700->g_83[5][1][1])) & (((p_71 <= (safe_mul_func_uint16_t_u_u((p_1700->g_38[2] & (safe_mod_func_int64_t_s_s((p_1700->g_116 |= (safe_mod_func_int8_t_s_s((safe_mul_func_int16_t_s_s((l_115 |= (safe_div_func_int64_t_s_s(p_1700->g_74, ((safe_lshift_func_uint8_t_u_u(0xB0L, 6)) ^ p_1700->g_38[l_82])))), 65533UL)), (*l_75)))), 0x07EEEA616365C24DL))), l_117))) > p_1700->g_38[l_82]) ^ 18446744073709551615UL)) ^ p_70) & p_1700->g_38[l_82]) & p_1700->g_83[5][1][1]) > p_1700->g_38[1])) , 0x3599E847L) && p_71), p_70)) <= (*l_78))) , (void*)0) == (void*)0) , l_118))) > FAKE_DIVERGE(p_1700->global_0_offset, get_global_id(0), 10))))) <= 0xA215L) && (-1L));
        (*l_75) = (*p_72);
        if (p_1700->g_83[5][1][1])
            break;
        if (((l_81[4] == ((*l_121) = &p_70)) >= ((*l_75) &= (safe_rshift_func_int16_t_s_u(((void*)0 != &p_70), 4)))))
        { /* block id: 30 */
            uint16_t l_142 = 0UL;
            int32_t l_159[6] = {(-1L),0x6659C981L,(-1L),(-1L),0x6659C981L,(-1L)};
            int i;
            for (p_1700->g_119 = 0; (p_1700->g_119 <= 2); p_1700->g_119 += 1)
            { /* block id: 33 */
                uint32_t *l_125 = &p_1700->g_116;
                uint64_t *l_126 = &p_1700->g_127;
                int8_t *l_141 = &l_117;
                uint32_t l_150 = 4294967295UL;
                int32_t l_155 = 0x1CB252DFL;
                int32_t l_156 = 1L;
                int32_t l_157 = (-1L);
                int32_t l_158 = (-9L);
                int i;
                (*p_72) |= (((p_1700->g_38[l_82] = 1UL) == ((*l_125) = 4294967295UL)) , ((p_71 != (FAKE_DIVERGE(p_1700->group_0_offset, get_group_id(0), 10) , ((p_1700->g_38[l_82] || ((*l_126)--)) & (((safe_sub_func_uint32_t_u_u((safe_mul_func_uint8_t_u_u(l_120[5][1], (~(safe_lshift_func_uint8_t_u_s((safe_mod_func_uint32_t_u_u(((((safe_unary_minus_func_int8_t_s(((safe_lshift_func_int8_t_s_s(((*l_141) = (p_70 , (p_71 >= GROUP_DIVERGE(1, 1)))), ((((p_70 != 2UL) ^ p_70) , FAKE_DIVERGE(p_1700->local_2_offset, get_local_id(2), 10)) , 1L))) & GROUP_DIVERGE(1, 1)))) || p_1700->g_83[1][4][1]) | 0x5337L) && GROUP_DIVERGE(0, 1)), (-1L))), 0))))), p_1700->g_76[2])) , FAKE_DIVERGE(p_1700->local_2_offset, get_local_id(2), 10)) >= l_142)))) > l_143));
                (*p_72) = (safe_sub_func_uint8_t_u_u((p_1700->g_38[0] , (((~0x02B9B188DA37289FL) & (p_1700->g_74 , (((p_70 == (((l_143 <= ((*p_72) >= (safe_add_func_int32_t_s_s((*l_78), (((p_1700->g_86 & 0L) > l_150) <= p_1700->g_76[2]))))) ^ 0x7D7560A1L) <= l_120[5][1])) ^ p_1700->g_38[l_82]) | p_70))) || 0xEF8BF8A4L)), 0x86L));
                for (p_1700->g_86 = 0; (p_1700->g_86 == 22); p_1700->g_86++)
                { /* block id: 42 */
                    int16_t l_160 = 0L;
                    int32_t **l_164[4][1];
                    int i, j;
                    for (i = 0; i < 4; i++)
                    {
                        for (j = 0; j < 1; j++)
                            l_164[i][j] = (void*)0;
                    }
                    for (l_77 = 1; (l_77 == 20); l_77++)
                    { /* block id: 45 */
                        uint32_t l_161 = 0x8853CA86L;
                        l_161--;
                    }
                    p_1700->g_166 = (l_165 = p_72);
                }
                (*p_1700->g_166) = 0x17403510L;
            }
            for (l_88 = 0; (l_88 <= 1); l_88 += 1)
            { /* block id: 55 */
                int i;
                (*p_1700->g_166) |= (((p_1700->g_119 = p_1700->g_38[l_88]) == (+p_71)) >= (p_70 , (safe_add_func_uint16_t_u_u(p_70, 0L))));
                for (p_1700->g_74 = 0; (p_1700->g_74 <= 1); p_1700->g_74 += 1)
                { /* block id: 60 */
                    int32_t l_204 = 0x61F614FDL;
                    for (l_118 = 1; (l_118 >= 0); l_118 -= 1)
                    { /* block id: 63 */
                        int i;
                        l_159[l_88] = (safe_div_func_uint8_t_u_u(((((((l_159[(p_1700->g_74 + 2)] ^ (safe_mod_func_int16_t_s_s((!(safe_mul_func_uint16_t_u_u((GROUP_DIVERGE(2, 1) != ((safe_sub_func_int16_t_s_s(0L, (safe_mul_func_uint8_t_u_u(p_1700->g_38[0], ((p_70 != (((safe_div_func_int32_t_s_s((*p_72), l_159[(p_1700->g_74 + 2)])) != ((((safe_div_func_int16_t_s_s(l_159[(p_1700->g_74 + 2)], p_70)) != (((p_1700->g_86 <= p_71) ^ (*l_75)) & l_159[(p_1700->g_74 + 2)])) , (void*)0) == (void*)0)) , p_70)) || 0x9A4D2738DFAD1FEDL))))) == 0xD7DD46AAL)), 0x1999L))), p_1700->g_83[2][3][0]))) > p_1700->g_185) || 253UL) , 0UL) , 0x48F6L) || p_1700->g_38[l_88]), 0x2AL));
                    }
                    for (l_84 = 0; (l_84 <= 2); l_84 += 1)
                    { /* block id: 68 */
                        struct S0 *l_187 = (void*)0;
                        struct S0 **l_186 = &l_187;
                        uint64_t *l_192 = &p_1700->g_127;
                        int i, j, k;
                        if ((*p_72))
                            break;
                        (*l_186) = (void*)0;
                        p_1700->g_205 &= (safe_mod_func_int8_t_s_s((safe_mod_func_int64_t_s_s((((*l_192) = p_1700->g_76[2]) || ((*p_72) == 0UL)), ((p_1700->g_38[(l_88 + 1)] = 4294967293UL) ^ (((safe_lshift_func_int8_t_s_s(((((p_1700->g_83[(l_88 + 3)][(l_88 + 2)][p_1700->g_74] = ((safe_lshift_func_uint8_t_u_u((((*l_78) = (p_71 >= 0x05E57243L)) ^ (p_1700->g_203 |= ((~(safe_rshift_func_int8_t_s_s((0xD4907A83FE983FBAL != (-3L)), 2))) <= ((safe_div_func_int16_t_s_s(((safe_sub_func_int8_t_s_s(p_70, 1UL)) ^ p_71), 0xEEC7L)) < (-1L))))), 2)) , l_204)) , (-8L)) , 0x1D3457CD9FBB120FL) ^ 0x357F08318B369BE1L), p_71)) , 0x73957556L) , p_1700->g_86)))), 0xCDL));
                    }
                }
            }
            for (l_88 = 0; (l_88 <= 2); l_88 += 1)
            { /* block id: 82 */
                int32_t **l_206 = &l_79;
                (*l_206) = (void*)0;
            }
        }
        else
        { /* block id: 85 */
            l_208 = p_1700->g_207;
            return p_70;
        }
    }
    return p_71;
}


__kernel void entry(__global ulong *result, __global volatile uint *g_atomic_input, __global volatile uint *g_special_values, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_input[25];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 25; i++)
            l_atomic_input[i] = 0;
    __local volatile uint32_t l_special_values[25];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 25; i++)
            l_special_values[i] = 0;
    struct S2 c_1701;
    struct S2* p_1700 = &c_1701;
    struct S2 c_1702 = {
        (-2L), // p_1700->g_4
        {{{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L}},{{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L}},{{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L}},{{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L}},{{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L}},{{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L}},{{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L}},{{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L}},{{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L}},{{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L},{0x26EDAD94L,0x3DF2EF51L}}}, // p_1700->g_7
        {{0x4FFDEABFL,0x4FFDEABFL,0x4FFDEABFL,0x4FFDEABFL,0x4FFDEABFL,0x4FFDEABFL,0x4FFDEABFL,0x4FFDEABFL},{0x4FFDEABFL,0x4FFDEABFL,0x4FFDEABFL,0x4FFDEABFL,0x4FFDEABFL,0x4FFDEABFL,0x4FFDEABFL,0x4FFDEABFL},{0x4FFDEABFL,0x4FFDEABFL,0x4FFDEABFL,0x4FFDEABFL,0x4FFDEABFL,0x4FFDEABFL,0x4FFDEABFL,0x4FFDEABFL},{0x4FFDEABFL,0x4FFDEABFL,0x4FFDEABFL,0x4FFDEABFL,0x4FFDEABFL,0x4FFDEABFL,0x4FFDEABFL,0x4FFDEABFL},{0x4FFDEABFL,0x4FFDEABFL,0x4FFDEABFL,0x4FFDEABFL,0x4FFDEABFL,0x4FFDEABFL,0x4FFDEABFL,0x4FFDEABFL},{0x4FFDEABFL,0x4FFDEABFL,0x4FFDEABFL,0x4FFDEABFL,0x4FFDEABFL,0x4FFDEABFL,0x4FFDEABFL,0x4FFDEABFL},{0x4FFDEABFL,0x4FFDEABFL,0x4FFDEABFL,0x4FFDEABFL,0x4FFDEABFL,0x4FFDEABFL,0x4FFDEABFL,0x4FFDEABFL},{0x4FFDEABFL,0x4FFDEABFL,0x4FFDEABFL,0x4FFDEABFL,0x4FFDEABFL,0x4FFDEABFL,0x4FFDEABFL,0x4FFDEABFL},{0x4FFDEABFL,0x4FFDEABFL,0x4FFDEABFL,0x4FFDEABFL,0x4FFDEABFL,0x4FFDEABFL,0x4FFDEABFL,0x4FFDEABFL}}, // p_1700->g_18
        0x0AF03FA9L, // p_1700->g_22
        {4294967289UL,4294967289UL,4294967289UL}, // p_1700->g_38
        8L, // p_1700->g_46
        1UL, // p_1700->g_74
        {1L,1L,1L,1L}, // p_1700->g_76
        {{{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L}},{{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L}},{{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L}},{{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L}},{{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L}},{{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L}},{{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L}},{{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L}},{{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L},{1L,1L}}}, // p_1700->g_83
        (-1L), // p_1700->g_86
        0xF4329A42L, // p_1700->g_97
        0x3B60CE8AD497385AL, // p_1700->g_102
        4294967289UL, // p_1700->g_116
        0x7C4FD43417B0AFA0L, // p_1700->g_119
        0x3F60D9F0A52D6D3DL, // p_1700->g_127
        &p_1700->g_76[2], // p_1700->g_166
        0x4B2EL, // p_1700->g_185
        0x9460L, // p_1700->g_203
        0xF92CL, // p_1700->g_205
        (void*)0, // p_1700->g_207
        {(-10L),0L,(-1L),0L,(-10L),(-10L),0L,(-1L),0L,(-10L)}, // p_1700->g_213
        0x3F6DD1D8L, // p_1700->g_215
        {{0L},{0L},{0L},{0L}}, // p_1700->g_234
        {6UL,1UL,0x0700E3CFL,4294967295UL,0x341DB6063B8ECFAEL,-3L,0xCE87L,4294967295UL,0x5F0FL}, // p_1700->g_236
        0x00L, // p_1700->g_238
        (-1L), // p_1700->g_239
        4294967292UL, // p_1700->g_246
        {&p_1700->g_213[7],&p_1700->g_213[7]}, // p_1700->g_262
        0x5124L, // p_1700->g_285
        &p_1700->g_236.f3, // p_1700->g_650
        &p_1700->g_650, // p_1700->g_649
        {0L}, // p_1700->g_745
        0x6388959CL, // p_1700->g_746
        0x6FL, // p_1700->g_747
        (-10L), // p_1700->g_782
        (-4L), // p_1700->g_832
        (void*)0, // p_1700->g_848
        &p_1700->g_848, // p_1700->g_847
        0xE4894C5C059E7E80L, // p_1700->g_881
        0x66E1L, // p_1700->g_900
        {{0x89F5L,1UL,0L,4294967295UL,18446744073709551610UL,0x75D0BAB7L,0xC43EL,0x70ED7E1CL,1L},{0x89F5L,1UL,0L,4294967295UL,18446744073709551610UL,0x75D0BAB7L,0xC43EL,0x70ED7E1CL,1L},{0x89F5L,1UL,0L,4294967295UL,18446744073709551610UL,0x75D0BAB7L,0xC43EL,0x70ED7E1CL,1L},{0x89F5L,1UL,0L,4294967295UL,18446744073709551610UL,0x75D0BAB7L,0xC43EL,0x70ED7E1CL,1L},{0x89F5L,1UL,0L,4294967295UL,18446744073709551610UL,0x75D0BAB7L,0xC43EL,0x70ED7E1CL,1L},{0x89F5L,1UL,0L,4294967295UL,18446744073709551610UL,0x75D0BAB7L,0xC43EL,0x70ED7E1CL,1L},{0x89F5L,1UL,0L,4294967295UL,18446744073709551610UL,0x75D0BAB7L,0xC43EL,0x70ED7E1CL,1L},{0x89F5L,1UL,0L,4294967295UL,18446744073709551610UL,0x75D0BAB7L,0xC43EL,0x70ED7E1CL,1L},{0x89F5L,1UL,0L,4294967295UL,18446744073709551610UL,0x75D0BAB7L,0xC43EL,0x70ED7E1CL,1L},{0x89F5L,1UL,0L,4294967295UL,18446744073709551610UL,0x75D0BAB7L,0xC43EL,0x70ED7E1CL,1L}}, // p_1700->g_945
        (void*)0, // p_1700->g_959
        &p_1700->g_959, // p_1700->g_958
        {65527UL,0x6959EDAAL,7L,0x2D22L,0x3413L,1UL,4294967290UL}, // p_1700->g_963
        {0x0758L,1UL,3L,4UL,0xE69DEB3A2A935052L,0L,65535UL,0x91D28D09L,0x6C20L}, // p_1700->g_1027
        {{{0x504CL,0x74FA04527FDCDAFDL,0x522437E4L,0UL,0xB8A004A05422D1C8L,7L,1UL,0UL,-9L},{1UL,0x78F1A26BC0B60DFAL,-6L,4294967295UL,0x507B1F1A279559DEL,9L,1UL,0xEE94E78EL,0x67BFL},{1UL,0x78F1A26BC0B60DFAL,-6L,4294967295UL,0x507B1F1A279559DEL,9L,1UL,0xEE94E78EL,0x67BFL},{0x504CL,0x74FA04527FDCDAFDL,0x522437E4L,0UL,0xB8A004A05422D1C8L,7L,1UL,0UL,-9L},{0UL,1UL,0x3E4F742CL,0xAAA48FEBL,0xCAAB96ED0D82A1DBL,-1L,0xC525L,0xBEAC1792L,0x73A0L},{0UL,0xCFF4B8E965D7A6A7L,-5L,0xE93AEDFCL,18446744073709551612UL,0x5BD81E97L,0x0B85L,1UL,-1L},{65535UL,9UL,1L,0UL,0x9ECDA6E1E9D40F01L,0x4CB9E2E7L,0x5036L,0UL,0x645FL},{2UL,0UL,4L,0x38FABA5EL,0xF17EFE1D2EEA81EBL,0x09EC7961L,0x54F1L,4294967290UL,-1L}},{{0x504CL,0x74FA04527FDCDAFDL,0x522437E4L,0UL,0xB8A004A05422D1C8L,7L,1UL,0UL,-9L},{1UL,0x78F1A26BC0B60DFAL,-6L,4294967295UL,0x507B1F1A279559DEL,9L,1UL,0xEE94E78EL,0x67BFL},{1UL,0x78F1A26BC0B60DFAL,-6L,4294967295UL,0x507B1F1A279559DEL,9L,1UL,0xEE94E78EL,0x67BFL},{0x504CL,0x74FA04527FDCDAFDL,0x522437E4L,0UL,0xB8A004A05422D1C8L,7L,1UL,0UL,-9L},{0UL,1UL,0x3E4F742CL,0xAAA48FEBL,0xCAAB96ED0D82A1DBL,-1L,0xC525L,0xBEAC1792L,0x73A0L},{0UL,0xCFF4B8E965D7A6A7L,-5L,0xE93AEDFCL,18446744073709551612UL,0x5BD81E97L,0x0B85L,1UL,-1L},{65535UL,9UL,1L,0UL,0x9ECDA6E1E9D40F01L,0x4CB9E2E7L,0x5036L,0UL,0x645FL},{2UL,0UL,4L,0x38FABA5EL,0xF17EFE1D2EEA81EBL,0x09EC7961L,0x54F1L,4294967290UL,-1L}},{{0x504CL,0x74FA04527FDCDAFDL,0x522437E4L,0UL,0xB8A004A05422D1C8L,7L,1UL,0UL,-9L},{1UL,0x78F1A26BC0B60DFAL,-6L,4294967295UL,0x507B1F1A279559DEL,9L,1UL,0xEE94E78EL,0x67BFL},{1UL,0x78F1A26BC0B60DFAL,-6L,4294967295UL,0x507B1F1A279559DEL,9L,1UL,0xEE94E78EL,0x67BFL},{0x504CL,0x74FA04527FDCDAFDL,0x522437E4L,0UL,0xB8A004A05422D1C8L,7L,1UL,0UL,-9L},{0UL,1UL,0x3E4F742CL,0xAAA48FEBL,0xCAAB96ED0D82A1DBL,-1L,0xC525L,0xBEAC1792L,0x73A0L},{0UL,0xCFF4B8E965D7A6A7L,-5L,0xE93AEDFCL,18446744073709551612UL,0x5BD81E97L,0x0B85L,1UL,-1L},{65535UL,9UL,1L,0UL,0x9ECDA6E1E9D40F01L,0x4CB9E2E7L,0x5036L,0UL,0x645FL},{2UL,0UL,4L,0x38FABA5EL,0xF17EFE1D2EEA81EBL,0x09EC7961L,0x54F1L,4294967290UL,-1L}},{{0x504CL,0x74FA04527FDCDAFDL,0x522437E4L,0UL,0xB8A004A05422D1C8L,7L,1UL,0UL,-9L},{1UL,0x78F1A26BC0B60DFAL,-6L,4294967295UL,0x507B1F1A279559DEL,9L,1UL,0xEE94E78EL,0x67BFL},{1UL,0x78F1A26BC0B60DFAL,-6L,4294967295UL,0x507B1F1A279559DEL,9L,1UL,0xEE94E78EL,0x67BFL},{0x504CL,0x74FA04527FDCDAFDL,0x522437E4L,0UL,0xB8A004A05422D1C8L,7L,1UL,0UL,-9L},{0UL,1UL,0x3E4F742CL,0xAAA48FEBL,0xCAAB96ED0D82A1DBL,-1L,0xC525L,0xBEAC1792L,0x73A0L},{0UL,0xCFF4B8E965D7A6A7L,-5L,0xE93AEDFCL,18446744073709551612UL,0x5BD81E97L,0x0B85L,1UL,-1L},{65535UL,9UL,1L,0UL,0x9ECDA6E1E9D40F01L,0x4CB9E2E7L,0x5036L,0UL,0x645FL},{2UL,0UL,4L,0x38FABA5EL,0xF17EFE1D2EEA81EBL,0x09EC7961L,0x54F1L,4294967290UL,-1L}},{{0x504CL,0x74FA04527FDCDAFDL,0x522437E4L,0UL,0xB8A004A05422D1C8L,7L,1UL,0UL,-9L},{1UL,0x78F1A26BC0B60DFAL,-6L,4294967295UL,0x507B1F1A279559DEL,9L,1UL,0xEE94E78EL,0x67BFL},{1UL,0x78F1A26BC0B60DFAL,-6L,4294967295UL,0x507B1F1A279559DEL,9L,1UL,0xEE94E78EL,0x67BFL},{0x504CL,0x74FA04527FDCDAFDL,0x522437E4L,0UL,0xB8A004A05422D1C8L,7L,1UL,0UL,-9L},{0UL,1UL,0x3E4F742CL,0xAAA48FEBL,0xCAAB96ED0D82A1DBL,-1L,0xC525L,0xBEAC1792L,0x73A0L},{0UL,0xCFF4B8E965D7A6A7L,-5L,0xE93AEDFCL,18446744073709551612UL,0x5BD81E97L,0x0B85L,1UL,-1L},{65535UL,9UL,1L,0UL,0x9ECDA6E1E9D40F01L,0x4CB9E2E7L,0x5036L,0UL,0x645FL},{2UL,0UL,4L,0x38FABA5EL,0xF17EFE1D2EEA81EBL,0x09EC7961L,0x54F1L,4294967290UL,-1L}},{{0x504CL,0x74FA04527FDCDAFDL,0x522437E4L,0UL,0xB8A004A05422D1C8L,7L,1UL,0UL,-9L},{1UL,0x78F1A26BC0B60DFAL,-6L,4294967295UL,0x507B1F1A279559DEL,9L,1UL,0xEE94E78EL,0x67BFL},{1UL,0x78F1A26BC0B60DFAL,-6L,4294967295UL,0x507B1F1A279559DEL,9L,1UL,0xEE94E78EL,0x67BFL},{0x504CL,0x74FA04527FDCDAFDL,0x522437E4L,0UL,0xB8A004A05422D1C8L,7L,1UL,0UL,-9L},{0UL,1UL,0x3E4F742CL,0xAAA48FEBL,0xCAAB96ED0D82A1DBL,-1L,0xC525L,0xBEAC1792L,0x73A0L},{0UL,0xCFF4B8E965D7A6A7L,-5L,0xE93AEDFCL,18446744073709551612UL,0x5BD81E97L,0x0B85L,1UL,-1L},{65535UL,9UL,1L,0UL,0x9ECDA6E1E9D40F01L,0x4CB9E2E7L,0x5036L,0UL,0x645FL},{2UL,0UL,4L,0x38FABA5EL,0xF17EFE1D2EEA81EBL,0x09EC7961L,0x54F1L,4294967290UL,-1L}},{{0x504CL,0x74FA04527FDCDAFDL,0x522437E4L,0UL,0xB8A004A05422D1C8L,7L,1UL,0UL,-9L},{1UL,0x78F1A26BC0B60DFAL,-6L,4294967295UL,0x507B1F1A279559DEL,9L,1UL,0xEE94E78EL,0x67BFL},{1UL,0x78F1A26BC0B60DFAL,-6L,4294967295UL,0x507B1F1A279559DEL,9L,1UL,0xEE94E78EL,0x67BFL},{0x504CL,0x74FA04527FDCDAFDL,0x522437E4L,0UL,0xB8A004A05422D1C8L,7L,1UL,0UL,-9L},{0UL,1UL,0x3E4F742CL,0xAAA48FEBL,0xCAAB96ED0D82A1DBL,-1L,0xC525L,0xBEAC1792L,0x73A0L},{0UL,0xCFF4B8E965D7A6A7L,-5L,0xE93AEDFCL,18446744073709551612UL,0x5BD81E97L,0x0B85L,1UL,-1L},{65535UL,9UL,1L,0UL,0x9ECDA6E1E9D40F01L,0x4CB9E2E7L,0x5036L,0UL,0x645FL},{2UL,0UL,4L,0x38FABA5EL,0xF17EFE1D2EEA81EBL,0x09EC7961L,0x54F1L,4294967290UL,-1L}},{{0x504CL,0x74FA04527FDCDAFDL,0x522437E4L,0UL,0xB8A004A05422D1C8L,7L,1UL,0UL,-9L},{1UL,0x78F1A26BC0B60DFAL,-6L,4294967295UL,0x507B1F1A279559DEL,9L,1UL,0xEE94E78EL,0x67BFL},{1UL,0x78F1A26BC0B60DFAL,-6L,4294967295UL,0x507B1F1A279559DEL,9L,1UL,0xEE94E78EL,0x67BFL},{0x504CL,0x74FA04527FDCDAFDL,0x522437E4L,0UL,0xB8A004A05422D1C8L,7L,1UL,0UL,-9L},{0UL,1UL,0x3E4F742CL,0xAAA48FEBL,0xCAAB96ED0D82A1DBL,-1L,0xC525L,0xBEAC1792L,0x73A0L},{0UL,0xCFF4B8E965D7A6A7L,-5L,0xE93AEDFCL,18446744073709551612UL,0x5BD81E97L,0x0B85L,1UL,-1L},{65535UL,9UL,1L,0UL,0x9ECDA6E1E9D40F01L,0x4CB9E2E7L,0x5036L,0UL,0x645FL},{2UL,0UL,4L,0x38FABA5EL,0xF17EFE1D2EEA81EBL,0x09EC7961L,0x54F1L,4294967290UL,-1L}}}, // p_1700->g_1028
        {0x2B14L,0xAFB71B6354307E34L,-9L,4294967295UL,0x5097415D18C13F6CL,0x67CE4940L,0x5DFBL,0xA9D9ABFCL,-7L}, // p_1700->g_1042
        {65532UL,0x6F85A27FL,0x66E867CDL,0x0B72L,0x351CL,9UL,3UL}, // p_1700->g_1070
        {65535UL,1L,0x7C4F7DC5L,0x2BF4L,0xF071L,18446744073709551613UL,0x70CA9BE3L}, // p_1700->g_1073
        {{4294967288UL,4294967288UL,0xB2195505L,4294967289UL,4294967295UL,4294967289UL},{4294967288UL,4294967288UL,0xB2195505L,4294967289UL,4294967295UL,4294967289UL},{4294967288UL,4294967288UL,0xB2195505L,4294967289UL,4294967295UL,4294967289UL},{4294967288UL,4294967288UL,0xB2195505L,4294967289UL,4294967295UL,4294967289UL},{4294967288UL,4294967288UL,0xB2195505L,4294967289UL,4294967295UL,4294967289UL},{4294967288UL,4294967288UL,0xB2195505L,4294967289UL,4294967295UL,4294967289UL},{4294967288UL,4294967288UL,0xB2195505L,4294967289UL,4294967295UL,4294967289UL},{4294967288UL,4294967288UL,0xB2195505L,4294967289UL,4294967295UL,4294967289UL}}, // p_1700->g_1075
        0xFF58C47EL, // p_1700->g_1107
        {{{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0},{(void*)0,(void*)0}}}, // p_1700->g_1122
        {0x6EEFL,-7L,6L,-8L,1UL,0xE8B1C985263B5640L,4294967287UL}, // p_1700->g_1244
        {{0x2745L,0x27E3B020L,0x181D8FF6L,1L,0x7950L,0x4F165CDA2283309CL,4294967295UL},{0x2745L,0x27E3B020L,0x181D8FF6L,1L,0x7950L,0x4F165CDA2283309CL,4294967295UL},{0x2745L,0x27E3B020L,0x181D8FF6L,1L,0x7950L,0x4F165CDA2283309CL,4294967295UL},{0x2745L,0x27E3B020L,0x181D8FF6L,1L,0x7950L,0x4F165CDA2283309CL,4294967295UL}}, // p_1700->g_1245
        {65526UL,-1L,1L,0x3B32L,0x9302L,0xD2D93B59B70F0C9AL,0x9571C171L}, // p_1700->g_1246
        {&p_1700->g_1245[0],&p_1700->g_1246,&p_1700->g_1245[0],&p_1700->g_1245[0],&p_1700->g_1246,&p_1700->g_1245[0],&p_1700->g_1245[0]}, // p_1700->g_1243
        &p_1700->g_1243[4], // p_1700->g_1242
        &p_1700->g_1242, // p_1700->g_1241
        0L, // p_1700->g_1340
        {0x2E85L,0x4E85BB24L,0x5BB447F4L,0L,0x8DCFL,1UL,0x4011E3D2L}, // p_1700->g_1356
        255UL, // p_1700->g_1386
        {0x79D6L,0x02FEF842A541FD43L,0L,0xE0AF7D1FL,0xEF45EA8D1DA3278FL,0x064F6D27L,0x3B77L,0x3C08059BL,1L}, // p_1700->g_1394
        {{&p_1700->g_262[1],&p_1700->g_262[1],&p_1700->g_262[1],&p_1700->g_262[1]},{&p_1700->g_262[1],&p_1700->g_262[1],&p_1700->g_262[1],&p_1700->g_262[1]},{&p_1700->g_262[1],&p_1700->g_262[1],&p_1700->g_262[1],&p_1700->g_262[1]}}, // p_1700->g_1413
        (void*)0, // p_1700->g_1427
        0x56F2987AL, // p_1700->g_1493
        {&p_1700->g_46,&p_1700->g_46,&p_1700->g_46,&p_1700->g_46}, // p_1700->g_1532
        &p_1700->g_76[2], // p_1700->g_1533
        (-1L), // p_1700->g_1564
        &p_1700->g_262[1], // p_1700->g_1579
        {0xADDCL,0x1E5D5E95B8D5ADC8L,9L,0x636532D3L,4UL,0x3C870A98L,65535UL,5UL,-8L}, // p_1700->g_1586
        2L, // p_1700->g_1589
        &p_1700->g_1589, // p_1700->g_1588
        &p_1700->g_1588, // p_1700->g_1587
        (void*)0, // p_1700->g_1604
        {0xA74FL,18446744073709551615UL,0x36A31B49L,5UL,0x285E151D27CCEC81L,1L,0x1BD9L,1UL,0x508EL}, // p_1700->g_1615
        {0xE21AL,18446744073709551615UL,1L,0xFEE26B9AL,1UL,0x4803546AL,0x2044L,0x5841F2F0L,1L}, // p_1700->g_1616
        &p_1700->g_1386, // p_1700->g_1620
        &p_1700->g_1620, // p_1700->g_1619
        sequence_input[get_global_id(0)], // p_1700->global_0_offset
        sequence_input[get_global_id(1)], // p_1700->global_1_offset
        sequence_input[get_global_id(2)], // p_1700->global_2_offset
        sequence_input[get_local_id(0)], // p_1700->local_0_offset
        sequence_input[get_local_id(1)], // p_1700->local_1_offset
        sequence_input[get_local_id(2)], // p_1700->local_2_offset
        sequence_input[get_group_id(0)], // p_1700->group_0_offset
        sequence_input[get_group_id(1)], // p_1700->group_1_offset
        sequence_input[get_group_id(2)], // p_1700->group_2_offset
        l_atomic_input, // l_atomic_input
        l_special_values, // l_special_values
        g_atomic_input, // g_atomic_input
        g_special_values, // g_special_values
    };
    c_1701 = c_1702;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1700);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1700->g_4, "p_1700->g_4", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_1700->g_7[i][j][k], "p_1700->g_7[i][j][k]", print_hash_value);

            }
        }
    }
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_1700->g_18[i][j], "p_1700->g_18[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1700->g_22, "p_1700->g_22", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_1700->g_38[i], "p_1700->g_38[i]", print_hash_value);

    }
    transparent_crc(p_1700->g_46, "p_1700->g_46", print_hash_value);
    transparent_crc(p_1700->g_74, "p_1700->g_74", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1700->g_76[i], "p_1700->g_76[i]", print_hash_value);

    }
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 6; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_1700->g_83[i][j][k], "p_1700->g_83[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1700->g_86, "p_1700->g_86", print_hash_value);
    transparent_crc(p_1700->g_97, "p_1700->g_97", print_hash_value);
    transparent_crc(p_1700->g_102, "p_1700->g_102", print_hash_value);
    transparent_crc(p_1700->g_116, "p_1700->g_116", print_hash_value);
    transparent_crc(p_1700->g_119, "p_1700->g_119", print_hash_value);
    transparent_crc(p_1700->g_127, "p_1700->g_127", print_hash_value);
    transparent_crc(p_1700->g_185, "p_1700->g_185", print_hash_value);
    transparent_crc(p_1700->g_203, "p_1700->g_203", print_hash_value);
    transparent_crc(p_1700->g_205, "p_1700->g_205", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1700->g_213[i], "p_1700->g_213[i]", print_hash_value);

    }
    transparent_crc(p_1700->g_215, "p_1700->g_215", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 1; j++)
        {
            transparent_crc(p_1700->g_234[i][j], "p_1700->g_234[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1700->g_236.f0, "p_1700->g_236.f0", print_hash_value);
    transparent_crc(p_1700->g_236.f1, "p_1700->g_236.f1", print_hash_value);
    transparent_crc(p_1700->g_236.f2, "p_1700->g_236.f2", print_hash_value);
    transparent_crc(p_1700->g_236.f3, "p_1700->g_236.f3", print_hash_value);
    transparent_crc(p_1700->g_236.f4, "p_1700->g_236.f4", print_hash_value);
    transparent_crc(p_1700->g_236.f5, "p_1700->g_236.f5", print_hash_value);
    transparent_crc(p_1700->g_236.f6, "p_1700->g_236.f6", print_hash_value);
    transparent_crc(p_1700->g_236.f7, "p_1700->g_236.f7", print_hash_value);
    transparent_crc(p_1700->g_236.f8, "p_1700->g_236.f8", print_hash_value);
    transparent_crc(p_1700->g_238, "p_1700->g_238", print_hash_value);
    transparent_crc(p_1700->g_239, "p_1700->g_239", print_hash_value);
    transparent_crc(p_1700->g_246, "p_1700->g_246", print_hash_value);
    transparent_crc(p_1700->g_285, "p_1700->g_285", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1700->g_745[i], "p_1700->g_745[i]", print_hash_value);

    }
    transparent_crc(p_1700->g_746, "p_1700->g_746", print_hash_value);
    transparent_crc(p_1700->g_747, "p_1700->g_747", print_hash_value);
    transparent_crc(p_1700->g_782, "p_1700->g_782", print_hash_value);
    transparent_crc(p_1700->g_832, "p_1700->g_832", print_hash_value);
    transparent_crc(p_1700->g_881, "p_1700->g_881", print_hash_value);
    transparent_crc(p_1700->g_900, "p_1700->g_900", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1700->g_945[i].f0, "p_1700->g_945[i].f0", print_hash_value);
        transparent_crc(p_1700->g_945[i].f1, "p_1700->g_945[i].f1", print_hash_value);
        transparent_crc(p_1700->g_945[i].f2, "p_1700->g_945[i].f2", print_hash_value);
        transparent_crc(p_1700->g_945[i].f3, "p_1700->g_945[i].f3", print_hash_value);
        transparent_crc(p_1700->g_945[i].f4, "p_1700->g_945[i].f4", print_hash_value);
        transparent_crc(p_1700->g_945[i].f5, "p_1700->g_945[i].f5", print_hash_value);
        transparent_crc(p_1700->g_945[i].f6, "p_1700->g_945[i].f6", print_hash_value);
        transparent_crc(p_1700->g_945[i].f7, "p_1700->g_945[i].f7", print_hash_value);
        transparent_crc(p_1700->g_945[i].f8, "p_1700->g_945[i].f8", print_hash_value);

    }
    transparent_crc(p_1700->g_963.f0, "p_1700->g_963.f0", print_hash_value);
    transparent_crc(p_1700->g_963.f1, "p_1700->g_963.f1", print_hash_value);
    transparent_crc(p_1700->g_963.f2, "p_1700->g_963.f2", print_hash_value);
    transparent_crc(p_1700->g_963.f3, "p_1700->g_963.f3", print_hash_value);
    transparent_crc(p_1700->g_963.f4, "p_1700->g_963.f4", print_hash_value);
    transparent_crc(p_1700->g_963.f5, "p_1700->g_963.f5", print_hash_value);
    transparent_crc(p_1700->g_963.f6, "p_1700->g_963.f6", print_hash_value);
    transparent_crc(p_1700->g_1027.f0, "p_1700->g_1027.f0", print_hash_value);
    transparent_crc(p_1700->g_1027.f1, "p_1700->g_1027.f1", print_hash_value);
    transparent_crc(p_1700->g_1027.f2, "p_1700->g_1027.f2", print_hash_value);
    transparent_crc(p_1700->g_1027.f3, "p_1700->g_1027.f3", print_hash_value);
    transparent_crc(p_1700->g_1027.f4, "p_1700->g_1027.f4", print_hash_value);
    transparent_crc(p_1700->g_1027.f5, "p_1700->g_1027.f5", print_hash_value);
    transparent_crc(p_1700->g_1027.f6, "p_1700->g_1027.f6", print_hash_value);
    transparent_crc(p_1700->g_1027.f7, "p_1700->g_1027.f7", print_hash_value);
    transparent_crc(p_1700->g_1027.f8, "p_1700->g_1027.f8", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_1700->g_1028[i][j].f0, "p_1700->g_1028[i][j].f0", print_hash_value);
            transparent_crc(p_1700->g_1028[i][j].f1, "p_1700->g_1028[i][j].f1", print_hash_value);
            transparent_crc(p_1700->g_1028[i][j].f2, "p_1700->g_1028[i][j].f2", print_hash_value);
            transparent_crc(p_1700->g_1028[i][j].f3, "p_1700->g_1028[i][j].f3", print_hash_value);
            transparent_crc(p_1700->g_1028[i][j].f4, "p_1700->g_1028[i][j].f4", print_hash_value);
            transparent_crc(p_1700->g_1028[i][j].f5, "p_1700->g_1028[i][j].f5", print_hash_value);
            transparent_crc(p_1700->g_1028[i][j].f6, "p_1700->g_1028[i][j].f6", print_hash_value);
            transparent_crc(p_1700->g_1028[i][j].f7, "p_1700->g_1028[i][j].f7", print_hash_value);
            transparent_crc(p_1700->g_1028[i][j].f8, "p_1700->g_1028[i][j].f8", print_hash_value);

        }
    }
    transparent_crc(p_1700->g_1042.f0, "p_1700->g_1042.f0", print_hash_value);
    transparent_crc(p_1700->g_1042.f1, "p_1700->g_1042.f1", print_hash_value);
    transparent_crc(p_1700->g_1042.f2, "p_1700->g_1042.f2", print_hash_value);
    transparent_crc(p_1700->g_1042.f3, "p_1700->g_1042.f3", print_hash_value);
    transparent_crc(p_1700->g_1042.f4, "p_1700->g_1042.f4", print_hash_value);
    transparent_crc(p_1700->g_1042.f5, "p_1700->g_1042.f5", print_hash_value);
    transparent_crc(p_1700->g_1042.f6, "p_1700->g_1042.f6", print_hash_value);
    transparent_crc(p_1700->g_1042.f7, "p_1700->g_1042.f7", print_hash_value);
    transparent_crc(p_1700->g_1042.f8, "p_1700->g_1042.f8", print_hash_value);
    transparent_crc(p_1700->g_1070.f0, "p_1700->g_1070.f0", print_hash_value);
    transparent_crc(p_1700->g_1070.f1, "p_1700->g_1070.f1", print_hash_value);
    transparent_crc(p_1700->g_1070.f2, "p_1700->g_1070.f2", print_hash_value);
    transparent_crc(p_1700->g_1070.f3, "p_1700->g_1070.f3", print_hash_value);
    transparent_crc(p_1700->g_1070.f4, "p_1700->g_1070.f4", print_hash_value);
    transparent_crc(p_1700->g_1070.f5, "p_1700->g_1070.f5", print_hash_value);
    transparent_crc(p_1700->g_1070.f6, "p_1700->g_1070.f6", print_hash_value);
    transparent_crc(p_1700->g_1073.f0, "p_1700->g_1073.f0", print_hash_value);
    transparent_crc(p_1700->g_1073.f1, "p_1700->g_1073.f1", print_hash_value);
    transparent_crc(p_1700->g_1073.f2, "p_1700->g_1073.f2", print_hash_value);
    transparent_crc(p_1700->g_1073.f3, "p_1700->g_1073.f3", print_hash_value);
    transparent_crc(p_1700->g_1073.f4, "p_1700->g_1073.f4", print_hash_value);
    transparent_crc(p_1700->g_1073.f5, "p_1700->g_1073.f5", print_hash_value);
    transparent_crc(p_1700->g_1073.f6, "p_1700->g_1073.f6", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 6; j++)
        {
            transparent_crc(p_1700->g_1075[i][j], "p_1700->g_1075[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1700->g_1107, "p_1700->g_1107", print_hash_value);
    transparent_crc(p_1700->g_1244.f0, "p_1700->g_1244.f0", print_hash_value);
    transparent_crc(p_1700->g_1244.f1, "p_1700->g_1244.f1", print_hash_value);
    transparent_crc(p_1700->g_1244.f2, "p_1700->g_1244.f2", print_hash_value);
    transparent_crc(p_1700->g_1244.f3, "p_1700->g_1244.f3", print_hash_value);
    transparent_crc(p_1700->g_1244.f4, "p_1700->g_1244.f4", print_hash_value);
    transparent_crc(p_1700->g_1244.f5, "p_1700->g_1244.f5", print_hash_value);
    transparent_crc(p_1700->g_1244.f6, "p_1700->g_1244.f6", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1700->g_1245[i].f0, "p_1700->g_1245[i].f0", print_hash_value);
        transparent_crc(p_1700->g_1245[i].f1, "p_1700->g_1245[i].f1", print_hash_value);
        transparent_crc(p_1700->g_1245[i].f2, "p_1700->g_1245[i].f2", print_hash_value);
        transparent_crc(p_1700->g_1245[i].f3, "p_1700->g_1245[i].f3", print_hash_value);
        transparent_crc(p_1700->g_1245[i].f4, "p_1700->g_1245[i].f4", print_hash_value);
        transparent_crc(p_1700->g_1245[i].f5, "p_1700->g_1245[i].f5", print_hash_value);
        transparent_crc(p_1700->g_1245[i].f6, "p_1700->g_1245[i].f6", print_hash_value);

    }
    transparent_crc(p_1700->g_1246.f0, "p_1700->g_1246.f0", print_hash_value);
    transparent_crc(p_1700->g_1246.f1, "p_1700->g_1246.f1", print_hash_value);
    transparent_crc(p_1700->g_1246.f2, "p_1700->g_1246.f2", print_hash_value);
    transparent_crc(p_1700->g_1246.f3, "p_1700->g_1246.f3", print_hash_value);
    transparent_crc(p_1700->g_1246.f4, "p_1700->g_1246.f4", print_hash_value);
    transparent_crc(p_1700->g_1246.f5, "p_1700->g_1246.f5", print_hash_value);
    transparent_crc(p_1700->g_1246.f6, "p_1700->g_1246.f6", print_hash_value);
    transparent_crc(p_1700->g_1340, "p_1700->g_1340", print_hash_value);
    transparent_crc(p_1700->g_1356.f0, "p_1700->g_1356.f0", print_hash_value);
    transparent_crc(p_1700->g_1356.f1, "p_1700->g_1356.f1", print_hash_value);
    transparent_crc(p_1700->g_1356.f2, "p_1700->g_1356.f2", print_hash_value);
    transparent_crc(p_1700->g_1356.f3, "p_1700->g_1356.f3", print_hash_value);
    transparent_crc(p_1700->g_1356.f4, "p_1700->g_1356.f4", print_hash_value);
    transparent_crc(p_1700->g_1356.f5, "p_1700->g_1356.f5", print_hash_value);
    transparent_crc(p_1700->g_1356.f6, "p_1700->g_1356.f6", print_hash_value);
    transparent_crc(p_1700->g_1386, "p_1700->g_1386", print_hash_value);
    transparent_crc(p_1700->g_1394.f0, "p_1700->g_1394.f0", print_hash_value);
    transparent_crc(p_1700->g_1394.f1, "p_1700->g_1394.f1", print_hash_value);
    transparent_crc(p_1700->g_1394.f2, "p_1700->g_1394.f2", print_hash_value);
    transparent_crc(p_1700->g_1394.f3, "p_1700->g_1394.f3", print_hash_value);
    transparent_crc(p_1700->g_1394.f4, "p_1700->g_1394.f4", print_hash_value);
    transparent_crc(p_1700->g_1394.f5, "p_1700->g_1394.f5", print_hash_value);
    transparent_crc(p_1700->g_1394.f6, "p_1700->g_1394.f6", print_hash_value);
    transparent_crc(p_1700->g_1394.f7, "p_1700->g_1394.f7", print_hash_value);
    transparent_crc(p_1700->g_1394.f8, "p_1700->g_1394.f8", print_hash_value);
    transparent_crc(p_1700->g_1493, "p_1700->g_1493", print_hash_value);
    transparent_crc(p_1700->g_1564, "p_1700->g_1564", print_hash_value);
    transparent_crc(p_1700->g_1586.f0, "p_1700->g_1586.f0", print_hash_value);
    transparent_crc(p_1700->g_1586.f1, "p_1700->g_1586.f1", print_hash_value);
    transparent_crc(p_1700->g_1586.f2, "p_1700->g_1586.f2", print_hash_value);
    transparent_crc(p_1700->g_1586.f3, "p_1700->g_1586.f3", print_hash_value);
    transparent_crc(p_1700->g_1586.f4, "p_1700->g_1586.f4", print_hash_value);
    transparent_crc(p_1700->g_1586.f5, "p_1700->g_1586.f5", print_hash_value);
    transparent_crc(p_1700->g_1586.f6, "p_1700->g_1586.f6", print_hash_value);
    transparent_crc(p_1700->g_1586.f7, "p_1700->g_1586.f7", print_hash_value);
    transparent_crc(p_1700->g_1586.f8, "p_1700->g_1586.f8", print_hash_value);
    transparent_crc(p_1700->g_1589, "p_1700->g_1589", print_hash_value);
    transparent_crc(p_1700->g_1615.f0, "p_1700->g_1615.f0", print_hash_value);
    transparent_crc(p_1700->g_1615.f1, "p_1700->g_1615.f1", print_hash_value);
    transparent_crc(p_1700->g_1615.f2, "p_1700->g_1615.f2", print_hash_value);
    transparent_crc(p_1700->g_1615.f3, "p_1700->g_1615.f3", print_hash_value);
    transparent_crc(p_1700->g_1615.f4, "p_1700->g_1615.f4", print_hash_value);
    transparent_crc(p_1700->g_1615.f5, "p_1700->g_1615.f5", print_hash_value);
    transparent_crc(p_1700->g_1615.f6, "p_1700->g_1615.f6", print_hash_value);
    transparent_crc(p_1700->g_1615.f7, "p_1700->g_1615.f7", print_hash_value);
    transparent_crc(p_1700->g_1615.f8, "p_1700->g_1615.f8", print_hash_value);
    transparent_crc(p_1700->g_1616.f0, "p_1700->g_1616.f0", print_hash_value);
    transparent_crc(p_1700->g_1616.f1, "p_1700->g_1616.f1", print_hash_value);
    transparent_crc(p_1700->g_1616.f2, "p_1700->g_1616.f2", print_hash_value);
    transparent_crc(p_1700->g_1616.f3, "p_1700->g_1616.f3", print_hash_value);
    transparent_crc(p_1700->g_1616.f4, "p_1700->g_1616.f4", print_hash_value);
    transparent_crc(p_1700->g_1616.f5, "p_1700->g_1616.f5", print_hash_value);
    transparent_crc(p_1700->g_1616.f6, "p_1700->g_1616.f6", print_hash_value);
    transparent_crc(p_1700->g_1616.f7, "p_1700->g_1616.f7", print_hash_value);
    transparent_crc(p_1700->g_1616.f8, "p_1700->g_1616.f8", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_global_id())
        for (i = 0 ; i < 25; i++)
            transparent_crc(p_1700->g_special_values[i + 25 * get_linear_group_id()], "p_1700->g_special_values[i + 25 * get_linear_group_id()]", print_hash_value);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    if (!get_linear_local_id())
        for (i = 0; i < 25; i++)
            transparent_crc(p_1700->l_special_values[i], "p_1700->l_special_values[i]", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
