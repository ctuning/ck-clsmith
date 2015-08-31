// ---fake_divergence -g 2,1,2463 -l 2,1,3
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


// Seed: 13

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    int32_t g_2;
    volatile uint8_t g_5;
    volatile int32_t g_6;
    int32_t g_7;
    int32_t g_12;
    uint64_t g_19[7];
    int16_t g_27;
    uint32_t g_52;
    int16_t g_79[9];
    int32_t * volatile g_112[1][1][1];
    int32_t * volatile g_113;
    int32_t * volatile g_114;
    int32_t * volatile g_115;
    uint32_t g_138[2];
    uint8_t g_141;
    int32_t *g_151[7];
    int32_t ** volatile g_150[10];
    uint8_t *g_156;
    uint8_t **g_155[7][2];
    uint8_t *** volatile g_154;
    int32_t g_177;
    int32_t ** volatile g_192;
    volatile int32_t g_214;
    uint8_t g_236;
    int16_t *g_252;
    int16_t **g_251;
    int16_t ***g_250[10];
    int16_t g_308;
    int32_t ** volatile g_310;
    int32_t ** volatile g_311;
    int32_t ** volatile g_331;
    int32_t g_343;
    uint32_t g_356;
    uint8_t ***g_381;
    uint8_t ****g_380;
    int32_t ** volatile g_413;
    int64_t g_437;
    int8_t g_469;
    uint16_t g_485;
    uint16_t g_567;
    int8_t g_579;
    volatile int8_t g_640;
    int64_t g_650;
    volatile uint16_t g_654[3][8];
    volatile uint16_t * volatile g_653;
    volatile uint16_t * volatile *g_652;
    uint64_t g_672[1][4];
    uint32_t g_684;
    uint64_t g_687[5][5];
    volatile int64_t g_776[10][7][1];
    int32_t * volatile g_809;
    int32_t g_844;
    int32_t g_846;
    volatile uint32_t g_899;
    volatile uint8_t * volatile * volatile *** volatile g_963;
    volatile uint8_t * volatile * volatile *** volatile * volatile g_962;
    int32_t ***g_1034;
    int32_t g_1039[2];
    uint64_t *g_1052;
    uint32_t g_1101;
    uint64_t g_1108;
    volatile uint8_t g_1132[3][9];
    volatile uint8_t g_1133;
    volatile uint8_t g_1134;
    volatile uint8_t g_1135[1];
    volatile uint8_t g_1136;
    volatile uint8_t g_1137[6][6][5];
    volatile uint8_t g_1138;
    volatile uint8_t g_1139;
    volatile uint8_t g_1140;
    volatile uint8_t g_1141;
    volatile uint8_t g_1142;
    volatile uint8_t g_1143;
    volatile uint8_t g_1144;
    volatile uint8_t g_1145;
    volatile uint8_t g_1146;
    volatile uint8_t g_1147;
    volatile uint8_t g_1148;
    volatile uint8_t g_1149[2][2][6];
    volatile uint8_t g_1150;
    volatile uint8_t g_1151;
    volatile uint8_t g_1152[10];
    volatile uint8_t g_1153;
    volatile uint8_t g_1154;
    volatile uint8_t g_1155;
    volatile uint8_t g_1156[10];
    volatile uint8_t g_1157;
    volatile uint8_t g_1158;
    volatile uint8_t g_1159;
    volatile uint8_t g_1160;
    volatile uint8_t g_1161[1][8];
    volatile uint8_t g_1162;
    volatile uint8_t g_1163;
    volatile uint8_t g_1164;
    volatile uint8_t *g_1131[10][9][1];
    volatile uint8_t **g_1130[2];
    volatile uint8_t ***g_1129[7];
    volatile uint8_t ****g_1128;
    volatile uint8_t ***** volatile g_1127;
    volatile uint8_t *****g_1165;
    volatile uint8_t ***** volatile *g_1126[7][3];
    uint64_t g_1190[5][1][5];
    uint16_t *g_1241;
    uint16_t **g_1240;
    uint16_t ***g_1239;
    int64_t g_1276;
    uint16_t g_1332[1];
    uint32_t *g_1348;
    uint32_t **g_1347[8][6];
    volatile uint32_t g_1417[6][2];
    int32_t g_1425;
    int8_t g_1426;
    uint64_t *g_1437;
    uint64_t **g_1436[3][5][3];
    uint64_t *** volatile g_1435[6][8];
    int32_t **g_1440;
    int32_t *** volatile g_1439[8];
    int32_t *g_1475;
    int32_t **g_1474[6];
    int32_t *** volatile g_1473;
    volatile uint8_t g_1540;
    int32_t ** volatile g_1544;
    uint32_t *g_1657;
    volatile int8_t g_1720[2][6][3];
    volatile int32_t g_1871;
    uint16_t ****g_1967[6][9][4];
    volatile int8_t * volatile g_2050;
    volatile int8_t * volatile * volatile g_2049[5];
    int8_t * volatile g_2052;
    int8_t * volatile *g_2051;
    uint8_t g_2133;
    int16_t g_2136[8][3];
    uint16_t * volatile * volatile **g_2145;
    uint16_t * volatile * volatile ***g_2144;
    uint16_t * volatile * volatile *** volatile *g_2143;
    int32_t g_2163;
    uint8_t *****g_2191[10];
    uint8_t ******g_2190;
    int32_t ** volatile g_2213[7];
    int32_t ** volatile g_2214;
    volatile int32_t * volatile g_2215;
    uint8_t g_2229[7];
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
uint16_t  func_1(struct S0 * p_2262);
uint8_t  func_29(uint32_t  p_30, int32_t * p_31, int32_t * p_32, struct S0 * p_2262);
int8_t  func_39(int32_t * p_40, uint32_t  p_41, int16_t * p_42, struct S0 * p_2262);
int32_t  func_43(uint64_t  p_44, struct S0 * p_2262);
int32_t  func_46(int32_t  p_47, int64_t  p_48, uint32_t  p_49, struct S0 * p_2262);
int32_t  func_60(uint8_t  p_61, int32_t * p_62, uint32_t  p_63, int32_t * p_64, int32_t * p_65, struct S0 * p_2262);
int32_t * func_66(int32_t  p_67, int8_t  p_68, int32_t * p_69, int16_t * p_70, int32_t * p_71, struct S0 * p_2262);
int16_t * func_80(int32_t * p_81, struct S0 * p_2262);
int32_t * func_82(int32_t * p_83, uint32_t  p_84, uint16_t  p_85, int16_t * p_86, uint8_t  p_87, struct S0 * p_2262);
int32_t * func_88(uint64_t  p_89, struct S0 * p_2262);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_2262->g_2 p_2262->g_6 p_2262->g_19 p_2262->g_251 p_2262->g_252 p_2262->g_343 p_2262->g_2051 p_2262->g_2052 p_2262->g_579 p_2262->g_236 p_2262->g_1052 p_2262->g_687 p_2262->g_1440 p_2262->g_653 p_2262->g_654
 * writes: p_2262->g_2 p_2262->g_5 p_2262->g_7 p_2262->g_19 p_2262->g_343 p_2262->g_236 p_2262->g_672 p_2262->g_469 p_2262->g_151
 */
uint16_t  func_1(struct S0 * p_2262)
{ /* block id: 4 */
    int8_t l_24 = 1L;
    int32_t *l_1604[5][4] = {{&p_2262->g_2,&p_2262->g_2,&p_2262->g_2,&p_2262->g_2},{&p_2262->g_2,&p_2262->g_2,&p_2262->g_2,&p_2262->g_2},{&p_2262->g_2,&p_2262->g_2,&p_2262->g_2,&p_2262->g_2},{&p_2262->g_2,&p_2262->g_2,&p_2262->g_2,&p_2262->g_2},{&p_2262->g_2,&p_2262->g_2,&p_2262->g_2,&p_2262->g_2}};
    uint16_t l_2046 = 0xDCA8L;
    int32_t l_2053 = 0L;
    uint16_t l_2075 = 7UL;
    uint8_t *l_2125 = &p_2262->g_236;
    uint8_t *l_2128 = &p_2262->g_141;
    uint64_t l_2186 = 18446744073709551609UL;
    uint8_t ******l_2192[4] = {&p_2262->g_2191[8],&p_2262->g_2191[8],&p_2262->g_2191[8],&p_2262->g_2191[8]};
    uint64_t ***l_2250 = &p_2262->g_1436[2][0][1];
    uint32_t l_2251[6][6][7] = {{{4294967295UL,0xDAE8D4C1L,0xA7FB4E0DL,0x18FD7A1EL,4294967295UL,4294967295UL,0x18FD7A1EL},{4294967295UL,0xDAE8D4C1L,0xA7FB4E0DL,0x18FD7A1EL,4294967295UL,4294967295UL,0x18FD7A1EL},{4294967295UL,0xDAE8D4C1L,0xA7FB4E0DL,0x18FD7A1EL,4294967295UL,4294967295UL,0x18FD7A1EL},{4294967295UL,0xDAE8D4C1L,0xA7FB4E0DL,0x18FD7A1EL,4294967295UL,4294967295UL,0x18FD7A1EL},{4294967295UL,0xDAE8D4C1L,0xA7FB4E0DL,0x18FD7A1EL,4294967295UL,4294967295UL,0x18FD7A1EL},{4294967295UL,0xDAE8D4C1L,0xA7FB4E0DL,0x18FD7A1EL,4294967295UL,4294967295UL,0x18FD7A1EL}},{{4294967295UL,0xDAE8D4C1L,0xA7FB4E0DL,0x18FD7A1EL,4294967295UL,4294967295UL,0x18FD7A1EL},{4294967295UL,0xDAE8D4C1L,0xA7FB4E0DL,0x18FD7A1EL,4294967295UL,4294967295UL,0x18FD7A1EL},{4294967295UL,0xDAE8D4C1L,0xA7FB4E0DL,0x18FD7A1EL,4294967295UL,4294967295UL,0x18FD7A1EL},{4294967295UL,0xDAE8D4C1L,0xA7FB4E0DL,0x18FD7A1EL,4294967295UL,4294967295UL,0x18FD7A1EL},{4294967295UL,0xDAE8D4C1L,0xA7FB4E0DL,0x18FD7A1EL,4294967295UL,4294967295UL,0x18FD7A1EL},{4294967295UL,0xDAE8D4C1L,0xA7FB4E0DL,0x18FD7A1EL,4294967295UL,4294967295UL,0x18FD7A1EL}},{{4294967295UL,0xDAE8D4C1L,0xA7FB4E0DL,0x18FD7A1EL,4294967295UL,4294967295UL,0x18FD7A1EL},{4294967295UL,0xDAE8D4C1L,0xA7FB4E0DL,0x18FD7A1EL,4294967295UL,4294967295UL,0x18FD7A1EL},{4294967295UL,0xDAE8D4C1L,0xA7FB4E0DL,0x18FD7A1EL,4294967295UL,4294967295UL,0x18FD7A1EL},{4294967295UL,0xDAE8D4C1L,0xA7FB4E0DL,0x18FD7A1EL,4294967295UL,4294967295UL,0x18FD7A1EL},{4294967295UL,0xDAE8D4C1L,0xA7FB4E0DL,0x18FD7A1EL,4294967295UL,4294967295UL,0x18FD7A1EL},{4294967295UL,0xDAE8D4C1L,0xA7FB4E0DL,0x18FD7A1EL,4294967295UL,4294967295UL,0x18FD7A1EL}},{{4294967295UL,0xDAE8D4C1L,0xA7FB4E0DL,0x18FD7A1EL,4294967295UL,4294967295UL,0x18FD7A1EL},{4294967295UL,0xDAE8D4C1L,0xA7FB4E0DL,0x18FD7A1EL,4294967295UL,4294967295UL,0x18FD7A1EL},{4294967295UL,0xDAE8D4C1L,0xA7FB4E0DL,0x18FD7A1EL,4294967295UL,4294967295UL,0x18FD7A1EL},{4294967295UL,0xDAE8D4C1L,0xA7FB4E0DL,0x18FD7A1EL,4294967295UL,4294967295UL,0x18FD7A1EL},{4294967295UL,0xDAE8D4C1L,0xA7FB4E0DL,0x18FD7A1EL,4294967295UL,4294967295UL,0x18FD7A1EL},{4294967295UL,0xDAE8D4C1L,0xA7FB4E0DL,0x18FD7A1EL,4294967295UL,4294967295UL,0x18FD7A1EL}},{{4294967295UL,0xDAE8D4C1L,0xA7FB4E0DL,0x18FD7A1EL,4294967295UL,4294967295UL,0x18FD7A1EL},{4294967295UL,0xDAE8D4C1L,0xA7FB4E0DL,0x18FD7A1EL,4294967295UL,4294967295UL,0x18FD7A1EL},{4294967295UL,0xDAE8D4C1L,0xA7FB4E0DL,0x18FD7A1EL,4294967295UL,4294967295UL,0x18FD7A1EL},{4294967295UL,0xDAE8D4C1L,0xA7FB4E0DL,0x18FD7A1EL,4294967295UL,4294967295UL,0x18FD7A1EL},{4294967295UL,0xDAE8D4C1L,0xA7FB4E0DL,0x18FD7A1EL,4294967295UL,4294967295UL,0x18FD7A1EL},{4294967295UL,0xDAE8D4C1L,0xA7FB4E0DL,0x18FD7A1EL,4294967295UL,4294967295UL,0x18FD7A1EL}},{{4294967295UL,0xDAE8D4C1L,0xA7FB4E0DL,0x18FD7A1EL,4294967295UL,4294967295UL,0x18FD7A1EL},{4294967295UL,0xDAE8D4C1L,0xA7FB4E0DL,0x18FD7A1EL,4294967295UL,4294967295UL,0x18FD7A1EL},{4294967295UL,0xDAE8D4C1L,0xA7FB4E0DL,0x18FD7A1EL,4294967295UL,4294967295UL,0x18FD7A1EL},{4294967295UL,0xDAE8D4C1L,0xA7FB4E0DL,0x18FD7A1EL,4294967295UL,4294967295UL,0x18FD7A1EL},{4294967295UL,0xDAE8D4C1L,0xA7FB4E0DL,0x18FD7A1EL,4294967295UL,4294967295UL,0x18FD7A1EL},{4294967295UL,0xDAE8D4C1L,0xA7FB4E0DL,0x18FD7A1EL,4294967295UL,4294967295UL,0x18FD7A1EL}}};
    int32_t l_2256 = (-1L);
    int32_t *l_2260[7] = {&l_2256,&l_2256,&l_2256,&l_2256,&l_2256,&l_2256,&l_2256};
    int i, j, k;
    for (p_2262->g_2 = 0; (p_2262->g_2 > 0); p_2262->g_2 = safe_add_func_int32_t_s_s(p_2262->g_2, 4))
    { /* block id: 7 */
        int8_t l_17 = 0x20L;
        int32_t l_28 = (-2L);
        uint64_t l_45 = 0x681C37F5E1753097L;
        uint32_t l_2074[10] = {4294967295UL,0x11EEEAD3L,4294967295UL,4294967295UL,0x11EEEAD3L,4294967295UL,4294967295UL,0x11EEEAD3L,4294967295UL,4294967295UL};
        int32_t *l_2173 = &p_2262->g_1039[0];
        int32_t *l_2175 = &p_2262->g_1039[0];
        int32_t *l_2211 = &p_2262->g_343;
        int32_t l_2219 = (-7L);
        int8_t l_2232 = 0x23L;
        int16_t *l_2237 = &p_2262->g_79[0];
        int8_t *l_2259[10] = {&p_2262->g_469,&p_2262->g_579,&p_2262->g_469,&p_2262->g_469,&p_2262->g_579,&p_2262->g_469,&p_2262->g_469,&p_2262->g_579,&p_2262->g_469,&p_2262->g_469};
        int i;
        p_2262->g_5 = 0x142A1E94L;
        for (p_2262->g_7 = 15; (p_2262->g_7 >= (-24)); p_2262->g_7 = safe_sub_func_uint64_t_u_u(p_2262->g_7, 6))
        { /* block id: 11 */
            int32_t *l_10 = (void*)0;
            int32_t *l_11 = &p_2262->g_12;
            int32_t *l_13 = &p_2262->g_12;
            int32_t *l_14 = &p_2262->g_12;
            int32_t *l_15 = &p_2262->g_12;
            int32_t *l_16 = &p_2262->g_12;
            int32_t *l_18[6][1][2] = {{{&p_2262->g_12,&p_2262->g_12}},{{&p_2262->g_12,&p_2262->g_12}},{{&p_2262->g_12,&p_2262->g_12}},{{&p_2262->g_12,&p_2262->g_12}},{{&p_2262->g_12,&p_2262->g_12}},{{&p_2262->g_12,&p_2262->g_12}}};
            int16_t *l_25 = (void*)0;
            int16_t *l_26[7] = {&p_2262->g_27,&p_2262->g_27,&p_2262->g_27,&p_2262->g_27,&p_2262->g_27,&p_2262->g_27,&p_2262->g_27};
            int32_t l_2040 = 0x1E48823FL;
            uint32_t l_2130 = 4294967295UL;
            uint8_t ***l_2140 = &p_2262->g_155[5][0];
            uint8_t *l_2154 = &p_2262->g_236;
            int8_t l_2217 = (-1L);
            uint8_t l_2234 = 1UL;
            int i, j, k;
            if (p_2262->g_6)
                break;
            --p_2262->g_19[3];
        }
        (*l_2211) |= (l_2237 == (*p_2262->g_251));
        if (((safe_mul_func_uint8_t_u_u((safe_mul_func_int8_t_s_s((safe_lshift_func_uint8_t_u_u((safe_rshift_func_int8_t_s_u((**p_2262->g_2051), 2)), ((*l_2125)++))), ((safe_add_func_int64_t_s_s(((void*)0 != l_2250), (~((0x73A5L < (l_2251[4][0][4] = ((void*)0 != &l_2237))) == ((safe_mul_func_int8_t_s_s((p_2262->g_469 = ((safe_mod_func_int32_t_s_s((l_2256 != ((safe_rshift_func_int8_t_s_s(((*l_2211) < (((*p_2262->g_1052) = 0x208B660CD2BE11D3L) > (*l_2211))), 6)) != 65535UL)), 0xF7A672AFL)) <= 0x2AC288FBL)), 2UL)) == (*l_2211)))))) | p_2262->g_687[2][3]))), 0x57L)) && (*l_2211)))
        { /* block id: 992 */
            (*p_2262->g_1440) = l_2260[5];
        }
        else
        { /* block id: 994 */
            int64_t l_2261 = 0x5E8A440665D72AE1L;
            return l_2261;
        }
    }
    return (*p_2262->g_653);
}


/* ------------------------------------------ */
/* 
 * reads : p_2262->g_343 p_2262->g_684 p_2262->g_1101 p_2262->g_79 p_2262->g_151 p_2262->g_1425 p_2262->g_6 p_2262->g_12 p_2262->g_7 p_2262->g_19 p_2262->g_115 p_2262->g_2 p_2262->g_1127 p_2262->g_1128 p_2262->g_653 p_2262->g_654 p_2262->g_1657 p_2262->g_356 p_2262->g_1332 p_2262->g_844 p_2262->g_1720 p_2262->g_331 p_2262->g_138 p_2262->g_809 p_2262->g_177 p_2262->g_252 p_2262->g_1165 p_2262->g_437 p_2262->g_485 p_2262->g_251 p_2262->g_311 p_2262->g_1239 p_2262->g_1240 p_2262->g_1241 p_2262->g_1156 p_2262->g_1139 p_2262->g_236 p_2262->g_1426 p_2262->g_1039 p_2262->g_1161 p_2262->g_52 p_2262->g_141 p_2262->g_154 p_2262->g_308
 * writes: p_2262->g_343 p_2262->g_684 p_2262->g_1101 p_2262->g_151 p_2262->g_1425 p_2262->g_12 p_2262->g_1426 p_2262->g_356 p_2262->g_1332 p_2262->g_844 p_2262->g_52 p_2262->g_79 p_2262->g_177 p_2262->g_485 p_2262->g_1241 p_2262->g_236 p_2262->g_1108 p_2262->g_138 p_2262->g_141 p_2262->g_155 p_2262->g_308
 */
uint8_t  func_29(uint32_t  p_30, int32_t * p_31, int32_t * p_32, struct S0 * p_2262)
{ /* block id: 704 */
    uint32_t l_1615 = 3UL;
    int16_t l_1620 = 0x52CAL;
    uint64_t *l_1623 = &p_2262->g_1190[3][0][1];
    int32_t l_1625 = 0L;
    uint32_t l_1644 = 0UL;
    uint8_t l_1665[5][4][2] = {{{8UL,8UL},{8UL,8UL},{8UL,8UL},{8UL,8UL}},{{8UL,8UL},{8UL,8UL},{8UL,8UL},{8UL,8UL}},{{8UL,8UL},{8UL,8UL},{8UL,8UL},{8UL,8UL}},{{8UL,8UL},{8UL,8UL},{8UL,8UL},{8UL,8UL}},{{8UL,8UL},{8UL,8UL},{8UL,8UL},{8UL,8UL}}};
    uint64_t l_1666 = 0UL;
    int32_t *l_1674 = &p_2262->g_1425;
    int32_t l_1740 = 0x3D800677L;
    int32_t l_1763 = 1L;
    uint32_t l_1793[1][8][6] = {{{4294967288UL,4294967288UL,4294967288UL,4294967288UL,4294967288UL,4294967288UL},{4294967288UL,4294967288UL,4294967288UL,4294967288UL,4294967288UL,4294967288UL},{4294967288UL,4294967288UL,4294967288UL,4294967288UL,4294967288UL,4294967288UL},{4294967288UL,4294967288UL,4294967288UL,4294967288UL,4294967288UL,4294967288UL},{4294967288UL,4294967288UL,4294967288UL,4294967288UL,4294967288UL,4294967288UL},{4294967288UL,4294967288UL,4294967288UL,4294967288UL,4294967288UL,4294967288UL},{4294967288UL,4294967288UL,4294967288UL,4294967288UL,4294967288UL,4294967288UL},{4294967288UL,4294967288UL,4294967288UL,4294967288UL,4294967288UL,4294967288UL}}};
    int16_t l_1827[1][5] = {{(-1L),(-1L),(-1L),(-1L),(-1L)}};
    int16_t ****l_1919 = &p_2262->g_250[1];
    int32_t l_1927 = 0x76198471L;
    int32_t l_1928 = 0x4F5F659AL;
    int32_t l_1929[4][3] = {{6L,0x33DF2B36L,0x34A58FDAL},{6L,0x33DF2B36L,0x34A58FDAL},{6L,0x33DF2B36L,0x34A58FDAL},{6L,0x33DF2B36L,0x34A58FDAL}};
    int32_t l_1951 = (-1L);
    uint8_t l_1952 = 251UL;
    int32_t *l_1994 = &l_1740;
    uint16_t ***l_2010 = (void*)0;
    int32_t l_2014[9] = {6L,6L,6L,6L,6L,6L,6L,6L,6L};
    int32_t l_2032 = 8L;
    uint32_t l_2033[8] = {0xE3179917L,0xE3179917L,0xE3179917L,0xE3179917L,0xE3179917L,0xE3179917L,0xE3179917L,0xE3179917L};
    int32_t l_2036 = 0x71A7E25FL;
    int i, j, k;
    for (p_2262->g_343 = (-8); (p_2262->g_343 <= 7); p_2262->g_343 = safe_add_func_int16_t_s_s(p_2262->g_343, 3))
    { /* block id: 707 */
        int64_t l_1609 = 0x1CB0E72D148157EFL;
        for (p_2262->g_684 = 26; (p_2262->g_684 != 58); ++p_2262->g_684)
        { /* block id: 710 */
            if (l_1609)
                break;
            for (p_2262->g_1101 = 0; (p_2262->g_1101 <= 1); p_2262->g_1101 += 1)
            { /* block id: 714 */
                int32_t *l_1610 = &p_2262->g_12;
                int32_t *l_1611 = &p_2262->g_177;
                int32_t *l_1612 = &p_2262->g_12;
                int32_t *l_1613 = &p_2262->g_844;
                int32_t *l_1614[7];
                int i;
                for (i = 0; i < 7; i++)
                    l_1614[i] = (void*)0;
                l_1615--;
            }
        }
    }
    for (p_2262->g_1101 = 0; (p_2262->g_1101 <= 0); p_2262->g_1101 += 1)
    { /* block id: 721 */
        int32_t **l_1618 = (void*)0;
        int32_t **l_1619 = &p_2262->g_151[0];
        uint8_t *l_1624[8] = {&p_2262->g_141,&p_2262->g_141,&p_2262->g_141,&p_2262->g_141,&p_2262->g_141,&p_2262->g_141,&p_2262->g_141,&p_2262->g_141};
        uint64_t *l_1626 = &p_2262->g_1190[4][0][4];
        int8_t l_1633 = 0x20L;
        uint8_t ****l_1683[4];
        uint64_t l_1690[9][1][3] = {{{0xDE658D3E3074EDE1L,0xDE658D3E3074EDE1L,0xDE658D3E3074EDE1L}},{{0xDE658D3E3074EDE1L,0xDE658D3E3074EDE1L,0xDE658D3E3074EDE1L}},{{0xDE658D3E3074EDE1L,0xDE658D3E3074EDE1L,0xDE658D3E3074EDE1L}},{{0xDE658D3E3074EDE1L,0xDE658D3E3074EDE1L,0xDE658D3E3074EDE1L}},{{0xDE658D3E3074EDE1L,0xDE658D3E3074EDE1L,0xDE658D3E3074EDE1L}},{{0xDE658D3E3074EDE1L,0xDE658D3E3074EDE1L,0xDE658D3E3074EDE1L}},{{0xDE658D3E3074EDE1L,0xDE658D3E3074EDE1L,0xDE658D3E3074EDE1L}},{{0xDE658D3E3074EDE1L,0xDE658D3E3074EDE1L,0xDE658D3E3074EDE1L}},{{0xDE658D3E3074EDE1L,0xDE658D3E3074EDE1L,0xDE658D3E3074EDE1L}}};
        int32_t l_1728[5][6] = {{(-9L),0x3C435E32L,0x223451F9L,0x3C435E32L,(-9L),(-9L)},{(-9L),0x3C435E32L,0x223451F9L,0x3C435E32L,(-9L),(-9L)},{(-9L),0x3C435E32L,0x223451F9L,0x3C435E32L,(-9L),(-9L)},{(-9L),0x3C435E32L,0x223451F9L,0x3C435E32L,(-9L),(-9L)},{(-9L),0x3C435E32L,0x223451F9L,0x3C435E32L,(-9L),(-9L)}};
        uint8_t *****l_1760 = &l_1683[0];
        uint8_t ******l_1759 = &l_1760;
        uint8_t *******l_1758 = &l_1759;
        uint32_t l_1774 = 1UL;
        int32_t l_1813 = 0L;
        int32_t *l_1877[7][8] = {{(void*)0,&p_2262->g_1425,&p_2262->g_1425,&p_2262->g_1425,&p_2262->g_1425,&p_2262->g_1425,(void*)0,&p_2262->g_1425},{(void*)0,&p_2262->g_1425,&p_2262->g_1425,&p_2262->g_1425,&p_2262->g_1425,&p_2262->g_1425,(void*)0,&p_2262->g_1425},{(void*)0,&p_2262->g_1425,&p_2262->g_1425,&p_2262->g_1425,&p_2262->g_1425,&p_2262->g_1425,(void*)0,&p_2262->g_1425},{(void*)0,&p_2262->g_1425,&p_2262->g_1425,&p_2262->g_1425,&p_2262->g_1425,&p_2262->g_1425,(void*)0,&p_2262->g_1425},{(void*)0,&p_2262->g_1425,&p_2262->g_1425,&p_2262->g_1425,&p_2262->g_1425,&p_2262->g_1425,(void*)0,&p_2262->g_1425},{(void*)0,&p_2262->g_1425,&p_2262->g_1425,&p_2262->g_1425,&p_2262->g_1425,&p_2262->g_1425,(void*)0,&p_2262->g_1425},{(void*)0,&p_2262->g_1425,&p_2262->g_1425,&p_2262->g_1425,&p_2262->g_1425,&p_2262->g_1425,(void*)0,&p_2262->g_1425}};
        int16_t *l_1920 = (void*)0;
        int32_t l_1925 = 0x303260BBL;
        int32_t l_1969 = 1L;
        uint16_t ***l_1988 = &p_2262->g_1240;
        int i, j, k;
        for (i = 0; i < 4; i++)
            l_1683[i] = &p_2262->g_381;
        (*l_1619) = (void*)0;
        if (((l_1625 = ((0x3FL | l_1620) && (safe_mul_func_int8_t_s_s(p_2262->g_79[6], ((void*)0 == l_1623))))) , ((l_1623 != l_1626) , ((safe_div_func_uint8_t_u_u((l_1625 = ((safe_add_func_uint32_t_u_u((((safe_div_func_uint64_t_u_u((l_1633 , p_30), 0x0424B0E0E1E0B6F4L)) != (-10L)) >= 9L), 5UL)) , p_30)), p_30)) > l_1615))))
        { /* block id: 725 */
            int32_t *l_1634 = &l_1625;
            int32_t *l_1635 = &l_1625;
            int32_t *l_1636 = &p_2262->g_12;
            int32_t l_1637[3];
            int32_t *l_1638 = (void*)0;
            int32_t *l_1639 = &l_1637[1];
            int32_t *l_1640 = &p_2262->g_844;
            int32_t *l_1641 = (void*)0;
            int32_t *l_1642 = &l_1637[2];
            int32_t *l_1643[8][10][3] = {{{&p_2262->g_177,&p_2262->g_12,&l_1625},{&p_2262->g_177,&p_2262->g_12,&l_1625},{&p_2262->g_177,&p_2262->g_12,&l_1625},{&p_2262->g_177,&p_2262->g_12,&l_1625},{&p_2262->g_177,&p_2262->g_12,&l_1625},{&p_2262->g_177,&p_2262->g_12,&l_1625},{&p_2262->g_177,&p_2262->g_12,&l_1625},{&p_2262->g_177,&p_2262->g_12,&l_1625},{&p_2262->g_177,&p_2262->g_12,&l_1625},{&p_2262->g_177,&p_2262->g_12,&l_1625}},{{&p_2262->g_177,&p_2262->g_12,&l_1625},{&p_2262->g_177,&p_2262->g_12,&l_1625},{&p_2262->g_177,&p_2262->g_12,&l_1625},{&p_2262->g_177,&p_2262->g_12,&l_1625},{&p_2262->g_177,&p_2262->g_12,&l_1625},{&p_2262->g_177,&p_2262->g_12,&l_1625},{&p_2262->g_177,&p_2262->g_12,&l_1625},{&p_2262->g_177,&p_2262->g_12,&l_1625},{&p_2262->g_177,&p_2262->g_12,&l_1625},{&p_2262->g_177,&p_2262->g_12,&l_1625}},{{&p_2262->g_177,&p_2262->g_12,&l_1625},{&p_2262->g_177,&p_2262->g_12,&l_1625},{&p_2262->g_177,&p_2262->g_12,&l_1625},{&p_2262->g_177,&p_2262->g_12,&l_1625},{&p_2262->g_177,&p_2262->g_12,&l_1625},{&p_2262->g_177,&p_2262->g_12,&l_1625},{&p_2262->g_177,&p_2262->g_12,&l_1625},{&p_2262->g_177,&p_2262->g_12,&l_1625},{&p_2262->g_177,&p_2262->g_12,&l_1625},{&p_2262->g_177,&p_2262->g_12,&l_1625}},{{&p_2262->g_177,&p_2262->g_12,&l_1625},{&p_2262->g_177,&p_2262->g_12,&l_1625},{&p_2262->g_177,&p_2262->g_12,&l_1625},{&p_2262->g_177,&p_2262->g_12,&l_1625},{&p_2262->g_177,&p_2262->g_12,&l_1625},{&p_2262->g_177,&p_2262->g_12,&l_1625},{&p_2262->g_177,&p_2262->g_12,&l_1625},{&p_2262->g_177,&p_2262->g_12,&l_1625},{&p_2262->g_177,&p_2262->g_12,&l_1625},{&p_2262->g_177,&p_2262->g_12,&l_1625}},{{&p_2262->g_177,&p_2262->g_12,&l_1625},{&p_2262->g_177,&p_2262->g_12,&l_1625},{&p_2262->g_177,&p_2262->g_12,&l_1625},{&p_2262->g_177,&p_2262->g_12,&l_1625},{&p_2262->g_177,&p_2262->g_12,&l_1625},{&p_2262->g_177,&p_2262->g_12,&l_1625},{&p_2262->g_177,&p_2262->g_12,&l_1625},{&p_2262->g_177,&p_2262->g_12,&l_1625},{&p_2262->g_177,&p_2262->g_12,&l_1625},{&p_2262->g_177,&p_2262->g_12,&l_1625}},{{&p_2262->g_177,&p_2262->g_12,&l_1625},{&p_2262->g_177,&p_2262->g_12,&l_1625},{&p_2262->g_177,&p_2262->g_12,&l_1625},{&p_2262->g_177,&p_2262->g_12,&l_1625},{&p_2262->g_177,&p_2262->g_12,&l_1625},{&p_2262->g_177,&p_2262->g_12,&l_1625},{&p_2262->g_177,&p_2262->g_12,&l_1625},{&p_2262->g_177,&p_2262->g_12,&l_1625},{&p_2262->g_177,&p_2262->g_12,&l_1625},{&p_2262->g_177,&p_2262->g_12,&l_1625}},{{&p_2262->g_177,&p_2262->g_12,&l_1625},{&p_2262->g_177,&p_2262->g_12,&l_1625},{&p_2262->g_177,&p_2262->g_12,&l_1625},{&p_2262->g_177,&p_2262->g_12,&l_1625},{&p_2262->g_177,&p_2262->g_12,&l_1625},{&p_2262->g_177,&p_2262->g_12,&l_1625},{&p_2262->g_177,&p_2262->g_12,&l_1625},{&p_2262->g_177,&p_2262->g_12,&l_1625},{&p_2262->g_177,&p_2262->g_12,&l_1625},{&p_2262->g_177,&p_2262->g_12,&l_1625}},{{&p_2262->g_177,&p_2262->g_12,&l_1625},{&p_2262->g_177,&p_2262->g_12,&l_1625},{&p_2262->g_177,&p_2262->g_12,&l_1625},{&p_2262->g_177,&p_2262->g_12,&l_1625},{&p_2262->g_177,&p_2262->g_12,&l_1625},{&p_2262->g_177,&p_2262->g_12,&l_1625},{&p_2262->g_177,&p_2262->g_12,&l_1625},{&p_2262->g_177,&p_2262->g_12,&l_1625},{&p_2262->g_177,&p_2262->g_12,&l_1625},{&p_2262->g_177,&p_2262->g_12,&l_1625}}};
            uint64_t *l_1664 = (void*)0;
            uint8_t l_1691 = 1UL;
            int i, j, k;
            for (i = 0; i < 3; i++)
                l_1637[i] = 0x5B949907L;
            l_1644--;
            (*l_1639) |= (l_1625 & (safe_lshift_func_int8_t_s_u((((*l_1619) = (*l_1619)) == p_32), l_1620)));
            if (l_1665[0][3][0])
            { /* block id: 734 */
                int32_t *l_1671 = &l_1625;
                int8_t l_1724 = 3L;
                l_1666--;
                for (p_2262->g_1425 = 0; (p_2262->g_1425 <= 0); p_2262->g_1425 += 1)
                { /* block id: 738 */
                    int8_t *l_1679 = &p_2262->g_1426;
                    uint8_t l_1692 = 0UL;
                    int64_t l_1693[2];
                    int32_t *l_1698[2];
                    uint16_t ****l_1702 = &p_2262->g_1239;
                    uint16_t *****l_1701 = &l_1702;
                    int8_t **l_1703 = &l_1679;
                    uint32_t *l_1704 = &p_2262->g_52;
                    uint8_t l_1711 = 0xCCL;
                    int i;
                    for (i = 0; i < 2; i++)
                        l_1693[i] = 1L;
                    for (i = 0; i < 2; i++)
                        l_1698[i] = &p_2262->g_846;
                    (*l_1636) = ((((((safe_div_func_int8_t_s_s((l_1671 == ((*l_1619) = func_88(p_30, p_2262))), ((*l_1671) &= p_30))) == (-1L)) ^ (safe_sub_func_int32_t_s_s((p_32 == p_31), l_1620))) , l_1674) != (void*)0) && 0x6B40L);
                    (*l_1639) |= (((safe_sub_func_int16_t_s_s(((((GROUP_DIVERGE(2, 1) ^ (((safe_add_func_int8_t_s_s(((*l_1679) = p_30), (0x3D6FL ^ l_1665[1][1][1]))) , (((p_2262->g_1332[p_2262->g_1425] = ((((((((*p_2262->g_1657) &= (safe_unary_minus_func_uint32_t_u(((safe_sub_func_uint64_t_u_u((~((0x41FAL <= (!p_30)) <= ((l_1683[3] == (*p_2262->g_1127)) , ((safe_sub_func_int16_t_s_s((((safe_mod_func_uint16_t_u_u(((safe_sub_func_int32_t_s_s(0L, l_1690[1][0][1])) , (*p_2262->g_653)), 1UL)) >= p_30) | l_1691), p_30)) < p_30)))), l_1620)) , FAKE_DIVERGE(p_2262->group_2_offset, get_group_id(2), 10))))) , 1UL) , FAKE_DIVERGE(p_2262->group_1_offset, get_group_id(1), 10)) , l_1620) <= l_1692) > 0L) , p_30)) , 18446744073709551612UL) == 0UL)) == p_30)) || p_30) , p_2262->g_12) && l_1693[0]), 0x23B7L)) == 18446744073709551614UL) != (*l_1671));
                    (*l_1642) = ((safe_div_func_uint32_t_u_u((safe_add_func_int16_t_s_s((((((*l_1671) = 7L) , (safe_add_func_int8_t_s_s((p_30 & (((*l_1640) = 0xAFL) <= p_30)), (p_30 & p_30)))) < (0x3119B93BL == (&p_2262->g_1239 != ((*l_1701) = (void*)0)))) & 0L), 0xA71BL)), p_2262->g_1332[p_2262->g_1425])) | (*p_2262->g_115));
                    (*l_1640) |= (((((*l_1703) = (void*)0) != &p_2262->g_469) >= ((*l_1704) = p_30)) , (*l_1671));
                    for (l_1625 = 0; (l_1625 >= 0); l_1625 -= 1)
                    { /* block id: 755 */
                        int64_t *l_1725 = &l_1693[0];
                        int i, j, k;
                        (*l_1642) |= ((safe_mul_func_uint8_t_u_u(((safe_sub_func_int8_t_s_s((l_1711 < (safe_mod_func_int64_t_s_s((safe_rshift_func_uint8_t_u_s(((p_30 == ((*l_1725) |= (safe_div_func_int16_t_s_s(p_2262->g_1332[p_2262->g_1425], (p_30 , ((safe_rshift_func_int16_t_s_s(((((+(0xD0E612C8L && p_2262->g_1720[0][5][2])) , 0x1025EA01L) >= (safe_unary_minus_func_int8_t_s((p_30 | (safe_div_func_uint8_t_u_u(l_1724, 0x08L)))))) , p_30), p_30)) , p_30)))))) , p_30), p_30)), 1UL))), p_30)) > l_1620), 0x47L)) < p_30);
                        if ((*l_1671))
                            continue;
                        (*p_2262->g_331) = l_1671;
                    }
                }
            }
            else
            { /* block id: 762 */
                uint64_t l_1731 = 0xA4CB370494992C21L;
                for (l_1620 = (-6); (l_1620 != (-13)); --l_1620)
                { /* block id: 765 */
                    int8_t l_1729 = 1L;
                    int32_t l_1739 = (-1L);
                    for (p_2262->g_1425 = 0; (p_2262->g_1425 <= 1); p_2262->g_1425 += 1)
                    { /* block id: 768 */
                        int8_t l_1730 = 7L;
                        int32_t l_1738 = 0x5E628114L;
                        uint16_t l_1741 = 0x904DL;
                        int i;
                        ++l_1731;
                        (*l_1635) ^= (safe_rshift_func_int8_t_s_s((safe_div_func_uint32_t_u_u(p_2262->g_138[p_2262->g_1425], ((*l_1640) = (~((*l_1642) = (-7L)))))), 2));
                        --l_1741;
                        (*l_1640) |= ((*l_1636) &= 0x2BC6701BL);
                    }
                }
            }
            return p_30;
        }
        else
        { /* block id: 780 */
            int8_t l_1752[7];
            int32_t l_1798 = 0x7323E0A1L;
            uint16_t *l_1801 = &p_2262->g_1332[0];
            int32_t *l_1814 = &p_2262->g_1039[0];
            int32_t **l_1815 = &l_1814;
            int32_t l_1870 = 0x7A51E780L;
            uint32_t l_1872 = 0x06DAD66AL;
            uint16_t ***l_1904 = &p_2262->g_1240;
            int32_t l_1924 = 7L;
            int32_t l_1930 = 0x5EC5DFA0L;
            int32_t l_1931 = 0x071A436AL;
            int32_t l_1932 = 0x5033AE50L;
            int32_t l_1933 = 1L;
            uint32_t l_1934 = 4294967293UL;
            int32_t l_1949[9];
            int32_t l_1950[3];
            int16_t **l_1978[3][6][8] = {{{&l_1920,(void*)0,&l_1920,&l_1920,&p_2262->g_252,&l_1920,&l_1920,(void*)0},{&l_1920,(void*)0,&l_1920,&l_1920,&p_2262->g_252,&l_1920,&l_1920,(void*)0},{&l_1920,(void*)0,&l_1920,&l_1920,&p_2262->g_252,&l_1920,&l_1920,(void*)0},{&l_1920,(void*)0,&l_1920,&l_1920,&p_2262->g_252,&l_1920,&l_1920,(void*)0},{&l_1920,(void*)0,&l_1920,&l_1920,&p_2262->g_252,&l_1920,&l_1920,(void*)0},{&l_1920,(void*)0,&l_1920,&l_1920,&p_2262->g_252,&l_1920,&l_1920,(void*)0}},{{&l_1920,(void*)0,&l_1920,&l_1920,&p_2262->g_252,&l_1920,&l_1920,(void*)0},{&l_1920,(void*)0,&l_1920,&l_1920,&p_2262->g_252,&l_1920,&l_1920,(void*)0},{&l_1920,(void*)0,&l_1920,&l_1920,&p_2262->g_252,&l_1920,&l_1920,(void*)0},{&l_1920,(void*)0,&l_1920,&l_1920,&p_2262->g_252,&l_1920,&l_1920,(void*)0},{&l_1920,(void*)0,&l_1920,&l_1920,&p_2262->g_252,&l_1920,&l_1920,(void*)0},{&l_1920,(void*)0,&l_1920,&l_1920,&p_2262->g_252,&l_1920,&l_1920,(void*)0}},{{&l_1920,(void*)0,&l_1920,&l_1920,&p_2262->g_252,&l_1920,&l_1920,(void*)0},{&l_1920,(void*)0,&l_1920,&l_1920,&p_2262->g_252,&l_1920,&l_1920,(void*)0},{&l_1920,(void*)0,&l_1920,&l_1920,&p_2262->g_252,&l_1920,&l_1920,(void*)0},{&l_1920,(void*)0,&l_1920,&l_1920,&p_2262->g_252,&l_1920,&l_1920,(void*)0},{&l_1920,(void*)0,&l_1920,&l_1920,&p_2262->g_252,&l_1920,&l_1920,(void*)0},{&l_1920,(void*)0,&l_1920,&l_1920,&p_2262->g_252,&l_1920,&l_1920,(void*)0}}};
            uint32_t l_2011[8] = {4294967286UL,4294967286UL,4294967286UL,4294967286UL,4294967286UL,4294967286UL,4294967286UL,4294967286UL};
            int16_t *l_2012 = &p_2262->g_308;
            int32_t **l_2026 = &l_1674;
            int i, j, k;
            for (i = 0; i < 7; i++)
                l_1752[i] = 0x75L;
            for (i = 0; i < 9; i++)
                l_1949[i] = 0x58812427L;
            for (i = 0; i < 3; i++)
                l_1950[i] = 0x26D801E1L;
            for (p_2262->g_356 = 11; (p_2262->g_356 >= 52); p_2262->g_356 = safe_add_func_int64_t_s_s(p_2262->g_356, 3))
            { /* block id: 783 */
                uint8_t *****l_1756 = &l_1683[0];
                uint8_t ******l_1755 = &l_1756;
                uint8_t *******l_1754 = &l_1755;
                int32_t l_1790 = (-1L);
                int32_t l_1794 = 0x78BB49B9L;
                for (l_1625 = 0; (l_1625 > 28); l_1625++)
                { /* block id: 786 */
                    int32_t *l_1753 = &p_2262->g_177;
                    uint8_t ********l_1757[1][8] = {{&l_1754,&l_1754,&l_1754,&l_1754,&l_1754,&l_1754,&l_1754,&l_1754}};
                    int i, j;
                    if ((safe_mul_func_uint8_t_u_u((((*l_1753) = (((*p_2262->g_252) = ((*p_2262->g_809) == (0x8C8AA7F0F8737E42L <= p_2262->g_1332[0]))) == ((p_30 , l_1644) && (FAKE_DIVERGE(p_2262->global_1_offset, get_global_id(1), 10) && l_1752[5])))) | ((l_1758 = l_1754) == &p_2262->g_1126[2][1])), (safe_mul_func_int8_t_s_s(((l_1763 && p_30) | 0x54L), p_2262->g_356)))))
                    { /* block id: 790 */
                        int32_t *l_1764 = &l_1728[2][2];
                        int32_t *l_1765 = &l_1740;
                        int32_t *l_1766 = &l_1728[2][2];
                        int32_t *l_1767 = (void*)0;
                        int32_t *l_1768 = &l_1763;
                        int32_t *l_1769 = (void*)0;
                        int32_t *l_1770 = &p_2262->g_177;
                        int32_t *l_1771 = &p_2262->g_343;
                        int32_t *l_1772 = &p_2262->g_12;
                        int32_t *l_1773 = (void*)0;
                        l_1774--;
                    }
                    else
                    { /* block id: 792 */
                        uint16_t ****l_1789 = (void*)0;
                        uint16_t *****l_1788 = &l_1789;
                        uint16_t ******l_1787 = &l_1788;
                        int32_t l_1791 = 0x066E38C0L;
                        uint8_t l_1792 = 0x9FL;
                        if (l_1752[0])
                            break;
                        l_1794 |= ((*l_1753) = (safe_rshift_func_uint8_t_u_s((safe_sub_func_int8_t_s_s(1L, ((void*)0 == p_32))), ((safe_sub_func_int32_t_s_s((l_1793[0][1][2] = (safe_div_func_int32_t_s_s(0x780B6700L, (((safe_sub_func_uint8_t_u_u((((((((*l_1787) = (void*)0) != (void*)0) <= (0x2CL != (((((l_1790 , (*p_2262->g_1165)) != (*p_2262->g_1165)) >= p_30) & 0x210F1FA1L) < 0L))) , l_1791) , l_1792) , 0xF9L), 0x2CL)) || l_1792) , l_1665[1][1][0])))), p_2262->g_437)) > p_30))));
                        (*l_1753) = 6L;
                    }
                }
                for (l_1625 = 1; (l_1625 >= 0); l_1625 -= 1)
                { /* block id: 803 */
                    uint16_t *l_1797 = &p_2262->g_485;
                    int i;
                    l_1794 &= ((p_2262->g_138[l_1625] > l_1790) < (0UL || ((safe_rshift_func_uint8_t_u_s(p_30, 3)) ^ ((*l_1797) &= 0xE509L))));
                }
                l_1798 |= (*p_32);
            }
            if ((!((safe_rshift_func_uint16_t_u_s(((*l_1801) &= l_1615), ((safe_div_func_int64_t_s_s((safe_lshift_func_uint16_t_u_u((((**p_2262->g_251) ^ (safe_mod_func_int8_t_s_s((safe_sub_func_int16_t_s_s(0L, ((safe_rshift_func_uint16_t_u_s((p_30 , (((safe_unary_minus_func_int32_t_s((-3L))) >= l_1813) >= p_2262->g_79[0])), 2)) < ((((*l_1815) = l_1814) == p_32) & 0x09E9F016L)))), p_30))) & p_30), 7)), 0x587DFDFF569E5366L)) > 2UL))) && p_30)))
            { /* block id: 811 */
                int32_t *l_1816[9][1][7] = {{{&p_2262->g_12,&p_2262->g_2,&p_2262->g_343,&l_1740,&p_2262->g_2,&l_1740,&p_2262->g_343}},{{&p_2262->g_12,&p_2262->g_2,&p_2262->g_343,&l_1740,&p_2262->g_2,&l_1740,&p_2262->g_343}},{{&p_2262->g_12,&p_2262->g_2,&p_2262->g_343,&l_1740,&p_2262->g_2,&l_1740,&p_2262->g_343}},{{&p_2262->g_12,&p_2262->g_2,&p_2262->g_343,&l_1740,&p_2262->g_2,&l_1740,&p_2262->g_343}},{{&p_2262->g_12,&p_2262->g_2,&p_2262->g_343,&l_1740,&p_2262->g_2,&l_1740,&p_2262->g_343}},{{&p_2262->g_12,&p_2262->g_2,&p_2262->g_343,&l_1740,&p_2262->g_2,&l_1740,&p_2262->g_343}},{{&p_2262->g_12,&p_2262->g_2,&p_2262->g_343,&l_1740,&p_2262->g_2,&l_1740,&p_2262->g_343}},{{&p_2262->g_12,&p_2262->g_2,&p_2262->g_343,&l_1740,&p_2262->g_2,&l_1740,&p_2262->g_343}},{{&p_2262->g_12,&p_2262->g_2,&p_2262->g_343,&l_1740,&p_2262->g_2,&l_1740,&p_2262->g_343}}};
                int i, j, k;
                if ((*p_31))
                    break;
                if (l_1763)
                    continue;
                (*l_1619) = l_1816[7][0][5];
                return p_30;
            }
            else
            { /* block id: 816 */
                uint16_t ***l_1824 = &p_2262->g_1240;
                int32_t *l_1828 = &p_2262->g_177;
                int32_t l_1921 = 0x4741979AL;
                int32_t l_1926 = 7L;
                int32_t *l_1937 = &l_1930;
                int32_t *l_1938 = &l_1763;
                int32_t *l_1939 = (void*)0;
                int32_t *l_1940 = &l_1921;
                int32_t *l_1941 = &l_1798;
                int32_t *l_1942 = &l_1870;
                int32_t *l_1943 = &p_2262->g_343;
                int32_t *l_1944 = (void*)0;
                int32_t *l_1945 = (void*)0;
                int32_t *l_1946 = &l_1924;
                int32_t *l_1947 = &l_1740;
                int32_t *l_1948[1][4];
                int i, j;
                for (i = 0; i < 1; i++)
                {
                    for (j = 0; j < 4; j++)
                        l_1948[i][j] = &p_2262->g_844;
                }
                (*l_1828) &= (safe_sub_func_int64_t_s_s((((void*)0 == (*p_2262->g_311)) != (((((**p_2262->g_1239) = (p_30 , (**p_2262->g_1239))) == ((l_1798 = (safe_rshift_func_int16_t_s_s((*p_2262->g_252), (safe_unary_minus_func_int16_t_s((safe_div_func_int64_t_s_s(p_30, (((void*)0 == l_1824) , (safe_mod_func_uint64_t_u_u(0x8142D513DF9544E7L, 0x5AAB770E9FDAE2E5L)))))))))) , l_1801)) , 8UL) <= l_1827[0][1])), l_1752[5]));
                for (l_1813 = 0; (l_1813 > 2); ++l_1813)
                { /* block id: 822 */
                    if ((*p_31))
                        break;
                }
                for (p_2262->g_485 = 0; (p_2262->g_485 < 56); p_2262->g_485 = safe_add_func_uint32_t_u_u(p_2262->g_485, 6))
                { /* block id: 827 */
                    int8_t l_1849 = 0x7EL;
                    int32_t l_1854 = 0x10EA3AEBL;
                    int32_t l_1869[8] = {5L,5L,5L,5L,5L,5L,5L,5L};
                    int i;
                    (*l_1828) |= ((((safe_add_func_uint64_t_u_u(((((safe_sub_func_uint32_t_u_u((safe_lshift_func_int16_t_s_u((*p_2262->g_252), (safe_mul_func_int8_t_s_s((safe_mod_func_uint16_t_u_u((safe_add_func_int8_t_s_s(p_2262->g_1156[8], ((p_32 == (void*)0) , l_1827[0][2]))), (safe_div_func_int64_t_s_s(((safe_lshift_func_uint8_t_u_s((l_1849 < ((!(*p_2262->g_252)) || ((~((p_2262->g_19[3] && ((!((safe_mul_func_int8_t_s_s(p_30, p_30)) && p_30)) && p_30)) >= p_30)) | l_1752[5]))), p_30)) | l_1665[0][3][0]), p_30)))), p_30)))), 1L)) >= 0x4BL) , (void*)0) == (void*)0), p_30)) || p_2262->g_1139) && 1UL) , 0L);
                    for (p_2262->g_236 = (-4); (p_2262->g_236 < 41); p_2262->g_236 = safe_add_func_uint32_t_u_u(p_2262->g_236, 1))
                    { /* block id: 831 */
                        int32_t *l_1855 = (void*)0;
                        int32_t *l_1856 = (void*)0;
                        int32_t *l_1857 = (void*)0;
                        int32_t *l_1858 = &l_1813;
                        int32_t *l_1859 = (void*)0;
                        int32_t *l_1860 = &l_1763;
                        int32_t *l_1861 = &l_1813;
                        int32_t *l_1862 = &l_1813;
                        int32_t *l_1863 = &l_1728[2][2];
                        int32_t *l_1864 = &l_1854;
                        int32_t *l_1865 = (void*)0;
                        int32_t *l_1866 = &p_2262->g_844;
                        int32_t *l_1867 = &l_1728[2][2];
                        int32_t *l_1868[3];
                        int8_t *l_1878[1][3];
                        uint64_t *l_1879[10][1][7] = {{{&l_1666,&p_2262->g_672[0][1],&p_2262->g_687[2][3],&l_1666,&p_2262->g_672[0][0],&p_2262->g_687[2][3],&p_2262->g_687[2][3]}},{{&l_1666,&p_2262->g_672[0][1],&p_2262->g_687[2][3],&l_1666,&p_2262->g_672[0][0],&p_2262->g_687[2][3],&p_2262->g_687[2][3]}},{{&l_1666,&p_2262->g_672[0][1],&p_2262->g_687[2][3],&l_1666,&p_2262->g_672[0][0],&p_2262->g_687[2][3],&p_2262->g_687[2][3]}},{{&l_1666,&p_2262->g_672[0][1],&p_2262->g_687[2][3],&l_1666,&p_2262->g_672[0][0],&p_2262->g_687[2][3],&p_2262->g_687[2][3]}},{{&l_1666,&p_2262->g_672[0][1],&p_2262->g_687[2][3],&l_1666,&p_2262->g_672[0][0],&p_2262->g_687[2][3],&p_2262->g_687[2][3]}},{{&l_1666,&p_2262->g_672[0][1],&p_2262->g_687[2][3],&l_1666,&p_2262->g_672[0][0],&p_2262->g_687[2][3],&p_2262->g_687[2][3]}},{{&l_1666,&p_2262->g_672[0][1],&p_2262->g_687[2][3],&l_1666,&p_2262->g_672[0][0],&p_2262->g_687[2][3],&p_2262->g_687[2][3]}},{{&l_1666,&p_2262->g_672[0][1],&p_2262->g_687[2][3],&l_1666,&p_2262->g_672[0][0],&p_2262->g_687[2][3],&p_2262->g_687[2][3]}},{{&l_1666,&p_2262->g_672[0][1],&p_2262->g_687[2][3],&l_1666,&p_2262->g_672[0][0],&p_2262->g_687[2][3],&p_2262->g_687[2][3]}},{{&l_1666,&p_2262->g_672[0][1],&p_2262->g_687[2][3],&l_1666,&p_2262->g_672[0][0],&p_2262->g_687[2][3],&p_2262->g_687[2][3]}}};
                        int i, j, k;
                        for (i = 0; i < 3; i++)
                            l_1868[i] = (void*)0;
                        for (i = 0; i < 1; i++)
                        {
                            for (j = 0; j < 3; j++)
                                l_1878[i][j] = &p_2262->g_469;
                        }
                        l_1872--;
                        (*l_1858) ^= 0x69C9C82BL;
                        (*l_1863) = ((+(*p_32)) >= (0xFCF48ED64ED5CA64L >= (p_2262->g_1108 = ((&p_2262->g_1474[4] != (void*)0) , (safe_rshift_func_int16_t_s_s((((l_1854 ^= (250UL == ((void*)0 != l_1877[6][5]))) >= (l_1798 ^= ((((!(*p_2262->g_252)) == l_1849) == p_30) <= p_30))) && 0x1760F631L), 14))))));
                    }
                    if ((0x76262EF761CB5919L <= (+((l_1854 && (p_30 != 6L)) || (safe_div_func_uint32_t_u_u((safe_rshift_func_uint8_t_u_s(((safe_mod_func_uint32_t_u_u(((p_2262->g_654[2][5] == (p_30 == (safe_div_func_int64_t_s_s(((safe_div_func_uint64_t_u_u(((*l_1828) = (safe_lshift_func_uint16_t_u_u((safe_sub_func_uint32_t_u_u(p_2262->g_1426, p_2262->g_1039[0])), ((safe_div_func_int16_t_s_s(0x7163L, 0x253DL)) < l_1752[5])))), 4L)) > l_1666), 0x17809F08B4341B7BL)))) , l_1827[0][4]), l_1872)) && l_1827[0][3]), 1)), (*p_32)))))))
                    { /* block id: 840 */
                        (*l_1619) = func_82(&l_1870, ((safe_lshift_func_int8_t_s_s((+(-5L)), (safe_sub_func_uint64_t_u_u(((void*)0 == l_1904), (0x32C5L >= (((safe_mul_func_int8_t_s_s(((p_30 < p_30) != (1UL && (safe_sub_func_uint32_t_u_u((((safe_div_func_uint16_t_u_u((safe_lshift_func_uint16_t_u_s((safe_rshift_func_uint16_t_u_s((safe_mul_func_uint16_t_u_u(((((safe_add_func_int8_t_s_s(((l_1919 == (void*)0) | p_30), 3L)) && p_2262->g_1161[0][2]) || FAKE_DIVERGE(p_2262->global_2_offset, get_global_id(2), 10)) , (*p_2262->g_653)), (*l_1828))), (**p_2262->g_251))), 8)), p_30)) < p_2262->g_1039[0]) , 4294967295UL), p_2262->g_138[0])))), 7L)) , p_30) != p_30)))))) > (-5L)), p_30, l_1920, l_1854, p_2262);
                    }
                    else
                    { /* block id: 842 */
                        int32_t *l_1922 = &l_1813;
                        int32_t *l_1923[2];
                        int i;
                        for (i = 0; i < 2; i++)
                            l_1923[i] = &l_1798;
                        --l_1934;
                    }
                }
                --l_1952;
            }
            for (l_1924 = 0; (l_1924 != 24); l_1924 = safe_add_func_int8_t_s_s(l_1924, 1))
            { /* block id: 850 */
                int64_t l_1975 = (-9L);
                int32_t l_1979 = 0L;
                int64_t l_1993 = (-1L);
                uint32_t l_2017 = 0UL;
                uint32_t *l_2024[10] = {(void*)0,&p_2262->g_684,(void*)0,(void*)0,&p_2262->g_684,(void*)0,(void*)0,&p_2262->g_684,(void*)0,(void*)0};
                int32_t ***l_2027 = &l_2026;
                int i;
                (1 + 1);
            }
            for (l_1924 = 0; (l_1924 <= 7); l_1924 += 1)
            { /* block id: 887 */
                int i;
                if (l_2011[l_1924])
                    break;
                for (p_2262->g_308 = 9; (p_2262->g_308 >= 0); p_2262->g_308 -= 1)
                { /* block id: 891 */
                    int32_t *l_2028 = &l_1949[8];
                    int32_t *l_2029 = &l_1763;
                    int32_t *l_2030 = &l_1798;
                    int32_t *l_2031[7] = {&p_2262->g_7,&l_1931,&p_2262->g_7,&p_2262->g_7,&l_1931,&p_2262->g_7,&p_2262->g_7};
                    int i;
                    ++l_2033[5];
                    if (p_2262->g_79[(p_2262->g_1101 + 4)])
                        continue;
                }
            }
        }
        (*l_1994) |= (*p_31);
    }
    return l_2036;
}


/* ------------------------------------------ */
/* 
 * reads : p_2262->g_177 p_2262->g_844 p_2262->g_1108
 * writes: p_2262->g_177 p_2262->g_1440 p_2262->g_844
 */
int8_t  func_39(int32_t * p_40, uint32_t  p_41, int16_t * p_42, struct S0 * p_2262)
{ /* block id: 611 */
    int32_t l_1458[2];
    int32_t *l_1472 = &p_2262->g_1425;
    int32_t **l_1471 = &l_1472;
    uint32_t l_1476 = 0x08E399C1L;
    uint32_t l_1479 = 4294967291UL;
    int32_t l_1528 = (-10L);
    int32_t l_1530 = 0L;
    int32_t l_1532 = 0x00A71E77L;
    int32_t l_1533 = 0x359E34CCL;
    int32_t l_1539[4][3][2] = {{{(-6L),0L},{(-6L),0L},{(-6L),0L}},{{(-6L),0L},{(-6L),0L},{(-6L),0L}},{{(-6L),0L},{(-6L),0L},{(-6L),0L}},{{(-6L),0L},{(-6L),0L},{(-6L),0L}}};
    int16_t ***l_1545 = &p_2262->g_251;
    uint8_t l_1561 = 0UL;
    uint32_t l_1590 = 0UL;
    uint64_t l_1592 = 0x08833C91BE348198L;
    int32_t *l_1598 = &l_1539[3][0][0];
    int32_t *l_1599 = &p_2262->g_177;
    int32_t *l_1600[8] = {&l_1539[2][2][1],(void*)0,&l_1539[2][2][1],&l_1539[2][2][1],(void*)0,&l_1539[2][2][1],&l_1539[2][2][1],(void*)0};
    uint16_t l_1601 = 0UL;
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_1458[i] = 0x5B5067EBL;
    for (p_2262->g_177 = 0; (p_2262->g_177 <= 1); p_2262->g_177 += 1)
    { /* block id: 614 */
        int32_t ***l_1441 = &p_2262->g_1440;
        uint8_t *l_1451 = &p_2262->g_236;
        int16_t l_1454 = 0L;
        uint64_t *l_1457 = &p_2262->g_687[2][0];
        uint32_t *l_1459 = &p_2262->g_684;
        uint32_t *l_1480 = &p_2262->g_684;
        int32_t l_1527 = 6L;
        int32_t l_1534 = 0L;
        int32_t l_1535 = (-7L);
        int32_t l_1536 = 0L;
        int32_t l_1537 = 1L;
        int32_t l_1538 = (-2L);
        uint16_t **l_1573[6][9] = {{&p_2262->g_1241,&p_2262->g_1241,(void*)0,(void*)0,(void*)0,&p_2262->g_1241,&p_2262->g_1241,&p_2262->g_1241,&p_2262->g_1241},{&p_2262->g_1241,&p_2262->g_1241,(void*)0,(void*)0,(void*)0,&p_2262->g_1241,&p_2262->g_1241,&p_2262->g_1241,&p_2262->g_1241},{&p_2262->g_1241,&p_2262->g_1241,(void*)0,(void*)0,(void*)0,&p_2262->g_1241,&p_2262->g_1241,&p_2262->g_1241,&p_2262->g_1241},{&p_2262->g_1241,&p_2262->g_1241,(void*)0,(void*)0,(void*)0,&p_2262->g_1241,&p_2262->g_1241,&p_2262->g_1241,&p_2262->g_1241},{&p_2262->g_1241,&p_2262->g_1241,(void*)0,(void*)0,(void*)0,&p_2262->g_1241,&p_2262->g_1241,&p_2262->g_1241,&p_2262->g_1241},{&p_2262->g_1241,&p_2262->g_1241,(void*)0,(void*)0,(void*)0,&p_2262->g_1241,&p_2262->g_1241,&p_2262->g_1241,&p_2262->g_1241}};
        int16_t l_1591[9] = {(-3L),0x2DDFL,(-3L),(-3L),0x2DDFL,(-3L),(-3L),0x2DDFL,(-3L)};
        int i, j;
        (*l_1441) = &p_40;
    }
    for (p_2262->g_844 = (-22); (p_2262->g_844 != (-13)); p_2262->g_844 = safe_add_func_int64_t_s_s(p_2262->g_844, 5))
    { /* block id: 697 */
        int16_t l_1596 = 0x17CCL;
        int32_t *l_1597[7][6][6] = {{{(void*)0,&p_2262->g_12,&p_2262->g_177,&l_1532,&l_1532,&p_2262->g_2},{(void*)0,&p_2262->g_12,&p_2262->g_177,&l_1532,&l_1532,&p_2262->g_2},{(void*)0,&p_2262->g_12,&p_2262->g_177,&l_1532,&l_1532,&p_2262->g_2},{(void*)0,&p_2262->g_12,&p_2262->g_177,&l_1532,&l_1532,&p_2262->g_2},{(void*)0,&p_2262->g_12,&p_2262->g_177,&l_1532,&l_1532,&p_2262->g_2},{(void*)0,&p_2262->g_12,&p_2262->g_177,&l_1532,&l_1532,&p_2262->g_2}},{{(void*)0,&p_2262->g_12,&p_2262->g_177,&l_1532,&l_1532,&p_2262->g_2},{(void*)0,&p_2262->g_12,&p_2262->g_177,&l_1532,&l_1532,&p_2262->g_2},{(void*)0,&p_2262->g_12,&p_2262->g_177,&l_1532,&l_1532,&p_2262->g_2},{(void*)0,&p_2262->g_12,&p_2262->g_177,&l_1532,&l_1532,&p_2262->g_2},{(void*)0,&p_2262->g_12,&p_2262->g_177,&l_1532,&l_1532,&p_2262->g_2},{(void*)0,&p_2262->g_12,&p_2262->g_177,&l_1532,&l_1532,&p_2262->g_2}},{{(void*)0,&p_2262->g_12,&p_2262->g_177,&l_1532,&l_1532,&p_2262->g_2},{(void*)0,&p_2262->g_12,&p_2262->g_177,&l_1532,&l_1532,&p_2262->g_2},{(void*)0,&p_2262->g_12,&p_2262->g_177,&l_1532,&l_1532,&p_2262->g_2},{(void*)0,&p_2262->g_12,&p_2262->g_177,&l_1532,&l_1532,&p_2262->g_2},{(void*)0,&p_2262->g_12,&p_2262->g_177,&l_1532,&l_1532,&p_2262->g_2},{(void*)0,&p_2262->g_12,&p_2262->g_177,&l_1532,&l_1532,&p_2262->g_2}},{{(void*)0,&p_2262->g_12,&p_2262->g_177,&l_1532,&l_1532,&p_2262->g_2},{(void*)0,&p_2262->g_12,&p_2262->g_177,&l_1532,&l_1532,&p_2262->g_2},{(void*)0,&p_2262->g_12,&p_2262->g_177,&l_1532,&l_1532,&p_2262->g_2},{(void*)0,&p_2262->g_12,&p_2262->g_177,&l_1532,&l_1532,&p_2262->g_2},{(void*)0,&p_2262->g_12,&p_2262->g_177,&l_1532,&l_1532,&p_2262->g_2},{(void*)0,&p_2262->g_12,&p_2262->g_177,&l_1532,&l_1532,&p_2262->g_2}},{{(void*)0,&p_2262->g_12,&p_2262->g_177,&l_1532,&l_1532,&p_2262->g_2},{(void*)0,&p_2262->g_12,&p_2262->g_177,&l_1532,&l_1532,&p_2262->g_2},{(void*)0,&p_2262->g_12,&p_2262->g_177,&l_1532,&l_1532,&p_2262->g_2},{(void*)0,&p_2262->g_12,&p_2262->g_177,&l_1532,&l_1532,&p_2262->g_2},{(void*)0,&p_2262->g_12,&p_2262->g_177,&l_1532,&l_1532,&p_2262->g_2},{(void*)0,&p_2262->g_12,&p_2262->g_177,&l_1532,&l_1532,&p_2262->g_2}},{{(void*)0,&p_2262->g_12,&p_2262->g_177,&l_1532,&l_1532,&p_2262->g_2},{(void*)0,&p_2262->g_12,&p_2262->g_177,&l_1532,&l_1532,&p_2262->g_2},{(void*)0,&p_2262->g_12,&p_2262->g_177,&l_1532,&l_1532,&p_2262->g_2},{(void*)0,&p_2262->g_12,&p_2262->g_177,&l_1532,&l_1532,&p_2262->g_2},{(void*)0,&p_2262->g_12,&p_2262->g_177,&l_1532,&l_1532,&p_2262->g_2},{(void*)0,&p_2262->g_12,&p_2262->g_177,&l_1532,&l_1532,&p_2262->g_2}},{{(void*)0,&p_2262->g_12,&p_2262->g_177,&l_1532,&l_1532,&p_2262->g_2},{(void*)0,&p_2262->g_12,&p_2262->g_177,&l_1532,&l_1532,&p_2262->g_2},{(void*)0,&p_2262->g_12,&p_2262->g_177,&l_1532,&l_1532,&p_2262->g_2},{(void*)0,&p_2262->g_12,&p_2262->g_177,&l_1532,&l_1532,&p_2262->g_2},{(void*)0,&p_2262->g_12,&p_2262->g_177,&l_1532,&l_1532,&p_2262->g_2},{(void*)0,&p_2262->g_12,&p_2262->g_177,&l_1532,&l_1532,&p_2262->g_2}}};
        int i, j, k;
        (1 + 1);
    }
    l_1601--;
    return p_2262->g_1108;
}


/* ------------------------------------------ */
/* 
 * reads : p_2262->g_12 p_2262->g_6 p_2262->g_7 p_2262->g_79 p_2262->g_19 p_2262->g_115 p_2262->g_2 p_2262->g_52 p_2262->g_138 p_2262->g_141 p_2262->g_154 p_2262->g_177 p_2262->g_311 p_2262->g_151 p_2262->g_251 p_2262->g_252 p_2262->g_156 p_2262->g_356 p_2262->g_380 p_2262->g_381 p_2262->g_469 p_2262->g_236 p_2262->g_331 p_2262->g_192 p_2262->g_485 p_2262->g_308 p_2262->g_437 p_2262->g_343 p_2262->g_640 p_2262->g_652 p_2262->g_653 p_2262->g_654 p_2262->g_687 p_2262->g_672 p_2262->g_413 p_2262->g_809 p_2262->g_579 p_2262->g_846 p_2262->g_684 p_2262->g_899 p_2262->g_844 p_2262->g_962 p_2262->g_1034 p_2262->g_1039 p_2262->g_650 p_2262->g_1052 p_2262->g_776 p_2262->g_1108 p_2262->g_1126 p_2262->g_1137 p_2262->g_1190 p_2262->g_1152 p_2262->g_1156 p_2262->g_1161 p_2262->g_567 p_2262->g_1239
 * writes: p_2262->g_52 p_2262->g_27 p_2262->g_12 p_2262->g_79 p_2262->g_138 p_2262->g_141 p_2262->g_151 p_2262->g_155 p_2262->g_177 p_2262->g_236 p_2262->g_469 p_2262->g_485 p_2262->g_567 p_2262->g_579 p_2262->g_380 p_2262->g_437 p_2262->g_650 p_2262->g_652 p_2262->g_672 p_2262->g_684 p_2262->g_687 p_2262->g_308 p_2262->g_844 p_2262->g_846 p_2262->g_654 p_2262->g_1034 p_2262->g_1039 p_2262->g_1052 p_2262->g_250 p_2262->g_1101 p_2262->g_1108 p_2262->g_381 p_2262->g_1190 p_2262->g_343 p_2262->g_1239 p_2262->g_1436
 */
int32_t  func_43(uint64_t  p_44, struct S0 * p_2262)
{ /* block id: 15 */
    uint8_t l_53 = 0x58L;
    int32_t *l_56 = &p_2262->g_2;
    int16_t *l_57 = &p_2262->g_27;
    uint16_t l_1206 = 0xE7C3L;
    int32_t *l_1431[4] = {&p_2262->g_177,&p_2262->g_177,&p_2262->g_177,&p_2262->g_177};
    int64_t l_1432 = (-1L);
    uint64_t *l_1434 = &p_2262->g_1190[4][0][4];
    uint64_t **l_1433 = &l_1434;
    uint64_t ***l_1438 = &p_2262->g_1436[1][1][2];
    int i;
    l_1432 = func_46((((safe_sub_func_uint16_t_u_u((p_2262->g_52 = GROUP_DIVERGE(2, 1)), 0x32D4L)) , (l_53 < (safe_mod_func_int16_t_s_s(((*l_57) = (l_56 == l_56)), (safe_div_func_int32_t_s_s((func_60(p_44, l_56, p_44, func_66(p_44, p_44, l_56, l_57, l_56, p_2262), l_56, p_2262) && l_1206), 0x699C3B01L)))))) , p_2262->g_1161[0][5]), p_2262->g_7, p_2262->g_7, p_2262);
    (*l_1438) = l_1433;
    return p_44;
}


/* ------------------------------------------ */
/* 
 * reads : p_2262->g_684 p_2262->g_331 p_2262->g_485 p_2262->g_141 p_2262->g_343 p_2262->g_567 p_2262->g_1239 p_2262->g_251 p_2262->g_252 p_2262->g_311 p_2262->g_650
 * writes: p_2262->g_343 p_2262->g_684 p_2262->g_151 p_2262->g_485 p_2262->g_141 p_2262->g_567 p_2262->g_1239 p_2262->g_79 p_2262->g_650
 */
int32_t  func_46(int32_t  p_47, int64_t  p_48, uint32_t  p_49, struct S0 * p_2262)
{ /* block id: 506 */
    int32_t *l_1207 = &p_2262->g_343;
    int64_t l_1214 = 6L;
    int64_t l_1216[8] = {0x3633616BB95FB50FL,(-10L),0x3633616BB95FB50FL,0x3633616BB95FB50FL,(-10L),0x3633616BB95FB50FL,0x3633616BB95FB50FL,(-10L)};
    int32_t l_1217 = 0x31D9EF8CL;
    int32_t l_1218 = 0x1B5A2C2AL;
    int32_t l_1219 = 1L;
    int32_t l_1220 = 0x7D00B672L;
    int32_t l_1221[7][10][1] = {{{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L}},{{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L},{1L}}};
    uint32_t l_1289 = 7UL;
    int16_t ***l_1397 = (void*)0;
    int32_t *l_1424[5];
    int8_t l_1427[10] = {0x42L,0x1DL,(-1L),0x1DL,0x42L,0x42L,0x1DL,(-1L),0x1DL,0x42L};
    uint16_t l_1428 = 0x9CF6L;
    int i, j, k;
    for (i = 0; i < 5; i++)
        l_1424[i] = &p_2262->g_844;
    (*l_1207) = (-1L);
    for (p_2262->g_684 = 0; (p_2262->g_684 >= 13); p_2262->g_684++)
    { /* block id: 510 */
        int32_t **l_1210[5];
        int i;
        for (i = 0; i < 5; i++)
            l_1210[i] = &l_1207;
        (*p_2262->g_331) = l_1207;
        if (p_47)
            continue;
    }
    for (p_2262->g_485 = 0; (p_2262->g_485 >= 60); p_2262->g_485 = safe_add_func_uint32_t_u_u(p_2262->g_485, 3))
    { /* block id: 516 */
        int32_t *l_1213 = &p_2262->g_343;
        int32_t *l_1215[10] = {&p_2262->g_343,&p_2262->g_343,&p_2262->g_343,&p_2262->g_343,&p_2262->g_343,&p_2262->g_343,&p_2262->g_343,&p_2262->g_343,&p_2262->g_343,&p_2262->g_343};
        uint8_t l_1222 = 0xD6L;
        int8_t l_1251 = 6L;
        int32_t l_1265 = 0x5F2A19FBL;
        uint64_t **l_1293 = &p_2262->g_1052;
        int16_t *l_1301 = &p_2262->g_27;
        int32_t l_1339 = 1L;
        uint8_t *****l_1398 = (void*)0;
        int16_t l_1420 = 0x5EF6L;
        uint8_t l_1422 = 0x10L;
        int i;
        ++l_1222;
        for (p_2262->g_141 = 0; (p_2262->g_141 <= 9); p_2262->g_141 += 1)
        { /* block id: 520 */
            uint8_t ***l_1249 = &p_2262->g_155[2][1];
            if ((*l_1207))
                break;
            for (l_1218 = 1; (l_1218 <= 9); l_1218 += 1)
            { /* block id: 524 */
                uint16_t *l_1231 = (void*)0;
                uint16_t *l_1232 = &p_2262->g_567;
                uint16_t ****l_1242 = &p_2262->g_1239;
                int32_t l_1250 = (-5L);
                if ((safe_mul_func_int8_t_s_s((safe_div_func_int16_t_s_s((safe_mul_func_uint16_t_u_u(((*l_1232)--), 65535UL)), (safe_mul_func_uint16_t_u_u(((safe_lshift_func_int16_t_s_s(((**p_2262->g_251) = (&p_2262->g_652 != ((*l_1242) = p_2262->g_1239))), (safe_mul_func_int16_t_s_s((((((safe_div_func_int8_t_s_s(((safe_mod_func_int8_t_s_s(((&p_48 != (void*)0) , (*l_1213)), ((0L < (l_1249 != (void*)0)) || FAKE_DIVERGE(p_2262->global_2_offset, get_global_id(2), 10)))) != GROUP_DIVERGE(0, 1)), p_47)) != p_49) < l_1250) >= p_47) | 0x0DL), l_1251)))) != 0x3BBB7574L), 0xA693L)))), (*l_1213))))
                { /* block id: 528 */
                    if (p_49)
                        break;
                }
                else
                { /* block id: 530 */
                    if (p_49)
                        break;
                }
            }
        }
        for (l_1219 = (-13); (l_1219 <= 4); ++l_1219)
        { /* block id: 537 */
            int32_t *l_1254 = (void*)0;
            (*p_2262->g_311) = l_1254;
            (*l_1213) = (FAKE_DIVERGE(p_2262->global_2_offset, get_global_id(2), 10) , p_48);
            (*l_1207) = 8L;
            if (p_49)
                continue;
        }
        for (p_2262->g_650 = 0; (p_2262->g_650 <= 9); p_2262->g_650 += 1)
        { /* block id: 545 */
            int32_t *l_1259 = &p_2262->g_1039[0];
            int32_t l_1260 = 0x06E875CAL;
            int64_t *l_1261 = &l_1216[6];
            uint32_t *l_1264[9];
            int8_t *l_1268 = &l_1251;
            int64_t *l_1275 = &p_2262->g_1276;
            uint8_t *l_1277 = (void*)0;
            uint8_t *l_1278 = &l_1222;
            uint32_t l_1290 = 0xBD23C5CEL;
            int16_t *l_1302 = &p_2262->g_79[4];
            uint8_t *****l_1389[4][5][8] = {{{&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380},{&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380},{&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380},{&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380},{&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380}},{{&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380},{&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380},{&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380},{&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380},{&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380}},{{&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380},{&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380},{&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380},{&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380},{&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380}},{{&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380},{&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380},{&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380},{&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380},{&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380}}};
            uint8_t **l_1390 = &p_2262->g_156;
            int32_t **l_1399 = &p_2262->g_151[5];
            uint16_t ****l_1406 = &p_2262->g_1239;
            uint16_t *l_1411 = &p_2262->g_1332[0];
            int32_t l_1421[8];
            uint32_t l_1423 = 0x3F02816DL;
            int i, j, k;
            for (i = 0; i < 9; i++)
                l_1264[i] = &p_2262->g_684;
            for (i = 0; i < 8; i++)
                l_1421[i] = 0x76E3A656L;
            (1 + 1);
        }
    }
    --l_1428;
    return p_47;
}


/* ------------------------------------------ */
/* 
 * reads : p_2262->g_2
 * writes:
 */
int32_t  func_60(uint8_t  p_61, int32_t * p_62, uint32_t  p_63, int32_t * p_64, int32_t * p_65, struct S0 * p_2262)
{ /* block id: 503 */
    uint64_t l_1203 = 18446744073709551615UL;
    ++l_1203;
    return (*p_62);
}


/* ------------------------------------------ */
/* 
 * reads : p_2262->g_12 p_2262->g_6 p_2262->g_7 p_2262->g_79 p_2262->g_19 p_2262->g_115 p_2262->g_2 p_2262->g_52 p_2262->g_138 p_2262->g_141 p_2262->g_154 p_2262->g_177 p_2262->g_311 p_2262->g_151 p_2262->g_251 p_2262->g_252 p_2262->g_156 p_2262->g_356 p_2262->g_380 p_2262->g_381 p_2262->g_469 p_2262->g_236 p_2262->g_331 p_2262->g_192 p_2262->g_485 p_2262->g_308 p_2262->g_437 p_2262->g_343 p_2262->g_640 p_2262->g_652 p_2262->g_653 p_2262->g_654 p_2262->g_687 p_2262->g_672 p_2262->g_413 p_2262->g_809 p_2262->g_579 p_2262->g_846 p_2262->g_684 p_2262->g_899 p_2262->g_962 p_2262->g_1034 p_2262->g_1039 p_2262->g_650 p_2262->g_1052 p_2262->g_776 p_2262->g_1108 p_2262->g_1126 p_2262->g_1137 p_2262->g_1190 p_2262->g_1152 p_2262->g_1156 p_2262->g_844
 * writes: p_2262->g_12 p_2262->g_52 p_2262->g_79 p_2262->g_138 p_2262->g_141 p_2262->g_151 p_2262->g_155 p_2262->g_177 p_2262->g_236 p_2262->g_469 p_2262->g_485 p_2262->g_567 p_2262->g_579 p_2262->g_380 p_2262->g_437 p_2262->g_650 p_2262->g_652 p_2262->g_672 p_2262->g_684 p_2262->g_687 p_2262->g_308 p_2262->g_844 p_2262->g_846 p_2262->g_654 p_2262->g_1034 p_2262->g_1039 p_2262->g_1052 p_2262->g_250 p_2262->g_1101 p_2262->g_1108 p_2262->g_381 p_2262->g_1190
 */
int32_t * func_66(int32_t  p_67, int8_t  p_68, int32_t * p_69, int16_t * p_70, int32_t * p_71, struct S0 * p_2262)
{ /* block id: 18 */
    int16_t *l_78[6][7] = {{&p_2262->g_79[2],&p_2262->g_79[0],&p_2262->g_79[0],&p_2262->g_79[2],&p_2262->g_79[2],&p_2262->g_79[0],&p_2262->g_79[0]},{&p_2262->g_79[2],&p_2262->g_79[0],&p_2262->g_79[0],&p_2262->g_79[2],&p_2262->g_79[2],&p_2262->g_79[0],&p_2262->g_79[0]},{&p_2262->g_79[2],&p_2262->g_79[0],&p_2262->g_79[0],&p_2262->g_79[2],&p_2262->g_79[2],&p_2262->g_79[0],&p_2262->g_79[0]},{&p_2262->g_79[2],&p_2262->g_79[0],&p_2262->g_79[0],&p_2262->g_79[2],&p_2262->g_79[2],&p_2262->g_79[0],&p_2262->g_79[0]},{&p_2262->g_79[2],&p_2262->g_79[0],&p_2262->g_79[0],&p_2262->g_79[2],&p_2262->g_79[2],&p_2262->g_79[0],&p_2262->g_79[0]},{&p_2262->g_79[2],&p_2262->g_79[0],&p_2262->g_79[0],&p_2262->g_79[2],&p_2262->g_79[2],&p_2262->g_79[0],&p_2262->g_79[0]}};
    int32_t l_94 = 0x27019510L;
    int32_t **l_414 = &p_2262->g_151[5];
    int32_t l_730[2][2] = {{(-1L),(-1L)},{(-1L),(-1L)}};
    uint32_t l_731 = 4294967289UL;
    uint32_t *l_742 = &p_2262->g_684;
    uint64_t l_761 = 0xA294665F2EEC2A61L;
    uint8_t *****l_783 = &p_2262->g_380;
    uint8_t ******l_782 = &l_783;
    int64_t l_790 = 0L;
    uint16_t *l_793 = &p_2262->g_485;
    uint16_t **l_792 = &l_793;
    int32_t l_843 = 3L;
    int32_t *l_851 = &p_2262->g_846;
    uint32_t l_859[5][6] = {{0UL,0x0FAE4CD3L,0x378E0D55L,4294967295UL,0x0FAE4CD3L,4294967295UL},{0UL,0x0FAE4CD3L,0x378E0D55L,4294967295UL,0x0FAE4CD3L,4294967295UL},{0UL,0x0FAE4CD3L,0x378E0D55L,4294967295UL,0x0FAE4CD3L,4294967295UL},{0UL,0x0FAE4CD3L,0x378E0D55L,4294967295UL,0x0FAE4CD3L,4294967295UL},{0UL,0x0FAE4CD3L,0x378E0D55L,4294967295UL,0x0FAE4CD3L,4294967295UL}};
    uint16_t l_915 = 9UL;
    int64_t l_985 = (-6L);
    uint32_t l_1002[5][4][5] = {{{0x2C79B226L,0x2C79B226L,1UL,4294967295UL,0x6F1A7596L},{0x2C79B226L,0x2C79B226L,1UL,4294967295UL,0x6F1A7596L},{0x2C79B226L,0x2C79B226L,1UL,4294967295UL,0x6F1A7596L},{0x2C79B226L,0x2C79B226L,1UL,4294967295UL,0x6F1A7596L}},{{0x2C79B226L,0x2C79B226L,1UL,4294967295UL,0x6F1A7596L},{0x2C79B226L,0x2C79B226L,1UL,4294967295UL,0x6F1A7596L},{0x2C79B226L,0x2C79B226L,1UL,4294967295UL,0x6F1A7596L},{0x2C79B226L,0x2C79B226L,1UL,4294967295UL,0x6F1A7596L}},{{0x2C79B226L,0x2C79B226L,1UL,4294967295UL,0x6F1A7596L},{0x2C79B226L,0x2C79B226L,1UL,4294967295UL,0x6F1A7596L},{0x2C79B226L,0x2C79B226L,1UL,4294967295UL,0x6F1A7596L},{0x2C79B226L,0x2C79B226L,1UL,4294967295UL,0x6F1A7596L}},{{0x2C79B226L,0x2C79B226L,1UL,4294967295UL,0x6F1A7596L},{0x2C79B226L,0x2C79B226L,1UL,4294967295UL,0x6F1A7596L},{0x2C79B226L,0x2C79B226L,1UL,4294967295UL,0x6F1A7596L},{0x2C79B226L,0x2C79B226L,1UL,4294967295UL,0x6F1A7596L}},{{0x2C79B226L,0x2C79B226L,1UL,4294967295UL,0x6F1A7596L},{0x2C79B226L,0x2C79B226L,1UL,4294967295UL,0x6F1A7596L},{0x2C79B226L,0x2C79B226L,1UL,4294967295UL,0x6F1A7596L},{0x2C79B226L,0x2C79B226L,1UL,4294967295UL,0x6F1A7596L}}};
    int8_t l_1041[6][6] = {{6L,6L,0x79L,0x44L,(-6L),0x44L},{6L,6L,0x79L,0x44L,(-6L),0x44L},{6L,6L,0x79L,0x44L,(-6L),0x44L},{6L,6L,0x79L,0x44L,(-6L),0x44L},{6L,6L,0x79L,0x44L,(-6L),0x44L},{6L,6L,0x79L,0x44L,(-6L),0x44L}};
    uint8_t l_1042 = 0x76L;
    int i, j, k;
    if ((safe_lshift_func_uint16_t_u_s(((safe_mul_func_uint8_t_u_u((safe_lshift_func_int8_t_s_s(p_67, 5)), (((l_78[1][5] != (p_67 , func_80(((*l_414) = func_82(func_88((safe_div_func_int32_t_s_s(((safe_sub_func_uint16_t_u_u((l_94 < p_67), (safe_div_func_uint64_t_u_u((safe_add_func_int64_t_s_s(l_94, (safe_lshift_func_uint16_t_u_u(((1UL & ((!(l_94 || l_94)) != l_94)) >= p_67), GROUP_DIVERGE(0, 1))))), l_94)))) , p_2262->g_12), GROUP_DIVERGE(1, 1))), p_2262), p_2262->g_79[0], p_68, l_78[4][6], p_2262->g_52, p_2262)), p_2262))) == l_94) , FAKE_DIVERGE(p_2262->global_1_offset, get_global_id(1), 10)))) & p_68), p_68)))
    { /* block id: 294 */
        int32_t *l_727 = &p_2262->g_12;
        int32_t *l_728 = &l_94;
        int32_t *l_729[8] = {&p_2262->g_2,&p_2262->g_2,&p_2262->g_2,&p_2262->g_2,&p_2262->g_2,&p_2262->g_2,&p_2262->g_2,&p_2262->g_2};
        int32_t l_734 = 0x438097BAL;
        uint32_t l_735 = 0xB61DBD3CL;
        int i;
lbl_745:
        --l_731;
        --l_735;
        (*l_728) = (-1L);
        if ((safe_add_func_int32_t_s_s((safe_lshift_func_int16_t_s_s((((((void*)0 != &p_2262->g_380) >= (((*p_2262->g_653) <= p_67) & p_2262->g_19[0])) , l_742) == (void*)0), 4)), (safe_div_func_int16_t_s_s((p_70 != l_78[2][4]), (*l_728))))))
        { /* block id: 298 */
            if (l_735)
                goto lbl_745;
            (*l_414) = (*p_2262->g_413);
        }
        else
        { /* block id: 301 */
            uint64_t l_758 = 0x426B49A4D7621D8BL;
            int32_t l_775 = 0L;
            uint16_t *l_786 = &p_2262->g_567;
            uint16_t **l_785 = &l_786;
            int64_t *l_791[9][7][4] = {{{&p_2262->g_437,&l_790,(void*)0,&p_2262->g_437},{&p_2262->g_437,&l_790,(void*)0,&p_2262->g_437},{&p_2262->g_437,&l_790,(void*)0,&p_2262->g_437},{&p_2262->g_437,&l_790,(void*)0,&p_2262->g_437},{&p_2262->g_437,&l_790,(void*)0,&p_2262->g_437},{&p_2262->g_437,&l_790,(void*)0,&p_2262->g_437},{&p_2262->g_437,&l_790,(void*)0,&p_2262->g_437}},{{&p_2262->g_437,&l_790,(void*)0,&p_2262->g_437},{&p_2262->g_437,&l_790,(void*)0,&p_2262->g_437},{&p_2262->g_437,&l_790,(void*)0,&p_2262->g_437},{&p_2262->g_437,&l_790,(void*)0,&p_2262->g_437},{&p_2262->g_437,&l_790,(void*)0,&p_2262->g_437},{&p_2262->g_437,&l_790,(void*)0,&p_2262->g_437},{&p_2262->g_437,&l_790,(void*)0,&p_2262->g_437}},{{&p_2262->g_437,&l_790,(void*)0,&p_2262->g_437},{&p_2262->g_437,&l_790,(void*)0,&p_2262->g_437},{&p_2262->g_437,&l_790,(void*)0,&p_2262->g_437},{&p_2262->g_437,&l_790,(void*)0,&p_2262->g_437},{&p_2262->g_437,&l_790,(void*)0,&p_2262->g_437},{&p_2262->g_437,&l_790,(void*)0,&p_2262->g_437},{&p_2262->g_437,&l_790,(void*)0,&p_2262->g_437}},{{&p_2262->g_437,&l_790,(void*)0,&p_2262->g_437},{&p_2262->g_437,&l_790,(void*)0,&p_2262->g_437},{&p_2262->g_437,&l_790,(void*)0,&p_2262->g_437},{&p_2262->g_437,&l_790,(void*)0,&p_2262->g_437},{&p_2262->g_437,&l_790,(void*)0,&p_2262->g_437},{&p_2262->g_437,&l_790,(void*)0,&p_2262->g_437},{&p_2262->g_437,&l_790,(void*)0,&p_2262->g_437}},{{&p_2262->g_437,&l_790,(void*)0,&p_2262->g_437},{&p_2262->g_437,&l_790,(void*)0,&p_2262->g_437},{&p_2262->g_437,&l_790,(void*)0,&p_2262->g_437},{&p_2262->g_437,&l_790,(void*)0,&p_2262->g_437},{&p_2262->g_437,&l_790,(void*)0,&p_2262->g_437},{&p_2262->g_437,&l_790,(void*)0,&p_2262->g_437},{&p_2262->g_437,&l_790,(void*)0,&p_2262->g_437}},{{&p_2262->g_437,&l_790,(void*)0,&p_2262->g_437},{&p_2262->g_437,&l_790,(void*)0,&p_2262->g_437},{&p_2262->g_437,&l_790,(void*)0,&p_2262->g_437},{&p_2262->g_437,&l_790,(void*)0,&p_2262->g_437},{&p_2262->g_437,&l_790,(void*)0,&p_2262->g_437},{&p_2262->g_437,&l_790,(void*)0,&p_2262->g_437},{&p_2262->g_437,&l_790,(void*)0,&p_2262->g_437}},{{&p_2262->g_437,&l_790,(void*)0,&p_2262->g_437},{&p_2262->g_437,&l_790,(void*)0,&p_2262->g_437},{&p_2262->g_437,&l_790,(void*)0,&p_2262->g_437},{&p_2262->g_437,&l_790,(void*)0,&p_2262->g_437},{&p_2262->g_437,&l_790,(void*)0,&p_2262->g_437},{&p_2262->g_437,&l_790,(void*)0,&p_2262->g_437},{&p_2262->g_437,&l_790,(void*)0,&p_2262->g_437}},{{&p_2262->g_437,&l_790,(void*)0,&p_2262->g_437},{&p_2262->g_437,&l_790,(void*)0,&p_2262->g_437},{&p_2262->g_437,&l_790,(void*)0,&p_2262->g_437},{&p_2262->g_437,&l_790,(void*)0,&p_2262->g_437},{&p_2262->g_437,&l_790,(void*)0,&p_2262->g_437},{&p_2262->g_437,&l_790,(void*)0,&p_2262->g_437},{&p_2262->g_437,&l_790,(void*)0,&p_2262->g_437}},{{&p_2262->g_437,&l_790,(void*)0,&p_2262->g_437},{&p_2262->g_437,&l_790,(void*)0,&p_2262->g_437},{&p_2262->g_437,&l_790,(void*)0,&p_2262->g_437},{&p_2262->g_437,&l_790,(void*)0,&p_2262->g_437},{&p_2262->g_437,&l_790,(void*)0,&p_2262->g_437},{&p_2262->g_437,&l_790,(void*)0,&p_2262->g_437},{&p_2262->g_437,&l_790,(void*)0,&p_2262->g_437}}};
            uint32_t **l_796 = &l_742;
            int8_t *l_806[2];
            int i, j, k;
            for (i = 0; i < 2; i++)
                l_806[i] = &p_2262->g_579;
            for (p_67 = 0; (p_67 >= (-4)); p_67--)
            { /* block id: 304 */
                uint8_t *****l_752 = &p_2262->g_380;
                int64_t *l_762 = &p_2262->g_437;
                uint16_t *l_774 = (void*)0;
                int32_t l_781 = 0L;
                int8_t l_784 = (-1L);
                (1 + 1);
            }
            (*l_414) = l_727;
            (*l_727) ^= ((((((p_68 = (((l_785 = l_785) != ((safe_mul_func_int16_t_s_s((*l_728), (safe_unary_minus_func_int64_t_s((p_2262->g_437 = l_790))))) , l_792)) >= ((p_2262->g_485 = (((safe_sub_func_int8_t_s_s((p_71 != ((*l_796) = &p_2262->g_684)), (safe_rshift_func_uint8_t_u_u((safe_div_func_int64_t_s_s(((l_775 = (safe_unary_minus_func_int8_t_s((safe_add_func_int16_t_s_s((safe_sub_func_int16_t_s_s((**p_2262->g_251), (**p_2262->g_251))), ((*p_2262->g_653) ^ (**p_2262->g_251))))))) <= 0x40L), 0x29CF51909DBDF755L)), 3)))) <= GROUP_DIVERGE(1, 1)) < 254UL)) | p_2262->g_79[1]))) || l_775) && p_67) <= p_67) >= 0x6BL) == 0x796B48D3L);
        }
    }
    else
    { /* block id: 336 */
        uint64_t l_813[2][3];
        int32_t *l_822 = &l_94;
        int32_t *l_842 = &p_2262->g_177;
        int32_t *l_845 = &p_2262->g_846;
        uint64_t l_847 = 0x62287D6510BFAB77L;
        int64_t *l_893 = &p_2262->g_650;
        int32_t l_911 = 0x5203A61AL;
        int32_t l_914 = (-10L);
        uint8_t ******l_961 = (void*)0;
        int32_t l_986 = (-3L);
        int32_t l_987 = (-1L);
        int32_t l_988 = 0x76F264F5L;
        int32_t l_989 = 0L;
        int32_t l_990 = 0L;
        int32_t l_991 = (-1L);
        int32_t l_992 = 0x23743F69L;
        int32_t l_993 = 0x2482FFCDL;
        int32_t l_994 = 0x025FB8AEL;
        int32_t l_995 = 0x624D6CDCL;
        int32_t l_996 = 0x6DD6C30DL;
        int32_t l_997 = 0x6A8C6D81L;
        int32_t l_998 = 1L;
        int32_t l_999 = 0x7128917FL;
        int32_t l_1000 = 0L;
        int32_t l_1001 = 0x59241FB3L;
        uint32_t l_1007 = 0UL;
        uint8_t ****l_1037[2][9] = {{(void*)0,&p_2262->g_381,(void*)0,(void*)0,&p_2262->g_381,(void*)0,(void*)0,&p_2262->g_381,(void*)0},{(void*)0,&p_2262->g_381,(void*)0,(void*)0,&p_2262->g_381,(void*)0,(void*)0,&p_2262->g_381,(void*)0}};
        uint16_t l_1067 = 65527UL;
        uint64_t l_1118[8][8] = {{18446744073709551615UL,1UL,18446744073709551615UL,18446744073709551615UL,1UL,18446744073709551615UL,18446744073709551615UL,1UL},{18446744073709551615UL,1UL,18446744073709551615UL,18446744073709551615UL,1UL,18446744073709551615UL,18446744073709551615UL,1UL},{18446744073709551615UL,1UL,18446744073709551615UL,18446744073709551615UL,1UL,18446744073709551615UL,18446744073709551615UL,1UL},{18446744073709551615UL,1UL,18446744073709551615UL,18446744073709551615UL,1UL,18446744073709551615UL,18446744073709551615UL,1UL},{18446744073709551615UL,1UL,18446744073709551615UL,18446744073709551615UL,1UL,18446744073709551615UL,18446744073709551615UL,1UL},{18446744073709551615UL,1UL,18446744073709551615UL,18446744073709551615UL,1UL,18446744073709551615UL,18446744073709551615UL,1UL},{18446744073709551615UL,1UL,18446744073709551615UL,18446744073709551615UL,1UL,18446744073709551615UL,18446744073709551615UL,1UL},{18446744073709551615UL,1UL,18446744073709551615UL,18446744073709551615UL,1UL,18446744073709551615UL,18446744073709551615UL,1UL}};
        int8_t l_1188 = 0x29L;
        int i, j;
        for (i = 0; i < 2; i++)
        {
            for (j = 0; j < 3; j++)
                l_813[i][j] = 18446744073709551615UL;
        }
lbl_1079:
        for (p_68 = (-3); (p_68 < (-8)); p_68 = safe_sub_func_uint8_t_u_u(p_68, 5))
        { /* block id: 339 */
            int64_t l_810 = 0L;
            int32_t *l_811 = &p_2262->g_12;
            int32_t *l_812[10][1][10] = {{{&p_2262->g_7,&l_94,&l_94,&p_2262->g_7,&p_2262->g_343,&l_730[1][0],&l_730[1][0],&p_2262->g_343,&p_2262->g_7,&l_94}},{{&p_2262->g_7,&l_94,&l_94,&p_2262->g_7,&p_2262->g_343,&l_730[1][0],&l_730[1][0],&p_2262->g_343,&p_2262->g_7,&l_94}},{{&p_2262->g_7,&l_94,&l_94,&p_2262->g_7,&p_2262->g_343,&l_730[1][0],&l_730[1][0],&p_2262->g_343,&p_2262->g_7,&l_94}},{{&p_2262->g_7,&l_94,&l_94,&p_2262->g_7,&p_2262->g_343,&l_730[1][0],&l_730[1][0],&p_2262->g_343,&p_2262->g_7,&l_94}},{{&p_2262->g_7,&l_94,&l_94,&p_2262->g_7,&p_2262->g_343,&l_730[1][0],&l_730[1][0],&p_2262->g_343,&p_2262->g_7,&l_94}},{{&p_2262->g_7,&l_94,&l_94,&p_2262->g_7,&p_2262->g_343,&l_730[1][0],&l_730[1][0],&p_2262->g_343,&p_2262->g_7,&l_94}},{{&p_2262->g_7,&l_94,&l_94,&p_2262->g_7,&p_2262->g_343,&l_730[1][0],&l_730[1][0],&p_2262->g_343,&p_2262->g_7,&l_94}},{{&p_2262->g_7,&l_94,&l_94,&p_2262->g_7,&p_2262->g_343,&l_730[1][0],&l_730[1][0],&p_2262->g_343,&p_2262->g_7,&l_94}},{{&p_2262->g_7,&l_94,&l_94,&p_2262->g_7,&p_2262->g_343,&l_730[1][0],&l_730[1][0],&p_2262->g_343,&p_2262->g_7,&l_94}},{{&p_2262->g_7,&l_94,&l_94,&p_2262->g_7,&p_2262->g_343,&l_730[1][0],&l_730[1][0],&p_2262->g_343,&p_2262->g_7,&l_94}}};
            int i, j, k;
            (*p_2262->g_809) |= (*p_71);
            l_813[1][0]--;
        }
        if (((safe_mod_func_int8_t_s_s(p_2262->g_236, ((safe_mod_func_uint64_t_u_u(((p_67 , (+((*l_845) |= (p_2262->g_844 = (safe_sub_func_int16_t_s_s(((~(l_813[1][0] , ((*l_822) |= (*p_71)))) >= (GROUP_DIVERGE(2, 1) == (((safe_rshift_func_int16_t_s_s((((safe_sub_func_uint64_t_u_u((safe_mul_func_uint16_t_u_u(p_68, ((((safe_rshift_func_int16_t_s_s((safe_unary_minus_func_uint8_t_u(0UL)), ((safe_lshift_func_int16_t_s_u((**p_2262->g_251), (((l_843 |= (safe_mod_func_int32_t_s_s(((*l_842) &= (safe_div_func_uint32_t_u_u((safe_lshift_func_int8_t_s_u((safe_div_func_int64_t_s_s((l_730[0][1] | (((0x0EL || 0x0FL) < p_2262->g_6) , l_730[1][0])), (-9L))), l_813[0][0])), p_67))), FAKE_DIVERGE(p_2262->global_0_offset, get_global_id(0), 10)))) > (*p_2262->g_252)) , (**p_2262->g_652)))) ^ p_2262->g_579))) >= 4294967286UL) | p_67) | 0x72FFFB1933743EE7L))), p_67)) ^ p_2262->g_236) || p_2262->g_79[6]), p_67)) , (void*)0) == (void*)0))), p_2262->g_469)))))) , p_67), 0x46B25B68FB46E692L)) | l_730[0][0]))) <= l_847))
        { /* block id: 348 */
            int64_t l_870 = (-5L);
            int32_t *l_875 = (void*)0;
            int16_t ***l_876 = (void*)0;
            int32_t l_879 = 0x50ADD207L;
            int8_t l_892[3][2];
            int i, j;
            for (i = 0; i < 3; i++)
            {
                for (j = 0; j < 2; j++)
                    l_892[i][j] = 1L;
            }
            for (p_2262->g_844 = 0; p_2262->g_844 < 3; p_2262->g_844 += 1)
            {
                for (p_2262->g_650 = 0; p_2262->g_650 < 8; p_2262->g_650 += 1)
                {
                    p_2262->g_654[p_2262->g_844][p_2262->g_650] = 1UL;
                }
            }
            for (p_2262->g_141 = 3; (p_2262->g_141 <= 9); p_2262->g_141 += 1)
            { /* block id: 352 */
                int32_t l_848 = (-1L);
                uint32_t *l_871 = (void*)0;
                int32_t l_872 = 1L;
                uint32_t *l_873 = (void*)0;
                uint32_t *l_874 = &l_731;
                int64_t *l_877[5][6] = {{&l_870,&l_870,&l_790,(void*)0,&l_870,(void*)0},{&l_870,&l_870,&l_790,(void*)0,&l_870,(void*)0},{&l_870,&l_870,&l_790,(void*)0,&l_870,(void*)0},{&l_870,&l_870,&l_790,(void*)0,&l_870,(void*)0},{&l_870,&l_870,&l_790,(void*)0,&l_870,(void*)0}};
                int i, j;
                (*l_414) = (((*p_2262->g_653) > ((*l_793) = GROUP_DIVERGE(0, 1))) , func_88(((((l_848 >= (safe_lshift_func_uint16_t_u_s((l_851 == ((((+0xC228DEC4L) , ((safe_add_func_int64_t_s_s((((*l_822) , (((safe_unary_minus_func_uint8_t_u(p_68)) <= ((safe_mul_func_uint8_t_u_u(l_859[4][0], GROUP_DIVERGE(1, 1))) ^ ((*l_874) = (p_2262->g_52 = ((((*l_793) = (safe_mod_func_int64_t_s_s(((safe_lshift_func_int16_t_s_s((((safe_mul_func_uint8_t_u_u((safe_sub_func_int16_t_s_s((FAKE_DIVERGE(p_2262->local_1_offset, get_local_id(1), 10) & l_870), ((l_872 = p_67) , l_848))), p_67)) > l_870) && 0UL), 1)) ^ 249UL), 18446744073709551615UL))) < l_848) <= (*l_822)))))) , (*l_822))) || (-10L)), p_2262->g_672[0][1])) != (-1L))) > 0xB3F1281C67EFD181L) , l_875)), l_848))) ^ (*l_842)) > l_848) == 4294967295UL), p_2262));
                for (l_872 = 0; (l_872 >= 0); l_872 -= 1)
                { /* block id: 361 */
                    uint32_t l_878 = 0x247E7AEBL;
                    int i, j;
                    (*l_842) = ((((p_2262->g_138[(l_872 + 1)] = 4294967293UL) , (void*)0) == (l_876 = &p_2262->g_251)) , p_2262->g_654[(l_872 + 1)][(l_872 + 1)]);
                    (*l_822) ^= (((((&p_2262->g_437 != l_877[3][4]) | 9UL) , &l_793) == &p_2262->g_653) >= (p_2262->g_654[l_872][l_872] ^ p_2262->g_138[l_872]));
                    if ((*p_69))
                        continue;
                    for (l_761 = 0; (l_761 <= 0); l_761 += 1)
                    { /* block id: 369 */
                        int i, j, k;
                        (*l_822) = ((&p_2262->g_413 != (void*)0) < (l_878 , p_2262->g_684));
                        (*l_842) &= 9L;
                        (*l_822) ^= ((*l_842) | ((l_879 &= (*p_2262->g_653)) | (safe_div_func_int32_t_s_s(l_848, 0x739E6C86L))));
                        (*l_822) = (*p_71);
                    }
                }
                for (p_2262->g_437 = 0; (p_2262->g_437 <= 2); p_2262->g_437 += 1)
                { /* block id: 379 */
                    for (p_2262->g_846 = 0; (p_2262->g_846 <= 0); p_2262->g_846 += 1)
                    { /* block id: 382 */
                        return p_69;
                    }
                    for (p_2262->g_236 = 0; (p_2262->g_236 <= 0); p_2262->g_236 += 1)
                    { /* block id: 387 */
                        int i, j;
                        l_879 &= p_2262->g_654[p_2262->g_236][p_2262->g_236];
                    }
                    for (p_2262->g_177 = 0; (p_2262->g_177 <= 2); p_2262->g_177 += 1)
                    { /* block id: 392 */
                        int i;
                        (*l_822) = (*p_71);
                        l_879 &= 0x3BA4BCA0L;
                    }
                }
            }
            (*l_414) = func_88(((safe_sub_func_uint32_t_u_u(0x4AA171A9L, ((p_2262->g_356 & (0xB002ACF7F8EAB7C8L ^ l_870)) < (((void*)0 == &l_783) || l_870)))) != (safe_add_func_uint16_t_u_u(((((safe_mod_func_uint32_t_u_u((safe_mod_func_int8_t_s_s(((((((!p_2262->g_79[6]) == (((safe_mul_func_int16_t_s_s((((*l_822) , (*p_2262->g_252)) | p_67), (-1L))) || 65535UL) ^ p_67)) <= (-1L)) ^ 0x117F906EL) <= p_68) || (*p_69)), l_892[0][1])), 0xFC577ABDL)) , l_893) != (void*)0) != (*l_842)), l_892[0][1]))), p_2262);
        }
        else
        { /* block id: 399 */
            uint64_t l_894 = 8UL;
            uint64_t *l_904 = &p_2262->g_672[0][1];
            uint32_t l_905 = 0x18308959L;
            int32_t l_910 = 0x052DCB48L;
            int32_t l_971 = (-8L);
            int32_t l_983 = 2L;
            int32_t l_984[8][3] = {{0x0E287A02L,(-1L),(-10L)},{0x0E287A02L,(-1L),(-10L)},{0x0E287A02L,(-1L),(-10L)},{0x0E287A02L,(-1L),(-10L)},{0x0E287A02L,(-1L),(-10L)},{0x0E287A02L,(-1L),(-10L)},{0x0E287A02L,(-1L),(-10L)},{0x0E287A02L,(-1L),(-10L)}};
            uint32_t *l_1012 = (void*)0;
            int16_t l_1021 = 0x09F1L;
            uint8_t ****l_1036[3][7][6] = {{{&p_2262->g_381,&p_2262->g_381,&p_2262->g_381,&p_2262->g_381,&p_2262->g_381,&p_2262->g_381},{&p_2262->g_381,&p_2262->g_381,&p_2262->g_381,&p_2262->g_381,&p_2262->g_381,&p_2262->g_381},{&p_2262->g_381,&p_2262->g_381,&p_2262->g_381,&p_2262->g_381,&p_2262->g_381,&p_2262->g_381},{&p_2262->g_381,&p_2262->g_381,&p_2262->g_381,&p_2262->g_381,&p_2262->g_381,&p_2262->g_381},{&p_2262->g_381,&p_2262->g_381,&p_2262->g_381,&p_2262->g_381,&p_2262->g_381,&p_2262->g_381},{&p_2262->g_381,&p_2262->g_381,&p_2262->g_381,&p_2262->g_381,&p_2262->g_381,&p_2262->g_381},{&p_2262->g_381,&p_2262->g_381,&p_2262->g_381,&p_2262->g_381,&p_2262->g_381,&p_2262->g_381}},{{&p_2262->g_381,&p_2262->g_381,&p_2262->g_381,&p_2262->g_381,&p_2262->g_381,&p_2262->g_381},{&p_2262->g_381,&p_2262->g_381,&p_2262->g_381,&p_2262->g_381,&p_2262->g_381,&p_2262->g_381},{&p_2262->g_381,&p_2262->g_381,&p_2262->g_381,&p_2262->g_381,&p_2262->g_381,&p_2262->g_381},{&p_2262->g_381,&p_2262->g_381,&p_2262->g_381,&p_2262->g_381,&p_2262->g_381,&p_2262->g_381},{&p_2262->g_381,&p_2262->g_381,&p_2262->g_381,&p_2262->g_381,&p_2262->g_381,&p_2262->g_381},{&p_2262->g_381,&p_2262->g_381,&p_2262->g_381,&p_2262->g_381,&p_2262->g_381,&p_2262->g_381},{&p_2262->g_381,&p_2262->g_381,&p_2262->g_381,&p_2262->g_381,&p_2262->g_381,&p_2262->g_381}},{{&p_2262->g_381,&p_2262->g_381,&p_2262->g_381,&p_2262->g_381,&p_2262->g_381,&p_2262->g_381},{&p_2262->g_381,&p_2262->g_381,&p_2262->g_381,&p_2262->g_381,&p_2262->g_381,&p_2262->g_381},{&p_2262->g_381,&p_2262->g_381,&p_2262->g_381,&p_2262->g_381,&p_2262->g_381,&p_2262->g_381},{&p_2262->g_381,&p_2262->g_381,&p_2262->g_381,&p_2262->g_381,&p_2262->g_381,&p_2262->g_381},{&p_2262->g_381,&p_2262->g_381,&p_2262->g_381,&p_2262->g_381,&p_2262->g_381,&p_2262->g_381},{&p_2262->g_381,&p_2262->g_381,&p_2262->g_381,&p_2262->g_381,&p_2262->g_381,&p_2262->g_381},{&p_2262->g_381,&p_2262->g_381,&p_2262->g_381,&p_2262->g_381,&p_2262->g_381,&p_2262->g_381}}};
            uint8_t ******l_1096[1][1][9];
            uint32_t l_1100 = 4294967295UL;
            uint16_t l_1123 = 1UL;
            int i, j, k;
            for (i = 0; i < 1; i++)
            {
                for (j = 0; j < 1; j++)
                {
                    for (k = 0; k < 9; k++)
                        l_1096[i][j][k] = (void*)0;
                }
            }
            if (((*l_842) = (((*l_904) = ((((((l_894 == (safe_mod_func_uint64_t_u_u(0x0254F93F88CDF130L, 4UL))) != (&p_2262->g_846 != (void*)0)) | (0x2E0807037DB633AFL >= (p_2262->g_687[3][2]--))) >= (p_2262->g_899 , (((((safe_rshift_func_uint8_t_u_s((safe_lshift_func_uint16_t_u_u(((**l_792) |= ((0x07C56042L <= p_2262->g_343) , 0UL)), (*p_2262->g_653))), 4)) , p_2262->g_138[0]) , 0x7065L) , p_2262->g_654[0][6]) >= p_2262->g_12))) < (*l_822)) , l_894)) > l_905)))
            { /* block id: 404 */
                int8_t l_912[7] = {(-4L),(-4L),(-4L),(-4L),(-4L),(-4L),(-4L)};
                int32_t l_913 = 7L;
                int i;
                for (l_790 = 9; (l_790 > 8); l_790 = safe_sub_func_uint16_t_u_u(l_790, 2))
                { /* block id: 407 */
                    int32_t *l_908 = (void*)0;
                    int32_t *l_909[1][4];
                    int i, j;
                    for (i = 0; i < 1; i++)
                    {
                        for (j = 0; j < 4; j++)
                            l_909[i][j] = &l_843;
                    }
                    --l_915;
                    for (p_2262->g_844 = (-2); (p_2262->g_844 != (-17)); p_2262->g_844 = safe_sub_func_int8_t_s_s(p_2262->g_844, 9))
                    { /* block id: 411 */
                        uint16_t *l_926 = &l_915;
                        (*l_822) = (safe_mul_func_int16_t_s_s((**p_2262->g_251), (p_67 || (safe_sub_func_int64_t_s_s((((safe_mod_func_uint16_t_u_u(((*l_926) |= ((**l_792) = (**p_2262->g_652))), (**p_2262->g_251))) , p_67) > p_2262->g_12), 0xBDAA3FB8095BFC48L)))));
                    }
                    (*l_842) = 0x79BF4E48L;
                    for (l_843 = (-29); (l_843 >= 25); ++l_843)
                    { /* block id: 419 */
                        int64_t l_935 = (-1L);
                        (*l_822) &= ((*l_842) = (((((safe_lshift_func_int16_t_s_s(l_905, (((*l_742)++) , (safe_rshift_func_int16_t_s_u(l_935, (safe_div_func_uint64_t_u_u((safe_div_func_int64_t_s_s(((((p_71 == &p_2262->g_52) <= ((**p_2262->g_251) == 0L)) > ((((**p_2262->g_251) == 0xBD34L) < (safe_mod_func_uint8_t_u_u((*l_842), p_67))) >= 0xA3L)) > l_935), p_2262->g_52)), GROUP_DIVERGE(0, 1)))))))) == (*p_2262->g_252)) ^ 9UL) ^ (*p_69)) <= p_67));
                        return (*p_2262->g_331);
                    }
                }
            }
            else
            { /* block id: 426 */
                uint32_t l_950 = 0x9E76B701L;
                uint8_t *******l_960[1];
                int32_t *l_966 = &l_730[1][0];
                int32_t *l_967 = &l_730[1][0];
                int32_t *l_968 = (void*)0;
                int32_t *l_969 = &l_94;
                int32_t *l_970 = &l_730[0][0];
                int32_t *l_972 = (void*)0;
                int32_t *l_973 = (void*)0;
                int32_t *l_974 = &p_2262->g_844;
                int32_t *l_975 = &l_730[1][0];
                int32_t *l_976 = &l_730[1][0];
                int32_t *l_977 = &p_2262->g_343;
                int32_t *l_978 = &l_971;
                int32_t *l_979 = &p_2262->g_177;
                int32_t *l_980 = &l_94;
                int32_t *l_981 = (void*)0;
                int32_t *l_982[5][8][6] = {{{&p_2262->g_844,&p_2262->g_844,&l_730[1][0],&l_843,&l_730[1][0],&p_2262->g_844},{&p_2262->g_844,&p_2262->g_844,&l_730[1][0],&l_843,&l_730[1][0],&p_2262->g_844},{&p_2262->g_844,&p_2262->g_844,&l_730[1][0],&l_843,&l_730[1][0],&p_2262->g_844},{&p_2262->g_844,&p_2262->g_844,&l_730[1][0],&l_843,&l_730[1][0],&p_2262->g_844},{&p_2262->g_844,&p_2262->g_844,&l_730[1][0],&l_843,&l_730[1][0],&p_2262->g_844},{&p_2262->g_844,&p_2262->g_844,&l_730[1][0],&l_843,&l_730[1][0],&p_2262->g_844},{&p_2262->g_844,&p_2262->g_844,&l_730[1][0],&l_843,&l_730[1][0],&p_2262->g_844},{&p_2262->g_844,&p_2262->g_844,&l_730[1][0],&l_843,&l_730[1][0],&p_2262->g_844}},{{&p_2262->g_844,&p_2262->g_844,&l_730[1][0],&l_843,&l_730[1][0],&p_2262->g_844},{&p_2262->g_844,&p_2262->g_844,&l_730[1][0],&l_843,&l_730[1][0],&p_2262->g_844},{&p_2262->g_844,&p_2262->g_844,&l_730[1][0],&l_843,&l_730[1][0],&p_2262->g_844},{&p_2262->g_844,&p_2262->g_844,&l_730[1][0],&l_843,&l_730[1][0],&p_2262->g_844},{&p_2262->g_844,&p_2262->g_844,&l_730[1][0],&l_843,&l_730[1][0],&p_2262->g_844},{&p_2262->g_844,&p_2262->g_844,&l_730[1][0],&l_843,&l_730[1][0],&p_2262->g_844},{&p_2262->g_844,&p_2262->g_844,&l_730[1][0],&l_843,&l_730[1][0],&p_2262->g_844},{&p_2262->g_844,&p_2262->g_844,&l_730[1][0],&l_843,&l_730[1][0],&p_2262->g_844}},{{&p_2262->g_844,&p_2262->g_844,&l_730[1][0],&l_843,&l_730[1][0],&p_2262->g_844},{&p_2262->g_844,&p_2262->g_844,&l_730[1][0],&l_843,&l_730[1][0],&p_2262->g_844},{&p_2262->g_844,&p_2262->g_844,&l_730[1][0],&l_843,&l_730[1][0],&p_2262->g_844},{&p_2262->g_844,&p_2262->g_844,&l_730[1][0],&l_843,&l_730[1][0],&p_2262->g_844},{&p_2262->g_844,&p_2262->g_844,&l_730[1][0],&l_843,&l_730[1][0],&p_2262->g_844},{&p_2262->g_844,&p_2262->g_844,&l_730[1][0],&l_843,&l_730[1][0],&p_2262->g_844},{&p_2262->g_844,&p_2262->g_844,&l_730[1][0],&l_843,&l_730[1][0],&p_2262->g_844},{&p_2262->g_844,&p_2262->g_844,&l_730[1][0],&l_843,&l_730[1][0],&p_2262->g_844}},{{&p_2262->g_844,&p_2262->g_844,&l_730[1][0],&l_843,&l_730[1][0],&p_2262->g_844},{&p_2262->g_844,&p_2262->g_844,&l_730[1][0],&l_843,&l_730[1][0],&p_2262->g_844},{&p_2262->g_844,&p_2262->g_844,&l_730[1][0],&l_843,&l_730[1][0],&p_2262->g_844},{&p_2262->g_844,&p_2262->g_844,&l_730[1][0],&l_843,&l_730[1][0],&p_2262->g_844},{&p_2262->g_844,&p_2262->g_844,&l_730[1][0],&l_843,&l_730[1][0],&p_2262->g_844},{&p_2262->g_844,&p_2262->g_844,&l_730[1][0],&l_843,&l_730[1][0],&p_2262->g_844},{&p_2262->g_844,&p_2262->g_844,&l_730[1][0],&l_843,&l_730[1][0],&p_2262->g_844},{&p_2262->g_844,&p_2262->g_844,&l_730[1][0],&l_843,&l_730[1][0],&p_2262->g_844}},{{&p_2262->g_844,&p_2262->g_844,&l_730[1][0],&l_843,&l_730[1][0],&p_2262->g_844},{&p_2262->g_844,&p_2262->g_844,&l_730[1][0],&l_843,&l_730[1][0],&p_2262->g_844},{&p_2262->g_844,&p_2262->g_844,&l_730[1][0],&l_843,&l_730[1][0],&p_2262->g_844},{&p_2262->g_844,&p_2262->g_844,&l_730[1][0],&l_843,&l_730[1][0],&p_2262->g_844},{&p_2262->g_844,&p_2262->g_844,&l_730[1][0],&l_843,&l_730[1][0],&p_2262->g_844},{&p_2262->g_844,&p_2262->g_844,&l_730[1][0],&l_843,&l_730[1][0],&p_2262->g_844},{&p_2262->g_844,&p_2262->g_844,&l_730[1][0],&l_843,&l_730[1][0],&p_2262->g_844},{&p_2262->g_844,&p_2262->g_844,&l_730[1][0],&l_843,&l_730[1][0],&p_2262->g_844}}};
                int i, j, k;
                for (i = 0; i < 1; i++)
                    l_960[i] = &l_782;
                (*l_822) &= ((safe_mod_func_uint8_t_u_u(p_68, (safe_sub_func_uint32_t_u_u(0UL, (safe_mul_func_uint16_t_u_u((p_2262->g_567 = ((*p_69) == ((++l_950) <= ((safe_sub_func_int32_t_s_s((safe_lshift_func_int16_t_s_u((safe_unary_minus_func_uint64_t_u((0x5149B6FBA4985532L >= (safe_lshift_func_uint16_t_u_u((p_67 , ((l_961 = &l_783) == p_2262->g_962)), (safe_mod_func_int16_t_s_s((0UL == (l_894 == (*p_69))), (-9L)))))))), p_68)), 0x0661540FL)) < (*p_71))))), p_67)))))) , (*l_842));
                l_1002[4][1][1]++;
            }
            for (p_2262->g_579 = 21; (p_2262->g_579 < (-1)); p_2262->g_579--)
            { /* block id: 435 */
                l_1007--;
            }
            if (((safe_rshift_func_uint8_t_u_u((l_1012 != p_69), 4)) , (-1L)))
            { /* block id: 438 */
                uint32_t l_1014 = 4294967289UL;
                int32_t ****l_1035 = &p_2262->g_1034;
                int32_t *l_1038 = &p_2262->g_1039[0];
                int16_t **l_1040 = &p_2262->g_252;
                uint8_t ******l_1094[9];
                uint8_t *******l_1095 = &l_1094[2];
                uint8_t *******l_1097 = &l_1096[0][0][0];
                int32_t *l_1102 = (void*)0;
                int32_t *l_1103 = &l_1000;
                int i;
                for (i = 0; i < 9; i++)
                    l_1094[i] = &l_783;
                (*l_414) = func_82(((*l_414) = (*l_414)), ((safe_unary_minus_func_int16_t_s(l_1014)) , (safe_mod_func_int8_t_s_s((safe_rshift_func_int16_t_s_u(((+l_1021) & (((safe_mod_func_uint32_t_u_u((safe_mod_func_int32_t_s_s(((((1L > ((safe_mul_func_uint16_t_u_u(((safe_mul_func_int16_t_s_s((safe_add_func_uint64_t_u_u((((safe_mul_func_int8_t_s_s(p_67, (((((*l_1035) = p_2262->g_1034) == (((*l_1038) ^= ((p_68 , l_1036[2][3][4]) != (p_67 , l_1037[0][5]))) , &p_2262->g_192)) , &l_78[1][5]) == l_1040))) && p_68) , p_67), p_2262->g_654[0][6])), l_1041[4][0])) < 0x2EB61D97FC66A981L), p_67)) >= 0x0278L)) == 0UL) <= l_1042) < p_2262->g_650), p_2262->g_687[2][3])), (*l_842))) | 0x42D5L) > p_2262->g_437)), 10)), p_68))), p_67, p_70, l_1021, p_2262);
                for (l_910 = 0; (l_910 >= 24); ++l_910)
                { /* block id: 445 */
                    uint64_t **l_1051[4][3][10] = {{{&l_904,&l_904,&l_904,&l_904,&l_904,&l_904,&l_904,&l_904,&l_904,&l_904},{&l_904,&l_904,&l_904,&l_904,&l_904,&l_904,&l_904,&l_904,&l_904,&l_904},{&l_904,&l_904,&l_904,&l_904,&l_904,&l_904,&l_904,&l_904,&l_904,&l_904}},{{&l_904,&l_904,&l_904,&l_904,&l_904,&l_904,&l_904,&l_904,&l_904,&l_904},{&l_904,&l_904,&l_904,&l_904,&l_904,&l_904,&l_904,&l_904,&l_904,&l_904},{&l_904,&l_904,&l_904,&l_904,&l_904,&l_904,&l_904,&l_904,&l_904,&l_904}},{{&l_904,&l_904,&l_904,&l_904,&l_904,&l_904,&l_904,&l_904,&l_904,&l_904},{&l_904,&l_904,&l_904,&l_904,&l_904,&l_904,&l_904,&l_904,&l_904,&l_904},{&l_904,&l_904,&l_904,&l_904,&l_904,&l_904,&l_904,&l_904,&l_904,&l_904}},{{&l_904,&l_904,&l_904,&l_904,&l_904,&l_904,&l_904,&l_904,&l_904,&l_904},{&l_904,&l_904,&l_904,&l_904,&l_904,&l_904,&l_904,&l_904,&l_904,&l_904},{&l_904,&l_904,&l_904,&l_904,&l_904,&l_904,&l_904,&l_904,&l_904,&l_904}}};
                    int32_t l_1053 = 0x17C8940CL;
                    int16_t *l_1054[8] = {&p_2262->g_79[1],&p_2262->g_79[1],&p_2262->g_79[1],&p_2262->g_79[1],&p_2262->g_79[1],&p_2262->g_79[1],&p_2262->g_79[1],&p_2262->g_79[1]};
                    int32_t *l_1055 = (void*)0;
                    int64_t *l_1058[2];
                    int8_t *l_1061 = &l_1041[4][0];
                    int8_t *l_1062 = (void*)0;
                    int i, j, k;
                    for (i = 0; i < 2; i++)
                        l_1058[i] = (void*)0;
                    l_1055 = func_82(&l_984[0][0], p_2262->g_308, (((FAKE_DIVERGE(p_2262->group_1_offset, get_group_id(1), 10) && p_67) < ((((((safe_rshift_func_int8_t_s_u((-6L), (safe_div_func_uint16_t_u_u(p_68, (*l_842))))) < (((safe_div_func_int8_t_s_s(p_2262->g_469, ((*l_822) |= (l_971 || ((((p_2262->g_1052 = &l_761) != (void*)0) && p_68) , 1L))))) , 0L) != l_1053)) && l_1053) != p_2262->g_343) && p_68) > GROUP_DIVERGE(0, 1))) , GROUP_DIVERGE(0, 1)), l_1054[3], l_984[6][1], p_2262);
                    if ((((((~l_1053) && (((safe_rshift_func_int8_t_s_u(p_67, 7)) <= (p_68 = ((*l_1061) |= ((((((p_2262->g_437 = 0x34D74CDD92900770L) | (*p_2262->g_1052)) , (**l_782)) != (void*)0) != 1L) && ((--p_2262->g_52) != 3UL))))) ^ (((((safe_rshift_func_uint8_t_u_s((safe_lshift_func_uint16_t_u_s((**p_2262->g_652), 13)), 6)) <= FAKE_DIVERGE(p_2262->group_2_offset, get_group_id(2), 10)) == 0x538EC0D69E684B22L) == 0x51L) || 0x27027C251699F406L))) < 0x6E3CL) == FAKE_DIVERGE(p_2262->global_1_offset, get_global_id(1), 10)) , 0L))
                    { /* block id: 453 */
                        uint8_t l_1070 = 0x9BL;
                        int32_t l_1073 = (-9L);
                        int16_t ****l_1076 = (void*)0;
                        int16_t ****l_1077 = &p_2262->g_250[4];
                        uint32_t *l_1078 = &l_1002[3][0][4];
                        (*l_842) ^= 0x74D9283EL;
                        if (l_1067)
                            break;
                        (*l_822) |= ((l_984[5][2] = l_971) | ((!(+((l_1070 | ((((safe_add_func_uint16_t_u_u(0UL, (l_1073 = ((void*)0 == p_69)))) > ((**l_792) = 0xFC44L)) > (safe_sub_func_int32_t_s_s(l_905, ((*l_1078) |= (&l_1040 == ((*l_1077) = (void*)0)))))) == 0xFADACC11L)) != l_1021))) < p_67));
                        if (p_2262->g_52)
                            goto lbl_1079;
                    }
                    else
                    { /* block id: 463 */
                        return p_71;
                    }
                }
                (*l_1103) |= (safe_add_func_uint16_t_u_u(((((((p_2262->g_1101 = (p_2262->g_7 | (0x5E213A1EL && (!(0xEC28B0D8B7B4F344L ^ (((safe_rshift_func_uint16_t_u_s((((((((*l_793) |= (safe_div_func_uint8_t_u_u(((safe_mod_func_uint16_t_u_u((safe_mod_func_uint16_t_u_u((safe_mod_func_int64_t_s_s(((((*l_842) = (((safe_sub_func_int32_t_s_s(((*l_822) |= ((((**p_2262->g_251) = 0x2D00L) , ((*l_1095) = l_1094[2])) == ((*l_1097) = l_1096[0][0][0]))), (65529UL != (0xACB0L != ((safe_div_func_uint64_t_u_u((+(0x6DBC701DL < (*p_69))), p_67)) || p_67))))) && p_67) == p_68)) , p_2262->g_776[2][3][0]) >= 0UL), 0x0CD2AC9CAF334118L)), p_67)), l_910)) >= p_68), p_68))) != p_2262->g_687[2][3]) == 9UL) , l_1100) , FAKE_DIVERGE(p_2262->local_0_offset, get_local_id(0), 10)) ^ (-1L)), 1)) , (*l_842)) != p_68)))))) , p_2262->g_654[1][4]) && 18446744073709551612UL) >= l_984[1][0]) != FAKE_DIVERGE(p_2262->local_0_offset, get_local_id(0), 10)) <= p_67), p_2262->g_687[2][3]));
            }
            else
            { /* block id: 475 */
                int16_t l_1104 = 0x33ECL;
                int32_t l_1105 = (-2L);
                int32_t l_1106 = (-2L);
                int32_t l_1107 = 0x73A3E95FL;
                uint32_t *l_1122 = &l_731;
                uint32_t **l_1121 = &l_1122;
                uint8_t ***l_1166 = &p_2262->g_155[5][0];
                uint64_t *l_1189 = &p_2262->g_1190[4][0][4];
                (*l_842) ^= (l_1104 , (((((++p_2262->g_1108) || p_68) <= (safe_unary_minus_func_uint32_t_u(((safe_lshift_func_int16_t_s_u((((((((*p_69) <= (p_67 || (safe_div_func_uint64_t_u_u((+0xE13284D46FFA143DL), 0xB23D41EF03A30417L)))) || ((**p_2262->g_652) || ((**l_792) = ((((0x5034L < (l_1118[4][5] , (-8L))) | 2L) <= 0UL) , 7UL)))) | p_67) >= p_67) , 0x4D61L) || p_67), 7)) , 4294967295UL)))) , (*p_69)) == FAKE_DIVERGE(p_2262->local_2_offset, get_local_id(2), 10)));
                (*p_2262->g_311) = func_88((safe_mul_func_int16_t_s_s((((~(-2L)) , func_88(p_68, p_2262)) != ((*l_1121) = l_842)), (((**l_792) |= (((*l_822) = l_1123) , ((((void*)0 != p_2262->g_1126[2][1]) < ((l_1106 = (((*p_2262->g_380) = (*p_2262->g_380)) != (l_1166 = (void*)0))) <= 1UL)) != (*p_69)))) == 65535UL))), p_2262);
                (*l_414) = func_88((*p_2262->g_1052), p_2262);
                if ((((FAKE_DIVERGE(p_2262->local_1_offset, get_local_id(1), 10) , (*p_69)) >= (safe_div_func_uint64_t_u_u((*p_2262->g_1052), (safe_mod_func_int32_t_s_s((safe_div_func_uint16_t_u_u(((((((safe_div_func_int64_t_s_s((((safe_div_func_uint64_t_u_u((!(((((*l_1189) &= ((**p_2262->g_251) | (((safe_mod_func_uint32_t_u_u(0x5D50F24CL, (safe_div_func_int32_t_s_s((l_1105 = ((*l_842) = (safe_unary_minus_func_int32_t_s(((p_2262->g_579 , ((*p_2262->g_380) = (void*)0)) == (void*)0))))), (safe_sub_func_int8_t_s_s((p_2262->g_236 < (((safe_sub_func_uint64_t_u_u(((safe_mod_func_int64_t_s_s(0x0EED77CF1353D080L, p_2262->g_1137[5][1][1])) || l_1188), p_2262->g_138[0])) >= l_984[2][0]) | 0x791A069BL)), p_68)))))) , 65531UL) , 0x3B01L))) , (*p_71)) < p_2262->g_79[4]) ^ l_894)), p_68)) | l_910) , p_2262->g_654[0][6]), GROUP_DIVERGE(0, 1))) <= (*p_71)) > p_68) , 4294967288UL) <= (*p_71)) ^ p_68), 0x2F36L)), p_68))))) | (*l_822)))
                { /* block id: 491 */
                    return p_69;
                }
                else
                { /* block id: 493 */
                    return p_69;
                }
            }
        }
        return (*p_2262->g_192);
    }
    (*l_414) = (p_2262->g_1152[0] , func_82((*l_414), ((safe_add_func_int8_t_s_s(2L, (~p_2262->g_177))) , l_731), ((((safe_add_func_uint8_t_u_u((safe_add_func_uint64_t_u_u((*p_2262->g_1052), ((**p_2262->g_251) >= (safe_div_func_int16_t_s_s((l_730[0][1] = l_859[4][0]), (((safe_div_func_uint32_t_u_u((((safe_div_func_int64_t_s_s((((void*)0 == &p_2262->g_251) <= 0x3F9987EEL), p_2262->g_1156[6])) >= p_68) && 65535UL), (-9L))) & l_731) & p_67)))))), p_67)) >= l_761) || (*p_2262->g_653)) , p_68), l_78[1][5], p_68, p_2262));
    return p_71;
}


/* ------------------------------------------ */
/* 
 * reads : p_2262->g_251 p_2262->g_252 p_2262->g_79 p_2262->g_115 p_2262->g_12 p_2262->g_19 p_2262->g_7 p_2262->g_156 p_2262->g_356 p_2262->g_380 p_2262->g_381 p_2262->g_469 p_2262->g_177 p_2262->g_52 p_2262->g_236 p_2262->g_2 p_2262->g_138 p_2262->g_331 p_2262->g_151 p_2262->g_192 p_2262->g_485 p_2262->g_308 p_2262->g_437 p_2262->g_6 p_2262->g_343 p_2262->g_141 p_2262->g_640 p_2262->g_652 p_2262->g_653 p_2262->g_654 p_2262->g_687 p_2262->g_672
 * writes: p_2262->g_12 p_2262->g_236 p_2262->g_79 p_2262->g_469 p_2262->g_485 p_2262->g_52 p_2262->g_567 p_2262->g_579 p_2262->g_380 p_2262->g_437 p_2262->g_650 p_2262->g_652 p_2262->g_672 p_2262->g_684 p_2262->g_687 p_2262->g_308
 */
int16_t * func_80(int32_t * p_81, struct S0 * p_2262)
{ /* block id: 167 */
    int32_t l_417 = (-1L);
    int32_t l_420 = (-6L);
    int32_t *l_421[7][6] = {{&p_2262->g_2,(void*)0,&l_420,(void*)0,&p_2262->g_2,&p_2262->g_2},{&p_2262->g_2,(void*)0,&l_420,(void*)0,&p_2262->g_2,&p_2262->g_2},{&p_2262->g_2,(void*)0,&l_420,(void*)0,&p_2262->g_2,&p_2262->g_2},{&p_2262->g_2,(void*)0,&l_420,(void*)0,&p_2262->g_2,&p_2262->g_2},{&p_2262->g_2,(void*)0,&l_420,(void*)0,&p_2262->g_2,&p_2262->g_2},{&p_2262->g_2,(void*)0,&l_420,(void*)0,&p_2262->g_2,&p_2262->g_2},{&p_2262->g_2,(void*)0,&l_420,(void*)0,&p_2262->g_2,&p_2262->g_2}};
    int32_t **l_423[4][6] = {{&p_2262->g_151[1],(void*)0,(void*)0,(void*)0,&p_2262->g_151[1],&p_2262->g_151[1]},{&p_2262->g_151[1],(void*)0,(void*)0,(void*)0,&p_2262->g_151[1],&p_2262->g_151[1]},{&p_2262->g_151[1],(void*)0,(void*)0,(void*)0,&p_2262->g_151[1],&p_2262->g_151[1]},{&p_2262->g_151[1],(void*)0,(void*)0,(void*)0,&p_2262->g_151[1],&p_2262->g_151[1]}};
    int32_t ***l_422 = &l_423[3][0];
    uint8_t l_441 = 1UL;
    int8_t *l_500 = &p_2262->g_469;
    uint16_t l_533 = 65535UL;
    int16_t *l_622 = &p_2262->g_308;
    uint8_t ****l_623 = &p_2262->g_381;
    int16_t l_636 = 0x62CDL;
    int8_t l_657 = 0x55L;
    uint8_t *****l_679[4][5][3];
    int32_t l_724 = (-1L);
    int16_t l_725 = 0x5633L;
    int16_t *l_726 = &p_2262->g_79[8];
    int i, j, k;
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 5; j++)
        {
            for (k = 0; k < 3; k++)
                l_679[i][j][k] = &l_623;
        }
    }
    l_420 = (safe_sub_func_int64_t_s_s(l_417, (safe_rshift_func_uint16_t_u_s(0UL, (**p_2262->g_251)))));
    (*p_2262->g_115) ^= l_420;
    (*l_422) = &l_421[3][2];
    if (((*p_2262->g_115) = (safe_rshift_func_int16_t_s_u((**p_2262->g_251), 13))))
    { /* block id: 172 */
        uint8_t l_427 = 0x8BL;
        int64_t *l_436[10] = {&p_2262->g_437,&p_2262->g_437,&p_2262->g_437,&p_2262->g_437,&p_2262->g_437,&p_2262->g_437,&p_2262->g_437,&p_2262->g_437,&p_2262->g_437,&p_2262->g_437};
        int32_t l_438 = 1L;
        uint8_t *l_446 = &p_2262->g_236;
        int32_t l_447 = 0L;
        int32_t l_490 = (-9L);
        int32_t l_494 = 6L;
        int32_t l_495 = 0x0BA3C26AL;
        uint16_t l_496 = 0x098FL;
        int32_t **l_511 = &l_421[5][4];
        int16_t *l_512 = &p_2262->g_79[4];
        uint64_t l_583 = 18446744073709551615UL;
        uint8_t l_605[1][6] = {{252UL,252UL,252UL,252UL,252UL,252UL}};
        int8_t *l_631 = (void*)0;
        int i, j;
        l_447 = (safe_unary_minus_func_uint16_t_u((l_427 & (((((safe_lshift_func_int8_t_s_u(((((((safe_sub_func_uint64_t_u_u(((FAKE_DIVERGE(p_2262->global_2_offset, get_global_id(2), 10) & (safe_rshift_func_int16_t_s_u((safe_mod_func_int64_t_s_s((l_427 , (l_438 = (-1L))), (l_441 &= (safe_add_func_int8_t_s_s(l_427, l_427))))), 1))) >= ((*p_2262->g_252) = (safe_div_func_uint16_t_u_u(FAKE_DIVERGE(p_2262->local_1_offset, get_local_id(1), 10), ((p_2262->g_12 | l_427) ^ (p_2262->g_79[0] < ((*l_446) = (FAKE_DIVERGE(p_2262->group_1_offset, get_group_id(1), 10) ^ (safe_sub_func_uint64_t_u_u(p_2262->g_19[5], p_2262->g_79[0])))))))))), p_2262->g_7)) <= 0x7C2FL) , l_427) , l_446) != p_2262->g_156) >= l_427), 6)) , 0xF0C3E9FAD57ED520L) & p_2262->g_356) >= l_427) , l_438))));
        (*p_2262->g_115) = 0x7B16999DL;
        for (l_427 = 2; (l_427 <= 27); l_427 = safe_add_func_int32_t_s_s(l_427, 9))
        { /* block id: 181 */
            uint64_t l_459 = 7UL;
            int32_t l_483 = 0x7C4B32BCL;
            int32_t l_486 = 0x4FE82213L;
            int32_t l_487 = 0x51031C20L;
            int32_t l_488 = 0x2796A0AFL;
            int32_t l_489 = 0x29FADD9BL;
            int32_t l_491 = 0x4ED2F058L;
            uint8_t **l_501 = &p_2262->g_156;
            int32_t *l_516 = &l_420;
            int8_t *l_523 = &p_2262->g_469;
            int16_t **l_578 = &p_2262->g_252;
            uint16_t *l_606 = &p_2262->g_567;
            uint16_t l_646 = 0x5915L;
            if (((void*)0 != p_2262->g_156))
            { /* block id: 182 */
                uint64_t l_452 = 4UL;
                int32_t l_481[3];
                uint32_t *l_530 = (void*)0;
                uint32_t *l_531 = (void*)0;
                uint32_t *l_532[5];
                int32_t l_538 = 4L;
                uint32_t l_559 = 6UL;
                int16_t l_609 = 0x2C22L;
                int i;
                for (i = 0; i < 3; i++)
                    l_481[i] = 0x6452C3AAL;
                for (i = 0; i < 5; i++)
                    l_532[i] = &p_2262->g_52;
                if ((((void*)0 == (*p_2262->g_380)) , (safe_sub_func_int8_t_s_s(((l_447 > ((0UL <= l_447) , l_452)) != (*p_2262->g_115)), (!(safe_lshift_func_uint16_t_u_s(((*p_2262->g_252) && (l_452 > 0x19FE0B81L)), 13)))))))
                { /* block id: 183 */
                    int8_t *l_468 = &p_2262->g_469;
                    int32_t l_480 = 0x72B251D2L;
                    int16_t *l_482[3][2] = {{&p_2262->g_308,&p_2262->g_79[4]},{&p_2262->g_308,&p_2262->g_79[4]},{&p_2262->g_308,&p_2262->g_79[4]}};
                    uint16_t *l_484[10][6][1] = {{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}}};
                    int32_t l_492 = (-1L);
                    int32_t l_493[9] = {(-2L),(-2L),(-2L),(-2L),(-2L),(-2L),(-2L),(-2L),(-2L)};
                    uint32_t l_499 = 1UL;
                    int i, j, k;
                    l_480 = ((((((safe_rshift_func_uint16_t_u_u((((((safe_rshift_func_int8_t_s_u(((+l_459) > p_2262->g_79[0]), 1)) || ((p_2262->g_485 = ((safe_sub_func_uint32_t_u_u(((safe_lshift_func_int16_t_s_s((l_483 |= (safe_add_func_uint16_t_u_u(l_427, ((l_481[1] = ((l_427 && (safe_rshift_func_int8_t_s_u(((*l_468) ^= (65535UL == (**p_2262->g_251))), 4))) , (safe_mod_func_uint16_t_u_u(((safe_div_func_uint32_t_u_u((safe_lshift_func_uint8_t_u_u(((l_452 | ((safe_div_func_uint8_t_u_u((p_2262->g_7 , (safe_sub_func_uint64_t_u_u((~p_2262->g_177), 0x572716CB6BA42371L))), 0x7DL)) < p_2262->g_52)) < l_480), 6)), l_480)) <= 0x8683593AL), FAKE_DIVERGE(p_2262->group_1_offset, get_group_id(1), 10))))) > l_480)))), 2)) || l_459), 0xD4530274L)) & l_480)) >= l_459)) && l_480) , 1UL) > p_2262->g_236), l_459)) || 6UL) && 1L) && p_2262->g_79[3]) != l_459) | l_459);
                    l_496--;
                    if (l_499)
                        continue;
                }
                else
                { /* block id: 191 */
                    int32_t ***l_506 = &l_423[3][2];
                    (*p_2262->g_115) = (((l_500 != (void*)0) , l_501) != (((safe_rshift_func_int8_t_s_u(((-10L) | (((((safe_mul_func_int8_t_s_s(((void*)0 != l_506), l_491)) == ((*p_2262->g_252) = (safe_mul_func_uint8_t_u_u((p_2262->g_2 & ((p_2262->g_138[0] , l_481[1]) && l_496)), 4L)))) | l_495) >= p_2262->g_12) != 1L)), l_487)) >= GROUP_DIVERGE(1, 1)) , (void*)0));
                    if (((safe_rshift_func_int16_t_s_u(l_495, (GROUP_DIVERGE(0, 1) | ((void*)0 != l_511)))) < l_481[1]))
                    { /* block id: 194 */
                        (*l_511) = (*p_2262->g_331);
                    }
                    else
                    { /* block id: 196 */
                        return l_512;
                    }
                    for (p_2262->g_469 = 0; (p_2262->g_469 >= (-16)); p_2262->g_469 = safe_sub_func_int32_t_s_s(p_2262->g_469, 4))
                    { /* block id: 201 */
                        int32_t *l_515 = (void*)0;
                        (*l_511) = (*p_2262->g_192);
                        (*l_511) = l_515;
                        if (l_459)
                            break;
                        l_516 = (void*)0;
                    }
                    (*l_511) = p_81;
                }
                l_494 = ((safe_lshift_func_uint16_t_u_s((((p_2262->g_485 != (((*p_2262->g_252) = 0L) , ((*l_512) = (safe_sub_func_uint64_t_u_u((safe_mod_func_uint32_t_u_u((~(p_2262->g_308 && p_2262->g_236)), (p_2262->g_52 &= (l_533 |= (((-1L) <= (((void*)0 != l_523) >= (safe_mul_func_int8_t_s_s((FAKE_DIVERGE(p_2262->local_0_offset, get_local_id(0), 10) > (((l_481[1] > (safe_rshift_func_uint16_t_u_u((safe_div_func_uint8_t_u_u(0x1EL, (-1L))), 11))) || p_2262->g_356) < 0x3A6C9D3FL)), 0x0AL)))) <= p_2262->g_437))))), l_481[1]))))) > l_486) , p_2262->g_19[3]), 15)) , l_452);
                if ((safe_sub_func_uint32_t_u_u(((safe_mul_func_int8_t_s_s(l_490, (l_481[1] <= ((0x3EB7CF0EF51B813DL >= l_481[1]) , l_481[1])))) < (l_538 = l_481[1])), ((safe_div_func_int8_t_s_s((((safe_rshift_func_uint16_t_u_s((((safe_sub_func_int32_t_s_s((safe_sub_func_int16_t_s_s((((safe_mod_func_int32_t_s_s(l_481[1], (safe_div_func_uint8_t_u_u((safe_rshift_func_int8_t_s_s(p_2262->g_52, 6)), (safe_lshift_func_int8_t_s_s(((safe_mul_func_int8_t_s_s((safe_lshift_func_int8_t_s_u(l_489, l_559)), GROUP_DIVERGE(2, 1))) & (-1L)), 4)))))) < l_481[2]) > p_2262->g_236), 0x3C4DL)), 0x7B9C51EFL)) ^ 0x4A76220BL) == (-10L)), l_452)) | l_452) < 0x3DC50E27L), 0x7AL)) & l_459))))
                { /* block id: 215 */
                    int16_t ***l_564 = &p_2262->g_251;
                    int32_t l_580 = 0L;
                    int32_t l_608 = 0x19D1A3FEL;
                    l_538 &= (1L >= (((safe_div_func_uint64_t_u_u(((safe_add_func_int64_t_s_s((l_564 != (void*)0), (((safe_add_func_int8_t_s_s((((p_2262->g_567 = (p_2262->g_52 = FAKE_DIVERGE(p_2262->group_0_offset, get_group_id(0), 10))) , (void*)0) == l_446), ((safe_mod_func_uint8_t_u_u((((((safe_rshift_func_uint16_t_u_s(((p_2262->g_579 = (p_2262->g_6 > ((safe_mod_func_int16_t_s_s((safe_rshift_func_int16_t_s_u((safe_unary_minus_func_uint8_t_u((safe_unary_minus_func_uint64_t_u((((*l_564) == l_578) , ((l_452 ^ (-1L)) , GROUP_DIVERGE(1, 1))))))), 1)), l_559)) , l_486))) , l_452), l_580)) && 0xCA57L) , l_580) <= (*p_2262->g_252)) >= 1L), p_2262->g_343)) != l_486))) <= l_580) | FAKE_DIVERGE(p_2262->local_1_offset, get_local_id(1), 10)))) || FAKE_DIVERGE(p_2262->group_1_offset, get_group_id(1), 10)), l_559)) || l_452) || (*p_2262->g_115)));
                    for (l_483 = (-3); (l_483 != (-11)); l_483 = safe_sub_func_int64_t_s_s(l_483, 3))
                    { /* block id: 222 */
                        uint8_t l_602[10][7] = {{0xBFL,0x86L,0UL,255UL,1UL,1UL,255UL},{0xBFL,0x86L,0UL,255UL,1UL,1UL,255UL},{0xBFL,0x86L,0UL,255UL,1UL,1UL,255UL},{0xBFL,0x86L,0UL,255UL,1UL,1UL,255UL},{0xBFL,0x86L,0UL,255UL,1UL,1UL,255UL},{0xBFL,0x86L,0UL,255UL,1UL,1UL,255UL},{0xBFL,0x86L,0UL,255UL,1UL,1UL,255UL},{0xBFL,0x86L,0UL,255UL,1UL,1UL,255UL},{0xBFL,0x86L,0UL,255UL,1UL,1UL,255UL},{0xBFL,0x86L,0UL,255UL,1UL,1UL,255UL}};
                        uint16_t **l_607 = &l_606;
                        int32_t l_610 = 1L;
                        int i, j;
                        l_580 = l_491;
                        if (l_583)
                            continue;
                        l_608 &= ((((safe_mod_func_int8_t_s_s(((*l_500) = 0x65L), ((*l_446) = (safe_mod_func_int16_t_s_s(((safe_div_func_int32_t_s_s((safe_rshift_func_int16_t_s_u((safe_div_func_uint32_t_u_u(FAKE_DIVERGE(p_2262->local_0_offset, get_local_id(0), 10), (((safe_add_func_int64_t_s_s(((safe_mul_func_int8_t_s_s((safe_lshift_func_int8_t_s_s((((safe_sub_func_int8_t_s_s(l_602[6][3], ((safe_sub_func_uint8_t_u_u(l_605[0][3], (p_2262->g_141 == (~l_602[6][6])))) && (&p_2262->g_485 == ((*l_607) = l_606))))) == l_580) | (0UL < l_452)), 1)), l_481[2])) <= p_2262->g_141), l_580)) , l_488) ^ (-7L)))), 7)), 0xB02B9E30L)) || l_481[1]), l_495))))) == l_602[7][5]) & l_602[5][2]) != 1UL);
                        l_610 |= l_609;
                    }
                    for (l_583 = 3; (l_583 != 25); l_583 = safe_add_func_uint64_t_u_u(l_583, 1))
                    { /* block id: 233 */
                        int16_t *l_613 = &l_609;
                        return l_512;
                    }
                    for (l_459 = 0; (l_459 == 27); l_459 = safe_add_func_uint8_t_u_u(l_459, 3))
                    { /* block id: 238 */
                        return l_512;
                    }
                }
                else
                { /* block id: 241 */
                    int16_t *l_619[8] = {&p_2262->g_79[0],&p_2262->g_79[0],&p_2262->g_79[0],&p_2262->g_79[0],&p_2262->g_79[0],&p_2262->g_79[0],&p_2262->g_79[0],&p_2262->g_79[0]};
                    int i;
                    for (p_2262->g_52 = 0; (p_2262->g_52 <= 24); p_2262->g_52 = safe_add_func_int64_t_s_s(p_2262->g_52, 4))
                    { /* block id: 244 */
                        int16_t *l_618 = &p_2262->g_79[3];
                        return l_618;
                    }
                    return l_619[0];
                }
            }
            else
            { /* block id: 249 */
                int8_t *l_630 = &p_2262->g_579;
                int32_t l_632 = 0x4ED28356L;
                uint8_t *****l_633 = (void*)0;
                uint32_t l_637 = 0UL;
                int32_t l_651 = 0L;
                for (l_533 = 0; (l_533 != 47); l_533 = safe_add_func_uint32_t_u_u(l_533, 1))
                { /* block id: 252 */
                    (*l_516) = (*p_2262->g_115);
                    return l_622;
                }
                if ((*l_516))
                    continue;
                if ((((p_2262->g_380 = l_623) != l_623) && ((safe_rshift_func_int8_t_s_u(((safe_add_func_int32_t_s_s((((safe_sub_func_int64_t_s_s(((p_2262->g_79[0] , l_630) != (l_631 = l_446)), (((l_632 , l_633) != l_633) , (((safe_mul_func_int16_t_s_s(l_632, p_2262->g_437)) ^ (*l_516)) <= l_636)))) & l_605[0][3]) > (*l_516)), l_637)) , 0x22L), 7)) , 9L)))
                { /* block id: 259 */
                    uint32_t l_641 = 0x94C85F62L;
                    int64_t *l_649 = &p_2262->g_650;
                    l_632 = 0x6660C0FAL;
                    if (l_637)
                        continue;
                    l_651 = (255UL >= (~((((safe_mod_func_uint8_t_u_u(0x41L, p_2262->g_640)) | l_641) < ((safe_mod_func_uint16_t_u_u((safe_sub_func_int8_t_s_s((((p_2262->g_7 >= (((*l_649) = ((l_632 &= (((l_646 | (((l_637 , (p_2262->g_437 |= (((**l_578) = (+(*p_2262->g_252))) | ((safe_sub_func_int16_t_s_s((!(*l_516)), 3L)) || l_447)))) <= p_2262->g_469) == l_637)) , p_2262->g_343) < 0x49842BE1L)) | (-1L))) , 4L)) , FAKE_DIVERGE(p_2262->global_2_offset, get_global_id(2), 10)) , l_438), l_641)), p_2262->g_356)) == p_2262->g_236)) , (*l_516))));
                }
                else
                { /* block id: 267 */
                    volatile uint16_t * volatile **l_655 = &p_2262->g_652;
                    int32_t l_656 = 0L;
                    int32_t l_658 = (-5L);
                    int32_t l_659 = (-1L);
                    int32_t l_660[1][10];
                    uint32_t l_661 = 4294967288UL;
                    int32_t ***l_664 = &l_423[3][0];
                    int32_t ***l_665 = (void*)0;
                    int i, j;
                    for (i = 0; i < 1; i++)
                    {
                        for (j = 0; j < 10; j++)
                            l_660[i][j] = 0x5CE43292L;
                    }
                    (*l_516) = 0x7FC76E48L;
                    (*l_655) = p_2262->g_652;
                    --l_661;
                    (*l_516) = (l_637 < (p_2262->g_567 = ((l_664 == (l_665 = l_664)) & 0x1FL)));
                }
            }
        }
    }
    else
    { /* block id: 277 */
        int64_t l_668 = 0x4B2A3ED089FA56B0L;
        uint64_t *l_671 = &p_2262->g_672[0][0];
        uint8_t *****l_678 = (void*)0;
        uint8_t ******l_677[2];
        int32_t l_680 = 1L;
        int32_t l_681 = 1L;
        int32_t l_682[5][10][5] = {{{0L,(-1L),0L,1L,0x552CD83AL},{0L,(-1L),0L,1L,0x552CD83AL},{0L,(-1L),0L,1L,0x552CD83AL},{0L,(-1L),0L,1L,0x552CD83AL},{0L,(-1L),0L,1L,0x552CD83AL},{0L,(-1L),0L,1L,0x552CD83AL},{0L,(-1L),0L,1L,0x552CD83AL},{0L,(-1L),0L,1L,0x552CD83AL},{0L,(-1L),0L,1L,0x552CD83AL},{0L,(-1L),0L,1L,0x552CD83AL}},{{0L,(-1L),0L,1L,0x552CD83AL},{0L,(-1L),0L,1L,0x552CD83AL},{0L,(-1L),0L,1L,0x552CD83AL},{0L,(-1L),0L,1L,0x552CD83AL},{0L,(-1L),0L,1L,0x552CD83AL},{0L,(-1L),0L,1L,0x552CD83AL},{0L,(-1L),0L,1L,0x552CD83AL},{0L,(-1L),0L,1L,0x552CD83AL},{0L,(-1L),0L,1L,0x552CD83AL},{0L,(-1L),0L,1L,0x552CD83AL}},{{0L,(-1L),0L,1L,0x552CD83AL},{0L,(-1L),0L,1L,0x552CD83AL},{0L,(-1L),0L,1L,0x552CD83AL},{0L,(-1L),0L,1L,0x552CD83AL},{0L,(-1L),0L,1L,0x552CD83AL},{0L,(-1L),0L,1L,0x552CD83AL},{0L,(-1L),0L,1L,0x552CD83AL},{0L,(-1L),0L,1L,0x552CD83AL},{0L,(-1L),0L,1L,0x552CD83AL},{0L,(-1L),0L,1L,0x552CD83AL}},{{0L,(-1L),0L,1L,0x552CD83AL},{0L,(-1L),0L,1L,0x552CD83AL},{0L,(-1L),0L,1L,0x552CD83AL},{0L,(-1L),0L,1L,0x552CD83AL},{0L,(-1L),0L,1L,0x552CD83AL},{0L,(-1L),0L,1L,0x552CD83AL},{0L,(-1L),0L,1L,0x552CD83AL},{0L,(-1L),0L,1L,0x552CD83AL},{0L,(-1L),0L,1L,0x552CD83AL},{0L,(-1L),0L,1L,0x552CD83AL}},{{0L,(-1L),0L,1L,0x552CD83AL},{0L,(-1L),0L,1L,0x552CD83AL},{0L,(-1L),0L,1L,0x552CD83AL},{0L,(-1L),0L,1L,0x552CD83AL},{0L,(-1L),0L,1L,0x552CD83AL},{0L,(-1L),0L,1L,0x552CD83AL},{0L,(-1L),0L,1L,0x552CD83AL},{0L,(-1L),0L,1L,0x552CD83AL},{0L,(-1L),0L,1L,0x552CD83AL},{0L,(-1L),0L,1L,0x552CD83AL}}};
        uint32_t *l_683 = &p_2262->g_684;
        uint16_t l_685 = 0x2AE0L;
        uint64_t *l_686 = &p_2262->g_687[2][3];
        int32_t l_688 = 3L;
        int32_t l_695 = 0x2BAB25EDL;
        int32_t l_696 = 0x45A82EB7L;
        int32_t l_697 = 2L;
        int32_t l_698 = 0x32F896F5L;
        int32_t l_699 = (-1L);
        int32_t l_700 = 0L;
        int32_t l_701[4] = {(-1L),(-1L),(-1L),(-1L)};
        uint8_t l_702[4];
        int i, j, k;
        for (i = 0; i < 2; i++)
            l_677[i] = &l_678;
        for (i = 0; i < 4; i++)
            l_702[i] = 5UL;
        l_688 = (safe_div_func_uint64_t_u_u((l_668 , ((*p_2262->g_252) > (safe_sub_func_int64_t_s_s(l_668, ((*l_686) &= (((*l_671) = 0x6AABA98EB6A18AF6L) | (((*p_2262->g_653) > ((((*l_683) = (safe_rshift_func_int16_t_s_s((safe_mul_func_int8_t_s_s(((((l_680 = (&l_623 == (l_679[0][2][2] = &l_623))) & l_668) & ((l_681 = l_668) != l_682[1][6][4])) , p_2262->g_356), l_682[1][6][4])), 4))) , p_2262->g_437) , l_685)) && 0xF060E025L))))))), l_685));
        l_695 = (safe_mod_func_int64_t_s_s((safe_add_func_int16_t_s_s(((*l_622) = ((safe_sub_func_uint8_t_u_u((++l_702[1]), (((safe_mod_func_int64_t_s_s((l_685 ^ GROUP_DIVERGE(0, 1)), (((*p_2262->g_252) = (*p_2262->g_252)) , ((0x62L <= ((safe_unary_minus_func_uint16_t_u((*p_2262->g_653))) != (((*l_500) |= ((((safe_lshift_func_uint8_t_u_s(((((((safe_div_func_uint16_t_u_u(((safe_mod_func_uint32_t_u_u((safe_sub_func_int8_t_s_s((+(p_2262->g_52 >= (safe_div_func_int8_t_s_s((!(&p_81 != (void*)0)), (safe_lshift_func_int8_t_s_u((((*l_671)++) & ((**p_2262->g_251) == l_698)), 7)))))), l_724)), 0xEC19039CL)) | 0L), l_682[1][6][4])) ^ l_699) <= p_2262->g_7) , p_2262->g_7) , l_682[1][7][4]) , l_699), 3)) <= (**p_2262->g_251)) || 0x698DL) , l_668)) ^ l_697))) , 0x5AF4A33662251ACBL)))) & l_685) > p_2262->g_485))) < l_725)), l_698)), p_2262->g_343));
        return (*p_2262->g_251);
    }
    return l_726;
}


/* ------------------------------------------ */
/* 
 * reads : p_2262->g_52 p_2262->g_7 p_2262->g_19 p_2262->g_138 p_2262->g_12 p_2262->g_115 p_2262->g_141 p_2262->g_6 p_2262->g_79 p_2262->g_2 p_2262->g_154 p_2262->g_177 p_2262->g_311 p_2262->g_151
 * writes: p_2262->g_52 p_2262->g_79 p_2262->g_138 p_2262->g_141 p_2262->g_12 p_2262->g_151 p_2262->g_155 p_2262->g_177
 */
int32_t * func_82(int32_t * p_83, uint32_t  p_84, uint16_t  p_85, int16_t * p_86, uint8_t  p_87, struct S0 * p_2262)
{ /* block id: 23 */
    uint64_t l_126 = 0UL;
    uint32_t *l_134 = &p_2262->g_52;
    int16_t *l_137 = &p_2262->g_79[0];
    uint8_t *l_139 = (void*)0;
    uint8_t *l_140 = &p_2262->g_141;
    int32_t *l_142 = &p_2262->g_12;
    int32_t l_206 = 0x7445C6D8L;
    int32_t l_209[3][5] = {{0x5C6EA247L,0x03550C48L,0x5C6EA247L,0x5C6EA247L,0x03550C48L},{0x5C6EA247L,0x03550C48L,0x5C6EA247L,0x5C6EA247L,0x03550C48L},{0x5C6EA247L,0x03550C48L,0x5C6EA247L,0x5C6EA247L,0x03550C48L}};
    int64_t l_213[2][9] = {{0x3EE8E1141017C705L,1L,0L,1L,0x3EE8E1141017C705L,0x3EE8E1141017C705L,1L,0L,1L},{0x3EE8E1141017C705L,1L,0L,1L,0x3EE8E1141017C705L,0x3EE8E1141017C705L,1L,0L,1L}};
    uint8_t l_312 = 0x82L;
    int64_t l_335[8];
    int8_t l_341[10] = {0x07L,0x58L,0x07L,0x07L,0x58L,0x07L,0x07L,0x58L,0x07L,0x07L};
    int32_t l_342 = 0x1845B081L;
    uint8_t l_344 = 1UL;
    int i, j;
    for (i = 0; i < 8; i++)
        l_335[i] = 0x075EE94982D3B849L;
    (*l_142) = (safe_add_func_int64_t_s_s(((!(((((((+(safe_mod_func_uint8_t_u_u(((*l_140) = (p_84 | ((p_85 <= (((((((0x5C80B88CC77C05DAL || (l_126 >= (((safe_rshift_func_uint16_t_u_u((0UL != (!(p_87 != l_126))), 6)) & (p_2262->g_138[0] &= ((*l_137) = (((safe_add_func_int16_t_s_s((-1L), (safe_unary_minus_func_uint8_t_u((((((safe_rshift_func_uint8_t_u_s((((*l_134)++) != (+0x536CA66AL)), p_2262->g_7)) | p_2262->g_19[3]) != 0x6793L) || 1L) != l_126))))) <= p_84) || l_126)))) == 65530UL))) < 0xEA708A12L) && p_2262->g_12) ^ 0xE0F9FDB8F82D9EA5L) , (-9L)) >= l_126) , l_126)) <= (*p_2262->g_115)))), 0x3CL))) && l_126) ^ p_2262->g_19[3]) != p_84) == l_126) != p_84) || l_126)) || 4294967291UL), p_87));
    for (p_2262->g_52 = 0; (p_2262->g_52 > 13); ++p_2262->g_52)
    { /* block id: 31 */
        uint8_t **l_153 = &l_140;
        int32_t *l_161 = &p_2262->g_12;
        int32_t l_210 = (-10L);
        int32_t l_211 = 1L;
        int32_t l_212[7] = {0L,0L,0L,0L,0L,0L,0L};
        uint32_t l_241 = 0x92E53F40L;
        uint8_t l_330 = 0x68L;
        int32_t l_337 = 1L;
        int32_t l_366 = 0x5B362B93L;
        int i;
        if ((0x515F4A00L == p_2262->g_141))
        { /* block id: 32 */
            for (p_85 = 0; (p_85 != 40); p_85 = safe_add_func_uint32_t_u_u(p_85, 4))
            { /* block id: 35 */
                int32_t l_175 = 0L;
                for (p_87 = 0; (p_87 != 36); p_87 = safe_add_func_int8_t_s_s(p_87, 4))
                { /* block id: 38 */
                    int32_t **l_149 = (void*)0;
                    int32_t **l_152 = &p_2262->g_151[2];
                    uint16_t l_166 = 0UL;
                    int32_t *l_176 = &p_2262->g_177;
                    (*l_152) = func_88(p_87, p_2262);
                    (*p_2262->g_154) = l_153;
                    for (l_126 = 0; (l_126 >= 50); l_126 = safe_add_func_uint64_t_u_u(l_126, 7))
                    { /* block id: 43 */
                        int16_t **l_160[1][2];
                        int16_t ***l_159 = &l_160[0][1];
                        int i, j;
                        for (i = 0; i < 1; i++)
                        {
                            for (j = 0; j < 2; j++)
                                l_160[i][j] = &l_137;
                        }
                        (*l_159) = &p_86;
                        return l_161;
                    }
                    (*l_176) ^= (((safe_div_func_uint64_t_u_u((l_166 > (0x3DF311E7L <= (safe_div_func_uint8_t_u_u((safe_rshift_func_int8_t_s_s((~(&p_2262->g_155[1][0] == (void*)0)), (((*l_152) = (l_161 = func_88(p_87, p_2262))) == (p_83 = &p_2262->g_2)))), (safe_lshift_func_uint16_t_u_s((safe_div_func_uint8_t_u_u(l_175, 0x8FL)), 13)))))), 0x16674BE705B1A202L)) , p_2262->g_2) <= 65535UL);
                }
            }
        }
        else
        { /* block id: 53 */
            return l_134;
        }
    }
    return (*p_2262->g_311);
}


/* ------------------------------------------ */
/* 
 * reads : p_2262->g_6 p_2262->g_12 p_2262->g_7 p_2262->g_79 p_2262->g_19 p_2262->g_115 p_2262->g_2
 * writes: p_2262->g_12
 */
int32_t * func_88(uint64_t  p_89, struct S0 * p_2262)
{ /* block id: 19 */
    int32_t *l_101 = (void*)0;
    int16_t *l_111 = &p_2262->g_79[0];
    int32_t *l_120[6][9] = {{&p_2262->g_2,(void*)0,&p_2262->g_12,&p_2262->g_12,(void*)0,&p_2262->g_12,&p_2262->g_12,(void*)0,&p_2262->g_2},{&p_2262->g_2,(void*)0,&p_2262->g_12,&p_2262->g_12,(void*)0,&p_2262->g_12,&p_2262->g_12,(void*)0,&p_2262->g_2},{&p_2262->g_2,(void*)0,&p_2262->g_12,&p_2262->g_12,(void*)0,&p_2262->g_12,&p_2262->g_12,(void*)0,&p_2262->g_2},{&p_2262->g_2,(void*)0,&p_2262->g_12,&p_2262->g_12,(void*)0,&p_2262->g_12,&p_2262->g_12,(void*)0,&p_2262->g_2},{&p_2262->g_2,(void*)0,&p_2262->g_12,&p_2262->g_12,(void*)0,&p_2262->g_12,&p_2262->g_12,(void*)0,&p_2262->g_2},{&p_2262->g_2,(void*)0,&p_2262->g_12,&p_2262->g_12,(void*)0,&p_2262->g_12,&p_2262->g_12,(void*)0,&p_2262->g_2}};
    int64_t l_121 = 0x40BA0D37901A93EFL;
    int i, j;
    (*p_2262->g_115) = ((l_101 != l_101) && ((p_2262->g_6 || ((((safe_add_func_uint8_t_u_u(p_89, (safe_unary_minus_func_int32_t_s((safe_sub_func_int8_t_s_s(((p_89 && 3L) , (p_2262->g_12 && (p_2262->g_7 == (((+(safe_mul_func_int16_t_s_s(0x5214L, p_2262->g_79[0]))) >= p_89) == 255UL)))), 0x4DL)))))) || p_2262->g_19[3]) , (void*)0) != l_111)) ^ 0xD2E7L));
    l_121 &= (safe_sub_func_uint16_t_u_u((safe_rshift_func_int16_t_s_s(((l_111 != &p_2262->g_79[0]) != ((((l_111 == &p_2262->g_79[1]) , &p_2262->g_2) != &p_2262->g_12) , p_2262->g_2)), 13)), 0x17D6L));
    return l_120[4][2];
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S0 c_2263;
    struct S0* p_2262 = &c_2263;
    struct S0 c_2264 = {
        0x350BF34FL, // p_2262->g_2
        5UL, // p_2262->g_5
        0x10E164CAL, // p_2262->g_6
        (-1L), // p_2262->g_7
        (-1L), // p_2262->g_12
        {1UL,1UL,1UL,1UL,1UL,1UL,1UL}, // p_2262->g_19
        0x3E46L, // p_2262->g_27
        0xBC97DE2EL, // p_2262->g_52
        {0x58E5L,0x58E5L,0x58E5L,0x58E5L,0x58E5L,0x58E5L,0x58E5L,0x58E5L,0x58E5L}, // p_2262->g_79
        {{{&p_2262->g_12}}}, // p_2262->g_112
        (void*)0, // p_2262->g_113
        (void*)0, // p_2262->g_114
        &p_2262->g_12, // p_2262->g_115
        {0x33B3E5AAL,0x33B3E5AAL}, // p_2262->g_138
        249UL, // p_2262->g_141
        {&p_2262->g_2,&p_2262->g_2,&p_2262->g_2,&p_2262->g_2,&p_2262->g_2,&p_2262->g_2,&p_2262->g_2}, // p_2262->g_151
        {&p_2262->g_151[0],&p_2262->g_151[0],&p_2262->g_151[0],&p_2262->g_151[0],&p_2262->g_151[0],&p_2262->g_151[0],&p_2262->g_151[0],&p_2262->g_151[0],&p_2262->g_151[0],&p_2262->g_151[0]}, // p_2262->g_150
        (void*)0, // p_2262->g_156
        {{&p_2262->g_156,&p_2262->g_156},{&p_2262->g_156,&p_2262->g_156},{&p_2262->g_156,&p_2262->g_156},{&p_2262->g_156,&p_2262->g_156},{&p_2262->g_156,&p_2262->g_156},{&p_2262->g_156,&p_2262->g_156},{&p_2262->g_156,&p_2262->g_156}}, // p_2262->g_155
        &p_2262->g_155[5][0], // p_2262->g_154
        0x138955F0L, // p_2262->g_177
        &p_2262->g_151[2], // p_2262->g_192
        0x596FB6D2L, // p_2262->g_214
        0UL, // p_2262->g_236
        &p_2262->g_79[6], // p_2262->g_252
        &p_2262->g_252, // p_2262->g_251
        {&p_2262->g_251,(void*)0,&p_2262->g_251,&p_2262->g_251,(void*)0,&p_2262->g_251,&p_2262->g_251,(void*)0,&p_2262->g_251,&p_2262->g_251}, // p_2262->g_250
        0x54CDL, // p_2262->g_308
        (void*)0, // p_2262->g_310
        &p_2262->g_151[0], // p_2262->g_311
        &p_2262->g_151[6], // p_2262->g_331
        (-1L), // p_2262->g_343
        4294967289UL, // p_2262->g_356
        &p_2262->g_155[5][0], // p_2262->g_381
        &p_2262->g_381, // p_2262->g_380
        &p_2262->g_151[4], // p_2262->g_413
        0x01D3CA24419C1050L, // p_2262->g_437
        0x21L, // p_2262->g_469
        0xFEBEL, // p_2262->g_485
        0x5B16L, // p_2262->g_567
        (-8L), // p_2262->g_579
        0L, // p_2262->g_640
        (-10L), // p_2262->g_650
        {{65535UL,65534UL,65535UL,65535UL,65534UL,65535UL,65535UL,65534UL},{65535UL,65534UL,65535UL,65535UL,65534UL,65535UL,65535UL,65534UL},{65535UL,65534UL,65535UL,65535UL,65534UL,65535UL,65535UL,65534UL}}, // p_2262->g_654
        &p_2262->g_654[0][6], // p_2262->g_653
        &p_2262->g_653, // p_2262->g_652
        {{0xFD7BA132724D383FL,0xFD7BA132724D383FL,0xFD7BA132724D383FL,0xFD7BA132724D383FL}}, // p_2262->g_672
        1UL, // p_2262->g_684
        {{1UL,8UL,0UL,0x22A297BE1A576D51L,8UL},{1UL,8UL,0UL,0x22A297BE1A576D51L,8UL},{1UL,8UL,0UL,0x22A297BE1A576D51L,8UL},{1UL,8UL,0UL,0x22A297BE1A576D51L,8UL},{1UL,8UL,0UL,0x22A297BE1A576D51L,8UL}}, // p_2262->g_687
        {{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}},{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}},{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}},{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}},{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}},{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}},{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}},{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}},{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}},{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}}}, // p_2262->g_776
        &p_2262->g_177, // p_2262->g_809
        (-5L), // p_2262->g_844
        0x07F2DBA7L, // p_2262->g_846
        4294967289UL, // p_2262->g_899
        (void*)0, // p_2262->g_963
        &p_2262->g_963, // p_2262->g_962
        (void*)0, // p_2262->g_1034
        {0L,0L}, // p_2262->g_1039
        &p_2262->g_672[0][0], // p_2262->g_1052
        4UL, // p_2262->g_1101
        18446744073709551614UL, // p_2262->g_1108
        {{0xEEL,0xB8L,0xBBL,0xB8L,0xEEL,0xEEL,0xB8L,0xBBL,0xB8L},{0xEEL,0xB8L,0xBBL,0xB8L,0xEEL,0xEEL,0xB8L,0xBBL,0xB8L},{0xEEL,0xB8L,0xBBL,0xB8L,0xEEL,0xEEL,0xB8L,0xBBL,0xB8L}}, // p_2262->g_1132
        0xA6L, // p_2262->g_1133
        0x84L, // p_2262->g_1134
        {1UL}, // p_2262->g_1135
        2UL, // p_2262->g_1136
        {{{0x44L,255UL,0x41L,1UL,8UL},{0x44L,255UL,0x41L,1UL,8UL},{0x44L,255UL,0x41L,1UL,8UL},{0x44L,255UL,0x41L,1UL,8UL},{0x44L,255UL,0x41L,1UL,8UL},{0x44L,255UL,0x41L,1UL,8UL}},{{0x44L,255UL,0x41L,1UL,8UL},{0x44L,255UL,0x41L,1UL,8UL},{0x44L,255UL,0x41L,1UL,8UL},{0x44L,255UL,0x41L,1UL,8UL},{0x44L,255UL,0x41L,1UL,8UL},{0x44L,255UL,0x41L,1UL,8UL}},{{0x44L,255UL,0x41L,1UL,8UL},{0x44L,255UL,0x41L,1UL,8UL},{0x44L,255UL,0x41L,1UL,8UL},{0x44L,255UL,0x41L,1UL,8UL},{0x44L,255UL,0x41L,1UL,8UL},{0x44L,255UL,0x41L,1UL,8UL}},{{0x44L,255UL,0x41L,1UL,8UL},{0x44L,255UL,0x41L,1UL,8UL},{0x44L,255UL,0x41L,1UL,8UL},{0x44L,255UL,0x41L,1UL,8UL},{0x44L,255UL,0x41L,1UL,8UL},{0x44L,255UL,0x41L,1UL,8UL}},{{0x44L,255UL,0x41L,1UL,8UL},{0x44L,255UL,0x41L,1UL,8UL},{0x44L,255UL,0x41L,1UL,8UL},{0x44L,255UL,0x41L,1UL,8UL},{0x44L,255UL,0x41L,1UL,8UL},{0x44L,255UL,0x41L,1UL,8UL}},{{0x44L,255UL,0x41L,1UL,8UL},{0x44L,255UL,0x41L,1UL,8UL},{0x44L,255UL,0x41L,1UL,8UL},{0x44L,255UL,0x41L,1UL,8UL},{0x44L,255UL,0x41L,1UL,8UL},{0x44L,255UL,0x41L,1UL,8UL}}}, // p_2262->g_1137
        1UL, // p_2262->g_1138
        0xECL, // p_2262->g_1139
        0x5FL, // p_2262->g_1140
        0x57L, // p_2262->g_1141
        252UL, // p_2262->g_1142
        254UL, // p_2262->g_1143
        250UL, // p_2262->g_1144
        2UL, // p_2262->g_1145
        0xE5L, // p_2262->g_1146
        0x2CL, // p_2262->g_1147
        0xBFL, // p_2262->g_1148
        {{{2UL,0UL,2UL,2UL,0UL,2UL},{2UL,0UL,2UL,2UL,0UL,2UL}},{{2UL,0UL,2UL,2UL,0UL,2UL},{2UL,0UL,2UL,2UL,0UL,2UL}}}, // p_2262->g_1149
        249UL, // p_2262->g_1150
        0x2AL, // p_2262->g_1151
        {255UL,255UL,255UL,255UL,255UL,255UL,255UL,255UL,255UL,255UL}, // p_2262->g_1152
        0x50L, // p_2262->g_1153
        253UL, // p_2262->g_1154
        255UL, // p_2262->g_1155
        {0x31L,0x31L,0x31L,0x31L,0x31L,0x31L,0x31L,0x31L,0x31L,0x31L}, // p_2262->g_1156
        0x67L, // p_2262->g_1157
        249UL, // p_2262->g_1158
        0x68L, // p_2262->g_1159
        0x9AL, // p_2262->g_1160
        {{255UL,255UL,255UL,255UL,255UL,255UL,255UL,255UL}}, // p_2262->g_1161
        0x40L, // p_2262->g_1162
        0xD0L, // p_2262->g_1163
        0x7FL, // p_2262->g_1164
        {{{&p_2262->g_1164},{&p_2262->g_1164},{&p_2262->g_1164},{&p_2262->g_1164},{&p_2262->g_1164},{&p_2262->g_1164},{&p_2262->g_1164},{&p_2262->g_1164},{&p_2262->g_1164}},{{&p_2262->g_1164},{&p_2262->g_1164},{&p_2262->g_1164},{&p_2262->g_1164},{&p_2262->g_1164},{&p_2262->g_1164},{&p_2262->g_1164},{&p_2262->g_1164},{&p_2262->g_1164}},{{&p_2262->g_1164},{&p_2262->g_1164},{&p_2262->g_1164},{&p_2262->g_1164},{&p_2262->g_1164},{&p_2262->g_1164},{&p_2262->g_1164},{&p_2262->g_1164},{&p_2262->g_1164}},{{&p_2262->g_1164},{&p_2262->g_1164},{&p_2262->g_1164},{&p_2262->g_1164},{&p_2262->g_1164},{&p_2262->g_1164},{&p_2262->g_1164},{&p_2262->g_1164},{&p_2262->g_1164}},{{&p_2262->g_1164},{&p_2262->g_1164},{&p_2262->g_1164},{&p_2262->g_1164},{&p_2262->g_1164},{&p_2262->g_1164},{&p_2262->g_1164},{&p_2262->g_1164},{&p_2262->g_1164}},{{&p_2262->g_1164},{&p_2262->g_1164},{&p_2262->g_1164},{&p_2262->g_1164},{&p_2262->g_1164},{&p_2262->g_1164},{&p_2262->g_1164},{&p_2262->g_1164},{&p_2262->g_1164}},{{&p_2262->g_1164},{&p_2262->g_1164},{&p_2262->g_1164},{&p_2262->g_1164},{&p_2262->g_1164},{&p_2262->g_1164},{&p_2262->g_1164},{&p_2262->g_1164},{&p_2262->g_1164}},{{&p_2262->g_1164},{&p_2262->g_1164},{&p_2262->g_1164},{&p_2262->g_1164},{&p_2262->g_1164},{&p_2262->g_1164},{&p_2262->g_1164},{&p_2262->g_1164},{&p_2262->g_1164}},{{&p_2262->g_1164},{&p_2262->g_1164},{&p_2262->g_1164},{&p_2262->g_1164},{&p_2262->g_1164},{&p_2262->g_1164},{&p_2262->g_1164},{&p_2262->g_1164},{&p_2262->g_1164}},{{&p_2262->g_1164},{&p_2262->g_1164},{&p_2262->g_1164},{&p_2262->g_1164},{&p_2262->g_1164},{&p_2262->g_1164},{&p_2262->g_1164},{&p_2262->g_1164},{&p_2262->g_1164}}}, // p_2262->g_1131
        {&p_2262->g_1131[8][6][0],&p_2262->g_1131[8][6][0]}, // p_2262->g_1130
        {&p_2262->g_1130[0],&p_2262->g_1130[0],&p_2262->g_1130[0],&p_2262->g_1130[0],&p_2262->g_1130[0],&p_2262->g_1130[0],&p_2262->g_1130[0]}, // p_2262->g_1129
        &p_2262->g_1129[6], // p_2262->g_1128
        &p_2262->g_1128, // p_2262->g_1127
        &p_2262->g_1128, // p_2262->g_1165
        {{(void*)0,&p_2262->g_1127,&p_2262->g_1127},{(void*)0,&p_2262->g_1127,&p_2262->g_1127},{(void*)0,&p_2262->g_1127,&p_2262->g_1127},{(void*)0,&p_2262->g_1127,&p_2262->g_1127},{(void*)0,&p_2262->g_1127,&p_2262->g_1127},{(void*)0,&p_2262->g_1127,&p_2262->g_1127},{(void*)0,&p_2262->g_1127,&p_2262->g_1127}}, // p_2262->g_1126
        {{{0x9487D66E45A89541L,0x9487D66E45A89541L,0x9487D66E45A89541L,0x9487D66E45A89541L,0x9487D66E45A89541L}},{{0x9487D66E45A89541L,0x9487D66E45A89541L,0x9487D66E45A89541L,0x9487D66E45A89541L,0x9487D66E45A89541L}},{{0x9487D66E45A89541L,0x9487D66E45A89541L,0x9487D66E45A89541L,0x9487D66E45A89541L,0x9487D66E45A89541L}},{{0x9487D66E45A89541L,0x9487D66E45A89541L,0x9487D66E45A89541L,0x9487D66E45A89541L,0x9487D66E45A89541L}},{{0x9487D66E45A89541L,0x9487D66E45A89541L,0x9487D66E45A89541L,0x9487D66E45A89541L,0x9487D66E45A89541L}}}, // p_2262->g_1190
        (void*)0, // p_2262->g_1241
        &p_2262->g_1241, // p_2262->g_1240
        &p_2262->g_1240, // p_2262->g_1239
        1L, // p_2262->g_1276
        {0xEDEDL}, // p_2262->g_1332
        &p_2262->g_684, // p_2262->g_1348
        {{&p_2262->g_1348,(void*)0,&p_2262->g_1348,&p_2262->g_1348,&p_2262->g_1348,&p_2262->g_1348},{&p_2262->g_1348,(void*)0,&p_2262->g_1348,&p_2262->g_1348,&p_2262->g_1348,&p_2262->g_1348},{&p_2262->g_1348,(void*)0,&p_2262->g_1348,&p_2262->g_1348,&p_2262->g_1348,&p_2262->g_1348},{&p_2262->g_1348,(void*)0,&p_2262->g_1348,&p_2262->g_1348,&p_2262->g_1348,&p_2262->g_1348},{&p_2262->g_1348,(void*)0,&p_2262->g_1348,&p_2262->g_1348,&p_2262->g_1348,&p_2262->g_1348},{&p_2262->g_1348,(void*)0,&p_2262->g_1348,&p_2262->g_1348,&p_2262->g_1348,&p_2262->g_1348},{&p_2262->g_1348,(void*)0,&p_2262->g_1348,&p_2262->g_1348,&p_2262->g_1348,&p_2262->g_1348},{&p_2262->g_1348,(void*)0,&p_2262->g_1348,&p_2262->g_1348,&p_2262->g_1348,&p_2262->g_1348}}, // p_2262->g_1347
        {{0x417CCC30L,6UL},{0x417CCC30L,6UL},{0x417CCC30L,6UL},{0x417CCC30L,6UL},{0x417CCC30L,6UL},{0x417CCC30L,6UL}}, // p_2262->g_1417
        (-1L), // p_2262->g_1425
        4L, // p_2262->g_1426
        (void*)0, // p_2262->g_1437
        {{{(void*)0,&p_2262->g_1437,&p_2262->g_1437},{(void*)0,&p_2262->g_1437,&p_2262->g_1437},{(void*)0,&p_2262->g_1437,&p_2262->g_1437},{(void*)0,&p_2262->g_1437,&p_2262->g_1437},{(void*)0,&p_2262->g_1437,&p_2262->g_1437}},{{(void*)0,&p_2262->g_1437,&p_2262->g_1437},{(void*)0,&p_2262->g_1437,&p_2262->g_1437},{(void*)0,&p_2262->g_1437,&p_2262->g_1437},{(void*)0,&p_2262->g_1437,&p_2262->g_1437},{(void*)0,&p_2262->g_1437,&p_2262->g_1437}},{{(void*)0,&p_2262->g_1437,&p_2262->g_1437},{(void*)0,&p_2262->g_1437,&p_2262->g_1437},{(void*)0,&p_2262->g_1437,&p_2262->g_1437},{(void*)0,&p_2262->g_1437,&p_2262->g_1437},{(void*)0,&p_2262->g_1437,&p_2262->g_1437}}}, // p_2262->g_1436
        {{&p_2262->g_1436[0][4][0],(void*)0,&p_2262->g_1436[1][3][0],(void*)0,(void*)0,(void*)0,&p_2262->g_1436[1][3][0],(void*)0},{&p_2262->g_1436[0][4][0],(void*)0,&p_2262->g_1436[1][3][0],(void*)0,(void*)0,(void*)0,&p_2262->g_1436[1][3][0],(void*)0},{&p_2262->g_1436[0][4][0],(void*)0,&p_2262->g_1436[1][3][0],(void*)0,(void*)0,(void*)0,&p_2262->g_1436[1][3][0],(void*)0},{&p_2262->g_1436[0][4][0],(void*)0,&p_2262->g_1436[1][3][0],(void*)0,(void*)0,(void*)0,&p_2262->g_1436[1][3][0],(void*)0},{&p_2262->g_1436[0][4][0],(void*)0,&p_2262->g_1436[1][3][0],(void*)0,(void*)0,(void*)0,&p_2262->g_1436[1][3][0],(void*)0},{&p_2262->g_1436[0][4][0],(void*)0,&p_2262->g_1436[1][3][0],(void*)0,(void*)0,(void*)0,&p_2262->g_1436[1][3][0],(void*)0}}, // p_2262->g_1435
        &p_2262->g_151[3], // p_2262->g_1440
        {(void*)0,&p_2262->g_1440,(void*)0,(void*)0,&p_2262->g_1440,(void*)0,(void*)0,&p_2262->g_1440}, // p_2262->g_1439
        &p_2262->g_1425, // p_2262->g_1475
        {&p_2262->g_1475,(void*)0,&p_2262->g_1475,&p_2262->g_1475,(void*)0,&p_2262->g_1475}, // p_2262->g_1474
        &p_2262->g_1474[4], // p_2262->g_1473
        0x63L, // p_2262->g_1540
        &p_2262->g_151[0], // p_2262->g_1544
        &p_2262->g_356, // p_2262->g_1657
        {{{0x24L,0x14L,(-1L)},{0x24L,0x14L,(-1L)},{0x24L,0x14L,(-1L)},{0x24L,0x14L,(-1L)},{0x24L,0x14L,(-1L)},{0x24L,0x14L,(-1L)}},{{0x24L,0x14L,(-1L)},{0x24L,0x14L,(-1L)},{0x24L,0x14L,(-1L)},{0x24L,0x14L,(-1L)},{0x24L,0x14L,(-1L)},{0x24L,0x14L,(-1L)}}}, // p_2262->g_1720
        0x48E9C7A1L, // p_2262->g_1871
        {{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}}}, // p_2262->g_1967
        (void*)0, // p_2262->g_2050
        {&p_2262->g_2050,&p_2262->g_2050,&p_2262->g_2050,&p_2262->g_2050,&p_2262->g_2050}, // p_2262->g_2049
        &p_2262->g_579, // p_2262->g_2052
        &p_2262->g_2052, // p_2262->g_2051
        1UL, // p_2262->g_2133
        {{0x3183L,(-6L),(-6L)},{0x3183L,(-6L),(-6L)},{0x3183L,(-6L),(-6L)},{0x3183L,(-6L),(-6L)},{0x3183L,(-6L),(-6L)},{0x3183L,(-6L),(-6L)},{0x3183L,(-6L),(-6L)},{0x3183L,(-6L),(-6L)}}, // p_2262->g_2136
        (void*)0, // p_2262->g_2145
        &p_2262->g_2145, // p_2262->g_2144
        &p_2262->g_2144, // p_2262->g_2143
        1L, // p_2262->g_2163
        {&p_2262->g_380,&p_2262->g_380,(void*)0,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,&p_2262->g_380,(void*)0,&p_2262->g_380,&p_2262->g_380}, // p_2262->g_2191
        &p_2262->g_2191[9], // p_2262->g_2190
        {&p_2262->g_151[0],&p_2262->g_151[0],&p_2262->g_151[0],&p_2262->g_151[0],&p_2262->g_151[0],&p_2262->g_151[0],&p_2262->g_151[0]}, // p_2262->g_2213
        &p_2262->g_151[1], // p_2262->g_2214
        &p_2262->g_6, // p_2262->g_2215
        {0xADL,0x04L,0xADL,0xADL,0x04L,0xADL,0xADL}, // p_2262->g_2229
        sequence_input[get_global_id(0)], // p_2262->global_0_offset
        sequence_input[get_global_id(1)], // p_2262->global_1_offset
        sequence_input[get_global_id(2)], // p_2262->global_2_offset
        sequence_input[get_local_id(0)], // p_2262->local_0_offset
        sequence_input[get_local_id(1)], // p_2262->local_1_offset
        sequence_input[get_local_id(2)], // p_2262->local_2_offset
        sequence_input[get_group_id(0)], // p_2262->group_0_offset
        sequence_input[get_group_id(1)], // p_2262->group_1_offset
        sequence_input[get_group_id(2)], // p_2262->group_2_offset
    };
    c_2263 = c_2264;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_2262);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_2262->g_2, "p_2262->g_2", print_hash_value);
    transparent_crc(p_2262->g_5, "p_2262->g_5", print_hash_value);
    transparent_crc(p_2262->g_6, "p_2262->g_6", print_hash_value);
    transparent_crc(p_2262->g_7, "p_2262->g_7", print_hash_value);
    transparent_crc(p_2262->g_12, "p_2262->g_12", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_2262->g_19[i], "p_2262->g_19[i]", print_hash_value);

    }
    transparent_crc(p_2262->g_27, "p_2262->g_27", print_hash_value);
    transparent_crc(p_2262->g_52, "p_2262->g_52", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_2262->g_79[i], "p_2262->g_79[i]", print_hash_value);

    }
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_2262->g_138[i], "p_2262->g_138[i]", print_hash_value);

    }
    transparent_crc(p_2262->g_141, "p_2262->g_141", print_hash_value);
    transparent_crc(p_2262->g_177, "p_2262->g_177", print_hash_value);
    transparent_crc(p_2262->g_214, "p_2262->g_214", print_hash_value);
    transparent_crc(p_2262->g_236, "p_2262->g_236", print_hash_value);
    transparent_crc(p_2262->g_308, "p_2262->g_308", print_hash_value);
    transparent_crc(p_2262->g_343, "p_2262->g_343", print_hash_value);
    transparent_crc(p_2262->g_356, "p_2262->g_356", print_hash_value);
    transparent_crc(p_2262->g_437, "p_2262->g_437", print_hash_value);
    transparent_crc(p_2262->g_469, "p_2262->g_469", print_hash_value);
    transparent_crc(p_2262->g_485, "p_2262->g_485", print_hash_value);
    transparent_crc(p_2262->g_567, "p_2262->g_567", print_hash_value);
    transparent_crc(p_2262->g_579, "p_2262->g_579", print_hash_value);
    transparent_crc(p_2262->g_640, "p_2262->g_640", print_hash_value);
    transparent_crc(p_2262->g_650, "p_2262->g_650", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_2262->g_654[i][j], "p_2262->g_654[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_2262->g_672[i][j], "p_2262->g_672[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2262->g_684, "p_2262->g_684", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 5; j++)
        {
            transparent_crc(p_2262->g_687[i][j], "p_2262->g_687[i][j]", print_hash_value);

        }
    }
    for (i = 0; i < 10; i++)
    {
        for (j = 0; j < 7; j++)
        {
            for (k = 0; k < 1; k++)
            {
                transparent_crc(p_2262->g_776[i][j][k], "p_2262->g_776[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2262->g_844, "p_2262->g_844", print_hash_value);
    transparent_crc(p_2262->g_846, "p_2262->g_846", print_hash_value);
    transparent_crc(p_2262->g_899, "p_2262->g_899", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_2262->g_1039[i], "p_2262->g_1039[i]", print_hash_value);

    }
    transparent_crc(p_2262->g_1101, "p_2262->g_1101", print_hash_value);
    transparent_crc(p_2262->g_1108, "p_2262->g_1108", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_2262->g_1132[i][j], "p_2262->g_1132[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2262->g_1133, "p_2262->g_1133", print_hash_value);
    transparent_crc(p_2262->g_1134, "p_2262->g_1134", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_2262->g_1135[i], "p_2262->g_1135[i]", print_hash_value);

    }
    transparent_crc(p_2262->g_1136, "p_2262->g_1136", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 6; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_2262->g_1137[i][j][k], "p_2262->g_1137[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2262->g_1138, "p_2262->g_1138", print_hash_value);
    transparent_crc(p_2262->g_1139, "p_2262->g_1139", print_hash_value);
    transparent_crc(p_2262->g_1140, "p_2262->g_1140", print_hash_value);
    transparent_crc(p_2262->g_1141, "p_2262->g_1141", print_hash_value);
    transparent_crc(p_2262->g_1142, "p_2262->g_1142", print_hash_value);
    transparent_crc(p_2262->g_1143, "p_2262->g_1143", print_hash_value);
    transparent_crc(p_2262->g_1144, "p_2262->g_1144", print_hash_value);
    transparent_crc(p_2262->g_1145, "p_2262->g_1145", print_hash_value);
    transparent_crc(p_2262->g_1146, "p_2262->g_1146", print_hash_value);
    transparent_crc(p_2262->g_1147, "p_2262->g_1147", print_hash_value);
    transparent_crc(p_2262->g_1148, "p_2262->g_1148", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 2; j++)
        {
            for (k = 0; k < 6; k++)
            {
                transparent_crc(p_2262->g_1149[i][j][k], "p_2262->g_1149[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2262->g_1150, "p_2262->g_1150", print_hash_value);
    transparent_crc(p_2262->g_1151, "p_2262->g_1151", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_2262->g_1152[i], "p_2262->g_1152[i]", print_hash_value);

    }
    transparent_crc(p_2262->g_1153, "p_2262->g_1153", print_hash_value);
    transparent_crc(p_2262->g_1154, "p_2262->g_1154", print_hash_value);
    transparent_crc(p_2262->g_1155, "p_2262->g_1155", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_2262->g_1156[i], "p_2262->g_1156[i]", print_hash_value);

    }
    transparent_crc(p_2262->g_1157, "p_2262->g_1157", print_hash_value);
    transparent_crc(p_2262->g_1158, "p_2262->g_1158", print_hash_value);
    transparent_crc(p_2262->g_1159, "p_2262->g_1159", print_hash_value);
    transparent_crc(p_2262->g_1160, "p_2262->g_1160", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_2262->g_1161[i][j], "p_2262->g_1161[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2262->g_1162, "p_2262->g_1162", print_hash_value);
    transparent_crc(p_2262->g_1163, "p_2262->g_1163", print_hash_value);
    transparent_crc(p_2262->g_1164, "p_2262->g_1164", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 1; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_2262->g_1190[i][j][k], "p_2262->g_1190[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2262->g_1276, "p_2262->g_1276", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_2262->g_1332[i], "p_2262->g_1332[i]", print_hash_value);

    }
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 2; j++)
        {
            transparent_crc(p_2262->g_1417[i][j], "p_2262->g_1417[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2262->g_1425, "p_2262->g_1425", print_hash_value);
    transparent_crc(p_2262->g_1426, "p_2262->g_1426", print_hash_value);
    transparent_crc(p_2262->g_1540, "p_2262->g_1540", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 6; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_2262->g_1720[i][j][k], "p_2262->g_1720[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_2262->g_1871, "p_2262->g_1871", print_hash_value);
    transparent_crc(p_2262->g_2133, "p_2262->g_2133", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 3; j++)
        {
            transparent_crc(p_2262->g_2136[i][j], "p_2262->g_2136[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_2262->g_2163, "p_2262->g_2163", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_2262->g_2229[i], "p_2262->g_2229[i]", print_hash_value);

    }
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
