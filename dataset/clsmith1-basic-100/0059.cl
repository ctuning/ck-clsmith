// ---fake_divergence -g 58,55,1 -l 2,1,1
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


// Seed: 59

#include "CLSmith.h"

/* --- Struct/Union Declarations --- */
struct S0 {
   uint64_t  f0;
   uint64_t  f1;
   volatile int64_t  f2;
};

union U1 {
   volatile uint64_t  f0;
};

struct S2 {
    volatile int32_t g_2;
    volatile int32_t g_3[10];
    int32_t g_4;
    int32_t g_9[4];
    int16_t g_23;
    int32_t *g_50;
    int32_t **g_49;
    struct S0 g_55;
    struct S0 *g_54;
    int32_t g_73[7][9];
    struct S0 g_74;
    int64_t g_88;
    int32_t *** volatile g_90;
    volatile struct S0 g_91[4][2];
    volatile struct S0 g_92;
    int32_t *** volatile g_112;
    struct S0 g_113;
    struct S0 g_114;
    struct S0 g_115;
    union U1 g_140;
    uint32_t g_146;
    struct S0 g_169;
    union U1 g_176[10];
    uint64_t g_186;
    uint16_t g_188;
    int32_t g_220;
    volatile struct S0 g_224;
    int64_t g_226;
    int32_t ***g_255;
    int32_t ****g_254;
    int64_t g_286[2][3][2];
    union U1 *g_290;
    union U1 ** volatile g_289[3];
    int16_t g_296;
    int16_t *g_295;
    int8_t g_313[3][4];
    uint32_t g_324;
    uint64_t *g_326[6];
    int8_t *g_329;
    uint16_t g_333;
    uint32_t g_334;
    int16_t g_370;
    volatile struct S0 g_390;
    int16_t g_425[10];
    uint32_t g_432[6];
    volatile uint32_t g_441;
    volatile uint32_t * volatile g_440;
    volatile uint32_t * volatile *g_439;
    struct S0 g_449[4][9][5];
    int16_t g_459;
    volatile int32_t g_498;
    int8_t g_543;
    int8_t g_547;
    int8_t *** volatile g_577;
    int8_t **g_579[5][3][10];
    int8_t *** volatile g_578;
    uint8_t g_629;
    int16_t **g_700;
    int16_t **g_702;
    int16_t *** volatile g_701;
    struct S0 g_704;
    union U1 ** volatile g_721;
    volatile union U1 g_733;
    volatile struct S0 g_785;
    int32_t *** volatile g_813;
    struct S0 ** volatile g_814;
    int32_t g_829;
    struct S0 ** volatile g_832;
    volatile uint64_t * volatile g_887[1];
    volatile uint64_t * volatile *g_886;
    struct S0 *g_890;
    volatile int32_t *g_935[8];
    volatile int32_t ** volatile g_934[1];
    volatile int32_t ** volatile g_936;
    volatile int32_t ** volatile g_972;
    volatile union U1 g_1088;
    union U1 g_1115;
    union U1 g_1116;
    uint64_t *g_1141;
    int32_t g_1142;
    struct S0 g_1177;
    volatile union U1 g_1179;
    int32_t g_1229;
    union U1 g_1286;
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
union U1  func_1(struct S2 * p_1303);
struct S0 * func_12(struct S0 * p_13, struct S2 * p_1303);
struct S0 * func_14(struct S0 * p_15, int16_t  p_16, struct S2 * p_1303);
struct S0 * func_17(int32_t  p_18, uint64_t  p_19, uint32_t  p_20, struct S2 * p_1303);
uint16_t  func_28(int32_t ** p_29, uint32_t  p_30, int16_t * p_31, int32_t ** p_32, struct S0 * p_33, struct S2 * p_1303);
int32_t ** func_34(int32_t ** p_35, int16_t * p_36, int32_t * p_37, int64_t  p_38, struct S0 * p_39, struct S2 * p_1303);
int32_t ** func_40(int32_t ** p_41, uint32_t  p_42, struct S0 * p_43, uint16_t  p_44, uint8_t  p_45, struct S2 * p_1303);
int32_t ** func_46(int32_t ** p_47, int32_t * p_48, struct S2 * p_1303);
int32_t * func_51(struct S0 * p_52, uint32_t  p_53, struct S2 * p_1303);
int8_t  func_62(uint32_t  p_63, struct S0 * p_64, int32_t ** p_65, struct S2 * p_1303);


/* --- FUNCTIONS --- */
/* ------------------------------------------ */
/* 
 * reads : p_1303->g_4 p_1303->g_9 p_1303->g_49 p_1303->g_50 p_1303->g_54 p_1303->g_55.f1 p_1303->g_23 p_1303->g_74 p_1303->g_3 p_1303->g_55.f2 p_1303->g_90 p_1303->g_91 p_1303->g_73 p_1303->g_112 p_1303->g_113 p_1303->g_115 p_1303->g_92.f2 p_1303->g_140 p_1303->g_88 p_1303->g_55 p_1303->g_176 p_1303->g_146 p_1303->g_169.f1 p_1303->g_186 p_1303->g_169.f0 p_1303->g_224 p_1303->g_188 p_1303->g_92.f0 p_1303->g_220 p_1303->g_226 p_1303->g_255 p_1303->g_295 p_1303->g_114.f0 p_1303->g_296 p_1303->g_329 p_1303->g_313 p_1303->g_547 p_1303->g_425 p_1303->g_432 p_1303->g_459 p_1303->g_578 p_1303->g_449 p_1303->g_629 p_1303->g_701 p_1303->g_704 p_1303->g_333 p_1303->g_721 p_1303->g_972 p_1303->g_324 p_1303->g_936 p_1303->g_935 p_1303->g_2 p_1303->g_814 p_1303->g_832 p_1303->g_439 p_1303->g_440 p_1303->g_441 p_1303->g_114.f1 p_1303->g_1088 p_1303->g_700 p_1303->g_169.f2 p_1303->g_785.f0 p_1303->g_1115 p_1303->g_1116 p_1303->g_334 p_1303->g_1177 p_1303->g_1179 p_1303->g_114.f2 p_1303->g_1141 p_1303->g_254 p_1303->g_1115.f0 p_1303->g_1229 p_1303->g_829 p_1303->g_1286 p_1303->g_286 p_1303->g_290
 * writes: p_1303->g_4 p_1303->g_9 p_1303->g_49 p_1303->g_23 p_1303->g_73 p_1303->g_3 p_1303->g_74.f0 p_1303->g_88 p_1303->g_55.f0 p_1303->g_92 p_1303->g_114 p_1303->g_55 p_1303->g_115.f1 p_1303->g_74.f1 p_1303->g_146 p_1303->g_169 p_1303->g_186 p_1303->g_188 p_1303->g_220 p_1303->g_113.f0 p_1303->g_226 p_1303->g_113.f1 p_1303->g_254 p_1303->g_50 p_1303->g_286 p_1303->g_543 p_1303->g_547 p_1303->g_296 p_1303->g_459 p_1303->g_579 p_1303->g_91 p_1303->g_629 p_1303->g_425 p_1303->g_255 p_1303->g_700 p_1303->g_702 p_1303->g_333 p_1303->g_290 p_1303->g_704.f0 p_1303->g_829 p_1303->g_935 p_1303->g_54 p_1303->g_313 p_1303->g_432 p_1303->g_324 p_1303->g_704.f1
 */
union U1  func_1(struct S2 * p_1303)
{ /* block id: 4 */
    int32_t *l_21 = (void*)0;
    uint8_t l_292 = 0x3BL;
    int16_t ***l_1080 = &p_1303->g_702;
    union U1 **l_1097[2][2] = {{&p_1303->g_290,&p_1303->g_290},{&p_1303->g_290,&p_1303->g_290}};
    int32_t l_1111 = 0x148AEEB9L;
    uint16_t l_1119 = 0x2689L;
    struct S0 *l_1123[8][1][6] = {{{&p_1303->g_113,&p_1303->g_113,&p_1303->g_113,&p_1303->g_113,&p_1303->g_113,&p_1303->g_113}},{{&p_1303->g_113,&p_1303->g_113,&p_1303->g_113,&p_1303->g_113,&p_1303->g_113,&p_1303->g_113}},{{&p_1303->g_113,&p_1303->g_113,&p_1303->g_113,&p_1303->g_113,&p_1303->g_113,&p_1303->g_113}},{{&p_1303->g_113,&p_1303->g_113,&p_1303->g_113,&p_1303->g_113,&p_1303->g_113,&p_1303->g_113}},{{&p_1303->g_113,&p_1303->g_113,&p_1303->g_113,&p_1303->g_113,&p_1303->g_113,&p_1303->g_113}},{{&p_1303->g_113,&p_1303->g_113,&p_1303->g_113,&p_1303->g_113,&p_1303->g_113,&p_1303->g_113}},{{&p_1303->g_113,&p_1303->g_113,&p_1303->g_113,&p_1303->g_113,&p_1303->g_113,&p_1303->g_113}},{{&p_1303->g_113,&p_1303->g_113,&p_1303->g_113,&p_1303->g_113,&p_1303->g_113,&p_1303->g_113}}};
    uint64_t *l_1127 = &p_1303->g_704.f1;
    uint64_t **l_1126[9][10] = {{&l_1127,&l_1127,&l_1127,&l_1127,&l_1127,&l_1127,&l_1127,&l_1127,&l_1127,&l_1127},{&l_1127,&l_1127,&l_1127,&l_1127,&l_1127,&l_1127,&l_1127,&l_1127,&l_1127,&l_1127},{&l_1127,&l_1127,&l_1127,&l_1127,&l_1127,&l_1127,&l_1127,&l_1127,&l_1127,&l_1127},{&l_1127,&l_1127,&l_1127,&l_1127,&l_1127,&l_1127,&l_1127,&l_1127,&l_1127,&l_1127},{&l_1127,&l_1127,&l_1127,&l_1127,&l_1127,&l_1127,&l_1127,&l_1127,&l_1127,&l_1127},{&l_1127,&l_1127,&l_1127,&l_1127,&l_1127,&l_1127,&l_1127,&l_1127,&l_1127,&l_1127},{&l_1127,&l_1127,&l_1127,&l_1127,&l_1127,&l_1127,&l_1127,&l_1127,&l_1127,&l_1127},{&l_1127,&l_1127,&l_1127,&l_1127,&l_1127,&l_1127,&l_1127,&l_1127,&l_1127,&l_1127},{&l_1127,&l_1127,&l_1127,&l_1127,&l_1127,&l_1127,&l_1127,&l_1127,&l_1127,&l_1127}};
    uint8_t l_1144 = 1UL;
    uint32_t l_1198 = 0UL;
    int64_t l_1251 = (-1L);
    int32_t l_1256 = (-1L);
    int32_t l_1258 = 0x371E57D3L;
    uint32_t l_1275 = 0xDE977785L;
    int i, j, k;
    for (p_1303->g_4 = (-15); (p_1303->g_4 == 7); p_1303->g_4++)
    { /* block id: 7 */
        int32_t *l_8 = &p_1303->g_4;
        int32_t **l_7 = &l_8;
        int32_t l_27 = 0x4CCE1CC0L;
        struct S0 *l_294 = (void*)0;
        uint16_t l_1109[10][9] = {{5UL,0x0A55L,0x61C3L,7UL,65535UL,65535UL,65535UL,65535UL,7UL},{5UL,0x0A55L,0x61C3L,7UL,65535UL,65535UL,65535UL,65535UL,7UL},{5UL,0x0A55L,0x61C3L,7UL,65535UL,65535UL,65535UL,65535UL,7UL},{5UL,0x0A55L,0x61C3L,7UL,65535UL,65535UL,65535UL,65535UL,7UL},{5UL,0x0A55L,0x61C3L,7UL,65535UL,65535UL,65535UL,65535UL,7UL},{5UL,0x0A55L,0x61C3L,7UL,65535UL,65535UL,65535UL,65535UL,7UL},{5UL,0x0A55L,0x61C3L,7UL,65535UL,65535UL,65535UL,65535UL,7UL},{5UL,0x0A55L,0x61C3L,7UL,65535UL,65535UL,65535UL,65535UL,7UL},{5UL,0x0A55L,0x61C3L,7UL,65535UL,65535UL,65535UL,65535UL,7UL},{5UL,0x0A55L,0x61C3L,7UL,65535UL,65535UL,65535UL,65535UL,7UL}};
        int32_t *l_1117 = (void*)0;
        int32_t *l_1118[7][4] = {{&p_1303->g_73[6][1],&p_1303->g_73[6][1],&p_1303->g_4,&p_1303->g_73[3][7]},{&p_1303->g_73[6][1],&p_1303->g_73[6][1],&p_1303->g_4,&p_1303->g_73[3][7]},{&p_1303->g_73[6][1],&p_1303->g_73[6][1],&p_1303->g_4,&p_1303->g_73[3][7]},{&p_1303->g_73[6][1],&p_1303->g_73[6][1],&p_1303->g_4,&p_1303->g_73[3][7]},{&p_1303->g_73[6][1],&p_1303->g_73[6][1],&p_1303->g_4,&p_1303->g_73[3][7]},{&p_1303->g_73[6][1],&p_1303->g_73[6][1],&p_1303->g_4,&p_1303->g_73[3][7]},{&p_1303->g_73[6][1],&p_1303->g_73[6][1],&p_1303->g_4,&p_1303->g_73[3][7]}};
        uint8_t *l_1120 = &l_292;
        uint64_t *l_1140[5];
        uint16_t *l_1143 = &l_1109[2][2];
        uint32_t l_1145[10] = {0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL,0UL};
        uint32_t *l_1146[7][1][9] = {{{&l_1145[0],&p_1303->g_324,&l_1145[0],&l_1145[0],&p_1303->g_324,&l_1145[0],&l_1145[0],&p_1303->g_324,&l_1145[0]}},{{&l_1145[0],&p_1303->g_324,&l_1145[0],&l_1145[0],&p_1303->g_324,&l_1145[0],&l_1145[0],&p_1303->g_324,&l_1145[0]}},{{&l_1145[0],&p_1303->g_324,&l_1145[0],&l_1145[0],&p_1303->g_324,&l_1145[0],&l_1145[0],&p_1303->g_324,&l_1145[0]}},{{&l_1145[0],&p_1303->g_324,&l_1145[0],&l_1145[0],&p_1303->g_324,&l_1145[0],&l_1145[0],&p_1303->g_324,&l_1145[0]}},{{&l_1145[0],&p_1303->g_324,&l_1145[0],&l_1145[0],&p_1303->g_324,&l_1145[0],&l_1145[0],&p_1303->g_324,&l_1145[0]}},{{&l_1145[0],&p_1303->g_324,&l_1145[0],&l_1145[0],&p_1303->g_324,&l_1145[0],&l_1145[0],&p_1303->g_324,&l_1145[0]}},{{&l_1145[0],&p_1303->g_324,&l_1145[0],&l_1145[0],&p_1303->g_324,&l_1145[0],&l_1145[0],&p_1303->g_324,&l_1145[0]}}};
        int32_t *l_1148 = &p_1303->g_220;
        int32_t **l_1147 = &l_1148;
        int i, j, k;
        for (i = 0; i < 5; i++)
            l_1140[i] = &p_1303->g_449[0][0][1].f1;
        (*l_7) = (void*)0;
        for (p_1303->g_9[3] = 0; (p_1303->g_9[3] != 13); p_1303->g_9[3]++)
        { /* block id: 11 */
            int16_t *l_22[6] = {&p_1303->g_23,&p_1303->g_23,&p_1303->g_23,&p_1303->g_23,&p_1303->g_23,&p_1303->g_23};
            int32_t l_24[3][7] = {{0x51D77F17L,0x266FA4BCL,0x1C36B586L,0L,0x266FA4BCL,0L,0x1C36B586L},{0x51D77F17L,0x266FA4BCL,0x1C36B586L,0L,0x266FA4BCL,0L,0x1C36B586L},{0x51D77F17L,0x266FA4BCL,0x1C36B586L,0L,0x266FA4BCL,0L,0x1C36B586L}};
            struct S0 **l_1076[10][2][4] = {{{&l_294,(void*)0,&p_1303->g_54,(void*)0},{&l_294,(void*)0,&p_1303->g_54,(void*)0}},{{&l_294,(void*)0,&p_1303->g_54,(void*)0},{&l_294,(void*)0,&p_1303->g_54,(void*)0}},{{&l_294,(void*)0,&p_1303->g_54,(void*)0},{&l_294,(void*)0,&p_1303->g_54,(void*)0}},{{&l_294,(void*)0,&p_1303->g_54,(void*)0},{&l_294,(void*)0,&p_1303->g_54,(void*)0}},{{&l_294,(void*)0,&p_1303->g_54,(void*)0},{&l_294,(void*)0,&p_1303->g_54,(void*)0}},{{&l_294,(void*)0,&p_1303->g_54,(void*)0},{&l_294,(void*)0,&p_1303->g_54,(void*)0}},{{&l_294,(void*)0,&p_1303->g_54,(void*)0},{&l_294,(void*)0,&p_1303->g_54,(void*)0}},{{&l_294,(void*)0,&p_1303->g_54,(void*)0},{&l_294,(void*)0,&p_1303->g_54,(void*)0}},{{&l_294,(void*)0,&p_1303->g_54,(void*)0},{&l_294,(void*)0,&p_1303->g_54,(void*)0}},{{&l_294,(void*)0,&p_1303->g_54,(void*)0},{&l_294,(void*)0,&p_1303->g_54,(void*)0}}};
            int8_t l_1079 = 0x06L;
            int16_t *l_1106[3][2][10] = {{{&p_1303->g_459,&p_1303->g_425[1],(void*)0,&p_1303->g_425[1],&p_1303->g_296,&p_1303->g_425[1],(void*)0,&p_1303->g_425[1],&p_1303->g_459,(void*)0},{&p_1303->g_459,&p_1303->g_425[1],(void*)0,&p_1303->g_425[1],&p_1303->g_296,&p_1303->g_425[1],(void*)0,&p_1303->g_425[1],&p_1303->g_459,(void*)0}},{{&p_1303->g_459,&p_1303->g_425[1],(void*)0,&p_1303->g_425[1],&p_1303->g_296,&p_1303->g_425[1],(void*)0,&p_1303->g_425[1],&p_1303->g_459,(void*)0},{&p_1303->g_459,&p_1303->g_425[1],(void*)0,&p_1303->g_425[1],&p_1303->g_296,&p_1303->g_425[1],(void*)0,&p_1303->g_425[1],&p_1303->g_459,(void*)0}},{{&p_1303->g_459,&p_1303->g_425[1],(void*)0,&p_1303->g_425[1],&p_1303->g_296,&p_1303->g_425[1],(void*)0,&p_1303->g_425[1],&p_1303->g_459,(void*)0},{&p_1303->g_459,&p_1303->g_425[1],(void*)0,&p_1303->g_425[1],&p_1303->g_296,&p_1303->g_425[1],(void*)0,&p_1303->g_425[1],&p_1303->g_459,(void*)0}}};
            int i, j, k;
            (*p_1303->g_814) = func_12(func_14(func_17((((p_1303->g_9[3] < ((l_21 == (void*)0) | 8UL)) == (l_24[1][3] = p_1303->g_9[1])) , (safe_rshift_func_int16_t_s_u(l_27, func_28(func_34(func_40(func_46(p_1303->g_49, (*p_1303->g_49), p_1303), p_1303->g_9[3], p_1303->g_54, p_1303->g_115.f0, l_292, p_1303), l_22[2], (*l_7), p_1303->g_9[1], l_294, p_1303), l_24[1][3], p_1303->g_295, &l_21, p_1303->g_54, p_1303)))), p_1303->g_115.f0, p_1303->g_115.f0, p_1303), (*p_1303->g_295), p_1303), p_1303);
            if ((safe_mul_func_uint8_t_u_u(l_1079, (((*p_1303->g_329) ^= (p_1303->g_188 >= (l_1079 && (l_1080 != &p_1303->g_702)))) < (safe_rshift_func_int8_t_s_u(0x24L, 5))))))
            { /* block id: 616 */
                int16_t *l_1105 = &p_1303->g_425[0];
                uint32_t l_1110[3][6] = {{0x466052F1L,0x466052F1L,0x466052F1L,0x466052F1L,0x466052F1L,0x466052F1L},{0x466052F1L,0x466052F1L,0x466052F1L,0x466052F1L,0x466052F1L,0x466052F1L},{0x466052F1L,0x466052F1L,0x466052F1L,0x466052F1L,0x466052F1L,0x466052F1L}};
                int i, j;
                for (p_1303->g_114.f1 = 6; (p_1303->g_114.f1 >= 9); p_1303->g_114.f1 = safe_add_func_int16_t_s_s(p_1303->g_114.f1, 8))
                { /* block id: 619 */
                    uint32_t l_1087 = 4294967295UL;
                    (*p_1303->g_49) = l_21;
                    for (p_1303->g_459 = (-11); (p_1303->g_459 > 21); p_1303->g_459++)
                    { /* block id: 623 */
                        union U1 ***l_1098 = &l_1097[1][0];
                        int32_t l_1107 = 0x2C457DC1L;
                        uint8_t *l_1108 = &p_1303->g_629;
                        if (l_1087)
                            break;
                        l_1111 = (((p_1303->g_1088 , (safe_rshift_func_int8_t_s_s(((safe_lshift_func_int16_t_s_u((**p_1303->g_700), 8)) >= ((*p_1303->g_329) &= (safe_sub_func_uint16_t_u_u((((*l_1105) = ((((((safe_mod_func_uint32_t_u_u(((&p_1303->g_290 == ((*l_1098) = l_1097[1][0])) >= (safe_add_func_uint8_t_u_u(((*l_1108) ^= (safe_add_func_int32_t_s_s((((((safe_add_func_int64_t_s_s((~p_1303->g_169.f2), (l_292 | p_1303->g_186))) , l_1105) == (l_22[5] = l_1106[1][0][6])) , p_1303->g_785.f0) <= l_1107), l_1107))), 0x09L))), p_1303->g_55.f0)) >= l_1087) <= l_1107) >= l_1109[7][8]) , 0xE8L) > l_292)) , GROUP_DIVERGE(0, 1)), (*p_1303->g_295))))), 5))) , l_1110[2][3]) & 0L);
                    }
                    for (p_1303->g_74.f0 = 0; (p_1303->g_74.f0 < 45); p_1303->g_74.f0 = safe_add_func_int8_t_s_s(p_1303->g_74.f0, 5))
                    { /* block id: 634 */
                        int8_t l_1114 = (-5L);
                        if (l_1114)
                            break;
                    }
                    if (l_1079)
                        continue;
                }
                return p_1303->g_1115;
            }
            else
            { /* block id: 640 */
                return p_1303->g_1116;
            }
        }
        l_1119 |= ((**p_1303->g_49) |= 5L);
        (*p_1303->g_50) = ((((*l_1120) = p_1303->g_334) <= (safe_sub_func_int8_t_s_s((((*l_1147) = &l_27) == (void*)0), p_1303->g_55.f0))) || p_1303->g_115.f0);
    }
    for (p_1303->g_115.f1 = (-9); (p_1303->g_115.f1 == 40); p_1303->g_115.f1++)
    { /* block id: 657 */
        uint8_t l_1153 = 0UL;
        int32_t l_1231 = 0x5E4A02AFL;
        int32_t l_1250 = (-1L);
        int32_t l_1252 = 2L;
        int32_t l_1253 = 0L;
        int32_t l_1254 = 7L;
        int32_t l_1255[4][2] = {{0x242C936FL,0x242C936FL},{0x242C936FL,0x242C936FL},{0x242C936FL,0x242C936FL},{0x242C936FL,0x242C936FL}};
        int8_t l_1257 = 0x15L;
        int64_t l_1263 = 0L;
        uint64_t l_1265 = 0xA626902A2936C171L;
        uint64_t l_1300 = 0xA168023F04C79826L;
        int i, j;
        if (((safe_rshift_func_uint8_t_u_s((l_1153 & (safe_div_func_uint64_t_u_u(l_1153, (safe_sub_func_int8_t_s_s((safe_lshift_func_int8_t_s_s(((&p_1303->g_290 == ((safe_rshift_func_uint16_t_u_u((l_1153 ^ l_1111), 2)) , l_1097[1][0])) ^ (safe_mul_func_int16_t_s_s((safe_rshift_func_uint16_t_u_s(0xA21AL, (((*p_1303->g_295) = (safe_div_func_int32_t_s_s((((l_1153 > (safe_lshift_func_int8_t_s_u((safe_add_func_int32_t_s_s((((safe_div_func_int16_t_s_s((safe_mod_func_int64_t_s_s(((((safe_unary_minus_func_int8_t_s((~((((((p_1303->g_188 & l_1153) , 0x7BL) == 0L) | l_1153) != l_1144) || l_1144)))) , p_1303->g_425[0]) , (*p_1303->g_440)) > (-9L)), p_1303->g_114.f0)), l_1111)) && l_1153) || (**p_1303->g_439)), l_1153)), 2))) , l_292) & p_1303->g_629), (*p_1303->g_50)))) , (**p_1303->g_700)))), l_1153))), 2)), l_1153))))), (*p_1303->g_329))) , 0L))
        { /* block id: 659 */
            uint16_t l_1189[8];
            int32_t l_1209 = 0x05801685L;
            int32_t l_1210 = 0x6772A4D3L;
            int32_t l_1259 = 0L;
            int32_t *l_1268 = &p_1303->g_9[2];
            int32_t *l_1269 = &l_1209;
            int32_t *l_1270 = &l_1256;
            int32_t *l_1271 = (void*)0;
            int32_t *l_1272 = &l_1209;
            int32_t *l_1273 = (void*)0;
            int32_t *l_1274[10] = {&l_1258,&p_1303->g_9[3],&l_1258,&l_1258,&p_1303->g_9[3],&l_1258,&l_1258,&p_1303->g_9[3],&l_1258,&l_1258};
            int i;
            for (i = 0; i < 8; i++)
                l_1189[i] = 0x88CFL;
            for (l_1153 = 1; (l_1153 <= 7); l_1153 += 1)
            { /* block id: 662 */
                uint64_t *l_1178 = &p_1303->g_704.f0;
                uint32_t *l_1182 = &p_1303->g_432[3];
                uint32_t *l_1185 = (void*)0;
                uint32_t *l_1186 = &p_1303->g_324;
                int32_t l_1194 = 0x07844638L;
                int16_t l_1197 = 1L;
                int64_t *l_1205 = (void*)0;
                int64_t *l_1206[2][1];
                uint64_t l_1260 = 0xA5B06DD2B6EF74E0L;
                int32_t l_1264 = 9L;
                int i, j;
                for (i = 0; i < 2; i++)
                {
                    for (j = 0; j < 1; j++)
                        l_1206[i][j] = &p_1303->g_88;
                }
                (***p_1303->g_255) = ((((0x21C3CEA5L > (p_1303->g_1177 , (((*l_1178) |= l_1153) == (p_1303->g_1179 , (safe_sub_func_uint32_t_u_u(((*l_1186) &= (~(++(*l_1182)))), (0x3A184202AF42E697L | (safe_add_func_uint16_t_u_u(((l_1189[4] , GROUP_DIVERGE(2, 1)) | ((safe_sub_func_uint8_t_u_u((safe_sub_func_uint32_t_u_u(FAKE_DIVERGE(p_1303->local_0_offset, get_local_id(0), 10), 0xEC93708BL)), 248UL)) <= (0x3A3DB3DD14C43B04L == 0xCF5B3CAA7BF6236FL))), l_1153))))))))) == p_1303->g_114.f1) & l_1194) >= (***p_1303->g_255));
                (**p_1303->g_49) = ((safe_mod_func_int16_t_s_s(l_1197, l_1198)) == ((((l_1210 &= (safe_div_func_uint32_t_u_u(((*l_1186) = (safe_div_func_int16_t_s_s((GROUP_DIVERGE(1, 1) , (((((p_1303->g_114.f2 < ((p_1303->g_88 = ((void*)0 == &p_1303->g_290)) == p_1303->g_9[3])) != (((**p_1303->g_700) > (safe_rshift_func_int16_t_s_s(l_1194, (((*p_1303->g_1141) = l_1189[2]) , l_1189[1])))) ^ FAKE_DIVERGE(p_1303->global_0_offset, get_global_id(0), 10))) < l_1153) , GROUP_DIVERGE(1, 1)) | l_1209)), 0x783EL))), l_1197))) & (-3L)) >= (****p_1303->g_254)) , (*p_1303->g_329)));
                if (l_1153)
                    break;
                for (p_1303->g_226 = 3; (p_1303->g_226 >= 0); p_1303->g_226 -= 1)
                { /* block id: 675 */
                    int16_t l_1213 = 0x349CL;
                    union U1 ***l_1224 = &l_1097[1][0];
                    uint8_t *l_1227 = &l_1144;
                    uint8_t *l_1228 = &p_1303->g_629;
                    int32_t *l_1230 = &p_1303->g_73[6][0];
                    int32_t *l_1246 = (void*)0;
                    int32_t *l_1247 = &l_1210;
                    int32_t *l_1248 = &l_1209;
                    int32_t *l_1249[1];
                    int i;
                    for (i = 0; i < 1; i++)
                        l_1249[i] = &p_1303->g_9[2];
                    (*l_1230) &= ((safe_lshift_func_int16_t_s_s(p_1303->g_9[p_1303->g_226], ((((*l_1178) &= l_1213) < (safe_rshift_func_int8_t_s_u((((safe_rshift_func_uint16_t_u_u(((safe_add_func_uint32_t_u_u(((safe_div_func_uint8_t_u_u(((((((*l_1228) = ((*l_1227) = ((+((safe_rshift_func_uint8_t_u_s((((*p_1303->g_329) , (l_1210 , 0x68L)) ^ (((&p_1303->g_721 != l_1224) < ((safe_lshift_func_int8_t_s_s(0x32L, 7)) && 6L)) >= 0x9F67L)), 1)) < l_1153)) , p_1303->g_1115.f0))) == p_1303->g_9[3]) > p_1303->g_9[p_1303->g_226]) | l_1213) , p_1303->g_1229), p_1303->g_115.f1)) == p_1303->g_425[0]), p_1303->g_829)) == 0x7C2C0B7E8A39A042L), 7)) <= FAKE_DIVERGE(p_1303->local_1_offset, get_local_id(1), 10)) & 255UL), 0))) & p_1303->g_1177.f0))) > p_1303->g_55.f1);
                }
            }
            --l_1275;
        }
        else
        { /* block id: 697 */
            uint16_t *l_1285[4][1] = {{&p_1303->g_333},{&p_1303->g_333},{&p_1303->g_333},{&p_1303->g_333}};
            int32_t l_1289 = 0x6A0B260EL;
            uint8_t *l_1290[6] = {&l_1153,&l_1153,&l_1153,&l_1153,&l_1153,&l_1153};
            int64_t *l_1299 = &p_1303->g_226;
            int i, j;
            (*p_1303->g_50) ^= (p_1303->g_115.f2 , (l_1300 = (((*l_1299) &= (((safe_unary_minus_func_uint16_t_u(((safe_rshift_func_int16_t_s_s((safe_lshift_func_uint16_t_u_u((l_1250 |= (safe_lshift_func_uint16_t_u_s(65530UL, 12))), (l_1253 = (p_1303->g_1286 , (safe_div_func_int8_t_s_s(l_1289, (p_1303->g_629 = l_1255[2][0]))))))), 7)) >= ((-6L) | ((safe_add_func_uint64_t_u_u(((safe_rshift_func_uint8_t_u_s(p_1303->g_286[1][2][0], 0)) , l_1255[2][0]), (((((safe_add_func_uint16_t_u_u((p_1303->g_333 ^= p_1303->g_169.f0), l_1255[2][0])) != 254UL) != l_1289) , 1L) <= 4294967295UL))) < p_1303->g_547))))) , l_1253) == l_1153)) ^ 0x5C470BB40AA1D519L)));
        }
        for (p_1303->g_704.f1 = 7; (p_1303->g_704.f1 == 2); p_1303->g_704.f1 = safe_sub_func_int8_t_s_s(p_1303->g_704.f1, 5))
        { /* block id: 708 */
            return (**p_1303->g_721);
        }
    }
    return (**p_1303->g_721);
}


/* ------------------------------------------ */
/* 
 * reads : p_1303->g_295 p_1303->g_9 p_1303->g_23 p_1303->g_439 p_1303->g_440 p_1303->g_441 p_1303->g_49
 * writes: p_1303->g_296 p_1303->g_23 p_1303->g_50
 */
struct S0 * func_12(struct S0 * p_13, struct S2 * p_1303)
{ /* block id: 599 */
    int64_t *l_1031[9] = {(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0};
    int32_t l_1034 = (-4L);
    uint16_t *l_1035[10] = {&p_1303->g_188,(void*)0,&p_1303->g_333,(void*)0,&p_1303->g_188,&p_1303->g_188,(void*)0,&p_1303->g_333,(void*)0,&p_1303->g_188};
    int32_t l_1036 = 0x621EE326L;
    int32_t l_1039 = (-10L);
    uint64_t *l_1048 = (void*)0;
    uint64_t **l_1047 = &l_1048;
    int16_t *l_1049 = (void*)0;
    int16_t *l_1050 = &p_1303->g_23;
    int32_t l_1051 = 1L;
    int32_t *l_1052[8] = {&l_1051,&l_1051,&l_1051,&l_1051,&l_1051,&l_1051,&l_1051,&l_1051};
    uint32_t l_1053 = 4294967291UL;
    int16_t ***l_1062[7] = {&p_1303->g_702,&p_1303->g_702,&p_1303->g_702,&p_1303->g_702,&p_1303->g_702,&p_1303->g_702,&p_1303->g_702};
    uint8_t *l_1063 = &p_1303->g_629;
    uint8_t l_1070 = 254UL;
    int32_t *l_1071 = &p_1303->g_220;
    uint8_t l_1072[2];
    uint64_t *l_1073 = &p_1303->g_449[0][0][1].f0;
    int8_t l_1074 = 0x1BL;
    int8_t l_1075 = (-1L);
    int i;
    for (i = 0; i < 2; i++)
        l_1072[i] = 6UL;
    l_1051 ^= (safe_rshift_func_uint8_t_u_s((l_1031[7] != &p_1303->g_286[0][2][0]), (safe_mod_func_uint64_t_u_u((l_1034 | (0x3B656FE2L <= ((((*p_1303->g_295) = 1L) >= (l_1036 = l_1034)) < ((safe_add_func_uint64_t_u_u((((l_1039 = (+0x70DC5B2BL)) != l_1034) <= ((((*l_1050) &= (safe_rshift_func_int16_t_s_u((safe_rshift_func_int16_t_s_u((safe_unary_minus_func_int8_t_s((((safe_sub_func_int16_t_s_s((l_1047 == (void*)0), 65535UL)) > 0x6C1C5677D04CF661L) , l_1034))), l_1034)), p_1303->g_9[3]))) , (**p_1303->g_439)) ^ 4L)), (-7L))) >= 0x27L)))), 0x45B3FE2BD88F418BL))));
    ++l_1053;
    (*p_1303->g_49) = &l_1036;
    return p_13;
}


/* ------------------------------------------ */
/* 
 * reads : p_1303->g_186 p_1303->g_188 p_1303->g_329 p_1303->g_313 p_1303->g_295 p_1303->g_296 p_1303->g_220 p_1303->g_547 p_1303->g_146 p_1303->g_425 p_1303->g_432 p_1303->g_459 p_1303->g_226 p_1303->g_578 p_1303->g_3 p_1303->g_449 p_1303->g_629 p_1303->g_115.f1 p_1303->g_91.f2 p_1303->g_55.f0 p_1303->g_49 p_1303->g_255 p_1303->g_90 p_1303->g_50 p_1303->g_701 p_1303->g_112 p_1303->g_704 p_1303->g_114.f0 p_1303->g_333 p_1303->g_73 p_1303->g_721 p_1303->g_54 p_1303->g_74.f1 p_1303->g_972 p_1303->g_324 p_1303->g_936 p_1303->g_935 p_1303->g_2 p_1303->g_814 p_1303->g_832
 * writes: p_1303->g_186 p_1303->g_55.f0 p_1303->g_188 p_1303->g_543 p_1303->g_547 p_1303->g_296 p_1303->g_113.f0 p_1303->g_459 p_1303->g_23 p_1303->g_579 p_1303->g_55.f1 p_1303->g_114.f0 p_1303->g_220 p_1303->g_91 p_1303->g_115.f1 p_1303->g_629 p_1303->g_425 p_1303->g_88 p_1303->g_50 p_1303->g_255 p_1303->g_700 p_1303->g_702 p_1303->g_333 p_1303->g_114.f1 p_1303->g_73 p_1303->g_290 p_1303->g_704.f0 p_1303->g_829 p_1303->g_55 p_1303->g_74.f1 p_1303->g_935
 */
struct S0 * func_14(struct S0 * p_15, int16_t  p_16, struct S2 * p_1303)
{ /* block id: 292 */
    int16_t l_514 = 0x60DBL;
    int8_t *l_522 = (void*)0;
    uint32_t l_554 = 7UL;
    int8_t l_571 = 0x12L;
    int64_t *l_574 = &p_1303->g_88;
    int64_t **l_573[8][4][1] = {{{&l_574},{&l_574},{&l_574},{&l_574}},{{&l_574},{&l_574},{&l_574},{&l_574}},{{&l_574},{&l_574},{&l_574},{&l_574}},{{&l_574},{&l_574},{&l_574},{&l_574}},{{&l_574},{&l_574},{&l_574},{&l_574}},{{&l_574},{&l_574},{&l_574},{&l_574}},{{&l_574},{&l_574},{&l_574},{&l_574}},{{&l_574},{&l_574},{&l_574},{&l_574}}};
    int32_t l_575 = (-1L);
    int32_t l_586 = 0x57AC5C32L;
    int32_t l_592 = 1L;
    int32_t l_593 = 0x2EC042DBL;
    int32_t l_596 = 0x6E91F996L;
    int64_t l_597 = 0x437BAF4CF65042AAL;
    int32_t l_601 = (-3L);
    int8_t l_615 = (-10L);
    int32_t ****l_679 = &p_1303->g_255;
    int16_t l_764[2];
    uint32_t l_850 = 0x63B314AAL;
    struct S0 *l_958 = &p_1303->g_704;
    uint32_t *l_961 = &p_1303->g_432[5];
    uint32_t **l_960[6] = {&l_961,&l_961,&l_961,&l_961,&l_961,&l_961};
    uint32_t ***l_959 = &l_960[3];
    int32_t *l_962 = &p_1303->g_73[4][7];
    int i, j, k;
    for (i = 0; i < 2; i++)
        l_764[i] = (-1L);
    for (p_1303->g_186 = 0; (p_1303->g_186 <= 1); p_1303->g_186 += 1)
    { /* block id: 295 */
        int64_t l_544 = (-1L);
        int32_t l_545 = (-3L);
        int32_t l_548 = 0x27CFC7A7L;
        int32_t l_549 = (-8L);
        int32_t l_551[4] = {1L,1L,1L,1L};
        uint32_t *l_642 = &p_1303->g_324;
        uint32_t **l_641 = &l_642;
        int32_t *l_671 = &l_596;
        uint8_t l_695[3];
        int i;
        for (i = 0; i < 3; i++)
            l_695[i] = 0xD4L;
        for (p_1303->g_55.f0 = 0; (p_1303->g_55.f0 <= 1); p_1303->g_55.f0 += 1)
        { /* block id: 298 */
            uint16_t *l_515 = (void*)0;
            uint16_t *l_516 = &p_1303->g_188;
            int32_t l_519 = 0x61E0EBF2L;
            int8_t *l_541 = (void*)0;
            int8_t *l_542 = &p_1303->g_543;
            int8_t *l_546 = &p_1303->g_547;
            int64_t *l_550 = &l_544;
            int32_t l_552 = 0L;
            int32_t *l_553 = &l_551[3];
            uint64_t *l_569 = (void*)0;
            uint64_t *l_570 = &p_1303->g_113.f0;
            int16_t *l_572 = &p_1303->g_459;
            int32_t l_587 = 1L;
            int32_t l_595 = 0x58741B1BL;
            int32_t l_598[4][4][5] = {{{0x6E8C530CL,0x7AE3443DL,0x6A0EE58FL,1L,0x6E8C530CL},{0x6E8C530CL,0x7AE3443DL,0x6A0EE58FL,1L,0x6E8C530CL},{0x6E8C530CL,0x7AE3443DL,0x6A0EE58FL,1L,0x6E8C530CL},{0x6E8C530CL,0x7AE3443DL,0x6A0EE58FL,1L,0x6E8C530CL}},{{0x6E8C530CL,0x7AE3443DL,0x6A0EE58FL,1L,0x6E8C530CL},{0x6E8C530CL,0x7AE3443DL,0x6A0EE58FL,1L,0x6E8C530CL},{0x6E8C530CL,0x7AE3443DL,0x6A0EE58FL,1L,0x6E8C530CL},{0x6E8C530CL,0x7AE3443DL,0x6A0EE58FL,1L,0x6E8C530CL}},{{0x6E8C530CL,0x7AE3443DL,0x6A0EE58FL,1L,0x6E8C530CL},{0x6E8C530CL,0x7AE3443DL,0x6A0EE58FL,1L,0x6E8C530CL},{0x6E8C530CL,0x7AE3443DL,0x6A0EE58FL,1L,0x6E8C530CL},{0x6E8C530CL,0x7AE3443DL,0x6A0EE58FL,1L,0x6E8C530CL}},{{0x6E8C530CL,0x7AE3443DL,0x6A0EE58FL,1L,0x6E8C530CL},{0x6E8C530CL,0x7AE3443DL,0x6A0EE58FL,1L,0x6E8C530CL},{0x6E8C530CL,0x7AE3443DL,0x6A0EE58FL,1L,0x6E8C530CL},{0x6E8C530CL,0x7AE3443DL,0x6A0EE58FL,1L,0x6E8C530CL}}};
            int i, j, k;
            (*l_553) = (safe_sub_func_int32_t_s_s(((((safe_div_func_int64_t_s_s(((*l_550) = ((safe_rshift_func_int16_t_s_s(((l_549 = ((l_519 = ((*l_516)--)) , (l_548 = (p_16 > ((+(safe_lshift_func_uint8_t_u_s((((void*)0 == l_522) , 0UL), (*p_1303->g_329)))) < (safe_sub_func_uint16_t_u_u(((*l_516) = 0xE694L), (safe_add_func_int32_t_s_s((safe_mul_func_int8_t_s_s(((*l_546) |= (safe_div_func_int8_t_s_s((((safe_mod_func_uint32_t_u_u((safe_lshift_func_int8_t_s_u((((safe_mod_func_int16_t_s_s(((*p_1303->g_295) ^ ((((l_519 ^ (l_545 = (safe_div_func_int8_t_s_s(((((safe_mul_func_int8_t_s_s(((*l_542) = (-1L)), 0x18L)) == 0xF0D4BD89FA9FECD6L) != 1UL) & p_16), l_544)))) , p_1303->g_220) , 0xB4A8782D809E5D46L) <= p_16)), (*p_1303->g_295))) ^ p_1303->g_313[1][3]) != 0L), 5)), 4294967288UL)) , 1L) || 9UL), l_514))), (*p_1303->g_329))), 4294967288UL))))))))) > l_514), p_16)) & (-1L))), l_514)) <= FAKE_DIVERGE(p_1303->global_1_offset, get_global_id(1), 10)) > l_551[2]) == l_514), l_552));
            if (p_16)
                break;
            l_575 &= (((((l_554 == ((p_1303->g_146 || (((*l_572) ^= ((safe_rshift_func_uint8_t_u_s((safe_lshift_func_uint8_t_u_s(0xCBL, 0)), (*p_1303->g_329))) < (safe_lshift_func_uint16_t_u_s(((((*p_1303->g_295) = (safe_div_func_uint16_t_u_u((safe_div_func_int32_t_s_s(p_16, 9UL)), p_16))) <= (l_571 = ((0x6830E8E544CD963EL | ((*l_570) = ((p_1303->g_425[0] , p_15) != (void*)0))) & 0x2EC1L))) ^ p_1303->g_432[3]), 1)))) != 0x63AFL)) & p_16)) ^ l_554) ^ p_1303->g_226) , &l_550) == l_573[2][3][0]);
            for (p_1303->g_23 = 1; (p_1303->g_23 >= 0); p_1303->g_23 -= 1)
            { /* block id: 317 */
                int8_t **l_576[8] = {&l_542,&l_542,&l_542,&l_542,&l_542,&l_542,&l_542,&l_542};
                int32_t l_581 = 0x69474BBFL;
                int8_t l_584 = (-1L);
                int32_t l_589 = 0x03D869ACL;
                int32_t l_590 = 0x51B9FD79L;
                int32_t l_591 = (-1L);
                int32_t l_599 = 0x320A6C97L;
                int32_t l_600[4][2][10] = {{{0L,1L,1L,0L,(-1L),0x0D43F716L,1L,0x2FD22BC9L,1L,(-4L)},{0L,1L,1L,0L,(-1L),0x0D43F716L,1L,0x2FD22BC9L,1L,(-4L)}},{{0L,1L,1L,0L,(-1L),0x0D43F716L,1L,0x2FD22BC9L,1L,(-4L)},{0L,1L,1L,0L,(-1L),0x0D43F716L,1L,0x2FD22BC9L,1L,(-4L)}},{{0L,1L,1L,0L,(-1L),0x0D43F716L,1L,0x2FD22BC9L,1L,(-4L)},{0L,1L,1L,0L,(-1L),0x0D43F716L,1L,0x2FD22BC9L,1L,(-4L)}},{{0L,1L,1L,0L,(-1L),0x0D43F716L,1L,0x2FD22BC9L,1L,(-4L)},{0L,1L,1L,0L,(-1L),0x0D43F716L,1L,0x2FD22BC9L,1L,(-4L)}}};
                uint64_t l_602 = 0x092F415E7CCB0D0CL;
                int i, j, k;
                for (l_514 = 0; (l_514 <= 1); l_514 += 1)
                { /* block id: 320 */
                    int16_t l_585 = 0x6D57L;
                    int32_t l_588 = 0x13EF4C74L;
                    int32_t l_594[6][8] = {{(-1L),0x43380BFDL,0x6341575BL,7L,0x6341575BL,0x43380BFDL,(-1L),0x76E36BD5L},{(-1L),0x43380BFDL,0x6341575BL,7L,0x6341575BL,0x43380BFDL,(-1L),0x76E36BD5L},{(-1L),0x43380BFDL,0x6341575BL,7L,0x6341575BL,0x43380BFDL,(-1L),0x76E36BD5L},{(-1L),0x43380BFDL,0x6341575BL,7L,0x6341575BL,0x43380BFDL,(-1L),0x76E36BD5L},{(-1L),0x43380BFDL,0x6341575BL,7L,0x6341575BL,0x43380BFDL,(-1L),0x76E36BD5L},{(-1L),0x43380BFDL,0x6341575BL,7L,0x6341575BL,0x43380BFDL,(-1L),0x76E36BD5L}};
                    int i, j;
                    (*p_1303->g_578) = l_576[4];
                    for (p_1303->g_543 = 1; (p_1303->g_543 >= 0); p_1303->g_543 -= 1)
                    { /* block id: 324 */
                        struct S0 *l_580 = &p_1303->g_449[0][0][1];
                        return l_580;
                    }
                    for (p_1303->g_55.f1 = 0; (p_1303->g_55.f1 <= 1); p_1303->g_55.f1 += 1)
                    { /* block id: 329 */
                        int32_t *l_582 = &p_1303->g_73[5][0];
                        int32_t *l_583[6][2] = {{&l_548,(void*)0},{&l_548,(void*)0},{&l_548,(void*)0},{&l_548,(void*)0},{&l_548,(void*)0},{&l_548,(void*)0}};
                        int i, j;
                        l_602++;
                        if (p_1303->g_3[(p_1303->g_186 + 3)])
                            continue;
                    }
                }
            }
        }
        for (p_1303->g_188 = 0; (p_1303->g_188 <= 1); p_1303->g_188 += 1)
        { /* block id: 338 */
            uint64_t *l_609 = &p_1303->g_114.f0;
            int32_t l_614[9] = {0x7BBC0EB9L,0x7BBC0EB9L,0x7BBC0EB9L,0x7BBC0EB9L,0x7BBC0EB9L,0x7BBC0EB9L,0x7BBC0EB9L,0x7BBC0EB9L,0x7BBC0EB9L};
            int32_t l_666 = 0L;
            int32_t l_669 = 0x4119B925L;
            int32_t ****l_678 = &p_1303->g_255;
            int16_t **l_699 = &p_1303->g_295;
            int i;
            if (((l_614[0] = ((((safe_lshift_func_uint8_t_u_s(252UL, (safe_rshift_func_int16_t_s_s(((l_544 & 0x41L) & ((*l_609) = p_16)), 14)))) == (safe_lshift_func_uint16_t_u_s(FAKE_DIVERGE(p_1303->local_0_offset, get_local_id(0), 10), 7))) , (0x3AL <= (safe_rshift_func_uint8_t_u_u((l_614[0] == (1UL < l_571)), (l_593 >= 0x6D5C3CFE35F7D089L))))) | p_16)) , l_615))
            { /* block id: 341 */
                int64_t l_667 = 4L;
                for (p_1303->g_220 = 1; (p_1303->g_220 >= 0); p_1303->g_220 -= 1)
                { /* block id: 344 */
                    return &p_1303->g_114;
                }
                for (l_554 = 0; (l_554 <= 2); l_554 += 1)
                { /* block id: 349 */
                    uint32_t **l_643 = (void*)0;
                    int32_t l_668[5] = {0L,0L,0L,0L,0L};
                    int32_t l_670 = (-5L);
                    int i, j;
                    p_1303->g_91[(p_1303->g_186 + 1)][p_1303->g_188] = (*p_15);
                    for (p_1303->g_115.f1 = 0; (p_1303->g_115.f1 <= 9); p_1303->g_115.f1 += 1)
                    { /* block id: 353 */
                        uint8_t *l_626 = (void*)0;
                        uint8_t *l_627 = (void*)0;
                        uint8_t *l_628 = &p_1303->g_629;
                        int32_t *l_632[5] = {&p_1303->g_73[6][6],&p_1303->g_73[6][6],&p_1303->g_73[6][6],&p_1303->g_73[6][6],&p_1303->g_73[6][6]};
                        int i;
                        l_670 = (safe_sub_func_int8_t_s_s((((safe_mul_func_uint16_t_u_u((((safe_mod_func_int16_t_s_s(((0x53DBL != ((safe_div_func_int32_t_s_s((l_614[3] = (safe_lshift_func_uint8_t_u_u((++(*l_628)), 3))), (-3L))) == ((safe_rshift_func_int8_t_s_u(((safe_mod_func_uint8_t_u_u((((safe_rshift_func_int8_t_s_u((safe_add_func_uint64_t_u_u(0x43C217A15BD2FA09L, (p_1303->g_425[p_1303->g_115.f1] , (l_641 == l_643)))), 3)) , (safe_sub_func_int64_t_s_s((l_668[2] &= ((safe_mod_func_uint32_t_u_u((((*l_574) = (safe_add_func_uint16_t_u_u((safe_mod_func_uint16_t_u_u((safe_lshift_func_uint8_t_u_u((l_666 = (safe_add_func_int32_t_s_s((safe_mod_func_uint32_t_u_u((safe_mul_func_uint8_t_u_u(p_16, (FAKE_DIVERGE(p_1303->group_2_offset, get_group_id(2), 10) & (safe_mod_func_uint64_t_u_u(p_16, (safe_sub_func_int16_t_s_s((p_1303->g_425[(l_554 + 1)] = (safe_mod_func_int32_t_s_s(0x655B1BFEL, l_666))), p_1303->g_547))))))), l_666)), l_667))), l_667)), (-1L))), p_1303->g_91[(p_1303->g_186 + 1)][p_1303->g_188].f2))) && p_16), 0x80995AA5L)) | 0x47L)), p_16))) == 4294967295UL), p_1303->g_55.f0)) || p_16), GROUP_DIVERGE(2, 1))) & 0x21573FD497CBCBBDL))) < p_1303->g_226), p_16)) , (*p_1303->g_329)) == l_669), l_667)) >= l_669) , l_615), l_514));
                        (*p_1303->g_49) = &l_575;
                    }
                    (**p_1303->g_255) = l_671;
                }
                (*l_671) ^= ((+(p_16 , (safe_lshift_func_uint16_t_u_u(GROUP_DIVERGE(1, 1), 6)))) > FAKE_DIVERGE(p_1303->global_0_offset, get_global_id(0), 10));
            }
            else
            { /* block id: 366 */
                int32_t ****l_676 = &p_1303->g_255;
                int32_t *****l_677 = &l_676;
                int32_t l_680 = 0x2BACB72EL;
                uint8_t *l_687 = &p_1303->g_629;
                uint8_t **l_688 = &l_687;
                uint8_t *l_690 = &p_1303->g_629;
                uint8_t **l_689 = &l_690;
                int32_t *l_703 = &l_549;
                struct S0 *l_719[2];
                int i;
                for (i = 0; i < 2; i++)
                    l_719[i] = &p_1303->g_169;
                (*p_1303->g_49) = (**p_1303->g_90);
                if (((safe_mod_func_int32_t_s_s(((((((*l_677) = l_676) == (l_679 = l_678)) & (l_680 > ((safe_mul_func_uint16_t_u_u((p_16 , ((((((safe_mul_func_int8_t_s_s((safe_div_func_int16_t_s_s(0x416CL, ((((*l_689) = ((*l_688) = l_687)) == (void*)0) , (safe_lshift_func_int16_t_s_u(p_16, 10))))), ((safe_lshift_func_uint8_t_u_u((~((p_16 & 0x99ABL) || p_16)), FAKE_DIVERGE(p_1303->local_0_offset, get_local_id(0), 10))) && l_554))) & 0x61L) == 0x704EA32A6381CFE8L) < 0x38L) != p_16) && 0xD235L)), l_695[0])) & (*p_1303->g_295)))) <= p_16) || p_1303->g_459), 0x19744615L)) != p_16))
                { /* block id: 372 */
                    int32_t ***l_696 = (void*)0;
                    int32_t ****l_697 = (void*)0;
                    int32_t ****l_698 = &l_696;
                    (*p_1303->g_701) = ((((*l_698) = ((**l_677) = l_696)) == (void*)0) , (p_1303->g_700 = l_699));
                    for (p_16 = 1; (p_16 >= 0); p_16 -= 1)
                    { /* block id: 379 */
                        (*p_1303->g_49) = (**p_1303->g_112);
                        return &p_1303->g_449[1][0][2];
                    }
                    l_703 = (**p_1303->g_90);
                }
                else
                { /* block id: 384 */
                    int i, j;
                    p_1303->g_91[p_1303->g_186][p_1303->g_186] = p_1303->g_704;
                    for (p_1303->g_296 = 16; (p_1303->g_296 > (-14)); p_1303->g_296 = safe_sub_func_uint32_t_u_u(p_1303->g_296, 2))
                    { /* block id: 388 */
                        uint16_t *l_711 = &p_1303->g_333;
                        int32_t l_712 = 0x21F21017L;
                        (*l_671) = ((p_16 , ((*l_711) ^= ((0xBBFF8889L == (((*l_609)--) > ((p_16 && 0x60591FE5L) || (safe_rshift_func_int8_t_s_u(p_16, 6))))) && p_16))) , 0x4E260CDBL);
                        if (l_712)
                            break;
                    }
                }
                for (p_1303->g_114.f1 = 0; (p_1303->g_114.f1 != 12); p_1303->g_114.f1 = safe_add_func_uint8_t_u_u(p_1303->g_114.f1, 1))
                { /* block id: 397 */
                    int16_t l_716 = 0x7A54L;
                    for (p_1303->g_296 = 5; (p_1303->g_296 >= 0); p_1303->g_296 -= 1)
                    { /* block id: 400 */
                        int32_t *l_715 = &l_592;
                        int i, j;
                        l_715 = &p_1303->g_73[p_1303->g_296][(p_1303->g_296 + 1)];
                        p_1303->g_73[(p_1303->g_188 + 4)][(p_1303->g_186 + 3)] |= (l_716 < (((safe_sub_func_int8_t_s_s(0x48L, (p_16 >= 0x5A7CBDD7L))) || (((**l_689) = GROUP_DIVERGE(0, 1)) <= p_16)) >= 0xA312L));
                        if (p_16)
                            break;
                        (*l_671) ^= p_16;
                    }
                    return &p_1303->g_449[0][6][2];
                }
                return l_719[0];
            }
        }
    }
    for (l_597 = 3; (l_597 >= 0); l_597 -= 1)
    { /* block id: 415 */
        union U1 *l_720[3][4] = {{&p_1303->g_140,&p_1303->g_176[4],&p_1303->g_140,&p_1303->g_140},{&p_1303->g_140,&p_1303->g_176[4],&p_1303->g_140,&p_1303->g_140},{&p_1303->g_140,&p_1303->g_176[4],&p_1303->g_140,&p_1303->g_140}};
        uint32_t *l_726[7][3] = {{&l_554,&l_554,&p_1303->g_432[3]},{&l_554,&l_554,&p_1303->g_432[3]},{&l_554,&l_554,&p_1303->g_432[3]},{&l_554,&l_554,&p_1303->g_432[3]},{&l_554,&l_554,&p_1303->g_432[3]},{&l_554,&l_554,&p_1303->g_432[3]},{&l_554,&l_554,&p_1303->g_432[3]}};
        uint32_t **l_725[4][2][1] = {{{&l_726[2][2]},{&l_726[2][2]}},{{&l_726[2][2]},{&l_726[2][2]}},{{&l_726[2][2]},{&l_726[2][2]}},{{&l_726[2][2]},{&l_726[2][2]}}};
        uint32_t ***l_724 = &l_725[0][0][0];
        int32_t l_734 = 0x5B6929A4L;
        int32_t *l_743 = (void*)0;
        int32_t *l_744[7] = {&l_575,&p_1303->g_9[1],&l_575,&l_575,&p_1303->g_9[1],&l_575,&l_575};
        int8_t **l_755 = &l_522;
        int64_t l_766 = 0x108406755F35BC3AL;
        uint8_t l_770 = 0x7BL;
        uint32_t l_782 = 0xE535FDB1L;
        int32_t ***l_812 = (void*)0;
        int32_t l_884 = 1L;
        uint8_t l_897 = 255UL;
        uint64_t *l_915 = (void*)0;
        int32_t l_928 = 0x175CA86DL;
        uint64_t l_930[3];
        int i, j, k;
        for (i = 0; i < 3; i++)
            l_930[i] = 0x89F9D37AD3D9F3CBL;
        (*p_1303->g_721) = l_720[2][1];
    }
    (*l_962) |= (l_959 == (void*)0);
    for (p_1303->g_704.f0 = (-10); (p_1303->g_704.f0 < 35); p_1303->g_704.f0 = safe_add_func_uint64_t_u_u(p_1303->g_704.f0, 2))
    { /* block id: 569 */
        int32_t l_967[5];
        uint16_t l_983 = 0x6DFDL;
        int i;
        for (i = 0; i < 5; i++)
            l_967[i] = (-1L);
        for (p_1303->g_829 = 0; (p_1303->g_829 < 5); ++p_1303->g_829)
        { /* block id: 572 */
            uint64_t l_968 = 6UL;
            int32_t *l_975 = &p_1303->g_220;
            uint32_t l_1003 = 4294967295UL;
            int32_t l_1023 = 0x009E9DD3L;
            int32_t l_1024 = 0x6F45003FL;
            int32_t l_1025 = 0L;
            uint32_t l_1026[10][7][2] = {{{4294967289UL,0xFC35104DL},{4294967289UL,0xFC35104DL},{4294967289UL,0xFC35104DL},{4294967289UL,0xFC35104DL},{4294967289UL,0xFC35104DL},{4294967289UL,0xFC35104DL},{4294967289UL,0xFC35104DL}},{{4294967289UL,0xFC35104DL},{4294967289UL,0xFC35104DL},{4294967289UL,0xFC35104DL},{4294967289UL,0xFC35104DL},{4294967289UL,0xFC35104DL},{4294967289UL,0xFC35104DL},{4294967289UL,0xFC35104DL}},{{4294967289UL,0xFC35104DL},{4294967289UL,0xFC35104DL},{4294967289UL,0xFC35104DL},{4294967289UL,0xFC35104DL},{4294967289UL,0xFC35104DL},{4294967289UL,0xFC35104DL},{4294967289UL,0xFC35104DL}},{{4294967289UL,0xFC35104DL},{4294967289UL,0xFC35104DL},{4294967289UL,0xFC35104DL},{4294967289UL,0xFC35104DL},{4294967289UL,0xFC35104DL},{4294967289UL,0xFC35104DL},{4294967289UL,0xFC35104DL}},{{4294967289UL,0xFC35104DL},{4294967289UL,0xFC35104DL},{4294967289UL,0xFC35104DL},{4294967289UL,0xFC35104DL},{4294967289UL,0xFC35104DL},{4294967289UL,0xFC35104DL},{4294967289UL,0xFC35104DL}},{{4294967289UL,0xFC35104DL},{4294967289UL,0xFC35104DL},{4294967289UL,0xFC35104DL},{4294967289UL,0xFC35104DL},{4294967289UL,0xFC35104DL},{4294967289UL,0xFC35104DL},{4294967289UL,0xFC35104DL}},{{4294967289UL,0xFC35104DL},{4294967289UL,0xFC35104DL},{4294967289UL,0xFC35104DL},{4294967289UL,0xFC35104DL},{4294967289UL,0xFC35104DL},{4294967289UL,0xFC35104DL},{4294967289UL,0xFC35104DL}},{{4294967289UL,0xFC35104DL},{4294967289UL,0xFC35104DL},{4294967289UL,0xFC35104DL},{4294967289UL,0xFC35104DL},{4294967289UL,0xFC35104DL},{4294967289UL,0xFC35104DL},{4294967289UL,0xFC35104DL}},{{4294967289UL,0xFC35104DL},{4294967289UL,0xFC35104DL},{4294967289UL,0xFC35104DL},{4294967289UL,0xFC35104DL},{4294967289UL,0xFC35104DL},{4294967289UL,0xFC35104DL},{4294967289UL,0xFC35104DL}},{{4294967289UL,0xFC35104DL},{4294967289UL,0xFC35104DL},{4294967289UL,0xFC35104DL},{4294967289UL,0xFC35104DL},{4294967289UL,0xFC35104DL},{4294967289UL,0xFC35104DL},{4294967289UL,0xFC35104DL}}};
            int i, j, k;
            (*p_1303->g_54) = (*l_958);
            for (p_1303->g_74.f1 = 0; (p_1303->g_74.f1 <= 2); p_1303->g_74.f1 += 1)
            { /* block id: 576 */
                int32_t *l_971 = &l_601;
                int32_t **l_976[8] = {&l_975,&l_975,&l_975,&l_975,&l_975,&l_975,&l_975,&l_975};
                uint16_t *l_1002 = (void*)0;
                int32_t *l_1004 = &l_586;
                int32_t *l_1005 = &l_601;
                int32_t *l_1006 = &p_1303->g_73[6][6];
                int32_t *l_1007 = (void*)0;
                int32_t *l_1008 = &l_601;
                int32_t *l_1009 = &l_967[0];
                int32_t *l_1010 = &l_586;
                int32_t *l_1011 = (void*)0;
                int32_t *l_1012 = &l_592;
                int32_t *l_1013 = (void*)0;
                int32_t *l_1014 = &l_596;
                int32_t *l_1015 = &l_586;
                int32_t *l_1016 = &l_592;
                int32_t *l_1017 = &l_575;
                int32_t *l_1018 = (void*)0;
                int32_t *l_1019 = &l_967[0];
                int32_t *l_1020 = &l_592;
                int32_t *l_1021 = &l_586;
                int32_t *l_1022[9][10][2] = {{{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4}},{{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4}},{{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4}},{{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4}},{{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4}},{{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4}},{{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4}},{{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4}},{{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4},{&p_1303->g_9[3],&p_1303->g_4}}};
                int i, j, k;
                if (p_1303->g_425[p_1303->g_74.f1])
                    break;
                for (p_1303->g_543 = 0; (p_1303->g_543 <= 9); p_1303->g_543 += 1)
                { /* block id: 580 */
                    int i;
                    l_968--;
                    for (p_1303->g_547 = 0; (p_1303->g_547 <= 2); p_1303->g_547 += 1)
                    { /* block id: 584 */
                        int i;
                        if (p_1303->g_3[p_1303->g_74.f1])
                            break;
                        (***l_679) = l_971;
                    }
                    (*p_1303->g_972) = &p_1303->g_3[p_1303->g_543];
                }
                (*l_971) = (safe_lshift_func_int16_t_s_u((((l_975 = l_975) == &p_1303->g_498) > (safe_lshift_func_uint8_t_u_s(p_1303->g_324, (safe_sub_func_int8_t_s_s(l_968, ((safe_mul_func_int16_t_s_s(1L, l_983)) , (safe_mul_func_int16_t_s_s((safe_add_func_int64_t_s_s(p_16, (safe_add_func_int16_t_s_s(((safe_sub_func_uint64_t_u_u(((safe_add_func_int32_t_s_s((safe_rshift_func_int16_t_s_s(((p_16 || (safe_lshift_func_int8_t_s_u(((safe_sub_func_int8_t_s_s(((!(((safe_mul_func_int16_t_s_s(((&l_983 == l_1002) ^ (**p_1303->g_936)), l_1003)) ^ p_1303->g_226) , 0x01881FEFL)) , p_16), GROUP_DIVERGE(0, 1))) & 1UL), 0))) == 0x2FC8L), p_16)), 1L)) == p_16), p_16)) ^ 1L), 0x181DL)))), (*p_1303->g_295))))))))), 5));
                --l_1026[8][0][0];
            }
            if (l_1003)
                break;
            return (*p_1303->g_814);
        }
    }
    return (*p_1303->g_832);
}


/* ------------------------------------------ */
/* 
 * reads : p_1303->g_114.f0
 * writes: p_1303->g_114.f0 p_1303->g_73
 */
struct S0 * func_17(int32_t  p_18, uint64_t  p_19, uint32_t  p_20, struct S2 * p_1303)
{ /* block id: 163 */
    uint32_t l_299[9] = {7UL,7UL,7UL,7UL,7UL,7UL,7UL,7UL,7UL};
    int64_t l_310 = 0x1516DBD09119469EL;
    int32_t **l_315 = &p_1303->g_50;
    int8_t *l_322 = &p_1303->g_313[0][0];
    uint64_t *l_327 = &p_1303->g_115.f0;
    int32_t l_367 = (-2L);
    int32_t l_368 = 0x6AF79EDEL;
    int32_t l_369[5][9] = {{0x28ED6B7FL,(-1L),6L,0x6AC99103L,0x22458DF7L,0x22458DF7L,0x6AC99103L,6L,(-1L)},{0x28ED6B7FL,(-1L),6L,0x6AC99103L,0x22458DF7L,0x22458DF7L,0x6AC99103L,6L,(-1L)},{0x28ED6B7FL,(-1L),6L,0x6AC99103L,0x22458DF7L,0x22458DF7L,0x6AC99103L,6L,(-1L)},{0x28ED6B7FL,(-1L),6L,0x6AC99103L,0x22458DF7L,0x22458DF7L,0x6AC99103L,6L,(-1L)},{0x28ED6B7FL,(-1L),6L,0x6AC99103L,0x22458DF7L,0x22458DF7L,0x6AC99103L,6L,(-1L)}};
    int32_t l_399 = 1L;
    uint8_t l_426 = 249UL;
    int32_t *****l_431 = (void*)0;
    uint32_t l_448 = 0xFA114D73L;
    int8_t l_468 = 0L;
    int64_t l_469 = (-7L);
    int64_t *l_474 = &p_1303->g_88;
    int64_t **l_473 = &l_474;
    int32_t *l_506 = &p_1303->g_73[3][0];
    struct S0 *l_507 = &p_1303->g_449[1][5][1];
    int i, j;
    for (p_1303->g_114.f0 = 0; (p_1303->g_114.f0 <= 6); p_1303->g_114.f0 += 1)
    { /* block id: 166 */
        int64_t l_311 = 0x18EEED547744F20AL;
        int32_t l_316 = 0x5239F8EEL;
        int32_t l_325 = 0x4937C427L;
        int32_t l_331 = 0x3665791FL;
        uint32_t *l_335 = &p_1303->g_324;
        uint32_t *l_339 = &p_1303->g_324;
        int32_t l_340[9] = {3L,(-5L),3L,3L,(-5L),3L,3L,(-5L),3L};
        int32_t l_376 = 1L;
        int32_t l_378 = 0x39392D88L;
        int32_t l_381[5][4][4] = {{{0x67BA9D09L,3L,0x0D2E61F4L,3L},{0x67BA9D09L,3L,0x0D2E61F4L,3L},{0x67BA9D09L,3L,0x0D2E61F4L,3L},{0x67BA9D09L,3L,0x0D2E61F4L,3L}},{{0x67BA9D09L,3L,0x0D2E61F4L,3L},{0x67BA9D09L,3L,0x0D2E61F4L,3L},{0x67BA9D09L,3L,0x0D2E61F4L,3L},{0x67BA9D09L,3L,0x0D2E61F4L,3L}},{{0x67BA9D09L,3L,0x0D2E61F4L,3L},{0x67BA9D09L,3L,0x0D2E61F4L,3L},{0x67BA9D09L,3L,0x0D2E61F4L,3L},{0x67BA9D09L,3L,0x0D2E61F4L,3L}},{{0x67BA9D09L,3L,0x0D2E61F4L,3L},{0x67BA9D09L,3L,0x0D2E61F4L,3L},{0x67BA9D09L,3L,0x0D2E61F4L,3L},{0x67BA9D09L,3L,0x0D2E61F4L,3L}},{{0x67BA9D09L,3L,0x0D2E61F4L,3L},{0x67BA9D09L,3L,0x0D2E61F4L,3L},{0x67BA9D09L,3L,0x0D2E61F4L,3L},{0x67BA9D09L,3L,0x0D2E61F4L,3L}}};
        uint16_t l_429 = 0x2DF9L;
        int i, j, k;
        (1 + 1);
    }
    (*l_506) = p_19;
    return l_507;
}


/* ------------------------------------------ */
/* 
 * reads :
 * writes: p_1303->g_50
 */
uint16_t  func_28(int32_t ** p_29, uint32_t  p_30, int16_t * p_31, int32_t ** p_32, struct S0 * p_33, struct S2 * p_1303)
{ /* block id: 160 */
    (*p_29) = (void*)0;
    return p_30;
}


/* ------------------------------------------ */
/* 
 * reads : p_1303->g_54 p_1303->g_55 p_1303->g_112 p_1303->g_49
 * writes: p_1303->g_55
 */
int32_t ** func_34(int32_t ** p_35, int16_t * p_36, int32_t * p_37, int64_t  p_38, struct S0 * p_39, struct S2 * p_1303)
{ /* block id: 157 */
    (*p_1303->g_54) = (*p_1303->g_54);
    return (*p_1303->g_112);
}


/* ------------------------------------------ */
/* 
 * reads : p_1303->g_50 p_1303->g_9 p_1303->g_90 p_1303->g_49
 * writes:
 */
int32_t ** func_40(int32_t ** p_41, uint32_t  p_42, struct S0 * p_43, uint16_t  p_44, uint8_t  p_45, struct S2 * p_1303)
{ /* block id: 154 */
    uint16_t l_293 = 0x7022L;
    l_293 = (**p_41);
    return (*p_1303->g_90);
}


/* ------------------------------------------ */
/* 
 * reads : p_1303->g_54 p_1303->g_55.f1 p_1303->g_23 p_1303->g_49 p_1303->g_50 p_1303->g_9 p_1303->g_74 p_1303->g_3 p_1303->g_55.f2 p_1303->g_90 p_1303->g_91 p_1303->g_73 p_1303->g_112 p_1303->g_113 p_1303->g_115 p_1303->g_92.f2 p_1303->g_140 p_1303->g_88 p_1303->g_55 p_1303->g_176 p_1303->g_146 p_1303->g_4 p_1303->g_169.f1 p_1303->g_186 p_1303->g_169.f0 p_1303->g_224 p_1303->g_188 p_1303->g_92.f0 p_1303->g_220 p_1303->g_226 p_1303->g_255
 * writes: p_1303->g_49 p_1303->g_23 p_1303->g_73 p_1303->g_3 p_1303->g_74.f0 p_1303->g_88 p_1303->g_55.f0 p_1303->g_92 p_1303->g_114 p_1303->g_55 p_1303->g_115.f1 p_1303->g_74.f1 p_1303->g_146 p_1303->g_169 p_1303->g_186 p_1303->g_188 p_1303->g_220 p_1303->g_113.f0 p_1303->g_226 p_1303->g_113.f1 p_1303->g_254 p_1303->g_50 p_1303->g_286
 */
int32_t ** func_46(int32_t ** p_47, int32_t * p_48, struct S2 * p_1303)
{ /* block id: 13 */
    uint16_t l_56 = 65527UL;
    union U1 *l_291 = &p_1303->g_176[8];
    (*p_47) = func_51(p_1303->g_54, l_56, p_1303);
    l_291 = &p_1303->g_140;
    return (*p_1303->g_255);
}


/* ------------------------------------------ */
/* 
 * reads : p_1303->g_55.f1 p_1303->g_23 p_1303->g_49 p_1303->g_50 p_1303->g_9 p_1303->g_74 p_1303->g_3 p_1303->g_55.f2 p_1303->g_90 p_1303->g_91 p_1303->g_73 p_1303->g_112 p_1303->g_113 p_1303->g_115 p_1303->g_54 p_1303->g_92.f2 p_1303->g_140 p_1303->g_88 p_1303->g_55 p_1303->g_176 p_1303->g_146 p_1303->g_4 p_1303->g_169.f1 p_1303->g_186 p_1303->g_169.f0 p_1303->g_224 p_1303->g_188 p_1303->g_92.f0 p_1303->g_220 p_1303->g_226 p_1303->g_255
 * writes: p_1303->g_49 p_1303->g_23 p_1303->g_73 p_1303->g_3 p_1303->g_74.f0 p_1303->g_88 p_1303->g_55.f0 p_1303->g_92 p_1303->g_114 p_1303->g_55 p_1303->g_115.f1 p_1303->g_74.f1 p_1303->g_146 p_1303->g_169 p_1303->g_186 p_1303->g_188 p_1303->g_220 p_1303->g_113.f0 p_1303->g_226 p_1303->g_113.f1 p_1303->g_254 p_1303->g_50 p_1303->g_286
 */
int32_t * func_51(struct S0 * p_52, uint32_t  p_53, struct S2 * p_1303)
{ /* block id: 14 */
    uint32_t l_61 = 1UL;
    struct S0 *l_66 = (void*)0;
    int32_t ***l_67 = &p_1303->g_49;
    int8_t l_118[4][6] = {{0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L},{0L,0L,0L,0L,0L,0L}};
    int32_t l_149 = 0L;
    int32_t l_150 = 0x6E3382DDL;
    int32_t l_153 = 1L;
    int32_t l_157 = 0x31746632L;
    int32_t l_161[5][3] = {{0x1D165814L,4L,0x4DD5964DL},{0x1D165814L,4L,0x4DD5964DL},{0x1D165814L,4L,0x4DD5964DL},{0x1D165814L,4L,0x4DD5964DL},{0x1D165814L,4L,0x4DD5964DL}};
    uint8_t l_166[2][8] = {{0x1DL,0x1DL,0x1DL,0x1DL,0x1DL,0x1DL,0x1DL,0x1DL},{0x1DL,0x1DL,0x1DL,0x1DL,0x1DL,0x1DL,0x1DL,0x1DL}};
    uint32_t l_221 = 0x686FD287L;
    uint8_t l_249 = 254UL;
    int32_t **l_274 = &p_1303->g_50;
    int i, j;
    if ((safe_div_func_int32_t_s_s((((safe_mul_func_int8_t_s_s((GROUP_DIVERGE(1, 1) && l_61), func_62(p_1303->g_55.f1, l_66, ((*l_67) = &p_1303->g_50), p_1303))) >= p_53) & (safe_lshift_func_uint16_t_u_s((8L == l_118[0][0]), 14))), (safe_mod_func_uint16_t_u_u((safe_rshift_func_uint8_t_u_s(((1UL || l_118[0][0]) , p_53), 3)), p_53)))))
    { /* block id: 57 */
        int32_t **l_127 = &p_1303->g_50;
        struct S0 *l_128 = (void*)0;
        int64_t *l_130 = &p_1303->g_88;
        uint32_t l_141 = 4294967295UL;
        int8_t l_144 = 0x51L;
        int32_t l_145 = 8L;
        int32_t l_156[8][2] = {{3L,0x5C89B844L},{3L,0x5C89B844L},{3L,0x5C89B844L},{3L,0x5C89B844L},{3L,0x5C89B844L},{3L,0x5C89B844L},{3L,0x5C89B844L},{3L,0x5C89B844L}};
        uint32_t l_205 = 0x7F7F05ABL;
        int i, j;
        for (p_1303->g_55.f1 = (-28); (p_1303->g_55.f1 != 11); ++p_1303->g_55.f1)
        { /* block id: 60 */
            int32_t **l_129[5];
            int64_t *l_135[7];
            int8_t l_204 = 0x1BL;
            int i;
            for (i = 0; i < 5; i++)
                l_129[i] = &p_1303->g_50;
            for (i = 0; i < 7; i++)
                l_135[i] = &p_1303->g_88;
            for (p_1303->g_115.f1 = 0; (p_1303->g_115.f1 <= 6); p_1303->g_115.f1 += 1)
            { /* block id: 63 */
                int64_t **l_131 = (void*)0;
                int64_t **l_132 = (void*)0;
                int64_t *l_134[4][2][6] = {{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}},{{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0},{(void*)0,(void*)0,(void*)0,(void*)0,(void*)0,(void*)0}}};
                int64_t **l_133[5];
                int32_t l_152 = 0x25D48A30L;
                int32_t l_155[5];
                int32_t l_159[10] = {0x09118085L,0x09118085L,0x09118085L,0x09118085L,0x09118085L,0x09118085L,0x09118085L,0x09118085L,0x09118085L,0x09118085L};
                int16_t *l_197 = &p_1303->g_23;
                int i, j, k;
                for (i = 0; i < 5; i++)
                    l_133[i] = &l_134[2][1][1];
                for (i = 0; i < 5; i++)
                    l_155[i] = 0x4FD87F62L;
                l_141 ^= ((safe_sub_func_uint64_t_u_u(((+((l_127 != (((~((l_66 = (l_128 = &p_1303->g_115)) != (void*)0)) < p_1303->g_73[p_1303->g_115.f1][(p_1303->g_115.f1 + 2)]) , l_129[3])) != (((l_130 = l_130) == (l_135[0] = &p_1303->g_88)) >= (safe_add_func_int32_t_s_s(((((safe_rshift_func_uint8_t_u_s((((void*)0 == (*l_67)) || 0x38FFA489413133DCL), p_1303->g_73[p_1303->g_115.f1][(p_1303->g_115.f1 + 2)])) , p_1303->g_140) , (void*)0) != &p_1303->g_88), (-5L)))))) , 0x49A0EE20FB557DD5L), p_53)) < (**l_127));
                for (p_1303->g_74.f1 = 20; (p_1303->g_74.f1 != 45); p_1303->g_74.f1 = safe_add_func_uint16_t_u_u(p_1303->g_74.f1, 2))
                { /* block id: 71 */
                    int32_t l_151 = 0x4F008C42L;
                    int32_t l_154 = (-5L);
                    int32_t l_158 = 1L;
                    int32_t l_160 = 0x521CD3C5L;
                    int32_t l_162 = 0x750D2B45L;
                    int32_t l_163 = (-9L);
                    int32_t l_164 = 0x22463E9BL;
                    int32_t l_165[4][1] = {{0x3F68657EL},{0x3F68657EL},{0x3F68657EL},{0x3F68657EL}};
                    int i, j;
                    p_1303->g_73[6][6] ^= ((p_1303->g_146 = (l_145 = ((*l_130) &= (p_1303->g_3[3] || l_144)))) & (safe_rshift_func_uint8_t_u_s(253UL, p_53)));
                    --l_166[0][7];
                    (*l_67) = (*p_1303->g_112);
                }
                for (p_53 = 0; (p_53 <= 1); p_53 += 1)
                { /* block id: 81 */
                    int i, j;
                    p_1303->g_169 = (*p_1303->g_54);
                    l_156[(p_53 + 4)][p_53] = (safe_mul_func_uint16_t_u_u(65535UL, l_156[(p_53 + 1)][p_53]));
                    if ((***l_67))
                    { /* block id: 84 */
                        int32_t l_172[8][6] = {{0L,(-2L),1L,0x6F4952A9L,1L,(-2L)},{0L,(-2L),1L,0x6F4952A9L,1L,(-2L)},{0L,(-2L),1L,0x6F4952A9L,1L,(-2L)},{0L,(-2L),1L,0x6F4952A9L,1L,(-2L)},{0L,(-2L),1L,0x6F4952A9L,1L,(-2L)},{0L,(-2L),1L,0x6F4952A9L,1L,(-2L)},{0L,(-2L),1L,0x6F4952A9L,1L,(-2L)},{0L,(-2L),1L,0x6F4952A9L,1L,(-2L)}};
                        uint16_t l_173 = 3UL;
                        int i, j;
                        l_173++;
                        l_145 = ((p_1303->g_176[8] , &p_1303->g_114) == p_52);
                    }
                    else
                    { /* block id: 87 */
                        uint32_t *l_183 = &l_141;
                        l_156[(p_53 + 1)][p_53] ^= ((safe_div_func_uint32_t_u_u((safe_mod_func_uint8_t_u_u(((p_1303->g_146 != (p_1303->g_186 = ((p_53 , (((p_53 ^ (l_155[2] , FAKE_DIVERGE(p_1303->local_0_offset, get_local_id(0), 10))) <= 0xEDBEL) | (((((*l_183) = (safe_mod_func_int64_t_s_s(l_155[3], p_1303->g_4))) == (((safe_sub_func_uint64_t_u_u((p_53 > (0x5CL != (**l_127))), p_53)) >= p_53) , (*p_1303->g_50))) <= FAKE_DIVERGE(p_1303->group_1_offset, get_group_id(1), 10)) && p_53))) && p_1303->g_91[3][1].f0))) , 0x2BL), FAKE_DIVERGE(p_1303->group_0_offset, get_group_id(0), 10))), (*p_1303->g_50))) >= 4294967295UL);
                    }
                }
                for (p_1303->g_88 = 6; (p_1303->g_88 >= 1); p_1303->g_88 -= 1)
                { /* block id: 95 */
                    int16_t l_187[6] = {0x71AFL,0x57ABL,0x71AFL,0x71AFL,0x57ABL,0x71AFL};
                    int32_t ***l_202 = &l_127;
                    int i;
                    if ((**p_1303->g_49))
                    { /* block id: 96 */
                        int32_t ****l_203 = &l_202;
                        int i;
                        l_204 ^= ((p_1303->g_188 = l_187[5]) , ((safe_rshift_func_uint16_t_u_u((((safe_add_func_int8_t_s_s((safe_mod_func_int64_t_s_s((safe_lshift_func_int8_t_s_s(((((((*p_52) , 0x0D01CEF0L) , 0x625BL) && ((void*)0 != l_197)) , ((safe_mul_func_uint16_t_u_u((safe_rshift_func_uint8_t_u_u((((*l_203) = l_202) != (void*)0), p_53)), p_1303->g_169.f1)) != p_53)) != p_1303->g_186), 0)), p_1303->g_55.f0)), 9L)) != 8UL) ^ p_1303->g_73[5][2]), 4)) != GROUP_DIVERGE(1, 1)));
                        l_205++;
                    }
                    else
                    { /* block id: 101 */
                        (*p_1303->g_112) = (*l_202);
                        if (p_53)
                            break;
                        l_152 |= (p_1303->g_73[p_1303->g_115.f1][(p_1303->g_115.f1 + 2)] ^= (p_1303->g_169.f0 , 7L));
                        if ((*p_1303->g_50))
                            break;
                    }
                }
            }
        }
        return (**p_1303->g_112);
    }
    else
    { /* block id: 112 */
        int32_t ***l_208[1][10][5] = {{{(void*)0,(void*)0,&p_1303->g_49,&p_1303->g_49,&p_1303->g_49},{(void*)0,(void*)0,&p_1303->g_49,&p_1303->g_49,&p_1303->g_49},{(void*)0,(void*)0,&p_1303->g_49,&p_1303->g_49,&p_1303->g_49},{(void*)0,(void*)0,&p_1303->g_49,&p_1303->g_49,&p_1303->g_49},{(void*)0,(void*)0,&p_1303->g_49,&p_1303->g_49,&p_1303->g_49},{(void*)0,(void*)0,&p_1303->g_49,&p_1303->g_49,&p_1303->g_49},{(void*)0,(void*)0,&p_1303->g_49,&p_1303->g_49,&p_1303->g_49},{(void*)0,(void*)0,&p_1303->g_49,&p_1303->g_49,&p_1303->g_49},{(void*)0,(void*)0,&p_1303->g_49,&p_1303->g_49,&p_1303->g_49},{(void*)0,(void*)0,&p_1303->g_49,&p_1303->g_49,&p_1303->g_49}}};
        int8_t *l_219[3][1];
        int i, j, k;
        for (i = 0; i < 3; i++)
        {
            for (j = 0; j < 1; j++)
                l_219[i][j] = &l_118[0][1];
        }
        p_1303->g_73[3][5] &= ((&p_1303->g_49 != (void*)0) < (((*p_1303->g_54) , l_208[0][3][2]) == ((((safe_sub_func_uint8_t_u_u(((safe_add_func_int64_t_s_s(((***l_67) != (((safe_mod_func_int8_t_s_s((-4L), (safe_mod_func_int16_t_s_s(p_1303->g_146, (safe_lshift_func_uint16_t_u_s(((***l_67) == (l_157 |= ((p_1303->g_220 = p_53) <= 255UL))), p_53)))))) , p_53) <= (**p_1303->g_49))), 18446744073709551606UL)) >= 248UL), 255UL)) | p_53) | p_1303->g_74.f0) , (void*)0)));
        l_153 |= ((1L | (l_221 || FAKE_DIVERGE(p_1303->global_1_offset, get_global_id(1), 10))) , (0x2F1FL <= GROUP_DIVERGE(0, 1)));
        for (p_1303->g_113.f0 = (-16); (p_1303->g_113.f0 <= 25); ++p_1303->g_113.f0)
        { /* block id: 119 */
            int64_t *l_225 = &p_1303->g_226;
            int32_t l_237 = 0x65EF7B77L;
            uint32_t *l_260 = &l_221;
            int32_t *l_273 = &p_1303->g_220;
            int32_t l_281 = 0x6DCD7AABL;
            uint8_t *l_282 = (void*)0;
            uint8_t *l_283[3][6] = {{&l_166[0][7],&l_166[0][7],&l_166[0][7],&l_166[0][7],&l_166[0][7],&l_166[0][7]},{&l_166[0][7],&l_166[0][7],&l_166[0][7],&l_166[0][7],&l_166[0][7],&l_166[0][7]},{&l_166[0][7],&l_166[0][7],&l_166[0][7],&l_166[0][7],&l_166[0][7],&l_166[0][7]}};
            int32_t l_284 = (-1L);
            int64_t *l_285 = &p_1303->g_286[1][2][1];
            int64_t *l_287[2][7] = {{&p_1303->g_226,&p_1303->g_226,&p_1303->g_226,&p_1303->g_88,&p_1303->g_88,&p_1303->g_88,&p_1303->g_226},{&p_1303->g_226,&p_1303->g_226,&p_1303->g_226,&p_1303->g_88,&p_1303->g_88,&p_1303->g_88,&p_1303->g_226}};
            int64_t l_288 = 0x03FAD3BB9674188EL;
            int i, j;
            (*p_1303->g_54) = p_1303->g_224;
            l_237 = (((((***l_67) == ((*l_225) = (p_1303->g_88 &= 0L))) & 1UL) ^ ((safe_lshift_func_int16_t_s_s((1UL != (safe_lshift_func_int8_t_s_u((safe_sub_func_uint64_t_u_u(p_53, p_53)), 2))), (((p_53 >= (safe_rshift_func_uint8_t_u_u(((safe_add_func_uint32_t_u_u(0xDBC6972FL, (p_1303->g_73[6][4] = (p_53 || p_53)))) || p_1303->g_91[3][1].f0), p_53))) > (-9L)) >= p_53))) | p_53)) | p_1303->g_188);
            for (p_1303->g_113.f1 = 10; (p_1303->g_113.f1 < 5); p_1303->g_113.f1 = safe_sub_func_int8_t_s_s(p_1303->g_113.f1, 8))
            { /* block id: 127 */
                uint32_t l_246[8][2];
                int16_t *l_250 = &p_1303->g_23;
                int32_t *****l_253 = (void*)0;
                uint64_t *l_256 = &p_1303->g_169.f1;
                int32_t *l_257[6] = {(void*)0,&p_1303->g_73[6][6],(void*)0,(void*)0,&p_1303->g_73[6][6],(void*)0};
                int i, j;
                for (i = 0; i < 8; i++)
                {
                    for (j = 0; j < 2; j++)
                        l_246[i][j] = 0x4E09EEEBL;
                }
                l_257[0] = (((*l_256) &= (+((safe_lshift_func_int16_t_s_u(((*l_250) ^= (safe_mul_func_uint8_t_u_u(l_237, (((safe_lshift_func_int16_t_s_u(l_246[0][1], (safe_lshift_func_uint8_t_u_s(l_249, 5)))) > 0x7BC0B306L) <= p_1303->g_9[3])))), (safe_lshift_func_uint8_t_u_s(l_237, 5)))) >= ((p_1303->g_254 = (void*)0) == &l_208[0][1][4])))) , ((*p_1303->g_49) = (**l_67)));
                for (p_1303->g_74.f1 = 0; (p_1303->g_74.f1 <= 9); p_1303->g_74.f1 += 1)
                { /* block id: 135 */
                    return (**p_1303->g_90);
                }
            }
            l_284 = (safe_mul_func_uint8_t_u_u(((--(*l_260)) >= (safe_sub_func_int64_t_s_s(((l_161[1][2] &= (safe_rshift_func_uint8_t_u_u((safe_mod_func_uint32_t_u_u(0xAD29EC4DL, ((safe_mod_func_int8_t_s_s((l_237 = (((*l_273) ^= p_1303->g_92.f0) , p_53)), p_1303->g_226)) && (l_288 = (((FAKE_DIVERGE(p_1303->group_0_offset, get_group_id(0), 10) , (*p_1303->g_255)) == (l_274 = (*l_67))) <= ((safe_add_func_uint64_t_u_u(0x5077A6613C4E380DL, (((*l_285) = (safe_sub_func_uint8_t_u_u((FAKE_DIVERGE(p_1303->global_0_offset, get_global_id(0), 10) , (l_281 = ((p_53 && (safe_add_func_uint8_t_u_u(l_281, p_53))) ^ p_1303->g_115.f0))), l_284))) , p_53))) || p_53)))))), 2))) <= (***p_1303->g_255)), p_53))), 0x7AL));
        }
    }
    return (**l_67);
}


/* ------------------------------------------ */
/* 
 * reads : p_1303->g_23 p_1303->g_49 p_1303->g_50 p_1303->g_9 p_1303->g_74 p_1303->g_3 p_1303->g_55.f2 p_1303->g_90 p_1303->g_91 p_1303->g_73 p_1303->g_112 p_1303->g_113 p_1303->g_115 p_1303->g_54 p_1303->g_92.f2
 * writes: p_1303->g_23 p_1303->g_73 p_1303->g_3 p_1303->g_74.f0 p_1303->g_88 p_1303->g_55.f0 p_1303->g_49 p_1303->g_92 p_1303->g_114 p_1303->g_55
 */
int8_t  func_62(uint32_t  p_63, struct S0 * p_64, int32_t ** p_65, struct S2 * p_1303)
{ /* block id: 16 */
    uint16_t l_97[5][9] = {{0xC105L,65529UL,65526UL,9UL,65526UL,65529UL,0xC105L,1UL,0xEA89L},{0xC105L,65529UL,65526UL,9UL,65526UL,65529UL,0xC105L,1UL,0xEA89L},{0xC105L,65529UL,65526UL,9UL,65526UL,65529UL,0xC105L,1UL,0xEA89L},{0xC105L,65529UL,65526UL,9UL,65526UL,65529UL,0xC105L,1UL,0xEA89L},{0xC105L,65529UL,65526UL,9UL,65526UL,65529UL,0xC105L,1UL,0xEA89L}};
    int32_t l_103 = 0L;
    int i, j;
    for (p_1303->g_23 = 0; (p_1303->g_23 <= 27); p_1303->g_23 = safe_add_func_uint32_t_u_u(p_1303->g_23, 2))
    { /* block id: 19 */
        uint64_t l_109 = 0x913E687FAFF4B716L;
        for (p_63 = (-1); (p_63 < 45); p_63++)
        { /* block id: 22 */
            int32_t *l_72 = &p_1303->g_73[6][6];
            int32_t *l_104 = &l_103;
            int32_t *l_105 = &l_103;
            int32_t *l_106 = &p_1303->g_73[2][1];
            int32_t *l_107 = &l_103;
            int32_t *l_108[5][9][5] = {{{&p_1303->g_9[1],&p_1303->g_9[1],(void*)0,&l_103,&p_1303->g_9[3]},{&p_1303->g_9[1],&p_1303->g_9[1],(void*)0,&l_103,&p_1303->g_9[3]},{&p_1303->g_9[1],&p_1303->g_9[1],(void*)0,&l_103,&p_1303->g_9[3]},{&p_1303->g_9[1],&p_1303->g_9[1],(void*)0,&l_103,&p_1303->g_9[3]},{&p_1303->g_9[1],&p_1303->g_9[1],(void*)0,&l_103,&p_1303->g_9[3]},{&p_1303->g_9[1],&p_1303->g_9[1],(void*)0,&l_103,&p_1303->g_9[3]},{&p_1303->g_9[1],&p_1303->g_9[1],(void*)0,&l_103,&p_1303->g_9[3]},{&p_1303->g_9[1],&p_1303->g_9[1],(void*)0,&l_103,&p_1303->g_9[3]},{&p_1303->g_9[1],&p_1303->g_9[1],(void*)0,&l_103,&p_1303->g_9[3]}},{{&p_1303->g_9[1],&p_1303->g_9[1],(void*)0,&l_103,&p_1303->g_9[3]},{&p_1303->g_9[1],&p_1303->g_9[1],(void*)0,&l_103,&p_1303->g_9[3]},{&p_1303->g_9[1],&p_1303->g_9[1],(void*)0,&l_103,&p_1303->g_9[3]},{&p_1303->g_9[1],&p_1303->g_9[1],(void*)0,&l_103,&p_1303->g_9[3]},{&p_1303->g_9[1],&p_1303->g_9[1],(void*)0,&l_103,&p_1303->g_9[3]},{&p_1303->g_9[1],&p_1303->g_9[1],(void*)0,&l_103,&p_1303->g_9[3]},{&p_1303->g_9[1],&p_1303->g_9[1],(void*)0,&l_103,&p_1303->g_9[3]},{&p_1303->g_9[1],&p_1303->g_9[1],(void*)0,&l_103,&p_1303->g_9[3]},{&p_1303->g_9[1],&p_1303->g_9[1],(void*)0,&l_103,&p_1303->g_9[3]}},{{&p_1303->g_9[1],&p_1303->g_9[1],(void*)0,&l_103,&p_1303->g_9[3]},{&p_1303->g_9[1],&p_1303->g_9[1],(void*)0,&l_103,&p_1303->g_9[3]},{&p_1303->g_9[1],&p_1303->g_9[1],(void*)0,&l_103,&p_1303->g_9[3]},{&p_1303->g_9[1],&p_1303->g_9[1],(void*)0,&l_103,&p_1303->g_9[3]},{&p_1303->g_9[1],&p_1303->g_9[1],(void*)0,&l_103,&p_1303->g_9[3]},{&p_1303->g_9[1],&p_1303->g_9[1],(void*)0,&l_103,&p_1303->g_9[3]},{&p_1303->g_9[1],&p_1303->g_9[1],(void*)0,&l_103,&p_1303->g_9[3]},{&p_1303->g_9[1],&p_1303->g_9[1],(void*)0,&l_103,&p_1303->g_9[3]},{&p_1303->g_9[1],&p_1303->g_9[1],(void*)0,&l_103,&p_1303->g_9[3]}},{{&p_1303->g_9[1],&p_1303->g_9[1],(void*)0,&l_103,&p_1303->g_9[3]},{&p_1303->g_9[1],&p_1303->g_9[1],(void*)0,&l_103,&p_1303->g_9[3]},{&p_1303->g_9[1],&p_1303->g_9[1],(void*)0,&l_103,&p_1303->g_9[3]},{&p_1303->g_9[1],&p_1303->g_9[1],(void*)0,&l_103,&p_1303->g_9[3]},{&p_1303->g_9[1],&p_1303->g_9[1],(void*)0,&l_103,&p_1303->g_9[3]},{&p_1303->g_9[1],&p_1303->g_9[1],(void*)0,&l_103,&p_1303->g_9[3]},{&p_1303->g_9[1],&p_1303->g_9[1],(void*)0,&l_103,&p_1303->g_9[3]},{&p_1303->g_9[1],&p_1303->g_9[1],(void*)0,&l_103,&p_1303->g_9[3]},{&p_1303->g_9[1],&p_1303->g_9[1],(void*)0,&l_103,&p_1303->g_9[3]}},{{&p_1303->g_9[1],&p_1303->g_9[1],(void*)0,&l_103,&p_1303->g_9[3]},{&p_1303->g_9[1],&p_1303->g_9[1],(void*)0,&l_103,&p_1303->g_9[3]},{&p_1303->g_9[1],&p_1303->g_9[1],(void*)0,&l_103,&p_1303->g_9[3]},{&p_1303->g_9[1],&p_1303->g_9[1],(void*)0,&l_103,&p_1303->g_9[3]},{&p_1303->g_9[1],&p_1303->g_9[1],(void*)0,&l_103,&p_1303->g_9[3]},{&p_1303->g_9[1],&p_1303->g_9[1],(void*)0,&l_103,&p_1303->g_9[3]},{&p_1303->g_9[1],&p_1303->g_9[1],(void*)0,&l_103,&p_1303->g_9[3]},{&p_1303->g_9[1],&p_1303->g_9[1],(void*)0,&l_103,&p_1303->g_9[3]},{&p_1303->g_9[1],&p_1303->g_9[1],(void*)0,&l_103,&p_1303->g_9[3]}}};
            int i, j, k;
            if ((**p_1303->g_49))
                break;
            (*l_72) = 0L;
            if ((**p_1303->g_49))
            { /* block id: 25 */
                uint16_t l_75 = 65535UL;
                int32_t l_89 = 0x0448041AL;
                int32_t *l_93 = &l_89;
                int32_t *l_94 = &p_1303->g_73[3][5];
                int32_t *l_95 = &p_1303->g_73[6][6];
                int32_t *l_96[8] = {&p_1303->g_9[2],&l_89,&p_1303->g_9[2],&p_1303->g_9[2],&l_89,&p_1303->g_9[2],&p_1303->g_9[2],&l_89};
                int i;
                if ((p_1303->g_74 , l_75))
                { /* block id: 26 */
                    p_1303->g_3[4] ^= (**p_65);
                }
                else
                { /* block id: 28 */
                    for (p_1303->g_74.f0 = 0; (p_1303->g_74.f0 >= 52); p_1303->g_74.f0++)
                    { /* block id: 31 */
                        int32_t l_86 = 0L;
                        int64_t *l_87 = &p_1303->g_88;
                        l_89 &= ((p_1303->g_55.f0 = (safe_add_func_int32_t_s_s(((*l_72) = 0x249DF3C4L), (((*l_87) = (((safe_sub_func_uint32_t_u_u(((((FAKE_DIVERGE(p_1303->group_0_offset, get_group_id(0), 10) <= (safe_rshift_func_int8_t_s_u(((((((void*)0 == &p_1303->g_50) >= (l_75 != ((p_1303->g_74.f0 , (p_63 , 0x700AL)) > (((safe_rshift_func_int16_t_s_u(p_1303->g_9[3], l_86)) || 0xD644770C58F83956L) == p_63)))) | p_63) || p_63) && p_1303->g_9[3]), p_63))) < p_1303->g_55.f2) & 65535UL) || p_63), p_1303->g_9[3])) >= (-3L)) <= p_1303->g_9[3])) , p_1303->g_74.f1)))) != 18446744073709551614UL);
                        (*p_1303->g_90) = &p_1303->g_50;
                    }
                    p_1303->g_92 = p_1303->g_91[3][1];
                }
                l_97[4][0]--;
                if ((**p_1303->g_49))
                    break;
            }
            else
            { /* block id: 42 */
                uint16_t *l_102 = &l_97[1][3];
                (*l_72) ^= (l_103 = (safe_div_func_uint32_t_u_u((((p_63 != p_63) , ((*l_102) = p_1303->g_91[3][1].f1)) <= 0x66B2L), p_63)));
                if ((**p_65))
                    break;
                return p_1303->g_91[3][1].f1;
            }
            --l_109;
        }
        (*p_1303->g_112) = p_65;
        if ((*p_1303->g_50))
            continue;
        p_1303->g_114 = p_1303->g_113;
    }
    (*p_1303->g_54) = p_1303->g_115;
    return p_1303->g_92.f2;
}


__kernel void entry(__global ulong *result, __global int *sequence_input) {
    int i, j, k;
    struct S2 c_1304;
    struct S2* p_1303 = &c_1304;
    struct S2 c_1305 = {
        0x2888ADAEL, // p_1303->g_2
        {9L,9L,9L,9L,9L,9L,9L,9L,9L,9L}, // p_1303->g_3
        1L, // p_1303->g_4
        {0x4B24CE55L,0x4B24CE55L,0x4B24CE55L,0x4B24CE55L}, // p_1303->g_9
        (-4L), // p_1303->g_23
        &p_1303->g_9[3], // p_1303->g_50
        &p_1303->g_50, // p_1303->g_49
        {18446744073709551612UL,0xEFCE06DFE53505CEL,0x6C6F9132F4BB0F55L}, // p_1303->g_55
        &p_1303->g_55, // p_1303->g_54
        {{0L,0x55E714ABL,(-1L),0x7C0CB0A7L,(-3L),0x68B3EC6BL,(-1L),(-1L),(-1L)},{0L,0x55E714ABL,(-1L),0x7C0CB0A7L,(-3L),0x68B3EC6BL,(-1L),(-1L),(-1L)},{0L,0x55E714ABL,(-1L),0x7C0CB0A7L,(-3L),0x68B3EC6BL,(-1L),(-1L),(-1L)},{0L,0x55E714ABL,(-1L),0x7C0CB0A7L,(-3L),0x68B3EC6BL,(-1L),(-1L),(-1L)},{0L,0x55E714ABL,(-1L),0x7C0CB0A7L,(-3L),0x68B3EC6BL,(-1L),(-1L),(-1L)},{0L,0x55E714ABL,(-1L),0x7C0CB0A7L,(-3L),0x68B3EC6BL,(-1L),(-1L),(-1L)},{0L,0x55E714ABL,(-1L),0x7C0CB0A7L,(-3L),0x68B3EC6BL,(-1L),(-1L),(-1L)}}, // p_1303->g_73
        {0x6AAEF4046227A4C9L,0xF5CA20838156AC6DL,0x2280505B3EA3FEE2L}, // p_1303->g_74
        (-10L), // p_1303->g_88
        &p_1303->g_49, // p_1303->g_90
        {{{0UL,0x8BF77F61DB451224L,0x76C37093F07CA432L},{0UL,0x8BF77F61DB451224L,0x76C37093F07CA432L}},{{0UL,0x8BF77F61DB451224L,0x76C37093F07CA432L},{0UL,0x8BF77F61DB451224L,0x76C37093F07CA432L}},{{0UL,0x8BF77F61DB451224L,0x76C37093F07CA432L},{0UL,0x8BF77F61DB451224L,0x76C37093F07CA432L}},{{0UL,0x8BF77F61DB451224L,0x76C37093F07CA432L},{0UL,0x8BF77F61DB451224L,0x76C37093F07CA432L}}}, // p_1303->g_91
        {0xCEE854D9B325F0A2L,0UL,0x065AEC415B45A7EAL}, // p_1303->g_92
        &p_1303->g_49, // p_1303->g_112
        {1UL,0x9E5FB73896F98B6AL,0x21C59027B06419DAL}, // p_1303->g_113
        {18446744073709551609UL,18446744073709551606UL,0x55B4F6F77BD324CDL}, // p_1303->g_114
        {7UL,0x124C238B7C099D7EL,0L}, // p_1303->g_115
        {1UL}, // p_1303->g_140
        0x4B15D7F0L, // p_1303->g_146
        {0xB461A26F64156023L,0x8FA38932FEBF8EEFL,0x2F958129354101DEL}, // p_1303->g_169
        {{0xA38E781DF53A70F7L},{0xA38E781DF53A70F7L},{0xA38E781DF53A70F7L},{0xA38E781DF53A70F7L},{0xA38E781DF53A70F7L},{0xA38E781DF53A70F7L},{0xA38E781DF53A70F7L},{0xA38E781DF53A70F7L},{0xA38E781DF53A70F7L},{0xA38E781DF53A70F7L}}, // p_1303->g_176
        9UL, // p_1303->g_186
        0xC0F7L, // p_1303->g_188
        0L, // p_1303->g_220
        {0UL,18446744073709551615UL,-7L}, // p_1303->g_224
        0x05FD4D0D6DFACB86L, // p_1303->g_226
        &p_1303->g_49, // p_1303->g_255
        &p_1303->g_255, // p_1303->g_254
        {{{0x47268135460F0B11L,0x47268135460F0B11L},{0x47268135460F0B11L,0x47268135460F0B11L},{0x47268135460F0B11L,0x47268135460F0B11L}},{{0x47268135460F0B11L,0x47268135460F0B11L},{0x47268135460F0B11L,0x47268135460F0B11L},{0x47268135460F0B11L,0x47268135460F0B11L}}}, // p_1303->g_286
        &p_1303->g_176[8], // p_1303->g_290
        {&p_1303->g_290,&p_1303->g_290,&p_1303->g_290}, // p_1303->g_289
        0x4E3CL, // p_1303->g_296
        &p_1303->g_296, // p_1303->g_295
        {{1L,1L,1L,1L},{1L,1L,1L,1L},{1L,1L,1L,1L}}, // p_1303->g_313
        0x925E926EL, // p_1303->g_324
        {&p_1303->g_113.f0,&p_1303->g_113.f0,&p_1303->g_113.f0,&p_1303->g_113.f0,&p_1303->g_113.f0,&p_1303->g_113.f0}, // p_1303->g_326
        &p_1303->g_313[0][2], // p_1303->g_329
        0UL, // p_1303->g_333
        0x70CD3891L, // p_1303->g_334
        0L, // p_1303->g_370
        {0xED8941FD6DF3929CL,0x33DCC85A0CBFDD4EL,0x6E7DDC43CFCDDD6CL}, // p_1303->g_390
        {3L,3L,3L,3L,3L,3L,3L,3L,3L,3L}, // p_1303->g_425
        {0x5FD6842BL,0x5FD6842BL,0x5FD6842BL,0x5FD6842BL,0x5FD6842BL,0x5FD6842BL}, // p_1303->g_432
        0x919ACF58L, // p_1303->g_441
        &p_1303->g_441, // p_1303->g_440
        &p_1303->g_440, // p_1303->g_439
        {{{{0x415A28C616AC334CL,3UL,0x3D8FD606472FF049L},{1UL,18446744073709551610UL,0x3AAD9CF29229A487L},{5UL,0x21442813B4BEF95AL,0L},{0UL,0x65A552F9DAE9E2F4L,-5L},{18446744073709551615UL,0x47FE1232D19A8E6BL,-1L}},{{0x415A28C616AC334CL,3UL,0x3D8FD606472FF049L},{1UL,18446744073709551610UL,0x3AAD9CF29229A487L},{5UL,0x21442813B4BEF95AL,0L},{0UL,0x65A552F9DAE9E2F4L,-5L},{18446744073709551615UL,0x47FE1232D19A8E6BL,-1L}},{{0x415A28C616AC334CL,3UL,0x3D8FD606472FF049L},{1UL,18446744073709551610UL,0x3AAD9CF29229A487L},{5UL,0x21442813B4BEF95AL,0L},{0UL,0x65A552F9DAE9E2F4L,-5L},{18446744073709551615UL,0x47FE1232D19A8E6BL,-1L}},{{0x415A28C616AC334CL,3UL,0x3D8FD606472FF049L},{1UL,18446744073709551610UL,0x3AAD9CF29229A487L},{5UL,0x21442813B4BEF95AL,0L},{0UL,0x65A552F9DAE9E2F4L,-5L},{18446744073709551615UL,0x47FE1232D19A8E6BL,-1L}},{{0x415A28C616AC334CL,3UL,0x3D8FD606472FF049L},{1UL,18446744073709551610UL,0x3AAD9CF29229A487L},{5UL,0x21442813B4BEF95AL,0L},{0UL,0x65A552F9DAE9E2F4L,-5L},{18446744073709551615UL,0x47FE1232D19A8E6BL,-1L}},{{0x415A28C616AC334CL,3UL,0x3D8FD606472FF049L},{1UL,18446744073709551610UL,0x3AAD9CF29229A487L},{5UL,0x21442813B4BEF95AL,0L},{0UL,0x65A552F9DAE9E2F4L,-5L},{18446744073709551615UL,0x47FE1232D19A8E6BL,-1L}},{{0x415A28C616AC334CL,3UL,0x3D8FD606472FF049L},{1UL,18446744073709551610UL,0x3AAD9CF29229A487L},{5UL,0x21442813B4BEF95AL,0L},{0UL,0x65A552F9DAE9E2F4L,-5L},{18446744073709551615UL,0x47FE1232D19A8E6BL,-1L}},{{0x415A28C616AC334CL,3UL,0x3D8FD606472FF049L},{1UL,18446744073709551610UL,0x3AAD9CF29229A487L},{5UL,0x21442813B4BEF95AL,0L},{0UL,0x65A552F9DAE9E2F4L,-5L},{18446744073709551615UL,0x47FE1232D19A8E6BL,-1L}},{{0x415A28C616AC334CL,3UL,0x3D8FD606472FF049L},{1UL,18446744073709551610UL,0x3AAD9CF29229A487L},{5UL,0x21442813B4BEF95AL,0L},{0UL,0x65A552F9DAE9E2F4L,-5L},{18446744073709551615UL,0x47FE1232D19A8E6BL,-1L}}},{{{0x415A28C616AC334CL,3UL,0x3D8FD606472FF049L},{1UL,18446744073709551610UL,0x3AAD9CF29229A487L},{5UL,0x21442813B4BEF95AL,0L},{0UL,0x65A552F9DAE9E2F4L,-5L},{18446744073709551615UL,0x47FE1232D19A8E6BL,-1L}},{{0x415A28C616AC334CL,3UL,0x3D8FD606472FF049L},{1UL,18446744073709551610UL,0x3AAD9CF29229A487L},{5UL,0x21442813B4BEF95AL,0L},{0UL,0x65A552F9DAE9E2F4L,-5L},{18446744073709551615UL,0x47FE1232D19A8E6BL,-1L}},{{0x415A28C616AC334CL,3UL,0x3D8FD606472FF049L},{1UL,18446744073709551610UL,0x3AAD9CF29229A487L},{5UL,0x21442813B4BEF95AL,0L},{0UL,0x65A552F9DAE9E2F4L,-5L},{18446744073709551615UL,0x47FE1232D19A8E6BL,-1L}},{{0x415A28C616AC334CL,3UL,0x3D8FD606472FF049L},{1UL,18446744073709551610UL,0x3AAD9CF29229A487L},{5UL,0x21442813B4BEF95AL,0L},{0UL,0x65A552F9DAE9E2F4L,-5L},{18446744073709551615UL,0x47FE1232D19A8E6BL,-1L}},{{0x415A28C616AC334CL,3UL,0x3D8FD606472FF049L},{1UL,18446744073709551610UL,0x3AAD9CF29229A487L},{5UL,0x21442813B4BEF95AL,0L},{0UL,0x65A552F9DAE9E2F4L,-5L},{18446744073709551615UL,0x47FE1232D19A8E6BL,-1L}},{{0x415A28C616AC334CL,3UL,0x3D8FD606472FF049L},{1UL,18446744073709551610UL,0x3AAD9CF29229A487L},{5UL,0x21442813B4BEF95AL,0L},{0UL,0x65A552F9DAE9E2F4L,-5L},{18446744073709551615UL,0x47FE1232D19A8E6BL,-1L}},{{0x415A28C616AC334CL,3UL,0x3D8FD606472FF049L},{1UL,18446744073709551610UL,0x3AAD9CF29229A487L},{5UL,0x21442813B4BEF95AL,0L},{0UL,0x65A552F9DAE9E2F4L,-5L},{18446744073709551615UL,0x47FE1232D19A8E6BL,-1L}},{{0x415A28C616AC334CL,3UL,0x3D8FD606472FF049L},{1UL,18446744073709551610UL,0x3AAD9CF29229A487L},{5UL,0x21442813B4BEF95AL,0L},{0UL,0x65A552F9DAE9E2F4L,-5L},{18446744073709551615UL,0x47FE1232D19A8E6BL,-1L}},{{0x415A28C616AC334CL,3UL,0x3D8FD606472FF049L},{1UL,18446744073709551610UL,0x3AAD9CF29229A487L},{5UL,0x21442813B4BEF95AL,0L},{0UL,0x65A552F9DAE9E2F4L,-5L},{18446744073709551615UL,0x47FE1232D19A8E6BL,-1L}}},{{{0x415A28C616AC334CL,3UL,0x3D8FD606472FF049L},{1UL,18446744073709551610UL,0x3AAD9CF29229A487L},{5UL,0x21442813B4BEF95AL,0L},{0UL,0x65A552F9DAE9E2F4L,-5L},{18446744073709551615UL,0x47FE1232D19A8E6BL,-1L}},{{0x415A28C616AC334CL,3UL,0x3D8FD606472FF049L},{1UL,18446744073709551610UL,0x3AAD9CF29229A487L},{5UL,0x21442813B4BEF95AL,0L},{0UL,0x65A552F9DAE9E2F4L,-5L},{18446744073709551615UL,0x47FE1232D19A8E6BL,-1L}},{{0x415A28C616AC334CL,3UL,0x3D8FD606472FF049L},{1UL,18446744073709551610UL,0x3AAD9CF29229A487L},{5UL,0x21442813B4BEF95AL,0L},{0UL,0x65A552F9DAE9E2F4L,-5L},{18446744073709551615UL,0x47FE1232D19A8E6BL,-1L}},{{0x415A28C616AC334CL,3UL,0x3D8FD606472FF049L},{1UL,18446744073709551610UL,0x3AAD9CF29229A487L},{5UL,0x21442813B4BEF95AL,0L},{0UL,0x65A552F9DAE9E2F4L,-5L},{18446744073709551615UL,0x47FE1232D19A8E6BL,-1L}},{{0x415A28C616AC334CL,3UL,0x3D8FD606472FF049L},{1UL,18446744073709551610UL,0x3AAD9CF29229A487L},{5UL,0x21442813B4BEF95AL,0L},{0UL,0x65A552F9DAE9E2F4L,-5L},{18446744073709551615UL,0x47FE1232D19A8E6BL,-1L}},{{0x415A28C616AC334CL,3UL,0x3D8FD606472FF049L},{1UL,18446744073709551610UL,0x3AAD9CF29229A487L},{5UL,0x21442813B4BEF95AL,0L},{0UL,0x65A552F9DAE9E2F4L,-5L},{18446744073709551615UL,0x47FE1232D19A8E6BL,-1L}},{{0x415A28C616AC334CL,3UL,0x3D8FD606472FF049L},{1UL,18446744073709551610UL,0x3AAD9CF29229A487L},{5UL,0x21442813B4BEF95AL,0L},{0UL,0x65A552F9DAE9E2F4L,-5L},{18446744073709551615UL,0x47FE1232D19A8E6BL,-1L}},{{0x415A28C616AC334CL,3UL,0x3D8FD606472FF049L},{1UL,18446744073709551610UL,0x3AAD9CF29229A487L},{5UL,0x21442813B4BEF95AL,0L},{0UL,0x65A552F9DAE9E2F4L,-5L},{18446744073709551615UL,0x47FE1232D19A8E6BL,-1L}},{{0x415A28C616AC334CL,3UL,0x3D8FD606472FF049L},{1UL,18446744073709551610UL,0x3AAD9CF29229A487L},{5UL,0x21442813B4BEF95AL,0L},{0UL,0x65A552F9DAE9E2F4L,-5L},{18446744073709551615UL,0x47FE1232D19A8E6BL,-1L}}},{{{0x415A28C616AC334CL,3UL,0x3D8FD606472FF049L},{1UL,18446744073709551610UL,0x3AAD9CF29229A487L},{5UL,0x21442813B4BEF95AL,0L},{0UL,0x65A552F9DAE9E2F4L,-5L},{18446744073709551615UL,0x47FE1232D19A8E6BL,-1L}},{{0x415A28C616AC334CL,3UL,0x3D8FD606472FF049L},{1UL,18446744073709551610UL,0x3AAD9CF29229A487L},{5UL,0x21442813B4BEF95AL,0L},{0UL,0x65A552F9DAE9E2F4L,-5L},{18446744073709551615UL,0x47FE1232D19A8E6BL,-1L}},{{0x415A28C616AC334CL,3UL,0x3D8FD606472FF049L},{1UL,18446744073709551610UL,0x3AAD9CF29229A487L},{5UL,0x21442813B4BEF95AL,0L},{0UL,0x65A552F9DAE9E2F4L,-5L},{18446744073709551615UL,0x47FE1232D19A8E6BL,-1L}},{{0x415A28C616AC334CL,3UL,0x3D8FD606472FF049L},{1UL,18446744073709551610UL,0x3AAD9CF29229A487L},{5UL,0x21442813B4BEF95AL,0L},{0UL,0x65A552F9DAE9E2F4L,-5L},{18446744073709551615UL,0x47FE1232D19A8E6BL,-1L}},{{0x415A28C616AC334CL,3UL,0x3D8FD606472FF049L},{1UL,18446744073709551610UL,0x3AAD9CF29229A487L},{5UL,0x21442813B4BEF95AL,0L},{0UL,0x65A552F9DAE9E2F4L,-5L},{18446744073709551615UL,0x47FE1232D19A8E6BL,-1L}},{{0x415A28C616AC334CL,3UL,0x3D8FD606472FF049L},{1UL,18446744073709551610UL,0x3AAD9CF29229A487L},{5UL,0x21442813B4BEF95AL,0L},{0UL,0x65A552F9DAE9E2F4L,-5L},{18446744073709551615UL,0x47FE1232D19A8E6BL,-1L}},{{0x415A28C616AC334CL,3UL,0x3D8FD606472FF049L},{1UL,18446744073709551610UL,0x3AAD9CF29229A487L},{5UL,0x21442813B4BEF95AL,0L},{0UL,0x65A552F9DAE9E2F4L,-5L},{18446744073709551615UL,0x47FE1232D19A8E6BL,-1L}},{{0x415A28C616AC334CL,3UL,0x3D8FD606472FF049L},{1UL,18446744073709551610UL,0x3AAD9CF29229A487L},{5UL,0x21442813B4BEF95AL,0L},{0UL,0x65A552F9DAE9E2F4L,-5L},{18446744073709551615UL,0x47FE1232D19A8E6BL,-1L}},{{0x415A28C616AC334CL,3UL,0x3D8FD606472FF049L},{1UL,18446744073709551610UL,0x3AAD9CF29229A487L},{5UL,0x21442813B4BEF95AL,0L},{0UL,0x65A552F9DAE9E2F4L,-5L},{18446744073709551615UL,0x47FE1232D19A8E6BL,-1L}}}}, // p_1303->g_449
        (-8L), // p_1303->g_459
        1L, // p_1303->g_498
        0x32L, // p_1303->g_543
        0x69L, // p_1303->g_547
        (void*)0, // p_1303->g_577
        {{{&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329},{&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329},{&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329}},{{&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329},{&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329},{&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329}},{{&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329},{&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329},{&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329}},{{&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329},{&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329},{&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329}},{{&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329},{&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329},{&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329,&p_1303->g_329}}}, // p_1303->g_579
        &p_1303->g_579[3][0][1], // p_1303->g_578
        1UL, // p_1303->g_629
        &p_1303->g_295, // p_1303->g_700
        (void*)0, // p_1303->g_702
        &p_1303->g_702, // p_1303->g_701
        {0x7C6BB513CEC1B80AL,2UL,0x64E96CDC9631548DL}, // p_1303->g_704
        &p_1303->g_290, // p_1303->g_721
        {1UL}, // p_1303->g_733
        {1UL,0x2C2B3DDD8D2B10F7L,0L}, // p_1303->g_785
        &p_1303->g_49, // p_1303->g_813
        &p_1303->g_54, // p_1303->g_814
        0x4E5979C0L, // p_1303->g_829
        &p_1303->g_54, // p_1303->g_832
        {(void*)0}, // p_1303->g_887
        &p_1303->g_887[0], // p_1303->g_886
        (void*)0, // p_1303->g_890
        {&p_1303->g_2,&p_1303->g_2,&p_1303->g_2,&p_1303->g_2,&p_1303->g_2,&p_1303->g_2,&p_1303->g_2,&p_1303->g_2}, // p_1303->g_935
        {&p_1303->g_935[7]}, // p_1303->g_934
        &p_1303->g_935[5], // p_1303->g_936
        &p_1303->g_935[2], // p_1303->g_972
        {18446744073709551614UL}, // p_1303->g_1088
        {0x61F51204FB45EF12L}, // p_1303->g_1115
        {5UL}, // p_1303->g_1116
        &p_1303->g_55.f1, // p_1303->g_1141
        1L, // p_1303->g_1142
        {1UL,18446744073709551615UL,0x3D5DA9C4FC772DBBL}, // p_1303->g_1177
        {0x153845B7CCE75FC6L}, // p_1303->g_1179
        1L, // p_1303->g_1229
        {0x0588F2E129568CA8L}, // p_1303->g_1286
        sequence_input[get_global_id(0)], // p_1303->global_0_offset
        sequence_input[get_global_id(1)], // p_1303->global_1_offset
        sequence_input[get_global_id(2)], // p_1303->global_2_offset
        sequence_input[get_local_id(0)], // p_1303->local_0_offset
        sequence_input[get_local_id(1)], // p_1303->local_1_offset
        sequence_input[get_local_id(2)], // p_1303->local_2_offset
        sequence_input[get_group_id(0)], // p_1303->group_0_offset
        sequence_input[get_group_id(1)], // p_1303->group_1_offset
        sequence_input[get_group_id(2)], // p_1303->group_2_offset
    };
    c_1304 = c_1305;
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    func_1(p_1303);
    barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
    uint64_t crc64_context = 0xFFFFFFFFFFFFFFFFUL;
    int print_hash_value = 0;
    transparent_crc(p_1303->g_2, "p_1303->g_2", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1303->g_3[i], "p_1303->g_3[i]", print_hash_value);

    }
    transparent_crc(p_1303->g_4, "p_1303->g_4", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        transparent_crc(p_1303->g_9[i], "p_1303->g_9[i]", print_hash_value);

    }
    transparent_crc(p_1303->g_23, "p_1303->g_23", print_hash_value);
    transparent_crc(p_1303->g_55.f0, "p_1303->g_55.f0", print_hash_value);
    transparent_crc(p_1303->g_55.f1, "p_1303->g_55.f1", print_hash_value);
    transparent_crc(p_1303->g_55.f2, "p_1303->g_55.f2", print_hash_value);
    for (i = 0; i < 7; i++)
    {
        for (j = 0; j < 9; j++)
        {
            transparent_crc(p_1303->g_73[i][j], "p_1303->g_73[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1303->g_74.f0, "p_1303->g_74.f0", print_hash_value);
    transparent_crc(p_1303->g_74.f1, "p_1303->g_74.f1", print_hash_value);
    transparent_crc(p_1303->g_74.f2, "p_1303->g_74.f2", print_hash_value);
    transparent_crc(p_1303->g_88, "p_1303->g_88", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 2; j++)
        {
            transparent_crc(p_1303->g_91[i][j].f0, "p_1303->g_91[i][j].f0", print_hash_value);
            transparent_crc(p_1303->g_91[i][j].f1, "p_1303->g_91[i][j].f1", print_hash_value);
            transparent_crc(p_1303->g_91[i][j].f2, "p_1303->g_91[i][j].f2", print_hash_value);

        }
    }
    transparent_crc(p_1303->g_92.f0, "p_1303->g_92.f0", print_hash_value);
    transparent_crc(p_1303->g_92.f1, "p_1303->g_92.f1", print_hash_value);
    transparent_crc(p_1303->g_92.f2, "p_1303->g_92.f2", print_hash_value);
    transparent_crc(p_1303->g_113.f0, "p_1303->g_113.f0", print_hash_value);
    transparent_crc(p_1303->g_113.f1, "p_1303->g_113.f1", print_hash_value);
    transparent_crc(p_1303->g_113.f2, "p_1303->g_113.f2", print_hash_value);
    transparent_crc(p_1303->g_114.f0, "p_1303->g_114.f0", print_hash_value);
    transparent_crc(p_1303->g_114.f1, "p_1303->g_114.f1", print_hash_value);
    transparent_crc(p_1303->g_114.f2, "p_1303->g_114.f2", print_hash_value);
    transparent_crc(p_1303->g_115.f0, "p_1303->g_115.f0", print_hash_value);
    transparent_crc(p_1303->g_115.f1, "p_1303->g_115.f1", print_hash_value);
    transparent_crc(p_1303->g_115.f2, "p_1303->g_115.f2", print_hash_value);
    transparent_crc(p_1303->g_140.f0, "p_1303->g_140.f0", print_hash_value);
    transparent_crc(p_1303->g_146, "p_1303->g_146", print_hash_value);
    transparent_crc(p_1303->g_169.f0, "p_1303->g_169.f0", print_hash_value);
    transparent_crc(p_1303->g_169.f1, "p_1303->g_169.f1", print_hash_value);
    transparent_crc(p_1303->g_169.f2, "p_1303->g_169.f2", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1303->g_176[i].f0, "p_1303->g_176[i].f0", print_hash_value);

    }
    transparent_crc(p_1303->g_186, "p_1303->g_186", print_hash_value);
    transparent_crc(p_1303->g_188, "p_1303->g_188", print_hash_value);
    transparent_crc(p_1303->g_220, "p_1303->g_220", print_hash_value);
    transparent_crc(p_1303->g_224.f0, "p_1303->g_224.f0", print_hash_value);
    transparent_crc(p_1303->g_224.f1, "p_1303->g_224.f1", print_hash_value);
    transparent_crc(p_1303->g_224.f2, "p_1303->g_224.f2", print_hash_value);
    transparent_crc(p_1303->g_226, "p_1303->g_226", print_hash_value);
    for (i = 0; i < 2; i++)
    {
        for (j = 0; j < 3; j++)
        {
            for (k = 0; k < 2; k++)
            {
                transparent_crc(p_1303->g_286[i][j][k], "p_1303->g_286[i][j][k]", print_hash_value);

            }
        }
    }
    transparent_crc(p_1303->g_296, "p_1303->g_296", print_hash_value);
    for (i = 0; i < 3; i++)
    {
        for (j = 0; j < 4; j++)
        {
            transparent_crc(p_1303->g_313[i][j], "p_1303->g_313[i][j]", print_hash_value);

        }
    }
    transparent_crc(p_1303->g_324, "p_1303->g_324", print_hash_value);
    transparent_crc(p_1303->g_333, "p_1303->g_333", print_hash_value);
    transparent_crc(p_1303->g_334, "p_1303->g_334", print_hash_value);
    transparent_crc(p_1303->g_370, "p_1303->g_370", print_hash_value);
    transparent_crc(p_1303->g_390.f0, "p_1303->g_390.f0", print_hash_value);
    transparent_crc(p_1303->g_390.f1, "p_1303->g_390.f1", print_hash_value);
    transparent_crc(p_1303->g_390.f2, "p_1303->g_390.f2", print_hash_value);
    for (i = 0; i < 10; i++)
    {
        transparent_crc(p_1303->g_425[i], "p_1303->g_425[i]", print_hash_value);

    }
    for (i = 0; i < 6; i++)
    {
        transparent_crc(p_1303->g_432[i], "p_1303->g_432[i]", print_hash_value);

    }
    transparent_crc(p_1303->g_441, "p_1303->g_441", print_hash_value);
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 9; j++)
        {
            for (k = 0; k < 5; k++)
            {
                transparent_crc(p_1303->g_449[i][j][k].f0, "p_1303->g_449[i][j][k].f0", print_hash_value);
                transparent_crc(p_1303->g_449[i][j][k].f1, "p_1303->g_449[i][j][k].f1", print_hash_value);
                transparent_crc(p_1303->g_449[i][j][k].f2, "p_1303->g_449[i][j][k].f2", print_hash_value);

            }
        }
    }
    transparent_crc(p_1303->g_459, "p_1303->g_459", print_hash_value);
    transparent_crc(p_1303->g_498, "p_1303->g_498", print_hash_value);
    transparent_crc(p_1303->g_543, "p_1303->g_543", print_hash_value);
    transparent_crc(p_1303->g_547, "p_1303->g_547", print_hash_value);
    transparent_crc(p_1303->g_629, "p_1303->g_629", print_hash_value);
    transparent_crc(p_1303->g_704.f0, "p_1303->g_704.f0", print_hash_value);
    transparent_crc(p_1303->g_704.f1, "p_1303->g_704.f1", print_hash_value);
    transparent_crc(p_1303->g_704.f2, "p_1303->g_704.f2", print_hash_value);
    transparent_crc(p_1303->g_733.f0, "p_1303->g_733.f0", print_hash_value);
    transparent_crc(p_1303->g_785.f0, "p_1303->g_785.f0", print_hash_value);
    transparent_crc(p_1303->g_785.f1, "p_1303->g_785.f1", print_hash_value);
    transparent_crc(p_1303->g_785.f2, "p_1303->g_785.f2", print_hash_value);
    transparent_crc(p_1303->g_829, "p_1303->g_829", print_hash_value);
    transparent_crc(p_1303->g_1088.f0, "p_1303->g_1088.f0", print_hash_value);
    transparent_crc(p_1303->g_1115.f0, "p_1303->g_1115.f0", print_hash_value);
    transparent_crc(p_1303->g_1116.f0, "p_1303->g_1116.f0", print_hash_value);
    transparent_crc(p_1303->g_1142, "p_1303->g_1142", print_hash_value);
    transparent_crc(p_1303->g_1177.f0, "p_1303->g_1177.f0", print_hash_value);
    transparent_crc(p_1303->g_1177.f1, "p_1303->g_1177.f1", print_hash_value);
    transparent_crc(p_1303->g_1177.f2, "p_1303->g_1177.f2", print_hash_value);
    transparent_crc(p_1303->g_1179.f0, "p_1303->g_1179.f0", print_hash_value);
    transparent_crc(p_1303->g_1229, "p_1303->g_1229", print_hash_value);
    transparent_crc(p_1303->g_1286.f0, "p_1303->g_1286.f0", print_hash_value);
    result[get_linear_global_id()] = crc64_context ^ 0xFFFFFFFFFFFFFFFFUL;
}
