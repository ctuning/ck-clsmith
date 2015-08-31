// ---fake_divergence -g 1,7,1 -l 1,1,1
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


// Seed: 47

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
union U0 {
   int8_t  f0;
   int64_t  f1;
   uint32_t  f2;
};

union U1 {
   int32_t  f0;
   int64_t  f1;
   uint32_t  f2;
};

union U2 {
   uint16_t  f0;
   volatile int16_t  f1;
};

struct S3 {
    int32_t g_3;
    uint16_t g_4;
    int32_t g_11;
    int32_t g_14;
    VECTOR(int64_t, 8) g_24;
    uint16_t g_26;
    int32_t g_61;
    volatile uint32_t g_71;
    int32_t g_85;
    int32_t *g_84[2];
    volatile VECTOR(int32_t, 16) g_86;
    VECTOR(int8_t, 2) g_99;
    int8_t g_101;
    union U2 g_106;
    union U0 g_117;
    int16_t g_127;
    int32_t **g_131;
    uint64_t g_174;
    uint64_t g_180[9];
    volatile VECTOR(int16_t, 8) g_183;
    int64_t *g_193;
    volatile union U2 g_198;
    volatile VECTOR(int8_t, 4) g_228;
    int16_t g_237;
    volatile uint8_t g_243;
    volatile uint8_t *g_242;
    volatile union U2 *g_246;
    volatile union U2 ** volatile g_245;
    uint64_t *g_261;
    volatile union U1 g_271[7];
    VECTOR(int32_t, 16) g_275;
    VECTOR(int32_t, 4) g_279;
    VECTOR(uint8_t, 16) g_298;
    VECTOR(uint16_t, 2) g_308;
    VECTOR(uint32_t, 4) g_320;
    volatile union U2 g_348;
    uint8_t g_379;
    uint32_t g_414;
    volatile VECTOR(uint64_t, 4) g_431;
    volatile VECTOR(int64_t, 4) g_439;
    VECTOR(uint64_t, 16) g_465;
    VECTOR(uint64_t, 2) g_466;
    volatile VECTOR(uint32_t, 2) g_472;
    volatile VECTOR(uint32_t, 4) g_473;
    volatile VECTOR(uint32_t, 8) g_484;
    int32_t * volatile g_491;
    int32_t * volatile g_492;
    uint8_t g_494;
    volatile VECTOR(int64_t, 16) g_499;
    VECTOR(int64_t, 2) g_500;
    volatile VECTOR(int64_t, 8) g_502;
    volatile VECTOR(int64_t, 16) g_522;
    uint32_t g_523;
    VECTOR(uint8_t, 2) g_562;
    VECTOR(uint8_t, 4) g_563;
    VECTOR(int8_t, 4) g_570;
    VECTOR(uint16_t, 2) g_585;
    int32_t * volatile g_601;
    VECTOR(int16_t, 8) g_619;
    VECTOR(uint8_t, 8) g_643;
    VECTOR(uint8_t, 16) g_658;
    VECTOR(uint8_t, 8) g_661;
    volatile VECTOR(uint8_t, 4) g_675;
    VECTOR(int16_t, 2) g_679;
    VECTOR(uint8_t, 4) g_690;
    VECTOR(uint8_t, 4) g_692;
    volatile int8_t g_722;
    int32_t ** volatile g_729;
    union U2 *g_734;
    volatile VECTOR(int8_t, 8) g_745;
    VECTOR(uint64_t, 16) g_758;
    VECTOR(int32_t, 16) g_770;
    VECTOR(uint8_t, 2) g_773;
    VECTOR(uint8_t, 2) g_774;
    union U1 g_792;
    volatile VECTOR(int64_t, 8) g_809;
    VECTOR(int64_t, 4) g_811;
    volatile VECTOR(int64_t, 2) g_812;
    volatile union U2 g_815;
    union U2 g_816;
    int32_t ** volatile g_824;
    int32_t * volatile g_829;
    int32_t * volatile g_834;
    VECTOR(int32_t, 2) g_840;
    VECTOR(uint8_t, 8) g_849;
    volatile VECTOR(uint8_t, 8) g_856;
    volatile union U2 g_874;
    volatile VECTOR(uint8_t, 4) g_875;
    volatile VECTOR(uint16_t, 2) g_890;
    uint64_t g_915;
    volatile VECTOR(int8_t, 16) g_934;
    VECTOR(int8_t, 8) g_935;
    VECTOR(int8_t, 4) g_936;
    VECTOR(uint16_t, 8) g_944;
    VECTOR(int16_t, 16) g_972;
    VECTOR(int16_t, 8) g_973;
    VECTOR(int16_t, 2) g_974;
    VECTOR(int16_t, 2) g_978;
    VECTOR(uint8_t, 8) g_985;
    volatile VECTOR(int32_t, 8) g_1003;
    volatile VECTOR(uint16_t, 8) g_1008;
    volatile VECTOR(uint8_t, 8) g_1011;
    VECTOR(uint8_t, 16) g_1020;
    uint32_t g_1043;
    union U2 g_1050;
    union U2 g_1055;
    VECTOR(uint32_t, 2) g_1060;
    volatile VECTOR(int32_t, 16) g_1063;
    uint64_t g_1068;
    union U1 *g_1070;
    union U1 **g_1069[8];
    volatile VECTOR(int32_t, 8) g_1073;
    int32_t ** volatile g_1098;
    int16_t g_1122;
    volatile VECTOR(int16_t, 16) g_1155;
    VECTOR(int16_t, 2) g_1159;
    VECTOR(int16_t, 8) g_1166;
    VECTOR(int64_t, 4) g_1168;
    volatile VECTOR(uint16_t, 8) g_1192;
    VECTOR(int32_t, 2) g_1200;
    VECTOR(uint32_t, 8) g_1247;
    int32_t ** volatile g_1253;
    int32_t ** volatile g_1269;
    VECTOR(int32_t, 8) g_1273;
    volatile int32_t g_1294;
    volatile union U2 *** volatile g_1295;
    VECTOR(uint32_t, 4) g_1309;
    volatile uint8_t **g_1329[4];
    volatile uint8_t *** volatile g_1328;
    int32_t ** volatile g_1330;
    VECTOR(uint16_t, 2) g_1347;
    uint64_t *g_1359;
    uint64_t * volatile *g_1358;
    uint8_t *g_1365;
    uint8_t **g_1364;
    int16_t *g_1376;
    int16_t **g_1375;
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
union U0  func_1(struct S3 * p_1381);
int32_t * func_17(int32_t  p_18, int64_t  p_19, int32_t * p_20, int32_t * p_21, struct S3 * p_1381);
int32_t * func_28(int32_t * p_29, int32_t * p_30, struct S3 * p_1381);
int32_t * func_31(int32_t * p_32, uint64_t  p_33, uint32_t  p_34, struct S3 * p_1381);
int32_t * func_35(int32_t  p_36, uint32_t  p_37, int32_t  p_38, int32_t * p_39, struct S3 * p_1381);
VECTOR(int32_t, 2)  func_42(int32_t * p_43, struct S3 * p_1381);
int32_t * func_44(int32_t * p_45, uint64_t  p_46, uint32_t  p_47, struct S3 * p_1381);
uint64_t  func_49(uint64_t  p_50, int32_t * p_51, int64_t  p_52, struct S3 * p_1381);
uint32_t  func_53(uint32_t  p_54, int32_t * p_55, uint32_t  p_56, struct S3 * p_1381);
uint64_t  func_74(uint32_t  p_75, struct S3 * p_1381);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1381->g_4 p_1381->g_3 p_1381->g_11 p_1381->g_14 p_1381->g_242 p_1381->g_243 p_1381->g_1358 p_1381->g_117 p_1381->g_585 p_1381->g_1364 p_1381->g_1365 p_1381->g_131 p_1381->g_84 p_1381->g_1253 p_1381->g_85 p_1381->g_237 p_1381->g_379 p_1381->g_1328 p_1381->g_1329 p_1381->g_1375 p_1381->g_1376 p_1381->g_127 p_1381->g_298 p_1381->g_758 p_1381->g_99 p_1381->g_261 p_1381->g_180
 * writes: p_1381->g_4 p_1381->g_3 p_1381->g_11 p_1381->g_14 p_1381->g_494 p_1381->g_1364 p_1381->g_379 p_1381->g_85 p_1381->g_1060 p_1381->g_99
 */
union U0  func_1(struct S3 * p_1381)
{ /* block id: 4 */
    int32_t *l_2[7] = {&p_1381->g_3,&p_1381->g_3,&p_1381->g_3,&p_1381->g_3,&p_1381->g_3,&p_1381->g_3,&p_1381->g_3};
    uint64_t l_1334 = 0x42EF0B3A67696534L;
    int32_t l_1348 = 0x0AC01C88L;
    uint64_t **l_1369 = (void*)0;
    uint64_t l_1374 = 1UL;
    int16_t l_1377 = 0x0909L;
    int8_t *l_1378 = (void*)0;
    int8_t *l_1379[6] = {&p_1381->g_101,(void*)0,&p_1381->g_101,&p_1381->g_101,(void*)0,&p_1381->g_101};
    uint8_t l_1380[4];
    int i;
    for (i = 0; i < 4; i++)
        l_1380[i] = 0x74L;
    --p_1381->g_4;
    for (p_1381->g_3 = (-23); (p_1381->g_3 == (-9)); ++p_1381->g_3)
    { /* block id: 8 */
        int32_t *l_27 = &p_1381->g_14;
        int32_t l_1331 = (-8L);
        uint64_t *l_1356[10][9][2] = {{{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915}},{{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915}},{{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915}},{{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915}},{{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915}},{{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915}},{{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915}},{{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915}},{{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915}},{{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915},{&p_1381->g_915,&p_1381->g_915}}};
        uint64_t **l_1355 = &l_1356[8][3][1];
        int i, j, k;
        if (p_1381->g_3)
            break;
        for (p_1381->g_4 = (-22); (p_1381->g_4 >= 48); ++p_1381->g_4)
        { /* block id: 12 */
            uint16_t l_25 = 65535UL;
            VECTOR(int32_t, 16) l_41 = (VECTOR(int32_t, 16))(0x7BC41BBBL, (VECTOR(int32_t, 4))(0x7BC41BBBL, (VECTOR(int32_t, 2))(0x7BC41BBBL, 0x6FA2E576L), 0x6FA2E576L), 0x6FA2E576L, 0x7BC41BBBL, 0x6FA2E576L, (VECTOR(int32_t, 2))(0x7BC41BBBL, 0x6FA2E576L), (VECTOR(int32_t, 2))(0x7BC41BBBL, 0x6FA2E576L), 0x7BC41BBBL, 0x6FA2E576L, 0x7BC41BBBL, 0x6FA2E576L);
            int32_t l_448 = 0x67694CC1L;
            int32_t *l_452 = &p_1381->g_85;
            int32_t l_1349 = 0x6C0A24E2L;
            int i;
            for (p_1381->g_11 = 0; (p_1381->g_11 == (-8)); p_1381->g_11 = safe_sub_func_uint32_t_u_u(p_1381->g_11, 1))
            { /* block id: 15 */
                VECTOR(int32_t, 4) l_40 = (VECTOR(int32_t, 4))((-10L), (VECTOR(int32_t, 2))((-10L), 0x4380D33BL), 0x4380D33BL);
                int32_t *l_48 = &p_1381->g_3;
                int8_t l_496 = 1L;
                int32_t l_1332 = 0x7273EA6FL;
                int32_t l_1333 = 0L;
                uint8_t *l_1352 = &p_1381->g_494;
                uint64_t ***l_1357 = &l_1355;
                uint8_t ***l_1366 = &p_1381->g_1364;
                int i;
                for (p_1381->g_14 = (-22); (p_1381->g_14 <= (-8)); p_1381->g_14 = safe_add_func_int64_t_s_s(p_1381->g_14, 1))
                { /* block id: 18 */
                    uint32_t l_57 = 0x8C33196AL;
                    int32_t *l_495 = &l_448;
                    uint16_t l_1337 = 5UL;
                    VECTOR(uint16_t, 4) l_1344 = (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0x8C85L), 0x8C85L);
                    int i;
                    (1 + 1);
                }
                (*l_27) = ((safe_rshift_func_uint8_t_u_s(((*l_1352) = (*p_1381->g_242)), 2)) >= ((safe_sub_func_uint8_t_u_u((((*l_1357) = l_1355) != p_1381->g_1358), (p_1381->g_117 , ((*p_1381->g_1365) = ((safe_div_func_int16_t_s_s(p_1381->g_585.x, (safe_div_func_int64_t_s_s(((((*l_1366) = p_1381->g_1364) != (void*)0) < (*l_48)), (-6L))))) != (*l_48)))))) >= (*l_48)));
                (**p_1381->g_131) = ((*l_27) = (*l_27));
            }
        }
        if ((**p_1381->g_1253))
            break;
    }
    l_1380[0] = ((**p_1381->g_131) = (p_1381->g_237 < (safe_mul_func_uint16_t_u_u(((((**p_1381->g_1364) ^ (0x02L != (p_1381->g_99.y |= (l_1369 != ((safe_div_func_uint8_t_u_u((***p_1381->g_1328), ((l_1377 = ((VECTOR(uint32_t, 16))(5UL, (((p_1381->g_1060.y = ((VECTOR(uint32_t, 16))((safe_lshift_func_int8_t_s_u(l_1374, (((p_1381->g_1375 != &p_1381->g_1376) <= (**p_1381->g_1375)) , (**p_1381->g_1364)))), ((VECTOR(uint32_t, 2))(0xBB6808E0L)), 0xA9C0BE24L, 0x6556C2DEL, ((VECTOR(uint32_t, 8))(2UL)), ((VECTOR(uint32_t, 2))(2UL)), 0x378C9925L)).s2) >= p_1381->g_298.s1) <= p_1381->g_758.s3), 0xC76890F8L, 0x576BF168L, ((VECTOR(uint32_t, 8))(6UL)), 0x37ACC276L, 0UL, 0x212598FBL, 4UL)).s5) , (*p_1381->g_1365)))) , (void*)0))))) != (*p_1381->g_261)) > p_1381->g_127), p_1381->g_11))));
    return p_1381->g_117;
}


/* ------------------------------------------ */
/* 
 * reads : p_1381->g_1003 p_1381->g_1008 p_1381->g_1011 p_1381->g_1020 p_1381->g_242 p_1381->g_243 p_1381->g_261 p_1381->g_180 p_1381->g_690 p_1381->g_935 p_1381->g_85 p_1381->g_127 p_1381->g_1043 p_1381->g_1050 p_1381->g_61 p_1381->g_1055 p_1381->g_1060 p_1381->g_985 p_1381->g_1063 p_1381->g_1068 p_1381->g_1069 p_1381->g_1073 p_1381->g_484 p_1381->g_829 p_1381->g_24 p_1381->g_26 p_1381->g_1098 p_1381->g_320 p_1381->g_117.f0 p_1381->g_944 p_1381->g_523 p_1381->g_774 p_1381->g_117.f2 p_1381->g_117 p_1381->g_1055.f0 p_1381->g_758 p_1381->g_1155 p_1381->g_936 p_1381->g_1159 p_1381->g_1166 p_1381->g_1168 p_1381->g_973 p_1381->g_792.f1 p_1381->g_14 p_1381->g_1294 p_1381->g_84 p_1381->g_491 p_1381->g_729 p_1381->g_1070 p_1381->g_792 p_1381->g_1309 p_1381->g_101 p_1381->g_849 p_1381->g_934 p_1381->g_1328 p_1381->g_824
 * writes: p_1381->g_180 p_1381->g_127 p_1381->g_61 p_1381->g_1043 p_1381->g_85 p_1381->g_237 p_1381->g_1069 p_1381->g_24 p_1381->g_26 p_1381->g_84 p_1381->g_117.f2 p_1381->g_1122 p_1381->g_1050.f0 p_1381->g_792.f1 p_1381->g_101 p_1381->g_1060 p_1381->g_1329
 */
int32_t * func_17(int32_t  p_18, int64_t  p_19, int32_t * p_20, int32_t * p_21, struct S3 * p_1381)
{ /* block id: 331 */
    VECTOR(int32_t, 8) l_1004 = (VECTOR(int32_t, 8))(3L, (VECTOR(int32_t, 4))(3L, (VECTOR(int32_t, 2))(3L, (-1L)), (-1L)), (-1L), 3L, (-1L));
    VECTOR(int32_t, 2) l_1005 = (VECTOR(int32_t, 2))(0x434735B5L, 0x55598DDEL);
    VECTOR(uint64_t, 2) l_1031 = (VECTOR(uint64_t, 2))(0x2C6A6784435282C2L, 0x3D4A683EC87D527BL);
    union U1 *l_1032 = &p_1381->g_792;
    VECTOR(int32_t, 8) l_1064 = (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), (-7L)), (-7L)), (-7L), (-1L), (-7L));
    int16_t l_1088 = (-8L);
    int32_t l_1089 = (-8L);
    VECTOR(int32_t, 16) l_1147 = (VECTOR(int32_t, 16))(0x66F66442L, (VECTOR(int32_t, 4))(0x66F66442L, (VECTOR(int32_t, 2))(0x66F66442L, (-1L)), (-1L)), (-1L), 0x66F66442L, (-1L), (VECTOR(int32_t, 2))(0x66F66442L, (-1L)), (VECTOR(int32_t, 2))(0x66F66442L, (-1L)), 0x66F66442L, (-1L), 0x66F66442L, (-1L));
    VECTOR(int32_t, 16) l_1150 = (VECTOR(int32_t, 16))(3L, (VECTOR(int32_t, 4))(3L, (VECTOR(int32_t, 2))(3L, 9L), 9L), 9L, 3L, 9L, (VECTOR(int32_t, 2))(3L, 9L), (VECTOR(int32_t, 2))(3L, 9L), 3L, 9L, 3L, 9L);
    uint16_t *l_1156 = &p_1381->g_26;
    VECTOR(int64_t, 16) l_1167 = (VECTOR(int64_t, 16))(0x514D27294AC62F84L, (VECTOR(int64_t, 4))(0x514D27294AC62F84L, (VECTOR(int64_t, 2))(0x514D27294AC62F84L, 0x71636BF80002D13CL), 0x71636BF80002D13CL), 0x71636BF80002D13CL, 0x514D27294AC62F84L, 0x71636BF80002D13CL, (VECTOR(int64_t, 2))(0x514D27294AC62F84L, 0x71636BF80002D13CL), (VECTOR(int64_t, 2))(0x514D27294AC62F84L, 0x71636BF80002D13CL), 0x514D27294AC62F84L, 0x71636BF80002D13CL, 0x514D27294AC62F84L, 0x71636BF80002D13CL);
    int32_t ***l_1173 = &p_1381->g_131;
    VECTOR(int64_t, 2) l_1201 = (VECTOR(int64_t, 2))(0L, (-3L));
    uint64_t l_1235 = 9UL;
    uint16_t l_1256 = 0xD4F8L;
    VECTOR(int16_t, 16) l_1263 = (VECTOR(int16_t, 16))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x5E89L), 0x5E89L), 0x5E89L, 1L, 0x5E89L, (VECTOR(int16_t, 2))(1L, 0x5E89L), (VECTOR(int16_t, 2))(1L, 0x5E89L), 1L, 0x5E89L, 1L, 0x5E89L);
    VECTOR(int8_t, 2) l_1272 = (VECTOR(int8_t, 2))(0x52L, 0x6BL);
    VECTOR(uint32_t, 8) l_1280 = (VECTOR(uint32_t, 8))(0xD63763A4L, (VECTOR(uint32_t, 4))(0xD63763A4L, (VECTOR(uint32_t, 2))(0xD63763A4L, 0x2FBF2172L), 0x2FBF2172L), 0x2FBF2172L, 0xD63763A4L, 0x2FBF2172L);
    volatile union U2 **l_1296 = &p_1381->g_246;
    VECTOR(int8_t, 2) l_1319 = (VECTOR(int8_t, 2))((-2L), 2L);
    int8_t l_1322 = 1L;
    uint32_t *l_1327[9][5][5] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
    int i, j, k;
lbl_1142:
    if (((VECTOR(int32_t, 4))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 4),((VECTOR(int32_t, 16))(p_1381->g_1003.s7411712257115735)).sd45b, ((VECTOR(int32_t, 4))((((VECTOR(int32_t, 16))(l_1004.s2114676214170007)).sc598 != ((VECTOR(int32_t, 2))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(l_1005.yx)).odd, (((l_1005.y != (0UL > ((VECTOR(uint16_t, 16))(sub_sat(((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 4))(p_1381->g_1008.s6746)).xxzwzywzyyzyywyz >> ((VECTOR(uint16_t, 16))(16))))), ((VECTOR(uint16_t, 16))(min(((VECTOR(uint16_t, 4))(add_sat(((VECTOR(uint16_t, 16))(sub_sat(((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 4))(upsample(((VECTOR(uint8_t, 2))(p_1381->g_1011.s03)).yxxy, ((VECTOR(uint8_t, 2))(rotate(((VECTOR(uint8_t, 4))(l_1004.s5, 253UL, 0x9DL, 0x61L)).even, ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(0x8BL, 9UL)), 255UL, ((VECTOR(uint8_t, 2))(sub_sat(((VECTOR(uint8_t, 16))(0UL, 0UL, ((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 8))(0x68L, 5UL, ((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 2))(p_1381->g_1020.s90)).yxyxxyxyyyyxxyxy + ((VECTOR(uint8_t, 2))(1UL, 0x74L)).yyxxyxyyxxxyyxyx))) + ((VECTOR(uint8_t, 2))((~((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 4))(mul_hi(((VECTOR(uint8_t, 8))(0x29L, ((VECTOR(uint8_t, 2))(0UL, 0x4EL)), (*p_1381->g_242), ((((safe_mul_func_int16_t_s_s((safe_lshift_func_int8_t_s_u(0x64L, ((((((*p_1381->g_261)++) <= (-1L)) | ((0L & (((VECTOR(uint64_t, 4))(l_1031.yyxy)).x & (l_1032 == (void*)0))) , 0L)) >= 0x41405E4D5D257918L) , (*p_1381->g_242)))), 1L)) , p_1381->g_690.y) || 0x92L) && 0UL), (*p_1381->g_242), 0x3FL, 0x3AL)).even, ((VECTOR(uint8_t, 4))(255UL))))).yyzzxzzw * ((VECTOR(uint8_t, 8))(252UL))))).s07))).yyyyxxxyyyxyxxyy))).sb4e0 + ((VECTOR(uint8_t, 4))(250UL))))), 1UL, 1UL)).hi - ((VECTOR(uint8_t, 4))(0x34L))))), (*p_1381->g_242), 1UL, 255UL, 0x04L, ((VECTOR(uint8_t, 2))(252UL)), (*p_1381->g_242), ((VECTOR(uint8_t, 2))(255UL)), 0xA3L)).sd6, ((VECTOR(uint8_t, 2))(255UL))))), ((VECTOR(uint8_t, 2))(0x7BL)), 0xD5L)).s22))).xyyy))).odd + ((VECTOR(uint16_t, 2))(0x15A5L))))).xyxxyyxyyxyxyxyx, ((VECTOR(uint16_t, 16))(0xEE59L))))).s1d05, ((VECTOR(uint16_t, 4))(9UL))))).yzyyxywxzzzzyzxz, (uint16_t)p_19)))))).s4)) == 2UL) >= p_1381->g_935.s5), 7L, (*p_21), 0x3E37B38FL, (-1L), 0L, 1L)).s76, ((VECTOR(int32_t, 2))((-1L))), ((VECTOR(int32_t, 2))(1L))))).xyxx))), ((VECTOR(int32_t, 4))(0x0C5B772DL))))).z)
    { /* block id: 333 */
        int32_t *l_1033 = &p_1381->g_61;
        int32_t *l_1034 = (void*)0;
        int32_t *l_1035[7] = {&p_1381->g_11,(void*)0,&p_1381->g_11,&p_1381->g_11,(void*)0,&p_1381->g_11,&p_1381->g_11};
        uint8_t l_1036 = 0x69L;
        int i;
        l_1036++;
        for (p_1381->g_127 = 0; (p_1381->g_127 < (-3)); p_1381->g_127--)
        { /* block id: 337 */
            int8_t l_1041 = (-1L);
            int32_t l_1042[9] = {0x7D891234L,0x1DCEC130L,0x7D891234L,0x7D891234L,0x1DCEC130L,0x7D891234L,0x7D891234L,0x1DCEC130L,0x7D891234L};
            int i;
            (*l_1033) = l_1041;
            if (p_19)
                goto lbl_1142;
            p_1381->g_1043++;
        }
    }
    else
    { /* block id: 341 */
        VECTOR(uint16_t, 2) l_1058 = (VECTOR(uint16_t, 2))(0UL, 0xC50EL);
        VECTOR(int32_t, 16) l_1075 = (VECTOR(int32_t, 16))(8L, (VECTOR(int32_t, 4))(8L, (VECTOR(int32_t, 2))(8L, 0x732D0754L), 0x732D0754L), 0x732D0754L, 8L, 0x732D0754L, (VECTOR(int32_t, 2))(8L, 0x732D0754L), (VECTOR(int32_t, 2))(8L, 0x732D0754L), 8L, 0x732D0754L, 8L, 0x732D0754L);
        uint16_t l_1093 = 65535UL;
        VECTOR(uint16_t, 2) l_1131 = (VECTOR(uint16_t, 2))(0UL, 6UL);
        VECTOR(uint16_t, 16) l_1132 = (VECTOR(uint16_t, 16))(65535UL, (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 0xA5B1L), 0xA5B1L), 0xA5B1L, 65535UL, 0xA5B1L, (VECTOR(uint16_t, 2))(65535UL, 0xA5B1L), (VECTOR(uint16_t, 2))(65535UL, 0xA5B1L), 65535UL, 0xA5B1L, 65535UL, 0xA5B1L);
        VECTOR(uint16_t, 16) l_1134 = (VECTOR(uint16_t, 16))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 65535UL), 65535UL), 65535UL, 1UL, 65535UL, (VECTOR(uint16_t, 2))(1UL, 65535UL), (VECTOR(uint16_t, 2))(1UL, 65535UL), 1UL, 65535UL, 1UL, 65535UL);
        int8_t l_1140 = 0L;
        int i;
        if (((*p_21) = l_1004.s6))
        { /* block id: 343 */
            VECTOR(uint16_t, 16) l_1059 = (VECTOR(uint16_t, 16))(65526UL, (VECTOR(uint16_t, 4))(65526UL, (VECTOR(uint16_t, 2))(65526UL, 5UL), 5UL), 5UL, 65526UL, 5UL, (VECTOR(uint16_t, 2))(65526UL, 5UL), (VECTOR(uint16_t, 2))(65526UL, 5UL), 65526UL, 5UL, 65526UL, 5UL);
            int16_t *l_1061 = (void*)0;
            int16_t *l_1062 = &p_1381->g_237;
            VECTOR(int32_t, 8) l_1065 = (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 1L), 1L), 1L, 1L, 1L);
            union U1 ***l_1071 = (void*)0;
            union U1 ***l_1072 = &p_1381->g_1069[4];
            VECTOR(int32_t, 16) l_1074 = (VECTOR(int32_t, 16))(2L, (VECTOR(int32_t, 4))(2L, (VECTOR(int32_t, 2))(2L, (-1L)), (-1L)), (-1L), 2L, (-1L), (VECTOR(int32_t, 2))(2L, (-1L)), (VECTOR(int32_t, 2))(2L, (-1L)), 2L, (-1L), 2L, (-1L));
            int64_t *l_1078 = (void*)0;
            int64_t *l_1079 = (void*)0;
            int64_t *l_1080 = (void*)0;
            int i;
            (*p_21) ^= (safe_sub_func_uint64_t_u_u((safe_sub_func_int64_t_s_s((~((p_1381->g_1050 , ((*l_1062) = (safe_lshift_func_int8_t_s_u((safe_div_func_int64_t_s_s((!(p_1381->g_61 & (((p_1381->g_1055 , 0x0A45L) > 0x5E64L) || ((-5L) >= (((VECTOR(uint32_t, 16))(upsample(((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 2))(0x64B2L, 0x0257L)).xyxyxxxyxyxyyxyy + ((VECTOR(uint16_t, 16))(l_1058.yxyxyyxxxxyyxyxy))))), ((VECTOR(uint16_t, 8))(l_1059.s5fd21458)).s1461263534137120))).s0 , ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(clz(((VECTOR(uint32_t, 4))(sub_sat(((VECTOR(uint32_t, 16))(p_1381->g_1060.yyyxyyyyxyyyyyyx)).s76e0, ((VECTOR(uint32_t, 16))(rhadd(((VECTOR(uint32_t, 2))(hadd(((VECTOR(uint32_t, 8))(4294967289UL, 0x98183748L, 9UL, (((void*)0 == &p_1381->g_915) , l_1005.x), 4294967288UL, 0x0CB32A25L, 4294967295UL, 0UL)).s25, ((VECTOR(uint32_t, 2))(0x77E38235L))))).yyxxxxxxxxxxxxyx, ((VECTOR(uint32_t, 16))(0xF59C8A53L))))).se0c4)))))), ((VECTOR(uint32_t, 2))(4294967287UL)), 4294967292UL, 0x673590A7L)).s5))))), p_1381->g_985.s3)), l_1004.s3)))) && 0x607BL)), 0x2BC4BB3568DF2180L)), l_1059.s2));
            (*p_21) |= ((VECTOR(int32_t, 8))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 2))(p_1381->g_1063.s38)).yxyxyyxy, ((VECTOR(int32_t, 4))((~((VECTOR(int32_t, 2))((((VECTOR(int32_t, 16))(l_1064.s0510471304061150)).s7f <= ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))((((VECTOR(int32_t, 16))(add_sat(((VECTOR(int32_t, 8))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 16))(l_1065.s3675232231010303)).hi, ((VECTOR(int32_t, 2))(add_sat(((VECTOR(int32_t, 8))(0x0BDDF18FL, (safe_sub_func_int32_t_s_s(p_1381->g_1068, (((*l_1072) = p_1381->g_1069[5]) != &p_1381->g_1070))), ((VECTOR(int32_t, 2))(mul_hi(((VECTOR(int32_t, 2))(p_1381->g_1073.s57)), ((VECTOR(int32_t, 16))((((VECTOR(int32_t, 4))((((VECTOR(int32_t, 16))((!((VECTOR(int32_t, 2))(l_1074.sab)).yyxyxxyxyxyxyxyy))).s68c5 && ((VECTOR(int32_t, 4))(max(((VECTOR(int32_t, 8))(l_1075.se725109f)).lo, (int32_t)1L)))))).xwzxywzyxyyywyxy ^ ((VECTOR(int32_t, 16))(0x185E08FAL, (0xA63D10E581E8636AL && ((p_1381->g_24.s3 ^= (p_1381->g_484.s4 , (l_1064.s0 ^ ((((*p_1381->g_261)++) & ((void*)0 != &p_1381->g_915)) != (*p_1381->g_829))))) ^ p_1381->g_935.s6)), ((VECTOR(int32_t, 4))((-6L))), (-7L), 1L, 0x457D84F2L, (-4L), ((VECTOR(int32_t, 2))(0x558F4C20L)), 0x343C4B6EL, ((VECTOR(int32_t, 2))(0L)), 0x54EFCED3L))))).s4b))), 0x1BE8F8ADL, 1L, 1L, 0x7FDCD892L)).s14, ((VECTOR(int32_t, 2))(1L))))).xyxxyxxy, ((VECTOR(int32_t, 8))(0x69DE8FCDL))))).s5162001565301142, ((VECTOR(int32_t, 16))((-5L)))))).s57 && ((VECTOR(int32_t, 2))(0x4D9BF7DEL))))), 0x4550C573L, ((VECTOR(int32_t, 8))(9L)), 4L, (-1L), 0L, 0x1D4B8B29L, 0x59D06FA2L)).sa8))).yxxy))).yzwyzxxz))).s0;
        }
        else
        { /* block id: 350 */
            int32_t *l_1081 = &p_1381->g_85;
            int32_t *l_1082 = (void*)0;
            int32_t *l_1083 = &p_1381->g_85;
            int32_t *l_1084 = &p_1381->g_85;
            int32_t *l_1085 = (void*)0;
            int32_t *l_1086 = &p_1381->g_61;
            int32_t *l_1087[7];
            VECTOR(int32_t, 2) l_1090 = (VECTOR(int32_t, 2))(0x2F67545FL, 0x61B3E8BAL);
            int64_t l_1091 = 0x737BDAE2943155F2L;
            int16_t l_1092 = 0x45DEL;
            int32_t l_1105 = (-9L);
            uint64_t *l_1112 = &p_1381->g_915;
            uint64_t *l_1115 = &p_1381->g_915;
            union U0 *l_1118 = &p_1381->g_117;
            union U0 **l_1117 = &l_1118;
            int i;
            for (i = 0; i < 7; i++)
                l_1087[i] = &p_1381->g_61;
            l_1093--;
            for (p_1381->g_26 = 0; (p_1381->g_26 >= 43); p_1381->g_26++)
            { /* block id: 354 */
                uint64_t *l_1114 = (void*)0;
                uint64_t **l_1113 = &l_1114;
                VECTOR(uint64_t, 8) l_1116 = (VECTOR(uint64_t, 8))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 0x536F71E9C91BB93EL), 0x536F71E9C91BB93EL), 0x536F71E9C91BB93EL, 1UL, 0x536F71E9C91BB93EL);
                int i;
                (*p_1381->g_1098) = p_20;
                (*l_1081) = (p_1381->g_320.x , (safe_add_func_uint8_t_u_u((*p_1381->g_242), ((safe_lshift_func_uint16_t_u_s((l_1105 ^ ((safe_mul_func_uint16_t_u_u((((0x6108L || (((((safe_lshift_func_int8_t_s_s((safe_add_func_uint64_t_u_u(((*p_1381->g_261) = (((*l_1113) = (l_1112 = l_1112)) != l_1115)), p_1381->g_117.f0)), 1)) <= p_1381->g_944.s2) , (((VECTOR(uint64_t, 8))(l_1116.s06206213)).s2 , l_1117)) == (void*)0) < FAKE_DIVERGE(p_1381->group_0_offset, get_group_id(0), 10))) , l_1116.s7) > l_1116.s4), p_1381->g_523)) < 0L)), p_1381->g_774.x)) || p_18))));
            }
            for (p_1381->g_117.f2 = 15; (p_1381->g_117.f2 < 29); p_1381->g_117.f2++)
            { /* block id: 363 */
                VECTOR(uint16_t, 2) l_1133 = (VECTOR(uint16_t, 2))(0x40BEL, 0x0A95L);
                uint16_t *l_1135 = &p_1381->g_1050.f0;
                VECTOR(uint16_t, 2) l_1138 = (VECTOR(uint16_t, 2))(0x127EL, 0x2F76L);
                uint16_t *l_1139[4][10] = {{(void*)0,(void*)0,&p_1381->g_4,&l_1093,(void*)0,(void*)0,&l_1093,(void*)0,&l_1093,(void*)0},{(void*)0,(void*)0,&p_1381->g_4,&l_1093,(void*)0,(void*)0,&l_1093,(void*)0,&l_1093,(void*)0},{(void*)0,(void*)0,&p_1381->g_4,&l_1093,(void*)0,(void*)0,&l_1093,(void*)0,&l_1093,(void*)0},{(void*)0,(void*)0,&p_1381->g_4,&l_1093,(void*)0,(void*)0,&l_1093,(void*)0,&l_1093,(void*)0}};
                int32_t l_1141 = 0x5F9336B5L;
                int i, j;
                l_1141 &= ((*l_1086) &= (((l_1087[5] != p_21) | l_1004.s4) < ((((safe_unary_minus_func_int64_t_s((p_1381->g_1122 = p_19))) == ((0L == (safe_div_func_uint32_t_u_u(((VECTOR(uint32_t, 4))((safe_sub_func_int32_t_s_s((*p_21), (((*p_1381->g_242) != (GROUP_DIVERGE(0, 1) || (safe_rshift_func_uint8_t_u_s((safe_lshift_func_uint16_t_u_u(p_18, ((*l_1135) = ((VECTOR(uint16_t, 16))(safe_clamp_func(VECTOR(uint16_t, 16),VECTOR(uint16_t, 16),((VECTOR(uint16_t, 2))(l_1131.yx)).xxxxyyyyxyyxxxyx, ((VECTOR(uint16_t, 16))(l_1132.s3be0f7ea79b5a9c9)), ((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 4))(l_1133.xyxy)) & ((VECTOR(uint16_t, 8))(l_1134.s4eff4695)).hi))).yzyyxywyyxyxxxxy))).s4))), (safe_lshift_func_uint16_t_u_u(((VECTOR(uint16_t, 8))(l_1138.xyxyyxyx)).s3, (l_1140 = ((p_1381->g_117 , l_1005.y) || GROUP_DIVERGE(1, 1))))))))) <= p_18))), 0x0836A431L, 0x4F2B34AEL, 0xC860453CL)).w, p_1381->g_1055.f0))) || (-10L))) == p_18) , p_19)));
            }
        }
    }
    (*p_21) = ((p_1381->g_117 , ((safe_rshift_func_uint8_t_u_u((~(*p_1381->g_242)), (p_1381->g_758.s4 > (((safe_add_func_int32_t_s_s(((VECTOR(int32_t, 2))(l_1147.se9)).even, ((VECTOR(int32_t, 16))((-1L), ((~((VECTOR(int64_t, 2))(0x7BE785729FDBE5A5L, (-8L))).lo) | (--(*p_1381->g_261))), (-1L), 0x3B6559A3L, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(add_sat(((VECTOR(int32_t, 2))(1L, 0x0CB33325L)).xyyx, ((VECTOR(int32_t, 2))(l_1150.sc6)).yyyy))), 0x7847279EL, (l_1004.s4 = (FAKE_DIVERGE(p_1381->group_1_offset, get_group_id(1), 10) >= 0x3CE09A9FL)), 6L, (-1L))), (safe_mod_func_int32_t_s_s((~0x69EA4D32L), l_1004.s7)), l_1064.s2, 0L, (-2L))).s1)) != l_1005.x) || ((!p_1381->g_1068) || GROUP_DIVERGE(1, 1)))))) & 255UL)) > (-1L));
    if (((safe_lshift_func_uint8_t_u_s(((+((VECTOR(int16_t, 8))(p_1381->g_1155.sfe889363)).s3) > (l_1156 == &p_1381->g_4)), 3)) != (p_1381->g_936.w , ((safe_mod_func_int16_t_s_s(((VECTOR(int16_t, 4))(p_1381->g_1159.xxxy)).z, (safe_lshift_func_uint16_t_u_s(((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 16))(sub_sat(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 8))(mul_hi(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(0x6B02L, 0UL)), 0x46CBL, 0x680DL)).xxwwywzy, ((VECTOR(uint16_t, 2))(abs_diff(((VECTOR(int16_t, 8))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 8),((VECTOR(int16_t, 16))(sub_sat(((VECTOR(int16_t, 2))(p_1381->g_1166.s27)).yxyxxyyxyyxxxxxx, ((VECTOR(int16_t, 8))((((5L && ((VECTOR(int64_t, 2))((((VECTOR(int64_t, 8))((((VECTOR(int64_t, 2))(l_1167.sc5)).xyxyyxxx && ((VECTOR(int64_t, 2))((-1L), 0L)).yxxxyxyx))).s13 && ((VECTOR(int64_t, 4))(p_1381->g_1168.ywzw)).even))).hi) < (*p_21)) , (safe_mod_func_int8_t_s_s(0x1BL, (1UL || (safe_div_func_uint16_t_u_u(p_18, ((((void*)0 == l_1173) < p_18) , 6UL))))))), 0x5D36L, p_19, p_1381->g_973.s7, 0x31F3L, ((VECTOR(int16_t, 2))(1L)), (-9L))).s3405113141357163))).odd, ((VECTOR(int16_t, 8))(0x0298L)), ((VECTOR(int16_t, 8))(0x39EAL))))).s40, ((VECTOR(int16_t, 2))(0x0A10L))))).xyxxyyyy))).s23 + ((VECTOR(uint16_t, 2))(0x60D7L))))), 65534UL, 4UL)).zyzzwxwyzzzxyxzz, ((VECTOR(uint16_t, 16))(0xDA0FL))))).odd * ((VECTOR(uint16_t, 8))(0xC5A1L))))).s6, p_18)))) == l_1004.s6))))
    { /* block id: 376 */
        int32_t *l_1176 = &p_1381->g_85;
        uint16_t l_1213 = 0UL;
        int16_t l_1237 = (-1L);
        uint32_t l_1238[10] = {0x5CC854BCL,4294967295UL,0x5CC854BCL,0x5CC854BCL,4294967295UL,0x5CC854BCL,0x5CC854BCL,4294967295UL,0x5CC854BCL,0x5CC854BCL};
        union U1 *l_1264[5];
        VECTOR(int32_t, 4) l_1275 = (VECTOR(int32_t, 4))(0x67A12EE4L, (VECTOR(int32_t, 2))(0x67A12EE4L, 0x3FBD7473L), 0x3FBD7473L);
        int i;
        for (i = 0; i < 5; i++)
            l_1264[i] = &p_1381->g_792;
        for (p_1381->g_792.f1 = 2; (p_1381->g_792.f1 >= 26); p_1381->g_792.f1 = safe_add_func_uint32_t_u_u(p_1381->g_792.f1, 3))
        { /* block id: 379 */
            int64_t l_1180 = 0x706B1D8F722DBD73L;
            int32_t l_1181 = (-1L);
            int32_t l_1182 = 0x6C97C7CDL;
            int32_t l_1183 = 0x4D658A25L;
            int32_t l_1184 = (-1L);
            int32_t l_1185 = 0x5D20D044L;
            uint8_t l_1186 = 0x0CL;
            VECTOR(uint32_t, 2) l_1191 = (VECTOR(uint32_t, 2))(0xD3555C5CL, 0x2F69A422L);
            VECTOR(int16_t, 2) l_1236 = (VECTOR(int16_t, 2))(0x3488L, 1L);
            VECTOR(int32_t, 2) l_1274 = (VECTOR(int32_t, 2))(0x6C65CF4AL, 0x4E952EF2L);
            int i;
            (1 + 1);
        }
        (*l_1176) &= 2L;
    }
    else
    { /* block id: 422 */
        int64_t **l_1287 = &p_1381->g_193;
        int8_t *l_1288 = (void*)0;
        int32_t l_1290 = 0x5C704EBEL;
        VECTOR(int32_t, 16) l_1291 = (VECTOR(int32_t, 16))(0x56A5148CL, (VECTOR(int32_t, 4))(0x56A5148CL, (VECTOR(int32_t, 2))(0x56A5148CL, 0L), 0L), 0L, 0x56A5148CL, 0L, (VECTOR(int32_t, 2))(0x56A5148CL, 0L), (VECTOR(int32_t, 2))(0x56A5148CL, 0L), 0x56A5148CL, 0L, 0x56A5148CL, 0L);
        int i;
        if ((*p_20))
        { /* block id: 423 */
            uint32_t *l_1289 = &p_1381->g_1043;
            l_1291.sf ^= (((void*)0 != &p_1381->g_601) , (safe_mod_func_uint32_t_u_u(((((VECTOR(uint32_t, 2))(mad_sat(((VECTOR(uint32_t, 2))(0UL, 0UL)), ((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 8))(l_1280.s31512067)), 4294967295UL, 4294967295UL, (safe_mul_func_uint16_t_u_u((((*p_1381->g_261) = (safe_lshift_func_uint16_t_u_s(p_19, 13))) & (safe_mul_func_uint16_t_u_u((l_1287 == (void*)0), (p_19 , (((*l_1289) = ((void*)0 != l_1288)) , (p_19 < p_19)))))), l_1290)), ((VECTOR(uint32_t, 4))(0x41E96428L)), 0x22E90E9DL)).s7cf2 + ((VECTOR(uint32_t, 4))(4294967295UL))))).hi, ((VECTOR(uint32_t, 2))(0UL))))).lo , &p_1381->g_1070) != &l_1032), l_1290)));
            return l_1289;
        }
        else
        { /* block id: 428 */
            VECTOR(uint8_t, 2) l_1302 = (VECTOR(uint8_t, 2))(0x2AL, 0x6AL);
            int i;
            for (p_1381->g_85 = 0; (p_1381->g_85 == 18); p_1381->g_85 = safe_add_func_uint64_t_u_u(p_1381->g_85, 7))
            { /* block id: 431 */
                union U0 *l_1298 = &p_1381->g_117;
                union U0 **l_1297 = &l_1298;
                int32_t *l_1310 = (void*)0;
                int8_t *l_1320 = (void*)0;
                int8_t *l_1321 = &p_1381->g_101;
                if (p_1381->g_1294)
                { /* block id: 432 */
                    int32_t *l_1301 = (void*)0;
                    if ((*p_20))
                    { /* block id: 433 */
                        return (*p_1381->g_1098);
                    }
                    else
                    { /* block id: 435 */
                        union U0 **l_1299 = &l_1298;
                        union U0 ***l_1300 = &l_1297;
                        l_1296 = &p_1381->g_246;
                        (*l_1300) = (l_1299 = l_1297);
                    }
                    (*p_1381->g_491) &= (*p_21);
                    if (l_1302.x)
                        continue;
                    if ((*p_20))
                        break;
                }
                else
                { /* block id: 443 */
                    int32_t l_1308 = 0x65109706L;
                    if ((safe_mod_func_int16_t_s_s(p_18, l_1302.x)))
                    { /* block id: 444 */
                        int32_t *l_1305 = (void*)0;
                        int32_t *l_1306 = (void*)0;
                        int32_t *l_1307[7][1] = {{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0},{(void*)0}};
                        int i, j;
                        l_1308 = (-8L);
                    }
                    else
                    { /* block id: 446 */
                        return (*p_1381->g_729);
                    }
                }
                l_1150.s4 &= (l_1291.s7 , (((*p_1381->g_1070) , p_19) > (((VECTOR(uint32_t, 8))(p_1381->g_1309.zzyxzyxw)).s6 , (p_18 , ((l_1310 == ((safe_sub_func_uint32_t_u_u((p_1381->g_1060.x = ((safe_mod_func_uint16_t_u_u(((*l_1156)++), (safe_lshift_func_int8_t_s_u(((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(l_1319.xyyy)), ((*l_1321) |= l_1290), ((VECTOR(int8_t, 2))(sub_sat(((VECTOR(int8_t, 2))((((VECTOR(int8_t, 4))(hadd(((VECTOR(int8_t, 4))((l_1322 , (safe_lshift_func_uint16_t_u_s(((safe_rshift_func_int8_t_s_u(((VECTOR(int8_t, 16))((((VECTOR(int8_t, 16))(((*l_1321) = (p_1381->g_849.s6 | ((l_1290 , p_20) != l_1327[8][4][2]))), ((VECTOR(int8_t, 8))((-1L))), ((VECTOR(int8_t, 4))(0L)), 0x7AL, 0x4EL, 0x15L)) && ((VECTOR(int8_t, 16))(0x5BL))))).s7, 2)) || FAKE_DIVERGE(p_1381->global_2_offset, get_global_id(2), 10)), p_1381->g_849.s1))), 0L, 0x4BL, (-3L))), ((VECTOR(int8_t, 4))(0L))))).hi < ((VECTOR(int8_t, 2))(0x3CL))))), ((VECTOR(int8_t, 2))(1L))))), 0x4DL, p_18, ((VECTOR(int8_t, 4))(0x49L)), ((VECTOR(int8_t, 2))((-1L))), 0x44L)).s0, 6)))) < p_19)), l_1291.s9)) , p_21)) , p_1381->g_934.sd)))));
                (*p_1381->g_1328) = &p_1381->g_242;
            }
        }
    }
    return (*p_1381->g_824);
}


/* ------------------------------------------ */
/* 
 * reads : p_1381->g_492 p_1381->g_85 p_1381->g_985
 * writes: p_1381->g_85 p_1381->g_494 p_1381->g_61
 */
int32_t * func_28(int32_t * p_29, int32_t * p_30, struct S3 * p_1381)
{ /* block id: 324 */
    uint64_t l_988 = 0x154B1A4C3AB7A972L;
    uint16_t *l_991 = (void*)0;
    int8_t *l_992 = (void*)0;
    int8_t *l_993 = (void*)0;
    int8_t *l_994[7][5][5] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
    VECTOR(int32_t, 16) l_995 = (VECTOR(int32_t, 16))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), 0x448E57D2L), 0x448E57D2L), 0x448E57D2L, (-1L), 0x448E57D2L, (VECTOR(int32_t, 2))((-1L), 0x448E57D2L), (VECTOR(int32_t, 2))((-1L), 0x448E57D2L), (-1L), 0x448E57D2L, (-1L), 0x448E57D2L);
    int32_t *l_996 = &p_1381->g_61;
    int32_t *l_997 = (void*)0;
    int32_t *l_998 = (void*)0;
    int32_t *l_999 = (void*)0;
    int32_t *l_1000 = (void*)0;
    int32_t *l_1001[1][8] = {{&p_1381->g_11,&p_1381->g_14,&p_1381->g_11,&p_1381->g_11,&p_1381->g_14,&p_1381->g_11,&p_1381->g_11,&p_1381->g_14}};
    uint8_t l_1002 = 0x80L;
    int i, j, k;
    l_1002 |= ((*l_996) = ((((-1L) & (l_988 , ((((((*p_1381->g_492) ^= 0x79C00C3CL) , (safe_sub_func_uint8_t_u_u((p_1381->g_494 = ((((void*)0 == l_991) > l_988) < l_988)), (l_995.s5 = l_988)))) < (p_1381->g_985.s7 && l_988)) & 0L) & 18446744073709551612UL))) || 9L) == (-4L)));
    return p_29;
}


/* ------------------------------------------ */
/* 
 * reads : p_1381->g_840 p_1381->g_849 p_1381->g_856 p_1381->g_874 p_1381->g_875 p_1381->g_773 p_1381->g_466 p_1381->g_3 p_1381->g_585 p_1381->g_829 p_1381->g_85 p_1381->g_890 p_1381->g_261 p_1381->g_271 p_1381->g_242 p_1381->g_243 p_1381->g_570 p_1381->g_500 p_1381->g_934 p_1381->g_935 p_1381->g_936 p_1381->g_944 p_1381->g_816.f0 p_1381->g_972 p_1381->g_973 p_1381->g_974 p_1381->g_978 p_1381->g_985 p_1381->g_679 p_1381->g_14 p_1381->g_661 p_1381->g_758 p_1381->g_193 p_1381->g_308 p_1381->g_692 p_1381->g_722 p_1381->g_26 p_1381->g_811 p_1381->g_619
 * writes: p_1381->g_117 p_1381->g_61 p_1381->g_85 p_1381->g_180 p_1381->g_915 p_1381->g_661 p_1381->g_106.f0 p_1381->g_193
 */
int32_t * func_31(int32_t * p_32, uint64_t  p_33, uint32_t  p_34, struct S3 * p_1381)
{ /* block id: 309 */
    VECTOR(uint8_t, 2) l_850 = (VECTOR(uint8_t, 2))(5UL, 0x89L);
    VECTOR(uint8_t, 4) l_853 = (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 249UL), 249UL);
    VECTOR(uint8_t, 2) l_857 = (VECTOR(uint8_t, 2))(0x27L, 0x24L);
    VECTOR(uint32_t, 8) l_864 = (VECTOR(uint32_t, 8))(4294967288UL, (VECTOR(uint32_t, 4))(4294967288UL, (VECTOR(uint32_t, 2))(4294967288UL, 0x018E7D93L), 0x018E7D93L), 0x018E7D93L, 4294967288UL, 0x018E7D93L);
    union U0 l_871 = {0x4CL};
    union U0 *l_872[8][5] = {{&p_1381->g_117,&p_1381->g_117,&p_1381->g_117,&p_1381->g_117,&p_1381->g_117},{&p_1381->g_117,&p_1381->g_117,&p_1381->g_117,&p_1381->g_117,&p_1381->g_117},{&p_1381->g_117,&p_1381->g_117,&p_1381->g_117,&p_1381->g_117,&p_1381->g_117},{&p_1381->g_117,&p_1381->g_117,&p_1381->g_117,&p_1381->g_117,&p_1381->g_117},{&p_1381->g_117,&p_1381->g_117,&p_1381->g_117,&p_1381->g_117,&p_1381->g_117},{&p_1381->g_117,&p_1381->g_117,&p_1381->g_117,&p_1381->g_117,&p_1381->g_117},{&p_1381->g_117,&p_1381->g_117,&p_1381->g_117,&p_1381->g_117,&p_1381->g_117},{&p_1381->g_117,&p_1381->g_117,&p_1381->g_117,&p_1381->g_117,&p_1381->g_117}};
    VECTOR(int8_t, 2) l_873 = (VECTOR(int8_t, 2))(1L, (-1L));
    int32_t *l_876 = &p_1381->g_3;
    uint64_t *l_877 = &p_1381->g_174;
    int32_t *l_878 = &p_1381->g_85;
    VECTOR(uint16_t, 16) l_886 = (VECTOR(uint16_t, 16))(0x2D6EL, (VECTOR(uint16_t, 4))(0x2D6EL, (VECTOR(uint16_t, 2))(0x2D6EL, 0xCCE3L), 0xCCE3L), 0xCCE3L, 0x2D6EL, 0xCCE3L, (VECTOR(uint16_t, 2))(0x2D6EL, 0xCCE3L), (VECTOR(uint16_t, 2))(0x2D6EL, 0xCCE3L), 0x2D6EL, 0xCCE3L, 0x2D6EL, 0xCCE3L);
    VECTOR(uint16_t, 4) l_889 = (VECTOR(uint16_t, 4))(0x2F16L, (VECTOR(uint16_t, 2))(0x2F16L, 1UL), 1UL);
    VECTOR(uint16_t, 16) l_891 = (VECTOR(uint16_t, 16))(65534UL, (VECTOR(uint16_t, 4))(65534UL, (VECTOR(uint16_t, 2))(65534UL, 0x74A3L), 0x74A3L), 0x74A3L, 65534UL, 0x74A3L, (VECTOR(uint16_t, 2))(65534UL, 0x74A3L), (VECTOR(uint16_t, 2))(65534UL, 0x74A3L), 65534UL, 0x74A3L, 65534UL, 0x74A3L);
    VECTOR(uint16_t, 2) l_894 = (VECTOR(uint16_t, 2))(65528UL, 65535UL);
    VECTOR(uint16_t, 16) l_901 = (VECTOR(uint16_t, 16))(0x7762L, (VECTOR(uint16_t, 4))(0x7762L, (VECTOR(uint16_t, 2))(0x7762L, 0x7202L), 0x7202L), 0x7202L, 0x7762L, 0x7202L, (VECTOR(uint16_t, 2))(0x7762L, 0x7202L), (VECTOR(uint16_t, 2))(0x7762L, 0x7202L), 0x7762L, 0x7202L, 0x7762L, 0x7202L);
    uint64_t *l_914 = &p_1381->g_915;
    uint8_t *l_916 = (void*)0;
    uint8_t *l_917 = (void*)0;
    uint8_t *l_918[9][2][7] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1381->g_494},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1381->g_494}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1381->g_494},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1381->g_494}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1381->g_494},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1381->g_494}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1381->g_494},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1381->g_494}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1381->g_494},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1381->g_494}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1381->g_494},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1381->g_494}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1381->g_494},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1381->g_494}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1381->g_494},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1381->g_494}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1381->g_494},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,&p_1381->g_494}}};
    uint16_t *l_919 = &p_1381->g_106.f0;
    int32_t *l_920 = (void*)0;
    int32_t *l_921[4][10] = {{&p_1381->g_61,&p_1381->g_14,&p_1381->g_61,&p_1381->g_61,&p_1381->g_14,&p_1381->g_61,&p_1381->g_61,&p_1381->g_14,&p_1381->g_61,&p_1381->g_61},{&p_1381->g_61,&p_1381->g_14,&p_1381->g_61,&p_1381->g_61,&p_1381->g_14,&p_1381->g_61,&p_1381->g_61,&p_1381->g_14,&p_1381->g_61,&p_1381->g_61},{&p_1381->g_61,&p_1381->g_14,&p_1381->g_61,&p_1381->g_61,&p_1381->g_14,&p_1381->g_61,&p_1381->g_61,&p_1381->g_14,&p_1381->g_61,&p_1381->g_61},{&p_1381->g_61,&p_1381->g_14,&p_1381->g_61,&p_1381->g_61,&p_1381->g_14,&p_1381->g_61,&p_1381->g_61,&p_1381->g_14,&p_1381->g_61,&p_1381->g_61}};
    int32_t l_922 = (-6L);
    union U1 l_932 = {-6L};
    VECTOR(int8_t, 8) l_933 = (VECTOR(int8_t, 8))(0x10L, (VECTOR(int8_t, 4))(0x10L, (VECTOR(int8_t, 2))(0x10L, (-6L)), (-6L)), (-6L), 0x10L, (-6L));
    VECTOR(int16_t, 4) l_937 = (VECTOR(int16_t, 4))(0x292CL, (VECTOR(int16_t, 2))(0x292CL, 0x12DCL), 0x12DCL);
    VECTOR(uint16_t, 4) l_945 = (VECTOR(uint16_t, 4))(65532UL, (VECTOR(uint16_t, 2))(65532UL, 0xC7BCL), 0xC7BCL);
    VECTOR(uint8_t, 16) l_956 = (VECTOR(uint8_t, 16))(0x36L, (VECTOR(uint8_t, 4))(0x36L, (VECTOR(uint8_t, 2))(0x36L, 0x6BL), 0x6BL), 0x6BL, 0x36L, 0x6BL, (VECTOR(uint8_t, 2))(0x36L, 0x6BL), (VECTOR(uint8_t, 2))(0x36L, 0x6BL), 0x36L, 0x6BL, 0x36L, 0x6BL);
    VECTOR(uint8_t, 8) l_959 = (VECTOR(uint8_t, 8))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 0xA0L), 0xA0L), 0xA0L, 255UL, 0xA0L);
    VECTOR(int16_t, 2) l_977 = (VECTOR(int16_t, 2))(0x685FL, 0L);
    VECTOR(int8_t, 4) l_983 = (VECTOR(int8_t, 4))(0x4BL, (VECTOR(int8_t, 2))(0x4BL, 8L), 8L);
    VECTOR(uint8_t, 16) l_984 = (VECTOR(uint8_t, 16))(254UL, (VECTOR(uint8_t, 4))(254UL, (VECTOR(uint8_t, 2))(254UL, 0UL), 0UL), 0UL, 254UL, 0UL, (VECTOR(uint8_t, 2))(254UL, 0UL), (VECTOR(uint8_t, 2))(254UL, 0UL), 254UL, 0UL, 254UL, 0UL);
    int64_t **l_986 = &p_1381->g_193;
    uint32_t l_987 = 4294967295UL;
    int i, j, k;
    (*l_878) |= ((VECTOR(int32_t, 8))(safe_clamp_func(VECTOR(int32_t, 8),int32_t,((VECTOR(int32_t, 4))(p_1381->g_840.yxxy)).wzwyzzzy, (int32_t)((*p_1381->g_829) = (safe_sub_func_int8_t_s_s((safe_sub_func_uint32_t_u_u((safe_mod_func_uint8_t_u_u(p_33, ((VECTOR(uint8_t, 2))(safe_clamp_func(VECTOR(uint8_t, 2),VECTOR(uint8_t, 2),((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 16))(rotate(((VECTOR(uint8_t, 8))(p_1381->g_849.s34674066)).s5036123735605653, ((VECTOR(uint8_t, 2))(min(((VECTOR(uint8_t, 16))(((VECTOR(uint8_t, 4))(l_850.xxyx)), ((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 8))(l_853.wxywzywz)).s73 + ((VECTOR(uint8_t, 8))((+((VECTOR(uint8_t, 16))(hadd(((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(p_1381->g_856.s55)), 8UL, 0x96L)).yxwwwzxz + ((VECTOR(uint8_t, 2))(0UL, 0UL)).yxyxxxxx))).s2257244344635707, ((VECTOR(uint8_t, 2))(mul_hi(((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 4))(l_857.xxxy)).y, 0x08L, 250UL, 0x48L)).odd, ((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 8))((safe_sub_func_int16_t_s_s(((((VECTOR(uint32_t, 2))(l_864.s07)).hi ^ (l_864.s2 , (((((VECTOR(int64_t, 8))(((safe_sub_func_int8_t_s_s(0x48L, (((((((safe_mul_func_uint8_t_u_u(0UL, ((p_1381->g_117 = l_871) , (((VECTOR(int8_t, 16))(l_873.yyyxxyxyxyxyyyyx)).s8 || (p_1381->g_874 , ((VECTOR(uint8_t, 2))(max(((VECTOR(uint8_t, 2))(p_1381->g_875.wx)), (uint8_t)l_850.y))).hi))))) <= (l_876 == l_876)) <= 0xE8B1277FL) | p_1381->g_773.x) ^ 0x9A11C4B00949EB0FL) | p_1381->g_466.y) & 7UL))) >= (*l_876)), ((VECTOR(int64_t, 2))(0x0DA8611277196E17L)), p_34, 0L, ((VECTOR(int64_t, 2))(0x6B59C2C310F3360FL)), 0x294F4231702BB778L)).s0 , &p_33) != l_877) <= 0x48L))) >= (*l_876)), p_1381->g_585.y)), ((VECTOR(uint8_t, 2))(255UL)), 255UL, 248UL, ((VECTOR(uint8_t, 2))(1UL)), 254UL)).odd + ((VECTOR(uint8_t, 4))(255UL))))) * ((VECTOR(uint8_t, 4))(4UL))))).odd))).yxyyyyxxxxyxxxyy))).hi))).s73))), 0x39L, 1UL, ((VECTOR(uint8_t, 2))(255UL)), ((VECTOR(uint8_t, 2))(1UL)), ((VECTOR(uint8_t, 2))(0x40L)), 4UL, 1UL)).sc7, ((VECTOR(uint8_t, 2))(0x7DL))))).yxxxyxxxxyxyyxxy))).s0a72 + ((VECTOR(uint8_t, 4))(0x72L))))).odd, ((VECTOR(uint8_t, 2))(7UL)), ((VECTOR(uint8_t, 2))(0x13L))))).odd)), 0L)), (*l_876)))), (int32_t)5L))).s0;
    if (p_1381->g_85)
        goto lbl_881;
lbl_881:
    (*l_878) &= (0x7444E7FC71265681L > (safe_rshift_func_int16_t_s_s(p_34, 11)));
    if (p_1381->g_3)
        goto lbl_923;
lbl_923:
    l_922 ^= ((((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 16))(l_886.s29928c18d628842a)).s52 + ((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 2))(0xD130L, 0xBC8AL)).xyyxyxxx + ((VECTOR(uint16_t, 16))(l_889.xzzyzwwzzzzzwzww)).lo))).s76))) ^ ((VECTOR(uint16_t, 2))(mad_sat(((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 2))(p_1381->g_890.xx)).xxxy | ((VECTOR(uint16_t, 8))(l_891.s073674c4)).odd))).lo, ((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 2))(0x5A71L, 0x2BFCL)) + ((VECTOR(uint16_t, 2))(l_894.xx))))), 4UL, (safe_sub_func_uint8_t_u_u((safe_rshift_func_uint16_t_u_u(((*l_919) = (safe_sub_func_uint16_t_u_u(((VECTOR(uint16_t, 8))(l_901.sefeed5aa)).s4, (safe_lshift_func_uint16_t_u_s((((*p_1381->g_261) = (((void*)0 == &p_1381->g_71) ^ (*l_878))) >= ((safe_rshift_func_uint8_t_u_s((p_34 > (p_1381->g_661.s7 = (p_1381->g_849.s2 >= ((((*l_878) , p_1381->g_271[2]) , ((safe_div_func_uint8_t_u_u(((*l_876) & (safe_lshift_func_int8_t_s_u((((*l_914) = ((((safe_div_func_int32_t_s_s((safe_mul_func_uint8_t_u_u((*p_1381->g_242), 0x40L)), (*l_878))) == (-1L)) > (*l_878)) || 0xA1356290L)) , (*l_876)), (*l_878)))), p_1381->g_570.z)) & (*l_878))) || FAKE_DIVERGE(p_1381->global_1_offset, get_global_id(1), 10))))), p_1381->g_500.x)) || 3L)), (*l_878)))))), GROUP_DIVERGE(1, 1))), (*l_878))), 65535UL, ((VECTOR(uint16_t, 8))(0x8E47L)), 0x248EL, 0x7C6DL, 0x1F3DL)) & ((VECTOR(uint16_t, 16))(0xEC8CL))))).s4a, ((VECTOR(uint16_t, 2))(0xEB1CL)))))))), 2UL, 65535UL)).yzyyywzy >> ((VECTOR(uint16_t, 8))(16))))).s7 & (*l_876)) >= 6UL);
    l_987 &= ((safe_div_func_uint8_t_u_u(((safe_div_func_int8_t_s_s((safe_sub_func_uint64_t_u_u((safe_sub_func_uint32_t_u_u(((l_932 , (((VECTOR(int8_t, 4))((((VECTOR(int8_t, 8))((((VECTOR(int8_t, 2))(0x11L, 0x4AL)).xxyyxxxx || ((VECTOR(int8_t, 4))(safe_clamp_func(VECTOR(int8_t, 4),int8_t,((VECTOR(int8_t, 8))((((VECTOR(int8_t, 8))((((VECTOR(int8_t, 2))(safe_clamp_func(VECTOR(int8_t, 2),int8_t,((VECTOR(int8_t, 4))(rotate(((VECTOR(int8_t, 16))(l_933.s6115310770230206)).sef8f, ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))((((VECTOR(int8_t, 8))((((VECTOR(int8_t, 16))((((VECTOR(int8_t, 4))(p_1381->g_934.s8a1c)).xwwzyxywxyzxyzzz != ((VECTOR(int8_t, 4))((((VECTOR(int8_t, 2))((((VECTOR(int8_t, 4))(p_1381->g_935.s4451)).odd < ((VECTOR(int8_t, 8))((!((VECTOR(int8_t, 4))((((VECTOR(int8_t, 4))(((VECTOR(int8_t, 2))(p_1381->g_936.wz)), 0x05L, 9L)) != ((VECTOR(int8_t, 8))(safe_clamp_func(VECTOR(int8_t, 8),int8_t,((VECTOR(int8_t, 2))(1L, 0L)).yyyyxxxx, (int8_t)(((VECTOR(int16_t, 2))(l_937.xx)).odd < (safe_lshift_func_uint16_t_u_s(((safe_lshift_func_uint16_t_u_s(((VECTOR(uint16_t, 2))(sub_sat(((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 2))(hadd(((VECTOR(uint16_t, 4))(p_1381->g_944.s1324)).hi, ((VECTOR(uint16_t, 2))(65535UL, 2UL))))) * ((VECTOR(uint16_t, 4))(p_33, ((VECTOR(uint16_t, 2))(hadd(((VECTOR(uint16_t, 2))(abs_diff(((VECTOR(uint16_t, 2))(0x07C4L, 0xBDC7L)), ((VECTOR(uint16_t, 2))(min(((VECTOR(uint16_t, 16))(mul_hi(((VECTOR(uint16_t, 8))(l_945.wwzwxzyw)).s7323623717674015, ((VECTOR(uint16_t, 2))(0xEBA0L, 0xCBA8L)).xyyxxxxyyyxxyyxx))).s9b, ((VECTOR(uint16_t, 2))(1UL, 0UL)))))))), ((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 2))(rotate(((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 8))(add_sat(((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 8))((((VECTOR(uint16_t, 4))(0x1FDCL, ((VECTOR(uint16_t, 2))(65527UL, 0xED8EL)), 65528UL)).wzwwwyzy + ((VECTOR(uint16_t, 4))(p_1381->g_816.f0, ((VECTOR(uint16_t, 2))(upsample(((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(mad_hi(((VECTOR(uint8_t, 2))(rotate(((VECTOR(uint8_t, 4))(safe_clamp_func(VECTOR(uint8_t, 4),VECTOR(uint8_t, 4),((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 8))(l_956.s3b181385)).hi + ((VECTOR(uint8_t, 4))(clz(((VECTOR(uint8_t, 4))(clz(((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 8))(l_959.s53320641)).s06 + ((VECTOR(uint8_t, 2))(mul_hi(((VECTOR(uint8_t, 4))(mad_hi(((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 4))(((safe_sub_func_uint64_t_u_u((safe_div_func_int16_t_s_s(9L, (p_34 , ((((safe_lshift_func_int16_t_s_u(((((*l_986) = ((safe_lshift_func_int8_t_s_u((safe_mod_func_int16_t_s_s(p_33, ((VECTOR(int16_t, 8))((((VECTOR(int16_t, 16))(add_sat(((VECTOR(int16_t, 8))((((VECTOR(int16_t, 2))(p_1381->g_972.sbd)).xyxyyyxx && ((VECTOR(int16_t, 16))((((VECTOR(int16_t, 2))(add_sat(((VECTOR(int16_t, 4))(p_1381->g_973.s4502)).odd, ((VECTOR(int16_t, 16))(p_1381->g_974.xxyxxyyyyyyyyyyy)).s82))).yyyyxxyxyxyyyxxx && ((VECTOR(int16_t, 4))((((VECTOR(int16_t, 2))((((VECTOR(int16_t, 8))((safe_rshift_func_uint16_t_u_s(FAKE_DIVERGE(p_1381->global_2_offset, get_global_id(2), 10), ((VECTOR(int16_t, 16))((((VECTOR(int16_t, 2))(l_977.yy)).xxxyyyxxxyyxyyxx && ((VECTOR(int16_t, 8))(p_33, 0x6061L, 0x340FL, 0x6B49L, ((VECTOR(int16_t, 2))((((VECTOR(int16_t, 4))((-2L), ((VECTOR(int16_t, 2))(p_1381->g_978.yx)), 1L)).even || ((VECTOR(int16_t, 2))((((VECTOR(int16_t, 16))((-6L), (safe_div_func_uint32_t_u_u(((((((VECTOR(int16_t, 16))(upsample(((VECTOR(int8_t, 2))(l_983.zw)).xyyxxyxxyyxxyxxy, ((VECTOR(uint8_t, 8))(min(((VECTOR(uint8_t, 2))(l_984.see)).xyyxyxxy, ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(p_1381->g_985.s53)).hi, ((p_34 && p_1381->g_679.y) | 0x2BL), 0x60L, 255UL)).xxxyxxyx))).s4337533473053157))).sc < 0UL) < (*p_32)) & p_33) == 0x21E394AAL), (*l_878))), p_34, 0x1C0DL, ((VECTOR(int16_t, 4))(0L)), ((VECTOR(int16_t, 4))(0x667EL)), ((VECTOR(int16_t, 2))(0L)), 0x1CB2L, 0x085DL)).s64 ^ ((VECTOR(int16_t, 2))(0x709BL)))))))), 0x41AFL, 0x6381L)).s7426111076424322))).s4)), p_34, 3L, p_1381->g_661.s5, p_1381->g_758.sf, 4L, 0L, 0x75D2L)).s15 && ((VECTOR(int16_t, 2))(0x2F51L))))).yxxy && ((VECTOR(int16_t, 4))(0L))))).xwxxxzxzwwzxzzzw))).hi))).s2124574416366261, ((VECTOR(int16_t, 16))(0L))))).odd != ((VECTOR(int16_t, 8))(0L))))).s1)), p_1381->g_936.w)) , p_1381->g_193)) != (void*)0) , 1L), p_1381->g_308.y)) & 1L) <= (*p_32)) && (*l_878))))), p_33)) , p_1381->g_692.x), 0x8FL, 247UL, 0xECL)).xywwwzyz + ((VECTOR(uint8_t, 8))(0x83L))))).even, ((VECTOR(uint8_t, 4))(0xA4L)), ((VECTOR(uint8_t, 4))(0x1EL))))).hi, ((VECTOR(uint8_t, 2))(0x2EL)))))))).xxxx))))))))), ((VECTOR(uint8_t, 4))(0x0CL)), ((VECTOR(uint8_t, 4))(0x81L))))).odd, ((VECTOR(uint8_t, 2))(255UL))))), ((VECTOR(uint8_t, 2))(0UL)), ((VECTOR(uint8_t, 2))(0UL))))), 0xC2L, 0xCFL)).wwwyzxzzyxyxxzzy * ((VECTOR(uint8_t, 16))(0xFFL))))).s2a, ((VECTOR(uint8_t, 2))(0UL))))), 1UL)).zyzxyxyw))) ^ ((VECTOR(uint16_t, 8))(0UL))))), ((VECTOR(uint16_t, 8))(0UL))))).s0, 0x2C00L, 65526UL, 0x818AL, ((VECTOR(uint16_t, 4))(65528UL)))).s02, ((VECTOR(uint16_t, 2))(65535UL))))).xxxyxyyxyxyyxxxx + ((VECTOR(uint16_t, 16))(0UL))))).s91d3 - ((VECTOR(uint16_t, 4))(0xB2C0L))))).even))), 0x0143L)).hi))), ((VECTOR(uint16_t, 2))(0x8903L))))).lo, p_1381->g_3)) < (*l_878)), p_1381->g_972.s0))), (int8_t)p_34))).hi))).xxzzwwyy))).s70))).xyxx && ((VECTOR(int8_t, 4))(0x3FL))))).wxxxxwzwwyyxxywy))).lo < ((VECTOR(int8_t, 8))(5L))))).s7034715360372577 && ((VECTOR(int8_t, 16))(0x0CL))))).s3, 0x3BL, p_1381->g_972.se, p_1381->g_722, ((VECTOR(int8_t, 4))(0x10L)))).even))).even, (int8_t)p_1381->g_773.x, (int8_t)p_1381->g_26))).yyxxyyyx && ((VECTOR(int8_t, 8))((-1L)))))) || ((VECTOR(int8_t, 8))(1L))))).hi, (int8_t)0L, (int8_t)(-8L)))).xzzxyyyx))).lo < ((VECTOR(int8_t, 4))(0x76L))))).w || 1L)) != 0xDEAFL), p_1381->g_811.z)), p_33)), p_1381->g_619.s0)) ^ 2L), (*l_876))) >= (*l_878));
    return l_878;
}


/* ------------------------------------------ */
/* 
 * reads : p_1381->g_465 p_1381->g_99 p_1381->g_101 p_1381->g_491 p_1381->g_61 p_1381->g_431 p_1381->g_24 p_1381->g_117.f2 p_1381->g_466 p_1381->g_320 p_1381->g_472 p_1381->g_563 p_1381->g_523 p_1381->g_261 p_1381->g_348.f0 p_1381->g_729 p_1381->g_722 p_1381->g_14 p_1381->g_816 p_1381->g_84 p_1381->g_824 p_1381->g_106 p_1381->g_829 p_1381->g_198.f0 p_1381->g_106.f0 p_1381->g_494 p_1381->g_180 p_1381->g_3 p_1381->g_562 p_1381->g_242 p_1381->g_243 p_1381->g_85 p_1381->g_570 p_1381->g_4 p_1381->g_585 p_1381->g_619 p_1381->g_127 p_1381->g_643 p_1381->g_658 p_1381->g_661 p_1381->g_675 p_1381->g_679 p_1381->g_690 p_1381->g_692 p_1381->g_275 p_1381->g_809 p_1381->g_811 p_1381->g_812 p_1381->g_815 p_1381->g_773
 * writes: p_1381->g_106.f0 p_1381->g_117.f2 p_1381->g_101 p_1381->g_84 p_1381->g_494 p_1381->g_61 p_1381->g_320 p_1381->g_500 p_1381->g_523 p_1381->g_117 p_1381->g_180 p_1381->g_734 p_1381->g_174 p_1381->g_193
 */
int32_t * func_35(int32_t  p_36, uint32_t  p_37, int32_t  p_38, int32_t * p_39, struct S3 * p_1381)
{ /* block id: 200 */
    VECTOR(int64_t, 2) l_501 = (VECTOR(int64_t, 2))(0x1569969D21181569L, (-1L));
    int32_t l_503 = (-3L);
    int32_t l_511 = 8L;
    int32_t l_519 = 0L;
    VECTOR(int64_t, 2) l_521 = (VECTOR(int64_t, 2))((-1L), 0L);
    uint16_t *l_524 = &p_1381->g_26;
    union U0 l_568 = {3L};
    int32_t l_574 = (-1L);
    VECTOR(int32_t, 16) l_577 = (VECTOR(int32_t, 16))(0x50F7D272L, (VECTOR(int32_t, 4))(0x50F7D272L, (VECTOR(int32_t, 2))(0x50F7D272L, (-1L)), (-1L)), (-1L), 0x50F7D272L, (-1L), (VECTOR(int32_t, 2))(0x50F7D272L, (-1L)), (VECTOR(int32_t, 2))(0x50F7D272L, (-1L)), 0x50F7D272L, (-1L), 0x50F7D272L, (-1L));
    uint32_t *l_578 = &p_1381->g_117.f2;
    uint32_t *l_579 = (void*)0;
    uint32_t *l_580[5][7] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
    int64_t *l_586 = (void*)0;
    int64_t *l_587 = (void*)0;
    int64_t *l_588 = (void*)0;
    int64_t *l_589 = (void*)0;
    int64_t *l_590 = (void*)0;
    int64_t *l_591 = (void*)0;
    int64_t *l_592 = (void*)0;
    int64_t *l_593 = (void*)0;
    int64_t *l_594 = (void*)0;
    int64_t *l_595 = (void*)0;
    int64_t *l_596 = (void*)0;
    int64_t *l_597 = (void*)0;
    int64_t *l_598 = (void*)0;
    int64_t *l_599 = (void*)0;
    int64_t *l_600 = (void*)0;
    VECTOR(int16_t, 2) l_620 = (VECTOR(int16_t, 2))(0x51A6L, 0x475CL);
    uint64_t l_629 = 0xAB6039C44E11C666L;
    VECTOR(uint8_t, 8) l_638 = (VECTOR(uint8_t, 8))(4UL, (VECTOR(uint8_t, 4))(4UL, (VECTOR(uint8_t, 2))(4UL, 255UL), 255UL), 255UL, 4UL, 255UL);
    VECTOR(uint8_t, 8) l_639 = (VECTOR(uint8_t, 8))(0xFDL, (VECTOR(uint8_t, 4))(0xFDL, (VECTOR(uint8_t, 2))(0xFDL, 0x08L), 0x08L), 0x08L, 0xFDL, 0x08L);
    VECTOR(uint8_t, 4) l_654 = (VECTOR(uint8_t, 4))(0x05L, (VECTOR(uint8_t, 2))(0x05L, 1UL), 1UL);
    VECTOR(uint8_t, 2) l_676 = (VECTOR(uint8_t, 2))(0x97L, 250UL);
    VECTOR(uint8_t, 16) l_691 = (VECTOR(uint8_t, 16))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 250UL), 250UL), 250UL, 0UL, 250UL, (VECTOR(uint8_t, 2))(0UL, 250UL), (VECTOR(uint8_t, 2))(0UL, 250UL), 0UL, 250UL, 0UL, 250UL);
    uint32_t l_697 = 0xED10B775L;
    union U2 *l_735 = &p_1381->g_106;
    int32_t *l_839 = &l_511;
    int i, j;
lbl_730:
    for (p_1381->g_106.f0 = 13; (p_1381->g_106.f0 != 42); p_1381->g_106.f0++)
    { /* block id: 203 */
        VECTOR(int64_t, 16) l_506 = (VECTOR(int64_t, 16))(0x2F934E81C3F5A2B8L, (VECTOR(int64_t, 4))(0x2F934E81C3F5A2B8L, (VECTOR(int64_t, 2))(0x2F934E81C3F5A2B8L, 0x063B1FA4E80BAEE6L), 0x063B1FA4E80BAEE6L), 0x063B1FA4E80BAEE6L, 0x2F934E81C3F5A2B8L, 0x063B1FA4E80BAEE6L, (VECTOR(int64_t, 2))(0x2F934E81C3F5A2B8L, 0x063B1FA4E80BAEE6L), (VECTOR(int64_t, 2))(0x2F934E81C3F5A2B8L, 0x063B1FA4E80BAEE6L), 0x2F934E81C3F5A2B8L, 0x063B1FA4E80BAEE6L, 0x2F934E81C3F5A2B8L, 0x063B1FA4E80BAEE6L);
        uint32_t *l_510[4][6] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
        VECTOR(int8_t, 16) l_514 = (VECTOR(int8_t, 16))(6L, (VECTOR(int8_t, 4))(6L, (VECTOR(int8_t, 2))(6L, 1L), 1L), 1L, 6L, 1L, (VECTOR(int8_t, 2))(6L, 1L), (VECTOR(int8_t, 2))(6L, 1L), 6L, 1L, 6L, 1L);
        int8_t *l_515 = &p_1381->g_101;
        int32_t *l_516 = (void*)0;
        int32_t *l_517 = (void*)0;
        int32_t *l_518[9][9] = {{&p_1381->g_11,(void*)0,(void*)0,&p_1381->g_11,(void*)0,&p_1381->g_11,(void*)0,(void*)0,&p_1381->g_11},{&p_1381->g_11,(void*)0,(void*)0,&p_1381->g_11,(void*)0,&p_1381->g_11,(void*)0,(void*)0,&p_1381->g_11},{&p_1381->g_11,(void*)0,(void*)0,&p_1381->g_11,(void*)0,&p_1381->g_11,(void*)0,(void*)0,&p_1381->g_11},{&p_1381->g_11,(void*)0,(void*)0,&p_1381->g_11,(void*)0,&p_1381->g_11,(void*)0,(void*)0,&p_1381->g_11},{&p_1381->g_11,(void*)0,(void*)0,&p_1381->g_11,(void*)0,&p_1381->g_11,(void*)0,(void*)0,&p_1381->g_11},{&p_1381->g_11,(void*)0,(void*)0,&p_1381->g_11,(void*)0,&p_1381->g_11,(void*)0,(void*)0,&p_1381->g_11},{&p_1381->g_11,(void*)0,(void*)0,&p_1381->g_11,(void*)0,&p_1381->g_11,(void*)0,(void*)0,&p_1381->g_11},{&p_1381->g_11,(void*)0,(void*)0,&p_1381->g_11,(void*)0,&p_1381->g_11,(void*)0,(void*)0,&p_1381->g_11},{&p_1381->g_11,(void*)0,(void*)0,&p_1381->g_11,(void*)0,&p_1381->g_11,(void*)0,(void*)0,&p_1381->g_11}};
        int i, j;
        p_1381->g_84[1] = (((((p_1381->g_117.f2 = (l_511 = (((((VECTOR(int64_t, 2))(rhadd(((VECTOR(int64_t, 2))(hadd(((VECTOR(int64_t, 16))(min(((VECTOR(int64_t, 8))(p_1381->g_499.s864dd3c7)).s6123146437037047, ((VECTOR(int64_t, 2))(p_1381->g_500.xx)).yyyyxxyyyxxxxyyx))).sb4, ((VECTOR(int64_t, 2))(l_501.yy))))), ((VECTOR(int64_t, 8))(p_1381->g_502.s64646110)).s75))).odd & 0xD575401DFDB34D62L) , l_503) || (safe_rshift_func_uint8_t_u_s(((((VECTOR(int64_t, 16))(l_506.s7ab610744274a1e5)).s5 ^ (safe_unary_minus_func_uint64_t_u((safe_add_func_uint32_t_u_u(4294967292UL, p_1381->g_465.sf))))) & 4294967295UL), 5))))) < (l_519 = (safe_sub_func_int8_t_s_s(p_1381->g_99.y, ((*l_515) ^= ((VECTOR(int8_t, 4))(l_514.se130)).y))))) , ((safe_unary_minus_func_int64_t_s((((VECTOR(int64_t, 4))(add_sat(((VECTOR(int64_t, 2))((-1L), (-1L))).xyyx, ((VECTOR(int64_t, 8))((((VECTOR(int64_t, 16))(l_521.xyxyyyxyxyxxxyxy)).hi && ((VECTOR(int64_t, 4))(0L, ((VECTOR(int64_t, 2))(p_1381->g_522.sd4)), 0x1084435127A92B96L)).wzxwyxzw))).hi))).y ^ ((VECTOR(uint64_t, 16))(upsample(((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 2))((((VECTOR(uint32_t, 8))(add_sat(((VECTOR(uint32_t, 16))(0UL, p_37, (+4UL), p_1381->g_523, 4294967295UL, ((VECTOR(uint32_t, 4))(8UL)), 4294967295UL, ((VECTOR(uint32_t, 4))(0x676534CFL)), 0x3C4541B8L, 0x8164A330L)).lo, ((VECTOR(uint32_t, 8))(0x1316025DL))))).s23 | ((VECTOR(uint32_t, 2))(4294967295UL))))) | ((VECTOR(uint32_t, 2))(0xD53CF60FL))))).xxxxxxyxyxxyyxyy, ((VECTOR(uint32_t, 16))(0x756DF95DL))))).se))) , l_524)) != l_524) , (void*)0);
        for (p_1381->g_494 = (-16); (p_1381->g_494 < 19); p_1381->g_494++)
        { /* block id: 211 */
            int32_t l_534[7][9] = {{0L,(-6L),0x3EFEECD8L,(-6L),0L,0L,(-6L),0x3EFEECD8L,(-6L)},{0L,(-6L),0x3EFEECD8L,(-6L),0L,0L,(-6L),0x3EFEECD8L,(-6L)},{0L,(-6L),0x3EFEECD8L,(-6L),0L,0L,(-6L),0x3EFEECD8L,(-6L)},{0L,(-6L),0x3EFEECD8L,(-6L),0L,0L,(-6L),0x3EFEECD8L,(-6L)},{0L,(-6L),0x3EFEECD8L,(-6L),0L,0L,(-6L),0x3EFEECD8L,(-6L)},{0L,(-6L),0x3EFEECD8L,(-6L),0L,0L,(-6L),0x3EFEECD8L,(-6L)},{0L,(-6L),0x3EFEECD8L,(-6L),0L,0L,(-6L),0x3EFEECD8L,(-6L)}};
            VECTOR(int32_t, 2) l_535 = (VECTOR(int32_t, 2))(7L, 0x65A2B812L);
            VECTOR(uint16_t, 2) l_543 = (VECTOR(uint16_t, 2))(1UL, 0x9775L);
            VECTOR(uint8_t, 16) l_556 = (VECTOR(uint8_t, 16))(2UL, (VECTOR(uint8_t, 4))(2UL, (VECTOR(uint8_t, 2))(2UL, 0x2FL), 0x2FL), 0x2FL, 2UL, 0x2FL, (VECTOR(uint8_t, 2))(2UL, 0x2FL), (VECTOR(uint8_t, 2))(2UL, 0x2FL), 2UL, 0x2FL, 2UL, 0x2FL);
            uint8_t *l_557 = &p_1381->g_494;
            int i, j;
            for (p_1381->g_117.f2 = (-22); (p_1381->g_117.f2 > 35); p_1381->g_117.f2 = safe_add_func_int64_t_s_s(p_1381->g_117.f2, 9))
            { /* block id: 214 */
                int32_t *l_533 = &p_1381->g_3;
                VECTOR(uint16_t, 8) l_542 = (VECTOR(uint16_t, 8))(0x30C1L, (VECTOR(uint16_t, 4))(0x30C1L, (VECTOR(uint16_t, 2))(0x30C1L, 0x7B87L), 0x7B87L), 0x7B87L, 0x30C1L, 0x7B87L);
                int64_t *l_558 = (void*)0;
                int64_t *l_559[3][4] = {{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0}};
                int i, j;
                for (p_37 = 21; (p_37 == 40); p_37++)
                { /* block id: 217 */
                    (*p_1381->g_491) = (safe_lshift_func_uint8_t_u_u((l_533 != (void*)0), 4));
                    l_534[6][1] |= (*p_1381->g_491);
                }
                l_535.x = ((VECTOR(int32_t, 16))(l_535.xyxyyxyyyyxxxyyx)).s3;
                l_519 &= (p_1381->g_465.s7 | (((l_521.x < (p_1381->g_431.z == ((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 2))(rhadd(((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 2))(l_542.s22)).yxyxyxyyyxxxxyyy | ((VECTOR(uint16_t, 8))(l_543.xyyxxyyy)).s0366310724474606))).s0 != ((p_1381->g_500.y = (safe_div_func_uint64_t_u_u((*p_1381->g_261), ((safe_mod_func_int8_t_s_s(((*l_515) = ((((VECTOR(uint8_t, 16))(add_sat(((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 16))((-((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))((+((VECTOR(uint8_t, 16))(0xEFL, 1UL, 5UL, l_543.y, 0UL, 0x2DL, ((VECTOR(uint8_t, 4))(l_556.sb127)), (*l_533), p_36, 0x72L, (l_557 != l_515), 6UL, 252UL)).sfebe))), 1UL, 0xF0L, 0x15L, 0x14L)).odd >> ((VECTOR(uint8_t, 4))(0xD8L))))).hi & ((VECTOR(uint8_t, 2))(3UL))))).xxyxxxxyyyyxyyxy + ((VECTOR(uint8_t, 16))(255UL)))))))).sf006 + ((VECTOR(uint8_t, 4))(0x97L))))).odd + ((VECTOR(uint8_t, 2))(0x60L))))).yxyxxxyxxxxyyyyy, ((VECTOR(uint8_t, 16))(0xDEL))))).s5 >= 0UL) , l_534[6][1])), p_38)) && 0x6CA5C672650D094EL)))) == l_501.x)), ((VECTOR(uint16_t, 2))(65529UL)), 0x7D05L)).odd, ((VECTOR(uint16_t, 2))(0x4D5BL))))).yxxx - ((VECTOR(uint16_t, 4))(9UL))))).w, ((VECTOR(uint16_t, 2))(1UL)), 0xCA87L)).y)) ^ FAKE_DIVERGE(p_1381->global_0_offset, get_global_id(0), 10)) > p_37));
            }
        }
        l_574 = (l_521.x , ((p_1381->g_24.s4 || l_501.x) && ((safe_rshift_func_int8_t_s_u(l_501.x, ((VECTOR(uint8_t, 16))(0UL, ((VECTOR(uint8_t, 8))(p_1381->g_562.yxyyxyyy)), ((VECTOR(uint8_t, 4))(p_1381->g_563.xzwy)), (safe_add_func_uint32_t_u_u((l_519 ^= (l_511 = (safe_lshift_func_uint8_t_u_u((l_568 , (((((safe_unary_minus_func_uint8_t_u((*p_1381->g_242))) == p_1381->g_85) & ((VECTOR(int16_t, 4))(upsample(((VECTOR(int8_t, 8))(add_sat(((VECTOR(int8_t, 16))(add_sat(((VECTOR(int8_t, 2))(p_1381->g_570.yz)).yxxxxyyyyxyxxxyx, ((VECTOR(int8_t, 2))((((VECTOR(int8_t, 2))(safe_clamp_func(VECTOR(int8_t, 2),int8_t,((VECTOR(int8_t, 16))((((VECTOR(int8_t, 2))(0x38L, 1L)).yyyyyyyxyxyyxxyy | ((VECTOR(int8_t, 8))((((VECTOR(int8_t, 4))(0x1AL, ((safe_rshift_func_uint16_t_u_s(0x927CL, (safe_unary_minus_func_uint16_t_u((FAKE_DIVERGE(p_1381->global_0_offset, get_global_id(0), 10) | ((*p_1381->g_261) == 8L)))))) || 18446744073709551610UL), 0L, 0x0FL)).wzxwxwyy && ((VECTOR(int8_t, 8))(0x56L))))).s4447134461131365))).s40, (int8_t)p_37, (int8_t)p_1381->g_4))) != ((VECTOR(int8_t, 2))(0x57L))))).xxxxyxyxxxxyyxxx))).hi, ((VECTOR(int8_t, 8))(7L))))).lo, ((VECTOR(uint8_t, 4))(255UL))))).z) > (*p_1381->g_261)) | p_38)), p_1381->g_563.x)))), p_36)), 247UL, 0UL)).s0)) && p_1381->g_117.f2)));
    }
    if ((((safe_lshift_func_int8_t_s_u((((VECTOR(int32_t, 2))(l_577.sdf)).even != (p_1381->g_320.w ^= p_1381->g_466.x)), (((void*)0 == &p_1381->g_127) >= FAKE_DIVERGE(p_1381->local_0_offset, get_local_id(0), 10)))) >= 0x5C849282L) && (p_1381->g_500.y = ((safe_rshift_func_uint16_t_u_s(((VECTOR(uint16_t, 16))(mul_hi(((VECTOR(uint16_t, 4))((((VECTOR(uint16_t, 8))(0xA4CAL, 1UL, ((VECTOR(uint16_t, 2))(0UL, 65529UL)), 0xC86EL, 0x046BL, 65533UL, 0x7798L)).hi >> ((VECTOR(uint16_t, 4))(16))))).xyxwxyyyxzzxwzzz, ((VECTOR(uint16_t, 2))(p_1381->g_585.xy)).yxyxxxyyxyxyyyyy))).sb, 15)) ^ p_37))))
    { /* block id: 233 */
        int32_t *l_602 = &l_511;
        uint32_t *l_613[1][10] = {{&p_1381->g_414,&p_1381->g_414,&p_1381->g_414,&p_1381->g_414,&p_1381->g_414,&p_1381->g_414,&p_1381->g_414,&p_1381->g_414,&p_1381->g_414,&p_1381->g_414}};
        union U0 l_616 = {0x0FL};
        union U0 *l_617 = (void*)0;
        union U0 *l_618[5][10] = {{(void*)0,&p_1381->g_117,&l_568,&p_1381->g_117,&l_568,&p_1381->g_117,(void*)0,&p_1381->g_117,&l_568,&l_568},{(void*)0,&p_1381->g_117,&l_568,&p_1381->g_117,&l_568,&p_1381->g_117,(void*)0,&p_1381->g_117,&l_568,&l_568},{(void*)0,&p_1381->g_117,&l_568,&p_1381->g_117,&l_568,&p_1381->g_117,(void*)0,&p_1381->g_117,&l_568,&l_568},{(void*)0,&p_1381->g_117,&l_568,&p_1381->g_117,&l_568,&p_1381->g_117,(void*)0,&p_1381->g_117,&l_568,&l_568},{(void*)0,&p_1381->g_117,&l_568,&p_1381->g_117,&l_568,&p_1381->g_117,(void*)0,&p_1381->g_117,&l_568,&l_568}};
        uint64_t *l_630[3][6][1] = {{{&p_1381->g_174},{&p_1381->g_174},{&p_1381->g_174},{&p_1381->g_174},{&p_1381->g_174},{&p_1381->g_174}},{{&p_1381->g_174},{&p_1381->g_174},{&p_1381->g_174},{&p_1381->g_174},{&p_1381->g_174},{&p_1381->g_174}},{{&p_1381->g_174},{&p_1381->g_174},{&p_1381->g_174},{&p_1381->g_174},{&p_1381->g_174},{&p_1381->g_174}}};
        int32_t *l_631 = &l_519;
        int i, j, k;
        (*l_602) ^= l_577.sd;
        (*l_602) = l_577.sf;
        (*l_631) |= (l_501.x >= ((safe_div_func_uint64_t_u_u((l_574 |= ((*p_1381->g_261) = ((safe_add_func_int16_t_s_s(p_1381->g_472.x, (!p_1381->g_563.w))) == ((safe_lshift_func_int8_t_s_u((safe_mod_func_int16_t_s_s((((safe_add_func_uint16_t_u_u(0xED91L, ((p_1381->g_117 = ((p_1381->g_523++) , l_616)) , ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))((((VECTOR(int16_t, 4))(p_1381->g_619.s0166)).even && ((VECTOR(int16_t, 2))(l_620.yy))))), (+p_37), 1L, (-1L), 0x7CA7L, ((VECTOR(int16_t, 8))(clz(((VECTOR(int16_t, 4))((safe_add_func_uint16_t_u_u((safe_lshift_func_uint16_t_u_u((p_1381->g_106.f0 &= (!(*l_602))), 11)), (safe_lshift_func_uint16_t_u_s(((((((safe_sub_func_int16_t_s_s(l_503, ((l_629 , p_1381->g_127) <= l_577.s4))) | 0x5FB328A1354BEEAAL) >= p_1381->g_570.x) == 0xE53BL) <= p_36) < 1L), p_37)))), ((VECTOR(int16_t, 2))(1L)), (-9L))).xywxzyxw))), (-1L), (-5L))).s9))) ^ p_38) != GROUP_DIVERGE(1, 1)), (*l_602))), 4)) , 247UL)))), (*l_602))) == l_501.x));
    }
    else
    { /* block id: 242 */
        VECTOR(uint8_t, 2) l_640 = (VECTOR(uint8_t, 2))(1UL, 1UL);
        VECTOR(uint8_t, 4) l_657 = (VECTOR(uint8_t, 4))(0x47L, (VECTOR(uint8_t, 2))(0x47L, 0x77L), 0x77L);
        int32_t l_666 = (-4L);
        VECTOR(uint8_t, 2) l_687 = (VECTOR(uint8_t, 2))(255UL, 0xB5L);
        uint8_t *l_695[7];
        int32_t l_696 = 3L;
        uint64_t *l_698 = &p_1381->g_180[5];
        int8_t l_699 = (-1L);
        int16_t l_717 = 0x26BAL;
        uint16_t l_718 = 0x86DBL;
        int32_t l_721 = 0x5E2D26FDL;
        VECTOR(int32_t, 4) l_724 = (VECTOR(int32_t, 4))(0x68AAA5C1L, (VECTOR(int32_t, 2))(0x68AAA5C1L, 0x085FD434L), 0x085FD434L);
        union U1 *l_791 = &p_1381->g_792;
        VECTOR(int64_t, 8) l_810 = (VECTOR(int64_t, 8))((-10L), (VECTOR(int64_t, 4))((-10L), (VECTOR(int64_t, 2))((-10L), 1L), 1L), 1L, (-10L), 1L);
        union U2 *l_820[10][8][2] = {{{&p_1381->g_106,&p_1381->g_106},{&p_1381->g_106,&p_1381->g_106},{&p_1381->g_106,&p_1381->g_106},{&p_1381->g_106,&p_1381->g_106},{&p_1381->g_106,&p_1381->g_106},{&p_1381->g_106,&p_1381->g_106},{&p_1381->g_106,&p_1381->g_106},{&p_1381->g_106,&p_1381->g_106}},{{&p_1381->g_106,&p_1381->g_106},{&p_1381->g_106,&p_1381->g_106},{&p_1381->g_106,&p_1381->g_106},{&p_1381->g_106,&p_1381->g_106},{&p_1381->g_106,&p_1381->g_106},{&p_1381->g_106,&p_1381->g_106},{&p_1381->g_106,&p_1381->g_106},{&p_1381->g_106,&p_1381->g_106}},{{&p_1381->g_106,&p_1381->g_106},{&p_1381->g_106,&p_1381->g_106},{&p_1381->g_106,&p_1381->g_106},{&p_1381->g_106,&p_1381->g_106},{&p_1381->g_106,&p_1381->g_106},{&p_1381->g_106,&p_1381->g_106},{&p_1381->g_106,&p_1381->g_106},{&p_1381->g_106,&p_1381->g_106}},{{&p_1381->g_106,&p_1381->g_106},{&p_1381->g_106,&p_1381->g_106},{&p_1381->g_106,&p_1381->g_106},{&p_1381->g_106,&p_1381->g_106},{&p_1381->g_106,&p_1381->g_106},{&p_1381->g_106,&p_1381->g_106},{&p_1381->g_106,&p_1381->g_106},{&p_1381->g_106,&p_1381->g_106}},{{&p_1381->g_106,&p_1381->g_106},{&p_1381->g_106,&p_1381->g_106},{&p_1381->g_106,&p_1381->g_106},{&p_1381->g_106,&p_1381->g_106},{&p_1381->g_106,&p_1381->g_106},{&p_1381->g_106,&p_1381->g_106},{&p_1381->g_106,&p_1381->g_106},{&p_1381->g_106,&p_1381->g_106}},{{&p_1381->g_106,&p_1381->g_106},{&p_1381->g_106,&p_1381->g_106},{&p_1381->g_106,&p_1381->g_106},{&p_1381->g_106,&p_1381->g_106},{&p_1381->g_106,&p_1381->g_106},{&p_1381->g_106,&p_1381->g_106},{&p_1381->g_106,&p_1381->g_106},{&p_1381->g_106,&p_1381->g_106}},{{&p_1381->g_106,&p_1381->g_106},{&p_1381->g_106,&p_1381->g_106},{&p_1381->g_106,&p_1381->g_106},{&p_1381->g_106,&p_1381->g_106},{&p_1381->g_106,&p_1381->g_106},{&p_1381->g_106,&p_1381->g_106},{&p_1381->g_106,&p_1381->g_106},{&p_1381->g_106,&p_1381->g_106}},{{&p_1381->g_106,&p_1381->g_106},{&p_1381->g_106,&p_1381->g_106},{&p_1381->g_106,&p_1381->g_106},{&p_1381->g_106,&p_1381->g_106},{&p_1381->g_106,&p_1381->g_106},{&p_1381->g_106,&p_1381->g_106},{&p_1381->g_106,&p_1381->g_106},{&p_1381->g_106,&p_1381->g_106}},{{&p_1381->g_106,&p_1381->g_106},{&p_1381->g_106,&p_1381->g_106},{&p_1381->g_106,&p_1381->g_106},{&p_1381->g_106,&p_1381->g_106},{&p_1381->g_106,&p_1381->g_106},{&p_1381->g_106,&p_1381->g_106},{&p_1381->g_106,&p_1381->g_106},{&p_1381->g_106,&p_1381->g_106}},{{&p_1381->g_106,&p_1381->g_106},{&p_1381->g_106,&p_1381->g_106},{&p_1381->g_106,&p_1381->g_106},{&p_1381->g_106,&p_1381->g_106},{&p_1381->g_106,&p_1381->g_106},{&p_1381->g_106,&p_1381->g_106},{&p_1381->g_106,&p_1381->g_106},{&p_1381->g_106,&p_1381->g_106}}};
        union U2 *l_822 = &p_1381->g_816;
        int i, j, k;
        for (i = 0; i < 7; i++)
            l_695[i] = (void*)0;
        if (((safe_div_func_uint64_t_u_u((safe_lshift_func_int16_t_s_s((((VECTOR(uint8_t, 4))(mul_hi(((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 4))(l_638.s1217)) + ((VECTOR(uint8_t, 16))(rhadd(((VECTOR(uint8_t, 4))(l_639.s1512)).zyxzwwzxzyxzzxwz, ((VECTOR(uint8_t, 16))(mul_hi(((VECTOR(uint8_t, 2))(0UL, 0xAAL)).xxxxyxxxyxyyxxyx, ((VECTOR(uint8_t, 16))(l_640.yyxxyxyxxyyxyyyy)))))))).se8f1))), ((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 2))(rotate(((VECTOR(uint8_t, 2))(p_1381->g_643.s16)), ((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(max(((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 4))(rotate(((VECTOR(uint8_t, 2))(247UL, 0xC2L)).xxxy, ((VECTOR(uint8_t, 16))(l_654.zzxwxzzxyxyywyxz)).s0225))).xxxyxwzx + ((VECTOR(uint8_t, 16))((((VECTOR(uint8_t, 4))(l_657.xyyy)).ywxyzyzyxwxywwyz * ((VECTOR(uint8_t, 4))(add_sat(((VECTOR(uint8_t, 4))(p_1381->g_658.s5a27)), ((VECTOR(uint8_t, 2))(0x31L, 0x37L)).xyyx))).wwxzxzwyyzwzyzxw))).even))).s45 * ((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 8))(0x78L, 0xDEL, 248UL, ((VECTOR(uint8_t, 4))(p_1381->g_661.s3202)), 0x1FL)).lo + ((VECTOR(uint8_t, 8))((((VECTOR(uint8_t, 16))(0xAFL, 255UL, ((VECTOR(uint8_t, 4))((safe_mul_func_int8_t_s_s(1L, ((((l_666 ^= (*p_1381->g_261)) >= ((VECTOR(int64_t, 2))(0L, (-3L))).even) , (l_620.x , l_657.w)) & ((safe_div_func_uint8_t_u_u((((safe_mod_func_uint8_t_u_u((safe_mul_func_uint8_t_u_u((l_696 = ((VECTOR(uint8_t, 2))(min(((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 4))(abs_diff(((VECTOR(uint8_t, 2))(p_1381->g_675.zx)).yyxy, ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))(mad_hi(((VECTOR(uint8_t, 8))(l_676.xxxxyxxy)).s65, ((VECTOR(uint8_t, 16))(max(((VECTOR(uint8_t, 16))(0x2DL, ((VECTOR(uint8_t, 8))((safe_lshift_func_int16_t_s_s(((VECTOR(int16_t, 2))(p_1381->g_679.xx)).even, ((VECTOR(int16_t, 16))(clz(((VECTOR(int16_t, 2))(1L, 7L)).xxyyxxyyyxxyyyyy))).sa)), 0x23L, ((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 4))(mad_hi(((VECTOR(uint8_t, 2))(250UL, 0x95L)).yxyx, ((VECTOR(uint8_t, 16))(sub_sat(((VECTOR(uint8_t, 4))(255UL, ((VECTOR(uint8_t, 2))(255UL, 2UL)), 253UL)).xyxyxzxxyzwxwzwy, ((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 4))((*p_1381->g_242), 249UL, 255UL, 246UL)) + ((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 16))((!(safe_unary_minus_func_int16_t_s(l_640.y))), ((VECTOR(uint8_t, 2))(l_687.xy)), (((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 4))((((VECTOR(uint8_t, 16))(p_1381->g_690.yxyzwzywzwyxwyxz)).s7800 + ((VECTOR(uint8_t, 2))(l_691.s75)).xxxx))), ((VECTOR(uint8_t, 2))(p_1381->g_692.yz)), 6UL, 1UL)).s7 , (safe_div_func_int16_t_s_s((l_519 & l_640.y), p_1381->g_275.sf))), 0UL, ((VECTOR(uint8_t, 4))(7UL)), ((VECTOR(uint8_t, 4))(255UL)), 0x4FL, 1UL, 0xD3L)).s813b >> ((VECTOR(uint8_t, 4))(0x17L)))))))).yywyyyywxzyyxywy))).sa3ff, ((VECTOR(uint8_t, 4))(0xBDL))))).even + ((VECTOR(uint8_t, 2))(0UL))))), p_37, GROUP_DIVERGE(0, 1), 5UL, 1UL)), 0x8BL, 1UL, 248UL, 0x94L, (*p_1381->g_242), 246UL, 0UL)), (uint8_t)l_687.x))).s08, ((VECTOR(uint8_t, 2))(0x3AL))))), 248UL, 0xC5L))))) + ((VECTOR(uint8_t, 4))(1UL))))).lo, (uint8_t)0x3DL))).odd), l_697)), 0x3BL)) <= p_1381->g_570.w) & p_1381->g_692.z), l_657.y)) > 0xBB9DBCD7L)))), 0x89L, 1UL, 0x39L)), 5UL, ((VECTOR(uint8_t, 2))(248UL)), ((VECTOR(uint8_t, 2))(0UL)), ((VECTOR(uint8_t, 2))(0xF2L)), l_629, 0x6DL, 1UL)).hi << ((VECTOR(uint8_t, 8))(8))))).lo))), ((VECTOR(uint8_t, 4))(255UL)))).s14))) * ((VECTOR(uint8_t, 2))(0xA4L))))), ((VECTOR(uint8_t, 2))(0xB6L))))), l_639.s7, l_687.x, ((VECTOR(uint8_t, 4))(0xE8L)))) + ((VECTOR(uint8_t, 8))(0x78L))))).s4026065414320515 >> ((VECTOR(uint8_t, 16))(0x32L))))).s6d))).xxxyyyxy + ((VECTOR(uint8_t, 8))(0xC7L))))).lo))).z ^ 0x1FL), p_36)), p_38)) || p_1381->g_348.f0))
        { /* block id: 245 */
            int64_t l_723 = 0L;
            uint64_t *l_736 = &p_1381->g_180[8];
            if ((&p_1381->g_180[7] != l_698))
            { /* block id: 246 */
                uint64_t l_700 = 8UL;
                int32_t *l_703 = &p_1381->g_61;
                int32_t *l_704 = &l_511;
                int32_t *l_705 = &l_696;
                int32_t *l_706 = &p_1381->g_61;
                int32_t *l_707 = &p_1381->g_61;
                int32_t *l_708 = &l_696;
                int32_t *l_709 = (void*)0;
                int32_t *l_710 = &l_519;
                int32_t *l_711 = &p_1381->g_61;
                int32_t *l_712 = (void*)0;
                int32_t *l_713 = &l_696;
                int32_t *l_714 = &p_1381->g_61;
                int32_t *l_715 = &l_666;
                int32_t *l_716[8][6][5] = {{{&l_511,&p_1381->g_14,&p_1381->g_85,&l_519,(void*)0},{&l_511,&p_1381->g_14,&p_1381->g_85,&l_519,(void*)0},{&l_511,&p_1381->g_14,&p_1381->g_85,&l_519,(void*)0},{&l_511,&p_1381->g_14,&p_1381->g_85,&l_519,(void*)0},{&l_511,&p_1381->g_14,&p_1381->g_85,&l_519,(void*)0},{&l_511,&p_1381->g_14,&p_1381->g_85,&l_519,(void*)0}},{{&l_511,&p_1381->g_14,&p_1381->g_85,&l_519,(void*)0},{&l_511,&p_1381->g_14,&p_1381->g_85,&l_519,(void*)0},{&l_511,&p_1381->g_14,&p_1381->g_85,&l_519,(void*)0},{&l_511,&p_1381->g_14,&p_1381->g_85,&l_519,(void*)0},{&l_511,&p_1381->g_14,&p_1381->g_85,&l_519,(void*)0},{&l_511,&p_1381->g_14,&p_1381->g_85,&l_519,(void*)0}},{{&l_511,&p_1381->g_14,&p_1381->g_85,&l_519,(void*)0},{&l_511,&p_1381->g_14,&p_1381->g_85,&l_519,(void*)0},{&l_511,&p_1381->g_14,&p_1381->g_85,&l_519,(void*)0},{&l_511,&p_1381->g_14,&p_1381->g_85,&l_519,(void*)0},{&l_511,&p_1381->g_14,&p_1381->g_85,&l_519,(void*)0},{&l_511,&p_1381->g_14,&p_1381->g_85,&l_519,(void*)0}},{{&l_511,&p_1381->g_14,&p_1381->g_85,&l_519,(void*)0},{&l_511,&p_1381->g_14,&p_1381->g_85,&l_519,(void*)0},{&l_511,&p_1381->g_14,&p_1381->g_85,&l_519,(void*)0},{&l_511,&p_1381->g_14,&p_1381->g_85,&l_519,(void*)0},{&l_511,&p_1381->g_14,&p_1381->g_85,&l_519,(void*)0},{&l_511,&p_1381->g_14,&p_1381->g_85,&l_519,(void*)0}},{{&l_511,&p_1381->g_14,&p_1381->g_85,&l_519,(void*)0},{&l_511,&p_1381->g_14,&p_1381->g_85,&l_519,(void*)0},{&l_511,&p_1381->g_14,&p_1381->g_85,&l_519,(void*)0},{&l_511,&p_1381->g_14,&p_1381->g_85,&l_519,(void*)0},{&l_511,&p_1381->g_14,&p_1381->g_85,&l_519,(void*)0},{&l_511,&p_1381->g_14,&p_1381->g_85,&l_519,(void*)0}},{{&l_511,&p_1381->g_14,&p_1381->g_85,&l_519,(void*)0},{&l_511,&p_1381->g_14,&p_1381->g_85,&l_519,(void*)0},{&l_511,&p_1381->g_14,&p_1381->g_85,&l_519,(void*)0},{&l_511,&p_1381->g_14,&p_1381->g_85,&l_519,(void*)0},{&l_511,&p_1381->g_14,&p_1381->g_85,&l_519,(void*)0},{&l_511,&p_1381->g_14,&p_1381->g_85,&l_519,(void*)0}},{{&l_511,&p_1381->g_14,&p_1381->g_85,&l_519,(void*)0},{&l_511,&p_1381->g_14,&p_1381->g_85,&l_519,(void*)0},{&l_511,&p_1381->g_14,&p_1381->g_85,&l_519,(void*)0},{&l_511,&p_1381->g_14,&p_1381->g_85,&l_519,(void*)0},{&l_511,&p_1381->g_14,&p_1381->g_85,&l_519,(void*)0},{&l_511,&p_1381->g_14,&p_1381->g_85,&l_519,(void*)0}},{{&l_511,&p_1381->g_14,&p_1381->g_85,&l_519,(void*)0},{&l_511,&p_1381->g_14,&p_1381->g_85,&l_519,(void*)0},{&l_511,&p_1381->g_14,&p_1381->g_85,&l_519,(void*)0},{&l_511,&p_1381->g_14,&p_1381->g_85,&l_519,(void*)0},{&l_511,&p_1381->g_14,&p_1381->g_85,&l_519,(void*)0},{&l_511,&p_1381->g_14,&p_1381->g_85,&l_519,(void*)0}}};
                uint16_t l_725 = 1UL;
                int32_t **l_728 = (void*)0;
                int i, j, k;
                --l_700;
                l_718++;
                --l_725;
                (*p_1381->g_729) = &p_1381->g_61;
            }
            else
            { /* block id: 251 */
                int32_t **l_731 = &p_1381->g_84[0];
                union U2 *l_733 = &p_1381->g_106;
                union U2 **l_732[3];
                uint64_t *l_737[2];
                int i;
                for (i = 0; i < 3; i++)
                    l_732[i] = &l_733;
                for (i = 0; i < 2; i++)
                    l_737[i] = (void*)0;
                if (l_718)
                    goto lbl_730;
                (*l_731) = (void*)0;
                l_577.s0 |= (((p_1381->g_320.z = ((p_1381->g_734 = &p_1381->g_106) == ((p_1381->g_722 > p_37) , l_735))) && ((65535UL | (l_638.s7 , (l_736 == l_737[0]))) >= l_687.y)) , 3L);
            }
        }
        else
        { /* block id: 258 */
            uint32_t l_738 = 0x8E77DCE6L;
            VECTOR(int8_t, 4) l_746 = (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), 0x08L), 0x08L);
            int16_t *l_779 = (void*)0;
            VECTOR(int64_t, 2) l_808 = (VECTOR(int64_t, 2))(0L, 1L);
            int64_t *l_832[6][4];
            int i, j;
            for (i = 0; i < 6; i++)
            {
                for (j = 0; j < 4; j++)
                    l_832[i][j] = (void*)0;
            }
            l_738 ^= (*p_39);
            for (p_1381->g_106.f0 = 0; (p_1381->g_106.f0 != 39); p_1381->g_106.f0++)
            { /* block id: 262 */
                uint8_t l_753 = 4UL;
                uint16_t l_788 = 65535UL;
                int32_t l_789[2][8][8] = {{{0x6564B943L,(-4L),0x646FD19AL,0x0ED8B120L,(-9L),(-9L),0x0ED8B120L,0x646FD19AL},{0x6564B943L,(-4L),0x646FD19AL,0x0ED8B120L,(-9L),(-9L),0x0ED8B120L,0x646FD19AL},{0x6564B943L,(-4L),0x646FD19AL,0x0ED8B120L,(-9L),(-9L),0x0ED8B120L,0x646FD19AL},{0x6564B943L,(-4L),0x646FD19AL,0x0ED8B120L,(-9L),(-9L),0x0ED8B120L,0x646FD19AL},{0x6564B943L,(-4L),0x646FD19AL,0x0ED8B120L,(-9L),(-9L),0x0ED8B120L,0x646FD19AL},{0x6564B943L,(-4L),0x646FD19AL,0x0ED8B120L,(-9L),(-9L),0x0ED8B120L,0x646FD19AL},{0x6564B943L,(-4L),0x646FD19AL,0x0ED8B120L,(-9L),(-9L),0x0ED8B120L,0x646FD19AL},{0x6564B943L,(-4L),0x646FD19AL,0x0ED8B120L,(-9L),(-9L),0x0ED8B120L,0x646FD19AL}},{{0x6564B943L,(-4L),0x646FD19AL,0x0ED8B120L,(-9L),(-9L),0x0ED8B120L,0x646FD19AL},{0x6564B943L,(-4L),0x646FD19AL,0x0ED8B120L,(-9L),(-9L),0x0ED8B120L,0x646FD19AL},{0x6564B943L,(-4L),0x646FD19AL,0x0ED8B120L,(-9L),(-9L),0x0ED8B120L,0x646FD19AL},{0x6564B943L,(-4L),0x646FD19AL,0x0ED8B120L,(-9L),(-9L),0x0ED8B120L,0x646FD19AL},{0x6564B943L,(-4L),0x646FD19AL,0x0ED8B120L,(-9L),(-9L),0x0ED8B120L,0x646FD19AL},{0x6564B943L,(-4L),0x646FD19AL,0x0ED8B120L,(-9L),(-9L),0x0ED8B120L,0x646FD19AL},{0x6564B943L,(-4L),0x646FD19AL,0x0ED8B120L,(-9L),(-9L),0x0ED8B120L,0x646FD19AL},{0x6564B943L,(-4L),0x646FD19AL,0x0ED8B120L,(-9L),(-9L),0x0ED8B120L,0x646FD19AL}}};
                int32_t l_817 = 0x43A786F7L;
                int64_t **l_833[4];
                int32_t *l_837 = (void*)0;
                int32_t *l_838 = &l_696;
                int i, j, k;
                for (i = 0; i < 4; i++)
                    l_833[i] = (void*)0;
                for (p_1381->g_523 = 0; (p_1381->g_523 > 49); p_1381->g_523 = safe_add_func_int32_t_s_s(p_1381->g_523, 2))
                { /* block id: 265 */
                    uint16_t l_766 = 0xFBA4L;
                    int32_t l_790 = 0x42A0B277L;
                    union U1 **l_793[3];
                    int i;
                    for (i = 0; i < 3; i++)
                        l_793[i] = &l_791;
                    for (p_1381->g_174 = 0; (p_1381->g_174 <= 26); p_1381->g_174++)
                    { /* block id: 268 */
                        int32_t l_765 = (-4L);
                        int32_t l_767 = 0L;
                        l_767 &= ((((((((VECTOR(int8_t, 16))((((VECTOR(int8_t, 4))(rotate(((VECTOR(int8_t, 2))(p_1381->g_745.s61)).xyyx, ((VECTOR(int8_t, 16))((((VECTOR(int8_t, 4))((((VECTOR(int8_t, 4))(min(((VECTOR(int8_t, 16))((((VECTOR(int8_t, 2))((((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(l_746.yw)), 0L, ((l_724.x >= p_1381->g_3) ^ (safe_add_func_uint64_t_u_u((safe_lshift_func_uint16_t_u_s(p_36, ((safe_lshift_func_uint16_t_u_u(l_753, 5)) >= (p_1381->g_279.w , (((VECTOR(int8_t, 4))(mul_hi(((VECTOR(int8_t, 2))(1L, 1L)).yxyx, ((VECTOR(int8_t, 8))(((VECTOR(int8_t, 2))(1L, (-1L))), 0x56L, (safe_div_func_uint16_t_u_u(p_37, (safe_mod_func_uint64_t_u_u(((VECTOR(uint64_t, 2))(p_1381->g_758.s20)).odd, (l_696 , (safe_mod_func_uint8_t_u_u(((VECTOR(uint8_t, 8))(((safe_mod_func_int32_t_s_s((safe_add_func_int16_t_s_s(l_765, (l_766 < l_766))), l_765)) & (-1L)), 255UL, 253UL, ((VECTOR(uint8_t, 2))(0x4CL)), ((VECTOR(uint8_t, 2))(249UL)), 0UL)).s0, (-6L)))))))), (-7L), 0L, (-1L), 8L)).odd))).z || l_654.x))))), 1UL))), (-1L), ((VECTOR(int8_t, 2))(0x49L)), (-1L))).s64 > ((VECTOR(int8_t, 2))(0x1EL))))).xxyyyyxxyyyxyxxy >= ((VECTOR(int8_t, 16))(0x05L))))).sa135, ((VECTOR(int8_t, 4))(0x3CL))))) ^ ((VECTOR(int8_t, 4))((-1L)))))).ywwzzzwyyzywzyyx ^ ((VECTOR(int8_t, 16))(0x2CL))))).s3062))).yzwxxzwzwzyyywxw == ((VECTOR(int8_t, 16))((-1L)))))).sc <= p_37) , l_766) ^ l_577.s0) ^ l_746.y) , l_639.s2) , 2L);
                    }
                    for (p_1381->g_117.f0 = 0; (p_1381->g_117.f0 > (-16)); p_1381->g_117.f0--)
                    { /* block id: 273 */
                        int16_t *l_777 = &p_1381->g_127;
                        int16_t **l_778[2][3][7] = {{{&l_777,&l_777,&l_777,&l_777,&l_777,&l_777,&l_777},{&l_777,&l_777,&l_777,&l_777,&l_777,&l_777,&l_777},{&l_777,&l_777,&l_777,&l_777,&l_777,&l_777,&l_777}},{{&l_777,&l_777,&l_777,&l_777,&l_777,&l_777,&l_777},{&l_777,&l_777,&l_777,&l_777,&l_777,&l_777,&l_777},{&l_777,&l_777,&l_777,&l_777,&l_777,&l_777,&l_777}}};
                        int32_t l_782 = 0x348B6F89L;
                        int32_t *l_785 = &l_574;
                        int i, j, k;
                        (*l_785) = ((VECTOR(int32_t, 2))((((VECTOR(int32_t, 16))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 16))((*p_39), 0L, ((VECTOR(int32_t, 8))((((VECTOR(int32_t, 4))((((VECTOR(int32_t, 16))((((VECTOR(int32_t, 4))((((VECTOR(int32_t, 8))(safe_mad_hi_func_int32_t_s_s_s(VECTOR(int32_t, 8),((VECTOR(int32_t, 16))(p_1381->g_770.s224be8e31a25ac7d)).even, ((VECTOR(int32_t, 2))((((VECTOR(int32_t, 2))(max(((VECTOR(int32_t, 8))(0x2DBDBAF7L, ((VECTOR(int32_t, 2))(0x593C8E34L, (-1L))), 0x2EF862AEL, (((VECTOR(uint8_t, 4))(0x14L, ((VECTOR(uint8_t, 4))(((VECTOR(uint8_t, 2))((((VECTOR(uint8_t, 16))(p_1381->g_773.xxyyyxyxxyxxxyyx)).s3c + ((VECTOR(uint8_t, 8))(min(((VECTOR(uint8_t, 4))(p_1381->g_774.xxyy)).yxzxxxwy, (uint8_t)(~((((p_1381->g_308.x = ((safe_mod_func_int16_t_s_s((((l_779 = l_777) == (void*)0) | (((p_36 == l_577.se) , ((p_1381->g_619.s1 = ((VECTOR(int16_t, 8))(((*l_777) = (safe_add_func_uint32_t_u_u((~0xECC96580L), (l_782 >= ((safe_mod_func_int32_t_s_s(l_746.y, (*p_39))) & l_782))))), ((VECTOR(int16_t, 2))((-1L))), 0x21E1L, 0x406AL, p_1381->g_502.s2, 0x7049L, 0L)).s7) != 0xB322L)) && l_782)), p_36)) < 0x0DDD778DL)) && 0x684DL) != (*p_39)) <= GROUP_DIVERGE(1, 1)))))).s12))), 7UL, 0x67L)).y, 0x83L, 0xE4L)).y && (*p_1381->g_242)), 0x68DC8904L, (-3L), (-1L))).s15, (int32_t)(-1L)))) && ((VECTOR(int32_t, 2))(0x62850ADAL))))).yyyyyyxy, ((VECTOR(int32_t, 8))(4L))))).hi >= ((VECTOR(int32_t, 4))(0x73DF3B2FL))))).yyxwwzywxwxyzwyw ^ ((VECTOR(int32_t, 16))(0x789FC434L))))).sd500 && ((VECTOR(int32_t, 4))(9L))))).wxzzwwwz >= ((VECTOR(int32_t, 8))(0x6DE36C41L))))), ((VECTOR(int32_t, 4))(0x7052B57DL)), 0x16C4301EL, 0x7D45D1BBL)), ((VECTOR(int32_t, 16))((-8L))), ((VECTOR(int32_t, 16))(0x575FF15CL))))).sb0 != ((VECTOR(int32_t, 2))(0x2CB8FF71L))))).even;
                        l_789[1][5][0] |= (safe_lshift_func_int8_t_s_u((l_654.w == l_788), 2));
                        l_790 |= l_746.x;
                    }
                    l_791 = l_791;
                }
                for (l_753 = 0; (l_753 > 55); ++l_753)
                { /* block id: 286 */
                    union U0 l_798 = {0x58L};
                    int8_t *l_807 = &l_699;
                    union U0 *l_814[3][8] = {{(void*)0,&l_798,(void*)0,(void*)0,&l_798,(void*)0,(void*)0,&l_798},{(void*)0,&l_798,(void*)0,(void*)0,&l_798,(void*)0,(void*)0,&l_798},{(void*)0,&l_798,(void*)0,(void*)0,&l_798,(void*)0,(void*)0,&l_798}};
                    union U0 **l_813 = &l_814[2][3];
                    int i, j;
                    l_817 &= ((safe_lshift_func_uint8_t_u_u(0UL, ((VECTOR(uint8_t, 2))(0xD8L, 0xD9L)).lo)) & ((l_798 , (safe_mul_func_int8_t_s_s(1L, GROUP_DIVERGE(2, 1)))) == ((safe_div_func_uint16_t_u_u((((safe_add_func_int8_t_s_s((safe_lshift_func_uint16_t_u_u((l_807 == &p_1381->g_101), 9)), ((0xCBBF2F7BL && (((0x22L | ((l_577.s2 = ((VECTOR(int64_t, 8))((((VECTOR(int64_t, 16))(((VECTOR(int64_t, 2))(0L, 0L)), 0x00DF3B57D01B1DD8L, 0x4C0AACAC342FF092L, ((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(safe_mad_hi_func_int64_t_s_s_s(VECTOR(int64_t, 4),((VECTOR(int64_t, 16))(l_808.xxxyxyyyyyyxyyxy)).s6d5f, ((VECTOR(int64_t, 16))(p_1381->g_809.s1343255445607326)).sb33d, ((VECTOR(int64_t, 16))(l_810.s0272030061557016)).s3b69))), ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 2))((((VECTOR(int64_t, 16))(rhadd(((VECTOR(int64_t, 16))(p_1381->g_811.xwzwwzwyxxyzzwzw)), ((VECTOR(int64_t, 2))(p_1381->g_812.yx)).xxyyyyxyyyyyyxyx))).s79 || ((VECTOR(int64_t, 2))(0x074F3CADC31D9F90L, (-1L)))))), 0x56FECB19E70BB817L, 0x14999B25DAB5F982L)))), 0x1D7FE8ADAF861199L, (((((((*l_813) = &p_1381->g_117) != (void*)0) , l_519) , p_1381->g_815) , p_1381->g_773.y) >= p_1381->g_275.se), 4L, 0x2CE6145BA2965196L)).hi <= ((VECTOR(int64_t, 8))(0x45F296E25A536F03L))))).s6) & GROUP_DIVERGE(2, 1))) , p_1381->g_816) , (*p_39))) != 0x2B0380C2F086B4F6L))) || l_798.f0) == 0x2D71C612626F5DBBL), p_37)) , p_37)));
                    for (l_696 = 22; (l_696 < (-16)); l_696--)
                    { /* block id: 292 */
                        union U2 **l_821[1][9][6] = {{{(void*)0,&l_820[3][6][0],(void*)0,(void*)0,&l_820[3][6][0],(void*)0},{(void*)0,&l_820[3][6][0],(void*)0,(void*)0,&l_820[3][6][0],(void*)0},{(void*)0,&l_820[3][6][0],(void*)0,(void*)0,&l_820[3][6][0],(void*)0},{(void*)0,&l_820[3][6][0],(void*)0,(void*)0,&l_820[3][6][0],(void*)0},{(void*)0,&l_820[3][6][0],(void*)0,(void*)0,&l_820[3][6][0],(void*)0},{(void*)0,&l_820[3][6][0],(void*)0,(void*)0,&l_820[3][6][0],(void*)0},{(void*)0,&l_820[3][6][0],(void*)0,(void*)0,&l_820[3][6][0],(void*)0},{(void*)0,&l_820[3][6][0],(void*)0,(void*)0,&l_820[3][6][0],(void*)0},{(void*)0,&l_820[3][6][0],(void*)0,(void*)0,&l_820[3][6][0],(void*)0}}};
                        int32_t **l_823 = (void*)0;
                        int i, j, k;
                        l_822 = (l_820[4][6][1] = l_820[3][6][0]);
                        (*p_1381->g_824) = (*p_1381->g_729);
                    }
                    (*p_1381->g_829) = ((safe_mul_func_int8_t_s_s(((l_817 >= p_36) == (safe_div_func_int8_t_s_s(4L, (((*l_735) , (l_524 != &l_718)) & (*p_39))))), p_37)) > 0x7FL);
                    return p_39;
                }
                l_666 &= (safe_mul_func_int8_t_s_s(((p_1381->g_193 = l_832[1][3]) != p_1381->g_261), ((VECTOR(int8_t, 2))(0L, 0x53L)).lo));
                (*l_838) ^= (safe_lshift_func_int8_t_s_s(p_1381->g_198.f0, p_37));
            }
        }
        l_839 = p_39;
        if (l_696)
            goto lbl_730;
    }
    return p_39;
}


/* ------------------------------------------ */
/* 
 * reads : p_1381->g_11 p_1381->g_465 p_1381->g_466 p_1381->g_271.f0 p_1381->g_472 p_1381->g_473 p_1381->g_484 p_1381->g_180 p_1381->g_24 p_1381->g_3 p_1381->g_261 p_1381->g_117.f0 p_1381->g_61 p_1381->g_99 p_1381->g_320 p_1381->g_491 p_1381->g_492 p_1381->g_85
 * writes: p_1381->g_61 p_1381->g_85
 */
VECTOR(int32_t, 2)  func_42(int32_t * p_43, struct S3 * p_1381)
{ /* block id: 194 */
    uint8_t *l_459 = (void*)0;
    uint8_t *l_460 = (void*)0;
    VECTOR(uint64_t, 16) l_469 = (VECTOR(uint64_t, 16))(0x2E87FBA5058B3904L, (VECTOR(uint64_t, 4))(0x2E87FBA5058B3904L, (VECTOR(uint64_t, 2))(0x2E87FBA5058B3904L, 0xB5D53C98158C7C9DL), 0xB5D53C98158C7C9DL), 0xB5D53C98158C7C9DL, 0x2E87FBA5058B3904L, 0xB5D53C98158C7C9DL, (VECTOR(uint64_t, 2))(0x2E87FBA5058B3904L, 0xB5D53C98158C7C9DL), (VECTOR(uint64_t, 2))(0x2E87FBA5058B3904L, 0xB5D53C98158C7C9DL), 0x2E87FBA5058B3904L, 0xB5D53C98158C7C9DL, 0x2E87FBA5058B3904L, 0xB5D53C98158C7C9DL);
    VECTOR(uint32_t, 16) l_476 = (VECTOR(uint32_t, 16))(0x24C9C2EAL, (VECTOR(uint32_t, 4))(0x24C9C2EAL, (VECTOR(uint32_t, 2))(0x24C9C2EAL, 0x8524FA42L), 0x8524FA42L), 0x8524FA42L, 0x24C9C2EAL, 0x8524FA42L, (VECTOR(uint32_t, 2))(0x24C9C2EAL, 0x8524FA42L), (VECTOR(uint32_t, 2))(0x24C9C2EAL, 0x8524FA42L), 0x24C9C2EAL, 0x8524FA42L, 0x24C9C2EAL, 0x8524FA42L);
    VECTOR(uint32_t, 4) l_479 = (VECTOR(uint32_t, 4))(0x15A8E5C7L, (VECTOR(uint32_t, 2))(0x15A8E5C7L, 0xFA878E1EL), 0xFA878E1EL);
    VECTOR(int32_t, 8) l_493 = (VECTOR(int32_t, 8))((-8L), (VECTOR(int32_t, 4))((-8L), (VECTOR(int32_t, 2))((-8L), 1L), 1L), 1L, (-8L), 1L);
    int i;
    (*p_1381->g_491) = (((safe_lshift_func_uint16_t_u_s(((p_1381->g_11 == ((safe_sub_func_uint8_t_u_u(((l_459 != l_460) >= (safe_lshift_func_uint8_t_u_u((((safe_div_func_int64_t_s_s(((VECTOR(int64_t, 2))((-10L), 0L)).hi, ((VECTOR(uint64_t, 8))(mad_sat(((VECTOR(uint64_t, 2))(p_1381->g_465.sfc)).xxyxyxyx, ((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 16))(p_1381->g_466.xyxxxyxyxyxyyyyx)).s73 | ((VECTOR(uint64_t, 8))(safe_clamp_func(VECTOR(uint64_t, 8),uint64_t,((VECTOR(uint64_t, 4))(mad_hi(((VECTOR(uint64_t, 16))(max(((VECTOR(uint64_t, 2))(abs(((VECTOR(uint64_t, 4))(abs_diff(((VECTOR(uint64_t, 16))(0x14471E7D03FE3654L, ((VECTOR(uint64_t, 8))((((VECTOR(uint64_t, 16))(l_469.s7c7de6361d9b2e1c)).odd + ((VECTOR(uint64_t, 8))(upsample(((VECTOR(uint32_t, 16))((((VECTOR(uint32_t, 2))(0UL, 0x84E9EAA0L)).xyxxxyxxyxxyxyxy + ((VECTOR(uint32_t, 4))((~p_1381->g_271[2].f0), ((VECTOR(uint32_t, 2))(p_1381->g_472.yx)), 0xF5DFE2C9L)).zwwxywzwxyxyxwyy))).odd, ((VECTOR(uint32_t, 2))(max(((VECTOR(uint32_t, 8))(add_sat(((VECTOR(uint32_t, 4))(p_1381->g_473.xxyz)).wzyxzzzy, ((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 2))(0x277F98B9L, 0xD6C40414L)), 4294967295UL, 0UL)).xwwxwyww + ((VECTOR(uint32_t, 16))(l_476.s01d22e258e496163)).lo)))))).s21, ((VECTOR(uint32_t, 16))((((VECTOR(uint32_t, 16))(sub_sat(((VECTOR(uint32_t, 16))(rhadd(((VECTOR(uint32_t, 8))(add_sat(((VECTOR(uint32_t, 2))(add_sat(((VECTOR(uint32_t, 2))(l_479.wy)), ((VECTOR(uint32_t, 8))(add_sat(((VECTOR(uint32_t, 16))(sub_sat(((VECTOR(uint32_t, 4))(rhadd(((VECTOR(uint32_t, 4))((((VECTOR(uint32_t, 8))((((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))(p_1381->g_484.s7026)), 0x33200450L, ((0x28EB1608L > (safe_rshift_func_int8_t_s_s(l_479.w, 2))) & ((VECTOR(int32_t, 2))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 2),((VECTOR(int32_t, 4))((((VECTOR(int32_t, 8))(sub_sat(((VECTOR(int32_t, 2))(0L, 1L)).xyyxxxyx, ((VECTOR(int32_t, 2))((((VECTOR(int32_t, 8))(0x6054291CL, (((safe_rshift_func_int8_t_s_s(p_1381->g_180[7], (0xAAL || 0L))) < p_1381->g_24.s3) == l_479.y), (-3L), (*p_43), ((VECTOR(int32_t, 2))(0x67FDBA51L)), 0x548CFE61L, 0x1A332E21L)).s27 > ((VECTOR(int32_t, 2))((-9L)))))).xxyyxyyy))).lo > ((VECTOR(int32_t, 4))(3L))))).lo, ((VECTOR(int32_t, 2))(0x7302C0D9L))))).hi), 1UL, ((VECTOR(uint32_t, 2))(1UL)), 0x6999CB3EL, l_479.z, ((VECTOR(uint32_t, 2))(4294967286UL)), 1UL, 0x712C03ADL, 4294967295UL)).even + ((VECTOR(uint32_t, 8))(0x04E1C903L))))).lo + ((VECTOR(uint32_t, 4))(0xD70DFB1EL))))), ((VECTOR(uint32_t, 4))(0x2B014203L))))).zzwxyyyyzwwwywyx, ((VECTOR(uint32_t, 16))(0xF36FD3EFL))))).lo, ((VECTOR(uint32_t, 8))(0x65EB60C8L))))).s22))).xyyyyxyy, ((VECTOR(uint32_t, 8))(0xB4ACA498L))))).s7755620214166420, ((VECTOR(uint32_t, 16))(0xCBDBB207L))))), ((VECTOR(uint32_t, 16))(0xCC5BD55EL))))) + ((VECTOR(uint32_t, 16))(7UL))))).s83))).xyxyxxyy)))))), ((VECTOR(uint64_t, 2))(1UL)), (*p_1381->g_261), l_479.z, 0xE6F6BAE384574A07L, 0x15F71ACF305D6D88L, 0xBD20A343F9D9CB63L)).s73ce, ((VECTOR(uint64_t, 4))(1UL))))).hi))).yyxyyxyxyyyyyyxy, (uint64_t)l_479.w))).scddc, ((VECTOR(uint64_t, 4))(1UL)), ((VECTOR(uint64_t, 4))(0xE9D77D68E0D74BCFL))))).wxyywzzy, (uint64_t)l_469.sb, (uint64_t)(*p_1381->g_261)))).s04))).xyxxyyyx, ((VECTOR(uint64_t, 8))(0x3B01297489F152CFL))))).s7)) | l_476.s2) , FAKE_DIVERGE(p_1381->group_1_offset, get_group_id(1), 10)), 2))), 0L)) > p_1381->g_117.f0)) >= 1UL), p_1381->g_61)) ^ p_1381->g_99.x) != p_1381->g_320.x);
    (*p_1381->g_492) ^= l_479.w;
    return l_493.s30;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t * func_44(int32_t * p_45, uint64_t  p_46, uint32_t  p_47, struct S3 * p_1381)
{ /* block id: 190 */
    VECTOR(int32_t, 8) l_449 = (VECTOR(int32_t, 8))(0x54467D2AL, (VECTOR(int32_t, 4))(0x54467D2AL, (VECTOR(int32_t, 2))(0x54467D2AL, 0x7277AEA2L), 0x7277AEA2L), 0x7277AEA2L, 0x54467D2AL, 0x7277AEA2L);
    VECTOR(int32_t, 8) l_450 = (VECTOR(int32_t, 8))(0x25B7EC48L, (VECTOR(int32_t, 4))(0x25B7EC48L, (VECTOR(int32_t, 2))(0x25B7EC48L, 0x11987F2EL), 0x11987F2EL), 0x11987F2EL, 0x25B7EC48L, 0x11987F2EL);
    int32_t l_451 = (-9L);
    int i;
    l_451 &= (GROUP_DIVERGE(0, 1) && ((VECTOR(int32_t, 4))((((VECTOR(int32_t, 2))(l_449.s74)).xxyx < ((VECTOR(int32_t, 8))(l_450.s41745603)).lo))).x);
    return p_45;
}


/* ------------------------------------------ */
/* 
 * reads : p_1381->g_14 p_1381->g_86 p_1381->g_11 p_1381->g_101 p_1381->g_106 p_1381->g_106.f0 p_1381->g_26 p_1381->g_117 p_1381->g_85 p_1381->g_131 p_1381->g_84 p_1381->g_99 p_1381->g_174 p_1381->g_183 p_1381->g_24 p_1381->g_4 p_1381->g_127 p_1381->g_71 p_1381->g_61 p_1381->g_198 p_1381->g_242 p_1381->g_243 p_1381->g_279 p_1381->g_261 p_1381->g_180 p_1381->g_414 p_1381->g_431 p_1381->g_439 p_1381->g_275 p_1381->g_298
 * writes: p_1381->g_101 p_1381->g_99 p_1381->g_85 p_1381->g_131 p_1381->g_84 p_1381->g_174 p_1381->g_180 p_1381->g_193 p_1381->g_127 p_1381->g_414 p_1381->g_106.f0 p_1381->g_61
 */
uint64_t  func_49(uint64_t  p_50, int32_t * p_51, int64_t  p_52, struct S3 * p_1381)
{ /* block id: 30 */
    int32_t *l_102[5];
    VECTOR(uint16_t, 4) l_143 = (VECTOR(uint16_t, 4))(65535UL, (VECTOR(uint16_t, 2))(65535UL, 0xA07AL), 0xA07AL);
    int8_t *l_151[1];
    uint32_t l_163 = 0UL;
    uint64_t *l_177 = &p_1381->g_174;
    VECTOR(uint8_t, 8) l_194 = (VECTOR(uint8_t, 8))(0xBCL, (VECTOR(uint8_t, 4))(0xBCL, (VECTOR(uint8_t, 2))(0xBCL, 255UL), 255UL), 255UL, 0xBCL, 255UL);
    uint32_t l_197 = 4294967295UL;
    int32_t **l_231 = &l_102[2];
    uint32_t l_272 = 0xDE4A09EEL;
    uint16_t l_302 = 0x552CL;
    VECTOR(uint8_t, 16) l_313 = (VECTOR(uint8_t, 16))(0x02L, (VECTOR(uint8_t, 4))(0x02L, (VECTOR(uint8_t, 2))(0x02L, 255UL), 255UL), 255UL, 0x02L, 255UL, (VECTOR(uint8_t, 2))(0x02L, 255UL), (VECTOR(uint8_t, 2))(0x02L, 255UL), 0x02L, 255UL, 0x02L, 255UL);
    int32_t l_330 = 8L;
    uint32_t l_338 = 0x4A91875BL;
    VECTOR(int32_t, 8) l_349 = (VECTOR(int32_t, 8))(6L, (VECTOR(int32_t, 4))(6L, (VECTOR(int32_t, 2))(6L, (-9L)), (-9L)), (-9L), 6L, (-9L));
    VECTOR(uint32_t, 2) l_364 = (VECTOR(uint32_t, 2))(4294967287UL, 0x267E313EL);
    VECTOR(uint8_t, 8) l_370 = (VECTOR(uint8_t, 8))(1UL, (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 0xB6L), 0xB6L), 0xB6L, 1UL, 0xB6L);
    uint32_t l_395[3][4] = {{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL},{1UL,1UL,1UL,1UL}};
    VECTOR(int8_t, 8) l_405 = (VECTOR(int8_t, 8))((-6L), (VECTOR(int8_t, 4))((-6L), (VECTOR(int8_t, 2))((-6L), (-7L)), (-7L)), (-7L), (-6L), (-7L));
    uint32_t l_415 = 4294967291UL;
    VECTOR(uint16_t, 16) l_422 = (VECTOR(uint16_t, 16))(5UL, (VECTOR(uint16_t, 4))(5UL, (VECTOR(uint16_t, 2))(5UL, 65535UL), 65535UL), 65535UL, 5UL, 65535UL, (VECTOR(uint16_t, 2))(5UL, 65535UL), (VECTOR(uint16_t, 2))(5UL, 65535UL), 5UL, 65535UL, 5UL, 65535UL);
    uint16_t *l_423[3];
    VECTOR(uint64_t, 16) l_430 = (VECTOR(uint64_t, 16))(0x0D90B642A2B44F4BL, (VECTOR(uint64_t, 4))(0x0D90B642A2B44F4BL, (VECTOR(uint64_t, 2))(0x0D90B642A2B44F4BL, 18446744073709551615UL), 18446744073709551615UL), 18446744073709551615UL, 0x0D90B642A2B44F4BL, 18446744073709551615UL, (VECTOR(uint64_t, 2))(0x0D90B642A2B44F4BL, 18446744073709551615UL), (VECTOR(uint64_t, 2))(0x0D90B642A2B44F4BL, 18446744073709551615UL), 0x0D90B642A2B44F4BL, 18446744073709551615UL, 0x0D90B642A2B44F4BL, 18446744073709551615UL);
    VECTOR(uint64_t, 16) l_436 = (VECTOR(uint64_t, 16))(0xF7680001F7EE5616L, (VECTOR(uint64_t, 4))(0xF7680001F7EE5616L, (VECTOR(uint64_t, 2))(0xF7680001F7EE5616L, 18446744073709551615UL), 18446744073709551615UL), 18446744073709551615UL, 0xF7680001F7EE5616L, 18446744073709551615UL, (VECTOR(uint64_t, 2))(0xF7680001F7EE5616L, 18446744073709551615UL), (VECTOR(uint64_t, 2))(0xF7680001F7EE5616L, 18446744073709551615UL), 0xF7680001F7EE5616L, 18446744073709551615UL, 0xF7680001F7EE5616L, 18446744073709551615UL);
    VECTOR(int64_t, 4) l_440 = (VECTOR(int64_t, 4))(0x46F7024C204CB71AL, (VECTOR(int64_t, 2))(0x46F7024C204CB71AL, (-5L)), (-5L));
    uint32_t l_441 = 1UL;
    int i, j;
    for (i = 0; i < 5; i++)
        l_102[i] = &p_1381->g_61;
    for (i = 0; i < 1; i++)
        l_151[i] = &p_1381->g_101;
    for (i = 0; i < 3; i++)
        l_423[i] = &p_1381->g_106.f0;
    if ((*p_51))
    { /* block id: 31 */
        uint16_t l_110 = 0x59B4L;
        int32_t l_152 = 0x149AEB80L;
        int16_t l_158 = (-1L);
        int32_t l_159 = 0x4C5E6FE9L;
        int32_t l_160 = (-9L);
        int32_t l_161 = 0L;
        VECTOR(int32_t, 16) l_162 = (VECTOR(int32_t, 16))(0x4CC1A985L, (VECTOR(int32_t, 4))(0x4CC1A985L, (VECTOR(int32_t, 2))(0x4CC1A985L, 0x6B0CAA3BL), 0x6B0CAA3BL), 0x6B0CAA3BL, 0x4CC1A985L, 0x6B0CAA3BL, (VECTOR(int32_t, 2))(0x4CC1A985L, 0x6B0CAA3BL), (VECTOR(int32_t, 2))(0x4CC1A985L, 0x6B0CAA3BL), 0x4CC1A985L, 0x6B0CAA3BL, 0x4CC1A985L, 0x6B0CAA3BL);
        int64_t *l_192 = (void*)0;
        int64_t **l_191[7] = {&l_192,&l_192,&l_192,&l_192,&l_192,&l_192,&l_192};
        int16_t *l_199 = (void*)0;
        int16_t *l_200 = &p_1381->g_127;
        int i;
        if (((VECTOR(int32_t, 8))(p_1381->g_86.see7b07e0)).s4)
        { /* block id: 32 */
            int8_t *l_100 = &p_1381->g_101;
            int64_t l_103 = 5L;
            int32_t l_109 = 0x6EF1F7F3L;
lbl_136:
            l_110 = (((p_1381->g_11 ^ ((safe_add_func_uint32_t_u_u((safe_div_func_uint8_t_u_u(p_50, (safe_rshift_func_int8_t_s_s(((safe_sub_func_int32_t_s_s(((safe_div_func_int8_t_s_s((p_1381->g_99.y = (((l_103 = (safe_sub_func_int8_t_s_s(((*l_100) &= ((VECTOR(int8_t, 2))(p_1381->g_99.yx)).odd), ((void*)0 != l_102[2])))) == (*p_51)) , (safe_sub_func_int8_t_s_s((p_1381->g_106 , 4L), ((safe_lshift_func_uint16_t_u_s(p_50, p_1381->g_11)) > FAKE_DIVERGE(p_1381->group_1_offset, get_group_id(1), 10)))))), p_1381->g_106.f0)) , 0x246B6D1EL), (*p_51))) < l_109), 1)))), 0x26A37704L)) | 0xE82EF243A45608AFL)) < p_1381->g_26) || l_103);
            for (p_1381->g_85 = 0; (p_1381->g_85 <= 15); p_1381->g_85 = safe_add_func_uint32_t_u_u(p_1381->g_85, 1))
            { /* block id: 39 */
                int16_t *l_126 = &p_1381->g_127;
                int32_t l_128 = 0x498E3433L;
                if ((p_50 , (l_128 = (safe_mod_func_int64_t_s_s(((safe_mul_func_uint8_t_u_u((((l_100 == (p_1381->g_117 , (void*)0)) ^ (safe_lshift_func_int16_t_s_s(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 2))((((VECTOR(int16_t, 4))((((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(sub_sat(((VECTOR(int16_t, 4))(((((safe_rshift_func_int16_t_s_u((safe_mul_func_uint8_t_u_u(0xE6L, (p_1381->g_24.s7 && (~p_1381->g_14)))), ((safe_lshift_func_int16_t_s_s(p_50, ((*l_126) = (&p_1381->g_84[0] == &p_51)))) < GROUP_DIVERGE(1, 1)))) , (*p_51)) != (*p_51)) | p_52), 1L, 1L, 0x25E2L)).even, ((VECTOR(int16_t, 2))(0x5F73L))))), 0x22FEL, (-2L))) && ((VECTOR(int16_t, 4))((-1L)))))).odd && ((VECTOR(int16_t, 2))(0L))))), 0x40E9L, ((VECTOR(int16_t, 2))((-1L))), ((VECTOR(int16_t, 2))((-6L))), (-1L))).s0, p_1381->g_11))) || p_1381->g_85), 255UL)) , l_110), p_50)))))
                { /* block id: 42 */
                    for (l_128 = 0; (l_128 == 21); ++l_128)
                    { /* block id: 45 */
                        uint32_t l_132 = 0xAC609C17L;
                        uint16_t l_133 = 1UL;
                        p_1381->g_131 = &p_51;
                        if (l_132)
                            break;
                        ++l_133;
                    }
                    if (p_50)
                        goto lbl_136;
                    (*p_1381->g_131) = p_51;
                    if ((*p_51))
                        continue;
                }
                else
                { /* block id: 53 */
                    return p_52;
                }
                (*p_1381->g_131) = p_51;
            }
            (*p_1381->g_131) = p_51;
            return p_52;
        }
        else
        { /* block id: 60 */
            int32_t l_146 = 0x431E8507L;
            int32_t l_153 = 4L;
            int32_t l_154 = 1L;
            int32_t l_155 = 0x490BC308L;
            int32_t l_156 = (-3L);
            int32_t l_157[6][5] = {{(-10L),(-10L),(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L),(-10L),(-10L)},{(-10L),(-10L),(-10L),(-10L),(-10L)}};
            uint64_t *l_173 = &p_1381->g_174;
            uint64_t **l_178 = &l_177;
            int64_t *l_179 = (void*)0;
            int i, j;
            l_152 ^= (safe_mul_func_uint8_t_u_u(((safe_sub_func_uint32_t_u_u(GROUP_DIVERGE(2, 1), (safe_mod_func_uint16_t_u_u(((VECTOR(uint16_t, 4))(l_143.ywww)).y, (((&p_1381->g_127 == &p_1381->g_127) != (safe_sub_func_int32_t_s_s((l_146 , ((GROUP_DIVERGE(1, 1) <= (safe_sub_func_int64_t_s_s((&p_51 != (void*)0), ((safe_mod_func_uint32_t_u_u(((((((((*p_1381->g_131) = (*p_1381->g_131)) == p_51) && ((VECTOR(int8_t, 2))((-4L), 0x5EL)).odd) , l_151[0]) == &p_1381->g_101) & l_110) == (-1L)), 0x4D4997D1L)) || l_146)))) | 1UL)), p_1381->g_99.y))) || 0x39DB78BF6E466303L))))) && p_52), p_1381->g_106.f0));
            l_163--;
            l_157[5][0] = (safe_div_func_int64_t_s_s((safe_sub_func_int16_t_s_s((safe_rshift_func_int16_t_s_u(((void*)0 != &p_51), ((GROUP_DIVERGE(1, 1) ^ (((l_162.sa > (((safe_unary_minus_func_uint64_t_u((++(*l_173)))) , l_157[5][0]) , (p_1381->g_180[7] = (((*l_178) = l_177) != (void*)0)))) , (safe_add_func_int16_t_s_s(((VECTOR(int16_t, 4))(p_1381->g_183.s6532)).w, p_1381->g_24.s4))) && ((safe_unary_minus_func_int16_t_s((p_52 | (safe_sub_func_int16_t_s_s(p_50, p_1381->g_4))))) < (*p_51)))) >= p_50))), p_1381->g_127)), l_162.s6));
        }
        l_159 = (*p_51);
        l_162.s0 |= (safe_mul_func_int16_t_s_s((l_161 = ((*l_200) = (p_1381->g_183.s3 , (((((p_50 , (((((safe_rshift_func_uint8_t_u_s(0xCCL, ((p_1381->g_193 = (void*)0) != (void*)0))) && l_110) == (p_1381->g_106 , (((-1L) && ((VECTOR(uint8_t, 16))(l_194.s0375102071025633)).sf) & (((safe_mod_func_uint16_t_u_u(((((GROUP_DIVERGE(1, 1) < 1UL) && 65535UL) || 0L) & p_1381->g_71), l_197)) >= p_1381->g_106.f0) , p_1381->g_127)))) , (*p_51)) ^ p_1381->g_61)) <= FAKE_DIVERGE(p_1381->group_1_offset, get_group_id(1), 10)) , p_1381->g_198) , &p_1381->g_84[0]) == (void*)0)))), 1UL));
    }
    else
    { /* block id: 74 */
        union U1 l_201[1] = {{3L}};
        VECTOR(int32_t, 2) l_202 = (VECTOR(int32_t, 2))(0x3D7E3A37L, 8L);
        uint64_t *l_262 = (void*)0;
        int32_t l_274 = 1L;
        int32_t l_289 = 0L;
        VECTOR(uint8_t, 16) l_315 = (VECTOR(uint8_t, 16))(0x2AL, (VECTOR(uint8_t, 4))(0x2AL, (VECTOR(uint8_t, 2))(0x2AL, 253UL), 253UL), 253UL, 0x2AL, 253UL, (VECTOR(uint8_t, 2))(0x2AL, 253UL), (VECTOR(uint8_t, 2))(0x2AL, 253UL), 0x2AL, 253UL, 0x2AL, 253UL);
        uint16_t l_335 = 1UL;
        VECTOR(uint16_t, 2) l_367 = (VECTOR(uint16_t, 2))(0x1D6EL, 1UL);
        uint32_t l_376 = 4294967295UL;
        int i;
        (1 + 1);
    }
    for (p_52 = 0; (p_52 != (-2)); --p_52)
    { /* block id: 170 */
        int32_t l_382 = (-9L);
        int32_t l_383 = 0x358FEE9EL;
        int32_t l_384 = (-1L);
        int32_t l_385 = (-3L);
        int32_t l_386 = 0x269A8903L;
        int32_t l_387 = (-4L);
        int32_t l_388 = 0x12B5CDF3L;
        int32_t l_389 = 0L;
        int32_t l_390 = (-7L);
        int32_t l_391 = 1L;
        int32_t l_392 = 0L;
        int32_t l_393[4][2];
        int8_t l_394[5][5] = {{0x64L,0x64L,0x64L,0x64L,0x64L},{0x64L,0x64L,0x64L,0x64L,0x64L},{0x64L,0x64L,0x64L,0x64L,0x64L},{0x64L,0x64L,0x64L,0x64L,0x64L},{0x64L,0x64L,0x64L,0x64L,0x64L}};
        int i, j;
        for (i = 0; i < 4; i++)
        {
            for (j = 0; j < 2; j++)
                l_393[i][j] = 0x33D7443FL;
        }
        if (l_382)
            break;
        l_395[1][2]++;
    }
    l_415 |= ((7UL == (**l_231)) | (p_1381->g_414 |= (((safe_unary_minus_func_int64_t_s(((safe_sub_func_int8_t_s_s(((safe_lshift_func_int16_t_s_s(p_52, 4)) <= (safe_div_func_int16_t_s_s((((VECTOR(int8_t, 16))(clz(((VECTOR(int8_t, 16))(safe_clamp_func(VECTOR(int8_t, 16),VECTOR(int8_t, 16),((VECTOR(int8_t, 4))((((VECTOR(int8_t, 16))(add_sat(((VECTOR(int8_t, 2))((((VECTOR(int8_t, 16))(rhadd(((VECTOR(int8_t, 4))(rotate(((VECTOR(int8_t, 8))(clz(((VECTOR(int8_t, 2))((((VECTOR(int8_t, 16))(((VECTOR(int8_t, 4))(l_405.s0107)), ((VECTOR(int8_t, 8))(max(((VECTOR(int8_t, 2))(1L, 0x78L)).xxyyyxyx, (int8_t)((((safe_sub_func_uint32_t_u_u(((safe_mul_func_int16_t_s_s((safe_mod_func_int16_t_s_s(((safe_sub_func_int32_t_s_s((*p_51), ((((void*)0 == (*l_231)) > ((VECTOR(int8_t, 2))((((VECTOR(int8_t, 16))((((VECTOR(int8_t, 16))(((VECTOR(int8_t, 8))(1L, ((1UL < p_50) ^ (**l_231)), 0x42L, ((VECTOR(int8_t, 2))(0x26L)), ((VECTOR(int8_t, 2))(0x2EL)), 0x3CL)), 0x2AL, (-1L), 0x19L, 1L, 0x1EL, 0x50L, 1L, (-5L))) && ((VECTOR(int8_t, 16))((-2L)))))).sce && ((VECTOR(int8_t, 2))(0x47L))))).odd) > (*p_1381->g_242)))) , 0x7996L), p_1381->g_279.z)), p_52)) , 0xB6DC8C6BL), (*p_51))) , (*p_1381->g_261)) && 0x9BD2ADA55E93804FL) | (-9L))))).s1, (**l_231), ((VECTOR(int8_t, 8))(8L)), 0x51L, 0x5AL)).s87 && ((VECTOR(int8_t, 2))(0x4DL))))).yxyyxyxy))).odd, ((VECTOR(int8_t, 4))((-1L)))))).yyxzyyzxwywxzwzw, ((VECTOR(int8_t, 16))((-7L)))))).se4 && ((VECTOR(int8_t, 2))((-6L)))))).xyxxxyxyyxxxxyxx, ((VECTOR(int8_t, 16))((-1L)))))).sb2f0 | ((VECTOR(int8_t, 4))((-2L)))))).zzyyzyxwwxwyywzz, ((VECTOR(int8_t, 16))(0x41L)), ((VECTOR(int8_t, 16))(0x3BL)))))))).sd , p_1381->g_174), FAKE_DIVERGE(p_1381->group_2_offset, get_group_id(2), 10)))), 0L)) | 9UL))) > p_52) || 0UL)));
    if ((safe_mul_func_uint16_t_u_u((((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(9UL, 4UL)), 0xFB2FL, ((VECTOR(uint16_t, 2))((((VECTOR(uint16_t, 2))((+((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(65534UL, 0xA491L)), (p_1381->g_106.f0 &= (~((VECTOR(uint16_t, 16))((((VECTOR(uint16_t, 16))(l_422.s6b75c527fb78395c)) >> ((VECTOR(uint16_t, 16))(16))))).s4)), 65535UL, 65528UL, (((safe_rshift_func_int16_t_s_s(0x10B2L, (safe_rshift_func_uint8_t_u_u((((safe_mul_func_int16_t_s_s(p_50, (&l_177 != &l_177))) <= FAKE_DIVERGE(p_1381->local_0_offset, get_local_id(0), 10)) >= ((VECTOR(uint64_t, 8))(18446744073709551615UL, ((VECTOR(uint64_t, 2))(l_430.s0e)), ((VECTOR(uint64_t, 2))(p_1381->g_431.xx)), ((VECTOR(uint64_t, 2))(mul_hi(((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 16))((((VECTOR(uint64_t, 8))(l_436.se821cd06)).s6525253661772154 + ((VECTOR(uint64_t, 2))(18446744073709551615UL, 0xE8122F91D268B26EL)).yxxxyyyyyxxyxyxy))) << ((VECTOR(uint64_t, 16))(64))))).s2e, ((VECTOR(uint64_t, 2))((((VECTOR(uint64_t, 2))(abs_diff(((VECTOR(int64_t, 2))((((VECTOR(int64_t, 8))((((VECTOR(int64_t, 2))((((VECTOR(int64_t, 16))(((VECTOR(int64_t, 2))(p_1381->g_439.xx)), 0x2AA2ABE359AAFA95L, (-1L), (p_1381->g_86.sa && 7L), 2L, ((VECTOR(int64_t, 4))(min(((VECTOR(int64_t, 2))(l_440.zz)).xyyx, ((VECTOR(int64_t, 16))(0x5E00BF62CDE192ADL, 0x6B767DE4439813C1L, 0x6ABA6C3AA16F5377L, (-6L), ((VECTOR(int64_t, 8))((-1L))), ((VECTOR(int64_t, 4))(1L)))).s60af))), l_441, p_50, (-1L), p_50, 0x72763DE1E4EF5B7BL, 0L)).s88 & ((VECTOR(int64_t, 2))(1L))))).yyyyyyyy | ((VECTOR(int64_t, 8))((-7L)))))).s64 > ((VECTOR(int64_t, 2))(0x565A0A5D3D008ABAL))))), ((VECTOR(int64_t, 2))(0L))))) + ((VECTOR(uint64_t, 2))(1UL)))))))), 4UL)).s1), p_1381->g_275.s0)))) | p_50) | 0UL), FAKE_DIVERGE(p_1381->local_1_offset, get_local_id(1), 10), 1UL, ((VECTOR(uint16_t, 8))(0UL)))).s43))) + ((VECTOR(uint16_t, 2))(0xC04BL))))), 0x8AB0L, 0xFB4CL, 5UL)).s0 | (**l_231)), 0x1C2AL)))
    { /* block id: 177 */
        (*p_1381->g_131) = (*p_1381->g_131);
    }
    else
    { /* block id: 179 */
        int64_t **l_444 = &p_1381->g_193;
        int32_t l_447[10] = {0x78F87991L,(-3L),0x676EC6C0L,(-3L),0x78F87991L,0x78F87991L,(-3L),0x676EC6C0L,(-3L),0x78F87991L};
        int i;
        (**l_231) = (((void*)0 == &p_1381->g_84[1]) , (safe_add_func_uint8_t_u_u((((*l_444) = (void*)0) == (void*)0), p_1381->g_298.s5)));
        for (p_52 = (-18); (p_52 < (-16)); p_52++)
        { /* block id: 184 */
            if (l_447[1])
                break;
        }
    }
    return p_52;
}


/* ------------------------------------------ */
/* 
 * reads : p_1381->g_71 p_1381->g_24 p_1381->g_61 p_1381->g_85
 * writes: p_1381->g_71 p_1381->g_84 p_1381->g_85
 */
uint32_t  func_53(uint32_t  p_54, int32_t * p_55, uint32_t  p_56, struct S3 * p_1381)
{ /* block id: 19 */
    VECTOR(int8_t, 8) l_80 = (VECTOR(int8_t, 8))(0x5DL, (VECTOR(int8_t, 4))(0x5DL, (VECTOR(int8_t, 2))(0x5DL, (-1L)), (-1L)), (-1L), 0x5DL, (-1L));
    VECTOR(int8_t, 4) l_81 = (VECTOR(int8_t, 4))(0x30L, (VECTOR(int8_t, 2))(0x30L, (-6L)), (-6L));
    int32_t *l_83 = &p_1381->g_61;
    int32_t **l_82[3][9] = {{&l_83,&l_83,&l_83,&l_83,&l_83,&l_83,&l_83,&l_83,&l_83},{&l_83,&l_83,&l_83,&l_83,&l_83,&l_83,&l_83,&l_83,&l_83},{&l_83,&l_83,&l_83,&l_83,&l_83,&l_83,&l_83,&l_83,&l_83}};
    int i, j;
    for (p_56 = 0; (p_56 > 15); p_56 = safe_add_func_uint8_t_u_u(p_56, 7))
    { /* block id: 22 */
        int32_t *l_60 = &p_1381->g_61;
        int32_t l_62 = 0x0041AC57L;
        int32_t *l_63 = &l_62;
        int32_t *l_64 = (void*)0;
        int32_t *l_65 = &p_1381->g_61;
        int32_t *l_66 = &p_1381->g_61;
        int32_t *l_67 = &l_62;
        int32_t *l_68 = &p_1381->g_61;
        int32_t *l_69 = &p_1381->g_61;
        int32_t *l_70 = &l_62;
        p_1381->g_71++;
    }
    p_1381->g_85 |= (func_74(((safe_lshift_func_int8_t_s_s((0x2558E0D3L | (247UL < (p_1381->g_24.s7 <= (((((VECTOR(int8_t, 8))(l_80.s52400556)).s7 >= l_80.s6) < (p_55 == &p_1381->g_14)) , p_1381->g_61)))), ((VECTOR(int8_t, 8))(add_sat(((VECTOR(int8_t, 2))(0x06L, 0x73L)).xxxxyxxx, ((VECTOR(int8_t, 2))(l_81.xz)).xyxyyxxx))).s0)) & (&p_1381->g_3 != (p_1381->g_84[0] = (l_80.s0 , &p_1381->g_3)))), p_1381) | p_1381->g_24.s3);
    return p_56;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
uint64_t  func_74(uint32_t  p_75, struct S3 * p_1381)
{ /* block id: 26 */
    return p_75;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i;
    struct S3 c_1382;
    struct S3* p_1381 = &c_1382;
    struct S3 c_1383 = {
        0x1CC25FA5L, // p_1381->g_3
        3UL, // p_1381->g_4
        (-1L), // p_1381->g_11
        0x2F3817D1L, // p_1381->g_14
        (VECTOR(int64_t, 8))(0x37911B9C6FEC1B16L, (VECTOR(int64_t, 4))(0x37911B9C6FEC1B16L, (VECTOR(int64_t, 2))(0x37911B9C6FEC1B16L, 1L), 1L), 1L, 0x37911B9C6FEC1B16L, 1L), // p_1381->g_24
        65535UL, // p_1381->g_26
        0L, // p_1381->g_61
        0x392AD588L, // p_1381->g_71
        9L, // p_1381->g_85
        {&p_1381->g_85,&p_1381->g_85}, // p_1381->g_84
        (VECTOR(int32_t, 16))(0x6D104A74L, (VECTOR(int32_t, 4))(0x6D104A74L, (VECTOR(int32_t, 2))(0x6D104A74L, 0x7F0789CDL), 0x7F0789CDL), 0x7F0789CDL, 0x6D104A74L, 0x7F0789CDL, (VECTOR(int32_t, 2))(0x6D104A74L, 0x7F0789CDL), (VECTOR(int32_t, 2))(0x6D104A74L, 0x7F0789CDL), 0x6D104A74L, 0x7F0789CDL, 0x6D104A74L, 0x7F0789CDL), // p_1381->g_86
        (VECTOR(int8_t, 2))(0x7AL, 1L), // p_1381->g_99
        0x3FL, // p_1381->g_101
        {65535UL}, // p_1381->g_106
        {0x69L}, // p_1381->g_117
        0x5D1CL, // p_1381->g_127
        &p_1381->g_84[0], // p_1381->g_131
        0x9CEE7FFB06713FB8L, // p_1381->g_174
        {0UL,18446744073709551615UL,0UL,0UL,18446744073709551615UL,0UL,0UL,18446744073709551615UL,0UL}, // p_1381->g_180
        (VECTOR(int16_t, 8))(0x52B2L, (VECTOR(int16_t, 4))(0x52B2L, (VECTOR(int16_t, 2))(0x52B2L, 2L), 2L), 2L, 0x52B2L, 2L), // p_1381->g_183
        (void*)0, // p_1381->g_193
        {0x4135L}, // p_1381->g_198
        (VECTOR(int8_t, 4))(0x53L, (VECTOR(int8_t, 2))(0x53L, 1L), 1L), // p_1381->g_228
        0x2A48L, // p_1381->g_237
        0x73L, // p_1381->g_243
        &p_1381->g_243, // p_1381->g_242
        (void*)0, // p_1381->g_246
        &p_1381->g_246, // p_1381->g_245
        &p_1381->g_180[5], // p_1381->g_261
        {{1L},{1L},{1L},{1L},{1L},{1L},{1L}}, // p_1381->g_271
        (VECTOR(int32_t, 16))(0x0DFA0F36L, (VECTOR(int32_t, 4))(0x0DFA0F36L, (VECTOR(int32_t, 2))(0x0DFA0F36L, 0x73D901C8L), 0x73D901C8L), 0x73D901C8L, 0x0DFA0F36L, 0x73D901C8L, (VECTOR(int32_t, 2))(0x0DFA0F36L, 0x73D901C8L), (VECTOR(int32_t, 2))(0x0DFA0F36L, 0x73D901C8L), 0x0DFA0F36L, 0x73D901C8L, 0x0DFA0F36L, 0x73D901C8L), // p_1381->g_275
        (VECTOR(int32_t, 4))(0x013E3077L, (VECTOR(int32_t, 2))(0x013E3077L, 3L), 3L), // p_1381->g_279
        (VECTOR(uint8_t, 16))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 0xEBL), 0xEBL), 0xEBL, 255UL, 0xEBL, (VECTOR(uint8_t, 2))(255UL, 0xEBL), (VECTOR(uint8_t, 2))(255UL, 0xEBL), 255UL, 0xEBL, 255UL, 0xEBL), // p_1381->g_298
        (VECTOR(uint16_t, 2))(0xAE73L, 2UL), // p_1381->g_308
        (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 4294967295UL), 4294967295UL), // p_1381->g_320
        {65533UL}, // p_1381->g_348
        0x75L, // p_1381->g_379
        8UL, // p_1381->g_414
        (VECTOR(uint64_t, 4))(0UL, (VECTOR(uint64_t, 2))(0UL, 18446744073709551614UL), 18446744073709551614UL), // p_1381->g_431
        (VECTOR(int64_t, 4))(0x4281F0DA4032D073L, (VECTOR(int64_t, 2))(0x4281F0DA4032D073L, (-1L)), (-1L)), // p_1381->g_439
        (VECTOR(uint64_t, 16))(18446744073709551615UL, (VECTOR(uint64_t, 4))(18446744073709551615UL, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0x35CF2078EF1C34F5L), 0x35CF2078EF1C34F5L), 0x35CF2078EF1C34F5L, 18446744073709551615UL, 0x35CF2078EF1C34F5L, (VECTOR(uint64_t, 2))(18446744073709551615UL, 0x35CF2078EF1C34F5L), (VECTOR(uint64_t, 2))(18446744073709551615UL, 0x35CF2078EF1C34F5L), 18446744073709551615UL, 0x35CF2078EF1C34F5L, 18446744073709551615UL, 0x35CF2078EF1C34F5L), // p_1381->g_465
        (VECTOR(uint64_t, 2))(0UL, 0xF659CBD55D13CAC3L), // p_1381->g_466
        (VECTOR(uint32_t, 2))(0x0353F72CL, 0UL), // p_1381->g_472
        (VECTOR(uint32_t, 4))(0xE84A4209L, (VECTOR(uint32_t, 2))(0xE84A4209L, 9UL), 9UL), // p_1381->g_473
        (VECTOR(uint32_t, 8))(0x4A3481F0L, (VECTOR(uint32_t, 4))(0x4A3481F0L, (VECTOR(uint32_t, 2))(0x4A3481F0L, 4294967287UL), 4294967287UL), 4294967287UL, 0x4A3481F0L, 4294967287UL), // p_1381->g_484
        &p_1381->g_61, // p_1381->g_491
        &p_1381->g_85, // p_1381->g_492
        0xB2L, // p_1381->g_494
        (VECTOR(int64_t, 16))(0x1B36E5F7EBCF9EC1L, (VECTOR(int64_t, 4))(0x1B36E5F7EBCF9EC1L, (VECTOR(int64_t, 2))(0x1B36E5F7EBCF9EC1L, 3L), 3L), 3L, 0x1B36E5F7EBCF9EC1L, 3L, (VECTOR(int64_t, 2))(0x1B36E5F7EBCF9EC1L, 3L), (VECTOR(int64_t, 2))(0x1B36E5F7EBCF9EC1L, 3L), 0x1B36E5F7EBCF9EC1L, 3L, 0x1B36E5F7EBCF9EC1L, 3L), // p_1381->g_499
        (VECTOR(int64_t, 2))((-6L), (-4L)), // p_1381->g_500
        (VECTOR(int64_t, 8))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 0x13F886E5F10C5271L), 0x13F886E5F10C5271L), 0x13F886E5F10C5271L, 1L, 0x13F886E5F10C5271L), // p_1381->g_502
        (VECTOR(int64_t, 16))(1L, (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 1L), 1L), 1L, 1L, 1L, (VECTOR(int64_t, 2))(1L, 1L), (VECTOR(int64_t, 2))(1L, 1L), 1L, 1L, 1L, 1L), // p_1381->g_522
        1UL, // p_1381->g_523
        (VECTOR(uint8_t, 2))(0xABL, 0xCAL), // p_1381->g_562
        (VECTOR(uint8_t, 4))(0x0AL, (VECTOR(uint8_t, 2))(0x0AL, 255UL), 255UL), // p_1381->g_563
        (VECTOR(int8_t, 4))(0x73L, (VECTOR(int8_t, 2))(0x73L, 0L), 0L), // p_1381->g_570
        (VECTOR(uint16_t, 2))(65527UL, 5UL), // p_1381->g_585
        (void*)0, // p_1381->g_601
        (VECTOR(int16_t, 8))(8L, (VECTOR(int16_t, 4))(8L, (VECTOR(int16_t, 2))(8L, 1L), 1L), 1L, 8L, 1L), // p_1381->g_619
        (VECTOR(uint8_t, 8))(250UL, (VECTOR(uint8_t, 4))(250UL, (VECTOR(uint8_t, 2))(250UL, 6UL), 6UL), 6UL, 250UL, 6UL), // p_1381->g_643
        (VECTOR(uint8_t, 16))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 255UL), 255UL), 255UL, 0UL, 255UL, (VECTOR(uint8_t, 2))(0UL, 255UL), (VECTOR(uint8_t, 2))(0UL, 255UL), 0UL, 255UL, 0UL, 255UL), // p_1381->g_658
        (VECTOR(uint8_t, 8))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 1UL), 1UL), 1UL, 0UL, 1UL), // p_1381->g_661
        (VECTOR(uint8_t, 4))(0xA7L, (VECTOR(uint8_t, 2))(0xA7L, 0x9FL), 0x9FL), // p_1381->g_675
        (VECTOR(int16_t, 2))((-3L), 0x5ACDL), // p_1381->g_679
        (VECTOR(uint8_t, 4))(0x15L, (VECTOR(uint8_t, 2))(0x15L, 0UL), 0UL), // p_1381->g_690
        (VECTOR(uint8_t, 4))(0x0DL, (VECTOR(uint8_t, 2))(0x0DL, 247UL), 247UL), // p_1381->g_692
        7L, // p_1381->g_722
        &p_1381->g_84[1], // p_1381->g_729
        &p_1381->g_106, // p_1381->g_734
        (VECTOR(int8_t, 8))(0x1EL, (VECTOR(int8_t, 4))(0x1EL, (VECTOR(int8_t, 2))(0x1EL, 0L), 0L), 0L, 0x1EL, 0L), // p_1381->g_745
        (VECTOR(uint64_t, 16))(0x8932FA9C0A1FB198L, (VECTOR(uint64_t, 4))(0x8932FA9C0A1FB198L, (VECTOR(uint64_t, 2))(0x8932FA9C0A1FB198L, 8UL), 8UL), 8UL, 0x8932FA9C0A1FB198L, 8UL, (VECTOR(uint64_t, 2))(0x8932FA9C0A1FB198L, 8UL), (VECTOR(uint64_t, 2))(0x8932FA9C0A1FB198L, 8UL), 0x8932FA9C0A1FB198L, 8UL, 0x8932FA9C0A1FB198L, 8UL), // p_1381->g_758
        (VECTOR(int32_t, 16))(0x4FE21D85L, (VECTOR(int32_t, 4))(0x4FE21D85L, (VECTOR(int32_t, 2))(0x4FE21D85L, 0x76E626E1L), 0x76E626E1L), 0x76E626E1L, 0x4FE21D85L, 0x76E626E1L, (VECTOR(int32_t, 2))(0x4FE21D85L, 0x76E626E1L), (VECTOR(int32_t, 2))(0x4FE21D85L, 0x76E626E1L), 0x4FE21D85L, 0x76E626E1L, 0x4FE21D85L, 0x76E626E1L), // p_1381->g_770
        (VECTOR(uint8_t, 2))(255UL, 1UL), // p_1381->g_773
        (VECTOR(uint8_t, 2))(0x48L, 6UL), // p_1381->g_774
        {-8L}, // p_1381->g_792
        (VECTOR(int64_t, 8))((-4L), (VECTOR(int64_t, 4))((-4L), (VECTOR(int64_t, 2))((-4L), 0x45D32A4320769D13L), 0x45D32A4320769D13L), 0x45D32A4320769D13L, (-4L), 0x45D32A4320769D13L), // p_1381->g_809
        (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 0L), 0L), // p_1381->g_811
        (VECTOR(int64_t, 2))(0x079DD5160365471FL, 0x076459E05F3FC36AL), // p_1381->g_812
        {0xE717L}, // p_1381->g_815
        {65535UL}, // p_1381->g_816
        &p_1381->g_84[0], // p_1381->g_824
        &p_1381->g_61, // p_1381->g_829
        (void*)0, // p_1381->g_834
        (VECTOR(int32_t, 2))(0x235CE658L, 1L), // p_1381->g_840
        (VECTOR(uint8_t, 8))(2UL, (VECTOR(uint8_t, 4))(2UL, (VECTOR(uint8_t, 2))(2UL, 0xF5L), 0xF5L), 0xF5L, 2UL, 0xF5L), // p_1381->g_849
        (VECTOR(uint8_t, 8))(5UL, (VECTOR(uint8_t, 4))(5UL, (VECTOR(uint8_t, 2))(5UL, 0x93L), 0x93L), 0x93L, 5UL, 0x93L), // p_1381->g_856
        {0x6B6EL}, // p_1381->g_874
        (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 0x34L), 0x34L), // p_1381->g_875
        (VECTOR(uint16_t, 2))(0UL, 0x7019L), // p_1381->g_890
        0xF35D777A62CB1F20L, // p_1381->g_915
        (VECTOR(int8_t, 16))(0x15L, (VECTOR(int8_t, 4))(0x15L, (VECTOR(int8_t, 2))(0x15L, 0x56L), 0x56L), 0x56L, 0x15L, 0x56L, (VECTOR(int8_t, 2))(0x15L, 0x56L), (VECTOR(int8_t, 2))(0x15L, 0x56L), 0x15L, 0x56L, 0x15L, 0x56L), // p_1381->g_934
        (VECTOR(int8_t, 8))((-2L), (VECTOR(int8_t, 4))((-2L), (VECTOR(int8_t, 2))((-2L), 0x74L), 0x74L), 0x74L, (-2L), 0x74L), // p_1381->g_935
        (VECTOR(int8_t, 4))(7L, (VECTOR(int8_t, 2))(7L, 1L), 1L), // p_1381->g_936
        (VECTOR(uint16_t, 8))(0x6883L, (VECTOR(uint16_t, 4))(0x6883L, (VECTOR(uint16_t, 2))(0x6883L, 0x005AL), 0x005AL), 0x005AL, 0x6883L, 0x005AL), // p_1381->g_944
        (VECTOR(int16_t, 16))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x074CL), 0x074CL), 0x074CL, 1L, 0x074CL, (VECTOR(int16_t, 2))(1L, 0x074CL), (VECTOR(int16_t, 2))(1L, 0x074CL), 1L, 0x074CL, 1L, 0x074CL), // p_1381->g_972
        (VECTOR(int16_t, 8))(0x4C89L, (VECTOR(int16_t, 4))(0x4C89L, (VECTOR(int16_t, 2))(0x4C89L, 0x5EB6L), 0x5EB6L), 0x5EB6L, 0x4C89L, 0x5EB6L), // p_1381->g_973
        (VECTOR(int16_t, 2))(0x0C97L, (-1L)), // p_1381->g_974
        (VECTOR(int16_t, 2))(5L, 0L), // p_1381->g_978
        (VECTOR(uint8_t, 8))(7UL, (VECTOR(uint8_t, 4))(7UL, (VECTOR(uint8_t, 2))(7UL, 0xA8L), 0xA8L), 0xA8L, 7UL, 0xA8L), // p_1381->g_985
        (VECTOR(int32_t, 8))(0x5201364DL, (VECTOR(int32_t, 4))(0x5201364DL, (VECTOR(int32_t, 2))(0x5201364DL, 0x2D09D63AL), 0x2D09D63AL), 0x2D09D63AL, 0x5201364DL, 0x2D09D63AL), // p_1381->g_1003
        (VECTOR(uint16_t, 8))(2UL, (VECTOR(uint16_t, 4))(2UL, (VECTOR(uint16_t, 2))(2UL, 0UL), 0UL), 0UL, 2UL, 0UL), // p_1381->g_1008
        (VECTOR(uint8_t, 8))(0x92L, (VECTOR(uint8_t, 4))(0x92L, (VECTOR(uint8_t, 2))(0x92L, 0x80L), 0x80L), 0x80L, 0x92L, 0x80L), // p_1381->g_1011
        (VECTOR(uint8_t, 16))(255UL, (VECTOR(uint8_t, 4))(255UL, (VECTOR(uint8_t, 2))(255UL, 0x0DL), 0x0DL), 0x0DL, 255UL, 0x0DL, (VECTOR(uint8_t, 2))(255UL, 0x0DL), (VECTOR(uint8_t, 2))(255UL, 0x0DL), 255UL, 0x0DL, 255UL, 0x0DL), // p_1381->g_1020
        0x561F983CL, // p_1381->g_1043
        {65528UL}, // p_1381->g_1050
        {1UL}, // p_1381->g_1055
        (VECTOR(uint32_t, 2))(4294967290UL, 4294967294UL), // p_1381->g_1060
        (VECTOR(int32_t, 16))(0x072A0C9EL, (VECTOR(int32_t, 4))(0x072A0C9EL, (VECTOR(int32_t, 2))(0x072A0C9EL, (-1L)), (-1L)), (-1L), 0x072A0C9EL, (-1L), (VECTOR(int32_t, 2))(0x072A0C9EL, (-1L)), (VECTOR(int32_t, 2))(0x072A0C9EL, (-1L)), 0x072A0C9EL, (-1L), 0x072A0C9EL, (-1L)), // p_1381->g_1063
        0x30B39CD20F504341L, // p_1381->g_1068
        &p_1381->g_792, // p_1381->g_1070
        {&p_1381->g_1070,&p_1381->g_1070,&p_1381->g_1070,&p_1381->g_1070,&p_1381->g_1070,&p_1381->g_1070,&p_1381->g_1070,&p_1381->g_1070}, // p_1381->g_1069
        (VECTOR(int32_t, 8))((-9L), (VECTOR(int32_t, 4))((-9L), (VECTOR(int32_t, 2))((-9L), (-1L)), (-1L)), (-1L), (-9L), (-1L)), // p_1381->g_1073
        &p_1381->g_84[1], // p_1381->g_1098
        (-1L), // p_1381->g_1122
        (VECTOR(int16_t, 16))(0x5256L, (VECTOR(int16_t, 4))(0x5256L, (VECTOR(int16_t, 2))(0x5256L, 0x783FL), 0x783FL), 0x783FL, 0x5256L, 0x783FL, (VECTOR(int16_t, 2))(0x5256L, 0x783FL), (VECTOR(int16_t, 2))(0x5256L, 0x783FL), 0x5256L, 0x783FL, 0x5256L, 0x783FL), // p_1381->g_1155
        (VECTOR(int16_t, 2))(8L, 0x5E79L), // p_1381->g_1159
        (VECTOR(int16_t, 8))(1L, (VECTOR(int16_t, 4))(1L, (VECTOR(int16_t, 2))(1L, 0x4E48L), 0x4E48L), 0x4E48L, 1L, 0x4E48L), // p_1381->g_1166
        (VECTOR(int64_t, 4))(0x5107688555A84553L, (VECTOR(int64_t, 2))(0x5107688555A84553L, 0x1B126F57F264D7D0L), 0x1B126F57F264D7D0L), // p_1381->g_1168
        (VECTOR(uint16_t, 8))(1UL, (VECTOR(uint16_t, 4))(1UL, (VECTOR(uint16_t, 2))(1UL, 65533UL), 65533UL), 65533UL, 1UL, 65533UL), // p_1381->g_1192
        (VECTOR(int32_t, 2))(0x6F6D98A5L, 8L), // p_1381->g_1200
        (VECTOR(uint32_t, 8))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 4294967293UL), 4294967293UL), 4294967293UL, 4294967295UL, 4294967293UL), // p_1381->g_1247
        &p_1381->g_84[1], // p_1381->g_1253
        &p_1381->g_84[0], // p_1381->g_1269
        (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, (-1L)), (-1L)), (-1L), 0L, (-1L)), // p_1381->g_1273
        (-7L), // p_1381->g_1294
        (void*)0, // p_1381->g_1295
        (VECTOR(uint32_t, 4))(0xDE9333BBL, (VECTOR(uint32_t, 2))(0xDE9333BBL, 0xB5811EDFL), 0xB5811EDFL), // p_1381->g_1309
        {&p_1381->g_242,&p_1381->g_242,&p_1381->g_242,&p_1381->g_242}, // p_1381->g_1329
        &p_1381->g_1329[1], // p_1381->g_1328
        &p_1381->g_84[0], // p_1381->g_1330
        (VECTOR(uint16_t, 2))(7UL, 65535UL), // p_1381->g_1347
        (void*)0, // p_1381->g_1359
        &p_1381->g_1359, // p_1381->g_1358
        &p_1381->g_379, // p_1381->g_1365
        &p_1381->g_1365, // p_1381->g_1364
        &p_1381->g_127, // p_1381->g_1376
        &p_1381->g_1376, // p_1381->g_1375
        sequence_input[get_global_id(0)], // p_1381->global_0_offset
        sequence_input[get_global_id(1)], // p_1381->global_1_offset
        sequence_input[get_global_id(2)], // p_1381->global_2_offset
        sequence_input[get_local_id(0)], // p_1381->local_0_offset
        sequence_input[get_local_id(1)], // p_1381->local_1_offset
        sequence_input[get_local_id(2)], // p_1381->local_2_offset
        sequence_input[get_group_id(0)], // p_1381->group_0_offset
        sequence_input[get_group_id(1)], // p_1381->group_1_offset
        sequence_input[get_group_id(2)], // p_1381->group_2_offset
    };
    c_1382 = c_1383;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1381);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1381->g_3, "p_1381->g_3", print_hash_value);
    transparent_crc(p_1381->g_4, "p_1381->g_4", print_hash_value);
    transparent_crc(p_1381->g_11, "p_1381->g_11", print_hash_value);
    transparent_crc(p_1381->g_14, "p_1381->g_14", print_hash_value);
    transparent_crc(p_1381->g_24.s0, "p_1381->g_24.s0", print_hash_value);
    transparent_crc(p_1381->g_24.s1, "p_1381->g_24.s1", print_hash_value);
    transparent_crc(p_1381->g_24.s2, "p_1381->g_24.s2", print_hash_value);
    transparent_crc(p_1381->g_24.s3, "p_1381->g_24.s3", print_hash_value);
    transparent_crc(p_1381->g_24.s4, "p_1381->g_24.s4", print_hash_value);
    transparent_crc(p_1381->g_24.s5, "p_1381->g_24.s5", print_hash_value);
    transparent_crc(p_1381->g_24.s6, "p_1381->g_24.s6", print_hash_value);
    transparent_crc(p_1381->g_24.s7, "p_1381->g_24.s7", print_hash_value);
    transparent_crc(p_1381->g_26, "p_1381->g_26", print_hash_value);
    transparent_crc(p_1381->g_61, "p_1381->g_61", print_hash_value);
    transparent_crc(p_1381->g_71, "p_1381->g_71", print_hash_value);
    transparent_crc(p_1381->g_85, "p_1381->g_85", print_hash_value);
    transparent_crc(p_1381->g_86.s0, "p_1381->g_86.s0", print_hash_value);
    transparent_crc(p_1381->g_86.s1, "p_1381->g_86.s1", print_hash_value);
    transparent_crc(p_1381->g_86.s2, "p_1381->g_86.s2", print_hash_value);
    transparent_crc(p_1381->g_86.s3, "p_1381->g_86.s3", print_hash_value);
    transparent_crc(p_1381->g_86.s4, "p_1381->g_86.s4", print_hash_value);
    transparent_crc(p_1381->g_86.s5, "p_1381->g_86.s5", print_hash_value);
    transparent_crc(p_1381->g_86.s6, "p_1381->g_86.s6", print_hash_value);
    transparent_crc(p_1381->g_86.s7, "p_1381->g_86.s7", print_hash_value);
    transparent_crc(p_1381->g_86.s8, "p_1381->g_86.s8", print_hash_value);
    transparent_crc(p_1381->g_86.s9, "p_1381->g_86.s9", print_hash_value);
    transparent_crc(p_1381->g_86.sa, "p_1381->g_86.sa", print_hash_value);
    transparent_crc(p_1381->g_86.sb, "p_1381->g_86.sb", print_hash_value);
    transparent_crc(p_1381->g_86.sc, "p_1381->g_86.sc", print_hash_value);
    transparent_crc(p_1381->g_86.sd, "p_1381->g_86.sd", print_hash_value);
    transparent_crc(p_1381->g_86.se, "p_1381->g_86.se", print_hash_value);
    transparent_crc(p_1381->g_86.sf, "p_1381->g_86.sf", print_hash_value);
    transparent_crc(p_1381->g_99.x, "p_1381->g_99.x", print_hash_value);
    transparent_crc(p_1381->g_99.y, "p_1381->g_99.y", print_hash_value);
    transparent_crc(p_1381->g_101, "p_1381->g_101", print_hash_value);
    transparent_crc(p_1381->g_106.f0, "p_1381->g_106.f0", print_hash_value);
    transparent_crc(p_1381->g_117.f0, "p_1381->g_117.f0", print_hash_value);
    transparent_crc(p_1381->g_127, "p_1381->g_127", print_hash_value);
    transparent_crc(p_1381->g_174, "p_1381->g_174", print_hash_value);
    for (i = 0; i < 9; i++)
    {
        transparent_crc(p_1381->g_180[i], "p_1381->g_180[i]", print_hash_value);

    }
    transparent_crc(p_1381->g_183.s0, "p_1381->g_183.s0", print_hash_value);
    transparent_crc(p_1381->g_183.s1, "p_1381->g_183.s1", print_hash_value);
    transparent_crc(p_1381->g_183.s2, "p_1381->g_183.s2", print_hash_value);
    transparent_crc(p_1381->g_183.s3, "p_1381->g_183.s3", print_hash_value);
    transparent_crc(p_1381->g_183.s4, "p_1381->g_183.s4", print_hash_value);
    transparent_crc(p_1381->g_183.s5, "p_1381->g_183.s5", print_hash_value);
    transparent_crc(p_1381->g_183.s6, "p_1381->g_183.s6", print_hash_value);
    transparent_crc(p_1381->g_183.s7, "p_1381->g_183.s7", print_hash_value);
    transparent_crc(p_1381->g_198.f0, "p_1381->g_198.f0", print_hash_value);
    transparent_crc(p_1381->g_228.x, "p_1381->g_228.x", print_hash_value);
    transparent_crc(p_1381->g_228.y, "p_1381->g_228.y", print_hash_value);
    transparent_crc(p_1381->g_228.z, "p_1381->g_228.z", print_hash_value);
    transparent_crc(p_1381->g_228.w, "p_1381->g_228.w", print_hash_value);
    transparent_crc(p_1381->g_237, "p_1381->g_237", print_hash_value);
    transparent_crc(p_1381->g_243, "p_1381->g_243", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        transparent_crc(p_1381->g_271[i].f0, "p_1381->g_271[i].f0", print_hash_value);

    }
    transparent_crc(p_1381->g_275.s0, "p_1381->g_275.s0", print_hash_value);
    transparent_crc(p_1381->g_275.s1, "p_1381->g_275.s1", print_hash_value);
    transparent_crc(p_1381->g_275.s2, "p_1381->g_275.s2", print_hash_value);
    transparent_crc(p_1381->g_275.s3, "p_1381->g_275.s3", print_hash_value);
    transparent_crc(p_1381->g_275.s4, "p_1381->g_275.s4", print_hash_value);
    transparent_crc(p_1381->g_275.s5, "p_1381->g_275.s5", print_hash_value);
    transparent_crc(p_1381->g_275.s6, "p_1381->g_275.s6", print_hash_value);
    transparent_crc(p_1381->g_275.s7, "p_1381->g_275.s7", print_hash_value);
    transparent_crc(p_1381->g_275.s8, "p_1381->g_275.s8", print_hash_value);
    transparent_crc(p_1381->g_275.s9, "p_1381->g_275.s9", print_hash_value);
    transparent_crc(p_1381->g_275.sa, "p_1381->g_275.sa", print_hash_value);
    transparent_crc(p_1381->g_275.sb, "p_1381->g_275.sb", print_hash_value);
    transparent_crc(p_1381->g_275.sc, "p_1381->g_275.sc", print_hash_value);
    transparent_crc(p_1381->g_275.sd, "p_1381->g_275.sd", print_hash_value);
    transparent_crc(p_1381->g_275.se, "p_1381->g_275.se", print_hash_value);
    transparent_crc(p_1381->g_275.sf, "p_1381->g_275.sf", print_hash_value);
    transparent_crc(p_1381->g_279.x, "p_1381->g_279.x", print_hash_value);
    transparent_crc(p_1381->g_279.y, "p_1381->g_279.y", print_hash_value);
    transparent_crc(p_1381->g_279.z, "p_1381->g_279.z", print_hash_value);
    transparent_crc(p_1381->g_279.w, "p_1381->g_279.w", print_hash_value);
    transparent_crc(p_1381->g_298.s0, "p_1381->g_298.s0", print_hash_value);
    transparent_crc(p_1381->g_298.s1, "p_1381->g_298.s1", print_hash_value);
    transparent_crc(p_1381->g_298.s2, "p_1381->g_298.s2", print_hash_value);
    transparent_crc(p_1381->g_298.s3, "p_1381->g_298.s3", print_hash_value);
    transparent_crc(p_1381->g_298.s4, "p_1381->g_298.s4", print_hash_value);
    transparent_crc(p_1381->g_298.s5, "p_1381->g_298.s5", print_hash_value);
    transparent_crc(p_1381->g_298.s6, "p_1381->g_298.s6", print_hash_value);
    transparent_crc(p_1381->g_298.s7, "p_1381->g_298.s7", print_hash_value);
    transparent_crc(p_1381->g_298.s8, "p_1381->g_298.s8", print_hash_value);
    transparent_crc(p_1381->g_298.s9, "p_1381->g_298.s9", print_hash_value);
    transparent_crc(p_1381->g_298.sa, "p_1381->g_298.sa", print_hash_value);
    transparent_crc(p_1381->g_298.sb, "p_1381->g_298.sb", print_hash_value);
    transparent_crc(p_1381->g_298.sc, "p_1381->g_298.sc", print_hash_value);
    transparent_crc(p_1381->g_298.sd, "p_1381->g_298.sd", print_hash_value);
    transparent_crc(p_1381->g_298.se, "p_1381->g_298.se", print_hash_value);
    transparent_crc(p_1381->g_298.sf, "p_1381->g_298.sf", print_hash_value);
    transparent_crc(p_1381->g_308.x, "p_1381->g_308.x", print_hash_value);
    transparent_crc(p_1381->g_308.y, "p_1381->g_308.y", print_hash_value);
    transparent_crc(p_1381->g_320.x, "p_1381->g_320.x", print_hash_value);
    transparent_crc(p_1381->g_320.y, "p_1381->g_320.y", print_hash_value);
    transparent_crc(p_1381->g_320.z, "p_1381->g_320.z", print_hash_value);
    transparent_crc(p_1381->g_320.w, "p_1381->g_320.w", print_hash_value);
    transparent_crc(p_1381->g_348.f0, "p_1381->g_348.f0", print_hash_value);
    transparent_crc(p_1381->g_379, "p_1381->g_379", print_hash_value);
    transparent_crc(p_1381->g_414, "p_1381->g_414", print_hash_value);
    transparent_crc(p_1381->g_431.x, "p_1381->g_431.x", print_hash_value);
    transparent_crc(p_1381->g_431.y, "p_1381->g_431.y", print_hash_value);
    transparent_crc(p_1381->g_431.z, "p_1381->g_431.z", print_hash_value);
    transparent_crc(p_1381->g_431.w, "p_1381->g_431.w", print_hash_value);
    transparent_crc(p_1381->g_439.x, "p_1381->g_439.x", print_hash_value);
    transparent_crc(p_1381->g_439.y, "p_1381->g_439.y", print_hash_value);
    transparent_crc(p_1381->g_439.z, "p_1381->g_439.z", print_hash_value);
    transparent_crc(p_1381->g_439.w, "p_1381->g_439.w", print_hash_value);
    transparent_crc(p_1381->g_465.s0, "p_1381->g_465.s0", print_hash_value);
    transparent_crc(p_1381->g_465.s1, "p_1381->g_465.s1", print_hash_value);
    transparent_crc(p_1381->g_465.s2, "p_1381->g_465.s2", print_hash_value);
    transparent_crc(p_1381->g_465.s3, "p_1381->g_465.s3", print_hash_value);
    transparent_crc(p_1381->g_465.s4, "p_1381->g_465.s4", print_hash_value);
    transparent_crc(p_1381->g_465.s5, "p_1381->g_465.s5", print_hash_value);
    transparent_crc(p_1381->g_465.s6, "p_1381->g_465.s6", print_hash_value);
    transparent_crc(p_1381->g_465.s7, "p_1381->g_465.s7", print_hash_value);
    transparent_crc(p_1381->g_465.s8, "p_1381->g_465.s8", print_hash_value);
    transparent_crc(p_1381->g_465.s9, "p_1381->g_465.s9", print_hash_value);
    transparent_crc(p_1381->g_465.sa, "p_1381->g_465.sa", print_hash_value);
    transparent_crc(p_1381->g_465.sb, "p_1381->g_465.sb", print_hash_value);
    transparent_crc(p_1381->g_465.sc, "p_1381->g_465.sc", print_hash_value);
    transparent_crc(p_1381->g_465.sd, "p_1381->g_465.sd", print_hash_value);
    transparent_crc(p_1381->g_465.se, "p_1381->g_465.se", print_hash_value);
    transparent_crc(p_1381->g_465.sf, "p_1381->g_465.sf", print_hash_value);
    transparent_crc(p_1381->g_466.x, "p_1381->g_466.x", print_hash_value);
    transparent_crc(p_1381->g_466.y, "p_1381->g_466.y", print_hash_value);
    transparent_crc(p_1381->g_472.x, "p_1381->g_472.x", print_hash_value);
    transparent_crc(p_1381->g_472.y, "p_1381->g_472.y", print_hash_value);
    transparent_crc(p_1381->g_473.x, "p_1381->g_473.x", print_hash_value);
    transparent_crc(p_1381->g_473.y, "p_1381->g_473.y", print_hash_value);
    transparent_crc(p_1381->g_473.z, "p_1381->g_473.z", print_hash_value);
    transparent_crc(p_1381->g_473.w, "p_1381->g_473.w", print_hash_value);
    transparent_crc(p_1381->g_484.s0, "p_1381->g_484.s0", print_hash_value);
    transparent_crc(p_1381->g_484.s1, "p_1381->g_484.s1", print_hash_value);
    transparent_crc(p_1381->g_484.s2, "p_1381->g_484.s2", print_hash_value);
    transparent_crc(p_1381->g_484.s3, "p_1381->g_484.s3", print_hash_value);
    transparent_crc(p_1381->g_484.s4, "p_1381->g_484.s4", print_hash_value);
    transparent_crc(p_1381->g_484.s5, "p_1381->g_484.s5", print_hash_value);
    transparent_crc(p_1381->g_484.s6, "p_1381->g_484.s6", print_hash_value);
    transparent_crc(p_1381->g_484.s7, "p_1381->g_484.s7", print_hash_value);
    transparent_crc(p_1381->g_494, "p_1381->g_494", print_hash_value);
    transparent_crc(p_1381->g_499.s0, "p_1381->g_499.s0", print_hash_value);
    transparent_crc(p_1381->g_499.s1, "p_1381->g_499.s1", print_hash_value);
    transparent_crc(p_1381->g_499.s2, "p_1381->g_499.s2", print_hash_value);
    transparent_crc(p_1381->g_499.s3, "p_1381->g_499.s3", print_hash_value);
    transparent_crc(p_1381->g_499.s4, "p_1381->g_499.s4", print_hash_value);
    transparent_crc(p_1381->g_499.s5, "p_1381->g_499.s5", print_hash_value);
    transparent_crc(p_1381->g_499.s6, "p_1381->g_499.s6", print_hash_value);
    transparent_crc(p_1381->g_499.s7, "p_1381->g_499.s7", print_hash_value);
    transparent_crc(p_1381->g_499.s8, "p_1381->g_499.s8", print_hash_value);
    transparent_crc(p_1381->g_499.s9, "p_1381->g_499.s9", print_hash_value);
    transparent_crc(p_1381->g_499.sa, "p_1381->g_499.sa", print_hash_value);
    transparent_crc(p_1381->g_499.sb, "p_1381->g_499.sb", print_hash_value);
    transparent_crc(p_1381->g_499.sc, "p_1381->g_499.sc", print_hash_value);
    transparent_crc(p_1381->g_499.sd, "p_1381->g_499.sd", print_hash_value);
    transparent_crc(p_1381->g_499.se, "p_1381->g_499.se", print_hash_value);
    transparent_crc(p_1381->g_499.sf, "p_1381->g_499.sf", print_hash_value);
    transparent_crc(p_1381->g_500.x, "p_1381->g_500.x", print_hash_value);
    transparent_crc(p_1381->g_500.y, "p_1381->g_500.y", print_hash_value);
    transparent_crc(p_1381->g_502.s0, "p_1381->g_502.s0", print_hash_value);
    transparent_crc(p_1381->g_502.s1, "p_1381->g_502.s1", print_hash_value);
    transparent_crc(p_1381->g_502.s2, "p_1381->g_502.s2", print_hash_value);
    transparent_crc(p_1381->g_502.s3, "p_1381->g_502.s3", print_hash_value);
    transparent_crc(p_1381->g_502.s4, "p_1381->g_502.s4", print_hash_value);
    transparent_crc(p_1381->g_502.s5, "p_1381->g_502.s5", print_hash_value);
    transparent_crc(p_1381->g_502.s6, "p_1381->g_502.s6", print_hash_value);
    transparent_crc(p_1381->g_502.s7, "p_1381->g_502.s7", print_hash_value);
    transparent_crc(p_1381->g_522.s0, "p_1381->g_522.s0", print_hash_value);
    transparent_crc(p_1381->g_522.s1, "p_1381->g_522.s1", print_hash_value);
    transparent_crc(p_1381->g_522.s2, "p_1381->g_522.s2", print_hash_value);
    transparent_crc(p_1381->g_522.s3, "p_1381->g_522.s3", print_hash_value);
    transparent_crc(p_1381->g_522.s4, "p_1381->g_522.s4", print_hash_value);
    transparent_crc(p_1381->g_522.s5, "p_1381->g_522.s5", print_hash_value);
    transparent_crc(p_1381->g_522.s6, "p_1381->g_522.s6", print_hash_value);
    transparent_crc(p_1381->g_522.s7, "p_1381->g_522.s7", print_hash_value);
    transparent_crc(p_1381->g_522.s8, "p_1381->g_522.s8", print_hash_value);
    transparent_crc(p_1381->g_522.s9, "p_1381->g_522.s9", print_hash_value);
    transparent_crc(p_1381->g_522.sa, "p_1381->g_522.sa", print_hash_value);
    transparent_crc(p_1381->g_522.sb, "p_1381->g_522.sb", print_hash_value);
    transparent_crc(p_1381->g_522.sc, "p_1381->g_522.sc", print_hash_value);
    transparent_crc(p_1381->g_522.sd, "p_1381->g_522.sd", print_hash_value);
    transparent_crc(p_1381->g_522.se, "p_1381->g_522.se", print_hash_value);
    transparent_crc(p_1381->g_522.sf, "p_1381->g_522.sf", print_hash_value);
    transparent_crc(p_1381->g_523, "p_1381->g_523", print_hash_value);
    transparent_crc(p_1381->g_562.x, "p_1381->g_562.x", print_hash_value);
    transparent_crc(p_1381->g_562.y, "p_1381->g_562.y", print_hash_value);
    transparent_crc(p_1381->g_563.x, "p_1381->g_563.x", print_hash_value);
    transparent_crc(p_1381->g_563.y, "p_1381->g_563.y", print_hash_value);
    transparent_crc(p_1381->g_563.z, "p_1381->g_563.z", print_hash_value);
    transparent_crc(p_1381->g_563.w, "p_1381->g_563.w", print_hash_value);
    transparent_crc(p_1381->g_570.x, "p_1381->g_570.x", print_hash_value);
    transparent_crc(p_1381->g_570.y, "p_1381->g_570.y", print_hash_value);
    transparent_crc(p_1381->g_570.z, "p_1381->g_570.z", print_hash_value);
    transparent_crc(p_1381->g_570.w, "p_1381->g_570.w", print_hash_value);
    transparent_crc(p_1381->g_585.x, "p_1381->g_585.x", print_hash_value);
    transparent_crc(p_1381->g_585.y, "p_1381->g_585.y", print_hash_value);
    transparent_crc(p_1381->g_619.s0, "p_1381->g_619.s0", print_hash_value);
    transparent_crc(p_1381->g_619.s1, "p_1381->g_619.s1", print_hash_value);
    transparent_crc(p_1381->g_619.s2, "p_1381->g_619.s2", print_hash_value);
    transparent_crc(p_1381->g_619.s3, "p_1381->g_619.s3", print_hash_value);
    transparent_crc(p_1381->g_619.s4, "p_1381->g_619.s4", print_hash_value);
    transparent_crc(p_1381->g_619.s5, "p_1381->g_619.s5", print_hash_value);
    transparent_crc(p_1381->g_619.s6, "p_1381->g_619.s6", print_hash_value);
    transparent_crc(p_1381->g_619.s7, "p_1381->g_619.s7", print_hash_value);
    transparent_crc(p_1381->g_643.s0, "p_1381->g_643.s0", print_hash_value);
    transparent_crc(p_1381->g_643.s1, "p_1381->g_643.s1", print_hash_value);
    transparent_crc(p_1381->g_643.s2, "p_1381->g_643.s2", print_hash_value);
    transparent_crc(p_1381->g_643.s3, "p_1381->g_643.s3", print_hash_value);
    transparent_crc(p_1381->g_643.s4, "p_1381->g_643.s4", print_hash_value);
    transparent_crc(p_1381->g_643.s5, "p_1381->g_643.s5", print_hash_value);
    transparent_crc(p_1381->g_643.s6, "p_1381->g_643.s6", print_hash_value);
    transparent_crc(p_1381->g_643.s7, "p_1381->g_643.s7", print_hash_value);
    transparent_crc(p_1381->g_658.s0, "p_1381->g_658.s0", print_hash_value);
    transparent_crc(p_1381->g_658.s1, "p_1381->g_658.s1", print_hash_value);
    transparent_crc(p_1381->g_658.s2, "p_1381->g_658.s2", print_hash_value);
    transparent_crc(p_1381->g_658.s3, "p_1381->g_658.s3", print_hash_value);
    transparent_crc(p_1381->g_658.s4, "p_1381->g_658.s4", print_hash_value);
    transparent_crc(p_1381->g_658.s5, "p_1381->g_658.s5", print_hash_value);
    transparent_crc(p_1381->g_658.s6, "p_1381->g_658.s6", print_hash_value);
    transparent_crc(p_1381->g_658.s7, "p_1381->g_658.s7", print_hash_value);
    transparent_crc(p_1381->g_658.s8, "p_1381->g_658.s8", print_hash_value);
    transparent_crc(p_1381->g_658.s9, "p_1381->g_658.s9", print_hash_value);
    transparent_crc(p_1381->g_658.sa, "p_1381->g_658.sa", print_hash_value);
    transparent_crc(p_1381->g_658.sb, "p_1381->g_658.sb", print_hash_value);
    transparent_crc(p_1381->g_658.sc, "p_1381->g_658.sc", print_hash_value);
    transparent_crc(p_1381->g_658.sd, "p_1381->g_658.sd", print_hash_value);
    transparent_crc(p_1381->g_658.se, "p_1381->g_658.se", print_hash_value);
    transparent_crc(p_1381->g_658.sf, "p_1381->g_658.sf", print_hash_value);
    transparent_crc(p_1381->g_661.s0, "p_1381->g_661.s0", print_hash_value);
    transparent_crc(p_1381->g_661.s1, "p_1381->g_661.s1", print_hash_value);
    transparent_crc(p_1381->g_661.s2, "p_1381->g_661.s2", print_hash_value);
    transparent_crc(p_1381->g_661.s3, "p_1381->g_661.s3", print_hash_value);
    transparent_crc(p_1381->g_661.s4, "p_1381->g_661.s4", print_hash_value);
    transparent_crc(p_1381->g_661.s5, "p_1381->g_661.s5", print_hash_value);
    transparent_crc(p_1381->g_661.s6, "p_1381->g_661.s6", print_hash_value);
    transparent_crc(p_1381->g_661.s7, "p_1381->g_661.s7", print_hash_value);
    transparent_crc(p_1381->g_675.x, "p_1381->g_675.x", print_hash_value);
    transparent_crc(p_1381->g_675.y, "p_1381->g_675.y", print_hash_value);
    transparent_crc(p_1381->g_675.z, "p_1381->g_675.z", print_hash_value);
    transparent_crc(p_1381->g_675.w, "p_1381->g_675.w", print_hash_value);
    transparent_crc(p_1381->g_679.x, "p_1381->g_679.x", print_hash_value);
    transparent_crc(p_1381->g_679.y, "p_1381->g_679.y", print_hash_value);
    transparent_crc(p_1381->g_690.x, "p_1381->g_690.x", print_hash_value);
    transparent_crc(p_1381->g_690.y, "p_1381->g_690.y", print_hash_value);
    transparent_crc(p_1381->g_690.z, "p_1381->g_690.z", print_hash_value);
    transparent_crc(p_1381->g_690.w, "p_1381->g_690.w", print_hash_value);
    transparent_crc(p_1381->g_692.x, "p_1381->g_692.x", print_hash_value);
    transparent_crc(p_1381->g_692.y, "p_1381->g_692.y", print_hash_value);
    transparent_crc(p_1381->g_692.z, "p_1381->g_692.z", print_hash_value);
    transparent_crc(p_1381->g_692.w, "p_1381->g_692.w", print_hash_value);
    transparent_crc(p_1381->g_722, "p_1381->g_722", print_hash_value);
    transparent_crc(p_1381->g_745.s0, "p_1381->g_745.s0", print_hash_value);
    transparent_crc(p_1381->g_745.s1, "p_1381->g_745.s1", print_hash_value);
    transparent_crc(p_1381->g_745.s2, "p_1381->g_745.s2", print_hash_value);
    transparent_crc(p_1381->g_745.s3, "p_1381->g_745.s3", print_hash_value);
    transparent_crc(p_1381->g_745.s4, "p_1381->g_745.s4", print_hash_value);
    transparent_crc(p_1381->g_745.s5, "p_1381->g_745.s5", print_hash_value);
    transparent_crc(p_1381->g_745.s6, "p_1381->g_745.s6", print_hash_value);
    transparent_crc(p_1381->g_745.s7, "p_1381->g_745.s7", print_hash_value);
    transparent_crc(p_1381->g_758.s0, "p_1381->g_758.s0", print_hash_value);
    transparent_crc(p_1381->g_758.s1, "p_1381->g_758.s1", print_hash_value);
    transparent_crc(p_1381->g_758.s2, "p_1381->g_758.s2", print_hash_value);
    transparent_crc(p_1381->g_758.s3, "p_1381->g_758.s3", print_hash_value);
    transparent_crc(p_1381->g_758.s4, "p_1381->g_758.s4", print_hash_value);
    transparent_crc(p_1381->g_758.s5, "p_1381->g_758.s5", print_hash_value);
    transparent_crc(p_1381->g_758.s6, "p_1381->g_758.s6", print_hash_value);
    transparent_crc(p_1381->g_758.s7, "p_1381->g_758.s7", print_hash_value);
    transparent_crc(p_1381->g_758.s8, "p_1381->g_758.s8", print_hash_value);
    transparent_crc(p_1381->g_758.s9, "p_1381->g_758.s9", print_hash_value);
    transparent_crc(p_1381->g_758.sa, "p_1381->g_758.sa", print_hash_value);
    transparent_crc(p_1381->g_758.sb, "p_1381->g_758.sb", print_hash_value);
    transparent_crc(p_1381->g_758.sc, "p_1381->g_758.sc", print_hash_value);
    transparent_crc(p_1381->g_758.sd, "p_1381->g_758.sd", print_hash_value);
    transparent_crc(p_1381->g_758.se, "p_1381->g_758.se", print_hash_value);
    transparent_crc(p_1381->g_758.sf, "p_1381->g_758.sf", print_hash_value);
    transparent_crc(p_1381->g_770.s0, "p_1381->g_770.s0", print_hash_value);
    transparent_crc(p_1381->g_770.s1, "p_1381->g_770.s1", print_hash_value);
    transparent_crc(p_1381->g_770.s2, "p_1381->g_770.s2", print_hash_value);
    transparent_crc(p_1381->g_770.s3, "p_1381->g_770.s3", print_hash_value);
    transparent_crc(p_1381->g_770.s4, "p_1381->g_770.s4", print_hash_value);
    transparent_crc(p_1381->g_770.s5, "p_1381->g_770.s5", print_hash_value);
    transparent_crc(p_1381->g_770.s6, "p_1381->g_770.s6", print_hash_value);
    transparent_crc(p_1381->g_770.s7, "p_1381->g_770.s7", print_hash_value);
    transparent_crc(p_1381->g_770.s8, "p_1381->g_770.s8", print_hash_value);
    transparent_crc(p_1381->g_770.s9, "p_1381->g_770.s9", print_hash_value);
    transparent_crc(p_1381->g_770.sa, "p_1381->g_770.sa", print_hash_value);
    transparent_crc(p_1381->g_770.sb, "p_1381->g_770.sb", print_hash_value);
    transparent_crc(p_1381->g_770.sc, "p_1381->g_770.sc", print_hash_value);
    transparent_crc(p_1381->g_770.sd, "p_1381->g_770.sd", print_hash_value);
    transparent_crc(p_1381->g_770.se, "p_1381->g_770.se", print_hash_value);
    transparent_crc(p_1381->g_770.sf, "p_1381->g_770.sf", print_hash_value);
    transparent_crc(p_1381->g_773.x, "p_1381->g_773.x", print_hash_value);
    transparent_crc(p_1381->g_773.y, "p_1381->g_773.y", print_hash_value);
    transparent_crc(p_1381->g_774.x, "p_1381->g_774.x", print_hash_value);
    transparent_crc(p_1381->g_774.y, "p_1381->g_774.y", print_hash_value);
    transparent_crc(p_1381->g_792.f0, "p_1381->g_792.f0", print_hash_value);
    transparent_crc(p_1381->g_809.s0, "p_1381->g_809.s0", print_hash_value);
    transparent_crc(p_1381->g_809.s1, "p_1381->g_809.s1", print_hash_value);
    transparent_crc(p_1381->g_809.s2, "p_1381->g_809.s2", print_hash_value);
    transparent_crc(p_1381->g_809.s3, "p_1381->g_809.s3", print_hash_value);
    transparent_crc(p_1381->g_809.s4, "p_1381->g_809.s4", print_hash_value);
    transparent_crc(p_1381->g_809.s5, "p_1381->g_809.s5", print_hash_value);
    transparent_crc(p_1381->g_809.s6, "p_1381->g_809.s6", print_hash_value);
    transparent_crc(p_1381->g_809.s7, "p_1381->g_809.s7", print_hash_value);
    transparent_crc(p_1381->g_811.x, "p_1381->g_811.x", print_hash_value);
    transparent_crc(p_1381->g_811.y, "p_1381->g_811.y", print_hash_value);
    transparent_crc(p_1381->g_811.z, "p_1381->g_811.z", print_hash_value);
    transparent_crc(p_1381->g_811.w, "p_1381->g_811.w", print_hash_value);
    transparent_crc(p_1381->g_812.x, "p_1381->g_812.x", print_hash_value);
    transparent_crc(p_1381->g_812.y, "p_1381->g_812.y", print_hash_value);
    transparent_crc(p_1381->g_815.f0, "p_1381->g_815.f0", print_hash_value);
    transparent_crc(p_1381->g_816.f0, "p_1381->g_816.f0", print_hash_value);
    transparent_crc(p_1381->g_840.x, "p_1381->g_840.x", print_hash_value);
    transparent_crc(p_1381->g_840.y, "p_1381->g_840.y", print_hash_value);
    transparent_crc(p_1381->g_849.s0, "p_1381->g_849.s0", print_hash_value);
    transparent_crc(p_1381->g_849.s1, "p_1381->g_849.s1", print_hash_value);
    transparent_crc(p_1381->g_849.s2, "p_1381->g_849.s2", print_hash_value);
    transparent_crc(p_1381->g_849.s3, "p_1381->g_849.s3", print_hash_value);
    transparent_crc(p_1381->g_849.s4, "p_1381->g_849.s4", print_hash_value);
    transparent_crc(p_1381->g_849.s5, "p_1381->g_849.s5", print_hash_value);
    transparent_crc(p_1381->g_849.s6, "p_1381->g_849.s6", print_hash_value);
    transparent_crc(p_1381->g_849.s7, "p_1381->g_849.s7", print_hash_value);
    transparent_crc(p_1381->g_856.s0, "p_1381->g_856.s0", print_hash_value);
    transparent_crc(p_1381->g_856.s1, "p_1381->g_856.s1", print_hash_value);
    transparent_crc(p_1381->g_856.s2, "p_1381->g_856.s2", print_hash_value);
    transparent_crc(p_1381->g_856.s3, "p_1381->g_856.s3", print_hash_value);
    transparent_crc(p_1381->g_856.s4, "p_1381->g_856.s4", print_hash_value);
    transparent_crc(p_1381->g_856.s5, "p_1381->g_856.s5", print_hash_value);
    transparent_crc(p_1381->g_856.s6, "p_1381->g_856.s6", print_hash_value);
    transparent_crc(p_1381->g_856.s7, "p_1381->g_856.s7", print_hash_value);
    transparent_crc(p_1381->g_874.f0, "p_1381->g_874.f0", print_hash_value);
    transparent_crc(p_1381->g_875.x, "p_1381->g_875.x", print_hash_value);
    transparent_crc(p_1381->g_875.y, "p_1381->g_875.y", print_hash_value);
    transparent_crc(p_1381->g_875.z, "p_1381->g_875.z", print_hash_value);
    transparent_crc(p_1381->g_875.w, "p_1381->g_875.w", print_hash_value);
    transparent_crc(p_1381->g_890.x, "p_1381->g_890.x", print_hash_value);
    transparent_crc(p_1381->g_890.y, "p_1381->g_890.y", print_hash_value);
    transparent_crc(p_1381->g_915, "p_1381->g_915", print_hash_value);
    transparent_crc(p_1381->g_934.s0, "p_1381->g_934.s0", print_hash_value);
    transparent_crc(p_1381->g_934.s1, "p_1381->g_934.s1", print_hash_value);
    transparent_crc(p_1381->g_934.s2, "p_1381->g_934.s2", print_hash_value);
    transparent_crc(p_1381->g_934.s3, "p_1381->g_934.s3", print_hash_value);
    transparent_crc(p_1381->g_934.s4, "p_1381->g_934.s4", print_hash_value);
    transparent_crc(p_1381->g_934.s5, "p_1381->g_934.s5", print_hash_value);
    transparent_crc(p_1381->g_934.s6, "p_1381->g_934.s6", print_hash_value);
    transparent_crc(p_1381->g_934.s7, "p_1381->g_934.s7", print_hash_value);
    transparent_crc(p_1381->g_934.s8, "p_1381->g_934.s8", print_hash_value);
    transparent_crc(p_1381->g_934.s9, "p_1381->g_934.s9", print_hash_value);
    transparent_crc(p_1381->g_934.sa, "p_1381->g_934.sa", print_hash_value);
    transparent_crc(p_1381->g_934.sb, "p_1381->g_934.sb", print_hash_value);
    transparent_crc(p_1381->g_934.sc, "p_1381->g_934.sc", print_hash_value);
    transparent_crc(p_1381->g_934.sd, "p_1381->g_934.sd", print_hash_value);
    transparent_crc(p_1381->g_934.se, "p_1381->g_934.se", print_hash_value);
    transparent_crc(p_1381->g_934.sf, "p_1381->g_934.sf", print_hash_value);
    transparent_crc(p_1381->g_935.s0, "p_1381->g_935.s0", print_hash_value);
    transparent_crc(p_1381->g_935.s1, "p_1381->g_935.s1", print_hash_value);
    transparent_crc(p_1381->g_935.s2, "p_1381->g_935.s2", print_hash_value);
    transparent_crc(p_1381->g_935.s3, "p_1381->g_935.s3", print_hash_value);
    transparent_crc(p_1381->g_935.s4, "p_1381->g_935.s4", print_hash_value);
    transparent_crc(p_1381->g_935.s5, "p_1381->g_935.s5", print_hash_value);
    transparent_crc(p_1381->g_935.s6, "p_1381->g_935.s6", print_hash_value);
    transparent_crc(p_1381->g_935.s7, "p_1381->g_935.s7", print_hash_value);
    transparent_crc(p_1381->g_936.x, "p_1381->g_936.x", print_hash_value);
    transparent_crc(p_1381->g_936.y, "p_1381->g_936.y", print_hash_value);
    transparent_crc(p_1381->g_936.z, "p_1381->g_936.z", print_hash_value);
    transparent_crc(p_1381->g_936.w, "p_1381->g_936.w", print_hash_value);
    transparent_crc(p_1381->g_944.s0, "p_1381->g_944.s0", print_hash_value);
    transparent_crc(p_1381->g_944.s1, "p_1381->g_944.s1", print_hash_value);
    transparent_crc(p_1381->g_944.s2, "p_1381->g_944.s2", print_hash_value);
    transparent_crc(p_1381->g_944.s3, "p_1381->g_944.s3", print_hash_value);
    transparent_crc(p_1381->g_944.s4, "p_1381->g_944.s4", print_hash_value);
    transparent_crc(p_1381->g_944.s5, "p_1381->g_944.s5", print_hash_value);
    transparent_crc(p_1381->g_944.s6, "p_1381->g_944.s6", print_hash_value);
    transparent_crc(p_1381->g_944.s7, "p_1381->g_944.s7", print_hash_value);
    transparent_crc(p_1381->g_972.s0, "p_1381->g_972.s0", print_hash_value);
    transparent_crc(p_1381->g_972.s1, "p_1381->g_972.s1", print_hash_value);
    transparent_crc(p_1381->g_972.s2, "p_1381->g_972.s2", print_hash_value);
    transparent_crc(p_1381->g_972.s3, "p_1381->g_972.s3", print_hash_value);
    transparent_crc(p_1381->g_972.s4, "p_1381->g_972.s4", print_hash_value);
    transparent_crc(p_1381->g_972.s5, "p_1381->g_972.s5", print_hash_value);
    transparent_crc(p_1381->g_972.s6, "p_1381->g_972.s6", print_hash_value);
    transparent_crc(p_1381->g_972.s7, "p_1381->g_972.s7", print_hash_value);
    transparent_crc(p_1381->g_972.s8, "p_1381->g_972.s8", print_hash_value);
    transparent_crc(p_1381->g_972.s9, "p_1381->g_972.s9", print_hash_value);
    transparent_crc(p_1381->g_972.sa, "p_1381->g_972.sa", print_hash_value);
    transparent_crc(p_1381->g_972.sb, "p_1381->g_972.sb", print_hash_value);
    transparent_crc(p_1381->g_972.sc, "p_1381->g_972.sc", print_hash_value);
    transparent_crc(p_1381->g_972.sd, "p_1381->g_972.sd", print_hash_value);
    transparent_crc(p_1381->g_972.se, "p_1381->g_972.se", print_hash_value);
    transparent_crc(p_1381->g_972.sf, "p_1381->g_972.sf", print_hash_value);
    transparent_crc(p_1381->g_973.s0, "p_1381->g_973.s0", print_hash_value);
    transparent_crc(p_1381->g_973.s1, "p_1381->g_973.s1", print_hash_value);
    transparent_crc(p_1381->g_973.s2, "p_1381->g_973.s2", print_hash_value);
    transparent_crc(p_1381->g_973.s3, "p_1381->g_973.s3", print_hash_value);
    transparent_crc(p_1381->g_973.s4, "p_1381->g_973.s4", print_hash_value);
    transparent_crc(p_1381->g_973.s5, "p_1381->g_973.s5", print_hash_value);
    transparent_crc(p_1381->g_973.s6, "p_1381->g_973.s6", print_hash_value);
    transparent_crc(p_1381->g_973.s7, "p_1381->g_973.s7", print_hash_value);
    transparent_crc(p_1381->g_974.x, "p_1381->g_974.x", print_hash_value);
    transparent_crc(p_1381->g_974.y, "p_1381->g_974.y", print_hash_value);
    transparent_crc(p_1381->g_978.x, "p_1381->g_978.x", print_hash_value);
    transparent_crc(p_1381->g_978.y, "p_1381->g_978.y", print_hash_value);
    transparent_crc(p_1381->g_985.s0, "p_1381->g_985.s0", print_hash_value);
    transparent_crc(p_1381->g_985.s1, "p_1381->g_985.s1", print_hash_value);
    transparent_crc(p_1381->g_985.s2, "p_1381->g_985.s2", print_hash_value);
    transparent_crc(p_1381->g_985.s3, "p_1381->g_985.s3", print_hash_value);
    transparent_crc(p_1381->g_985.s4, "p_1381->g_985.s4", print_hash_value);
    transparent_crc(p_1381->g_985.s5, "p_1381->g_985.s5", print_hash_value);
    transparent_crc(p_1381->g_985.s6, "p_1381->g_985.s6", print_hash_value);
    transparent_crc(p_1381->g_985.s7, "p_1381->g_985.s7", print_hash_value);
    transparent_crc(p_1381->g_1003.s0, "p_1381->g_1003.s0", print_hash_value);
    transparent_crc(p_1381->g_1003.s1, "p_1381->g_1003.s1", print_hash_value);
    transparent_crc(p_1381->g_1003.s2, "p_1381->g_1003.s2", print_hash_value);
    transparent_crc(p_1381->g_1003.s3, "p_1381->g_1003.s3", print_hash_value);
    transparent_crc(p_1381->g_1003.s4, "p_1381->g_1003.s4", print_hash_value);
    transparent_crc(p_1381->g_1003.s5, "p_1381->g_1003.s5", print_hash_value);
    transparent_crc(p_1381->g_1003.s6, "p_1381->g_1003.s6", print_hash_value);
    transparent_crc(p_1381->g_1003.s7, "p_1381->g_1003.s7", print_hash_value);
    transparent_crc(p_1381->g_1008.s0, "p_1381->g_1008.s0", print_hash_value);
    transparent_crc(p_1381->g_1008.s1, "p_1381->g_1008.s1", print_hash_value);
    transparent_crc(p_1381->g_1008.s2, "p_1381->g_1008.s2", print_hash_value);
    transparent_crc(p_1381->g_1008.s3, "p_1381->g_1008.s3", print_hash_value);
    transparent_crc(p_1381->g_1008.s4, "p_1381->g_1008.s4", print_hash_value);
    transparent_crc(p_1381->g_1008.s5, "p_1381->g_1008.s5", print_hash_value);
    transparent_crc(p_1381->g_1008.s6, "p_1381->g_1008.s6", print_hash_value);
    transparent_crc(p_1381->g_1008.s7, "p_1381->g_1008.s7", print_hash_value);
    transparent_crc(p_1381->g_1011.s0, "p_1381->g_1011.s0", print_hash_value);
    transparent_crc(p_1381->g_1011.s1, "p_1381->g_1011.s1", print_hash_value);
    transparent_crc(p_1381->g_1011.s2, "p_1381->g_1011.s2", print_hash_value);
    transparent_crc(p_1381->g_1011.s3, "p_1381->g_1011.s3", print_hash_value);
    transparent_crc(p_1381->g_1011.s4, "p_1381->g_1011.s4", print_hash_value);
    transparent_crc(p_1381->g_1011.s5, "p_1381->g_1011.s5", print_hash_value);
    transparent_crc(p_1381->g_1011.s6, "p_1381->g_1011.s6", print_hash_value);
    transparent_crc(p_1381->g_1011.s7, "p_1381->g_1011.s7", print_hash_value);
    transparent_crc(p_1381->g_1020.s0, "p_1381->g_1020.s0", print_hash_value);
    transparent_crc(p_1381->g_1020.s1, "p_1381->g_1020.s1", print_hash_value);
    transparent_crc(p_1381->g_1020.s2, "p_1381->g_1020.s2", print_hash_value);
    transparent_crc(p_1381->g_1020.s3, "p_1381->g_1020.s3", print_hash_value);
    transparent_crc(p_1381->g_1020.s4, "p_1381->g_1020.s4", print_hash_value);
    transparent_crc(p_1381->g_1020.s5, "p_1381->g_1020.s5", print_hash_value);
    transparent_crc(p_1381->g_1020.s6, "p_1381->g_1020.s6", print_hash_value);
    transparent_crc(p_1381->g_1020.s7, "p_1381->g_1020.s7", print_hash_value);
    transparent_crc(p_1381->g_1020.s8, "p_1381->g_1020.s8", print_hash_value);
    transparent_crc(p_1381->g_1020.s9, "p_1381->g_1020.s9", print_hash_value);
    transparent_crc(p_1381->g_1020.sa, "p_1381->g_1020.sa", print_hash_value);
    transparent_crc(p_1381->g_1020.sb, "p_1381->g_1020.sb", print_hash_value);
    transparent_crc(p_1381->g_1020.sc, "p_1381->g_1020.sc", print_hash_value);
    transparent_crc(p_1381->g_1020.sd, "p_1381->g_1020.sd", print_hash_value);
    transparent_crc(p_1381->g_1020.se, "p_1381->g_1020.se", print_hash_value);
    transparent_crc(p_1381->g_1020.sf, "p_1381->g_1020.sf", print_hash_value);
    transparent_crc(p_1381->g_1043, "p_1381->g_1043", print_hash_value);
    transparent_crc(p_1381->g_1050.f0, "p_1381->g_1050.f0", print_hash_value);
    transparent_crc(p_1381->g_1055.f0, "p_1381->g_1055.f0", print_hash_value);
    transparent_crc(p_1381->g_1060.x, "p_1381->g_1060.x", print_hash_value);
    transparent_crc(p_1381->g_1060.y, "p_1381->g_1060.y", print_hash_value);
    transparent_crc(p_1381->g_1063.s0, "p_1381->g_1063.s0", print_hash_value);
    transparent_crc(p_1381->g_1063.s1, "p_1381->g_1063.s1", print_hash_value);
    transparent_crc(p_1381->g_1063.s2, "p_1381->g_1063.s2", print_hash_value);
    transparent_crc(p_1381->g_1063.s3, "p_1381->g_1063.s3", print_hash_value);
    transparent_crc(p_1381->g_1063.s4, "p_1381->g_1063.s4", print_hash_value);
    transparent_crc(p_1381->g_1063.s5, "p_1381->g_1063.s5", print_hash_value);
    transparent_crc(p_1381->g_1063.s6, "p_1381->g_1063.s6", print_hash_value);
    transparent_crc(p_1381->g_1063.s7, "p_1381->g_1063.s7", print_hash_value);
    transparent_crc(p_1381->g_1063.s8, "p_1381->g_1063.s8", print_hash_value);
    transparent_crc(p_1381->g_1063.s9, "p_1381->g_1063.s9", print_hash_value);
    transparent_crc(p_1381->g_1063.sa, "p_1381->g_1063.sa", print_hash_value);
    transparent_crc(p_1381->g_1063.sb, "p_1381->g_1063.sb", print_hash_value);
    transparent_crc(p_1381->g_1063.sc, "p_1381->g_1063.sc", print_hash_value);
    transparent_crc(p_1381->g_1063.sd, "p_1381->g_1063.sd", print_hash_value);
    transparent_crc(p_1381->g_1063.se, "p_1381->g_1063.se", print_hash_value);
    transparent_crc(p_1381->g_1063.sf, "p_1381->g_1063.sf", print_hash_value);
    transparent_crc(p_1381->g_1068, "p_1381->g_1068", print_hash_value);
    transparent_crc(p_1381->g_1073.s0, "p_1381->g_1073.s0", print_hash_value);
    transparent_crc(p_1381->g_1073.s1, "p_1381->g_1073.s1", print_hash_value);
    transparent_crc(p_1381->g_1073.s2, "p_1381->g_1073.s2", print_hash_value);
    transparent_crc(p_1381->g_1073.s3, "p_1381->g_1073.s3", print_hash_value);
    transparent_crc(p_1381->g_1073.s4, "p_1381->g_1073.s4", print_hash_value);
    transparent_crc(p_1381->g_1073.s5, "p_1381->g_1073.s5", print_hash_value);
    transparent_crc(p_1381->g_1073.s6, "p_1381->g_1073.s6", print_hash_value);
    transparent_crc(p_1381->g_1073.s7, "p_1381->g_1073.s7", print_hash_value);
    transparent_crc(p_1381->g_1122, "p_1381->g_1122", print_hash_value);
    transparent_crc(p_1381->g_1155.s0, "p_1381->g_1155.s0", print_hash_value);
    transparent_crc(p_1381->g_1155.s1, "p_1381->g_1155.s1", print_hash_value);
    transparent_crc(p_1381->g_1155.s2, "p_1381->g_1155.s2", print_hash_value);
    transparent_crc(p_1381->g_1155.s3, "p_1381->g_1155.s3", print_hash_value);
    transparent_crc(p_1381->g_1155.s4, "p_1381->g_1155.s4", print_hash_value);
    transparent_crc(p_1381->g_1155.s5, "p_1381->g_1155.s5", print_hash_value);
    transparent_crc(p_1381->g_1155.s6, "p_1381->g_1155.s6", print_hash_value);
    transparent_crc(p_1381->g_1155.s7, "p_1381->g_1155.s7", print_hash_value);
    transparent_crc(p_1381->g_1155.s8, "p_1381->g_1155.s8", print_hash_value);
    transparent_crc(p_1381->g_1155.s9, "p_1381->g_1155.s9", print_hash_value);
    transparent_crc(p_1381->g_1155.sa, "p_1381->g_1155.sa", print_hash_value);
    transparent_crc(p_1381->g_1155.sb, "p_1381->g_1155.sb", print_hash_value);
    transparent_crc(p_1381->g_1155.sc, "p_1381->g_1155.sc", print_hash_value);
    transparent_crc(p_1381->g_1155.sd, "p_1381->g_1155.sd", print_hash_value);
    transparent_crc(p_1381->g_1155.se, "p_1381->g_1155.se", print_hash_value);
    transparent_crc(p_1381->g_1155.sf, "p_1381->g_1155.sf", print_hash_value);
    transparent_crc(p_1381->g_1159.x, "p_1381->g_1159.x", print_hash_value);
    transparent_crc(p_1381->g_1159.y, "p_1381->g_1159.y", print_hash_value);
    transparent_crc(p_1381->g_1166.s0, "p_1381->g_1166.s0", print_hash_value);
    transparent_crc(p_1381->g_1166.s1, "p_1381->g_1166.s1", print_hash_value);
    transparent_crc(p_1381->g_1166.s2, "p_1381->g_1166.s2", print_hash_value);
    transparent_crc(p_1381->g_1166.s3, "p_1381->g_1166.s3", print_hash_value);
    transparent_crc(p_1381->g_1166.s4, "p_1381->g_1166.s4", print_hash_value);
    transparent_crc(p_1381->g_1166.s5, "p_1381->g_1166.s5", print_hash_value);
    transparent_crc(p_1381->g_1166.s6, "p_1381->g_1166.s6", print_hash_value);
    transparent_crc(p_1381->g_1166.s7, "p_1381->g_1166.s7", print_hash_value);
    transparent_crc(p_1381->g_1168.x, "p_1381->g_1168.x", print_hash_value);
    transparent_crc(p_1381->g_1168.y, "p_1381->g_1168.y", print_hash_value);
    transparent_crc(p_1381->g_1168.z, "p_1381->g_1168.z", print_hash_value);
    transparent_crc(p_1381->g_1168.w, "p_1381->g_1168.w", print_hash_value);
    transparent_crc(p_1381->g_1192.s0, "p_1381->g_1192.s0", print_hash_value);
    transparent_crc(p_1381->g_1192.s1, "p_1381->g_1192.s1", print_hash_value);
    transparent_crc(p_1381->g_1192.s2, "p_1381->g_1192.s2", print_hash_value);
    transparent_crc(p_1381->g_1192.s3, "p_1381->g_1192.s3", print_hash_value);
    transparent_crc(p_1381->g_1192.s4, "p_1381->g_1192.s4", print_hash_value);
    transparent_crc(p_1381->g_1192.s5, "p_1381->g_1192.s5", print_hash_value);
    transparent_crc(p_1381->g_1192.s6, "p_1381->g_1192.s6", print_hash_value);
    transparent_crc(p_1381->g_1192.s7, "p_1381->g_1192.s7", print_hash_value);
    transparent_crc(p_1381->g_1200.x, "p_1381->g_1200.x", print_hash_value);
    transparent_crc(p_1381->g_1200.y, "p_1381->g_1200.y", print_hash_value);
    transparent_crc(p_1381->g_1247.s0, "p_1381->g_1247.s0", print_hash_value);
    transparent_crc(p_1381->g_1247.s1, "p_1381->g_1247.s1", print_hash_value);
    transparent_crc(p_1381->g_1247.s2, "p_1381->g_1247.s2", print_hash_value);
    transparent_crc(p_1381->g_1247.s3, "p_1381->g_1247.s3", print_hash_value);
    transparent_crc(p_1381->g_1247.s4, "p_1381->g_1247.s4", print_hash_value);
    transparent_crc(p_1381->g_1247.s5, "p_1381->g_1247.s5", print_hash_value);
    transparent_crc(p_1381->g_1247.s6, "p_1381->g_1247.s6", print_hash_value);
    transparent_crc(p_1381->g_1247.s7, "p_1381->g_1247.s7", print_hash_value);
    transparent_crc(p_1381->g_1273.s0, "p_1381->g_1273.s0", print_hash_value);
    transparent_crc(p_1381->g_1273.s1, "p_1381->g_1273.s1", print_hash_value);
    transparent_crc(p_1381->g_1273.s2, "p_1381->g_1273.s2", print_hash_value);
    transparent_crc(p_1381->g_1273.s3, "p_1381->g_1273.s3", print_hash_value);
    transparent_crc(p_1381->g_1273.s4, "p_1381->g_1273.s4", print_hash_value);
    transparent_crc(p_1381->g_1273.s5, "p_1381->g_1273.s5", print_hash_value);
    transparent_crc(p_1381->g_1273.s6, "p_1381->g_1273.s6", print_hash_value);
    transparent_crc(p_1381->g_1273.s7, "p_1381->g_1273.s7", print_hash_value);
    transparent_crc(p_1381->g_1294, "p_1381->g_1294", print_hash_value);
    transparent_crc(p_1381->g_1309.x, "p_1381->g_1309.x", print_hash_value);
    transparent_crc(p_1381->g_1309.y, "p_1381->g_1309.y", print_hash_value);
    transparent_crc(p_1381->g_1309.z, "p_1381->g_1309.z", print_hash_value);
    transparent_crc(p_1381->g_1309.w, "p_1381->g_1309.w", print_hash_value);
    transparent_crc(p_1381->g_1347.x, "p_1381->g_1347.x", print_hash_value);
    transparent_crc(p_1381->g_1347.y, "p_1381->g_1347.y", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
