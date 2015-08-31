// ---fake_divergence -g 1,1,1 -l 1,1,1
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


// Seed: 67

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
    volatile int32_t g_5[8];
    volatile int32_t *g_4[4];
    volatile VECTOR(uint8_t, 4) g_23;
    volatile VECTOR(uint16_t, 2) g_34;
    int32_t g_44;
    int32_t *g_43;
    int32_t **g_42;
    int8_t g_61;
    int64_t g_64[2];
    uint32_t g_66[3][10];
    uint8_t g_67;
    VECTOR(int32_t, 16) g_73;
    uint32_t g_128;
    VECTOR(int16_t, 4) g_138;
    int32_t * volatile * volatile * volatile *g_143;
    uint32_t g_148;
    VECTOR(int32_t, 16) g_179;
    VECTOR(uint8_t, 8) g_200;
    VECTOR(uint8_t, 2) g_201;
    VECTOR(uint8_t, 2) g_202;
    int64_t g_229;
    VECTOR(uint32_t, 2) g_250;
    VECTOR(uint32_t, 2) g_251;
    int32_t ***g_262;
    int32_t ****g_261;
    int32_t *****g_260;
    uint64_t g_304;
    uint32_t *g_309;
    uint32_t * volatile *g_308;
    uint32_t * volatile * volatile *g_307;
    uint16_t g_311;
    VECTOR(uint16_t, 8) g_313;
    VECTOR(uint16_t, 8) g_338;
    VECTOR(uint8_t, 4) g_343;
    int8_t *g_357;
    int8_t **g_356;
    VECTOR(int8_t, 8) g_382;
    VECTOR(int8_t, 8) g_383;
    VECTOR(int8_t, 8) g_384;
    VECTOR(int8_t, 4) g_385;
    uint32_t g_391;
    uint8_t g_397;
    int32_t ******g_417;
    volatile int16_t *g_472;
    int32_t ******g_495;
    VECTOR(uint64_t, 16) g_513;
    VECTOR(uint64_t, 4) g_516;
    int16_t *g_568;
    VECTOR(uint8_t, 2) g_588;
    int32_t *g_610;
    uint32_t g_618;
    VECTOR(int32_t, 8) g_629;
    VECTOR(int32_t, 2) g_633;
    VECTOR(uint64_t, 2) g_654;
    VECTOR(int8_t, 8) g_665;
    uint64_t *g_669;
    VECTOR(uint8_t, 2) g_672;
    int32_t g_694;
    uint32_t g_695;
    uint32_t g_700;
    VECTOR(int64_t, 2) g_721;
    VECTOR(uint32_t, 16) g_764;
    VECTOR(int64_t, 16) g_777;
    int8_t g_812[10];
    volatile int32_t g_847[3][7][3];
    volatile int32_t *g_846;
    VECTOR(int32_t, 16) g_848;
    VECTOR(int32_t, 4) g_878;
    VECTOR(int64_t, 2) g_895;
    VECTOR(int8_t, 16) g_924;
    VECTOR(int8_t, 4) g_927;
    VECTOR(int8_t, 4) g_928;
    VECTOR(int8_t, 4) g_935;
    VECTOR(int8_t, 8) g_937;
    VECTOR(int8_t, 8) g_938;
    VECTOR(uint32_t, 4) g_962;
    volatile VECTOR(int32_t, 16) g_1018;
    VECTOR(uint64_t, 4) g_1034;
    VECTOR(int32_t, 2) g_1051;
    volatile VECTOR(int32_t, 16) g_1052;
    int16_t **g_1065;
    int16_t *** volatile g_1064;
    int16_t *** volatile *g_1063;
    volatile VECTOR(int8_t, 2) g_1070;
    VECTOR(int8_t, 2) g_1072;
    volatile VECTOR(uint16_t, 8) g_1089;
    VECTOR(uint16_t, 2) g_1090;
    VECTOR(uint16_t, 16) g_1091;
    VECTOR(uint16_t, 16) g_1094;
    VECTOR(uint8_t, 2) g_1103;
    VECTOR(uint8_t, 4) g_1104;
    VECTOR(int32_t, 4) g_1115;
    volatile VECTOR(uint8_t, 16) g_1122;
    VECTOR(uint8_t, 2) g_1129;
    uint8_t *g_1148;
    uint8_t *g_1151[10][3][3];
    volatile VECTOR(uint64_t, 2) g_1157;
    VECTOR(uint64_t, 16) g_1186;
    VECTOR(uint64_t, 4) g_1190;
    volatile VECTOR(uint64_t, 2) g_1198;
    volatile VECTOR(uint64_t, 16) g_1218;
    volatile VECTOR(uint64_t, 4) g_1221;
    VECTOR(uint64_t, 8) g_1222;
    int32_t *******g_1246[8];
    volatile VECTOR(int32_t, 8) g_1250;
    int32_t g_1258[1][1];
    volatile uint16_t g_1269;
    uint64_t g_1329;
    int16_t g_1330;
    VECTOR(int32_t, 16) g_1349;
    VECTOR(uint16_t, 4) g_1351;
    VECTOR(uint16_t, 4) g_1352;
    VECTOR(int32_t, 2) g_1353;
    uint32_t g_1372;
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
int64_t  func_1(struct S0 * p_1375);
uint8_t  func_24(int32_t  p_25, uint16_t  p_26, int32_t * p_27, struct S0 * p_1375);
int16_t  func_39(int32_t ** p_40, int32_t ** p_41, struct S0 * p_1375);
int32_t ** func_48(int32_t  p_49, int8_t  p_50, uint32_t  p_51, int32_t * p_52, int32_t  p_53, struct S0 * p_1375);
VECTOR(int32_t, 8)  func_74(int64_t * p_75, int32_t ** p_76, uint32_t  p_77, struct S0 * p_1375);
int8_t  func_78(int32_t  p_79, uint32_t  p_80, struct S0 * p_1375);
int32_t * func_84(int64_t * p_85, uint16_t  p_86, int8_t * p_87, int64_t * p_88, int32_t ** p_89, struct S0 * p_1375);
int64_t * func_90(int32_t  p_91, int16_t  p_92, struct S0 * p_1375);
int32_t ** func_100(uint32_t  p_101, int32_t  p_102, int16_t  p_103, int32_t * p_104, int64_t  p_105, struct S0 * p_1375);
int32_t *** func_108(uint32_t  p_109, int32_t  p_110, int8_t * p_111, uint8_t  p_112, struct S0 * p_1375);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1375->g_309 p_1375->g_128 p_1375->g_308 p_1375->g_516 p_1375->g_672 p_1375->g_924 p_1375->g_179 p_1375->g_848 p_1375->g_343 p_1375->g_357 p_1375->g_61 p_1375->g_43 p_1375->g_148 p_1375->g_261 p_1375->g_262 p_1375->g_42 p_1375->g_260 p_1375->g_44 p_1375->g_846 p_1375->g_847 p_1375->g_1063 p_1375->g_1115 p_1375->g_397 p_1375->g_618 p_1375->g_356 p_1375->g_200 p_1375->g_878 p_1375->g_1258 p_1375->g_417 p_1375->g_1269 p_1375->g_385 p_1375->g_1090 p_1375->g_304 p_1375->g_338 p_1375->g_66 p_1375->g_764 p_1375->g_201 p_1375->g_1330 p_1375->g_1103 p_1375->g_1222 p_1375->g_307 p_1375->g_665 p_1375->g_34 p_1375->g_383 p_1375->g_64 p_1375->g_1198
 * writes: p_1375->g_4 p_1375->g_343 p_1375->g_128 p_1375->g_516 p_1375->g_672 p_1375->g_311 p_1375->g_138 p_1375->g_44 p_1375->g_43 p_1375->g_847 p_1375->g_391 p_1375->g_148 p_1375->g_1246 p_1375->g_397 p_1375->g_417 p_1375->g_61 p_1375->g_1269 p_1375->g_304 p_1375->g_262 p_1375->g_1329 p_1375->g_64
 */
int64_t  func_1(struct S0 * p_1375)
{ /* block id: 4 */
    int32_t *l_3 = (void*)0;
    int32_t **l_2[3];
    VECTOR(uint8_t, 4) l_18 = (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 254UL), 254UL);
    VECTOR(uint32_t, 2) l_1050 = (VECTOR(uint32_t, 2))(4294967290UL, 4294967292UL);
    int16_t ***l_1062 = (void*)0;
    int16_t ****l_1061 = &l_1062;
    int8_t l_1074 = 7L;
    VECTOR(uint16_t, 2) l_1107 = (VECTOR(uint16_t, 2))(0xB2F8L, 0xEF04L);
    int32_t l_1116[1][5][1] = {{{2L},{2L},{2L},{2L},{2L}}};
    VECTOR(uint8_t, 16) l_1133 = (VECTOR(uint8_t, 16))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 253UL), 253UL), 253UL, 255UL, 253UL, (VECTOR(uint8_t, 2))(255UL, 253UL), (VECTOR(uint8_t, 2))(255UL, 253UL), 255UL, 253UL, 255UL, 253UL);
    VECTOR(uint8_t, 16) l_1140 = (VECTOR(uint8_t, 16))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 1UL), 1UL), 1UL, 0UL, 1UL, (VECTOR(uint8_t, 2))(0UL, 1UL), (VECTOR(uint8_t, 2))(0UL, 1UL), 0UL, 1UL, 0UL, 1UL);
    uint8_t *l_1149 = (void*)0;
    int8_t l_1164 = 1L;
    VECTOR(int32_t, 2) l_1248 = (VECTOR(int32_t, 2))(0x07138F1CL, 0x23393DA3L);
    int32_t *******l_1252 = &p_1375->g_417;
    int64_t l_1278 = 2L;
    uint16_t l_1279 = 7UL;
    int64_t l_1301 = 0x1B19EA6AD46E6D7AL;
    uint64_t *l_1302 = (void*)0;
    uint64_t *l_1303 = (void*)0;
    uint64_t *l_1304 = &p_1375->g_304;
    int16_t *l_1305 = (void*)0;
    int16_t *l_1306 = (void*)0;
    int16_t *l_1307 = (void*)0;
    int16_t *l_1308 = (void*)0;
    int16_t *l_1309 = (void*)0;
    int16_t *l_1310 = (void*)0;
    int16_t *l_1311[1][1];
    uint8_t *l_1316 = (void*)0;
    uint8_t *l_1317 = (void*)0;
    uint8_t *l_1318 = (void*)0;
    uint8_t *l_1319[2][10] = {{&p_1375->g_397,&p_1375->g_397,&p_1375->g_397,&p_1375->g_397,&p_1375->g_397,&p_1375->g_397,&p_1375->g_397,&p_1375->g_397,&p_1375->g_397,&p_1375->g_397},{&p_1375->g_397,&p_1375->g_397,&p_1375->g_397,&p_1375->g_397,&p_1375->g_397,&p_1375->g_397,&p_1375->g_397,&p_1375->g_397,&p_1375->g_397,&p_1375->g_397}};
    int32_t l_1320 = 1L;
    int8_t l_1321 = 0x25L;
    int32_t l_1322 = 0x7820F9E9L;
    uint32_t l_1323 = 0x762AE6CFL;
    uint16_t l_1326 = 0x5604L;
    int32_t l_1327 = (-1L);
    uint8_t l_1328[10][8] = {{0x09L,0x09L,0UL,0x66L,255UL,0x66L,0UL,0x09L},{0x09L,0x09L,0UL,0x66L,255UL,0x66L,0UL,0x09L},{0x09L,0x09L,0UL,0x66L,255UL,0x66L,0UL,0x09L},{0x09L,0x09L,0UL,0x66L,255UL,0x66L,0UL,0x09L},{0x09L,0x09L,0UL,0x66L,255UL,0x66L,0UL,0x09L},{0x09L,0x09L,0UL,0x66L,255UL,0x66L,0UL,0x09L},{0x09L,0x09L,0UL,0x66L,255UL,0x66L,0UL,0x09L},{0x09L,0x09L,0UL,0x66L,255UL,0x66L,0UL,0x09L},{0x09L,0x09L,0UL,0x66L,255UL,0x66L,0UL,0x09L},{0x09L,0x09L,0UL,0x66L,255UL,0x66L,0UL,0x09L}};
    int8_t l_1331 = (-4L);
    int64_t *l_1332 = &p_1375->g_64[0];
    int32_t l_1333 = 0x2BBC3EADL;
    int32_t l_1334 = 0x4F4F7FEDL;
    VECTOR(int8_t, 16) l_1335 = (VECTOR(int8_t, 16))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0L), 0L), 0L, (-1L), 0L, (VECTOR(int8_t, 2))((-1L), 0L), (VECTOR(int8_t, 2))((-1L), 0L), (-1L), 0L, (-1L), 0L);
    uint32_t **l_1337 = (void*)0;
    uint32_t ***l_1336 = &l_1337;
    VECTOR(int32_t, 8) l_1346 = (VECTOR(int32_t, 8))(0x3E228C77L, (VECTOR(int32_t, 4))(0x3E228C77L, (VECTOR(int32_t, 2))(0x3E228C77L, 1L), 1L), 1L, 0x3E228C77L, 1L);
    VECTOR(int32_t, 16) l_1347 = (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 7L), 7L), 7L, 0L, 7L, (VECTOR(int32_t, 2))(0L, 7L), (VECTOR(int32_t, 2))(0L, 7L), 0L, 7L, 0L, 7L);
    VECTOR(int32_t, 2) l_1348 = (VECTOR(int32_t, 2))(0x6E12C209L, 0x33BD0875L);
    VECTOR(int16_t, 2) l_1350 = (VECTOR(int16_t, 2))(0x5853L, (-1L));
    VECTOR(int32_t, 8) l_1354 = (VECTOR(int32_t, 8))(0x4774731CL, (VECTOR(int32_t, 4))(0x4774731CL, (VECTOR(int32_t, 2))(0x4774731CL, 1L), 1L), 1L, 0x4774731CL, 1L);
    VECTOR(int16_t, 8) l_1355 = (VECTOR(int16_t, 8))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x1B4BL), 0x1B4BL), 0x1B4BL, 1L, 0x1B4BL);
    int8_t l_1360 = 0x77L;
    VECTOR(uint8_t, 8) l_1363 = (VECTOR(uint8_t, 8))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 255UL), 255UL), 255UL, 0UL, 255UL);
    int8_t l_1368 = 0x23L;
    uint64_t l_1369 = 0x578964C96DB67B3DL;
    int64_t l_1370 = (-6L);
    uint32_t l_1371 = 0x5113E8A8L;
    uint16_t *l_1374 = (void*)0;
    uint16_t **l_1373 = &l_1374;
    int i, j, k;
    for (i = 0; i < 3; i++)
        l_2[i] = &l_3;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 1; j++)
            l_1311[i][j] = (void*)0;
    }
    p_1375->g_4[3] = (void*)0;
lbl_1273:
    if ((safe_rshift_func_int8_t_s_s(((VECTOR(int8_t, 2))((-1L), 0x3CL)).odd, 1)))
    { /* block id: 6 */
        VECTOR(uint32_t, 4) l_8 = (VECTOR(uint32_t, 4))(0x231FBF68L, (VECTOR(uint32_t, 2))(0x231FBF68L, 7UL), 7UL);
        int i;
        ++l_8.w;
    }
    else
    { /* block id: 8 */
        uint16_t l_11 = 4UL;
        VECTOR(uint8_t, 4) l_19 = (VECTOR(uint8_t, 4))(0xBBL, (VECTOR(uint8_t, 2))(0xBBL, 1UL), 1UL);
        VECTOR(uint8_t, 4) l_22 = (VECTOR(uint8_t, 4))(4UL, (VECTOR(uint8_t, 2))(4UL, 1UL), 1UL);
        int8_t *l_60 = &p_1375->g_61;
        uint16_t l_62 = 0x2DC2L;
        int64_t *l_63[5] = {&p_1375->g_64[0],&p_1375->g_64[0],&p_1375->g_64[0],&p_1375->g_64[0],&p_1375->g_64[0]};
        int32_t l_65 = 0x58FEB948L;
        int32_t *l_997 = (void*)0;
        uint8_t *l_1000[6] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        VECTOR(uint16_t, 2) l_1045 = (VECTOR(uint16_t, 2))(7UL, 65529UL);
        int32_t *****l_1053 = &p_1375->g_261;
        int32_t l_1057 = 0x39BCA90AL;
        VECTOR(int8_t, 4) l_1073 = (VECTOR(int8_t, 4))(0x45L, (VECTOR(int8_t, 2))(0x45L, 0L), 0L);
        VECTOR(int16_t, 2) l_1077 = (VECTOR(int16_t, 2))(0x04D2L, 0x27F9L);
        int16_t *l_1152 = (void*)0;
        VECTOR(uint64_t, 4) l_1203 = (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 0xB05DBB5810F3A472L), 0xB05DBB5810F3A472L);
        VECTOR(uint64_t, 4) l_1208 = (VECTOR(uint64_t, 4))(0xF9820D149CBD0285L, (VECTOR(uint64_t, 2))(0xF9820D149CBD0285L, 0x6B656A50753E1F6DL), 0x6B656A50753E1F6DL);
        VECTOR(int32_t, 16) l_1251 = (VECTOR(int32_t, 16))(0x3928E46EL, (VECTOR(int32_t, 4))(0x3928E46EL, (VECTOR(int32_t, 2))(0x3928E46EL, (-9L)), (-9L)), (-9L), 0x3928E46EL, (-9L), (VECTOR(int32_t, 2))(0x3928E46EL, (-9L)), (VECTOR(int32_t, 2))(0x3928E46EL, (-9L)), 0x3928E46EL, (-9L), 0x3928E46EL, (-9L));
        VECTOR(uint8_t, 16) l_1267 = (VECTOR(uint8_t, 16))(2UL, (VECTOR(uint8_t, 4))(2UL, (VECTOR(uint8_t, 2))(2UL, 0x0BL), 0x0BL), 0x0BL, 2UL, 0x0BL, (VECTOR(uint8_t, 2))(2UL, 0x0BL), (VECTOR(uint8_t, 2))(2UL, 0x0BL), 2UL, 0x0BL, 2UL, 0x0BL);
        uint32_t l_1268 = 0xAA3DBDD7L;
        int i;
        --l_11;
        if ((((p_1375->g_343.y = ((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 2))(0x07L, 246UL)), ((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 2))(clz(((VECTOR(uint8_t, 16))(max(((VECTOR(uint8_t, 4))(clz(((VECTOR(uint8_t, 16))(abs_diff(((VECTOR(uint8_t, 4))(mad_sat(((VECTOR(uint8_t, 16))(0x74L, 0UL, 9UL, ((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 16))(l_18.zxzzxzwwwyzwwzyy)).even << ((VECTOR(uint8_t, 4))(0xF9L, ((VECTOR(uint8_t, 2))(l_19.wy)), 0UL)).wyxwyyxx))), ((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 16))(mul_hi(((VECTOR(uint8_t, 16))(sub_sat(((VECTOR(uint8_t, 2))(l_22.xz)).yxyyxyxyxxxyxxyx, ((VECTOR(uint8_t, 4))(p_1375->g_23.yywz)).xwxyyxwzxyyzzwyy))), ((VECTOR(uint8_t, 4))(func_24((safe_rshift_func_int8_t_s_s((!(((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 16))(p_1375->g_34.yyxxyxyxxxyyyxxy)).se9 + ((VECTOR(uint16_t, 2))(0xF39AL, 65527UL))))), 0UL, 0x81D4L)) ^ ((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 8))(abs(((VECTOR(uint16_t, 8))((((((VECTOR(uint64_t, 4))(0x183D96456CFC4FF2L, ((VECTOR(uint64_t, 2))(0x3D7E6DE11D69C043L, 1UL)), 18446744073709551610UL)).z ^ (((safe_lshift_func_int8_t_s_s(((1UL || (func_39(p_1375->g_42, &p_1375->g_43, p_1375) <= ((*p_1375->g_42) != (void*)0))) & ((~((VECTOR(uint8_t, 16))(rhadd(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))((((safe_sub_func_uint64_t_u_u((p_1375->g_44 || ((VECTOR(uint32_t, 8))(rhadd(((VECTOR(uint32_t, 8))(7UL, func_39(func_48((l_65 |= ((**p_1375->g_42) = (safe_sub_func_uint64_t_u_u(GROUP_DIVERGE(2, 1), (p_1375->g_64[0] ^= (safe_mul_func_int8_t_s_s((safe_mul_func_int16_t_s_s((p_1375->g_44 < (((*l_60) = p_1375->g_44) ^ l_62)), p_1375->g_44)), 255UL))))))), p_1375->g_66[0][3], p_1375->g_66[1][1], (*p_1375->g_42), p_1375->g_67, p_1375), (***p_1375->g_260), p_1375), 4294967291UL, 8UL, ((VECTOR(uint32_t, 2))(0x3F8C86FFL)), 1UL, 0x05027638L)), ((VECTOR(uint32_t, 8))(5UL))))).s5), 1L)) <= 2UL) ^ GROUP_DIVERGE(0, 1)), 1UL, 0x89L, 0UL)), ((VECTOR(uint8_t, 8))(254UL)), ((VECTOR(uint8_t, 2))(250UL)), 4UL, 1UL)), ((VECTOR(uint8_t, 16))(0xCFL))))).s2) < l_22.w)), 6)) != 0x72L) && 0x3EC8L)) && (***p_1375->g_307)) >= p_1375->g_937.s5), p_1375->g_73.sa, 0x0A34L, ((VECTOR(uint16_t, 4))(1UL)), 0UL))))).even + ((VECTOR(uint16_t, 4))(9UL))))).odd ^ ((VECTOR(uint16_t, 2))(0xB211L))))).xyyxxyxxxxyxxyxy | ((VECTOR(uint16_t, 16))(0xF2D7L))))).s0802))).odd * ((VECTOR(uint16_t, 2))(0UL))))).lo > 65527UL)), 0)), p_1375->g_382.s0, l_997, p_1375), 0x81L, 0xB7L, 0x8DL)).wyzzwwzxwyyxyyzx))).s9de1 + ((VECTOR(uint8_t, 4))(0UL))))), 0xB1L)).s1455, ((VECTOR(uint8_t, 4))(254UL)), ((VECTOR(uint8_t, 4))(0x48L))))).ywyyzwzxzwxwywzy, ((VECTOR(uint8_t, 16))(1UL))))).s28e8))).zyxzxzyxzxwwxwxz, ((VECTOR(uint8_t, 16))(1UL))))).s93))) * ((VECTOR(uint8_t, 2))(1UL))))), 1UL, 1UL, p_1375->g_695, 0xCDL, ((VECTOR(uint8_t, 4))(0x9FL)), 0x45L, p_1375->g_935.z, 1UL, 247UL)).sf) , &l_65) != l_997))
        { /* block id: 412 */
            for (l_11 = (-10); (l_11 <= 13); l_11 = safe_add_func_int16_t_s_s(l_11, 2))
            { /* block id: 415 */
                uint64_t *l_1007 = (void*)0;
                uint64_t *l_1008 = (void*)0;
                uint64_t *l_1009 = (void*)0;
                uint64_t *l_1010 = (void*)0;
                uint64_t *l_1011[3];
                int32_t l_1014 = 1L;
                uint16_t *l_1017[10][7][3] = {{{&p_1375->g_311,&p_1375->g_311,(void*)0},{&p_1375->g_311,&p_1375->g_311,(void*)0},{&p_1375->g_311,&p_1375->g_311,(void*)0},{&p_1375->g_311,&p_1375->g_311,(void*)0},{&p_1375->g_311,&p_1375->g_311,(void*)0},{&p_1375->g_311,&p_1375->g_311,(void*)0},{&p_1375->g_311,&p_1375->g_311,(void*)0}},{{&p_1375->g_311,&p_1375->g_311,(void*)0},{&p_1375->g_311,&p_1375->g_311,(void*)0},{&p_1375->g_311,&p_1375->g_311,(void*)0},{&p_1375->g_311,&p_1375->g_311,(void*)0},{&p_1375->g_311,&p_1375->g_311,(void*)0},{&p_1375->g_311,&p_1375->g_311,(void*)0},{&p_1375->g_311,&p_1375->g_311,(void*)0}},{{&p_1375->g_311,&p_1375->g_311,(void*)0},{&p_1375->g_311,&p_1375->g_311,(void*)0},{&p_1375->g_311,&p_1375->g_311,(void*)0},{&p_1375->g_311,&p_1375->g_311,(void*)0},{&p_1375->g_311,&p_1375->g_311,(void*)0},{&p_1375->g_311,&p_1375->g_311,(void*)0},{&p_1375->g_311,&p_1375->g_311,(void*)0}},{{&p_1375->g_311,&p_1375->g_311,(void*)0},{&p_1375->g_311,&p_1375->g_311,(void*)0},{&p_1375->g_311,&p_1375->g_311,(void*)0},{&p_1375->g_311,&p_1375->g_311,(void*)0},{&p_1375->g_311,&p_1375->g_311,(void*)0},{&p_1375->g_311,&p_1375->g_311,(void*)0},{&p_1375->g_311,&p_1375->g_311,(void*)0}},{{&p_1375->g_311,&p_1375->g_311,(void*)0},{&p_1375->g_311,&p_1375->g_311,(void*)0},{&p_1375->g_311,&p_1375->g_311,(void*)0},{&p_1375->g_311,&p_1375->g_311,(void*)0},{&p_1375->g_311,&p_1375->g_311,(void*)0},{&p_1375->g_311,&p_1375->g_311,(void*)0},{&p_1375->g_311,&p_1375->g_311,(void*)0}},{{&p_1375->g_311,&p_1375->g_311,(void*)0},{&p_1375->g_311,&p_1375->g_311,(void*)0},{&p_1375->g_311,&p_1375->g_311,(void*)0},{&p_1375->g_311,&p_1375->g_311,(void*)0},{&p_1375->g_311,&p_1375->g_311,(void*)0},{&p_1375->g_311,&p_1375->g_311,(void*)0},{&p_1375->g_311,&p_1375->g_311,(void*)0}},{{&p_1375->g_311,&p_1375->g_311,(void*)0},{&p_1375->g_311,&p_1375->g_311,(void*)0},{&p_1375->g_311,&p_1375->g_311,(void*)0},{&p_1375->g_311,&p_1375->g_311,(void*)0},{&p_1375->g_311,&p_1375->g_311,(void*)0},{&p_1375->g_311,&p_1375->g_311,(void*)0},{&p_1375->g_311,&p_1375->g_311,(void*)0}},{{&p_1375->g_311,&p_1375->g_311,(void*)0},{&p_1375->g_311,&p_1375->g_311,(void*)0},{&p_1375->g_311,&p_1375->g_311,(void*)0},{&p_1375->g_311,&p_1375->g_311,(void*)0},{&p_1375->g_311,&p_1375->g_311,(void*)0},{&p_1375->g_311,&p_1375->g_311,(void*)0},{&p_1375->g_311,&p_1375->g_311,(void*)0}},{{&p_1375->g_311,&p_1375->g_311,(void*)0},{&p_1375->g_311,&p_1375->g_311,(void*)0},{&p_1375->g_311,&p_1375->g_311,(void*)0},{&p_1375->g_311,&p_1375->g_311,(void*)0},{&p_1375->g_311,&p_1375->g_311,(void*)0},{&p_1375->g_311,&p_1375->g_311,(void*)0},{&p_1375->g_311,&p_1375->g_311,(void*)0}},{{&p_1375->g_311,&p_1375->g_311,(void*)0},{&p_1375->g_311,&p_1375->g_311,(void*)0},{&p_1375->g_311,&p_1375->g_311,(void*)0},{&p_1375->g_311,&p_1375->g_311,(void*)0},{&p_1375->g_311,&p_1375->g_311,(void*)0},{&p_1375->g_311,&p_1375->g_311,(void*)0},{&p_1375->g_311,&p_1375->g_311,(void*)0}}};
                int16_t *l_1021[7][6] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
                int i, j, k;
                for (i = 0; i < 3; i++)
                    l_1011[i] = (void*)0;
                (*p_1375->g_43) = ((safe_div_func_uint64_t_u_u((p_1375->g_516.w ^= (safe_lshift_func_uint16_t_u_s((((**p_1375->g_308) = (*p_1375->g_309)) ^ ((VECTOR(uint32_t, 2))(4294967295UL, 0x18829826L)).odd), 4))), (safe_mod_func_int8_t_s_s((l_22.x >= ((++p_1375->g_672.y) != (((p_1375->g_311 = FAKE_DIVERGE(p_1375->local_0_offset, get_local_id(0), 10)) != ((((VECTOR(int32_t, 4))(p_1375->g_1018.secc5)).w == (safe_lshift_func_int16_t_s_s((p_1375->g_138.y = (-7L)), p_1375->g_924.sa))) & (((safe_rshift_func_uint8_t_u_u((safe_mod_func_uint32_t_u_u(p_1375->g_179.s1, 0xF34DDE72L)), ((VECTOR(uint8_t, 8))(8UL, 0UL, 6UL, 0x72L, (safe_div_func_int64_t_s_s(0x09DE56658887258EL, ((VECTOR(int64_t, 8))((safe_mul_func_uint16_t_u_u(((safe_mul_func_uint16_t_u_u((!(p_1375->g_313.s0 &= (((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 2))(p_1375->g_1034.yw)).xyyy + ((VECTOR(uint64_t, 4))(clz(((VECTOR(uint64_t, 2))(0x7F2671594065F1F4L, 18446744073709551607UL)).yyxy)))))).w > ((p_1375->g_201.y = p_1375->g_383.s6) ^ (safe_mod_func_int16_t_s_s((p_1375->g_343.y >= p_1375->g_513.s6), p_1375->g_935.z)))))), 0x7541L)) || 0x4A5A1D28L), 6L)), 0x63B1A2A423894473L, ((VECTOR(int64_t, 2))((-1L))), (-3L), ((VECTOR(int64_t, 2))((-1L))), (-1L))).s2)), 0x2FL, 0xC8L, 1UL)).s0)) >= p_1375->g_848.sf) > p_1375->g_343.x))) , (*p_1375->g_357)))), 0x98L)))) != 255UL);
                return p_1375->g_148;
            }
        }
        else
        { /* block id: 426 */
            (****p_1375->g_260) = (***p_1375->g_261);
        }
        (*p_1375->g_846) &= (***p_1375->g_262);
        for (p_1375->g_391 = 27; (p_1375->g_391 == 16); p_1375->g_391 = safe_sub_func_uint8_t_u_u(p_1375->g_391, 6))
        { /* block id: 432 */
            int8_t l_1039 = (-3L);
            uint16_t *l_1042 = &l_62;
            int32_t l_1054 = 0x3A4971DAL;
            int16_t **l_1060 = &p_1375->g_568;
            int16_t ***l_1059 = &l_1060;
            int16_t ****l_1058[8][2] = {{&l_1059,&l_1059},{&l_1059,&l_1059},{&l_1059,&l_1059},{&l_1059,&l_1059},{&l_1059,&l_1059},{&l_1059,&l_1059},{&l_1059,&l_1059},{&l_1059,&l_1059}};
            VECTOR(int8_t, 16) l_1071 = (VECTOR(int8_t, 16))(0x2AL, (VECTOR(int8_t, 4))(0x2AL, (VECTOR(int8_t, 2))(0x2AL, 1L), 1L), 1L, 0x2AL, 1L, (VECTOR(int8_t, 2))(0x2AL, 1L), (VECTOR(int8_t, 2))(0x2AL, 1L), 0x2AL, 1L, 0x2AL, 1L);
            VECTOR(uint16_t, 2) l_1088 = (VECTOR(uint16_t, 2))(65535UL, 0x665EL);
            int16_t l_1110 = (-1L);
            VECTOR(uint32_t, 4) l_1113 = (VECTOR(uint32_t, 4))(0xB49F3A1DL, (VECTOR(uint32_t, 2))(0xB49F3A1DL, 4294967291UL), 4294967291UL);
            uint64_t l_1114 = 0x5725E091E8371F8BL;
            int32_t l_1117 = (-1L);
            VECTOR(uint32_t, 16) l_1160 = (VECTOR(uint32_t, 16))(4294967290UL, (VECTOR(uint32_t, 4))(4294967290UL, (VECTOR(uint32_t, 2))(4294967290UL, 0xC62EA43AL), 0xC62EA43AL), 0xC62EA43AL, 4294967290UL, 0xC62EA43AL, (VECTOR(uint32_t, 2))(4294967290UL, 0xC62EA43AL), (VECTOR(uint32_t, 2))(4294967290UL, 0xC62EA43AL), 4294967290UL, 0xC62EA43AL, 4294967290UL, 0xC62EA43AL);
            VECTOR(uint64_t, 16) l_1200 = (VECTOR(uint64_t, 16))(0xD9A82432A84F6745L, (VECTOR(uint64_t, 4))(0xD9A82432A84F6745L, (VECTOR(uint64_t, 2))(0xD9A82432A84F6745L, 0xD7848336584B45D0L), 0xD7848336584B45D0L), 0xD7848336584B45D0L, 0xD9A82432A84F6745L, 0xD7848336584B45D0L, (VECTOR(uint64_t, 2))(0xD9A82432A84F6745L, 0xD7848336584B45D0L), (VECTOR(uint64_t, 2))(0xD9A82432A84F6745L, 0xD7848336584B45D0L), 0xD9A82432A84F6745L, 0xD7848336584B45D0L, 0xD9A82432A84F6745L, 0xD7848336584B45D0L);
            VECTOR(uint32_t, 8) l_1207 = (VECTOR(uint32_t, 8))(0xDF5B9EC6L, (VECTOR(uint32_t, 4))(0xDF5B9EC6L, (VECTOR(uint32_t, 2))(0xDF5B9EC6L, 0xC16F0F73L), 0xC16F0F73L), 0xC16F0F73L, 0xDF5B9EC6L, 0xC16F0F73L);
            VECTOR(uint64_t, 16) l_1214 = (VECTOR(uint64_t, 16))(0xC56D9454DAEF3803L, (VECTOR(uint64_t, 4))(0xC56D9454DAEF3803L, (VECTOR(uint64_t, 2))(0xC56D9454DAEF3803L, 8UL), 8UL), 8UL, 0xC56D9454DAEF3803L, 8UL, (VECTOR(uint64_t, 2))(0xC56D9454DAEF3803L, 8UL), (VECTOR(uint64_t, 2))(0xC56D9454DAEF3803L, 8UL), 0xC56D9454DAEF3803L, 8UL, 0xC56D9454DAEF3803L, 8UL);
            uint64_t **l_1241 = &p_1375->g_669;
            VECTOR(int32_t, 4) l_1249 = (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x13B8EC4BL), 0x13B8EC4BL);
            int16_t l_1272 = 0x6831L;
            int i, j;
            (*p_1375->g_846) = (l_1039 > (((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 8))(0UL, 0x7954L, (--(*l_1042)), (((VECTOR(uint32_t, 4))(0x0F48196DL, 1UL, 0x3AC7ED51L, 4UL)).z , l_1039), 65535UL, ((VECTOR(uint16_t, 2))(l_1045.xx)), 65535UL)) + ((VECTOR(uint16_t, 2))(0x3327L, 65535UL)).yyxxxyyy))).s6 == ((safe_lshift_func_int8_t_s_s((safe_rshift_func_uint16_t_u_s((((l_1061 = ((((VECTOR(uint32_t, 16))(mad_sat(((VECTOR(uint32_t, 2))(l_1050.xy)).xxxxxyxxxxxxyxyx, ((VECTOR(uint32_t, 2))(abs_diff(((VECTOR(int32_t, 2))(p_1375->g_1051.yx)), ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(p_1375->g_1052.s6280e4a6)).s4, 0x6E4CF170L, (((((***p_1375->g_307) == ((void*)0 != l_1053)) ^ (***p_1375->g_262)) == l_1054) >= ((***p_1375->g_307) || (safe_mod_func_int8_t_s_s((*p_1375->g_357), 251UL)))), ((VECTOR(int32_t, 2))((-1L))), l_1057, (-10L), 1L)).s56))).xxyyyyyxxxxxxyxy, ((VECTOR(uint32_t, 16))(0UL))))).s6 != (**p_1375->g_308)) , l_1058[7][1])) != p_1375->g_1063) == (*****l_1053)), 7)), 6)) ^ 65532UL)));
            l_1117 ^= (safe_rshift_func_int16_t_s_s(((safe_div_func_int8_t_s_s(((VECTOR(int8_t, 16))((((VECTOR(int8_t, 16))(add_sat(((VECTOR(int8_t, 8))(p_1375->g_1070.xyxxxyxx)).s6614444213755775, ((VECTOR(int8_t, 4))(l_1071.sd142)).zwzxzxzxwwwzwwxx))) && ((VECTOR(int8_t, 4))(rhadd(((VECTOR(int8_t, 8))(max(((VECTOR(int8_t, 2))((((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))((((VECTOR(int8_t, 2))((((VECTOR(int8_t, 4))(p_1375->g_1072.xxyy)).hi >= ((VECTOR(int8_t, 2))(l_1073.yw))))) && ((VECTOR(int8_t, 2))((((VECTOR(int8_t, 16))((**p_1375->g_356), l_1074, ((VECTOR(int8_t, 2))(sub_sat(((VECTOR(int8_t, 2))(min(((VECTOR(int8_t, 16))(0x4DL, (safe_rshift_func_int16_t_s_u(((VECTOR(int16_t, 2))(mad_sat(((VECTOR(int16_t, 2))(3L, 0x70FBL)), ((VECTOR(int16_t, 2))(0L, 1L)), ((VECTOR(int16_t, 16))(l_1077.yyxxyxxxxxyxxyyy)).s6c))).hi, ((VECTOR(uint16_t, 8))(0x5986L, 0x2CEEL, ((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 16))(0x9472L, 0UL, 0x437BL, p_1375->g_694, ((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 2))(rotate(((VECTOR(uint16_t, 2))(65528UL, 3UL)), ((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(0x9800L, 0xF8C5L)), 0xFA79L, 0x576FL, ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 2))(l_1088.yy)).yxyy + ((VECTOR(uint16_t, 2))(p_1375->g_1089.s15)).xyxx))) & ((VECTOR(uint16_t, 2))(0xA05CL, 0UL)).xyyy))).odd - ((VECTOR(uint16_t, 4))(mad_hi(((VECTOR(uint16_t, 4))(max(((VECTOR(uint16_t, 8))(p_1375->g_1090.yxxxxxxy)).even, (uint16_t)((VECTOR(uint16_t, 8))(p_1375->g_1091.s79669c96)).s0))), ((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 16))(p_1375->g_1094.s45dea25e281e251d)) << ((VECTOR(uint16_t, 16))(16))))).s0e66, ((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 2))(0x8323L, 65534UL)).yxxxyxxx + ((VECTOR(uint16_t, 16))(rotate(((VECTOR(uint16_t, 8))(upsample(((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 4))(hadd(((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 4))(p_1375->g_1103.xxxy)).wwwxwzzw * ((VECTOR(uint8_t, 2))(p_1375->g_1104.zy)).yyxxxxxx))).lo, ((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 8))(((((VECTOR(uint16_t, 16))(l_1107.xyxxxxxxyyxyyxxy)).s9 == l_1088.y) <= (safe_add_func_int32_t_s_s((l_1110 , (safe_mod_func_uint64_t_u_u(((0xB006890F6C42F5A5L < 0L) , l_1113.w), l_1113.w))), (**p_1375->g_308)))), p_1375->g_924.s0, 252UL, p_1375->g_1090.x, 0x2FL, 0xC8L, 0xA7L, 0x48L)), p_1375->g_700, ((VECTOR(uint8_t, 2))(0xC9L)), ((VECTOR(uint8_t, 4))(1UL)), 0xBCL)) + ((VECTOR(uint8_t, 16))(0xC2L))))).s128e))).zxywwywwyyyyyzyy + ((VECTOR(uint8_t, 16))(0xA4L))))) + ((VECTOR(uint8_t, 16))(250UL))))).odd, ((VECTOR(uint8_t, 8))(0xD4L))))).s3566425767361152, ((VECTOR(uint16_t, 16))(0x1150L))))).lo))).odd))).odd))), 1UL, 1UL)))).s52))) + ((VECTOR(uint16_t, 2))(2UL))))) << ((VECTOR(uint16_t, 2))(16))))), p_1375->g_229, (*****l_1053), ((VECTOR(uint16_t, 2))(65531UL)), ((VECTOR(uint16_t, 2))(65535UL)), p_1375->g_1104.z, 0xF136L, 0x497DL, 65530UL)).s44d2 + ((VECTOR(uint16_t, 4))(65535UL))))), 0UL, 0x0648L)).s6)), l_1071.s9, (*p_1375->g_357), 0x23L, (*p_1375->g_357), ((VECTOR(int8_t, 8))(0x57L)), 0x6BL, 0x63L)).s87, ((VECTOR(int8_t, 2))(1L))))), ((VECTOR(int8_t, 2))(0L))))), 0x62L, (-6L), l_1114, (*p_1375->g_357), 0L, 1L, ((VECTOR(int8_t, 2))(0x70L)), 0x3DL, 0x7BL, 4L, 1L)).s80 >= ((VECTOR(int8_t, 2))((-7L))))))))), 1L, 0x43L)).even && ((VECTOR(int8_t, 2))(0x45L))))).yxxxxxxy, ((VECTOR(int8_t, 8))((-2L)))))).odd, ((VECTOR(int8_t, 4))(0x25L))))).yxwzwzyyxwzwzwzz))).s5, p_1375->g_1115.y)) >= 0x04L), l_1116[0][0][0]));
            if ((0xC68AB2250CE5BA36L != 2UL))
            { /* block id: 437 */
                VECTOR(uint8_t, 4) l_1125 = (VECTOR(uint8_t, 4))(0x5DL, (VECTOR(uint8_t, 2))(0x5DL, 0xC4L), 0xC4L);
                VECTOR(uint8_t, 2) l_1128 = (VECTOR(uint8_t, 2))(255UL, 1UL);
                VECTOR(uint8_t, 4) l_1132 = (VECTOR(uint8_t, 4))(0x6AL, (VECTOR(uint8_t, 2))(0x6AL, 0xCEL), 0xCEL);
                uint8_t **l_1145 = (void*)0;
                uint8_t **l_1146 = (void*)0;
                uint8_t **l_1147 = &l_1000[1];
                uint8_t **l_1150[9][7][4] = {{{&l_1149,(void*)0,&l_1149,&l_1149},{&l_1149,(void*)0,&l_1149,&l_1149},{&l_1149,(void*)0,&l_1149,&l_1149},{&l_1149,(void*)0,&l_1149,&l_1149},{&l_1149,(void*)0,&l_1149,&l_1149},{&l_1149,(void*)0,&l_1149,&l_1149},{&l_1149,(void*)0,&l_1149,&l_1149}},{{&l_1149,(void*)0,&l_1149,&l_1149},{&l_1149,(void*)0,&l_1149,&l_1149},{&l_1149,(void*)0,&l_1149,&l_1149},{&l_1149,(void*)0,&l_1149,&l_1149},{&l_1149,(void*)0,&l_1149,&l_1149},{&l_1149,(void*)0,&l_1149,&l_1149},{&l_1149,(void*)0,&l_1149,&l_1149}},{{&l_1149,(void*)0,&l_1149,&l_1149},{&l_1149,(void*)0,&l_1149,&l_1149},{&l_1149,(void*)0,&l_1149,&l_1149},{&l_1149,(void*)0,&l_1149,&l_1149},{&l_1149,(void*)0,&l_1149,&l_1149},{&l_1149,(void*)0,&l_1149,&l_1149},{&l_1149,(void*)0,&l_1149,&l_1149}},{{&l_1149,(void*)0,&l_1149,&l_1149},{&l_1149,(void*)0,&l_1149,&l_1149},{&l_1149,(void*)0,&l_1149,&l_1149},{&l_1149,(void*)0,&l_1149,&l_1149},{&l_1149,(void*)0,&l_1149,&l_1149},{&l_1149,(void*)0,&l_1149,&l_1149},{&l_1149,(void*)0,&l_1149,&l_1149}},{{&l_1149,(void*)0,&l_1149,&l_1149},{&l_1149,(void*)0,&l_1149,&l_1149},{&l_1149,(void*)0,&l_1149,&l_1149},{&l_1149,(void*)0,&l_1149,&l_1149},{&l_1149,(void*)0,&l_1149,&l_1149},{&l_1149,(void*)0,&l_1149,&l_1149},{&l_1149,(void*)0,&l_1149,&l_1149}},{{&l_1149,(void*)0,&l_1149,&l_1149},{&l_1149,(void*)0,&l_1149,&l_1149},{&l_1149,(void*)0,&l_1149,&l_1149},{&l_1149,(void*)0,&l_1149,&l_1149},{&l_1149,(void*)0,&l_1149,&l_1149},{&l_1149,(void*)0,&l_1149,&l_1149},{&l_1149,(void*)0,&l_1149,&l_1149}},{{&l_1149,(void*)0,&l_1149,&l_1149},{&l_1149,(void*)0,&l_1149,&l_1149},{&l_1149,(void*)0,&l_1149,&l_1149},{&l_1149,(void*)0,&l_1149,&l_1149},{&l_1149,(void*)0,&l_1149,&l_1149},{&l_1149,(void*)0,&l_1149,&l_1149},{&l_1149,(void*)0,&l_1149,&l_1149}},{{&l_1149,(void*)0,&l_1149,&l_1149},{&l_1149,(void*)0,&l_1149,&l_1149},{&l_1149,(void*)0,&l_1149,&l_1149},{&l_1149,(void*)0,&l_1149,&l_1149},{&l_1149,(void*)0,&l_1149,&l_1149},{&l_1149,(void*)0,&l_1149,&l_1149},{&l_1149,(void*)0,&l_1149,&l_1149}},{{&l_1149,(void*)0,&l_1149,&l_1149},{&l_1149,(void*)0,&l_1149,&l_1149},{&l_1149,(void*)0,&l_1149,&l_1149},{&l_1149,(void*)0,&l_1149,&l_1149},{&l_1149,(void*)0,&l_1149,&l_1149},{&l_1149,(void*)0,&l_1149,&l_1149},{&l_1149,(void*)0,&l_1149,&l_1149}}};
                int i, j, k;
                (***p_1375->g_262) = (p_1375->g_397 > ((&p_1375->g_1064 != &l_1062) != ((VECTOR(uint8_t, 8))(rhadd(((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 2))(mul_hi(((VECTOR(uint8_t, 2))(p_1375->g_1122.s46)), ((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 4))(mad_hi(((VECTOR(uint8_t, 2))(0x35L, 0x4FL)).yyyx, ((VECTOR(uint8_t, 2))(l_1125.zw)).xxyy, ((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 4))(l_1128.xxyy)) + ((VECTOR(uint8_t, 4))(p_1375->g_1129.xyyx)))))))) * ((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 16))(abs(((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 4))(GROUP_DIVERGE(1, 1), ((VECTOR(uint8_t, 2))(l_1132.zy)), 0x29L)).odd >> ((VECTOR(uint8_t, 2))(8))))).yyxxyyxyxxxyyxyx))).s01 | ((VECTOR(uint8_t, 2))(l_1133.s52))))).xxxx))).ywwzywzz | ((VECTOR(uint8_t, 4))(p_1375->g_1094.sf, ((VECTOR(uint8_t, 4))(255UL, 0x9FL, 0xFCL, 0x00L)).x, 0x97L, 7UL)).wyxwwyyx))).s77))) + ((VECTOR(uint8_t, 16))(abs(((VECTOR(uint8_t, 16))(abs_diff(((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 8))(mad_sat(((VECTOR(uint8_t, 4))(clz(((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 4))(rotate(((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 4))(rotate(((VECTOR(uint8_t, 16))(l_1140.sc8659f46e0560ab4)).sb937, ((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 16))(((((p_1375->g_812[9] , (((VECTOR(uint16_t, 8))(0xC25BL, 1UL, p_1375->g_1094.s6, p_1375->g_66[0][3], ((*l_1042) = ((p_1375->g_1104.z = ((p_1375->g_1148 = ((*l_1147) = &p_1375->g_67)) != (p_1375->g_1151[6][1][0] = l_1149))) != 251UL)), 65528UL, 0xEDD3L, 0x3EB8L)).s0 , l_1152)) == (void*)0) , (-1L)) > (*****l_1053)), ((VECTOR(uint8_t, 4))(0x43L)), (*p_1375->g_1148), 0xAEL, FAKE_DIVERGE(p_1375->global_0_offset, get_global_id(0), 10), 254UL, ((VECTOR(uint8_t, 2))(0x64L)), ((VECTOR(uint8_t, 2))(0x9AL)), ((VECTOR(uint8_t, 2))(5UL)), 0UL)).even - ((VECTOR(uint8_t, 8))(255UL))))) + ((VECTOR(uint8_t, 8))(253UL))))).lo))).yzzwzwzwyxxxzzyy & ((VECTOR(uint8_t, 16))(7UL))))).s3845, ((VECTOR(uint8_t, 4))(0xCCL))))) + ((VECTOR(uint8_t, 4))(0x2DL))))).lo << ((VECTOR(uint8_t, 2))(8))))).yyxx))).xzwwzyxz, ((VECTOR(uint8_t, 8))(0x7FL)), ((VECTOR(uint8_t, 8))(0UL))))) + ((VECTOR(uint8_t, 8))(249UL))))).s5763534017114067, ((VECTOR(uint8_t, 16))(0UL)))))))).sb9))).xyyyxxxy + ((VECTOR(uint8_t, 8))(5UL))))), ((VECTOR(uint8_t, 8))(2UL))))).s2));
            }
            else
            { /* block id: 444 */
                uint32_t l_1163 = 0x29D0EFCBL;
                int32_t ***l_1174 = &l_2[1];
                VECTOR(uint32_t, 16) l_1206 = (VECTOR(uint32_t, 16))(0xE64B6E26L, (VECTOR(uint32_t, 4))(0xE64B6E26L, (VECTOR(uint32_t, 2))(0xE64B6E26L, 0x490BD8ECL), 0x490BD8ECL), 0x490BD8ECL, 0xE64B6E26L, 0x490BD8ECL, (VECTOR(uint32_t, 2))(0xE64B6E26L, 0x490BD8ECL), (VECTOR(uint32_t, 2))(0xE64B6E26L, 0x490BD8ECL), 0xE64B6E26L, 0x490BD8ECL, 0xE64B6E26L, 0x490BD8ECL);
                VECTOR(uint64_t, 8) l_1217 = (VECTOR(uint64_t, 8))(0x0D3F92A09D41D0EDL, (VECTOR(uint64_t, 4))(0x0D3F92A09D41D0EDL, (VECTOR(uint64_t, 2))(0x0D3F92A09D41D0EDL, 18446744073709551614UL), 18446744073709551614UL), 18446744073709551614UL, 0x0D3F92A09D41D0EDL, 18446744073709551614UL);
                int32_t *****l_1262 = (void*)0;
                int32_t l_1263[5] = {0x35BD5016L,0x35BD5016L,0x35BD5016L,0x35BD5016L,0x35BD5016L};
                int i;
                for (p_1375->g_148 = 0; (p_1375->g_148 > 37); p_1375->g_148++)
                { /* block id: 447 */
                    uint32_t **l_1172 = (void*)0;
                    uint32_t ***l_1171 = &l_1172;
                    uint32_t ****l_1173 = &l_1171;
                    VECTOR(uint64_t, 2) l_1187 = (VECTOR(uint64_t, 2))(18446744073709551612UL, 0xD2C5876146A20CBBL);
                    int32_t l_1253 = 1L;
                    int i;
                    if (((**p_1375->g_308) && ((safe_add_func_uint64_t_u_u(((VECTOR(uint64_t, 8))(p_1375->g_1157.xyxxyyyy)).s5, (((*l_1173) = ((safe_sub_func_uint16_t_u_u((l_1160.se , ((l_1039 >= (safe_lshift_func_uint8_t_u_s(l_1163, 0))) > (p_1375->g_618 , l_1164))), (safe_rshift_func_uint8_t_u_u((((VECTOR(uint8_t, 4))(1UL, 0UL, 247UL, 0x47L)).w ^ (safe_add_func_uint16_t_u_u((((0x63L & (*p_1375->g_357)) , (safe_mul_func_uint8_t_u_u(GROUP_DIVERGE(0, 1), (**p_1375->g_356)))) >= 0x3C85654BL), p_1375->g_200.s2))), l_1054)))) , l_1171)) != (void*)0))) | 1L)))
                    { /* block id: 449 */
                        uint32_t l_1175 = 0UL;
                        (****p_1375->g_261) = (l_1174 != (**p_1375->g_260));
                        return l_1175;
                    }
                    else
                    { /* block id: 452 */
                        VECTOR(uint64_t, 8) l_1193 = (VECTOR(uint64_t, 8))(0UL, (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 3UL), 3UL), 3UL, 0UL, 3UL);
                        VECTOR(uint64_t, 16) l_1199 = (VECTOR(uint64_t, 16))(0UL, (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 8UL), 8UL), 8UL, 0UL, 8UL, (VECTOR(uint64_t, 2))(0UL, 8UL), (VECTOR(uint64_t, 2))(0UL, 8UL), 0UL, 8UL, 0UL, 8UL);
                        VECTOR(uint64_t, 16) l_1209 = (VECTOR(uint64_t, 16))(0UL, (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 0x31716F24772137FEL), 0x31716F24772137FEL), 0x31716F24772137FEL, 0UL, 0x31716F24772137FEL, (VECTOR(uint64_t, 2))(0UL, 0x31716F24772137FEL), (VECTOR(uint64_t, 2))(0UL, 0x31716F24772137FEL), 0UL, 0x31716F24772137FEL, 0UL, 0x31716F24772137FEL);
                        VECTOR(uint8_t, 8) l_1237 = (VECTOR(uint8_t, 8))(249UL, (VECTOR(uint8_t, 4))(249UL, (VECTOR(uint8_t, 2))(249UL, 0x7EL), 0x7EL), 0x7EL, 249UL, 0x7EL);
                        uint32_t l_1238 = 0x87F34BA4L;
                        uint64_t ***l_1242 = &l_1241;
                        int32_t ********l_1243 = (void*)0;
                        int32_t *******l_1245 = &p_1375->g_417;
                        int32_t ********l_1244 = &l_1245;
                        uint8_t *l_1261 = &p_1375->g_67;
                        int64_t *l_1265 = (void*)0;
                        int64_t **l_1264 = &l_1265;
                        int32_t l_1266 = 0x07067B98L;
                        int i;
                        (*p_1375->g_846) = (((VECTOR(uint64_t, 4))(safe_clamp_func(VECTOR(uint64_t, 4),VECTOR(uint64_t, 4),((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 4))(add_sat(((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 4))(max(((VECTOR(uint64_t, 4))(18446744073709551606UL, ((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 8))(p_1375->g_1186.s70f3d351)).s1525370277352332 + ((VECTOR(uint64_t, 16))(l_1187.xxyyxxyxxyxyyyyy))))) << ((VECTOR(uint64_t, 16))(64))))) + ((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(sub_sat(((VECTOR(uint64_t, 4))(sub_sat(((VECTOR(uint64_t, 8))(sub_sat(((VECTOR(uint64_t, 4))(p_1375->g_1190.yzxw)).wzzwzyxy, ((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 8))(mad_hi(((VECTOR(uint64_t, 16))(l_1193.s1300141263266710)).even, ((VECTOR(uint64_t, 16))(max(((VECTOR(uint64_t, 4))(mad_sat(((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 2))(0x7BBD228E8AE8B392L, 0x41DDE0249C3CFFD7L)).yyxyxxxxyxyxxxxy + ((VECTOR(uint64_t, 16))(p_1375->g_1198.xyyyxyxxxyyxxyyx))))).s1953 + ((VECTOR(uint64_t, 4))(mul_hi(((VECTOR(uint64_t, 16))(l_1199.s8d27216e99dc6e73)).sf02d, ((VECTOR(uint64_t, 8))(l_1200.s3c4b45fa)).lo)))))), ((VECTOR(uint64_t, 16))(add_sat(((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 16))(sub_sat(((VECTOR(uint64_t, 8))(l_1203.yxxywxzx)).s4512455310270631, ((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 16))(upsample(((VECTOR(uint32_t, 4))(l_1206.s68fa)).zyzywzxzzyzwxzyw, ((VECTOR(uint32_t, 2))(l_1207.s15)).xxyyyyxxxyyxyxyy))) + ((VECTOR(uint64_t, 8))(clz(((VECTOR(uint64_t, 4))(rotate(((VECTOR(uint64_t, 4))(l_1208.yyyz)), ((VECTOR(uint64_t, 4))(l_1209.s65e6))))).zxyywxxy))).s1712371225072437)))))) + ((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 2))(18446744073709551615UL, 0xBB82D25A5A208AE2L)).xyxx * ((VECTOR(uint64_t, 16))(rotate(((VECTOR(uint64_t, 16))(l_1214.se0bd0b4e0395c695)), ((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(clz(((VECTOR(uint64_t, 4))(l_1217.s5235)).lo))), 18446744073709551612UL, 0xEE1579ACC310A1DEL)).yzyxzwywxzwwwxww >> ((VECTOR(uint64_t, 16))(64)))))))).s9370))).zwzxzyxzwyxzwwwx + ((VECTOR(uint64_t, 2))(0xDC91E4C63ACFC674L, 0xCC63A9B231F9FAF8L)).yyxxxxyyxxxyyyxx)))))), ((VECTOR(uint64_t, 4))(0xD49342C8480BB09CL, 0x810E0A2D63A9168DL, 0x3ADC30488554D5A9L, 0xFF7614F31917793FL)).xwwzxwwzyxywyyyw))).s76b7, ((VECTOR(uint64_t, 4))(p_1375->g_1218.sede6))))).yxxyyyxwxzzwwxxz, (uint64_t)l_1187.x))).even, ((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 8))(p_1375->g_1221.wxzzywxz)), 0x0F63396BBF7D5A69L, 0x2066F843AC6F403AL, ((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 2))(add_sat(((VECTOR(uint64_t, 4))(p_1375->g_1222.s1041)).lo, ((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 4))(0xA5650702E9D42B77L, (safe_mul_func_uint16_t_u_u(((safe_mod_func_uint64_t_u_u((l_1209.s3 ^ ((safe_rshift_func_uint8_t_u_u((*****l_1053), ((-4L) | ((safe_rshift_func_int16_t_s_s((-8L), 7)) != ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(mad_hi(((VECTOR(uint8_t, 16))(0xB9L, ((VECTOR(uint8_t, 8))(clz(((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 16))(mad_sat(((VECTOR(uint8_t, 4))(rotate(((VECTOR(uint8_t, 8))(0xE6L, 4UL, ((VECTOR(uint8_t, 4))(safe_clamp_func(VECTOR(uint8_t, 4),uint8_t,((VECTOR(uint8_t, 2))(l_1237.s54)).xxxx, (uint8_t)(((((((void*)0 != (*p_1375->g_1064)) || ((l_997 == (void*)0) , FAKE_DIVERGE(p_1375->local_2_offset, get_local_id(2), 10))) == 0x71F71158L) >= FAKE_DIVERGE(p_1375->group_2_offset, get_group_id(2), 10)) || p_1375->g_67) < (*****l_1053)), (uint8_t)l_1187.y))), 0x1BL, 255UL)).even, ((VECTOR(uint8_t, 4))(255UL))))).yyyzyywyzyyywyxw, ((VECTOR(uint8_t, 16))(254UL)), ((VECTOR(uint8_t, 16))(1UL))))).s2c + ((VECTOR(uint8_t, 2))(0UL))))).xxyxxxyx))), l_1071.sd, 1UL, ((VECTOR(uint8_t, 4))(0x7FL)), 0x4DL)).s00, ((VECTOR(uint8_t, 2))(5UL)), ((VECTOR(uint8_t, 2))(5UL))))), 0xE2L, 255UL)).w)))) & l_1071.s9)), 0x6CEAA3E6955F5649L)) , l_1238), p_1375->g_66[0][8])), 0xBD92820B26A5D275L, 1UL)).xywwxxzz << ((VECTOR(uint64_t, 8))(64))))).s02))).odd, 0xF991CEBE49284622L, 1UL, 18446744073709551614UL, l_1200.s4, 0xA7A7DFFB869A9F5EL, 1UL, 0UL)).hi ^ ((VECTOR(uint64_t, 4))(0UL))))).z, ((VECTOR(uint64_t, 2))(0xA754E3AC37E8E9FFL)), 0xDE8DEF7FE7E64D57L, 0x45113C3516511D80L, 0x4AF65F5C231BE62AL)) + ((VECTOR(uint64_t, 16))(0xFC9C45AC9AA92EBCL))))).odd))).s2723733005345420 + ((VECTOR(uint64_t, 16))(0UL))))).saf | ((VECTOR(uint64_t, 2))(0UL))))).yxxxyyxx))).lo, ((VECTOR(uint64_t, 4))(18446744073709551615UL))))).hi, ((VECTOR(uint64_t, 2))(7UL))))), l_1214.sd, 5UL, 0x81798F2F3E1B13C9L, 0x5074C4FCFA7E1D05L, 0xDC5E1A223884EFCBL, 0xC7366A1A7717D675L)).s5007152410332452 >> ((VECTOR(uint64_t, 16))(0xE36664CBA909E8F2L)))))))).odd ^ ((VECTOR(uint64_t, 8))(8UL))))).s70 ^ ((VECTOR(uint64_t, 2))(3UL))))), 0x8468E4811B06CF09L)), (uint64_t)l_1187.x))) + ((VECTOR(uint64_t, 4))(0UL))))), ((VECTOR(uint64_t, 4))(0xD3BB97D0419F4EA2L))))).ywzyzyzy + ((VECTOR(uint64_t, 8))(9UL))))).hi, ((VECTOR(uint64_t, 4))(0xB7ECD2906D63B89DL)), ((VECTOR(uint64_t, 4))(9UL))))).y == l_1200.s8);
                        l_1253 ^= (safe_mod_func_uint32_t_u_u((((*l_1242) = (p_1375->g_878.x , l_1241)) != (void*)0), (((((*l_1244) = &p_1375->g_417) == (p_1375->g_1246[0] = (void*)0)) < (safe_unary_minus_func_uint64_t_u(0x01BACF623E3A1CAAL))) | (((VECTOR(int32_t, 16))(0x38958491L, 0x5197A8E9L, ((VECTOR(int32_t, 4))((((VECTOR(int32_t, 2))(mul_hi(((VECTOR(int32_t, 4))(0L, ((VECTOR(int32_t, 2))(l_1248.yx)), 1L)).even, ((VECTOR(int32_t, 2))(0x0604FB2CL, 0x5E4862B7L))))).yxxx >= ((VECTOR(int32_t, 16))(l_1249.zyyzxxwxzwwyzxzx)).sb6bf))), ((VECTOR(int32_t, 4))((((VECTOR(int32_t, 2))(8L, 0x54F4E15CL)).yyxx <= ((VECTOR(int32_t, 8))((((VECTOR(int32_t, 4))(p_1375->g_1250.s1204)).yxyxxxxy && ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))((((VECTOR(int32_t, 2))((((VECTOR(int32_t, 16))(l_1251.s63af7cec854d94bb)).s21 | ((VECTOR(int32_t, 16))((((*****p_1375->g_260) , l_1252) == &p_1375->g_495), 2L, (***p_1375->g_262), 0x77E2392AL, l_1071.sb, ((VECTOR(int32_t, 2))((-6L))), (-1L), ((VECTOR(int32_t, 4))(1L)), 0x511F0B47L, ((VECTOR(int32_t, 2))(0x35FCEC9EL)), 0x771573CBL)).sc8))) != ((VECTOR(int32_t, 2))(0x6E513D8DL))))), 0x46B6F56BL, (-1L))).xzwxyxwy))).hi))), (-5L), ((VECTOR(int32_t, 2))(0x074FA8F0L)), l_1039, 0L, 0x6B0D9D79L)).se <= (**p_1375->g_42)))));
                        (***p_1375->g_262) = l_1200.s3;
                        (**p_1375->g_42) = (l_1253 = (safe_mod_func_int32_t_s_s((safe_sub_func_int8_t_s_s(((*l_60) = ((p_1375->g_1258[0][0] && l_1110) || ((((**p_1375->g_308) &= (((*l_1264) = func_90((((*****p_1375->g_260) = (~(l_1263[4] &= (((*****l_1053) , ((VECTOR(int8_t, 2))(hadd(((VECTOR(int8_t, 2))(6L, 5L)), ((VECTOR(int8_t, 16))(max(((VECTOR(int8_t, 2))(rhadd(((VECTOR(int8_t, 4))((((VECTOR(int8_t, 8))(0L, ((0x9E08BC14L > l_1071.s1) , ((((VECTOR(int32_t, 2))(0x27416C96L, 0x1DCB716EL)).even && ((*p_1375->g_357) || (l_1000[4] == l_1261))) ^ (((void*)0 == l_1262) | l_1253))), 0x7EL, (-7L), 1L, 3L, (-1L), 1L)).hi == ((VECTOR(int8_t, 4))(0x75L))))).even, ((VECTOR(int8_t, 2))(0x20L))))).yxxxxyyyxyxyyyyx, (int8_t)(**p_1375->g_356)))).sfd))).lo) , (*p_1375->g_846))))) <= l_1071.s2), p_1375->g_878.z, p_1375)) != l_63[2])) == l_1266) == l_1253))), l_1267.s1)), l_1268)));
                    }
                    --p_1375->g_1269;
                    return p_1375->g_385.z;
                }
                if (l_11)
                    goto lbl_1273;
                l_1272 = (*****p_1375->g_260);
            }
            if ((*p_1375->g_846))
                continue;
        }
    }
    l_1334 = ((p_1375->g_1090.y ^ ((*l_1332) &= (safe_sub_func_uint64_t_u_u((safe_sub_func_int32_t_s_s((l_1278 || ((p_1375->g_311 = l_1279) <= (safe_rshift_func_uint8_t_u_s((safe_unary_minus_func_int16_t_s(((safe_mod_func_int8_t_s_s((((***p_1375->g_307) = (safe_mod_func_int16_t_s_s(((VECTOR(int16_t, 2))((((VECTOR(int16_t, 16))(0x1DD1L, (p_1375->g_1329 = (safe_add_func_int64_t_s_s((-5L), ((safe_sub_func_int16_t_s_s((safe_mod_func_uint16_t_u_u(((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 2))(0xE7DEL, 1UL)).yyyx >> ((VECTOR(uint16_t, 16))(0x0B26L, 8UL, (safe_rshift_func_uint8_t_u_u((0x1688L ^ (((*l_1304) ^= (safe_mod_func_uint64_t_u_u(GROUP_DIVERGE(0, 1), l_1301))) , (p_1375->g_138.w = (((*p_1375->g_261) = (void*)0) != (void*)0)))), 6)), ((VECTOR(uint16_t, 4))(mul_hi(((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 4))(((safe_rshift_func_int8_t_s_s((((l_1323--) , (p_1375->g_338.s3 >= p_1375->g_66[0][8])) && p_1375->g_764.s7), (**p_1375->g_356))) > l_1326), ((VECTOR(uint16_t, 2))(3UL)), 2UL)) + ((VECTOR(uint16_t, 4))(65535UL))))), ((VECTOR(uint16_t, 4))(0UL))))), 0xCB52L, 65535UL, ((VECTOR(uint16_t, 4))(1UL)), ((VECTOR(uint16_t, 2))(0UL)), 0xF59DL)).s650c))).even & ((VECTOR(uint16_t, 2))(0xCB8DL))))).even, l_1327)), l_1328[7][6])) , p_1375->g_878.x)))), p_1375->g_201.x, 0x1A52L, p_1375->g_1330, (-1L), p_1375->g_1103.x, 0L, 1L, 1L, 0L, p_1375->g_878.x, ((VECTOR(int16_t, 2))(0x3E67L)), 0x4DC3L, 0x5379L)).see && ((VECTOR(int16_t, 2))(0x0D33L))))).lo, p_1375->g_1222.s0))) ^ l_1331), (*p_1375->g_357))) ^ p_1375->g_665.s5))), (**p_1375->g_356))))), p_1375->g_34.x)), p_1375->g_383.s7)))) > l_1333);
    (*p_1375->g_42) = (*p_1375->g_42);
    return p_1375->g_1198.y;
}


/* ------------------------------------------ */
/* 
 * reads : p_1375->g_311 p_1375->g_64 p_1375->g_251
 * writes: p_1375->g_311
 */
uint8_t  func_24(int32_t  p_25, uint16_t  p_26, int32_t * p_27, struct S0 * p_1375)
{ /* block id: 404 */
    for (p_1375->g_311 = 0; (p_1375->g_311 > 25); p_1375->g_311++)
    { /* block id: 407 */
        return p_1375->g_64[0];
    }
    return p_1375->g_251.x;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int16_t  func_39(int32_t ** p_40, int32_t ** p_41, struct S0 * p_1375)
{ /* block id: 10 */
    uint32_t l_45 = 3UL;
    return l_45;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes: p_1375->g_4
 */
int32_t ** func_48(int32_t  p_49, int8_t  p_50, uint32_t  p_51, int32_t * p_52, int32_t  p_53, struct S0 * p_1375)
{ /* block id: 16 */
    uint32_t l_70[4];
    VECTOR(int32_t, 16) l_613 = (VECTOR(int32_t, 16))(0x3F4EDC1AL, (VECTOR(int32_t, 4))(0x3F4EDC1AL, (VECTOR(int32_t, 2))(0x3F4EDC1AL, 1L), 1L), 1L, 0x3F4EDC1AL, 1L, (VECTOR(int32_t, 2))(0x3F4EDC1AL, 1L), (VECTOR(int32_t, 2))(0x3F4EDC1AL, 1L), 0x3F4EDC1AL, 1L, 0x3F4EDC1AL, 1L);
    int32_t l_616 = (-6L);
    int32_t **l_617[3][8] = {{&p_1375->g_43,(void*)0,&p_1375->g_43,&p_1375->g_43,(void*)0,&p_1375->g_43,&p_1375->g_43,(void*)0},{&p_1375->g_43,(void*)0,&p_1375->g_43,&p_1375->g_43,(void*)0,&p_1375->g_43,&p_1375->g_43,(void*)0},{&p_1375->g_43,(void*)0,&p_1375->g_43,&p_1375->g_43,(void*)0,&p_1375->g_43,&p_1375->g_43,(void*)0}};
    int16_t l_849 = 0x73E2L;
    uint64_t *l_853 = &p_1375->g_304;
    VECTOR(uint32_t, 8) l_880 = (VECTOR(uint32_t, 8))(0x5DE92332L, (VECTOR(uint32_t, 4))(0x5DE92332L, (VECTOR(uint32_t, 2))(0x5DE92332L, 0xCD3E3375L), 0xCD3E3375L), 0xCD3E3375L, 0x5DE92332L, 0xCD3E3375L);
    VECTOR(int64_t, 2) l_881 = (VECTOR(int64_t, 2))(0x25B24E91D29DA0ECL, 0x67429B1E4D7A470DL);
    VECTOR(int64_t, 4) l_882 = (VECTOR(int64_t, 4))(0x592996BE763132EEL, (VECTOR(int64_t, 2))(0x592996BE763132EEL, 0x510927354FAF3E7BL), 0x510927354FAF3E7BL);
    VECTOR(uint8_t, 16) l_898 = (VECTOR(uint8_t, 16))(0xA4L, (VECTOR(uint8_t, 4))(0xA4L, (VECTOR(uint8_t, 2))(0xA4L, 0UL), 0UL), 0UL, 0xA4L, 0UL, (VECTOR(uint8_t, 2))(0xA4L, 0UL), (VECTOR(uint8_t, 2))(0xA4L, 0UL), 0xA4L, 0UL, 0xA4L, 0UL);
    VECTOR(int8_t, 4) l_929 = (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x75L), 0x75L);
    VECTOR(int8_t, 4) l_932 = (VECTOR(int8_t, 4))(0x5BL, (VECTOR(int8_t, 2))(0x5BL, 0x62L), 0x62L);
    VECTOR(int8_t, 2) l_940 = (VECTOR(int8_t, 2))(0L, (-1L));
    VECTOR(uint32_t, 4) l_957 = (VECTOR(uint32_t, 4))(4294967293UL, (VECTOR(uint32_t, 2))(4294967293UL, 4294967291UL), 4294967291UL);
    int32_t l_968 = 0x4D813209L;
    VECTOR(int8_t, 8) l_989 = (VECTOR(int8_t, 8))(9L, (VECTOR(int8_t, 4))(9L, (VECTOR(int8_t, 2))(9L, 8L), 8L), 8L, 9L, 8L);
    int32_t **l_996 = &p_1375->g_43;
    int i, j;
    for (i = 0; i < 4; i++)
        l_70[i] = 4294967295UL;
    p_1375->g_4[2] = (void*)0;
    return l_996;
}


/* ------------------------------------------ */
/* 
 * reads : p_1375->g_311 p_1375->g_313 p_1375->g_391 p_1375->g_42 p_1375->g_43 p_1375->g_64 p_1375->g_44 p_1375->g_309 p_1375->g_128 p_1375->g_700 p_1375->g_262 p_1375->g_343 p_1375->g_610 p_1375->g_308 p_1375->g_721 p_1375->g_73 p_1375->g_385 p_1375->g_654 p_1375->g_588 p_1375->g_261 p_1375->g_304 p_1375->g_764 p_1375->g_513 p_1375->g_777 p_1375->g_201 p_1375->g_618 p_1375->g_61 p_1375->g_251 p_1375->g_66 p_1375->g_356 p_1375->g_357 p_1375->g_812 p_1375->g_633 p_1375->g_250 p_1375->g_307 p_1375->g_383 p_1375->g_846 p_1375->g_848
 * writes: p_1375->g_311 p_1375->g_44 p_1375->g_128 p_1375->g_694 p_1375->g_695 p_1375->g_357 p_1375->g_64 p_1375->g_304 p_1375->g_610 p_1375->g_61 p_1375->g_313 p_1375->g_138 p_1375->g_812 p_1375->g_338 p_1375->g_73 p_1375->g_700 p_1375->g_4
 */
VECTOR(int32_t, 8)  func_74(int64_t * p_75, int32_t ** p_76, uint32_t  p_77, struct S0 * p_1375)
{ /* block id: 246 */
    uint32_t l_619 = 0xC8B46DC0L;
    int64_t *l_620 = &p_1375->g_64[0];
    int8_t **l_623 = &p_1375->g_357;
    VECTOR(int32_t, 16) l_630 = (VECTOR(int32_t, 16))((-4L), (VECTOR(int32_t, 4))((-4L), (VECTOR(int32_t, 2))((-4L), 0x253E2CE8L), 0x253E2CE8L), 0x253E2CE8L, (-4L), 0x253E2CE8L, (VECTOR(int32_t, 2))((-4L), 0x253E2CE8L), (VECTOR(int32_t, 2))((-4L), 0x253E2CE8L), (-4L), 0x253E2CE8L, (-4L), 0x253E2CE8L);
    VECTOR(int32_t, 2) l_631 = (VECTOR(int32_t, 2))(0x0D6E1501L, (-1L));
    VECTOR(int32_t, 2) l_635 = (VECTOR(int32_t, 2))(0x1D8439C5L, 1L);
    uint32_t **l_642 = &p_1375->g_309;
    int32_t l_648 = 0L;
    VECTOR(uint64_t, 8) l_653 = (VECTOR(uint64_t, 8))(0xD630BB90D432C2B1L, (VECTOR(uint64_t, 4))(0xD630BB90D432C2B1L, (VECTOR(uint64_t, 2))(0xD630BB90D432C2B1L, 18446744073709551615UL), 18446744073709551615UL), 18446744073709551615UL, 0xD630BB90D432C2B1L, 18446744073709551615UL);
    VECTOR(int8_t, 16) l_666 = (VECTOR(int8_t, 16))(0x1BL, (VECTOR(int8_t, 4))(0x1BL, (VECTOR(int8_t, 2))(0x1BL, 4L), 4L), 4L, 0x1BL, 4L, (VECTOR(int8_t, 2))(0x1BL, 4L), (VECTOR(int8_t, 2))(0x1BL, 4L), 0x1BL, 4L, 0x1BL, 4L);
    VECTOR(uint16_t, 8) l_716 = (VECTOR(uint16_t, 8))(4UL, (VECTOR(uint16_t, 4))(4UL, (VECTOR(uint16_t, 2))(4UL, 9UL), 9UL), 9UL, 4UL, 9UL);
    int32_t ***l_740[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    VECTOR(int8_t, 8) l_741 = (VECTOR(int8_t, 8))(0x5CL, (VECTOR(int8_t, 4))(0x5CL, (VECTOR(int8_t, 2))(0x5CL, 0x03L), 0x03L), 0x03L, 0x5CL, 0x03L);
    int32_t *******l_742 = &p_1375->g_495;
    int64_t l_747 = 0L;
    VECTOR(uint32_t, 16) l_765 = (VECTOR(uint32_t, 16))(0x99B8B30AL, (VECTOR(uint32_t, 4))(0x99B8B30AL, (VECTOR(uint32_t, 2))(0x99B8B30AL, 0xAAE904B0L), 0xAAE904B0L), 0xAAE904B0L, 0x99B8B30AL, 0xAAE904B0L, (VECTOR(uint32_t, 2))(0x99B8B30AL, 0xAAE904B0L), (VECTOR(uint32_t, 2))(0x99B8B30AL, 0xAAE904B0L), 0x99B8B30AL, 0xAAE904B0L, 0x99B8B30AL, 0xAAE904B0L);
    int64_t l_773 = (-1L);
    VECTOR(int64_t, 4) l_778 = (VECTOR(int64_t, 4))((-2L), (VECTOR(int64_t, 2))((-2L), 0x1E7907D41D075E59L), 0x1E7907D41D075E59L);
    int16_t ***l_803 = (void*)0;
    VECTOR(int8_t, 16) l_836 = (VECTOR(int8_t, 16))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 9L), 9L), 9L, (-1L), 9L, (VECTOR(int8_t, 2))((-1L), 9L), (VECTOR(int8_t, 2))((-1L), 9L), (-1L), 9L, (-1L), 9L);
    int32_t l_843 = 5L;
    int8_t l_845 = (-1L);
    int i;
    if (((p_77 == (~l_619)) == ((&p_1375->g_64[1] != l_620) , ((safe_add_func_int64_t_s_s((0x62704C19BA6165F1L == l_619), l_619)) < (((void*)0 == l_623) != l_619)))))
    { /* block id: 247 */
        VECTOR(int32_t, 2) l_634 = (VECTOR(int32_t, 2))(9L, 0x33A972CAL);
        VECTOR(int32_t, 4) l_636 = (VECTOR(int32_t, 4))(0x7A9EAEF1L, (VECTOR(int32_t, 2))(0x7A9EAEF1L, 0x4236E6ECL), 0x4236E6ECL);
        uint64_t **l_679 = &p_1375->g_669;
        int8_t *l_701 = &p_1375->g_61;
        VECTOR(uint16_t, 4) l_711 = (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0xC0E1L), 0xC0E1L);
        uint32_t ***l_719 = (void*)0;
        uint32_t ***l_720 = &l_642;
        int i;
        for (p_1375->g_311 = (-27); (p_1375->g_311 <= 54); ++p_1375->g_311)
        { /* block id: 250 */
            VECTOR(int32_t, 4) l_626 = (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x6117D1DAL), 0x6117D1DAL);
            VECTOR(int32_t, 16) l_627 = (VECTOR(int32_t, 16))((-10L), (VECTOR(int32_t, 4))((-10L), (VECTOR(int32_t, 2))((-10L), 0x367A771CL), 0x367A771CL), 0x367A771CL, (-10L), 0x367A771CL, (VECTOR(int32_t, 2))((-10L), 0x367A771CL), (VECTOR(int32_t, 2))((-10L), 0x367A771CL), (-10L), 0x367A771CL, (-10L), 0x367A771CL);
            VECTOR(int32_t, 16) l_628 = (VECTOR(int32_t, 16))(0x7FC401F4L, (VECTOR(int32_t, 4))(0x7FC401F4L, (VECTOR(int32_t, 2))(0x7FC401F4L, 0x5F5241A9L), 0x5F5241A9L), 0x5F5241A9L, 0x7FC401F4L, 0x5F5241A9L, (VECTOR(int32_t, 2))(0x7FC401F4L, 0x5F5241A9L), (VECTOR(int32_t, 2))(0x7FC401F4L, 0x5F5241A9L), 0x7FC401F4L, 0x5F5241A9L, 0x7FC401F4L, 0x5F5241A9L);
            VECTOR(int32_t, 8) l_632 = (VECTOR(int32_t, 8))(0x05D5BF0AL, (VECTOR(int32_t, 4))(0x05D5BF0AL, (VECTOR(int32_t, 2))(0x05D5BF0AL, (-7L)), (-7L)), (-7L), 0x05D5BF0AL, (-7L));
            int32_t ******l_637 = &p_1375->g_260;
            int32_t *****l_639 = &p_1375->g_261;
            int32_t ******l_638 = &l_639;
            int16_t ***l_645 = (void*)0;
            int16_t **l_647[1];
            int16_t ***l_646 = &l_647[0];
            uint64_t *l_668 = (void*)0;
            uint64_t **l_667[4][7][6] = {{{&l_668,&l_668,&l_668,&l_668,&l_668,&l_668},{&l_668,&l_668,&l_668,&l_668,&l_668,&l_668},{&l_668,&l_668,&l_668,&l_668,&l_668,&l_668},{&l_668,&l_668,&l_668,&l_668,&l_668,&l_668},{&l_668,&l_668,&l_668,&l_668,&l_668,&l_668},{&l_668,&l_668,&l_668,&l_668,&l_668,&l_668},{&l_668,&l_668,&l_668,&l_668,&l_668,&l_668}},{{&l_668,&l_668,&l_668,&l_668,&l_668,&l_668},{&l_668,&l_668,&l_668,&l_668,&l_668,&l_668},{&l_668,&l_668,&l_668,&l_668,&l_668,&l_668},{&l_668,&l_668,&l_668,&l_668,&l_668,&l_668},{&l_668,&l_668,&l_668,&l_668,&l_668,&l_668},{&l_668,&l_668,&l_668,&l_668,&l_668,&l_668},{&l_668,&l_668,&l_668,&l_668,&l_668,&l_668}},{{&l_668,&l_668,&l_668,&l_668,&l_668,&l_668},{&l_668,&l_668,&l_668,&l_668,&l_668,&l_668},{&l_668,&l_668,&l_668,&l_668,&l_668,&l_668},{&l_668,&l_668,&l_668,&l_668,&l_668,&l_668},{&l_668,&l_668,&l_668,&l_668,&l_668,&l_668},{&l_668,&l_668,&l_668,&l_668,&l_668,&l_668},{&l_668,&l_668,&l_668,&l_668,&l_668,&l_668}},{{&l_668,&l_668,&l_668,&l_668,&l_668,&l_668},{&l_668,&l_668,&l_668,&l_668,&l_668,&l_668},{&l_668,&l_668,&l_668,&l_668,&l_668,&l_668},{&l_668,&l_668,&l_668,&l_668,&l_668,&l_668},{&l_668,&l_668,&l_668,&l_668,&l_668,&l_668},{&l_668,&l_668,&l_668,&l_668,&l_668,&l_668},{&l_668,&l_668,&l_668,&l_668,&l_668,&l_668}}};
            uint8_t *l_699 = (void*)0;
            int i, j, k;
            for (i = 0; i < 1; i++)
                l_647[i] = &p_1375->g_568;
            l_648 |= ((VECTOR(int32_t, 16))(max(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))((((VECTOR(int32_t, 8))(hadd(((VECTOR(int32_t, 2))(0x2F841B84L, 0x3AAC678CL)).xxxyyxyx, ((VECTOR(int32_t, 4))(l_626.xxxx)).wzwywyzw))).s22 >= ((VECTOR(int32_t, 8))(mad_sat(((VECTOR(int32_t, 2))(l_627.sab)).xxxxyyxx, ((VECTOR(int32_t, 2))(l_628.s9d)).xxyxyyxx, ((VECTOR(int32_t, 16))((((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(0x677E72CAL, 0x36E59546L)), 0L, 0x3AD19F2FL)).xwzywyzzwwyyyywy ^ ((VECTOR(int32_t, 4))(p_1375->g_629.s3531)).xwxxzxxyxyywwyzw))).odd))).s15))), 0x27FDC753L, 0x3D1D946EL)).yxyxzyxxxzyxxwxx, ((VECTOR(int32_t, 16))((((VECTOR(int32_t, 16))(l_630.s58b727c16976496a)) && ((VECTOR(int32_t, 8))((((VECTOR(int32_t, 2))(min(((VECTOR(int32_t, 2))(0x26248207L, 0x65CA7370L)), ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(l_631.yyyxxyxy)).s4, ((VECTOR(int32_t, 2))((((VECTOR(int32_t, 4))((!((VECTOR(int32_t, 2))(0L, 1L)).yxyx))).odd == ((VECTOR(int32_t, 8))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 16))(l_632.s3453551565017737)).even, ((VECTOR(int32_t, 8))((((VECTOR(int32_t, 2))(0L, 6L)).xxyyxxyy && ((VECTOR(int32_t, 2))(p_1375->g_633.yx)).yyxxxyxy))), ((VECTOR(int32_t, 16))(l_634.yxyxyyxyxyxxxyxy)).lo))).s51))), 4L)).lo))).yxxyyxyx != ((VECTOR(int32_t, 4))((((VECTOR(int32_t, 16))(hadd(((VECTOR(int32_t, 16))(l_635.yxyyxxxxxxyxxxyy)), ((VECTOR(int32_t, 4))((((VECTOR(int32_t, 16))((((VECTOR(int32_t, 16))(l_636.xzwzwxxwywzwyyww)) ^ ((VECTOR(int32_t, 8))((((VECTOR(int32_t, 8))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 2))(0x0D169E90L, 0x6747ACFCL)).xyyyxyyx, ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(add_sat(((VECTOR(int32_t, 4))((((VECTOR(int32_t, 4))(sub_sat(((VECTOR(int32_t, 2))(0x658850FCL, 0x556634C2L)).xyxx, ((VECTOR(int32_t, 16))((((VECTOR(int32_t, 8))((((VECTOR(int32_t, 4))(mad_sat(((VECTOR(int32_t, 16))(1L, 0x1673E56DL, (***p_1375->g_262), 0x68F50EF0L, ((*p_75) < (((*l_646) = ((((0x21L > (((*l_637) = (void*)0) == ((*l_638) = (void*)0))) ^ ((safe_sub_func_uint32_t_u_u((l_642 != &p_1375->g_309), (safe_rshift_func_uint8_t_u_u(p_1375->g_588.x, 1)))) , (((l_631.x != l_636.y) || GROUP_DIVERGE(1, 1)) ^ p_77))) & (-1L)) , (void*)0)) == (void*)0)), (*p_1375->g_43), 1L, 0L, ((VECTOR(int32_t, 2))(0L)), 0x5D2DE04AL, 0x01C143ACL, (-3L), (-1L), 5L, 0x651FAF23L)).sc2a2, ((VECTOR(int32_t, 4))(0x4DC22A92L)), ((VECTOR(int32_t, 4))((-8L)))))).wxzzzyzz && ((VECTOR(int32_t, 8))((-1L)))))).s1425324057325117 != ((VECTOR(int32_t, 16))((-2L)))))).sa10b))) < ((VECTOR(int32_t, 4))(0x00A95D04L))))).hi, ((VECTOR(int32_t, 2))(0x1C7755B8L))))), 0x71CADE01L, 0x7F71F847L)).xxywxywy, ((VECTOR(int32_t, 8))(2L))))) | ((VECTOR(int32_t, 8))(0x196760F5L))))).s7475737423211000))).s4bc4 && ((VECTOR(int32_t, 4))((-1L)))))).xxwxzxyyyyzzyxwx))).sf96b || ((VECTOR(int32_t, 4))(0x51A10A62L))))).wwzxxxzz))).s2367437366147533)))))).sa;
            (**p_1375->g_42) = (0L == (safe_mul_func_uint16_t_u_u((safe_lshift_func_int8_t_s_u((((VECTOR(uint64_t, 16))(18446744073709551615UL, ((VECTOR(uint64_t, 2))(0UL, 18446744073709551615UL)), ((VECTOR(uint64_t, 4))(l_653.s7566)), p_77, 0x032EC2BB695628DEL, ((VECTOR(uint64_t, 2))(p_1375->g_654.yx)).hi, (safe_mul_func_uint8_t_u_u((((safe_sub_func_uint16_t_u_u((safe_add_func_int32_t_s_s((safe_mul_func_int16_t_s_s((p_75 != p_75), ((((safe_lshift_func_int8_t_s_u(((VECTOR(int8_t, 4))((((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(mul_hi(((VECTOR(int8_t, 4))(p_1375->g_665.s5273)).hi, ((VECTOR(int8_t, 4))((-8L), 0x28L, 0x6EL, (-2L))).even))), (-2L), 1L)) && ((VECTOR(int8_t, 8))(l_666.s54ef4b92)).odd))).y, 5)) , p_75) == (p_1375->g_669 = (void*)0)) && (safe_div_func_uint8_t_u_u(((VECTOR(uint8_t, 16))(p_1375->g_672.xyxyxyyyyxyxxyyx)).sf, (safe_add_func_uint64_t_u_u(((VECTOR(uint64_t, 4))(l_648, ((~(((((safe_mul_func_int16_t_s_s((+(safe_lshift_func_int16_t_s_s(p_77, 8))), ((&p_1375->g_669 != l_679) == 0xD0994FC7E77DA2F5L))) > l_653.s4) < 0x7C29L) > p_77) <= 9L)) , l_653.s5), 0xD51C38375A2C0974L, 1UL)).z, p_77))))))), (-2L))), p_77)) <= GROUP_DIVERGE(2, 1)) , p_77), 0L)), l_636.z, ((VECTOR(uint64_t, 2))(18446744073709551614UL)), 18446744073709551606UL, 8UL)).s6 >= p_1375->g_313.s3), p_1375->g_391)), FAKE_DIVERGE(p_1375->global_1_offset, get_global_id(1), 10))));
            if (l_634.y)
                break;
            for (p_1375->g_128 = (-7); (p_1375->g_128 >= 17); ++p_1375->g_128)
            { /* block id: 260 */
                uint16_t *l_696[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                int32_t l_697 = 0x4DA95899L;
                int32_t l_702 = 0x3D35EF40L;
                int i;
                l_636.y = (l_630.s8 = ((*p_1375->g_43) = 0x0904E505L));
                l_634.y = ((*p_1375->g_610) = (l_702 ^= (safe_lshift_func_uint8_t_u_s((safe_lshift_func_uint16_t_u_s(((p_1375->g_391 > (safe_div_func_uint8_t_u_u(((((((*l_623) = ((0x1EL | (safe_mul_func_int8_t_s_s((l_635.x = ((*p_75) >= (((p_77--) < (((safe_lshift_func_uint16_t_u_u((l_697 = (l_631.x & (p_1375->g_695 = (p_1375->g_694 = p_1375->g_44)))), (safe_unary_minus_func_uint64_t_u(l_630.sf)))) | (l_699 == &p_1375->g_67)) & (*p_1375->g_309))) | 0x56L))), p_1375->g_700))) , l_701)) == l_701) , p_1375->g_64[1]) , l_697) || (***p_1375->g_262)), p_1375->g_343.y))) < 0x613EAAEEL), l_634.x)), l_619))));
                if (l_631.y)
                    break;
                (*p_1375->g_43) = p_77;
            }
        }
        (***p_1375->g_262) ^= (!(((**p_1375->g_308) >= p_77) > ((VECTOR(uint16_t, 16))(hadd(((VECTOR(uint16_t, 4))(max(((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 8))(0x048AL, ((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 4))(0xACB4L, 1UL, 0xC19AL, 65531UL)) << ((VECTOR(uint16_t, 4))(16))))) + ((VECTOR(uint16_t, 8))(p_77, 0x8FDAL, 0x4510L, 3UL, 65531UL, 0x6B07L, 0xAC95L, 1UL)).even))).hi + ((VECTOR(uint16_t, 16))(mad_hi(((VECTOR(uint16_t, 2))(l_711.wx)).yyxyxyxxxxyxxyyy, ((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 16))(5UL, ((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 8))(mad_sat(((VECTOR(uint16_t, 2))(l_716.s03)).xyxxxxxy, ((VECTOR(uint16_t, 4))(0x34C4L, (safe_sub_func_uint32_t_u_u((((((((((*l_720) = l_642) != &p_1375->g_309) >= ((VECTOR(int64_t, 8))(rhadd(((VECTOR(int64_t, 16))(p_1375->g_721.yyyxyyyyxyyyxxyx)).hi, ((VECTOR(int64_t, 2))(hadd(((VECTOR(int64_t, 2))(mul_hi(((VECTOR(int64_t, 2))((-10L), 0L)), ((VECTOR(int64_t, 16))((-4L), ((VECTOR(int64_t, 4))((safe_mul_func_uint16_t_u_u(((((safe_lshift_func_int16_t_s_u((safe_sub_func_int16_t_s_s((((((safe_div_func_uint8_t_u_u(p_77, ((safe_lshift_func_int8_t_s_u((safe_add_func_uint64_t_u_u(18446744073709551613UL, ((*l_620) = (safe_rshift_func_uint16_t_u_u(p_77, (l_631.x < l_711.w)))))), p_1375->g_73.s2)) && l_648))) <= p_1375->g_385.x) , p_1375->g_654.x) || FAKE_DIVERGE(p_1375->local_2_offset, get_local_id(2), 10)) != l_711.x), p_1375->g_588.y)), 4)) | 0x887065BE59F163E4L) && (*p_75)) < l_636.w), l_630.sc)), 2L, 0L, 4L)).z, ((VECTOR(int64_t, 8))(0x1733CB08700A74EFL)), ((VECTOR(int64_t, 4))(0x5D7AB44ADA3588EFL)), 9L, 0L)).scc))), ((VECTOR(int64_t, 2))(0x5C913E1B20F250D4L))))).xxxyxyxx))).s6) < 0x05L) >= FAKE_DIVERGE(p_1375->local_0_offset, get_local_id(0), 10)) < 255UL) | p_77) , FAKE_DIVERGE(p_1375->group_1_offset, get_group_id(1), 10)), FAKE_DIVERGE(p_1375->group_1_offset, get_group_id(1), 10))), 0xE7B4L, 0xD67BL)).xzzwywww, ((VECTOR(uint16_t, 8))(0xFD9CL))))).s7265130357260642 & ((VECTOR(uint16_t, 16))(0x61A9L))))).odd + ((VECTOR(uint16_t, 8))(0UL))))), ((VECTOR(uint16_t, 2))(65535UL)), l_711.y, ((VECTOR(uint16_t, 4))(0x1ED3L)))).s79 | ((VECTOR(uint16_t, 2))(0xCFDAL))))).yyyy + ((VECTOR(uint16_t, 4))(65535UL))))).zxxzwwxyyxzxwzzz, ((VECTOR(uint16_t, 16))(1UL))))).s57))), 0x2E8DL, 1UL, ((VECTOR(uint16_t, 2))(65535UL)), 65531UL)) + ((VECTOR(uint16_t, 8))(5UL))))).odd, ((VECTOR(uint16_t, 4))(1UL))))).wzwxwzwxywxxyyzw, ((VECTOR(uint16_t, 16))(65535UL))))).sc));
    }
    else
    { /* block id: 280 */
        VECTOR(int32_t, 2) l_736 = (VECTOR(int32_t, 2))(5L, (-1L));
        int i;
        return l_736.xyxxyyyx;
    }
    for (l_619 = 6; (l_619 != 44); l_619++)
    { /* block id: 285 */
        int32_t *l_739 = (void*)0;
        l_739 = (void*)0;
        (****p_1375->g_261) = l_631.x;
    }
    if ((&p_76 == l_740[5]))
    { /* block id: 289 */
        int64_t l_743 = 0L;
        l_743 = (((VECTOR(int8_t, 8))(l_741.s73535654)).s7 || (&p_1375->g_309 != (((void*)0 == l_742) , l_642)));
    }
    else
    { /* block id: 291 */
        int64_t l_744 = (-8L);
        uint64_t *l_748 = (void*)0;
        uint64_t *l_749 = &p_1375->g_304;
        int64_t l_750[10] = {0x26D185428F4FBE2DL,4L,0x3D411FB5BC9AB408L,4L,0x26D185428F4FBE2DL,0x26D185428F4FBE2DL,4L,0x3D411FB5BC9AB408L,4L,0x26D185428F4FBE2DL};
        int32_t l_752 = 0L;
        int32_t l_758[5][6] = {{0x772806AFL,0x0EBB45B9L,0x1E4077D4L,0L,0x7DF5447BL,0x772806AFL},{0x772806AFL,0x0EBB45B9L,0x1E4077D4L,0L,0x7DF5447BL,0x772806AFL},{0x772806AFL,0x0EBB45B9L,0x1E4077D4L,0L,0x7DF5447BL,0x772806AFL},{0x772806AFL,0x0EBB45B9L,0x1E4077D4L,0L,0x7DF5447BL,0x772806AFL},{0x772806AFL,0x0EBB45B9L,0x1E4077D4L,0L,0x7DF5447BL,0x772806AFL}};
        VECTOR(uint64_t, 4) l_776 = (VECTOR(uint64_t, 4))(0xFF33CCCD760072ABL, (VECTOR(uint64_t, 2))(0xFF33CCCD760072ABL, 0xD62B185F8807B0EFL), 0xD62B185F8807B0EFL);
        VECTOR(int64_t, 16) l_779 = (VECTOR(int64_t, 16))(5L, (VECTOR(int64_t, 4))(5L, (VECTOR(int64_t, 2))(5L, 0x698A2B0B61518AC2L), 0x698A2B0B61518AC2L), 0x698A2B0B61518AC2L, 5L, 0x698A2B0B61518AC2L, (VECTOR(int64_t, 2))(5L, 0x698A2B0B61518AC2L), (VECTOR(int64_t, 2))(5L, 0x698A2B0B61518AC2L), 5L, 0x698A2B0B61518AC2L, 5L, 0x698A2B0B61518AC2L);
        int32_t ******l_785 = &p_1375->g_260;
        int32_t *l_814[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
        int32_t l_822 = 8L;
        uint32_t l_831 = 4294967295UL;
        uint32_t *l_844 = &p_1375->g_700;
        int i, j;
        if (((l_744 || (-1L)) != ((safe_mul_func_int16_t_s_s((((*l_749) |= l_747) || (l_744 , (p_77 == 0x9AL))), l_744)) , ((l_750[4] >= (GROUP_DIVERGE(2, 1) , ((-1L) > p_77))) , l_744))))
        { /* block id: 293 */
            int8_t l_751 = 0x0CL;
            int32_t l_753 = 2L;
            int32_t l_754 = 0x2E76EA7CL;
            int32_t l_755 = 4L;
            int32_t l_756 = 0x0A594D8EL;
            int32_t l_757 = 0x16FCC7AAL;
            uint32_t l_759 = 1UL;
            VECTOR(uint32_t, 8) l_766 = (VECTOR(uint32_t, 8))(0xFC4E7F05L, (VECTOR(uint32_t, 4))(0xFC4E7F05L, (VECTOR(uint32_t, 2))(0xFC4E7F05L, 0x2DA010DAL), 0x2DA010DAL), 0x2DA010DAL, 0xFC4E7F05L, 0x2DA010DAL);
            VECTOR(int64_t, 2) l_780 = (VECTOR(int64_t, 2))(8L, 0x51E54D72DA54A1A2L);
            int i;
            l_759++;
            l_754 |= (safe_mod_func_int8_t_s_s(((****p_1375->g_261) < ((VECTOR(uint32_t, 16))(abs_diff(((VECTOR(uint32_t, 8))(p_1375->g_764.s0db7d448)).s5642145524115567, ((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 4))(l_765.saff9)) ^ ((VECTOR(uint32_t, 4))(l_766.s7510))))).xywzzyyyywwxzxwz))).s0), (safe_sub_func_int8_t_s_s((safe_add_func_int64_t_s_s(((((safe_lshift_func_uint8_t_u_u(l_773, 6)) | (safe_add_func_int32_t_s_s(((void*)0 == &p_1375->g_618), (((VECTOR(uint64_t, 2))((-((VECTOR(uint64_t, 2))(l_776.zy))))).lo >= ((VECTOR(int64_t, 16))(sub_sat(((VECTOR(int64_t, 2))(sub_sat(((VECTOR(int64_t, 2))(sub_sat(((VECTOR(int64_t, 4))(p_1375->g_513.s3, 1L, 0x6844A9011B5A0577L, 5L)).even, ((VECTOR(int64_t, 8))(mul_hi(((VECTOR(int64_t, 2))(p_1375->g_777.s16)).xxxyxyxy, ((VECTOR(int64_t, 2))((((VECTOR(int64_t, 2))(sub_sat(((VECTOR(int64_t, 8))((((VECTOR(int64_t, 2))((((VECTOR(int64_t, 8))((((VECTOR(int64_t, 2))(mul_hi(((VECTOR(int64_t, 8))((((VECTOR(int64_t, 16))(l_778.xxxwwwwwwwzyxzyw)).odd ^ ((VECTOR(int64_t, 16))(l_779.s70976ee3094d6c8c)).even))).s44, ((VECTOR(int64_t, 16))((((VECTOR(int64_t, 2))((-5L), 5L)).yyyyyxyyxxxxyxxx != ((VECTOR(int64_t, 8))((-3L), 0x2251FE75624F76C2L, ((((VECTOR(int64_t, 8))(l_780.yxyxxxxx)).s4 != (((safe_lshift_func_int8_t_s_u((p_77 < (safe_add_func_uint64_t_u_u((l_785 != (void*)0), ((safe_mod_func_uint16_t_u_u(0xE93FL, 0xAEEFL)) , (-10L))))), 7)) || p_77) | p_1375->g_201.y)) ^ p_1375->g_513.sf), 0x6EFB561D8546A6DFL, 0x79583F3FF72E5469L, p_1375->g_618, 5L, 0x75E90A9FAA7D95C9L)).s4766605357500347))).s6d))).xyyyyxxy < ((VECTOR(int64_t, 8))(0L))))).s16 || ((VECTOR(int64_t, 2))((-1L)))))).yyyxxyxx && ((VECTOR(int64_t, 8))(4L))))).s16, ((VECTOR(int64_t, 2))(0x2D53C389FAD6DE8CL))))) > ((VECTOR(int64_t, 2))(2L))))).yxyxyxxy))).s40))), ((VECTOR(int64_t, 2))((-1L)))))).yyxxyxyyyyxxyxxx, ((VECTOR(int64_t, 16))(0x5043EC3087B692C8L))))).sa)))) & p_1375->g_513.s2) & p_77), (*p_75))), p_1375->g_385.w))));
            p_1375->g_610 = (***p_1375->g_261);
        }
        else
        { /* block id: 297 */
            int8_t l_799 = 0x00L;
            int32_t *l_817 = &l_648;
            int32_t l_830[7];
            int i;
            for (i = 0; i < 7; i++)
                l_830[i] = 0L;
            for (p_1375->g_61 = 0; (p_1375->g_61 == (-27)); p_1375->g_61--)
            { /* block id: 300 */
                int16_t ***l_801 = (void*)0;
                int16_t **l_805[6][5][3] = {{{(void*)0,&p_1375->g_568,&p_1375->g_568},{(void*)0,&p_1375->g_568,&p_1375->g_568},{(void*)0,&p_1375->g_568,&p_1375->g_568},{(void*)0,&p_1375->g_568,&p_1375->g_568},{(void*)0,&p_1375->g_568,&p_1375->g_568}},{{(void*)0,&p_1375->g_568,&p_1375->g_568},{(void*)0,&p_1375->g_568,&p_1375->g_568},{(void*)0,&p_1375->g_568,&p_1375->g_568},{(void*)0,&p_1375->g_568,&p_1375->g_568},{(void*)0,&p_1375->g_568,&p_1375->g_568}},{{(void*)0,&p_1375->g_568,&p_1375->g_568},{(void*)0,&p_1375->g_568,&p_1375->g_568},{(void*)0,&p_1375->g_568,&p_1375->g_568},{(void*)0,&p_1375->g_568,&p_1375->g_568},{(void*)0,&p_1375->g_568,&p_1375->g_568}},{{(void*)0,&p_1375->g_568,&p_1375->g_568},{(void*)0,&p_1375->g_568,&p_1375->g_568},{(void*)0,&p_1375->g_568,&p_1375->g_568},{(void*)0,&p_1375->g_568,&p_1375->g_568},{(void*)0,&p_1375->g_568,&p_1375->g_568}},{{(void*)0,&p_1375->g_568,&p_1375->g_568},{(void*)0,&p_1375->g_568,&p_1375->g_568},{(void*)0,&p_1375->g_568,&p_1375->g_568},{(void*)0,&p_1375->g_568,&p_1375->g_568},{(void*)0,&p_1375->g_568,&p_1375->g_568}},{{(void*)0,&p_1375->g_568,&p_1375->g_568},{(void*)0,&p_1375->g_568,&p_1375->g_568},{(void*)0,&p_1375->g_568,&p_1375->g_568},{(void*)0,&p_1375->g_568,&p_1375->g_568},{(void*)0,&p_1375->g_568,&p_1375->g_568}}};
                int16_t ***l_804 = &l_805[4][0][2];
                uint64_t l_811 = 0xA9C8568B4113AAD2L;
                VECTOR(uint32_t, 4) l_825 = (VECTOR(uint32_t, 4))(0x0BBFD6D8L, (VECTOR(uint32_t, 2))(0x0BBFD6D8L, 0xFFB770CEL), 0xFFB770CEL);
                int32_t *l_826 = &l_758[1][4];
                VECTOR(int32_t, 4) l_829 = (VECTOR(int32_t, 4))(0x3DC8BE65L, (VECTOR(int32_t, 2))(0x3DC8BE65L, 0x5CFF1711L), 0x5CFF1711L);
                int i, j, k;
                for (l_648 = 24; (l_648 <= 26); l_648++)
                { /* block id: 303 */
                    uint32_t l_796 = 1UL;
                    uint16_t *l_800[7] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                    int16_t ****l_802 = &l_801;
                    VECTOR(uint8_t, 2) l_808 = (VECTOR(uint8_t, 2))(0UL, 0x2AL);
                    int i;
                    if ((((safe_add_func_int16_t_s_s((p_1375->g_812[9] |= ((safe_rshift_func_int16_t_s_s(l_796, (GROUP_DIVERGE(2, 1) != ((safe_mod_func_int16_t_s_s(l_799, (p_1375->g_313.s0 = p_1375->g_251.x))) ^ (p_1375->g_66[0][3] , (((*l_802) = l_801) == (l_804 = l_803))))))) , (((6L >= (safe_mul_func_uint8_t_u_u(((p_1375->g_764.s8 < (p_1375->g_138.z = ((((VECTOR(uint16_t, 8))(0xC491L, ((VECTOR(uint16_t, 2))(0xFA48L, 3UL)), ((VECTOR(uint16_t, 2))(6UL, 65535UL)), ((VECTOR(uint16_t, 2))(upsample(((VECTOR(uint8_t, 16))(l_808.xxxyxxxyyxyxyxxx)).sff, ((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 2))(0xE7L, 0x25L)).xxyxxxxyyxyyxyxx + ((VECTOR(uint8_t, 2))(255UL, 6UL)).yxyyyyxxxyyyxyyy))).s68))).lo, 0xC318L, 65527UL)).s2 , l_799) <= 0x52L))) != l_811), (**p_1375->g_356)))) | l_808.x) , p_77))), 65528UL)) || l_799) <= l_808.x))
                    { /* block id: 309 */
                        int32_t *l_813[9][3][9] = {{{&l_758[2][3],(void*)0,(void*)0,(void*)0,&l_752,&l_752,&p_1375->g_44,(void*)0,(void*)0},{&l_758[2][3],(void*)0,(void*)0,(void*)0,&l_752,&l_752,&p_1375->g_44,(void*)0,(void*)0},{&l_758[2][3],(void*)0,(void*)0,(void*)0,&l_752,&l_752,&p_1375->g_44,(void*)0,(void*)0}},{{&l_758[2][3],(void*)0,(void*)0,(void*)0,&l_752,&l_752,&p_1375->g_44,(void*)0,(void*)0},{&l_758[2][3],(void*)0,(void*)0,(void*)0,&l_752,&l_752,&p_1375->g_44,(void*)0,(void*)0},{&l_758[2][3],(void*)0,(void*)0,(void*)0,&l_752,&l_752,&p_1375->g_44,(void*)0,(void*)0}},{{&l_758[2][3],(void*)0,(void*)0,(void*)0,&l_752,&l_752,&p_1375->g_44,(void*)0,(void*)0},{&l_758[2][3],(void*)0,(void*)0,(void*)0,&l_752,&l_752,&p_1375->g_44,(void*)0,(void*)0},{&l_758[2][3],(void*)0,(void*)0,(void*)0,&l_752,&l_752,&p_1375->g_44,(void*)0,(void*)0}},{{&l_758[2][3],(void*)0,(void*)0,(void*)0,&l_752,&l_752,&p_1375->g_44,(void*)0,(void*)0},{&l_758[2][3],(void*)0,(void*)0,(void*)0,&l_752,&l_752,&p_1375->g_44,(void*)0,(void*)0},{&l_758[2][3],(void*)0,(void*)0,(void*)0,&l_752,&l_752,&p_1375->g_44,(void*)0,(void*)0}},{{&l_758[2][3],(void*)0,(void*)0,(void*)0,&l_752,&l_752,&p_1375->g_44,(void*)0,(void*)0},{&l_758[2][3],(void*)0,(void*)0,(void*)0,&l_752,&l_752,&p_1375->g_44,(void*)0,(void*)0},{&l_758[2][3],(void*)0,(void*)0,(void*)0,&l_752,&l_752,&p_1375->g_44,(void*)0,(void*)0}},{{&l_758[2][3],(void*)0,(void*)0,(void*)0,&l_752,&l_752,&p_1375->g_44,(void*)0,(void*)0},{&l_758[2][3],(void*)0,(void*)0,(void*)0,&l_752,&l_752,&p_1375->g_44,(void*)0,(void*)0},{&l_758[2][3],(void*)0,(void*)0,(void*)0,&l_752,&l_752,&p_1375->g_44,(void*)0,(void*)0}},{{&l_758[2][3],(void*)0,(void*)0,(void*)0,&l_752,&l_752,&p_1375->g_44,(void*)0,(void*)0},{&l_758[2][3],(void*)0,(void*)0,(void*)0,&l_752,&l_752,&p_1375->g_44,(void*)0,(void*)0},{&l_758[2][3],(void*)0,(void*)0,(void*)0,&l_752,&l_752,&p_1375->g_44,(void*)0,(void*)0}},{{&l_758[2][3],(void*)0,(void*)0,(void*)0,&l_752,&l_752,&p_1375->g_44,(void*)0,(void*)0},{&l_758[2][3],(void*)0,(void*)0,(void*)0,&l_752,&l_752,&p_1375->g_44,(void*)0,(void*)0},{&l_758[2][3],(void*)0,(void*)0,(void*)0,&l_752,&l_752,&p_1375->g_44,(void*)0,(void*)0}},{{&l_758[2][3],(void*)0,(void*)0,(void*)0,&l_752,&l_752,&p_1375->g_44,(void*)0,(void*)0},{&l_758[2][3],(void*)0,(void*)0,(void*)0,&l_752,&l_752,&p_1375->g_44,(void*)0,(void*)0},{&l_758[2][3],(void*)0,(void*)0,(void*)0,&l_752,&l_752,&p_1375->g_44,(void*)0,(void*)0}}};
                        int i, j, k;
                        l_814[0] = l_813[3][2][0];
                        (****p_1375->g_261) ^= (safe_unary_minus_func_int16_t_s(p_77));
                    }
                    else
                    { /* block id: 312 */
                        int32_t l_816 = (-1L);
                        (***p_1375->g_262) |= l_816;
                        l_814[0] = l_817;
                        (*p_1375->g_43) = (safe_lshift_func_uint16_t_u_s((p_1375->g_338.s2 = (((safe_mod_func_int64_t_s_s(l_822, l_811)) <= (safe_add_func_uint8_t_u_u(p_77, 0x0FL))) != ((VECTOR(uint32_t, 4))(l_825.zwyx)).y)), 4));
                    }
                    l_826 = (p_77 , (***p_1375->g_261));
                    if ((*l_817))
                        break;
                    if ((*p_1375->g_610))
                        continue;
                }
                for (p_1375->g_304 = 0; (p_1375->g_304 == 39); p_1375->g_304 = safe_add_func_uint8_t_u_u(p_1375->g_304, 1))
                { /* block id: 324 */
                    return l_829.zwxxywwy;
                }
            }
            ++l_831;
        }
        l_845 &= (((&p_1375->g_304 != p_75) >= p_77) != (((((**p_1375->g_356) = ((*p_1375->g_356) != ((((safe_sub_func_uint32_t_u_u(((*l_844) |= ((((((FAKE_DIVERGE(p_1375->group_1_offset, get_group_id(1), 10) == ((VECTOR(int8_t, 4))(l_836.s19c7)).z) < ((*p_75) = (((!(p_1375->g_633.y || ((p_1375->g_73.se &= ((p_1375->g_250.x != 6L) , (safe_lshift_func_int8_t_s_u((safe_add_func_uint32_t_u_u((***p_1375->g_307), (safe_div_func_int32_t_s_s((*p_1375->g_43), (*p_1375->g_43))))), l_843)))) && 1UL))) < (*p_75)) == (***p_1375->g_262)))) <= p_1375->g_383.s6) == 65526UL) <= p_77) , 1UL)), 4294967286UL)) > 0x4D1EEEFBL) , p_1375->g_64[0]) , (*l_623)))) < 0x01L) , p_77) && p_77));
    }
    p_1375->g_4[2] = p_1375->g_846;
    return p_1375->g_848.seaf0dfec;
}


/* ------------------------------------------ */
/* 
 * reads : p_1375->g_42 p_1375->g_43 p_1375->g_44 p_1375->g_64 p_1375->g_67 p_1375->g_128 p_1375->g_66 p_1375->g_73 p_1375->g_138 p_1375->g_143 p_1375->g_148 p_1375->g_179 p_1375->g_200 p_1375->g_201 p_1375->g_202 p_1375->g_61 p_1375->g_250 p_1375->g_251 p_1375->g_260 p_1375->g_262 p_1375->g_261 p_1375->g_304 p_1375->g_307 p_1375->g_313 p_1375->g_338 p_1375->g_343 p_1375->g_356 p_1375->g_229 p_1375->g_357 p_1375->g_308 p_1375->g_309 p_1375->g_382 p_1375->g_383 p_1375->g_384 p_1375->g_385 p_1375->g_311 p_1375->g_397 p_1375->g_417 p_1375->g_513 p_1375->g_516 p_1375->g_568 p_1375->g_588
 * writes: p_1375->g_67 p_1375->g_128 p_1375->g_202 p_1375->g_61 p_1375->g_148 p_1375->g_44 p_1375->g_311 p_1375->g_304 p_1375->g_138 p_1375->g_391 p_1375->g_397 p_1375->g_417 p_1375->g_229 p_1375->g_262 p_1375->g_64 p_1375->g_610
 */
int8_t  func_78(int32_t  p_79, uint32_t  p_80, struct S0 * p_1375)
{ /* block id: 18 */
    int32_t *l_81 = (void*)0;
    int32_t *l_82 = (void*)0;
    int32_t l_83 = 5L;
    int32_t **l_94 = (void*)0;
    int32_t ***l_93 = &l_94;
    VECTOR(int64_t, 4) l_95 = (VECTOR(int64_t, 4))((-6L), (VECTOR(int64_t, 2))((-6L), 0x6A51000939995E3EL), 0x6A51000939995E3EL);
    int8_t *l_113 = &p_1375->g_61;
    int32_t *l_292 = &l_83;
    int32_t l_293 = 0x712EFF39L;
    uint32_t l_392 = 0x0693607AL;
    int8_t l_393 = 0x2AL;
    int64_t *l_420 = &p_1375->g_64[0];
    int32_t **l_609[8] = {&l_81,&l_81,&l_81,&l_81,&l_81,&l_81,&l_81,&l_81};
    int i;
    l_83 |= (+(**p_1375->g_42));
    p_1375->g_610 = func_84(func_90((((&p_1375->g_4[0] == ((*l_93) = &p_1375->g_43)) , ((VECTOR(int64_t, 8))(safe_clamp_func(VECTOR(int64_t, 8),int64_t,((VECTOR(int64_t, 16))(clz(((VECTOR(int64_t, 16))(7L, ((VECTOR(int64_t, 2))(l_95.zw)), (safe_mod_func_uint8_t_u_u((safe_add_func_uint16_t_u_u(func_39(func_100((**l_94), p_79, p_1375->g_64[0], (*p_1375->g_42), (((*l_292) |= (safe_lshift_func_int8_t_s_u((((((p_79 , func_108(p_80, p_79, l_113, p_1375->g_67, p_1375)) == &l_94) , p_80) && p_80) , 0x3EL), p_79))) && l_293), p_1375), (*l_93), p_1375), 0L)), l_392)), p_79, (*l_292), 0x4BFC6F4C7AAB6995L, (-3L), ((VECTOR(int64_t, 2))(3L)), 0x0DF838681FD1DC98L, 0x22C89B31973DD018L, l_393, 0x548C436A2A28B6EBL, (-2L), 0x4A298CA53054B235L))))).hi, (int64_t)p_1375->g_311, (int64_t)p_80))).s4) & p_80), p_1375->g_338.s5, p_1375), p_79, &l_393, l_420, (**p_1375->g_261), p_1375);
    return (*p_1375->g_357);
}


/* ------------------------------------------ */
/* 
 * reads : p_1375->g_262 p_1375->g_42 p_1375->g_43 p_1375->g_44 p_1375->g_61 p_1375->g_260 p_1375->g_261 p_1375->g_229 p_1375->g_200 p_1375->g_397 p_1375->g_202 p_1375->g_304 p_1375->g_307 p_1375->g_308 p_1375->g_309 p_1375->g_128 p_1375->g_343 p_1375->g_338 p_1375->g_385 p_1375->g_67 p_1375->g_513 p_1375->g_516 p_1375->g_73 p_1375->g_179 p_1375->g_357 p_1375->g_250 p_1375->g_311 p_1375->g_568 p_1375->g_201 p_1375->g_356 p_1375->g_588
 * writes: p_1375->g_61 p_1375->g_229 p_1375->g_397 p_1375->g_262 p_1375->g_44 p_1375->g_67 p_1375->g_304 p_1375->g_64 p_1375->g_311
 */
int32_t * func_84(int64_t * p_85, uint16_t  p_86, int8_t * p_87, int64_t * p_88, int32_t ** p_89, struct S0 * p_1375)
{ /* block id: 139 */
    int32_t l_421 = 0x0207DC29L;
    VECTOR(uint16_t, 4) l_436 = (VECTOR(uint16_t, 4))(4UL, (VECTOR(uint16_t, 2))(4UL, 0x2A24L), 0x2A24L);
    int32_t *l_479 = &l_421;
    int8_t l_485 = 0x23L;
    int32_t ***l_498 = (void*)0;
    VECTOR(int64_t, 16) l_512 = (VECTOR(int64_t, 16))(0x09C0F0935256FAC0L, (VECTOR(int64_t, 4))(0x09C0F0935256FAC0L, (VECTOR(int64_t, 2))(0x09C0F0935256FAC0L, 7L), 7L), 7L, 0x09C0F0935256FAC0L, 7L, (VECTOR(int64_t, 2))(0x09C0F0935256FAC0L, 7L), (VECTOR(int64_t, 2))(0x09C0F0935256FAC0L, 7L), 0x09C0F0935256FAC0L, 7L, 0x09C0F0935256FAC0L, 7L);
    int16_t *l_515 = (void*)0;
    int16_t **l_514[7] = {&l_515,&l_515,&l_515,&l_515,&l_515,&l_515,&l_515};
    int32_t l_555 = 0x3FC7069EL;
    VECTOR(int32_t, 16) l_556 = (VECTOR(int32_t, 16))(0x53D9176AL, (VECTOR(int32_t, 4))(0x53D9176AL, (VECTOR(int32_t, 2))(0x53D9176AL, 1L), 1L), 1L, 0x53D9176AL, 1L, (VECTOR(int32_t, 2))(0x53D9176AL, 1L), (VECTOR(int32_t, 2))(0x53D9176AL, 1L), 0x53D9176AL, 1L, 0x53D9176AL, 1L);
    uint32_t l_557 = 1UL;
    VECTOR(int8_t, 8) l_587 = (VECTOR(int8_t, 8))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), (-5L)), (-5L)), (-5L), (-1L), (-5L));
    uint32_t l_602[4][2][4] = {{{0UL,0x3A744163L,4294967287UL,4UL},{0UL,0x3A744163L,4294967287UL,4UL}},{{0UL,0x3A744163L,4294967287UL,4UL},{0UL,0x3A744163L,4294967287UL,4UL}},{{0UL,0x3A744163L,4294967287UL,4UL},{0UL,0x3A744163L,4294967287UL,4UL}},{{0UL,0x3A744163L,4294967287UL,4UL},{0UL,0x3A744163L,4294967287UL,4UL}}};
    int i, j, k;
    l_421 |= (***p_1375->g_262);
    for (p_1375->g_61 = 0; (p_1375->g_61 == (-13)); p_1375->g_61--)
    { /* block id: 143 */
        int32_t *l_473 = &p_1375->g_44;
        VECTOR(uint16_t, 2) l_503 = (VECTOR(uint16_t, 2))(0UL, 65535UL);
        VECTOR(uint8_t, 2) l_521 = (VECTOR(uint8_t, 2))(4UL, 0xC8L);
        VECTOR(uint8_t, 16) l_530 = (VECTOR(uint8_t, 16))(0x93L, (VECTOR(uint8_t, 4))(0x93L, (VECTOR(uint8_t, 2))(0x93L, 0UL), 0UL), 0UL, 0x93L, 0UL, (VECTOR(uint8_t, 2))(0x93L, 0UL), (VECTOR(uint8_t, 2))(0x93L, 0UL), 0x93L, 0UL, 0x93L, 0UL);
        VECTOR(uint8_t, 2) l_536 = (VECTOR(uint8_t, 2))(0UL, 1UL);
        int i;
        if ((*****p_1375->g_260))
        { /* block id: 144 */
            VECTOR(int8_t, 8) l_435 = (VECTOR(int8_t, 8))(0x3EL, (VECTOR(int8_t, 4))(0x3EL, (VECTOR(int8_t, 2))(0x3EL, 2L), 2L), 2L, 0x3EL, 2L);
            int i;
            for (p_1375->g_229 = 0; (p_1375->g_229 > 23); ++p_1375->g_229)
            { /* block id: 147 */
                int32_t *l_426 = &l_421;
                int32_t ****l_449 = (void*)0;
                int32_t ***l_451 = &p_1375->g_42;
                int32_t ****l_450 = &l_451;
                int32_t **l_453 = &p_1375->g_43;
                int32_t ***l_452 = &l_453;
                (*l_426) &= (***p_1375->g_262);
                (*p_1375->g_43) = (((safe_sub_func_uint64_t_u_u(GROUP_DIVERGE(0, 1), (safe_add_func_int16_t_s_s(p_86, ((safe_add_func_uint16_t_u_u(((VECTOR(uint16_t, 2))(7UL, 1UL)).lo, ((((safe_mul_func_uint8_t_u_u(0UL, ((VECTOR(int8_t, 8))(add_sat(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(l_435.s23)), 8L, ((p_1375->g_200.s3 != ((((VECTOR(uint16_t, 4))(l_436.xzyx)).y | (((safe_add_func_uint64_t_u_u(((safe_rshift_func_uint8_t_u_s((++p_1375->g_397), 7)) != (safe_mod_func_uint32_t_u_u((((safe_lshift_func_int16_t_s_u((safe_lshift_func_uint16_t_u_s(((&p_89 != (l_452 = ((*l_450) = ((*p_1375->g_261) = (*p_1375->g_261))))) , (safe_div_func_int8_t_s_s((safe_sub_func_int64_t_s_s(0L, p_1375->g_202.x)), 0x33L))), (safe_div_func_int32_t_s_s((safe_div_func_int8_t_s_s((-1L), 0xB9L)), (**p_89))))), l_436.z)) , p_1375->g_202.y) <= p_1375->g_304), (***p_1375->g_307)))), p_1375->g_343.y)) | p_1375->g_338.s7) <= 0xEA1641A0L)) , p_1375->g_385.z)) >= p_86), ((VECTOR(int8_t, 2))(1L)), (-4L), 0x74L)), ((VECTOR(int8_t, 8))(3L))))).s6)) < FAKE_DIVERGE(p_1375->global_2_offset, get_global_id(2), 10)) , 0xBBL) || 0x7FL))) > GROUP_DIVERGE(1, 1)))))) >= p_86) , (**p_89));
            }
            if ((**p_89))
                break;
        }
        else
        { /* block id: 156 */
            int32_t *l_463 = (void*)0;
            int32_t **l_462 = &l_463;
            if (l_436.w)
                break;
            if ((*****p_1375->g_260))
                continue;
            (*l_462) = (****p_1375->g_260);
        }
        for (p_86 = 0; (p_86 <= 48); p_86 = safe_add_func_int8_t_s_s(p_86, 9))
        { /* block id: 163 */
            uint64_t *l_507 = &p_1375->g_304;
            VECTOR(uint8_t, 16) l_531 = (VECTOR(uint8_t, 16))(0x20L, (VECTOR(uint8_t, 4))(0x20L, (VECTOR(uint8_t, 2))(0x20L, 255UL), 255UL), 255UL, 0x20L, 255UL, (VECTOR(uint8_t, 2))(0x20L, 255UL), (VECTOR(uint8_t, 2))(0x20L, 255UL), 0x20L, 255UL, 0x20L, 255UL);
            int32_t *****l_549 = &p_1375->g_261;
            int32_t *****l_550 = &p_1375->g_261;
            int8_t *l_551 = (void*)0;
            int8_t *l_552[5][3][10] = {{{&p_1375->g_61,(void*)0,(void*)0,&l_485,(void*)0,&p_1375->g_61,&p_1375->g_61,(void*)0,&l_485,(void*)0},{&p_1375->g_61,(void*)0,(void*)0,&l_485,(void*)0,&p_1375->g_61,&p_1375->g_61,(void*)0,&l_485,(void*)0},{&p_1375->g_61,(void*)0,(void*)0,&l_485,(void*)0,&p_1375->g_61,&p_1375->g_61,(void*)0,&l_485,(void*)0}},{{&p_1375->g_61,(void*)0,(void*)0,&l_485,(void*)0,&p_1375->g_61,&p_1375->g_61,(void*)0,&l_485,(void*)0},{&p_1375->g_61,(void*)0,(void*)0,&l_485,(void*)0,&p_1375->g_61,&p_1375->g_61,(void*)0,&l_485,(void*)0},{&p_1375->g_61,(void*)0,(void*)0,&l_485,(void*)0,&p_1375->g_61,&p_1375->g_61,(void*)0,&l_485,(void*)0}},{{&p_1375->g_61,(void*)0,(void*)0,&l_485,(void*)0,&p_1375->g_61,&p_1375->g_61,(void*)0,&l_485,(void*)0},{&p_1375->g_61,(void*)0,(void*)0,&l_485,(void*)0,&p_1375->g_61,&p_1375->g_61,(void*)0,&l_485,(void*)0},{&p_1375->g_61,(void*)0,(void*)0,&l_485,(void*)0,&p_1375->g_61,&p_1375->g_61,(void*)0,&l_485,(void*)0}},{{&p_1375->g_61,(void*)0,(void*)0,&l_485,(void*)0,&p_1375->g_61,&p_1375->g_61,(void*)0,&l_485,(void*)0},{&p_1375->g_61,(void*)0,(void*)0,&l_485,(void*)0,&p_1375->g_61,&p_1375->g_61,(void*)0,&l_485,(void*)0},{&p_1375->g_61,(void*)0,(void*)0,&l_485,(void*)0,&p_1375->g_61,&p_1375->g_61,(void*)0,&l_485,(void*)0}},{{&p_1375->g_61,(void*)0,(void*)0,&l_485,(void*)0,&p_1375->g_61,&p_1375->g_61,(void*)0,&l_485,(void*)0},{&p_1375->g_61,(void*)0,(void*)0,&l_485,(void*)0,&p_1375->g_61,&p_1375->g_61,(void*)0,&l_485,(void*)0},{&p_1375->g_61,(void*)0,(void*)0,&l_485,(void*)0,&p_1375->g_61,&p_1375->g_61,(void*)0,&l_485,(void*)0}}};
            int32_t l_553[4] = {(-8L),(-8L),(-8L),(-8L)};
            int i, j, k;
            for (p_1375->g_67 = 0; (p_1375->g_67 != 47); p_1375->g_67++)
            { /* block id: 166 */
                int32_t *l_478 = (void*)0;
                int32_t l_483 = 0x18BAEBD4L;
                int32_t l_484 = (-3L);
                VECTOR(uint32_t, 2) l_486 = (VECTOR(uint32_t, 2))(4294967295UL, 4294967295UL);
                VECTOR(int32_t, 4) l_489 = (VECTOR(int32_t, 4))(0x25D45745L, (VECTOR(int32_t, 2))(0x25D45745L, 0x7F6407B5L), 0x7F6407B5L);
                int32_t *******l_492 = &p_1375->g_417;
                int32_t *******l_493 = (void*)0;
                int32_t *******l_494[3];
                int i;
                for (i = 0; i < 3; i++)
                    l_494[i] = (void*)0;
                (1 + 1);
            }
            (*l_479) = ((safe_sub_func_int16_t_s_s(((p_86 ^ FAKE_DIVERGE(p_1375->group_1_offset, get_group_id(1), 10)) >= (p_86 > ((((((*l_507)--) >= ((VECTOR(uint64_t, 4))((((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 8))(abs(((VECTOR(int64_t, 2))(clz(((VECTOR(int64_t, 2))(l_512.sf2))))).yxxxxyxy))).s1065013437622322 ^ ((VECTOR(uint64_t, 8))(max(((VECTOR(uint64_t, 16))(p_1375->g_513.sfa69739613ab0954)).hi, (uint64_t)(!(((*l_479) != ((VECTOR(int32_t, 4))((((VECTOR(int32_t, 2))(1L, 0x11708840L)).xyxy >= ((VECTOR(int32_t, 2))(9L, 0x184E6F79L)).yxxy))).x) <= ((*p_87) = ((void*)0 != l_514[3]))))))).s5277177561021202))).s06ad + ((VECTOR(uint64_t, 8))(p_1375->g_516.yzwxyyww)).odd))).y) >= ((*p_85) = (safe_div_func_uint8_t_u_u(((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 4))(hadd(((VECTOR(uint8_t, 16))(l_521.xxyxxyxxyxxyyxyy)).s7ba8, ((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 8))(((l_553[2] = ((safe_add_func_uint8_t_u_u(((VECTOR(uint8_t, 8))(clz(((VECTOR(uint8_t, 16))(mul_hi(((VECTOR(uint8_t, 16))(1UL, 1UL, 0xB5L, ((VECTOR(uint8_t, 4))(l_530.s3f4f)), (((VECTOR(uint8_t, 4))(l_531.s85b4)).z , (*l_473)), ((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 2))(safe_clamp_func(VECTOR(uint8_t, 2),VECTOR(uint8_t, 2),((VECTOR(uint8_t, 16))(add_sat(((VECTOR(uint8_t, 2))(0x72L, 0xE4L)).xxxyxyyyyxxyyxyx, ((VECTOR(uint8_t, 2))(hadd(((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 2))(l_536.xx)).xyxxyxyx + ((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 4))(((*****l_549) = (safe_mul_func_uint8_t_u_u((((((safe_add_func_uint16_t_u_u(((safe_add_func_uint32_t_u_u(((safe_rshift_func_int16_t_s_u((1UL ^ GROUP_DIVERGE(0, 1)), 10)) , (safe_sub_func_int16_t_s_s(((l_549 != (l_550 = l_549)) ^ 0L), 0x2C1CL))), (*l_473))) , FAKE_DIVERGE(p_1375->group_2_offset, get_group_id(2), 10)), p_86)) <= p_1375->g_44) && 1UL) & (*****l_549)) ^ p_1375->g_73.s5), (*l_473)))), ((VECTOR(uint8_t, 2))(0x99L)), 251UL)).hi + ((VECTOR(uint8_t, 2))(1UL))))).xyyxxxxx))).s76, ((VECTOR(uint8_t, 2))(0UL))))).xxyxxyxxyxxxxyxx))).s81, ((VECTOR(uint8_t, 2))(0xE5L)), ((VECTOR(uint8_t, 2))(0x16L))))).yxyxxxyx + ((VECTOR(uint8_t, 8))(0xF0L))))).s47 ^ ((VECTOR(uint8_t, 2))(0x73L))))), 254UL, 1UL, GROUP_DIVERGE(1, 1), ((VECTOR(uint8_t, 2))(0x36L)), 246UL)), ((VECTOR(uint8_t, 16))(0x0EL))))).even))).s1, 0L)) | p_86)) > p_1375->g_179.s0), ((VECTOR(uint8_t, 4))(7UL)), 0x12L, 250UL, 0x95L)).lo + ((VECTOR(uint8_t, 4))(0x39L))))).wzxzzzzx + ((VECTOR(uint8_t, 8))(0x88L))))) + ((VECTOR(uint8_t, 8))(0x33L))))).lo))) * ((VECTOR(uint8_t, 4))(0x7FL))))).y, (*p_1375->g_357))))) || 0x65D380EAL) , 0x3FL))), p_1375->g_250.y)) <= p_86);
            (*l_479) |= (**p_89);
        }
        l_473 = (****p_1375->g_260);
    }
    if ((**p_1375->g_42))
    { /* block id: 203 */
        return (*p_89);
    }
    else
    { /* block id: 205 */
        int32_t *l_554[6] = {(void*)0,&l_421,(void*)0,(void*)0,&l_421,(void*)0};
        uint32_t l_593 = 0xFE1DCCF9L;
        int i;
        --l_557;
        for (l_485 = 0; (l_485 <= (-26)); l_485 = safe_sub_func_int64_t_s_s(l_485, 5))
        { /* block id: 209 */
            uint8_t l_583[7][7][2] = {{{255UL,255UL},{255UL,255UL},{255UL,255UL},{255UL,255UL},{255UL,255UL},{255UL,255UL},{255UL,255UL}},{{255UL,255UL},{255UL,255UL},{255UL,255UL},{255UL,255UL},{255UL,255UL},{255UL,255UL},{255UL,255UL}},{{255UL,255UL},{255UL,255UL},{255UL,255UL},{255UL,255UL},{255UL,255UL},{255UL,255UL},{255UL,255UL}},{{255UL,255UL},{255UL,255UL},{255UL,255UL},{255UL,255UL},{255UL,255UL},{255UL,255UL},{255UL,255UL}},{{255UL,255UL},{255UL,255UL},{255UL,255UL},{255UL,255UL},{255UL,255UL},{255UL,255UL},{255UL,255UL}},{{255UL,255UL},{255UL,255UL},{255UL,255UL},{255UL,255UL},{255UL,255UL},{255UL,255UL},{255UL,255UL}},{{255UL,255UL},{255UL,255UL},{255UL,255UL},{255UL,255UL},{255UL,255UL},{255UL,255UL},{255UL,255UL}}};
            int32_t l_589 = 0L;
            int32_t l_601 = 3L;
            uint8_t l_605 = 255UL;
            int i, j, k;
            if ((****p_1375->g_261))
            { /* block id: 210 */
                int64_t l_582 = 0x6B5E62BF5C07BBEDL;
                int16_t *l_584 = (void*)0;
                int32_t l_590 = 1L;
                for (p_1375->g_44 = 10; (p_1375->g_44 == (-16)); p_1375->g_44--)
                { /* block id: 213 */
                    int16_t **l_576 = &l_515;
                    int32_t l_581 = 0x2826AFC5L;
                    int32_t l_598 = 6L;
                    int32_t l_600 = 0x42AE8336L;
                    for (p_1375->g_311 = 27; (p_1375->g_311 != 39); ++p_1375->g_311)
                    { /* block id: 216 */
                        int16_t *l_569 = (void*)0;
                        int32_t l_591 = 0L;
                        int32_t l_592 = 6L;
                        int32_t l_596 = 1L;
                        int32_t l_597 = 8L;
                        int32_t l_599 = 1L;
                        (*l_479) &= (safe_add_func_uint16_t_u_u(p_1375->g_304, (((*p_1375->g_357) = ((l_569 = p_1375->g_568) == ((((safe_lshift_func_uint16_t_u_u((safe_lshift_func_int8_t_s_s(((safe_mul_func_int8_t_s_s(1L, ((((void*)0 != l_576) || (safe_mul_func_int8_t_s_s((((safe_add_func_uint16_t_u_u(l_581, ((l_582 , (l_583[6][3][1] = (*p_87))) , p_1375->g_201.x))) != p_1375->g_343.x) <= (**p_1375->g_356)), p_1375->g_44))) >= 0x597E53DCL))) && (-9L)), 5)), p_86)) , (void*)0) != (void*)0) , l_584))) == l_581)));
                        l_581 |= (((*l_479) >= GROUP_DIVERGE(0, 1)) == ((safe_lshift_func_int8_t_s_u((~((VECTOR(int8_t, 8))(l_587.s03753547)).s3), 1)) >= ((VECTOR(uint8_t, 8))(p_1375->g_588.yyyxyyyx)).s5));
                        l_593++;
                        --l_602[1][1][0];
                    }
                    return (**p_1375->g_262);
                }
                (**p_89) = l_605;
                if ((**p_1375->g_42))
                    continue;
            }
            else
            { /* block id: 229 */
                int16_t l_606 = 3L;
                if (l_606)
                    break;
                if (l_583[6][3][1])
                    break;
                if ((**p_89))
                    continue;
            }
        }
        for (l_485 = (-24); (l_485 < 7); l_485++)
        { /* block id: 237 */
            l_554[0] = l_554[2];
        }
    }
    return (****p_1375->g_260);
}


/* ------------------------------------------ */
/* 
 * reads : p_1375->g_397 p_1375->g_357 p_1375->g_61 p_1375->g_260 p_1375->g_261 p_1375->g_262 p_1375->g_42 p_1375->g_43 p_1375->g_44 p_1375->g_417 p_1375->g_356
 * writes: p_1375->g_397 p_1375->g_417
 */
int64_t * func_90(int32_t  p_91, int16_t  p_92, struct S0 * p_1375)
{ /* block id: 127 */
    int32_t *l_394 = &p_1375->g_44;
    int32_t *l_395 = &p_1375->g_44;
    int32_t *l_396[9][1] = {{&p_1375->g_44},{&p_1375->g_44},{&p_1375->g_44},{&p_1375->g_44},{&p_1375->g_44},{&p_1375->g_44},{&p_1375->g_44},{&p_1375->g_44},{&p_1375->g_44}};
    VECTOR(uint32_t, 16) l_404 = (VECTOR(uint32_t, 16))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 0xD1A9D90CL), 0xD1A9D90CL), 0xD1A9D90CL, 0UL, 0xD1A9D90CL, (VECTOR(uint32_t, 2))(0UL, 0xD1A9D90CL), (VECTOR(uint32_t, 2))(0UL, 0xD1A9D90CL), 0UL, 0xD1A9D90CL, 0UL, 0xD1A9D90CL);
    int32_t *****l_412 = &p_1375->g_261;
    int32_t ******l_411 = &l_412;
    int32_t *****l_416 = &p_1375->g_261;
    int32_t ******l_415 = &l_416;
    int i, j;
lbl_419:
    ++p_1375->g_397;
    if ((safe_add_func_uint64_t_u_u(p_91, ((*p_1375->g_357) && ((*****p_1375->g_260) != (((((VECTOR(uint32_t, 4))(l_404.s355a)).z && (((((safe_mod_func_uint16_t_u_u(0xD442L, FAKE_DIVERGE(p_1375->group_1_offset, get_group_id(1), 10))) & ((safe_rshift_func_int16_t_s_u((safe_lshift_func_uint16_t_u_u(FAKE_DIVERGE(p_1375->global_1_offset, get_global_id(1), 10), 0)), ((((*l_411) = &p_1375->g_261) == ((safe_sub_func_int16_t_s_s(0x5037L, ((l_415 = l_411) != (p_1375->g_417 = &l_416)))) , (*p_1375->g_417))) != (****p_1375->g_261)))) > (**p_1375->g_356))) | 0xCE3C15ABL) , p_91) , 0L)) , (*****l_416)) , p_91))))))
    { /* block id: 132 */
        int32_t *l_418 = &p_1375->g_44;
        l_418 = (void*)0;
    }
    else
    { /* block id: 134 */
        return &p_1375->g_64[0];
    }
    if (p_1375->g_61)
        goto lbl_419;
    return &p_1375->g_64[0];
}


/* ------------------------------------------ */
/* 
 * reads : p_1375->g_148 p_1375->g_42 p_1375->g_43 p_1375->g_260 p_1375->g_261 p_1375->g_262 p_1375->g_44 p_1375->g_304 p_1375->g_307 p_1375->g_313 p_1375->g_202 p_1375->g_179 p_1375->g_66 p_1375->g_338 p_1375->g_343 p_1375->g_73 p_1375->g_356 p_1375->g_229 p_1375->g_64 p_1375->g_138 p_1375->g_357 p_1375->g_308 p_1375->g_309 p_1375->g_128 p_1375->g_382 p_1375->g_383 p_1375->g_384 p_1375->g_385 p_1375->g_61
 * writes: p_1375->g_148 p_1375->g_44 p_1375->g_311 p_1375->g_304 p_1375->g_138 p_1375->g_128 p_1375->g_391
 */
int32_t ** func_100(uint32_t  p_101, int32_t  p_102, int16_t  p_103, int32_t * p_104, int64_t  p_105, struct S0 * p_1375)
{ /* block id: 94 */
    int32_t *****l_299 = &p_1375->g_261;
    VECTOR(uint16_t, 16) l_314 = (VECTOR(uint16_t, 16))(0x6FD0L, (VECTOR(uint16_t, 4))(0x6FD0L, (VECTOR(uint16_t, 2))(0x6FD0L, 0x57CFL), 0x57CFL), 0x57CFL, 0x6FD0L, 0x57CFL, (VECTOR(uint16_t, 2))(0x6FD0L, 0x57CFL), (VECTOR(uint16_t, 2))(0x6FD0L, 0x57CFL), 0x6FD0L, 0x57CFL, 0x6FD0L, 0x57CFL);
    VECTOR(uint16_t, 4) l_317 = (VECTOR(uint16_t, 4))(0x5808L, (VECTOR(uint16_t, 2))(0x5808L, 0xE347L), 0xE347L);
    int8_t *l_320 = &p_1375->g_61;
    int8_t **l_319 = &l_320;
    VECTOR(uint32_t, 2) l_326 = (VECTOR(uint32_t, 2))(0x18D38731L, 0UL);
    VECTOR(uint16_t, 4) l_337 = (VECTOR(uint16_t, 4))(0xA5A5L, (VECTOR(uint16_t, 2))(0xA5A5L, 5UL), 5UL);
    VECTOR(uint8_t, 16) l_339 = (VECTOR(uint8_t, 16))(0xA9L, (VECTOR(uint8_t, 4))(0xA9L, (VECTOR(uint8_t, 2))(0xA9L, 1UL), 1UL), 1UL, 0xA9L, 1UL, (VECTOR(uint8_t, 2))(0xA9L, 1UL), (VECTOR(uint8_t, 2))(0xA9L, 1UL), 0xA9L, 1UL, 0xA9L, 1UL);
    VECTOR(uint8_t, 16) l_342 = (VECTOR(uint8_t, 16))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 1UL), 1UL), 1UL, 1UL, 1UL, (VECTOR(uint8_t, 2))(1UL, 1UL), (VECTOR(uint8_t, 2))(1UL, 1UL), 1UL, 1UL, 1UL, 1UL);
    uint64_t *l_350 = &p_1375->g_304;
    VECTOR(int64_t, 16) l_353 = (VECTOR(int64_t, 16))(0x39A400A4BCEEDDB5L, (VECTOR(int64_t, 4))(0x39A400A4BCEEDDB5L, (VECTOR(int64_t, 2))(0x39A400A4BCEEDDB5L, (-1L)), (-1L)), (-1L), 0x39A400A4BCEEDDB5L, (-1L), (VECTOR(int64_t, 2))(0x39A400A4BCEEDDB5L, (-1L)), (VECTOR(int64_t, 2))(0x39A400A4BCEEDDB5L, (-1L)), 0x39A400A4BCEEDDB5L, (-1L), 0x39A400A4BCEEDDB5L, (-1L));
    VECTOR(int64_t, 2) l_354 = (VECTOR(int64_t, 2))(0x4ED8E74AD22BD43BL, (-1L));
    VECTOR(int64_t, 8) l_355 = (VECTOR(int64_t, 8))(0x35B1E5A7C2F76F49L, (VECTOR(int64_t, 4))(0x35B1E5A7C2F76F49L, (VECTOR(int64_t, 2))(0x35B1E5A7C2F76F49L, (-2L)), (-2L)), (-2L), 0x35B1E5A7C2F76F49L, (-2L));
    int16_t *l_358 = (void*)0;
    int16_t *l_359 = (void*)0;
    int16_t *l_360[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int32_t l_373 = 1L;
    int32_t l_374[3][1][6] = {{{0x18855DDCL,0x18855DDCL,(-2L),8L,2L,8L}},{{0x18855DDCL,0x18855DDCL,(-2L),8L,2L,8L}},{{0x18855DDCL,0x18855DDCL,(-2L),8L,2L,8L}}};
    uint32_t l_376 = 0xF434B5AFL;
    VECTOR(int8_t, 4) l_381 = (VECTOR(int8_t, 4))(0x03L, (VECTOR(int8_t, 2))(0x03L, 1L), 1L);
    int16_t **l_390 = &l_360[2];
    int i, j, k;
    for (p_1375->g_148 = 0; (p_1375->g_148 < 21); ++p_1375->g_148)
    { /* block id: 97 */
        (**p_1375->g_42) = (-5L);
        (**p_1375->g_42) = 1L;
        if ((*****p_1375->g_260))
            continue;
    }
    for (p_103 = 25; (p_103 >= 12); p_103 = safe_sub_func_int64_t_s_s(p_103, 9))
    { /* block id: 104 */
        int64_t l_298 = (-3L);
        uint16_t *l_310 = &p_1375->g_311;
        VECTOR(uint16_t, 16) l_312 = (VECTOR(uint16_t, 16))(0x1859L, (VECTOR(uint16_t, 4))(0x1859L, (VECTOR(uint16_t, 2))(0x1859L, 1UL), 1UL), 1UL, 0x1859L, 1UL, (VECTOR(uint16_t, 2))(0x1859L, 1UL), (VECTOR(uint16_t, 2))(0x1859L, 1UL), 0x1859L, 1UL, 0x1859L, 1UL);
        VECTOR(uint16_t, 2) l_318 = (VECTOR(uint16_t, 2))(0xE221L, 65526UL);
        int8_t ***l_321 = (void*)0;
        int8_t ***l_322 = &l_319;
        int32_t l_323 = 0x256026EDL;
        int i;
        l_323 = ((p_101 , (l_298 , l_299)) == (((safe_rshift_func_uint8_t_u_u((((((((GROUP_DIVERGE(2, 1) == ((safe_mul_func_int8_t_s_s(p_1375->g_304, ((safe_sub_func_uint64_t_u_u(0x8270F715C670C354L, ((void*)0 != p_1375->g_307))) < (((*l_322) = ((((VECTOR(uint16_t, 16))(((*l_310) = l_298), ((VECTOR(uint16_t, 2))(rotate(((VECTOR(uint16_t, 2))(65526UL, 65535UL)), ((VECTOR(uint16_t, 8))(abs_diff(((VECTOR(uint16_t, 2))(l_312.se9)).xxyxyyyx, ((VECTOR(uint16_t, 4))(p_1375->g_313.s5744)).zyyzwzyy))).s77))), 65535UL, ((VECTOR(uint16_t, 2))(l_314.sad)), 4UL, 0xC5B6L, 65535UL, ((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 2))(l_317.yw)).xxxy + ((VECTOR(uint16_t, 16))(l_318.xyxxyxyyxxyyxyxy)).s60dd))), 1UL, 0xDC71L, 0UL)).s2 , ((*l_310) = p_101)) , l_319)) != &l_320)))) <= (*****l_299))) , (-1L)) <= (*****l_299)) > p_1375->g_202.y) , p_1375->g_179.sb) | p_1375->g_66[0][3]) == (*p_104)), p_103)) , 0UL) , (void*)0));
    }
    if (((((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 16))(l_326.xxyxyyxyyyxyyyxy)).s55d8 + ((VECTOR(uint32_t, 8))(0x7B0583BFL, ((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 4))(safe_mad24_func_uint32_t_u_u_u(VECTOR(uint32_t, 4),((VECTOR(uint32_t, 16))((safe_rshift_func_int8_t_s_s(p_1375->g_202.y, 1)), ((VECTOR(uint32_t, 4))(add_sat(((VECTOR(uint32_t, 16))(upsample(((VECTOR(uint16_t, 16))(0x5488L, ((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 4))(hadd(((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 8))(add_sat(((VECTOR(uint16_t, 4))(mul_hi(((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 8))(hadd(((VECTOR(uint16_t, 2))(1UL, 0x19AAL)).xxyxyxxx, ((VECTOR(uint16_t, 4))(0xCA1EL, 0xC3FEL, 0UL, 0x1309L)).wxyxwwzz))) + ((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 2))(1UL, 0x7D3CL)) + ((VECTOR(uint16_t, 8))(l_337.ywzyzwww)).s20))).xyxxxxyy))).odd, ((VECTOR(uint16_t, 16))(min(((VECTOR(uint16_t, 2))(min(((VECTOR(uint16_t, 16))(sub_sat(((VECTOR(uint16_t, 4))(max(((VECTOR(uint16_t, 4))(p_1375->g_338.s6264)), (uint16_t)FAKE_DIVERGE(p_1375->local_1_offset, get_local_id(1), 10)))).wwzyzwwyxyzwwxwz, ((VECTOR(uint16_t, 4))(rotate(((VECTOR(uint16_t, 4))(mad_hi(((VECTOR(uint16_t, 16))(abs_diff(((VECTOR(int16_t, 8))(upsample(((VECTOR(int8_t, 2))(4L, 0x70L)).yyyxxyxy, ((VECTOR(uint8_t, 2))(mul_hi(((VECTOR(uint8_t, 16))(l_339.s4b5f292c0d692d6a)).s28, ((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 16))(l_342.s80b8b4cfb0a0d7b0)).hi - ((VECTOR(uint8_t, 8))(p_1375->g_343.xxyzxxwz))))).s35))).yxxyxyyx))).s4366470417041442, ((VECTOR(int16_t, 2))((((VECTOR(int16_t, 8))((((~(*****l_299)) , ((((*****l_299) == ((*****l_299) || ((((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(0xE6353F31L, 0x729DD3CDL)), 0x7C539550L, 4294967295UL)).y == ((***p_1375->g_307) = (((*l_319) != ((p_1375->g_138.w ^= (p_105 & (((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 8))(((*l_350) ^= p_1375->g_73.sd), ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(0x9B4017CD5688CFAAL, 0UL)), 0x4265742BB6524629L, 0x86D7C754F3BCDFE7L)), FAKE_DIVERGE(p_1375->global_2_offset, get_global_id(2), 10), 0x1959D5578F634048L, 18446744073709551612UL)).s1516410670571623 + ((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 2))(abs(((VECTOR(int64_t, 4))((((VECTOR(int64_t, 4))(mul_hi(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))(l_353.sed)), 0x3687EE1269B700C0L, (-1L))), ((VECTOR(int64_t, 16))(l_354.yyyyxyxyyyyxxyyx)).s8d7a))) == ((VECTOR(int64_t, 16))((((VECTOR(int64_t, 4))(l_355.s5110)).wwwzwwwyxxzzzxzw | ((VECTOR(int64_t, 2))(hadd(((VECTOR(int64_t, 2))(sub_sat(((VECTOR(int64_t, 8))(((p_1375->g_356 != &p_1375->g_357) != p_1375->g_229), p_1375->g_64[0], 0x5B800B5F51FC6A9EL, 0x1867B717F7580473L, (*****l_299), ((VECTOR(int64_t, 2))(0x66279D0BA8BC9C9EL)), (-1L))).s46, ((VECTOR(int64_t, 2))(2L))))), ((VECTOR(int64_t, 2))(4L))))).xyxxyxyyxyxyyyxy))).s996c))).hi))).yyyyyyxyyxxyyyyy + ((VECTOR(uint64_t, 16))(0x21AB8439B9D1C5ECL)))))))) + ((VECTOR(uint64_t, 16))(0x990F486D25DB258EL))))).s6 > p_1375->g_343.y))) , (*p_1375->g_356))) >= (*p_104)))) < (-1L)))) > 1L) > (*****l_299))) == (*****l_299)), ((VECTOR(int16_t, 2))(0L)), ((VECTOR(int16_t, 2))(0x4456L)), ((VECTOR(int16_t, 2))(0x5330L)), 0x6AB6L)).s54 || ((VECTOR(int16_t, 2))(9L))))).yxxxyyyxxxxxyyyy))).se73c, ((VECTOR(uint16_t, 4))(0xEFFCL)), ((VECTOR(uint16_t, 4))(0UL))))), ((VECTOR(uint16_t, 4))(65535UL))))).yxxxzwxxwxyzwzxx))).scd, ((VECTOR(uint16_t, 2))(0x04CEL))))).xyxxyyyxyxyxxxxy, (uint16_t)p_103))).sa5cf))).yxzzxyzy, ((VECTOR(uint16_t, 8))(0UL))))).lo & ((VECTOR(uint16_t, 4))(0UL))))), ((VECTOR(uint16_t, 4))(65532UL))))).xyxywwxx + ((VECTOR(uint16_t, 8))(0x1B9DL))))), 0x53ECL, ((VECTOR(uint16_t, 4))(0xDADCL)), 65531UL, 1UL)), ((VECTOR(uint16_t, 16))(65535UL))))).s2061, ((VECTOR(uint32_t, 4))(0x2F4315D7L))))), 9UL, 1UL, 0xE0DD5479L, 0xEBED1429L, 0xC118406DL, ((VECTOR(uint32_t, 4))(9UL)), 0x3D744F47L, 0x3522E193L)).sfd8f, ((VECTOR(uint32_t, 4))(4294967295UL)), ((VECTOR(uint32_t, 4))(0x4473B238L))))) >> ((VECTOR(uint32_t, 4))(0x268F8804L))))), (***p_1375->g_307), 0x712B9C90L, 4294967292UL)).lo))).w > p_102) < p_102))
    { /* block id: 113 */
        for (p_1375->g_304 = 0; (p_1375->g_304 <= 33); ++p_1375->g_304)
        { /* block id: 116 */
            int32_t *l_364 = (void*)0;
            int32_t **l_363 = &l_364;
            (*l_363) = (****l_299);
        }
    }
    else
    { /* block id: 119 */
        int32_t l_365 = (-1L);
        int32_t l_366 = 0x119450E3L;
        int32_t *l_367 = (void*)0;
        int32_t *l_368 = &l_366;
        VECTOR(int32_t, 8) l_369 = (VECTOR(int32_t, 8))(0x3208CF20L, (VECTOR(int32_t, 4))(0x3208CF20L, (VECTOR(int32_t, 2))(0x3208CF20L, (-1L)), (-1L)), (-1L), 0x3208CF20L, (-1L));
        int32_t *l_370 = (void*)0;
        int32_t *l_371 = &p_1375->g_44;
        int32_t *l_372[8][8] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1375->g_44,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1375->g_44,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1375->g_44,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1375->g_44,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1375->g_44,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1375->g_44,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1375->g_44,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1375->g_44,(void*)0,(void*)0}};
        int32_t l_375[10][10] = {{0x3908F129L,0x1ACA9A60L,0x1ACA9A60L,0x3908F129L,0x3908F129L,0x1ACA9A60L,0x1ACA9A60L,0x3908F129L,0x3908F129L,0x1ACA9A60L},{0x3908F129L,0x1ACA9A60L,0x1ACA9A60L,0x3908F129L,0x3908F129L,0x1ACA9A60L,0x1ACA9A60L,0x3908F129L,0x3908F129L,0x1ACA9A60L},{0x3908F129L,0x1ACA9A60L,0x1ACA9A60L,0x3908F129L,0x3908F129L,0x1ACA9A60L,0x1ACA9A60L,0x3908F129L,0x3908F129L,0x1ACA9A60L},{0x3908F129L,0x1ACA9A60L,0x1ACA9A60L,0x3908F129L,0x3908F129L,0x1ACA9A60L,0x1ACA9A60L,0x3908F129L,0x3908F129L,0x1ACA9A60L},{0x3908F129L,0x1ACA9A60L,0x1ACA9A60L,0x3908F129L,0x3908F129L,0x1ACA9A60L,0x1ACA9A60L,0x3908F129L,0x3908F129L,0x1ACA9A60L},{0x3908F129L,0x1ACA9A60L,0x1ACA9A60L,0x3908F129L,0x3908F129L,0x1ACA9A60L,0x1ACA9A60L,0x3908F129L,0x3908F129L,0x1ACA9A60L},{0x3908F129L,0x1ACA9A60L,0x1ACA9A60L,0x3908F129L,0x3908F129L,0x1ACA9A60L,0x1ACA9A60L,0x3908F129L,0x3908F129L,0x1ACA9A60L},{0x3908F129L,0x1ACA9A60L,0x1ACA9A60L,0x3908F129L,0x3908F129L,0x1ACA9A60L,0x1ACA9A60L,0x3908F129L,0x3908F129L,0x1ACA9A60L},{0x3908F129L,0x1ACA9A60L,0x1ACA9A60L,0x3908F129L,0x3908F129L,0x1ACA9A60L,0x1ACA9A60L,0x3908F129L,0x3908F129L,0x1ACA9A60L},{0x3908F129L,0x1ACA9A60L,0x1ACA9A60L,0x3908F129L,0x3908F129L,0x1ACA9A60L,0x1ACA9A60L,0x3908F129L,0x3908F129L,0x1ACA9A60L}};
        int i, j;
        --l_376;
    }
    (*****p_1375->g_260) = ((safe_add_func_int16_t_s_s((p_103 = ((VECTOR(int16_t, 8))(upsample(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 2))(0x6DL, 9L)), ((VECTOR(int8_t, 8))(safe_clamp_func(VECTOR(int8_t, 8),int8_t,((VECTOR(int8_t, 2))(hadd(((VECTOR(int8_t, 4))(mul_hi(((VECTOR(int8_t, 4))(l_381.yzzw)), ((VECTOR(int8_t, 16))((((VECTOR(int8_t, 4))((((VECTOR(int8_t, 4))(p_1375->g_382.s5212)) && ((VECTOR(int8_t, 2))(p_1375->g_383.s30)).xyxy))).yxzxyzywwwwzzwxx == ((VECTOR(int8_t, 16))(mul_hi(((VECTOR(int8_t, 4))(p_1375->g_384.s1770)).xxyxwwxyyzxwzxxx, ((VECTOR(int8_t, 2))(p_1375->g_385.zy)).xxxyyxxxyyyyxyxy)))))).s0984))).even, ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))((((VECTOR(int8_t, 16))(p_102, ((VECTOR(int8_t, 4))(0L, ((void*)0 == &p_1375->g_356), 0x49L, 0x62L)), ((((safe_mul_func_uint8_t_u_u(p_1375->g_138.z, p_1375->g_73.s3)) ^ 4294967295UL) & (p_1375->g_391 = ((VECTOR(int16_t, 16))(1L, ((VECTOR(int16_t, 2))(0x3118L, 0L)), ((safe_rshift_func_uint16_t_u_u(((l_390 = &l_359) == &l_358), 9)) , 0x482DL), p_1375->g_383.s4, 0x03CBL, (-8L), 0x24FCL, ((VECTOR(int16_t, 4))(0x4562L)), ((VECTOR(int16_t, 2))(2L)), (-7L), 0L)).se)) & p_1375->g_66[2][4]), 0x39L, (-1L), 1L, 0x65L, (-7L), 0L, ((VECTOR(int8_t, 4))(0x20L)))).se5 != ((VECTOR(int8_t, 2))((-7L)))))), (-1L), 0x28L)).even))).xyyxxxxx, (int8_t)(**p_1375->g_356), (int8_t)0x65L))), ((VECTOR(int8_t, 2))(0L)), ((VECTOR(int8_t, 2))((-1L))), 4L, 5L)).odd, ((VECTOR(uint8_t, 8))(7UL))))).s7), 0x3DEBL)) & (*****l_299));
    return (***l_299);
}


/* ------------------------------------------ */
/* 
 * reads : p_1375->g_43 p_1375->g_44 p_1375->g_67 p_1375->g_42 p_1375->g_128 p_1375->g_66 p_1375->g_73 p_1375->g_64 p_1375->g_138 p_1375->g_143 p_1375->g_148 p_1375->g_179 p_1375->g_200 p_1375->g_201 p_1375->g_202 p_1375->g_61 p_1375->g_250 p_1375->g_251 p_1375->g_260 p_1375->g_262 p_1375->g_261
 * writes: p_1375->g_67 p_1375->g_128 p_1375->g_202 p_1375->g_61
 */
int32_t *** func_108(uint32_t  p_109, int32_t  p_110, int8_t * p_111, uint8_t  p_112, struct S0 * p_1375)
{ /* block id: 21 */
    int32_t *l_115 = (void*)0;
    int32_t l_120 = (-7L);
    int32_t **l_126 = &l_115;
    int32_t l_158 = 0L;
    int32_t l_160 = 0x4C086913L;
    int32_t l_163 = 0L;
    int32_t l_164 = 0x338DBA4FL;
    int32_t l_165[8][10] = {{1L,(-8L),2L,1L,2L,(-8L),1L,0x097FD118L,0L,0x721D8526L},{1L,(-8L),2L,1L,2L,(-8L),1L,0x097FD118L,0L,0x721D8526L},{1L,(-8L),2L,1L,2L,(-8L),1L,0x097FD118L,0L,0x721D8526L},{1L,(-8L),2L,1L,2L,(-8L),1L,0x097FD118L,0L,0x721D8526L},{1L,(-8L),2L,1L,2L,(-8L),1L,0x097FD118L,0L,0x721D8526L},{1L,(-8L),2L,1L,2L,(-8L),1L,0x097FD118L,0L,0x721D8526L},{1L,(-8L),2L,1L,2L,(-8L),1L,0x097FD118L,0L,0x721D8526L},{1L,(-8L),2L,1L,2L,(-8L),1L,0x097FD118L,0L,0x721D8526L}};
    VECTOR(int32_t, 16) l_180 = (VECTOR(int32_t, 16))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 1L), 1L), 1L, 0L, 1L, (VECTOR(int32_t, 2))(0L, 1L), (VECTOR(int32_t, 2))(0L, 1L), 0L, 1L, 0L, 1L);
    uint16_t l_198 = 0x9F0DL;
    int16_t *l_280 = (void*)0;
    int16_t **l_279[5][9] = {{&l_280,&l_280,&l_280,&l_280,(void*)0,&l_280,&l_280,(void*)0,&l_280},{&l_280,&l_280,&l_280,&l_280,(void*)0,&l_280,&l_280,(void*)0,&l_280},{&l_280,&l_280,&l_280,&l_280,(void*)0,&l_280,&l_280,(void*)0,&l_280},{&l_280,&l_280,&l_280,&l_280,(void*)0,&l_280,&l_280,(void*)0,&l_280},{&l_280,&l_280,&l_280,&l_280,(void*)0,&l_280,&l_280,(void*)0,&l_280}};
    uint32_t l_286[10] = {0xB18FD823L,0x66BD2A75L,0xB18FD823L,0xB18FD823L,0x66BD2A75L,0xB18FD823L,0xB18FD823L,0x66BD2A75L,0xB18FD823L,0xB18FD823L};
    int i, j;
    if ((*p_1375->g_43))
    { /* block id: 22 */
        int32_t *l_114 = &p_1375->g_44;
        p_110 |= (-1L);
        l_115 = l_114;
        for (p_1375->g_67 = 20; (p_1375->g_67 >= 45); p_1375->g_67 = safe_add_func_int32_t_s_s(p_1375->g_67, 1))
        { /* block id: 27 */
            l_115 = (*p_1375->g_42);
        }
    }
    else
    { /* block id: 30 */
        int32_t l_118 = 0L;
        int32_t *l_119 = (void*)0;
        VECTOR(int64_t, 4) l_121 = (VECTOR(int64_t, 4))(8L, (VECTOR(int64_t, 2))(8L, (-5L)), (-5L));
        int32_t **l_123 = &p_1375->g_43;
        int32_t ***l_122 = &l_123;
        int32_t **l_125[10] = {(void*)0,&l_119,&l_119,&l_119,(void*)0,(void*)0,&l_119,&l_119,&l_119,(void*)0};
        int32_t ***l_124[10] = {(void*)0,&p_1375->g_42,(void*)0,&p_1375->g_42,(void*)0,(void*)0,&p_1375->g_42,(void*)0,&p_1375->g_42,(void*)0};
        uint32_t *l_127 = &p_1375->g_128;
        uint8_t *l_135[1][3];
        VECTOR(uint64_t, 8) l_234 = (VECTOR(uint64_t, 8))(0xDC589E3AFAC9E9EDL, (VECTOR(uint64_t, 4))(0xDC589E3AFAC9E9EDL, (VECTOR(uint64_t, 2))(0xDC589E3AFAC9E9EDL, 0x1C7D144D72B920CDL), 0x1C7D144D72B920CDL), 0x1C7D144D72B920CDL, 0xDC589E3AFAC9E9EDL, 0x1C7D144D72B920CDL);
        int16_t *l_277 = (void*)0;
        int16_t **l_276[3][2][7] = {{{(void*)0,(void*)0,&l_277,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&l_277,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,&l_277,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&l_277,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,&l_277,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,&l_277,(void*)0,(void*)0,(void*)0,(void*)0}}};
        int i, j, k;
        for (i = 0; i < 1; i++)
        {
            for (j = 0; j < 3; j++)
                l_135[i][j] = &p_1375->g_67;
        }
        l_120 = l_118;
        if ((((VECTOR(int64_t, 2))(l_121.zz)).odd && (((((void*)0 != &l_119) == (((*l_122) = &l_115) == (l_126 = &l_115))) ^ ((*l_127)--)) == (safe_add_func_uint16_t_u_u(p_109, (safe_mul_func_uint8_t_u_u((p_1375->g_67 = p_1375->g_66[0][4]), p_1375->g_73.s2)))))))
        { /* block id: 36 */
            int32_t ***l_139 = &l_126;
            int32_t ****l_140 = &l_124[3];
            int32_t l_154 = 0x57D00FE4L;
            int32_t l_156 = 7L;
            int32_t l_157 = 1L;
            int32_t l_159 = 0L;
            int32_t l_161 = (-9L);
            int32_t l_167 = (-1L);
            int32_t l_168 = 0x5C53A74DL;
            int32_t l_169 = 1L;
            int32_t l_170 = 0L;
            uint64_t l_172 = 0x5FD976915BE6F43FL;
            VECTOR(uint16_t, 2) l_188 = (VECTOR(uint16_t, 2))(0xB5DDL, 0UL);
            int32_t l_191 = 0x0EF0C6DEL;
            VECTOR(int64_t, 16) l_227 = (VECTOR(int64_t, 16))(2L, (VECTOR(int64_t, 4))(2L, (VECTOR(int64_t, 2))(2L, (-1L)), (-1L)), (-1L), 2L, (-1L), (VECTOR(int64_t, 2))(2L, (-1L)), (VECTOR(int64_t, 2))(2L, (-1L)), 2L, (-1L), 2L, (-1L));
            uint32_t **l_233 = &l_127;
            VECTOR(uint32_t, 4) l_249 = (VECTOR(uint32_t, 4))(4UL, (VECTOR(uint32_t, 2))(4UL, 8UL), 8UL);
            int16_t ***l_278[7];
            int i;
            for (i = 0; i < 7; i++)
                l_278[i] = &l_276[1][0][6];
            if ((safe_mod_func_uint64_t_u_u(((~(p_1375->g_64[1] , (((VECTOR(int16_t, 16))(clz(((VECTOR(int16_t, 8))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 8),((VECTOR(int16_t, 8))(p_1375->g_138.wxzxyyyz)), ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(safe_clamp_func(VECTOR(int16_t, 8),int16_t,((VECTOR(int16_t, 4))((~((VECTOR(int16_t, 16))((-8L), 0x0BC2L, ((FAKE_DIVERGE(p_1375->local_1_offset, get_local_id(1), 10) & (18446744073709551615UL & (((*l_140) = l_139) != &p_1375->g_42))) != ((safe_div_func_int64_t_s_s((p_1375->g_143 == &l_139), (safe_mul_func_uint16_t_u_u((safe_div_func_int64_t_s_s((p_1375->g_138.y > 0x5857L), p_1375->g_73.s6)), p_1375->g_67)))) > (**p_1375->g_42))), ((VECTOR(int16_t, 8))(0x51D5L)), (-1L), ((VECTOR(int16_t, 4))(1L)))).s9db0))).yxxxzwyw, (int16_t)p_1375->g_148, (int16_t)(-8L)))), 0x7C49L, ((VECTOR(int16_t, 2))((-1L))), 0x7316L, 0x027AL, p_1375->g_64[0], 1L, 0x6252L)).lo, ((VECTOR(int16_t, 8))((-2L)))))).s3171065554463023))).s8 , 0x1E2E1E1BL))) ^ p_109), GROUP_DIVERGE(1, 1))))
            { /* block id: 38 */
                uint64_t l_149 = 0UL;
                int32_t l_152 = 0L;
                int32_t l_153 = 0x25100E80L;
                int32_t l_155 = (-4L);
                int32_t l_162 = (-9L);
                int32_t l_166 = 1L;
                int32_t l_171[8];
                int32_t ****l_177 = &l_124[9];
                int32_t *****l_178 = &l_140;
                uint64_t l_195 = 0xEA8323AD6F662FD8L;
                VECTOR(uint8_t, 4) l_203 = (VECTOR(uint8_t, 4))(0x75L, (VECTOR(uint8_t, 2))(0x75L, 0xEDL), 0xEDL);
                uint32_t **l_231 = &l_127;
                int i;
                for (i = 0; i < 8; i++)
                    l_171[i] = 0x454307DCL;
                ++l_149;
                l_172++;
                if ((safe_rshift_func_int16_t_s_s((l_177 != ((*l_178) = l_177)), 11)))
                { /* block id: 42 */
                    if (((void*)0 != &p_1375->g_42))
                    { /* block id: 43 */
                        return &p_1375->g_42;
                    }
                    else
                    { /* block id: 45 */
                        p_110 = ((VECTOR(int32_t, 8))((~((VECTOR(int32_t, 8))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 4))(p_1375->g_179.s7f10)).yzxxywyz, ((VECTOR(int32_t, 8))(l_180.s907b58f5)))))))).s2;
                        return &p_1375->g_42;
                    }
                }
                else
                { /* block id: 49 */
                    uint8_t l_192 = 0x97L;
                    uint64_t *l_199 = &l_172;
                    uint32_t **l_216 = &l_127;
                    int16_t *l_219 = (void*)0;
                    int16_t *l_220 = (void*)0;
                    int16_t *l_221 = (void*)0;
                    int16_t *l_222 = (void*)0;
                    int16_t *l_223 = (void*)0;
                    int16_t *l_224 = (void*)0;
                    int16_t *l_225 = (void*)0;
                    int32_t l_226 = 0x525ABC53L;
                    int64_t *l_228[1];
                    int32_t l_230 = 1L;
                    uint32_t l_271 = 0x6502CA6FL;
                    int i;
                    for (i = 0; i < 1; i++)
                        l_228[i] = &p_1375->g_229;
                    for (p_110 = 0; (p_110 > (-7)); p_110 = safe_sub_func_int32_t_s_s(p_110, 8))
                    { /* block id: 52 */
                        int16_t l_183 = 0x2B75L;
                        if (l_183)
                            break;
                        if ((*p_1375->g_43))
                            break;
                        l_192 = (safe_sub_func_uint32_t_u_u(p_1375->g_138.w, ((safe_mul_func_uint16_t_u_u(((VECTOR(uint16_t, 16))(l_188.yyxxyyxyxxxyxyxx)).s4, (((p_112 == (safe_add_func_uint16_t_u_u((p_110 || ((&p_109 != ((p_1375->g_138.w >= (((((*l_127) = p_1375->g_44) == (p_1375->g_179.s9 ^ p_1375->g_138.y)) >= p_110) < p_112)) , (void*)0)) || p_1375->g_66[0][3])), p_110))) <= l_183) | 65526UL))) & l_191)));
                        (**l_139) = (*p_1375->g_42);
                    }
                    if ((safe_div_func_int64_t_s_s(p_112, ((l_195 = (p_109 == p_110)) & ((l_230 = (((((((*l_199) = (safe_sub_func_int64_t_s_s(0x1EA1156754FE3FCEL, l_198))) , ((VECTOR(uint8_t, 16))(255UL, ((VECTOR(uint8_t, 4))(rhadd(((VECTOR(uint8_t, 16))(mad_hi(((VECTOR(uint8_t, 4))(1UL, ((VECTOR(uint8_t, 2))(rhadd(((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 4))(rotate(((VECTOR(uint8_t, 4))(rhadd(((VECTOR(uint8_t, 16))(p_1375->g_200.s4037372107107140)).s7ac5, ((VECTOR(uint8_t, 2))(rhadd(((VECTOR(uint8_t, 4))(p_1375->g_201.yyyy)).even, ((VECTOR(uint8_t, 2))(mul_hi(((VECTOR(uint8_t, 16))(rhadd(((VECTOR(uint8_t, 4))(p_1375->g_202.xyyy)).wwxxzyyzwwwxxwww, ((VECTOR(uint8_t, 2))((+((VECTOR(uint8_t, 4))(sub_sat(((VECTOR(uint8_t, 8))(0x23L, ((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 4))(clz(((VECTOR(uint8_t, 2))(255UL, 0x1DL)).yyxy))).hi ^ ((VECTOR(uint8_t, 16))(l_203.zwyzxyxxwxwzxxxx)).s35))), (((safe_add_func_uint64_t_u_u((safe_mul_func_uint8_t_u_u((safe_add_func_int8_t_s_s(((*p_111) = ((safe_lshift_func_int8_t_s_s(((GROUP_DIVERGE(1, 1) <= (((l_226 = (safe_add_func_int64_t_s_s((((safe_lshift_func_int16_t_s_s((p_109 , ((&p_1375->g_128 == ((*l_216) = &p_109)) <= (safe_mod_func_int32_t_s_s(((p_1375->g_202.y ^= p_1375->g_73.s8) < p_1375->g_66[0][3]), 0xCBD431B5L)))), p_1375->g_61)) >= 0x8BL) != p_109), p_112))) == p_1375->g_201.y) && 0x72215854DA350092L)) , p_1375->g_66[2][8]), 1)) != p_110)), l_227.sa)), p_1375->g_44)), FAKE_DIVERGE(p_1375->group_0_offset, get_group_id(0), 10))) >= p_110) > 0x7142950DD1DF32BEL), 0x07L, ((VECTOR(uint8_t, 2))(255UL)), 255UL)).odd, ((VECTOR(uint8_t, 4))(0x0CL))))).even))).yyxxyyxxyxxxyxxy))).s58, ((VECTOR(uint8_t, 2))(0xF6L)))))))).yyxx))), ((VECTOR(uint8_t, 4))(3UL))))).wzxzwzwzwyxyzyyw & ((VECTOR(uint8_t, 16))(0x73L))))).sc4, ((VECTOR(uint8_t, 2))(0x7DL))))), 6UL)).wzwxxxxwyxyzzyww, ((VECTOR(uint8_t, 16))(0x4DL)), ((VECTOR(uint8_t, 16))(0x1BL))))).sfa22, ((VECTOR(uint8_t, 4))(0x2EL))))), ((VECTOR(uint8_t, 2))(0UL)), 0x40L, 1UL, ((VECTOR(uint8_t, 4))(0UL)), p_1375->g_179.sb, 0xF9L, 0UL)).s7) || 0x9BL) , (-1L)) > (**p_1375->g_42)) , p_1375->g_73.s0)) , p_1375->g_64[0])))))
                    { /* block id: 66 */
                        uint32_t ***l_232 = (void*)0;
                        int32_t ******l_263 = &l_178;
                        int16_t *l_266 = (void*)0;
                        int16_t *l_267 = (void*)0;
                        int16_t *l_268 = (void*)0;
                        int16_t *l_269[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                        uint64_t l_270 = 18446744073709551615UL;
                        int i;
                        l_233 = l_231;
                        l_271 = ((((VECTOR(uint64_t, 4))(l_234.s7213)).z || (safe_sub_func_uint8_t_u_u(((safe_lshift_func_uint16_t_u_s((0x43L && (safe_lshift_func_uint8_t_u_s((safe_mod_func_int8_t_s_s((safe_sub_func_uint32_t_u_u(((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 2))(min(((VECTOR(uint32_t, 2))(4UL, 0UL)), ((VECTOR(uint32_t, 2))(l_249.xy))))).xyyxyyxy + ((VECTOR(uint32_t, 4))(p_1375->g_250.xxxx)).wxzwyyyy))).even - ((VECTOR(uint32_t, 16))(sub_sat(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(rhadd(((VECTOR(uint32_t, 16))(p_1375->g_251.xyxxyxyyxyyxyxxy)).s9513, ((VECTOR(uint32_t, 4))((safe_div_func_int16_t_s_s((-1L), (safe_mul_func_int8_t_s_s((safe_rshift_func_int8_t_s_s(((0x5388L && (l_270 = (safe_mod_func_int8_t_s_s((((*l_263) = p_1375->g_260) == (p_1375->g_202.x , &l_140)), ((safe_rshift_func_uint16_t_u_u(0xB878L, p_1375->g_250.x)) || p_110))))) >= 0x1AL), 3)), p_1375->g_66[0][3])))), GROUP_DIVERGE(1, 1), 0xC8FE4D0BL, 4294967293UL))))), ((VECTOR(uint32_t, 2))(4294967295UL)), 4294967295UL, 0UL)).s6627244310543647, ((VECTOR(uint32_t, 16))(3UL))))).s4fb7))).z, 4294967289UL)), p_1375->g_200.s5)), p_1375->g_138.x))), l_226)) || 1UL), p_109))) <= 0x0BE39DC0D136BAE7L);
                    }
                    else
                    { /* block id: 71 */
                        int8_t *l_275 = (void*)0;
                        int8_t **l_274 = &l_275;
                        p_110 &= ((--(**l_233)) , ((p_1375->g_128 , p_111) != ((*l_274) = &p_1375->g_61)));
                        (**l_139) = (**p_1375->g_262);
                        return (**p_1375->g_260);
                    }
                }
            }
            else
            { /* block id: 79 */
                p_110 |= 1L;
            }
            l_279[1][7] = l_276[1][1][1];
        }
        else
        { /* block id: 83 */
            int64_t l_281 = 0x483A24B7C9761689L;
            int32_t l_282 = 0x6B740504L;
            int32_t l_283 = 0x22C585B5L;
            int32_t l_284 = 0x2DA1DB88L;
            int32_t l_285 = 0x316FF692L;
            --l_286[2];
        }
        for (l_120 = 0; (l_120 == 5); l_120 = safe_add_func_uint16_t_u_u(l_120, 3))
        { /* block id: 88 */
            int32_t *l_291 = &l_158;
            l_291 = (*l_126);
        }
    }
    return (**p_1375->g_260);
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S0 c_1376;
    struct S0* p_1375 = &c_1376;
    struct S0 c_1377 = {
        {0L,0L,0L,0L,0L,0L,0L,0L}, // p_1375->g_5
        {&p_1375->g_5[5],&p_1375->g_5[5],&p_1375->g_5[5],&p_1375->g_5[5]}, // p_1375->g_4
        (VECTOR(uint8_t, 4))(0x20L, (VECTOR(uint8_t, 2))(0x20L, 0x60L), 0x60L), // p_1375->g_23
        (VECTOR(uint16_t, 2))(0xA7DBL, 0UL), // p_1375->g_34
        (-10L), // p_1375->g_44
        &p_1375->g_44, // p_1375->g_43
        &p_1375->g_43, // p_1375->g_42
        (-1L), // p_1375->g_61
        {1L,1L}, // p_1375->g_64
        {{0UL,1UL,0UL,0UL,1UL,0UL,0UL,1UL,0UL,0UL},{0UL,1UL,0UL,0UL,1UL,0UL,0UL,1UL,0UL,0UL},{0UL,1UL,0UL,0UL,1UL,0UL,0UL,1UL,0UL,0UL}}, // p_1375->g_66
        2UL, // p_1375->g_67
        (VECTOR(int32_t, 16))(0x7A75E415L, (VECTOR(int32_t, 4))(0x7A75E415L, (VECTOR(int32_t, 2))(0x7A75E415L, 0x2D1A88BBL), 0x2D1A88BBL), 0x2D1A88BBL, 0x7A75E415L, 0x2D1A88BBL, (VECTOR(int32_t, 2))(0x7A75E415L, 0x2D1A88BBL), (VECTOR(int32_t, 2))(0x7A75E415L, 0x2D1A88BBL), 0x7A75E415L, 0x2D1A88BBL, 0x7A75E415L, 0x2D1A88BBL), // p_1375->g_73
        5UL, // p_1375->g_128
        (VECTOR(int16_t, 4))((-5L), (VECTOR(int16_t, 2))((-5L), 0L), 0L), // p_1375->g_138
        (void*)0, // p_1375->g_143
        0x60179320L, // p_1375->g_148
        (VECTOR(int32_t, 16))(6L, (VECTOR(int32_t, 4))(6L, (VECTOR(int32_t, 2))(6L, 0x57B2827CL), 0x57B2827CL), 0x57B2827CL, 6L, 0x57B2827CL, (VECTOR(int32_t, 2))(6L, 0x57B2827CL), (VECTOR(int32_t, 2))(6L, 0x57B2827CL), 6L, 0x57B2827CL, 6L, 0x57B2827CL), // p_1375->g_179
        (VECTOR(uint8_t, 8))(0xD7L, (VECTOR(uint8_t, 4))(0xD7L, (VECTOR(uint8_t, 2))(0xD7L, 1UL), 1UL), 1UL, 0xD7L, 1UL), // p_1375->g_200
        (VECTOR(uint8_t, 2))(0UL, 255UL), // p_1375->g_201
        (VECTOR(uint8_t, 2))(0x08L, 247UL), // p_1375->g_202
        7L, // p_1375->g_229
        (VECTOR(uint32_t, 2))(1UL, 0x99693990L), // p_1375->g_250
        (VECTOR(uint32_t, 2))(0x1CABA2B9L, 0xFF87EAEEL), // p_1375->g_251
        &p_1375->g_42, // p_1375->g_262
        &p_1375->g_262, // p_1375->g_261
        &p_1375->g_261, // p_1375->g_260
        0x63F446E6B259F250L, // p_1375->g_304
        &p_1375->g_128, // p_1375->g_309
        &p_1375->g_309, // p_1375->g_308
        &p_1375->g_308, // p_1375->g_307
        0xAB95L, // p_1375->g_311
        (VECTOR(uint16_t, 8))(65527UL, (VECTOR(uint16_t, 4))(65527UL, (VECTOR(uint16_t, 2))(65527UL, 65529UL), 65529UL), 65529UL, 65527UL, 65529UL), // p_1375->g_313
        (VECTOR(uint16_t, 8))(0xCE08L, (VECTOR(uint16_t, 4))(0xCE08L, (VECTOR(uint16_t, 2))(0xCE08L, 0x7112L), 0x7112L), 0x7112L, 0xCE08L, 0x7112L), // p_1375->g_338
        (VECTOR(uint8_t, 4))(0xC3L, (VECTOR(uint8_t, 2))(0xC3L, 6UL), 6UL), // p_1375->g_343
        &p_1375->g_61, // p_1375->g_357
        &p_1375->g_357, // p_1375->g_356
        (VECTOR(int8_t, 8))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0x34L), 0x34L), 0x34L, 0L, 0x34L), // p_1375->g_382
        (VECTOR(int8_t, 8))(0x2BL, (VECTOR(int8_t, 4))(0x2BL, (VECTOR(int8_t, 2))(0x2BL, 0x38L), 0x38L), 0x38L, 0x2BL, 0x38L), // p_1375->g_383
        (VECTOR(int8_t, 8))(0x09L, (VECTOR(int8_t, 4))(0x09L, (VECTOR(int8_t, 2))(0x09L, 0x1DL), 0x1DL), 0x1DL, 0x09L, 0x1DL), // p_1375->g_384
        (VECTOR(int8_t, 4))(0x32L, (VECTOR(int8_t, 2))(0x32L, 0x08L), 0x08L), // p_1375->g_385
        4UL, // p_1375->g_391
        0x24L, // p_1375->g_397
        (void*)0, // p_1375->g_417
        (void*)0, // p_1375->g_472
        (void*)0, // p_1375->g_495
        (VECTOR(uint64_t, 16))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 0x1465BAC9EFC2515AL), 0x1465BAC9EFC2515AL), 0x1465BAC9EFC2515AL, 1UL, 0x1465BAC9EFC2515AL, (VECTOR(uint64_t, 2))(1UL, 0x1465BAC9EFC2515AL), (VECTOR(uint64_t, 2))(1UL, 0x1465BAC9EFC2515AL), 1UL, 0x1465BAC9EFC2515AL, 1UL, 0x1465BAC9EFC2515AL), // p_1375->g_513
        (VECTOR(uint64_t, 4))(18446744073709551612UL, (VECTOR(uint64_t, 2))(18446744073709551612UL, 0x2170F9BFF871E71BL), 0x2170F9BFF871E71BL), // p_1375->g_516
        (void*)0, // p_1375->g_568
        (VECTOR(uint8_t, 2))(0xB1L, 0UL), // p_1375->g_588
        (void*)0, // p_1375->g_610
        4294967289UL, // p_1375->g_618
        (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x6070CE3DL), 0x6070CE3DL), 0x6070CE3DL, 1L, 0x6070CE3DL), // p_1375->g_629
        (VECTOR(int32_t, 2))(0x6E5B0BABL, 0x4C11D3A9L), // p_1375->g_633
        (VECTOR(uint64_t, 2))(9UL, 0x1B350854C3C43FC4L), // p_1375->g_654
        (VECTOR(int8_t, 8))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0x19L), 0x19L), 0x19L, 0L, 0x19L), // p_1375->g_665
        (void*)0, // p_1375->g_669
        (VECTOR(uint8_t, 2))(255UL, 1UL), // p_1375->g_672
        0x0EB1B9ACL, // p_1375->g_694
        9UL, // p_1375->g_695
        0x1A442F04L, // p_1375->g_700
        (VECTOR(int64_t, 2))(0x24C10DE8DFCA9A6BL, 1L), // p_1375->g_721
        (VECTOR(uint32_t, 16))(1UL, (VECTOR(uint32_t, 4))(1UL, (VECTOR(uint32_t, 2))(1UL, 4294967287UL), 4294967287UL), 4294967287UL, 1UL, 4294967287UL, (VECTOR(uint32_t, 2))(1UL, 4294967287UL), (VECTOR(uint32_t, 2))(1UL, 4294967287UL), 1UL, 4294967287UL, 1UL, 4294967287UL), // p_1375->g_764
        (VECTOR(int64_t, 16))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 0L), 0L), 0L, 1L, 0L, (VECTOR(int64_t, 2))(1L, 0L), (VECTOR(int64_t, 2))(1L, 0L), 1L, 0L, 1L, 0L), // p_1375->g_777
        {0x52L,0x52L,0x52L,0x52L,0x52L,0x52L,0x52L,0x52L,0x52L,0x52L}, // p_1375->g_812
        {{{0x62EFA453L,0L,1L},{0x62EFA453L,0L,1L},{0x62EFA453L,0L,1L},{0x62EFA453L,0L,1L},{0x62EFA453L,0L,1L},{0x62EFA453L,0L,1L},{0x62EFA453L,0L,1L}},{{0x62EFA453L,0L,1L},{0x62EFA453L,0L,1L},{0x62EFA453L,0L,1L},{0x62EFA453L,0L,1L},{0x62EFA453L,0L,1L},{0x62EFA453L,0L,1L},{0x62EFA453L,0L,1L}},{{0x62EFA453L,0L,1L},{0x62EFA453L,0L,1L},{0x62EFA453L,0L,1L},{0x62EFA453L,0L,1L},{0x62EFA453L,0L,1L},{0x62EFA453L,0L,1L},{0x62EFA453L,0L,1L}}}, // p_1375->g_847
        &p_1375->g_847[1][2][2], // p_1375->g_846
        (VECTOR(int32_t, 16))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 1L), 1L), 1L, 1L, 1L, (VECTOR(int32_t, 2))(1L, 1L), (VECTOR(int32_t, 2))(1L, 1L), 1L, 1L, 1L, 1L), // p_1375->g_848
        (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, 4L), 4L), // p_1375->g_878
        (VECTOR(int64_t, 2))(0L, 0x7B24CEEE96D57600L), // p_1375->g_895
        (VECTOR(int8_t, 16))(0x42L, (VECTOR(int8_t, 4))(0x42L, (VECTOR(int8_t, 2))(0x42L, 0x4CL), 0x4CL), 0x4CL, 0x42L, 0x4CL, (VECTOR(int8_t, 2))(0x42L, 0x4CL), (VECTOR(int8_t, 2))(0x42L, 0x4CL), 0x42L, 0x4CL, 0x42L, 0x4CL), // p_1375->g_924
        (VECTOR(int8_t, 4))(3L, (VECTOR(int8_t, 2))(3L, 0x3FL), 0x3FL), // p_1375->g_927
        (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0x19L), 0x19L), // p_1375->g_928
        (VECTOR(int8_t, 4))(3L, (VECTOR(int8_t, 2))(3L, 0L), 0L), // p_1375->g_935
        (VECTOR(int8_t, 8))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 2L), 2L), 2L, 0L, 2L), // p_1375->g_937
        (VECTOR(int8_t, 8))(5L, (VECTOR(int8_t, 4))(5L, (VECTOR(int8_t, 2))(5L, 8L), 8L), 8L, 5L, 8L), // p_1375->g_938
        (VECTOR(uint32_t, 4))(0xEDAFB1AFL, (VECTOR(uint32_t, 2))(0xEDAFB1AFL, 4294967295UL), 4294967295UL), // p_1375->g_962
        (VECTOR(int32_t, 16))(0x2A3A5F71L, (VECTOR(int32_t, 4))(0x2A3A5F71L, (VECTOR(int32_t, 2))(0x2A3A5F71L, 6L), 6L), 6L, 0x2A3A5F71L, 6L, (VECTOR(int32_t, 2))(0x2A3A5F71L, 6L), (VECTOR(int32_t, 2))(0x2A3A5F71L, 6L), 0x2A3A5F71L, 6L, 0x2A3A5F71L, 6L), // p_1375->g_1018
        (VECTOR(uint64_t, 4))(0x7B0C223F8F52B3ECL, (VECTOR(uint64_t, 2))(0x7B0C223F8F52B3ECL, 9UL), 9UL), // p_1375->g_1034
        (VECTOR(int32_t, 2))(0L, 0x1CFD2518L), // p_1375->g_1051
        (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x290FCE5FL), 0x290FCE5FL), 0x290FCE5FL, (-1L), 0x290FCE5FL, (VECTOR(int32_t, 2))((-1L), 0x290FCE5FL), (VECTOR(int32_t, 2))((-1L), 0x290FCE5FL), (-1L), 0x290FCE5FL, (-1L), 0x290FCE5FL), // p_1375->g_1052
        &p_1375->g_568, // p_1375->g_1065
        &p_1375->g_1065, // p_1375->g_1064
        &p_1375->g_1064, // p_1375->g_1063
        (VECTOR(int8_t, 2))(7L, 7L), // p_1375->g_1070
        (VECTOR(int8_t, 2))(0L, 0x12L), // p_1375->g_1072
        (VECTOR(uint16_t, 8))(0x98AFL, (VECTOR(uint16_t, 4))(0x98AFL, (VECTOR(uint16_t, 2))(0x98AFL, 65530UL), 65530UL), 65530UL, 0x98AFL, 65530UL), // p_1375->g_1089
        (VECTOR(uint16_t, 2))(0xACADL, 8UL), // p_1375->g_1090
        (VECTOR(uint16_t, 16))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 0xAF03L), 0xAF03L), 0xAF03L, 65535UL, 0xAF03L, (VECTOR(uint16_t, 2))(65535UL, 0xAF03L), (VECTOR(uint16_t, 2))(65535UL, 0xAF03L), 65535UL, 0xAF03L, 65535UL, 0xAF03L), // p_1375->g_1091
        (VECTOR(uint16_t, 16))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0xF77CL), 0xF77CL), 0xF77CL, 0UL, 0xF77CL, (VECTOR(uint16_t, 2))(0UL, 0xF77CL), (VECTOR(uint16_t, 2))(0UL, 0xF77CL), 0UL, 0xF77CL, 0UL, 0xF77CL), // p_1375->g_1094
        (VECTOR(uint8_t, 2))(0xEFL, 0x88L), // p_1375->g_1103
        (VECTOR(uint8_t, 4))(0xB7L, (VECTOR(uint8_t, 2))(0xB7L, 1UL), 1UL), // p_1375->g_1104
        (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x56953519L), 0x56953519L), // p_1375->g_1115
        (VECTOR(uint8_t, 16))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 7UL), 7UL), 7UL, 255UL, 7UL, (VECTOR(uint8_t, 2))(255UL, 7UL), (VECTOR(uint8_t, 2))(255UL, 7UL), 255UL, 7UL, 255UL, 7UL), // p_1375->g_1122
        (VECTOR(uint8_t, 2))(0x42L, 0x4BL), // p_1375->g_1129
        (void*)0, // p_1375->g_1148
        {{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0}}}, // p_1375->g_1151
        (VECTOR(uint64_t, 2))(0x1D8CE22FDC0246C9L, 0x8D364C82BA7FD843L), // p_1375->g_1157
        (VECTOR(uint64_t, 16))(18446744073709551615UL, (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0UL), 0UL), 0UL, 18446744073709551615UL, 0UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0UL), (VECTOR(uint64_t, 2))(18446744073709551615UL, 0UL), 18446744073709551615UL, 0UL, 18446744073709551615UL, 0UL), // p_1375->g_1186
        (VECTOR(uint64_t, 4))(2UL, (VECTOR(uint64_t, 2))(2UL, 0x21F03DEE235C8312L), 0x21F03DEE235C8312L), // p_1375->g_1190
        (VECTOR(uint64_t, 2))(1UL, 18446744073709551614UL), // p_1375->g_1198
        (VECTOR(uint64_t, 16))(5UL, (VECTOR(uint64_t, 4))(5UL, (VECTOR(uint64_t, 2))(5UL, 1UL), 1UL), 1UL, 5UL, 1UL, (VECTOR(uint64_t, 2))(5UL, 1UL), (VECTOR(uint64_t, 2))(5UL, 1UL), 5UL, 1UL, 5UL, 1UL), // p_1375->g_1218
        (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 18446744073709551615UL), 18446744073709551615UL), // p_1375->g_1221
        (VECTOR(uint64_t, 8))(0x412E4276DFF23C9CL, (VECTOR(uint64_t, 4))(0x412E4276DFF23C9CL, (VECTOR(uint64_t, 2))(0x412E4276DFF23C9CL, 18446744073709551615UL), 18446744073709551615UL), 18446744073709551615UL, 0x412E4276DFF23C9CL, 18446744073709551615UL), // p_1375->g_1222
        {&p_1375->g_495,&p_1375->g_495,&p_1375->g_495,&p_1375->g_495,&p_1375->g_495,&p_1375->g_495,&p_1375->g_495,&p_1375->g_495}, // p_1375->g_1246
        (VECTOR(int32_t, 8))(0x247D8541L, (VECTOR(int32_t, 4))(0x247D8541L, (VECTOR(int32_t, 2))(0x247D8541L, (-3L)), (-3L)), (-3L), 0x247D8541L, (-3L)), // p_1375->g_1250
        {{0x6F89EEAEL}}, // p_1375->g_1258
        0x8126L, // p_1375->g_1269
        0x4E06254ADFB5E8C3L, // p_1375->g_1329
        0L, // p_1375->g_1330
        (VECTOR(int32_t, 16))(0x676AFD4FL, (VECTOR(int32_t, 4))(0x676AFD4FL, (VECTOR(int32_t, 2))(0x676AFD4FL, 0x6DA77310L), 0x6DA77310L), 0x6DA77310L, 0x676AFD4FL, 0x6DA77310L, (VECTOR(int32_t, 2))(0x676AFD4FL, 0x6DA77310L), (VECTOR(int32_t, 2))(0x676AFD4FL, 0x6DA77310L), 0x676AFD4FL, 0x6DA77310L, 0x676AFD4FL, 0x6DA77310L), // p_1375->g_1349
        (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 0x62FCL), 0x62FCL), // p_1375->g_1351
        (VECTOR(uint16_t, 4))(0x207AL, (VECTOR(uint16_t, 2))(0x207AL, 65535UL), 65535UL), // p_1375->g_1352
        (VECTOR(int32_t, 2))(0x3D835AADL, 0x24964621L), // p_1375->g_1353
        1UL, // p_1375->g_1372
        sequence_input[get_global_id(0)], // p_1375->global_0_offset
        sequence_input[get_global_id(1)], // p_1375->global_1_offset
        sequence_input[get_global_id(2)], // p_1375->global_2_offset
        sequence_input[get_local_id(0)], // p_1375->local_0_offset
        sequence_input[get_local_id(1)], // p_1375->local_1_offset
        sequence_input[get_local_id(2)], // p_1375->local_2_offset
        sequence_input[get_group_id(0)], // p_1375->group_0_offset
        sequence_input[get_group_id(1)], // p_1375->group_1_offset
        sequence_input[get_group_id(2)], // p_1375->group_2_offset
    };
    c_1376 = c_1377;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1375);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    for (i = 0; i < 8; i++)
    {
        transparent_crc(p_1375->g_5[i], "p_1375->g_5[i]", print_hash_value);

    }
    transparent_crc(p_1375->g_23.x, "p_1375->g_23.x", print_hash_value);
    transparent_crc(p_1375->g_23.y, "p_1375->g_23.y", print_hash_value);
    transparent_crc(p_1375->g_23.z, "p_1375->g_23.z", print_hash_value);
    transparent_crc(p_1375->g_23.w, "p_1375->g_23.w", print_hash_value);
    transparent_crc(p_1375->g_34.x, "p_1375->g_34.x", print_hash_value);
    transparent_crc(p_1375->g_34.y, "p_1375->g_34.y", print_hash_value);
    transparent_crc(p_1375->g_44, "p_1375->g_44", print_hash_value);
    transparent_crc(p_1375->g_61, "p_1375->g_61", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1375->g_64[i], "p_1375->g_64[i]", print_hash_value);

    }
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 10; j++)
        {
            transparent_crc(p_1375->g_66[i][j], "p_1375->g_66[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1375->g_67, "p_1375->g_67", print_hash_value);
    transparent_crc(p_1375->g_73.s0, "p_1375->g_73.s0", print_hash_value);
    transparent_crc(p_1375->g_73.s1, "p_1375->g_73.s1", print_hash_value);
    transparent_crc(p_1375->g_73.s2, "p_1375->g_73.s2", print_hash_value);
    transparent_crc(p_1375->g_73.s3, "p_1375->g_73.s3", print_hash_value);
    transparent_crc(p_1375->g_73.s4, "p_1375->g_73.s4", print_hash_value);
    transparent_crc(p_1375->g_73.s5, "p_1375->g_73.s5", print_hash_value);
    transparent_crc(p_1375->g_73.s6, "p_1375->g_73.s6", print_hash_value);
    transparent_crc(p_1375->g_73.s7, "p_1375->g_73.s7", print_hash_value);
    transparent_crc(p_1375->g_73.s8, "p_1375->g_73.s8", print_hash_value);
    transparent_crc(p_1375->g_73.s9, "p_1375->g_73.s9", print_hash_value);
    transparent_crc(p_1375->g_73.sa, "p_1375->g_73.sa", print_hash_value);
    transparent_crc(p_1375->g_73.sb, "p_1375->g_73.sb", print_hash_value);
    transparent_crc(p_1375->g_73.sc, "p_1375->g_73.sc", print_hash_value);
    transparent_crc(p_1375->g_73.sd, "p_1375->g_73.sd", print_hash_value);
    transparent_crc(p_1375->g_73.se, "p_1375->g_73.se", print_hash_value);
    transparent_crc(p_1375->g_73.sf, "p_1375->g_73.sf", print_hash_value);
    transparent_crc(p_1375->g_128, "p_1375->g_128", print_hash_value);
    transparent_crc(p_1375->g_138.x, "p_1375->g_138.x", print_hash_value);
    transparent_crc(p_1375->g_138.y, "p_1375->g_138.y", print_hash_value);
    transparent_crc(p_1375->g_138.z, "p_1375->g_138.z", print_hash_value);
    transparent_crc(p_1375->g_138.w, "p_1375->g_138.w", print_hash_value);
    transparent_crc(p_1375->g_148, "p_1375->g_148", print_hash_value);
    transparent_crc(p_1375->g_179.s0, "p_1375->g_179.s0", print_hash_value);
    transparent_crc(p_1375->g_179.s1, "p_1375->g_179.s1", print_hash_value);
    transparent_crc(p_1375->g_179.s2, "p_1375->g_179.s2", print_hash_value);
    transparent_crc(p_1375->g_179.s3, "p_1375->g_179.s3", print_hash_value);
    transparent_crc(p_1375->g_179.s4, "p_1375->g_179.s4", print_hash_value);
    transparent_crc(p_1375->g_179.s5, "p_1375->g_179.s5", print_hash_value);
    transparent_crc(p_1375->g_179.s6, "p_1375->g_179.s6", print_hash_value);
    transparent_crc(p_1375->g_179.s7, "p_1375->g_179.s7", print_hash_value);
    transparent_crc(p_1375->g_179.s8, "p_1375->g_179.s8", print_hash_value);
    transparent_crc(p_1375->g_179.s9, "p_1375->g_179.s9", print_hash_value);
    transparent_crc(p_1375->g_179.sa, "p_1375->g_179.sa", print_hash_value);
    transparent_crc(p_1375->g_179.sb, "p_1375->g_179.sb", print_hash_value);
    transparent_crc(p_1375->g_179.sc, "p_1375->g_179.sc", print_hash_value);
    transparent_crc(p_1375->g_179.sd, "p_1375->g_179.sd", print_hash_value);
    transparent_crc(p_1375->g_179.se, "p_1375->g_179.se", print_hash_value);
    transparent_crc(p_1375->g_179.sf, "p_1375->g_179.sf", print_hash_value);
    transparent_crc(p_1375->g_200.s0, "p_1375->g_200.s0", print_hash_value);
    transparent_crc(p_1375->g_200.s1, "p_1375->g_200.s1", print_hash_value);
    transparent_crc(p_1375->g_200.s2, "p_1375->g_200.s2", print_hash_value);
    transparent_crc(p_1375->g_200.s3, "p_1375->g_200.s3", print_hash_value);
    transparent_crc(p_1375->g_200.s4, "p_1375->g_200.s4", print_hash_value);
    transparent_crc(p_1375->g_200.s5, "p_1375->g_200.s5", print_hash_value);
    transparent_crc(p_1375->g_200.s6, "p_1375->g_200.s6", print_hash_value);
    transparent_crc(p_1375->g_200.s7, "p_1375->g_200.s7", print_hash_value);
    transparent_crc(p_1375->g_201.x, "p_1375->g_201.x", print_hash_value);
    transparent_crc(p_1375->g_201.y, "p_1375->g_201.y", print_hash_value);
    transparent_crc(p_1375->g_202.x, "p_1375->g_202.x", print_hash_value);
    transparent_crc(p_1375->g_202.y, "p_1375->g_202.y", print_hash_value);
    transparent_crc(p_1375->g_229, "p_1375->g_229", print_hash_value);
    transparent_crc(p_1375->g_250.x, "p_1375->g_250.x", print_hash_value);
    transparent_crc(p_1375->g_250.y, "p_1375->g_250.y", print_hash_value);
    transparent_crc(p_1375->g_251.x, "p_1375->g_251.x", print_hash_value);
    transparent_crc(p_1375->g_251.y, "p_1375->g_251.y", print_hash_value);
    transparent_crc(p_1375->g_304, "p_1375->g_304", print_hash_value);
    transparent_crc(p_1375->g_311, "p_1375->g_311", print_hash_value);
    transparent_crc(p_1375->g_313.s0, "p_1375->g_313.s0", print_hash_value);
    transparent_crc(p_1375->g_313.s1, "p_1375->g_313.s1", print_hash_value);
    transparent_crc(p_1375->g_313.s2, "p_1375->g_313.s2", print_hash_value);
    transparent_crc(p_1375->g_313.s3, "p_1375->g_313.s3", print_hash_value);
    transparent_crc(p_1375->g_313.s4, "p_1375->g_313.s4", print_hash_value);
    transparent_crc(p_1375->g_313.s5, "p_1375->g_313.s5", print_hash_value);
    transparent_crc(p_1375->g_313.s6, "p_1375->g_313.s6", print_hash_value);
    transparent_crc(p_1375->g_313.s7, "p_1375->g_313.s7", print_hash_value);
    transparent_crc(p_1375->g_338.s0, "p_1375->g_338.s0", print_hash_value);
    transparent_crc(p_1375->g_338.s1, "p_1375->g_338.s1", print_hash_value);
    transparent_crc(p_1375->g_338.s2, "p_1375->g_338.s2", print_hash_value);
    transparent_crc(p_1375->g_338.s3, "p_1375->g_338.s3", print_hash_value);
    transparent_crc(p_1375->g_338.s4, "p_1375->g_338.s4", print_hash_value);
    transparent_crc(p_1375->g_338.s5, "p_1375->g_338.s5", print_hash_value);
    transparent_crc(p_1375->g_338.s6, "p_1375->g_338.s6", print_hash_value);
    transparent_crc(p_1375->g_338.s7, "p_1375->g_338.s7", print_hash_value);
    transparent_crc(p_1375->g_343.x, "p_1375->g_343.x", print_hash_value);
    transparent_crc(p_1375->g_343.y, "p_1375->g_343.y", print_hash_value);
    transparent_crc(p_1375->g_343.z, "p_1375->g_343.z", print_hash_value);
    transparent_crc(p_1375->g_343.w, "p_1375->g_343.w", print_hash_value);
    transparent_crc(p_1375->g_382.s0, "p_1375->g_382.s0", print_hash_value);
    transparent_crc(p_1375->g_382.s1, "p_1375->g_382.s1", print_hash_value);
    transparent_crc(p_1375->g_382.s2, "p_1375->g_382.s2", print_hash_value);
    transparent_crc(p_1375->g_382.s3, "p_1375->g_382.s3", print_hash_value);
    transparent_crc(p_1375->g_382.s4, "p_1375->g_382.s4", print_hash_value);
    transparent_crc(p_1375->g_382.s5, "p_1375->g_382.s5", print_hash_value);
    transparent_crc(p_1375->g_382.s6, "p_1375->g_382.s6", print_hash_value);
    transparent_crc(p_1375->g_382.s7, "p_1375->g_382.s7", print_hash_value);
    transparent_crc(p_1375->g_383.s0, "p_1375->g_383.s0", print_hash_value);
    transparent_crc(p_1375->g_383.s1, "p_1375->g_383.s1", print_hash_value);
    transparent_crc(p_1375->g_383.s2, "p_1375->g_383.s2", print_hash_value);
    transparent_crc(p_1375->g_383.s3, "p_1375->g_383.s3", print_hash_value);
    transparent_crc(p_1375->g_383.s4, "p_1375->g_383.s4", print_hash_value);
    transparent_crc(p_1375->g_383.s5, "p_1375->g_383.s5", print_hash_value);
    transparent_crc(p_1375->g_383.s6, "p_1375->g_383.s6", print_hash_value);
    transparent_crc(p_1375->g_383.s7, "p_1375->g_383.s7", print_hash_value);
    transparent_crc(p_1375->g_384.s0, "p_1375->g_384.s0", print_hash_value);
    transparent_crc(p_1375->g_384.s1, "p_1375->g_384.s1", print_hash_value);
    transparent_crc(p_1375->g_384.s2, "p_1375->g_384.s2", print_hash_value);
    transparent_crc(p_1375->g_384.s3, "p_1375->g_384.s3", print_hash_value);
    transparent_crc(p_1375->g_384.s4, "p_1375->g_384.s4", print_hash_value);
    transparent_crc(p_1375->g_384.s5, "p_1375->g_384.s5", print_hash_value);
    transparent_crc(p_1375->g_384.s6, "p_1375->g_384.s6", print_hash_value);
    transparent_crc(p_1375->g_384.s7, "p_1375->g_384.s7", print_hash_value);
    transparent_crc(p_1375->g_385.x, "p_1375->g_385.x", print_hash_value);
    transparent_crc(p_1375->g_385.y, "p_1375->g_385.y", print_hash_value);
    transparent_crc(p_1375->g_385.z, "p_1375->g_385.z", print_hash_value);
    transparent_crc(p_1375->g_385.w, "p_1375->g_385.w", print_hash_value);
    transparent_crc(p_1375->g_391, "p_1375->g_391", print_hash_value);
    transparent_crc(p_1375->g_397, "p_1375->g_397", print_hash_value);
    transparent_crc(p_1375->g_513.s0, "p_1375->g_513.s0", print_hash_value);
    transparent_crc(p_1375->g_513.s1, "p_1375->g_513.s1", print_hash_value);
    transparent_crc(p_1375->g_513.s2, "p_1375->g_513.s2", print_hash_value);
    transparent_crc(p_1375->g_513.s3, "p_1375->g_513.s3", print_hash_value);
    transparent_crc(p_1375->g_513.s4, "p_1375->g_513.s4", print_hash_value);
    transparent_crc(p_1375->g_513.s5, "p_1375->g_513.s5", print_hash_value);
    transparent_crc(p_1375->g_513.s6, "p_1375->g_513.s6", print_hash_value);
    transparent_crc(p_1375->g_513.s7, "p_1375->g_513.s7", print_hash_value);
    transparent_crc(p_1375->g_513.s8, "p_1375->g_513.s8", print_hash_value);
    transparent_crc(p_1375->g_513.s9, "p_1375->g_513.s9", print_hash_value);
    transparent_crc(p_1375->g_513.sa, "p_1375->g_513.sa", print_hash_value);
    transparent_crc(p_1375->g_513.sb, "p_1375->g_513.sb", print_hash_value);
    transparent_crc(p_1375->g_513.sc, "p_1375->g_513.sc", print_hash_value);
    transparent_crc(p_1375->g_513.sd, "p_1375->g_513.sd", print_hash_value);
    transparent_crc(p_1375->g_513.se, "p_1375->g_513.se", print_hash_value);
    transparent_crc(p_1375->g_513.sf, "p_1375->g_513.sf", print_hash_value);
    transparent_crc(p_1375->g_516.x, "p_1375->g_516.x", print_hash_value);
    transparent_crc(p_1375->g_516.y, "p_1375->g_516.y", print_hash_value);
    transparent_crc(p_1375->g_516.z, "p_1375->g_516.z", print_hash_value);
    transparent_crc(p_1375->g_516.w, "p_1375->g_516.w", print_hash_value);
    transparent_crc(p_1375->g_588.x, "p_1375->g_588.x", print_hash_value);
    transparent_crc(p_1375->g_588.y, "p_1375->g_588.y", print_hash_value);
    transparent_crc(p_1375->g_618, "p_1375->g_618", print_hash_value);
    transparent_crc(p_1375->g_629.s0, "p_1375->g_629.s0", print_hash_value);
    transparent_crc(p_1375->g_629.s1, "p_1375->g_629.s1", print_hash_value);
    transparent_crc(p_1375->g_629.s2, "p_1375->g_629.s2", print_hash_value);
    transparent_crc(p_1375->g_629.s3, "p_1375->g_629.s3", print_hash_value);
    transparent_crc(p_1375->g_629.s4, "p_1375->g_629.s4", print_hash_value);
    transparent_crc(p_1375->g_629.s5, "p_1375->g_629.s5", print_hash_value);
    transparent_crc(p_1375->g_629.s6, "p_1375->g_629.s6", print_hash_value);
    transparent_crc(p_1375->g_629.s7, "p_1375->g_629.s7", print_hash_value);
    transparent_crc(p_1375->g_633.x, "p_1375->g_633.x", print_hash_value);
    transparent_crc(p_1375->g_633.y, "p_1375->g_633.y", print_hash_value);
    transparent_crc(p_1375->g_654.x, "p_1375->g_654.x", print_hash_value);
    transparent_crc(p_1375->g_654.y, "p_1375->g_654.y", print_hash_value);
    transparent_crc(p_1375->g_665.s0, "p_1375->g_665.s0", print_hash_value);
    transparent_crc(p_1375->g_665.s1, "p_1375->g_665.s1", print_hash_value);
    transparent_crc(p_1375->g_665.s2, "p_1375->g_665.s2", print_hash_value);
    transparent_crc(p_1375->g_665.s3, "p_1375->g_665.s3", print_hash_value);
    transparent_crc(p_1375->g_665.s4, "p_1375->g_665.s4", print_hash_value);
    transparent_crc(p_1375->g_665.s5, "p_1375->g_665.s5", print_hash_value);
    transparent_crc(p_1375->g_665.s6, "p_1375->g_665.s6", print_hash_value);
    transparent_crc(p_1375->g_665.s7, "p_1375->g_665.s7", print_hash_value);
    transparent_crc(p_1375->g_672.x, "p_1375->g_672.x", print_hash_value);
    transparent_crc(p_1375->g_672.y, "p_1375->g_672.y", print_hash_value);
    transparent_crc(p_1375->g_694, "p_1375->g_694", print_hash_value);
    transparent_crc(p_1375->g_695, "p_1375->g_695", print_hash_value);
    transparent_crc(p_1375->g_700, "p_1375->g_700", print_hash_value);
    transparent_crc(p_1375->g_721.x, "p_1375->g_721.x", print_hash_value);
    transparent_crc(p_1375->g_721.y, "p_1375->g_721.y", print_hash_value);
    transparent_crc(p_1375->g_764.s0, "p_1375->g_764.s0", print_hash_value);
    transparent_crc(p_1375->g_764.s1, "p_1375->g_764.s1", print_hash_value);
    transparent_crc(p_1375->g_764.s2, "p_1375->g_764.s2", print_hash_value);
    transparent_crc(p_1375->g_764.s3, "p_1375->g_764.s3", print_hash_value);
    transparent_crc(p_1375->g_764.s4, "p_1375->g_764.s4", print_hash_value);
    transparent_crc(p_1375->g_764.s5, "p_1375->g_764.s5", print_hash_value);
    transparent_crc(p_1375->g_764.s6, "p_1375->g_764.s6", print_hash_value);
    transparent_crc(p_1375->g_764.s7, "p_1375->g_764.s7", print_hash_value);
    transparent_crc(p_1375->g_764.s8, "p_1375->g_764.s8", print_hash_value);
    transparent_crc(p_1375->g_764.s9, "p_1375->g_764.s9", print_hash_value);
    transparent_crc(p_1375->g_764.sa, "p_1375->g_764.sa", print_hash_value);
    transparent_crc(p_1375->g_764.sb, "p_1375->g_764.sb", print_hash_value);
    transparent_crc(p_1375->g_764.sc, "p_1375->g_764.sc", print_hash_value);
    transparent_crc(p_1375->g_764.sd, "p_1375->g_764.sd", print_hash_value);
    transparent_crc(p_1375->g_764.se, "p_1375->g_764.se", print_hash_value);
    transparent_crc(p_1375->g_764.sf, "p_1375->g_764.sf", print_hash_value);
    transparent_crc(p_1375->g_777.s0, "p_1375->g_777.s0", print_hash_value);
    transparent_crc(p_1375->g_777.s1, "p_1375->g_777.s1", print_hash_value);
    transparent_crc(p_1375->g_777.s2, "p_1375->g_777.s2", print_hash_value);
    transparent_crc(p_1375->g_777.s3, "p_1375->g_777.s3", print_hash_value);
    transparent_crc(p_1375->g_777.s4, "p_1375->g_777.s4", print_hash_value);
    transparent_crc(p_1375->g_777.s5, "p_1375->g_777.s5", print_hash_value);
    transparent_crc(p_1375->g_777.s6, "p_1375->g_777.s6", print_hash_value);
    transparent_crc(p_1375->g_777.s7, "p_1375->g_777.s7", print_hash_value);
    transparent_crc(p_1375->g_777.s8, "p_1375->g_777.s8", print_hash_value);
    transparent_crc(p_1375->g_777.s9, "p_1375->g_777.s9", print_hash_value);
    transparent_crc(p_1375->g_777.sa, "p_1375->g_777.sa", print_hash_value);
    transparent_crc(p_1375->g_777.sb, "p_1375->g_777.sb", print_hash_value);
    transparent_crc(p_1375->g_777.sc, "p_1375->g_777.sc", print_hash_value);
    transparent_crc(p_1375->g_777.sd, "p_1375->g_777.sd", print_hash_value);
    transparent_crc(p_1375->g_777.se, "p_1375->g_777.se", print_hash_value);
    transparent_crc(p_1375->g_777.sf, "p_1375->g_777.sf", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1375->g_812[i], "p_1375->g_812[i]", print_hash_value);

    }
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 7; j++)
        {
            for (k = 0; k < 3; k++)
            {
                transparent_crc(p_1375->g_847[i][j][k], "p_1375->g_847[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1375->g_848.s0, "p_1375->g_848.s0", print_hash_value);
    transparent_crc(p_1375->g_848.s1, "p_1375->g_848.s1", print_hash_value);
    transparent_crc(p_1375->g_848.s2, "p_1375->g_848.s2", print_hash_value);
    transparent_crc(p_1375->g_848.s3, "p_1375->g_848.s3", print_hash_value);
    transparent_crc(p_1375->g_848.s4, "p_1375->g_848.s4", print_hash_value);
    transparent_crc(p_1375->g_848.s5, "p_1375->g_848.s5", print_hash_value);
    transparent_crc(p_1375->g_848.s6, "p_1375->g_848.s6", print_hash_value);
    transparent_crc(p_1375->g_848.s7, "p_1375->g_848.s7", print_hash_value);
    transparent_crc(p_1375->g_848.s8, "p_1375->g_848.s8", print_hash_value);
    transparent_crc(p_1375->g_848.s9, "p_1375->g_848.s9", print_hash_value);
    transparent_crc(p_1375->g_848.sa, "p_1375->g_848.sa", print_hash_value);
    transparent_crc(p_1375->g_848.sb, "p_1375->g_848.sb", print_hash_value);
    transparent_crc(p_1375->g_848.sc, "p_1375->g_848.sc", print_hash_value);
    transparent_crc(p_1375->g_848.sd, "p_1375->g_848.sd", print_hash_value);
    transparent_crc(p_1375->g_848.se, "p_1375->g_848.se", print_hash_value);
    transparent_crc(p_1375->g_848.sf, "p_1375->g_848.sf", print_hash_value);
    transparent_crc(p_1375->g_878.x, "p_1375->g_878.x", print_hash_value);
    transparent_crc(p_1375->g_878.y, "p_1375->g_878.y", print_hash_value);
    transparent_crc(p_1375->g_878.z, "p_1375->g_878.z", print_hash_value);
    transparent_crc(p_1375->g_878.w, "p_1375->g_878.w", print_hash_value);
    transparent_crc(p_1375->g_895.x, "p_1375->g_895.x", print_hash_value);
    transparent_crc(p_1375->g_895.y, "p_1375->g_895.y", print_hash_value);
    transparent_crc(p_1375->g_924.s0, "p_1375->g_924.s0", print_hash_value);
    transparent_crc(p_1375->g_924.s1, "p_1375->g_924.s1", print_hash_value);
    transparent_crc(p_1375->g_924.s2, "p_1375->g_924.s2", print_hash_value);
    transparent_crc(p_1375->g_924.s3, "p_1375->g_924.s3", print_hash_value);
    transparent_crc(p_1375->g_924.s4, "p_1375->g_924.s4", print_hash_value);
    transparent_crc(p_1375->g_924.s5, "p_1375->g_924.s5", print_hash_value);
    transparent_crc(p_1375->g_924.s6, "p_1375->g_924.s6", print_hash_value);
    transparent_crc(p_1375->g_924.s7, "p_1375->g_924.s7", print_hash_value);
    transparent_crc(p_1375->g_924.s8, "p_1375->g_924.s8", print_hash_value);
    transparent_crc(p_1375->g_924.s9, "p_1375->g_924.s9", print_hash_value);
    transparent_crc(p_1375->g_924.sa, "p_1375->g_924.sa", print_hash_value);
    transparent_crc(p_1375->g_924.sb, "p_1375->g_924.sb", print_hash_value);
    transparent_crc(p_1375->g_924.sc, "p_1375->g_924.sc", print_hash_value);
    transparent_crc(p_1375->g_924.sd, "p_1375->g_924.sd", print_hash_value);
    transparent_crc(p_1375->g_924.se, "p_1375->g_924.se", print_hash_value);
    transparent_crc(p_1375->g_924.sf, "p_1375->g_924.sf", print_hash_value);
    transparent_crc(p_1375->g_927.x, "p_1375->g_927.x", print_hash_value);
    transparent_crc(p_1375->g_927.y, "p_1375->g_927.y", print_hash_value);
    transparent_crc(p_1375->g_927.z, "p_1375->g_927.z", print_hash_value);
    transparent_crc(p_1375->g_927.w, "p_1375->g_927.w", print_hash_value);
    transparent_crc(p_1375->g_928.x, "p_1375->g_928.x", print_hash_value);
    transparent_crc(p_1375->g_928.y, "p_1375->g_928.y", print_hash_value);
    transparent_crc(p_1375->g_928.z, "p_1375->g_928.z", print_hash_value);
    transparent_crc(p_1375->g_928.w, "p_1375->g_928.w", print_hash_value);
    transparent_crc(p_1375->g_935.x, "p_1375->g_935.x", print_hash_value);
    transparent_crc(p_1375->g_935.y, "p_1375->g_935.y", print_hash_value);
    transparent_crc(p_1375->g_935.z, "p_1375->g_935.z", print_hash_value);
    transparent_crc(p_1375->g_935.w, "p_1375->g_935.w", print_hash_value);
    transparent_crc(p_1375->g_937.s0, "p_1375->g_937.s0", print_hash_value);
    transparent_crc(p_1375->g_937.s1, "p_1375->g_937.s1", print_hash_value);
    transparent_crc(p_1375->g_937.s2, "p_1375->g_937.s2", print_hash_value);
    transparent_crc(p_1375->g_937.s3, "p_1375->g_937.s3", print_hash_value);
    transparent_crc(p_1375->g_937.s4, "p_1375->g_937.s4", print_hash_value);
    transparent_crc(p_1375->g_937.s5, "p_1375->g_937.s5", print_hash_value);
    transparent_crc(p_1375->g_937.s6, "p_1375->g_937.s6", print_hash_value);
    transparent_crc(p_1375->g_937.s7, "p_1375->g_937.s7", print_hash_value);
    transparent_crc(p_1375->g_938.s0, "p_1375->g_938.s0", print_hash_value);
    transparent_crc(p_1375->g_938.s1, "p_1375->g_938.s1", print_hash_value);
    transparent_crc(p_1375->g_938.s2, "p_1375->g_938.s2", print_hash_value);
    transparent_crc(p_1375->g_938.s3, "p_1375->g_938.s3", print_hash_value);
    transparent_crc(p_1375->g_938.s4, "p_1375->g_938.s4", print_hash_value);
    transparent_crc(p_1375->g_938.s5, "p_1375->g_938.s5", print_hash_value);
    transparent_crc(p_1375->g_938.s6, "p_1375->g_938.s6", print_hash_value);
    transparent_crc(p_1375->g_938.s7, "p_1375->g_938.s7", print_hash_value);
    transparent_crc(p_1375->g_962.x, "p_1375->g_962.x", print_hash_value);
    transparent_crc(p_1375->g_962.y, "p_1375->g_962.y", print_hash_value);
    transparent_crc(p_1375->g_962.z, "p_1375->g_962.z", print_hash_value);
    transparent_crc(p_1375->g_962.w, "p_1375->g_962.w", print_hash_value);
    transparent_crc(p_1375->g_1018.s0, "p_1375->g_1018.s0", print_hash_value);
    transparent_crc(p_1375->g_1018.s1, "p_1375->g_1018.s1", print_hash_value);
    transparent_crc(p_1375->g_1018.s2, "p_1375->g_1018.s2", print_hash_value);
    transparent_crc(p_1375->g_1018.s3, "p_1375->g_1018.s3", print_hash_value);
    transparent_crc(p_1375->g_1018.s4, "p_1375->g_1018.s4", print_hash_value);
    transparent_crc(p_1375->g_1018.s5, "p_1375->g_1018.s5", print_hash_value);
    transparent_crc(p_1375->g_1018.s6, "p_1375->g_1018.s6", print_hash_value);
    transparent_crc(p_1375->g_1018.s7, "p_1375->g_1018.s7", print_hash_value);
    transparent_crc(p_1375->g_1018.s8, "p_1375->g_1018.s8", print_hash_value);
    transparent_crc(p_1375->g_1018.s9, "p_1375->g_1018.s9", print_hash_value);
    transparent_crc(p_1375->g_1018.sa, "p_1375->g_1018.sa", print_hash_value);
    transparent_crc(p_1375->g_1018.sb, "p_1375->g_1018.sb", print_hash_value);
    transparent_crc(p_1375->g_1018.sc, "p_1375->g_1018.sc", print_hash_value);
    transparent_crc(p_1375->g_1018.sd, "p_1375->g_1018.sd", print_hash_value);
    transparent_crc(p_1375->g_1018.se, "p_1375->g_1018.se", print_hash_value);
    transparent_crc(p_1375->g_1018.sf, "p_1375->g_1018.sf", print_hash_value);
    transparent_crc(p_1375->g_1034.x, "p_1375->g_1034.x", print_hash_value);
    transparent_crc(p_1375->g_1034.y, "p_1375->g_1034.y", print_hash_value);
    transparent_crc(p_1375->g_1034.z, "p_1375->g_1034.z", print_hash_value);
    transparent_crc(p_1375->g_1034.w, "p_1375->g_1034.w", print_hash_value);
    transparent_crc(p_1375->g_1051.x, "p_1375->g_1051.x", print_hash_value);
    transparent_crc(p_1375->g_1051.y, "p_1375->g_1051.y", print_hash_value);
    transparent_crc(p_1375->g_1052.s0, "p_1375->g_1052.s0", print_hash_value);
    transparent_crc(p_1375->g_1052.s1, "p_1375->g_1052.s1", print_hash_value);
    transparent_crc(p_1375->g_1052.s2, "p_1375->g_1052.s2", print_hash_value);
    transparent_crc(p_1375->g_1052.s3, "p_1375->g_1052.s3", print_hash_value);
    transparent_crc(p_1375->g_1052.s4, "p_1375->g_1052.s4", print_hash_value);
    transparent_crc(p_1375->g_1052.s5, "p_1375->g_1052.s5", print_hash_value);
    transparent_crc(p_1375->g_1052.s6, "p_1375->g_1052.s6", print_hash_value);
    transparent_crc(p_1375->g_1052.s7, "p_1375->g_1052.s7", print_hash_value);
    transparent_crc(p_1375->g_1052.s8, "p_1375->g_1052.s8", print_hash_value);
    transparent_crc(p_1375->g_1052.s9, "p_1375->g_1052.s9", print_hash_value);
    transparent_crc(p_1375->g_1052.sa, "p_1375->g_1052.sa", print_hash_value);
    transparent_crc(p_1375->g_1052.sb, "p_1375->g_1052.sb", print_hash_value);
    transparent_crc(p_1375->g_1052.sc, "p_1375->g_1052.sc", print_hash_value);
    transparent_crc(p_1375->g_1052.sd, "p_1375->g_1052.sd", print_hash_value);
    transparent_crc(p_1375->g_1052.se, "p_1375->g_1052.se", print_hash_value);
    transparent_crc(p_1375->g_1052.sf, "p_1375->g_1052.sf", print_hash_value);
    transparent_crc(p_1375->g_1070.x, "p_1375->g_1070.x", print_hash_value);
    transparent_crc(p_1375->g_1070.y, "p_1375->g_1070.y", print_hash_value);
    transparent_crc(p_1375->g_1072.x, "p_1375->g_1072.x", print_hash_value);
    transparent_crc(p_1375->g_1072.y, "p_1375->g_1072.y", print_hash_value);
    transparent_crc(p_1375->g_1089.s0, "p_1375->g_1089.s0", print_hash_value);
    transparent_crc(p_1375->g_1089.s1, "p_1375->g_1089.s1", print_hash_value);
    transparent_crc(p_1375->g_1089.s2, "p_1375->g_1089.s2", print_hash_value);
    transparent_crc(p_1375->g_1089.s3, "p_1375->g_1089.s3", print_hash_value);
    transparent_crc(p_1375->g_1089.s4, "p_1375->g_1089.s4", print_hash_value);
    transparent_crc(p_1375->g_1089.s5, "p_1375->g_1089.s5", print_hash_value);
    transparent_crc(p_1375->g_1089.s6, "p_1375->g_1089.s6", print_hash_value);
    transparent_crc(p_1375->g_1089.s7, "p_1375->g_1089.s7", print_hash_value);
    transparent_crc(p_1375->g_1090.x, "p_1375->g_1090.x", print_hash_value);
    transparent_crc(p_1375->g_1090.y, "p_1375->g_1090.y", print_hash_value);
    transparent_crc(p_1375->g_1091.s0, "p_1375->g_1091.s0", print_hash_value);
    transparent_crc(p_1375->g_1091.s1, "p_1375->g_1091.s1", print_hash_value);
    transparent_crc(p_1375->g_1091.s2, "p_1375->g_1091.s2", print_hash_value);
    transparent_crc(p_1375->g_1091.s3, "p_1375->g_1091.s3", print_hash_value);
    transparent_crc(p_1375->g_1091.s4, "p_1375->g_1091.s4", print_hash_value);
    transparent_crc(p_1375->g_1091.s5, "p_1375->g_1091.s5", print_hash_value);
    transparent_crc(p_1375->g_1091.s6, "p_1375->g_1091.s6", print_hash_value);
    transparent_crc(p_1375->g_1091.s7, "p_1375->g_1091.s7", print_hash_value);
    transparent_crc(p_1375->g_1091.s8, "p_1375->g_1091.s8", print_hash_value);
    transparent_crc(p_1375->g_1091.s9, "p_1375->g_1091.s9", print_hash_value);
    transparent_crc(p_1375->g_1091.sa, "p_1375->g_1091.sa", print_hash_value);
    transparent_crc(p_1375->g_1091.sb, "p_1375->g_1091.sb", print_hash_value);
    transparent_crc(p_1375->g_1091.sc, "p_1375->g_1091.sc", print_hash_value);
    transparent_crc(p_1375->g_1091.sd, "p_1375->g_1091.sd", print_hash_value);
    transparent_crc(p_1375->g_1091.se, "p_1375->g_1091.se", print_hash_value);
    transparent_crc(p_1375->g_1091.sf, "p_1375->g_1091.sf", print_hash_value);
    transparent_crc(p_1375->g_1094.s0, "p_1375->g_1094.s0", print_hash_value);
    transparent_crc(p_1375->g_1094.s1, "p_1375->g_1094.s1", print_hash_value);
    transparent_crc(p_1375->g_1094.s2, "p_1375->g_1094.s2", print_hash_value);
    transparent_crc(p_1375->g_1094.s3, "p_1375->g_1094.s3", print_hash_value);
    transparent_crc(p_1375->g_1094.s4, "p_1375->g_1094.s4", print_hash_value);
    transparent_crc(p_1375->g_1094.s5, "p_1375->g_1094.s5", print_hash_value);
    transparent_crc(p_1375->g_1094.s6, "p_1375->g_1094.s6", print_hash_value);
    transparent_crc(p_1375->g_1094.s7, "p_1375->g_1094.s7", print_hash_value);
    transparent_crc(p_1375->g_1094.s8, "p_1375->g_1094.s8", print_hash_value);
    transparent_crc(p_1375->g_1094.s9, "p_1375->g_1094.s9", print_hash_value);
    transparent_crc(p_1375->g_1094.sa, "p_1375->g_1094.sa", print_hash_value);
    transparent_crc(p_1375->g_1094.sb, "p_1375->g_1094.sb", print_hash_value);
    transparent_crc(p_1375->g_1094.sc, "p_1375->g_1094.sc", print_hash_value);
    transparent_crc(p_1375->g_1094.sd, "p_1375->g_1094.sd", print_hash_value);
    transparent_crc(p_1375->g_1094.se, "p_1375->g_1094.se", print_hash_value);
    transparent_crc(p_1375->g_1094.sf, "p_1375->g_1094.sf", print_hash_value);
    transparent_crc(p_1375->g_1103.x, "p_1375->g_1103.x", print_hash_value);
    transparent_crc(p_1375->g_1103.y, "p_1375->g_1103.y", print_hash_value);
    transparent_crc(p_1375->g_1104.x, "p_1375->g_1104.x", print_hash_value);
    transparent_crc(p_1375->g_1104.y, "p_1375->g_1104.y", print_hash_value);
    transparent_crc(p_1375->g_1104.z, "p_1375->g_1104.z", print_hash_value);
    transparent_crc(p_1375->g_1104.w, "p_1375->g_1104.w", print_hash_value);
    transparent_crc(p_1375->g_1115.x, "p_1375->g_1115.x", print_hash_value);
    transparent_crc(p_1375->g_1115.y, "p_1375->g_1115.y", print_hash_value);
    transparent_crc(p_1375->g_1115.z, "p_1375->g_1115.z", print_hash_value);
    transparent_crc(p_1375->g_1115.w, "p_1375->g_1115.w", print_hash_value);
    transparent_crc(p_1375->g_1122.s0, "p_1375->g_1122.s0", print_hash_value);
    transparent_crc(p_1375->g_1122.s1, "p_1375->g_1122.s1", print_hash_value);
    transparent_crc(p_1375->g_1122.s2, "p_1375->g_1122.s2", print_hash_value);
    transparent_crc(p_1375->g_1122.s3, "p_1375->g_1122.s3", print_hash_value);
    transparent_crc(p_1375->g_1122.s4, "p_1375->g_1122.s4", print_hash_value);
    transparent_crc(p_1375->g_1122.s5, "p_1375->g_1122.s5", print_hash_value);
    transparent_crc(p_1375->g_1122.s6, "p_1375->g_1122.s6", print_hash_value);
    transparent_crc(p_1375->g_1122.s7, "p_1375->g_1122.s7", print_hash_value);
    transparent_crc(p_1375->g_1122.s8, "p_1375->g_1122.s8", print_hash_value);
    transparent_crc(p_1375->g_1122.s9, "p_1375->g_1122.s9", print_hash_value);
    transparent_crc(p_1375->g_1122.sa, "p_1375->g_1122.sa", print_hash_value);
    transparent_crc(p_1375->g_1122.sb, "p_1375->g_1122.sb", print_hash_value);
    transparent_crc(p_1375->g_1122.sc, "p_1375->g_1122.sc", print_hash_value);
    transparent_crc(p_1375->g_1122.sd, "p_1375->g_1122.sd", print_hash_value);
    transparent_crc(p_1375->g_1122.se, "p_1375->g_1122.se", print_hash_value);
    transparent_crc(p_1375->g_1122.sf, "p_1375->g_1122.sf", print_hash_value);
    transparent_crc(p_1375->g_1129.x, "p_1375->g_1129.x", print_hash_value);
    transparent_crc(p_1375->g_1129.y, "p_1375->g_1129.y", print_hash_value);
    transparent_crc(p_1375->g_1157.x, "p_1375->g_1157.x", print_hash_value);
    transparent_crc(p_1375->g_1157.y, "p_1375->g_1157.y", print_hash_value);
    transparent_crc(p_1375->g_1186.s0, "p_1375->g_1186.s0", print_hash_value);
    transparent_crc(p_1375->g_1186.s1, "p_1375->g_1186.s1", print_hash_value);
    transparent_crc(p_1375->g_1186.s2, "p_1375->g_1186.s2", print_hash_value);
    transparent_crc(p_1375->g_1186.s3, "p_1375->g_1186.s3", print_hash_value);
    transparent_crc(p_1375->g_1186.s4, "p_1375->g_1186.s4", print_hash_value);
    transparent_crc(p_1375->g_1186.s5, "p_1375->g_1186.s5", print_hash_value);
    transparent_crc(p_1375->g_1186.s6, "p_1375->g_1186.s6", print_hash_value);
    transparent_crc(p_1375->g_1186.s7, "p_1375->g_1186.s7", print_hash_value);
    transparent_crc(p_1375->g_1186.s8, "p_1375->g_1186.s8", print_hash_value);
    transparent_crc(p_1375->g_1186.s9, "p_1375->g_1186.s9", print_hash_value);
    transparent_crc(p_1375->g_1186.sa, "p_1375->g_1186.sa", print_hash_value);
    transparent_crc(p_1375->g_1186.sb, "p_1375->g_1186.sb", print_hash_value);
    transparent_crc(p_1375->g_1186.sc, "p_1375->g_1186.sc", print_hash_value);
    transparent_crc(p_1375->g_1186.sd, "p_1375->g_1186.sd", print_hash_value);
    transparent_crc(p_1375->g_1186.se, "p_1375->g_1186.se", print_hash_value);
    transparent_crc(p_1375->g_1186.sf, "p_1375->g_1186.sf", print_hash_value);
    transparent_crc(p_1375->g_1190.x, "p_1375->g_1190.x", print_hash_value);
    transparent_crc(p_1375->g_1190.y, "p_1375->g_1190.y", print_hash_value);
    transparent_crc(p_1375->g_1190.z, "p_1375->g_1190.z", print_hash_value);
    transparent_crc(p_1375->g_1190.w, "p_1375->g_1190.w", print_hash_value);
    transparent_crc(p_1375->g_1198.x, "p_1375->g_1198.x", print_hash_value);
    transparent_crc(p_1375->g_1198.y, "p_1375->g_1198.y", print_hash_value);
    transparent_crc(p_1375->g_1218.s0, "p_1375->g_1218.s0", print_hash_value);
    transparent_crc(p_1375->g_1218.s1, "p_1375->g_1218.s1", print_hash_value);
    transparent_crc(p_1375->g_1218.s2, "p_1375->g_1218.s2", print_hash_value);
    transparent_crc(p_1375->g_1218.s3, "p_1375->g_1218.s3", print_hash_value);
    transparent_crc(p_1375->g_1218.s4, "p_1375->g_1218.s4", print_hash_value);
    transparent_crc(p_1375->g_1218.s5, "p_1375->g_1218.s5", print_hash_value);
    transparent_crc(p_1375->g_1218.s6, "p_1375->g_1218.s6", print_hash_value);
    transparent_crc(p_1375->g_1218.s7, "p_1375->g_1218.s7", print_hash_value);
    transparent_crc(p_1375->g_1218.s8, "p_1375->g_1218.s8", print_hash_value);
    transparent_crc(p_1375->g_1218.s9, "p_1375->g_1218.s9", print_hash_value);
    transparent_crc(p_1375->g_1218.sa, "p_1375->g_1218.sa", print_hash_value);
    transparent_crc(p_1375->g_1218.sb, "p_1375->g_1218.sb", print_hash_value);
    transparent_crc(p_1375->g_1218.sc, "p_1375->g_1218.sc", print_hash_value);
    transparent_crc(p_1375->g_1218.sd, "p_1375->g_1218.sd", print_hash_value);
    transparent_crc(p_1375->g_1218.se, "p_1375->g_1218.se", print_hash_value);
    transparent_crc(p_1375->g_1218.sf, "p_1375->g_1218.sf", print_hash_value);
    transparent_crc(p_1375->g_1221.x, "p_1375->g_1221.x", print_hash_value);
    transparent_crc(p_1375->g_1221.y, "p_1375->g_1221.y", print_hash_value);
    transparent_crc(p_1375->g_1221.z, "p_1375->g_1221.z", print_hash_value);
    transparent_crc(p_1375->g_1221.w, "p_1375->g_1221.w", print_hash_value);
    transparent_crc(p_1375->g_1222.s0, "p_1375->g_1222.s0", print_hash_value);
    transparent_crc(p_1375->g_1222.s1, "p_1375->g_1222.s1", print_hash_value);
    transparent_crc(p_1375->g_1222.s2, "p_1375->g_1222.s2", print_hash_value);
    transparent_crc(p_1375->g_1222.s3, "p_1375->g_1222.s3", print_hash_value);
    transparent_crc(p_1375->g_1222.s4, "p_1375->g_1222.s4", print_hash_value);
    transparent_crc(p_1375->g_1222.s5, "p_1375->g_1222.s5", print_hash_value);
    transparent_crc(p_1375->g_1222.s6, "p_1375->g_1222.s6", print_hash_value);
    transparent_crc(p_1375->g_1222.s7, "p_1375->g_1222.s7", print_hash_value);
    transparent_crc(p_1375->g_1250.s0, "p_1375->g_1250.s0", print_hash_value);
    transparent_crc(p_1375->g_1250.s1, "p_1375->g_1250.s1", print_hash_value);
    transparent_crc(p_1375->g_1250.s2, "p_1375->g_1250.s2", print_hash_value);
    transparent_crc(p_1375->g_1250.s3, "p_1375->g_1250.s3", print_hash_value);
    transparent_crc(p_1375->g_1250.s4, "p_1375->g_1250.s4", print_hash_value);
    transparent_crc(p_1375->g_1250.s5, "p_1375->g_1250.s5", print_hash_value);
    transparent_crc(p_1375->g_1250.s6, "p_1375->g_1250.s6", print_hash_value);
    transparent_crc(p_1375->g_1250.s7, "p_1375->g_1250.s7", print_hash_value);
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 1; j++)
        {
            transparent_crc(p_1375->g_1258[i][j], "p_1375->g_1258[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1375->g_1269, "p_1375->g_1269", print_hash_value);
    transparent_crc(p_1375->g_1329, "p_1375->g_1329", print_hash_value);
    transparent_crc(p_1375->g_1330, "p_1375->g_1330", print_hash_value);
    transparent_crc(p_1375->g_1349.s0, "p_1375->g_1349.s0", print_hash_value);
    transparent_crc(p_1375->g_1349.s1, "p_1375->g_1349.s1", print_hash_value);
    transparent_crc(p_1375->g_1349.s2, "p_1375->g_1349.s2", print_hash_value);
    transparent_crc(p_1375->g_1349.s3, "p_1375->g_1349.s3", print_hash_value);
    transparent_crc(p_1375->g_1349.s4, "p_1375->g_1349.s4", print_hash_value);
    transparent_crc(p_1375->g_1349.s5, "p_1375->g_1349.s5", print_hash_value);
    transparent_crc(p_1375->g_1349.s6, "p_1375->g_1349.s6", print_hash_value);
    transparent_crc(p_1375->g_1349.s7, "p_1375->g_1349.s7", print_hash_value);
    transparent_crc(p_1375->g_1349.s8, "p_1375->g_1349.s8", print_hash_value);
    transparent_crc(p_1375->g_1349.s9, "p_1375->g_1349.s9", print_hash_value);
    transparent_crc(p_1375->g_1349.sa, "p_1375->g_1349.sa", print_hash_value);
    transparent_crc(p_1375->g_1349.sb, "p_1375->g_1349.sb", print_hash_value);
    transparent_crc(p_1375->g_1349.sc, "p_1375->g_1349.sc", print_hash_value);
    transparent_crc(p_1375->g_1349.sd, "p_1375->g_1349.sd", print_hash_value);
    transparent_crc(p_1375->g_1349.se, "p_1375->g_1349.se", print_hash_value);
    transparent_crc(p_1375->g_1349.sf, "p_1375->g_1349.sf", print_hash_value);
    transparent_crc(p_1375->g_1351.x, "p_1375->g_1351.x", print_hash_value);
    transparent_crc(p_1375->g_1351.y, "p_1375->g_1351.y", print_hash_value);
    transparent_crc(p_1375->g_1351.z, "p_1375->g_1351.z", print_hash_value);
    transparent_crc(p_1375->g_1351.w, "p_1375->g_1351.w", print_hash_value);
    transparent_crc(p_1375->g_1352.x, "p_1375->g_1352.x", print_hash_value);
    transparent_crc(p_1375->g_1352.y, "p_1375->g_1352.y", print_hash_value);
    transparent_crc(p_1375->g_1352.z, "p_1375->g_1352.z", print_hash_value);
    transparent_crc(p_1375->g_1352.w, "p_1375->g_1352.w", print_hash_value);
    transparent_crc(p_1375->g_1353.x, "p_1375->g_1353.x", print_hash_value);
    transparent_crc(p_1375->g_1353.y, "p_1375->g_1353.y", print_hash_value);
    transparent_crc(p_1375->g_1372, "p_1375->g_1372", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
