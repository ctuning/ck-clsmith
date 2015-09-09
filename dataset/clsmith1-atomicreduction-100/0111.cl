// ---atomic_reductions ---fake_divergence -g 60,53,1 -l 1,1,1
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


// Seed: 111

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   int8_t  f0;
};

struct S1 {
    int32_t g_2;
    int32_t g_6;
    int32_t g_8;
    volatile uint32_t g_10;
    uint32_t g_42;
    int32_t *g_69;
    uint32_t g_70;
    volatile struct S0 g_71;
    volatile struct S0 * volatile g_72;
    volatile int64_t g_78[7];
    int32_t g_80[6][4];
    struct S0 g_94;
    struct S0 * volatile g_93;
    uint16_t *g_141;
    int32_t g_155;
    int16_t g_159;
    int32_t g_179;
    int64_t g_190;
    uint16_t g_222;
    uint64_t g_234;
    struct S0 * volatile g_237;
    volatile uint16_t * volatile * volatile *g_284;
    int32_t g_287;
    int16_t *g_293;
    int16_t **g_292;
    int16_t *** volatile g_291[2][5];
    int16_t *** volatile g_294;
    uint64_t g_298;
    int32_t ** volatile g_303[6][2][4];
    int32_t ** volatile g_304;
    struct S0 g_306;
    uint32_t g_313;
    int64_t g_317;
    int32_t ** volatile g_325;
    volatile uint64_t g_347;
    int32_t g_374;
    uint16_t g_375;
    int32_t * volatile g_379;
    int8_t *g_508;
    int8_t **g_507[10][10][2];
    struct S0 **g_552;
    struct S0 *** volatile g_551;
    int32_t ** volatile g_588;
    int32_t ** volatile g_627;
    int32_t *g_629;
    int32_t ** volatile g_628;
    uint8_t g_648;
    uint16_t **g_680;
    uint16_t ***g_679;
    struct S0 * volatile g_713;
    uint16_t ***g_734[5][4];
    volatile uint16_t g_744;
    int32_t ** volatile g_763;
    struct S0 ** volatile g_852;
    struct S0 *g_854;
    struct S0 ** volatile g_853;
    volatile int8_t g_870;
    int32_t ** volatile g_891;
    int32_t ** volatile g_982;
    int32_t ** volatile g_983[1][4][6];
    volatile uint32_t g_992;
    int32_t ** volatile g_1035;
    uint64_t *g_1089;
    uint64_t **g_1088;
    uint32_t g_1157;
    uint64_t g_1176;
    uint64_t *g_1180;
    uint64_t **g_1179[2];
    int32_t ** volatile g_1198;
    int32_t ** volatile g_1207[4];
    int32_t ** volatile g_1208;
    uint32_t *g_1231;
    uint32_t **g_1230;
    uint32_t *** volatile g_1229;
    volatile uint64_t g_1301;
    int64_t g_1336;
    uint64_t g_1421;
    uint8_t g_1461;
    int32_t ** volatile g_1482;
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
    __local volatile uint32_t *l_atomic_reduction;
    __global volatile uint32_t *g_atomic_reduction;
};


/* --- FORWARD DECLARATIONS --- */
int64_t  func_1(struct S1 * p_1495);
int16_t  func_16(uint32_t  p_17, uint16_t  p_18, int8_t  p_19, int32_t * p_20, struct S1 * p_1495);
int32_t  func_23(struct S0  p_24, struct S1 * p_1495);
int32_t * func_30(int32_t  p_31, struct S1 * p_1495);
int16_t  func_37(uint32_t  p_38, struct S1 * p_1495);
int32_t * func_45(uint32_t * p_46, struct S0  p_47, struct S0  p_48, int32_t * p_49, struct S1 * p_1495);
struct S0  func_51(uint32_t * p_52, uint32_t * p_53, struct S1 * p_1495);
uint32_t * func_54(uint16_t  p_55, struct S1 * p_1495);
int64_t  func_59(int32_t * p_60, struct S1 * p_1495);
int32_t * func_61(uint64_t  p_62, int32_t * p_63, int32_t  p_64, struct S1 * p_1495);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1495->g_2 p_1495->g_10 p_1495->g_8 p_1495->g_42 p_1495->g_70 p_1495->g_71 p_1495->g_72 p_1495->g_93 p_1495->g_80 p_1495->g_155 p_1495->g_222 p_1495->g_179 p_1495->g_284 p_1495->g_94.f0 p_1495->g_304 p_1495->g_306 p_1495->g_159 p_1495->g_313 p_1495->g_317 p_1495->g_6 p_1495->g_325 p_1495->g_347 p_1495->g_190 p_1495->g_78 p_1495->g_69 p_1495->g_379 p_1495->g_551 p_1495->g_508 p_1495->g_588 p_1495->g_375 p_1495->g_628 p_1495->g_629 p_1495->g_853 p_1495->g_854 p_1495->g_734 p_1495->g_1035 p_1495->g_648 p_1495->g_679 p_1495->g_680 p_1495->g_141 p_1495->g_1088 p_1495->g_287 p_1495->g_374 p_1495->g_1198 p_1495->g_1208 p_1495->g_1229 p_1495->g_1482
 * writes: p_1495->g_2 p_1495->g_6 p_1495->g_10 p_1495->g_8 p_1495->g_42 p_1495->g_69 p_1495->g_70 p_1495->g_71 p_1495->g_94 p_1495->g_159 p_1495->g_222 p_1495->g_234 p_1495->g_287 p_1495->g_179 p_1495->g_292 p_1495->g_298 p_1495->g_313 p_1495->g_317 p_1495->g_347 p_1495->g_374 p_1495->g_375 p_1495->g_80 p_1495->g_552 p_1495->g_306.f0 p_1495->g_629 p_1495->g_648 p_1495->g_679 p_1495->g_734 p_1495->g_1088 p_1495->g_507 p_1495->g_1157 p_1495->g_1179 p_1495->g_1230
 */
int64_t  func_1(struct S1 * p_1495)
{ /* block id: 4 */
    int64_t l_5[9] = {0x7A5FEF9D7865925EL,0x2C36544D1878ABC1L,0x7A5FEF9D7865925EL,0x7A5FEF9D7865925EL,0x2C36544D1878ABC1L,0x7A5FEF9D7865925EL,0x7A5FEF9D7865925EL,0x2C36544D1878ABC1L,0x7A5FEF9D7865925EL};
    struct S0 l_25[10][5][1] = {{{{0x68L}},{{0x68L}},{{0x68L}},{{0x68L}},{{0x68L}}},{{{0x68L}},{{0x68L}},{{0x68L}},{{0x68L}},{{0x68L}}},{{{0x68L}},{{0x68L}},{{0x68L}},{{0x68L}},{{0x68L}}},{{{0x68L}},{{0x68L}},{{0x68L}},{{0x68L}},{{0x68L}}},{{{0x68L}},{{0x68L}},{{0x68L}},{{0x68L}},{{0x68L}}},{{{0x68L}},{{0x68L}},{{0x68L}},{{0x68L}},{{0x68L}}},{{{0x68L}},{{0x68L}},{{0x68L}},{{0x68L}},{{0x68L}}},{{{0x68L}},{{0x68L}},{{0x68L}},{{0x68L}},{{0x68L}}},{{{0x68L}},{{0x68L}},{{0x68L}},{{0x68L}},{{0x68L}}},{{{0x68L}},{{0x68L}},{{0x68L}},{{0x68L}},{{0x68L}}}};
    int32_t l_1479 = (-3L);
    int32_t l_1490[4][3];
    uint32_t l_1492 = 4294967287UL;
    int i, j, k;
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 3; j++)
            l_1490[i][j] = 0L;
    }
    for (p_1495->g_2 = 11; (p_1495->g_2 >= 25); p_1495->g_2 = safe_add_func_uint8_t_u_u(p_1495->g_2, 2))
    { /* block id: 7 */
        uint8_t l_1153 = 248UL;
        struct S0 *l_1480 = &p_1495->g_306;
        int32_t *l_1483 = &p_1495->g_80[4][2];
        int32_t l_1484[4] = {0x4C453568L,0x4C453568L,0x4C453568L,0x4C453568L};
        int32_t *l_1485 = &l_1484[2];
        int32_t *l_1486 = (void*)0;
        int32_t *l_1487 = &p_1495->g_8;
        int32_t *l_1488[7] = {&l_1484[2],&p_1495->g_179,&l_1484[2],&l_1484[2],&p_1495->g_179,&l_1484[2],&l_1484[2]};
        int32_t l_1489 = 1L;
        int64_t l_1491 = 0x6352765B293C552DL;
        int i;
        for (p_1495->g_6 = 3; (p_1495->g_6 <= 8); p_1495->g_6 += 1)
        { /* block id: 10 */
            int32_t *l_7 = &p_1495->g_8;
            int32_t *l_9[2];
            uint32_t l_13 = 0xE49A2F38L;
            int8_t **l_1150 = (void*)0;
            int8_t ***l_1151 = (void*)0;
            int8_t ***l_1152 = &p_1495->g_507[1][8][0];
            struct S0 **l_1481 = &l_1480;
            int i;
            for (i = 0; i < 2; i++)
                l_9[i] = &p_1495->g_8;
            --p_1495->g_10;
            if (l_13)
                break;
            l_1479 = (((void*)0 == &p_1495->g_6) && (0L & (p_1495->g_10 , func_16(l_5[3], ((safe_add_func_int32_t_s_s((((0UL < func_23(l_25[0][4][0], p_1495)) && (safe_mod_func_uint8_t_u_u((((*l_1152) = l_1150) == &p_1495->g_508), p_1495->g_8))) & l_25[0][4][0].f0), 3L)) || p_1495->g_70), l_1153, l_9[0], p_1495))));
            (*l_1481) = l_1480;
        }
        (*p_1495->g_1482) = &l_1479;
        l_1492--;
    }
    return p_1495->g_313;
}


/* ------------------------------------------ */
/* 
 * reads : p_1495->g_42 p_1495->g_8 p_1495->g_179 p_1495->g_80 p_1495->g_379 p_1495->g_374 p_1495->g_508 p_1495->g_306.f0 p_1495->g_287 p_1495->g_70 p_1495->g_71 p_1495->g_72 p_1495->g_93 p_1495->g_10 p_1495->g_2 p_1495->g_155 p_1495->g_222 p_1495->g_284 p_1495->g_94.f0 p_1495->g_304 p_1495->g_306 p_1495->g_159 p_1495->g_313 p_1495->g_317 p_1495->g_6 p_1495->g_325 p_1495->g_347 p_1495->g_190 p_1495->g_78 p_1495->g_69 p_1495->g_551 p_1495->g_588 p_1495->g_375 p_1495->g_628 p_1495->g_629 p_1495->g_853 p_1495->g_854 p_1495->g_734 p_1495->g_1035 p_1495->g_648 p_1495->g_679 p_1495->g_680 p_1495->g_141 p_1495->g_1088 p_1495->g_1198 p_1495->g_1208 p_1495->g_1157 p_1495->g_1229
 * writes: p_1495->g_1157 p_1495->g_179 p_1495->g_234 p_1495->g_8 p_1495->g_1179 p_1495->g_374 p_1495->g_306.f0 p_1495->g_42 p_1495->g_69 p_1495->g_70 p_1495->g_71 p_1495->g_94 p_1495->g_159 p_1495->g_222 p_1495->g_287 p_1495->g_292 p_1495->g_298 p_1495->g_313 p_1495->g_317 p_1495->g_347 p_1495->g_375 p_1495->g_80 p_1495->g_552 p_1495->g_629 p_1495->g_648 p_1495->g_679 p_1495->g_734 p_1495->g_1088 p_1495->g_1230
 */
int16_t  func_16(uint32_t  p_17, uint16_t  p_18, int8_t  p_19, int32_t * p_20, struct S1 * p_1495)
{ /* block id: 566 */
    uint32_t *l_1156 = &p_1495->g_1157;
    int32_t l_1158 = 0x042F532FL;
    int32_t *l_1173 = &p_1495->g_179;
    uint64_t *l_1174 = &p_1495->g_234;
    uint64_t *l_1175[2];
    uint64_t **l_1178 = &l_1175[0];
    uint64_t ***l_1177[8] = {&l_1178,&l_1178,&l_1178,&l_1178,&l_1178,&l_1178,&l_1178,&l_1178};
    uint32_t *l_1228[4][9][7] = {{{&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42},{&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42},{&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42},{&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42},{&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42},{&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42},{&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42},{&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42},{&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42}},{{&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42},{&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42},{&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42},{&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42},{&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42},{&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42},{&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42},{&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42},{&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42}},{{&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42},{&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42},{&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42},{&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42},{&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42},{&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42},{&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42},{&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42},{&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42}},{{&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42},{&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42},{&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42},{&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42},{&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42},{&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42},{&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42},{&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42},{&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42}}};
    uint32_t **l_1227 = &l_1228[2][1][5];
    struct S0 ***l_1238 = (void*)0;
    uint64_t ***l_1240 = (void*)0;
    int8_t **l_1243 = &p_1495->g_508;
    uint32_t l_1248 = 0x44354768L;
    int64_t l_1274 = 1L;
    uint8_t l_1277 = 0x3CL;
    int32_t *l_1279 = (void*)0;
    int32_t l_1354 = 0x5C4E0C67L;
    int32_t l_1356 = 0L;
    int32_t l_1357 = 0x67495EF1L;
    int32_t l_1358 = 1L;
    int32_t l_1360 = 0x02C03E0AL;
    uint64_t l_1362 = 0xD98885D495973FC7L;
    int16_t **l_1408 = &p_1495->g_293;
    int32_t l_1417 = (-5L);
    uint64_t ***l_1459 = &l_1178;
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_1175[i] = &p_1495->g_1176;
    (*p_20) = (safe_sub_func_uint64_t_u_u(GROUP_DIVERGE(2, 1), (l_1158 = (((*l_1156) = (p_17 , FAKE_DIVERGE(p_1495->local_2_offset, get_local_id(2), 10))) , ((((&p_1495->g_992 == &p_1495->g_313) > (l_1158 , p_1495->g_42)) != ((255UL || ((safe_rshift_func_int8_t_s_s((safe_mod_func_int64_t_s_s((safe_sub_func_uint32_t_u_u(p_19, (((*l_1174) = (((((safe_mul_func_int8_t_s_s(((safe_div_func_int64_t_s_s((((((safe_sub_func_int32_t_s_s(((*l_1173) &= ((*p_20) | (safe_lshift_func_uint8_t_u_s(l_1158, 3)))), 1UL)) != p_1495->g_80[4][2]) , p_19) >= 0L) <= 1L), 0x377FCC4C4AFFE1EAL)) ^ (*p_1495->g_379)), 0L)) != p_17) >= FAKE_DIVERGE(p_1495->global_0_offset, get_global_id(0), 10)) , (*p_20)) | p_17)) >= 0x836A431894F2B34AL))), GROUP_DIVERGE(2, 1))), p_19)) & p_1495->g_80[4][2])) < 0x7CB310C2L)) || (-1L))))));
    if (((p_1495->g_1179[1] = &l_1174) == &p_1495->g_1180))
    { /* block id: 573 */
        int16_t l_1183 = 0x49B5L;
        uint64_t ***l_1196 = &p_1495->g_1179[1];
        uint32_t *l_1197 = &p_1495->g_1157;
        for (p_1495->g_374 = 0; (p_1495->g_374 <= 29); ++p_1495->g_374)
        { /* block id: 576 */
            return l_1183;
        }
        (*p_1495->g_1198) = func_30((safe_sub_func_int64_t_s_s((FAKE_DIVERGE(p_1495->local_0_offset, get_local_id(0), 10) , (((((safe_sub_func_uint8_t_u_u(((safe_mul_func_int16_t_s_s((*l_1173), ((safe_div_func_uint16_t_u_u(65527UL, l_1183)) <= p_19))) | (((1L != ((*l_1174) = (safe_mul_func_int8_t_s_s(((*p_1495->g_508) &= (safe_mod_func_uint16_t_u_u(l_1183, ((&p_1495->g_1179[0] != l_1196) , (-1L))))), p_19)))) ^ 0x58202B01L) & p_1495->g_8)), l_1183)) , (void*)0) != l_1197) > p_1495->g_287) | 1L)), p_1495->g_374)), p_1495);
    }
    else
    { /* block id: 582 */
        uint16_t l_1224 = 0x7294L;
        int8_t l_1236 = 3L;
        struct S0 ***l_1239 = &p_1495->g_552;
        uint8_t l_1242 = 1UL;
        int32_t *l_1249[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        uint64_t *l_1255 = &p_1495->g_298;
        int16_t **l_1410 = &p_1495->g_293;
        uint64_t l_1430 = 18446744073709551607UL;
        uint32_t **l_1450[1][1][2];
        uint64_t **l_1474 = (void*)0;
        int i, j, k;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 1; j++)
            {
                for (k = 0; k < 2; k++)
                    l_1450[i][j][k] = &l_1228[0][7][2];
            }
        }
        for (p_1495->g_222 = (-17); (p_1495->g_222 != 20); p_1495->g_222 = safe_add_func_uint16_t_u_u(p_1495->g_222, 4))
        { /* block id: 585 */
            int32_t *l_1203 = &p_1495->g_2;
            int32_t *l_1212 = &p_1495->g_80[4][0];
            int32_t *l_1213 = &p_1495->g_80[1][1];
            int32_t l_1214 = 0x6E22F754L;
            int32_t *l_1215 = (void*)0;
            int32_t *l_1216 = &p_1495->g_179;
            int32_t *l_1217 = &p_1495->g_179;
            int32_t *l_1218 = (void*)0;
            int32_t *l_1219 = &p_1495->g_80[2][0];
            int32_t *l_1220 = &p_1495->g_80[4][2];
            int32_t *l_1221 = &p_1495->g_8;
            int32_t *l_1222 = (void*)0;
            int32_t *l_1223[1];
            int i;
            for (i = 0; i < 1; i++)
                l_1223[i] = &p_1495->g_179;
            for (p_1495->g_374 = 19; (p_1495->g_374 == (-22)); --p_1495->g_374)
            { /* block id: 588 */
                int64_t l_1206 = (-1L);
                int32_t l_1209[7][3] = {{5L,5L,5L},{5L,5L,5L},{5L,5L,5L},{5L,5L,5L},{5L,5L,5L},{5L,5L,5L},{5L,5L,5L}};
                int i, j;
                (*p_1495->g_1208) = func_61(p_18, l_1203, (safe_add_func_uint8_t_u_u(0xE7L, l_1206)), p_1495);
                if ((l_1209[0][0] = ((void*)0 != &p_1495->g_379)))
                { /* block id: 591 */
                    for (p_1495->g_94.f0 = (-14); (p_1495->g_94.f0 != (-20)); p_1495->g_94.f0 = safe_sub_func_int64_t_s_s(p_1495->g_94.f0, 7))
                    { /* block id: 594 */
                        if ((*p_20))
                            break;
                    }
                }
                else
                { /* block id: 597 */
                    (*l_1173) &= (*p_20);
                }
            }
            --l_1224;
        }
        for (p_1495->g_1157 = 0; (p_1495->g_1157 <= 0); p_1495->g_1157 += 1)
        { /* block id: 605 */
            uint32_t l_1232 = 4294967291UL;
            int32_t **l_1233 = &p_1495->g_629;
            uint32_t *l_1237 = &p_1495->g_313;
            uint32_t l_1241 = 0UL;
            int64_t l_1264 = 0x0ECE84611F0F6AF3L;
            int32_t l_1298 = 0x035FFF4BL;
            int32_t l_1300[8][9][3] = {{{1L,(-6L),0x23A164CFL},{1L,(-6L),0x23A164CFL},{1L,(-6L),0x23A164CFL},{1L,(-6L),0x23A164CFL},{1L,(-6L),0x23A164CFL},{1L,(-6L),0x23A164CFL},{1L,(-6L),0x23A164CFL},{1L,(-6L),0x23A164CFL},{1L,(-6L),0x23A164CFL}},{{1L,(-6L),0x23A164CFL},{1L,(-6L),0x23A164CFL},{1L,(-6L),0x23A164CFL},{1L,(-6L),0x23A164CFL},{1L,(-6L),0x23A164CFL},{1L,(-6L),0x23A164CFL},{1L,(-6L),0x23A164CFL},{1L,(-6L),0x23A164CFL},{1L,(-6L),0x23A164CFL}},{{1L,(-6L),0x23A164CFL},{1L,(-6L),0x23A164CFL},{1L,(-6L),0x23A164CFL},{1L,(-6L),0x23A164CFL},{1L,(-6L),0x23A164CFL},{1L,(-6L),0x23A164CFL},{1L,(-6L),0x23A164CFL},{1L,(-6L),0x23A164CFL},{1L,(-6L),0x23A164CFL}},{{1L,(-6L),0x23A164CFL},{1L,(-6L),0x23A164CFL},{1L,(-6L),0x23A164CFL},{1L,(-6L),0x23A164CFL},{1L,(-6L),0x23A164CFL},{1L,(-6L),0x23A164CFL},{1L,(-6L),0x23A164CFL},{1L,(-6L),0x23A164CFL},{1L,(-6L),0x23A164CFL}},{{1L,(-6L),0x23A164CFL},{1L,(-6L),0x23A164CFL},{1L,(-6L),0x23A164CFL},{1L,(-6L),0x23A164CFL},{1L,(-6L),0x23A164CFL},{1L,(-6L),0x23A164CFL},{1L,(-6L),0x23A164CFL},{1L,(-6L),0x23A164CFL},{1L,(-6L),0x23A164CFL}},{{1L,(-6L),0x23A164CFL},{1L,(-6L),0x23A164CFL},{1L,(-6L),0x23A164CFL},{1L,(-6L),0x23A164CFL},{1L,(-6L),0x23A164CFL},{1L,(-6L),0x23A164CFL},{1L,(-6L),0x23A164CFL},{1L,(-6L),0x23A164CFL},{1L,(-6L),0x23A164CFL}},{{1L,(-6L),0x23A164CFL},{1L,(-6L),0x23A164CFL},{1L,(-6L),0x23A164CFL},{1L,(-6L),0x23A164CFL},{1L,(-6L),0x23A164CFL},{1L,(-6L),0x23A164CFL},{1L,(-6L),0x23A164CFL},{1L,(-6L),0x23A164CFL},{1L,(-6L),0x23A164CFL}},{{1L,(-6L),0x23A164CFL},{1L,(-6L),0x23A164CFL},{1L,(-6L),0x23A164CFL},{1L,(-6L),0x23A164CFL},{1L,(-6L),0x23A164CFL},{1L,(-6L),0x23A164CFL},{1L,(-6L),0x23A164CFL},{1L,(-6L),0x23A164CFL},{1L,(-6L),0x23A164CFL}}};
            struct S0 *l_1346 = (void*)0;
            int32_t l_1359 = (-1L);
            uint16_t l_1380[6] = {65535UL,0xE9D7L,65535UL,65535UL,0xE9D7L,65535UL};
            int16_t **l_1409[7][9][1] = {{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}},{{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}}};
            uint16_t *l_1418 = (void*)0;
            uint8_t *l_1422 = &p_1495->g_648;
            uint16_t *l_1423 = &p_1495->g_222;
            int i, j, k;
            (*p_1495->g_1229) = l_1227;
            (*l_1233) = func_61(l_1232, ((*l_1233) = p_20), (l_1224 != ((safe_add_func_uint64_t_u_u((l_1236 || ((((*l_1237) &= 0x08D3A60AL) >= (0x8DD36A1EL > ((((p_18 <= (l_1238 == l_1239)) , l_1240) == (void*)0) >= p_17))) , l_1241)), l_1242)) >= 0x8377L)), p_1495);
        }
        (*l_1173) &= (+(safe_mul_func_uint8_t_u_u(p_17, (p_18 == (safe_add_func_int8_t_s_s(((1L ^ ((*p_20) >= (safe_mod_func_uint16_t_u_u((safe_div_func_uint8_t_u_u((((safe_div_func_uint32_t_u_u((((*l_1459) = &p_1495->g_1180) != (l_1474 = l_1474)), p_1495->g_71.f0)) > p_17) < (safe_rshift_func_uint8_t_u_u((safe_rshift_func_uint8_t_u_u(p_18, FAKE_DIVERGE(p_1495->local_1_offset, get_local_id(1), 10))), 6))), p_17)), p_18)))) & (*p_20)), p_19))))));
        (*p_20) = (-6L);
    }
    return (*l_1173);
}


/* ------------------------------------------ */
/* 
 * reads : p_1495->g_8 p_1495->g_42 p_1495->g_70 p_1495->g_71 p_1495->g_72 p_1495->g_93 p_1495->g_80 p_1495->g_10 p_1495->g_2 p_1495->g_159 p_1495->g_155 p_1495->g_222 p_1495->g_179 p_1495->g_284 p_1495->g_94.f0 p_1495->g_304 p_1495->g_306 p_1495->g_298 p_1495->g_313 p_1495->g_317 p_1495->g_6 p_1495->g_325 p_1495->g_347 p_1495->g_190 p_1495->g_78 p_1495->g_69 p_1495->g_379 p_1495->g_551 p_1495->g_508 p_1495->g_588 p_1495->g_375 p_1495->g_628 p_1495->g_629 p_1495->g_853 p_1495->g_854 p_1495->g_734 p_1495->g_1035 p_1495->g_648 p_1495->g_679 p_1495->g_680 p_1495->g_141 p_1495->g_1088
 * writes: p_1495->g_8 p_1495->g_42 p_1495->g_69 p_1495->g_70 p_1495->g_71 p_1495->g_94 p_1495->g_159 p_1495->g_222 p_1495->g_234 p_1495->g_287 p_1495->g_179 p_1495->g_292 p_1495->g_298 p_1495->g_313 p_1495->g_317 p_1495->g_347 p_1495->g_374 p_1495->g_375 p_1495->g_80 p_1495->g_552 p_1495->g_306.f0 p_1495->g_629 p_1495->g_648 p_1495->g_679 p_1495->g_734 p_1495->g_1088
 */
int32_t  func_23(struct S0  p_24, struct S1 * p_1495)
{ /* block id: 13 */
    uint64_t l_26 = 2UL;
    int32_t *l_27[6] = {&p_1495->g_8,&p_1495->g_8,&p_1495->g_8,&p_1495->g_8,&p_1495->g_8,&p_1495->g_8};
    int32_t l_1147[5][4][8] = {{{(-7L),(-5L),1L,0x1F1E3577L,(-5L),0x1F1E3577L,1L,(-5L)},{(-7L),(-5L),1L,0x1F1E3577L,(-5L),0x1F1E3577L,1L,(-5L)},{(-7L),(-5L),1L,0x1F1E3577L,(-5L),0x1F1E3577L,1L,(-5L)},{(-7L),(-5L),1L,0x1F1E3577L,(-5L),0x1F1E3577L,1L,(-5L)}},{{(-7L),(-5L),1L,0x1F1E3577L,(-5L),0x1F1E3577L,1L,(-5L)},{(-7L),(-5L),1L,0x1F1E3577L,(-5L),0x1F1E3577L,1L,(-5L)},{(-7L),(-5L),1L,0x1F1E3577L,(-5L),0x1F1E3577L,1L,(-5L)},{(-7L),(-5L),1L,0x1F1E3577L,(-5L),0x1F1E3577L,1L,(-5L)}},{{(-7L),(-5L),1L,0x1F1E3577L,(-5L),0x1F1E3577L,1L,(-5L)},{(-7L),(-5L),1L,0x1F1E3577L,(-5L),0x1F1E3577L,1L,(-5L)},{(-7L),(-5L),1L,0x1F1E3577L,(-5L),0x1F1E3577L,1L,(-5L)},{(-7L),(-5L),1L,0x1F1E3577L,(-5L),0x1F1E3577L,1L,(-5L)}},{{(-7L),(-5L),1L,0x1F1E3577L,(-5L),0x1F1E3577L,1L,(-5L)},{(-7L),(-5L),1L,0x1F1E3577L,(-5L),0x1F1E3577L,1L,(-5L)},{(-7L),(-5L),1L,0x1F1E3577L,(-5L),0x1F1E3577L,1L,(-5L)},{(-7L),(-5L),1L,0x1F1E3577L,(-5L),0x1F1E3577L,1L,(-5L)}},{{(-7L),(-5L),1L,0x1F1E3577L,(-5L),0x1F1E3577L,1L,(-5L)},{(-7L),(-5L),1L,0x1F1E3577L,(-5L),0x1F1E3577L,1L,(-5L)},{(-7L),(-5L),1L,0x1F1E3577L,(-5L),0x1F1E3577L,1L,(-5L)},{(-7L),(-5L),1L,0x1F1E3577L,(-5L),0x1F1E3577L,1L,(-5L)}}};
    int i, j, k;
    p_1495->g_8 ^= l_26;
    l_1147[2][0][5] = (((safe_lshift_func_uint8_t_u_s(p_24.f0, 6)) , func_30(p_24.f0, p_1495)) == (l_27[4] = &p_1495->g_2));
    return p_24.f0;
}


/* ------------------------------------------ */
/* 
 * reads : p_1495->g_42 p_1495->g_8 p_1495->g_70 p_1495->g_71 p_1495->g_72 p_1495->g_93 p_1495->g_80 p_1495->g_10 p_1495->g_2 p_1495->g_155 p_1495->g_222 p_1495->g_179 p_1495->g_284 p_1495->g_94.f0 p_1495->g_304 p_1495->g_306 p_1495->g_159 p_1495->g_313 p_1495->g_317 p_1495->g_6 p_1495->g_325 p_1495->g_347 p_1495->g_190 p_1495->g_78 p_1495->g_69 p_1495->g_379 p_1495->g_551 p_1495->g_508 p_1495->g_588 p_1495->g_375 p_1495->g_628 p_1495->g_629 p_1495->g_853 p_1495->g_854 p_1495->g_734 p_1495->g_1035 p_1495->g_648 p_1495->g_679 p_1495->g_680 p_1495->g_141 p_1495->g_1088 p_1495->g_298
 * writes: p_1495->g_42 p_1495->g_69 p_1495->g_70 p_1495->g_71 p_1495->g_8 p_1495->g_94 p_1495->g_159 p_1495->g_222 p_1495->g_234 p_1495->g_287 p_1495->g_179 p_1495->g_292 p_1495->g_298 p_1495->g_313 p_1495->g_317 p_1495->g_347 p_1495->g_374 p_1495->g_375 p_1495->g_80 p_1495->g_552 p_1495->g_306.f0 p_1495->g_629 p_1495->g_648 p_1495->g_679 p_1495->g_734 p_1495->g_1088
 */
int32_t * func_30(int32_t  p_31, struct S1 * p_1495)
{ /* block id: 15 */
    uint32_t l_32 = 0UL;
    int32_t l_39 = 0x392614F5L;
    int32_t *l_632 = &p_1495->g_80[2][2];
    int32_t *l_633 = &p_1495->g_179;
    int32_t *l_634 = &p_1495->g_80[4][2];
    int32_t l_635 = 0L;
    int32_t *l_636 = &l_39;
    int32_t *l_637[9] = {&l_39,&l_39,&l_39,&l_39,&l_39,&l_39,&l_39,&l_39,&l_39};
    int16_t l_638[2][4] = {{0x2EC6L,(-1L),0x2EC6L,0x2EC6L},{0x2EC6L,(-1L),0x2EC6L,0x2EC6L}};
    int32_t l_639[5];
    int32_t l_640[1][2];
    uint32_t l_641 = 4294967295UL;
    uint64_t *l_658 = &p_1495->g_298;
    struct S0 l_779 = {0x3EL};
    int64_t l_800 = 0x5A840FD82E120C70L;
    uint16_t *l_830[8] = {&p_1495->g_222,&p_1495->g_222,&p_1495->g_222,&p_1495->g_222,&p_1495->g_222,&p_1495->g_222,&p_1495->g_222,&p_1495->g_222};
    int16_t *l_845[4];
    uint32_t l_880 = 4294967289UL;
    uint64_t l_884 = 1UL;
    uint8_t *l_915 = &p_1495->g_648;
    int32_t l_1018 = (-6L);
    uint64_t l_1021 = 0x2F8E7FDBCCDA7651L;
    uint32_t l_1073[10][5] = {{0UL,0xCADB579BL,0UL,0UL,0xCADB579BL},{0UL,0xCADB579BL,0UL,0UL,0xCADB579BL},{0UL,0xCADB579BL,0UL,0UL,0xCADB579BL},{0UL,0xCADB579BL,0UL,0UL,0xCADB579BL},{0UL,0xCADB579BL,0UL,0UL,0xCADB579BL},{0UL,0xCADB579BL,0UL,0UL,0xCADB579BL},{0UL,0xCADB579BL,0UL,0UL,0xCADB579BL},{0UL,0xCADB579BL,0UL,0UL,0xCADB579BL},{0UL,0xCADB579BL,0UL,0UL,0xCADB579BL},{0UL,0xCADB579BL,0UL,0UL,0xCADB579BL}};
    int32_t *l_1146 = &p_1495->g_80[4][2];
    int i, j;
    for (i = 0; i < 5; i++)
        l_639[i] = 0L;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 2; j++)
            l_640[i][j] = 5L;
    }
    for (i = 0; i < 4; i++)
        l_845[i] = &l_638[0][3];
lbl_644:
    if (p_31)
    { /* block id: 16 */
        int64_t l_40 = (-8L);
        uint32_t *l_41 = &p_1495->g_42;
        int16_t *l_598 = &p_1495->g_159;
        int32_t *l_599 = &l_39;
        uint32_t l_622 = 0x3BAA2F4FL;
        uint16_t *l_623 = &p_1495->g_222;
        int32_t **l_624 = &p_1495->g_69;
        (*l_599) = (l_32 != (safe_mul_func_int16_t_s_s(((*l_598) = ((safe_mod_func_uint32_t_u_u((func_37(((*l_41)--), p_1495) , ((safe_sub_func_uint8_t_u_u((l_39 , p_1495->g_155), (safe_unary_minus_func_uint32_t_u(((l_40 != ((((void*)0 == &p_31) == (0x76L | ((safe_mod_func_uint16_t_u_u((safe_div_func_int32_t_s_s((safe_unary_minus_func_uint16_t_u(l_32)), p_1495->g_190)), (-1L))) ^ l_40))) >= 18446744073709551615UL)) < p_31))))) != 1L)), 0x9366B221L)) & p_31)), l_32)));
        (*l_624) = ((((safe_add_func_uint32_t_u_u(p_1495->g_375, 4294967289UL)) >= ((safe_mod_func_uint16_t_u_u(((*l_623) ^= ((*l_599) , (safe_mod_func_int32_t_s_s(((*l_599) || (safe_div_func_uint16_t_u_u((safe_div_func_uint64_t_u_u(((safe_rshift_func_int8_t_s_s(p_31, 2)) == (*l_599)), ((safe_sub_func_int64_t_s_s(((l_39 & (safe_rshift_func_uint16_t_u_u((safe_add_func_int16_t_s_s(((1UL && (safe_sub_func_int16_t_s_s((((safe_mul_func_int8_t_s_s(((void*)0 != p_1495->g_508), 1UL)) || p_31) == l_32), 0xF4D2L))) | (*l_599)), 65535UL)), (*l_599)))) , p_1495->g_78[1]), FAKE_DIVERGE(p_1495->global_1_offset, get_global_id(1), 10))) , l_622))), 65533UL))), (*l_599))))), FAKE_DIVERGE(p_1495->group_2_offset, get_group_id(2), 10))) , 0x814DL)) <= p_31) , (void*)0);
    }
    else
    { /* block id: 301 */
        int32_t **l_625 = &p_1495->g_69;
        int32_t **l_626 = (void*)0;
        (*p_1495->g_628) = ((*l_625) = (*p_1495->g_325));
        (*l_625) = (void*)0;
    }
    for (p_1495->g_375 = 0; (p_1495->g_375 != 45); p_1495->g_375 = safe_add_func_uint32_t_u_u(p_1495->g_375, 5))
    { /* block id: 308 */
        return (*p_1495->g_628);
    }
    --l_641;
    if (p_31)
    { /* block id: 312 */
        if (p_1495->g_94.f0)
            goto lbl_644;
    }
    else
    { /* block id: 314 */
        uint8_t *l_647 = &p_1495->g_648;
        int8_t *l_653 = &p_1495->g_94.f0;
        uint64_t *l_659[8];
        uint16_t ***l_681 = (void*)0;
        int32_t l_682 = 1L;
        int32_t l_683 = 0x3A3C83B3L;
        uint16_t l_709 = 0x3D0EL;
        struct S0 *l_739 = &p_1495->g_306;
        uint16_t ****l_815 = &p_1495->g_734[0][0];
        int16_t *l_846 = &l_638[0][1];
        int32_t l_865 = 0L;
        int32_t l_867 = (-3L);
        int32_t l_869 = 0x342B1C2EL;
        int32_t l_871 = 0L;
        int32_t l_876 = 0x73B9A1DAL;
        int32_t *l_890[9][2] = {{&l_865,&l_639[0]},{&l_865,&l_639[0]},{&l_865,&l_639[0]},{&l_865,&l_639[0]},{&l_865,&l_639[0]},{&l_865,&l_639[0]},{&l_865,&l_639[0]},{&l_865,&l_639[0]},{&l_865,&l_639[0]}};
        int32_t l_1020 = 2L;
        int8_t l_1063 = (-2L);
        uint8_t l_1065 = 0x19L;
        uint64_t ***l_1090 = &p_1495->g_1088;
        int i, j;
        for (i = 0; i < 8; i++)
            l_659[i] = &p_1495->g_298;
        if ((safe_div_func_uint8_t_u_u(((*l_647) = p_1495->g_190), (((*p_1495->g_508) | (((safe_div_func_uint16_t_u_u((safe_div_func_int16_t_s_s((((*l_653) |= p_31) < (safe_mod_func_uint32_t_u_u(p_1495->g_78[3], (safe_add_func_uint64_t_u_u((l_658 != l_659[3]), p_1495->g_155))))), p_31)), ((&p_1495->g_42 != (void*)0) , (*l_632)))) != 4294967288UL) <= p_31)) , p_31))))
        { /* block id: 317 */
            uint8_t l_684[1][6];
            int32_t l_689 = (-6L);
            uint16_t ***l_731 = &p_1495->g_680;
            int16_t *l_843 = &l_638[0][1];
            uint64_t *l_849 = &p_1495->g_298;
            struct S0 *l_851 = &p_1495->g_94;
            int32_t l_860 = 0x22743A4DL;
            int32_t l_862 = 0x2C9B6D57L;
            int32_t l_863 = 0x687107D4L;
            int32_t l_864 = 0x2EB6E485L;
            int32_t l_868 = 0x4DAE0A21L;
            int32_t l_872 = 0x5AA12688L;
            int32_t l_879[9][5][5] = {{{7L,0x1F137331L,0x03E93C38L,7L,0x2A9E04F3L},{7L,0x1F137331L,0x03E93C38L,7L,0x2A9E04F3L},{7L,0x1F137331L,0x03E93C38L,7L,0x2A9E04F3L},{7L,0x1F137331L,0x03E93C38L,7L,0x2A9E04F3L},{7L,0x1F137331L,0x03E93C38L,7L,0x2A9E04F3L}},{{7L,0x1F137331L,0x03E93C38L,7L,0x2A9E04F3L},{7L,0x1F137331L,0x03E93C38L,7L,0x2A9E04F3L},{7L,0x1F137331L,0x03E93C38L,7L,0x2A9E04F3L},{7L,0x1F137331L,0x03E93C38L,7L,0x2A9E04F3L},{7L,0x1F137331L,0x03E93C38L,7L,0x2A9E04F3L}},{{7L,0x1F137331L,0x03E93C38L,7L,0x2A9E04F3L},{7L,0x1F137331L,0x03E93C38L,7L,0x2A9E04F3L},{7L,0x1F137331L,0x03E93C38L,7L,0x2A9E04F3L},{7L,0x1F137331L,0x03E93C38L,7L,0x2A9E04F3L},{7L,0x1F137331L,0x03E93C38L,7L,0x2A9E04F3L}},{{7L,0x1F137331L,0x03E93C38L,7L,0x2A9E04F3L},{7L,0x1F137331L,0x03E93C38L,7L,0x2A9E04F3L},{7L,0x1F137331L,0x03E93C38L,7L,0x2A9E04F3L},{7L,0x1F137331L,0x03E93C38L,7L,0x2A9E04F3L},{7L,0x1F137331L,0x03E93C38L,7L,0x2A9E04F3L}},{{7L,0x1F137331L,0x03E93C38L,7L,0x2A9E04F3L},{7L,0x1F137331L,0x03E93C38L,7L,0x2A9E04F3L},{7L,0x1F137331L,0x03E93C38L,7L,0x2A9E04F3L},{7L,0x1F137331L,0x03E93C38L,7L,0x2A9E04F3L},{7L,0x1F137331L,0x03E93C38L,7L,0x2A9E04F3L}},{{7L,0x1F137331L,0x03E93C38L,7L,0x2A9E04F3L},{7L,0x1F137331L,0x03E93C38L,7L,0x2A9E04F3L},{7L,0x1F137331L,0x03E93C38L,7L,0x2A9E04F3L},{7L,0x1F137331L,0x03E93C38L,7L,0x2A9E04F3L},{7L,0x1F137331L,0x03E93C38L,7L,0x2A9E04F3L}},{{7L,0x1F137331L,0x03E93C38L,7L,0x2A9E04F3L},{7L,0x1F137331L,0x03E93C38L,7L,0x2A9E04F3L},{7L,0x1F137331L,0x03E93C38L,7L,0x2A9E04F3L},{7L,0x1F137331L,0x03E93C38L,7L,0x2A9E04F3L},{7L,0x1F137331L,0x03E93C38L,7L,0x2A9E04F3L}},{{7L,0x1F137331L,0x03E93C38L,7L,0x2A9E04F3L},{7L,0x1F137331L,0x03E93C38L,7L,0x2A9E04F3L},{7L,0x1F137331L,0x03E93C38L,7L,0x2A9E04F3L},{7L,0x1F137331L,0x03E93C38L,7L,0x2A9E04F3L},{7L,0x1F137331L,0x03E93C38L,7L,0x2A9E04F3L}},{{7L,0x1F137331L,0x03E93C38L,7L,0x2A9E04F3L},{7L,0x1F137331L,0x03E93C38L,7L,0x2A9E04F3L},{7L,0x1F137331L,0x03E93C38L,7L,0x2A9E04F3L},{7L,0x1F137331L,0x03E93C38L,7L,0x2A9E04F3L},{7L,0x1F137331L,0x03E93C38L,7L,0x2A9E04F3L}}};
            int32_t l_921 = 0x426DBF29L;
            int32_t l_980[6][5][5] = {{{6L,(-10L),0x18726780L,4L,0x4F95DF4BL},{6L,(-10L),0x18726780L,4L,0x4F95DF4BL},{6L,(-10L),0x18726780L,4L,0x4F95DF4BL},{6L,(-10L),0x18726780L,4L,0x4F95DF4BL},{6L,(-10L),0x18726780L,4L,0x4F95DF4BL}},{{6L,(-10L),0x18726780L,4L,0x4F95DF4BL},{6L,(-10L),0x18726780L,4L,0x4F95DF4BL},{6L,(-10L),0x18726780L,4L,0x4F95DF4BL},{6L,(-10L),0x18726780L,4L,0x4F95DF4BL},{6L,(-10L),0x18726780L,4L,0x4F95DF4BL}},{{6L,(-10L),0x18726780L,4L,0x4F95DF4BL},{6L,(-10L),0x18726780L,4L,0x4F95DF4BL},{6L,(-10L),0x18726780L,4L,0x4F95DF4BL},{6L,(-10L),0x18726780L,4L,0x4F95DF4BL},{6L,(-10L),0x18726780L,4L,0x4F95DF4BL}},{{6L,(-10L),0x18726780L,4L,0x4F95DF4BL},{6L,(-10L),0x18726780L,4L,0x4F95DF4BL},{6L,(-10L),0x18726780L,4L,0x4F95DF4BL},{6L,(-10L),0x18726780L,4L,0x4F95DF4BL},{6L,(-10L),0x18726780L,4L,0x4F95DF4BL}},{{6L,(-10L),0x18726780L,4L,0x4F95DF4BL},{6L,(-10L),0x18726780L,4L,0x4F95DF4BL},{6L,(-10L),0x18726780L,4L,0x4F95DF4BL},{6L,(-10L),0x18726780L,4L,0x4F95DF4BL},{6L,(-10L),0x18726780L,4L,0x4F95DF4BL}},{{6L,(-10L),0x18726780L,4L,0x4F95DF4BL},{6L,(-10L),0x18726780L,4L,0x4F95DF4BL},{6L,(-10L),0x18726780L,4L,0x4F95DF4BL},{6L,(-10L),0x18726780L,4L,0x4F95DF4BL},{6L,(-10L),0x18726780L,4L,0x4F95DF4BL}}};
            int i, j, k;
            for (i = 0; i < 1; i++)
            {
                for (j = 0; j < 6; j++)
                    l_684[i][j] = 0x23L;
            }
            for (p_1495->g_42 = 1; (p_1495->g_42 <= 4); p_1495->g_42 += 1)
            { /* block id: 320 */
                uint16_t l_698 = 1UL;
                int32_t *l_710 = &l_640[0][1];
                struct S0 **l_785 = (void*)0;
                uint8_t l_850 = 0xE2L;
                int32_t l_856 = (-10L);
                int32_t l_861 = 0x6BE1DA4AL;
                int32_t l_873 = 0x070D5866L;
                int32_t l_875 = 5L;
                int32_t l_877 = 1L;
                int32_t l_878 = 0L;
                int32_t *l_883 = &l_867;
                int8_t l_935 = 1L;
                uint8_t l_942[1];
                int32_t *l_958[4][1];
                int32_t *l_959 = &p_1495->g_80[1][1];
                uint16_t ***l_993 = (void*)0;
                int16_t ***l_1013 = &p_1495->g_292;
                int i, j;
                for (i = 0; i < 1; i++)
                    l_942[i] = 0UL;
                for (i = 0; i < 4; i++)
                {
                    for (j = 0; j < 1; j++)
                        l_958[i][j] = &l_856;
                }
                (1 + 1);
            }
            l_1021++;
            if (((*l_632) |= 0x50EC6E0CL))
            { /* block id: 475 */
                uint16_t l_1024 = 65527UL;
                int64_t *l_1033 = &p_1495->g_317;
                int32_t **l_1034 = (void*)0;
                --l_1024;
                (*l_634) = (safe_div_func_int64_t_s_s(((*l_1033) = (p_31 <= (l_879[1][1][3] = (safe_rshift_func_uint16_t_u_s(p_31, (((((*l_851) = (**p_1495->g_853)) , (p_1495->g_313 >= ((((*l_815) != (*l_815)) ^ (((((*l_915) = FAKE_DIVERGE(p_1495->local_0_offset, get_local_id(0), 10)) == 0x56L) , ((*l_846) &= l_980[2][0][4])) , (safe_rshift_func_int8_t_s_s(0x4CL, l_868)))) ^ 0x0ABCC96105035666L))) , p_1495->g_71.f0) , p_31)))))), p_31));
                (*p_1495->g_1035) = func_54(p_31, p_1495);
            }
            else
            { /* block id: 484 */
                uint32_t l_1052 = 0xC0EE718BL;
                int32_t l_1060 = 0x454F117BL;
                int32_t l_1061 = 0x5FD7ACB0L;
                int32_t l_1062 = 4L;
                for (l_641 = 0; (l_641 <= 46); l_641 = safe_add_func_uint64_t_u_u(l_641, 6))
                { /* block id: 487 */
                    struct S0 *l_1057 = &p_1495->g_306;
                    int32_t l_1059 = 0x0ADE0F59L;
                    int32_t **l_1068[1];
                    int i;
                    for (i = 0; i < 1; i++)
                        l_1068[i] = &p_1495->g_69;
                    for (l_863 = 0; (l_863 != 12); l_863 = safe_add_func_int16_t_s_s(l_863, 8))
                    { /* block id: 490 */
                        int32_t *l_1040 = (void*)0;
                        return l_1040;
                    }
                    for (p_31 = 22; (p_31 > (-23)); p_31 = safe_sub_func_uint8_t_u_u(p_31, 1))
                    { /* block id: 495 */
                        uint16_t ***l_1051 = &p_1495->g_680;
                        uint16_t *l_1058 = (void*)0;
                        int32_t l_1064 = 0x5CBEE853L;
                        l_1057 = (((*l_915) ^= (safe_rshift_func_uint8_t_u_s(((((safe_mul_func_int16_t_s_s((safe_lshift_func_int16_t_s_s((safe_rshift_func_uint16_t_u_u(((((*l_815) = (p_1495->g_78[1] , (p_1495->g_679 = (p_31 , l_1051)))) != l_731) > p_31), 13)), l_1052)), p_31)) > (safe_lshift_func_int16_t_s_u((!0L), (safe_mod_func_uint32_t_u_u((((p_1495->g_190 < p_31) | l_860) >= p_31), 0x57F31132L))))) > p_31) > p_31), l_689))) , l_1057);
                        (*l_636) ^= (-1L);
                        (*l_633) = ((l_1058 == (**p_1495->g_679)) != l_1052);
                        l_1065++;
                    }
                    l_890[2][0] = &l_864;
                }
            }
        }
        else
        { /* block id: 507 */
            uint8_t l_1082 = 1UL;
            int32_t l_1087 = 1L;
            for (p_1495->g_159 = 25; (p_1495->g_159 >= 21); --p_1495->g_159)
            { /* block id: 510 */
                int32_t l_1071 = (-8L);
                int32_t l_1072 = 9L;
                l_1073[5][1]++;
            }
            (*l_633) &= (l_1087 = ((*l_634) , ((safe_lshift_func_int8_t_s_s((safe_rshift_func_int16_t_s_u((safe_mul_func_int8_t_s_s(l_1082, ((0x28209E17A4F1972CL != ((*l_634) ^ 65535UL)) | 0x79L))), 8)), (&p_1495->g_852 != (void*)0))) ^ (((((safe_lshift_func_int16_t_s_s((((safe_add_func_uint16_t_u_u(l_1082, 0x69DEL)) > p_31) , p_31), p_31)) != (*p_1495->g_508)) , p_31) != p_31) & (-4L)))));
            (*l_634) |= 0x4BD9D06FL;
        }
        (*l_1090) = p_1495->g_1088;
        for (p_1495->g_94.f0 = 0; (p_1495->g_94.f0 != 3); ++p_1495->g_94.f0)
        { /* block id: 520 */
            int8_t l_1095 = (-5L);
            uint16_t ***l_1117 = &p_1495->g_680;
            struct S0 l_1121 = {0x50L};
            int32_t l_1123 = 0x6A54117AL;
            for (p_1495->g_375 = (-11); (p_1495->g_375 <= 18); p_1495->g_375++)
            { /* block id: 523 */
                uint8_t l_1104 = 253UL;
                int32_t l_1107[3][6][7] = {{{7L,0x2F99743DL,0x76DA677CL,5L,1L,(-6L),0x76DA677CL},{7L,0x2F99743DL,0x76DA677CL,5L,1L,(-6L),0x76DA677CL},{7L,0x2F99743DL,0x76DA677CL,5L,1L,(-6L),0x76DA677CL},{7L,0x2F99743DL,0x76DA677CL,5L,1L,(-6L),0x76DA677CL},{7L,0x2F99743DL,0x76DA677CL,5L,1L,(-6L),0x76DA677CL},{7L,0x2F99743DL,0x76DA677CL,5L,1L,(-6L),0x76DA677CL}},{{7L,0x2F99743DL,0x76DA677CL,5L,1L,(-6L),0x76DA677CL},{7L,0x2F99743DL,0x76DA677CL,5L,1L,(-6L),0x76DA677CL},{7L,0x2F99743DL,0x76DA677CL,5L,1L,(-6L),0x76DA677CL},{7L,0x2F99743DL,0x76DA677CL,5L,1L,(-6L),0x76DA677CL},{7L,0x2F99743DL,0x76DA677CL,5L,1L,(-6L),0x76DA677CL},{7L,0x2F99743DL,0x76DA677CL,5L,1L,(-6L),0x76DA677CL}},{{7L,0x2F99743DL,0x76DA677CL,5L,1L,(-6L),0x76DA677CL},{7L,0x2F99743DL,0x76DA677CL,5L,1L,(-6L),0x76DA677CL},{7L,0x2F99743DL,0x76DA677CL,5L,1L,(-6L),0x76DA677CL},{7L,0x2F99743DL,0x76DA677CL,5L,1L,(-6L),0x76DA677CL},{7L,0x2F99743DL,0x76DA677CL,5L,1L,(-6L),0x76DA677CL},{7L,0x2F99743DL,0x76DA677CL,5L,1L,(-6L),0x76DA677CL}}};
                uint16_t *l_1108[5] = {&p_1495->g_222,&p_1495->g_222,&p_1495->g_222,&p_1495->g_222,&p_1495->g_222};
                struct S0 l_1122 = {-7L};
                int32_t l_1142 = 0L;
                int i, j, k;
                if (l_1095)
                    break;
            }
            return (*p_1495->g_304);
        }
    }
    return l_1146;
}


/* ------------------------------------------ */
/* 
 * reads : p_1495->g_8 p_1495->g_70 p_1495->g_71 p_1495->g_72 p_1495->g_42 p_1495->g_93 p_1495->g_80 p_1495->g_10 p_1495->g_2 p_1495->g_159 p_1495->g_155 p_1495->g_222 p_1495->g_179 p_1495->g_284 p_1495->g_94.f0 p_1495->g_304 p_1495->g_306 p_1495->g_298 p_1495->g_313 p_1495->g_317 p_1495->g_6 p_1495->g_325 p_1495->g_347 p_1495->g_190 p_1495->g_78 p_1495->g_69 p_1495->g_379 p_1495->g_551 p_1495->g_508 p_1495->g_588
 * writes: p_1495->g_69 p_1495->g_70 p_1495->g_71 p_1495->g_42 p_1495->g_8 p_1495->g_94 p_1495->g_159 p_1495->g_222 p_1495->g_234 p_1495->g_287 p_1495->g_179 p_1495->g_292 p_1495->g_298 p_1495->g_313 p_1495->g_317 p_1495->g_347 p_1495->g_374 p_1495->g_375 p_1495->g_80 p_1495->g_552 p_1495->g_306.f0
 */
int16_t  func_37(uint32_t  p_38, struct S1 * p_1495)
{ /* block id: 18 */
    uint32_t *l_50[4][5][6] = {{{&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42},{&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42},{&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42},{&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42},{&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42}},{{&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42},{&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42},{&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42},{&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42},{&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42}},{{&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42},{&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42},{&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42},{&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42},{&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42}},{{&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42},{&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42},{&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42},{&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42},{&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42,&p_1495->g_42}}};
    int32_t l_58 = 0x42427020L;
    int32_t l_65 = 0x4005DEF9L;
    uint64_t *l_297 = &p_1495->g_298;
    struct S0 *l_305 = &p_1495->g_94;
    int32_t *l_589[9];
    int i, j, k;
    for (i = 0; i < 9; i++)
        l_589[i] = &p_1495->g_179;
    (*p_1495->g_588) = func_45(l_50[2][0][2], ((*l_305) = func_51(&p_1495->g_42, func_54((0x2AD5889E59FA6B86L != (safe_add_func_int32_t_s_s(l_58, ((l_58 ^ (((*l_297) = ((l_65 = (func_59(func_61(p_38, &l_58, l_65, p_1495), p_1495) , p_38)) && p_38)) , l_58)) , 0L)))), p_1495), p_1495)), p_1495->g_306, &l_58, p_1495);
    (*p_1495->g_379) ^= 0x33EAE072L;
    return p_38;
}


/* ------------------------------------------ */
/* 
 * reads : p_1495->g_298 p_1495->g_8 p_1495->g_159 p_1495->g_80 p_1495->g_313 p_1495->g_317 p_1495->g_155 p_1495->g_6 p_1495->g_70 p_1495->g_71 p_1495->g_72 p_1495->g_325 p_1495->g_347 p_1495->g_306.f0 p_1495->g_190 p_1495->g_78 p_1495->g_179 p_1495->g_69 p_1495->g_379 p_1495->g_42 p_1495->g_94.f0 p_1495->g_2 p_1495->g_304 p_1495->g_551 p_1495->g_508
 * writes: p_1495->g_298 p_1495->g_8 p_1495->g_159 p_1495->g_313 p_1495->g_317 p_1495->g_69 p_1495->g_70 p_1495->g_71 p_1495->g_347 p_1495->g_374 p_1495->g_375 p_1495->g_80 p_1495->g_179 p_1495->g_94.f0 p_1495->g_552 p_1495->g_306.f0
 */
int32_t * func_45(uint32_t * p_46, struct S0  p_47, struct S0  p_48, int32_t * p_49, struct S1 * p_1495)
{ /* block id: 150 */
    uint8_t l_324 = 0x21L;
    int32_t l_336 = 0x4B833983L;
    int32_t l_337 = (-9L);
    int32_t l_338 = 6L;
    int32_t l_339 = 3L;
    int32_t l_340 = (-1L);
    int32_t l_341 = 0x2A3F622CL;
    int32_t l_342 = 0x7859915FL;
    int32_t l_343[8] = {1L,1L,1L,1L,1L,1L,1L,1L};
    int64_t l_345 = 0x09344F5B647A3EA6L;
    int16_t l_346 = (-1L);
    uint32_t *l_354[5][2];
    int32_t l_376[7] = {5L,1L,5L,5L,1L,5L,5L};
    int32_t **l_377 = &p_1495->g_69;
    int8_t l_378 = 0x26L;
    uint16_t **l_387 = &p_1495->g_141;
    uint16_t ***l_386[7][1][9] = {{{(void*)0,(void*)0,&l_387,&l_387,&l_387,(void*)0,&l_387,(void*)0,&l_387}},{{(void*)0,(void*)0,&l_387,&l_387,&l_387,(void*)0,&l_387,(void*)0,&l_387}},{{(void*)0,(void*)0,&l_387,&l_387,&l_387,(void*)0,&l_387,(void*)0,&l_387}},{{(void*)0,(void*)0,&l_387,&l_387,&l_387,(void*)0,&l_387,(void*)0,&l_387}},{{(void*)0,(void*)0,&l_387,&l_387,&l_387,(void*)0,&l_387,(void*)0,&l_387}},{{(void*)0,(void*)0,&l_387,&l_387,&l_387,(void*)0,&l_387,(void*)0,&l_387}},{{(void*)0,(void*)0,&l_387,&l_387,&l_387,(void*)0,&l_387,(void*)0,&l_387}}};
    struct S0 l_410 = {0x20L};
    int16_t l_501 = (-1L);
    int64_t l_518 = 0x5E1C84E2AC11F3E4L;
    struct S0 *l_550[5] = {&l_410,&l_410,&l_410,&l_410,&l_410};
    struct S0 **l_549 = &l_550[0];
    int16_t l_554 = 0x745EL;
    int i, j, k;
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 2; j++)
            l_354[i][j] = &p_1495->g_313;
    }
    for (p_1495->g_298 = 0; (p_1495->g_298 <= 60); ++p_1495->g_298)
    { /* block id: 153 */
        int32_t *l_326 = &p_1495->g_179;
        int32_t *l_327 = &p_1495->g_8;
        int32_t *l_328 = (void*)0;
        int32_t *l_329 = &p_1495->g_80[4][2];
        int32_t *l_330 = &p_1495->g_80[4][2];
        int32_t *l_331 = &p_1495->g_80[4][2];
        int32_t *l_332 = (void*)0;
        int32_t *l_333 = &p_1495->g_80[4][1];
        int32_t *l_334 = (void*)0;
        int32_t *l_335[3][2] = {{&p_1495->g_8,&p_1495->g_179},{&p_1495->g_8,&p_1495->g_179},{&p_1495->g_8,&p_1495->g_179}};
        int16_t l_344 = (-7L);
        int i, j;
        for (p_1495->g_8 = 0; (p_1495->g_8 <= 20); p_1495->g_8 = safe_add_func_uint64_t_u_u(p_1495->g_8, 1))
        { /* block id: 156 */
            int32_t l_311[5] = {(-6L),(-6L),(-6L),(-6L),(-6L)};
            int i;
            (*p_49) |= 1L;
            for (p_1495->g_159 = 3; (p_1495->g_159 >= 0); p_1495->g_159 -= 1)
            { /* block id: 160 */
                uint32_t *l_312 = &p_1495->g_313;
                int64_t *l_316 = &p_1495->g_317;
                int i, j;
                (*p_1495->g_325) = func_61(((p_1495->g_80[(p_1495->g_159 + 1)][p_1495->g_159] , ((--(*l_312)) <= ((((~((*l_316) |= 0x01542B8D876790BBL)) ^ (safe_add_func_int8_t_s_s((p_1495->g_80[p_1495->g_159][p_1495->g_159] >= ((0xD1A18FB6L <= (*p_49)) != (((0x33D7L | (safe_add_func_int16_t_s_s(p_1495->g_80[p_1495->g_159][p_1495->g_159], ((safe_div_func_uint64_t_u_u(p_48.f0, 0x5CDA78A6A3FFE95DL)) , p_47.f0)))) >= l_311[1]) , l_324))), p_1495->g_155))) <= p_47.f0) && l_311[1]))) || 0x1689C453L), p_46, p_1495->g_6, p_1495);
            }
            return p_46;
        }
        p_1495->g_347--;
    }
    (*p_1495->g_379) = (safe_mod_func_uint64_t_u_u((safe_sub_func_uint8_t_u_u(((p_1495->g_313 |= p_48.f0) >= l_345), (((safe_mul_func_int8_t_s_s((safe_mod_func_int32_t_s_s((((*p_49) = (&p_1495->g_69 != ((l_342 || (safe_div_func_int8_t_s_s(((safe_add_func_uint16_t_u_u((!(safe_sub_func_int16_t_s_s((safe_unary_minus_func_uint32_t_u(p_1495->g_306.f0)), (((((p_1495->g_375 = (p_1495->g_374 = (p_1495->g_190 , (safe_sub_func_int32_t_s_s((safe_div_func_int16_t_s_s((((&p_1495->g_10 != p_49) == (((safe_mul_func_int16_t_s_s(l_340, l_340)) ^ p_48.f0) >= p_48.f0)) <= l_343[7]), l_341)), l_346))))) <= 0x30D78874L) || 0xB1FB2FB0L) != p_1495->g_78[4]) , 0x1EE1L)))), l_376[4])) | p_48.f0), 5L))) , l_377))) <= 1UL), 0x7D15100DL)), p_1495->g_179)) || (**l_377)) >= 0xABB8A98EEEA9DE91L))), l_378));
lbl_583:
    if ((safe_rshift_func_int8_t_s_s((1UL && (safe_mod_func_int16_t_s_s((safe_div_func_uint8_t_u_u((((void*)0 != l_386[5][0][6]) | ((safe_rshift_func_uint8_t_u_s(((safe_sub_func_uint32_t_u_u(((safe_div_func_uint32_t_u_u((((p_47.f0 <= (**p_1495->g_325)) | FAKE_DIVERGE(p_1495->local_1_offset, get_local_id(1), 10)) , ((((safe_mod_func_uint32_t_u_u((safe_lshift_func_uint8_t_u_u((safe_sub_func_int8_t_s_s((**l_377), 0x38L)), (**l_377))), ((((safe_lshift_func_uint16_t_u_s((safe_add_func_uint32_t_u_u((safe_rshift_func_uint16_t_u_u((safe_mul_func_int8_t_s_s((p_47.f0 &= ((((l_410 , (**l_377)) && 0x00BFL) && 4294967295UL) , (**l_377))), 0x6AL)), p_48.f0)), p_48.f0)), 6)) ^ p_1495->g_78[0]) && 1L) , (*p_1495->g_379)))) || (**l_377)) | 0x0295ACDAL) <= (*p_49))), (*p_1495->g_69))) || 0UL), 9L)) >= 3L), 3)) ^ (*p_49))), p_48.f0)), p_48.f0))), 4)))
    { /* block id: 175 */
        return (*p_1495->g_325);
    }
    else
    { /* block id: 177 */
        uint16_t *l_414[7];
        int32_t l_428 = 7L;
        int32_t l_431[1][10][8] = {{{(-4L),0L,0L,0L,0L,(-4L),(-4L),0x7FC17014L},{(-4L),0L,0L,0L,0L,(-4L),(-4L),0x7FC17014L},{(-4L),0L,0L,0L,0L,(-4L),(-4L),0x7FC17014L},{(-4L),0L,0L,0L,0L,(-4L),(-4L),0x7FC17014L},{(-4L),0L,0L,0L,0L,(-4L),(-4L),0x7FC17014L},{(-4L),0L,0L,0L,0L,(-4L),(-4L),0x7FC17014L},{(-4L),0L,0L,0L,0L,(-4L),(-4L),0x7FC17014L},{(-4L),0L,0L,0L,0L,(-4L),(-4L),0x7FC17014L},{(-4L),0L,0L,0L,0L,(-4L),(-4L),0x7FC17014L},{(-4L),0L,0L,0L,0L,(-4L),(-4L),0x7FC17014L}}};
        int64_t l_478 = (-2L);
        int32_t l_489 = 0L;
        int16_t l_553 = 0x571DL;
        int32_t l_558 = (-1L);
        int32_t **l_567[7][4] = {{&p_1495->g_69,(void*)0,&p_1495->g_69,&p_1495->g_69},{&p_1495->g_69,(void*)0,&p_1495->g_69,&p_1495->g_69},{&p_1495->g_69,(void*)0,&p_1495->g_69,&p_1495->g_69},{&p_1495->g_69,(void*)0,&p_1495->g_69,&p_1495->g_69},{&p_1495->g_69,(void*)0,&p_1495->g_69,&p_1495->g_69},{&p_1495->g_69,(void*)0,&p_1495->g_69,&p_1495->g_69},{&p_1495->g_69,(void*)0,&p_1495->g_69,&p_1495->g_69}};
        uint8_t *l_578 = &l_324;
        int i, j, k;
        for (i = 0; i < 7; i++)
            l_414[i] = &p_1495->g_375;
        for (p_1495->g_179 = 0; (p_1495->g_179 < 8); ++p_1495->g_179)
        { /* block id: 180 */
            uint16_t *l_413 = &p_1495->g_375;
            int16_t **l_424 = &p_1495->g_293;
            int8_t l_425 = 0x6AL;
            uint32_t l_525[10][9] = {{4294967289UL,0xC736CB54L,0UL,0x0405CDC2L,0UL,0xC736CB54L,4294967289UL,1UL,1UL},{4294967289UL,0xC736CB54L,0UL,0x0405CDC2L,0UL,0xC736CB54L,4294967289UL,1UL,1UL},{4294967289UL,0xC736CB54L,0UL,0x0405CDC2L,0UL,0xC736CB54L,4294967289UL,1UL,1UL},{4294967289UL,0xC736CB54L,0UL,0x0405CDC2L,0UL,0xC736CB54L,4294967289UL,1UL,1UL},{4294967289UL,0xC736CB54L,0UL,0x0405CDC2L,0UL,0xC736CB54L,4294967289UL,1UL,1UL},{4294967289UL,0xC736CB54L,0UL,0x0405CDC2L,0UL,0xC736CB54L,4294967289UL,1UL,1UL},{4294967289UL,0xC736CB54L,0UL,0x0405CDC2L,0UL,0xC736CB54L,4294967289UL,1UL,1UL},{4294967289UL,0xC736CB54L,0UL,0x0405CDC2L,0UL,0xC736CB54L,4294967289UL,1UL,1UL},{4294967289UL,0xC736CB54L,0UL,0x0405CDC2L,0UL,0xC736CB54L,4294967289UL,1UL,1UL},{4294967289UL,0xC736CB54L,0UL,0x0405CDC2L,0UL,0xC736CB54L,4294967289UL,1UL,1UL}};
            int32_t l_533 = 0x171EB833L;
            int i, j;
            (1 + 1);
        }
        for (p_1495->g_179 = 0; (p_1495->g_179 <= 0); p_1495->g_179 += 1)
        { /* block id: 253 */
            int32_t l_544[1][9] = {{(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L),(-1L)}};
            uint32_t l_546[9];
            int16_t l_555 = 0x69FCL;
            int8_t l_556 = 0x69L;
            int16_t l_557 = 0x0675L;
            uint32_t l_559 = 4294967288UL;
            int i, j;
            for (i = 0; i < 9; i++)
                l_546[i] = 4294967287UL;
            for (l_336 = 0; (l_336 <= 6); l_336 += 1)
            { /* block id: 256 */
                int32_t *l_543[10][4] = {{&l_431[0][2][2],(void*)0,(void*)0,&l_431[0][2][2]},{&l_431[0][2][2],(void*)0,(void*)0,&l_431[0][2][2]},{&l_431[0][2][2],(void*)0,(void*)0,&l_431[0][2][2]},{&l_431[0][2][2],(void*)0,(void*)0,&l_431[0][2][2]},{&l_431[0][2][2],(void*)0,(void*)0,&l_431[0][2][2]},{&l_431[0][2][2],(void*)0,(void*)0,&l_431[0][2][2]},{&l_431[0][2][2],(void*)0,(void*)0,&l_431[0][2][2]},{&l_431[0][2][2],(void*)0,(void*)0,&l_431[0][2][2]},{&l_431[0][2][2],(void*)0,(void*)0,&l_431[0][2][2]},{&l_431[0][2][2],(void*)0,(void*)0,&l_431[0][2][2]}};
                int32_t l_545[6][7] = {{0L,0L,0x1CCA99FBL,0x77E68501L,0x3EF5EBBEL,0L,1L},{0L,0L,0x1CCA99FBL,0x77E68501L,0x3EF5EBBEL,0L,1L},{0L,0L,0x1CCA99FBL,0x77E68501L,0x3EF5EBBEL,0L,1L},{0L,0L,0x1CCA99FBL,0x77E68501L,0x3EF5EBBEL,0L,1L},{0L,0L,0x1CCA99FBL,0x77E68501L,0x3EF5EBBEL,0L,1L},{0L,0L,0x1CCA99FBL,0x77E68501L,0x3EF5EBBEL,0L,1L}};
                int32_t **l_566 = (void*)0;
                int i, j;
                --l_546[1];
                (*l_377) = func_54((l_431[0][2][2] = l_431[0][0][3]), p_1495);
                (*p_1495->g_551) = l_549;
                l_559--;
                for (l_410.f0 = 0; (l_410.f0 <= 6); l_410.f0 += 1)
                { /* block id: 264 */
                    int64_t *l_568[6];
                    int32_t l_569 = 1L;
                    int i, j, k;
                    for (i = 0; i < 6; i++)
                        l_568[i] = &l_518;
                    for (l_428 = 0; (l_428 <= 0); l_428 += 1)
                    { /* block id: 267 */
                        return p_46;
                    }
                    l_431[p_1495->g_179][l_410.f0][(l_410.f0 + 1)] = ((safe_sub_func_uint64_t_u_u(l_431[p_1495->g_179][p_1495->g_179][l_336], (+(l_569 = (safe_sub_func_uint8_t_u_u(254UL, (p_1495->g_179 , (l_566 != l_567[6][0])))))))) != (safe_lshift_func_int8_t_s_s(l_555, 6)));
                }
            }
            if ((*p_1495->g_69))
                continue;
        }
        (*p_49) = ((safe_mul_func_int8_t_s_s((((*p_1495->g_508) = (l_354[4][1] == &p_1495->g_313)) || (**l_377)), p_48.f0)) | (safe_sub_func_int32_t_s_s((p_48.f0 , 0x5517A102L), (((((*l_578) |= (safe_sub_func_int16_t_s_s((((((&p_1495->g_313 != p_46) & (&p_47 != &p_48)) , p_47.f0) < 6L) >= p_47.f0), (-10L)))) < p_47.f0) , (**l_377)) , 1L))));
    }
    for (l_345 = 0; (l_345 != 25); l_345++)
    { /* block id: 282 */
        for (p_1495->g_94.f0 = 20; (p_1495->g_94.f0 < (-20)); p_1495->g_94.f0--)
        { /* block id: 285 */
            if (l_346)
                goto lbl_583;
            (*p_49) = (safe_lshift_func_uint16_t_u_s((safe_rshift_func_uint8_t_u_s(FAKE_DIVERGE(p_1495->global_0_offset, get_global_id(0), 10), 0)), 14));
            if ((*p_49))
                break;
            if ((**p_1495->g_304))
                continue;
        }
        return p_46;
    }
    return (*l_377);
}


/* ------------------------------------------ */
/* 
 * reads : p_1495->g_72 p_1495->g_71
 * writes:
 */
struct S0  func_51(uint32_t * p_52, uint32_t * p_53, struct S1 * p_1495)
{ /* block id: 147 */
    return (*p_1495->g_72);
}


/* ------------------------------------------ */
/* 
 * reads : p_1495->g_94.f0 p_1495->g_2 p_1495->g_8 p_1495->g_70 p_1495->g_71 p_1495->g_72 p_1495->g_42 p_1495->g_304
 * writes: p_1495->g_94.f0 p_1495->g_69 p_1495->g_70 p_1495->g_71
 */
uint32_t * func_54(uint16_t  p_55, struct S1 * p_1495)
{ /* block id: 143 */
    uint32_t l_299[10][4] = {{4294967295UL,0UL,4294967295UL,4294967295UL},{4294967295UL,0UL,4294967295UL,4294967295UL},{4294967295UL,0UL,4294967295UL,4294967295UL},{4294967295UL,0UL,4294967295UL,4294967295UL},{4294967295UL,0UL,4294967295UL,4294967295UL},{4294967295UL,0UL,4294967295UL,4294967295UL},{4294967295UL,0UL,4294967295UL,4294967295UL},{4294967295UL,0UL,4294967295UL,4294967295UL},{4294967295UL,0UL,4294967295UL,4294967295UL},{4294967295UL,0UL,4294967295UL,4294967295UL}};
    struct S0 l_300 = {0x1EL};
    int16_t *l_302[7][7] = {{&p_1495->g_159,&p_1495->g_159,&p_1495->g_159,&p_1495->g_159,&p_1495->g_159,&p_1495->g_159,&p_1495->g_159},{&p_1495->g_159,&p_1495->g_159,&p_1495->g_159,&p_1495->g_159,&p_1495->g_159,&p_1495->g_159,&p_1495->g_159},{&p_1495->g_159,&p_1495->g_159,&p_1495->g_159,&p_1495->g_159,&p_1495->g_159,&p_1495->g_159,&p_1495->g_159},{&p_1495->g_159,&p_1495->g_159,&p_1495->g_159,&p_1495->g_159,&p_1495->g_159,&p_1495->g_159,&p_1495->g_159},{&p_1495->g_159,&p_1495->g_159,&p_1495->g_159,&p_1495->g_159,&p_1495->g_159,&p_1495->g_159,&p_1495->g_159},{&p_1495->g_159,&p_1495->g_159,&p_1495->g_159,&p_1495->g_159,&p_1495->g_159,&p_1495->g_159,&p_1495->g_159},{&p_1495->g_159,&p_1495->g_159,&p_1495->g_159,&p_1495->g_159,&p_1495->g_159,&p_1495->g_159,&p_1495->g_159}};
    int i, j;
    (*p_1495->g_304) = func_61(l_299[6][2], func_61((l_300 , ((p_1495->g_94.f0 &= (safe_unary_minus_func_int32_t_s(((void*)0 != l_302[0][4])))) == (0x5AL != p_55))), &p_1495->g_6, p_1495->g_2, p_1495), p_1495->g_42, p_1495);
    return &p_1495->g_42;
}


/* ------------------------------------------ */
/* 
 * reads : p_1495->g_42 p_1495->g_8 p_1495->g_93 p_1495->g_80 p_1495->g_10 p_1495->g_2 p_1495->g_159 p_1495->g_155 p_1495->g_222 p_1495->g_179 p_1495->g_284 p_1495->g_94.f0
 * writes: p_1495->g_42 p_1495->g_8 p_1495->g_94 p_1495->g_159 p_1495->g_222 p_1495->g_234 p_1495->g_287 p_1495->g_179 p_1495->g_292
 */
int64_t  func_59(int32_t * p_60, struct S1 * p_1495)
{ /* block id: 24 */
    int32_t **l_73 = (void*)0;
    uint64_t l_76[6];
    int32_t l_82 = 0x77BB9FECL;
    int32_t l_83 = 0L;
    int32_t l_86 = (-2L);
    int32_t l_87 = 0L;
    int32_t l_88 = 0x02E32560L;
    uint8_t l_89 = 8UL;
    struct S0 l_92 = {9L};
    uint16_t l_102 = 0x8907L;
    uint16_t *l_103 = &l_102;
    uint64_t l_104 = 0UL;
    int32_t *l_105 = &l_82;
    int32_t l_112 = (-5L);
    int32_t l_113[2];
    uint32_t l_114 = 0x671FD3FFL;
    int32_t *l_206 = &p_1495->g_179;
    uint16_t *l_221 = &p_1495->g_222;
    uint64_t *l_272 = &p_1495->g_234;
    int16_t *l_290 = &p_1495->g_159;
    int16_t **l_289[1];
    int32_t l_296[7] = {0L,0L,0L,0L,0L,0L,0L};
    int i;
    for (i = 0; i < 6; i++)
        l_76[i] = 18446744073709551613UL;
    for (i = 0; i < 2; i++)
        l_113[i] = 5L;
    for (i = 0; i < 1; i++)
        l_289[i] = &l_290;
    p_60 = p_60;
    for (p_1495->g_42 = 0; (p_1495->g_42 < 4); p_1495->g_42 = safe_add_func_uint16_t_u_u(p_1495->g_42, 9))
    { /* block id: 28 */
        int16_t l_77 = 0x4365L;
        int32_t l_84 = 0x214E4505L;
        int32_t l_85[8];
        int i;
        for (i = 0; i < 8; i++)
            l_85[i] = 7L;
        for (p_1495->g_8 = 0; (p_1495->g_8 <= 5); p_1495->g_8 += 1)
        { /* block id: 31 */
            int32_t *l_79 = &p_1495->g_80[4][2];
            int32_t *l_81[1];
            int i;
            for (i = 0; i < 1; i++)
                l_81[i] = &p_1495->g_80[1][0];
            if ((*p_60))
                break;
            l_89++;
            (*p_1495->g_93) = l_92;
        }
    }
    if ((l_86 ^= ((*l_105) |= (l_76[5] & (safe_div_func_int32_t_s_s(((((p_1495->g_80[2][2] && ((safe_unary_minus_func_int64_t_s((((p_1495->g_80[3][2] , &p_60) == &p_1495->g_69) & (((*l_103) = (safe_div_func_uint32_t_u_u((0x498C5F844B9EA69DL || ((safe_sub_func_uint16_t_u_u(l_83, ((((l_92.f0 < ((p_1495->g_10 , &l_92) != &l_92)) , p_1495->g_80[5][0]) == p_1495->g_2) | 0xCFE5A8EECE75099CL))) , 0x82FEEDE604A327E9L)), l_102))) <= p_1495->g_8)))) <= p_1495->g_42)) > l_104) | 9UL) && 0xE5FFF9132EE097E4L), p_1495->g_2))))))
    { /* block id: 40 */
        int32_t l_106 = 0x4D03AD18L;
        int32_t *l_107 = &l_106;
        int32_t *l_108 = (void*)0;
        int32_t *l_109 = &l_82;
        int32_t *l_110[7][10][3] = {{{&p_1495->g_80[0][1],&l_86,&p_1495->g_6},{&p_1495->g_80[0][1],&l_86,&p_1495->g_6},{&p_1495->g_80[0][1],&l_86,&p_1495->g_6},{&p_1495->g_80[0][1],&l_86,&p_1495->g_6},{&p_1495->g_80[0][1],&l_86,&p_1495->g_6},{&p_1495->g_80[0][1],&l_86,&p_1495->g_6},{&p_1495->g_80[0][1],&l_86,&p_1495->g_6},{&p_1495->g_80[0][1],&l_86,&p_1495->g_6},{&p_1495->g_80[0][1],&l_86,&p_1495->g_6},{&p_1495->g_80[0][1],&l_86,&p_1495->g_6}},{{&p_1495->g_80[0][1],&l_86,&p_1495->g_6},{&p_1495->g_80[0][1],&l_86,&p_1495->g_6},{&p_1495->g_80[0][1],&l_86,&p_1495->g_6},{&p_1495->g_80[0][1],&l_86,&p_1495->g_6},{&p_1495->g_80[0][1],&l_86,&p_1495->g_6},{&p_1495->g_80[0][1],&l_86,&p_1495->g_6},{&p_1495->g_80[0][1],&l_86,&p_1495->g_6},{&p_1495->g_80[0][1],&l_86,&p_1495->g_6},{&p_1495->g_80[0][1],&l_86,&p_1495->g_6},{&p_1495->g_80[0][1],&l_86,&p_1495->g_6}},{{&p_1495->g_80[0][1],&l_86,&p_1495->g_6},{&p_1495->g_80[0][1],&l_86,&p_1495->g_6},{&p_1495->g_80[0][1],&l_86,&p_1495->g_6},{&p_1495->g_80[0][1],&l_86,&p_1495->g_6},{&p_1495->g_80[0][1],&l_86,&p_1495->g_6},{&p_1495->g_80[0][1],&l_86,&p_1495->g_6},{&p_1495->g_80[0][1],&l_86,&p_1495->g_6},{&p_1495->g_80[0][1],&l_86,&p_1495->g_6},{&p_1495->g_80[0][1],&l_86,&p_1495->g_6},{&p_1495->g_80[0][1],&l_86,&p_1495->g_6}},{{&p_1495->g_80[0][1],&l_86,&p_1495->g_6},{&p_1495->g_80[0][1],&l_86,&p_1495->g_6},{&p_1495->g_80[0][1],&l_86,&p_1495->g_6},{&p_1495->g_80[0][1],&l_86,&p_1495->g_6},{&p_1495->g_80[0][1],&l_86,&p_1495->g_6},{&p_1495->g_80[0][1],&l_86,&p_1495->g_6},{&p_1495->g_80[0][1],&l_86,&p_1495->g_6},{&p_1495->g_80[0][1],&l_86,&p_1495->g_6},{&p_1495->g_80[0][1],&l_86,&p_1495->g_6},{&p_1495->g_80[0][1],&l_86,&p_1495->g_6}},{{&p_1495->g_80[0][1],&l_86,&p_1495->g_6},{&p_1495->g_80[0][1],&l_86,&p_1495->g_6},{&p_1495->g_80[0][1],&l_86,&p_1495->g_6},{&p_1495->g_80[0][1],&l_86,&p_1495->g_6},{&p_1495->g_80[0][1],&l_86,&p_1495->g_6},{&p_1495->g_80[0][1],&l_86,&p_1495->g_6},{&p_1495->g_80[0][1],&l_86,&p_1495->g_6},{&p_1495->g_80[0][1],&l_86,&p_1495->g_6},{&p_1495->g_80[0][1],&l_86,&p_1495->g_6},{&p_1495->g_80[0][1],&l_86,&p_1495->g_6}},{{&p_1495->g_80[0][1],&l_86,&p_1495->g_6},{&p_1495->g_80[0][1],&l_86,&p_1495->g_6},{&p_1495->g_80[0][1],&l_86,&p_1495->g_6},{&p_1495->g_80[0][1],&l_86,&p_1495->g_6},{&p_1495->g_80[0][1],&l_86,&p_1495->g_6},{&p_1495->g_80[0][1],&l_86,&p_1495->g_6},{&p_1495->g_80[0][1],&l_86,&p_1495->g_6},{&p_1495->g_80[0][1],&l_86,&p_1495->g_6},{&p_1495->g_80[0][1],&l_86,&p_1495->g_6},{&p_1495->g_80[0][1],&l_86,&p_1495->g_6}},{{&p_1495->g_80[0][1],&l_86,&p_1495->g_6},{&p_1495->g_80[0][1],&l_86,&p_1495->g_6},{&p_1495->g_80[0][1],&l_86,&p_1495->g_6},{&p_1495->g_80[0][1],&l_86,&p_1495->g_6},{&p_1495->g_80[0][1],&l_86,&p_1495->g_6},{&p_1495->g_80[0][1],&l_86,&p_1495->g_6},{&p_1495->g_80[0][1],&l_86,&p_1495->g_6},{&p_1495->g_80[0][1],&l_86,&p_1495->g_6},{&p_1495->g_80[0][1],&l_86,&p_1495->g_6},{&p_1495->g_80[0][1],&l_86,&p_1495->g_6}}};
        int64_t l_111 = (-2L);
        int i, j, k;
        --l_114;
    }
    else
    { /* block id: 42 */
        uint16_t *l_123[6] = {&l_102,&l_102,&l_102,&l_102,&l_102,&l_102};
        int32_t l_143 = 0x3807ABEAL;
        int32_t l_167 = 0L;
        int16_t l_173 = 0x0175L;
        int32_t **l_181 = &p_1495->g_69;
        uint16_t *l_223[6];
        struct S0 l_236 = {-5L};
        uint16_t **l_262 = &l_223[1];
        uint16_t ***l_261 = &l_262;
        int16_t ***l_295 = &p_1495->g_292;
        int i;
        for (i = 0; i < 6; i++)
            l_223[i] = &p_1495->g_222;
        for (l_102 = 15; (l_102 >= 13); l_102 = safe_sub_func_uint32_t_u_u(l_102, 2))
        { /* block id: 45 */
            uint16_t **l_140 = &l_103;
            int32_t l_142[10];
            int8_t *l_144 = &l_92.f0;
            uint8_t *l_233 = &l_89;
            int32_t l_235 = 0x2E7622B3L;
            int32_t l_244 = 0x05A825F2L;
            int i;
            for (i = 0; i < 10; i++)
                l_142[i] = 0x0DC46826L;
            (1 + 1);
        }
        for (p_1495->g_159 = 0; (p_1495->g_159 > (-8)); p_1495->g_159 = safe_sub_func_uint8_t_u_u(p_1495->g_159, 5))
        { /* block id: 129 */
            uint64_t *l_271 = (void*)0;
            uint64_t **l_270[5];
            int32_t l_273 = 0x2C7F4983L;
            int8_t *l_283 = &p_1495->g_94.f0;
            int32_t *l_285 = (void*)0;
            int32_t *l_286 = &p_1495->g_287;
            uint16_t l_288[1][8][10] = {{{65535UL,65535UL,0x7587L,1UL,1UL,0x37AFL,0xB98BL,0xBB73L,0xB98BL,0x37AFL},{65535UL,65535UL,0x7587L,1UL,1UL,0x37AFL,0xB98BL,0xBB73L,0xB98BL,0x37AFL},{65535UL,65535UL,0x7587L,1UL,1UL,0x37AFL,0xB98BL,0xBB73L,0xB98BL,0x37AFL},{65535UL,65535UL,0x7587L,1UL,1UL,0x37AFL,0xB98BL,0xBB73L,0xB98BL,0x37AFL},{65535UL,65535UL,0x7587L,1UL,1UL,0x37AFL,0xB98BL,0xBB73L,0xB98BL,0x37AFL},{65535UL,65535UL,0x7587L,1UL,1UL,0x37AFL,0xB98BL,0xBB73L,0xB98BL,0x37AFL},{65535UL,65535UL,0x7587L,1UL,1UL,0x37AFL,0xB98BL,0xBB73L,0xB98BL,0x37AFL},{65535UL,65535UL,0x7587L,1UL,1UL,0x37AFL,0xB98BL,0xBB73L,0xB98BL,0x37AFL}}};
            int i, j, k;
            for (i = 0; i < 5; i++)
                l_270[i] = &l_271;
            if (p_1495->g_155)
                break;
            (*l_206) = ((safe_div_func_uint64_t_u_u(((&l_104 == (l_272 = &p_1495->g_234)) | l_273), ((*l_105) , ((safe_unary_minus_func_uint64_t_u((safe_mul_func_int16_t_s_s((((*l_286) = (l_273 || (((((p_1495->g_234 = (((safe_sub_func_int64_t_s_s((((0UL == ((((safe_sub_func_int16_t_s_s(((((**l_262) = (((p_1495->g_222 == (safe_mul_func_int8_t_s_s(((*l_283) = (-1L)), p_1495->g_8))) != (-2L)) < GROUP_DIVERGE(0, 1))) & (*l_206)) , (-1L)), GROUP_DIVERGE(1, 1))) , p_1495->g_284) == (void*)0) , l_273)) ^ l_273) < (*l_105)), 1UL)) ^ l_273) | (-1L))) , 0L) , l_273) & (*l_206)) && p_1495->g_94.f0))) , l_273), l_288[0][7][1])))) && 0x0AL)))) & 2UL);
        }
        (*l_295) = l_289[0];
    }
    return l_296[3];
}


/* ------------------------------------------ */
/* 
 * reads : p_1495->g_8 p_1495->g_70 p_1495->g_71 p_1495->g_72
 * writes: p_1495->g_69 p_1495->g_70 p_1495->g_71
 */
int32_t * func_61(uint64_t  p_62, int32_t * p_63, int32_t  p_64, struct S1 * p_1495)
{ /* block id: 19 */
    uint32_t l_66 = 0x0EC62D7FL;
    int32_t *l_67 = (void*)0;
    int32_t **l_68[5];
    int i;
    for (i = 0; i < 5; i++)
        l_68[i] = (void*)0;
    p_1495->g_69 = (l_66 , l_67);
    p_1495->g_70 ^= p_1495->g_8;
    (*p_1495->g_72) = p_1495->g_71;
    return p_63;
}


__kernel void entry(__global ulong *result, __global volatile int *g_atomic_reduction, __global int *sequence_input) {
    int i, j, k;
    __local volatile uint32_t l_atomic_reduction[1];
    if (get_linear_local_id() == 0)
        for (i = 0; i < 1; i++)
            l_atomic_reduction[i] = 0;
    struct S1 c_1496;
    struct S1* p_1495 = &c_1496;
    struct S1 c_1497 = {
        0x6D444182L, // p_1495->g_2
        0x6E54EE87L, // p_1495->g_6
        0x377CC424L, // p_1495->g_8
        0xE86524F2L, // p_1495->g_10
        4294967286UL, // p_1495->g_42
        &p_1495->g_8, // p_1495->g_69
        4294967295UL, // p_1495->g_70
        {-1L}, // p_1495->g_71
        &p_1495->g_71, // p_1495->g_72
        {0L,0L,0L,0L,0L,0L,0L}, // p_1495->g_78
        {{(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L)},{(-1L),(-1L),(-1L),(-1L)}}, // p_1495->g_80
        {1L}, // p_1495->g_94
        &p_1495->g_94, // p_1495->g_93
        (void*)0, // p_1495->g_141
        0x4CDA1560L, // p_1495->g_155
        0x3D7EL, // p_1495->g_159
        0x5D56EC37L, // p_1495->g_179
        0x3267E44FFD4399AEL, // p_1495->g_190
        0x0678L, // p_1495->g_222
        0x8CE7E410B6521598L, // p_1495->g_234
        &p_1495->g_94, // p_1495->g_237
        (void*)0, // p_1495->g_284
        0x63AF6863L, // p_1495->g_287
        (void*)0, // p_1495->g_293
        &p_1495->g_293, // p_1495->g_292
        {{&p_1495->g_292,&p_1495->g_292,&p_1495->g_292,&p_1495->g_292,&p_1495->g_292},{&p_1495->g_292,&p_1495->g_292,&p_1495->g_292,&p_1495->g_292,&p_1495->g_292}}, // p_1495->g_291
        (void*)0, // p_1495->g_294
        1UL, // p_1495->g_298
        {{{&p_1495->g_69,&p_1495->g_69,&p_1495->g_69,&p_1495->g_69},{&p_1495->g_69,&p_1495->g_69,&p_1495->g_69,&p_1495->g_69}},{{&p_1495->g_69,&p_1495->g_69,&p_1495->g_69,&p_1495->g_69},{&p_1495->g_69,&p_1495->g_69,&p_1495->g_69,&p_1495->g_69}},{{&p_1495->g_69,&p_1495->g_69,&p_1495->g_69,&p_1495->g_69},{&p_1495->g_69,&p_1495->g_69,&p_1495->g_69,&p_1495->g_69}},{{&p_1495->g_69,&p_1495->g_69,&p_1495->g_69,&p_1495->g_69},{&p_1495->g_69,&p_1495->g_69,&p_1495->g_69,&p_1495->g_69}},{{&p_1495->g_69,&p_1495->g_69,&p_1495->g_69,&p_1495->g_69},{&p_1495->g_69,&p_1495->g_69,&p_1495->g_69,&p_1495->g_69}},{{&p_1495->g_69,&p_1495->g_69,&p_1495->g_69,&p_1495->g_69},{&p_1495->g_69,&p_1495->g_69,&p_1495->g_69,&p_1495->g_69}}}, // p_1495->g_303
        &p_1495->g_69, // p_1495->g_304
        {-1L}, // p_1495->g_306
        0xB5CDF32FL, // p_1495->g_313
        0x2FBDBAFEF72581F8L, // p_1495->g_317
        &p_1495->g_69, // p_1495->g_325
        18446744073709551608UL, // p_1495->g_347
        (-7L), // p_1495->g_374
        0x6313L, // p_1495->g_375
        &p_1495->g_80[4][2], // p_1495->g_379
        &p_1495->g_306.f0, // p_1495->g_508
        {{{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508}},{{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508}},{{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508}},{{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508}},{{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508}},{{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508}},{{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508}},{{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508}},{{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508}},{{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508},{&p_1495->g_508,&p_1495->g_508}}}, // p_1495->g_507
        (void*)0, // p_1495->g_552
        &p_1495->g_552, // p_1495->g_551
        &p_1495->g_69, // p_1495->g_588
        (void*)0, // p_1495->g_627
        &p_1495->g_2, // p_1495->g_629
        &p_1495->g_629, // p_1495->g_628
        0x1DL, // p_1495->g_648
        &p_1495->g_141, // p_1495->g_680
        &p_1495->g_680, // p_1495->g_679
        &p_1495->g_94, // p_1495->g_713
        {{&p_1495->g_680,&p_1495->g_680,&p_1495->g_680,&p_1495->g_680},{&p_1495->g_680,&p_1495->g_680,&p_1495->g_680,&p_1495->g_680},{&p_1495->g_680,&p_1495->g_680,&p_1495->g_680,&p_1495->g_680},{&p_1495->g_680,&p_1495->g_680,&p_1495->g_680,&p_1495->g_680},{&p_1495->g_680,&p_1495->g_680,&p_1495->g_680,&p_1495->g_680}}, // p_1495->g_734
        0UL, // p_1495->g_744
        (void*)0, // p_1495->g_763
        (void*)0, // p_1495->g_852
        &p_1495->g_306, // p_1495->g_854
        &p_1495->g_854, // p_1495->g_853
        0x6AL, // p_1495->g_870
        &p_1495->g_69, // p_1495->g_891
        &p_1495->g_629, // p_1495->g_982
        {{{&p_1495->g_629,&p_1495->g_629,&p_1495->g_629,&p_1495->g_629,&p_1495->g_629,&p_1495->g_629},{&p_1495->g_629,&p_1495->g_629,&p_1495->g_629,&p_1495->g_629,&p_1495->g_629,&p_1495->g_629},{&p_1495->g_629,&p_1495->g_629,&p_1495->g_629,&p_1495->g_629,&p_1495->g_629,&p_1495->g_629},{&p_1495->g_629,&p_1495->g_629,&p_1495->g_629,&p_1495->g_629,&p_1495->g_629,&p_1495->g_629}}}, // p_1495->g_983
        0UL, // p_1495->g_992
        &p_1495->g_629, // p_1495->g_1035
        &p_1495->g_298, // p_1495->g_1089
        &p_1495->g_1089, // p_1495->g_1088
        1UL, // p_1495->g_1157
        0xF6B44D10FE722D7BL, // p_1495->g_1176
        (void*)0, // p_1495->g_1180
        {&p_1495->g_1180,&p_1495->g_1180}, // p_1495->g_1179
        &p_1495->g_69, // p_1495->g_1198
        {&p_1495->g_69,&p_1495->g_69,&p_1495->g_69,&p_1495->g_69}, // p_1495->g_1207
        &p_1495->g_69, // p_1495->g_1208
        &p_1495->g_42, // p_1495->g_1231
        &p_1495->g_1231, // p_1495->g_1230
        &p_1495->g_1230, // p_1495->g_1229
        0xF15BFC1BB5914A48L, // p_1495->g_1301
        0x695C46B5C108202DL, // p_1495->g_1336
        0xBA85A796EE33C39AL, // p_1495->g_1421
        4UL, // p_1495->g_1461
        &p_1495->g_629, // p_1495->g_1482
        0, // p_1495->v_collective
        sequence_input[get_global_id(0)], // p_1495->global_0_offset
        sequence_input[get_global_id(1)], // p_1495->global_1_offset
        sequence_input[get_global_id(2)], // p_1495->global_2_offset
        sequence_input[get_local_id(0)], // p_1495->local_0_offset
        sequence_input[get_local_id(1)], // p_1495->local_1_offset
        sequence_input[get_local_id(2)], // p_1495->local_2_offset
        sequence_input[get_group_id(0)], // p_1495->group_0_offset
        sequence_input[get_group_id(1)], // p_1495->group_1_offset
        sequence_input[get_group_id(2)], // p_1495->group_2_offset
        l_atomic_reduction, // l_atomic_reduction
        g_atomic_reduction, // g_atomic_reduction
    };
    c_1496 = c_1497;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1495);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1495->g_2, "p_1495->g_2", print_hash_value);
    transparent_crc(p_1495->g_6, "p_1495->g_6", print_hash_value);
    transparent_crc(p_1495->g_8, "p_1495->g_8", print_hash_value);
    transparent_crc(p_1495->g_10, "p_1495->g_10", print_hash_value);
    transparent_crc(p_1495->g_42, "p_1495->g_42", print_hash_value);
    transparent_crc(p_1495->g_70, "p_1495->g_70", print_hash_value);
    transparent_crc(p_1495->g_71.f0, "p_1495->g_71.f0", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1495->g_78[i], "p_1495->g_78[i]", print_hash_value);

    }
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_1495->g_80[i][j], "p_1495->g_80[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1495->g_94.f0, "p_1495->g_94.f0", print_hash_value);
    transparent_crc(p_1495->g_155, "p_1495->g_155", print_hash_value);
    transparent_crc(p_1495->g_159, "p_1495->g_159", print_hash_value);
    transparent_crc(p_1495->g_179, "p_1495->g_179", print_hash_value);
    transparent_crc(p_1495->g_190, "p_1495->g_190", print_hash_value);
    transparent_crc(p_1495->g_222, "p_1495->g_222", print_hash_value);
    transparent_crc(p_1495->g_234, "p_1495->g_234", print_hash_value);
    transparent_crc(p_1495->g_287, "p_1495->g_287", print_hash_value);
    transparent_crc(p_1495->g_298, "p_1495->g_298", print_hash_value);
    transparent_crc(p_1495->g_306.f0, "p_1495->g_306.f0", print_hash_value);
    transparent_crc(p_1495->g_313, "p_1495->g_313", print_hash_value);
    transparent_crc(p_1495->g_317, "p_1495->g_317", print_hash_value);
    transparent_crc(p_1495->g_347, "p_1495->g_347", print_hash_value);
    transparent_crc(p_1495->g_374, "p_1495->g_374", print_hash_value);
    transparent_crc(p_1495->g_375, "p_1495->g_375", print_hash_value);
    transparent_crc(p_1495->g_648, "p_1495->g_648", print_hash_value);
    transparent_crc(p_1495->g_744, "p_1495->g_744", print_hash_value);
    transparent_crc(p_1495->g_870, "p_1495->g_870", print_hash_value);
    transparent_crc(p_1495->g_992, "p_1495->g_992", print_hash_value);
    transparent_crc(p_1495->g_1157, "p_1495->g_1157", print_hash_value);
    transparent_crc(p_1495->g_1176, "p_1495->g_1176", print_hash_value);
    transparent_crc(p_1495->g_1301, "p_1495->g_1301", print_hash_value);
    transparent_crc(p_1495->g_1336, "p_1495->g_1336", print_hash_value);
    transparent_crc(p_1495->g_1421, "p_1495->g_1421", print_hash_value);
    transparent_crc(p_1495->g_1461, "p_1495->g_1461", print_hash_value);
    transparent_crc(p_1495->v_collective, "p_1495->v_collective", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
