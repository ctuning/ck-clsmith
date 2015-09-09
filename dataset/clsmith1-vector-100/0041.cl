// ---fake_divergence -g 93,70,1 -l 1,35,1
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


// Seed: 41

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   uint16_t  f0;
   volatile uint32_t  f1;
   int64_t  f2;
};

union U1 {
   uint32_t  f0;
   volatile uint16_t  f1;
   volatile int8_t * f2;
   volatile struct S0  f3;
};

struct S2 {
    int32_t g_2;
    volatile int32_t g_5;
    int32_t g_6[5];
    int32_t *g_14;
    int32_t ** volatile g_13;
    struct S0 g_15;
    int32_t g_20;
    int32_t * volatile g_19;
    struct S0 g_21[5][3];
    int8_t *g_32;
    VECTOR(uint8_t, 4) g_55;
    VECTOR(uint8_t, 8) g_56;
    int8_t g_65[6][3];
    int16_t g_70;
    uint16_t g_80;
    int32_t g_84[4][7];
    uint8_t g_114;
    int16_t g_121;
    int64_t g_122;
    uint8_t g_124;
    int32_t *g_143;
    int32_t **g_142[8][9];
    int32_t **g_144;
    uint32_t g_146;
    VECTOR(int32_t, 8) g_194;
    VECTOR(uint32_t, 4) g_201;
    VECTOR(uint16_t, 8) g_218;
    VECTOR(int32_t, 4) g_225;
    uint32_t g_227[2];
    VECTOR(uint32_t, 4) g_230;
    VECTOR(uint32_t, 4) g_231;
    VECTOR(int32_t, 4) g_232;
    VECTOR(uint32_t, 16) g_235;
    uint64_t g_239;
    VECTOR(uint32_t, 8) g_244;
    VECTOR(int64_t, 2) g_252;
    VECTOR(uint32_t, 2) g_257;
    struct S0 g_273;
    int32_t g_314;
    VECTOR(int32_t, 8) g_326;
    VECTOR(int32_t, 8) g_327;
    int64_t *g_379;
    int64_t * volatile *g_378;
    int64_t * volatile * volatile *g_377;
    VECTOR(int8_t, 4) g_385;
    VECTOR(uint8_t, 4) g_395;
    int32_t *g_404;
    VECTOR(int16_t, 16) g_414;
    struct S0 g_428[7][9];
    struct S0 g_431;
    struct S0 *g_430;
    union U1 g_474;
    union U1 g_477[4][5][9];
    VECTOR(int16_t, 16) g_501;
    VECTOR(int16_t, 8) g_543;
    VECTOR(int8_t, 16) g_581;
    uint64_t g_585;
    VECTOR(int8_t, 2) g_604;
    VECTOR(int8_t, 4) g_605;
    VECTOR(int8_t, 4) g_607;
    VECTOR(int8_t, 2) g_608;
    VECTOR(int64_t, 16) g_625;
    int32_t **g_639[10];
    volatile union U1 g_665[4][8];
    volatile union U1 *g_664;
    union U1 g_684[6][6][7];
    volatile union U1 g_717;
    struct S0 g_778;
    volatile VECTOR(int64_t, 4) g_781;
    int64_t **g_809;
    volatile VECTOR(uint8_t, 8) g_820;
    volatile VECTOR(uint32_t, 2) g_830;
    int32_t ** volatile g_874;
    volatile VECTOR(int16_t, 4) g_910;
    volatile VECTOR(int16_t, 8) g_915;
    int32_t ** volatile g_933;
    int32_t ** volatile g_935;
    volatile struct S0 g_939;
    VECTOR(int64_t, 8) g_946;
    VECTOR(int64_t, 4) g_948;
    VECTOR(uint64_t, 2) g_949;
    int32_t * volatile g_954;
    VECTOR(uint16_t, 4) g_966;
    union U1 g_969;
    VECTOR(int8_t, 4) g_987;
    volatile VECTOR(int8_t, 2) g_989;
    volatile union U1 g_999;
    VECTOR(uint16_t, 2) g_1004;
    struct S0 ** volatile g_1008;
    volatile int8_t g_1079;
    VECTOR(int8_t, 8) g_1094;
    uint64_t *g_1105;
    uint64_t **g_1104;
    int16_t *g_1110;
    int16_t * volatile *g_1109;
    uint64_t g_1112;
    int32_t * volatile g_1122[8];
    int32_t * volatile g_1123[7][5];
    VECTOR(uint32_t, 8) g_1186;
    VECTOR(uint64_t, 8) g_1189;
    volatile VECTOR(uint64_t, 16) g_1192;
    volatile VECTOR(int32_t, 16) g_1197;
    uint16_t g_1200;
    int32_t g_1201;
    uint32_t *g_1218;
    volatile uint16_t * volatile g_1241;
    volatile uint16_t * volatile *g_1240;
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
uint32_t  func_1(struct S2 * p_1265);
struct S0  func_11(uint32_t  p_12, struct S2 * p_1265);
int32_t  func_24(int32_t ** p_25, int32_t  p_26, struct S2 * p_1265);
int32_t  func_28(int8_t * p_29, struct S2 * p_1265);
int8_t * func_30(int8_t * p_31, struct S2 * p_1265);
int32_t ** func_35(int16_t  p_36, int8_t  p_37, int32_t ** p_38, int64_t  p_39, struct S2 * p_1265);
int32_t ** func_41(uint32_t  p_42, int32_t ** p_43, uint32_t  p_44, int16_t  p_45, int8_t * p_46, struct S2 * p_1265);
uint32_t  func_47(int32_t  p_48, int32_t * p_49, int32_t * p_50, uint64_t  p_51, struct S2 * p_1265);
int32_t  func_52(int32_t ** p_53, int32_t * p_54, struct S2 * p_1265);
int16_t  func_60(int8_t * p_61, uint32_t  p_62, uint32_t  p_63, struct S2 * p_1265);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1265->g_2 p_1265->g_273.f2 p_1265->g_430 p_1265->g_431 p_1265->g_13 p_1265->g_14 p_1265->g_1008 p_1265->g_935 p_1265->g_414
 * writes: p_1265->g_2 p_1265->g_6 p_1265->g_14 p_1265->g_273.f2 p_1265->g_431
 */
uint32_t  func_1(struct S2 * p_1265)
{ /* block id: 4 */
    uint8_t l_1085 = 0x49L;
    int32_t *l_1086 = (void*)0;
    uint64_t *l_1103 = (void*)0;
    uint64_t **l_1102 = &l_1103;
    int32_t l_1121 = 0x25AFA670L;
    int32_t l_1157 = 0x18CB2535L;
    uint32_t l_1159 = 0x5D54208EL;
    VECTOR(uint64_t, 16) l_1191 = (VECTOR(uint64_t, 16))(0xBC15E23D655144D8L, (VECTOR(uint64_t, 4))(0xBC15E23D655144D8L, (VECTOR(uint64_t, 2))(0xBC15E23D655144D8L, 0UL), 0UL), 0UL, 0xBC15E23D655144D8L, 0UL, (VECTOR(uint64_t, 2))(0xBC15E23D655144D8L, 0UL), (VECTOR(uint64_t, 2))(0xBC15E23D655144D8L, 0UL), 0xBC15E23D655144D8L, 0UL, 0xBC15E23D655144D8L, 0UL);
    uint32_t *l_1226[7][7] = {{&p_1265->g_474.f0,&p_1265->g_969.f0,&p_1265->g_969.f0,&p_1265->g_474.f0,(void*)0,&p_1265->g_969.f0,&p_1265->g_227[1]},{&p_1265->g_474.f0,&p_1265->g_969.f0,&p_1265->g_969.f0,&p_1265->g_474.f0,(void*)0,&p_1265->g_969.f0,&p_1265->g_227[1]},{&p_1265->g_474.f0,&p_1265->g_969.f0,&p_1265->g_969.f0,&p_1265->g_474.f0,(void*)0,&p_1265->g_969.f0,&p_1265->g_227[1]},{&p_1265->g_474.f0,&p_1265->g_969.f0,&p_1265->g_969.f0,&p_1265->g_474.f0,(void*)0,&p_1265->g_969.f0,&p_1265->g_227[1]},{&p_1265->g_474.f0,&p_1265->g_969.f0,&p_1265->g_969.f0,&p_1265->g_474.f0,(void*)0,&p_1265->g_969.f0,&p_1265->g_227[1]},{&p_1265->g_474.f0,&p_1265->g_969.f0,&p_1265->g_969.f0,&p_1265->g_474.f0,(void*)0,&p_1265->g_969.f0,&p_1265->g_227[1]},{&p_1265->g_474.f0,&p_1265->g_969.f0,&p_1265->g_969.f0,&p_1265->g_474.f0,(void*)0,&p_1265->g_969.f0,&p_1265->g_227[1]}};
    uint32_t **l_1225 = &l_1226[1][4];
    int32_t l_1257 = 0x617906A8L;
    int16_t l_1258 = 0x42A5L;
    int32_t l_1259 = 0x0F1DB147L;
    int i, j;
    for (p_1265->g_2 = 0; (p_1265->g_2 < (-23)); p_1265->g_2--)
    { /* block id: 7 */
        int32_t **l_27 = &p_1265->g_14;
        VECTOR(uint64_t, 16) l_1190 = (VECTOR(uint64_t, 16))(0x1FBC5307ADC391DFL, (VECTOR(uint64_t, 4))(0x1FBC5307ADC391DFL, (VECTOR(uint64_t, 2))(0x1FBC5307ADC391DFL, 0UL), 0UL), 0UL, 0x1FBC5307ADC391DFL, 0UL, (VECTOR(uint64_t, 2))(0x1FBC5307ADC391DFL, 0UL), (VECTOR(uint64_t, 2))(0x1FBC5307ADC391DFL, 0UL), 0x1FBC5307ADC391DFL, 0UL, 0x1FBC5307ADC391DFL, 0UL);
        uint8_t l_1229 = 0xDBL;
        union U1 *l_1242 = (void*)0;
        int i;
        for (p_1265->g_6[2] = 0; (p_1265->g_6[2] < 7); p_1265->g_6[2]++)
        { /* block id: 10 */
            int32_t l_1084 = 1L;
            VECTOR(int8_t, 8) l_1095 = (VECTOR(int8_t, 8))(0x41L, (VECTOR(int8_t, 4))(0x41L, (VECTOR(int8_t, 2))(0x41L, 0L), 0L), 0L, 0x41L, 0L);
            int32_t *l_1124 = &l_1084;
            VECTOR(int32_t, 16) l_1212 = (VECTOR(int32_t, 16))(0x168A821AL, (VECTOR(int32_t, 4))(0x168A821AL, (VECTOR(int32_t, 2))(0x168A821AL, 0x03D7DC6BL), 0x03D7DC6BL), 0x03D7DC6BL, 0x168A821AL, 0x03D7DC6BL, (VECTOR(int32_t, 2))(0x168A821AL, 0x03D7DC6BL), (VECTOR(int32_t, 2))(0x168A821AL, 0x03D7DC6BL), 0x168A821AL, 0x03D7DC6BL, 0x168A821AL, 0x03D7DC6BL);
            int64_t *l_1238 = &p_1265->g_431.f2;
            int64_t *l_1239[3][8] = {{(void*)0,&p_1265->g_273.f2,&p_1265->g_428[2][0].f2,&p_1265->g_273.f2,(void*)0,(void*)0,&p_1265->g_273.f2,&p_1265->g_428[2][0].f2},{(void*)0,&p_1265->g_273.f2,&p_1265->g_428[2][0].f2,&p_1265->g_273.f2,(void*)0,(void*)0,&p_1265->g_273.f2,&p_1265->g_428[2][0].f2},{(void*)0,&p_1265->g_273.f2,&p_1265->g_428[2][0].f2,&p_1265->g_273.f2,(void*)0,(void*)0,&p_1265->g_273.f2,&p_1265->g_428[2][0].f2}};
            int i, j;
            (1 + 1);
        }
        (*l_27) = &l_1121;
    }
    if (((VECTOR(int32_t, 2))(1L, 0L)).hi)
    { /* block id: 534 */
        VECTOR(int32_t, 2) l_1247 = (VECTOR(int32_t, 2))(0x112A0E6BL, 0x1C0F7DEEL);
        uint16_t l_1261[4] = {0x8E90L,0x8E90L,0x8E90L,0x8E90L};
        int i;
        if (((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(l_1247.xxxyxyyx)))).s2)
        { /* block id: 535 */
            for (p_1265->g_273.f2 = 29; (p_1265->g_273.f2 <= (-12)); p_1265->g_273.f2 = safe_sub_func_uint16_t_u_u(p_1265->g_273.f2, 5))
            { /* block id: 538 */
                int32_t **l_1250 = (void*)0;
                int32_t **l_1251[5];
                int i;
                for (i = 0; i < 5; i++)
                    l_1251[i] = &p_1265->g_14;
                (*p_1265->g_430) = (*p_1265->g_430);
                l_1086 = (*p_1265->g_13);
                (*p_1265->g_430) = (**p_1265->g_1008);
            }
        }
        else
        { /* block id: 543 */
            int32_t *l_1252 = (void*)0;
            int32_t *l_1253 = (void*)0;
            int32_t *l_1254[9][9][3] = {{{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]},{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]},{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]},{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]},{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]},{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]},{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]},{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]},{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]}},{{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]},{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]},{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]},{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]},{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]},{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]},{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]},{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]},{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]}},{{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]},{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]},{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]},{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]},{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]},{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]},{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]},{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]},{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]}},{{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]},{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]},{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]},{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]},{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]},{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]},{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]},{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]},{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]}},{{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]},{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]},{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]},{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]},{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]},{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]},{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]},{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]},{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]}},{{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]},{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]},{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]},{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]},{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]},{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]},{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]},{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]},{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]}},{{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]},{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]},{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]},{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]},{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]},{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]},{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]},{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]},{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]}},{{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]},{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]},{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]},{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]},{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]},{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]},{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]},{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]},{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]}},{{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]},{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]},{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]},{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]},{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]},{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]},{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]},{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]},{&p_1265->g_6[1],(void*)0,&p_1265->g_6[0]}}};
            int16_t l_1255[3];
            int64_t l_1256 = 0x73FB2E10CF1CF0F9L;
            int64_t l_1260 = 0x4480C2837E3C3BAFL;
            int i, j, k;
            for (i = 0; i < 3; i++)
                l_1255[i] = 0x5EDBL;
            ++l_1261[3];
            l_1157 &= (**p_1265->g_935);
        }
        (*p_1265->g_14) |= (-5L);
    }
    else
    { /* block id: 548 */
        uint32_t l_1264[8][1][6] = {{{0x66C40669L,0x553D9B63L,0x66C40669L,0x66C40669L,0x553D9B63L,0x66C40669L}},{{0x66C40669L,0x553D9B63L,0x66C40669L,0x66C40669L,0x553D9B63L,0x66C40669L}},{{0x66C40669L,0x553D9B63L,0x66C40669L,0x66C40669L,0x553D9B63L,0x66C40669L}},{{0x66C40669L,0x553D9B63L,0x66C40669L,0x66C40669L,0x553D9B63L,0x66C40669L}},{{0x66C40669L,0x553D9B63L,0x66C40669L,0x66C40669L,0x553D9B63L,0x66C40669L}},{{0x66C40669L,0x553D9B63L,0x66C40669L,0x66C40669L,0x553D9B63L,0x66C40669L}},{{0x66C40669L,0x553D9B63L,0x66C40669L,0x66C40669L,0x553D9B63L,0x66C40669L}},{{0x66C40669L,0x553D9B63L,0x66C40669L,0x66C40669L,0x553D9B63L,0x66C40669L}}};
        int i, j, k;
        return l_1264[2][0][0];
    }
    return p_1265->g_414.s3;
}


/* ------------------------------------------ */
/* 
 * reads : p_1265->g_13 p_1265->g_15 p_1265->g_19 p_1265->g_21
 * writes: p_1265->g_14 p_1265->g_20
 */
struct S0  func_11(uint32_t  p_12, struct S2 * p_1265)
{ /* block id: 11 */
    uint32_t l_18 = 0xDB84C6A3L;
    if (p_12)
    { /* block id: 12 */
        (*p_1265->g_13) = &p_1265->g_6[2];
    }
    else
    { /* block id: 14 */
        return p_1265->g_15;
    }
    (*p_1265->g_19) = (safe_rshift_func_int16_t_s_s(p_12, l_18));
    return p_1265->g_21[3][1];
}


/* ------------------------------------------ */
/* 
 * reads : p_1265->g_80 p_1265->g_939 p_1265->g_65 p_1265->g_20 p_1265->g_999 p_1265->g_428.f0 p_1265->g_605 p_1265->g_84 p_1265->g_121 p_1265->g_1008 p_1265->g_430 p_1265->g_273 p_1265->g_194 p_1265->g_19 p_1265->g_1004 p_1265->g_201 p_1265->g_385 p_1265->g_218 p_1265->g_327 p_1265->g_257 p_1265->g_14
 * writes: p_1265->g_80 p_1265->g_14 p_1265->g_121 p_1265->g_20 p_1265->g_778.f2 p_1265->g_585 p_1265->g_430 p_1265->g_273 p_1265->g_949 p_1265->g_146
 */
int32_t  func_24(int32_t ** p_25, int32_t  p_26, struct S2 * p_1265)
{ /* block id: 399 */
    uint8_t l_942 = 8UL;
    int32_t *l_945 = (void*)0;
    VECTOR(int64_t, 2) l_947 = (VECTOR(int64_t, 2))(0x7799D9029BA95A22L, 0x70C928AD71084AAFL);
    VECTOR(int32_t, 2) l_970 = (VECTOR(int32_t, 2))(0x217FA147L, 0x7D46BD1CL);
    int32_t **l_973[4];
    union U1 *l_981 = &p_1265->g_477[0][1][5];
    VECTOR(int8_t, 16) l_990 = (VECTOR(int8_t, 16))((-5L), (VECTOR(int8_t, 4))((-5L), (VECTOR(int8_t, 2))((-5L), 0x30L), 0x30L), 0x30L, (-5L), 0x30L, (VECTOR(int8_t, 2))((-5L), 0x30L), (VECTOR(int8_t, 2))((-5L), 0x30L), (-5L), 0x30L, (-5L), 0x30L);
    uint8_t l_1009[8][8][2] = {{{1UL,0xE1L},{1UL,0xE1L},{1UL,0xE1L},{1UL,0xE1L},{1UL,0xE1L},{1UL,0xE1L},{1UL,0xE1L},{1UL,0xE1L}},{{1UL,0xE1L},{1UL,0xE1L},{1UL,0xE1L},{1UL,0xE1L},{1UL,0xE1L},{1UL,0xE1L},{1UL,0xE1L},{1UL,0xE1L}},{{1UL,0xE1L},{1UL,0xE1L},{1UL,0xE1L},{1UL,0xE1L},{1UL,0xE1L},{1UL,0xE1L},{1UL,0xE1L},{1UL,0xE1L}},{{1UL,0xE1L},{1UL,0xE1L},{1UL,0xE1L},{1UL,0xE1L},{1UL,0xE1L},{1UL,0xE1L},{1UL,0xE1L},{1UL,0xE1L}},{{1UL,0xE1L},{1UL,0xE1L},{1UL,0xE1L},{1UL,0xE1L},{1UL,0xE1L},{1UL,0xE1L},{1UL,0xE1L},{1UL,0xE1L}},{{1UL,0xE1L},{1UL,0xE1L},{1UL,0xE1L},{1UL,0xE1L},{1UL,0xE1L},{1UL,0xE1L},{1UL,0xE1L},{1UL,0xE1L}},{{1UL,0xE1L},{1UL,0xE1L},{1UL,0xE1L},{1UL,0xE1L},{1UL,0xE1L},{1UL,0xE1L},{1UL,0xE1L},{1UL,0xE1L}},{{1UL,0xE1L},{1UL,0xE1L},{1UL,0xE1L},{1UL,0xE1L},{1UL,0xE1L},{1UL,0xE1L},{1UL,0xE1L},{1UL,0xE1L}}};
    uint64_t l_1060 = 0x731446F62ADCCF96L;
    int32_t l_1080 = 0x145925D2L;
    int i, j, k;
    for (i = 0; i < 4; i++)
        l_973[i] = &p_1265->g_404;
    for (p_1265->g_80 = (-23); (p_1265->g_80 > 58); p_1265->g_80 = safe_add_func_uint16_t_u_u(p_1265->g_80, 9))
    { /* block id: 402 */
        VECTOR(int64_t, 16) l_950 = (VECTOR(int64_t, 16))(0x77721D810ABFA14EL, (VECTOR(int64_t, 4))(0x77721D810ABFA14EL, (VECTOR(int64_t, 2))(0x77721D810ABFA14EL, (-2L)), (-2L)), (-2L), 0x77721D810ABFA14EL, (-2L), (VECTOR(int64_t, 2))(0x77721D810ABFA14EL, (-2L)), (VECTOR(int64_t, 2))(0x77721D810ABFA14EL, (-2L)), 0x77721D810ABFA14EL, (-2L), 0x77721D810ABFA14EL, (-2L));
        uint8_t l_951 = 0x44L;
        int16_t *l_952 = &p_1265->g_121;
        int32_t *l_953 = (void*)0;
        int32_t *l_955 = &p_1265->g_20;
        uint32_t *l_959 = &p_1265->g_227[1];
        uint32_t **l_958 = &l_959;
        int32_t ***l_974 = (void*)0;
        int32_t ***l_975 = &l_973[0];
        uint32_t *l_977 = (void*)0;
        uint32_t **l_976 = &l_977;
        VECTOR(int8_t, 8) l_988 = (VECTOR(int8_t, 8))(0x23L, (VECTOR(int8_t, 4))(0x23L, (VECTOR(int8_t, 2))(0x23L, (-5L)), (-5L)), (-5L), 0x23L, (-5L));
        VECTOR(int8_t, 4) l_991 = (VECTOR(int8_t, 4))((-2L), (VECTOR(int8_t, 2))((-2L), 0L), 0L);
        uint32_t l_1027 = 1UL;
        int32_t l_1058 = 0x05D8C7BFL;
        int32_t l_1072 = 0x50FC7186L;
        int32_t l_1073 = 0x0FA1308EL;
        int32_t l_1075 = (-1L);
        int32_t l_1076 = (-1L);
        int32_t l_1077 = 0L;
        int32_t l_1078[2];
        uint8_t l_1081 = 0x74L;
        int i;
        for (i = 0; i < 2; i++)
            l_1078[i] = 0x1E439C1FL;
        (*l_955) = (p_1265->g_939 , ((safe_lshift_func_int16_t_s_u(((*l_952) = (l_942 != (safe_mod_func_uint16_t_u_u((((*p_25) = (void*)0) == l_945), ((((VECTOR(uint64_t, 16))(sub_sat(((VECTOR(uint64_t, 8))(abs_diff(((VECTOR(int64_t, 8))(((VECTOR(int64_t, 4))(add_sat(((VECTOR(int64_t, 4))(p_1265->g_946.s2265)), ((VECTOR(int64_t, 4))(l_947.xyxy))))).wzywwzzy)), ((VECTOR(int64_t, 2))(p_1265->g_948.wx)).xyxyyxxy))).s1373044432727731, ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 8))(p_1265->g_949.yxxxyyyx)).hi)).zxzxxyyxyyxzzxxx))).s1 || ((VECTOR(int64_t, 4))(((VECTOR(int64_t, 4))(((VECTOR(int64_t, 16))(clz(((VECTOR(int64_t, 2))(((VECTOR(int64_t, 2))(l_950.sc5)))).xyyxxxyxyyyxxyxx))).s232a)))).x) , (l_951 & p_26)))))), 14)) == l_950.s5));
        if ((((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 4))(0x3666L, ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 8))(1UL, 65535UL, (safe_mod_func_uint8_t_u_u((p_26 == (((*l_958) = (void*)0) == ((*l_976) = ((safe_add_func_uint8_t_u_u(((safe_mul_func_int16_t_s_s(((safe_lshift_func_uint8_t_u_s((((VECTOR(uint16_t, 8))(p_1265->g_966.wzxwyxwz)).s2 && (l_947.x | ((*l_952) |= (((safe_mul_func_int8_t_s_s(((FAKE_DIVERGE(p_1265->global_0_offset, get_global_id(0), 10) < 0xB8308EC0L) >= p_1265->g_431.f0), FAKE_DIVERGE(p_1265->group_2_offset, get_group_id(2), 10))) , p_1265->g_969) , p_1265->g_608.y)))), 6)) != ((((VECTOR(int32_t, 8))(sub_sat(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(l_970.xyyxxyyyxxxyyxxy)).s6f)))).xyyx)).xyzxyxyx, ((VECTOR(int32_t, 4))(l_942, 0x25AC977BL, 0x3DFE04ADL, 0x415720DEL)).wwyxxxyz))).s1 && (safe_add_func_uint32_t_u_u(((VECTOR(uint32_t, 2))(1UL, 0x4BCCC014L)).lo, (((*l_975) = l_973[0]) == &p_1265->g_404)))) || 0x76L)), p_1265->g_948.y)) >= p_26), p_26)) , (void*)0)))), (*l_955))), ((VECTOR(uint16_t, 2))(0x6E27L)), 0x2B51L, 65535UL, 0x13AEL)).s42)), 1UL)), 0UL, 0x5028L, 0UL, ((VECTOR(uint16_t, 2))(3UL)), 0x302FL, p_26, ((VECTOR(uint16_t, 4))(0x3630L)), 0UL)).s0 <= p_1265->g_65[2][1]))
        { /* block id: 410 */
            int8_t l_978[9] = {0x75L,0x75L,0x75L,0x75L,0x75L,0x75L,0x75L,0x75L,0x75L};
            int i;
            (*l_955) &= l_978[4];
        }
        else
        { /* block id: 412 */
            VECTOR(int8_t, 2) l_992 = (VECTOR(int8_t, 2))(0x5BL, 0x5AL);
            uint8_t l_1006 = 0xC8L;
            int32_t l_1028 = 9L;
            uint64_t l_1050 = 0xF4D15BD9F25722CDL;
            int32_t *l_1055 = &p_1265->g_20;
            int32_t *l_1063 = (void*)0;
            int32_t *l_1064 = (void*)0;
            int32_t *l_1065 = (void*)0;
            int32_t *l_1066 = (void*)0;
            int32_t *l_1067 = &p_1265->g_20;
            int32_t *l_1068 = (void*)0;
            int32_t *l_1069 = (void*)0;
            int32_t *l_1070 = (void*)0;
            int32_t *l_1071[9][6] = {{&l_1058,&l_1058,&l_1058,&l_1058,&l_1058,&l_1058},{&l_1058,&l_1058,&l_1058,&l_1058,&l_1058,&l_1058},{&l_1058,&l_1058,&l_1058,&l_1058,&l_1058,&l_1058},{&l_1058,&l_1058,&l_1058,&l_1058,&l_1058,&l_1058},{&l_1058,&l_1058,&l_1058,&l_1058,&l_1058,&l_1058},{&l_1058,&l_1058,&l_1058,&l_1058,&l_1058,&l_1058},{&l_1058,&l_1058,&l_1058,&l_1058,&l_1058,&l_1058},{&l_1058,&l_1058,&l_1058,&l_1058,&l_1058,&l_1058},{&l_1058,&l_1058,&l_1058,&l_1058,&l_1058,&l_1058}};
            int32_t l_1074 = 0L;
            int i, j;
            for (p_1265->g_778.f2 = (-5); (p_1265->g_778.f2 < 28); p_1265->g_778.f2 = safe_add_func_uint64_t_u_u(p_1265->g_778.f2, 5))
            { /* block id: 415 */
                union U1 *l_982 = &p_1265->g_477[0][1][5];
                int32_t ***l_998 = &l_973[0];
                uint64_t *l_1000 = &p_1265->g_585;
                int32_t l_1005 = 1L;
                struct S0 *l_1007 = &p_1265->g_273;
                uint16_t l_1049 = 0x7E2BL;
                int32_t *l_1054[7][5] = {{&p_1265->g_6[2],&p_1265->g_6[0],&l_1005,&p_1265->g_6[0],&p_1265->g_6[2]},{&p_1265->g_6[2],&p_1265->g_6[0],&l_1005,&p_1265->g_6[0],&p_1265->g_6[2]},{&p_1265->g_6[2],&p_1265->g_6[0],&l_1005,&p_1265->g_6[0],&p_1265->g_6[2]},{&p_1265->g_6[2],&p_1265->g_6[0],&l_1005,&p_1265->g_6[0],&p_1265->g_6[2]},{&p_1265->g_6[2],&p_1265->g_6[0],&l_1005,&p_1265->g_6[0],&p_1265->g_6[2]},{&p_1265->g_6[2],&p_1265->g_6[0],&l_1005,&p_1265->g_6[0],&p_1265->g_6[2]},{&p_1265->g_6[2],&p_1265->g_6[0],&l_1005,&p_1265->g_6[0],&p_1265->g_6[2]}};
                int i, j;
                l_982 = l_981;
                if (((safe_add_func_int16_t_s_s(((*l_952) |= (safe_lshift_func_int8_t_s_u((p_26 != (65535UL & (((VECTOR(int8_t, 4))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 4),((VECTOR(int8_t, 4))(safe_mad_hi_func_int8_t_s_s_s(VECTOR(int8_t, 4),((VECTOR(int8_t, 4))(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(p_1265->g_987.wywz)), 0x3BL, ((VECTOR(int8_t, 2))(l_988.s77)), 0x42L)).odd)), ((VECTOR(int8_t, 2))(p_1265->g_989.xy)).xxxy, ((VECTOR(int8_t, 4))(l_990.s5c6d))))), ((VECTOR(int8_t, 4))(((VECTOR(int8_t, 4))(l_991.xzwy)))), ((VECTOR(int8_t, 8))(l_992.yyxyyxyx)).even))).x || (safe_unary_minus_func_int32_t_s(((((1L != (safe_div_func_uint64_t_u_u(((*l_1000) = (l_998 != (p_1265->g_999 , l_974))), (safe_div_func_int32_t_s_s((safe_unary_minus_func_uint32_t_u(((((VECTOR(uint16_t, 8))(p_1265->g_1004.yyxyyxxx)).s4 || ((((p_1265->g_428[2][0].f0 , (l_1005 & GROUP_DIVERGE(1, 1))) || 0x9BL) , p_26) > l_1005)) & p_1265->g_605.x))), p_1265->g_84[1][0]))))) && p_26) & p_26) && 0UL)))))), 7))), 0x0D35L)) ^ l_1006))
                { /* block id: 419 */
                    VECTOR(int8_t, 8) l_1022 = (VECTOR(int8_t, 8))(8L, (VECTOR(int8_t, 4))(8L, (VECTOR(int8_t, 2))(8L, 0x6FL), 0x6FL), 0x6FL, 8L, 0x6FL);
                    VECTOR(int16_t, 2) l_1036 = (VECTOR(int16_t, 2))(0x5269L, 0L);
                    int i;
                    (*l_955) = 0x05A37338L;
                    if (((*l_955) = 1L))
                    { /* block id: 422 */
                        (*p_1265->g_1008) = l_1007;
                        (*p_25) = l_953;
                        (*p_1265->g_430) = (*p_1265->g_430);
                        (*l_955) = l_1005;
                    }
                    else
                    { /* block id: 427 */
                        uint16_t *l_1034 = &p_1265->g_431.f0;
                        uint16_t **l_1033 = &l_1034;
                        int32_t l_1035 = 1L;
                        (*l_955) = l_1009[1][4][1];
                        l_970.x ^= (l_1035 ^= (((safe_mul_func_int16_t_s_s(p_26, (((safe_mod_func_int64_t_s_s((safe_lshift_func_int16_t_s_s((safe_mod_func_int16_t_s_s(((*l_952) = (~(((*l_1033) = ((safe_mod_func_uint8_t_u_u((((p_1265->g_949.x = p_26) <= (safe_sub_func_int32_t_s_s((l_1022.s2 < (((VECTOR(uint16_t, 8))(((VECTOR(uint16_t, 2))(0UL, 4UL)), ((safe_mul_func_uint16_t_u_u((0x655BD150D0B0A2F7L != (safe_add_func_int32_t_s_s(l_1027, (l_1028 = l_1005)))), (((safe_lshift_func_uint16_t_u_s(((VECTOR(uint16_t, 16))(0x5BCFL, p_1265->g_124, ((VECTOR(uint16_t, 2))(clz(((VECTOR(uint16_t, 4))(((-8L) <= (safe_div_func_uint8_t_u_u(p_26, (-1L)))), ((VECTOR(uint16_t, 2))(0UL)), 2UL)).hi))), p_1265->g_326.s0, ((VECTOR(uint16_t, 2))(65534UL)), p_1265->g_987.x, ((VECTOR(uint16_t, 4))(0x4B42L)), ((VECTOR(uint16_t, 2))(2UL)), 0x61E3L, 0x5125L)).s1, p_1265->g_625.sc)) , 0xFCB2L) <= p_26))) <= (-3L)), 65532UL, 0x4D0FL, p_26, 65526UL, 0x8A89L)).s5 , p_1265->g_194.s1)), (*p_1265->g_19)))) | p_26), p_26)) , &p_1265->g_80)) == (void*)0))), 1UL)), p_1265->g_65[2][2])), p_26)) == 0x9ED5L) > (*l_955)))) , 0x7CE10F4B5293D375L) & p_26));
                        l_970.x &= ((l_1022.s6 , (((((((VECTOR(int16_t, 8))((-1L), ((VECTOR(int16_t, 4))(l_1036.xyxy)), 0x5E7BL, 0x4E0DL, 0x3E6DL)).s3 <= (p_1265->g_1004.y , (*l_955))) , (p_26 & l_1035)) , ((*l_1000) = ((safe_add_func_uint16_t_u_u(1UL, (p_1265->g_201.x , (((*p_1265->g_1008) == ((safe_mod_func_int16_t_s_s((((safe_sub_func_uint16_t_u_u(((safe_sub_func_int64_t_s_s((safe_add_func_uint8_t_u_u(((((safe_mul_func_uint8_t_u_u((p_26 <= p_1265->g_385.y), 0x1FL)) > FAKE_DIVERGE(p_1265->global_1_offset, get_global_id(1), 10)) < 7UL) == 3UL), FAKE_DIVERGE(p_1265->group_0_offset, get_group_id(0), 10))), p_26)) ^ 3UL), p_1265->g_218.s4)) , GROUP_DIVERGE(0, 1)) < p_26), 65535UL)) , p_1265->g_430)) & l_1049)))) && 0x67D8498619C23781L))) <= p_1265->g_327.s6) > p_1265->g_257.y)) <= l_1050);
                    }
                }
                else
                { /* block id: 438 */
                    uint16_t l_1053 = 0x0698L;
                    for (l_1049 = 0; (l_1049 <= 29); l_1049 = safe_add_func_uint8_t_u_u(l_1049, 7))
                    { /* block id: 441 */
                        if ((*l_955))
                            break;
                        (*l_955) ^= (l_1049 > l_1053);
                        l_1054[0][3] = (*p_25);
                    }
                    l_1055 = (*p_25);
                    for (p_1265->g_146 = 0; (p_1265->g_146 > 7); p_1265->g_146++)
                    { /* block id: 449 */
                        int32_t l_1059 = 0x394665DBL;
                        l_1060++;
                        if (p_26)
                            continue;
                        (*p_1265->g_19) &= (((*p_25) = (*p_25)) == (void*)0);
                        if (p_26)
                            break;
                    }
                }
            }
            --l_1081;
        }
        if ((*l_955))
            continue;
    }
    (*p_25) = (*p_25);
    return l_1060;
}


/* ------------------------------------------ */
/* 
 * reads : p_1265->g_114 p_1265->g_55 p_1265->g_326 p_1265->g_5 p_1265->g_404 p_1265->g_314 p_1265->g_227 p_1265->g_664 p_1265->g_665 p_1265->g_717 p_1265->g_225 p_1265->g_65 p_1265->g_327 p_1265->g_607 p_1265->g_477.f0 p_1265->g_604 p_1265->g_778 p_1265->g_19 p_1265->g_232 p_1265->g_235 p_1265->g_230 p_1265->g_13 p_1265->g_14 p_1265->g_20 p_1265->g_201 p_1265->g_70 p_1265->g_218 p_1265->g_605 p_1265->g_6 p_1265->g_874 p_1265->g_501 p_1265->g_257 p_1265->g_252 p_1265->g_430 p_1265->g_431 p_1265->g_15.f0 p_1265->g_910 p_1265->g_781 p_1265->g_915 p_1265->g_935 p_1265->g_56 p_1265->g_121 p_1265->g_273.f2 p_1265->g_15.f1 p_1265->g_273.f0 p_1265->g_2 p_1265->g_84 p_1265->g_820 p_1265->g_830 p_1265->g_543 p_1265->g_717.f0
 * writes: p_1265->g_114 p_1265->g_121 p_1265->g_65 p_1265->g_428.f2 p_1265->g_15.f2 p_1265->g_20 p_1265->g_122 p_1265->g_809 p_1265->g_201 p_1265->g_70 p_1265->g_314 p_1265->g_15.f0 p_1265->g_273.f0 p_1265->g_778.f2 p_1265->g_14 p_1265->g_477.f0 p_1265->g_778.f0 p_1265->g_428 p_1265->g_585
 */
int32_t  func_28(int8_t * p_29, struct S2 * p_1265)
{ /* block id: 283 */
    uint32_t l_697 = 0xF3931235L;
    VECTOR(int32_t, 16) l_698 = (VECTOR(int32_t, 16))(0x4EC6C9E7L, (VECTOR(int32_t, 4))(0x4EC6C9E7L, (VECTOR(int32_t, 2))(0x4EC6C9E7L, 1L), 1L), 1L, 0x4EC6C9E7L, 1L, (VECTOR(int32_t, 2))(0x4EC6C9E7L, 1L), (VECTOR(int32_t, 2))(0x4EC6C9E7L, 1L), 0x4EC6C9E7L, 1L, 0x4EC6C9E7L, 1L);
    uint8_t *l_701 = (void*)0;
    uint8_t *l_702 = &p_1265->g_114;
    VECTOR(uint64_t, 2) l_705 = (VECTOR(uint64_t, 2))(1UL, 0xFD1805BC1F4F9F4EL);
    VECTOR(uint64_t, 16) l_706 = (VECTOR(uint64_t, 16))(18446744073709551606UL, (VECTOR(uint64_t, 4))(18446744073709551606UL, (VECTOR(uint64_t, 2))(18446744073709551606UL, 0x7D978A23E01687CCL), 0x7D978A23E01687CCL), 0x7D978A23E01687CCL, 18446744073709551606UL, 0x7D978A23E01687CCL, (VECTOR(uint64_t, 2))(18446744073709551606UL, 0x7D978A23E01687CCL), (VECTOR(uint64_t, 2))(18446744073709551606UL, 0x7D978A23E01687CCL), 18446744073709551606UL, 0x7D978A23E01687CCL, 18446744073709551606UL, 0x7D978A23E01687CCL);
    uint32_t *l_709 = (void*)0;
    int32_t l_710 = 8L;
    int32_t l_711 = 0x446A6E7AL;
    int32_t *l_712[6][2];
    struct S0 *l_728 = &p_1265->g_428[2][0];
    uint16_t *l_747[7] = {&p_1265->g_431.f0,&p_1265->g_431.f0,&p_1265->g_431.f0,&p_1265->g_431.f0,&p_1265->g_431.f0,&p_1265->g_431.f0,&p_1265->g_431.f0};
    VECTOR(uint8_t, 4) l_804 = (VECTOR(uint8_t, 4))(0x96L, (VECTOR(uint8_t, 2))(0x96L, 0x92L), 0x92L);
    union U1 *l_812 = &p_1265->g_684[5][4][1];
    int32_t *l_841 = &l_710;
    uint64_t l_867 = 0x5E13171238358ED0L;
    uint8_t l_913 = 1UL;
    int32_t **l_934 = (void*)0;
    uint16_t l_936 = 65528UL;
    int i, j;
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 2; j++)
            l_712[i][j] = &l_711;
    }
lbl_905:
    l_711 |= ((((safe_mod_func_uint32_t_u_u((safe_lshift_func_int16_t_s_s((l_697 = (-1L)), (l_698.s5 && (safe_mod_func_uint64_t_u_u(((++(*l_702)) , ((VECTOR(uint64_t, 16))(mad_sat(((VECTOR(uint64_t, 2))(l_705.xx)).yxyyyyxxxyxyxxxx, ((VECTOR(uint64_t, 4))(0UL, ((VECTOR(uint64_t, 2))(0UL, 0xF55D09CFC9AC4338L)), 18446744073709551610UL)).wxxxywzyzxxwxwyw, ((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(mad_hi(((VECTOR(uint64_t, 16))(l_706.sf91b48834b51a3ed)).s1d34, ((VECTOR(uint64_t, 2))(18446744073709551615UL, 5UL)).xxyx, ((VECTOR(uint64_t, 4))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 2))(((VECTOR(uint64_t, 8))((FAKE_DIVERGE(p_1265->group_0_offset, get_group_id(0), 10) || ((VECTOR(uint32_t, 4))(((~((safe_mod_func_int16_t_s_s((l_698.sb || (0UL > (8L <= ((VECTOR(int64_t, 8))(0x499A490DC1C83EB2L, 0L, ((*p_1265->g_19) || ((l_698.sc & (l_710 = l_706.s1)) ^ ((((p_1265->g_56.s4 , (void*)0) == (void*)0) > l_705.x) & 0xA54A2243L))), 1L, ((VECTOR(int64_t, 2))(0x601273AE0F7929FEL)), (-6L), (-1L))).s2))), l_705.x)) < 252UL)) != 0x56BCL), ((VECTOR(uint32_t, 2))(0x0524D1C9L)), 0x95700857L)).w), ((VECTOR(uint64_t, 2))(0xF37A7879D6B08412L)), 18446744073709551614UL, ((VECTOR(uint64_t, 4))(18446744073709551615UL)))).s15)))).xyxy))))).xzxzyzzz)).s0464712020422501))).se), 0x888A41A7936A0DADL))))), l_698.s5)) <= p_1265->g_55.y) , p_1265->g_326.s1) , 0x71BE11AFL);
    l_712[2][1] = (p_1265->g_5 , &l_711);
    if (((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(0x4E6CBEC4L, 0x7B9E57F4L)), 0x713E5463L, 0x35382263L)).z)
    { /* block id: 289 */
        VECTOR(uint16_t, 2) l_718 = (VECTOR(uint16_t, 2))(0x7E01L, 0xE980L);
        VECTOR(int32_t, 2) l_732 = (VECTOR(int32_t, 2))(0x78CEEC6BL, 0L);
        int32_t *l_813 = (void*)0;
        int16_t l_901[6][7][1] = {{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}},{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}},{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}},{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}},{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}},{{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)},{(-1L)}}};
        int32_t *l_903 = (void*)0;
        uint16_t l_925 = 65533UL;
        int i, j, k;
lbl_806:
        for (p_1265->g_121 = 0; (p_1265->g_121 == (-9)); p_1265->g_121--)
        { /* block id: 292 */
            return (*p_1265->g_404);
        }
        if (((p_1265->g_227[1] , (((void*)0 == l_712[2][1]) != (((((((*p_1265->g_664) , (+((safe_sub_func_uint8_t_u_u(0x7DL, (((*p_29) = (p_1265->g_717 , ((((VECTOR(uint16_t, 8))(0UL, 65530UL, l_718.y, 8UL, GROUP_DIVERGE(1, 1), 0xA9D1L, 0x68E7L, 1UL)).s4 & (safe_div_func_int16_t_s_s((safe_mul_func_int8_t_s_s(((l_718.x <= (FAKE_DIVERGE(p_1265->local_2_offset, get_local_id(2), 10) || (safe_lshift_func_int16_t_s_s((safe_sub_func_int64_t_s_s(((FAKE_DIVERGE(p_1265->group_0_offset, get_group_id(0), 10) <= (safe_unary_minus_func_uint8_t_u(l_718.y))) < 0x2CL), 0x16CE629C867955B7L)), p_1265->g_225.z)))) , (-6L)), (*p_29))), p_1265->g_327.s5))) | (*p_29)))) , (*p_29)))) < p_1265->g_607.x))) , p_1265->g_477[0][1][5].f0) ^ l_718.x) , l_728) != (void*)0) || l_718.y))) & 0x90AEL))
        { /* block id: 296 */
            uint32_t l_729 = 0x6E069AB6L;
            VECTOR(int16_t, 2) l_736 = (VECTOR(int16_t, 2))((-8L), 0x7815L);
            uint16_t *l_746 = &p_1265->g_273.f0;
            uint64_t l_751 = 0x978D39E035AED73DL;
            VECTOR(int32_t, 2) l_780 = (VECTOR(int32_t, 2))((-1L), (-1L));
            int32_t l_805 = 7L;
            uint64_t *l_825 = (void*)0;
            int32_t l_838[8][6][3] = {{{0x5B870E7EL,0x4CDE37E4L,0L},{0x5B870E7EL,0x4CDE37E4L,0L},{0x5B870E7EL,0x4CDE37E4L,0L},{0x5B870E7EL,0x4CDE37E4L,0L},{0x5B870E7EL,0x4CDE37E4L,0L},{0x5B870E7EL,0x4CDE37E4L,0L}},{{0x5B870E7EL,0x4CDE37E4L,0L},{0x5B870E7EL,0x4CDE37E4L,0L},{0x5B870E7EL,0x4CDE37E4L,0L},{0x5B870E7EL,0x4CDE37E4L,0L},{0x5B870E7EL,0x4CDE37E4L,0L},{0x5B870E7EL,0x4CDE37E4L,0L}},{{0x5B870E7EL,0x4CDE37E4L,0L},{0x5B870E7EL,0x4CDE37E4L,0L},{0x5B870E7EL,0x4CDE37E4L,0L},{0x5B870E7EL,0x4CDE37E4L,0L},{0x5B870E7EL,0x4CDE37E4L,0L},{0x5B870E7EL,0x4CDE37E4L,0L}},{{0x5B870E7EL,0x4CDE37E4L,0L},{0x5B870E7EL,0x4CDE37E4L,0L},{0x5B870E7EL,0x4CDE37E4L,0L},{0x5B870E7EL,0x4CDE37E4L,0L},{0x5B870E7EL,0x4CDE37E4L,0L},{0x5B870E7EL,0x4CDE37E4L,0L}},{{0x5B870E7EL,0x4CDE37E4L,0L},{0x5B870E7EL,0x4CDE37E4L,0L},{0x5B870E7EL,0x4CDE37E4L,0L},{0x5B870E7EL,0x4CDE37E4L,0L},{0x5B870E7EL,0x4CDE37E4L,0L},{0x5B870E7EL,0x4CDE37E4L,0L}},{{0x5B870E7EL,0x4CDE37E4L,0L},{0x5B870E7EL,0x4CDE37E4L,0L},{0x5B870E7EL,0x4CDE37E4L,0L},{0x5B870E7EL,0x4CDE37E4L,0L},{0x5B870E7EL,0x4CDE37E4L,0L},{0x5B870E7EL,0x4CDE37E4L,0L}},{{0x5B870E7EL,0x4CDE37E4L,0L},{0x5B870E7EL,0x4CDE37E4L,0L},{0x5B870E7EL,0x4CDE37E4L,0L},{0x5B870E7EL,0x4CDE37E4L,0L},{0x5B870E7EL,0x4CDE37E4L,0L},{0x5B870E7EL,0x4CDE37E4L,0L}},{{0x5B870E7EL,0x4CDE37E4L,0L},{0x5B870E7EL,0x4CDE37E4L,0L},{0x5B870E7EL,0x4CDE37E4L,0L},{0x5B870E7EL,0x4CDE37E4L,0L},{0x5B870E7EL,0x4CDE37E4L,0L},{0x5B870E7EL,0x4CDE37E4L,0L}}};
            VECTOR(uint16_t, 16) l_857 = (VECTOR(uint16_t, 16))(0x99EDL, (VECTOR(uint16_t, 4))(0x99EDL, (VECTOR(uint16_t, 2))(0x99EDL, 65535UL), 65535UL), 65535UL, 0x99EDL, 65535UL, (VECTOR(uint16_t, 2))(0x99EDL, 65535UL), (VECTOR(uint16_t, 2))(0x99EDL, 65535UL), 0x99EDL, 65535UL, 0x99EDL, 65535UL);
            VECTOR(uint16_t, 4) l_858 = (VECTOR(uint16_t, 4))(0xF03AL, (VECTOR(uint16_t, 2))(0xF03AL, 0UL), 0UL);
            int32_t *l_866[10] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            int i, j, k;
            if (l_729)
            { /* block id: 297 */
                uint8_t l_741 = 1UL;
                int64_t *l_748 = &p_1265->g_428[2][0].f2;
                int64_t *l_749 = (void*)0;
                int64_t *l_750 = &p_1265->g_15.f2;
                if ((~((p_1265->g_604.y | (safe_mod_func_int64_t_s_s(((*l_750) = (((*l_748) = (((VECTOR(int32_t, 2))(l_732.yy)).odd , (((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(((((safe_unary_minus_func_int8_t_s((((safe_mod_func_uint16_t_u_u(p_1265->g_273.f2, ((VECTOR(int16_t, 4))(l_736.yxxy)).y)) >= ((safe_lshift_func_uint16_t_u_s(((*l_746) |= (safe_sub_func_int64_t_s_s((l_718.x , l_741), (((safe_div_func_int32_t_s_s(((((safe_mod_func_int16_t_s_s(l_729, ((l_746 != l_747[5]) , p_1265->g_15.f1))) , (l_741 >= 0UL)) != p_1265->g_232.y) , 0x38C6390FL), l_732.y)) != p_1265->g_225.w) , p_1265->g_6[3])))), l_732.y)) != l_741)) < (*p_1265->g_14)))) <= 0x55999130L) <= l_732.x) > p_1265->g_2), 0x43DEL, ((VECTOR(int16_t, 4))(0x013FL)), 0x2A9AL, 0L)).s3410344311201673)).s2 && 0x2EB9L))) >= GROUP_DIVERGE(0, 1))), l_751))) | 3UL)))
                { /* block id: 301 */
                    int32_t *l_752 = (void*)0;
                    int32_t **l_753 = &l_712[1][1];
                    VECTOR(int32_t, 2) l_779 = (VECTOR(int32_t, 2))(1L, 0x1E421F80L);
                    uint64_t *l_802 = (void*)0;
                    uint64_t *l_803 = (void*)0;
                    int i;
                    (*l_753) = l_752;
                    (*l_753) = (void*)0;
                    l_805 &= (safe_mod_func_int64_t_s_s(((((((safe_sub_func_uint64_t_u_u((safe_mul_func_uint8_t_u_u(((safe_lshift_func_uint8_t_u_s(((safe_mul_func_uint8_t_u_u((safe_mul_func_int8_t_s_s((safe_mul_func_uint8_t_u_u((l_736.y == ((*p_1265->g_19) = ((safe_mul_func_int16_t_s_s(l_736.y, l_741)) != (((VECTOR(int64_t, 2))(0L, (-2L))).even , ((*l_702) |= ((safe_sub_func_int16_t_s_s((safe_mod_func_uint8_t_u_u(((safe_lshift_func_int8_t_s_u(((p_1265->g_778 , ((VECTOR(int32_t, 16))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 16))(mul_hi(((VECTOR(int32_t, 16))(rhadd(((VECTOR(int32_t, 8))(add_sat(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 2))(0x65164041L, 0L)), 0x73FA2BD2L, ((VECTOR(int32_t, 2))(l_779.xx)), ((VECTOR(int32_t, 8))(sub_sat(((VECTOR(int32_t, 2))(0x3714F486L, 0x706A306AL)).yyyyyyyy, ((VECTOR(int32_t, 16))(safe_mul24_func_int32_t_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 2))(((VECTOR(int32_t, 16))(((VECTOR(int32_t, 4))(clz(((VECTOR(int32_t, 16))(max(((VECTOR(int32_t, 16))(hadd(((VECTOR(int32_t, 2))(l_780.xy)).xyxxxyxxxyyyxyyx, ((VECTOR(int32_t, 16))(safe_mad24_func_int32_t_s_s_s(VECTOR(int32_t, 16),((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(safe_clamp_func(VECTOR(int32_t, 4),int32_t,((VECTOR(int32_t, 16))(((p_1265->g_585 = ((VECTOR(uint64_t, 16))(18446744073709551610UL, 18446744073709551615UL, ((VECTOR(uint64_t, 2))(0UL, 18446744073709551615UL)), ((VECTOR(uint64_t, 4))(mad_sat(((VECTOR(uint64_t, 8))(((VECTOR(uint64_t, 4))(abs(((VECTOR(int64_t, 8))(p_1265->g_781.zyxxxwyw)).hi))), 0xCE1D1AB8741BB3F3L, (safe_lshift_func_uint16_t_u_u((safe_div_func_uint32_t_u_u((safe_rshift_func_int8_t_s_u(0x01L, 7)), (safe_mul_func_uint16_t_u_u((safe_lshift_func_uint16_t_u_s((safe_sub_func_int32_t_s_s((safe_add_func_int64_t_s_s(l_741, FAKE_DIVERGE(p_1265->group_0_offset, get_group_id(0), 10))), p_1265->g_84[1][2])), 0)), ((safe_rshift_func_uint8_t_u_s(((safe_rshift_func_int8_t_s_s(((VECTOR(int8_t, 4))(rhadd(((VECTOR(int8_t, 2))(((VECTOR(int8_t, 8))((safe_add_func_int32_t_s_s((p_1265->g_218.s2 != p_1265->g_56.s7), l_741)), (-7L), 0x5AL, l_741, 0x3CL, l_718.x, 0x7CL, 0x15L)).s22)).xyxx, ((VECTOR(int8_t, 4))((-7L)))))).x, 3)) > 18446744073709551615UL), 5)) != l_780.x))))), FAKE_DIVERGE(p_1265->group_1_offset, get_group_id(1), 10))), 18446744073709551610UL, 18446744073709551615UL)).odd, ((VECTOR(uint64_t, 4))(1UL)), ((VECTOR(uint64_t, 4))(0xA288FEE66A655039L))))), ((VECTOR(uint64_t, 2))(5UL)), 1UL, ((VECTOR(uint64_t, 2))(0xABB2C98314ED12CCL)), ((VECTOR(uint64_t, 2))(1UL)), 0x1F028E87BAFE9414L)).s4) <= l_751), 0x02185053L, (-1L), ((VECTOR(int32_t, 2))(0x70516BB0L)), ((VECTOR(int32_t, 4))(3L)), 0x748AEDF6L, ((VECTOR(int32_t, 4))(0L)), 0x65723F2AL, (-3L))).sb102, (int32_t)0x17D1E14FL, (int32_t)l_741))).wywzwzzy)).s1451656701406301, ((VECTOR(int32_t, 16))(0x5444F279L)), ((VECTOR(int32_t, 16))(0x6B755298L)))))))), (int32_t)(**p_1265->g_13)))).s89da))).wwyxxyzyzyyzyzzz)).s1a)).xxxyxxxyyyxxyxxx, ((VECTOR(int32_t, 16))(0x50507A18L))))).lo))), (-4L), (-1L), 0x792BB91CL)).even, ((VECTOR(int32_t, 8))(0x343A4559L))))).s5065616045406313, ((VECTOR(int32_t, 16))(0x40C48165L))))), ((VECTOR(int32_t, 16))(0L))))))).lo)).s0334115646333465)).s0) | 0x53443C4CL), 0)) == l_736.x), l_732.x)), 0x7FEBL)) >= l_804.y)))))), l_741)), p_1265->g_232.y)), (*p_29))) <= l_732.y), l_741)) , l_732.x), p_1265->g_235.sb)), p_1265->g_230.y)) , (*p_1265->g_13)) != (void*)0) , (*p_1265->g_19)) , 0xDA53L) , l_732.y), GROUP_DIVERGE(2, 1)));
                    if (l_741)
                        goto lbl_806;
                }
                else
                { /* block id: 309 */
                    for (p_1265->g_122 = 0; (p_1265->g_122 < (-15)); p_1265->g_122--)
                    { /* block id: 312 */
                        l_732.y = ((p_1265->g_809 = &l_749) != &l_749);
                    }
                }
            }
            else
            { /* block id: 317 */
                uint64_t *l_826 = &p_1265->g_585;
                int32_t l_833 = 0L;
                VECTOR(int16_t, 2) l_834 = (VECTOR(int16_t, 2))(0x1976L, 0x303BL);
                int i;
                for (p_1265->g_121 = 23; (p_1265->g_121 != 27); ++p_1265->g_121)
                { /* block id: 320 */
                    int32_t **l_814 = &l_712[0][0];
                    uint8_t *l_827[4];
                    int32_t l_840 = 0L;
                    int32_t *l_865 = (void*)0;
                    int i;
                    for (i = 0; i < 4; i++)
                        l_827[i] = &p_1265->g_124;
                    l_812 = &p_1265->g_684[3][2][5];
                    (*l_814) = l_813;
                    for (l_805 = 0; (l_805 >= 17); l_805 = safe_add_func_uint64_t_u_u(l_805, 1))
                    { /* block id: 325 */
                        uint32_t *l_817[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
                        uint64_t *l_824 = (void*)0;
                        uint64_t **l_823[3];
                        int32_t l_837 = 0x3591A05CL;
                        int16_t *l_839 = &p_1265->g_70;
                        int i;
                        for (i = 0; i < 3; i++)
                            l_823[i] = &l_824;
                        l_840 &= (l_837 = ((((++p_1265->g_201.w) , ((((VECTOR(uint8_t, 16))(rhadd(((VECTOR(uint8_t, 8))(p_1265->g_820.s37753406)).s4563650741243123, ((VECTOR(uint8_t, 2))(0UL, 1UL)).xyxxxyyyxyyyyyxx))).s0 || ((*l_702) &= ((safe_add_func_uint16_t_u_u(l_736.y, ((l_825 = &p_1265->g_239) == l_826))) > (0xE6L == FAKE_DIVERGE(p_1265->local_0_offset, get_local_id(0), 10))))) , l_827[1])) != &p_1265->g_124) , (((((((safe_add_func_int32_t_s_s(l_736.x, ((VECTOR(uint32_t, 2))(p_1265->g_830.yy)).even)) || (safe_rshift_func_uint8_t_u_u(((((*p_1265->g_404) = (l_833 || ((*l_839) &= ((VECTOR(int16_t, 16))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 8))(safe_mad_hi_func_int16_t_s_s_s(VECTOR(int16_t, 8),((VECTOR(int16_t, 16))(((VECTOR(int16_t, 16))(((VECTOR(int16_t, 2))(rhadd(((VECTOR(int16_t, 4))(l_834.xyxy)).even, ((VECTOR(int16_t, 2))(0x5F49L, 0x2928L))))), (((safe_sub_func_int64_t_s_s((l_728 == l_728), l_834.x)) > l_837) || l_834.x), p_1265->g_543.s0, (-1L), 0L, p_1265->g_717.f0, 1L, l_838[2][1][2], ((VECTOR(int16_t, 4))(1L)), ((VECTOR(int16_t, 2))(0x683AL)), 0x156EL)))).lo, ((VECTOR(int16_t, 8))(0x5716L)), ((VECTOR(int16_t, 8))((-1L)))))), ((VECTOR(int16_t, 4))(0x7F6DL)), 0x0840L, ((VECTOR(int16_t, 2))((-1L))), 0L)))).s5))) , (void*)0) == &p_1265->g_430), 5))) || 0x2227L) ^ (-2L)) & FAKE_DIVERGE(p_1265->group_2_offset, get_group_id(2), 10)) , l_834.y) < 65528UL)));
                        (*l_814) = l_841;
                        return (*p_1265->g_404);
                    }
                    for (p_1265->g_15.f0 = 0; (p_1265->g_15.f0 == 3); p_1265->g_15.f0++)
                    { /* block id: 338 */
                        uint16_t l_846[9][7][4] = {{{4UL,65535UL,0x8E98L,0UL},{4UL,65535UL,0x8E98L,0UL},{4UL,65535UL,0x8E98L,0UL},{4UL,65535UL,0x8E98L,0UL},{4UL,65535UL,0x8E98L,0UL},{4UL,65535UL,0x8E98L,0UL},{4UL,65535UL,0x8E98L,0UL}},{{4UL,65535UL,0x8E98L,0UL},{4UL,65535UL,0x8E98L,0UL},{4UL,65535UL,0x8E98L,0UL},{4UL,65535UL,0x8E98L,0UL},{4UL,65535UL,0x8E98L,0UL},{4UL,65535UL,0x8E98L,0UL},{4UL,65535UL,0x8E98L,0UL}},{{4UL,65535UL,0x8E98L,0UL},{4UL,65535UL,0x8E98L,0UL},{4UL,65535UL,0x8E98L,0UL},{4UL,65535UL,0x8E98L,0UL},{4UL,65535UL,0x8E98L,0UL},{4UL,65535UL,0x8E98L,0UL},{4UL,65535UL,0x8E98L,0UL}},{{4UL,65535UL,0x8E98L,0UL},{4UL,65535UL,0x8E98L,0UL},{4UL,65535UL,0x8E98L,0UL},{4UL,65535UL,0x8E98L,0UL},{4UL,65535UL,0x8E98L,0UL},{4UL,65535UL,0x8E98L,0UL},{4UL,65535UL,0x8E98L,0UL}},{{4UL,65535UL,0x8E98L,0UL},{4UL,65535UL,0x8E98L,0UL},{4UL,65535UL,0x8E98L,0UL},{4UL,65535UL,0x8E98L,0UL},{4UL,65535UL,0x8E98L,0UL},{4UL,65535UL,0x8E98L,0UL},{4UL,65535UL,0x8E98L,0UL}},{{4UL,65535UL,0x8E98L,0UL},{4UL,65535UL,0x8E98L,0UL},{4UL,65535UL,0x8E98L,0UL},{4UL,65535UL,0x8E98L,0UL},{4UL,65535UL,0x8E98L,0UL},{4UL,65535UL,0x8E98L,0UL},{4UL,65535UL,0x8E98L,0UL}},{{4UL,65535UL,0x8E98L,0UL},{4UL,65535UL,0x8E98L,0UL},{4UL,65535UL,0x8E98L,0UL},{4UL,65535UL,0x8E98L,0UL},{4UL,65535UL,0x8E98L,0UL},{4UL,65535UL,0x8E98L,0UL},{4UL,65535UL,0x8E98L,0UL}},{{4UL,65535UL,0x8E98L,0UL},{4UL,65535UL,0x8E98L,0UL},{4UL,65535UL,0x8E98L,0UL},{4UL,65535UL,0x8E98L,0UL},{4UL,65535UL,0x8E98L,0UL},{4UL,65535UL,0x8E98L,0UL},{4UL,65535UL,0x8E98L,0UL}},{{4UL,65535UL,0x8E98L,0UL},{4UL,65535UL,0x8E98L,0UL},{4UL,65535UL,0x8E98L,0UL},{4UL,65535UL,0x8E98L,0UL},{4UL,65535UL,0x8E98L,0UL},{4UL,65535UL,0x8E98L,0UL},{4UL,65535UL,0x8E98L,0UL}}};
                        int i, j, k;
                        l_846[2][1][3] ^= (safe_rshift_func_uint16_t_u_u(((*l_746) = ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 16))(((VECTOR(uint16_t, 2))(0UL, 0UL)).yxxxyxyxyxxxyxxx)))).s4d)))).lo), 9));
                        (*l_841) &= (+((safe_rshift_func_uint8_t_u_u((safe_div_func_uint32_t_u_u((((safe_rshift_func_uint16_t_u_s((safe_lshift_func_uint8_t_u_u((((safe_rshift_func_int16_t_s_u((&p_1265->g_809 != &p_1265->g_809), ((((((((VECTOR(uint16_t, 4))(hadd(((VECTOR(uint16_t, 8))(l_857.scc4d0152)).even, ((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(((VECTOR(uint16_t, 8))(l_858.yxxyxxwx)).s13)), 65535UL, 0UL)).hi)).xxxy))).x >= (safe_div_func_int16_t_s_s((safe_mul_func_uint8_t_u_u((&p_1265->g_65[3][0] != (void*)0), ((safe_sub_func_int64_t_s_s(0x5C2389FA3EFBDE3EL, (l_865 == (p_1265->g_218.s2 , l_866[2])))) | l_732.y))), FAKE_DIVERGE(p_1265->local_1_offset, get_local_id(1), 10)))) | 0x5108B738BA40F463L) == FAKE_DIVERGE(p_1265->group_2_offset, get_group_id(2), 10)) >= l_833) >= l_867) , p_1265->g_605.w))) >= GROUP_DIVERGE(1, 1)) , p_1265->g_6[4]), 2)), 2)) <= 1L) | 1L), FAKE_DIVERGE(p_1265->global_1_offset, get_global_id(1), 10))), 1)) <= 0x873EL));
                    }
                }
            }
        }
        else
        { /* block id: 345 */
            int16_t l_880 = 0L;
            int32_t *l_892 = &p_1265->g_6[2];
            for (p_1265->g_778.f2 = (-7); (p_1265->g_778.f2 == 25); p_1265->g_778.f2++)
            { /* block id: 348 */
                int32_t *l_897 = &p_1265->g_2;
                int32_t l_902 = 0L;
                int32_t **l_904 = &l_897;
                for (l_711 = 0; (l_711 <= (-21)); l_711 = safe_sub_func_uint8_t_u_u(l_711, 3))
                { /* block id: 351 */
                    uint32_t *l_888 = &p_1265->g_477[0][1][5].f0;
                    VECTOR(int32_t, 4) l_889 = (VECTOR(int32_t, 4))(0x2B1725B9L, (VECTOR(int32_t, 2))(0x2B1725B9L, 0L), 0L);
                    int i;
                    (*p_1265->g_13) = l_813;
                    for (p_1265->g_15.f0 = 11; (p_1265->g_15.f0 <= 59); p_1265->g_15.f0 = safe_add_func_int16_t_s_s(p_1265->g_15.f0, 3))
                    { /* block id: 355 */
                        uint16_t l_875[1];
                        int i;
                        for (i = 0; i < 1; i++)
                            l_875[i] = 0x1E7EL;
                        (*p_1265->g_874) = (*p_1265->g_13);
                        return l_875[0];
                    }
                    if (((*l_841) ^= ((*p_29) && (((safe_mul_func_int8_t_s_s(l_880, (*p_29))) >= ((((8UL < (l_880 && (-10L))) >= (((l_880 | (safe_lshift_func_int16_t_s_u(p_1265->g_501.s8, (p_1265->g_778.f0 = ((safe_mod_func_uint16_t_u_u((safe_unary_minus_func_int16_t_s((((*l_888) = (safe_mul_func_int16_t_s_s(p_1265->g_257.x, p_1265->g_252.x))) >= l_880))), 3UL)) , p_1265->g_218.s6))))) < 0x7E296376A878F9F9L) == 0x4D93A18A98144434L)) == (*p_29)) > l_889.z)) > l_889.z))))
                    { /* block id: 362 */
                        int32_t *l_890 = (void*)0;
                        int32_t **l_891 = (void*)0;
                        l_813 = l_890;
                        (*l_728) = (*p_1265->g_430);
                        (*p_1265->g_13) = l_892;
                    }
                    else
                    { /* block id: 366 */
                        int32_t *l_893 = (void*)0;
                        VECTOR(uint64_t, 16) l_894 = (VECTOR(uint64_t, 16))(1UL, (VECTOR(uint64_t, 4))(1UL, (VECTOR(uint64_t, 2))(1UL, 0x4FB9AC2E1E0E9EF9L), 0x4FB9AC2E1E0E9EF9L), 0x4FB9AC2E1E0E9EF9L, 1UL, 0x4FB9AC2E1E0E9EF9L, (VECTOR(uint64_t, 2))(1UL, 0x4FB9AC2E1E0E9EF9L), (VECTOR(uint64_t, 2))(1UL, 0x4FB9AC2E1E0E9EF9L), 1UL, 0x4FB9AC2E1E0E9EF9L, 1UL, 0x4FB9AC2E1E0E9EF9L);
                        int32_t **l_898 = &l_893;
                        int i;
                        l_893 = l_888;
                        l_894.sb++;
                        (*l_898) = l_897;
                    }
                    for (l_710 = 20; (l_710 < 5); --l_710)
                    { /* block id: 373 */
                        l_902 = l_901[1][6][0];
                    }
                }
                (*l_841) &= ((*l_892) || ((*l_892) , (l_897 == l_892)));
                (*l_904) = l_903;
            }
            if (p_1265->g_20)
                goto lbl_905;
        }
        for (p_1265->g_70 = (-26); (p_1265->g_70 >= 23); p_1265->g_70 = safe_add_func_uint8_t_u_u(p_1265->g_70, 7))
        { /* block id: 384 */
            VECTOR(int16_t, 8) l_909 = (VECTOR(int16_t, 8))(0L, (VECTOR(int16_t, 4))(0L, (VECTOR(int16_t, 2))(0L, 0x133AL), 0x133AL), 0x133AL, 0L, 0x133AL);
            VECTOR(int16_t, 2) l_911 = (VECTOR(int16_t, 2))((-1L), 0x4F55L);
            VECTOR(int16_t, 4) l_912 = (VECTOR(int16_t, 4))(0x13B3L, (VECTOR(int16_t, 2))(0x13B3L, 0L), 0L);
            int16_t *l_914 = &p_1265->g_121;
            int32_t l_916 = 0x5E19003BL;
            int32_t l_917 = 0x080FED0CL;
            int32_t l_918 = 1L;
            int32_t l_919 = 0x7AFA6A46L;
            int32_t l_920 = 1L;
            int32_t l_921 = 0x5040FBFAL;
            int32_t l_922 = 0x0D3002F6L;
            int32_t l_923 = (-5L);
            int32_t l_924[6] = {0x36A727D6L,0x4BC93E55L,0x36A727D6L,0x36A727D6L,0x4BC93E55L,0x36A727D6L};
            int i;
            (*l_841) &= (safe_unary_minus_func_int32_t_s((p_1265->g_15.f0 & ((VECTOR(int16_t, 8))(sub_sat(((VECTOR(int16_t, 8))(0x177DL, ((VECTOR(int16_t, 4))((((VECTOR(int16_t, 16))(mad_sat(((VECTOR(int16_t, 4))(l_909.s1611)).wwzwxxwwxxywwzxw, ((VECTOR(int16_t, 8))(rhadd(((VECTOR(int16_t, 8))(((VECTOR(int16_t, 8))(rotate(((VECTOR(int16_t, 2))(p_1265->g_910.xy)).yxyxyyyx, ((VECTOR(int16_t, 8))(0x10DBL, (+p_1265->g_781.z), ((VECTOR(int16_t, 4))(l_911.xxxy)), 0x45B5L, 0x4E9FL))))))), ((VECTOR(int16_t, 4))(((VECTOR(int16_t, 2))(l_912.xz)).xyyx)).zywzwxyw))).s2472504214034174, ((VECTOR(int16_t, 4))((-3L), 0x593FL, (-4L), 8L)).ywwxxxyyyyxwxxzz))).sd > p_1265->g_326.s6), ((VECTOR(int16_t, 2))(0L, (-6L))), 0x4432L)), ((*l_914) = (0x64D46E37L > l_913)), 0x08B8L, 0x6476L)), ((VECTOR(int16_t, 4))(p_1265->g_915.s0114)).zzzzzyzz))).s5)));
            l_925--;
        }
        return (*p_1265->g_404);
    }
    else
    { /* block id: 390 */
        for (p_1265->g_778.f2 = 0; (p_1265->g_778.f2 > 1); p_1265->g_778.f2++)
        { /* block id: 393 */
            uint16_t l_930[3][8] = {{65529UL,65529UL,65530UL,0UL,0x1F18L,0UL,65530UL,65529UL},{65529UL,65529UL,65530UL,0UL,0x1F18L,0UL,65530UL,65529UL},{65529UL,65529UL,65530UL,0UL,0x1F18L,0UL,65530UL,65529UL}};
            int i, j;
            l_930[2][5]--;
        }
    }
    (*p_1265->g_935) = (*p_1265->g_874);
    return l_936;
}


/* ------------------------------------------ */
/* 
 * reads : p_1265->g_15.f1 p_1265->g_55 p_1265->g_56 p_1265->g_20 p_1265->g_21.f0 p_1265->g_80 p_1265->g_65 p_1265->g_14 p_1265->g_2 p_1265->g_6 p_1265->g_84 p_1265->g_70 p_1265->g_114 p_1265->g_15.f2 p_1265->g_124 p_1265->g_142 p_1265->g_21.f2 p_1265->g_143 p_1265->g_146 p_1265->g_122 p_1265->g_231 p_1265->g_235 p_1265->g_314 p_1265->g_244 p_1265->g_194 p_1265->g_227 p_1265->g_239 p_1265->g_252 p_1265->g_543 p_1265->g_19 p_1265->g_326 p_1265->g_431.f0 p_1265->g_13 p_1265->g_608 p_1265->g_477.f0 p_1265->g_15 p_1265->g_21 p_1265->g_607 p_1265->g_664 p_1265->g_684 p_1265->g_257
 * writes: p_1265->g_20 p_1265->g_70 p_1265->g_80 p_1265->g_84 p_1265->g_114 p_1265->g_15.f2 p_1265->g_124 p_1265->g_65 p_1265->g_144 p_1265->g_146 p_1265->g_122 p_1265->g_239 p_1265->g_225 p_1265->g_14 p_1265->g_231 p_1265->g_327 p_1265->g_639 p_1265->g_326 p_1265->g_431.f0
 */
int8_t * func_30(int8_t * p_31, struct S2 * p_1265)
{ /* block id: 19 */
    int64_t l_40[10][2][5] = {{{0x40AE7762969FBC0AL,(-1L),1L,0x21BD053A6575E0ADL,(-1L)},{0x40AE7762969FBC0AL,(-1L),1L,0x21BD053A6575E0ADL,(-1L)}},{{0x40AE7762969FBC0AL,(-1L),1L,0x21BD053A6575E0ADL,(-1L)},{0x40AE7762969FBC0AL,(-1L),1L,0x21BD053A6575E0ADL,(-1L)}},{{0x40AE7762969FBC0AL,(-1L),1L,0x21BD053A6575E0ADL,(-1L)},{0x40AE7762969FBC0AL,(-1L),1L,0x21BD053A6575E0ADL,(-1L)}},{{0x40AE7762969FBC0AL,(-1L),1L,0x21BD053A6575E0ADL,(-1L)},{0x40AE7762969FBC0AL,(-1L),1L,0x21BD053A6575E0ADL,(-1L)}},{{0x40AE7762969FBC0AL,(-1L),1L,0x21BD053A6575E0ADL,(-1L)},{0x40AE7762969FBC0AL,(-1L),1L,0x21BD053A6575E0ADL,(-1L)}},{{0x40AE7762969FBC0AL,(-1L),1L,0x21BD053A6575E0ADL,(-1L)},{0x40AE7762969FBC0AL,(-1L),1L,0x21BD053A6575E0ADL,(-1L)}},{{0x40AE7762969FBC0AL,(-1L),1L,0x21BD053A6575E0ADL,(-1L)},{0x40AE7762969FBC0AL,(-1L),1L,0x21BD053A6575E0ADL,(-1L)}},{{0x40AE7762969FBC0AL,(-1L),1L,0x21BD053A6575E0ADL,(-1L)},{0x40AE7762969FBC0AL,(-1L),1L,0x21BD053A6575E0ADL,(-1L)}},{{0x40AE7762969FBC0AL,(-1L),1L,0x21BD053A6575E0ADL,(-1L)},{0x40AE7762969FBC0AL,(-1L),1L,0x21BD053A6575E0ADL,(-1L)}},{{0x40AE7762969FBC0AL,(-1L),1L,0x21BD053A6575E0ADL,(-1L)},{0x40AE7762969FBC0AL,(-1L),1L,0x21BD053A6575E0ADL,(-1L)}}};
    int8_t *l_64[7] = {&p_1265->g_65[2][2],&p_1265->g_65[2][2],&p_1265->g_65[2][2],&p_1265->g_65[2][2],&p_1265->g_65[2][2],&p_1265->g_65[2][2],&p_1265->g_65[2][2]};
    int32_t l_68 = 0x3E176CBFL;
    int16_t *l_69 = &p_1265->g_70;
    uint32_t l_71[1];
    uint8_t l_72[2][7] = {{251UL,251UL,7UL,0UL,251UL,0UL,7UL},{251UL,251UL,7UL,0UL,251UL,0UL,7UL}};
    int32_t *l_73 = (void*)0;
    int32_t *l_83 = &p_1265->g_84[2][2];
    uint32_t *l_200 = (void*)0;
    uint32_t *l_202 = (void*)0;
    uint32_t *l_203 = (void*)0;
    uint32_t *l_204 = (void*)0;
    uint32_t *l_205[3][6] = {{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}};
    VECTOR(int32_t, 16) l_206 = (VECTOR(int32_t, 16))(4L, (VECTOR(int32_t, 4))(4L, (VECTOR(int32_t, 2))(4L, 0x2BCD8AEFL), 0x2BCD8AEFL), 0x2BCD8AEFL, 4L, 0x2BCD8AEFL, (VECTOR(int32_t, 2))(4L, 0x2BCD8AEFL), (VECTOR(int32_t, 2))(4L, 0x2BCD8AEFL), 4L, 0x2BCD8AEFL, 4L, 0x2BCD8AEFL);
    int32_t **l_634[2];
    int32_t ***l_633 = &l_634[1];
    int32_t **l_636 = &p_1265->g_14;
    int32_t ***l_635 = &l_636;
    int32_t **l_638 = &l_73;
    int32_t ***l_637[1][2];
    VECTOR(int32_t, 2) l_640 = (VECTOR(int32_t, 2))(0x0041365FL, 6L);
    VECTOR(int64_t, 16) l_680 = (VECTOR(int64_t, 16))(0x6EC35466C99F2D19L, (VECTOR(int64_t, 4))(0x6EC35466C99F2D19L, (VECTOR(int64_t, 2))(0x6EC35466C99F2D19L, 0x6B30DA891C480BF0L), 0x6B30DA891C480BF0L), 0x6B30DA891C480BF0L, 0x6EC35466C99F2D19L, 0x6B30DA891C480BF0L, (VECTOR(int64_t, 2))(0x6EC35466C99F2D19L, 0x6B30DA891C480BF0L), (VECTOR(int64_t, 2))(0x6EC35466C99F2D19L, 0x6B30DA891C480BF0L), 0x6EC35466C99F2D19L, 0x6B30DA891C480BF0L, 0x6EC35466C99F2D19L, 0x6B30DA891C480BF0L);
    int i, j, k;
    for (i = 0; i < 1; i++)
        l_71[i] = 0x45D781F8L;
    for (i = 0; i < 2; i++)
        l_634[i] = (void*)0;
    for (i = 0; i < 1; i++)
    {
        for (j = 0; j < 2; j++)
            l_637[i][j] = &l_638;
    }
    p_1265->g_326.s5 ^= ((*p_1265->g_19) = (safe_add_func_uint64_t_u_u(0UL, ((+(((~p_1265->g_15.f1) <= ((p_1265->g_639[6] = ((*l_635) = ((*l_633) = func_35(l_40[6][0][3], l_40[6][0][3], func_41((l_206.s2 = func_47(((*l_83) = func_52(((((VECTOR(uint8_t, 8))(251UL, ((VECTOR(uint8_t, 2))(p_1265->g_55.xz)), ((VECTOR(uint8_t, 4))(p_1265->g_56.s0122)), 0UL)).s6 < (((VECTOR(uint32_t, 16))((((safe_unary_minus_func_int8_t_s((-1L))) ^ (((~(safe_mul_func_int16_t_s_s(((VECTOR(int16_t, 4))(l_40[6][0][3], (-10L), 0L, 1L)).x, ((*l_69) = (l_68 &= func_60(l_64[2], ((l_40[9][1][2] & l_40[0][0][3]) , 0UL), l_40[1][1][4], p_1265)))))) > l_40[6][0][3]) > p_1265->g_21[3][1].f0)) | p_1265->g_55.w), l_40[6][0][3], l_71[0], l_72[0][4], 4294967295UL, 0x79EF6EAEL, ((VECTOR(uint32_t, 4))(0x46388D17L)), ((VECTOR(uint32_t, 2))(0xFA2FCAAFL)), ((VECTOR(uint32_t, 4))(1UL)))).s9 || l_72[0][4])) , (void*)0), l_73, p_1265)), l_83, &p_1265->g_6[2], p_1265->g_65[2][2], p_1265)), &l_73, p_1265->g_6[2], l_71[0], l_64[6], p_1265), l_71[0], p_1265)))) == (void*)0)) , p_1265->g_65[2][2])) != p_1265->g_543.s5))));
    if (((VECTOR(int32_t, 16))(l_640.yxyxyyyyxxxyxyxy)).s6)
    { /* block id: 256 */
        int64_t l_646[8][6][5] = {{{1L,0L,1L,0x56426BB727783D4EL,0L},{1L,0L,1L,0x56426BB727783D4EL,0L},{1L,0L,1L,0x56426BB727783D4EL,0L},{1L,0L,1L,0x56426BB727783D4EL,0L},{1L,0L,1L,0x56426BB727783D4EL,0L},{1L,0L,1L,0x56426BB727783D4EL,0L}},{{1L,0L,1L,0x56426BB727783D4EL,0L},{1L,0L,1L,0x56426BB727783D4EL,0L},{1L,0L,1L,0x56426BB727783D4EL,0L},{1L,0L,1L,0x56426BB727783D4EL,0L},{1L,0L,1L,0x56426BB727783D4EL,0L},{1L,0L,1L,0x56426BB727783D4EL,0L}},{{1L,0L,1L,0x56426BB727783D4EL,0L},{1L,0L,1L,0x56426BB727783D4EL,0L},{1L,0L,1L,0x56426BB727783D4EL,0L},{1L,0L,1L,0x56426BB727783D4EL,0L},{1L,0L,1L,0x56426BB727783D4EL,0L},{1L,0L,1L,0x56426BB727783D4EL,0L}},{{1L,0L,1L,0x56426BB727783D4EL,0L},{1L,0L,1L,0x56426BB727783D4EL,0L},{1L,0L,1L,0x56426BB727783D4EL,0L},{1L,0L,1L,0x56426BB727783D4EL,0L},{1L,0L,1L,0x56426BB727783D4EL,0L},{1L,0L,1L,0x56426BB727783D4EL,0L}},{{1L,0L,1L,0x56426BB727783D4EL,0L},{1L,0L,1L,0x56426BB727783D4EL,0L},{1L,0L,1L,0x56426BB727783D4EL,0L},{1L,0L,1L,0x56426BB727783D4EL,0L},{1L,0L,1L,0x56426BB727783D4EL,0L},{1L,0L,1L,0x56426BB727783D4EL,0L}},{{1L,0L,1L,0x56426BB727783D4EL,0L},{1L,0L,1L,0x56426BB727783D4EL,0L},{1L,0L,1L,0x56426BB727783D4EL,0L},{1L,0L,1L,0x56426BB727783D4EL,0L},{1L,0L,1L,0x56426BB727783D4EL,0L},{1L,0L,1L,0x56426BB727783D4EL,0L}},{{1L,0L,1L,0x56426BB727783D4EL,0L},{1L,0L,1L,0x56426BB727783D4EL,0L},{1L,0L,1L,0x56426BB727783D4EL,0L},{1L,0L,1L,0x56426BB727783D4EL,0L},{1L,0L,1L,0x56426BB727783D4EL,0L},{1L,0L,1L,0x56426BB727783D4EL,0L}},{{1L,0L,1L,0x56426BB727783D4EL,0L},{1L,0L,1L,0x56426BB727783D4EL,0L},{1L,0L,1L,0x56426BB727783D4EL,0L},{1L,0L,1L,0x56426BB727783D4EL,0L},{1L,0L,1L,0x56426BB727783D4EL,0L},{1L,0L,1L,0x56426BB727783D4EL,0L}}};
        int32_t l_647 = 0x01304E11L;
        uint16_t *l_652 = &p_1265->g_21[3][1].f0;
        uint16_t **l_651 = &l_652;
        uint16_t ***l_653 = &l_651;
        int i, j, k;
        for (p_1265->g_431.f0 = (-20); (p_1265->g_431.f0 >= 17); p_1265->g_431.f0 = safe_add_func_int32_t_s_s(p_1265->g_431.f0, 3))
        { /* block id: 259 */
            VECTOR(int32_t, 8) l_645 = (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x63F24A5AL), 0x63F24A5AL), 0x63F24A5AL, 1L, 0x63F24A5AL);
            int i;
            for (p_1265->g_15.f2 = 0; (p_1265->g_15.f2 >= (-12)); --p_1265->g_15.f2)
            { /* block id: 262 */
                uint64_t l_648 = 0x8B98AABF299BA90AL;
                if ((*p_1265->g_19))
                    break;
                ++l_648;
                return &p_1265->g_65[0][1];
            }
            (*l_638) = (*p_1265->g_13);
        }
        (*l_653) = l_651;
    }
    else
    { /* block id: 270 */
        uint8_t *l_658 = &p_1265->g_114;
        int32_t l_661 = 0x2C0AB3F6L;
        int32_t **l_662 = &l_73;
        VECTOR(uint8_t, 16) l_663 = (VECTOR(uint8_t, 16))(0xE5L, (VECTOR(uint8_t, 4))(0xE5L, (VECTOR(uint8_t, 2))(0xE5L, 5UL), 5UL), 5UL, 0xE5L, 5UL, (VECTOR(uint8_t, 2))(0xE5L, 5UL), (VECTOR(uint8_t, 2))(0xE5L, 5UL), 0xE5L, 5UL, 0xE5L, 5UL);
        uint8_t l_666 = 0UL;
        uint32_t l_677 = 0UL;
        VECTOR(int32_t, 4) l_678 = (VECTOR(int32_t, 4))(0x241101CCL, (VECTOR(int32_t, 2))(0x241101CCL, (-5L)), (-5L));
        int64_t *l_679 = &p_1265->g_15.f2;
        int64_t *l_681 = &l_40[6][0][3];
        int16_t **l_686 = &l_69;
        int16_t ***l_685 = &l_686;
        uint32_t l_689 = 4294967287UL;
        uint16_t l_690 = 0xE083L;
        int i;
        l_661 = (safe_add_func_uint32_t_u_u(((((~(safe_div_func_int16_t_s_s((((-3L) <= (((*l_658) &= p_1265->g_608.x) < (safe_div_func_uint64_t_u_u((&p_1265->g_19 == ((*l_635) = ((2L & (l_661 ^ ((VECTOR(uint8_t, 4))(p_1265->g_477[0][1][5].f0, GROUP_DIVERGE(2, 1), 249UL, 0xF8L)).z)) , (((func_11(p_1265->g_608.x, p_1265) , (&p_1265->g_239 != (void*)0)) && p_1265->g_607.w) , l_662)))), 0x5187E8A61A886824L)))) < l_663.sc), p_1265->g_231.w))) , (void*)0) == p_1265->g_664) | p_1265->g_65[2][2]), l_666));
        l_661 = ((safe_lshift_func_int8_t_s_u((safe_sub_func_int16_t_s_s(((((safe_sub_func_int64_t_s_s(((*l_679) = (safe_add_func_int32_t_s_s((safe_mul_func_uint8_t_u_u(l_663.s9, l_677)), ((VECTOR(int32_t, 16))(l_678.wyzxxywwywzxwzwz)).s8))), ((*l_681) |= ((VECTOR(int64_t, 16))(mul_hi(((VECTOR(int64_t, 2))(l_680.sa1)).yxxxyyyxyyxyxyxx, ((VECTOR(int64_t, 2))((-1L), 0x5ED9D016767FC77CL)).xyyxxxyyxxxxyyyx))).s7))) ^ (safe_add_func_int32_t_s_s(l_678.x, (*p_1265->g_19)))) && l_678.z) , (((*l_69) = (p_1265->g_684[5][4][1] , (((*l_685) = &l_69) == &l_69))) || (((safe_mul_func_int16_t_s_s(1L, p_1265->g_2)) > l_689) > 4294967295UL))), p_1265->g_257.x)), 7)) && p_1265->g_15.f0);
        l_690--;
    }
    (*l_638) = (void*)0;
    return &p_1265->g_65[1][2];
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes:
 */
int32_t ** func_35(int16_t  p_36, int8_t  p_37, int32_t ** p_38, int64_t  p_39, struct S2 * p_1265)
{ /* block id: 249 */
    int32_t **l_632 = (void*)0;
    return l_632;
}


/* ------------------------------------------ */
/* 
 * reads : p_1265->g_70 p_1265->g_122 p_1265->g_65 p_1265->g_14 p_1265->g_2 p_1265->g_6 p_1265->g_80 p_1265->g_56 p_1265->g_231 p_1265->g_235 p_1265->g_314 p_1265->g_244 p_1265->g_114 p_1265->g_194 p_1265->g_20 p_1265->g_227 p_1265->g_239 p_1265->g_252
 * writes: p_1265->g_70 p_1265->g_122 p_1265->g_239 p_1265->g_15.f2 p_1265->g_225 p_1265->g_80 p_1265->g_65 p_1265->g_20 p_1265->g_14 p_1265->g_231 p_1265->g_327
 */
int32_t ** func_41(uint32_t  p_42, int32_t ** p_43, uint32_t  p_44, int16_t  p_45, int8_t * p_46, struct S2 * p_1265)
{ /* block id: 70 */
    int32_t *l_214[8] = {(void*)0,&p_1265->g_84[0][5],(void*)0,(void*)0,&p_1265->g_84[0][5],(void*)0,(void*)0,&p_1265->g_84[0][5]};
    VECTOR(uint32_t, 8) l_233 = (VECTOR(uint32_t, 8))(4294967295UL, (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 0x326E3285L), 0x326E3285L), 0x326E3285L, 4294967295UL, 0x326E3285L);
    VECTOR(uint32_t, 8) l_234 = (VECTOR(uint32_t, 8))(7UL, (VECTOR(uint32_t, 4))(7UL, (VECTOR(uint32_t, 2))(7UL, 9UL), 9UL), 9UL, 7UL, 9UL);
    VECTOR(uint32_t, 8) l_258 = (VECTOR(uint32_t, 8))(0x17CE2811L, (VECTOR(uint32_t, 4))(0x17CE2811L, (VECTOR(uint32_t, 2))(0x17CE2811L, 1UL), 1UL), 1UL, 0x17CE2811L, 1UL);
    int32_t l_263 = 0x7760D450L;
    VECTOR(int32_t, 8) l_265 = (VECTOR(int32_t, 8))((-6L), (VECTOR(int32_t, 4))((-6L), (VECTOR(int32_t, 2))((-6L), (-1L)), (-1L)), (-1L), (-6L), (-1L));
    uint64_t *l_290 = &p_1265->g_239;
    uint64_t *l_291[2][2];
    uint32_t l_294 = 7UL;
    VECTOR(int8_t, 16) l_320 = (VECTOR(int8_t, 16))(0L, (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, 0x41L), 0x41L), 0x41L, 0L, 0x41L, (VECTOR(int8_t, 2))(0L, 0x41L), (VECTOR(int8_t, 2))(0L, 0x41L), 0L, 0x41L, 0L, 0x41L);
    int32_t l_330 = 1L;
    int8_t l_343 = 0x2BL;
    int64_t *l_370 = &p_1265->g_15.f2;
    int64_t **l_369 = &l_370;
    int64_t ***l_368 = &l_369;
    VECTOR(uint64_t, 4) l_383 = (VECTOR(uint64_t, 4))(0x33AA8CCAB275EA59L, (VECTOR(uint64_t, 2))(0x33AA8CCAB275EA59L, 18446744073709551614UL), 18446744073709551614UL);
    VECTOR(int8_t, 8) l_384 = (VECTOR(int8_t, 8))(0x15L, (VECTOR(int8_t, 4))(0x15L, (VECTOR(int8_t, 2))(0x15L, 0x7AL), 0x7AL), 0x7AL, 0x15L, 0x7AL);
    VECTOR(int8_t, 4) l_387 = (VECTOR(int8_t, 4))((-2L), (VECTOR(int8_t, 2))((-2L), 1L), 1L);
    int16_t *l_399 = &p_1265->g_70;
    uint8_t l_407 = 0UL;
    int16_t l_471 = 0x47B2L;
    union U1 *l_473 = &p_1265->g_474;
    uint32_t l_546 = 2UL;
    int32_t *l_578 = (void*)0;
    VECTOR(int8_t, 2) l_602 = (VECTOR(int8_t, 2))((-1L), (-1L));
    int32_t **l_620 = (void*)0;
    VECTOR(int64_t, 8) l_626 = (VECTOR(int64_t, 8))(0x56E98E3829D37FC9L, (VECTOR(int64_t, 4))(0x56E98E3829D37FC9L, (VECTOR(int64_t, 2))(0x56E98E3829D37FC9L, 3L), 3L), 3L, 0x56E98E3829D37FC9L, 3L);
    int i, j;
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 2; j++)
            l_291[i][j] = &p_1265->g_239;
    }
lbl_373:
    for (p_1265->g_70 = (-12); (p_1265->g_70 >= (-6)); p_1265->g_70 = safe_add_func_uint16_t_u_u(p_1265->g_70, 1))
    { /* block id: 73 */
        VECTOR(int32_t, 4) l_211 = (VECTOR(int32_t, 4))((-7L), (VECTOR(int32_t, 2))((-7L), 0x1276FEF8L), 0x1276FEF8L);
        VECTOR(int16_t, 8) l_224 = (VECTOR(int16_t, 8))((-3L), (VECTOR(int16_t, 4))((-3L), (VECTOR(int16_t, 2))((-3L), 0x3171L), 0x3171L), 0x3171L, (-3L), 0x3171L);
        VECTOR(int32_t, 8) l_228 = (VECTOR(int32_t, 8))(4L, (VECTOR(int32_t, 4))(4L, (VECTOR(int32_t, 2))(4L, 0x1FD824A0L), 0x1FD824A0L), 0x1FD824A0L, 4L, 0x1FD824A0L);
        int32_t *l_242 = (void*)0;
        struct S0 *l_272[5];
        int i;
        for (i = 0; i < 5; i++)
            l_272[i] = &p_1265->g_273;
        (*p_43) = (void*)0;
        for (p_1265->g_122 = 0; (p_1265->g_122 <= (-14)); p_1265->g_122 = safe_sub_func_int16_t_s_s(p_1265->g_122, 2))
        { /* block id: 77 */
            int32_t l_215 = 1L;
            uint16_t *l_223[3];
            uint32_t *l_226 = &p_1265->g_227[1];
            VECTOR(uint32_t, 16) l_229 = (VECTOR(uint32_t, 16))(0xF7825D73L, (VECTOR(uint32_t, 4))(0xF7825D73L, (VECTOR(uint32_t, 2))(0xF7825D73L, 0xBB7738A4L), 0xBB7738A4L), 0xBB7738A4L, 0xF7825D73L, 0xBB7738A4L, (VECTOR(uint32_t, 2))(0xF7825D73L, 0xBB7738A4L), (VECTOR(uint32_t, 2))(0xF7825D73L, 0xBB7738A4L), 0xF7825D73L, 0xBB7738A4L, 0xF7825D73L, 0xBB7738A4L);
            int32_t l_251 = 0x66142BF0L;
            struct S0 **l_274 = &l_272[0];
            int64_t **l_275 = (void*)0;
            int64_t ***l_276 = &l_275;
            int i;
            for (i = 0; i < 3; i++)
                l_223[i] = &p_1265->g_80;
            if (((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))(min(((VECTOR(int32_t, 2))(l_211.yx)).yyyy, (int32_t)((safe_add_func_uint64_t_u_u(((l_214[3] == (void*)0) || (l_215 && ((safe_add_func_int8_t_s_s(((void*)0 == l_214[3]), 0x68L)) , ((VECTOR(uint16_t, 16))(clz(((VECTOR(uint16_t, 16))(0x7DA0L, ((VECTOR(uint16_t, 2))(hadd(((VECTOR(uint16_t, 4))(((VECTOR(uint16_t, 2))(0xC269L, 0x0AE3L)).xxyx)).even, ((VECTOR(uint16_t, 2))(p_1265->g_218.s34))))), ((safe_mod_func_uint64_t_u_u((safe_mul_func_uint16_t_u_u((p_1265->g_80 |= 5UL), ((VECTOR(int16_t, 8))(l_224.s45111203)).s4)), (((((VECTOR(int32_t, 2))(p_1265->g_225.yw)).odd >= (&p_44 != l_226)) , 0x6DE3L) && FAKE_DIVERGE(p_1265->local_0_offset, get_local_id(0), 10)))) >= p_45), FAKE_DIVERGE(p_1265->group_2_offset, get_group_id(2), 10), 0UL, 0x6829L, ((VECTOR(uint16_t, 4))(0x2292L)), 0xCA8FL, 0x4A0FL, 0x23C4L, 65531UL, 0xC9ACL))))).sd))), FAKE_DIVERGE(p_1265->local_0_offset, get_local_id(0), 10))) >= (-8L))))).xzwwzzzw)).s5)
            { /* block id: 79 */
                uint64_t *l_238 = &p_1265->g_239;
                int32_t **l_243 = &l_242;
                l_211.y = ((VECTOR(int32_t, 4))((*p_1265->g_14), ((VECTOR(int32_t, 2))(l_228.s31)), 0x1DE7AC82L)).y;
                if (l_215)
                    continue;
                (*p_43) = (((VECTOR(uint32_t, 16))(mad_sat(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 16))(safe_mul24_func_uint32_t_u_u(VECTOR(uint32_t, 16),((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))(0x87B1EFD4L, 0x1492F79EL)).yyyxyxyyxxxyyxxy)))), ((VECTOR(uint32_t, 4))(add_sat(((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 4))(l_229.s0422)), ((VECTOR(uint32_t, 8))(p_1265->g_230.zzzywyxy)), 1UL, 0xE1F43CF0L, 0xB0FE699EL, 0x8FA146DEL)).sbd74, ((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 16))(p_1265->g_231.yxyxwyywzzxxzxxz)).s527c)), ((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 16))(abs_diff(((VECTOR(int32_t, 2))(p_1265->g_232.zy)).xyyxxxyxxyxyxxyy, ((VECTOR(int32_t, 8))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 4))((p_1265->g_230.x , l_215), 0x1D5FEB8AL, 0L, 0x3BF4FE60L)), 0x10758DACL, 0L, 0x6BCAD0B6L, 0x222A9C7AL)))).s0364336530701446))).sfb8e)))).hi))).wywyzxzxwwxyzzyw))))).even)).s2527733050322262, ((VECTOR(uint32_t, 16))(l_233.s0751215522522021)), ((VECTOR(uint32_t, 8))(0UL, 0x84E1F444L, ((VECTOR(uint32_t, 4))(mul_hi(((VECTOR(uint32_t, 8))(((VECTOR(uint32_t, 2))(((VECTOR(uint32_t, 4))(l_234.s4376)).odd)), ((VECTOR(uint32_t, 4))(4UL, ((VECTOR(uint32_t, 2))(mul_hi(((VECTOR(uint32_t, 2))(min(((VECTOR(uint32_t, 4))(p_1265->g_235.sd26d)).lo, (uint32_t)((--(*l_238)) != (((*l_243) = l_242) == (void*)0))))), ((VECTOR(uint32_t, 16))(((VECTOR(uint32_t, 2))(p_1265->g_244.s41)).yxyxyyxyyxyyyxxx)).sa7))), 4294967295UL)), 4294967287UL, 0xB2A7DBF5L)).hi, ((VECTOR(uint32_t, 8))((((safe_mul_func_uint8_t_u_u(((safe_sub_func_uint64_t_u_u((l_251 ^= (++(*l_238))), ((VECTOR(int64_t, 2))(((VECTOR(int64_t, 8))((-1L), 0x02288B616A7A5AFDL, ((VECTOR(int64_t, 4))(sub_sat(((VECTOR(int64_t, 4))(p_1265->g_252.yyxy)), ((VECTOR(int64_t, 2))(8L, 1L)).yxyy))), 6L, 0x7B2C7E0AD0DFBB70L)).s31)).hi)) != (p_45 <= (safe_add_func_int64_t_s_s((safe_rshift_func_int16_t_s_s((((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 4))(((VECTOR(uint32_t, 8))(max(((VECTOR(uint32_t, 4))(p_1265->g_257.xyxy)).zwxzzyxy, ((VECTOR(uint32_t, 2))(l_258.s42)).xxyxxyyx))).hi)))).w > (((*p_1265->g_14) >= ((FAKE_DIVERGE(p_1265->group_1_offset, get_group_id(1), 10) >= ((safe_lshift_func_uint16_t_u_s(5UL, l_211.w)) , (8UL & 0x8F1CL))) == 18446744073709551615UL)) & 0x2CEFF6CCFB443967L)), 9)), 0x616235A88E179292L)))), p_45)) , l_243) != (void*)0), 7UL, 9UL, ((VECTOR(uint32_t, 4))(4294967293UL)), 4294967293UL)).lo))), 0UL, 4294967295UL)).s5024465200706006))).sc , &p_1265->g_6[2]);
            }
            else
            { /* block id: 87 */
                uint64_t l_266 = 18446744073709551615UL;
                (*p_43) = (*p_43);
                for (p_1265->g_239 = 22; (p_1265->g_239 == 29); p_1265->g_239++)
                { /* block id: 91 */
                    int32_t *l_264[6][9] = {{&p_1265->g_20,&l_263,&l_263,&p_1265->g_20,&l_263,&p_1265->g_20,&p_1265->g_20,&l_263,&p_1265->g_20},{&p_1265->g_20,&l_263,&l_263,&p_1265->g_20,&l_263,&p_1265->g_20,&p_1265->g_20,&l_263,&p_1265->g_20},{&p_1265->g_20,&l_263,&l_263,&p_1265->g_20,&l_263,&p_1265->g_20,&p_1265->g_20,&l_263,&p_1265->g_20},{&p_1265->g_20,&l_263,&l_263,&p_1265->g_20,&l_263,&p_1265->g_20,&p_1265->g_20,&l_263,&p_1265->g_20},{&p_1265->g_20,&l_263,&l_263,&p_1265->g_20,&l_263,&p_1265->g_20,&p_1265->g_20,&l_263,&p_1265->g_20},{&p_1265->g_20,&l_263,&l_263,&p_1265->g_20,&l_263,&p_1265->g_20,&p_1265->g_20,&l_263,&p_1265->g_20}};
                    int64_t *l_271 = &p_1265->g_15.f2;
                    int i, j;
                    l_266--;
                    p_1265->g_225.w = ((safe_rshift_func_int8_t_s_u((*p_46), (((*p_43) = (void*)0) != (void*)0))) >= ((*l_271) = 0x42D2A2D980F16952L));
                }
            }
            (*l_274) = l_272[0];
            if ((*p_1265->g_14))
                continue;
            (*l_276) = l_275;
        }
    }
    for (p_1265->g_80 = 0; (p_1265->g_80 != 10); p_1265->g_80++)
    { /* block id: 105 */
        VECTOR(int32_t, 8) l_281 = (VECTOR(int32_t, 8))(0x7CADD65BL, (VECTOR(int32_t, 4))(0x7CADD65BL, (VECTOR(int32_t, 2))(0x7CADD65BL, 0x1DF2DC09L), 0x1DF2DC09L), 0x1DF2DC09L, 0x7CADD65BL, 0x1DF2DC09L);
        int32_t **l_309 = &l_214[3];
        int64_t *l_333 = &p_1265->g_122;
        int64_t **l_332 = &l_333;
        int64_t ***l_331 = &l_332;
        uint8_t l_345 = 253UL;
        VECTOR(int8_t, 2) l_376 = (VECTOR(int8_t, 2))(0x5CL, 0x5AL);
        VECTOR(uint64_t, 8) l_382 = (VECTOR(uint64_t, 8))(3UL, (VECTOR(uint64_t, 4))(3UL, (VECTOR(uint64_t, 2))(3UL, 18446744073709551611UL), 18446744073709551611UL), 18446744073709551611UL, 3UL, 18446744073709551611UL);
        VECTOR(int8_t, 4) l_386 = (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 7L), 7L);
        VECTOR(int8_t, 2) l_390 = (VECTOR(int8_t, 2))(0x50L, 0x1CL);
        VECTOR(uint8_t, 2) l_396 = (VECTOR(uint8_t, 2))(0x51L, 0xAAL);
        int32_t *l_405 = (void*)0;
        VECTOR(uint16_t, 4) l_418 = (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 65535UL), 65535UL);
        VECTOR(uint16_t, 8) l_419 = (VECTOR(uint16_t, 8))(0x13BCL, (VECTOR(uint16_t, 4))(0x13BCL, (VECTOR(uint16_t, 2))(0x13BCL, 65535UL), 65535UL), 65535UL, 0x13BCL, 65535UL);
        uint64_t l_448 = 18446744073709551615UL;
        VECTOR(uint32_t, 16) l_486 = (VECTOR(uint32_t, 16))(0x64E8C9E3L, (VECTOR(uint32_t, 4))(0x64E8C9E3L, (VECTOR(uint32_t, 2))(0x64E8C9E3L, 0xEAEB9B8AL), 0xEAEB9B8AL), 0xEAEB9B8AL, 0x64E8C9E3L, 0xEAEB9B8AL, (VECTOR(uint32_t, 2))(0x64E8C9E3L, 0xEAEB9B8AL), (VECTOR(uint32_t, 2))(0x64E8C9E3L, 0xEAEB9B8AL), 0x64E8C9E3L, 0xEAEB9B8AL, 0x64E8C9E3L, 0xEAEB9B8AL);
        int8_t l_497[6][2][3] = {{{0L,9L,0x63L},{0L,9L,0x63L}},{{0L,9L,0x63L},{0L,9L,0x63L}},{{0L,9L,0x63L},{0L,9L,0x63L}},{{0L,9L,0x63L},{0L,9L,0x63L}},{{0L,9L,0x63L},{0L,9L,0x63L}},{{0L,9L,0x63L},{0L,9L,0x63L}}};
        VECTOR(uint32_t, 4) l_502 = (VECTOR(uint32_t, 4))(4294967295UL, (VECTOR(uint32_t, 2))(4294967295UL, 1UL), 1UL);
        VECTOR(uint16_t, 8) l_582 = (VECTOR(uint16_t, 8))(0UL, (VECTOR(uint16_t, 4))(0UL, (VECTOR(uint16_t, 2))(0UL, 0x8F61L), 0x8F61L), 0x8F61L, 0UL, 0x8F61L);
        VECTOR(uint32_t, 4) l_598 = (VECTOR(uint32_t, 4))(0xE7BC86E5L, (VECTOR(uint32_t, 2))(0xE7BC86E5L, 0xD3E140E3L), 0xD3E140E3L);
        VECTOR(int64_t, 16) l_627 = (VECTOR(int64_t, 16))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), 0x74F78E560757A7A5L), 0x74F78E560757A7A5L), 0x74F78E560757A7A5L, (-1L), 0x74F78E560757A7A5L, (VECTOR(int64_t, 2))((-1L), 0x74F78E560757A7A5L), (VECTOR(int64_t, 2))((-1L), 0x74F78E560757A7A5L), (-1L), 0x74F78E560757A7A5L, (-1L), 0x74F78E560757A7A5L);
        int i, j, k;
        for (p_45 = 16; (p_45 != 11); p_45--)
        { /* block id: 108 */
            int32_t *l_282[7];
            uint16_t l_283 = 0xD4D0L;
            int i;
            for (i = 0; i < 7; i++)
                l_282[i] = (void*)0;
            l_281.s7 = ((VECTOR(int32_t, 8))(l_281.s60413113)).s4;
            --l_283;
        }
        for (p_42 = 18; (p_42 >= 1); p_42 = safe_sub_func_uint64_t_u_u(p_42, 2))
        { /* block id: 114 */
            uint32_t l_292 = 1UL;
            int32_t *l_293[8];
            int64_t ***l_334 = &l_332;
            int i;
            for (i = 0; i < 8; i++)
                l_293[i] = (void*)0;
            l_281.s2 = (l_265.s5 = (!(((*p_46) = (0x4F4BDD3EL | l_258.s0)) < (0x7C996117DFC8C10DL <= (((l_290 = &p_1265->g_239) != l_291[1][1]) <= l_292)))));
            if (l_294)
            { /* block id: 119 */
                uint16_t l_312 = 0xB8F5L;
                uint16_t *l_313 = (void*)0;
                p_1265->g_20 |= (safe_lshift_func_uint16_t_u_s(((safe_add_func_int8_t_s_s(((safe_sub_func_int64_t_s_s((p_45 < (((*p_46) || (safe_add_func_uint64_t_u_u(p_1265->g_56.s0, ((l_281.s4 = (safe_div_func_uint64_t_u_u((safe_add_func_int64_t_s_s(p_1265->g_231.z, (safe_div_func_int16_t_s_s((248UL || ((l_309 != l_309) | (1L >= (safe_rshift_func_uint8_t_u_u((p_1265->g_235.sc ^ FAKE_DIVERGE(p_1265->local_1_offset, get_local_id(1), 10)), 7))))), l_312)))), (-4L)))) || p_45)))) <= 0UL)), 0x1AAE0EBEABCBB65BL)) | p_1265->g_314), p_1265->g_244.s0)) ^ p_1265->g_114), p_1265->g_194.s4));
                return &p_1265->g_14;
            }
            else
            { /* block id: 123 */
                uint16_t l_319 = 0x0D6BL;
                VECTOR(int32_t, 16) l_325 = (VECTOR(int32_t, 16))(0x683ACA40L, (VECTOR(int32_t, 4))(0x683ACA40L, (VECTOR(int32_t, 2))(0x683ACA40L, 0x6A75927BL), 0x6A75927BL), 0x6A75927BL, 0x683ACA40L, 0x6A75927BL, (VECTOR(int32_t, 2))(0x683ACA40L, 0x6A75927BL), (VECTOR(int32_t, 2))(0x683ACA40L, 0x6A75927BL), 0x683ACA40L, 0x6A75927BL, 0x683ACA40L, 0x6A75927BL);
                int64_t l_348 = (-2L);
                uint64_t l_349 = 8UL;
                int32_t *l_364 = (void*)0;
                int32_t **l_363 = &l_364;
                int64_t ***l_372 = &l_369;
                int i;
                if ((((safe_sub_func_int16_t_s_s((safe_mul_func_int8_t_s_s(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 16))(max(((VECTOR(int8_t, 8))(((VECTOR(int8_t, 4))(l_319, ((VECTOR(int8_t, 2))(2L, 0L)), 0x6CL)).zyyzwyyw)).s4777450277352675, ((VECTOR(int8_t, 16))(l_320.s18e689859af5cd88))))).lo)).s3, (~(p_45 , ((l_281.s0 ^ (((safe_add_func_int32_t_s_s(((VECTOR(int32_t, 4))(((VECTOR(int32_t, 8))(((VECTOR(int32_t, 2))(l_325.s2c)).even, ((VECTOR(int32_t, 2))(p_1265->g_326.s24)), ((VECTOR(int32_t, 4))(((VECTOR(int32_t, 2))(p_1265->g_327.s70)), 0L, 0L)), 0x58FFBC86L)).lo)).w, p_1265->g_227[1])) >= ((***l_334) = ((safe_add_func_uint32_t_u_u(p_42, l_330)) >= (l_331 == l_334)))) , (safe_rshift_func_int8_t_s_u((FAKE_DIVERGE(p_1265->group_1_offset, get_group_id(1), 10) <= (safe_add_func_int64_t_s_s((l_265.s6 != 0L), GROUP_DIVERGE(0, 1)))), FAKE_DIVERGE(p_1265->global_1_offset, get_global_id(1), 10))))) > l_281.s7))))), FAKE_DIVERGE(p_1265->group_0_offset, get_group_id(0), 10))) < 0x63AF5582DE014A35L) , p_45))
                { /* block id: 125 */
                    int16_t l_339 = (-1L);
                    int32_t l_340 = 0x78F503F6L;
                    int32_t l_341 = 1L;
                    int32_t l_342 = 0x38BA8A39L;
                    int32_t l_344[10][4];
                    int i, j;
                    for (i = 0; i < 10; i++)
                    {
                        for (j = 0; j < 4; j++)
                            l_344[i][j] = 0L;
                    }
                    l_345--;
                    ++l_349;
                    for (l_340 = 0; (l_340 >= (-27)); --l_340)
                    { /* block id: 130 */
                        l_344[0][1] = (*p_1265->g_14);
                    }
                }
                else
                { /* block id: 133 */
                    int32_t **l_354 = &p_1265->g_14;
                    int32_t **l_365 = &l_364;
                    uint32_t *l_371[9][6] = {{&p_1265->g_227[0],&p_1265->g_227[0],(void*)0,(void*)0,&p_1265->g_227[1],&p_1265->g_227[1]},{&p_1265->g_227[0],&p_1265->g_227[0],(void*)0,(void*)0,&p_1265->g_227[1],&p_1265->g_227[1]},{&p_1265->g_227[0],&p_1265->g_227[0],(void*)0,(void*)0,&p_1265->g_227[1],&p_1265->g_227[1]},{&p_1265->g_227[0],&p_1265->g_227[0],(void*)0,(void*)0,&p_1265->g_227[1],&p_1265->g_227[1]},{&p_1265->g_227[0],&p_1265->g_227[0],(void*)0,(void*)0,&p_1265->g_227[1],&p_1265->g_227[1]},{&p_1265->g_227[0],&p_1265->g_227[0],(void*)0,(void*)0,&p_1265->g_227[1],&p_1265->g_227[1]},{&p_1265->g_227[0],&p_1265->g_227[0],(void*)0,(void*)0,&p_1265->g_227[1],&p_1265->g_227[1]},{&p_1265->g_227[0],&p_1265->g_227[0],(void*)0,(void*)0,&p_1265->g_227[1],&p_1265->g_227[1]},{&p_1265->g_227[0],&p_1265->g_227[0],(void*)0,(void*)0,&p_1265->g_227[1],&p_1265->g_227[1]}};
                    int i, j;
                    l_281.s3 = ((((*p_43) = (void*)0) == ((*l_354) = &p_1265->g_6[2])) | (safe_rshift_func_int16_t_s_u((((safe_lshift_func_uint16_t_u_u((safe_add_func_int16_t_s_s((safe_div_func_int64_t_s_s((l_363 != l_365), ((safe_lshift_func_int8_t_s_s((p_1265->g_65[4][2] >= (7UL == (((l_368 != (((p_1265->g_231.x = 3UL) >= p_1265->g_239) , l_372)) || l_343) == p_1265->g_244.s5))), (*p_46))) | 0x5871EF90L))), p_1265->g_252.x)), 7)) < l_349) || 0x5C02C462E4E894DEL), l_349)));
                    p_1265->g_327.s3 = p_44;
                    if (l_345)
                        goto lbl_373;
                }
                (*p_43) = &p_1265->g_2;
            }
        }
        (*p_43) = &l_330;
    }
    return &p_1265->g_14;
}


/* ------------------------------------------ */
/* 
 * reads : p_1265->g_14 p_1265->g_2 p_1265->g_6 p_1265->g_65 p_1265->g_84 p_1265->g_70 p_1265->g_20 p_1265->g_114 p_1265->g_15.f2 p_1265->g_124 p_1265->g_142 p_1265->g_80 p_1265->g_21.f2 p_1265->g_143 p_1265->g_146 p_1265->g_55 p_1265->g_122
 * writes: p_1265->g_84 p_1265->g_20 p_1265->g_114 p_1265->g_15.f2 p_1265->g_124 p_1265->g_65 p_1265->g_144 p_1265->g_146 p_1265->g_70 p_1265->g_122
 */
uint32_t  func_47(int32_t  p_48, int32_t * p_49, int32_t * p_50, uint64_t  p_51, struct S2 * p_1265)
{ /* block id: 29 */
    int16_t *l_91 = &p_1265->g_70;
    int32_t l_92 = 0x4704B525L;
    VECTOR(uint32_t, 2) l_95 = (VECTOR(uint32_t, 2))(0x86306CF3L, 0x9137EFE7L);
    int32_t **l_96 = (void*)0;
    int32_t *l_98 = &p_1265->g_84[2][2];
    int32_t **l_97 = &l_98;
    int32_t *l_103 = &p_1265->g_20;
    int32_t *l_104 = &l_92;
    int32_t *l_105 = &p_1265->g_20;
    int32_t *l_106 = &l_92;
    int32_t *l_107 = (void*)0;
    int32_t *l_108 = &p_1265->g_20;
    int32_t *l_109 = &p_1265->g_20;
    int32_t *l_110 = (void*)0;
    int32_t *l_111 = &l_92;
    int32_t *l_112[7];
    int8_t l_113 = (-1L);
    VECTOR(uint32_t, 2) l_129 = (VECTOR(uint32_t, 2))(3UL, 0x2DFFA464L);
    int8_t *l_138 = &p_1265->g_65[2][2];
    uint8_t l_159 = 0x6BL;
    uint32_t l_197[2];
    int i;
    for (i = 0; i < 7; i++)
        l_112[i] = &p_1265->g_20;
    for (i = 0; i < 2; i++)
        l_197[i] = 0xE1C1F154L;
    (*l_103) ^= ((*p_49) = (0x066BL & (safe_lshift_func_uint16_t_u_u((safe_mul_func_uint16_t_u_u((safe_div_func_int16_t_s_s(((*p_1265->g_14) , (l_91 != ((l_92 = p_1265->g_6[2]) , (void*)0))), (((safe_sub_func_uint32_t_u_u(((VECTOR(uint32_t, 4))(l_95.yyxx)).x, (((*l_97) = &p_48) != (void*)0))) > (safe_mul_func_uint8_t_u_u(((((safe_div_func_int64_t_s_s(p_51, p_1265->g_65[2][2])) && 0x1E15B835L) , p_1265->g_84[2][2]) >= l_95.y), p_48))) || (*p_49)))), p_1265->g_70)), 9))));
    ++p_1265->g_114;
    for (p_1265->g_15.f2 = (-28); (p_1265->g_15.f2 != 9); ++p_1265->g_15.f2)
    { /* block id: 37 */
        int8_t l_119 = (-4L);
        int32_t l_120 = 0L;
        int32_t l_123 = 1L;
        int32_t l_127 = 0x286EFADCL;
        int32_t l_128 = 0x78CC6E09L;
        int32_t **l_141 = &l_111;
        --p_1265->g_124;
        ++l_129.y;
        (*l_141) = (((*l_111) , ((safe_lshift_func_int8_t_s_s((0xB71BL ^ ((*p_1265->g_14) && (safe_rshift_func_uint8_t_u_u(p_1265->g_15.f2, (((safe_mod_func_int32_t_s_s((((*l_104) == ((p_1265->g_65[2][2] = ((void*)0 != l_138)) < (safe_add_func_uint32_t_u_u(0x3AA939E1L, (((*l_97) = &p_48) != (void*)0))))) == 0x24E8L), GROUP_DIVERGE(2, 1))) ^ p_1265->g_15.f2) && (*l_106)))))), l_120)) , l_127)) , &p_1265->g_2);
    }
    if ((p_1265->g_142[7][3] == (p_1265->g_144 = &l_98)))
    { /* block id: 45 */
        uint32_t *l_145 = (void*)0;
        int8_t *l_160 = &l_113;
        int32_t l_161 = 1L;
        int32_t **l_162 = &l_106;
        uint16_t l_168 = 65535UL;
        VECTOR(uint64_t, 4) l_173 = (VECTOR(uint64_t, 4))(0x8B3BDE5FC087B67CL, (VECTOR(uint64_t, 2))(0x8B3BDE5FC087B67CL, 18446744073709551615UL), 18446744073709551615UL);
        int32_t **l_188 = &p_1265->g_143;
        int16_t *l_191 = &p_1265->g_70;
        int i;
        (*l_105) |= (*p_1265->g_14);
        (*l_162) = (((((p_1265->g_80 == (p_1265->g_146 = p_1265->g_21[3][1].f2)) ^ (!((((void*)0 != &p_1265->g_143) == ((safe_sub_func_uint8_t_u_u((safe_mul_func_uint16_t_u_u(((safe_rshift_func_uint16_t_u_s(FAKE_DIVERGE(p_1265->group_0_offset, get_group_id(0), 10), 7)) , ((safe_add_func_int8_t_s_s((safe_lshift_func_uint16_t_u_u(((safe_rshift_func_int16_t_s_s((&p_1265->g_143 == &p_1265->g_143), (p_1265->g_70 = l_159))) && ((*l_160) |= (p_48 , ((*l_138) = 0L)))), p_1265->g_84[1][6])), 0x32L)) & p_51)), (*l_109))), l_161)) >= (*l_105))) , (-1L)))) == (*p_50)) & 0x5076384776412926L) , (void*)0);
        for (l_159 = 0; (l_159 <= 54); l_159 = safe_add_func_int64_t_s_s(l_159, 4))
        { /* block id: 54 */
            uint32_t l_167[2];
            uint64_t *l_189 = (void*)0;
            uint64_t *l_190 = (void*)0;
            int64_t *l_192 = &p_1265->g_122;
            int32_t *l_193 = (void*)0;
            int32_t *l_195[8] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
            int32_t l_196 = 0L;
            int i;
            for (i = 0; i < 2; i++)
                l_167[i] = 1UL;
            (*l_109) = (l_167[0] && ((void*)0 == &l_92));
            (*l_162) = p_50;
            ++l_168;
            (*l_103) = (((l_196 = (((safe_div_func_int32_t_s_s((((*l_192) = ((l_167[0] ^ ((VECTOR(uint64_t, 16))(max(((VECTOR(uint64_t, 16))(((VECTOR(uint64_t, 2))(l_173.zw)), ((VECTOR(uint64_t, 2))(abs(((VECTOR(int64_t, 2))(0x01E68239DE1B36AAL, (-1L)))))), 1UL, (((safe_mod_func_uint8_t_u_u(((VECTOR(uint8_t, 2))(mad_hi(((VECTOR(uint8_t, 8))(((VECTOR(uint8_t, 2))(0xD6L, 0x0EL)), (safe_mul_func_uint16_t_u_u((l_167[0] , (safe_lshift_func_uint8_t_u_s(FAKE_DIVERGE(p_1265->global_1_offset, get_global_id(1), 10), 2))), (safe_mod_func_uint16_t_u_u((&p_1265->g_70 != l_91), (1L ^ (safe_add_func_uint16_t_u_u(1UL, ((((p_51 = ((GROUP_DIVERGE(0, 1) != (((~(((**l_188) |= (safe_rshift_func_int8_t_s_u(((safe_lshift_func_int16_t_s_s((-4L), 1)) || (((((void*)0 != l_188) <= (*l_103)) && p_51) , (*l_111))), 2))) , 0xBA9940DBL)) ^ 0x0A445FDDL) ^ 252UL)) || p_1265->g_20)) , l_191) != (void*)0) , 3L)))))))), 247UL, 0xC2L, 0x60L, 0UL, 0xB2L)).s00, ((VECTOR(uint8_t, 2))(0x55L)), ((VECTOR(uint8_t, 2))(0x8BL))))).hi, 0x7BL)) , (*p_50)) == p_1265->g_146), ((VECTOR(uint64_t, 2))(1UL)), ((VECTOR(uint64_t, 8))(1UL)))), (uint64_t)FAKE_DIVERGE(p_1265->local_1_offset, get_local_id(1), 10)))).sc) , p_1265->g_80)) >= 18446744073709551615UL), p_1265->g_55.x)) == (*p_1265->g_14)) & (**l_162))) , p_1265->g_6[2]) & p_1265->g_15.f2);
        }
    }
    else
    { /* block id: 64 */
        ++l_197[1];
        (*l_103) = 0x5EDC2EDBL;
    }
    return p_1265->g_122;
}


/* ------------------------------------------ */
/* 
 * reads : p_1265->g_80 p_1265->g_20
 * writes: p_1265->g_80
 */
int32_t  func_52(int32_t ** p_53, int32_t * p_54, struct S2 * p_1265)
{ /* block id: 25 */
    VECTOR(int64_t, 4) l_74 = (VECTOR(int64_t, 4))((-2L), (VECTOR(int64_t, 2))((-2L), 0x4366FF5FBB4CDDCCL), 0x4366FF5FBB4CDDCCL);
    int32_t l_75 = 0x0441A9D2L;
    int32_t *l_76 = &l_75;
    int32_t *l_77 = &l_75;
    int32_t *l_78 = &p_1265->g_20;
    int32_t *l_79[9] = {&l_75,&l_75,&l_75,&l_75,&l_75,&l_75,&l_75,&l_75,&l_75};
    int i;
    p_1265->g_80++;
    return (*l_78);
}


/* ------------------------------------------ */
/* 
 * reads : p_1265->g_20
 * writes: p_1265->g_20
 */
int16_t  func_60(int8_t * p_61, uint32_t  p_62, uint32_t  p_63, struct S2 * p_1265)
{ /* block id: 20 */
    int8_t l_66 = (-1L);
    int32_t *l_67 = &p_1265->g_20;
    (*l_67) &= l_66;
    return (*l_67);
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S2 c_1266;
    struct S2* p_1265 = &c_1266;
    struct S2 c_1267 = {
        9L, // p_1265->g_2
        0L, // p_1265->g_5
        {0x2A0D7227L,0x2A0D7227L,0x2A0D7227L,0x2A0D7227L,0x2A0D7227L}, // p_1265->g_6
        &p_1265->g_2, // p_1265->g_14
        &p_1265->g_14, // p_1265->g_13
        {1UL,0x7779A7B4L,0x5ACEE61780EEC299L}, // p_1265->g_15
        0L, // p_1265->g_20
        &p_1265->g_20, // p_1265->g_19
        {{{0x275FL,4294967295UL,4L},{0x275FL,4294967295UL,4L},{0x275FL,4294967295UL,4L}},{{0x275FL,4294967295UL,4L},{0x275FL,4294967295UL,4L},{0x275FL,4294967295UL,4L}},{{0x275FL,4294967295UL,4L},{0x275FL,4294967295UL,4L},{0x275FL,4294967295UL,4L}},{{0x275FL,4294967295UL,4L},{0x275FL,4294967295UL,4L},{0x275FL,4294967295UL,4L}},{{0x275FL,4294967295UL,4L},{0x275FL,4294967295UL,4L},{0x275FL,4294967295UL,4L}}}, // p_1265->g_21
        (void*)0, // p_1265->g_32
        (VECTOR(uint8_t, 4))(0x01L, (VECTOR(uint8_t, 2))(0x01L, 0xB4L), 0xB4L), // p_1265->g_55
        (VECTOR(uint8_t, 8))(0x54L, (VECTOR(uint8_t, 4))(0x54L, (VECTOR(uint8_t, 2))(0x54L, 0xC7L), 0xC7L), 0xC7L, 0x54L, 0xC7L), // p_1265->g_56
        {{(-7L),0x71L,9L},{(-7L),0x71L,9L},{(-7L),0x71L,9L},{(-7L),0x71L,9L},{(-7L),0x71L,9L},{(-7L),0x71L,9L}}, // p_1265->g_65
        9L, // p_1265->g_70
        0x766EL, // p_1265->g_80
        {{7L,7L,5L,0L,(-10L),(-1L),1L},{7L,7L,5L,0L,(-10L),(-1L),1L},{7L,7L,5L,0L,(-10L),(-1L),1L},{7L,7L,5L,0L,(-10L),(-1L),1L}}, // p_1265->g_84
        0x8BL, // p_1265->g_114
        0L, // p_1265->g_121
        1L, // p_1265->g_122
        0x78L, // p_1265->g_124
        &p_1265->g_84[2][2], // p_1265->g_143
        {{(void*)0,&p_1265->g_143,&p_1265->g_143,(void*)0,(void*)0,&p_1265->g_143,&p_1265->g_143,(void*)0,(void*)0},{(void*)0,&p_1265->g_143,&p_1265->g_143,(void*)0,(void*)0,&p_1265->g_143,&p_1265->g_143,(void*)0,(void*)0},{(void*)0,&p_1265->g_143,&p_1265->g_143,(void*)0,(void*)0,&p_1265->g_143,&p_1265->g_143,(void*)0,(void*)0},{(void*)0,&p_1265->g_143,&p_1265->g_143,(void*)0,(void*)0,&p_1265->g_143,&p_1265->g_143,(void*)0,(void*)0},{(void*)0,&p_1265->g_143,&p_1265->g_143,(void*)0,(void*)0,&p_1265->g_143,&p_1265->g_143,(void*)0,(void*)0},{(void*)0,&p_1265->g_143,&p_1265->g_143,(void*)0,(void*)0,&p_1265->g_143,&p_1265->g_143,(void*)0,(void*)0},{(void*)0,&p_1265->g_143,&p_1265->g_143,(void*)0,(void*)0,&p_1265->g_143,&p_1265->g_143,(void*)0,(void*)0},{(void*)0,&p_1265->g_143,&p_1265->g_143,(void*)0,(void*)0,&p_1265->g_143,&p_1265->g_143,(void*)0,(void*)0}}, // p_1265->g_142
        &p_1265->g_143, // p_1265->g_144
        0x81394635L, // p_1265->g_146
        (VECTOR(int32_t, 8))(1L, (VECTOR(int32_t, 4))(1L, (VECTOR(int32_t, 2))(1L, 0x1A5975BBL), 0x1A5975BBL), 0x1A5975BBL, 1L, 0x1A5975BBL), // p_1265->g_194
        (VECTOR(uint32_t, 4))(0xBC5810A8L, (VECTOR(uint32_t, 2))(0xBC5810A8L, 0xE95B8BEFL), 0xE95B8BEFL), // p_1265->g_201
        (VECTOR(uint16_t, 8))(0x5E76L, (VECTOR(uint16_t, 4))(0x5E76L, (VECTOR(uint16_t, 2))(0x5E76L, 0xBC17L), 0xBC17L), 0xBC17L, 0x5E76L, 0xBC17L), // p_1265->g_218
        (VECTOR(int32_t, 4))(3L, (VECTOR(int32_t, 2))(3L, 0x0F92BEB9L), 0x0F92BEB9L), // p_1265->g_225
        {6UL,6UL}, // p_1265->g_227
        (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 0UL), 0UL), // p_1265->g_230
        (VECTOR(uint32_t, 4))(0xD2D41E9DL, (VECTOR(uint32_t, 2))(0xD2D41E9DL, 4294967293UL), 4294967293UL), // p_1265->g_231
        (VECTOR(int32_t, 4))((-9L), (VECTOR(int32_t, 2))((-9L), 0x55A0AE62L), 0x55A0AE62L), // p_1265->g_232
        (VECTOR(uint32_t, 16))(0x5A45A9FDL, (VECTOR(uint32_t, 4))(0x5A45A9FDL, (VECTOR(uint32_t, 2))(0x5A45A9FDL, 0x362DC111L), 0x362DC111L), 0x362DC111L, 0x5A45A9FDL, 0x362DC111L, (VECTOR(uint32_t, 2))(0x5A45A9FDL, 0x362DC111L), (VECTOR(uint32_t, 2))(0x5A45A9FDL, 0x362DC111L), 0x5A45A9FDL, 0x362DC111L, 0x5A45A9FDL, 0x362DC111L), // p_1265->g_235
        0x0881C6F64A7FD83CL, // p_1265->g_239
        (VECTOR(uint32_t, 8))(0UL, (VECTOR(uint32_t, 4))(0UL, (VECTOR(uint32_t, 2))(0UL, 0UL), 0UL), 0UL, 0UL, 0UL), // p_1265->g_244
        (VECTOR(int64_t, 2))((-8L), (-1L)), // p_1265->g_252
        (VECTOR(uint32_t, 2))(0xF046711DL, 4294967287UL), // p_1265->g_257
        {0x95B0L,1UL,3L}, // p_1265->g_273
        0x61A15664L, // p_1265->g_314
        (VECTOR(int32_t, 8))((-1L), (VECTOR(int32_t, 4))((-1L), (VECTOR(int32_t, 2))((-1L), (-1L)), (-1L)), (-1L), (-1L), (-1L)), // p_1265->g_326
        (VECTOR(int32_t, 8))(0L, (VECTOR(int32_t, 4))(0L, (VECTOR(int32_t, 2))(0L, (-8L)), (-8L)), (-8L), 0L, (-8L)), // p_1265->g_327
        (void*)0, // p_1265->g_379
        &p_1265->g_379, // p_1265->g_378
        &p_1265->g_378, // p_1265->g_377
        (VECTOR(int8_t, 4))(0L, (VECTOR(int8_t, 2))(0L, (-1L)), (-1L)), // p_1265->g_385
        (VECTOR(uint8_t, 4))(1UL, (VECTOR(uint8_t, 2))(1UL, 1UL), 1UL), // p_1265->g_395
        &p_1265->g_314, // p_1265->g_404
        (VECTOR(int16_t, 16))(0x5F43L, (VECTOR(int16_t, 4))(0x5F43L, (VECTOR(int16_t, 2))(0x5F43L, 0L), 0L), 0L, 0x5F43L, 0L, (VECTOR(int16_t, 2))(0x5F43L, 0L), (VECTOR(int16_t, 2))(0x5F43L, 0L), 0x5F43L, 0L, 0x5F43L, 0L), // p_1265->g_414
        {{{0x6775L,1UL,-1L},{0x17BAL,0x7F697B7DL,0x4FA7B23D429729D5L},{65529UL,0x8E0A579EL,0L},{1UL,0UL,0x0D8FBE2037781BBEL},{65535UL,0x6E18F937L,0x05189CCAD6D7837FL},{1UL,0UL,0x0D8FBE2037781BBEL},{65529UL,0x8E0A579EL,0L},{0x17BAL,0x7F697B7DL,0x4FA7B23D429729D5L},{0x6775L,1UL,-1L}},{{0x6775L,1UL,-1L},{0x17BAL,0x7F697B7DL,0x4FA7B23D429729D5L},{65529UL,0x8E0A579EL,0L},{1UL,0UL,0x0D8FBE2037781BBEL},{65535UL,0x6E18F937L,0x05189CCAD6D7837FL},{1UL,0UL,0x0D8FBE2037781BBEL},{65529UL,0x8E0A579EL,0L},{0x17BAL,0x7F697B7DL,0x4FA7B23D429729D5L},{0x6775L,1UL,-1L}},{{0x6775L,1UL,-1L},{0x17BAL,0x7F697B7DL,0x4FA7B23D429729D5L},{65529UL,0x8E0A579EL,0L},{1UL,0UL,0x0D8FBE2037781BBEL},{65535UL,0x6E18F937L,0x05189CCAD6D7837FL},{1UL,0UL,0x0D8FBE2037781BBEL},{65529UL,0x8E0A579EL,0L},{0x17BAL,0x7F697B7DL,0x4FA7B23D429729D5L},{0x6775L,1UL,-1L}},{{0x6775L,1UL,-1L},{0x17BAL,0x7F697B7DL,0x4FA7B23D429729D5L},{65529UL,0x8E0A579EL,0L},{1UL,0UL,0x0D8FBE2037781BBEL},{65535UL,0x6E18F937L,0x05189CCAD6D7837FL},{1UL,0UL,0x0D8FBE2037781BBEL},{65529UL,0x8E0A579EL,0L},{0x17BAL,0x7F697B7DL,0x4FA7B23D429729D5L},{0x6775L,1UL,-1L}},{{0x6775L,1UL,-1L},{0x17BAL,0x7F697B7DL,0x4FA7B23D429729D5L},{65529UL,0x8E0A579EL,0L},{1UL,0UL,0x0D8FBE2037781BBEL},{65535UL,0x6E18F937L,0x05189CCAD6D7837FL},{1UL,0UL,0x0D8FBE2037781BBEL},{65529UL,0x8E0A579EL,0L},{0x17BAL,0x7F697B7DL,0x4FA7B23D429729D5L},{0x6775L,1UL,-1L}},{{0x6775L,1UL,-1L},{0x17BAL,0x7F697B7DL,0x4FA7B23D429729D5L},{65529UL,0x8E0A579EL,0L},{1UL,0UL,0x0D8FBE2037781BBEL},{65535UL,0x6E18F937L,0x05189CCAD6D7837FL},{1UL,0UL,0x0D8FBE2037781BBEL},{65529UL,0x8E0A579EL,0L},{0x17BAL,0x7F697B7DL,0x4FA7B23D429729D5L},{0x6775L,1UL,-1L}},{{0x6775L,1UL,-1L},{0x17BAL,0x7F697B7DL,0x4FA7B23D429729D5L},{65529UL,0x8E0A579EL,0L},{1UL,0UL,0x0D8FBE2037781BBEL},{65535UL,0x6E18F937L,0x05189CCAD6D7837FL},{1UL,0UL,0x0D8FBE2037781BBEL},{65529UL,0x8E0A579EL,0L},{0x17BAL,0x7F697B7DL,0x4FA7B23D429729D5L},{0x6775L,1UL,-1L}}}, // p_1265->g_428
        {0xCB51L,0xF798AB47L,0x528923FCA1A84A19L}, // p_1265->g_431
        &p_1265->g_431, // p_1265->g_430
        {4294967287UL}, // p_1265->g_474
        {{{{6UL},{4294967290UL},{0x25DE4F99L},{4294967286UL},{0xBF86BCD2L},{4294967293UL},{5UL},{4294967288UL},{0x6C6685BCL}},{{6UL},{4294967290UL},{0x25DE4F99L},{4294967286UL},{0xBF86BCD2L},{4294967293UL},{5UL},{4294967288UL},{0x6C6685BCL}},{{6UL},{4294967290UL},{0x25DE4F99L},{4294967286UL},{0xBF86BCD2L},{4294967293UL},{5UL},{4294967288UL},{0x6C6685BCL}},{{6UL},{4294967290UL},{0x25DE4F99L},{4294967286UL},{0xBF86BCD2L},{4294967293UL},{5UL},{4294967288UL},{0x6C6685BCL}},{{6UL},{4294967290UL},{0x25DE4F99L},{4294967286UL},{0xBF86BCD2L},{4294967293UL},{5UL},{4294967288UL},{0x6C6685BCL}}},{{{6UL},{4294967290UL},{0x25DE4F99L},{4294967286UL},{0xBF86BCD2L},{4294967293UL},{5UL},{4294967288UL},{0x6C6685BCL}},{{6UL},{4294967290UL},{0x25DE4F99L},{4294967286UL},{0xBF86BCD2L},{4294967293UL},{5UL},{4294967288UL},{0x6C6685BCL}},{{6UL},{4294967290UL},{0x25DE4F99L},{4294967286UL},{0xBF86BCD2L},{4294967293UL},{5UL},{4294967288UL},{0x6C6685BCL}},{{6UL},{4294967290UL},{0x25DE4F99L},{4294967286UL},{0xBF86BCD2L},{4294967293UL},{5UL},{4294967288UL},{0x6C6685BCL}},{{6UL},{4294967290UL},{0x25DE4F99L},{4294967286UL},{0xBF86BCD2L},{4294967293UL},{5UL},{4294967288UL},{0x6C6685BCL}}},{{{6UL},{4294967290UL},{0x25DE4F99L},{4294967286UL},{0xBF86BCD2L},{4294967293UL},{5UL},{4294967288UL},{0x6C6685BCL}},{{6UL},{4294967290UL},{0x25DE4F99L},{4294967286UL},{0xBF86BCD2L},{4294967293UL},{5UL},{4294967288UL},{0x6C6685BCL}},{{6UL},{4294967290UL},{0x25DE4F99L},{4294967286UL},{0xBF86BCD2L},{4294967293UL},{5UL},{4294967288UL},{0x6C6685BCL}},{{6UL},{4294967290UL},{0x25DE4F99L},{4294967286UL},{0xBF86BCD2L},{4294967293UL},{5UL},{4294967288UL},{0x6C6685BCL}},{{6UL},{4294967290UL},{0x25DE4F99L},{4294967286UL},{0xBF86BCD2L},{4294967293UL},{5UL},{4294967288UL},{0x6C6685BCL}}},{{{6UL},{4294967290UL},{0x25DE4F99L},{4294967286UL},{0xBF86BCD2L},{4294967293UL},{5UL},{4294967288UL},{0x6C6685BCL}},{{6UL},{4294967290UL},{0x25DE4F99L},{4294967286UL},{0xBF86BCD2L},{4294967293UL},{5UL},{4294967288UL},{0x6C6685BCL}},{{6UL},{4294967290UL},{0x25DE4F99L},{4294967286UL},{0xBF86BCD2L},{4294967293UL},{5UL},{4294967288UL},{0x6C6685BCL}},{{6UL},{4294967290UL},{0x25DE4F99L},{4294967286UL},{0xBF86BCD2L},{4294967293UL},{5UL},{4294967288UL},{0x6C6685BCL}},{{6UL},{4294967290UL},{0x25DE4F99L},{4294967286UL},{0xBF86BCD2L},{4294967293UL},{5UL},{4294967288UL},{0x6C6685BCL}}}}, // p_1265->g_477
        (VECTOR(int16_t, 16))(0x0960L, (VECTOR(int16_t, 4))(0x0960L, (VECTOR(int16_t, 2))(0x0960L, 0x3082L), 0x3082L), 0x3082L, 0x0960L, 0x3082L, (VECTOR(int16_t, 2))(0x0960L, 0x3082L), (VECTOR(int16_t, 2))(0x0960L, 0x3082L), 0x0960L, 0x3082L, 0x0960L, 0x3082L), // p_1265->g_501
        (VECTOR(int16_t, 8))(0x6F63L, (VECTOR(int16_t, 4))(0x6F63L, (VECTOR(int16_t, 2))(0x6F63L, 0x5A51L), 0x5A51L), 0x5A51L, 0x6F63L, 0x5A51L), // p_1265->g_543
        (VECTOR(int8_t, 16))(1L, (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x11L), 0x11L), 0x11L, 1L, 0x11L, (VECTOR(int8_t, 2))(1L, 0x11L), (VECTOR(int8_t, 2))(1L, 0x11L), 1L, 0x11L, 1L, 0x11L), // p_1265->g_581
        0UL, // p_1265->g_585
        (VECTOR(int8_t, 2))(0x0EL, (-8L)), // p_1265->g_604
        (VECTOR(int8_t, 4))(5L, (VECTOR(int8_t, 2))(5L, 0x52L), 0x52L), // p_1265->g_605
        (VECTOR(int8_t, 4))(1L, (VECTOR(int8_t, 2))(1L, 0x0EL), 0x0EL), // p_1265->g_607
        (VECTOR(int8_t, 2))(1L, 0x6BL), // p_1265->g_608
        (VECTOR(int64_t, 16))((-1L), (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), (-2L)), (-2L)), (-2L), (-1L), (-2L), (VECTOR(int64_t, 2))((-1L), (-2L)), (VECTOR(int64_t, 2))((-1L), (-2L)), (-1L), (-2L), (-1L), (-2L)), // p_1265->g_625
        {&p_1265->g_14,&p_1265->g_14,&p_1265->g_14,&p_1265->g_14,&p_1265->g_14,&p_1265->g_14,&p_1265->g_14,&p_1265->g_14,&p_1265->g_14,&p_1265->g_14}, // p_1265->g_639
        {{{0x57AEAC9DL},{0x57AEAC9DL},{4294967287UL},{0xFE24F0BEL},{0xFA52392FL},{0xFE24F0BEL},{4294967287UL},{0x57AEAC9DL}},{{0x57AEAC9DL},{0x57AEAC9DL},{4294967287UL},{0xFE24F0BEL},{0xFA52392FL},{0xFE24F0BEL},{4294967287UL},{0x57AEAC9DL}},{{0x57AEAC9DL},{0x57AEAC9DL},{4294967287UL},{0xFE24F0BEL},{0xFA52392FL},{0xFE24F0BEL},{4294967287UL},{0x57AEAC9DL}},{{0x57AEAC9DL},{0x57AEAC9DL},{4294967287UL},{0xFE24F0BEL},{0xFA52392FL},{0xFE24F0BEL},{4294967287UL},{0x57AEAC9DL}}}, // p_1265->g_665
        &p_1265->g_665[0][4], // p_1265->g_664
        {{{{0xF4F67BE8L},{1UL},{0xEDD3608AL},{0x681DB302L},{1UL},{0x948C9129L},{0x5B0CCB6FL}},{{0xF4F67BE8L},{1UL},{0xEDD3608AL},{0x681DB302L},{1UL},{0x948C9129L},{0x5B0CCB6FL}},{{0xF4F67BE8L},{1UL},{0xEDD3608AL},{0x681DB302L},{1UL},{0x948C9129L},{0x5B0CCB6FL}},{{0xF4F67BE8L},{1UL},{0xEDD3608AL},{0x681DB302L},{1UL},{0x948C9129L},{0x5B0CCB6FL}},{{0xF4F67BE8L},{1UL},{0xEDD3608AL},{0x681DB302L},{1UL},{0x948C9129L},{0x5B0CCB6FL}},{{0xF4F67BE8L},{1UL},{0xEDD3608AL},{0x681DB302L},{1UL},{0x948C9129L},{0x5B0CCB6FL}}},{{{0xF4F67BE8L},{1UL},{0xEDD3608AL},{0x681DB302L},{1UL},{0x948C9129L},{0x5B0CCB6FL}},{{0xF4F67BE8L},{1UL},{0xEDD3608AL},{0x681DB302L},{1UL},{0x948C9129L},{0x5B0CCB6FL}},{{0xF4F67BE8L},{1UL},{0xEDD3608AL},{0x681DB302L},{1UL},{0x948C9129L},{0x5B0CCB6FL}},{{0xF4F67BE8L},{1UL},{0xEDD3608AL},{0x681DB302L},{1UL},{0x948C9129L},{0x5B0CCB6FL}},{{0xF4F67BE8L},{1UL},{0xEDD3608AL},{0x681DB302L},{1UL},{0x948C9129L},{0x5B0CCB6FL}},{{0xF4F67BE8L},{1UL},{0xEDD3608AL},{0x681DB302L},{1UL},{0x948C9129L},{0x5B0CCB6FL}}},{{{0xF4F67BE8L},{1UL},{0xEDD3608AL},{0x681DB302L},{1UL},{0x948C9129L},{0x5B0CCB6FL}},{{0xF4F67BE8L},{1UL},{0xEDD3608AL},{0x681DB302L},{1UL},{0x948C9129L},{0x5B0CCB6FL}},{{0xF4F67BE8L},{1UL},{0xEDD3608AL},{0x681DB302L},{1UL},{0x948C9129L},{0x5B0CCB6FL}},{{0xF4F67BE8L},{1UL},{0xEDD3608AL},{0x681DB302L},{1UL},{0x948C9129L},{0x5B0CCB6FL}},{{0xF4F67BE8L},{1UL},{0xEDD3608AL},{0x681DB302L},{1UL},{0x948C9129L},{0x5B0CCB6FL}},{{0xF4F67BE8L},{1UL},{0xEDD3608AL},{0x681DB302L},{1UL},{0x948C9129L},{0x5B0CCB6FL}}},{{{0xF4F67BE8L},{1UL},{0xEDD3608AL},{0x681DB302L},{1UL},{0x948C9129L},{0x5B0CCB6FL}},{{0xF4F67BE8L},{1UL},{0xEDD3608AL},{0x681DB302L},{1UL},{0x948C9129L},{0x5B0CCB6FL}},{{0xF4F67BE8L},{1UL},{0xEDD3608AL},{0x681DB302L},{1UL},{0x948C9129L},{0x5B0CCB6FL}},{{0xF4F67BE8L},{1UL},{0xEDD3608AL},{0x681DB302L},{1UL},{0x948C9129L},{0x5B0CCB6FL}},{{0xF4F67BE8L},{1UL},{0xEDD3608AL},{0x681DB302L},{1UL},{0x948C9129L},{0x5B0CCB6FL}},{{0xF4F67BE8L},{1UL},{0xEDD3608AL},{0x681DB302L},{1UL},{0x948C9129L},{0x5B0CCB6FL}}},{{{0xF4F67BE8L},{1UL},{0xEDD3608AL},{0x681DB302L},{1UL},{0x948C9129L},{0x5B0CCB6FL}},{{0xF4F67BE8L},{1UL},{0xEDD3608AL},{0x681DB302L},{1UL},{0x948C9129L},{0x5B0CCB6FL}},{{0xF4F67BE8L},{1UL},{0xEDD3608AL},{0x681DB302L},{1UL},{0x948C9129L},{0x5B0CCB6FL}},{{0xF4F67BE8L},{1UL},{0xEDD3608AL},{0x681DB302L},{1UL},{0x948C9129L},{0x5B0CCB6FL}},{{0xF4F67BE8L},{1UL},{0xEDD3608AL},{0x681DB302L},{1UL},{0x948C9129L},{0x5B0CCB6FL}},{{0xF4F67BE8L},{1UL},{0xEDD3608AL},{0x681DB302L},{1UL},{0x948C9129L},{0x5B0CCB6FL}}},{{{0xF4F67BE8L},{1UL},{0xEDD3608AL},{0x681DB302L},{1UL},{0x948C9129L},{0x5B0CCB6FL}},{{0xF4F67BE8L},{1UL},{0xEDD3608AL},{0x681DB302L},{1UL},{0x948C9129L},{0x5B0CCB6FL}},{{0xF4F67BE8L},{1UL},{0xEDD3608AL},{0x681DB302L},{1UL},{0x948C9129L},{0x5B0CCB6FL}},{{0xF4F67BE8L},{1UL},{0xEDD3608AL},{0x681DB302L},{1UL},{0x948C9129L},{0x5B0CCB6FL}},{{0xF4F67BE8L},{1UL},{0xEDD3608AL},{0x681DB302L},{1UL},{0x948C9129L},{0x5B0CCB6FL}},{{0xF4F67BE8L},{1UL},{0xEDD3608AL},{0x681DB302L},{1UL},{0x948C9129L},{0x5B0CCB6FL}}}}, // p_1265->g_684
        {7UL}, // p_1265->g_717
        {1UL,1UL,0L}, // p_1265->g_778
        (VECTOR(int64_t, 4))((-1L), (VECTOR(int64_t, 2))((-1L), (-7L)), (-7L)), // p_1265->g_781
        &p_1265->g_379, // p_1265->g_809
        (VECTOR(uint8_t, 8))(0UL, (VECTOR(uint8_t, 4))(0UL, (VECTOR(uint8_t, 2))(0UL, 2UL), 2UL), 2UL, 0UL, 2UL), // p_1265->g_820
        (VECTOR(uint32_t, 2))(0x86C47ACBL, 0xE3304FA0L), // p_1265->g_830
        &p_1265->g_14, // p_1265->g_874
        (VECTOR(int16_t, 4))(0x3439L, (VECTOR(int16_t, 2))(0x3439L, 1L), 1L), // p_1265->g_910
        (VECTOR(int16_t, 8))(0x027FL, (VECTOR(int16_t, 4))(0x027FL, (VECTOR(int16_t, 2))(0x027FL, 0x5326L), 0x5326L), 0x5326L, 0x027FL, 0x5326L), // p_1265->g_915
        (void*)0, // p_1265->g_933
        &p_1265->g_14, // p_1265->g_935
        {65535UL,0x26968E6BL,0x34F18028A940EF92L}, // p_1265->g_939
        (VECTOR(int64_t, 8))(0x59BCF2872EBAA8EFL, (VECTOR(int64_t, 4))(0x59BCF2872EBAA8EFL, (VECTOR(int64_t, 2))(0x59BCF2872EBAA8EFL, 0x02068F4CA9DC9888L), 0x02068F4CA9DC9888L), 0x02068F4CA9DC9888L, 0x59BCF2872EBAA8EFL, 0x02068F4CA9DC9888L), // p_1265->g_946
        (VECTOR(int64_t, 4))(1L, (VECTOR(int64_t, 2))(1L, 1L), 1L), // p_1265->g_948
        (VECTOR(uint64_t, 2))(1UL, 6UL), // p_1265->g_949
        (void*)0, // p_1265->g_954
        (VECTOR(uint16_t, 4))(7UL, (VECTOR(uint16_t, 2))(7UL, 0UL), 0UL), // p_1265->g_966
        {0x628FEB7EL}, // p_1265->g_969
        (VECTOR(int8_t, 4))(0x5EL, (VECTOR(int8_t, 2))(0x5EL, 0x2DL), 0x2DL), // p_1265->g_987
        (VECTOR(int8_t, 2))(0x59L, 0x7DL), // p_1265->g_989
        {0x3671EED7L}, // p_1265->g_999
        (VECTOR(uint16_t, 2))(65529UL, 0x81D2L), // p_1265->g_1004
        &p_1265->g_430, // p_1265->g_1008
        6L, // p_1265->g_1079
        (VECTOR(int8_t, 8))((-1L), (VECTOR(int8_t, 4))((-1L), (VECTOR(int8_t, 2))((-1L), (-3L)), (-3L)), (-3L), (-1L), (-3L)), // p_1265->g_1094
        (void*)0, // p_1265->g_1105
        &p_1265->g_1105, // p_1265->g_1104
        (void*)0, // p_1265->g_1110
        &p_1265->g_1110, // p_1265->g_1109
        0x6922BAC08EB4E61CL, // p_1265->g_1112
        {&p_1265->g_6[1],(void*)0,&p_1265->g_6[1],&p_1265->g_6[1],(void*)0,&p_1265->g_6[1],&p_1265->g_6[1],(void*)0}, // p_1265->g_1122
        {{(void*)0,(void*)0,&p_1265->g_2,(void*)0,&p_1265->g_6[2]},{(void*)0,(void*)0,&p_1265->g_2,(void*)0,&p_1265->g_6[2]},{(void*)0,(void*)0,&p_1265->g_2,(void*)0,&p_1265->g_6[2]},{(void*)0,(void*)0,&p_1265->g_2,(void*)0,&p_1265->g_6[2]},{(void*)0,(void*)0,&p_1265->g_2,(void*)0,&p_1265->g_6[2]},{(void*)0,(void*)0,&p_1265->g_2,(void*)0,&p_1265->g_6[2]},{(void*)0,(void*)0,&p_1265->g_2,(void*)0,&p_1265->g_6[2]}}, // p_1265->g_1123
        (VECTOR(uint32_t, 8))(0xDA154A82L, (VECTOR(uint32_t, 4))(0xDA154A82L, (VECTOR(uint32_t, 2))(0xDA154A82L, 1UL), 1UL), 1UL, 0xDA154A82L, 1UL), // p_1265->g_1186
        (VECTOR(uint64_t, 8))(0xF4A56C0311C662ADL, (VECTOR(uint64_t, 4))(0xF4A56C0311C662ADL, (VECTOR(uint64_t, 2))(0xF4A56C0311C662ADL, 0xA20A00CC5C66B1AEL), 0xA20A00CC5C66B1AEL), 0xA20A00CC5C66B1AEL, 0xF4A56C0311C662ADL, 0xA20A00CC5C66B1AEL), // p_1265->g_1189
        (VECTOR(uint64_t, 16))(18446744073709551607UL, (VECTOR(uint64_t, 4))(18446744073709551607UL, (VECTOR(uint64_t, 2))(18446744073709551607UL, 0xB63AE0EA69E119B4L), 0xB63AE0EA69E119B4L), 0xB63AE0EA69E119B4L, 18446744073709551607UL, 0xB63AE0EA69E119B4L, (VECTOR(uint64_t, 2))(18446744073709551607UL, 0xB63AE0EA69E119B4L), (VECTOR(uint64_t, 2))(18446744073709551607UL, 0xB63AE0EA69E119B4L), 18446744073709551607UL, 0xB63AE0EA69E119B4L, 18446744073709551607UL, 0xB63AE0EA69E119B4L), // p_1265->g_1192
        (VECTOR(int32_t, 16))(0x7549AFBBL, (VECTOR(int32_t, 4))(0x7549AFBBL, (VECTOR(int32_t, 2))(0x7549AFBBL, 0x449B9F25L), 0x449B9F25L), 0x449B9F25L, 0x7549AFBBL, 0x449B9F25L, (VECTOR(int32_t, 2))(0x7549AFBBL, 0x449B9F25L), (VECTOR(int32_t, 2))(0x7549AFBBL, 0x449B9F25L), 0x7549AFBBL, 0x449B9F25L, 0x7549AFBBL, 0x449B9F25L), // p_1265->g_1197
        0x2EE0L, // p_1265->g_1200
        (-1L), // p_1265->g_1201
        (void*)0, // p_1265->g_1218
        (void*)0, // p_1265->g_1241
        &p_1265->g_1241, // p_1265->g_1240
        sequence_input[get_global_id(0)], // p_1265->global_0_offset
        sequence_input[get_global_id(1)], // p_1265->global_1_offset
        sequence_input[get_global_id(2)], // p_1265->global_2_offset
        sequence_input[get_local_id(0)], // p_1265->local_0_offset
        sequence_input[get_local_id(1)], // p_1265->local_1_offset
        sequence_input[get_local_id(2)], // p_1265->local_2_offset
        sequence_input[get_group_id(0)], // p_1265->group_0_offset
        sequence_input[get_group_id(1)], // p_1265->group_1_offset
        sequence_input[get_group_id(2)], // p_1265->group_2_offset
    };
    c_1266 = c_1267;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1265);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1265->g_2, "p_1265->g_2", print_hash_value);
    transparent_crc(p_1265->g_5, "p_1265->g_5", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        transparent_crc(p_1265->g_6[i], "p_1265->g_6[i]", print_hash_value);

    }
    transparent_crc(p_1265->g_15.f0, "p_1265->g_15.f0", print_hash_value);
    transparent_crc(p_1265->g_15.f1, "p_1265->g_15.f1", print_hash_value);
    transparent_crc(p_1265->g_15.f2, "p_1265->g_15.f2", print_hash_value);
    transparent_crc(p_1265->g_20, "p_1265->g_20", print_hash_value);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 3; j++)
        {
            transparent_crc(p_1265->g_21[i][j].f0, "p_1265->g_21[i][j].f0", print_hash_value);
            transparent_crc(p_1265->g_21[i][j].f1, "p_1265->g_21[i][j].f1", print_hash_value);
            transparent_crc(p_1265->g_21[i][j].f2, "p_1265->g_21[i][j].f2", print_hash_value);

        }
    }
    transparent_crc(p_1265->g_55.x, "p_1265->g_55.x", print_hash_value);
    transparent_crc(p_1265->g_55.y, "p_1265->g_55.y", print_hash_value);
    transparent_crc(p_1265->g_55.z, "p_1265->g_55.z", print_hash_value);
    transparent_crc(p_1265->g_55.w, "p_1265->g_55.w", print_hash_value);
    transparent_crc(p_1265->g_56.s0, "p_1265->g_56.s0", print_hash_value);
    transparent_crc(p_1265->g_56.s1, "p_1265->g_56.s1", print_hash_value);
    transparent_crc(p_1265->g_56.s2, "p_1265->g_56.s2", print_hash_value);
    transparent_crc(p_1265->g_56.s3, "p_1265->g_56.s3", print_hash_value);
    transparent_crc(p_1265->g_56.s4, "p_1265->g_56.s4", print_hash_value);
    transparent_crc(p_1265->g_56.s5, "p_1265->g_56.s5", print_hash_value);
    transparent_crc(p_1265->g_56.s6, "p_1265->g_56.s6", print_hash_value);
    transparent_crc(p_1265->g_56.s7, "p_1265->g_56.s7", print_hash_value);
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 3; j++)
        {
            transparent_crc(p_1265->g_65[i][j], "p_1265->g_65[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1265->g_70, "p_1265->g_70", print_hash_value);
    transparent_crc(p_1265->g_80, "p_1265->g_80", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 7; j++)
        {
            transparent_crc(p_1265->g_84[i][j], "p_1265->g_84[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1265->g_114, "p_1265->g_114", print_hash_value);
    transparent_crc(p_1265->g_121, "p_1265->g_121", print_hash_value);
    transparent_crc(p_1265->g_122, "p_1265->g_122", print_hash_value);
    transparent_crc(p_1265->g_124, "p_1265->g_124", print_hash_value);
    transparent_crc(p_1265->g_146, "p_1265->g_146", print_hash_value);
    transparent_crc(p_1265->g_194.s0, "p_1265->g_194.s0", print_hash_value);
    transparent_crc(p_1265->g_194.s1, "p_1265->g_194.s1", print_hash_value);
    transparent_crc(p_1265->g_194.s2, "p_1265->g_194.s2", print_hash_value);
    transparent_crc(p_1265->g_194.s3, "p_1265->g_194.s3", print_hash_value);
    transparent_crc(p_1265->g_194.s4, "p_1265->g_194.s4", print_hash_value);
    transparent_crc(p_1265->g_194.s5, "p_1265->g_194.s5", print_hash_value);
    transparent_crc(p_1265->g_194.s6, "p_1265->g_194.s6", print_hash_value);
    transparent_crc(p_1265->g_194.s7, "p_1265->g_194.s7", print_hash_value);
    transparent_crc(p_1265->g_201.x, "p_1265->g_201.x", print_hash_value);
    transparent_crc(p_1265->g_201.y, "p_1265->g_201.y", print_hash_value);
    transparent_crc(p_1265->g_201.z, "p_1265->g_201.z", print_hash_value);
    transparent_crc(p_1265->g_201.w, "p_1265->g_201.w", print_hash_value);
    transparent_crc(p_1265->g_218.s0, "p_1265->g_218.s0", print_hash_value);
    transparent_crc(p_1265->g_218.s1, "p_1265->g_218.s1", print_hash_value);
    transparent_crc(p_1265->g_218.s2, "p_1265->g_218.s2", print_hash_value);
    transparent_crc(p_1265->g_218.s3, "p_1265->g_218.s3", print_hash_value);
    transparent_crc(p_1265->g_218.s4, "p_1265->g_218.s4", print_hash_value);
    transparent_crc(p_1265->g_218.s5, "p_1265->g_218.s5", print_hash_value);
    transparent_crc(p_1265->g_218.s6, "p_1265->g_218.s6", print_hash_value);
    transparent_crc(p_1265->g_218.s7, "p_1265->g_218.s7", print_hash_value);
    transparent_crc(p_1265->g_225.x, "p_1265->g_225.x", print_hash_value);
    transparent_crc(p_1265->g_225.y, "p_1265->g_225.y", print_hash_value);
    transparent_crc(p_1265->g_225.z, "p_1265->g_225.z", print_hash_value);
    transparent_crc(p_1265->g_225.w, "p_1265->g_225.w", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        transparent_crc(p_1265->g_227[i], "p_1265->g_227[i]", print_hash_value);

    }
    transparent_crc(p_1265->g_230.x, "p_1265->g_230.x", print_hash_value);
    transparent_crc(p_1265->g_230.y, "p_1265->g_230.y", print_hash_value);
    transparent_crc(p_1265->g_230.z, "p_1265->g_230.z", print_hash_value);
    transparent_crc(p_1265->g_230.w, "p_1265->g_230.w", print_hash_value);
    transparent_crc(p_1265->g_231.x, "p_1265->g_231.x", print_hash_value);
    transparent_crc(p_1265->g_231.y, "p_1265->g_231.y", print_hash_value);
    transparent_crc(p_1265->g_231.z, "p_1265->g_231.z", print_hash_value);
    transparent_crc(p_1265->g_231.w, "p_1265->g_231.w", print_hash_value);
    transparent_crc(p_1265->g_232.x, "p_1265->g_232.x", print_hash_value);
    transparent_crc(p_1265->g_232.y, "p_1265->g_232.y", print_hash_value);
    transparent_crc(p_1265->g_232.z, "p_1265->g_232.z", print_hash_value);
    transparent_crc(p_1265->g_232.w, "p_1265->g_232.w", print_hash_value);
    transparent_crc(p_1265->g_235.s0, "p_1265->g_235.s0", print_hash_value);
    transparent_crc(p_1265->g_235.s1, "p_1265->g_235.s1", print_hash_value);
    transparent_crc(p_1265->g_235.s2, "p_1265->g_235.s2", print_hash_value);
    transparent_crc(p_1265->g_235.s3, "p_1265->g_235.s3", print_hash_value);
    transparent_crc(p_1265->g_235.s4, "p_1265->g_235.s4", print_hash_value);
    transparent_crc(p_1265->g_235.s5, "p_1265->g_235.s5", print_hash_value);
    transparent_crc(p_1265->g_235.s6, "p_1265->g_235.s6", print_hash_value);
    transparent_crc(p_1265->g_235.s7, "p_1265->g_235.s7", print_hash_value);
    transparent_crc(p_1265->g_235.s8, "p_1265->g_235.s8", print_hash_value);
    transparent_crc(p_1265->g_235.s9, "p_1265->g_235.s9", print_hash_value);
    transparent_crc(p_1265->g_235.sa, "p_1265->g_235.sa", print_hash_value);
    transparent_crc(p_1265->g_235.sb, "p_1265->g_235.sb", print_hash_value);
    transparent_crc(p_1265->g_235.sc, "p_1265->g_235.sc", print_hash_value);
    transparent_crc(p_1265->g_235.sd, "p_1265->g_235.sd", print_hash_value);
    transparent_crc(p_1265->g_235.se, "p_1265->g_235.se", print_hash_value);
    transparent_crc(p_1265->g_235.sf, "p_1265->g_235.sf", print_hash_value);
    transparent_crc(p_1265->g_239, "p_1265->g_239", print_hash_value);
    transparent_crc(p_1265->g_244.s0, "p_1265->g_244.s0", print_hash_value);
    transparent_crc(p_1265->g_244.s1, "p_1265->g_244.s1", print_hash_value);
    transparent_crc(p_1265->g_244.s2, "p_1265->g_244.s2", print_hash_value);
    transparent_crc(p_1265->g_244.s3, "p_1265->g_244.s3", print_hash_value);
    transparent_crc(p_1265->g_244.s4, "p_1265->g_244.s4", print_hash_value);
    transparent_crc(p_1265->g_244.s5, "p_1265->g_244.s5", print_hash_value);
    transparent_crc(p_1265->g_244.s6, "p_1265->g_244.s6", print_hash_value);
    transparent_crc(p_1265->g_244.s7, "p_1265->g_244.s7", print_hash_value);
    transparent_crc(p_1265->g_252.x, "p_1265->g_252.x", print_hash_value);
    transparent_crc(p_1265->g_252.y, "p_1265->g_252.y", print_hash_value);
    transparent_crc(p_1265->g_257.x, "p_1265->g_257.x", print_hash_value);
    transparent_crc(p_1265->g_257.y, "p_1265->g_257.y", print_hash_value);
    transparent_crc(p_1265->g_273.f0, "p_1265->g_273.f0", print_hash_value);
    transparent_crc(p_1265->g_273.f1, "p_1265->g_273.f1", print_hash_value);
    transparent_crc(p_1265->g_273.f2, "p_1265->g_273.f2", print_hash_value);
    transparent_crc(p_1265->g_314, "p_1265->g_314", print_hash_value);
    transparent_crc(p_1265->g_326.s0, "p_1265->g_326.s0", print_hash_value);
    transparent_crc(p_1265->g_326.s1, "p_1265->g_326.s1", print_hash_value);
    transparent_crc(p_1265->g_326.s2, "p_1265->g_326.s2", print_hash_value);
    transparent_crc(p_1265->g_326.s3, "p_1265->g_326.s3", print_hash_value);
    transparent_crc(p_1265->g_326.s4, "p_1265->g_326.s4", print_hash_value);
    transparent_crc(p_1265->g_326.s5, "p_1265->g_326.s5", print_hash_value);
    transparent_crc(p_1265->g_326.s6, "p_1265->g_326.s6", print_hash_value);
    transparent_crc(p_1265->g_326.s7, "p_1265->g_326.s7", print_hash_value);
    transparent_crc(p_1265->g_327.s0, "p_1265->g_327.s0", print_hash_value);
    transparent_crc(p_1265->g_327.s1, "p_1265->g_327.s1", print_hash_value);
    transparent_crc(p_1265->g_327.s2, "p_1265->g_327.s2", print_hash_value);
    transparent_crc(p_1265->g_327.s3, "p_1265->g_327.s3", print_hash_value);
    transparent_crc(p_1265->g_327.s4, "p_1265->g_327.s4", print_hash_value);
    transparent_crc(p_1265->g_327.s5, "p_1265->g_327.s5", print_hash_value);
    transparent_crc(p_1265->g_327.s6, "p_1265->g_327.s6", print_hash_value);
    transparent_crc(p_1265->g_327.s7, "p_1265->g_327.s7", print_hash_value);
    transparent_crc(p_1265->g_385.x, "p_1265->g_385.x", print_hash_value);
    transparent_crc(p_1265->g_385.y, "p_1265->g_385.y", print_hash_value);
    transparent_crc(p_1265->g_385.z, "p_1265->g_385.z", print_hash_value);
    transparent_crc(p_1265->g_385.w, "p_1265->g_385.w", print_hash_value);
    transparent_crc(p_1265->g_395.x, "p_1265->g_395.x", print_hash_value);
    transparent_crc(p_1265->g_395.y, "p_1265->g_395.y", print_hash_value);
    transparent_crc(p_1265->g_395.z, "p_1265->g_395.z", print_hash_value);
    transparent_crc(p_1265->g_395.w, "p_1265->g_395.w", print_hash_value);
    transparent_crc(p_1265->g_414.s0, "p_1265->g_414.s0", print_hash_value);
    transparent_crc(p_1265->g_414.s1, "p_1265->g_414.s1", print_hash_value);
    transparent_crc(p_1265->g_414.s2, "p_1265->g_414.s2", print_hash_value);
    transparent_crc(p_1265->g_414.s3, "p_1265->g_414.s3", print_hash_value);
    transparent_crc(p_1265->g_414.s4, "p_1265->g_414.s4", print_hash_value);
    transparent_crc(p_1265->g_414.s5, "p_1265->g_414.s5", print_hash_value);
    transparent_crc(p_1265->g_414.s6, "p_1265->g_414.s6", print_hash_value);
    transparent_crc(p_1265->g_414.s7, "p_1265->g_414.s7", print_hash_value);
    transparent_crc(p_1265->g_414.s8, "p_1265->g_414.s8", print_hash_value);
    transparent_crc(p_1265->g_414.s9, "p_1265->g_414.s9", print_hash_value);
    transparent_crc(p_1265->g_414.sa, "p_1265->g_414.sa", print_hash_value);
    transparent_crc(p_1265->g_414.sb, "p_1265->g_414.sb", print_hash_value);
    transparent_crc(p_1265->g_414.sc, "p_1265->g_414.sc", print_hash_value);
    transparent_crc(p_1265->g_414.sd, "p_1265->g_414.sd", print_hash_value);
    transparent_crc(p_1265->g_414.se, "p_1265->g_414.se", print_hash_value);
    transparent_crc(p_1265->g_414.sf, "p_1265->g_414.sf", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_1265->g_428[i][j].f0, "p_1265->g_428[i][j].f0", print_hash_value);
            transparent_crc(p_1265->g_428[i][j].f1, "p_1265->g_428[i][j].f1", print_hash_value);
            transparent_crc(p_1265->g_428[i][j].f2, "p_1265->g_428[i][j].f2", print_hash_value);

        }
    }
    transparent_crc(p_1265->g_431.f0, "p_1265->g_431.f0", print_hash_value);
    transparent_crc(p_1265->g_431.f1, "p_1265->g_431.f1", print_hash_value);
    transparent_crc(p_1265->g_431.f2, "p_1265->g_431.f2", print_hash_value);
    transparent_crc(p_1265->g_474.f0, "p_1265->g_474.f0", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 5; j++)
        {
            for (k = 0; k < 9; k++)
            {
                transparent_crc(p_1265->g_477[i][j][k].f0, "p_1265->g_477[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_1265->g_501.s0, "p_1265->g_501.s0", print_hash_value);
    transparent_crc(p_1265->g_501.s1, "p_1265->g_501.s1", print_hash_value);
    transparent_crc(p_1265->g_501.s2, "p_1265->g_501.s2", print_hash_value);
    transparent_crc(p_1265->g_501.s3, "p_1265->g_501.s3", print_hash_value);
    transparent_crc(p_1265->g_501.s4, "p_1265->g_501.s4", print_hash_value);
    transparent_crc(p_1265->g_501.s5, "p_1265->g_501.s5", print_hash_value);
    transparent_crc(p_1265->g_501.s6, "p_1265->g_501.s6", print_hash_value);
    transparent_crc(p_1265->g_501.s7, "p_1265->g_501.s7", print_hash_value);
    transparent_crc(p_1265->g_501.s8, "p_1265->g_501.s8", print_hash_value);
    transparent_crc(p_1265->g_501.s9, "p_1265->g_501.s9", print_hash_value);
    transparent_crc(p_1265->g_501.sa, "p_1265->g_501.sa", print_hash_value);
    transparent_crc(p_1265->g_501.sb, "p_1265->g_501.sb", print_hash_value);
    transparent_crc(p_1265->g_501.sc, "p_1265->g_501.sc", print_hash_value);
    transparent_crc(p_1265->g_501.sd, "p_1265->g_501.sd", print_hash_value);
    transparent_crc(p_1265->g_501.se, "p_1265->g_501.se", print_hash_value);
    transparent_crc(p_1265->g_501.sf, "p_1265->g_501.sf", print_hash_value);
    transparent_crc(p_1265->g_543.s0, "p_1265->g_543.s0", print_hash_value);
    transparent_crc(p_1265->g_543.s1, "p_1265->g_543.s1", print_hash_value);
    transparent_crc(p_1265->g_543.s2, "p_1265->g_543.s2", print_hash_value);
    transparent_crc(p_1265->g_543.s3, "p_1265->g_543.s3", print_hash_value);
    transparent_crc(p_1265->g_543.s4, "p_1265->g_543.s4", print_hash_value);
    transparent_crc(p_1265->g_543.s5, "p_1265->g_543.s5", print_hash_value);
    transparent_crc(p_1265->g_543.s6, "p_1265->g_543.s6", print_hash_value);
    transparent_crc(p_1265->g_543.s7, "p_1265->g_543.s7", print_hash_value);
    transparent_crc(p_1265->g_581.s0, "p_1265->g_581.s0", print_hash_value);
    transparent_crc(p_1265->g_581.s1, "p_1265->g_581.s1", print_hash_value);
    transparent_crc(p_1265->g_581.s2, "p_1265->g_581.s2", print_hash_value);
    transparent_crc(p_1265->g_581.s3, "p_1265->g_581.s3", print_hash_value);
    transparent_crc(p_1265->g_581.s4, "p_1265->g_581.s4", print_hash_value);
    transparent_crc(p_1265->g_581.s5, "p_1265->g_581.s5", print_hash_value);
    transparent_crc(p_1265->g_581.s6, "p_1265->g_581.s6", print_hash_value);
    transparent_crc(p_1265->g_581.s7, "p_1265->g_581.s7", print_hash_value);
    transparent_crc(p_1265->g_581.s8, "p_1265->g_581.s8", print_hash_value);
    transparent_crc(p_1265->g_581.s9, "p_1265->g_581.s9", print_hash_value);
    transparent_crc(p_1265->g_581.sa, "p_1265->g_581.sa", print_hash_value);
    transparent_crc(p_1265->g_581.sb, "p_1265->g_581.sb", print_hash_value);
    transparent_crc(p_1265->g_581.sc, "p_1265->g_581.sc", print_hash_value);
    transparent_crc(p_1265->g_581.sd, "p_1265->g_581.sd", print_hash_value);
    transparent_crc(p_1265->g_581.se, "p_1265->g_581.se", print_hash_value);
    transparent_crc(p_1265->g_581.sf, "p_1265->g_581.sf", print_hash_value);
    transparent_crc(p_1265->g_585, "p_1265->g_585", print_hash_value);
    transparent_crc(p_1265->g_604.x, "p_1265->g_604.x", print_hash_value);
    transparent_crc(p_1265->g_604.y, "p_1265->g_604.y", print_hash_value);
    transparent_crc(p_1265->g_605.x, "p_1265->g_605.x", print_hash_value);
    transparent_crc(p_1265->g_605.y, "p_1265->g_605.y", print_hash_value);
    transparent_crc(p_1265->g_605.z, "p_1265->g_605.z", print_hash_value);
    transparent_crc(p_1265->g_605.w, "p_1265->g_605.w", print_hash_value);
    transparent_crc(p_1265->g_607.x, "p_1265->g_607.x", print_hash_value);
    transparent_crc(p_1265->g_607.y, "p_1265->g_607.y", print_hash_value);
    transparent_crc(p_1265->g_607.z, "p_1265->g_607.z", print_hash_value);
    transparent_crc(p_1265->g_607.w, "p_1265->g_607.w", print_hash_value);
    transparent_crc(p_1265->g_608.x, "p_1265->g_608.x", print_hash_value);
    transparent_crc(p_1265->g_608.y, "p_1265->g_608.y", print_hash_value);
    transparent_crc(p_1265->g_625.s0, "p_1265->g_625.s0", print_hash_value);
    transparent_crc(p_1265->g_625.s1, "p_1265->g_625.s1", print_hash_value);
    transparent_crc(p_1265->g_625.s2, "p_1265->g_625.s2", print_hash_value);
    transparent_crc(p_1265->g_625.s3, "p_1265->g_625.s3", print_hash_value);
    transparent_crc(p_1265->g_625.s4, "p_1265->g_625.s4", print_hash_value);
    transparent_crc(p_1265->g_625.s5, "p_1265->g_625.s5", print_hash_value);
    transparent_crc(p_1265->g_625.s6, "p_1265->g_625.s6", print_hash_value);
    transparent_crc(p_1265->g_625.s7, "p_1265->g_625.s7", print_hash_value);
    transparent_crc(p_1265->g_625.s8, "p_1265->g_625.s8", print_hash_value);
    transparent_crc(p_1265->g_625.s9, "p_1265->g_625.s9", print_hash_value);
    transparent_crc(p_1265->g_625.sa, "p_1265->g_625.sa", print_hash_value);
    transparent_crc(p_1265->g_625.sb, "p_1265->g_625.sb", print_hash_value);
    transparent_crc(p_1265->g_625.sc, "p_1265->g_625.sc", print_hash_value);
    transparent_crc(p_1265->g_625.sd, "p_1265->g_625.sd", print_hash_value);
    transparent_crc(p_1265->g_625.se, "p_1265->g_625.se", print_hash_value);
    transparent_crc(p_1265->g_625.sf, "p_1265->g_625.sf", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 8; j++)
        {
            transparent_crc(p_1265->g_665[i][j].f0, "p_1265->g_665[i][j].f0", print_hash_value);

        }
    }
    for (i = 0; i < 6; i++)
    {
        for (j = 0; j < 6; j++)
        {
            for (k = 0; k < 7; k++)
            {
                transparent_crc(p_1265->g_684[i][j][k].f0, "p_1265->g_684[i][j][k].f0", print_hash_value);

            }
        }
    }
    transparent_crc(p_1265->g_717.f0, "p_1265->g_717.f0", print_hash_value);
    transparent_crc(p_1265->g_778.f0, "p_1265->g_778.f0", print_hash_value);
    transparent_crc(p_1265->g_778.f1, "p_1265->g_778.f1", print_hash_value);
    transparent_crc(p_1265->g_778.f2, "p_1265->g_778.f2", print_hash_value);
    transparent_crc(p_1265->g_781.x, "p_1265->g_781.x", print_hash_value);
    transparent_crc(p_1265->g_781.y, "p_1265->g_781.y", print_hash_value);
    transparent_crc(p_1265->g_781.z, "p_1265->g_781.z", print_hash_value);
    transparent_crc(p_1265->g_781.w, "p_1265->g_781.w", print_hash_value);
    transparent_crc(p_1265->g_820.s0, "p_1265->g_820.s0", print_hash_value);
    transparent_crc(p_1265->g_820.s1, "p_1265->g_820.s1", print_hash_value);
    transparent_crc(p_1265->g_820.s2, "p_1265->g_820.s2", print_hash_value);
    transparent_crc(p_1265->g_820.s3, "p_1265->g_820.s3", print_hash_value);
    transparent_crc(p_1265->g_820.s4, "p_1265->g_820.s4", print_hash_value);
    transparent_crc(p_1265->g_820.s5, "p_1265->g_820.s5", print_hash_value);
    transparent_crc(p_1265->g_820.s6, "p_1265->g_820.s6", print_hash_value);
    transparent_crc(p_1265->g_820.s7, "p_1265->g_820.s7", print_hash_value);
    transparent_crc(p_1265->g_830.x, "p_1265->g_830.x", print_hash_value);
    transparent_crc(p_1265->g_830.y, "p_1265->g_830.y", print_hash_value);
    transparent_crc(p_1265->g_910.x, "p_1265->g_910.x", print_hash_value);
    transparent_crc(p_1265->g_910.y, "p_1265->g_910.y", print_hash_value);
    transparent_crc(p_1265->g_910.z, "p_1265->g_910.z", print_hash_value);
    transparent_crc(p_1265->g_910.w, "p_1265->g_910.w", print_hash_value);
    transparent_crc(p_1265->g_915.s0, "p_1265->g_915.s0", print_hash_value);
    transparent_crc(p_1265->g_915.s1, "p_1265->g_915.s1", print_hash_value);
    transparent_crc(p_1265->g_915.s2, "p_1265->g_915.s2", print_hash_value);
    transparent_crc(p_1265->g_915.s3, "p_1265->g_915.s3", print_hash_value);
    transparent_crc(p_1265->g_915.s4, "p_1265->g_915.s4", print_hash_value);
    transparent_crc(p_1265->g_915.s5, "p_1265->g_915.s5", print_hash_value);
    transparent_crc(p_1265->g_915.s6, "p_1265->g_915.s6", print_hash_value);
    transparent_crc(p_1265->g_915.s7, "p_1265->g_915.s7", print_hash_value);
    transparent_crc(p_1265->g_939.f0, "p_1265->g_939.f0", print_hash_value);
    transparent_crc(p_1265->g_939.f1, "p_1265->g_939.f1", print_hash_value);
    transparent_crc(p_1265->g_939.f2, "p_1265->g_939.f2", print_hash_value);
    transparent_crc(p_1265->g_946.s0, "p_1265->g_946.s0", print_hash_value);
    transparent_crc(p_1265->g_946.s1, "p_1265->g_946.s1", print_hash_value);
    transparent_crc(p_1265->g_946.s2, "p_1265->g_946.s2", print_hash_value);
    transparent_crc(p_1265->g_946.s3, "p_1265->g_946.s3", print_hash_value);
    transparent_crc(p_1265->g_946.s4, "p_1265->g_946.s4", print_hash_value);
    transparent_crc(p_1265->g_946.s5, "p_1265->g_946.s5", print_hash_value);
    transparent_crc(p_1265->g_946.s6, "p_1265->g_946.s6", print_hash_value);
    transparent_crc(p_1265->g_946.s7, "p_1265->g_946.s7", print_hash_value);
    transparent_crc(p_1265->g_948.x, "p_1265->g_948.x", print_hash_value);
    transparent_crc(p_1265->g_948.y, "p_1265->g_948.y", print_hash_value);
    transparent_crc(p_1265->g_948.z, "p_1265->g_948.z", print_hash_value);
    transparent_crc(p_1265->g_948.w, "p_1265->g_948.w", print_hash_value);
    transparent_crc(p_1265->g_949.x, "p_1265->g_949.x", print_hash_value);
    transparent_crc(p_1265->g_949.y, "p_1265->g_949.y", print_hash_value);
    transparent_crc(p_1265->g_966.x, "p_1265->g_966.x", print_hash_value);
    transparent_crc(p_1265->g_966.y, "p_1265->g_966.y", print_hash_value);
    transparent_crc(p_1265->g_966.z, "p_1265->g_966.z", print_hash_value);
    transparent_crc(p_1265->g_966.w, "p_1265->g_966.w", print_hash_value);
    transparent_crc(p_1265->g_969.f0, "p_1265->g_969.f0", print_hash_value);
    transparent_crc(p_1265->g_987.x, "p_1265->g_987.x", print_hash_value);
    transparent_crc(p_1265->g_987.y, "p_1265->g_987.y", print_hash_value);
    transparent_crc(p_1265->g_987.z, "p_1265->g_987.z", print_hash_value);
    transparent_crc(p_1265->g_987.w, "p_1265->g_987.w", print_hash_value);
    transparent_crc(p_1265->g_989.x, "p_1265->g_989.x", print_hash_value);
    transparent_crc(p_1265->g_989.y, "p_1265->g_989.y", print_hash_value);
    transparent_crc(p_1265->g_999.f0, "p_1265->g_999.f0", print_hash_value);
    transparent_crc(p_1265->g_1004.x, "p_1265->g_1004.x", print_hash_value);
    transparent_crc(p_1265->g_1004.y, "p_1265->g_1004.y", print_hash_value);
    transparent_crc(p_1265->g_1079, "p_1265->g_1079", print_hash_value);
    transparent_crc(p_1265->g_1094.s0, "p_1265->g_1094.s0", print_hash_value);
    transparent_crc(p_1265->g_1094.s1, "p_1265->g_1094.s1", print_hash_value);
    transparent_crc(p_1265->g_1094.s2, "p_1265->g_1094.s2", print_hash_value);
    transparent_crc(p_1265->g_1094.s3, "p_1265->g_1094.s3", print_hash_value);
    transparent_crc(p_1265->g_1094.s4, "p_1265->g_1094.s4", print_hash_value);
    transparent_crc(p_1265->g_1094.s5, "p_1265->g_1094.s5", print_hash_value);
    transparent_crc(p_1265->g_1094.s6, "p_1265->g_1094.s6", print_hash_value);
    transparent_crc(p_1265->g_1094.s7, "p_1265->g_1094.s7", print_hash_value);
    transparent_crc(p_1265->g_1112, "p_1265->g_1112", print_hash_value);
    transparent_crc(p_1265->g_1186.s0, "p_1265->g_1186.s0", print_hash_value);
    transparent_crc(p_1265->g_1186.s1, "p_1265->g_1186.s1", print_hash_value);
    transparent_crc(p_1265->g_1186.s2, "p_1265->g_1186.s2", print_hash_value);
    transparent_crc(p_1265->g_1186.s3, "p_1265->g_1186.s3", print_hash_value);
    transparent_crc(p_1265->g_1186.s4, "p_1265->g_1186.s4", print_hash_value);
    transparent_crc(p_1265->g_1186.s5, "p_1265->g_1186.s5", print_hash_value);
    transparent_crc(p_1265->g_1186.s6, "p_1265->g_1186.s6", print_hash_value);
    transparent_crc(p_1265->g_1186.s7, "p_1265->g_1186.s7", print_hash_value);
    transparent_crc(p_1265->g_1189.s0, "p_1265->g_1189.s0", print_hash_value);
    transparent_crc(p_1265->g_1189.s1, "p_1265->g_1189.s1", print_hash_value);
    transparent_crc(p_1265->g_1189.s2, "p_1265->g_1189.s2", print_hash_value);
    transparent_crc(p_1265->g_1189.s3, "p_1265->g_1189.s3", print_hash_value);
    transparent_crc(p_1265->g_1189.s4, "p_1265->g_1189.s4", print_hash_value);
    transparent_crc(p_1265->g_1189.s5, "p_1265->g_1189.s5", print_hash_value);
    transparent_crc(p_1265->g_1189.s6, "p_1265->g_1189.s6", print_hash_value);
    transparent_crc(p_1265->g_1189.s7, "p_1265->g_1189.s7", print_hash_value);
    transparent_crc(p_1265->g_1192.s0, "p_1265->g_1192.s0", print_hash_value);
    transparent_crc(p_1265->g_1192.s1, "p_1265->g_1192.s1", print_hash_value);
    transparent_crc(p_1265->g_1192.s2, "p_1265->g_1192.s2", print_hash_value);
    transparent_crc(p_1265->g_1192.s3, "p_1265->g_1192.s3", print_hash_value);
    transparent_crc(p_1265->g_1192.s4, "p_1265->g_1192.s4", print_hash_value);
    transparent_crc(p_1265->g_1192.s5, "p_1265->g_1192.s5", print_hash_value);
    transparent_crc(p_1265->g_1192.s6, "p_1265->g_1192.s6", print_hash_value);
    transparent_crc(p_1265->g_1192.s7, "p_1265->g_1192.s7", print_hash_value);
    transparent_crc(p_1265->g_1192.s8, "p_1265->g_1192.s8", print_hash_value);
    transparent_crc(p_1265->g_1192.s9, "p_1265->g_1192.s9", print_hash_value);
    transparent_crc(p_1265->g_1192.sa, "p_1265->g_1192.sa", print_hash_value);
    transparent_crc(p_1265->g_1192.sb, "p_1265->g_1192.sb", print_hash_value);
    transparent_crc(p_1265->g_1192.sc, "p_1265->g_1192.sc", print_hash_value);
    transparent_crc(p_1265->g_1192.sd, "p_1265->g_1192.sd", print_hash_value);
    transparent_crc(p_1265->g_1192.se, "p_1265->g_1192.se", print_hash_value);
    transparent_crc(p_1265->g_1192.sf, "p_1265->g_1192.sf", print_hash_value);
    transparent_crc(p_1265->g_1197.s0, "p_1265->g_1197.s0", print_hash_value);
    transparent_crc(p_1265->g_1197.s1, "p_1265->g_1197.s1", print_hash_value);
    transparent_crc(p_1265->g_1197.s2, "p_1265->g_1197.s2", print_hash_value);
    transparent_crc(p_1265->g_1197.s3, "p_1265->g_1197.s3", print_hash_value);
    transparent_crc(p_1265->g_1197.s4, "p_1265->g_1197.s4", print_hash_value);
    transparent_crc(p_1265->g_1197.s5, "p_1265->g_1197.s5", print_hash_value);
    transparent_crc(p_1265->g_1197.s6, "p_1265->g_1197.s6", print_hash_value);
    transparent_crc(p_1265->g_1197.s7, "p_1265->g_1197.s7", print_hash_value);
    transparent_crc(p_1265->g_1197.s8, "p_1265->g_1197.s8", print_hash_value);
    transparent_crc(p_1265->g_1197.s9, "p_1265->g_1197.s9", print_hash_value);
    transparent_crc(p_1265->g_1197.sa, "p_1265->g_1197.sa", print_hash_value);
    transparent_crc(p_1265->g_1197.sb, "p_1265->g_1197.sb", print_hash_value);
    transparent_crc(p_1265->g_1197.sc, "p_1265->g_1197.sc", print_hash_value);
    transparent_crc(p_1265->g_1197.sd, "p_1265->g_1197.sd", print_hash_value);
    transparent_crc(p_1265->g_1197.se, "p_1265->g_1197.se", print_hash_value);
    transparent_crc(p_1265->g_1197.sf, "p_1265->g_1197.sf", print_hash_value);
    transparent_crc(p_1265->g_1200, "p_1265->g_1200", print_hash_value);
    transparent_crc(p_1265->g_1201, "p_1265->g_1201", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
