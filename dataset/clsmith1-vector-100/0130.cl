// ---fake_divergence -g 96,90,1 -l 8,10,1
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


// Seed: 130

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    volatile uint32_t g_2;
    int32_t g_4;
    volatile int32_t g_7;
    int32_t g_8;
    VECTOR(uint64_t, 4) g_21;
    VECTOR(uint64_t, 4) g_35;
    uint16_t g_37;
    VECTOR(int32_t, 2) g_38;
    uint16_t g_60;
    uint16_t *g_59;
    uint64_t g_111;
    int64_t g_119;
    uint8_t g_120;
    int8_t g_123[3];
    int32_t g_156[8];
    int32_t *g_159;
    VECTOR(uint32_t, 8) g_160;
    VECTOR(uint8_t, 8) g_172;
    VECTOR(int8_t, 16) g_215;
    uint32_t g_219;
    uint8_t g_220;
    VECTOR(uint32_t, 8) g_237;
    VECTOR(uint32_t, 16) g_241;
    VECTOR(uint64_t, 4) g_259;
    VECTOR(uint32_t, 4) g_275;
    uint64_t *g_279;
    VECTOR(uint8_t, 16) g_319;
    VECTOR(uint8_t, 4) g_322;
    VECTOR(uint8_t, 16) g_324;
    int16_t g_325;
    uint16_t g_347;
    int32_t *g_357;
    int32_t *g_358;
    VECTOR(int8_t, 2) g_364;
    VECTOR(int16_t, 2) g_369;
    volatile int32_t *g_396;
    volatile int32_t **g_395;
    volatile int32_t ***g_394;
    int32_t g_399[7];
    uint32_t g_405;
    uint64_t g_446;
    VECTOR(int16_t, 4) g_497;
    VECTOR(uint16_t, 16) g_498;
    VECTOR(uint8_t, 16) g_507;
    VECTOR(int32_t, 4) g_516;
    int8_t *g_525;
    int8_t **g_524[4];
    VECTOR(uint64_t, 8) g_528;
    VECTOR(uint64_t, 4) g_529;
    VECTOR(int16_t, 4) g_532;
    VECTOR(int32_t, 16) g_550;
    uint32_t g_569[1];
    VECTOR(uint16_t, 4) g_578;
    VECTOR(uint64_t, 4) g_581;
    VECTOR(int64_t, 2) g_583;
    VECTOR(uint64_t, 4) g_616;
    VECTOR(int8_t, 4) g_618;
    VECTOR(uint16_t, 8) g_646;
    uint8_t g_677;
    int16_t g_748;
    uint32_t g_774;
    VECTOR(int64_t, 16) g_782;
    int32_t g_789;
    volatile VECTOR(uint16_t, 2) g_801;
    VECTOR(uint8_t, 2) g_802;
    volatile uint64_t g_821;
    VECTOR(uint16_t, 8) g_848;
    uint32_t *g_867;
    uint32_t ** volatile g_866;
    volatile int8_t * volatile ** volatile *g_891;
    int64_t * volatile g_903;
    int64_t * volatile * volatile g_902[1];
    uint64_t *g_924[9][8];
    uint64_t ** volatile g_923[5];
    volatile VECTOR(int16_t, 16) g_929;
    VECTOR(int8_t, 4) g_934;
    VECTOR(uint32_t, 2) g_948;
    volatile VECTOR(uint16_t, 8) g_954;
    VECTOR(uint32_t, 16) g_978;
    volatile VECTOR(int8_t, 16) g_979;
    uint64_t g_987;
    volatile VECTOR(int32_t, 4) g_991;
    VECTOR(int64_t, 8) g_1002;
    VECTOR(int64_t, 4) g_1003;
    volatile VECTOR(uint64_t, 2) g_1029;
    volatile VECTOR(int32_t, 8) g_1048;
    int64_t g_1078;
    int32_t * volatile g_1087;
    int16_t *g_1095;
    int16_t **g_1094;
    volatile VECTOR(int16_t, 4) g_1096;
    volatile VECTOR(int32_t, 2) g_1107;
    VECTOR(uint64_t, 8) g_1115;
    VECTOR(int32_t, 4) g_1118;
    VECTOR(int32_t, 16) g_1120;
    VECTOR(int64_t, 4) g_1141;
    VECTOR(int64_t, 4) g_1158;
    int32_t ** volatile g_1161;
    uint16_t *g_1164;
    volatile uint64_t * volatile **g_1199;
    uint64_t **g_1205;
    uint64_t ***g_1204;
    VECTOR(int32_t, 4) g_1220;
    volatile VECTOR(int16_t, 16) g_1228;
    VECTOR(uint16_t, 16) g_1242;
    VECTOR(int64_t, 16) g_1268;
    VECTOR(uint8_t, 16) g_1276;
    VECTOR(uint8_t, 2) g_1292;
    VECTOR(uint32_t, 16) g_1298;
    int32_t g_1313;
    int32_t g_1316[9][5][5];
    VECTOR(uint8_t, 2) g_1326;
    int32_t ** volatile g_1396;
    int32_t g_1407[8][8];
    VECTOR(uint32_t, 8) g_1431;
    VECTOR(int64_t, 4) g_1438;
    int32_t ** volatile g_1446;
    VECTOR(int16_t, 16) g_1458;
    volatile VECTOR(uint32_t, 8) g_1463;
    VECTOR(uint16_t, 16) g_1484;
    volatile VECTOR(int16_t, 8) g_1555;
    volatile VECTOR(int8_t, 2) g_1600;
    volatile VECTOR(int8_t, 8) g_1601;
    volatile int64_t g_1606;
    int32_t ** volatile g_1640;
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
int32_t  func_1(struct S0 * p_1671);
uint16_t  func_15(uint32_t  p_16, int32_t * p_17, int32_t * p_18, struct S0 * p_1671);
uint32_t  func_24(int32_t  p_25, int32_t  p_26, int32_t * p_27, int32_t * p_28, struct S0 * p_1671);
int32_t  func_39(uint16_t * p_40, int32_t  p_41, struct S0 * p_1671);
uint16_t * func_42(int32_t  p_43, uint32_t  p_44, int64_t  p_45, uint16_t * p_46, int32_t * p_47, struct S0 * p_1671);
uint16_t * func_52(int32_t * p_53, int32_t  p_54, int8_t  p_55, struct S0 * p_1671);
int32_t * func_56(uint16_t * p_57, uint32_t  p_58, struct S0 * p_1671);
uint8_t  func_61(int32_t  p_62, int32_t * p_63, struct S0 * p_1671);
int32_t  func_64(uint32_t  p_65, uint16_t * p_66, struct S0 * p_1671);
int32_t * func_85(int8_t  p_86, uint16_t * p_87, uint32_t  p_88, struct S0 * p_1671);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1671->g_2 p_1671->g_4 p_1671->g_8 p_1671->g_929 p_1671->g_934 p_1671->g_358 p_1671->g_156 p_1671->g_59 p_1671->g_60 p_1671->g_550 p_1671->g_525 p_1671->g_123 p_1671->g_172 p_1671->g_948 p_1671->g_774 p_1671->g_569 p_1671->g_954 p_1671->g_357 p_1671->g_369 p_1671->g_789 p_1671->g_618 p_1671->g_394 p_1671->g_395 p_1671->g_396 p_1671->g_891 p_1671->g_528 p_1671->g_646 p_1671->g_322 p_1671->g_529 p_1671->g_160 p_1671->g_1029 p_1671->g_325 p_1671->g_405 p_1671->g_1048 p_1671->g_581 p_1671->g_782 p_1671->g_802 p_1671->g_1087 p_1671->g_507 p_1671->g_364 p_1671->g_1094 p_1671->g_1096 p_1671->g_1095 p_1671->g_748 p_1671->g_616 p_1671->g_219 p_1671->g_399 p_1671->g_991 p_1671->g_1199 p_1671->g_1204 p_1671->g_978 p_1671->g_677 p_1671->g_1161 p_1671->g_1220 p_1671->g_1396 p_1671->g_578 p_1671->g_1407 p_1671->g_237 p_1671->g_119 p_1671->g_1458 p_1671->g_1463 p_1671->g_1205 p_1671->g_279 p_1671->g_111 p_1671->g_1484 p_1671->g_1316 p_1671->g_1078 p_1671->g_1446 p_1671->g_1431 p_1671->g_1242 p_1671->g_241 p_1671->g_324 p_1671->g_1555 p_1671->g_1326 p_1671->g_532 p_1671->g_38 p_1671->g_1600 p_1671->g_1601 p_1671->g_1606 p_1671->g_516 p_1671->g_1640
 * writes: p_1671->g_4 p_1671->g_8 p_1671->g_156 p_1671->g_325 p_1671->g_774 p_1671->g_789 p_1671->g_60 p_1671->g_405 p_1671->g_123 p_1671->g_120 p_1671->g_396 p_1671->g_219 p_1671->g_38 p_1671->g_1078 p_1671->g_399 p_1671->g_237 p_1671->g_1094 p_1671->g_324 p_1671->g_748 p_1671->g_1204 p_1671->g_358 p_1671->g_119 p_1671->g_1431 p_1671->g_241 p_1671->g_1095 p_1671->g_524 p_1671->g_1407 p_1671->g_357
 */
int32_t  func_1(struct S0 * p_1671)
{ /* block id: 4 */
    int32_t *l_3 = &p_1671->g_4;
    uint8_t *l_797[2];
    VECTOR(uint16_t, 4) l_803 = (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0xE2BBL), 0xE2BBL);
    uint8_t l_819 = 0x40L;
    VECTOR(uint16_t, 16) l_849 = (VECTOR(uint16_t, 16))(6UL, (VECTOR(uint16_t, 4))(6UL, (VECTOR(uint16_t, 2))(6UL, 65534UL), 65534UL), 65534UL, 6UL, 65534UL, (VECTOR(uint16_t, 2))(6UL, 65534UL), (VECTOR(uint16_t, 2))(6UL, 65534UL), 6UL, 65534UL, 6UL, 65534UL);
    uint32_t l_853 = 0x55FE3DBBL;
    int32_t l_877 = 2L;
    int64_t l_911 = 0x6038EAF1A2D0D442L;
    int32_t l_912 = (-1L);
    uint16_t *l_927 = (void*)0;
    int64_t *l_938[7][9][4];
    int64_t **l_937[9][4] = {{(void*)0,&l_938[3][4][0],(void*)0,(void*)0},{(void*)0,&l_938[3][4][0],(void*)0,(void*)0},{(void*)0,&l_938[3][4][0],(void*)0,(void*)0},{(void*)0,&l_938[3][4][0],(void*)0,(void*)0},{(void*)0,&l_938[3][4][0],(void*)0,(void*)0},{(void*)0,&l_938[3][4][0],(void*)0,(void*)0},{(void*)0,&l_938[3][4][0],(void*)0,(void*)0},{(void*)0,&l_938[3][4][0],(void*)0,(void*)0},{(void*)0,&l_938[3][4][0],(void*)0,(void*)0}};
    int16_t *l_939 = &p_1671->g_325;
    VECTOR(uint32_t, 8) l_977 = (VECTOR(uint32_t, 8))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 0xF5DF3C0FL), 0xF5DF3C0FL), 0xF5DF3C0FL, 4294967295UL, 0xF5DF3C0FL);
    uint32_t l_1038 = 8UL;
    VECTOR(uint32_t, 2) l_1067 = (VECTOR(uint32_t, 2))(0x42D7A95FL, 0UL);
    uint16_t *l_1073 = (void*)0;
    uint32_t **l_1081 = &p_1671->g_867;
    VECTOR(uint64_t, 8) l_1088 = (VECTOR(uint64_t, 8))(0xA5C90277AF9CCA9DL, (VECTOR(uint64_t, 4))(0xA5C90277AF9CCA9DL, (VECTOR(uint64_t, 2))(0xA5C90277AF9CCA9DL, 8UL), 8UL), 8UL, 0xA5C90277AF9CCA9DL, 8UL);
    uint32_t l_1097 = 4294967295UL;
    VECTOR(int32_t, 8) l_1108 = (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x1A85DECBL), 0x1A85DECBL), 0x1A85DECBL, (-1L), 0x1A85DECBL);
    uint32_t l_1185 = 0xA67560C6L;
    int32_t l_1198 = 0x227EB752L;
    int64_t l_1223 = 0x226F3BE52BB40DD0L;
    int32_t l_1230 = 0x09FE9CE0L;
    uint8_t l_1261 = 0x27L;
    VECTOR(int64_t, 2) l_1277 = (VECTOR(int64_t, 2))(0x5A2F8C482AD02FE0L, 0x75F6B019566A583DL);
    uint32_t l_1317[8] = {1UL,0x2C081986L,1UL,1UL,0x2C081986L,1UL,1UL,0x2C081986L};
    uint16_t l_1331 = 0UL;
    VECTOR(uint64_t, 2) l_1371 = (VECTOR(uint64_t, 2))(0x62DEF859FF5F3A6AL, 5UL);
    int64_t l_1372 = (-5L);
    uint64_t **l_1378 = &p_1671->g_924[8][2];
    uint64_t ***l_1377 = &l_1378;
    int32_t l_1393 = 0x7AE57BDEL;
    uint64_t l_1404 = 1UL;
    VECTOR(uint64_t, 8) l_1437 = (VECTOR(uint64_t, 8))(18446744073709551614UL, (VECTOR(uint64_t, 4))(18446744073709551614UL, (VECTOR(uint64_t, 2))(18446744073709551614UL, 8UL), 8UL), 8UL, 18446744073709551614UL, 8UL);
    uint32_t l_1527 = 5UL;
    int8_t l_1541 = (-9L);
    VECTOR(uint16_t, 4) l_1575 = (VECTOR(uint16_t, 4))(3UL, (VECTOR(uint16_t, 2))(3UL, 65532UL), 65532UL);
    uint64_t l_1586 = 0x1CF17D6B964EC27CL;
    uint64_t l_1668 = 0xB6ECB9D516E902EAL;
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_797[i] = (void*)0;
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 4; k++)
                l_938[i][j][k] = (void*)0;
        }
    }
lbl_1455:
    (*l_3) &= p_1671->g_2;
    for (p_1671->g_4 = 0; (p_1671->g_4 == (-14)); p_1671->g_4 = safe_sub_func_int32_t_s_s(p_1671->g_4, 1))
    { /* block id: 8 */
        uint32_t l_51[7][8][1] = {{{4294967295UL},{4294967295UL},{4294967295UL},{4294967295UL},{4294967295UL},{4294967295UL},{4294967295UL},{4294967295UL}},{{4294967295UL},{4294967295UL},{4294967295UL},{4294967295UL},{4294967295UL},{4294967295UL},{4294967295UL},{4294967295UL}},{{4294967295UL},{4294967295UL},{4294967295UL},{4294967295UL},{4294967295UL},{4294967295UL},{4294967295UL},{4294967295UL}},{{4294967295UL},{4294967295UL},{4294967295UL},{4294967295UL},{4294967295UL},{4294967295UL},{4294967295UL},{4294967295UL}},{{4294967295UL},{4294967295UL},{4294967295UL},{4294967295UL},{4294967295UL},{4294967295UL},{4294967295UL},{4294967295UL}},{{4294967295UL},{4294967295UL},{4294967295UL},{4294967295UL},{4294967295UL},{4294967295UL},{4294967295UL},{4294967295UL}},{{4294967295UL},{4294967295UL},{4294967295UL},{4294967295UL},{4294967295UL},{4294967295UL},{4294967295UL},{4294967295UL}}};
        uint16_t l_630 = 6UL;
        int32_t l_787 = (-1L);
        VECTOR(uint8_t, 2) l_794 = (VECTOR(uint8_t, 2))(0x9BL, 0xCBL);
        VECTOR(uint16_t, 16) l_800 = (VECTOR(uint16_t, 16))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 1UL), 1UL), 1UL, 1UL, 1UL, (VECTOR(uint16_t, 2))(1UL, 1UL), (VECTOR(uint16_t, 2))(1UL, 1UL), 1UL, 1UL, 1UL, 1UL);
        uint64_t *l_815 = (void*)0;
        int32_t l_820 = (-1L);
        VECTOR(uint16_t, 2) l_850 = (VECTOR(uint16_t, 2))(1UL, 65535UL);
        int64_t l_859 = 5L;
        int32_t l_878 = (-6L);
        int32_t l_880 = 2L;
        int i, j, k;
        for (p_1671->g_8 = (-20); (p_1671->g_8 < 21); ++p_1671->g_8)
        { /* block id: 11 */
            uint16_t *l_36[8];
            int32_t *l_48 = (void*)0;
            int32_t *l_49[5][6][1] = {{{&p_1671->g_8},{&p_1671->g_8},{&p_1671->g_8},{&p_1671->g_8},{&p_1671->g_8},{&p_1671->g_8}},{{&p_1671->g_8},{&p_1671->g_8},{&p_1671->g_8},{&p_1671->g_8},{&p_1671->g_8},{&p_1671->g_8}},{{&p_1671->g_8},{&p_1671->g_8},{&p_1671->g_8},{&p_1671->g_8},{&p_1671->g_8},{&p_1671->g_8}},{{&p_1671->g_8},{&p_1671->g_8},{&p_1671->g_8},{&p_1671->g_8},{&p_1671->g_8},{&p_1671->g_8}},{{&p_1671->g_8},{&p_1671->g_8},{&p_1671->g_8},{&p_1671->g_8},{&p_1671->g_8},{&p_1671->g_8}}};
            int32_t l_50 = 0x21E52503L;
            int32_t **l_294 = (void*)0;
            int32_t **l_295 = &p_1671->g_159;
            int16_t *l_788 = &p_1671->g_748;
            VECTOR(uint32_t, 16) l_831 = (VECTOR(uint32_t, 16))(0xF50A6BEDL, (VECTOR(uint32_t, 4))(0xF50A6BEDL, (VECTOR(uint32_t, 2))(0xF50A6BEDL, 0x0FE0C51DL), 0x0FE0C51DL), 0x0FE0C51DL, 0xF50A6BEDL, 0x0FE0C51DL, (VECTOR(uint32_t, 2))(0xF50A6BEDL, 0x0FE0C51DL), (VECTOR(uint32_t, 2))(0xF50A6BEDL, 0x0FE0C51DL), 0xF50A6BEDL, 0x0FE0C51DL, 0xF50A6BEDL, 0x0FE0C51DL);
            uint8_t l_854 = 0xA1L;
            int64_t *l_876 = &l_859;
            int32_t *l_906 = &p_1671->g_156[5];
            int i, j, k;
            for (i = 0; i < 8; i++)
                l_36[i] = &p_1671->g_37;
            p_1671->g_156[7] = ((VECTOR(int32_t, 8))((p_1671->g_789 |= (((*l_788) |= (safe_lshift_func_uint16_t_u_s((safe_mul_func_uint16_t_u_u(((l_787 ^= func_15(((p_1671->g_2 ^ ((safe_mul_func_int8_t_s_s((((VECTOR(uint64_t, 8))(p_1671->g_21.zwyxzwyz)).s2 , (safe_mod_func_uint32_t_u_u(func_24((((VECTOR(int16_t, 2))(1L, 0x4465L)).lo ^ (safe_div_func_uint32_t_u_u((p_1671->g_8 , (safe_mod_func_int32_t_s_s((safe_mod_func_uint32_t_u_u(((p_1671->g_37 = p_1671->g_35.y) , p_1671->g_21.x), ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(min(((VECTOR(int32_t, 16))(p_1671->g_38.yyxxxyyxyxyyxyxy)).sa0, (int32_t)func_39(func_42((l_50 &= 0L), l_51[6][3][0], l_51[6][3][0], func_52(((*l_295) = func_56(p_1671->g_59, (func_61(func_64((*l_3), &p_1671->g_60, p_1671), &p_1671->g_8, p_1671) >= 1L), p_1671)), p_1671->g_35.y, p_1671->g_237.s3, p_1671), l_3, p_1671), l_630, p_1671)))).yxyyyyxx)).even)).x)), p_1671->g_21.w))), p_1671->g_241.s3))), p_1671->g_516.w, &p_1671->g_4, &p_1671->g_399[1], p_1671), p_1671->g_774))), l_51[6][3][0])) > l_51[6][3][0])) == (*l_3)), &p_1671->g_4, &p_1671->g_8, p_1671)) <= l_51[6][3][0]), (*l_3))), l_51[6][3][0]))) & (*l_3))), 6L, ((VECTOR(int32_t, 2))(2L)), 0x4E18C8F3L, ((VECTOR(int32_t, 2))(1L)), (-7L))).s6;
        }
    }
    if (((*p_1671->g_358) = (((VECTOR(int16_t, 4))(p_1671->g_929.s5bfa)).x & ((safe_mul_func_int8_t_s_s(((((*l_3) == (safe_rshift_func_int8_t_s_s(((VECTOR(int8_t, 8))(p_1671->g_934.zxyyzzww)).s4, 7))) || (*l_3)) , ((*p_1671->g_358) ^ ((*l_3) = (safe_rshift_func_int16_t_s_s(((((*l_939) = (l_937[0][1] == &l_938[0][2][0])) != ((0x4043L < (((safe_sub_func_uint32_t_u_u(((VECTOR(uint32_t, 4))((((*l_3) <= (safe_mul_func_int16_t_s_s((safe_lshift_func_int16_t_s_s((*l_3), 3)), (*p_1671->g_59)))) == (*l_3)), 1UL, 0x03E681C5L, 0x376427B2L)).w, 4294967295UL)) >= 0UL) & 0x0602L)) != 0x02DB5367L)) != p_1671->g_550.s5), 13))))), (*p_1671->g_525))) | l_849.s0))))
    { /* block id: 385 */
        uint32_t *l_951 = &p_1671->g_774;
        int32_t l_955 = 0x28FACE59L;
        int16_t *l_956 = &p_1671->g_325;
        int16_t **l_957 = &l_939;
        uint64_t **l_960 = &p_1671->g_279;
        int32_t *l_1015 = (void*)0;
        int32_t *l_1017 = (void*)0;
        int32_t l_1039 = (-3L);
        VECTOR(int8_t, 2) l_1051 = (VECTOR(int8_t, 2))(1L, 7L);
        int8_t *l_1059 = &p_1671->g_123[1];
        int8_t *l_1060[3];
        int32_t l_1083 = 0L;
        int16_t l_1085 = 3L;
        int8_t l_1098 = 0x76L;
        int32_t l_1184 = 0x5DD9B01BL;
        int32_t l_1188 = 0x62A80734L;
        VECTOR(uint16_t, 4) l_1252 = (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 0x8278L), 0x8278L);
        uint32_t **l_1287 = &p_1671->g_867;
        uint64_t l_1310[7][6][6] = {{{0xC48DD930F22276E9L,1UL,18446744073709551615UL,0x9C2EBE5C393E1D58L,18446744073709551615UL,1UL},{0xC48DD930F22276E9L,1UL,18446744073709551615UL,0x9C2EBE5C393E1D58L,18446744073709551615UL,1UL},{0xC48DD930F22276E9L,1UL,18446744073709551615UL,0x9C2EBE5C393E1D58L,18446744073709551615UL,1UL},{0xC48DD930F22276E9L,1UL,18446744073709551615UL,0x9C2EBE5C393E1D58L,18446744073709551615UL,1UL},{0xC48DD930F22276E9L,1UL,18446744073709551615UL,0x9C2EBE5C393E1D58L,18446744073709551615UL,1UL},{0xC48DD930F22276E9L,1UL,18446744073709551615UL,0x9C2EBE5C393E1D58L,18446744073709551615UL,1UL}},{{0xC48DD930F22276E9L,1UL,18446744073709551615UL,0x9C2EBE5C393E1D58L,18446744073709551615UL,1UL},{0xC48DD930F22276E9L,1UL,18446744073709551615UL,0x9C2EBE5C393E1D58L,18446744073709551615UL,1UL},{0xC48DD930F22276E9L,1UL,18446744073709551615UL,0x9C2EBE5C393E1D58L,18446744073709551615UL,1UL},{0xC48DD930F22276E9L,1UL,18446744073709551615UL,0x9C2EBE5C393E1D58L,18446744073709551615UL,1UL},{0xC48DD930F22276E9L,1UL,18446744073709551615UL,0x9C2EBE5C393E1D58L,18446744073709551615UL,1UL},{0xC48DD930F22276E9L,1UL,18446744073709551615UL,0x9C2EBE5C393E1D58L,18446744073709551615UL,1UL}},{{0xC48DD930F22276E9L,1UL,18446744073709551615UL,0x9C2EBE5C393E1D58L,18446744073709551615UL,1UL},{0xC48DD930F22276E9L,1UL,18446744073709551615UL,0x9C2EBE5C393E1D58L,18446744073709551615UL,1UL},{0xC48DD930F22276E9L,1UL,18446744073709551615UL,0x9C2EBE5C393E1D58L,18446744073709551615UL,1UL},{0xC48DD930F22276E9L,1UL,18446744073709551615UL,0x9C2EBE5C393E1D58L,18446744073709551615UL,1UL},{0xC48DD930F22276E9L,1UL,18446744073709551615UL,0x9C2EBE5C393E1D58L,18446744073709551615UL,1UL},{0xC48DD930F22276E9L,1UL,18446744073709551615UL,0x9C2EBE5C393E1D58L,18446744073709551615UL,1UL}},{{0xC48DD930F22276E9L,1UL,18446744073709551615UL,0x9C2EBE5C393E1D58L,18446744073709551615UL,1UL},{0xC48DD930F22276E9L,1UL,18446744073709551615UL,0x9C2EBE5C393E1D58L,18446744073709551615UL,1UL},{0xC48DD930F22276E9L,1UL,18446744073709551615UL,0x9C2EBE5C393E1D58L,18446744073709551615UL,1UL},{0xC48DD930F22276E9L,1UL,18446744073709551615UL,0x9C2EBE5C393E1D58L,18446744073709551615UL,1UL},{0xC48DD930F22276E9L,1UL,18446744073709551615UL,0x9C2EBE5C393E1D58L,18446744073709551615UL,1UL},{0xC48DD930F22276E9L,1UL,18446744073709551615UL,0x9C2EBE5C393E1D58L,18446744073709551615UL,1UL}},{{0xC48DD930F22276E9L,1UL,18446744073709551615UL,0x9C2EBE5C393E1D58L,18446744073709551615UL,1UL},{0xC48DD930F22276E9L,1UL,18446744073709551615UL,0x9C2EBE5C393E1D58L,18446744073709551615UL,1UL},{0xC48DD930F22276E9L,1UL,18446744073709551615UL,0x9C2EBE5C393E1D58L,18446744073709551615UL,1UL},{0xC48DD930F22276E9L,1UL,18446744073709551615UL,0x9C2EBE5C393E1D58L,18446744073709551615UL,1UL},{0xC48DD930F22276E9L,1UL,18446744073709551615UL,0x9C2EBE5C393E1D58L,18446744073709551615UL,1UL},{0xC48DD930F22276E9L,1UL,18446744073709551615UL,0x9C2EBE5C393E1D58L,18446744073709551615UL,1UL}},{{0xC48DD930F22276E9L,1UL,18446744073709551615UL,0x9C2EBE5C393E1D58L,18446744073709551615UL,1UL},{0xC48DD930F22276E9L,1UL,18446744073709551615UL,0x9C2EBE5C393E1D58L,18446744073709551615UL,1UL},{0xC48DD930F22276E9L,1UL,18446744073709551615UL,0x9C2EBE5C393E1D58L,18446744073709551615UL,1UL},{0xC48DD930F22276E9L,1UL,18446744073709551615UL,0x9C2EBE5C393E1D58L,18446744073709551615UL,1UL},{0xC48DD930F22276E9L,1UL,18446744073709551615UL,0x9C2EBE5C393E1D58L,18446744073709551615UL,1UL},{0xC48DD930F22276E9L,1UL,18446744073709551615UL,0x9C2EBE5C393E1D58L,18446744073709551615UL,1UL}},{{0xC48DD930F22276E9L,1UL,18446744073709551615UL,0x9C2EBE5C393E1D58L,18446744073709551615UL,1UL},{0xC48DD930F22276E9L,1UL,18446744073709551615UL,0x9C2EBE5C393E1D58L,18446744073709551615UL,1UL},{0xC48DD930F22276E9L,1UL,18446744073709551615UL,0x9C2EBE5C393E1D58L,18446744073709551615UL,1UL},{0xC48DD930F22276E9L,1UL,18446744073709551615UL,0x9C2EBE5C393E1D58L,18446744073709551615UL,1UL},{0xC48DD930F22276E9L,1UL,18446744073709551615UL,0x9C2EBE5C393E1D58L,18446744073709551615UL,1UL},{0xC48DD930F22276E9L,1UL,18446744073709551615UL,0x9C2EBE5C393E1D58L,18446744073709551615UL,1UL}}};
        VECTOR(uint8_t, 2) l_1327 = (VECTOR(uint8_t, 2))(255UL, 0x17L);
        int64_t **l_1328 = &l_938[3][4][0];
        uint32_t l_1334 = 1UL;
        int32_t *l_1374 = &p_1671->g_1313;
        int32_t **l_1373 = &l_1374;
        VECTOR(int64_t, 8) l_1386 = (VECTOR(int64_t, 8))(0x2008FAD0360526B4L, (VECTOR(int64_t, 4))(0x2008FAD0360526B4L, (VECTOR(int64_t, 2))(0x2008FAD0360526B4L, 2L), 2L), 2L, 0x2008FAD0360526B4L, 2L);
        VECTOR(uint64_t, 8) l_1389 = (VECTOR(uint64_t, 8))(18446744073709551615UL, (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 18446744073709551615UL), 18446744073709551615UL), 18446744073709551615UL, 18446744073709551615UL, 18446744073709551615UL);
        uint16_t l_1392 = 0UL;
        int32_t l_1413[9] = {0x1F6DC7CCL,0x40BB600BL,0x1F6DC7CCL,0x1F6DC7CCL,0x40BB600BL,0x1F6DC7CCL,0x1F6DC7CCL,0x40BB600BL,0x1F6DC7CCL};
        uint64_t ****l_1447 = &p_1671->g_1204;
        uint64_t **l_1500 = &p_1671->g_279;
        VECTOR(uint32_t, 2) l_1528 = (VECTOR(uint32_t, 2))(9UL, 1UL);
        uint16_t l_1532 = 1UL;
        int16_t l_1542 = 7L;
        int8_t l_1543 = (-1L);
        VECTOR(int16_t, 8) l_1546 = (VECTOR(int16_t, 8))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 7L), 7L), 7L, 0L, 7L);
        VECTOR(int32_t, 16) l_1570 = (VECTOR(int32_t, 16))(0x521CB1B7L, (VECTOR(int32_t, 4))(0x521CB1B7L, (VECTOR(int32_t, 2))(0x521CB1B7L, 0x219513F5L), 0x219513F5L), 0x219513F5L, 0x521CB1B7L, 0x219513F5L, (VECTOR(int32_t, 2))(0x521CB1B7L, 0x219513F5L), (VECTOR(int32_t, 2))(0x521CB1B7L, 0x219513F5L), 0x521CB1B7L, 0x219513F5L, 0x521CB1B7L, 0x219513F5L);
        int i, j, k;
        for (i = 0; i < 3; i++)
            l_1060[i] = (void*)0;
        if (((GROUP_DIVERGE(0, 1) <= (((safe_mod_func_int32_t_s_s((GROUP_DIVERGE(0, 1) || ((p_1671->g_172.s0 || ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 8))(p_1671->g_948.yxxyyyyy)))).s0) || ((safe_mul_func_int16_t_s_s(((++(*l_951)) , p_1671->g_569[0]), ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 8))(p_1671->g_954.s77022576)).hi)).w)) & 0x51L))), (*p_1671->g_358))) , (*p_1671->g_357)) < l_955)) , (((*l_957) = l_956) != &p_1671->g_325)))
        { /* block id: 388 */
            int32_t l_966 = (-1L);
            int32_t *l_1016 = &p_1671->g_156[5];
            int32_t l_1045 = 8L;
            uint32_t l_1052 = 1UL;
            (*p_1671->g_358) = (p_1671->g_369.y , (!l_955));
            for (p_1671->g_789 = 0; (p_1671->g_789 != 21); p_1671->g_789 = safe_add_func_int32_t_s_s(p_1671->g_789, 5))
            { /* block id: 392 */
                uint64_t ***l_961 = &l_960;
                int32_t l_967 = 1L;
                int32_t ***l_976 = (void*)0;
                uint32_t *l_980 = &p_1671->g_405;
                uint64_t l_988 = 0x51FC648E25029445L;
                VECTOR(uint64_t, 2) l_1028 = (VECTOR(uint64_t, 2))(18446744073709551614UL, 0x36F03A8508C91E9FL);
                VECTOR(uint64_t, 4) l_1032 = (VECTOR(uint64_t, 4))(5UL, (VECTOR(uint64_t, 2))(5UL, 0x9115AF3B638189C5L), 0x9115AF3B638189C5L);
                VECTOR(uint64_t, 16) l_1033 = (VECTOR(uint64_t, 16))(0xAFA39AADBFCE4902L, (VECTOR(uint64_t, 4))(0xAFA39AADBFCE4902L, (VECTOR(uint64_t, 2))(0xAFA39AADBFCE4902L, 0UL), 0UL), 0UL, 0xAFA39AADBFCE4902L, 0UL, (VECTOR(uint64_t, 2))(0xAFA39AADBFCE4902L, 0UL), (VECTOR(uint64_t, 2))(0xAFA39AADBFCE4902L, 0UL), 0xAFA39AADBFCE4902L, 0UL, 0xAFA39AADBFCE4902L, 0UL);
                int i;
                (*l_961) = l_960;
                for (p_1671->g_60 = 9; (p_1671->g_60 < 53); p_1671->g_60 = safe_add_func_int32_t_s_s(p_1671->g_60, 9))
                { /* block id: 396 */
                    if ((*l_3))
                        break;
                }
                if (((((safe_rshift_func_uint16_t_u_u(l_966, l_967)) , (safe_sub_func_int16_t_s_s((safe_div_func_int16_t_s_s((safe_sub_func_int64_t_s_s((safe_sub_func_int16_t_s_s((((void*)0 != l_976) || (((VECTOR(uint32_t, 8))(max(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(l_977.s16)), 8UL, 2UL, 4294967295UL, 4294967294UL, 4UL, 1UL)), ((VECTOR(uint32_t, 16))(p_1671->g_978.s9f4d72f522477f93)).odd))).s2 , (((VECTOR(int8_t, 4))(p_1671->g_979.sc55d)).z >= ((*p_1671->g_525) = (((*l_980) = 0xEA4692C9L) || ((VECTOR(int32_t, 16))(max(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))((safe_rshift_func_uint8_t_u_s((safe_rshift_func_int8_t_s_u(((0x56C34CE415B68833L || l_966) , (safe_div_func_int32_t_s_s(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(safe_clamp_func(VECTOR(int32_t, 2),VECTOR(int32_t, 2),((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(4L, ((VECTOR(int32_t, 2))(0x51014F12L, 0x7AFB2489L)), (-2L))), (((VECTOR(int16_t, 2))(clz(((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(hadd(((VECTOR(int16_t, 2))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 2),((VECTOR(int16_t, 8))(6L, ((VECTOR(int16_t, 2))(0x7837L)), 0x0800L, 3L, ((VECTOR(int16_t, 2))(7L)), 0x6022L)).s67, ((VECTOR(int16_t, 2))(7L)), ((VECTOR(int16_t, 2))(1L))))), ((VECTOR(int16_t, 2))((-4L)))))).xxyx)).hi))).lo != (*p_1671->g_59)), (-1L), 0x66183AB4L, 0x2A1C34F9L)).odd)).lo, ((VECTOR(int32_t, 2))(1L)), ((VECTOR(int32_t, 2))(0x689F3E84L))))), (-1L), ((VECTOR(int32_t, 4))(2L)), 0x18E6CB05L)).s3, p_1671->g_987))), 0)), 3)), (*p_1671->g_357), 0x395C3674L, 0x4DE34CCFL, ((VECTOR(int32_t, 4))(0x16CA3450L)), 1L, (*p_1671->g_358), (-1L), ((VECTOR(int32_t, 2))((-5L))), (-1L), 0x0AB679D1L, (-6L))).odd)).s5612735312050622, ((VECTOR(int32_t, 16))(0x159C363CL))))).s0))))), FAKE_DIVERGE(p_1671->local_2_offset, get_local_id(2), 10))), l_955)), p_1671->g_618.x)), l_966))) | 0x44BE0590L) , (-3L)))
                { /* block id: 401 */
                    uint8_t l_993 = 0UL;
                    (*p_1671->g_357) = l_988;
                    for (p_1671->g_120 = 0; (p_1671->g_120 == 23); p_1671->g_120 = safe_add_func_int64_t_s_s(p_1671->g_120, 4))
                    { /* block id: 405 */
                        int16_t l_992[1];
                        int i;
                        for (i = 0; i < 1; i++)
                            l_992[i] = 1L;
                        (*p_1671->g_357) ^= ((VECTOR(int32_t, 4))(p_1671->g_991.xwyx)).w;
                        l_993++;
                        (**p_1671->g_394) = (**p_1671->g_394);
                    }
                    return l_966;
                }
                else
                { /* block id: 411 */
                    uint16_t *l_1013[2];
                    uint8_t l_1040 = 0xE7L;
                    uint64_t l_1041 = 0xB70DC14392373A22L;
                    uint64_t *l_1042 = &l_988;
                    uint8_t l_1043 = 2UL;
                    int32_t l_1044 = 0L;
                    int i;
                    for (i = 0; i < 2; i++)
                        l_1013[i] = &p_1671->g_37;
                    for (p_1671->g_219 = 0; (p_1671->g_219 != 58); ++p_1671->g_219)
                    { /* block id: 414 */
                        int32_t l_1012 = (-9L);
                        int32_t **l_1014[3];
                        int i;
                        for (i = 0; i < 3; i++)
                            l_1014[i] = &p_1671->g_159;
                        l_1015 = func_85((0x153AL == ((p_1671->g_929.s9 >= 65526UL) == (safe_lshift_func_int8_t_s_s(((((+5UL) >= (((*l_980) = (((safe_div_func_int8_t_s_s(((((((((*l_3) = ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))(mul_hi(((VECTOR(int64_t, 2))(p_1671->g_1002.s16)).yyyy, ((VECTOR(int64_t, 16))(p_1671->g_1003.zzxwyyzywyyzwxyz)).s7e20))).zwyzwwxwxxywzxyz)).s40)), (-2L), 0x14CB45BF2E199EB6L)).w) != (safe_sub_func_uint8_t_u_u(((l_955 , (safe_lshift_func_int16_t_s_s((((safe_rshift_func_int16_t_s_u(((((p_1671->g_569[0] , ((p_1671->g_891 == (void*)0) > ((safe_sub_func_int64_t_s_s(((p_1671->g_528.s6 > 1L) || p_1671->g_8), 1L)) && l_966))) && FAKE_DIVERGE(p_1671->global_0_offset, get_global_id(0), 10)) < p_1671->g_646.s1) , l_955), 2)) >= (*p_1671->g_59)) , p_1671->g_322.z), l_966))) & 0x44L), (-8L)))) <= (*p_1671->g_525)) >= l_955) <= p_1671->g_529.y) ^ 1UL) && l_1012), l_1012)) , p_1671->g_160.s7) || FAKE_DIVERGE(p_1671->global_2_offset, get_global_id(2), 10))) == p_1671->g_948.y)) | l_955) , 0x4AL), 4)))), l_1013[1], l_966, p_1671);
                    }
                    l_1017 = l_1016;
                    (*l_1016) = ((void*)0 == &p_1671->g_867);
                    (*l_1016) = ((*p_1671->g_59) != ((((l_1044 = ((((((void*)0 != &p_1671->g_923[3]) && ((safe_rshift_func_int16_t_s_s((((*l_1042) |= (((void*)0 == &p_1671->g_903) || (safe_mod_func_int64_t_s_s((safe_mul_func_int8_t_s_s((safe_rshift_func_uint8_t_u_s((((VECTOR(uint64_t, 16))(l_1028.yxxyxxyyxyxxxxyy)).s2 || ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(18446744073709551610UL, 1UL)), ((VECTOR(uint64_t, 4))(p_1671->g_1029.yyyx)), 0x3AD8300BE74646EFL, 0xDAFFECB8FFEBEEDCL, ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 4))(GROUP_DIVERGE(2, 1), 0xB6A2E78A38E6BE34L, 0xCAE977C185A5DB60L, 18446744073709551614UL)))))), 18446744073709551612UL, 1UL, 0UL, 0x49AF89352DB5E714L)).s8), (FAKE_DIVERGE(p_1671->local_1_offset, get_local_id(1), 10) & p_1671->g_325))), ((*p_1671->g_525) = (safe_mod_func_uint64_t_u_u((*l_1017), ((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 8))(1UL, ((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(l_1032.yy)), 1UL, ((VECTOR(uint64_t, 4))(0UL, ((VECTOR(uint64_t, 4))(l_1033.s75ac)).z, 18446744073709551610UL, 0xD8765146E83F2D51L)), 1UL, ((safe_rshift_func_uint16_t_u_u(((*p_1671->g_59) == ((VECTOR(uint16_t, 8))((GROUP_DIVERGE(2, 1) == (((safe_sub_func_int64_t_s_s(((l_1038 >= l_1039) > 3UL), 0UL)) , l_1040) , l_1041)), 0UL, 0xC3C8L, ((VECTOR(uint16_t, 4))(1UL)), 3UL)).s3), (*p_1671->g_59))) , (*l_1016)), ((VECTOR(uint64_t, 4))(0xEE9292CFCC108384L)), 7UL, 18446744073709551612UL, 0xE864F9F34956EA61L)).s04)), 9UL, ((VECTOR(uint64_t, 2))(0xE87B41FF483A9175L)), 0x518B95545F192B09L, 0xE9897FC92ABFBF4BL)))).s47)).odd))))), (-1L))))) , p_1671->g_405), 1)) , l_1041)) & l_1043) >= (*p_1671->g_357)) , l_1041)) <= 0L) > 0x7BED3126L) ^ p_1671->g_60));
                }
                l_1045 &= (*p_1671->g_358);
            }
            l_1052 = (((VECTOR(int32_t, 8))(p_1671->g_1048.s37503375)).s7 & (((*l_3) & ((safe_add_func_int8_t_s_s(0x70L, (*p_1671->g_525))) , (*p_1671->g_59))) , ((*l_1016) < ((VECTOR(int8_t, 2))(rhadd(((VECTOR(int8_t, 2))(rhadd(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 2))(0x4AL, 0x4BL)))), ((VECTOR(int8_t, 4))(0L, 0L, 0x6DL, 0x2CL)).even))), ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(l_1051.xx)), 9L, 0x3EL)).even))).hi)));
        }
        else
        { /* block id: 429 */
            int8_t **l_1058[1];
            int32_t l_1068 = 0x48229AE5L;
            uint64_t *l_1070[6] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            int64_t *l_1076 = (void*)0;
            int64_t *l_1077 = &p_1671->g_1078;
            int32_t l_1082 = (-1L);
            int32_t *l_1084 = &l_877;
            VECTOR(int16_t, 2) l_1086 = (VECTOR(int16_t, 2))(0x1082L, 1L);
            uint32_t *l_1090 = (void*)0;
            uint32_t *l_1091[8];
            int i;
            for (i = 0; i < 1; i++)
                l_1058[i] = &p_1671->g_525;
            for (i = 0; i < 8; i++)
                l_1091[i] = &p_1671->g_569[0];
            for (p_1671->g_325 = 0; (p_1671->g_325 == (-10)); p_1671->g_325--)
            { /* block id: 432 */
                int32_t l_1055 = 0x529D9C6DL;
                return l_1055;
            }
            if (l_1039)
                goto lbl_1065;
lbl_1065:
            (*p_1671->g_358) ^= (safe_sub_func_uint64_t_u_u(((l_1059 = (void*)0) != l_1060[1]), (safe_mul_func_int8_t_s_s((safe_div_func_int8_t_s_s(0x60L, (*l_3))), p_1671->g_581.x))));
            (*p_1671->g_1087) = (((*l_3) , (+((((safe_unary_minus_func_uint64_t_u((((VECTOR(uint32_t, 4))(rhadd(((VECTOR(uint32_t, 16))(l_1067.xyyxxxyyyyxxxxxy)).sd33e, ((VECTOR(uint32_t, 16))(l_1068, (~(safe_unary_minus_func_int32_t_s(((*l_1084) = ((((*l_3) = 0UL) || GROUP_DIVERGE(0, 1)) , ((*p_1671->g_358) = ((safe_sub_func_int32_t_s_s((l_1073 == &p_1671->g_60), 0x7CF9219AL)) ^ (safe_div_func_int16_t_s_s(((l_1082 = (FAKE_DIVERGE(p_1671->local_1_offset, get_local_id(1), 10) , (((((*l_1077) = (-10L)) , (((safe_rshift_func_uint8_t_u_u(p_1671->g_782.s4, (((void*)0 == l_1081) > 5UL))) < l_1082) == l_1068)) && l_1068) & (*l_3)))) <= l_1083), 1UL))))))))), ((VECTOR(uint32_t, 4))(0x318CC81EL)), ((VECTOR(uint32_t, 4))(4294967292UL)), 8UL, 3UL, l_1085, 4294967290UL, 0x1B3C1C71L, 6UL)).sc546))).z ^ p_1671->g_802.x))) & l_1086.x) ^ FAKE_DIVERGE(p_1671->group_0_offset, get_group_id(0), 10)) , (*l_3)))) != (*p_1671->g_59));
            (*p_1671->g_358) |= ((((VECTOR(uint64_t, 16))(l_1088.s6501314173105601)).s8 > (((*p_1671->g_1095) |= ((VECTOR(int16_t, 2))(add_sat(((VECTOR(int16_t, 4))(clz(((VECTOR(int16_t, 16))((-1L), ((*l_1084) < (*l_3)), (-10L), 0x507AL, p_1671->g_550.sb, ((VECTOR(int16_t, 4))(((*l_939) = (((*p_1671->g_59) = (safe_unary_minus_func_uint32_t_u((p_1671->g_237.s3 = (*l_3))))) ^ p_1671->g_507.s9)), p_1671->g_364.x, 0L, 1L)), ((((VECTOR(int32_t, 8))(safe_clamp_func(VECTOR(int32_t, 8),int32_t,((VECTOR(int32_t, 4))(((VECTOR(int32_t, 16))(sub_sat(((VECTOR(int32_t, 8))(0x61221D91L, 0x161F6852L, 0x0A68BD1EL, (safe_mul_func_uint16_t_u_u(((p_1671->g_324.sd = ((p_1671->g_1094 = p_1671->g_1094) == (((VECTOR(int16_t, 8))(p_1671->g_1096.zwxxyzxy)).s6 , &p_1671->g_1095))) , l_1097), 0x44BAL)), 0x3893E131L, 0x7ECE6F30L, 2L, 0x3F8FE717L)).s5136175120727241, ((VECTOR(int32_t, 16))(3L))))).sa552)).wzzwzyzz, (int32_t)l_1098, (int32_t)(*l_1084)))).s5 , 0x44EA90D7L) != 8UL), ((VECTOR(int16_t, 4))(0L)), 0x5A94L, 0x146DL)).sb2ab))).hi, ((VECTOR(int16_t, 2))(0x395FL))))).hi) >= (*l_3))) & p_1671->g_616.z);
        }
        for (p_1671->g_219 = 0; (p_1671->g_219 >= 36); ++p_1671->g_219)
        { /* block id: 454 */
            uint32_t l_1105 = 0x1BA788B7L;
            int32_t l_1134 = 0x715EF64CL;
            int32_t l_1156[8] = {(-1L),(-6L),(-1L),(-1L),(-6L),(-1L),(-1L),(-6L)};
            uint32_t l_1190 = 0x05C746BEL;
            int64_t l_1229 = 0x385A3B0140261A0BL;
            int64_t l_1278 = 0x248F4EE1196938C2L;
            VECTOR(uint32_t, 4) l_1299 = (VECTOR(uint32_t, 4))(0xFF5FEA05L, (VECTOR(uint32_t, 2))(0xFF5FEA05L, 4294967295UL), 4294967295UL);
            VECTOR(uint8_t, 4) l_1325 = (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 0xB9L), 0xB9L);
            int32_t *l_1335 = &p_1671->g_8;
            uint32_t l_1344 = 0xA0629532L;
            uint64_t *l_1351 = &l_1310[6][1][5];
            uint32_t *l_1368 = (void*)0;
            uint32_t *l_1369[2];
            uint16_t *l_1370 = (void*)0;
            int i;
            for (i = 0; i < 2; i++)
                l_1369[i] = &p_1671->g_405;
            (*p_1671->g_358) &= 0x339A5D44L;
            for (l_1039 = 0; (l_1039 > (-8)); l_1039 = safe_sub_func_uint64_t_u_u(l_1039, 7))
            { /* block id: 458 */
                VECTOR(int32_t, 8) l_1106 = (VECTOR(int32_t, 8))(0x4C1E4D14L, (VECTOR(int32_t, 4))(0x4C1E4D14L, (VECTOR(int32_t, 2))(0x4C1E4D14L, (-1L)), (-1L)), (-1L), 0x4C1E4D14L, (-1L));
                VECTOR(uint32_t, 16) l_1121 = (VECTOR(uint32_t, 16))(0xEB891D64L, (VECTOR(uint32_t, 4))(0xEB891D64L, (VECTOR(uint32_t, 2))(0xEB891D64L, 0xACA151DBL), 0xACA151DBL), 0xACA151DBL, 0xEB891D64L, 0xACA151DBL, (VECTOR(uint32_t, 2))(0xEB891D64L, 0xACA151DBL), (VECTOR(uint32_t, 2))(0xEB891D64L, 0xACA151DBL), 0xEB891D64L, 0xACA151DBL, 0xEB891D64L, 0xACA151DBL);
                uint8_t l_1159 = 6UL;
                uint16_t l_1169 = 0x782DL;
                uint8_t l_1174 = 0UL;
                int32_t *l_1177 = (void*)0;
                int32_t *l_1178 = &p_1671->g_399[3];
                int32_t *l_1179 = &p_1671->g_399[6];
                int32_t *l_1180 = &p_1671->g_8;
                int32_t *l_1181 = &p_1671->g_156[3];
                int32_t *l_1182 = &p_1671->g_399[0];
                int32_t *l_1183[4];
                VECTOR(uint32_t, 4) l_1189 = (VECTOR(uint32_t, 4))(4294967287UL, (VECTOR(uint32_t, 2))(4294967287UL, 0xF5D10F38L), 0xF5D10F38L);
                uint64_t *l_1192 = &p_1671->g_446;
                int32_t **l_1193 = &l_1177;
                int64_t l_1266[9][7] = {{0x44DC84315FCC1579L,0x44DC84315FCC1579L,0L,0L,8L,0L,0L},{0x44DC84315FCC1579L,0x44DC84315FCC1579L,0L,0L,8L,0L,0L},{0x44DC84315FCC1579L,0x44DC84315FCC1579L,0L,0L,8L,0L,0L},{0x44DC84315FCC1579L,0x44DC84315FCC1579L,0L,0L,8L,0L,0L},{0x44DC84315FCC1579L,0x44DC84315FCC1579L,0L,0L,8L,0L,0L},{0x44DC84315FCC1579L,0x44DC84315FCC1579L,0L,0L,8L,0L,0L},{0x44DC84315FCC1579L,0x44DC84315FCC1579L,0L,0L,8L,0L,0L},{0x44DC84315FCC1579L,0x44DC84315FCC1579L,0L,0L,8L,0L,0L},{0x44DC84315FCC1579L,0x44DC84315FCC1579L,0L,0L,8L,0L,0L}};
                int i, j;
                for (i = 0; i < 4; i++)
                    l_1183[i] = (void*)0;
                for (p_1671->g_789 = (-26); (p_1671->g_789 < 20); p_1671->g_789 = safe_add_func_uint16_t_u_u(p_1671->g_789, 4))
                { /* block id: 461 */
                    int32_t l_1109 = 8L;
                    int32_t l_1112[2];
                    VECTOR(int32_t, 4) l_1119 = (VECTOR(int32_t, 4))(0x6E8EE30AL, (VECTOR(int32_t, 2))(0x6E8EE30AL, 0x786A21E4L), 0x786A21E4L);
                    VECTOR(uint64_t, 16) l_1162 = (VECTOR(uint64_t, 16))(2UL, (VECTOR(uint64_t, 4))(2UL, (VECTOR(uint64_t, 2))(2UL, 0xF13A61C196A3DDE2L), 0xF13A61C196A3DDE2L), 0xF13A61C196A3DDE2L, 2UL, 0xF13A61C196A3DDE2L, (VECTOR(uint64_t, 2))(2UL, 0xF13A61C196A3DDE2L), (VECTOR(uint64_t, 2))(2UL, 0xF13A61C196A3DDE2L), 2UL, 0xF13A61C196A3DDE2L, 2UL, 0xF13A61C196A3DDE2L);
                    int32_t *l_1168[5] = {&l_877,&l_877,&l_877,&l_877,&l_877};
                    int i;
                    for (i = 0; i < 2; i++)
                        l_1112[i] = 0L;
                    (1 + 1);
                }
                ++l_1185;
                (*l_1179) &= (l_1188 <= ((((VECTOR(uint32_t, 8))(l_1189.zwzzwyyz)).s5 , (*l_1181)) & 1L));
                if (((l_1190 , (*l_1181)) | ((safe_unary_minus_func_uint32_t_u((l_938[4][7][1] != l_1192))) != (((*l_1193) = l_1182) != &l_1184))))
                { /* block id: 496 */
                    uint64_t ****l_1206 = &p_1671->g_1204;
                    int32_t ***l_1262 = &l_1193;
                    uint16_t *l_1267 = &l_1169;
                    (*l_1180) ^= (*p_1671->g_357);
                    l_955 |= ((*l_1180) |= ((p_1671->g_991.y != ((safe_mod_func_uint32_t_u_u(((*l_3) <= (((l_912 = (safe_mod_func_int16_t_s_s(0x0E58L, l_1198))) != (*l_1181)) == (((((void*)0 != p_1671->g_1199) == ((safe_mod_func_uint16_t_u_u((((safe_rshift_func_int8_t_s_s(((((**l_1193) == (((*l_1206) = p_1671->g_1204) == &p_1671->g_1205)) && 1UL) ^ 1L), 2)) && FAKE_DIVERGE(p_1671->global_2_offset, get_global_id(2), 10)) || (*p_1671->g_59)), l_1105)) != 0x5AL)) , p_1671->g_978.s3) >= FAKE_DIVERGE(p_1671->local_2_offset, get_local_id(2), 10)))), l_1105)) , l_1105)) | (*l_3)));
                    for (l_912 = 6; (l_912 < (-19)); l_912 = safe_sub_func_int8_t_s_s(l_912, 8))
                    { /* block id: 504 */
                        int8_t **l_1217[2][8][2] = {{{&l_1060[1],&l_1060[1]},{&l_1060[1],&l_1060[1]},{&l_1060[1],&l_1060[1]},{&l_1060[1],&l_1060[1]},{&l_1060[1],&l_1060[1]},{&l_1060[1],&l_1060[1]},{&l_1060[1],&l_1060[1]},{&l_1060[1],&l_1060[1]}},{{&l_1060[1],&l_1060[1]},{&l_1060[1],&l_1060[1]},{&l_1060[1],&l_1060[1]},{&l_1060[1],&l_1060[1]},{&l_1060[1],&l_1060[1]},{&l_1060[1],&l_1060[1]},{&l_1060[1],&l_1060[1]},{&l_1060[1],&l_1060[1]}}};
                        int32_t *l_1231[4];
                        uint32_t *l_1263 = &p_1671->g_569[0];
                        int32_t *l_1264 = (void*)0;
                        int32_t *l_1265[5];
                        int i, j, k;
                        for (i = 0; i < 4; i++)
                            l_1231[i] = &l_1184;
                        for (i = 0; i < 5; i++)
                            l_1265[i] = &l_1230;
                        if ((*l_3))
                            break;
                        l_1156[4] &= (safe_mul_func_int16_t_s_s((safe_add_func_uint16_t_u_u((safe_lshift_func_int16_t_s_s(0x7A2EL, ((safe_lshift_func_int8_t_s_s(((((l_1217[1][2][0] == (void*)0) < 3L) & 0x953B21DDL) >= GROUP_DIVERGE(0, 1)), (safe_rshift_func_int16_t_s_u(0x26D8L, ((-6L) > ((VECTOR(int32_t, 16))(p_1671->g_1220.ywzzyyyzzwwwzwxw)).s8))))) < (safe_mul_func_int16_t_s_s(((~(l_1134 = l_1223)) | (safe_sub_func_int64_t_s_s((safe_mod_func_uint64_t_u_u((((VECTOR(int16_t, 2))(1L, 0x7AC0L)).odd == ((VECTOR(int16_t, 2))(p_1671->g_1228.sfc)).odd), (l_1230 = l_1229))), 0x1BEB83076A38B522L))), (*l_1178)))))), 8L)), 0x68F1L));
                        (*l_1193) = l_1231[3];
                        (*l_1193) = func_85((l_1156[4] &= (safe_div_func_int64_t_s_s((l_1217[1][7][1] == ((((VECTOR(int16_t, 16))((safe_rshift_func_uint16_t_u_s((0x2665E4E178EA63CEL == ((((safe_add_func_int16_t_s_s((&p_1671->g_902[0] != (void*)0), ((safe_mod_func_int32_t_s_s((safe_lshift_func_int8_t_s_u(0x23L, (((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(hadd(((VECTOR(uint16_t, 2))(65527UL, 4UL)), ((VECTOR(uint16_t, 8))(p_1671->g_1242.s308329ee)).s77))).yyxy)).x != ((p_1671->g_789 = ((((*p_1671->g_1095) != (++(*p_1671->g_59))) | (((safe_sub_func_uint16_t_u_u((safe_rshift_func_uint8_t_u_s((safe_add_func_uint8_t_u_u((((*p_1671->g_525) = (safe_unary_minus_func_uint32_t_u((((VECTOR(uint16_t, 4))(l_1252.zxzx)).x , (((safe_div_func_int32_t_s_s((safe_div_func_int64_t_s_s((safe_rshift_func_uint16_t_u_u((((VECTOR(int8_t, 2))((-2L), (-10L))).lo <= 2UL), 11)), ((VECTOR(uint64_t, 2))(4UL, 0x6620AE4C3B8EF53BL)).lo)), (((*l_1263) |= (safe_rshift_func_uint8_t_u_u((l_1261 >= (l_1262 == (void*)0)), (***l_1262)))) , (*p_1671->g_357)))) <= (***l_1262)) , p_1671->g_123[1]))))) >= 0xD6L), (***l_1262))), 4)), (***l_1262))) <= (***l_1262)) || 9UL)) , p_1671->g_322.x)) , (**l_1193))))), 1L)) , (**p_1671->g_1094)))) && (-3L)) & l_1190) < (*l_3))), (**p_1671->g_1094))), ((VECTOR(int16_t, 2))((-1L))), 0x4EF4L, 0x09D6L, (**p_1671->g_1094), (-8L), (*p_1671->g_1095), (***l_1262), ((VECTOR(int16_t, 2))(0x4119L)), (*p_1671->g_1095), 0x48BEL, 4L, 0x0A3CL, 0x22F7L)).sb > p_1671->g_677) , (void*)0)), l_1266[4][2]))), l_1267, p_1671->g_618.y, p_1671);
                    }
                    (*p_1671->g_358) ^= ((((VECTOR(int64_t, 16))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(clz(((VECTOR(int64_t, 16))(p_1671->g_1268.sdcb66fc198bf9408)).s8d))).xyyy)).ywzwzyyyxxywwxzz)).s8 > (safe_lshift_func_int8_t_s_u(((VECTOR(int8_t, 8))(rhadd(((VECTOR(int8_t, 16))(0x3EL, ((VECTOR(int8_t, 2))(0x20L, 2L)), (safe_div_func_uint32_t_u_u(((p_1671->g_347 , GROUP_DIVERGE(2, 1)) != (p_1671->g_802.x = (((((safe_lshift_func_int8_t_s_u(((*l_3) & l_1229), ((safe_unary_minus_func_uint16_t_u((!(((VECTOR(uint8_t, 2))(p_1671->g_1276.sfa)).hi , (*p_1671->g_59))))) & (***l_1262)))) == ((((void*)0 != &p_1671->g_677) != ((VECTOR(int64_t, 4))(l_1277.xyyx)).z) == (((4294967295UL <= (l_1190 & (*l_3))) < 0x62CA5169L) || 4294967289UL))) != l_1278) == 0x015DL) ^ (*p_1671->g_59)))), 1L)), 4L, ((VECTOR(int8_t, 8))(1L)), ((VECTOR(int8_t, 2))(1L)), 1L)).odd, ((VECTOR(int8_t, 8))(1L))))).s1, (*l_1179)))) , 4L);
                }
                else
                { /* block id: 519 */
                    uint32_t ***l_1288 = (void*)0;
                    uint32_t ***l_1289 = &l_1081;
                    int32_t l_1295 = 0x78A2081EL;
                    uint32_t *l_1311 = &p_1671->g_569[0];
                    int32_t *l_1312 = &p_1671->g_1313;
                    int32_t *l_1314 = (void*)0;
                    int32_t *l_1315[9] = {&p_1671->g_1316[2][1][2],&p_1671->g_1316[2][1][2],&p_1671->g_1316[2][1][2],&p_1671->g_1316[2][1][2],&p_1671->g_1316[2][1][2],&p_1671->g_1316[2][1][2],&p_1671->g_1316[2][1][2],&p_1671->g_1316[2][1][2],&p_1671->g_1316[2][1][2]};
                    uint64_t l_1318 = 0x1E021F777CC3B1D8L;
                    int i;
                    (*l_1180) = (safe_add_func_uint64_t_u_u(((VECTOR(uint64_t, 2))(clz(((VECTOR(uint64_t, 4))(sub_sat(((VECTOR(uint64_t, 8))(((safe_lshift_func_int16_t_s_s((**p_1671->g_1094), (((((((((safe_rshift_func_int8_t_s_u((((*l_1289) = l_1287) != (((*l_3) = ((*l_1312) ^= ((safe_lshift_func_int8_t_s_s((((VECTOR(uint8_t, 8))(255UL, ((VECTOR(uint8_t, 4))(rhadd(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 16))(hadd(((VECTOR(uint8_t, 8))(p_1671->g_1292.yxyyyxxx)).s6107164772747402, ((VECTOR(uint8_t, 16))((p_1671->g_324.s0 = (7UL && (safe_rshift_func_int16_t_s_s((*p_1671->g_1095), l_1295)))), 0x81L, 0UL, (safe_rshift_func_uint16_t_u_u((((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(3L, 0x3BL)).xyyyyxxyyxxyxxyy)).s9 != (FAKE_DIVERGE(p_1671->group_1_offset, get_group_id(1), 10) <= ((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 16))(mul_hi(((VECTOR(uint32_t, 16))(safe_mul24_func_uint32_t_u_u(VECTOR(uint32_t, 16),((VECTOR(uint32_t, 2))(abs_diff(((VECTOR(uint32_t, 16))(mad_sat(((VECTOR(uint32_t, 8))(p_1671->g_1298.s7ad7a0d2)).s4524516373163560, ((VECTOR(uint32_t, 16))(l_1299.zywyyyzywzwywxwy)), ((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))(safe_mul24_func_uint32_t_u_u(VECTOR(uint32_t, 4),((VECTOR(uint32_t, 4))(((*l_1311) = (safe_sub_func_int32_t_s_s(((-1L) && (safe_sub_func_int64_t_s_s(((--(***p_1671->g_1204)) , l_1278), (safe_sub_func_uint8_t_u_u(p_1671->g_237.s7, ((--(*l_1192)) & ((0L < p_1671->g_241.s6) || l_1295))))))), l_1310[6][1][5]))), ((VECTOR(uint32_t, 2))(0xC0F4EEDEL)), 1UL)), ((VECTOR(uint32_t, 4))(5UL))))), ((VECTOR(uint32_t, 4))(0UL)), 0xA730E617L, ((VECTOR(uint32_t, 2))(0x77077BAEL)), ((VECTOR(uint32_t, 4))(0xDF4C5AD7L)), 0UL)).s4e)), 0xCF467501L, 0xE60C5A22L)).wzzwyzyzyyyzwxxz))))).s86, ((VECTOR(uint32_t, 2))(1UL))))).xxxxxyxxyxyxyxxx, ((VECTOR(uint32_t, 16))(0UL))))), ((VECTOR(uint32_t, 16))(0x2E084D68L))))).hi)).s0554534645665744)).s5)), GROUP_DIVERGE(2, 1))), 250UL, ((VECTOR(uint8_t, 2))(0xF8L)), 0x09L, p_1671->g_237.s1, GROUP_DIVERGE(0, 1), 0UL, 1UL, 251UL, 0xEFL, 255UL, 0x6EL))))).s1769)), ((VECTOR(uint8_t, 4))(0x73L))))), 0UL, 0UL, 0x9DL)).s6 < (*p_1671->g_525)), 1)) == (*l_1180)))) , (void*)0)), l_1317[4])) | (*p_1671->g_1087)) , (**p_1671->g_1094)) >= 0L) , &l_1295) == (void*)0) > 0L) || (-1L)) == 0x9716521E896E3D2BL))) != 0x3FE2L), ((VECTOR(uint64_t, 4))(6UL)), 0xAE2A82B8B5C538DDL, 3UL, 18446744073709551610UL)).even, ((VECTOR(uint64_t, 4))(18446744073709551615UL))))).lo))).hi, l_1134));
                    l_1318++;
                    (*l_1182) ^= ((safe_mul_func_uint16_t_u_u((+l_1295), ((p_1671->g_1078 = l_1318) , (*p_1671->g_59)))) != (*l_3));
                    for (p_1671->g_1078 = 0; (p_1671->g_1078 > (-2)); p_1671->g_1078 = safe_sub_func_uint64_t_u_u(p_1671->g_1078, 1))
                    { /* block id: 533 */
                        (*l_1193) = (*p_1671->g_1161);
                        return l_1318;
                    }
                }
            }
            (*l_1335) &= (l_1310[6][1][5] , (((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 16))(mad_sat(((VECTOR(uint8_t, 8))(add_sat(((VECTOR(uint8_t, 2))(l_1325.zw)).xyyyxxyy, ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 2))(clz(((VECTOR(uint8_t, 2))(p_1671->g_1326.xx))))))))).yxyxyyyy))))).s3632527703116632, ((VECTOR(uint8_t, 8))(247UL, 2UL, ((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 8))(hadd(((VECTOR(uint8_t, 2))(l_1327.xx)).yyxxxyyx, ((VECTOR(uint8_t, 4))(mad_sat(((VECTOR(uint8_t, 2))(rotate(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(min(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(((VECTOR(uint8_t, 2))(6UL, 0x13L)))).yyxyxxxyyyxyxyxx)).se2, (uint8_t)(p_1671->g_677 |= (((((VECTOR(uint16_t, 2))(65527UL, 65527UL)).even , ((void*)0 != l_1328)) , ((((safe_add_func_uint64_t_u_u((((((((*p_1671->g_357) = l_1278) <= l_1331) , (255UL && (*l_3))) != (safe_rshift_func_int16_t_s_u(0x09F9L, 12))) , (l_1017 = &l_955)) == &l_955), l_1334)) , 0x4D7AL) & (**p_1671->g_1094)) && p_1671->g_979.s2)) < p_1671->g_21.z))))).yyxxyxxxyxyxyxxy)).sf2, ((VECTOR(uint8_t, 2))(250UL))))).yxxy, ((VECTOR(uint8_t, 4))(0x1CL)), ((VECTOR(uint8_t, 4))(0xA0L))))).yzxzwwwy))).s57)), 1UL, ((VECTOR(uint8_t, 2))(1UL)), 254UL)).s2603644461377260, ((VECTOR(uint8_t, 16))(8UL))))))).s9 == (*p_1671->g_525)));
        }
        (**p_1671->g_394) = (**p_1671->g_394);
        if (((*p_1671->g_357) ^= (((*l_1373) = &p_1671->g_1316[4][0][2]) != &p_1671->g_1313)))
        { /* block id: 559 */
            VECTOR(int32_t, 16) l_1381 = (VECTOR(int32_t, 16))((-5L), (VECTOR(int32_t, 4))((-5L), (VECTOR(int32_t, 2))((-5L), 0x1B019D63L), 0x1B019D63L), 0x1B019D63L, (-5L), 0x1B019D63L, (VECTOR(int32_t, 2))((-5L), 0x1B019D63L), (VECTOR(int32_t, 2))((-5L), 0x1B019D63L), (-5L), 0x1B019D63L, (-5L), 0x1B019D63L);
            uint64_t *l_1390 = (void*)0;
            uint64_t *l_1391 = &l_1310[6][1][5];
            int32_t *l_1401[1][5] = {{&l_877,&l_877,&l_877,&l_877,&l_877}};
            uint16_t l_1416[4] = {65530UL,65530UL,65530UL,65530UL};
            int64_t *l_1426 = &p_1671->g_119;
            VECTOR(uint64_t, 2) l_1439 = (VECTOR(uint64_t, 2))(0x33077408B1470860L, 0UL);
            uint64_t ***l_1479[2];
            uint32_t *l_1531[5] = {&l_1317[4],&l_1317[4],&l_1317[4],&l_1317[4],&l_1317[4]};
            int i, j;
            for (i = 0; i < 2; i++)
                l_1479[i] = (void*)0;
            if ((safe_sub_func_uint32_t_u_u((((GROUP_DIVERGE(1, 1) || (*p_1671->g_1095)) , l_1377) != ((FAKE_DIVERGE(p_1671->local_0_offset, get_local_id(0), 10) , 0xF57B24FEL) , (void*)0)), (safe_mul_func_int8_t_s_s((((VECTOR(int32_t, 4))(l_1381.s3ab9)).z , ((*p_1671->g_525) |= l_1327.y)), (((*l_3) = (safe_sub_func_uint64_t_u_u(((safe_sub_func_uint64_t_u_u((((((VECTOR(int8_t, 2))(0x3DL, 0x3AL)).hi > (l_939 != (void*)0)) != l_1386.s4) || ((safe_rshift_func_int8_t_s_u(((((*l_1391) = ((VECTOR(uint64_t, 4))(l_1389.s4275)).z) , &p_1671->g_1204) == (void*)0), p_1671->g_1220.z)) < l_1392)), FAKE_DIVERGE(p_1671->local_1_offset, get_local_id(1), 10))) , 0x9A810680F4CF0E85L), 1UL))) == l_1393))))))
            { /* block id: 563 */
                int32_t l_1405 = 0x2C50E1C4L;
                int32_t l_1411 = 0x4B34B590L;
                int32_t l_1412 = 0x3FF93050L;
                int32_t l_1414[10] = {2L,2L,2L,2L,2L,2L,2L,2L,2L,2L};
                VECTOR(uint16_t, 16) l_1419 = (VECTOR(uint16_t, 16))(0xD4F0L, (VECTOR(uint16_t, 4))(0xD4F0L, (VECTOR(uint16_t, 2))(0xD4F0L, 7UL), 7UL), 7UL, 0xD4F0L, 7UL, (VECTOR(uint16_t, 2))(0xD4F0L, 7UL), (VECTOR(uint16_t, 2))(0xD4F0L, 7UL), 0xD4F0L, 7UL, 0xD4F0L, 7UL);
                uint32_t *l_1421 = &l_1097;
                uint32_t l_1452 = 0x23D673FFL;
                int i;
                for (l_1188 = 0; (l_1188 > (-11)); l_1188 = safe_sub_func_int32_t_s_s(l_1188, 4))
                { /* block id: 566 */
                    int32_t l_1406 = 0x5FB1FAFDL;
                    int32_t l_1410 = 0x01C79933L;
                    int32_t l_1415 = 0x55A1E5B6L;
                    (*p_1671->g_1396) = &l_955;
                    if ((((safe_add_func_uint8_t_u_u((safe_lshift_func_int8_t_s_s((((*l_1391) = (((*p_1671->g_525) , l_1401[0][4]) != (void*)0)) , (safe_lshift_func_uint8_t_u_s(p_1671->g_578.z, 6))), (l_1404 ^ (*p_1671->g_59)))), ((l_1405 & ((((+4UL) || 0UL) || l_1406) <= p_1671->g_1407[5][1])) | l_1406))) & l_1406) ^ (*l_3)))
                    { /* block id: 569 */
                        VECTOR(int8_t, 4) l_1408 = (VECTOR(int8_t, 4))(0x25L, (VECTOR(int8_t, 2))(0x25L, (-10L)), (-10L));
                        int32_t l_1409[7];
                        int i;
                        for (i = 0; i < 7; i++)
                            l_1409[i] = 0L;
                        if ((*p_1671->g_357))
                            break;
                        ++l_1416[2];
                    }
                    else
                    { /* block id: 572 */
                        (*p_1671->g_357) |= ((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(((*l_3) ^= (p_1671->g_237.s6 , ((*p_1671->g_1095) || ((VECTOR(uint16_t, 8))(l_1419.sbf609130)).s6))), 0x4D020C0DL, ((safe_unary_minus_func_int16_t_s((l_1421 != &l_1097))) || (safe_add_func_uint16_t_u_u(((safe_sub_func_int8_t_s_s(((l_1426 = &p_1671->g_119) != l_1391), (l_1414[8] = ((*p_1671->g_525) = (*l_3))))) > l_1405), (*p_1671->g_59)))), ((VECTOR(int32_t, 8))(0L)), (*p_1671->g_1087), (*p_1671->g_358), 0x1A81F529L, 0x5BB8AFB9L, 0L)).scd)).even;
                        return (*l_3);
                    }
                    for (p_1671->g_119 = 0; (p_1671->g_119 >= (-19)); p_1671->g_119 = safe_sub_func_uint16_t_u_u(p_1671->g_119, 5))
                    { /* block id: 582 */
                        uint32_t l_1434 = 4294967295UL;
                        int32_t l_1444[7][3] = {{(-10L),0x44CE50D9L,(-10L)},{(-10L),0x44CE50D9L,(-10L)},{(-10L),0x44CE50D9L,(-10L)},{(-10L),0x44CE50D9L,(-10L)},{(-10L),0x44CE50D9L,(-10L)},{(-10L),0x44CE50D9L,(-10L)},{(-10L),0x44CE50D9L,(-10L)}};
                        uint16_t *l_1445[10][8][3] = {{{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37},{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37},{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37},{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37},{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37},{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37},{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37},{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37}},{{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37},{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37},{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37},{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37},{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37},{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37},{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37},{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37}},{{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37},{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37},{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37},{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37},{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37},{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37},{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37},{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37}},{{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37},{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37},{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37},{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37},{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37},{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37},{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37},{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37}},{{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37},{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37},{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37},{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37},{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37},{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37},{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37},{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37}},{{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37},{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37},{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37},{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37},{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37},{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37},{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37},{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37}},{{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37},{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37},{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37},{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37},{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37},{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37},{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37},{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37}},{{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37},{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37},{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37},{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37},{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37},{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37},{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37},{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37}},{{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37},{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37},{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37},{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37},{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37},{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37},{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37},{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37}},{{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37},{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37},{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37},{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37},{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37},{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37},{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37},{&p_1671->g_37,&p_1671->g_37,&p_1671->g_37}}};
                        int i, j, k;
                        (1 + 1);
                    }
                    if ((*p_1671->g_358))
                        break;
                }
                (*p_1671->g_357) = (((l_1447 != &p_1671->g_1204) <= (safe_div_func_uint32_t_u_u(((((&l_939 != (void*)0) & (safe_sub_func_uint16_t_u_u(((+(l_1452 || ((void*)0 != &l_3))) , 65527UL), (safe_rshift_func_uint16_t_u_u((~(*l_3)), GROUP_DIVERGE(2, 1)))))) & 8UL) >= FAKE_DIVERGE(p_1671->local_1_offset, get_local_id(1), 10)), (*p_1671->g_357)))) , (*p_1671->g_358));
            }
            else
            { /* block id: 592 */
                VECTOR(int32_t, 16) l_1468 = (VECTOR(int32_t, 16))(0x1D53F4C7L, (VECTOR(int32_t, 4))(0x1D53F4C7L, (VECTOR(int32_t, 2))(0x1D53F4C7L, (-10L)), (-10L)), (-10L), 0x1D53F4C7L, (-10L), (VECTOR(int32_t, 2))(0x1D53F4C7L, (-10L)), (VECTOR(int32_t, 2))(0x1D53F4C7L, (-10L)), 0x1D53F4C7L, (-10L), 0x1D53F4C7L, (-10L));
                int64_t l_1517 = 0L;
                int i;
                if (l_1038)
                    goto lbl_1455;
                if ((safe_div_func_uint64_t_u_u((((VECTOR(int16_t, 16))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 16))(p_1671->g_1458.s3e1d41d67b48ca48)))))).s8 && (-9L)), (safe_sub_func_int16_t_s_s(((0UL <= (*p_1671->g_525)) ^ (&p_1671->g_866 != (void*)0)), FAKE_DIVERGE(p_1671->group_1_offset, get_group_id(1), 10))))))
                { /* block id: 594 */
lbl_1518:
                    (*p_1671->g_358) &= (*p_1671->g_1087);
                }
                else
                { /* block id: 596 */
                    VECTOR(int32_t, 16) l_1493 = (VECTOR(int32_t, 16))(0x16836310L, (VECTOR(int32_t, 4))(0x16836310L, (VECTOR(int32_t, 2))(0x16836310L, 0x1019D693L), 0x1019D693L), 0x1019D693L, 0x16836310L, 0x1019D693L, (VECTOR(int32_t, 2))(0x16836310L, 0x1019D693L), (VECTOR(int32_t, 2))(0x16836310L, 0x1019D693L), 0x16836310L, 0x1019D693L, 0x16836310L, 0x1019D693L);
                    VECTOR(int32_t, 8) l_1495 = (VECTOR(int32_t, 8))(0x61873050L, (VECTOR(int32_t, 4))(0x61873050L, (VECTOR(int32_t, 2))(0x61873050L, 0x391218F1L), 0x391218F1L), 0x391218F1L, 0x61873050L, 0x391218F1L);
                    int i;
                    if (((*p_1671->g_1087) = ((*p_1671->g_358) = (((*p_1671->g_1095) ^ (*p_1671->g_59)) != (((VECTOR(uint32_t, 8))(add_sat(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(p_1671->g_1463.s3454)).zyxyyzwz)), ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 4))(0UL, 0x9A3A78FAL, 0xD59AE368L, 0x2C3BD142L)))).ywzzzzwx))).s7 , ((safe_mod_func_int16_t_s_s((**p_1671->g_1094), (((*l_1391) &= (safe_mod_func_int32_t_s_s(((VECTOR(int32_t, 2))(l_1468.s7e)).even, 4294967295UL))) ^ (safe_mod_func_int32_t_s_s((safe_mul_func_uint8_t_u_u(((**p_1671->g_1205) , (((((*l_1447) != (((safe_mul_func_int16_t_s_s((safe_div_func_uint32_t_u_u(GROUP_DIVERGE(1, 1), (*p_1671->g_1087))), (((safe_lshift_func_int16_t_s_s(((*p_1671->g_394) != (*p_1671->g_394)), 13)) != l_1468.s5) < (-1L)))) & (*p_1671->g_525)) , l_1479[0])) | (*p_1671->g_59)) && 0x15L) ^ 0x49D9L)), (*p_1671->g_525))), 0xE78055E3L))))) || 0x82L))))))
                    { /* block id: 600 */
                        VECTOR(int32_t, 8) l_1494 = (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, (-1L)), (-1L)), (-1L), 0L, (-1L));
                        uint64_t **l_1501 = &p_1671->g_279;
                        int64_t *l_1515 = &p_1671->g_1078;
                        int16_t l_1516 = 0x74BDL;
                        int i;
                        l_1468.s8 = (((safe_sub_func_uint8_t_u_u((safe_rshift_func_uint16_t_u_u((((0x36B5631EL != 0x20CEA2A0L) > ((VECTOR(uint16_t, 4))(p_1671->g_1484.s604b)).y) < (0x4553C406B2F4BE38L <= (safe_mul_func_uint8_t_u_u(((safe_div_func_uint32_t_u_u((safe_div_func_uint8_t_u_u(((((((*p_1671->g_357) = (safe_rshift_func_int16_t_s_s((((VECTOR(int32_t, 16))(mad_sat(((VECTOR(int32_t, 2))(l_1493.sb8)).yxxyxxyxyyyxyxxy, ((VECTOR(int32_t, 8))(l_1494.s36621671)).s1533577674252115, ((VECTOR(int32_t, 4))(clz(((VECTOR(int32_t, 8))(l_1495.s67345216)).odd))).wywxwyzwyyxzywwy))).s4 != ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(0x4E5686BDL, (-9L))).yyxxyxyx)).hi)).x), 11))) <= ((safe_rshift_func_int16_t_s_u((safe_rshift_func_uint16_t_u_u((((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(sub_sat(((VECTOR(int32_t, 16))(((l_1501 = l_1500) != (((*l_1515) &= ((((safe_mul_func_int8_t_s_s((safe_add_func_int16_t_s_s((FAKE_DIVERGE(p_1671->group_0_offset, get_group_id(0), 10) & ((safe_mul_func_uint16_t_u_u(GROUP_DIVERGE(0, 1), ((void*)0 == &p_1671->g_1316[2][1][2]))) != (safe_unary_minus_func_uint32_t_u(l_1468.s3)))), (((*l_1391) = ((((((safe_div_func_uint8_t_u_u(((safe_lshift_func_uint16_t_u_s(((((0xD395B98DL && (((safe_add_func_int8_t_s_s(l_1493.s8, l_1494.s2)) , l_1468.s2) || 3UL)) & 1UL) ^ 0x246400ED2EA0143EL) >= GROUP_DIVERGE(0, 1)), 8)) , p_1671->g_237.s6), GROUP_DIVERGE(1, 1))) < l_1494.s3) , 0x27E3L) , (*p_1671->g_1095)) >= (*p_1671->g_1095)) , l_1494.s1)) & l_1468.s8))), p_1671->g_1220.w)) , p_1671->g_1316[2][1][2]) , (void*)0) == (void*)0)) , (void*)0)), ((VECTOR(int32_t, 4))((-6L))), l_1468.se, ((VECTOR(int32_t, 4))(1L)), l_1494.s0, 0x498E406DL, ((VECTOR(int32_t, 4))(0x725C39BBL)))).sdc, ((VECTOR(int32_t, 2))(0x6758350AL))))), 0L, (-1L))).w | l_1493.sa), (*p_1671->g_59))), 0)) && (*l_3))) ^ (*p_1671->g_59)) > 0L) , l_1516), l_1468.sa)), 5UL)) && 1UL), l_1468.sa)))), (*p_1671->g_59))), p_1671->g_60)) == l_1517) , 0x3202B6EDL);
                    }
                    else
                    { /* block id: 606 */
                        return (**p_1671->g_1446);
                    }
                    if (p_1671->g_677)
                        goto lbl_1518;
                    (*p_1671->g_358) &= 0x56316D1DL;
                }
            }
            (*p_1671->g_1087) = (7L && (((safe_add_func_uint32_t_u_u((p_1671->g_241.s4 ^= (safe_mul_func_int8_t_s_s(0L, (((safe_add_func_int64_t_s_s((((((VECTOR(uint32_t, 2))(add_sat(((VECTOR(uint32_t, 8))(mul_hi(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 2))(mul_hi(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 8))(((~((((((safe_sub_func_int32_t_s_s(((VECTOR(int32_t, 4))(safe_clamp_func(VECTOR(int32_t, 4),VECTOR(int32_t, 4),((VECTOR(int32_t, 8))(0x4D3D0A84L, l_1527, ((*p_1671->g_357) = ((((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(l_1528.yxxx)).zxxxzyxz)))).s33)))).hi | (--p_1671->g_1431.s0)) && (l_1532 |= p_1671->g_1242.s2))), (((safe_lshift_func_int16_t_s_s((((*l_3) | 0x71L) , ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(((VECTOR(int16_t, 2))(0x5ADBL, 0x1AC4L)))).yyxyxyyy)).s4), 11)) && ((*p_1671->g_525) ^= (*l_3))) , ((((((~((safe_mul_func_int16_t_s_s((safe_mul_func_uint8_t_u_u(((*l_3) = (safe_mul_func_int16_t_s_s((0x1A76960BL || ((VECTOR(int32_t, 16))(((*p_1671->g_357) = (18446744073709551615UL == FAKE_DIVERGE(p_1671->global_1_offset, get_global_id(1), 10))), 0x56B5C4A9L, (*l_3), (*p_1671->g_357), 0x045CC691L, 7L, ((VECTOR(int32_t, 2))(7L)), ((VECTOR(int32_t, 4))((-1L))), 5L, 0x1BCDDEFFL, (-1L), 2L)).s8), (**p_1671->g_1094)))), 0x17L)), l_1541)) >= (*p_1671->g_1087))) || (**p_1671->g_1094)) || l_1542) | (*p_1671->g_525)) == p_1671->g_1078) , 0x7AAF846EL)), ((VECTOR(int32_t, 4))(1L)))).lo, ((VECTOR(int32_t, 4))(2L)), ((VECTOR(int32_t, 4))(0L))))).z, p_1671->g_237.s0)) || (*l_3)) , (*p_1671->g_1095)) , (*p_1671->g_59)) && (*p_1671->g_1095)) < l_1252.x)) || (*l_3)), ((VECTOR(uint32_t, 2))(0xC2C11C5AL)), ((VECTOR(uint32_t, 2))(0x91B54D3BL)), ((VECTOR(uint32_t, 2))(4294967293UL)), 0UL)).s31)), ((VECTOR(uint32_t, 2))(0x7A10328AL))))))).xyxxyxyx, ((VECTOR(uint32_t, 8))(0xD3926416L))))).s62, ((VECTOR(uint32_t, 2))(6UL))))).lo <= l_1543) & l_849.sc) , (*l_3)), 0x1BD21CB9620085B9L)) ^ l_1039) & p_1671->g_616.z)))), p_1671->g_324.sd)) , (**p_1671->g_1094)) != 1UL));
        }
        else
        { /* block id: 621 */
            int32_t *l_1568[2][2] = {{&p_1671->g_789,&p_1671->g_789},{&p_1671->g_789,&p_1671->g_789}};
            uint32_t l_1569 = 0x3519EECBL;
            int i, j;
            (*p_1671->g_357) = (((safe_lshift_func_uint8_t_u_s(p_1671->g_123[2], (((((VECTOR(int16_t, 16))(l_1546.s5701714042472560)).sd & (safe_mul_func_uint16_t_u_u((safe_mod_func_uint32_t_u_u((safe_mod_func_uint8_t_u_u((safe_sub_func_int16_t_s_s(((VECTOR(int16_t, 16))(clz(((VECTOR(int16_t, 2))(sub_sat(((VECTOR(int16_t, 16))(safe_clamp_func(VECTOR(int16_t, 16),int16_t,((VECTOR(int16_t, 16))(0x4955L, 5L, (**p_1671->g_1094), ((VECTOR(int16_t, 4))(p_1671->g_1555.s6420)), 1L, (-1L), 0x3EDEL, ((+((safe_sub_func_uint16_t_u_u(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(min(((VECTOR(uint16_t, 2))(65529UL, 0xEE69L)), (uint16_t)((6L | 6UL) | ((((*p_1671->g_59) && (safe_div_func_int16_t_s_s((safe_lshift_func_uint8_t_u_u((p_1671->g_1326.x != (((safe_rshift_func_int16_t_s_u(((**p_1671->g_1446) > (((((~GROUP_DIVERGE(0, 1)) && (safe_div_func_uint64_t_u_u(((*l_3) & (((*p_1671->g_1094) = (void*)0) != &p_1671->g_748)), p_1671->g_219))) , 0xF47537B9L) , l_1568[0][1]) != (void*)0)), 14)) <= p_1671->g_934.y) <= FAKE_DIVERGE(p_1671->global_2_offset, get_global_id(2), 10))), p_1671->g_569[0])), (-1L)))) , l_1569) , l_1570.sf))))), 0x1B75L, 0xCED0L, 0x1091L, ((VECTOR(uint16_t, 2))(0xB533L)), 65534UL, 0xCA8FL, 0x7EE3L, ((VECTOR(uint16_t, 2))(65527UL)), 0x5B86L, ((VECTOR(uint16_t, 2))(0xB1BAL)), 65527UL)).s4, (*p_1671->g_59))) == 5L)) > p_1671->g_532.x), l_1569, ((VECTOR(int16_t, 4))(0x0496L)))), (int16_t)l_1569, (int16_t)0x3F8AL))).s10, ((VECTOR(int16_t, 2))(0x4714L))))).xyyyyxxyyxxxxxyy))).sd, p_1671->g_1484.sc)), p_1671->g_616.w)), 0xEDD8F4A9L)), p_1671->g_1484.sc))) < p_1671->g_38.y) && l_1569))) , (*l_3)) , (**p_1671->g_1396));
        }
    }
    else
    { /* block id: 625 */
        uint64_t *l_1582 = (void*)0;
        uint64_t *l_1583 = (void*)0;
        uint64_t *l_1584[5][8] = {{(void*)0,(void*)0,(void*)0,&p_1671->g_446,(void*)0,&p_1671->g_446,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1671->g_446,(void*)0,&p_1671->g_446,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1671->g_446,(void*)0,&p_1671->g_446,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1671->g_446,(void*)0,&p_1671->g_446,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1671->g_446,(void*)0,&p_1671->g_446,(void*)0,(void*)0}};
        int32_t l_1585 = 0x1637AA13L;
        int64_t l_1589 = 0x15AEB3F0582165A4L;
        int32_t l_1590 = (-7L);
        int8_t **l_1595 = &p_1671->g_525;
        int32_t **l_1604 = (void*)0;
        int32_t ***l_1603 = &l_1604;
        int32_t ****l_1602 = &l_1603;
        uint32_t l_1605 = 4294967289UL;
        uint16_t l_1608 = 0xF517L;
        uint32_t l_1609 = 0UL;
        int32_t *l_1664 = &l_1585;
        int32_t *l_1665 = (void*)0;
        int32_t *l_1666 = &l_877;
        int32_t *l_1667 = &l_1590;
        int i, j;
        if (((((~(safe_mod_func_uint16_t_u_u(((*p_1671->g_1094) != (void*)0), ((*p_1671->g_59) = (FAKE_DIVERGE(p_1671->global_1_offset, get_global_id(1), 10) , ((VECTOR(uint16_t, 4))(hadd(((VECTOR(uint16_t, 2))(1UL, 0x01F7L)).yyxy, ((VECTOR(uint16_t, 8))(l_1575.ywxwwzzw)).odd))).w))))) >= (((safe_lshift_func_int16_t_s_s((*l_3), 15)) & ((l_1590 |= ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 2))(safe_clamp_func(VECTOR(uint64_t, 2),uint64_t,((VECTOR(uint64_t, 2))(0UL, 0x7F5819776BA90F50L)), (uint64_t)(safe_lshift_func_int8_t_s_u(((safe_lshift_func_int8_t_s_u((((l_877 = 18446744073709551615UL) | (*l_3)) <= (l_1585 || (((**p_1671->g_1094) &= ((*l_3) < l_1586)) | (safe_mul_func_int8_t_s_s(((l_1585 <= 0L) != l_1589), (*p_1671->g_525)))))), 6)) <= (*l_3)), 6)), (uint64_t)18446744073709551613UL))))))).yxyx)).x) == 0x0450CE8F9FA82C9DL)) != (*l_3))) & (-1L)) , (**p_1671->g_1446)))
        { /* block id: 630 */
            uint64_t l_1607 = 18446744073709551615UL;
            (*p_1671->g_358) = (l_1589 , (safe_sub_func_int8_t_s_s((((((&p_1671->g_1095 != (void*)0) >= (-8L)) | (l_1609 |= ((((VECTOR(int32_t, 16))(((l_1589 || ((safe_add_func_int64_t_s_s(1L, (((*l_3) = (l_1595 != (p_1671->g_524[1] = &p_1671->g_525))) == (safe_div_func_uint32_t_u_u(((safe_rshift_func_uint16_t_u_s((((VECTOR(int8_t, 2))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))((-1L), 0L)), ((VECTOR(int8_t, 2))(mul_hi(((VECTOR(int8_t, 4))(p_1671->g_1600.xxyx)).odd, ((VECTOR(int8_t, 4))(sub_sat(((VECTOR(int8_t, 4))(safe_clamp_func(VECTOR(int8_t, 4),int8_t,((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(p_1671->g_1601.s2044)), ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(1L, 0x0CL)), (-4L), 0x15L)))).odd, (int8_t)(((((((void*)0 != l_1602) , l_1605) | (-4L)) > (-9L)) != FAKE_DIVERGE(p_1671->global_0_offset, get_global_id(0), 10)) || 0x515AL), (int8_t)p_1671->g_1606))), ((VECTOR(int8_t, 4))(0L))))).hi))), (*p_1671->g_525), ((VECTOR(int8_t, 4))(0x28L)), l_1607, ((VECTOR(int8_t, 4))(0x02L)), 1L, 6L)).s0a)).yyyyyxyyxxyyxyxx)))).sdd)).lo , l_1607), (**p_1671->g_1094))) || 0x3CC3C54CL), (-6L)))))) > FAKE_DIVERGE(p_1671->global_0_offset, get_global_id(0), 10))) && (*l_3)), ((VECTOR(int32_t, 8))(5L)), (-1L), 2L, 0L, 0x62C01056L, (**p_1671->g_1446), 0x5A519C51L, 4L)).s1 && l_1608) < l_1607))) && 0xD7139B044EB6CEBCL) , (*l_3)), l_1607)));
        }
        else
        { /* block id: 635 */
            uint64_t **l_1617[1];
            int16_t l_1625 = 0x6869L;
            int64_t l_1631 = 0x51DD8E69DF9DF018L;
            VECTOR(int32_t, 16) l_1634 = (VECTOR(int32_t, 16))((-8L), (VECTOR(int32_t, 4))((-8L), (VECTOR(int32_t, 2))((-8L), 1L), 1L), 1L, (-8L), 1L, (VECTOR(int32_t, 2))((-8L), 1L), (VECTOR(int32_t, 2))((-8L), 1L), (-8L), 1L, (-8L), 1L);
            int32_t *l_1643 = &p_1671->g_4;
            int32_t *l_1644 = &l_912;
            int32_t *l_1645 = &p_1671->g_399[6];
            int32_t *l_1646 = (void*)0;
            int32_t *l_1647 = &l_877;
            int32_t *l_1648 = &p_1671->g_8;
            int32_t *l_1649 = (void*)0;
            int32_t *l_1650 = &l_912;
            int32_t *l_1651 = (void*)0;
            int32_t *l_1652 = &p_1671->g_156[5];
            int32_t *l_1653 = (void*)0;
            int32_t *l_1654 = &l_1585;
            int32_t *l_1655 = (void*)0;
            int32_t *l_1656[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            uint16_t l_1657 = 0x48BBL;
            int i;
            for (i = 0; i < 1; i++)
                l_1617[i] = &l_1584[0][4];
            (*l_3) &= ((*p_1671->g_357) = (safe_rshift_func_uint16_t_u_s((safe_unary_minus_func_uint32_t_u(GROUP_DIVERGE(1, 1))), 9)));
            if ((safe_mod_func_uint64_t_u_u((*l_3), (*l_3))))
            { /* block id: 638 */
                int32_t l_1628 = 0L;
                int32_t l_1635 = (-8L);
                uint32_t *l_1636 = &l_1038;
                uint32_t *l_1637 = &p_1671->g_219;
                int32_t *l_1638 = &p_1671->g_1407[1][5];
                uint16_t *l_1639 = (void*)0;
                (*p_1671->g_1640) = func_85((((*l_1638) &= (((*l_1637) = ((*l_1636) = (safe_add_func_uint8_t_u_u(p_1671->g_119, ((l_1635 = (+((((void*)0 != l_1617[0]) != (safe_unary_minus_func_int32_t_s(((safe_div_func_int8_t_s_s(((safe_mul_func_uint16_t_u_u((safe_rshift_func_uint8_t_u_s((l_1625 | (((1L ^ (GROUP_DIVERGE(2, 1) > (safe_rshift_func_int8_t_s_u(l_1628, (safe_sub_func_uint64_t_u_u((l_1631 = 1UL), ((safe_rshift_func_uint16_t_u_s(((*p_1671->g_59) ^= (((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(mul_hi(((VECTOR(int32_t, 8))(l_1634.sd7bd689e)), ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))((**p_1671->g_1161), l_1628, (*l_3), ((VECTOR(int32_t, 2))(0x6FBF97B1L)), (-2L), 0x32426B56L, 0x1630EFEBL)).s5356265567356546)).even))).s3053255117253517)).s6 && l_1628)), (*p_1671->g_1095))) < l_1628))))))) , l_1628) | l_1628)), l_1634.sc)), 0L)) | l_1628), l_1634.s2)) <= l_1634.s0)))) || FAKE_DIVERGE(p_1671->global_0_offset, get_global_id(0), 10)))) == (*p_1671->g_357)))))) | (*p_1671->g_358))) , (*l_3)), l_1639, p_1671->g_516.w, p_1671);
            }
            else
            { /* block id: 646 */
                int32_t *l_1642 = (void*)0;
                int32_t **l_1641 = &l_1642;
                (*p_1671->g_1087) &= (((*l_1641) = &p_1671->g_789) == &p_1671->g_789);
                (*l_3) = l_1631;
            }
            l_1657++;
            (*p_1671->g_358) = (((*p_1671->g_59) = (*p_1671->g_59)) && (safe_mul_func_uint8_t_u_u(p_1671->g_160.s1, ((safe_lshift_func_uint16_t_u_u(0UL, 11)) , GROUP_DIVERGE(2, 1)))));
        }
        --l_1668;
    }
    return (*l_3);
}


/* ------------------------------------------ */
/* 
 * reads : p_1671->g_446 p_1671->g_60 p_1671->g_782 p_1671->g_59
 * writes: p_1671->g_446 p_1671->g_60 p_1671->g_119
 */
uint16_t  func_15(uint32_t  p_16, int32_t * p_17, int32_t * p_18, struct S0 * p_1671)
{ /* block id: 295 */
    uint16_t l_784 = 65533UL;
    for (p_1671->g_446 = 18; (p_1671->g_446 > 18); p_1671->g_446++)
    { /* block id: 298 */
        uint8_t l_780 = 0x0FL;
        int32_t l_783 = 0x2C7AC0F0L;
        for (p_1671->g_60 = 0; (p_1671->g_60 >= 5); p_1671->g_60++)
        { /* block id: 301 */
            uint32_t l_779 = 1UL;
            int64_t *l_781 = &p_1671->g_119;
            l_780 = l_779;
            l_783 = (((*l_781) = l_779) && ((VECTOR(int64_t, 16))(p_1671->g_782.s724b6a003a9ddf40)).sc);
        }
    }
    ++l_784;
    return (*p_1671->g_59);
}


/* ------------------------------------------ */
/* 
 * reads : p_1671->g_395 p_1671->g_396 p_1671->g_394 p_1671->g_550 p_1671->g_399 p_1671->g_4 p_1671->g_405 p_1671->g_219 p_1671->g_616 p_1671->g_358 p_1671->g_156 p_1671->g_38
 * writes: p_1671->g_396 p_1671->g_399 p_1671->g_219
 */
uint32_t  func_24(int32_t  p_25, int32_t  p_26, int32_t * p_27, int32_t * p_28, struct S0 * p_1671)
{ /* block id: 256 */
    uint32_t **l_699 = (void*)0;
    int32_t l_704 = 0x41ED6FC1L;
    int32_t l_706 = 0x1EE9FCADL;
    int32_t l_707 = 0x627C325AL;
    int32_t l_708 = 0L;
    int32_t l_709 = 0L;
    int32_t l_710 = 0x1B4147E7L;
    int32_t l_711[5][4] = {{0x44252FD3L,1L,0x44252FD3L,0x44252FD3L},{0x44252FD3L,1L,0x44252FD3L,0x44252FD3L},{0x44252FD3L,1L,0x44252FD3L,0x44252FD3L},{0x44252FD3L,1L,0x44252FD3L,0x44252FD3L},{0x44252FD3L,1L,0x44252FD3L,0x44252FD3L}};
    int32_t l_712 = 0x2DD85345L;
    int32_t *l_752 = (void*)0;
    int32_t *l_753 = &p_1671->g_156[5];
    int32_t *l_754 = &p_1671->g_156[5];
    int32_t *l_755 = &p_1671->g_156[5];
    int32_t *l_756 = &l_711[1][0];
    int32_t *l_757 = &l_711[1][0];
    int32_t *l_758 = (void*)0;
    int32_t *l_759 = (void*)0;
    int32_t *l_760 = &l_706;
    int32_t *l_761 = &p_1671->g_156[5];
    int32_t *l_762 = &l_708;
    int32_t *l_763 = &p_1671->g_399[3];
    int32_t *l_764 = &p_1671->g_156[1];
    int32_t *l_765 = &p_1671->g_156[5];
    int32_t *l_766 = &l_704;
    int32_t *l_767 = &l_708;
    int32_t *l_768[8] = {&l_710,&l_710,&l_710,&l_710,&l_710,&l_710,&l_710,&l_710};
    int8_t l_769[3];
    int32_t l_770 = (-10L);
    uint64_t l_771 = 0UL;
    int i, j;
    for (i = 0; i < 3; i++)
        l_769[i] = 0x0FL;
    (**p_1671->g_394) = (*p_1671->g_395);
    if (((void*)0 == l_699))
    { /* block id: 258 */
        int64_t l_700[8] = {1L,1L,1L,1L,1L,1L,1L,1L};
        int32_t l_701 = 2L;
        int32_t *l_702 = &p_1671->g_399[4];
        VECTOR(int32_t, 2) l_703 = (VECTOR(int32_t, 2))(0x2BAF9344L, 0x7DEAA14CL);
        int32_t *l_705[6] = {&p_1671->g_399[6],&p_1671->g_399[6],&p_1671->g_399[6],&p_1671->g_399[6],&p_1671->g_399[6],&p_1671->g_399[6]};
        uint8_t l_713 = 249UL;
        int i;
        (*p_1671->g_395) = (*p_1671->g_395);
        l_713++;
    }
    else
    { /* block id: 261 */
        VECTOR(uint8_t, 2) l_722 = (VECTOR(uint8_t, 2))(1UL, 255UL);
        int16_t *l_732 = (void*)0;
        uint16_t l_734 = 0x4D01L;
        int i;
        for (p_25 = 7; (p_25 != 18); p_25 = safe_add_func_int8_t_s_s(p_25, 5))
        { /* block id: 264 */
            int16_t *l_731 = (void*)0;
            int32_t l_733 = 0x6AC68CE2L;
            int32_t l_735 = 0x371B0E2AL;
            (*p_28) = (l_735 ^= (((safe_sub_func_uint16_t_u_u(((safe_rshift_func_uint8_t_u_s(((VECTOR(uint8_t, 8))(l_722.xxyyxyyy)).s6, 1)) ^ (+((0x063602350B2C091EL | ((p_1671->g_550.s5 <= (safe_rshift_func_int8_t_s_u((((safe_rshift_func_int16_t_s_u((p_25 || ((((safe_add_func_int16_t_s_s(((safe_add_func_int32_t_s_s((-5L), (((((*p_28) , ((l_731 == l_732) < (l_711[0][0] >= ((((p_25 | l_733) || (*p_27)) , l_733) & p_25)))) <= l_733) , 0x0B7B2195761DF6AFL) ^ 0x54EF69D98DE09527L))) && 0x26L), l_734)) , (-6L)) > (*p_28)) | 0x68C9L)), 3)) , p_1671->g_405) != l_722.y), p_26))) | GROUP_DIVERGE(0, 1))) != l_710))), 0x76F9L)) , FAKE_DIVERGE(p_1671->group_0_offset, get_group_id(0), 10)) & (*p_28)));
        }
        for (p_26 = 21; (p_26 != (-30)); p_26 = safe_sub_func_uint8_t_u_u(p_26, 2))
        { /* block id: 270 */
            int32_t l_738 = 1L;
            (*p_28) |= 2L;
            (*p_28) |= l_738;
            (*p_28) |= l_722.y;
        }
        return p_25;
    }
    for (l_706 = (-23); (l_706 == 14); l_706++)
    { /* block id: 279 */
        int32_t *l_745 = (void*)0;
        int32_t *l_746 = (void*)0;
        int32_t *l_747[5] = {&l_709,&l_709,&l_709,&l_709,&l_709};
        uint32_t l_749 = 0x36FBF404L;
        int i;
        for (l_704 = 0; (l_704 > 16); l_704 = safe_add_func_int32_t_s_s(l_704, 3))
        { /* block id: 282 */
            for (p_1671->g_219 = 26; (p_1671->g_219 > 6); p_1671->g_219 = safe_sub_func_int16_t_s_s(p_1671->g_219, 3))
            { /* block id: 285 */
                return p_1671->g_616.x;
            }
        }
        (*p_28) = (*p_28);
        if ((*p_1671->g_358))
            break;
        --l_749;
    }
    ++l_771;
    return p_1671->g_38.y;
}


/* ------------------------------------------ */
/* 
 * reads : p_1671->g_498 p_1671->g_358 p_1671->g_156 p_1671->g_646 p_1671->g_516 p_1671->g_399 p_1671->g_172 p_1671->g_59 p_1671->g_60 p_1671->g_38 p_1671->g_347 p_1671->g_325 p_1671->g_322 p_1671->g_405 p_1671->g_364 p_1671->g_583 p_1671->g_394 p_1671->g_395 p_1671->g_525 p_1671->g_220 p_1671->g_35 p_1671->g_159 p_1671->g_4 p_1671->g_8 p_1671->g_123 p_1671->g_120 p_1671->g_259 p_1671->g_215
 * writes: p_1671->g_581 p_1671->g_156 p_1671->g_369 p_1671->g_38 p_1671->g_347 p_1671->g_60 p_1671->g_325 p_1671->g_358 p_1671->g_646 p_1671->g_123 p_1671->g_578 p_1671->g_405 p_1671->g_120
 */
int32_t  func_39(uint16_t * p_40, int32_t  p_41, struct S0 * p_1671)
{ /* block id: 218 */
    int16_t l_631 = 0x4B2CL;
    int8_t ***l_632 = &p_1671->g_524[3];
    int8_t ***l_634[2];
    int8_t ****l_633 = &l_634[0];
    uint64_t *l_635 = (void*)0;
    uint64_t **l_636 = &p_1671->g_279;
    int16_t *l_649[4][5] = {{(void*)0,(void*)0,(void*)0,(void*)0,&p_1671->g_325},{(void*)0,(void*)0,(void*)0,(void*)0,&p_1671->g_325},{(void*)0,(void*)0,(void*)0,(void*)0,&p_1671->g_325},{(void*)0,(void*)0,(void*)0,(void*)0,&p_1671->g_325}};
    int32_t *l_650 = (void*)0;
    int32_t *l_651 = (void*)0;
    int16_t *l_663 = (void*)0;
    int32_t l_696 = 4L;
    int64_t l_698 = (-6L);
    int i, j;
    for (i = 0; i < 2; i++)
        l_634[i] = &p_1671->g_524[2];
    (*p_1671->g_358) ^= (l_631 < ((p_1671->g_581.x = ((l_631 , l_632) == ((*l_633) = l_632))) ^ (p_1671->g_498.s9 , (&p_41 != (void*)0))));
    if ((((l_636 == l_636) , ((p_1671->g_38.x &= (((((safe_add_func_int8_t_s_s(p_41, ((((safe_mul_func_int8_t_s_s((0UL >= (safe_unary_minus_func_uint8_t_u((248UL & (safe_div_func_int32_t_s_s((l_631 , 0x2F57C9BFL), ((l_631 || (safe_add_func_uint16_t_u_u(FAKE_DIVERGE(p_1671->local_1_offset, get_local_id(1), 10), ((((VECTOR(uint16_t, 2))(p_1671->g_646.s06)).lo < (p_1671->g_369.y = ((safe_rshift_func_uint8_t_u_s(p_1671->g_516.w, 5)) & l_631))) , p_1671->g_399[4])))) && (*p_1671->g_358)))))))), p_1671->g_172.s1)) & 0x0D3EA869L) < p_41) | FAKE_DIVERGE(p_1671->local_1_offset, get_local_id(1), 10)))) , l_631) >= p_1671->g_156[7]) | (*p_1671->g_59)) != p_41)) , l_650)) == l_651))
    { /* block id: 224 */
        int16_t l_652 = 0x062DL;
        l_652 ^= ((void*)0 != &p_1671->g_279);
        for (p_1671->g_347 = (-18); (p_1671->g_347 <= 17); p_1671->g_347 = safe_add_func_int32_t_s_s(p_1671->g_347, 3))
        { /* block id: 228 */
            for (p_1671->g_60 = (-16); (p_1671->g_60 <= 29); p_1671->g_60 = safe_add_func_uint32_t_u_u(p_1671->g_60, 9))
            { /* block id: 231 */
                if ((*p_1671->g_358))
                    break;
            }
            if (p_41)
                continue;
        }
    }
    else
    { /* block id: 236 */
        VECTOR(int32_t, 16) l_659 = (VECTOR(int32_t, 16))(0x43C43410L, (VECTOR(int32_t, 4))(0x43C43410L, (VECTOR(int32_t, 2))(0x43C43410L, 0L), 0L), 0L, 0x43C43410L, 0L, (VECTOR(int32_t, 2))(0x43C43410L, 0L), (VECTOR(int32_t, 2))(0x43C43410L, 0L), 0x43C43410L, 0L, 0x43C43410L, 0L);
        int16_t *l_662 = (void*)0;
        int32_t l_676 = 1L;
        int32_t **l_680 = &p_1671->g_358;
        uint16_t *l_685 = (void*)0;
        uint16_t *l_686 = (void*)0;
        uint16_t *l_687 = (void*)0;
        uint16_t *l_688[3];
        int32_t *l_695[3][2] = {{&p_1671->g_399[6],&p_1671->g_399[6]},{&p_1671->g_399[6],&p_1671->g_399[6]},{&p_1671->g_399[6],&p_1671->g_399[6]}};
        uint16_t l_697 = 0xCD1CL;
        int i, j;
        for (i = 0; i < 3; i++)
            l_688[i] = (void*)0;
        for (p_1671->g_325 = 0; (p_1671->g_325 != (-1)); p_1671->g_325--)
        { /* block id: 239 */
            uint8_t l_678 = 0xEBL;
            uint64_t **l_679 = &p_1671->g_279;
            (*p_1671->g_358) &= l_659.s7;
            (*p_1671->g_358) = ((((safe_mul_func_uint16_t_u_u((&p_1671->g_325 == (l_663 = (l_662 = &p_1671->g_325))), (++(*p_1671->g_59)))) , ((safe_div_func_uint64_t_u_u((l_636 != ((0x2C48L > p_1671->g_322.x) , (((safe_add_func_int64_t_s_s(0x516EDD0A6EA67CE7L, ((safe_lshift_func_int8_t_s_s((((safe_add_func_uint32_t_u_u((safe_mod_func_uint16_t_u_u((*p_1671->g_59), ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(safe_clamp_func(VECTOR(int16_t, 2),VECTOR(int16_t, 2),((VECTOR(int16_t, 16))((l_676 = p_1671->g_446), 0x0631L, (-1L), 7L, p_41, p_1671->g_677, (-6L), ((VECTOR(int16_t, 2))(0L)), p_1671->g_507.s4, ((VECTOR(int16_t, 2))(0x2924L)), ((VECTOR(int16_t, 2))(3L)), 1L, 0x07DEL)).sfa, ((VECTOR(int16_t, 2))(0x4589L)), ((VECTOR(int16_t, 2))((-1L)))))), 0x3EA4L, 0x7E1CL)).y)), 0x17C3124DL)) < l_678) ^ 5L), p_41)) , p_1671->g_405))) & 0x1CD5254FL) , l_679))), p_1671->g_364.x)) <= l_678)) < 0x5834L) > p_41);
        }
        (*l_680) = func_85((p_1671->g_583.x == 0xC6L), func_52(((*l_680) = &p_1671->g_156[0]), ((safe_mod_func_int64_t_s_s(((p_1671->g_646.s1 ^= ((*p_1671->g_59) , ((*p_40) &= (safe_rshift_func_int16_t_s_s((~p_1671->g_498.s8), p_41))))) == ((VECTOR(int16_t, 4))(((((safe_mul_func_uint16_t_u_u((p_1671->g_578.z = (safe_div_func_int8_t_s_s(((safe_rshift_func_int8_t_s_u((((*p_1671->g_394) == ((((+(p_1671->g_322.z < ((*p_1671->g_525) = ((l_696 = ((void*)0 == &l_680)) > 2L)))) , p_1671->g_498.sa) != (-5L)) , &l_650)) & p_41), 6)) , p_41), p_1671->g_38.x))), l_697)) && 0x3B3DD4A6L) < p_41) , p_41), p_1671->g_220, 0x4624L, 0x35F0L)).x), p_1671->g_583.x)) , p_1671->g_35.w), l_698, p_1671), p_1671->g_215.se, p_1671);
    }
    return (*p_1671->g_358);
}


/* ------------------------------------------ */
/* 
 * reads : p_1671->g_220 p_1671->g_237 p_1671->g_4 p_1671->g_325 p_1671->g_324 p_1671->g_156 p_1671->g_219 p_1671->g_159 p_1671->g_8 p_1671->g_123 p_1671->g_59 p_1671->g_60 p_1671->g_120 p_1671->g_259 p_1671->g_358 p_1671->g_215 p_1671->g_21 p_1671->g_172 p_1671->g_119 p_1671->g_347 p_1671->g_399 p_1671->g_357 p_1671->g_446 p_1671->g_35 p_1671->g_369 p_1671->g_578 p_1671->g_581 p_1671->g_583 p_1671->g_160 p_1671->g_525 p_1671->g_319 p_1671->g_528 p_1671->g_616 p_1671->g_618
 * writes: p_1671->g_220 p_1671->g_325 p_1671->g_60 p_1671->g_120 p_1671->g_38 p_1671->g_156 p_1671->g_123 p_1671->g_405 p_1671->g_357 p_1671->g_119 p_1671->g_347 p_1671->g_172 p_1671->g_322 p_1671->g_581
 */
uint16_t * func_42(int32_t  p_43, uint32_t  p_44, int64_t  p_45, uint16_t * p_46, int32_t * p_47, struct S0 * p_1671)
{ /* block id: 115 */
    int32_t l_413 = 0x29ECB924L;
    VECTOR(int64_t, 16) l_421 = (VECTOR(int64_t, 16))(0x3DE94D0BBD608300L, (VECTOR(int64_t, 4))(0x3DE94D0BBD608300L, (VECTOR(int64_t, 2))(0x3DE94D0BBD608300L, (-5L)), (-5L)), (-5L), 0x3DE94D0BBD608300L, (-5L), (VECTOR(int64_t, 2))(0x3DE94D0BBD608300L, (-5L)), (VECTOR(int64_t, 2))(0x3DE94D0BBD608300L, (-5L)), 0x3DE94D0BBD608300L, (-5L), 0x3DE94D0BBD608300L, (-5L));
    int64_t l_426 = 0x05B47BA39F0677D0L;
    int32_t *l_435 = &l_413;
    int32_t l_462 = 0x508145B7L;
    int32_t l_466 = 0x05A8AE78L;
    VECTOR(int32_t, 8) l_470 = (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, (-2L)), (-2L)), (-2L), 1L, (-2L));
    int32_t **l_488 = &p_1671->g_357;
    int32_t ***l_487 = &l_488;
    VECTOR(uint16_t, 4) l_499 = (VECTOR(uint16_t, 4))(8UL, (VECTOR(uint16_t, 2))(8UL, 0xC4CCL), 0xC4CCL);
    VECTOR(int8_t, 16) l_541 = (VECTOR(int8_t, 16))(0x36L, (VECTOR(int8_t, 4))(0x36L, (VECTOR(int8_t, 2))(0x36L, 0L), 0L), 0L, 0x36L, 0L, (VECTOR(int8_t, 2))(0x36L, 0L), (VECTOR(int8_t, 2))(0x36L, 0L), 0x36L, 0L, 0x36L, 0L);
    VECTOR(uint8_t, 16) l_571 = (VECTOR(uint8_t, 16))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 2UL), 2UL), 2UL, 0UL, 2UL, (VECTOR(uint8_t, 2))(0UL, 2UL), (VECTOR(uint8_t, 2))(0UL, 2UL), 0UL, 2UL, 0UL, 2UL);
    int32_t ****l_576 = &l_487;
    int32_t l_577 = 0x0A0F9877L;
    VECTOR(uint64_t, 2) l_579 = (VECTOR(uint64_t, 2))(3UL, 0xE7546837CEB4387FL);
    VECTOR(uint64_t, 4) l_580 = (VECTOR(uint64_t, 4))(0x8457AEF10EB57CCBL, (VECTOR(uint64_t, 2))(0x8457AEF10EB57CCBL, 0xB5D3342768C4D219L), 0xB5D3342768C4D219L);
    VECTOR(uint64_t, 16) l_582 = (VECTOR(uint64_t, 16))(0x5CA948D5FF7321E0L, (VECTOR(uint64_t, 4))(0x5CA948D5FF7321E0L, (VECTOR(uint64_t, 2))(0x5CA948D5FF7321E0L, 1UL), 1UL), 1UL, 0x5CA948D5FF7321E0L, 1UL, (VECTOR(uint64_t, 2))(0x5CA948D5FF7321E0L, 1UL), (VECTOR(uint64_t, 2))(0x5CA948D5FF7321E0L, 1UL), 0x5CA948D5FF7321E0L, 1UL, 0x5CA948D5FF7321E0L, 1UL);
    uint8_t *l_604 = (void*)0;
    uint8_t *l_605[8][1][3] = {{{&p_1671->g_120,(void*)0,&p_1671->g_120}},{{&p_1671->g_120,(void*)0,&p_1671->g_120}},{{&p_1671->g_120,(void*)0,&p_1671->g_120}},{{&p_1671->g_120,(void*)0,&p_1671->g_120}},{{&p_1671->g_120,(void*)0,&p_1671->g_120}},{{&p_1671->g_120,(void*)0,&p_1671->g_120}},{{&p_1671->g_120,(void*)0,&p_1671->g_120}},{{&p_1671->g_120,(void*)0,&p_1671->g_120}}};
    uint16_t l_625 = 0x7DDAL;
    int8_t ***l_626 = &p_1671->g_524[3];
    uint32_t l_627 = 4294967295UL;
    int16_t *l_628 = &p_1671->g_325;
    int64_t *l_629[9];
    int i, j, k;
    for (i = 0; i < 9; i++)
        l_629[i] = &p_1671->g_119;
    for (p_43 = (-9); (p_43 == 19); p_43 = safe_add_func_uint16_t_u_u(p_43, 5))
    { /* block id: 118 */
        int8_t l_408 = 0x7CL;
        VECTOR(int16_t, 2) l_422 = (VECTOR(int16_t, 2))(0x67DFL, 0x2D49L);
        uint16_t *l_427 = &p_1671->g_347;
        int32_t l_459 = 0x5AE71EFDL;
        int32_t l_460 = 0x036F4438L;
        int32_t l_461[5][4][6] = {{{1L,0x3D9A83BEL,0x3CD713DEL,1L,0x3B9D7D76L,0x0B587DA3L},{1L,0x3D9A83BEL,0x3CD713DEL,1L,0x3B9D7D76L,0x0B587DA3L},{1L,0x3D9A83BEL,0x3CD713DEL,1L,0x3B9D7D76L,0x0B587DA3L},{1L,0x3D9A83BEL,0x3CD713DEL,1L,0x3B9D7D76L,0x0B587DA3L}},{{1L,0x3D9A83BEL,0x3CD713DEL,1L,0x3B9D7D76L,0x0B587DA3L},{1L,0x3D9A83BEL,0x3CD713DEL,1L,0x3B9D7D76L,0x0B587DA3L},{1L,0x3D9A83BEL,0x3CD713DEL,1L,0x3B9D7D76L,0x0B587DA3L},{1L,0x3D9A83BEL,0x3CD713DEL,1L,0x3B9D7D76L,0x0B587DA3L}},{{1L,0x3D9A83BEL,0x3CD713DEL,1L,0x3B9D7D76L,0x0B587DA3L},{1L,0x3D9A83BEL,0x3CD713DEL,1L,0x3B9D7D76L,0x0B587DA3L},{1L,0x3D9A83BEL,0x3CD713DEL,1L,0x3B9D7D76L,0x0B587DA3L},{1L,0x3D9A83BEL,0x3CD713DEL,1L,0x3B9D7D76L,0x0B587DA3L}},{{1L,0x3D9A83BEL,0x3CD713DEL,1L,0x3B9D7D76L,0x0B587DA3L},{1L,0x3D9A83BEL,0x3CD713DEL,1L,0x3B9D7D76L,0x0B587DA3L},{1L,0x3D9A83BEL,0x3CD713DEL,1L,0x3B9D7D76L,0x0B587DA3L},{1L,0x3D9A83BEL,0x3CD713DEL,1L,0x3B9D7D76L,0x0B587DA3L}},{{1L,0x3D9A83BEL,0x3CD713DEL,1L,0x3B9D7D76L,0x0B587DA3L},{1L,0x3D9A83BEL,0x3CD713DEL,1L,0x3B9D7D76L,0x0B587DA3L},{1L,0x3D9A83BEL,0x3CD713DEL,1L,0x3B9D7D76L,0x0B587DA3L},{1L,0x3D9A83BEL,0x3CD713DEL,1L,0x3B9D7D76L,0x0B587DA3L}}};
        VECTOR(int32_t, 4) l_473 = (VECTOR(int32_t, 4))(8L, (VECTOR(int32_t, 2))(8L, 0x1AA4A00FL), 0x1AA4A00FL);
        int32_t **l_485[9] = {&l_435,&l_435,&l_435,&l_435,&l_435,&l_435,&l_435,&l_435,&l_435};
        int32_t ***l_484[1];
        VECTOR(int32_t, 16) l_502 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x0C5484A3L), 0x0C5484A3L), 0x0C5484A3L, (-1L), 0x0C5484A3L, (VECTOR(int32_t, 2))((-1L), 0x0C5484A3L), (VECTOR(int32_t, 2))((-1L), 0x0C5484A3L), (-1L), 0x0C5484A3L, (-1L), 0x0C5484A3L);
        VECTOR(uint64_t, 8) l_526 = (VECTOR(uint64_t, 8))(18446744073709551612UL, (VECTOR(uint64_t, 4))(18446744073709551612UL, (VECTOR(uint64_t, 2))(18446744073709551612UL, 0x0E6B8DF7288E8550L), 0x0E6B8DF7288E8550L), 0x0E6B8DF7288E8550L, 18446744073709551612UL, 0x0E6B8DF7288E8550L);
        int i, j, k;
        for (i = 0; i < 1; i++)
            l_484[i] = &l_485[2];
        if (l_408)
        { /* block id: 119 */
            int8_t l_409 = 1L;
            uint8_t *l_410 = &p_1671->g_220;
            VECTOR(uint8_t, 4) l_416 = (VECTOR(uint8_t, 4))(8UL, (VECTOR(uint8_t, 2))(8UL, 255UL), 255UL);
            int16_t *l_423 = (void*)0;
            int16_t *l_424 = (void*)0;
            int16_t *l_425 = &p_1671->g_325;
            int i;
            if (((l_409 < ((*l_410) |= ((VECTOR(uint8_t, 2))(0x45L, 0xDEL)).lo)) == (safe_rshift_func_int8_t_s_s(((p_1671->g_237.s6 , l_413) == (((*p_1671->g_358) = ((safe_rshift_func_int8_t_s_u((((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))(l_416.zzzx)).yxzxzwyy)).s1 | ((*p_47) >= ((safe_lshift_func_uint8_t_u_u((safe_add_func_int16_t_s_s((((VECTOR(int64_t, 16))(l_421.s252b737892175baf)).s2 && ((((VECTOR(int16_t, 4))(((VECTOR(int16_t, 4))(l_422.xyxy)))).z < (!((0x53B64AF0L != (p_46 == (l_408 , func_52(func_85((((((-4L) != ((*l_425) |= ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 4))(clz(((VECTOR(int16_t, 2))(1L, 2L)).yxxy))).zywyzzyy)).s0)) , (-5L)) <= p_45) , p_43), p_46, p_1671->g_324.s9, p_1671), l_413, p_1671->g_219, p_1671)))) , p_1671->g_21.x))) != l_416.z)), 0x9E90L)), l_422.y)) >= (*p_1671->g_159)))), p_1671->g_172.s2)) != l_422.y)) & l_426)), 6))))
            { /* block id: 123 */
                return l_427;
            }
            else
            { /* block id: 125 */
                for (p_1671->g_325 = 0; (p_1671->g_325 < 19); p_1671->g_325 = safe_add_func_int64_t_s_s(p_1671->g_325, 6))
                { /* block id: 128 */
                    for (l_426 = 0; (l_426 > 1); l_426 = safe_add_func_uint64_t_u_u(l_426, 1))
                    { /* block id: 131 */
                        return &p_1671->g_347;
                    }
                }
            }
        }
        else
        { /* block id: 136 */
            int32_t *l_432 = &p_1671->g_399[5];
            int32_t **l_433 = (void*)0;
            int32_t **l_434 = &p_1671->g_357;
            int32_t l_463 = 0x4D8EA76DL;
            int32_t l_464 = 0x3A300C76L;
            int32_t l_465 = 0L;
            int32_t l_467 = 0L;
            int32_t l_468 = (-6L);
            int32_t l_469[1][3][8] = {{{(-8L),(-8L),(-8L),(-8L),(-8L),(-8L),(-8L),(-8L)},{(-8L),(-8L),(-8L),(-8L),(-8L),(-8L),(-8L),(-8L)},{(-8L),(-8L),(-8L),(-8L),(-8L),(-8L),(-8L),(-8L)}}};
            int32_t l_471[6][7] = {{(-1L),0x5E4C97F8L,0x05ADC1CCL,0x5E4C97F8L,(-1L),(-1L),0x5E4C97F8L},{(-1L),0x5E4C97F8L,0x05ADC1CCL,0x5E4C97F8L,(-1L),(-1L),0x5E4C97F8L},{(-1L),0x5E4C97F8L,0x05ADC1CCL,0x5E4C97F8L,(-1L),(-1L),0x5E4C97F8L},{(-1L),0x5E4C97F8L,0x05ADC1CCL,0x5E4C97F8L,(-1L),(-1L),0x5E4C97F8L},{(-1L),0x5E4C97F8L,0x05ADC1CCL,0x5E4C97F8L,(-1L),(-1L),0x5E4C97F8L},{(-1L),0x5E4C97F8L,0x05ADC1CCL,0x5E4C97F8L,(-1L),(-1L),0x5E4C97F8L}};
            int32_t l_472 = 0x04AE0E50L;
            uint32_t l_474 = 0x9CA01CE7L;
            int i, j, k;
            (*l_434) = (l_432 = &p_1671->g_399[6]);
            (*l_434) = l_435;
            for (p_1671->g_119 = 0; (p_1671->g_119 > 3); ++p_1671->g_119)
            { /* block id: 142 */
                uint16_t *l_438 = &p_1671->g_60;
                VECTOR(uint64_t, 16) l_445 = (VECTOR(uint64_t, 16))(7UL, (VECTOR(uint64_t, 4))(7UL, (VECTOR(uint64_t, 2))(7UL, 0x5711F722E97C101DL), 0x5711F722E97C101DL), 0x5711F722E97C101DL, 7UL, 0x5711F722E97C101DL, (VECTOR(uint64_t, 2))(7UL, 0x5711F722E97C101DL), (VECTOR(uint64_t, 2))(7UL, 0x5711F722E97C101DL), 7UL, 0x5711F722E97C101DL, 7UL, 0x5711F722E97C101DL);
                int32_t *l_454[3][5];
                uint8_t *l_457 = (void*)0;
                uint8_t *l_458 = &p_1671->g_220;
                int i, j;
                for (i = 0; i < 3; i++)
                {
                    for (j = 0; j < 5; j++)
                        l_454[i][j] = &p_1671->g_399[6];
                }
                (*l_434) = func_85(p_43, l_438, (((safe_add_func_uint32_t_u_u(((p_44 | (+p_1671->g_156[7])) && ((safe_div_func_int64_t_s_s((safe_div_func_int64_t_s_s(p_45, 0x710CADBFEB82C09EL)), ((VECTOR(uint64_t, 2))(l_445.sce)).even)) == (l_445.s0 < ((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(1L, 0L)).yxxyxyyx)).s3))), (((((((((*p_1671->g_59) != p_1671->g_4) , (*p_46)) & (-8L)) >= (*p_1671->g_59)) && p_1671->g_399[6]) < 65535UL) >= (*p_1671->g_357)) ^ 0xFBL))) > l_422.x) != p_1671->g_446), p_1671);
                (*l_435) = (safe_rshift_func_int16_t_s_u((1L > (&p_47 != &p_47)), (((*p_1671->g_358) > l_445.s8) | ((((VECTOR(int64_t, 2))((-6L), 0x4D10E4000DC1BAAAL)).hi || (safe_unary_minus_func_uint8_t_u((safe_lshift_func_uint8_t_u_s(p_45, (safe_lshift_func_int16_t_s_s(p_1671->g_35.z, 11))))))) || (l_454[1][4] == (void*)0)))));
                (*p_1671->g_358) |= ((safe_mul_func_uint8_t_u_u(0x8FL, p_1671->g_369.x)) | (((*l_458) = (0x4F19A027L || 1L)) > p_45));
                l_474--;
            }
        }
        for (p_1671->g_347 = 0; (p_1671->g_347 == 24); ++p_1671->g_347)
        { /* block id: 152 */
            int8_t *l_483 = &p_1671->g_123[0];
            int32_t ****l_486 = &l_484[0];
            VECTOR(uint64_t, 2) l_527 = (VECTOR(uint64_t, 2))(0x5409D1613E3703D4L, 0x281A3252EB74CCD8L);
            VECTOR(uint16_t, 4) l_534 = (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 2UL), 2UL);
            int32_t l_564 = 0L;
            int32_t l_565 = 0x2F3193EDL;
            int i;
            (1 + 1);
        }
        if ((*p_47))
            break;
    }
    (*l_488) = func_85((((safe_div_func_uint16_t_u_u(((((*l_576) = &l_488) == ((l_577 ^ (FAKE_DIVERGE(p_1671->group_2_offset, get_group_id(2), 10) > ((VECTOR(uint16_t, 2))(0xF84BL, 1UL)).lo)) , &p_1671->g_395)) , ((VECTOR(uint16_t, 16))(p_1671->g_578.wxxxxxwzyyzywzxy)).sf), (((((((VECTOR(uint64_t, 2))(l_579.xy)).hi != ((VECTOR(uint64_t, 4))(rotate(((VECTOR(uint64_t, 8))(mul_hi(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))(rotate(((VECTOR(uint64_t, 2))(1UL, 18446744073709551609UL)).yyxxyyxx, ((VECTOR(uint64_t, 8))(abs_diff(((VECTOR(uint64_t, 4))(l_580.ywzw)).ywzxxwyw, ((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 16))(p_1671->g_581.wzwzzzwzwwzwzxwz)).s6f34)), ((VECTOR(uint64_t, 2))(0x609FF910C42DEE3DL, 18446744073709551615UL)), 0x61E53751BCFB18B9L, 0x88DD9AC16DB6F6E9L)).s5503622045424352)).odd)))))), ((VECTOR(uint64_t, 2))(l_582.sbd)), ((VECTOR(uint64_t, 2))(0x46A0987BA3B969E4L, 0x32765A56A178404FL)), (**l_488), 18446744073709551615UL, 1UL, 0xB31B3668EF630404L)).lo, ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(mad_sat(((VECTOR(uint64_t, 8))(sub_sat(((VECTOR(uint64_t, 8))(rhadd(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 8))(max(((VECTOR(uint64_t, 2))(mad_sat(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 16))(rotate(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(0xFD9038B079D9FB16L, 18446744073709551615UL)).yxxx)).zywxzxxwyzzxwzwz)), ((VECTOR(uint64_t, 4))(abs(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 8))((*l_435), ((VECTOR(int64_t, 2))(0x73E6CDDD68BD067DL, 0x5F58E5C880D4E361L)), ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 16))(0x2DCD18E17A027FD3L, ((VECTOR(int64_t, 4))(p_1671->g_583.yxxx)), ((VECTOR(int64_t, 8))(((**l_488) && (safe_sub_func_uint32_t_u_u((safe_div_func_int32_t_s_s((safe_rshift_func_int8_t_s_u(((*p_1671->g_525) = (safe_mul_func_int16_t_s_s((safe_rshift_func_uint8_t_u_s((p_1671->g_172.s4 = ((p_1671->g_160.s4 < ((safe_div_func_uint8_t_u_u(((void*)0 != &p_1671->g_395), (**l_488))) | p_43)) & 0x0BAAA31C4C071BCBL)), 1)), p_1671->g_259.z))), 6)), 0x5ADD8CD1L)), (*p_47)))), ((VECTOR(int64_t, 4))((-1L))), 0x7CE733923D90719AL, (-5L), (-4L))), 0x37BD3E9353F6AA7EL, (-1L), 0x6777F8867249A872L)).s3354)).z, ((VECTOR(int64_t, 2))(0L)), 0x206409A4ABB164D2L, 0x2AAF1E35511C5AB4L)))).lo))).wxzxwzzwzwzzzyxz))).even)).s15, ((VECTOR(uint64_t, 2))(1UL)), ((VECTOR(uint64_t, 2))(1UL))))).xyxyxxxx, ((VECTOR(uint64_t, 8))(9UL))))))), ((VECTOR(uint64_t, 8))(0x7C4F04591586B0E9L))))), ((VECTOR(uint64_t, 8))(1UL))))).hi, ((VECTOR(uint64_t, 4))(0x112864FB8A7021A4L)), ((VECTOR(uint64_t, 4))(0UL))))).wzxyzxww))))).lo, ((VECTOR(uint64_t, 4))(18446744073709551608UL))))).y) >= 0xD0CDEF56B0884BE6L) & 0xADDC3CE757BE97DEL) != p_1671->g_369.y) , (*p_46)))) < (**l_488)) >= p_1671->g_319.s4), &p_1671->g_60, p_1671->g_528.s7, p_1671);
    (*p_1671->g_358) = (((VECTOR(int64_t, 8))((p_45 = (safe_mul_func_uint8_t_u_u((((safe_mul_func_int8_t_s_s((safe_sub_func_uint8_t_u_u((0L && ((*l_628) = ((*p_47) , (p_1671->g_21.x , ((safe_rshift_func_uint8_t_u_s((p_1671->g_322.y = 0x7DL), (safe_lshift_func_uint8_t_u_s((safe_sub_func_int64_t_s_s(((safe_rshift_func_uint8_t_u_u((safe_sub_func_uint16_t_u_u(((*p_46) |= (safe_add_func_uint32_t_u_u((((((((VECTOR(uint64_t, 8))(p_1671->g_616.zywzxyxw)).s5 < 0xD49958C290F23000L) | ((p_1671->g_581.z &= (p_44 , 1UL)) ^ (safe_unary_minus_func_uint32_t_u((((VECTOR(int8_t, 16))(p_1671->g_618.ywywywyyywyyyzyy)).s9 == (p_1671->g_172.s3 |= (safe_div_func_uint16_t_u_u((safe_add_func_uint32_t_u_u((((((((safe_mod_func_int64_t_s_s((((*p_1671->g_525) = (((*p_1671->g_59) || ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 8))(abs_diff(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(0x1A6BL, 0x18A7L)).yyyxyyxxyxyyyxyy)).even, ((VECTOR(uint16_t, 16))(abs(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 8))(min(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(mul_hi(((VECTOR(uint16_t, 2))(65535UL, 65530UL)).xyxx, ((VECTOR(uint16_t, 2))(65531UL, 2UL)).xxxy))).xzwzwwwxxwywxyxy)).odd, (uint16_t)(((254UL == 253UL) , 1L) <= GROUP_DIVERGE(2, 1))))).s42)).xxxyyxxxxxxyxxyx))).hi))).s3, 65530UL, ((VECTOR(uint16_t, 2))(3UL)), (**l_488), (*p_1671->g_59), 0x7B21L, 0xA50DL)).s3) == l_625)) || p_1671->g_123[2]), 1L)) , p_43) <= p_45) , (void*)0) == l_626) ^ p_1671->g_325) >= 0x5229E320L), 9L)), 6UL)))))))) , p_43) & p_45) & 0x0DB1L), l_627))), 0x69A0L)), 7)) , 0x653DCDCDE734FE19L), (****l_576))), 6)))) && (**l_488)))))), FAKE_DIVERGE(p_1671->local_2_offset, get_local_id(2), 10))), (*l_435))) , 0x7917E833B364D492L) && (**l_488)), GROUP_DIVERGE(1, 1)))), (***l_487), 0L, p_1671->g_35.x, (***l_487), ((VECTOR(int64_t, 2))((-1L))), 0L)).s2 | 18446744073709551611UL);
    return &p_1671->g_60;
}


/* ------------------------------------------ */
/* 
 * reads : p_1671->g_159 p_1671->g_4 p_1671->g_8 p_1671->g_123 p_1671->g_59 p_1671->g_60 p_1671->g_120 p_1671->g_259 p_1671->g_156 p_1671->g_358 p_1671->g_394 p_1671->g_399 p_1671->g_215 p_1671->g_322
 * writes: p_1671->g_123 p_1671->g_156 p_1671->g_60 p_1671->g_259 p_1671->g_405
 */
uint16_t * func_52(int32_t * p_53, int32_t  p_54, int8_t  p_55, struct S0 * p_1671)
{ /* block id: 76 */
    VECTOR(uint64_t, 2) l_298 = (VECTOR(uint64_t, 2))(0x32CE3211752853B9L, 0xDA247D1C63A18E2AL);
    int32_t l_299 = 0x0B17583DL;
    int32_t **l_311[1];
    int32_t ***l_310 = &l_311[0];
    VECTOR(uint8_t, 4) l_320 = (VECTOR(uint8_t, 4))(0x02L, (VECTOR(uint8_t, 2))(0x02L, 0x45L), 0x45L);
    VECTOR(uint8_t, 16) l_321 = (VECTOR(uint8_t, 16))(249UL, (VECTOR(uint8_t, 4))(249UL, (VECTOR(uint8_t, 2))(249UL, 0xBEL), 0xBEL), 0xBEL, 249UL, 0xBEL, (VECTOR(uint8_t, 2))(249UL, 0xBEL), (VECTOR(uint8_t, 2))(249UL, 0xBEL), 249UL, 0xBEL, 249UL, 0xBEL);
    uint32_t *l_323 = &p_1671->g_219;
    VECTOR(uint64_t, 16) l_359 = (VECTOR(uint64_t, 16))(18446744073709551615UL, (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0xAB0A368298F3230BL), 0xAB0A368298F3230BL), 0xAB0A368298F3230BL, 18446744073709551615UL, 0xAB0A368298F3230BL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0xAB0A368298F3230BL), (VECTOR(uint64_t, 2))(18446744073709551615UL, 0xAB0A368298F3230BL), 18446744073709551615UL, 0xAB0A368298F3230BL, 18446744073709551615UL, 0xAB0A368298F3230BL);
    VECTOR(int8_t, 2) l_365 = (VECTOR(int8_t, 2))(0x36L, (-1L));
    VECTOR(int16_t, 16) l_370 = (VECTOR(int16_t, 16))(0x3D73L, (VECTOR(int16_t, 4))(0x3D73L, (VECTOR(int16_t, 2))(0x3D73L, 0x2A28L), 0x2A28L), 0x2A28L, 0x3D73L, 0x2A28L, (VECTOR(int16_t, 2))(0x3D73L, 0x2A28L), (VECTOR(int16_t, 2))(0x3D73L, 0x2A28L), 0x3D73L, 0x2A28L, 0x3D73L, 0x2A28L);
    VECTOR(int16_t, 16) l_372 = (VECTOR(int16_t, 16))((-4L), (VECTOR(int16_t, 4))((-4L), (VECTOR(int16_t, 2))((-4L), 0x07EEL), 0x07EEL), 0x07EEL, (-4L), 0x07EEL, (VECTOR(int16_t, 2))((-4L), 0x07EEL), (VECTOR(int16_t, 2))((-4L), 0x07EEL), (-4L), 0x07EEL, (-4L), 0x07EEL);
    VECTOR(int8_t, 16) l_392 = (VECTOR(int8_t, 16))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0L), 0L), 0L, 0L, 0L, (VECTOR(int8_t, 2))(0L, 0L), (VECTOR(int8_t, 2))(0L, 0L), 0L, 0L, 0L, 0L);
    int i;
    for (i = 0; i < 1; i++)
        l_311[i] = &p_1671->g_159;
lbl_312:
    l_299 = (safe_sub_func_uint64_t_u_u(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(l_298.yx)).xyxyxxxyxxxyyyyy)).s9, (5UL == (*p_1671->g_159))));
    for (p_54 = (-13); (p_54 < 19); p_54++)
    { /* block id: 80 */
        int8_t *l_304 = &p_1671->g_123[2];
        int32_t l_307 = 0x2CAED801L;
        int32_t **l_309 = (void*)0;
        int32_t ***l_308[5][9][2] = {{{&l_309,&l_309},{&l_309,&l_309},{&l_309,&l_309},{&l_309,&l_309},{&l_309,&l_309},{&l_309,&l_309},{&l_309,&l_309},{&l_309,&l_309},{&l_309,&l_309}},{{&l_309,&l_309},{&l_309,&l_309},{&l_309,&l_309},{&l_309,&l_309},{&l_309,&l_309},{&l_309,&l_309},{&l_309,&l_309},{&l_309,&l_309},{&l_309,&l_309}},{{&l_309,&l_309},{&l_309,&l_309},{&l_309,&l_309},{&l_309,&l_309},{&l_309,&l_309},{&l_309,&l_309},{&l_309,&l_309},{&l_309,&l_309},{&l_309,&l_309}},{{&l_309,&l_309},{&l_309,&l_309},{&l_309,&l_309},{&l_309,&l_309},{&l_309,&l_309},{&l_309,&l_309},{&l_309,&l_309},{&l_309,&l_309},{&l_309,&l_309}},{{&l_309,&l_309},{&l_309,&l_309},{&l_309,&l_309},{&l_309,&l_309},{&l_309,&l_309},{&l_309,&l_309},{&l_309,&l_309},{&l_309,&l_309},{&l_309,&l_309}}};
        VECTOR(int16_t, 8) l_327 = (VECTOR(int16_t, 8))(0x044CL, (VECTOR(int16_t, 4))(0x044CL, (VECTOR(int16_t, 2))(0x044CL, (-1L)), (-1L)), (-1L), 0x044CL, (-1L));
        int8_t l_360 = 0x15L;
        VECTOR(int8_t, 2) l_363 = (VECTOR(int8_t, 2))(0L, (-1L));
        VECTOR(int16_t, 2) l_368 = (VECTOR(int16_t, 2))((-3L), 0x2577L);
        VECTOR(int16_t, 2) l_371 = (VECTOR(int16_t, 2))(0x4686L, 0x74DEL);
        uint8_t *l_377[6];
        int i, j, k;
        for (i = 0; i < 6; i++)
            l_377[i] = &p_1671->g_120;
        p_1671->g_156[5] ^= (safe_rshift_func_int8_t_s_u(((*l_304) |= (0x60D1L >= (-4L))), (((safe_sub_func_uint8_t_u_u((l_307 <= (l_298.y < (l_308[1][4][0] == l_310))), ((*p_1671->g_59) < (p_1671->g_120 || (&p_55 != l_304))))) != p_1671->g_259.w) & p_54)));
        if (l_307)
            goto lbl_312;
    }
    (*p_1671->g_358) &= 0x0EFF966DL;
    for (p_1671->g_60 = 29; (p_1671->g_60 != 3); p_1671->g_60 = safe_sub_func_int16_t_s_s(p_1671->g_60, 9))
    { /* block id: 109 */
        VECTOR(int8_t, 8) l_393 = (VECTOR(int8_t, 8))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x6FL), 0x6FL), 0x6FL, (-1L), 0x6FL);
        uint64_t *l_400 = (void*)0;
        uint64_t *l_401 = (void*)0;
        uint64_t *l_402 = (void*)0;
        uint64_t *l_403 = (void*)0;
        uint64_t *l_404[8][8][1] = {{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}}};
        int i, j, k;
        (*p_1671->g_358) = ((((p_1671->g_405 = ((((***l_310) > (((***l_310) >= ((VECTOR(int8_t, 16))(0x04L, 0x6FL, ((VECTOR(int8_t, 2))(l_392.s6f)), ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(l_393.s3722)).xyzzwzyz)).s65)), (-3L), 0x29L)), (p_1671->g_394 == ((p_1671->g_259.x = (safe_add_func_int64_t_s_s(0x510270BE5B72DCEEL, p_1671->g_399[6]))) , &l_311[0])), ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(5L, 0x11L)).xyxy)), 0x35L, 0L, 0x68L)).s6) == p_1671->g_215.s4)) == ((VECTOR(int32_t, 4))(((((!(***l_310)) != 0UL) == (***l_310)) ^ p_1671->g_322.z), ((VECTOR(int32_t, 2))((-7L))), 0L)).w) , 1UL)) & p_55) <= p_1671->g_215.s0) == l_393.s3);
    }
    return &p_1671->g_347;
}


/* ------------------------------------------ */
/* 
 * reads : p_1671->g_38 p_1671->g_60 p_1671->g_172 p_1671->g_59 p_1671->g_111 p_1671->g_123 p_1671->g_21 p_1671->g_160 p_1671->g_156 p_1671->g_4 p_1671->g_215 p_1671->g_159 p_1671->g_219 p_1671->g_237 p_1671->g_241 p_1671->g_259 p_1671->g_8 p_1671->g_275
 * writes: p_1671->g_123 p_1671->g_156 p_1671->g_219 p_1671->g_220 p_1671->g_60 p_1671->g_279 p_1671->g_120 p_1671->g_38
 */
int32_t * func_56(uint16_t * p_57, uint32_t  p_58, struct S0 * p_1671)
{ /* block id: 46 */
    int16_t l_163 = 0x3A15L;
    int8_t *l_164 = &p_1671->g_123[1];
    VECTOR(uint8_t, 16) l_165 = (VECTOR(uint8_t, 16))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 3UL), 3UL), 3UL, 1UL, 3UL, (VECTOR(uint8_t, 2))(1UL, 3UL), (VECTOR(uint8_t, 2))(1UL, 3UL), 1UL, 3UL, 1UL, 3UL);
    VECTOR(uint64_t, 2) l_181 = (VECTOR(uint64_t, 2))(0x9511BF24C82959A0L, 0x80BAFC0C8250707CL);
    uint64_t *l_192 = (void*)0;
    uint64_t **l_193[5];
    uint64_t *l_194 = (void*)0;
    int64_t *l_195[1][6] = {{&p_1671->g_119,(void*)0,&p_1671->g_119,&p_1671->g_119,(void*)0,&p_1671->g_119}};
    int32_t l_196 = 0x258026FCL;
    int32_t l_197[9];
    uint8_t l_198 = 247UL;
    int32_t *l_199 = &p_1671->g_156[2];
    int32_t **l_204[9] = {&p_1671->g_159,&p_1671->g_159,&p_1671->g_159,&p_1671->g_159,&p_1671->g_159,&p_1671->g_159,&p_1671->g_159,&p_1671->g_159,&p_1671->g_159};
    int32_t ***l_203 = &l_204[4];
    VECTOR(int8_t, 2) l_214 = (VECTOR(int8_t, 2))((-10L), 0x70L);
    uint32_t *l_218 = &p_1671->g_219;
    uint16_t *l_221 = &p_1671->g_60;
    VECTOR(uint32_t, 8) l_236 = (VECTOR(uint32_t, 8))(0xFC7F9658L, (VECTOR(uint32_t, 4))(0xFC7F9658L, (VECTOR(uint32_t, 2))(0xFC7F9658L, 0xC0796E71L), 0xC0796E71L), 0xC0796E71L, 0xFC7F9658L, 0xC0796E71L);
    VECTOR(uint32_t, 8) l_238 = (VECTOR(uint32_t, 8))(6UL, (VECTOR(uint32_t, 4))(6UL, (VECTOR(uint32_t, 2))(6UL, 0x214296BAL), 0x214296BAL), 0x214296BAL, 6UL, 0x214296BAL);
    VECTOR(uint32_t, 2) l_239 = (VECTOR(uint32_t, 2))(1UL, 2UL);
    VECTOR(uint32_t, 16) l_240 = (VECTOR(uint32_t, 16))(4294967290UL, (VECTOR(uint32_t, 4))(4294967290UL, (VECTOR(uint32_t, 2))(4294967290UL, 0xEDF72888L), 0xEDF72888L), 0xEDF72888L, 4294967290UL, 0xEDF72888L, (VECTOR(uint32_t, 2))(4294967290UL, 0xEDF72888L), (VECTOR(uint32_t, 2))(4294967290UL, 0xEDF72888L), 4294967290UL, 0xEDF72888L, 4294967290UL, 0xEDF72888L);
    VECTOR(uint32_t, 8) l_242 = (VECTOR(uint32_t, 8))(0x4EBF0AE5L, (VECTOR(uint32_t, 4))(0x4EBF0AE5L, (VECTOR(uint32_t, 2))(0x4EBF0AE5L, 0xCEED2223L), 0xCEED2223L), 0xCEED2223L, 0x4EBF0AE5L, 0xCEED2223L);
    int32_t *l_243 = &l_196;
    uint32_t *l_244[4];
    VECTOR(int8_t, 8) l_266 = (VECTOR(int8_t, 8))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 2L), 2L), 2L, 1L, 2L);
    VECTOR(int16_t, 4) l_272 = (VECTOR(int16_t, 4))(0x2C3BL, (VECTOR(int16_t, 2))(0x2C3BL, (-6L)), (-6L));
    int i, j;
    for (i = 0; i < 5; i++)
        l_193[i] = &l_192;
    for (i = 0; i < 9; i++)
        l_197[i] = 0x7FDD8A1FL;
    for (i = 0; i < 4; i++)
        l_244[i] = (void*)0;
    (*l_199) = ((safe_lshift_func_int8_t_s_u(((*l_164) = (l_163 ^ p_1671->g_38.y)), ((VECTOR(uint8_t, 2))(l_165.sa3)).lo)) && ((safe_mul_func_int16_t_s_s(p_1671->g_60, ((safe_mul_func_uint8_t_u_u((safe_lshift_func_uint8_t_u_s(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(p_1671->g_172.s5121)), ((*p_1671->g_59) != ((((safe_rshift_func_uint8_t_u_u((safe_rshift_func_int8_t_s_s((l_163 | (safe_div_func_int8_t_s_s(((safe_mul_func_int8_t_s_s((p_1671->g_111 , l_163), GROUP_DIVERGE(2, 1))) , (l_197[1] &= ((((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))(clz(((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(l_181.xy)).xxxyyxxx)).hi)).zxxwzzxw))), ((VECTOR(uint64_t, 2))(0x38CBB5997E5F227DL, 0xC6485764B534227FL)), ((VECTOR(uint64_t, 2))(clz(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 16))(rotate(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 8))(min(((VECTOR(uint64_t, 2))(0UL, 0xE25D3AA45CE9BA21L)).xyyyyxxy, ((VECTOR(uint64_t, 4))(((safe_add_func_uint8_t_u_u((safe_mod_func_int64_t_s_s((l_196 |= (safe_mod_func_uint16_t_u_u(((safe_div_func_uint64_t_u_u((safe_add_func_uint32_t_u_u(GROUP_DIVERGE(1, 1), (((*l_164) |= ((&p_1671->g_111 == (l_194 = l_192)) == p_1671->g_38.y)) == p_1671->g_21.w))), p_1671->g_38.y)) , (*p_1671->g_59)), (*p_57)))), 0x044356CBF89ECF18L)), 0x5AL)) < p_1671->g_160.s1), p_58, 0xD509144ECA2155B1L, 0x79EC1F001D5F7C6FL)).yxxxyyyx))).s60)).xxxyxyyxyyxyxxyy, ((VECTOR(uint64_t, 16))(18446744073709551608UL))))).lo)).s32))), ((VECTOR(uint64_t, 4))(18446744073709551615UL)))).sbe)).yxyxxxxy)).s1320623075125571)).s0 || GROUP_DIVERGE(0, 1)) || l_181.y))), p_58))), p_58)), 3)) >= l_181.x) , p_58) | l_163)), 0x0CL, ((VECTOR(uint8_t, 2))(248UL)), ((VECTOR(uint8_t, 2))(0xE3L)), ((VECTOR(uint8_t, 4))(255UL)), 2UL, 254UL)).s4, l_181.x)), l_198)) && (-2L)))) , (*p_57)));
    if (l_163)
        goto lbl_202;
lbl_202:
    (*l_199) = (safe_lshift_func_uint8_t_u_u(p_1671->g_156[3], p_1671->g_4));
    (*l_199) = ((((*l_203) = &l_199) != &p_1671->g_159) , (0UL < (safe_lshift_func_uint16_t_u_s((((+(p_57 != ((p_1671->g_220 = (+(safe_add_func_uint32_t_u_u(0UL, ((*l_218) = (0x5479L && (((safe_mod_func_uint16_t_u_u(((safe_unary_minus_func_uint32_t_u(((safe_rshift_func_int8_t_s_u(((VECTOR(int8_t, 2))(sub_sat(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))(l_214.yxxxyyxx)).s71)), ((VECTOR(int8_t, 4))(p_1671->g_215.sefd5)).odd))).even, 1)) ^ ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 16))(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))((safe_add_func_int32_t_s_s(0x1C7848F6L, (*l_199))), 1L, 0x4EE256FD15697580L, 7L)), ((p_1671->g_123[2] | p_58) != p_1671->g_123[2]), 1L, 0x46443E69B7E66DB8L, (-6L))), ((VECTOR(int64_t, 8))((-6L))))).odd)).s2))) | p_1671->g_215.sf), (***l_203))) >= p_58) >= p_58))))))) , l_221))) && 0x6AF810B9L) & 0L), 0))));
    if (((p_1671->g_38.y < (safe_mul_func_int16_t_s_s((safe_lshift_func_uint8_t_u_u(((VECTOR(uint8_t, 4))(0x30L, (((safe_mul_func_uint8_t_u_u((&l_204[3] != &l_204[8]), ((*l_164) = ((p_1671->g_172.s7 , (p_58 < (safe_rshift_func_uint8_t_u_u(((p_1671->g_160.s1 ^ ((*l_243) &= ((((safe_add_func_uint16_t_u_u((safe_div_func_uint32_t_u_u(((*l_218)--), ((VECTOR(uint32_t, 16))(rhadd(((VECTOR(uint32_t, 16))(l_236.s4321042074631467)), ((VECTOR(uint32_t, 4))(safe_mad24_func_uint32_t_u_u_u(VECTOR(uint32_t, 4),((VECTOR(uint32_t, 8))(0x7FD013EDL, ((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 8))(p_1671->g_237.s23325016)).s57)), 9UL, ((VECTOR(uint32_t, 4))(l_238.s3323)))).even, ((VECTOR(uint32_t, 8))(safe_mad24_func_uint32_t_u_u_u(VECTOR(uint32_t, 8),((VECTOR(uint32_t, 8))(l_239.yxyxxyyy)), ((VECTOR(uint32_t, 8))(l_240.sf7b402e1)), ((VECTOR(uint32_t, 16))(sub_sat(((VECTOR(uint32_t, 2))(p_1671->g_241.sb3)).yyxyyyxxyyxyxxyy, ((VECTOR(uint32_t, 2))(l_242.s12)).xxxxyyxxyxyxyyxx))).lo))).even, ((VECTOR(uint32_t, 4))(mad_sat(((VECTOR(uint32_t, 4))(0x46457C4EL, p_1671->g_156[5], 4294967295UL, 0UL)), ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 8))(rhadd(((VECTOR(uint32_t, 4))((((p_1671->g_156[5] || p_1671->g_241.s5) , l_243) == &p_1671->g_156[3]), 0xEE2EE7ABL, 0x4F3CCC8CL, 0xB646C3CCL)).wwxwxwyy, ((VECTOR(uint32_t, 8))(1UL))))))).even, ((VECTOR(uint32_t, 4))(0xA606BAACL)))))))).zyzyxyxyzzxyywwz))).sb)), (***l_203))) & p_58) == p_58) < 0x52E5L))) , 4UL), 6)))) || 1UL)))) & p_1671->g_215.sb) , p_1671->g_38.y), 0UL, 255UL)).x, 7)), p_58))) <= p_58))
    { /* block id: 62 */
        uint8_t l_264 = 255UL;
        int16_t l_265 = (-8L);
        int64_t *l_271 = &p_1671->g_119;
        int32_t *l_280 = &p_1671->g_156[3];
        int32_t l_281 = (-1L);
        int32_t l_282 = 0x7ECDE3A1L;
        uint16_t l_283 = 65535UL;
        uint32_t l_286[8];
        int i;
        for (i = 0; i < 8; i++)
            l_286[i] = 0UL;
        (*l_243) = ((safe_sub_func_int64_t_s_s(p_1671->g_160.s7, (((++(*l_221)) >= p_1671->g_172.s7) , ((safe_rshift_func_uint16_t_u_s((((-7L) ^ (((((safe_mul_func_uint8_t_u_u(((safe_mul_func_uint16_t_u_u((((safe_rshift_func_int8_t_s_u(((safe_add_func_int8_t_s_s(((((VECTOR(uint64_t, 8))(18446744073709551610UL, 0x72EF309068607F20L, 0xAD676504F610159FL, ((VECTOR(uint64_t, 2))(sub_sat(((VECTOR(uint64_t, 4))(p_1671->g_259.zwzx)).lo, ((VECTOR(uint64_t, 4))(rhadd(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))((p_58 <= ((((p_1671->g_38.y && (((0x39EE405AL == ((0x2A246DCAA265524AL ^ p_1671->g_38.x) || ((safe_mod_func_uint32_t_u_u(((((VECTOR(uint8_t, 2))(253UL, 254UL)).lo <= (safe_div_func_int8_t_s_s(((GROUP_DIVERGE(2, 1) && 65535UL) <= p_1671->g_219), p_1671->g_219))) == l_264), 0x6F88C86EL)) != GROUP_DIVERGE(0, 1)))) <= 1UL) < p_58)) < l_265) | (*p_1671->g_59)) , l_266.s7)), ((VECTOR(uint64_t, 2))(0x0122506C6AAB39F8L)), ((VECTOR(uint64_t, 2))(0x2E5476D4B34DCCABL)), l_265, 18446744073709551615UL, 0x8C10A26E96902E5CL)), 18446744073709551615UL, 0xC3C27BE7CA82C3EBL, p_1671->g_38.x, (*l_243), ((VECTOR(uint64_t, 4))(18446744073709551615UL)))).s4dba, ((VECTOR(uint64_t, 4))(18446744073709551615UL))))).even))), 18446744073709551606UL, 0x1A803AACA49896F3L, 2UL)).s1 | p_1671->g_123[2]) , p_1671->g_8), p_58)) || 0x53C6L), 1)) > p_1671->g_172.s3) || p_58), (***l_203))) & l_265), p_58)) > (*l_199)) , p_1671->g_156[5]) , 0xB1CAL) | 0x7F02L)) & l_265), (***l_203))) , 6L)))) , p_58);
        l_280 = func_85((GROUP_DIVERGE(0, 1) && (safe_div_func_uint16_t_u_u((safe_add_func_int16_t_s_s(((l_271 != ((((VECTOR(int16_t, 8))(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))(l_272.zy)).yxxxxxyy)))).s7 > (p_1671->g_21.z || (safe_mod_func_uint32_t_u_u(((*l_218) = ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 8))(p_1671->g_275.xxxwwyxx)))).s4), (safe_unary_minus_func_uint8_t_u(FAKE_DIVERGE(p_1671->local_2_offset, get_local_id(2), 10))))))) , l_271)) | p_58), (*p_1671->g_59))), (safe_div_func_uint32_t_u_u((((((p_1671->g_279 = (void*)0) != l_271) < p_58) , (l_265 == 0x243089C7L)) >= 0x78L), FAKE_DIVERGE(p_1671->global_2_offset, get_global_id(2), 10)))))), l_221, p_1671->g_160.s4, p_1671);
        ++l_283;
        ++l_286[1];
    }
    else
    { /* block id: 70 */
        int16_t l_289[7][1] = {{1L},{1L},{1L},{1L},{1L},{1L},{1L}};
        int32_t l_290[5][3][3] = {{{0x15139A6BL,0x27C97B53L,2L},{0x15139A6BL,0x27C97B53L,2L},{0x15139A6BL,0x27C97B53L,2L}},{{0x15139A6BL,0x27C97B53L,2L},{0x15139A6BL,0x27C97B53L,2L},{0x15139A6BL,0x27C97B53L,2L}},{{0x15139A6BL,0x27C97B53L,2L},{0x15139A6BL,0x27C97B53L,2L},{0x15139A6BL,0x27C97B53L,2L}},{{0x15139A6BL,0x27C97B53L,2L},{0x15139A6BL,0x27C97B53L,2L},{0x15139A6BL,0x27C97B53L,2L}},{{0x15139A6BL,0x27C97B53L,2L},{0x15139A6BL,0x27C97B53L,2L},{0x15139A6BL,0x27C97B53L,2L}}};
        uint16_t l_291 = 0x1D76L;
        int i, j, k;
        --l_291;
        return &p_1671->g_4;
    }
    return &p_1671->g_8;
}


/* ------------------------------------------ */
/* 
 * reads : p_1671->g_59 p_1671->g_60 p_1671->g_21 p_1671->g_111 p_1671->g_38 p_1671->g_8 p_1671->g_120 p_1671->g_156 p_1671->g_35 p_1671->g_160
 * writes: p_1671->g_111 p_1671->g_119 p_1671->g_123 p_1671->g_60 p_1671->g_120 p_1671->g_38 p_1671->g_156 p_1671->g_159 p_1671->g_160
 */
uint8_t  func_61(int32_t  p_62, int32_t * p_63, struct S0 * p_1671)
{ /* block id: 22 */
    int32_t *l_71 = (void*)0;
    int32_t *l_72 = (void*)0;
    int32_t *l_73 = (void*)0;
    int32_t *l_74 = (void*)0;
    int32_t l_75 = (-1L);
    int32_t *l_76 = &l_75;
    int32_t *l_77 = (void*)0;
    int32_t *l_78 = (void*)0;
    int32_t *l_79 = &l_75;
    int32_t *l_80[4] = {(void*)0,(void*)0,(void*)0,(void*)0};
    VECTOR(int32_t, 16) l_81 = (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 0x0D0DD081L), 0x0D0DD081L), 0x0D0DD081L, 0L, 0x0D0DD081L, (VECTOR(int32_t, 2))(0L, 0x0D0DD081L), (VECTOR(int32_t, 2))(0L, 0x0D0DD081L), 0L, 0x0D0DD081L, 0L, 0x0D0DD081L);
    uint64_t l_82 = 0x2EDFCA599F3DF38EL;
    VECTOR(int32_t, 16) l_89 = (VECTOR(int32_t, 16))((-5L), (VECTOR(int32_t, 4))((-5L), (VECTOR(int32_t, 2))((-5L), 1L), 1L), 1L, (-5L), 1L, (VECTOR(int32_t, 2))((-5L), 1L), (VECTOR(int32_t, 2))((-5L), 1L), (-5L), 1L, (-5L), 1L);
    VECTOR(int32_t, 8) l_102 = (VECTOR(int32_t, 8))(7L, (VECTOR(int32_t, 4))(7L, (VECTOR(int32_t, 2))(7L, 0x1EF3A5E7L), 0x1EF3A5E7L), 0x1EF3A5E7L, 7L, 0x1EF3A5E7L);
    VECTOR(int64_t, 8) l_109 = (VECTOR(int64_t, 8))(0x5CECF82584F164E9L, (VECTOR(int64_t, 4))(0x5CECF82584F164E9L, (VECTOR(int64_t, 2))(0x5CECF82584F164E9L, 0x562E968F5B2801F5L), 0x562E968F5B2801F5L), 0x562E968F5B2801F5L, 0x5CECF82584F164E9L, 0x562E968F5B2801F5L);
    uint64_t *l_110 = &p_1671->g_111;
    int64_t *l_118 = &p_1671->g_119;
    int8_t *l_121 = (void*)0;
    int8_t *l_122 = &p_1671->g_123[2];
    uint16_t *l_124 = &p_1671->g_60;
    int16_t l_125 = 0x0C5DL;
    int32_t **l_158[9] = {&l_79,&l_79,&l_79,&l_79,&l_79,&l_79,&l_79,&l_79,&l_79};
    int i;
    --l_82;
    p_1671->g_160.s6 &= (((p_1671->g_159 = func_85(((*l_122) = (((VECTOR(int32_t, 16))(safe_clamp_func(VECTOR(int32_t, 16),VECTOR(int32_t, 16),((VECTOR(int32_t, 4))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 2))(sub_sat(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 2))(sub_sat(((VECTOR(int32_t, 2))(min(((VECTOR(int32_t, 16))(l_89.scf365aed0e34927b)).s92, (int32_t)((((safe_mod_func_uint16_t_u_u(((*p_1671->g_59) & ((safe_add_func_int16_t_s_s(0x48E5L, ((((*l_76) = (safe_mul_func_uint16_t_u_u((safe_sub_func_uint8_t_u_u((safe_mod_func_uint8_t_u_u((((!(((safe_mul_func_uint8_t_u_u((p_1671->g_21.x != ((VECTOR(int32_t, 8))(l_102.s41604210)).s0), (((safe_add_func_int16_t_s_s(0x5A64L, (safe_mod_func_int64_t_s_s((-1L), (safe_sub_func_int64_t_s_s(((VECTOR(int64_t, 16))(l_109.s5065473112726201)).sa, 9UL)))))) | p_1671->g_60) > ((++(*l_110)) , (safe_div_func_int64_t_s_s((safe_div_func_int64_t_s_s(((*l_118) = ((p_1671->g_38.x <= p_62) , 1L)), p_62)), p_1671->g_60)))))) == 0xBC9617CC220CDAADL) ^ p_62)) < (*p_1671->g_59)) > FAKE_DIVERGE(p_1671->local_1_offset, get_local_id(1), 10)), 250UL)), p_1671->g_8)), p_1671->g_21.z))) , p_63) == p_63))) < p_62)), p_1671->g_120)) > 0x1501L) | 0x37L) | (*p_1671->g_59))))), ((VECTOR(int32_t, 2))(0x28F08AB4L))))).yxxy, ((VECTOR(int32_t, 4))(0x5F2D9AF2L)), ((VECTOR(int32_t, 4))((-1L)))))).yzwzxzww)).even)).lo, ((VECTOR(int32_t, 2))((-8L)))))).xxxy, ((VECTOR(int32_t, 4))(0x40FEBE71L)), ((VECTOR(int32_t, 4))(0x68C1B86BL))))).zxxyxwzzzwyyzzzx, ((VECTOR(int32_t, 16))(0x0A0586BCL)), ((VECTOR(int32_t, 16))(0x771C78ABL))))).s4 | (*p_63))), l_124, l_125, p_1671)) != &p_1671->g_8) != p_1671->g_35.w);
    return p_62;
}


/* ------------------------------------------ */
/* 
 * reads : p_1671->g_35 p_1671->g_38
 * writes: p_1671->g_38
 */
int32_t  func_64(uint32_t  p_65, uint16_t * p_66, struct S0 * p_1671)
{ /* block id: 14 */
    int32_t *l_69 = (void*)0;
    int32_t l_70 = 0x0E60136BL;
    for (p_65 = 14; (p_65 <= 33); p_65 = safe_add_func_int16_t_s_s(p_65, 5))
    { /* block id: 17 */
        if (p_1671->g_35.z)
            break;
    }
    p_1671->g_38.x &= (~(-1L));
    return l_70;
}


/* ------------------------------------------ */
/* 
 * reads : p_1671->g_60 p_1671->g_120 p_1671->g_156
 * writes: p_1671->g_60 p_1671->g_120 p_1671->g_38 p_1671->g_156
 */
int32_t * func_85(int8_t  p_86, uint16_t * p_87, uint32_t  p_88, struct S0 * p_1671)
{ /* block id: 28 */
    int32_t l_134 = 0x19A07EF0L;
    int32_t l_146[4][10][6] = {{{1L,1L,1L,0x3D6C3DA0L,2L,0x3D6C3DA0L},{1L,1L,1L,0x3D6C3DA0L,2L,0x3D6C3DA0L},{1L,1L,1L,0x3D6C3DA0L,2L,0x3D6C3DA0L},{1L,1L,1L,0x3D6C3DA0L,2L,0x3D6C3DA0L},{1L,1L,1L,0x3D6C3DA0L,2L,0x3D6C3DA0L},{1L,1L,1L,0x3D6C3DA0L,2L,0x3D6C3DA0L},{1L,1L,1L,0x3D6C3DA0L,2L,0x3D6C3DA0L},{1L,1L,1L,0x3D6C3DA0L,2L,0x3D6C3DA0L},{1L,1L,1L,0x3D6C3DA0L,2L,0x3D6C3DA0L},{1L,1L,1L,0x3D6C3DA0L,2L,0x3D6C3DA0L}},{{1L,1L,1L,0x3D6C3DA0L,2L,0x3D6C3DA0L},{1L,1L,1L,0x3D6C3DA0L,2L,0x3D6C3DA0L},{1L,1L,1L,0x3D6C3DA0L,2L,0x3D6C3DA0L},{1L,1L,1L,0x3D6C3DA0L,2L,0x3D6C3DA0L},{1L,1L,1L,0x3D6C3DA0L,2L,0x3D6C3DA0L},{1L,1L,1L,0x3D6C3DA0L,2L,0x3D6C3DA0L},{1L,1L,1L,0x3D6C3DA0L,2L,0x3D6C3DA0L},{1L,1L,1L,0x3D6C3DA0L,2L,0x3D6C3DA0L},{1L,1L,1L,0x3D6C3DA0L,2L,0x3D6C3DA0L},{1L,1L,1L,0x3D6C3DA0L,2L,0x3D6C3DA0L}},{{1L,1L,1L,0x3D6C3DA0L,2L,0x3D6C3DA0L},{1L,1L,1L,0x3D6C3DA0L,2L,0x3D6C3DA0L},{1L,1L,1L,0x3D6C3DA0L,2L,0x3D6C3DA0L},{1L,1L,1L,0x3D6C3DA0L,2L,0x3D6C3DA0L},{1L,1L,1L,0x3D6C3DA0L,2L,0x3D6C3DA0L},{1L,1L,1L,0x3D6C3DA0L,2L,0x3D6C3DA0L},{1L,1L,1L,0x3D6C3DA0L,2L,0x3D6C3DA0L},{1L,1L,1L,0x3D6C3DA0L,2L,0x3D6C3DA0L},{1L,1L,1L,0x3D6C3DA0L,2L,0x3D6C3DA0L},{1L,1L,1L,0x3D6C3DA0L,2L,0x3D6C3DA0L}},{{1L,1L,1L,0x3D6C3DA0L,2L,0x3D6C3DA0L},{1L,1L,1L,0x3D6C3DA0L,2L,0x3D6C3DA0L},{1L,1L,1L,0x3D6C3DA0L,2L,0x3D6C3DA0L},{1L,1L,1L,0x3D6C3DA0L,2L,0x3D6C3DA0L},{1L,1L,1L,0x3D6C3DA0L,2L,0x3D6C3DA0L},{1L,1L,1L,0x3D6C3DA0L,2L,0x3D6C3DA0L},{1L,1L,1L,0x3D6C3DA0L,2L,0x3D6C3DA0L},{1L,1L,1L,0x3D6C3DA0L,2L,0x3D6C3DA0L},{1L,1L,1L,0x3D6C3DA0L,2L,0x3D6C3DA0L},{1L,1L,1L,0x3D6C3DA0L,2L,0x3D6C3DA0L}}};
    int32_t l_152 = 0x76E7EE21L;
    int32_t *l_157[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int i, j, k;
    for (p_1671->g_60 = 0; (p_1671->g_60 != 13); p_1671->g_60 = safe_add_func_int8_t_s_s(p_1671->g_60, 9))
    { /* block id: 31 */
        uint32_t l_131[7] = {0xE809F826L,0UL,0xE809F826L,0xE809F826L,0UL,0xE809F826L,0xE809F826L};
        int32_t *l_132 = (void*)0;
        int32_t *l_133 = (void*)0;
        int32_t *l_135 = &l_134;
        int32_t *l_136 = &l_134;
        int32_t *l_137 = &l_134;
        int32_t *l_138 = &l_134;
        int32_t *l_139 = (void*)0;
        int32_t *l_140 = (void*)0;
        int32_t *l_141 = (void*)0;
        int32_t *l_142 = &l_134;
        int32_t *l_143 = (void*)0;
        int32_t l_144 = 0x3164CB8EL;
        int32_t *l_145 = &l_144;
        int32_t *l_147 = (void*)0;
        int32_t *l_148 = &l_134;
        int32_t *l_149 = (void*)0;
        int32_t *l_150 = &l_146[3][0][3];
        int32_t *l_151[2][4][1] = {{{&p_1671->g_4},{&p_1671->g_4},{&p_1671->g_4},{&p_1671->g_4}},{{&p_1671->g_4},{&p_1671->g_4},{&p_1671->g_4},{&p_1671->g_4}}};
        uint8_t l_153 = 0x6BL;
        int i, j, k;
        for (p_1671->g_120 = (-12); (p_1671->g_120 >= 11); p_1671->g_120 = safe_add_func_int32_t_s_s(p_1671->g_120, 2))
        { /* block id: 34 */
            int8_t l_130 = 2L;
            l_131[5] = l_130;
        }
        ++l_153;
        p_1671->g_38.y = p_1671->g_156[5];
    }
    p_1671->g_38.y = (p_1671->g_156[1] = l_146[3][0][3]);
    return &p_1671->g_4;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S0 c_1672;
    struct S0* p_1671 = &c_1672;
    struct S0 c_1673 = {
        4294967295UL, // p_1671->g_2
        (-1L), // p_1671->g_4
        0x770A77C8L, // p_1671->g_7
        0L, // p_1671->g_8
        (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0x1CD4309642E40C18L), 0x1CD4309642E40C18L), // p_1671->g_21
        (VECTOR(uint64_t, 4))(0x51978E60D743CCC0L, (VECTOR(uint64_t, 2))(0x51978E60D743CCC0L, 0x43334ADC6F79B347L), 0x43334ADC6F79B347L), // p_1671->g_35
        0xA68FL, // p_1671->g_37
        (VECTOR(int32_t, 2))(0x136EF6F0L, 0L), // p_1671->g_38
        0x83B1L, // p_1671->g_60
        &p_1671->g_60, // p_1671->g_59
        1UL, // p_1671->g_111
        0x2980D5298B49A5ABL, // p_1671->g_119
        0x9DL, // p_1671->g_120
        {0L,0L,0L}, // p_1671->g_123
        {0x2AA7E9ADL,0x5411A662L,0x2AA7E9ADL,0x2AA7E9ADL,0x5411A662L,0x2AA7E9ADL,0x2AA7E9ADL,0x5411A662L}, // p_1671->g_156
        (void*)0, // p_1671->g_159
        (VECTOR(uint32_t, 8))(0xCDDDF838L, (VECTOR(uint32_t, 4))(0xCDDDF838L, (VECTOR(uint32_t, 2))(0xCDDDF838L, 7UL), 7UL), 7UL, 0xCDDDF838L, 7UL), // p_1671->g_160
        (VECTOR(uint8_t, 8))(0x1AL, (VECTOR(uint8_t, 4))(0x1AL, (VECTOR(uint8_t, 2))(0x1AL, 0xAEL), 0xAEL), 0xAEL, 0x1AL, 0xAEL), // p_1671->g_172
        (VECTOR(int8_t, 16))(0x2FL, (VECTOR(int8_t, 4))(0x2FL, (VECTOR(int8_t, 2))(0x2FL, 0x7AL), 0x7AL), 0x7AL, 0x2FL, 0x7AL, (VECTOR(int8_t, 2))(0x2FL, 0x7AL), (VECTOR(int8_t, 2))(0x2FL, 0x7AL), 0x2FL, 0x7AL, 0x2FL, 0x7AL), // p_1671->g_215
        3UL, // p_1671->g_219
        1UL, // p_1671->g_220
        (VECTOR(uint32_t, 8))(0x5207D733L, (VECTOR(uint32_t, 4))(0x5207D733L, (VECTOR(uint32_t, 2))(0x5207D733L, 0xA3B3628FL), 0xA3B3628FL), 0xA3B3628FL, 0x5207D733L, 0xA3B3628FL), // p_1671->g_237
        (VECTOR(uint32_t, 16))(0x68A634A9L, (VECTOR(uint32_t, 4))(0x68A634A9L, (VECTOR(uint32_t, 2))(0x68A634A9L, 0UL), 0UL), 0UL, 0x68A634A9L, 0UL, (VECTOR(uint32_t, 2))(0x68A634A9L, 0UL), (VECTOR(uint32_t, 2))(0x68A634A9L, 0UL), 0x68A634A9L, 0UL, 0x68A634A9L, 0UL), // p_1671->g_241
        (VECTOR(uint64_t, 4))(0x7D112C0037EAE16FL, (VECTOR(uint64_t, 2))(0x7D112C0037EAE16FL, 18446744073709551607UL), 18446744073709551607UL), // p_1671->g_259
        (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 4294967295UL), 4294967295UL), // p_1671->g_275
        &p_1671->g_111, // p_1671->g_279
        (VECTOR(uint8_t, 16))(0xD3L, (VECTOR(uint8_t, 4))(0xD3L, (VECTOR(uint8_t, 2))(0xD3L, 255UL), 255UL), 255UL, 0xD3L, 255UL, (VECTOR(uint8_t, 2))(0xD3L, 255UL), (VECTOR(uint8_t, 2))(0xD3L, 255UL), 0xD3L, 255UL, 0xD3L, 255UL), // p_1671->g_319
        (VECTOR(uint8_t, 4))(0xEBL, (VECTOR(uint8_t, 2))(0xEBL, 0x92L), 0x92L), // p_1671->g_322
        (VECTOR(uint8_t, 16))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 4UL), 4UL), 4UL, 0UL, 4UL, (VECTOR(uint8_t, 2))(0UL, 4UL), (VECTOR(uint8_t, 2))(0UL, 4UL), 0UL, 4UL, 0UL, 4UL), // p_1671->g_324
        0x2F01L, // p_1671->g_325
        0UL, // p_1671->g_347
        &p_1671->g_156[5], // p_1671->g_357
        &p_1671->g_156[5], // p_1671->g_358
        (VECTOR(int8_t, 2))(0x13L, 1L), // p_1671->g_364
        (VECTOR(int16_t, 2))(0x67CFL, 0x285CL), // p_1671->g_369
        (void*)0, // p_1671->g_396
        &p_1671->g_396, // p_1671->g_395
        &p_1671->g_395, // p_1671->g_394
        {(-1L),0x273EAB09L,(-1L),(-1L),0x273EAB09L,(-1L),(-1L)}, // p_1671->g_399
        5UL, // p_1671->g_405
        0xBC06ADAB30A1894EL, // p_1671->g_446
        (VECTOR(int16_t, 4))(0x07CBL, (VECTOR(int16_t, 2))(0x07CBL, (-1L)), (-1L)), // p_1671->g_497
        (VECTOR(uint16_t, 16))(0x7975L, (VECTOR(uint16_t, 4))(0x7975L, (VECTOR(uint16_t, 2))(0x7975L, 1UL), 1UL), 1UL, 0x7975L, 1UL, (VECTOR(uint16_t, 2))(0x7975L, 1UL), (VECTOR(uint16_t, 2))(0x7975L, 1UL), 0x7975L, 1UL, 0x7975L, 1UL), // p_1671->g_498
        (VECTOR(uint8_t, 16))(4UL, (VECTOR(uint8_t, 4))(4UL, (VECTOR(uint8_t, 2))(4UL, 254UL), 254UL), 254UL, 4UL, 254UL, (VECTOR(uint8_t, 2))(4UL, 254UL), (VECTOR(uint8_t, 2))(4UL, 254UL), 4UL, 254UL, 4UL, 254UL), // p_1671->g_507
        (VECTOR(int32_t, 4))(0x63E27559L, (VECTOR(int32_t, 2))(0x63E27559L, 8L), 8L), // p_1671->g_516
        &p_1671->g_123[1], // p_1671->g_525
        {&p_1671->g_525,&p_1671->g_525,&p_1671->g_525,&p_1671->g_525}, // p_1671->g_524
        (VECTOR(uint64_t, 8))(0xBDE0BB05397FFEC3L, (VECTOR(uint64_t, 4))(0xBDE0BB05397FFEC3L, (VECTOR(uint64_t, 2))(0xBDE0BB05397FFEC3L, 0xF36E4110CB70B4A9L), 0xF36E4110CB70B4A9L), 0xF36E4110CB70B4A9L, 0xBDE0BB05397FFEC3L, 0xF36E4110CB70B4A9L), // p_1671->g_528
        (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0x402A012AB33C57FAL), 0x402A012AB33C57FAL), // p_1671->g_529
        (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0L), 0L), // p_1671->g_532
        (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x6C5EFF23L), 0x6C5EFF23L), 0x6C5EFF23L, 1L, 0x6C5EFF23L, (VECTOR(int32_t, 2))(1L, 0x6C5EFF23L), (VECTOR(int32_t, 2))(1L, 0x6C5EFF23L), 1L, 0x6C5EFF23L, 1L, 0x6C5EFF23L), // p_1671->g_550
        {4294967290UL}, // p_1671->g_569
        (VECTOR(uint16_t, 4))(0x4DE2L, (VECTOR(uint16_t, 2))(0x4DE2L, 0UL), 0UL), // p_1671->g_578
        (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0x7D37819C7E81991BL), 0x7D37819C7E81991BL), // p_1671->g_581
        (VECTOR(int64_t, 2))(0x340AE2A13DAFBD97L, 0x383D421F854CB96AL), // p_1671->g_583
        (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0xAD96504034AD46D9L), 0xAD96504034AD46D9L), // p_1671->g_616
        (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x5FL), 0x5FL), // p_1671->g_618
        (VECTOR(uint16_t, 8))(0x95CAL, (VECTOR(uint16_t, 4))(0x95CAL, (VECTOR(uint16_t, 2))(0x95CAL, 2UL), 2UL), 2UL, 0x95CAL, 2UL), // p_1671->g_646
        7UL, // p_1671->g_677
        0x4913L, // p_1671->g_748
        0x114056A6L, // p_1671->g_774
        (VECTOR(int64_t, 16))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, (-9L)), (-9L)), (-9L), 1L, (-9L), (VECTOR(int64_t, 2))(1L, (-9L)), (VECTOR(int64_t, 2))(1L, (-9L)), 1L, (-9L), 1L, (-9L)), // p_1671->g_782
        4L, // p_1671->g_789
        (VECTOR(uint16_t, 2))(0xF8AEL, 4UL), // p_1671->g_801
        (VECTOR(uint8_t, 2))(0x3FL, 0xE6L), // p_1671->g_802
        18446744073709551615UL, // p_1671->g_821
        (VECTOR(uint16_t, 8))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 0xFF6CL), 0xFF6CL), 0xFF6CL, 65535UL, 0xFF6CL), // p_1671->g_848
        (void*)0, // p_1671->g_867
        &p_1671->g_867, // p_1671->g_866
        (void*)0, // p_1671->g_891
        (void*)0, // p_1671->g_903
        {&p_1671->g_903}, // p_1671->g_902
        {{(void*)0,(void*)0,(void*)0,&p_1671->g_446,(void*)0,&p_1671->g_446,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1671->g_446,(void*)0,&p_1671->g_446,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1671->g_446,(void*)0,&p_1671->g_446,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1671->g_446,(void*)0,&p_1671->g_446,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1671->g_446,(void*)0,&p_1671->g_446,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1671->g_446,(void*)0,&p_1671->g_446,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1671->g_446,(void*)0,&p_1671->g_446,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1671->g_446,(void*)0,&p_1671->g_446,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,&p_1671->g_446,(void*)0,&p_1671->g_446,(void*)0,(void*)0}}, // p_1671->g_924
        {&p_1671->g_924[2][1],&p_1671->g_924[2][1],&p_1671->g_924[2][1],&p_1671->g_924[2][1],&p_1671->g_924[2][1]}, // p_1671->g_923
        (VECTOR(int16_t, 16))(0x0A01L, (VECTOR(int16_t, 4))(0x0A01L, (VECTOR(int16_t, 2))(0x0A01L, (-7L)), (-7L)), (-7L), 0x0A01L, (-7L), (VECTOR(int16_t, 2))(0x0A01L, (-7L)), (VECTOR(int16_t, 2))(0x0A01L, (-7L)), 0x0A01L, (-7L), 0x0A01L, (-7L)), // p_1671->g_929
        (VECTOR(int8_t, 4))(0x29L, (VECTOR(int8_t, 2))(0x29L, 0x55L), 0x55L), // p_1671->g_934
        (VECTOR(uint32_t, 2))(0xC5B58CCDL, 0xDEE4DBFFL), // p_1671->g_948
        (VECTOR(uint16_t, 8))(8UL, (VECTOR(uint16_t, 4))(8UL, (VECTOR(uint16_t, 2))(8UL, 0xF2DEL), 0xF2DEL), 0xF2DEL, 8UL, 0xF2DEL), // p_1671->g_954
        (VECTOR(uint32_t, 16))(4294967290UL, (VECTOR(uint32_t, 4))(4294967290UL, (VECTOR(uint32_t, 2))(4294967290UL, 0x3B4391C5L), 0x3B4391C5L), 0x3B4391C5L, 4294967290UL, 0x3B4391C5L, (VECTOR(uint32_t, 2))(4294967290UL, 0x3B4391C5L), (VECTOR(uint32_t, 2))(4294967290UL, 0x3B4391C5L), 4294967290UL, 0x3B4391C5L, 4294967290UL, 0x3B4391C5L), // p_1671->g_978
        (VECTOR(int8_t, 16))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), (-1L)), (-1L)), (-1L), (-1L), (-1L), (VECTOR(int8_t, 2))((-1L), (-1L)), (VECTOR(int8_t, 2))((-1L), (-1L)), (-1L), (-1L), (-1L), (-1L)), // p_1671->g_979
        0xE6DF539C30EF7088L, // p_1671->g_987
        (VECTOR(int32_t, 4))((-8L), (VECTOR(int32_t, 2))((-8L), (-1L)), (-1L)), // p_1671->g_991
        (VECTOR(int64_t, 8))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 5L), 5L), 5L, 1L, 5L), // p_1671->g_1002
        (VECTOR(int64_t, 4))(0x3E43BAC35B054432L, (VECTOR(int64_t, 2))(0x3E43BAC35B054432L, 0x2DF5ABC8624F5D0DL), 0x2DF5ABC8624F5D0DL), // p_1671->g_1003
        (VECTOR(uint64_t, 2))(0UL, 0x3FD7658842F48C36L), // p_1671->g_1029
        (VECTOR(int32_t, 8))(0x203693E4L, (VECTOR(int32_t, 4))(0x203693E4L, (VECTOR(int32_t, 2))(0x203693E4L, 0x77BFEC1FL), 0x77BFEC1FL), 0x77BFEC1FL, 0x203693E4L, 0x77BFEC1FL), // p_1671->g_1048
        0x724AB488590C7236L, // p_1671->g_1078
        &p_1671->g_399[1], // p_1671->g_1087
        &p_1671->g_748, // p_1671->g_1095
        &p_1671->g_1095, // p_1671->g_1094
        (VECTOR(int16_t, 4))(6L, (VECTOR(int16_t, 2))(6L, 2L), 2L), // p_1671->g_1096
        (VECTOR(int32_t, 2))((-9L), 1L), // p_1671->g_1107
        (VECTOR(uint64_t, 8))(0x779CCB3C3D7A21FAL, (VECTOR(uint64_t, 4))(0x779CCB3C3D7A21FAL, (VECTOR(uint64_t, 2))(0x779CCB3C3D7A21FAL, 0x23CBA4503E563E02L), 0x23CBA4503E563E02L), 0x23CBA4503E563E02L, 0x779CCB3C3D7A21FAL, 0x23CBA4503E563E02L), // p_1671->g_1115
        (VECTOR(int32_t, 4))(0x19047247L, (VECTOR(int32_t, 2))(0x19047247L, 4L), 4L), // p_1671->g_1118
        (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 7L), 7L), 7L, 0L, 7L, (VECTOR(int32_t, 2))(0L, 7L), (VECTOR(int32_t, 2))(0L, 7L), 0L, 7L, 0L, 7L), // p_1671->g_1120
        (VECTOR(int64_t, 4))(6L, (VECTOR(int64_t, 2))(6L, (-9L)), (-9L)), // p_1671->g_1141
        (VECTOR(int64_t, 4))(0x1A42B5460D7F88D5L, (VECTOR(int64_t, 2))(0x1A42B5460D7F88D5L, 5L), 5L), // p_1671->g_1158
        &p_1671->g_357, // p_1671->g_1161
        (void*)0, // p_1671->g_1164
        (void*)0, // p_1671->g_1199
        &p_1671->g_279, // p_1671->g_1205
        &p_1671->g_1205, // p_1671->g_1204
        (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), (-10L)), (-10L)), // p_1671->g_1220
        (VECTOR(int16_t, 16))((-1L), (VECTOR(int16_t, 4))((-1L), (VECTOR(int16_t, 2))((-1L), 0x73D6L), 0x73D6L), 0x73D6L, (-1L), 0x73D6L, (VECTOR(int16_t, 2))((-1L), 0x73D6L), (VECTOR(int16_t, 2))((-1L), 0x73D6L), (-1L), 0x73D6L, (-1L), 0x73D6L), // p_1671->g_1228
        (VECTOR(uint16_t, 16))(0x2B16L, (VECTOR(uint16_t, 4))(0x2B16L, (VECTOR(uint16_t, 2))(0x2B16L, 0x3C3EL), 0x3C3EL), 0x3C3EL, 0x2B16L, 0x3C3EL, (VECTOR(uint16_t, 2))(0x2B16L, 0x3C3EL), (VECTOR(uint16_t, 2))(0x2B16L, 0x3C3EL), 0x2B16L, 0x3C3EL, 0x2B16L, 0x3C3EL), // p_1671->g_1242
        (VECTOR(int64_t, 16))(0x0D5E3AC02B7E776CL, (VECTOR(int64_t, 4))(0x0D5E3AC02B7E776CL, (VECTOR(int64_t, 2))(0x0D5E3AC02B7E776CL, 1L), 1L), 1L, 0x0D5E3AC02B7E776CL, 1L, (VECTOR(int64_t, 2))(0x0D5E3AC02B7E776CL, 1L), (VECTOR(int64_t, 2))(0x0D5E3AC02B7E776CL, 1L), 0x0D5E3AC02B7E776CL, 1L, 0x0D5E3AC02B7E776CL, 1L), // p_1671->g_1268
        (VECTOR(uint8_t, 16))(0x33L, (VECTOR(uint8_t, 4))(0x33L, (VECTOR(uint8_t, 2))(0x33L, 0x10L), 0x10L), 0x10L, 0x33L, 0x10L, (VECTOR(uint8_t, 2))(0x33L, 0x10L), (VECTOR(uint8_t, 2))(0x33L, 0x10L), 0x33L, 0x10L, 0x33L, 0x10L), // p_1671->g_1276
        (VECTOR(uint8_t, 2))(0xCCL, 0xACL), // p_1671->g_1292
        (VECTOR(uint32_t, 16))(0x555EC03CL, (VECTOR(uint32_t, 4))(0x555EC03CL, (VECTOR(uint32_t, 2))(0x555EC03CL, 0x0EB6B66EL), 0x0EB6B66EL), 0x0EB6B66EL, 0x555EC03CL, 0x0EB6B66EL, (VECTOR(uint32_t, 2))(0x555EC03CL, 0x0EB6B66EL), (VECTOR(uint32_t, 2))(0x555EC03CL, 0x0EB6B66EL), 0x555EC03CL, 0x0EB6B66EL, 0x555EC03CL, 0x0EB6B66EL), // p_1671->g_1298
        0x364CB26CL, // p_1671->g_1313
        {{{1L,(-1L),0x78EFFED6L,1L,(-6L)},{1L,(-1L),0x78EFFED6L,1L,(-6L)},{1L,(-1L),0x78EFFED6L,1L,(-6L)},{1L,(-1L),0x78EFFED6L,1L,(-6L)},{1L,(-1L),0x78EFFED6L,1L,(-6L)}},{{1L,(-1L),0x78EFFED6L,1L,(-6L)},{1L,(-1L),0x78EFFED6L,1L,(-6L)},{1L,(-1L),0x78EFFED6L,1L,(-6L)},{1L,(-1L),0x78EFFED6L,1L,(-6L)},{1L,(-1L),0x78EFFED6L,1L,(-6L)}},{{1L,(-1L),0x78EFFED6L,1L,(-6L)},{1L,(-1L),0x78EFFED6L,1L,(-6L)},{1L,(-1L),0x78EFFED6L,1L,(-6L)},{1L,(-1L),0x78EFFED6L,1L,(-6L)},{1L,(-1L),0x78EFFED6L,1L,(-6L)}},{{1L,(-1L),0x78EFFED6L,1L,(-6L)},{1L,(-1L),0x78EFFED6L,1L,(-6L)},{1L,(-1L),0x78EFFED6L,1L,(-6L)},{1L,(-1L),0x78EFFED6L,1L,(-6L)},{1L,(-1L),0x78EFFED6L,1L,(-6L)}},{{1L,(-1L),0x78EFFED6L,1L,(-6L)},{1L,(-1L),0x78EFFED6L,1L,(-6L)},{1L,(-1L),0x78EFFED6L,1L,(-6L)},{1L,(-1L),0x78EFFED6L,1L,(-6L)},{1L,(-1L),0x78EFFED6L,1L,(-6L)}},{{1L,(-1L),0x78EFFED6L,1L,(-6L)},{1L,(-1L),0x78EFFED6L,1L,(-6L)},{1L,(-1L),0x78EFFED6L,1L,(-6L)},{1L,(-1L),0x78EFFED6L,1L,(-6L)},{1L,(-1L),0x78EFFED6L,1L,(-6L)}},{{1L,(-1L),0x78EFFED6L,1L,(-6L)},{1L,(-1L),0x78EFFED6L,1L,(-6L)},{1L,(-1L),0x78EFFED6L,1L,(-6L)},{1L,(-1L),0x78EFFED6L,1L,(-6L)},{1L,(-1L),0x78EFFED6L,1L,(-6L)}},{{1L,(-1L),0x78EFFED6L,1L,(-6L)},{1L,(-1L),0x78EFFED6L,1L,(-6L)},{1L,(-1L),0x78EFFED6L,1L,(-6L)},{1L,(-1L),0x78EFFED6L,1L,(-6L)},{1L,(-1L),0x78EFFED6L,1L,(-6L)}},{{1L,(-1L),0x78EFFED6L,1L,(-6L)},{1L,(-1L),0x78EFFED6L,1L,(-6L)},{1L,(-1L),0x78EFFED6L,1L,(-6L)},{1L,(-1L),0x78EFFED6L,1L,(-6L)},{1L,(-1L),0x78EFFED6L,1L,(-6L)}}}, // p_1671->g_1316
        (VECTOR(uint8_t, 2))(255UL, 255UL), // p_1671->g_1326
        &p_1671->g_358, // p_1671->g_1396
        {{0L,0L,3L,(-8L),0x043FEB44L,0L,7L,5L},{0L,0L,3L,(-8L),0x043FEB44L,0L,7L,5L},{0L,0L,3L,(-8L),0x043FEB44L,0L,7L,5L},{0L,0L,3L,(-8L),0x043FEB44L,0L,7L,5L},{0L,0L,3L,(-8L),0x043FEB44L,0L,7L,5L},{0L,0L,3L,(-8L),0x043FEB44L,0L,7L,5L},{0L,0L,3L,(-8L),0x043FEB44L,0L,7L,5L},{0L,0L,3L,(-8L),0x043FEB44L,0L,7L,5L}}, // p_1671->g_1407
        (VECTOR(uint32_t, 8))(0x2FDD64BEL, (VECTOR(uint32_t, 4))(0x2FDD64BEL, (VECTOR(uint32_t, 2))(0x2FDD64BEL, 0UL), 0UL), 0UL, 0x2FDD64BEL, 0UL), // p_1671->g_1431
        (VECTOR(int64_t, 4))(0L, (VECTOR(int64_t, 2))(0L, (-1L)), (-1L)), // p_1671->g_1438
        &p_1671->g_357, // p_1671->g_1446
        (VECTOR(int16_t, 16))(7L, (VECTOR(int16_t, 4))(7L, (VECTOR(int16_t, 2))(7L, 0x40C9L), 0x40C9L), 0x40C9L, 7L, 0x40C9L, (VECTOR(int16_t, 2))(7L, 0x40C9L), (VECTOR(int16_t, 2))(7L, 0x40C9L), 7L, 0x40C9L, 7L, 0x40C9L), // p_1671->g_1458
        (VECTOR(uint32_t, 8))(0x316A4A56L, (VECTOR(uint32_t, 4))(0x316A4A56L, (VECTOR(uint32_t, 2))(0x316A4A56L, 0xE517641FL), 0xE517641FL), 0xE517641FL, 0x316A4A56L, 0xE517641FL), // p_1671->g_1463
        (VECTOR(uint16_t, 16))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0xE4ADL), 0xE4ADL), 0xE4ADL, 0UL, 0xE4ADL, (VECTOR(uint16_t, 2))(0UL, 0xE4ADL), (VECTOR(uint16_t, 2))(0UL, 0xE4ADL), 0UL, 0xE4ADL, 0UL, 0xE4ADL), // p_1671->g_1484
        (VECTOR(int16_t, 8))(0x0E42L, (VECTOR(int16_t, 4))(0x0E42L, (VECTOR(int16_t, 2))(0x0E42L, (-1L)), (-1L)), (-1L), 0x0E42L, (-1L)), // p_1671->g_1555
        (VECTOR(int8_t, 2))(0x3BL, 0x6AL), // p_1671->g_1600
        (VECTOR(int8_t, 8))(0x63L, (VECTOR(int8_t, 4))(0x63L, (VECTOR(int8_t, 2))(0x63L, 0x22L), 0x22L), 0x22L, 0x63L, 0x22L), // p_1671->g_1601
        0x27C399A00741A7C5L, // p_1671->g_1606
        &p_1671->g_357, // p_1671->g_1640
        sequence_input[get_global_id(0)], // p_1671->global_0_offset
        sequence_input[get_global_id(1)], // p_1671->global_1_offset
        sequence_input[get_global_id(2)], // p_1671->global_2_offset
        sequence_input[get_local_id(0)], // p_1671->local_0_offset
        sequence_input[get_local_id(1)], // p_1671->local_1_offset
        sequence_input[get_local_id(2)], // p_1671->local_2_offset
        sequence_input[get_group_id(0)], // p_1671->group_0_offset
        sequence_input[get_group_id(1)], // p_1671->group_1_offset
        sequence_input[get_group_id(2)], // p_1671->group_2_offset
    };
    c_1672 = c_1673;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1671);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1671->g_2, "p_1671->g_2", print_hash_value);
    transparent_crc(p_1671->g_4, "p_1671->g_4", print_hash_value);
    transparent_crc(p_1671->g_7, "p_1671->g_7", print_hash_value);
    transparent_crc(p_1671->g_8, "p_1671->g_8", print_hash_value);
    transparent_crc(p_1671->g_21.x, "p_1671->g_21.x", print_hash_value);
    transparent_crc(p_1671->g_21.y, "p_1671->g_21.y", print_hash_value);
    transparent_crc(p_1671->g_21.z, "p_1671->g_21.z", print_hash_value);
    transparent_crc(p_1671->g_21.w, "p_1671->g_21.w", print_hash_value);
    transparent_crc(p_1671->g_35.x, "p_1671->g_35.x", print_hash_value);
    transparent_crc(p_1671->g_35.y, "p_1671->g_35.y", print_hash_value);
    transparent_crc(p_1671->g_35.z, "p_1671->g_35.z", print_hash_value);
    transparent_crc(p_1671->g_35.w, "p_1671->g_35.w", print_hash_value);
    transparent_crc(p_1671->g_37, "p_1671->g_37", print_hash_value);
    transparent_crc(p_1671->g_38.x, "p_1671->g_38.x", print_hash_value);
    transparent_crc(p_1671->g_38.y, "p_1671->g_38.y", print_hash_value);
    transparent_crc(p_1671->g_60, "p_1671->g_60", print_hash_value);
    transparent_crc(p_1671->g_111, "p_1671->g_111", print_hash_value);
    transparent_crc(p_1671->g_119, "p_1671->g_119", print_hash_value);
    transparent_crc(p_1671->g_120, "p_1671->g_120", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        transparent_crc(p_1671->g_123[i], "p_1671->g_123[i]", print_hash_value);

    }
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1671->g_156[i], "p_1671->g_156[i]", print_hash_value);

    }
    transparent_crc(p_1671->g_160.s0, "p_1671->g_160.s0", print_hash_value);
    transparent_crc(p_1671->g_160.s1, "p_1671->g_160.s1", print_hash_value);
    transparent_crc(p_1671->g_160.s2, "p_1671->g_160.s2", print_hash_value);
    transparent_crc(p_1671->g_160.s3, "p_1671->g_160.s3", print_hash_value);
    transparent_crc(p_1671->g_160.s4, "p_1671->g_160.s4", print_hash_value);
    transparent_crc(p_1671->g_160.s5, "p_1671->g_160.s5", print_hash_value);
    transparent_crc(p_1671->g_160.s6, "p_1671->g_160.s6", print_hash_value);
    transparent_crc(p_1671->g_160.s7, "p_1671->g_160.s7", print_hash_value);
    transparent_crc(p_1671->g_172.s0, "p_1671->g_172.s0", print_hash_value);
    transparent_crc(p_1671->g_172.s1, "p_1671->g_172.s1", print_hash_value);
    transparent_crc(p_1671->g_172.s2, "p_1671->g_172.s2", print_hash_value);
    transparent_crc(p_1671->g_172.s3, "p_1671->g_172.s3", print_hash_value);
    transparent_crc(p_1671->g_172.s4, "p_1671->g_172.s4", print_hash_value);
    transparent_crc(p_1671->g_172.s5, "p_1671->g_172.s5", print_hash_value);
    transparent_crc(p_1671->g_172.s6, "p_1671->g_172.s6", print_hash_value);
    transparent_crc(p_1671->g_172.s7, "p_1671->g_172.s7", print_hash_value);
    transparent_crc(p_1671->g_215.s0, "p_1671->g_215.s0", print_hash_value);
    transparent_crc(p_1671->g_215.s1, "p_1671->g_215.s1", print_hash_value);
    transparent_crc(p_1671->g_215.s2, "p_1671->g_215.s2", print_hash_value);
    transparent_crc(p_1671->g_215.s3, "p_1671->g_215.s3", print_hash_value);
    transparent_crc(p_1671->g_215.s4, "p_1671->g_215.s4", print_hash_value);
    transparent_crc(p_1671->g_215.s5, "p_1671->g_215.s5", print_hash_value);
    transparent_crc(p_1671->g_215.s6, "p_1671->g_215.s6", print_hash_value);
    transparent_crc(p_1671->g_215.s7, "p_1671->g_215.s7", print_hash_value);
    transparent_crc(p_1671->g_215.s8, "p_1671->g_215.s8", print_hash_value);
    transparent_crc(p_1671->g_215.s9, "p_1671->g_215.s9", print_hash_value);
    transparent_crc(p_1671->g_215.sa, "p_1671->g_215.sa", print_hash_value);
    transparent_crc(p_1671->g_215.sb, "p_1671->g_215.sb", print_hash_value);
    transparent_crc(p_1671->g_215.sc, "p_1671->g_215.sc", print_hash_value);
    transparent_crc(p_1671->g_215.sd, "p_1671->g_215.sd", print_hash_value);
    transparent_crc(p_1671->g_215.se, "p_1671->g_215.se", print_hash_value);
    transparent_crc(p_1671->g_215.sf, "p_1671->g_215.sf", print_hash_value);
    transparent_crc(p_1671->g_219, "p_1671->g_219", print_hash_value);
    transparent_crc(p_1671->g_220, "p_1671->g_220", print_hash_value);
    transparent_crc(p_1671->g_237.s0, "p_1671->g_237.s0", print_hash_value);
    transparent_crc(p_1671->g_237.s1, "p_1671->g_237.s1", print_hash_value);
    transparent_crc(p_1671->g_237.s2, "p_1671->g_237.s2", print_hash_value);
    transparent_crc(p_1671->g_237.s3, "p_1671->g_237.s3", print_hash_value);
    transparent_crc(p_1671->g_237.s4, "p_1671->g_237.s4", print_hash_value);
    transparent_crc(p_1671->g_237.s5, "p_1671->g_237.s5", print_hash_value);
    transparent_crc(p_1671->g_237.s6, "p_1671->g_237.s6", print_hash_value);
    transparent_crc(p_1671->g_237.s7, "p_1671->g_237.s7", print_hash_value);
    transparent_crc(p_1671->g_241.s0, "p_1671->g_241.s0", print_hash_value);
    transparent_crc(p_1671->g_241.s1, "p_1671->g_241.s1", print_hash_value);
    transparent_crc(p_1671->g_241.s2, "p_1671->g_241.s2", print_hash_value);
    transparent_crc(p_1671->g_241.s3, "p_1671->g_241.s3", print_hash_value);
    transparent_crc(p_1671->g_241.s4, "p_1671->g_241.s4", print_hash_value);
    transparent_crc(p_1671->g_241.s5, "p_1671->g_241.s5", print_hash_value);
    transparent_crc(p_1671->g_241.s6, "p_1671->g_241.s6", print_hash_value);
    transparent_crc(p_1671->g_241.s7, "p_1671->g_241.s7", print_hash_value);
    transparent_crc(p_1671->g_241.s8, "p_1671->g_241.s8", print_hash_value);
    transparent_crc(p_1671->g_241.s9, "p_1671->g_241.s9", print_hash_value);
    transparent_crc(p_1671->g_241.sa, "p_1671->g_241.sa", print_hash_value);
    transparent_crc(p_1671->g_241.sb, "p_1671->g_241.sb", print_hash_value);
    transparent_crc(p_1671->g_241.sc, "p_1671->g_241.sc", print_hash_value);
    transparent_crc(p_1671->g_241.sd, "p_1671->g_241.sd", print_hash_value);
    transparent_crc(p_1671->g_241.se, "p_1671->g_241.se", print_hash_value);
    transparent_crc(p_1671->g_241.sf, "p_1671->g_241.sf", print_hash_value);
    transparent_crc(p_1671->g_259.x, "p_1671->g_259.x", print_hash_value);
    transparent_crc(p_1671->g_259.y, "p_1671->g_259.y", print_hash_value);
    transparent_crc(p_1671->g_259.z, "p_1671->g_259.z", print_hash_value);
    transparent_crc(p_1671->g_259.w, "p_1671->g_259.w", print_hash_value);
    transparent_crc(p_1671->g_275.x, "p_1671->g_275.x", print_hash_value);
    transparent_crc(p_1671->g_275.y, "p_1671->g_275.y", print_hash_value);
    transparent_crc(p_1671->g_275.z, "p_1671->g_275.z", print_hash_value);
    transparent_crc(p_1671->g_275.w, "p_1671->g_275.w", print_hash_value);
    transparent_crc(p_1671->g_319.s0, "p_1671->g_319.s0", print_hash_value);
    transparent_crc(p_1671->g_319.s1, "p_1671->g_319.s1", print_hash_value);
    transparent_crc(p_1671->g_319.s2, "p_1671->g_319.s2", print_hash_value);
    transparent_crc(p_1671->g_319.s3, "p_1671->g_319.s3", print_hash_value);
    transparent_crc(p_1671->g_319.s4, "p_1671->g_319.s4", print_hash_value);
    transparent_crc(p_1671->g_319.s5, "p_1671->g_319.s5", print_hash_value);
    transparent_crc(p_1671->g_319.s6, "p_1671->g_319.s6", print_hash_value);
    transparent_crc(p_1671->g_319.s7, "p_1671->g_319.s7", print_hash_value);
    transparent_crc(p_1671->g_319.s8, "p_1671->g_319.s8", print_hash_value);
    transparent_crc(p_1671->g_319.s9, "p_1671->g_319.s9", print_hash_value);
    transparent_crc(p_1671->g_319.sa, "p_1671->g_319.sa", print_hash_value);
    transparent_crc(p_1671->g_319.sb, "p_1671->g_319.sb", print_hash_value);
    transparent_crc(p_1671->g_319.sc, "p_1671->g_319.sc", print_hash_value);
    transparent_crc(p_1671->g_319.sd, "p_1671->g_319.sd", print_hash_value);
    transparent_crc(p_1671->g_319.se, "p_1671->g_319.se", print_hash_value);
    transparent_crc(p_1671->g_319.sf, "p_1671->g_319.sf", print_hash_value);
    transparent_crc(p_1671->g_322.x, "p_1671->g_322.x", print_hash_value);
    transparent_crc(p_1671->g_322.y, "p_1671->g_322.y", print_hash_value);
    transparent_crc(p_1671->g_322.z, "p_1671->g_322.z", print_hash_value);
    transparent_crc(p_1671->g_322.w, "p_1671->g_322.w", print_hash_value);
    transparent_crc(p_1671->g_324.s0, "p_1671->g_324.s0", print_hash_value);
    transparent_crc(p_1671->g_324.s1, "p_1671->g_324.s1", print_hash_value);
    transparent_crc(p_1671->g_324.s2, "p_1671->g_324.s2", print_hash_value);
    transparent_crc(p_1671->g_324.s3, "p_1671->g_324.s3", print_hash_value);
    transparent_crc(p_1671->g_324.s4, "p_1671->g_324.s4", print_hash_value);
    transparent_crc(p_1671->g_324.s5, "p_1671->g_324.s5", print_hash_value);
    transparent_crc(p_1671->g_324.s6, "p_1671->g_324.s6", print_hash_value);
    transparent_crc(p_1671->g_324.s7, "p_1671->g_324.s7", print_hash_value);
    transparent_crc(p_1671->g_324.s8, "p_1671->g_324.s8", print_hash_value);
    transparent_crc(p_1671->g_324.s9, "p_1671->g_324.s9", print_hash_value);
    transparent_crc(p_1671->g_324.sa, "p_1671->g_324.sa", print_hash_value);
    transparent_crc(p_1671->g_324.sb, "p_1671->g_324.sb", print_hash_value);
    transparent_crc(p_1671->g_324.sc, "p_1671->g_324.sc", print_hash_value);
    transparent_crc(p_1671->g_324.sd, "p_1671->g_324.sd", print_hash_value);
    transparent_crc(p_1671->g_324.se, "p_1671->g_324.se", print_hash_value);
    transparent_crc(p_1671->g_324.sf, "p_1671->g_324.sf", print_hash_value);
    transparent_crc(p_1671->g_325, "p_1671->g_325", print_hash_value);
    transparent_crc(p_1671->g_347, "p_1671->g_347", print_hash_value);
    transparent_crc(p_1671->g_364.x, "p_1671->g_364.x", print_hash_value);
    transparent_crc(p_1671->g_364.y, "p_1671->g_364.y", print_hash_value);
    transparent_crc(p_1671->g_369.x, "p_1671->g_369.x", print_hash_value);
    transparent_crc(p_1671->g_369.y, "p_1671->g_369.y", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1671->g_399[i], "p_1671->g_399[i]", print_hash_value);

    }
    transparent_crc(p_1671->g_405, "p_1671->g_405", print_hash_value);
    transparent_crc(p_1671->g_446, "p_1671->g_446", print_hash_value);
    transparent_crc(p_1671->g_497.x, "p_1671->g_497.x", print_hash_value);
    transparent_crc(p_1671->g_497.y, "p_1671->g_497.y", print_hash_value);
    transparent_crc(p_1671->g_497.z, "p_1671->g_497.z", print_hash_value);
    transparent_crc(p_1671->g_497.w, "p_1671->g_497.w", print_hash_value);
    transparent_crc(p_1671->g_498.s0, "p_1671->g_498.s0", print_hash_value);
    transparent_crc(p_1671->g_498.s1, "p_1671->g_498.s1", print_hash_value);
    transparent_crc(p_1671->g_498.s2, "p_1671->g_498.s2", print_hash_value);
    transparent_crc(p_1671->g_498.s3, "p_1671->g_498.s3", print_hash_value);
    transparent_crc(p_1671->g_498.s4, "p_1671->g_498.s4", print_hash_value);
    transparent_crc(p_1671->g_498.s5, "p_1671->g_498.s5", print_hash_value);
    transparent_crc(p_1671->g_498.s6, "p_1671->g_498.s6", print_hash_value);
    transparent_crc(p_1671->g_498.s7, "p_1671->g_498.s7", print_hash_value);
    transparent_crc(p_1671->g_498.s8, "p_1671->g_498.s8", print_hash_value);
    transparent_crc(p_1671->g_498.s9, "p_1671->g_498.s9", print_hash_value);
    transparent_crc(p_1671->g_498.sa, "p_1671->g_498.sa", print_hash_value);
    transparent_crc(p_1671->g_498.sb, "p_1671->g_498.sb", print_hash_value);
    transparent_crc(p_1671->g_498.sc, "p_1671->g_498.sc", print_hash_value);
    transparent_crc(p_1671->g_498.sd, "p_1671->g_498.sd", print_hash_value);
    transparent_crc(p_1671->g_498.se, "p_1671->g_498.se", print_hash_value);
    transparent_crc(p_1671->g_498.sf, "p_1671->g_498.sf", print_hash_value);
    transparent_crc(p_1671->g_507.s0, "p_1671->g_507.s0", print_hash_value);
    transparent_crc(p_1671->g_507.s1, "p_1671->g_507.s1", print_hash_value);
    transparent_crc(p_1671->g_507.s2, "p_1671->g_507.s2", print_hash_value);
    transparent_crc(p_1671->g_507.s3, "p_1671->g_507.s3", print_hash_value);
    transparent_crc(p_1671->g_507.s4, "p_1671->g_507.s4", print_hash_value);
    transparent_crc(p_1671->g_507.s5, "p_1671->g_507.s5", print_hash_value);
    transparent_crc(p_1671->g_507.s6, "p_1671->g_507.s6", print_hash_value);
    transparent_crc(p_1671->g_507.s7, "p_1671->g_507.s7", print_hash_value);
    transparent_crc(p_1671->g_507.s8, "p_1671->g_507.s8", print_hash_value);
    transparent_crc(p_1671->g_507.s9, "p_1671->g_507.s9", print_hash_value);
    transparent_crc(p_1671->g_507.sa, "p_1671->g_507.sa", print_hash_value);
    transparent_crc(p_1671->g_507.sb, "p_1671->g_507.sb", print_hash_value);
    transparent_crc(p_1671->g_507.sc, "p_1671->g_507.sc", print_hash_value);
    transparent_crc(p_1671->g_507.sd, "p_1671->g_507.sd", print_hash_value);
    transparent_crc(p_1671->g_507.se, "p_1671->g_507.se", print_hash_value);
    transparent_crc(p_1671->g_507.sf, "p_1671->g_507.sf", print_hash_value);
    transparent_crc(p_1671->g_516.x, "p_1671->g_516.x", print_hash_value);
    transparent_crc(p_1671->g_516.y, "p_1671->g_516.y", print_hash_value);
    transparent_crc(p_1671->g_516.z, "p_1671->g_516.z", print_hash_value);
    transparent_crc(p_1671->g_516.w, "p_1671->g_516.w", print_hash_value);
    transparent_crc(p_1671->g_528.s0, "p_1671->g_528.s0", print_hash_value);
    transparent_crc(p_1671->g_528.s1, "p_1671->g_528.s1", print_hash_value);
    transparent_crc(p_1671->g_528.s2, "p_1671->g_528.s2", print_hash_value);
    transparent_crc(p_1671->g_528.s3, "p_1671->g_528.s3", print_hash_value);
    transparent_crc(p_1671->g_528.s4, "p_1671->g_528.s4", print_hash_value);
    transparent_crc(p_1671->g_528.s5, "p_1671->g_528.s5", print_hash_value);
    transparent_crc(p_1671->g_528.s6, "p_1671->g_528.s6", print_hash_value);
    transparent_crc(p_1671->g_528.s7, "p_1671->g_528.s7", print_hash_value);
    transparent_crc(p_1671->g_529.x, "p_1671->g_529.x", print_hash_value);
    transparent_crc(p_1671->g_529.y, "p_1671->g_529.y", print_hash_value);
    transparent_crc(p_1671->g_529.z, "p_1671->g_529.z", print_hash_value);
    transparent_crc(p_1671->g_529.w, "p_1671->g_529.w", print_hash_value);
    transparent_crc(p_1671->g_532.x, "p_1671->g_532.x", print_hash_value);
    transparent_crc(p_1671->g_532.y, "p_1671->g_532.y", print_hash_value);
    transparent_crc(p_1671->g_532.z, "p_1671->g_532.z", print_hash_value);
    transparent_crc(p_1671->g_532.w, "p_1671->g_532.w", print_hash_value);
    transparent_crc(p_1671->g_550.s0, "p_1671->g_550.s0", print_hash_value);
    transparent_crc(p_1671->g_550.s1, "p_1671->g_550.s1", print_hash_value);
    transparent_crc(p_1671->g_550.s2, "p_1671->g_550.s2", print_hash_value);
    transparent_crc(p_1671->g_550.s3, "p_1671->g_550.s3", print_hash_value);
    transparent_crc(p_1671->g_550.s4, "p_1671->g_550.s4", print_hash_value);
    transparent_crc(p_1671->g_550.s5, "p_1671->g_550.s5", print_hash_value);
    transparent_crc(p_1671->g_550.s6, "p_1671->g_550.s6", print_hash_value);
    transparent_crc(p_1671->g_550.s7, "p_1671->g_550.s7", print_hash_value);
    transparent_crc(p_1671->g_550.s8, "p_1671->g_550.s8", print_hash_value);
    transparent_crc(p_1671->g_550.s9, "p_1671->g_550.s9", print_hash_value);
    transparent_crc(p_1671->g_550.sa, "p_1671->g_550.sa", print_hash_value);
    transparent_crc(p_1671->g_550.sb, "p_1671->g_550.sb", print_hash_value);
    transparent_crc(p_1671->g_550.sc, "p_1671->g_550.sc", print_hash_value);
    transparent_crc(p_1671->g_550.sd, "p_1671->g_550.sd", print_hash_value);
    transparent_crc(p_1671->g_550.se, "p_1671->g_550.se", print_hash_value);
    transparent_crc(p_1671->g_550.sf, "p_1671->g_550.sf", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        transparent_crc(p_1671->g_569[i], "p_1671->g_569[i]", print_hash_value);

    }
    transparent_crc(p_1671->g_578.x, "p_1671->g_578.x", print_hash_value);
    transparent_crc(p_1671->g_578.y, "p_1671->g_578.y", print_hash_value);
    transparent_crc(p_1671->g_578.z, "p_1671->g_578.z", print_hash_value);
    transparent_crc(p_1671->g_578.w, "p_1671->g_578.w", print_hash_value);
    transparent_crc(p_1671->g_581.x, "p_1671->g_581.x", print_hash_value);
    transparent_crc(p_1671->g_581.y, "p_1671->g_581.y", print_hash_value);
    transparent_crc(p_1671->g_581.z, "p_1671->g_581.z", print_hash_value);
    transparent_crc(p_1671->g_581.w, "p_1671->g_581.w", print_hash_value);
    transparent_crc(p_1671->g_583.x, "p_1671->g_583.x", print_hash_value);
    transparent_crc(p_1671->g_583.y, "p_1671->g_583.y", print_hash_value);
    transparent_crc(p_1671->g_616.x, "p_1671->g_616.x", print_hash_value);
    transparent_crc(p_1671->g_616.y, "p_1671->g_616.y", print_hash_value);
    transparent_crc(p_1671->g_616.z, "p_1671->g_616.z", print_hash_value);
    transparent_crc(p_1671->g_616.w, "p_1671->g_616.w", print_hash_value);
    transparent_crc(p_1671->g_618.x, "p_1671->g_618.x", print_hash_value);
    transparent_crc(p_1671->g_618.y, "p_1671->g_618.y", print_hash_value);
    transparent_crc(p_1671->g_618.z, "p_1671->g_618.z", print_hash_value);
    transparent_crc(p_1671->g_618.w, "p_1671->g_618.w", print_hash_value);
    transparent_crc(p_1671->g_646.s0, "p_1671->g_646.s0", print_hash_value);
    transparent_crc(p_1671->g_646.s1, "p_1671->g_646.s1", print_hash_value);
    transparent_crc(p_1671->g_646.s2, "p_1671->g_646.s2", print_hash_value);
    transparent_crc(p_1671->g_646.s3, "p_1671->g_646.s3", print_hash_value);
    transparent_crc(p_1671->g_646.s4, "p_1671->g_646.s4", print_hash_value);
    transparent_crc(p_1671->g_646.s5, "p_1671->g_646.s5", print_hash_value);
    transparent_crc(p_1671->g_646.s6, "p_1671->g_646.s6", print_hash_value);
    transparent_crc(p_1671->g_646.s7, "p_1671->g_646.s7", print_hash_value);
    transparent_crc(p_1671->g_677, "p_1671->g_677", print_hash_value);
    transparent_crc(p_1671->g_748, "p_1671->g_748", print_hash_value);
    transparent_crc(p_1671->g_774, "p_1671->g_774", print_hash_value);
    transparent_crc(p_1671->g_782.s0, "p_1671->g_782.s0", print_hash_value);
    transparent_crc(p_1671->g_782.s1, "p_1671->g_782.s1", print_hash_value);
    transparent_crc(p_1671->g_782.s2, "p_1671->g_782.s2", print_hash_value);
    transparent_crc(p_1671->g_782.s3, "p_1671->g_782.s3", print_hash_value);
    transparent_crc(p_1671->g_782.s4, "p_1671->g_782.s4", print_hash_value);
    transparent_crc(p_1671->g_782.s5, "p_1671->g_782.s5", print_hash_value);
    transparent_crc(p_1671->g_782.s6, "p_1671->g_782.s6", print_hash_value);
    transparent_crc(p_1671->g_782.s7, "p_1671->g_782.s7", print_hash_value);
    transparent_crc(p_1671->g_782.s8, "p_1671->g_782.s8", print_hash_value);
    transparent_crc(p_1671->g_782.s9, "p_1671->g_782.s9", print_hash_value);
    transparent_crc(p_1671->g_782.sa, "p_1671->g_782.sa", print_hash_value);
    transparent_crc(p_1671->g_782.sb, "p_1671->g_782.sb", print_hash_value);
    transparent_crc(p_1671->g_782.sc, "p_1671->g_782.sc", print_hash_value);
    transparent_crc(p_1671->g_782.sd, "p_1671->g_782.sd", print_hash_value);
    transparent_crc(p_1671->g_782.se, "p_1671->g_782.se", print_hash_value);
    transparent_crc(p_1671->g_782.sf, "p_1671->g_782.sf", print_hash_value);
    transparent_crc(p_1671->g_789, "p_1671->g_789", print_hash_value);
    transparent_crc(p_1671->g_801.x, "p_1671->g_801.x", print_hash_value);
    transparent_crc(p_1671->g_801.y, "p_1671->g_801.y", print_hash_value);
    transparent_crc(p_1671->g_802.x, "p_1671->g_802.x", print_hash_value);
    transparent_crc(p_1671->g_802.y, "p_1671->g_802.y", print_hash_value);
    transparent_crc(p_1671->g_821, "p_1671->g_821", print_hash_value);
    transparent_crc(p_1671->g_848.s0, "p_1671->g_848.s0", print_hash_value);
    transparent_crc(p_1671->g_848.s1, "p_1671->g_848.s1", print_hash_value);
    transparent_crc(p_1671->g_848.s2, "p_1671->g_848.s2", print_hash_value);
    transparent_crc(p_1671->g_848.s3, "p_1671->g_848.s3", print_hash_value);
    transparent_crc(p_1671->g_848.s4, "p_1671->g_848.s4", print_hash_value);
    transparent_crc(p_1671->g_848.s5, "p_1671->g_848.s5", print_hash_value);
    transparent_crc(p_1671->g_848.s6, "p_1671->g_848.s6", print_hash_value);
    transparent_crc(p_1671->g_848.s7, "p_1671->g_848.s7", print_hash_value);
    transparent_crc(p_1671->g_929.s0, "p_1671->g_929.s0", print_hash_value);
    transparent_crc(p_1671->g_929.s1, "p_1671->g_929.s1", print_hash_value);
    transparent_crc(p_1671->g_929.s2, "p_1671->g_929.s2", print_hash_value);
    transparent_crc(p_1671->g_929.s3, "p_1671->g_929.s3", print_hash_value);
    transparent_crc(p_1671->g_929.s4, "p_1671->g_929.s4", print_hash_value);
    transparent_crc(p_1671->g_929.s5, "p_1671->g_929.s5", print_hash_value);
    transparent_crc(p_1671->g_929.s6, "p_1671->g_929.s6", print_hash_value);
    transparent_crc(p_1671->g_929.s7, "p_1671->g_929.s7", print_hash_value);
    transparent_crc(p_1671->g_929.s8, "p_1671->g_929.s8", print_hash_value);
    transparent_crc(p_1671->g_929.s9, "p_1671->g_929.s9", print_hash_value);
    transparent_crc(p_1671->g_929.sa, "p_1671->g_929.sa", print_hash_value);
    transparent_crc(p_1671->g_929.sb, "p_1671->g_929.sb", print_hash_value);
    transparent_crc(p_1671->g_929.sc, "p_1671->g_929.sc", print_hash_value);
    transparent_crc(p_1671->g_929.sd, "p_1671->g_929.sd", print_hash_value);
    transparent_crc(p_1671->g_929.se, "p_1671->g_929.se", print_hash_value);
    transparent_crc(p_1671->g_929.sf, "p_1671->g_929.sf", print_hash_value);
    transparent_crc(p_1671->g_934.x, "p_1671->g_934.x", print_hash_value);
    transparent_crc(p_1671->g_934.y, "p_1671->g_934.y", print_hash_value);
    transparent_crc(p_1671->g_934.z, "p_1671->g_934.z", print_hash_value);
    transparent_crc(p_1671->g_934.w, "p_1671->g_934.w", print_hash_value);
    transparent_crc(p_1671->g_948.x, "p_1671->g_948.x", print_hash_value);
    transparent_crc(p_1671->g_948.y, "p_1671->g_948.y", print_hash_value);
    transparent_crc(p_1671->g_954.s0, "p_1671->g_954.s0", print_hash_value);
    transparent_crc(p_1671->g_954.s1, "p_1671->g_954.s1", print_hash_value);
    transparent_crc(p_1671->g_954.s2, "p_1671->g_954.s2", print_hash_value);
    transparent_crc(p_1671->g_954.s3, "p_1671->g_954.s3", print_hash_value);
    transparent_crc(p_1671->g_954.s4, "p_1671->g_954.s4", print_hash_value);
    transparent_crc(p_1671->g_954.s5, "p_1671->g_954.s5", print_hash_value);
    transparent_crc(p_1671->g_954.s6, "p_1671->g_954.s6", print_hash_value);
    transparent_crc(p_1671->g_954.s7, "p_1671->g_954.s7", print_hash_value);
    transparent_crc(p_1671->g_978.s0, "p_1671->g_978.s0", print_hash_value);
    transparent_crc(p_1671->g_978.s1, "p_1671->g_978.s1", print_hash_value);
    transparent_crc(p_1671->g_978.s2, "p_1671->g_978.s2", print_hash_value);
    transparent_crc(p_1671->g_978.s3, "p_1671->g_978.s3", print_hash_value);
    transparent_crc(p_1671->g_978.s4, "p_1671->g_978.s4", print_hash_value);
    transparent_crc(p_1671->g_978.s5, "p_1671->g_978.s5", print_hash_value);
    transparent_crc(p_1671->g_978.s6, "p_1671->g_978.s6", print_hash_value);
    transparent_crc(p_1671->g_978.s7, "p_1671->g_978.s7", print_hash_value);
    transparent_crc(p_1671->g_978.s8, "p_1671->g_978.s8", print_hash_value);
    transparent_crc(p_1671->g_978.s9, "p_1671->g_978.s9", print_hash_value);
    transparent_crc(p_1671->g_978.sa, "p_1671->g_978.sa", print_hash_value);
    transparent_crc(p_1671->g_978.sb, "p_1671->g_978.sb", print_hash_value);
    transparent_crc(p_1671->g_978.sc, "p_1671->g_978.sc", print_hash_value);
    transparent_crc(p_1671->g_978.sd, "p_1671->g_978.sd", print_hash_value);
    transparent_crc(p_1671->g_978.se, "p_1671->g_978.se", print_hash_value);
    transparent_crc(p_1671->g_978.sf, "p_1671->g_978.sf", print_hash_value);
    transparent_crc(p_1671->g_979.s0, "p_1671->g_979.s0", print_hash_value);
    transparent_crc(p_1671->g_979.s1, "p_1671->g_979.s1", print_hash_value);
    transparent_crc(p_1671->g_979.s2, "p_1671->g_979.s2", print_hash_value);
    transparent_crc(p_1671->g_979.s3, "p_1671->g_979.s3", print_hash_value);
    transparent_crc(p_1671->g_979.s4, "p_1671->g_979.s4", print_hash_value);
    transparent_crc(p_1671->g_979.s5, "p_1671->g_979.s5", print_hash_value);
    transparent_crc(p_1671->g_979.s6, "p_1671->g_979.s6", print_hash_value);
    transparent_crc(p_1671->g_979.s7, "p_1671->g_979.s7", print_hash_value);
    transparent_crc(p_1671->g_979.s8, "p_1671->g_979.s8", print_hash_value);
    transparent_crc(p_1671->g_979.s9, "p_1671->g_979.s9", print_hash_value);
    transparent_crc(p_1671->g_979.sa, "p_1671->g_979.sa", print_hash_value);
    transparent_crc(p_1671->g_979.sb, "p_1671->g_979.sb", print_hash_value);
    transparent_crc(p_1671->g_979.sc, "p_1671->g_979.sc", print_hash_value);
    transparent_crc(p_1671->g_979.sd, "p_1671->g_979.sd", print_hash_value);
    transparent_crc(p_1671->g_979.se, "p_1671->g_979.se", print_hash_value);
    transparent_crc(p_1671->g_979.sf, "p_1671->g_979.sf", print_hash_value);
    transparent_crc(p_1671->g_987, "p_1671->g_987", print_hash_value);
    transparent_crc(p_1671->g_991.x, "p_1671->g_991.x", print_hash_value);
    transparent_crc(p_1671->g_991.y, "p_1671->g_991.y", print_hash_value);
    transparent_crc(p_1671->g_991.z, "p_1671->g_991.z", print_hash_value);
    transparent_crc(p_1671->g_991.w, "p_1671->g_991.w", print_hash_value);
    transparent_crc(p_1671->g_1002.s0, "p_1671->g_1002.s0", print_hash_value);
    transparent_crc(p_1671->g_1002.s1, "p_1671->g_1002.s1", print_hash_value);
    transparent_crc(p_1671->g_1002.s2, "p_1671->g_1002.s2", print_hash_value);
    transparent_crc(p_1671->g_1002.s3, "p_1671->g_1002.s3", print_hash_value);
    transparent_crc(p_1671->g_1002.s4, "p_1671->g_1002.s4", print_hash_value);
    transparent_crc(p_1671->g_1002.s5, "p_1671->g_1002.s5", print_hash_value);
    transparent_crc(p_1671->g_1002.s6, "p_1671->g_1002.s6", print_hash_value);
    transparent_crc(p_1671->g_1002.s7, "p_1671->g_1002.s7", print_hash_value);
    transparent_crc(p_1671->g_1003.x, "p_1671->g_1003.x", print_hash_value);
    transparent_crc(p_1671->g_1003.y, "p_1671->g_1003.y", print_hash_value);
    transparent_crc(p_1671->g_1003.z, "p_1671->g_1003.z", print_hash_value);
    transparent_crc(p_1671->g_1003.w, "p_1671->g_1003.w", print_hash_value);
    transparent_crc(p_1671->g_1029.x, "p_1671->g_1029.x", print_hash_value);
    transparent_crc(p_1671->g_1029.y, "p_1671->g_1029.y", print_hash_value);
    transparent_crc(p_1671->g_1048.s0, "p_1671->g_1048.s0", print_hash_value);
    transparent_crc(p_1671->g_1048.s1, "p_1671->g_1048.s1", print_hash_value);
    transparent_crc(p_1671->g_1048.s2, "p_1671->g_1048.s2", print_hash_value);
    transparent_crc(p_1671->g_1048.s3, "p_1671->g_1048.s3", print_hash_value);
    transparent_crc(p_1671->g_1048.s4, "p_1671->g_1048.s4", print_hash_value);
    transparent_crc(p_1671->g_1048.s5, "p_1671->g_1048.s5", print_hash_value);
    transparent_crc(p_1671->g_1048.s6, "p_1671->g_1048.s6", print_hash_value);
    transparent_crc(p_1671->g_1048.s7, "p_1671->g_1048.s7", print_hash_value);
    transparent_crc(p_1671->g_1078, "p_1671->g_1078", print_hash_value);
    transparent_crc(p_1671->g_1096.x, "p_1671->g_1096.x", print_hash_value);
    transparent_crc(p_1671->g_1096.y, "p_1671->g_1096.y", print_hash_value);
    transparent_crc(p_1671->g_1096.z, "p_1671->g_1096.z", print_hash_value);
    transparent_crc(p_1671->g_1096.w, "p_1671->g_1096.w", print_hash_value);
    transparent_crc(p_1671->g_1107.x, "p_1671->g_1107.x", print_hash_value);
    transparent_crc(p_1671->g_1107.y, "p_1671->g_1107.y", print_hash_value);
    transparent_crc(p_1671->g_1115.s0, "p_1671->g_1115.s0", print_hash_value);
    transparent_crc(p_1671->g_1115.s1, "p_1671->g_1115.s1", print_hash_value);
    transparent_crc(p_1671->g_1115.s2, "p_1671->g_1115.s2", print_hash_value);
    transparent_crc(p_1671->g_1115.s3, "p_1671->g_1115.s3", print_hash_value);
    transparent_crc(p_1671->g_1115.s4, "p_1671->g_1115.s4", print_hash_value);
    transparent_crc(p_1671->g_1115.s5, "p_1671->g_1115.s5", print_hash_value);
    transparent_crc(p_1671->g_1115.s6, "p_1671->g_1115.s6", print_hash_value);
    transparent_crc(p_1671->g_1115.s7, "p_1671->g_1115.s7", print_hash_value);
    transparent_crc(p_1671->g_1118.x, "p_1671->g_1118.x", print_hash_value);
    transparent_crc(p_1671->g_1118.y, "p_1671->g_1118.y", print_hash_value);
    transparent_crc(p_1671->g_1118.z, "p_1671->g_1118.z", print_hash_value);
    transparent_crc(p_1671->g_1118.w, "p_1671->g_1118.w", print_hash_value);
    transparent_crc(p_1671->g_1120.s0, "p_1671->g_1120.s0", print_hash_value);
    transparent_crc(p_1671->g_1120.s1, "p_1671->g_1120.s1", print_hash_value);
    transparent_crc(p_1671->g_1120.s2, "p_1671->g_1120.s2", print_hash_value);
    transparent_crc(p_1671->g_1120.s3, "p_1671->g_1120.s3", print_hash_value);
    transparent_crc(p_1671->g_1120.s4, "p_1671->g_1120.s4", print_hash_value);
    transparent_crc(p_1671->g_1120.s5, "p_1671->g_1120.s5", print_hash_value);
    transparent_crc(p_1671->g_1120.s6, "p_1671->g_1120.s6", print_hash_value);
    transparent_crc(p_1671->g_1120.s7, "p_1671->g_1120.s7", print_hash_value);
    transparent_crc(p_1671->g_1120.s8, "p_1671->g_1120.s8", print_hash_value);
    transparent_crc(p_1671->g_1120.s9, "p_1671->g_1120.s9", print_hash_value);
    transparent_crc(p_1671->g_1120.sa, "p_1671->g_1120.sa", print_hash_value);
    transparent_crc(p_1671->g_1120.sb, "p_1671->g_1120.sb", print_hash_value);
    transparent_crc(p_1671->g_1120.sc, "p_1671->g_1120.sc", print_hash_value);
    transparent_crc(p_1671->g_1120.sd, "p_1671->g_1120.sd", print_hash_value);
    transparent_crc(p_1671->g_1120.se, "p_1671->g_1120.se", print_hash_value);
    transparent_crc(p_1671->g_1120.sf, "p_1671->g_1120.sf", print_hash_value);
    transparent_crc(p_1671->g_1141.x, "p_1671->g_1141.x", print_hash_value);
    transparent_crc(p_1671->g_1141.y, "p_1671->g_1141.y", print_hash_value);
    transparent_crc(p_1671->g_1141.z, "p_1671->g_1141.z", print_hash_value);
    transparent_crc(p_1671->g_1141.w, "p_1671->g_1141.w", print_hash_value);
    transparent_crc(p_1671->g_1158.x, "p_1671->g_1158.x", print_hash_value);
    transparent_crc(p_1671->g_1158.y, "p_1671->g_1158.y", print_hash_value);
    transparent_crc(p_1671->g_1158.z, "p_1671->g_1158.z", print_hash_value);
    transparent_crc(p_1671->g_1158.w, "p_1671->g_1158.w", print_hash_value);
    transparent_crc(p_1671->g_1220.x, "p_1671->g_1220.x", print_hash_value);
    transparent_crc(p_1671->g_1220.y, "p_1671->g_1220.y", print_hash_value);
    transparent_crc(p_1671->g_1220.z, "p_1671->g_1220.z", print_hash_value);
    transparent_crc(p_1671->g_1220.w, "p_1671->g_1220.w", print_hash_value);
    transparent_crc(p_1671->g_1228.s0, "p_1671->g_1228.s0", print_hash_value);
    transparent_crc(p_1671->g_1228.s1, "p_1671->g_1228.s1", print_hash_value);
    transparent_crc(p_1671->g_1228.s2, "p_1671->g_1228.s2", print_hash_value);
    transparent_crc(p_1671->g_1228.s3, "p_1671->g_1228.s3", print_hash_value);
    transparent_crc(p_1671->g_1228.s4, "p_1671->g_1228.s4", print_hash_value);
    transparent_crc(p_1671->g_1228.s5, "p_1671->g_1228.s5", print_hash_value);
    transparent_crc(p_1671->g_1228.s6, "p_1671->g_1228.s6", print_hash_value);
    transparent_crc(p_1671->g_1228.s7, "p_1671->g_1228.s7", print_hash_value);
    transparent_crc(p_1671->g_1228.s8, "p_1671->g_1228.s8", print_hash_value);
    transparent_crc(p_1671->g_1228.s9, "p_1671->g_1228.s9", print_hash_value);
    transparent_crc(p_1671->g_1228.sa, "p_1671->g_1228.sa", print_hash_value);
    transparent_crc(p_1671->g_1228.sb, "p_1671->g_1228.sb", print_hash_value);
    transparent_crc(p_1671->g_1228.sc, "p_1671->g_1228.sc", print_hash_value);
    transparent_crc(p_1671->g_1228.sd, "p_1671->g_1228.sd", print_hash_value);
    transparent_crc(p_1671->g_1228.se, "p_1671->g_1228.se", print_hash_value);
    transparent_crc(p_1671->g_1228.sf, "p_1671->g_1228.sf", print_hash_value);
    transparent_crc(p_1671->g_1242.s0, "p_1671->g_1242.s0", print_hash_value);
    transparent_crc(p_1671->g_1242.s1, "p_1671->g_1242.s1", print_hash_value);
    transparent_crc(p_1671->g_1242.s2, "p_1671->g_1242.s2", print_hash_value);
    transparent_crc(p_1671->g_1242.s3, "p_1671->g_1242.s3", print_hash_value);
    transparent_crc(p_1671->g_1242.s4, "p_1671->g_1242.s4", print_hash_value);
    transparent_crc(p_1671->g_1242.s5, "p_1671->g_1242.s5", print_hash_value);
    transparent_crc(p_1671->g_1242.s6, "p_1671->g_1242.s6", print_hash_value);
    transparent_crc(p_1671->g_1242.s7, "p_1671->g_1242.s7", print_hash_value);
    transparent_crc(p_1671->g_1242.s8, "p_1671->g_1242.s8", print_hash_value);
    transparent_crc(p_1671->g_1242.s9, "p_1671->g_1242.s9", print_hash_value);
    transparent_crc(p_1671->g_1242.sa, "p_1671->g_1242.sa", print_hash_value);
    transparent_crc(p_1671->g_1242.sb, "p_1671->g_1242.sb", print_hash_value);
    transparent_crc(p_1671->g_1242.sc, "p_1671->g_1242.sc", print_hash_value);
    transparent_crc(p_1671->g_1242.sd, "p_1671->g_1242.sd", print_hash_value);
    transparent_crc(p_1671->g_1242.se, "p_1671->g_1242.se", print_hash_value);
    transparent_crc(p_1671->g_1242.sf, "p_1671->g_1242.sf", print_hash_value);
    transparent_crc(p_1671->g_1268.s0, "p_1671->g_1268.s0", print_hash_value);
    transparent_crc(p_1671->g_1268.s1, "p_1671->g_1268.s1", print_hash_value);
    transparent_crc(p_1671->g_1268.s2, "p_1671->g_1268.s2", print_hash_value);
    transparent_crc(p_1671->g_1268.s3, "p_1671->g_1268.s3", print_hash_value);
    transparent_crc(p_1671->g_1268.s4, "p_1671->g_1268.s4", print_hash_value);
    transparent_crc(p_1671->g_1268.s5, "p_1671->g_1268.s5", print_hash_value);
    transparent_crc(p_1671->g_1268.s6, "p_1671->g_1268.s6", print_hash_value);
    transparent_crc(p_1671->g_1268.s7, "p_1671->g_1268.s7", print_hash_value);
    transparent_crc(p_1671->g_1268.s8, "p_1671->g_1268.s8", print_hash_value);
    transparent_crc(p_1671->g_1268.s9, "p_1671->g_1268.s9", print_hash_value);
    transparent_crc(p_1671->g_1268.sa, "p_1671->g_1268.sa", print_hash_value);
    transparent_crc(p_1671->g_1268.sb, "p_1671->g_1268.sb", print_hash_value);
    transparent_crc(p_1671->g_1268.sc, "p_1671->g_1268.sc", print_hash_value);
    transparent_crc(p_1671->g_1268.sd, "p_1671->g_1268.sd", print_hash_value);
    transparent_crc(p_1671->g_1268.se, "p_1671->g_1268.se", print_hash_value);
    transparent_crc(p_1671->g_1268.sf, "p_1671->g_1268.sf", print_hash_value);
    transparent_crc(p_1671->g_1276.s0, "p_1671->g_1276.s0", print_hash_value);
    transparent_crc(p_1671->g_1276.s1, "p_1671->g_1276.s1", print_hash_value);
    transparent_crc(p_1671->g_1276.s2, "p_1671->g_1276.s2", print_hash_value);
    transparent_crc(p_1671->g_1276.s3, "p_1671->g_1276.s3", print_hash_value);
    transparent_crc(p_1671->g_1276.s4, "p_1671->g_1276.s4", print_hash_value);
    transparent_crc(p_1671->g_1276.s5, "p_1671->g_1276.s5", print_hash_value);
    transparent_crc(p_1671->g_1276.s6, "p_1671->g_1276.s6", print_hash_value);
    transparent_crc(p_1671->g_1276.s7, "p_1671->g_1276.s7", print_hash_value);
    transparent_crc(p_1671->g_1276.s8, "p_1671->g_1276.s8", print_hash_value);
    transparent_crc(p_1671->g_1276.s9, "p_1671->g_1276.s9", print_hash_value);
    transparent_crc(p_1671->g_1276.sa, "p_1671->g_1276.sa", print_hash_value);
    transparent_crc(p_1671->g_1276.sb, "p_1671->g_1276.sb", print_hash_value);
    transparent_crc(p_1671->g_1276.sc, "p_1671->g_1276.sc", print_hash_value);
    transparent_crc(p_1671->g_1276.sd, "p_1671->g_1276.sd", print_hash_value);
    transparent_crc(p_1671->g_1276.se, "p_1671->g_1276.se", print_hash_value);
    transparent_crc(p_1671->g_1276.sf, "p_1671->g_1276.sf", print_hash_value);
    transparent_crc(p_1671->g_1292.x, "p_1671->g_1292.x", print_hash_value);
    transparent_crc(p_1671->g_1292.y, "p_1671->g_1292.y", print_hash_value);
    transparent_crc(p_1671->g_1298.s0, "p_1671->g_1298.s0", print_hash_value);
    transparent_crc(p_1671->g_1298.s1, "p_1671->g_1298.s1", print_hash_value);
    transparent_crc(p_1671->g_1298.s2, "p_1671->g_1298.s2", print_hash_value);
    transparent_crc(p_1671->g_1298.s3, "p_1671->g_1298.s3", print_hash_value);
    transparent_crc(p_1671->g_1298.s4, "p_1671->g_1298.s4", print_hash_value);
    transparent_crc(p_1671->g_1298.s5, "p_1671->g_1298.s5", print_hash_value);
    transparent_crc(p_1671->g_1298.s6, "p_1671->g_1298.s6", print_hash_value);
    transparent_crc(p_1671->g_1298.s7, "p_1671->g_1298.s7", print_hash_value);
    transparent_crc(p_1671->g_1298.s8, "p_1671->g_1298.s8", print_hash_value);
    transparent_crc(p_1671->g_1298.s9, "p_1671->g_1298.s9", print_hash_value);
    transparent_crc(p_1671->g_1298.sa, "p_1671->g_1298.sa", print_hash_value);
    transparent_crc(p_1671->g_1298.sb, "p_1671->g_1298.sb", print_hash_value);
    transparent_crc(p_1671->g_1298.sc, "p_1671->g_1298.sc", print_hash_value);
    transparent_crc(p_1671->g_1298.sd, "p_1671->g_1298.sd", print_hash_value);
    transparent_crc(p_1671->g_1298.se, "p_1671->g_1298.se", print_hash_value);
    transparent_crc(p_1671->g_1298.sf, "p_1671->g_1298.sf", print_hash_value);
    transparent_crc(p_1671->g_1313, "p_1671->g_1313", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        for (j = 0; j < 5; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_1671->g_1316[i][j][k], "p_1671->g_1316[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1671->g_1326.x, "p_1671->g_1326.x", print_hash_value);
    transparent_crc(p_1671->g_1326.y, "p_1671->g_1326.y", print_hash_value);
    for (i = 0; i < 8; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_1671->g_1407[i][j], "p_1671->g_1407[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1671->g_1431.s0, "p_1671->g_1431.s0", print_hash_value);
    transparent_crc(p_1671->g_1431.s1, "p_1671->g_1431.s1", print_hash_value);
    transparent_crc(p_1671->g_1431.s2, "p_1671->g_1431.s2", print_hash_value);
    transparent_crc(p_1671->g_1431.s3, "p_1671->g_1431.s3", print_hash_value);
    transparent_crc(p_1671->g_1431.s4, "p_1671->g_1431.s4", print_hash_value);
    transparent_crc(p_1671->g_1431.s5, "p_1671->g_1431.s5", print_hash_value);
    transparent_crc(p_1671->g_1431.s6, "p_1671->g_1431.s6", print_hash_value);
    transparent_crc(p_1671->g_1431.s7, "p_1671->g_1431.s7", print_hash_value);
    transparent_crc(p_1671->g_1438.x, "p_1671->g_1438.x", print_hash_value);
    transparent_crc(p_1671->g_1438.y, "p_1671->g_1438.y", print_hash_value);
    transparent_crc(p_1671->g_1438.z, "p_1671->g_1438.z", print_hash_value);
    transparent_crc(p_1671->g_1438.w, "p_1671->g_1438.w", print_hash_value);
    transparent_crc(p_1671->g_1458.s0, "p_1671->g_1458.s0", print_hash_value);
    transparent_crc(p_1671->g_1458.s1, "p_1671->g_1458.s1", print_hash_value);
    transparent_crc(p_1671->g_1458.s2, "p_1671->g_1458.s2", print_hash_value);
    transparent_crc(p_1671->g_1458.s3, "p_1671->g_1458.s3", print_hash_value);
    transparent_crc(p_1671->g_1458.s4, "p_1671->g_1458.s4", print_hash_value);
    transparent_crc(p_1671->g_1458.s5, "p_1671->g_1458.s5", print_hash_value);
    transparent_crc(p_1671->g_1458.s6, "p_1671->g_1458.s6", print_hash_value);
    transparent_crc(p_1671->g_1458.s7, "p_1671->g_1458.s7", print_hash_value);
    transparent_crc(p_1671->g_1458.s8, "p_1671->g_1458.s8", print_hash_value);
    transparent_crc(p_1671->g_1458.s9, "p_1671->g_1458.s9", print_hash_value);
    transparent_crc(p_1671->g_1458.sa, "p_1671->g_1458.sa", print_hash_value);
    transparent_crc(p_1671->g_1458.sb, "p_1671->g_1458.sb", print_hash_value);
    transparent_crc(p_1671->g_1458.sc, "p_1671->g_1458.sc", print_hash_value);
    transparent_crc(p_1671->g_1458.sd, "p_1671->g_1458.sd", print_hash_value);
    transparent_crc(p_1671->g_1458.se, "p_1671->g_1458.se", print_hash_value);
    transparent_crc(p_1671->g_1458.sf, "p_1671->g_1458.sf", print_hash_value);
    transparent_crc(p_1671->g_1463.s0, "p_1671->g_1463.s0", print_hash_value);
    transparent_crc(p_1671->g_1463.s1, "p_1671->g_1463.s1", print_hash_value);
    transparent_crc(p_1671->g_1463.s2, "p_1671->g_1463.s2", print_hash_value);
    transparent_crc(p_1671->g_1463.s3, "p_1671->g_1463.s3", print_hash_value);
    transparent_crc(p_1671->g_1463.s4, "p_1671->g_1463.s4", print_hash_value);
    transparent_crc(p_1671->g_1463.s5, "p_1671->g_1463.s5", print_hash_value);
    transparent_crc(p_1671->g_1463.s6, "p_1671->g_1463.s6", print_hash_value);
    transparent_crc(p_1671->g_1463.s7, "p_1671->g_1463.s7", print_hash_value);
    transparent_crc(p_1671->g_1484.s0, "p_1671->g_1484.s0", print_hash_value);
    transparent_crc(p_1671->g_1484.s1, "p_1671->g_1484.s1", print_hash_value);
    transparent_crc(p_1671->g_1484.s2, "p_1671->g_1484.s2", print_hash_value);
    transparent_crc(p_1671->g_1484.s3, "p_1671->g_1484.s3", print_hash_value);
    transparent_crc(p_1671->g_1484.s4, "p_1671->g_1484.s4", print_hash_value);
    transparent_crc(p_1671->g_1484.s5, "p_1671->g_1484.s5", print_hash_value);
    transparent_crc(p_1671->g_1484.s6, "p_1671->g_1484.s6", print_hash_value);
    transparent_crc(p_1671->g_1484.s7, "p_1671->g_1484.s7", print_hash_value);
    transparent_crc(p_1671->g_1484.s8, "p_1671->g_1484.s8", print_hash_value);
    transparent_crc(p_1671->g_1484.s9, "p_1671->g_1484.s9", print_hash_value);
    transparent_crc(p_1671->g_1484.sa, "p_1671->g_1484.sa", print_hash_value);
    transparent_crc(p_1671->g_1484.sb, "p_1671->g_1484.sb", print_hash_value);
    transparent_crc(p_1671->g_1484.sc, "p_1671->g_1484.sc", print_hash_value);
    transparent_crc(p_1671->g_1484.sd, "p_1671->g_1484.sd", print_hash_value);
    transparent_crc(p_1671->g_1484.se, "p_1671->g_1484.se", print_hash_value);
    transparent_crc(p_1671->g_1484.sf, "p_1671->g_1484.sf", print_hash_value);
    transparent_crc(p_1671->g_1555.s0, "p_1671->g_1555.s0", print_hash_value);
    transparent_crc(p_1671->g_1555.s1, "p_1671->g_1555.s1", print_hash_value);
    transparent_crc(p_1671->g_1555.s2, "p_1671->g_1555.s2", print_hash_value);
    transparent_crc(p_1671->g_1555.s3, "p_1671->g_1555.s3", print_hash_value);
    transparent_crc(p_1671->g_1555.s4, "p_1671->g_1555.s4", print_hash_value);
    transparent_crc(p_1671->g_1555.s5, "p_1671->g_1555.s5", print_hash_value);
    transparent_crc(p_1671->g_1555.s6, "p_1671->g_1555.s6", print_hash_value);
    transparent_crc(p_1671->g_1555.s7, "p_1671->g_1555.s7", print_hash_value);
    transparent_crc(p_1671->g_1600.x, "p_1671->g_1600.x", print_hash_value);
    transparent_crc(p_1671->g_1600.y, "p_1671->g_1600.y", print_hash_value);
    transparent_crc(p_1671->g_1601.s0, "p_1671->g_1601.s0", print_hash_value);
    transparent_crc(p_1671->g_1601.s1, "p_1671->g_1601.s1", print_hash_value);
    transparent_crc(p_1671->g_1601.s2, "p_1671->g_1601.s2", print_hash_value);
    transparent_crc(p_1671->g_1601.s3, "p_1671->g_1601.s3", print_hash_value);
    transparent_crc(p_1671->g_1601.s4, "p_1671->g_1601.s4", print_hash_value);
    transparent_crc(p_1671->g_1601.s5, "p_1671->g_1601.s5", print_hash_value);
    transparent_crc(p_1671->g_1601.s6, "p_1671->g_1601.s6", print_hash_value);
    transparent_crc(p_1671->g_1601.s7, "p_1671->g_1601.s7", print_hash_value);
    transparent_crc(p_1671->g_1606, "p_1671->g_1606", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
